
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f00b f8c6 	bl	c0deb196 <os_boot>
c0de000a:	b90c      	cbnz	r4, c0de0010 <main+0x10>
c0de000c:	f00a f810 	bl	c0dea030 <standalone_app_main>
c0de0010:	2000      	movs	r0, #0
c0de0012:	bd10      	pop	{r4, pc}

c0de0014 <address_from_pubkey>:
c0de0014:	b570      	push	{r4, r5, r6, lr}
c0de0016:	b08a      	sub	sp, #40	@ 0x28
c0de0018:	460c      	mov	r4, r1
c0de001a:	4605      	mov	r5, r0
c0de001c:	4668      	mov	r0, sp
c0de001e:	2120      	movs	r1, #32
c0de0020:	4616      	mov	r6, r2
c0de0022:	f00c fab7 	bl	c0dec594 <__aeabi_memclr>
c0de0026:	b914      	cbnz	r4, c0de002e <address_from_pubkey+0x1a>
c0de0028:	2001      	movs	r0, #1
c0de002a:	f00b f8b1 	bl	c0deb190 <assert_exit>
c0de002e:	2e14      	cmp	r6, #20
c0de0030:	d30a      	bcc.n	c0de0048 <address_from_pubkey+0x34>
c0de0032:	2040      	movs	r0, #64	@ 0x40
c0de0034:	2101      	movs	r1, #1
c0de0036:	9009      	str	r0, [sp, #36]	@ 0x24
c0de0038:	1c68      	adds	r0, r5, #1
c0de003a:	466d      	mov	r5, sp
c0de003c:	9008      	str	r0, [sp, #32]
c0de003e:	a808      	add	r0, sp, #32
c0de0040:	462a      	mov	r2, r5
c0de0042:	f00b f86d 	bl	c0deb120 <cx_keccak_256_hash_iovec>
c0de0046:	b108      	cbz	r0, c0de004c <address_from_pubkey+0x38>
c0de0048:	2000      	movs	r0, #0
c0de004a:	e006      	b.n	c0de005a <address_from_pubkey+0x46>
c0de004c:	f105 010c 	add.w	r1, r5, #12
c0de0050:	4620      	mov	r0, r4
c0de0052:	2214      	movs	r2, #20
c0de0054:	f00c faa1 	bl	c0dec59a <__aeabi_memcpy>
c0de0058:	2001      	movs	r0, #1
c0de005a:	b00a      	add	sp, #40	@ 0x28
c0de005c:	bd70      	pop	{r4, r5, r6, pc}

c0de005e <apdu_dispatcher>:
c0de005e:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0060:	4604      	mov	r4, r0
c0de0062:	b910      	cbnz	r0, c0de006a <apdu_dispatcher+0xc>
c0de0064:	2001      	movs	r0, #1
c0de0066:	f00b f893 	bl	c0deb190 <assert_exit>
c0de006a:	7820      	ldrb	r0, [r4, #0]
c0de006c:	28e0      	cmp	r0, #224	@ 0xe0
c0de006e:	d139      	bne.n	c0de00e4 <apdu_dispatcher+0x86>
c0de0070:	2000      	movs	r0, #0
c0de0072:	9003      	str	r0, [sp, #12]
c0de0074:	e9cd 0001 	strd	r0, r0, [sp, #4]
c0de0078:	7860      	ldrb	r0, [r4, #1]
c0de007a:	2813      	cmp	r0, #19
c0de007c:	d035      	beq.n	c0de00ea <apdu_dispatcher+0x8c>
c0de007e:	2804      	cmp	r0, #4
c0de0080:	d03c      	beq.n	c0de00fc <apdu_dispatcher+0x9e>
c0de0082:	2805      	cmp	r0, #5
c0de0084:	d046      	beq.n	c0de0114 <apdu_dispatcher+0xb6>
c0de0086:	2806      	cmp	r0, #6
c0de0088:	d05a      	beq.n	c0de0140 <apdu_dispatcher+0xe2>
c0de008a:	2807      	cmp	r0, #7
c0de008c:	d066      	beq.n	c0de015c <apdu_dispatcher+0xfe>
c0de008e:	2809      	cmp	r0, #9
c0de0090:	d06e      	beq.n	c0de0170 <apdu_dispatcher+0x112>
c0de0092:	280a      	cmp	r0, #10
c0de0094:	d07c      	beq.n	c0de0190 <apdu_dispatcher+0x132>
c0de0096:	280b      	cmp	r0, #11
c0de0098:	f000 8083 	beq.w	c0de01a2 <apdu_dispatcher+0x144>
c0de009c:	280c      	cmp	r0, #12
c0de009e:	f000 8089 	beq.w	c0de01b4 <apdu_dispatcher+0x156>
c0de00a2:	280d      	cmp	r0, #13
c0de00a4:	f000 8093 	beq.w	c0de01ce <apdu_dispatcher+0x170>
c0de00a8:	280e      	cmp	r0, #14
c0de00aa:	f000 8099 	beq.w	c0de01e0 <apdu_dispatcher+0x182>
c0de00ae:	280f      	cmp	r0, #15
c0de00b0:	f000 809f 	beq.w	c0de01f2 <apdu_dispatcher+0x194>
c0de00b4:	2810      	cmp	r0, #16
c0de00b6:	f000 80a9 	beq.w	c0de020c <apdu_dispatcher+0x1ae>
c0de00ba:	2811      	cmp	r0, #17
c0de00bc:	f000 80b1 	beq.w	c0de0222 <apdu_dispatcher+0x1c4>
c0de00c0:	2812      	cmp	r0, #18
c0de00c2:	f000 80b9 	beq.w	c0de0238 <apdu_dispatcher+0x1da>
c0de00c6:	2803      	cmp	r0, #3
c0de00c8:	f040 80c0 	bne.w	c0de024c <apdu_dispatcher+0x1ee>
c0de00cc:	78a0      	ldrb	r0, [r4, #2]
c0de00ce:	2800      	cmp	r0, #0
c0de00d0:	f040 80d5 	bne.w	c0de027e <apdu_dispatcher+0x220>
c0de00d4:	78e0      	ldrb	r0, [r4, #3]
c0de00d6:	2800      	cmp	r0, #0
c0de00d8:	f040 80d1 	bne.w	c0de027e <apdu_dispatcher+0x220>
c0de00dc:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de00e0:	f000 b987 	b.w	c0de03f2 <handler_get_version>
c0de00e4:	f44f 40dc 	mov.w	r0, #28160	@ 0x6e00
c0de00e8:	e0cb      	b.n	c0de0282 <apdu_dispatcher+0x224>
c0de00ea:	68a0      	ldr	r0, [r4, #8]
c0de00ec:	78a1      	ldrb	r1, [r4, #2]
c0de00ee:	78e2      	ldrb	r2, [r4, #3]
c0de00f0:	f000 f8d1 	bl	c0de0296 <OUTLINED_FUNCTION_0>
c0de00f4:	a801      	add	r0, sp, #4
c0de00f6:	f000 fb65 	bl	c0de07c4 <handler_cmd_get_pk_chunk>
c0de00fa:	e0a5      	b.n	c0de0248 <apdu_dispatcher+0x1ea>
c0de00fc:	78a0      	ldrb	r0, [r4, #2]
c0de00fe:	2800      	cmp	r0, #0
c0de0100:	f040 80bd 	bne.w	c0de027e <apdu_dispatcher+0x220>
c0de0104:	78e0      	ldrb	r0, [r4, #3]
c0de0106:	2800      	cmp	r0, #0
c0de0108:	f040 80b9 	bne.w	c0de027e <apdu_dispatcher+0x220>
c0de010c:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0110:	f000 b90a 	b.w	c0de0328 <handler_get_app_name>
c0de0114:	78a1      	ldrb	r1, [r4, #2]
c0de0116:	2901      	cmp	r1, #1
c0de0118:	f200 80b1 	bhi.w	c0de027e <apdu_dispatcher+0x220>
c0de011c:	78e0      	ldrb	r0, [r4, #3]
c0de011e:	2800      	cmp	r0, #0
c0de0120:	f040 80ad 	bne.w	c0de027e <apdu_dispatcher+0x220>
c0de0124:	68a0      	ldr	r0, [r4, #8]
c0de0126:	2800      	cmp	r0, #0
c0de0128:	f000 80a1 	beq.w	c0de026e <apdu_dispatcher+0x210>
c0de012c:	9001      	str	r0, [sp, #4]
c0de012e:	7920      	ldrb	r0, [r4, #4]
c0de0130:	2900      	cmp	r1, #0
c0de0132:	9002      	str	r0, [sp, #8]
c0de0134:	bf18      	it	ne
c0de0136:	2101      	movne	r1, #1
c0de0138:	a801      	add	r0, sp, #4
c0de013a:	f000 f909 	bl	c0de0350 <handler_get_public_key>
c0de013e:	e083      	b.n	c0de0248 <apdu_dispatcher+0x1ea>
c0de0140:	78a1      	ldrb	r1, [r4, #2]
c0de0142:	2900      	cmp	r1, #0
c0de0144:	f000 8085 	beq.w	c0de0252 <apdu_dispatcher+0x1f4>
c0de0148:	2903      	cmp	r1, #3
c0de014a:	f200 8098 	bhi.w	c0de027e <apdu_dispatcher+0x220>
c0de014e:	78e0      	ldrb	r0, [r4, #3]
c0de0150:	f040 0280 	orr.w	r2, r0, #128	@ 0x80
c0de0154:	2a80      	cmp	r2, #128	@ 0x80
c0de0156:	f000 8080 	beq.w	c0de025a <apdu_dispatcher+0x1fc>
c0de015a:	e090      	b.n	c0de027e <apdu_dispatcher+0x220>
c0de015c:	68a0      	ldr	r0, [r4, #8]
c0de015e:	2800      	cmp	r0, #0
c0de0160:	f000 8085 	beq.w	c0de026e <apdu_dispatcher+0x210>
c0de0164:	f000 f897 	bl	c0de0296 <OUTLINED_FUNCTION_0>
c0de0168:	a801      	add	r0, sp, #4
c0de016a:	f000 fa0a 	bl	c0de0582 <handler_cmd_keccakH>
c0de016e:	e06b      	b.n	c0de0248 <apdu_dispatcher+0x1ea>
c0de0170:	78e0      	ldrb	r0, [r4, #3]
c0de0172:	2800      	cmp	r0, #0
c0de0174:	f040 8083 	bne.w	c0de027e <apdu_dispatcher+0x220>
c0de0178:	78a1      	ldrb	r1, [r4, #2]
c0de017a:	2902      	cmp	r1, #2
c0de017c:	d301      	bcc.n	c0de0182 <apdu_dispatcher+0x124>
c0de017e:	2980      	cmp	r1, #128	@ 0x80
c0de0180:	d17d      	bne.n	c0de027e <apdu_dispatcher+0x220>
c0de0182:	68a0      	ldr	r0, [r4, #8]
c0de0184:	f000 f887 	bl	c0de0296 <OUTLINED_FUNCTION_0>
c0de0188:	a801      	add	r0, sp, #4
c0de018a:	f000 fa13 	bl	c0de05b4 <handler_cmd_keccak_prng>
c0de018e:	e05b      	b.n	c0de0248 <apdu_dispatcher+0x1ea>
c0de0190:	68a0      	ldr	r0, [r4, #8]
c0de0192:	2800      	cmp	r0, #0
c0de0194:	d06b      	beq.n	c0de026e <apdu_dispatcher+0x210>
c0de0196:	f000 f87e 	bl	c0de0296 <OUTLINED_FUNCTION_0>
c0de019a:	a801      	add	r0, sp, #4
c0de019c:	f000 f9d9 	bl	c0de0552 <handler_cmd_dummy>
c0de01a0:	e052      	b.n	c0de0248 <apdu_dispatcher+0x1ea>
c0de01a2:	68a0      	ldr	r0, [r4, #8]
c0de01a4:	2800      	cmp	r0, #0
c0de01a6:	d062      	beq.n	c0de026e <apdu_dispatcher+0x210>
c0de01a8:	f000 f875 	bl	c0de0296 <OUTLINED_FUNCTION_0>
c0de01ac:	a801      	add	r0, sp, #4
c0de01ae:	f000 fa39 	bl	c0de0624 <handler_cmd_sample_in_ball>
c0de01b2:	e049      	b.n	c0de0248 <apdu_dispatcher+0x1ea>
c0de01b4:	78a0      	ldrb	r0, [r4, #2]
c0de01b6:	2800      	cmp	r0, #0
c0de01b8:	d161      	bne.n	c0de027e <apdu_dispatcher+0x220>
c0de01ba:	78e0      	ldrb	r0, [r4, #3]
c0de01bc:	2800      	cmp	r0, #0
c0de01be:	d15e      	bne.n	c0de027e <apdu_dispatcher+0x220>
c0de01c0:	68a0      	ldr	r0, [r4, #8]
c0de01c2:	f000 f868 	bl	c0de0296 <OUTLINED_FUNCTION_0>
c0de01c6:	a801      	add	r0, sp, #4
c0de01c8:	f000 fa3b 	bl	c0de0642 <handler_cmd_keygen_core_dilithium>
c0de01cc:	e03c      	b.n	c0de0248 <apdu_dispatcher+0x1ea>
c0de01ce:	68a0      	ldr	r0, [r4, #8]
c0de01d0:	2800      	cmp	r0, #0
c0de01d2:	d04c      	beq.n	c0de026e <apdu_dispatcher+0x210>
c0de01d4:	f000 f85f 	bl	c0de0296 <OUTLINED_FUNCTION_0>
c0de01d8:	a801      	add	r0, sp, #4
c0de01da:	f000 fb03 	bl	c0de07e4 <handler_cmd_Poseidon_ithRC>
c0de01de:	e033      	b.n	c0de0248 <apdu_dispatcher+0x1ea>
c0de01e0:	68a0      	ldr	r0, [r4, #8]
c0de01e2:	2800      	cmp	r0, #0
c0de01e4:	d043      	beq.n	c0de026e <apdu_dispatcher+0x210>
c0de01e6:	f000 f856 	bl	c0de0296 <OUTLINED_FUNCTION_0>
c0de01ea:	a801      	add	r0, sp, #4
c0de01ec:	f000 fb28 	bl	c0de0840 <handler_cmd_tEdwards>
c0de01f0:	e02a      	b.n	c0de0248 <apdu_dispatcher+0x1ea>
c0de01f2:	78e0      	ldrb	r0, [r4, #3]
c0de01f4:	2800      	cmp	r0, #0
c0de01f6:	d142      	bne.n	c0de027e <apdu_dispatcher+0x220>
c0de01f8:	78a1      	ldrb	r1, [r4, #2]
c0de01fa:	2902      	cmp	r1, #2
c0de01fc:	d23a      	bcs.n	c0de0274 <apdu_dispatcher+0x216>
c0de01fe:	68a0      	ldr	r0, [r4, #8]
c0de0200:	f000 f849 	bl	c0de0296 <OUTLINED_FUNCTION_0>
c0de0204:	a801      	add	r0, sp, #4
c0de0206:	f000 fa43 	bl	c0de0690 <handler_cmd_sign_dilithium>
c0de020a:	e01d      	b.n	c0de0248 <apdu_dispatcher+0x1ea>
c0de020c:	78a0      	ldrb	r0, [r4, #2]
c0de020e:	bbb0      	cbnz	r0, c0de027e <apdu_dispatcher+0x220>
c0de0210:	78e0      	ldrb	r0, [r4, #3]
c0de0212:	bba0      	cbnz	r0, c0de027e <apdu_dispatcher+0x220>
c0de0214:	68a0      	ldr	r0, [r4, #8]
c0de0216:	f000 f83e 	bl	c0de0296 <OUTLINED_FUNCTION_0>
c0de021a:	a801      	add	r0, sp, #4
c0de021c:	f000 faa0 	bl	c0de0760 <handler_cmd_verify_dilithium>
c0de0220:	e012      	b.n	c0de0248 <apdu_dispatcher+0x1ea>
c0de0222:	78a0      	ldrb	r0, [r4, #2]
c0de0224:	bb58      	cbnz	r0, c0de027e <apdu_dispatcher+0x220>
c0de0226:	78e0      	ldrb	r0, [r4, #3]
c0de0228:	bb48      	cbnz	r0, c0de027e <apdu_dispatcher+0x220>
c0de022a:	68a0      	ldr	r0, [r4, #8]
c0de022c:	f000 f833 	bl	c0de0296 <OUTLINED_FUNCTION_0>
c0de0230:	a801      	add	r0, sp, #4
c0de0232:	f000 fa1a 	bl	c0de066a <handler_cmd_keygen_dilithium>
c0de0236:	e007      	b.n	c0de0248 <apdu_dispatcher+0x1ea>
c0de0238:	68a0      	ldr	r0, [r4, #8]
c0de023a:	78a1      	ldrb	r1, [r4, #2]
c0de023c:	78e2      	ldrb	r2, [r4, #3]
c0de023e:	f000 f82a 	bl	c0de0296 <OUTLINED_FUNCTION_0>
c0de0242:	a801      	add	r0, sp, #4
c0de0244:	f000 faae 	bl	c0de07a4 <handler_cmd_get_sig_chunk>
c0de0248:	b004      	add	sp, #16
c0de024a:	bd10      	pop	{r4, pc}
c0de024c:	f44f 40da 	mov.w	r0, #27904	@ 0x6d00
c0de0250:	e017      	b.n	c0de0282 <apdu_dispatcher+0x224>
c0de0252:	78e0      	ldrb	r0, [r4, #3]
c0de0254:	2880      	cmp	r0, #128	@ 0x80
c0de0256:	d112      	bne.n	c0de027e <apdu_dispatcher+0x220>
c0de0258:	2080      	movs	r0, #128	@ 0x80
c0de025a:	68a2      	ldr	r2, [r4, #8]
c0de025c:	b13a      	cbz	r2, c0de026e <apdu_dispatcher+0x210>
c0de025e:	9201      	str	r2, [sp, #4]
c0de0260:	7922      	ldrb	r2, [r4, #4]
c0de0262:	9202      	str	r2, [sp, #8]
c0de0264:	09c2      	lsrs	r2, r0, #7
c0de0266:	a801      	add	r0, sp, #4
c0de0268:	f000 f8da 	bl	c0de0420 <handler_sign_tx>
c0de026c:	e7ec      	b.n	c0de0248 <apdu_dispatcher+0x1ea>
c0de026e:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0272:	e006      	b.n	c0de0282 <apdu_dispatcher+0x224>
c0de0274:	2980      	cmp	r1, #128	@ 0x80
c0de0276:	d102      	bne.n	c0de027e <apdu_dispatcher+0x220>
c0de0278:	7920      	ldrb	r0, [r4, #4]
c0de027a:	2802      	cmp	r0, #2
c0de027c:	d0bf      	beq.n	c0de01fe <apdu_dispatcher+0x1a0>
c0de027e:	f646 2086 	movw	r0, #27270	@ 0x6a86
c0de0282:	b004      	add	sp, #16
c0de0284:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de0288:	f000 b800 	b.w	c0de028c <io_send_sw>

c0de028c <io_send_sw>:
c0de028c:	4602      	mov	r2, r0
c0de028e:	2000      	movs	r0, #0
c0de0290:	2100      	movs	r1, #0
c0de0292:	f009 be6f 	b.w	c0de9f74 <io_send_response_buffers>

c0de0296 <OUTLINED_FUNCTION_0>:
c0de0296:	9001      	str	r0, [sp, #4]
c0de0298:	7920      	ldrb	r0, [r4, #4]
c0de029a:	9002      	str	r0, [sp, #8]
c0de029c:	4770      	bx	lr
	...

c0de02a0 <app_main>:
c0de02a0:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de02a2:	f009 fe3f 	bl	c0de9f24 <io_init>
c0de02a6:	f000 fcbf 	bl	c0de0c28 <ui_menu_main>
c0de02aa:	481b      	ldr	r0, [pc, #108]	@ (c0de0318 <app_main+0x78>)
c0de02ac:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de02b0:	4448      	add	r0, r9
c0de02b2:	f00c f97b 	bl	c0dec5ac <explicit_bzero>
c0de02b6:	481a      	ldr	r0, [pc, #104]	@ (c0de0320 <app_main+0x80>)
c0de02b8:	4478      	add	r0, pc
c0de02ba:	f00b fd9b 	bl	c0debdf4 <pic>
c0de02be:	7880      	ldrb	r0, [r0, #2]
c0de02c0:	2801      	cmp	r0, #1
c0de02c2:	d00d      	beq.n	c0de02e0 <app_main+0x40>
c0de02c4:	2001      	movs	r0, #1
c0de02c6:	f88d 0002 	strb.w	r0, [sp, #2]
c0de02ca:	2000      	movs	r0, #0
c0de02cc:	f8ad 0000 	strh.w	r0, [sp]
c0de02d0:	4814      	ldr	r0, [pc, #80]	@ (c0de0324 <app_main+0x84>)
c0de02d2:	4478      	add	r0, pc
c0de02d4:	f00b fd8e 	bl	c0debdf4 <pic>
c0de02d8:	4669      	mov	r1, sp
c0de02da:	2203      	movs	r2, #3
c0de02dc:	f00b fe0e 	bl	c0debefc <nvm_write>
c0de02e0:	4d0e      	ldr	r5, [pc, #56]	@ (c0de031c <app_main+0x7c>)
c0de02e2:	ac01      	add	r4, sp, #4
c0de02e4:	f009 fe28 	bl	c0de9f38 <io_recv_command>
c0de02e8:	2800      	cmp	r0, #0
c0de02ea:	d414      	bmi.n	c0de0316 <app_main+0x76>
c0de02ec:	4602      	mov	r2, r0
c0de02ee:	eb09 0105 	add.w	r1, r9, r5
c0de02f2:	4620      	mov	r0, r4
c0de02f4:	f009 fec3 	bl	c0dea07e <apdu_parser>
c0de02f8:	b130      	cbz	r0, c0de0308 <app_main+0x68>
c0de02fa:	4620      	mov	r0, r4
c0de02fc:	f7ff feaf 	bl	c0de005e <apdu_dispatcher>
c0de0300:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de0304:	dcee      	bgt.n	c0de02e4 <app_main+0x44>
c0de0306:	e006      	b.n	c0de0316 <app_main+0x76>
c0de0308:	2000      	movs	r0, #0
c0de030a:	2100      	movs	r1, #0
c0de030c:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de0310:	f009 fe30 	bl	c0de9f74 <io_send_response_buffers>
c0de0314:	e7e6      	b.n	c0de02e4 <app_main+0x44>
c0de0316:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de0318:	00000000 	.word	0x00000000
c0de031c:	00002a64 	.word	0x00002a64
c0de0320:	0000e344 	.word	0x0000e344
c0de0324:	0000e32a 	.word	0x0000e32a

c0de0328 <handler_get_app_name>:
c0de0328:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de032a:	4808      	ldr	r0, [pc, #32]	@ (c0de034c <handler_get_app_name+0x24>)
c0de032c:	4478      	add	r0, pc
c0de032e:	f00b fd61 	bl	c0debdf4 <pic>
c0de0332:	2100      	movs	r1, #0
c0de0334:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0338:	9103      	str	r1, [sp, #12]
c0de033a:	2107      	movs	r1, #7
c0de033c:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de0340:	a801      	add	r0, sp, #4
c0de0342:	2101      	movs	r1, #1
c0de0344:	f009 fe16 	bl	c0de9f74 <io_send_response_buffers>
c0de0348:	b004      	add	sp, #16
c0de034a:	bd80      	pop	{r7, pc}
c0de034c:	0000c81b 	.word	0x0000c81b

c0de0350 <handler_get_public_key>:
c0de0350:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0352:	b085      	sub	sp, #20
c0de0354:	4f23      	ldr	r7, [pc, #140]	@ (c0de03e4 <handler_get_public_key+0x94>)
c0de0356:	460c      	mov	r4, r1
c0de0358:	4605      	mov	r5, r0
c0de035a:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de035e:	eb09 0607 	add.w	r6, r9, r7
c0de0362:	4630      	mov	r0, r6
c0de0364:	f00c f922 	bl	c0dec5ac <explicit_bzero>
c0de0368:	2000      	movs	r0, #0
c0de036a:	f506 7135 	add.w	r1, r6, #724	@ 0x2d4
c0de036e:	f809 0007 	strb.w	r0, [r9, r7]
c0de0372:	f886 02a8 	strb.w	r0, [r6, #680]	@ 0x2a8
c0de0376:	4628      	mov	r0, r5
c0de0378:	f009 fb68 	bl	c0de9a4c <buffer_read_u8>
c0de037c:	b308      	cbz	r0, c0de03c2 <handler_get_public_key+0x72>
c0de037e:	eb09 0007 	add.w	r0, r9, r7
c0de0382:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de0386:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de038a:	4628      	mov	r0, r5
c0de038c:	f009 fbb1 	bl	c0de9af2 <buffer_read_bip32_path>
c0de0390:	b1b8      	cbz	r0, c0de03c2 <handler_get_public_key+0x72>
c0de0392:	eb09 0007 	add.w	r0, r9, r7
c0de0396:	2100      	movs	r1, #0
c0de0398:	2205      	movs	r2, #5
c0de039a:	f890 32d4 	ldrb.w	r3, [r0, #724]	@ 0x2d4
c0de039e:	e9cd 2102 	strd	r2, r1, [sp, #8]
c0de03a2:	9104      	str	r1, [sp, #16]
c0de03a4:	f100 0549 	add.w	r5, r0, #73	@ 0x49
c0de03a8:	f100 0608 	add.w	r6, r0, #8
c0de03ac:	f500 722b 	add.w	r2, r0, #684	@ 0x2ac
c0de03b0:	2000      	movs	r0, #0
c0de03b2:	2121      	movs	r1, #33	@ 0x21
c0de03b4:	e9cd 6500 	strd	r6, r5, [sp]
c0de03b8:	f009 fc5c 	bl	c0de9c74 <bip32_derive_with_seed_get_pubkey_256>
c0de03bc:	b140      	cbz	r0, c0de03d0 <handler_get_public_key+0x80>
c0de03be:	b280      	uxth	r0, r0
c0de03c0:	e001      	b.n	c0de03c6 <handler_get_public_key+0x76>
c0de03c2:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de03c6:	b005      	add	sp, #20
c0de03c8:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de03cc:	f000 b80c 	b.w	c0de03e8 <io_send_sw>
c0de03d0:	2c00      	cmp	r4, #0
c0de03d2:	b005      	add	sp, #20
c0de03d4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de03d8:	bf08      	it	eq
c0de03da:	f000 baf7 	beq.w	c0de09cc <helper_send_response_pubkey>
c0de03de:	f000 bd07 	b.w	c0de0df0 <ui_display_address>
c0de03e2:	bf00      	nop
c0de03e4:	00000000 	.word	0x00000000

c0de03e8 <io_send_sw>:
c0de03e8:	4602      	mov	r2, r0
c0de03ea:	2000      	movs	r0, #0
c0de03ec:	2100      	movs	r1, #0
c0de03ee:	f009 bdc1 	b.w	c0de9f74 <io_send_response_buffers>

c0de03f2 <handler_get_version>:
c0de03f2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de03f4:	2000      	movs	r0, #0
c0de03f6:	2101      	movs	r1, #1
c0de03f8:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de03fc:	f88d 0002 	strb.w	r0, [sp, #2]
c0de0400:	f88d 0001 	strb.w	r0, [sp, #1]
c0de0404:	9003      	str	r0, [sp, #12]
c0de0406:	2003      	movs	r0, #3
c0de0408:	f88d 1003 	strb.w	r1, [sp, #3]
c0de040c:	2101      	movs	r1, #1
c0de040e:	9002      	str	r0, [sp, #8]
c0de0410:	f10d 0001 	add.w	r0, sp, #1
c0de0414:	9001      	str	r0, [sp, #4]
c0de0416:	a801      	add	r0, sp, #4
c0de0418:	f009 fdac 	bl	c0de9f74 <io_send_response_buffers>
c0de041c:	b004      	add	sp, #16
c0de041e:	bd80      	pop	{r7, pc}

c0de0420 <handler_sign_tx>:
c0de0420:	b570      	push	{r4, r5, r6, lr}
c0de0422:	b086      	sub	sp, #24
c0de0424:	4e46      	ldr	r6, [pc, #280]	@ (c0de0540 <handler_sign_tx+0x120>)
c0de0426:	4604      	mov	r4, r0
c0de0428:	b191      	cbz	r1, c0de0450 <handler_sign_tx+0x30>
c0de042a:	eb09 0006 	add.w	r0, r9, r6
c0de042e:	f890 02a8 	ldrb.w	r0, [r0, #680]	@ 0x2a8
c0de0432:	2801      	cmp	r0, #1
c0de0434:	d12c      	bne.n	c0de0490 <handler_sign_tx+0x70>
c0de0436:	eb09 0006 	add.w	r0, r9, r6
c0de043a:	4615      	mov	r5, r2
c0de043c:	6862      	ldr	r2, [r4, #4]
c0de043e:	f8d0 0208 	ldr.w	r0, [r0, #520]	@ 0x208
c0de0442:	1811      	adds	r1, r2, r0
c0de0444:	f5b1 7fff 	cmp.w	r1, #510	@ 0x1fe
c0de0448:	d925      	bls.n	c0de0496 <handler_sign_tx+0x76>
c0de044a:	f24b 0004 	movw	r0, #45060	@ 0xb004
c0de044e:	e039      	b.n	c0de04c4 <handler_sign_tx+0xa4>
c0de0450:	eb09 0506 	add.w	r5, r9, r6
c0de0454:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de0458:	4628      	mov	r0, r5
c0de045a:	f00c f8a7 	bl	c0dec5ac <explicit_bzero>
c0de045e:	2000      	movs	r0, #0
c0de0460:	f505 7135 	add.w	r1, r5, #724	@ 0x2d4
c0de0464:	f809 0006 	strb.w	r0, [r9, r6]
c0de0468:	2001      	movs	r0, #1
c0de046a:	f885 02a8 	strb.w	r0, [r5, #680]	@ 0x2a8
c0de046e:	4620      	mov	r0, r4
c0de0470:	f009 faec 	bl	c0de9a4c <buffer_read_u8>
c0de0474:	b148      	cbz	r0, c0de048a <handler_sign_tx+0x6a>
c0de0476:	eb09 0006 	add.w	r0, r9, r6
c0de047a:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de047e:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de0482:	4620      	mov	r0, r4
c0de0484:	f009 fb35 	bl	c0de9af2 <buffer_read_bip32_path>
c0de0488:	b9b8      	cbnz	r0, c0de04ba <handler_sign_tx+0x9a>
c0de048a:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de048e:	e019      	b.n	c0de04c4 <handler_sign_tx+0xa4>
c0de0490:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de0494:	e016      	b.n	c0de04c4 <handler_sign_tx+0xa4>
c0de0496:	eb09 0106 	add.w	r1, r9, r6
c0de049a:	4408      	add	r0, r1
c0de049c:	f100 0108 	add.w	r1, r0, #8
c0de04a0:	4620      	mov	r0, r4
c0de04a2:	f009 fb50 	bl	c0de9b46 <buffer_move>
c0de04a6:	b158      	cbz	r0, c0de04c0 <handler_sign_tx+0xa0>
c0de04a8:	eb09 0106 	add.w	r1, r9, r6
c0de04ac:	6862      	ldr	r2, [r4, #4]
c0de04ae:	f8d1 0208 	ldr.w	r0, [r1, #520]	@ 0x208
c0de04b2:	4410      	add	r0, r2
c0de04b4:	f8c1 0208 	str.w	r0, [r1, #520]	@ 0x208
c0de04b8:	b14d      	cbz	r5, c0de04ce <handler_sign_tx+0xae>
c0de04ba:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de04be:	e001      	b.n	c0de04c4 <handler_sign_tx+0xa4>
c0de04c0:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de04c4:	b006      	add	sp, #24
c0de04c6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de04ca:	f000 b83d 	b.w	c0de0548 <io_send_sw>
c0de04ce:	2100      	movs	r1, #0
c0de04d0:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de04d4:	eb09 0006 	add.w	r0, r9, r6
c0de04d8:	f100 0108 	add.w	r1, r0, #8
c0de04dc:	9101      	str	r1, [sp, #4]
c0de04de:	f500 7104 	add.w	r1, r0, #528	@ 0x210
c0de04e2:	a801      	add	r0, sp, #4
c0de04e4:	f000 fac2 	bl	c0de0a6c <transaction_deserialize>
c0de04e8:	2801      	cmp	r0, #1
c0de04ea:	d114      	bne.n	c0de0516 <handler_sign_tx+0xf6>
c0de04ec:	2001      	movs	r0, #1
c0de04ee:	f809 0006 	strb.w	r0, [r9, r6]
c0de04f2:	eb09 0006 	add.w	r0, r9, r6
c0de04f6:	f8d0 1208 	ldr.w	r1, [r0, #520]	@ 0x208
c0de04fa:	f500 720e 	add.w	r2, r0, #568	@ 0x238
c0de04fe:	9105      	str	r1, [sp, #20]
c0de0500:	f100 0108 	add.w	r1, r0, #8
c0de0504:	9104      	str	r1, [sp, #16]
c0de0506:	a804      	add	r0, sp, #16
c0de0508:	2101      	movs	r1, #1
c0de050a:	f00a fe09 	bl	c0deb120 <cx_keccak_256_hash_iovec>
c0de050e:	b140      	cbz	r0, c0de0522 <handler_sign_tx+0x102>
c0de0510:	f24b 0006 	movw	r0, #45062	@ 0xb006
c0de0514:	e001      	b.n	c0de051a <handler_sign_tx+0xfa>
c0de0516:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de051a:	f000 f815 	bl	c0de0548 <io_send_sw>
c0de051e:	b006      	add	sp, #24
c0de0520:	bd70      	pop	{r4, r5, r6, pc}
c0de0522:	eb09 0006 	add.w	r0, r9, r6
c0de0526:	f8d0 022c 	ldr.w	r0, [r0, #556]	@ 0x22c
c0de052a:	4906      	ldr	r1, [pc, #24]	@ (c0de0544 <handler_sign_tx+0x124>)
c0de052c:	4479      	add	r1, pc
c0de052e:	f00c f881 	bl	c0dec634 <strcmp>
c0de0532:	b110      	cbz	r0, c0de053a <handler_sign_tx+0x11a>
c0de0534:	f000 fd79 	bl	c0de102a <ui_display_transaction>
c0de0538:	e7f1      	b.n	c0de051e <handler_sign_tx+0xfe>
c0de053a:	f000 fd73 	bl	c0de1024 <ui_display_blind_signed_transaction>
c0de053e:	e7ee      	b.n	c0de051e <handler_sign_tx+0xfe>
c0de0540:	00000000 	.word	0x00000000
c0de0544:	0000c32e 	.word	0x0000c32e

c0de0548 <io_send_sw>:
c0de0548:	4602      	mov	r2, r0
c0de054a:	2000      	movs	r0, #0
c0de054c:	2100      	movs	r1, #0
c0de054e:	f009 bd11 	b.w	c0de9f74 <io_send_response_buffers>

c0de0552 <handler_cmd_dummy>:
c0de0552:	b580      	push	{r7, lr}
c0de0554:	e9d0 2100 	ldrd	r2, r1, [r0]
c0de0558:	4610      	mov	r0, r2
c0de055a:	f000 f802 	bl	c0de0562 <io_send_response_pointer>
c0de055e:	2000      	movs	r0, #0
c0de0560:	bd80      	pop	{r7, pc}

c0de0562 <io_send_response_pointer>:
c0de0562:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de0564:	2200      	movs	r2, #0
c0de0566:	ab01      	add	r3, sp, #4
c0de0568:	c307      	stmia	r3!, {r0, r1, r2}
c0de056a:	a801      	add	r0, sp, #4
c0de056c:	2101      	movs	r1, #1
c0de056e:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0572:	f009 fcff 	bl	c0de9f74 <io_send_response_buffers>
c0de0576:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de0578 <io_send_sw>:
c0de0578:	4602      	mov	r2, r0
c0de057a:	2000      	movs	r0, #0
c0de057c:	2100      	movs	r1, #0
c0de057e:	f009 bcf9 	b.w	c0de9f74 <io_send_response_buffers>

c0de0582 <handler_cmd_keccakH>:
c0de0582:	b5b0      	push	{r4, r5, r7, lr}
c0de0584:	b0f2      	sub	sp, #456	@ 0x1c8
c0de0586:	466d      	mov	r5, sp
c0de0588:	4604      	mov	r4, r0
c0de058a:	4628      	mov	r0, r5
c0de058c:	f001 fe63 	bl	c0de2256 <keccak_init>
c0de0590:	88a2      	ldrh	r2, [r4, #4]
c0de0592:	6821      	ldr	r1, [r4, #0]
c0de0594:	4628      	mov	r0, r5
c0de0596:	f001 fe62 	bl	c0de225e <keccak_update>
c0de059a:	ac6a      	add	r4, sp, #424	@ 0x1a8
c0de059c:	4628      	mov	r0, r5
c0de059e:	4621      	mov	r1, r4
c0de05a0:	f001 fe5f 	bl	c0de2262 <keccak_final>
c0de05a4:	4620      	mov	r0, r4
c0de05a6:	2120      	movs	r1, #32
c0de05a8:	f7ff ffdb 	bl	c0de0562 <io_send_response_pointer>
c0de05ac:	2000      	movs	r0, #0
c0de05ae:	b072      	add	sp, #456	@ 0x1c8
c0de05b0:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de05b4 <handler_cmd_keccak_prng>:
c0de05b4:	b510      	push	{r4, lr}
c0de05b6:	b090      	sub	sp, #64	@ 0x40
c0de05b8:	2980      	cmp	r1, #128	@ 0x80
c0de05ba:	d007      	beq.n	c0de05cc <handler_cmd_keccak_prng+0x18>
c0de05bc:	2901      	cmp	r1, #1
c0de05be:	d017      	beq.n	c0de05f0 <handler_cmd_keccak_prng+0x3c>
c0de05c0:	bb11      	cbnz	r1, c0de0608 <handler_cmd_keccak_prng+0x54>
c0de05c2:	4817      	ldr	r0, [pc, #92]	@ (c0de0620 <handler_cmd_keccak_prng+0x6c>)
c0de05c4:	4448      	add	r0, r9
c0de05c6:	f001 fe4e 	bl	c0de2266 <inner_keccak256_init>
c0de05ca:	e019      	b.n	c0de0600 <handler_cmd_keccak_prng+0x4c>
c0de05cc:	4c14      	ldr	r4, [pc, #80]	@ (c0de0620 <handler_cmd_keccak_prng+0x6c>)
c0de05ce:	eb09 0004 	add.w	r0, r9, r4
c0de05d2:	f001 fe6b 	bl	c0de22ac <inner_keccak256_flip>
c0de05d6:	b9a0      	cbnz	r0, c0de0602 <handler_cmd_keccak_prng+0x4e>
c0de05d8:	eb09 0004 	add.w	r0, r9, r4
c0de05dc:	4669      	mov	r1, sp
c0de05de:	2240      	movs	r2, #64	@ 0x40
c0de05e0:	f001 fe7a 	bl	c0de22d8 <inner_keccak256_extract>
c0de05e4:	b968      	cbnz	r0, c0de0602 <handler_cmd_keccak_prng+0x4e>
c0de05e6:	4668      	mov	r0, sp
c0de05e8:	2140      	movs	r1, #64	@ 0x40
c0de05ea:	f7ff ffba 	bl	c0de0562 <io_send_response_pointer>
c0de05ee:	e014      	b.n	c0de061a <handler_cmd_keccak_prng+0x66>
c0de05f0:	490b      	ldr	r1, [pc, #44]	@ (c0de0620 <handler_cmd_keccak_prng+0x6c>)
c0de05f2:	eb09 0301 	add.w	r3, r9, r1
c0de05f6:	e9d0 1200 	ldrd	r1, r2, [r0]
c0de05fa:	4618      	mov	r0, r3
c0de05fc:	f001 fe44 	bl	c0de2288 <inner_keccak256_inject>
c0de0600:	b148      	cbz	r0, c0de0616 <handler_cmd_keccak_prng+0x62>
c0de0602:	f000 f9d7 	bl	c0de09b4 <OUTLINED_FUNCTION_0>
c0de0606:	e009      	b.n	c0de061c <handler_cmd_keccak_prng+0x68>
c0de0608:	f646 2086 	movw	r0, #27270	@ 0x6a86
c0de060c:	b010      	add	sp, #64	@ 0x40
c0de060e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de0612:	f7ff bfb1 	b.w	c0de0578 <io_send_sw>
c0de0616:	f000 f9d5 	bl	c0de09c4 <OUTLINED_FUNCTION_2>
c0de061a:	2000      	movs	r0, #0
c0de061c:	b010      	add	sp, #64	@ 0x40
c0de061e:	bd10      	pop	{r4, pc}
c0de0620:	000002d8 	.word	0x000002d8

c0de0624 <handler_cmd_sample_in_ball>:
c0de0624:	b510      	push	{r4, lr}
c0de0626:	f5ad 6d80 	sub.w	sp, sp, #1024	@ 0x400
c0de062a:	6801      	ldr	r1, [r0, #0]
c0de062c:	466c      	mov	r4, sp
c0de062e:	4620      	mov	r0, r4
c0de0630:	f002 fd7b 	bl	c0de312a <pqcrystals_dilithium2_lowram_poly_challenge>
c0de0634:	4620      	mov	r0, r4
c0de0636:	f000 f9c1 	bl	c0de09bc <OUTLINED_FUNCTION_1>
c0de063a:	2000      	movs	r0, #0
c0de063c:	f50d 6d80 	add.w	sp, sp, #1024	@ 0x400
c0de0640:	bd10      	pop	{r4, pc}

c0de0642 <handler_cmd_keygen_core_dilithium>:
c0de0642:	b580      	push	{r7, lr}
c0de0644:	f5ad 6d72 	sub.w	sp, sp, #3872	@ 0xf20
c0de0648:	6802      	ldr	r2, [r0, #0]
c0de064a:	f50d 6020 	add.w	r0, sp, #2560	@ 0xa00
c0de064e:	4669      	mov	r1, sp
c0de0650:	f002 ff56 	bl	c0de3500 <crypto_sign_keypair_core>
c0de0654:	b110      	cbz	r0, c0de065c <handler_cmd_keygen_core_dilithium+0x1a>
c0de0656:	f000 f9ad 	bl	c0de09b4 <OUTLINED_FUNCTION_0>
c0de065a:	e003      	b.n	c0de0664 <handler_cmd_keygen_core_dilithium+0x22>
c0de065c:	4668      	mov	r0, sp
c0de065e:	f000 f9ad 	bl	c0de09bc <OUTLINED_FUNCTION_1>
c0de0662:	2000      	movs	r0, #0
c0de0664:	f50d 6d72 	add.w	sp, sp, #3872	@ 0xf20
c0de0668:	bd80      	pop	{r7, pc}

c0de066a <handler_cmd_keygen_dilithium>:
c0de066a:	b580      	push	{r7, lr}
c0de066c:	f5ad 6d72 	sub.w	sp, sp, #3872	@ 0xf20
c0de0670:	f50d 6020 	add.w	r0, sp, #2560	@ 0xa00
c0de0674:	4669      	mov	r1, sp
c0de0676:	f002 ff32 	bl	c0de34de <pqcrystals_dilithium2_lowram_keypair>
c0de067a:	b110      	cbz	r0, c0de0682 <handler_cmd_keygen_dilithium+0x18>
c0de067c:	f000 f99a 	bl	c0de09b4 <OUTLINED_FUNCTION_0>
c0de0680:	e003      	b.n	c0de068a <handler_cmd_keygen_dilithium+0x20>
c0de0682:	4668      	mov	r0, sp
c0de0684:	f000 f99a 	bl	c0de09bc <OUTLINED_FUNCTION_1>
c0de0688:	2000      	movs	r0, #0
c0de068a:	f50d 6d72 	add.w	sp, sp, #3872	@ 0xf20
c0de068e:	bd80      	pop	{r7, pc}

c0de0690 <handler_cmd_sign_dilithium>:
c0de0690:	b5b0      	push	{r4, r5, r7, lr}
c0de0692:	f6ad 7d48 	subw	sp, sp, #3912	@ 0xf48
c0de0696:	460d      	mov	r5, r1
c0de0698:	4930      	ldr	r1, [pc, #192]	@ (c0de075c <handler_cmd_sign_dilithium+0xcc>)
c0de069a:	4604      	mov	r4, r0
c0de069c:	f60d 7028 	addw	r0, sp, #3880	@ 0xf28
c0de06a0:	2220      	movs	r2, #32
c0de06a2:	4479      	add	r1, pc
c0de06a4:	f00b ff79 	bl	c0dec59a <__aeabi_memcpy>
c0de06a8:	2d80      	cmp	r5, #128	@ 0x80
c0de06aa:	d013      	beq.n	c0de06d4 <handler_cmd_sign_dilithium+0x44>
c0de06ac:	2d01      	cmp	r5, #1
c0de06ae:	d01f      	beq.n	c0de06f0 <handler_cmd_sign_dilithium+0x60>
c0de06b0:	bb35      	cbnz	r5, c0de0700 <handler_cmd_sign_dilithium+0x70>
c0de06b2:	f60d 2008 	addw	r0, sp, #2568	@ 0xa08
c0de06b6:	a902      	add	r1, sp, #8
c0de06b8:	f60d 7228 	addw	r2, sp, #3880	@ 0xf28
c0de06bc:	f002 ff20 	bl	c0de3500 <crypto_sign_keypair_core>
c0de06c0:	4604      	mov	r4, r0
c0de06c2:	2800      	cmp	r0, #0
c0de06c4:	d13e      	bne.n	c0de0744 <handler_cmd_sign_dilithium+0xb4>
c0de06c6:	2000      	movs	r0, #0
c0de06c8:	2100      	movs	r1, #0
c0de06ca:	f002 ffef 	bl	c0de36ac <crypto_sign_signature_init>
c0de06ce:	f000 f979 	bl	c0de09c4 <OUTLINED_FUNCTION_2>
c0de06d2:	e037      	b.n	c0de0744 <handler_cmd_sign_dilithium+0xb4>
c0de06d4:	f60d 2008 	addw	r0, sp, #2568	@ 0xa08
c0de06d8:	a902      	add	r1, sp, #8
c0de06da:	f60d 7228 	addw	r2, sp, #3880	@ 0xf28
c0de06de:	f002 ff0f 	bl	c0de3500 <crypto_sign_keypair_core>
c0de06e2:	bb80      	cbnz	r0, c0de0746 <handler_cmd_sign_dilithium+0xb6>
c0de06e4:	6860      	ldr	r0, [r4, #4]
c0de06e6:	2801      	cmp	r0, #1
c0de06e8:	d812      	bhi.n	c0de0710 <handler_cmd_sign_dilithium+0x80>
c0de06ea:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de06ee:	e02c      	b.n	c0de074a <handler_cmd_sign_dilithium+0xba>
c0de06f0:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de06f4:	f003 f806 	bl	c0de3704 <crypto_sign_signature_absorb>
c0de06f8:	bb28      	cbnz	r0, c0de0746 <handler_cmd_sign_dilithium+0xb6>
c0de06fa:	f000 f963 	bl	c0de09c4 <OUTLINED_FUNCTION_2>
c0de06fe:	e027      	b.n	c0de0750 <handler_cmd_sign_dilithium+0xc0>
c0de0700:	f646 2086 	movw	r0, #27270	@ 0x6a86
c0de0704:	f60d 7d48 	addw	sp, sp, #3912	@ 0xf48
c0de0708:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de070c:	f7ff bf34 	b.w	c0de0578 <io_send_sw>
c0de0710:	3802      	subs	r0, #2
c0de0712:	4d11      	ldr	r5, [pc, #68]	@ (c0de0758 <handler_cmd_sign_dilithium+0xc8>)
c0de0714:	6060      	str	r0, [r4, #4]
c0de0716:	6820      	ldr	r0, [r4, #0]
c0de0718:	3002      	adds	r0, #2
c0de071a:	6020      	str	r0, [r4, #0]
c0de071c:	2000      	movs	r0, #0
c0de071e:	9001      	str	r0, [sp, #4]
c0de0720:	eb09 0005 	add.w	r0, r9, r5
c0de0724:	a901      	add	r1, sp, #4
c0de0726:	aa02      	add	r2, sp, #8
c0de0728:	f500 60f0 	add.w	r0, r0, #1920	@ 0x780
c0de072c:	f002 fff6 	bl	c0de371c <crypto_sign_signature_core>
c0de0730:	4604      	mov	r4, r0
c0de0732:	b938      	cbnz	r0, c0de0744 <handler_cmd_sign_dilithium+0xb4>
c0de0734:	eb09 0005 	add.w	r0, r9, r5
c0de0738:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de073c:	f500 60f0 	add.w	r0, r0, #1920	@ 0x780
c0de0740:	f7ff ff0f 	bl	c0de0562 <io_send_response_pointer>
c0de0744:	b124      	cbz	r4, c0de0750 <handler_cmd_sign_dilithium+0xc0>
c0de0746:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de074a:	f7ff ff15 	bl	c0de0578 <io_send_sw>
c0de074e:	e000      	b.n	c0de0752 <handler_cmd_sign_dilithium+0xc2>
c0de0750:	2000      	movs	r0, #0
c0de0752:	f60d 7d48 	addw	sp, sp, #3912	@ 0xf48
c0de0756:	bdb0      	pop	{r4, r5, r7, pc}
c0de0758:	000002d8 	.word	0x000002d8
c0de075c:	0000c5ae 	.word	0x0000c5ae

c0de0760 <handler_cmd_verify_dilithium>:
c0de0760:	b580      	push	{r7, lr}
c0de0762:	b08e      	sub	sp, #56	@ 0x38
c0de0764:	480d      	ldr	r0, [pc, #52]	@ (c0de079c <handler_cmd_verify_dilithium+0x3c>)
c0de0766:	2100      	movs	r1, #0
c0de0768:	f640 1395 	movw	r3, #2453	@ 0x995
c0de076c:	e9cd 1100 	strd	r1, r1, [sp]
c0de0770:	4478      	add	r0, pc
c0de0772:	9002      	str	r0, [sp, #8]
c0de0774:	a904      	add	r1, sp, #16
c0de0776:	4a0a      	ldr	r2, [pc, #40]	@ (c0de07a0 <handler_cmd_verify_dilithium+0x40>)
c0de0778:	f10d 0017 	add.w	r0, sp, #23
c0de077c:	447a      	add	r2, pc
c0de077e:	f003 fa71 	bl	c0de3c64 <pqcrystals_dilithium2_lowram_open>
c0de0782:	b110      	cbz	r0, c0de078a <handler_cmd_verify_dilithium+0x2a>
c0de0784:	f000 f916 	bl	c0de09b4 <OUTLINED_FUNCTION_0>
c0de0788:	e005      	b.n	c0de0796 <handler_cmd_verify_dilithium+0x36>
c0de078a:	9904      	ldr	r1, [sp, #16]
c0de078c:	f10d 0017 	add.w	r0, sp, #23
c0de0790:	f7ff fee7 	bl	c0de0562 <io_send_response_pointer>
c0de0794:	2000      	movs	r0, #0
c0de0796:	b00e      	add	sp, #56	@ 0x38
c0de0798:	bd80      	pop	{r7, pc}
c0de079a:	bf00      	nop
c0de079c:	0000cf35 	.word	0x0000cf35
c0de07a0:	0000c594 	.word	0x0000c594

c0de07a4 <handler_cmd_get_sig_chunk>:
c0de07a4:	b580      	push	{r7, lr}
c0de07a6:	4806      	ldr	r0, [pc, #24]	@ (c0de07c0 <handler_cmd_get_sig_chunk+0x1c>)
c0de07a8:	ebc1 2101 	rsb	r1, r1, r1, lsl #8
c0de07ac:	4448      	add	r0, r9
c0de07ae:	4408      	add	r0, r1
c0de07b0:	4611      	mov	r1, r2
c0de07b2:	f500 60f0 	add.w	r0, r0, #1920	@ 0x780
c0de07b6:	f7ff fed4 	bl	c0de0562 <io_send_response_pointer>
c0de07ba:	2000      	movs	r0, #0
c0de07bc:	bd80      	pop	{r7, pc}
c0de07be:	bf00      	nop
c0de07c0:	000002d8 	.word	0x000002d8

c0de07c4 <handler_cmd_get_pk_chunk>:
c0de07c4:	b580      	push	{r7, lr}
c0de07c6:	4806      	ldr	r0, [pc, #24]	@ (c0de07e0 <handler_cmd_get_pk_chunk+0x1c>)
c0de07c8:	ebc1 2101 	rsb	r1, r1, r1, lsl #8
c0de07cc:	4448      	add	r0, r9
c0de07ce:	4408      	add	r0, r1
c0de07d0:	4611      	mov	r1, r2
c0de07d2:	f500 7018 	add.w	r0, r0, #608	@ 0x260
c0de07d6:	f7ff fec4 	bl	c0de0562 <io_send_response_pointer>
c0de07da:	2000      	movs	r0, #0
c0de07dc:	bd80      	pop	{r7, pc}
c0de07de:	bf00      	nop
c0de07e0:	000002d8 	.word	0x000002d8

c0de07e4 <handler_cmd_Poseidon_ithRC>:
c0de07e4:	b570      	push	{r4, r5, r6, lr}
c0de07e6:	b0be      	sub	sp, #248	@ 0xf8
c0de07e8:	ad09      	add	r5, sp, #36	@ 0x24
c0de07ea:	4914      	ldr	r1, [pc, #80]	@ (c0de083c <handler_cmd_Poseidon_ithRC+0x58>)
c0de07ec:	4604      	mov	r4, r0
c0de07ee:	2220      	movs	r2, #32
c0de07f0:	4628      	mov	r0, r5
c0de07f2:	4479      	add	r1, pc
c0de07f4:	f00b fed1 	bl	c0dec59a <__aeabi_memcpy>
c0de07f8:	a811      	add	r0, sp, #68	@ 0x44
c0de07fa:	2120      	movs	r1, #32
c0de07fc:	462a      	mov	r2, r5
c0de07fe:	2320      	movs	r3, #32
c0de0800:	f00b fba2 	bl	c0debf48 <cx_bn_alloc_init>
c0de0804:	9911      	ldr	r1, [sp, #68]	@ 0x44
c0de0806:	ae12      	add	r6, sp, #72	@ 0x48
c0de0808:	4630      	mov	r0, r6
c0de080a:	f00b fc2d 	bl	c0dec068 <cx_mont_init>
c0de080e:	ad14      	add	r5, sp, #80	@ 0x50
c0de0810:	2105      	movs	r1, #5
c0de0812:	2205      	movs	r2, #5
c0de0814:	4633      	mov	r3, r6
c0de0816:	4628      	mov	r0, r5
c0de0818:	f004 f8ab 	bl	c0de4972 <Poseidon_alloc_init>
c0de081c:	6820      	ldr	r0, [r4, #0]
c0de081e:	466c      	mov	r4, sp
c0de0820:	7806      	ldrb	r6, [r0, #0]
c0de0822:	b12e      	cbz	r6, c0de0830 <handler_cmd_Poseidon_ithRC+0x4c>
c0de0824:	4628      	mov	r0, r5
c0de0826:	4621      	mov	r1, r4
c0de0828:	f004 f8a0 	bl	c0de496c <Poseidon_getNext_RC>
c0de082c:	3e01      	subs	r6, #1
c0de082e:	e7f8      	b.n	c0de0822 <handler_cmd_Poseidon_ithRC+0x3e>
c0de0830:	4668      	mov	r0, sp
c0de0832:	2120      	movs	r1, #32
c0de0834:	f7ff fe95 	bl	c0de0562 <io_send_response_pointer>
c0de0838:	b03e      	add	sp, #248	@ 0xf8
c0de083a:	bd70      	pop	{r4, r5, r6, pc}
c0de083c:	0000c4fe 	.word	0x0000c4fe

c0de0840 <handler_cmd_tEdwards>:
c0de0840:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0842:	b0ef      	sub	sp, #444	@ 0x1bc
c0de0844:	4605      	mov	r5, r0
c0de0846:	6840      	ldr	r0, [r0, #4]
c0de0848:	2841      	cmp	r0, #65	@ 0x41
c0de084a:	d801      	bhi.n	c0de0850 <handler_cmd_tEdwards+0x10>
c0de084c:	2802      	cmp	r0, #2
c0de084e:	d202      	bcs.n	c0de0856 <handler_cmd_tEdwards+0x16>
c0de0850:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0854:	e018      	b.n	c0de0888 <handler_cmd_tEdwards+0x48>
c0de0856:	6828      	ldr	r0, [r5, #0]
c0de0858:	21ff      	movs	r1, #255	@ 0xff
c0de085a:	7806      	ldrb	r6, [r0, #0]
c0de085c:	2000      	movs	r0, #0
c0de085e:	ac2f      	add	r4, sp, #188	@ 0xbc
c0de0860:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0864:	d002      	beq.n	c0de086c <handler_cmd_tEdwards+0x2c>
c0de0866:	5421      	strb	r1, [r4, r0]
c0de0868:	3001      	adds	r0, #1
c0de086a:	e7f9      	b.n	c0de0860 <handler_cmd_tEdwards+0x20>
c0de086c:	2020      	movs	r0, #32
c0de086e:	2100      	movs	r1, #0
c0de0870:	f00b fb4e 	bl	c0debf10 <cx_bn_lock>
c0de0874:	b920      	cbnz	r0, c0de0880 <handler_cmd_tEdwards+0x40>
c0de0876:	a819      	add	r0, sp, #100	@ 0x64
c0de0878:	4631      	mov	r1, r6
c0de087a:	f003 fd49 	bl	c0de4310 <tEdwards_Curve_alloc_init>
c0de087e:	b128      	cbz	r0, c0de088c <handler_cmd_tEdwards+0x4c>
c0de0880:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de0884:	f7ff fe78 	bl	c0de0578 <io_send_sw>
c0de0888:	b06f      	add	sp, #444	@ 0x1bc
c0de088a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de088c:	2e02      	cmp	r6, #2
c0de088e:	d00c      	beq.n	c0de08aa <handler_cmd_tEdwards+0x6a>
c0de0890:	2e01      	cmp	r6, #1
c0de0892:	d128      	bne.n	c0de08e6 <handler_cmd_tEdwards+0xa6>
c0de0894:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0896:	4943      	ldr	r1, [pc, #268]	@ (c0de09a4 <handler_cmd_tEdwards+0x164>)
c0de0898:	2220      	movs	r2, #32
c0de089a:	4630      	mov	r0, r6
c0de089c:	4479      	add	r1, pc
c0de089e:	f00b fe7c 	bl	c0dec59a <__aeabi_memcpy>
c0de08a2:	af03      	add	r7, sp, #12
c0de08a4:	4940      	ldr	r1, [pc, #256]	@ (c0de09a8 <handler_cmd_tEdwards+0x168>)
c0de08a6:	4479      	add	r1, pc
c0de08a8:	e009      	b.n	c0de08be <handler_cmd_tEdwards+0x7e>
c0de08aa:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de08ac:	493f      	ldr	r1, [pc, #252]	@ (c0de09ac <handler_cmd_tEdwards+0x16c>)
c0de08ae:	2220      	movs	r2, #32
c0de08b0:	4630      	mov	r0, r6
c0de08b2:	4479      	add	r1, pc
c0de08b4:	f00b fe71 	bl	c0dec59a <__aeabi_memcpy>
c0de08b8:	af03      	add	r7, sp, #12
c0de08ba:	493d      	ldr	r1, [pc, #244]	@ (c0de09b0 <handler_cmd_tEdwards+0x170>)
c0de08bc:	4479      	add	r1, pc
c0de08be:	4638      	mov	r0, r7
c0de08c0:	2220      	movs	r2, #32
c0de08c2:	f00b fe6a 	bl	c0dec59a <__aeabi_memcpy>
c0de08c6:	a819      	add	r0, sp, #100	@ 0x64
c0de08c8:	ab16      	add	r3, sp, #88	@ 0x58
c0de08ca:	4631      	mov	r1, r6
c0de08cc:	463a      	mov	r2, r7
c0de08ce:	f003 fec5 	bl	c0de465c <tEdwards_alloc_init>
c0de08d2:	2800      	cmp	r0, #0
c0de08d4:	d1d4      	bne.n	c0de0880 <handler_cmd_tEdwards+0x40>
c0de08d6:	a819      	add	r0, sp, #100	@ 0x64
c0de08d8:	a90b      	add	r1, sp, #44	@ 0x2c
c0de08da:	aa03      	add	r2, sp, #12
c0de08dc:	ab13      	add	r3, sp, #76	@ 0x4c
c0de08de:	f003 febd 	bl	c0de465c <tEdwards_alloc_init>
c0de08e2:	2800      	cmp	r0, #0
c0de08e4:	d1cc      	bne.n	c0de0880 <handler_cmd_tEdwards+0x40>
c0de08e6:	2000      	movs	r0, #0
c0de08e8:	f10d 020b 	add.w	r2, sp, #11
c0de08ec:	f88d 000b 	strb.w	r0, [sp, #11]
c0de08f0:	a819      	add	r0, sp, #100	@ 0x64
c0de08f2:	a916      	add	r1, sp, #88	@ 0x58
c0de08f4:	f003 fcb6 	bl	c0de4264 <tEdwards_IsOnCurve>
c0de08f8:	2800      	cmp	r0, #0
c0de08fa:	d1c1      	bne.n	c0de0880 <handler_cmd_tEdwards+0x40>
c0de08fc:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0900:	2801      	cmp	r0, #1
c0de0902:	d143      	bne.n	c0de098c <handler_cmd_tEdwards+0x14c>
c0de0904:	a819      	add	r0, sp, #100	@ 0x64
c0de0906:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0908:	f10d 020b 	add.w	r2, sp, #11
c0de090c:	4631      	mov	r1, r6
c0de090e:	f003 fca9 	bl	c0de4264 <tEdwards_IsOnCurve>
c0de0912:	2800      	cmp	r0, #0
c0de0914:	d1b4      	bne.n	c0de0880 <handler_cmd_tEdwards+0x40>
c0de0916:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de091a:	2801      	cmp	r0, #1
c0de091c:	d139      	bne.n	c0de0992 <handler_cmd_tEdwards+0x152>
c0de091e:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0920:	f10d 010b 	add.w	r1, sp, #11
c0de0924:	f00b fb8c 	bl	c0dec040 <cx_bn_is_prime>
c0de0928:	2800      	cmp	r0, #0
c0de092a:	d1a9      	bne.n	c0de0880 <handler_cmd_tEdwards+0x40>
c0de092c:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0930:	2801      	cmp	r0, #1
c0de0932:	d131      	bne.n	c0de0998 <handler_cmd_tEdwards+0x158>
c0de0934:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0936:	f10d 010b 	add.w	r1, sp, #11
c0de093a:	f00b fb81 	bl	c0dec040 <cx_bn_is_prime>
c0de093e:	2800      	cmp	r0, #0
c0de0940:	d19e      	bne.n	c0de0880 <handler_cmd_tEdwards+0x40>
c0de0942:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0946:	2801      	cmp	r0, #1
c0de0948:	d129      	bne.n	c0de099e <handler_cmd_tEdwards+0x15e>
c0de094a:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de094e:	9600      	str	r6, [sp, #0]
c0de0950:	1c42      	adds	r2, r0, #1
c0de0952:	1e4b      	subs	r3, r1, #1
c0de0954:	a819      	add	r0, sp, #100	@ 0x64
c0de0956:	a916      	add	r1, sp, #88	@ 0x58
c0de0958:	f003 ff04 	bl	c0de4764 <tEdwards_scalarMul>
c0de095c:	2800      	cmp	r0, #0
c0de095e:	d18f      	bne.n	c0de0880 <handler_cmd_tEdwards+0x40>
c0de0960:	a819      	add	r0, sp, #100	@ 0x64
c0de0962:	f104 0320 	add.w	r3, r4, #32
c0de0966:	a913      	add	r1, sp, #76	@ 0x4c
c0de0968:	4622      	mov	r2, r4
c0de096a:	f003 fe11 	bl	c0de4590 <tEdwards_export>
c0de096e:	2800      	cmp	r0, #0
c0de0970:	f47f af86 	bne.w	c0de0880 <handler_cmd_tEdwards+0x40>
c0de0974:	f00b fad6 	bl	c0debf24 <cx_bn_unlock>
c0de0978:	2800      	cmp	r0, #0
c0de097a:	f47f af81 	bne.w	c0de0880 <handler_cmd_tEdwards+0x40>
c0de097e:	9819      	ldr	r0, [sp, #100]	@ 0x64
c0de0980:	0041      	lsls	r1, r0, #1
c0de0982:	a82f      	add	r0, sp, #188	@ 0xbc
c0de0984:	f7ff fded 	bl	c0de0562 <io_send_response_pointer>
c0de0988:	2000      	movs	r0, #0
c0de098a:	e77d      	b.n	c0de0888 <handler_cmd_tEdwards+0x48>
c0de098c:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0990:	e778      	b.n	c0de0884 <handler_cmd_tEdwards+0x44>
c0de0992:	f64c 2002 	movw	r0, #51714	@ 0xca02
c0de0996:	e775      	b.n	c0de0884 <handler_cmd_tEdwards+0x44>
c0de0998:	f64c 2003 	movw	r0, #51715	@ 0xca03
c0de099c:	e772      	b.n	c0de0884 <handler_cmd_tEdwards+0x44>
c0de099e:	f64c 2004 	movw	r0, #51716	@ 0xca04
c0de09a2:	e76f      	b.n	c0de0884 <handler_cmd_tEdwards+0x44>
c0de09a4:	0000c314 	.word	0x0000c314
c0de09a8:	0000c38a 	.word	0x0000c38a
c0de09ac:	0000c31e 	.word	0x0000c31e
c0de09b0:	0000c2d4 	.word	0x0000c2d4

c0de09b4 <OUTLINED_FUNCTION_0>:
c0de09b4:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de09b8:	f7ff bdde 	b.w	c0de0578 <io_send_sw>

c0de09bc <OUTLINED_FUNCTION_1>:
c0de09bc:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de09c0:	f7ff bdcf 	b.w	c0de0562 <io_send_response_pointer>

c0de09c4 <OUTLINED_FUNCTION_2>:
c0de09c4:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de09c8:	f7ff bdd6 	b.w	c0de0578 <io_send_sw>

c0de09cc <helper_send_response_pubkey>:
c0de09cc:	b5b0      	push	{r4, r5, r7, lr}
c0de09ce:	b09a      	sub	sp, #104	@ 0x68
c0de09d0:	2041      	movs	r0, #65	@ 0x41
c0de09d2:	f10d 0405 	add.w	r4, sp, #5
c0de09d6:	2241      	movs	r2, #65	@ 0x41
c0de09d8:	f88d 0005 	strb.w	r0, [sp, #5]
c0de09dc:	480b      	ldr	r0, [pc, #44]	@ (c0de0a0c <helper_send_response_pubkey+0x40>)
c0de09de:	eb09 0500 	add.w	r5, r9, r0
c0de09e2:	1c60      	adds	r0, r4, #1
c0de09e4:	f105 0108 	add.w	r1, r5, #8
c0de09e8:	f00b fdd7 	bl	c0dec59a <__aeabi_memcpy>
c0de09ec:	2020      	movs	r0, #32
c0de09ee:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de09f2:	2220      	movs	r2, #32
c0de09f4:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de09f8:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de09fc:	f00b fdcd 	bl	c0dec59a <__aeabi_memcpy>
c0de0a00:	4620      	mov	r0, r4
c0de0a02:	2163      	movs	r1, #99	@ 0x63
c0de0a04:	f000 f804 	bl	c0de0a10 <io_send_response_pointer>
c0de0a08:	b01a      	add	sp, #104	@ 0x68
c0de0a0a:	bdb0      	pop	{r4, r5, r7, pc}
c0de0a0c:	00000000 	.word	0x00000000

c0de0a10 <io_send_response_pointer>:
c0de0a10:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de0a12:	2200      	movs	r2, #0
c0de0a14:	ab01      	add	r3, sp, #4
c0de0a16:	c307      	stmia	r3!, {r0, r1, r2}
c0de0a18:	a801      	add	r0, sp, #4
c0de0a1a:	2101      	movs	r1, #1
c0de0a1c:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0a20:	f009 faa8 	bl	c0de9f74 <io_send_response_buffers>
c0de0a24:	b004      	add	sp, #16
c0de0a26:	bd80      	pop	{r7, pc}

c0de0a28 <helper_send_response_sig>:
c0de0a28:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0a2a:	b093      	sub	sp, #76	@ 0x4c
c0de0a2c:	f10d 0402 	add.w	r4, sp, #2
c0de0a30:	2149      	movs	r1, #73	@ 0x49
c0de0a32:	1c65      	adds	r5, r4, #1
c0de0a34:	4628      	mov	r0, r5
c0de0a36:	f00b fdad 	bl	c0dec594 <__aeabi_memclr>
c0de0a3a:	480b      	ldr	r0, [pc, #44]	@ (c0de0a68 <helper_send_response_sig+0x40>)
c0de0a3c:	eb09 0700 	add.w	r7, r9, r0
c0de0a40:	4628      	mov	r0, r5
c0de0a42:	f897 62a0 	ldrb.w	r6, [r7, #672]	@ 0x2a0
c0de0a46:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de0a4a:	4632      	mov	r2, r6
c0de0a4c:	f88d 6002 	strb.w	r6, [sp, #2]
c0de0a50:	f00b fda3 	bl	c0dec59a <__aeabi_memcpy>
c0de0a54:	f897 12a1 	ldrb.w	r1, [r7, #673]	@ 0x2a1
c0de0a58:	1930      	adds	r0, r6, r4
c0de0a5a:	7041      	strb	r1, [r0, #1]
c0de0a5c:	1cb1      	adds	r1, r6, #2
c0de0a5e:	4620      	mov	r0, r4
c0de0a60:	f7ff ffd6 	bl	c0de0a10 <io_send_response_pointer>
c0de0a64:	b013      	add	sp, #76	@ 0x4c
c0de0a66:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0a68:	00000000 	.word	0x00000000

c0de0a6c <transaction_deserialize>:
c0de0a6c:	b570      	push	{r4, r5, r6, lr}
c0de0a6e:	460d      	mov	r5, r1
c0de0a70:	4604      	mov	r4, r0
c0de0a72:	b910      	cbnz	r0, c0de0a7a <transaction_deserialize+0xe>
c0de0a74:	2001      	movs	r0, #1
c0de0a76:	f00a fb8b 	bl	c0deb190 <assert_exit>
c0de0a7a:	b915      	cbnz	r5, c0de0a82 <transaction_deserialize+0x16>
c0de0a7c:	2001      	movs	r0, #1
c0de0a7e:	f00a fb87 	bl	c0deb190 <assert_exit>
c0de0a82:	6860      	ldr	r0, [r4, #4]
c0de0a84:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de0a88:	d901      	bls.n	c0de0a8e <transaction_deserialize+0x22>
c0de0a8a:	20f9      	movs	r0, #249	@ 0xf9
c0de0a8c:	e04b      	b.n	c0de0b26 <transaction_deserialize+0xba>
c0de0a8e:	4620      	mov	r0, r4
c0de0a90:	4629      	mov	r1, r5
c0de0a92:	2200      	movs	r2, #0
c0de0a94:	f008 fff0 	bl	c0de9a78 <buffer_read_u64>
c0de0a98:	b330      	cbz	r0, c0de0ae8 <transaction_deserialize+0x7c>
c0de0a9a:	6820      	ldr	r0, [r4, #0]
c0de0a9c:	68a1      	ldr	r1, [r4, #8]
c0de0a9e:	4408      	add	r0, r1
c0de0aa0:	2114      	movs	r1, #20
c0de0aa2:	61a8      	str	r0, [r5, #24]
c0de0aa4:	4620      	mov	r0, r4
c0de0aa6:	f008 ffc6 	bl	c0de9a36 <buffer_seek_cur>
c0de0aaa:	b1f8      	cbz	r0, c0de0aec <transaction_deserialize+0x80>
c0de0aac:	f105 0108 	add.w	r1, r5, #8
c0de0ab0:	4620      	mov	r0, r4
c0de0ab2:	2200      	movs	r2, #0
c0de0ab4:	2600      	movs	r6, #0
c0de0ab6:	f008 ffdf 	bl	c0de9a78 <buffer_read_u64>
c0de0aba:	b1c8      	cbz	r0, c0de0af0 <transaction_deserialize+0x84>
c0de0abc:	f105 0120 	add.w	r1, r5, #32
c0de0ac0:	4620      	mov	r0, r4
c0de0ac2:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de0ac6:	f008 fff7 	bl	c0de9ab8 <buffer_read_varint>
c0de0aca:	6a29      	ldr	r1, [r5, #32]
c0de0acc:	b990      	cbnz	r0, c0de0af4 <transaction_deserialize+0x88>
c0de0ace:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de0ad0:	ea5f 0050 	movs.w	r0, r0, lsr #1
c0de0ad4:	ea4f 0231 	mov.w	r2, r1, rrx
c0de0ad8:	2300      	movs	r3, #0
c0de0ada:	f1d2 02e8 	rsbs	r2, r2, #232	@ 0xe8
c0de0ade:	eb73 0000 	sbcs.w	r0, r3, r0
c0de0ae2:	d207      	bcs.n	c0de0af4 <transaction_deserialize+0x88>
c0de0ae4:	20fc      	movs	r0, #252	@ 0xfc
c0de0ae6:	e01e      	b.n	c0de0b26 <transaction_deserialize+0xba>
c0de0ae8:	20ff      	movs	r0, #255	@ 0xff
c0de0aea:	e01c      	b.n	c0de0b26 <transaction_deserialize+0xba>
c0de0aec:	20fe      	movs	r0, #254	@ 0xfe
c0de0aee:	e01a      	b.n	c0de0b26 <transaction_deserialize+0xba>
c0de0af0:	20fd      	movs	r0, #253	@ 0xfd
c0de0af2:	e018      	b.n	c0de0b26 <transaction_deserialize+0xba>
c0de0af4:	6820      	ldr	r0, [r4, #0]
c0de0af6:	68a2      	ldr	r2, [r4, #8]
c0de0af8:	4410      	add	r0, r2
c0de0afa:	61e8      	str	r0, [r5, #28]
c0de0afc:	4620      	mov	r0, r4
c0de0afe:	f008 ff9a 	bl	c0de9a36 <buffer_seek_cur>
c0de0b02:	b168      	cbz	r0, c0de0b20 <transaction_deserialize+0xb4>
c0de0b04:	f105 031c 	add.w	r3, r5, #28
c0de0b08:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de0b0a:	f000 f80e 	bl	c0de0b2a <transaction_utils_check_encoding>
c0de0b0e:	b148      	cbz	r0, c0de0b24 <transaction_deserialize+0xb8>
c0de0b10:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de0b14:	f06f 0006 	mvn.w	r0, #6
c0de0b18:	428a      	cmp	r2, r1
c0de0b1a:	bf08      	it	eq
c0de0b1c:	2001      	moveq	r0, #1
c0de0b1e:	e002      	b.n	c0de0b26 <transaction_deserialize+0xba>
c0de0b20:	20fb      	movs	r0, #251	@ 0xfb
c0de0b22:	e000      	b.n	c0de0b26 <transaction_deserialize+0xba>
c0de0b24:	20fa      	movs	r0, #250	@ 0xfa
c0de0b26:	b240      	sxtb	r0, r0
c0de0b28:	bd70      	pop	{r4, r5, r6, pc}

c0de0b2a <transaction_utils_check_encoding>:
c0de0b2a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de0b2c:	461c      	mov	r4, r3
c0de0b2e:	4615      	mov	r5, r2
c0de0b30:	4606      	mov	r6, r0
c0de0b32:	b910      	cbnz	r0, c0de0b3a <transaction_utils_check_encoding+0x10>
c0de0b34:	2001      	movs	r0, #1
c0de0b36:	f00a fb2b 	bl	c0deb190 <assert_exit>
c0de0b3a:	2000      	movs	r0, #0
c0de0b3c:	2300      	movs	r3, #0
c0de0b3e:	4602      	mov	r2, r0
c0de0b40:	1b40      	subs	r0, r0, r5
c0de0b42:	4619      	mov	r1, r3
c0de0b44:	eb73 0004 	sbcs.w	r0, r3, r4
c0de0b48:	d206      	bcs.n	c0de0b58 <transaction_utils_check_encoding+0x2e>
c0de0b4a:	56b7      	ldrsb	r7, [r6, r2]
c0de0b4c:	1c50      	adds	r0, r2, #1
c0de0b4e:	f141 0300 	adc.w	r3, r1, #0
c0de0b52:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de0b56:	dcf2      	bgt.n	c0de0b3e <transaction_utils_check_encoding+0x14>
c0de0b58:	2000      	movs	r0, #0
c0de0b5a:	1b52      	subs	r2, r2, r5
c0de0b5c:	41a1      	sbcs	r1, r4
c0de0b5e:	bf28      	it	cs
c0de0b60:	2001      	movcs	r0, #1
c0de0b62:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de0b64 <validate_pubkey>:
c0de0b64:	b108      	cbz	r0, c0de0b6a <validate_pubkey+0x6>
c0de0b66:	f7ff bf31 	b.w	c0de09cc <helper_send_response_pubkey>
c0de0b6a:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de0b6e:	f000 b800 	b.w	c0de0b72 <io_send_sw>

c0de0b72 <io_send_sw>:
c0de0b72:	4602      	mov	r2, r0
c0de0b74:	2000      	movs	r0, #0
c0de0b76:	2100      	movs	r1, #0
c0de0b78:	f009 b9fc 	b.w	c0de9f74 <io_send_response_buffers>

c0de0b7c <validate_transaction>:
c0de0b7c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de0b80:	b08c      	sub	sp, #48	@ 0x30
c0de0b82:	b378      	cbz	r0, c0de0be4 <validate_transaction+0x68>
c0de0b84:	f8df 8094 	ldr.w	r8, [pc, #148]	@ c0de0c1c <validate_transaction+0xa0>
c0de0b88:	2002      	movs	r0, #2
c0de0b8a:	2500      	movs	r5, #0
c0de0b8c:	2720      	movs	r7, #32
c0de0b8e:	2203      	movs	r2, #3
c0de0b90:	f240 6401 	movw	r4, #1537	@ 0x601
c0de0b94:	f10d 0c2c 	add.w	ip, sp, #44	@ 0x2c
c0de0b98:	f10d 0e28 	add.w	lr, sp, #40	@ 0x28
c0de0b9c:	950b      	str	r5, [sp, #44]	@ 0x2c
c0de0b9e:	f809 0008 	strb.w	r0, [r9, r8]
c0de0ba2:	2048      	movs	r0, #72	@ 0x48
c0de0ba4:	900a      	str	r0, [sp, #40]	@ 0x28
c0de0ba6:	eb09 0008 	add.w	r0, r9, r8
c0de0baa:	f890 32d4 	ldrb.w	r3, [r0, #724]	@ 0x2d4
c0de0bae:	f500 710e 	add.w	r1, r0, #568	@ 0x238
c0de0bb2:	f500 7616 	add.w	r6, r0, #600	@ 0x258
c0de0bb6:	e9cd 4200 	strd	r4, r2, [sp]
c0de0bba:	f500 722b 	add.w	r2, r0, #684	@ 0x2ac
c0de0bbe:	2000      	movs	r0, #0
c0de0bc0:	9508      	str	r5, [sp, #32]
c0de0bc2:	e9cd c506 	strd	ip, r5, [sp, #24]
c0de0bc6:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de0bca:	2121      	movs	r1, #33	@ 0x21
c0de0bcc:	e9cd 6e04 	strd	r6, lr, [sp, #16]
c0de0bd0:	f009 f884 	bl	c0de9cdc <bip32_derive_with_seed_ecdsa_sign_hash_256>
c0de0bd4:	b188      	cbz	r0, c0de0bfa <validate_transaction+0x7e>
c0de0bd6:	f24b 0008 	movw	r0, #45064	@ 0xb008
c0de0bda:	f809 5008 	strb.w	r5, [r9, r8]
c0de0bde:	f7ff ffc8 	bl	c0de0b72 <io_send_sw>
c0de0be2:	e017      	b.n	c0de0c14 <validate_transaction+0x98>
c0de0be4:	480d      	ldr	r0, [pc, #52]	@ (c0de0c1c <validate_transaction+0xa0>)
c0de0be6:	2100      	movs	r1, #0
c0de0be8:	f809 1000 	strb.w	r1, [r9, r0]
c0de0bec:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de0bf0:	b00c      	add	sp, #48	@ 0x30
c0de0bf2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de0bf6:	f7ff bfbc 	b.w	c0de0b72 <io_send_sw>
c0de0bfa:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0bfc:	eb09 0008 	add.w	r0, r9, r8
c0de0c00:	f880 12a0 	strb.w	r1, [r0, #672]	@ 0x2a0
c0de0c04:	f89d 102c 	ldrb.w	r1, [sp, #44]	@ 0x2c
c0de0c08:	f001 0101 	and.w	r1, r1, #1
c0de0c0c:	f880 12a1 	strb.w	r1, [r0, #673]	@ 0x2a1
c0de0c10:	f7ff ff0a 	bl	c0de0a28 <helper_send_response_sig>
c0de0c14:	b00c      	add	sp, #48	@ 0x30
c0de0c16:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de0c1a:	bf00      	nop
c0de0c1c:	00000000 	.word	0x00000000

c0de0c20 <app_quit>:
c0de0c20:	20ff      	movs	r0, #255	@ 0xff
c0de0c22:	f00b fab9 	bl	c0dec198 <os_sched_exit>
	...

c0de0c28 <ui_menu_main>:
c0de0c28:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de0c2a:	4c19      	ldr	r4, [pc, #100]	@ (c0de0c90 <ui_menu_main+0x68>)
c0de0c2c:	4817      	ldr	r0, [pc, #92]	@ (c0de0c8c <ui_menu_main+0x64>)
c0de0c2e:	447c      	add	r4, pc
c0de0c30:	eb09 0500 	add.w	r5, r9, r0
c0de0c34:	f000 f8d8 	bl	c0de0de8 <OUTLINED_FUNCTION_0>
c0de0c38:	2114      	movs	r1, #20
c0de0c3a:	7369      	strb	r1, [r5, #13]
c0de0c3c:	4915      	ldr	r1, [pc, #84]	@ (c0de0c94 <ui_menu_main+0x6c>)
c0de0c3e:	4a16      	ldr	r2, [pc, #88]	@ (c0de0c98 <ui_menu_main+0x70>)
c0de0c40:	4479      	add	r1, pc
c0de0c42:	447a      	add	r2, pc
c0de0c44:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de0c48:	7800      	ldrb	r0, [r0, #0]
c0de0c4a:	7328      	strb	r0, [r5, #12]
c0de0c4c:	f000 f8cc 	bl	c0de0de8 <OUTLINED_FUNCTION_0>
c0de0c50:	2115      	movs	r1, #21
c0de0c52:	7669      	strb	r1, [r5, #25]
c0de0c54:	4911      	ldr	r1, [pc, #68]	@ (c0de0c9c <ui_menu_main+0x74>)
c0de0c56:	4a12      	ldr	r2, [pc, #72]	@ (c0de0ca0 <ui_menu_main+0x78>)
c0de0c58:	4479      	add	r1, pc
c0de0c5a:	447a      	add	r2, pc
c0de0c5c:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de0c60:	2100      	movs	r1, #0
c0de0c62:	7840      	ldrb	r0, [r0, #1]
c0de0c64:	7628      	strb	r0, [r5, #24]
c0de0c66:	480f      	ldr	r0, [pc, #60]	@ (c0de0ca4 <ui_menu_main+0x7c>)
c0de0c68:	4a0f      	ldr	r2, [pc, #60]	@ (c0de0ca8 <ui_menu_main+0x80>)
c0de0c6a:	4b10      	ldr	r3, [pc, #64]	@ (c0de0cac <ui_menu_main+0x84>)
c0de0c6c:	4478      	add	r0, pc
c0de0c6e:	447a      	add	r2, pc
c0de0c70:	447b      	add	r3, pc
c0de0c72:	e9cd 3200 	strd	r3, r2, [sp]
c0de0c76:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de0c7a:	2200      	movs	r2, #0
c0de0c7c:	23ff      	movs	r3, #255	@ 0xff
c0de0c7e:	480c      	ldr	r0, [pc, #48]	@ (c0de0cb0 <ui_menu_main+0x88>)
c0de0c80:	490c      	ldr	r1, [pc, #48]	@ (c0de0cb4 <ui_menu_main+0x8c>)
c0de0c82:	4478      	add	r0, pc
c0de0c84:	4479      	add	r1, pc
c0de0c86:	f007 fac5 	bl	c0de8214 <nbgl_useCaseHomeAndSettings>
c0de0c8a:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de0c8c:	000013d0 	.word	0x000013d0
c0de0c90:	0000d9ce 	.word	0x0000d9ce
c0de0c94:	0000bd0c 	.word	0x0000bd0c
c0de0c98:	0000be84 	.word	0x0000be84
c0de0c9c:	0000bd76 	.word	0x0000bd76
c0de0ca0:	0000bbbd 	.word	0x0000bbbd
c0de0ca4:	ffffffb1 	.word	0xffffffb1
c0de0ca8:	0000cf66 	.word	0x0000cf66
c0de0cac:	0000cf58 	.word	0x0000cf58
c0de0cb0:	0000bec5 	.word	0x0000bec5
c0de0cb4:	0000ba0f 	.word	0x0000ba0f

c0de0cb8 <controls_callback>:
c0de0cb8:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de0cba:	4c22      	ldr	r4, [pc, #136]	@ (c0de0d44 <controls_callback+0x8c>)
c0de0cbc:	2815      	cmp	r0, #21
c0de0cbe:	f809 2004 	strb.w	r2, [r9, r4]
c0de0cc2:	d011      	beq.n	c0de0ce8 <controls_callback+0x30>
c0de0cc4:	2814      	cmp	r0, #20
c0de0cc6:	d12a      	bne.n	c0de0d1e <controls_callback+0x66>
c0de0cc8:	eb09 0504 	add.w	r5, r9, r4
c0de0ccc:	4c1e      	ldr	r4, [pc, #120]	@ (c0de0d48 <controls_callback+0x90>)
c0de0cce:	447c      	add	r4, pc
c0de0cd0:	f000 f88a 	bl	c0de0de8 <OUTLINED_FUNCTION_0>
c0de0cd4:	7800      	ldrb	r0, [r0, #0]
c0de0cd6:	fab0 f080 	clz	r0, r0
c0de0cda:	0940      	lsrs	r0, r0, #5
c0de0cdc:	7328      	strb	r0, [r5, #12]
c0de0cde:	f88d 000f 	strb.w	r0, [sp, #15]
c0de0ce2:	f000 f881 	bl	c0de0de8 <OUTLINED_FUNCTION_0>
c0de0ce6:	e015      	b.n	c0de0d14 <controls_callback+0x5c>
c0de0ce8:	4818      	ldr	r0, [pc, #96]	@ (c0de0d4c <controls_callback+0x94>)
c0de0cea:	4478      	add	r0, pc
c0de0cec:	f00b f882 	bl	c0debdf4 <pic>
c0de0cf0:	7840      	ldrb	r0, [r0, #1]
c0de0cf2:	b1a8      	cbz	r0, c0de0d20 <controls_callback+0x68>
c0de0cf4:	eb09 0504 	add.w	r5, r9, r4
c0de0cf8:	4c15      	ldr	r4, [pc, #84]	@ (c0de0d50 <controls_callback+0x98>)
c0de0cfa:	447c      	add	r4, pc
c0de0cfc:	f000 f874 	bl	c0de0de8 <OUTLINED_FUNCTION_0>
c0de0d00:	7840      	ldrb	r0, [r0, #1]
c0de0d02:	fab0 f080 	clz	r0, r0
c0de0d06:	0940      	lsrs	r0, r0, #5
c0de0d08:	7628      	strb	r0, [r5, #24]
c0de0d0a:	f88d 000f 	strb.w	r0, [sp, #15]
c0de0d0e:	f000 f86b 	bl	c0de0de8 <OUTLINED_FUNCTION_0>
c0de0d12:	3001      	adds	r0, #1
c0de0d14:	f10d 010f 	add.w	r1, sp, #15
c0de0d18:	2201      	movs	r2, #1
c0de0d1a:	f00b f8ef 	bl	c0debefc <nvm_write>
c0de0d1e:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de0d20:	480c      	ldr	r0, [pc, #48]	@ (c0de0d54 <controls_callback+0x9c>)
c0de0d22:	490d      	ldr	r1, [pc, #52]	@ (c0de0d58 <controls_callback+0xa0>)
c0de0d24:	4478      	add	r0, pc
c0de0d26:	4479      	add	r1, pc
c0de0d28:	e9cd 1000 	strd	r1, r0, [sp]
c0de0d2c:	480b      	ldr	r0, [pc, #44]	@ (c0de0d5c <controls_callback+0xa4>)
c0de0d2e:	490c      	ldr	r1, [pc, #48]	@ (c0de0d60 <controls_callback+0xa8>)
c0de0d30:	4a0c      	ldr	r2, [pc, #48]	@ (c0de0d64 <controls_callback+0xac>)
c0de0d32:	4b0d      	ldr	r3, [pc, #52]	@ (c0de0d68 <controls_callback+0xb0>)
c0de0d34:	4478      	add	r0, pc
c0de0d36:	4479      	add	r1, pc
c0de0d38:	447a      	add	r2, pc
c0de0d3a:	447b      	add	r3, pc
c0de0d3c:	f007 fe78 	bl	c0de8a30 <nbgl_useCaseChoice>
c0de0d40:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de0d42:	bf00      	nop
c0de0d44:	000013d0 	.word	0x000013d0
c0de0d48:	0000d92e 	.word	0x0000d92e
c0de0d4c:	0000d912 	.word	0x0000d912
c0de0d50:	0000d902 	.word	0x0000d902
c0de0d54:	00000045 	.word	0x00000045
c0de0d58:	0000bcce 	.word	0x0000bcce
c0de0d5c:	0000bab6 	.word	0x0000bab6
c0de0d60:	0000bae1 	.word	0x0000bae1
c0de0d64:	0000bb9d 	.word	0x0000bb9d
c0de0d68:	0000bd94 	.word	0x0000bd94

c0de0d6c <review_warning_choice>:
c0de0d6c:	b5b0      	push	{r4, r5, r7, lr}
c0de0d6e:	b086      	sub	sp, #24
c0de0d70:	b1a8      	cbz	r0, c0de0d9e <review_warning_choice+0x32>
c0de0d72:	4c17      	ldr	r4, [pc, #92]	@ (c0de0dd0 <review_warning_choice+0x64>)
c0de0d74:	4815      	ldr	r0, [pc, #84]	@ (c0de0dcc <review_warning_choice+0x60>)
c0de0d76:	447c      	add	r4, pc
c0de0d78:	eb09 0500 	add.w	r5, r9, r0
c0de0d7c:	f000 f834 	bl	c0de0de8 <OUTLINED_FUNCTION_0>
c0de0d80:	7840      	ldrb	r0, [r0, #1]
c0de0d82:	fab0 f080 	clz	r0, r0
c0de0d86:	0940      	lsrs	r0, r0, #5
c0de0d88:	7628      	strb	r0, [r5, #24]
c0de0d8a:	f88d 0017 	strb.w	r0, [sp, #23]
c0de0d8e:	f000 f82b 	bl	c0de0de8 <OUTLINED_FUNCTION_0>
c0de0d92:	3001      	adds	r0, #1
c0de0d94:	f10d 0117 	add.w	r1, sp, #23
c0de0d98:	2201      	movs	r2, #1
c0de0d9a:	f00b f8af 	bl	c0debefc <nvm_write>
c0de0d9e:	480b      	ldr	r0, [pc, #44]	@ (c0de0dcc <review_warning_choice+0x60>)
c0de0da0:	2100      	movs	r1, #0
c0de0da2:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de0da6:	480b      	ldr	r0, [pc, #44]	@ (c0de0dd4 <review_warning_choice+0x68>)
c0de0da8:	4a0b      	ldr	r2, [pc, #44]	@ (c0de0dd8 <review_warning_choice+0x6c>)
c0de0daa:	4c0c      	ldr	r4, [pc, #48]	@ (c0de0ddc <review_warning_choice+0x70>)
c0de0dac:	4478      	add	r0, pc
c0de0dae:	447a      	add	r2, pc
c0de0db0:	447c      	add	r4, pc
c0de0db2:	e9cd 4200 	strd	r4, r2, [sp]
c0de0db6:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de0dba:	2200      	movs	r2, #0
c0de0dbc:	4808      	ldr	r0, [pc, #32]	@ (c0de0de0 <review_warning_choice+0x74>)
c0de0dbe:	4909      	ldr	r1, [pc, #36]	@ (c0de0de4 <review_warning_choice+0x78>)
c0de0dc0:	4478      	add	r0, pc
c0de0dc2:	4479      	add	r1, pc
c0de0dc4:	f007 fa26 	bl	c0de8214 <nbgl_useCaseHomeAndSettings>
c0de0dc8:	b006      	add	sp, #24
c0de0dca:	bdb0      	pop	{r4, r5, r7, pc}
c0de0dcc:	000013d0 	.word	0x000013d0
c0de0dd0:	0000d886 	.word	0x0000d886
c0de0dd4:	fffffe71 	.word	0xfffffe71
c0de0dd8:	0000ce26 	.word	0x0000ce26
c0de0ddc:	0000ce18 	.word	0x0000ce18
c0de0de0:	0000bd87 	.word	0x0000bd87
c0de0de4:	0000b8d1 	.word	0x0000b8d1

c0de0de8 <OUTLINED_FUNCTION_0>:
c0de0de8:	4620      	mov	r0, r4
c0de0dea:	f00b b803 	b.w	c0debdf4 <pic>
	...

c0de0df0 <ui_display_address>:
c0de0df0:	b570      	push	{r4, r5, r6, lr}
c0de0df2:	b088      	sub	sp, #32
c0de0df4:	4e22      	ldr	r6, [pc, #136]	@ (c0de0e80 <ui_display_address+0x90>)
c0de0df6:	eb09 0106 	add.w	r1, r9, r6
c0de0dfa:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de0dfe:	f891 12a8 	ldrb.w	r1, [r1, #680]	@ 0x2a8
c0de0e02:	4308      	orrs	r0, r1
c0de0e04:	d12a      	bne.n	c0de0e5c <ui_display_address+0x6c>
c0de0e06:	4d1f      	ldr	r5, [pc, #124]	@ (c0de0e84 <ui_display_address+0x94>)
c0de0e08:	212b      	movs	r1, #43	@ 0x2b
c0de0e0a:	eb09 0005 	add.w	r0, r9, r5
c0de0e0e:	f00b fbc1 	bl	c0dec594 <__aeabi_memclr>
c0de0e12:	ac03      	add	r4, sp, #12
c0de0e14:	2114      	movs	r1, #20
c0de0e16:	4620      	mov	r0, r4
c0de0e18:	f00b fbbc 	bl	c0dec594 <__aeabi_memclr>
c0de0e1c:	eb09 0006 	add.w	r0, r9, r6
c0de0e20:	4621      	mov	r1, r4
c0de0e22:	2214      	movs	r2, #20
c0de0e24:	3008      	adds	r0, #8
c0de0e26:	f7ff f8f5 	bl	c0de0014 <address_from_pubkey>
c0de0e2a:	b308      	cbz	r0, c0de0e70 <ui_display_address+0x80>
c0de0e2c:	eb09 0205 	add.w	r2, r9, r5
c0de0e30:	a803      	add	r0, sp, #12
c0de0e32:	2114      	movs	r1, #20
c0de0e34:	232b      	movs	r3, #43	@ 0x2b
c0de0e36:	f008 fffb 	bl	c0de9e30 <format_hex>
c0de0e3a:	3001      	adds	r0, #1
c0de0e3c:	d018      	beq.n	c0de0e70 <ui_display_address+0x80>
c0de0e3e:	4812      	ldr	r0, [pc, #72]	@ (c0de0e88 <ui_display_address+0x98>)
c0de0e40:	2400      	movs	r4, #0
c0de0e42:	2100      	movs	r1, #0
c0de0e44:	4478      	add	r0, pc
c0de0e46:	e9cd 4000 	strd	r4, r0, [sp]
c0de0e4a:	eb09 0005 	add.w	r0, r9, r5
c0de0e4e:	4a0f      	ldr	r2, [pc, #60]	@ (c0de0e8c <ui_display_address+0x9c>)
c0de0e50:	4b0f      	ldr	r3, [pc, #60]	@ (c0de0e90 <ui_display_address+0xa0>)
c0de0e52:	447a      	add	r2, pc
c0de0e54:	447b      	add	r3, pc
c0de0e56:	f007 fb31 	bl	c0de84bc <nbgl_useCaseAddressReview>
c0de0e5a:	e00e      	b.n	c0de0e7a <ui_display_address+0x8a>
c0de0e5c:	2000      	movs	r0, #0
c0de0e5e:	f809 0006 	strb.w	r0, [r9, r6]
c0de0e62:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de0e66:	b008      	add	sp, #32
c0de0e68:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de0e6c:	f000 b812 	b.w	c0de0e94 <io_send_sw>
c0de0e70:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de0e74:	f000 f80e 	bl	c0de0e94 <io_send_sw>
c0de0e78:	4604      	mov	r4, r0
c0de0e7a:	4620      	mov	r0, r4
c0de0e7c:	b008      	add	sp, #32
c0de0e7e:	bd70      	pop	{r4, r5, r6, pc}
c0de0e80:	00000000 	.word	0x00000000
c0de0e84:	000013ec 	.word	0x000013ec
c0de0e88:	00000059 	.word	0x00000059
c0de0e8c:	0000b9bb 	.word	0x0000b9bb
c0de0e90:	0000bce0 	.word	0x0000bce0

c0de0e94 <io_send_sw>:
c0de0e94:	4602      	mov	r2, r0
c0de0e96:	2000      	movs	r0, #0
c0de0e98:	2100      	movs	r1, #0
c0de0e9a:	f009 b86b 	b.w	c0de9f74 <io_send_response_buffers>
	...

c0de0ea0 <review_choice>:
c0de0ea0:	b510      	push	{r4, lr}
c0de0ea2:	4604      	mov	r4, r0
c0de0ea4:	f7ff fe5e 	bl	c0de0b64 <validate_pubkey>
c0de0ea8:	2007      	movs	r0, #7
c0de0eaa:	2c00      	cmp	r4, #0
c0de0eac:	bf18      	it	ne
c0de0eae:	2006      	movne	r0, #6
c0de0eb0:	4902      	ldr	r1, [pc, #8]	@ (c0de0ebc <review_choice+0x1c>)
c0de0eb2:	4479      	add	r1, pc
c0de0eb4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de0eb8:	f007 bcae 	b.w	c0de8818 <nbgl_useCaseReviewStatus>
c0de0ebc:	fffffd73 	.word	0xfffffd73

c0de0ec0 <ui_display_transaction_bs_choice>:
c0de0ec0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0ec2:	b08d      	sub	sp, #52	@ 0x34
c0de0ec4:	4f43      	ldr	r7, [pc, #268]	@ (c0de0fd4 <ui_display_transaction_bs_choice+0x114>)
c0de0ec6:	4604      	mov	r4, r0
c0de0ec8:	eb09 0007 	add.w	r0, r9, r7
c0de0ecc:	f890 02a8 	ldrb.w	r0, [r0, #680]	@ 0x2a8
c0de0ed0:	2801      	cmp	r0, #1
c0de0ed2:	d15d      	bne.n	c0de0f90 <ui_display_transaction_bs_choice+0xd0>
c0de0ed4:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de0ed8:	2801      	cmp	r0, #1
c0de0eda:	d159      	bne.n	c0de0f90 <ui_display_transaction_bs_choice+0xd0>
c0de0edc:	4e3e      	ldr	r6, [pc, #248]	@ (c0de0fd8 <ui_display_transaction_bs_choice+0x118>)
c0de0ede:	211e      	movs	r1, #30
c0de0ee0:	eb09 0006 	add.w	r0, r9, r6
c0de0ee4:	3014      	adds	r0, #20
c0de0ee6:	f00b fb55 	bl	c0dec594 <__aeabi_memclr>
c0de0eea:	ad05      	add	r5, sp, #20
c0de0eec:	211e      	movs	r1, #30
c0de0eee:	4628      	mov	r0, r5
c0de0ef0:	f00b fb50 	bl	c0dec594 <__aeabi_memclr>
c0de0ef4:	eb09 0007 	add.w	r0, r9, r7
c0de0ef8:	211e      	movs	r1, #30
c0de0efa:	e9d0 2386 	ldrd	r2, r3, [r0, #536]	@ 0x218
c0de0efe:	2003      	movs	r0, #3
c0de0f00:	9000      	str	r0, [sp, #0]
c0de0f02:	4628      	mov	r0, r5
c0de0f04:	f008 ff4d 	bl	c0de9da2 <format_fpu64>
c0de0f08:	2800      	cmp	r0, #0
c0de0f0a:	d04b      	beq.n	c0de0fa4 <ui_display_transaction_bs_choice+0xe4>
c0de0f0c:	9500      	str	r5, [sp, #0]
c0de0f0e:	eb09 0506 	add.w	r5, r9, r6
c0de0f12:	211e      	movs	r1, #30
c0de0f14:	231e      	movs	r3, #30
c0de0f16:	4a31      	ldr	r2, [pc, #196]	@ (c0de0fdc <ui_display_transaction_bs_choice+0x11c>)
c0de0f18:	f105 0014 	add.w	r0, r5, #20
c0de0f1c:	447a      	add	r2, pc
c0de0f1e:	f00a fdcf 	bl	c0debac0 <snprintf>
c0de0f22:	3554      	adds	r5, #84	@ 0x54
c0de0f24:	212b      	movs	r1, #43	@ 0x2b
c0de0f26:	4628      	mov	r0, r5
c0de0f28:	f00b fb34 	bl	c0dec594 <__aeabi_memclr>
c0de0f2c:	eb09 0007 	add.w	r0, r9, r7
c0de0f30:	2114      	movs	r1, #20
c0de0f32:	462a      	mov	r2, r5
c0de0f34:	232b      	movs	r3, #43	@ 0x2b
c0de0f36:	f8d0 0228 	ldr.w	r0, [r0, #552]	@ 0x228
c0de0f3a:	f008 ff79 	bl	c0de9e30 <format_hex>
c0de0f3e:	3001      	adds	r0, #1
c0de0f40:	d033      	beq.n	c0de0faa <ui_display_transaction_bs_choice+0xea>
c0de0f42:	4927      	ldr	r1, [pc, #156]	@ (c0de0fe0 <ui_display_transaction_bs_choice+0x120>)
c0de0f44:	eb09 0006 	add.w	r0, r9, r6
c0de0f48:	2500      	movs	r5, #0
c0de0f4a:	4602      	mov	r2, r0
c0de0f4c:	4479      	add	r1, pc
c0de0f4e:	f842 1f34 	str.w	r1, [r2, #52]!
c0de0f52:	f849 2006 	str.w	r2, [r9, r6]
c0de0f56:	2202      	movs	r2, #2
c0de0f58:	4922      	ldr	r1, [pc, #136]	@ (c0de0fe4 <ui_display_transaction_bs_choice+0x124>)
c0de0f5a:	7202      	strb	r2, [r0, #8]
c0de0f5c:	f100 0254 	add.w	r2, r0, #84	@ 0x54
c0de0f60:	7285      	strb	r5, [r0, #10]
c0de0f62:	4479      	add	r1, pc
c0de0f64:	e9c0 1211 	strd	r1, r2, [r0, #68]	@ 0x44
c0de0f68:	f100 0114 	add.w	r1, r0, #20
c0de0f6c:	6381      	str	r1, [r0, #56]	@ 0x38
c0de0f6e:	481e      	ldr	r0, [pc, #120]	@ (c0de0fe8 <ui_display_transaction_bs_choice+0x128>)
c0de0f70:	4478      	add	r0, pc
c0de0f72:	b314      	cbz	r4, c0de0fba <ui_display_transaction_bs_choice+0xfa>
c0de0f74:	e9cd 5002 	strd	r5, r0, [sp, #8]
c0de0f78:	e9cd 5500 	strd	r5, r5, [sp]
c0de0f7c:	eb09 0106 	add.w	r1, r9, r6
c0de0f80:	2000      	movs	r0, #0
c0de0f82:	4a1a      	ldr	r2, [pc, #104]	@ (c0de0fec <ui_display_transaction_bs_choice+0x12c>)
c0de0f84:	4b1a      	ldr	r3, [pc, #104]	@ (c0de0ff0 <ui_display_transaction_bs_choice+0x130>)
c0de0f86:	447a      	add	r2, pc
c0de0f88:	447b      	add	r3, pc
c0de0f8a:	f007 fa85 	bl	c0de8498 <nbgl_useCaseReviewBlindSigning>
c0de0f8e:	e011      	b.n	c0de0fb4 <ui_display_transaction_bs_choice+0xf4>
c0de0f90:	2000      	movs	r0, #0
c0de0f92:	f809 0007 	strb.w	r0, [r9, r7]
c0de0f96:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de0f9a:	b00d      	add	sp, #52	@ 0x34
c0de0f9c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de0fa0:	f000 b82c 	b.w	c0de0ffc <io_send_sw>
c0de0fa4:	f24b 0003 	movw	r0, #45059	@ 0xb003
c0de0fa8:	e001      	b.n	c0de0fae <ui_display_transaction_bs_choice+0xee>
c0de0faa:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de0fae:	f000 f825 	bl	c0de0ffc <io_send_sw>
c0de0fb2:	4605      	mov	r5, r0
c0de0fb4:	4628      	mov	r0, r5
c0de0fb6:	b00d      	add	sp, #52	@ 0x34
c0de0fb8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0fba:	9002      	str	r0, [sp, #8]
c0de0fbc:	e9cd 5500 	strd	r5, r5, [sp]
c0de0fc0:	eb09 0106 	add.w	r1, r9, r6
c0de0fc4:	2000      	movs	r0, #0
c0de0fc6:	4a0b      	ldr	r2, [pc, #44]	@ (c0de0ff4 <ui_display_transaction_bs_choice+0x134>)
c0de0fc8:	4b0b      	ldr	r3, [pc, #44]	@ (c0de0ff8 <ui_display_transaction_bs_choice+0x138>)
c0de0fca:	447a      	add	r2, pc
c0de0fcc:	447b      	add	r3, pc
c0de0fce:	f007 f9c9 	bl	c0de8364 <nbgl_useCaseReview>
c0de0fd2:	e7ef      	b.n	c0de0fb4 <ui_display_transaction_bs_choice+0xf4>
c0de0fd4:	00000000 	.word	0x00000000
c0de0fd8:	00001418 	.word	0x00001418
c0de0fdc:	0000bb94 	.word	0x0000bb94
c0de0fe0:	0000b971 	.word	0x0000b971
c0de0fe4:	0000bb57 	.word	0x0000bb57
c0de0fe8:	00000095 	.word	0x00000095
c0de0fec:	0000b887 	.word	0x0000b887
c0de0ff0:	0000b897 	.word	0x0000b897
c0de0ff4:	0000b843 	.word	0x0000b843
c0de0ff8:	0000b853 	.word	0x0000b853

c0de0ffc <io_send_sw>:
c0de0ffc:	4602      	mov	r2, r0
c0de0ffe:	2000      	movs	r0, #0
c0de1000:	2100      	movs	r1, #0
c0de1002:	f008 bfb7 	b.w	c0de9f74 <io_send_response_buffers>
	...

c0de1008 <review_choice>:
c0de1008:	b510      	push	{r4, lr}
c0de100a:	4604      	mov	r4, r0
c0de100c:	f7ff fdb6 	bl	c0de0b7c <validate_transaction>
c0de1010:	4903      	ldr	r1, [pc, #12]	@ (c0de1020 <review_choice+0x18>)
c0de1012:	f084 0001 	eor.w	r0, r4, #1
c0de1016:	4479      	add	r1, pc
c0de1018:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de101c:	f007 bbfc 	b.w	c0de8818 <nbgl_useCaseReviewStatus>
c0de1020:	fffffc0f 	.word	0xfffffc0f

c0de1024 <ui_display_blind_signed_transaction>:
c0de1024:	2001      	movs	r0, #1
c0de1026:	f7ff bf4b 	b.w	c0de0ec0 <ui_display_transaction_bs_choice>

c0de102a <ui_display_transaction>:
c0de102a:	2000      	movs	r0, #0
c0de102c:	f7ff bf48 	b.w	c0de0ec0 <ui_display_transaction_bs_choice>

c0de1030 <pqcrystals_dilithium_fips202_ref_shake128_init>:
c0de1030:	b510      	push	{r4, lr}
c0de1032:	4604      	mov	r4, r0
c0de1034:	f000 f804 	bl	c0de1040 <keccak_init>
c0de1038:	2000      	movs	r0, #0
c0de103a:	f8c4 00c8 	str.w	r0, [r4, #200]	@ 0xc8
c0de103e:	bd10      	pop	{r4, pc}

c0de1040 <keccak_init>:
c0de1040:	2100      	movs	r1, #0
c0de1042:	2200      	movs	r2, #0
c0de1044:	2ac8      	cmp	r2, #200	@ 0xc8
c0de1046:	bf08      	it	eq
c0de1048:	4770      	bxeq	lr
c0de104a:	1883      	adds	r3, r0, r2
c0de104c:	5081      	str	r1, [r0, r2]
c0de104e:	3208      	adds	r2, #8
c0de1050:	6059      	str	r1, [r3, #4]
c0de1052:	e7f7      	b.n	c0de1044 <keccak_init+0x4>

c0de1054 <pqcrystals_dilithium_fips202_ref_shake128_absorb>:
c0de1054:	b51c      	push	{r2, r3, r4, lr}
c0de1056:	460b      	mov	r3, r1
c0de1058:	f8d0 10c8 	ldr.w	r1, [r0, #200]	@ 0xc8
c0de105c:	9200      	str	r2, [sp, #0]
c0de105e:	22a8      	movs	r2, #168	@ 0xa8
c0de1060:	4604      	mov	r4, r0
c0de1062:	f000 f802 	bl	c0de106a <keccak_absorb>
c0de1066:	f001 b8f3 	b.w	c0de2250 <OUTLINED_FUNCTION_3>

c0de106a <keccak_absorb>:
c0de106a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de106e:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de1072:	461c      	mov	r4, r3
c0de1074:	4693      	mov	fp, r2
c0de1076:	468a      	mov	sl, r1
c0de1078:	4606      	mov	r6, r0
c0de107a:	eb08 050a 	add.w	r5, r8, sl
c0de107e:	455d      	cmp	r5, fp
c0de1080:	d31b      	bcc.n	c0de10ba <keccak_absorb+0x50>
c0de1082:	ea4f 05ca 	mov.w	r5, sl, lsl #3
c0de1086:	4657      	mov	r7, sl
c0de1088:	455f      	cmp	r7, fp
c0de108a:	d20d      	bcs.n	c0de10a8 <keccak_absorb+0x3e>
c0de108c:	f814 0b01 	ldrb.w	r0, [r4], #1
c0de1090:	f005 0238 	and.w	r2, r5, #56	@ 0x38
c0de1094:	2100      	movs	r1, #0
c0de1096:	f00b f8e3 	bl	c0dec260 <__aeabi_llsl>
c0de109a:	f027 0207 	bic.w	r2, r7, #7
c0de109e:	3508      	adds	r5, #8
c0de10a0:	3701      	adds	r7, #1
c0de10a2:	f001 f8c5 	bl	c0de2230 <OUTLINED_FUNCTION_0>
c0de10a6:	e7ef      	b.n	c0de1088 <keccak_absorb+0x1e>
c0de10a8:	4630      	mov	r0, r6
c0de10aa:	f000 f963 	bl	c0de1374 <KeccakF1600_StatePermute>
c0de10ae:	ebaa 000b 	sub.w	r0, sl, fp
c0de10b2:	f04f 0a00 	mov.w	sl, #0
c0de10b6:	4480      	add	r8, r0
c0de10b8:	e7df      	b.n	c0de107a <keccak_absorb+0x10>
c0de10ba:	ea4f 07ca 	mov.w	r7, sl, lsl #3
c0de10be:	45aa      	cmp	sl, r5
c0de10c0:	d20e      	bcs.n	c0de10e0 <keccak_absorb+0x76>
c0de10c2:	f814 0b01 	ldrb.w	r0, [r4], #1
c0de10c6:	f007 0238 	and.w	r2, r7, #56	@ 0x38
c0de10ca:	2100      	movs	r1, #0
c0de10cc:	f00b f8c8 	bl	c0dec260 <__aeabi_llsl>
c0de10d0:	f02a 0207 	bic.w	r2, sl, #7
c0de10d4:	3708      	adds	r7, #8
c0de10d6:	f10a 0a01 	add.w	sl, sl, #1
c0de10da:	f001 f8a9 	bl	c0de2230 <OUTLINED_FUNCTION_0>
c0de10de:	e7ee      	b.n	c0de10be <keccak_absorb+0x54>
c0de10e0:	4650      	mov	r0, sl
c0de10e2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de10e6 <pqcrystals_dilithium_fips202_ref_shake128_finalize>:
c0de10e6:	b5b0      	push	{r4, r5, r7, lr}
c0de10e8:	f8d0 10c8 	ldr.w	r1, [r0, #200]	@ 0xc8
c0de10ec:	22a8      	movs	r2, #168	@ 0xa8
c0de10ee:	4604      	mov	r4, r0
c0de10f0:	25a8      	movs	r5, #168	@ 0xa8
c0de10f2:	f000 f803 	bl	c0de10fc <keccak_finalize>
c0de10f6:	f8c4 50c8 	str.w	r5, [r4, #200]	@ 0xc8
c0de10fa:	bdb0      	pop	{r4, r5, r7, pc}

c0de10fc <keccak_finalize>:
c0de10fc:	b570      	push	{r4, r5, r6, lr}
c0de10fe:	4606      	mov	r6, r0
c0de1100:	2038      	movs	r0, #56	@ 0x38
c0de1102:	4614      	mov	r4, r2
c0de1104:	460d      	mov	r5, r1
c0de1106:	ea00 02c1 	and.w	r2, r0, r1, lsl #3
c0de110a:	201f      	movs	r0, #31
c0de110c:	2100      	movs	r1, #0
c0de110e:	f00b f8a7 	bl	c0dec260 <__aeabi_llsl>
c0de1112:	f025 0207 	bic.w	r2, r5, #7
c0de1116:	f001 f88b 	bl	c0de2230 <OUTLINED_FUNCTION_0>
c0de111a:	f024 0007 	bic.w	r0, r4, #7
c0de111e:	4430      	add	r0, r6
c0de1120:	f850 1c04 	ldr.w	r1, [r0, #-4]
c0de1124:	f081 4100 	eor.w	r1, r1, #2147483648	@ 0x80000000
c0de1128:	f840 1c04 	str.w	r1, [r0, #-4]
c0de112c:	bd70      	pop	{r4, r5, r6, pc}

c0de112e <pqcrystals_dilithium_fips202_ref_shake128_squeeze>:
c0de112e:	b51c      	push	{r2, r3, r4, lr}
c0de1130:	4614      	mov	r4, r2
c0de1132:	f8d2 30c8 	ldr.w	r3, [r2, #200]	@ 0xc8
c0de1136:	22a8      	movs	r2, #168	@ 0xa8
c0de1138:	9200      	str	r2, [sp, #0]
c0de113a:	4622      	mov	r2, r4
c0de113c:	f000 f802 	bl	c0de1144 <keccak_squeeze>
c0de1140:	f001 b886 	b.w	c0de2250 <OUTLINED_FUNCTION_3>

c0de1144 <keccak_squeeze>:
c0de1144:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1148:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de114c:	461f      	mov	r7, r3
c0de114e:	4693      	mov	fp, r2
c0de1150:	460d      	mov	r5, r1
c0de1152:	4606      	mov	r6, r0
c0de1154:	b1e5      	cbz	r5, c0de1190 <keccak_squeeze+0x4c>
c0de1156:	4547      	cmp	r7, r8
c0de1158:	d103      	bne.n	c0de1162 <keccak_squeeze+0x1e>
c0de115a:	4658      	mov	r0, fp
c0de115c:	f000 f90a 	bl	c0de1374 <KeccakF1600_StatePermute>
c0de1160:	2700      	movs	r7, #0
c0de1162:	eb07 0a05 	add.w	sl, r7, r5
c0de1166:	00fc      	lsls	r4, r7, #3
c0de1168:	4547      	cmp	r7, r8
c0de116a:	d2f3      	bcs.n	c0de1154 <keccak_squeeze+0x10>
c0de116c:	45ba      	cmp	sl, r7
c0de116e:	d9f1      	bls.n	c0de1154 <keccak_squeeze+0x10>
c0de1170:	f027 0107 	bic.w	r1, r7, #7
c0de1174:	f004 0238 	and.w	r2, r4, #56	@ 0x38
c0de1178:	f85b 0001 	ldr.w	r0, [fp, r1]
c0de117c:	4459      	add	r1, fp
c0de117e:	6849      	ldr	r1, [r1, #4]
c0de1180:	f00b f862 	bl	c0dec248 <__aeabi_llsr>
c0de1184:	f806 0b01 	strb.w	r0, [r6], #1
c0de1188:	3408      	adds	r4, #8
c0de118a:	3d01      	subs	r5, #1
c0de118c:	3701      	adds	r7, #1
c0de118e:	e7eb      	b.n	c0de1168 <keccak_squeeze+0x24>
c0de1190:	4638      	mov	r0, r7
c0de1192:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de1196 <keccak_absorb_once>:
c0de1196:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de119a:	4688      	mov	r8, r1
c0de119c:	4604      	mov	r4, r0
c0de119e:	461f      	mov	r7, r3
c0de11a0:	2000      	movs	r0, #0
c0de11a2:	2100      	movs	r1, #0
c0de11a4:	9202      	str	r2, [sp, #8]
c0de11a6:	29c8      	cmp	r1, #200	@ 0xc8
c0de11a8:	d004      	beq.n	c0de11b4 <keccak_absorb_once+0x1e>
c0de11aa:	1862      	adds	r2, r4, r1
c0de11ac:	5060      	str	r0, [r4, r1]
c0de11ae:	3108      	adds	r1, #8
c0de11b0:	6050      	str	r0, [r2, #4]
c0de11b2:	e7f8      	b.n	c0de11a6 <keccak_absorb_once+0x10>
c0de11b4:	ea4f 00d8 	mov.w	r0, r8, lsr #3
c0de11b8:	f8cd 8000 	str.w	r8, [sp]
c0de11bc:	9003      	str	r0, [sp, #12]
c0de11be:	4547      	cmp	r7, r8
c0de11c0:	d335      	bcc.n	c0de122e <keccak_absorb_once+0x98>
c0de11c2:	9e02      	ldr	r6, [sp, #8]
c0de11c4:	f04f 0800 	mov.w	r8, #0
c0de11c8:	9701      	str	r7, [sp, #4]
c0de11ca:	9803      	ldr	r0, [sp, #12]
c0de11cc:	4580      	cmp	r8, r0
c0de11ce:	d023      	beq.n	c0de1218 <keccak_absorb_once+0x82>
c0de11d0:	2500      	movs	r5, #0
c0de11d2:	4637      	mov	r7, r6
c0de11d4:	f04f 0a00 	mov.w	sl, #0
c0de11d8:	f04f 0b00 	mov.w	fp, #0
c0de11dc:	2d40      	cmp	r5, #64	@ 0x40
c0de11de:	d00b      	beq.n	c0de11f8 <keccak_absorb_once+0x62>
c0de11e0:	f817 0b01 	ldrb.w	r0, [r7], #1
c0de11e4:	2100      	movs	r1, #0
c0de11e6:	462a      	mov	r2, r5
c0de11e8:	f00b f83a 	bl	c0dec260 <__aeabi_llsl>
c0de11ec:	ea4b 0b01 	orr.w	fp, fp, r1
c0de11f0:	ea4a 0a00 	orr.w	sl, sl, r0
c0de11f4:	3508      	adds	r5, #8
c0de11f6:	e7f1      	b.n	c0de11dc <keccak_absorb_once+0x46>
c0de11f8:	f854 0038 	ldr.w	r0, [r4, r8, lsl #3]
c0de11fc:	3608      	adds	r6, #8
c0de11fe:	ea80 000a 	eor.w	r0, r0, sl
c0de1202:	f844 0038 	str.w	r0, [r4, r8, lsl #3]
c0de1206:	eb04 00c8 	add.w	r0, r4, r8, lsl #3
c0de120a:	f108 0801 	add.w	r8, r8, #1
c0de120e:	6841      	ldr	r1, [r0, #4]
c0de1210:	ea81 010b 	eor.w	r1, r1, fp
c0de1214:	6041      	str	r1, [r0, #4]
c0de1216:	e7d8      	b.n	c0de11ca <keccak_absorb_once+0x34>
c0de1218:	4620      	mov	r0, r4
c0de121a:	f000 f8ab 	bl	c0de1374 <KeccakF1600_StatePermute>
c0de121e:	e9dd 8700 	ldrd	r8, r7, [sp]
c0de1222:	9802      	ldr	r0, [sp, #8]
c0de1224:	4440      	add	r0, r8
c0de1226:	eba7 0708 	sub.w	r7, r7, r8
c0de122a:	9002      	str	r0, [sp, #8]
c0de122c:	e7c7      	b.n	c0de11be <keccak_absorb_once+0x28>
c0de122e:	2500      	movs	r5, #0
c0de1230:	2600      	movs	r6, #0
c0de1232:	42b7      	cmp	r7, r6
c0de1234:	d00d      	beq.n	c0de1252 <keccak_absorb_once+0xbc>
c0de1236:	9802      	ldr	r0, [sp, #8]
c0de1238:	f005 0238 	and.w	r2, r5, #56	@ 0x38
c0de123c:	2100      	movs	r1, #0
c0de123e:	5d80      	ldrb	r0, [r0, r6]
c0de1240:	f00b f80e 	bl	c0dec260 <__aeabi_llsl>
c0de1244:	f026 0207 	bic.w	r2, r6, #7
c0de1248:	3508      	adds	r5, #8
c0de124a:	3601      	adds	r6, #1
c0de124c:	f000 fff8 	bl	c0de2240 <OUTLINED_FUNCTION_2>
c0de1250:	e7ef      	b.n	c0de1232 <keccak_absorb_once+0x9c>
c0de1252:	2038      	movs	r0, #56	@ 0x38
c0de1254:	2100      	movs	r1, #0
c0de1256:	ea00 02c7 	and.w	r2, r0, r7, lsl #3
c0de125a:	980c      	ldr	r0, [sp, #48]	@ 0x30
c0de125c:	f00b f800 	bl	c0dec260 <__aeabi_llsl>
c0de1260:	f027 0207 	bic.w	r2, r7, #7
c0de1264:	f000 ffec 	bl	c0de2240 <OUTLINED_FUNCTION_2>
c0de1268:	f1a8 0001 	sub.w	r0, r8, #1
c0de126c:	f020 0007 	bic.w	r0, r0, #7
c0de1270:	4420      	add	r0, r4
c0de1272:	6841      	ldr	r1, [r0, #4]
c0de1274:	f081 4100 	eor.w	r1, r1, #2147483648	@ 0x80000000
c0de1278:	6041      	str	r1, [r0, #4]
c0de127a:	e8bd 8dff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de127e <pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks>:
c0de127e:	23a8      	movs	r3, #168	@ 0xa8
c0de1280:	f000 b800 	b.w	c0de1284 <keccak_squeezeblocks>

c0de1284 <keccak_squeezeblocks>:
c0de1284:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1288:	4698      	mov	r8, r3
c0de128a:	4615      	mov	r5, r2
c0de128c:	468b      	mov	fp, r1
c0de128e:	4607      	mov	r7, r0
c0de1290:	ea4f 0ad3 	mov.w	sl, r3, lsr #3
c0de1294:	f1bb 0f00 	cmp.w	fp, #0
c0de1298:	bf08      	it	eq
c0de129a:	e8bd 8df0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de129e:	4628      	mov	r0, r5
c0de12a0:	f000 f868 	bl	c0de1374 <KeccakF1600_StatePermute>
c0de12a4:	2400      	movs	r4, #0
c0de12a6:	4656      	mov	r6, sl
c0de12a8:	b146      	cbz	r6, c0de12bc <keccak_squeezeblocks+0x38>
c0de12aa:	1929      	adds	r1, r5, r4
c0de12ac:	592a      	ldr	r2, [r5, r4]
c0de12ae:	1938      	adds	r0, r7, r4
c0de12b0:	684b      	ldr	r3, [r1, #4]
c0de12b2:	f000 ffac 	bl	c0de220e <store64>
c0de12b6:	3408      	adds	r4, #8
c0de12b8:	3e01      	subs	r6, #1
c0de12ba:	e7f5      	b.n	c0de12a8 <keccak_squeezeblocks+0x24>
c0de12bc:	4447      	add	r7, r8
c0de12be:	f1ab 0b01 	sub.w	fp, fp, #1
c0de12c2:	e7e7      	b.n	c0de1294 <keccak_squeezeblocks+0x10>

c0de12c4 <pqcrystals_dilithium_fips202_ref_shake256_init>:
c0de12c4:	b510      	push	{r4, lr}
c0de12c6:	4604      	mov	r4, r0
c0de12c8:	f7ff feba 	bl	c0de1040 <keccak_init>
c0de12cc:	2000      	movs	r0, #0
c0de12ce:	f8c4 00c8 	str.w	r0, [r4, #200]	@ 0xc8
c0de12d2:	bd10      	pop	{r4, pc}

c0de12d4 <pqcrystals_dilithium_fips202_ref_shake256_absorb>:
c0de12d4:	b51c      	push	{r2, r3, r4, lr}
c0de12d6:	460b      	mov	r3, r1
c0de12d8:	f8d0 10c8 	ldr.w	r1, [r0, #200]	@ 0xc8
c0de12dc:	9200      	str	r2, [sp, #0]
c0de12de:	2288      	movs	r2, #136	@ 0x88
c0de12e0:	4604      	mov	r4, r0
c0de12e2:	f7ff fec2 	bl	c0de106a <keccak_absorb>
c0de12e6:	f000 bfb3 	b.w	c0de2250 <OUTLINED_FUNCTION_3>

c0de12ea <pqcrystals_dilithium_fips202_ref_shake256_finalize>:
c0de12ea:	b5b0      	push	{r4, r5, r7, lr}
c0de12ec:	f8d0 10c8 	ldr.w	r1, [r0, #200]	@ 0xc8
c0de12f0:	2288      	movs	r2, #136	@ 0x88
c0de12f2:	4604      	mov	r4, r0
c0de12f4:	2588      	movs	r5, #136	@ 0x88
c0de12f6:	f7ff ff01 	bl	c0de10fc <keccak_finalize>
c0de12fa:	f8c4 50c8 	str.w	r5, [r4, #200]	@ 0xc8
c0de12fe:	bdb0      	pop	{r4, r5, r7, pc}

c0de1300 <pqcrystals_dilithium_fips202_ref_shake256_squeeze>:
c0de1300:	b51c      	push	{r2, r3, r4, lr}
c0de1302:	4614      	mov	r4, r2
c0de1304:	f8d2 30c8 	ldr.w	r3, [r2, #200]	@ 0xc8
c0de1308:	2288      	movs	r2, #136	@ 0x88
c0de130a:	9200      	str	r2, [sp, #0]
c0de130c:	4622      	mov	r2, r4
c0de130e:	f7ff ff19 	bl	c0de1144 <keccak_squeeze>
c0de1312:	f000 bf9d 	b.w	c0de2250 <OUTLINED_FUNCTION_3>

c0de1316 <pqcrystals_dilithium_fips202_ref_shake256_absorb_once>:
c0de1316:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de1318:	4604      	mov	r4, r0
c0de131a:	201f      	movs	r0, #31
c0de131c:	4613      	mov	r3, r2
c0de131e:	460a      	mov	r2, r1
c0de1320:	2188      	movs	r1, #136	@ 0x88
c0de1322:	2588      	movs	r5, #136	@ 0x88
c0de1324:	9000      	str	r0, [sp, #0]
c0de1326:	4620      	mov	r0, r4
c0de1328:	f7ff ff35 	bl	c0de1196 <keccak_absorb_once>
c0de132c:	f8c4 50c8 	str.w	r5, [r4, #200]	@ 0xc8
c0de1330:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de1332 <pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks>:
c0de1332:	2388      	movs	r3, #136	@ 0x88
c0de1334:	f7ff bfa6 	b.w	c0de1284 <keccak_squeezeblocks>

c0de1338 <pqcrystals_dilithium_fips202_ref_shake256>:
c0de1338:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de133a:	b0b5      	sub	sp, #212	@ 0xd4
c0de133c:	466e      	mov	r6, sp
c0de133e:	460c      	mov	r4, r1
c0de1340:	4605      	mov	r5, r0
c0de1342:	4611      	mov	r1, r2
c0de1344:	461a      	mov	r2, r3
c0de1346:	4630      	mov	r0, r6
c0de1348:	f7ff ffe5 	bl	c0de1316 <pqcrystals_dilithium_fips202_ref_shake256_absorb_once>
c0de134c:	2088      	movs	r0, #136	@ 0x88
c0de134e:	4632      	mov	r2, r6
c0de1350:	fbb4 f7f0 	udiv	r7, r4, r0
c0de1354:	4628      	mov	r0, r5
c0de1356:	4639      	mov	r1, r7
c0de1358:	f7ff ffeb 	bl	c0de1332 <pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks>
c0de135c:	eb07 1107 	add.w	r1, r7, r7, lsl #4
c0de1360:	4632      	mov	r2, r6
c0de1362:	eb05 00c1 	add.w	r0, r5, r1, lsl #3
c0de1366:	eba4 01c1 	sub.w	r1, r4, r1, lsl #3
c0de136a:	f7ff ffc9 	bl	c0de1300 <pqcrystals_dilithium_fips202_ref_shake256_squeeze>
c0de136e:	b035      	add	sp, #212	@ 0xd4
c0de1370:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

c0de1374 <KeccakF1600_StatePermute>:
c0de1374:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1378:	b0de      	sub	sp, #376	@ 0x178
c0de137a:	e9d0 2130 	ldrd	r2, r1, [r0, #192]	@ 0xc0
c0de137e:	9000      	str	r0, [sp, #0]
c0de1380:	9156      	str	r1, [sp, #344]	@ 0x158
c0de1382:	f8d0 10a0 	ldr.w	r1, [r0, #160]	@ 0xa0
c0de1386:	9253      	str	r2, [sp, #332]	@ 0x14c
c0de1388:	e9d0 2302 	ldrd	r2, r3, [r0, #8]
c0de138c:	912a      	str	r1, [sp, #168]	@ 0xa8
c0de138e:	f8d0 10a4 	ldr.w	r1, [r0, #164]	@ 0xa4
c0de1392:	912c      	str	r1, [sp, #176]	@ 0xb0
c0de1394:	f8d0 10a8 	ldr.w	r1, [r0, #168]	@ 0xa8
c0de1398:	9148      	str	r1, [sp, #288]	@ 0x120
c0de139a:	f8d0 10ac 	ldr.w	r1, [r0, #172]	@ 0xac
c0de139e:	914f      	str	r1, [sp, #316]	@ 0x13c
c0de13a0:	f8d0 10b0 	ldr.w	r1, [r0, #176]	@ 0xb0
c0de13a4:	9143      	str	r1, [sp, #268]	@ 0x10c
c0de13a6:	f8d0 10b4 	ldr.w	r1, [r0, #180]	@ 0xb4
c0de13aa:	914d      	str	r1, [sp, #308]	@ 0x134
c0de13ac:	f8d0 10b8 	ldr.w	r1, [r0, #184]	@ 0xb8
c0de13b0:	9151      	str	r1, [sp, #324]	@ 0x144
c0de13b2:	f8d0 10bc 	ldr.w	r1, [r0, #188]	@ 0xbc
c0de13b6:	9154      	str	r1, [sp, #336]	@ 0x150
c0de13b8:	f8d0 1080 	ldr.w	r1, [r0, #128]	@ 0x80
c0de13bc:	9136      	str	r1, [sp, #216]	@ 0xd8
c0de13be:	f8d0 1084 	ldr.w	r1, [r0, #132]	@ 0x84
c0de13c2:	913e      	str	r1, [sp, #248]	@ 0xf8
c0de13c4:	f8d0 1088 	ldr.w	r1, [r0, #136]	@ 0x88
c0de13c8:	9142      	str	r1, [sp, #264]	@ 0x108
c0de13ca:	f8d0 108c 	ldr.w	r1, [r0, #140]	@ 0x8c
c0de13ce:	914a      	str	r1, [sp, #296]	@ 0x128
c0de13d0:	f8d0 1090 	ldr.w	r1, [r0, #144]	@ 0x90
c0de13d4:	913f      	str	r1, [sp, #252]	@ 0xfc
c0de13d6:	f8d0 1094 	ldr.w	r1, [r0, #148]	@ 0x94
c0de13da:	9147      	str	r1, [sp, #284]	@ 0x11c
c0de13dc:	f8d0 1098 	ldr.w	r1, [r0, #152]	@ 0x98
c0de13e0:	9134      	str	r1, [sp, #208]	@ 0xd0
c0de13e2:	f8d0 109c 	ldr.w	r1, [r0, #156]	@ 0x9c
c0de13e6:	913a      	str	r1, [sp, #232]	@ 0xe8
c0de13e8:	6e01      	ldr	r1, [r0, #96]	@ 0x60
c0de13ea:	9141      	str	r1, [sp, #260]	@ 0x104
c0de13ec:	6e41      	ldr	r1, [r0, #100]	@ 0x64
c0de13ee:	9149      	str	r1, [sp, #292]	@ 0x124
c0de13f0:	6e81      	ldr	r1, [r0, #104]	@ 0x68
c0de13f2:	914e      	str	r1, [sp, #312]	@ 0x138
c0de13f4:	6ec1      	ldr	r1, [r0, #108]	@ 0x6c
c0de13f6:	9152      	str	r1, [sp, #328]	@ 0x148
c0de13f8:	6f01      	ldr	r1, [r0, #112]	@ 0x70
c0de13fa:	9150      	str	r1, [sp, #320]	@ 0x140
c0de13fc:	6f41      	ldr	r1, [r0, #116]	@ 0x74
c0de13fe:	9155      	str	r1, [sp, #340]	@ 0x154
c0de1400:	6f81      	ldr	r1, [r0, #120]	@ 0x78
c0de1402:	9135      	str	r1, [sp, #212]	@ 0xd4
c0de1404:	6fc1      	ldr	r1, [r0, #124]	@ 0x7c
c0de1406:	913c      	str	r1, [sp, #240]	@ 0xf0
c0de1408:	6c01      	ldr	r1, [r0, #64]	@ 0x40
c0de140a:	9145      	str	r1, [sp, #276]	@ 0x114
c0de140c:	6c41      	ldr	r1, [r0, #68]	@ 0x44
c0de140e:	914c      	str	r1, [sp, #304]	@ 0x130
c0de1410:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de1412:	9139      	str	r1, [sp, #228]	@ 0xe4
c0de1414:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de1416:	913b      	str	r1, [sp, #236]	@ 0xec
c0de1418:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de141a:	9140      	str	r1, [sp, #256]	@ 0x100
c0de141c:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de141e:	9146      	str	r1, [sp, #280]	@ 0x118
c0de1420:	6d81      	ldr	r1, [r0, #88]	@ 0x58
c0de1422:	9144      	str	r1, [sp, #272]	@ 0x110
c0de1424:	6dc1      	ldr	r1, [r0, #92]	@ 0x5c
c0de1426:	914b      	str	r1, [sp, #300]	@ 0x12c
c0de1428:	6a01      	ldr	r1, [r0, #32]
c0de142a:	9158      	str	r1, [sp, #352]	@ 0x160
c0de142c:	e9d0 e109 	ldrd	lr, r1, [r0, #36]	@ 0x24
c0de1430:	9133      	str	r1, [sp, #204]	@ 0xcc
c0de1432:	6ac1      	ldr	r1, [r0, #44]	@ 0x2c
c0de1434:	913d      	str	r1, [sp, #244]	@ 0xf4
c0de1436:	6b01      	ldr	r1, [r0, #48]	@ 0x30
c0de1438:	9131      	str	r1, [sp, #196]	@ 0xc4
c0de143a:	6b41      	ldr	r1, [r0, #52]	@ 0x34
c0de143c:	9132      	str	r1, [sp, #200]	@ 0xc8
c0de143e:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de1440:	9137      	str	r1, [sp, #220]	@ 0xdc
c0de1442:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
c0de1444:	9138      	str	r1, [sp, #224]	@ 0xe0
c0de1446:	6801      	ldr	r1, [r0, #0]
c0de1448:	915a      	str	r1, [sp, #360]	@ 0x168
c0de144a:	6841      	ldr	r1, [r0, #4]
c0de144c:	915b      	str	r1, [sp, #364]	@ 0x16c
c0de144e:	6901      	ldr	r1, [r0, #16]
c0de1450:	9159      	str	r1, [sp, #356]	@ 0x164
c0de1452:	6941      	ldr	r1, [r0, #20]
c0de1454:	915c      	str	r1, [sp, #368]	@ 0x170
c0de1456:	6981      	ldr	r1, [r0, #24]
c0de1458:	69c0      	ldr	r0, [r0, #28]
c0de145a:	912e      	str	r1, [sp, #184]	@ 0xb8
c0de145c:	9030      	str	r0, [sp, #192]	@ 0xc0
c0de145e:	4803      	ldr	r0, [pc, #12]	@ (c0de146c <KeccakF1600_StatePermute+0xf8>)
c0de1460:	4478      	add	r0, pc
c0de1462:	3008      	adds	r0, #8
c0de1464:	905d      	str	r0, [sp, #372]	@ 0x174
c0de1466:	2000      	movs	r0, #0
c0de1468:	e002      	b.n	c0de1470 <KeccakF1600_StatePermute+0xfc>
c0de146a:	bf00      	nop
c0de146c:	0000c7cc 	.word	0x0000c7cc
c0de1470:	2817      	cmp	r0, #23
c0de1472:	f200 8654 	bhi.w	c0de211e <KeccakF1600_StatePermute+0xdaa>
c0de1476:	9027      	str	r0, [sp, #156]	@ 0x9c
c0de1478:	9848      	ldr	r0, [sp, #288]	@ 0x120
c0de147a:	9936      	ldr	r1, [sp, #216]	@ 0xd8
c0de147c:	469a      	mov	sl, r3
c0de147e:	9257      	str	r2, [sp, #348]	@ 0x15c
c0de1480:	f8cd e098 	str.w	lr, [sp, #152]	@ 0x98
c0de1484:	4048      	eors	r0, r1
c0de1486:	9944      	ldr	r1, [sp, #272]	@ 0x110
c0de1488:	4048      	eors	r0, r1
c0de148a:	9931      	ldr	r1, [sp, #196]	@ 0xc4
c0de148c:	4048      	eors	r0, r1
c0de148e:	993e      	ldr	r1, [sp, #248]	@ 0xf8
c0de1490:	ea80 0402 	eor.w	r4, r0, r2
c0de1494:	984f      	ldr	r0, [sp, #316]	@ 0x13c
c0de1496:	9423      	str	r4, [sp, #140]	@ 0x8c
c0de1498:	4048      	eors	r0, r1
c0de149a:	994b      	ldr	r1, [sp, #300]	@ 0x12c
c0de149c:	4048      	eors	r0, r1
c0de149e:	9932      	ldr	r1, [sp, #200]	@ 0xc8
c0de14a0:	4048      	eors	r0, r1
c0de14a2:	993a      	ldr	r1, [sp, #232]	@ 0xe8
c0de14a4:	4058      	eors	r0, r3
c0de14a6:	0043      	lsls	r3, r0, #1
c0de14a8:	4606      	mov	r6, r0
c0de14aa:	9028      	str	r0, [sp, #160]	@ 0xa0
c0de14ac:	9856      	ldr	r0, [sp, #344]	@ 0x158
c0de14ae:	ea43 75d4 	orr.w	r5, r3, r4, lsr #31
c0de14b2:	ea81 0300 	eor.w	r3, r1, r0
c0de14b6:	9855      	ldr	r0, [sp, #340]	@ 0x154
c0de14b8:	4043      	eors	r3, r0
c0de14ba:	983b      	ldr	r0, [sp, #236]	@ 0xec
c0de14bc:	4043      	eors	r3, r0
c0de14be:	982c      	ldr	r0, [sp, #176]	@ 0xb0
c0de14c0:	ea83 0b0e 	eor.w	fp, r3, lr
c0de14c4:	9b34      	ldr	r3, [sp, #208]	@ 0xd0
c0de14c6:	ea85 010b 	eor.w	r1, r5, fp
c0de14ca:	0065      	lsls	r5, r4, #1
c0de14cc:	ea81 0200 	eor.w	r2, r1, r0
c0de14d0:	912f      	str	r1, [sp, #188]	@ 0xbc
c0de14d2:	9953      	ldr	r1, [sp, #332]	@ 0x14c
c0de14d4:	ea45 76d6 	orr.w	r6, r5, r6, lsr #31
c0de14d8:	9222      	str	r2, [sp, #136]	@ 0x88
c0de14da:	ea83 0501 	eor.w	r5, r3, r1
c0de14de:	9950      	ldr	r1, [sp, #320]	@ 0x140
c0de14e0:	9b2a      	ldr	r3, [sp, #168]	@ 0xa8
c0de14e2:	404d      	eors	r5, r1
c0de14e4:	9939      	ldr	r1, [sp, #228]	@ 0xe4
c0de14e6:	404d      	eors	r5, r1
c0de14e8:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de14ea:	ea85 0801 	eor.w	r8, r5, r1
c0de14ee:	ea86 0108 	eor.w	r1, r6, r8
c0de14f2:	ea81 0403 	eor.w	r4, r1, r3
c0de14f6:	912b      	str	r1, [sp, #172]	@ 0xac
c0de14f8:	04a6      	lsls	r6, r4, #18
c0de14fa:	9425      	str	r4, [sp, #148]	@ 0x94
c0de14fc:	ea46 3c92 	orr.w	ip, r6, r2, lsr #14
c0de1500:	e9dd 1242 	ldrd	r1, r2, [sp, #264]	@ 0x108
c0de1504:	f8cd c070 	str.w	ip, [sp, #112]	@ 0x70
c0de1508:	ea81 0602 	eor.w	r6, r1, r2
c0de150c:	9941      	ldr	r1, [sp, #260]	@ 0x104
c0de150e:	9a4d      	ldr	r2, [sp, #308]	@ 0x134
c0de1510:	404e      	eors	r6, r1
c0de1512:	9937      	ldr	r1, [sp, #220]	@ 0xdc
c0de1514:	404e      	eors	r6, r1
c0de1516:	9959      	ldr	r1, [sp, #356]	@ 0x164
c0de1518:	ea86 0e01 	eor.w	lr, r6, r1
c0de151c:	994a      	ldr	r1, [sp, #296]	@ 0x128
c0de151e:	9e30      	ldr	r6, [sp, #192]	@ 0xc0
c0de1520:	ea81 0702 	eor.w	r7, r1, r2
c0de1524:	9949      	ldr	r1, [sp, #292]	@ 0x124
c0de1526:	404f      	eors	r7, r1
c0de1528:	9938      	ldr	r1, [sp, #224]	@ 0xe0
c0de152a:	404f      	eors	r7, r1
c0de152c:	995c      	ldr	r1, [sp, #368]	@ 0x170
c0de152e:	404f      	eors	r7, r1
c0de1530:	993c      	ldr	r1, [sp, #240]	@ 0xf0
c0de1532:	007c      	lsls	r4, r7, #1
c0de1534:	ea81 0200 	eor.w	r2, r1, r0
c0de1538:	9846      	ldr	r0, [sp, #280]	@ 0x118
c0de153a:	ea44 74de 	orr.w	r4, r4, lr, lsr #31
c0de153e:	4042      	eors	r2, r0
c0de1540:	983d      	ldr	r0, [sp, #244]	@ 0xf4
c0de1542:	4042      	eors	r2, r0
c0de1544:	985b      	ldr	r0, [sp, #364]	@ 0x16c
c0de1546:	ea82 0100 	eor.w	r1, r2, r0
c0de154a:	ea4f 024e 	mov.w	r2, lr, lsl #1
c0de154e:	ea81 0004 	eor.w	r0, r1, r4
c0de1552:	ea42 72d7 	orr.w	r2, r2, r7, lsr #31
c0de1556:	ea80 050a 	eor.w	r5, r0, sl
c0de155a:	902d      	str	r0, [sp, #180]	@ 0xb4
c0de155c:	9835      	ldr	r0, [sp, #212]	@ 0xd4
c0de155e:	9520      	str	r5, [sp, #128]	@ 0x80
c0de1560:	ea80 0403 	eor.w	r4, r0, r3
c0de1564:	9840      	ldr	r0, [sp, #256]	@ 0x100
c0de1566:	4044      	eors	r4, r0
c0de1568:	9833      	ldr	r0, [sp, #204]	@ 0xcc
c0de156a:	4044      	eors	r4, r0
c0de156c:	985a      	ldr	r0, [sp, #360]	@ 0x168
c0de156e:	4044      	eors	r4, r0
c0de1570:	9857      	ldr	r0, [sp, #348]	@ 0x15c
c0de1572:	ea84 0a02 	eor.w	sl, r4, r2
c0de1576:	ea80 000a 	eor.w	r0, r0, sl
c0de157a:	f8cd a064 	str.w	sl, [sp, #100]	@ 0x64
c0de157e:	0042      	lsls	r2, r0, #1
c0de1580:	9021      	str	r0, [sp, #132]	@ 0x84
c0de1582:	9854      	ldr	r0, [sp, #336]	@ 0x150
c0de1584:	ea42 72d5 	orr.w	r2, r2, r5, lsr #31
c0de1588:	9257      	str	r2, [sp, #348]	@ 0x15c
c0de158a:	ea22 0c0c 	bic.w	ip, r2, ip
c0de158e:	004a      	lsls	r2, r1, #1
c0de1590:	ea42 73d4 	orr.w	r3, r2, r4, lsr #31
c0de1594:	9a47      	ldr	r2, [sp, #284]	@ 0x11c
c0de1596:	4042      	eors	r2, r0
c0de1598:	9852      	ldr	r0, [sp, #328]	@ 0x148
c0de159a:	4042      	eors	r2, r0
c0de159c:	984c      	ldr	r0, [sp, #304]	@ 0x130
c0de159e:	4042      	eors	r2, r0
c0de15a0:	ea82 0506 	eor.w	r5, r2, r6
c0de15a4:	9a3a      	ldr	r2, [sp, #232]	@ 0xe8
c0de15a6:	ea83 0005 	eor.w	r0, r3, r5
c0de15aa:	0063      	lsls	r3, r4, #1
c0de15ac:	9c2e      	ldr	r4, [sp, #184]	@ 0xb8
c0de15ae:	4042      	eors	r2, r0
c0de15b0:	902a      	str	r0, [sp, #168]	@ 0xa8
c0de15b2:	ea43 70d1 	orr.w	r0, r3, r1, lsr #31
c0de15b6:	9951      	ldr	r1, [sp, #324]	@ 0x144
c0de15b8:	9b3f      	ldr	r3, [sp, #252]	@ 0xfc
c0de15ba:	9212      	str	r2, [sp, #72]	@ 0x48
c0de15bc:	404b      	eors	r3, r1
c0de15be:	994e      	ldr	r1, [sp, #312]	@ 0x138
c0de15c0:	404b      	eors	r3, r1
c0de15c2:	9945      	ldr	r1, [sp, #276]	@ 0x114
c0de15c4:	404b      	eors	r3, r1
c0de15c6:	4063      	eors	r3, r4
c0de15c8:	ea80 0103 	eor.w	r1, r0, r3
c0de15cc:	9834      	ldr	r0, [sp, #208]	@ 0xd0
c0de15ce:	9129      	str	r1, [sp, #164]	@ 0xa4
c0de15d0:	4048      	eors	r0, r1
c0de15d2:	901d      	str	r0, [sp, #116]	@ 0x74
c0de15d4:	0200      	lsls	r0, r0, #8
c0de15d6:	ea40 6012 	orr.w	r0, r0, r2, lsr #24
c0de15da:	ea8c 0c00 	eor.w	ip, ip, r0
c0de15de:	9034      	str	r0, [sp, #208]	@ 0xd0
c0de15e0:	ea4f 004b 	mov.w	r0, fp, lsl #1
c0de15e4:	ea40 70d8 	orr.w	r0, r0, r8, lsr #31
c0de15e8:	f8cd c090 	str.w	ip, [sp, #144]	@ 0x90
c0de15ec:	4078      	eors	r0, r7
c0de15ee:	ea80 0106 	eor.w	r1, r0, r6
c0de15f2:	902c      	str	r0, [sp, #176]	@ 0xb0
c0de15f4:	ea4f 0048 	mov.w	r0, r8, lsl #1
c0de15f8:	ea40 70db 	orr.w	r0, r0, fp, lsr #31
c0de15fc:	9130      	str	r1, [sp, #192]	@ 0xc0
c0de15fe:	ea80 000e 	eor.w	r0, r0, lr
c0de1602:	ea80 0204 	eor.w	r2, r0, r4
c0de1606:	4604      	mov	r4, r0
c0de1608:	0710      	lsls	r0, r2, #28
c0de160a:	922e      	str	r2, [sp, #184]	@ 0xb8
c0de160c:	9a23      	ldr	r2, [sp, #140]	@ 0x8c
c0de160e:	9413      	str	r4, [sp, #76]	@ 0x4c
c0de1610:	ea40 1111 	orr.w	r1, r0, r1, lsr #4
c0de1614:	0058      	lsls	r0, r3, #1
c0de1616:	ea40 70d5 	orr.w	r0, r0, r5, lsr #31
c0de161a:	913a      	str	r1, [sp, #232]	@ 0xe8
c0de161c:	ea82 0800 	eor.w	r8, r2, r0
c0de1620:	9a43      	ldr	r2, [sp, #268]	@ 0x10c
c0de1622:	0068      	lsls	r0, r5, #1
c0de1624:	ea40 70d3 	orr.w	r0, r0, r3, lsr #31
c0de1628:	9b2b      	ldr	r3, [sp, #172]	@ 0xac
c0de162a:	f8cd 802c 	str.w	r8, [sp, #44]	@ 0x2c
c0de162e:	ea88 0602 	eor.w	r6, r8, r2
c0de1632:	9a28      	ldr	r2, [sp, #160]	@ 0xa0
c0de1634:	9616      	str	r6, [sp, #88]	@ 0x58
c0de1636:	ea82 0e00 	eor.w	lr, r2, r0
c0de163a:	9a4d      	ldr	r2, [sp, #308]	@ 0x134
c0de163c:	f8cd e0a0 	str.w	lr, [sp, #160]	@ 0xa0
c0de1640:	ea82 020e 	eor.w	r2, r2, lr
c0de1644:	0750      	lsls	r0, r2, #29
c0de1646:	9214      	str	r2, [sp, #80]	@ 0x50
c0de1648:	9a2d      	ldr	r2, [sp, #180]	@ 0xb4
c0de164a:	ea40 00d6 	orr.w	r0, r0, r6, lsr #3
c0de164e:	901a      	str	r0, [sp, #104]	@ 0x68
c0de1650:	ea21 0000 	bic.w	r0, r1, r0
c0de1654:	9936      	ldr	r1, [sp, #216]	@ 0xd8
c0de1656:	ea8a 0501 	eor.w	r5, sl, r1
c0de165a:	993e      	ldr	r1, [sp, #248]	@ 0xf8
c0de165c:	950d      	str	r5, [sp, #52]	@ 0x34
c0de165e:	4051      	eors	r1, r2
c0de1660:	9117      	str	r1, [sp, #92]	@ 0x5c
c0de1662:	0349      	lsls	r1, r1, #13
c0de1664:	ea41 41d5 	orr.w	r1, r1, r5, lsr #19
c0de1668:	4048      	eors	r0, r1
c0de166a:	9143      	str	r1, [sp, #268]	@ 0x10c
c0de166c:	994f      	ldr	r1, [sp, #316]	@ 0x13c
c0de166e:	901b      	str	r0, [sp, #108]	@ 0x6c
c0de1670:	ea80 000c 	eor.w	r0, r0, ip
c0de1674:	404a      	eors	r2, r1
c0de1676:	9948      	ldr	r1, [sp, #288]	@ 0x120
c0de1678:	9211      	str	r2, [sp, #68]	@ 0x44
c0de167a:	ea81 010a 	eor.w	r1, r1, sl
c0de167e:	9148      	str	r1, [sp, #288]	@ 0x120
c0de1680:	0089      	lsls	r1, r1, #2
c0de1682:	ea41 7292 	orr.w	r2, r1, r2, lsr #30
c0de1686:	9959      	ldr	r1, [sp, #356]	@ 0x164
c0de1688:	923e      	str	r2, [sp, #248]	@ 0xf8
c0de168a:	ea88 0501 	eor.w	r5, r8, r1
c0de168e:	995c      	ldr	r1, [sp, #368]	@ 0x170
c0de1690:	9510      	str	r5, [sp, #64]	@ 0x40
c0de1692:	ea81 010e 	eor.w	r1, r1, lr
c0de1696:	915c      	str	r1, [sp, #368]	@ 0x170
c0de1698:	0789      	lsls	r1, r1, #30
c0de169a:	ea41 0195 	orr.w	r1, r1, r5, lsr #2
c0de169e:	9d3c      	ldr	r5, [sp, #240]	@ 0xf0
c0de16a0:	914f      	str	r1, [sp, #316]	@ 0x13c
c0de16a2:	4391      	bics	r1, r2
c0de16a4:	9a35      	ldr	r2, [sp, #212]	@ 0xd4
c0de16a6:	ea83 0602 	eor.w	r6, r3, r2
c0de16aa:	9a2f      	ldr	r2, [sp, #188]	@ 0xbc
c0de16ac:	960f      	str	r6, [sp, #60]	@ 0x3c
c0de16ae:	406a      	eors	r2, r5
c0de16b0:	920e      	str	r2, [sp, #56]	@ 0x38
c0de16b2:	0252      	lsls	r2, r2, #9
c0de16b4:	ea42 52d6 	orr.w	r2, r2, r6, lsr #23
c0de16b8:	9e2c      	ldr	r6, [sp, #176]	@ 0xb0
c0de16ba:	4051      	eors	r1, r2
c0de16bc:	9236      	str	r2, [sp, #216]	@ 0xd8
c0de16be:	ea80 0c01 	eor.w	ip, r0, r1
c0de16c2:	911f      	str	r1, [sp, #124]	@ 0x7c
c0de16c4:	993f      	ldr	r1, [sp, #252]	@ 0xfc
c0de16c6:	9847      	ldr	r0, [sp, #284]	@ 0x11c
c0de16c8:	4061      	eors	r1, r4
c0de16ca:	ea86 0200 	eor.w	r2, r6, r0
c0de16ce:	4620      	mov	r0, r4
c0de16d0:	9c29      	ldr	r4, [sp, #164]	@ 0xa4
c0de16d2:	910c      	str	r1, [sp, #48]	@ 0x30
c0de16d4:	0549      	lsls	r1, r1, #21
c0de16d6:	9247      	str	r2, [sp, #284]	@ 0x11c
c0de16d8:	ea41 25d2 	orr.w	r5, r1, r2, lsr #11
c0de16dc:	9a2a      	ldr	r2, [sp, #168]	@ 0xa8
c0de16de:	9956      	ldr	r1, [sp, #344]	@ 0x158
c0de16e0:	9518      	str	r5, [sp, #96]	@ 0x60
c0de16e2:	ea82 0b01 	eor.w	fp, r2, r1
c0de16e6:	9953      	ldr	r1, [sp, #332]	@ 0x14c
c0de16e8:	4061      	eors	r1, r4
c0de16ea:	910a      	str	r1, [sp, #40]	@ 0x28
c0de16ec:	0389      	lsls	r1, r1, #14
c0de16ee:	ea41 479b 	orr.w	r7, r1, fp, lsr #18
c0de16f2:	995a      	ldr	r1, [sp, #360]	@ 0x168
c0de16f4:	971e      	str	r7, [sp, #120]	@ 0x78
c0de16f6:	4059      	eors	r1, r3
c0de16f8:	9156      	str	r1, [sp, #344]	@ 0x158
c0de16fa:	43b9      	bics	r1, r7
c0de16fc:	9f21      	ldr	r7, [sp, #132]	@ 0x84
c0de16fe:	4069      	eors	r1, r5
c0de1700:	9123      	str	r1, [sp, #140]	@ 0x8c
c0de1702:	ea8c 0301 	eor.w	r3, ip, r1
c0de1706:	9926      	ldr	r1, [sp, #152]	@ 0x98
c0de1708:	ea82 0a01 	eor.w	sl, r2, r1
c0de170c:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de170e:	4061      	eors	r1, r4
c0de1710:	915a      	str	r1, [sp, #360]	@ 0x168
c0de1712:	06c9      	lsls	r1, r1, #27
c0de1714:	ea41 155a 	orr.w	r5, r1, sl, lsr #5
c0de1718:	9951      	ldr	r1, [sp, #324]	@ 0x144
c0de171a:	9535      	str	r5, [sp, #212]	@ 0xd4
c0de171c:	ea80 0401 	eor.w	r4, r0, r1
c0de1720:	9854      	ldr	r0, [sp, #336]	@ 0x150
c0de1722:	ea86 0100 	eor.w	r1, r6, r0
c0de1726:	9e2e      	ldr	r6, [sp, #184]	@ 0xb8
c0de1728:	060a      	lsls	r2, r1, #24
c0de172a:	ea42 2014 	orr.w	r0, r2, r4, lsr #8
c0de172e:	9a4a      	ldr	r2, [sp, #296]	@ 0x128
c0de1730:	9015      	str	r0, [sp, #84]	@ 0x54
c0de1732:	ea25 0000 	bic.w	r0, r5, r0
c0de1736:	9d42      	ldr	r5, [sp, #264]	@ 0x108
c0de1738:	ea82 020e 	eor.w	r2, r2, lr
c0de173c:	f8dd e0a4 	ldr.w	lr, [sp, #164]	@ 0xa4
c0de1740:	ea85 0508 	eor.w	r5, r5, r8
c0de1744:	ea4f 3cc5 	mov.w	ip, r5, lsl #15
c0de1748:	ea4c 4c52 	orr.w	ip, ip, r2, lsr #17
c0de174c:	03d2      	lsls	r2, r2, #15
c0de174e:	ea80 000c 	eor.w	r0, r0, ip
c0de1752:	f8cd c164 	str.w	ip, [sp, #356]	@ 0x164
c0de1756:	ea42 4255 	orr.w	r2, r2, r5, lsr #17
c0de175a:	9d19      	ldr	r5, [sp, #100]	@ 0x64
c0de175c:	ea83 0c00 	eor.w	ip, r3, r0
c0de1760:	9026      	str	r0, [sp, #152]	@ 0x98
c0de1762:	9816      	ldr	r0, [sp, #88]	@ 0x58
c0de1764:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de1766:	f8cd c134 	str.w	ip, [sp, #308]	@ 0x134
c0de176a:	0740      	lsls	r0, r0, #29
c0de176c:	ea40 03d3 	orr.w	r3, r0, r3, lsr #3
c0de1770:	9830      	ldr	r0, [sp, #192]	@ 0xc0
c0de1772:	9316      	str	r3, [sp, #88]	@ 0x58
c0de1774:	0700      	lsls	r0, r0, #28
c0de1776:	ea40 1016 	orr.w	r0, r0, r6, lsr #4
c0de177a:	9e17      	ldr	r6, [sp, #92]	@ 0x5c
c0de177c:	9058      	str	r0, [sp, #352]	@ 0x160
c0de177e:	4398      	bics	r0, r3
c0de1780:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
c0de1782:	035b      	lsls	r3, r3, #13
c0de1784:	ea43 43d6 	orr.w	r3, r3, r6, lsr #19
c0de1788:	ea83 0600 	eor.w	r6, r3, r0
c0de178c:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de178e:	933c      	str	r3, [sp, #240]	@ 0xf0
c0de1790:	9b25      	ldr	r3, [sp, #148]	@ 0x94
c0de1792:	9617      	str	r6, [sp, #92]	@ 0x5c
c0de1794:	0480      	lsls	r0, r0, #18
c0de1796:	ea40 3393 	orr.w	r3, r0, r3, lsr #14
c0de179a:	9820      	ldr	r0, [sp, #128]	@ 0x80
c0de179c:	9314      	str	r3, [sp, #80]	@ 0x50
c0de179e:	0040      	lsls	r0, r0, #1
c0de17a0:	ea40 70d7 	orr.w	r0, r0, r7, lsr #31
c0de17a4:	9f1d      	ldr	r7, [sp, #116]	@ 0x74
c0de17a6:	9054      	str	r0, [sp, #336]	@ 0x150
c0de17a8:	4398      	bics	r0, r3
c0de17aa:	9b12      	ldr	r3, [sp, #72]	@ 0x48
c0de17ac:	021b      	lsls	r3, r3, #8
c0de17ae:	ea43 6317 	orr.w	r3, r3, r7, lsr #24
c0de17b2:	4058      	eors	r0, r3
c0de17b4:	933f      	str	r3, [sp, #252]	@ 0xfc
c0de17b6:	9021      	str	r0, [sp, #132]	@ 0x84
c0de17b8:	ea80 0806 	eor.w	r8, r0, r6
c0de17bc:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de17be:	0783      	lsls	r3, r0, #30
c0de17c0:	985c      	ldr	r0, [sp, #368]	@ 0x170
c0de17c2:	ea43 0690 	orr.w	r6, r3, r0, lsr #2
c0de17c6:	9811      	ldr	r0, [sp, #68]	@ 0x44
c0de17c8:	9653      	str	r6, [sp, #332]	@ 0x14c
c0de17ca:	0083      	lsls	r3, r0, #2
c0de17cc:	9848      	ldr	r0, [sp, #288]	@ 0x120
c0de17ce:	ea43 7090 	orr.w	r0, r3, r0, lsr #30
c0de17d2:	9012      	str	r0, [sp, #72]	@ 0x48
c0de17d4:	ea26 0300 	bic.w	r3, r6, r0
c0de17d8:	980f      	ldr	r0, [sp, #60]	@ 0x3c
c0de17da:	0246      	lsls	r6, r0, #9
c0de17dc:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de17de:	920e      	str	r2, [sp, #56]	@ 0x38
c0de17e0:	ea46 50d0 	orr.w	r0, r6, r0, lsr #23
c0de17e4:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de17e6:	4043      	eors	r3, r0
c0de17e8:	9030      	str	r0, [sp, #192]	@ 0xc0
c0de17ea:	ea88 0003 	eor.w	r0, r8, r3
c0de17ee:	931d      	str	r3, [sp, #116]	@ 0x74
c0de17f0:	9b47      	ldr	r3, [sp, #284]	@ 0x11c
c0de17f2:	f8dd 80bc 	ldr.w	r8, [sp, #188]	@ 0xbc
c0de17f6:	055b      	lsls	r3, r3, #21
c0de17f8:	ea43 27d6 	orr.w	r7, r3, r6, lsr #11
c0de17fc:	9e0a      	ldr	r6, [sp, #40]	@ 0x28
c0de17fe:	ea4f 338b 	mov.w	r3, fp, lsl #14
c0de1802:	4693      	mov	fp, r2
c0de1804:	970d      	str	r7, [sp, #52]	@ 0x34
c0de1806:	ea43 4696 	orr.w	r6, r3, r6, lsr #18
c0de180a:	9b5b      	ldr	r3, [sp, #364]	@ 0x16c
c0de180c:	962e      	str	r6, [sp, #184]	@ 0xb8
c0de180e:	ea83 0308 	eor.w	r3, r3, r8
c0de1812:	9351      	str	r3, [sp, #324]	@ 0x144
c0de1814:	43b3      	bics	r3, r6
c0de1816:	407b      	eors	r3, r7
c0de1818:	9320      	str	r3, [sp, #128]	@ 0x80
c0de181a:	4058      	eors	r0, r3
c0de181c:	0623      	lsls	r3, r4, #24
c0de181e:	9c5a      	ldr	r4, [sp, #360]	@ 0x168
c0de1820:	ea43 2311 	orr.w	r3, r3, r1, lsr #8
c0de1824:	ea4f 61ca 	mov.w	r1, sl, lsl #27
c0de1828:	f8dd a02c 	ldr.w	sl, [sp, #44]	@ 0x2c
c0de182c:	ea41 1154 	orr.w	r1, r1, r4, lsr #5
c0de1830:	935b      	str	r3, [sp, #364]	@ 0x16c
c0de1832:	9c2b      	ldr	r4, [sp, #172]	@ 0xac
c0de1834:	9148      	str	r1, [sp, #288]	@ 0x120
c0de1836:	4399      	bics	r1, r3
c0de1838:	4051      	eors	r1, r2
c0de183a:	4048      	eors	r0, r1
c0de183c:	9125      	str	r1, [sp, #148]	@ 0x94
c0de183e:	9928      	ldr	r1, [sp, #160]	@ 0xa0
c0de1840:	904a      	str	r0, [sp, #296]	@ 0x128
c0de1842:	0040      	lsls	r0, r0, #1
c0de1844:	ea40 70dc 	orr.w	r0, r0, ip, lsr #31
c0de1848:	f8dd c0a8 	ldr.w	ip, [sp, #168]	@ 0xa8
c0de184c:	905c      	str	r0, [sp, #368]	@ 0x170
c0de184e:	9849      	ldr	r0, [sp, #292]	@ 0x124
c0de1850:	4041      	eors	r1, r0
c0de1852:	9841      	ldr	r0, [sp, #260]	@ 0x104
c0de1854:	915a      	str	r1, [sp, #360]	@ 0x168
c0de1856:	ea80 000a 	eor.w	r0, r0, sl
c0de185a:	9011      	str	r0, [sp, #68]	@ 0x44
c0de185c:	02c0      	lsls	r0, r0, #11
c0de185e:	ea40 5051 	orr.w	r0, r0, r1, lsr #21
c0de1862:	9932      	ldr	r1, [sp, #200]	@ 0xc8
c0de1864:	9049      	str	r0, [sp, #292]	@ 0x124
c0de1866:	ea27 0000 	bic.w	r0, r7, r0
c0de186a:	9f2d      	ldr	r7, [sp, #180]	@ 0xb4
c0de186c:	ea87 0201 	eor.w	r2, r7, r1
c0de1870:	9931      	ldr	r1, [sp, #196]	@ 0xc4
c0de1872:	9232      	str	r2, [sp, #200]	@ 0xc8
c0de1874:	4069      	eors	r1, r5
c0de1876:	9110      	str	r1, [sp, #64]	@ 0x40
c0de1878:	0309      	lsls	r1, r1, #12
c0de187a:	ea41 5112 	orr.w	r1, r1, r2, lsr #20
c0de187e:	ea81 0300 	eor.w	r3, r1, r0
c0de1882:	9840      	ldr	r0, [sp, #256]	@ 0x100
c0de1884:	9147      	str	r1, [sp, #284]	@ 0x11c
c0de1886:	9341      	str	r3, [sp, #260]	@ 0x104
c0de1888:	ea84 0100 	eor.w	r1, r4, r0
c0de188c:	9846      	ldr	r0, [sp, #280]	@ 0x118
c0de188e:	910f      	str	r1, [sp, #60]	@ 0x3c
c0de1890:	ea80 0008 	eor.w	r0, r0, r8
c0de1894:	900c      	str	r0, [sp, #48]	@ 0x30
c0de1896:	00c0      	lsls	r0, r0, #3
c0de1898:	ea40 7051 	orr.w	r0, r0, r1, lsr #29
c0de189c:	993c      	ldr	r1, [sp, #240]	@ 0xf0
c0de189e:	9046      	str	r0, [sp, #280]	@ 0x118
c0de18a0:	ea21 0600 	bic.w	r6, r1, r0
c0de18a4:	9939      	ldr	r1, [sp, #228]	@ 0xe4
c0de18a6:	ea8e 0201 	eor.w	r2, lr, r1
c0de18aa:	993b      	ldr	r1, [sp, #236]	@ 0xec
c0de18ac:	9239      	str	r2, [sp, #228]	@ 0xe4
c0de18ae:	ea8c 0001 	eor.w	r0, ip, r1
c0de18b2:	0501      	lsls	r1, r0, #20
c0de18b4:	903b      	str	r0, [sp, #236]	@ 0xec
c0de18b6:	ea41 3112 	orr.w	r1, r1, r2, lsr #12
c0de18ba:	ea81 0006 	eor.w	r0, r1, r6
c0de18be:	9142      	str	r1, [sp, #264]	@ 0x108
c0de18c0:	9944      	ldr	r1, [sp, #272]	@ 0x110
c0de18c2:	9e49      	ldr	r6, [sp, #292]	@ 0x124
c0de18c4:	9022      	str	r0, [sp, #136]	@ 0x88
c0de18c6:	4058      	eors	r0, r3
c0de18c8:	ea85 0201 	eor.w	r2, r5, r1
c0de18cc:	994b      	ldr	r1, [sp, #300]	@ 0x12c
c0de18ce:	9219      	str	r2, [sp, #100]	@ 0x64
c0de18d0:	4079      	eors	r1, r7
c0de18d2:	9f2c      	ldr	r7, [sp, #176]	@ 0xb0
c0de18d4:	9109      	str	r1, [sp, #36]	@ 0x24
c0de18d6:	0289      	lsls	r1, r1, #10
c0de18d8:	ea41 5192 	orr.w	r1, r1, r2, lsr #22
c0de18dc:	9a3d      	ldr	r2, [sp, #244]	@ 0xf4
c0de18de:	914b      	str	r1, [sp, #300]	@ 0x12c
c0de18e0:	ea2b 0101 	bic.w	r1, fp, r1
c0de18e4:	ea88 0302 	eor.w	r3, r8, r2
c0de18e8:	9a33      	ldr	r2, [sp, #204]	@ 0xcc
c0de18ea:	9308      	str	r3, [sp, #32]
c0de18ec:	4062      	eors	r2, r4
c0de18ee:	9c28      	ldr	r4, [sp, #160]	@ 0xa0
c0de18f0:	9233      	str	r2, [sp, #204]	@ 0xcc
c0de18f2:	0112      	lsls	r2, r2, #4
c0de18f4:	ea42 7213 	orr.w	r2, r2, r3, lsr #28
c0de18f8:	9b13      	ldr	r3, [sp, #76]	@ 0x4c
c0de18fa:	4051      	eors	r1, r2
c0de18fc:	9244      	str	r2, [sp, #272]	@ 0x110
c0de18fe:	913d      	str	r1, [sp, #244]	@ 0xf4
c0de1900:	4048      	eors	r0, r1
c0de1902:	994e      	ldr	r1, [sp, #312]	@ 0x138
c0de1904:	ea83 0201 	eor.w	r2, r3, r1
c0de1908:	9952      	ldr	r1, [sp, #328]	@ 0x148
c0de190a:	9206      	str	r2, [sp, #24]
c0de190c:	4079      	eors	r1, r7
c0de190e:	9105      	str	r1, [sp, #20]
c0de1910:	0649      	lsls	r1, r1, #25
c0de1912:	ea41 12d2 	orr.w	r2, r1, r2, lsr #7
c0de1916:	993f      	ldr	r1, [sp, #252]	@ 0xfc
c0de1918:	924e      	str	r2, [sp, #312]	@ 0x138
c0de191a:	4391      	bics	r1, r2
c0de191c:	9a37      	ldr	r2, [sp, #220]	@ 0xdc
c0de191e:	ea8a 0502 	eor.w	r5, sl, r2
c0de1922:	9a38      	ldr	r2, [sp, #224]	@ 0xe0
c0de1924:	9537      	str	r5, [sp, #220]	@ 0xdc
c0de1926:	4062      	eors	r2, r4
c0de1928:	9228      	str	r2, [sp, #160]	@ 0xa0
c0de192a:	0192      	lsls	r2, r2, #6
c0de192c:	ea42 6295 	orr.w	r2, r2, r5, lsr #26
c0de1930:	9d28      	ldr	r5, [sp, #160]	@ 0xa0
c0de1932:	4051      	eors	r1, r2
c0de1934:	9252      	str	r2, [sp, #328]	@ 0x148
c0de1936:	ea80 0201 	eor.w	r2, r0, r1
c0de193a:	9855      	ldr	r0, [sp, #340]	@ 0x154
c0de193c:	9140      	str	r1, [sp, #256]	@ 0x100
c0de193e:	ea8c 0400 	eor.w	r4, ip, r0
c0de1942:	9850      	ldr	r0, [sp, #320]	@ 0x140
c0de1944:	940b      	str	r4, [sp, #44]	@ 0x2c
c0de1946:	ea80 000e 	eor.w	r0, r0, lr
c0de194a:	01c1      	lsls	r1, r0, #7
c0de194c:	902a      	str	r0, [sp, #168]	@ 0xa8
c0de194e:	9830      	ldr	r0, [sp, #192]	@ 0xc0
c0de1950:	ea41 6154 	orr.w	r1, r1, r4, lsr #25
c0de1954:	9c10      	ldr	r4, [sp, #64]	@ 0x40
c0de1956:	9155      	str	r1, [sp, #340]	@ 0x154
c0de1958:	4388      	bics	r0, r1
c0de195a:	994c      	ldr	r1, [sp, #304]	@ 0x130
c0de195c:	ea87 0e01 	eor.w	lr, r7, r1
c0de1960:	9945      	ldr	r1, [sp, #276]	@ 0x114
c0de1962:	9f33      	ldr	r7, [sp, #204]	@ 0xcc
c0de1964:	ea83 0b01 	eor.w	fp, r3, r1
c0de1968:	ea4f 5acb 	mov.w	sl, fp, lsl #23
c0de196c:	ea4a 215e 	orr.w	r1, sl, lr, lsr #9
c0de1970:	4048      	eors	r0, r1
c0de1972:	9150      	str	r1, [sp, #320]	@ 0x140
c0de1974:	995c      	ldr	r1, [sp, #368]	@ 0x170
c0de1976:	902c      	str	r0, [sp, #176]	@ 0xb0
c0de1978:	4050      	eors	r0, r2
c0de197a:	ea81 0200 	eor.w	r2, r1, r0
c0de197e:	902d      	str	r0, [sp, #180]	@ 0xb4
c0de1980:	982e      	ldr	r0, [sp, #184]	@ 0xb8
c0de1982:	990d      	ldr	r1, [sp, #52]	@ 0x34
c0de1984:	925c      	str	r2, [sp, #368]	@ 0x170
c0de1986:	4388      	bics	r0, r1
c0de1988:	9911      	ldr	r1, [sp, #68]	@ 0x44
c0de198a:	4070      	eors	r0, r6
c0de198c:	9e09      	ldr	r6, [sp, #36]	@ 0x24
c0de198e:	ea82 0a00 	eor.w	sl, r2, r0
c0de1992:	9031      	str	r0, [sp, #196]	@ 0xc4
c0de1994:	984d      	ldr	r0, [sp, #308]	@ 0x134
c0de1996:	9a4a      	ldr	r2, [sp, #296]	@ 0x128
c0de1998:	f8cd a034 	str.w	sl, [sp, #52]	@ 0x34
c0de199c:	0040      	lsls	r0, r0, #1
c0de199e:	ea40 70d2 	orr.w	r0, r0, r2, lsr #31
c0de19a2:	9a32      	ldr	r2, [sp, #200]	@ 0xc8
c0de19a4:	904c      	str	r0, [sp, #304]	@ 0x130
c0de19a6:	985a      	ldr	r0, [sp, #360]	@ 0x168
c0de19a8:	0312      	lsls	r2, r2, #12
c0de19aa:	02c0      	lsls	r0, r0, #11
c0de19ac:	ea42 5c14 	orr.w	ip, r2, r4, lsr #20
c0de19b0:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
c0de19b2:	9c3b      	ldr	r4, [sp, #236]	@ 0xec
c0de19b4:	ea40 5351 	orr.w	r3, r0, r1, lsr #21
c0de19b8:	9918      	ldr	r1, [sp, #96]	@ 0x60
c0de19ba:	f8cd c01c 	str.w	ip, [sp, #28]
c0de19be:	930a      	str	r3, [sp, #40]	@ 0x28
c0de19c0:	ea21 0003 	bic.w	r0, r1, r3
c0de19c4:	ea8c 0800 	eor.w	r8, ip, r0
c0de19c8:	980f      	ldr	r0, [sp, #60]	@ 0x3c
c0de19ca:	f8cd 80e0 	str.w	r8, [sp, #224]	@ 0xe0
c0de19ce:	00c0      	lsls	r0, r0, #3
c0de19d0:	ea40 7252 	orr.w	r2, r0, r2, lsr #29
c0de19d4:	9843      	ldr	r0, [sp, #268]	@ 0x10c
c0de19d6:	922f      	str	r2, [sp, #188]	@ 0xbc
c0de19d8:	4390      	bics	r0, r2
c0de19da:	9a39      	ldr	r2, [sp, #228]	@ 0xe4
c0de19dc:	0512      	lsls	r2, r2, #20
c0de19de:	ea42 3414 	orr.w	r4, r2, r4, lsr #12
c0de19e2:	9a19      	ldr	r2, [sp, #100]	@ 0x64
c0de19e4:	4060      	eors	r0, r4
c0de19e6:	9404      	str	r4, [sp, #16]
c0de19e8:	0292      	lsls	r2, r2, #10
c0de19ea:	902b      	str	r0, [sp, #172]	@ 0xac
c0de19ec:	ea80 0008 	eor.w	r0, r0, r8
c0de19f0:	ea42 5696 	orr.w	r6, r2, r6, lsr #22
c0de19f4:	9a59      	ldr	r2, [sp, #356]	@ 0x164
c0de19f6:	9609      	str	r6, [sp, #36]	@ 0x24
c0de19f8:	43b2      	bics	r2, r6
c0de19fa:	9e08      	ldr	r6, [sp, #32]
c0de19fc:	0136      	lsls	r6, r6, #4
c0de19fe:	ea46 7717 	orr.w	r7, r6, r7, lsr #28
c0de1a02:	9e05      	ldr	r6, [sp, #20]
c0de1a04:	407a      	eors	r2, r7
c0de1a06:	9701      	str	r7, [sp, #4]
c0de1a08:	9245      	str	r2, [sp, #276]	@ 0x114
c0de1a0a:	4050      	eors	r0, r2
c0de1a0c:	9a06      	ldr	r2, [sp, #24]
c0de1a0e:	0652      	lsls	r2, r2, #25
c0de1a10:	ea42 16d6 	orr.w	r6, r2, r6, lsr #7
c0de1a14:	9a34      	ldr	r2, [sp, #208]	@ 0xd0
c0de1a16:	9633      	str	r6, [sp, #204]	@ 0xcc
c0de1a18:	43b2      	bics	r2, r6
c0de1a1a:	9e37      	ldr	r6, [sp, #220]	@ 0xdc
c0de1a1c:	01b6      	lsls	r6, r6, #6
c0de1a1e:	ea46 6695 	orr.w	r6, r6, r5, lsr #26
c0de1a22:	4072      	eors	r2, r6
c0de1a24:	9603      	str	r6, [sp, #12]
c0de1a26:	ea80 0802 	eor.w	r8, r0, r2
c0de1a2a:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de1a2c:	9219      	str	r2, [sp, #100]	@ 0x64
c0de1a2e:	9a2a      	ldr	r2, [sp, #168]	@ 0xa8
c0de1a30:	01c0      	lsls	r0, r0, #7
c0de1a32:	ea40 6252 	orr.w	r2, r0, r2, lsr #25
c0de1a36:	9836      	ldr	r0, [sp, #216]	@ 0xd8
c0de1a38:	9208      	str	r2, [sp, #32]
c0de1a3a:	ea20 0502 	bic.w	r5, r0, r2
c0de1a3e:	ea4f 50ce 	mov.w	r0, lr, lsl #23
c0de1a42:	ea40 225b 	orr.w	r2, r0, fp, lsr #9
c0de1a46:	f8dd b070 	ldr.w	fp, [sp, #112]	@ 0x70
c0de1a4a:	ea85 0002 	eor.w	r0, r5, r2
c0de1a4e:	9d1e      	ldr	r5, [sp, #120]	@ 0x78
c0de1a50:	4696      	mov	lr, r2
c0de1a52:	e9cd 200b 	strd	r2, r0, [sp, #44]	@ 0x2c
c0de1a56:	9a4c      	ldr	r2, [sp, #304]	@ 0x130
c0de1a58:	ea80 0008 	eor.w	r0, r0, r8
c0de1a5c:	f8dd 8054 	ldr.w	r8, [sp, #84]	@ 0x54
c0de1a60:	ea25 0101 	bic.w	r1, r5, r1
c0de1a64:	9010      	str	r0, [sp, #64]	@ 0x40
c0de1a66:	4050      	eors	r0, r2
c0de1a68:	4059      	eors	r1, r3
c0de1a6a:	905a      	str	r0, [sp, #360]	@ 0x168
c0de1a6c:	4048      	eors	r0, r1
c0de1a6e:	9105      	str	r1, [sp, #20]
c0de1a70:	9912      	ldr	r1, [sp, #72]	@ 0x48
c0de1a72:	0782      	lsls	r2, r0, #30
c0de1a74:	900f      	str	r0, [sp, #60]	@ 0x3c
c0de1a76:	ea42 009a 	orr.w	r0, r2, sl, lsr #2
c0de1a7a:	9a4f      	ldr	r2, [sp, #316]	@ 0x13c
c0de1a7c:	f8dd a068 	ldr.w	sl, [sp, #104]	@ 0x68
c0de1a80:	904c      	str	r0, [sp, #304]	@ 0x130
c0de1a82:	983e      	ldr	r0, [sp, #248]	@ 0xf8
c0de1a84:	ea2e 0202 	bic.w	r2, lr, r2
c0de1a88:	ea80 0302 	eor.w	r3, r0, r2
c0de1a8c:	9a56      	ldr	r2, [sp, #344]	@ 0x158
c0de1a8e:	9329      	str	r3, [sp, #164]	@ 0xa4
c0de1a90:	ea2c 0202 	bic.w	r2, ip, r2
c0de1a94:	ea85 0002 	eor.w	r0, r5, r2
c0de1a98:	9d47      	ldr	r5, [sp, #284]	@ 0x11c
c0de1a9a:	ea80 0203 	eor.w	r2, r0, r3
c0de1a9e:	9b57      	ldr	r3, [sp, #348]	@ 0x15c
c0de1aa0:	9013      	str	r0, [sp, #76]	@ 0x4c
c0de1aa2:	ea26 0303 	bic.w	r3, r6, r3
c0de1aa6:	9e44      	ldr	r6, [sp, #272]	@ 0x110
c0de1aa8:	ea83 000b 	eor.w	r0, r3, fp
c0de1aac:	9b3a      	ldr	r3, [sp, #232]	@ 0xe8
c0de1aae:	902a      	str	r0, [sp, #168]	@ 0xa8
c0de1ab0:	4042      	eors	r2, r0
c0de1ab2:	9835      	ldr	r0, [sp, #212]	@ 0xd4
c0de1ab4:	ea24 0303 	bic.w	r3, r4, r3
c0de1ab8:	9c14      	ldr	r4, [sp, #80]	@ 0x50
c0de1aba:	ea83 030a 	eor.w	r3, r3, sl
c0de1abe:	933b      	str	r3, [sp, #236]	@ 0xec
c0de1ac0:	405a      	eors	r2, r3
c0de1ac2:	ea27 0300 	bic.w	r3, r7, r0
c0de1ac6:	9850      	ldr	r0, [sp, #320]	@ 0x140
c0de1ac8:	ea83 0308 	eor.w	r3, r3, r8
c0de1acc:	ea82 0c03 	eor.w	ip, r2, r3
c0de1ad0:	9a53      	ldr	r2, [sp, #332]	@ 0x14c
c0de1ad2:	9332      	str	r3, [sp, #200]	@ 0xc8
c0de1ad4:	4667      	mov	r7, ip
c0de1ad6:	f8cd c018 	str.w	ip, [sp, #24]
c0de1ada:	ea20 0202 	bic.w	r2, r0, r2
c0de1ade:	982e      	ldr	r0, [sp, #184]	@ 0xb8
c0de1ae0:	ea81 0302 	eor.w	r3, r1, r2
c0de1ae4:	9a51      	ldr	r2, [sp, #324]	@ 0x144
c0de1ae6:	931e      	str	r3, [sp, #120]	@ 0x78
c0de1ae8:	ea25 0202 	bic.w	r2, r5, r2
c0de1aec:	9d42      	ldr	r5, [sp, #264]	@ 0x108
c0de1aee:	4050      	eors	r0, r2
c0de1af0:	ea80 0203 	eor.w	r2, r0, r3
c0de1af4:	9011      	str	r0, [sp, #68]	@ 0x44
c0de1af6:	9b54      	ldr	r3, [sp, #336]	@ 0x150
c0de1af8:	9852      	ldr	r0, [sp, #328]	@ 0x148
c0de1afa:	ea20 0303 	bic.w	r3, r0, r3
c0de1afe:	4063      	eors	r3, r4
c0de1b00:	932e      	str	r3, [sp, #184]	@ 0xb8
c0de1b02:	405a      	eors	r2, r3
c0de1b04:	9b58      	ldr	r3, [sp, #352]	@ 0x160
c0de1b06:	ea25 0303 	bic.w	r3, r5, r3
c0de1b0a:	9d16      	ldr	r5, [sp, #88]	@ 0x58
c0de1b0c:	406b      	eors	r3, r5
c0de1b0e:	9339      	str	r3, [sp, #228]	@ 0xe4
c0de1b10:	405a      	eors	r2, r3
c0de1b12:	9b48      	ldr	r3, [sp, #288]	@ 0x120
c0de1b14:	ea26 0303 	bic.w	r3, r6, r3
c0de1b18:	9e5b      	ldr	r6, [sp, #364]	@ 0x16c
c0de1b1a:	4073      	eors	r3, r6
c0de1b1c:	ea82 0003 	eor.w	r0, r2, r3
c0de1b20:	9318      	str	r3, [sp, #96]	@ 0x60
c0de1b22:	9b3c      	ldr	r3, [sp, #240]	@ 0xf0
c0de1b24:	0042      	lsls	r2, r0, #1
c0de1b26:	9002      	str	r0, [sp, #8]
c0de1b28:	ea25 0303 	bic.w	r3, r5, r3
c0de1b2c:	9d46      	ldr	r5, [sp, #280]	@ 0x118
c0de1b2e:	ea42 72dc 	orr.w	r2, r2, ip, lsr #31
c0de1b32:	f8dd c12c 	ldr.w	ip, [sp, #300]	@ 0x12c
c0de1b36:	405d      	eors	r5, r3
c0de1b38:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
c0de1b3a:	9516      	str	r5, [sp, #88]	@ 0x58
c0de1b3c:	ea26 0303 	bic.w	r3, r6, r3
c0de1b40:	9e09      	ldr	r6, [sp, #36]	@ 0x24
c0de1b42:	ea83 030c 	eor.w	r3, r3, ip
c0de1b46:	933c      	str	r3, [sp, #240]	@ 0xf0
c0de1b48:	406b      	eors	r3, r5
c0de1b4a:	9d30      	ldr	r5, [sp, #192]	@ 0xc0
c0de1b4c:	ea21 0505 	bic.w	r5, r1, r5
c0de1b50:	9955      	ldr	r1, [sp, #340]	@ 0x154
c0de1b52:	404d      	eors	r5, r1
c0de1b54:	9931      	ldr	r1, [sp, #196]	@ 0xc4
c0de1b56:	406b      	eors	r3, r5
c0de1b58:	9537      	str	r5, [sp, #220]	@ 0xdc
c0de1b5a:	9d3f      	ldr	r5, [sp, #252]	@ 0xfc
c0de1b5c:	404b      	eors	r3, r1
c0de1b5e:	994e      	ldr	r1, [sp, #312]	@ 0x138
c0de1b60:	ea24 0505 	bic.w	r5, r4, r5
c0de1b64:	9c08      	ldr	r4, [sp, #32]
c0de1b66:	404d      	eors	r5, r1
c0de1b68:	ea83 0e05 	eor.w	lr, r3, r5
c0de1b6c:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
c0de1b6e:	9528      	str	r5, [sp, #160]	@ 0xa0
c0de1b70:	9d2f      	ldr	r5, [sp, #188]	@ 0xbc
c0de1b72:	ea82 020e 	eor.w	r2, r2, lr
c0de1b76:	ea82 0c03 	eor.w	ip, r2, r3
c0de1b7a:	9b59      	ldr	r3, [sp, #356]	@ 0x164
c0de1b7c:	925b      	str	r2, [sp, #364]	@ 0x16c
c0de1b7e:	007a      	lsls	r2, r7, #1
c0de1b80:	ea42 72d0 	orr.w	r2, r2, r0, lsr #31
c0de1b84:	ea28 0303 	bic.w	r3, r8, r3
c0de1b88:	ea86 0103 	eor.w	r1, r6, r3
c0de1b8c:	9b43      	ldr	r3, [sp, #268]	@ 0x10c
c0de1b8e:	913f      	str	r1, [sp, #252]	@ 0xfc
c0de1b90:	ea2a 0303 	bic.w	r3, sl, r3
c0de1b94:	f8dd a130 	ldr.w	sl, [sp, #304]	@ 0x130
c0de1b98:	ea83 0005 	eor.w	r0, r3, r5
c0de1b9c:	ea80 0301 	eor.w	r3, r0, r1
c0de1ba0:	9015      	str	r0, [sp, #84]	@ 0x54
c0de1ba2:	9836      	ldr	r0, [sp, #216]	@ 0xd8
c0de1ba4:	993e      	ldr	r1, [sp, #248]	@ 0xf8
c0de1ba6:	ea21 0700 	bic.w	r7, r1, r0
c0de1baa:	9805      	ldr	r0, [sp, #20]
c0de1bac:	ea84 0107 	eor.w	r1, r4, r7
c0de1bb0:	9f33      	ldr	r7, [sp, #204]	@ 0xcc
c0de1bb2:	404b      	eors	r3, r1
c0de1bb4:	9131      	str	r1, [sp, #196]	@ 0xc4
c0de1bb6:	ea83 0100 	eor.w	r1, r3, r0
c0de1bba:	9b34      	ldr	r3, [sp, #208]	@ 0xd0
c0de1bbc:	ea2b 0303 	bic.w	r3, fp, r3
c0de1bc0:	407b      	eors	r3, r7
c0de1bc2:	ea81 0b03 	eor.w	fp, r1, r3
c0de1bc6:	931c      	str	r3, [sp, #112]	@ 0x70
c0de1bc8:	9957      	ldr	r1, [sp, #348]	@ 0x15c
c0de1bca:	ea82 000b 	eor.w	r0, r2, fp
c0de1bce:	9a1b      	ldr	r2, [sp, #108]	@ 0x6c
c0de1bd0:	9059      	str	r0, [sp, #356]	@ 0x164
c0de1bd2:	ea80 0802 	eor.w	r8, r0, r2
c0de1bd6:	ea4f 52c8 	mov.w	r2, r8, lsl #23
c0de1bda:	ea42 205c 	orr.w	r0, r2, ip, lsr #9
c0de1bde:	ea4f 024b 	mov.w	r2, fp, lsl #1
c0de1be2:	9036      	str	r0, [sp, #216]	@ 0xd8
c0de1be4:	ea20 000a 	bic.w	r0, r0, sl
c0de1be8:	ea42 72de 	orr.w	r2, r2, lr, lsr #31
c0de1bec:	9034      	str	r0, [sp, #208]	@ 0xd0
c0de1bee:	9803      	ldr	r0, [sp, #12]
c0de1bf0:	ea27 0300 	bic.w	r3, r7, r0
c0de1bf4:	9801      	ldr	r0, [sp, #4]
c0de1bf6:	4059      	eors	r1, r3
c0de1bf8:	ea26 0300 	bic.w	r3, r6, r0
c0de1bfc:	9835      	ldr	r0, [sp, #212]	@ 0xd4
c0de1bfe:	9133      	str	r1, [sp, #204]	@ 0xcc
c0de1c00:	4058      	eors	r0, r3
c0de1c02:	9b07      	ldr	r3, [sp, #28]
c0de1c04:	ea80 0601 	eor.w	r6, r0, r1
c0de1c08:	9043      	str	r0, [sp, #268]	@ 0x10c
c0de1c0a:	9804      	ldr	r0, [sp, #16]
c0de1c0c:	993a      	ldr	r1, [sp, #232]	@ 0xe8
c0de1c0e:	ea25 0700 	bic.w	r7, r5, r0
c0de1c12:	ea87 0001 	eor.w	r0, r7, r1
c0de1c16:	994f      	ldr	r1, [sp, #316]	@ 0x13c
c0de1c18:	903e      	str	r0, [sp, #248]	@ 0xf8
c0de1c1a:	4046      	eors	r6, r0
c0de1c1c:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de1c1e:	ea24 0000 	bic.w	r0, r4, r0
c0de1c22:	4048      	eors	r0, r1
c0de1c24:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de1c26:	9014      	str	r0, [sp, #80]	@ 0x50
c0de1c28:	4070      	eors	r0, r6
c0de1c2a:	ea21 0403 	bic.w	r4, r1, r3
c0de1c2e:	9956      	ldr	r1, [sp, #344]	@ 0x158
c0de1c30:	9b44      	ldr	r3, [sp, #272]	@ 0x110
c0de1c32:	404c      	eors	r4, r1
c0de1c34:	995d      	ldr	r1, [sp, #372]	@ 0x174
c0de1c36:	e951 6702 	ldrd	r6, r7, [r1, #-8]
c0de1c3a:	ea84 0106 	eor.w	r1, r4, r6
c0de1c3e:	9e10      	ldr	r6, [sp, #64]	@ 0x40
c0de1c40:	4048      	eors	r0, r1
c0de1c42:	911b      	str	r1, [sp, #108]	@ 0x6c
c0de1c44:	990c      	ldr	r1, [sp, #48]	@ 0x30
c0de1c46:	904f      	str	r0, [sp, #316]	@ 0x13c
c0de1c48:	4050      	eors	r0, r2
c0de1c4a:	ea4f 024e 	mov.w	r2, lr, lsl #1
c0de1c4e:	f8dd e0b4 	ldr.w	lr, [sp, #180]	@ 0xb4
c0de1c52:	ea42 74db 	orr.w	r4, r2, fp, lsr #31
c0de1c56:	902f      	str	r0, [sp, #188]	@ 0xbc
c0de1c58:	4041      	eors	r1, r0
c0de1c5a:	9852      	ldr	r0, [sp, #328]	@ 0x148
c0de1c5c:	9a4e      	ldr	r2, [sp, #312]	@ 0x138
c0de1c5e:	4382      	bics	r2, r0
c0de1c60:	9854      	ldr	r0, [sp, #336]	@ 0x150
c0de1c62:	4050      	eors	r0, r2
c0de1c64:	9a4b      	ldr	r2, [sp, #300]	@ 0x12c
c0de1c66:	9017      	str	r0, [sp, #92]	@ 0x5c
c0de1c68:	439a      	bics	r2, r3
c0de1c6a:	9b48      	ldr	r3, [sp, #288]	@ 0x120
c0de1c6c:	ea83 0b02 	eor.w	fp, r3, r2
c0de1c70:	9b42      	ldr	r3, [sp, #264]	@ 0x108
c0de1c72:	ea8b 0200 	eor.w	r2, fp, r0
c0de1c76:	9846      	ldr	r0, [sp, #280]	@ 0x118
c0de1c78:	ea20 0503 	bic.w	r5, r0, r3
c0de1c7c:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de1c7e:	9b50      	ldr	r3, [sp, #320]	@ 0x140
c0de1c80:	4068      	eors	r0, r5
c0de1c82:	9052      	str	r0, [sp, #328]	@ 0x148
c0de1c84:	4042      	eors	r2, r0
c0de1c86:	9855      	ldr	r0, [sp, #340]	@ 0x154
c0de1c88:	ea20 0503 	bic.w	r5, r0, r3
c0de1c8c:	9853      	ldr	r0, [sp, #332]	@ 0x14c
c0de1c8e:	9b47      	ldr	r3, [sp, #284]	@ 0x11c
c0de1c90:	4068      	eors	r0, r5
c0de1c92:	9055      	str	r0, [sp, #340]	@ 0x154
c0de1c94:	4042      	eors	r2, r0
c0de1c96:	9849      	ldr	r0, [sp, #292]	@ 0x124
c0de1c98:	ea20 0503 	bic.w	r5, r0, r3
c0de1c9c:	9851      	ldr	r0, [sp, #324]	@ 0x144
c0de1c9e:	9b2c      	ldr	r3, [sp, #176]	@ 0xb0
c0de1ca0:	4045      	eors	r5, r0
c0de1ca2:	ea85 0007 	eor.w	r0, r5, r7
c0de1ca6:	4042      	eors	r2, r0
c0de1ca8:	901a      	str	r0, [sp, #104]	@ 0x68
c0de1caa:	ea82 0004 	eor.w	r0, r2, r4
c0de1cae:	ea80 0703 	eor.w	r7, r0, r3
c0de1cb2:	9b34      	ldr	r3, [sp, #208]	@ 0xd0
c0de1cb4:	9057      	str	r0, [sp, #348]	@ 0x15c
c0de1cb6:	00bc      	lsls	r4, r7, #2
c0de1cb8:	ea44 7091 	orr.w	r0, r4, r1, lsr #30
c0de1cbc:	ea4f 54cc 	mov.w	r4, ip, lsl #23
c0de1cc0:	0089      	lsls	r1, r1, #2
c0de1cc2:	4043      	eors	r3, r0
c0de1cc4:	ea44 2858 	orr.w	r8, r4, r8, lsr #9
c0de1cc8:	ea41 7797 	orr.w	r7, r1, r7, lsr #30
c0de1ccc:	9356      	str	r3, [sp, #344]	@ 0x158
c0de1cce:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
c0de1cd0:	079d      	lsls	r5, r3, #30
c0de1cd2:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
c0de1cd4:	ea45 0c93 	orr.w	ip, r5, r3, lsr #2
c0de1cd8:	9b02      	ldr	r3, [sp, #8]
c0de1cda:	9d06      	ldr	r5, [sp, #24]
c0de1cdc:	ea28 040c 	bic.w	r4, r8, ip
c0de1ce0:	ea87 0104 	eor.w	r1, r7, r4
c0de1ce4:	ea4f 044e 	mov.w	r4, lr, lsl #1
c0de1ce8:	ea44 74d6 	orr.w	r4, r4, r6, lsr #31
c0de1cec:	9153      	str	r1, [sp, #332]	@ 0x14c
c0de1cee:	ea2a 0100 	bic.w	r1, sl, r0
c0de1cf2:	ea83 0a04 	eor.w	sl, r3, r4
c0de1cf6:	0073      	lsls	r3, r6, #1
c0de1cf8:	ea43 73de 	orr.w	r3, r3, lr, lsr #31
c0de1cfc:	ea8a 040b 	eor.w	r4, sl, fp
c0de1d00:	f8cd a0c0 	str.w	sl, [sp, #192]	@ 0xc0
c0de1d04:	ea85 0b03 	eor.w	fp, r5, r3
c0de1d08:	9b43      	ldr	r3, [sp, #268]	@ 0x10c
c0de1d0a:	9d4f      	ldr	r5, [sp, #316]	@ 0x13c
c0de1d0c:	f8cd b160 	str.w	fp, [sp, #352]	@ 0x160
c0de1d10:	ea83 030b 	eor.w	r3, r3, fp
c0de1d14:	025e      	lsls	r6, r3, #9
c0de1d16:	ea46 56d4 	orr.w	r6, r6, r4, lsr #23
c0de1d1a:	0264      	lsls	r4, r4, #9
c0de1d1c:	4071      	eors	r1, r6
c0de1d1e:	ea44 53d3 	orr.w	r3, r4, r3, lsr #23
c0de1d22:	ea20 0406 	bic.w	r4, r0, r6
c0de1d26:	0050      	lsls	r0, r2, #1
c0de1d28:	9154      	str	r1, [sp, #336]	@ 0x150
c0de1d2a:	ea2c 0107 	bic.w	r1, ip, r7
c0de1d2e:	ea40 70d5 	orr.w	r0, r0, r5, lsr #31
c0de1d32:	4059      	eors	r1, r3
c0de1d34:	9151      	str	r1, [sp, #324]	@ 0x144
c0de1d36:	994a      	ldr	r1, [sp, #296]	@ 0x128
c0de1d38:	ea80 0e01 	eor.w	lr, r0, r1
c0de1d3c:	0068      	lsls	r0, r5, #1
c0de1d3e:	992e      	ldr	r1, [sp, #184]	@ 0xb8
c0de1d40:	ea40 70d2 	orr.w	r0, r0, r2, lsr #31
c0de1d44:	9a4d      	ldr	r2, [sp, #308]	@ 0x134
c0de1d46:	f8cd e0b4 	str.w	lr, [sp, #180]	@ 0xb4
c0de1d4a:	ea81 010e 	eor.w	r1, r1, lr
c0de1d4e:	4050      	eors	r0, r2
c0de1d50:	9a2a      	ldr	r2, [sp, #168]	@ 0xa8
c0de1d52:	4605      	mov	r5, r0
c0de1d54:	902e      	str	r0, [sp, #184]	@ 0xb8
c0de1d56:	4042      	eors	r2, r0
c0de1d58:	01d0      	lsls	r0, r2, #7
c0de1d5a:	ea40 6051 	orr.w	r0, r0, r1, lsr #25
c0de1d5e:	01c9      	lsls	r1, r1, #7
c0de1d60:	4044      	eors	r4, r0
c0de1d62:	ea41 6152 	orr.w	r1, r1, r2, lsr #25
c0de1d66:	944d      	str	r4, [sp, #308]	@ 0x134
c0de1d68:	ea27 0403 	bic.w	r4, r7, r3
c0de1d6c:	ea81 0204 	eor.w	r2, r1, r4
c0de1d70:	9c36      	ldr	r4, [sp, #216]	@ 0xd8
c0de1d72:	9243      	str	r2, [sp, #268]	@ 0x10c
c0de1d74:	ea26 0200 	bic.w	r2, r6, r0
c0de1d78:	4062      	eors	r2, r4
c0de1d7a:	43a0      	bics	r0, r4
c0de1d7c:	9c5b      	ldr	r4, [sp, #364]	@ 0x16c
c0de1d7e:	924f      	str	r2, [sp, #316]	@ 0x13c
c0de1d80:	ea23 0201 	bic.w	r2, r3, r1
c0de1d84:	ea82 0208 	eor.w	r2, r2, r8
c0de1d88:	9248      	str	r2, [sp, #288]	@ 0x120
c0de1d8a:	9a4c      	ldr	r2, [sp, #304]	@ 0x130
c0de1d8c:	4050      	eors	r0, r2
c0de1d8e:	902c      	str	r0, [sp, #176]	@ 0xb0
c0de1d90:	ea21 0008 	bic.w	r0, r1, r8
c0de1d94:	9911      	ldr	r1, [sp, #68]	@ 0x44
c0de1d96:	f8dd 8170 	ldr.w	r8, [sp, #368]	@ 0x170
c0de1d9a:	ea80 000c 	eor.w	r0, r0, ip
c0de1d9e:	902a      	str	r0, [sp, #168]	@ 0xa8
c0de1da0:	9813      	ldr	r0, [sp, #76]	@ 0x4c
c0de1da2:	ea8e 0c01 	eor.w	ip, lr, r1
c0de1da6:	f8dd e168 	ldr.w	lr, [sp, #360]	@ 0x168
c0de1daa:	ea4f 62cc 	mov.w	r2, ip, lsl #27
c0de1dae:	4068      	eors	r0, r5
c0de1db0:	ea42 1350 	orr.w	r3, r2, r0, lsr #5
c0de1db4:	9a52      	ldr	r2, [sp, #328]	@ 0x148
c0de1db6:	06c0      	lsls	r0, r0, #27
c0de1db8:	461d      	mov	r5, r3
c0de1dba:	9350      	str	r3, [sp, #320]	@ 0x140
c0de1dbc:	ea8a 0102 	eor.w	r1, sl, r2
c0de1dc0:	9a3e      	ldr	r2, [sp, #248]	@ 0xf8
c0de1dc2:	ea40 1a5c 	orr.w	sl, r0, ip, lsr #5
c0de1dc6:	0108      	lsls	r0, r1, #4
c0de1dc8:	ea8b 0602 	eor.w	r6, fp, r2
c0de1dcc:	0132      	lsls	r2, r6, #4
c0de1dce:	ea40 7c16 	orr.w	ip, r0, r6, lsr #28
c0de1dd2:	ea42 7211 	orr.w	r2, r2, r1, lsr #28
c0de1dd6:	ea2c 000a 	bic.w	r0, ip, sl
c0de1dda:	9252      	str	r2, [sp, #328]	@ 0x148
c0de1ddc:	439a      	bics	r2, r3
c0de1dde:	9b1d      	ldr	r3, [sp, #116]	@ 0x74
c0de1de0:	ea84 0703 	eor.w	r7, r4, r3
c0de1de4:	9b1f      	ldr	r3, [sp, #124]	@ 0x7c
c0de1de6:	9c59      	ldr	r4, [sp, #356]	@ 0x164
c0de1de8:	0639      	lsls	r1, r7, #24
c0de1dea:	405c      	eors	r4, r3
c0de1dec:	0623      	lsls	r3, r4, #24
c0de1dee:	ea41 2114 	orr.w	r1, r1, r4, lsr #8
c0de1df2:	ea43 2317 	orr.w	r3, r3, r7, lsr #8
c0de1df6:	4048      	eors	r0, r1
c0de1df8:	405a      	eors	r2, r3
c0de1dfa:	9034      	str	r0, [sp, #208]	@ 0xd0
c0de1dfc:	ea25 0003 	bic.w	r0, r5, r3
c0de1e00:	9d2f      	ldr	r5, [sp, #188]	@ 0xbc
c0de1e02:	923a      	str	r2, [sp, #232]	@ 0xe8
c0de1e04:	9a3f      	ldr	r2, [sp, #252]	@ 0xfc
c0de1e06:	ea8e 0402 	eor.w	r4, lr, r2
c0de1e0a:	9a3c      	ldr	r2, [sp, #240]	@ 0xf0
c0de1e0c:	ea88 0602 	eor.w	r6, r8, r2
c0de1e10:	9a19      	ldr	r2, [sp, #100]	@ 0x64
c0de1e12:	03f7      	lsls	r7, r6, #15
c0de1e14:	ea47 4754 	orr.w	r7, r7, r4, lsr #17
c0de1e18:	03e4      	lsls	r4, r4, #15
c0de1e1a:	4078      	eors	r0, r7
c0de1e1c:	ea44 4456 	orr.w	r4, r4, r6, lsr #17
c0de1e20:	9e40      	ldr	r6, [sp, #256]	@ 0x100
c0de1e22:	9047      	str	r0, [sp, #284]	@ 0x11c
c0de1e24:	ea2a 0001 	bic.w	r0, sl, r1
c0de1e28:	4060      	eors	r0, r4
c0de1e2a:	903f      	str	r0, [sp, #252]	@ 0xfc
c0de1e2c:	ea23 0007 	bic.w	r0, r3, r7
c0de1e30:	ea85 0302 	eor.w	r3, r5, r2
c0de1e34:	9a57      	ldr	r2, [sp, #348]	@ 0x15c
c0de1e36:	4056      	eors	r6, r2
c0de1e38:	ea4f 2b86 	mov.w	fp, r6, lsl #10
c0de1e3c:	ea4b 5b93 	orr.w	fp, fp, r3, lsr #22
c0de1e40:	ea80 000b 	eor.w	r0, r0, fp
c0de1e44:	904a      	str	r0, [sp, #296]	@ 0x128
c0de1e46:	ea21 0004 	bic.w	r0, r1, r4
c0de1e4a:	0299      	lsls	r1, r3, #10
c0de1e4c:	9b52      	ldr	r3, [sp, #328]	@ 0x148
c0de1e4e:	ea41 5196 	orr.w	r1, r1, r6, lsr #22
c0de1e52:	4048      	eors	r0, r1
c0de1e54:	9042      	str	r0, [sp, #264]	@ 0x108
c0de1e56:	ea27 000b 	bic.w	r0, r7, fp
c0de1e5a:	4058      	eors	r0, r3
c0de1e5c:	903e      	str	r0, [sp, #248]	@ 0xf8
c0de1e5e:	ea24 0001 	bic.w	r0, r4, r1
c0de1e62:	9c14      	ldr	r4, [sp, #80]	@ 0x50
c0de1e64:	ea80 000c 	eor.w	r0, r0, ip
c0de1e68:	9036      	str	r0, [sp, #216]	@ 0xd8
c0de1e6a:	ea2b 0003 	bic.w	r0, fp, r3
c0de1e6e:	9b50      	ldr	r3, [sp, #320]	@ 0x140
c0de1e70:	f8dd b16c 	ldr.w	fp, [sp, #364]	@ 0x16c
c0de1e74:	4058      	eors	r0, r3
c0de1e76:	9b58      	ldr	r3, [sp, #352]	@ 0x160
c0de1e78:	903c      	str	r0, [sp, #240]	@ 0xf0
c0de1e7a:	ea21 000c 	bic.w	r0, r1, ip
c0de1e7e:	9941      	ldr	r1, [sp, #260]	@ 0x104
c0de1e80:	ea80 000a 	eor.w	r0, r0, sl
c0de1e84:	ea83 0704 	eor.w	r7, r3, r4
c0de1e88:	9b30      	ldr	r3, [sp, #192]	@ 0xc0
c0de1e8a:	9c55      	ldr	r4, [sp, #340]	@ 0x154
c0de1e8c:	9035      	str	r0, [sp, #212]	@ 0xd4
c0de1e8e:	9838      	ldr	r0, [sp, #224]	@ 0xe0
c0de1e90:	ea82 0c01 	eor.w	ip, r2, r1
c0de1e94:	ea4f 024c 	mov.w	r2, ip, lsl #1
c0de1e98:	4063      	eors	r3, r4
c0de1e9a:	4068      	eors	r0, r5
c0de1e9c:	049c      	lsls	r4, r3, #18
c0de1e9e:	ea42 75d0 	orr.w	r5, r2, r0, lsr #31
c0de1ea2:	9a15      	ldr	r2, [sp, #84]	@ 0x54
c0de1ea4:	ea44 3497 	orr.w	r4, r4, r7, lsr #14
c0de1ea8:	0040      	lsls	r0, r0, #1
c0de1eaa:	ea40 7adc 	orr.w	sl, r0, ip, lsr #31
c0de1eae:	f8dd c0b8 	ldr.w	ip, [sp, #184]	@ 0xb8
c0de1eb2:	9546      	str	r5, [sp, #280]	@ 0x118
c0de1eb4:	ea8e 0102 	eor.w	r1, lr, r2
c0de1eb8:	9a16      	ldr	r2, [sp, #88]	@ 0x58
c0de1eba:	0188      	lsls	r0, r1, #6
c0de1ebc:	ea88 0602 	eor.w	r6, r8, r2
c0de1ec0:	f8dd 80b4 	ldr.w	r8, [sp, #180]	@ 0xb4
c0de1ec4:	01b2      	lsls	r2, r6, #6
c0de1ec6:	ea40 6e96 	orr.w	lr, r0, r6, lsr #26
c0de1eca:	ea42 6291 	orr.w	r2, r2, r1, lsr #26
c0de1ece:	04b9      	lsls	r1, r7, #18
c0de1ed0:	ea2e 000a 	bic.w	r0, lr, sl
c0de1ed4:	924c      	str	r2, [sp, #304]	@ 0x130
c0de1ed6:	43aa      	bics	r2, r5
c0de1ed8:	ea41 3193 	orr.w	r1, r1, r3, lsr #14
c0de1edc:	4062      	eors	r2, r4
c0de1ede:	4048      	eors	r0, r1
c0de1ee0:	9255      	str	r2, [sp, #340]	@ 0x154
c0de1ee2:	9a32      	ldr	r2, [sp, #200]	@ 0xc8
c0de1ee4:	9050      	str	r0, [sp, #320]	@ 0x140
c0de1ee6:	ea25 0004 	bic.w	r0, r5, r4
c0de1eea:	9d59      	ldr	r5, [sp, #356]	@ 0x164
c0de1eec:	ea8c 0302 	eor.w	r3, ip, r2
c0de1ef0:	9a18      	ldr	r2, [sp, #96]	@ 0x60
c0de1ef2:	ea88 0602 	eor.w	r6, r8, r2
c0de1ef6:	0237      	lsls	r7, r6, #8
c0de1ef8:	ea47 6713 	orr.w	r7, r7, r3, lsr #24
c0de1efc:	021b      	lsls	r3, r3, #8
c0de1efe:	4078      	eors	r0, r7
c0de1f00:	ea43 6316 	orr.w	r3, r3, r6, lsr #24
c0de1f04:	ea24 0207 	bic.w	r2, r4, r7
c0de1f08:	9052      	str	r0, [sp, #328]	@ 0x148
c0de1f0a:	ea2a 0001 	bic.w	r0, sl, r1
c0de1f0e:	4399      	bics	r1, r3
c0de1f10:	4058      	eors	r0, r3
c0de1f12:	904e      	str	r0, [sp, #312]	@ 0x138
c0de1f14:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de1f16:	ea85 0400 	eor.w	r4, r5, r0
c0de1f1a:	9821      	ldr	r0, [sp, #132]	@ 0x84
c0de1f1c:	ea8b 0600 	eor.w	r6, fp, r0
c0de1f20:	0670      	lsls	r0, r6, #25
c0de1f22:	ea40 10d4 	orr.w	r0, r0, r4, lsr #7
c0de1f26:	0664      	lsls	r4, r4, #25
c0de1f28:	4042      	eors	r2, r0
c0de1f2a:	ea44 14d6 	orr.w	r4, r4, r6, lsr #7
c0de1f2e:	9249      	str	r2, [sp, #292]	@ 0x124
c0de1f30:	4061      	eors	r1, r4
c0de1f32:	9a4c      	ldr	r2, [sp, #304]	@ 0x130
c0de1f34:	9141      	str	r1, [sp, #260]	@ 0x104
c0de1f36:	ea27 0100 	bic.w	r1, r7, r0
c0de1f3a:	4051      	eors	r1, r2
c0de1f3c:	4390      	bics	r0, r2
c0de1f3e:	914b      	str	r1, [sp, #300]	@ 0x12c
c0de1f40:	ea23 0104 	bic.w	r1, r3, r4
c0de1f44:	9b37      	ldr	r3, [sp, #220]	@ 0xdc
c0de1f46:	ea81 010e 	eor.w	r1, r1, lr
c0de1f4a:	9144      	str	r1, [sp, #272]	@ 0x110
c0de1f4c:	9946      	ldr	r1, [sp, #280]	@ 0x118
c0de1f4e:	4048      	eors	r0, r1
c0de1f50:	9920      	ldr	r1, [sp, #128]	@ 0x80
c0de1f52:	9046      	str	r0, [sp, #280]	@ 0x118
c0de1f54:	ea24 000e 	bic.w	r0, r4, lr
c0de1f58:	9c5c      	ldr	r4, [sp, #368]	@ 0x170
c0de1f5a:	ea80 000a 	eor.w	r0, r0, sl
c0de1f5e:	ea8b 0e01 	eor.w	lr, fp, r1
c0de1f62:	9040      	str	r0, [sp, #256]	@ 0x100
c0de1f64:	9823      	ldr	r0, [sp, #140]	@ 0x8c
c0de1f66:	ea4f 720e 	mov.w	r2, lr, lsl #28
c0de1f6a:	ea84 0703 	eor.w	r7, r4, r3
c0de1f6e:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
c0de1f70:	9c5a      	ldr	r4, [sp, #360]	@ 0x168
c0de1f72:	4068      	eors	r0, r5
c0de1f74:	4063      	eors	r3, r4
c0de1f76:	ea42 1610 	orr.w	r6, r2, r0, lsr #4
c0de1f7a:	9a3b      	ldr	r2, [sp, #236]	@ 0xec
c0de1f7c:	075c      	lsls	r4, r3, #29
c0de1f7e:	0700      	lsls	r0, r0, #28
c0de1f80:	ea44 04d7 	orr.w	r4, r4, r7, lsr #3
c0de1f84:	ea40 1e1e 	orr.w	lr, r0, lr, lsr #4
c0de1f88:	9624      	str	r6, [sp, #144]	@ 0x90
c0de1f8a:	ea8c 0502 	eor.w	r5, ip, r2
c0de1f8e:	9a39      	ldr	r2, [sp, #228]	@ 0xe4
c0de1f90:	f8dd c0c0 	ldr.w	ip, [sp, #192]	@ 0xc0
c0de1f94:	0528      	lsls	r0, r5, #20
c0de1f96:	ea88 0102 	eor.w	r1, r8, r2
c0de1f9a:	f8dd 80bc 	ldr.w	r8, [sp, #188]	@ 0xbc
c0de1f9e:	050a      	lsls	r2, r1, #20
c0de1fa0:	ea42 3a15 	orr.w	sl, r2, r5, lsr #12
c0de1fa4:	ea40 3511 	orr.w	r5, r0, r1, lsr #12
c0de1fa8:	0779      	lsls	r1, r7, #29
c0de1faa:	ea2a 0206 	bic.w	r2, sl, r6
c0de1fae:	ea41 01d3 	orr.w	r1, r1, r3, lsr #3
c0de1fb2:	9b57      	ldr	r3, [sp, #348]	@ 0x15c
c0de1fb4:	ea25 000e 	bic.w	r0, r5, lr
c0de1fb8:	4062      	eors	r2, r4
c0de1fba:	4048      	eors	r0, r1
c0de1fbc:	923b      	str	r2, [sp, #236]	@ 0xec
c0de1fbe:	9a3d      	ldr	r2, [sp, #244]	@ 0xf4
c0de1fc0:	9039      	str	r0, [sp, #228]	@ 0xe4
c0de1fc2:	ea26 0004 	bic.w	r0, r6, r4
c0de1fc6:	4053      	eors	r3, r2
c0de1fc8:	9a45      	ldr	r2, [sp, #276]	@ 0x114
c0de1fca:	ea88 0602 	eor.w	r6, r8, r2
c0de1fce:	9a58      	ldr	r2, [sp, #352]	@ 0x160
c0de1fd0:	0377      	lsls	r7, r6, #13
c0de1fd2:	ea47 47d3 	orr.w	r7, r7, r3, lsr #19
c0de1fd6:	035b      	lsls	r3, r3, #13
c0de1fd8:	4078      	eors	r0, r7
c0de1fda:	ea43 43d6 	orr.w	r3, r3, r6, lsr #19
c0de1fde:	ea24 0b07 	bic.w	fp, r4, r7
c0de1fe2:	904c      	str	r0, [sp, #304]	@ 0x130
c0de1fe4:	ea2e 0001 	bic.w	r0, lr, r1
c0de1fe8:	4399      	bics	r1, r3
c0de1fea:	4058      	eors	r0, r3
c0de1fec:	9045      	str	r0, [sp, #276]	@ 0x114
c0de1fee:	9833      	ldr	r0, [sp, #204]	@ 0xcc
c0de1ff0:	ea82 0400 	eor.w	r4, r2, r0
c0de1ff4:	9817      	ldr	r0, [sp, #92]	@ 0x5c
c0de1ff6:	ea8c 0600 	eor.w	r6, ip, r0
c0de1ffa:	00f0      	lsls	r0, r6, #3
c0de1ffc:	ea40 7054 	orr.w	r0, r0, r4, lsr #29
c0de2000:	00e4      	lsls	r4, r4, #3
c0de2002:	ea44 7456 	orr.w	r4, r4, r6, lsr #29
c0de2006:	ea8b 0200 	eor.w	r2, fp, r0
c0de200a:	4061      	eors	r1, r4
c0de200c:	9238      	str	r2, [sp, #224]	@ 0xe0
c0de200e:	9137      	str	r1, [sp, #220]	@ 0xdc
c0de2010:	ea27 0100 	bic.w	r1, r7, r0
c0de2014:	ea20 000a 	bic.w	r0, r0, sl
c0de2018:	ea81 010a 	eor.w	r1, r1, sl
c0de201c:	9132      	str	r1, [sp, #200]	@ 0xc8
c0de201e:	ea23 0104 	bic.w	r1, r3, r4
c0de2022:	4069      	eors	r1, r5
c0de2024:	9131      	str	r1, [sp, #196]	@ 0xc4
c0de2026:	9924      	ldr	r1, [sp, #144]	@ 0x90
c0de2028:	4048      	eors	r0, r1
c0de202a:	992e      	ldr	r1, [sp, #184]	@ 0xb8
c0de202c:	903d      	str	r0, [sp, #244]	@ 0xf4
c0de202e:	ea24 0005 	bic.w	r0, r4, r5
c0de2032:	ea80 000e 	eor.w	r0, r0, lr
c0de2036:	9033      	str	r0, [sp, #204]	@ 0xcc
c0de2038:	9829      	ldr	r0, [sp, #164]	@ 0xa4
c0de203a:	ea81 0200 	eor.w	r2, r1, r0
c0de203e:	981e      	ldr	r0, [sp, #120]	@ 0x78
c0de2040:	992d      	ldr	r1, [sp, #180]	@ 0xb4
c0de2042:	ea81 0300 	eor.w	r3, r1, r0
c0de2046:	9957      	ldr	r1, [sp, #348]	@ 0x15c
c0de2048:	0398      	lsls	r0, r3, #14
c0de204a:	ea40 4492 	orr.w	r4, r0, r2, lsr #18
c0de204e:	9822      	ldr	r0, [sp, #136]	@ 0x88
c0de2050:	0392      	lsls	r2, r2, #14
c0de2052:	ea42 4293 	orr.w	r2, r2, r3, lsr #18
c0de2056:	ea81 0500 	eor.w	r5, r1, r0
c0de205a:	982b      	ldr	r0, [sp, #172]	@ 0xac
c0de205c:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de205e:	032b      	lsls	r3, r5, #12
c0de2060:	ea88 0600 	eor.w	r6, r8, r0
c0de2064:	0330      	lsls	r0, r6, #12
c0de2066:	ea40 5a15 	orr.w	sl, r0, r5, lsr #20
c0de206a:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de206c:	ea43 5516 	orr.w	r5, r3, r6, lsr #20
c0de2070:	ea80 080c 	eor.w	r8, r0, ip
c0de2074:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de2076:	ea2a 0708 	bic.w	r7, sl, r8
c0de207a:	ea80 0b01 	eor.w	fp, r0, r1
c0de207e:	9959      	ldr	r1, [sp, #356]	@ 0x164
c0de2080:	ea84 0e07 	eor.w	lr, r4, r7
c0de2084:	ea25 060b 	bic.w	r6, r5, fp
c0de2088:	ea82 0006 	eor.w	r0, r2, r6
c0de208c:	9058      	str	r0, [sp, #352]	@ 0x160
c0de208e:	9826      	ldr	r0, [sp, #152]	@ 0x98
c0de2090:	ea81 0600 	eor.w	r6, r1, r0
c0de2094:	9825      	ldr	r0, [sp, #148]	@ 0x94
c0de2096:	995b      	ldr	r1, [sp, #364]	@ 0x16c
c0de2098:	ea81 0700 	eor.w	r7, r1, r0
c0de209c:	ea28 0104 	bic.w	r1, r8, r4
c0de20a0:	0578      	lsls	r0, r7, #21
c0de20a2:	ea40 20d6 	orr.w	r0, r0, r6, lsr #11
c0de20a6:	4041      	eors	r1, r0
c0de20a8:	ea24 0c00 	bic.w	ip, r4, r0
c0de20ac:	9c5c      	ldr	r4, [sp, #368]	@ 0x170
c0de20ae:	9130      	str	r1, [sp, #192]	@ 0xc0
c0de20b0:	0571      	lsls	r1, r6, #21
c0de20b2:	ea2b 0602 	bic.w	r6, fp, r2
c0de20b6:	ea41 21d7 	orr.w	r1, r1, r7, lsr #11
c0de20ba:	ea86 0301 	eor.w	r3, r6, r1
c0de20be:	438a      	bics	r2, r1
c0de20c0:	932e      	str	r3, [sp, #184]	@ 0xb8
c0de20c2:	9b28      	ldr	r3, [sp, #160]	@ 0xa0
c0de20c4:	ea84 0603 	eor.w	r6, r4, r3
c0de20c8:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
c0de20ca:	9c5a      	ldr	r4, [sp, #360]	@ 0x168
c0de20cc:	ea84 0703 	eor.w	r7, r4, r3
c0de20d0:	02fc      	lsls	r4, r7, #11
c0de20d2:	ea44 5456 	orr.w	r4, r4, r6, lsr #21
c0de20d6:	02f6      	lsls	r6, r6, #11
c0de20d8:	ea8c 0304 	eor.w	r3, ip, r4
c0de20dc:	ea46 5657 	orr.w	r6, r6, r7, lsr #21
c0de20e0:	43a0      	bics	r0, r4
c0de20e2:	935c      	str	r3, [sp, #368]	@ 0x170
c0de20e4:	4072      	eors	r2, r6
c0de20e6:	ea8a 0300 	eor.w	r3, sl, r0
c0de20ea:	ea21 0006 	bic.w	r0, r1, r6
c0de20ee:	9259      	str	r2, [sp, #356]	@ 0x164
c0de20f0:	ea85 0200 	eor.w	r2, r5, r0
c0de20f4:	ea24 000a 	bic.w	r0, r4, sl
c0de20f8:	9c5d      	ldr	r4, [sp, #372]	@ 0x174
c0de20fa:	6861      	ldr	r1, [r4, #4]
c0de20fc:	ea81 0108 	eor.w	r1, r1, r8
c0de2100:	4048      	eors	r0, r1
c0de2102:	f854 1b10 	ldr.w	r1, [r4], #16
c0de2106:	905b      	str	r0, [sp, #364]	@ 0x16c
c0de2108:	ea26 0005 	bic.w	r0, r6, r5
c0de210c:	ea81 010b 	eor.w	r1, r1, fp
c0de2110:	945d      	str	r4, [sp, #372]	@ 0x174
c0de2112:	4048      	eors	r0, r1
c0de2114:	905a      	str	r0, [sp, #360]	@ 0x168
c0de2116:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de2118:	3002      	adds	r0, #2
c0de211a:	f7ff b9a9 	b.w	c0de1470 <KeccakF1600_StatePermute+0xfc>
c0de211e:	9800      	ldr	r0, [sp, #0]
c0de2120:	9953      	ldr	r1, [sp, #332]	@ 0x14c
c0de2122:	f8c0 10c0 	str.w	r1, [r0, #192]	@ 0xc0
c0de2126:	9951      	ldr	r1, [sp, #324]	@ 0x144
c0de2128:	6082      	str	r2, [r0, #8]
c0de212a:	f8c0 e024 	str.w	lr, [r0, #36]	@ 0x24
c0de212e:	60c3      	str	r3, [r0, #12]
c0de2130:	f8c0 10b8 	str.w	r1, [r0, #184]	@ 0xb8
c0de2134:	9943      	ldr	r1, [sp, #268]	@ 0x10c
c0de2136:	f8c0 10b0 	str.w	r1, [r0, #176]	@ 0xb0
c0de213a:	9948      	ldr	r1, [sp, #288]	@ 0x120
c0de213c:	f8c0 10a8 	str.w	r1, [r0, #168]	@ 0xa8
c0de2140:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de2142:	f8c0 10a0 	str.w	r1, [r0, #160]	@ 0xa0
c0de2146:	9934      	ldr	r1, [sp, #208]	@ 0xd0
c0de2148:	f8c0 1098 	str.w	r1, [r0, #152]	@ 0x98
c0de214c:	993f      	ldr	r1, [sp, #252]	@ 0xfc
c0de214e:	f8c0 1090 	str.w	r1, [r0, #144]	@ 0x90
c0de2152:	9942      	ldr	r1, [sp, #264]	@ 0x108
c0de2154:	f8c0 1088 	str.w	r1, [r0, #136]	@ 0x88
c0de2158:	9936      	ldr	r1, [sp, #216]	@ 0xd8
c0de215a:	f8c0 1080 	str.w	r1, [r0, #128]	@ 0x80
c0de215e:	9935      	ldr	r1, [sp, #212]	@ 0xd4
c0de2160:	6781      	str	r1, [r0, #120]	@ 0x78
c0de2162:	9950      	ldr	r1, [sp, #320]	@ 0x140
c0de2164:	6701      	str	r1, [r0, #112]	@ 0x70
c0de2166:	994e      	ldr	r1, [sp, #312]	@ 0x138
c0de2168:	6681      	str	r1, [r0, #104]	@ 0x68
c0de216a:	9941      	ldr	r1, [sp, #260]	@ 0x104
c0de216c:	6601      	str	r1, [r0, #96]	@ 0x60
c0de216e:	9944      	ldr	r1, [sp, #272]	@ 0x110
c0de2170:	6581      	str	r1, [r0, #88]	@ 0x58
c0de2172:	9940      	ldr	r1, [sp, #256]	@ 0x100
c0de2174:	6501      	str	r1, [r0, #80]	@ 0x50
c0de2176:	9939      	ldr	r1, [sp, #228]	@ 0xe4
c0de2178:	6481      	str	r1, [r0, #72]	@ 0x48
c0de217a:	9945      	ldr	r1, [sp, #276]	@ 0x114
c0de217c:	6401      	str	r1, [r0, #64]	@ 0x40
c0de217e:	9937      	ldr	r1, [sp, #220]	@ 0xdc
c0de2180:	6381      	str	r1, [r0, #56]	@ 0x38
c0de2182:	9931      	ldr	r1, [sp, #196]	@ 0xc4
c0de2184:	6301      	str	r1, [r0, #48]	@ 0x30
c0de2186:	9933      	ldr	r1, [sp, #204]	@ 0xcc
c0de2188:	6281      	str	r1, [r0, #40]	@ 0x28
c0de218a:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de218c:	6201      	str	r1, [r0, #32]
c0de218e:	992e      	ldr	r1, [sp, #184]	@ 0xb8
c0de2190:	6181      	str	r1, [r0, #24]
c0de2192:	9959      	ldr	r1, [sp, #356]	@ 0x164
c0de2194:	6101      	str	r1, [r0, #16]
c0de2196:	995a      	ldr	r1, [sp, #360]	@ 0x168
c0de2198:	6001      	str	r1, [r0, #0]
c0de219a:	9956      	ldr	r1, [sp, #344]	@ 0x158
c0de219c:	f8c0 10c4 	str.w	r1, [r0, #196]	@ 0xc4
c0de21a0:	9954      	ldr	r1, [sp, #336]	@ 0x150
c0de21a2:	f8c0 10bc 	str.w	r1, [r0, #188]	@ 0xbc
c0de21a6:	994d      	ldr	r1, [sp, #308]	@ 0x134
c0de21a8:	f8c0 10b4 	str.w	r1, [r0, #180]	@ 0xb4
c0de21ac:	994f      	ldr	r1, [sp, #316]	@ 0x13c
c0de21ae:	f8c0 10ac 	str.w	r1, [r0, #172]	@ 0xac
c0de21b2:	992c      	ldr	r1, [sp, #176]	@ 0xb0
c0de21b4:	f8c0 10a4 	str.w	r1, [r0, #164]	@ 0xa4
c0de21b8:	993a      	ldr	r1, [sp, #232]	@ 0xe8
c0de21ba:	f8c0 109c 	str.w	r1, [r0, #156]	@ 0x9c
c0de21be:	9947      	ldr	r1, [sp, #284]	@ 0x11c
c0de21c0:	f8c0 1094 	str.w	r1, [r0, #148]	@ 0x94
c0de21c4:	994a      	ldr	r1, [sp, #296]	@ 0x128
c0de21c6:	f8c0 108c 	str.w	r1, [r0, #140]	@ 0x8c
c0de21ca:	993e      	ldr	r1, [sp, #248]	@ 0xf8
c0de21cc:	f8c0 1084 	str.w	r1, [r0, #132]	@ 0x84
c0de21d0:	993c      	ldr	r1, [sp, #240]	@ 0xf0
c0de21d2:	67c1      	str	r1, [r0, #124]	@ 0x7c
c0de21d4:	9955      	ldr	r1, [sp, #340]	@ 0x154
c0de21d6:	6741      	str	r1, [r0, #116]	@ 0x74
c0de21d8:	9952      	ldr	r1, [sp, #328]	@ 0x148
c0de21da:	66c1      	str	r1, [r0, #108]	@ 0x6c
c0de21dc:	9949      	ldr	r1, [sp, #292]	@ 0x124
c0de21de:	6641      	str	r1, [r0, #100]	@ 0x64
c0de21e0:	994b      	ldr	r1, [sp, #300]	@ 0x12c
c0de21e2:	65c1      	str	r1, [r0, #92]	@ 0x5c
c0de21e4:	9946      	ldr	r1, [sp, #280]	@ 0x118
c0de21e6:	6541      	str	r1, [r0, #84]	@ 0x54
c0de21e8:	993b      	ldr	r1, [sp, #236]	@ 0xec
c0de21ea:	64c1      	str	r1, [r0, #76]	@ 0x4c
c0de21ec:	994c      	ldr	r1, [sp, #304]	@ 0x130
c0de21ee:	6441      	str	r1, [r0, #68]	@ 0x44
c0de21f0:	9938      	ldr	r1, [sp, #224]	@ 0xe0
c0de21f2:	63c1      	str	r1, [r0, #60]	@ 0x3c
c0de21f4:	9932      	ldr	r1, [sp, #200]	@ 0xc8
c0de21f6:	6341      	str	r1, [r0, #52]	@ 0x34
c0de21f8:	993d      	ldr	r1, [sp, #244]	@ 0xf4
c0de21fa:	62c1      	str	r1, [r0, #44]	@ 0x2c
c0de21fc:	9930      	ldr	r1, [sp, #192]	@ 0xc0
c0de21fe:	61c1      	str	r1, [r0, #28]
c0de2200:	995c      	ldr	r1, [sp, #368]	@ 0x170
c0de2202:	6141      	str	r1, [r0, #20]
c0de2204:	995b      	ldr	r1, [sp, #364]	@ 0x16c
c0de2206:	6041      	str	r1, [r0, #4]
c0de2208:	b05e      	add	sp, #376	@ 0x178
c0de220a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de220e <store64>:
c0de220e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2210:	461c      	mov	r4, r3
c0de2212:	4615      	mov	r5, r2
c0de2214:	4606      	mov	r6, r0
c0de2216:	2700      	movs	r7, #0
c0de2218:	2f40      	cmp	r7, #64	@ 0x40
c0de221a:	bf08      	it	eq
c0de221c:	bdf8      	popeq	{r3, r4, r5, r6, r7, pc}
c0de221e:	4628      	mov	r0, r5
c0de2220:	4621      	mov	r1, r4
c0de2222:	463a      	mov	r2, r7
c0de2224:	f00a f810 	bl	c0dec248 <__aeabi_llsr>
c0de2228:	f806 0b01 	strb.w	r0, [r6], #1
c0de222c:	3708      	adds	r7, #8
c0de222e:	e7f3      	b.n	c0de2218 <store64+0xa>

c0de2230 <OUTLINED_FUNCTION_0>:
c0de2230:	58b3      	ldr	r3, [r6, r2]
c0de2232:	4058      	eors	r0, r3
c0de2234:	50b0      	str	r0, [r6, r2]
c0de2236:	18b0      	adds	r0, r6, r2
c0de2238:	6842      	ldr	r2, [r0, #4]
c0de223a:	4051      	eors	r1, r2
c0de223c:	6041      	str	r1, [r0, #4]
c0de223e:	4770      	bx	lr

c0de2240 <OUTLINED_FUNCTION_2>:
c0de2240:	58a3      	ldr	r3, [r4, r2]
c0de2242:	4058      	eors	r0, r3
c0de2244:	50a0      	str	r0, [r4, r2]
c0de2246:	18a0      	adds	r0, r4, r2
c0de2248:	6842      	ldr	r2, [r0, #4]
c0de224a:	4051      	eors	r1, r2
c0de224c:	6041      	str	r1, [r0, #4]
c0de224e:	4770      	bx	lr

c0de2250 <OUTLINED_FUNCTION_3>:
c0de2250:	f8c4 00c8 	str.w	r0, [r4, #200]	@ 0xc8
c0de2254:	bd1c      	pop	{r2, r3, r4, pc}

c0de2256 <keccak_init>:
c0de2256:	2106      	movs	r1, #6
c0de2258:	2220      	movs	r2, #32
c0de225a:	f008 bf82 	b.w	c0deb162 <cx_hash_init_ex>

c0de225e <keccak_update>:
c0de225e:	f008 bf85 	b.w	c0deb16c <cx_hash_update>

c0de2262 <keccak_final>:
c0de2262:	f008 bf79 	b.w	c0deb158 <cx_hash_final>

c0de2266 <inner_keccak256_init>:
c0de2266:	b160      	cbz	r0, c0de2282 <inner_keccak256_init+0x1c>
c0de2268:	b510      	push	{r4, lr}
c0de226a:	212c      	movs	r1, #44	@ 0x2c
c0de226c:	4604      	mov	r4, r0
c0de226e:	f00a f991 	bl	c0dec594 <__aeabi_memclr>
c0de2272:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de2276:	f7ff ffee 	bl	c0de2256 <keccak_init>
c0de227a:	2000      	movs	r0, #0
c0de227c:	e9c4 007e 	strd	r0, r0, [r4, #504]	@ 0x1f8
c0de2280:	bd10      	pop	{r4, pc}
c0de2282:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de2286:	4770      	bx	lr

c0de2288 <inner_keccak256_inject>:
c0de2288:	b580      	push	{r7, lr}
c0de228a:	4603      	mov	r3, r0
c0de228c:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de2290:	b15b      	cbz	r3, c0de22aa <inner_keccak256_inject+0x22>
c0de2292:	b151      	cbz	r1, c0de22aa <inner_keccak256_inject+0x22>
c0de2294:	6a98      	ldr	r0, [r3, #40]	@ 0x28
c0de2296:	b110      	cbz	r0, c0de229e <inner_keccak256_inject+0x16>
c0de2298:	f06f 0001 	mvn.w	r0, #1
c0de229c:	bd80      	pop	{r7, pc}
c0de229e:	f103 0030 	add.w	r0, r3, #48	@ 0x30
c0de22a2:	b292      	uxth	r2, r2
c0de22a4:	f7ff ffdb 	bl	c0de225e <keccak_update>
c0de22a8:	2000      	movs	r0, #0
c0de22aa:	bd80      	pop	{r7, pc}

c0de22ac <inner_keccak256_flip>:
c0de22ac:	b510      	push	{r4, lr}
c0de22ae:	b128      	cbz	r0, c0de22bc <inner_keccak256_flip+0x10>
c0de22b0:	4604      	mov	r4, r0
c0de22b2:	6a80      	ldr	r0, [r0, #40]	@ 0x28
c0de22b4:	b128      	cbz	r0, c0de22c2 <inner_keccak256_flip+0x16>
c0de22b6:	f06f 0001 	mvn.w	r0, #1
c0de22ba:	bd10      	pop	{r4, pc}
c0de22bc:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de22c0:	bd10      	pop	{r4, pc}
c0de22c2:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de22c6:	4621      	mov	r1, r4
c0de22c8:	f7ff ffcb 	bl	c0de2262 <keccak_final>
c0de22cc:	2000      	movs	r0, #0
c0de22ce:	2101      	movs	r1, #1
c0de22d0:	e9c4 007e 	strd	r0, r0, [r4, #504]	@ 0x1f8
c0de22d4:	62a1      	str	r1, [r4, #40]	@ 0x28
c0de22d6:	bd10      	pop	{r4, pc}

c0de22d8 <inner_keccak256_extract>:
c0de22d8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de22dc:	b0f8      	sub	sp, #480	@ 0x1e0
c0de22de:	4682      	mov	sl, r0
c0de22e0:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de22e4:	f1ba 0f00 	cmp.w	sl, #0
c0de22e8:	d020      	beq.n	c0de232c <inner_keccak256_extract+0x54>
c0de22ea:	460e      	mov	r6, r1
c0de22ec:	b1f1      	cbz	r1, c0de232c <inner_keccak256_extract+0x54>
c0de22ee:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de22f2:	b1c8      	cbz	r0, c0de2328 <inner_keccak256_extract+0x50>
c0de22f4:	e9da 017e 	ldrd	r0, r1, [sl, #504]	@ 0x1f8
c0de22f8:	4615      	mov	r5, r2
c0de22fa:	4281      	cmp	r1, r0
c0de22fc:	d919      	bls.n	c0de2332 <inner_keccak256_extract+0x5a>
c0de22fe:	1a0c      	subs	r4, r1, r0
c0de2300:	4450      	add	r0, sl
c0de2302:	46a3      	mov	fp, r4
c0de2304:	42ac      	cmp	r4, r5
c0de2306:	f500 71ec 	add.w	r1, r0, #472	@ 0x1d8
c0de230a:	4630      	mov	r0, r6
c0de230c:	bf88      	it	hi
c0de230e:	46ab      	movhi	fp, r5
c0de2310:	465a      	mov	r2, fp
c0de2312:	f00a f942 	bl	c0dec59a <__aeabi_memcpy>
c0de2316:	f8da 01f8 	ldr.w	r0, [sl, #504]	@ 0x1f8
c0de231a:	42ac      	cmp	r4, r5
c0de231c:	4458      	add	r0, fp
c0de231e:	f8ca 01f8 	str.w	r0, [sl, #504]	@ 0x1f8
c0de2322:	d308      	bcc.n	c0de2336 <inner_keccak256_extract+0x5e>
c0de2324:	2000      	movs	r0, #0
c0de2326:	e001      	b.n	c0de232c <inner_keccak256_extract+0x54>
c0de2328:	f06f 0001 	mvn.w	r0, #1
c0de232c:	b078      	add	sp, #480	@ 0x1e0
c0de232e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2332:	f04f 0b00 	mov.w	fp, #0
c0de2336:	ac6e      	add	r4, sp, #440	@ 0x1b8
c0de2338:	9503      	str	r5, [sp, #12]
c0de233a:	f104 0020 	add.w	r0, r4, #32
c0de233e:	9002      	str	r0, [sp, #8]
c0de2340:	f50a 70ec 	add.w	r0, sl, #472	@ 0x1d8
c0de2344:	e9cd 0600 	strd	r0, r6, [sp]
c0de2348:	45ab      	cmp	fp, r5
c0de234a:	d2eb      	bcs.n	c0de2324 <inner_keccak256_extract+0x4c>
c0de234c:	4620      	mov	r0, r4
c0de234e:	4651      	mov	r1, sl
c0de2350:	2220      	movs	r2, #32
c0de2352:	46a0      	mov	r8, r4
c0de2354:	f00a f921 	bl	c0dec59a <__aeabi_memcpy>
c0de2358:	e9da 5408 	ldrd	r5, r4, [sl, #32]
c0de235c:	9f02      	ldr	r7, [sp, #8]
c0de235e:	2638      	movs	r6, #56	@ 0x38
c0de2360:	f116 0008 	adds.w	r0, r6, #8
c0de2364:	d008      	beq.n	c0de2378 <inner_keccak256_extract+0xa0>
c0de2366:	4628      	mov	r0, r5
c0de2368:	4621      	mov	r1, r4
c0de236a:	4632      	mov	r2, r6
c0de236c:	f009 ff6c 	bl	c0dec248 <__aeabi_llsr>
c0de2370:	f807 0b01 	strb.w	r0, [r7], #1
c0de2374:	3e08      	subs	r6, #8
c0de2376:	e7f3      	b.n	c0de2360 <inner_keccak256_extract+0x88>
c0de2378:	af04      	add	r7, sp, #16
c0de237a:	4638      	mov	r0, r7
c0de237c:	f7ff ff6b 	bl	c0de2256 <keccak_init>
c0de2380:	4638      	mov	r0, r7
c0de2382:	4641      	mov	r1, r8
c0de2384:	2228      	movs	r2, #40	@ 0x28
c0de2386:	4644      	mov	r4, r8
c0de2388:	f7ff ff69 	bl	c0de225e <keccak_update>
c0de238c:	9d03      	ldr	r5, [sp, #12]
c0de238e:	eba5 080b 	sub.w	r8, r5, fp
c0de2392:	f1b8 0f1f 	cmp.w	r8, #31
c0de2396:	d90b      	bls.n	c0de23b0 <inner_keccak256_extract+0xd8>
c0de2398:	9e01      	ldr	r6, [sp, #4]
c0de239a:	4638      	mov	r0, r7
c0de239c:	eb06 010b 	add.w	r1, r6, fp
c0de23a0:	f7ff ff5f 	bl	c0de2262 <keccak_final>
c0de23a4:	f10b 0b20 	add.w	fp, fp, #32
c0de23a8:	f04f 0800 	mov.w	r8, #0
c0de23ac:	2000      	movs	r0, #0
c0de23ae:	e00d      	b.n	c0de23cc <inner_keccak256_extract+0xf4>
c0de23b0:	4638      	mov	r0, r7
c0de23b2:	9f00      	ldr	r7, [sp, #0]
c0de23b4:	4639      	mov	r1, r7
c0de23b6:	f7ff ff54 	bl	c0de2262 <keccak_final>
c0de23ba:	9e01      	ldr	r6, [sp, #4]
c0de23bc:	4639      	mov	r1, r7
c0de23be:	4642      	mov	r2, r8
c0de23c0:	eb06 000b 	add.w	r0, r6, fp
c0de23c4:	f00a f8e9 	bl	c0dec59a <__aeabi_memcpy>
c0de23c8:	2020      	movs	r0, #32
c0de23ca:	46ab      	mov	fp, r5
c0de23cc:	e9ca 807e 	strd	r8, r0, [sl, #504]	@ 0x1f8
c0de23d0:	e9da 0108 	ldrd	r0, r1, [sl, #32]
c0de23d4:	3001      	adds	r0, #1
c0de23d6:	f141 0100 	adc.w	r1, r1, #0
c0de23da:	e9ca 0108 	strd	r0, r1, [sl, #32]
c0de23de:	e7b3      	b.n	c0de2348 <inner_keccak256_extract+0x70>

c0de23e0 <pqcrystals_dilithium2_lowram_pack_sig_h>:
c0de23e0:	b5b0      	push	{r4, r5, r7, lr}
c0de23e2:	f500 6012 	add.w	r0, r0, #2336	@ 0x920
c0de23e6:	2400      	movs	r4, #0
c0de23e8:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
c0de23ec:	d009      	beq.n	c0de2402 <pqcrystals_dilithium2_lowram_pack_sig_h+0x22>
c0de23ee:	f851 5024 	ldr.w	r5, [r1, r4, lsl #2]
c0de23f2:	b125      	cbz	r5, c0de23fe <pqcrystals_dilithium2_lowram_pack_sig_h+0x1e>
c0de23f4:	681d      	ldr	r5, [r3, #0]
c0de23f6:	5544      	strb	r4, [r0, r5]
c0de23f8:	681d      	ldr	r5, [r3, #0]
c0de23fa:	3501      	adds	r5, #1
c0de23fc:	601d      	str	r5, [r3, #0]
c0de23fe:	3401      	adds	r4, #1
c0de2400:	e7f2      	b.n	c0de23e8 <pqcrystals_dilithium2_lowram_pack_sig_h+0x8>
c0de2402:	6819      	ldr	r1, [r3, #0]
c0de2404:	4410      	add	r0, r2
c0de2406:	f880 1050 	strb.w	r1, [r0, #80]	@ 0x50
c0de240a:	bdb0      	pop	{r4, r5, r7, pc}

c0de240c <pqcrystals_dilithium2_lowram_pack_sig_h_zero>:
c0de240c:	680a      	ldr	r2, [r1, #0]
c0de240e:	f500 6012 	add.w	r0, r0, #2336	@ 0x920
c0de2412:	2300      	movs	r3, #0
c0de2414:	2a4f      	cmp	r2, #79	@ 0x4f
c0de2416:	bf88      	it	hi
c0de2418:	4770      	bxhi	lr
c0de241a:	5483      	strb	r3, [r0, r2]
c0de241c:	680a      	ldr	r2, [r1, #0]
c0de241e:	3201      	adds	r2, #1
c0de2420:	600a      	str	r2, [r1, #0]
c0de2422:	e7f7      	b.n	c0de2414 <pqcrystals_dilithium2_lowram_pack_sig_h_zero+0x8>

c0de2424 <poly_challenge_compress>:
c0de2424:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2428:	2200      	movs	r2, #0
c0de242a:	2300      	movs	r3, #0
c0de242c:	2b44      	cmp	r3, #68	@ 0x44
c0de242e:	d002      	beq.n	c0de2436 <poly_challenge_compress+0x12>
c0de2430:	54c2      	strb	r2, [r0, r3]
c0de2432:	3301      	adds	r3, #1
c0de2434:	e7fa      	b.n	c0de242c <poly_challenge_compress+0x8>
c0de2436:	2200      	movs	r2, #0
c0de2438:	2301      	movs	r3, #1
c0de243a:	2600      	movs	r6, #0
c0de243c:	f04f 0800 	mov.w	r8, #0
c0de2440:	2500      	movs	r5, #0
c0de2442:	2700      	movs	r7, #0
c0de2444:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de2448:	d011      	beq.n	c0de246e <poly_challenge_compress+0x4a>
c0de244a:	f851 4022 	ldr.w	r4, [r1, r2, lsl #2]
c0de244e:	b164      	cbz	r4, c0de246a <poly_challenge_compress+0x46>
c0de2450:	5582      	strb	r2, [r0, r6]
c0de2452:	f851 4022 	ldr.w	r4, [r1, r2, lsl #2]
c0de2456:	3401      	adds	r4, #1
c0de2458:	bf04      	itt	eq
c0de245a:	433d      	orreq	r5, r7
c0de245c:	ea48 0803 	orreq.w	r8, r8, r3
c0de2460:	007c      	lsls	r4, r7, #1
c0de2462:	3601      	adds	r6, #1
c0de2464:	ea44 77d3 	orr.w	r7, r4, r3, lsr #31
c0de2468:	005b      	lsls	r3, r3, #1
c0de246a:	3201      	adds	r2, #1
c0de246c:	e7ea      	b.n	c0de2444 <poly_challenge_compress+0x20>
c0de246e:	f100 073c 	add.w	r7, r0, #60	@ 0x3c
c0de2472:	2600      	movs	r6, #0
c0de2474:	2e40      	cmp	r6, #64	@ 0x40
c0de2476:	bf08      	it	eq
c0de2478:	e8bd 81f0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de247c:	4640      	mov	r0, r8
c0de247e:	4629      	mov	r1, r5
c0de2480:	4632      	mov	r2, r6
c0de2482:	f009 fee1 	bl	c0dec248 <__aeabi_llsr>
c0de2486:	f807 0b01 	strb.w	r0, [r7], #1
c0de248a:	3608      	adds	r6, #8
c0de248c:	e7f2      	b.n	c0de2474 <poly_challenge_compress+0x50>

c0de248e <poly_challenge_decompress>:
c0de248e:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2492:	4688      	mov	r8, r1
c0de2494:	4682      	mov	sl, r0
c0de2496:	2000      	movs	r0, #0
c0de2498:	2100      	movs	r1, #0
c0de249a:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de249e:	d003      	beq.n	c0de24a8 <poly_challenge_decompress+0x1a>
c0de24a0:	f84a 0021 	str.w	r0, [sl, r1, lsl #2]
c0de24a4:	3101      	adds	r1, #1
c0de24a6:	e7f8      	b.n	c0de249a <poly_challenge_decompress+0xc>
c0de24a8:	f108 053c 	add.w	r5, r8, #60	@ 0x3c
c0de24ac:	2600      	movs	r6, #0
c0de24ae:	2700      	movs	r7, #0
c0de24b0:	2400      	movs	r4, #0
c0de24b2:	2e40      	cmp	r6, #64	@ 0x40
c0de24b4:	d009      	beq.n	c0de24ca <poly_challenge_decompress+0x3c>
c0de24b6:	f815 0b01 	ldrb.w	r0, [r5], #1
c0de24ba:	2100      	movs	r1, #0
c0de24bc:	4632      	mov	r2, r6
c0de24be:	f009 fecf 	bl	c0dec260 <__aeabi_llsl>
c0de24c2:	430c      	orrs	r4, r1
c0de24c4:	4307      	orrs	r7, r0
c0de24c6:	3608      	adds	r6, #8
c0de24c8:	e7f3      	b.n	c0de24b2 <poly_challenge_decompress+0x24>
c0de24ca:	2000      	movs	r0, #0
c0de24cc:	2827      	cmp	r0, #39	@ 0x27
c0de24ce:	bf08      	it	eq
c0de24d0:	e8bd 85f8 	ldmiaeq.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de24d4:	07fa      	lsls	r2, r7, #31
c0de24d6:	f818 1000 	ldrb.w	r1, [r8, r0]
c0de24da:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de24de:	bf08      	it	eq
c0de24e0:	2201      	moveq	r2, #1
c0de24e2:	ea5f 0454 	movs.w	r4, r4, lsr #1
c0de24e6:	f84a 2021 	str.w	r2, [sl, r1, lsl #2]
c0de24ea:	ea4f 0737 	mov.w	r7, r7, rrx
c0de24ee:	3001      	adds	r0, #1
c0de24f0:	e7ec      	b.n	c0de24cc <poly_challenge_decompress+0x3e>

c0de24f2 <poly_schoolbook>:
c0de24f2:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de24f6:	4614      	mov	r4, r2
c0de24f8:	468a      	mov	sl, r1
c0de24fa:	2200      	movs	r2, #0
c0de24fc:	2100      	movs	r1, #0
c0de24fe:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de2502:	d003      	beq.n	c0de250c <poly_schoolbook+0x1a>
c0de2504:	f840 2021 	str.w	r2, [r0, r1, lsl #2]
c0de2508:	3101      	adds	r1, #1
c0de250a:	e7f8      	b.n	c0de24fe <poly_schoolbook+0xc>
c0de250c:	f10a 053c 	add.w	r5, sl, #60	@ 0x3c
c0de2510:	2700      	movs	r7, #0
c0de2512:	f04f 0b00 	mov.w	fp, #0
c0de2516:	2600      	movs	r6, #0
c0de2518:	9003      	str	r0, [sp, #12]
c0de251a:	2f40      	cmp	r7, #64	@ 0x40
c0de251c:	d006      	beq.n	c0de252c <poly_schoolbook+0x3a>
c0de251e:	f000 fc0a 	bl	c0de2d36 <OUTLINED_FUNCTION_2>
c0de2522:	430e      	orrs	r6, r1
c0de2524:	ea4b 0b00 	orr.w	fp, fp, r0
c0de2528:	3708      	adds	r7, #8
c0de252a:	e7f6      	b.n	c0de251a <poly_schoolbook+0x28>
c0de252c:	f04f 0800 	mov.w	r8, #0
c0de2530:	f8cd a004 	str.w	sl, [sp, #4]
c0de2534:	f1b8 0f27 	cmp.w	r8, #39	@ 0x27
c0de2538:	bf08      	it	eq
c0de253a:	e8bd 8dff 	ldmiaeq.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de253e:	f81a 0008 	ldrb.w	r0, [sl, r8]
c0de2542:	ea5f 71cb 	movs.w	r1, fp, lsl #31
c0de2546:	f5c0 7780 	rsb	r7, r0, #256	@ 0x100
c0de254a:	d111      	bne.n	c0de2570 <poly_schoolbook+0x7e>
c0de254c:	9903      	ldr	r1, [sp, #12]
c0de254e:	9602      	str	r6, [sp, #8]
c0de2550:	2500      	movs	r5, #0
c0de2552:	eb01 0680 	add.w	r6, r1, r0, lsl #2
c0de2556:	42af      	cmp	r7, r5
c0de2558:	d01b      	beq.n	c0de2592 <poly_schoolbook+0xa0>
c0de255a:	4620      	mov	r0, r4
c0de255c:	4629      	mov	r1, r5
c0de255e:	f000 f842 	bl	c0de25e6 <polyt0_unpack_idx>
c0de2562:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de2566:	4408      	add	r0, r1
c0de2568:	f846 0025 	str.w	r0, [r6, r5, lsl #2]
c0de256c:	3501      	adds	r5, #1
c0de256e:	e7f2      	b.n	c0de2556 <poly_schoolbook+0x64>
c0de2570:	9903      	ldr	r1, [sp, #12]
c0de2572:	2500      	movs	r5, #0
c0de2574:	eb01 0a80 	add.w	sl, r1, r0, lsl #2
c0de2578:	42af      	cmp	r7, r5
c0de257a:	d01b      	beq.n	c0de25b4 <poly_schoolbook+0xc2>
c0de257c:	4620      	mov	r0, r4
c0de257e:	4629      	mov	r1, r5
c0de2580:	f000 f831 	bl	c0de25e6 <polyt0_unpack_idx>
c0de2584:	f85a 1025 	ldr.w	r1, [sl, r5, lsl #2]
c0de2588:	1a08      	subs	r0, r1, r0
c0de258a:	f84a 0025 	str.w	r0, [sl, r5, lsl #2]
c0de258e:	3501      	adds	r5, #1
c0de2590:	e7f2      	b.n	c0de2578 <poly_schoolbook+0x86>
c0de2592:	f5a6 6580 	sub.w	r5, r6, #1024	@ 0x400
c0de2596:	9e02      	ldr	r6, [sp, #8]
c0de2598:	f5b7 7f80 	cmp.w	r7, #256	@ 0x100
c0de259c:	d01c      	beq.n	c0de25d8 <poly_schoolbook+0xe6>
c0de259e:	4620      	mov	r0, r4
c0de25a0:	4639      	mov	r1, r7
c0de25a2:	f000 f820 	bl	c0de25e6 <polyt0_unpack_idx>
c0de25a6:	f855 1027 	ldr.w	r1, [r5, r7, lsl #2]
c0de25aa:	1a08      	subs	r0, r1, r0
c0de25ac:	f845 0027 	str.w	r0, [r5, r7, lsl #2]
c0de25b0:	3701      	adds	r7, #1
c0de25b2:	e7f1      	b.n	c0de2598 <poly_schoolbook+0xa6>
c0de25b4:	f5aa 6580 	sub.w	r5, sl, #1024	@ 0x400
c0de25b8:	f8dd a004 	ldr.w	sl, [sp, #4]
c0de25bc:	f5b7 7f80 	cmp.w	r7, #256	@ 0x100
c0de25c0:	d00a      	beq.n	c0de25d8 <poly_schoolbook+0xe6>
c0de25c2:	4620      	mov	r0, r4
c0de25c4:	4639      	mov	r1, r7
c0de25c6:	f000 f80e 	bl	c0de25e6 <polyt0_unpack_idx>
c0de25ca:	f855 1027 	ldr.w	r1, [r5, r7, lsl #2]
c0de25ce:	4408      	add	r0, r1
c0de25d0:	f845 0027 	str.w	r0, [r5, r7, lsl #2]
c0de25d4:	3701      	adds	r7, #1
c0de25d6:	e7f1      	b.n	c0de25bc <poly_schoolbook+0xca>
c0de25d8:	ea5f 0656 	movs.w	r6, r6, lsr #1
c0de25dc:	f108 0801 	add.w	r8, r8, #1
c0de25e0:	ea4f 0b3b 	mov.w	fp, fp, rrx
c0de25e4:	e7a6      	b.n	c0de2534 <poly_schoolbook+0x42>

c0de25e6 <polyt0_unpack_idx>:
c0de25e6:	08ca      	lsrs	r2, r1, #3
c0de25e8:	230d      	movs	r3, #13
c0de25ea:	f001 0107 	and.w	r1, r1, #7
c0de25ee:	fb02 0003 	mla	r0, r2, r3, r0
c0de25f2:	2906      	cmp	r1, #6
c0de25f4:	d00e      	beq.n	c0de2614 <polyt0_unpack_idx+0x2e>
c0de25f6:	2901      	cmp	r1, #1
c0de25f8:	d014      	beq.n	c0de2624 <polyt0_unpack_idx+0x3e>
c0de25fa:	2902      	cmp	r1, #2
c0de25fc:	d01a      	beq.n	c0de2634 <polyt0_unpack_idx+0x4e>
c0de25fe:	2903      	cmp	r1, #3
c0de2600:	d01d      	beq.n	c0de263e <polyt0_unpack_idx+0x58>
c0de2602:	2904      	cmp	r1, #4
c0de2604:	d023      	beq.n	c0de264e <polyt0_unpack_idx+0x68>
c0de2606:	2905      	cmp	r1, #5
c0de2608:	d029      	beq.n	c0de265e <polyt0_unpack_idx+0x78>
c0de260a:	bb69      	cbnz	r1, c0de2668 <polyt0_unpack_idx+0x82>
c0de260c:	7801      	ldrb	r1, [r0, #0]
c0de260e:	7840      	ldrb	r0, [r0, #1]
c0de2610:	0200      	lsls	r0, r0, #8
c0de2612:	e02d      	b.n	c0de2670 <polyt0_unpack_idx+0x8a>
c0de2614:	7a82      	ldrb	r2, [r0, #10]
c0de2616:	7a41      	ldrb	r1, [r0, #9]
c0de2618:	7ac3      	ldrb	r3, [r0, #11]
c0de261a:	0090      	lsls	r0, r2, #2
c0de261c:	ea40 1091 	orr.w	r0, r0, r1, lsr #6
c0de2620:	0299      	lsls	r1, r3, #10
c0de2622:	e025      	b.n	c0de2670 <polyt0_unpack_idx+0x8a>
c0de2624:	7882      	ldrb	r2, [r0, #2]
c0de2626:	7841      	ldrb	r1, [r0, #1]
c0de2628:	78c3      	ldrb	r3, [r0, #3]
c0de262a:	00d0      	lsls	r0, r2, #3
c0de262c:	ea40 1051 	orr.w	r0, r0, r1, lsr #5
c0de2630:	02d9      	lsls	r1, r3, #11
c0de2632:	e01d      	b.n	c0de2670 <polyt0_unpack_idx+0x8a>
c0de2634:	78c1      	ldrb	r1, [r0, #3]
c0de2636:	7900      	ldrb	r0, [r0, #4]
c0de2638:	0180      	lsls	r0, r0, #6
c0de263a:	0889      	lsrs	r1, r1, #2
c0de263c:	e018      	b.n	c0de2670 <polyt0_unpack_idx+0x8a>
c0de263e:	7942      	ldrb	r2, [r0, #5]
c0de2640:	7901      	ldrb	r1, [r0, #4]
c0de2642:	7983      	ldrb	r3, [r0, #6]
c0de2644:	0050      	lsls	r0, r2, #1
c0de2646:	ea40 10d1 	orr.w	r0, r0, r1, lsr #7
c0de264a:	0259      	lsls	r1, r3, #9
c0de264c:	e010      	b.n	c0de2670 <polyt0_unpack_idx+0x8a>
c0de264e:	79c2      	ldrb	r2, [r0, #7]
c0de2650:	7981      	ldrb	r1, [r0, #6]
c0de2652:	7a03      	ldrb	r3, [r0, #8]
c0de2654:	0110      	lsls	r0, r2, #4
c0de2656:	ea40 1011 	orr.w	r0, r0, r1, lsr #4
c0de265a:	0319      	lsls	r1, r3, #12
c0de265c:	e008      	b.n	c0de2670 <polyt0_unpack_idx+0x8a>
c0de265e:	7a01      	ldrb	r1, [r0, #8]
c0de2660:	7a40      	ldrb	r0, [r0, #9]
c0de2662:	01c0      	lsls	r0, r0, #7
c0de2664:	0849      	lsrs	r1, r1, #1
c0de2666:	e003      	b.n	c0de2670 <polyt0_unpack_idx+0x8a>
c0de2668:	7ac1      	ldrb	r1, [r0, #11]
c0de266a:	7b00      	ldrb	r0, [r0, #12]
c0de266c:	0140      	lsls	r0, r0, #5
c0de266e:	08c9      	lsrs	r1, r1, #3
c0de2670:	4308      	orrs	r0, r1
c0de2672:	f36f 305f 	bfc	r0, #13, #19
c0de2676:	f5c0 5080 	rsb	r0, r0, #4096	@ 0x1000
c0de267a:	4770      	bx	lr

c0de267c <poly_schoolbook_t1>:
c0de267c:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2680:	4614      	mov	r4, r2
c0de2682:	468b      	mov	fp, r1
c0de2684:	2200      	movs	r2, #0
c0de2686:	2100      	movs	r1, #0
c0de2688:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de268c:	d003      	beq.n	c0de2696 <poly_schoolbook_t1+0x1a>
c0de268e:	f840 2021 	str.w	r2, [r0, r1, lsl #2]
c0de2692:	3101      	adds	r1, #1
c0de2694:	e7f8      	b.n	c0de2688 <poly_schoolbook_t1+0xc>
c0de2696:	f10b 053c 	add.w	r5, fp, #60	@ 0x3c
c0de269a:	2700      	movs	r7, #0
c0de269c:	f04f 0a00 	mov.w	sl, #0
c0de26a0:	2600      	movs	r6, #0
c0de26a2:	9002      	str	r0, [sp, #8]
c0de26a4:	2f40      	cmp	r7, #64	@ 0x40
c0de26a6:	d006      	beq.n	c0de26b6 <poly_schoolbook_t1+0x3a>
c0de26a8:	f000 fb45 	bl	c0de2d36 <OUTLINED_FUNCTION_2>
c0de26ac:	430e      	orrs	r6, r1
c0de26ae:	ea4a 0a00 	orr.w	sl, sl, r0
c0de26b2:	3708      	adds	r7, #8
c0de26b4:	e7f6      	b.n	c0de26a4 <poly_schoolbook_t1+0x28>
c0de26b6:	4832      	ldr	r0, [pc, #200]	@ (c0de2780 <poly_schoolbook_t1+0x104>)
c0de26b8:	2200      	movs	r2, #0
c0de26ba:	f8cd b000 	str.w	fp, [sp]
c0de26be:	4680      	mov	r8, r0
c0de26c0:	2a27      	cmp	r2, #39	@ 0x27
c0de26c2:	bf08      	it	eq
c0de26c4:	e8bd 8dff 	ldmiaeq.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de26c8:	f81b 0002 	ldrb.w	r0, [fp, r2]
c0de26cc:	ea5f 71ca 	movs.w	r1, sl, lsl #31
c0de26d0:	9203      	str	r2, [sp, #12]
c0de26d2:	f5c0 7780 	rsb	r7, r0, #256	@ 0x100
c0de26d6:	d112      	bne.n	c0de26fe <poly_schoolbook_t1+0x82>
c0de26d8:	9902      	ldr	r1, [sp, #8]
c0de26da:	9601      	str	r6, [sp, #4]
c0de26dc:	2500      	movs	r5, #0
c0de26de:	eb01 0680 	add.w	r6, r1, r0, lsl #2
c0de26e2:	42af      	cmp	r7, r5
c0de26e4:	d01e      	beq.n	c0de2724 <poly_schoolbook_t1+0xa8>
c0de26e6:	4620      	mov	r0, r4
c0de26e8:	4629      	mov	r1, r5
c0de26ea:	f000 f84b 	bl	c0de2784 <polyt1_unpack_idx>
c0de26ee:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de26f2:	eb01 3040 	add.w	r0, r1, r0, lsl #13
c0de26f6:	f846 0025 	str.w	r0, [r6, r5, lsl #2]
c0de26fa:	3501      	adds	r5, #1
c0de26fc:	e7f1      	b.n	c0de26e2 <poly_schoolbook_t1+0x66>
c0de26fe:	9902      	ldr	r1, [sp, #8]
c0de2700:	2500      	movs	r5, #0
c0de2702:	eb01 0b80 	add.w	fp, r1, r0, lsl #2
c0de2706:	42af      	cmp	r7, r5
c0de2708:	d01f      	beq.n	c0de274a <poly_schoolbook_t1+0xce>
c0de270a:	4620      	mov	r0, r4
c0de270c:	4629      	mov	r1, r5
c0de270e:	f000 f839 	bl	c0de2784 <polyt1_unpack_idx>
c0de2712:	f85b 1025 	ldr.w	r1, [fp, r5, lsl #2]
c0de2716:	4642      	mov	r2, r8
c0de2718:	fb00 1008 	mla	r0, r0, r8, r1
c0de271c:	f84b 0025 	str.w	r0, [fp, r5, lsl #2]
c0de2720:	3501      	adds	r5, #1
c0de2722:	e7f0      	b.n	c0de2706 <poly_schoolbook_t1+0x8a>
c0de2724:	f5a6 6580 	sub.w	r5, r6, #1024	@ 0x400
c0de2728:	9e01      	ldr	r6, [sp, #4]
c0de272a:	f5b7 7f80 	cmp.w	r7, #256	@ 0x100
c0de272e:	d01f      	beq.n	c0de2770 <poly_schoolbook_t1+0xf4>
c0de2730:	4620      	mov	r0, r4
c0de2732:	4639      	mov	r1, r7
c0de2734:	f000 f826 	bl	c0de2784 <polyt1_unpack_idx>
c0de2738:	f855 1027 	ldr.w	r1, [r5, r7, lsl #2]
c0de273c:	4642      	mov	r2, r8
c0de273e:	fb00 1008 	mla	r0, r0, r8, r1
c0de2742:	f845 0027 	str.w	r0, [r5, r7, lsl #2]
c0de2746:	3701      	adds	r7, #1
c0de2748:	e7ef      	b.n	c0de272a <poly_schoolbook_t1+0xae>
c0de274a:	f5ab 6580 	sub.w	r5, fp, #1024	@ 0x400
c0de274e:	f8dd b000 	ldr.w	fp, [sp]
c0de2752:	f5b7 7f80 	cmp.w	r7, #256	@ 0x100
c0de2756:	d00b      	beq.n	c0de2770 <poly_schoolbook_t1+0xf4>
c0de2758:	4620      	mov	r0, r4
c0de275a:	4639      	mov	r1, r7
c0de275c:	f000 f812 	bl	c0de2784 <polyt1_unpack_idx>
c0de2760:	f855 1027 	ldr.w	r1, [r5, r7, lsl #2]
c0de2764:	eb01 3040 	add.w	r0, r1, r0, lsl #13
c0de2768:	f845 0027 	str.w	r0, [r5, r7, lsl #2]
c0de276c:	3701      	adds	r7, #1
c0de276e:	e7f0      	b.n	c0de2752 <poly_schoolbook_t1+0xd6>
c0de2770:	9a03      	ldr	r2, [sp, #12]
c0de2772:	ea5f 0656 	movs.w	r6, r6, lsr #1
c0de2776:	ea4f 0a3a 	mov.w	sl, sl, rrx
c0de277a:	3201      	adds	r2, #1
c0de277c:	e7a0      	b.n	c0de26c0 <poly_schoolbook_t1+0x44>
c0de277e:	bf00      	nop
c0de2780:	ffffe000 	.word	0xffffe000

c0de2784 <polyt1_unpack_idx>:
c0de2784:	088a      	lsrs	r2, r1, #2
c0de2786:	f001 0103 	and.w	r1, r1, #3
c0de278a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
c0de278e:	2902      	cmp	r1, #2
c0de2790:	4410      	add	r0, r2
c0de2792:	d006      	beq.n	c0de27a2 <polyt1_unpack_idx+0x1e>
c0de2794:	2901      	cmp	r1, #1
c0de2796:	d009      	beq.n	c0de27ac <polyt1_unpack_idx+0x28>
c0de2798:	b969      	cbnz	r1, c0de27b6 <polyt1_unpack_idx+0x32>
c0de279a:	7801      	ldrb	r1, [r0, #0]
c0de279c:	2208      	movs	r2, #8
c0de279e:	2301      	movs	r3, #1
c0de27a0:	e00d      	b.n	c0de27be <polyt1_unpack_idx+0x3a>
c0de27a2:	7881      	ldrb	r1, [r0, #2]
c0de27a4:	2204      	movs	r2, #4
c0de27a6:	2303      	movs	r3, #3
c0de27a8:	0909      	lsrs	r1, r1, #4
c0de27aa:	e008      	b.n	c0de27be <polyt1_unpack_idx+0x3a>
c0de27ac:	7841      	ldrb	r1, [r0, #1]
c0de27ae:	2206      	movs	r2, #6
c0de27b0:	2302      	movs	r3, #2
c0de27b2:	0889      	lsrs	r1, r1, #2
c0de27b4:	e003      	b.n	c0de27be <polyt1_unpack_idx+0x3a>
c0de27b6:	78c1      	ldrb	r1, [r0, #3]
c0de27b8:	2202      	movs	r2, #2
c0de27ba:	2304      	movs	r3, #4
c0de27bc:	0989      	lsrs	r1, r1, #6
c0de27be:	5cc0      	ldrb	r0, [r0, r3]
c0de27c0:	4090      	lsls	r0, r2
c0de27c2:	f400 707f 	and.w	r0, r0, #1020	@ 0x3fc
c0de27c6:	4308      	orrs	r0, r1
c0de27c8:	4770      	bx	lr

c0de27ca <polyw_pack>:
c0de27ca:	b5b0      	push	{r4, r5, r7, lr}
c0de27cc:	4605      	mov	r5, r0
c0de27ce:	4608      	mov	r0, r1
c0de27d0:	460c      	mov	r4, r1
c0de27d2:	f000 fb3d 	bl	c0de2e50 <pqcrystals_dilithium2_lowram_poly_reduce>
c0de27d6:	4620      	mov	r0, r4
c0de27d8:	f000 fb49 	bl	c0de2e6e <pqcrystals_dilithium2_lowram_poly_caddq>
c0de27dc:	2000      	movs	r0, #0
c0de27de:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de27e2:	bf08      	it	eq
c0de27e4:	bdb0      	popeq	{r4, r5, r7, pc}
c0de27e6:	f854 1020 	ldr.w	r1, [r4, r0, lsl #2]
c0de27ea:	eb00 0240 	add.w	r2, r0, r0, lsl #1
c0de27ee:	54a9      	strb	r1, [r5, r2]
c0de27f0:	18a9      	adds	r1, r5, r2
c0de27f2:	f854 2020 	ldr.w	r2, [r4, r0, lsl #2]
c0de27f6:	0a12      	lsrs	r2, r2, #8
c0de27f8:	704a      	strb	r2, [r1, #1]
c0de27fa:	eb04 0280 	add.w	r2, r4, r0, lsl #2
c0de27fe:	3001      	adds	r0, #1
c0de2800:	8852      	ldrh	r2, [r2, #2]
c0de2802:	708a      	strb	r2, [r1, #2]
c0de2804:	e7eb      	b.n	c0de27de <polyw_pack+0x14>

c0de2806 <polyw_unpack>:
c0de2806:	b5b0      	push	{r4, r5, r7, lr}
c0de2808:	2200      	movs	r2, #0
c0de280a:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de280e:	bf08      	it	eq
c0de2810:	bdb0      	popeq	{r4, r5, r7, pc}
c0de2812:	eb02 0342 	add.w	r3, r2, r2, lsl #1
c0de2816:	5ccc      	ldrb	r4, [r1, r3]
c0de2818:	440b      	add	r3, r1
c0de281a:	f840 4022 	str.w	r4, [r0, r2, lsl #2]
c0de281e:	785d      	ldrb	r5, [r3, #1]
c0de2820:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de2824:	f840 4022 	str.w	r4, [r0, r2, lsl #2]
c0de2828:	789b      	ldrb	r3, [r3, #2]
c0de282a:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
c0de282e:	f840 3022 	str.w	r3, [r0, r2, lsl #2]
c0de2832:	3201      	adds	r2, #1
c0de2834:	e7e9      	b.n	c0de280a <polyw_unpack+0x4>

c0de2836 <polyw_sub>:
c0de2836:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de2838:	3102      	adds	r1, #2
c0de283a:	2300      	movs	r3, #0
c0de283c:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
c0de2840:	bf08      	it	eq
c0de2842:	bdf0      	popeq	{r4, r5, r6, r7, pc}
c0de2844:	f811 5c02 	ldrb.w	r5, [r1, #-2]
c0de2848:	f811 6c01 	ldrb.w	r6, [r1, #-1]
c0de284c:	f811 7b03 	ldrb.w	r7, [r1], #3
c0de2850:	f852 4023 	ldr.w	r4, [r2, r3, lsl #2]
c0de2854:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de2858:	ea45 4507 	orr.w	r5, r5, r7, lsl #16
c0de285c:	1b2c      	subs	r4, r5, r4
c0de285e:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
c0de2862:	3301      	adds	r3, #1
c0de2864:	e7ea      	b.n	c0de283c <polyw_sub+0x6>

c0de2866 <poly_highbits>:
c0de2866:	b5b0      	push	{r4, r5, r7, lr}
c0de2868:	2200      	movs	r2, #0
c0de286a:	f642 430b 	movw	r3, #11275	@ 0x2c0b
c0de286e:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de2872:	bf08      	it	eq
c0de2874:	bdb0      	popeq	{r4, r5, r7, pc}
c0de2876:	f851 4022 	ldr.w	r4, [r1, r2, lsl #2]
c0de287a:	347f      	adds	r4, #127	@ 0x7f
c0de287c:	11e4      	asrs	r4, r4, #7
c0de287e:	435c      	muls	r4, r3
c0de2880:	f504 0500 	add.w	r5, r4, #8388608	@ 0x800000
c0de2884:	162d      	asrs	r5, r5, #24
c0de2886:	f1b4 5f2e 	cmp.w	r4, #729808896	@ 0x2b800000
c0de288a:	bfa8      	it	ge
c0de288c:	2500      	movge	r5, #0
c0de288e:	f840 5022 	str.w	r5, [r0, r2, lsl #2]
c0de2892:	3201      	adds	r2, #1
c0de2894:	e7eb      	b.n	c0de286e <poly_highbits+0x8>
	...

c0de2898 <poly_lowbits>:
c0de2898:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de289c:	4e13      	ldr	r6, [pc, #76]	@ (c0de28ec <poly_lowbits+0x54>)
c0de289e:	4f15      	ldr	r7, [pc, #84]	@ (c0de28f4 <poly_lowbits+0x5c>)
c0de28a0:	2200      	movs	r2, #0
c0de28a2:	f642 4c0b 	movw	ip, #11275	@ 0x2c0b
c0de28a6:	f06f 0e01 	mvn.w	lr, #1
c0de28aa:	46b0      	mov	r8, r6
c0de28ac:	4e10      	ldr	r6, [pc, #64]	@ (c0de28f0 <poly_lowbits+0x58>)
c0de28ae:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de28b2:	bf08      	it	eq
c0de28b4:	e8bd 81f0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de28b8:	f851 3022 	ldr.w	r3, [r1, r2, lsl #2]
c0de28bc:	f103 047f 	add.w	r4, r3, #127	@ 0x7f
c0de28c0:	11e4      	asrs	r4, r4, #7
c0de28c2:	fb04 f40c 	mul.w	r4, r4, ip
c0de28c6:	f504 0500 	add.w	r5, r4, #8388608	@ 0x800000
c0de28ca:	f1b4 5f2e 	cmp.w	r4, #729808896	@ 0x2b800000
c0de28ce:	4644      	mov	r4, r8
c0de28d0:	ea0e 55e5 	and.w	r5, lr, r5, asr #23
c0de28d4:	bfb8      	it	lt
c0de28d6:	fb05 3308 	mlalt	r3, r5, r8, r3
c0de28da:	42bb      	cmp	r3, r7
c0de28dc:	4634      	mov	r4, r6
c0de28de:	bfc8      	it	gt
c0de28e0:	4433      	addgt	r3, r6
c0de28e2:	f840 3022 	str.w	r3, [r0, r2, lsl #2]
c0de28e6:	3201      	adds	r2, #1
c0de28e8:	e7e1      	b.n	c0de28ae <poly_lowbits+0x16>
c0de28ea:	bf00      	nop
c0de28ec:	fffe8c00 	.word	0xfffe8c00
c0de28f0:	ff801fff 	.word	0xff801fff
c0de28f4:	003ff000 	.word	0x003ff000

c0de28f8 <unpack_sk_s1>:
c0de28f8:	eb02 0242 	add.w	r2, r2, r2, lsl #1
c0de28fc:	eb01 1142 	add.w	r1, r1, r2, lsl #5
c0de2900:	3180      	adds	r1, #128	@ 0x80
c0de2902:	f001 bb18 	b.w	c0de3f36 <small_polyeta_unpack>

c0de2906 <unpack_sk_s2>:
c0de2906:	eb02 0242 	add.w	r2, r2, r2, lsl #1
c0de290a:	eb01 1142 	add.w	r1, r1, r2, lsl #5
c0de290e:	f501 7100 	add.w	r1, r1, #512	@ 0x200
c0de2912:	f001 bb10 	b.w	c0de3f36 <small_polyeta_unpack>
	...

c0de2918 <poly_uniform_pointwise_montgomery_polywadd_lowram>:
c0de2918:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de291c:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de2920:	468a      	mov	sl, r1
c0de2922:	4683      	mov	fp, r0
c0de2924:	4611      	mov	r1, r2
c0de2926:	461a      	mov	r2, r3
c0de2928:	4640      	mov	r0, r8
c0de292a:	f001 fb56 	bl	c0de3fda <pqcrystals_dilithium2_lowram_dilithium_shake128_stream_init>
c0de292e:	4c10      	ldr	r4, [pc, #64]	@ (c0de2970 <poly_uniform_pointwise_montgomery_polywadd_lowram+0x58>)
c0de2930:	2700      	movs	r7, #0
c0de2932:	f10d 0607 	add.w	r6, sp, #7
c0de2936:	4630      	mov	r0, r6
c0de2938:	2109      	movs	r1, #9
c0de293a:	4642      	mov	r2, r8
c0de293c:	f7fe fbf7 	bl	c0de112e <pqcrystals_dilithium_fips202_ref_shake128_squeeze>
c0de2940:	2500      	movs	r5, #0
c0de2942:	2d08      	cmp	r5, #8
c0de2944:	bf98      	it	ls
c0de2946:	f5b7 7f80 	cmpls.w	r7, #256	@ 0x100
c0de294a:	d20b      	bcs.n	c0de2964 <poly_uniform_pointwise_montgomery_polywadd_lowram+0x4c>
c0de294c:	f000 f9de 	bl	c0de2d0c <OUTLINED_FUNCTION_0>
c0de2950:	d806      	bhi.n	c0de2960 <poly_uniform_pointwise_montgomery_polywadd_lowram+0x48>
c0de2952:	f85a 1027 	ldr.w	r1, [sl, r7, lsl #2]
c0de2956:	f000 f9f4 	bl	c0de2d42 <OUTLINED_FUNCTION_3>
c0de295a:	f000 f9f6 	bl	c0de2d4a <OUTLINED_FUNCTION_4>
c0de295e:	3701      	adds	r7, #1
c0de2960:	3503      	adds	r5, #3
c0de2962:	e7ee      	b.n	c0de2942 <poly_uniform_pointwise_montgomery_polywadd_lowram+0x2a>
c0de2964:	f5b7 7f80 	cmp.w	r7, #256	@ 0x100
c0de2968:	bf28      	it	cs
c0de296a:	e8bd 8dff 	ldmiacs.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de296e:	e7e2      	b.n	c0de2936 <poly_uniform_pointwise_montgomery_polywadd_lowram+0x1e>
c0de2970:	007fe000 	.word	0x007fe000

c0de2974 <polyw_add_idx>:
c0de2974:	b570      	push	{r4, r5, r6, lr}
c0de2976:	4604      	mov	r4, r0
c0de2978:	eb02 0542 	add.w	r5, r2, r2, lsl #1
c0de297c:	1966      	adds	r6, r4, r5
c0de297e:	5d40      	ldrb	r0, [r0, r5]
c0de2980:	7872      	ldrb	r2, [r6, #1]
c0de2982:	78b3      	ldrb	r3, [r6, #2]
c0de2984:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
c0de2988:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de298c:	4408      	add	r0, r1
c0de298e:	f000 fd57 	bl	c0de3440 <pqcrystals_dilithium2_lowram_freeze>
c0de2992:	0c01      	lsrs	r1, r0, #16
c0de2994:	5560      	strb	r0, [r4, r5]
c0de2996:	0a00      	lsrs	r0, r0, #8
c0de2998:	70b1      	strb	r1, [r6, #2]
c0de299a:	7070      	strb	r0, [r6, #1]
c0de299c:	bd70      	pop	{r4, r5, r6, pc}

c0de299e <poly_uniform_gamma1_lowram>:
c0de299e:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de29a0:	b085      	sub	sp, #20
c0de29a2:	4605      	mov	r5, r0
c0de29a4:	4618      	mov	r0, r3
c0de29a6:	461c      	mov	r4, r3
c0de29a8:	f001 fb2b 	bl	c0de4002 <pqcrystals_dilithium2_lowram_dilithium_shake256_stream_init>
c0de29ac:	2700      	movs	r7, #0
c0de29ae:	ae01      	add	r6, sp, #4
c0de29b0:	2f40      	cmp	r7, #64	@ 0x40
c0de29b2:	bf04      	itt	eq
c0de29b4:	b005      	addeq	sp, #20
c0de29b6:	bdf0      	popeq	{r4, r5, r6, r7, pc}
c0de29b8:	4630      	mov	r0, r6
c0de29ba:	2109      	movs	r1, #9
c0de29bc:	4622      	mov	r2, r4
c0de29be:	f7fe fc9f 	bl	c0de1300 <pqcrystals_dilithium_fips202_ref_shake256_squeeze>
c0de29c2:	4630      	mov	r0, r6
c0de29c4:	f000 f80c 	bl	c0de29e0 <polyz_unpack_inplace>
c0de29c8:	2000      	movs	r0, #0
c0de29ca:	2804      	cmp	r0, #4
c0de29cc:	d005      	beq.n	c0de29da <poly_uniform_gamma1_lowram+0x3c>
c0de29ce:	f856 1020 	ldr.w	r1, [r6, r0, lsl #2]
c0de29d2:	f845 1020 	str.w	r1, [r5, r0, lsl #2]
c0de29d6:	3001      	adds	r0, #1
c0de29d8:	e7f7      	b.n	c0de29ca <poly_uniform_gamma1_lowram+0x2c>
c0de29da:	3510      	adds	r5, #16
c0de29dc:	3701      	adds	r7, #1
c0de29de:	e7e7      	b.n	c0de29b0 <poly_uniform_gamma1_lowram+0x12>

c0de29e0 <polyz_unpack_inplace>:
c0de29e0:	b5b0      	push	{r4, r5, r7, lr}
c0de29e2:	7801      	ldrb	r1, [r0, #0]
c0de29e4:	7883      	ldrb	r3, [r0, #2]
c0de29e6:	7842      	ldrb	r2, [r0, #1]
c0de29e8:	78c4      	ldrb	r4, [r0, #3]
c0de29ea:	7a05      	ldrb	r5, [r0, #8]
c0de29ec:	f363 4111 	bfi	r1, r3, #16, #2
c0de29f0:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de29f4:	79c2      	ldrb	r2, [r0, #7]
c0de29f6:	f5c1 3100 	rsb	r1, r1, #131072	@ 0x20000
c0de29fa:	6001      	str	r1, [r0, #0]
c0de29fc:	7981      	ldrb	r1, [r0, #6]
c0de29fe:	0092      	lsls	r2, r2, #2
c0de2a00:	ea42 1291 	orr.w	r2, r2, r1, lsr #6
c0de2a04:	f001 013f 	and.w	r1, r1, #63	@ 0x3f
c0de2a08:	ea42 2285 	orr.w	r2, r2, r5, lsl #10
c0de2a0c:	7945      	ldrb	r5, [r0, #5]
c0de2a0e:	f5c2 3200 	rsb	r2, r2, #131072	@ 0x20000
c0de2a12:	60c2      	str	r2, [r0, #12]
c0de2a14:	7902      	ldrb	r2, [r0, #4]
c0de2a16:	012d      	lsls	r5, r5, #4
c0de2a18:	ea45 1512 	orr.w	r5, r5, r2, lsr #4
c0de2a1c:	ea45 3101 	orr.w	r1, r5, r1, lsl #12
c0de2a20:	f5c1 3100 	rsb	r1, r1, #131072	@ 0x20000
c0de2a24:	6081      	str	r1, [r0, #8]
c0de2a26:	0899      	lsrs	r1, r3, #2
c0de2a28:	f362 3191 	bfi	r1, r2, #14, #4
c0de2a2c:	ea41 1184 	orr.w	r1, r1, r4, lsl #6
c0de2a30:	f5c1 3100 	rsb	r1, r1, #131072	@ 0x20000
c0de2a34:	6041      	str	r1, [r0, #4]
c0de2a36:	bdb0      	pop	{r4, r5, r7, pc}

c0de2a38 <poly_uniform_gamma1_add_lowram>:
c0de2a38:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de2a3c:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de2a40:	460c      	mov	r4, r1
c0de2a42:	4605      	mov	r5, r0
c0de2a44:	4611      	mov	r1, r2
c0de2a46:	461a      	mov	r2, r3
c0de2a48:	4640      	mov	r0, r8
c0de2a4a:	f001 fada 	bl	c0de4002 <pqcrystals_dilithium2_lowram_dilithium_shake256_stream_init>
c0de2a4e:	2600      	movs	r6, #0
c0de2a50:	466f      	mov	r7, sp
c0de2a52:	2e40      	cmp	r6, #64	@ 0x40
c0de2a54:	bf08      	it	eq
c0de2a56:	e8bd 81ff 	ldmiaeq.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, pc}
c0de2a5a:	4638      	mov	r0, r7
c0de2a5c:	2109      	movs	r1, #9
c0de2a5e:	4642      	mov	r2, r8
c0de2a60:	f7fe fc4e 	bl	c0de1300 <pqcrystals_dilithium_fips202_ref_shake256_squeeze>
c0de2a64:	4638      	mov	r0, r7
c0de2a66:	f7ff ffbb 	bl	c0de29e0 <polyz_unpack_inplace>
c0de2a6a:	2000      	movs	r0, #0
c0de2a6c:	2804      	cmp	r0, #4
c0de2a6e:	d002      	beq.n	c0de2a76 <poly_uniform_gamma1_add_lowram+0x3e>
c0de2a70:	f000 f958 	bl	c0de2d24 <OUTLINED_FUNCTION_1>
c0de2a74:	e7fa      	b.n	c0de2a6c <poly_uniform_gamma1_add_lowram+0x34>
c0de2a76:	3410      	adds	r4, #16
c0de2a78:	3510      	adds	r5, #16
c0de2a7a:	3601      	adds	r6, #1
c0de2a7c:	e7e9      	b.n	c0de2a52 <poly_uniform_gamma1_add_lowram+0x1a>
	...

c0de2a80 <poly_make_hint_lowram>:
c0de2a80:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2a84:	4686      	mov	lr, r0
c0de2a86:	481a      	ldr	r0, [pc, #104]	@ (c0de2af0 <poly_make_hint_lowram+0x70>)
c0de2a88:	1c93      	adds	r3, r2, #2
c0de2a8a:	468c      	mov	ip, r1
c0de2a8c:	2200      	movs	r2, #0
c0de2a8e:	f642 450b 	movw	r5, #11275	@ 0x2c0b
c0de2a92:	2600      	movs	r6, #0
c0de2a94:	4680      	mov	r8, r0
c0de2a96:	f5b6 7f80 	cmp.w	r6, #256	@ 0x100
c0de2a9a:	d026      	beq.n	c0de2aea <poly_make_hint_lowram+0x6a>
c0de2a9c:	f813 4c02 	ldrb.w	r4, [r3, #-2]
c0de2aa0:	f813 1c01 	ldrb.w	r1, [r3, #-1]
c0de2aa4:	f813 0b03 	ldrb.w	r0, [r3], #3
c0de2aa8:	f85c 7026 	ldr.w	r7, [ip, r6, lsl #2]
c0de2aac:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
c0de2ab0:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de2ab4:	307f      	adds	r0, #127	@ 0x7f
c0de2ab6:	19c1      	adds	r1, r0, r7
c0de2ab8:	4647      	mov	r7, r8
c0de2aba:	11c9      	asrs	r1, r1, #7
c0de2abc:	4369      	muls	r1, r5
c0de2abe:	f501 0400 	add.w	r4, r1, #8388608	@ 0x800000
c0de2ac2:	1624      	asrs	r4, r4, #24
c0de2ac4:	4541      	cmp	r1, r8
c0de2ac6:	bfc8      	it	gt
c0de2ac8:	2400      	movgt	r4, #0
c0de2aca:	09c0      	lsrs	r0, r0, #7
c0de2acc:	4368      	muls	r0, r5
c0de2ace:	f500 0100 	add.w	r1, r0, #8388608	@ 0x800000
c0de2ad2:	0e09      	lsrs	r1, r1, #24
c0de2ad4:	4540      	cmp	r0, r8
c0de2ad6:	bf88      	it	hi
c0de2ad8:	2100      	movhi	r1, #0
c0de2ada:	1a60      	subs	r0, r4, r1
c0de2adc:	bf18      	it	ne
c0de2ade:	2001      	movne	r0, #1
c0de2ae0:	f84e 0026 	str.w	r0, [lr, r6, lsl #2]
c0de2ae4:	4402      	add	r2, r0
c0de2ae6:	3601      	adds	r6, #1
c0de2ae8:	e7d5      	b.n	c0de2a96 <poly_make_hint_lowram+0x16>
c0de2aea:	4610      	mov	r0, r2
c0de2aec:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2af0:	2b7fffff 	.word	0x2b7fffff

c0de2af4 <unpack_sig_h_indices>:
c0de2af4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2af8:	f503 6c12 	add.w	ip, r3, #2336	@ 0x920
c0de2afc:	b142      	cbz	r2, c0de2b10 <unpack_sig_h_indices+0x1c>
c0de2afe:	eb02 0e0c 	add.w	lr, r2, ip
c0de2b02:	f81e 6f50 	ldrb.w	r6, [lr, #80]!
c0de2b06:	f81e 5c01 	ldrb.w	r5, [lr, #-1]
c0de2b0a:	42b5      	cmp	r5, r6
c0de2b0c:	d905      	bls.n	c0de2b1a <unpack_sig_h_indices+0x26>
c0de2b0e:	e006      	b.n	c0de2b1e <unpack_sig_h_indices+0x2a>
c0de2b10:	f893 6970 	ldrb.w	r6, [r3, #2416]	@ 0x970
c0de2b14:	f503 6e17 	add.w	lr, r3, #2416	@ 0x970
c0de2b18:	2500      	movs	r5, #0
c0de2b1a:	2e50      	cmp	r6, #80	@ 0x50
c0de2b1c:	d902      	bls.n	c0de2b24 <unpack_sig_h_indices+0x30>
c0de2b1e:	2001      	movs	r0, #1
c0de2b20:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2b24:	eb03 0805 	add.w	r8, r3, r5
c0de2b28:	2700      	movs	r7, #0
c0de2b2a:	19ea      	adds	r2, r5, r7
c0de2b2c:	42b2      	cmp	r2, r6
c0de2b2e:	d20e      	bcs.n	c0de2b4e <unpack_sig_h_indices+0x5a>
c0de2b30:	eb08 0407 	add.w	r4, r8, r7
c0de2b34:	42aa      	cmp	r2, r5
c0de2b36:	f894 6920 	ldrb.w	r6, [r4, #2336]	@ 0x920
c0de2b3a:	d903      	bls.n	c0de2b44 <unpack_sig_h_indices+0x50>
c0de2b3c:	f894 291f 	ldrb.w	r2, [r4, #2335]	@ 0x91f
c0de2b40:	4296      	cmp	r6, r2
c0de2b42:	d9ec      	bls.n	c0de2b1e <unpack_sig_h_indices+0x2a>
c0de2b44:	55c6      	strb	r6, [r0, r7]
c0de2b46:	3701      	adds	r7, #1
c0de2b48:	f89e 6000 	ldrb.w	r6, [lr]
c0de2b4c:	e7ed      	b.n	c0de2b2a <unpack_sig_h_indices+0x36>
c0de2b4e:	600f      	str	r7, [r1, #0]
c0de2b50:	f893 0973 	ldrb.w	r0, [r3, #2419]	@ 0x973
c0de2b54:	4601      	mov	r1, r0
c0de2b56:	284f      	cmp	r0, #79	@ 0x4f
c0de2b58:	d804      	bhi.n	c0de2b64 <unpack_sig_h_indices+0x70>
c0de2b5a:	f81c 2001 	ldrb.w	r2, [ip, r1]
c0de2b5e:	1c48      	adds	r0, r1, #1
c0de2b60:	2a00      	cmp	r2, #0
c0de2b62:	d0f7      	beq.n	c0de2b54 <unpack_sig_h_indices+0x60>
c0de2b64:	2000      	movs	r0, #0
c0de2b66:	2950      	cmp	r1, #80	@ 0x50
c0de2b68:	bf38      	it	cc
c0de2b6a:	2001      	movcc	r0, #1
c0de2b6c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de2b70 <poly_use_hint_lowram>:
c0de2b70:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2b74:	4698      	mov	r8, r3
c0de2b76:	4615      	mov	r5, r2
c0de2b78:	460e      	mov	r6, r1
c0de2b7a:	4607      	mov	r7, r0
c0de2b7c:	2400      	movs	r4, #0
c0de2b7e:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
c0de2b82:	bf08      	it	eq
c0de2b84:	e8bd 81f0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2b88:	4628      	mov	r0, r5
c0de2b8a:	4641      	mov	r1, r8
c0de2b8c:	b131      	cbz	r1, c0de2b9c <poly_use_hint_lowram+0x2c>
c0de2b8e:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de2b92:	3901      	subs	r1, #1
c0de2b94:	4294      	cmp	r4, r2
c0de2b96:	d1f9      	bne.n	c0de2b8c <poly_use_hint_lowram+0x1c>
c0de2b98:	2101      	movs	r1, #1
c0de2b9a:	e000      	b.n	c0de2b9e <poly_use_hint_lowram+0x2e>
c0de2b9c:	2100      	movs	r1, #0
c0de2b9e:	f856 0024 	ldr.w	r0, [r6, r4, lsl #2]
c0de2ba2:	f000 fc87 	bl	c0de34b4 <pqcrystals_dilithium2_lowram_use_hint>
c0de2ba6:	f847 0024 	str.w	r0, [r7, r4, lsl #2]
c0de2baa:	3401      	adds	r4, #1
c0de2bac:	e7e7      	b.n	c0de2b7e <poly_use_hint_lowram+0xe>

c0de2bae <pack_pk_rho>:
c0de2bae:	2200      	movs	r2, #0
c0de2bb0:	2a20      	cmp	r2, #32
c0de2bb2:	bf08      	it	eq
c0de2bb4:	4770      	bxeq	lr
c0de2bb6:	5c8b      	ldrb	r3, [r1, r2]
c0de2bb8:	5483      	strb	r3, [r0, r2]
c0de2bba:	3201      	adds	r2, #1
c0de2bbc:	e7f8      	b.n	c0de2bb0 <pack_pk_rho+0x2>

c0de2bbe <pack_pk_t1>:
c0de2bbe:	eb02 0282 	add.w	r2, r2, r2, lsl #2
c0de2bc2:	eb00 1082 	add.w	r0, r0, r2, lsl #6
c0de2bc6:	3020      	adds	r0, #32
c0de2bc8:	f000 bb42 	b.w	c0de3250 <pqcrystals_dilithium2_lowram_polyt1_pack>

c0de2bcc <pack_sk_s1>:
c0de2bcc:	eb02 0242 	add.w	r2, r2, r2, lsl #1
c0de2bd0:	eb00 1042 	add.w	r0, r0, r2, lsl #5
c0de2bd4:	3080      	adds	r0, #128	@ 0x80
c0de2bd6:	f000 bafd 	b.w	c0de31d4 <pqcrystals_dilithium2_lowram_polyeta_pack>

c0de2bda <pack_sk_s2>:
c0de2bda:	eb02 0242 	add.w	r2, r2, r2, lsl #1
c0de2bde:	eb00 1042 	add.w	r0, r0, r2, lsl #5
c0de2be2:	f500 7000 	add.w	r0, r0, #512	@ 0x200
c0de2be6:	f000 baf5 	b.w	c0de31d4 <pqcrystals_dilithium2_lowram_polyeta_pack>

c0de2bea <pack_sk_t0>:
c0de2bea:	f44f 73d0 	mov.w	r3, #416	@ 0x1a0
c0de2bee:	fb02 0003 	mla	r0, r2, r3, r0
c0de2bf2:	f500 7060 	add.w	r0, r0, #896	@ 0x380
c0de2bf6:	f000 bb4f 	b.w	c0de3298 <pqcrystals_dilithium2_lowram_polyt0_pack>

c0de2bfa <pack_sk_rho>:
c0de2bfa:	2200      	movs	r2, #0
c0de2bfc:	2a20      	cmp	r2, #32
c0de2bfe:	bf08      	it	eq
c0de2c00:	4770      	bxeq	lr
c0de2c02:	5c8b      	ldrb	r3, [r1, r2]
c0de2c04:	5483      	strb	r3, [r0, r2]
c0de2c06:	3201      	adds	r2, #1
c0de2c08:	e7f8      	b.n	c0de2bfc <pack_sk_rho+0x2>

c0de2c0a <pack_sk_key>:
c0de2c0a:	3020      	adds	r0, #32
c0de2c0c:	2200      	movs	r2, #0
c0de2c0e:	2a20      	cmp	r2, #32
c0de2c10:	bf08      	it	eq
c0de2c12:	4770      	bxeq	lr
c0de2c14:	5c8b      	ldrb	r3, [r1, r2]
c0de2c16:	5483      	strb	r3, [r0, r2]
c0de2c18:	3201      	adds	r2, #1
c0de2c1a:	e7f8      	b.n	c0de2c0e <pack_sk_key+0x4>

c0de2c1c <pack_sk_tr>:
c0de2c1c:	3040      	adds	r0, #64	@ 0x40
c0de2c1e:	2200      	movs	r2, #0
c0de2c20:	2a40      	cmp	r2, #64	@ 0x40
c0de2c22:	bf08      	it	eq
c0de2c24:	4770      	bxeq	lr
c0de2c26:	5c8b      	ldrb	r3, [r1, r2]
c0de2c28:	5483      	strb	r3, [r0, r2]
c0de2c2a:	3201      	adds	r2, #1
c0de2c2c:	e7f8      	b.n	c0de2c20 <pack_sk_tr+0x4>

c0de2c2e <poly_challenge_lowram>:
c0de2c2e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2c32:	b0b6      	sub	sp, #216	@ 0xd8
c0de2c34:	466e      	mov	r6, sp
c0de2c36:	4680      	mov	r8, r0
c0de2c38:	460d      	mov	r5, r1
c0de2c3a:	4630      	mov	r0, r6
c0de2c3c:	f7fe fb42 	bl	c0de12c4 <pqcrystals_dilithium_fips202_ref_shake256_init>
c0de2c40:	4630      	mov	r0, r6
c0de2c42:	4629      	mov	r1, r5
c0de2c44:	2220      	movs	r2, #32
c0de2c46:	f7fe fb45 	bl	c0de12d4 <pqcrystals_dilithium_fips202_ref_shake256_absorb>
c0de2c4a:	4630      	mov	r0, r6
c0de2c4c:	f7fe fb4d 	bl	c0de12ea <pqcrystals_dilithium_fips202_ref_shake256_finalize>
c0de2c50:	ad34      	add	r5, sp, #208	@ 0xd0
c0de2c52:	2108      	movs	r1, #8
c0de2c54:	4632      	mov	r2, r6
c0de2c56:	4628      	mov	r0, r5
c0de2c58:	f7fe fb52 	bl	c0de1300 <pqcrystals_dilithium_fips202_ref_shake256_squeeze>
c0de2c5c:	2600      	movs	r6, #0
c0de2c5e:	462c      	mov	r4, r5
c0de2c60:	2700      	movs	r7, #0
c0de2c62:	f04f 0a00 	mov.w	sl, #0
c0de2c66:	2e40      	cmp	r6, #64	@ 0x40
c0de2c68:	d00a      	beq.n	c0de2c80 <poly_challenge_lowram+0x52>
c0de2c6a:	f814 0b01 	ldrb.w	r0, [r4], #1
c0de2c6e:	2100      	movs	r1, #0
c0de2c70:	4632      	mov	r2, r6
c0de2c72:	f009 faf5 	bl	c0dec260 <__aeabi_llsl>
c0de2c76:	ea4a 0a01 	orr.w	sl, sl, r1
c0de2c7a:	4307      	orrs	r7, r0
c0de2c7c:	3608      	adds	r6, #8
c0de2c7e:	e7f2      	b.n	c0de2c66 <poly_challenge_lowram+0x38>
c0de2c80:	2000      	movs	r0, #0
c0de2c82:	2100      	movs	r1, #0
c0de2c84:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de2c88:	d003      	beq.n	c0de2c92 <poly_challenge_lowram+0x64>
c0de2c8a:	f848 0021 	str.w	r0, [r8, r1, lsl #2]
c0de2c8e:	3101      	adds	r1, #1
c0de2c90:	e7f8      	b.n	c0de2c84 <poly_challenge_lowram+0x56>
c0de2c92:	2008      	movs	r0, #8
c0de2c94:	24d9      	movs	r4, #217	@ 0xd9
c0de2c96:	466e      	mov	r6, sp
c0de2c98:	f04f 0b02 	mov.w	fp, #2
c0de2c9c:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
c0de2ca0:	d01b      	beq.n	c0de2cda <poly_challenge_lowram+0xac>
c0de2ca2:	2808      	cmp	r0, #8
c0de2ca4:	d305      	bcc.n	c0de2cb2 <poly_challenge_lowram+0x84>
c0de2ca6:	4628      	mov	r0, r5
c0de2ca8:	2108      	movs	r1, #8
c0de2caa:	4632      	mov	r2, r6
c0de2cac:	f7fe fb28 	bl	c0de1300 <pqcrystals_dilithium_fips202_ref_shake256_squeeze>
c0de2cb0:	2000      	movs	r0, #0
c0de2cb2:	5c29      	ldrb	r1, [r5, r0]
c0de2cb4:	3001      	adds	r0, #1
c0de2cb6:	428c      	cmp	r4, r1
c0de2cb8:	d3f3      	bcc.n	c0de2ca2 <poly_challenge_lowram+0x74>
c0de2cba:	f858 2021 	ldr.w	r2, [r8, r1, lsl #2]
c0de2cbe:	ea5f 0a5a 	movs.w	sl, sl, lsr #1
c0de2cc2:	f848 2024 	str.w	r2, [r8, r4, lsl #2]
c0de2cc6:	ea0b 0247 	and.w	r2, fp, r7, lsl #1
c0de2cca:	ea4f 0737 	mov.w	r7, r7, rrx
c0de2cce:	3401      	adds	r4, #1
c0de2cd0:	f1c2 0201 	rsb	r2, r2, #1
c0de2cd4:	f848 2021 	str.w	r2, [r8, r1, lsl #2]
c0de2cd8:	e7e0      	b.n	c0de2c9c <poly_challenge_lowram+0x6e>
c0de2cda:	b036      	add	sp, #216	@ 0xd8
c0de2cdc:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de2ce0 <pqcrystals_dilithium2_lowram_poly_pointwise_acc_montgomery>:
c0de2ce0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2ce2:	4614      	mov	r4, r2
c0de2ce4:	460d      	mov	r5, r1
c0de2ce6:	4606      	mov	r6, r0
c0de2ce8:	2700      	movs	r7, #0
c0de2cea:	f5b7 7f80 	cmp.w	r7, #256	@ 0x100
c0de2cee:	bf08      	it	eq
c0de2cf0:	bdf8      	popeq	{r3, r4, r5, r6, r7, pc}
c0de2cf2:	f855 0027 	ldr.w	r0, [r5, r7, lsl #2]
c0de2cf6:	f854 1027 	ldr.w	r1, [r4, r7, lsl #2]
c0de2cfa:	f000 f822 	bl	c0de2d42 <OUTLINED_FUNCTION_3>
c0de2cfe:	f856 1027 	ldr.w	r1, [r6, r7, lsl #2]
c0de2d02:	4408      	add	r0, r1
c0de2d04:	f846 0027 	str.w	r0, [r6, r7, lsl #2]
c0de2d08:	3701      	adds	r7, #1
c0de2d0a:	e7ee      	b.n	c0de2cea <pqcrystals_dilithium2_lowram_poly_pointwise_acc_montgomery+0xa>

c0de2d0c <OUTLINED_FUNCTION_0>:
c0de2d0c:	1971      	adds	r1, r6, r5
c0de2d0e:	5d70      	ldrb	r0, [r6, r5]
c0de2d10:	784a      	ldrb	r2, [r1, #1]
c0de2d12:	7889      	ldrb	r1, [r1, #2]
c0de2d14:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
c0de2d18:	f001 017f 	and.w	r1, r1, #127	@ 0x7f
c0de2d1c:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de2d20:	42a0      	cmp	r0, r4
c0de2d22:	4770      	bx	lr

c0de2d24 <OUTLINED_FUNCTION_1>:
c0de2d24:	f857 1020 	ldr.w	r1, [r7, r0, lsl #2]
c0de2d28:	f854 2020 	ldr.w	r2, [r4, r0, lsl #2]
c0de2d2c:	4411      	add	r1, r2
c0de2d2e:	f845 1020 	str.w	r1, [r5, r0, lsl #2]
c0de2d32:	3001      	adds	r0, #1
c0de2d34:	4770      	bx	lr

c0de2d36 <OUTLINED_FUNCTION_2>:
c0de2d36:	f815 0b01 	ldrb.w	r0, [r5], #1
c0de2d3a:	2100      	movs	r1, #0
c0de2d3c:	463a      	mov	r2, r7
c0de2d3e:	f009 ba8f 	b.w	c0dec260 <__aeabi_llsl>

c0de2d42 <OUTLINED_FUNCTION_3>:
c0de2d42:	fb81 0100 	smull	r0, r1, r1, r0
c0de2d46:	f000 bb5d 	b.w	c0de3404 <pqcrystals_dilithium2_lowram_montgomery_reduce>

c0de2d4a <OUTLINED_FUNCTION_4>:
c0de2d4a:	4601      	mov	r1, r0
c0de2d4c:	4658      	mov	r0, fp
c0de2d4e:	463a      	mov	r2, r7
c0de2d50:	f7ff be10 	b.w	c0de2974 <polyw_add_idx>

c0de2d54 <pqcrystals_dilithium2_lowram_ntt>:
c0de2d54:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2d58:	4604      	mov	r4, r0
c0de2d5a:	4817      	ldr	r0, [pc, #92]	@ (c0de2db8 <pqcrystals_dilithium2_lowram_ntt+0x64>)
c0de2d5c:	f04f 0880 	mov.w	r8, #128	@ 0x80
c0de2d60:	f04f 0a00 	mov.w	sl, #0
c0de2d64:	4478      	add	r0, pc
c0de2d66:	9001      	str	r0, [sp, #4]
c0de2d68:	f1b8 0f00 	cmp.w	r8, #0
c0de2d6c:	bf08      	it	eq
c0de2d6e:	e8bd 8dfc 	ldmiaeq.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de2d72:	2700      	movs	r7, #0
c0de2d74:	2fff      	cmp	r7, #255	@ 0xff
c0de2d76:	d81c      	bhi.n	c0de2db2 <pqcrystals_dilithium2_lowram_ntt+0x5e>
c0de2d78:	9801      	ldr	r0, [sp, #4]
c0de2d7a:	f10a 0a01 	add.w	sl, sl, #1
c0de2d7e:	eb07 0608 	add.w	r6, r7, r8
c0de2d82:	4635      	mov	r5, r6
c0de2d84:	f850 b02a 	ldr.w	fp, [r0, sl, lsl #2]
c0de2d88:	42b7      	cmp	r7, r6
c0de2d8a:	d210      	bcs.n	c0de2dae <pqcrystals_dilithium2_lowram_ntt+0x5a>
c0de2d8c:	f854 0025 	ldr.w	r0, [r4, r5, lsl #2]
c0de2d90:	fb80 010b 	smull	r0, r1, r0, fp
c0de2d94:	f000 fb36 	bl	c0de3404 <pqcrystals_dilithium2_lowram_montgomery_reduce>
c0de2d98:	f854 1027 	ldr.w	r1, [r4, r7, lsl #2]
c0de2d9c:	180a      	adds	r2, r1, r0
c0de2d9e:	1a08      	subs	r0, r1, r0
c0de2da0:	f844 2027 	str.w	r2, [r4, r7, lsl #2]
c0de2da4:	f844 0025 	str.w	r0, [r4, r5, lsl #2]
c0de2da8:	3501      	adds	r5, #1
c0de2daa:	3701      	adds	r7, #1
c0de2dac:	e7ec      	b.n	c0de2d88 <pqcrystals_dilithium2_lowram_ntt+0x34>
c0de2dae:	462f      	mov	r7, r5
c0de2db0:	e7e0      	b.n	c0de2d74 <pqcrystals_dilithium2_lowram_ntt+0x20>
c0de2db2:	ea4f 0858 	mov.w	r8, r8, lsr #1
c0de2db6:	e7d7      	b.n	c0de2d68 <pqcrystals_dilithium2_lowram_ntt+0x14>
c0de2db8:	0000af88 	.word	0x0000af88

c0de2dbc <pqcrystals_dilithium2_lowram_invntt_tomont>:
c0de2dbc:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2dc0:	4604      	mov	r4, r0
c0de2dc2:	4822      	ldr	r0, [pc, #136]	@ (c0de2e4c <pqcrystals_dilithium2_lowram_invntt_tomont+0x90>)
c0de2dc4:	f04f 0801 	mov.w	r8, #1
c0de2dc8:	f44f 7a80 	mov.w	sl, #256	@ 0x100
c0de2dcc:	4478      	add	r0, pc
c0de2dce:	9001      	str	r0, [sp, #4]
c0de2dd0:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de2dd4:	d828      	bhi.n	c0de2e28 <pqcrystals_dilithium2_lowram_invntt_tomont+0x6c>
c0de2dd6:	2700      	movs	r7, #0
c0de2dd8:	2fff      	cmp	r7, #255	@ 0xff
c0de2dda:	d822      	bhi.n	c0de2e22 <pqcrystals_dilithium2_lowram_invntt_tomont+0x66>
c0de2ddc:	9801      	ldr	r0, [sp, #4]
c0de2dde:	f1aa 0a01 	sub.w	sl, sl, #1
c0de2de2:	eb07 0608 	add.w	r6, r7, r8
c0de2de6:	4635      	mov	r5, r6
c0de2de8:	f850 002a 	ldr.w	r0, [r0, sl, lsl #2]
c0de2dec:	f1c0 0b00 	rsb	fp, r0, #0
c0de2df0:	42b7      	cmp	r7, r6
c0de2df2:	d214      	bcs.n	c0de2e1e <pqcrystals_dilithium2_lowram_invntt_tomont+0x62>
c0de2df4:	f854 0027 	ldr.w	r0, [r4, r7, lsl #2]
c0de2df8:	f854 1025 	ldr.w	r1, [r4, r5, lsl #2]
c0de2dfc:	4401      	add	r1, r0
c0de2dfe:	f844 1027 	str.w	r1, [r4, r7, lsl #2]
c0de2e02:	f854 1025 	ldr.w	r1, [r4, r5, lsl #2]
c0de2e06:	1a40      	subs	r0, r0, r1
c0de2e08:	f844 0025 	str.w	r0, [r4, r5, lsl #2]
c0de2e0c:	fb80 010b 	smull	r0, r1, r0, fp
c0de2e10:	f000 faf8 	bl	c0de3404 <pqcrystals_dilithium2_lowram_montgomery_reduce>
c0de2e14:	f844 0025 	str.w	r0, [r4, r5, lsl #2]
c0de2e18:	3501      	adds	r5, #1
c0de2e1a:	3701      	adds	r7, #1
c0de2e1c:	e7e8      	b.n	c0de2df0 <pqcrystals_dilithium2_lowram_invntt_tomont+0x34>
c0de2e1e:	462f      	mov	r7, r5
c0de2e20:	e7da      	b.n	c0de2dd8 <pqcrystals_dilithium2_lowram_invntt_tomont+0x1c>
c0de2e22:	ea4f 0848 	mov.w	r8, r8, lsl #1
c0de2e26:	e7d3      	b.n	c0de2dd0 <pqcrystals_dilithium2_lowram_invntt_tomont+0x14>
c0de2e28:	2500      	movs	r5, #0
c0de2e2a:	f24a 36fa 	movw	r6, #41978	@ 0xa3fa
c0de2e2e:	f5b5 7f80 	cmp.w	r5, #256	@ 0x100
c0de2e32:	bf08      	it	eq
c0de2e34:	e8bd 8dfc 	ldmiaeq.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de2e38:	f854 0025 	ldr.w	r0, [r4, r5, lsl #2]
c0de2e3c:	fb80 0106 	smull	r0, r1, r0, r6
c0de2e40:	f000 fae0 	bl	c0de3404 <pqcrystals_dilithium2_lowram_montgomery_reduce>
c0de2e44:	f844 0025 	str.w	r0, [r4, r5, lsl #2]
c0de2e48:	3501      	adds	r5, #1
c0de2e4a:	e7f0      	b.n	c0de2e2e <pqcrystals_dilithium2_lowram_invntt_tomont+0x72>
c0de2e4c:	0000af20 	.word	0x0000af20

c0de2e50 <pqcrystals_dilithium2_lowram_poly_reduce>:
c0de2e50:	b5b0      	push	{r4, r5, r7, lr}
c0de2e52:	4604      	mov	r4, r0
c0de2e54:	2500      	movs	r5, #0
c0de2e56:	f5b5 7f80 	cmp.w	r5, #256	@ 0x100
c0de2e5a:	bf08      	it	eq
c0de2e5c:	bdb0      	popeq	{r4, r5, r7, pc}
c0de2e5e:	f854 0025 	ldr.w	r0, [r4, r5, lsl #2]
c0de2e62:	f000 fadb 	bl	c0de341c <pqcrystals_dilithium2_lowram_reduce32>
c0de2e66:	f844 0025 	str.w	r0, [r4, r5, lsl #2]
c0de2e6a:	3501      	adds	r5, #1
c0de2e6c:	e7f3      	b.n	c0de2e56 <pqcrystals_dilithium2_lowram_poly_reduce+0x6>

c0de2e6e <pqcrystals_dilithium2_lowram_poly_caddq>:
c0de2e6e:	b5b0      	push	{r4, r5, r7, lr}
c0de2e70:	4604      	mov	r4, r0
c0de2e72:	2500      	movs	r5, #0
c0de2e74:	f5b5 7f80 	cmp.w	r5, #256	@ 0x100
c0de2e78:	bf08      	it	eq
c0de2e7a:	bdb0      	popeq	{r4, r5, r7, pc}
c0de2e7c:	f854 0025 	ldr.w	r0, [r4, r5, lsl #2]
c0de2e80:	f000 fad6 	bl	c0de3430 <pqcrystals_dilithium2_lowram_caddq>
c0de2e84:	f844 0025 	str.w	r0, [r4, r5, lsl #2]
c0de2e88:	3501      	adds	r5, #1
c0de2e8a:	e7f3      	b.n	c0de2e74 <pqcrystals_dilithium2_lowram_poly_caddq+0x6>

c0de2e8c <pqcrystals_dilithium2_lowram_poly_add>:
c0de2e8c:	b5b0      	push	{r4, r5, r7, lr}
c0de2e8e:	2300      	movs	r3, #0
c0de2e90:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
c0de2e94:	bf08      	it	eq
c0de2e96:	bdb0      	popeq	{r4, r5, r7, pc}
c0de2e98:	f851 4023 	ldr.w	r4, [r1, r3, lsl #2]
c0de2e9c:	f852 5023 	ldr.w	r5, [r2, r3, lsl #2]
c0de2ea0:	442c      	add	r4, r5
c0de2ea2:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
c0de2ea6:	3301      	adds	r3, #1
c0de2ea8:	e7f2      	b.n	c0de2e90 <pqcrystals_dilithium2_lowram_poly_add+0x4>

c0de2eaa <pqcrystals_dilithium2_lowram_poly_ntt>:
c0de2eaa:	f7ff bf53 	b.w	c0de2d54 <pqcrystals_dilithium2_lowram_ntt>

c0de2eae <pqcrystals_dilithium2_lowram_poly_invntt_tomont>:
c0de2eae:	f7ff bf85 	b.w	c0de2dbc <pqcrystals_dilithium2_lowram_invntt_tomont>

c0de2eb2 <pqcrystals_dilithium2_lowram_poly_pointwise_montgomery>:
c0de2eb2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2eb4:	f000 fa99 	bl	c0de33ea <OUTLINED_FUNCTION_0>
c0de2eb8:	f5b7 7f80 	cmp.w	r7, #256	@ 0x100
c0de2ebc:	bf08      	it	eq
c0de2ebe:	bdf8      	popeq	{r3, r4, r5, r6, r7, pc}
c0de2ec0:	f855 0027 	ldr.w	r0, [r5, r7, lsl #2]
c0de2ec4:	f854 1027 	ldr.w	r1, [r4, r7, lsl #2]
c0de2ec8:	fb81 0100 	smull	r0, r1, r1, r0
c0de2ecc:	f000 fa9a 	bl	c0de3404 <pqcrystals_dilithium2_lowram_montgomery_reduce>
c0de2ed0:	f846 0027 	str.w	r0, [r6, r7, lsl #2]
c0de2ed4:	3701      	adds	r7, #1
c0de2ed6:	e7ef      	b.n	c0de2eb8 <pqcrystals_dilithium2_lowram_poly_pointwise_montgomery+0x6>

c0de2ed8 <pqcrystals_dilithium2_lowram_poly_power2round>:
c0de2ed8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2eda:	f000 fa86 	bl	c0de33ea <OUTLINED_FUNCTION_0>
c0de2ede:	f5b7 6f80 	cmp.w	r7, #1024	@ 0x400
c0de2ee2:	bf08      	it	eq
c0de2ee4:	bdf8      	popeq	{r3, r4, r5, r6, r7, pc}
c0de2ee6:	59e1      	ldr	r1, [r4, r7]
c0de2ee8:	19e8      	adds	r0, r5, r7
c0de2eea:	f000 fab9 	bl	c0de3460 <pqcrystals_dilithium2_lowram_power2round>
c0de2eee:	51f0      	str	r0, [r6, r7]
c0de2ef0:	3704      	adds	r7, #4
c0de2ef2:	e7f4      	b.n	c0de2ede <pqcrystals_dilithium2_lowram_poly_power2round+0x6>

c0de2ef4 <pqcrystals_dilithium2_lowram_poly_chknorm>:
c0de2ef4:	4a09      	ldr	r2, [pc, #36]	@ (c0de2f1c <pqcrystals_dilithium2_lowram_poly_chknorm+0x28>)
c0de2ef6:	4291      	cmp	r1, r2
c0de2ef8:	dc0e      	bgt.n	c0de2f18 <pqcrystals_dilithium2_lowram_poly_chknorm+0x24>
c0de2efa:	2200      	movs	r2, #0
c0de2efc:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de2f00:	bf04      	itt	eq
c0de2f02:	2000      	moveq	r0, #0
c0de2f04:	4770      	bxeq	lr
c0de2f06:	f850 3022 	ldr.w	r3, [r0, r2, lsl #2]
c0de2f0a:	2b00      	cmp	r3, #0
c0de2f0c:	bf48      	it	mi
c0de2f0e:	eba3 0343 	submi.w	r3, r3, r3, lsl #1
c0de2f12:	3201      	adds	r2, #1
c0de2f14:	428b      	cmp	r3, r1
c0de2f16:	dbf1      	blt.n	c0de2efc <pqcrystals_dilithium2_lowram_poly_chknorm+0x8>
c0de2f18:	2001      	movs	r0, #1
c0de2f1a:	4770      	bx	lr
c0de2f1c:	000ffc00 	.word	0x000ffc00

c0de2f20 <pqcrystals_dilithium2_lowram_poly_uniform>:
c0de2f20:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2f24:	f5ad 6d84 	sub.w	sp, sp, #1056	@ 0x420
c0de2f28:	46e8      	mov	r8, sp
c0de2f2a:	4683      	mov	fp, r0
c0de2f2c:	4640      	mov	r0, r8
c0de2f2e:	f001 f854 	bl	c0de3fda <pqcrystals_dilithium2_lowram_dilithium_shake128_stream_init>
c0de2f32:	f10d 06d6 	add.w	r6, sp, #214	@ 0xd6
c0de2f36:	2105      	movs	r1, #5
c0de2f38:	4642      	mov	r2, r8
c0de2f3a:	4630      	mov	r0, r6
c0de2f3c:	f7fe f99f 	bl	c0de127e <pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks>
c0de2f40:	4658      	mov	r0, fp
c0de2f42:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de2f46:	4632      	mov	r2, r6
c0de2f48:	f44f 7352 	mov.w	r3, #840	@ 0x348
c0de2f4c:	f44f 7552 	mov.w	r5, #840	@ 0x348
c0de2f50:	f000 f828 	bl	c0de2fa4 <rej_uniform>
c0de2f54:	4607      	mov	r7, r0
c0de2f56:	f04f 0a03 	mov.w	sl, #3
c0de2f5a:	2fff      	cmp	r7, #255	@ 0xff
c0de2f5c:	d81d      	bhi.n	c0de2f9a <pqcrystals_dilithium2_lowram_poly_uniform+0x7a>
c0de2f5e:	fbb5 f0fa 	udiv	r0, r5, sl
c0de2f62:	4631      	mov	r1, r6
c0de2f64:	eb00 0040 	add.w	r0, r0, r0, lsl #1
c0de2f68:	1a2c      	subs	r4, r5, r0
c0de2f6a:	42a8      	cmp	r0, r5
c0de2f6c:	d004      	beq.n	c0de2f78 <pqcrystals_dilithium2_lowram_poly_uniform+0x58>
c0de2f6e:	5c0a      	ldrb	r2, [r1, r0]
c0de2f70:	3d01      	subs	r5, #1
c0de2f72:	700a      	strb	r2, [r1, #0]
c0de2f74:	3101      	adds	r1, #1
c0de2f76:	e7f8      	b.n	c0de2f6a <pqcrystals_dilithium2_lowram_poly_uniform+0x4a>
c0de2f78:	1930      	adds	r0, r6, r4
c0de2f7a:	2101      	movs	r1, #1
c0de2f7c:	4642      	mov	r2, r8
c0de2f7e:	f7fe f97e 	bl	c0de127e <pqcrystals_dilithium_fips202_ref_shake128_squeezeblocks>
c0de2f82:	f044 05a8 	orr.w	r5, r4, #168	@ 0xa8
c0de2f86:	eb0b 0087 	add.w	r0, fp, r7, lsl #2
c0de2f8a:	f5c7 7180 	rsb	r1, r7, #256	@ 0x100
c0de2f8e:	4632      	mov	r2, r6
c0de2f90:	462b      	mov	r3, r5
c0de2f92:	f000 f807 	bl	c0de2fa4 <rej_uniform>
c0de2f96:	4407      	add	r7, r0
c0de2f98:	e7df      	b.n	c0de2f5a <pqcrystals_dilithium2_lowram_poly_uniform+0x3a>
c0de2f9a:	f50d 6d84 	add.w	sp, sp, #1056	@ 0x420
c0de2f9e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
	...

c0de2fa4 <rej_uniform>:
c0de2fa4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de2fa6:	4c0f      	ldr	r4, [pc, #60]	@ (c0de2fe4 <rej_uniform+0x40>)
c0de2fa8:	4684      	mov	ip, r0
c0de2faa:	2000      	movs	r0, #0
c0de2fac:	2700      	movs	r7, #0
c0de2fae:	46a6      	mov	lr, r4
c0de2fb0:	4288      	cmp	r0, r1
c0de2fb2:	d215      	bcs.n	c0de2fe0 <rej_uniform+0x3c>
c0de2fb4:	1cfe      	adds	r6, r7, #3
c0de2fb6:	429e      	cmp	r6, r3
c0de2fb8:	d812      	bhi.n	c0de2fe0 <rej_uniform+0x3c>
c0de2fba:	5dd4      	ldrb	r4, [r2, r7]
c0de2fbc:	4417      	add	r7, r2
c0de2fbe:	787d      	ldrb	r5, [r7, #1]
c0de2fc0:	78bf      	ldrb	r7, [r7, #2]
c0de2fc2:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de2fc6:	f007 057f 	and.w	r5, r7, #127	@ 0x7f
c0de2fca:	4637      	mov	r7, r6
c0de2fcc:	ea44 4405 	orr.w	r4, r4, r5, lsl #16
c0de2fd0:	4675      	mov	r5, lr
c0de2fd2:	4574      	cmp	r4, lr
c0de2fd4:	d8ec      	bhi.n	c0de2fb0 <rej_uniform+0xc>
c0de2fd6:	f84c 4020 	str.w	r4, [ip, r0, lsl #2]
c0de2fda:	3001      	adds	r0, #1
c0de2fdc:	4637      	mov	r7, r6
c0de2fde:	e7e7      	b.n	c0de2fb0 <rej_uniform+0xc>
c0de2fe0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de2fe2:	bf00      	nop
c0de2fe4:	007fe000 	.word	0x007fe000

c0de2fe8 <pqcrystals_dilithium2_lowram_poly_uniform_eta>:
c0de2fe8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de2fea:	b0d7      	sub	sp, #348	@ 0x15c
c0de2fec:	466d      	mov	r5, sp
c0de2fee:	4604      	mov	r4, r0
c0de2ff0:	4628      	mov	r0, r5
c0de2ff2:	f001 f806 	bl	c0de4002 <pqcrystals_dilithium2_lowram_dilithium_shake256_stream_init>
c0de2ff6:	ae35      	add	r6, sp, #212	@ 0xd4
c0de2ff8:	2101      	movs	r1, #1
c0de2ffa:	462a      	mov	r2, r5
c0de2ffc:	4630      	mov	r0, r6
c0de2ffe:	f7fe f998 	bl	c0de1332 <pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks>
c0de3002:	4620      	mov	r0, r4
c0de3004:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de3008:	4632      	mov	r2, r6
c0de300a:	f000 f813 	bl	c0de3034 <rej_eta>
c0de300e:	4607      	mov	r7, r0
c0de3010:	2fff      	cmp	r7, #255	@ 0xff
c0de3012:	bf84      	itt	hi
c0de3014:	b057      	addhi	sp, #348	@ 0x15c
c0de3016:	bdf0      	pophi	{r4, r5, r6, r7, pc}
c0de3018:	4630      	mov	r0, r6
c0de301a:	2101      	movs	r1, #1
c0de301c:	462a      	mov	r2, r5
c0de301e:	f7fe f988 	bl	c0de1332 <pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks>
c0de3022:	eb04 0087 	add.w	r0, r4, r7, lsl #2
c0de3026:	f5c7 7180 	rsb	r1, r7, #256	@ 0x100
c0de302a:	4632      	mov	r2, r6
c0de302c:	f000 f802 	bl	c0de3034 <rej_eta>
c0de3030:	4407      	add	r7, r0
c0de3032:	e7ed      	b.n	c0de3010 <pqcrystals_dilithium2_lowram_poly_uniform_eta+0x28>

c0de3034 <rej_eta>:
c0de3034:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3036:	4603      	mov	r3, r0
c0de3038:	2000      	movs	r0, #0
c0de303a:	f04f 0ccd 	mov.w	ip, #205	@ 0xcd
c0de303e:	2500      	movs	r5, #0
c0de3040:	4288      	cmp	r0, r1
c0de3042:	d221      	bcs.n	c0de3088 <rej_eta+0x54>
c0de3044:	2d87      	cmp	r5, #135	@ 0x87
c0de3046:	d81f      	bhi.n	c0de3088 <rej_eta+0x54>
c0de3048:	5d56      	ldrb	r6, [r2, r5]
c0de304a:	f006 070f 	and.w	r7, r6, #15
c0de304e:	2f0f      	cmp	r7, #15
c0de3050:	d009      	beq.n	c0de3066 <rej_eta+0x32>
c0de3052:	fb07 f40c 	mul.w	r4, r7, ip
c0de3056:	0aa4      	lsrs	r4, r4, #10
c0de3058:	eb04 0484 	add.w	r4, r4, r4, lsl #2
c0de305c:	1be4      	subs	r4, r4, r7
c0de305e:	3402      	adds	r4, #2
c0de3060:	f843 4020 	str.w	r4, [r3, r0, lsl #2]
c0de3064:	3001      	adds	r0, #1
c0de3066:	0936      	lsrs	r6, r6, #4
c0de3068:	2e0f      	cmp	r6, #15
c0de306a:	d00b      	beq.n	c0de3084 <rej_eta+0x50>
c0de306c:	4288      	cmp	r0, r1
c0de306e:	d209      	bcs.n	c0de3084 <rej_eta+0x50>
c0de3070:	fb06 f40c 	mul.w	r4, r6, ip
c0de3074:	0aa4      	lsrs	r4, r4, #10
c0de3076:	eb04 0484 	add.w	r4, r4, r4, lsl #2
c0de307a:	1ba4      	subs	r4, r4, r6
c0de307c:	3402      	adds	r4, #2
c0de307e:	f843 4020 	str.w	r4, [r3, r0, lsl #2]
c0de3082:	3001      	adds	r0, #1
c0de3084:	3501      	adds	r5, #1
c0de3086:	e7db      	b.n	c0de3040 <rej_eta+0xc>
c0de3088:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de308a <pqcrystals_dilithium2_lowram_polyz_unpack>:
c0de308a:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de308c:	3008      	adds	r0, #8
c0de308e:	f04f 0c00 	mov.w	ip, #0
c0de3092:	f5bc 7f10 	cmp.w	ip, #576	@ 0x240
c0de3096:	bf08      	it	eq
c0de3098:	bdf0      	popeq	{r4, r5, r6, r7, pc}
c0de309a:	f811 300c 	ldrb.w	r3, [r1, ip]
c0de309e:	eb01 040c 	add.w	r4, r1, ip
c0de30a2:	f10c 0c09 	add.w	ip, ip, #9
c0de30a6:	f840 3c08 	str.w	r3, [r0, #-8]
c0de30aa:	7865      	ldrb	r5, [r4, #1]
c0de30ac:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de30b0:	f840 3c08 	str.w	r3, [r0, #-8]
c0de30b4:	78a5      	ldrb	r5, [r4, #2]
c0de30b6:	f365 4311 	bfi	r3, r5, #16, #2
c0de30ba:	f840 3c08 	str.w	r3, [r0, #-8]
c0de30be:	f5c3 3300 	rsb	r3, r3, #131072	@ 0x20000
c0de30c2:	78a5      	ldrb	r5, [r4, #2]
c0de30c4:	08ae      	lsrs	r6, r5, #2
c0de30c6:	f840 6c04 	str.w	r6, [r0, #-4]
c0de30ca:	78e6      	ldrb	r6, [r4, #3]
c0de30cc:	01b6      	lsls	r6, r6, #6
c0de30ce:	ea46 0595 	orr.w	r5, r6, r5, lsr #2
c0de30d2:	f840 5c04 	str.w	r5, [r0, #-4]
c0de30d6:	7926      	ldrb	r6, [r4, #4]
c0de30d8:	f366 3591 	bfi	r5, r6, #14, #4
c0de30dc:	f840 5c04 	str.w	r5, [r0, #-4]
c0de30e0:	f5c5 3500 	rsb	r5, r5, #131072	@ 0x20000
c0de30e4:	7926      	ldrb	r6, [r4, #4]
c0de30e6:	0937      	lsrs	r7, r6, #4
c0de30e8:	6007      	str	r7, [r0, #0]
c0de30ea:	7967      	ldrb	r7, [r4, #5]
c0de30ec:	013f      	lsls	r7, r7, #4
c0de30ee:	ea47 1616 	orr.w	r6, r7, r6, lsr #4
c0de30f2:	6006      	str	r6, [r0, #0]
c0de30f4:	79a7      	ldrb	r7, [r4, #6]
c0de30f6:	f367 3611 	bfi	r6, r7, #12, #6
c0de30fa:	6006      	str	r6, [r0, #0]
c0de30fc:	f5c6 3600 	rsb	r6, r6, #131072	@ 0x20000
c0de3100:	79a7      	ldrb	r7, [r4, #6]
c0de3102:	09ba      	lsrs	r2, r7, #6
c0de3104:	6042      	str	r2, [r0, #4]
c0de3106:	79e2      	ldrb	r2, [r4, #7]
c0de3108:	0092      	lsls	r2, r2, #2
c0de310a:	ea42 1297 	orr.w	r2, r2, r7, lsr #6
c0de310e:	6042      	str	r2, [r0, #4]
c0de3110:	7a24      	ldrb	r4, [r4, #8]
c0de3112:	6006      	str	r6, [r0, #0]
c0de3114:	f840 5c04 	str.w	r5, [r0, #-4]
c0de3118:	f840 3c08 	str.w	r3, [r0, #-8]
c0de311c:	ea42 2284 	orr.w	r2, r2, r4, lsl #10
c0de3120:	f5c2 3200 	rsb	r2, r2, #131072	@ 0x20000
c0de3124:	6042      	str	r2, [r0, #4]
c0de3126:	3010      	adds	r0, #16
c0de3128:	e7b3      	b.n	c0de3092 <pqcrystals_dilithium2_lowram_polyz_unpack+0x8>

c0de312a <pqcrystals_dilithium2_lowram_poly_challenge>:
c0de312a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de312e:	b0d6      	sub	sp, #344	@ 0x158
c0de3130:	466e      	mov	r6, sp
c0de3132:	4680      	mov	r8, r0
c0de3134:	460d      	mov	r5, r1
c0de3136:	4630      	mov	r0, r6
c0de3138:	f7fe f8c4 	bl	c0de12c4 <pqcrystals_dilithium_fips202_ref_shake256_init>
c0de313c:	4630      	mov	r0, r6
c0de313e:	4629      	mov	r1, r5
c0de3140:	2220      	movs	r2, #32
c0de3142:	f7fe f8c7 	bl	c0de12d4 <pqcrystals_dilithium_fips202_ref_shake256_absorb>
c0de3146:	4630      	mov	r0, r6
c0de3148:	f7fe f8cf 	bl	c0de12ea <pqcrystals_dilithium_fips202_ref_shake256_finalize>
c0de314c:	ad34      	add	r5, sp, #208	@ 0xd0
c0de314e:	2101      	movs	r1, #1
c0de3150:	4632      	mov	r2, r6
c0de3152:	4628      	mov	r0, r5
c0de3154:	f7fe f8ed 	bl	c0de1332 <pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks>
c0de3158:	2600      	movs	r6, #0
c0de315a:	462c      	mov	r4, r5
c0de315c:	2700      	movs	r7, #0
c0de315e:	f04f 0a00 	mov.w	sl, #0
c0de3162:	2e40      	cmp	r6, #64	@ 0x40
c0de3164:	d006      	beq.n	c0de3174 <pqcrystals_dilithium2_lowram_poly_challenge+0x4a>
c0de3166:	f000 f945 	bl	c0de33f4 <OUTLINED_FUNCTION_1>
c0de316a:	ea4a 0a01 	orr.w	sl, sl, r1
c0de316e:	4307      	orrs	r7, r0
c0de3170:	3608      	adds	r6, #8
c0de3172:	e7f6      	b.n	c0de3162 <pqcrystals_dilithium2_lowram_poly_challenge+0x38>
c0de3174:	2000      	movs	r0, #0
c0de3176:	2100      	movs	r1, #0
c0de3178:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de317c:	d003      	beq.n	c0de3186 <pqcrystals_dilithium2_lowram_poly_challenge+0x5c>
c0de317e:	f848 0021 	str.w	r0, [r8, r1, lsl #2]
c0de3182:	3101      	adds	r1, #1
c0de3184:	e7f8      	b.n	c0de3178 <pqcrystals_dilithium2_lowram_poly_challenge+0x4e>
c0de3186:	2008      	movs	r0, #8
c0de3188:	24d9      	movs	r4, #217	@ 0xd9
c0de318a:	466e      	mov	r6, sp
c0de318c:	f04f 0b02 	mov.w	fp, #2
c0de3190:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
c0de3194:	d01b      	beq.n	c0de31ce <pqcrystals_dilithium2_lowram_poly_challenge+0xa4>
c0de3196:	2888      	cmp	r0, #136	@ 0x88
c0de3198:	d305      	bcc.n	c0de31a6 <pqcrystals_dilithium2_lowram_poly_challenge+0x7c>
c0de319a:	4628      	mov	r0, r5
c0de319c:	2101      	movs	r1, #1
c0de319e:	4632      	mov	r2, r6
c0de31a0:	f7fe f8c7 	bl	c0de1332 <pqcrystals_dilithium_fips202_ref_shake256_squeezeblocks>
c0de31a4:	2000      	movs	r0, #0
c0de31a6:	5c29      	ldrb	r1, [r5, r0]
c0de31a8:	3001      	adds	r0, #1
c0de31aa:	428c      	cmp	r4, r1
c0de31ac:	d3f3      	bcc.n	c0de3196 <pqcrystals_dilithium2_lowram_poly_challenge+0x6c>
c0de31ae:	f858 2021 	ldr.w	r2, [r8, r1, lsl #2]
c0de31b2:	ea5f 0a5a 	movs.w	sl, sl, lsr #1
c0de31b6:	f848 2024 	str.w	r2, [r8, r4, lsl #2]
c0de31ba:	ea0b 0247 	and.w	r2, fp, r7, lsl #1
c0de31be:	ea4f 0737 	mov.w	r7, r7, rrx
c0de31c2:	3401      	adds	r4, #1
c0de31c4:	f1c2 0201 	rsb	r2, r2, #1
c0de31c8:	f848 2021 	str.w	r2, [r8, r1, lsl #2]
c0de31cc:	e7e0      	b.n	c0de3190 <pqcrystals_dilithium2_lowram_poly_challenge+0x66>
c0de31ce:	b056      	add	sp, #344	@ 0x158
c0de31d0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de31d4 <pqcrystals_dilithium2_lowram_polyeta_pack>:
c0de31d4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de31d8:	3001      	adds	r0, #1
c0de31da:	2200      	movs	r2, #0
c0de31dc:	2640      	movs	r6, #64	@ 0x40
c0de31de:	f5b2 6f80 	cmp.w	r2, #1024	@ 0x400
c0de31e2:	bf08      	it	eq
c0de31e4:	e8bd 8df0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de31e8:	188b      	adds	r3, r1, r2
c0de31ea:	f851 8002 	ldr.w	r8, [r1, r2]
c0de31ee:	2710      	movs	r7, #16
c0de31f0:	3220      	adds	r2, #32
c0de31f2:	f103 0b04 	add.w	fp, r3, #4
c0de31f6:	f103 0e10 	add.w	lr, r3, #16
c0de31fa:	69db      	ldr	r3, [r3, #28]
c0de31fc:	e89b 0830 	ldmia.w	fp, {r4, r5, fp}
c0de3200:	e89e 5400 	ldmia.w	lr, {sl, ip, lr}
c0de3204:	f1c5 0502 	rsb	r5, r5, #2
c0de3208:	eba6 1343 	sub.w	r3, r6, r3, lsl #5
c0de320c:	eba7 04c4 	sub.w	r4, r7, r4, lsl #3
c0de3210:	f1c8 0702 	rsb	r7, r8, #2
c0de3214:	b2ed      	uxtb	r5, r5
c0de3216:	433c      	orrs	r4, r7
c0de3218:	f1cc 0702 	rsb	r7, ip, #2
c0de321c:	ea44 1485 	orr.w	r4, r4, r5, lsl #6
c0de3220:	b2ff      	uxtb	r7, r7
c0de3222:	f800 4c01 	strb.w	r4, [r0, #-1]
c0de3226:	2408      	movs	r4, #8
c0de3228:	eba4 048e 	sub.w	r4, r4, lr, lsl #2
c0de322c:	ea44 0457 	orr.w	r4, r4, r7, lsr #1
c0de3230:	4323      	orrs	r3, r4
c0de3232:	2420      	movs	r4, #32
c0de3234:	7043      	strb	r3, [r0, #1]
c0de3236:	2304      	movs	r3, #4
c0de3238:	eba4 140a 	sub.w	r4, r4, sl, lsl #4
c0de323c:	eba3 034b 	sub.w	r3, r3, fp, lsl #1
c0de3240:	ea43 0395 	orr.w	r3, r3, r5, lsr #2
c0de3244:	4323      	orrs	r3, r4
c0de3246:	ea43 13c7 	orr.w	r3, r3, r7, lsl #7
c0de324a:	f800 3b03 	strb.w	r3, [r0], #3
c0de324e:	e7c6      	b.n	c0de31de <pqcrystals_dilithium2_lowram_polyeta_pack+0xa>

c0de3250 <pqcrystals_dilithium2_lowram_polyt1_pack>:
c0de3250:	b5b0      	push	{r4, r5, r7, lr}
c0de3252:	3108      	adds	r1, #8
c0de3254:	2200      	movs	r2, #0
c0de3256:	f5b2 7fa0 	cmp.w	r2, #320	@ 0x140
c0de325a:	bf08      	it	eq
c0de325c:	bdb0      	popeq	{r4, r5, r7, pc}
c0de325e:	f851 3c08 	ldr.w	r3, [r1, #-8]
c0de3262:	5483      	strb	r3, [r0, r2]
c0de3264:	1883      	adds	r3, r0, r2
c0de3266:	3205      	adds	r2, #5
c0de3268:	e951 4502 	ldrd	r4, r5, [r1, #-8]
c0de326c:	00ad      	lsls	r5, r5, #2
c0de326e:	ea45 2414 	orr.w	r4, r5, r4, lsr #8
c0de3272:	705c      	strb	r4, [r3, #1]
c0de3274:	680d      	ldr	r5, [r1, #0]
c0de3276:	f851 4c04 	ldr.w	r4, [r1, #-4]
c0de327a:	012d      	lsls	r5, r5, #4
c0de327c:	ea45 1494 	orr.w	r4, r5, r4, lsr #6
c0de3280:	709c      	strb	r4, [r3, #2]
c0de3282:	e9d1 4500 	ldrd	r4, r5, [r1]
c0de3286:	01ad      	lsls	r5, r5, #6
c0de3288:	ea45 1414 	orr.w	r4, r5, r4, lsr #4
c0de328c:	70dc      	strb	r4, [r3, #3]
c0de328e:	684c      	ldr	r4, [r1, #4]
c0de3290:	3110      	adds	r1, #16
c0de3292:	08a4      	lsrs	r4, r4, #2
c0de3294:	711c      	strb	r4, [r3, #4]
c0de3296:	e7de      	b.n	c0de3256 <pqcrystals_dilithium2_lowram_polyt1_pack+0x6>

c0de3298 <pqcrystals_dilithium2_lowram_polyt0_pack>:
c0de3298:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de329c:	311c      	adds	r1, #28
c0de329e:	f04f 0c00 	mov.w	ip, #0
c0de32a2:	9000      	str	r0, [sp, #0]
c0de32a4:	f5bc 7fd0 	cmp.w	ip, #416	@ 0x1a0
c0de32a8:	bf08      	it	eq
c0de32aa:	e8bd 8dfc 	ldmiaeq.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de32ae:	f851 0c14 	ldr.w	r0, [r1, #-20]
c0de32b2:	e951 a504 	ldrd	sl, r5, [r1, #-16]
c0de32b6:	e951 3807 	ldrd	r3, r8, [r1, #-28]
c0de32ba:	e951 e602 	ldrd	lr, r6, [r1, #-8]
c0de32be:	f851 7b20 	ldr.w	r7, [r1], #32
c0de32c2:	9001      	str	r0, [sp, #4]
c0de32c4:	9800      	ldr	r0, [sp, #0]
c0de32c6:	f5c7 5780 	rsb	r7, r7, #4096	@ 0x1000
c0de32ca:	f5c3 5b80 	rsb	fp, r3, #4096	@ 0x1000
c0de32ce:	f5c5 5580 	rsb	r5, r5, #4096	@ 0x1000
c0de32d2:	097b      	lsrs	r3, r7, #5
c0de32d4:	eb00 040c 	add.w	r4, r0, ip
c0de32d8:	f800 b00c 	strb.w	fp, [r0, ip]
c0de32dc:	f10c 0c0d 	add.w	ip, ip, #13
c0de32e0:	7323      	strb	r3, [r4, #12]
c0de32e2:	f5c6 5380 	rsb	r3, r6, #4096	@ 0x1000
c0de32e6:	089e      	lsrs	r6, r3, #2
c0de32e8:	72a6      	strb	r6, [r4, #10]
c0de32ea:	092e      	lsrs	r6, r5, #4
c0de32ec:	71e6      	strb	r6, [r4, #7]
c0de32ee:	f5ca 5680 	rsb	r6, sl, #4096	@ 0x1000
c0de32f2:	0872      	lsrs	r2, r6, #1
c0de32f4:	7162      	strb	r2, [r4, #5]
c0de32f6:	f5c8 5280 	rsb	r2, r8, #4096	@ 0x1000
c0de32fa:	08d0      	lsrs	r0, r2, #3
c0de32fc:	70a0      	strb	r0, [r4, #2]
c0de32fe:	00f8      	lsls	r0, r7, #3
c0de3300:	ea40 2093 	orr.w	r0, r0, r3, lsr #10
c0de3304:	019b      	lsls	r3, r3, #6
c0de3306:	72e0      	strb	r0, [r4, #11]
c0de3308:	f5ce 5080 	rsb	r0, lr, #4096	@ 0x1000
c0de330c:	ea43 13d0 	orr.w	r3, r3, r0, lsr #7
c0de3310:	0040      	lsls	r0, r0, #1
c0de3312:	ea40 3015 	orr.w	r0, r0, r5, lsr #12
c0de3316:	7263      	strb	r3, [r4, #9]
c0de3318:	01f3      	lsls	r3, r6, #7
c0de331a:	7220      	strb	r0, [r4, #8]
c0de331c:	0128      	lsls	r0, r5, #4
c0de331e:	ea40 2056 	orr.w	r0, r0, r6, lsr #9
c0de3322:	71a0      	strb	r0, [r4, #6]
c0de3324:	9801      	ldr	r0, [sp, #4]
c0de3326:	f5c0 5080 	rsb	r0, r0, #4096	@ 0x1000
c0de332a:	ea43 1390 	orr.w	r3, r3, r0, lsr #6
c0de332e:	0080      	lsls	r0, r0, #2
c0de3330:	ea40 20d2 	orr.w	r0, r0, r2, lsr #11
c0de3334:	7123      	strb	r3, [r4, #4]
c0de3336:	70e0      	strb	r0, [r4, #3]
c0de3338:	0150      	lsls	r0, r2, #5
c0de333a:	ea40 201b 	orr.w	r0, r0, fp, lsr #8
c0de333e:	7060      	strb	r0, [r4, #1]
c0de3340:	e7b0      	b.n	c0de32a4 <pqcrystals_dilithium2_lowram_polyt0_pack+0xc>

c0de3342 <pqcrystals_dilithium2_lowram_polyz_pack>:
c0de3342:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3344:	3108      	adds	r1, #8
c0de3346:	f04f 0e00 	mov.w	lr, #0
c0de334a:	f5be 7f10 	cmp.w	lr, #576	@ 0x240
c0de334e:	bf08      	it	eq
c0de3350:	bdf0      	popeq	{r4, r5, r6, r7, pc}
c0de3352:	e951 3c02 	ldrd	r3, ip, [r1, #-8]
c0de3356:	e8f1 5604 	ldrd	r5, r6, [r1], #16
c0de335a:	eb00 070e 	add.w	r7, r0, lr
c0de335e:	f5c6 3600 	rsb	r6, r6, #131072	@ 0x20000
c0de3362:	f5c3 3300 	rsb	r3, r3, #131072	@ 0x20000
c0de3366:	0ab4      	lsrs	r4, r6, #10
c0de3368:	f800 300e 	strb.w	r3, [r0, lr]
c0de336c:	f10e 0e09 	add.w	lr, lr, #9
c0de3370:	723c      	strb	r4, [r7, #8]
c0de3372:	08b4      	lsrs	r4, r6, #2
c0de3374:	71fc      	strb	r4, [r7, #7]
c0de3376:	f5c5 3400 	rsb	r4, r5, #131072	@ 0x20000
c0de337a:	0925      	lsrs	r5, r4, #4
c0de337c:	717d      	strb	r5, [r7, #5]
c0de337e:	f5cc 3500 	rsb	r5, ip, #131072	@ 0x20000
c0de3382:	09aa      	lsrs	r2, r5, #6
c0de3384:	70fa      	strb	r2, [r7, #3]
c0de3386:	0a1a      	lsrs	r2, r3, #8
c0de3388:	707a      	strb	r2, [r7, #1]
c0de338a:	01b2      	lsls	r2, r6, #6
c0de338c:	ea42 3214 	orr.w	r2, r2, r4, lsr #12
c0de3390:	71ba      	strb	r2, [r7, #6]
c0de3392:	0122      	lsls	r2, r4, #4
c0de3394:	ea42 3295 	orr.w	r2, r2, r5, lsr #14
c0de3398:	713a      	strb	r2, [r7, #4]
c0de339a:	00aa      	lsls	r2, r5, #2
c0de339c:	ea42 4213 	orr.w	r2, r2, r3, lsr #16
c0de33a0:	70ba      	strb	r2, [r7, #2]
c0de33a2:	e7d2      	b.n	c0de334a <pqcrystals_dilithium2_lowram_polyz_pack+0x8>

c0de33a4 <pqcrystals_dilithium2_lowram_polyw1_pack>:
c0de33a4:	b5b0      	push	{r4, r5, r7, lr}
c0de33a6:	3001      	adds	r0, #1
c0de33a8:	2200      	movs	r2, #0
c0de33aa:	f5b2 6f80 	cmp.w	r2, #1024	@ 0x400
c0de33ae:	bf08      	it	eq
c0de33b0:	bdb0      	popeq	{r4, r5, r7, pc}
c0de33b2:	588b      	ldr	r3, [r1, r2]
c0de33b4:	188c      	adds	r4, r1, r2
c0de33b6:	3210      	adds	r2, #16
c0de33b8:	f800 3c01 	strb.w	r3, [r0, #-1]
c0de33bc:	6865      	ldr	r5, [r4, #4]
c0de33be:	ea43 1385 	orr.w	r3, r3, r5, lsl #6
c0de33c2:	f800 3c01 	strb.w	r3, [r0, #-1]
c0de33c6:	6863      	ldr	r3, [r4, #4]
c0de33c8:	089d      	lsrs	r5, r3, #2
c0de33ca:	7005      	strb	r5, [r0, #0]
c0de33cc:	68a5      	ldr	r5, [r4, #8]
c0de33ce:	012d      	lsls	r5, r5, #4
c0de33d0:	ea45 0393 	orr.w	r3, r5, r3, lsr #2
c0de33d4:	7003      	strb	r3, [r0, #0]
c0de33d6:	68a3      	ldr	r3, [r4, #8]
c0de33d8:	091d      	lsrs	r5, r3, #4
c0de33da:	7045      	strb	r5, [r0, #1]
c0de33dc:	68e4      	ldr	r4, [r4, #12]
c0de33de:	00a4      	lsls	r4, r4, #2
c0de33e0:	ea44 1313 	orr.w	r3, r4, r3, lsr #4
c0de33e4:	7043      	strb	r3, [r0, #1]
c0de33e6:	3003      	adds	r0, #3
c0de33e8:	e7df      	b.n	c0de33aa <pqcrystals_dilithium2_lowram_polyw1_pack+0x6>

c0de33ea <OUTLINED_FUNCTION_0>:
c0de33ea:	4614      	mov	r4, r2
c0de33ec:	460d      	mov	r5, r1
c0de33ee:	4606      	mov	r6, r0
c0de33f0:	2700      	movs	r7, #0
c0de33f2:	4770      	bx	lr

c0de33f4 <OUTLINED_FUNCTION_1>:
c0de33f4:	f814 0b01 	ldrb.w	r0, [r4], #1
c0de33f8:	2100      	movs	r1, #0
c0de33fa:	4632      	mov	r2, r6
c0de33fc:	f008 bf30 	b.w	c0dec260 <__aeabi_llsl>

c0de3400 <randombytes>:
c0de3400:	f007 beb9 	b.w	c0deb176 <cx_rng_no_throw>

c0de3404 <pqcrystals_dilithium2_lowram_montgomery_reduce>:
c0de3404:	4a03      	ldr	r2, [pc, #12]	@ (c0de3414 <pqcrystals_dilithium2_lowram_montgomery_reduce+0x10>)
c0de3406:	4b04      	ldr	r3, [pc, #16]	@ (c0de3418 <pqcrystals_dilithium2_lowram_montgomery_reduce+0x14>)
c0de3408:	4342      	muls	r2, r0
c0de340a:	fbc2 0103 	smlal	r0, r1, r2, r3
c0de340e:	4608      	mov	r0, r1
c0de3410:	4770      	bx	lr
c0de3412:	bf00      	nop
c0de3414:	03802001 	.word	0x03802001
c0de3418:	ff801fff 	.word	0xff801fff

c0de341c <pqcrystals_dilithium2_lowram_reduce32>:
c0de341c:	f500 0180 	add.w	r1, r0, #4194304	@ 0x400000
c0de3420:	4a02      	ldr	r2, [pc, #8]	@ (c0de342c <pqcrystals_dilithium2_lowram_reduce32+0x10>)
c0de3422:	15c9      	asrs	r1, r1, #23
c0de3424:	fb01 0002 	mla	r0, r1, r2, r0
c0de3428:	4770      	bx	lr
c0de342a:	bf00      	nop
c0de342c:	ff801fff 	.word	0xff801fff

c0de3430 <pqcrystals_dilithium2_lowram_caddq>:
c0de3430:	4902      	ldr	r1, [pc, #8]	@ (c0de343c <pqcrystals_dilithium2_lowram_caddq+0xc>)
c0de3432:	2800      	cmp	r0, #0
c0de3434:	bf48      	it	mi
c0de3436:	4408      	addmi	r0, r1
c0de3438:	4770      	bx	lr
c0de343a:	bf00      	nop
c0de343c:	007fe001 	.word	0x007fe001

c0de3440 <pqcrystals_dilithium2_lowram_freeze>:
c0de3440:	f500 0180 	add.w	r1, r0, #4194304	@ 0x400000
c0de3444:	4a04      	ldr	r2, [pc, #16]	@ (c0de3458 <pqcrystals_dilithium2_lowram_freeze+0x18>)
c0de3446:	15c9      	asrs	r1, r1, #23
c0de3448:	fb01 0002 	mla	r0, r1, r2, r0
c0de344c:	4903      	ldr	r1, [pc, #12]	@ (c0de345c <pqcrystals_dilithium2_lowram_freeze+0x1c>)
c0de344e:	2800      	cmp	r0, #0
c0de3450:	bf48      	it	mi
c0de3452:	4408      	addmi	r0, r1
c0de3454:	4770      	bx	lr
c0de3456:	bf00      	nop
c0de3458:	ff801fff 	.word	0xff801fff
c0de345c:	007fe001 	.word	0x007fe001

c0de3460 <pqcrystals_dilithium2_lowram_power2round>:
c0de3460:	f601 72ff 	addw	r2, r1, #4095	@ 0xfff
c0de3464:	f641 73ff 	movw	r3, #8191	@ 0x1fff
c0de3468:	ea22 0303 	bic.w	r3, r2, r3
c0de346c:	1ac9      	subs	r1, r1, r3
c0de346e:	6001      	str	r1, [r0, #0]
c0de3470:	1350      	asrs	r0, r2, #13
c0de3472:	4770      	bx	lr

c0de3474 <pqcrystals_dilithium2_lowram_decompose>:
c0de3474:	b510      	push	{r4, lr}
c0de3476:	f101 027f 	add.w	r2, r1, #127	@ 0x7f
c0de347a:	f642 430b 	movw	r3, #11275	@ 0x2c0b
c0de347e:	4c0c      	ldr	r4, [pc, #48]	@ (c0de34b0 <pqcrystals_dilithium2_lowram_decompose+0x3c>)
c0de3480:	11d2      	asrs	r2, r2, #7
c0de3482:	4353      	muls	r3, r2
c0de3484:	f503 0200 	add.w	r2, r3, #8388608	@ 0x800000
c0de3488:	1612      	asrs	r2, r2, #24
c0de348a:	f1b3 5f2e 	cmp.w	r3, #729808896	@ 0x2b800000
c0de348e:	4b06      	ldr	r3, [pc, #24]	@ (c0de34a8 <pqcrystals_dilithium2_lowram_decompose+0x34>)
c0de3490:	bfa8      	it	ge
c0de3492:	2200      	movge	r2, #0
c0de3494:	fb02 1103 	mla	r1, r2, r3, r1
c0de3498:	4b04      	ldr	r3, [pc, #16]	@ (c0de34ac <pqcrystals_dilithium2_lowram_decompose+0x38>)
c0de349a:	42a1      	cmp	r1, r4
c0de349c:	bfc8      	it	gt
c0de349e:	4419      	addgt	r1, r3
c0de34a0:	6001      	str	r1, [r0, #0]
c0de34a2:	4610      	mov	r0, r2
c0de34a4:	bd10      	pop	{r4, pc}
c0de34a6:	bf00      	nop
c0de34a8:	fffd1800 	.word	0xfffd1800
c0de34ac:	ff801fff 	.word	0xff801fff
c0de34b0:	003ff000 	.word	0x003ff000

c0de34b4 <pqcrystals_dilithium2_lowram_use_hint>:
c0de34b4:	b51c      	push	{r2, r3, r4, lr}
c0de34b6:	460c      	mov	r4, r1
c0de34b8:	4601      	mov	r1, r0
c0de34ba:	a801      	add	r0, sp, #4
c0de34bc:	f7ff ffda 	bl	c0de3474 <pqcrystals_dilithium2_lowram_decompose>
c0de34c0:	b164      	cbz	r4, c0de34dc <pqcrystals_dilithium2_lowram_use_hint+0x28>
c0de34c2:	9901      	ldr	r1, [sp, #4]
c0de34c4:	2901      	cmp	r1, #1
c0de34c6:	db04      	blt.n	c0de34d2 <pqcrystals_dilithium2_lowram_use_hint+0x1e>
c0de34c8:	f1b0 012b 	subs.w	r1, r0, #43	@ 0x2b
c0de34cc:	bf18      	it	ne
c0de34ce:	1c41      	addne	r1, r0, #1
c0de34d0:	e003      	b.n	c0de34da <pqcrystals_dilithium2_lowram_use_hint+0x26>
c0de34d2:	1e41      	subs	r1, r0, #1
c0de34d4:	2800      	cmp	r0, #0
c0de34d6:	bf08      	it	eq
c0de34d8:	212b      	moveq	r1, #43	@ 0x2b
c0de34da:	4608      	mov	r0, r1
c0de34dc:	bd1c      	pop	{r2, r3, r4, pc}

c0de34de <pqcrystals_dilithium2_lowram_keypair>:
c0de34de:	b570      	push	{r4, r5, r6, lr}
c0de34e0:	b088      	sub	sp, #32
c0de34e2:	466e      	mov	r6, sp
c0de34e4:	460c      	mov	r4, r1
c0de34e6:	4605      	mov	r5, r0
c0de34e8:	2120      	movs	r1, #32
c0de34ea:	4630      	mov	r0, r6
c0de34ec:	f7ff ff88 	bl	c0de3400 <randombytes>
c0de34f0:	4628      	mov	r0, r5
c0de34f2:	4621      	mov	r1, r4
c0de34f4:	4632      	mov	r2, r6
c0de34f6:	f000 f803 	bl	c0de3500 <crypto_sign_keypair_core>
c0de34fa:	2000      	movs	r0, #0
c0de34fc:	b008      	add	sp, #32
c0de34fe:	bd70      	pop	{r4, r5, r6, pc}

c0de3500 <crypto_sign_keypair_core>:
c0de3500:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3504:	f6ad 4d88 	subw	sp, sp, #3208	@ 0xc88
c0de3508:	f60d 4608 	addw	r6, sp, #3080	@ 0xc08
c0de350c:	460c      	mov	r4, r1
c0de350e:	4605      	mov	r5, r0
c0de3510:	4611      	mov	r1, r2
c0de3512:	2220      	movs	r2, #32
c0de3514:	4630      	mov	r0, r6
c0de3516:	f009 f840 	bl	c0dec59a <__aeabi_memcpy>
c0de351a:	f240 4004 	movw	r0, #1028	@ 0x404
c0de351e:	f8ad 0c28 	strh.w	r0, [sp, #3112]	@ 0xc28
c0de3522:	af02      	add	r7, sp, #8
c0de3524:	4638      	mov	r0, r7
c0de3526:	f7fd fecd 	bl	c0de12c4 <pqcrystals_dilithium_fips202_ref_shake256_init>
c0de352a:	4638      	mov	r0, r7
c0de352c:	4631      	mov	r1, r6
c0de352e:	2222      	movs	r2, #34	@ 0x22
c0de3530:	f7fd fed0 	bl	c0de12d4 <pqcrystals_dilithium_fips202_ref_shake256_absorb>
c0de3534:	4638      	mov	r0, r7
c0de3536:	f7fd fed8 	bl	c0de12ea <pqcrystals_dilithium_fips202_ref_shake256_finalize>
c0de353a:	4630      	mov	r0, r6
c0de353c:	2180      	movs	r1, #128	@ 0x80
c0de353e:	463a      	mov	r2, r7
c0de3540:	f7fd fede 	bl	c0de1300 <pqcrystals_dilithium_fips202_ref_shake256_squeeze>
c0de3544:	4620      	mov	r0, r4
c0de3546:	4631      	mov	r1, r6
c0de3548:	f7ff fb57 	bl	c0de2bfa <pack_sk_rho>
c0de354c:	f106 0160 	add.w	r1, r6, #96	@ 0x60
c0de3550:	4620      	mov	r0, r4
c0de3552:	9401      	str	r4, [sp, #4]
c0de3554:	f7ff fb59 	bl	c0de2c0a <pack_sk_key>
c0de3558:	4628      	mov	r0, r5
c0de355a:	4631      	mov	r1, r6
c0de355c:	9500      	str	r5, [sp, #0]
c0de355e:	f7ff fb26 	bl	c0de2bae <pack_pk_rho>
c0de3562:	f106 0520 	add.w	r5, r6, #32
c0de3566:	f04f 0b00 	mov.w	fp, #0
c0de356a:	f50d 6481 	add.w	r4, sp, #1032	@ 0x408
c0de356e:	f60d 0608 	addw	r6, sp, #2056	@ 0x808
c0de3572:	f04f 0800 	mov.w	r8, #0
c0de3576:	f1b8 0f04 	cmp.w	r8, #4
c0de357a:	d072      	beq.n	c0de3662 <crypto_sign_keypair_core+0x162>
c0de357c:	4638      	mov	r0, r7
c0de357e:	4629      	mov	r1, r5
c0de3580:	2200      	movs	r2, #0
c0de3582:	f7ff fd31 	bl	c0de2fe8 <pqcrystals_dilithium2_lowram_poly_uniform_eta>
c0de3586:	f1b8 0f00 	cmp.w	r8, #0
c0de358a:	d104      	bne.n	c0de3596 <crypto_sign_keypair_core+0x96>
c0de358c:	9801      	ldr	r0, [sp, #4]
c0de358e:	4639      	mov	r1, r7
c0de3590:	2200      	movs	r2, #0
c0de3592:	f7ff fb1b 	bl	c0de2bcc <pack_sk_s1>
c0de3596:	4638      	mov	r0, r7
c0de3598:	f7ff fc87 	bl	c0de2eaa <pqcrystals_dilithium2_lowram_poly_ntt>
c0de359c:	ea4f 2008 	mov.w	r0, r8, lsl #8
c0de35a0:	f60d 4108 	addw	r1, sp, #3080	@ 0xc08
c0de35a4:	b282      	uxth	r2, r0
c0de35a6:	4620      	mov	r0, r4
c0de35a8:	f7ff fcba 	bl	c0de2f20 <pqcrystals_dilithium2_lowram_poly_uniform>
c0de35ac:	4630      	mov	r0, r6
c0de35ae:	4621      	mov	r1, r4
c0de35b0:	463a      	mov	r2, r7
c0de35b2:	f7ff fc7e 	bl	c0de2eb2 <pqcrystals_dilithium2_lowram_poly_pointwise_montgomery>
c0de35b6:	f04f 0a01 	mov.w	sl, #1
c0de35ba:	f1ba 0f04 	cmp.w	sl, #4
c0de35be:	d020      	beq.n	c0de3602 <crypto_sign_keypair_core+0x102>
c0de35c0:	fa1f f28a 	uxth.w	r2, sl
c0de35c4:	4638      	mov	r0, r7
c0de35c6:	4629      	mov	r1, r5
c0de35c8:	f7ff fd0e 	bl	c0de2fe8 <pqcrystals_dilithium2_lowram_poly_uniform_eta>
c0de35cc:	f1b8 0f00 	cmp.w	r8, #0
c0de35d0:	d104      	bne.n	c0de35dc <crypto_sign_keypair_core+0xdc>
c0de35d2:	9801      	ldr	r0, [sp, #4]
c0de35d4:	4639      	mov	r1, r7
c0de35d6:	4652      	mov	r2, sl
c0de35d8:	f7ff faf8 	bl	c0de2bcc <pack_sk_s1>
c0de35dc:	4638      	mov	r0, r7
c0de35de:	f7ff fc64 	bl	c0de2eaa <pqcrystals_dilithium2_lowram_poly_ntt>
c0de35e2:	eb0b 000a 	add.w	r0, fp, sl
c0de35e6:	f60d 4108 	addw	r1, sp, #3080	@ 0xc08
c0de35ea:	b282      	uxth	r2, r0
c0de35ec:	4620      	mov	r0, r4
c0de35ee:	f7ff fc97 	bl	c0de2f20 <pqcrystals_dilithium2_lowram_poly_uniform>
c0de35f2:	4630      	mov	r0, r6
c0de35f4:	4621      	mov	r1, r4
c0de35f6:	463a      	mov	r2, r7
c0de35f8:	f7ff fb72 	bl	c0de2ce0 <pqcrystals_dilithium2_lowram_poly_pointwise_acc_montgomery>
c0de35fc:	f10a 0a01 	add.w	sl, sl, #1
c0de3600:	e7db      	b.n	c0de35ba <crypto_sign_keypair_core+0xba>
c0de3602:	4630      	mov	r0, r6
c0de3604:	f7ff fc24 	bl	c0de2e50 <pqcrystals_dilithium2_lowram_poly_reduce>
c0de3608:	4630      	mov	r0, r6
c0de360a:	f7ff fc50 	bl	c0de2eae <pqcrystals_dilithium2_lowram_poly_invntt_tomont>
c0de360e:	f108 0004 	add.w	r0, r8, #4
c0de3612:	4629      	mov	r1, r5
c0de3614:	b282      	uxth	r2, r0
c0de3616:	4620      	mov	r0, r4
c0de3618:	f7ff fce6 	bl	c0de2fe8 <pqcrystals_dilithium2_lowram_poly_uniform_eta>
c0de361c:	f8dd a004 	ldr.w	sl, [sp, #4]
c0de3620:	4621      	mov	r1, r4
c0de3622:	4642      	mov	r2, r8
c0de3624:	4650      	mov	r0, sl
c0de3626:	f7ff fad8 	bl	c0de2bda <pack_sk_s2>
c0de362a:	4630      	mov	r0, r6
c0de362c:	4631      	mov	r1, r6
c0de362e:	4622      	mov	r2, r4
c0de3630:	f7ff fc2c 	bl	c0de2e8c <pqcrystals_dilithium2_lowram_poly_add>
c0de3634:	4630      	mov	r0, r6
c0de3636:	f7ff fc1a 	bl	c0de2e6e <pqcrystals_dilithium2_lowram_poly_caddq>
c0de363a:	4638      	mov	r0, r7
c0de363c:	4621      	mov	r1, r4
c0de363e:	4632      	mov	r2, r6
c0de3640:	f7ff fc4a 	bl	c0de2ed8 <pqcrystals_dilithium2_lowram_poly_power2round>
c0de3644:	4650      	mov	r0, sl
c0de3646:	4621      	mov	r1, r4
c0de3648:	4642      	mov	r2, r8
c0de364a:	f7ff face 	bl	c0de2bea <pack_sk_t0>
c0de364e:	9800      	ldr	r0, [sp, #0]
c0de3650:	4639      	mov	r1, r7
c0de3652:	4642      	mov	r2, r8
c0de3654:	f7ff fab3 	bl	c0de2bbe <pack_pk_t1>
c0de3658:	f50b 7b80 	add.w	fp, fp, #256	@ 0x100
c0de365c:	f108 0801 	add.w	r8, r8, #1
c0de3660:	e789      	b.n	c0de3576 <crypto_sign_keypair_core+0x76>
c0de3662:	ac02      	add	r4, sp, #8
c0de3664:	9e00      	ldr	r6, [sp, #0]
c0de3666:	2140      	movs	r1, #64	@ 0x40
c0de3668:	f44f 63a4 	mov.w	r3, #1312	@ 0x520
c0de366c:	4620      	mov	r0, r4
c0de366e:	4632      	mov	r2, r6
c0de3670:	f7fd fe62 	bl	c0de1338 <pqcrystals_dilithium_fips202_ref_shake256>
c0de3674:	480c      	ldr	r0, [pc, #48]	@ (c0de36a8 <crypto_sign_keypair_core+0x1a8>)
c0de3676:	4621      	mov	r1, r4
c0de3678:	2240      	movs	r2, #64	@ 0x40
c0de367a:	eb09 0500 	add.w	r5, r9, r0
c0de367e:	f505 7008 	add.w	r0, r5, #544	@ 0x220
c0de3682:	f008 ff8a 	bl	c0dec59a <__aeabi_memcpy>
c0de3686:	f505 7018 	add.w	r0, r5, #608	@ 0x260
c0de368a:	4631      	mov	r1, r6
c0de368c:	f44f 62a4 	mov.w	r2, #1312	@ 0x520
c0de3690:	f008 ff83 	bl	c0dec59a <__aeabi_memcpy>
c0de3694:	9801      	ldr	r0, [sp, #4]
c0de3696:	4621      	mov	r1, r4
c0de3698:	f7ff fac0 	bl	c0de2c1c <pack_sk_tr>
c0de369c:	2000      	movs	r0, #0
c0de369e:	f60d 4d88 	addw	sp, sp, #3208	@ 0xc88
c0de36a2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de36a6:	bf00      	nop
c0de36a8:	000002d8 	.word	0x000002d8

c0de36ac <crypto_sign_signature_init>:
c0de36ac:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de36b0:	29ff      	cmp	r1, #255	@ 0xff
c0de36b2:	d902      	bls.n	c0de36ba <crypto_sign_signature_init+0xe>
c0de36b4:	f04f 34ff 	mov.w	r4, #4294967295	@ 0xffffffff
c0de36b8:	e01c      	b.n	c0de36f4 <crypto_sign_signature_init+0x48>
c0de36ba:	4680      	mov	r8, r0
c0de36bc:	480f      	ldr	r0, [pc, #60]	@ (c0de36fc <crypto_sign_signature_init+0x50>)
c0de36be:	2400      	movs	r4, #0
c0de36c0:	460d      	mov	r5, r1
c0de36c2:	eb09 0700 	add.w	r7, r9, r0
c0de36c6:	4638      	mov	r0, r7
c0de36c8:	f887 11a1 	strb.w	r1, [r7, #417]	@ 0x1a1
c0de36cc:	f887 41a0 	strb.w	r4, [r7, #416]	@ 0x1a0
c0de36d0:	f7fd fdf8 	bl	c0de12c4 <pqcrystals_dilithium_fips202_ref_shake256_init>
c0de36d4:	4e0a      	ldr	r6, [pc, #40]	@ (c0de3700 <crypto_sign_signature_init+0x54>)
c0de36d6:	f507 7108 	add.w	r1, r7, #544	@ 0x220
c0de36da:	4638      	mov	r0, r7
c0de36dc:	2240      	movs	r2, #64	@ 0x40
c0de36de:	447e      	add	r6, pc
c0de36e0:	47b0      	blx	r6
c0de36e2:	f507 71d0 	add.w	r1, r7, #416	@ 0x1a0
c0de36e6:	4638      	mov	r0, r7
c0de36e8:	2202      	movs	r2, #2
c0de36ea:	47b0      	blx	r6
c0de36ec:	4638      	mov	r0, r7
c0de36ee:	4641      	mov	r1, r8
c0de36f0:	462a      	mov	r2, r5
c0de36f2:	47b0      	blx	r6
c0de36f4:	4620      	mov	r0, r4
c0de36f6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de36fa:	bf00      	nop
c0de36fc:	000002d8 	.word	0x000002d8
c0de3700:	ffffdbf3 	.word	0xffffdbf3

c0de3704 <crypto_sign_signature_absorb>:
c0de3704:	b580      	push	{r7, lr}
c0de3706:	460a      	mov	r2, r1
c0de3708:	4601      	mov	r1, r0
c0de370a:	4803      	ldr	r0, [pc, #12]	@ (c0de3718 <crypto_sign_signature_absorb+0x14>)
c0de370c:	4448      	add	r0, r9
c0de370e:	f7fd fde1 	bl	c0de12d4 <pqcrystals_dilithium_fips202_ref_shake256_absorb>
c0de3712:	2000      	movs	r0, #0
c0de3714:	bd80      	pop	{r7, pc}
c0de3716:	bf00      	nop
c0de3718:	000002d8 	.word	0x000002d8

c0de371c <crypto_sign_signature_core>:
c0de371c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3720:	f5ad 5d83 	sub.w	sp, sp, #4192	@ 0x1060
c0de3724:	b086      	sub	sp, #24
c0de3726:	f8df 8300 	ldr.w	r8, [pc, #768]	@ c0de3a28 <crypto_sign_signature_core+0x30c>
c0de372a:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de372c:	4616      	mov	r6, r2
c0de372e:	9102      	str	r1, [sp, #8]
c0de3730:	eb09 0408 	add.w	r4, r9, r8
c0de3734:	4620      	mov	r0, r4
c0de3736:	f7fd fdd8 	bl	c0de12ea <pqcrystals_dilithium_fips202_ref_shake256_finalize>
c0de373a:	f504 70d0 	add.w	r0, r4, #416	@ 0x1a0
c0de373e:	2140      	movs	r1, #64	@ 0x40
c0de3740:	4622      	mov	r2, r4
c0de3742:	f7fd fddd 	bl	c0de1300 <pqcrystals_dilithium_fips202_ref_shake256_squeeze>
c0de3746:	a80d      	add	r0, sp, #52	@ 0x34
c0de3748:	2100      	movs	r1, #0
c0de374a:	f500 7000 	add.w	r0, r0, #512	@ 0x200
c0de374e:	9009      	str	r0, [sp, #36]	@ 0x24
c0de3750:	2000      	movs	r0, #0
c0de3752:	2920      	cmp	r1, #32
c0de3754:	d006      	beq.n	c0de3764 <crypto_sign_signature_core+0x48>
c0de3756:	eb09 0208 	add.w	r2, r9, r8
c0de375a:	440a      	add	r2, r1
c0de375c:	3101      	adds	r1, #1
c0de375e:	f882 01e0 	strb.w	r0, [r2, #480]	@ 0x1e0
c0de3762:	e7f6      	b.n	c0de3752 <crypto_sign_signature_core+0x36>
c0de3764:	eb09 0408 	add.w	r4, r9, r8
c0de3768:	4620      	mov	r0, r4
c0de376a:	f7fd fdab 	bl	c0de12c4 <pqcrystals_dilithium_fips202_ref_shake256_init>
c0de376e:	4fb0      	ldr	r7, [pc, #704]	@ (c0de3a30 <crypto_sign_signature_core+0x314>)
c0de3770:	f106 0120 	add.w	r1, r6, #32
c0de3774:	4620      	mov	r0, r4
c0de3776:	2220      	movs	r2, #32
c0de3778:	447f      	add	r7, pc
c0de377a:	47b8      	blx	r7
c0de377c:	f504 75f0 	add.w	r5, r4, #480	@ 0x1e0
c0de3780:	4620      	mov	r0, r4
c0de3782:	2220      	movs	r2, #32
c0de3784:	4629      	mov	r1, r5
c0de3786:	47b8      	blx	r7
c0de3788:	f504 71d0 	add.w	r1, r4, #416	@ 0x1a0
c0de378c:	4620      	mov	r0, r4
c0de378e:	2240      	movs	r2, #64	@ 0x40
c0de3790:	47b8      	blx	r7
c0de3792:	4620      	mov	r0, r4
c0de3794:	f7fd fda9 	bl	c0de12ea <pqcrystals_dilithium_fips202_ref_shake256_finalize>
c0de3798:	4628      	mov	r0, r5
c0de379a:	2140      	movs	r1, #64	@ 0x40
c0de379c:	4622      	mov	r2, r4
c0de379e:	f7fd fdaf 	bl	c0de1300 <pqcrystals_dilithium_fips202_ref_shake256_squeeze>
c0de37a2:	f506 7060 	add.w	r0, r6, #896	@ 0x380
c0de37a6:	2100      	movs	r1, #0
c0de37a8:	f04f 0b00 	mov.w	fp, #0
c0de37ac:	9003      	str	r0, [sp, #12]
c0de37ae:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de37b0:	3020      	adds	r0, #32
c0de37b2:	9004      	str	r0, [sp, #16]
c0de37b4:	ac0d      	add	r4, sp, #52	@ 0x34
c0de37b6:	2001      	movs	r0, #1
c0de37b8:	9106      	str	r1, [sp, #24]
c0de37ba:	9005      	str	r0, [sp, #20]
c0de37bc:	b280      	uxth	r0, r0
c0de37be:	f64f 71fc 	movw	r1, #65532	@ 0xfffc
c0de37c2:	eb01 0080 	add.w	r0, r1, r0, lsl #2
c0de37c6:	f50d 618f 	add.w	r1, sp, #1144	@ 0x478
c0de37ca:	9008      	str	r0, [sp, #32]
c0de37cc:	2000      	movs	r0, #0
c0de37ce:	2804      	cmp	r0, #4
c0de37d0:	d00b      	beq.n	c0de37ea <crypto_sign_signature_core+0xce>
c0de37d2:	2200      	movs	r2, #0
c0de37d4:	f5b2 7f40 	cmp.w	r2, #768	@ 0x300
c0de37d8:	d003      	beq.n	c0de37e2 <crypto_sign_signature_core+0xc6>
c0de37da:	f801 b002 	strb.w	fp, [r1, r2]
c0de37de:	3201      	adds	r2, #1
c0de37e0:	e7f8      	b.n	c0de37d4 <crypto_sign_signature_core+0xb8>
c0de37e2:	f501 7140 	add.w	r1, r1, #768	@ 0x300
c0de37e6:	3001      	adds	r0, #1
c0de37e8:	e7f1      	b.n	c0de37ce <crypto_sign_signature_core+0xb2>
c0de37ea:	9806      	ldr	r0, [sp, #24]
c0de37ec:	f04f 0a00 	mov.w	sl, #0
c0de37f0:	b280      	uxth	r0, r0
c0de37f2:	0080      	lsls	r0, r0, #2
c0de37f4:	900a      	str	r0, [sp, #40]	@ 0x28
c0de37f6:	f1ba 0f04 	cmp.w	sl, #4
c0de37fa:	d026      	beq.n	c0de384a <crypto_sign_signature_core+0x12e>
c0de37fc:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de37fe:	eb09 0308 	add.w	r3, r9, r8
c0de3802:	f503 71f0 	add.w	r1, r3, #480	@ 0x1e0
c0de3806:	4450      	add	r0, sl
c0de3808:	b282      	uxth	r2, r0
c0de380a:	4620      	mov	r0, r4
c0de380c:	f7ff f8c7 	bl	c0de299e <poly_uniform_gamma1_lowram>
c0de3810:	4620      	mov	r0, r4
c0de3812:	f7ff fb4a 	bl	c0de2eaa <pqcrystals_dilithium2_lowram_poly_ntt>
c0de3816:	2700      	movs	r7, #0
c0de3818:	f50d 658f 	add.w	r5, sp, #1144	@ 0x478
c0de381c:	f5b7 6f80 	cmp.w	r7, #1024	@ 0x400
c0de3820:	d010      	beq.n	c0de3844 <crypto_sign_signature_core+0x128>
c0de3822:	eb09 0008 	add.w	r0, r9, r8
c0de3826:	4621      	mov	r1, r4
c0de3828:	4632      	mov	r2, r6
c0de382a:	30d0      	adds	r0, #208	@ 0xd0
c0de382c:	9000      	str	r0, [sp, #0]
c0de382e:	eb0a 0007 	add.w	r0, sl, r7
c0de3832:	b283      	uxth	r3, r0
c0de3834:	4628      	mov	r0, r5
c0de3836:	f7ff f86f 	bl	c0de2918 <poly_uniform_pointwise_montgomery_polywadd_lowram>
c0de383a:	f505 7540 	add.w	r5, r5, #768	@ 0x300
c0de383e:	f507 7780 	add.w	r7, r7, #256	@ 0x100
c0de3842:	e7eb      	b.n	c0de381c <crypto_sign_signature_core+0x100>
c0de3844:	f10a 0a01 	add.w	sl, sl, #1
c0de3848:	e7d5      	b.n	c0de37f6 <crypto_sign_signature_core+0xda>
c0de384a:	2700      	movs	r7, #0
c0de384c:	f50d 658f 	add.w	r5, sp, #1144	@ 0x478
c0de3850:	f5b7 7f40 	cmp.w	r7, #768	@ 0x300
c0de3854:	d01a      	beq.n	c0de388c <crypto_sign_signature_core+0x170>
c0de3856:	4620      	mov	r0, r4
c0de3858:	4629      	mov	r1, r5
c0de385a:	f7fe ffd4 	bl	c0de2806 <polyw_unpack>
c0de385e:	4620      	mov	r0, r4
c0de3860:	f7ff fb25 	bl	c0de2eae <pqcrystals_dilithium2_lowram_poly_invntt_tomont>
c0de3864:	4620      	mov	r0, r4
c0de3866:	f7ff fb02 	bl	c0de2e6e <pqcrystals_dilithium2_lowram_poly_caddq>
c0de386a:	4628      	mov	r0, r5
c0de386c:	4621      	mov	r1, r4
c0de386e:	f7fe ffac 	bl	c0de27ca <polyw_pack>
c0de3872:	4620      	mov	r0, r4
c0de3874:	4621      	mov	r1, r4
c0de3876:	f7fe fff6 	bl	c0de2866 <poly_highbits>
c0de387a:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de387c:	4621      	mov	r1, r4
c0de387e:	4438      	add	r0, r7
c0de3880:	f7ff fd90 	bl	c0de33a4 <pqcrystals_dilithium2_lowram_polyw1_pack>
c0de3884:	f505 7540 	add.w	r5, r5, #768	@ 0x300
c0de3888:	37c0      	adds	r7, #192	@ 0xc0
c0de388a:	e7e1      	b.n	c0de3850 <crypto_sign_signature_core+0x134>
c0de388c:	eb09 0508 	add.w	r5, r9, r8
c0de3890:	4628      	mov	r0, r5
c0de3892:	f7fd fd17 	bl	c0de12c4 <pqcrystals_dilithium_fips202_ref_shake256_init>
c0de3896:	f505 71d0 	add.w	r1, r5, #416	@ 0x1a0
c0de389a:	4628      	mov	r0, r5
c0de389c:	2240      	movs	r2, #64	@ 0x40
c0de389e:	f7fd fd19 	bl	c0de12d4 <pqcrystals_dilithium_fips202_ref_shake256_absorb>
c0de38a2:	9f0b      	ldr	r7, [sp, #44]	@ 0x2c
c0de38a4:	4628      	mov	r0, r5
c0de38a6:	f44f 7240 	mov.w	r2, #768	@ 0x300
c0de38aa:	4639      	mov	r1, r7
c0de38ac:	f7fd fd12 	bl	c0de12d4 <pqcrystals_dilithium_fips202_ref_shake256_absorb>
c0de38b0:	4628      	mov	r0, r5
c0de38b2:	f7fd fd1a 	bl	c0de12ea <pqcrystals_dilithium_fips202_ref_shake256_finalize>
c0de38b6:	4638      	mov	r0, r7
c0de38b8:	2120      	movs	r1, #32
c0de38ba:	462a      	mov	r2, r5
c0de38bc:	f7fd fd20 	bl	c0de1300 <pqcrystals_dilithium_fips202_ref_shake256_squeeze>
c0de38c0:	4620      	mov	r0, r4
c0de38c2:	4639      	mov	r1, r7
c0de38c4:	f7ff fc31 	bl	c0de312a <pqcrystals_dilithium2_lowram_poly_challenge>
c0de38c8:	f20d 4034 	addw	r0, sp, #1076	@ 0x434
c0de38cc:	4621      	mov	r1, r4
c0de38ce:	f7fe fda9 	bl	c0de2424 <poly_challenge_compress>
c0de38d2:	9806      	ldr	r0, [sp, #24]
c0de38d4:	f8dd a010 	ldr.w	sl, [sp, #16]
c0de38d8:	2500      	movs	r5, #0
c0de38da:	3001      	adds	r0, #1
c0de38dc:	9006      	str	r0, [sp, #24]
c0de38de:	b135      	cbz	r5, c0de38ee <crypto_sign_signature_core+0x1d2>
c0de38e0:	2d04      	cmp	r5, #4
c0de38e2:	d032      	beq.n	c0de394a <crypto_sign_signature_core+0x22e>
c0de38e4:	4620      	mov	r0, r4
c0de38e6:	f20d 4134 	addw	r1, sp, #1076	@ 0x434
c0de38ea:	f7fe fdd0 	bl	c0de248e <poly_challenge_decompress>
c0de38ee:	f000 f9e7 	bl	c0de3cc0 <OUTLINED_FUNCTION_0>
c0de38f2:	4620      	mov	r0, r4
c0de38f4:	4631      	mov	r1, r6
c0de38f6:	462a      	mov	r2, r5
c0de38f8:	f7fe fffe 	bl	c0de28f8 <unpack_sk_s1>
c0de38fc:	4620      	mov	r0, r4
c0de38fe:	f000 f9e5 	bl	c0de3ccc <small_ntt>
c0de3902:	4620      	mov	r0, r4
c0de3904:	4639      	mov	r1, r7
c0de3906:	4622      	mov	r2, r4
c0de3908:	f000 fb04 	bl	c0de3f14 <poly_small_basemul_invntt>
c0de390c:	eb09 0008 	add.w	r0, r9, r8
c0de3910:	4621      	mov	r1, r4
c0de3912:	9000      	str	r0, [sp, #0]
c0de3914:	f500 72f0 	add.w	r2, r0, #480	@ 0x1e0
c0de3918:	9808      	ldr	r0, [sp, #32]
c0de391a:	4428      	add	r0, r5
c0de391c:	b283      	uxth	r3, r0
c0de391e:	4620      	mov	r0, r4
c0de3920:	f7ff f88a 	bl	c0de2a38 <poly_uniform_gamma1_add_lowram>
c0de3924:	4620      	mov	r0, r4
c0de3926:	f7ff fa93 	bl	c0de2e50 <pqcrystals_dilithium2_lowram_poly_reduce>
c0de392a:	4840      	ldr	r0, [pc, #256]	@ (c0de3a2c <crypto_sign_signature_core+0x310>)
c0de392c:	f500 410c 	add.w	r1, r0, #35840	@ 0x8c00
c0de3930:	4620      	mov	r0, r4
c0de3932:	f7ff fadf 	bl	c0de2ef4 <pqcrystals_dilithium2_lowram_poly_chknorm>
c0de3936:	2800      	cmp	r0, #0
c0de3938:	d165      	bne.n	c0de3a06 <crypto_sign_signature_core+0x2ea>
c0de393a:	4650      	mov	r0, sl
c0de393c:	4621      	mov	r1, r4
c0de393e:	f7ff fd00 	bl	c0de3342 <pqcrystals_dilithium2_lowram_polyz_pack>
c0de3942:	f50a 7a10 	add.w	sl, sl, #576	@ 0x240
c0de3946:	3501      	adds	r5, #1
c0de3948:	e7c9      	b.n	c0de38de <crypto_sign_signature_core+0x1c2>
c0de394a:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de394e:	2100      	movs	r1, #0
c0de3950:	2000      	movs	r0, #0
c0de3952:	f50d 658f 	add.w	r5, sp, #1144	@ 0x478
c0de3956:	2700      	movs	r7, #0
c0de3958:	9008      	str	r0, [sp, #32]
c0de395a:	910c      	str	r1, [sp, #48]	@ 0x30
c0de395c:	2f04      	cmp	r7, #4
c0de395e:	d055      	beq.n	c0de3a0c <crypto_sign_signature_core+0x2f0>
c0de3960:	4620      	mov	r0, r4
c0de3962:	f20d 4134 	addw	r1, sp, #1076	@ 0x434
c0de3966:	f7fe fd92 	bl	c0de248e <poly_challenge_decompress>
c0de396a:	950a      	str	r5, [sp, #40]	@ 0x28
c0de396c:	463d      	mov	r5, r7
c0de396e:	f000 f9a7 	bl	c0de3cc0 <OUTLINED_FUNCTION_0>
c0de3972:	4620      	mov	r0, r4
c0de3974:	4631      	mov	r1, r6
c0de3976:	462a      	mov	r2, r5
c0de3978:	9507      	str	r5, [sp, #28]
c0de397a:	f7fe ffc4 	bl	c0de2906 <unpack_sk_s2>
c0de397e:	4620      	mov	r0, r4
c0de3980:	f000 f9a4 	bl	c0de3ccc <small_ntt>
c0de3984:	4620      	mov	r0, r4
c0de3986:	4639      	mov	r1, r7
c0de3988:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
c0de398a:	4622      	mov	r2, r4
c0de398c:	f000 fac2 	bl	c0de3f14 <poly_small_basemul_invntt>
c0de3990:	4620      	mov	r0, r4
c0de3992:	4629      	mov	r1, r5
c0de3994:	4622      	mov	r2, r4
c0de3996:	f7fe ff4e 	bl	c0de2836 <polyw_sub>
c0de399a:	4620      	mov	r0, r4
c0de399c:	f7ff fa58 	bl	c0de2e50 <pqcrystals_dilithium2_lowram_poly_reduce>
c0de39a0:	4628      	mov	r0, r5
c0de39a2:	4621      	mov	r1, r4
c0de39a4:	f7fe ff11 	bl	c0de27ca <polyw_pack>
c0de39a8:	4620      	mov	r0, r4
c0de39aa:	4621      	mov	r1, r4
c0de39ac:	f7fe ff74 	bl	c0de2898 <poly_lowbits>
c0de39b0:	4620      	mov	r0, r4
c0de39b2:	f7ff fa4d 	bl	c0de2e50 <pqcrystals_dilithium2_lowram_poly_reduce>
c0de39b6:	491d      	ldr	r1, [pc, #116]	@ (c0de3a2c <crypto_sign_signature_core+0x310>)
c0de39b8:	4620      	mov	r0, r4
c0de39ba:	f7ff fa9b 	bl	c0de2ef4 <pqcrystals_dilithium2_lowram_poly_chknorm>
c0de39be:	bb10      	cbnz	r0, c0de3a06 <crypto_sign_signature_core+0x2ea>
c0de39c0:	4620      	mov	r0, r4
c0de39c2:	f20d 4134 	addw	r1, sp, #1076	@ 0x434
c0de39c6:	4652      	mov	r2, sl
c0de39c8:	f7fe fd93 	bl	c0de24f2 <poly_schoolbook>
c0de39cc:	4620      	mov	r0, r4
c0de39ce:	f44f 31ba 	mov.w	r1, #95232	@ 0x17400
c0de39d2:	f7ff fa8f 	bl	c0de2ef4 <pqcrystals_dilithium2_lowram_poly_chknorm>
c0de39d6:	b9b0      	cbnz	r0, c0de3a06 <crypto_sign_signature_core+0x2ea>
c0de39d8:	4620      	mov	r0, r4
c0de39da:	4621      	mov	r1, r4
c0de39dc:	462a      	mov	r2, r5
c0de39de:	f7ff f84f 	bl	c0de2a80 <poly_make_hint_lowram>
c0de39e2:	9908      	ldr	r1, [sp, #32]
c0de39e4:	4401      	add	r1, r0
c0de39e6:	2950      	cmp	r1, #80	@ 0x50
c0de39e8:	9108      	str	r1, [sp, #32]
c0de39ea:	d80c      	bhi.n	c0de3a06 <crypto_sign_signature_core+0x2ea>
c0de39ec:	9f07      	ldr	r7, [sp, #28]
c0de39ee:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de39f0:	4621      	mov	r1, r4
c0de39f2:	ab0c      	add	r3, sp, #48	@ 0x30
c0de39f4:	463a      	mov	r2, r7
c0de39f6:	f7fe fcf3 	bl	c0de23e0 <pqcrystals_dilithium2_lowram_pack_sig_h>
c0de39fa:	f50a 7ad0 	add.w	sl, sl, #416	@ 0x1a0
c0de39fe:	f505 7540 	add.w	r5, r5, #768	@ 0x300
c0de3a02:	3701      	adds	r7, #1
c0de3a04:	e7aa      	b.n	c0de395c <crypto_sign_signature_core+0x240>
c0de3a06:	9805      	ldr	r0, [sp, #20]
c0de3a08:	3001      	adds	r0, #1
c0de3a0a:	e6d6      	b.n	c0de37ba <crypto_sign_signature_core+0x9e>
c0de3a0c:	a90c      	add	r1, sp, #48	@ 0x30
c0de3a0e:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de3a10:	f7fe fcfc 	bl	c0de240c <pqcrystals_dilithium2_lowram_pack_sig_h_zero>
c0de3a14:	9902      	ldr	r1, [sp, #8]
c0de3a16:	f640 1074 	movw	r0, #2420	@ 0x974
c0de3a1a:	6008      	str	r0, [r1, #0]
c0de3a1c:	2000      	movs	r0, #0
c0de3a1e:	f50d 5d83 	add.w	sp, sp, #4192	@ 0x1060
c0de3a22:	b006      	add	sp, #24
c0de3a24:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3a28:	000002d8 	.word	0x000002d8
c0de3a2c:	000173b2 	.word	0x000173b2
c0de3a30:	ffffdb59 	.word	0xffffdb59

c0de3a34 <pqcrystals_dilithium2_lowram_verify>:
c0de3a34:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3a38:	f5ad 6d10 	sub.w	sp, sp, #2304	@ 0x900
c0de3a3c:	4615      	mov	r5, r2
c0de3a3e:	f640 1274 	movw	r2, #2420	@ 0x974
c0de3a42:	4604      	mov	r4, r0
c0de3a44:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de3a48:	4291      	cmp	r1, r2
c0de3a4a:	f040 80ea 	bne.w	c0de3c22 <pqcrystals_dilithium2_lowram_verify+0x1ee>
c0de3a4e:	f8dd a924 	ldr.w	sl, [sp, #2340]	@ 0x924
c0de3a52:	f1ba 0fff 	cmp.w	sl, #255	@ 0xff
c0de3a56:	f200 80e4 	bhi.w	c0de3c22 <pqcrystals_dilithium2_lowram_verify+0x1ee>
c0de3a5a:	4f80      	ldr	r7, [pc, #512]	@ (c0de3c5c <pqcrystals_dilithium2_lowram_verify+0x228>)
c0de3a5c:	f10d 0be8 	add.w	fp, sp, #232	@ 0xe8
c0de3a60:	f8dd 6928 	ldr.w	r6, [sp, #2344]	@ 0x928
c0de3a64:	9305      	str	r3, [sp, #20]
c0de3a66:	4658      	mov	r0, fp
c0de3a68:	447f      	add	r7, pc
c0de3a6a:	47b8      	blx	r7
c0de3a6c:	9504      	str	r5, [sp, #16]
c0de3a6e:	4658      	mov	r0, fp
c0de3a70:	4631      	mov	r1, r6
c0de3a72:	f44f 62a4 	mov.w	r2, #1312	@ 0x520
c0de3a76:	4d7a      	ldr	r5, [pc, #488]	@ (c0de3c60 <pqcrystals_dilithium2_lowram_verify+0x22c>)
c0de3a78:	447d      	add	r5, pc
c0de3a7a:	47a8      	blx	r5
c0de3a7c:	4658      	mov	r0, fp
c0de3a7e:	f7fd fc34 	bl	c0de12ea <pqcrystals_dilithium_fips202_ref_shake256_finalize>
c0de3a82:	f50d 78dc 	add.w	r8, sp, #440	@ 0x1b8
c0de3a86:	2140      	movs	r1, #64	@ 0x40
c0de3a88:	465a      	mov	r2, fp
c0de3a8a:	4640      	mov	r0, r8
c0de3a8c:	f7fd fc38 	bl	c0de1300 <pqcrystals_dilithium_fips202_ref_shake256_squeeze>
c0de3a90:	4658      	mov	r0, fp
c0de3a92:	47b8      	blx	r7
c0de3a94:	4658      	mov	r0, fp
c0de3a96:	4641      	mov	r1, r8
c0de3a98:	2240      	movs	r2, #64	@ 0x40
c0de3a9a:	47a8      	blx	r5
c0de3a9c:	f88d a1b9 	strb.w	sl, [sp, #441]	@ 0x1b9
c0de3aa0:	4656      	mov	r6, sl
c0de3aa2:	f04f 0a00 	mov.w	sl, #0
c0de3aa6:	4658      	mov	r0, fp
c0de3aa8:	4641      	mov	r1, r8
c0de3aaa:	2202      	movs	r2, #2
c0de3aac:	f88d a1b8 	strb.w	sl, [sp, #440]	@ 0x1b8
c0de3ab0:	47a8      	blx	r5
c0de3ab2:	f8dd 1920 	ldr.w	r1, [sp, #2336]	@ 0x920
c0de3ab6:	4658      	mov	r0, fp
c0de3ab8:	4632      	mov	r2, r6
c0de3aba:	47a8      	blx	r5
c0de3abc:	e9dd 1204 	ldrd	r1, r2, [sp, #16]
c0de3ac0:	4658      	mov	r0, fp
c0de3ac2:	47a8      	blx	r5
c0de3ac4:	4658      	mov	r0, fp
c0de3ac6:	f7fd fc10 	bl	c0de12ea <pqcrystals_dilithium_fips202_ref_shake256_finalize>
c0de3aca:	4640      	mov	r0, r8
c0de3acc:	2140      	movs	r1, #64	@ 0x40
c0de3ace:	465a      	mov	r2, fp
c0de3ad0:	f7fd fc16 	bl	c0de1300 <pqcrystals_dilithium_fips202_ref_shake256_squeeze>
c0de3ad4:	4658      	mov	r0, fp
c0de3ad6:	47b8      	blx	r7
c0de3ad8:	4658      	mov	r0, fp
c0de3ada:	4641      	mov	r1, r8
c0de3adc:	2240      	movs	r2, #64	@ 0x40
c0de3ade:	47a8      	blx	r5
c0de3ae0:	f20d 46fc 	addw	r6, sp, #1276	@ 0x4fc
c0de3ae4:	4621      	mov	r1, r4
c0de3ae6:	4630      	mov	r0, r6
c0de3ae8:	f7ff f8a1 	bl	c0de2c2e <poly_challenge_lowram>
c0de3aec:	4640      	mov	r0, r8
c0de3aee:	4631      	mov	r1, r6
c0de3af0:	f7fe fc98 	bl	c0de2424 <poly_challenge_compress>
c0de3af4:	f8dd 0928 	ldr.w	r0, [sp, #2344]	@ 0x928
c0de3af8:	f104 0520 	add.w	r5, r4, #32
c0de3afc:	f10d 0b18 	add.w	fp, sp, #24
c0de3b00:	f50d 78fe 	add.w	r8, sp, #508	@ 0x1fc
c0de3b04:	2700      	movs	r7, #0
c0de3b06:	9502      	str	r5, [sp, #8]
c0de3b08:	3020      	adds	r0, #32
c0de3b0a:	9003      	str	r0, [sp, #12]
c0de3b0c:	2001      	movs	r0, #1
c0de3b0e:	9005      	str	r0, [sp, #20]
c0de3b10:	2f04      	cmp	r7, #4
c0de3b12:	f000 808a 	beq.w	c0de3c2a <pqcrystals_dilithium2_lowram_verify+0x1f6>
c0de3b16:	2000      	movs	r0, #0
c0de3b18:	f5b0 7f40 	cmp.w	r0, #768	@ 0x300
c0de3b1c:	d003      	beq.n	c0de3b26 <pqcrystals_dilithium2_lowram_verify+0xf2>
c0de3b1e:	f808 a000 	strb.w	sl, [r8, r0]
c0de3b22:	3001      	adds	r0, #1
c0de3b24:	e7f8      	b.n	c0de3b18 <pqcrystals_dilithium2_lowram_verify+0xe4>
c0de3b26:	4630      	mov	r0, r6
c0de3b28:	4629      	mov	r1, r5
c0de3b2a:	f7ff faae 	bl	c0de308a <pqcrystals_dilithium2_lowram_polyz_unpack>
c0de3b2e:	494a      	ldr	r1, [pc, #296]	@ (c0de3c58 <pqcrystals_dilithium2_lowram_verify+0x224>)
c0de3b30:	4630      	mov	r0, r6
c0de3b32:	f7ff f9df 	bl	c0de2ef4 <pqcrystals_dilithium2_lowram_poly_chknorm>
c0de3b36:	2800      	cmp	r0, #0
c0de3b38:	d171      	bne.n	c0de3c1e <pqcrystals_dilithium2_lowram_verify+0x1ea>
c0de3b3a:	4630      	mov	r0, r6
c0de3b3c:	f7ff f9b5 	bl	c0de2eaa <pqcrystals_dilithium2_lowram_poly_ntt>
c0de3b40:	0238      	lsls	r0, r7, #8
c0de3b42:	f8dd 2928 	ldr.w	r2, [sp, #2344]	@ 0x928
c0de3b46:	4631      	mov	r1, r6
c0de3b48:	465d      	mov	r5, fp
c0de3b4a:	f8cd b000 	str.w	fp, [sp]
c0de3b4e:	9704      	str	r7, [sp, #16]
c0de3b50:	b283      	uxth	r3, r0
c0de3b52:	4640      	mov	r0, r8
c0de3b54:	f7fe fee0 	bl	c0de2918 <poly_uniform_pointwise_montgomery_polywadd_lowram>
c0de3b58:	9f05      	ldr	r7, [sp, #20]
c0de3b5a:	f44f 7b18 	mov.w	fp, #608	@ 0x260
c0de3b5e:	f5bb 6f12 	cmp.w	fp, #2336	@ 0x920
c0de3b62:	d019      	beq.n	c0de3b98 <pqcrystals_dilithium2_lowram_verify+0x164>
c0de3b64:	eb04 010b 	add.w	r1, r4, fp
c0de3b68:	4630      	mov	r0, r6
c0de3b6a:	f7ff fa8e 	bl	c0de308a <pqcrystals_dilithium2_lowram_polyz_unpack>
c0de3b6e:	493a      	ldr	r1, [pc, #232]	@ (c0de3c58 <pqcrystals_dilithium2_lowram_verify+0x224>)
c0de3b70:	4630      	mov	r0, r6
c0de3b72:	f7ff f9bf 	bl	c0de2ef4 <pqcrystals_dilithium2_lowram_poly_chknorm>
c0de3b76:	2800      	cmp	r0, #0
c0de3b78:	d151      	bne.n	c0de3c1e <pqcrystals_dilithium2_lowram_verify+0x1ea>
c0de3b7a:	4630      	mov	r0, r6
c0de3b7c:	f7ff f995 	bl	c0de2eaa <pqcrystals_dilithium2_lowram_poly_ntt>
c0de3b80:	f8dd 2928 	ldr.w	r2, [sp, #2344]	@ 0x928
c0de3b84:	b2bb      	uxth	r3, r7
c0de3b86:	4640      	mov	r0, r8
c0de3b88:	4631      	mov	r1, r6
c0de3b8a:	9500      	str	r5, [sp, #0]
c0de3b8c:	f7fe fec4 	bl	c0de2918 <poly_uniform_pointwise_montgomery_polywadd_lowram>
c0de3b90:	3701      	adds	r7, #1
c0de3b92:	f50b 7b10 	add.w	fp, fp, #576	@ 0x240
c0de3b96:	e7e2      	b.n	c0de3b5e <pqcrystals_dilithium2_lowram_verify+0x12a>
c0de3b98:	4630      	mov	r0, r6
c0de3b9a:	4641      	mov	r1, r8
c0de3b9c:	f7fe fe33 	bl	c0de2806 <polyw_unpack>
c0de3ba0:	4630      	mov	r0, r6
c0de3ba2:	f7ff f955 	bl	c0de2e50 <pqcrystals_dilithium2_lowram_poly_reduce>
c0de3ba6:	4630      	mov	r0, r6
c0de3ba8:	f7ff f981 	bl	c0de2eae <pqcrystals_dilithium2_lowram_poly_invntt_tomont>
c0de3bac:	4640      	mov	r0, r8
c0de3bae:	4631      	mov	r1, r6
c0de3bb0:	f7fe fe0b 	bl	c0de27ca <polyw_pack>
c0de3bb4:	9f04      	ldr	r7, [sp, #16]
c0de3bb6:	9903      	ldr	r1, [sp, #12]
c0de3bb8:	eb07 0087 	add.w	r0, r7, r7, lsl #2
c0de3bbc:	eb01 1280 	add.w	r2, r1, r0, lsl #6
c0de3bc0:	4630      	mov	r0, r6
c0de3bc2:	a96e      	add	r1, sp, #440	@ 0x1b8
c0de3bc4:	f7fe fd5a 	bl	c0de267c <poly_schoolbook_t1>
c0de3bc8:	4630      	mov	r0, r6
c0de3bca:	4641      	mov	r1, r8
c0de3bcc:	4632      	mov	r2, r6
c0de3bce:	f7fe fe32 	bl	c0de2836 <polyw_sub>
c0de3bd2:	4630      	mov	r0, r6
c0de3bd4:	f7ff f93c 	bl	c0de2e50 <pqcrystals_dilithium2_lowram_poly_reduce>
c0de3bd8:	4630      	mov	r0, r6
c0de3bda:	f7ff f948 	bl	c0de2e6e <pqcrystals_dilithium2_lowram_poly_caddq>
c0de3bde:	4628      	mov	r0, r5
c0de3be0:	f60d 01fc 	addw	r1, sp, #2300	@ 0x8fc
c0de3be4:	463a      	mov	r2, r7
c0de3be6:	4623      	mov	r3, r4
c0de3be8:	46ab      	mov	fp, r5
c0de3bea:	f7fe ff83 	bl	c0de2af4 <unpack_sig_h_indices>
c0de3bee:	b9b0      	cbnz	r0, c0de3c1e <pqcrystals_dilithium2_lowram_verify+0x1ea>
c0de3bf0:	f8dd 38fc 	ldr.w	r3, [sp, #2300]	@ 0x8fc
c0de3bf4:	4630      	mov	r0, r6
c0de3bf6:	4631      	mov	r1, r6
c0de3bf8:	465a      	mov	r2, fp
c0de3bfa:	f7fe ffb9 	bl	c0de2b70 <poly_use_hint_lowram>
c0de3bfe:	4640      	mov	r0, r8
c0de3c00:	4631      	mov	r1, r6
c0de3c02:	f7ff fbcf 	bl	c0de33a4 <pqcrystals_dilithium2_lowram_polyw1_pack>
c0de3c06:	a83a      	add	r0, sp, #232	@ 0xe8
c0de3c08:	4641      	mov	r1, r8
c0de3c0a:	22c0      	movs	r2, #192	@ 0xc0
c0de3c0c:	f7fd fb62 	bl	c0de12d4 <pqcrystals_dilithium_fips202_ref_shake256_absorb>
c0de3c10:	9805      	ldr	r0, [sp, #20]
c0de3c12:	9d02      	ldr	r5, [sp, #8]
c0de3c14:	3701      	adds	r7, #1
c0de3c16:	f500 7080 	add.w	r0, r0, #256	@ 0x100
c0de3c1a:	9005      	str	r0, [sp, #20]
c0de3c1c:	e778      	b.n	c0de3b10 <pqcrystals_dilithium2_lowram_verify+0xdc>
c0de3c1e:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de3c22:	f50d 6d10 	add.w	sp, sp, #2304	@ 0x900
c0de3c26:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3c2a:	ad3a      	add	r5, sp, #232	@ 0xe8
c0de3c2c:	4628      	mov	r0, r5
c0de3c2e:	f7fd fb5c 	bl	c0de12ea <pqcrystals_dilithium_fips202_ref_shake256_finalize>
c0de3c32:	4658      	mov	r0, fp
c0de3c34:	2120      	movs	r1, #32
c0de3c36:	462a      	mov	r2, r5
c0de3c38:	f7fd fb62 	bl	c0de1300 <pqcrystals_dilithium_fips202_ref_shake256_squeeze>
c0de3c3c:	2100      	movs	r1, #0
c0de3c3e:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de3c42:	2920      	cmp	r1, #32
c0de3c44:	d006      	beq.n	c0de3c54 <pqcrystals_dilithium2_lowram_verify+0x220>
c0de3c46:	f81b 2001 	ldrb.w	r2, [fp, r1]
c0de3c4a:	5c63      	ldrb	r3, [r4, r1]
c0de3c4c:	3101      	adds	r1, #1
c0de3c4e:	4293      	cmp	r3, r2
c0de3c50:	d0f7      	beq.n	c0de3c42 <pqcrystals_dilithium2_lowram_verify+0x20e>
c0de3c52:	e7e6      	b.n	c0de3c22 <pqcrystals_dilithium2_lowram_verify+0x1ee>
c0de3c54:	2000      	movs	r0, #0
c0de3c56:	e7e4      	b.n	c0de3c22 <pqcrystals_dilithium2_lowram_verify+0x1ee>
c0de3c58:	0001ffb2 	.word	0x0001ffb2
c0de3c5c:	ffffd859 	.word	0xffffd859
c0de3c60:	ffffd859 	.word	0xffffd859

c0de3c64 <pqcrystals_dilithium2_lowram_open>:
c0de3c64:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de3c66:	4604      	mov	r4, r0
c0de3c68:	f640 1074 	movw	r0, #2420	@ 0x974
c0de3c6c:	461d      	mov	r5, r3
c0de3c6e:	460e      	mov	r6, r1
c0de3c70:	4283      	cmp	r3, r0
c0de3c72:	d311      	bcc.n	c0de3c98 <pqcrystals_dilithium2_lowram_open+0x34>
c0de3c74:	e9dd 7108 	ldrd	r7, r1, [sp, #32]
c0de3c78:	f6a5 1374 	subw	r3, r5, #2420	@ 0x974
c0de3c7c:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de3c7e:	6033      	str	r3, [r6, #0]
c0de3c80:	e9cd 7100 	strd	r7, r1, [sp]
c0de3c84:	f602 1774 	addw	r7, r2, #2420	@ 0x974
c0de3c88:	9002      	str	r0, [sp, #8]
c0de3c8a:	4610      	mov	r0, r2
c0de3c8c:	f640 1174 	movw	r1, #2420	@ 0x974
c0de3c90:	463a      	mov	r2, r7
c0de3c92:	f7ff fecf 	bl	c0de3a34 <pqcrystals_dilithium2_lowram_verify>
c0de3c96:	b148      	cbz	r0, c0de3cac <pqcrystals_dilithium2_lowram_open+0x48>
c0de3c98:	2000      	movs	r0, #0
c0de3c9a:	6030      	str	r0, [r6, #0]
c0de3c9c:	b11d      	cbz	r5, c0de3ca6 <pqcrystals_dilithium2_lowram_open+0x42>
c0de3c9e:	f804 0b01 	strb.w	r0, [r4], #1
c0de3ca2:	3d01      	subs	r5, #1
c0de3ca4:	e7fa      	b.n	c0de3c9c <pqcrystals_dilithium2_lowram_open+0x38>
c0de3ca6:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de3caa:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de3cac:	2000      	movs	r0, #0
c0de3cae:	6831      	ldr	r1, [r6, #0]
c0de3cb0:	4288      	cmp	r0, r1
c0de3cb2:	bf24      	itt	cs
c0de3cb4:	2000      	movcs	r0, #0
c0de3cb6:	bdfe      	popcs	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de3cb8:	5c39      	ldrb	r1, [r7, r0]
c0de3cba:	5421      	strb	r1, [r4, r0]
c0de3cbc:	3001      	adds	r0, #1
c0de3cbe:	e7f6      	b.n	c0de3cae <pqcrystals_dilithium2_lowram_open+0x4a>

c0de3cc0 <OUTLINED_FUNCTION_0>:
c0de3cc0:	9f09      	ldr	r7, [sp, #36]	@ 0x24
c0de3cc2:	4621      	mov	r1, r4
c0de3cc4:	4638      	mov	r0, r7
c0de3cc6:	f000 b8ed 	b.w	c0de3ea4 <poly_small_ntt_copy>
	...

c0de3ccc <small_ntt>:
c0de3ccc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3cd0:	491c      	ldr	r1, [pc, #112]	@ (c0de3d44 <small_ntt+0x78>)
c0de3cd2:	f04f 0c80 	mov.w	ip, #128	@ 0x80
c0de3cd6:	f04f 0e01 	mov.w	lr, #1
c0de3cda:	f46f 6850 	mvn.w	r8, #3328	@ 0xd00
c0de3cde:	4479      	add	r1, pc
c0de3ce0:	468a      	mov	sl, r1
c0de3ce2:	4917      	ldr	r1, [pc, #92]	@ (c0de3d40 <small_ntt+0x74>)
c0de3ce4:	468b      	mov	fp, r1
c0de3ce6:	f1bc 0f02 	cmp.w	ip, #2
c0de3cea:	bf38      	it	cc
c0de3cec:	e8bd 8df0 	ldmiacc.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3cf0:	2600      	movs	r6, #0
c0de3cf2:	2eff      	cmp	r6, #255	@ 0xff
c0de3cf4:	d821      	bhi.n	c0de3d3a <small_ntt+0x6e>
c0de3cf6:	4651      	mov	r1, sl
c0de3cf8:	f93a 301e 	ldrsh.w	r3, [sl, lr, lsl #1]
c0de3cfc:	eb06 010c 	add.w	r1, r6, ip
c0de3d00:	460f      	mov	r7, r1
c0de3d02:	428e      	cmp	r6, r1
c0de3d04:	d215      	bcs.n	c0de3d32 <small_ntt+0x66>
c0de3d06:	f930 2017 	ldrsh.w	r2, [r0, r7, lsl #1]
c0de3d0a:	465c      	mov	r4, fp
c0de3d0c:	435a      	muls	r2, r3
c0de3d0e:	fb02 f40b 	mul.w	r4, r2, fp
c0de3d12:	1424      	asrs	r4, r4, #16
c0de3d14:	fb04 2208 	mla	r2, r4, r8, r2
c0de3d18:	f830 4016 	ldrh.w	r4, [r0, r6, lsl #1]
c0de3d1c:	eba4 4512 	sub.w	r5, r4, r2, lsr #16
c0de3d20:	eb04 4212 	add.w	r2, r4, r2, lsr #16
c0de3d24:	f820 5017 	strh.w	r5, [r0, r7, lsl #1]
c0de3d28:	f820 2016 	strh.w	r2, [r0, r6, lsl #1]
c0de3d2c:	3701      	adds	r7, #1
c0de3d2e:	3601      	adds	r6, #1
c0de3d30:	e7e7      	b.n	c0de3d02 <small_ntt+0x36>
c0de3d32:	f10e 0e01 	add.w	lr, lr, #1
c0de3d36:	463e      	mov	r6, r7
c0de3d38:	e7db      	b.n	c0de3cf2 <small_ntt+0x26>
c0de3d3a:	ea4f 0c5c 	mov.w	ip, ip, lsr #1
c0de3d3e:	e7d2      	b.n	c0de3ce6 <small_ntt+0x1a>
c0de3d40:	f3010000 	.word	0xf3010000
c0de3d44:	0000a40e 	.word	0x0000a40e

c0de3d48 <small_invntt_tomont>:
c0de3d48:	e92d 4dfe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de3d4c:	4934      	ldr	r1, [pc, #208]	@ (c0de3e20 <small_invntt_tomont+0xd8>)
c0de3d4e:	4b36      	ldr	r3, [pc, #216]	@ (c0de3e28 <small_invntt_tomont+0xe0>)
c0de3d50:	2202      	movs	r2, #2
c0de3d52:	247f      	movs	r4, #127	@ 0x7f
c0de3d54:	f644 68bf 	movw	r8, #20159	@ 0x4ebf
c0de3d58:	f46f 6a50 	mvn.w	sl, #3328	@ 0xd00
c0de3d5c:	468e      	mov	lr, r1
c0de3d5e:	4931      	ldr	r1, [pc, #196]	@ (c0de3e24 <small_invntt_tomont+0xdc>)
c0de3d60:	447b      	add	r3, pc
c0de3d62:	9300      	str	r3, [sp, #0]
c0de3d64:	f101 5bd3 	add.w	fp, r1, #442499072	@ 0x1a600000
c0de3d68:	2a80      	cmp	r2, #128	@ 0x80
c0de3d6a:	d834      	bhi.n	c0de3dd6 <small_invntt_tomont+0x8e>
c0de3d6c:	2300      	movs	r3, #0
c0de3d6e:	9201      	str	r2, [sp, #4]
c0de3d70:	2bff      	cmp	r3, #255	@ 0xff
c0de3d72:	d82e      	bhi.n	c0de3dd2 <small_invntt_tomont+0x8a>
c0de3d74:	9900      	ldr	r1, [sp, #0]
c0de3d76:	9402      	str	r4, [sp, #8]
c0de3d78:	f931 4014 	ldrsh.w	r4, [r1, r4, lsl #1]
c0de3d7c:	1899      	adds	r1, r3, r2
c0de3d7e:	460d      	mov	r5, r1
c0de3d80:	428b      	cmp	r3, r1
c0de3d82:	d221      	bcs.n	c0de3dc8 <small_invntt_tomont+0x80>
c0de3d84:	f830 6013 	ldrh.w	r6, [r0, r3, lsl #1]
c0de3d88:	f830 2015 	ldrh.w	r2, [r0, r5, lsl #1]
c0de3d8c:	46f4      	mov	ip, lr
c0de3d8e:	4432      	add	r2, r6
c0de3d90:	b217      	sxth	r7, r2
c0de3d92:	fb07 f708 	mul.w	r7, r7, r8
c0de3d96:	f107 7700 	add.w	r7, r7, #33554432	@ 0x2000000
c0de3d9a:	16bf      	asrs	r7, r7, #26
c0de3d9c:	fb07 f70e 	mul.w	r7, r7, lr
c0de3da0:	eba2 4217 	sub.w	r2, r2, r7, lsr #16
c0de3da4:	f820 2013 	strh.w	r2, [r0, r3, lsl #1]
c0de3da8:	3301      	adds	r3, #1
c0de3daa:	f830 2015 	ldrh.w	r2, [r0, r5, lsl #1]
c0de3dae:	1b92      	subs	r2, r2, r6
c0de3db0:	b212      	sxth	r2, r2
c0de3db2:	4362      	muls	r2, r4
c0de3db4:	fb02 f60b 	mul.w	r6, r2, fp
c0de3db8:	1436      	asrs	r6, r6, #16
c0de3dba:	fb06 220a 	mla	r2, r6, sl, r2
c0de3dbe:	0c12      	lsrs	r2, r2, #16
c0de3dc0:	f820 2015 	strh.w	r2, [r0, r5, lsl #1]
c0de3dc4:	3501      	adds	r5, #1
c0de3dc6:	e7db      	b.n	c0de3d80 <small_invntt_tomont+0x38>
c0de3dc8:	9c02      	ldr	r4, [sp, #8]
c0de3dca:	9a01      	ldr	r2, [sp, #4]
c0de3dcc:	462b      	mov	r3, r5
c0de3dce:	3c01      	subs	r4, #1
c0de3dd0:	e7ce      	b.n	c0de3d70 <small_invntt_tomont+0x28>
c0de3dd2:	0052      	lsls	r2, r2, #1
c0de3dd4:	e7c8      	b.n	c0de3d68 <small_invntt_tomont+0x20>
c0de3dd6:	2100      	movs	r1, #0
c0de3dd8:	f240 52a1 	movw	r2, #1441	@ 0x5a1
c0de3ddc:	f46f 6350 	mvn.w	r3, #3328	@ 0xd00
c0de3de0:	f644 64bf 	movw	r4, #20159	@ 0x4ebf
c0de3de4:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de3de8:	bf08      	it	eq
c0de3dea:	e8bd 8dfe 	ldmiaeq.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de3dee:	f930 5011 	ldrsh.w	r5, [r0, r1, lsl #1]
c0de3df2:	4f0c      	ldr	r7, [pc, #48]	@ (c0de3e24 <small_invntt_tomont+0xdc>)
c0de3df4:	fb05 f602 	mul.w	r6, r5, r2
c0de3df8:	437d      	muls	r5, r7
c0de3dfa:	4677      	mov	r7, lr
c0de3dfc:	142d      	asrs	r5, r5, #16
c0de3dfe:	fb05 6503 	mla	r5, r5, r3, r6
c0de3e02:	142e      	asrs	r6, r5, #16
c0de3e04:	0c2d      	lsrs	r5, r5, #16
c0de3e06:	4366      	muls	r6, r4
c0de3e08:	f106 7600 	add.w	r6, r6, #33554432	@ 0x2000000
c0de3e0c:	16b6      	asrs	r6, r6, #26
c0de3e0e:	fb06 f60e 	mul.w	r6, r6, lr
c0de3e12:	eba5 4516 	sub.w	r5, r5, r6, lsr #16
c0de3e16:	f820 5011 	strh.w	r5, [r0, r1, lsl #1]
c0de3e1a:	3101      	adds	r1, #1
c0de3e1c:	e7e2      	b.n	c0de3de4 <small_invntt_tomont+0x9c>
c0de3e1e:	bf00      	nop
c0de3e20:	0d010000 	.word	0x0d010000
c0de3e24:	d8a10000 	.word	0xd8a10000
c0de3e28:	0000a38c 	.word	0x0000a38c

c0de3e2c <small_basemul>:
c0de3e2c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3e2e:	f9b1 c000 	ldrsh.w	ip, [r1]
c0de3e32:	f9b1 5002 	ldrsh.w	r5, [r1, #2]
c0de3e36:	f9b2 1002 	ldrsh.w	r1, [r2, #2]
c0de3e3a:	f46f 6e50 	mvn.w	lr, #3328	@ 0xd00
c0de3e3e:	f9b2 6000 	ldrsh.w	r6, [r2]
c0de3e42:	fb01 f705 	mul.w	r7, r1, r5
c0de3e46:	4916      	ldr	r1, [pc, #88]	@ (c0de3ea0 <small_basemul+0x74>)
c0de3e48:	fb07 f401 	mul.w	r4, r7, r1
c0de3e4c:	1424      	asrs	r4, r4, #16
c0de3e4e:	fb04 740e 	mla	r4, r4, lr, r7
c0de3e52:	1424      	asrs	r4, r4, #16
c0de3e54:	4363      	muls	r3, r4
c0de3e56:	fb03 f401 	mul.w	r4, r3, r1
c0de3e5a:	1424      	asrs	r4, r4, #16
c0de3e5c:	fb04 330e 	mla	r3, r4, lr, r3
c0de3e60:	fb06 f40c 	mul.w	r4, r6, ip
c0de3e64:	fb04 f701 	mul.w	r7, r4, r1
c0de3e68:	143f      	asrs	r7, r7, #16
c0de3e6a:	0c1b      	lsrs	r3, r3, #16
c0de3e6c:	fb07 440e 	mla	r4, r7, lr, r4
c0de3e70:	eb03 4314 	add.w	r3, r3, r4, lsr #16
c0de3e74:	8003      	strh	r3, [r0, #0]
c0de3e76:	fb06 f305 	mul.w	r3, r6, r5
c0de3e7a:	f9b2 2002 	ldrsh.w	r2, [r2, #2]
c0de3e7e:	fb03 f401 	mul.w	r4, r3, r1
c0de3e82:	1424      	asrs	r4, r4, #16
c0de3e84:	fb02 f20c 	mul.w	r2, r2, ip
c0de3e88:	fb04 330e 	mla	r3, r4, lr, r3
c0de3e8c:	4351      	muls	r1, r2
c0de3e8e:	1409      	asrs	r1, r1, #16
c0de3e90:	fb01 210e 	mla	r1, r1, lr, r2
c0de3e94:	0c09      	lsrs	r1, r1, #16
c0de3e96:	eb01 4113 	add.w	r1, r1, r3, lsr #16
c0de3e9a:	8041      	strh	r1, [r0, #2]
c0de3e9c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3e9e:	bf00      	nop
c0de3ea0:	f3010000 	.word	0xf3010000

c0de3ea4 <poly_small_ntt_copy>:
c0de3ea4:	22ff      	movs	r2, #255	@ 0xff
c0de3ea6:	f1b2 3fff 	cmp.w	r2, #4294967295	@ 0xffffffff
c0de3eaa:	bfd8      	it	le
c0de3eac:	f7ff bf0e 	ble.w	c0de3ccc <small_ntt>
c0de3eb0:	f851 3022 	ldr.w	r3, [r1, r2, lsl #2]
c0de3eb4:	f820 3012 	strh.w	r3, [r0, r2, lsl #1]
c0de3eb8:	3a01      	subs	r2, #1
c0de3eba:	e7f4      	b.n	c0de3ea6 <poly_small_ntt_copy+0x2>

c0de3ebc <poly_small_basemul>:
c0de3ebc:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de3ec0:	e9cd 1200 	strd	r1, r2, [sp]
c0de3ec4:	4683      	mov	fp, r0
c0de3ec6:	f04f 0a00 	mov.w	sl, #0
c0de3eca:	4811      	ldr	r0, [pc, #68]	@ (c0de3f10 <poly_small_basemul+0x54>)
c0de3ecc:	4478      	add	r0, pc
c0de3ece:	f100 0880 	add.w	r8, r0, #128	@ 0x80
c0de3ed2:	f5ba 7f00 	cmp.w	sl, #512	@ 0x200
c0de3ed6:	bf08      	it	eq
c0de3ed8:	e8bd 8dfc 	ldmiaeq.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de3edc:	9800      	ldr	r0, [sp, #0]
c0de3ede:	f938 6b02 	ldrsh.w	r6, [r8], #2
c0de3ee2:	eb0b 070a 	add.w	r7, fp, sl
c0de3ee6:	eb00 040a 	add.w	r4, r0, sl
c0de3eea:	9801      	ldr	r0, [sp, #4]
c0de3eec:	4633      	mov	r3, r6
c0de3eee:	4621      	mov	r1, r4
c0de3ef0:	eb00 050a 	add.w	r5, r0, sl
c0de3ef4:	4638      	mov	r0, r7
c0de3ef6:	462a      	mov	r2, r5
c0de3ef8:	f7ff ff98 	bl	c0de3e2c <small_basemul>
c0de3efc:	4273      	negs	r3, r6
c0de3efe:	1d38      	adds	r0, r7, #4
c0de3f00:	1d21      	adds	r1, r4, #4
c0de3f02:	1d2a      	adds	r2, r5, #4
c0de3f04:	b21b      	sxth	r3, r3
c0de3f06:	f7ff ff91 	bl	c0de3e2c <small_basemul>
c0de3f0a:	f10a 0a08 	add.w	sl, sl, #8
c0de3f0e:	e7e0      	b.n	c0de3ed2 <poly_small_basemul+0x16>
c0de3f10:	0000a220 	.word	0x0000a220

c0de3f14 <poly_small_basemul_invntt>:
c0de3f14:	b510      	push	{r4, lr}
c0de3f16:	4604      	mov	r4, r0
c0de3f18:	f7ff ffd0 	bl	c0de3ebc <poly_small_basemul>
c0de3f1c:	4620      	mov	r0, r4
c0de3f1e:	f7ff ff13 	bl	c0de3d48 <small_invntt_tomont>
c0de3f22:	20ff      	movs	r0, #255	@ 0xff
c0de3f24:	2800      	cmp	r0, #0
c0de3f26:	d405      	bmi.n	c0de3f34 <poly_small_basemul_invntt+0x20>
c0de3f28:	f934 1010 	ldrsh.w	r1, [r4, r0, lsl #1]
c0de3f2c:	f844 1020 	str.w	r1, [r4, r0, lsl #2]
c0de3f30:	3801      	subs	r0, #1
c0de3f32:	e7f7      	b.n	c0de3f24 <poly_small_basemul_invntt+0x10>
c0de3f34:	bd10      	pop	{r4, pc}

c0de3f36 <small_polyeta_unpack>:
c0de3f36:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3f3a:	3101      	adds	r1, #1
c0de3f3c:	f04f 0c00 	mov.w	ip, #0
c0de3f40:	f5bc 7f00 	cmp.w	ip, #512	@ 0x200
c0de3f44:	bf08      	it	eq
c0de3f46:	e8bd 8df0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3f4a:	f811 4c01 	ldrb.w	r4, [r1, #-1]
c0de3f4e:	f004 0807 	and.w	r8, r4, #7
c0de3f52:	eb00 040c 	add.w	r4, r0, ip
c0de3f56:	f820 800c 	strh.w	r8, [r0, ip]
c0de3f5a:	f1c8 0202 	rsb	r2, r8, #2
c0de3f5e:	f811 5c01 	ldrb.w	r5, [r1, #-1]
c0de3f62:	f3c5 0ec2 	ubfx	lr, r5, #3, #3
c0de3f66:	f8a4 e002 	strh.w	lr, [r4, #2]
c0de3f6a:	f811 6c01 	ldrb.w	r6, [r1, #-1]
c0de3f6e:	780b      	ldrb	r3, [r1, #0]
c0de3f70:	09b6      	lsrs	r6, r6, #6
c0de3f72:	f363 0682 	bfi	r6, r3, #2, #1
c0de3f76:	80a6      	strh	r6, [r4, #4]
c0de3f78:	780b      	ldrb	r3, [r1, #0]
c0de3f7a:	f3c3 0a42 	ubfx	sl, r3, #1, #3
c0de3f7e:	f8a4 a006 	strh.w	sl, [r4, #6]
c0de3f82:	780d      	ldrb	r5, [r1, #0]
c0de3f84:	f3c5 1502 	ubfx	r5, r5, #4, #3
c0de3f88:	8125      	strh	r5, [r4, #8]
c0de3f8a:	780f      	ldrb	r7, [r1, #0]
c0de3f8c:	784b      	ldrb	r3, [r1, #1]
c0de3f8e:	09ff      	lsrs	r7, r7, #7
c0de3f90:	f363 0742 	bfi	r7, r3, #1, #2
c0de3f94:	8167      	strh	r7, [r4, #10]
c0de3f96:	784b      	ldrb	r3, [r1, #1]
c0de3f98:	f3c3 0382 	ubfx	r3, r3, #2, #3
c0de3f9c:	81a3      	strh	r3, [r4, #12]
c0de3f9e:	f891 b001 	ldrb.w	fp, [r1, #1]
c0de3fa2:	f820 200c 	strh.w	r2, [r0, ip]
c0de3fa6:	f1c3 0202 	rsb	r2, r3, #2
c0de3faa:	3103      	adds	r1, #3
c0de3fac:	f10c 0c10 	add.w	ip, ip, #16
c0de3fb0:	81a2      	strh	r2, [r4, #12]
c0de3fb2:	f1c7 0202 	rsb	r2, r7, #2
c0de3fb6:	8162      	strh	r2, [r4, #10]
c0de3fb8:	f1c5 0202 	rsb	r2, r5, #2
c0de3fbc:	8122      	strh	r2, [r4, #8]
c0de3fbe:	f1ca 0202 	rsb	r2, sl, #2
c0de3fc2:	80e2      	strh	r2, [r4, #6]
c0de3fc4:	f1c6 0202 	rsb	r2, r6, #2
c0de3fc8:	80a2      	strh	r2, [r4, #4]
c0de3fca:	f1ce 0202 	rsb	r2, lr, #2
c0de3fce:	8062      	strh	r2, [r4, #2]
c0de3fd0:	2202      	movs	r2, #2
c0de3fd2:	eba2 125b 	sub.w	r2, r2, fp, lsr #5
c0de3fd6:	81e2      	strh	r2, [r4, #14]
c0de3fd8:	e7b2      	b.n	c0de3f40 <small_polyeta_unpack+0xa>

c0de3fda <pqcrystals_dilithium2_lowram_dilithium_shake128_stream_init>:
c0de3fda:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de3fdc:	f000 f825 	bl	c0de402a <OUTLINED_FUNCTION_0>
c0de3fe0:	f7fd f826 	bl	c0de1030 <pqcrystals_dilithium_fips202_ref_shake128_init>
c0de3fe4:	4628      	mov	r0, r5
c0de3fe6:	4621      	mov	r1, r4
c0de3fe8:	2220      	movs	r2, #32
c0de3fea:	f7fd f833 	bl	c0de1054 <pqcrystals_dilithium_fips202_ref_shake128_absorb>
c0de3fee:	f10d 0106 	add.w	r1, sp, #6
c0de3ff2:	4628      	mov	r0, r5
c0de3ff4:	2202      	movs	r2, #2
c0de3ff6:	f7fd f82d 	bl	c0de1054 <pqcrystals_dilithium_fips202_ref_shake128_absorb>
c0de3ffa:	4628      	mov	r0, r5
c0de3ffc:	f7fd f873 	bl	c0de10e6 <pqcrystals_dilithium_fips202_ref_shake128_finalize>
c0de4000:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de4002 <pqcrystals_dilithium2_lowram_dilithium_shake256_stream_init>:
c0de4002:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de4004:	f000 f811 	bl	c0de402a <OUTLINED_FUNCTION_0>
c0de4008:	f7fd f95c 	bl	c0de12c4 <pqcrystals_dilithium_fips202_ref_shake256_init>
c0de400c:	4628      	mov	r0, r5
c0de400e:	4621      	mov	r1, r4
c0de4010:	2240      	movs	r2, #64	@ 0x40
c0de4012:	f7fd f95f 	bl	c0de12d4 <pqcrystals_dilithium_fips202_ref_shake256_absorb>
c0de4016:	f10d 0106 	add.w	r1, sp, #6
c0de401a:	4628      	mov	r0, r5
c0de401c:	2202      	movs	r2, #2
c0de401e:	f7fd f959 	bl	c0de12d4 <pqcrystals_dilithium_fips202_ref_shake256_absorb>
c0de4022:	4628      	mov	r0, r5
c0de4024:	f7fd f961 	bl	c0de12ea <pqcrystals_dilithium_fips202_ref_shake256_finalize>
c0de4028:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de402a <OUTLINED_FUNCTION_0>:
c0de402a:	4605      	mov	r5, r0
c0de402c:	0a10      	lsrs	r0, r2, #8
c0de402e:	460c      	mov	r4, r1
c0de4030:	f88d 2006 	strb.w	r2, [sp, #6]
c0de4034:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4038:	4628      	mov	r0, r5
c0de403a:	4770      	bx	lr

c0de403c <tEdwards_alloc>:
c0de403c:	b5b0      	push	{r4, r5, r7, lr}
c0de403e:	f000 fbbe 	bl	c0de47be <OUTLINED_FUNCTION_4>
c0de4042:	b920      	cbnz	r0, c0de404e <tEdwards_alloc+0x12>
c0de4044:	6821      	ldr	r1, [r4, #0]
c0de4046:	1d28      	adds	r0, r5, #4
c0de4048:	f007 ff74 	bl	c0debf34 <cx_bn_alloc>
c0de404c:	b100      	cbz	r0, c0de4050 <tEdwards_alloc+0x14>
c0de404e:	bdb0      	pop	{r4, r5, r7, pc}
c0de4050:	6821      	ldr	r1, [r4, #0]
c0de4052:	f105 0008 	add.w	r0, r5, #8
c0de4056:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de405a:	f007 bf6b 	b.w	c0debf34 <cx_bn_alloc>

c0de405e <tEdwards_double>:
c0de405e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de4060:	460f      	mov	r7, r1
c0de4062:	4614      	mov	r4, r2
c0de4064:	4605      	mov	r5, r0
c0de4066:	6843      	ldr	r3, [r0, #4]
c0de4068:	6809      	ldr	r1, [r1, #0]
c0de406a:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de406c:	687a      	ldr	r2, [r7, #4]
c0de406e:	f007 ffcf 	bl	c0dec010 <cx_bn_mod_add>
c0de4072:	2800      	cmp	r0, #0
c0de4074:	d154      	bne.n	c0de4120 <tEdwards_double+0xc2>
c0de4076:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de407a:	f105 0620 	add.w	r6, r5, #32
c0de407e:	f000 fb95 	bl	c0de47ac <OUTLINED_FUNCTION_2>
c0de4082:	2800      	cmp	r0, #0
c0de4084:	d14c      	bne.n	c0de4120 <tEdwards_double+0xc2>
c0de4086:	6839      	ldr	r1, [r7, #0]
c0de4088:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de408a:	f000 fb8f 	bl	c0de47ac <OUTLINED_FUNCTION_2>
c0de408e:	2800      	cmp	r0, #0
c0de4090:	d146      	bne.n	c0de4120 <tEdwards_double+0xc2>
c0de4092:	6879      	ldr	r1, [r7, #4]
c0de4094:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de4096:	f000 fb89 	bl	c0de47ac <OUTLINED_FUNCTION_2>
c0de409a:	2800      	cmp	r0, #0
c0de409c:	d140      	bne.n	c0de4120 <tEdwards_double+0xc2>
c0de409e:	69a9      	ldr	r1, [r5, #24]
c0de40a0:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de40a2:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de40a4:	f000 fb7c 	bl	c0de47a0 <OUTLINED_FUNCTION_0>
c0de40a8:	bbd0      	cbnz	r0, c0de4120 <tEdwards_double+0xc2>
c0de40aa:	686b      	ldr	r3, [r5, #4]
c0de40ac:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de40b0:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de40b2:	f007 ffad 	bl	c0dec010 <cx_bn_mod_add>
c0de40b6:	bb98      	cbnz	r0, c0de4120 <tEdwards_double+0xc2>
c0de40b8:	68b9      	ldr	r1, [r7, #8]
c0de40ba:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de40bc:	f000 fb76 	bl	c0de47ac <OUTLINED_FUNCTION_2>
c0de40c0:	bb70      	cbnz	r0, c0de4120 <tEdwards_double+0xc2>
c0de40c2:	686b      	ldr	r3, [r5, #4]
c0de40c4:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de40c6:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de40c8:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de40ca:	f007 ffad 	bl	c0dec028 <cx_bn_mod_sub>
c0de40ce:	bb38      	cbnz	r0, c0de4120 <tEdwards_double+0xc2>
c0de40d0:	686b      	ldr	r3, [r5, #4]
c0de40d2:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de40d4:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de40d8:	f007 ffa6 	bl	c0dec028 <cx_bn_mod_sub>
c0de40dc:	bb00      	cbnz	r0, c0de4120 <tEdwards_double+0xc2>
c0de40de:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de40e2:	686b      	ldr	r3, [r5, #4]
c0de40e4:	ca07      	ldmia	r2, {r0, r1, r2}
c0de40e6:	f007 ff9f 	bl	c0dec028 <cx_bn_mod_sub>
c0de40ea:	b9c8      	cbnz	r0, c0de4120 <tEdwards_double+0xc2>
c0de40ec:	686b      	ldr	r3, [r5, #4]
c0de40ee:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de40f2:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de40f4:	f007 ff98 	bl	c0dec028 <cx_bn_mod_sub>
c0de40f8:	b990      	cbnz	r0, c0de4120 <tEdwards_double+0xc2>
c0de40fa:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de40fc:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de40fe:	6820      	ldr	r0, [r4, #0]
c0de4100:	f000 fb4e 	bl	c0de47a0 <OUTLINED_FUNCTION_0>
c0de4104:	b960      	cbnz	r0, c0de4120 <tEdwards_double+0xc2>
c0de4106:	686b      	ldr	r3, [r5, #4]
c0de4108:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de410c:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de410e:	f007 ff8b 	bl	c0dec028 <cx_bn_mod_sub>
c0de4112:	b928      	cbnz	r0, c0de4120 <tEdwards_double+0xc2>
c0de4114:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de4116:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de4118:	6860      	ldr	r0, [r4, #4]
c0de411a:	f000 fb41 	bl	c0de47a0 <OUTLINED_FUNCTION_0>
c0de411e:	b100      	cbz	r0, c0de4122 <tEdwards_double+0xc4>
c0de4120:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de4122:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de4124:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de4126:	68a0      	ldr	r0, [r4, #8]
c0de4128:	4633      	mov	r3, r6
c0de412a:	b001      	add	sp, #4
c0de412c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de4130:	f007 bfbc 	b.w	c0dec0ac <cx_mont_mul>

c0de4134 <tEdwards_add>:
c0de4134:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4138:	4606      	mov	r6, r0
c0de413a:	4617      	mov	r7, r2
c0de413c:	460c      	mov	r4, r1
c0de413e:	6892      	ldr	r2, [r2, #8]
c0de4140:	6889      	ldr	r1, [r1, #8]
c0de4142:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de4144:	4698      	mov	r8, r3
c0de4146:	f106 0520 	add.w	r5, r6, #32
c0de414a:	f000 fb2c 	bl	c0de47a6 <OUTLINED_FUNCTION_1>
c0de414e:	2800      	cmp	r0, #0
c0de4150:	d17d      	bne.n	c0de424e <tEdwards_add+0x11a>
c0de4152:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de4156:	462b      	mov	r3, r5
c0de4158:	460a      	mov	r2, r1
c0de415a:	f007 ffa7 	bl	c0dec0ac <cx_mont_mul>
c0de415e:	2800      	cmp	r0, #0
c0de4160:	d175      	bne.n	c0de424e <tEdwards_add+0x11a>
c0de4162:	683a      	ldr	r2, [r7, #0]
c0de4164:	6821      	ldr	r1, [r4, #0]
c0de4166:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de4168:	f000 fb1d 	bl	c0de47a6 <OUTLINED_FUNCTION_1>
c0de416c:	2800      	cmp	r0, #0
c0de416e:	d16e      	bne.n	c0de424e <tEdwards_add+0x11a>
c0de4170:	687a      	ldr	r2, [r7, #4]
c0de4172:	6861      	ldr	r1, [r4, #4]
c0de4174:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de4176:	f000 fb16 	bl	c0de47a6 <OUTLINED_FUNCTION_1>
c0de417a:	2800      	cmp	r0, #0
c0de417c:	d167      	bne.n	c0de424e <tEdwards_add+0x11a>
c0de417e:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de4182:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de4184:	f000 fb0f 	bl	c0de47a6 <OUTLINED_FUNCTION_1>
c0de4188:	2800      	cmp	r0, #0
c0de418a:	d160      	bne.n	c0de424e <tEdwards_add+0x11a>
c0de418c:	69f2      	ldr	r2, [r6, #28]
c0de418e:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de4190:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de4192:	f000 fb08 	bl	c0de47a6 <OUTLINED_FUNCTION_1>
c0de4196:	2800      	cmp	r0, #0
c0de4198:	d159      	bne.n	c0de424e <tEdwards_add+0x11a>
c0de419a:	6873      	ldr	r3, [r6, #4]
c0de419c:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de419e:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de41a2:	f007 ff41 	bl	c0dec028 <cx_bn_mod_sub>
c0de41a6:	2800      	cmp	r0, #0
c0de41a8:	d151      	bne.n	c0de424e <tEdwards_add+0x11a>
c0de41aa:	6873      	ldr	r3, [r6, #4]
c0de41ac:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de41ae:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de41b0:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de41b2:	f007 ff2d 	bl	c0dec010 <cx_bn_mod_add>
c0de41b6:	2800      	cmp	r0, #0
c0de41b8:	d149      	bne.n	c0de424e <tEdwards_add+0x11a>
c0de41ba:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de41be:	6873      	ldr	r3, [r6, #4]
c0de41c0:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de41c2:	f007 ff25 	bl	c0dec010 <cx_bn_mod_add>
c0de41c6:	2800      	cmp	r0, #0
c0de41c8:	d141      	bne.n	c0de424e <tEdwards_add+0x11a>
c0de41ca:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de41ce:	6873      	ldr	r3, [r6, #4]
c0de41d0:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de41d2:	f007 ff1d 	bl	c0dec010 <cx_bn_mod_add>
c0de41d6:	bbd0      	cbnz	r0, c0de424e <tEdwards_add+0x11a>
c0de41d8:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de41da:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de41de:	f000 fae2 	bl	c0de47a6 <OUTLINED_FUNCTION_1>
c0de41e2:	bba0      	cbnz	r0, c0de424e <tEdwards_add+0x11a>
c0de41e4:	6873      	ldr	r3, [r6, #4]
c0de41e6:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de41ea:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de41ec:	f007 ff1c 	bl	c0dec028 <cx_bn_mod_sub>
c0de41f0:	bb68      	cbnz	r0, c0de424e <tEdwards_add+0x11a>
c0de41f2:	6873      	ldr	r3, [r6, #4]
c0de41f4:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de41f6:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de41fa:	f007 ff15 	bl	c0dec028 <cx_bn_mod_sub>
c0de41fe:	bb30      	cbnz	r0, c0de424e <tEdwards_add+0x11a>
c0de4200:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de4204:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de4206:	f000 face 	bl	c0de47a6 <OUTLINED_FUNCTION_1>
c0de420a:	bb00      	cbnz	r0, c0de424e <tEdwards_add+0x11a>
c0de420c:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de420e:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de4210:	f8d8 0000 	ldr.w	r0, [r8]
c0de4214:	f000 fac7 	bl	c0de47a6 <OUTLINED_FUNCTION_1>
c0de4218:	b9c8      	cbnz	r0, c0de424e <tEdwards_add+0x11a>
c0de421a:	69b1      	ldr	r1, [r6, #24]
c0de421c:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de4220:	f000 fac1 	bl	c0de47a6 <OUTLINED_FUNCTION_1>
c0de4224:	b998      	cbnz	r0, c0de424e <tEdwards_add+0x11a>
c0de4226:	6873      	ldr	r3, [r6, #4]
c0de4228:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de422a:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de422c:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de422e:	f007 fefb 	bl	c0dec028 <cx_bn_mod_sub>
c0de4232:	b960      	cbnz	r0, c0de424e <tEdwards_add+0x11a>
c0de4234:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de4236:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de4238:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de423a:	f000 fab4 	bl	c0de47a6 <OUTLINED_FUNCTION_1>
c0de423e:	b930      	cbnz	r0, c0de424e <tEdwards_add+0x11a>
c0de4240:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de4244:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de4248:	f000 faad 	bl	c0de47a6 <OUTLINED_FUNCTION_1>
c0de424c:	b108      	cbz	r0, c0de4252 <tEdwards_add+0x11e>
c0de424e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de4252:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de4256:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de425a:	462b      	mov	r3, r5
c0de425c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4260:	f007 bf24 	b.w	c0dec0ac <cx_mont_mul>

c0de4264 <tEdwards_IsOnCurve>:
c0de4264:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de4266:	4605      	mov	r5, r0
c0de4268:	460f      	mov	r7, r1
c0de426a:	2005      	movs	r0, #5
c0de426c:	6809      	ldr	r1, [r1, #0]
c0de426e:	4614      	mov	r4, r2
c0de4270:	9000      	str	r0, [sp, #0]
c0de4272:	f105 0620 	add.w	r6, r5, #32
c0de4276:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de4278:	460a      	mov	r2, r1
c0de427a:	f000 fa91 	bl	c0de47a0 <OUTLINED_FUNCTION_0>
c0de427e:	b100      	cbz	r0, c0de4282 <tEdwards_IsOnCurve+0x1e>
c0de4280:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de4282:	6879      	ldr	r1, [r7, #4]
c0de4284:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de4286:	f000 fa91 	bl	c0de47ac <OUTLINED_FUNCTION_2>
c0de428a:	2800      	cmp	r0, #0
c0de428c:	d1f8      	bne.n	c0de4280 <tEdwards_IsOnCurve+0x1c>
c0de428e:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de4292:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de4294:	f000 fa84 	bl	c0de47a0 <OUTLINED_FUNCTION_0>
c0de4298:	2800      	cmp	r0, #0
c0de429a:	d1f1      	bne.n	c0de4280 <tEdwards_IsOnCurve+0x1c>
c0de429c:	69a9      	ldr	r1, [r5, #24]
c0de429e:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de42a0:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de42a2:	f000 fa7d 	bl	c0de47a0 <OUTLINED_FUNCTION_0>
c0de42a6:	2800      	cmp	r0, #0
c0de42a8:	d1ea      	bne.n	c0de4280 <tEdwards_IsOnCurve+0x1c>
c0de42aa:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de42ac:	686b      	ldr	r3, [r5, #4]
c0de42ae:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de42b0:	4601      	mov	r1, r0
c0de42b2:	f007 fead 	bl	c0dec010 <cx_bn_mod_add>
c0de42b6:	2800      	cmp	r0, #0
c0de42b8:	d1e2      	bne.n	c0de4280 <tEdwards_IsOnCurve+0x1c>
c0de42ba:	69e9      	ldr	r1, [r5, #28]
c0de42bc:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de42be:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de42c0:	f000 fa6e 	bl	c0de47a0 <OUTLINED_FUNCTION_0>
c0de42c4:	2800      	cmp	r0, #0
c0de42c6:	d1db      	bne.n	c0de4280 <tEdwards_IsOnCurve+0x1c>
c0de42c8:	686b      	ldr	r3, [r5, #4]
c0de42ca:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de42cc:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de42ce:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de42d0:	f007 fe9e 	bl	c0dec010 <cx_bn_mod_add>
c0de42d4:	2800      	cmp	r0, #0
c0de42d6:	d1d3      	bne.n	c0de4280 <tEdwards_IsOnCurve+0x1c>
c0de42d8:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de42da:	4632      	mov	r2, r6
c0de42dc:	4601      	mov	r1, r0
c0de42de:	f007 fed9 	bl	c0dec094 <cx_mont_from_montgomery>
c0de42e2:	2800      	cmp	r0, #0
c0de42e4:	d1cc      	bne.n	c0de4280 <tEdwards_IsOnCurve+0x1c>
c0de42e6:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de42e8:	4632      	mov	r2, r6
c0de42ea:	4601      	mov	r1, r0
c0de42ec:	f007 fed2 	bl	c0dec094 <cx_mont_from_montgomery>
c0de42f0:	2800      	cmp	r0, #0
c0de42f2:	d1c5      	bne.n	c0de4280 <tEdwards_IsOnCurve+0x1c>
c0de42f4:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de42f8:	466a      	mov	r2, sp
c0de42fa:	f007 fe65 	bl	c0debfc8 <cx_bn_cmp>
c0de42fe:	2800      	cmp	r0, #0
c0de4300:	d1be      	bne.n	c0de4280 <tEdwards_IsOnCurve+0x1c>
c0de4302:	9800      	ldr	r0, [sp, #0]
c0de4304:	fab0 f080 	clz	r0, r0
c0de4308:	0940      	lsrs	r0, r0, #5
c0de430a:	7020      	strb	r0, [r4, #0]
c0de430c:	2000      	movs	r0, #0
c0de430e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de4310 <tEdwards_Curve_alloc_init>:
c0de4310:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4314:	b0c1      	sub	sp, #260	@ 0x104
c0de4316:	4604      	mov	r4, r0
c0de4318:	2902      	cmp	r1, #2
c0de431a:	d01f      	beq.n	c0de435c <tEdwards_Curve_alloc_init+0x4c>
c0de431c:	2901      	cmp	r1, #1
c0de431e:	f040 80cf 	bne.w	c0de44c0 <tEdwards_Curve_alloc_init+0x1b0>
c0de4322:	2020      	movs	r0, #32
c0de4324:	2220      	movs	r2, #32
c0de4326:	6020      	str	r0, [r4, #0]
c0de4328:	af39      	add	r7, sp, #228	@ 0xe4
c0de432a:	4968      	ldr	r1, [pc, #416]	@ (c0de44cc <tEdwards_Curve_alloc_init+0x1bc>)
c0de432c:	4638      	mov	r0, r7
c0de432e:	4479      	add	r1, pc
c0de4330:	f008 f933 	bl	c0dec59a <__aeabi_memcpy>
c0de4334:	4966      	ldr	r1, [pc, #408]	@ (c0de44d0 <tEdwards_Curve_alloc_init+0x1c0>)
c0de4336:	f10d 0ac4 	add.w	sl, sp, #196	@ 0xc4
c0de433a:	2220      	movs	r2, #32
c0de433c:	4650      	mov	r0, sl
c0de433e:	4479      	add	r1, pc
c0de4340:	f008 f92b 	bl	c0dec59a <__aeabi_memcpy>
c0de4344:	4963      	ldr	r1, [pc, #396]	@ (c0de44d4 <tEdwards_Curve_alloc_init+0x1c4>)
c0de4346:	f10d 08a4 	add.w	r8, sp, #164	@ 0xa4
c0de434a:	2220      	movs	r2, #32
c0de434c:	4640      	mov	r0, r8
c0de434e:	4479      	add	r1, pc
c0de4350:	f008 f923 	bl	c0dec59a <__aeabi_memcpy>
c0de4354:	ad21      	add	r5, sp, #132	@ 0x84
c0de4356:	4960      	ldr	r1, [pc, #384]	@ (c0de44d8 <tEdwards_Curve_alloc_init+0x1c8>)
c0de4358:	4479      	add	r1, pc
c0de435a:	e01b      	b.n	c0de4394 <tEdwards_Curve_alloc_init+0x84>
c0de435c:	2020      	movs	r0, #32
c0de435e:	2220      	movs	r2, #32
c0de4360:	6020      	str	r0, [r4, #0]
c0de4362:	af19      	add	r7, sp, #100	@ 0x64
c0de4364:	495d      	ldr	r1, [pc, #372]	@ (c0de44dc <tEdwards_Curve_alloc_init+0x1cc>)
c0de4366:	4638      	mov	r0, r7
c0de4368:	4479      	add	r1, pc
c0de436a:	f008 f916 	bl	c0dec59a <__aeabi_memcpy>
c0de436e:	495c      	ldr	r1, [pc, #368]	@ (c0de44e0 <tEdwards_Curve_alloc_init+0x1d0>)
c0de4370:	f10d 0a44 	add.w	sl, sp, #68	@ 0x44
c0de4374:	2220      	movs	r2, #32
c0de4376:	4650      	mov	r0, sl
c0de4378:	4479      	add	r1, pc
c0de437a:	f008 f90e 	bl	c0dec59a <__aeabi_memcpy>
c0de437e:	4959      	ldr	r1, [pc, #356]	@ (c0de44e4 <tEdwards_Curve_alloc_init+0x1d4>)
c0de4380:	f10d 0824 	add.w	r8, sp, #36	@ 0x24
c0de4384:	2220      	movs	r2, #32
c0de4386:	4640      	mov	r0, r8
c0de4388:	4479      	add	r1, pc
c0de438a:	f008 f906 	bl	c0dec59a <__aeabi_memcpy>
c0de438e:	ad01      	add	r5, sp, #4
c0de4390:	4955      	ldr	r1, [pc, #340]	@ (c0de44e8 <tEdwards_Curve_alloc_init+0x1d8>)
c0de4392:	4479      	add	r1, pc
c0de4394:	4628      	mov	r0, r5
c0de4396:	2220      	movs	r2, #32
c0de4398:	f008 f8ff 	bl	c0dec59a <__aeabi_memcpy>
c0de439c:	1d26      	adds	r6, r4, #4
c0de439e:	2120      	movs	r1, #32
c0de43a0:	463a      	mov	r2, r7
c0de43a2:	2320      	movs	r3, #32
c0de43a4:	4630      	mov	r0, r6
c0de43a6:	f007 fdcf 	bl	c0debf48 <cx_bn_alloc_init>
c0de43aa:	2800      	cmp	r0, #0
c0de43ac:	f040 808a 	bne.w	c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de43b0:	4620      	mov	r0, r4
c0de43b2:	462a      	mov	r2, r5
c0de43b4:	f850 1b08 	ldr.w	r1, [r0], #8
c0de43b8:	460b      	mov	r3, r1
c0de43ba:	f007 fdc5 	bl	c0debf48 <cx_bn_alloc_init>
c0de43be:	2800      	cmp	r0, #0
c0de43c0:	f040 8080 	bne.w	c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de43c4:	f104 0720 	add.w	r7, r4, #32
c0de43c8:	2120      	movs	r1, #32
c0de43ca:	4638      	mov	r0, r7
c0de43cc:	f007 fe42 	bl	c0dec054 <cx_mont_alloc>
c0de43d0:	2800      	cmp	r0, #0
c0de43d2:	d177      	bne.n	c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de43d4:	6831      	ldr	r1, [r6, #0]
c0de43d6:	4638      	mov	r0, r7
c0de43d8:	f007 fe46 	bl	c0dec068 <cx_mont_init>
c0de43dc:	2800      	cmp	r0, #0
c0de43de:	d171      	bne.n	c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de43e0:	4625      	mov	r5, r4
c0de43e2:	f855 1b28 	ldr.w	r1, [r5], #40
c0de43e6:	4628      	mov	r0, r5
c0de43e8:	f007 fda4 	bl	c0debf34 <cx_bn_alloc>
c0de43ec:	2800      	cmp	r0, #0
c0de43ee:	d169      	bne.n	c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de43f0:	6828      	ldr	r0, [r5, #0]
c0de43f2:	2101      	movs	r1, #1
c0de43f4:	f007 fdd2 	bl	c0debf9c <cx_bn_set_u32>
c0de43f8:	2800      	cmp	r0, #0
c0de43fa:	d163      	bne.n	c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de43fc:	f000 f9da 	bl	c0de47b4 <OUTLINED_FUNCTION_3>
c0de4400:	2800      	cmp	r0, #0
c0de4402:	d15f      	bne.n	c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de4404:	f104 050c 	add.w	r5, r4, #12
c0de4408:	4620      	mov	r0, r4
c0de440a:	4629      	mov	r1, r5
c0de440c:	f7ff fe16 	bl	c0de403c <tEdwards_alloc>
c0de4410:	2800      	cmp	r0, #0
c0de4412:	d157      	bne.n	c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de4414:	4620      	mov	r0, r4
c0de4416:	4629      	mov	r1, r5
c0de4418:	f000 f868 	bl	c0de44ec <tEdwards_SetNeutral>
c0de441c:	2800      	cmp	r0, #0
c0de441e:	d151      	bne.n	c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de4420:	4625      	mov	r5, r4
c0de4422:	4652      	mov	r2, sl
c0de4424:	f855 1b18 	ldr.w	r1, [r5], #24
c0de4428:	4628      	mov	r0, r5
c0de442a:	460b      	mov	r3, r1
c0de442c:	f007 fd8c 	bl	c0debf48 <cx_bn_alloc_init>
c0de4430:	2800      	cmp	r0, #0
c0de4432:	d147      	bne.n	c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de4434:	f000 f9be 	bl	c0de47b4 <OUTLINED_FUNCTION_3>
c0de4438:	2800      	cmp	r0, #0
c0de443a:	d143      	bne.n	c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de443c:	4625      	mov	r5, r4
c0de443e:	4642      	mov	r2, r8
c0de4440:	f855 1b1c 	ldr.w	r1, [r5], #28
c0de4444:	4628      	mov	r0, r5
c0de4446:	460b      	mov	r3, r1
c0de4448:	f007 fd7e 	bl	c0debf48 <cx_bn_alloc_init>
c0de444c:	bbd0      	cbnz	r0, c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de444e:	f000 f9b1 	bl	c0de47b4 <OUTLINED_FUNCTION_3>
c0de4452:	bbb8      	cbnz	r0, c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de4454:	4620      	mov	r0, r4
c0de4456:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de445a:	f007 fd6b 	bl	c0debf34 <cx_bn_alloc>
c0de445e:	bb88      	cbnz	r0, c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de4460:	4620      	mov	r0, r4
c0de4462:	f850 1b30 	ldr.w	r1, [r0], #48
c0de4466:	f007 fd65 	bl	c0debf34 <cx_bn_alloc>
c0de446a:	bb58      	cbnz	r0, c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de446c:	4620      	mov	r0, r4
c0de446e:	f850 1b34 	ldr.w	r1, [r0], #52
c0de4472:	f007 fd5f 	bl	c0debf34 <cx_bn_alloc>
c0de4476:	bb28      	cbnz	r0, c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de4478:	4620      	mov	r0, r4
c0de447a:	f850 1b38 	ldr.w	r1, [r0], #56
c0de447e:	f007 fd59 	bl	c0debf34 <cx_bn_alloc>
c0de4482:	b9f8      	cbnz	r0, c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de4484:	4620      	mov	r0, r4
c0de4486:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de448a:	f007 fd53 	bl	c0debf34 <cx_bn_alloc>
c0de448e:	b9c8      	cbnz	r0, c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de4490:	4620      	mov	r0, r4
c0de4492:	f850 1b40 	ldr.w	r1, [r0], #64
c0de4496:	f007 fd4d 	bl	c0debf34 <cx_bn_alloc>
c0de449a:	b998      	cbnz	r0, c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de449c:	4620      	mov	r0, r4
c0de449e:	f850 1b44 	ldr.w	r1, [r0], #68
c0de44a2:	f007 fd47 	bl	c0debf34 <cx_bn_alloc>
c0de44a6:	b968      	cbnz	r0, c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de44a8:	4620      	mov	r0, r4
c0de44aa:	f850 1b48 	ldr.w	r1, [r0], #72
c0de44ae:	f007 fd41 	bl	c0debf34 <cx_bn_alloc>
c0de44b2:	b938      	cbnz	r0, c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de44b4:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de44b8:	4620      	mov	r0, r4
c0de44ba:	f007 fd3b 	bl	c0debf34 <cx_bn_alloc>
c0de44be:	e001      	b.n	c0de44c4 <tEdwards_Curve_alloc_init+0x1b4>
c0de44c0:	f648 3099 	movw	r0, #35737	@ 0x8b99
c0de44c4:	b041      	add	sp, #260	@ 0x104
c0de44c6:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de44ca:	bf00      	nop
c0de44cc:	00008842 	.word	0x00008842
c0de44d0:	00008972 	.word	0x00008972
c0de44d4:	00008942 	.word	0x00008942
c0de44d8:	00008898 	.word	0x00008898
c0de44dc:	00008988 	.word	0x00008988
c0de44e0:	000088f8 	.word	0x000088f8
c0de44e4:	00008948 	.word	0x00008948
c0de44e8:	0000887e 	.word	0x0000887e

c0de44ec <tEdwards_SetNeutral>:
c0de44ec:	b5b0      	push	{r4, r5, r7, lr}
c0de44ee:	4605      	mov	r5, r0
c0de44f0:	6808      	ldr	r0, [r1, #0]
c0de44f2:	460c      	mov	r4, r1
c0de44f4:	2100      	movs	r1, #0
c0de44f6:	f007 fd51 	bl	c0debf9c <cx_bn_set_u32>
c0de44fa:	b918      	cbnz	r0, c0de4504 <tEdwards_SetNeutral+0x18>
c0de44fc:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de44fe:	f000 f964 	bl	c0de47ca <OUTLINED_FUNCTION_5>
c0de4502:	b100      	cbz	r0, c0de4506 <tEdwards_SetNeutral+0x1a>
c0de4504:	bdb0      	pop	{r4, r5, r7, pc}
c0de4506:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de4508:	68a0      	ldr	r0, [r4, #8]
c0de450a:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de450e:	f007 bd3b 	b.w	c0debf88 <cx_bn_copy>

c0de4512 <tEdwards_init>:
c0de4512:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de4514:	6806      	ldr	r6, [r0, #0]
c0de4516:	461c      	mov	r4, r3
c0de4518:	4617      	mov	r7, r2
c0de451a:	460a      	mov	r2, r1
c0de451c:	4605      	mov	r5, r0
c0de451e:	a802      	add	r0, sp, #8
c0de4520:	4631      	mov	r1, r6
c0de4522:	4633      	mov	r3, r6
c0de4524:	f007 fd10 	bl	c0debf48 <cx_bn_alloc_init>
c0de4528:	b100      	cbz	r0, c0de452c <tEdwards_init+0x1a>
c0de452a:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de452c:	a801      	add	r0, sp, #4
c0de452e:	4631      	mov	r1, r6
c0de4530:	463a      	mov	r2, r7
c0de4532:	4633      	mov	r3, r6
c0de4534:	f007 fd08 	bl	c0debf48 <cx_bn_alloc_init>
c0de4538:	2800      	cmp	r0, #0
c0de453a:	d1f6      	bne.n	c0de452a <tEdwards_init+0x18>
c0de453c:	4668      	mov	r0, sp
c0de453e:	4631      	mov	r1, r6
c0de4540:	f007 fcf8 	bl	c0debf34 <cx_bn_alloc>
c0de4544:	2800      	cmp	r0, #0
c0de4546:	d1f0      	bne.n	c0de452a <tEdwards_init+0x18>
c0de4548:	f105 0620 	add.w	r6, r5, #32
c0de454c:	6820      	ldr	r0, [r4, #0]
c0de454e:	9902      	ldr	r1, [sp, #8]
c0de4550:	4632      	mov	r2, r6
c0de4552:	f007 fd93 	bl	c0dec07c <cx_mont_to_montgomery>
c0de4556:	2800      	cmp	r0, #0
c0de4558:	d1e7      	bne.n	c0de452a <tEdwards_init+0x18>
c0de455a:	6860      	ldr	r0, [r4, #4]
c0de455c:	9901      	ldr	r1, [sp, #4]
c0de455e:	4632      	mov	r2, r6
c0de4560:	f007 fd8c 	bl	c0dec07c <cx_mont_to_montgomery>
c0de4564:	2800      	cmp	r0, #0
c0de4566:	d1e0      	bne.n	c0de452a <tEdwards_init+0x18>
c0de4568:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de456a:	68a0      	ldr	r0, [r4, #8]
c0de456c:	f007 fd0c 	bl	c0debf88 <cx_bn_copy>
c0de4570:	2800      	cmp	r0, #0
c0de4572:	d1da      	bne.n	c0de452a <tEdwards_init+0x18>
c0de4574:	a802      	add	r0, sp, #8
c0de4576:	f007 fcf3 	bl	c0debf60 <cx_bn_destroy>
c0de457a:	2800      	cmp	r0, #0
c0de457c:	d1d5      	bne.n	c0de452a <tEdwards_init+0x18>
c0de457e:	a801      	add	r0, sp, #4
c0de4580:	f007 fcee 	bl	c0debf60 <cx_bn_destroy>
c0de4584:	2800      	cmp	r0, #0
c0de4586:	d1d0      	bne.n	c0de452a <tEdwards_init+0x18>
c0de4588:	4668      	mov	r0, sp
c0de458a:	f007 fce9 	bl	c0debf60 <cx_bn_destroy>
c0de458e:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de4590 <tEdwards_export>:
c0de4590:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4594:	4698      	mov	r8, r3
c0de4596:	4616      	mov	r6, r2
c0de4598:	460f      	mov	r7, r1
c0de459a:	4605      	mov	r5, r0
c0de459c:	f000 f81e 	bl	c0de45dc <tEdwards_normalize>
c0de45a0:	b998      	cbnz	r0, c0de45ca <tEdwards_export+0x3a>
c0de45a2:	f105 0420 	add.w	r4, r5, #32
c0de45a6:	6839      	ldr	r1, [r7, #0]
c0de45a8:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de45aa:	4622      	mov	r2, r4
c0de45ac:	f007 fd72 	bl	c0dec094 <cx_mont_from_montgomery>
c0de45b0:	b958      	cbnz	r0, c0de45ca <tEdwards_export+0x3a>
c0de45b2:	6879      	ldr	r1, [r7, #4]
c0de45b4:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de45b6:	4622      	mov	r2, r4
c0de45b8:	f007 fd6c 	bl	c0dec094 <cx_mont_from_montgomery>
c0de45bc:	b928      	cbnz	r0, c0de45ca <tEdwards_export+0x3a>
c0de45be:	682a      	ldr	r2, [r5, #0]
c0de45c0:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de45c2:	4631      	mov	r1, r6
c0de45c4:	f007 fcf4 	bl	c0debfb0 <cx_bn_export>
c0de45c8:	b108      	cbz	r0, c0de45ce <tEdwards_export+0x3e>
c0de45ca:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de45ce:	682a      	ldr	r2, [r5, #0]
c0de45d0:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de45d2:	4641      	mov	r1, r8
c0de45d4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de45d8:	f007 bcea 	b.w	c0debfb0 <cx_bn_export>

c0de45dc <tEdwards_normalize>:
c0de45dc:	b570      	push	{r4, r5, r6, lr}
c0de45de:	4605      	mov	r5, r0
c0de45e0:	460c      	mov	r4, r1
c0de45e2:	6889      	ldr	r1, [r1, #8]
c0de45e4:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de45e6:	f105 0620 	add.w	r6, r5, #32
c0de45ea:	4632      	mov	r2, r6
c0de45ec:	f007 fd6a 	bl	c0dec0c4 <cx_mont_invert_nprime>
c0de45f0:	b9d0      	cbnz	r0, c0de4628 <tEdwards_normalize+0x4c>
c0de45f2:	6822      	ldr	r2, [r4, #0]
c0de45f4:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de45f8:	f000 f8d2 	bl	c0de47a0 <OUTLINED_FUNCTION_0>
c0de45fc:	b9a0      	cbnz	r0, c0de4628 <tEdwards_normalize+0x4c>
c0de45fe:	6862      	ldr	r2, [r4, #4]
c0de4600:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de4602:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de4604:	f000 f8cc 	bl	c0de47a0 <OUTLINED_FUNCTION_0>
c0de4608:	b970      	cbnz	r0, c0de4628 <tEdwards_normalize+0x4c>
c0de460a:	68a2      	ldr	r2, [r4, #8]
c0de460c:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de460e:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de4610:	f000 f8c6 	bl	c0de47a0 <OUTLINED_FUNCTION_0>
c0de4614:	b940      	cbnz	r0, c0de4628 <tEdwards_normalize+0x4c>
c0de4616:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de4618:	6820      	ldr	r0, [r4, #0]
c0de461a:	f007 fcb5 	bl	c0debf88 <cx_bn_copy>
c0de461e:	b918      	cbnz	r0, c0de4628 <tEdwards_normalize+0x4c>
c0de4620:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de4622:	f000 f8d2 	bl	c0de47ca <OUTLINED_FUNCTION_5>
c0de4626:	b100      	cbz	r0, c0de462a <tEdwards_normalize+0x4e>
c0de4628:	bd70      	pop	{r4, r5, r6, pc}
c0de462a:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de462c:	68a0      	ldr	r0, [r4, #8]
c0de462e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de4632:	f007 bca9 	b.w	c0debf88 <cx_bn_copy>

c0de4636 <tEdwards_copy>:
c0de4636:	b5b0      	push	{r4, r5, r7, lr}
c0de4638:	460c      	mov	r4, r1
c0de463a:	4605      	mov	r5, r0
c0de463c:	6801      	ldr	r1, [r0, #0]
c0de463e:	6820      	ldr	r0, [r4, #0]
c0de4640:	f007 fca2 	bl	c0debf88 <cx_bn_copy>
c0de4644:	b918      	cbnz	r0, c0de464e <tEdwards_copy+0x18>
c0de4646:	6869      	ldr	r1, [r5, #4]
c0de4648:	f000 f8bf 	bl	c0de47ca <OUTLINED_FUNCTION_5>
c0de464c:	b100      	cbz	r0, c0de4650 <tEdwards_copy+0x1a>
c0de464e:	bdb0      	pop	{r4, r5, r7, pc}
c0de4650:	68a9      	ldr	r1, [r5, #8]
c0de4652:	68a0      	ldr	r0, [r4, #8]
c0de4654:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de4658:	f007 bc96 	b.w	c0debf88 <cx_bn_copy>

c0de465c <tEdwards_alloc_init>:
c0de465c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de465e:	460e      	mov	r6, r1
c0de4660:	6801      	ldr	r1, [r0, #0]
c0de4662:	4607      	mov	r7, r0
c0de4664:	4618      	mov	r0, r3
c0de4666:	461c      	mov	r4, r3
c0de4668:	4615      	mov	r5, r2
c0de466a:	f007 fc63 	bl	c0debf34 <cx_bn_alloc>
c0de466e:	b950      	cbnz	r0, c0de4686 <tEdwards_alloc_init+0x2a>
c0de4670:	6839      	ldr	r1, [r7, #0]
c0de4672:	1d20      	adds	r0, r4, #4
c0de4674:	f007 fc5e 	bl	c0debf34 <cx_bn_alloc>
c0de4678:	b928      	cbnz	r0, c0de4686 <tEdwards_alloc_init+0x2a>
c0de467a:	6839      	ldr	r1, [r7, #0]
c0de467c:	f104 0008 	add.w	r0, r4, #8
c0de4680:	f007 fc58 	bl	c0debf34 <cx_bn_alloc>
c0de4684:	b100      	cbz	r0, c0de4688 <tEdwards_alloc_init+0x2c>
c0de4686:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de4688:	4638      	mov	r0, r7
c0de468a:	4631      	mov	r1, r6
c0de468c:	462a      	mov	r2, r5
c0de468e:	4623      	mov	r3, r4
c0de4690:	b001      	add	sp, #4
c0de4692:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de4696:	f7ff bf3c 	b.w	c0de4512 <tEdwards_init>

c0de469a <tEdwards_scalarMul_bn>:
c0de469a:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de469e:	4607      	mov	r7, r0
c0de46a0:	2000      	movs	r0, #0
c0de46a2:	4688      	mov	r8, r1
c0de46a4:	4615      	mov	r5, r2
c0de46a6:	2100      	movs	r1, #0
c0de46a8:	469b      	mov	fp, r3
c0de46aa:	9003      	str	r0, [sp, #12]
c0de46ac:	f88d 000b 	strb.w	r0, [sp, #11]
c0de46b0:	6810      	ldr	r0, [r2, #0]
c0de46b2:	aa03      	add	r2, sp, #12
c0de46b4:	f007 fc94 	bl	c0debfe0 <cx_bn_cmp_u32>
c0de46b8:	bb38      	cbnz	r0, c0de470a <tEdwards_scalarMul_bn+0x70>
c0de46ba:	9803      	ldr	r0, [sp, #12]
c0de46bc:	b1d0      	cbz	r0, c0de46f4 <tEdwards_scalarMul_bn+0x5a>
c0de46be:	6828      	ldr	r0, [r5, #0]
c0de46c0:	a901      	add	r1, sp, #4
c0de46c2:	f007 fc57 	bl	c0debf74 <cx_bn_nbytes>
c0de46c6:	bb00      	cbnz	r0, c0de470a <tEdwards_scalarMul_bn+0x70>
c0de46c8:	2002      	movs	r0, #2
c0de46ca:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de46ce:	f10d 040b 	add.w	r4, sp, #11
c0de46d2:	6538      	str	r0, [r7, #80]	@ 0x50
c0de46d4:	9801      	ldr	r0, [sp, #4]
c0de46d6:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de46da:	2000      	movs	r0, #0
c0de46dc:	2801      	cmp	r0, #1
c0de46de:	d00f      	beq.n	c0de4700 <tEdwards_scalarMul_bn+0x66>
c0de46e0:	6828      	ldr	r0, [r5, #0]
c0de46e2:	4631      	mov	r1, r6
c0de46e4:	4622      	mov	r2, r4
c0de46e6:	f007 fc87 	bl	c0debff8 <cx_bn_tst_bit>
c0de46ea:	b970      	cbnz	r0, c0de470a <tEdwards_scalarMul_bn+0x70>
c0de46ec:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de46f0:	3e01      	subs	r6, #1
c0de46f2:	e7f3      	b.n	c0de46dc <tEdwards_scalarMul_bn+0x42>
c0de46f4:	4638      	mov	r0, r7
c0de46f6:	4659      	mov	r1, fp
c0de46f8:	f7ff fef8 	bl	c0de44ec <tEdwards_SetNeutral>
c0de46fc:	b928      	cbnz	r0, c0de470a <tEdwards_scalarMul_bn+0x70>
c0de46fe:	e7de      	b.n	c0de46be <tEdwards_scalarMul_bn+0x24>
c0de4700:	4640      	mov	r0, r8
c0de4702:	4659      	mov	r1, fp
c0de4704:	f7ff ff97 	bl	c0de4636 <tEdwards_copy>
c0de4708:	b110      	cbz	r0, c0de4710 <tEdwards_scalarMul_bn+0x76>
c0de470a:	b004      	add	sp, #16
c0de470c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4710:	2001      	movs	r0, #1
c0de4712:	f10d 0a0b 	add.w	sl, sp, #11
c0de4716:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de471a:	2e00      	cmp	r6, #0
c0de471c:	d420      	bmi.n	c0de4760 <tEdwards_scalarMul_bn+0xc6>
c0de471e:	4638      	mov	r0, r7
c0de4720:	4659      	mov	r1, fp
c0de4722:	465a      	mov	r2, fp
c0de4724:	f7ff fc9b 	bl	c0de405e <tEdwards_double>
c0de4728:	2800      	cmp	r0, #0
c0de472a:	d1ee      	bne.n	c0de470a <tEdwards_scalarMul_bn+0x70>
c0de472c:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de472e:	4631      	mov	r1, r6
c0de4730:	4652      	mov	r2, sl
c0de4732:	0040      	lsls	r0, r0, #1
c0de4734:	6538      	str	r0, [r7, #80]	@ 0x50
c0de4736:	6828      	ldr	r0, [r5, #0]
c0de4738:	f007 fc5e 	bl	c0debff8 <cx_bn_tst_bit>
c0de473c:	2800      	cmp	r0, #0
c0de473e:	d1e4      	bne.n	c0de470a <tEdwards_scalarMul_bn+0x70>
c0de4740:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de4744:	b150      	cbz	r0, c0de475c <tEdwards_scalarMul_bn+0xc2>
c0de4746:	4638      	mov	r0, r7
c0de4748:	4659      	mov	r1, fp
c0de474a:	4642      	mov	r2, r8
c0de474c:	465b      	mov	r3, fp
c0de474e:	f7ff fcf1 	bl	c0de4134 <tEdwards_add>
c0de4752:	2800      	cmp	r0, #0
c0de4754:	d1d9      	bne.n	c0de470a <tEdwards_scalarMul_bn+0x70>
c0de4756:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de4758:	3001      	adds	r0, #1
c0de475a:	6538      	str	r0, [r7, #80]	@ 0x50
c0de475c:	3e01      	subs	r6, #1
c0de475e:	e7dc      	b.n	c0de471a <tEdwards_scalarMul_bn+0x80>
c0de4760:	2000      	movs	r0, #0
c0de4762:	e7d2      	b.n	c0de470a <tEdwards_scalarMul_bn+0x70>

c0de4764 <tEdwards_scalarMul>:
c0de4764:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de4766:	460c      	mov	r4, r1
c0de4768:	6801      	ldr	r1, [r0, #0]
c0de476a:	4299      	cmp	r1, r3
c0de476c:	bf3c      	itt	cc
c0de476e:	f648 3099 	movwcc	r0, #35737	@ 0x8b99
c0de4772:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de4774:	4605      	mov	r5, r0
c0de4776:	20ca      	movs	r0, #202	@ 0xca
c0de4778:	6528      	str	r0, [r5, #80]	@ 0x50
c0de477a:	a801      	add	r0, sp, #4
c0de477c:	f007 fbe4 	bl	c0debf48 <cx_bn_alloc_init>
c0de4780:	b100      	cbz	r0, c0de4784 <tEdwards_scalarMul+0x20>
c0de4782:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de4784:	20b3      	movs	r0, #179	@ 0xb3
c0de4786:	9b06      	ldr	r3, [sp, #24]
c0de4788:	4621      	mov	r1, r4
c0de478a:	6528      	str	r0, [r5, #80]	@ 0x50
c0de478c:	aa01      	add	r2, sp, #4
c0de478e:	4628      	mov	r0, r5
c0de4790:	f7ff ff83 	bl	c0de469a <tEdwards_scalarMul_bn>
c0de4794:	2800      	cmp	r0, #0
c0de4796:	d1f4      	bne.n	c0de4782 <tEdwards_scalarMul+0x1e>
c0de4798:	a801      	add	r0, sp, #4
c0de479a:	f007 fbe1 	bl	c0debf60 <cx_bn_destroy>
c0de479e:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de47a0 <OUTLINED_FUNCTION_0>:
c0de47a0:	4633      	mov	r3, r6
c0de47a2:	f007 bc83 	b.w	c0dec0ac <cx_mont_mul>

c0de47a6 <OUTLINED_FUNCTION_1>:
c0de47a6:	462b      	mov	r3, r5
c0de47a8:	f007 bc80 	b.w	c0dec0ac <cx_mont_mul>

c0de47ac <OUTLINED_FUNCTION_2>:
c0de47ac:	4633      	mov	r3, r6
c0de47ae:	460a      	mov	r2, r1
c0de47b0:	f007 bc7c 	b.w	c0dec0ac <cx_mont_mul>

c0de47b4 <OUTLINED_FUNCTION_3>:
c0de47b4:	6828      	ldr	r0, [r5, #0]
c0de47b6:	463a      	mov	r2, r7
c0de47b8:	4601      	mov	r1, r0
c0de47ba:	f007 bc5f 	b.w	c0dec07c <cx_mont_to_montgomery>

c0de47be <OUTLINED_FUNCTION_4>:
c0de47be:	460d      	mov	r5, r1
c0de47c0:	6801      	ldr	r1, [r0, #0]
c0de47c2:	4604      	mov	r4, r0
c0de47c4:	4628      	mov	r0, r5
c0de47c6:	f007 bbb5 	b.w	c0debf34 <cx_bn_alloc>

c0de47ca <OUTLINED_FUNCTION_5>:
c0de47ca:	6860      	ldr	r0, [r4, #4]
c0de47cc:	f007 bbdc 	b.w	c0debf88 <cx_bn_copy>

c0de47d0 <grain_lfsr_advance>:
c0de47d0:	b5b0      	push	{r4, r5, r7, lr}
c0de47d2:	68c2      	ldr	r2, [r0, #12]
c0de47d4:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de47d8:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de47dc:	ea4f 0234 	mov.w	r2, r4, rrx
c0de47e0:	07e4      	lsls	r4, r4, #31
c0de47e2:	60c5      	str	r5, [r0, #12]
c0de47e4:	07dd      	lsls	r5, r3, #31
c0de47e6:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de47ea:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de47ee:	6044      	str	r4, [r0, #4]
c0de47f0:	4c15      	ldr	r4, [pc, #84]	@ (c0de4848 <grain_lfsr_advance+0x78>)
c0de47f2:	6005      	str	r5, [r0, #0]
c0de47f4:	4021      	ands	r1, r4
c0de47f6:	4c15      	ldr	r4, [pc, #84]	@ (c0de484c <grain_lfsr_advance+0x7c>)
c0de47f8:	4023      	ands	r3, r4
c0de47fa:	4419      	add	r1, r3
c0de47fc:	0c0c      	lsrs	r4, r1, #16
c0de47fe:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de4802:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de4806:	4421      	add	r1, r4
c0de4808:	0a0c      	lsrs	r4, r1, #8
c0de480a:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de480e:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de4812:	4061      	eors	r1, r4
c0de4814:	090c      	lsrs	r4, r1, #4
c0de4816:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de481a:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de481e:	4061      	eors	r1, r4
c0de4820:	088c      	lsrs	r4, r1, #2
c0de4822:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de4826:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de482a:	4061      	eors	r1, r4
c0de482c:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de4830:	ea4f 0331 	mov.w	r3, r1, rrx
c0de4834:	4059      	eors	r1, r3
c0de4836:	f001 0101 	and.w	r1, r1, #1
c0de483a:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de483e:	6082      	str	r2, [r0, #8]
c0de4840:	4608      	mov	r0, r1
c0de4842:	2100      	movs	r1, #0
c0de4844:	bdb0      	pop	{r4, r5, r7, pc}
c0de4846:	bf00      	nop
c0de4848:	00802001 	.word	0x00802001
c0de484c:	40080040 	.word	0x40080040

c0de4850 <next64_graingen>:
c0de4850:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4854:	460c      	mov	r4, r1
c0de4856:	4605      	mov	r5, r0
c0de4858:	f04f 0a00 	mov.w	sl, #0
c0de485c:	f04f 0800 	mov.w	r8, #0
c0de4860:	2700      	movs	r7, #0
c0de4862:	42a7      	cmp	r7, r4
c0de4864:	d215      	bcs.n	c0de4892 <next64_graingen+0x42>
c0de4866:	4628      	mov	r0, r5
c0de4868:	f7ff ffb2 	bl	c0de47d0 <grain_lfsr_advance>
c0de486c:	4606      	mov	r6, r0
c0de486e:	4628      	mov	r0, r5
c0de4870:	f7ff ffae 	bl	c0de47d0 <grain_lfsr_advance>
c0de4874:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de4878:	0781      	lsls	r1, r0, #30
c0de487a:	d5f2      	bpl.n	c0de4862 <next64_graingen+0x12>
c0de487c:	f000 0001 	and.w	r0, r0, #1
c0de4880:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de4884:	3701      	adds	r7, #1
c0de4886:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de488a:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de488e:	4682      	mov	sl, r0
c0de4890:	e7e7      	b.n	c0de4862 <next64_graingen+0x12>
c0de4892:	4650      	mov	r0, sl
c0de4894:	4641      	mov	r1, r8
c0de4896:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de489c <init_generator>:
c0de489c:	b5b0      	push	{r4, r5, r7, lr}
c0de489e:	4a09      	ldr	r2, [pc, #36]	@ (c0de48c4 <init_generator+0x28>)
c0de48a0:	4b09      	ldr	r3, [pc, #36]	@ (c0de48c8 <init_generator+0x2c>)
c0de48a2:	4604      	mov	r4, r0
c0de48a4:	25a0      	movs	r5, #160	@ 0xa0
c0de48a6:	2000      	movs	r0, #0
c0de48a8:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de48ac:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de48b0:	e9c4 3200 	strd	r3, r2, [r4]
c0de48b4:	b125      	cbz	r5, c0de48c0 <init_generator+0x24>
c0de48b6:	4620      	mov	r0, r4
c0de48b8:	f7ff ff8a 	bl	c0de47d0 <grain_lfsr_advance>
c0de48bc:	3d01      	subs	r5, #1
c0de48be:	e7f9      	b.n	c0de48b4 <init_generator+0x18>
c0de48c0:	bdb0      	pop	{r4, r5, r7, pc}
c0de48c2:	bf00      	nop
c0de48c4:	fffcf010 	.word	0xfffcf010
c0de48c8:	1801fc02 	.word	0x1801fc02

c0de48cc <gen_integer>:
c0de48cc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de48d0:	4f20      	ldr	r7, [pc, #128]	@ (c0de4954 <gen_integer+0x88>)
c0de48d2:	4e22      	ldr	r6, [pc, #136]	@ (c0de495c <gen_integer+0x90>)
c0de48d4:	4605      	mov	r5, r0
c0de48d6:	460c      	mov	r4, r1
c0de48d8:	2000      	movs	r0, #0
c0de48da:	46b8      	mov	r8, r7
c0de48dc:	4f1e      	ldr	r7, [pc, #120]	@ (c0de4958 <gen_integer+0x8c>)
c0de48de:	447e      	add	r6, pc
c0de48e0:	b9f8      	cbnz	r0, c0de4922 <gen_integer+0x56>
c0de48e2:	4628      	mov	r0, r5
c0de48e4:	213e      	movs	r1, #62	@ 0x3e
c0de48e6:	47b0      	blx	r6
c0de48e8:	e9c4 0100 	strd	r0, r1, [r4]
c0de48ec:	4628      	mov	r0, r5
c0de48ee:	2140      	movs	r1, #64	@ 0x40
c0de48f0:	47b0      	blx	r6
c0de48f2:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de48f6:	4628      	mov	r0, r5
c0de48f8:	2140      	movs	r1, #64	@ 0x40
c0de48fa:	47b0      	blx	r6
c0de48fc:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de4900:	4628      	mov	r0, r5
c0de4902:	2140      	movs	r1, #64	@ 0x40
c0de4904:	47b0      	blx	r6
c0de4906:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de490a:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de490e:	463a      	mov	r2, r7
c0de4910:	1bc0      	subs	r0, r0, r7
c0de4912:	4640      	mov	r0, r8
c0de4914:	eb71 0008 	sbcs.w	r0, r1, r8
c0de4918:	f04f 0000 	mov.w	r0, #0
c0de491c:	bf38      	it	cc
c0de491e:	2001      	movcc	r0, #1
c0de4920:	e7de      	b.n	c0de48e0 <gen_integer+0x14>
c0de4922:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de4926:	4d0e      	ldr	r5, [pc, #56]	@ (c0de4960 <gen_integer+0x94>)
c0de4928:	447d      	add	r5, pc
c0de492a:	47a8      	blx	r5
c0de492c:	e9c4 0100 	strd	r0, r1, [r4]
c0de4930:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de4934:	47a8      	blx	r5
c0de4936:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de493a:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de493e:	47a8      	blx	r5
c0de4940:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de4944:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de4948:	47a8      	blx	r5
c0de494a:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de494e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de4952:	bf00      	nop
c0de4954:	305a4b4e 	.word	0x305a4b4e
c0de4958:	4f582122 	.word	0x4f582122
c0de495c:	ffffff6f 	.word	0xffffff6f
c0de4960:	00000039 	.word	0x00000039

c0de4964 <rev64>:
c0de4964:	ba0a      	rev	r2, r1
c0de4966:	ba01      	rev	r1, r0
c0de4968:	4610      	mov	r0, r2
c0de496a:	4770      	bx	lr

c0de496c <Poseidon_getNext_RC>:
c0de496c:	3090      	adds	r0, #144	@ 0x90
c0de496e:	f7ff bfad 	b.w	c0de48cc <gen_integer>

c0de4972 <Poseidon_alloc_init>:
c0de4972:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de4974:	4604      	mov	r4, r0
c0de4976:	3090      	adds	r0, #144	@ 0x90
c0de4978:	461d      	mov	r5, r3
c0de497a:	4616      	mov	r6, r2
c0de497c:	460f      	mov	r7, r1
c0de497e:	f7ff ff8d 	bl	c0de489c <init_generator>
c0de4982:	2000      	movs	r0, #0
c0de4984:	e9c4 7503 	strd	r7, r5, [r4, #12]
c0de4988:	4621      	mov	r1, r4
c0de498a:	f8c4 00a0 	str.w	r0, [r4, #160]	@ 0xa0
c0de498e:	1c70      	adds	r0, r6, #1
c0de4990:	e9c4 6001 	strd	r6, r0, [r4, #4]
c0de4994:	6828      	ldr	r0, [r5, #0]
c0de4996:	f007 faed 	bl	c0debf74 <cx_bn_nbytes>
c0de499a:	68a0      	ldr	r0, [r4, #8]
c0de499c:	f104 0514 	add.w	r5, r4, #20
c0de49a0:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de49a4:	3601      	adds	r6, #1
c0de49a6:	4286      	cmp	r6, r0
c0de49a8:	bf28      	it	cs
c0de49aa:	bdf8      	popcs	{r3, r4, r5, r6, r7, pc}
c0de49ac:	6821      	ldr	r1, [r4, #0]
c0de49ae:	4628      	mov	r0, r5
c0de49b0:	f007 fac0 	bl	c0debf34 <cx_bn_alloc>
c0de49b4:	68a0      	ldr	r0, [r4, #8]
c0de49b6:	3504      	adds	r5, #4
c0de49b8:	4286      	cmp	r6, r0
c0de49ba:	d2f3      	bcs.n	c0de49a4 <Poseidon_alloc_init+0x32>
c0de49bc:	e7fe      	b.n	c0de49bc <Poseidon_alloc_init+0x4a>
	...

c0de49c0 <nbgl_buttonsHandler>:
c0de49c0:	b5b0      	push	{r4, r5, r7, lr}
c0de49c2:	4930      	ldr	r1, [pc, #192]	@ (c0de4a84 <nbgl_buttonsHandler+0xc4>)
c0de49c4:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de49c8:	4282      	cmp	r2, r0
c0de49ca:	d108      	bne.n	c0de49de <nbgl_buttonsHandler+0x1e>
c0de49cc:	2800      	cmp	r0, #0
c0de49ce:	d04b      	beq.n	c0de4a68 <nbgl_buttonsHandler+0xa8>
c0de49d0:	eb09 0301 	add.w	r3, r9, r1
c0de49d4:	685a      	ldr	r2, [r3, #4]
c0de49d6:	3201      	adds	r2, #1
c0de49d8:	605a      	str	r2, [r3, #4]
c0de49da:	4603      	mov	r3, r0
c0de49dc:	e006      	b.n	c0de49ec <nbgl_buttonsHandler+0x2c>
c0de49de:	ea42 0400 	orr.w	r4, r2, r0
c0de49e2:	eb09 0201 	add.w	r2, r9, r1
c0de49e6:	6852      	ldr	r2, [r2, #4]
c0de49e8:	b120      	cbz	r0, c0de49f4 <nbgl_buttonsHandler+0x34>
c0de49ea:	4623      	mov	r3, r4
c0de49ec:	461c      	mov	r4, r3
c0de49ee:	f809 3001 	strb.w	r3, [r9, r1]
c0de49f2:	e007      	b.n	c0de4a04 <nbgl_buttonsHandler+0x44>
c0de49f4:	2300      	movs	r3, #0
c0de49f6:	eb09 0501 	add.w	r5, r9, r1
c0de49fa:	f064 047f 	orn	r4, r4, #127	@ 0x7f
c0de49fe:	f809 3001 	strb.w	r3, [r9, r1]
c0de4a02:	606b      	str	r3, [r5, #4]
c0de4a04:	4283      	cmp	r3, r0
c0de4a06:	bf1e      	ittt	ne
c0de4a08:	eb09 0001 	addne.w	r0, r9, r1
c0de4a0c:	2100      	movne	r1, #0
c0de4a0e:	6041      	strne	r1, [r0, #4]
c0de4a10:	2a08      	cmp	r2, #8
c0de4a12:	d30a      	bcc.n	c0de4a2a <nbgl_buttonsHandler+0x6a>
c0de4a14:	2003      	movs	r0, #3
c0de4a16:	fbb2 f0f0 	udiv	r0, r2, r0
c0de4a1a:	eb00 0040 	add.w	r0, r0, r0, lsl #1
c0de4a1e:	1a10      	subs	r0, r2, r0
c0de4a20:	bf08      	it	eq
c0de4a22:	f044 0440 	orreq.w	r4, r4, #64	@ 0x40
c0de4a26:	f004 047f 	and.w	r4, r4, #127	@ 0x7f
c0de4a2a:	f002 fe9f 	bl	c0de776c <nbgl_screenGetTop>
c0de4a2e:	b1d8      	cbz	r0, c0de4a68 <nbgl_buttonsHandler+0xa8>
c0de4a30:	4601      	mov	r1, r0
c0de4a32:	f811 2f32 	ldrb.w	r2, [r1, #50]!
c0de4a36:	784b      	ldrb	r3, [r1, #1]
c0de4a38:	788d      	ldrb	r5, [r1, #2]
c0de4a3a:	78c9      	ldrb	r1, [r1, #3]
c0de4a3c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4a40:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de4a44:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
c0de4a48:	b172      	cbz	r2, c0de4a68 <nbgl_buttonsHandler+0xa8>
c0de4a4a:	b2e1      	uxtb	r1, r4
c0de4a4c:	2983      	cmp	r1, #131	@ 0x83
c0de4a4e:	d00c      	beq.n	c0de4a6a <nbgl_buttonsHandler+0xaa>
c0de4a50:	2941      	cmp	r1, #65	@ 0x41
c0de4a52:	d00c      	beq.n	c0de4a6e <nbgl_buttonsHandler+0xae>
c0de4a54:	2942      	cmp	r1, #66	@ 0x42
c0de4a56:	d00c      	beq.n	c0de4a72 <nbgl_buttonsHandler+0xb2>
c0de4a58:	2981      	cmp	r1, #129	@ 0x81
c0de4a5a:	d00c      	beq.n	c0de4a76 <nbgl_buttonsHandler+0xb6>
c0de4a5c:	2982      	cmp	r1, #130	@ 0x82
c0de4a5e:	d00c      	beq.n	c0de4a7a <nbgl_buttonsHandler+0xba>
c0de4a60:	2903      	cmp	r1, #3
c0de4a62:	d101      	bne.n	c0de4a68 <nbgl_buttonsHandler+0xa8>
c0de4a64:	2105      	movs	r1, #5
c0de4a66:	e009      	b.n	c0de4a7c <nbgl_buttonsHandler+0xbc>
c0de4a68:	bdb0      	pop	{r4, r5, r7, pc}
c0de4a6a:	2104      	movs	r1, #4
c0de4a6c:	e006      	b.n	c0de4a7c <nbgl_buttonsHandler+0xbc>
c0de4a6e:	2102      	movs	r1, #2
c0de4a70:	e004      	b.n	c0de4a7c <nbgl_buttonsHandler+0xbc>
c0de4a72:	2103      	movs	r1, #3
c0de4a74:	e002      	b.n	c0de4a7c <nbgl_buttonsHandler+0xbc>
c0de4a76:	2100      	movs	r1, #0
c0de4a78:	e000      	b.n	c0de4a7c <nbgl_buttonsHandler+0xbc>
c0de4a7a:	2101      	movs	r1, #1
c0de4a7c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de4a80:	4710      	bx	r2
c0de4a82:	bf00      	nop
c0de4a84:	00001498 	.word	0x00001498

c0de4a88 <nbgl_drawRoundedRect>:
c0de4a88:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4a8c:	b08a      	sub	sp, #40	@ 0x28
c0de4a8e:	468b      	mov	fp, r1
c0de4a90:	4606      	mov	r6, r0
c0de4a92:	2901      	cmp	r1, #1
c0de4a94:	9206      	str	r2, [sp, #24]
c0de4a96:	d804      	bhi.n	c0de4aa2 <nbgl_drawRoundedRect+0x1a>
c0de4a98:	4872      	ldr	r0, [pc, #456]	@ (c0de4c64 <nbgl_drawRoundedRect+0x1dc>)
c0de4a9a:	4478      	add	r0, pc
c0de4a9c:	f810 700b 	ldrb.w	r7, [r0, fp]
c0de4aa0:	e004      	b.n	c0de4aac <nbgl_drawRoundedRect+0x24>
c0de4aa2:	f1bb 0fff 	cmp.w	fp, #255	@ 0xff
c0de4aa6:	f040 80da 	bne.w	c0de4c5e <nbgl_drawRoundedRect+0x1d6>
c0de4aaa:	2700      	movs	r7, #0
c0de4aac:	9806      	ldr	r0, [sp, #24]
c0de4aae:	7871      	ldrb	r1, [r6, #1]
c0de4ab0:	78b2      	ldrb	r2, [r6, #2]
c0de4ab2:	78f3      	ldrb	r3, [r6, #3]
c0de4ab4:	f88d 0024 	strb.w	r0, [sp, #36]	@ 0x24
c0de4ab8:	7830      	ldrb	r0, [r6, #0]
c0de4aba:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4abe:	79b3      	ldrb	r3, [r6, #6]
c0de4ac0:	f8ad 201e 	strh.w	r2, [sp, #30]
c0de4ac4:	79f2      	ldrb	r2, [r6, #7]
c0de4ac6:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4aca:	7931      	ldrb	r1, [r6, #4]
c0de4acc:	4438      	add	r0, r7
c0de4ace:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4ad2:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de4ad6:	7970      	ldrb	r0, [r6, #5]
c0de4ad8:	f8ad 2022 	strh.w	r2, [sp, #34]	@ 0x22
c0de4adc:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4ae0:	eba0 0047 	sub.w	r0, r0, r7, lsl #1
c0de4ae4:	f8ad 0020 	strh.w	r0, [sp, #32]
c0de4ae8:	a807      	add	r0, sp, #28
c0de4aea:	f007 f9b3 	bl	c0debe54 <nbgl_frontDrawRect>
c0de4aee:	f1bb 0fff 	cmp.w	fp, #255	@ 0xff
c0de4af2:	f000 80b4 	beq.w	c0de4c5e <nbgl_drawRoundedRect+0x1d6>
c0de4af6:	7830      	ldrb	r0, [r6, #0]
c0de4af8:	7871      	ldrb	r1, [r6, #1]
c0de4afa:	4635      	mov	r5, r6
c0de4afc:	46b0      	mov	r8, r6
c0de4afe:	007c      	lsls	r4, r7, #1
c0de4b00:	f10d 0a1c 	add.w	sl, sp, #28
c0de4b04:	f8ad 7020 	strh.w	r7, [sp, #32]
c0de4b08:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4b0c:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de4b10:	f815 0f02 	ldrb.w	r0, [r5, #2]!
c0de4b14:	7869      	ldrb	r1, [r5, #1]
c0de4b16:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4b1a:	4438      	add	r0, r7
c0de4b1c:	f8ad 001e 	strh.w	r0, [sp, #30]
c0de4b20:	f818 0f06 	ldrb.w	r0, [r8, #6]!
c0de4b24:	f898 1001 	ldrb.w	r1, [r8, #1]
c0de4b28:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4b2c:	1b00      	subs	r0, r0, r4
c0de4b2e:	f8ad 0022 	strh.w	r0, [sp, #34]	@ 0x22
c0de4b32:	4650      	mov	r0, sl
c0de4b34:	f007 f98e 	bl	c0debe54 <nbgl_frontDrawRect>
c0de4b38:	7828      	ldrb	r0, [r5, #0]
c0de4b3a:	7869      	ldrb	r1, [r5, #1]
c0de4b3c:	7932      	ldrb	r2, [r6, #4]
c0de4b3e:	7973      	ldrb	r3, [r6, #5]
c0de4b40:	f8ad 7020 	strh.w	r7, [sp, #32]
c0de4b44:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4b48:	f898 1001 	ldrb.w	r1, [r8, #1]
c0de4b4c:	4438      	add	r0, r7
c0de4b4e:	f8ad 001e 	strh.w	r0, [sp, #30]
c0de4b52:	f898 0000 	ldrb.w	r0, [r8]
c0de4b56:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4b5a:	7871      	ldrb	r1, [r6, #1]
c0de4b5c:	1b00      	subs	r0, r0, r4
c0de4b5e:	f8ad 0022 	strh.w	r0, [sp, #34]	@ 0x22
c0de4b62:	f000 fb5f 	bl	c0de5224 <OUTLINED_FUNCTION_1>
c0de4b66:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de4b6a:	4650      	mov	r0, sl
c0de4b6c:	f007 f972 	bl	c0debe54 <nbgl_frontDrawRect>
c0de4b70:	f1bb 0f00 	cmp.w	fp, #0
c0de4b74:	d073      	beq.n	c0de4c5e <nbgl_drawRoundedRect+0x1d6>
c0de4b76:	46b2      	mov	sl, r6
c0de4b78:	7a31      	ldrb	r1, [r6, #8]
c0de4b7a:	f8dd 8018 	ldr.w	r8, [sp, #24]
c0de4b7e:	f996 0001 	ldrsb.w	r0, [r6, #1]
c0de4b82:	7833      	ldrb	r3, [r6, #0]
c0de4b84:	f81a cf02 	ldrb.w	ip, [sl, #2]!
c0de4b88:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de4b8c:	2301      	movs	r3, #1
c0de4b8e:	f99a 2001 	ldrsb.w	r2, [sl, #1]
c0de4b92:	9102      	str	r1, [sp, #8]
c0de4b94:	e9cd 8800 	strd	r8, r8, [sp]
c0de4b98:	4438      	add	r0, r7
c0de4b9a:	4c33      	ldr	r4, [pc, #204]	@ (c0de4c68 <nbgl_drawRoundedRect+0x1e0>)
c0de4b9c:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de4ba0:	465a      	mov	r2, fp
c0de4ba2:	4439      	add	r1, r7
c0de4ba4:	447c      	add	r4, pc
c0de4ba6:	47a0      	blx	r4
c0de4ba8:	4630      	mov	r0, r6
c0de4baa:	f996 c001 	ldrsb.w	ip, [r6, #1]
c0de4bae:	7832      	ldrb	r2, [r6, #0]
c0de4bb0:	f99a 5001 	ldrsb.w	r5, [sl, #1]
c0de4bb4:	f89a e000 	ldrb.w	lr, [sl]
c0de4bb8:	9405      	str	r4, [sp, #20]
c0de4bba:	f810 3f04 	ldrb.w	r3, [r0, #4]!
c0de4bbe:	9004      	str	r0, [sp, #16]
c0de4bc0:	7841      	ldrb	r1, [r0, #1]
c0de4bc2:	7a30      	ldrb	r0, [r6, #8]
c0de4bc4:	e9cd 8800 	strd	r8, r8, [sp]
c0de4bc8:	9002      	str	r0, [sp, #8]
c0de4bca:	ea43 2001 	orr.w	r0, r3, r1, lsl #8
c0de4bce:	ea42 210c 	orr.w	r1, r2, ip, lsl #8
c0de4bd2:	465a      	mov	r2, fp
c0de4bd4:	2300      	movs	r3, #0
c0de4bd6:	1bc9      	subs	r1, r1, r7
c0de4bd8:	4408      	add	r0, r1
c0de4bda:	ea4e 2105 	orr.w	r1, lr, r5, lsl #8
c0de4bde:	4439      	add	r1, r7
c0de4be0:	47a0      	blx	r4
c0de4be2:	4634      	mov	r4, r6
c0de4be4:	f99a e001 	ldrsb.w	lr, [sl, #1]
c0de4be8:	f89a c000 	ldrb.w	ip, [sl]
c0de4bec:	7a31      	ldrb	r1, [r6, #8]
c0de4bee:	f996 5001 	ldrsb.w	r5, [r6, #1]
c0de4bf2:	7832      	ldrb	r2, [r6, #0]
c0de4bf4:	f814 3f06 	ldrb.w	r3, [r4, #6]!
c0de4bf8:	7860      	ldrb	r0, [r4, #1]
c0de4bfa:	9102      	str	r1, [sp, #8]
c0de4bfc:	ea4c 210e 	orr.w	r1, ip, lr, lsl #8
c0de4c00:	e9cd 8800 	strd	r8, r8, [sp]
c0de4c04:	1bc9      	subs	r1, r1, r7
c0de4c06:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de4c0a:	2302      	movs	r3, #2
c0de4c0c:	4401      	add	r1, r0
c0de4c0e:	ea42 2005 	orr.w	r0, r2, r5, lsl #8
c0de4c12:	9d05      	ldr	r5, [sp, #20]
c0de4c14:	465a      	mov	r2, fp
c0de4c16:	4438      	add	r0, r7
c0de4c18:	47a8      	blx	r5
c0de4c1a:	9904      	ldr	r1, [sp, #16]
c0de4c1c:	7832      	ldrb	r2, [r6, #0]
c0de4c1e:	f894 c000 	ldrb.w	ip, [r4]
c0de4c22:	f894 e001 	ldrb.w	lr, [r4, #1]
c0de4c26:	f99a 3001 	ldrsb.w	r3, [sl, #1]
c0de4c2a:	f89a 4000 	ldrb.w	r4, [sl]
c0de4c2e:	7808      	ldrb	r0, [r1, #0]
c0de4c30:	784d      	ldrb	r5, [r1, #1]
c0de4c32:	f996 1001 	ldrsb.w	r1, [r6, #1]
c0de4c36:	7a36      	ldrb	r6, [r6, #8]
c0de4c38:	e9cd 8800 	strd	r8, r8, [sp]
c0de4c3c:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4c40:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de4c44:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de4c48:	9602      	str	r6, [sp, #8]
c0de4c4a:	1bc9      	subs	r1, r1, r7
c0de4c4c:	4408      	add	r0, r1
c0de4c4e:	ea44 2103 	orr.w	r1, r4, r3, lsl #8
c0de4c52:	9c05      	ldr	r4, [sp, #20]
c0de4c54:	2303      	movs	r3, #3
c0de4c56:	1bc9      	subs	r1, r1, r7
c0de4c58:	4411      	add	r1, r2
c0de4c5a:	465a      	mov	r2, fp
c0de4c5c:	47a0      	blx	r4
c0de4c5e:	b00a      	add	sp, #40	@ 0x28
c0de4c60:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4c64:	00009752 	.word	0x00009752
c0de4c68:	000000c5 	.word	0x000000c5

c0de4c6c <draw_circle_helper>:
c0de4c6c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de4c6e:	461c      	mov	r4, r3
c0de4c70:	2300      	movs	r3, #0
c0de4c72:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
c0de4c74:	2a01      	cmp	r2, #1
c0de4c76:	f88d 300d 	strb.w	r3, [sp, #13]
c0de4c7a:	9301      	str	r3, [sp, #4]
c0de4c7c:	f88d 500c 	strb.w	r5, [sp, #12]
c0de4c80:	d837      	bhi.n	c0de4cf2 <draw_circle_helper+0x86>
c0de4c82:	4e1d      	ldr	r6, [pc, #116]	@ (c0de4cf8 <draw_circle_helper+0x8c>)
c0de4c84:	e9dd 3508 	ldrd	r3, r5, [sp, #32]
c0de4c88:	447e      	add	r6, pc
c0de4c8a:	5cb2      	ldrb	r2, [r6, r2]
c0de4c8c:	f8ad 2008 	strh.w	r2, [sp, #8]
c0de4c90:	f8ad 200a 	strh.w	r2, [sp, #10]
c0de4c94:	b164      	cbz	r4, c0de4cb0 <draw_circle_helper+0x44>
c0de4c96:	2c01      	cmp	r4, #1
c0de4c98:	d014      	beq.n	c0de4cc4 <draw_circle_helper+0x58>
c0de4c9a:	2c02      	cmp	r4, #2
c0de4c9c:	d01b      	beq.n	c0de4cd6 <draw_circle_helper+0x6a>
c0de4c9e:	2c03      	cmp	r4, #3
c0de4ca0:	d128      	bne.n	c0de4cf4 <draw_circle_helper+0x88>
c0de4ca2:	f000 fac7 	bl	c0de5234 <OUTLINED_FUNCTION_2>
c0de4ca6:	4815      	ldr	r0, [pc, #84]	@ (c0de4cfc <draw_circle_helper+0x90>)
c0de4ca8:	4915      	ldr	r1, [pc, #84]	@ (c0de4d00 <draw_circle_helper+0x94>)
c0de4caa:	4478      	add	r0, pc
c0de4cac:	4479      	add	r1, pc
c0de4cae:	e019      	b.n	c0de4ce4 <draw_circle_helper+0x78>
c0de4cb0:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de4cb4:	1a88      	subs	r0, r1, r2
c0de4cb6:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de4cba:	4814      	ldr	r0, [pc, #80]	@ (c0de4d0c <draw_circle_helper+0xa0>)
c0de4cbc:	4914      	ldr	r1, [pc, #80]	@ (c0de4d10 <draw_circle_helper+0xa4>)
c0de4cbe:	4478      	add	r0, pc
c0de4cc0:	4479      	add	r1, pc
c0de4cc2:	e00f      	b.n	c0de4ce4 <draw_circle_helper+0x78>
c0de4cc4:	1a89      	subs	r1, r1, r2
c0de4cc6:	1a80      	subs	r0, r0, r2
c0de4cc8:	f000 fab4 	bl	c0de5234 <OUTLINED_FUNCTION_2>
c0de4ccc:	4811      	ldr	r0, [pc, #68]	@ (c0de4d14 <draw_circle_helper+0xa8>)
c0de4cce:	4912      	ldr	r1, [pc, #72]	@ (c0de4d18 <draw_circle_helper+0xac>)
c0de4cd0:	4478      	add	r0, pc
c0de4cd2:	4479      	add	r1, pc
c0de4cd4:	e006      	b.n	c0de4ce4 <draw_circle_helper+0x78>
c0de4cd6:	1a80      	subs	r0, r0, r2
c0de4cd8:	f000 faac 	bl	c0de5234 <OUTLINED_FUNCTION_2>
c0de4cdc:	4809      	ldr	r0, [pc, #36]	@ (c0de4d04 <draw_circle_helper+0x98>)
c0de4cde:	490a      	ldr	r1, [pc, #40]	@ (c0de4d08 <draw_circle_helper+0x9c>)
c0de4ce0:	4478      	add	r0, pc
c0de4ce2:	4479      	add	r1, pc
c0de4ce4:	42ab      	cmp	r3, r5
c0de4ce6:	bf08      	it	eq
c0de4ce8:	4601      	moveq	r1, r0
c0de4cea:	a801      	add	r0, sp, #4
c0de4cec:	2200      	movs	r2, #0
c0de4cee:	f007 f8b9 	bl	c0debe64 <nbgl_frontDrawImage>
c0de4cf2:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de4cf4:	2100      	movs	r1, #0
c0de4cf6:	e7f8      	b.n	c0de4cea <draw_circle_helper+0x7e>
c0de4cf8:	00009564 	.word	0x00009564
c0de4cfc:	00009544 	.word	0x00009544
c0de4d00:	00009544 	.word	0x00009544
c0de4d04:	00009512 	.word	0x00009512
c0de4d08:	00009512 	.word	0x00009512
c0de4d0c:	00009538 	.word	0x00009538
c0de4d10:	00009538 	.word	0x00009538
c0de4d14:	0000952a 	.word	0x0000952a
c0de4d18:	0000952a 	.word	0x0000952a

c0de4d1c <nbgl_drawRoundedBorderedRect>:
c0de4d1c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4d20:	b08c      	sub	sp, #48	@ 0x30
c0de4d22:	4606      	mov	r6, r0
c0de4d24:	4690      	mov	r8, r2
c0de4d26:	2901      	cmp	r1, #1
c0de4d28:	4608      	mov	r0, r1
c0de4d2a:	9108      	str	r1, [sp, #32]
c0de4d2c:	d804      	bhi.n	c0de4d38 <nbgl_drawRoundedBorderedRect+0x1c>
c0de4d2e:	48b5      	ldr	r0, [pc, #724]	@ (c0de5004 <nbgl_drawRoundedBorderedRect+0x2e8>)
c0de4d30:	9908      	ldr	r1, [sp, #32]
c0de4d32:	4478      	add	r0, pc
c0de4d34:	5c47      	ldrb	r7, [r0, r1]
c0de4d36:	e004      	b.n	c0de4d42 <nbgl_drawRoundedBorderedRect+0x26>
c0de4d38:	9808      	ldr	r0, [sp, #32]
c0de4d3a:	28ff      	cmp	r0, #255	@ 0xff
c0de4d3c:	f040 815e 	bne.w	c0de4ffc <nbgl_drawRoundedBorderedRect+0x2e0>
c0de4d40:	2700      	movs	r7, #0
c0de4d42:	f8dd b050 	ldr.w	fp, [sp, #80]	@ 0x50
c0de4d46:	f88d 302c 	strb.w	r3, [sp, #44]	@ 0x2c
c0de4d4a:	455b      	cmp	r3, fp
c0de4d4c:	d11e      	bne.n	c0de4d8c <nbgl_drawRoundedBorderedRect+0x70>
c0de4d4e:	7a30      	ldrb	r0, [r6, #8]
c0de4d50:	4298      	cmp	r0, r3
c0de4d52:	d11b      	bne.n	c0de4d8c <nbgl_drawRoundedBorderedRect+0x70>
c0de4d54:	7830      	ldrb	r0, [r6, #0]
c0de4d56:	7871      	ldrb	r1, [r6, #1]
c0de4d58:	78b2      	ldrb	r2, [r6, #2]
c0de4d5a:	78f3      	ldrb	r3, [r6, #3]
c0de4d5c:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4d60:	7931      	ldrb	r1, [r6, #4]
c0de4d62:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de4d66:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de4d6a:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de4d6e:	7970      	ldrb	r0, [r6, #5]
c0de4d70:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4d74:	79b1      	ldrb	r1, [r6, #6]
c0de4d76:	f8ad 0028 	strh.w	r0, [sp, #40]	@ 0x28
c0de4d7a:	79f0      	ldrb	r0, [r6, #7]
c0de4d7c:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4d80:	f8ad 002a 	strh.w	r0, [sp, #42]	@ 0x2a
c0de4d84:	a809      	add	r0, sp, #36	@ 0x24
c0de4d86:	f007 f865 	bl	c0debe54 <nbgl_frontDrawRect>
c0de4d8a:	e137      	b.n	c0de4ffc <nbgl_drawRoundedBorderedRect+0x2e0>
c0de4d8c:	7930      	ldrb	r0, [r6, #4]
c0de4d8e:	7971      	ldrb	r1, [r6, #5]
c0de4d90:	007d      	lsls	r5, r7, #1
c0de4d92:	9306      	str	r3, [sp, #24]
c0de4d94:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4d98:	ebb0 0f47 	cmp.w	r0, r7, lsl #1
c0de4d9c:	d918      	bls.n	c0de4dd0 <nbgl_drawRoundedBorderedRect+0xb4>
c0de4d9e:	78b2      	ldrb	r2, [r6, #2]
c0de4da0:	78f3      	ldrb	r3, [r6, #3]
c0de4da2:	1b40      	subs	r0, r0, r5
c0de4da4:	7871      	ldrb	r1, [r6, #1]
c0de4da6:	f8ad 0028 	strh.w	r0, [sp, #40]	@ 0x28
c0de4daa:	7830      	ldrb	r0, [r6, #0]
c0de4dac:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4db0:	79b3      	ldrb	r3, [r6, #6]
c0de4db2:	f8ad 2026 	strh.w	r2, [sp, #38]	@ 0x26
c0de4db6:	79f2      	ldrb	r2, [r6, #7]
c0de4db8:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4dbc:	4438      	add	r0, r7
c0de4dbe:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4dc2:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de4dc6:	f8ad 202a 	strh.w	r2, [sp, #42]	@ 0x2a
c0de4dca:	a809      	add	r0, sp, #36	@ 0x24
c0de4dcc:	f007 f842 	bl	c0debe54 <nbgl_frontDrawRect>
c0de4dd0:	9808      	ldr	r0, [sp, #32]
c0de4dd2:	9507      	str	r5, [sp, #28]
c0de4dd4:	2801      	cmp	r0, #1
c0de4dd6:	d82a      	bhi.n	c0de4e2e <nbgl_drawRoundedBorderedRect+0x112>
c0de4dd8:	79b0      	ldrb	r0, [r6, #6]
c0de4dda:	79f1      	ldrb	r1, [r6, #7]
c0de4ddc:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4de0:	4285      	cmp	r5, r0
c0de4de2:	d224      	bcs.n	c0de4e2e <nbgl_drawRoundedBorderedRect+0x112>
c0de4de4:	1b40      	subs	r0, r0, r5
c0de4de6:	7871      	ldrb	r1, [r6, #1]
c0de4de8:	4634      	mov	r4, r6
c0de4dea:	f8ad 7028 	strh.w	r7, [sp, #40]	@ 0x28
c0de4dee:	f8ad 002a 	strh.w	r0, [sp, #42]	@ 0x2a
c0de4df2:	7830      	ldrb	r0, [r6, #0]
c0de4df4:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4df8:	f000 fa0c 	bl	c0de5214 <OUTLINED_FUNCTION_0>
c0de4dfc:	4438      	add	r0, r7
c0de4dfe:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de4e02:	ad09      	add	r5, sp, #36	@ 0x24
c0de4e04:	4628      	mov	r0, r5
c0de4e06:	f007 f825 	bl	c0debe54 <nbgl_frontDrawRect>
c0de4e0a:	7820      	ldrb	r0, [r4, #0]
c0de4e0c:	7861      	ldrb	r1, [r4, #1]
c0de4e0e:	7932      	ldrb	r2, [r6, #4]
c0de4e10:	7973      	ldrb	r3, [r6, #5]
c0de4e12:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4e16:	7871      	ldrb	r1, [r6, #1]
c0de4e18:	4438      	add	r0, r7
c0de4e1a:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de4e1e:	f000 fa01 	bl	c0de5224 <OUTLINED_FUNCTION_1>
c0de4e22:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de4e26:	4628      	mov	r0, r5
c0de4e28:	9d07      	ldr	r5, [sp, #28]
c0de4e2a:	f007 f813 	bl	c0debe54 <nbgl_frontDrawRect>
c0de4e2e:	7830      	ldrb	r0, [r6, #0]
c0de4e30:	7871      	ldrb	r1, [r6, #1]
c0de4e32:	4634      	mov	r4, r6
c0de4e34:	7932      	ldrb	r2, [r6, #4]
c0de4e36:	7973      	ldrb	r3, [r6, #5]
c0de4e38:	f88d b02c 	strb.w	fp, [sp, #44]	@ 0x2c
c0de4e3c:	f10d 0b24 	add.w	fp, sp, #36	@ 0x24
c0de4e40:	f8ad 802a 	strh.w	r8, [sp, #42]	@ 0x2a
c0de4e44:	9705      	str	r7, [sp, #20]
c0de4e46:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4e4a:	4438      	add	r0, r7
c0de4e4c:	f000 f9e2 	bl	c0de5214 <OUTLINED_FUNCTION_0>
c0de4e50:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de4e54:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de4e58:	1b40      	subs	r0, r0, r5
c0de4e5a:	f8ad 0028 	strh.w	r0, [sp, #40]	@ 0x28
c0de4e5e:	4658      	mov	r0, fp
c0de4e60:	f006 fff8 	bl	c0debe54 <nbgl_frontDrawRect>
c0de4e64:	4635      	mov	r5, r6
c0de4e66:	7862      	ldrb	r2, [r4, #1]
c0de4e68:	9f07      	ldr	r7, [sp, #28]
c0de4e6a:	f815 0f06 	ldrb.w	r0, [r5, #6]!
c0de4e6e:	7869      	ldrb	r1, [r5, #1]
c0de4e70:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4e74:	7821      	ldrb	r1, [r4, #0]
c0de4e76:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4e7a:	eba1 0108 	sub.w	r1, r1, r8
c0de4e7e:	4408      	add	r0, r1
c0de4e80:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de4e84:	4658      	mov	r0, fp
c0de4e86:	f006 ffe5 	bl	c0debe54 <nbgl_frontDrawRect>
c0de4e8a:	7828      	ldrb	r0, [r5, #0]
c0de4e8c:	7869      	ldrb	r1, [r5, #1]
c0de4e8e:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4e92:	4287      	cmp	r7, r0
c0de4e94:	d229      	bcs.n	c0de4eea <nbgl_drawRoundedBorderedRect+0x1ce>
c0de4e96:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de4e98:	1bc0      	subs	r0, r0, r7
c0de4e9a:	78b2      	ldrb	r2, [r6, #2]
c0de4e9c:	78f3      	ldrb	r3, [r6, #3]
c0de4e9e:	f8ad 8028 	strh.w	r8, [sp, #40]	@ 0x28
c0de4ea2:	f8ad 002a 	strh.w	r0, [sp, #42]	@ 0x2a
c0de4ea6:	7830      	ldrb	r0, [r6, #0]
c0de4ea8:	f88d 102c 	strb.w	r1, [sp, #44]	@ 0x2c
c0de4eac:	7871      	ldrb	r1, [r6, #1]
c0de4eae:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4eb2:	9905      	ldr	r1, [sp, #20]
c0de4eb4:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de4eb8:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de4ebc:	4408      	add	r0, r1
c0de4ebe:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de4ec2:	ac09      	add	r4, sp, #36	@ 0x24
c0de4ec4:	4620      	mov	r0, r4
c0de4ec6:	f006 ffc5 	bl	c0debe54 <nbgl_frontDrawRect>
c0de4eca:	7830      	ldrb	r0, [r6, #0]
c0de4ecc:	7871      	ldrb	r1, [r6, #1]
c0de4ece:	7932      	ldrb	r2, [r6, #4]
c0de4ed0:	7973      	ldrb	r3, [r6, #5]
c0de4ed2:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de4ed6:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de4eda:	eba0 0008 	sub.w	r0, r0, r8
c0de4ede:	4408      	add	r0, r1
c0de4ee0:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de4ee4:	4620      	mov	r0, r4
c0de4ee6:	f006 ffb5 	bl	c0debe54 <nbgl_frontDrawRect>
c0de4eea:	9808      	ldr	r0, [sp, #32]
c0de4eec:	f8dd b018 	ldr.w	fp, [sp, #24]
c0de4ef0:	2801      	cmp	r0, #1
c0de4ef2:	f200 8083 	bhi.w	c0de4ffc <nbgl_drawRoundedBorderedRect+0x2e0>
c0de4ef6:	4635      	mov	r5, r6
c0de4ef8:	7a34      	ldrb	r4, [r6, #8]
c0de4efa:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de4efc:	f996 0001 	ldrsb.w	r0, [r6, #1]
c0de4f00:	7833      	ldrb	r3, [r6, #0]
c0de4f02:	f8dd a014 	ldr.w	sl, [sp, #20]
c0de4f06:	f815 cf02 	ldrb.w	ip, [r5, #2]!
c0de4f0a:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de4f0e:	2301      	movs	r3, #1
c0de4f10:	f995 2001 	ldrsb.w	r2, [r5, #1]
c0de4f14:	e9cd 1b00 	strd	r1, fp, [sp]
c0de4f18:	9402      	str	r4, [sp, #8]
c0de4f1a:	4450      	add	r0, sl
c0de4f1c:	4c3a      	ldr	r4, [pc, #232]	@ (c0de5008 <nbgl_drawRoundedBorderedRect+0x2ec>)
c0de4f1e:	9f08      	ldr	r7, [sp, #32]
c0de4f20:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de4f24:	4451      	add	r1, sl
c0de4f26:	447c      	add	r4, pc
c0de4f28:	463a      	mov	r2, r7
c0de4f2a:	47a0      	blx	r4
c0de4f2c:	f995 0001 	ldrsb.w	r0, [r5, #1]
c0de4f30:	46a0      	mov	r8, r4
c0de4f32:	9407      	str	r4, [sp, #28]
c0de4f34:	4634      	mov	r4, r6
c0de4f36:	f996 e001 	ldrsb.w	lr, [r6, #1]
c0de4f3a:	7832      	ldrb	r2, [r6, #0]
c0de4f3c:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de4f3e:	f814 cf04 	ldrb.w	ip, [r4, #4]!
c0de4f42:	9004      	str	r0, [sp, #16]
c0de4f44:	7828      	ldrb	r0, [r5, #0]
c0de4f46:	7861      	ldrb	r1, [r4, #1]
c0de4f48:	9003      	str	r0, [sp, #12]
c0de4f4a:	7a30      	ldrb	r0, [r6, #8]
c0de4f4c:	e9cd 3b00 	strd	r3, fp, [sp]
c0de4f50:	2300      	movs	r3, #0
c0de4f52:	9002      	str	r0, [sp, #8]
c0de4f54:	ea4c 2001 	orr.w	r0, ip, r1, lsl #8
c0de4f58:	ea42 210e 	orr.w	r1, r2, lr, lsl #8
c0de4f5c:	eba1 010a 	sub.w	r1, r1, sl
c0de4f60:	4408      	add	r0, r1
c0de4f62:	e9dd 2103 	ldrd	r2, r1, [sp, #12]
c0de4f66:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4f6a:	463a      	mov	r2, r7
c0de4f6c:	4451      	add	r1, sl
c0de4f6e:	47c0      	blx	r8
c0de4f70:	f996 0001 	ldrsb.w	r0, [r6, #1]
c0de4f74:	463a      	mov	r2, r7
c0de4f76:	4637      	mov	r7, r6
c0de4f78:	7a31      	ldrb	r1, [r6, #8]
c0de4f7a:	f895 8000 	ldrb.w	r8, [r5]
c0de4f7e:	f896 e000 	ldrb.w	lr, [r6]
c0de4f82:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de4f84:	f817 cf06 	ldrb.w	ip, [r7, #6]!
c0de4f88:	9004      	str	r0, [sp, #16]
c0de4f8a:	f995 0001 	ldrsb.w	r0, [r5, #1]
c0de4f8e:	9003      	str	r0, [sp, #12]
c0de4f90:	7878      	ldrb	r0, [r7, #1]
c0de4f92:	9102      	str	r1, [sp, #8]
c0de4f94:	e9cd 3b00 	strd	r3, fp, [sp]
c0de4f98:	2302      	movs	r3, #2
c0de4f9a:	9903      	ldr	r1, [sp, #12]
c0de4f9c:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
c0de4fa0:	ea48 2101 	orr.w	r1, r8, r1, lsl #8
c0de4fa4:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de4fa8:	eba1 010a 	sub.w	r1, r1, sl
c0de4fac:	4401      	add	r1, r0
c0de4fae:	9804      	ldr	r0, [sp, #16]
c0de4fb0:	ea4e 2000 	orr.w	r0, lr, r0, lsl #8
c0de4fb4:	4450      	add	r0, sl
c0de4fb6:	47c0      	blx	r8
c0de4fb8:	f897 c000 	ldrb.w	ip, [r7]
c0de4fbc:	f897 e001 	ldrb.w	lr, [r7, #1]
c0de4fc0:	f996 7001 	ldrsb.w	r7, [r6, #1]
c0de4fc4:	7831      	ldrb	r1, [r6, #0]
c0de4fc6:	7820      	ldrb	r0, [r4, #0]
c0de4fc8:	7864      	ldrb	r4, [r4, #1]
c0de4fca:	f995 3001 	ldrsb.w	r3, [r5, #1]
c0de4fce:	782d      	ldrb	r5, [r5, #0]
c0de4fd0:	9a14      	ldr	r2, [sp, #80]	@ 0x50
c0de4fd2:	7a36      	ldrb	r6, [r6, #8]
c0de4fd4:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
c0de4fd8:	ea40 2004 	orr.w	r0, r0, r4, lsl #8
c0de4fdc:	e9cd 2b00 	strd	r2, fp, [sp]
c0de4fe0:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de4fe4:	9602      	str	r6, [sp, #8]
c0de4fe6:	eba1 010a 	sub.w	r1, r1, sl
c0de4fea:	4408      	add	r0, r1
c0de4fec:	ea45 2103 	orr.w	r1, r5, r3, lsl #8
c0de4ff0:	2303      	movs	r3, #3
c0de4ff2:	eba1 010a 	sub.w	r1, r1, sl
c0de4ff6:	4411      	add	r1, r2
c0de4ff8:	9a08      	ldr	r2, [sp, #32]
c0de4ffa:	47c0      	blx	r8
c0de4ffc:	b00c      	add	sp, #48	@ 0x30
c0de4ffe:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5002:	bf00      	nop
c0de5004:	000094ba 	.word	0x000094ba
c0de5008:	fffffd43 	.word	0xfffffd43

c0de500c <nbgl_drawIcon>:
c0de500c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de500e:	4614      	mov	r4, r2
c0de5010:	460a      	mov	r2, r1
c0de5012:	f813 1f06 	ldrb.w	r1, [r3, #6]!
c0de5016:	f813 5c01 	ldrb.w	r5, [r3, #-1]
c0de501a:	785e      	ldrb	r6, [r3, #1]
c0de501c:	789f      	ldrb	r7, [r3, #2]
c0de501e:	78db      	ldrb	r3, [r3, #3]
c0de5020:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
c0de5024:	ea47 2303 	orr.w	r3, r7, r3, lsl #8
c0de5028:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de502c:	b13d      	cbz	r5, c0de503e <nbgl_drawIcon+0x32>
c0de502e:	4a06      	ldr	r2, [pc, #24]	@ (c0de5048 <nbgl_drawIcon+0x3c>)
c0de5030:	eb09 0302 	add.w	r3, r9, r2
c0de5034:	4622      	mov	r2, r4
c0de5036:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de503a:	f006 bf33 	b.w	c0debea4 <nbgl_frontDrawImageFile>
c0de503e:	4623      	mov	r3, r4
c0de5040:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de5044:	f006 bf0e 	b.w	c0debe64 <nbgl_frontDrawImage>
c0de5048:	000014e4 	.word	0x000014e4

c0de504c <nbgl_drawText>:
c0de504c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5050:	b090      	sub	sp, #64	@ 0x40
c0de5052:	4604      	mov	r4, r0
c0de5054:	f890 8000 	ldrb.w	r8, [r0]
c0de5058:	7846      	ldrb	r6, [r0, #1]
c0de505a:	4618      	mov	r0, r3
c0de505c:	469b      	mov	fp, r3
c0de505e:	4617      	mov	r7, r2
c0de5060:	f8ad 203a 	strh.w	r2, [sp, #58]	@ 0x3a
c0de5064:	910f      	str	r1, [sp, #60]	@ 0x3c
c0de5066:	f000 f8ea 	bl	c0de523e <nbgl_getFont>
c0de506a:	4605      	mov	r5, r0
c0de506c:	7a20      	ldrb	r0, [r4, #8]
c0de506e:	9405      	str	r4, [sp, #20]
c0de5070:	f10d 0a3c 	add.w	sl, sp, #60	@ 0x3c
c0de5074:	f10d 042f 	add.w	r4, sp, #47	@ 0x2f
c0de5078:	f88d 0038 	strb.w	r0, [sp, #56]	@ 0x38
c0de507c:	7968      	ldrb	r0, [r5, #5]
c0de507e:	f88d 0039 	strb.w	r0, [sp, #57]	@ 0x39
c0de5082:	ea48 2006 	orr.w	r0, r8, r6, lsl #8
c0de5086:	f10d 063a 	add.w	r6, sp, #58	@ 0x3a
c0de508a:	900a      	str	r0, [sp, #40]	@ 0x28
c0de508c:	2f00      	cmp	r7, #0
c0de508e:	f000 80bc 	beq.w	c0de520a <nbgl_drawText+0x1be>
c0de5092:	4650      	mov	r0, sl
c0de5094:	4631      	mov	r1, r6
c0de5096:	4622      	mov	r2, r4
c0de5098:	f000 f8d3 	bl	c0de5242 <nbgl_popUnicodeChar>
c0de509c:	4680      	mov	r8, r0
c0de509e:	f89d 002f 	ldrb.w	r0, [sp, #47]	@ 0x2f
c0de50a2:	b110      	cbz	r0, c0de50aa <nbgl_drawText+0x5e>
c0de50a4:	f8bd 703a 	ldrh.w	r7, [sp, #58]	@ 0x3a
c0de50a8:	e7f0      	b.n	c0de508c <nbgl_drawText+0x40>
c0de50aa:	f1b8 0f08 	cmp.w	r8, #8
c0de50ae:	d030      	beq.n	c0de5112 <nbgl_drawText+0xc6>
c0de50b0:	f1b8 0f0c 	cmp.w	r8, #12
c0de50b4:	f000 80a9 	beq.w	c0de520a <nbgl_drawText+0x1be>
c0de50b8:	7ae8      	ldrb	r0, [r5, #11]
c0de50ba:	4580      	cmp	r8, r0
c0de50bc:	d3f2      	bcc.n	c0de50a4 <nbgl_drawText+0x58>
c0de50be:	7b29      	ldrb	r1, [r5, #12]
c0de50c0:	4588      	cmp	r8, r1
c0de50c2:	d8ef      	bhi.n	c0de50a4 <nbgl_drawText+0x58>
c0de50c4:	6929      	ldr	r1, [r5, #16]
c0de50c6:	eba8 0000 	sub.w	r0, r8, r0
c0de50ca:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de50ce:	f006 fe91 	bl	c0debdf4 <pic>
c0de50d2:	4607      	mov	r7, r0
c0de50d4:	6800      	ldr	r0, [r0, #0]
c0de50d6:	6969      	ldr	r1, [r5, #20]
c0de50d8:	4408      	add	r0, r1
c0de50da:	f006 fe8b 	bl	c0debdf4 <pic>
c0de50de:	9009      	str	r0, [sp, #36]	@ 0x24
c0de50e0:	687f      	ldr	r7, [r7, #4]
c0de50e2:	7a68      	ldrb	r0, [r5, #9]
c0de50e4:	f895 c006 	ldrb.w	ip, [r5, #6]
c0de50e8:	f3c7 0245 	ubfx	r2, r7, #1, #6
c0de50ec:	b310      	cbz	r0, c0de5134 <nbgl_drawText+0xe8>
c0de50ee:	f3c7 5045 	ubfx	r0, r7, #21, #6
c0de50f2:	f3c7 21c5 	ubfx	r1, r7, #11, #6
c0de50f6:	ebac 0c00 	sub.w	ip, ip, r0
c0de50fa:	f3c7 4043 	ubfx	r0, r7, #17, #4
c0de50fe:	1a13      	subs	r3, r2, r0
c0de5100:	7aa8      	ldrb	r0, [r5, #10]
c0de5102:	4408      	add	r0, r1
c0de5104:	9007      	str	r0, [sp, #28]
c0de5106:	f3c7 10c3 	ubfx	r0, r7, #7, #4
c0de510a:	9006      	str	r0, [sp, #24]
c0de510c:	2000      	movs	r0, #0
c0de510e:	9004      	str	r0, [sp, #16]
c0de5110:	e01c      	b.n	c0de514c <nbgl_drawText+0x100>
c0de5112:	fa5f f08b 	uxtb.w	r0, fp
c0de5116:	2808      	cmp	r0, #8
c0de5118:	d005      	beq.n	c0de5126 <nbgl_drawText+0xda>
c0de511a:	280a      	cmp	r0, #10
c0de511c:	d1c2      	bne.n	c0de50a4 <nbgl_drawText+0x58>
c0de511e:	f04f 0b08 	mov.w	fp, #8
c0de5122:	2008      	movs	r0, #8
c0de5124:	e002      	b.n	c0de512c <nbgl_drawText+0xe0>
c0de5126:	f04f 0b0a 	mov.w	fp, #10
c0de512a:	200a      	movs	r0, #10
c0de512c:	f000 f887 	bl	c0de523e <nbgl_getFont>
c0de5130:	4605      	mov	r5, r0
c0de5132:	e7b7      	b.n	c0de50a4 <nbgl_drawText+0x58>
c0de5134:	2038      	movs	r0, #56	@ 0x38
c0de5136:	f3c7 21c2 	ubfx	r1, r7, #11, #3
c0de513a:	4613      	mov	r3, r2
c0de513c:	ea00 1017 	and.w	r0, r0, r7, lsr #4
c0de5140:	4408      	add	r0, r1
c0de5142:	9004      	str	r0, [sp, #16]
c0de5144:	2000      	movs	r0, #0
c0de5146:	9006      	str	r0, [sp, #24]
c0de5148:	2000      	movs	r0, #0
c0de514a:	9007      	str	r0, [sp, #28]
c0de514c:	7ae9      	ldrb	r1, [r5, #11]
c0de514e:	fa5f f088 	uxtb.w	r0, r8
c0de5152:	9208      	str	r2, [sp, #32]
c0de5154:	4281      	cmp	r1, r0
c0de5156:	d802      	bhi.n	c0de515e <nbgl_drawText+0x112>
c0de5158:	7b2a      	ldrb	r2, [r5, #12]
c0de515a:	4282      	cmp	r2, r0
c0de515c:	d231      	bcs.n	c0de51c2 <nbgl_drawText+0x176>
c0de515e:	4698      	mov	r8, r3
c0de5160:	2200      	movs	r2, #0
c0de5162:	9906      	ldr	r1, [sp, #24]
c0de5164:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de5166:	f8dd e01c 	ldr.w	lr, [sp, #28]
c0de516a:	4408      	add	r0, r1
c0de516c:	f8ad 0030 	strh.w	r0, [sp, #48]	@ 0x30
c0de5170:	ebac 000e 	sub.w	r0, ip, lr
c0de5174:	f8ad 0036 	strh.w	r0, [sp, #54]	@ 0x36
c0de5178:	eba8 0001 	sub.w	r0, r8, r1
c0de517c:	9905      	ldr	r1, [sp, #20]
c0de517e:	f8ad 0034 	strh.w	r0, [sp, #52]	@ 0x34
c0de5182:	7888      	ldrb	r0, [r1, #2]
c0de5184:	78c9      	ldrb	r1, [r1, #3]
c0de5186:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de518a:	4470      	add	r0, lr
c0de518c:	f8ad 0032 	strh.w	r0, [sp, #50]	@ 0x32
c0de5190:	b14a      	cbz	r2, c0de51a6 <nbgl_drawText+0x15a>
c0de5192:	f017 0001 	ands.w	r0, r7, #1
c0de5196:	d106      	bne.n	c0de51a6 <nbgl_drawText+0x15a>
c0de5198:	a80c      	add	r0, sp, #48	@ 0x30
c0de519a:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de519c:	9b18      	ldr	r3, [sp, #96]	@ 0x60
c0de519e:	2200      	movs	r2, #0
c0de51a0:	f006 fe60 	bl	c0debe64 <nbgl_frontDrawImage>
c0de51a4:	e006      	b.n	c0de51b4 <nbgl_drawText+0x168>
c0de51a6:	9804      	ldr	r0, [sp, #16]
c0de51a8:	9b18      	ldr	r3, [sp, #96]	@ 0x60
c0de51aa:	9000      	str	r0, [sp, #0]
c0de51ac:	a80c      	add	r0, sp, #48	@ 0x30
c0de51ae:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de51b0:	f006 fe66 	bl	c0debe80 <nbgl_frontDrawImageRle>
c0de51b4:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de51b6:	9908      	ldr	r1, [sp, #32]
c0de51b8:	4408      	add	r0, r1
c0de51ba:	7a29      	ldrb	r1, [r5, #8]
c0de51bc:	1a40      	subs	r0, r0, r1
c0de51be:	900a      	str	r0, [sp, #40]	@ 0x28
c0de51c0:	e770      	b.n	c0de50a4 <nbgl_drawText+0x58>
c0de51c2:	eba0 0101 	sub.w	r1, r0, r1
c0de51c6:	4698      	mov	r8, r3
c0de51c8:	d913      	bls.n	c0de51f2 <nbgl_drawText+0x1a6>
c0de51ca:	6928      	ldr	r0, [r5, #16]
c0de51cc:	b289      	uxth	r1, r1
c0de51ce:	f8cd c00c 	str.w	ip, [sp, #12]
c0de51d2:	9101      	str	r1, [sp, #4]
c0de51d4:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de51d8:	f006 fe0c 	bl	c0debdf4 <pic>
c0de51dc:	9002      	str	r0, [sp, #8]
c0de51de:	6928      	ldr	r0, [r5, #16]
c0de51e0:	9901      	ldr	r1, [sp, #4]
c0de51e2:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de51e6:	3008      	adds	r0, #8
c0de51e8:	f006 fe04 	bl	c0debdf4 <pic>
c0de51ec:	e9dd 1c02 	ldrd	r1, ip, [sp, #8]
c0de51f0:	e006      	b.n	c0de5200 <nbgl_drawText+0x1b4>
c0de51f2:	4282      	cmp	r2, r0
c0de51f4:	d1b4      	bne.n	c0de5160 <nbgl_drawText+0x114>
c0de51f6:	b288      	uxth	r0, r1
c0de51f8:	6929      	ldr	r1, [r5, #16]
c0de51fa:	eb01 01c0 	add.w	r1, r1, r0, lsl #3
c0de51fe:	4628      	mov	r0, r5
c0de5200:	6809      	ldr	r1, [r1, #0]
c0de5202:	6800      	ldr	r0, [r0, #0]
c0de5204:	1a40      	subs	r0, r0, r1
c0de5206:	b282      	uxth	r2, r0
c0de5208:	e7ab      	b.n	c0de5162 <nbgl_drawText+0x116>
c0de520a:	fa5f f08b 	uxtb.w	r0, fp
c0de520e:	b010      	add	sp, #64	@ 0x40
c0de5210:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de5214 <OUTLINED_FUNCTION_0>:
c0de5214:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de5218:	f814 0f02 	ldrb.w	r0, [r4, #2]!
c0de521c:	7861      	ldrb	r1, [r4, #1]
c0de521e:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5222:	4770      	bx	lr

c0de5224 <OUTLINED_FUNCTION_1>:
c0de5224:	7830      	ldrb	r0, [r6, #0]
c0de5226:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de522a:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de522e:	1bc0      	subs	r0, r0, r7
c0de5230:	4408      	add	r0, r1
c0de5232:	4770      	bx	lr

c0de5234 <OUTLINED_FUNCTION_2>:
c0de5234:	f8ad 1006 	strh.w	r1, [sp, #6]
c0de5238:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de523c:	4770      	bx	lr

c0de523e <nbgl_getFont>:
c0de523e:	f006 be49 	b.w	c0debed4 <nbgl_font_getFont>

c0de5242 <nbgl_popUnicodeChar>:
c0de5242:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5244:	6804      	ldr	r4, [r0, #0]
c0de5246:	2501      	movs	r5, #1
c0de5248:	4626      	mov	r6, r4
c0de524a:	f816 3b01 	ldrb.w	r3, [r6], #1
c0de524e:	7015      	strb	r5, [r2, #0]
c0de5250:	2bf0      	cmp	r3, #240	@ 0xf0
c0de5252:	d315      	bcc.n	c0de5280 <nbgl_popUnicodeChar+0x3e>
c0de5254:	880d      	ldrh	r5, [r1, #0]
c0de5256:	2d04      	cmp	r5, #4
c0de5258:	d315      	bcc.n	c0de5286 <nbgl_popUnicodeChar+0x44>
c0de525a:	f44f 12e0 	mov.w	r2, #1835008	@ 0x1c0000
c0de525e:	78a6      	ldrb	r6, [r4, #2]
c0de5260:	78e7      	ldrb	r7, [r4, #3]
c0de5262:	ea02 4283 	and.w	r2, r2, r3, lsl #18
c0de5266:	7863      	ldrb	r3, [r4, #1]
c0de5268:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
c0de526c:	ea42 3203 	orr.w	r2, r2, r3, lsl #12
c0de5270:	f006 033f 	and.w	r3, r6, #63	@ 0x3f
c0de5274:	1d26      	adds	r6, r4, #4
c0de5276:	ea42 1283 	orr.w	r2, r2, r3, lsl #6
c0de527a:	f007 033f 	and.w	r3, r7, #63	@ 0x3f
c0de527e:	e00f      	b.n	c0de52a0 <nbgl_popUnicodeChar+0x5e>
c0de5280:	2be0      	cmp	r3, #224	@ 0xe0
c0de5282:	d30f      	bcc.n	c0de52a4 <nbgl_popUnicodeChar+0x62>
c0de5284:	880d      	ldrh	r5, [r1, #0]
c0de5286:	2d03      	cmp	r5, #3
c0de5288:	d30f      	bcc.n	c0de52aa <nbgl_popUnicodeChar+0x68>
c0de528a:	7862      	ldrb	r2, [r4, #1]
c0de528c:	031b      	lsls	r3, r3, #12
c0de528e:	78a6      	ldrb	r6, [r4, #2]
c0de5290:	b29b      	uxth	r3, r3
c0de5292:	f002 023f 	and.w	r2, r2, #63	@ 0x3f
c0de5296:	ea43 1282 	orr.w	r2, r3, r2, lsl #6
c0de529a:	f006 033f 	and.w	r3, r6, #63	@ 0x3f
c0de529e:	1ce6      	adds	r6, r4, #3
c0de52a0:	4413      	add	r3, r2
c0de52a2:	e00e      	b.n	c0de52c2 <nbgl_popUnicodeChar+0x80>
c0de52a4:	880d      	ldrh	r5, [r1, #0]
c0de52a6:	2bc2      	cmp	r3, #194	@ 0xc2
c0de52a8:	d309      	bcc.n	c0de52be <nbgl_popUnicodeChar+0x7c>
c0de52aa:	2d02      	cmp	r5, #2
c0de52ac:	d307      	bcc.n	c0de52be <nbgl_popUnicodeChar+0x7c>
c0de52ae:	7862      	ldrb	r2, [r4, #1]
c0de52b0:	1ca6      	adds	r6, r4, #2
c0de52b2:	f002 023f 	and.w	r2, r2, #63	@ 0x3f
c0de52b6:	f363 128a 	bfi	r2, r3, #6, #5
c0de52ba:	4613      	mov	r3, r2
c0de52bc:	e001      	b.n	c0de52c2 <nbgl_popUnicodeChar+0x80>
c0de52be:	2700      	movs	r7, #0
c0de52c0:	7017      	strb	r7, [r2, #0]
c0de52c2:	6006      	str	r6, [r0, #0]
c0de52c4:	1ba0      	subs	r0, r4, r6
c0de52c6:	4428      	add	r0, r5
c0de52c8:	8008      	strh	r0, [r1, #0]
c0de52ca:	4618      	mov	r0, r3
c0de52cc:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de52ce <nbgl_getSingleLineTextWidth>:
c0de52ce:	2201      	movs	r2, #1
c0de52d0:	f64f 73ff 	movw	r3, #65535	@ 0xffff
c0de52d4:	f000 b800 	b.w	c0de52d8 <getTextWidth>

c0de52d8 <getTextWidth>:
c0de52d8:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de52dc:	461c      	mov	r4, r3
c0de52de:	9201      	str	r2, [sp, #4]
c0de52e0:	460f      	mov	r7, r1
c0de52e2:	4605      	mov	r5, r0
c0de52e4:	9103      	str	r1, [sp, #12]
c0de52e6:	f7ff ffaa 	bl	c0de523e <nbgl_getFont>
c0de52ea:	4606      	mov	r6, r0
c0de52ec:	4638      	mov	r0, r7
c0de52ee:	f007 f9ab 	bl	c0dec648 <strlen>
c0de52f2:	42a0      	cmp	r0, r4
c0de52f4:	bf38      	it	cc
c0de52f6:	4604      	movcc	r4, r0
c0de52f8:	f8ad 400a 	strh.w	r4, [sp, #10]
c0de52fc:	b2a0      	uxth	r0, r4
c0de52fe:	f10d 0a0c 	add.w	sl, sp, #12
c0de5302:	f10d 0b0a 	add.w	fp, sp, #10
c0de5306:	f10d 0709 	add.w	r7, sp, #9
c0de530a:	f04f 0800 	mov.w	r8, #0
c0de530e:	2400      	movs	r4, #0
c0de5310:	b358      	cbz	r0, c0de536a <getTextWidth+0x92>
c0de5312:	4650      	mov	r0, sl
c0de5314:	4659      	mov	r1, fp
c0de5316:	463a      	mov	r2, r7
c0de5318:	f7ff ff93 	bl	c0de5242 <nbgl_popUnicodeChar>
c0de531c:	280a      	cmp	r0, #10
c0de531e:	d00a      	beq.n	c0de5336 <getTextWidth+0x5e>
c0de5320:	4601      	mov	r1, r0
c0de5322:	2808      	cmp	r0, #8
c0de5324:	d10c      	bne.n	c0de5340 <getTextWidth+0x68>
c0de5326:	b2e8      	uxtb	r0, r5
c0de5328:	2808      	cmp	r0, #8
c0de532a:	d016      	beq.n	c0de535a <getTextWidth+0x82>
c0de532c:	280a      	cmp	r0, #10
c0de532e:	d119      	bne.n	c0de5364 <getTextWidth+0x8c>
c0de5330:	2508      	movs	r5, #8
c0de5332:	2008      	movs	r0, #8
c0de5334:	e013      	b.n	c0de535e <getTextWidth+0x86>
c0de5336:	9801      	ldr	r0, [sp, #4]
c0de5338:	b9b8      	cbnz	r0, c0de536a <getTextWidth+0x92>
c0de533a:	f04f 0800 	mov.w	r8, #0
c0de533e:	e011      	b.n	c0de5364 <getTextWidth+0x8c>
c0de5340:	f89d 2009 	ldrb.w	r2, [sp, #9]
c0de5344:	4630      	mov	r0, r6
c0de5346:	f000 f819 	bl	c0de537c <getCharWidth>
c0de534a:	4480      	add	r8, r0
c0de534c:	b2a1      	uxth	r1, r4
c0de534e:	fa1f f088 	uxth.w	r0, r8
c0de5352:	4288      	cmp	r0, r1
c0de5354:	bf88      	it	hi
c0de5356:	4644      	movhi	r4, r8
c0de5358:	e004      	b.n	c0de5364 <getTextWidth+0x8c>
c0de535a:	250a      	movs	r5, #10
c0de535c:	200a      	movs	r0, #10
c0de535e:	f006 fdb9 	bl	c0debed4 <nbgl_font_getFont>
c0de5362:	4606      	mov	r6, r0
c0de5364:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de5368:	e7d2      	b.n	c0de5310 <getTextWidth+0x38>
c0de536a:	b2a0      	uxth	r0, r4
c0de536c:	b004      	add	sp, #16
c0de536e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de5372 <nbgl_getTextWidth>:
c0de5372:	2200      	movs	r2, #0
c0de5374:	f64f 73ff 	movw	r3, #65535	@ 0xffff
c0de5378:	f7ff bfae 	b.w	c0de52d8 <getTextWidth>

c0de537c <getCharWidth>:
c0de537c:	b510      	push	{r4, lr}
c0de537e:	b932      	cbnz	r2, c0de538e <getCharWidth+0x12>
c0de5380:	4604      	mov	r4, r0
c0de5382:	7ac0      	ldrb	r0, [r0, #11]
c0de5384:	4288      	cmp	r0, r1
c0de5386:	d802      	bhi.n	c0de538e <getCharWidth+0x12>
c0de5388:	7b22      	ldrb	r2, [r4, #12]
c0de538a:	428a      	cmp	r2, r1
c0de538c:	d202      	bcs.n	c0de5394 <getCharWidth+0x18>
c0de538e:	2000      	movs	r0, #0
c0de5390:	b2c0      	uxtb	r0, r0
c0de5392:	bd10      	pop	{r4, pc}
c0de5394:	1a08      	subs	r0, r1, r0
c0de5396:	6921      	ldr	r1, [r4, #16]
c0de5398:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de539c:	f006 fd2a 	bl	c0debdf4 <pic>
c0de53a0:	7900      	ldrb	r0, [r0, #4]
c0de53a2:	7a21      	ldrb	r1, [r4, #8]
c0de53a4:	f3c0 0045 	ubfx	r0, r0, #1, #6
c0de53a8:	1a40      	subs	r0, r0, r1
c0de53aa:	e7f1      	b.n	c0de5390 <getCharWidth+0x14>

c0de53ac <nbgl_getFontHeight>:
c0de53ac:	b580      	push	{r7, lr}
c0de53ae:	f7ff ff46 	bl	c0de523e <nbgl_getFont>
c0de53b2:	7980      	ldrb	r0, [r0, #6]
c0de53b4:	bd80      	pop	{r7, pc}

c0de53b6 <nbgl_getFontLineHeight>:
c0de53b6:	b580      	push	{r7, lr}
c0de53b8:	f7ff ff41 	bl	c0de523e <nbgl_getFont>
c0de53bc:	79c0      	ldrb	r0, [r0, #7]
c0de53be:	bd80      	pop	{r7, pc}

c0de53c0 <nbgl_getTextLength>:
c0de53c0:	b510      	push	{r4, lr}
c0de53c2:	2100      	movs	r1, #0
c0de53c4:	2201      	movs	r2, #1
c0de53c6:	f241 4301 	movw	r3, #5121	@ 0x1401
c0de53ca:	5c44      	ldrb	r4, [r0, r1]
c0de53cc:	2c0c      	cmp	r4, #12
c0de53ce:	d805      	bhi.n	c0de53dc <nbgl_getTextLength+0x1c>
c0de53d0:	fa02 f404 	lsl.w	r4, r2, r4
c0de53d4:	421c      	tst	r4, r3
c0de53d6:	bf1c      	itt	ne
c0de53d8:	b288      	uxthne	r0, r1
c0de53da:	bd10      	popne	{r4, pc}
c0de53dc:	3101      	adds	r1, #1
c0de53de:	e7f4      	b.n	c0de53ca <nbgl_getTextLength+0xa>

c0de53e0 <nbgl_getTextMaxLenAndWidth>:
c0de53e0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de53e4:	b086      	sub	sp, #24
c0de53e6:	461c      	mov	r4, r3
c0de53e8:	9203      	str	r2, [sp, #12]
c0de53ea:	460f      	mov	r7, r1
c0de53ec:	4606      	mov	r6, r0
c0de53ee:	9105      	str	r1, [sp, #20]
c0de53f0:	f7ff ff25 	bl	c0de523e <nbgl_getFont>
c0de53f4:	4605      	mov	r5, r0
c0de53f6:	4638      	mov	r0, r7
c0de53f8:	f7ff ffe2 	bl	c0de53c0 <nbgl_getTextLength>
c0de53fc:	4680      	mov	r8, r0
c0de53fe:	2000      	movs	r0, #0
c0de5400:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
c0de5402:	2100      	movs	r1, #0
c0de5404:	f10d 0b11 	add.w	fp, sp, #17
c0de5408:	9002      	str	r0, [sp, #8]
c0de540a:	2000      	movs	r0, #0
c0de540c:	f8ad 8012 	strh.w	r8, [sp, #18]
c0de5410:	8039      	strh	r1, [r7, #0]
c0de5412:	8021      	strh	r1, [r4, #0]
c0de5414:	9001      	str	r0, [sp, #4]
c0de5416:	ea5f 4008 	movs.w	r0, r8, lsl #16
c0de541a:	d051      	beq.n	c0de54c0 <nbgl_getTextMaxLenAndWidth+0xe0>
c0de541c:	a805      	add	r0, sp, #20
c0de541e:	f10d 0112 	add.w	r1, sp, #18
c0de5422:	465a      	mov	r2, fp
c0de5424:	f7ff ff0d 	bl	c0de5242 <nbgl_popUnicodeChar>
c0de5428:	2808      	cmp	r0, #8
c0de542a:	d029      	beq.n	c0de5480 <nbgl_getTextMaxLenAndWidth+0xa0>
c0de542c:	4682      	mov	sl, r0
c0de542e:	280c      	cmp	r0, #12
c0de5430:	d03f      	beq.n	c0de54b2 <nbgl_getTextMaxLenAndWidth+0xd2>
c0de5432:	f1ba 0f0a 	cmp.w	sl, #10
c0de5436:	d03c      	beq.n	c0de54b2 <nbgl_getTextMaxLenAndWidth+0xd2>
c0de5438:	f89d 2011 	ldrb.w	r2, [sp, #17]
c0de543c:	4628      	mov	r0, r5
c0de543e:	4651      	mov	r1, sl
c0de5440:	f7ff ff9c 	bl	c0de537c <getCharWidth>
c0de5444:	b340      	cbz	r0, c0de5498 <nbgl_getTextMaxLenAndWidth+0xb8>
c0de5446:	990f      	ldr	r1, [sp, #60]	@ 0x3c
c0de5448:	b149      	cbz	r1, c0de545e <nbgl_getTextMaxLenAndWidth+0x7e>
c0de544a:	f1ba 0f20 	cmp.w	sl, #32
c0de544e:	bf18      	it	ne
c0de5450:	f1ba 0f5f 	cmpne.w	sl, #95	@ 0x5f
c0de5454:	d129      	bne.n	c0de54aa <nbgl_getTextMaxLenAndWidth+0xca>
c0de5456:	8839      	ldrh	r1, [r7, #0]
c0de5458:	9102      	str	r1, [sp, #8]
c0de545a:	8821      	ldrh	r1, [r4, #0]
c0de545c:	9101      	str	r1, [sp, #4]
c0de545e:	8839      	ldrh	r1, [r7, #0]
c0de5460:	9a03      	ldr	r2, [sp, #12]
c0de5462:	4401      	add	r1, r0
c0de5464:	4291      	cmp	r1, r2
c0de5466:	d82e      	bhi.n	c0de54c6 <nbgl_getTextMaxLenAndWidth+0xe6>
c0de5468:	f8bd 1012 	ldrh.w	r1, [sp, #18]
c0de546c:	8823      	ldrh	r3, [r4, #0]
c0de546e:	eba8 0201 	sub.w	r2, r8, r1
c0de5472:	4688      	mov	r8, r1
c0de5474:	441a      	add	r2, r3
c0de5476:	8022      	strh	r2, [r4, #0]
c0de5478:	883a      	ldrh	r2, [r7, #0]
c0de547a:	4410      	add	r0, r2
c0de547c:	8038      	strh	r0, [r7, #0]
c0de547e:	e7ca      	b.n	c0de5416 <nbgl_getTextMaxLenAndWidth+0x36>
c0de5480:	b2f0      	uxtb	r0, r6
c0de5482:	280a      	cmp	r0, #10
c0de5484:	d003      	beq.n	c0de548e <nbgl_getTextMaxLenAndWidth+0xae>
c0de5486:	2808      	cmp	r0, #8
c0de5488:	d106      	bne.n	c0de5498 <nbgl_getTextMaxLenAndWidth+0xb8>
c0de548a:	260a      	movs	r6, #10
c0de548c:	e000      	b.n	c0de5490 <nbgl_getTextMaxLenAndWidth+0xb0>
c0de548e:	2608      	movs	r6, #8
c0de5490:	4630      	mov	r0, r6
c0de5492:	f006 fd1f 	bl	c0debed4 <nbgl_font_getFont>
c0de5496:	4605      	mov	r5, r0
c0de5498:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de549c:	8822      	ldrh	r2, [r4, #0]
c0de549e:	eba8 0100 	sub.w	r1, r8, r0
c0de54a2:	4680      	mov	r8, r0
c0de54a4:	4411      	add	r1, r2
c0de54a6:	8021      	strh	r1, [r4, #0]
c0de54a8:	e7b5      	b.n	c0de5416 <nbgl_getTextMaxLenAndWidth+0x36>
c0de54aa:	f1ba 0f2d 	cmp.w	sl, #45	@ 0x2d
c0de54ae:	d0d2      	beq.n	c0de5456 <nbgl_getTextMaxLenAndWidth+0x76>
c0de54b0:	e7d5      	b.n	c0de545e <nbgl_getTextMaxLenAndWidth+0x7e>
c0de54b2:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de54b6:	8821      	ldrh	r1, [r4, #0]
c0de54b8:	eba8 0000 	sub.w	r0, r8, r0
c0de54bc:	4408      	add	r0, r1
c0de54be:	8020      	strh	r0, [r4, #0]
c0de54c0:	b006      	add	sp, #24
c0de54c2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de54c6:	980f      	ldr	r0, [sp, #60]	@ 0x3c
c0de54c8:	9902      	ldr	r1, [sp, #8]
c0de54ca:	2800      	cmp	r0, #0
c0de54cc:	d0f8      	beq.n	c0de54c0 <nbgl_getTextMaxLenAndWidth+0xe0>
c0de54ce:	2900      	cmp	r1, #0
c0de54d0:	d0f6      	beq.n	c0de54c0 <nbgl_getTextMaxLenAndWidth+0xe0>
c0de54d2:	9801      	ldr	r0, [sp, #4]
c0de54d4:	3001      	adds	r0, #1
c0de54d6:	8020      	strh	r0, [r4, #0]
c0de54d8:	8039      	strh	r1, [r7, #0]
c0de54da:	e7f1      	b.n	c0de54c0 <nbgl_getTextMaxLenAndWidth+0xe0>

c0de54dc <nbgl_getTextMaxLenInNbLines>:
c0de54dc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de54e0:	b086      	sub	sp, #24
c0de54e2:	461d      	mov	r5, r3
c0de54e4:	9202      	str	r2, [sp, #8]
c0de54e6:	460e      	mov	r6, r1
c0de54e8:	4607      	mov	r7, r0
c0de54ea:	9105      	str	r1, [sp, #20]
c0de54ec:	f7ff fea7 	bl	c0de523e <nbgl_getFont>
c0de54f0:	4604      	mov	r4, r0
c0de54f2:	4630      	mov	r0, r6
c0de54f4:	9601      	str	r6, [sp, #4]
c0de54f6:	f007 f8a7 	bl	c0dec648 <strlen>
c0de54fa:	f8dd a03c 	ldr.w	sl, [sp, #60]	@ 0x3c
c0de54fe:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de5502:	2100      	movs	r1, #0
c0de5504:	b280      	uxth	r0, r0
c0de5506:	f04f 0b00 	mov.w	fp, #0
c0de550a:	f04f 0800 	mov.w	r8, #0
c0de550e:	9103      	str	r1, [sp, #12]
c0de5510:	2800      	cmp	r0, #0
c0de5512:	d066      	beq.n	c0de55e2 <nbgl_getTextMaxLenInNbLines+0x106>
c0de5514:	0428      	lsls	r0, r5, #16
c0de5516:	d064      	beq.n	c0de55e2 <nbgl_getTextMaxLenInNbLines+0x106>
c0de5518:	9e05      	ldr	r6, [sp, #20]
c0de551a:	a805      	add	r0, sp, #20
c0de551c:	f10d 0112 	add.w	r1, sp, #18
c0de5520:	f10d 0211 	add.w	r2, sp, #17
c0de5524:	f7ff fe8d 	bl	c0de5242 <nbgl_popUnicodeChar>
c0de5528:	4601      	mov	r1, r0
c0de552a:	f1ba 0f00 	cmp.w	sl, #0
c0de552e:	d012      	beq.n	c0de5556 <nbgl_getTextMaxLenInNbLines+0x7a>
c0de5530:	f1a1 0008 	sub.w	r0, r1, #8
c0de5534:	2818      	cmp	r0, #24
c0de5536:	d805      	bhi.n	c0de5544 <nbgl_getTextMaxLenInNbLines+0x68>
c0de5538:	2201      	movs	r2, #1
c0de553a:	fa02 f000 	lsl.w	r0, r2, r0
c0de553e:	4a2f      	ldr	r2, [pc, #188]	@ (c0de55fc <nbgl_getTextMaxLenInNbLines+0x120>)
c0de5540:	4210      	tst	r0, r2
c0de5542:	d103      	bne.n	c0de554c <nbgl_getTextMaxLenInNbLines+0x70>
c0de5544:	295f      	cmp	r1, #95	@ 0x5f
c0de5546:	d001      	beq.n	c0de554c <nbgl_getTextMaxLenInNbLines+0x70>
c0de5548:	292d      	cmp	r1, #45	@ 0x2d
c0de554a:	d104      	bne.n	c0de5556 <nbgl_getTextMaxLenInNbLines+0x7a>
c0de554c:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de5550:	f8dd b014 	ldr.w	fp, [sp, #20]
c0de5554:	9003      	str	r0, [sp, #12]
c0de5556:	2908      	cmp	r1, #8
c0de5558:	d01d      	beq.n	c0de5596 <nbgl_getTextMaxLenInNbLines+0xba>
c0de555a:	290a      	cmp	r1, #10
c0de555c:	d023      	beq.n	c0de55a6 <nbgl_getTextMaxLenInNbLines+0xca>
c0de555e:	290c      	cmp	r1, #12
c0de5560:	d03e      	beq.n	c0de55e0 <nbgl_getTextMaxLenInNbLines+0x104>
c0de5562:	f89d 2011 	ldrb.w	r2, [sp, #17]
c0de5566:	4620      	mov	r0, r4
c0de5568:	f7ff ff08 	bl	c0de537c <getCharWidth>
c0de556c:	b3a8      	cbz	r0, c0de55da <nbgl_getTextMaxLenInNbLines+0xfe>
c0de556e:	fa1f f188 	uxth.w	r1, r8
c0de5572:	eb00 0801 	add.w	r8, r0, r1
c0de5576:	9802      	ldr	r0, [sp, #8]
c0de5578:	4580      	cmp	r8, r0
c0de557a:	d92e      	bls.n	c0de55da <nbgl_getTextMaxLenInNbLines+0xfe>
c0de557c:	f1ba 0f00 	cmp.w	sl, #0
c0de5580:	bf18      	it	ne
c0de5582:	f1bb 0f00 	cmpne.w	fp, #0
c0de5586:	d11e      	bne.n	c0de55c6 <nbgl_getTextMaxLenInNbLines+0xea>
c0de5588:	9805      	ldr	r0, [sp, #20]
c0de558a:	f8bd 1012 	ldrh.w	r1, [sp, #18]
c0de558e:	9605      	str	r6, [sp, #20]
c0de5590:	1b80      	subs	r0, r0, r6
c0de5592:	4408      	add	r0, r1
c0de5594:	e01c      	b.n	c0de55d0 <nbgl_getTextMaxLenInNbLines+0xf4>
c0de5596:	b2f8      	uxtb	r0, r7
c0de5598:	2808      	cmp	r0, #8
c0de559a:	d00e      	beq.n	c0de55ba <nbgl_getTextMaxLenInNbLines+0xde>
c0de559c:	280a      	cmp	r0, #10
c0de559e:	d11c      	bne.n	c0de55da <nbgl_getTextMaxLenInNbLines+0xfe>
c0de55a0:	2708      	movs	r7, #8
c0de55a2:	2008      	movs	r0, #8
c0de55a4:	e00b      	b.n	c0de55be <nbgl_getTextMaxLenInNbLines+0xe2>
c0de55a6:	3d01      	subs	r5, #1
c0de55a8:	0428      	lsls	r0, r5, #16
c0de55aa:	d114      	bne.n	c0de55d6 <nbgl_getTextMaxLenInNbLines+0xfa>
c0de55ac:	9805      	ldr	r0, [sp, #20]
c0de55ae:	f04f 0800 	mov.w	r8, #0
c0de55b2:	2500      	movs	r5, #0
c0de55b4:	3801      	subs	r0, #1
c0de55b6:	9005      	str	r0, [sp, #20]
c0de55b8:	e00f      	b.n	c0de55da <nbgl_getTextMaxLenInNbLines+0xfe>
c0de55ba:	270a      	movs	r7, #10
c0de55bc:	200a      	movs	r0, #10
c0de55be:	f006 fc89 	bl	c0debed4 <nbgl_font_getFont>
c0de55c2:	4604      	mov	r4, r0
c0de55c4:	e009      	b.n	c0de55da <nbgl_getTextMaxLenInNbLines+0xfe>
c0de55c6:	9803      	ldr	r0, [sp, #12]
c0de55c8:	f8cd b014 	str.w	fp, [sp, #20]
c0de55cc:	f04f 0b00 	mov.w	fp, #0
c0de55d0:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de55d4:	3d01      	subs	r5, #1
c0de55d6:	f04f 0800 	mov.w	r8, #0
c0de55da:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de55de:	e797      	b.n	c0de5510 <nbgl_getTextMaxLenInNbLines+0x34>
c0de55e0:	2500      	movs	r5, #0
c0de55e2:	9805      	ldr	r0, [sp, #20]
c0de55e4:	9901      	ldr	r1, [sp, #4]
c0de55e6:	1a40      	subs	r0, r0, r1
c0de55e8:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de55ea:	8008      	strh	r0, [r1, #0]
c0de55ec:	b2a8      	uxth	r0, r5
c0de55ee:	fab0 f080 	clz	r0, r0
c0de55f2:	0940      	lsrs	r0, r0, #5
c0de55f4:	b006      	add	sp, #24
c0de55f6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de55fa:	bf00      	nop
c0de55fc:	01000015 	.word	0x01000015

c0de5600 <nbgl_getTextMaxLenAndWidthFromEnd>:
c0de5600:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5604:	461c      	mov	r4, r3
c0de5606:	4690      	mov	r8, r2
c0de5608:	460e      	mov	r6, r1
c0de560a:	f7ff fe18 	bl	c0de523e <nbgl_getFont>
c0de560e:	4682      	mov	sl, r0
c0de5610:	4630      	mov	r0, r6
c0de5612:	f7ff fed5 	bl	c0de53c0 <nbgl_getTextLength>
c0de5616:	f8dd b020 	ldr.w	fp, [sp, #32]
c0de561a:	4607      	mov	r7, r0
c0de561c:	2000      	movs	r0, #0
c0de561e:	f8ab 0000 	strh.w	r0, [fp]
c0de5622:	8020      	strh	r0, [r4, #0]
c0de5624:	463d      	mov	r5, r7
c0de5626:	b33f      	cbz	r7, c0de5678 <nbgl_getTextMaxLenAndWidthFromEnd+0x78>
c0de5628:	1e6f      	subs	r7, r5, #1
c0de562a:	b2b8      	uxth	r0, r7
c0de562c:	5c30      	ldrb	r0, [r6, r0]
c0de562e:	280a      	cmp	r0, #10
c0de5630:	d01f      	beq.n	c0de5672 <nbgl_getTextMaxLenAndWidthFromEnd+0x72>
c0de5632:	f89a 100b 	ldrb.w	r1, [sl, #11]
c0de5636:	4288      	cmp	r0, r1
c0de5638:	d3f4      	bcc.n	c0de5624 <nbgl_getTextMaxLenAndWidthFromEnd+0x24>
c0de563a:	f89a 200c 	ldrb.w	r2, [sl, #12]
c0de563e:	4290      	cmp	r0, r2
c0de5640:	d8f0      	bhi.n	c0de5624 <nbgl_getTextMaxLenAndWidthFromEnd+0x24>
c0de5642:	1a40      	subs	r0, r0, r1
c0de5644:	f8da 1010 	ldr.w	r1, [sl, #16]
c0de5648:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de564c:	f006 fbd2 	bl	c0debdf4 <pic>
c0de5650:	6840      	ldr	r0, [r0, #4]
c0de5652:	f8bb 1000 	ldrh.w	r1, [fp]
c0de5656:	f3c0 0045 	ubfx	r0, r0, #1, #6
c0de565a:	4401      	add	r1, r0
c0de565c:	4541      	cmp	r1, r8
c0de565e:	d80b      	bhi.n	c0de5678 <nbgl_getTextMaxLenAndWidthFromEnd+0x78>
c0de5660:	8821      	ldrh	r1, [r4, #0]
c0de5662:	3101      	adds	r1, #1
c0de5664:	8021      	strh	r1, [r4, #0]
c0de5666:	f8bb 1000 	ldrh.w	r1, [fp]
c0de566a:	4408      	add	r0, r1
c0de566c:	f8ab 0000 	strh.w	r0, [fp]
c0de5670:	e7d8      	b.n	c0de5624 <nbgl_getTextMaxLenAndWidthFromEnd+0x24>
c0de5672:	8820      	ldrh	r0, [r4, #0]
c0de5674:	3001      	adds	r0, #1
c0de5676:	e7d4      	b.n	c0de5622 <nbgl_getTextMaxLenAndWidthFromEnd+0x22>
c0de5678:	2d00      	cmp	r5, #0
c0de567a:	bf18      	it	ne
c0de567c:	2501      	movne	r5, #1
c0de567e:	4628      	mov	r0, r5
c0de5680:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de5684 <nbgl_getTextNbLinesInWidth>:
c0de5684:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de5688:	461c      	mov	r4, r3
c0de568a:	9200      	str	r2, [sp, #0]
c0de568c:	460d      	mov	r5, r1
c0de568e:	4606      	mov	r6, r0
c0de5690:	9103      	str	r1, [sp, #12]
c0de5692:	f7ff fdd4 	bl	c0de523e <nbgl_getFont>
c0de5696:	4607      	mov	r7, r0
c0de5698:	4628      	mov	r0, r5
c0de569a:	f006 ffd5 	bl	c0dec648 <strlen>
c0de569e:	2100      	movs	r1, #0
c0de56a0:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de56a4:	b280      	uxth	r0, r0
c0de56a6:	f04f 0b00 	mov.w	fp, #0
c0de56aa:	f04f 0800 	mov.w	r8, #0
c0de56ae:	f04f 0a00 	mov.w	sl, #0
c0de56b2:	9101      	str	r1, [sp, #4]
c0de56b4:	2800      	cmp	r0, #0
c0de56b6:	d056      	beq.n	c0de5766 <nbgl_getTextNbLinesInWidth+0xe2>
c0de56b8:	9d03      	ldr	r5, [sp, #12]
c0de56ba:	a803      	add	r0, sp, #12
c0de56bc:	f10d 010a 	add.w	r1, sp, #10
c0de56c0:	f10d 0209 	add.w	r2, sp, #9
c0de56c4:	f7ff fdbd 	bl	c0de5242 <nbgl_popUnicodeChar>
c0de56c8:	4601      	mov	r1, r0
c0de56ca:	b18c      	cbz	r4, c0de56f0 <nbgl_getTextNbLinesInWidth+0x6c>
c0de56cc:	f1a1 0008 	sub.w	r0, r1, #8
c0de56d0:	2818      	cmp	r0, #24
c0de56d2:	d805      	bhi.n	c0de56e0 <nbgl_getTextNbLinesInWidth+0x5c>
c0de56d4:	2201      	movs	r2, #1
c0de56d6:	fa02 f000 	lsl.w	r0, r2, r0
c0de56da:	4a28      	ldr	r2, [pc, #160]	@ (c0de577c <nbgl_getTextNbLinesInWidth+0xf8>)
c0de56dc:	4210      	tst	r0, r2
c0de56de:	d103      	bne.n	c0de56e8 <nbgl_getTextNbLinesInWidth+0x64>
c0de56e0:	295f      	cmp	r1, #95	@ 0x5f
c0de56e2:	d001      	beq.n	c0de56e8 <nbgl_getTextNbLinesInWidth+0x64>
c0de56e4:	292d      	cmp	r1, #45	@ 0x2d
c0de56e6:	d103      	bne.n	c0de56f0 <nbgl_getTextNbLinesInWidth+0x6c>
c0de56e8:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de56ec:	46aa      	mov	sl, r5
c0de56ee:	9001      	str	r0, [sp, #4]
c0de56f0:	2908      	cmp	r1, #8
c0de56f2:	d021      	beq.n	c0de5738 <nbgl_getTextNbLinesInWidth+0xb4>
c0de56f4:	290a      	cmp	r1, #10
c0de56f6:	d027      	beq.n	c0de5748 <nbgl_getTextNbLinesInWidth+0xc4>
c0de56f8:	290c      	cmp	r1, #12
c0de56fa:	d034      	beq.n	c0de5766 <nbgl_getTextNbLinesInWidth+0xe2>
c0de56fc:	f89d 2009 	ldrb.w	r2, [sp, #9]
c0de5700:	4638      	mov	r0, r7
c0de5702:	f7ff fe3b 	bl	c0de537c <getCharWidth>
c0de5706:	b358      	cbz	r0, c0de5760 <nbgl_getTextNbLinesInWidth+0xdc>
c0de5708:	fa1f f18b 	uxth.w	r1, fp
c0de570c:	eb00 0b01 	add.w	fp, r0, r1
c0de5710:	9900      	ldr	r1, [sp, #0]
c0de5712:	458b      	cmp	fp, r1
c0de5714:	d924      	bls.n	c0de5760 <nbgl_getTextNbLinesInWidth+0xdc>
c0de5716:	b15c      	cbz	r4, c0de5730 <nbgl_getTextNbLinesInWidth+0xac>
c0de5718:	f1ba 0f00 	cmp.w	sl, #0
c0de571c:	d008      	beq.n	c0de5730 <nbgl_getTextNbLinesInWidth+0xac>
c0de571e:	9801      	ldr	r0, [sp, #4]
c0de5720:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de5724:	f10a 0001 	add.w	r0, sl, #1
c0de5728:	f04f 0a00 	mov.w	sl, #0
c0de572c:	9003      	str	r0, [sp, #12]
c0de572e:	2000      	movs	r0, #0
c0de5730:	f108 0801 	add.w	r8, r8, #1
c0de5734:	4683      	mov	fp, r0
c0de5736:	e013      	b.n	c0de5760 <nbgl_getTextNbLinesInWidth+0xdc>
c0de5738:	b2f0      	uxtb	r0, r6
c0de573a:	2808      	cmp	r0, #8
c0de573c:	d00b      	beq.n	c0de5756 <nbgl_getTextNbLinesInWidth+0xd2>
c0de573e:	280a      	cmp	r0, #10
c0de5740:	d10e      	bne.n	c0de5760 <nbgl_getTextNbLinesInWidth+0xdc>
c0de5742:	2608      	movs	r6, #8
c0de5744:	2008      	movs	r0, #8
c0de5746:	e008      	b.n	c0de575a <nbgl_getTextNbLinesInWidth+0xd6>
c0de5748:	f108 0801 	add.w	r8, r8, #1
c0de574c:	f04f 0b00 	mov.w	fp, #0
c0de5750:	f04f 0a00 	mov.w	sl, #0
c0de5754:	e004      	b.n	c0de5760 <nbgl_getTextNbLinesInWidth+0xdc>
c0de5756:	260a      	movs	r6, #10
c0de5758:	200a      	movs	r0, #10
c0de575a:	f006 fbbb 	bl	c0debed4 <nbgl_font_getFont>
c0de575e:	4607      	mov	r7, r0
c0de5760:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de5764:	e7a6      	b.n	c0de56b4 <nbgl_getTextNbLinesInWidth+0x30>
c0de5766:	ea5f 400b 	movs.w	r0, fp, lsl #16
c0de576a:	bf18      	it	ne
c0de576c:	f108 0801 	addne.w	r8, r8, #1
c0de5770:	fa1f f088 	uxth.w	r0, r8
c0de5774:	b004      	add	sp, #16
c0de5776:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de577a:	bf00      	nop
c0de577c:	01000015 	.word	0x01000015

c0de5780 <nbgl_getTextNbPagesInWidth>:
c0de5780:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5784:	b086      	sub	sp, #24
c0de5786:	e9cd 3200 	strd	r3, r2, [sp]
c0de578a:	460c      	mov	r4, r1
c0de578c:	9105      	str	r1, [sp, #20]
c0de578e:	9003      	str	r0, [sp, #12]
c0de5790:	f7ff fd55 	bl	c0de523e <nbgl_getFont>
c0de5794:	9002      	str	r0, [sp, #8]
c0de5796:	4620      	mov	r0, r4
c0de5798:	f006 ff56 	bl	c0dec648 <strlen>
c0de579c:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de57a0:	b280      	uxth	r0, r0
c0de57a2:	2600      	movs	r6, #0
c0de57a4:	f10d 0711 	add.w	r7, sp, #17
c0de57a8:	f04f 0b00 	mov.w	fp, #0
c0de57ac:	f04f 0801 	mov.w	r8, #1
c0de57b0:	2500      	movs	r5, #0
c0de57b2:	f04f 0a00 	mov.w	sl, #0
c0de57b6:	2800      	cmp	r0, #0
c0de57b8:	d06e      	beq.n	c0de5898 <nbgl_getTextNbPagesInWidth+0x118>
c0de57ba:	9c05      	ldr	r4, [sp, #20]
c0de57bc:	a805      	add	r0, sp, #20
c0de57be:	f10d 0112 	add.w	r1, sp, #18
c0de57c2:	463a      	mov	r2, r7
c0de57c4:	f7ff fd3d 	bl	c0de5242 <nbgl_popUnicodeChar>
c0de57c8:	4601      	mov	r1, r0
c0de57ca:	3808      	subs	r0, #8
c0de57cc:	2818      	cmp	r0, #24
c0de57ce:	d814      	bhi.n	c0de57fa <nbgl_getTextNbPagesInWidth+0x7a>
c0de57d0:	2201      	movs	r2, #1
c0de57d2:	fa02 f000 	lsl.w	r0, r2, r0
c0de57d6:	4a33      	ldr	r2, [pc, #204]	@ (c0de58a4 <nbgl_getTextNbPagesInWidth+0x124>)
c0de57d8:	4210      	tst	r0, r2
c0de57da:	d00e      	beq.n	c0de57fa <nbgl_getTextNbPagesInWidth+0x7a>
c0de57dc:	f8bd a012 	ldrh.w	sl, [sp, #18]
c0de57e0:	4625      	mov	r5, r4
c0de57e2:	2908      	cmp	r1, #8
c0de57e4:	d024      	beq.n	c0de5830 <nbgl_getTextNbPagesInWidth+0xb0>
c0de57e6:	290a      	cmp	r1, #10
c0de57e8:	d00c      	beq.n	c0de5804 <nbgl_getTextNbPagesInWidth+0x84>
c0de57ea:	290c      	cmp	r1, #12
c0de57ec:	d12a      	bne.n	c0de5844 <nbgl_getTextNbPagesInWidth+0xc4>
c0de57ee:	f108 0801 	add.w	r8, r8, #1
c0de57f2:	2600      	movs	r6, #0
c0de57f4:	f04f 0b00 	mov.w	fp, #0
c0de57f8:	e048      	b.n	c0de588c <nbgl_getTextNbPagesInWidth+0x10c>
c0de57fa:	295f      	cmp	r1, #95	@ 0x5f
c0de57fc:	d0ee      	beq.n	c0de57dc <nbgl_getTextNbPagesInWidth+0x5c>
c0de57fe:	292d      	cmp	r1, #45	@ 0x2d
c0de5800:	d0ec      	beq.n	c0de57dc <nbgl_getTextNbPagesInWidth+0x5c>
c0de5802:	e7ee      	b.n	c0de57e2 <nbgl_getTextNbPagesInWidth+0x62>
c0de5804:	f10b 0b01 	add.w	fp, fp, #1
c0de5808:	9901      	ldr	r1, [sp, #4]
c0de580a:	fa1f f08b 	uxth.w	r0, fp
c0de580e:	1a40      	subs	r0, r0, r1
c0de5810:	f8bd 1012 	ldrh.w	r1, [sp, #18]
c0de5814:	fab0 f080 	clz	r0, r0
c0de5818:	0940      	lsrs	r0, r0, #5
c0de581a:	2900      	cmp	r1, #0
c0de581c:	bf18      	it	ne
c0de581e:	2101      	movne	r1, #1
c0de5820:	4008      	ands	r0, r1
c0de5822:	bf18      	it	ne
c0de5824:	f04f 0b00 	movne.w	fp, #0
c0de5828:	4480      	add	r8, r0
c0de582a:	2600      	movs	r6, #0
c0de582c:	2500      	movs	r5, #0
c0de582e:	e02d      	b.n	c0de588c <nbgl_getTextNbPagesInWidth+0x10c>
c0de5830:	9803      	ldr	r0, [sp, #12]
c0de5832:	b2c0      	uxtb	r0, r0
c0de5834:	2808      	cmp	r0, #8
c0de5836:	d023      	beq.n	c0de5880 <nbgl_getTextNbPagesInWidth+0x100>
c0de5838:	280a      	cmp	r0, #10
c0de583a:	d127      	bne.n	c0de588c <nbgl_getTextNbPagesInWidth+0x10c>
c0de583c:	2008      	movs	r0, #8
c0de583e:	9003      	str	r0, [sp, #12]
c0de5840:	2008      	movs	r0, #8
c0de5842:	e020      	b.n	c0de5886 <nbgl_getTextNbPagesInWidth+0x106>
c0de5844:	f89d 2011 	ldrb.w	r2, [sp, #17]
c0de5848:	9802      	ldr	r0, [sp, #8]
c0de584a:	f7ff fd97 	bl	c0de537c <getCharWidth>
c0de584e:	b1e8      	cbz	r0, c0de588c <nbgl_getTextNbPagesInWidth+0x10c>
c0de5850:	b2b1      	uxth	r1, r6
c0de5852:	1846      	adds	r6, r0, r1
c0de5854:	9900      	ldr	r1, [sp, #0]
c0de5856:	428e      	cmp	r6, r1
c0de5858:	d918      	bls.n	c0de588c <nbgl_getTextNbPagesInWidth+0x10c>
c0de585a:	b125      	cbz	r5, c0de5866 <nbgl_getTextNbPagesInWidth+0xe6>
c0de585c:	1c68      	adds	r0, r5, #1
c0de585e:	f8ad a012 	strh.w	sl, [sp, #18]
c0de5862:	9005      	str	r0, [sp, #20]
c0de5864:	2000      	movs	r0, #0
c0de5866:	f10b 0b01 	add.w	fp, fp, #1
c0de586a:	9a01      	ldr	r2, [sp, #4]
c0de586c:	fa1f f18b 	uxth.w	r1, fp
c0de5870:	4291      	cmp	r1, r2
c0de5872:	d10e      	bne.n	c0de5892 <nbgl_getTextNbPagesInWidth+0x112>
c0de5874:	f108 0801 	add.w	r8, r8, #1
c0de5878:	f04f 0b00 	mov.w	fp, #0
c0de587c:	4606      	mov	r6, r0
c0de587e:	e7d5      	b.n	c0de582c <nbgl_getTextNbPagesInWidth+0xac>
c0de5880:	200a      	movs	r0, #10
c0de5882:	9003      	str	r0, [sp, #12]
c0de5884:	200a      	movs	r0, #10
c0de5886:	f006 fb25 	bl	c0debed4 <nbgl_font_getFont>
c0de588a:	9002      	str	r0, [sp, #8]
c0de588c:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de5890:	e791      	b.n	c0de57b6 <nbgl_getTextNbPagesInWidth+0x36>
c0de5892:	2500      	movs	r5, #0
c0de5894:	4606      	mov	r6, r0
c0de5896:	e7f9      	b.n	c0de588c <nbgl_getTextNbPagesInWidth+0x10c>
c0de5898:	fa5f f088 	uxtb.w	r0, r8
c0de589c:	b006      	add	sp, #24
c0de589e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de58a2:	bf00      	nop
c0de58a4:	01000015 	.word	0x01000015

c0de58a8 <nbgl_textReduceOnNbLines>:
c0de58a8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de58ac:	b088      	sub	sp, #32
c0de58ae:	469a      	mov	sl, r3
c0de58b0:	4614      	mov	r4, r2
c0de58b2:	460e      	mov	r6, r1
c0de58b4:	4607      	mov	r7, r0
c0de58b6:	f7ff fcc2 	bl	c0de523e <nbgl_getFont>
c0de58ba:	4683      	mov	fp, r0
c0de58bc:	4630      	mov	r0, r6
c0de58be:	f006 fec3 	bl	c0dec648 <strlen>
c0de58c2:	4945      	ldr	r1, [pc, #276]	@ (c0de59d8 <nbgl_textReduceOnNbLines+0x130>)
c0de58c4:	4680      	mov	r8, r0
c0de58c6:	4638      	mov	r0, r7
c0de58c8:	4479      	add	r1, pc
c0de58ca:	f7ff fd52 	bl	c0de5372 <nbgl_getTextWidth>
c0de58ce:	ea5f 71ca 	movs.w	r1, sl, lsl #31
c0de58d2:	d050      	beq.n	c0de5976 <nbgl_textReduceOnNbLines+0xce>
c0de58d4:	f8cd b01c 	str.w	fp, [sp, #28]
c0de58d8:	f04f 0b01 	mov.w	fp, #1
c0de58dc:	1a20      	subs	r0, r4, r0
c0de58de:	4625      	mov	r5, r4
c0de58e0:	e9dd 1210 	ldrd	r1, r2, [sp, #64]	@ 0x40
c0de58e4:	9106      	str	r1, [sp, #24]
c0de58e6:	eb0b 015a 	add.w	r1, fp, sl, lsr #1
c0de58ea:	9103      	str	r1, [sp, #12]
c0de58ec:	2102      	movs	r1, #2
c0de58ee:	fb90 f0f1 	sdiv	r0, r0, r1
c0de58f2:	ea4f 015a 	mov.w	r1, sl, lsr #1
c0de58f6:	f04f 0a00 	mov.w	sl, #0
c0de58fa:	b280      	uxth	r0, r0
c0de58fc:	9002      	str	r0, [sp, #8]
c0de58fe:	9101      	str	r1, [sp, #4]
c0de5900:	fa1f f188 	uxth.w	r1, r8
c0de5904:	4610      	mov	r0, r2
c0de5906:	f04f 0800 	mov.w	r8, #0
c0de590a:	e9cd 2104 	strd	r2, r1, [sp, #16]
c0de590e:	4582      	cmp	sl, r0
c0de5910:	f04f 0000 	mov.w	r0, #0
c0de5914:	bf38      	it	cc
c0de5916:	2001      	movcc	r0, #1
c0de5918:	458a      	cmp	sl, r1
c0de591a:	f04f 0100 	mov.w	r1, #0
c0de591e:	bf38      	it	cc
c0de5920:	2101      	movcc	r1, #1
c0de5922:	ea01 0400 	and.w	r4, r1, r0
c0de5926:	b314      	cbz	r4, c0de596e <nbgl_textReduceOnNbLines+0xc6>
c0de5928:	f816 700a 	ldrb.w	r7, [r6, sl]
c0de592c:	9807      	ldr	r0, [sp, #28]
c0de592e:	2200      	movs	r2, #0
c0de5930:	4639      	mov	r1, r7
c0de5932:	f7ff fd23 	bl	c0de537c <getCharWidth>
c0de5936:	b190      	cbz	r0, c0de595e <nbgl_textReduceOnNbLines+0xb6>
c0de5938:	fa1f f188 	uxth.w	r1, r8
c0de593c:	eb00 0801 	add.w	r8, r0, r1
c0de5940:	45a8      	cmp	r8, r5
c0de5942:	d904      	bls.n	c0de594e <nbgl_textReduceOnNbLines+0xa6>
c0de5944:	f10b 0b01 	add.w	fp, fp, #1
c0de5948:	f04f 0800 	mov.w	r8, #0
c0de594c:	e7eb      	b.n	c0de5926 <nbgl_textReduceOnNbLines+0x7e>
c0de594e:	9903      	ldr	r1, [sp, #12]
c0de5950:	fa5f f08b 	uxtb.w	r0, fp
c0de5954:	4281      	cmp	r1, r0
c0de5956:	d102      	bne.n	c0de595e <nbgl_textReduceOnNbLines+0xb6>
c0de5958:	9802      	ldr	r0, [sp, #8]
c0de595a:	4580      	cmp	r8, r0
c0de595c:	d80e      	bhi.n	c0de597c <nbgl_textReduceOnNbLines+0xd4>
c0de595e:	9806      	ldr	r0, [sp, #24]
c0de5960:	f800 700a 	strb.w	r7, [r0, sl]
c0de5964:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
c0de5968:	f10a 0a01 	add.w	sl, sl, #1
c0de596c:	e7cf      	b.n	c0de590e <nbgl_textReduceOnNbLines+0x66>
c0de596e:	9906      	ldr	r1, [sp, #24]
c0de5970:	2000      	movs	r0, #0
c0de5972:	f801 000a 	strb.w	r0, [r1, sl]
c0de5976:	b008      	add	sp, #32
c0de5978:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de597c:	9906      	ldr	r1, [sp, #24]
c0de597e:	202e      	movs	r0, #46	@ 0x2e
c0de5980:	2400      	movs	r4, #0
c0de5982:	eb01 080a 	add.w	r8, r1, sl
c0de5986:	f801 000a 	strb.w	r0, [r1, sl]
c0de598a:	f888 0001 	strb.w	r0, [r8, #1]
c0de598e:	f808 0c01 	strb.w	r0, [r8, #-1]
c0de5992:	e9dd 1001 	ldrd	r1, r0, [sp, #4]
c0de5996:	fb01 0705 	mla	r7, r1, r5, r0
c0de599a:	9805      	ldr	r0, [sp, #20]
c0de599c:	2500      	movs	r5, #0
c0de599e:	eb06 0a00 	add.w	sl, r6, r0
c0de59a2:	9e07      	ldr	r6, [sp, #28]
c0de59a4:	b2a0      	uxth	r0, r4
c0de59a6:	4287      	cmp	r7, r0
c0de59a8:	d90a      	bls.n	c0de59c0 <nbgl_textReduceOnNbLines+0x118>
c0de59aa:	eb0a 0005 	add.w	r0, sl, r5
c0de59ae:	2200      	movs	r2, #0
c0de59b0:	f810 1c01 	ldrb.w	r1, [r0, #-1]
c0de59b4:	4630      	mov	r0, r6
c0de59b6:	f7ff fce1 	bl	c0de537c <getCharWidth>
c0de59ba:	4404      	add	r4, r0
c0de59bc:	3d01      	subs	r5, #1
c0de59be:	e7f1      	b.n	c0de59a4 <nbgl_textReduceOnNbLines+0xfc>
c0de59c0:	eb0a 0105 	add.w	r1, sl, r5
c0de59c4:	f108 0002 	add.w	r0, r8, #2
c0de59c8:	f1c5 0201 	rsb	r2, r5, #1
c0de59cc:	3101      	adds	r1, #1
c0de59ce:	b008      	add	sp, #32
c0de59d0:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de59d4:	f006 bde1 	b.w	c0dec59a <__aeabi_memcpy>
c0de59d8:	00007133 	.word	0x00007133

c0de59dc <nbgl_layoutGet>:
c0de59dc:	b570      	push	{r4, r5, r6, lr}
c0de59de:	4605      	mov	r5, r0
c0de59e0:	7800      	ldrb	r0, [r0, #0]
c0de59e2:	b148      	cbz	r0, c0de59f8 <nbgl_layoutGet+0x1c>
c0de59e4:	4819      	ldr	r0, [pc, #100]	@ (c0de5a4c <nbgl_layoutGet+0x70>)
c0de59e6:	eb09 0100 	add.w	r1, r9, r0
c0de59ea:	7b8a      	ldrb	r2, [r1, #14]
c0de59ec:	b152      	cbz	r2, c0de5a04 <nbgl_layoutGet+0x28>
c0de59ee:	4448      	add	r0, r9
c0de59f0:	7e81      	ldrb	r1, [r0, #26]
c0de59f2:	b151      	cbz	r1, c0de5a0a <nbgl_layoutGet+0x2e>
c0de59f4:	2400      	movs	r4, #0
c0de59f6:	e026      	b.n	c0de5a46 <nbgl_layoutGet+0x6a>
c0de59f8:	4814      	ldr	r0, [pc, #80]	@ (c0de5a4c <nbgl_layoutGet+0x70>)
c0de59fa:	eb09 0400 	add.w	r4, r9, r0
c0de59fe:	2000      	movs	r0, #0
c0de5a00:	70a0      	strb	r0, [r4, #2]
c0de5a02:	e004      	b.n	c0de5a0e <nbgl_layoutGet+0x32>
c0de5a04:	f101 040c 	add.w	r4, r1, #12
c0de5a08:	e001      	b.n	c0de5a0e <nbgl_layoutGet+0x32>
c0de5a0a:	f100 0418 	add.w	r4, r0, #24
c0de5a0e:	2000      	movs	r0, #0
c0de5a10:	4626      	mov	r6, r4
c0de5a12:	60a0      	str	r0, [r4, #8]
c0de5a14:	6020      	str	r0, [r4, #0]
c0de5a16:	f846 0f04 	str.w	r0, [r6, #4]!
c0de5a1a:	6868      	ldr	r0, [r5, #4]
c0de5a1c:	f006 f9ea 	bl	c0debdf4 <pic>
c0de5a20:	60a0      	str	r0, [r4, #8]
c0de5a22:	7828      	ldrb	r0, [r5, #0]
c0de5a24:	f105 0208 	add.w	r2, r5, #8
c0de5a28:	7020      	strb	r0, [r4, #0]
c0de5a2a:	4b09      	ldr	r3, [pc, #36]	@ (c0de5a50 <nbgl_layoutGet+0x74>)
c0de5a2c:	447b      	add	r3, pc
c0de5a2e:	b120      	cbz	r0, c0de5a3a <nbgl_layoutGet+0x5e>
c0de5a30:	4630      	mov	r0, r6
c0de5a32:	2107      	movs	r1, #7
c0de5a34:	f001 ff5e 	bl	c0de78f4 <nbgl_screenPush>
c0de5a38:	e004      	b.n	c0de5a44 <nbgl_layoutGet+0x68>
c0de5a3a:	4630      	mov	r0, r6
c0de5a3c:	2107      	movs	r1, #7
c0de5a3e:	f001 fea1 	bl	c0de7784 <nbgl_screenSet>
c0de5a42:	2000      	movs	r0, #0
c0de5a44:	7060      	strb	r0, [r4, #1]
c0de5a46:	4620      	mov	r0, r4
c0de5a48:	bd70      	pop	{r4, r5, r6, pc}
c0de5a4a:	bf00      	nop
c0de5a4c:	000014a0 	.word	0x000014a0
c0de5a50:	00000025 	.word	0x00000025

c0de5a54 <buttonCallback>:
c0de5a54:	b5b0      	push	{r4, r5, r7, lr}
c0de5a56:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de5a5a:	4811      	ldr	r0, [pc, #68]	@ (c0de5aa0 <buttonCallback+0x4c>)
c0de5a5c:	2302      	movs	r3, #2
c0de5a5e:	1c5c      	adds	r4, r3, #1
c0de5a60:	d01d      	beq.n	c0de5a9e <buttonCallback+0x4a>
c0de5a62:	b2dc      	uxtb	r4, r3
c0de5a64:	eb09 0500 	add.w	r5, r9, r0
c0de5a68:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de5a6c:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de5a70:	786d      	ldrb	r5, [r5, #1]
c0de5a72:	42aa      	cmp	r2, r5
c0de5a74:	d105      	bne.n	c0de5a82 <buttonCallback+0x2e>
c0de5a76:	eb09 0500 	add.w	r5, r9, r0
c0de5a7a:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de5a7e:	78ad      	ldrb	r5, [r5, #2]
c0de5a80:	b90d      	cbnz	r5, c0de5a86 <buttonCallback+0x32>
c0de5a82:	3b01      	subs	r3, #1
c0de5a84:	e7eb      	b.n	c0de5a5e <buttonCallback+0xa>
c0de5a86:	eb09 0200 	add.w	r2, r9, r0
c0de5a8a:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de5a8e:	6892      	ldr	r2, [r2, #8]
c0de5a90:	b12a      	cbz	r2, c0de5a9e <buttonCallback+0x4a>
c0de5a92:	4448      	add	r0, r9
c0de5a94:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de5a98:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5a9c:	4710      	bx	r2
c0de5a9e:	bdb0      	pop	{r4, r5, r7, pc}
c0de5aa0:	000014a0 	.word	0x000014a0

c0de5aa4 <nbgl_layoutAddNavigation>:
c0de5aa4:	b570      	push	{r4, r5, r6, lr}
c0de5aa6:	2800      	cmp	r0, #0
c0de5aa8:	d04d      	beq.n	c0de5b46 <nbgl_layoutAddNavigation+0xa2>
c0de5aaa:	460d      	mov	r5, r1
c0de5aac:	7849      	ldrb	r1, [r1, #1]
c0de5aae:	4604      	mov	r4, r0
c0de5ab0:	07c8      	lsls	r0, r1, #31
c0de5ab2:	d022      	beq.n	c0de5afa <nbgl_layoutAddNavigation+0x56>
c0de5ab4:	7861      	ldrb	r1, [r4, #1]
c0de5ab6:	2002      	movs	r0, #2
c0de5ab8:	f001 fd90 	bl	c0de75dc <nbgl_objPoolGet>
c0de5abc:	782a      	ldrb	r2, [r5, #0]
c0de5abe:	7869      	ldrb	r1, [r5, #1]
c0de5ac0:	4b23      	ldr	r3, [pc, #140]	@ (c0de5b50 <nbgl_layoutAddNavigation+0xac>)
c0de5ac2:	4e24      	ldr	r6, [pc, #144]	@ (c0de5b54 <nbgl_layoutAddNavigation+0xb0>)
c0de5ac4:	2a00      	cmp	r2, #0
c0de5ac6:	447b      	add	r3, pc
c0de5ac8:	447e      	add	r6, pc
c0de5aca:	4602      	mov	r2, r0
c0de5acc:	bf08      	it	eq
c0de5ace:	461e      	moveq	r6, r3
c0de5ad0:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de5ad4:	0e33      	lsrs	r3, r6, #24
c0de5ad6:	70d3      	strb	r3, [r2, #3]
c0de5ad8:	0c33      	lsrs	r3, r6, #16
c0de5ada:	7093      	strb	r3, [r2, #2]
c0de5adc:	0a32      	lsrs	r2, r6, #8
c0de5ade:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de5ae2:	6862      	ldr	r2, [r4, #4]
c0de5ae4:	78a3      	ldrb	r3, [r4, #2]
c0de5ae6:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de5aea:	2203      	movs	r2, #3
c0de5aec:	77c2      	strb	r2, [r0, #31]
c0de5aee:	2204      	movs	r2, #4
c0de5af0:	7582      	strb	r2, [r0, #22]
c0de5af2:	2200      	movs	r2, #0
c0de5af4:	7242      	strb	r2, [r0, #9]
c0de5af6:	1c58      	adds	r0, r3, #1
c0de5af8:	70a0      	strb	r0, [r4, #2]
c0de5afa:	0788      	lsls	r0, r1, #30
c0de5afc:	f04f 0600 	mov.w	r6, #0
c0de5b00:	d523      	bpl.n	c0de5b4a <nbgl_layoutAddNavigation+0xa6>
c0de5b02:	7861      	ldrb	r1, [r4, #1]
c0de5b04:	2002      	movs	r0, #2
c0de5b06:	f001 fd69 	bl	c0de75dc <nbgl_objPoolGet>
c0de5b0a:	7829      	ldrb	r1, [r5, #0]
c0de5b0c:	4a12      	ldr	r2, [pc, #72]	@ (c0de5b58 <nbgl_layoutAddNavigation+0xb4>)
c0de5b0e:	4b13      	ldr	r3, [pc, #76]	@ (c0de5b5c <nbgl_layoutAddNavigation+0xb8>)
c0de5b10:	2900      	cmp	r1, #0
c0de5b12:	447a      	add	r2, pc
c0de5b14:	447b      	add	r3, pc
c0de5b16:	4601      	mov	r1, r0
c0de5b18:	bf08      	it	eq
c0de5b1a:	4613      	moveq	r3, r2
c0de5b1c:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de5b20:	0e1a      	lsrs	r2, r3, #24
c0de5b22:	7246      	strb	r6, [r0, #9]
c0de5b24:	70ca      	strb	r2, [r1, #3]
c0de5b26:	0c1a      	lsrs	r2, r3, #16
c0de5b28:	708a      	strb	r2, [r1, #2]
c0de5b2a:	0a19      	lsrs	r1, r3, #8
c0de5b2c:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de5b30:	6861      	ldr	r1, [r4, #4]
c0de5b32:	78a2      	ldrb	r2, [r4, #2]
c0de5b34:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de5b38:	2103      	movs	r1, #3
c0de5b3a:	77c1      	strb	r1, [r0, #31]
c0de5b3c:	2106      	movs	r1, #6
c0de5b3e:	7581      	strb	r1, [r0, #22]
c0de5b40:	1c50      	adds	r0, r2, #1
c0de5b42:	70a0      	strb	r0, [r4, #2]
c0de5b44:	e001      	b.n	c0de5b4a <nbgl_layoutAddNavigation+0xa6>
c0de5b46:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de5b4a:	4630      	mov	r0, r6
c0de5b4c:	bd70      	pop	{r4, r5, r6, pc}
c0de5b4e:	bf00      	nop
c0de5b50:	00006cc4 	.word	0x00006cc4
c0de5b54:	00006cde 	.word	0x00006cde
c0de5b58:	00006c86 	.word	0x00006c86
c0de5b5c:	00006c68 	.word	0x00006c68

c0de5b60 <nbgl_layoutAddText>:
c0de5b60:	2800      	cmp	r0, #0
c0de5b62:	f000 8135 	beq.w	c0de5dd0 <nbgl_layoutAddText+0x270>
c0de5b66:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5b6a:	b088      	sub	sp, #32
c0de5b6c:	460e      	mov	r6, r1
c0de5b6e:	7841      	ldrb	r1, [r0, #1]
c0de5b70:	4605      	mov	r5, r0
c0de5b72:	2001      	movs	r0, #1
c0de5b74:	4617      	mov	r7, r2
c0de5b76:	461c      	mov	r4, r3
c0de5b78:	f001 fd30 	bl	c0de75dc <nbgl_objPoolGet>
c0de5b7c:	4680      	mov	r8, r0
c0de5b7e:	2003      	movs	r0, #3
c0de5b80:	2f00      	cmp	r7, #0
c0de5b82:	bf08      	it	eq
c0de5b84:	2001      	moveq	r0, #1
c0de5b86:	7869      	ldrb	r1, [r5, #1]
c0de5b88:	f888 0020 	strb.w	r0, [r8, #32]
c0de5b8c:	f001 fd88 	bl	c0de76a0 <nbgl_containerPoolGet>
c0de5b90:	4641      	mov	r1, r8
c0de5b92:	0e02      	lsrs	r2, r0, #24
c0de5b94:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de5b98:	f04f 0b00 	mov.w	fp, #0
c0de5b9c:	9704      	str	r7, [sp, #16]
c0de5b9e:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de5ba2:	f888 a004 	strb.w	sl, [r8, #4]
c0de5ba6:	f888 b005 	strb.w	fp, [r8, #5]
c0de5baa:	70ca      	strb	r2, [r1, #3]
c0de5bac:	0c02      	lsrs	r2, r0, #16
c0de5bae:	0a00      	lsrs	r0, r0, #8
c0de5bb0:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de5bb4:	708a      	strb	r2, [r1, #2]
c0de5bb6:	2004      	movs	r0, #4
c0de5bb8:	7869      	ldrb	r1, [r5, #1]
c0de5bba:	f001 fd0f 	bl	c0de75dc <nbgl_objPoolGet>
c0de5bbe:	4607      	mov	r7, r0
c0de5bc0:	2003      	movs	r0, #3
c0de5bc2:	77f8      	strb	r0, [r7, #31]
c0de5bc4:	4630      	mov	r0, r6
c0de5bc6:	f006 f915 	bl	c0debdf4 <pic>
c0de5bca:	4601      	mov	r1, r0
c0de5bcc:	2008      	movs	r0, #8
c0de5bce:	f887 a004 	strb.w	sl, [r7, #4]
c0de5bd2:	f887 b005 	strb.w	fp, [r7, #5]
c0de5bd6:	9403      	str	r4, [sp, #12]
c0de5bd8:	f04f 0a01 	mov.w	sl, #1
c0de5bdc:	2c00      	cmp	r4, #0
c0de5bde:	bf08      	it	eq
c0de5be0:	200a      	moveq	r0, #10
c0de5be2:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de5be6:	2205      	movs	r2, #5
c0de5be8:	0e0b      	lsrs	r3, r1, #24
c0de5bea:	f887 2020 	strb.w	r2, [r7, #32]
c0de5bee:	463a      	mov	r2, r7
c0de5bf0:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de5bf4:	70d3      	strb	r3, [r2, #3]
c0de5bf6:	0c0b      	lsrs	r3, r1, #16
c0de5bf8:	7093      	strb	r3, [r2, #2]
c0de5bfa:	0a0a      	lsrs	r2, r1, #8
c0de5bfc:	2301      	movs	r3, #1
c0de5bfe:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de5c02:	2272      	movs	r2, #114	@ 0x72
c0de5c04:	f7ff fd3e 	bl	c0de5684 <nbgl_getTextNbLinesInWidth>
c0de5c08:	4606      	mov	r6, r0
c0de5c0a:	2805      	cmp	r0, #5
c0de5c0c:	9505      	str	r5, [sp, #20]
c0de5c0e:	d31d      	bcc.n	c0de5c4c <nbgl_layoutAddText+0xec>
c0de5c10:	463e      	mov	r6, r7
c0de5c12:	2004      	movs	r0, #4
c0de5c14:	f10d 051e 	add.w	r5, sp, #30
c0de5c18:	f816 1f26 	ldrb.w	r1, [r6, #38]!
c0de5c1c:	7872      	ldrb	r2, [r6, #1]
c0de5c1e:	78b3      	ldrb	r3, [r6, #2]
c0de5c20:	78f4      	ldrb	r4, [r6, #3]
c0de5c22:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de5c26:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de5c2a:	9500      	str	r5, [sp, #0]
c0de5c2c:	9d05      	ldr	r5, [sp, #20]
c0de5c2e:	f8cd a004 	str.w	sl, [sp, #4]
c0de5c32:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5c36:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de5c3a:	2304      	movs	r3, #4
c0de5c3c:	f000 fc60 	bl	c0de6500 <OUTLINED_FUNCTION_4>
c0de5c40:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de5c44:	7130      	strb	r0, [r6, #4]
c0de5c46:	0a00      	lsrs	r0, r0, #8
c0de5c48:	7170      	strb	r0, [r6, #5]
c0de5c4a:	2604      	movs	r6, #4
c0de5c4c:	f000 fc60 	bl	c0de6510 <OUTLINED_FUNCTION_6>
c0de5c50:	4683      	mov	fp, r0
c0de5c52:	2002      	movs	r0, #2
c0de5c54:	f887 a024 	strb.w	sl, [r7, #36]	@ 0x24
c0de5c58:	9c04      	ldr	r4, [sp, #16]
c0de5c5a:	75b8      	strb	r0, [r7, #22]
c0de5c5c:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de5c60:	2c00      	cmp	r4, #0
c0de5c62:	fb06 fa00 	mul.w	sl, r6, r0
c0de5c66:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de5c6a:	f887 a006 	strb.w	sl, [r7, #6]
c0de5c6e:	71f8      	strb	r0, [r7, #7]
c0de5c70:	4640      	mov	r0, r8
c0de5c72:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de5c76:	7842      	ldrb	r2, [r0, #1]
c0de5c78:	7883      	ldrb	r3, [r0, #2]
c0de5c7a:	78c0      	ldrb	r0, [r0, #3]
c0de5c7c:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5c80:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de5c84:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de5c88:	6007      	str	r7, [r0, #0]
c0de5c8a:	f000 8106 	beq.w	c0de5e9a <nbgl_layoutAddText+0x33a>
c0de5c8e:	9803      	ldr	r0, [sp, #12]
c0de5c90:	7869      	ldrb	r1, [r5, #1]
c0de5c92:	2802      	cmp	r0, #2
c0de5c94:	f040 809e 	bne.w	c0de5dd4 <nbgl_layoutAddText+0x274>
c0de5c98:	2005      	movs	r0, #5
c0de5c9a:	2505      	movs	r5, #5
c0de5c9c:	f001 fc9e 	bl	c0de75dc <nbgl_objPoolGet>
c0de5ca0:	2600      	movs	r6, #0
c0de5ca2:	4607      	mov	r7, r0
c0de5ca4:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de5ca8:	2001      	movs	r0, #1
c0de5caa:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de5cae:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de5cb2:	f000 fc3c 	bl	c0de652e <OUTLINED_FUNCTION_9>
c0de5cb6:	4620      	mov	r0, r4
c0de5cb8:	f006 f89c 	bl	c0debdf4 <pic>
c0de5cbc:	4601      	mov	r1, r0
c0de5cbe:	200e      	movs	r0, #14
c0de5cc0:	71fe      	strb	r6, [r7, #7]
c0de5cc2:	75bd      	strb	r5, [r7, #22]
c0de5cc4:	f000 fbf1 	bl	c0de64aa <OUTLINED_FUNCTION_1>
c0de5cc8:	2865      	cmp	r0, #101	@ 0x65
c0de5cca:	f240 80d6 	bls.w	c0de5e7a <nbgl_layoutAddText+0x31a>
c0de5cce:	46bb      	mov	fp, r7
c0de5cd0:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de5cd4:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de5cd8:	2401      	movs	r4, #1
c0de5cda:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de5cde:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de5ce2:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de5ce6:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de5cea:	ae06      	add	r6, sp, #24
c0de5cec:	e9cd 6400 	strd	r6, r4, [sp]
c0de5cf0:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5cf4:	f10d 031a 	add.w	r3, sp, #26
c0de5cf8:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de5cfc:	2266      	movs	r2, #102	@ 0x66
c0de5cfe:	f7ff fb6f 	bl	c0de53e0 <nbgl_getTextMaxLenAndWidth>
c0de5d02:	f8bd 4018 	ldrh.w	r4, [sp, #24]
c0de5d06:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de5d0a:	4655      	mov	r5, sl
c0de5d0c:	f104 000c 	add.w	r0, r4, #12
c0de5d10:	7138      	strb	r0, [r7, #4]
c0de5d12:	0a00      	lsrs	r0, r0, #8
c0de5d14:	7178      	strb	r0, [r7, #5]
c0de5d16:	486b      	ldr	r0, [pc, #428]	@ (c0de5ec4 <nbgl_layoutAddText+0x364>)
c0de5d18:	2e13      	cmp	r6, #19
c0de5d1a:	bf28      	it	cs
c0de5d1c:	2613      	movcs	r6, #19
c0de5d1e:	f89b 1000 	ldrb.w	r1, [fp]
c0de5d22:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de5d26:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de5d2a:	eb09 0a00 	add.w	sl, r9, r0
c0de5d2e:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de5d32:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de5d36:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de5d3a:	4632      	mov	r2, r6
c0de5d3c:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de5d40:	4650      	mov	r0, sl
c0de5d42:	f006 fc2a 	bl	c0dec59a <__aeabi_memcpy>
c0de5d46:	2000      	movs	r0, #0
c0de5d48:	f80a 0006 	strb.w	r0, [sl, r6]
c0de5d4c:	76b8      	strb	r0, [r7, #26]
c0de5d4e:	2001      	movs	r0, #1
c0de5d50:	f88b a000 	strb.w	sl, [fp]
c0de5d54:	7678      	strb	r0, [r7, #25]
c0de5d56:	ea4f 601a 	mov.w	r0, sl, lsr #24
c0de5d5a:	2c00      	cmp	r4, #0
c0de5d5c:	f88b 0003 	strb.w	r0, [fp, #3]
c0de5d60:	ea4f 401a 	mov.w	r0, sl, lsr #16
c0de5d64:	f88b 0002 	strb.w	r0, [fp, #2]
c0de5d68:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de5d6c:	46aa      	mov	sl, r5
c0de5d6e:	9d05      	ldr	r5, [sp, #20]
c0de5d70:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de5d74:	4640      	mov	r0, r8
c0de5d76:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de5d7a:	7842      	ldrb	r2, [r0, #1]
c0de5d7c:	7883      	ldrb	r3, [r0, #2]
c0de5d7e:	78c0      	ldrb	r0, [r0, #3]
c0de5d80:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5d84:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de5d88:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de5d8c:	6047      	str	r7, [r0, #4]
c0de5d8e:	f000 8082 	beq.w	c0de5e96 <nbgl_layoutAddText+0x336>
c0de5d92:	7869      	ldrb	r1, [r5, #1]
c0de5d94:	2005      	movs	r0, #5
c0de5d96:	2605      	movs	r6, #5
c0de5d98:	f001 fc20 	bl	c0de75dc <nbgl_objPoolGet>
c0de5d9c:	2500      	movs	r5, #0
c0de5d9e:	4607      	mov	r7, r0
c0de5da0:	9904      	ldr	r1, [sp, #16]
c0de5da2:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de5da6:	2001      	movs	r0, #1
c0de5da8:	f000 fbc1 	bl	c0de652e <OUTLINED_FUNCTION_9>
c0de5dac:	f8bd 001a 	ldrh.w	r0, [sp, #26]
c0de5db0:	4408      	add	r0, r1
c0de5db2:	f006 f81f 	bl	c0debdf4 <pic>
c0de5db6:	4601      	mov	r1, r0
c0de5db8:	200e      	movs	r0, #14
c0de5dba:	71fd      	strb	r5, [r7, #7]
c0de5dbc:	f000 fb75 	bl	c0de64aa <OUTLINED_FUNCTION_1>
c0de5dc0:	300c      	adds	r0, #12
c0de5dc2:	210f      	movs	r1, #15
c0de5dc4:	75be      	strb	r6, [r7, #22]
c0de5dc6:	7138      	strb	r0, [r7, #4]
c0de5dc8:	0a00      	lsrs	r0, r0, #8
c0de5dca:	7178      	strb	r0, [r7, #5]
c0de5dcc:	2002      	movs	r0, #2
c0de5dce:	e05a      	b.n	c0de5e86 <nbgl_layoutAddText+0x326>
c0de5dd0:	f000 bbaa 	b.w	c0de6528 <OUTLINED_FUNCTION_8>
c0de5dd4:	f000 fb99 	bl	c0de650a <OUTLINED_FUNCTION_5>
c0de5dd8:	2603      	movs	r6, #3
c0de5dda:	4607      	mov	r7, r0
c0de5ddc:	77c6      	strb	r6, [r0, #31]
c0de5dde:	4620      	mov	r0, r4
c0de5de0:	f006 f808 	bl	c0debdf4 <pic>
c0de5de4:	4601      	mov	r1, r0
c0de5de6:	2072      	movs	r0, #114	@ 0x72
c0de5de8:	2400      	movs	r4, #0
c0de5dea:	2301      	movs	r3, #1
c0de5dec:	7138      	strb	r0, [r7, #4]
c0de5dee:	2001      	movs	r0, #1
c0de5df0:	0e0a      	lsrs	r2, r1, #24
c0de5df2:	717c      	strb	r4, [r7, #5]
c0de5df4:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de5df8:	200a      	movs	r0, #10
c0de5dfa:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de5dfe:	f000 fb65 	bl	c0de64cc <OUTLINED_FUNCTION_2>
c0de5e02:	2804      	cmp	r0, #4
c0de5e04:	d31e      	bcc.n	c0de5e44 <nbgl_layoutAddText+0x2e4>
c0de5e06:	463d      	mov	r5, r7
c0de5e08:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de5e0c:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de5e10:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de5e14:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de5e18:	78ab      	ldrb	r3, [r5, #2]
c0de5e1a:	78e9      	ldrb	r1, [r5, #3]
c0de5e1c:	aa07      	add	r2, sp, #28
c0de5e1e:	9200      	str	r2, [sp, #0]
c0de5e20:	2201      	movs	r2, #1
c0de5e22:	9201      	str	r2, [sp, #4]
c0de5e24:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de5e28:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de5e2c:	2303      	movs	r3, #3
c0de5e2e:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de5e32:	2272      	movs	r2, #114	@ 0x72
c0de5e34:	f7ff fb52 	bl	c0de54dc <nbgl_getTextMaxLenInNbLines>
c0de5e38:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de5e3c:	7128      	strb	r0, [r5, #4]
c0de5e3e:	0a00      	lsrs	r0, r0, #8
c0de5e40:	7168      	strb	r0, [r5, #5]
c0de5e42:	2003      	movs	r0, #3
c0de5e44:	9903      	ldr	r1, [sp, #12]
c0de5e46:	2900      	cmp	r1, #0
c0de5e48:	bf08      	it	eq
c0de5e4a:	4606      	moveq	r6, r0
c0de5e4c:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de5e50:	76bc      	strb	r4, [r7, #26]
c0de5e52:	75bc      	strb	r4, [r7, #22]
c0de5e54:	fb06 f100 	mul.w	r1, r6, r0
c0de5e58:	fb06 a000 	mla	r0, r6, r0, sl
c0de5e5c:	71b9      	strb	r1, [r7, #6]
c0de5e5e:	0a09      	lsrs	r1, r1, #8
c0de5e60:	71f9      	strb	r1, [r7, #7]
c0de5e62:	2102      	movs	r1, #2
c0de5e64:	f100 0a02 	add.w	sl, r0, #2
c0de5e68:	7679      	strb	r1, [r7, #25]
c0de5e6a:	2105      	movs	r1, #5
c0de5e6c:	f887 1020 	strb.w	r1, [r7, #32]
c0de5e70:	4641      	mov	r1, r8
c0de5e72:	f000 fb38 	bl	c0de64e6 <OUTLINED_FUNCTION_3>
c0de5e76:	604f      	str	r7, [r1, #4]
c0de5e78:	e00f      	b.n	c0de5e9a <nbgl_layoutAddText+0x33a>
c0de5e7a:	300c      	adds	r0, #12
c0de5e7c:	2108      	movs	r1, #8
c0de5e7e:	7138      	strb	r0, [r7, #4]
c0de5e80:	0a00      	lsrs	r0, r0, #8
c0de5e82:	7178      	strb	r0, [r7, #5]
c0de5e84:	2001      	movs	r0, #1
c0de5e86:	2200      	movs	r2, #0
c0de5e88:	7679      	strb	r1, [r7, #25]
c0de5e8a:	4641      	mov	r1, r8
c0de5e8c:	76ba      	strb	r2, [r7, #26]
c0de5e8e:	f000 fb2a 	bl	c0de64e6 <OUTLINED_FUNCTION_3>
c0de5e92:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de5e96:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de5e9a:	6868      	ldr	r0, [r5, #4]
c0de5e9c:	78a9      	ldrb	r1, [r5, #2]
c0de5e9e:	2205      	movs	r2, #5
c0de5ea0:	f888 2016 	strb.w	r2, [r8, #22]
c0de5ea4:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de5ea8:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de5eac:	2000      	movs	r0, #0
c0de5eae:	3101      	adds	r1, #1
c0de5eb0:	f888 a006 	strb.w	sl, [r8, #6]
c0de5eb4:	f888 2007 	strb.w	r2, [r8, #7]
c0de5eb8:	f888 001f 	strb.w	r0, [r8, #31]
c0de5ebc:	70a9      	strb	r1, [r5, #2]
c0de5ebe:	b008      	add	sp, #32
c0de5ec0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5ec4:	000014c4 	.word	0x000014c4

c0de5ec8 <nbgl_layoutAddMenuList>:
c0de5ec8:	2800      	cmp	r0, #0
c0de5eca:	d04f      	beq.n	c0de5f6c <nbgl_layoutAddMenuList+0xa4>
c0de5ecc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5ed0:	460c      	mov	r4, r1
c0de5ed2:	4605      	mov	r5, r0
c0de5ed4:	2700      	movs	r7, #0
c0de5ed6:	f04f 0b05 	mov.w	fp, #5
c0de5eda:	f04f 0803 	mov.w	r8, #3
c0de5ede:	f04f 0a00 	mov.w	sl, #0
c0de5ee2:	7920      	ldrb	r0, [r4, #4]
c0de5ee4:	4582      	cmp	sl, r0
c0de5ee6:	d23e      	bcs.n	c0de5f66 <nbgl_layoutAddMenuList+0x9e>
c0de5ee8:	7960      	ldrb	r0, [r4, #5]
c0de5eea:	2803      	cmp	r0, #3
c0de5eec:	d302      	bcc.n	c0de5ef4 <nbgl_layoutAddMenuList+0x2c>
c0de5eee:	1e81      	subs	r1, r0, #2
c0de5ef0:	4551      	cmp	r1, sl
c0de5ef2:	dc35      	bgt.n	c0de5f60 <nbgl_layoutAddMenuList+0x98>
c0de5ef4:	3002      	adds	r0, #2
c0de5ef6:	4550      	cmp	r0, sl
c0de5ef8:	d332      	bcc.n	c0de5f60 <nbgl_layoutAddMenuList+0x98>
c0de5efa:	7869      	ldrb	r1, [r5, #1]
c0de5efc:	f000 fb05 	bl	c0de650a <OUTLINED_FUNCTION_5>
c0de5f00:	6821      	ldr	r1, [r4, #0]
c0de5f02:	4606      	mov	r6, r0
c0de5f04:	fa5f f08a 	uxtb.w	r0, sl
c0de5f08:	4788      	blx	r1
c0de5f0a:	7961      	ldrb	r1, [r4, #5]
c0de5f0c:	220a      	movs	r2, #10
c0de5f0e:	458a      	cmp	sl, r1
c0de5f10:	bf08      	it	eq
c0de5f12:	2208      	moveq	r2, #8
c0de5f14:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de5f18:	71f7      	strb	r7, [r6, #7]
c0de5f1a:	7177      	strb	r7, [r6, #5]
c0de5f1c:	f886 b020 	strb.w	fp, [r6, #32]
c0de5f20:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de5f24:	f886 b016 	strb.w	fp, [r6, #22]
c0de5f28:	f886 801f 	strb.w	r8, [r6, #31]
c0de5f2c:	4632      	mov	r2, r6
c0de5f2e:	0e03      	lsrs	r3, r0, #24
c0de5f30:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de5f34:	70d3      	strb	r3, [r2, #3]
c0de5f36:	0c03      	lsrs	r3, r0, #16
c0de5f38:	0a00      	lsrs	r0, r0, #8
c0de5f3a:	7093      	strb	r3, [r2, #2]
c0de5f3c:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de5f40:	6868      	ldr	r0, [r5, #4]
c0de5f42:	78aa      	ldrb	r2, [r5, #2]
c0de5f44:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de5f48:	200c      	movs	r0, #12
c0de5f4a:	71b0      	strb	r0, [r6, #6]
c0de5f4c:	2072      	movs	r0, #114	@ 0x72
c0de5f4e:	7130      	strb	r0, [r6, #4]
c0de5f50:	ebaa 0001 	sub.w	r0, sl, r1
c0de5f54:	0901      	lsrs	r1, r0, #4
c0de5f56:	0100      	lsls	r0, r0, #4
c0de5f58:	7670      	strb	r0, [r6, #25]
c0de5f5a:	1c50      	adds	r0, r2, #1
c0de5f5c:	76b1      	strb	r1, [r6, #26]
c0de5f5e:	70a8      	strb	r0, [r5, #2]
c0de5f60:	f10a 0a01 	add.w	sl, sl, #1
c0de5f64:	e7bd      	b.n	c0de5ee2 <nbgl_layoutAddMenuList+0x1a>
c0de5f66:	2000      	movs	r0, #0
c0de5f68:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5f6c:	f000 badc 	b.w	c0de6528 <OUTLINED_FUNCTION_8>

c0de5f70 <nbgl_layoutAddCenteredInfo>:
c0de5f70:	2800      	cmp	r0, #0
c0de5f72:	f000 80d9 	beq.w	c0de6128 <nbgl_layoutAddCenteredInfo+0x1b8>
c0de5f76:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5f7a:	b086      	sub	sp, #24
c0de5f7c:	460c      	mov	r4, r1
c0de5f7e:	7841      	ldrb	r1, [r0, #1]
c0de5f80:	4682      	mov	sl, r0
c0de5f82:	2001      	movs	r0, #1
c0de5f84:	f001 fb2a 	bl	c0de75dc <nbgl_objPoolGet>
c0de5f88:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de5f8c:	4680      	mov	r8, r0
c0de5f8e:	2003      	movs	r0, #3
c0de5f90:	2703      	movs	r7, #3
c0de5f92:	f001 fb85 	bl	c0de76a0 <nbgl_containerPoolGet>
c0de5f96:	4641      	mov	r1, r8
c0de5f98:	0e02      	lsrs	r2, r0, #24
c0de5f9a:	f04f 0b00 	mov.w	fp, #0
c0de5f9e:	9404      	str	r4, [sp, #16]
c0de5fa0:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de5fa4:	f888 b020 	strb.w	fp, [r8, #32]
c0de5fa8:	70ca      	strb	r2, [r1, #3]
c0de5faa:	0c02      	lsrs	r2, r0, #16
c0de5fac:	0a00      	lsrs	r0, r0, #8
c0de5fae:	708a      	strb	r2, [r1, #2]
c0de5fb0:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de5fb4:	68a0      	ldr	r0, [r4, #8]
c0de5fb6:	b3c0      	cbz	r0, c0de602a <nbgl_layoutAddCenteredInfo+0xba>
c0de5fb8:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de5fbc:	2002      	movs	r0, #2
c0de5fbe:	f001 fb0d 	bl	c0de75dc <nbgl_objPoolGet>
c0de5fc2:	4606      	mov	r6, r0
c0de5fc4:	77c7      	strb	r7, [r0, #31]
c0de5fc6:	68a0      	ldr	r0, [r4, #8]
c0de5fc8:	f005 ff14 	bl	c0debdf4 <pic>
c0de5fcc:	4631      	mov	r1, r6
c0de5fce:	0e02      	lsrs	r2, r0, #24
c0de5fd0:	f886 b013 	strb.w	fp, [r6, #19]
c0de5fd4:	f886 b009 	strb.w	fp, [r6, #9]
c0de5fd8:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de5fdc:	70ca      	strb	r2, [r1, #3]
c0de5fde:	0c02      	lsrs	r2, r0, #16
c0de5fe0:	708a      	strb	r2, [r1, #2]
c0de5fe2:	0a01      	lsrs	r1, r0, #8
c0de5fe4:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de5fe8:	4631      	mov	r1, r6
c0de5fea:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de5fee:	f881 b003 	strb.w	fp, [r1, #3]
c0de5ff2:	f881 b002 	strb.w	fp, [r1, #2]
c0de5ff6:	4641      	mov	r1, r8
c0de5ff8:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de5ffc:	784f      	ldrb	r7, [r1, #1]
c0de5ffe:	788c      	ldrb	r4, [r1, #2]
c0de6000:	78cd      	ldrb	r5, [r1, #3]
c0de6002:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de6006:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de600a:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de600e:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de6012:	9c04      	ldr	r4, [sp, #16]
c0de6014:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de6018:	2202      	movs	r2, #2
c0de601a:	75b2      	strb	r2, [r6, #22]
c0de601c:	1c5a      	adds	r2, r3, #1
c0de601e:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de6022:	7881      	ldrb	r1, [r0, #2]
c0de6024:	78c0      	ldrb	r0, [r0, #3]
c0de6026:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de602a:	6820      	ldr	r0, [r4, #0]
c0de602c:	2800      	cmp	r0, #0
c0de602e:	f000 80a2 	beq.w	c0de6176 <nbgl_layoutAddCenteredInfo+0x206>
c0de6032:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de6036:	f000 fa68 	bl	c0de650a <OUTLINED_FUNCTION_5>
c0de603a:	4607      	mov	r7, r0
c0de603c:	2003      	movs	r0, #3
c0de603e:	77f8      	strb	r0, [r7, #31]
c0de6040:	6820      	ldr	r0, [r4, #0]
c0de6042:	f005 fed7 	bl	c0debdf4 <pic>
c0de6046:	4601      	mov	r1, r0
c0de6048:	2072      	movs	r0, #114	@ 0x72
c0de604a:	2500      	movs	r5, #0
c0de604c:	7138      	strb	r0, [r7, #4]
c0de604e:	2005      	movs	r0, #5
c0de6050:	0e0a      	lsrs	r2, r1, #24
c0de6052:	717d      	strb	r5, [r7, #5]
c0de6054:	f887 0020 	strb.w	r0, [r7, #32]
c0de6058:	2001      	movs	r0, #1
c0de605a:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de605e:	4638      	mov	r0, r7
c0de6060:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de6064:	70c2      	strb	r2, [r0, #3]
c0de6066:	0c0a      	lsrs	r2, r1, #16
c0de6068:	7082      	strb	r2, [r0, #2]
c0de606a:	0a08      	lsrs	r0, r1, #8
c0de606c:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de6070:	2008      	movs	r0, #8
c0de6072:	7b62      	ldrb	r2, [r4, #13]
c0de6074:	2a00      	cmp	r2, #0
c0de6076:	bf08      	it	eq
c0de6078:	200a      	moveq	r0, #10
c0de607a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de607e:	2272      	movs	r2, #114	@ 0x72
c0de6080:	2301      	movs	r3, #1
c0de6082:	f7ff faff 	bl	c0de5684 <nbgl_getTextNbLinesInWidth>
c0de6086:	4606      	mov	r6, r0
c0de6088:	2805      	cmp	r0, #5
c0de608a:	d31e      	bcc.n	c0de60ca <nbgl_layoutAddCenteredInfo+0x15a>
c0de608c:	463d      	mov	r5, r7
c0de608e:	2004      	movs	r0, #4
c0de6090:	2101      	movs	r1, #1
c0de6092:	f10d 0416 	add.w	r4, sp, #22
c0de6096:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de609a:	786a      	ldrb	r2, [r5, #1]
c0de609c:	78ab      	ldrb	r3, [r5, #2]
c0de609e:	78ee      	ldrb	r6, [r5, #3]
c0de60a0:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de60a4:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de60a8:	9101      	str	r1, [sp, #4]
c0de60aa:	9400      	str	r4, [sp, #0]
c0de60ac:	9c04      	ldr	r4, [sp, #16]
c0de60ae:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de60b2:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de60b6:	2304      	movs	r3, #4
c0de60b8:	f000 fa22 	bl	c0de6500 <OUTLINED_FUNCTION_4>
c0de60bc:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de60c0:	2604      	movs	r6, #4
c0de60c2:	7128      	strb	r0, [r5, #4]
c0de60c4:	0a00      	lsrs	r0, r0, #8
c0de60c6:	7168      	strb	r0, [r5, #5]
c0de60c8:	2500      	movs	r5, #0
c0de60ca:	f000 fa21 	bl	c0de6510 <OUTLINED_FUNCTION_6>
c0de60ce:	79c0      	ldrb	r0, [r0, #7]
c0de60d0:	f887 5021 	strb.w	r5, [r7, #33]	@ 0x21
c0de60d4:	4370      	muls	r0, r6
c0de60d6:	0a01      	lsrs	r1, r0, #8
c0de60d8:	71b8      	strb	r0, [r7, #6]
c0de60da:	71f9      	strb	r1, [r7, #7]
c0de60dc:	68a1      	ldr	r1, [r4, #8]
c0de60de:	b329      	cbz	r1, c0de612c <nbgl_layoutAddCenteredInfo+0x1bc>
c0de60e0:	4641      	mov	r1, r8
c0de60e2:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de60e6:	784c      	ldrb	r4, [r1, #1]
c0de60e8:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de60ec:	788d      	ldrb	r5, [r1, #2]
c0de60ee:	78c9      	ldrb	r1, [r1, #3]
c0de60f0:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de60f4:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de60f8:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de60fc:	463a      	mov	r2, r7
c0de60fe:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de6102:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de6106:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de610a:	0e0b      	lsrs	r3, r1, #24
c0de610c:	70d3      	strb	r3, [r2, #3]
c0de610e:	0c0b      	lsrs	r3, r1, #16
c0de6110:	0a09      	lsrs	r1, r1, #8
c0de6112:	7051      	strb	r1, [r2, #1]
c0de6114:	2100      	movs	r1, #0
c0de6116:	7093      	strb	r3, [r2, #2]
c0de6118:	7211      	strb	r1, [r2, #8]
c0de611a:	2e03      	cmp	r6, #3
c0de611c:	bf38      	it	cc
c0de611e:	2101      	movcc	r1, #1
c0de6120:	0089      	lsls	r1, r1, #2
c0de6122:	71d1      	strb	r1, [r2, #7]
c0de6124:	2108      	movs	r1, #8
c0de6126:	e00a      	b.n	c0de613e <nbgl_layoutAddCenteredInfo+0x1ce>
c0de6128:	f000 b9fe 	b.w	c0de6528 <OUTLINED_FUNCTION_8>
c0de612c:	6861      	ldr	r1, [r4, #4]
c0de612e:	b119      	cbz	r1, c0de6138 <nbgl_layoutAddCenteredInfo+0x1c8>
c0de6130:	f000 f9f2 	bl	c0de6518 <OUTLINED_FUNCTION_7>
c0de6134:	2102      	movs	r1, #2
c0de6136:	e002      	b.n	c0de613e <nbgl_layoutAddCenteredInfo+0x1ce>
c0de6138:	f000 f9ee 	bl	c0de6518 <OUTLINED_FUNCTION_7>
c0de613c:	2105      	movs	r1, #5
c0de613e:	7111      	strb	r1, [r2, #4]
c0de6140:	4641      	mov	r1, r8
c0de6142:	4458      	add	r0, fp
c0de6144:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de6148:	784c      	ldrb	r4, [r1, #1]
c0de614a:	788d      	ldrb	r5, [r1, #2]
c0de614c:	78ce      	ldrb	r6, [r1, #3]
c0de614e:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de6152:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de6156:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de615a:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de615e:	9c04      	ldr	r4, [sp, #16]
c0de6160:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de6164:	1c5a      	adds	r2, r3, #1
c0de6166:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de616a:	7e79      	ldrb	r1, [r7, #25]
c0de616c:	7eba      	ldrb	r2, [r7, #26]
c0de616e:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de6172:	eb00 0b01 	add.w	fp, r0, r1
c0de6176:	6860      	ldr	r0, [r4, #4]
c0de6178:	2800      	cmp	r0, #0
c0de617a:	d074      	beq.n	c0de6266 <nbgl_layoutAddCenteredInfo+0x2f6>
c0de617c:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de6180:	2004      	movs	r0, #4
c0de6182:	f8cd a00c 	str.w	sl, [sp, #12]
c0de6186:	f001 fa29 	bl	c0de75dc <nbgl_objPoolGet>
c0de618a:	2603      	movs	r6, #3
c0de618c:	4607      	mov	r7, r0
c0de618e:	77c6      	strb	r6, [r0, #31]
c0de6190:	6860      	ldr	r0, [r4, #4]
c0de6192:	f005 fe2f 	bl	c0debdf4 <pic>
c0de6196:	4601      	mov	r1, r0
c0de6198:	2000      	movs	r0, #0
c0de619a:	2301      	movs	r3, #1
c0de619c:	7178      	strb	r0, [r7, #5]
c0de619e:	2072      	movs	r0, #114	@ 0x72
c0de61a0:	0e0a      	lsrs	r2, r1, #24
c0de61a2:	7138      	strb	r0, [r7, #4]
c0de61a4:	200a      	movs	r0, #10
c0de61a6:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de61aa:	2005      	movs	r0, #5
c0de61ac:	f887 0020 	strb.w	r0, [r7, #32]
c0de61b0:	2001      	movs	r0, #1
c0de61b2:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de61b6:	f000 f989 	bl	c0de64cc <OUTLINED_FUNCTION_2>
c0de61ba:	4682      	mov	sl, r0
c0de61bc:	2804      	cmp	r0, #4
c0de61be:	d31c      	bcc.n	c0de61fa <nbgl_layoutAddCenteredInfo+0x28a>
c0de61c0:	463d      	mov	r5, r7
c0de61c2:	f04f 0c01 	mov.w	ip, #1
c0de61c6:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de61ca:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de61ce:	786a      	ldrb	r2, [r5, #1]
c0de61d0:	78ab      	ldrb	r3, [r5, #2]
c0de61d2:	78ee      	ldrb	r6, [r5, #3]
c0de61d4:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de61d8:	ac05      	add	r4, sp, #20
c0de61da:	e9cd 4c00 	strd	r4, ip, [sp]
c0de61de:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de61e2:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de61e6:	2303      	movs	r3, #3
c0de61e8:	f000 f98a 	bl	c0de6500 <OUTLINED_FUNCTION_4>
c0de61ec:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de61f0:	f04f 0a03 	mov.w	sl, #3
c0de61f4:	7128      	strb	r0, [r5, #4]
c0de61f6:	0a00      	lsrs	r0, r0, #8
c0de61f8:	7168      	strb	r0, [r5, #5]
c0de61fa:	f000 f989 	bl	c0de6510 <OUTLINED_FUNCTION_6>
c0de61fe:	4641      	mov	r1, r8
c0de6200:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de6204:	784c      	ldrb	r4, [r1, #1]
c0de6206:	788d      	ldrb	r5, [r1, #2]
c0de6208:	78ce      	ldrb	r6, [r1, #3]
c0de620a:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de620e:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de6212:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de6216:	463d      	mov	r5, r7
c0de6218:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de621c:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de6220:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de6224:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de6228:	0e26      	lsrs	r6, r4, #24
c0de622a:	70ee      	strb	r6, [r5, #3]
c0de622c:	0c26      	lsrs	r6, r4, #16
c0de622e:	0a24      	lsrs	r4, r4, #8
c0de6230:	74fc      	strb	r4, [r7, #19]
c0de6232:	70ae      	strb	r6, [r5, #2]
c0de6234:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de6238:	2302      	movs	r3, #2
c0de623a:	2400      	movs	r4, #0
c0de623c:	3201      	adds	r2, #1
c0de623e:	767b      	strb	r3, [r7, #25]
c0de6240:	2308      	movs	r3, #8
c0de6242:	76bc      	strb	r4, [r7, #26]
c0de6244:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de6248:	79c0      	ldrb	r0, [r0, #7]
c0de624a:	75bb      	strb	r3, [r7, #22]
c0de624c:	fb0a f300 	mul.w	r3, sl, r0
c0de6250:	fb0a b000 	mla	r0, sl, r0, fp
c0de6254:	e9dd a403 	ldrd	sl, r4, [sp, #12]
c0de6258:	71bb      	strb	r3, [r7, #6]
c0de625a:	0a1b      	lsrs	r3, r3, #8
c0de625c:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de6260:	f100 0b02 	add.w	fp, r0, #2
c0de6264:	71fb      	strb	r3, [r7, #7]
c0de6266:	7b20      	ldrb	r0, [r4, #12]
c0de6268:	2102      	movs	r1, #2
c0de626a:	2800      	cmp	r0, #0
c0de626c:	bf08      	it	eq
c0de626e:	2105      	moveq	r1, #5
c0de6270:	f888 1016 	strb.w	r1, [r8, #22]
c0de6274:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de6278:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de627c:	2272      	movs	r2, #114	@ 0x72
c0de627e:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de6282:	2000      	movs	r0, #0
c0de6284:	f888 2004 	strb.w	r2, [r8, #4]
c0de6288:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de628c:	3101      	adds	r1, #1
c0de628e:	f888 b006 	strb.w	fp, [r8, #6]
c0de6292:	f888 0019 	strb.w	r0, [r8, #25]
c0de6296:	f888 001a 	strb.w	r0, [r8, #26]
c0de629a:	f888 0005 	strb.w	r0, [r8, #5]
c0de629e:	f888 001f 	strb.w	r0, [r8, #31]
c0de62a2:	f888 2007 	strb.w	r2, [r8, #7]
c0de62a6:	f88a 1002 	strb.w	r1, [sl, #2]
c0de62aa:	b006      	add	sp, #24
c0de62ac:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de62b0 <nbgl_layoutAddSwitch>:
c0de62b0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de62b4:	2800      	cmp	r0, #0
c0de62b6:	d077      	beq.n	c0de63a8 <nbgl_layoutAddSwitch+0xf8>
c0de62b8:	468b      	mov	fp, r1
c0de62ba:	7841      	ldrb	r1, [r0, #1]
c0de62bc:	4604      	mov	r4, r0
c0de62be:	f000 f924 	bl	c0de650a <OUTLINED_FUNCTION_5>
c0de62c2:	f04f 0a03 	mov.w	sl, #3
c0de62c6:	4606      	mov	r6, r0
c0de62c8:	f880 a01f 	strb.w	sl, [r0, #31]
c0de62cc:	f8db 0000 	ldr.w	r0, [fp]
c0de62d0:	f005 fd90 	bl	c0debdf4 <pic>
c0de62d4:	4601      	mov	r1, r0
c0de62d6:	2072      	movs	r0, #114	@ 0x72
c0de62d8:	2500      	movs	r5, #0
c0de62da:	f04f 0805 	mov.w	r8, #5
c0de62de:	2301      	movs	r3, #1
c0de62e0:	7130      	strb	r0, [r6, #4]
c0de62e2:	2008      	movs	r0, #8
c0de62e4:	0e0a      	lsrs	r2, r1, #24
c0de62e6:	7175      	strb	r5, [r6, #5]
c0de62e8:	f886 8020 	strb.w	r8, [r6, #32]
c0de62ec:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de62f0:	2001      	movs	r0, #1
c0de62f2:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de62f6:	4630      	mov	r0, r6
c0de62f8:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de62fc:	70c2      	strb	r2, [r0, #3]
c0de62fe:	0c0a      	lsrs	r2, r1, #16
c0de6300:	7082      	strb	r2, [r0, #2]
c0de6302:	0a08      	lsrs	r0, r1, #8
c0de6304:	2272      	movs	r2, #114	@ 0x72
c0de6306:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de630a:	2008      	movs	r0, #8
c0de630c:	f7ff f9ba 	bl	c0de5684 <nbgl_getTextNbLinesInWidth>
c0de6310:	2801      	cmp	r0, #1
c0de6312:	d849      	bhi.n	c0de63a8 <nbgl_layoutAddSwitch+0xf8>
c0de6314:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de6318:	f7ff f84d 	bl	c0de53b6 <nbgl_getFontLineHeight>
c0de631c:	6862      	ldr	r2, [r4, #4]
c0de631e:	78a3      	ldrb	r3, [r4, #2]
c0de6320:	7861      	ldrb	r1, [r4, #1]
c0de6322:	76b5      	strb	r5, [r6, #26]
c0de6324:	71f5      	strb	r5, [r6, #7]
c0de6326:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de632a:	71b0      	strb	r0, [r6, #6]
c0de632c:	2002      	movs	r0, #2
c0de632e:	f886 a019 	strb.w	sl, [r6, #25]
c0de6332:	75b0      	strb	r0, [r6, #22]
c0de6334:	1c58      	adds	r0, r3, #1
c0de6336:	70a0      	strb	r0, [r4, #2]
c0de6338:	f000 f8e7 	bl	c0de650a <OUTLINED_FUNCTION_5>
c0de633c:	4607      	mov	r7, r0
c0de633e:	f880 a01f 	strb.w	sl, [r0, #31]
c0de6342:	f8db 0004 	ldr.w	r0, [fp, #4]
c0de6346:	2672      	movs	r6, #114	@ 0x72
c0de6348:	f005 fd54 	bl	c0debdf4 <pic>
c0de634c:	717d      	strb	r5, [r7, #5]
c0de634e:	463d      	mov	r5, r7
c0de6350:	210a      	movs	r1, #10
c0de6352:	713e      	strb	r6, [r7, #4]
c0de6354:	f887 8020 	strb.w	r8, [r7, #32]
c0de6358:	f887 1022 	strb.w	r1, [r7, #34]	@ 0x22
c0de635c:	f805 0f26 	strb.w	r0, [r5, #38]!
c0de6360:	0e01      	lsrs	r1, r0, #24
c0de6362:	70e9      	strb	r1, [r5, #3]
c0de6364:	0c01      	lsrs	r1, r0, #16
c0de6366:	0a00      	lsrs	r0, r0, #8
c0de6368:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de636c:	200a      	movs	r0, #10
c0de636e:	70a9      	strb	r1, [r5, #2]
c0de6370:	f7ff f821 	bl	c0de53b6 <nbgl_getFontLineHeight>
c0de6374:	2101      	movs	r1, #1
c0de6376:	782a      	ldrb	r2, [r5, #0]
c0de6378:	78ab      	ldrb	r3, [r5, #2]
c0de637a:	78ed      	ldrb	r5, [r5, #3]
c0de637c:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de6380:	09c1      	lsrs	r1, r0, #7
c0de6382:	0040      	lsls	r0, r0, #1
c0de6384:	71f9      	strb	r1, [r7, #7]
c0de6386:	f897 1027 	ldrb.w	r1, [r7, #39]	@ 0x27
c0de638a:	71b8      	strb	r0, [r7, #6]
c0de638c:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de6390:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de6394:	ea43 2205 	orr.w	r2, r3, r5, lsl #8
c0de6398:	2301      	movs	r3, #1
c0de639a:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de639e:	2272      	movs	r2, #114	@ 0x72
c0de63a0:	f7ff f970 	bl	c0de5684 <nbgl_getTextNbLinesInWidth>
c0de63a4:	2802      	cmp	r0, #2
c0de63a6:	d904      	bls.n	c0de63b2 <nbgl_layoutAddSwitch+0x102>
c0de63a8:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de63ac:	4630      	mov	r0, r6
c0de63ae:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de63b2:	6860      	ldr	r0, [r4, #4]
c0de63b4:	78a2      	ldrb	r2, [r4, #2]
c0de63b6:	7861      	ldrb	r1, [r4, #1]
c0de63b8:	2501      	movs	r5, #1
c0de63ba:	2600      	movs	r6, #0
c0de63bc:	76be      	strb	r6, [r7, #26]
c0de63be:	f840 7022 	str.w	r7, [r0, r2, lsl #2]
c0de63c2:	2005      	movs	r0, #5
c0de63c4:	767d      	strb	r5, [r7, #25]
c0de63c6:	75b8      	strb	r0, [r7, #22]
c0de63c8:	1c50      	adds	r0, r2, #1
c0de63ca:	70a0      	strb	r0, [r4, #2]
c0de63cc:	2005      	movs	r0, #5
c0de63ce:	f001 f905 	bl	c0de75dc <nbgl_objPoolGet>
c0de63d2:	f04f 0a03 	mov.w	sl, #3
c0de63d6:	f04f 0808 	mov.w	r8, #8
c0de63da:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de63de:	f880 5022 	strb.w	r5, [r0, #34]	@ 0x22
c0de63e2:	4607      	mov	r7, r0
c0de63e4:	f880 a020 	strb.w	sl, [r0, #32]
c0de63e8:	f880 a01f 	strb.w	sl, [r0, #31]
c0de63ec:	f880 8023 	strb.w	r8, [r0, #35]	@ 0x23
c0de63f0:	f89b 0008 	ldrb.w	r0, [fp, #8]
c0de63f4:	4a1e      	ldr	r2, [pc, #120]	@ (c0de6470 <nbgl_layoutAddSwitch+0x1c0>)
c0de63f6:	491f      	ldr	r1, [pc, #124]	@ (c0de6474 <nbgl_layoutAddSwitch+0x1c4>)
c0de63f8:	2801      	cmp	r0, #1
c0de63fa:	447a      	add	r2, pc
c0de63fc:	4479      	add	r1, pc
c0de63fe:	bf08      	it	eq
c0de6400:	4611      	moveq	r1, r2
c0de6402:	463a      	mov	r2, r7
c0de6404:	0e0b      	lsrs	r3, r1, #24
c0de6406:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de640a:	70d3      	strb	r3, [r2, #3]
c0de640c:	0c0b      	lsrs	r3, r1, #16
c0de640e:	7093      	strb	r3, [r2, #2]
c0de6410:	0a0a      	lsrs	r2, r1, #8
c0de6412:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de6416:	2801      	cmp	r0, #1
c0de6418:	4638      	mov	r0, r7
c0de641a:	4a17      	ldr	r2, [pc, #92]	@ (c0de6478 <nbgl_layoutAddSwitch+0x1c8>)
c0de641c:	4d17      	ldr	r5, [pc, #92]	@ (c0de647c <nbgl_layoutAddSwitch+0x1cc>)
c0de641e:	447a      	add	r2, pc
c0de6420:	447d      	add	r5, pc
c0de6422:	bf18      	it	ne
c0de6424:	462a      	movne	r2, r5
c0de6426:	f800 2f2d 	strb.w	r2, [r0, #45]!
c0de642a:	0e13      	lsrs	r3, r2, #24
c0de642c:	70c3      	strb	r3, [r0, #3]
c0de642e:	0c13      	lsrs	r3, r2, #16
c0de6430:	7083      	strb	r3, [r0, #2]
c0de6432:	0a10      	lsrs	r0, r2, #8
c0de6434:	f887 002e 	strb.w	r0, [r7, #46]	@ 0x2e
c0de6438:	2008      	movs	r0, #8
c0de643a:	f7fe ff9a 	bl	c0de5372 <nbgl_getTextWidth>
c0de643e:	6861      	ldr	r1, [r4, #4]
c0de6440:	78a2      	ldrb	r2, [r4, #2]
c0de6442:	786b      	ldrb	r3, [r5, #1]
c0de6444:	76be      	strb	r6, [r7, #26]
c0de6446:	71fe      	strb	r6, [r7, #7]
c0de6448:	f887 8016 	strb.w	r8, [r7, #22]
c0de644c:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de6450:	210c      	movs	r1, #12
c0de6452:	f887 a019 	strb.w	sl, [r7, #25]
c0de6456:	71b9      	strb	r1, [r7, #6]
c0de6458:	7829      	ldrb	r1, [r5, #0]
c0de645a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de645e:	4408      	add	r0, r1
c0de6460:	1c51      	adds	r1, r2, #1
c0de6462:	300a      	adds	r0, #10
c0de6464:	7138      	strb	r0, [r7, #4]
c0de6466:	0a00      	lsrs	r0, r0, #8
c0de6468:	70a1      	strb	r1, [r4, #2]
c0de646a:	7178      	strb	r0, [r7, #5]
c0de646c:	e79e      	b.n	c0de63ac <nbgl_layoutAddSwitch+0xfc>
c0de646e:	bf00      	nop
c0de6470:	0000654a 	.word	0x0000654a
c0de6474:	00006624 	.word	0x00006624
c0de6478:	000062e7 	.word	0x000062e7
c0de647c:	000062cf 	.word	0x000062cf

c0de6480 <nbgl_layoutDraw>:
c0de6480:	b120      	cbz	r0, c0de648c <nbgl_layoutDraw+0xc>
c0de6482:	b580      	push	{r7, lr}
c0de6484:	f001 f960 	bl	c0de7748 <nbgl_screenRedraw>
c0de6488:	2000      	movs	r0, #0
c0de648a:	bd80      	pop	{r7, pc}
c0de648c:	f000 b84c 	b.w	c0de6528 <OUTLINED_FUNCTION_8>

c0de6490 <nbgl_layoutRelease>:
c0de6490:	b148      	cbz	r0, c0de64a6 <nbgl_layoutRelease+0x16>
c0de6492:	b510      	push	{r4, lr}
c0de6494:	4604      	mov	r4, r0
c0de6496:	7800      	ldrb	r0, [r0, #0]
c0de6498:	b110      	cbz	r0, c0de64a0 <nbgl_layoutRelease+0x10>
c0de649a:	7860      	ldrb	r0, [r4, #1]
c0de649c:	f001 faae 	bl	c0de79fc <nbgl_screenPop>
c0de64a0:	2000      	movs	r0, #0
c0de64a2:	70a0      	strb	r0, [r4, #2]
c0de64a4:	bd10      	pop	{r4, pc}
c0de64a6:	f000 b83f 	b.w	c0de6528 <OUTLINED_FUNCTION_8>

c0de64aa <OUTLINED_FUNCTION_1>:
c0de64aa:	71b8      	strb	r0, [r7, #6]
c0de64ac:	2008      	movs	r0, #8
c0de64ae:	0e0a      	lsrs	r2, r1, #24
c0de64b0:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de64b4:	4638      	mov	r0, r7
c0de64b6:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de64ba:	70c2      	strb	r2, [r0, #3]
c0de64bc:	0c0a      	lsrs	r2, r1, #16
c0de64be:	7082      	strb	r2, [r0, #2]
c0de64c0:	0a08      	lsrs	r0, r1, #8
c0de64c2:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de64c6:	2008      	movs	r0, #8
c0de64c8:	f7fe bf53 	b.w	c0de5372 <nbgl_getTextWidth>

c0de64cc <OUTLINED_FUNCTION_2>:
c0de64cc:	4638      	mov	r0, r7
c0de64ce:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de64d2:	70c2      	strb	r2, [r0, #3]
c0de64d4:	0c0a      	lsrs	r2, r1, #16
c0de64d6:	7082      	strb	r2, [r0, #2]
c0de64d8:	0a08      	lsrs	r0, r1, #8
c0de64da:	2272      	movs	r2, #114	@ 0x72
c0de64dc:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de64e0:	200a      	movs	r0, #10
c0de64e2:	f7ff b8cf 	b.w	c0de5684 <nbgl_getTextNbLinesInWidth>

c0de64e6 <OUTLINED_FUNCTION_3>:
c0de64e6:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de64ea:	784b      	ldrb	r3, [r1, #1]
c0de64ec:	788d      	ldrb	r5, [r1, #2]
c0de64ee:	78c9      	ldrb	r1, [r1, #3]
c0de64f0:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de64f4:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de64f8:	9d05      	ldr	r5, [sp, #20]
c0de64fa:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de64fe:	4770      	bx	lr

c0de6500 <OUTLINED_FUNCTION_4>:
c0de6500:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de6504:	2272      	movs	r2, #114	@ 0x72
c0de6506:	f7fe bfe9 	b.w	c0de54dc <nbgl_getTextMaxLenInNbLines>

c0de650a <OUTLINED_FUNCTION_5>:
c0de650a:	2004      	movs	r0, #4
c0de650c:	f001 b866 	b.w	c0de75dc <nbgl_objPoolGet>

c0de6510 <OUTLINED_FUNCTION_6>:
c0de6510:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de6514:	f7fe be93 	b.w	c0de523e <nbgl_getFont>

c0de6518 <OUTLINED_FUNCTION_7>:
c0de6518:	2100      	movs	r1, #0
c0de651a:	463a      	mov	r2, r7
c0de651c:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de6520:	70d1      	strb	r1, [r2, #3]
c0de6522:	7091      	strb	r1, [r2, #2]
c0de6524:	7051      	strb	r1, [r2, #1]
c0de6526:	4770      	bx	lr

c0de6528 <OUTLINED_FUNCTION_8>:
c0de6528:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de652c:	4770      	bx	lr

c0de652e <OUTLINED_FUNCTION_9>:
c0de652e:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de6532:	2003      	movs	r0, #3
c0de6534:	f887 0020 	strb.w	r0, [r7, #32]
c0de6538:	77f8      	strb	r0, [r7, #31]
c0de653a:	4770      	bx	lr

c0de653c <nbgl_objDraw>:
c0de653c:	b570      	push	{r4, r5, r6, lr}
c0de653e:	7ec1      	ldrb	r1, [r0, #27]
c0de6540:	4602      	mov	r2, r0
c0de6542:	b191      	cbz	r1, c0de656a <nbgl_objDraw+0x2e>
c0de6544:	4603      	mov	r3, r0
c0de6546:	461a      	mov	r2, r3
c0de6548:	f813 4f0e 	ldrb.w	r4, [r3, #14]!
c0de654c:	785d      	ldrb	r5, [r3, #1]
c0de654e:	789e      	ldrb	r6, [r3, #2]
c0de6550:	78db      	ldrb	r3, [r3, #3]
c0de6552:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de6556:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de655a:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
c0de655e:	2b00      	cmp	r3, #0
c0de6560:	d1f1      	bne.n	c0de6546 <nbgl_objDraw+0xa>
c0de6562:	7ed3      	ldrb	r3, [r2, #27]
c0de6564:	b10b      	cbz	r3, c0de656a <nbgl_objDraw+0x2e>
c0de6566:	2201      	movs	r2, #1
c0de6568:	e004      	b.n	c0de6574 <nbgl_objDraw+0x38>
c0de656a:	f892 203f 	ldrb.w	r2, [r2, #63]	@ 0x3f
c0de656e:	2a00      	cmp	r2, #0
c0de6570:	bf18      	it	ne
c0de6572:	2201      	movne	r2, #1
c0de6574:	4b06      	ldr	r3, [pc, #24]	@ (c0de6590 <nbgl_objDraw+0x54>)
c0de6576:	f819 3003 	ldrb.w	r3, [r9, r3]
c0de657a:	b10b      	cbz	r3, c0de6580 <nbgl_objDraw+0x44>
c0de657c:	b902      	cbnz	r2, c0de6580 <nbgl_objDraw+0x44>
c0de657e:	bd70      	pop	{r4, r5, r6, pc}
c0de6580:	fab1 f181 	clz	r1, r1
c0de6584:	094a      	lsrs	r2, r1, #5
c0de6586:	2100      	movs	r1, #0
c0de6588:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de658c:	f000 b802 	b.w	c0de6594 <draw_obj_and_chidren>
c0de6590:	000014d8 	.word	0x000014d8

c0de6594 <draw_obj_and_chidren>:
c0de6594:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6598:	4604      	mov	r4, r0
c0de659a:	7ec0      	ldrb	r0, [r0, #27]
c0de659c:	2810      	cmp	r0, #16
c0de659e:	f200 80a9 	bhi.w	c0de66f4 <draw_obj_and_chidren+0x160>
c0de65a2:	460e      	mov	r6, r1
c0de65a4:	4954      	ldr	r1, [pc, #336]	@ (c0de66f8 <draw_obj_and_chidren+0x164>)
c0de65a6:	40c1      	lsrs	r1, r0
c0de65a8:	07c9      	lsls	r1, r1, #31
c0de65aa:	d167      	bne.n	c0de667c <draw_obj_and_chidren+0xe8>
c0de65ac:	4954      	ldr	r1, [pc, #336]	@ (c0de6700 <draw_obj_and_chidren+0x16c>)
c0de65ae:	4615      	mov	r5, r2
c0de65b0:	4479      	add	r1, pc
c0de65b2:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de65b6:	f005 fc1d 	bl	c0debdf4 <pic>
c0de65ba:	4603      	mov	r3, r0
c0de65bc:	4620      	mov	r0, r4
c0de65be:	4631      	mov	r1, r6
c0de65c0:	462a      	mov	r2, r5
c0de65c2:	4798      	blx	r3
c0de65c4:	f8df c134 	ldr.w	ip, [pc, #308]	@ c0de66fc <draw_obj_and_chidren+0x168>
c0de65c8:	f994 3001 	ldrsb.w	r3, [r4, #1]
c0de65cc:	7827      	ldrb	r7, [r4, #0]
c0de65ce:	eb09 050c 	add.w	r5, r9, ip
c0de65d2:	f939 100c 	ldrsh.w	r1, [r9, ip]
c0de65d6:	ea47 2703 	orr.w	r7, r7, r3, lsl #8
c0de65da:	88ae      	ldrh	r6, [r5, #4]
c0de65dc:	1872      	adds	r2, r6, r1
c0de65de:	428f      	cmp	r7, r1
c0de65e0:	da07      	bge.n	c0de65f2 <draw_obj_and_chidren+0x5e>
c0de65e2:	ea27 71e7 	bic.w	r1, r7, r7, asr #31
c0de65e6:	f829 100c 	strh.w	r1, [r9, ip]
c0de65ea:	7823      	ldrb	r3, [r4, #0]
c0de65ec:	7867      	ldrb	r7, [r4, #1]
c0de65ee:	ea43 2707 	orr.w	r7, r3, r7, lsl #8
c0de65f2:	f9b5 3002 	ldrsh.w	r3, [r5, #2]
c0de65f6:	f8b5 e006 	ldrh.w	lr, [r5, #6]
c0de65fa:	7920      	ldrb	r0, [r4, #4]
c0de65fc:	7965      	ldrb	r5, [r4, #5]
c0de65fe:	b23f      	sxth	r7, r7
c0de6600:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de6604:	4407      	add	r7, r0
c0de6606:	b210      	sxth	r0, r2
c0de6608:	4287      	cmp	r7, r0
c0de660a:	dc00      	bgt.n	c0de660e <draw_obj_and_chidren+0x7a>
c0de660c:	b91e      	cbnz	r6, c0de6616 <draw_obj_and_chidren+0x82>
c0de660e:	2f80      	cmp	r7, #128	@ 0x80
c0de6610:	bfa8      	it	ge
c0de6612:	2780      	movge	r7, #128	@ 0x80
c0de6614:	463a      	mov	r2, r7
c0de6616:	f994 0003 	ldrsb.w	r0, [r4, #3]
c0de661a:	78a5      	ldrb	r5, [r4, #2]
c0de661c:	eb0e 0603 	add.w	r6, lr, r3
c0de6620:	ea45 2700 	orr.w	r7, r5, r0, lsl #8
c0de6624:	429f      	cmp	r7, r3
c0de6626:	da08      	bge.n	c0de663a <draw_obj_and_chidren+0xa6>
c0de6628:	eb09 000c 	add.w	r0, r9, ip
c0de662c:	ea27 73e7 	bic.w	r3, r7, r7, asr #31
c0de6630:	8043      	strh	r3, [r0, #2]
c0de6632:	78a0      	ldrb	r0, [r4, #2]
c0de6634:	78e5      	ldrb	r5, [r4, #3]
c0de6636:	ea40 2705 	orr.w	r7, r0, r5, lsl #8
c0de663a:	b238      	sxth	r0, r7
c0de663c:	79a5      	ldrb	r5, [r4, #6]
c0de663e:	79e7      	ldrb	r7, [r4, #7]
c0de6640:	ea45 2507 	orr.w	r5, r5, r7, lsl #8
c0de6644:	182f      	adds	r7, r5, r0
c0de6646:	b230      	sxth	r0, r6
c0de6648:	4287      	cmp	r7, r0
c0de664a:	dc02      	bgt.n	c0de6652 <draw_obj_and_chidren+0xbe>
c0de664c:	f1be 0f00 	cmp.w	lr, #0
c0de6650:	d103      	bne.n	c0de665a <draw_obj_and_chidren+0xc6>
c0de6652:	2f40      	cmp	r7, #64	@ 0x40
c0de6654:	bfa8      	it	ge
c0de6656:	2740      	movge	r7, #64	@ 0x40
c0de6658:	463e      	mov	r6, r7
c0de665a:	eb09 000c 	add.w	r0, r9, ip
c0de665e:	1a51      	subs	r1, r2, r1
c0de6660:	8081      	strh	r1, [r0, #4]
c0de6662:	b231      	sxth	r1, r6
c0de6664:	2940      	cmp	r1, #64	@ 0x40
c0de6666:	bfa8      	it	ge
c0de6668:	2640      	movge	r6, #64	@ 0x40
c0de666a:	1af1      	subs	r1, r6, r3
c0de666c:	80c1      	strh	r1, [r0, #6]
c0de666e:	7a40      	ldrb	r0, [r0, #9]
c0de6670:	7a61      	ldrb	r1, [r4, #9]
c0de6672:	4281      	cmp	r1, r0
c0de6674:	bf84      	itt	hi
c0de6676:	eb09 000c 	addhi.w	r0, r9, ip
c0de667a:	7241      	strbhi	r1, [r0, #9]
c0de667c:	7ee0      	ldrb	r0, [r4, #27]
c0de667e:	2801      	cmp	r0, #1
c0de6680:	d838      	bhi.n	c0de66f4 <draw_obj_and_chidren+0x160>
c0de6682:	4620      	mov	r0, r4
c0de6684:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de6688:	f000 ff05 	bl	c0de7496 <OUTLINED_FUNCTION_1>
c0de668c:	b390      	cbz	r0, c0de66f4 <draw_obj_and_chidren+0x160>
c0de668e:	2700      	movs	r7, #0
c0de6690:	ea4f 6814 	mov.w	r8, r4, lsr #24
c0de6694:	ea4f 4a14 	mov.w	sl, r4, lsr #16
c0de6698:	ea4f 2b14 	mov.w	fp, r4, lsr #8
c0de669c:	2500      	movs	r5, #0
c0de669e:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de66a2:	4287      	cmp	r7, r0
c0de66a4:	d226      	bcs.n	c0de66f4 <draw_obj_and_chidren+0x160>
c0de66a6:	4620      	mov	r0, r4
c0de66a8:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de66ac:	f000 fef3 	bl	c0de7496 <OUTLINED_FUNCTION_1>
c0de66b0:	f850 6027 	ldr.w	r6, [r0, r7, lsl #2]
c0de66b4:	b1e6      	cbz	r6, c0de66f0 <draw_obj_and_chidren+0x15c>
c0de66b6:	4630      	mov	r0, r6
c0de66b8:	4629      	mov	r1, r5
c0de66ba:	2201      	movs	r2, #1
c0de66bc:	f886 b00f 	strb.w	fp, [r6, #15]
c0de66c0:	f800 4f0e 	strb.w	r4, [r0, #14]!
c0de66c4:	f880 8003 	strb.w	r8, [r0, #3]
c0de66c8:	f880 a002 	strb.w	sl, [r0, #2]
c0de66cc:	4630      	mov	r0, r6
c0de66ce:	f7ff ff61 	bl	c0de6594 <draw_obj_and_chidren>
c0de66d2:	4631      	mov	r1, r6
c0de66d4:	7cf0      	ldrb	r0, [r6, #19]
c0de66d6:	f811 2f12 	ldrb.w	r2, [r1, #18]!
c0de66da:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de66de:	788a      	ldrb	r2, [r1, #2]
c0de66e0:	78c9      	ldrb	r1, [r1, #3]
c0de66e2:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de66e6:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de66ea:	2800      	cmp	r0, #0
c0de66ec:	bf08      	it	eq
c0de66ee:	4635      	moveq	r5, r6
c0de66f0:	3701      	adds	r7, #1
c0de66f2:	e7d4      	b.n	c0de669e <draw_obj_and_chidren+0x10a>
c0de66f4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de66f8:	00013ec8 	.word	0x00013ec8
c0de66fc:	000014da 	.word	0x000014da
c0de6700:	00007c50 	.word	0x00007c50

c0de6704 <nbgl_refresh>:
c0de6704:	2002      	movs	r0, #2
c0de6706:	f000 b801 	b.w	c0de670c <nbgl_refreshSpecial>
	...

c0de670c <nbgl_refreshSpecial>:
c0de670c:	b570      	push	{r4, r5, r6, lr}
c0de670e:	4d0d      	ldr	r5, [pc, #52]	@ (c0de6744 <nbgl_refreshSpecial+0x38>)
c0de6710:	4601      	mov	r1, r0
c0de6712:	eb09 0005 	add.w	r0, r9, r5
c0de6716:	8880      	ldrh	r0, [r0, #4]
c0de6718:	b198      	cbz	r0, c0de6742 <nbgl_refreshSpecial+0x36>
c0de671a:	eb09 0005 	add.w	r0, r9, r5
c0de671e:	88c0      	ldrh	r0, [r0, #6]
c0de6720:	b178      	cbz	r0, c0de6742 <nbgl_refreshSpecial+0x36>
c0de6722:	eb09 0405 	add.w	r4, r9, r5
c0de6726:	2200      	movs	r2, #0
c0de6728:	2600      	movs	r6, #0
c0de672a:	4620      	mov	r0, r4
c0de672c:	f005 fbc8 	bl	c0debec0 <nbgl_frontRefreshArea>
c0de6730:	207f      	movs	r0, #127	@ 0x7f
c0de6732:	80a6      	strh	r6, [r4, #4]
c0de6734:	80e6      	strh	r6, [r4, #6]
c0de6736:	f829 0005 	strh.w	r0, [r9, r5]
c0de673a:	2001      	movs	r0, #1
c0de673c:	7260      	strb	r0, [r4, #9]
c0de673e:	203f      	movs	r0, #63	@ 0x3f
c0de6740:	8060      	strh	r0, [r4, #2]
c0de6742:	bd70      	pop	{r4, r5, r6, pc}
c0de6744:	000014da 	.word	0x000014da

c0de6748 <nbgl_objInit>:
c0de6748:	4801      	ldr	r0, [pc, #4]	@ (c0de6750 <nbgl_objInit+0x8>)
c0de674a:	f000 bee8 	b.w	c0de751e <OUTLINED_FUNCTION_6>
c0de674e:	bf00      	nop
c0de6750:	000014da 	.word	0x000014da

c0de6754 <nbgl_objAllowDrawing>:
c0de6754:	4902      	ldr	r1, [pc, #8]	@ (c0de6760 <nbgl_objAllowDrawing+0xc>)
c0de6756:	f080 0001 	eor.w	r0, r0, #1
c0de675a:	f809 0001 	strb.w	r0, [r9, r1]
c0de675e:	4770      	bx	lr
c0de6760:	000014d8 	.word	0x000014d8

c0de6764 <draw_screen>:
c0de6764:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de6766:	7a01      	ldrb	r1, [r0, #8]
c0de6768:	7842      	ldrb	r2, [r0, #1]
c0de676a:	7883      	ldrb	r3, [r0, #2]
c0de676c:	78c4      	ldrb	r4, [r0, #3]
c0de676e:	f88d 100c 	strb.w	r1, [sp, #12]
c0de6772:	7801      	ldrb	r1, [r0, #0]
c0de6774:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de6778:	7902      	ldrb	r2, [r0, #4]
c0de677a:	f8ad 1004 	strh.w	r1, [sp, #4]
c0de677e:	ea43 2104 	orr.w	r1, r3, r4, lsl #8
c0de6782:	f8ad 1006 	strh.w	r1, [sp, #6]
c0de6786:	7941      	ldrb	r1, [r0, #5]
c0de6788:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de678c:	f8ad 1008 	strh.w	r1, [sp, #8]
c0de6790:	79c1      	ldrb	r1, [r0, #7]
c0de6792:	7980      	ldrb	r0, [r0, #6]
c0de6794:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6798:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de679c:	a801      	add	r0, sp, #4
c0de679e:	f005 fb59 	bl	c0debe54 <nbgl_frontDrawRect>
c0de67a2:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de67a4 <draw_container>:
c0de67a4:	b570      	push	{r4, r5, r6, lr}
c0de67a6:	4604      	mov	r4, r0
c0de67a8:	b10a      	cbz	r2, c0de67ae <draw_container+0xa>
c0de67aa:	f000 fed5 	bl	c0de7558 <OUTLINED_FUNCTION_9>
c0de67ae:	f000 fee6 	bl	c0de757e <OUTLINED_FUNCTION_12>
c0de67b2:	7cc6      	ldrb	r6, [r0, #19]
c0de67b4:	f000 fedb 	bl	c0de756e <OUTLINED_FUNCTION_11>
c0de67b8:	7a09      	ldrb	r1, [r1, #8]
c0de67ba:	f800 1c06 	strb.w	r1, [r0, #-6]
c0de67be:	d004      	beq.n	c0de67ca <draw_container+0x26>
c0de67c0:	4620      	mov	r0, r4
c0de67c2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de67c6:	f005 bb45 	b.w	c0debe54 <nbgl_frontDrawRect>
c0de67ca:	bd70      	pop	{r4, r5, r6, pc}

c0de67cc <draw_image>:
c0de67cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de67ce:	460e      	mov	r6, r1
c0de67d0:	4604      	mov	r4, r0
c0de67d2:	f810 1f21 	ldrb.w	r1, [r0, #33]!
c0de67d6:	4617      	mov	r7, r2
c0de67d8:	f000 fe53 	bl	c0de7482 <OUTLINED_FUNCTION_0>
c0de67dc:	b35d      	cbz	r5, c0de6836 <draw_image+0x6a>
c0de67de:	7828      	ldrb	r0, [r5, #0]
c0de67e0:	78aa      	ldrb	r2, [r5, #2]
c0de67e2:	7869      	ldrb	r1, [r5, #1]
c0de67e4:	78eb      	ldrb	r3, [r5, #3]
c0de67e6:	7120      	strb	r0, [r4, #4]
c0de67e8:	71a2      	strb	r2, [r4, #6]
c0de67ea:	7161      	strb	r1, [r4, #5]
c0de67ec:	71e3      	strb	r3, [r4, #7]
c0de67ee:	7928      	ldrb	r0, [r5, #4]
c0de67f0:	7260      	strb	r0, [r4, #9]
c0de67f2:	b127      	cbz	r7, c0de67fe <draw_image+0x32>
c0de67f4:	4620      	mov	r0, r4
c0de67f6:	4631      	mov	r1, r6
c0de67f8:	f000 fb8c 	bl	c0de6f14 <compute_position>
c0de67fc:	7a60      	ldrb	r0, [r4, #9]
c0de67fe:	4621      	mov	r1, r4
c0de6800:	2801      	cmp	r0, #1
c0de6802:	4620      	mov	r0, r4
c0de6804:	f811 2f0e 	ldrb.w	r2, [r1, #14]!
c0de6808:	784b      	ldrb	r3, [r1, #1]
c0de680a:	788e      	ldrb	r6, [r1, #2]
c0de680c:	78cf      	ldrb	r7, [r1, #3]
c0de680e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6812:	ea46 2307 	orr.w	r3, r6, r7, lsl #8
c0de6816:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de681a:	462b      	mov	r3, r5
c0de681c:	7a12      	ldrb	r2, [r2, #8]
c0de681e:	f801 2c06 	strb.w	r2, [r1, #-6]
c0de6822:	bf14      	ite	ne
c0de6824:	7fe2      	ldrbne	r2, [r4, #31]
c0de6826:	22e4      	moveq	r2, #228	@ 0xe4
c0de6828:	f894 1020 	ldrb.w	r1, [r4, #32]
c0de682c:	b001      	add	sp, #4
c0de682e:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de6832:	f7fe bbeb 	b.w	c0de500c <nbgl_drawIcon>
c0de6836:	4620      	mov	r0, r4
c0de6838:	f810 1f25 	ldrb.w	r1, [r0, #37]!
c0de683c:	f000 fe48 	bl	c0de74d0 <OUTLINED_FUNCTION_3>
c0de6840:	d005      	beq.n	c0de684e <draw_image+0x82>
c0de6842:	f894 0029 	ldrb.w	r0, [r4, #41]	@ 0x29
c0de6846:	4788      	blx	r1
c0de6848:	4605      	mov	r5, r0
c0de684a:	2800      	cmp	r0, #0
c0de684c:	d1c7      	bne.n	c0de67de <draw_image+0x12>
c0de684e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de6850 <draw_textArea>:
c0de6850:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6854:	b086      	sub	sp, #24
c0de6856:	f890 6022 	ldrb.w	r6, [r0, #34]	@ 0x22
c0de685a:	4604      	mov	r4, r0
c0de685c:	b10a      	cbz	r2, c0de6862 <draw_textArea+0x12>
c0de685e:	f000 fe7b 	bl	c0de7558 <OUTLINED_FUNCTION_9>
c0de6862:	4620      	mov	r0, r4
c0de6864:	f810 1f2c 	ldrb.w	r1, [r0, #44]!
c0de6868:	f000 fe32 	bl	c0de74d0 <OUTLINED_FUNCTION_3>
c0de686c:	d009      	beq.n	c0de6882 <draw_textArea+0x32>
c0de686e:	f894 0030 	ldrb.w	r0, [r4, #48]	@ 0x30
c0de6872:	4788      	blx	r1
c0de6874:	4605      	mov	r5, r0
c0de6876:	4620      	mov	r0, r4
c0de6878:	f800 5f26 	strb.w	r5, [r0, #38]!
c0de687c:	f000 fe86 	bl	c0de758c <OUTLINED_FUNCTION_13>
c0de6880:	e004      	b.n	c0de688c <draw_textArea+0x3c>
c0de6882:	4620      	mov	r0, r4
c0de6884:	f810 1f26 	ldrb.w	r1, [r0, #38]!
c0de6888:	f000 fdfb 	bl	c0de7482 <OUTLINED_FUNCTION_0>
c0de688c:	2d00      	cmp	r5, #0
c0de688e:	f000 8138 	beq.w	c0de6b02 <draw_textArea+0x2b2>
c0de6892:	4622      	mov	r2, r4
c0de6894:	f812 1f0e 	ldrb.w	r1, [r2, #14]!
c0de6898:	7853      	ldrb	r3, [r2, #1]
c0de689a:	7897      	ldrb	r7, [r2, #2]
c0de689c:	78d0      	ldrb	r0, [r2, #3]
c0de689e:	f892 c013 	ldrb.w	ip, [r2, #19]
c0de68a2:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de68a6:	ea47 2000 	orr.w	r0, r7, r0, lsl #8
c0de68aa:	f1bc 0f01 	cmp.w	ip, #1
c0de68ae:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
c0de68b2:	7a08      	ldrb	r0, [r1, #8]
c0de68b4:	f802 0c06 	strb.w	r0, [r2, #-6]
c0de68b8:	bf19      	ittee	ne
c0de68ba:	7a09      	ldrbne	r1, [r1, #8]
c0de68bc:	460a      	movne	r2, r1
c0de68be:	2200      	moveq	r2, #0
c0de68c0:	2103      	moveq	r1, #3
c0de68c2:	7221      	strb	r1, [r4, #8]
c0de68c4:	7820      	ldrb	r0, [r4, #0]
c0de68c6:	f88d 2014 	strb.w	r2, [sp, #20]
c0de68ca:	78e3      	ldrb	r3, [r4, #3]
c0de68cc:	f1bc 0f01 	cmp.w	ip, #1
c0de68d0:	7861      	ldrb	r1, [r4, #1]
c0de68d2:	78a2      	ldrb	r2, [r4, #2]
c0de68d4:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de68d8:	7921      	ldrb	r1, [r4, #4]
c0de68da:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de68de:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de68e2:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de68e6:	7960      	ldrb	r0, [r4, #5]
c0de68e8:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de68ec:	79a1      	ldrb	r1, [r4, #6]
c0de68ee:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de68f2:	79e0      	ldrb	r0, [r4, #7]
c0de68f4:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de68f8:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de68fc:	a803      	add	r0, sp, #12
c0de68fe:	d104      	bne.n	c0de690a <draw_textArea+0xba>
c0de6900:	2100      	movs	r1, #0
c0de6902:	2203      	movs	r2, #3
c0de6904:	f7fe f8c0 	bl	c0de4a88 <nbgl_drawRoundedRect>
c0de6908:	e001      	b.n	c0de690e <draw_textArea+0xbe>
c0de690a:	f005 faa3 	bl	c0debe54 <nbgl_frontDrawRect>
c0de690e:	4630      	mov	r0, r6
c0de6910:	f7fe fd4c 	bl	c0de53ac <nbgl_getFontHeight>
c0de6914:	4680      	mov	r8, r0
c0de6916:	4630      	mov	r0, r6
c0de6918:	f7fe fd4d 	bl	c0de53b6 <nbgl_getFontLineHeight>
c0de691c:	4683      	mov	fp, r0
c0de691e:	f894 0023 	ldrb.w	r0, [r4, #35]	@ 0x23
c0de6922:	2800      	cmp	r0, #0
c0de6924:	d057      	beq.n	c0de69d6 <draw_textArea+0x186>
c0de6926:	4630      	mov	r0, r6
c0de6928:	4629      	mov	r1, r5
c0de692a:	f7fe fcd0 	bl	c0de52ce <nbgl_getSingleLineTextWidth>
c0de692e:	7921      	ldrb	r1, [r4, #4]
c0de6930:	7962      	ldrb	r2, [r4, #5]
c0de6932:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
c0de6936:	4290      	cmp	r0, r2
c0de6938:	d951      	bls.n	c0de69de <draw_textArea+0x18e>
c0de693a:	4f73      	ldr	r7, [pc, #460]	@ (c0de6b08 <draw_textArea+0x2b8>)
c0de693c:	4630      	mov	r0, r6
c0de693e:	447f      	add	r7, pc
c0de6940:	4639      	mov	r1, r7
c0de6942:	f7fe fd16 	bl	c0de5372 <nbgl_getTextWidth>
c0de6946:	4682      	mov	sl, r0
c0de6948:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de694c:	7820      	ldrb	r0, [r4, #0]
c0de694e:	7861      	ldrb	r1, [r4, #1]
c0de6950:	78a2      	ldrb	r2, [r4, #2]
c0de6952:	78e3      	ldrb	r3, [r4, #3]
c0de6954:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6958:	79a1      	ldrb	r1, [r4, #6]
c0de695a:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de695e:	79e0      	ldrb	r0, [r4, #7]
c0de6960:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de6964:	2102      	movs	r1, #2
c0de6966:	eba0 0008 	sub.w	r0, r0, r8
c0de696a:	f10d 080c 	add.w	r8, sp, #12
c0de696e:	fb90 f0f1 	sdiv	r0, r0, r1
c0de6972:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de6976:	2203      	movs	r2, #3
c0de6978:	4633      	mov	r3, r6
c0de697a:	4408      	add	r0, r1
c0de697c:	4639      	mov	r1, r7
c0de697e:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de6982:	7fe0      	ldrb	r0, [r4, #31]
c0de6984:	9000      	str	r0, [sp, #0]
c0de6986:	4640      	mov	r0, r8
c0de6988:	f7fe fb60 	bl	c0de504c <nbgl_drawText>
c0de698c:	7920      	ldrb	r0, [r4, #4]
c0de698e:	7961      	ldrb	r1, [r4, #5]
c0de6990:	f10d 020a 	add.w	r2, sp, #10
c0de6994:	9200      	str	r2, [sp, #0]
c0de6996:	ab02      	add	r3, sp, #8
c0de6998:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de699c:	4629      	mov	r1, r5
c0de699e:	eba0 000a 	sub.w	r0, r0, sl
c0de69a2:	b282      	uxth	r2, r0
c0de69a4:	4630      	mov	r0, r6
c0de69a6:	f7fe fe2b 	bl	c0de5600 <nbgl_getTextMaxLenAndWidthFromEnd>
c0de69aa:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de69ae:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de69b2:	f8bd 000c 	ldrh.w	r0, [sp, #12]
c0de69b6:	4450      	add	r0, sl
c0de69b8:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de69bc:	4628      	mov	r0, r5
c0de69be:	f7fe fcff 	bl	c0de53c0 <nbgl_getTextLength>
c0de69c2:	f8bd 2008 	ldrh.w	r2, [sp, #8]
c0de69c6:	7fe1      	ldrb	r1, [r4, #31]
c0de69c8:	f894 3022 	ldrb.w	r3, [r4, #34]	@ 0x22
c0de69cc:	1a80      	subs	r0, r0, r2
c0de69ce:	9100      	str	r1, [sp, #0]
c0de69d0:	1829      	adds	r1, r5, r0
c0de69d2:	4640      	mov	r0, r8
c0de69d4:	e093      	b.n	c0de6afe <draw_textArea+0x2ae>
c0de69d6:	7920      	ldrb	r0, [r4, #4]
c0de69d8:	7961      	ldrb	r1, [r4, #5]
c0de69da:	ea40 2201 	orr.w	r2, r0, r1, lsl #8
c0de69de:	f894 3024 	ldrb.w	r3, [r4, #36]	@ 0x24
c0de69e2:	4630      	mov	r0, r6
c0de69e4:	4629      	mov	r1, r5
c0de69e6:	f7fe fe4d 	bl	c0de5684 <nbgl_getTextNbLinesInWidth>
c0de69ea:	7a23      	ldrb	r3, [r4, #8]
c0de69ec:	f894 7025 	ldrb.w	r7, [r4, #37]	@ 0x25
c0de69f0:	f8ad 8012 	strh.w	r8, [sp, #18]
c0de69f4:	79a1      	ldrb	r1, [r4, #6]
c0de69f6:	79e2      	ldrb	r2, [r4, #7]
c0de69f8:	f894 c021 	ldrb.w	ip, [r4, #33]	@ 0x21
c0de69fc:	f88d 3014 	strb.w	r3, [sp, #20]
c0de6a00:	b2c3      	uxtb	r3, r0
c0de6a02:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de6a06:	42bb      	cmp	r3, r7
c0de6a08:	4603      	mov	r3, r0
c0de6a0a:	bf88      	it	hi
c0de6a0c:	463b      	movhi	r3, r7
c0de6a0e:	2f00      	cmp	r7, #0
c0de6a10:	bf08      	it	eq
c0de6a12:	4603      	moveq	r3, r0
c0de6a14:	b2df      	uxtb	r7, r3
c0de6a16:	1e78      	subs	r0, r7, #1
c0de6a18:	fb00 800b 	mla	r0, r0, fp, r8
c0de6a1c:	f04f 0800 	mov.w	r8, #0
c0de6a20:	b280      	uxth	r0, r0
c0de6a22:	1a08      	subs	r0, r1, r0
c0de6a24:	2102      	movs	r1, #2
c0de6a26:	fb90 faf1 	sdiv	sl, r0, r1
c0de6a2a:	f64f 70ff 	movw	r0, #65535	@ 0xffff
c0de6a2e:	f1bc 0f01 	cmp.w	ip, #1
c0de6a32:	bf08      	it	eq
c0de6a34:	4482      	addeq	sl, r0
c0de6a36:	4547      	cmp	r7, r8
c0de6a38:	d063      	beq.n	c0de6b02 <draw_textArea+0x2b2>
c0de6a3a:	7920      	ldrb	r0, [r4, #4]
c0de6a3c:	7961      	ldrb	r1, [r4, #5]
c0de6a3e:	f894 2024 	ldrb.w	r2, [r4, #36]	@ 0x24
c0de6a42:	f10d 030a 	add.w	r3, sp, #10
c0de6a46:	b2f6      	uxtb	r6, r6
c0de6a48:	e9cd 3200 	strd	r3, r2, [sp]
c0de6a4c:	ea40 2201 	orr.w	r2, r0, r1, lsl #8
c0de6a50:	4630      	mov	r0, r6
c0de6a52:	4629      	mov	r1, r5
c0de6a54:	ab02      	add	r3, sp, #8
c0de6a56:	f7fe fcc3 	bl	c0de53e0 <nbgl_getTextMaxLenAndWidth>
c0de6a5a:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de6a5e:	2806      	cmp	r0, #6
c0de6a60:	d008      	beq.n	c0de6a74 <draw_textArea+0x224>
c0de6a62:	2805      	cmp	r0, #5
c0de6a64:	d013      	beq.n	c0de6a8e <draw_textArea+0x23e>
c0de6a66:	2804      	cmp	r0, #4
c0de6a68:	d122      	bne.n	c0de6ab0 <draw_textArea+0x260>
c0de6a6a:	7820      	ldrb	r0, [r4, #0]
c0de6a6c:	7861      	ldrb	r1, [r4, #1]
c0de6a6e:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6a72:	e01b      	b.n	c0de6aac <draw_textArea+0x25c>
c0de6a74:	7820      	ldrb	r0, [r4, #0]
c0de6a76:	7861      	ldrb	r1, [r4, #1]
c0de6a78:	7922      	ldrb	r2, [r4, #4]
c0de6a7a:	7963      	ldrb	r3, [r4, #5]
c0de6a7c:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6a80:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de6a84:	4408      	add	r0, r1
c0de6a86:	f8bd 100a 	ldrh.w	r1, [sp, #10]
c0de6a8a:	1a40      	subs	r0, r0, r1
c0de6a8c:	e00e      	b.n	c0de6aac <draw_textArea+0x25c>
c0de6a8e:	7922      	ldrb	r2, [r4, #4]
c0de6a90:	7963      	ldrb	r3, [r4, #5]
c0de6a92:	7820      	ldrb	r0, [r4, #0]
c0de6a94:	7861      	ldrb	r1, [r4, #1]
c0de6a96:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6a9a:	f8bd 300a 	ldrh.w	r3, [sp, #10]
c0de6a9e:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6aa2:	1ad2      	subs	r2, r2, r3
c0de6aa4:	2302      	movs	r3, #2
c0de6aa6:	fb92 f2f3 	sdiv	r2, r2, r3
c0de6aaa:	4410      	add	r0, r2
c0de6aac:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de6ab0:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de6ab4:	78a1      	ldrb	r1, [r4, #2]
c0de6ab6:	78e2      	ldrb	r2, [r4, #3]
c0de6ab8:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de6abc:	f894 0025 	ldrb.w	r0, [r4, #37]	@ 0x25
c0de6ac0:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de6ac4:	4451      	add	r1, sl
c0de6ac6:	f8ad 100e 	strh.w	r1, [sp, #14]
c0de6aca:	b110      	cbz	r0, c0de6ad2 <draw_textArea+0x282>
c0de6acc:	3801      	subs	r0, #1
c0de6ace:	4540      	cmp	r0, r8
c0de6ad0:	d912      	bls.n	c0de6af8 <draw_textArea+0x2a8>
c0de6ad2:	f000 fd62 	bl	c0de759a <OUTLINED_FUNCTION_14>
c0de6ad6:	a803      	add	r0, sp, #12
c0de6ad8:	f7fe fab8 	bl	c0de504c <nbgl_drawText>
c0de6adc:	4606      	mov	r6, r0
c0de6ade:	f8bd 0008 	ldrh.w	r0, [sp, #8]
c0de6ae2:	44da      	add	sl, fp
c0de6ae4:	f108 0801 	add.w	r8, r8, #1
c0de6ae8:	4428      	add	r0, r5
c0de6aea:	4605      	mov	r5, r0
c0de6aec:	f815 1b01 	ldrb.w	r1, [r5], #1
c0de6af0:	290a      	cmp	r1, #10
c0de6af2:	bf18      	it	ne
c0de6af4:	4605      	movne	r5, r0
c0de6af6:	e79e      	b.n	c0de6a36 <draw_textArea+0x1e6>
c0de6af8:	f000 fd4f 	bl	c0de759a <OUTLINED_FUNCTION_14>
c0de6afc:	a803      	add	r0, sp, #12
c0de6afe:	f7fe faa5 	bl	c0de504c <nbgl_drawText>
c0de6b02:	b006      	add	sp, #24
c0de6b04:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6b08:	00006119 	.word	0x00006119

c0de6b0c <draw_button>:
c0de6b0c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6b10:	b086      	sub	sp, #24
c0de6b12:	4604      	mov	r4, r0
c0de6b14:	2000      	movs	r0, #0
c0de6b16:	f8ad 0016 	strh.w	r0, [sp, #22]
c0de6b1a:	b10a      	cbz	r2, c0de6b20 <draw_button+0x14>
c0de6b1c:	f000 fd1c 	bl	c0de7558 <OUTLINED_FUNCTION_9>
c0de6b20:	4623      	mov	r3, r4
c0de6b22:	7be0      	ldrb	r0, [r4, #15]
c0de6b24:	7fe2      	ldrb	r2, [r4, #31]
c0de6b26:	f894 1022 	ldrb.w	r1, [r4, #34]	@ 0x22
c0de6b2a:	f813 5f0e 	ldrb.w	r5, [r3, #14]!
c0de6b2e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de6b32:	789d      	ldrb	r5, [r3, #2]
c0de6b34:	78db      	ldrb	r3, [r3, #3]
c0de6b36:	ea45 2303 	orr.w	r3, r5, r3, lsl #8
c0de6b3a:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de6b3e:	7a00      	ldrb	r0, [r0, #8]
c0de6b40:	7220      	strb	r0, [r4, #8]
c0de6b42:	4620      	mov	r0, r4
c0de6b44:	f7fd ffa0 	bl	c0de4a88 <nbgl_drawRoundedRect>
c0de6b48:	4620      	mov	r0, r4
c0de6b4a:	f810 1f29 	ldrb.w	r1, [r0, #41]!
c0de6b4e:	f000 fcbf 	bl	c0de74d0 <OUTLINED_FUNCTION_3>
c0de6b52:	d009      	beq.n	c0de6b68 <draw_button+0x5c>
c0de6b54:	f894 0031 	ldrb.w	r0, [r4, #49]	@ 0x31
c0de6b58:	4788      	blx	r1
c0de6b5a:	4605      	mov	r5, r0
c0de6b5c:	4620      	mov	r0, r4
c0de6b5e:	f800 5f25 	strb.w	r5, [r0, #37]!
c0de6b62:	f000 fd13 	bl	c0de758c <OUTLINED_FUNCTION_13>
c0de6b66:	e004      	b.n	c0de6b72 <draw_button+0x66>
c0de6b68:	4620      	mov	r0, r4
c0de6b6a:	f810 1f25 	ldrb.w	r1, [r0, #37]!
c0de6b6e:	f000 fc88 	bl	c0de7482 <OUTLINED_FUNCTION_0>
c0de6b72:	2d00      	cmp	r5, #0
c0de6b74:	d076      	beq.n	c0de6c64 <draw_button+0x158>
c0de6b76:	7820      	ldrb	r0, [r4, #0]
c0de6b78:	7861      	ldrb	r1, [r4, #1]
c0de6b7a:	f894 8002 	ldrb.w	r8, [r4, #2]
c0de6b7e:	f894 b003 	ldrb.w	fp, [r4, #3]
c0de6b82:	ea40 2a01 	orr.w	sl, r0, r1, lsl #8
c0de6b86:	f894 0023 	ldrb.w	r0, [r4, #35]	@ 0x23
c0de6b8a:	f8ad a00c 	strh.w	sl, [sp, #12]
c0de6b8e:	f7fe fc0d 	bl	c0de53ac <nbgl_getFontHeight>
c0de6b92:	4622      	mov	r2, r4
c0de6b94:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de6b98:	f812 cf2d 	ldrb.w	ip, [r2, #45]!
c0de6b9c:	f812 6c27 	ldrb.w	r6, [r2, #-39]
c0de6ba0:	f812 3c26 	ldrb.w	r3, [r2, #-38]
c0de6ba4:	f812 1c29 	ldrb.w	r1, [r2, #-41]
c0de6ba8:	f812 7c28 	ldrb.w	r7, [r2, #-40]
c0de6bac:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de6bb0:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
c0de6bb4:	1a18      	subs	r0, r3, r0
c0de6bb6:	2302      	movs	r3, #2
c0de6bb8:	f8ad 1010 	strh.w	r1, [sp, #16]
c0de6bbc:	fb90 f0f3 	sdiv	r0, r0, r3
c0de6bc0:	ea48 230b 	orr.w	r3, r8, fp, lsl #8
c0de6bc4:	4418      	add	r0, r3
c0de6bc6:	7893      	ldrb	r3, [r2, #2]
c0de6bc8:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de6bcc:	78d0      	ldrb	r0, [r2, #3]
c0de6bce:	7852      	ldrb	r2, [r2, #1]
c0de6bd0:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de6bd4:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
c0de6bd8:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de6bdc:	b150      	cbz	r0, c0de6bf4 <draw_button+0xe8>
c0de6bde:	7802      	ldrb	r2, [r0, #0]
c0de6be0:	7840      	ldrb	r0, [r0, #1]
c0de6be2:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6be6:	3002      	adds	r0, #2
c0de6be8:	1a09      	subs	r1, r1, r0
c0de6bea:	4482      	add	sl, r0
c0de6bec:	f8ad 1010 	strh.w	r1, [sp, #16]
c0de6bf0:	f8ad a00c 	strh.w	sl, [sp, #12]
c0de6bf4:	b28e      	uxth	r6, r1
c0de6bf6:	f894 0023 	ldrb.w	r0, [r4, #35]	@ 0x23
c0de6bfa:	2201      	movs	r2, #1
c0de6bfc:	f10d 0316 	add.w	r3, sp, #22
c0de6c00:	4629      	mov	r1, r5
c0de6c02:	e9cd 3200 	strd	r3, r2, [sp]
c0de6c06:	f10d 030a 	add.w	r3, sp, #10
c0de6c0a:	4632      	mov	r2, r6
c0de6c0c:	f7fe fbe8 	bl	c0de53e0 <nbgl_getTextMaxLenAndWidth>
c0de6c10:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de6c14:	4286      	cmp	r6, r0
c0de6c16:	d906      	bls.n	c0de6c26 <draw_button+0x11a>
c0de6c18:	1a30      	subs	r0, r6, r0
c0de6c1a:	2102      	movs	r1, #2
c0de6c1c:	fb90 f0f1 	sdiv	r0, r0, r1
c0de6c20:	4450      	add	r0, sl
c0de6c22:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de6c26:	7fe0      	ldrb	r0, [r4, #31]
c0de6c28:	f894 1021 	ldrb.w	r1, [r4, #33]	@ 0x21
c0de6c2c:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
c0de6c30:	f8bd 200a 	ldrh.w	r2, [sp, #10]
c0de6c34:	9100      	str	r1, [sp, #0]
c0de6c36:	f88d 0014 	strb.w	r0, [sp, #20]
c0de6c3a:	a803      	add	r0, sp, #12
c0de6c3c:	4629      	mov	r1, r5
c0de6c3e:	f7fe fa05 	bl	c0de504c <nbgl_drawText>
c0de6c42:	f000 fc5e 	bl	c0de7502 <OUTLINED_FUNCTION_5>
c0de6c46:	d047      	beq.n	c0de6cd8 <draw_button+0x1cc>
c0de6c48:	7818      	ldrb	r0, [r3, #0]
c0de6c4a:	7859      	ldrb	r1, [r3, #1]
c0de6c4c:	7922      	ldrb	r2, [r4, #4]
c0de6c4e:	7965      	ldrb	r5, [r4, #5]
c0de6c50:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6c54:	f8bd 1016 	ldrh.w	r1, [sp, #22]
c0de6c58:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
c0de6c5c:	4401      	add	r1, r0
c0de6c5e:	1a51      	subs	r1, r2, r1
c0de6c60:	3902      	subs	r1, #2
c0de6c62:	e00b      	b.n	c0de6c7c <draw_button+0x170>
c0de6c64:	f000 fc4d 	bl	c0de7502 <OUTLINED_FUNCTION_5>
c0de6c68:	d036      	beq.n	c0de6cd8 <draw_button+0x1cc>
c0de6c6a:	7818      	ldrb	r0, [r3, #0]
c0de6c6c:	7859      	ldrb	r1, [r3, #1]
c0de6c6e:	7962      	ldrb	r2, [r4, #5]
c0de6c70:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6c74:	7921      	ldrb	r1, [r4, #4]
c0de6c76:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de6c7a:	1a09      	subs	r1, r1, r0
c0de6c7c:	f04f 0c02 	mov.w	ip, #2
c0de6c80:	7826      	ldrb	r6, [r4, #0]
c0de6c82:	7867      	ldrb	r7, [r4, #1]
c0de6c84:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de6c88:	7fe0      	ldrb	r0, [r4, #31]
c0de6c8a:	fb91 f1fc 	sdiv	r1, r1, ip
c0de6c8e:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de6c92:	f88d 0014 	strb.w	r0, [sp, #20]
c0de6c96:	78e0      	ldrb	r0, [r4, #3]
c0de6c98:	4431      	add	r1, r6
c0de6c9a:	f893 e002 	ldrb.w	lr, [r3, #2]
c0de6c9e:	78da      	ldrb	r2, [r3, #3]
c0de6ca0:	79a6      	ldrb	r6, [r4, #6]
c0de6ca2:	791d      	ldrb	r5, [r3, #4]
c0de6ca4:	f8ad 100c 	strh.w	r1, [sp, #12]
c0de6ca8:	79e1      	ldrb	r1, [r4, #7]
c0de6caa:	ea4e 2202 	orr.w	r2, lr, r2, lsl #8
c0de6cae:	f88d 5015 	strb.w	r5, [sp, #21]
c0de6cb2:	78a5      	ldrb	r5, [r4, #2]
c0de6cb4:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de6cb8:	f8ad 2012 	strh.w	r2, [sp, #18]
c0de6cbc:	1a89      	subs	r1, r1, r2
c0de6cbe:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de6cc2:	f894 2021 	ldrb.w	r2, [r4, #33]	@ 0x21
c0de6cc6:	fb91 f1fc 	sdiv	r1, r1, ip
c0de6cca:	4408      	add	r0, r1
c0de6ccc:	2100      	movs	r1, #0
c0de6cce:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de6cd2:	a803      	add	r0, sp, #12
c0de6cd4:	f7fe f99a 	bl	c0de500c <nbgl_drawIcon>
c0de6cd8:	b006      	add	sp, #24
c0de6cda:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de6cde <draw_progressBar>:
c0de6cde:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de6ce0:	4604      	mov	r4, r0
c0de6ce2:	b10a      	cbz	r2, c0de6ce8 <draw_progressBar+0xa>
c0de6ce4:	f000 fc38 	bl	c0de7558 <OUTLINED_FUNCTION_9>
c0de6ce8:	f000 fc49 	bl	c0de757e <OUTLINED_FUNCTION_12>
c0de6cec:	7c46      	ldrb	r6, [r0, #17]
c0de6cee:	f000 fc3e 	bl	c0de756e <OUTLINED_FUNCTION_11>
c0de6cf2:	7a0b      	ldrb	r3, [r1, #8]
c0de6cf4:	f800 3c06 	strb.w	r3, [r0, #-6]
c0de6cf8:	d008      	beq.n	c0de6d0c <draw_progressBar+0x2e>
c0de6cfa:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
c0de6cfe:	2101      	movs	r1, #1
c0de6d00:	2201      	movs	r2, #1
c0de6d02:	9000      	str	r0, [sp, #0]
c0de6d04:	4620      	mov	r0, r4
c0de6d06:	f7fe f809 	bl	c0de4d1c <nbgl_drawRoundedBorderedRect>
c0de6d0a:	e004      	b.n	c0de6d16 <draw_progressBar+0x38>
c0de6d0c:	4620      	mov	r0, r4
c0de6d0e:	2101      	movs	r1, #1
c0de6d10:	461a      	mov	r2, r3
c0de6d12:	f7fd feb9 	bl	c0de4a88 <nbgl_drawRoundedRect>
c0de6d16:	7920      	ldrb	r0, [r4, #4]
c0de6d18:	7961      	ldrb	r1, [r4, #5]
c0de6d1a:	f894 2020 	ldrb.w	r2, [r4, #32]
c0de6d1e:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6d22:	3802      	subs	r0, #2
c0de6d24:	fb00 f102 	mul.w	r1, r0, r2
c0de6d28:	2264      	movs	r2, #100	@ 0x64
c0de6d2a:	fb91 f1f2 	sdiv	r1, r1, r2
c0de6d2e:	4281      	cmp	r1, r0
c0de6d30:	bfb8      	it	lt
c0de6d32:	4608      	movlt	r0, r1
c0de6d34:	0401      	lsls	r1, r0, #16
c0de6d36:	d020      	beq.n	c0de6d7a <draw_progressBar+0x9c>
c0de6d38:	f8ad 0008 	strh.w	r0, [sp, #8]
c0de6d3c:	2000      	movs	r0, #0
c0de6d3e:	79a1      	ldrb	r1, [r4, #6]
c0de6d40:	78a2      	ldrb	r2, [r4, #2]
c0de6d42:	78e3      	ldrb	r3, [r4, #3]
c0de6d44:	f88d 000d 	strb.w	r0, [sp, #13]
c0de6d48:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
c0de6d4c:	f88d 000c 	strb.w	r0, [sp, #12]
c0de6d50:	79e0      	ldrb	r0, [r4, #7]
c0de6d52:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de6d56:	7861      	ldrb	r1, [r4, #1]
c0de6d58:	3802      	subs	r0, #2
c0de6d5a:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de6d5e:	7820      	ldrb	r0, [r4, #0]
c0de6d60:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6d64:	3001      	adds	r0, #1
c0de6d66:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de6d6a:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de6d6e:	3001      	adds	r0, #1
c0de6d70:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de6d74:	a801      	add	r0, sp, #4
c0de6d76:	f005 f86d 	bl	c0debe54 <nbgl_frontDrawRect>
c0de6d7a:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}

c0de6d7c <draw_image_file>:
c0de6d7c:	b570      	push	{r4, r5, r6, lr}
c0de6d7e:	4604      	mov	r4, r0
c0de6d80:	f810 3f1f 	ldrb.w	r3, [r0, #31]!
c0de6d84:	7845      	ldrb	r5, [r0, #1]
c0de6d86:	7886      	ldrb	r6, [r0, #2]
c0de6d88:	78c0      	ldrb	r0, [r0, #3]
c0de6d8a:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de6d8e:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
c0de6d92:	ea43 4500 	orr.w	r5, r3, r0, lsl #16
c0de6d96:	b19d      	cbz	r5, c0de6dc0 <draw_image_file+0x44>
c0de6d98:	b132      	cbz	r2, c0de6da8 <draw_image_file+0x2c>
c0de6d9a:	f000 fbdd 	bl	c0de7558 <OUTLINED_FUNCTION_9>
c0de6d9e:	4620      	mov	r0, r4
c0de6da0:	f810 1f1f 	ldrb.w	r1, [r0, #31]!
c0de6da4:	f000 fb6d 	bl	c0de7482 <OUTLINED_FUNCTION_0>
c0de6da8:	2003      	movs	r0, #3
c0de6daa:	4629      	mov	r1, r5
c0de6dac:	2200      	movs	r2, #0
c0de6dae:	7220      	strb	r0, [r4, #8]
c0de6db0:	4804      	ldr	r0, [pc, #16]	@ (c0de6dc4 <draw_image_file+0x48>)
c0de6db2:	eb09 0300 	add.w	r3, r9, r0
c0de6db6:	4620      	mov	r0, r4
c0de6db8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6dbc:	f005 b872 	b.w	c0debea4 <nbgl_frontDrawImageFile>
c0de6dc0:	bd70      	pop	{r4, r5, r6, pc}
c0de6dc2:	bf00      	nop
c0de6dc4:	000014e4 	.word	0x000014e4

c0de6dc8 <draw_textEntry>:
c0de6dc8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6dcc:	b086      	sub	sp, #24
c0de6dce:	460e      	mov	r6, r1
c0de6dd0:	4604      	mov	r4, r0
c0de6dd2:	f810 1f21 	ldrb.w	r1, [r0, #33]!
c0de6dd6:	4617      	mov	r7, r2
c0de6dd8:	f000 fb5d 	bl	c0de7496 <OUTLINED_FUNCTION_1>
c0de6ddc:	f005 fc34 	bl	c0dec648 <strlen>
c0de6de0:	4605      	mov	r5, r0
c0de6de2:	b11f      	cbz	r7, c0de6dec <draw_textEntry+0x24>
c0de6de4:	4620      	mov	r0, r4
c0de6de6:	4631      	mov	r1, r6
c0de6de8:	f000 f894 	bl	c0de6f14 <compute_position>
c0de6dec:	2003      	movs	r0, #3
c0de6dee:	7861      	ldrb	r1, [r4, #1]
c0de6df0:	78a2      	ldrb	r2, [r4, #2]
c0de6df2:	78e3      	ldrb	r3, [r4, #3]
c0de6df4:	7220      	strb	r0, [r4, #8]
c0de6df6:	2000      	movs	r0, #0
c0de6df8:	f8ad 0014 	strh.w	r0, [sp, #20]
c0de6dfc:	7820      	ldrb	r0, [r4, #0]
c0de6dfe:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6e02:	7921      	ldrb	r1, [r4, #4]
c0de6e04:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de6e08:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de6e0c:	2203      	movs	r2, #3
c0de6e0e:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de6e12:	7960      	ldrb	r0, [r4, #5]
c0de6e14:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de6e18:	79a1      	ldrb	r1, [r4, #6]
c0de6e1a:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de6e1e:	79e0      	ldrb	r0, [r4, #7]
c0de6e20:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de6e24:	2101      	movs	r1, #1
c0de6e26:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de6e2a:	a803      	add	r0, sp, #12
c0de6e2c:	f7fd fe2c 	bl	c0de4a88 <nbgl_drawRoundedRect>
c0de6e30:	7a21      	ldrb	r1, [r4, #8]
c0de6e32:	7fe0      	ldrb	r0, [r4, #31]
c0de6e34:	f88d 1014 	strb.w	r1, [sp, #20]
c0de6e38:	f7fe fab8 	bl	c0de53ac <nbgl_getFontHeight>
c0de6e3c:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de6e40:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de6e44:	2809      	cmp	r0, #9
c0de6e46:	d902      	bls.n	c0de6e4e <draw_textEntry+0x86>
c0de6e48:	b006      	add	sp, #24
c0de6e4a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6e4e:	7922      	ldrb	r2, [r4, #4]
c0de6e50:	7963      	ldrb	r3, [r4, #5]
c0de6e52:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de6e56:	f04f 0b08 	mov.w	fp, #8
c0de6e5a:	f10d 0a0c 	add.w	sl, sp, #12
c0de6e5e:	f04f 0800 	mov.w	r8, #0
c0de6e62:	4249      	negs	r1, r1
c0de6e64:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6e68:	eb02 0141 	add.w	r1, r2, r1, lsl #1
c0de6e6c:	2202      	movs	r2, #2
c0de6e6e:	fb91 f7f2 	sdiv	r7, r1, r2
c0de6e72:	4927      	ldr	r1, [pc, #156]	@ (c0de6f10 <draw_textEntry+0x148>)
c0de6e74:	4479      	add	r1, pc
c0de6e76:	9101      	str	r1, [sp, #4]
c0de6e78:	4580      	cmp	r8, r0
c0de6e7a:	d2e5      	bcs.n	c0de6e48 <draw_textEntry+0x80>
c0de6e7c:	7821      	ldrb	r1, [r4, #0]
c0de6e7e:	7862      	ldrb	r2, [r4, #1]
c0de6e80:	78a3      	ldrb	r3, [r4, #2]
c0de6e82:	78e6      	ldrb	r6, [r4, #3]
c0de6e84:	f8ad b010 	strh.w	fp, [sp, #16]
c0de6e88:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de6e8c:	4439      	add	r1, r7
c0de6e8e:	f8ad 100c 	strh.w	r1, [sp, #12]
c0de6e92:	ea43 2106 	orr.w	r1, r3, r6, lsl #8
c0de6e96:	3902      	subs	r1, #2
c0de6e98:	4285      	cmp	r5, r0
c0de6e9a:	f8ad 100e 	strh.w	r1, [sp, #14]
c0de6e9e:	da09      	bge.n	c0de6eb4 <draw_textEntry+0xec>
c0de6ea0:	45a8      	cmp	r8, r5
c0de6ea2:	da1e      	bge.n	c0de6ee2 <draw_textEntry+0x11a>
c0de6ea4:	4620      	mov	r0, r4
c0de6ea6:	f810 1f21 	ldrb.w	r1, [r0, #33]!
c0de6eaa:	f000 faf4 	bl	c0de7496 <OUTLINED_FUNCTION_1>
c0de6eae:	f810 0008 	ldrb.w	r0, [r0, r8]
c0de6eb2:	e017      	b.n	c0de6ee4 <draw_textEntry+0x11c>
c0de6eb4:	f1b8 0f00 	cmp.w	r8, #0
c0de6eb8:	d025      	beq.n	c0de6f06 <draw_textEntry+0x13e>
c0de6eba:	1e41      	subs	r1, r0, #1
c0de6ebc:	4588      	cmp	r8, r1
c0de6ebe:	da10      	bge.n	c0de6ee2 <draw_textEntry+0x11a>
c0de6ec0:	4621      	mov	r1, r4
c0de6ec2:	f811 2f21 	ldrb.w	r2, [r1, #33]!
c0de6ec6:	784b      	ldrb	r3, [r1, #1]
c0de6ec8:	788e      	ldrb	r6, [r1, #2]
c0de6eca:	78c9      	ldrb	r1, [r1, #3]
c0de6ecc:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6ed0:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de6ed4:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de6ed8:	1a08      	subs	r0, r1, r0
c0de6eda:	4428      	add	r0, r5
c0de6edc:	4440      	add	r0, r8
c0de6ede:	7840      	ldrb	r0, [r0, #1]
c0de6ee0:	e000      	b.n	c0de6ee4 <draw_textEntry+0x11c>
c0de6ee2:	205f      	movs	r0, #95	@ 0x5f
c0de6ee4:	f88d 000b 	strb.w	r0, [sp, #11]
c0de6ee8:	2000      	movs	r0, #0
c0de6eea:	f10d 010b 	add.w	r1, sp, #11
c0de6eee:	2201      	movs	r2, #1
c0de6ef0:	9000      	str	r0, [sp, #0]
c0de6ef2:	4650      	mov	r0, sl
c0de6ef4:	2308      	movs	r3, #8
c0de6ef6:	f7fe f8a9 	bl	c0de504c <nbgl_drawText>
c0de6efa:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de6efe:	370a      	adds	r7, #10
c0de6f00:	f108 0801 	add.w	r8, r8, #1
c0de6f04:	e7b8      	b.n	c0de6e78 <draw_textEntry+0xb0>
c0de6f06:	2000      	movs	r0, #0
c0de6f08:	9901      	ldr	r1, [sp, #4]
c0de6f0a:	2202      	movs	r2, #2
c0de6f0c:	e7f0      	b.n	c0de6ef0 <draw_textEntry+0x128>
c0de6f0e:	bf00      	nop
c0de6f10:	00005c9d 	.word	0x00005c9d

c0de6f14 <compute_position>:
c0de6f14:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6f16:	4602      	mov	r2, r0
c0de6f18:	f812 4f0e 	ldrb.w	r4, [r2, #14]!
c0de6f1c:	7855      	ldrb	r5, [r2, #1]
c0de6f1e:	7896      	ldrb	r6, [r2, #2]
c0de6f20:	78d7      	ldrb	r7, [r2, #3]
c0de6f22:	7a13      	ldrb	r3, [r2, #8]
c0de6f24:	ea44 2205 	orr.w	r2, r4, r5, lsl #8
c0de6f28:	ea46 2407 	orr.w	r4, r6, r7, lsl #8
c0de6f2c:	2b00      	cmp	r3, #0
c0de6f2e:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de6f32:	d04e      	beq.n	c0de6fd2 <compute_position+0xbe>
c0de6f34:	4601      	mov	r1, r0
c0de6f36:	f811 4f12 	ldrb.w	r4, [r1, #18]!
c0de6f3a:	784d      	ldrb	r5, [r1, #1]
c0de6f3c:	788e      	ldrb	r6, [r1, #2]
c0de6f3e:	78c9      	ldrb	r1, [r1, #3]
c0de6f40:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de6f44:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de6f48:	ea44 4101 	orr.w	r1, r4, r1, lsl #16
c0de6f4c:	2900      	cmp	r1, #0
c0de6f4e:	bf08      	it	eq
c0de6f50:	4611      	moveq	r1, r2
c0de6f52:	4291      	cmp	r1, r2
c0de6f54:	d050      	beq.n	c0de6ff8 <compute_position+0xe4>
c0de6f56:	2b0d      	cmp	r3, #13
c0de6f58:	f000 808f 	beq.w	c0de707a <compute_position+0x166>
c0de6f5c:	2b02      	cmp	r3, #2
c0de6f5e:	f000 80ac 	beq.w	c0de70ba <compute_position+0x1a6>
c0de6f62:	2b03      	cmp	r3, #3
c0de6f64:	f000 80c4 	beq.w	c0de70f0 <compute_position+0x1dc>
c0de6f68:	2b04      	cmp	r3, #4
c0de6f6a:	f000 80e3 	beq.w	c0de7134 <compute_position+0x220>
c0de6f6e:	2b06      	cmp	r3, #6
c0de6f70:	f000 8100 	beq.w	c0de7174 <compute_position+0x260>
c0de6f74:	2b07      	cmp	r3, #7
c0de6f76:	f000 811d 	beq.w	c0de71b4 <compute_position+0x2a0>
c0de6f7a:	2b08      	cmp	r3, #8
c0de6f7c:	f000 8136 	beq.w	c0de71ec <compute_position+0x2d8>
c0de6f80:	2b09      	cmp	r3, #9
c0de6f82:	f000 814d 	beq.w	c0de7220 <compute_position+0x30c>
c0de6f86:	2b0a      	cmp	r3, #10
c0de6f88:	f000 816f 	beq.w	c0de726a <compute_position+0x356>
c0de6f8c:	2b0b      	cmp	r3, #11
c0de6f8e:	f000 8186 	beq.w	c0de729e <compute_position+0x38a>
c0de6f92:	2b0c      	cmp	r3, #12
c0de6f94:	f000 81a4 	beq.w	c0de72e0 <compute_position+0x3cc>
c0de6f98:	2b01      	cmp	r3, #1
c0de6f9a:	f040 8232 	bne.w	c0de7402 <compute_position+0x4ee>
c0de6f9e:	7a8b      	ldrb	r3, [r1, #10]
c0de6fa0:	7acc      	ldrb	r4, [r1, #11]
c0de6fa2:	7dc7      	ldrb	r7, [r0, #23]
c0de6fa4:	7e05      	ldrb	r5, [r0, #24]
c0de6fa6:	f891 c00c 	ldrb.w	ip, [r1, #12]
c0de6faa:	7b49      	ldrb	r1, [r1, #13]
c0de6fac:	79c6      	ldrb	r6, [r0, #7]
c0de6fae:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de6fb2:	ea47 2505 	orr.w	r5, r7, r5, lsl #8
c0de6fb6:	7984      	ldrb	r4, [r0, #6]
c0de6fb8:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
c0de6fbc:	442b      	add	r3, r5
c0de6fbe:	7e45      	ldrb	r5, [r0, #25]
c0de6fc0:	7283      	strb	r3, [r0, #10]
c0de6fc2:	0a1b      	lsrs	r3, r3, #8
c0de6fc4:	ea44 2406 	orr.w	r4, r4, r6, lsl #8
c0de6fc8:	72c3      	strb	r3, [r0, #11]
c0de6fca:	7e83      	ldrb	r3, [r0, #26]
c0de6fcc:	ea45 2303 	orr.w	r3, r5, r3, lsl #8
c0de6fd0:	e0ad      	b.n	c0de712e <compute_position+0x21a>
c0de6fd2:	7fd3      	ldrb	r3, [r2, #31]
c0de6fd4:	b3a3      	cbz	r3, c0de7040 <compute_position+0x12c>
c0de6fd6:	2900      	cmp	r1, #0
c0de6fd8:	d043      	beq.n	c0de7062 <compute_position+0x14e>
c0de6fda:	790b      	ldrb	r3, [r1, #4]
c0de6fdc:	794c      	ldrb	r4, [r1, #5]
c0de6fde:	7a8d      	ldrb	r5, [r1, #10]
c0de6fe0:	7ac9      	ldrb	r1, [r1, #11]
c0de6fe2:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de6fe6:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de6fea:	7e04      	ldrb	r4, [r0, #24]
c0de6fec:	4419      	add	r1, r3
c0de6fee:	7dc3      	ldrb	r3, [r0, #23]
c0de6ff0:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de6ff4:	4419      	add	r1, r3
c0de6ff6:	e038      	b.n	c0de706a <compute_position+0x156>
c0de6ff8:	2b09      	cmp	r3, #9
c0de6ffa:	f000 818b 	beq.w	c0de7314 <compute_position+0x400>
c0de6ffe:	2b02      	cmp	r3, #2
c0de7000:	f000 8198 	beq.w	c0de7334 <compute_position+0x420>
c0de7004:	2b03      	cmp	r3, #3
c0de7006:	f000 81a7 	beq.w	c0de7358 <compute_position+0x444>
c0de700a:	2b04      	cmp	r3, #4
c0de700c:	f000 81ba 	beq.w	c0de7384 <compute_position+0x470>
c0de7010:	2b05      	cmp	r3, #5
c0de7012:	f000 81c2 	beq.w	c0de739a <compute_position+0x486>
c0de7016:	2b06      	cmp	r3, #6
c0de7018:	f000 81dd 	beq.w	c0de73d6 <compute_position+0x4c2>
c0de701c:	2b07      	cmp	r3, #7
c0de701e:	f000 820a 	beq.w	c0de7436 <compute_position+0x522>
c0de7022:	2b08      	cmp	r3, #8
c0de7024:	f000 820e 	beq.w	c0de7444 <compute_position+0x530>
c0de7028:	2b01      	cmp	r3, #1
c0de702a:	f040 81ea 	bne.w	c0de7402 <compute_position+0x4ee>
c0de702e:	7dc1      	ldrb	r1, [r0, #23]
c0de7030:	7e03      	ldrb	r3, [r0, #24]
c0de7032:	7e44      	ldrb	r4, [r0, #25]
c0de7034:	7e85      	ldrb	r5, [r0, #26]
c0de7036:	7281      	strb	r1, [r0, #10]
c0de7038:	72c3      	strb	r3, [r0, #11]
c0de703a:	ea44 2105 	orr.w	r1, r4, r5, lsl #8
c0de703e:	e1dd      	b.n	c0de73fc <compute_position+0x4e8>
c0de7040:	7dc3      	ldrb	r3, [r0, #23]
c0de7042:	7e04      	ldrb	r4, [r0, #24]
c0de7044:	72c4      	strb	r4, [r0, #11]
c0de7046:	7283      	strb	r3, [r0, #10]
c0de7048:	b191      	cbz	r1, c0de7070 <compute_position+0x15c>
c0de704a:	798b      	ldrb	r3, [r1, #6]
c0de704c:	79cc      	ldrb	r4, [r1, #7]
c0de704e:	7b0d      	ldrb	r5, [r1, #12]
c0de7050:	7b49      	ldrb	r1, [r1, #13]
c0de7052:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de7056:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de705a:	7e84      	ldrb	r4, [r0, #26]
c0de705c:	4419      	add	r1, r3
c0de705e:	7e43      	ldrb	r3, [r0, #25]
c0de7060:	e0c1      	b.n	c0de71e6 <compute_position+0x2d2>
c0de7062:	7dc1      	ldrb	r1, [r0, #23]
c0de7064:	7e03      	ldrb	r3, [r0, #24]
c0de7066:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de706a:	7281      	strb	r1, [r0, #10]
c0de706c:	0a09      	lsrs	r1, r1, #8
c0de706e:	72c1      	strb	r1, [r0, #11]
c0de7070:	7e41      	ldrb	r1, [r0, #25]
c0de7072:	7e83      	ldrb	r3, [r0, #26]
c0de7074:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de7078:	e1c0      	b.n	c0de73fc <compute_position+0x4e8>
c0de707a:	f000 fa70 	bl	c0de755e <OUTLINED_FUNCTION_10>
c0de707e:	f891 e007 	ldrb.w	lr, [r1, #7]
c0de7082:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de7086:	790c      	ldrb	r4, [r1, #4]
c0de7088:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de708c:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de7090:	79c5      	ldrb	r5, [r0, #7]
c0de7092:	4423      	add	r3, r4
c0de7094:	7984      	ldrb	r4, [r0, #6]
c0de7096:	4433      	add	r3, r6
c0de7098:	7e46      	ldrb	r6, [r0, #25]
c0de709a:	7283      	strb	r3, [r0, #10]
c0de709c:	0a1b      	lsrs	r3, r3, #8
c0de709e:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de70a2:	72c3      	strb	r3, [r0, #11]
c0de70a4:	7e83      	ldrb	r3, [r0, #26]
c0de70a6:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de70aa:	7b4e      	ldrb	r6, [r1, #13]
c0de70ac:	7b09      	ldrb	r1, [r1, #12]
c0de70ae:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
c0de70b2:	ea4c 260e 	orr.w	r6, ip, lr, lsl #8
c0de70b6:	4431      	add	r1, r6
c0de70b8:	e110      	b.n	c0de72dc <compute_position+0x3c8>
c0de70ba:	7e03      	ldrb	r3, [r0, #24]
c0de70bc:	7dc4      	ldrb	r4, [r0, #23]
c0de70be:	7a8e      	ldrb	r6, [r1, #10]
c0de70c0:	7acf      	ldrb	r7, [r1, #11]
c0de70c2:	794d      	ldrb	r5, [r1, #5]
c0de70c4:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de70c8:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de70cc:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de70d0:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de70d4:	790c      	ldrb	r4, [r1, #4]
c0de70d6:	7947      	ldrb	r7, [r0, #5]
c0de70d8:	4433      	add	r3, r6
c0de70da:	7906      	ldrb	r6, [r0, #4]
c0de70dc:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de70e0:	2502      	movs	r5, #2
c0de70e2:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de70e6:	1ba4      	subs	r4, r4, r6
c0de70e8:	fb94 f4f5 	sdiv	r4, r4, r5
c0de70ec:	4423      	add	r3, r4
c0de70ee:	e011      	b.n	c0de7114 <compute_position+0x200>
c0de70f0:	f000 fa21 	bl	c0de7536 <OUTLINED_FUNCTION_7>
c0de70f4:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de70f8:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de70fc:	7904      	ldrb	r4, [r0, #4]
c0de70fe:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de7102:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de7106:	794d      	ldrb	r5, [r1, #5]
c0de7108:	4423      	add	r3, r4
c0de710a:	790c      	ldrb	r4, [r1, #4]
c0de710c:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de7110:	4434      	add	r4, r6
c0de7112:	1ae3      	subs	r3, r4, r3
c0de7114:	7283      	strb	r3, [r0, #10]
c0de7116:	0a1b      	lsrs	r3, r3, #8
c0de7118:	7e44      	ldrb	r4, [r0, #25]
c0de711a:	72c3      	strb	r3, [r0, #11]
c0de711c:	7b4b      	ldrb	r3, [r1, #13]
c0de711e:	7b09      	ldrb	r1, [r1, #12]
c0de7120:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de7124:	7e83      	ldrb	r3, [r0, #26]
c0de7126:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de712a:	ea4c 240e 	orr.w	r4, ip, lr, lsl #8
c0de712e:	4423      	add	r3, r4
c0de7130:	1ac9      	subs	r1, r1, r3
c0de7132:	e163      	b.n	c0de73fc <compute_position+0x4e8>
c0de7134:	f000 f9ff 	bl	c0de7536 <OUTLINED_FUNCTION_7>
c0de7138:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de713c:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de7140:	7904      	ldrb	r4, [r0, #4]
c0de7142:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de7146:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de714a:	79cd      	ldrb	r5, [r1, #7]
c0de714c:	4423      	add	r3, r4
c0de714e:	798c      	ldrb	r4, [r1, #6]
c0de7150:	1af3      	subs	r3, r6, r3
c0de7152:	7e46      	ldrb	r6, [r0, #25]
c0de7154:	7283      	strb	r3, [r0, #10]
c0de7156:	0a1b      	lsrs	r3, r3, #8
c0de7158:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de715c:	72c3      	strb	r3, [r0, #11]
c0de715e:	7b4b      	ldrb	r3, [r1, #13]
c0de7160:	7b09      	ldrb	r1, [r1, #12]
c0de7162:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de7166:	7e83      	ldrb	r3, [r0, #26]
c0de7168:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de716c:	4419      	add	r1, r3
c0de716e:	ea4c 230e 	orr.w	r3, ip, lr, lsl #8
c0de7172:	e13e      	b.n	c0de73f2 <compute_position+0x4de>
c0de7174:	f000 f9f3 	bl	c0de755e <OUTLINED_FUNCTION_10>
c0de7178:	f891 e007 	ldrb.w	lr, [r1, #7]
c0de717c:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de7180:	790c      	ldrb	r4, [r1, #4]
c0de7182:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de7186:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de718a:	79c5      	ldrb	r5, [r0, #7]
c0de718c:	4423      	add	r3, r4
c0de718e:	7984      	ldrb	r4, [r0, #6]
c0de7190:	4433      	add	r3, r6
c0de7192:	7e46      	ldrb	r6, [r0, #25]
c0de7194:	7283      	strb	r3, [r0, #10]
c0de7196:	0a1b      	lsrs	r3, r3, #8
c0de7198:	72c3      	strb	r3, [r0, #11]
c0de719a:	7b4b      	ldrb	r3, [r1, #13]
c0de719c:	7b09      	ldrb	r1, [r1, #12]
c0de719e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de71a2:	7e83      	ldrb	r3, [r0, #26]
c0de71a4:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de71a8:	4419      	add	r1, r3
c0de71aa:	ea44 2305 	orr.w	r3, r4, r5, lsl #8
c0de71ae:	ea4c 240e 	orr.w	r4, ip, lr, lsl #8
c0de71b2:	e11e      	b.n	c0de73f2 <compute_position+0x4de>
c0de71b4:	7a8d      	ldrb	r5, [r1, #10]
c0de71b6:	7ace      	ldrb	r6, [r1, #11]
c0de71b8:	7e07      	ldrb	r7, [r0, #24]
c0de71ba:	f891 c006 	ldrb.w	ip, [r1, #6]
c0de71be:	f891 e007 	ldrb.w	lr, [r1, #7]
c0de71c2:	7e43      	ldrb	r3, [r0, #25]
c0de71c4:	7e84      	ldrb	r4, [r0, #26]
c0de71c6:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de71ca:	7dc6      	ldrb	r6, [r0, #23]
c0de71cc:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de71d0:	4435      	add	r5, r6
c0de71d2:	7285      	strb	r5, [r0, #10]
c0de71d4:	0a2d      	lsrs	r5, r5, #8
c0de71d6:	72c5      	strb	r5, [r0, #11]
c0de71d8:	7b4d      	ldrb	r5, [r1, #13]
c0de71da:	7b09      	ldrb	r1, [r1, #12]
c0de71dc:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de71e0:	ea4c 250e 	orr.w	r5, ip, lr, lsl #8
c0de71e4:	4429      	add	r1, r5
c0de71e6:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de71ea:	e106      	b.n	c0de73fa <compute_position+0x4e6>
c0de71ec:	7acb      	ldrb	r3, [r1, #11]
c0de71ee:	7a8c      	ldrb	r4, [r1, #10]
c0de71f0:	7dc6      	ldrb	r6, [r0, #23]
c0de71f2:	7e07      	ldrb	r7, [r0, #24]
c0de71f4:	7945      	ldrb	r5, [r0, #5]
c0de71f6:	f891 c006 	ldrb.w	ip, [r1, #6]
c0de71fa:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de71fe:	7904      	ldrb	r4, [r0, #4]
c0de7200:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de7204:	79cf      	ldrb	r7, [r1, #7]
c0de7206:	4433      	add	r3, r6
c0de7208:	794e      	ldrb	r6, [r1, #5]
c0de720a:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de720e:	790d      	ldrb	r5, [r1, #4]
c0de7210:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de7214:	1b2c      	subs	r4, r5, r4
c0de7216:	2502      	movs	r5, #2
c0de7218:	fb94 f4f5 	sdiv	r4, r4, r5
c0de721c:	4423      	add	r3, r4
c0de721e:	e015      	b.n	c0de724c <compute_position+0x338>
c0de7220:	7903      	ldrb	r3, [r0, #4]
c0de7222:	7944      	ldrb	r4, [r0, #5]
c0de7224:	7dc5      	ldrb	r5, [r0, #23]
c0de7226:	7e06      	ldrb	r6, [r0, #24]
c0de7228:	f891 c006 	ldrb.w	ip, [r1, #6]
c0de722c:	79cf      	ldrb	r7, [r1, #7]
c0de722e:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de7232:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de7236:	7acc      	ldrb	r4, [r1, #11]
c0de7238:	794e      	ldrb	r6, [r1, #5]
c0de723a:	442b      	add	r3, r5
c0de723c:	7a8d      	ldrb	r5, [r1, #10]
c0de723e:	ea45 2404 	orr.w	r4, r5, r4, lsl #8
c0de7242:	790d      	ldrb	r5, [r1, #4]
c0de7244:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de7248:	442c      	add	r4, r5
c0de724a:	1ae3      	subs	r3, r4, r3
c0de724c:	7283      	strb	r3, [r0, #10]
c0de724e:	0a1b      	lsrs	r3, r3, #8
c0de7250:	7e44      	ldrb	r4, [r0, #25]
c0de7252:	72c3      	strb	r3, [r0, #11]
c0de7254:	7e83      	ldrb	r3, [r0, #26]
c0de7256:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de725a:	7b4c      	ldrb	r4, [r1, #13]
c0de725c:	7b09      	ldrb	r1, [r1, #12]
c0de725e:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
c0de7262:	ea4c 2407 	orr.w	r4, ip, r7, lsl #8
c0de7266:	4421      	add	r1, r4
c0de7268:	e0c7      	b.n	c0de73fa <compute_position+0x4e6>
c0de726a:	7903      	ldrb	r3, [r0, #4]
c0de726c:	7944      	ldrb	r4, [r0, #5]
c0de726e:	7dc5      	ldrb	r5, [r0, #23]
c0de7270:	7e06      	ldrb	r6, [r0, #24]
c0de7272:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de7276:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de727a:	7a8c      	ldrb	r4, [r1, #10]
c0de727c:	7b0e      	ldrb	r6, [r1, #12]
c0de727e:	442b      	add	r3, r5
c0de7280:	7acd      	ldrb	r5, [r1, #11]
c0de7282:	7b49      	ldrb	r1, [r1, #13]
c0de7284:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de7288:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de728c:	1ae3      	subs	r3, r4, r3
c0de728e:	7e44      	ldrb	r4, [r0, #25]
c0de7290:	7283      	strb	r3, [r0, #10]
c0de7292:	0a1b      	lsrs	r3, r3, #8
c0de7294:	72c3      	strb	r3, [r0, #11]
c0de7296:	7e83      	ldrb	r3, [r0, #26]
c0de7298:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de729c:	e0ad      	b.n	c0de73fa <compute_position+0x4e6>
c0de729e:	f000 f94a 	bl	c0de7536 <OUTLINED_FUNCTION_7>
c0de72a2:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de72a6:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de72aa:	7904      	ldrb	r4, [r0, #4]
c0de72ac:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de72b0:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de72b4:	79cd      	ldrb	r5, [r1, #7]
c0de72b6:	4423      	add	r3, r4
c0de72b8:	798c      	ldrb	r4, [r1, #6]
c0de72ba:	1af3      	subs	r3, r6, r3
c0de72bc:	7e46      	ldrb	r6, [r0, #25]
c0de72be:	7283      	strb	r3, [r0, #10]
c0de72c0:	0a1b      	lsrs	r3, r3, #8
c0de72c2:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de72c6:	72c3      	strb	r3, [r0, #11]
c0de72c8:	7e83      	ldrb	r3, [r0, #26]
c0de72ca:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de72ce:	7b4e      	ldrb	r6, [r1, #13]
c0de72d0:	7b09      	ldrb	r1, [r1, #12]
c0de72d2:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
c0de72d6:	4421      	add	r1, r4
c0de72d8:	ea4c 240e 	orr.w	r4, ip, lr, lsl #8
c0de72dc:	1b09      	subs	r1, r1, r4
c0de72de:	e08c      	b.n	c0de73fa <compute_position+0x4e6>
c0de72e0:	790b      	ldrb	r3, [r1, #4]
c0de72e2:	794c      	ldrb	r4, [r1, #5]
c0de72e4:	7a8d      	ldrb	r5, [r1, #10]
c0de72e6:	7ace      	ldrb	r6, [r1, #11]
c0de72e8:	7e87      	ldrb	r7, [r0, #26]
c0de72ea:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de72ee:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de72f2:	7dc4      	ldrb	r4, [r0, #23]
c0de72f4:	7e46      	ldrb	r6, [r0, #25]
c0de72f6:	442b      	add	r3, r5
c0de72f8:	7e05      	ldrb	r5, [r0, #24]
c0de72fa:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de72fe:	4423      	add	r3, r4
c0de7300:	7283      	strb	r3, [r0, #10]
c0de7302:	0a1b      	lsrs	r3, r3, #8
c0de7304:	72c3      	strb	r3, [r0, #11]
c0de7306:	7b4b      	ldrb	r3, [r1, #13]
c0de7308:	7b09      	ldrb	r1, [r1, #12]
c0de730a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de730e:	ea46 2307 	orr.w	r3, r6, r7, lsl #8
c0de7312:	e072      	b.n	c0de73fa <compute_position+0x4e6>
c0de7314:	f000 f8c9 	bl	c0de74aa <OUTLINED_FUNCTION_2>
c0de7318:	1a59      	subs	r1, r3, r1
c0de731a:	7e43      	ldrb	r3, [r0, #25]
c0de731c:	7281      	strb	r1, [r0, #10]
c0de731e:	0a09      	lsrs	r1, r1, #8
c0de7320:	72c1      	strb	r1, [r0, #11]
c0de7322:	7e81      	ldrb	r1, [r0, #26]
c0de7324:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de7328:	ea4c 2306 	orr.w	r3, ip, r6, lsl #8
c0de732c:	4419      	add	r1, r3
c0de732e:	ea47 2305 	orr.w	r3, r7, r5, lsl #8
c0de7332:	e0a4      	b.n	c0de747e <compute_position+0x56a>
c0de7334:	7901      	ldrb	r1, [r0, #4]
c0de7336:	7943      	ldrb	r3, [r0, #5]
c0de7338:	7956      	ldrb	r6, [r2, #5]
c0de733a:	7dc4      	ldrb	r4, [r0, #23]
c0de733c:	7e05      	ldrb	r5, [r0, #24]
c0de733e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de7342:	7913      	ldrb	r3, [r2, #4]
c0de7344:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
c0de7348:	1a59      	subs	r1, r3, r1
c0de734a:	2302      	movs	r3, #2
c0de734c:	fb91 f1f3 	sdiv	r1, r1, r3
c0de7350:	ea44 2305 	orr.w	r3, r4, r5, lsl #8
c0de7354:	4419      	add	r1, r3
c0de7356:	e00d      	b.n	c0de7374 <compute_position+0x460>
c0de7358:	7901      	ldrb	r1, [r0, #4]
c0de735a:	7943      	ldrb	r3, [r0, #5]
c0de735c:	7dc4      	ldrb	r4, [r0, #23]
c0de735e:	7e05      	ldrb	r5, [r0, #24]
c0de7360:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de7364:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de7368:	7913      	ldrb	r3, [r2, #4]
c0de736a:	4421      	add	r1, r4
c0de736c:	7954      	ldrb	r4, [r2, #5]
c0de736e:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de7372:	1a59      	subs	r1, r3, r1
c0de7374:	7281      	strb	r1, [r0, #10]
c0de7376:	0a09      	lsrs	r1, r1, #8
c0de7378:	7e43      	ldrb	r3, [r0, #25]
c0de737a:	72c1      	strb	r1, [r0, #11]
c0de737c:	7e81      	ldrb	r1, [r0, #26]
c0de737e:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de7382:	e03b      	b.n	c0de73fc <compute_position+0x4e8>
c0de7384:	f000 f8af 	bl	c0de74e6 <OUTLINED_FUNCTION_4>
c0de7388:	79d5      	ldrb	r5, [r2, #7]
c0de738a:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de738e:	1a59      	subs	r1, r3, r1
c0de7390:	2302      	movs	r3, #2
c0de7392:	fb91 f1f3 	sdiv	r1, r1, r3
c0de7396:	4421      	add	r1, r4
c0de7398:	e030      	b.n	c0de73fc <compute_position+0x4e8>
c0de739a:	f000 f8d4 	bl	c0de7546 <OUTLINED_FUNCTION_8>
c0de739e:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de73a2:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de73a6:	7903      	ldrb	r3, [r0, #4]
c0de73a8:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de73ac:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de73b0:	7914      	ldrb	r4, [r2, #4]
c0de73b2:	ea44 2407 	orr.w	r4, r4, r7, lsl #8
c0de73b6:	1ae3      	subs	r3, r4, r3
c0de73b8:	2402      	movs	r4, #2
c0de73ba:	fb93 f3f4 	sdiv	r3, r3, r4
c0de73be:	4419      	add	r1, r3
c0de73c0:	7e43      	ldrb	r3, [r0, #25]
c0de73c2:	7281      	strb	r1, [r0, #10]
c0de73c4:	0a09      	lsrs	r1, r1, #8
c0de73c6:	72c1      	strb	r1, [r0, #11]
c0de73c8:	7e81      	ldrb	r1, [r0, #26]
c0de73ca:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de73ce:	ea4c 230e 	orr.w	r3, ip, lr, lsl #8
c0de73d2:	1aeb      	subs	r3, r5, r3
c0de73d4:	e00f      	b.n	c0de73f6 <compute_position+0x4e2>
c0de73d6:	f000 f868 	bl	c0de74aa <OUTLINED_FUNCTION_2>
c0de73da:	ea47 2405 	orr.w	r4, r7, r5, lsl #8
c0de73de:	1a59      	subs	r1, r3, r1
c0de73e0:	7e43      	ldrb	r3, [r0, #25]
c0de73e2:	7281      	strb	r1, [r0, #10]
c0de73e4:	0a09      	lsrs	r1, r1, #8
c0de73e6:	72c1      	strb	r1, [r0, #11]
c0de73e8:	7e81      	ldrb	r1, [r0, #26]
c0de73ea:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de73ee:	ea4c 2306 	orr.w	r3, ip, r6, lsl #8
c0de73f2:	1ae3      	subs	r3, r4, r3
c0de73f4:	2402      	movs	r4, #2
c0de73f6:	fb93 f3f4 	sdiv	r3, r3, r4
c0de73fa:	4419      	add	r1, r3
c0de73fc:	7301      	strb	r1, [r0, #12]
c0de73fe:	0a09      	lsrs	r1, r1, #8
c0de7400:	7341      	strb	r1, [r0, #13]
c0de7402:	b1ba      	cbz	r2, c0de7434 <compute_position+0x520>
c0de7404:	7811      	ldrb	r1, [r2, #0]
c0de7406:	7853      	ldrb	r3, [r2, #1]
c0de7408:	7ac5      	ldrb	r5, [r0, #11]
c0de740a:	7894      	ldrb	r4, [r2, #2]
c0de740c:	78d2      	ldrb	r2, [r2, #3]
c0de740e:	7b06      	ldrb	r6, [r0, #12]
c0de7410:	7b47      	ldrb	r7, [r0, #13]
c0de7412:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de7416:	7a83      	ldrb	r3, [r0, #10]
c0de7418:	ea44 2202 	orr.w	r2, r4, r2, lsl #8
c0de741c:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de7420:	4419      	add	r1, r3
c0de7422:	ea46 2307 	orr.w	r3, r6, r7, lsl #8
c0de7426:	7001      	strb	r1, [r0, #0]
c0de7428:	441a      	add	r2, r3
c0de742a:	0a09      	lsrs	r1, r1, #8
c0de742c:	7041      	strb	r1, [r0, #1]
c0de742e:	0a11      	lsrs	r1, r2, #8
c0de7430:	7082      	strb	r2, [r0, #2]
c0de7432:	70c1      	strb	r1, [r0, #3]
c0de7434:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de7436:	f000 f856 	bl	c0de74e6 <OUTLINED_FUNCTION_4>
c0de743a:	4421      	add	r1, r4
c0de743c:	79d4      	ldrb	r4, [r2, #7]
c0de743e:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de7442:	e01c      	b.n	c0de747e <compute_position+0x56a>
c0de7444:	f000 f87f 	bl	c0de7546 <OUTLINED_FUNCTION_8>
c0de7448:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de744c:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de7450:	7903      	ldrb	r3, [r0, #4]
c0de7452:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de7456:	7914      	ldrb	r4, [r2, #4]
c0de7458:	ea44 2407 	orr.w	r4, r4, r7, lsl #8
c0de745c:	1ae3      	subs	r3, r4, r3
c0de745e:	2402      	movs	r4, #2
c0de7460:	fb93 f3f4 	sdiv	r3, r3, r4
c0de7464:	4419      	add	r1, r3
c0de7466:	7e43      	ldrb	r3, [r0, #25]
c0de7468:	7281      	strb	r1, [r0, #10]
c0de746a:	0a09      	lsrs	r1, r1, #8
c0de746c:	72c1      	strb	r1, [r0, #11]
c0de746e:	7e81      	ldrb	r1, [r0, #26]
c0de7470:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de7474:	ea4c 230e 	orr.w	r3, ip, lr, lsl #8
c0de7478:	4419      	add	r1, r3
c0de747a:	ea45 2306 	orr.w	r3, r5, r6, lsl #8
c0de747e:	1a59      	subs	r1, r3, r1
c0de7480:	e7bc      	b.n	c0de73fc <compute_position+0x4e8>

c0de7482 <OUTLINED_FUNCTION_0>:
c0de7482:	7842      	ldrb	r2, [r0, #1]
c0de7484:	7883      	ldrb	r3, [r0, #2]
c0de7486:	78c0      	ldrb	r0, [r0, #3]
c0de7488:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de748c:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de7490:	ea41 4500 	orr.w	r5, r1, r0, lsl #16
c0de7494:	4770      	bx	lr

c0de7496 <OUTLINED_FUNCTION_1>:
c0de7496:	7842      	ldrb	r2, [r0, #1]
c0de7498:	7883      	ldrb	r3, [r0, #2]
c0de749a:	78c0      	ldrb	r0, [r0, #3]
c0de749c:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de74a0:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de74a4:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de74a8:	4770      	bx	lr

c0de74aa <OUTLINED_FUNCTION_2>:
c0de74aa:	7e01      	ldrb	r1, [r0, #24]
c0de74ac:	7dc3      	ldrb	r3, [r0, #23]
c0de74ae:	7944      	ldrb	r4, [r0, #5]
c0de74b0:	7997      	ldrb	r7, [r2, #6]
c0de74b2:	79d5      	ldrb	r5, [r2, #7]
c0de74b4:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de74b8:	79c6      	ldrb	r6, [r0, #7]
c0de74ba:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de74be:	7903      	ldrb	r3, [r0, #4]
c0de74c0:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de74c4:	7954      	ldrb	r4, [r2, #5]
c0de74c6:	4419      	add	r1, r3
c0de74c8:	7913      	ldrb	r3, [r2, #4]
c0de74ca:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de74ce:	4770      	bx	lr

c0de74d0 <OUTLINED_FUNCTION_3>:
c0de74d0:	7842      	ldrb	r2, [r0, #1]
c0de74d2:	7883      	ldrb	r3, [r0, #2]
c0de74d4:	78c0      	ldrb	r0, [r0, #3]
c0de74d6:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de74da:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de74de:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
c0de74e2:	2900      	cmp	r1, #0
c0de74e4:	4770      	bx	lr

c0de74e6 <OUTLINED_FUNCTION_4>:
c0de74e6:	7dc4      	ldrb	r4, [r0, #23]
c0de74e8:	7e05      	ldrb	r5, [r0, #24]
c0de74ea:	7981      	ldrb	r1, [r0, #6]
c0de74ec:	79c3      	ldrb	r3, [r0, #7]
c0de74ee:	72c5      	strb	r5, [r0, #11]
c0de74f0:	7284      	strb	r4, [r0, #10]
c0de74f2:	7e84      	ldrb	r4, [r0, #26]
c0de74f4:	7e45      	ldrb	r5, [r0, #25]
c0de74f6:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de74fa:	7993      	ldrb	r3, [r2, #6]
c0de74fc:	ea45 2404 	orr.w	r4, r5, r4, lsl #8
c0de7500:	4770      	bx	lr

c0de7502 <OUTLINED_FUNCTION_5>:
c0de7502:	4620      	mov	r0, r4
c0de7504:	f810 1f2d 	ldrb.w	r1, [r0, #45]!
c0de7508:	7842      	ldrb	r2, [r0, #1]
c0de750a:	7883      	ldrb	r3, [r0, #2]
c0de750c:	78c0      	ldrb	r0, [r0, #3]
c0de750e:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de7512:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de7516:	ea41 4300 	orr.w	r3, r1, r0, lsl #16
c0de751a:	2b00      	cmp	r3, #0
c0de751c:	4770      	bx	lr

c0de751e <OUTLINED_FUNCTION_6>:
c0de751e:	217f      	movs	r1, #127	@ 0x7f
c0de7520:	2201      	movs	r2, #1
c0de7522:	f829 1000 	strh.w	r1, [r9, r0]
c0de7526:	4448      	add	r0, r9
c0de7528:	2100      	movs	r1, #0
c0de752a:	8081      	strh	r1, [r0, #4]
c0de752c:	80c1      	strh	r1, [r0, #6]
c0de752e:	213f      	movs	r1, #63	@ 0x3f
c0de7530:	7242      	strb	r2, [r0, #9]
c0de7532:	8041      	strh	r1, [r0, #2]
c0de7534:	4770      	bx	lr

c0de7536 <OUTLINED_FUNCTION_7>:
c0de7536:	7e03      	ldrb	r3, [r0, #24]
c0de7538:	7dc4      	ldrb	r4, [r0, #23]
c0de753a:	7945      	ldrb	r5, [r0, #5]
c0de753c:	7a8e      	ldrb	r6, [r1, #10]
c0de753e:	7acf      	ldrb	r7, [r1, #11]
c0de7540:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de7544:	4770      	bx	lr

c0de7546 <OUTLINED_FUNCTION_8>:
c0de7546:	7e01      	ldrb	r1, [r0, #24]
c0de7548:	7dc3      	ldrb	r3, [r0, #23]
c0de754a:	7944      	ldrb	r4, [r0, #5]
c0de754c:	7957      	ldrb	r7, [r2, #5]
c0de754e:	7995      	ldrb	r5, [r2, #6]
c0de7550:	79d6      	ldrb	r6, [r2, #7]
c0de7552:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de7556:	4770      	bx	lr

c0de7558 <OUTLINED_FUNCTION_9>:
c0de7558:	4620      	mov	r0, r4
c0de755a:	f7ff bcdb 	b.w	c0de6f14 <compute_position>

c0de755e <OUTLINED_FUNCTION_10>:
c0de755e:	7acb      	ldrb	r3, [r1, #11]
c0de7560:	7a8c      	ldrb	r4, [r1, #10]
c0de7562:	794d      	ldrb	r5, [r1, #5]
c0de7564:	7dc6      	ldrb	r6, [r0, #23]
c0de7566:	7e07      	ldrb	r7, [r0, #24]
c0de7568:	f891 c006 	ldrb.w	ip, [r1, #6]
c0de756c:	4770      	bx	lr

c0de756e <OUTLINED_FUNCTION_11>:
c0de756e:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de7572:	ea43 2205 	orr.w	r2, r3, r5, lsl #8
c0de7576:	2e00      	cmp	r6, #0
c0de7578:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de757c:	4770      	bx	lr

c0de757e <OUTLINED_FUNCTION_12>:
c0de757e:	4620      	mov	r0, r4
c0de7580:	f810 1f0e 	ldrb.w	r1, [r0, #14]!
c0de7584:	7842      	ldrb	r2, [r0, #1]
c0de7586:	7883      	ldrb	r3, [r0, #2]
c0de7588:	78c5      	ldrb	r5, [r0, #3]
c0de758a:	4770      	bx	lr

c0de758c <OUTLINED_FUNCTION_13>:
c0de758c:	0e29      	lsrs	r1, r5, #24
c0de758e:	70c1      	strb	r1, [r0, #3]
c0de7590:	0c29      	lsrs	r1, r5, #16
c0de7592:	7081      	strb	r1, [r0, #2]
c0de7594:	0a29      	lsrs	r1, r5, #8
c0de7596:	7041      	strb	r1, [r0, #1]
c0de7598:	4770      	bx	lr

c0de759a <OUTLINED_FUNCTION_14>:
c0de759a:	7fe0      	ldrb	r0, [r4, #31]
c0de759c:	f8bd 2008 	ldrh.w	r2, [sp, #8]
c0de75a0:	4629      	mov	r1, r5
c0de75a2:	4633      	mov	r3, r6
c0de75a4:	9000      	str	r0, [sp, #0]
c0de75a6:	4770      	bx	lr

c0de75a8 <nbgl_objPoolRelease>:
c0de75a8:	b5b0      	push	{r4, r5, r7, lr}
c0de75aa:	490b      	ldr	r1, [pc, #44]	@ (c0de75d8 <nbgl_objPoolRelease+0x30>)
c0de75ac:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de75b0:	b182      	cbz	r2, c0de75d4 <nbgl_objPoolRelease+0x2c>
c0de75b2:	2303      	movs	r3, #3
c0de75b4:	24ff      	movs	r4, #255	@ 0xff
c0de75b6:	2b2b      	cmp	r3, #43	@ 0x2b
c0de75b8:	d00c      	beq.n	c0de75d4 <nbgl_objPoolRelease+0x2c>
c0de75ba:	eb09 0501 	add.w	r5, r9, r1
c0de75be:	5ced      	ldrb	r5, [r5, r3]
c0de75c0:	4285      	cmp	r5, r0
c0de75c2:	d105      	bne.n	c0de75d0 <nbgl_objPoolRelease+0x28>
c0de75c4:	3a01      	subs	r2, #1
c0de75c6:	eb09 0501 	add.w	r5, r9, r1
c0de75ca:	f809 2001 	strb.w	r2, [r9, r1]
c0de75ce:	54ec      	strb	r4, [r5, r3]
c0de75d0:	3301      	adds	r3, #1
c0de75d2:	e7f0      	b.n	c0de75b6 <nbgl_objPoolRelease+0xe>
c0de75d4:	bdb0      	pop	{r4, r5, r7, pc}
c0de75d6:	bf00      	nop
c0de75d8:	00002590 	.word	0x00002590

c0de75dc <nbgl_objPoolGet>:
c0de75dc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de75e0:	4f1a      	ldr	r7, [pc, #104]	@ (c0de764c <nbgl_objPoolGet+0x70>)
c0de75e2:	4680      	mov	r8, r0
c0de75e4:	468a      	mov	sl, r1
c0de75e6:	eb09 0007 	add.w	r0, r9, r7
c0de75ea:	7840      	ldrb	r0, [r0, #1]
c0de75ec:	b938      	cbnz	r0, c0de75fe <nbgl_objPoolGet+0x22>
c0de75ee:	eb09 0407 	add.w	r4, r9, r7
c0de75f2:	f000 f8a3 	bl	c0de773c <OUTLINED_FUNCTION_1>
c0de75f6:	f000 f89b 	bl	c0de7730 <OUTLINED_FUNCTION_0>
c0de75fa:	2001      	movs	r0, #1
c0de75fc:	7060      	strb	r0, [r4, #1]
c0de75fe:	f819 4007 	ldrb.w	r4, [r9, r7]
c0de7602:	2c27      	cmp	r4, #39	@ 0x27
c0de7604:	d101      	bne.n	c0de760a <nbgl_objPoolGet+0x2e>
c0de7606:	2600      	movs	r6, #0
c0de7608:	e01c      	b.n	c0de7644 <nbgl_objPoolGet+0x68>
c0de760a:	eb09 0007 	add.w	r0, r9, r7
c0de760e:	1c85      	adds	r5, r0, #2
c0de7610:	2000      	movs	r0, #0
c0de7612:	f5b0 6ff5 	cmp.w	r0, #1960	@ 0x7a8
c0de7616:	d0f6      	beq.n	c0de7606 <nbgl_objPoolGet+0x2a>
c0de7618:	f815 1f01 	ldrb.w	r1, [r5, #1]!
c0de761c:	3031      	adds	r0, #49	@ 0x31
c0de761e:	29ff      	cmp	r1, #255	@ 0xff
c0de7620:	d1f7      	bne.n	c0de7612 <nbgl_objPoolGet+0x36>
c0de7622:	490b      	ldr	r1, [pc, #44]	@ (c0de7650 <nbgl_objPoolGet+0x74>)
c0de7624:	4449      	add	r1, r9
c0de7626:	eb01 0b00 	add.w	fp, r1, r0
c0de762a:	2131      	movs	r1, #49	@ 0x31
c0de762c:	f1ab 0631 	sub.w	r6, fp, #49	@ 0x31
c0de7630:	4630      	mov	r0, r6
c0de7632:	f004 ffaf 	bl	c0dec594 <__aeabi_memclr>
c0de7636:	1c60      	adds	r0, r4, #1
c0de7638:	f885 a000 	strb.w	sl, [r5]
c0de763c:	f80b 8c16 	strb.w	r8, [fp, #-22]
c0de7640:	f809 0007 	strb.w	r0, [r9, r7]
c0de7644:	4630      	mov	r0, r6
c0de7646:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de764a:	bf00      	nop
c0de764c:	00002590 	.word	0x00002590
c0de7650:	00001ce5 	.word	0x00001ce5

c0de7654 <nbgl_containerPoolRelease>:
c0de7654:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7656:	4910      	ldr	r1, [pc, #64]	@ (c0de7698 <nbgl_containerPoolRelease+0x44>)
c0de7658:	eb09 0201 	add.w	r2, r9, r1
c0de765c:	7892      	ldrb	r2, [r2, #2]
c0de765e:	b1ca      	cbz	r2, c0de7694 <nbgl_containerPoolRelease+0x40>
c0de7660:	4c0e      	ldr	r4, [pc, #56]	@ (c0de769c <nbgl_containerPoolRelease+0x48>)
c0de7662:	2300      	movs	r3, #0
c0de7664:	25ff      	movs	r5, #255	@ 0xff
c0de7666:	2600      	movs	r6, #0
c0de7668:	2e40      	cmp	r6, #64	@ 0x40
c0de766a:	d013      	beq.n	c0de7694 <nbgl_containerPoolRelease+0x40>
c0de766c:	eb09 0701 	add.w	r7, r9, r1
c0de7670:	4437      	add	r7, r6
c0de7672:	f897 702b 	ldrb.w	r7, [r7, #43]	@ 0x2b
c0de7676:	4287      	cmp	r7, r0
c0de7678:	d10a      	bne.n	c0de7690 <nbgl_containerPoolRelease+0x3c>
c0de767a:	eb09 0704 	add.w	r7, r9, r4
c0de767e:	3a01      	subs	r2, #1
c0de7680:	f847 3026 	str.w	r3, [r7, r6, lsl #2]
c0de7684:	eb09 0701 	add.w	r7, r9, r1
c0de7688:	70ba      	strb	r2, [r7, #2]
c0de768a:	4437      	add	r7, r6
c0de768c:	f887 502b 	strb.w	r5, [r7, #43]	@ 0x2b
c0de7690:	3601      	adds	r6, #1
c0de7692:	e7e9      	b.n	c0de7668 <nbgl_containerPoolRelease+0x14>
c0de7694:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de7696:	bf00      	nop
c0de7698:	00002590 	.word	0x00002590
c0de769c:	00002490 	.word	0x00002490

c0de76a0 <nbgl_containerPoolGet>:
c0de76a0:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de76a4:	f8df a080 	ldr.w	sl, [pc, #128]	@ c0de7728 <nbgl_containerPoolGet+0x88>
c0de76a8:	4605      	mov	r5, r0
c0de76aa:	4688      	mov	r8, r1
c0de76ac:	eb09 000a 	add.w	r0, r9, sl
c0de76b0:	7840      	ldrb	r0, [r0, #1]
c0de76b2:	b938      	cbnz	r0, c0de76c4 <nbgl_containerPoolGet+0x24>
c0de76b4:	eb09 040a 	add.w	r4, r9, sl
c0de76b8:	f000 f840 	bl	c0de773c <OUTLINED_FUNCTION_1>
c0de76bc:	f000 f838 	bl	c0de7730 <OUTLINED_FUNCTION_0>
c0de76c0:	2001      	movs	r0, #1
c0de76c2:	7060      	strb	r0, [r4, #1]
c0de76c4:	eb09 000a 	add.w	r0, r9, sl
c0de76c8:	2600      	movs	r6, #0
c0de76ca:	7880      	ldrb	r0, [r0, #2]
c0de76cc:	1944      	adds	r4, r0, r5
c0de76ce:	2c3e      	cmp	r4, #62	@ 0x3e
c0de76d0:	d826      	bhi.n	c0de7720 <nbgl_containerPoolGet+0x80>
c0de76d2:	eb09 000a 	add.w	r0, r9, sl
c0de76d6:	f100 072b 	add.w	r7, r0, #43	@ 0x2b
c0de76da:	2000      	movs	r0, #0
c0de76dc:	f5b6 7f80 	cmp.w	r6, #256	@ 0x100
c0de76e0:	d01d      	beq.n	c0de771e <nbgl_containerPoolGet+0x7e>
c0de76e2:	f817 1b01 	ldrb.w	r1, [r7], #1
c0de76e6:	29ff      	cmp	r1, #255	@ 0xff
c0de76e8:	f04f 0100 	mov.w	r1, #0
c0de76ec:	bf08      	it	eq
c0de76ee:	1c41      	addeq	r1, r0, #1
c0de76f0:	b2c8      	uxtb	r0, r1
c0de76f2:	3604      	adds	r6, #4
c0de76f4:	42a8      	cmp	r0, r5
c0de76f6:	4608      	mov	r0, r1
c0de76f8:	d1f0      	bne.n	c0de76dc <nbgl_containerPoolGet+0x3c>
c0de76fa:	480c      	ldr	r0, [pc, #48]	@ (c0de772c <nbgl_containerPoolGet+0x8c>)
c0de76fc:	00a9      	lsls	r1, r5, #2
c0de76fe:	4448      	add	r0, r9
c0de7700:	eba0 0085 	sub.w	r0, r0, r5, lsl #2
c0de7704:	4406      	add	r6, r0
c0de7706:	4630      	mov	r0, r6
c0de7708:	f004 ff44 	bl	c0dec594 <__aeabi_memclr>
c0de770c:	1b78      	subs	r0, r7, r5
c0de770e:	4629      	mov	r1, r5
c0de7710:	4642      	mov	r2, r8
c0de7712:	f004 ff46 	bl	c0dec5a2 <__aeabi_memset>
c0de7716:	eb09 000a 	add.w	r0, r9, sl
c0de771a:	7084      	strb	r4, [r0, #2]
c0de771c:	e000      	b.n	c0de7720 <nbgl_containerPoolGet+0x80>
c0de771e:	2600      	movs	r6, #0
c0de7720:	4630      	mov	r0, r6
c0de7722:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de7726:	bf00      	nop
c0de7728:	00002590 	.word	0x00002590
c0de772c:	00002490 	.word	0x00002490

c0de7730 <OUTLINED_FUNCTION_0>:
c0de7730:	f104 002b 	add.w	r0, r4, #43	@ 0x2b
c0de7734:	2140      	movs	r1, #64	@ 0x40
c0de7736:	22ff      	movs	r2, #255	@ 0xff
c0de7738:	f004 bf33 	b.w	c0dec5a2 <__aeabi_memset>

c0de773c <OUTLINED_FUNCTION_1>:
c0de773c:	2128      	movs	r1, #40	@ 0x28
c0de773e:	22ff      	movs	r2, #255	@ 0xff
c0de7740:	1ce0      	adds	r0, r4, #3
c0de7742:	f004 bf2e 	b.w	c0dec5a2 <__aeabi_memset>
	...

c0de7748 <nbgl_screenRedraw>:
c0de7748:	b510      	push	{r4, lr}
c0de774a:	4807      	ldr	r0, [pc, #28]	@ (c0de7768 <nbgl_screenRedraw+0x20>)
c0de774c:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de7750:	b141      	cbz	r1, c0de7764 <nbgl_screenRedraw+0x1c>
c0de7752:	eb09 0400 	add.w	r4, r9, r0
c0de7756:	f004 fbc7 	bl	c0debee8 <nbgl_screen_reinit>
c0de775a:	6860      	ldr	r0, [r4, #4]
c0de775c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de7760:	f7fe beec 	b.w	c0de653c <nbgl_objDraw>
c0de7764:	bd10      	pop	{r4, pc}
c0de7766:	bf00      	nop
c0de7768:	000026fc 	.word	0x000026fc

c0de776c <nbgl_screenGetTop>:
c0de776c:	4804      	ldr	r0, [pc, #16]	@ (c0de7780 <nbgl_screenGetTop+0x14>)
c0de776e:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de7772:	4448      	add	r0, r9
c0de7774:	6840      	ldr	r0, [r0, #4]
c0de7776:	2900      	cmp	r1, #0
c0de7778:	bf08      	it	eq
c0de777a:	4608      	moveq	r0, r1
c0de777c:	4770      	bx	lr
c0de777e:	bf00      	nop
c0de7780:	000026fc 	.word	0x000026fc

c0de7784 <nbgl_screenSet>:
c0de7784:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7786:	4607      	mov	r7, r0
c0de7788:	480d      	ldr	r0, [pc, #52]	@ (c0de77c0 <nbgl_screenSet+0x3c>)
c0de778a:	460d      	mov	r5, r1
c0de778c:	461e      	mov	r6, r3
c0de778e:	4614      	mov	r4, r2
c0de7790:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de7794:	b931      	cbnz	r1, c0de77a4 <nbgl_screenSet+0x20>
c0de7796:	2101      	movs	r1, #1
c0de7798:	f809 1000 	strb.w	r1, [r9, r0]
c0de779c:	4909      	ldr	r1, [pc, #36]	@ (c0de77c4 <nbgl_screenSet+0x40>)
c0de779e:	4448      	add	r0, r9
c0de77a0:	4449      	add	r1, r9
c0de77a2:	6041      	str	r1, [r0, #4]
c0de77a4:	2000      	movs	r0, #0
c0de77a6:	f7ff feff 	bl	c0de75a8 <nbgl_objPoolRelease>
c0de77aa:	2000      	movs	r0, #0
c0de77ac:	f7ff ff52 	bl	c0de7654 <nbgl_containerPoolRelease>
c0de77b0:	2000      	movs	r0, #0
c0de77b2:	4639      	mov	r1, r7
c0de77b4:	462a      	mov	r2, r5
c0de77b6:	4623      	mov	r3, r4
c0de77b8:	9600      	str	r6, [sp, #0]
c0de77ba:	f000 f805 	bl	c0de77c8 <nbgl_screenSetAt>
c0de77be:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de77c0:	000026fc 	.word	0x000026fc
c0de77c4:	000025fb 	.word	0x000025fb

c0de77c8 <nbgl_screenSetAt>:
c0de77c8:	2803      	cmp	r0, #3
c0de77ca:	bf84      	itt	hi
c0de77cc:	f04f 30ff 	movhi.w	r0, #4294967295	@ 0xffffffff
c0de77d0:	4770      	bxhi	lr
c0de77d2:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de77d6:	4604      	mov	r4, r0
c0de77d8:	460f      	mov	r7, r1
c0de77da:	f8dd a020 	ldr.w	sl, [sp, #32]
c0de77de:	4610      	mov	r0, r2
c0de77e0:	461d      	mov	r5, r3
c0de77e2:	4616      	mov	r6, r2
c0de77e4:	4621      	mov	r1, r4
c0de77e6:	f7ff ff5b 	bl	c0de76a0 <nbgl_containerPoolGet>
c0de77ea:	f8df 8104 	ldr.w	r8, [pc, #260]	@ c0de78f0 <nbgl_screenSetAt+0x128>
c0de77ee:	01a3      	lsls	r3, r4, #6
c0de77f0:	2100      	movs	r1, #0
c0de77f2:	eb09 0208 	add.w	r2, r9, r8
c0de77f6:	54d1      	strb	r1, [r2, r3]
c0de77f8:	eb02 1284 	add.w	r2, r2, r4, lsl #6
c0de77fc:	ea4f 231a 	mov.w	r3, sl, lsr #8
c0de7800:	6038      	str	r0, [r7, #0]
c0de7802:	f882 3033 	strb.w	r3, [r2, #51]	@ 0x33
c0de7806:	0a03      	lsrs	r3, r0, #8
c0de7808:	f882 6020 	strb.w	r6, [r2, #32]
c0de780c:	ea4f 661a 	mov.w	r6, sl, lsr #24
c0de7810:	71d1      	strb	r1, [r2, #7]
c0de7812:	7151      	strb	r1, [r2, #5]
c0de7814:	7351      	strb	r1, [r2, #13]
c0de7816:	7311      	strb	r1, [r2, #12]
c0de7818:	72d1      	strb	r1, [r2, #11]
c0de781a:	7291      	strb	r1, [r2, #10]
c0de781c:	70d1      	strb	r1, [r2, #3]
c0de781e:	7091      	strb	r1, [r2, #2]
c0de7820:	7051      	strb	r1, [r2, #1]
c0de7822:	76d1      	strb	r1, [r2, #27]
c0de7824:	7211      	strb	r1, [r2, #8]
c0de7826:	f882 403e 	strb.w	r4, [r2, #62]	@ 0x3e
c0de782a:	77d1      	strb	r1, [r2, #31]
c0de782c:	f882 3023 	strb.w	r3, [r2, #35]	@ 0x23
c0de7830:	2340      	movs	r3, #64	@ 0x40
c0de7832:	7193      	strb	r3, [r2, #6]
c0de7834:	2380      	movs	r3, #128	@ 0x80
c0de7836:	7113      	strb	r3, [r2, #4]
c0de7838:	4613      	mov	r3, r2
c0de783a:	f802 0f22 	strb.w	r0, [r2, #34]!
c0de783e:	f803 af32 	strb.w	sl, [r3, #50]!
c0de7842:	70de      	strb	r6, [r3, #3]
c0de7844:	ea4f 461a 	mov.w	r6, sl, lsr #16
c0de7848:	709e      	strb	r6, [r3, #2]
c0de784a:	0e03      	lsrs	r3, r0, #24
c0de784c:	0c00      	lsrs	r0, r0, #16
c0de784e:	70d3      	strb	r3, [r2, #3]
c0de7850:	7090      	strb	r0, [r2, #2]
c0de7852:	b3ad      	cbz	r5, c0de78c0 <nbgl_screenSetAt+0xf8>
c0de7854:	7828      	ldrb	r0, [r5, #0]
c0de7856:	7869      	ldrb	r1, [r5, #1]
c0de7858:	78aa      	ldrb	r2, [r5, #2]
c0de785a:	78eb      	ldrb	r3, [r5, #3]
c0de785c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de7860:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de7864:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de7868:	f004 fac4 	bl	c0debdf4 <pic>
c0de786c:	eb09 0108 	add.w	r1, r9, r8
c0de7870:	eb01 1184 	add.w	r1, r1, r4, lsl #6
c0de7874:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de7878:	f815 2f04 	ldrb.w	r2, [r5, #4]!
c0de787c:	f815 3f04 	ldrb.w	r3, [r5, #4]!
c0de7880:	f815 cc03 	ldrb.w	ip, [r5, #-3]
c0de7884:	f815 7c02 	ldrb.w	r7, [r5, #-2]
c0de7888:	f815 ec01 	ldrb.w	lr, [r5, #-1]
c0de788c:	786e      	ldrb	r6, [r5, #1]
c0de788e:	f801 2f04 	strb.w	r2, [r1, #4]!
c0de7892:	78ea      	ldrb	r2, [r5, #3]
c0de7894:	78ad      	ldrb	r5, [r5, #2]
c0de7896:	f801 3f04 	strb.w	r3, [r1, #4]!
c0de789a:	0e03      	lsrs	r3, r0, #24
c0de789c:	f801 3c05 	strb.w	r3, [r1, #-5]
c0de78a0:	0c03      	lsrs	r3, r0, #16
c0de78a2:	0a00      	lsrs	r0, r0, #8
c0de78a4:	704e      	strb	r6, [r1, #1]
c0de78a6:	f801 7c02 	strb.w	r7, [r1, #-2]
c0de78aa:	f801 ec01 	strb.w	lr, [r1, #-1]
c0de78ae:	f801 cc03 	strb.w	ip, [r1, #-3]
c0de78b2:	f801 3c06 	strb.w	r3, [r1, #-6]
c0de78b6:	f801 0c07 	strb.w	r0, [r1, #-7]
c0de78ba:	708d      	strb	r5, [r1, #2]
c0de78bc:	70ca      	strb	r2, [r1, #3]
c0de78be:	e008      	b.n	c0de78d2 <nbgl_screenSetAt+0x10a>
c0de78c0:	eb09 0008 	add.w	r0, r9, r8
c0de78c4:	eb00 1084 	add.w	r0, r0, r4, lsl #6
c0de78c8:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de78cc:	70c1      	strb	r1, [r0, #3]
c0de78ce:	7081      	strb	r1, [r0, #2]
c0de78d0:	7041      	strb	r1, [r0, #1]
c0de78d2:	eb09 0008 	add.w	r0, r9, r8
c0de78d6:	eb00 1484 	add.w	r4, r0, r4, lsl #6
c0de78da:	f004 fca3 	bl	c0dec224 <os_sched_current_task>
c0de78de:	3804      	subs	r0, #4
c0de78e0:	fab0 f080 	clz	r0, r0
c0de78e4:	0940      	lsrs	r0, r0, #5
c0de78e6:	f884 003f 	strb.w	r0, [r4, #63]	@ 0x3f
c0de78ea:	2000      	movs	r0, #0
c0de78ec:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de78f0:	000025fb 	.word	0x000025fb

c0de78f4 <nbgl_screenPush>:
c0de78f4:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de78f8:	f8df 80f8 	ldr.w	r8, [pc, #248]	@ c0de79f4 <nbgl_screenPush+0x100>
c0de78fc:	4682      	mov	sl, r0
c0de78fe:	f819 0008 	ldrb.w	r0, [r9, r8]
c0de7902:	2803      	cmp	r0, #3
c0de7904:	d871      	bhi.n	c0de79ea <nbgl_screenPush+0xf6>
c0de7906:	4694      	mov	ip, r2
c0de7908:	468e      	mov	lr, r1
c0de790a:	b1a0      	cbz	r0, c0de7936 <nbgl_screenPush+0x42>
c0de790c:	483a      	ldr	r0, [pc, #232]	@ (c0de79f8 <nbgl_screenPush+0x104>)
c0de790e:	4448      	add	r0, r9
c0de7910:	f100 057a 	add.w	r5, r0, #122	@ 0x7a
c0de7914:	2001      	movs	r0, #1
c0de7916:	2804      	cmp	r0, #4
c0de7918:	d037      	beq.n	c0de798a <nbgl_screenPush+0x96>
c0de791a:	782c      	ldrb	r4, [r5, #0]
c0de791c:	786e      	ldrb	r6, [r5, #1]
c0de791e:	78af      	ldrb	r7, [r5, #2]
c0de7920:	78ea      	ldrb	r2, [r5, #3]
c0de7922:	ea47 2202 	orr.w	r2, r7, r2, lsl #8
c0de7926:	ea44 2406 	orr.w	r4, r4, r6, lsl #8
c0de792a:	ea44 4202 	orr.w	r2, r4, r2, lsl #16
c0de792e:	b372      	cbz	r2, c0de798e <nbgl_screenPush+0x9a>
c0de7930:	3540      	adds	r5, #64	@ 0x40
c0de7932:	3001      	adds	r0, #1
c0de7934:	e7ef      	b.n	c0de7916 <nbgl_screenPush+0x22>
c0de7936:	4d30      	ldr	r5, [pc, #192]	@ (c0de79f8 <nbgl_screenPush+0x104>)
c0de7938:	2700      	movs	r7, #0
c0de793a:	2001      	movs	r0, #1
c0de793c:	f809 0008 	strb.w	r0, [r9, r8]
c0de7940:	444d      	add	r5, r9
c0de7942:	0e2e      	lsrs	r6, r5, #24
c0de7944:	f885 7077 	strb.w	r7, [r5, #119]	@ 0x77
c0de7948:	f885 7020 	strb.w	r7, [r5, #32]
c0de794c:	f885 507a 	strb.w	r5, [r5, #122]	@ 0x7a
c0de7950:	f885 607d 	strb.w	r6, [r5, #125]	@ 0x7d
c0de7954:	0c2e      	lsrs	r6, r5, #16
c0de7956:	f885 607c 	strb.w	r6, [r5, #124]	@ 0x7c
c0de795a:	0a2e      	lsrs	r6, r5, #8
c0de795c:	f885 607b 	strb.w	r6, [r5, #123]	@ 0x7b
c0de7960:	462e      	mov	r6, r5
c0de7962:	f806 7f76 	strb.w	r7, [r6, #118]!
c0de7966:	70f7      	strb	r7, [r6, #3]
c0de7968:	70b7      	strb	r7, [r6, #2]
c0de796a:	f105 0740 	add.w	r7, r5, #64	@ 0x40
c0de796e:	eb09 0608 	add.w	r6, r9, r8
c0de7972:	6077      	str	r7, [r6, #4]
c0de7974:	462e      	mov	r6, r5
c0de7976:	0e3c      	lsrs	r4, r7, #24
c0de7978:	f806 7f36 	strb.w	r7, [r6, #54]!
c0de797c:	70f4      	strb	r4, [r6, #3]
c0de797e:	0c3c      	lsrs	r4, r7, #16
c0de7980:	70b4      	strb	r4, [r6, #2]
c0de7982:	0a3c      	lsrs	r4, r7, #8
c0de7984:	f885 4037 	strb.w	r4, [r5, #55]	@ 0x37
c0de7988:	e01f      	b.n	c0de79ca <nbgl_screenPush+0xd6>
c0de798a:	2004      	movs	r0, #4
c0de798c:	e01d      	b.n	c0de79ca <nbgl_screenPush+0xd6>
c0de798e:	eb09 0208 	add.w	r2, r9, r8
c0de7992:	f1a5 063a 	sub.w	r6, r5, #58	@ 0x3a
c0de7996:	6854      	ldr	r4, [r2, #4]
c0de7998:	0a37      	lsrs	r7, r6, #8
c0de799a:	0e31      	lsrs	r1, r6, #24
c0de799c:	6056      	str	r6, [r2, #4]
c0de799e:	f884 7037 	strb.w	r7, [r4, #55]	@ 0x37
c0de79a2:	4627      	mov	r7, r4
c0de79a4:	f807 6f36 	strb.w	r6, [r7, #54]!
c0de79a8:	70f9      	strb	r1, [r7, #3]
c0de79aa:	0c31      	lsrs	r1, r6, #16
c0de79ac:	70b9      	strb	r1, [r7, #2]
c0de79ae:	0e21      	lsrs	r1, r4, #24
c0de79b0:	702c      	strb	r4, [r5, #0]
c0de79b2:	70e9      	strb	r1, [r5, #3]
c0de79b4:	0c21      	lsrs	r1, r4, #16
c0de79b6:	70a9      	strb	r1, [r5, #2]
c0de79b8:	0a21      	lsrs	r1, r4, #8
c0de79ba:	7069      	strb	r1, [r5, #1]
c0de79bc:	2100      	movs	r1, #0
c0de79be:	f805 1c03 	strb.w	r1, [r5, #-3]
c0de79c2:	f805 1d04 	strb.w	r1, [r5, #-4]!
c0de79c6:	70a9      	strb	r1, [r5, #2]
c0de79c8:	70e9      	strb	r1, [r5, #3]
c0de79ca:	b2c5      	uxtb	r5, r0
c0de79cc:	9300      	str	r3, [sp, #0]
c0de79ce:	4651      	mov	r1, sl
c0de79d0:	4672      	mov	r2, lr
c0de79d2:	4663      	mov	r3, ip
c0de79d4:	4628      	mov	r0, r5
c0de79d6:	f7ff fef7 	bl	c0de77c8 <nbgl_screenSetAt>
c0de79da:	2800      	cmp	r0, #0
c0de79dc:	d405      	bmi.n	c0de79ea <nbgl_screenPush+0xf6>
c0de79de:	f819 0008 	ldrb.w	r0, [r9, r8]
c0de79e2:	3001      	adds	r0, #1
c0de79e4:	f809 0008 	strb.w	r0, [r9, r8]
c0de79e8:	e001      	b.n	c0de79ee <nbgl_screenPush+0xfa>
c0de79ea:	f04f 35ff 	mov.w	r5, #4294967295	@ 0xffffffff
c0de79ee:	4628      	mov	r0, r5
c0de79f0:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de79f4:	000026fc 	.word	0x000026fc
c0de79f8:	000025fb 	.word	0x000025fb

c0de79fc <nbgl_screenPop>:
c0de79fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de79fe:	4e49      	ldr	r6, [pc, #292]	@ (c0de7b24 <nbgl_screenPop+0x128>)
c0de7a00:	4604      	mov	r4, r0
c0de7a02:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de7a06:	2800      	cmp	r0, #0
c0de7a08:	d045      	beq.n	c0de7a96 <nbgl_screenPop+0x9a>
c0de7a0a:	f8df c11c 	ldr.w	ip, [pc, #284]	@ c0de7b28 <nbgl_screenPop+0x12c>
c0de7a0e:	eb09 0306 	add.w	r3, r9, r6
c0de7a12:	1e41      	subs	r1, r0, #1
c0de7a14:	685b      	ldr	r3, [r3, #4]
c0de7a16:	f809 1006 	strb.w	r1, [r9, r6]
c0de7a1a:	eb09 020c 	add.w	r2, r9, ip
c0de7a1e:	eb02 1284 	add.w	r2, r2, r4, lsl #6
c0de7a22:	429a      	cmp	r2, r3
c0de7a24:	d03a      	beq.n	c0de7a9c <nbgl_screenPop+0xa0>
c0de7a26:	eb09 010c 	add.w	r1, r9, ip
c0de7a2a:	eb01 1184 	add.w	r1, r1, r4, lsl #6
c0de7a2e:	f811 2f3a 	ldrb.w	r2, [r1, #58]!
c0de7a32:	784b      	ldrb	r3, [r1, #1]
c0de7a34:	788d      	ldrb	r5, [r1, #2]
c0de7a36:	78c9      	ldrb	r1, [r1, #3]
c0de7a38:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de7a3c:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de7a40:	ea42 4001 	orr.w	r0, r2, r1, lsl #16
c0de7a44:	b170      	cbz	r0, c0de7a64 <nbgl_screenPop+0x68>
c0de7a46:	eb09 020c 	add.w	r2, r9, ip
c0de7a4a:	4601      	mov	r1, r0
c0de7a4c:	eb02 1284 	add.w	r2, r2, r4, lsl #6
c0de7a50:	f812 3f36 	ldrb.w	r3, [r2, #54]!
c0de7a54:	7855      	ldrb	r5, [r2, #1]
c0de7a56:	7897      	ldrb	r7, [r2, #2]
c0de7a58:	78d2      	ldrb	r2, [r2, #3]
c0de7a5a:	f801 3f36 	strb.w	r3, [r1, #54]!
c0de7a5e:	708f      	strb	r7, [r1, #2]
c0de7a60:	70ca      	strb	r2, [r1, #3]
c0de7a62:	704d      	strb	r5, [r1, #1]
c0de7a64:	eb09 010c 	add.w	r1, r9, ip
c0de7a68:	eb01 1184 	add.w	r1, r1, r4, lsl #6
c0de7a6c:	f811 2f36 	ldrb.w	r2, [r1, #54]!
c0de7a70:	784b      	ldrb	r3, [r1, #1]
c0de7a72:	788d      	ldrb	r5, [r1, #2]
c0de7a74:	78c9      	ldrb	r1, [r1, #3]
c0de7a76:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de7a7a:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de7a7e:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
c0de7a82:	b322      	cbz	r2, c0de7ace <nbgl_screenPop+0xd2>
c0de7a84:	f802 0f3a 	strb.w	r0, [r2, #58]!
c0de7a88:	0e01      	lsrs	r1, r0, #24
c0de7a8a:	70d1      	strb	r1, [r2, #3]
c0de7a8c:	0c01      	lsrs	r1, r0, #16
c0de7a8e:	0a00      	lsrs	r0, r0, #8
c0de7a90:	7091      	strb	r1, [r2, #2]
c0de7a92:	7050      	strb	r0, [r2, #1]
c0de7a94:	e01b      	b.n	c0de7ace <nbgl_screenPop+0xd2>
c0de7a96:	f04f 35ff 	mov.w	r5, #4294967295	@ 0xffffffff
c0de7a9a:	e041      	b.n	c0de7b20 <nbgl_screenPop+0x124>
c0de7a9c:	0609      	lsls	r1, r1, #24
c0de7a9e:	d012      	beq.n	c0de7ac6 <nbgl_screenPop+0xca>
c0de7aa0:	eb09 010c 	add.w	r1, r9, ip
c0de7aa4:	eb01 1184 	add.w	r1, r1, r4, lsl #6
c0de7aa8:	f811 2f3a 	ldrb.w	r2, [r1, #58]!
c0de7aac:	784b      	ldrb	r3, [r1, #1]
c0de7aae:	788d      	ldrb	r5, [r1, #2]
c0de7ab0:	78c9      	ldrb	r1, [r1, #3]
c0de7ab2:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de7ab6:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de7aba:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de7abe:	eb09 0206 	add.w	r2, r9, r6
c0de7ac2:	6051      	str	r1, [r2, #4]
c0de7ac4:	e003      	b.n	c0de7ace <nbgl_screenPop+0xd2>
c0de7ac6:	eb09 0106 	add.w	r1, r9, r6
c0de7aca:	2200      	movs	r2, #0
c0de7acc:	604a      	str	r2, [r1, #4]
c0de7ace:	eb09 070c 	add.w	r7, r9, ip
c0de7ad2:	2500      	movs	r5, #0
c0de7ad4:	eb07 1084 	add.w	r0, r7, r4, lsl #6
c0de7ad8:	f800 5f3a 	strb.w	r5, [r0, #58]!
c0de7adc:	f800 5d04 	strb.w	r5, [r0, #-4]!
c0de7ae0:	f800 5d14 	strb.w	r5, [r0, #-20]!
c0de7ae4:	75c5      	strb	r5, [r0, #23]
c0de7ae6:	7585      	strb	r5, [r0, #22]
c0de7ae8:	7545      	strb	r5, [r0, #21]
c0de7aea:	76c5      	strb	r5, [r0, #27]
c0de7aec:	7685      	strb	r5, [r0, #26]
c0de7aee:	7645      	strb	r5, [r0, #25]
c0de7af0:	70c5      	strb	r5, [r0, #3]
c0de7af2:	7085      	strb	r5, [r0, #2]
c0de7af4:	7045      	strb	r5, [r0, #1]
c0de7af6:	f800 5c02 	strb.w	r5, [r0, #-2]
c0de7afa:	4620      	mov	r0, r4
c0de7afc:	f7ff fd54 	bl	c0de75a8 <nbgl_objPoolRelease>
c0de7b00:	4620      	mov	r0, r4
c0de7b02:	f7ff fda7 	bl	c0de7654 <nbgl_containerPoolRelease>
c0de7b06:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de7b0a:	2801      	cmp	r0, #1
c0de7b0c:	d108      	bne.n	c0de7b20 <nbgl_screenPop+0x124>
c0de7b0e:	f897 0020 	ldrb.w	r0, [r7, #32]
c0de7b12:	b928      	cbnz	r0, c0de7b20 <nbgl_screenPop+0x124>
c0de7b14:	2500      	movs	r5, #0
c0de7b16:	eb09 0006 	add.w	r0, r9, r6
c0de7b1a:	f809 5006 	strb.w	r5, [r9, r6]
c0de7b1e:	6045      	str	r5, [r0, #4]
c0de7b20:	4628      	mov	r0, r5
c0de7b22:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de7b24:	000026fc 	.word	0x000026fc
c0de7b28:	000025fb 	.word	0x000025fb

c0de7b2c <nbgl_screenHandler>:
c0de7b2c:	b570      	push	{r4, r5, r6, lr}
c0de7b2e:	4920      	ldr	r1, [pc, #128]	@ (c0de7bb0 <nbgl_screenHandler+0x84>)
c0de7b30:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de7b34:	b352      	cbz	r2, c0de7b8c <nbgl_screenHandler+0x60>
c0de7b36:	4449      	add	r1, r9
c0de7b38:	6849      	ldr	r1, [r1, #4]
c0de7b3a:	460b      	mov	r3, r1
c0de7b3c:	f891 2027 	ldrb.w	r2, [r1, #39]	@ 0x27
c0de7b40:	f813 4f26 	ldrb.w	r4, [r3, #38]!
c0de7b44:	ea44 2202 	orr.w	r2, r4, r2, lsl #8
c0de7b48:	789c      	ldrb	r4, [r3, #2]
c0de7b4a:	78db      	ldrb	r3, [r3, #3]
c0de7b4c:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de7b50:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de7b54:	b1d2      	cbz	r2, c0de7b8c <nbgl_screenHandler+0x60>
c0de7b56:	460b      	mov	r3, r1
c0de7b58:	f813 4f2a 	ldrb.w	r4, [r3, #42]!
c0de7b5c:	785d      	ldrb	r5, [r3, #1]
c0de7b5e:	789e      	ldrb	r6, [r3, #2]
c0de7b60:	78db      	ldrb	r3, [r3, #3]
c0de7b62:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de7b66:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de7b6a:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
c0de7b6e:	b16b      	cbz	r3, c0de7b8c <nbgl_screenHandler+0x60>
c0de7b70:	1a1c      	subs	r4, r3, r0
c0de7b72:	460d      	mov	r5, r1
c0de7b74:	bf38      	it	cc
c0de7b76:	2400      	movcc	r4, #0
c0de7b78:	f805 4f2a 	strb.w	r4, [r5, #42]!
c0de7b7c:	0e26      	lsrs	r6, r4, #24
c0de7b7e:	70ee      	strb	r6, [r5, #3]
c0de7b80:	0c26      	lsrs	r6, r4, #16
c0de7b82:	0a24      	lsrs	r4, r4, #8
c0de7b84:	4283      	cmp	r3, r0
c0de7b86:	70ae      	strb	r6, [r5, #2]
c0de7b88:	706c      	strb	r4, [r5, #1]
c0de7b8a:	d900      	bls.n	c0de7b8e <nbgl_screenHandler+0x62>
c0de7b8c:	bd70      	pop	{r4, r5, r6, pc}
c0de7b8e:	4608      	mov	r0, r1
c0de7b90:	460c      	mov	r4, r1
c0de7b92:	f810 3f2e 	ldrb.w	r3, [r0, #46]!
c0de7b96:	f804 3f2a 	strb.w	r3, [r4, #42]!
c0de7b9a:	7883      	ldrb	r3, [r0, #2]
c0de7b9c:	78c0      	ldrb	r0, [r0, #3]
c0de7b9e:	70e0      	strb	r0, [r4, #3]
c0de7ba0:	f891 002f 	ldrb.w	r0, [r1, #47]	@ 0x2f
c0de7ba4:	70a3      	strb	r3, [r4, #2]
c0de7ba6:	7060      	strb	r0, [r4, #1]
c0de7ba8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de7bac:	4710      	bx	r2
c0de7bae:	bf00      	nop
c0de7bb0:	000026fc 	.word	0x000026fc

c0de7bb4 <nbgl_stepDrawText>:
c0de7bb4:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de7bb8:	460e      	mov	r6, r1
c0de7bba:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de7bbc:	4605      	mov	r5, r0
c0de7bbe:	2000      	movs	r0, #0
c0de7bc0:	469a      	mov	sl, r3
c0de7bc2:	4617      	mov	r7, r2
c0de7bc4:	f000 f830 	bl	c0de7c28 <getFreeContext>
c0de7bc8:	b348      	cbz	r0, c0de7c1e <nbgl_stepDrawText+0x6a>
c0de7bca:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de7bce:	4604      	mov	r4, r0
c0de7bd0:	6146      	str	r6, [r0, #20]
c0de7bd2:	b10f      	cbz	r7, c0de7bd8 <nbgl_stepDrawText+0x24>
c0de7bd4:	f000 fae1 	bl	c0de819a <OUTLINED_FUNCTION_1>
c0de7bd8:	200a      	movs	r0, #10
c0de7bda:	f1b8 0f00 	cmp.w	r8, #0
c0de7bde:	bf19      	ittee	ne
c0de7be0:	4641      	movne	r1, r8
c0de7be2:	2203      	movne	r2, #3
c0de7be4:	4651      	moveq	r1, sl
c0de7be6:	2204      	moveq	r2, #4
c0de7be8:	2372      	movs	r3, #114	@ 0x72
c0de7bea:	f7fd fdc9 	bl	c0de5780 <nbgl_getTextNbPagesInWidth>
c0de7bee:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de7bf0:	7020      	strb	r0, [r4, #0]
c0de7bf2:	072a      	lsls	r2, r5, #28
c0de7bf4:	bf46      	itte	mi
c0de7bf6:	3801      	submi	r0, #1
c0de7bf8:	7060      	strbmi	r0, [r4, #1]
c0de7bfa:	7860      	ldrbpl	r0, [r4, #1]
c0de7bfc:	f8c4 800c 	str.w	r8, [r4, #12]
c0de7c00:	f8c4 a004 	str.w	sl, [r4, #4]
c0de7c04:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de7c08:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de7c0c:	7461      	strb	r1, [r4, #17]
c0de7c0e:	f005 0103 	and.w	r1, r5, #3
c0de7c12:	7421      	strb	r1, [r4, #16]
c0de7c14:	b2c1      	uxtb	r1, r0
c0de7c16:	4620      	mov	r0, r4
c0de7c18:	f000 f82c 	bl	c0de7c74 <displayTextPage>
c0de7c1c:	e000      	b.n	c0de7c20 <nbgl_stepDrawText+0x6c>
c0de7c1e:	2400      	movs	r4, #0
c0de7c20:	4620      	mov	r0, r4
c0de7c22:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de7c28 <getFreeContext>:
c0de7c28:	b570      	push	{r4, r5, r6, lr}
c0de7c2a:	4604      	mov	r4, r0
c0de7c2c:	4810      	ldr	r0, [pc, #64]	@ (c0de7c70 <getFreeContext+0x48>)
c0de7c2e:	460d      	mov	r5, r1
c0de7c30:	b151      	cbz	r1, c0de7c48 <getFreeContext+0x20>
c0de7c32:	2100      	movs	r1, #0
c0de7c34:	2990      	cmp	r1, #144	@ 0x90
c0de7c36:	d00a      	beq.n	c0de7c4e <getFreeContext+0x26>
c0de7c38:	eb09 0200 	add.w	r2, r9, r0
c0de7c3c:	440a      	add	r2, r1
c0de7c3e:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de7c42:	b132      	cbz	r2, c0de7c52 <getFreeContext+0x2a>
c0de7c44:	3148      	adds	r1, #72	@ 0x48
c0de7c46:	e7f5      	b.n	c0de7c34 <getFreeContext+0xc>
c0de7c48:	eb09 0600 	add.w	r6, r9, r0
c0de7c4c:	e005      	b.n	c0de7c5a <getFreeContext+0x32>
c0de7c4e:	2600      	movs	r6, #0
c0de7c50:	e00b      	b.n	c0de7c6a <getFreeContext+0x42>
c0de7c52:	4448      	add	r0, r9
c0de7c54:	4408      	add	r0, r1
c0de7c56:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de7c5a:	4630      	mov	r0, r6
c0de7c5c:	2148      	movs	r1, #72	@ 0x48
c0de7c5e:	f004 fc99 	bl	c0dec594 <__aeabi_memclr>
c0de7c62:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de7c66:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de7c6a:	4630      	mov	r0, r6
c0de7c6c:	bd70      	pop	{r4, r5, r6, pc}
c0de7c6e:	bf00      	nop
c0de7c70:	00002704 	.word	0x00002704

c0de7c74 <displayTextPage>:
c0de7c74:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de7c78:	b091      	sub	sp, #68	@ 0x44
c0de7c7a:	4604      	mov	r4, r0
c0de7c7c:	7840      	ldrb	r0, [r0, #1]
c0de7c7e:	460e      	mov	r6, r1
c0de7c80:	4288      	cmp	r0, r1
c0de7c82:	d21c      	bcs.n	c0de7cbe <displayTextPage+0x4a>
c0de7c84:	68a5      	ldr	r5, [r4, #8]
c0de7c86:	7820      	ldrb	r0, [r4, #0]
c0de7c88:	7066      	strb	r6, [r4, #1]
c0de7c8a:	3801      	subs	r0, #1
c0de7c8c:	42b0      	cmp	r0, r6
c0de7c8e:	dd31      	ble.n	c0de7cf4 <displayTextPage+0x80>
c0de7c90:	68e0      	ldr	r0, [r4, #12]
c0de7c92:	2101      	movs	r1, #1
c0de7c94:	2303      	movs	r3, #3
c0de7c96:	aa08      	add	r2, sp, #32
c0de7c98:	e9cd 2100 	strd	r2, r1, [sp]
c0de7c9c:	4629      	mov	r1, r5
c0de7c9e:	2800      	cmp	r0, #0
c0de7ca0:	bf08      	it	eq
c0de7ca2:	2304      	moveq	r3, #4
c0de7ca4:	200a      	movs	r0, #10
c0de7ca6:	2272      	movs	r2, #114	@ 0x72
c0de7ca8:	f7fd fc18 	bl	c0de54dc <nbgl_getTextMaxLenInNbLines>
c0de7cac:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de7cb0:	1868      	adds	r0, r5, r1
c0de7cb2:	60a0      	str	r0, [r4, #8]
c0de7cb4:	5c69      	ldrb	r1, [r5, r1]
c0de7cb6:	290a      	cmp	r1, #10
c0de7cb8:	d11e      	bne.n	c0de7cf8 <displayTextPage+0x84>
c0de7cba:	3001      	adds	r0, #1
c0de7cbc:	e01b      	b.n	c0de7cf6 <displayTextPage+0x82>
c0de7cbe:	68e5      	ldr	r5, [r4, #12]
c0de7cc0:	2d00      	cmp	r5, #0
c0de7cc2:	d074      	beq.n	c0de7dae <displayTextPage+0x13a>
c0de7cc4:	2700      	movs	r7, #0
c0de7cc6:	f04f 0801 	mov.w	r8, #1
c0de7cca:	f10d 0a20 	add.w	sl, sp, #32
c0de7cce:	42be      	cmp	r6, r7
c0de7cd0:	d0d9      	beq.n	c0de7c86 <displayTextPage+0x12>
c0de7cd2:	7820      	ldrb	r0, [r4, #0]
c0de7cd4:	3801      	subs	r0, #1
c0de7cd6:	42b8      	cmp	r0, r7
c0de7cd8:	dd0a      	ble.n	c0de7cf0 <displayTextPage+0x7c>
c0de7cda:	200a      	movs	r0, #10
c0de7cdc:	4629      	mov	r1, r5
c0de7cde:	2272      	movs	r2, #114	@ 0x72
c0de7ce0:	2303      	movs	r3, #3
c0de7ce2:	e9cd a800 	strd	sl, r8, [sp]
c0de7ce6:	f7fd fbf9 	bl	c0de54dc <nbgl_getTextMaxLenInNbLines>
c0de7cea:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de7cee:	4405      	add	r5, r0
c0de7cf0:	3701      	adds	r7, #1
c0de7cf2:	e7ec      	b.n	c0de7cce <displayTextPage+0x5a>
c0de7cf4:	2000      	movs	r0, #0
c0de7cf6:	60a0      	str	r0, [r4, #8]
c0de7cf8:	484f      	ldr	r0, [pc, #316]	@ (c0de7e38 <displayTextPage+0x1c4>)
c0de7cfa:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de7cfe:	4478      	add	r0, pc
c0de7d00:	9004      	str	r0, [sp, #16]
c0de7d02:	2000      	movs	r0, #0
c0de7d04:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de7d08:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de7d0c:	f88d 000c 	strb.w	r0, [sp, #12]
c0de7d10:	ca07      	ldmia	r2, {r0, r1, r2}
c0de7d12:	ab05      	add	r3, sp, #20
c0de7d14:	c307      	stmia	r3!, {r0, r1, r2}
c0de7d16:	a803      	add	r0, sp, #12
c0de7d18:	f7fd fe60 	bl	c0de59dc <nbgl_layoutGet>
c0de7d1c:	7827      	ldrb	r7, [r4, #0]
c0de7d1e:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de7d22:	4606      	mov	r6, r0
c0de7d24:	6420      	str	r0, [r4, #64]	@ 0x40
c0de7d26:	7c20      	ldrb	r0, [r4, #16]
c0de7d28:	4639      	mov	r1, r7
c0de7d2a:	4652      	mov	r2, sl
c0de7d2c:	f000 f8fc 	bl	c0de7f28 <getNavigationInfo>
c0de7d30:	4680      	mov	r8, r0
c0de7d32:	f88d 000b 	strb.w	r0, [sp, #11]
c0de7d36:	68e0      	ldr	r0, [r4, #12]
c0de7d38:	b188      	cbz	r0, c0de7d5e <displayTextPage+0xea>
c0de7d3a:	2f01      	cmp	r7, #1
c0de7d3c:	d115      	bne.n	c0de7d6a <displayTextPage+0xf6>
c0de7d3e:	6861      	ldr	r1, [r4, #4]
c0de7d40:	2008      	movs	r0, #8
c0de7d42:	2272      	movs	r2, #114	@ 0x72
c0de7d44:	2300      	movs	r3, #0
c0de7d46:	2600      	movs	r6, #0
c0de7d48:	f7fd fc9c 	bl	c0de5684 <nbgl_getTextNbLinesInWidth>
c0de7d4c:	2802      	cmp	r0, #2
c0de7d4e:	d348      	bcc.n	c0de7de2 <displayTextPage+0x16e>
c0de7d50:	6861      	ldr	r1, [r4, #4]
c0de7d52:	2018      	movs	r0, #24
c0de7d54:	f104 0218 	add.w	r2, r4, #24
c0de7d58:	e9cd 2000 	strd	r2, r0, [sp]
c0de7d5c:	e021      	b.n	c0de7da2 <displayTextPage+0x12e>
c0de7d5e:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de7d62:	4630      	mov	r0, r6
c0de7d64:	4629      	mov	r1, r5
c0de7d66:	2200      	movs	r2, #0
c0de7d68:	e055      	b.n	c0de7e16 <displayTextPage+0x1a2>
c0de7d6a:	f10a 0001 	add.w	r0, sl, #1
c0de7d6e:	6863      	ldr	r3, [r4, #4]
c0de7d70:	2124      	movs	r1, #36	@ 0x24
c0de7d72:	e9cd 0700 	strd	r0, r7, [sp]
c0de7d76:	af08      	add	r7, sp, #32
c0de7d78:	4a30      	ldr	r2, [pc, #192]	@ (c0de7e3c <displayTextPage+0x1c8>)
c0de7d7a:	4638      	mov	r0, r7
c0de7d7c:	447a      	add	r2, pc
c0de7d7e:	f003 fe9f 	bl	c0debac0 <snprintf>
c0de7d82:	2008      	movs	r0, #8
c0de7d84:	4639      	mov	r1, r7
c0de7d86:	2272      	movs	r2, #114	@ 0x72
c0de7d88:	2300      	movs	r3, #0
c0de7d8a:	f04f 0a00 	mov.w	sl, #0
c0de7d8e:	f7fd fc79 	bl	c0de5684 <nbgl_getTextNbLinesInWidth>
c0de7d92:	f104 0c18 	add.w	ip, r4, #24
c0de7d96:	2802      	cmp	r0, #2
c0de7d98:	d32c      	bcc.n	c0de7df4 <displayTextPage+0x180>
c0de7d9a:	2018      	movs	r0, #24
c0de7d9c:	e9cd c000 	strd	ip, r0, [sp]
c0de7da0:	a908      	add	r1, sp, #32
c0de7da2:	2008      	movs	r0, #8
c0de7da4:	2272      	movs	r2, #114	@ 0x72
c0de7da6:	2301      	movs	r3, #1
c0de7da8:	f7fd fd7e 	bl	c0de58a8 <nbgl_textReduceOnNbLines>
c0de7dac:	e02d      	b.n	c0de7e0a <displayTextPage+0x196>
c0de7dae:	6865      	ldr	r5, [r4, #4]
c0de7db0:	2700      	movs	r7, #0
c0de7db2:	f04f 0801 	mov.w	r8, #1
c0de7db6:	f10d 0a20 	add.w	sl, sp, #32
c0de7dba:	42be      	cmp	r6, r7
c0de7dbc:	f43f af63 	beq.w	c0de7c86 <displayTextPage+0x12>
c0de7dc0:	7820      	ldrb	r0, [r4, #0]
c0de7dc2:	3801      	subs	r0, #1
c0de7dc4:	42b8      	cmp	r0, r7
c0de7dc6:	dd0a      	ble.n	c0de7dde <displayTextPage+0x16a>
c0de7dc8:	200a      	movs	r0, #10
c0de7dca:	4629      	mov	r1, r5
c0de7dcc:	2272      	movs	r2, #114	@ 0x72
c0de7dce:	2304      	movs	r3, #4
c0de7dd0:	e9cd a800 	strd	sl, r8, [sp]
c0de7dd4:	f7fd fb82 	bl	c0de54dc <nbgl_getTextMaxLenInNbLines>
c0de7dd8:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de7ddc:	4405      	add	r5, r0
c0de7dde:	3701      	adds	r7, #1
c0de7de0:	e7eb      	b.n	c0de7dba <displayTextPage+0x146>
c0de7de2:	6861      	ldr	r1, [r4, #4]
c0de7de4:	f104 0018 	add.w	r0, r4, #24
c0de7de8:	2217      	movs	r2, #23
c0de7dea:	f004 fbd6 	bl	c0dec59a <__aeabi_memcpy>
c0de7dee:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de7df2:	e00a      	b.n	c0de7e0a <displayTextPage+0x196>
c0de7df4:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de7df6:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de7dfa:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de7dfe:	8838      	ldrh	r0, [r7, #0]
c0de7e00:	f8ac 0000 	strh.w	r0, [ip]
c0de7e04:	78b8      	ldrb	r0, [r7, #2]
c0de7e06:	f88c 0002 	strb.w	r0, [ip, #2]
c0de7e0a:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de7e0e:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de7e10:	f104 0118 	add.w	r1, r4, #24
c0de7e14:	462a      	mov	r2, r5
c0de7e16:	f7fd fea3 	bl	c0de5b60 <nbgl_layoutAddText>
c0de7e1a:	f1b8 0f00 	cmp.w	r8, #0
c0de7e1e:	d004      	beq.n	c0de7e2a <displayTextPage+0x1b6>
c0de7e20:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de7e22:	f10d 010a 	add.w	r1, sp, #10
c0de7e26:	f7fd fe3d 	bl	c0de5aa4 <nbgl_layoutAddNavigation>
c0de7e2a:	f000 f9e9 	bl	c0de8200 <OUTLINED_FUNCTION_4>
c0de7e2e:	f7fe fc69 	bl	c0de6704 <nbgl_refresh>
c0de7e32:	b011      	add	sp, #68	@ 0x44
c0de7e34:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de7e38:	000001bb 	.word	0x000001bb
c0de7e3c:	00004ac2 	.word	0x00004ac2

c0de7e40 <nbgl_stepDrawCenteredInfo>:
c0de7e40:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de7e44:	b087      	sub	sp, #28
c0de7e46:	460d      	mov	r5, r1
c0de7e48:	4682      	mov	sl, r0
c0de7e4a:	a802      	add	r0, sp, #8
c0de7e4c:	f000 f9d3 	bl	c0de81f6 <OUTLINED_FUNCTION_3>
c0de7e50:	4819      	ldr	r0, [pc, #100]	@ (c0de7eb8 <nbgl_stepDrawCenteredInfo+0x78>)
c0de7e52:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de7e54:	4478      	add	r0, pc
c0de7e56:	f000 f9c5 	bl	c0de81e4 <OUTLINED_FUNCTION_2>
c0de7e5a:	b168      	cbz	r0, c0de7e78 <nbgl_stepDrawCenteredInfo+0x38>
c0de7e5c:	4604      	mov	r4, r0
c0de7e5e:	6145      	str	r5, [r0, #20]
c0de7e60:	b10f      	cbz	r7, c0de7e66 <nbgl_stepDrawCenteredInfo+0x26>
c0de7e62:	f000 f953 	bl	c0de810c <OUTLINED_FUNCTION_0>
c0de7e66:	f000 f9ce 	bl	c0de8206 <OUTLINED_FUNCTION_5>
c0de7e6a:	d007      	beq.n	c0de7e7c <nbgl_stepDrawCenteredInfo+0x3c>
c0de7e6c:	2802      	cmp	r0, #2
c0de7e6e:	d007      	beq.n	c0de7e80 <nbgl_stepDrawCenteredInfo+0x40>
c0de7e70:	2801      	cmp	r0, #1
c0de7e72:	d108      	bne.n	c0de7e86 <nbgl_stepDrawCenteredInfo+0x46>
c0de7e74:	2002      	movs	r0, #2
c0de7e76:	e004      	b.n	c0de7e82 <nbgl_stepDrawCenteredInfo+0x42>
c0de7e78:	2400      	movs	r4, #0
c0de7e7a:	e018      	b.n	c0de7eae <nbgl_stepDrawCenteredInfo+0x6e>
c0de7e7c:	2003      	movs	r0, #3
c0de7e7e:	e000      	b.n	c0de7e82 <nbgl_stepDrawCenteredInfo+0x42>
c0de7e80:	2001      	movs	r0, #1
c0de7e82:	2500      	movs	r5, #0
c0de7e84:	e000      	b.n	c0de7e88 <nbgl_stepDrawCenteredInfo+0x48>
c0de7e86:	2000      	movs	r0, #0
c0de7e88:	f88d 0007 	strb.w	r0, [sp, #7]
c0de7e8c:	a802      	add	r0, sp, #8
c0de7e8e:	f7fd fda5 	bl	c0de59dc <nbgl_layoutGet>
c0de7e92:	4641      	mov	r1, r8
c0de7e94:	6420      	str	r0, [r4, #64]	@ 0x40
c0de7e96:	f7fe f86b 	bl	c0de5f70 <nbgl_layoutAddCenteredInfo>
c0de7e9a:	b925      	cbnz	r5, c0de7ea6 <nbgl_stepDrawCenteredInfo+0x66>
c0de7e9c:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de7e9e:	f10d 0106 	add.w	r1, sp, #6
c0de7ea2:	f7fd fdff 	bl	c0de5aa4 <nbgl_layoutAddNavigation>
c0de7ea6:	f000 f9ab 	bl	c0de8200 <OUTLINED_FUNCTION_4>
c0de7eaa:	f7fe fc2b 	bl	c0de6704 <nbgl_refresh>
c0de7eae:	4620      	mov	r0, r4
c0de7eb0:	b007      	add	sp, #28
c0de7eb2:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de7eb6:	bf00      	nop
c0de7eb8:	00000065 	.word	0x00000065

c0de7ebc <actionCallback>:
c0de7ebc:	b510      	push	{r4, lr}
c0de7ebe:	460c      	mov	r4, r1
c0de7ec0:	f000 f8f0 	bl	c0de80a4 <getContextFromLayout>
c0de7ec4:	b378      	cbz	r0, c0de7f26 <actionCallback+0x6a>
c0de7ec6:	2c04      	cmp	r4, #4
c0de7ec8:	d006      	beq.n	c0de7ed8 <actionCallback+0x1c>
c0de7eca:	2c01      	cmp	r4, #1
c0de7ecc:	d008      	beq.n	c0de7ee0 <actionCallback+0x24>
c0de7ece:	bb54      	cbnz	r4, c0de7f26 <actionCallback+0x6a>
c0de7ed0:	7841      	ldrb	r1, [r0, #1]
c0de7ed2:	b1d9      	cbz	r1, c0de7f0c <actionCallback+0x50>
c0de7ed4:	3901      	subs	r1, #1
c0de7ed6:	e009      	b.n	c0de7eec <actionCallback+0x30>
c0de7ed8:	6942      	ldr	r2, [r0, #20]
c0de7eda:	b322      	cbz	r2, c0de7f26 <actionCallback+0x6a>
c0de7edc:	2104      	movs	r1, #4
c0de7ede:	e01f      	b.n	c0de7f20 <actionCallback+0x64>
c0de7ee0:	7802      	ldrb	r2, [r0, #0]
c0de7ee2:	7841      	ldrb	r1, [r0, #1]
c0de7ee4:	3a01      	subs	r2, #1
c0de7ee6:	428a      	cmp	r2, r1
c0de7ee8:	dd05      	ble.n	c0de7ef6 <actionCallback+0x3a>
c0de7eea:	3101      	adds	r1, #1
c0de7eec:	b2c9      	uxtb	r1, r1
c0de7eee:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de7ef2:	f7ff bebf 	b.w	c0de7c74 <displayTextPage>
c0de7ef6:	7c01      	ldrb	r1, [r0, #16]
c0de7ef8:	f041 0102 	orr.w	r1, r1, #2
c0de7efc:	2903      	cmp	r1, #3
c0de7efe:	d001      	beq.n	c0de7f04 <actionCallback+0x48>
c0de7f00:	7c41      	ldrb	r1, [r0, #17]
c0de7f02:	b181      	cbz	r1, c0de7f26 <actionCallback+0x6a>
c0de7f04:	6942      	ldr	r2, [r0, #20]
c0de7f06:	b172      	cbz	r2, c0de7f26 <actionCallback+0x6a>
c0de7f08:	2101      	movs	r1, #1
c0de7f0a:	e009      	b.n	c0de7f20 <actionCallback+0x64>
c0de7f0c:	7c01      	ldrb	r1, [r0, #16]
c0de7f0e:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de7f12:	2902      	cmp	r1, #2
c0de7f14:	d001      	beq.n	c0de7f1a <actionCallback+0x5e>
c0de7f16:	7c41      	ldrb	r1, [r0, #17]
c0de7f18:	b129      	cbz	r1, c0de7f26 <actionCallback+0x6a>
c0de7f1a:	6942      	ldr	r2, [r0, #20]
c0de7f1c:	b11a      	cbz	r2, c0de7f26 <actionCallback+0x6a>
c0de7f1e:	2100      	movs	r1, #0
c0de7f20:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de7f24:	4710      	bx	r2
c0de7f26:	bd10      	pop	{r4, pc}

c0de7f28 <getNavigationInfo>:
c0de7f28:	4603      	mov	r3, r0
c0de7f2a:	2902      	cmp	r1, #2
c0de7f2c:	d308      	bcc.n	c0de7f40 <getNavigationInfo+0x18>
c0de7f2e:	3901      	subs	r1, #1
c0de7f30:	4610      	mov	r0, r2
c0de7f32:	2a00      	cmp	r2, #0
c0de7f34:	bf18      	it	ne
c0de7f36:	2001      	movne	r0, #1
c0de7f38:	4291      	cmp	r1, r2
c0de7f3a:	bf88      	it	hi
c0de7f3c:	3002      	addhi	r0, #2
c0de7f3e:	e000      	b.n	c0de7f42 <getNavigationInfo+0x1a>
c0de7f40:	2000      	movs	r0, #0
c0de7f42:	2b03      	cmp	r3, #3
c0de7f44:	d00a      	beq.n	c0de7f5c <getNavigationInfo+0x34>
c0de7f46:	2b02      	cmp	r3, #2
c0de7f48:	bf04      	itt	eq
c0de7f4a:	f040 0001 	orreq.w	r0, r0, #1
c0de7f4e:	4770      	bxeq	lr
c0de7f50:	2b01      	cmp	r3, #1
c0de7f52:	bf04      	itt	eq
c0de7f54:	f040 0002 	orreq.w	r0, r0, #2
c0de7f58:	4770      	bxeq	lr
c0de7f5a:	4770      	bx	lr
c0de7f5c:	2003      	movs	r0, #3
c0de7f5e:	4770      	bx	lr

c0de7f60 <nbgl_stepDrawMenuList>:
c0de7f60:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7f62:	460f      	mov	r7, r1
c0de7f64:	4606      	mov	r6, r0
c0de7f66:	2002      	movs	r0, #2
c0de7f68:	4619      	mov	r1, r3
c0de7f6a:	4615      	mov	r5, r2
c0de7f6c:	f7ff fe5c 	bl	c0de7c28 <getFreeContext>
c0de7f70:	b170      	cbz	r0, c0de7f90 <nbgl_stepDrawMenuList+0x30>
c0de7f72:	4604      	mov	r4, r0
c0de7f74:	b10f      	cbz	r7, c0de7f7a <nbgl_stepDrawMenuList+0x1a>
c0de7f76:	f000 f910 	bl	c0de819a <OUTLINED_FUNCTION_1>
c0de7f7a:	7928      	ldrb	r0, [r5, #4]
c0de7f7c:	7220      	strb	r0, [r4, #8]
c0de7f7e:	7968      	ldrb	r0, [r5, #5]
c0de7f80:	7260      	strb	r0, [r4, #9]
c0de7f82:	6828      	ldr	r0, [r5, #0]
c0de7f84:	e9c4 6000 	strd	r6, r0, [r4]
c0de7f88:	4620      	mov	r0, r4
c0de7f8a:	f000 f805 	bl	c0de7f98 <displayMenuList>
c0de7f8e:	e000      	b.n	c0de7f92 <nbgl_stepDrawMenuList+0x32>
c0de7f90:	2400      	movs	r4, #0
c0de7f92:	4620      	mov	r0, r4
c0de7f94:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de7f98 <displayMenuList>:
c0de7f98:	b5b0      	push	{r4, r5, r7, lr}
c0de7f9a:	b086      	sub	sp, #24
c0de7f9c:	4604      	mov	r4, r0
c0de7f9e:	2000      	movs	r0, #0
c0de7fa0:	9001      	str	r0, [sp, #4]
c0de7fa2:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de7fa6:	4819      	ldr	r0, [pc, #100]	@ (c0de800c <displayMenuList+0x74>)
c0de7fa8:	4478      	add	r0, pc
c0de7faa:	9002      	str	r0, [sp, #8]
c0de7fac:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de7fb0:	f88d 0004 	strb.w	r0, [sp, #4]
c0de7fb4:	ca07      	ldmia	r2, {r0, r1, r2}
c0de7fb6:	ab03      	add	r3, sp, #12
c0de7fb8:	c307      	stmia	r3!, {r0, r1, r2}
c0de7fba:	a801      	add	r0, sp, #4
c0de7fbc:	f7fd fd0e 	bl	c0de59dc <nbgl_layoutGet>
c0de7fc0:	1d25      	adds	r5, r4, #4
c0de7fc2:	6420      	str	r0, [r4, #64]	@ 0x40
c0de7fc4:	4629      	mov	r1, r5
c0de7fc6:	f7fd ff7f 	bl	c0de5ec8 <nbgl_layoutAddMenuList>
c0de7fca:	7a20      	ldrb	r0, [r4, #8]
c0de7fcc:	2802      	cmp	r0, #2
c0de7fce:	d316      	bcc.n	c0de7ffe <displayMenuList+0x66>
c0de7fd0:	2101      	movs	r1, #1
c0de7fd2:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de7fd6:	7969      	ldrb	r1, [r5, #5]
c0de7fd8:	2900      	cmp	r1, #0
c0de7fda:	460a      	mov	r2, r1
c0de7fdc:	bf18      	it	ne
c0de7fde:	2201      	movne	r2, #1
c0de7fe0:	3801      	subs	r0, #1
c0de7fe2:	f88d 2003 	strb.w	r2, [sp, #3]
c0de7fe6:	4288      	cmp	r0, r1
c0de7fe8:	d903      	bls.n	c0de7ff2 <displayMenuList+0x5a>
c0de7fea:	1c90      	adds	r0, r2, #2
c0de7fec:	f88d 0003 	strb.w	r0, [sp, #3]
c0de7ff0:	e000      	b.n	c0de7ff4 <displayMenuList+0x5c>
c0de7ff2:	b121      	cbz	r1, c0de7ffe <displayMenuList+0x66>
c0de7ff4:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de7ff6:	f10d 0102 	add.w	r1, sp, #2
c0de7ffa:	f7fd fd53 	bl	c0de5aa4 <nbgl_layoutAddNavigation>
c0de7ffe:	f000 f8ff 	bl	c0de8200 <OUTLINED_FUNCTION_4>
c0de8002:	f7fe fb7f 	bl	c0de6704 <nbgl_refresh>
c0de8006:	b006      	add	sp, #24
c0de8008:	bdb0      	pop	{r4, r5, r7, pc}
c0de800a:	bf00      	nop
c0de800c:	00000121 	.word	0x00000121

c0de8010 <nbgl_stepDrawSwitch>:
c0de8010:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de8014:	b087      	sub	sp, #28
c0de8016:	460d      	mov	r5, r1
c0de8018:	4682      	mov	sl, r0
c0de801a:	a802      	add	r0, sp, #8
c0de801c:	f000 f8eb 	bl	c0de81f6 <OUTLINED_FUNCTION_3>
c0de8020:	4819      	ldr	r0, [pc, #100]	@ (c0de8088 <nbgl_stepDrawSwitch+0x78>)
c0de8022:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de8024:	4478      	add	r0, pc
c0de8026:	f000 f8dd 	bl	c0de81e4 <OUTLINED_FUNCTION_2>
c0de802a:	b168      	cbz	r0, c0de8048 <nbgl_stepDrawSwitch+0x38>
c0de802c:	4604      	mov	r4, r0
c0de802e:	6145      	str	r5, [r0, #20]
c0de8030:	b10f      	cbz	r7, c0de8036 <nbgl_stepDrawSwitch+0x26>
c0de8032:	f000 f86b 	bl	c0de810c <OUTLINED_FUNCTION_0>
c0de8036:	f000 f8e6 	bl	c0de8206 <OUTLINED_FUNCTION_5>
c0de803a:	d007      	beq.n	c0de804c <nbgl_stepDrawSwitch+0x3c>
c0de803c:	2802      	cmp	r0, #2
c0de803e:	d007      	beq.n	c0de8050 <nbgl_stepDrawSwitch+0x40>
c0de8040:	2801      	cmp	r0, #1
c0de8042:	d108      	bne.n	c0de8056 <nbgl_stepDrawSwitch+0x46>
c0de8044:	2002      	movs	r0, #2
c0de8046:	e004      	b.n	c0de8052 <nbgl_stepDrawSwitch+0x42>
c0de8048:	2400      	movs	r4, #0
c0de804a:	e018      	b.n	c0de807e <nbgl_stepDrawSwitch+0x6e>
c0de804c:	2003      	movs	r0, #3
c0de804e:	e000      	b.n	c0de8052 <nbgl_stepDrawSwitch+0x42>
c0de8050:	2001      	movs	r0, #1
c0de8052:	2500      	movs	r5, #0
c0de8054:	e000      	b.n	c0de8058 <nbgl_stepDrawSwitch+0x48>
c0de8056:	2000      	movs	r0, #0
c0de8058:	f88d 0007 	strb.w	r0, [sp, #7]
c0de805c:	a802      	add	r0, sp, #8
c0de805e:	f7fd fcbd 	bl	c0de59dc <nbgl_layoutGet>
c0de8062:	4641      	mov	r1, r8
c0de8064:	6420      	str	r0, [r4, #64]	@ 0x40
c0de8066:	f7fe f923 	bl	c0de62b0 <nbgl_layoutAddSwitch>
c0de806a:	b925      	cbnz	r5, c0de8076 <nbgl_stepDrawSwitch+0x66>
c0de806c:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de806e:	f10d 0106 	add.w	r1, sp, #6
c0de8072:	f7fd fd17 	bl	c0de5aa4 <nbgl_layoutAddNavigation>
c0de8076:	f000 f8c3 	bl	c0de8200 <OUTLINED_FUNCTION_4>
c0de807a:	f7fe fb43 	bl	c0de6704 <nbgl_refresh>
c0de807e:	4620      	mov	r0, r4
c0de8080:	b007      	add	sp, #28
c0de8082:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de8086:	bf00      	nop
c0de8088:	fffffe95 	.word	0xfffffe95

c0de808c <nbgl_stepRelease>:
c0de808c:	b138      	cbz	r0, c0de809e <nbgl_stepRelease+0x12>
c0de808e:	b510      	push	{r4, lr}
c0de8090:	4604      	mov	r4, r0
c0de8092:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de8094:	f7fe f9fc 	bl	c0de6490 <nbgl_layoutRelease>
c0de8098:	2100      	movs	r1, #0
c0de809a:	6421      	str	r1, [r4, #64]	@ 0x40
c0de809c:	bd10      	pop	{r4, pc}
c0de809e:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de80a2:	4770      	bx	lr

c0de80a4 <getContextFromLayout>:
c0de80a4:	4a08      	ldr	r2, [pc, #32]	@ (c0de80c8 <getContextFromLayout+0x24>)
c0de80a6:	2100      	movs	r1, #0
c0de80a8:	29d8      	cmp	r1, #216	@ 0xd8
c0de80aa:	bf04      	itt	eq
c0de80ac:	2000      	moveq	r0, #0
c0de80ae:	4770      	bxeq	lr
c0de80b0:	eb09 0302 	add.w	r3, r9, r2
c0de80b4:	440b      	add	r3, r1
c0de80b6:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de80b8:	4283      	cmp	r3, r0
c0de80ba:	d001      	beq.n	c0de80c0 <getContextFromLayout+0x1c>
c0de80bc:	3148      	adds	r1, #72	@ 0x48
c0de80be:	e7f3      	b.n	c0de80a8 <getContextFromLayout+0x4>
c0de80c0:	eb09 0002 	add.w	r0, r9, r2
c0de80c4:	4408      	add	r0, r1
c0de80c6:	4770      	bx	lr
c0de80c8:	00002704 	.word	0x00002704

c0de80cc <menuListActionCallback>:
c0de80cc:	b510      	push	{r4, lr}
c0de80ce:	460c      	mov	r4, r1
c0de80d0:	f7ff ffe8 	bl	c0de80a4 <getContextFromLayout>
c0de80d4:	b1c8      	cbz	r0, c0de810a <menuListActionCallback+0x3e>
c0de80d6:	2c04      	cmp	r4, #4
c0de80d8:	d006      	beq.n	c0de80e8 <menuListActionCallback+0x1c>
c0de80da:	2c01      	cmp	r4, #1
c0de80dc:	d00a      	beq.n	c0de80f4 <menuListActionCallback+0x28>
c0de80de:	b9a4      	cbnz	r4, c0de810a <menuListActionCallback+0x3e>
c0de80e0:	7a41      	ldrb	r1, [r0, #9]
c0de80e2:	b191      	cbz	r1, c0de810a <menuListActionCallback+0x3e>
c0de80e4:	3901      	subs	r1, #1
c0de80e6:	e00b      	b.n	c0de8100 <menuListActionCallback+0x34>
c0de80e8:	7a41      	ldrb	r1, [r0, #9]
c0de80ea:	6802      	ldr	r2, [r0, #0]
c0de80ec:	4608      	mov	r0, r1
c0de80ee:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de80f2:	4710      	bx	r2
c0de80f4:	7a02      	ldrb	r2, [r0, #8]
c0de80f6:	7a41      	ldrb	r1, [r0, #9]
c0de80f8:	3a01      	subs	r2, #1
c0de80fa:	428a      	cmp	r2, r1
c0de80fc:	dd05      	ble.n	c0de810a <menuListActionCallback+0x3e>
c0de80fe:	3101      	adds	r1, #1
c0de8100:	7241      	strb	r1, [r0, #9]
c0de8102:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de8106:	f7ff bf47 	b.w	c0de7f98 <displayMenuList>
c0de810a:	bd10      	pop	{r4, pc}

c0de810c <OUTLINED_FUNCTION_0>:
c0de810c:	7838      	ldrb	r0, [r7, #0]
c0de810e:	7879      	ldrb	r1, [r7, #1]
c0de8110:	78ba      	ldrb	r2, [r7, #2]
c0de8112:	78fb      	ldrb	r3, [r7, #3]
c0de8114:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de8118:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de811c:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de8120:	6360      	str	r0, [r4, #52]	@ 0x34
c0de8122:	4638      	mov	r0, r7
c0de8124:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de8128:	7a79      	ldrb	r1, [r7, #9]
c0de812a:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de812e:	7882      	ldrb	r2, [r0, #2]
c0de8130:	78c3      	ldrb	r3, [r0, #3]
c0de8132:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de8136:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de813a:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de813c:	4639      	mov	r1, r7
c0de813e:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de8142:	797a      	ldrb	r2, [r7, #5]
c0de8144:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de8148:	788b      	ldrb	r3, [r1, #2]
c0de814a:	78cd      	ldrb	r5, [r1, #3]
c0de814c:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de8150:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de8154:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de8156:	783a      	ldrb	r2, [r7, #0]
c0de8158:	787b      	ldrb	r3, [r7, #1]
c0de815a:	78bd      	ldrb	r5, [r7, #2]
c0de815c:	78fe      	ldrb	r6, [r7, #3]
c0de815e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de8162:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de8166:	7803      	ldrb	r3, [r0, #0]
c0de8168:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de816c:	7885      	ldrb	r5, [r0, #2]
c0de816e:	78c0      	ldrb	r0, [r0, #3]
c0de8170:	9204      	str	r2, [sp, #16]
c0de8172:	7a7a      	ldrb	r2, [r7, #9]
c0de8174:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de8178:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de817c:	788b      	ldrb	r3, [r1, #2]
c0de817e:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de8182:	780a      	ldrb	r2, [r1, #0]
c0de8184:	78c9      	ldrb	r1, [r1, #3]
c0de8186:	9006      	str	r0, [sp, #24]
c0de8188:	7978      	ldrb	r0, [r7, #5]
c0de818a:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de818e:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de8192:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de8196:	9005      	str	r0, [sp, #20]
c0de8198:	4770      	bx	lr

c0de819a <OUTLINED_FUNCTION_1>:
c0de819a:	7838      	ldrb	r0, [r7, #0]
c0de819c:	7879      	ldrb	r1, [r7, #1]
c0de819e:	78ba      	ldrb	r2, [r7, #2]
c0de81a0:	78fb      	ldrb	r3, [r7, #3]
c0de81a2:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de81a6:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de81aa:	4639      	mov	r1, r7
c0de81ac:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de81b0:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de81b4:	6360      	str	r0, [r4, #52]	@ 0x34
c0de81b6:	7a78      	ldrb	r0, [r7, #9]
c0de81b8:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de81bc:	788a      	ldrb	r2, [r1, #2]
c0de81be:	78c9      	ldrb	r1, [r1, #3]
c0de81c0:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de81c4:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de81c8:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de81ca:	7978      	ldrb	r0, [r7, #5]
c0de81cc:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de81d0:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de81d4:	78b9      	ldrb	r1, [r7, #2]
c0de81d6:	78fa      	ldrb	r2, [r7, #3]
c0de81d8:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de81dc:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de81e0:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de81e2:	4770      	bx	lr

c0de81e4 <OUTLINED_FUNCTION_2>:
c0de81e4:	f88d 1008 	strb.w	r1, [sp, #8]
c0de81e8:	9003      	str	r0, [sp, #12]
c0de81ea:	2000      	movs	r0, #0
c0de81ec:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de81f0:	2001      	movs	r0, #1
c0de81f2:	f7ff bd19 	b.w	c0de7c28 <getFreeContext>

c0de81f6 <OUTLINED_FUNCTION_3>:
c0de81f6:	2114      	movs	r1, #20
c0de81f8:	4698      	mov	r8, r3
c0de81fa:	4617      	mov	r7, r2
c0de81fc:	f004 b9ca 	b.w	c0dec594 <__aeabi_memclr>

c0de8200 <OUTLINED_FUNCTION_4>:
c0de8200:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de8202:	f7fe b93d 	b.w	c0de6480 <nbgl_layoutDraw>

c0de8206 <OUTLINED_FUNCTION_5>:
c0de8206:	2501      	movs	r5, #1
c0de8208:	f00a 0003 	and.w	r0, sl, #3
c0de820c:	2803      	cmp	r0, #3
c0de820e:	7025      	strb	r5, [r4, #0]
c0de8210:	7420      	strb	r0, [r4, #16]
c0de8212:	4770      	bx	lr

c0de8214 <nbgl_useCaseHomeAndSettings>:
c0de8214:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de8218:	4607      	mov	r7, r0
c0de821a:	4810      	ldr	r0, [pc, #64]	@ (c0de825c <nbgl_useCaseHomeAndSettings+0x48>)
c0de821c:	f001 fbb4 	bl	c0de9988 <OUTLINED_FUNCTION_0>
c0de8220:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de8224:	6425      	str	r5, [r4, #64]	@ 0x40
c0de8226:	9d06      	ldr	r5, [sp, #24]
c0de8228:	4628      	mov	r0, r5
c0de822a:	f003 fde3 	bl	c0debdf4 <pic>
c0de822e:	6460      	str	r0, [r4, #68]	@ 0x44
c0de8230:	9807      	ldr	r0, [sp, #28]
c0de8232:	f003 fddf 	bl	c0debdf4 <pic>
c0de8236:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de8238:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de823c:	6521      	str	r1, [r4, #80]	@ 0x50
c0de823e:	9908      	ldr	r1, [sp, #32]
c0de8240:	e9c4 0112 	strd	r0, r1, [r4, #72]	@ 0x48
c0de8244:	bf18      	it	ne
c0de8246:	2d00      	cmpne	r5, #0
c0de8248:	d103      	bne.n	c0de8252 <nbgl_useCaseHomeAndSettings+0x3e>
c0de824a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de824e:	f000 b843 	b.w	c0de82d8 <startUseCaseHome>
c0de8252:	4640      	mov	r0, r8
c0de8254:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de8258:	f000 b802 	b.w	c0de8260 <startUseCaseSettingsAtPage>
c0de825c:	000027dc 	.word	0x000027dc

c0de8260 <startUseCaseSettingsAtPage>:
c0de8260:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de8262:	b08d      	sub	sp, #52	@ 0x34
c0de8264:	4604      	mov	r4, r0
c0de8266:	4668      	mov	r0, sp
c0de8268:	2134      	movs	r1, #52	@ 0x34
c0de826a:	f004 f993 	bl	c0dec594 <__aeabi_memclr>
c0de826e:	4e19      	ldr	r6, [pc, #100]	@ (c0de82d4 <startUseCaseSettingsAtPage+0x74>)
c0de8270:	466d      	mov	r5, sp
c0de8272:	eb09 0006 	add.w	r0, r9, r6
c0de8276:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de827a:	280f      	cmp	r0, #15
c0de827c:	bf1e      	ittt	ne
c0de827e:	eb09 0006 	addne.w	r0, r9, r6
c0de8282:	210e      	movne	r1, #14
c0de8284:	f880 1028 	strbne.w	r1, [r0, #40]	@ 0x28
c0de8288:	2700      	movs	r7, #0
c0de828a:	eb09 0006 	add.w	r0, r9, r6
c0de828e:	2101      	movs	r1, #1
c0de8290:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de8294:	eb09 0006 	add.w	r0, r9, r6
c0de8298:	6c40      	ldr	r0, [r0, #68]	@ 0x44
c0de829a:	7a01      	ldrb	r1, [r0, #8]
c0de829c:	428f      	cmp	r7, r1
c0de829e:	d20e      	bcs.n	c0de82be <startUseCaseSettingsAtPage+0x5e>
c0de82a0:	b279      	sxtb	r1, r7
c0de82a2:	462a      	mov	r2, r5
c0de82a4:	f000 fc3e 	bl	c0de8b24 <getContentAtIdx>
c0de82a8:	f000 fc96 	bl	c0de8bd8 <getContentNbElement>
c0de82ac:	eb09 0106 	add.w	r1, r9, r6
c0de82b0:	3701      	adds	r7, #1
c0de82b2:	f891 2030 	ldrb.w	r2, [r1, #48]	@ 0x30
c0de82b6:	4410      	add	r0, r2
c0de82b8:	f881 0030 	strb.w	r0, [r1, #48]	@ 0x30
c0de82bc:	e7ea      	b.n	c0de8294 <startUseCaseSettingsAtPage+0x34>
c0de82be:	eb09 0006 	add.w	r0, r9, r6
c0de82c2:	2100      	movs	r1, #0
c0de82c4:	f880 4031 	strb.w	r4, [r0, #49]	@ 0x31
c0de82c8:	2000      	movs	r0, #0
c0de82ca:	f000 fe8f 	bl	c0de8fec <displaySettingsPage>
c0de82ce:	b00d      	add	sp, #52	@ 0x34
c0de82d0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de82d2:	bf00      	nop
c0de82d4:	000027dc 	.word	0x000027dc

c0de82d8 <startUseCaseHome>:
c0de82d8:	b510      	push	{r4, lr}
c0de82da:	4821      	ldr	r0, [pc, #132]	@ (c0de8360 <startUseCaseHome+0x88>)
c0de82dc:	eb09 0100 	add.w	r1, r9, r0
c0de82e0:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de82e4:	290d      	cmp	r1, #13
c0de82e6:	d009      	beq.n	c0de82fc <startUseCaseHome+0x24>
c0de82e8:	290e      	cmp	r1, #14
c0de82ea:	d114      	bne.n	c0de8316 <startUseCaseHome+0x3e>
c0de82ec:	eb09 0100 	add.w	r1, r9, r0
c0de82f0:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de82f2:	2102      	movs	r1, #2
c0de82f4:	2a00      	cmp	r2, #0
c0de82f6:	bf08      	it	eq
c0de82f8:	2101      	moveq	r1, #1
c0de82fa:	e00d      	b.n	c0de8318 <startUseCaseHome+0x40>
c0de82fc:	eb09 0200 	add.w	r2, r9, r0
c0de8300:	2102      	movs	r1, #2
c0de8302:	6cd4      	ldr	r4, [r2, #76]	@ 0x4c
c0de8304:	6c53      	ldr	r3, [r2, #68]	@ 0x44
c0de8306:	2c00      	cmp	r4, #0
c0de8308:	bf08      	it	eq
c0de830a:	2101      	moveq	r1, #1
c0de830c:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de8310:	b133      	cbz	r3, c0de8320 <startUseCaseHome+0x48>
c0de8312:	3101      	adds	r1, #1
c0de8314:	e000      	b.n	c0de8318 <startUseCaseHome+0x40>
c0de8316:	2100      	movs	r1, #0
c0de8318:	eb09 0200 	add.w	r2, r9, r0
c0de831c:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de8320:	eb09 0200 	add.w	r2, r9, r0
c0de8324:	210c      	movs	r1, #12
c0de8326:	e9d2 3411 	ldrd	r3, r4, [r2, #68]	@ 0x44
c0de832a:	f882 1028 	strb.w	r1, [r2, #40]	@ 0x28
c0de832e:	2103      	movs	r1, #3
c0de8330:	2b00      	cmp	r3, #0
c0de8332:	bf08      	it	eq
c0de8334:	2102      	moveq	r1, #2
c0de8336:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de833a:	b124      	cbz	r4, c0de8346 <startUseCaseHome+0x6e>
c0de833c:	3101      	adds	r1, #1
c0de833e:	eb09 0200 	add.w	r2, r9, r0
c0de8342:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de8346:	eb09 0200 	add.w	r2, r9, r0
c0de834a:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de834c:	b11a      	cbz	r2, c0de8356 <startUseCaseHome+0x7e>
c0de834e:	4448      	add	r0, r9
c0de8350:	3101      	adds	r1, #1
c0de8352:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de8356:	2000      	movs	r0, #0
c0de8358:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de835c:	f000 bf34 	b.w	c0de91c8 <displayHomePage>
c0de8360:	000027dc 	.word	0x000027dc

c0de8364 <nbgl_useCaseReview>:
c0de8364:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de8366:	4614      	mov	r4, r2
c0de8368:	460a      	mov	r2, r1
c0de836a:	4601      	mov	r1, r0
c0de836c:	9808      	ldr	r0, [sp, #32]
c0de836e:	9003      	str	r0, [sp, #12]
c0de8370:	9807      	ldr	r0, [sp, #28]
c0de8372:	9002      	str	r0, [sp, #8]
c0de8374:	9806      	ldr	r0, [sp, #24]
c0de8376:	e9cd 3000 	strd	r3, r0, [sp]
c0de837a:	2002      	movs	r0, #2
c0de837c:	4623      	mov	r3, r4
c0de837e:	f000 f801 	bl	c0de8384 <useCaseReview>
c0de8382:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de8384 <useCaseReview>:
c0de8384:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de8388:	4607      	mov	r7, r0
c0de838a:	4811      	ldr	r0, [pc, #68]	@ (c0de83d0 <useCaseReview+0x4c>)
c0de838c:	4688      	mov	r8, r1
c0de838e:	2140      	movs	r1, #64	@ 0x40
c0de8390:	461d      	mov	r5, r3
c0de8392:	4614      	mov	r4, r2
c0de8394:	f001 fb11 	bl	c0de99ba <OUTLINED_FUNCTION_5>
c0de8398:	9808      	ldr	r0, [sp, #32]
c0de839a:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de839c:	9807      	ldr	r0, [sp, #28]
c0de839e:	64b0      	str	r0, [r6, #72]	@ 0x48
c0de83a0:	9906      	ldr	r1, [sp, #24]
c0de83a2:	e9c6 450f 	strd	r4, r5, [r6, #60]	@ 0x3c
c0de83a6:	6471      	str	r1, [r6, #68]	@ 0x44
c0de83a8:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de83aa:	f8c6 802c 	str.w	r8, [r6, #44]	@ 0x2c
c0de83ae:	f886 7028 	strb.w	r7, [r6, #40]	@ 0x28
c0de83b2:	63b1      	str	r1, [r6, #56]	@ 0x38
c0de83b4:	2104      	movs	r1, #4
c0de83b6:	2800      	cmp	r0, #0
c0de83b8:	bf08      	it	eq
c0de83ba:	2103      	moveq	r1, #3
c0de83bc:	7a20      	ldrb	r0, [r4, #8]
c0de83be:	4408      	add	r0, r1
c0de83c0:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de83c4:	2000      	movs	r0, #0
c0de83c6:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de83ca:	f000 b8a7 	b.w	c0de851c <displayReviewPage>
c0de83ce:	bf00      	nop
c0de83d0:	000027dc 	.word	0x000027dc

c0de83d4 <nbgl_useCaseAdvancedReview>:
c0de83d4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de83d8:	b088      	sub	sp, #32
c0de83da:	468c      	mov	ip, r1
c0de83dc:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de83e0:	e9dd 8b10 	ldrd	r8, fp, [sp, #64]	@ 0x40
c0de83e4:	4616      	mov	r6, r2
c0de83e6:	4604      	mov	r4, r0
c0de83e8:	f1ba 0f00 	cmp.w	sl, #0
c0de83ec:	d034      	beq.n	c0de8458 <nbgl_useCaseAdvancedReview+0x84>
c0de83ee:	f8da 7000 	ldr.w	r7, [sl]
c0de83f2:	b92f      	cbnz	r7, c0de8400 <nbgl_useCaseAdvancedReview+0x2c>
c0de83f4:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de83f8:	b910      	cbnz	r0, c0de8400 <nbgl_useCaseAdvancedReview+0x2c>
c0de83fa:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de83fe:	b358      	cbz	r0, c0de8458 <nbgl_useCaseAdvancedReview+0x84>
c0de8400:	481f      	ldr	r0, [pc, #124]	@ (c0de8480 <nbgl_useCaseAdvancedReview+0xac>)
c0de8402:	e9cd 4106 	strd	r4, r1, [sp, #24]
c0de8406:	2128      	movs	r1, #40	@ 0x28
c0de8408:	9705      	str	r7, [sp, #20]
c0de840a:	461f      	mov	r7, r3
c0de840c:	4665      	mov	r5, ip
c0de840e:	eb09 0400 	add.w	r4, r9, r0
c0de8412:	4620      	mov	r0, r4
c0de8414:	f004 f8be 	bl	c0dec594 <__aeabi_memclr>
c0de8418:	4919      	ldr	r1, [pc, #100]	@ (c0de8480 <nbgl_useCaseAdvancedReview+0xac>)
c0de841a:	2002      	movs	r0, #2
c0de841c:	46c4      	mov	ip, r8
c0de841e:	462a      	mov	r2, r5
c0de8420:	f809 0001 	strb.w	r0, [r9, r1]
c0de8424:	9905      	ldr	r1, [sp, #20]
c0de8426:	2040      	movs	r0, #64	@ 0x40
c0de8428:	2908      	cmp	r1, #8
c0de842a:	bf08      	it	eq
c0de842c:	2080      	moveq	r0, #128	@ 0x80
c0de842e:	9906      	ldr	r1, [sp, #24]
c0de8430:	f8c4 a01c 	str.w	sl, [r4, #28]
c0de8434:	4301      	orrs	r1, r0
c0de8436:	1d20      	adds	r0, r4, #4
c0de8438:	e880 09e2 	stmia.w	r0, {r1, r5, r6, r7, r8, fp}
c0de843c:	9807      	ldr	r0, [sp, #28]
c0de843e:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de8442:	6220      	str	r0, [r4, #32]
c0de8444:	f89a 0000 	ldrb.w	r0, [sl]
c0de8448:	f010 0f16 	tst.w	r0, #22
c0de844c:	d00b      	beq.n	c0de8466 <nbgl_useCaseAdvancedReview+0x92>
c0de844e:	b008      	add	sp, #32
c0de8450:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8454:	f000 b816 	b.w	c0de8484 <displayInitialWarning>
c0de8458:	9103      	str	r1, [sp, #12]
c0de845a:	e88d 0908 	stmia.w	sp, {r3, r8, fp}
c0de845e:	2002      	movs	r0, #2
c0de8460:	4621      	mov	r1, r4
c0de8462:	4662      	mov	r2, ip
c0de8464:	e005      	b.n	c0de8472 <nbgl_useCaseAdvancedReview+0x9e>
c0de8466:	2002      	movs	r0, #2
c0de8468:	463d      	mov	r5, r7
c0de846a:	e9cd 7c00 	strd	r7, ip, [sp]
c0de846e:	e9cd b802 	strd	fp, r8, [sp, #8]
c0de8472:	4633      	mov	r3, r6
c0de8474:	f7ff ff86 	bl	c0de8384 <useCaseReview>
c0de8478:	b008      	add	sp, #32
c0de847a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de847e:	bf00      	nop
c0de8480:	000027dc 	.word	0x000027dc

c0de8484 <displayInitialWarning>:
c0de8484:	4803      	ldr	r0, [pc, #12]	@ (c0de8494 <displayInitialWarning+0x10>)
c0de8486:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de848a:	4448      	add	r0, r9
c0de848c:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de848e:	f000 bf87 	b.w	c0de93a0 <displayWarningStep>
c0de8492:	bf00      	nop
c0de8494:	000027dc 	.word	0x000027dc

c0de8498 <nbgl_useCaseReviewBlindSigning>:
c0de8498:	b5b0      	push	{r4, r5, r7, lr}
c0de849a:	b086      	sub	sp, #24
c0de849c:	4d06      	ldr	r5, [pc, #24]	@ (c0de84b8 <nbgl_useCaseReviewBlindSigning+0x20>)
c0de849e:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de84a0:	447d      	add	r5, pc
c0de84a2:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de84a6:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de84a8:	9401      	str	r4, [sp, #4]
c0de84aa:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de84ac:	9400      	str	r4, [sp, #0]
c0de84ae:	f7ff ff91 	bl	c0de83d4 <nbgl_useCaseAdvancedReview>
c0de84b2:	b006      	add	sp, #24
c0de84b4:	bdb0      	pop	{r4, r5, r7, pc}
c0de84b6:	bf00      	nop
c0de84b8:	00005da4 	.word	0x00005da4

c0de84bc <nbgl_useCaseAddressReview>:
c0de84bc:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de84c0:	f8df 8054 	ldr.w	r8, [pc, #84]	@ c0de8518 <nbgl_useCaseAddressReview+0x5c>
c0de84c4:	460c      	mov	r4, r1
c0de84c6:	4607      	mov	r7, r0
c0de84c8:	2140      	movs	r1, #64	@ 0x40
c0de84ca:	469a      	mov	sl, r3
c0de84cc:	4616      	mov	r6, r2
c0de84ce:	eb09 0508 	add.w	r5, r9, r8
c0de84d2:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de84d6:	f004 f85d 	bl	c0dec594 <__aeabi_memclr>
c0de84da:	2004      	movs	r0, #4
c0de84dc:	652f      	str	r7, [r5, #80]	@ 0x50
c0de84de:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de84e2:	9908      	ldr	r1, [sp, #32]
c0de84e4:	e9c5 6a10 	strd	r6, sl, [r5, #64]	@ 0x40
c0de84e8:	64a9      	str	r1, [r5, #72]	@ 0x48
c0de84ea:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de84ec:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de84f0:	63a9      	str	r1, [r5, #56]	@ 0x38
c0de84f2:	b15c      	cbz	r4, c0de850c <nbgl_useCaseAddressReview+0x50>
c0de84f4:	4620      	mov	r0, r4
c0de84f6:	eb09 0508 	add.w	r5, r9, r8
c0de84fa:	f003 fc7b 	bl	c0debdf4 <pic>
c0de84fe:	63e8      	str	r0, [r5, #60]	@ 0x3c
c0de8500:	f895 0030 	ldrb.w	r0, [r5, #48]	@ 0x30
c0de8504:	7a21      	ldrb	r1, [r4, #8]
c0de8506:	4408      	add	r0, r1
c0de8508:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de850c:	2000      	movs	r0, #0
c0de850e:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de8512:	f000 b803 	b.w	c0de851c <displayReviewPage>
c0de8516:	bf00      	nop
c0de8518:	000027dc 	.word	0x000027dc

c0de851c <displayReviewPage>:
c0de851c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de8520:	b088      	sub	sp, #32
c0de8522:	4e40      	ldr	r6, [pc, #256]	@ (c0de8624 <displayReviewPage+0x108>)
c0de8524:	4680      	mov	r8, r0
c0de8526:	2100      	movs	r1, #0
c0de8528:	2501      	movs	r5, #1
c0de852a:	e9cd 1106 	strd	r1, r1, [sp, #24]
c0de852e:	e9cd 1104 	strd	r1, r1, [sp, #16]
c0de8532:	eb09 0006 	add.w	r0, r9, r6
c0de8536:	6c83      	ldr	r3, [r0, #72]	@ 0x48
c0de8538:	6341      	str	r1, [r0, #52]	@ 0x34
c0de853a:	2102      	movs	r1, #2
c0de853c:	2b00      	cmp	r3, #0
c0de853e:	bf08      	it	eq
c0de8540:	25ff      	moveq	r5, #255	@ 0xff
c0de8542:	bf08      	it	eq
c0de8544:	2101      	moveq	r1, #1
c0de8546:	f890 7030 	ldrb.w	r7, [r0, #48]	@ 0x30
c0de854a:	f890 2031 	ldrb.w	r2, [r0, #49]	@ 0x31
c0de854e:	1ebc      	subs	r4, r7, #2
c0de8550:	b250      	sxtb	r0, r2
c0de8552:	b2e4      	uxtb	r4, r4
c0de8554:	42a0      	cmp	r0, r4
c0de8556:	da07      	bge.n	c0de8568 <displayReviewPage+0x4c>
c0de8558:	4281      	cmp	r1, r0
c0de855a:	dd0c      	ble.n	c0de8576 <displayReviewPage+0x5a>
c0de855c:	2a00      	cmp	r2, #0
c0de855e:	d041      	beq.n	c0de85e4 <displayReviewPage+0xc8>
c0de8560:	4285      	cmp	r5, r0
c0de8562:	bf08      	it	eq
c0de8564:	9307      	streq	r3, [sp, #28]
c0de8566:	e043      	b.n	c0de85f0 <displayReviewPage+0xd4>
c0de8568:	d110      	bne.n	c0de858c <displayReviewPage+0x70>
c0de856a:	a905      	add	r1, sp, #20
c0de856c:	aa07      	add	r2, sp, #28
c0de856e:	2001      	movs	r0, #1
c0de8570:	f000 ff56 	bl	c0de9420 <getLastPageInfo>
c0de8574:	e03c      	b.n	c0de85f0 <displayReviewPage+0xd4>
c0de8576:	eb09 0306 	add.w	r3, r9, r6
c0de857a:	6d1d      	ldr	r5, [r3, #80]	@ 0x50
c0de857c:	b18d      	cbz	r5, c0de85a2 <displayReviewPage+0x86>
c0de857e:	4281      	cmp	r1, r0
c0de8580:	d10f      	bne.n	c0de85a2 <displayReviewPage+0x86>
c0de8582:	9506      	str	r5, [sp, #24]
c0de8584:	4828      	ldr	r0, [pc, #160]	@ (c0de8628 <displayReviewPage+0x10c>)
c0de8586:	4478      	add	r0, pc
c0de8588:	9007      	str	r0, [sp, #28]
c0de858a:	e032      	b.n	c0de85f2 <displayReviewPage+0xd6>
c0de858c:	1e79      	subs	r1, r7, #1
c0de858e:	b2c9      	uxtb	r1, r1
c0de8590:	4288      	cmp	r0, r1
c0de8592:	d12d      	bne.n	c0de85f0 <displayReviewPage+0xd4>
c0de8594:	a905      	add	r1, sp, #20
c0de8596:	aa07      	add	r2, sp, #28
c0de8598:	2000      	movs	r0, #0
c0de859a:	2500      	movs	r5, #0
c0de859c:	f000 ff40 	bl	c0de9420 <getLastPageInfo>
c0de85a0:	e027      	b.n	c0de85f2 <displayReviewPage+0xd6>
c0de85a2:	2000      	movs	r0, #0
c0de85a4:	f10d 030f 	add.w	r3, sp, #15
c0de85a8:	f88d 000f 	strb.w	r0, [sp, #15]
c0de85ac:	eb09 0006 	add.w	r0, r9, r6
c0de85b0:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de85b2:	ac05      	add	r4, sp, #20
c0de85b4:	af04      	add	r7, sp, #16
c0de85b6:	9302      	str	r3, [sp, #8]
c0de85b8:	e9cd 7400 	strd	r7, r4, [sp]
c0de85bc:	1a57      	subs	r7, r2, r1
c0de85be:	2d00      	cmp	r5, #0
c0de85c0:	bf18      	it	ne
c0de85c2:	3f01      	subne	r7, #1
c0de85c4:	aa07      	add	r2, sp, #28
c0de85c6:	b2f9      	uxtb	r1, r7
c0de85c8:	ab06      	add	r3, sp, #24
c0de85ca:	f000 fc93 	bl	c0de8ef4 <getPairData>
c0de85ce:	9804      	ldr	r0, [sp, #16]
c0de85d0:	b310      	cbz	r0, c0de8618 <displayReviewPage+0xfc>
c0de85d2:	eb09 0006 	add.w	r0, r9, r6
c0de85d6:	f880 705b 	strb.w	r7, [r0, #91]	@ 0x5b
c0de85da:	4914      	ldr	r1, [pc, #80]	@ (c0de862c <displayReviewPage+0x110>)
c0de85dc:	4479      	add	r1, pc
c0de85de:	6341      	str	r1, [r0, #52]	@ 0x34
c0de85e0:	2001      	movs	r0, #1
c0de85e2:	e01c      	b.n	c0de861e <displayReviewPage+0x102>
c0de85e4:	eb09 0006 	add.w	r0, r9, r6
c0de85e8:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de85ec:	9105      	str	r1, [sp, #20]
c0de85ee:	9007      	str	r0, [sp, #28]
c0de85f0:	2500      	movs	r5, #0
c0de85f2:	2000      	movs	r0, #0
c0de85f4:	9a07      	ldr	r2, [sp, #28]
c0de85f6:	9905      	ldr	r1, [sp, #20]
c0de85f8:	4c0d      	ldr	r4, [pc, #52]	@ (c0de8630 <displayReviewPage+0x114>)
c0de85fa:	b2c0      	uxtb	r0, r0
c0de85fc:	2300      	movs	r3, #0
c0de85fe:	9002      	str	r0, [sp, #8]
c0de8600:	4640      	mov	r0, r8
c0de8602:	447c      	add	r4, pc
c0de8604:	e9cd 4300 	strd	r4, r3, [sp]
c0de8608:	462b      	mov	r3, r5
c0de860a:	f000 f833 	bl	c0de8674 <drawStep>
c0de860e:	b008      	add	sp, #32
c0de8610:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de8614:	f7fe b876 	b.w	c0de6704 <nbgl_refresh>
c0de8618:	f89d 000f 	ldrb.w	r0, [sp, #15]
c0de861c:	0040      	lsls	r0, r0, #1
c0de861e:	9d06      	ldr	r5, [sp, #24]
c0de8620:	e7e8      	b.n	c0de85f4 <displayReviewPage+0xd8>
c0de8622:	bf00      	nop
c0de8624:	000027dc 	.word	0x000027dc
c0de8628:	00004533 	.word	0x00004533
c0de862c:	0000102d 	.word	0x0000102d
c0de8630:	0000106f 	.word	0x0000106f

c0de8634 <nbgl_useCaseStatus>:
c0de8634:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de8636:	4605      	mov	r5, r0
c0de8638:	480c      	ldr	r0, [pc, #48]	@ (c0de866c <nbgl_useCaseStatus+0x38>)
c0de863a:	2140      	movs	r1, #64	@ 0x40
c0de863c:	4614      	mov	r4, r2
c0de863e:	f001 f9bc 	bl	c0de99ba <OUTLINED_FUNCTION_5>
c0de8642:	2009      	movs	r0, #9
c0de8644:	6374      	str	r4, [r6, #52]	@ 0x34
c0de8646:	462a      	mov	r2, r5
c0de8648:	2300      	movs	r3, #0
c0de864a:	f886 0028 	strb.w	r0, [r6, #40]	@ 0x28
c0de864e:	2001      	movs	r0, #1
c0de8650:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de8654:	2000      	movs	r0, #0
c0de8656:	4906      	ldr	r1, [pc, #24]	@ (c0de8670 <nbgl_useCaseStatus+0x3c>)
c0de8658:	9002      	str	r0, [sp, #8]
c0de865a:	4479      	add	r1, pc
c0de865c:	e9cd 1000 	strd	r1, r0, [sp]
c0de8660:	2040      	movs	r0, #64	@ 0x40
c0de8662:	2100      	movs	r1, #0
c0de8664:	f000 f806 	bl	c0de8674 <drawStep>
c0de8668:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de866a:	bf00      	nop
c0de866c:	000027dc 	.word	0x000027dc
c0de8670:	0000019f 	.word	0x0000019f

c0de8674 <drawStep>:
c0de8674:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8678:	b09a      	sub	sp, #104	@ 0x68
c0de867a:	4688      	mov	r8, r1
c0de867c:	4604      	mov	r4, r0
c0de867e:	a80d      	add	r0, sp, #52	@ 0x34
c0de8680:	2134      	movs	r1, #52	@ 0x34
c0de8682:	461d      	mov	r5, r3
c0de8684:	4616      	mov	r6, r2
c0de8686:	f003 ff85 	bl	c0dec594 <__aeabi_memclr>
c0de868a:	2700      	movs	r7, #0
c0de868c:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de8690:	4856      	ldr	r0, [pc, #344]	@ (c0de87ec <drawStep+0x178>)
c0de8692:	4478      	add	r0, pc
c0de8694:	f003 fbae 	bl	c0debdf4 <pic>
c0de8698:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de87e8 <drawStep+0x174>
c0de869c:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de86a0:	9709      	str	r7, [sp, #36]	@ 0x24
c0de86a2:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de86a6:	eb09 000b 	add.w	r0, r9, fp
c0de86aa:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de86ae:	2802      	cmp	r0, #2
c0de86b0:	d30b      	bcc.n	c0de86ca <drawStep+0x56>
c0de86b2:	eb09 010b 	add.w	r1, r9, fp
c0de86b6:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de86ba:	b129      	cbz	r1, c0de86c8 <drawStep+0x54>
c0de86bc:	3801      	subs	r0, #1
c0de86be:	2703      	movs	r7, #3
c0de86c0:	4288      	cmp	r0, r1
c0de86c2:	bf08      	it	eq
c0de86c4:	2702      	moveq	r7, #2
c0de86c6:	e000      	b.n	c0de86ca <drawStep+0x56>
c0de86c8:	2701      	movs	r7, #1
c0de86ca:	eb09 000b 	add.w	r0, r9, fp
c0de86ce:	ea47 0204 	orr.w	r2, r7, r4
c0de86d2:	f890 1058 	ldrb.w	r1, [r0, #88]	@ 0x58
c0de86d6:	4614      	mov	r4, r2
c0de86d8:	2901      	cmp	r1, #1
c0de86da:	bf88      	it	hi
c0de86dc:	f044 0402 	orrhi.w	r4, r4, #2
c0de86e0:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de86e2:	2900      	cmp	r1, #0
c0de86e4:	bf08      	it	eq
c0de86e6:	4614      	moveq	r4, r2
c0de86e8:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de86ec:	2806      	cmp	r0, #6
c0de86ee:	f040 0108 	orr.w	r1, r0, #8
c0de86f2:	bf18      	it	ne
c0de86f4:	4614      	movne	r4, r2
c0de86f6:	2909      	cmp	r1, #9
c0de86f8:	bf0c      	ite	eq
c0de86fa:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de86fe:	f04f 0a00 	movne.w	sl, #0
c0de8702:	280a      	cmp	r0, #10
c0de8704:	d105      	bne.n	c0de8712 <drawStep+0x9e>
c0de8706:	eb09 000b 	add.w	r0, r9, fp
c0de870a:	6cc0      	ldr	r0, [r0, #76]	@ 0x4c
c0de870c:	b108      	cbz	r0, c0de8712 <drawStep+0x9e>
c0de870e:	f7ff fcbd 	bl	c0de808c <nbgl_stepRelease>
c0de8712:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de8714:	b1b6      	cbz	r6, c0de8744 <drawStep+0xd0>
c0de8716:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de8718:	f1b8 0f00 	cmp.w	r8, #0
c0de871c:	d12c      	bne.n	c0de8778 <drawStep+0x104>
c0de871e:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de8720:	2802      	cmp	r0, #2
c0de8722:	d029      	beq.n	c0de8778 <drawStep+0x104>
c0de8724:	2201      	movs	r2, #1
c0de8726:	4633      	mov	r3, r6
c0de8728:	2801      	cmp	r0, #1
c0de872a:	bf08      	it	eq
c0de872c:	2202      	moveq	r2, #2
c0de872e:	4620      	mov	r0, r4
c0de8730:	2d00      	cmp	r5, #0
c0de8732:	bf08      	it	eq
c0de8734:	462a      	moveq	r2, r5
c0de8736:	e9cd 5200 	strd	r5, r2, [sp]
c0de873a:	9702      	str	r7, [sp, #8]
c0de873c:	4652      	mov	r2, sl
c0de873e:	f7ff fa39 	bl	c0de7bb4 <nbgl_stepDrawText>
c0de8742:	e043      	b.n	c0de87cc <drawStep+0x158>
c0de8744:	eb09 000b 	add.w	r0, r9, fp
c0de8748:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de874c:	a903      	add	r1, sp, #12
c0de874e:	aa0d      	add	r2, sp, #52	@ 0x34
c0de8750:	f000 fb8c 	bl	c0de8e6c <getContentElemAtIdx>
c0de8754:	b330      	cbz	r0, c0de87a4 <drawStep+0x130>
c0de8756:	7801      	ldrb	r1, [r0, #0]
c0de8758:	2400      	movs	r4, #0
c0de875a:	290a      	cmp	r1, #10
c0de875c:	d024      	beq.n	c0de87a8 <drawStep+0x134>
c0de875e:	2909      	cmp	r1, #9
c0de8760:	d135      	bne.n	c0de87ce <drawStep+0x15a>
c0de8762:	f001 f930 	bl	c0de99c6 <OUTLINED_FUNCTION_6>
c0de8766:	4922      	ldr	r1, [pc, #136]	@ (c0de87f0 <drawStep+0x17c>)
c0de8768:	4479      	add	r1, pc
c0de876a:	910a      	str	r1, [sp, #40]	@ 0x28
c0de876c:	7941      	ldrb	r1, [r0, #5]
c0de876e:	7980      	ldrb	r0, [r0, #6]
c0de8770:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de8774:	1c48      	adds	r0, r1, #1
c0de8776:	e020      	b.n	c0de87ba <drawStep+0x146>
c0de8778:	2000      	movs	r0, #0
c0de877a:	9603      	str	r6, [sp, #12]
c0de877c:	f8cd 8014 	str.w	r8, [sp, #20]
c0de8780:	9504      	str	r5, [sp, #16]
c0de8782:	4652      	mov	r2, sl
c0de8784:	f88d 0018 	strb.w	r0, [sp, #24]
c0de8788:	eb09 000b 	add.w	r0, r9, fp
c0de878c:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de878e:	4328      	orrs	r0, r5
c0de8790:	bf18      	it	ne
c0de8792:	2001      	movne	r0, #1
c0de8794:	f88d 0019 	strb.w	r0, [sp, #25]
c0de8798:	9700      	str	r7, [sp, #0]
c0de879a:	ab03      	add	r3, sp, #12
c0de879c:	4620      	mov	r0, r4
c0de879e:	f7ff fb4f 	bl	c0de7e40 <nbgl_stepDrawCenteredInfo>
c0de87a2:	e013      	b.n	c0de87cc <drawStep+0x158>
c0de87a4:	2400      	movs	r4, #0
c0de87a6:	e012      	b.n	c0de87ce <drawStep+0x15a>
c0de87a8:	f001 f90d 	bl	c0de99c6 <OUTLINED_FUNCTION_6>
c0de87ac:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de87b0:	4910      	ldr	r1, [pc, #64]	@ (c0de87f4 <drawStep+0x180>)
c0de87b2:	7a00      	ldrb	r0, [r0, #8]
c0de87b4:	4479      	add	r1, pc
c0de87b6:	3001      	adds	r0, #1
c0de87b8:	910a      	str	r1, [sp, #40]	@ 0x28
c0de87ba:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de87be:	4651      	mov	r1, sl
c0de87c0:	463b      	mov	r3, r7
c0de87c2:	480d      	ldr	r0, [pc, #52]	@ (c0de87f8 <drawStep+0x184>)
c0de87c4:	aa0a      	add	r2, sp, #40	@ 0x28
c0de87c6:	4478      	add	r0, pc
c0de87c8:	f7ff fbca 	bl	c0de7f60 <nbgl_stepDrawMenuList>
c0de87cc:	4604      	mov	r4, r0
c0de87ce:	eb09 000b 	add.w	r0, r9, fp
c0de87d2:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de87d6:	280a      	cmp	r0, #10
c0de87d8:	bf04      	itt	eq
c0de87da:	eb09 000b 	addeq.w	r0, r9, fp
c0de87de:	64c4      	streq	r4, [r0, #76]	@ 0x4c
c0de87e0:	b01a      	add	sp, #104	@ 0x68
c0de87e2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de87e6:	bf00      	nop
c0de87e8:	000027dc 	.word	0x000027dc
c0de87ec:	00001133 	.word	0x00001133
c0de87f0:	0000106d 	.word	0x0000106d
c0de87f4:	00001021 	.word	0x00001021
c0de87f8:	00001073 	.word	0x00001073

c0de87fc <statusButtonCallback>:
c0de87fc:	f041 0004 	orr.w	r0, r1, #4
c0de8800:	2804      	cmp	r0, #4
c0de8802:	d001      	beq.n	c0de8808 <statusButtonCallback+0xc>
c0de8804:	2901      	cmp	r1, #1
c0de8806:	d104      	bne.n	c0de8812 <statusButtonCallback+0x16>
c0de8808:	4802      	ldr	r0, [pc, #8]	@ (c0de8814 <statusButtonCallback+0x18>)
c0de880a:	4448      	add	r0, r9
c0de880c:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de880e:	b100      	cbz	r0, c0de8812 <statusButtonCallback+0x16>
c0de8810:	4700      	bx	r0
c0de8812:	4770      	bx	lr
c0de8814:	000027dc 	.word	0x000027dc

c0de8818 <nbgl_useCaseReviewStatus>:
c0de8818:	460a      	mov	r2, r1
c0de881a:	b198      	cbz	r0, c0de8844 <nbgl_useCaseReviewStatus+0x2c>
c0de881c:	2801      	cmp	r0, #1
c0de881e:	d016      	beq.n	c0de884e <nbgl_useCaseReviewStatus+0x36>
c0de8820:	2802      	cmp	r0, #2
c0de8822:	d019      	beq.n	c0de8858 <nbgl_useCaseReviewStatus+0x40>
c0de8824:	2803      	cmp	r0, #3
c0de8826:	d01c      	beq.n	c0de8862 <nbgl_useCaseReviewStatus+0x4a>
c0de8828:	2804      	cmp	r0, #4
c0de882a:	d01f      	beq.n	c0de886c <nbgl_useCaseReviewStatus+0x54>
c0de882c:	2807      	cmp	r0, #7
c0de882e:	d022      	beq.n	c0de8876 <nbgl_useCaseReviewStatus+0x5e>
c0de8830:	2806      	cmp	r0, #6
c0de8832:	d025      	beq.n	c0de8880 <nbgl_useCaseReviewStatus+0x68>
c0de8834:	2805      	cmp	r0, #5
c0de8836:	bf18      	it	ne
c0de8838:	4770      	bxne	lr
c0de883a:	4815      	ldr	r0, [pc, #84]	@ (c0de8890 <nbgl_useCaseReviewStatus+0x78>)
c0de883c:	2100      	movs	r1, #0
c0de883e:	4478      	add	r0, pc
c0de8840:	f7ff bef8 	b.w	c0de8634 <nbgl_useCaseStatus>
c0de8844:	4813      	ldr	r0, [pc, #76]	@ (c0de8894 <nbgl_useCaseReviewStatus+0x7c>)
c0de8846:	2101      	movs	r1, #1
c0de8848:	4478      	add	r0, pc
c0de884a:	f7ff bef3 	b.w	c0de8634 <nbgl_useCaseStatus>
c0de884e:	4812      	ldr	r0, [pc, #72]	@ (c0de8898 <nbgl_useCaseReviewStatus+0x80>)
c0de8850:	2100      	movs	r1, #0
c0de8852:	4478      	add	r0, pc
c0de8854:	f7ff beee 	b.w	c0de8634 <nbgl_useCaseStatus>
c0de8858:	4810      	ldr	r0, [pc, #64]	@ (c0de889c <nbgl_useCaseReviewStatus+0x84>)
c0de885a:	2101      	movs	r1, #1
c0de885c:	4478      	add	r0, pc
c0de885e:	f7ff bee9 	b.w	c0de8634 <nbgl_useCaseStatus>
c0de8862:	480f      	ldr	r0, [pc, #60]	@ (c0de88a0 <nbgl_useCaseReviewStatus+0x88>)
c0de8864:	2100      	movs	r1, #0
c0de8866:	4478      	add	r0, pc
c0de8868:	f7ff bee4 	b.w	c0de8634 <nbgl_useCaseStatus>
c0de886c:	4807      	ldr	r0, [pc, #28]	@ (c0de888c <nbgl_useCaseReviewStatus+0x74>)
c0de886e:	2101      	movs	r1, #1
c0de8870:	4478      	add	r0, pc
c0de8872:	f7ff bedf 	b.w	c0de8634 <nbgl_useCaseStatus>
c0de8876:	480c      	ldr	r0, [pc, #48]	@ (c0de88a8 <nbgl_useCaseReviewStatus+0x90>)
c0de8878:	2100      	movs	r1, #0
c0de887a:	4478      	add	r0, pc
c0de887c:	f7ff beda 	b.w	c0de8634 <nbgl_useCaseStatus>
c0de8880:	4808      	ldr	r0, [pc, #32]	@ (c0de88a4 <nbgl_useCaseReviewStatus+0x8c>)
c0de8882:	2101      	movs	r1, #1
c0de8884:	4478      	add	r0, pc
c0de8886:	f7ff bed5 	b.w	c0de8634 <nbgl_useCaseStatus>
c0de888a:	bf00      	nop
c0de888c:	00003fd9 	.word	0x00003fd9
c0de8890:	0000402d 	.word	0x0000402d
c0de8894:	000040bc 	.word	0x000040bc
c0de8898:	00004292 	.word	0x00004292
c0de889c:	0000411b 	.word	0x0000411b
c0de88a0:	00004228 	.word	0x00004228
c0de88a4:	00004040 	.word	0x00004040
c0de88a8:	00004187 	.word	0x00004187

c0de88ac <displayStreamingReviewPage>:
c0de88ac:	b570      	push	{r4, r5, r6, lr}
c0de88ae:	b08c      	sub	sp, #48	@ 0x30
c0de88b0:	4d5a      	ldr	r5, [pc, #360]	@ (c0de8a1c <displayStreamingReviewPage+0x170>)
c0de88b2:	2100      	movs	r1, #0
c0de88b4:	4604      	mov	r4, r0
c0de88b6:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de88ba:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de88be:	eb09 0005 	add.w	r0, r9, r5
c0de88c2:	6341      	str	r1, [r0, #52]	@ 0x34
c0de88c4:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de88c8:	2806      	cmp	r0, #6
c0de88ca:	d015      	beq.n	c0de88f8 <displayStreamingReviewPage+0x4c>
c0de88cc:	2805      	cmp	r0, #5
c0de88ce:	d13d      	bne.n	c0de894c <displayStreamingReviewPage+0xa0>
c0de88d0:	eb09 0205 	add.w	r2, r9, r5
c0de88d4:	2101      	movs	r1, #1
c0de88d6:	2302      	movs	r3, #2
c0de88d8:	6c90      	ldr	r0, [r2, #72]	@ 0x48
c0de88da:	2800      	cmp	r0, #0
c0de88dc:	bf08      	it	eq
c0de88de:	21ff      	moveq	r1, #255	@ 0xff
c0de88e0:	bf08      	it	eq
c0de88e2:	2301      	moveq	r3, #1
c0de88e4:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de88e8:	4293      	cmp	r3, r2
c0de88ea:	dd3b      	ble.n	c0de8964 <displayStreamingReviewPage+0xb8>
c0de88ec:	b2d3      	uxtb	r3, r2
c0de88ee:	2b00      	cmp	r3, #0
c0de88f0:	d063      	beq.n	c0de89ba <displayStreamingReviewPage+0x10e>
c0de88f2:	4291      	cmp	r1, r2
c0de88f4:	d066      	beq.n	c0de89c4 <displayStreamingReviewPage+0x118>
c0de88f6:	e066      	b.n	c0de89c6 <displayStreamingReviewPage+0x11a>
c0de88f8:	eb09 0005 	add.w	r0, r9, r5
c0de88fc:	f990 1031 	ldrsb.w	r1, [r0, #49]	@ 0x31
c0de8900:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de8902:	7a02      	ldrb	r2, [r0, #8]
c0de8904:	4291      	cmp	r1, r2
c0de8906:	da2d      	bge.n	c0de8964 <displayStreamingReviewPage+0xb8>
c0de8908:	eb09 0205 	add.w	r2, r9, r5
c0de890c:	6d53      	ldr	r3, [r2, #84]	@ 0x54
c0de890e:	b3cb      	cbz	r3, c0de8984 <displayStreamingReviewPage+0xd8>
c0de8910:	f892 2059 	ldrb.w	r2, [r2, #89]	@ 0x59
c0de8914:	bbb2      	cbnz	r2, c0de8984 <displayStreamingReviewPage+0xd8>
c0de8916:	eb09 0205 	add.w	r2, r9, r5
c0de891a:	f892 2058 	ldrb.w	r2, [r2, #88]	@ 0x58
c0de891e:	2a01      	cmp	r2, #1
c0de8920:	d807      	bhi.n	c0de8932 <displayStreamingReviewPage+0x86>
c0de8922:	2900      	cmp	r1, #0
c0de8924:	dc05      	bgt.n	c0de8932 <displayStreamingReviewPage+0x86>
c0de8926:	eb09 0305 	add.w	r3, r9, r5
c0de892a:	f893 305a 	ldrb.w	r3, [r3, #90]	@ 0x5a
c0de892e:	2b08      	cmp	r3, #8
c0de8930:	d128      	bne.n	c0de8984 <displayStreamingReviewPage+0xd8>
c0de8932:	2000      	movs	r0, #0
c0de8934:	9007      	str	r0, [sp, #28]
c0de8936:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de893a:	f004 0008 	and.w	r0, r4, #8
c0de893e:	2a01      	cmp	r2, #1
c0de8940:	d001      	beq.n	c0de8946 <displayStreamingReviewPage+0x9a>
c0de8942:	2901      	cmp	r1, #1
c0de8944:	db50      	blt.n	c0de89e8 <displayStreamingReviewPage+0x13c>
c0de8946:	f040 0003 	orr.w	r0, r0, #3
c0de894a:	e04f      	b.n	c0de89ec <displayStreamingReviewPage+0x140>
c0de894c:	eb09 0005 	add.w	r0, r9, r5
c0de8950:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de8954:	b180      	cbz	r0, c0de8978 <displayStreamingReviewPage+0xcc>
c0de8956:	a909      	add	r1, sp, #36	@ 0x24
c0de8958:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de895a:	2000      	movs	r0, #0
c0de895c:	2500      	movs	r5, #0
c0de895e:	f000 fd5f 	bl	c0de9420 <getLastPageInfo>
c0de8962:	e031      	b.n	c0de89c8 <displayStreamingReviewPage+0x11c>
c0de8964:	eb09 0005 	add.w	r0, r9, r5
c0de8968:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de896a:	2900      	cmp	r1, #0
c0de896c:	d053      	beq.n	c0de8a16 <displayStreamingReviewPage+0x16a>
c0de896e:	2001      	movs	r0, #1
c0de8970:	b00c      	add	sp, #48	@ 0x30
c0de8972:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de8976:	4708      	bx	r1
c0de8978:	a909      	add	r1, sp, #36	@ 0x24
c0de897a:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de897c:	2001      	movs	r0, #1
c0de897e:	f000 fd4f 	bl	c0de9420 <getLastPageInfo>
c0de8982:	e020      	b.n	c0de89c6 <displayStreamingReviewPage+0x11a>
c0de8984:	2300      	movs	r3, #0
c0de8986:	eb09 0205 	add.w	r2, r9, r5
c0de898a:	b2c9      	uxtb	r1, r1
c0de898c:	f882 3059 	strb.w	r3, [r2, #89]	@ 0x59
c0de8990:	f88d 300f 	strb.w	r3, [sp, #15]
c0de8994:	ab09      	add	r3, sp, #36	@ 0x24
c0de8996:	ad08      	add	r5, sp, #32
c0de8998:	f10d 020f 	add.w	r2, sp, #15
c0de899c:	e9cd 5300 	strd	r5, r3, [sp]
c0de89a0:	9202      	str	r2, [sp, #8]
c0de89a2:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de89a4:	ab0a      	add	r3, sp, #40	@ 0x28
c0de89a6:	f000 faa5 	bl	c0de8ef4 <getPairData>
c0de89aa:	9808      	ldr	r0, [sp, #32]
c0de89ac:	2800      	cmp	r0, #0
c0de89ae:	bf12      	itee	ne
c0de89b0:	2501      	movne	r5, #1
c0de89b2:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de89b6:	0045      	lsleq	r5, r0, #1
c0de89b8:	e006      	b.n	c0de89c8 <displayStreamingReviewPage+0x11c>
c0de89ba:	eb09 0005 	add.w	r0, r9, r5
c0de89be:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de89c2:	9109      	str	r1, [sp, #36]	@ 0x24
c0de89c4:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de89c6:	2500      	movs	r5, #0
c0de89c8:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de89ca:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de89ce:	4e17      	ldr	r6, [pc, #92]	@ (c0de8a2c <displayStreamingReviewPage+0x180>)
c0de89d0:	b2e8      	uxtb	r0, r5
c0de89d2:	2500      	movs	r5, #0
c0de89d4:	9002      	str	r0, [sp, #8]
c0de89d6:	4620      	mov	r0, r4
c0de89d8:	447e      	add	r6, pc
c0de89da:	f000 fff7 	bl	c0de99cc <OUTLINED_FUNCTION_7>
c0de89de:	b00c      	add	sp, #48	@ 0x30
c0de89e0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de89e4:	f7fd be8e 	b.w	c0de6704 <nbgl_refresh>
c0de89e8:	f040 0001 	orr.w	r0, r0, #1
c0de89ec:	490c      	ldr	r1, [pc, #48]	@ (c0de8a20 <displayStreamingReviewPage+0x174>)
c0de89ee:	2200      	movs	r2, #0
c0de89f0:	4479      	add	r1, pc
c0de89f2:	9104      	str	r1, [sp, #16]
c0de89f4:	490b      	ldr	r1, [pc, #44]	@ (c0de8a24 <displayStreamingReviewPage+0x178>)
c0de89f6:	4479      	add	r1, pc
c0de89f8:	9106      	str	r1, [sp, #24]
c0de89fa:	2100      	movs	r1, #0
c0de89fc:	9100      	str	r1, [sp, #0]
c0de89fe:	490a      	ldr	r1, [pc, #40]	@ (c0de8a28 <displayStreamingReviewPage+0x17c>)
c0de8a00:	ab04      	add	r3, sp, #16
c0de8a02:	4479      	add	r1, pc
c0de8a04:	f7ff fa1c 	bl	c0de7e40 <nbgl_stepDrawCenteredInfo>
c0de8a08:	eb09 0405 	add.w	r4, r9, r5
c0de8a0c:	f7fd fe7a 	bl	c0de6704 <nbgl_refresh>
c0de8a10:	2001      	movs	r0, #1
c0de8a12:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de8a16:	b00c      	add	sp, #48	@ 0x30
c0de8a18:	bd70      	pop	{r4, r5, r6, pc}
c0de8a1a:	bf00      	nop
c0de8a1c:	000027dc 	.word	0x000027dc
c0de8a20:	00003e8e 	.word	0x00003e8e
c0de8a24:	00003cc0 	.word	0x00003cc0
c0de8a28:	00000ea3 	.word	0x00000ea3
c0de8a2c:	00000f3d 	.word	0x00000f3d

c0de8a30 <nbgl_useCaseChoice>:
c0de8a30:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de8a34:	4607      	mov	r7, r0
c0de8a36:	480b      	ldr	r0, [pc, #44]	@ (c0de8a64 <nbgl_useCaseChoice+0x34>)
c0de8a38:	f000 ffa6 	bl	c0de9988 <OUTLINED_FUNCTION_0>
c0de8a3c:	9807      	ldr	r0, [sp, #28]
c0de8a3e:	64e0      	str	r0, [r4, #76]	@ 0x4c
c0de8a40:	9806      	ldr	r0, [sp, #24]
c0de8a42:	e9c4 5810 	strd	r5, r8, [r4, #64]	@ 0x40
c0de8a46:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de8a4a:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de8a4c:	2008      	movs	r0, #8
c0de8a4e:	f884 0028 	strb.w	r0, [r4, #40]	@ 0x28
c0de8a52:	2004      	movs	r0, #4
c0de8a54:	f884 0030 	strb.w	r0, [r4, #48]	@ 0x30
c0de8a58:	2000      	movs	r0, #0
c0de8a5a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de8a5e:	f000 b803 	b.w	c0de8a68 <displayChoicePage>
c0de8a62:	bf00      	nop
c0de8a64:	000027dc 	.word	0x000027dc

c0de8a68 <displayChoicePage>:
c0de8a68:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de8a6a:	4b28      	ldr	r3, [pc, #160]	@ (c0de8b0c <displayChoicePage+0xa4>)
c0de8a6c:	2200      	movs	r2, #0
c0de8a6e:	eb09 0103 	add.w	r1, r9, r3
c0de8a72:	634a      	str	r2, [r1, #52]	@ 0x34
c0de8a74:	f891 1031 	ldrb.w	r1, [r1, #49]	@ 0x31
c0de8a78:	b179      	cbz	r1, c0de8a9a <displayChoicePage+0x32>
c0de8a7a:	2902      	cmp	r1, #2
c0de8a7c:	d021      	beq.n	c0de8ac2 <displayChoicePage+0x5a>
c0de8a7e:	2901      	cmp	r1, #1
c0de8a80:	d10f      	bne.n	c0de8aa2 <displayChoicePage+0x3a>
c0de8a82:	eb09 0103 	add.w	r1, r9, r3
c0de8a86:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de8a88:	b1a1      	cbz	r1, c0de8ab4 <displayChoicePage+0x4c>
c0de8a8a:	eb09 0203 	add.w	r2, r9, r3
c0de8a8e:	6c12      	ldr	r2, [r2, #64]	@ 0x40
c0de8a90:	b182      	cbz	r2, c0de8ab4 <displayChoicePage+0x4c>
c0de8a92:	eb09 0103 	add.w	r1, r9, r3
c0de8a96:	6bca      	ldr	r2, [r1, #60]	@ 0x3c
c0de8a98:	e029      	b.n	c0de8aee <displayChoicePage+0x86>
c0de8a9a:	eb09 0103 	add.w	r1, r9, r3
c0de8a9e:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de8aa0:	e01d      	b.n	c0de8ade <displayChoicePage+0x76>
c0de8aa2:	4a1d      	ldr	r2, [pc, #116]	@ (c0de8b18 <displayChoicePage+0xb0>)
c0de8aa4:	eb09 0103 	add.w	r1, r9, r3
c0de8aa8:	447a      	add	r2, pc
c0de8aaa:	634a      	str	r2, [r1, #52]	@ 0x34
c0de8aac:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de8aae:	491b      	ldr	r1, [pc, #108]	@ (c0de8b1c <displayChoicePage+0xb4>)
c0de8ab0:	4479      	add	r1, pc
c0de8ab2:	e018      	b.n	c0de8ae6 <displayChoicePage+0x7e>
c0de8ab4:	0702      	lsls	r2, r0, #28
c0de8ab6:	d40d      	bmi.n	c0de8ad4 <displayChoicePage+0x6c>
c0de8ab8:	eb09 0103 	add.w	r1, r9, r3
c0de8abc:	2202      	movs	r2, #2
c0de8abe:	f881 2031 	strb.w	r2, [r1, #49]	@ 0x31
c0de8ac2:	4a13      	ldr	r2, [pc, #76]	@ (c0de8b10 <displayChoicePage+0xa8>)
c0de8ac4:	eb09 0103 	add.w	r1, r9, r3
c0de8ac8:	447a      	add	r2, pc
c0de8aca:	634a      	str	r2, [r1, #52]	@ 0x34
c0de8acc:	6c4a      	ldr	r2, [r1, #68]	@ 0x44
c0de8ace:	4911      	ldr	r1, [pc, #68]	@ (c0de8b14 <displayChoicePage+0xac>)
c0de8ad0:	4479      	add	r1, pc
c0de8ad2:	e008      	b.n	c0de8ae6 <displayChoicePage+0x7e>
c0de8ad4:	eb09 0203 	add.w	r2, r9, r3
c0de8ad8:	2400      	movs	r4, #0
c0de8ada:	f882 4031 	strb.w	r4, [r2, #49]	@ 0x31
c0de8ade:	eb09 0203 	add.w	r2, r9, r3
c0de8ae2:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
c0de8ae4:	b109      	cbz	r1, c0de8aea <displayChoicePage+0x82>
c0de8ae6:	2300      	movs	r3, #0
c0de8ae8:	e003      	b.n	c0de8af2 <displayChoicePage+0x8a>
c0de8aea:	eb09 0103 	add.w	r1, r9, r3
c0de8aee:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
c0de8af0:	2100      	movs	r1, #0
c0de8af2:	4d0b      	ldr	r5, [pc, #44]	@ (c0de8b20 <displayChoicePage+0xb8>)
c0de8af4:	2400      	movs	r4, #0
c0de8af6:	9402      	str	r4, [sp, #8]
c0de8af8:	447d      	add	r5, pc
c0de8afa:	e9cd 5400 	strd	r5, r4, [sp]
c0de8afe:	f7ff fdb9 	bl	c0de8674 <drawStep>
c0de8b02:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de8b06:	f7fd bdfd 	b.w	c0de6704 <nbgl_refresh>
c0de8b0a:	bf00      	nop
c0de8b0c:	000027dc 	.word	0x000027dc
c0de8b10:	00000e79 	.word	0x00000e79
c0de8b14:	00003cf7 	.word	0x00003cf7
c0de8b18:	00000ead 	.word	0x00000ead
c0de8b1c:	00003cbe 	.word	0x00003cbe
c0de8b20:	00000e71 	.word	0x00000e71

c0de8b24 <getContentAtIdx>:
c0de8b24:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de8b26:	b087      	sub	sp, #28
c0de8b28:	460d      	mov	r5, r1
c0de8b2a:	4606      	mov	r6, r0
c0de8b2c:	a801      	add	r0, sp, #4
c0de8b2e:	2118      	movs	r1, #24
c0de8b30:	4614      	mov	r4, r2
c0de8b32:	f003 fd2f 	bl	c0dec594 <__aeabi_memclr>
c0de8b36:	2d00      	cmp	r5, #0
c0de8b38:	d428      	bmi.n	c0de8b8c <getContentAtIdx+0x68>
c0de8b3a:	7a30      	ldrb	r0, [r6, #8]
c0de8b3c:	4285      	cmp	r5, r0
c0de8b3e:	da25      	bge.n	c0de8b8c <getContentAtIdx+0x68>
c0de8b40:	7830      	ldrb	r0, [r6, #0]
c0de8b42:	b338      	cbz	r0, c0de8b94 <getContentAtIdx+0x70>
c0de8b44:	b314      	cbz	r4, c0de8b8c <getContentAtIdx+0x68>
c0de8b46:	4620      	mov	r0, r4
c0de8b48:	2134      	movs	r1, #52	@ 0x34
c0de8b4a:	f003 fd23 	bl	c0dec594 <__aeabi_memclr>
c0de8b4e:	4821      	ldr	r0, [pc, #132]	@ (c0de8bd4 <getContentAtIdx+0xb0>)
c0de8b50:	4448      	add	r0, r9
c0de8b52:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de8b54:	b33a      	cbz	r2, c0de8ba6 <getContentAtIdx+0x82>
c0de8b56:	b2e8      	uxtb	r0, r5
c0de8b58:	ad01      	add	r5, sp, #4
c0de8b5a:	4629      	mov	r1, r5
c0de8b5c:	4790      	blx	r2
c0de8b5e:	b1a8      	cbz	r0, c0de8b8c <getContentAtIdx+0x68>
c0de8b60:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de8b64:	280a      	cmp	r0, #10
c0de8b66:	7020      	strb	r0, [r4, #0]
c0de8b68:	d027      	beq.n	c0de8bba <getContentAtIdx+0x96>
c0de8b6a:	2803      	cmp	r0, #3
c0de8b6c:	d008      	beq.n	c0de8b80 <getContentAtIdx+0x5c>
c0de8b6e:	2804      	cmp	r0, #4
c0de8b70:	d029      	beq.n	c0de8bc6 <getContentAtIdx+0xa2>
c0de8b72:	2807      	cmp	r0, #7
c0de8b74:	d01c      	beq.n	c0de8bb0 <getContentAtIdx+0x8c>
c0de8b76:	2808      	cmp	r0, #8
c0de8b78:	d002      	beq.n	c0de8b80 <getContentAtIdx+0x5c>
c0de8b7a:	2809      	cmp	r0, #9
c0de8b7c:	d018      	beq.n	c0de8bb0 <getContentAtIdx+0x8c>
c0de8b7e:	b928      	cbnz	r0, c0de8b8c <getContentAtIdx+0x68>
c0de8b80:	1d28      	adds	r0, r5, #4
c0de8b82:	1d21      	adds	r1, r4, #4
c0de8b84:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de8b88:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de8b8a:	e000      	b.n	c0de8b8e <getContentAtIdx+0x6a>
c0de8b8c:	2400      	movs	r4, #0
c0de8b8e:	4620      	mov	r0, r4
c0de8b90:	b007      	add	sp, #28
c0de8b92:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de8b94:	6870      	ldr	r0, [r6, #4]
c0de8b96:	2134      	movs	r1, #52	@ 0x34
c0de8b98:	fb05 0001 	mla	r0, r5, r1, r0
c0de8b9c:	b007      	add	sp, #28
c0de8b9e:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de8ba2:	f003 b927 	b.w	c0debdf4 <pic>
c0de8ba6:	6872      	ldr	r2, [r6, #4]
c0de8ba8:	b2e8      	uxtb	r0, r5
c0de8baa:	4621      	mov	r1, r4
c0de8bac:	4790      	blx	r2
c0de8bae:	e7ee      	b.n	c0de8b8e <getContentAtIdx+0x6a>
c0de8bb0:	9802      	ldr	r0, [sp, #8]
c0de8bb2:	9903      	ldr	r1, [sp, #12]
c0de8bb4:	6060      	str	r0, [r4, #4]
c0de8bb6:	60a1      	str	r1, [r4, #8]
c0de8bb8:	e7e9      	b.n	c0de8b8e <getContentAtIdx+0x6a>
c0de8bba:	1d28      	adds	r0, r5, #4
c0de8bbc:	1d21      	adds	r1, r4, #4
c0de8bbe:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de8bc2:	c12c      	stmia	r1!, {r2, r3, r5}
c0de8bc4:	e7e3      	b.n	c0de8b8e <getContentAtIdx+0x6a>
c0de8bc6:	1d28      	adds	r0, r5, #4
c0de8bc8:	1d21      	adds	r1, r4, #4
c0de8bca:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de8bce:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de8bd0:	e7dd      	b.n	c0de8b8e <getContentAtIdx+0x6a>
c0de8bd2:	bf00      	nop
c0de8bd4:	000027dc 	.word	0x000027dc

c0de8bd8 <getContentNbElement>:
c0de8bd8:	7802      	ldrb	r2, [r0, #0]
c0de8bda:	2101      	movs	r1, #1
c0de8bdc:	b1a2      	cbz	r2, c0de8c08 <getContentNbElement+0x30>
c0de8bde:	2a03      	cmp	r2, #3
c0de8be0:	d012      	beq.n	c0de8c08 <getContentNbElement+0x30>
c0de8be2:	2a0a      	cmp	r2, #10
c0de8be4:	d007      	beq.n	c0de8bf6 <getContentNbElement+0x1e>
c0de8be6:	2a07      	cmp	r2, #7
c0de8be8:	d007      	beq.n	c0de8bfa <getContentNbElement+0x22>
c0de8bea:	2a08      	cmp	r2, #8
c0de8bec:	d007      	beq.n	c0de8bfe <getContentNbElement+0x26>
c0de8bee:	2a09      	cmp	r2, #9
c0de8bf0:	d007      	beq.n	c0de8c02 <getContentNbElement+0x2a>
c0de8bf2:	2a04      	cmp	r2, #4
c0de8bf4:	d107      	bne.n	c0de8c06 <getContentNbElement+0x2e>
c0de8bf6:	7b01      	ldrb	r1, [r0, #12]
c0de8bf8:	e006      	b.n	c0de8c08 <getContentNbElement+0x30>
c0de8bfa:	7a01      	ldrb	r1, [r0, #8]
c0de8bfc:	e004      	b.n	c0de8c08 <getContentNbElement+0x30>
c0de8bfe:	7c01      	ldrb	r1, [r0, #16]
c0de8c00:	e002      	b.n	c0de8c08 <getContentNbElement+0x30>
c0de8c02:	7a41      	ldrb	r1, [r0, #9]
c0de8c04:	e000      	b.n	c0de8c08 <getContentNbElement+0x30>
c0de8c06:	2100      	movs	r1, #0
c0de8c08:	4608      	mov	r0, r1
c0de8c0a:	4770      	bx	lr

c0de8c0c <displayContent>:
c0de8c0c:	b570      	push	{r4, r5, r6, lr}
c0de8c0e:	b08a      	sub	sp, #40	@ 0x28
c0de8c10:	460d      	mov	r5, r1
c0de8c12:	4604      	mov	r4, r0
c0de8c14:	a804      	add	r0, sp, #16
c0de8c16:	2118      	movs	r1, #24
c0de8c18:	f003 fcbc 	bl	c0dec594 <__aeabi_memclr>
c0de8c1c:	4820      	ldr	r0, [pc, #128]	@ (c0de8ca0 <displayContent+0x94>)
c0de8c1e:	f000 febd 	bl	c0de999c <OUTLINED_FUNCTION_2>
c0de8c22:	dd14      	ble.n	c0de8c4e <displayContent+0x42>
c0de8c24:	a904      	add	r1, sp, #16
c0de8c26:	4628      	mov	r0, r5
c0de8c28:	f000 f846 	bl	c0de8cb8 <getContentPage>
c0de8c2c:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de8c30:	b318      	cbz	r0, c0de8c7a <displayContent+0x6e>
c0de8c32:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de8c36:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de8c3a:	481e      	ldr	r0, [pc, #120]	@ (c0de8cb4 <displayContent+0xa8>)
c0de8c3c:	4478      	add	r0, pc
c0de8c3e:	2b00      	cmp	r3, #0
c0de8c40:	9000      	str	r0, [sp, #0]
c0de8c42:	4620      	mov	r0, r4
c0de8c44:	bf18      	it	ne
c0de8c46:	2301      	movne	r3, #1
c0de8c48:	f000 f8d8 	bl	c0de8dfc <drawSwitchStep>
c0de8c4c:	e023      	b.n	c0de8c96 <displayContent+0x8a>
c0de8c4e:	4448      	add	r0, r9
c0de8c50:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de8c52:	6341      	str	r1, [r0, #52]	@ 0x34
c0de8c54:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de8c56:	4a13      	ldr	r2, [pc, #76]	@ (c0de8ca4 <displayContent+0x98>)
c0de8c58:	2900      	cmp	r1, #0
c0de8c5a:	447a      	add	r2, pc
c0de8c5c:	bf18      	it	ne
c0de8c5e:	460a      	movne	r2, r1
c0de8c60:	9205      	str	r2, [sp, #20]
c0de8c62:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de8c66:	4910      	ldr	r1, [pc, #64]	@ (c0de8ca8 <displayContent+0x9c>)
c0de8c68:	4a10      	ldr	r2, [pc, #64]	@ (c0de8cac <displayContent+0xa0>)
c0de8c6a:	2803      	cmp	r0, #3
c0de8c6c:	447a      	add	r2, pc
c0de8c6e:	4479      	add	r1, pc
c0de8c70:	bf08      	it	eq
c0de8c72:	460a      	moveq	r2, r1
c0de8c74:	9207      	str	r2, [sp, #28]
c0de8c76:	2000      	movs	r0, #0
c0de8c78:	e002      	b.n	c0de8c80 <displayContent+0x74>
c0de8c7a:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de8c7e:	0040      	lsls	r0, r0, #1
c0de8c80:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de8c84:	9907      	ldr	r1, [sp, #28]
c0de8c86:	4e0a      	ldr	r6, [pc, #40]	@ (c0de8cb0 <displayContent+0xa4>)
c0de8c88:	b2c0      	uxtb	r0, r0
c0de8c8a:	2500      	movs	r5, #0
c0de8c8c:	9002      	str	r0, [sp, #8]
c0de8c8e:	4620      	mov	r0, r4
c0de8c90:	447e      	add	r6, pc
c0de8c92:	f000 fe9b 	bl	c0de99cc <OUTLINED_FUNCTION_7>
c0de8c96:	f7fd fd35 	bl	c0de6704 <nbgl_refresh>
c0de8c9a:	b00a      	add	sp, #40	@ 0x28
c0de8c9c:	bd70      	pop	{r4, r5, r6, pc}
c0de8c9e:	bf00      	nop
c0de8ca0:	000027dc 	.word	0x000027dc
c0de8ca4:	00003e67 	.word	0x00003e67
c0de8ca8:	00003b00 	.word	0x00003b00
c0de8cac:	00003abc 	.word	0x00003abc
c0de8cb0:	000001b9 	.word	0x000001b9
c0de8cb4:	0000020d 	.word	0x0000020d

c0de8cb8 <getContentPage>:
c0de8cb8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de8cba:	b091      	sub	sp, #68	@ 0x44
c0de8cbc:	4606      	mov	r6, r0
c0de8cbe:	2000      	movs	r0, #0
c0de8cc0:	460c      	mov	r4, r1
c0de8cc2:	2134      	movs	r1, #52	@ 0x34
c0de8cc4:	f88d 0043 	strb.w	r0, [sp, #67]	@ 0x43
c0de8cc8:	ad03      	add	r5, sp, #12
c0de8cca:	4628      	mov	r0, r5
c0de8ccc:	f003 fc62 	bl	c0dec594 <__aeabi_memclr>
c0de8cd0:	4f47      	ldr	r7, [pc, #284]	@ (c0de8df0 <getContentPage+0x138>)
c0de8cd2:	f10d 0143 	add.w	r1, sp, #67	@ 0x43
c0de8cd6:	462a      	mov	r2, r5
c0de8cd8:	eb09 0007 	add.w	r0, r9, r7
c0de8cdc:	f000 fe69 	bl	c0de99b2 <OUTLINED_FUNCTION_4>
c0de8ce0:	2800      	cmp	r0, #0
c0de8ce2:	d07a      	beq.n	c0de8dda <getContentPage+0x122>
c0de8ce4:	4605      	mov	r5, r0
c0de8ce6:	7800      	ldrb	r0, [r0, #0]
c0de8ce8:	280a      	cmp	r0, #10
c0de8cea:	d011      	beq.n	c0de8d10 <getContentPage+0x58>
c0de8cec:	2803      	cmp	r0, #3
c0de8cee:	d02c      	beq.n	c0de8d4a <getContentPage+0x92>
c0de8cf0:	2804      	cmp	r0, #4
c0de8cf2:	d035      	beq.n	c0de8d60 <getContentPage+0xa8>
c0de8cf4:	2807      	cmp	r0, #7
c0de8cf6:	d045      	beq.n	c0de8d84 <getContentPage+0xcc>
c0de8cf8:	2808      	cmp	r0, #8
c0de8cfa:	d060      	beq.n	c0de8dbe <getContentPage+0x106>
c0de8cfc:	2809      	cmp	r0, #9
c0de8cfe:	d007      	beq.n	c0de8d10 <getContentPage+0x58>
c0de8d00:	2800      	cmp	r0, #0
c0de8d02:	d16a      	bne.n	c0de8dda <getContentPage+0x122>
c0de8d04:	6868      	ldr	r0, [r5, #4]
c0de8d06:	f003 f875 	bl	c0debdf4 <pic>
c0de8d0a:	6060      	str	r0, [r4, #4]
c0de8d0c:	68a8      	ldr	r0, [r5, #8]
c0de8d0e:	e019      	b.n	c0de8d44 <getContentPage+0x8c>
c0de8d10:	1d28      	adds	r0, r5, #4
c0de8d12:	eb09 0607 	add.w	r6, r9, r7
c0de8d16:	f003 f86d 	bl	c0debdf4 <pic>
c0de8d1a:	6800      	ldr	r0, [r0, #0]
c0de8d1c:	f003 f86a 	bl	c0debdf4 <pic>
c0de8d20:	f896 1028 	ldrb.w	r1, [r6, #40]	@ 0x28
c0de8d24:	4605      	mov	r5, r0
c0de8d26:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de8d28:	2910      	cmp	r1, #16
c0de8d2a:	d100      	bne.n	c0de8d2e <getContentPage+0x76>
c0de8d2c:	b918      	cbnz	r0, c0de8d36 <getContentPage+0x7e>
c0de8d2e:	290f      	cmp	r1, #15
c0de8d30:	d155      	bne.n	c0de8dde <getContentPage+0x126>
c0de8d32:	2800      	cmp	r0, #0
c0de8d34:	d053      	beq.n	c0de8dde <getContentPage+0x126>
c0de8d36:	f003 f85d 	bl	c0debdf4 <pic>
c0de8d3a:	6060      	str	r0, [r4, #4]
c0de8d3c:	f89d 0043 	ldrb.w	r0, [sp, #67]	@ 0x43
c0de8d40:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de8d44:	f003 f856 	bl	c0debdf4 <pic>
c0de8d48:	e046      	b.n	c0de8dd8 <getContentPage+0x120>
c0de8d4a:	68a8      	ldr	r0, [r5, #8]
c0de8d4c:	4e29      	ldr	r6, [pc, #164]	@ (c0de8df4 <getContentPage+0x13c>)
c0de8d4e:	447e      	add	r6, pc
c0de8d50:	47b0      	blx	r6
c0de8d52:	60e0      	str	r0, [r4, #12]
c0de8d54:	6868      	ldr	r0, [r5, #4]
c0de8d56:	47b0      	blx	r6
c0de8d58:	6060      	str	r0, [r4, #4]
c0de8d5a:	68e8      	ldr	r0, [r5, #12]
c0de8d5c:	47b0      	blx	r6
c0de8d5e:	e03b      	b.n	c0de8dd8 <getContentPage+0x120>
c0de8d60:	f104 0015 	add.w	r0, r4, #21
c0de8d64:	f89d 1043 	ldrb.w	r1, [sp, #67]	@ 0x43
c0de8d68:	f104 020c 	add.w	r2, r4, #12
c0de8d6c:	f104 0310 	add.w	r3, r4, #16
c0de8d70:	e9cd 3200 	strd	r3, r2, [sp]
c0de8d74:	9002      	str	r0, [sp, #8]
c0de8d76:	1d28      	adds	r0, r5, #4
c0de8d78:	1d22      	adds	r2, r4, #4
c0de8d7a:	f104 0308 	add.w	r3, r4, #8
c0de8d7e:	f000 f8b9 	bl	c0de8ef4 <getPairData>
c0de8d82:	e02a      	b.n	c0de8dda <getContentPage+0x122>
c0de8d84:	2001      	movs	r0, #1
c0de8d86:	444f      	add	r7, r9
c0de8d88:	7020      	strb	r0, [r4, #0]
c0de8d8a:	6868      	ldr	r0, [r5, #4]
c0de8d8c:	f003 f832 	bl	c0debdf4 <pic>
c0de8d90:	4919      	ldr	r1, [pc, #100]	@ (c0de8df8 <getContentPage+0x140>)
c0de8d92:	4479      	add	r1, pc
c0de8d94:	6379      	str	r1, [r7, #52]	@ 0x34
c0de8d96:	f89d 1043 	ldrb.w	r1, [sp, #67]	@ 0x43
c0de8d9a:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de8d9e:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de8da2:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de8da6:	6062      	str	r2, [r4, #4]
c0de8da8:	6841      	ldr	r1, [r0, #4]
c0de8daa:	60a1      	str	r1, [r4, #8]
c0de8dac:	7a00      	ldrb	r0, [r0, #8]
c0de8dae:	1e41      	subs	r1, r0, #1
c0de8db0:	bf18      	it	ne
c0de8db2:	2101      	movne	r1, #1
c0de8db4:	2e00      	cmp	r6, #0
c0de8db6:	bf08      	it	eq
c0de8db8:	4601      	moveq	r1, r0
c0de8dba:	7521      	strb	r1, [r4, #20]
c0de8dbc:	e00d      	b.n	c0de8dda <getContentPage+0x122>
c0de8dbe:	6868      	ldr	r0, [r5, #4]
c0de8dc0:	f003 f818 	bl	c0debdf4 <pic>
c0de8dc4:	f89d 6043 	ldrb.w	r6, [sp, #67]	@ 0x43
c0de8dc8:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de8dcc:	6060      	str	r0, [r4, #4]
c0de8dce:	68a8      	ldr	r0, [r5, #8]
c0de8dd0:	f003 f810 	bl	c0debdf4 <pic>
c0de8dd4:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de8dd8:	60a0      	str	r0, [r4, #8]
c0de8dda:	b011      	add	sp, #68	@ 0x44
c0de8ddc:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de8dde:	f89d 0043 	ldrb.w	r0, [sp, #67]	@ 0x43
c0de8de2:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de8de6:	f003 f805 	bl	c0debdf4 <pic>
c0de8dea:	6060      	str	r0, [r4, #4]
c0de8dec:	e7f5      	b.n	c0de8dda <getContentPage+0x122>
c0de8dee:	bf00      	nop
c0de8df0:	000027dc 	.word	0x000027dc
c0de8df4:	000030a3 	.word	0x000030a3
c0de8df8:	000001a7 	.word	0x000001a7

c0de8dfc <drawSwitchStep>:
c0de8dfc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de8dfe:	b085      	sub	sp, #20
c0de8e00:	4c11      	ldr	r4, [pc, #68]	@ (c0de8e48 <drawSwitchStep+0x4c>)
c0de8e02:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de8e06:	2600      	movs	r6, #0
c0de8e08:	eb09 0504 	add.w	r5, r9, r4
c0de8e0c:	f895 7030 	ldrb.w	r7, [r5, #48]	@ 0x30
c0de8e10:	2500      	movs	r5, #0
c0de8e12:	2f02      	cmp	r7, #2
c0de8e14:	d30a      	bcc.n	c0de8e2c <drawSwitchStep+0x30>
c0de8e16:	444c      	add	r4, r9
c0de8e18:	f994 4031 	ldrsb.w	r4, [r4, #49]	@ 0x31
c0de8e1c:	b12c      	cbz	r4, c0de8e2a <drawSwitchStep+0x2e>
c0de8e1e:	3f01      	subs	r7, #1
c0de8e20:	2603      	movs	r6, #3
c0de8e22:	42a7      	cmp	r7, r4
c0de8e24:	bf08      	it	eq
c0de8e26:	2602      	moveq	r6, #2
c0de8e28:	e000      	b.n	c0de8e2c <drawSwitchStep+0x30>
c0de8e2a:	2601      	movs	r6, #1
c0de8e2c:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de8e30:	f88d 3010 	strb.w	r3, [sp, #16]
c0de8e34:	9500      	str	r5, [sp, #0]
c0de8e36:	4330      	orrs	r0, r6
c0de8e38:	ab02      	add	r3, sp, #8
c0de8e3a:	4661      	mov	r1, ip
c0de8e3c:	2200      	movs	r2, #0
c0de8e3e:	f7ff f8e7 	bl	c0de8010 <nbgl_stepDrawSwitch>
c0de8e42:	b005      	add	sp, #20
c0de8e44:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de8e46:	bf00      	nop
c0de8e48:	000027dc 	.word	0x000027dc

c0de8e4c <contentCallback>:
c0de8e4c:	b5e0      	push	{r5, r6, r7, lr}
c0de8e4e:	4608      	mov	r0, r1
c0de8e50:	f10d 0107 	add.w	r1, sp, #7
c0de8e54:	f000 f928 	bl	c0de90a8 <buttonGenericCallback>
c0de8e58:	b130      	cbz	r0, c0de8e68 <contentCallback+0x1c>
c0de8e5a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de8e5e:	2100      	movs	r1, #0
c0de8e60:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de8e64:	f7ff bed2 	b.w	c0de8c0c <displayContent>
c0de8e68:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de8e6c <getContentElemAtIdx>:
c0de8e6c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de8e70:	4c1e      	ldr	r4, [pc, #120]	@ (c0de8eec <getContentElemAtIdx+0x80>)
c0de8e72:	4606      	mov	r6, r0
c0de8e74:	2700      	movs	r7, #0
c0de8e76:	eb09 0004 	add.w	r0, r9, r4
c0de8e7a:	f890 3028 	ldrb.w	r3, [r0, #40]	@ 0x28
c0de8e7e:	2b10      	cmp	r3, #16
c0de8e80:	d830      	bhi.n	c0de8ee4 <getContentElemAtIdx+0x78>
c0de8e82:	4693      	mov	fp, r2
c0de8e84:	2201      	movs	r2, #1
c0de8e86:	9101      	str	r1, [sp, #4]
c0de8e88:	fa02 f303 	lsl.w	r3, r2, r3
c0de8e8c:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de8e90:	d004      	beq.n	c0de8e9c <getContentElemAtIdx+0x30>
c0de8e92:	eb09 0004 	add.w	r0, r9, r4
c0de8e96:	46a2      	mov	sl, r4
c0de8e98:	6c44      	ldr	r4, [r0, #68]	@ 0x44
c0de8e9a:	e005      	b.n	c0de8ea8 <getContentElemAtIdx+0x3c>
c0de8e9c:	4a14      	ldr	r2, [pc, #80]	@ (c0de8ef0 <getContentElemAtIdx+0x84>)
c0de8e9e:	4213      	tst	r3, r2
c0de8ea0:	d020      	beq.n	c0de8ee4 <getContentElemAtIdx+0x78>
c0de8ea2:	46a2      	mov	sl, r4
c0de8ea4:	f100 043c 	add.w	r4, r0, #60	@ 0x3c
c0de8ea8:	2700      	movs	r7, #0
c0de8eaa:	2000      	movs	r0, #0
c0de8eac:	f04f 0800 	mov.w	r8, #0
c0de8eb0:	4605      	mov	r5, r0
c0de8eb2:	7a20      	ldrb	r0, [r4, #8]
c0de8eb4:	4580      	cmp	r8, r0
c0de8eb6:	d215      	bcs.n	c0de8ee4 <getContentElemAtIdx+0x78>
c0de8eb8:	fa4f f188 	sxtb.w	r1, r8
c0de8ebc:	4620      	mov	r0, r4
c0de8ebe:	465a      	mov	r2, fp
c0de8ec0:	f7ff fe30 	bl	c0de8b24 <getContentAtIdx>
c0de8ec4:	4607      	mov	r7, r0
c0de8ec6:	f7ff fe87 	bl	c0de8bd8 <getContentNbElement>
c0de8eca:	b2e9      	uxtb	r1, r5
c0de8ecc:	f108 0801 	add.w	r8, r8, #1
c0de8ed0:	4408      	add	r0, r1
c0de8ed2:	42b0      	cmp	r0, r6
c0de8ed4:	d9ec      	bls.n	c0de8eb0 <getContentElemAtIdx+0x44>
c0de8ed6:	eb09 000a 	add.w	r0, r9, sl
c0de8eda:	9901      	ldr	r1, [sp, #4]
c0de8edc:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de8ee0:	1b40      	subs	r0, r0, r5
c0de8ee2:	7008      	strb	r0, [r1, #0]
c0de8ee4:	4638      	mov	r0, r7
c0de8ee6:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de8eea:	bf00      	nop
c0de8eec:	000027dc 	.word	0x000027dc
c0de8ef0:	00010008 	.word	0x00010008

c0de8ef4 <getPairData>:
c0de8ef4:	b5b0      	push	{r4, r5, r7, lr}
c0de8ef6:	4615      	mov	r5, r2
c0de8ef8:	6802      	ldr	r2, [r0, #0]
c0de8efa:	461c      	mov	r4, r3
c0de8efc:	b112      	cbz	r2, c0de8f04 <getPairData+0x10>
c0de8efe:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de8f02:	e002      	b.n	c0de8f0a <getPairData+0x16>
c0de8f04:	6842      	ldr	r2, [r0, #4]
c0de8f06:	4608      	mov	r0, r1
c0de8f08:	4790      	blx	r2
c0de8f0a:	f002 ff73 	bl	c0debdf4 <pic>
c0de8f0e:	6802      	ldr	r2, [r0, #0]
c0de8f10:	9904      	ldr	r1, [sp, #16]
c0de8f12:	602a      	str	r2, [r5, #0]
c0de8f14:	6842      	ldr	r2, [r0, #4]
c0de8f16:	6022      	str	r2, [r4, #0]
c0de8f18:	7b02      	ldrb	r2, [r0, #12]
c0de8f1a:	0753      	lsls	r3, r2, #29
c0de8f1c:	d403      	bmi.n	c0de8f26 <getPairData+0x32>
c0de8f1e:	0792      	lsls	r2, r2, #30
c0de8f20:	d404      	bmi.n	c0de8f2c <getPairData+0x38>
c0de8f22:	2000      	movs	r0, #0
c0de8f24:	e000      	b.n	c0de8f28 <getPairData+0x34>
c0de8f26:	6880      	ldr	r0, [r0, #8]
c0de8f28:	6008      	str	r0, [r1, #0]
c0de8f2a:	bdb0      	pop	{r4, r5, r7, pc}
c0de8f2c:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de8f30:	2301      	movs	r3, #1
c0de8f32:	700b      	strb	r3, [r1, #0]
c0de8f34:	6880      	ldr	r0, [r0, #8]
c0de8f36:	6010      	str	r0, [r2, #0]
c0de8f38:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de8f3c <onSwitchAction>:
c0de8f3c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de8f3e:	b08f      	sub	sp, #60	@ 0x3c
c0de8f40:	ac02      	add	r4, sp, #8
c0de8f42:	2134      	movs	r1, #52	@ 0x34
c0de8f44:	4620      	mov	r0, r4
c0de8f46:	f003 fb25 	bl	c0dec594 <__aeabi_memclr>
c0de8f4a:	4e26      	ldr	r6, [pc, #152]	@ (c0de8fe4 <onSwitchAction+0xa8>)
c0de8f4c:	f10d 0107 	add.w	r1, sp, #7
c0de8f50:	4622      	mov	r2, r4
c0de8f52:	eb09 0006 	add.w	r0, r9, r6
c0de8f56:	f000 fd2c 	bl	c0de99b2 <OUTLINED_FUNCTION_4>
c0de8f5a:	2800      	cmp	r0, #0
c0de8f5c:	d040      	beq.n	c0de8fe0 <onSwitchAction+0xa4>
c0de8f5e:	4604      	mov	r4, r0
c0de8f60:	7800      	ldrb	r0, [r0, #0]
c0de8f62:	2807      	cmp	r0, #7
c0de8f64:	d13c      	bne.n	c0de8fe0 <onSwitchAction+0xa4>
c0de8f66:	6860      	ldr	r0, [r4, #4]
c0de8f68:	eb09 0706 	add.w	r7, r9, r6
c0de8f6c:	f002 ff42 	bl	c0debdf4 <pic>
c0de8f70:	4605      	mov	r5, r0
c0de8f72:	f897 0028 	ldrb.w	r0, [r7, #40]	@ 0x28
c0de8f76:	f89d 7007 	ldrb.w	r7, [sp, #7]
c0de8f7a:	2810      	cmp	r0, #16
c0de8f7c:	d811      	bhi.n	c0de8fa2 <onSwitchAction+0x66>
c0de8f7e:	2101      	movs	r1, #1
c0de8f80:	fa01 f000 	lsl.w	r0, r1, r0
c0de8f84:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de8f88:	d004      	beq.n	c0de8f94 <onSwitchAction+0x58>
c0de8f8a:	2000      	movs	r0, #0
c0de8f8c:	2101      	movs	r1, #1
c0de8f8e:	f000 f82d 	bl	c0de8fec <displaySettingsPage>
c0de8f92:	e006      	b.n	c0de8fa2 <onSwitchAction+0x66>
c0de8f94:	4914      	ldr	r1, [pc, #80]	@ (c0de8fe8 <onSwitchAction+0xac>)
c0de8f96:	4208      	tst	r0, r1
c0de8f98:	d003      	beq.n	c0de8fa2 <onSwitchAction+0x66>
c0de8f9a:	2000      	movs	r0, #0
c0de8f9c:	2101      	movs	r1, #1
c0de8f9e:	f7ff fe35 	bl	c0de8c0c <displayContent>
c0de8fa2:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de8fa4:	b188      	cbz	r0, c0de8fca <onSwitchAction+0x8e>
c0de8fa6:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de8faa:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de8fae:	f002 ff21 	bl	c0debdf4 <pic>
c0de8fb2:	7a21      	ldrb	r1, [r4, #8]
c0de8fb4:	eb09 0206 	add.w	r2, r9, r6
c0de8fb8:	4603      	mov	r3, r0
c0de8fba:	7a60      	ldrb	r0, [r4, #9]
c0de8fbc:	3901      	subs	r1, #1
c0de8fbe:	bf18      	it	ne
c0de8fc0:	2101      	movne	r1, #1
c0de8fc2:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de8fc6:	4798      	blx	r3
c0de8fc8:	e00a      	b.n	c0de8fe0 <onSwitchAction+0xa4>
c0de8fca:	eb09 0006 	add.w	r0, r9, r6
c0de8fce:	6cc2      	ldr	r2, [r0, #76]	@ 0x4c
c0de8fd0:	b132      	cbz	r2, c0de8fe0 <onSwitchAction+0xa4>
c0de8fd2:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de8fd6:	2100      	movs	r1, #0
c0de8fd8:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de8fdc:	7a40      	ldrb	r0, [r0, #9]
c0de8fde:	4790      	blx	r2
c0de8fe0:	b00f      	add	sp, #60	@ 0x3c
c0de8fe2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de8fe4:	000027dc 	.word	0x000027dc
c0de8fe8:	00010008 	.word	0x00010008

c0de8fec <displaySettingsPage>:
c0de8fec:	b5b0      	push	{r4, r5, r7, lr}
c0de8fee:	b08a      	sub	sp, #40	@ 0x28
c0de8ff0:	460d      	mov	r5, r1
c0de8ff2:	4604      	mov	r4, r0
c0de8ff4:	a804      	add	r0, sp, #16
c0de8ff6:	2118      	movs	r1, #24
c0de8ff8:	f003 facc 	bl	c0dec594 <__aeabi_memclr>
c0de8ffc:	481c      	ldr	r0, [pc, #112]	@ (c0de9070 <displaySettingsPage+0x84>)
c0de8ffe:	f000 fccd 	bl	c0de999c <OUTLINED_FUNCTION_2>
c0de9002:	dd14      	ble.n	c0de902e <displaySettingsPage+0x42>
c0de9004:	a904      	add	r1, sp, #16
c0de9006:	4628      	mov	r0, r5
c0de9008:	f7ff fe56 	bl	c0de8cb8 <getContentPage>
c0de900c:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de9010:	b1e8      	cbz	r0, c0de904e <displaySettingsPage+0x62>
c0de9012:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de9016:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de901a:	481a      	ldr	r0, [pc, #104]	@ (c0de9084 <displaySettingsPage+0x98>)
c0de901c:	4478      	add	r0, pc
c0de901e:	2b00      	cmp	r3, #0
c0de9020:	9000      	str	r0, [sp, #0]
c0de9022:	4620      	mov	r0, r4
c0de9024:	bf18      	it	ne
c0de9026:	2301      	movne	r3, #1
c0de9028:	f7ff fee8 	bl	c0de8dfc <drawSwitchStep>
c0de902c:	e01b      	b.n	c0de9066 <displaySettingsPage+0x7a>
c0de902e:	4448      	add	r0, r9
c0de9030:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de9034:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de9036:	4b0f      	ldr	r3, [pc, #60]	@ (c0de9074 <displaySettingsPage+0x88>)
c0de9038:	447b      	add	r3, pc
c0de903a:	290f      	cmp	r1, #15
c0de903c:	bf08      	it	eq
c0de903e:	4613      	moveq	r3, r2
c0de9040:	6343      	str	r3, [r0, #52]	@ 0x34
c0de9042:	480d      	ldr	r0, [pc, #52]	@ (c0de9078 <displaySettingsPage+0x8c>)
c0de9044:	4478      	add	r0, pc
c0de9046:	9005      	str	r0, [sp, #20]
c0de9048:	480c      	ldr	r0, [pc, #48]	@ (c0de907c <displaySettingsPage+0x90>)
c0de904a:	4478      	add	r0, pc
c0de904c:	9007      	str	r0, [sp, #28]
c0de904e:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de9052:	9907      	ldr	r1, [sp, #28]
c0de9054:	4d0a      	ldr	r5, [pc, #40]	@ (c0de9080 <displaySettingsPage+0x94>)
c0de9056:	2000      	movs	r0, #0
c0de9058:	9002      	str	r0, [sp, #8]
c0de905a:	447d      	add	r5, pc
c0de905c:	e9cd 5000 	strd	r5, r0, [sp]
c0de9060:	4620      	mov	r0, r4
c0de9062:	f7ff fb07 	bl	c0de8674 <drawStep>
c0de9066:	f7fd fb4d 	bl	c0de6704 <nbgl_refresh>
c0de906a:	b00a      	add	sp, #40	@ 0x28
c0de906c:	bdb0      	pop	{r4, r5, r7, pc}
c0de906e:	bf00      	nop
c0de9070:	000027dc 	.word	0x000027dc
c0de9074:	fffff29d 	.word	0xfffff29d
c0de9078:	00003a7d 	.word	0x00003a7d
c0de907c:	000036de 	.word	0x000036de
c0de9080:	0000002b 	.word	0x0000002b
c0de9084:	00000069 	.word	0x00000069

c0de9088 <settingsCallback>:
c0de9088:	b5e0      	push	{r5, r6, r7, lr}
c0de908a:	4608      	mov	r0, r1
c0de908c:	f10d 0107 	add.w	r1, sp, #7
c0de9090:	f000 f80a 	bl	c0de90a8 <buttonGenericCallback>
c0de9094:	b130      	cbz	r0, c0de90a4 <settingsCallback+0x1c>
c0de9096:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de909a:	2100      	movs	r1, #0
c0de909c:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de90a0:	f7ff bfa4 	b.w	c0de8fec <displaySettingsPage>
c0de90a4:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de90a8 <buttonGenericCallback>:
c0de90a8:	b5b0      	push	{r4, r5, r7, lr}
c0de90aa:	b08e      	sub	sp, #56	@ 0x38
c0de90ac:	460c      	mov	r4, r1
c0de90ae:	4605      	mov	r5, r0
c0de90b0:	4668      	mov	r0, sp
c0de90b2:	2134      	movs	r1, #52	@ 0x34
c0de90b4:	f003 fa6e 	bl	c0dec594 <__aeabi_memclr>
c0de90b8:	2d04      	cmp	r5, #4
c0de90ba:	d00d      	beq.n	c0de90d8 <buttonGenericCallback+0x30>
c0de90bc:	2d01      	cmp	r5, #1
c0de90be:	d012      	beq.n	c0de90e6 <buttonGenericCallback+0x3e>
c0de90c0:	2d00      	cmp	r5, #0
c0de90c2:	d17a      	bne.n	c0de91ba <buttonGenericCallback+0x112>
c0de90c4:	483e      	ldr	r0, [pc, #248]	@ (c0de91c0 <buttonGenericCallback+0x118>)
c0de90c6:	eb09 0100 	add.w	r1, r9, r0
c0de90ca:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de90ce:	2901      	cmp	r1, #1
c0de90d0:	db1d      	blt.n	c0de910e <buttonGenericCallback+0x66>
c0de90d2:	3901      	subs	r1, #1
c0de90d4:	2008      	movs	r0, #8
c0de90d6:	e013      	b.n	c0de9100 <buttonGenericCallback+0x58>
c0de90d8:	4c39      	ldr	r4, [pc, #228]	@ (c0de91c0 <buttonGenericCallback+0x118>)
c0de90da:	eb09 0004 	add.w	r0, r9, r4
c0de90de:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de90e0:	b338      	cbz	r0, c0de9132 <buttonGenericCallback+0x8a>
c0de90e2:	4780      	blx	r0
c0de90e4:	e069      	b.n	c0de91ba <buttonGenericCallback+0x112>
c0de90e6:	4836      	ldr	r0, [pc, #216]	@ (c0de91c0 <buttonGenericCallback+0x118>)
c0de90e8:	eb09 0100 	add.w	r1, r9, r0
c0de90ec:	f991 0031 	ldrsb.w	r0, [r1, #49]	@ 0x31
c0de90f0:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de90f4:	3901      	subs	r1, #1
c0de90f6:	4281      	cmp	r1, r0
c0de90f8:	dd5f      	ble.n	c0de91ba <buttonGenericCallback+0x112>
c0de90fa:	b2c0      	uxtb	r0, r0
c0de90fc:	1c41      	adds	r1, r0, #1
c0de90fe:	2000      	movs	r0, #0
c0de9100:	4a2f      	ldr	r2, [pc, #188]	@ (c0de91c0 <buttonGenericCallback+0x118>)
c0de9102:	444a      	add	r2, r9
c0de9104:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de9108:	7020      	strb	r0, [r4, #0]
c0de910a:	2001      	movs	r0, #1
c0de910c:	e056      	b.n	c0de91bc <buttonGenericCallback+0x114>
c0de910e:	eb09 0100 	add.w	r1, r9, r0
c0de9112:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de9116:	2906      	cmp	r1, #6
c0de9118:	d14f      	bne.n	c0de91ba <buttonGenericCallback+0x112>
c0de911a:	eb09 0100 	add.w	r1, r9, r0
c0de911e:	6d49      	ldr	r1, [r1, #84]	@ 0x54
c0de9120:	2900      	cmp	r1, #0
c0de9122:	d04a      	beq.n	c0de91ba <buttonGenericCallback+0x112>
c0de9124:	4448      	add	r0, r9
c0de9126:	f890 0058 	ldrb.w	r0, [r0, #88]	@ 0x58
c0de912a:	2801      	cmp	r0, #1
c0de912c:	d045      	beq.n	c0de91ba <buttonGenericCallback+0x112>
c0de912e:	2008      	movs	r0, #8
c0de9130:	e7ea      	b.n	c0de9108 <buttonGenericCallback+0x60>
c0de9132:	eb09 0004 	add.w	r0, r9, r4
c0de9136:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de913a:	2000      	movs	r0, #0
c0de913c:	2910      	cmp	r1, #16
c0de913e:	d83d      	bhi.n	c0de91bc <buttonGenericCallback+0x114>
c0de9140:	2201      	movs	r2, #1
c0de9142:	fa02 f101 	lsl.w	r1, r2, r1
c0de9146:	4a1f      	ldr	r2, [pc, #124]	@ (c0de91c4 <buttonGenericCallback+0x11c>)
c0de9148:	4211      	tst	r1, r2
c0de914a:	d037      	beq.n	c0de91bc <buttonGenericCallback+0x114>
c0de914c:	eb09 0004 	add.w	r0, r9, r4
c0de9150:	f10d 0137 	add.w	r1, sp, #55	@ 0x37
c0de9154:	466a      	mov	r2, sp
c0de9156:	f000 fc2c 	bl	c0de99b2 <OUTLINED_FUNCTION_4>
c0de915a:	b370      	cbz	r0, c0de91ba <buttonGenericCallback+0x112>
c0de915c:	7801      	ldrb	r1, [r0, #0]
c0de915e:	4602      	mov	r2, r0
c0de9160:	2000      	movs	r0, #0
c0de9162:	b359      	cbz	r1, c0de91bc <buttonGenericCallback+0x114>
c0de9164:	290a      	cmp	r1, #10
c0de9166:	d009      	beq.n	c0de917c <buttonGenericCallback+0xd4>
c0de9168:	2907      	cmp	r1, #7
c0de916a:	d00f      	beq.n	c0de918c <buttonGenericCallback+0xe4>
c0de916c:	2909      	cmp	r1, #9
c0de916e:	d011      	beq.n	c0de9194 <buttonGenericCallback+0xec>
c0de9170:	2903      	cmp	r1, #3
c0de9172:	f04f 0100 	mov.w	r1, #0
c0de9176:	d112      	bne.n	c0de919e <buttonGenericCallback+0xf6>
c0de9178:	7c10      	ldrb	r0, [r2, #16]
c0de917a:	e005      	b.n	c0de9188 <buttonGenericCallback+0xe0>
c0de917c:	eb09 0004 	add.w	r0, r9, r4
c0de9180:	6891      	ldr	r1, [r2, #8]
c0de9182:	f990 0031 	ldrsb.w	r0, [r0, #49]	@ 0x31
c0de9186:	5c08      	ldrb	r0, [r1, r0]
c0de9188:	2100      	movs	r1, #0
c0de918a:	e008      	b.n	c0de919e <buttonGenericCallback+0xf6>
c0de918c:	6850      	ldr	r0, [r2, #4]
c0de918e:	2100      	movs	r1, #0
c0de9190:	7a40      	ldrb	r0, [r0, #9]
c0de9192:	e004      	b.n	c0de919e <buttonGenericCallback+0xf6>
c0de9194:	eb09 0004 	add.w	r0, r9, r4
c0de9198:	f890 1031 	ldrb.w	r1, [r0, #49]	@ 0x31
c0de919c:	7ad0      	ldrb	r0, [r2, #11]
c0de919e:	6b13      	ldr	r3, [r2, #48]	@ 0x30
c0de91a0:	b133      	cbz	r3, c0de91b0 <buttonGenericCallback+0x108>
c0de91a2:	eb09 0104 	add.w	r1, r9, r4
c0de91a6:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de91aa:	2100      	movs	r1, #0
c0de91ac:	4798      	blx	r3
c0de91ae:	e004      	b.n	c0de91ba <buttonGenericCallback+0x112>
c0de91b0:	eb09 0204 	add.w	r2, r9, r4
c0de91b4:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de91b6:	b102      	cbz	r2, c0de91ba <buttonGenericCallback+0x112>
c0de91b8:	4790      	blx	r2
c0de91ba:	2000      	movs	r0, #0
c0de91bc:	b00e      	add	sp, #56	@ 0x38
c0de91be:	bdb0      	pop	{r4, r5, r7, pc}
c0de91c0:	000027dc 	.word	0x000027dc
c0de91c4:	0001c008 	.word	0x0001c008

c0de91c8 <displayHomePage>:
c0de91c8:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de91cc:	4680      	mov	r8, r0
c0de91ce:	4832      	ldr	r0, [pc, #200]	@ (c0de9298 <displayHomePage+0xd0>)
c0de91d0:	2200      	movs	r2, #0
c0de91d2:	eb09 0100 	add.w	r1, r9, r0
c0de91d6:	6c4f      	ldr	r7, [r1, #68]	@ 0x44
c0de91d8:	6ccd      	ldr	r5, [r1, #76]	@ 0x4c
c0de91da:	634a      	str	r2, [r1, #52]	@ 0x34
c0de91dc:	2202      	movs	r2, #2
c0de91de:	2d00      	cmp	r5, #0
c0de91e0:	463e      	mov	r6, r7
c0de91e2:	bf08      	it	eq
c0de91e4:	2201      	moveq	r2, #1
c0de91e6:	2f00      	cmp	r7, #0
c0de91e8:	bf18      	it	ne
c0de91ea:	2601      	movne	r6, #1
c0de91ec:	f991 3031 	ldrsb.w	r3, [r1, #49]	@ 0x31
c0de91f0:	b183      	cbz	r3, c0de9214 <displayHomePage+0x4c>
c0de91f2:	2401      	movs	r4, #1
c0de91f4:	2d00      	cmp	r5, #0
c0de91f6:	bf08      	it	eq
c0de91f8:	24ff      	moveq	r4, #255	@ 0xff
c0de91fa:	429c      	cmp	r4, r3
c0de91fc:	d111      	bne.n	c0de9222 <displayHomePage+0x5a>
c0de91fe:	eb09 0400 	add.w	r4, r9, r0
c0de9202:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de9206:	f002 fdf5 	bl	c0debdf4 <pic>
c0de920a:	4602      	mov	r2, r0
c0de920c:	6ce0      	ldr	r0, [r4, #76]	@ 0x4c
c0de920e:	6880      	ldr	r0, [r0, #8]
c0de9210:	6360      	str	r0, [r4, #52]	@ 0x34
c0de9212:	e004      	b.n	c0de921e <displayHomePage+0x56>
c0de9214:	eb09 0100 	add.w	r1, r9, r0
c0de9218:	e9d1 520f 	ldrd	r5, r2, [r1, #60]	@ 0x3c
c0de921c:	b312      	cbz	r2, c0de9264 <displayHomePage+0x9c>
c0de921e:	2300      	movs	r3, #0
c0de9220:	e02c      	b.n	c0de927c <displayHomePage+0xb4>
c0de9222:	2f00      	cmp	r7, #0
c0de9224:	4614      	mov	r4, r2
c0de9226:	bf08      	it	eq
c0de9228:	24ff      	moveq	r4, #255	@ 0xff
c0de922a:	429c      	cmp	r4, r3
c0de922c:	d109      	bne.n	c0de9242 <displayHomePage+0x7a>
c0de922e:	491c      	ldr	r1, [pc, #112]	@ (c0de92a0 <displayHomePage+0xd8>)
c0de9230:	4448      	add	r0, r9
c0de9232:	2300      	movs	r3, #0
c0de9234:	4479      	add	r1, pc
c0de9236:	6341      	str	r1, [r0, #52]	@ 0x34
c0de9238:	4d1a      	ldr	r5, [pc, #104]	@ (c0de92a4 <displayHomePage+0xdc>)
c0de923a:	4a1b      	ldr	r2, [pc, #108]	@ (c0de92a8 <displayHomePage+0xe0>)
c0de923c:	447d      	add	r5, pc
c0de923e:	447a      	add	r2, pc
c0de9240:	e01c      	b.n	c0de927c <displayHomePage+0xb4>
c0de9242:	6c89      	ldr	r1, [r1, #72]	@ 0x48
c0de9244:	4432      	add	r2, r6
c0de9246:	4448      	add	r0, r9
c0de9248:	2900      	cmp	r1, #0
c0de924a:	bf08      	it	eq
c0de924c:	22ff      	moveq	r2, #255	@ 0xff
c0de924e:	429a      	cmp	r2, r3
c0de9250:	d10d      	bne.n	c0de926e <displayHomePage+0xa6>
c0de9252:	4916      	ldr	r1, [pc, #88]	@ (c0de92ac <displayHomePage+0xe4>)
c0de9254:	2300      	movs	r3, #0
c0de9256:	4479      	add	r1, pc
c0de9258:	6341      	str	r1, [r0, #52]	@ 0x34
c0de925a:	4d15      	ldr	r5, [pc, #84]	@ (c0de92b0 <displayHomePage+0xe8>)
c0de925c:	4a15      	ldr	r2, [pc, #84]	@ (c0de92b4 <displayHomePage+0xec>)
c0de925e:	447d      	add	r5, pc
c0de9260:	447a      	add	r2, pc
c0de9262:	e00b      	b.n	c0de927c <displayHomePage+0xb4>
c0de9264:	4448      	add	r0, r9
c0de9266:	6b82      	ldr	r2, [r0, #56]	@ 0x38
c0de9268:	4b0c      	ldr	r3, [pc, #48]	@ (c0de929c <displayHomePage+0xd4>)
c0de926a:	447b      	add	r3, pc
c0de926c:	e006      	b.n	c0de927c <displayHomePage+0xb4>
c0de926e:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de9270:	2300      	movs	r3, #0
c0de9272:	6341      	str	r1, [r0, #52]	@ 0x34
c0de9274:	4d10      	ldr	r5, [pc, #64]	@ (c0de92b8 <displayHomePage+0xf0>)
c0de9276:	4a11      	ldr	r2, [pc, #68]	@ (c0de92bc <displayHomePage+0xf4>)
c0de9278:	447d      	add	r5, pc
c0de927a:	447a      	add	r2, pc
c0de927c:	4910      	ldr	r1, [pc, #64]	@ (c0de92c0 <displayHomePage+0xf8>)
c0de927e:	2000      	movs	r0, #0
c0de9280:	9002      	str	r0, [sp, #8]
c0de9282:	4479      	add	r1, pc
c0de9284:	e9cd 1000 	strd	r1, r0, [sp]
c0de9288:	4640      	mov	r0, r8
c0de928a:	4629      	mov	r1, r5
c0de928c:	f7ff f9f2 	bl	c0de8674 <drawStep>
c0de9290:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de9294:	f7fd ba36 	b.w	c0de6704 <nbgl_refresh>
c0de9298:	000027dc 	.word	0x000027dc
c0de929c:	000038e5 	.word	0x000038e5
c0de92a0:	0000008d 	.word	0x0000008d
c0de92a4:	0000350f 	.word	0x0000350f
c0de92a8:	000037eb 	.word	0x000037eb
c0de92ac:	00000073 	.word	0x00000073
c0de92b0:	00003458 	.word	0x00003458
c0de92b4:	00003899 	.word	0x00003899
c0de92b8:	00003461 	.word	0x00003461
c0de92bc:	000038e2 	.word	0x000038e2
c0de92c0:	0000006b 	.word	0x0000006b

c0de92c4 <startUseCaseSettings>:
c0de92c4:	2000      	movs	r0, #0
c0de92c6:	f7fe bfcb 	b.w	c0de8260 <startUseCaseSettingsAtPage>
	...

c0de92cc <startUseCaseInfo>:
c0de92cc:	4807      	ldr	r0, [pc, #28]	@ (c0de92ec <startUseCaseInfo+0x20>)
c0de92ce:	210d      	movs	r1, #13
c0de92d0:	4448      	add	r0, r9
c0de92d2:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de92d6:	2100      	movs	r1, #0
c0de92d8:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de92dc:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de92de:	7b09      	ldrb	r1, [r1, #12]
c0de92e0:	3101      	adds	r1, #1
c0de92e2:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de92e6:	2000      	movs	r0, #0
c0de92e8:	f000 b810 	b.w	c0de930c <displayInfoPage>
c0de92ec:	000027dc 	.word	0x000027dc

c0de92f0 <homeCallback>:
c0de92f0:	b5e0      	push	{r5, r6, r7, lr}
c0de92f2:	4608      	mov	r0, r1
c0de92f4:	f10d 0107 	add.w	r1, sp, #7
c0de92f8:	f7ff fed6 	bl	c0de90a8 <buttonGenericCallback>
c0de92fc:	b128      	cbz	r0, c0de930a <homeCallback+0x1a>
c0de92fe:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de9302:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de9306:	f7ff bf5f 	b.w	c0de91c8 <displayHomePage>
c0de930a:	bd8c      	pop	{r2, r3, r7, pc}

c0de930c <displayInfoPage>:
c0de930c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de930e:	4604      	mov	r4, r0
c0de9310:	4816      	ldr	r0, [pc, #88]	@ (c0de936c <displayInfoPage+0x60>)
c0de9312:	f000 fb43 	bl	c0de999c <OUTLINED_FUNCTION_2>
c0de9316:	dd11      	ble.n	c0de933c <displayInfoPage+0x30>
c0de9318:	eb09 0700 	add.w	r7, r9, r0
c0de931c:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de931e:	6800      	ldr	r0, [r0, #0]
c0de9320:	4e13      	ldr	r6, [pc, #76]	@ (c0de9370 <displayInfoPage+0x64>)
c0de9322:	447e      	add	r6, pc
c0de9324:	47b0      	blx	r6
c0de9326:	f000 fb55 	bl	c0de99d4 <OUTLINED_FUNCTION_8>
c0de932a:	4605      	mov	r5, r0
c0de932c:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de932e:	6840      	ldr	r0, [r0, #4]
c0de9330:	47b0      	blx	r6
c0de9332:	f000 fb4f 	bl	c0de99d4 <OUTLINED_FUNCTION_8>
c0de9336:	4603      	mov	r3, r0
c0de9338:	2100      	movs	r1, #0
c0de933a:	e008      	b.n	c0de934e <displayInfoPage+0x42>
c0de933c:	490d      	ldr	r1, [pc, #52]	@ (c0de9374 <displayInfoPage+0x68>)
c0de933e:	4448      	add	r0, r9
c0de9340:	2300      	movs	r3, #0
c0de9342:	4479      	add	r1, pc
c0de9344:	6341      	str	r1, [r0, #52]	@ 0x34
c0de9346:	490c      	ldr	r1, [pc, #48]	@ (c0de9378 <displayInfoPage+0x6c>)
c0de9348:	4d0c      	ldr	r5, [pc, #48]	@ (c0de937c <displayInfoPage+0x70>)
c0de934a:	4479      	add	r1, pc
c0de934c:	447d      	add	r5, pc
c0de934e:	4e0c      	ldr	r6, [pc, #48]	@ (c0de9380 <displayInfoPage+0x74>)
c0de9350:	2002      	movs	r0, #2
c0de9352:	2200      	movs	r2, #0
c0de9354:	9002      	str	r0, [sp, #8]
c0de9356:	4620      	mov	r0, r4
c0de9358:	447e      	add	r6, pc
c0de935a:	e9cd 6200 	strd	r6, r2, [sp]
c0de935e:	462a      	mov	r2, r5
c0de9360:	f7ff f988 	bl	c0de8674 <drawStep>
c0de9364:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de9368:	f7fd b9cc 	b.w	c0de6704 <nbgl_refresh>
c0de936c:	000027dc 	.word	0x000027dc
c0de9370:	00002acf 	.word	0x00002acf
c0de9374:	ffffef93 	.word	0xffffef93
c0de9378:	000033de 	.word	0x000033de
c0de937c:	00003775 	.word	0x00003775
c0de9380:	00000029 	.word	0x00000029

c0de9384 <infoCallback>:
c0de9384:	b5e0      	push	{r5, r6, r7, lr}
c0de9386:	4608      	mov	r0, r1
c0de9388:	f10d 0107 	add.w	r1, sp, #7
c0de938c:	f7ff fe8c 	bl	c0de90a8 <buttonGenericCallback>
c0de9390:	b128      	cbz	r0, c0de939e <infoCallback+0x1a>
c0de9392:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de9396:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de939a:	f7ff bfb7 	b.w	c0de930c <displayInfoPage>
c0de939e:	bd8c      	pop	{r2, r3, r7, pc}

c0de93a0 <displayWarningStep>:
c0de93a0:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de93a2:	2000      	movs	r0, #0
c0de93a4:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de93a8:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de93ac:	4817      	ldr	r0, [pc, #92]	@ (c0de940c <displayWarningStep+0x6c>)
c0de93ae:	eb09 0100 	add.w	r1, r9, r0
c0de93b2:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de93b6:	b169      	cbz	r1, c0de93d4 <displayWarningStep+0x34>
c0de93b8:	4448      	add	r0, r9
c0de93ba:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de93be:	3801      	subs	r0, #1
c0de93c0:	4288      	cmp	r0, r1
c0de93c2:	d112      	bne.n	c0de93ea <displayWarningStep+0x4a>
c0de93c4:	aa02      	add	r2, sp, #8
c0de93c6:	2000      	movs	r0, #0
c0de93c8:	f102 0108 	add.w	r1, r2, #8
c0de93cc:	f000 f828 	bl	c0de9420 <getLastPageInfo>
c0de93d0:	200a      	movs	r0, #10
c0de93d2:	e00b      	b.n	c0de93ec <displayWarningStep+0x4c>
c0de93d4:	480e      	ldr	r0, [pc, #56]	@ (c0de9410 <displayWarningStep+0x70>)
c0de93d6:	4478      	add	r0, pc
c0de93d8:	9003      	str	r0, [sp, #12]
c0de93da:	480e      	ldr	r0, [pc, #56]	@ (c0de9414 <displayWarningStep+0x74>)
c0de93dc:	4478      	add	r0, pc
c0de93de:	9002      	str	r0, [sp, #8]
c0de93e0:	480d      	ldr	r0, [pc, #52]	@ (c0de9418 <displayWarningStep+0x78>)
c0de93e2:	4478      	add	r0, pc
c0de93e4:	9004      	str	r0, [sp, #16]
c0de93e6:	2001      	movs	r0, #1
c0de93e8:	e000      	b.n	c0de93ec <displayWarningStep+0x4c>
c0de93ea:	2000      	movs	r0, #0
c0de93ec:	2101      	movs	r1, #1
c0de93ee:	2200      	movs	r2, #0
c0de93f0:	f88d 1015 	strb.w	r1, [sp, #21]
c0de93f4:	2100      	movs	r1, #0
c0de93f6:	9100      	str	r1, [sp, #0]
c0de93f8:	4908      	ldr	r1, [pc, #32]	@ (c0de941c <displayWarningStep+0x7c>)
c0de93fa:	ab02      	add	r3, sp, #8
c0de93fc:	4479      	add	r1, pc
c0de93fe:	f7fe fd1f 	bl	c0de7e40 <nbgl_stepDrawCenteredInfo>
c0de9402:	f7fd f97f 	bl	c0de6704 <nbgl_refresh>
c0de9406:	b006      	add	sp, #24
c0de9408:	bd80      	pop	{r7, pc}
c0de940a:	bf00      	nop
c0de940c:	000027dc 	.word	0x000027dc
c0de9410:	00003541 	.word	0x00003541
c0de9414:	0000367f 	.word	0x0000367f
c0de9418:	00003408 	.word	0x00003408
c0de941c:	00000149 	.word	0x00000149

c0de9420 <getLastPageInfo>:
c0de9420:	b170      	cbz	r0, c0de9440 <getLastPageInfo+0x20>
c0de9422:	4833      	ldr	r0, [pc, #204]	@ (c0de94f0 <getLastPageInfo+0xd0>)
c0de9424:	4478      	add	r0, pc
c0de9426:	6008      	str	r0, [r1, #0]
c0de9428:	4830      	ldr	r0, [pc, #192]	@ (c0de94ec <getLastPageInfo+0xcc>)
c0de942a:	eb09 0100 	add.w	r1, r9, r0
c0de942e:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de9432:	2904      	cmp	r1, #4
c0de9434:	d113      	bne.n	c0de945e <getLastPageInfo+0x3e>
c0de9436:	482f      	ldr	r0, [pc, #188]	@ (c0de94f4 <getLastPageInfo+0xd4>)
c0de9438:	492f      	ldr	r1, [pc, #188]	@ (c0de94f8 <getLastPageInfo+0xd8>)
c0de943a:	4478      	add	r0, pc
c0de943c:	4479      	add	r1, pc
c0de943e:	e04f      	b.n	c0de94e0 <getLastPageInfo+0xc0>
c0de9440:	4838      	ldr	r0, [pc, #224]	@ (c0de9524 <getLastPageInfo+0x104>)
c0de9442:	4478      	add	r0, pc
c0de9444:	6008      	str	r0, [r1, #0]
c0de9446:	4829      	ldr	r0, [pc, #164]	@ (c0de94ec <getLastPageInfo+0xcc>)
c0de9448:	eb09 0100 	add.w	r1, r9, r0
c0de944c:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de9450:	2904      	cmp	r1, #4
c0de9452:	d10b      	bne.n	c0de946c <getLastPageInfo+0x4c>
c0de9454:	4834      	ldr	r0, [pc, #208]	@ (c0de9528 <getLastPageInfo+0x108>)
c0de9456:	4935      	ldr	r1, [pc, #212]	@ (c0de952c <getLastPageInfo+0x10c>)
c0de9458:	4478      	add	r0, pc
c0de945a:	4479      	add	r1, pc
c0de945c:	e040      	b.n	c0de94e0 <getLastPageInfo+0xc0>
c0de945e:	eb09 0100 	add.w	r1, r9, r0
c0de9462:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de9464:	b171      	cbz	r1, c0de9484 <getLastPageInfo+0x64>
c0de9466:	4825      	ldr	r0, [pc, #148]	@ (c0de94fc <getLastPageInfo+0xdc>)
c0de9468:	4478      	add	r0, pc
c0de946a:	e039      	b.n	c0de94e0 <getLastPageInfo+0xc0>
c0de946c:	4448      	add	r0, r9
c0de946e:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de9470:	f010 0007 	ands.w	r0, r0, #7
c0de9474:	d017      	beq.n	c0de94a6 <getLastPageInfo+0x86>
c0de9476:	2801      	cmp	r0, #1
c0de9478:	d11a      	bne.n	c0de94b0 <getLastPageInfo+0x90>
c0de947a:	482f      	ldr	r0, [pc, #188]	@ (c0de9538 <getLastPageInfo+0x118>)
c0de947c:	492f      	ldr	r1, [pc, #188]	@ (c0de953c <getLastPageInfo+0x11c>)
c0de947e:	4478      	add	r0, pc
c0de9480:	4479      	add	r1, pc
c0de9482:	e02d      	b.n	c0de94e0 <getLastPageInfo+0xc0>
c0de9484:	4448      	add	r0, r9
c0de9486:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de9488:	f000 0107 	and.w	r1, r0, #7
c0de948c:	2901      	cmp	r1, #1
c0de948e:	d014      	beq.n	c0de94ba <getLastPageInfo+0x9a>
c0de9490:	b9e9      	cbnz	r1, c0de94ce <getLastPageInfo+0xae>
c0de9492:	0640      	lsls	r0, r0, #25
c0de9494:	481a      	ldr	r0, [pc, #104]	@ (c0de9500 <getLastPageInfo+0xe0>)
c0de9496:	491b      	ldr	r1, [pc, #108]	@ (c0de9504 <getLastPageInfo+0xe4>)
c0de9498:	4478      	add	r0, pc
c0de949a:	4479      	add	r1, pc
c0de949c:	bf58      	it	pl
c0de949e:	4601      	movpl	r1, r0
c0de94a0:	4819      	ldr	r0, [pc, #100]	@ (c0de9508 <getLastPageInfo+0xe8>)
c0de94a2:	4478      	add	r0, pc
c0de94a4:	e01c      	b.n	c0de94e0 <getLastPageInfo+0xc0>
c0de94a6:	4822      	ldr	r0, [pc, #136]	@ (c0de9530 <getLastPageInfo+0x110>)
c0de94a8:	4922      	ldr	r1, [pc, #136]	@ (c0de9534 <getLastPageInfo+0x114>)
c0de94aa:	4478      	add	r0, pc
c0de94ac:	4479      	add	r1, pc
c0de94ae:	e017      	b.n	c0de94e0 <getLastPageInfo+0xc0>
c0de94b0:	4823      	ldr	r0, [pc, #140]	@ (c0de9540 <getLastPageInfo+0x120>)
c0de94b2:	4924      	ldr	r1, [pc, #144]	@ (c0de9544 <getLastPageInfo+0x124>)
c0de94b4:	4478      	add	r0, pc
c0de94b6:	4479      	add	r1, pc
c0de94b8:	e012      	b.n	c0de94e0 <getLastPageInfo+0xc0>
c0de94ba:	0640      	lsls	r0, r0, #25
c0de94bc:	4813      	ldr	r0, [pc, #76]	@ (c0de950c <getLastPageInfo+0xec>)
c0de94be:	4914      	ldr	r1, [pc, #80]	@ (c0de9510 <getLastPageInfo+0xf0>)
c0de94c0:	4478      	add	r0, pc
c0de94c2:	4479      	add	r1, pc
c0de94c4:	bf58      	it	pl
c0de94c6:	4601      	movpl	r1, r0
c0de94c8:	4812      	ldr	r0, [pc, #72]	@ (c0de9514 <getLastPageInfo+0xf4>)
c0de94ca:	4478      	add	r0, pc
c0de94cc:	e008      	b.n	c0de94e0 <getLastPageInfo+0xc0>
c0de94ce:	0640      	lsls	r0, r0, #25
c0de94d0:	4811      	ldr	r0, [pc, #68]	@ (c0de9518 <getLastPageInfo+0xf8>)
c0de94d2:	4912      	ldr	r1, [pc, #72]	@ (c0de951c <getLastPageInfo+0xfc>)
c0de94d4:	4478      	add	r0, pc
c0de94d6:	4479      	add	r1, pc
c0de94d8:	bf58      	it	pl
c0de94da:	4601      	movpl	r1, r0
c0de94dc:	4810      	ldr	r0, [pc, #64]	@ (c0de9520 <getLastPageInfo+0x100>)
c0de94de:	4478      	add	r0, pc
c0de94e0:	6011      	str	r1, [r2, #0]
c0de94e2:	4902      	ldr	r1, [pc, #8]	@ (c0de94ec <getLastPageInfo+0xcc>)
c0de94e4:	4449      	add	r1, r9
c0de94e6:	6348      	str	r0, [r1, #52]	@ 0x34
c0de94e8:	4770      	bx	lr
c0de94ea:	bf00      	nop
c0de94ec:	000027dc 	.word	0x000027dc
c0de94f0:	000033a3 	.word	0x000033a3
c0de94f4:	000001a7 	.word	0x000001a7
c0de94f8:	00003729 	.word	0x00003729
c0de94fc:	00000179 	.word	0x00000179
c0de9500:	000034ee 	.word	0x000034ee
c0de9504:	0000359c 	.word	0x0000359c
c0de9508:	0000013f 	.word	0x0000013f
c0de950c:	000034aa 	.word	0x000034aa
c0de9510:	000034ef 	.word	0x000034ef
c0de9514:	00000117 	.word	0x00000117
c0de9518:	0000362e 	.word	0x0000362e
c0de951c:	00003599 	.word	0x00003599
c0de9520:	00000103 	.word	0x00000103
c0de9524:	0000332c 	.word	0x0000332c
c0de9528:	0000019d 	.word	0x0000019d
c0de952c:	0000359a 	.word	0x0000359a
c0de9530:	0000014b 	.word	0x0000014b
c0de9534:	000034eb 	.word	0x000034eb
c0de9538:	00000177 	.word	0x00000177
c0de953c:	00003694 	.word	0x00003694
c0de9540:	00000141 	.word	0x00000141
c0de9544:	0000366d 	.word	0x0000366d

c0de9548 <warningNavigate>:
c0de9548:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de954a:	2904      	cmp	r1, #4
c0de954c:	d00a      	beq.n	c0de9564 <warningNavigate+0x1c>
c0de954e:	2901      	cmp	r1, #1
c0de9550:	d01c      	beq.n	c0de958c <warningNavigate+0x44>
c0de9552:	2900      	cmp	r1, #0
c0de9554:	d13d      	bne.n	c0de95d2 <warningNavigate+0x8a>
c0de9556:	4822      	ldr	r0, [pc, #136]	@ (c0de95e0 <warningNavigate+0x98>)
c0de9558:	4448      	add	r0, r9
c0de955a:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de955e:	b320      	cbz	r0, c0de95aa <warningNavigate+0x62>
c0de9560:	3801      	subs	r0, #1
c0de9562:	e01e      	b.n	c0de95a2 <warningNavigate+0x5a>
c0de9564:	481e      	ldr	r0, [pc, #120]	@ (c0de95e0 <warningNavigate+0x98>)
c0de9566:	eb09 0100 	add.w	r1, r9, r0
c0de956a:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de956e:	b301      	cbz	r1, c0de95b2 <warningNavigate+0x6a>
c0de9570:	eb09 0200 	add.w	r2, r9, r0
c0de9574:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de9578:	3a01      	subs	r2, #1
c0de957a:	428a      	cmp	r2, r1
c0de957c:	d129      	bne.n	c0de95d2 <warningNavigate+0x8a>
c0de957e:	4448      	add	r0, r9
c0de9580:	6a01      	ldr	r1, [r0, #32]
c0de9582:	2000      	movs	r0, #0
c0de9584:	b004      	add	sp, #16
c0de9586:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de958a:	4708      	bx	r1
c0de958c:	4814      	ldr	r0, [pc, #80]	@ (c0de95e0 <warningNavigate+0x98>)
c0de958e:	eb09 0100 	add.w	r1, r9, r0
c0de9592:	f891 0026 	ldrb.w	r0, [r1, #38]	@ 0x26
c0de9596:	f891 1027 	ldrb.w	r1, [r1, #39]	@ 0x27
c0de959a:	3901      	subs	r1, #1
c0de959c:	4281      	cmp	r1, r0
c0de959e:	dd04      	ble.n	c0de95aa <warningNavigate+0x62>
c0de95a0:	3001      	adds	r0, #1
c0de95a2:	490f      	ldr	r1, [pc, #60]	@ (c0de95e0 <warningNavigate+0x98>)
c0de95a4:	4449      	add	r1, r9
c0de95a6:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de95aa:	e8bd 407f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, lr}
c0de95ae:	f7ff bef7 	b.w	c0de93a0 <displayWarningStep>
c0de95b2:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de95b6:	2905      	cmp	r1, #5
c0de95b8:	d00c      	beq.n	c0de95d4 <warningNavigate+0x8c>
c0de95ba:	2902      	cmp	r1, #2
c0de95bc:	d109      	bne.n	c0de95d2 <warningNavigate+0x8a>
c0de95be:	4448      	add	r0, r9
c0de95c0:	1d06      	adds	r6, r0, #4
c0de95c2:	6a00      	ldr	r0, [r0, #32]
c0de95c4:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de95c6:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de95ca:	9003      	str	r0, [sp, #12]
c0de95cc:	2002      	movs	r0, #2
c0de95ce:	f7fe fed9 	bl	c0de8384 <useCaseReview>
c0de95d2:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de95d4:	2000      	movs	r0, #0
c0de95d6:	b004      	add	sp, #16
c0de95d8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de95dc:	f7ff b966 	b.w	c0de88ac <displayStreamingReviewPage>
c0de95e0:	000027dc 	.word	0x000027dc

c0de95e4 <onReviewAccept>:
c0de95e4:	4803      	ldr	r0, [pc, #12]	@ (c0de95f4 <onReviewAccept+0x10>)
c0de95e6:	4448      	add	r0, r9
c0de95e8:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de95ea:	b109      	cbz	r1, c0de95f0 <onReviewAccept+0xc>
c0de95ec:	2001      	movs	r0, #1
c0de95ee:	4708      	bx	r1
c0de95f0:	4770      	bx	lr
c0de95f2:	bf00      	nop
c0de95f4:	000027dc 	.word	0x000027dc

c0de95f8 <onReviewReject>:
c0de95f8:	4803      	ldr	r0, [pc, #12]	@ (c0de9608 <onReviewReject+0x10>)
c0de95fa:	4448      	add	r0, r9
c0de95fc:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de95fe:	b109      	cbz	r1, c0de9604 <onReviewReject+0xc>
c0de9600:	2000      	movs	r0, #0
c0de9602:	4708      	bx	r1
c0de9604:	4770      	bx	lr
c0de9606:	bf00      	nop
c0de9608:	000027dc 	.word	0x000027dc

c0de960c <displayAliasFullValue>:
c0de960c:	b570      	push	{r4, r5, r6, lr}
c0de960e:	b088      	sub	sp, #32
c0de9610:	4c17      	ldr	r4, [pc, #92]	@ (c0de9670 <displayAliasFullValue+0x64>)
c0de9612:	f10d 0213 	add.w	r2, sp, #19
c0de9616:	eb09 0504 	add.w	r5, r9, r4
c0de961a:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de961c:	f895 105b 	ldrb.w	r1, [r5, #91]	@ 0x5b
c0de9620:	ab05      	add	r3, sp, #20
c0de9622:	f105 0660 	add.w	r6, r5, #96	@ 0x60
c0de9626:	9202      	str	r2, [sp, #8]
c0de9628:	e9cd 6300 	strd	r6, r3, [sp]
c0de962c:	aa07      	add	r2, sp, #28
c0de962e:	ab06      	add	r3, sp, #24
c0de9630:	f7ff fc60 	bl	c0de8ef4 <getPairData>
c0de9634:	6e28      	ldr	r0, [r5, #96]	@ 0x60
c0de9636:	b170      	cbz	r0, c0de9656 <displayAliasFullValue+0x4a>
c0de9638:	eb09 0104 	add.w	r1, r9, r4
c0de963c:	2200      	movs	r2, #0
c0de963e:	664a      	str	r2, [r1, #100]	@ 0x64
c0de9640:	f881 205c 	strb.w	r2, [r1, #92]	@ 0x5c
c0de9644:	7d01      	ldrb	r1, [r0, #20]
c0de9646:	2901      	cmp	r1, #1
c0de9648:	d007      	beq.n	c0de965a <displayAliasFullValue+0x4e>
c0de964a:	2904      	cmp	r1, #4
c0de964c:	d103      	bne.n	c0de9656 <displayAliasFullValue+0x4a>
c0de964e:	6900      	ldr	r0, [r0, #16]
c0de9650:	7b00      	ldrb	r0, [r0, #12]
c0de9652:	3001      	adds	r0, #1
c0de9654:	e002      	b.n	c0de965c <displayAliasFullValue+0x50>
c0de9656:	b008      	add	sp, #32
c0de9658:	bd70      	pop	{r4, r5, r6, pc}
c0de965a:	2002      	movs	r0, #2
c0de965c:	eb09 0104 	add.w	r1, r9, r4
c0de9660:	f881 005d 	strb.w	r0, [r1, #93]	@ 0x5d
c0de9664:	2000      	movs	r0, #0
c0de9666:	b008      	add	sp, #32
c0de9668:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de966c:	f000 b810 	b.w	c0de9690 <displayExtensionStep>
c0de9670:	000027dc 	.word	0x000027dc

c0de9674 <reviewCallback>:
c0de9674:	b5e0      	push	{r5, r6, r7, lr}
c0de9676:	4608      	mov	r0, r1
c0de9678:	f10d 0107 	add.w	r1, sp, #7
c0de967c:	f7ff fd14 	bl	c0de90a8 <buttonGenericCallback>
c0de9680:	b128      	cbz	r0, c0de968e <reviewCallback+0x1a>
c0de9682:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de9686:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de968a:	f7fe bf47 	b.w	c0de851c <displayReviewPage>
c0de968e:	bd8c      	pop	{r2, r3, r7, pc}

c0de9690 <displayExtensionStep>:
c0de9690:	b5b0      	push	{r4, r5, r7, lr}
c0de9692:	b088      	sub	sp, #32
c0de9694:	4d28      	ldr	r5, [pc, #160]	@ (c0de9738 <displayExtensionStep+0xa8>)
c0de9696:	4604      	mov	r4, r0
c0de9698:	2000      	movs	r0, #0
c0de969a:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de969e:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de96a2:	eb09 0005 	add.w	r0, r9, r5
c0de96a6:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de96a8:	b108      	cbz	r0, c0de96ae <displayExtensionStep+0x1e>
c0de96aa:	f7fe fcef 	bl	c0de808c <nbgl_stepRelease>
c0de96ae:	eb09 0005 	add.w	r0, r9, r5
c0de96b2:	f890 105c 	ldrb.w	r1, [r0, #92]	@ 0x5c
c0de96b6:	f890 005d 	ldrb.w	r0, [r0, #93]	@ 0x5d
c0de96ba:	3801      	subs	r0, #1
c0de96bc:	4288      	cmp	r0, r1
c0de96be:	dd0f      	ble.n	c0de96e0 <displayExtensionStep+0x50>
c0de96c0:	2003      	movs	r0, #3
c0de96c2:	eb09 0205 	add.w	r2, r9, r5
c0de96c6:	2900      	cmp	r1, #0
c0de96c8:	bf08      	it	eq
c0de96ca:	2001      	moveq	r0, #1
c0de96cc:	6e12      	ldr	r2, [r2, #96]	@ 0x60
c0de96ce:	4320      	orrs	r0, r4
c0de96d0:	7d13      	ldrb	r3, [r2, #20]
c0de96d2:	2b04      	cmp	r3, #4
c0de96d4:	d018      	beq.n	c0de9708 <displayExtensionStep+0x78>
c0de96d6:	2b01      	cmp	r3, #1
c0de96d8:	d129      	bne.n	c0de972e <displayExtensionStep+0x9e>
c0de96da:	6811      	ldr	r1, [r2, #0]
c0de96dc:	6893      	ldr	r3, [r2, #8]
c0de96de:	e01a      	b.n	c0de9716 <displayExtensionStep+0x86>
c0de96e0:	d125      	bne.n	c0de972e <displayExtensionStep+0x9e>
c0de96e2:	2001      	movs	r0, #1
c0de96e4:	2200      	movs	r2, #0
c0de96e6:	f88d 001d 	strb.w	r0, [sp, #29]
c0de96ea:	4915      	ldr	r1, [pc, #84]	@ (c0de9740 <displayExtensionStep+0xb0>)
c0de96ec:	4479      	add	r1, pc
c0de96ee:	9104      	str	r1, [sp, #16]
c0de96f0:	4914      	ldr	r1, [pc, #80]	@ (c0de9744 <displayExtensionStep+0xb4>)
c0de96f2:	9000      	str	r0, [sp, #0]
c0de96f4:	f044 0002 	orr.w	r0, r4, #2
c0de96f8:	4479      	add	r1, pc
c0de96fa:	9106      	str	r1, [sp, #24]
c0de96fc:	4912      	ldr	r1, [pc, #72]	@ (c0de9748 <displayExtensionStep+0xb8>)
c0de96fe:	ab04      	add	r3, sp, #16
c0de9700:	4479      	add	r1, pc
c0de9702:	f7fe fb9d 	bl	c0de7e40 <nbgl_stepDrawCenteredInfo>
c0de9706:	e00f      	b.n	c0de9728 <displayExtensionStep+0x98>
c0de9708:	6912      	ldr	r2, [r2, #16]
c0de970a:	e9d2 3200 	ldrd	r3, r2, [r2]
c0de970e:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
c0de9712:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
c0de9716:	2201      	movs	r2, #1
c0de9718:	e9cd 1200 	strd	r1, r2, [sp]
c0de971c:	9202      	str	r2, [sp, #8]
c0de971e:	2200      	movs	r2, #0
c0de9720:	4906      	ldr	r1, [pc, #24]	@ (c0de973c <displayExtensionStep+0xac>)
c0de9722:	4479      	add	r1, pc
c0de9724:	f7fe fa46 	bl	c0de7bb4 <nbgl_stepDrawText>
c0de9728:	eb09 0105 	add.w	r1, r9, r5
c0de972c:	6648      	str	r0, [r1, #100]	@ 0x64
c0de972e:	f7fc ffe9 	bl	c0de6704 <nbgl_refresh>
c0de9732:	b008      	add	sp, #32
c0de9734:	bdb0      	pop	{r4, r5, r7, pc}
c0de9736:	bf00      	nop
c0de9738:	000027dc 	.word	0x000027dc
c0de973c:	00000027 	.word	0x00000027
c0de9740:	000033d5 	.word	0x000033d5
c0de9744:	00003030 	.word	0x00003030
c0de9748:	00000049 	.word	0x00000049

c0de974c <extensionNavigate>:
c0de974c:	b580      	push	{r7, lr}
c0de974e:	2904      	cmp	r1, #4
c0de9750:	d00a      	beq.n	c0de9768 <extensionNavigate+0x1c>
c0de9752:	2901      	cmp	r1, #1
c0de9754:	d01d      	beq.n	c0de9792 <extensionNavigate+0x46>
c0de9756:	b9d9      	cbnz	r1, c0de9790 <extensionNavigate+0x44>
c0de9758:	481a      	ldr	r0, [pc, #104]	@ (c0de97c4 <extensionNavigate+0x78>)
c0de975a:	4448      	add	r0, r9
c0de975c:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de9760:	b350      	cbz	r0, c0de97b8 <extensionNavigate+0x6c>
c0de9762:	1e41      	subs	r1, r0, #1
c0de9764:	2008      	movs	r0, #8
c0de9766:	e020      	b.n	c0de97aa <extensionNavigate+0x5e>
c0de9768:	4816      	ldr	r0, [pc, #88]	@ (c0de97c4 <extensionNavigate+0x78>)
c0de976a:	eb09 0100 	add.w	r1, r9, r0
c0de976e:	f891 205c 	ldrb.w	r2, [r1, #92]	@ 0x5c
c0de9772:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de9776:	3901      	subs	r1, #1
c0de9778:	4291      	cmp	r1, r2
c0de977a:	d109      	bne.n	c0de9790 <extensionNavigate+0x44>
c0de977c:	4448      	add	r0, r9
c0de977e:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de9780:	f7fe fc84 	bl	c0de808c <nbgl_stepRelease>
c0de9784:	f7fd ffe0 	bl	c0de7748 <nbgl_screenRedraw>
c0de9788:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de978c:	f7fc bfba 	b.w	c0de6704 <nbgl_refresh>
c0de9790:	bd80      	pop	{r7, pc}
c0de9792:	480c      	ldr	r0, [pc, #48]	@ (c0de97c4 <extensionNavigate+0x78>)
c0de9794:	eb09 0100 	add.w	r1, r9, r0
c0de9798:	f891 005c 	ldrb.w	r0, [r1, #92]	@ 0x5c
c0de979c:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de97a0:	3901      	subs	r1, #1
c0de97a2:	4281      	cmp	r1, r0
c0de97a4:	dd06      	ble.n	c0de97b4 <extensionNavigate+0x68>
c0de97a6:	1c41      	adds	r1, r0, #1
c0de97a8:	2000      	movs	r0, #0
c0de97aa:	4a06      	ldr	r2, [pc, #24]	@ (c0de97c4 <extensionNavigate+0x78>)
c0de97ac:	444a      	add	r2, r9
c0de97ae:	f882 105c 	strb.w	r1, [r2, #92]	@ 0x5c
c0de97b2:	e002      	b.n	c0de97ba <extensionNavigate+0x6e>
c0de97b4:	2000      	movs	r0, #0
c0de97b6:	e000      	b.n	c0de97ba <extensionNavigate+0x6e>
c0de97b8:	2008      	movs	r0, #8
c0de97ba:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de97be:	f7ff bf67 	b.w	c0de9690 <displayExtensionStep>
c0de97c2:	bf00      	nop
c0de97c4:	000027dc 	.word	0x000027dc

c0de97c8 <statusTickerCallback>:
c0de97c8:	4802      	ldr	r0, [pc, #8]	@ (c0de97d4 <statusTickerCallback+0xc>)
c0de97ca:	4448      	add	r0, r9
c0de97cc:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de97ce:	b100      	cbz	r0, c0de97d2 <statusTickerCallback+0xa>
c0de97d0:	4700      	bx	r0
c0de97d2:	4770      	bx	lr
c0de97d4:	000027dc 	.word	0x000027dc

c0de97d8 <getChoiceName>:
c0de97d8:	b5b0      	push	{r4, r5, r7, lr}
c0de97da:	b08e      	sub	sp, #56	@ 0x38
c0de97dc:	466d      	mov	r5, sp
c0de97de:	f000 f8fe 	bl	c0de99de <OUTLINED_FUNCTION_9>
c0de97e2:	4814      	ldr	r0, [pc, #80]	@ (c0de9834 <getChoiceName+0x5c>)
c0de97e4:	f10d 0137 	add.w	r1, sp, #55	@ 0x37
c0de97e8:	462a      	mov	r2, r5
c0de97ea:	4448      	add	r0, r9
c0de97ec:	f000 f8e1 	bl	c0de99b2 <OUTLINED_FUNCTION_4>
c0de97f0:	b150      	cbz	r0, c0de9808 <getChoiceName+0x30>
c0de97f2:	7801      	ldrb	r1, [r0, #0]
c0de97f4:	290a      	cmp	r1, #10
c0de97f6:	d009      	beq.n	c0de980c <getChoiceName+0x34>
c0de97f8:	2909      	cmp	r1, #9
c0de97fa:	d105      	bne.n	c0de9808 <getChoiceName+0x30>
c0de97fc:	f000 f8e3 	bl	c0de99c6 <OUTLINED_FUNCTION_6>
c0de9800:	4605      	mov	r5, r0
c0de9802:	f855 0b05 	ldr.w	r0, [r5], #5
c0de9806:	e006      	b.n	c0de9816 <getChoiceName+0x3e>
c0de9808:	2000      	movs	r0, #0
c0de980a:	e010      	b.n	c0de982e <getChoiceName+0x56>
c0de980c:	f000 f8db 	bl	c0de99c6 <OUTLINED_FUNCTION_6>
c0de9810:	4605      	mov	r5, r0
c0de9812:	f855 0b08 	ldr.w	r0, [r5], #8
c0de9816:	f002 faed 	bl	c0debdf4 <pic>
c0de981a:	7829      	ldrb	r1, [r5, #0]
c0de981c:	42a1      	cmp	r1, r4
c0de981e:	d904      	bls.n	c0de982a <getChoiceName+0x52>
c0de9820:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de9824:	f002 fae6 	bl	c0debdf4 <pic>
c0de9828:	e001      	b.n	c0de982e <getChoiceName+0x56>
c0de982a:	4803      	ldr	r0, [pc, #12]	@ (c0de9838 <getChoiceName+0x60>)
c0de982c:	4478      	add	r0, pc
c0de982e:	b00e      	add	sp, #56	@ 0x38
c0de9830:	bdb0      	pop	{r4, r5, r7, pc}
c0de9832:	bf00      	nop
c0de9834:	000027dc 	.word	0x000027dc
c0de9838:	00003295 	.word	0x00003295

c0de983c <onChoiceSelected>:
c0de983c:	b570      	push	{r4, r5, r6, lr}
c0de983e:	b08e      	sub	sp, #56	@ 0x38
c0de9840:	466d      	mov	r5, sp
c0de9842:	f000 f8cc 	bl	c0de99de <OUTLINED_FUNCTION_9>
c0de9846:	4e17      	ldr	r6, [pc, #92]	@ (c0de98a4 <onChoiceSelected+0x68>)
c0de9848:	f10d 0137 	add.w	r1, sp, #55	@ 0x37
c0de984c:	462a      	mov	r2, r5
c0de984e:	eb09 0006 	add.w	r0, r9, r6
c0de9852:	f000 f8ae 	bl	c0de99b2 <OUTLINED_FUNCTION_4>
c0de9856:	b318      	cbz	r0, c0de98a0 <onChoiceSelected+0x64>
c0de9858:	7801      	ldrb	r1, [r0, #0]
c0de985a:	290a      	cmp	r1, #10
c0de985c:	d008      	beq.n	c0de9870 <onChoiceSelected+0x34>
c0de985e:	2909      	cmp	r1, #9
c0de9860:	d10f      	bne.n	c0de9882 <onChoiceSelected+0x46>
c0de9862:	f000 f8b0 	bl	c0de99c6 <OUTLINED_FUNCTION_6>
c0de9866:	7941      	ldrb	r1, [r0, #5]
c0de9868:	42a1      	cmp	r1, r4
c0de986a:	d90a      	bls.n	c0de9882 <onChoiceSelected+0x46>
c0de986c:	3007      	adds	r0, #7
c0de986e:	e006      	b.n	c0de987e <onChoiceSelected+0x42>
c0de9870:	f000 f8a9 	bl	c0de99c6 <OUTLINED_FUNCTION_6>
c0de9874:	7a01      	ldrb	r1, [r0, #8]
c0de9876:	42a1      	cmp	r1, r4
c0de9878:	d903      	bls.n	c0de9882 <onChoiceSelected+0x46>
c0de987a:	6840      	ldr	r0, [r0, #4]
c0de987c:	4420      	add	r0, r4
c0de987e:	7800      	ldrb	r0, [r0, #0]
c0de9880:	e000      	b.n	c0de9884 <onChoiceSelected+0x48>
c0de9882:	20ff      	movs	r0, #255	@ 0xff
c0de9884:	28ff      	cmp	r0, #255	@ 0xff
c0de9886:	d006      	beq.n	c0de9896 <onChoiceSelected+0x5a>
c0de9888:	eb09 0106 	add.w	r1, r9, r6
c0de988c:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de988e:	b112      	cbz	r2, c0de9896 <onChoiceSelected+0x5a>
c0de9890:	2100      	movs	r1, #0
c0de9892:	4790      	blx	r2
c0de9894:	e004      	b.n	c0de98a0 <onChoiceSelected+0x64>
c0de9896:	eb09 0006 	add.w	r0, r9, r6
c0de989a:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de989c:	b100      	cbz	r0, c0de98a0 <onChoiceSelected+0x64>
c0de989e:	4780      	blx	r0
c0de98a0:	b00e      	add	sp, #56	@ 0x38
c0de98a2:	bd70      	pop	{r4, r5, r6, pc}
c0de98a4:	000027dc 	.word	0x000027dc

c0de98a8 <buttonSkipCallback>:
c0de98a8:	2904      	cmp	r1, #4
c0de98aa:	d02b      	beq.n	c0de9904 <buttonSkipCallback+0x5c>
c0de98ac:	2901      	cmp	r1, #1
c0de98ae:	d00e      	beq.n	c0de98ce <buttonSkipCallback+0x26>
c0de98b0:	bb61      	cbnz	r1, c0de990c <buttonSkipCallback+0x64>
c0de98b2:	4818      	ldr	r0, [pc, #96]	@ (c0de9914 <buttonSkipCallback+0x6c>)
c0de98b4:	eb09 0100 	add.w	r1, r9, r0
c0de98b8:	2008      	movs	r0, #8
c0de98ba:	f891 205a 	ldrb.w	r2, [r1, #90]	@ 0x5a
c0de98be:	b9fa      	cbnz	r2, c0de9900 <buttonSkipCallback+0x58>
c0de98c0:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de98c4:	2901      	cmp	r1, #1
c0de98c6:	db1b      	blt.n	c0de9900 <buttonSkipCallback+0x58>
c0de98c8:	3901      	subs	r1, #1
c0de98ca:	2008      	movs	r0, #8
c0de98cc:	e014      	b.n	c0de98f8 <buttonSkipCallback+0x50>
c0de98ce:	4811      	ldr	r0, [pc, #68]	@ (c0de9914 <buttonSkipCallback+0x6c>)
c0de98d0:	eb09 0100 	add.w	r1, r9, r0
c0de98d4:	f891 105a 	ldrb.w	r1, [r1, #90]	@ 0x5a
c0de98d8:	2908      	cmp	r1, #8
c0de98da:	d118      	bne.n	c0de990e <buttonSkipCallback+0x66>
c0de98dc:	eb09 0200 	add.w	r2, r9, r0
c0de98e0:	2000      	movs	r0, #0
c0de98e2:	f992 1031 	ldrsb.w	r1, [r2, #49]	@ 0x31
c0de98e6:	2901      	cmp	r1, #1
c0de98e8:	db0a      	blt.n	c0de9900 <buttonSkipCallback+0x58>
c0de98ea:	f892 2030 	ldrb.w	r2, [r2, #48]	@ 0x30
c0de98ee:	3a01      	subs	r2, #1
c0de98f0:	428a      	cmp	r2, r1
c0de98f2:	dd05      	ble.n	c0de9900 <buttonSkipCallback+0x58>
c0de98f4:	3101      	adds	r1, #1
c0de98f6:	2000      	movs	r0, #0
c0de98f8:	4a06      	ldr	r2, [pc, #24]	@ (c0de9914 <buttonSkipCallback+0x6c>)
c0de98fa:	444a      	add	r2, r9
c0de98fc:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de9900:	f7fe bfd4 	b.w	c0de88ac <displayStreamingReviewPage>
c0de9904:	4803      	ldr	r0, [pc, #12]	@ (c0de9914 <buttonSkipCallback+0x6c>)
c0de9906:	4448      	add	r0, r9
c0de9908:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de990a:	4700      	bx	r0
c0de990c:	4770      	bx	lr
c0de990e:	2000      	movs	r0, #0
c0de9910:	f7fe bfcc 	b.w	c0de88ac <displayStreamingReviewPage>
c0de9914:	000027dc 	.word	0x000027dc

c0de9918 <streamingReviewCallback>:
c0de9918:	b5e0      	push	{r5, r6, r7, lr}
c0de991a:	4608      	mov	r0, r1
c0de991c:	f10d 0107 	add.w	r1, sp, #7
c0de9920:	f7ff fbc2 	bl	c0de90a8 <buttonGenericCallback>
c0de9924:	b150      	cbz	r0, c0de993c <streamingReviewCallback+0x24>
c0de9926:	4806      	ldr	r0, [pc, #24]	@ (c0de9940 <streamingReviewCallback+0x28>)
c0de9928:	eb09 0100 	add.w	r1, r9, r0
c0de992c:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de9930:	f881 005a 	strb.w	r0, [r1, #90]	@ 0x5a
c0de9934:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de9938:	f7fe bfb8 	b.w	c0de88ac <displayStreamingReviewPage>
c0de993c:	bd8c      	pop	{r2, r3, r7, pc}
c0de993e:	bf00      	nop
c0de9940:	000027dc 	.word	0x000027dc

c0de9944 <onChoiceAccept>:
c0de9944:	4803      	ldr	r0, [pc, #12]	@ (c0de9954 <onChoiceAccept+0x10>)
c0de9946:	4448      	add	r0, r9
c0de9948:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de994a:	b109      	cbz	r1, c0de9950 <onChoiceAccept+0xc>
c0de994c:	2001      	movs	r0, #1
c0de994e:	4708      	bx	r1
c0de9950:	4770      	bx	lr
c0de9952:	bf00      	nop
c0de9954:	000027dc 	.word	0x000027dc

c0de9958 <onChoiceReject>:
c0de9958:	4803      	ldr	r0, [pc, #12]	@ (c0de9968 <onChoiceReject+0x10>)
c0de995a:	4448      	add	r0, r9
c0de995c:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de995e:	b109      	cbz	r1, c0de9964 <onChoiceReject+0xc>
c0de9960:	2000      	movs	r0, #0
c0de9962:	4708      	bx	r1
c0de9964:	4770      	bx	lr
c0de9966:	bf00      	nop
c0de9968:	000027dc 	.word	0x000027dc

c0de996c <genericChoiceCallback>:
c0de996c:	b5e0      	push	{r5, r6, r7, lr}
c0de996e:	4608      	mov	r0, r1
c0de9970:	f10d 0107 	add.w	r1, sp, #7
c0de9974:	f7ff fb98 	bl	c0de90a8 <buttonGenericCallback>
c0de9978:	b128      	cbz	r0, c0de9986 <genericChoiceCallback+0x1a>
c0de997a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de997e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de9982:	f7ff b871 	b.w	c0de8a68 <displayChoicePage>
c0de9986:	bd8c      	pop	{r2, r3, r7, pc}

c0de9988 <OUTLINED_FUNCTION_0>:
c0de9988:	460e      	mov	r6, r1
c0de998a:	2140      	movs	r1, #64	@ 0x40
c0de998c:	4698      	mov	r8, r3
c0de998e:	4615      	mov	r5, r2
c0de9990:	eb09 0400 	add.w	r4, r9, r0
c0de9994:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de9998:	f002 bdfc 	b.w	c0dec594 <__aeabi_memclr>

c0de999c <OUTLINED_FUNCTION_2>:
c0de999c:	2200      	movs	r2, #0
c0de999e:	eb09 0100 	add.w	r1, r9, r0
c0de99a2:	634a      	str	r2, [r1, #52]	@ 0x34
c0de99a4:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de99a8:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de99ac:	3901      	subs	r1, #1
c0de99ae:	4291      	cmp	r1, r2
c0de99b0:	4770      	bx	lr

c0de99b2 <OUTLINED_FUNCTION_4>:
c0de99b2:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de99b6:	f7ff ba59 	b.w	c0de8e6c <getContentElemAtIdx>

c0de99ba <OUTLINED_FUNCTION_5>:
c0de99ba:	eb09 0600 	add.w	r6, r9, r0
c0de99be:	f106 0028 	add.w	r0, r6, #40	@ 0x28
c0de99c2:	f002 bde7 	b.w	c0dec594 <__aeabi_memclr>

c0de99c6 <OUTLINED_FUNCTION_6>:
c0de99c6:	3004      	adds	r0, #4
c0de99c8:	f002 ba14 	b.w	c0debdf4 <pic>

c0de99cc <OUTLINED_FUNCTION_7>:
c0de99cc:	e9cd 6500 	strd	r6, r5, [sp]
c0de99d0:	f7fe be50 	b.w	c0de8674 <drawStep>

c0de99d4 <OUTLINED_FUNCTION_8>:
c0de99d4:	f997 1031 	ldrsb.w	r1, [r7, #49]	@ 0x31
c0de99d8:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de99dc:	4730      	bx	r6

c0de99de <OUTLINED_FUNCTION_9>:
c0de99de:	4604      	mov	r4, r0
c0de99e0:	2134      	movs	r1, #52	@ 0x34
c0de99e2:	4628      	mov	r0, r5
c0de99e4:	f002 bdd6 	b.w	c0dec594 <__aeabi_memclr>

c0de99e8 <bip32_path_read>:
c0de99e8:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de99ec:	b10b      	cbz	r3, c0de99f2 <bip32_path_read+0xa>
c0de99ee:	2b0a      	cmp	r3, #10
c0de99f0:	d902      	bls.n	c0de99f8 <bip32_path_read+0x10>
c0de99f2:	2000      	movs	r0, #0
c0de99f4:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de99f8:	4692      	mov	sl, r2
c0de99fa:	460e      	mov	r6, r1
c0de99fc:	4683      	mov	fp, r0
c0de99fe:	425f      	negs	r7, r3
c0de9a00:	2500      	movs	r5, #0
c0de9a02:	f04f 0800 	mov.w	r8, #0
c0de9a06:	9301      	str	r3, [sp, #4]
c0de9a08:	42af      	cmp	r7, r5
c0de9a0a:	d00c      	beq.n	c0de9a26 <bip32_path_read+0x3e>
c0de9a0c:	f108 0404 	add.w	r4, r8, #4
c0de9a10:	42b4      	cmp	r4, r6
c0de9a12:	d808      	bhi.n	c0de9a26 <bip32_path_read+0x3e>
c0de9a14:	4658      	mov	r0, fp
c0de9a16:	4641      	mov	r1, r8
c0de9a18:	f000 fb4c 	bl	c0dea0b4 <read_u32_be>
c0de9a1c:	f84a 0008 	str.w	r0, [sl, r8]
c0de9a20:	3d01      	subs	r5, #1
c0de9a22:	46a0      	mov	r8, r4
c0de9a24:	e7f0      	b.n	c0de9a08 <bip32_path_read+0x20>
c0de9a26:	9a01      	ldr	r2, [sp, #4]
c0de9a28:	4269      	negs	r1, r5
c0de9a2a:	2000      	movs	r0, #0
c0de9a2c:	4291      	cmp	r1, r2
c0de9a2e:	bf28      	it	cs
c0de9a30:	2001      	movcs	r0, #1
c0de9a32:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de9a36 <buffer_seek_cur>:
c0de9a36:	6882      	ldr	r2, [r0, #8]
c0de9a38:	1889      	adds	r1, r1, r2
c0de9a3a:	d205      	bcs.n	c0de9a48 <buffer_seek_cur+0x12>
c0de9a3c:	6842      	ldr	r2, [r0, #4]
c0de9a3e:	4291      	cmp	r1, r2
c0de9a40:	bf9e      	ittt	ls
c0de9a42:	6081      	strls	r1, [r0, #8]
c0de9a44:	2001      	movls	r0, #1
c0de9a46:	4770      	bxls	lr
c0de9a48:	2000      	movs	r0, #0
c0de9a4a:	4770      	bx	lr

c0de9a4c <buffer_read_u8>:
c0de9a4c:	b510      	push	{r4, lr}
c0de9a4e:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de9a52:	429a      	cmp	r2, r3
c0de9a54:	d00a      	beq.n	c0de9a6c <buffer_read_u8+0x20>
c0de9a56:	6804      	ldr	r4, [r0, #0]
c0de9a58:	5ce4      	ldrb	r4, [r4, r3]
c0de9a5a:	700c      	strb	r4, [r1, #0]
c0de9a5c:	6881      	ldr	r1, [r0, #8]
c0de9a5e:	3101      	adds	r1, #1
c0de9a60:	d206      	bcs.n	c0de9a70 <buffer_read_u8+0x24>
c0de9a62:	6844      	ldr	r4, [r0, #4]
c0de9a64:	42a1      	cmp	r1, r4
c0de9a66:	bf98      	it	ls
c0de9a68:	6081      	strls	r1, [r0, #8]
c0de9a6a:	e001      	b.n	c0de9a70 <buffer_read_u8+0x24>
c0de9a6c:	2000      	movs	r0, #0
c0de9a6e:	7008      	strb	r0, [r1, #0]
c0de9a70:	1ad0      	subs	r0, r2, r3
c0de9a72:	bf18      	it	ne
c0de9a74:	2001      	movne	r0, #1
c0de9a76:	bd10      	pop	{r4, pc}

c0de9a78 <buffer_read_u64>:
c0de9a78:	b570      	push	{r4, r5, r6, lr}
c0de9a7a:	f000 f87d 	bl	c0de9b78 <OUTLINED_FUNCTION_0>
c0de9a7e:	2e07      	cmp	r6, #7
c0de9a80:	d904      	bls.n	c0de9a8c <buffer_read_u64+0x14>
c0de9a82:	6820      	ldr	r0, [r4, #0]
c0de9a84:	b132      	cbz	r2, c0de9a94 <buffer_read_u64+0x1c>
c0de9a86:	f000 fb4c 	bl	c0dea122 <read_u64_le>
c0de9a8a:	e005      	b.n	c0de9a98 <buffer_read_u64+0x20>
c0de9a8c:	2000      	movs	r0, #0
c0de9a8e:	e9c5 0000 	strd	r0, r0, [r5]
c0de9a92:	e00c      	b.n	c0de9aae <buffer_read_u64+0x36>
c0de9a94:	f000 fb1a 	bl	c0dea0cc <read_u64_be>
c0de9a98:	e9c5 0100 	strd	r0, r1, [r5]
c0de9a9c:	68a0      	ldr	r0, [r4, #8]
c0de9a9e:	f110 0f09 	cmn.w	r0, #9
c0de9aa2:	d804      	bhi.n	c0de9aae <buffer_read_u64+0x36>
c0de9aa4:	6861      	ldr	r1, [r4, #4]
c0de9aa6:	3008      	adds	r0, #8
c0de9aa8:	4288      	cmp	r0, r1
c0de9aaa:	bf98      	it	ls
c0de9aac:	60a0      	strls	r0, [r4, #8]
c0de9aae:	2000      	movs	r0, #0
c0de9ab0:	2e07      	cmp	r6, #7
c0de9ab2:	bf88      	it	hi
c0de9ab4:	2001      	movhi	r0, #1
c0de9ab6:	bd70      	pop	{r4, r5, r6, pc}

c0de9ab8 <buffer_read_varint>:
c0de9ab8:	b5b0      	push	{r4, r5, r7, lr}
c0de9aba:	4604      	mov	r4, r0
c0de9abc:	460d      	mov	r5, r1
c0de9abe:	6800      	ldr	r0, [r0, #0]
c0de9ac0:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de9ac4:	4410      	add	r0, r2
c0de9ac6:	1a89      	subs	r1, r1, r2
c0de9ac8:	462a      	mov	r2, r5
c0de9aca:	f000 fb41 	bl	c0dea150 <varint_read>
c0de9ace:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de9ad2:	dd0a      	ble.n	c0de9aea <buffer_read_varint+0x32>
c0de9ad4:	68a1      	ldr	r1, [r4, #8]
c0de9ad6:	1840      	adds	r0, r0, r1
c0de9ad8:	d205      	bcs.n	c0de9ae6 <buffer_read_varint+0x2e>
c0de9ada:	6861      	ldr	r1, [r4, #4]
c0de9adc:	4288      	cmp	r0, r1
c0de9ade:	bf9e      	ittt	ls
c0de9ae0:	60a0      	strls	r0, [r4, #8]
c0de9ae2:	2001      	movls	r0, #1
c0de9ae4:	bdb0      	popls	{r4, r5, r7, pc}
c0de9ae6:	2000      	movs	r0, #0
c0de9ae8:	bdb0      	pop	{r4, r5, r7, pc}
c0de9aea:	2000      	movs	r0, #0
c0de9aec:	e9c5 0000 	strd	r0, r0, [r5]
c0de9af0:	bdb0      	pop	{r4, r5, r7, pc}

c0de9af2 <buffer_read_bip32_path>:
c0de9af2:	b5b0      	push	{r4, r5, r7, lr}
c0de9af4:	4604      	mov	r4, r0
c0de9af6:	4615      	mov	r5, r2
c0de9af8:	460a      	mov	r2, r1
c0de9afa:	6800      	ldr	r0, [r0, #0]
c0de9afc:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de9b00:	4418      	add	r0, r3
c0de9b02:	1ac9      	subs	r1, r1, r3
c0de9b04:	462b      	mov	r3, r5
c0de9b06:	f7ff ff6f 	bl	c0de99e8 <bip32_path_read>
c0de9b0a:	b140      	cbz	r0, c0de9b1e <buffer_read_bip32_path+0x2c>
c0de9b0c:	68a2      	ldr	r2, [r4, #8]
c0de9b0e:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de9b12:	4291      	cmp	r1, r2
c0de9b14:	d303      	bcc.n	c0de9b1e <buffer_read_bip32_path+0x2c>
c0de9b16:	6862      	ldr	r2, [r4, #4]
c0de9b18:	4291      	cmp	r1, r2
c0de9b1a:	bf98      	it	ls
c0de9b1c:	60a1      	strls	r1, [r4, #8]
c0de9b1e:	bdb0      	pop	{r4, r5, r7, pc}

c0de9b20 <buffer_copy>:
c0de9b20:	b5b0      	push	{r4, r5, r7, lr}
c0de9b22:	4614      	mov	r4, r2
c0de9b24:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de9b28:	1a9d      	subs	r5, r3, r2
c0de9b2a:	42a5      	cmp	r5, r4
c0de9b2c:	d806      	bhi.n	c0de9b3c <buffer_copy+0x1c>
c0de9b2e:	6800      	ldr	r0, [r0, #0]
c0de9b30:	4402      	add	r2, r0
c0de9b32:	4608      	mov	r0, r1
c0de9b34:	4611      	mov	r1, r2
c0de9b36:	462a      	mov	r2, r5
c0de9b38:	f002 fd31 	bl	c0dec59e <__aeabi_memmove>
c0de9b3c:	2000      	movs	r0, #0
c0de9b3e:	42a5      	cmp	r5, r4
c0de9b40:	bf98      	it	ls
c0de9b42:	2001      	movls	r0, #1
c0de9b44:	bdb0      	pop	{r4, r5, r7, pc}

c0de9b46 <buffer_move>:
c0de9b46:	b5b0      	push	{r4, r5, r7, lr}
c0de9b48:	4615      	mov	r5, r2
c0de9b4a:	4604      	mov	r4, r0
c0de9b4c:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de9b50:	1a12      	subs	r2, r2, r0
c0de9b52:	42aa      	cmp	r2, r5
c0de9b54:	bf84      	itt	hi
c0de9b56:	2000      	movhi	r0, #0
c0de9b58:	bdb0      	pophi	{r4, r5, r7, pc}
c0de9b5a:	6823      	ldr	r3, [r4, #0]
c0de9b5c:	4403      	add	r3, r0
c0de9b5e:	4608      	mov	r0, r1
c0de9b60:	4619      	mov	r1, r3
c0de9b62:	f002 fd1c 	bl	c0dec59e <__aeabi_memmove>
c0de9b66:	68a0      	ldr	r0, [r4, #8]
c0de9b68:	1940      	adds	r0, r0, r5
c0de9b6a:	d203      	bcs.n	c0de9b74 <buffer_move+0x2e>
c0de9b6c:	6861      	ldr	r1, [r4, #4]
c0de9b6e:	4288      	cmp	r0, r1
c0de9b70:	bf98      	it	ls
c0de9b72:	60a0      	strls	r0, [r4, #8]
c0de9b74:	2001      	movs	r0, #1
c0de9b76:	bdb0      	pop	{r4, r5, r7, pc}

c0de9b78 <OUTLINED_FUNCTION_0>:
c0de9b78:	4604      	mov	r4, r0
c0de9b7a:	460d      	mov	r5, r1
c0de9b7c:	6840      	ldr	r0, [r0, #4]
c0de9b7e:	68a1      	ldr	r1, [r4, #8]
c0de9b80:	1a46      	subs	r6, r0, r1
c0de9b82:	4770      	bx	lr

c0de9b84 <bip32_derive_with_seed_init_privkey_256>:
c0de9b84:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de9b88:	b095      	sub	sp, #84	@ 0x54
c0de9b8a:	460d      	mov	r5, r1
c0de9b8c:	4607      	mov	r7, r0
c0de9b8e:	a904      	add	r1, sp, #16
c0de9b90:	469a      	mov	sl, r3
c0de9b92:	4614      	mov	r4, r2
c0de9b94:	4628      	mov	r0, r5
c0de9b96:	f002 faa1 	bl	c0dec0dc <cx_ecdomain_parameters_length>
c0de9b9a:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de9b9e:	4606      	mov	r6, r0
c0de9ba0:	b9e0      	cbnz	r0, c0de9bdc <bip32_derive_with_seed_init_privkey_256+0x58>
c0de9ba2:	9804      	ldr	r0, [sp, #16]
c0de9ba4:	2820      	cmp	r0, #32
c0de9ba6:	d117      	bne.n	c0de9bd8 <bip32_derive_with_seed_init_privkey_256+0x54>
c0de9ba8:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de9baa:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de9bae:	ab05      	add	r3, sp, #20
c0de9bb0:	e9cd 3200 	strd	r3, r2, [sp]
c0de9bb4:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de9bb8:	4638      	mov	r0, r7
c0de9bba:	4629      	mov	r1, r5
c0de9bbc:	4622      	mov	r2, r4
c0de9bbe:	4653      	mov	r3, sl
c0de9bc0:	f000 f818 	bl	c0de9bf4 <os_derive_bip32_with_seed_no_throw>
c0de9bc4:	4606      	mov	r6, r0
c0de9bc6:	b948      	cbnz	r0, c0de9bdc <bip32_derive_with_seed_init_privkey_256+0x58>
c0de9bc8:	9a04      	ldr	r2, [sp, #16]
c0de9bca:	a905      	add	r1, sp, #20
c0de9bcc:	4628      	mov	r0, r5
c0de9bce:	4643      	mov	r3, r8
c0de9bd0:	f001 fabd 	bl	c0deb14e <cx_ecfp_init_private_key_no_throw>
c0de9bd4:	4606      	mov	r6, r0
c0de9bd6:	e001      	b.n	c0de9bdc <bip32_derive_with_seed_init_privkey_256+0x58>
c0de9bd8:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de9bdc:	a805      	add	r0, sp, #20
c0de9bde:	2140      	movs	r1, #64	@ 0x40
c0de9be0:	f002 fce4 	bl	c0dec5ac <explicit_bzero>
c0de9be4:	b116      	cbz	r6, c0de9bec <bip32_derive_with_seed_init_privkey_256+0x68>
c0de9be6:	4640      	mov	r0, r8
c0de9be8:	f000 f89f 	bl	c0de9d2a <OUTLINED_FUNCTION_0>
c0de9bec:	4630      	mov	r0, r6
c0de9bee:	b015      	add	sp, #84	@ 0x54
c0de9bf0:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de9bf4 <os_derive_bip32_with_seed_no_throw>:
c0de9bf4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9bf8:	b090      	sub	sp, #64	@ 0x40
c0de9bfa:	f10d 0810 	add.w	r8, sp, #16
c0de9bfe:	4607      	mov	r7, r0
c0de9c00:	469b      	mov	fp, r3
c0de9c02:	4616      	mov	r6, r2
c0de9c04:	460c      	mov	r4, r1
c0de9c06:	4640      	mov	r0, r8
c0de9c08:	f002 fd06 	bl	c0dec618 <setjmp>
c0de9c0c:	b285      	uxth	r5, r0
c0de9c0e:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de9c12:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de9c16:	b155      	cbz	r5, c0de9c2e <os_derive_bip32_with_seed_no_throw+0x3a>
c0de9c18:	2000      	movs	r0, #0
c0de9c1a:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de9c1e:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de9c20:	f002 faea 	bl	c0dec1f8 <try_context_set>
c0de9c24:	2140      	movs	r1, #64	@ 0x40
c0de9c26:	4650      	mov	r0, sl
c0de9c28:	f002 fcc0 	bl	c0dec5ac <explicit_bzero>
c0de9c2c:	e012      	b.n	c0de9c54 <os_derive_bip32_with_seed_no_throw+0x60>
c0de9c2e:	a804      	add	r0, sp, #16
c0de9c30:	f002 fae2 	bl	c0dec1f8 <try_context_set>
c0de9c34:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de9c36:	900e      	str	r0, [sp, #56]	@ 0x38
c0de9c38:	4668      	mov	r0, sp
c0de9c3a:	4632      	mov	r2, r6
c0de9c3c:	465b      	mov	r3, fp
c0de9c3e:	f8c0 a000 	str.w	sl, [r0]
c0de9c42:	6041      	str	r1, [r0, #4]
c0de9c44:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de9c46:	6081      	str	r1, [r0, #8]
c0de9c48:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de9c4a:	60c1      	str	r1, [r0, #12]
c0de9c4c:	4638      	mov	r0, r7
c0de9c4e:	4621      	mov	r1, r4
c0de9c50:	f002 fa4e 	bl	c0dec0f0 <os_perso_derive_node_with_seed_key>
c0de9c54:	f002 fac8 	bl	c0dec1e8 <try_context_get>
c0de9c58:	4540      	cmp	r0, r8
c0de9c5a:	d102      	bne.n	c0de9c62 <os_derive_bip32_with_seed_no_throw+0x6e>
c0de9c5c:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de9c5e:	f002 facb 	bl	c0dec1f8 <try_context_set>
c0de9c62:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de9c66:	b918      	cbnz	r0, c0de9c70 <os_derive_bip32_with_seed_no_throw+0x7c>
c0de9c68:	4628      	mov	r0, r5
c0de9c6a:	b010      	add	sp, #64	@ 0x40
c0de9c6c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de9c70:	f001 fa94 	bl	c0deb19c <os_longjmp>

c0de9c74 <bip32_derive_with_seed_get_pubkey_256>:
c0de9c74:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de9c76:	b0a1      	sub	sp, #132	@ 0x84
c0de9c78:	460e      	mov	r6, r1
c0de9c7a:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de9c7c:	9103      	str	r1, [sp, #12]
c0de9c7e:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de9c80:	9102      	str	r1, [sp, #8]
c0de9c82:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de9c84:	9101      	str	r1, [sp, #4]
c0de9c86:	a917      	add	r1, sp, #92	@ 0x5c
c0de9c88:	9100      	str	r1, [sp, #0]
c0de9c8a:	4631      	mov	r1, r6
c0de9c8c:	f7ff ff7a 	bl	c0de9b84 <bip32_derive_with_seed_init_privkey_256>
c0de9c90:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de9c92:	4605      	mov	r5, r0
c0de9c94:	b9b8      	cbnz	r0, c0de9cc6 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de9c96:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de9c98:	2301      	movs	r3, #1
c0de9c9a:	9000      	str	r0, [sp, #0]
c0de9c9c:	af04      	add	r7, sp, #16
c0de9c9e:	aa17      	add	r2, sp, #92	@ 0x5c
c0de9ca0:	4630      	mov	r0, r6
c0de9ca2:	4639      	mov	r1, r7
c0de9ca4:	f001 fa4e 	bl	c0deb144 <cx_ecfp_generate_pair2_no_throw>
c0de9ca8:	4605      	mov	r5, r0
c0de9caa:	b960      	cbnz	r0, c0de9cc6 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de9cac:	9805      	ldr	r0, [sp, #20]
c0de9cae:	2841      	cmp	r0, #65	@ 0x41
c0de9cb0:	d107      	bne.n	c0de9cc2 <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de9cb2:	f107 0108 	add.w	r1, r7, #8
c0de9cb6:	4620      	mov	r0, r4
c0de9cb8:	2241      	movs	r2, #65	@ 0x41
c0de9cba:	f002 fc6e 	bl	c0dec59a <__aeabi_memcpy>
c0de9cbe:	2500      	movs	r5, #0
c0de9cc0:	e001      	b.n	c0de9cc6 <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de9cc2:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de9cc6:	a817      	add	r0, sp, #92	@ 0x5c
c0de9cc8:	f000 f82f 	bl	c0de9d2a <OUTLINED_FUNCTION_0>
c0de9ccc:	b11d      	cbz	r5, c0de9cd6 <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de9cce:	4620      	mov	r0, r4
c0de9cd0:	2141      	movs	r1, #65	@ 0x41
c0de9cd2:	f002 fc6b 	bl	c0dec5ac <explicit_bzero>
c0de9cd6:	4628      	mov	r0, r5
c0de9cd8:	b021      	add	sp, #132	@ 0x84
c0de9cda:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de9cdc <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de9cdc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de9cde:	b08f      	sub	sp, #60	@ 0x3c
c0de9ce0:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de9ce2:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de9ce4:	683c      	ldr	r4, [r7, #0]
c0de9ce6:	9503      	str	r5, [sp, #12]
c0de9ce8:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de9cea:	9502      	str	r5, [sp, #8]
c0de9cec:	2500      	movs	r5, #0
c0de9cee:	9501      	str	r5, [sp, #4]
c0de9cf0:	ad05      	add	r5, sp, #20
c0de9cf2:	9500      	str	r5, [sp, #0]
c0de9cf4:	f7ff ff46 	bl	c0de9b84 <bip32_derive_with_seed_init_privkey_256>
c0de9cf8:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de9cfa:	4606      	mov	r6, r0
c0de9cfc:	b950      	cbnz	r0, c0de9d14 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de9cfe:	ae14      	add	r6, sp, #80	@ 0x50
c0de9d00:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de9d02:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de9d04:	e9cd 6500 	strd	r6, r5, [sp]
c0de9d08:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de9d0c:	a805      	add	r0, sp, #20
c0de9d0e:	f001 fa14 	bl	c0deb13a <cx_ecdsa_sign_no_throw>
c0de9d12:	4606      	mov	r6, r0
c0de9d14:	a805      	add	r0, sp, #20
c0de9d16:	f000 f808 	bl	c0de9d2a <OUTLINED_FUNCTION_0>
c0de9d1a:	b11e      	cbz	r6, c0de9d24 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de9d1c:	4628      	mov	r0, r5
c0de9d1e:	4621      	mov	r1, r4
c0de9d20:	f002 fc44 	bl	c0dec5ac <explicit_bzero>
c0de9d24:	4630      	mov	r0, r6
c0de9d26:	b00f      	add	sp, #60	@ 0x3c
c0de9d28:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de9d2a <OUTLINED_FUNCTION_0>:
c0de9d2a:	2128      	movs	r1, #40	@ 0x28
c0de9d2c:	f002 bc3e 	b.w	c0dec5ac <explicit_bzero>

c0de9d30 <format_u64>:
c0de9d30:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de9d34:	b1f9      	cbz	r1, c0de9d76 <format_u64+0x46>
c0de9d36:	4615      	mov	r5, r2
c0de9d38:	4604      	mov	r4, r0
c0de9d3a:	f1a1 0801 	sub.w	r8, r1, #1
c0de9d3e:	2700      	movs	r7, #0
c0de9d40:	2600      	movs	r6, #0
c0de9d42:	f1b5 000a 	subs.w	r0, r5, #10
c0de9d46:	f173 0000 	sbcs.w	r0, r3, #0
c0de9d4a:	d316      	bcc.n	c0de9d7a <format_u64+0x4a>
c0de9d4c:	4619      	mov	r1, r3
c0de9d4e:	4628      	mov	r0, r5
c0de9d50:	220a      	movs	r2, #10
c0de9d52:	2300      	movs	r3, #0
c0de9d54:	f002 fa92 	bl	c0dec27c <__aeabi_uldivmod>
c0de9d58:	460b      	mov	r3, r1
c0de9d5a:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de9d5e:	1cba      	adds	r2, r7, #2
c0de9d60:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de9d64:	4605      	mov	r5, r0
c0de9d66:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de9d6a:	55e1      	strb	r1, [r4, r7]
c0de9d6c:	1c79      	adds	r1, r7, #1
c0de9d6e:	4542      	cmp	r2, r8
c0de9d70:	460f      	mov	r7, r1
c0de9d72:	d9e6      	bls.n	c0de9d42 <format_u64+0x12>
c0de9d74:	e012      	b.n	c0de9d9c <format_u64+0x6c>
c0de9d76:	2600      	movs	r6, #0
c0de9d78:	e010      	b.n	c0de9d9c <format_u64+0x6c>
c0de9d7a:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de9d7e:	19e1      	adds	r1, r4, r7
c0de9d80:	55e0      	strb	r0, [r4, r7]
c0de9d82:	2000      	movs	r0, #0
c0de9d84:	7048      	strb	r0, [r1, #1]
c0de9d86:	b2c1      	uxtb	r1, r0
c0de9d88:	428f      	cmp	r7, r1
c0de9d8a:	d906      	bls.n	c0de9d9a <format_u64+0x6a>
c0de9d8c:	5c62      	ldrb	r2, [r4, r1]
c0de9d8e:	5de3      	ldrb	r3, [r4, r7]
c0de9d90:	3001      	adds	r0, #1
c0de9d92:	5463      	strb	r3, [r4, r1]
c0de9d94:	55e2      	strb	r2, [r4, r7]
c0de9d96:	3f01      	subs	r7, #1
c0de9d98:	e7f5      	b.n	c0de9d86 <format_u64+0x56>
c0de9d9a:	2601      	movs	r6, #1
c0de9d9c:	4630      	mov	r0, r6
c0de9d9e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de9da2 <format_fpu64>:
c0de9da2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de9da6:	b086      	sub	sp, #24
c0de9da8:	466c      	mov	r4, sp
c0de9daa:	4688      	mov	r8, r1
c0de9dac:	4605      	mov	r5, r0
c0de9dae:	2115      	movs	r1, #21
c0de9db0:	461e      	mov	r6, r3
c0de9db2:	4617      	mov	r7, r2
c0de9db4:	4620      	mov	r0, r4
c0de9db6:	f002 fbed 	bl	c0dec594 <__aeabi_memclr>
c0de9dba:	4620      	mov	r0, r4
c0de9dbc:	2115      	movs	r1, #21
c0de9dbe:	463a      	mov	r2, r7
c0de9dc0:	4633      	mov	r3, r6
c0de9dc2:	f7ff ffb5 	bl	c0de9d30 <format_u64>
c0de9dc6:	b340      	cbz	r0, c0de9e1a <format_fpu64+0x78>
c0de9dc8:	466f      	mov	r7, sp
c0de9dca:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de9dcc:	4638      	mov	r0, r7
c0de9dce:	f002 fc3b 	bl	c0dec648 <strlen>
c0de9dd2:	42b0      	cmp	r0, r6
c0de9dd4:	d910      	bls.n	c0de9df8 <format_fpu64+0x56>
c0de9dd6:	1831      	adds	r1, r6, r0
c0de9dd8:	3101      	adds	r1, #1
c0de9dda:	4541      	cmp	r1, r8
c0de9ddc:	d21d      	bcs.n	c0de9e1a <format_fpu64+0x78>
c0de9dde:	1b84      	subs	r4, r0, r6
c0de9de0:	4628      	mov	r0, r5
c0de9de2:	4639      	mov	r1, r7
c0de9de4:	4622      	mov	r2, r4
c0de9de6:	f002 fbd8 	bl	c0dec59a <__aeabi_memcpy>
c0de9dea:	1928      	adds	r0, r5, r4
c0de9dec:	212e      	movs	r1, #46	@ 0x2e
c0de9dee:	4632      	mov	r2, r6
c0de9df0:	f800 1b01 	strb.w	r1, [r0], #1
c0de9df4:	1939      	adds	r1, r7, r4
c0de9df6:	e015      	b.n	c0de9e24 <format_fpu64+0x82>
c0de9df8:	1a32      	subs	r2, r6, r0
c0de9dfa:	1c91      	adds	r1, r2, #2
c0de9dfc:	4541      	cmp	r1, r8
c0de9dfe:	d20c      	bcs.n	c0de9e1a <format_fpu64+0x78>
c0de9e00:	202e      	movs	r0, #46	@ 0x2e
c0de9e02:	2330      	movs	r3, #48	@ 0x30
c0de9e04:	2400      	movs	r4, #0
c0de9e06:	7068      	strb	r0, [r5, #1]
c0de9e08:	1ca8      	adds	r0, r5, #2
c0de9e0a:	702b      	strb	r3, [r5, #0]
c0de9e0c:	b2a5      	uxth	r5, r4
c0de9e0e:	42aa      	cmp	r2, r5
c0de9e10:	d905      	bls.n	c0de9e1e <format_fpu64+0x7c>
c0de9e12:	f800 3b01 	strb.w	r3, [r0], #1
c0de9e16:	3401      	adds	r4, #1
c0de9e18:	e7f8      	b.n	c0de9e0c <format_fpu64+0x6a>
c0de9e1a:	2000      	movs	r0, #0
c0de9e1c:	e005      	b.n	c0de9e2a <format_fpu64+0x88>
c0de9e1e:	eba8 0201 	sub.w	r2, r8, r1
c0de9e22:	4669      	mov	r1, sp
c0de9e24:	f002 fc18 	bl	c0dec658 <strncpy>
c0de9e28:	2001      	movs	r0, #1
c0de9e2a:	b006      	add	sp, #24
c0de9e2c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de9e30 <format_hex>:
c0de9e30:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de9e32:	4604      	mov	r4, r0
c0de9e34:	0048      	lsls	r0, r1, #1
c0de9e36:	f100 0c01 	add.w	ip, r0, #1
c0de9e3a:	459c      	cmp	ip, r3
c0de9e3c:	d902      	bls.n	c0de9e44 <format_hex+0x14>
c0de9e3e:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de9e42:	e018      	b.n	c0de9e76 <format_hex+0x46>
c0de9e44:	480d      	ldr	r0, [pc, #52]	@ (c0de9e7c <format_hex+0x4c>)
c0de9e46:	2500      	movs	r5, #0
c0de9e48:	4478      	add	r0, pc
c0de9e4a:	b191      	cbz	r1, c0de9e72 <format_hex+0x42>
c0de9e4c:	1cef      	adds	r7, r5, #3
c0de9e4e:	429f      	cmp	r7, r3
c0de9e50:	d80d      	bhi.n	c0de9e6e <format_hex+0x3e>
c0de9e52:	7827      	ldrb	r7, [r4, #0]
c0de9e54:	3901      	subs	r1, #1
c0de9e56:	093f      	lsrs	r7, r7, #4
c0de9e58:	5dc7      	ldrb	r7, [r0, r7]
c0de9e5a:	5557      	strb	r7, [r2, r5]
c0de9e5c:	1957      	adds	r7, r2, r5
c0de9e5e:	3502      	adds	r5, #2
c0de9e60:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de9e64:	f006 060f 	and.w	r6, r6, #15
c0de9e68:	5d86      	ldrb	r6, [r0, r6]
c0de9e6a:	707e      	strb	r6, [r7, #1]
c0de9e6c:	e7ed      	b.n	c0de9e4a <format_hex+0x1a>
c0de9e6e:	f105 0c01 	add.w	ip, r5, #1
c0de9e72:	2000      	movs	r0, #0
c0de9e74:	5550      	strb	r0, [r2, r5]
c0de9e76:	4660      	mov	r0, ip
c0de9e78:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de9e7a:	bf00      	nop
c0de9e7c:	00002c57 	.word	0x00002c57

c0de9e80 <app_ticker_event_callback>:
c0de9e80:	4770      	bx	lr
	...

c0de9e84 <io_event>:
c0de9e84:	b580      	push	{r7, lr}
c0de9e86:	4815      	ldr	r0, [pc, #84]	@ (c0de9edc <io_event+0x58>)
c0de9e88:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de9e8c:	2915      	cmp	r1, #21
c0de9e8e:	d010      	beq.n	c0de9eb2 <io_event+0x2e>
c0de9e90:	290c      	cmp	r1, #12
c0de9e92:	d019      	beq.n	c0de9ec8 <io_event+0x44>
c0de9e94:	290d      	cmp	r1, #13
c0de9e96:	d015      	beq.n	c0de9ec4 <io_event+0x40>
c0de9e98:	290e      	cmp	r1, #14
c0de9e9a:	d005      	beq.n	c0de9ea8 <io_event+0x24>
c0de9e9c:	2905      	cmp	r1, #5
c0de9e9e:	d111      	bne.n	c0de9ec4 <io_event+0x40>
c0de9ea0:	4448      	add	r0, r9
c0de9ea2:	f001 f8b7 	bl	c0deb014 <ux_process_button_event>
c0de9ea6:	e00f      	b.n	c0de9ec8 <io_event+0x44>
c0de9ea8:	f7ff ffea 	bl	c0de9e80 <app_ticker_event_callback>
c0de9eac:	f001 f8f6 	bl	c0deb09c <ux_process_ticker_event>
c0de9eb0:	e00a      	b.n	c0de9ec8 <io_event+0x44>
c0de9eb2:	490b      	ldr	r1, [pc, #44]	@ (c0de9ee0 <io_event+0x5c>)
c0de9eb4:	4449      	add	r1, r9
c0de9eb6:	7989      	ldrb	r1, [r1, #6]
c0de9eb8:	2901      	cmp	r1, #1
c0de9eba:	d103      	bne.n	c0de9ec4 <io_event+0x40>
c0de9ebc:	4448      	add	r0, r9
c0de9ebe:	7980      	ldrb	r0, [r0, #6]
c0de9ec0:	0700      	lsls	r0, r0, #28
c0de9ec2:	d508      	bpl.n	c0de9ed6 <io_event+0x52>
c0de9ec4:	f001 f902 	bl	c0deb0cc <ux_process_default_event>
c0de9ec8:	f002 f97a 	bl	c0dec1c0 <io_seph_is_status_sent>
c0de9ecc:	b908      	cbnz	r0, c0de9ed2 <io_event+0x4e>
c0de9ece:	f001 f96b 	bl	c0deb1a8 <io_seproxyhal_general_status>
c0de9ed2:	2001      	movs	r0, #1
c0de9ed4:	bd80      	pop	{r7, pc}
c0de9ed6:	2005      	movs	r0, #5
c0de9ed8:	f001 f960 	bl	c0deb19c <os_longjmp>
c0de9edc:	00002844 	.word	0x00002844
c0de9ee0:	00002b68 	.word	0x00002b68

c0de9ee4 <io_exchange_al>:
c0de9ee4:	b510      	push	{r4, lr}
c0de9ee6:	4604      	mov	r4, r0
c0de9ee8:	f000 0003 	and.w	r0, r0, #3
c0de9eec:	2801      	cmp	r0, #1
c0de9eee:	d00a      	beq.n	c0de9f06 <io_exchange_al+0x22>
c0de9ef0:	2802      	cmp	r0, #2
c0de9ef2:	d111      	bne.n	c0de9f18 <io_exchange_al+0x34>
c0de9ef4:	480a      	ldr	r0, [pc, #40]	@ (c0de9f20 <io_exchange_al+0x3c>)
c0de9ef6:	4448      	add	r0, r9
c0de9ef8:	b139      	cbz	r1, c0de9f0a <io_exchange_al+0x26>
c0de9efa:	f002 f957 	bl	c0dec1ac <io_seph_send>
c0de9efe:	0620      	lsls	r0, r4, #24
c0de9f00:	bf48      	it	mi
c0de9f02:	f001 ff9f 	blmi	c0debe44 <halt>
c0de9f06:	2000      	movs	r0, #0
c0de9f08:	bd10      	pop	{r4, pc}
c0de9f0a:	f44f 7182 	mov.w	r1, #260	@ 0x104
c0de9f0e:	2200      	movs	r2, #0
c0de9f10:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de9f14:	f002 b95c 	b.w	c0dec1d0 <io_seph_recv>
c0de9f18:	2002      	movs	r0, #2
c0de9f1a:	f001 f93f 	bl	c0deb19c <os_longjmp>
c0de9f1e:	bf00      	nop
c0de9f20:	00002a64 	.word	0x00002a64

c0de9f24 <io_init>:
c0de9f24:	4803      	ldr	r0, [pc, #12]	@ (c0de9f34 <io_init+0x10>)
c0de9f26:	2100      	movs	r1, #0
c0de9f28:	f809 1000 	strb.w	r1, [r9, r0]
c0de9f2c:	4448      	add	r0, r9
c0de9f2e:	6041      	str	r1, [r0, #4]
c0de9f30:	4770      	bx	lr
c0de9f32:	bf00      	nop
c0de9f34:	00002970 	.word	0x00002970

c0de9f38 <io_recv_command>:
c0de9f38:	b510      	push	{r4, lr}
c0de9f3a:	4c0d      	ldr	r4, [pc, #52]	@ (c0de9f70 <io_recv_command+0x38>)
c0de9f3c:	f819 1004 	ldrb.w	r1, [r9, r4]
c0de9f40:	b151      	cbz	r1, c0de9f58 <io_recv_command+0x20>
c0de9f42:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de9f46:	2902      	cmp	r1, #2
c0de9f48:	d00e      	beq.n	c0de9f68 <io_recv_command+0x30>
c0de9f4a:	2901      	cmp	r1, #1
c0de9f4c:	d10f      	bne.n	c0de9f6e <io_recv_command+0x36>
c0de9f4e:	2002      	movs	r0, #2
c0de9f50:	f809 0004 	strb.w	r0, [r9, r4]
c0de9f54:	2010      	movs	r0, #16
c0de9f56:	e000      	b.n	c0de9f5a <io_recv_command+0x22>
c0de9f58:	2004      	movs	r0, #4
c0de9f5a:	eb09 0104 	add.w	r1, r9, r4
c0de9f5e:	8889      	ldrh	r1, [r1, #4]
c0de9f60:	f001 fa94 	bl	c0deb48c <io_exchange>
c0de9f64:	2101      	movs	r1, #1
c0de9f66:	e000      	b.n	c0de9f6a <io_recv_command+0x32>
c0de9f68:	2100      	movs	r1, #0
c0de9f6a:	f809 1004 	strb.w	r1, [r9, r4]
c0de9f6e:	bd10      	pop	{r4, pc}
c0de9f70:	00002970 	.word	0x00002970

c0de9f74 <io_send_response_buffers>:
c0de9f74:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de9f78:	4f23      	ldr	r7, [pc, #140]	@ (c0dea008 <io_send_response_buffers+0x94>)
c0de9f7a:	4c24      	ldr	r4, [pc, #144]	@ (c0dea00c <io_send_response_buffers+0x98>)
c0de9f7c:	4690      	mov	r8, r2
c0de9f7e:	460e      	mov	r6, r1
c0de9f80:	4605      	mov	r5, r0
c0de9f82:	2100      	movs	r1, #0
c0de9f84:	eb09 0007 	add.w	r0, r9, r7
c0de9f88:	6041      	str	r1, [r0, #4]
c0de9f8a:	b1e5      	cbz	r5, c0de9fc6 <io_send_response_buffers+0x52>
c0de9f8c:	b1de      	cbz	r6, c0de9fc6 <io_send_response_buffers+0x52>
c0de9f8e:	2100      	movs	r1, #0
c0de9f90:	b1ce      	cbz	r6, c0de9fc6 <io_send_response_buffers+0x52>
c0de9f92:	eb09 0004 	add.w	r0, r9, r4
c0de9f96:	f5c1 7281 	rsb	r2, r1, #258	@ 0x102
c0de9f9a:	1843      	adds	r3, r0, r1
c0de9f9c:	4628      	mov	r0, r5
c0de9f9e:	4619      	mov	r1, r3
c0de9fa0:	f7ff fdbe 	bl	c0de9b20 <buffer_copy>
c0de9fa4:	b150      	cbz	r0, c0de9fbc <io_send_response_buffers+0x48>
c0de9fa6:	e9d5 2301 	ldrd	r2, r3, [r5, #4]
c0de9faa:	eb09 0007 	add.w	r0, r9, r7
c0de9fae:	350c      	adds	r5, #12
c0de9fb0:	3e01      	subs	r6, #1
c0de9fb2:	6841      	ldr	r1, [r0, #4]
c0de9fb4:	1ad2      	subs	r2, r2, r3
c0de9fb6:	4411      	add	r1, r2
c0de9fb8:	6041      	str	r1, [r0, #4]
c0de9fba:	e7e9      	b.n	c0de9f90 <io_send_response_buffers+0x1c>
c0de9fbc:	f44f 4830 	mov.w	r8, #45056	@ 0xb000
c0de9fc0:	2500      	movs	r5, #0
c0de9fc2:	2600      	movs	r6, #0
c0de9fc4:	e7dd      	b.n	c0de9f82 <io_send_response_buffers+0xe>
c0de9fc6:	eb09 0004 	add.w	r0, r9, r4
c0de9fca:	fa1f f288 	uxth.w	r2, r8
c0de9fce:	f000 f8ed 	bl	c0dea1ac <write_u16_be>
c0de9fd2:	eb09 0107 	add.w	r1, r9, r7
c0de9fd6:	6848      	ldr	r0, [r1, #4]
c0de9fd8:	3002      	adds	r0, #2
c0de9fda:	6048      	str	r0, [r1, #4]
c0de9fdc:	f819 1007 	ldrb.w	r1, [r9, r7]
c0de9fe0:	3901      	subs	r1, #1
c0de9fe2:	2901      	cmp	r1, #1
c0de9fe4:	bf84      	itt	hi
c0de9fe6:	f04f 30ff 	movhi.w	r0, #4294967295	@ 0xffffffff
c0de9fea:	e8bd 81f0 	ldmiahi.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de9fee:	b281      	uxth	r1, r0
c0de9ff0:	2020      	movs	r0, #32
c0de9ff2:	f001 fa4b 	bl	c0deb48c <io_exchange>
c0de9ff6:	2100      	movs	r1, #0
c0de9ff8:	eb09 0207 	add.w	r2, r9, r7
c0de9ffc:	f809 1007 	strb.w	r1, [r9, r7]
c0dea000:	6051      	str	r1, [r2, #4]
c0dea002:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0dea006:	bf00      	nop
c0dea008:	00002970 	.word	0x00002970
c0dea00c:	00002a64 	.word	0x00002a64

c0dea010 <app_exit>:
c0dea010:	20ff      	movs	r0, #255	@ 0xff
c0dea012:	f002 f8c1 	bl	c0dec198 <os_sched_exit>

c0dea016 <common_app_init>:
c0dea016:	b580      	push	{r7, lr}
c0dea018:	f7fc fb96 	bl	c0de6748 <nbgl_objInit>
c0dea01c:	f001 f9c8 	bl	c0deb3b0 <io_seproxyhal_init>
c0dea020:	2000      	movs	r0, #0
c0dea022:	f000 ffaf 	bl	c0deaf84 <USB_power>
c0dea026:	2001      	movs	r0, #1
c0dea028:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0dea02c:	f000 bfaa 	b.w	c0deaf84 <USB_power>

c0dea030 <standalone_app_main>:
c0dea030:	b510      	push	{r4, lr}
c0dea032:	b08c      	sub	sp, #48	@ 0x30
c0dea034:	466c      	mov	r4, sp
c0dea036:	4620      	mov	r0, r4
c0dea038:	f002 faee 	bl	c0dec618 <setjmp>
c0dea03c:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0dea040:	0400      	lsls	r0, r0, #16
c0dea042:	d108      	bne.n	c0dea056 <standalone_app_main+0x26>
c0dea044:	4668      	mov	r0, sp
c0dea046:	f002 f8d7 	bl	c0dec1f8 <try_context_set>
c0dea04a:	900a      	str	r0, [sp, #40]	@ 0x28
c0dea04c:	f7ff ffe3 	bl	c0dea016 <common_app_init>
c0dea050:	f7f6 f926 	bl	c0de02a0 <app_main>
c0dea054:	e005      	b.n	c0dea062 <standalone_app_main+0x32>
c0dea056:	2000      	movs	r0, #0
c0dea058:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0dea05c:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0dea05e:	f002 f8cb 	bl	c0dec1f8 <try_context_set>
c0dea062:	f002 f8c1 	bl	c0dec1e8 <try_context_get>
c0dea066:	42a0      	cmp	r0, r4
c0dea068:	d102      	bne.n	c0dea070 <standalone_app_main+0x40>
c0dea06a:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0dea06c:	f002 f8c4 	bl	c0dec1f8 <try_context_set>
c0dea070:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0dea074:	b908      	cbnz	r0, c0dea07a <standalone_app_main+0x4a>
c0dea076:	f7ff ffcb 	bl	c0dea010 <app_exit>
c0dea07a:	f001 f88f 	bl	c0deb19c <os_longjmp>

c0dea07e <apdu_parser>:
c0dea07e:	2a04      	cmp	r2, #4
c0dea080:	d316      	bcc.n	c0dea0b0 <apdu_parser+0x32>
c0dea082:	d102      	bne.n	c0dea08a <apdu_parser+0xc>
c0dea084:	2300      	movs	r3, #0
c0dea086:	7103      	strb	r3, [r0, #4]
c0dea088:	e004      	b.n	c0dea094 <apdu_parser+0x16>
c0dea08a:	790b      	ldrb	r3, [r1, #4]
c0dea08c:	3a05      	subs	r2, #5
c0dea08e:	429a      	cmp	r2, r3
c0dea090:	7103      	strb	r3, [r0, #4]
c0dea092:	d10d      	bne.n	c0dea0b0 <apdu_parser+0x32>
c0dea094:	780a      	ldrb	r2, [r1, #0]
c0dea096:	2b00      	cmp	r3, #0
c0dea098:	7002      	strb	r2, [r0, #0]
c0dea09a:	784a      	ldrb	r2, [r1, #1]
c0dea09c:	7042      	strb	r2, [r0, #1]
c0dea09e:	788a      	ldrb	r2, [r1, #2]
c0dea0a0:	7082      	strb	r2, [r0, #2]
c0dea0a2:	bf18      	it	ne
c0dea0a4:	1d4b      	addne	r3, r1, #5
c0dea0a6:	78c9      	ldrb	r1, [r1, #3]
c0dea0a8:	6083      	str	r3, [r0, #8]
c0dea0aa:	70c1      	strb	r1, [r0, #3]
c0dea0ac:	2001      	movs	r0, #1
c0dea0ae:	4770      	bx	lr
c0dea0b0:	2000      	movs	r0, #0
c0dea0b2:	4770      	bx	lr

c0dea0b4 <read_u32_be>:
c0dea0b4:	5c42      	ldrb	r2, [r0, r1]
c0dea0b6:	4408      	add	r0, r1
c0dea0b8:	7841      	ldrb	r1, [r0, #1]
c0dea0ba:	7883      	ldrb	r3, [r0, #2]
c0dea0bc:	78c0      	ldrb	r0, [r0, #3]
c0dea0be:	0409      	lsls	r1, r1, #16
c0dea0c0:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0dea0c4:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0dea0c8:	4408      	add	r0, r1
c0dea0ca:	4770      	bx	lr

c0dea0cc <read_u64_be>:
c0dea0cc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0dea0ce:	1842      	adds	r2, r0, r1
c0dea0d0:	5c40      	ldrb	r0, [r0, r1]
c0dea0d2:	7917      	ldrb	r7, [r2, #4]
c0dea0d4:	7953      	ldrb	r3, [r2, #5]
c0dea0d6:	7854      	ldrb	r4, [r2, #1]
c0dea0d8:	7895      	ldrb	r5, [r2, #2]
c0dea0da:	78d6      	ldrb	r6, [r2, #3]
c0dea0dc:	063f      	lsls	r7, r7, #24
c0dea0de:	0421      	lsls	r1, r4, #16
c0dea0e0:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0dea0e4:	7997      	ldrb	r7, [r2, #6]
c0dea0e6:	79d2      	ldrb	r2, [r2, #7]
c0dea0e8:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0dea0ec:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0dea0f0:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0dea0f4:	1981      	adds	r1, r0, r6
c0dea0f6:	441a      	add	r2, r3
c0dea0f8:	4610      	mov	r0, r2
c0dea0fa:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0dea0fc <read_u16_le>:
c0dea0fc:	5c42      	ldrb	r2, [r0, r1]
c0dea0fe:	4408      	add	r0, r1
c0dea100:	7840      	ldrb	r0, [r0, #1]
c0dea102:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0dea106:	b280      	uxth	r0, r0
c0dea108:	4770      	bx	lr

c0dea10a <read_u32_le>:
c0dea10a:	5c42      	ldrb	r2, [r0, r1]
c0dea10c:	4408      	add	r0, r1
c0dea10e:	7841      	ldrb	r1, [r0, #1]
c0dea110:	7883      	ldrb	r3, [r0, #2]
c0dea112:	78c0      	ldrb	r0, [r0, #3]
c0dea114:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0dea118:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0dea11c:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0dea120:	4770      	bx	lr

c0dea122 <read_u64_le>:
c0dea122:	b5b0      	push	{r4, r5, r7, lr}
c0dea124:	5c42      	ldrb	r2, [r0, r1]
c0dea126:	4401      	add	r1, r0
c0dea128:	7848      	ldrb	r0, [r1, #1]
c0dea12a:	788b      	ldrb	r3, [r1, #2]
c0dea12c:	790d      	ldrb	r5, [r1, #4]
c0dea12e:	78cc      	ldrb	r4, [r1, #3]
c0dea130:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0dea134:	794a      	ldrb	r2, [r1, #5]
c0dea136:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0dea13a:	798b      	ldrb	r3, [r1, #6]
c0dea13c:	79c9      	ldrb	r1, [r1, #7]
c0dea13e:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0dea142:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0dea146:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0dea14a:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0dea14e:	bdb0      	pop	{r4, r5, r7, pc}

c0dea150 <varint_read>:
c0dea150:	b510      	push	{r4, lr}
c0dea152:	b1d9      	cbz	r1, c0dea18c <varint_read+0x3c>
c0dea154:	4614      	mov	r4, r2
c0dea156:	4602      	mov	r2, r0
c0dea158:	7800      	ldrb	r0, [r0, #0]
c0dea15a:	28ff      	cmp	r0, #255	@ 0xff
c0dea15c:	d00c      	beq.n	c0dea178 <varint_read+0x28>
c0dea15e:	28fe      	cmp	r0, #254	@ 0xfe
c0dea160:	d012      	beq.n	c0dea188 <varint_read+0x38>
c0dea162:	28fd      	cmp	r0, #253	@ 0xfd
c0dea164:	d115      	bne.n	c0dea192 <varint_read+0x42>
c0dea166:	2903      	cmp	r1, #3
c0dea168:	d310      	bcc.n	c0dea18c <varint_read+0x3c>
c0dea16a:	4610      	mov	r0, r2
c0dea16c:	2101      	movs	r1, #1
c0dea16e:	f7ff ffc5 	bl	c0dea0fc <read_u16_le>
c0dea172:	2100      	movs	r1, #0
c0dea174:	2203      	movs	r2, #3
c0dea176:	e015      	b.n	c0dea1a4 <varint_read+0x54>
c0dea178:	2909      	cmp	r1, #9
c0dea17a:	d307      	bcc.n	c0dea18c <varint_read+0x3c>
c0dea17c:	4610      	mov	r0, r2
c0dea17e:	2101      	movs	r1, #1
c0dea180:	f7ff ffcf 	bl	c0dea122 <read_u64_le>
c0dea184:	2209      	movs	r2, #9
c0dea186:	e00d      	b.n	c0dea1a4 <varint_read+0x54>
c0dea188:	2905      	cmp	r1, #5
c0dea18a:	d205      	bcs.n	c0dea198 <varint_read+0x48>
c0dea18c:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0dea190:	e00a      	b.n	c0dea1a8 <varint_read+0x58>
c0dea192:	2100      	movs	r1, #0
c0dea194:	2201      	movs	r2, #1
c0dea196:	e005      	b.n	c0dea1a4 <varint_read+0x54>
c0dea198:	4610      	mov	r0, r2
c0dea19a:	2101      	movs	r1, #1
c0dea19c:	f7ff ffb5 	bl	c0dea10a <read_u32_le>
c0dea1a0:	2100      	movs	r1, #0
c0dea1a2:	2205      	movs	r2, #5
c0dea1a4:	e9c4 0100 	strd	r0, r1, [r4]
c0dea1a8:	4610      	mov	r0, r2
c0dea1aa:	bd10      	pop	{r4, pc}

c0dea1ac <write_u16_be>:
c0dea1ac:	0a13      	lsrs	r3, r2, #8
c0dea1ae:	5443      	strb	r3, [r0, r1]
c0dea1b0:	4408      	add	r0, r1
c0dea1b2:	7042      	strb	r2, [r0, #1]
c0dea1b4:	4770      	bx	lr

c0dea1b6 <USBD_HID_Setup>:
c0dea1b6:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0dea1b8:	460d      	mov	r5, r1
c0dea1ba:	7809      	ldrb	r1, [r1, #0]
c0dea1bc:	4604      	mov	r4, r0
c0dea1be:	2000      	movs	r0, #0
c0dea1c0:	f8ad 0006 	strh.w	r0, [sp, #6]
c0dea1c4:	f88d 0005 	strb.w	r0, [sp, #5]
c0dea1c8:	f011 0160 	ands.w	r1, r1, #96	@ 0x60
c0dea1cc:	d010      	beq.n	c0dea1f0 <USBD_HID_Setup+0x3a>
c0dea1ce:	2920      	cmp	r1, #32
c0dea1d0:	d13c      	bne.n	c0dea24c <USBD_HID_Setup+0x96>
c0dea1d2:	7868      	ldrb	r0, [r5, #1]
c0dea1d4:	f1a0 010a 	sub.w	r1, r0, #10
c0dea1d8:	2902      	cmp	r1, #2
c0dea1da:	d336      	bcc.n	c0dea24a <USBD_HID_Setup+0x94>
c0dea1dc:	2802      	cmp	r0, #2
c0dea1de:	d018      	beq.n	c0dea212 <USBD_HID_Setup+0x5c>
c0dea1e0:	2803      	cmp	r0, #3
c0dea1e2:	d016      	beq.n	c0dea212 <USBD_HID_Setup+0x5c>
c0dea1e4:	4620      	mov	r0, r4
c0dea1e6:	4629      	mov	r1, r5
c0dea1e8:	f000 fe88 	bl	c0deaefc <USBD_CtlError>
c0dea1ec:	2002      	movs	r0, #2
c0dea1ee:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0dea1f0:	7868      	ldrb	r0, [r5, #1]
c0dea1f2:	280b      	cmp	r0, #11
c0dea1f4:	d012      	beq.n	c0dea21c <USBD_HID_Setup+0x66>
c0dea1f6:	280a      	cmp	r0, #10
c0dea1f8:	d00b      	beq.n	c0dea212 <USBD_HID_Setup+0x5c>
c0dea1fa:	2806      	cmp	r0, #6
c0dea1fc:	d125      	bne.n	c0dea24a <USBD_HID_Setup+0x94>
c0dea1fe:	78e8      	ldrb	r0, [r5, #3]
c0dea200:	2821      	cmp	r0, #33	@ 0x21
c0dea202:	d00f      	beq.n	c0dea224 <USBD_HID_Setup+0x6e>
c0dea204:	2822      	cmp	r0, #34	@ 0x22
c0dea206:	d11b      	bne.n	c0dea240 <USBD_HID_Setup+0x8a>
c0dea208:	f10d 0006 	add.w	r0, sp, #6
c0dea20c:	f000 fd92 	bl	c0dead34 <USBD_HID_GetReportDescriptor_impl>
c0dea210:	e00c      	b.n	c0dea22c <USBD_HID_Setup+0x76>
c0dea212:	f10d 0105 	add.w	r1, sp, #5
c0dea216:	4620      	mov	r0, r4
c0dea218:	2201      	movs	r2, #1
c0dea21a:	e014      	b.n	c0dea246 <USBD_HID_Setup+0x90>
c0dea21c:	4620      	mov	r0, r4
c0dea21e:	f000 fc26 	bl	c0deaa6e <USBD_CtlSendStatus>
c0dea222:	e012      	b.n	c0dea24a <USBD_HID_Setup+0x94>
c0dea224:	f10d 0006 	add.w	r0, sp, #6
c0dea228:	f000 fd70 	bl	c0dead0c <USBD_HID_GetHidDescriptor_impl>
c0dea22c:	4601      	mov	r1, r0
c0dea22e:	88ea      	ldrh	r2, [r5, #6]
c0dea230:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0dea234:	4290      	cmp	r0, r2
c0dea236:	bf38      	it	cc
c0dea238:	4602      	movcc	r2, r0
c0dea23a:	f8ad 2006 	strh.w	r2, [sp, #6]
c0dea23e:	e001      	b.n	c0dea244 <USBD_HID_Setup+0x8e>
c0dea240:	2200      	movs	r2, #0
c0dea242:	2100      	movs	r1, #0
c0dea244:	4620      	mov	r0, r4
c0dea246:	f000 fbf1 	bl	c0deaa2c <USBD_CtlSendData>
c0dea24a:	2000      	movs	r0, #0
c0dea24c:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0dea24e <USBD_HID_Init>:
c0dea24e:	b510      	push	{r4, lr}
c0dea250:	2182      	movs	r1, #130	@ 0x82
c0dea252:	2203      	movs	r2, #3
c0dea254:	2340      	movs	r3, #64	@ 0x40
c0dea256:	4604      	mov	r4, r0
c0dea258:	f000 fc62 	bl	c0deab20 <USBD_LL_OpenEP>
c0dea25c:	4620      	mov	r0, r4
c0dea25e:	2102      	movs	r1, #2
c0dea260:	2203      	movs	r2, #3
c0dea262:	2340      	movs	r3, #64	@ 0x40
c0dea264:	f000 fc5c 	bl	c0deab20 <USBD_LL_OpenEP>
c0dea268:	4620      	mov	r0, r4
c0dea26a:	2102      	movs	r1, #2
c0dea26c:	2240      	movs	r2, #64	@ 0x40
c0dea26e:	f000 fd13 	bl	c0deac98 <USBD_LL_PrepareReceive>
c0dea272:	2000      	movs	r0, #0
c0dea274:	bd10      	pop	{r4, pc}

c0dea276 <USBD_HID_DeInit>:
c0dea276:	2000      	movs	r0, #0
c0dea278:	4770      	bx	lr

c0dea27a <USBD_Init>:
c0dea27a:	b190      	cbz	r0, c0dea2a2 <USBD_Init+0x28>
c0dea27c:	b570      	push	{r4, r5, r6, lr}
c0dea27e:	460e      	mov	r6, r1
c0dea280:	21d4      	movs	r1, #212	@ 0xd4
c0dea282:	4615      	mov	r5, r2
c0dea284:	4604      	mov	r4, r0
c0dea286:	f002 f985 	bl	c0dec594 <__aeabi_memclr>
c0dea28a:	b10e      	cbz	r6, c0dea290 <USBD_Init+0x16>
c0dea28c:	f8c4 60b0 	str.w	r6, [r4, #176]	@ 0xb0
c0dea290:	2001      	movs	r0, #1
c0dea292:	7025      	strb	r5, [r4, #0]
c0dea294:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0dea298:	4620      	mov	r0, r4
c0dea29a:	f000 fc05 	bl	c0deaaa8 <USBD_LL_Init>
c0dea29e:	2000      	movs	r0, #0
c0dea2a0:	bd70      	pop	{r4, r5, r6, pc}
c0dea2a2:	2002      	movs	r0, #2
c0dea2a4:	4770      	bx	lr

c0dea2a6 <USBD_DeInit>:
c0dea2a6:	b5b0      	push	{r4, r5, r7, lr}
c0dea2a8:	4604      	mov	r4, r0
c0dea2aa:	2001      	movs	r0, #1
c0dea2ac:	25b4      	movs	r5, #180	@ 0xb4
c0dea2ae:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0dea2b2:	2dcc      	cmp	r5, #204	@ 0xcc
c0dea2b4:	d008      	beq.n	c0dea2c8 <USBD_DeInit+0x22>
c0dea2b6:	5960      	ldr	r0, [r4, r5]
c0dea2b8:	b120      	cbz	r0, c0dea2c4 <USBD_DeInit+0x1e>
c0dea2ba:	6840      	ldr	r0, [r0, #4]
c0dea2bc:	f001 fd9a 	bl	c0debdf4 <pic>
c0dea2c0:	f000 f973 	bl	c0dea5aa <OUTLINED_FUNCTION_3>
c0dea2c4:	3508      	adds	r5, #8
c0dea2c6:	e7f4      	b.n	c0dea2b2 <USBD_DeInit+0xc>
c0dea2c8:	4620      	mov	r0, r4
c0dea2ca:	f000 fc21 	bl	c0deab10 <USBD_LL_Stop>
c0dea2ce:	4620      	mov	r0, r4
c0dea2d0:	f000 fbf8 	bl	c0deaac4 <USBD_LL_DeInit>
c0dea2d4:	2000      	movs	r0, #0
c0dea2d6:	bdb0      	pop	{r4, r5, r7, pc}

c0dea2d8 <USBD_RegisterClassForInterface>:
c0dea2d8:	b13a      	cbz	r2, c0dea2ea <USBD_RegisterClassForInterface+0x12>
c0dea2da:	2802      	cmp	r0, #2
c0dea2dc:	bf9c      	itt	ls
c0dea2de:	eb01 00c0 	addls.w	r0, r1, r0, lsl #3
c0dea2e2:	f8c0 20b4 	strls.w	r2, [r0, #180]	@ 0xb4
c0dea2e6:	2000      	movs	r0, #0
c0dea2e8:	4770      	bx	lr
c0dea2ea:	2002      	movs	r0, #2
c0dea2ec:	4770      	bx	lr

c0dea2ee <USBD_Start>:
c0dea2ee:	b580      	push	{r7, lr}
c0dea2f0:	f000 fbf0 	bl	c0deaad4 <USBD_LL_Start>
c0dea2f4:	2000      	movs	r0, #0
c0dea2f6:	bd80      	pop	{r7, pc}

c0dea2f8 <USBD_SetClassConfig>:
c0dea2f8:	b570      	push	{r4, r5, r6, lr}
c0dea2fa:	460c      	mov	r4, r1
c0dea2fc:	4605      	mov	r5, r0
c0dea2fe:	2600      	movs	r6, #0
c0dea300:	2e03      	cmp	r6, #3
c0dea302:	bf04      	itt	eq
c0dea304:	2000      	moveq	r0, #0
c0dea306:	bd70      	popeq	{r4, r5, r6, pc}
c0dea308:	4628      	mov	r0, r5
c0dea30a:	4631      	mov	r1, r6
c0dea30c:	f000 f951 	bl	c0dea5b2 <usbd_is_valid_intf>
c0dea310:	b150      	cbz	r0, c0dea328 <USBD_SetClassConfig+0x30>
c0dea312:	eb05 00c6 	add.w	r0, r5, r6, lsl #3
c0dea316:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0dea31a:	6800      	ldr	r0, [r0, #0]
c0dea31c:	f001 fd6a 	bl	c0debdf4 <pic>
c0dea320:	4602      	mov	r2, r0
c0dea322:	4628      	mov	r0, r5
c0dea324:	4621      	mov	r1, r4
c0dea326:	4790      	blx	r2
c0dea328:	3601      	adds	r6, #1
c0dea32a:	e7e9      	b.n	c0dea300 <USBD_SetClassConfig+0x8>

c0dea32c <USBD_ClrClassConfig>:
c0dea32c:	b570      	push	{r4, r5, r6, lr}
c0dea32e:	460c      	mov	r4, r1
c0dea330:	4605      	mov	r5, r0
c0dea332:	2600      	movs	r6, #0
c0dea334:	2e03      	cmp	r6, #3
c0dea336:	bf04      	itt	eq
c0dea338:	2000      	moveq	r0, #0
c0dea33a:	bd70      	popeq	{r4, r5, r6, pc}
c0dea33c:	4628      	mov	r0, r5
c0dea33e:	4631      	mov	r1, r6
c0dea340:	f000 f937 	bl	c0dea5b2 <usbd_is_valid_intf>
c0dea344:	b138      	cbz	r0, c0dea356 <USBD_ClrClassConfig+0x2a>
c0dea346:	eb05 00c6 	add.w	r0, r5, r6, lsl #3
c0dea34a:	f000 f924 	bl	c0dea596 <OUTLINED_FUNCTION_1>
c0dea34e:	4602      	mov	r2, r0
c0dea350:	4628      	mov	r0, r5
c0dea352:	4621      	mov	r1, r4
c0dea354:	4790      	blx	r2
c0dea356:	3601      	adds	r6, #1
c0dea358:	e7ec      	b.n	c0dea334 <USBD_ClrClassConfig+0x8>

c0dea35a <USBD_LL_SetupStage>:
c0dea35a:	b5b0      	push	{r4, r5, r7, lr}
c0dea35c:	f100 05a8 	add.w	r5, r0, #168	@ 0xa8
c0dea360:	4604      	mov	r4, r0
c0dea362:	4628      	mov	r0, r5
c0dea364:	f000 fb33 	bl	c0dea9ce <USBD_ParseSetupRequest>
c0dea368:	f8b4 10ae 	ldrh.w	r1, [r4, #174]	@ 0xae
c0dea36c:	2001      	movs	r0, #1
c0dea36e:	e9c4 0125 	strd	r0, r1, [r4, #148]	@ 0x94
c0dea372:	f894 00a8 	ldrb.w	r0, [r4, #168]	@ 0xa8
c0dea376:	f000 011f 	and.w	r1, r0, #31
c0dea37a:	2902      	cmp	r1, #2
c0dea37c:	d007      	beq.n	c0dea38e <USBD_LL_SetupStage+0x34>
c0dea37e:	2901      	cmp	r1, #1
c0dea380:	d00a      	beq.n	c0dea398 <USBD_LL_SetupStage+0x3e>
c0dea382:	b971      	cbnz	r1, c0dea3a2 <USBD_LL_SetupStage+0x48>
c0dea384:	4620      	mov	r0, r4
c0dea386:	4629      	mov	r1, r5
c0dea388:	f000 f91f 	bl	c0dea5ca <USBD_StdDevReq>
c0dea38c:	e00e      	b.n	c0dea3ac <USBD_LL_SetupStage+0x52>
c0dea38e:	4620      	mov	r0, r4
c0dea390:	4629      	mov	r1, r5
c0dea392:	f000 faa9 	bl	c0dea8e8 <USBD_StdEPReq>
c0dea396:	e009      	b.n	c0dea3ac <USBD_LL_SetupStage+0x52>
c0dea398:	4620      	mov	r0, r4
c0dea39a:	4629      	mov	r1, r5
c0dea39c:	f000 fa88 	bl	c0dea8b0 <USBD_StdItfReq>
c0dea3a0:	e004      	b.n	c0dea3ac <USBD_LL_SetupStage+0x52>
c0dea3a2:	f000 0180 	and.w	r1, r0, #128	@ 0x80
c0dea3a6:	4620      	mov	r0, r4
c0dea3a8:	f000 fbee 	bl	c0deab88 <USBD_LL_StallEP>
c0dea3ac:	2000      	movs	r0, #0
c0dea3ae:	bdb0      	pop	{r4, r5, r7, pc}

c0dea3b0 <USBD_LL_DataOutStage>:
c0dea3b0:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0dea3b4:	4690      	mov	r8, r2
c0dea3b6:	4604      	mov	r4, r0
c0dea3b8:	b1c9      	cbz	r1, c0dea3ee <USBD_LL_DataOutStage+0x3e>
c0dea3ba:	469a      	mov	sl, r3
c0dea3bc:	460f      	mov	r7, r1
c0dea3be:	2500      	movs	r5, #0
c0dea3c0:	2d03      	cmp	r5, #3
c0dea3c2:	d03f      	beq.n	c0dea444 <USBD_LL_DataOutStage+0x94>
c0dea3c4:	f000 f8e3 	bl	c0dea58e <OUTLINED_FUNCTION_0>
c0dea3c8:	b178      	cbz	r0, c0dea3ea <USBD_LL_DataOutStage+0x3a>
c0dea3ca:	f000 f8e9 	bl	c0dea5a0 <OUTLINED_FUNCTION_2>
c0dea3ce:	6980      	ldr	r0, [r0, #24]
c0dea3d0:	b158      	cbz	r0, c0dea3ea <USBD_LL_DataOutStage+0x3a>
c0dea3d2:	f894 109c 	ldrb.w	r1, [r4, #156]	@ 0x9c
c0dea3d6:	2903      	cmp	r1, #3
c0dea3d8:	d107      	bne.n	c0dea3ea <USBD_LL_DataOutStage+0x3a>
c0dea3da:	f001 fd0b 	bl	c0debdf4 <pic>
c0dea3de:	4606      	mov	r6, r0
c0dea3e0:	4620      	mov	r0, r4
c0dea3e2:	4639      	mov	r1, r7
c0dea3e4:	4642      	mov	r2, r8
c0dea3e6:	4653      	mov	r3, sl
c0dea3e8:	47b0      	blx	r6
c0dea3ea:	3501      	adds	r5, #1
c0dea3ec:	e7e8      	b.n	c0dea3c0 <USBD_LL_DataOutStage+0x10>
c0dea3ee:	f8d4 0094 	ldr.w	r0, [r4, #148]	@ 0x94
c0dea3f2:	2803      	cmp	r0, #3
c0dea3f4:	d126      	bne.n	c0dea444 <USBD_LL_DataOutStage+0x94>
c0dea3f6:	e9d4 1017 	ldrd	r1, r0, [r4, #92]	@ 0x5c
c0dea3fa:	4281      	cmp	r1, r0
c0dea3fc:	d90a      	bls.n	c0dea414 <USBD_LL_DataOutStage+0x64>
c0dea3fe:	1a09      	subs	r1, r1, r0
c0dea400:	65e1      	str	r1, [r4, #92]	@ 0x5c
c0dea402:	4281      	cmp	r1, r0
c0dea404:	bf38      	it	cc
c0dea406:	4608      	movcc	r0, r1
c0dea408:	b282      	uxth	r2, r0
c0dea40a:	4641      	mov	r1, r8
c0dea40c:	4620      	mov	r0, r4
c0dea40e:	f000 fb28 	bl	c0deaa62 <USBD_CtlContinueRx>
c0dea412:	e017      	b.n	c0dea444 <USBD_LL_DataOutStage+0x94>
c0dea414:	2500      	movs	r5, #0
c0dea416:	2d03      	cmp	r5, #3
c0dea418:	d011      	beq.n	c0dea43e <USBD_LL_DataOutStage+0x8e>
c0dea41a:	f000 f8b8 	bl	c0dea58e <OUTLINED_FUNCTION_0>
c0dea41e:	b160      	cbz	r0, c0dea43a <USBD_LL_DataOutStage+0x8a>
c0dea420:	f000 f8be 	bl	c0dea5a0 <OUTLINED_FUNCTION_2>
c0dea424:	6900      	ldr	r0, [r0, #16]
c0dea426:	b140      	cbz	r0, c0dea43a <USBD_LL_DataOutStage+0x8a>
c0dea428:	f894 109c 	ldrb.w	r1, [r4, #156]	@ 0x9c
c0dea42c:	2903      	cmp	r1, #3
c0dea42e:	d104      	bne.n	c0dea43a <USBD_LL_DataOutStage+0x8a>
c0dea430:	f001 fce0 	bl	c0debdf4 <pic>
c0dea434:	4601      	mov	r1, r0
c0dea436:	4620      	mov	r0, r4
c0dea438:	4788      	blx	r1
c0dea43a:	3501      	adds	r5, #1
c0dea43c:	e7eb      	b.n	c0dea416 <USBD_LL_DataOutStage+0x66>
c0dea43e:	4620      	mov	r0, r4
c0dea440:	f000 fb15 	bl	c0deaa6e <USBD_CtlSendStatus>
c0dea444:	2000      	movs	r0, #0
c0dea446:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0dea44a <USBD_LL_DataInStage>:
c0dea44a:	b570      	push	{r4, r5, r6, lr}
c0dea44c:	4604      	mov	r4, r0
c0dea44e:	b1d1      	cbz	r1, c0dea486 <USBD_LL_DataInStage+0x3c>
c0dea450:	460d      	mov	r5, r1
c0dea452:	2600      	movs	r6, #0
c0dea454:	2e03      	cmp	r6, #3
c0dea456:	d060      	beq.n	c0dea51a <USBD_LL_DataInStage+0xd0>
c0dea458:	4620      	mov	r0, r4
c0dea45a:	4631      	mov	r1, r6
c0dea45c:	f000 f8a9 	bl	c0dea5b2 <usbd_is_valid_intf>
c0dea460:	b178      	cbz	r0, c0dea482 <USBD_LL_DataInStage+0x38>
c0dea462:	eb04 00c6 	add.w	r0, r4, r6, lsl #3
c0dea466:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0dea46a:	6940      	ldr	r0, [r0, #20]
c0dea46c:	b148      	cbz	r0, c0dea482 <USBD_LL_DataInStage+0x38>
c0dea46e:	f894 109c 	ldrb.w	r1, [r4, #156]	@ 0x9c
c0dea472:	2903      	cmp	r1, #3
c0dea474:	d105      	bne.n	c0dea482 <USBD_LL_DataInStage+0x38>
c0dea476:	f001 fcbd 	bl	c0debdf4 <pic>
c0dea47a:	4602      	mov	r2, r0
c0dea47c:	4620      	mov	r0, r4
c0dea47e:	4629      	mov	r1, r5
c0dea480:	4790      	blx	r2
c0dea482:	3601      	adds	r6, #1
c0dea484:	e7e6      	b.n	c0dea454 <USBD_LL_DataInStage+0xa>
c0dea486:	f8d4 0094 	ldr.w	r0, [r4, #148]	@ 0x94
c0dea48a:	2802      	cmp	r0, #2
c0dea48c:	d13e      	bne.n	c0dea50c <USBD_LL_DataInStage+0xc2>
c0dea48e:	e9d4 1007 	ldrd	r1, r0, [r4, #28]
c0dea492:	4281      	cmp	r1, r0
c0dea494:	d90b      	bls.n	c0dea4ae <USBD_LL_DataInStage+0x64>
c0dea496:	1a0a      	subs	r2, r1, r0
c0dea498:	f8d4 10d0 	ldr.w	r1, [r4, #208]	@ 0xd0
c0dea49c:	61e2      	str	r2, [r4, #28]
c0dea49e:	b292      	uxth	r2, r2
c0dea4a0:	4401      	add	r1, r0
c0dea4a2:	4620      	mov	r0, r4
c0dea4a4:	f8c4 10d0 	str.w	r1, [r4, #208]	@ 0xd0
c0dea4a8:	f000 fad1 	bl	c0deaa4e <USBD_CtlContinueSendData>
c0dea4ac:	e02e      	b.n	c0dea50c <USBD_LL_DataInStage+0xc2>
c0dea4ae:	b1a0      	cbz	r0, c0dea4da <USBD_LL_DataInStage+0x90>
c0dea4b0:	69a1      	ldr	r1, [r4, #24]
c0dea4b2:	fbb1 f2f0 	udiv	r2, r1, r0
c0dea4b6:	fb02 1210 	mls	r2, r2, r0, r1
c0dea4ba:	b972      	cbnz	r2, c0dea4da <USBD_LL_DataInStage+0x90>
c0dea4bc:	4281      	cmp	r1, r0
c0dea4be:	d30c      	bcc.n	c0dea4da <USBD_LL_DataInStage+0x90>
c0dea4c0:	f8d4 0098 	ldr.w	r0, [r4, #152]	@ 0x98
c0dea4c4:	4281      	cmp	r1, r0
c0dea4c6:	d208      	bcs.n	c0dea4da <USBD_LL_DataInStage+0x90>
c0dea4c8:	4620      	mov	r0, r4
c0dea4ca:	2100      	movs	r1, #0
c0dea4cc:	2200      	movs	r2, #0
c0dea4ce:	2500      	movs	r5, #0
c0dea4d0:	f000 fabd 	bl	c0deaa4e <USBD_CtlContinueSendData>
c0dea4d4:	f8c4 5098 	str.w	r5, [r4, #152]	@ 0x98
c0dea4d8:	e018      	b.n	c0dea50c <USBD_LL_DataInStage+0xc2>
c0dea4da:	2500      	movs	r5, #0
c0dea4dc:	4620      	mov	r0, r4
c0dea4de:	2d03      	cmp	r5, #3
c0dea4e0:	d012      	beq.n	c0dea508 <USBD_LL_DataInStage+0xbe>
c0dea4e2:	4629      	mov	r1, r5
c0dea4e4:	f000 f865 	bl	c0dea5b2 <usbd_is_valid_intf>
c0dea4e8:	b160      	cbz	r0, c0dea504 <USBD_LL_DataInStage+0xba>
c0dea4ea:	f000 f859 	bl	c0dea5a0 <OUTLINED_FUNCTION_2>
c0dea4ee:	68c0      	ldr	r0, [r0, #12]
c0dea4f0:	b140      	cbz	r0, c0dea504 <USBD_LL_DataInStage+0xba>
c0dea4f2:	f894 109c 	ldrb.w	r1, [r4, #156]	@ 0x9c
c0dea4f6:	2903      	cmp	r1, #3
c0dea4f8:	d104      	bne.n	c0dea504 <USBD_LL_DataInStage+0xba>
c0dea4fa:	f001 fc7b 	bl	c0debdf4 <pic>
c0dea4fe:	4601      	mov	r1, r0
c0dea500:	4620      	mov	r0, r4
c0dea502:	4788      	blx	r1
c0dea504:	3501      	adds	r5, #1
c0dea506:	e7e9      	b.n	c0dea4dc <USBD_LL_DataInStage+0x92>
c0dea508:	f000 fabc 	bl	c0deaa84 <USBD_CtlReceiveStatus>
c0dea50c:	f894 00a0 	ldrb.w	r0, [r4, #160]	@ 0xa0
c0dea510:	2801      	cmp	r0, #1
c0dea512:	bf04      	itt	eq
c0dea514:	2000      	moveq	r0, #0
c0dea516:	f884 00a0 	strbeq.w	r0, [r4, #160]	@ 0xa0
c0dea51a:	2000      	movs	r0, #0
c0dea51c:	bd70      	pop	{r4, r5, r6, pc}

c0dea51e <USBD_LL_Reset>:
c0dea51e:	b5b0      	push	{r4, r5, r7, lr}
c0dea520:	4604      	mov	r4, r0
c0dea522:	2001      	movs	r0, #1
c0dea524:	2500      	movs	r5, #0
c0dea526:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0dea52a:	2040      	movs	r0, #64	@ 0x40
c0dea52c:	6220      	str	r0, [r4, #32]
c0dea52e:	6620      	str	r0, [r4, #96]	@ 0x60
c0dea530:	2d03      	cmp	r5, #3
c0dea532:	bf04      	itt	eq
c0dea534:	2000      	moveq	r0, #0
c0dea536:	bdb0      	popeq	{r4, r5, r7, pc}
c0dea538:	f000 f829 	bl	c0dea58e <OUTLINED_FUNCTION_0>
c0dea53c:	b128      	cbz	r0, c0dea54a <USBD_LL_Reset+0x2c>
c0dea53e:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0dea542:	f000 f828 	bl	c0dea596 <OUTLINED_FUNCTION_1>
c0dea546:	f000 f830 	bl	c0dea5aa <OUTLINED_FUNCTION_3>
c0dea54a:	3501      	adds	r5, #1
c0dea54c:	e7f0      	b.n	c0dea530 <USBD_LL_Reset+0x12>

c0dea54e <USBD_LL_SetSpeed>:
c0dea54e:	7401      	strb	r1, [r0, #16]
c0dea550:	2000      	movs	r0, #0
c0dea552:	4770      	bx	lr

c0dea554 <USBD_LL_Suspend>:
c0dea554:	2000      	movs	r0, #0
c0dea556:	4770      	bx	lr

c0dea558 <USBD_LL_Resume>:
c0dea558:	2000      	movs	r0, #0
c0dea55a:	4770      	bx	lr

c0dea55c <USBD_LL_SOF>:
c0dea55c:	b5b0      	push	{r4, r5, r7, lr}
c0dea55e:	4604      	mov	r4, r0
c0dea560:	f890 009c 	ldrb.w	r0, [r0, #156]	@ 0x9c
c0dea564:	2803      	cmp	r0, #3
c0dea566:	d110      	bne.n	c0dea58a <USBD_LL_SOF+0x2e>
c0dea568:	2500      	movs	r5, #0
c0dea56a:	2d03      	cmp	r5, #3
c0dea56c:	d00d      	beq.n	c0dea58a <USBD_LL_SOF+0x2e>
c0dea56e:	f000 f80e 	bl	c0dea58e <OUTLINED_FUNCTION_0>
c0dea572:	b140      	cbz	r0, c0dea586 <USBD_LL_SOF+0x2a>
c0dea574:	f000 f814 	bl	c0dea5a0 <OUTLINED_FUNCTION_2>
c0dea578:	69c0      	ldr	r0, [r0, #28]
c0dea57a:	b120      	cbz	r0, c0dea586 <USBD_LL_SOF+0x2a>
c0dea57c:	f001 fc3a 	bl	c0debdf4 <pic>
c0dea580:	4601      	mov	r1, r0
c0dea582:	4620      	mov	r0, r4
c0dea584:	4788      	blx	r1
c0dea586:	3501      	adds	r5, #1
c0dea588:	e7ef      	b.n	c0dea56a <USBD_LL_SOF+0xe>
c0dea58a:	2000      	movs	r0, #0
c0dea58c:	bdb0      	pop	{r4, r5, r7, pc}

c0dea58e <OUTLINED_FUNCTION_0>:
c0dea58e:	4620      	mov	r0, r4
c0dea590:	4629      	mov	r1, r5
c0dea592:	f000 b80e 	b.w	c0dea5b2 <usbd_is_valid_intf>

c0dea596 <OUTLINED_FUNCTION_1>:
c0dea596:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0dea59a:	6840      	ldr	r0, [r0, #4]
c0dea59c:	f001 bc2a 	b.w	c0debdf4 <pic>

c0dea5a0 <OUTLINED_FUNCTION_2>:
c0dea5a0:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0dea5a4:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0dea5a8:	4770      	bx	lr

c0dea5aa <OUTLINED_FUNCTION_3>:
c0dea5aa:	7921      	ldrb	r1, [r4, #4]
c0dea5ac:	4602      	mov	r2, r0
c0dea5ae:	4620      	mov	r0, r4
c0dea5b0:	4710      	bx	r2

c0dea5b2 <usbd_is_valid_intf>:
c0dea5b2:	2902      	cmp	r1, #2
c0dea5b4:	bf84      	itt	hi
c0dea5b6:	2000      	movhi	r0, #0
c0dea5b8:	4770      	bxhi	lr
c0dea5ba:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0dea5be:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0dea5c2:	2800      	cmp	r0, #0
c0dea5c4:	bf18      	it	ne
c0dea5c6:	2001      	movne	r0, #1
c0dea5c8:	4770      	bx	lr

c0dea5ca <USBD_StdDevReq>:
c0dea5ca:	b580      	push	{r7, lr}
c0dea5cc:	784a      	ldrb	r2, [r1, #1]
c0dea5ce:	b172      	cbz	r2, c0dea5ee <USBD_StdDevReq+0x24>
c0dea5d0:	2a01      	cmp	r2, #1
c0dea5d2:	d00f      	beq.n	c0dea5f4 <USBD_StdDevReq+0x2a>
c0dea5d4:	2a03      	cmp	r2, #3
c0dea5d6:	d010      	beq.n	c0dea5fa <USBD_StdDevReq+0x30>
c0dea5d8:	2a05      	cmp	r2, #5
c0dea5da:	d011      	beq.n	c0dea600 <USBD_StdDevReq+0x36>
c0dea5dc:	2a09      	cmp	r2, #9
c0dea5de:	d012      	beq.n	c0dea606 <USBD_StdDevReq+0x3c>
c0dea5e0:	2a08      	cmp	r2, #8
c0dea5e2:	d013      	beq.n	c0dea60c <USBD_StdDevReq+0x42>
c0dea5e4:	2a06      	cmp	r2, #6
c0dea5e6:	d114      	bne.n	c0dea612 <USBD_StdDevReq+0x48>
c0dea5e8:	f000 f817 	bl	c0dea61a <USBD_GetDescriptor>
c0dea5ec:	e013      	b.n	c0dea616 <USBD_StdDevReq+0x4c>
c0dea5ee:	f000 f8fd 	bl	c0dea7ec <USBD_GetStatus>
c0dea5f2:	e010      	b.n	c0dea616 <USBD_StdDevReq+0x4c>
c0dea5f4:	f000 f937 	bl	c0dea866 <USBD_ClrFeature>
c0dea5f8:	e00d      	b.n	c0dea616 <USBD_StdDevReq+0x4c>
c0dea5fa:	f000 f91b 	bl	c0dea834 <USBD_SetFeature>
c0dea5fe:	e00a      	b.n	c0dea616 <USBD_StdDevReq+0x4c>
c0dea600:	f000 f887 	bl	c0dea712 <USBD_SetAddress>
c0dea604:	e007      	b.n	c0dea616 <USBD_StdDevReq+0x4c>
c0dea606:	f000 f8a5 	bl	c0dea754 <USBD_SetConfig>
c0dea60a:	e004      	b.n	c0dea616 <USBD_StdDevReq+0x4c>
c0dea60c:	f000 f8da 	bl	c0dea7c4 <USBD_GetConfig>
c0dea610:	e001      	b.n	c0dea616 <USBD_StdDevReq+0x4c>
c0dea612:	f000 fc73 	bl	c0deaefc <USBD_CtlError>
c0dea616:	2000      	movs	r0, #0
c0dea618:	bd80      	pop	{r7, pc}

c0dea61a <USBD_GetDescriptor>:
c0dea61a:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0dea61c:	460d      	mov	r5, r1
c0dea61e:	8849      	ldrh	r1, [r1, #2]
c0dea620:	4604      	mov	r4, r0
c0dea622:	2000      	movs	r0, #0
c0dea624:	f8ad 0006 	strh.w	r0, [sp, #6]
c0dea628:	0a08      	lsrs	r0, r1, #8
c0dea62a:	2801      	cmp	r0, #1
c0dea62c:	d025      	beq.n	c0dea67a <USBD_GetDescriptor+0x60>
c0dea62e:	2802      	cmp	r0, #2
c0dea630:	d02e      	beq.n	c0dea690 <USBD_GetDescriptor+0x76>
c0dea632:	2803      	cmp	r0, #3
c0dea634:	d00a      	beq.n	c0dea64c <USBD_GetDescriptor+0x32>
c0dea636:	2806      	cmp	r0, #6
c0dea638:	d031      	beq.n	c0dea69e <USBD_GetDescriptor+0x84>
c0dea63a:	2807      	cmp	r0, #7
c0dea63c:	d016      	beq.n	c0dea66c <USBD_GetDescriptor+0x52>
c0dea63e:	280f      	cmp	r0, #15
c0dea640:	d12f      	bne.n	c0dea6a2 <USBD_GetDescriptor+0x88>
c0dea642:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0dea646:	69c0      	ldr	r0, [r0, #28]
c0dea648:	b9d0      	cbnz	r0, c0dea680 <USBD_GetDescriptor+0x66>
c0dea64a:	e02a      	b.n	c0dea6a2 <USBD_GetDescriptor+0x88>
c0dea64c:	b2c8      	uxtb	r0, r1
c0dea64e:	2805      	cmp	r0, #5
c0dea650:	d04b      	beq.n	c0dea6ea <USBD_GetDescriptor+0xd0>
c0dea652:	2801      	cmp	r0, #1
c0dea654:	d04d      	beq.n	c0dea6f2 <USBD_GetDescriptor+0xd8>
c0dea656:	2802      	cmp	r0, #2
c0dea658:	d04f      	beq.n	c0dea6fa <USBD_GetDescriptor+0xe0>
c0dea65a:	2803      	cmp	r0, #3
c0dea65c:	d051      	beq.n	c0dea702 <USBD_GetDescriptor+0xe8>
c0dea65e:	2804      	cmp	r0, #4
c0dea660:	d053      	beq.n	c0dea70a <USBD_GetDescriptor+0xf0>
c0dea662:	b9f0      	cbnz	r0, c0dea6a2 <USBD_GetDescriptor+0x88>
c0dea664:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0dea668:	6840      	ldr	r0, [r0, #4]
c0dea66a:	e009      	b.n	c0dea680 <USBD_GetDescriptor+0x66>
c0dea66c:	7c20      	ldrb	r0, [r4, #16]
c0dea66e:	b9c0      	cbnz	r0, c0dea6a2 <USBD_GetDescriptor+0x88>
c0dea670:	f8d4 00b4 	ldr.w	r0, [r4, #180]	@ 0xb4
c0dea674:	b1a8      	cbz	r0, c0dea6a2 <USBD_GetDescriptor+0x88>
c0dea676:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0dea678:	e022      	b.n	c0dea6c0 <USBD_GetDescriptor+0xa6>
c0dea67a:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0dea67e:	6800      	ldr	r0, [r0, #0]
c0dea680:	f001 fbb8 	bl	c0debdf4 <pic>
c0dea684:	4602      	mov	r2, r0
c0dea686:	7c20      	ldrb	r0, [r4, #16]
c0dea688:	f10d 0106 	add.w	r1, sp, #6
c0dea68c:	4790      	blx	r2
c0dea68e:	e01d      	b.n	c0dea6cc <USBD_GetDescriptor+0xb2>
c0dea690:	f8d4 00b4 	ldr.w	r0, [r4, #180]	@ 0xb4
c0dea694:	b158      	cbz	r0, c0dea6ae <USBD_GetDescriptor+0x94>
c0dea696:	7c21      	ldrb	r1, [r4, #16]
c0dea698:	b189      	cbz	r1, c0dea6be <USBD_GetDescriptor+0xa4>
c0dea69a:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0dea69c:	e010      	b.n	c0dea6c0 <USBD_GetDescriptor+0xa6>
c0dea69e:	7c20      	ldrb	r0, [r4, #16]
c0dea6a0:	b138      	cbz	r0, c0dea6b2 <USBD_GetDescriptor+0x98>
c0dea6a2:	4620      	mov	r0, r4
c0dea6a4:	4629      	mov	r1, r5
c0dea6a6:	e8bd 40bc 	ldmia.w	sp!, {r2, r3, r4, r5, r7, lr}
c0dea6aa:	f000 bc27 	b.w	c0deaefc <USBD_CtlError>
c0dea6ae:	2100      	movs	r1, #0
c0dea6b0:	e00d      	b.n	c0dea6ce <USBD_GetDescriptor+0xb4>
c0dea6b2:	f8d4 00b4 	ldr.w	r0, [r4, #180]	@ 0xb4
c0dea6b6:	2800      	cmp	r0, #0
c0dea6b8:	d0f3      	beq.n	c0dea6a2 <USBD_GetDescriptor+0x88>
c0dea6ba:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0dea6bc:	e000      	b.n	c0dea6c0 <USBD_GetDescriptor+0xa6>
c0dea6be:	6a80      	ldr	r0, [r0, #40]	@ 0x28
c0dea6c0:	f001 fb98 	bl	c0debdf4 <pic>
c0dea6c4:	4601      	mov	r1, r0
c0dea6c6:	f10d 0006 	add.w	r0, sp, #6
c0dea6ca:	4788      	blx	r1
c0dea6cc:	4601      	mov	r1, r0
c0dea6ce:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0dea6d2:	b148      	cbz	r0, c0dea6e8 <USBD_GetDescriptor+0xce>
c0dea6d4:	88ea      	ldrh	r2, [r5, #6]
c0dea6d6:	b13a      	cbz	r2, c0dea6e8 <USBD_GetDescriptor+0xce>
c0dea6d8:	4290      	cmp	r0, r2
c0dea6da:	bf38      	it	cc
c0dea6dc:	4602      	movcc	r2, r0
c0dea6de:	4620      	mov	r0, r4
c0dea6e0:	f8ad 2006 	strh.w	r2, [sp, #6]
c0dea6e4:	f000 f9a2 	bl	c0deaa2c <USBD_CtlSendData>
c0dea6e8:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0dea6ea:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0dea6ee:	6980      	ldr	r0, [r0, #24]
c0dea6f0:	e7c6      	b.n	c0dea680 <USBD_GetDescriptor+0x66>
c0dea6f2:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0dea6f6:	6880      	ldr	r0, [r0, #8]
c0dea6f8:	e7c2      	b.n	c0dea680 <USBD_GetDescriptor+0x66>
c0dea6fa:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0dea6fe:	68c0      	ldr	r0, [r0, #12]
c0dea700:	e7be      	b.n	c0dea680 <USBD_GetDescriptor+0x66>
c0dea702:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0dea706:	6900      	ldr	r0, [r0, #16]
c0dea708:	e7ba      	b.n	c0dea680 <USBD_GetDescriptor+0x66>
c0dea70a:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0dea70e:	6940      	ldr	r0, [r0, #20]
c0dea710:	e7b6      	b.n	c0dea680 <USBD_GetDescriptor+0x66>

c0dea712 <USBD_SetAddress>:
c0dea712:	b5b0      	push	{r4, r5, r7, lr}
c0dea714:	4604      	mov	r4, r0
c0dea716:	8888      	ldrh	r0, [r1, #4]
c0dea718:	b928      	cbnz	r0, c0dea726 <USBD_SetAddress+0x14>
c0dea71a:	88c8      	ldrh	r0, [r1, #6]
c0dea71c:	b918      	cbnz	r0, c0dea726 <USBD_SetAddress+0x14>
c0dea71e:	f894 009c 	ldrb.w	r0, [r4, #156]	@ 0x9c
c0dea722:	2803      	cmp	r0, #3
c0dea724:	d104      	bne.n	c0dea730 <USBD_SetAddress+0x1e>
c0dea726:	4620      	mov	r0, r4
c0dea728:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0dea72c:	f000 bbe6 	b.w	c0deaefc <USBD_CtlError>
c0dea730:	7888      	ldrb	r0, [r1, #2]
c0dea732:	f000 057f 	and.w	r5, r0, #127	@ 0x7f
c0dea736:	4620      	mov	r0, r4
c0dea738:	4629      	mov	r1, r5
c0dea73a:	f884 509e 	strb.w	r5, [r4, #158]	@ 0x9e
c0dea73e:	f000 fa77 	bl	c0deac30 <USBD_LL_SetUSBAddress>
c0dea742:	f000 f96d 	bl	c0deaa20 <OUTLINED_FUNCTION_2>
c0dea746:	b10d      	cbz	r5, c0dea74c <USBD_SetAddress+0x3a>
c0dea748:	2002      	movs	r0, #2
c0dea74a:	e000      	b.n	c0dea74e <USBD_SetAddress+0x3c>
c0dea74c:	2001      	movs	r0, #1
c0dea74e:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0dea752:	bdb0      	pop	{r4, r5, r7, pc}

c0dea754 <USBD_SetConfig>:
c0dea754:	b570      	push	{r4, r5, r6, lr}
c0dea756:	788e      	ldrb	r6, [r1, #2]
c0dea758:	460d      	mov	r5, r1
c0dea75a:	4604      	mov	r4, r0
c0dea75c:	2e02      	cmp	r6, #2
c0dea75e:	d21b      	bcs.n	c0dea798 <USBD_SetConfig+0x44>
c0dea760:	f894 009c 	ldrb.w	r0, [r4, #156]	@ 0x9c
c0dea764:	2803      	cmp	r0, #3
c0dea766:	d007      	beq.n	c0dea778 <USBD_SetConfig+0x24>
c0dea768:	2802      	cmp	r0, #2
c0dea76a:	d115      	bne.n	c0dea798 <USBD_SetConfig+0x44>
c0dea76c:	b32e      	cbz	r6, c0dea7ba <USBD_SetConfig+0x66>
c0dea76e:	2003      	movs	r0, #3
c0dea770:	6066      	str	r6, [r4, #4]
c0dea772:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0dea776:	e009      	b.n	c0dea78c <USBD_SetConfig+0x38>
c0dea778:	b1a6      	cbz	r6, c0dea7a4 <USBD_SetConfig+0x50>
c0dea77a:	6860      	ldr	r0, [r4, #4]
c0dea77c:	2801      	cmp	r0, #1
c0dea77e:	d01c      	beq.n	c0dea7ba <USBD_SetConfig+0x66>
c0dea780:	b2c1      	uxtb	r1, r0
c0dea782:	4620      	mov	r0, r4
c0dea784:	f7ff fdd2 	bl	c0dea32c <USBD_ClrClassConfig>
c0dea788:	2001      	movs	r0, #1
c0dea78a:	6060      	str	r0, [r4, #4]
c0dea78c:	4620      	mov	r0, r4
c0dea78e:	4631      	mov	r1, r6
c0dea790:	f7ff fdb2 	bl	c0dea2f8 <USBD_SetClassConfig>
c0dea794:	2802      	cmp	r0, #2
c0dea796:	d110      	bne.n	c0dea7ba <USBD_SetConfig+0x66>
c0dea798:	4620      	mov	r0, r4
c0dea79a:	4629      	mov	r1, r5
c0dea79c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0dea7a0:	f000 bbac 	b.w	c0deaefc <USBD_CtlError>
c0dea7a4:	2000      	movs	r0, #0
c0dea7a6:	4631      	mov	r1, r6
c0dea7a8:	6060      	str	r0, [r4, #4]
c0dea7aa:	2002      	movs	r0, #2
c0dea7ac:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0dea7b0:	4620      	mov	r0, r4
c0dea7b2:	f7ff fdbb 	bl	c0dea32c <USBD_ClrClassConfig>
c0dea7b6:	f000 f933 	bl	c0deaa20 <OUTLINED_FUNCTION_2>
c0dea7ba:	4620      	mov	r0, r4
c0dea7bc:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0dea7c0:	f000 b955 	b.w	c0deaa6e <USBD_CtlSendStatus>

c0dea7c4 <USBD_GetConfig>:
c0dea7c4:	88ca      	ldrh	r2, [r1, #6]
c0dea7c6:	2a01      	cmp	r2, #1
c0dea7c8:	d10a      	bne.n	c0dea7e0 <USBD_GetConfig+0x1c>
c0dea7ca:	f890 209c 	ldrb.w	r2, [r0, #156]	@ 0x9c
c0dea7ce:	2a03      	cmp	r2, #3
c0dea7d0:	d008      	beq.n	c0dea7e4 <USBD_GetConfig+0x20>
c0dea7d2:	2a02      	cmp	r2, #2
c0dea7d4:	d104      	bne.n	c0dea7e0 <USBD_GetConfig+0x1c>
c0dea7d6:	2200      	movs	r2, #0
c0dea7d8:	4601      	mov	r1, r0
c0dea7da:	f841 2f08 	str.w	r2, [r1, #8]!
c0dea7de:	e002      	b.n	c0dea7e6 <USBD_GetConfig+0x22>
c0dea7e0:	f000 bb8c 	b.w	c0deaefc <USBD_CtlError>
c0dea7e4:	1d01      	adds	r1, r0, #4
c0dea7e6:	2201      	movs	r2, #1
c0dea7e8:	f000 b920 	b.w	c0deaa2c <USBD_CtlSendData>

c0dea7ec <USBD_GetStatus>:
c0dea7ec:	b5b0      	push	{r4, r5, r7, lr}
c0dea7ee:	4604      	mov	r4, r0
c0dea7f0:	f890 009c 	ldrb.w	r0, [r0, #156]	@ 0x9c
c0dea7f4:	f000 00fe 	and.w	r0, r0, #254	@ 0xfe
c0dea7f8:	2802      	cmp	r0, #2
c0dea7fa:	d10d      	bne.n	c0dea818 <USBD_GetStatus+0x2c>
c0dea7fc:	2001      	movs	r0, #1
c0dea7fe:	4625      	mov	r5, r4
c0dea800:	f845 0f0c 	str.w	r0, [r5, #12]!
c0dea804:	f8d5 0098 	ldr.w	r0, [r5, #152]	@ 0x98
c0dea808:	b158      	cbz	r0, c0dea822 <USBD_GetStatus+0x36>
c0dea80a:	4620      	mov	r0, r4
c0dea80c:	f000 f93a 	bl	c0deaa84 <USBD_CtlReceiveStatus>
c0dea810:	68e0      	ldr	r0, [r4, #12]
c0dea812:	f040 0002 	orr.w	r0, r0, #2
c0dea816:	e005      	b.n	c0dea824 <USBD_GetStatus+0x38>
c0dea818:	4620      	mov	r0, r4
c0dea81a:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0dea81e:	f000 bb6d 	b.w	c0deaefc <USBD_CtlError>
c0dea822:	2003      	movs	r0, #3
c0dea824:	60e0      	str	r0, [r4, #12]
c0dea826:	4620      	mov	r0, r4
c0dea828:	4629      	mov	r1, r5
c0dea82a:	2202      	movs	r2, #2
c0dea82c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0dea830:	f000 b8fc 	b.w	c0deaa2c <USBD_CtlSendData>

c0dea834 <USBD_SetFeature>:
c0dea834:	b5b0      	push	{r4, r5, r7, lr}
c0dea836:	4604      	mov	r4, r0
c0dea838:	8848      	ldrh	r0, [r1, #2]
c0dea83a:	2801      	cmp	r0, #1
c0dea83c:	bf18      	it	ne
c0dea83e:	bdb0      	popne	{r4, r5, r7, pc}
c0dea840:	2001      	movs	r0, #1
c0dea842:	460d      	mov	r5, r1
c0dea844:	f8c4 00a4 	str.w	r0, [r4, #164]	@ 0xa4
c0dea848:	7908      	ldrb	r0, [r1, #4]
c0dea84a:	2802      	cmp	r0, #2
c0dea84c:	d806      	bhi.n	c0dea85c <USBD_SetFeature+0x28>
c0dea84e:	f000 f8e1 	bl	c0deaa14 <OUTLINED_FUNCTION_1>
c0dea852:	d003      	beq.n	c0dea85c <USBD_SetFeature+0x28>
c0dea854:	f000 f8e7 	bl	c0deaa26 <OUTLINED_FUNCTION_3>
c0dea858:	f000 f8d8 	bl	c0deaa0c <OUTLINED_FUNCTION_0>
c0dea85c:	4620      	mov	r0, r4
c0dea85e:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0dea862:	f000 b904 	b.w	c0deaa6e <USBD_CtlSendStatus>

c0dea866 <USBD_ClrFeature>:
c0dea866:	b5b0      	push	{r4, r5, r7, lr}
c0dea868:	4604      	mov	r4, r0
c0dea86a:	f890 009c 	ldrb.w	r0, [r0, #156]	@ 0x9c
c0dea86e:	460d      	mov	r5, r1
c0dea870:	f000 00fe 	and.w	r0, r0, #254	@ 0xfe
c0dea874:	2802      	cmp	r0, #2
c0dea876:	d115      	bne.n	c0dea8a4 <USBD_ClrFeature+0x3e>
c0dea878:	8868      	ldrh	r0, [r5, #2]
c0dea87a:	2801      	cmp	r0, #1
c0dea87c:	bf18      	it	ne
c0dea87e:	bdb0      	popne	{r4, r5, r7, pc}
c0dea880:	2000      	movs	r0, #0
c0dea882:	f8c4 00a4 	str.w	r0, [r4, #164]	@ 0xa4
c0dea886:	7928      	ldrb	r0, [r5, #4]
c0dea888:	2802      	cmp	r0, #2
c0dea88a:	d806      	bhi.n	c0dea89a <USBD_ClrFeature+0x34>
c0dea88c:	f000 f8c2 	bl	c0deaa14 <OUTLINED_FUNCTION_1>
c0dea890:	d003      	beq.n	c0dea89a <USBD_ClrFeature+0x34>
c0dea892:	f000 f8c8 	bl	c0deaa26 <OUTLINED_FUNCTION_3>
c0dea896:	f000 f8b9 	bl	c0deaa0c <OUTLINED_FUNCTION_0>
c0dea89a:	4620      	mov	r0, r4
c0dea89c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0dea8a0:	f000 b8e5 	b.w	c0deaa6e <USBD_CtlSendStatus>
c0dea8a4:	4620      	mov	r0, r4
c0dea8a6:	4629      	mov	r1, r5
c0dea8a8:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0dea8ac:	f000 bb26 	b.w	c0deaefc <USBD_CtlError>

c0dea8b0 <USBD_StdItfReq>:
c0dea8b0:	b5b0      	push	{r4, r5, r7, lr}
c0dea8b2:	4604      	mov	r4, r0
c0dea8b4:	f890 009c 	ldrb.w	r0, [r0, #156]	@ 0x9c
c0dea8b8:	460d      	mov	r5, r1
c0dea8ba:	2803      	cmp	r0, #3
c0dea8bc:	d10e      	bne.n	c0dea8dc <USBD_StdItfReq+0x2c>
c0dea8be:	7928      	ldrb	r0, [r5, #4]
c0dea8c0:	2802      	cmp	r0, #2
c0dea8c2:	d80b      	bhi.n	c0dea8dc <USBD_StdItfReq+0x2c>
c0dea8c4:	f000 f8a6 	bl	c0deaa14 <OUTLINED_FUNCTION_1>
c0dea8c8:	d008      	beq.n	c0dea8dc <USBD_StdItfReq+0x2c>
c0dea8ca:	f000 f8ac 	bl	c0deaa26 <OUTLINED_FUNCTION_3>
c0dea8ce:	f000 f89d 	bl	c0deaa0c <OUTLINED_FUNCTION_0>
c0dea8d2:	88e8      	ldrh	r0, [r5, #6]
c0dea8d4:	b930      	cbnz	r0, c0dea8e4 <USBD_StdItfReq+0x34>
c0dea8d6:	f000 f8a3 	bl	c0deaa20 <OUTLINED_FUNCTION_2>
c0dea8da:	e003      	b.n	c0dea8e4 <USBD_StdItfReq+0x34>
c0dea8dc:	4620      	mov	r0, r4
c0dea8de:	4629      	mov	r1, r5
c0dea8e0:	f000 fb0c 	bl	c0deaefc <USBD_CtlError>
c0dea8e4:	2000      	movs	r0, #0
c0dea8e6:	bdb0      	pop	{r4, r5, r7, pc}

c0dea8e8 <USBD_StdEPReq>:
c0dea8e8:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0dea8ea:	460d      	mov	r5, r1
c0dea8ec:	7909      	ldrb	r1, [r1, #4]
c0dea8ee:	4604      	mov	r4, r0
c0dea8f0:	f001 007f 	and.w	r0, r1, #127	@ 0x7f
c0dea8f4:	2805      	cmp	r0, #5
c0dea8f6:	d304      	bcc.n	c0dea902 <USBD_StdEPReq+0x1a>
c0dea8f8:	4620      	mov	r0, r4
c0dea8fa:	4629      	mov	r1, r5
c0dea8fc:	f000 fafe 	bl	c0deaefc <USBD_CtlError>
c0dea900:	e063      	b.n	c0dea9ca <USBD_StdEPReq+0xe2>
c0dea902:	782a      	ldrb	r2, [r5, #0]
c0dea904:	f002 0260 	and.w	r2, r2, #96	@ 0x60
c0dea908:	2a20      	cmp	r2, #32
c0dea90a:	d10c      	bne.n	c0dea926 <USBD_StdEPReq+0x3e>
c0dea90c:	2902      	cmp	r1, #2
c0dea90e:	d80a      	bhi.n	c0dea926 <USBD_StdEPReq+0x3e>
c0dea910:	eb04 02c1 	add.w	r2, r4, r1, lsl #3
c0dea914:	f8d2 20b4 	ldr.w	r2, [r2, #180]	@ 0xb4
c0dea918:	b12a      	cbz	r2, c0dea926 <USBD_StdEPReq+0x3e>
c0dea91a:	6890      	ldr	r0, [r2, #8]
c0dea91c:	f001 fa6a 	bl	c0debdf4 <pic>
c0dea920:	f000 f874 	bl	c0deaa0c <OUTLINED_FUNCTION_0>
c0dea924:	e051      	b.n	c0dea9ca <USBD_StdEPReq+0xe2>
c0dea926:	786a      	ldrb	r2, [r5, #1]
c0dea928:	b152      	cbz	r2, c0dea940 <USBD_StdEPReq+0x58>
c0dea92a:	2a01      	cmp	r2, #1
c0dea92c:	d010      	beq.n	c0dea950 <USBD_StdEPReq+0x68>
c0dea92e:	2a03      	cmp	r2, #3
c0dea930:	d14b      	bne.n	c0dea9ca <USBD_StdEPReq+0xe2>
c0dea932:	f894 009c 	ldrb.w	r0, [r4, #156]	@ 0x9c
c0dea936:	2803      	cmp	r0, #3
c0dea938:	d016      	beq.n	c0dea968 <USBD_StdEPReq+0x80>
c0dea93a:	2802      	cmp	r0, #2
c0dea93c:	d00e      	beq.n	c0dea95c <USBD_StdEPReq+0x74>
c0dea93e:	e7db      	b.n	c0dea8f8 <USBD_StdEPReq+0x10>
c0dea940:	f894 209c 	ldrb.w	r2, [r4, #156]	@ 0x9c
c0dea944:	2a03      	cmp	r2, #3
c0dea946:	d023      	beq.n	c0dea990 <USBD_StdEPReq+0xa8>
c0dea948:	2a02      	cmp	r2, #2
c0dea94a:	d1d5      	bne.n	c0dea8f8 <USBD_StdEPReq+0x10>
c0dea94c:	b940      	cbnz	r0, c0dea960 <USBD_StdEPReq+0x78>
c0dea94e:	e03c      	b.n	c0dea9ca <USBD_StdEPReq+0xe2>
c0dea950:	f894 209c 	ldrb.w	r2, [r4, #156]	@ 0x9c
c0dea954:	2a03      	cmp	r2, #3
c0dea956:	d02a      	beq.n	c0dea9ae <USBD_StdEPReq+0xc6>
c0dea958:	2a02      	cmp	r2, #2
c0dea95a:	d1cd      	bne.n	c0dea8f8 <USBD_StdEPReq+0x10>
c0dea95c:	0648      	lsls	r0, r1, #25
c0dea95e:	d034      	beq.n	c0dea9ca <USBD_StdEPReq+0xe2>
c0dea960:	4620      	mov	r0, r4
c0dea962:	f000 f911 	bl	c0deab88 <USBD_LL_StallEP>
c0dea966:	e030      	b.n	c0dea9ca <USBD_StdEPReq+0xe2>
c0dea968:	8868      	ldrh	r0, [r5, #2]
c0dea96a:	b928      	cbnz	r0, c0dea978 <USBD_StdEPReq+0x90>
c0dea96c:	0648      	lsls	r0, r1, #25
c0dea96e:	d003      	beq.n	c0dea978 <USBD_StdEPReq+0x90>
c0dea970:	4620      	mov	r0, r4
c0dea972:	f000 f909 	bl	c0deab88 <USBD_LL_StallEP>
c0dea976:	7929      	ldrb	r1, [r5, #4]
c0dea978:	2902      	cmp	r1, #2
c0dea97a:	d824      	bhi.n	c0dea9c6 <USBD_StdEPReq+0xde>
c0dea97c:	eb04 00c1 	add.w	r0, r4, r1, lsl #3
c0dea980:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0dea984:	b1f8      	cbz	r0, c0dea9c6 <USBD_StdEPReq+0xde>
c0dea986:	f000 f84e 	bl	c0deaa26 <OUTLINED_FUNCTION_3>
c0dea98a:	f000 f83f 	bl	c0deaa0c <OUTLINED_FUNCTION_0>
c0dea98e:	e01a      	b.n	c0dea9c6 <USBD_StdEPReq+0xde>
c0dea990:	4620      	mov	r0, r4
c0dea992:	f000 f939 	bl	c0deac08 <USBD_LL_IsStallEP>
c0dea996:	2800      	cmp	r0, #0
c0dea998:	bf18      	it	ne
c0dea99a:	2001      	movne	r0, #1
c0dea99c:	f8ad 0006 	strh.w	r0, [sp, #6]
c0dea9a0:	f10d 0106 	add.w	r1, sp, #6
c0dea9a4:	4620      	mov	r0, r4
c0dea9a6:	2202      	movs	r2, #2
c0dea9a8:	f000 f840 	bl	c0deaa2c <USBD_CtlSendData>
c0dea9ac:	e00d      	b.n	c0dea9ca <USBD_StdEPReq+0xe2>
c0dea9ae:	886a      	ldrh	r2, [r5, #2]
c0dea9b0:	b95a      	cbnz	r2, c0dea9ca <USBD_StdEPReq+0xe2>
c0dea9b2:	b140      	cbz	r0, c0dea9c6 <USBD_StdEPReq+0xde>
c0dea9b4:	4620      	mov	r0, r4
c0dea9b6:	f000 f907 	bl	c0deabc8 <USBD_LL_ClearStallEP>
c0dea9ba:	7928      	ldrb	r0, [r5, #4]
c0dea9bc:	2802      	cmp	r0, #2
c0dea9be:	d802      	bhi.n	c0dea9c6 <USBD_StdEPReq+0xde>
c0dea9c0:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0dea9c4:	e7dc      	b.n	c0dea980 <USBD_StdEPReq+0x98>
c0dea9c6:	f000 f82b 	bl	c0deaa20 <OUTLINED_FUNCTION_2>
c0dea9ca:	2000      	movs	r0, #0
c0dea9cc:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0dea9ce <USBD_ParseSetupRequest>:
c0dea9ce:	780a      	ldrb	r2, [r1, #0]
c0dea9d0:	7002      	strb	r2, [r0, #0]
c0dea9d2:	784a      	ldrb	r2, [r1, #1]
c0dea9d4:	7042      	strb	r2, [r0, #1]
c0dea9d6:	788a      	ldrb	r2, [r1, #2]
c0dea9d8:	78cb      	ldrb	r3, [r1, #3]
c0dea9da:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0dea9de:	8042      	strh	r2, [r0, #2]
c0dea9e0:	790a      	ldrb	r2, [r1, #4]
c0dea9e2:	794b      	ldrb	r3, [r1, #5]
c0dea9e4:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0dea9e8:	8082      	strh	r2, [r0, #4]
c0dea9ea:	798a      	ldrb	r2, [r1, #6]
c0dea9ec:	79c9      	ldrb	r1, [r1, #7]
c0dea9ee:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0dea9f2:	80c1      	strh	r1, [r0, #6]
c0dea9f4:	4770      	bx	lr

c0dea9f6 <USBD_CtlStall>:
c0dea9f6:	b510      	push	{r4, lr}
c0dea9f8:	2180      	movs	r1, #128	@ 0x80
c0dea9fa:	4604      	mov	r4, r0
c0dea9fc:	f000 f8c4 	bl	c0deab88 <USBD_LL_StallEP>
c0deaa00:	4620      	mov	r0, r4
c0deaa02:	2100      	movs	r1, #0
c0deaa04:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0deaa08:	f000 b8be 	b.w	c0deab88 <USBD_LL_StallEP>

c0deaa0c <OUTLINED_FUNCTION_0>:
c0deaa0c:	4602      	mov	r2, r0
c0deaa0e:	4620      	mov	r0, r4
c0deaa10:	4629      	mov	r1, r5
c0deaa12:	4710      	bx	r2

c0deaa14 <OUTLINED_FUNCTION_1>:
c0deaa14:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0deaa18:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0deaa1c:	2800      	cmp	r0, #0
c0deaa1e:	4770      	bx	lr

c0deaa20 <OUTLINED_FUNCTION_2>:
c0deaa20:	4620      	mov	r0, r4
c0deaa22:	f000 b824 	b.w	c0deaa6e <USBD_CtlSendStatus>

c0deaa26 <OUTLINED_FUNCTION_3>:
c0deaa26:	6880      	ldr	r0, [r0, #8]
c0deaa28:	f001 b9e4 	b.w	c0debdf4 <pic>

c0deaa2c <USBD_CtlSendData>:
c0deaa2c:	b510      	push	{r4, lr}
c0deaa2e:	460c      	mov	r4, r1
c0deaa30:	f8c0 10d0 	str.w	r1, [r0, #208]	@ 0xd0
c0deaa34:	2102      	movs	r1, #2
c0deaa36:	e9c0 2206 	strd	r2, r2, [r0, #24]
c0deaa3a:	f8c0 1094 	str.w	r1, [r0, #148]	@ 0x94
c0deaa3e:	6a01      	ldr	r1, [r0, #32]
c0deaa40:	4291      	cmp	r1, r2
c0deaa42:	bf88      	it	hi
c0deaa44:	4611      	movhi	r1, r2
c0deaa46:	f000 f829 	bl	c0deaa9c <OUTLINED_FUNCTION_1>
c0deaa4a:	2000      	movs	r0, #0
c0deaa4c:	bd10      	pop	{r4, pc}

c0deaa4e <USBD_CtlContinueSendData>:
c0deaa4e:	b510      	push	{r4, lr}
c0deaa50:	460c      	mov	r4, r1
c0deaa52:	6a01      	ldr	r1, [r0, #32]
c0deaa54:	4291      	cmp	r1, r2
c0deaa56:	bf88      	it	hi
c0deaa58:	4611      	movhi	r1, r2
c0deaa5a:	f000 f81f 	bl	c0deaa9c <OUTLINED_FUNCTION_1>
c0deaa5e:	2000      	movs	r0, #0
c0deaa60:	bd10      	pop	{r4, pc}

c0deaa62 <USBD_CtlContinueRx>:
c0deaa62:	b580      	push	{r7, lr}
c0deaa64:	2100      	movs	r1, #0
c0deaa66:	f000 f917 	bl	c0deac98 <USBD_LL_PrepareReceive>
c0deaa6a:	2000      	movs	r0, #0
c0deaa6c:	bd80      	pop	{r7, pc}

c0deaa6e <USBD_CtlSendStatus>:
c0deaa6e:	b580      	push	{r7, lr}
c0deaa70:	2104      	movs	r1, #4
c0deaa72:	2200      	movs	r2, #0
c0deaa74:	2300      	movs	r3, #0
c0deaa76:	f8c0 1094 	str.w	r1, [r0, #148]	@ 0x94
c0deaa7a:	2100      	movs	r1, #0
c0deaa7c:	f000 f8ee 	bl	c0deac5c <USBD_LL_Transmit>
c0deaa80:	2000      	movs	r0, #0
c0deaa82:	bd80      	pop	{r7, pc}

c0deaa84 <USBD_CtlReceiveStatus>:
c0deaa84:	b580      	push	{r7, lr}
c0deaa86:	2105      	movs	r1, #5
c0deaa88:	2200      	movs	r2, #0
c0deaa8a:	f000 f802 	bl	c0deaa92 <OUTLINED_FUNCTION_0>
c0deaa8e:	2000      	movs	r0, #0
c0deaa90:	bd80      	pop	{r7, pc}

c0deaa92 <OUTLINED_FUNCTION_0>:
c0deaa92:	f8c0 1094 	str.w	r1, [r0, #148]	@ 0x94
c0deaa96:	2100      	movs	r1, #0
c0deaa98:	f000 b8fe 	b.w	c0deac98 <USBD_LL_PrepareReceive>

c0deaa9c <OUTLINED_FUNCTION_1>:
c0deaa9c:	b28b      	uxth	r3, r1
c0deaa9e:	4622      	mov	r2, r4
c0deaaa0:	2100      	movs	r1, #0
c0deaaa2:	f000 b8db 	b.w	c0deac5c <USBD_LL_Transmit>
	...

c0deaaa8 <USBD_LL_Init>:
c0deaaa8:	4804      	ldr	r0, [pc, #16]	@ (c0deaabc <USBD_LL_Init+0x14>)
c0deaaaa:	2100      	movs	r1, #0
c0deaaac:	f849 1000 	str.w	r1, [r9, r0]
c0deaab0:	4803      	ldr	r0, [pc, #12]	@ (c0deaac0 <USBD_LL_Init+0x18>)
c0deaab2:	f849 1000 	str.w	r1, [r9, r0]
c0deaab6:	2000      	movs	r0, #0
c0deaab8:	4770      	bx	lr
c0deaaba:	bf00      	nop
c0deaabc:	00002a5c 	.word	0x00002a5c
c0deaac0:	00002a58 	.word	0x00002a58

c0deaac4 <USBD_LL_DeInit>:
c0deaac4:	b5e0      	push	{r5, r6, r7, lr}
c0deaac6:	f000 f90e 	bl	c0deace6 <OUTLINED_FUNCTION_1>
c0deaaca:	a801      	add	r0, sp, #4
c0deaacc:	f001 fb6e 	bl	c0dec1ac <io_seph_send>
c0deaad0:	2000      	movs	r0, #0
c0deaad2:	bd8c      	pop	{r2, r3, r7, pc}

c0deaad4 <USBD_LL_Start>:
c0deaad4:	b57c      	push	{r2, r3, r4, r5, r6, lr}
c0deaad6:	2003      	movs	r0, #3
c0deaad8:	f10d 0403 	add.w	r4, sp, #3
c0deaadc:	2500      	movs	r5, #0
c0deaade:	264f      	movs	r6, #79	@ 0x4f
c0deaae0:	2105      	movs	r1, #5
c0deaae2:	f88d 0006 	strb.w	r0, [sp, #6]
c0deaae6:	2002      	movs	r0, #2
c0deaae8:	f88d 5007 	strb.w	r5, [sp, #7]
c0deaaec:	f88d 5004 	strb.w	r5, [sp, #4]
c0deaaf0:	f88d 6003 	strb.w	r6, [sp, #3]
c0deaaf4:	f000 f905 	bl	c0dead02 <OUTLINED_FUNCTION_2>
c0deaaf8:	2001      	movs	r0, #1
c0deaafa:	2104      	movs	r1, #4
c0deaafc:	f88d 5004 	strb.w	r5, [sp, #4]
c0deab00:	f88d 6003 	strb.w	r6, [sp, #3]
c0deab04:	f88d 0006 	strb.w	r0, [sp, #6]
c0deab08:	f000 f8fb 	bl	c0dead02 <OUTLINED_FUNCTION_2>
c0deab0c:	2000      	movs	r0, #0
c0deab0e:	bd7c      	pop	{r2, r3, r4, r5, r6, pc}

c0deab10 <USBD_LL_Stop>:
c0deab10:	b5e0      	push	{r5, r6, r7, lr}
c0deab12:	f000 f8e8 	bl	c0deace6 <OUTLINED_FUNCTION_1>
c0deab16:	a801      	add	r0, sp, #4
c0deab18:	f001 fb48 	bl	c0dec1ac <io_seph_send>
c0deab1c:	2000      	movs	r0, #0
c0deab1e:	bd8c      	pop	{r2, r3, r7, pc}

c0deab20 <USBD_LL_OpenEP>:
c0deab20:	b51c      	push	{r2, r3, r4, lr}
c0deab22:	4817      	ldr	r0, [pc, #92]	@ (c0deab80 <USBD_LL_OpenEP+0x60>)
c0deab24:	2400      	movs	r4, #0
c0deab26:	f88d 1005 	strb.w	r1, [sp, #5]
c0deab2a:	2104      	movs	r1, #4
c0deab2c:	f88d 1003 	strb.w	r1, [sp, #3]
c0deab30:	2105      	movs	r1, #5
c0deab32:	f88d 4006 	strb.w	r4, [sp, #6]
c0deab36:	f88d 4001 	strb.w	r4, [sp, #1]
c0deab3a:	f849 4000 	str.w	r4, [r9, r0]
c0deab3e:	4811      	ldr	r0, [pc, #68]	@ (c0deab84 <USBD_LL_OpenEP+0x64>)
c0deab40:	f88d 1002 	strb.w	r1, [sp, #2]
c0deab44:	214f      	movs	r1, #79	@ 0x4f
c0deab46:	f88d 1000 	strb.w	r1, [sp]
c0deab4a:	f849 4000 	str.w	r4, [r9, r0]
c0deab4e:	2001      	movs	r0, #1
c0deab50:	f88d 0004 	strb.w	r0, [sp, #4]
c0deab54:	b152      	cbz	r2, c0deab6c <USBD_LL_OpenEP+0x4c>
c0deab56:	2a03      	cmp	r2, #3
c0deab58:	d005      	beq.n	c0deab66 <USBD_LL_OpenEP+0x46>
c0deab5a:	2a02      	cmp	r2, #2
c0deab5c:	d005      	beq.n	c0deab6a <USBD_LL_OpenEP+0x4a>
c0deab5e:	2a01      	cmp	r2, #1
c0deab60:	d106      	bne.n	c0deab70 <USBD_LL_OpenEP+0x50>
c0deab62:	2004      	movs	r0, #4
c0deab64:	e002      	b.n	c0deab6c <USBD_LL_OpenEP+0x4c>
c0deab66:	2002      	movs	r0, #2
c0deab68:	e000      	b.n	c0deab6c <USBD_LL_OpenEP+0x4c>
c0deab6a:	2003      	movs	r0, #3
c0deab6c:	f88d 0006 	strb.w	r0, [sp, #6]
c0deab70:	4668      	mov	r0, sp
c0deab72:	2108      	movs	r1, #8
c0deab74:	f88d 3007 	strb.w	r3, [sp, #7]
c0deab78:	f001 fb18 	bl	c0dec1ac <io_seph_send>
c0deab7c:	2000      	movs	r0, #0
c0deab7e:	bd1c      	pop	{r2, r3, r4, pc}
c0deab80:	00002a58 	.word	0x00002a58
c0deab84:	00002a5c 	.word	0x00002a5c

c0deab88 <USBD_LL_StallEP>:
c0deab88:	b51c      	push	{r2, r3, r4, lr}
c0deab8a:	460c      	mov	r4, r1
c0deab8c:	2000      	movs	r0, #0
c0deab8e:	2140      	movs	r1, #64	@ 0x40
c0deab90:	f000 f89a 	bl	c0deacc8 <OUTLINED_FUNCTION_0>
c0deab94:	f10d 0002 	add.w	r0, sp, #2
c0deab98:	2106      	movs	r1, #6
c0deab9a:	f001 fb07 	bl	c0dec1ac <io_seph_send>
c0deab9e:	4909      	ldr	r1, [pc, #36]	@ (c0deabc4 <USBD_LL_StallEP+0x3c>)
c0deaba0:	0622      	lsls	r2, r4, #24
c0deaba2:	4807      	ldr	r0, [pc, #28]	@ (c0deabc0 <USBD_LL_StallEP+0x38>)
c0deaba4:	f004 027f 	and.w	r2, r4, #127	@ 0x7f
c0deaba8:	4449      	add	r1, r9
c0deabaa:	bf58      	it	pl
c0deabac:	eb09 0100 	addpl.w	r1, r9, r0
c0deabb0:	2301      	movs	r3, #1
c0deabb2:	6808      	ldr	r0, [r1, #0]
c0deabb4:	fa03 f202 	lsl.w	r2, r3, r2
c0deabb8:	4310      	orrs	r0, r2
c0deabba:	6008      	str	r0, [r1, #0]
c0deabbc:	2000      	movs	r0, #0
c0deabbe:	bd1c      	pop	{r2, r3, r4, pc}
c0deabc0:	00002a5c 	.word	0x00002a5c
c0deabc4:	00002a58 	.word	0x00002a58

c0deabc8 <USBD_LL_ClearStallEP>:
c0deabc8:	b51c      	push	{r2, r3, r4, lr}
c0deabca:	460c      	mov	r4, r1
c0deabcc:	2000      	movs	r0, #0
c0deabce:	2180      	movs	r1, #128	@ 0x80
c0deabd0:	f000 f87a 	bl	c0deacc8 <OUTLINED_FUNCTION_0>
c0deabd4:	f10d 0002 	add.w	r0, sp, #2
c0deabd8:	2106      	movs	r1, #6
c0deabda:	f001 fae7 	bl	c0dec1ac <io_seph_send>
c0deabde:	4909      	ldr	r1, [pc, #36]	@ (c0deac04 <USBD_LL_ClearStallEP+0x3c>)
c0deabe0:	0622      	lsls	r2, r4, #24
c0deabe2:	4807      	ldr	r0, [pc, #28]	@ (c0deac00 <USBD_LL_ClearStallEP+0x38>)
c0deabe4:	f004 027f 	and.w	r2, r4, #127	@ 0x7f
c0deabe8:	4449      	add	r1, r9
c0deabea:	bf58      	it	pl
c0deabec:	eb09 0100 	addpl.w	r1, r9, r0
c0deabf0:	2301      	movs	r3, #1
c0deabf2:	6808      	ldr	r0, [r1, #0]
c0deabf4:	fa03 f202 	lsl.w	r2, r3, r2
c0deabf8:	4390      	bics	r0, r2
c0deabfa:	6008      	str	r0, [r1, #0]
c0deabfc:	2000      	movs	r0, #0
c0deabfe:	bd1c      	pop	{r2, r3, r4, pc}
c0deac00:	00002a5c 	.word	0x00002a5c
c0deac04:	00002a58 	.word	0x00002a58

c0deac08 <USBD_LL_IsStallEP>:
c0deac08:	4a08      	ldr	r2, [pc, #32]	@ (c0deac2c <USBD_LL_IsStallEP+0x24>)
c0deac0a:	060b      	lsls	r3, r1, #24
c0deac0c:	4806      	ldr	r0, [pc, #24]	@ (c0deac28 <USBD_LL_IsStallEP+0x20>)
c0deac0e:	f001 017f 	and.w	r1, r1, #127	@ 0x7f
c0deac12:	444a      	add	r2, r9
c0deac14:	bf58      	it	pl
c0deac16:	eb09 0200 	addpl.w	r2, r9, r0
c0deac1a:	7810      	ldrb	r0, [r2, #0]
c0deac1c:	2201      	movs	r2, #1
c0deac1e:	fa02 f101 	lsl.w	r1, r2, r1
c0deac22:	4008      	ands	r0, r1
c0deac24:	4770      	bx	lr
c0deac26:	bf00      	nop
c0deac28:	00002a5c 	.word	0x00002a5c
c0deac2c:	00002a58 	.word	0x00002a58

c0deac30 <USBD_LL_SetUSBAddress>:
c0deac30:	b5e0      	push	{r5, r6, r7, lr}
c0deac32:	2003      	movs	r0, #3
c0deac34:	f88d 1007 	strb.w	r1, [sp, #7]
c0deac38:	2105      	movs	r1, #5
c0deac3a:	f88d 0006 	strb.w	r0, [sp, #6]
c0deac3e:	2002      	movs	r0, #2
c0deac40:	f88d 0005 	strb.w	r0, [sp, #5]
c0deac44:	2000      	movs	r0, #0
c0deac46:	f88d 0004 	strb.w	r0, [sp, #4]
c0deac4a:	204f      	movs	r0, #79	@ 0x4f
c0deac4c:	f88d 0003 	strb.w	r0, [sp, #3]
c0deac50:	f10d 0003 	add.w	r0, sp, #3
c0deac54:	f001 faaa 	bl	c0dec1ac <io_seph_send>
c0deac58:	2000      	movs	r0, #0
c0deac5a:	bd8c      	pop	{r2, r3, r7, pc}

c0deac5c <USBD_LL_Transmit>:
c0deac5c:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0deac5e:	2020      	movs	r0, #32
c0deac60:	f88d 1005 	strb.w	r1, [sp, #5]
c0deac64:	2106      	movs	r1, #6
c0deac66:	461c      	mov	r4, r3
c0deac68:	4615      	mov	r5, r2
c0deac6a:	f88d 3007 	strb.w	r3, [sp, #7]
c0deac6e:	f88d 0006 	strb.w	r0, [sp, #6]
c0deac72:	2050      	movs	r0, #80	@ 0x50
c0deac74:	f88d 0002 	strb.w	r0, [sp, #2]
c0deac78:	1cd8      	adds	r0, r3, #3
c0deac7a:	f88d 0004 	strb.w	r0, [sp, #4]
c0deac7e:	0a00      	lsrs	r0, r0, #8
c0deac80:	f88d 0003 	strb.w	r0, [sp, #3]
c0deac84:	f10d 0002 	add.w	r0, sp, #2
c0deac88:	f001 fa90 	bl	c0dec1ac <io_seph_send>
c0deac8c:	4628      	mov	r0, r5
c0deac8e:	4621      	mov	r1, r4
c0deac90:	f001 fa8c 	bl	c0dec1ac <io_seph_send>
c0deac94:	2000      	movs	r0, #0
c0deac96:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0deac98 <USBD_LL_PrepareReceive>:
c0deac98:	b5e0      	push	{r5, r6, r7, lr}
c0deac9a:	2030      	movs	r0, #48	@ 0x30
c0deac9c:	f88d 1005 	strb.w	r1, [sp, #5]
c0deaca0:	2106      	movs	r1, #6
c0deaca2:	f88d 2007 	strb.w	r2, [sp, #7]
c0deaca6:	f88d 0006 	strb.w	r0, [sp, #6]
c0deacaa:	2003      	movs	r0, #3
c0deacac:	f88d 0004 	strb.w	r0, [sp, #4]
c0deacb0:	2000      	movs	r0, #0
c0deacb2:	f88d 0003 	strb.w	r0, [sp, #3]
c0deacb6:	2050      	movs	r0, #80	@ 0x50
c0deacb8:	f88d 0002 	strb.w	r0, [sp, #2]
c0deacbc:	f10d 0002 	add.w	r0, sp, #2
c0deacc0:	f001 fa74 	bl	c0dec1ac <io_seph_send>
c0deacc4:	2000      	movs	r0, #0
c0deacc6:	bd8c      	pop	{r2, r3, r7, pc}

c0deacc8 <OUTLINED_FUNCTION_0>:
c0deacc8:	f88d 1006 	strb.w	r1, [sp, #6]
c0deaccc:	2103      	movs	r1, #3
c0deacce:	f88d 0007 	strb.w	r0, [sp, #7]
c0deacd2:	f88d 0003 	strb.w	r0, [sp, #3]
c0deacd6:	2050      	movs	r0, #80	@ 0x50
c0deacd8:	f88d 4005 	strb.w	r4, [sp, #5]
c0deacdc:	f88d 1004 	strb.w	r1, [sp, #4]
c0deace0:	f88d 0002 	strb.w	r0, [sp, #2]
c0deace4:	4770      	bx	lr

c0deace6 <OUTLINED_FUNCTION_1>:
c0deace6:	2002      	movs	r0, #2
c0deace8:	2104      	movs	r1, #4
c0deacea:	f88d 0007 	strb.w	r0, [sp, #7]
c0deacee:	2001      	movs	r0, #1
c0deacf0:	f88d 0006 	strb.w	r0, [sp, #6]
c0deacf4:	2000      	movs	r0, #0
c0deacf6:	f88d 0005 	strb.w	r0, [sp, #5]
c0deacfa:	204f      	movs	r0, #79	@ 0x4f
c0deacfc:	f88d 0004 	strb.w	r0, [sp, #4]
c0dead00:	4770      	bx	lr

c0dead02 <OUTLINED_FUNCTION_2>:
c0dead02:	f88d 0005 	strb.w	r0, [sp, #5]
c0dead06:	4620      	mov	r0, r4
c0dead08:	f001 ba50 	b.w	c0dec1ac <io_seph_send>

c0dead0c <USBD_HID_GetHidDescriptor_impl>:
c0dead0c:	4907      	ldr	r1, [pc, #28]	@ (c0dead2c <USBD_HID_GetHidDescriptor_impl+0x20>)
c0dead0e:	2200      	movs	r2, #0
c0dead10:	4449      	add	r1, r9
c0dead12:	f891 10ac 	ldrb.w	r1, [r1, #172]	@ 0xac
c0dead16:	2900      	cmp	r1, #0
c0dead18:	f04f 0100 	mov.w	r1, #0
c0dead1c:	bf08      	it	eq
c0dead1e:	2109      	moveq	r1, #9
c0dead20:	8001      	strh	r1, [r0, #0]
c0dead22:	4803      	ldr	r0, [pc, #12]	@ (c0dead30 <USBD_HID_GetHidDescriptor_impl+0x24>)
c0dead24:	4478      	add	r0, pc
c0dead26:	bf18      	it	ne
c0dead28:	4610      	movne	r0, r2
c0dead2a:	4770      	bx	lr
c0dead2c:	00002984 	.word	0x00002984
c0dead30:	00003548 	.word	0x00003548

c0dead34 <USBD_HID_GetReportDescriptor_impl>:
c0dead34:	4907      	ldr	r1, [pc, #28]	@ (c0dead54 <USBD_HID_GetReportDescriptor_impl+0x20>)
c0dead36:	2200      	movs	r2, #0
c0dead38:	4449      	add	r1, r9
c0dead3a:	f891 10ac 	ldrb.w	r1, [r1, #172]	@ 0xac
c0dead3e:	2900      	cmp	r1, #0
c0dead40:	f04f 0100 	mov.w	r1, #0
c0dead44:	bf08      	it	eq
c0dead46:	2122      	moveq	r1, #34	@ 0x22
c0dead48:	8001      	strh	r1, [r0, #0]
c0dead4a:	4803      	ldr	r0, [pc, #12]	@ (c0dead58 <USBD_HID_GetReportDescriptor_impl+0x24>)
c0dead4c:	4478      	add	r0, pc
c0dead4e:	bf18      	it	ne
c0dead50:	4610      	movne	r0, r2
c0dead52:	4770      	bx	lr
c0dead54:	00002984 	.word	0x00002984
c0dead58:	00003529 	.word	0x00003529

c0dead5c <USBD_HID_DataIn_impl>:
c0dead5c:	2902      	cmp	r1, #2
c0dead5e:	d106      	bne.n	c0dead6e <USBD_HID_DataIn_impl+0x12>
c0dead60:	b580      	push	{r7, lr}
c0dead62:	4804      	ldr	r0, [pc, #16]	@ (c0dead74 <USBD_HID_DataIn_impl+0x18>)
c0dead64:	4478      	add	r0, pc
c0dead66:	f000 fe19 	bl	c0deb99c <io_usb_hid_sent>
c0dead6a:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0dead6e:	2000      	movs	r0, #0
c0dead70:	4770      	bx	lr
c0dead72:	bf00      	nop
c0dead74:	00000a71 	.word	0x00000a71

c0dead78 <USBD_HID_DataOut_impl>:
c0dead78:	b570      	push	{r4, r5, r6, lr}
c0dead7a:	2902      	cmp	r1, #2
c0dead7c:	d121      	bne.n	c0deadc2 <USBD_HID_DataOut_impl+0x4a>
c0dead7e:	4615      	mov	r5, r2
c0dead80:	2102      	movs	r1, #2
c0dead82:	2240      	movs	r2, #64	@ 0x40
c0dead84:	461c      	mov	r4, r3
c0dead86:	f7ff ff87 	bl	c0deac98 <USBD_LL_PrepareReceive>
c0dead8a:	4e0f      	ldr	r6, [pc, #60]	@ (c0deadc8 <USBD_HID_DataOut_impl+0x50>)
c0dead8c:	eb09 0006 	add.w	r0, r9, r6
c0dead90:	7980      	ldrb	r0, [r0, #6]
c0dead92:	b9b0      	cbnz	r0, c0deadc2 <USBD_HID_DataOut_impl+0x4a>
c0dead94:	2002      	movs	r0, #2
c0dead96:	f000 fce1 	bl	c0deb75c <io_seproxyhal_get_ep_rx_size>
c0dead9a:	4602      	mov	r2, r0
c0dead9c:	480c      	ldr	r0, [pc, #48]	@ (c0deadd0 <USBD_HID_DataOut_impl+0x58>)
c0dead9e:	4629      	mov	r1, r5
c0deada0:	4623      	mov	r3, r4
c0deada2:	4478      	add	r0, pc
c0deada4:	f000 fd1e 	bl	c0deb7e4 <io_usb_hid_receive>
c0deada8:	2802      	cmp	r0, #2
c0deadaa:	d10a      	bne.n	c0deadc2 <USBD_HID_DataOut_impl+0x4a>
c0deadac:	2007      	movs	r0, #7
c0deadae:	2101      	movs	r1, #1
c0deadb0:	f809 0006 	strb.w	r0, [r9, r6]
c0deadb4:	eb09 0006 	add.w	r0, r9, r6
c0deadb8:	7181      	strb	r1, [r0, #6]
c0deadba:	4904      	ldr	r1, [pc, #16]	@ (c0deadcc <USBD_HID_DataOut_impl+0x54>)
c0deadbc:	f859 1001 	ldr.w	r1, [r9, r1]
c0deadc0:	8041      	strh	r1, [r0, #2]
c0deadc2:	2000      	movs	r0, #0
c0deadc4:	bd70      	pop	{r4, r5, r6, pc}
c0deadc6:	bf00      	nop
c0deadc8:	00002b68 	.word	0x00002b68
c0deadcc:	00002bc8 	.word	0x00002bc8
c0deadd0:	00000a33 	.word	0x00000a33

c0deadd4 <USBD_WEBUSB_Init>:
c0deadd4:	b510      	push	{r4, lr}
c0deadd6:	2183      	movs	r1, #131	@ 0x83
c0deadd8:	2203      	movs	r2, #3
c0deadda:	2340      	movs	r3, #64	@ 0x40
c0deaddc:	4604      	mov	r4, r0
c0deadde:	f7ff fe9f 	bl	c0deab20 <USBD_LL_OpenEP>
c0deade2:	4620      	mov	r0, r4
c0deade4:	2103      	movs	r1, #3
c0deade6:	2203      	movs	r2, #3
c0deade8:	2340      	movs	r3, #64	@ 0x40
c0deadea:	f7ff fe99 	bl	c0deab20 <USBD_LL_OpenEP>
c0deadee:	4620      	mov	r0, r4
c0deadf0:	2103      	movs	r1, #3
c0deadf2:	2240      	movs	r2, #64	@ 0x40
c0deadf4:	f7ff ff50 	bl	c0deac98 <USBD_LL_PrepareReceive>
c0deadf8:	2000      	movs	r0, #0
c0deadfa:	bd10      	pop	{r4, pc}

c0deadfc <USBD_WEBUSB_DeInit>:
c0deadfc:	2000      	movs	r0, #0
c0deadfe:	4770      	bx	lr

c0deae00 <USBD_WEBUSB_Setup>:
c0deae00:	2000      	movs	r0, #0
c0deae02:	4770      	bx	lr

c0deae04 <USBD_WEBUSB_DataIn>:
c0deae04:	2903      	cmp	r1, #3
c0deae06:	d106      	bne.n	c0deae16 <USBD_WEBUSB_DataIn+0x12>
c0deae08:	b580      	push	{r7, lr}
c0deae0a:	4804      	ldr	r0, [pc, #16]	@ (c0deae1c <USBD_WEBUSB_DataIn+0x18>)
c0deae0c:	4478      	add	r0, pc
c0deae0e:	f000 fdc5 	bl	c0deb99c <io_usb_hid_sent>
c0deae12:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0deae16:	2000      	movs	r0, #0
c0deae18:	4770      	bx	lr
c0deae1a:	bf00      	nop
c0deae1c:	00000499 	.word	0x00000499

c0deae20 <USBD_WEBUSB_DataOut>:
c0deae20:	b570      	push	{r4, r5, r6, lr}
c0deae22:	2903      	cmp	r1, #3
c0deae24:	d121      	bne.n	c0deae6a <USBD_WEBUSB_DataOut+0x4a>
c0deae26:	4615      	mov	r5, r2
c0deae28:	2103      	movs	r1, #3
c0deae2a:	2240      	movs	r2, #64	@ 0x40
c0deae2c:	461c      	mov	r4, r3
c0deae2e:	f7ff ff33 	bl	c0deac98 <USBD_LL_PrepareReceive>
c0deae32:	4e0f      	ldr	r6, [pc, #60]	@ (c0deae70 <USBD_WEBUSB_DataOut+0x50>)
c0deae34:	eb09 0006 	add.w	r0, r9, r6
c0deae38:	7980      	ldrb	r0, [r0, #6]
c0deae3a:	b9b0      	cbnz	r0, c0deae6a <USBD_WEBUSB_DataOut+0x4a>
c0deae3c:	2003      	movs	r0, #3
c0deae3e:	f000 fc8d 	bl	c0deb75c <io_seproxyhal_get_ep_rx_size>
c0deae42:	4602      	mov	r2, r0
c0deae44:	480c      	ldr	r0, [pc, #48]	@ (c0deae78 <USBD_WEBUSB_DataOut+0x58>)
c0deae46:	4629      	mov	r1, r5
c0deae48:	4623      	mov	r3, r4
c0deae4a:	4478      	add	r0, pc
c0deae4c:	f000 fcca 	bl	c0deb7e4 <io_usb_hid_receive>
c0deae50:	2802      	cmp	r0, #2
c0deae52:	d10a      	bne.n	c0deae6a <USBD_WEBUSB_DataOut+0x4a>
c0deae54:	200b      	movs	r0, #11
c0deae56:	2105      	movs	r1, #5
c0deae58:	f809 0006 	strb.w	r0, [r9, r6]
c0deae5c:	eb09 0006 	add.w	r0, r9, r6
c0deae60:	7181      	strb	r1, [r0, #6]
c0deae62:	4904      	ldr	r1, [pc, #16]	@ (c0deae74 <USBD_WEBUSB_DataOut+0x54>)
c0deae64:	f859 1001 	ldr.w	r1, [r9, r1]
c0deae68:	8041      	strh	r1, [r0, #2]
c0deae6a:	2000      	movs	r0, #0
c0deae6c:	bd70      	pop	{r4, r5, r6, pc}
c0deae6e:	bf00      	nop
c0deae70:	00002b68 	.word	0x00002b68
c0deae74:	00002bc8 	.word	0x00002bc8
c0deae78:	0000045b 	.word	0x0000045b

c0deae7c <USBD_DeviceDescriptor>:
c0deae7c:	2012      	movs	r0, #18
c0deae7e:	8008      	strh	r0, [r1, #0]
c0deae80:	4801      	ldr	r0, [pc, #4]	@ (c0deae88 <USBD_DeviceDescriptor+0xc>)
c0deae82:	4478      	add	r0, pc
c0deae84:	4770      	bx	lr
c0deae86:	bf00      	nop
c0deae88:	00003636 	.word	0x00003636

c0deae8c <USBD_LangIDStrDescriptor>:
c0deae8c:	2004      	movs	r0, #4
c0deae8e:	8008      	strh	r0, [r1, #0]
c0deae90:	4801      	ldr	r0, [pc, #4]	@ (c0deae98 <USBD_LangIDStrDescriptor+0xc>)
c0deae92:	4478      	add	r0, pc
c0deae94:	4770      	bx	lr
c0deae96:	bf00      	nop
c0deae98:	00003638 	.word	0x00003638

c0deae9c <USBD_ManufacturerStrDescriptor>:
c0deae9c:	200e      	movs	r0, #14
c0deae9e:	8008      	strh	r0, [r1, #0]
c0deaea0:	4801      	ldr	r0, [pc, #4]	@ (c0deaea8 <USBD_ManufacturerStrDescriptor+0xc>)
c0deaea2:	4478      	add	r0, pc
c0deaea4:	4770      	bx	lr
c0deaea6:	bf00      	nop
c0deaea8:	0000362c 	.word	0x0000362c

c0deaeac <USBD_ProductStrDescriptor>:
c0deaeac:	2018      	movs	r0, #24
c0deaeae:	8008      	strh	r0, [r1, #0]
c0deaeb0:	4801      	ldr	r0, [pc, #4]	@ (c0deaeb8 <USBD_ProductStrDescriptor+0xc>)
c0deaeb2:	4478      	add	r0, pc
c0deaeb4:	4770      	bx	lr
c0deaeb6:	bf00      	nop
c0deaeb8:	0000362a 	.word	0x0000362a

c0deaebc <USBD_SerialStrDescriptor>:
c0deaebc:	200a      	movs	r0, #10
c0deaebe:	8008      	strh	r0, [r1, #0]
c0deaec0:	4801      	ldr	r0, [pc, #4]	@ (c0deaec8 <USBD_SerialStrDescriptor+0xc>)
c0deaec2:	4478      	add	r0, pc
c0deaec4:	4770      	bx	lr
c0deaec6:	bf00      	nop
c0deaec8:	00003632 	.word	0x00003632

c0deaecc <USBD_ConfigStrDescriptor>:
c0deaecc:	2018      	movs	r0, #24
c0deaece:	8008      	strh	r0, [r1, #0]
c0deaed0:	4801      	ldr	r0, [pc, #4]	@ (c0deaed8 <USBD_ConfigStrDescriptor+0xc>)
c0deaed2:	4478      	add	r0, pc
c0deaed4:	4770      	bx	lr
c0deaed6:	bf00      	nop
c0deaed8:	0000360a 	.word	0x0000360a

c0deaedc <USBD_InterfaceStrDescriptor>:
c0deaedc:	2018      	movs	r0, #24
c0deaede:	8008      	strh	r0, [r1, #0]
c0deaee0:	4801      	ldr	r0, [pc, #4]	@ (c0deaee8 <USBD_InterfaceStrDescriptor+0xc>)
c0deaee2:	4478      	add	r0, pc
c0deaee4:	4770      	bx	lr
c0deaee6:	bf00      	nop
c0deaee8:	000035fa 	.word	0x000035fa

c0deaeec <USBD_BOSDescriptor>:
c0deaeec:	2039      	movs	r0, #57	@ 0x39
c0deaeee:	8008      	strh	r0, [r1, #0]
c0deaef0:	4801      	ldr	r0, [pc, #4]	@ (c0deaef8 <USBD_BOSDescriptor+0xc>)
c0deaef2:	4478      	add	r0, pc
c0deaef4:	4770      	bx	lr
c0deaef6:	bf00      	nop
c0deaef8:	000033a5 	.word	0x000033a5

c0deaefc <USBD_CtlError>:
c0deaefc:	b580      	push	{r7, lr}
c0deaefe:	f991 2000 	ldrsb.w	r2, [r1]
c0deaf02:	f1b2 3fff 	cmp.w	r2, #4294967295	@ 0xffffffff
c0deaf06:	dd03      	ble.n	c0deaf10 <USBD_CtlError+0x14>
c0deaf08:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0deaf0c:	f7ff bd73 	b.w	c0dea9f6 <USBD_CtlStall>
c0deaf10:	784a      	ldrb	r2, [r1, #1]
c0deaf12:	2a77      	cmp	r2, #119	@ 0x77
c0deaf14:	d00d      	beq.n	c0deaf32 <USBD_CtlError+0x36>
c0deaf16:	2a06      	cmp	r2, #6
c0deaf18:	d1f6      	bne.n	c0deaf08 <USBD_CtlError+0xc>
c0deaf1a:	884a      	ldrh	r2, [r1, #2]
c0deaf1c:	f240 33ee 	movw	r3, #1006	@ 0x3ee
c0deaf20:	429a      	cmp	r2, r3
c0deaf22:	d1f1      	bne.n	c0deaf08 <USBD_CtlError+0xc>
c0deaf24:	88ca      	ldrh	r2, [r1, #6]
c0deaf26:	2a12      	cmp	r2, #18
c0deaf28:	bf28      	it	cs
c0deaf2a:	2212      	movcs	r2, #18
c0deaf2c:	4911      	ldr	r1, [pc, #68]	@ (c0deaf74 <USBD_CtlError+0x78>)
c0deaf2e:	4479      	add	r1, pc
c0deaf30:	e01c      	b.n	c0deaf6c <USBD_CtlError+0x70>
c0deaf32:	888a      	ldrh	r2, [r1, #4]
c0deaf34:	2a04      	cmp	r2, #4
c0deaf36:	d106      	bne.n	c0deaf46 <USBD_CtlError+0x4a>
c0deaf38:	88ca      	ldrh	r2, [r1, #6]
c0deaf3a:	2a28      	cmp	r2, #40	@ 0x28
c0deaf3c:	bf28      	it	cs
c0deaf3e:	2228      	movcs	r2, #40	@ 0x28
c0deaf40:	490d      	ldr	r1, [pc, #52]	@ (c0deaf78 <USBD_CtlError+0x7c>)
c0deaf42:	4479      	add	r1, pc
c0deaf44:	e012      	b.n	c0deaf6c <USBD_CtlError+0x70>
c0deaf46:	888a      	ldrh	r2, [r1, #4]
c0deaf48:	2a05      	cmp	r2, #5
c0deaf4a:	d106      	bne.n	c0deaf5a <USBD_CtlError+0x5e>
c0deaf4c:	88ca      	ldrh	r2, [r1, #6]
c0deaf4e:	2a92      	cmp	r2, #146	@ 0x92
c0deaf50:	bf28      	it	cs
c0deaf52:	2292      	movcs	r2, #146	@ 0x92
c0deaf54:	4909      	ldr	r1, [pc, #36]	@ (c0deaf7c <USBD_CtlError+0x80>)
c0deaf56:	4479      	add	r1, pc
c0deaf58:	e008      	b.n	c0deaf6c <USBD_CtlError+0x70>
c0deaf5a:	888a      	ldrh	r2, [r1, #4]
c0deaf5c:	2a07      	cmp	r2, #7
c0deaf5e:	d1d3      	bne.n	c0deaf08 <USBD_CtlError+0xc>
c0deaf60:	88ca      	ldrh	r2, [r1, #6]
c0deaf62:	2ab2      	cmp	r2, #178	@ 0xb2
c0deaf64:	bf28      	it	cs
c0deaf66:	22b2      	movcs	r2, #178	@ 0xb2
c0deaf68:	4905      	ldr	r1, [pc, #20]	@ (c0deaf80 <USBD_CtlError+0x84>)
c0deaf6a:	4479      	add	r1, pc
c0deaf6c:	f7ff fd5e 	bl	c0deaa2c <USBD_CtlSendData>
c0deaf70:	bd80      	pop	{r7, pc}
c0deaf72:	bf00      	nop
c0deaf74:	000033c2 	.word	0x000033c2
c0deaf78:	000035bc 	.word	0x000035bc
c0deaf7c:	000033ac 	.word	0x000033ac
c0deaf80:	0000342a 	.word	0x0000342a

c0deaf84 <USB_power>:
c0deaf84:	b5b0      	push	{r4, r5, r7, lr}
c0deaf86:	4d16      	ldr	r5, [pc, #88]	@ (c0deafe0 <USB_power+0x5c>)
c0deaf88:	4604      	mov	r4, r0
c0deaf8a:	21d4      	movs	r1, #212	@ 0xd4
c0deaf8c:	eb09 0005 	add.w	r0, r9, r5
c0deaf90:	f001 fb00 	bl	c0dec594 <__aeabi_memclr>
c0deaf94:	4813      	ldr	r0, [pc, #76]	@ (c0deafe4 <USB_power+0x60>)
c0deaf96:	2100      	movs	r1, #0
c0deaf98:	4448      	add	r0, r9
c0deaf9a:	e9c0 1103 	strd	r1, r1, [r0, #12]
c0deaf9e:	6141      	str	r1, [r0, #20]
c0deafa0:	b1c4      	cbz	r4, c0deafd4 <USB_power+0x50>
c0deafa2:	4911      	ldr	r1, [pc, #68]	@ (c0deafe8 <USB_power+0x64>)
c0deafa4:	eb09 0405 	add.w	r4, r9, r5
c0deafa8:	2200      	movs	r2, #0
c0deafaa:	4620      	mov	r0, r4
c0deafac:	4479      	add	r1, pc
c0deafae:	f7ff f964 	bl	c0dea27a <USBD_Init>
c0deafb2:	4a0e      	ldr	r2, [pc, #56]	@ (c0deafec <USB_power+0x68>)
c0deafb4:	2000      	movs	r0, #0
c0deafb6:	4621      	mov	r1, r4
c0deafb8:	447a      	add	r2, pc
c0deafba:	f7ff f98d 	bl	c0dea2d8 <USBD_RegisterClassForInterface>
c0deafbe:	4a0c      	ldr	r2, [pc, #48]	@ (c0deaff0 <USB_power+0x6c>)
c0deafc0:	2001      	movs	r0, #1
c0deafc2:	4621      	mov	r1, r4
c0deafc4:	447a      	add	r2, pc
c0deafc6:	f7ff f987 	bl	c0dea2d8 <USBD_RegisterClassForInterface>
c0deafca:	4620      	mov	r0, r4
c0deafcc:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0deafd0:	f7ff b98d 	b.w	c0dea2ee <USBD_Start>
c0deafd4:	eb09 0005 	add.w	r0, r9, r5
c0deafd8:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0deafdc:	f7ff b963 	b.w	c0dea2a6 <USBD_DeInit>
c0deafe0:	00002984 	.word	0x00002984
c0deafe4:	00002b68 	.word	0x00002b68
c0deafe8:	00003324 	.word	0x00003324
c0deafec:	00003490 	.word	0x00003490
c0deaff0:	000034bc 	.word	0x000034bc

c0deaff4 <USBD_GetCfgDesc_impl>:
c0deaff4:	2140      	movs	r1, #64	@ 0x40
c0deaff6:	8001      	strh	r1, [r0, #0]
c0deaff8:	4801      	ldr	r0, [pc, #4]	@ (c0deb000 <USBD_GetCfgDesc_impl+0xc>)
c0deaffa:	4478      	add	r0, pc
c0deaffc:	4770      	bx	lr
c0deaffe:	bf00      	nop
c0deb000:	0000352e 	.word	0x0000352e

c0deb004 <USBD_GetDeviceQualifierDesc_impl>:
c0deb004:	210a      	movs	r1, #10
c0deb006:	8001      	strh	r1, [r0, #0]
c0deb008:	4801      	ldr	r0, [pc, #4]	@ (c0deb010 <USBD_GetDeviceQualifierDesc_impl+0xc>)
c0deb00a:	4478      	add	r0, pc
c0deb00c:	4770      	bx	lr
c0deb00e:	bf00      	nop
c0deb010:	0000355e 	.word	0x0000355e

c0deb014 <ux_process_button_event>:
c0deb014:	b5b0      	push	{r4, r5, r7, lr}
c0deb016:	4604      	mov	r4, r0
c0deb018:	2001      	movs	r0, #1
c0deb01a:	f000 f815 	bl	c0deb048 <ux_forward_event>
c0deb01e:	4605      	mov	r5, r0
c0deb020:	f7fb fb98 	bl	c0de6754 <nbgl_objAllowDrawing>
c0deb024:	b165      	cbz	r5, c0deb040 <ux_process_button_event+0x2c>
c0deb026:	4807      	ldr	r0, [pc, #28]	@ (c0deb044 <ux_process_button_event+0x30>)
c0deb028:	2164      	movs	r1, #100	@ 0x64
c0deb02a:	f859 0000 	ldr.w	r0, [r9, r0]
c0deb02e:	4341      	muls	r1, r0
c0deb030:	78e0      	ldrb	r0, [r4, #3]
c0deb032:	0840      	lsrs	r0, r0, #1
c0deb034:	f7f9 fcc4 	bl	c0de49c0 <nbgl_buttonsHandler>
c0deb038:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0deb03c:	f7fb bb62 	b.w	c0de6704 <nbgl_refresh>
c0deb040:	bdb0      	pop	{r4, r5, r7, pc}
c0deb042:	bf00      	nop
c0deb044:	00002a60 	.word	0x00002a60

c0deb048 <ux_forward_event>:
c0deb048:	b5b0      	push	{r4, r5, r7, lr}
c0deb04a:	4604      	mov	r4, r0
c0deb04c:	4812      	ldr	r0, [pc, #72]	@ (c0deb098 <ux_forward_event+0x50>)
c0deb04e:	2101      	movs	r1, #1
c0deb050:	f809 1000 	strb.w	r1, [r9, r0]
c0deb054:	eb09 0500 	add.w	r5, r9, r0
c0deb058:	2000      	movs	r0, #0
c0deb05a:	6068      	str	r0, [r5, #4]
c0deb05c:	4628      	mov	r0, r5
c0deb05e:	f001 f87d 	bl	c0dec15c <os_ux>
c0deb062:	2004      	movs	r0, #4
c0deb064:	f001 f8d2 	bl	c0dec20c <os_sched_last_status>
c0deb068:	2869      	cmp	r0, #105	@ 0x69
c0deb06a:	6068      	str	r0, [r5, #4]
c0deb06c:	d108      	bne.n	c0deb080 <ux_forward_event+0x38>
c0deb06e:	2001      	movs	r0, #1
c0deb070:	f7fb fb70 	bl	c0de6754 <nbgl_objAllowDrawing>
c0deb074:	f7fc fb68 	bl	c0de7748 <nbgl_screenRedraw>
c0deb078:	f7fb fb44 	bl	c0de6704 <nbgl_refresh>
c0deb07c:	2000      	movs	r0, #0
c0deb07e:	bdb0      	pop	{r4, r5, r7, pc}
c0deb080:	b144      	cbz	r4, c0deb094 <ux_forward_event+0x4c>
c0deb082:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0deb086:	bf18      	it	ne
c0deb088:	2101      	movne	r1, #1
c0deb08a:	2800      	cmp	r0, #0
c0deb08c:	bf18      	it	ne
c0deb08e:	2001      	movne	r0, #1
c0deb090:	4008      	ands	r0, r1
c0deb092:	bdb0      	pop	{r4, r5, r7, pc}
c0deb094:	2001      	movs	r0, #1
c0deb096:	bdb0      	pop	{r4, r5, r7, pc}
c0deb098:	00002978 	.word	0x00002978

c0deb09c <ux_process_ticker_event>:
c0deb09c:	b510      	push	{r4, lr}
c0deb09e:	480a      	ldr	r0, [pc, #40]	@ (c0deb0c8 <ux_process_ticker_event+0x2c>)
c0deb0a0:	f859 1000 	ldr.w	r1, [r9, r0]
c0deb0a4:	3101      	adds	r1, #1
c0deb0a6:	f849 1000 	str.w	r1, [r9, r0]
c0deb0aa:	2001      	movs	r0, #1
c0deb0ac:	f7ff ffcc 	bl	c0deb048 <ux_forward_event>
c0deb0b0:	4604      	mov	r4, r0
c0deb0b2:	f7fb fb4f 	bl	c0de6754 <nbgl_objAllowDrawing>
c0deb0b6:	2064      	movs	r0, #100	@ 0x64
c0deb0b8:	f7fc fd38 	bl	c0de7b2c <nbgl_screenHandler>
c0deb0bc:	b11c      	cbz	r4, c0deb0c6 <ux_process_ticker_event+0x2a>
c0deb0be:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0deb0c2:	f7fb bb1f 	b.w	c0de6704 <nbgl_refresh>
c0deb0c6:	bd10      	pop	{r4, pc}
c0deb0c8:	00002a60 	.word	0x00002a60

c0deb0cc <ux_process_default_event>:
c0deb0cc:	2000      	movs	r0, #0
c0deb0ce:	f7ff bfbb 	b.w	c0deb048 <ux_forward_event>

c0deb0d2 <hash_iovec_ex>:
c0deb0d2:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0deb0d6:	468a      	mov	sl, r1
c0deb0d8:	4611      	mov	r1, r2
c0deb0da:	461a      	mov	r2, r3
c0deb0dc:	4605      	mov	r5, r0
c0deb0de:	f000 f840 	bl	c0deb162 <cx_hash_init_ex>
c0deb0e2:	4607      	mov	r7, r0
c0deb0e4:	b9a8      	cbnz	r0, c0deb112 <hash_iovec_ex+0x40>
c0deb0e6:	f10d 0820 	add.w	r8, sp, #32
c0deb0ea:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0deb0ee:	1d04      	adds	r4, r0, #4
c0deb0f0:	b156      	cbz	r6, c0deb108 <hash_iovec_ex+0x36>
c0deb0f2:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0deb0f6:	f854 2b08 	ldr.w	r2, [r4], #8
c0deb0fa:	4628      	mov	r0, r5
c0deb0fc:	f000 f836 	bl	c0deb16c <cx_hash_update>
c0deb100:	3e01      	subs	r6, #1
c0deb102:	2800      	cmp	r0, #0
c0deb104:	d0f4      	beq.n	c0deb0f0 <hash_iovec_ex+0x1e>
c0deb106:	e003      	b.n	c0deb110 <hash_iovec_ex+0x3e>
c0deb108:	4628      	mov	r0, r5
c0deb10a:	4641      	mov	r1, r8
c0deb10c:	f000 f824 	bl	c0deb158 <cx_hash_final>
c0deb110:	4607      	mov	r7, r0
c0deb112:	4628      	mov	r0, r5
c0deb114:	4651      	mov	r1, sl
c0deb116:	f001 fa49 	bl	c0dec5ac <explicit_bzero>
c0deb11a:	4638      	mov	r0, r7
c0deb11c:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0deb120 <cx_keccak_256_hash_iovec>:
c0deb120:	b580      	push	{r7, lr}
c0deb122:	b0ee      	sub	sp, #440	@ 0x1b8
c0deb124:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0deb128:	a804      	add	r0, sp, #16
c0deb12a:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0deb12e:	2206      	movs	r2, #6
c0deb130:	2320      	movs	r3, #32
c0deb132:	f7ff ffce 	bl	c0deb0d2 <hash_iovec_ex>
c0deb136:	b06e      	add	sp, #440	@ 0x1b8
c0deb138:	bd80      	pop	{r7, pc}

c0deb13a <cx_ecdsa_sign_no_throw>:
c0deb13a:	b403      	push	{r0, r1}
c0deb13c:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0deb140:	f000 b822 	b.w	c0deb188 <cx_trampoline_helper>

c0deb144 <cx_ecfp_generate_pair2_no_throw>:
c0deb144:	b403      	push	{r0, r1}
c0deb146:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0deb14a:	f000 b81d 	b.w	c0deb188 <cx_trampoline_helper>

c0deb14e <cx_ecfp_init_private_key_no_throw>:
c0deb14e:	b403      	push	{r0, r1}
c0deb150:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0deb154:	f000 b818 	b.w	c0deb188 <cx_trampoline_helper>

c0deb158 <cx_hash_final>:
c0deb158:	b403      	push	{r0, r1}
c0deb15a:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0deb15e:	f000 b813 	b.w	c0deb188 <cx_trampoline_helper>

c0deb162 <cx_hash_init_ex>:
c0deb162:	b403      	push	{r0, r1}
c0deb164:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0deb168:	f000 b80e 	b.w	c0deb188 <cx_trampoline_helper>

c0deb16c <cx_hash_update>:
c0deb16c:	b403      	push	{r0, r1}
c0deb16e:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0deb172:	f000 b809 	b.w	c0deb188 <cx_trampoline_helper>

c0deb176 <cx_rng_no_throw>:
c0deb176:	b403      	push	{r0, r1}
c0deb178:	f04f 006a 	mov.w	r0, #106	@ 0x6a
c0deb17c:	f000 b804 	b.w	c0deb188 <cx_trampoline_helper>

c0deb180 <cx_aes_siv_reset>:
c0deb180:	b403      	push	{r0, r1}
c0deb182:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0deb186:	e7ff      	b.n	c0deb188 <cx_trampoline_helper>

c0deb188 <cx_trampoline_helper>:
c0deb188:	4900      	ldr	r1, [pc, #0]	@ (c0deb18c <cx_trampoline_helper+0x4>)
c0deb18a:	4708      	bx	r1
c0deb18c:	00810001 	.word	0x00810001

c0deb190 <assert_exit>:
c0deb190:	20ff      	movs	r0, #255	@ 0xff
c0deb192:	f001 f801 	bl	c0dec198 <os_sched_exit>

c0deb196 <os_boot>:
c0deb196:	2000      	movs	r0, #0
c0deb198:	f001 b82e 	b.w	c0dec1f8 <try_context_set>

c0deb19c <os_longjmp>:
c0deb19c:	4604      	mov	r4, r0
c0deb19e:	f001 f823 	bl	c0dec1e8 <try_context_get>
c0deb1a2:	4621      	mov	r1, r4
c0deb1a4:	f001 fa3e 	bl	c0dec624 <longjmp>

c0deb1a8 <io_seproxyhal_general_status>:
c0deb1a8:	4802      	ldr	r0, [pc, #8]	@ (c0deb1b4 <io_seproxyhal_general_status+0xc>)
c0deb1aa:	2105      	movs	r1, #5
c0deb1ac:	4478      	add	r0, pc
c0deb1ae:	f000 bffd 	b.w	c0dec1ac <io_seph_send>
c0deb1b2:	bf00      	nop
c0deb1b4:	000033c6 	.word	0x000033c6

c0deb1b8 <io_seproxyhal_handle_usb_event>:
c0deb1b8:	b510      	push	{r4, lr}
c0deb1ba:	481a      	ldr	r0, [pc, #104]	@ (c0deb224 <io_seproxyhal_handle_usb_event+0x6c>)
c0deb1bc:	4448      	add	r0, r9
c0deb1be:	78c0      	ldrb	r0, [r0, #3]
c0deb1c0:	2808      	cmp	r0, #8
c0deb1c2:	d020      	beq.n	c0deb206 <io_seproxyhal_handle_usb_event+0x4e>
c0deb1c4:	2802      	cmp	r0, #2
c0deb1c6:	d018      	beq.n	c0deb1fa <io_seproxyhal_handle_usb_event+0x42>
c0deb1c8:	2804      	cmp	r0, #4
c0deb1ca:	d022      	beq.n	c0deb212 <io_seproxyhal_handle_usb_event+0x5a>
c0deb1cc:	2801      	cmp	r0, #1
c0deb1ce:	d113      	bne.n	c0deb1f8 <io_seproxyhal_handle_usb_event+0x40>
c0deb1d0:	4815      	ldr	r0, [pc, #84]	@ (c0deb228 <io_seproxyhal_handle_usb_event+0x70>)
c0deb1d2:	2101      	movs	r1, #1
c0deb1d4:	eb09 0400 	add.w	r4, r9, r0
c0deb1d8:	4620      	mov	r0, r4
c0deb1da:	f7ff f9b8 	bl	c0dea54e <USBD_LL_SetSpeed>
c0deb1de:	4620      	mov	r0, r4
c0deb1e0:	f7ff f99d 	bl	c0dea51e <USBD_LL_Reset>
c0deb1e4:	4811      	ldr	r0, [pc, #68]	@ (c0deb22c <io_seproxyhal_handle_usb_event+0x74>)
c0deb1e6:	eb09 0100 	add.w	r1, r9, r0
c0deb1ea:	7989      	ldrb	r1, [r1, #6]
c0deb1ec:	b9b9      	cbnz	r1, c0deb21e <io_seproxyhal_handle_usb_event+0x66>
c0deb1ee:	4448      	add	r0, r9
c0deb1f0:	2100      	movs	r1, #0
c0deb1f2:	e9c0 1103 	strd	r1, r1, [r0, #12]
c0deb1f6:	6141      	str	r1, [r0, #20]
c0deb1f8:	bd10      	pop	{r4, pc}
c0deb1fa:	480b      	ldr	r0, [pc, #44]	@ (c0deb228 <io_seproxyhal_handle_usb_event+0x70>)
c0deb1fc:	4448      	add	r0, r9
c0deb1fe:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0deb202:	f7ff b9ab 	b.w	c0dea55c <USBD_LL_SOF>
c0deb206:	4808      	ldr	r0, [pc, #32]	@ (c0deb228 <io_seproxyhal_handle_usb_event+0x70>)
c0deb208:	4448      	add	r0, r9
c0deb20a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0deb20e:	f7ff b9a3 	b.w	c0dea558 <USBD_LL_Resume>
c0deb212:	4805      	ldr	r0, [pc, #20]	@ (c0deb228 <io_seproxyhal_handle_usb_event+0x70>)
c0deb214:	4448      	add	r0, r9
c0deb216:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0deb21a:	f7ff b99b 	b.w	c0dea554 <USBD_LL_Suspend>
c0deb21e:	2005      	movs	r0, #5
c0deb220:	f7ff ffbc 	bl	c0deb19c <os_longjmp>
c0deb224:	00002844 	.word	0x00002844
c0deb228:	00002984 	.word	0x00002984
c0deb22c:	00002b68 	.word	0x00002b68

c0deb230 <io_seproxyhal_handle_usb_ep_xfer_event>:
c0deb230:	b580      	push	{r7, lr}
c0deb232:	4a1a      	ldr	r2, [pc, #104]	@ (c0deb29c <io_seproxyhal_handle_usb_ep_xfer_event+0x6c>)
c0deb234:	eb09 0002 	add.w	r0, r9, r2
c0deb238:	78c1      	ldrb	r1, [r0, #3]
c0deb23a:	7900      	ldrb	r0, [r0, #4]
c0deb23c:	f001 017f 	and.w	r1, r1, #127	@ 0x7f
c0deb240:	2804      	cmp	r0, #4
c0deb242:	d01b      	beq.n	c0deb27c <io_seproxyhal_handle_usb_ep_xfer_event+0x4c>
c0deb244:	2802      	cmp	r0, #2
c0deb246:	d00a      	beq.n	c0deb25e <io_seproxyhal_handle_usb_ep_xfer_event+0x2e>
c0deb248:	2801      	cmp	r0, #1
c0deb24a:	d125      	bne.n	c0deb298 <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0deb24c:	4815      	ldr	r0, [pc, #84]	@ (c0deb2a4 <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0deb24e:	eb09 0102 	add.w	r1, r9, r2
c0deb252:	3106      	adds	r1, #6
c0deb254:	4448      	add	r0, r9
c0deb256:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0deb25a:	f7ff b87e 	b.w	c0dea35a <USBD_LL_SetupStage>
c0deb25e:	2903      	cmp	r1, #3
c0deb260:	d81a      	bhi.n	c0deb298 <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0deb262:	480f      	ldr	r0, [pc, #60]	@ (c0deb2a0 <io_seproxyhal_handle_usb_ep_xfer_event+0x70>)
c0deb264:	2300      	movs	r3, #0
c0deb266:	444a      	add	r2, r9
c0deb268:	3206      	adds	r2, #6
c0deb26a:	4448      	add	r0, r9
c0deb26c:	eb00 0041 	add.w	r0, r0, r1, lsl #1
c0deb270:	8203      	strh	r3, [r0, #16]
c0deb272:	480c      	ldr	r0, [pc, #48]	@ (c0deb2a4 <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0deb274:	4448      	add	r0, r9
c0deb276:	f7ff f8e8 	bl	c0dea44a <USBD_LL_DataInStage>
c0deb27a:	bd80      	pop	{r7, pc}
c0deb27c:	2903      	cmp	r1, #3
c0deb27e:	d80b      	bhi.n	c0deb298 <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0deb280:	4807      	ldr	r0, [pc, #28]	@ (c0deb2a0 <io_seproxyhal_handle_usb_ep_xfer_event+0x70>)
c0deb282:	444a      	add	r2, r9
c0deb284:	7953      	ldrb	r3, [r2, #5]
c0deb286:	3206      	adds	r2, #6
c0deb288:	4448      	add	r0, r9
c0deb28a:	4408      	add	r0, r1
c0deb28c:	7303      	strb	r3, [r0, #12]
c0deb28e:	4805      	ldr	r0, [pc, #20]	@ (c0deb2a4 <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0deb290:	2300      	movs	r3, #0
c0deb292:	4448      	add	r0, r9
c0deb294:	f7ff f88c 	bl	c0dea3b0 <USBD_LL_DataOutStage>
c0deb298:	bd80      	pop	{r7, pc}
c0deb29a:	bf00      	nop
c0deb29c:	00002844 	.word	0x00002844
c0deb2a0:	00002b68 	.word	0x00002b68
c0deb2a4:	00002984 	.word	0x00002984

c0deb2a8 <io_usb_send_apdu_data_ep0x83>:
c0deb2a8:	460a      	mov	r2, r1
c0deb2aa:	4601      	mov	r1, r0
c0deb2ac:	2083      	movs	r0, #131	@ 0x83
c0deb2ae:	2314      	movs	r3, #20
c0deb2b0:	f000 ba62 	b.w	c0deb778 <io_usb_send_ep>

c0deb2b4 <io_seproxyhal_handle_capdu_event>:
c0deb2b4:	480d      	ldr	r0, [pc, #52]	@ (c0deb2ec <io_seproxyhal_handle_capdu_event+0x38>)
c0deb2b6:	f819 1000 	ldrb.w	r1, [r9, r0]
c0deb2ba:	b101      	cbz	r1, c0deb2be <io_seproxyhal_handle_capdu_event+0xa>
c0deb2bc:	4770      	bx	lr
c0deb2be:	210a      	movs	r1, #10
c0deb2c0:	f809 1000 	strb.w	r1, [r9, r0]
c0deb2c4:	4448      	add	r0, r9
c0deb2c6:	2106      	movs	r1, #6
c0deb2c8:	7181      	strb	r1, [r0, #6]
c0deb2ca:	4909      	ldr	r1, [pc, #36]	@ (c0deb2f0 <io_seproxyhal_handle_capdu_event+0x3c>)
c0deb2cc:	4449      	add	r1, r9
c0deb2ce:	784a      	ldrb	r2, [r1, #1]
c0deb2d0:	788b      	ldrb	r3, [r1, #2]
c0deb2d2:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0deb2d6:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0deb2da:	bf88      	it	hi
c0deb2dc:	f240 1201 	movwhi	r2, #257	@ 0x101
c0deb2e0:	8042      	strh	r2, [r0, #2]
c0deb2e2:	4804      	ldr	r0, [pc, #16]	@ (c0deb2f4 <io_seproxyhal_handle_capdu_event+0x40>)
c0deb2e4:	3103      	adds	r1, #3
c0deb2e6:	4448      	add	r0, r9
c0deb2e8:	f001 b957 	b.w	c0dec59a <__aeabi_memcpy>
c0deb2ec:	00002b68 	.word	0x00002b68
c0deb2f0:	00002844 	.word	0x00002844
c0deb2f4:	00002a64 	.word	0x00002a64

c0deb2f8 <io_seproxyhal_handle_event>:
c0deb2f8:	b510      	push	{r4, lr}
c0deb2fa:	492b      	ldr	r1, [pc, #172]	@ (c0deb3a8 <io_seproxyhal_handle_event+0xb0>)
c0deb2fc:	f819 0001 	ldrb.w	r0, [r9, r1]
c0deb300:	280e      	cmp	r0, #14
c0deb302:	d011      	beq.n	c0deb328 <io_seproxyhal_handle_event+0x30>
c0deb304:	281a      	cmp	r0, #26
c0deb306:	d029      	beq.n	c0deb35c <io_seproxyhal_handle_event+0x64>
c0deb308:	4449      	add	r1, r9
c0deb30a:	2810      	cmp	r0, #16
c0deb30c:	784a      	ldrb	r2, [r1, #1]
c0deb30e:	7889      	ldrb	r1, [r1, #2]
c0deb310:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0deb314:	d035      	beq.n	c0deb382 <io_seproxyhal_handle_event+0x8a>
c0deb316:	2816      	cmp	r0, #22
c0deb318:	d037      	beq.n	c0deb38a <io_seproxyhal_handle_event+0x92>
c0deb31a:	280f      	cmp	r0, #15
c0deb31c:	d12c      	bne.n	c0deb378 <io_seproxyhal_handle_event+0x80>
c0deb31e:	2901      	cmp	r1, #1
c0deb320:	d131      	bne.n	c0deb386 <io_seproxyhal_handle_event+0x8e>
c0deb322:	f7ff ff49 	bl	c0deb1b8 <io_seproxyhal_handle_usb_event>
c0deb326:	e035      	b.n	c0deb394 <io_seproxyhal_handle_event+0x9c>
c0deb328:	4820      	ldr	r0, [pc, #128]	@ (c0deb3ac <io_seproxyhal_handle_event+0xb4>)
c0deb32a:	eb09 0100 	add.w	r1, r9, r0
c0deb32e:	688a      	ldr	r2, [r1, #8]
c0deb330:	3264      	adds	r2, #100	@ 0x64
c0deb332:	608a      	str	r2, [r1, #8]
c0deb334:	210b      	movs	r1, #11
c0deb336:	2907      	cmp	r1, #7
c0deb338:	d01e      	beq.n	c0deb378 <io_seproxyhal_handle_event+0x80>
c0deb33a:	eb09 0200 	add.w	r2, r9, r0
c0deb33e:	f832 2011 	ldrh.w	r2, [r2, r1, lsl #1]
c0deb342:	b14a      	cbz	r2, c0deb358 <io_seproxyhal_handle_event+0x60>
c0deb344:	f1b2 0364 	subs.w	r3, r2, #100	@ 0x64
c0deb348:	eb09 0400 	add.w	r4, r9, r0
c0deb34c:	bf38      	it	cc
c0deb34e:	2300      	movcc	r3, #0
c0deb350:	2a65      	cmp	r2, #101	@ 0x65
c0deb352:	f824 3011 	strh.w	r3, [r4, r1, lsl #1]
c0deb356:	d320      	bcc.n	c0deb39a <io_seproxyhal_handle_event+0xa2>
c0deb358:	3901      	subs	r1, #1
c0deb35a:	e7ec      	b.n	c0deb336 <io_seproxyhal_handle_event+0x3e>
c0deb35c:	eb09 0001 	add.w	r0, r9, r1
c0deb360:	78c0      	ldrb	r0, [r0, #3]
c0deb362:	2803      	cmp	r0, #3
c0deb364:	d108      	bne.n	c0deb378 <io_seproxyhal_handle_event+0x80>
c0deb366:	2001      	movs	r0, #1
c0deb368:	2401      	movs	r4, #1
c0deb36a:	f7fb f9f3 	bl	c0de6754 <nbgl_objAllowDrawing>
c0deb36e:	f7fc f9eb 	bl	c0de7748 <nbgl_screenRedraw>
c0deb372:	f7fb f9c7 	bl	c0de6704 <nbgl_refresh>
c0deb376:	e00e      	b.n	c0deb396 <io_seproxyhal_handle_event+0x9e>
c0deb378:	2002      	movs	r0, #2
c0deb37a:	f7fe fd83 	bl	c0de9e84 <io_event>
c0deb37e:	4604      	mov	r4, r0
c0deb380:	e009      	b.n	c0deb396 <io_seproxyhal_handle_event+0x9e>
c0deb382:	2903      	cmp	r1, #3
c0deb384:	d204      	bcs.n	c0deb390 <io_seproxyhal_handle_event+0x98>
c0deb386:	2400      	movs	r4, #0
c0deb388:	e005      	b.n	c0deb396 <io_seproxyhal_handle_event+0x9e>
c0deb38a:	f7ff ff93 	bl	c0deb2b4 <io_seproxyhal_handle_capdu_event>
c0deb38e:	e001      	b.n	c0deb394 <io_seproxyhal_handle_event+0x9c>
c0deb390:	f7ff ff4e 	bl	c0deb230 <io_seproxyhal_handle_usb_ep_xfer_event>
c0deb394:	2401      	movs	r4, #1
c0deb396:	4620      	mov	r0, r4
c0deb398:	bd10      	pop	{r4, pc}
c0deb39a:	2100      	movs	r1, #0
c0deb39c:	f809 1000 	strb.w	r1, [r9, r0]
c0deb3a0:	2005      	movs	r0, #5
c0deb3a2:	f7ff fefb 	bl	c0deb19c <os_longjmp>
c0deb3a6:	bf00      	nop
c0deb3a8:	00002844 	.word	0x00002844
c0deb3ac:	00002b68 	.word	0x00002b68

c0deb3b0 <io_seproxyhal_init>:
c0deb3b0:	b5b0      	push	{r4, r5, r7, lr}
c0deb3b2:	4c10      	ldr	r4, [pc, #64]	@ (c0deb3f4 <io_seproxyhal_init+0x44>)
c0deb3b4:	2500      	movs	r5, #0
c0deb3b6:	2008      	movs	r0, #8
c0deb3b8:	f849 5004 	str.w	r5, [r9, r4]
c0deb3bc:	f809 0004 	strb.w	r0, [r9, r4]
c0deb3c0:	eb09 0004 	add.w	r0, r9, r4
c0deb3c4:	e9c0 5501 	strd	r5, r5, [r0, #4]
c0deb3c8:	2d01      	cmp	r5, #1
c0deb3ca:	d809      	bhi.n	c0deb3e0 <io_seproxyhal_init+0x30>
c0deb3cc:	eb09 0004 	add.w	r0, r9, r4
c0deb3d0:	f000 fec4 	bl	c0dec15c <os_ux>
c0deb3d4:	2004      	movs	r0, #4
c0deb3d6:	f000 ff19 	bl	c0dec20c <os_sched_last_status>
c0deb3da:	3501      	adds	r5, #1
c0deb3dc:	28aa      	cmp	r0, #170	@ 0xaa
c0deb3de:	d1f3      	bne.n	c0deb3c8 <io_seproxyhal_init+0x18>
c0deb3e0:	4805      	ldr	r0, [pc, #20]	@ (c0deb3f8 <io_seproxyhal_init+0x48>)
c0deb3e2:	211c      	movs	r1, #28
c0deb3e4:	4448      	add	r0, r9
c0deb3e6:	f001 f8d5 	bl	c0dec594 <__aeabi_memclr>
c0deb3ea:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0deb3ee:	f000 bac3 	b.w	c0deb978 <io_usb_hid_init>
c0deb3f2:	bf00      	nop
c0deb3f4:	00002978 	.word	0x00002978
c0deb3f8:	00002b68 	.word	0x00002b68

c0deb3fc <os_io_seproxyhal_get_app_name_and_version>:
c0deb3fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deb3fe:	4811      	ldr	r0, [pc, #68]	@ (c0deb444 <os_io_seproxyhal_get_app_name_and_version+0x48>)
c0deb400:	2501      	movs	r5, #1
c0deb402:	f44f 7281 	mov.w	r2, #258	@ 0x102
c0deb406:	eb09 0600 	add.w	r6, r9, r0
c0deb40a:	f809 5000 	strb.w	r5, [r9, r0]
c0deb40e:	2001      	movs	r0, #1
c0deb410:	1cb1      	adds	r1, r6, #2
c0deb412:	f000 feb5 	bl	c0dec180 <os_registry_get_current_app_tag>
c0deb416:	1987      	adds	r7, r0, r6
c0deb418:	4604      	mov	r4, r0
c0deb41a:	7070      	strb	r0, [r6, #1]
c0deb41c:	f240 1001 	movw	r0, #257	@ 0x101
c0deb420:	1b02      	subs	r2, r0, r4
c0deb422:	1cf9      	adds	r1, r7, #3
c0deb424:	2002      	movs	r0, #2
c0deb426:	f000 feab 	bl	c0dec180 <os_registry_get_current_app_tag>
c0deb42a:	4404      	add	r4, r0
c0deb42c:	70b8      	strb	r0, [r7, #2]
c0deb42e:	4426      	add	r6, r4
c0deb430:	70f5      	strb	r5, [r6, #3]
c0deb432:	f000 fe9d 	bl	c0dec170 <os_flags>
c0deb436:	2100      	movs	r1, #0
c0deb438:	7130      	strb	r0, [r6, #4]
c0deb43a:	1de0      	adds	r0, r4, #7
c0deb43c:	71b1      	strb	r1, [r6, #6]
c0deb43e:	2190      	movs	r1, #144	@ 0x90
c0deb440:	7171      	strb	r1, [r6, #5]
c0deb442:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0deb444:	00002a64 	.word	0x00002a64

c0deb448 <os_io_seproxyhal_pki_load_certificate>:
c0deb448:	b5b0      	push	{r4, r5, r7, lr}
c0deb44a:	b09e      	sub	sp, #120	@ 0x78
c0deb44c:	460b      	mov	r3, r1
c0deb44e:	4601      	mov	r1, r0
c0deb450:	ac03      	add	r4, sp, #12
c0deb452:	2000      	movs	r0, #0
c0deb454:	e9cd 0400 	strd	r0, r4, [sp]
c0deb458:	4610      	mov	r0, r2
c0deb45a:	461a      	mov	r2, r3
c0deb45c:	2300      	movs	r3, #0
c0deb45e:	f000 fe5b 	bl	c0dec118 <os_pki_load_certificate>
c0deb462:	4605      	mov	r5, r0
c0deb464:	4620      	mov	r0, r4
c0deb466:	216c      	movs	r1, #108	@ 0x6c
c0deb468:	f001 f8a0 	bl	c0dec5ac <explicit_bzero>
c0deb46c:	2d00      	cmp	r5, #0
c0deb46e:	4906      	ldr	r1, [pc, #24]	@ (c0deb488 <os_io_seproxyhal_pki_load_certificate+0x40>)
c0deb470:	bf08      	it	eq
c0deb472:	f44f 4510 	moveq.w	r5, #36864	@ 0x9000
c0deb476:	0a28      	lsrs	r0, r5, #8
c0deb478:	f809 0001 	strb.w	r0, [r9, r1]
c0deb47c:	eb09 0001 	add.w	r0, r9, r1
c0deb480:	7045      	strb	r5, [r0, #1]
c0deb482:	2002      	movs	r0, #2
c0deb484:	b01e      	add	sp, #120	@ 0x78
c0deb486:	bdb0      	pop	{r4, r5, r7, pc}
c0deb488:	00002a64 	.word	0x00002a64

c0deb48c <io_exchange>:
c0deb48c:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0deb490:	4680      	mov	r8, r0
c0deb492:	489b      	ldr	r0, [pc, #620]	@ (c0deb700 <io_exchange+0x274>)
c0deb494:	4c97      	ldr	r4, [pc, #604]	@ (c0deb6f4 <io_exchange+0x268>)
c0deb496:	f8df b260 	ldr.w	fp, [pc, #608]	@ c0deb6f8 <io_exchange+0x26c>
c0deb49a:	4d95      	ldr	r5, [pc, #596]	@ (c0deb6f0 <io_exchange+0x264>)
c0deb49c:	460f      	mov	r7, r1
c0deb49e:	f04f 0a00 	mov.w	sl, #0
c0deb4a2:	4478      	add	r0, pc
c0deb4a4:	9001      	str	r0, [sp, #4]
c0deb4a6:	fa5f f688 	uxtb.w	r6, r8
c0deb4aa:	ea5f 7088 	movs.w	r0, r8, lsl #30
c0deb4ae:	f040 8106 	bne.w	c0deb6be <io_exchange+0x232>
c0deb4b2:	f006 0110 	and.w	r1, r6, #16
c0deb4b6:	0438      	lsls	r0, r7, #16
c0deb4b8:	d07b      	beq.n	c0deb5b2 <io_exchange+0x126>
c0deb4ba:	2900      	cmp	r1, #0
c0deb4bc:	d179      	bne.n	c0deb5b2 <io_exchange+0x126>
c0deb4be:	9102      	str	r1, [sp, #8]
c0deb4c0:	f000 fe7e 	bl	c0dec1c0 <io_seph_is_status_sent>
c0deb4c4:	b138      	cbz	r0, c0deb4d6 <io_exchange+0x4a>
c0deb4c6:	eb09 0005 	add.w	r0, r9, r5
c0deb4ca:	f000 f941 	bl	c0deb750 <OUTLINED_FUNCTION_0>
c0deb4ce:	2001      	movs	r0, #1
c0deb4d0:	f000 f91a 	bl	c0deb708 <os_io_seph_recv_and_process>
c0deb4d4:	e7f4      	b.n	c0deb4c0 <io_exchange+0x34>
c0deb4d6:	f819 0004 	ldrb.w	r0, [r9, r4]
c0deb4da:	eb09 0104 	add.w	r1, r9, r4
c0deb4de:	f8cd 800c 	str.w	r8, [sp, #12]
c0deb4e2:	f8d1 8008 	ldr.w	r8, [r1, #8]
c0deb4e6:	2807      	cmp	r0, #7
c0deb4e8:	d00c      	beq.n	c0deb504 <io_exchange+0x78>
c0deb4ea:	280a      	cmp	r0, #10
c0deb4ec:	d00f      	beq.n	c0deb50e <io_exchange+0x82>
c0deb4ee:	280b      	cmp	r0, #11
c0deb4f0:	d02a      	beq.n	c0deb548 <io_exchange+0xbc>
c0deb4f2:	2800      	cmp	r0, #0
c0deb4f4:	f000 80f5 	beq.w	c0deb6e2 <io_exchange+0x256>
c0deb4f8:	b2b9      	uxth	r1, r7
c0deb4fa:	4630      	mov	r0, r6
c0deb4fc:	f7fe fcf2 	bl	c0de9ee4 <io_exchange_al>
c0deb500:	b348      	cbz	r0, c0deb556 <io_exchange+0xca>
c0deb502:	e0ee      	b.n	c0deb6e2 <io_exchange+0x256>
c0deb504:	9801      	ldr	r0, [sp, #4]
c0deb506:	eb09 020b 	add.w	r2, r9, fp
c0deb50a:	b2b9      	uxth	r1, r7
c0deb50c:	e021      	b.n	c0deb552 <io_exchange+0xc6>
c0deb50e:	46da      	mov	sl, fp
c0deb510:	fa1f fb87 	uxth.w	fp, r7
c0deb514:	f5bb 7f82 	cmp.w	fp, #260	@ 0x104
c0deb518:	f200 80e6 	bhi.w	c0deb6e8 <io_exchange+0x25c>
c0deb51c:	2053      	movs	r0, #83	@ 0x53
c0deb51e:	0a39      	lsrs	r1, r7, #8
c0deb520:	f809 0005 	strb.w	r0, [r9, r5]
c0deb524:	eb09 0005 	add.w	r0, r9, r5
c0deb528:	7041      	strb	r1, [r0, #1]
c0deb52a:	2103      	movs	r1, #3
c0deb52c:	7087      	strb	r7, [r0, #2]
c0deb52e:	f000 fe3d 	bl	c0dec1ac <io_seph_send>
c0deb532:	4659      	mov	r1, fp
c0deb534:	eb09 000a 	add.w	r0, r9, sl
c0deb538:	46d3      	mov	fp, sl
c0deb53a:	f000 fe37 	bl	c0dec1ac <io_seph_send>
c0deb53e:	f04f 0a00 	mov.w	sl, #0
c0deb542:	f809 a004 	strb.w	sl, [r9, r4]
c0deb546:	e006      	b.n	c0deb556 <io_exchange+0xca>
c0deb548:	486e      	ldr	r0, [pc, #440]	@ (c0deb704 <io_exchange+0x278>)
c0deb54a:	eb09 020b 	add.w	r2, r9, fp
c0deb54e:	b2b9      	uxth	r1, r7
c0deb550:	4478      	add	r0, pc
c0deb552:	f000 fa99 	bl	c0deba88 <io_usb_hid_send>
c0deb556:	f508 67fa 	add.w	r7, r8, #2000	@ 0x7d0
c0deb55a:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0deb55e:	f819 0004 	ldrb.w	r0, [r9, r4]
c0deb562:	b190      	cbz	r0, c0deb58a <io_exchange+0xfe>
c0deb564:	f7ff fe20 	bl	c0deb1a8 <io_seproxyhal_general_status>
c0deb568:	eb09 0005 	add.w	r0, r9, r5
c0deb56c:	f000 f8f0 	bl	c0deb750 <OUTLINED_FUNCTION_0>
c0deb570:	eb09 0004 	add.w	r0, r9, r4
c0deb574:	6880      	ldr	r0, [r0, #8]
c0deb576:	42b8      	cmp	r0, r7
c0deb578:	f080 80ad 	bcs.w	c0deb6d6 <io_exchange+0x24a>
c0deb57c:	f7ff febc 	bl	c0deb2f8 <io_seproxyhal_handle_event>
c0deb580:	f000 fe1e 	bl	c0dec1c0 <io_seph_is_status_sent>
c0deb584:	2800      	cmp	r0, #0
c0deb586:	d1ef      	bne.n	c0deb568 <io_exchange+0xdc>
c0deb588:	e7e9      	b.n	c0deb55e <io_exchange+0xd2>
c0deb58a:	2000      	movs	r0, #0
c0deb58c:	eb09 0104 	add.w	r1, r9, r4
c0deb590:	7188      	strb	r0, [r1, #6]
c0deb592:	8048      	strh	r0, [r1, #2]
c0deb594:	ea5f 6188 	movs.w	r1, r8, lsl #26
c0deb598:	f809 0004 	strb.w	r0, [r9, r4]
c0deb59c:	f100 808b 	bmi.w	c0deb6b6 <io_exchange+0x22a>
c0deb5a0:	f7ff fe02 	bl	c0deb1a8 <io_seproxyhal_general_status>
c0deb5a4:	fa4f f088 	sxtb.w	r0, r8
c0deb5a8:	9902      	ldr	r1, [sp, #8]
c0deb5aa:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0deb5ae:	f340 8095 	ble.w	c0deb6dc <io_exchange+0x250>
c0deb5b2:	0770      	lsls	r0, r6, #29
c0deb5b4:	d40e      	bmi.n	c0deb5d4 <io_exchange+0x148>
c0deb5b6:	b941      	cbnz	r1, c0deb5ca <io_exchange+0x13e>
c0deb5b8:	0670      	lsls	r0, r6, #25
c0deb5ba:	f100 8087 	bmi.w	c0deb6cc <io_exchange+0x240>
c0deb5be:	eb09 0004 	add.w	r0, r9, r4
c0deb5c2:	f809 a004 	strb.w	sl, [r9, r4]
c0deb5c6:	f880 a006 	strb.w	sl, [r0, #6]
c0deb5ca:	2000      	movs	r0, #0
c0deb5cc:	eb09 0104 	add.w	r1, r9, r4
c0deb5d0:	8048      	strh	r0, [r1, #2]
c0deb5d2:	e002      	b.n	c0deb5da <io_exchange+0x14e>
c0deb5d4:	eb09 0004 	add.w	r0, r9, r4
c0deb5d8:	8840      	ldrh	r0, [r0, #2]
c0deb5da:	f819 1004 	ldrb.w	r1, [r9, r4]
c0deb5de:	b101      	cbz	r1, c0deb5e2 <io_exchange+0x156>
c0deb5e0:	bb00      	cbnz	r0, c0deb624 <io_exchange+0x198>
c0deb5e2:	f7ff fde1 	bl	c0deb1a8 <io_seproxyhal_general_status>
c0deb5e6:	eb09 0005 	add.w	r0, r9, r5
c0deb5ea:	f000 f8b1 	bl	c0deb750 <OUTLINED_FUNCTION_0>
c0deb5ee:	2803      	cmp	r0, #3
c0deb5f0:	d310      	bcc.n	c0deb614 <io_exchange+0x188>
c0deb5f2:	eb09 0105 	add.w	r1, r9, r5
c0deb5f6:	784a      	ldrb	r2, [r1, #1]
c0deb5f8:	7889      	ldrb	r1, [r1, #2]
c0deb5fa:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0deb5fe:	3103      	adds	r1, #3
c0deb600:	4281      	cmp	r1, r0
c0deb602:	d107      	bne.n	c0deb614 <io_exchange+0x188>
c0deb604:	f7ff fe78 	bl	c0deb2f8 <io_seproxyhal_handle_event>
c0deb608:	eb09 0004 	add.w	r0, r9, r4
c0deb60c:	f819 1004 	ldrb.w	r1, [r9, r4]
c0deb610:	8840      	ldrh	r0, [r0, #2]
c0deb612:	e7e4      	b.n	c0deb5de <io_exchange+0x152>
c0deb614:	2000      	movs	r0, #0
c0deb616:	eb09 0104 	add.w	r1, r9, r4
c0deb61a:	8048      	strh	r0, [r1, #2]
c0deb61c:	f809 0004 	strb.w	r0, [r9, r4]
c0deb620:	2100      	movs	r1, #0
c0deb622:	e7dc      	b.n	c0deb5de <io_exchange+0x152>
c0deb624:	f000 fd88 	bl	c0dec138 <os_perso_is_pin_set>
c0deb628:	28aa      	cmp	r0, #170	@ 0xaa
c0deb62a:	d103      	bne.n	c0deb634 <io_exchange+0x1a8>
c0deb62c:	f000 fd8d 	bl	c0dec14a <os_global_pin_is_validated>
c0deb630:	28aa      	cmp	r0, #170	@ 0xaa
c0deb632:	d118      	bne.n	c0deb666 <io_exchange+0x1da>
c0deb634:	f819 000b 	ldrb.w	r0, [r9, fp]
c0deb638:	28b0      	cmp	r0, #176	@ 0xb0
c0deb63a:	d139      	bne.n	c0deb6b0 <io_exchange+0x224>
c0deb63c:	eb09 000b 	add.w	r0, r9, fp
c0deb640:	7840      	ldrb	r0, [r0, #1]
c0deb642:	28a7      	cmp	r0, #167	@ 0xa7
c0deb644:	d017      	beq.n	c0deb676 <io_exchange+0x1ea>
c0deb646:	2806      	cmp	r0, #6
c0deb648:	d027      	beq.n	c0deb69a <io_exchange+0x20e>
c0deb64a:	2801      	cmp	r0, #1
c0deb64c:	d130      	bne.n	c0deb6b0 <io_exchange+0x224>
c0deb64e:	eb09 000b 	add.w	r0, r9, fp
c0deb652:	7881      	ldrb	r1, [r0, #2]
c0deb654:	78c0      	ldrb	r0, [r0, #3]
c0deb656:	4308      	orrs	r0, r1
c0deb658:	d12a      	bne.n	c0deb6b0 <io_exchange+0x224>
c0deb65a:	f008 0803 	and.w	r8, r8, #3
c0deb65e:	f7ff fecd 	bl	c0deb3fc <os_io_seproxyhal_get_app_name_and_version>
c0deb662:	4607      	mov	r7, r0
c0deb664:	e71f      	b.n	c0deb4a6 <io_exchange+0x1a>
c0deb666:	2055      	movs	r0, #85	@ 0x55
c0deb668:	2115      	movs	r1, #21
c0deb66a:	f809 000b 	strb.w	r0, [r9, fp]
c0deb66e:	eb09 000b 	add.w	r0, r9, fp
c0deb672:	7041      	strb	r1, [r0, #1]
c0deb674:	e018      	b.n	c0deb6a8 <io_exchange+0x21c>
c0deb676:	eb09 000b 	add.w	r0, r9, fp
c0deb67a:	7881      	ldrb	r1, [r0, #2]
c0deb67c:	78c0      	ldrb	r0, [r0, #3]
c0deb67e:	4308      	orrs	r0, r1
c0deb680:	d116      	bne.n	c0deb6b0 <io_exchange+0x224>
c0deb682:	2090      	movs	r0, #144	@ 0x90
c0deb684:	2702      	movs	r7, #2
c0deb686:	f809 000b 	strb.w	r0, [r9, fp]
c0deb68a:	eb09 000b 	add.w	r0, r9, fp
c0deb68e:	f880 a001 	strb.w	sl, [r0, #1]
c0deb692:	481a      	ldr	r0, [pc, #104]	@ (c0deb6fc <io_exchange+0x270>)
c0deb694:	f360 089f 	bfi	r8, r0, #2, #30
c0deb698:	e705      	b.n	c0deb4a6 <io_exchange+0x1a>
c0deb69a:	eb09 000b 	add.w	r0, r9, fp
c0deb69e:	7882      	ldrb	r2, [r0, #2]
c0deb6a0:	7901      	ldrb	r1, [r0, #4]
c0deb6a2:	3005      	adds	r0, #5
c0deb6a4:	f7ff fed0 	bl	c0deb448 <os_io_seproxyhal_pki_load_certificate>
c0deb6a8:	f008 0803 	and.w	r8, r8, #3
c0deb6ac:	2702      	movs	r7, #2
c0deb6ae:	e6fa      	b.n	c0deb4a6 <io_exchange+0x1a>
c0deb6b0:	eb09 0004 	add.w	r0, r9, r4
c0deb6b4:	8840      	ldrh	r0, [r0, #2]
c0deb6b6:	b280      	uxth	r0, r0
c0deb6b8:	b004      	add	sp, #16
c0deb6ba:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0deb6be:	b2b9      	uxth	r1, r7
c0deb6c0:	4630      	mov	r0, r6
c0deb6c2:	b004      	add	sp, #16
c0deb6c4:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0deb6c8:	f7fe bc0c 	b.w	c0de9ee4 <io_exchange_al>
c0deb6cc:	eb09 0004 	add.w	r0, r9, r4
c0deb6d0:	8840      	ldrh	r0, [r0, #2]
c0deb6d2:	3805      	subs	r0, #5
c0deb6d4:	e7ef      	b.n	c0deb6b6 <io_exchange+0x22a>
c0deb6d6:	2005      	movs	r0, #5
c0deb6d8:	f7ff fd60 	bl	c0deb19c <os_longjmp>
c0deb6dc:	2005      	movs	r0, #5
c0deb6de:	f000 fd5b 	bl	c0dec198 <os_sched_exit>
c0deb6e2:	2004      	movs	r0, #4
c0deb6e4:	f7ff fd5a 	bl	c0deb19c <os_longjmp>
c0deb6e8:	2002      	movs	r0, #2
c0deb6ea:	f7ff fd57 	bl	c0deb19c <os_longjmp>
c0deb6ee:	bf00      	nop
c0deb6f0:	00002844 	.word	0x00002844
c0deb6f4:	00002b68 	.word	0x00002b68
c0deb6f8:	00002a64 	.word	0x00002a64
c0deb6fc:	3fffffe0 	.word	0x3fffffe0
c0deb700:	00000333 	.word	0x00000333
c0deb704:	fffffd55 	.word	0xfffffd55

c0deb708 <os_io_seph_recv_and_process>:
c0deb708:	b5b0      	push	{r4, r5, r7, lr}
c0deb70a:	4604      	mov	r4, r0
c0deb70c:	f7ff fd4c 	bl	c0deb1a8 <io_seproxyhal_general_status>
c0deb710:	4d0d      	ldr	r5, [pc, #52]	@ (c0deb748 <os_io_seph_recv_and_process+0x40>)
c0deb712:	f44f 7196 	mov.w	r1, #300	@ 0x12c
c0deb716:	2200      	movs	r2, #0
c0deb718:	eb09 0005 	add.w	r0, r9, r5
c0deb71c:	f000 fd58 	bl	c0dec1d0 <io_seph_recv>
c0deb720:	f819 0005 	ldrb.w	r0, [r9, r5]
c0deb724:	2815      	cmp	r0, #21
c0deb726:	d808      	bhi.n	c0deb73a <os_io_seph_recv_and_process+0x32>
c0deb728:	2101      	movs	r1, #1
c0deb72a:	fa01 f000 	lsl.w	r0, r1, r0
c0deb72e:	4907      	ldr	r1, [pc, #28]	@ (c0deb74c <os_io_seph_recv_and_process+0x44>)
c0deb730:	4208      	tst	r0, r1
c0deb732:	d002      	beq.n	c0deb73a <os_io_seph_recv_and_process+0x32>
c0deb734:	b10c      	cbz	r4, c0deb73a <os_io_seph_recv_and_process+0x32>
c0deb736:	2000      	movs	r0, #0
c0deb738:	bdb0      	pop	{r4, r5, r7, pc}
c0deb73a:	f7ff fddd 	bl	c0deb2f8 <io_seproxyhal_handle_event>
c0deb73e:	2800      	cmp	r0, #0
c0deb740:	bf18      	it	ne
c0deb742:	2001      	movne	r0, #1
c0deb744:	bdb0      	pop	{r4, r5, r7, pc}
c0deb746:	bf00      	nop
c0deb748:	00002844 	.word	0x00002844
c0deb74c:	00207020 	.word	0x00207020

c0deb750 <OUTLINED_FUNCTION_0>:
c0deb750:	f44f 7196 	mov.w	r1, #300	@ 0x12c
c0deb754:	2200      	movs	r2, #0
c0deb756:	f000 bd3b 	b.w	c0dec1d0 <io_seph_recv>
	...

c0deb75c <io_seproxyhal_get_ep_rx_size>:
c0deb75c:	f000 007f 	and.w	r0, r0, #127	@ 0x7f
c0deb760:	2803      	cmp	r0, #3
c0deb762:	bf84      	itt	hi
c0deb764:	2000      	movhi	r0, #0
c0deb766:	4770      	bxhi	lr
c0deb768:	4902      	ldr	r1, [pc, #8]	@ (c0deb774 <io_seproxyhal_get_ep_rx_size+0x18>)
c0deb76a:	4449      	add	r1, r9
c0deb76c:	4408      	add	r0, r1
c0deb76e:	7b00      	ldrb	r0, [r0, #12]
c0deb770:	4770      	bx	lr
c0deb772:	bf00      	nop
c0deb774:	00002b68 	.word	0x00002b68

c0deb778 <io_usb_send_ep>:
c0deb778:	2aff      	cmp	r2, #255	@ 0xff
c0deb77a:	d829      	bhi.n	c0deb7d0 <io_usb_send_ep+0x58>
c0deb77c:	b57c      	push	{r2, r3, r4, r5, r6, lr}
c0deb77e:	4604      	mov	r4, r0
c0deb780:	2020      	movs	r0, #32
c0deb782:	460e      	mov	r6, r1
c0deb784:	2106      	movs	r1, #6
c0deb786:	4615      	mov	r5, r2
c0deb788:	f88d 2007 	strb.w	r2, [sp, #7]
c0deb78c:	f88d 0006 	strb.w	r0, [sp, #6]
c0deb790:	2050      	movs	r0, #80	@ 0x50
c0deb792:	f88d 0002 	strb.w	r0, [sp, #2]
c0deb796:	f044 0080 	orr.w	r0, r4, #128	@ 0x80
c0deb79a:	f88d 0005 	strb.w	r0, [sp, #5]
c0deb79e:	1cd0      	adds	r0, r2, #3
c0deb7a0:	f88d 0004 	strb.w	r0, [sp, #4]
c0deb7a4:	0a00      	lsrs	r0, r0, #8
c0deb7a6:	f88d 0003 	strb.w	r0, [sp, #3]
c0deb7aa:	f10d 0002 	add.w	r0, sp, #2
c0deb7ae:	f000 fcfd 	bl	c0dec1ac <io_seph_send>
c0deb7b2:	4630      	mov	r0, r6
c0deb7b4:	4629      	mov	r1, r5
c0deb7b6:	f000 fcf9 	bl	c0dec1ac <io_seph_send>
c0deb7ba:	4806      	ldr	r0, [pc, #24]	@ (c0deb7d4 <io_usb_send_ep+0x5c>)
c0deb7bc:	f004 017f 	and.w	r1, r4, #127	@ 0x7f
c0deb7c0:	4448      	add	r0, r9
c0deb7c2:	eb00 0041 	add.w	r0, r0, r1, lsl #1
c0deb7c6:	f44f 61fa 	mov.w	r1, #2000	@ 0x7d0
c0deb7ca:	8201      	strh	r1, [r0, #16]
c0deb7cc:	e8bd 407c 	ldmia.w	sp!, {r2, r3, r4, r5, r6, lr}
c0deb7d0:	4770      	bx	lr
c0deb7d2:	bf00      	nop
c0deb7d4:	00002b68 	.word	0x00002b68

c0deb7d8 <io_usb_send_apdu_data>:
c0deb7d8:	460a      	mov	r2, r1
c0deb7da:	4601      	mov	r1, r0
c0deb7dc:	2082      	movs	r0, #130	@ 0x82
c0deb7de:	f7ff bfcb 	b.w	c0deb778 <io_usb_send_ep>
	...

c0deb7e4 <io_usb_hid_receive>:
c0deb7e4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0deb7e8:	4615      	mov	r5, r2
c0deb7ea:	460f      	mov	r7, r1
c0deb7ec:	4682      	mov	sl, r0
c0deb7ee:	b11b      	cbz	r3, c0deb7f8 <io_usb_hid_receive+0x14>
c0deb7f0:	f8b3 8004 	ldrh.w	r8, [r3, #4]
c0deb7f4:	6818      	ldr	r0, [r3, #0]
c0deb7f6:	e003      	b.n	c0deb800 <io_usb_hid_receive+0x1c>
c0deb7f8:	4858      	ldr	r0, [pc, #352]	@ (c0deb95c <io_usb_hid_receive+0x178>)
c0deb7fa:	f44f 7882 	mov.w	r8, #260	@ 0x104
c0deb7fe:	4448      	add	r0, r9
c0deb800:	9001      	str	r0, [sp, #4]
c0deb802:	f8df b15c 	ldr.w	fp, [pc, #348]	@ c0deb960 <io_usb_hid_receive+0x17c>
c0deb806:	eb09 000b 	add.w	r0, r9, fp
c0deb80a:	4287      	cmp	r7, r0
c0deb80c:	d00e      	beq.n	c0deb82c <io_usb_hid_receive+0x48>
c0deb80e:	eb09 040b 	add.w	r4, r9, fp
c0deb812:	2140      	movs	r1, #64	@ 0x40
c0deb814:	2640      	movs	r6, #64	@ 0x40
c0deb816:	4620      	mov	r0, r4
c0deb818:	f000 febc 	bl	c0dec594 <__aeabi_memclr>
c0deb81c:	2d40      	cmp	r5, #64	@ 0x40
c0deb81e:	bf38      	it	cc
c0deb820:	462e      	movcc	r6, r5
c0deb822:	4620      	mov	r0, r4
c0deb824:	4639      	mov	r1, r7
c0deb826:	4632      	mov	r2, r6
c0deb828:	f000 feb9 	bl	c0dec59e <__aeabi_memmove>
c0deb82c:	eb09 000b 	add.w	r0, r9, fp
c0deb830:	7880      	ldrb	r0, [r0, #2]
c0deb832:	b348      	cbz	r0, c0deb888 <io_usb_hid_receive+0xa4>
c0deb834:	2801      	cmp	r0, #1
c0deb836:	d030      	beq.n	c0deb89a <io_usb_hid_receive+0xb6>
c0deb838:	2802      	cmp	r0, #2
c0deb83a:	d034      	beq.n	c0deb8a6 <io_usb_hid_receive+0xc2>
c0deb83c:	2805      	cmp	r0, #5
c0deb83e:	f040 8083 	bne.w	c0deb948 <io_usb_hid_receive+0x164>
c0deb842:	4c48      	ldr	r4, [pc, #288]	@ (c0deb964 <io_usb_hid_receive+0x180>)
c0deb844:	eb09 010b 	add.w	r1, r9, fp
c0deb848:	f859 0004 	ldr.w	r0, [r9, r4]
c0deb84c:	78ca      	ldrb	r2, [r1, #3]
c0deb84e:	7909      	ldrb	r1, [r1, #4]
c0deb850:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0deb854:	4288      	cmp	r0, r1
c0deb856:	d12a      	bne.n	c0deb8ae <io_usb_hid_receive+0xca>
c0deb858:	f859 0004 	ldr.w	r0, [r9, r4]
c0deb85c:	b3a0      	cbz	r0, c0deb8c8 <io_usb_hid_receive+0xe4>
c0deb85e:	4942      	ldr	r1, [pc, #264]	@ (c0deb968 <io_usb_hid_receive+0x184>)
c0deb860:	1f68      	subs	r0, r5, #5
c0deb862:	b283      	uxth	r3, r0
c0deb864:	f859 2001 	ldr.w	r2, [r9, r1]
c0deb868:	429a      	cmp	r2, r3
c0deb86a:	bf38      	it	cc
c0deb86c:	f859 0001 	ldrcc.w	r0, [r9, r1]
c0deb870:	b281      	uxth	r1, r0
c0deb872:	293b      	cmp	r1, #59	@ 0x3b
c0deb874:	bf28      	it	cs
c0deb876:	203b      	movcs	r0, #59	@ 0x3b
c0deb878:	b285      	uxth	r5, r0
c0deb87a:	483c      	ldr	r0, [pc, #240]	@ (c0deb96c <io_usb_hid_receive+0x188>)
c0deb87c:	f859 6000 	ldr.w	r6, [r9, r0]
c0deb880:	eb09 000b 	add.w	r0, r9, fp
c0deb884:	1d41      	adds	r1, r0, #5
c0deb886:	e04c      	b.n	c0deb922 <io_usb_hid_receive+0x13e>
c0deb888:	eb09 000b 	add.w	r0, r9, fp
c0deb88c:	2100      	movs	r1, #0
c0deb88e:	f800 1f03 	strb.w	r1, [r0, #3]!
c0deb892:	70c1      	strb	r1, [r0, #3]
c0deb894:	7081      	strb	r1, [r0, #2]
c0deb896:	7041      	strb	r1, [r0, #1]
c0deb898:	e005      	b.n	c0deb8a6 <io_usb_hid_receive+0xc2>
c0deb89a:	eb09 000b 	add.w	r0, r9, fp
c0deb89e:	2104      	movs	r1, #4
c0deb8a0:	3003      	adds	r0, #3
c0deb8a2:	f7ff fc68 	bl	c0deb176 <cx_rng_no_throw>
c0deb8a6:	eb09 000b 	add.w	r0, r9, fp
c0deb8aa:	2140      	movs	r1, #64	@ 0x40
c0deb8ac:	47d0      	blx	sl
c0deb8ae:	2000      	movs	r0, #0
c0deb8b0:	492c      	ldr	r1, [pc, #176]	@ (c0deb964 <io_usb_hid_receive+0x180>)
c0deb8b2:	2200      	movs	r2, #0
c0deb8b4:	f849 2001 	str.w	r2, [r9, r1]
c0deb8b8:	492c      	ldr	r1, [pc, #176]	@ (c0deb96c <io_usb_hid_receive+0x188>)
c0deb8ba:	f849 2001 	str.w	r2, [r9, r1]
c0deb8be:	492a      	ldr	r1, [pc, #168]	@ (c0deb968 <io_usb_hid_receive+0x184>)
c0deb8c0:	f849 2001 	str.w	r2, [r9, r1]
c0deb8c4:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0deb8c8:	eb09 000b 	add.w	r0, r9, fp
c0deb8cc:	7941      	ldrb	r1, [r0, #5]
c0deb8ce:	7980      	ldrb	r0, [r0, #6]
c0deb8d0:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
c0deb8d4:	4826      	ldr	r0, [pc, #152]	@ (c0deb970 <io_usb_hid_receive+0x18c>)
c0deb8d6:	f849 1000 	str.w	r1, [r9, r0]
c0deb8da:	f859 1000 	ldr.w	r1, [r9, r0]
c0deb8de:	4541      	cmp	r1, r8
c0deb8e0:	d8e5      	bhi.n	c0deb8ae <io_usb_hid_receive+0xca>
c0deb8e2:	f859 1000 	ldr.w	r1, [r9, r0]
c0deb8e6:	4820      	ldr	r0, [pc, #128]	@ (c0deb968 <io_usb_hid_receive+0x184>)
c0deb8e8:	eb09 020b 	add.w	r2, r9, fp
c0deb8ec:	f849 1000 	str.w	r1, [r9, r0]
c0deb8f0:	f819 100b 	ldrb.w	r1, [r9, fp]
c0deb8f4:	7852      	ldrb	r2, [r2, #1]
c0deb8f6:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0deb8fa:	4a1e      	ldr	r2, [pc, #120]	@ (c0deb974 <io_usb_hid_receive+0x190>)
c0deb8fc:	f849 1002 	str.w	r1, [r9, r2]
c0deb900:	1fe9      	subs	r1, r5, #7
c0deb902:	f859 2000 	ldr.w	r2, [r9, r0]
c0deb906:	b28b      	uxth	r3, r1
c0deb908:	429a      	cmp	r2, r3
c0deb90a:	bf38      	it	cc
c0deb90c:	f859 1000 	ldrcc.w	r1, [r9, r0]
c0deb910:	b288      	uxth	r0, r1
c0deb912:	2839      	cmp	r0, #57	@ 0x39
c0deb914:	bf28      	it	cs
c0deb916:	2139      	movcs	r1, #57	@ 0x39
c0deb918:	9e01      	ldr	r6, [sp, #4]
c0deb91a:	eb09 000b 	add.w	r0, r9, fp
c0deb91e:	b28d      	uxth	r5, r1
c0deb920:	1dc1      	adds	r1, r0, #7
c0deb922:	4630      	mov	r0, r6
c0deb924:	462a      	mov	r2, r5
c0deb926:	f000 fe3a 	bl	c0dec59e <__aeabi_memmove>
c0deb92a:	480f      	ldr	r0, [pc, #60]	@ (c0deb968 <io_usb_hid_receive+0x184>)
c0deb92c:	f859 1000 	ldr.w	r1, [r9, r0]
c0deb930:	1b49      	subs	r1, r1, r5
c0deb932:	f849 1000 	str.w	r1, [r9, r0]
c0deb936:	490d      	ldr	r1, [pc, #52]	@ (c0deb96c <io_usb_hid_receive+0x188>)
c0deb938:	1970      	adds	r0, r6, r5
c0deb93a:	f849 0001 	str.w	r0, [r9, r1]
c0deb93e:	f859 0004 	ldr.w	r0, [r9, r4]
c0deb942:	3001      	adds	r0, #1
c0deb944:	f849 0004 	str.w	r0, [r9, r4]
c0deb948:	4807      	ldr	r0, [pc, #28]	@ (c0deb968 <io_usb_hid_receive+0x184>)
c0deb94a:	f859 0000 	ldr.w	r0, [r9, r0]
c0deb94e:	b110      	cbz	r0, c0deb956 <io_usb_hid_receive+0x172>
c0deb950:	2001      	movs	r0, #1
c0deb952:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0deb956:	2002      	movs	r0, #2
c0deb958:	e7aa      	b.n	c0deb8b0 <io_usb_hid_receive+0xcc>
c0deb95a:	bf00      	nop
c0deb95c:	00002a64 	.word	0x00002a64
c0deb960:	00002b84 	.word	0x00002b84
c0deb964:	00002bc4 	.word	0x00002bc4
c0deb968:	00002bcc 	.word	0x00002bcc
c0deb96c:	00002bd0 	.word	0x00002bd0
c0deb970:	00002bc8 	.word	0x00002bc8
c0deb974:	00002bd4 	.word	0x00002bd4

c0deb978 <io_usb_hid_init>:
c0deb978:	4805      	ldr	r0, [pc, #20]	@ (c0deb990 <io_usb_hid_init+0x18>)
c0deb97a:	2100      	movs	r1, #0
c0deb97c:	f849 1000 	str.w	r1, [r9, r0]
c0deb980:	4804      	ldr	r0, [pc, #16]	@ (c0deb994 <io_usb_hid_init+0x1c>)
c0deb982:	f849 1000 	str.w	r1, [r9, r0]
c0deb986:	4804      	ldr	r0, [pc, #16]	@ (c0deb998 <io_usb_hid_init+0x20>)
c0deb988:	f849 1000 	str.w	r1, [r9, r0]
c0deb98c:	4770      	bx	lr
c0deb98e:	bf00      	nop
c0deb990:	00002bc4 	.word	0x00002bc4
c0deb994:	00002bd0 	.word	0x00002bd0
c0deb998:	00002bcc 	.word	0x00002bcc

c0deb99c <io_usb_hid_sent>:
c0deb99c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0deb9a0:	f8df a0cc 	ldr.w	sl, [pc, #204]	@ c0deba70 <io_usb_hid_sent+0xd4>
c0deb9a4:	4f33      	ldr	r7, [pc, #204]	@ (c0deba74 <io_usb_hid_sent+0xd8>)
c0deb9a6:	f859 400a 	ldr.w	r4, [r9, sl]
c0deb9aa:	f859 1007 	ldr.w	r1, [r9, r7]
c0deb9ae:	b351      	cbz	r1, c0deba06 <io_usb_hid_sent+0x6a>
c0deb9b0:	b34c      	cbz	r4, c0deba06 <io_usb_hid_sent+0x6a>
c0deb9b2:	f8df 80cc 	ldr.w	r8, [pc, #204]	@ c0deba80 <io_usb_hid_sent+0xe4>
c0deb9b6:	4683      	mov	fp, r0
c0deb9b8:	213b      	movs	r1, #59	@ 0x3b
c0deb9ba:	eb09 0508 	add.w	r5, r9, r8
c0deb9be:	1d68      	adds	r0, r5, #5
c0deb9c0:	f000 fde8 	bl	c0dec594 <__aeabi_memclr>
c0deb9c4:	482f      	ldr	r0, [pc, #188]	@ (c0deba84 <io_usb_hid_sent+0xe8>)
c0deb9c6:	4e2c      	ldr	r6, [pc, #176]	@ (c0deba78 <io_usb_hid_sent+0xdc>)
c0deb9c8:	f859 1000 	ldr.w	r1, [r9, r0]
c0deb9cc:	0a09      	lsrs	r1, r1, #8
c0deb9ce:	f809 1008 	strb.w	r1, [r9, r8]
c0deb9d2:	2105      	movs	r1, #5
c0deb9d4:	70a9      	strb	r1, [r5, #2]
c0deb9d6:	f859 0000 	ldr.w	r0, [r9, r0]
c0deb9da:	7068      	strb	r0, [r5, #1]
c0deb9dc:	f859 0006 	ldr.w	r0, [r9, r6]
c0deb9e0:	0a00      	lsrs	r0, r0, #8
c0deb9e2:	70e8      	strb	r0, [r5, #3]
c0deb9e4:	f859 0006 	ldr.w	r0, [r9, r6]
c0deb9e8:	7128      	strb	r0, [r5, #4]
c0deb9ea:	f859 1006 	ldr.w	r1, [r9, r6]
c0deb9ee:	f859 0007 	ldr.w	r0, [r9, r7]
c0deb9f2:	b1a9      	cbz	r1, c0deba20 <io_usb_hid_sent+0x84>
c0deb9f4:	283b      	cmp	r0, #59	@ 0x3b
c0deb9f6:	eb09 0008 	add.w	r0, r9, r8
c0deb9fa:	bf94      	ite	ls
c0deb9fc:	f859 5007 	ldrls.w	r5, [r9, r7]
c0deba00:	253b      	movhi	r5, #59	@ 0x3b
c0deba02:	3005      	adds	r0, #5
c0deba04:	e01b      	b.n	c0deba3e <io_usb_hid_sent+0xa2>
c0deba06:	481c      	ldr	r0, [pc, #112]	@ (c0deba78 <io_usb_hid_sent+0xdc>)
c0deba08:	2100      	movs	r1, #0
c0deba0a:	f849 1000 	str.w	r1, [r9, r0]
c0deba0e:	481b      	ldr	r0, [pc, #108]	@ (c0deba7c <io_usb_hid_sent+0xe0>)
c0deba10:	f849 100a 	str.w	r1, [r9, sl]
c0deba14:	f809 1000 	strb.w	r1, [r9, r0]
c0deba18:	f849 1007 	str.w	r1, [r9, r7]
c0deba1c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0deba20:	2839      	cmp	r0, #57	@ 0x39
c0deba22:	bf94      	ite	ls
c0deba24:	f859 5007 	ldrls.w	r5, [r9, r7]
c0deba28:	2539      	movhi	r5, #57	@ 0x39
c0deba2a:	f859 1007 	ldr.w	r1, [r9, r7]
c0deba2e:	eb09 0008 	add.w	r0, r9, r8
c0deba32:	0a09      	lsrs	r1, r1, #8
c0deba34:	7141      	strb	r1, [r0, #5]
c0deba36:	f859 1007 	ldr.w	r1, [r9, r7]
c0deba3a:	7181      	strb	r1, [r0, #6]
c0deba3c:	3007      	adds	r0, #7
c0deba3e:	4621      	mov	r1, r4
c0deba40:	462a      	mov	r2, r5
c0deba42:	f000 fdac 	bl	c0dec59e <__aeabi_memmove>
c0deba46:	f859 0007 	ldr.w	r0, [r9, r7]
c0deba4a:	465a      	mov	r2, fp
c0deba4c:	2140      	movs	r1, #64	@ 0x40
c0deba4e:	1b40      	subs	r0, r0, r5
c0deba50:	f849 0007 	str.w	r0, [r9, r7]
c0deba54:	1960      	adds	r0, r4, r5
c0deba56:	f849 000a 	str.w	r0, [r9, sl]
c0deba5a:	f859 0006 	ldr.w	r0, [r9, r6]
c0deba5e:	3001      	adds	r0, #1
c0deba60:	f849 0006 	str.w	r0, [r9, r6]
c0deba64:	eb09 0008 	add.w	r0, r9, r8
c0deba68:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0deba6c:	4710      	bx	r2
c0deba6e:	bf00      	nop
c0deba70:	00002bd0 	.word	0x00002bd0
c0deba74:	00002bcc 	.word	0x00002bcc
c0deba78:	00002bc4 	.word	0x00002bc4
c0deba7c:	00002b68 	.word	0x00002b68
c0deba80:	00002b84 	.word	0x00002b84
c0deba84:	00002bd4 	.word	0x00002bd4

c0deba88 <io_usb_hid_send>:
c0deba88:	b189      	cbz	r1, c0debaae <io_usb_hid_send+0x26>
c0deba8a:	b510      	push	{r4, lr}
c0deba8c:	4b08      	ldr	r3, [pc, #32]	@ (c0debab0 <io_usb_hid_send+0x28>)
c0deba8e:	2400      	movs	r4, #0
c0deba90:	f849 4003 	str.w	r4, [r9, r3]
c0deba94:	4b07      	ldr	r3, [pc, #28]	@ (c0debab4 <io_usb_hid_send+0x2c>)
c0deba96:	f849 1003 	str.w	r1, [r9, r3]
c0deba9a:	4b07      	ldr	r3, [pc, #28]	@ (c0debab8 <io_usb_hid_send+0x30>)
c0deba9c:	f849 2003 	str.w	r2, [r9, r3]
c0debaa0:	4a06      	ldr	r2, [pc, #24]	@ (c0debabc <io_usb_hid_send+0x34>)
c0debaa2:	f849 1002 	str.w	r1, [r9, r2]
c0debaa6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0debaaa:	f7ff bf77 	b.w	c0deb99c <io_usb_hid_sent>
c0debaae:	4770      	bx	lr
c0debab0:	00002bc4 	.word	0x00002bc4
c0debab4:	00002bcc 	.word	0x00002bcc
c0debab8:	00002bd0 	.word	0x00002bd0
c0debabc:	00002bc8 	.word	0x00002bc8

c0debac0 <snprintf>:
c0debac0:	b081      	sub	sp, #4
c0debac2:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0debac6:	b087      	sub	sp, #28
c0debac8:	2800      	cmp	r0, #0
c0debaca:	930f      	str	r3, [sp, #60]	@ 0x3c
c0debacc:	f000 817a 	beq.w	c0debdc4 <snprintf+0x304>
c0debad0:	460d      	mov	r5, r1
c0debad2:	2900      	cmp	r1, #0
c0debad4:	f000 8176 	beq.w	c0debdc4 <snprintf+0x304>
c0debad8:	4629      	mov	r1, r5
c0debada:	4616      	mov	r6, r2
c0debadc:	4604      	mov	r4, r0
c0debade:	f000 fd59 	bl	c0dec594 <__aeabi_memclr>
c0debae2:	f1b5 0801 	subs.w	r8, r5, #1
c0debae6:	f000 816d 	beq.w	c0debdc4 <snprintf+0x304>
c0debaea:	a80f      	add	r0, sp, #60	@ 0x3c
c0debaec:	9002      	str	r0, [sp, #8]
c0debaee:	7830      	ldrb	r0, [r6, #0]
c0debaf0:	2800      	cmp	r0, #0
c0debaf2:	f000 8167 	beq.w	c0debdc4 <snprintf+0x304>
c0debaf6:	2700      	movs	r7, #0
c0debaf8:	b128      	cbz	r0, c0debb06 <snprintf+0x46>
c0debafa:	2825      	cmp	r0, #37	@ 0x25
c0debafc:	d003      	beq.n	c0debb06 <snprintf+0x46>
c0debafe:	19f0      	adds	r0, r6, r7
c0debb00:	3701      	adds	r7, #1
c0debb02:	7840      	ldrb	r0, [r0, #1]
c0debb04:	e7f8      	b.n	c0debaf8 <snprintf+0x38>
c0debb06:	4547      	cmp	r7, r8
c0debb08:	bf28      	it	cs
c0debb0a:	4647      	movcs	r7, r8
c0debb0c:	4620      	mov	r0, r4
c0debb0e:	4631      	mov	r1, r6
c0debb10:	463a      	mov	r2, r7
c0debb12:	f000 fd44 	bl	c0dec59e <__aeabi_memmove>
c0debb16:	ebb8 0807 	subs.w	r8, r8, r7
c0debb1a:	f000 8153 	beq.w	c0debdc4 <snprintf+0x304>
c0debb1e:	5df1      	ldrb	r1, [r6, r7]
c0debb20:	19f0      	adds	r0, r6, r7
c0debb22:	443c      	add	r4, r7
c0debb24:	4606      	mov	r6, r0
c0debb26:	2925      	cmp	r1, #37	@ 0x25
c0debb28:	d1e1      	bne.n	c0debaee <snprintf+0x2e>
c0debb2a:	1c41      	adds	r1, r0, #1
c0debb2c:	f04f 0b00 	mov.w	fp, #0
c0debb30:	f04f 0e20 	mov.w	lr, #32
c0debb34:	2500      	movs	r5, #0
c0debb36:	2600      	movs	r6, #0
c0debb38:	3101      	adds	r1, #1
c0debb3a:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0debb3e:	4632      	mov	r2, r6
c0debb40:	3101      	adds	r1, #1
c0debb42:	2600      	movs	r6, #0
c0debb44:	2b2d      	cmp	r3, #45	@ 0x2d
c0debb46:	d0f8      	beq.n	c0debb3a <snprintf+0x7a>
c0debb48:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0debb4c:	2e0a      	cmp	r6, #10
c0debb4e:	d313      	bcc.n	c0debb78 <snprintf+0xb8>
c0debb50:	2b25      	cmp	r3, #37	@ 0x25
c0debb52:	d046      	beq.n	c0debbe2 <snprintf+0x122>
c0debb54:	2b2a      	cmp	r3, #42	@ 0x2a
c0debb56:	d01f      	beq.n	c0debb98 <snprintf+0xd8>
c0debb58:	2b2e      	cmp	r3, #46	@ 0x2e
c0debb5a:	d129      	bne.n	c0debbb0 <snprintf+0xf0>
c0debb5c:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0debb60:	2a2a      	cmp	r2, #42	@ 0x2a
c0debb62:	d13c      	bne.n	c0debbde <snprintf+0x11e>
c0debb64:	780a      	ldrb	r2, [r1, #0]
c0debb66:	2a48      	cmp	r2, #72	@ 0x48
c0debb68:	d003      	beq.n	c0debb72 <snprintf+0xb2>
c0debb6a:	2a73      	cmp	r2, #115	@ 0x73
c0debb6c:	d001      	beq.n	c0debb72 <snprintf+0xb2>
c0debb6e:	2a68      	cmp	r2, #104	@ 0x68
c0debb70:	d135      	bne.n	c0debbde <snprintf+0x11e>
c0debb72:	9a02      	ldr	r2, [sp, #8]
c0debb74:	2601      	movs	r6, #1
c0debb76:	e017      	b.n	c0debba8 <snprintf+0xe8>
c0debb78:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0debb7c:	ea56 060b 	orrs.w	r6, r6, fp
c0debb80:	bf08      	it	eq
c0debb82:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0debb86:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0debb8a:	3901      	subs	r1, #1
c0debb8c:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0debb90:	4616      	mov	r6, r2
c0debb92:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0debb96:	e7cf      	b.n	c0debb38 <snprintf+0x78>
c0debb98:	460b      	mov	r3, r1
c0debb9a:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0debb9e:	2a73      	cmp	r2, #115	@ 0x73
c0debba0:	d11d      	bne.n	c0debbde <snprintf+0x11e>
c0debba2:	9a02      	ldr	r2, [sp, #8]
c0debba4:	2602      	movs	r6, #2
c0debba6:	4619      	mov	r1, r3
c0debba8:	1d13      	adds	r3, r2, #4
c0debbaa:	9302      	str	r3, [sp, #8]
c0debbac:	6815      	ldr	r5, [r2, #0]
c0debbae:	e7c3      	b.n	c0debb38 <snprintf+0x78>
c0debbb0:	2b48      	cmp	r3, #72	@ 0x48
c0debbb2:	d018      	beq.n	c0debbe6 <snprintf+0x126>
c0debbb4:	2b58      	cmp	r3, #88	@ 0x58
c0debbb6:	d019      	beq.n	c0debbec <snprintf+0x12c>
c0debbb8:	2b63      	cmp	r3, #99	@ 0x63
c0debbba:	d020      	beq.n	c0debbfe <snprintf+0x13e>
c0debbbc:	2b64      	cmp	r3, #100	@ 0x64
c0debbbe:	d02a      	beq.n	c0debc16 <snprintf+0x156>
c0debbc0:	2b68      	cmp	r3, #104	@ 0x68
c0debbc2:	d036      	beq.n	c0debc32 <snprintf+0x172>
c0debbc4:	2b70      	cmp	r3, #112	@ 0x70
c0debbc6:	d006      	beq.n	c0debbd6 <snprintf+0x116>
c0debbc8:	2b73      	cmp	r3, #115	@ 0x73
c0debbca:	d037      	beq.n	c0debc3c <snprintf+0x17c>
c0debbcc:	2b75      	cmp	r3, #117	@ 0x75
c0debbce:	f000 8081 	beq.w	c0debcd4 <snprintf+0x214>
c0debbd2:	2b78      	cmp	r3, #120	@ 0x78
c0debbd4:	d103      	bne.n	c0debbde <snprintf+0x11e>
c0debbd6:	9400      	str	r4, [sp, #0]
c0debbd8:	f04f 0c00 	mov.w	ip, #0
c0debbdc:	e009      	b.n	c0debbf2 <snprintf+0x132>
c0debbde:	1e4e      	subs	r6, r1, #1
c0debbe0:	e785      	b.n	c0debaee <snprintf+0x2e>
c0debbe2:	2025      	movs	r0, #37	@ 0x25
c0debbe4:	e00f      	b.n	c0debc06 <snprintf+0x146>
c0debbe6:	487b      	ldr	r0, [pc, #492]	@ (c0debdd4 <snprintf+0x314>)
c0debbe8:	4478      	add	r0, pc
c0debbea:	e024      	b.n	c0debc36 <snprintf+0x176>
c0debbec:	f04f 0c01 	mov.w	ip, #1
c0debbf0:	9400      	str	r4, [sp, #0]
c0debbf2:	9a02      	ldr	r2, [sp, #8]
c0debbf4:	2400      	movs	r4, #0
c0debbf6:	1d13      	adds	r3, r2, #4
c0debbf8:	9302      	str	r3, [sp, #8]
c0debbfa:	2310      	movs	r3, #16
c0debbfc:	e072      	b.n	c0debce4 <snprintf+0x224>
c0debbfe:	9802      	ldr	r0, [sp, #8]
c0debc00:	1d02      	adds	r2, r0, #4
c0debc02:	9202      	str	r2, [sp, #8]
c0debc04:	6800      	ldr	r0, [r0, #0]
c0debc06:	1e4e      	subs	r6, r1, #1
c0debc08:	f804 0b01 	strb.w	r0, [r4], #1
c0debc0c:	f1b8 0801 	subs.w	r8, r8, #1
c0debc10:	f47f af6d 	bne.w	c0debaee <snprintf+0x2e>
c0debc14:	e0d6      	b.n	c0debdc4 <snprintf+0x304>
c0debc16:	9a02      	ldr	r2, [sp, #8]
c0debc18:	9400      	str	r4, [sp, #0]
c0debc1a:	1d13      	adds	r3, r2, #4
c0debc1c:	9302      	str	r3, [sp, #8]
c0debc1e:	6813      	ldr	r3, [r2, #0]
c0debc20:	2b00      	cmp	r3, #0
c0debc22:	461a      	mov	r2, r3
c0debc24:	d500      	bpl.n	c0debc28 <snprintf+0x168>
c0debc26:	425a      	negs	r2, r3
c0debc28:	0fdc      	lsrs	r4, r3, #31
c0debc2a:	f04f 0c00 	mov.w	ip, #0
c0debc2e:	230a      	movs	r3, #10
c0debc30:	e059      	b.n	c0debce6 <snprintf+0x226>
c0debc32:	4869      	ldr	r0, [pc, #420]	@ (c0debdd8 <snprintf+0x318>)
c0debc34:	4478      	add	r0, pc
c0debc36:	f04f 0c01 	mov.w	ip, #1
c0debc3a:	e003      	b.n	c0debc44 <snprintf+0x184>
c0debc3c:	4864      	ldr	r0, [pc, #400]	@ (c0debdd0 <snprintf+0x310>)
c0debc3e:	f04f 0c00 	mov.w	ip, #0
c0debc42:	4478      	add	r0, pc
c0debc44:	9b02      	ldr	r3, [sp, #8]
c0debc46:	b2d2      	uxtb	r2, r2
c0debc48:	1d1e      	adds	r6, r3, #4
c0debc4a:	9602      	str	r6, [sp, #8]
c0debc4c:	1e4e      	subs	r6, r1, #1
c0debc4e:	6819      	ldr	r1, [r3, #0]
c0debc50:	2a02      	cmp	r2, #2
c0debc52:	f000 80a7 	beq.w	c0debda4 <snprintf+0x2e4>
c0debc56:	2a01      	cmp	r2, #1
c0debc58:	d007      	beq.n	c0debc6a <snprintf+0x1aa>
c0debc5a:	463d      	mov	r5, r7
c0debc5c:	b92a      	cbnz	r2, c0debc6a <snprintf+0x1aa>
c0debc5e:	2200      	movs	r2, #0
c0debc60:	5c8b      	ldrb	r3, [r1, r2]
c0debc62:	3201      	adds	r2, #1
c0debc64:	2b00      	cmp	r3, #0
c0debc66:	d1fb      	bne.n	c0debc60 <snprintf+0x1a0>
c0debc68:	1e55      	subs	r5, r2, #1
c0debc6a:	f1bc 0f00 	cmp.w	ip, #0
c0debc6e:	d016      	beq.n	c0debc9e <snprintf+0x1de>
c0debc70:	2d00      	cmp	r5, #0
c0debc72:	f43f af3c 	beq.w	c0debaee <snprintf+0x2e>
c0debc76:	f1b8 0f02 	cmp.w	r8, #2
c0debc7a:	f0c0 80a3 	bcc.w	c0debdc4 <snprintf+0x304>
c0debc7e:	780a      	ldrb	r2, [r1, #0]
c0debc80:	0913      	lsrs	r3, r2, #4
c0debc82:	f002 020f 	and.w	r2, r2, #15
c0debc86:	5cc3      	ldrb	r3, [r0, r3]
c0debc88:	f1b8 0802 	subs.w	r8, r8, #2
c0debc8c:	7023      	strb	r3, [r4, #0]
c0debc8e:	5c82      	ldrb	r2, [r0, r2]
c0debc90:	7062      	strb	r2, [r4, #1]
c0debc92:	f000 8097 	beq.w	c0debdc4 <snprintf+0x304>
c0debc96:	3101      	adds	r1, #1
c0debc98:	3d01      	subs	r5, #1
c0debc9a:	3402      	adds	r4, #2
c0debc9c:	e7e8      	b.n	c0debc70 <snprintf+0x1b0>
c0debc9e:	4545      	cmp	r5, r8
c0debca0:	bf28      	it	cs
c0debca2:	4645      	movcs	r5, r8
c0debca4:	4620      	mov	r0, r4
c0debca6:	462a      	mov	r2, r5
c0debca8:	f000 fc79 	bl	c0dec59e <__aeabi_memmove>
c0debcac:	ebb8 0805 	subs.w	r8, r8, r5
c0debcb0:	f000 8088 	beq.w	c0debdc4 <snprintf+0x304>
c0debcb4:	462f      	mov	r7, r5
c0debcb6:	442c      	add	r4, r5
c0debcb8:	45bb      	cmp	fp, r7
c0debcba:	f67f af18 	bls.w	c0debaee <snprintf+0x2e>
c0debcbe:	ebab 0507 	sub.w	r5, fp, r7
c0debcc2:	4620      	mov	r0, r4
c0debcc4:	4545      	cmp	r5, r8
c0debcc6:	bf28      	it	cs
c0debcc8:	4645      	movcs	r5, r8
c0debcca:	4629      	mov	r1, r5
c0debccc:	2220      	movs	r2, #32
c0debcce:	f000 fc68 	bl	c0dec5a2 <__aeabi_memset>
c0debcd2:	e061      	b.n	c0debd98 <snprintf+0x2d8>
c0debcd4:	9a02      	ldr	r2, [sp, #8]
c0debcd6:	9400      	str	r4, [sp, #0]
c0debcd8:	2400      	movs	r4, #0
c0debcda:	f04f 0c00 	mov.w	ip, #0
c0debcde:	1d13      	adds	r3, r2, #4
c0debce0:	9302      	str	r3, [sp, #8]
c0debce2:	230a      	movs	r3, #10
c0debce4:	6812      	ldr	r2, [r2, #0]
c0debce6:	483d      	ldr	r0, [pc, #244]	@ (c0debddc <snprintf+0x31c>)
c0debce8:	1e4e      	subs	r6, r1, #1
c0debcea:	f04f 0a01 	mov.w	sl, #1
c0debcee:	4478      	add	r0, pc
c0debcf0:	9001      	str	r0, [sp, #4]
c0debcf2:	fba3 570a 	umull	r5, r7, r3, sl
c0debcf6:	2f00      	cmp	r7, #0
c0debcf8:	bf18      	it	ne
c0debcfa:	2701      	movne	r7, #1
c0debcfc:	4295      	cmp	r5, r2
c0debcfe:	d804      	bhi.n	c0debd0a <snprintf+0x24a>
c0debd00:	b91f      	cbnz	r7, c0debd0a <snprintf+0x24a>
c0debd02:	f1ab 0b01 	sub.w	fp, fp, #1
c0debd06:	46aa      	mov	sl, r5
c0debd08:	e7f3      	b.n	c0debcf2 <snprintf+0x232>
c0debd0a:	2c00      	cmp	r4, #0
c0debd0c:	4627      	mov	r7, r4
c0debd0e:	f04f 0500 	mov.w	r5, #0
c0debd12:	bf18      	it	ne
c0debd14:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0debd18:	d00d      	beq.n	c0debd36 <snprintf+0x276>
c0debd1a:	4660      	mov	r0, ip
c0debd1c:	fa5f fc8e 	uxtb.w	ip, lr
c0debd20:	a903      	add	r1, sp, #12
c0debd22:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0debd26:	4684      	mov	ip, r0
c0debd28:	d106      	bne.n	c0debd38 <snprintf+0x278>
c0debd2a:	202d      	movs	r0, #45	@ 0x2d
c0debd2c:	2400      	movs	r4, #0
c0debd2e:	2501      	movs	r5, #1
c0debd30:	f88d 000c 	strb.w	r0, [sp, #12]
c0debd34:	e000      	b.n	c0debd38 <snprintf+0x278>
c0debd36:	a903      	add	r1, sp, #12
c0debd38:	eb07 000b 	add.w	r0, r7, fp
c0debd3c:	3802      	subs	r0, #2
c0debd3e:	280d      	cmp	r0, #13
c0debd40:	d808      	bhi.n	c0debd54 <snprintf+0x294>
c0debd42:	f1c7 0701 	rsb	r7, r7, #1
c0debd46:	45bb      	cmp	fp, r7
c0debd48:	d004      	beq.n	c0debd54 <snprintf+0x294>
c0debd4a:	f801 e005 	strb.w	lr, [r1, r5]
c0debd4e:	3701      	adds	r7, #1
c0debd50:	3501      	adds	r5, #1
c0debd52:	e7f8      	b.n	c0debd46 <snprintf+0x286>
c0debd54:	9f01      	ldr	r7, [sp, #4]
c0debd56:	b114      	cbz	r4, c0debd5e <snprintf+0x29e>
c0debd58:	202d      	movs	r0, #45	@ 0x2d
c0debd5a:	5548      	strb	r0, [r1, r5]
c0debd5c:	3501      	adds	r5, #1
c0debd5e:	4820      	ldr	r0, [pc, #128]	@ (c0debde0 <snprintf+0x320>)
c0debd60:	f1bc 0f00 	cmp.w	ip, #0
c0debd64:	4478      	add	r0, pc
c0debd66:	bf08      	it	eq
c0debd68:	4638      	moveq	r0, r7
c0debd6a:	f1ba 0f00 	cmp.w	sl, #0
c0debd6e:	d00b      	beq.n	c0debd88 <snprintf+0x2c8>
c0debd70:	fbb2 f7fa 	udiv	r7, r2, sl
c0debd74:	fbba faf3 	udiv	sl, sl, r3
c0debd78:	fbb7 f4f3 	udiv	r4, r7, r3
c0debd7c:	fb04 7413 	mls	r4, r4, r3, r7
c0debd80:	5d04      	ldrb	r4, [r0, r4]
c0debd82:	554c      	strb	r4, [r1, r5]
c0debd84:	3501      	adds	r5, #1
c0debd86:	e7f0      	b.n	c0debd6a <snprintf+0x2aa>
c0debd88:	4545      	cmp	r5, r8
c0debd8a:	bf28      	it	cs
c0debd8c:	4645      	movcs	r5, r8
c0debd8e:	9c00      	ldr	r4, [sp, #0]
c0debd90:	462a      	mov	r2, r5
c0debd92:	4620      	mov	r0, r4
c0debd94:	f000 fc03 	bl	c0dec59e <__aeabi_memmove>
c0debd98:	ebb8 0805 	subs.w	r8, r8, r5
c0debd9c:	442c      	add	r4, r5
c0debd9e:	f47f aea6 	bne.w	c0debaee <snprintf+0x2e>
c0debda2:	e00f      	b.n	c0debdc4 <snprintf+0x304>
c0debda4:	7808      	ldrb	r0, [r1, #0]
c0debda6:	2800      	cmp	r0, #0
c0debda8:	f47f aea1 	bne.w	c0debaee <snprintf+0x2e>
c0debdac:	4545      	cmp	r5, r8
c0debdae:	bf28      	it	cs
c0debdb0:	4645      	movcs	r5, r8
c0debdb2:	4620      	mov	r0, r4
c0debdb4:	4629      	mov	r1, r5
c0debdb6:	2220      	movs	r2, #32
c0debdb8:	f000 fbf3 	bl	c0dec5a2 <__aeabi_memset>
c0debdbc:	ebb8 0805 	subs.w	r8, r8, r5
c0debdc0:	f47f af79 	bne.w	c0debcb6 <snprintf+0x1f6>
c0debdc4:	2000      	movs	r0, #0
c0debdc6:	b007      	add	sp, #28
c0debdc8:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0debdcc:	b001      	add	sp, #4
c0debdce:	4770      	bx	lr
c0debdd0:	00002935 	.word	0x00002935
c0debdd4:	0000299f 	.word	0x0000299f
c0debdd8:	00002943 	.word	0x00002943
c0debddc:	00002889 	.word	0x00002889
c0debde0:	00002823 	.word	0x00002823

c0debde4 <pic_internal>:
c0debde4:	467a      	mov	r2, pc
c0debde6:	4902      	ldr	r1, [pc, #8]	@ (c0debdf0 <pic_internal+0xc>)
c0debde8:	1cc9      	adds	r1, r1, #3
c0debdea:	1a89      	subs	r1, r1, r2
c0debdec:	1a40      	subs	r0, r0, r1
c0debdee:	4770      	bx	lr
c0debdf0:	c0debde5 	.word	0xc0debde5

c0debdf4 <pic>:
c0debdf4:	4a0a      	ldr	r2, [pc, #40]	@ (c0debe20 <pic+0x2c>)
c0debdf6:	4282      	cmp	r2, r0
c0debdf8:	490a      	ldr	r1, [pc, #40]	@ (c0debe24 <pic+0x30>)
c0debdfa:	d806      	bhi.n	c0debe0a <pic+0x16>
c0debdfc:	4281      	cmp	r1, r0
c0debdfe:	d304      	bcc.n	c0debe0a <pic+0x16>
c0debe00:	b580      	push	{r7, lr}
c0debe02:	f7ff ffef 	bl	c0debde4 <pic_internal>
c0debe06:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0debe0a:	4907      	ldr	r1, [pc, #28]	@ (c0debe28 <pic+0x34>)
c0debe0c:	4288      	cmp	r0, r1
c0debe0e:	4a07      	ldr	r2, [pc, #28]	@ (c0debe2c <pic+0x38>)
c0debe10:	d304      	bcc.n	c0debe1c <pic+0x28>
c0debe12:	4290      	cmp	r0, r2
c0debe14:	d802      	bhi.n	c0debe1c <pic+0x28>
c0debe16:	1a40      	subs	r0, r0, r1
c0debe18:	4649      	mov	r1, r9
c0debe1a:	4408      	add	r0, r1
c0debe1c:	4770      	bx	lr
c0debe1e:	0000      	movs	r0, r0
c0debe20:	c0de0000 	.word	0xc0de0000
c0debe24:	c0dee83f 	.word	0xc0dee83f
c0debe28:	da7a0000 	.word	0xda7a0000
c0debe2c:	da7ab000 	.word	0xda7ab000

c0debe30 <SVC_Call>:
c0debe30:	df01      	svc	1
c0debe32:	2900      	cmp	r1, #0
c0debe34:	d100      	bne.n	c0debe38 <exception>
c0debe36:	4770      	bx	lr

c0debe38 <exception>:
c0debe38:	4608      	mov	r0, r1
c0debe3a:	f7ff f9af 	bl	c0deb19c <os_longjmp>
	...

c0debe40 <SVC_cx_call>:
c0debe40:	df01      	svc	1
c0debe42:	4770      	bx	lr

c0debe44 <halt>:
c0debe44:	b5e0      	push	{r5, r6, r7, lr}
c0debe46:	2000      	movs	r0, #0
c0debe48:	4669      	mov	r1, sp
c0debe4a:	9001      	str	r0, [sp, #4]
c0debe4c:	2002      	movs	r0, #2
c0debe4e:	f7ff ffef 	bl	c0debe30 <SVC_Call>
c0debe52:	bd8c      	pop	{r2, r3, r7, pc}

c0debe54 <nbgl_frontDrawRect>:
c0debe54:	b5e0      	push	{r5, r6, r7, lr}
c0debe56:	9001      	str	r0, [sp, #4]
c0debe58:	a901      	add	r1, sp, #4
c0debe5a:	f04f 70fd 	mov.w	r0, #33161216	@ 0x1fa0000
c0debe5e:	f7ff ffe7 	bl	c0debe30 <SVC_Call>
c0debe62:	bd8c      	pop	{r2, r3, r7, pc}

c0debe64 <nbgl_frontDrawImage>:
c0debe64:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0debe66:	9000      	str	r0, [sp, #0]
c0debe68:	f000 f9e8 	bl	c0dec23c <OUTLINED_FUNCTION_1>
c0debe6c:	e9cd 0501 	strd	r0, r5, [sp, #4]
c0debe70:	4802      	ldr	r0, [pc, #8]	@ (c0debe7c <nbgl_frontDrawImage+0x18>)
c0debe72:	4669      	mov	r1, sp
c0debe74:	9403      	str	r4, [sp, #12]
c0debe76:	f7ff ffdb 	bl	c0debe30 <SVC_Call>
c0debe7a:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0debe7c:	04fa0002 	.word	0x04fa0002

c0debe80 <nbgl_frontDrawImageRle>:
c0debe80:	b5b0      	push	{r4, r5, r7, lr}
c0debe82:	b086      	sub	sp, #24
c0debe84:	9001      	str	r0, [sp, #4]
c0debe86:	f000 f9d9 	bl	c0dec23c <OUTLINED_FUNCTION_1>
c0debe8a:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0debe8c:	e9cd 0502 	strd	r0, r5, [sp, #8]
c0debe90:	4803      	ldr	r0, [pc, #12]	@ (c0debea0 <nbgl_frontDrawImageRle+0x20>)
c0debe92:	e9cd 4104 	strd	r4, r1, [sp, #16]
c0debe96:	a901      	add	r1, sp, #4
c0debe98:	f7ff ffca 	bl	c0debe30 <SVC_Call>
c0debe9c:	b006      	add	sp, #24
c0debe9e:	bdb0      	pop	{r4, r5, r7, pc}
c0debea0:	05fa0010 	.word	0x05fa0010

c0debea4 <nbgl_frontDrawImageFile>:
c0debea4:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0debea6:	9000      	str	r0, [sp, #0]
c0debea8:	f000 f9c8 	bl	c0dec23c <OUTLINED_FUNCTION_1>
c0debeac:	e9cd 0501 	strd	r0, r5, [sp, #4]
c0debeb0:	4802      	ldr	r0, [pc, #8]	@ (c0debebc <nbgl_frontDrawImageFile+0x18>)
c0debeb2:	4669      	mov	r1, sp
c0debeb4:	9403      	str	r4, [sp, #12]
c0debeb6:	f7ff ffbb 	bl	c0debe30 <SVC_Call>
c0debeba:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0debebc:	05fa0004 	.word	0x05fa0004

c0debec0 <nbgl_frontRefreshArea>:
c0debec0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0debec2:	ab01      	add	r3, sp, #4
c0debec4:	c307      	stmia	r3!, {r0, r1, r2}
c0debec6:	4802      	ldr	r0, [pc, #8]	@ (c0debed0 <nbgl_frontRefreshArea+0x10>)
c0debec8:	a901      	add	r1, sp, #4
c0debeca:	f7ff ffb1 	bl	c0debe30 <SVC_Call>
c0debece:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0debed0:	03fa0003 	.word	0x03fa0003

c0debed4 <nbgl_font_getFont>:
c0debed4:	b5e0      	push	{r5, r6, r7, lr}
c0debed6:	9001      	str	r0, [sp, #4]
c0debed8:	4802      	ldr	r0, [pc, #8]	@ (c0debee4 <nbgl_font_getFont+0x10>)
c0debeda:	a901      	add	r1, sp, #4
c0debedc:	f7ff ffa8 	bl	c0debe30 <SVC_Call>
c0debee0:	bd8c      	pop	{r2, r3, r7, pc}
c0debee2:	bf00      	nop
c0debee4:	01fa000c 	.word	0x01fa000c

c0debee8 <nbgl_screen_reinit>:
c0debee8:	b5e0      	push	{r5, r6, r7, lr}
c0debeea:	2000      	movs	r0, #0
c0debeec:	9001      	str	r0, [sp, #4]
c0debeee:	4802      	ldr	r0, [pc, #8]	@ (c0debef8 <nbgl_screen_reinit+0x10>)
c0debef0:	a901      	add	r1, sp, #4
c0debef2:	f7ff ff9d 	bl	c0debe30 <SVC_Call>
c0debef6:	bd8c      	pop	{r2, r3, r7, pc}
c0debef8:	00fa000d 	.word	0x00fa000d

c0debefc <nvm_write>:
c0debefc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0debefe:	ab01      	add	r3, sp, #4
c0debf00:	c307      	stmia	r3!, {r0, r1, r2}
c0debf02:	4802      	ldr	r0, [pc, #8]	@ (c0debf0c <nvm_write+0x10>)
c0debf04:	a901      	add	r1, sp, #4
c0debf06:	f7ff ff93 	bl	c0debe30 <SVC_Call>
c0debf0a:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0debf0c:	03000003 	.word	0x03000003

c0debf10 <cx_bn_lock>:
c0debf10:	b5e0      	push	{r5, r6, r7, lr}
c0debf12:	e9cd 0100 	strd	r0, r1, [sp]
c0debf16:	4802      	ldr	r0, [pc, #8]	@ (c0debf20 <cx_bn_lock+0x10>)
c0debf18:	4669      	mov	r1, sp
c0debf1a:	f7ff ff91 	bl	c0debe40 <SVC_cx_call>
c0debf1e:	bd8c      	pop	{r2, r3, r7, pc}
c0debf20:	02000112 	.word	0x02000112

c0debf24 <cx_bn_unlock>:
c0debf24:	b5e0      	push	{r5, r6, r7, lr}
c0debf26:	2000      	movs	r0, #0
c0debf28:	4669      	mov	r1, sp
c0debf2a:	9001      	str	r0, [sp, #4]
c0debf2c:	20b6      	movs	r0, #182	@ 0xb6
c0debf2e:	f7ff ff87 	bl	c0debe40 <SVC_cx_call>
c0debf32:	bd8c      	pop	{r2, r3, r7, pc}

c0debf34 <cx_bn_alloc>:
c0debf34:	b5e0      	push	{r5, r6, r7, lr}
c0debf36:	e9cd 0100 	strd	r0, r1, [sp]
c0debf3a:	4802      	ldr	r0, [pc, #8]	@ (c0debf44 <cx_bn_alloc+0x10>)
c0debf3c:	4669      	mov	r1, sp
c0debf3e:	f7ff ff7f 	bl	c0debe40 <SVC_cx_call>
c0debf42:	bd8c      	pop	{r2, r3, r7, pc}
c0debf44:	02000113 	.word	0x02000113

c0debf48 <cx_bn_alloc_init>:
c0debf48:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0debf4a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0debf4e:	4803      	ldr	r0, [pc, #12]	@ (c0debf5c <cx_bn_alloc_init+0x14>)
c0debf50:	4669      	mov	r1, sp
c0debf52:	f7ff ff75 	bl	c0debe40 <SVC_cx_call>
c0debf56:	b004      	add	sp, #16
c0debf58:	bd80      	pop	{r7, pc}
c0debf5a:	bf00      	nop
c0debf5c:	04000114 	.word	0x04000114

c0debf60 <cx_bn_destroy>:
c0debf60:	b5e0      	push	{r5, r6, r7, lr}
c0debf62:	f000 f967 	bl	c0dec234 <OUTLINED_FUNCTION_0>
c0debf66:	4802      	ldr	r0, [pc, #8]	@ (c0debf70 <cx_bn_destroy+0x10>)
c0debf68:	4669      	mov	r1, sp
c0debf6a:	f7ff ff69 	bl	c0debe40 <SVC_cx_call>
c0debf6e:	bd8c      	pop	{r2, r3, r7, pc}
c0debf70:	010000bc 	.word	0x010000bc

c0debf74 <cx_bn_nbytes>:
c0debf74:	b5e0      	push	{r5, r6, r7, lr}
c0debf76:	e9cd 0100 	strd	r0, r1, [sp]
c0debf7a:	4802      	ldr	r0, [pc, #8]	@ (c0debf84 <cx_bn_nbytes+0x10>)
c0debf7c:	4669      	mov	r1, sp
c0debf7e:	f7ff ff5f 	bl	c0debe40 <SVC_cx_call>
c0debf82:	bd8c      	pop	{r2, r3, r7, pc}
c0debf84:	0200010d 	.word	0x0200010d

c0debf88 <cx_bn_copy>:
c0debf88:	b5e0      	push	{r5, r6, r7, lr}
c0debf8a:	e9cd 0100 	strd	r0, r1, [sp]
c0debf8e:	4802      	ldr	r0, [pc, #8]	@ (c0debf98 <cx_bn_copy+0x10>)
c0debf90:	4669      	mov	r1, sp
c0debf92:	f7ff ff55 	bl	c0debe40 <SVC_cx_call>
c0debf96:	bd8c      	pop	{r2, r3, r7, pc}
c0debf98:	020000c0 	.word	0x020000c0

c0debf9c <cx_bn_set_u32>:
c0debf9c:	b5e0      	push	{r5, r6, r7, lr}
c0debf9e:	e9cd 0100 	strd	r0, r1, [sp]
c0debfa2:	4802      	ldr	r0, [pc, #8]	@ (c0debfac <cx_bn_set_u32+0x10>)
c0debfa4:	4669      	mov	r1, sp
c0debfa6:	f7ff ff4b 	bl	c0debe40 <SVC_cx_call>
c0debfaa:	bd8c      	pop	{r2, r3, r7, pc}
c0debfac:	020000c1 	.word	0x020000c1

c0debfb0 <cx_bn_export>:
c0debfb0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0debfb2:	ab01      	add	r3, sp, #4
c0debfb4:	c307      	stmia	r3!, {r0, r1, r2}
c0debfb6:	4803      	ldr	r0, [pc, #12]	@ (c0debfc4 <cx_bn_export+0x14>)
c0debfb8:	a901      	add	r1, sp, #4
c0debfba:	f7ff ff41 	bl	c0debe40 <SVC_cx_call>
c0debfbe:	b004      	add	sp, #16
c0debfc0:	bd80      	pop	{r7, pc}
c0debfc2:	bf00      	nop
c0debfc4:	030000c3 	.word	0x030000c3

c0debfc8 <cx_bn_cmp>:
c0debfc8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0debfca:	ab01      	add	r3, sp, #4
c0debfcc:	c307      	stmia	r3!, {r0, r1, r2}
c0debfce:	4803      	ldr	r0, [pc, #12]	@ (c0debfdc <cx_bn_cmp+0x14>)
c0debfd0:	a901      	add	r1, sp, #4
c0debfd2:	f7ff ff35 	bl	c0debe40 <SVC_cx_call>
c0debfd6:	b004      	add	sp, #16
c0debfd8:	bd80      	pop	{r7, pc}
c0debfda:	bf00      	nop
c0debfdc:	030000c4 	.word	0x030000c4

c0debfe0 <cx_bn_cmp_u32>:
c0debfe0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0debfe2:	ab01      	add	r3, sp, #4
c0debfe4:	c307      	stmia	r3!, {r0, r1, r2}
c0debfe6:	4803      	ldr	r0, [pc, #12]	@ (c0debff4 <cx_bn_cmp_u32+0x14>)
c0debfe8:	a901      	add	r1, sp, #4
c0debfea:	f7ff ff29 	bl	c0debe40 <SVC_cx_call>
c0debfee:	b004      	add	sp, #16
c0debff0:	bd80      	pop	{r7, pc}
c0debff2:	bf00      	nop
c0debff4:	030000c5 	.word	0x030000c5

c0debff8 <cx_bn_tst_bit>:
c0debff8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0debffa:	ab01      	add	r3, sp, #4
c0debffc:	c307      	stmia	r3!, {r0, r1, r2}
c0debffe:	4803      	ldr	r0, [pc, #12]	@ (c0dec00c <cx_bn_tst_bit+0x14>)
c0dec000:	a901      	add	r1, sp, #4
c0dec002:	f7ff ff1d 	bl	c0debe40 <SVC_cx_call>
c0dec006:	b004      	add	sp, #16
c0dec008:	bd80      	pop	{r7, pc}
c0dec00a:	bf00      	nop
c0dec00c:	030000cb 	.word	0x030000cb

c0dec010 <cx_bn_mod_add>:
c0dec010:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec012:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0dec016:	4803      	ldr	r0, [pc, #12]	@ (c0dec024 <cx_bn_mod_add+0x14>)
c0dec018:	4669      	mov	r1, sp
c0dec01a:	f7ff ff11 	bl	c0debe40 <SVC_cx_call>
c0dec01e:	b004      	add	sp, #16
c0dec020:	bd80      	pop	{r7, pc}
c0dec022:	bf00      	nop
c0dec024:	040000d3 	.word	0x040000d3

c0dec028 <cx_bn_mod_sub>:
c0dec028:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec02a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0dec02e:	4803      	ldr	r0, [pc, #12]	@ (c0dec03c <cx_bn_mod_sub+0x14>)
c0dec030:	4669      	mov	r1, sp
c0dec032:	f7ff ff05 	bl	c0debe40 <SVC_cx_call>
c0dec036:	b004      	add	sp, #16
c0dec038:	bd80      	pop	{r7, pc}
c0dec03a:	bf00      	nop
c0dec03c:	040000d4 	.word	0x040000d4

c0dec040 <cx_bn_is_prime>:
c0dec040:	b5e0      	push	{r5, r6, r7, lr}
c0dec042:	e9cd 0100 	strd	r0, r1, [sp]
c0dec046:	4802      	ldr	r0, [pc, #8]	@ (c0dec050 <cx_bn_is_prime+0x10>)
c0dec048:	4669      	mov	r1, sp
c0dec04a:	f7ff fef9 	bl	c0debe40 <SVC_cx_call>
c0dec04e:	bd8c      	pop	{r2, r3, r7, pc}
c0dec050:	020000ef 	.word	0x020000ef

c0dec054 <cx_mont_alloc>:
c0dec054:	b5e0      	push	{r5, r6, r7, lr}
c0dec056:	e9cd 0100 	strd	r0, r1, [sp]
c0dec05a:	4802      	ldr	r0, [pc, #8]	@ (c0dec064 <cx_mont_alloc+0x10>)
c0dec05c:	4669      	mov	r1, sp
c0dec05e:	f7ff feef 	bl	c0debe40 <SVC_cx_call>
c0dec062:	bd8c      	pop	{r2, r3, r7, pc}
c0dec064:	020000dc 	.word	0x020000dc

c0dec068 <cx_mont_init>:
c0dec068:	b5e0      	push	{r5, r6, r7, lr}
c0dec06a:	e9cd 0100 	strd	r0, r1, [sp]
c0dec06e:	4802      	ldr	r0, [pc, #8]	@ (c0dec078 <cx_mont_init+0x10>)
c0dec070:	4669      	mov	r1, sp
c0dec072:	f7ff fee5 	bl	c0debe40 <SVC_cx_call>
c0dec076:	bd8c      	pop	{r2, r3, r7, pc}
c0dec078:	020000dd 	.word	0x020000dd

c0dec07c <cx_mont_to_montgomery>:
c0dec07c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec07e:	ab01      	add	r3, sp, #4
c0dec080:	c307      	stmia	r3!, {r0, r1, r2}
c0dec082:	4803      	ldr	r0, [pc, #12]	@ (c0dec090 <cx_mont_to_montgomery+0x14>)
c0dec084:	a901      	add	r1, sp, #4
c0dec086:	f7ff fedb 	bl	c0debe40 <SVC_cx_call>
c0dec08a:	b004      	add	sp, #16
c0dec08c:	bd80      	pop	{r7, pc}
c0dec08e:	bf00      	nop
c0dec090:	030000df 	.word	0x030000df

c0dec094 <cx_mont_from_montgomery>:
c0dec094:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec096:	ab01      	add	r3, sp, #4
c0dec098:	c307      	stmia	r3!, {r0, r1, r2}
c0dec09a:	4803      	ldr	r0, [pc, #12]	@ (c0dec0a8 <cx_mont_from_montgomery+0x14>)
c0dec09c:	a901      	add	r1, sp, #4
c0dec09e:	f7ff fecf 	bl	c0debe40 <SVC_cx_call>
c0dec0a2:	b004      	add	sp, #16
c0dec0a4:	bd80      	pop	{r7, pc}
c0dec0a6:	bf00      	nop
c0dec0a8:	030000e0 	.word	0x030000e0

c0dec0ac <cx_mont_mul>:
c0dec0ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec0ae:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0dec0b2:	4803      	ldr	r0, [pc, #12]	@ (c0dec0c0 <cx_mont_mul+0x14>)
c0dec0b4:	4669      	mov	r1, sp
c0dec0b6:	f7ff fec3 	bl	c0debe40 <SVC_cx_call>
c0dec0ba:	b004      	add	sp, #16
c0dec0bc:	bd80      	pop	{r7, pc}
c0dec0be:	bf00      	nop
c0dec0c0:	040000e1 	.word	0x040000e1

c0dec0c4 <cx_mont_invert_nprime>:
c0dec0c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec0c6:	ab01      	add	r3, sp, #4
c0dec0c8:	c307      	stmia	r3!, {r0, r1, r2}
c0dec0ca:	4803      	ldr	r0, [pc, #12]	@ (c0dec0d8 <cx_mont_invert_nprime+0x14>)
c0dec0cc:	a901      	add	r1, sp, #4
c0dec0ce:	f7ff feb7 	bl	c0debe40 <SVC_cx_call>
c0dec0d2:	b004      	add	sp, #16
c0dec0d4:	bd80      	pop	{r7, pc}
c0dec0d6:	bf00      	nop
c0dec0d8:	030000e4 	.word	0x030000e4

c0dec0dc <cx_ecdomain_parameters_length>:
c0dec0dc:	b5e0      	push	{r5, r6, r7, lr}
c0dec0de:	e9cd 0100 	strd	r0, r1, [sp]
c0dec0e2:	4802      	ldr	r0, [pc, #8]	@ (c0dec0ec <cx_ecdomain_parameters_length+0x10>)
c0dec0e4:	4669      	mov	r1, sp
c0dec0e6:	f7ff feab 	bl	c0debe40 <SVC_cx_call>
c0dec0ea:	bd8c      	pop	{r2, r3, r7, pc}
c0dec0ec:	0200012f 	.word	0x0200012f

c0dec0f0 <os_perso_derive_node_with_seed_key>:
c0dec0f0:	b510      	push	{r4, lr}
c0dec0f2:	b088      	sub	sp, #32
c0dec0f4:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0dec0f6:	9407      	str	r4, [sp, #28]
c0dec0f8:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0dec0fa:	9406      	str	r4, [sp, #24]
c0dec0fc:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0dec0fe:	9405      	str	r4, [sp, #20]
c0dec100:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0dec102:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0dec106:	4803      	ldr	r0, [pc, #12]	@ (c0dec114 <os_perso_derive_node_with_seed_key+0x24>)
c0dec108:	4669      	mov	r1, sp
c0dec10a:	f7ff fe91 	bl	c0debe30 <SVC_Call>
c0dec10e:	b008      	add	sp, #32
c0dec110:	bd10      	pop	{r4, pc}
c0dec112:	bf00      	nop
c0dec114:	080000a6 	.word	0x080000a6

c0dec118 <os_pki_load_certificate>:
c0dec118:	b510      	push	{r4, lr}
c0dec11a:	b086      	sub	sp, #24
c0dec11c:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0dec11e:	9405      	str	r4, [sp, #20]
c0dec120:	9c08      	ldr	r4, [sp, #32]
c0dec122:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0dec126:	4803      	ldr	r0, [pc, #12]	@ (c0dec134 <os_pki_load_certificate+0x1c>)
c0dec128:	4669      	mov	r1, sp
c0dec12a:	f7ff fe81 	bl	c0debe30 <SVC_Call>
c0dec12e:	b006      	add	sp, #24
c0dec130:	bd10      	pop	{r4, pc}
c0dec132:	bf00      	nop
c0dec134:	060000aa 	.word	0x060000aa

c0dec138 <os_perso_is_pin_set>:
c0dec138:	b5e0      	push	{r5, r6, r7, lr}
c0dec13a:	2000      	movs	r0, #0
c0dec13c:	4669      	mov	r1, sp
c0dec13e:	9001      	str	r0, [sp, #4]
c0dec140:	209e      	movs	r0, #158	@ 0x9e
c0dec142:	f7ff fe75 	bl	c0debe30 <SVC_Call>
c0dec146:	b2c0      	uxtb	r0, r0
c0dec148:	bd8c      	pop	{r2, r3, r7, pc}

c0dec14a <os_global_pin_is_validated>:
c0dec14a:	b5e0      	push	{r5, r6, r7, lr}
c0dec14c:	2000      	movs	r0, #0
c0dec14e:	4669      	mov	r1, sp
c0dec150:	9001      	str	r0, [sp, #4]
c0dec152:	20a0      	movs	r0, #160	@ 0xa0
c0dec154:	f7ff fe6c 	bl	c0debe30 <SVC_Call>
c0dec158:	b2c0      	uxtb	r0, r0
c0dec15a:	bd8c      	pop	{r2, r3, r7, pc}

c0dec15c <os_ux>:
c0dec15c:	b5e0      	push	{r5, r6, r7, lr}
c0dec15e:	f000 f869 	bl	c0dec234 <OUTLINED_FUNCTION_0>
c0dec162:	4802      	ldr	r0, [pc, #8]	@ (c0dec16c <os_ux+0x10>)
c0dec164:	4669      	mov	r1, sp
c0dec166:	f7ff fe63 	bl	c0debe30 <SVC_Call>
c0dec16a:	bd8c      	pop	{r2, r3, r7, pc}
c0dec16c:	01000064 	.word	0x01000064

c0dec170 <os_flags>:
c0dec170:	b5e0      	push	{r5, r6, r7, lr}
c0dec172:	2000      	movs	r0, #0
c0dec174:	4669      	mov	r1, sp
c0dec176:	9001      	str	r0, [sp, #4]
c0dec178:	206a      	movs	r0, #106	@ 0x6a
c0dec17a:	f7ff fe59 	bl	c0debe30 <SVC_Call>
c0dec17e:	bd8c      	pop	{r2, r3, r7, pc}

c0dec180 <os_registry_get_current_app_tag>:
c0dec180:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec182:	ab01      	add	r3, sp, #4
c0dec184:	c307      	stmia	r3!, {r0, r1, r2}
c0dec186:	4803      	ldr	r0, [pc, #12]	@ (c0dec194 <os_registry_get_current_app_tag+0x14>)
c0dec188:	a901      	add	r1, sp, #4
c0dec18a:	f7ff fe51 	bl	c0debe30 <SVC_Call>
c0dec18e:	b004      	add	sp, #16
c0dec190:	bd80      	pop	{r7, pc}
c0dec192:	bf00      	nop
c0dec194:	03000074 	.word	0x03000074

c0dec198 <os_sched_exit>:
c0dec198:	b082      	sub	sp, #8
c0dec19a:	f000 f84b 	bl	c0dec234 <OUTLINED_FUNCTION_0>
c0dec19e:	4802      	ldr	r0, [pc, #8]	@ (c0dec1a8 <os_sched_exit+0x10>)
c0dec1a0:	4669      	mov	r1, sp
c0dec1a2:	f7ff fe45 	bl	c0debe30 <SVC_Call>
c0dec1a6:	deff      	udf	#255	@ 0xff
c0dec1a8:	0100009a 	.word	0x0100009a

c0dec1ac <io_seph_send>:
c0dec1ac:	b5e0      	push	{r5, r6, r7, lr}
c0dec1ae:	e9cd 0100 	strd	r0, r1, [sp]
c0dec1b2:	4802      	ldr	r0, [pc, #8]	@ (c0dec1bc <io_seph_send+0x10>)
c0dec1b4:	4669      	mov	r1, sp
c0dec1b6:	f7ff fe3b 	bl	c0debe30 <SVC_Call>
c0dec1ba:	bd8c      	pop	{r2, r3, r7, pc}
c0dec1bc:	02000083 	.word	0x02000083

c0dec1c0 <io_seph_is_status_sent>:
c0dec1c0:	b5e0      	push	{r5, r6, r7, lr}
c0dec1c2:	2000      	movs	r0, #0
c0dec1c4:	4669      	mov	r1, sp
c0dec1c6:	9001      	str	r0, [sp, #4]
c0dec1c8:	2084      	movs	r0, #132	@ 0x84
c0dec1ca:	f7ff fe31 	bl	c0debe30 <SVC_Call>
c0dec1ce:	bd8c      	pop	{r2, r3, r7, pc}

c0dec1d0 <io_seph_recv>:
c0dec1d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dec1d2:	ab01      	add	r3, sp, #4
c0dec1d4:	c307      	stmia	r3!, {r0, r1, r2}
c0dec1d6:	4803      	ldr	r0, [pc, #12]	@ (c0dec1e4 <io_seph_recv+0x14>)
c0dec1d8:	a901      	add	r1, sp, #4
c0dec1da:	f7ff fe29 	bl	c0debe30 <SVC_Call>
c0dec1de:	b280      	uxth	r0, r0
c0dec1e0:	b004      	add	sp, #16
c0dec1e2:	bd80      	pop	{r7, pc}
c0dec1e4:	03000085 	.word	0x03000085

c0dec1e8 <try_context_get>:
c0dec1e8:	b5e0      	push	{r5, r6, r7, lr}
c0dec1ea:	2000      	movs	r0, #0
c0dec1ec:	4669      	mov	r1, sp
c0dec1ee:	9001      	str	r0, [sp, #4]
c0dec1f0:	2087      	movs	r0, #135	@ 0x87
c0dec1f2:	f7ff fe1d 	bl	c0debe30 <SVC_Call>
c0dec1f6:	bd8c      	pop	{r2, r3, r7, pc}

c0dec1f8 <try_context_set>:
c0dec1f8:	b5e0      	push	{r5, r6, r7, lr}
c0dec1fa:	f000 f81b 	bl	c0dec234 <OUTLINED_FUNCTION_0>
c0dec1fe:	4802      	ldr	r0, [pc, #8]	@ (c0dec208 <try_context_set+0x10>)
c0dec200:	4669      	mov	r1, sp
c0dec202:	f7ff fe15 	bl	c0debe30 <SVC_Call>
c0dec206:	bd8c      	pop	{r2, r3, r7, pc}
c0dec208:	0100010b 	.word	0x0100010b

c0dec20c <os_sched_last_status>:
c0dec20c:	b5e0      	push	{r5, r6, r7, lr}
c0dec20e:	f000 f811 	bl	c0dec234 <OUTLINED_FUNCTION_0>
c0dec212:	4803      	ldr	r0, [pc, #12]	@ (c0dec220 <os_sched_last_status+0x14>)
c0dec214:	4669      	mov	r1, sp
c0dec216:	f7ff fe0b 	bl	c0debe30 <SVC_Call>
c0dec21a:	b2c0      	uxtb	r0, r0
c0dec21c:	bd8c      	pop	{r2, r3, r7, pc}
c0dec21e:	bf00      	nop
c0dec220:	0100009c 	.word	0x0100009c

c0dec224 <os_sched_current_task>:
c0dec224:	b5e0      	push	{r5, r6, r7, lr}
c0dec226:	2000      	movs	r0, #0
c0dec228:	4669      	mov	r1, sp
c0dec22a:	9001      	str	r0, [sp, #4]
c0dec22c:	208b      	movs	r0, #139	@ 0x8b
c0dec22e:	f7ff fdff 	bl	c0debe30 <SVC_Call>
c0dec232:	bd8c      	pop	{r2, r3, r7, pc}

c0dec234 <OUTLINED_FUNCTION_0>:
c0dec234:	2100      	movs	r1, #0
c0dec236:	e9cd 0100 	strd	r0, r1, [sp]
c0dec23a:	4770      	bx	lr

c0dec23c <OUTLINED_FUNCTION_1>:
c0dec23c:	4608      	mov	r0, r1
c0dec23e:	461c      	mov	r4, r3
c0dec240:	4615      	mov	r5, r2
c0dec242:	f7ff bdd7 	b.w	c0debdf4 <pic>
	...

c0dec248 <__aeabi_llsr>:
c0dec248:	40d0      	lsrs	r0, r2
c0dec24a:	000b      	movs	r3, r1
c0dec24c:	40d1      	lsrs	r1, r2
c0dec24e:	469c      	mov	ip, r3
c0dec250:	3a20      	subs	r2, #32
c0dec252:	40d3      	lsrs	r3, r2
c0dec254:	4318      	orrs	r0, r3
c0dec256:	4252      	negs	r2, r2
c0dec258:	4663      	mov	r3, ip
c0dec25a:	4093      	lsls	r3, r2
c0dec25c:	4318      	orrs	r0, r3
c0dec25e:	4770      	bx	lr

c0dec260 <__aeabi_llsl>:
c0dec260:	4091      	lsls	r1, r2
c0dec262:	0003      	movs	r3, r0
c0dec264:	4090      	lsls	r0, r2
c0dec266:	469c      	mov	ip, r3
c0dec268:	3a20      	subs	r2, #32
c0dec26a:	4093      	lsls	r3, r2
c0dec26c:	4319      	orrs	r1, r3
c0dec26e:	4252      	negs	r2, r2
c0dec270:	4663      	mov	r3, ip
c0dec272:	40d3      	lsrs	r3, r2
c0dec274:	4319      	orrs	r1, r3
c0dec276:	4770      	bx	lr

c0dec278 <__aeabi_idiv0>:
c0dec278:	4770      	bx	lr
c0dec27a:	bf00      	nop

c0dec27c <__aeabi_uldivmod>:
c0dec27c:	b953      	cbnz	r3, c0dec294 <__aeabi_uldivmod+0x18>
c0dec27e:	b94a      	cbnz	r2, c0dec294 <__aeabi_uldivmod+0x18>
c0dec280:	2900      	cmp	r1, #0
c0dec282:	bf08      	it	eq
c0dec284:	2800      	cmpeq	r0, #0
c0dec286:	bf1c      	itt	ne
c0dec288:	f04f 31ff 	movne.w	r1, #4294967295	@ 0xffffffff
c0dec28c:	f04f 30ff 	movne.w	r0, #4294967295	@ 0xffffffff
c0dec290:	f7ff bff2 	b.w	c0dec278 <__aeabi_idiv0>
c0dec294:	f1ad 0c08 	sub.w	ip, sp, #8
c0dec298:	e96d ce04 	strd	ip, lr, [sp, #-16]!
c0dec29c:	f000 f806 	bl	c0dec2ac <__udivmoddi4>
c0dec2a0:	f8dd e004 	ldr.w	lr, [sp, #4]
c0dec2a4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0dec2a8:	b004      	add	sp, #16
c0dec2aa:	4770      	bx	lr

c0dec2ac <__udivmoddi4>:
c0dec2ac:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
c0dec2b0:	9e09      	ldr	r6, [sp, #36]	@ 0x24
c0dec2b2:	460d      	mov	r5, r1
c0dec2b4:	4604      	mov	r4, r0
c0dec2b6:	460f      	mov	r7, r1
c0dec2b8:	2b00      	cmp	r3, #0
c0dec2ba:	d147      	bne.n	c0dec34c <__udivmoddi4+0xa0>
c0dec2bc:	428a      	cmp	r2, r1
c0dec2be:	4694      	mov	ip, r2
c0dec2c0:	d95f      	bls.n	c0dec382 <__udivmoddi4+0xd6>
c0dec2c2:	fab2 f382 	clz	r3, r2
c0dec2c6:	b143      	cbz	r3, c0dec2da <__udivmoddi4+0x2e>
c0dec2c8:	f1c3 0120 	rsb	r1, r3, #32
c0dec2cc:	409f      	lsls	r7, r3
c0dec2ce:	fa02 fc03 	lsl.w	ip, r2, r3
c0dec2d2:	409c      	lsls	r4, r3
c0dec2d4:	fa20 f101 	lsr.w	r1, r0, r1
c0dec2d8:	430f      	orrs	r7, r1
c0dec2da:	ea4f 451c 	mov.w	r5, ip, lsr #16
c0dec2de:	fa1f fe8c 	uxth.w	lr, ip
c0dec2e2:	0c22      	lsrs	r2, r4, #16
c0dec2e4:	fbb7 f1f5 	udiv	r1, r7, r5
c0dec2e8:	fb05 7711 	mls	r7, r5, r1, r7
c0dec2ec:	fb01 f00e 	mul.w	r0, r1, lr
c0dec2f0:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
c0dec2f4:	4290      	cmp	r0, r2
c0dec2f6:	d908      	bls.n	c0dec30a <__udivmoddi4+0x5e>
c0dec2f8:	eb1c 0202 	adds.w	r2, ip, r2
c0dec2fc:	f101 37ff 	add.w	r7, r1, #4294967295	@ 0xffffffff
c0dec300:	d202      	bcs.n	c0dec308 <__udivmoddi4+0x5c>
c0dec302:	4290      	cmp	r0, r2
c0dec304:	f200 8134 	bhi.w	c0dec570 <__udivmoddi4+0x2c4>
c0dec308:	4639      	mov	r1, r7
c0dec30a:	1a12      	subs	r2, r2, r0
c0dec30c:	b2a4      	uxth	r4, r4
c0dec30e:	fbb2 f0f5 	udiv	r0, r2, r5
c0dec312:	fb05 2210 	mls	r2, r5, r0, r2
c0dec316:	fb00 fe0e 	mul.w	lr, r0, lr
c0dec31a:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
c0dec31e:	45a6      	cmp	lr, r4
c0dec320:	d908      	bls.n	c0dec334 <__udivmoddi4+0x88>
c0dec322:	eb1c 0404 	adds.w	r4, ip, r4
c0dec326:	f100 32ff 	add.w	r2, r0, #4294967295	@ 0xffffffff
c0dec32a:	d202      	bcs.n	c0dec332 <__udivmoddi4+0x86>
c0dec32c:	45a6      	cmp	lr, r4
c0dec32e:	f200 8119 	bhi.w	c0dec564 <__udivmoddi4+0x2b8>
c0dec332:	4610      	mov	r0, r2
c0dec334:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0dec338:	eba4 040e 	sub.w	r4, r4, lr
c0dec33c:	2100      	movs	r1, #0
c0dec33e:	b11e      	cbz	r6, c0dec348 <__udivmoddi4+0x9c>
c0dec340:	40dc      	lsrs	r4, r3
c0dec342:	2300      	movs	r3, #0
c0dec344:	e9c6 4300 	strd	r4, r3, [r6]
c0dec348:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
c0dec34c:	428b      	cmp	r3, r1
c0dec34e:	d908      	bls.n	c0dec362 <__udivmoddi4+0xb6>
c0dec350:	2e00      	cmp	r6, #0
c0dec352:	f000 80fb 	beq.w	c0dec54c <__udivmoddi4+0x2a0>
c0dec356:	2100      	movs	r1, #0
c0dec358:	e9c6 0500 	strd	r0, r5, [r6]
c0dec35c:	4608      	mov	r0, r1
c0dec35e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
c0dec362:	fab3 f183 	clz	r1, r3
c0dec366:	2900      	cmp	r1, #0
c0dec368:	d14b      	bne.n	c0dec402 <__udivmoddi4+0x156>
c0dec36a:	42ab      	cmp	r3, r5
c0dec36c:	f0c0 80f1 	bcc.w	c0dec552 <__udivmoddi4+0x2a6>
c0dec370:	4282      	cmp	r2, r0
c0dec372:	f240 80ee 	bls.w	c0dec552 <__udivmoddi4+0x2a6>
c0dec376:	4608      	mov	r0, r1
c0dec378:	2e00      	cmp	r6, #0
c0dec37a:	d0e5      	beq.n	c0dec348 <__udivmoddi4+0x9c>
c0dec37c:	e9c6 4700 	strd	r4, r7, [r6]
c0dec380:	e7e2      	b.n	c0dec348 <__udivmoddi4+0x9c>
c0dec382:	b902      	cbnz	r2, c0dec386 <__udivmoddi4+0xda>
c0dec384:	deff      	udf	#255	@ 0xff
c0dec386:	fab2 f382 	clz	r3, r2
c0dec38a:	2b00      	cmp	r3, #0
c0dec38c:	f040 809d 	bne.w	c0dec4ca <__udivmoddi4+0x21e>
c0dec390:	1a8d      	subs	r5, r1, r2
c0dec392:	ea4f 4e12 	mov.w	lr, r2, lsr #16
c0dec396:	b297      	uxth	r7, r2
c0dec398:	2101      	movs	r1, #1
c0dec39a:	fbb5 f2fe 	udiv	r2, r5, lr
c0dec39e:	fb0e 5012 	mls	r0, lr, r2, r5
c0dec3a2:	0c25      	lsrs	r5, r4, #16
c0dec3a4:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
c0dec3a8:	fb07 f002 	mul.w	r0, r7, r2
c0dec3ac:	42a8      	cmp	r0, r5
c0dec3ae:	d90f      	bls.n	c0dec3d0 <__udivmoddi4+0x124>
c0dec3b0:	eb1c 0505 	adds.w	r5, ip, r5
c0dec3b4:	f102 38ff 	add.w	r8, r2, #4294967295	@ 0xffffffff
c0dec3b8:	bf2c      	ite	cs
c0dec3ba:	f04f 0901 	movcs.w	r9, #1
c0dec3be:	f04f 0900 	movcc.w	r9, #0
c0dec3c2:	42a8      	cmp	r0, r5
c0dec3c4:	d903      	bls.n	c0dec3ce <__udivmoddi4+0x122>
c0dec3c6:	f1b9 0f00 	cmp.w	r9, #0
c0dec3ca:	f000 80ce 	beq.w	c0dec56a <__udivmoddi4+0x2be>
c0dec3ce:	4642      	mov	r2, r8
c0dec3d0:	1a2d      	subs	r5, r5, r0
c0dec3d2:	b2a4      	uxth	r4, r4
c0dec3d4:	fbb5 f0fe 	udiv	r0, r5, lr
c0dec3d8:	fb0e 5510 	mls	r5, lr, r0, r5
c0dec3dc:	fb00 f707 	mul.w	r7, r0, r7
c0dec3e0:	ea44 4405 	orr.w	r4, r4, r5, lsl #16
c0dec3e4:	42a7      	cmp	r7, r4
c0dec3e6:	d908      	bls.n	c0dec3fa <__udivmoddi4+0x14e>
c0dec3e8:	eb1c 0404 	adds.w	r4, ip, r4
c0dec3ec:	f100 35ff 	add.w	r5, r0, #4294967295	@ 0xffffffff
c0dec3f0:	d202      	bcs.n	c0dec3f8 <__udivmoddi4+0x14c>
c0dec3f2:	42a7      	cmp	r7, r4
c0dec3f4:	f200 80b3 	bhi.w	c0dec55e <__udivmoddi4+0x2b2>
c0dec3f8:	4628      	mov	r0, r5
c0dec3fa:	1be4      	subs	r4, r4, r7
c0dec3fc:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0dec400:	e79d      	b.n	c0dec33e <__udivmoddi4+0x92>
c0dec402:	f1c1 0720 	rsb	r7, r1, #32
c0dec406:	408b      	lsls	r3, r1
c0dec408:	fa05 f401 	lsl.w	r4, r5, r1
c0dec40c:	fa22 fc07 	lsr.w	ip, r2, r7
c0dec410:	40fd      	lsrs	r5, r7
c0dec412:	408a      	lsls	r2, r1
c0dec414:	ea4c 0c03 	orr.w	ip, ip, r3
c0dec418:	fa20 f307 	lsr.w	r3, r0, r7
c0dec41c:	ea4f 491c 	mov.w	r9, ip, lsr #16
c0dec420:	431c      	orrs	r4, r3
c0dec422:	fa1f fe8c 	uxth.w	lr, ip
c0dec426:	fa00 f301 	lsl.w	r3, r0, r1
c0dec42a:	0c20      	lsrs	r0, r4, #16
c0dec42c:	fbb5 f8f9 	udiv	r8, r5, r9
c0dec430:	fb09 5518 	mls	r5, r9, r8, r5
c0dec434:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
c0dec438:	fb08 f00e 	mul.w	r0, r8, lr
c0dec43c:	42a8      	cmp	r0, r5
c0dec43e:	d90f      	bls.n	c0dec460 <__udivmoddi4+0x1b4>
c0dec440:	eb1c 0505 	adds.w	r5, ip, r5
c0dec444:	f108 3aff 	add.w	sl, r8, #4294967295	@ 0xffffffff
c0dec448:	bf2c      	ite	cs
c0dec44a:	f04f 0b01 	movcs.w	fp, #1
c0dec44e:	f04f 0b00 	movcc.w	fp, #0
c0dec452:	42a8      	cmp	r0, r5
c0dec454:	d903      	bls.n	c0dec45e <__udivmoddi4+0x1b2>
c0dec456:	f1bb 0f00 	cmp.w	fp, #0
c0dec45a:	f000 808c 	beq.w	c0dec576 <__udivmoddi4+0x2ca>
c0dec45e:	46d0      	mov	r8, sl
c0dec460:	1a2d      	subs	r5, r5, r0
c0dec462:	b2a4      	uxth	r4, r4
c0dec464:	fbb5 f0f9 	udiv	r0, r5, r9
c0dec468:	fb09 5510 	mls	r5, r9, r0, r5
c0dec46c:	fb00 fe0e 	mul.w	lr, r0, lr
c0dec470:	ea44 4505 	orr.w	r5, r4, r5, lsl #16
c0dec474:	45ae      	cmp	lr, r5
c0dec476:	d907      	bls.n	c0dec488 <__udivmoddi4+0x1dc>
c0dec478:	eb1c 0505 	adds.w	r5, ip, r5
c0dec47c:	f100 34ff 	add.w	r4, r0, #4294967295	@ 0xffffffff
c0dec480:	d201      	bcs.n	c0dec486 <__udivmoddi4+0x1da>
c0dec482:	45ae      	cmp	lr, r5
c0dec484:	d87e      	bhi.n	c0dec584 <__udivmoddi4+0x2d8>
c0dec486:	4620      	mov	r0, r4
c0dec488:	ea40 4008 	orr.w	r0, r0, r8, lsl #16
c0dec48c:	eba5 050e 	sub.w	r5, r5, lr
c0dec490:	fba0 9802 	umull	r9, r8, r0, r2
c0dec494:	4545      	cmp	r5, r8
c0dec496:	464c      	mov	r4, r9
c0dec498:	46c6      	mov	lr, r8
c0dec49a:	d302      	bcc.n	c0dec4a2 <__udivmoddi4+0x1f6>
c0dec49c:	d106      	bne.n	c0dec4ac <__udivmoddi4+0x200>
c0dec49e:	454b      	cmp	r3, r9
c0dec4a0:	d204      	bcs.n	c0dec4ac <__udivmoddi4+0x200>
c0dec4a2:	3801      	subs	r0, #1
c0dec4a4:	ebb9 0402 	subs.w	r4, r9, r2
c0dec4a8:	eb68 0e0c 	sbc.w	lr, r8, ip
c0dec4ac:	2e00      	cmp	r6, #0
c0dec4ae:	d06f      	beq.n	c0dec590 <__udivmoddi4+0x2e4>
c0dec4b0:	1b1a      	subs	r2, r3, r4
c0dec4b2:	eb65 050e 	sbc.w	r5, r5, lr
c0dec4b6:	fa22 f301 	lsr.w	r3, r2, r1
c0dec4ba:	fa05 f707 	lsl.w	r7, r5, r7
c0dec4be:	40cd      	lsrs	r5, r1
c0dec4c0:	2100      	movs	r1, #0
c0dec4c2:	431f      	orrs	r7, r3
c0dec4c4:	e9c6 7500 	strd	r7, r5, [r6]
c0dec4c8:	e73e      	b.n	c0dec348 <__udivmoddi4+0x9c>
c0dec4ca:	fa02 fc03 	lsl.w	ip, r2, r3
c0dec4ce:	f1c3 0020 	rsb	r0, r3, #32
c0dec4d2:	fa01 f203 	lsl.w	r2, r1, r3
c0dec4d6:	ea4f 4e1c 	mov.w	lr, ip, lsr #16
c0dec4da:	40c1      	lsrs	r1, r0
c0dec4dc:	fa24 f500 	lsr.w	r5, r4, r0
c0dec4e0:	fa1f f78c 	uxth.w	r7, ip
c0dec4e4:	409c      	lsls	r4, r3
c0dec4e6:	4315      	orrs	r5, r2
c0dec4e8:	fbb1 f0fe 	udiv	r0, r1, lr
c0dec4ec:	0c2a      	lsrs	r2, r5, #16
c0dec4ee:	fb0e 1110 	mls	r1, lr, r0, r1
c0dec4f2:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
c0dec4f6:	fb00 f107 	mul.w	r1, r0, r7
c0dec4fa:	4291      	cmp	r1, r2
c0dec4fc:	d90e      	bls.n	c0dec51c <__udivmoddi4+0x270>
c0dec4fe:	eb1c 0202 	adds.w	r2, ip, r2
c0dec502:	f100 38ff 	add.w	r8, r0, #4294967295	@ 0xffffffff
c0dec506:	bf2c      	ite	cs
c0dec508:	f04f 0901 	movcs.w	r9, #1
c0dec50c:	f04f 0900 	movcc.w	r9, #0
c0dec510:	4291      	cmp	r1, r2
c0dec512:	d902      	bls.n	c0dec51a <__udivmoddi4+0x26e>
c0dec514:	f1b9 0f00 	cmp.w	r9, #0
c0dec518:	d031      	beq.n	c0dec57e <__udivmoddi4+0x2d2>
c0dec51a:	4640      	mov	r0, r8
c0dec51c:	1a52      	subs	r2, r2, r1
c0dec51e:	b2ad      	uxth	r5, r5
c0dec520:	fbb2 f1fe 	udiv	r1, r2, lr
c0dec524:	fb0e 2211 	mls	r2, lr, r1, r2
c0dec528:	ea45 4502 	orr.w	r5, r5, r2, lsl #16
c0dec52c:	fb01 f207 	mul.w	r2, r1, r7
c0dec530:	42aa      	cmp	r2, r5
c0dec532:	d907      	bls.n	c0dec544 <__udivmoddi4+0x298>
c0dec534:	eb1c 0505 	adds.w	r5, ip, r5
c0dec538:	f101 38ff 	add.w	r8, r1, #4294967295	@ 0xffffffff
c0dec53c:	d201      	bcs.n	c0dec542 <__udivmoddi4+0x296>
c0dec53e:	42aa      	cmp	r2, r5
c0dec540:	d823      	bhi.n	c0dec58a <__udivmoddi4+0x2de>
c0dec542:	4641      	mov	r1, r8
c0dec544:	1aad      	subs	r5, r5, r2
c0dec546:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
c0dec54a:	e726      	b.n	c0dec39a <__udivmoddi4+0xee>
c0dec54c:	4631      	mov	r1, r6
c0dec54e:	4630      	mov	r0, r6
c0dec550:	e6fa      	b.n	c0dec348 <__udivmoddi4+0x9c>
c0dec552:	1a84      	subs	r4, r0, r2
c0dec554:	eb65 0303 	sbc.w	r3, r5, r3
c0dec558:	2001      	movs	r0, #1
c0dec55a:	461f      	mov	r7, r3
c0dec55c:	e70c      	b.n	c0dec378 <__udivmoddi4+0xcc>
c0dec55e:	4464      	add	r4, ip
c0dec560:	3802      	subs	r0, #2
c0dec562:	e74a      	b.n	c0dec3fa <__udivmoddi4+0x14e>
c0dec564:	4464      	add	r4, ip
c0dec566:	3802      	subs	r0, #2
c0dec568:	e6e4      	b.n	c0dec334 <__udivmoddi4+0x88>
c0dec56a:	3a02      	subs	r2, #2
c0dec56c:	4465      	add	r5, ip
c0dec56e:	e72f      	b.n	c0dec3d0 <__udivmoddi4+0x124>
c0dec570:	3902      	subs	r1, #2
c0dec572:	4462      	add	r2, ip
c0dec574:	e6c9      	b.n	c0dec30a <__udivmoddi4+0x5e>
c0dec576:	f1a8 0802 	sub.w	r8, r8, #2
c0dec57a:	4465      	add	r5, ip
c0dec57c:	e770      	b.n	c0dec460 <__udivmoddi4+0x1b4>
c0dec57e:	3802      	subs	r0, #2
c0dec580:	4462      	add	r2, ip
c0dec582:	e7cb      	b.n	c0dec51c <__udivmoddi4+0x270>
c0dec584:	3802      	subs	r0, #2
c0dec586:	4465      	add	r5, ip
c0dec588:	e77e      	b.n	c0dec488 <__udivmoddi4+0x1dc>
c0dec58a:	3902      	subs	r1, #2
c0dec58c:	4465      	add	r5, ip
c0dec58e:	e7d9      	b.n	c0dec544 <__udivmoddi4+0x298>
c0dec590:	4631      	mov	r1, r6
c0dec592:	e6d9      	b.n	c0dec348 <__udivmoddi4+0x9c>

c0dec594 <__aeabi_memclr>:
c0dec594:	2200      	movs	r2, #0
c0dec596:	f000 b804 	b.w	c0dec5a2 <__aeabi_memset>

c0dec59a <__aeabi_memcpy>:
c0dec59a:	f000 b80d 	b.w	c0dec5b8 <memcpy>

c0dec59e <__aeabi_memmove>:
c0dec59e:	f000 b818 	b.w	c0dec5d2 <memmove>

c0dec5a2 <__aeabi_memset>:
c0dec5a2:	4613      	mov	r3, r2
c0dec5a4:	460a      	mov	r2, r1
c0dec5a6:	4619      	mov	r1, r3
c0dec5a8:	f000 b82d 	b.w	c0dec606 <memset>

c0dec5ac <explicit_bzero>:
c0dec5ac:	f000 b800 	b.w	c0dec5b0 <bzero>

c0dec5b0 <bzero>:
c0dec5b0:	460a      	mov	r2, r1
c0dec5b2:	2100      	movs	r1, #0
c0dec5b4:	f000 b827 	b.w	c0dec606 <memset>

c0dec5b8 <memcpy>:
c0dec5b8:	440a      	add	r2, r1
c0dec5ba:	1e43      	subs	r3, r0, #1
c0dec5bc:	4291      	cmp	r1, r2
c0dec5be:	d100      	bne.n	c0dec5c2 <memcpy+0xa>
c0dec5c0:	4770      	bx	lr
c0dec5c2:	b510      	push	{r4, lr}
c0dec5c4:	f811 4b01 	ldrb.w	r4, [r1], #1
c0dec5c8:	4291      	cmp	r1, r2
c0dec5ca:	f803 4f01 	strb.w	r4, [r3, #1]!
c0dec5ce:	d1f9      	bne.n	c0dec5c4 <memcpy+0xc>
c0dec5d0:	bd10      	pop	{r4, pc}

c0dec5d2 <memmove>:
c0dec5d2:	4288      	cmp	r0, r1
c0dec5d4:	b510      	push	{r4, lr}
c0dec5d6:	eb01 0402 	add.w	r4, r1, r2
c0dec5da:	d902      	bls.n	c0dec5e2 <memmove+0x10>
c0dec5dc:	4284      	cmp	r4, r0
c0dec5de:	4623      	mov	r3, r4
c0dec5e0:	d807      	bhi.n	c0dec5f2 <memmove+0x20>
c0dec5e2:	1e43      	subs	r3, r0, #1
c0dec5e4:	42a1      	cmp	r1, r4
c0dec5e6:	d008      	beq.n	c0dec5fa <memmove+0x28>
c0dec5e8:	f811 2b01 	ldrb.w	r2, [r1], #1
c0dec5ec:	f803 2f01 	strb.w	r2, [r3, #1]!
c0dec5f0:	e7f8      	b.n	c0dec5e4 <memmove+0x12>
c0dec5f2:	4402      	add	r2, r0
c0dec5f4:	4601      	mov	r1, r0
c0dec5f6:	428a      	cmp	r2, r1
c0dec5f8:	d100      	bne.n	c0dec5fc <memmove+0x2a>
c0dec5fa:	bd10      	pop	{r4, pc}
c0dec5fc:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0dec600:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0dec604:	e7f7      	b.n	c0dec5f6 <memmove+0x24>

c0dec606 <memset>:
c0dec606:	4402      	add	r2, r0
c0dec608:	4603      	mov	r3, r0
c0dec60a:	4293      	cmp	r3, r2
c0dec60c:	d100      	bne.n	c0dec610 <memset+0xa>
c0dec60e:	4770      	bx	lr
c0dec610:	f803 1b01 	strb.w	r1, [r3], #1
c0dec614:	e7f9      	b.n	c0dec60a <memset+0x4>
	...

c0dec618 <setjmp>:
c0dec618:	46ec      	mov	ip, sp
c0dec61a:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0dec61e:	f04f 0000 	mov.w	r0, #0
c0dec622:	4770      	bx	lr

c0dec624 <longjmp>:
c0dec624:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0dec628:	46e5      	mov	sp, ip
c0dec62a:	0008      	movs	r0, r1
c0dec62c:	bf08      	it	eq
c0dec62e:	2001      	moveq	r0, #1
c0dec630:	4770      	bx	lr
c0dec632:	bf00      	nop

c0dec634 <strcmp>:
c0dec634:	f810 2b01 	ldrb.w	r2, [r0], #1
c0dec638:	f811 3b01 	ldrb.w	r3, [r1], #1
c0dec63c:	2a01      	cmp	r2, #1
c0dec63e:	bf28      	it	cs
c0dec640:	429a      	cmpcs	r2, r3
c0dec642:	d0f7      	beq.n	c0dec634 <strcmp>
c0dec644:	1ad0      	subs	r0, r2, r3
c0dec646:	4770      	bx	lr

c0dec648 <strlen>:
c0dec648:	4603      	mov	r3, r0
c0dec64a:	f813 2b01 	ldrb.w	r2, [r3], #1
c0dec64e:	2a00      	cmp	r2, #0
c0dec650:	d1fb      	bne.n	c0dec64a <strlen+0x2>
c0dec652:	1a18      	subs	r0, r3, r0
c0dec654:	3801      	subs	r0, #1
c0dec656:	4770      	bx	lr

c0dec658 <strncpy>:
c0dec658:	3901      	subs	r1, #1
c0dec65a:	4603      	mov	r3, r0
c0dec65c:	b510      	push	{r4, lr}
c0dec65e:	b132      	cbz	r2, c0dec66e <strncpy+0x16>
c0dec660:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0dec664:	3a01      	subs	r2, #1
c0dec666:	f803 4b01 	strb.w	r4, [r3], #1
c0dec66a:	2c00      	cmp	r4, #0
c0dec66c:	d1f7      	bne.n	c0dec65e <strncpy+0x6>
c0dec66e:	441a      	add	r2, r3
c0dec670:	2100      	movs	r1, #0
c0dec672:	4293      	cmp	r3, r2
c0dec674:	d100      	bne.n	c0dec678 <strncpy+0x20>
c0dec676:	bd10      	pop	{r4, pc}
c0dec678:	f803 1b01 	strb.w	r1, [r3], #1
c0dec67c:	e7f9      	b.n	c0dec672 <strncpy+0x1a>

c0dec67e <C_home_boilerplate_14px_bitmap>:
c0dec67e:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0dec68e:	fc7b df0f 7ffe 7ff8                          {........

c0dec697 <C_home_boilerplate_14px>:
c0dec697:	000e 000e 0000 c67e c0de                    ......~...

c0dec6a1 <C_Information_circle_14px_bitmap>:
c0dec6a1:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0dec6b1:	e7ff 8fff 1ffc 1ee0                          .........

c0dec6ba <C_Information_circle_14px>:
c0dec6ba:	000e 000e 0000 c6a1 c0de                    ..........

c0dec6c4 <C_Quit_14px_bitmap>:
c0dec6c4:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0dec6d4:	6680 9801 7f06 fff9                          .f.......

c0dec6dd <C_Quit_14px>:
c0dec6dd:	000e 000e 0000 c6c4 c0de                    ..........

c0dec6e7 <C_Switch_Off_8px_bitmap>:
c0dec6e7:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0dec6f3 <C_Switch_Off_8px>:
c0dec6f3:	000c 0008 0000 c6e7 c0de                    ..........

c0dec6fd <C_Switch_On_8px_bitmap>:
c0dec6fd:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0dec709 <C_Switch_On_8px>:
c0dec709:	000c 0008 0000 c6fd c0de                    ..........

c0dec713 <C_icon_back_x_bitmap>:
c0dec713:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0dec723:	003f 0078 00c0 0000                          ?.x......

c0dec72c <C_icon_back_x>:
c0dec72c:	000e 000e 0000 c713 c0de                    ..........

c0dec736 <C_icon_coggle_bitmap>:
c0dec736:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0dec746:	807f 00b4 00c0 0000                          .........

c0dec74f <C_icon_coggle>:
c0dec74f:	000e 000e 0000 c736 c0de                    ......6...

c0dec759 <C_icon_crossmark_bitmap>:
c0dec759:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0dec769:	8373 1c87 600e 0018                          s....`...

c0dec772 <C_icon_crossmark>:
c0dec772:	000e 000e 0000 c759 c0de                    ......Y...

c0dec77c <C_icon_down_bitmap>:
c0dec77c:	2184 8024                                   .!$.

c0dec780 <C_icon_down>:
c0dec780:	0007 0004 0000 c77c c0de                    ......|...

c0dec78a <C_icon_left_bitmap>:
c0dec78a:	8882 80a0                                   ....

c0dec78e <C_icon_left>:
c0dec78e:	0004 0007 0000 c78a c0de                    ..........

c0dec798 <C_icon_right_bitmap>:
c0dec798:	5110 1014                                   .Q..

c0dec79c <C_icon_right>:
c0dec79c:	0004 0007 0000 c798 c0de                    ..........

c0dec7a6 <C_icon_up_bitmap>:
c0dec7a6:	4812 1042                                   .HB.

c0dec7aa <C_icon_up>:
c0dec7aa:	0007 0004 0000 c7a6 c0de                    ..........

c0dec7b4 <C_icon_validate_14_bitmap>:
c0dec7b4:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0dec7c4:	a3b3 a3a3 f0b2                               ......P

c0dec7cb <C_icon_validate_14>:
c0dec7cb:	000e 000e 0100 c7b4 c0de                    ..........

c0dec7d5 <C_icon_warning_bitmap>:
c0dec7d5:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0dec7e5:	e01f 801f 001e 0018                          .........

c0dec7ee <C_icon_warning>:
c0dec7ee:	000e 000e 0000 c7d5 c0de                    ..........

c0dec7f8 <C_app_boilerplate_14px_bitmap>:
c0dec7f8:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0dec808:	0384 00f0 0000 0000                          .........

c0dec811 <C_app_boilerplate_14px>:
c0dec811:	000e 000e 0000 c7f8 c0de 7544 6d6d 2079     ..........Dummy 
c0dec821:	0032 6552 6976 7765 7420 6172 736e 6361     2.Review transac
c0dec831:	6974 6e6f 740a 206f 6573 646e 4220 4c4f     tion.to send BOL
c0dec841:	2500 2073 2528 2f64 6425 0029 704f 7265     .%s (%d/%d).Oper
c0dec851:	7461 6f69 206e 6973 6e67 6465 4200 696c     ation signed.Bli
c0dec861:	646e 732d 6769 006e 2e30 2e30 0031 704f     nd-sign.0.0.1.Op
c0dec871:	7265 7461 6f69 206e 6572 656a 7463 6465     eration rejected
c0dec881:	5000 6572 7373 7220 6769 7468 6220 7475     .Press right but
c0dec891:	6f74 206e 6f74 6320 6e6f 6974 756e 2065     ton to continue 
c0dec8a1:	656d 7373 6761 2065 726f 0820 7270 7365     message or .pres
c0dec8b1:	2073 6f62 6874 7420 206f 6b73 7069 0008     s both to skip..
c0dec8c1:	6d41 756f 746e 4100 6464 6572 7373 7620     Amount.Address v
c0dec8d1:	7265 6669 6569 0064 7241 2065 6f79 2075     erified.Are you 
c0dec8e1:	7573 6572 7420 0a6f 6c61 6f6c 2077 7564     sure to.allow du
c0dec8f1:	6d6d 2079 0a32 6e69 7420 6172 736e 6361     mmy 2.in transac
c0dec901:	6974 6e6f 3f73 5400 6172 736e 6361 6974     tions?.Transacti
c0dec911:	6e6f 7320 6769 656e 0064 6f54 6120 6363     on signed.To acc
c0dec921:	7065 2074 6972 6b73 202c 7270 7365 2073     ept risk, press 
c0dec931:	6f62 6874 6220 7475 6f74 736e 4400 7665     both buttons.Dev
c0dec941:	6c65 706f 7265 4500 616e 6c62 6465 4100     eloper.Enabled.A
c0dec951:	6c6c 776f 6420 6d75 796d 3120 690a 206e     llow dummy 1.in 
c0dec961:	7274 6e61 6173 7463 6f69 736e 5300 6769     transactions.Sig
c0dec971:	206e 656d 7373 6761 0065 654d 7373 6761     n message.Messag
c0dec981:	2065 6973 6e67 6465 5300 6769 206e 7274     e signed.Sign tr
c0dec991:	6e61 6173 7463 6f69 006e 6552 656a 7463     ansaction.Reject
c0dec9a1:	7420 6172 736e 6361 6974 6e6f 4c00 6465      transaction.Led
c0dec9b1:	6567 0072 6341 6563 7470 7220 7369 206b     ger.Accept risk 
c0dec9c1:	6e61 2064 6973 6e67 6d20 7365 6173 6567     and sign message
c0dec9d1:	4100 6c6c 776f 6420 6d75 796d 3220 690a     .Allow dummy 2.i
c0dec9e1:	206e 7274 6e61 6173 7463 6f69 736e 5600     n transactions.V
c0dec9f1:	7265 6973 6e6f 4300 6e61 6563 006c 2e20     ersion.Cancel. .
c0deca01:	2e2e 0020 6441 7264 7365 2073 6576 6972     .. .Address veri
c0deca11:	6966 6163 6974 6e6f 6320 6e61 6563 6c6c     fication cancell
c0deca21:	6465 4400 7369 6261 656c 0064 7041 2070     ed.Disabled.App 
c0deca31:	6573 7474 6e69 7367 4100 6363 7065 2074     settings.Accept 
c0deca41:	6972 6b73 6120 646e 7320 6769 206e 7274     risk and sign tr
c0deca51:	6e61 6173 7463 6f69 006e 2e2e 002e 6c42     ansaction.....Bl
c0deca61:	6e69 2064 6973 6e67 6e69 2067 6861 6165     ind signing ahea
c0deca71:	0064 6341 6563 7470 7220 7369 206b 6e61     d.Accept risk an
c0deca81:	2064 6973 6e67 6f20 6570 6172 6974 6e6f     d sign operation
c0deca91:	4d00 7365 6173 6567 7220 6a65 6365 6574     .Message rejecte
c0decaa1:	0064 3130 3332 3534 3736 3938 4241 4443     d.0123456789ABCD
c0decab1:	4645 4200 4c4f 2520 2a2e 0073 6441 7264     EF.BOL %.*s.Addr
c0decac1:	7365 0073 6142 6b63 4400 6d75 796d 3120     ess.Back.Dummy 1
c0decad1:	4900 7520 646e 7265 7473 6e61 2c64 6320     .I understand, c
c0decae1:	6e6f 6966 6d72 5400 6172 736e 6361 6974     onfirm.Transacti
c0decaf1:	6e6f 7220 6a65 6365 6574 0064 7041 2070     on rejected.App 
c0decb01:	6e69 6f66 5300 6769 206e 706f 7265 7461     info.Sign operat
c0decb11:	6f69 006e 2e2e 5200 6a65 6365 2074 656d     ion....Reject me
c0decb21:	7373 6761 0065 6552 656a 7463 6f20 6570     ssage.Reject ope
c0decb31:	6172 6974 6e6f 5600 7265 6669 2079 4f42     ration.Verify BO
c0decb41:	204c 6461 7264 7365 0073 4b5a 4f4e 4858     L address.ZKNOXH
c0decb51:	0057 7061 2070 7369 7220 6165 7964 5100     W.app is ready.Q
c0decb61:	6975 2074 7061 0070 6f43 666e 7269 006d     uit app.Confirm.
c0decb71:	0000 7300 a7ed 2953 7d9d 3348 d839 0908     ...s..S).}H39...
c0decb81:	d8a1 5305 a4bd ff02 5bfe fffe ffff 00ff     ...S.....[......
c0decb91:	0000 0501 98ce 1bc6 f405 e27f e9ea 42a5     ...............B
c0decba1:	99bd b2f6 82e7 2346 4016 45b5 fe95 d5bf     ......F#.@.E....
c0decbb1:	b81e 1c53 eec6 1338 1c9c 0211 5323 8c7a     ..S...8.....#Sz.
c0decbc1:	9de7 7e06 cc58 6710 fbc6 d8b7 a1b3 8db0     ...~X..g........
c0decbd1:	8ffc 2708 bc4d d1e8 7951 9b96 d4c0 a79f     ...'M...Qy......
c0decbe1:	bd25 9ddf 55e5 bae0 696a 6a3c 52db 9efc     %....U..ji<j.R..
c0decbf1:	a8e7 1c2c 69fb cad4 5f67 0c52 76ce 0202     ..,..i..g_R..v..
c0decc01:	7668 ff00 878f 7400 0419 7471 06fd 28b5     hv.....t..qt...(
c0decc11:	e776 06e1 890c 5cce 3426 3705 080a d0b6     v......\&4.7....
c0decc21:	2b30 ab0b ed3e 39b8 ee20 670a 9772 39dc     0+..>..9 ..gr..9
c0decc31:	2621 70f1 89a5 644a 5444 d038 ac15 ba32     !&.p..JdDT8...2.
c0decc41:	0f36 2c09 44de b1ba c21f d4b7 c0b5 16d2     6..,.D..........
c0decc51:	8c22 a3ce c03b a0a7 138c d4c0 17c1 dd4d     "...;.........M.
c0decc61:	6a88 4cac 6656 f4e1 1f83 6c00 1995 6bd3     .j.LVf.....l...k
c0decc71:	e82c 0082 0000 0000 0000 0000 0000 0000     ,...............
	...
c0decc91:	9202 63fc c189 3326 67c2 c6cb 3b6e 6bf8     ...c..&3.g..n;.k
c0decca1:	b6e3 cbd8 6766 7771 4fe5 b392 f269 18f5     ....fgqw.O..i...
c0deccb1:	588d 73e7 a7ed 2953 7d9d 3348 d839 0908     .X.s..S).}H39...
c0deccc1:	d8a1 5305 a4bd ff02 5bfe fffe ffff fffe     ...S.....[......
c0deccd1:	ffff 00fc 0000 0000 0000 0000 0000 0000     ................
	...
c0deccf1:	9202 30f8 4e64 e172 a031 b829 4550 81b6     ...0dNr.1.).PE..
c0decd01:	5881 285d e833 7948 70b9 4391 f5e1 f093     .X](3.Hy.p.C....
c0decd11:	0000                                         ...

c0decd14 <handler_cmd_verify_dilithium.sig>:
c0decd14:	7c23 887b 7320 2c3d 53f3 f845 51a8 6099     #|{. s=,.SE..Q.`
c0decd24:	6761 7055 42ce 3e92 cde2 7e43 b441 b3a9     agUp.B.>..C~A...
c0decd34:	4891 711f e9ec b6e0 584c 734a 0d71 688d     .H.q....LXJsq..h
c0decd44:	938a c00a 02bf f5ab 6e7c 0947 24e7 e4a9     ........|nG..$..
c0decd54:	8c17 9062 bc18 730b 7ab3 7d08 e7d3 8dea     ..b....s.z.}....
c0decd64:	5ba6 4511 febc 1aed 127c 6023 af7e ef0a     .[.E....|.#`~...
c0decd74:	ab04 602b 74d4 9460 625c 4f1a 5693 0b13     ..+`.t`.\b.O.V..
c0decd84:	5ecb f094 710c 1c0d 99fe 5ec0 cfa0 079e     .^...q.....^....
c0decd94:	5779 367f 5671 1603 24bf 9cec 57f2 132b     yW.6qV...$...W+.
c0decda4:	a5e9 5f0d cabc dc4d 81e4 40f7 1ddb 207e     ..._..M....@..~ 
c0decdb4:	6802 9645 d629 b56e b5a0 3a60 46d6 4a8a     .hE.).n...`:.F.J
c0decdc4:	4904 848d 62df 39ee 6f4d a3c5 b1a7 9def     .I...b.9Mo......
c0decdd4:	cee0 88be 8e16 6f5d 1e77 1efc 15a3 8be7     ......]ow.......
c0decde4:	cb83 0e2c 8ff8 7e16 70e1 fddf 9adb a5ca     ..,....~.p......
c0decdf4:	38df f10a 03f8 7453 6a6b 3055 fdc9 45e8     .8....StkjU0...E
c0dece04:	ec8e b499 dc78 67c6 3632 77b2 1cc4 9ede     ....x..g26.w....
c0dece14:	58ba 986b 1408 cf6c 6fae bed8 d0a1 4f65     .Xk...l..o....eO
c0dece24:	ca65 58c7 b73a 0705 b111 22a3 dad8 6a6c     e..X:......"..lj
c0dece34:	16ad 8a60 5390 55a6 0d58 0166 c96f face     ..`..S.UX.f.o...
c0dece44:	7fa1 fee0 08d5 bd0d aa4d 9296 67f9 2494     ........M....g.$
c0dece54:	283a 6713 d57a e142 64e1 a9ef 1b34 fdd0     :(.gz.B..d..4...
c0dece64:	95ba 1b6a 594b 1a4f fb70 143c d1ae 7b21     ..j.KYO.p.<...!{
c0dece74:	1d86 74cb 569a 81b2 5d20 f57d 72d4 8fa0     ...t.V.. ]}..r..
c0dece84:	76b3 5595 dd24 01a1 cc7b e88b 6857 1d19     .v.U$...{...Wh..
c0dece94:	180e 0f57 f2a8 bd63 2a59 538d cf58 6a7f     ..W...c.Y*.SX..j
c0decea4:	8ec2 660c 7647 f5ac 681b f29c 66e9 cb03     ...fGv...h...f..
c0deceb4:	e17d 7849 56cc 08f0 a219 b517 5eae 083c     }.Ix.V.......^<.
c0decec4:	483c 5a7f c023 3979 7c73 d69e a5b2 041e     <H.Z#.y9s|......
c0deced4:	9df3 69dc 56da 889b 4f05 47c6 0969 5680     ...i.V...O.Gi..V
c0decee4:	35d8 7539 0c9d 87c4 11a7 5b12 3df7 f6e1     .59u.......[.=..
c0decef4:	1667 f595 3663 5345 6c4e d3b2 6474 3c5c     g...c6ESNl..td\<
c0decf04:	d39f 539c c447 2fb8 a4b1 fb52 13b6 3c7f     ...SG../..R....<
c0decf14:	0e47 fcb1 4072 c2a5 81a2 dda1 6745 0708     G...r@......Eg..
c0decf24:	2b55 0dcc 0a16 7567 dfb6 bceb 5068 b70e     U+....gu....hP..
c0decf34:	1e6e db96 a01c 14f3 c913 876f 4a35 07b7     n.........o.5J..
c0decf44:	771c c986 7de6 640d 2876 d62b af76 fe23     .w...}.dv(+.v.#.
c0decf54:	71eb b727 4d86 a7ac 992f 854a 10bd f6f1     .q'..M../.J.....
c0decf64:	a16e 0824 f982 28b6 f195 0a9c d1aa 35cf     n.$....(.......5
c0decf74:	a8cd 311b 9319 4d19 7397 d937 07a1 a728     ...1...M.s7...(.
c0decf84:	d8f3 8d2c e37f d75c 7d04 3c23 fe8e 9b1d     ..,...\..}#<....
c0decf94:	b266 8c82 589b c22d 60e4 8356 e6ac 76be     f....X-..`V....v
c0decfa4:	35ba 6d1b 1d7a 3ab2 8581 174d 60e9 7d1e     .5.mz..:..M..`.}
c0decfb4:	9bc6 aeea 2664 30ef 0073 8d50 4b20 3043     ....d&.0s.P. KC0
c0decfc4:	e026 4d53 f0d0 3b12 2506 2425 9f76 862f     &.SM...;.%%$v./.
c0decfd4:	1c77 f58c 82ee b3f0 01b3 2808 00a3 8857     w..........(..W.
c0decfe4:	af71 609b f331 4243 2dcb a45e 3c09 b650     q..`1.CB.-^..<P.
c0decff4:	b121 4802 a3d0 1c2c 68d5 a54c 5f0b 8698     !..H..,..hL.._..
c0ded004:	dfe2 ec6d 21a3 d53b 79cd 3bd6 c85d 6b26     ..m..!;..y.;].&k
c0ded014:	4deb be80 d8ee 9e2c 01e8 35ed a9c6 99f6     .M....,....5....
c0ded024:	e847 e706 1791 5b3b 3e88 1920 7325 5ee8     G.....;[.> .%s.^
c0ded034:	0370 9cf9 b45a e717 032f 3e56 3bb9 3f16     p...Z.../.V>.;.?
c0ded044:	234c 6700 8c5e b91a 0cf8 2cf6 b188 6f87     L#.g^......,...o
c0ded054:	bdd0 5842 e0e0 da83 2e71 1f34 cebb 37ef     ..BX....q.4....7
c0ded064:	9ed5 0f09 ca6e b30c e6e8 feb7 7f1c c335     ....n.........5.
c0ded074:	dba9 8c95 73d2 c5fc b281 e385 3c0e 7135     .....s.......<5q
c0ded084:	014f edd2 06a3 e6a6 966d d409 88ae 8b24     O.......m.....$.
c0ded094:	6af7 1a99 8bcb 3283 aa55 cbaf 4927 008d     .j.....2U...'I..
c0ded0a4:	ff9e a50a 4e26 7418 7eb1 46b6 cedf 0747     ....&N.t.~.F..G.
c0ded0b4:	bfe8 46b9 bfba f7a4 feaf 8c38 5606 dcb9     ...F......8..V..
c0ded0c4:	8b4a 67bc 640e 26d4 db76 3c5b 17d0 6dce     J..g.d.&v.[<...m
c0ded0d4:	e252 7d54 7443 665e 9bed a21c 8522 5494     R.T}Ct^f...."..T
c0ded0e4:	4c6b 632c 526f de4e 5dc6 de9a a960 3bfd     kL,coRN..]..`..;
c0ded0f4:	8625 16af da9a 5764 854d 4c59 acba 385f     %.....dWM.YL.._8
c0ded104:	d327 31c4 517e 2c72 7f49 dc09 4baa 4f7c     '..1~Qr,I....K|O
c0ded114:	bd03 ef4f a83b d347 258d cc2f d7ec 07e2     ..O.;.G..%/.....
c0ded124:	0f83 d6e4 3307 95b4 b527 9ed2 d271 36b7     .....3..'...q..6
c0ded134:	7da9 349d 5f47 81b0 bcd0 1088 7f50 2a67     .}.4G_......P.g*
c0ded144:	32e0 bc32 a332 713c 3f1a 8212 e16f 1f80     .22.2.<q.?..o...
c0ded154:	9640 6120 d3e3 ebfd 6833 1ee9 89ab da2c     @. a....3h....,.
c0ded164:	8fc1 060e 31a4 672e 45f4 8d57 afbe f554     .....1.g.EW...T.
c0ded174:	cbc3 aedb b20a 84dd 5a52 2532 373b d820     ........RZ2%;7 .
c0ded184:	9b3c 503e f0ec 4c55 d189 d35b b052 6b63     <.>P..UL..[.R.ck
c0ded194:	b740 389d 5cfc 5eca 6c69 f01f 2fcd 3409     @..8.\.^il.../.4
c0ded1a4:	3efb dcaa 1bcc 5f6d 55ac b644 5cfe 0a6e     .>....m_.UD..\n.
c0ded1b4:	7c31 cf4f 2bff 701f 8b71 4e7e f37c 3bdb     1|O..+.pq.~N|..;
c0ded1c4:	c0f1 0302 f51e 040c df9b 3bfc 3578 0b8e     ...........;x5..
c0ded1d4:	0ee2 7eb5 1bd4 04ae d0cd 9190 efaf 57a4     ...~...........W
c0ded1e4:	aea8 33bb 3776 e00e 7f4a d448 b744 17f1     ...3v7..J.H.D...
c0ded1f4:	da0e 8eb6 970b 8f0e 85c2 7609 6c53 bbe3     ...........vSl..
c0ded204:	5814 f06a ae6b 17ac 7812 e9a5 e049 f70a     .Xj.k....x..I...
c0ded214:	b0cd b8d4 2441 cc4c 79cc f37f 41fd 0787     ....A$L..y...A..
c0ded224:	4c7d 339d 3c87 0bab e6f6 5990 901b f821     }L.3.<.....Y..!.
c0ded234:	520c 74d4 0594 c11a 75ff 4b55 196b 9007     .R.t.....uUKk...
c0ded244:	c53d ec30 426b 25d0 23f7 d4d7 39e5 2e22     =.0.kB.%.#...9".
c0ded254:	3e68 5347 4125 5ff2 b014 07c0 93b0 ccb7     h>GS%A._........
c0ded264:	c0bf 2e17 e578 5143 637f 4921 42d8 1a82     ....x.CQ.c!I.B..
c0ded274:	412b 0d4d aab9 39c1 5e8b c299 ef69 304e     +AM....9.^..i.N0
c0ded284:	133e f973 dfbc 1182 5cb5 ec65 f919 043a     >.s......\e...:.
c0ded294:	a722 8c14 d4ab 11c3 1af1 ef49 57c7 4d53     ".........I..WSM
c0ded2a4:	ca00 c8e3 b84c e949 1975 4531 8953 f817     ....L.I.u.1ES...
c0ded2b4:	2512 96cc 7b45 a2c1 8fab 2aa7 85fa dc63     .%..E{.....*..c.
c0ded2c4:	4731 ff66 9ad1 db10 da92 9abf 5606 6706     1Gf..........V.g
c0ded2d4:	d328 f584 2298 a99f 904e 8a6b 2232 dfb0     (...."..N.k.2"..
c0ded2e4:	64e1 d9af 16c1 1cf3 5e31 3fe5 0bfb 580d     .d......1^.?...X
c0ded2f4:	e02e faab 59d2 b4f1 5c09 a300 6747 d43f     .....Y...\..Gg?.
c0ded304:	7ee1 d8a7 74f9 f2db 90ed 1c31 67b1 1ad6     .~...t....1..g..
c0ded314:	eaeb 0b7b a317 5b4f 1f72 afec bccf ea3f     ..{...O[r.....?.
c0ded324:	09c7 811b 1f85 5b8a 1a05 8edd 4a72 3350     .......[....rJP3
c0ded334:	a586 703b 06d1 6ad8 8199 573d f79e 065a     ..;p...j..=W..Z.
c0ded344:	f75c c10c 9dab c380 019a c5d3 6094 ef49     \............`I.
c0ded354:	8ded 384e 5c3b 58a6 a927 e0ce ba8c 2a79     ..N8;\.X'.....y*
c0ded364:	3390 f747 7a54 7464 8e5f d717 0d1a d740     .3G.Tzdt_.....@.
c0ded374:	151d 4b48 689a c814 3062 05aa 9e53 7c90     ..HK.h..b0..S..|
c0ded384:	dadd fb5e 6231 56c3 58f3 bc29 a232 c88b     ..^.1b.V.X).2...
c0ded394:	c90e 4e45 fe5b 4ac2 d76d 7546 b9e3 6413     ..EN[..Jm.Fu...d
c0ded3a4:	3d7f 6a17 7367 a0c1 0ee4 17dd d1ec ee3a     .=.jgs........:.
c0ded3b4:	9334 0b71 5411 55f8 59f2 621e 70cc c673     4.q..T.U.Y.b.ps.
c0ded3c4:	bb08 77aa 4e10 498d b693 f87c 651f 89af     ...w.N.I..|..e..
c0ded3d4:	c9c8 691d 755f da60 8aa6 41d1 cb60 f47d     ...i_u`....A`.}.
c0ded3e4:	a6e7 181b 2560 2053 b8db 6713 f16d 5c28     ....`%S ...gm.(\
c0ded3f4:	5a01 99ec 7b4d cec0 7529 1614 1eb3 5bd1     .Z..M{..)u.....[
c0ded404:	1769 6829 aadd 5651 b892 bcfe 4ecb 9832     i.)h..QV.....N2.
c0ded414:	bfe8 9c16 b920 9065 803b 6ff2 a620 bda3     .... .e.;..o ...
c0ded424:	ac5f bcd1 c638 17c8 3be2 51f3 ff87 f975     _...8....;.Q..u.
c0ded434:	ae82 d69e 435a 19f6 619b 84ae 3e68 ef1b     ....ZC...a..h>..
c0ded444:	9ccf 7801 eab8 9028 6af9 086e 3dd3 c344     ...x..(..jn..=D.
c0ded454:	50ce ccd9 1cbd 96df 6bdf 5e2f 1c8f b06c     .P.......k/^..l.
c0ded464:	0043 f6f7 83d4 8310 ae90 eda8 b031 327b     C...........1.{2
c0ded474:	7cc8 2a54 75b4 6d94 5e52 c124 2d6b fb0a     .|T*.u.mR^$.k-..
c0ded484:	6886 477e e7cc b5ab fcb7 d641 95a9 593a     .h~G......A...:Y
c0ded494:	b2a8 d021 b757 8493 fa5c 14b4 6b72 5337     ..!.W...\...rk7S
c0ded4a4:	7cd8 0202 fb53 7293 6322 eece a693 cf6a     .|..S..r"c....j.
c0ded4b4:	3c16 eb86 d67b 3621 0ef7 14c4 56b5 6228     .<..{.!6.....V(b
c0ded4c4:	20f1 ee2d feb9 79af 4181 e26b 9ca0 7c0e     . -....y.Ak....|
c0ded4d4:	181f 95ee 4b31 d054 7b49 29ac d986 9e0e     ....1KT.I{.)....
c0ded4e4:	99d3 2002 6ae9 62e1 112e eef2 c191 61b1     ... .j.b.......a
c0ded4f4:	e728 4a38 fa87 67bc c731 b0b0 b70b fd07     (.8J...g1.......
c0ded504:	be1a 9203 5ec9 434c 6054 7db4 9921 9b82     .....^LCT`.}!...
c0ded514:	6b07 f64e 1ab1 28d3 ca25 57d8 a694 ee74     .kN....(%..W..t.
c0ded524:	d6fd 3d17 39ca bfdc 7c39 951b 3831 720a     ...=.9..9|..18.r
c0ded534:	42d1 d4b7 5d00 4f88 d5cb 1192 7882 fc20     .B...].O.....x .
c0ded544:	2b5b 05c6 c7e5 c317 121e d14c 71f5 d480     [+........L..q..
c0ded554:	59ba 3388 97f0 6f05 9b80 2171 be4f 5fe2     .Y.3...o..q!O.._
c0ded564:	e77f 4ef1 f83d 6bcb 6cbf 3d3f 28e8 f785     ...N=..k.l?=.(..
c0ded574:	fd1b 4e87 7a6b 1dd1 21b7 d70f 0c3c aacb     ...Nkz...!..<...
c0ded584:	f060 a808 596a 86a9 0c0c 1685 da72 b017     `...jY......r...
c0ded594:	d377 7759 2cc5 5bf3 6df0 0f45 c03e 9761     w.Yw.,.[.mE.>.a.
c0ded5a4:	627f 2473 5ac5 a3ad c661 b3ab 77de 28e8     .bs$.Z..a....w.(
c0ded5b4:	3aa6 6def 7cc3 0cdf 3baf c398 09a4 cde3     .:.m.|...;......
c0ded5c4:	d2bd d0ed 4fdc 1aeb de6e f78d 2c25 58b6     .....O..n...%,.X
c0ded5d4:	3f41 7222 4281 4d30 027d 6eb0 8b43 8110     A?"r.B0M}..nC...
c0ded5e4:	774f a431 e789 6b9b 6b8a ca0f 636b 9afe     Ow1....k.k..kc..
c0ded5f4:	ff61 9429 4b70 f9df e118 6aae df99 d307     a.).pK.....j....
c0ded604:	8ae1 6821 4690 9753 edb6 f4a5 d27a 16f2     ..!h.FS.....z...
c0ded614:	7581 b844 0c84 f16a 4d70 719a 2ca0 b673     .uD...j.pM.q.,s.
c0ded624:	9fa2 fbb6 7817 977d 98a8 9047 47a3 0536     .....x}...G..G6.
c0ded634:	0706 3d09 553f 9b7d afa5 ceb8 d4d3 e1de     ...=?U}.........
c0ded644:	eee8 f8f1 01fc 4717 554f 968c b4b2 d6c2     .......GOU......
c0ded654:	f8d9 9143 aa98 cac0 d3d2 edea 1a0d 3d24     ..C...........$=
c0ded664:	4544 8664 dccf e6e4 00f1 0000 0000 0000     DEd.............
	...
c0ded684:	2215 392c 1cd8 8d4d 4f73 fbcb deea 3f3d     .",9..M.sO....=?
c0ded694:	038a aa9f 2c2a 5799 35e8 55ad 2eb2 bf75     ....*,.W.5.U..u.
c0ded6a4:	bb57 6a55                                    W.Uj.

c0ded6a9 <handler_cmd_verify_dilithium.pk>:
c0ded6a9:	7bdc a2c9 b6e0 66dc 3a82 fbe4 97de 0c1c     .{.....f.:......
c0ded6b9:	46fc d9f9 bf6b ebbe 47b3 e00a a0a5 9f13     .F..k....G......
c0ded6c9:	6add e56c 76bc 4fe9 9eaa 5092 d4ab e0ce     .jl..v.O...P....
c0ded6d9:	f12c 46ee e9a8 e19c 732d 7895 a71f 9051     ,..F....-s.x..Q.
c0ded6e9:	2721 a33d 5536 7219 fb4e 79e2 d6ad 5fc3     !'=.6U.rN..y..._
c0ded6f9:	c992 2bd4 2803 f132 29bf beeb 3ecd 7ac8     ...+.(2..)...>.z
c0ded709:	f33a 33da 11c6 f3f7 a35f ca5a 74b1 4f02     :..3...._.Z..t.O
c0ded719:	8911 e279 f23b 06fe 6992 eca2 fb45 b9c1     ..y.;....i..E...
c0ded729:	fbc1 1f0e 4805 6a6a 3e83 8ab4 29dc 6460     .....Hjj.>...)`d
c0ded739:	9a1d ebf6 738b b181 55ec 89d8 6bf2 4d08     .....s...U...k.M
c0ded749:	a1df edc9 969b 342d 9426 dece 8283 0953     ......-4&.....S.
c0ded759:	dbd9 d66b 75ba 1382 3425 1e86 a044 8843     ..k..u..%4..D.C.
c0ded769:	94a6 2424 7611 341d c0e7 d285 b782 c623     ..$$.v.4......#.
c0ded779:	4859 aca2 4d76 0297 8ebd fed7 3199 d8d7     YH..vM.......1..
c0ded789:	4a70 e639 8850 f344 48f8 c343 5905 e64f     pJ9.P.D..HC..YO.
c0ded799:	40e5 084e 8ef1 39d0 65ac cb63 34aa cab0     .@N....9.ec..4..
c0ded7a9:	3238 9902 25d6 c06e 8df7 1f42 8108 d459     82...%n...B...Y.
c0ded7b9:	c49d cb39 39c5 58a5 a384 4eeb 9cfc 90f1     ..9..9.X...N....
c0ded7c9:	2fb4 3471 cb41 0097 4542 14d4 a337 7b9b     ./q4A...BE..7..{
c0ded7d9:	fc77 2f60 fdbb 9a61 3642 1437 65b2 3c17     w.`/..a.B67..e.<
c0ded7e9:	68ae 8afd 3c1b bda2 ae30 c560 563e 5704     .h...<..0.`.>V.W
c0ded7f9:	4a7a 1f3b 0615 97e6 74c3 db32 83d8 3a55     zJ;......t2...U:
c0ded809:	8dac 2a38 253d f50c 9eb2 1b4d cbe2 53cd     ..8*=%....M....S
c0ded819:	f01f 7ee0 c189 dbf7 d4c8 9a52 beee b555     ...~......R...U.
c0ded829:	4dce 1402 debf 9ec6 0b08 efd3 cc36 a5a6     .M..........6...
c0ded839:	3349 eff1 372f 7c86 380d 58fd b865 2979     I3../7.|.8.Xe.y)
c0ded849:	5811 c708 59e2 5854 93e9 ccba 5a6c 9f3b     .X...YTX....lZ;.
c0ded859:	2550 1e00 419b 7744 bf08 a0ba 2e46 63fa     P%...ADw....F..c
c0ded869:	6c87 f742 9069 438b 542f 5085 398a 2432     .lB.i..C/T.P.92$
c0ded879:	0596 d751 ad7e f4fa 1c41 49bc fffd f246     ..Q.~...A..I..F.
c0ded889:	55f1 d6dd 30ec 7986 b705 8809 a08c 0ff3     .U...0.y........
c0ded899:	5f93 d7b8 80f4 fc3c 5f7a 9077 18ca 991d     ._....<.z_w.....
c0ded8a9:	21ca 62f2 691d c6a5 9cd4 b476 9d96 27a6     .!.b.i....v....'
c0ded8b9:	a340 4778 3203 09b3 ab47 cc31 9bdb c7a0     @.xG.2..G.1.....
c0ded8c9:	25b6 9e87 4bec 1fd8 0002 23ba 4a50 c37d     .%...K.....#PJ}.
c0ded8d9:	18b1 2abc 14b1 f15d f33a ccc8 f539 8777     ...*..].:...9.w.
c0ded8e9:	843b 1b91 853d bffb b14c 4d9e b136 930a     ;...=...L..M6...
c0ded8f9:	eb8e b578 dc99 6186 d65f c6ce 7beb 7a8f     ..x....a_....{.z
c0ded909:	5ffa 6b6d 9ee1 16a8 d330 cf6c f4b2 de87     ._mk....0.l.....
c0ded919:	d050 46cf 8dda e33f 2851 0412 0e3c f23e     P..F..?.Q(..<.>.
c0ded929:	23d7 b01f a3b0 0f5a 83b2 30be 24a1 8077     .#....Z....0.$w.
c0ded939:	0af3 29e0 8b4e 586f 3897 db3e 5589 f595     ...)N.oX.8>..U..
c0ded949:	5277 f54d 9345 f9cd b427 7696 ee16 1339     wRM.E...'..v..9.
c0ded959:	d6e4 9bb2 bd0d 337c a4a2 4e5e b1f1 4e95     ......|3..^N...N
c0ded969:	d9a5 e31c fc7e 0213 cee7 a902 9573 5d56     ....~.......s.V]
c0ded979:	a5a2 d3c5 b0fd 76d8 e984 c0b1 07ad 33ec     .......v.......3
c0ded989:	2ddf d5fa e228 09ea d266 7da4 eed5 e788     .-..(...f..}....
c0ded999:	657d 0d3c 4f00 01ab f065 7c75 a44d f30a     }e<..O..e.u|M...
c0ded9a9:	e727 2519 c736 4799 0aa8 7a82 10a2 ac7d     '..%6..G...z..}.
c0ded9b9:	e3fa bfde fac8 d6d3 80e0 d976 c538 a210     ..........v.8...
c0ded9c9:	bd76 72f6 1f1a 7c08 69b1 5051 ad28 e25c     v..r...|.iQP(.\.
c0ded9d9:	107a ab47 28d9 9309 a64c 893b 713f a3f9     z.G..(..L.;.?q..
c0ded9e9:	994a fdc0 3130 470c aae9 3937 0a4d 3bb7     J...01.G..79M..;
c0ded9f9:	4d25 a63c 9c9d 4955 47c9 ae9a 2624 c54a     %M<...UI.G..$&J.
c0deda09:	64ea fdd3 1c82 6239 77ec 09e7 d3f9 c70b     .d....9b.w......
c0deda19:	5ab6 e452 168c 06e8 5503 ac8c 81a1 1114     .ZR......U......
c0deda29:	15c3 1f5d 9f94 cfc9 a99a 5a38 9971 9be9     ..].......8Zq...
c0deda39:	7ae7 fa66 eed7 12d9 de58 b255 c8c4 9a3f     .zf.....X.U...?.
c0deda49:	0a05 bede f0a5 5897 0df4 4aac 391c e84e     .......X...J.9N.
c0deda59:	87d6 9187 d250 2664 5a89 93b1 148e 11ae     ....P.d&.Z......
c0deda69:	76b3 4c25 fc91 3061 6943 f896 43ed 27bd     .v%L..a0Ci...C.'
c0deda79:	20be 90ec 1167 111c c96e c24c 6cb0 1ac9     . ..g...n.L..l..
c0deda89:	c513 0bd1 7ebd eaec 9247 7bf1 772b 1e63     .....~..G..{+wc.
c0deda99:	45f1 fbe9 a841 aa3e c211 2ab7 fb48 fd90     .E..A.>....*H...
c0dedaa9:	88bd 4c64 df4e b28a ce0d 1831 4b36 6a27     ..dLN.....1.6K'j
c0dedab9:	23c1 367b 92c8 346e ab6a 115a a01a 34bf     .#{6..n4j.Z....4
c0dedac9:	511c 7b8b 9eff bb9d cb8b 2847 1b60 6037     .Q.{......G(`.7`
c0dedad9:	3e66 6567 3103 fbe6 ac54 fc82 4c41 ddb8     f>ge.1..T...AL..
c0dedae9:	16fc 250a 1e31 27c5 e42d 1762 f8fe 92b9     ...%1..'-.b.....
c0dedaf9:	89ff 4f75 e3be f251 b91b 6c0b 0797 518b     ..uO..Q....l...Q
c0dedb09:	980c 5033 1268 c866 d1fe 58f0 513c e751     ..3Ph.f....X<QQ.
c0dedb19:	feb8 723b 3192 9996 7c68 b6c6 fd41 68bd     ..;r.1..h|..A..h
c0dedb29:	2894 3b54 fac0 ac1f 09c1 65de 27b6 c284     .(T;.......e.'..
c0dedb39:	85d9 15ab 7dd7 f13a f62a 3ed0 188d a559     .....}:.*..>..Y.
c0dedb49:	6853 8485 5ed7 73f6 dea1 0974 e13e c708     Sh...^.s..t.>...
c0dedb59:	ff61 2cf3 7c21 1b23 290e da53 21f5 9242     a..,!|#..)S..!B.
c0dedb69:	c064 3b96 a5c8 edcd 61dc 727a b985 ea34     d..;.....azr..4.
c0dedb79:	dd51 cdb5 23ab edbc 6be8 6ee3 1b00 5cc6     Q....#...k.n...\
c0dedb89:	e965 c9a1 af4b faf4 ebb8 8e5f 2ed4 77c3     e...K....._....w
c0dedb99:	3642 fe33 0400 4291 7c46 c547 8ad5 0272     B63....BF|G...r.
c0dedba9:	e9c8 4810 c141 f3f7 1480 6a5a 820a 578c     ...HA.....Zj...W
c0dedbb9:	3502 07e5 58ae a668 2f06 2b72 8fb9 bef6     .5...Xh../r+....
c0dedbc9:	0000                                         ...

c0dedbcc <settingContents>:
c0dedbcc:	0000 0000 dbe8 c0de 0001 0000               ............

c0dedbd8 <infoList>:
c0dedbd8:	dc1c c0de dc24 c0de 0000 0000 0002 0000     ....$...........

c0dedbe8 <contents>:
c0dedbe8:	0007 0000 13d4 da7a 0002 0000 0000 0000     ......z.........
	...
c0dedc18:	0cb9 c0de                                   ....

c0dedc1c <INFO_TYPES>:
c0dedc1c:	c9f0 c0de c93e c0de                         ....>...

c0dedc24 <INFO_CONTENTS>:
c0dedc24:	c869 c0de c9ae c0de 0000 0000               i...........

c0dedc30 <pqcrystals_dilithium_fips202_ref_KeccakF_RoundConstants>:
c0dedc30:	0001 0000 0000 0000 8082 0000 0000 0000     ................
c0dedc40:	808a 0000 0000 8000 8000 8000 0000 8000     ................
c0dedc50:	808b 0000 0000 0000 0001 8000 0000 0000     ................
c0dedc60:	8081 8000 0000 8000 8009 0000 0000 8000     ................
c0dedc70:	008a 0000 0000 0000 0088 0000 0000 0000     ................
c0dedc80:	8009 8000 0000 0000 000a 8000 0000 0000     ................
c0dedc90:	808b 8000 0000 0000 008b 0000 0000 8000     ................
c0dedca0:	8089 0000 0000 8000 8003 0000 0000 8000     ................
c0dedcb0:	8002 0000 0000 8000 0080 0000 0000 8000     ................
c0dedcc0:	800a 0000 0000 0000 000a 8000 0000 8000     ................
c0dedcd0:	8081 8000 0000 8000 8080 0000 0000 8000     ................
c0dedce0:	0001 8000 0000 0000 8008 8000 0000 8000     ................

c0dedcf0 <zetas>:
c0dedcf0:	0000 0000 64f7 0000 3102 ffd8 1503 fff8     .....d...1......
c0dedd00:	9e44 0003 2118 fff4 a128 fff2 1e24 0007     D....!..(...$...
c0dedd10:	de2b 001b e92b 0023 84ad fffa 147f ffe0     +...+.#.........
c0dedd20:	9a75 002f fb09 ffd3 7a49 002f e527 0028     u./.....Iz/.'.(.
c0dedd30:	9658 0029 a070 000f 85a4 ffef b788 0036     X.).p.........6.
c0dedd40:	9d90 fff7 eaa0 ffee f968 0027 d37b ffdf     ........h.'.{...
c0dedd50:	add6 ffdf 1ae7 ffc5 a4f7 ffea fc98 ffcd     ................
c0dedd60:	d035 001a b422 ffff 3201 003d 45c5 0004     5..."....2=..E..
c0dedd70:	4a67 0029 7620 0001 f4cd 002e dec5 0035     gJ). v........5.
c0dedd80:	a503 ffe6 302c ffc9 47d4 ffd9 beaf 003b     ....,0...G....;.
c0dedd90:	1585 ffc5 8e7c ffd1 8a96 0036 3e41 ffd4     ....|.....6.A>..
c0dedda0:	0400 0036 6a4d fffb d69c 0023 c55d fff7     ..6.Mj....#.]...
c0deddb0:	123d ffe6 ead6 ffe6 7e1e 0035 af59 ffc5     =........~5.Y...
c0deddc0:	843f 0035 5617 ffdf 945c ffe7 738c 0038     ?.5..V..\....s8.
c0deddd0:	63a8 000c 1b9a 0008 8f76 000e 3853 003b     .c......v...S8;.
c0dedde0:	8534 003b fc30 ffd8 9d54 001f 4f2d ffd5     4.;.0...T...-O..
c0deddf0:	06e5 ffc4 ac81 ffe8 e1cf ffc7 9819 ffd1     ................
c0dede00:	d65d ffe9 09ee 0035 35c7 0021 cfbb ffe7     ].....5..5!.....
c0dede10:	cf75 ffec 9772 001d b072 ffc1 bcf6 fff0     u...r...r.......
c0dede20:	5280 ffcf d2ae ffcf 90e0 ffc8 efca 0001     .R..............
c0dede30:	10f2 0034 fe85 fff0 c638 0020 6e9f 0029     ..4.....8. ..n).
c0dede40:	b7a3 ffd2 a44b ffc7 ba6d fff9 3409 ffda     ....K...m....4..
c0dede50:	c282 fff5 4113 ffed a63b ffff 09f7 ffec     .....A..;.......
c0dede60:	2bdd fffa 95d4 0014 4563 001c 2c62 ffea     .+......cE..b,..
c0dede70:	fbe9 ffcc 0af0 0004 c417 0007 4588 002f     .............E/.
c0dede80:	ad00 0000 36be ffef cd44 000d 675a 003c     .....6..D...Zg<.
c0dede90:	2bca ffc7 de7e ffff 3948 0019 69c0 ffce     .+..~...H9...i..
c0dedea0:	756c 0024 c7df fffc 98a1 000b e808 ffeb     lu$.............
c0dedeb0:	e46c 0002 c808 ffc9 36c2 0030 bff6 ffe3     l........60.....
c0dedec0:	3c93 ffdb 4ae0 fffd 1305 0014 7792 0014     .<...J.......w..
c0deded0:	9e25 0013 d0e0 ffe7 9944 fff3 0802 ffea     %.......D.......
c0dedee0:	eea2 ffd1 c79c ffc4 a057 ffc8 97d9 003a     ........W.....:.
c0dedef0:	ea93 001f ff5a 0033 58d4 0023 41f8 003a     ....Z.3..X#..A:.
c0dedf00:	ff72 ffcc 3dfb 0022 ab9f ffda a422 ffc9     r....="....."...
c0dedf10:	12f5 0004 2587 0025 24f0 ffed 9b5d 0035     .....%%..$..].5.
c0dedf20:	48a0 ffca a2fc ffc6 bb56 ffed 45de ffcf     .H......V....E..
c0dedf30:	be5e 000d 5e1a 001c e0e6 000d 7f5a 000c     ^....^......Z...
c0dedf40:	8f83 0007 628a ffe7 5704 ffff 06fc fff8     .....b...W......
c0dedf50:	0021 fff6 5af6 ffd0 0084 001f ef86 0030     !....Z........0.
c0dedf60:	b97d ffc9 fcd6 fff7 4592 fff4 21c2 ffc9     }........E...!..
c0dedf70:	3919 0005 610c 0004 cd41 ffda b01b 003e     .9...a..A.....>.
c0dedf80:	72e7 0034 003b ffcd 7cc7 001a 1924 0003     .r4.;....|..$...
c0dedf90:	5ee5 002b 1199 0029 7a3a ffd8 4d71 0013     .^+...).:z..qM..
c0dedfa0:	e11c 003d 0984 0013 f051 0025 5a46 0018     ..=.....Q.%.FZ..
c0dedfb0:	8518 ffc6 14be 0013 3891 0028 db90 ffc9     .........8(.....
c0dedfc0:	5089 ffd2 853f 001c 0b4b 001d f6a6 ffef     .P..?...K.......
c0dedfd0:	a8be ffeb e11b 0012 5e3e ffcd 2d2f ffea     ........>^../-..
c0dedfe0:	1de4 fff9 06c7 0014 7283 0032 0d6e ffe2     .........r2.n...
c0dedff0:	7953 ffec 4099 001d 2578 ffd9 05ad ffeb     Sy...@..x%......
c0dee000:	e405 0016 dbe7 000b 1de8 0022 f8cf 0033     .........."...3.
c0dee010:	b934 fff7 ca0c ffd4 7ff8 ffe6 d157 ffe3     4...........W...
c0dee020:	911b ffd8 2c12 ffc7 10d8 0009 5e1f ffc6     .....,.......^..
c0dee030:	4658 ffe1 1d8b 0025 73b7 0025 7c8f fffd     XF....%..s%..|..
c0dee040:	dd98 001d 6898 0033 d4bb 0002 93a7 ffed     .....h3.........
c0dee050:	6cbe ffcf 7c1c 0002 aa08 0018 fd71 002d     .l...|......q.-.
c0dee060:	5ca5 000c 379a 0019 a167 ffc7 8c3d ffe4     .\...7..g...=...
c0dee070:	a13c ffd1 c539 0035 0115 003b 1dc0 0004     <...9.5...;.....
c0dee080:	c4f7 0021 1bf4 fff1 35e7 001a 340e 0007     ..!......5...4..
c0dee090:	7d45 fff9 4cd0 001a 7cae ffe4 2668 001d     E}...L...|..h&..
c0dee0a0:	8e98 ffe6 2633 ffef 05da fffc 7fdb ffc5     ....3&..........
c0dee0b0:	2764 ffd3 e1af ffdd 93dd fff9 1d09 ffdd     d'..............
c0dee0c0:	cc93 0002 1805 fff1 9c2a 0018 e5a9 ffc9     ........*.......
c0dee0d0:	8a50 fff7 cf2c 003b 434e ffff 36df ffeb     P...,.;.NC...6..
c0dee0e0:	15ca 003c 5e68 0015 16b6 fff3 29ce 001e     ..<.h^.......)..

c0dee0f0 <small_zetas>:
c0dee0f0:	fbec fd0a fe99 fa13 05d5 058e 011f 00ca     ................
c0dee100:	ff55 026e 0629 00b6 03c2 fb4e fa3e 05bc     U.n.).....N.>...
c0dee110:	023d fad3 0108 017f fcc3 05b2 f9be ff7e     =.............~.
c0dee120:	fd57 03f9 02dc 0260 f9fa 019b ff33 f9dd     W.....`.....3...
c0dee130:	04c7 028c fdd8 03f7 faf3 05d3 fee6 f9f8     ................
c0dee140:	0204 fff8 fec0 fd66 f9ae fb76 007e 05bd     ......f...v.~...
c0dee150:	fcab ffa6 fef1 033e 006b fa73 ff09 fc49     ......>.k.s...I.
c0dee160:	fe72 03c1 fa1c fd2b 01c0 fbd7 02a5 fb05     r.....+.........
c0dee170:	fbb1 01ae 022b 034b fb1d 0367 060e 0069     ....+.K...g...i.
c0dee180:	01a6 024b 00b1 ff15 fedd fe34 0626 0675     ..K.......4.&.u.
c0dee190:	ff0a 030a 0487 ff6d fcf7 05cb fda6 045f     ......m......._.
c0dee1a0:	f9ca 0284 fc98 015d 01a2 0149 ff64 ffb5     ......]...I.d...
c0dee1b0:	0331 0449 025b 0262 052a fafb fa47 0180     1.I.[.b.*...G...
c0dee1c0:	fb41 ff78 04c2 fac9 fc96 00dc fb5d f985     A.x.........]...
c0dee1d0:	fb5f fa06 fb02 031a fa1a fcaa fc9a 01de     _...............
c0dee1e0:	ff94 fecc 03e4 03df 03be fa4c 05f2 065c     ..........L...\.

c0dee1f0 <radiusValues>:
c0dee1f0:	0301                                        ..

c0dee1f2 <quarter_disc_3px_180_1bpp>:
c0dee1f2:	ff9b                                        ..

c0dee1f4 <quarter_circle_3px_180_1bpp>:
c0dee1f4:	0019                                        ..

c0dee1f6 <quarter_disc_3px_270_1bpp>:
c0dee1f6:	00fa                                        ..

c0dee1f8 <quarter_circle_3px_270_1bpp>:
c0dee1f8:	0058                                        X.

c0dee1fa <quarter_disc_3px_90_1bpp>:
c0dee1fa:	ff2f                                        /.

c0dee1fc <quarter_circle_3px_90_1bpp>:
c0dee1fc:	000d                                        ..

c0dee1fe <quarter_disc_3px_1bpp>:
c0dee1fe:	ffec                                        ..

c0dee200 <quarter_circle_3px_1bpp>:
c0dee200:	004c 0000                                   L...

c0dee204 <draw_functions>:
c0dee204:	6765 c0de 67a5 c0de 67cd c0de 0000 0000     eg...g...g......
c0dee214:	6851 c0de 6b0d c0de 0000 0000 0000 0000     Qh...k..........
c0dee224:	6cdf c0de 0000 0000 0000 0000 0000 0000     .l..............
	...
c0dee23c:	6d7d c0de 6dc9 c0de 0000 0000               }m...m......

c0dee248 <blindSigningWarning>:
c0dee248:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0dee270 <USBD_HID_Desc>:
c0dee270:	2109 0111 0100 2222                          .!...."".

c0dee279 <HID_ReportDesc>:
c0dee279:	a006 09ff a101 0901 1503 2600 00ff 0875     ...........&..u.
c0dee289:	4095 0881 0409 0015 ff26 7500 9508 9140     .@......&..u..@.
c0dee299:	c008                                        ..

c0dee29b <C_usb_bos>:
c0dee29b:	0f05 0039 1802 0510 3800 08b6 a934 a009     ..9......8..4...
c0dee2ab:	8b47 a0fd 8876 b615 0065 1e01 1c00 0510     G...v...e.......
c0dee2bb:	df00 dd60 89d8 c745 9c4c 65d2 9e9d 8a64     ..`...E.L..e..d.
c0dee2cb:	009f 0300 b206 7700                          .......w.

c0dee2d4 <HID_Desc>:
c0dee2d4:	ae7d c0de ae8d c0de ae9d c0de aead c0de     }...............
c0dee2e4:	aebd c0de aecd c0de aedd c0de aeed c0de     ................

c0dee2f4 <C_winusb_string_descriptor>:
c0dee2f4:	0312 004d 0053 0046 0054 0031 0030 0030     ..M.S.F.T.1.0.0.
c0dee304:	0077                                        w.

c0dee306 <C_winusb_guid>:
c0dee306:	0092 0000 0100 0005 0001 0088 0000 0007     ................
c0dee316:	0000 002a 0044 0065 0076 0069 0063 0065     ..*.D.e.v.i.c.e.
c0dee326:	0049 006e 0074 0065 0072 0066 0061 0063     I.n.t.e.r.f.a.c.
c0dee336:	0065 0047 0055 0049 0044 0073 0000 0050     e.G.U.I.D.s...P.
c0dee346:	0000 007b 0031 0033 0064 0036 0033 0034     ..{.1.3.d.6.3.4.
c0dee356:	0030 0030 002d 0032 0043 0039 0037 002d     0.0.-.2.C.9.7.-.
c0dee366:	0030 0030 0030 0034 002d 0030 0030 0030     0.0.0.4.-.0.0.0.
c0dee376:	0030 002d 0034 0063 0036 0035 0036 0034     0.-.4.c.6.5.6.4.
c0dee386:	0036 0037 0036 0035 0037 0032 007d 0000     6.7.6.5.7.2.}...
	...

c0dee398 <C_winusb_request_descriptor>:
c0dee398:	000a 0000 0000 0603 00b2 0008 0001 0000     ................
c0dee3a8:	00a8 0008 0002 0001 00a0 0014 0003 4957     ..............WI
c0dee3b8:	554e 4253 0000 0000 0000 0000 0000 0084     NUSB............
c0dee3c8:	0004 0007 002a 0044 0065 0076 0069 0063     ....*.D.e.v.i.c.
c0dee3d8:	0065 0049 006e 0074 0065 0072 0066 0061     e.I.n.t.e.r.f.a.
c0dee3e8:	0063 0065 0047 0055 0049 0044 0073 0000     c.e.G.U.I.D.s...
c0dee3f8:	0050 007b 0043 0045 0038 0030 0039 0032     P.{.C.E.8.0.9.2.
c0dee408:	0036 0034 002d 0034 0042 0032 0034 002d     6.4.-.4.B.2.4.-.
c0dee418:	0034 0045 0038 0031 002d 0041 0038 0042     4.E.8.1.-.A.8.B.
c0dee428:	0032 002d 0035 0037 0045 0044 0030 0031     2.-.5.7.E.D.0.1.
c0dee438:	0044 0035 0038 0030 0045 0031 007d 0000     D.5.8.0.E.1.}...
c0dee448:	0000 0000                                   ....

c0dee44c <USBD_HID>:
c0dee44c:	a24f c0de a277 c0de a1b7 c0de 0000 0000     O...w...........
c0dee45c:	0000 0000 ad5d c0de ad79 c0de 0000 0000     ....]...y.......
	...
c0dee474:	aff5 c0de aff5 c0de aff5 c0de b005 c0de     ................

c0dee484 <USBD_WEBUSB>:
c0dee484:	add5 c0de adfd c0de ae01 c0de 0000 0000     ................
c0dee494:	0000 0000 ae05 c0de ae21 c0de 0000 0000     ........!.......
	...
c0dee4ac:	aff5 c0de aff5 c0de aff5 c0de b005 c0de     ................

c0dee4bc <USBD_DeviceDesc>:
c0dee4bc:	0112 0210 0000 4000 2c97 5000 0201 0201     .......@.,.P....
c0dee4cc:	0103                                        ..

c0dee4ce <USBD_LangIDDesc>:
c0dee4ce:	0304 0409                                   ....

c0dee4d2 <USBD_MANUFACTURER_STRING>:
c0dee4d2:	030e 004c 0065 0064 0067 0065 0072          ..L.e.d.g.e.r.

c0dee4e0 <USBD_PRODUCT_FS_STRING>:
c0dee4e0:	0318 004e 0061 006e 006f 0020 0053 0020     ..N.a.n.o. .S. .
c0dee4f0:	0050 006c 0075 0073                         P.l.u.s.

c0dee4f8 <USB_SERIAL_STRING>:
c0dee4f8:	030a 0030 0030 0030 0031                    ..0.0.0.1.

c0dee502 <C_winusb_wcid>:
c0dee502:	0028 0000 0100 0004 0001 0000 0000 0000     (...............
c0dee512:	0101 4957 554e 4253 0000 0000 0000 0000     ..WINUSB........
	...

c0dee52c <USBD_CfgDesc>:
c0dee52c:	0209 0040 0102 c002 0932 0004 0200 0003     ..@.....2.......
c0dee53c:	0200 2109 0111 0100 2222 0700 8205 4003     ...!...."".....@
c0dee54c:	0100 0507 0302 0040 0901 0104 0200 ffff     ......@.........
c0dee55c:	02ff 0507 0383 0040 0701 0305 4003 0100     ......@......@..

c0dee56c <USBD_DeviceQualifierDesc>:
c0dee56c:	060a 0200 0000 4000 0001                    .......@..

c0dee576 <seph_io_general_status>:
c0dee576:	0060 0002                                    `....

c0dee57b <g_pcHex>:
c0dee57b:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0dee58b <g_pcHex_cap>:
c0dee58b:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
	...

c0dee59c <_etext>:
	...

c0dee600 <N_storage_real>:
	...

c0dee800 <install_parameters>:
c0dee800:	0701 4b5a 4f4e 4858 0257 3005 302e 312e     ..ZKNOXHW..0.0.1
c0dee810:	2103 000e 000e 1900 0000 0000 0300 08f0     .!..............
c0dee820:	4e40 5281 8fa5 a090 8040 0384 00f0 0000     @N.R....@.......
c0dee830:	0000 0400 010a 8002 0000 802c 0000           ..........,....
