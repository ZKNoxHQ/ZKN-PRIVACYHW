
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f009 ff8a 	bl	c0de9f1e <os_boot>
c0de000a:	b90c      	cbnz	r4, c0de0010 <main+0x10>
c0de000c:	f008 fed4 	bl	c0de8db8 <standalone_app_main>
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
c0de0022:	f00b f97b 	bl	c0deb31c <__aeabi_memclr>
c0de0026:	b914      	cbnz	r4, c0de002e <address_from_pubkey+0x1a>
c0de0028:	2001      	movs	r0, #1
c0de002a:	f009 ff75 	bl	c0de9f18 <assert_exit>
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
c0de0042:	f009 ff31 	bl	c0de9ea8 <cx_keccak_256_hash_iovec>
c0de0046:	b108      	cbz	r0, c0de004c <address_from_pubkey+0x38>
c0de0048:	2000      	movs	r0, #0
c0de004a:	e006      	b.n	c0de005a <address_from_pubkey+0x46>
c0de004c:	f105 010c 	add.w	r1, r5, #12
c0de0050:	4620      	mov	r0, r4
c0de0052:	2214      	movs	r2, #20
c0de0054:	f00b f965 	bl	c0deb322 <__aeabi_memcpy>
c0de0058:	2001      	movs	r0, #1
c0de005a:	b00a      	add	sp, #40	@ 0x28
c0de005c:	bd70      	pop	{r4, r5, r6, pc}

c0de005e <apdu_dispatcher>:
c0de005e:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0060:	4604      	mov	r4, r0
c0de0062:	b910      	cbnz	r0, c0de006a <apdu_dispatcher+0xc>
c0de0064:	2001      	movs	r0, #1
c0de0066:	f009 ff57 	bl	c0de9f18 <assert_exit>
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
c0de0292:	f008 bd33 	b.w	c0de8cfc <io_send_response_buffers>

c0de0296 <OUTLINED_FUNCTION_0>:
c0de0296:	9001      	str	r0, [sp, #4]
c0de0298:	7920      	ldrb	r0, [r4, #4]
c0de029a:	9002      	str	r0, [sp, #8]
c0de029c:	4770      	bx	lr
	...

c0de02a0 <app_main>:
c0de02a0:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de02a2:	f008 fd03 	bl	c0de8cac <io_init>
c0de02a6:	f000 fcbf 	bl	c0de0c28 <ui_menu_main>
c0de02aa:	481b      	ldr	r0, [pc, #108]	@ (c0de0318 <app_main+0x78>)
c0de02ac:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de02b0:	4448      	add	r0, r9
c0de02b2:	f00b f83f 	bl	c0deb334 <explicit_bzero>
c0de02b6:	481a      	ldr	r0, [pc, #104]	@ (c0de0320 <app_main+0x80>)
c0de02b8:	4478      	add	r0, pc
c0de02ba:	f00a fc5f 	bl	c0deab7c <pic>
c0de02be:	7880      	ldrb	r0, [r0, #2]
c0de02c0:	2801      	cmp	r0, #1
c0de02c2:	d00d      	beq.n	c0de02e0 <app_main+0x40>
c0de02c4:	2001      	movs	r0, #1
c0de02c6:	f88d 0002 	strb.w	r0, [sp, #2]
c0de02ca:	2000      	movs	r0, #0
c0de02cc:	f8ad 0000 	strh.w	r0, [sp]
c0de02d0:	4814      	ldr	r0, [pc, #80]	@ (c0de0324 <app_main+0x84>)
c0de02d2:	4478      	add	r0, pc
c0de02d4:	f00a fc52 	bl	c0deab7c <pic>
c0de02d8:	4669      	mov	r1, sp
c0de02da:	2203      	movs	r2, #3
c0de02dc:	f00a fcd2 	bl	c0deac84 <nvm_write>
c0de02e0:	4d0e      	ldr	r5, [pc, #56]	@ (c0de031c <app_main+0x7c>)
c0de02e2:	ac01      	add	r4, sp, #4
c0de02e4:	f008 fcec 	bl	c0de8cc0 <io_recv_command>
c0de02e8:	2800      	cmp	r0, #0
c0de02ea:	d414      	bmi.n	c0de0316 <app_main+0x76>
c0de02ec:	4602      	mov	r2, r0
c0de02ee:	eb09 0105 	add.w	r1, r9, r5
c0de02f2:	4620      	mov	r0, r4
c0de02f4:	f008 fd87 	bl	c0de8e06 <apdu_parser>
c0de02f8:	b130      	cbz	r0, c0de0308 <app_main+0x68>
c0de02fa:	4620      	mov	r0, r4
c0de02fc:	f7ff feaf 	bl	c0de005e <apdu_dispatcher>
c0de0300:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de0304:	dcee      	bgt.n	c0de02e4 <app_main+0x44>
c0de0306:	e006      	b.n	c0de0316 <app_main+0x76>
c0de0308:	2000      	movs	r0, #0
c0de030a:	2100      	movs	r1, #0
c0de030c:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de0310:	f008 fcf4 	bl	c0de8cfc <io_send_response_buffers>
c0de0314:	e7e6      	b.n	c0de02e4 <app_main+0x44>
c0de0316:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de0318:	00000000 	.word	0x00000000
c0de031c:	00002ac4 	.word	0x00002ac4
c0de0320:	0000d144 	.word	0x0000d144
c0de0324:	0000d12a 	.word	0x0000d12a

c0de0328 <handler_get_app_name>:
c0de0328:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de032a:	4808      	ldr	r0, [pc, #32]	@ (c0de034c <handler_get_app_name+0x24>)
c0de032c:	4478      	add	r0, pc
c0de032e:	f00a fc25 	bl	c0deab7c <pic>
c0de0332:	2100      	movs	r1, #0
c0de0334:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0338:	9103      	str	r1, [sp, #12]
c0de033a:	2107      	movs	r1, #7
c0de033c:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de0340:	a801      	add	r0, sp, #4
c0de0342:	2101      	movs	r1, #1
c0de0344:	f008 fcda 	bl	c0de8cfc <io_send_response_buffers>
c0de0348:	b004      	add	sp, #16
c0de034a:	bd80      	pop	{r7, pc}
c0de034c:	0000b5a3 	.word	0x0000b5a3

c0de0350 <handler_get_public_key>:
c0de0350:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0352:	b085      	sub	sp, #20
c0de0354:	4f23      	ldr	r7, [pc, #140]	@ (c0de03e4 <handler_get_public_key+0x94>)
c0de0356:	460c      	mov	r4, r1
c0de0358:	4605      	mov	r5, r0
c0de035a:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de035e:	eb09 0607 	add.w	r6, r9, r7
c0de0362:	4630      	mov	r0, r6
c0de0364:	f00a ffe6 	bl	c0deb334 <explicit_bzero>
c0de0368:	2000      	movs	r0, #0
c0de036a:	f506 7135 	add.w	r1, r6, #724	@ 0x2d4
c0de036e:	f809 0007 	strb.w	r0, [r9, r7]
c0de0372:	f886 02a8 	strb.w	r0, [r6, #680]	@ 0x2a8
c0de0376:	4628      	mov	r0, r5
c0de0378:	f008 fa2c 	bl	c0de87d4 <buffer_read_u8>
c0de037c:	b308      	cbz	r0, c0de03c2 <handler_get_public_key+0x72>
c0de037e:	eb09 0007 	add.w	r0, r9, r7
c0de0382:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de0386:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de038a:	4628      	mov	r0, r5
c0de038c:	f008 fa75 	bl	c0de887a <buffer_read_bip32_path>
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
c0de03b8:	f008 fb20 	bl	c0de89fc <bip32_derive_with_seed_get_pubkey_256>
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
c0de03ee:	f008 bc85 	b.w	c0de8cfc <io_send_response_buffers>

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
c0de0418:	f008 fc70 	bl	c0de8cfc <io_send_response_buffers>
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
c0de045a:	f00a ff6b 	bl	c0deb334 <explicit_bzero>
c0de045e:	2000      	movs	r0, #0
c0de0460:	f505 7135 	add.w	r1, r5, #724	@ 0x2d4
c0de0464:	f809 0006 	strb.w	r0, [r9, r6]
c0de0468:	2001      	movs	r0, #1
c0de046a:	f885 02a8 	strb.w	r0, [r5, #680]	@ 0x2a8
c0de046e:	4620      	mov	r0, r4
c0de0470:	f008 f9b0 	bl	c0de87d4 <buffer_read_u8>
c0de0474:	b148      	cbz	r0, c0de048a <handler_sign_tx+0x6a>
c0de0476:	eb09 0006 	add.w	r0, r9, r6
c0de047a:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de047e:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de0482:	4620      	mov	r0, r4
c0de0484:	f008 f9f9 	bl	c0de887a <buffer_read_bip32_path>
c0de0488:	b9b8      	cbnz	r0, c0de04ba <handler_sign_tx+0x9a>
c0de048a:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de048e:	e019      	b.n	c0de04c4 <handler_sign_tx+0xa4>
c0de0490:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de0494:	e016      	b.n	c0de04c4 <handler_sign_tx+0xa4>
c0de0496:	eb09 0106 	add.w	r1, r9, r6
c0de049a:	4408      	add	r0, r1
c0de049c:	f100 0108 	add.w	r1, r0, #8
c0de04a0:	4620      	mov	r0, r4
c0de04a2:	f008 fa14 	bl	c0de88ce <buffer_move>
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
c0de050a:	f009 fccd 	bl	c0de9ea8 <cx_keccak_256_hash_iovec>
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
c0de052e:	f00a ff45 	bl	c0deb3bc <strcmp>
c0de0532:	b110      	cbz	r0, c0de053a <handler_sign_tx+0x11a>
c0de0534:	f000 fd79 	bl	c0de102a <ui_display_transaction>
c0de0538:	e7f1      	b.n	c0de051e <handler_sign_tx+0xfe>
c0de053a:	f000 fd73 	bl	c0de1024 <ui_display_blind_signed_transaction>
c0de053e:	e7ee      	b.n	c0de051e <handler_sign_tx+0xfe>
c0de0540:	00000000 	.word	0x00000000
c0de0544:	0000b0b6 	.word	0x0000b0b6

c0de0548 <io_send_sw>:
c0de0548:	4602      	mov	r2, r0
c0de054a:	2000      	movs	r0, #0
c0de054c:	2100      	movs	r1, #0
c0de054e:	f008 bbd5 	b.w	c0de8cfc <io_send_response_buffers>

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
c0de0572:	f008 fbc3 	bl	c0de8cfc <io_send_response_buffers>
c0de0576:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de0578 <io_send_sw>:
c0de0578:	4602      	mov	r2, r0
c0de057a:	2000      	movs	r0, #0
c0de057c:	2100      	movs	r1, #0
c0de057e:	f008 bbbd 	b.w	c0de8cfc <io_send_response_buffers>

c0de0582 <handler_cmd_keccakH>:
c0de0582:	b5b0      	push	{r4, r5, r7, lr}
c0de0584:	b0f2      	sub	sp, #456	@ 0x1c8
c0de0586:	466d      	mov	r5, sp
c0de0588:	4604      	mov	r4, r0
c0de058a:	4628      	mov	r0, r5
c0de058c:	f000 fd50 	bl	c0de1030 <keccak_init>
c0de0590:	88a2      	ldrh	r2, [r4, #4]
c0de0592:	6821      	ldr	r1, [r4, #0]
c0de0594:	4628      	mov	r0, r5
c0de0596:	f000 fd4f 	bl	c0de1038 <keccak_update>
c0de059a:	ac6a      	add	r4, sp, #424	@ 0x1a8
c0de059c:	4628      	mov	r0, r5
c0de059e:	4621      	mov	r1, r4
c0de05a0:	f000 fd4c 	bl	c0de103c <keccak_final>
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
c0de05c6:	f000 fd3b 	bl	c0de1040 <inner_keccak256_init>
c0de05ca:	e019      	b.n	c0de0600 <handler_cmd_keccak_prng+0x4c>
c0de05cc:	4c14      	ldr	r4, [pc, #80]	@ (c0de0620 <handler_cmd_keccak_prng+0x6c>)
c0de05ce:	eb09 0004 	add.w	r0, r9, r4
c0de05d2:	f000 fd58 	bl	c0de1086 <inner_keccak256_flip>
c0de05d6:	b9a0      	cbnz	r0, c0de0602 <handler_cmd_keccak_prng+0x4e>
c0de05d8:	eb09 0004 	add.w	r0, r9, r4
c0de05dc:	4669      	mov	r1, sp
c0de05de:	2240      	movs	r2, #64	@ 0x40
c0de05e0:	f000 fd67 	bl	c0de10b2 <inner_keccak256_extract>
c0de05e4:	b968      	cbnz	r0, c0de0602 <handler_cmd_keccak_prng+0x4e>
c0de05e6:	4668      	mov	r0, sp
c0de05e8:	2140      	movs	r1, #64	@ 0x40
c0de05ea:	f7ff ffba 	bl	c0de0562 <io_send_response_pointer>
c0de05ee:	e014      	b.n	c0de061a <handler_cmd_keccak_prng+0x66>
c0de05f0:	490b      	ldr	r1, [pc, #44]	@ (c0de0620 <handler_cmd_keccak_prng+0x6c>)
c0de05f2:	eb09 0301 	add.w	r3, r9, r1
c0de05f6:	e9d0 1200 	ldrd	r1, r2, [r0]
c0de05fa:	4618      	mov	r0, r3
c0de05fc:	f000 fd31 	bl	c0de1062 <inner_keccak256_inject>
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
c0de0630:	f001 fca3 	bl	c0de1f7a <pqcrystals_dilithium2_lowram_poly_challenge_eth>
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
c0de0650:	f001 fe46 	bl	c0de22e0 <crypto_sign_keypair_core>
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
c0de0676:	f001 fe22 	bl	c0de22be <pqcrystals_dilithium2_lowram_keypair>
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
c0de06a4:	f00a fe3d 	bl	c0deb322 <__aeabi_memcpy>
c0de06a8:	2d80      	cmp	r5, #128	@ 0x80
c0de06aa:	d013      	beq.n	c0de06d4 <handler_cmd_sign_dilithium+0x44>
c0de06ac:	2d01      	cmp	r5, #1
c0de06ae:	d01f      	beq.n	c0de06f0 <handler_cmd_sign_dilithium+0x60>
c0de06b0:	bb35      	cbnz	r5, c0de0700 <handler_cmd_sign_dilithium+0x70>
c0de06b2:	f60d 2008 	addw	r0, sp, #2568	@ 0xa08
c0de06b6:	a902      	add	r1, sp, #8
c0de06b8:	f60d 7228 	addw	r2, sp, #3880	@ 0xf28
c0de06bc:	f001 fe10 	bl	c0de22e0 <crypto_sign_keypair_core>
c0de06c0:	4604      	mov	r4, r0
c0de06c2:	2800      	cmp	r0, #0
c0de06c4:	d13e      	bne.n	c0de0744 <handler_cmd_sign_dilithium+0xb4>
c0de06c6:	2000      	movs	r0, #0
c0de06c8:	2100      	movs	r1, #0
c0de06ca:	f001 fee7 	bl	c0de249c <crypto_sign_signature_init>
c0de06ce:	f000 f979 	bl	c0de09c4 <OUTLINED_FUNCTION_2>
c0de06d2:	e037      	b.n	c0de0744 <handler_cmd_sign_dilithium+0xb4>
c0de06d4:	f60d 2008 	addw	r0, sp, #2568	@ 0xa08
c0de06d8:	a902      	add	r1, sp, #8
c0de06da:	f60d 7228 	addw	r2, sp, #3880	@ 0xf28
c0de06de:	f001 fdff 	bl	c0de22e0 <crypto_sign_keypair_core>
c0de06e2:	bb80      	cbnz	r0, c0de0746 <handler_cmd_sign_dilithium+0xb6>
c0de06e4:	6860      	ldr	r0, [r4, #4]
c0de06e6:	2801      	cmp	r0, #1
c0de06e8:	d812      	bhi.n	c0de0710 <handler_cmd_sign_dilithium+0x80>
c0de06ea:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de06ee:	e02c      	b.n	c0de074a <handler_cmd_sign_dilithium+0xba>
c0de06f0:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de06f4:	f001 fefe 	bl	c0de24f4 <crypto_sign_signature_absorb>
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
c0de0728:	f500 60fc 	add.w	r0, r0, #2016	@ 0x7e0
c0de072c:	f001 feea 	bl	c0de2504 <crypto_sign_signature_core>
c0de0730:	4604      	mov	r4, r0
c0de0732:	b938      	cbnz	r0, c0de0744 <handler_cmd_sign_dilithium+0xb4>
c0de0734:	eb09 0005 	add.w	r0, r9, r5
c0de0738:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de073c:	f500 60fc 	add.w	r0, r0, #2016	@ 0x7e0
c0de0740:	f7ff ff0f 	bl	c0de0562 <io_send_response_pointer>
c0de0744:	b124      	cbz	r4, c0de0750 <handler_cmd_sign_dilithium+0xc0>
c0de0746:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de074a:	f7ff ff15 	bl	c0de0578 <io_send_sw>
c0de074e:	e000      	b.n	c0de0752 <handler_cmd_sign_dilithium+0xc2>
c0de0750:	2000      	movs	r0, #0
c0de0752:	f60d 7d48 	addw	sp, sp, #3912	@ 0xf48
c0de0756:	bdb0      	pop	{r4, r5, r7, pc}
c0de0758:	000002d8 	.word	0x000002d8
c0de075c:	0000b336 	.word	0x0000b336

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
c0de077e:	f002 f967 	bl	c0de2a50 <pqcrystals_dilithium2_lowram_open>
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
c0de079c:	0000bcbd 	.word	0x0000bcbd
c0de07a0:	0000b31c 	.word	0x0000b31c

c0de07a4 <handler_cmd_get_sig_chunk>:
c0de07a4:	b580      	push	{r7, lr}
c0de07a6:	4806      	ldr	r0, [pc, #24]	@ (c0de07c0 <handler_cmd_get_sig_chunk+0x1c>)
c0de07a8:	ebc1 2101 	rsb	r1, r1, r1, lsl #8
c0de07ac:	4448      	add	r0, r9
c0de07ae:	4408      	add	r0, r1
c0de07b0:	4611      	mov	r1, r2
c0de07b2:	f500 60fc 	add.w	r0, r0, #2016	@ 0x7e0
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
c0de07d2:	f500 7030 	add.w	r0, r0, #704	@ 0x2c0
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
c0de07f4:	f00a fd95 	bl	c0deb322 <__aeabi_memcpy>
c0de07f8:	a811      	add	r0, sp, #68	@ 0x44
c0de07fa:	2120      	movs	r1, #32
c0de07fc:	462a      	mov	r2, r5
c0de07fe:	2320      	movs	r3, #32
c0de0800:	f00a fa66 	bl	c0deacd0 <cx_bn_alloc_init>
c0de0804:	9911      	ldr	r1, [sp, #68]	@ 0x44
c0de0806:	ae12      	add	r6, sp, #72	@ 0x48
c0de0808:	4630      	mov	r0, r6
c0de080a:	f00a faf1 	bl	c0deadf0 <cx_mont_init>
c0de080e:	ad14      	add	r5, sp, #80	@ 0x50
c0de0810:	2105      	movs	r1, #5
c0de0812:	2205      	movs	r2, #5
c0de0814:	4633      	mov	r3, r6
c0de0816:	4628      	mov	r0, r5
c0de0818:	f002 ff6f 	bl	c0de36fa <Poseidon_alloc_init>
c0de081c:	6820      	ldr	r0, [r4, #0]
c0de081e:	466c      	mov	r4, sp
c0de0820:	7806      	ldrb	r6, [r0, #0]
c0de0822:	b12e      	cbz	r6, c0de0830 <handler_cmd_Poseidon_ithRC+0x4c>
c0de0824:	4628      	mov	r0, r5
c0de0826:	4621      	mov	r1, r4
c0de0828:	f002 ff64 	bl	c0de36f4 <Poseidon_getNext_RC>
c0de082c:	3e01      	subs	r6, #1
c0de082e:	e7f8      	b.n	c0de0822 <handler_cmd_Poseidon_ithRC+0x3e>
c0de0830:	4668      	mov	r0, sp
c0de0832:	2120      	movs	r1, #32
c0de0834:	f7ff fe95 	bl	c0de0562 <io_send_response_pointer>
c0de0838:	b03e      	add	sp, #248	@ 0xf8
c0de083a:	bd70      	pop	{r4, r5, r6, pc}
c0de083c:	0000b286 	.word	0x0000b286

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
c0de0870:	f00a fa12 	bl	c0deac98 <cx_bn_lock>
c0de0874:	b920      	cbnz	r0, c0de0880 <handler_cmd_tEdwards+0x40>
c0de0876:	a819      	add	r0, sp, #100	@ 0x64
c0de0878:	4631      	mov	r1, r6
c0de087a:	f002 fc0d 	bl	c0de3098 <tEdwards_Curve_alloc_init>
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
c0de089e:	f00a fd40 	bl	c0deb322 <__aeabi_memcpy>
c0de08a2:	af03      	add	r7, sp, #12
c0de08a4:	4940      	ldr	r1, [pc, #256]	@ (c0de09a8 <handler_cmd_tEdwards+0x168>)
c0de08a6:	4479      	add	r1, pc
c0de08a8:	e009      	b.n	c0de08be <handler_cmd_tEdwards+0x7e>
c0de08aa:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de08ac:	493f      	ldr	r1, [pc, #252]	@ (c0de09ac <handler_cmd_tEdwards+0x16c>)
c0de08ae:	2220      	movs	r2, #32
c0de08b0:	4630      	mov	r0, r6
c0de08b2:	4479      	add	r1, pc
c0de08b4:	f00a fd35 	bl	c0deb322 <__aeabi_memcpy>
c0de08b8:	af03      	add	r7, sp, #12
c0de08ba:	493d      	ldr	r1, [pc, #244]	@ (c0de09b0 <handler_cmd_tEdwards+0x170>)
c0de08bc:	4479      	add	r1, pc
c0de08be:	4638      	mov	r0, r7
c0de08c0:	2220      	movs	r2, #32
c0de08c2:	f00a fd2e 	bl	c0deb322 <__aeabi_memcpy>
c0de08c6:	a819      	add	r0, sp, #100	@ 0x64
c0de08c8:	ab16      	add	r3, sp, #88	@ 0x58
c0de08ca:	4631      	mov	r1, r6
c0de08cc:	463a      	mov	r2, r7
c0de08ce:	f002 fd89 	bl	c0de33e4 <tEdwards_alloc_init>
c0de08d2:	2800      	cmp	r0, #0
c0de08d4:	d1d4      	bne.n	c0de0880 <handler_cmd_tEdwards+0x40>
c0de08d6:	a819      	add	r0, sp, #100	@ 0x64
c0de08d8:	a90b      	add	r1, sp, #44	@ 0x2c
c0de08da:	aa03      	add	r2, sp, #12
c0de08dc:	ab13      	add	r3, sp, #76	@ 0x4c
c0de08de:	f002 fd81 	bl	c0de33e4 <tEdwards_alloc_init>
c0de08e2:	2800      	cmp	r0, #0
c0de08e4:	d1cc      	bne.n	c0de0880 <handler_cmd_tEdwards+0x40>
c0de08e6:	2000      	movs	r0, #0
c0de08e8:	f10d 020b 	add.w	r2, sp, #11
c0de08ec:	f88d 000b 	strb.w	r0, [sp, #11]
c0de08f0:	a819      	add	r0, sp, #100	@ 0x64
c0de08f2:	a916      	add	r1, sp, #88	@ 0x58
c0de08f4:	f002 fb79 	bl	c0de2fea <tEdwards_IsOnCurve>
c0de08f8:	2800      	cmp	r0, #0
c0de08fa:	d1c1      	bne.n	c0de0880 <handler_cmd_tEdwards+0x40>
c0de08fc:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0900:	2801      	cmp	r0, #1
c0de0902:	d143      	bne.n	c0de098c <handler_cmd_tEdwards+0x14c>
c0de0904:	a819      	add	r0, sp, #100	@ 0x64
c0de0906:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0908:	f10d 020b 	add.w	r2, sp, #11
c0de090c:	4631      	mov	r1, r6
c0de090e:	f002 fb6c 	bl	c0de2fea <tEdwards_IsOnCurve>
c0de0912:	2800      	cmp	r0, #0
c0de0914:	d1b4      	bne.n	c0de0880 <handler_cmd_tEdwards+0x40>
c0de0916:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de091a:	2801      	cmp	r0, #1
c0de091c:	d139      	bne.n	c0de0992 <handler_cmd_tEdwards+0x152>
c0de091e:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0920:	f10d 010b 	add.w	r1, sp, #11
c0de0924:	f00a fa50 	bl	c0deadc8 <cx_bn_is_prime>
c0de0928:	2800      	cmp	r0, #0
c0de092a:	d1a9      	bne.n	c0de0880 <handler_cmd_tEdwards+0x40>
c0de092c:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0930:	2801      	cmp	r0, #1
c0de0932:	d131      	bne.n	c0de0998 <handler_cmd_tEdwards+0x158>
c0de0934:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0936:	f10d 010b 	add.w	r1, sp, #11
c0de093a:	f00a fa45 	bl	c0deadc8 <cx_bn_is_prime>
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
c0de0958:	f002 fdc8 	bl	c0de34ec <tEdwards_scalarMul>
c0de095c:	2800      	cmp	r0, #0
c0de095e:	d18f      	bne.n	c0de0880 <handler_cmd_tEdwards+0x40>
c0de0960:	a819      	add	r0, sp, #100	@ 0x64
c0de0962:	f104 0320 	add.w	r3, r4, #32
c0de0966:	a913      	add	r1, sp, #76	@ 0x4c
c0de0968:	4622      	mov	r2, r4
c0de096a:	f002 fcd5 	bl	c0de3318 <tEdwards_export>
c0de096e:	2800      	cmp	r0, #0
c0de0970:	f47f af86 	bne.w	c0de0880 <handler_cmd_tEdwards+0x40>
c0de0974:	f00a f99a 	bl	c0deacac <cx_bn_unlock>
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
c0de09a4:	0000b09c 	.word	0x0000b09c
c0de09a8:	0000b112 	.word	0x0000b112
c0de09ac:	0000b0a6 	.word	0x0000b0a6
c0de09b0:	0000b05c 	.word	0x0000b05c

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
c0de09e8:	f00a fc9b 	bl	c0deb322 <__aeabi_memcpy>
c0de09ec:	2020      	movs	r0, #32
c0de09ee:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de09f2:	2220      	movs	r2, #32
c0de09f4:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de09f8:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de09fc:	f00a fc91 	bl	c0deb322 <__aeabi_memcpy>
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
c0de0a20:	f008 f96c 	bl	c0de8cfc <io_send_response_buffers>
c0de0a24:	b004      	add	sp, #16
c0de0a26:	bd80      	pop	{r7, pc}

c0de0a28 <helper_send_response_sig>:
c0de0a28:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0a2a:	b093      	sub	sp, #76	@ 0x4c
c0de0a2c:	f10d 0402 	add.w	r4, sp, #2
c0de0a30:	2149      	movs	r1, #73	@ 0x49
c0de0a32:	1c65      	adds	r5, r4, #1
c0de0a34:	4628      	mov	r0, r5
c0de0a36:	f00a fc71 	bl	c0deb31c <__aeabi_memclr>
c0de0a3a:	480b      	ldr	r0, [pc, #44]	@ (c0de0a68 <helper_send_response_sig+0x40>)
c0de0a3c:	eb09 0700 	add.w	r7, r9, r0
c0de0a40:	4628      	mov	r0, r5
c0de0a42:	f897 62a0 	ldrb.w	r6, [r7, #672]	@ 0x2a0
c0de0a46:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de0a4a:	4632      	mov	r2, r6
c0de0a4c:	f88d 6002 	strb.w	r6, [sp, #2]
c0de0a50:	f00a fc67 	bl	c0deb322 <__aeabi_memcpy>
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
c0de0a76:	f009 fa4f 	bl	c0de9f18 <assert_exit>
c0de0a7a:	b915      	cbnz	r5, c0de0a82 <transaction_deserialize+0x16>
c0de0a7c:	2001      	movs	r0, #1
c0de0a7e:	f009 fa4b 	bl	c0de9f18 <assert_exit>
c0de0a82:	6860      	ldr	r0, [r4, #4]
c0de0a84:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de0a88:	d901      	bls.n	c0de0a8e <transaction_deserialize+0x22>
c0de0a8a:	20f9      	movs	r0, #249	@ 0xf9
c0de0a8c:	e04b      	b.n	c0de0b26 <transaction_deserialize+0xba>
c0de0a8e:	4620      	mov	r0, r4
c0de0a90:	4629      	mov	r1, r5
c0de0a92:	2200      	movs	r2, #0
c0de0a94:	f007 feb4 	bl	c0de8800 <buffer_read_u64>
c0de0a98:	b330      	cbz	r0, c0de0ae8 <transaction_deserialize+0x7c>
c0de0a9a:	6820      	ldr	r0, [r4, #0]
c0de0a9c:	68a1      	ldr	r1, [r4, #8]
c0de0a9e:	4408      	add	r0, r1
c0de0aa0:	2114      	movs	r1, #20
c0de0aa2:	61a8      	str	r0, [r5, #24]
c0de0aa4:	4620      	mov	r0, r4
c0de0aa6:	f007 fe8a 	bl	c0de87be <buffer_seek_cur>
c0de0aaa:	b1f8      	cbz	r0, c0de0aec <transaction_deserialize+0x80>
c0de0aac:	f105 0108 	add.w	r1, r5, #8
c0de0ab0:	4620      	mov	r0, r4
c0de0ab2:	2200      	movs	r2, #0
c0de0ab4:	2600      	movs	r6, #0
c0de0ab6:	f007 fea3 	bl	c0de8800 <buffer_read_u64>
c0de0aba:	b1c8      	cbz	r0, c0de0af0 <transaction_deserialize+0x84>
c0de0abc:	f105 0120 	add.w	r1, r5, #32
c0de0ac0:	4620      	mov	r0, r4
c0de0ac2:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de0ac6:	f007 febb 	bl	c0de8840 <buffer_read_varint>
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
c0de0afe:	f007 fe5e 	bl	c0de87be <buffer_seek_cur>
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
c0de0b36:	f009 f9ef 	bl	c0de9f18 <assert_exit>
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
c0de0b78:	f008 b8c0 	b.w	c0de8cfc <io_send_response_buffers>

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
c0de0bd0:	f007 ff48 	bl	c0de8a64 <bip32_derive_with_seed_ecdsa_sign_hash_256>
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
c0de0c22:	f00a f97d 	bl	c0deaf20 <os_sched_exit>
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
c0de0c86:	f006 f989 	bl	c0de6f9c <nbgl_useCaseHomeAndSettings>
c0de0c8a:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de0c8c:	00001430 	.word	0x00001430
c0de0c90:	0000c7ce 	.word	0x0000c7ce
c0de0c94:	0000aa94 	.word	0x0000aa94
c0de0c98:	0000ac0c 	.word	0x0000ac0c
c0de0c9c:	0000aafe 	.word	0x0000aafe
c0de0ca0:	0000a945 	.word	0x0000a945
c0de0ca4:	ffffffb1 	.word	0xffffffb1
c0de0ca8:	0000bcee 	.word	0x0000bcee
c0de0cac:	0000bce0 	.word	0x0000bce0
c0de0cb0:	0000ac4d 	.word	0x0000ac4d
c0de0cb4:	0000a797 	.word	0x0000a797

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
c0de0cec:	f009 ff46 	bl	c0deab7c <pic>
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
c0de0d1a:	f009 ffb3 	bl	c0deac84 <nvm_write>
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
c0de0d3c:	f006 fd3c 	bl	c0de77b8 <nbgl_useCaseChoice>
c0de0d40:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de0d42:	bf00      	nop
c0de0d44:	00001430 	.word	0x00001430
c0de0d48:	0000c72e 	.word	0x0000c72e
c0de0d4c:	0000c712 	.word	0x0000c712
c0de0d50:	0000c702 	.word	0x0000c702
c0de0d54:	00000045 	.word	0x00000045
c0de0d58:	0000aa56 	.word	0x0000aa56
c0de0d5c:	0000a83e 	.word	0x0000a83e
c0de0d60:	0000a869 	.word	0x0000a869
c0de0d64:	0000a925 	.word	0x0000a925
c0de0d68:	0000ab1c 	.word	0x0000ab1c

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
c0de0d9a:	f009 ff73 	bl	c0deac84 <nvm_write>
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
c0de0dc4:	f006 f8ea 	bl	c0de6f9c <nbgl_useCaseHomeAndSettings>
c0de0dc8:	b006      	add	sp, #24
c0de0dca:	bdb0      	pop	{r4, r5, r7, pc}
c0de0dcc:	00001430 	.word	0x00001430
c0de0dd0:	0000c686 	.word	0x0000c686
c0de0dd4:	fffffe71 	.word	0xfffffe71
c0de0dd8:	0000bbae 	.word	0x0000bbae
c0de0ddc:	0000bba0 	.word	0x0000bba0
c0de0de0:	0000ab0f 	.word	0x0000ab0f
c0de0de4:	0000a659 	.word	0x0000a659

c0de0de8 <OUTLINED_FUNCTION_0>:
c0de0de8:	4620      	mov	r0, r4
c0de0dea:	f009 bec7 	b.w	c0deab7c <pic>
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
c0de0e0e:	f00a fa85 	bl	c0deb31c <__aeabi_memclr>
c0de0e12:	ac03      	add	r4, sp, #12
c0de0e14:	2114      	movs	r1, #20
c0de0e16:	4620      	mov	r0, r4
c0de0e18:	f00a fa80 	bl	c0deb31c <__aeabi_memclr>
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
c0de0e36:	f007 febf 	bl	c0de8bb8 <format_hex>
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
c0de0e56:	f006 f9f5 	bl	c0de7244 <nbgl_useCaseAddressReview>
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
c0de0e84:	0000144c 	.word	0x0000144c
c0de0e88:	00000059 	.word	0x00000059
c0de0e8c:	0000a743 	.word	0x0000a743
c0de0e90:	0000aa68 	.word	0x0000aa68

c0de0e94 <io_send_sw>:
c0de0e94:	4602      	mov	r2, r0
c0de0e96:	2000      	movs	r0, #0
c0de0e98:	2100      	movs	r1, #0
c0de0e9a:	f007 bf2f 	b.w	c0de8cfc <io_send_response_buffers>
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
c0de0eb8:	f006 bb72 	b.w	c0de75a0 <nbgl_useCaseReviewStatus>
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
c0de0ee6:	f00a fa19 	bl	c0deb31c <__aeabi_memclr>
c0de0eea:	ad05      	add	r5, sp, #20
c0de0eec:	211e      	movs	r1, #30
c0de0eee:	4628      	mov	r0, r5
c0de0ef0:	f00a fa14 	bl	c0deb31c <__aeabi_memclr>
c0de0ef4:	eb09 0007 	add.w	r0, r9, r7
c0de0ef8:	211e      	movs	r1, #30
c0de0efa:	e9d0 2386 	ldrd	r2, r3, [r0, #536]	@ 0x218
c0de0efe:	2003      	movs	r0, #3
c0de0f00:	9000      	str	r0, [sp, #0]
c0de0f02:	4628      	mov	r0, r5
c0de0f04:	f007 fe11 	bl	c0de8b2a <format_fpu64>
c0de0f08:	2800      	cmp	r0, #0
c0de0f0a:	d04b      	beq.n	c0de0fa4 <ui_display_transaction_bs_choice+0xe4>
c0de0f0c:	9500      	str	r5, [sp, #0]
c0de0f0e:	eb09 0506 	add.w	r5, r9, r6
c0de0f12:	211e      	movs	r1, #30
c0de0f14:	231e      	movs	r3, #30
c0de0f16:	4a31      	ldr	r2, [pc, #196]	@ (c0de0fdc <ui_display_transaction_bs_choice+0x11c>)
c0de0f18:	f105 0014 	add.w	r0, r5, #20
c0de0f1c:	447a      	add	r2, pc
c0de0f1e:	f009 fc93 	bl	c0dea848 <snprintf>
c0de0f22:	3554      	adds	r5, #84	@ 0x54
c0de0f24:	212b      	movs	r1, #43	@ 0x2b
c0de0f26:	4628      	mov	r0, r5
c0de0f28:	f00a f9f8 	bl	c0deb31c <__aeabi_memclr>
c0de0f2c:	eb09 0007 	add.w	r0, r9, r7
c0de0f30:	2114      	movs	r1, #20
c0de0f32:	462a      	mov	r2, r5
c0de0f34:	232b      	movs	r3, #43	@ 0x2b
c0de0f36:	f8d0 0228 	ldr.w	r0, [r0, #552]	@ 0x228
c0de0f3a:	f007 fe3d 	bl	c0de8bb8 <format_hex>
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
c0de0f8a:	f006 f949 	bl	c0de7220 <nbgl_useCaseReviewBlindSigning>
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
c0de0fce:	f006 f88d 	bl	c0de70ec <nbgl_useCaseReview>
c0de0fd2:	e7ef      	b.n	c0de0fb4 <ui_display_transaction_bs_choice+0xf4>
c0de0fd4:	00000000 	.word	0x00000000
c0de0fd8:	00001478 	.word	0x00001478
c0de0fdc:	0000a91c 	.word	0x0000a91c
c0de0fe0:	0000a6f9 	.word	0x0000a6f9
c0de0fe4:	0000a8df 	.word	0x0000a8df
c0de0fe8:	00000095 	.word	0x00000095
c0de0fec:	0000a60f 	.word	0x0000a60f
c0de0ff0:	0000a61f 	.word	0x0000a61f
c0de0ff4:	0000a5cb 	.word	0x0000a5cb
c0de0ff8:	0000a5db 	.word	0x0000a5db

c0de0ffc <io_send_sw>:
c0de0ffc:	4602      	mov	r2, r0
c0de0ffe:	2000      	movs	r0, #0
c0de1000:	2100      	movs	r1, #0
c0de1002:	f007 be7b 	b.w	c0de8cfc <io_send_response_buffers>
	...

c0de1008 <review_choice>:
c0de1008:	b510      	push	{r4, lr}
c0de100a:	4604      	mov	r4, r0
c0de100c:	f7ff fdb6 	bl	c0de0b7c <validate_transaction>
c0de1010:	4903      	ldr	r1, [pc, #12]	@ (c0de1020 <review_choice+0x18>)
c0de1012:	f084 0001 	eor.w	r0, r4, #1
c0de1016:	4479      	add	r1, pc
c0de1018:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de101c:	f006 bac0 	b.w	c0de75a0 <nbgl_useCaseReviewStatus>
c0de1020:	fffffc0f 	.word	0xfffffc0f

c0de1024 <ui_display_blind_signed_transaction>:
c0de1024:	2001      	movs	r0, #1
c0de1026:	f7ff bf4b 	b.w	c0de0ec0 <ui_display_transaction_bs_choice>

c0de102a <ui_display_transaction>:
c0de102a:	2000      	movs	r0, #0
c0de102c:	f7ff bf48 	b.w	c0de0ec0 <ui_display_transaction_bs_choice>

c0de1030 <keccak_init>:
c0de1030:	2106      	movs	r1, #6
c0de1032:	2220      	movs	r2, #32
c0de1034:	f008 bf59 	b.w	c0de9eea <cx_hash_init_ex>

c0de1038 <keccak_update>:
c0de1038:	f008 bf5c 	b.w	c0de9ef4 <cx_hash_update>

c0de103c <keccak_final>:
c0de103c:	f008 bf50 	b.w	c0de9ee0 <cx_hash_final>

c0de1040 <inner_keccak256_init>:
c0de1040:	b160      	cbz	r0, c0de105c <inner_keccak256_init+0x1c>
c0de1042:	b510      	push	{r4, lr}
c0de1044:	212c      	movs	r1, #44	@ 0x2c
c0de1046:	4604      	mov	r4, r0
c0de1048:	f00a f968 	bl	c0deb31c <__aeabi_memclr>
c0de104c:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de1050:	f7ff ffee 	bl	c0de1030 <keccak_init>
c0de1054:	2000      	movs	r0, #0
c0de1056:	e9c4 007e 	strd	r0, r0, [r4, #504]	@ 0x1f8
c0de105a:	bd10      	pop	{r4, pc}
c0de105c:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de1060:	4770      	bx	lr

c0de1062 <inner_keccak256_inject>:
c0de1062:	b580      	push	{r7, lr}
c0de1064:	4603      	mov	r3, r0
c0de1066:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de106a:	b15b      	cbz	r3, c0de1084 <inner_keccak256_inject+0x22>
c0de106c:	b151      	cbz	r1, c0de1084 <inner_keccak256_inject+0x22>
c0de106e:	6a98      	ldr	r0, [r3, #40]	@ 0x28
c0de1070:	b110      	cbz	r0, c0de1078 <inner_keccak256_inject+0x16>
c0de1072:	f06f 0001 	mvn.w	r0, #1
c0de1076:	bd80      	pop	{r7, pc}
c0de1078:	f103 0030 	add.w	r0, r3, #48	@ 0x30
c0de107c:	b292      	uxth	r2, r2
c0de107e:	f7ff ffdb 	bl	c0de1038 <keccak_update>
c0de1082:	2000      	movs	r0, #0
c0de1084:	bd80      	pop	{r7, pc}

c0de1086 <inner_keccak256_flip>:
c0de1086:	b510      	push	{r4, lr}
c0de1088:	b128      	cbz	r0, c0de1096 <inner_keccak256_flip+0x10>
c0de108a:	4604      	mov	r4, r0
c0de108c:	6a80      	ldr	r0, [r0, #40]	@ 0x28
c0de108e:	b128      	cbz	r0, c0de109c <inner_keccak256_flip+0x16>
c0de1090:	f06f 0001 	mvn.w	r0, #1
c0de1094:	bd10      	pop	{r4, pc}
c0de1096:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de109a:	bd10      	pop	{r4, pc}
c0de109c:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de10a0:	4621      	mov	r1, r4
c0de10a2:	f7ff ffcb 	bl	c0de103c <keccak_final>
c0de10a6:	2000      	movs	r0, #0
c0de10a8:	2101      	movs	r1, #1
c0de10aa:	e9c4 007e 	strd	r0, r0, [r4, #504]	@ 0x1f8
c0de10ae:	62a1      	str	r1, [r4, #40]	@ 0x28
c0de10b0:	bd10      	pop	{r4, pc}

c0de10b2 <inner_keccak256_extract>:
c0de10b2:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de10b6:	b0f8      	sub	sp, #480	@ 0x1e0
c0de10b8:	4682      	mov	sl, r0
c0de10ba:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de10be:	f1ba 0f00 	cmp.w	sl, #0
c0de10c2:	d020      	beq.n	c0de1106 <inner_keccak256_extract+0x54>
c0de10c4:	460e      	mov	r6, r1
c0de10c6:	b1f1      	cbz	r1, c0de1106 <inner_keccak256_extract+0x54>
c0de10c8:	f8da 0028 	ldr.w	r0, [sl, #40]	@ 0x28
c0de10cc:	b1c8      	cbz	r0, c0de1102 <inner_keccak256_extract+0x50>
c0de10ce:	e9da 017e 	ldrd	r0, r1, [sl, #504]	@ 0x1f8
c0de10d2:	4615      	mov	r5, r2
c0de10d4:	4281      	cmp	r1, r0
c0de10d6:	d919      	bls.n	c0de110c <inner_keccak256_extract+0x5a>
c0de10d8:	1a0c      	subs	r4, r1, r0
c0de10da:	4450      	add	r0, sl
c0de10dc:	46a3      	mov	fp, r4
c0de10de:	42ac      	cmp	r4, r5
c0de10e0:	f500 71ec 	add.w	r1, r0, #472	@ 0x1d8
c0de10e4:	4630      	mov	r0, r6
c0de10e6:	bf88      	it	hi
c0de10e8:	46ab      	movhi	fp, r5
c0de10ea:	465a      	mov	r2, fp
c0de10ec:	f00a f919 	bl	c0deb322 <__aeabi_memcpy>
c0de10f0:	f8da 01f8 	ldr.w	r0, [sl, #504]	@ 0x1f8
c0de10f4:	42ac      	cmp	r4, r5
c0de10f6:	4458      	add	r0, fp
c0de10f8:	f8ca 01f8 	str.w	r0, [sl, #504]	@ 0x1f8
c0de10fc:	d308      	bcc.n	c0de1110 <inner_keccak256_extract+0x5e>
c0de10fe:	2000      	movs	r0, #0
c0de1100:	e001      	b.n	c0de1106 <inner_keccak256_extract+0x54>
c0de1102:	f06f 0001 	mvn.w	r0, #1
c0de1106:	b078      	add	sp, #480	@ 0x1e0
c0de1108:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de110c:	f04f 0b00 	mov.w	fp, #0
c0de1110:	ac6e      	add	r4, sp, #440	@ 0x1b8
c0de1112:	9503      	str	r5, [sp, #12]
c0de1114:	f104 0020 	add.w	r0, r4, #32
c0de1118:	9002      	str	r0, [sp, #8]
c0de111a:	f50a 70ec 	add.w	r0, sl, #472	@ 0x1d8
c0de111e:	e9cd 0600 	strd	r0, r6, [sp]
c0de1122:	45ab      	cmp	fp, r5
c0de1124:	d2eb      	bcs.n	c0de10fe <inner_keccak256_extract+0x4c>
c0de1126:	4620      	mov	r0, r4
c0de1128:	4651      	mov	r1, sl
c0de112a:	2220      	movs	r2, #32
c0de112c:	46a0      	mov	r8, r4
c0de112e:	f00a f8f8 	bl	c0deb322 <__aeabi_memcpy>
c0de1132:	e9da 5408 	ldrd	r5, r4, [sl, #32]
c0de1136:	9f02      	ldr	r7, [sp, #8]
c0de1138:	2638      	movs	r6, #56	@ 0x38
c0de113a:	f116 0008 	adds.w	r0, r6, #8
c0de113e:	d008      	beq.n	c0de1152 <inner_keccak256_extract+0xa0>
c0de1140:	4628      	mov	r0, r5
c0de1142:	4621      	mov	r1, r4
c0de1144:	4632      	mov	r2, r6
c0de1146:	f009 ff43 	bl	c0deafd0 <__aeabi_llsr>
c0de114a:	f807 0b01 	strb.w	r0, [r7], #1
c0de114e:	3e08      	subs	r6, #8
c0de1150:	e7f3      	b.n	c0de113a <inner_keccak256_extract+0x88>
c0de1152:	af04      	add	r7, sp, #16
c0de1154:	4638      	mov	r0, r7
c0de1156:	f7ff ff6b 	bl	c0de1030 <keccak_init>
c0de115a:	4638      	mov	r0, r7
c0de115c:	4641      	mov	r1, r8
c0de115e:	2228      	movs	r2, #40	@ 0x28
c0de1160:	4644      	mov	r4, r8
c0de1162:	f7ff ff69 	bl	c0de1038 <keccak_update>
c0de1166:	9d03      	ldr	r5, [sp, #12]
c0de1168:	eba5 080b 	sub.w	r8, r5, fp
c0de116c:	f1b8 0f1f 	cmp.w	r8, #31
c0de1170:	d90b      	bls.n	c0de118a <inner_keccak256_extract+0xd8>
c0de1172:	9e01      	ldr	r6, [sp, #4]
c0de1174:	4638      	mov	r0, r7
c0de1176:	eb06 010b 	add.w	r1, r6, fp
c0de117a:	f7ff ff5f 	bl	c0de103c <keccak_final>
c0de117e:	f10b 0b20 	add.w	fp, fp, #32
c0de1182:	f04f 0800 	mov.w	r8, #0
c0de1186:	2000      	movs	r0, #0
c0de1188:	e00d      	b.n	c0de11a6 <inner_keccak256_extract+0xf4>
c0de118a:	4638      	mov	r0, r7
c0de118c:	9f00      	ldr	r7, [sp, #0]
c0de118e:	4639      	mov	r1, r7
c0de1190:	f7ff ff54 	bl	c0de103c <keccak_final>
c0de1194:	9e01      	ldr	r6, [sp, #4]
c0de1196:	4639      	mov	r1, r7
c0de1198:	4642      	mov	r2, r8
c0de119a:	eb06 000b 	add.w	r0, r6, fp
c0de119e:	f00a f8c0 	bl	c0deb322 <__aeabi_memcpy>
c0de11a2:	2020      	movs	r0, #32
c0de11a4:	46ab      	mov	fp, r5
c0de11a6:	e9ca 807e 	strd	r8, r0, [sl, #504]	@ 0x1f8
c0de11aa:	e9da 0108 	ldrd	r0, r1, [sl, #32]
c0de11ae:	3001      	adds	r0, #1
c0de11b0:	f141 0100 	adc.w	r1, r1, #0
c0de11b4:	e9ca 0108 	strd	r0, r1, [sl, #32]
c0de11b8:	e7b3      	b.n	c0de1122 <inner_keccak256_extract+0x70>

c0de11ba <pqcrystals_dilithium2_lowram_pack_sig_h>:
c0de11ba:	b5b0      	push	{r4, r5, r7, lr}
c0de11bc:	f500 6012 	add.w	r0, r0, #2336	@ 0x920
c0de11c0:	2400      	movs	r4, #0
c0de11c2:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
c0de11c6:	d009      	beq.n	c0de11dc <pqcrystals_dilithium2_lowram_pack_sig_h+0x22>
c0de11c8:	f851 5024 	ldr.w	r5, [r1, r4, lsl #2]
c0de11cc:	b125      	cbz	r5, c0de11d8 <pqcrystals_dilithium2_lowram_pack_sig_h+0x1e>
c0de11ce:	681d      	ldr	r5, [r3, #0]
c0de11d0:	5544      	strb	r4, [r0, r5]
c0de11d2:	681d      	ldr	r5, [r3, #0]
c0de11d4:	3501      	adds	r5, #1
c0de11d6:	601d      	str	r5, [r3, #0]
c0de11d8:	3401      	adds	r4, #1
c0de11da:	e7f2      	b.n	c0de11c2 <pqcrystals_dilithium2_lowram_pack_sig_h+0x8>
c0de11dc:	6819      	ldr	r1, [r3, #0]
c0de11de:	4410      	add	r0, r2
c0de11e0:	f880 1050 	strb.w	r1, [r0, #80]	@ 0x50
c0de11e4:	bdb0      	pop	{r4, r5, r7, pc}

c0de11e6 <pqcrystals_dilithium2_lowram_pack_sig_h_zero>:
c0de11e6:	680a      	ldr	r2, [r1, #0]
c0de11e8:	f500 6012 	add.w	r0, r0, #2336	@ 0x920
c0de11ec:	2300      	movs	r3, #0
c0de11ee:	2a4f      	cmp	r2, #79	@ 0x4f
c0de11f0:	bf88      	it	hi
c0de11f2:	4770      	bxhi	lr
c0de11f4:	5483      	strb	r3, [r0, r2]
c0de11f6:	680a      	ldr	r2, [r1, #0]
c0de11f8:	3201      	adds	r2, #1
c0de11fa:	600a      	str	r2, [r1, #0]
c0de11fc:	e7f7      	b.n	c0de11ee <pqcrystals_dilithium2_lowram_pack_sig_h_zero+0x8>

c0de11fe <poly_challenge_compress>:
c0de11fe:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1202:	2200      	movs	r2, #0
c0de1204:	2300      	movs	r3, #0
c0de1206:	2b44      	cmp	r3, #68	@ 0x44
c0de1208:	d002      	beq.n	c0de1210 <poly_challenge_compress+0x12>
c0de120a:	54c2      	strb	r2, [r0, r3]
c0de120c:	3301      	adds	r3, #1
c0de120e:	e7fa      	b.n	c0de1206 <poly_challenge_compress+0x8>
c0de1210:	2200      	movs	r2, #0
c0de1212:	2301      	movs	r3, #1
c0de1214:	2600      	movs	r6, #0
c0de1216:	f04f 0800 	mov.w	r8, #0
c0de121a:	2500      	movs	r5, #0
c0de121c:	2700      	movs	r7, #0
c0de121e:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de1222:	d011      	beq.n	c0de1248 <poly_challenge_compress+0x4a>
c0de1224:	f851 4022 	ldr.w	r4, [r1, r2, lsl #2]
c0de1228:	b164      	cbz	r4, c0de1244 <poly_challenge_compress+0x46>
c0de122a:	5582      	strb	r2, [r0, r6]
c0de122c:	f851 4022 	ldr.w	r4, [r1, r2, lsl #2]
c0de1230:	3401      	adds	r4, #1
c0de1232:	bf04      	itt	eq
c0de1234:	433d      	orreq	r5, r7
c0de1236:	ea48 0803 	orreq.w	r8, r8, r3
c0de123a:	007c      	lsls	r4, r7, #1
c0de123c:	3601      	adds	r6, #1
c0de123e:	ea44 77d3 	orr.w	r7, r4, r3, lsr #31
c0de1242:	005b      	lsls	r3, r3, #1
c0de1244:	3201      	adds	r2, #1
c0de1246:	e7ea      	b.n	c0de121e <poly_challenge_compress+0x20>
c0de1248:	f100 073c 	add.w	r7, r0, #60	@ 0x3c
c0de124c:	2600      	movs	r6, #0
c0de124e:	2e40      	cmp	r6, #64	@ 0x40
c0de1250:	bf08      	it	eq
c0de1252:	e8bd 81f0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de1256:	4640      	mov	r0, r8
c0de1258:	4629      	mov	r1, r5
c0de125a:	4632      	mov	r2, r6
c0de125c:	f009 feb8 	bl	c0deafd0 <__aeabi_llsr>
c0de1260:	f807 0b01 	strb.w	r0, [r7], #1
c0de1264:	3608      	adds	r6, #8
c0de1266:	e7f2      	b.n	c0de124e <poly_challenge_compress+0x50>

c0de1268 <poly_challenge_decompress>:
c0de1268:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de126c:	4688      	mov	r8, r1
c0de126e:	4682      	mov	sl, r0
c0de1270:	2000      	movs	r0, #0
c0de1272:	2100      	movs	r1, #0
c0de1274:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de1278:	d003      	beq.n	c0de1282 <poly_challenge_decompress+0x1a>
c0de127a:	f84a 0021 	str.w	r0, [sl, r1, lsl #2]
c0de127e:	3101      	adds	r1, #1
c0de1280:	e7f8      	b.n	c0de1274 <poly_challenge_decompress+0xc>
c0de1282:	f108 053c 	add.w	r5, r8, #60	@ 0x3c
c0de1286:	2600      	movs	r6, #0
c0de1288:	2700      	movs	r7, #0
c0de128a:	2400      	movs	r4, #0
c0de128c:	2e40      	cmp	r6, #64	@ 0x40
c0de128e:	d009      	beq.n	c0de12a4 <poly_challenge_decompress+0x3c>
c0de1290:	f815 0b01 	ldrb.w	r0, [r5], #1
c0de1294:	2100      	movs	r1, #0
c0de1296:	4632      	mov	r2, r6
c0de1298:	f009 fea6 	bl	c0deafe8 <__aeabi_llsl>
c0de129c:	430c      	orrs	r4, r1
c0de129e:	4307      	orrs	r7, r0
c0de12a0:	3608      	adds	r6, #8
c0de12a2:	e7f3      	b.n	c0de128c <poly_challenge_decompress+0x24>
c0de12a4:	2000      	movs	r0, #0
c0de12a6:	2827      	cmp	r0, #39	@ 0x27
c0de12a8:	bf08      	it	eq
c0de12aa:	e8bd 85f8 	ldmiaeq.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de12ae:	07fa      	lsls	r2, r7, #31
c0de12b0:	f818 1000 	ldrb.w	r1, [r8, r0]
c0de12b4:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de12b8:	bf08      	it	eq
c0de12ba:	2201      	moveq	r2, #1
c0de12bc:	ea5f 0454 	movs.w	r4, r4, lsr #1
c0de12c0:	f84a 2021 	str.w	r2, [sl, r1, lsl #2]
c0de12c4:	ea4f 0737 	mov.w	r7, r7, rrx
c0de12c8:	3001      	adds	r0, #1
c0de12ca:	e7ec      	b.n	c0de12a6 <poly_challenge_decompress+0x3e>

c0de12cc <poly_schoolbook>:
c0de12cc:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de12d0:	4614      	mov	r4, r2
c0de12d2:	468a      	mov	sl, r1
c0de12d4:	2200      	movs	r2, #0
c0de12d6:	2100      	movs	r1, #0
c0de12d8:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de12dc:	d003      	beq.n	c0de12e6 <poly_schoolbook+0x1a>
c0de12de:	f840 2021 	str.w	r2, [r0, r1, lsl #2]
c0de12e2:	3101      	adds	r1, #1
c0de12e4:	e7f8      	b.n	c0de12d8 <poly_schoolbook+0xc>
c0de12e6:	f10a 053c 	add.w	r5, sl, #60	@ 0x3c
c0de12ea:	2700      	movs	r7, #0
c0de12ec:	f04f 0b00 	mov.w	fp, #0
c0de12f0:	2600      	movs	r6, #0
c0de12f2:	9003      	str	r0, [sp, #12]
c0de12f4:	2f40      	cmp	r7, #64	@ 0x40
c0de12f6:	d006      	beq.n	c0de1306 <poly_schoolbook+0x3a>
c0de12f8:	f000 fbf0 	bl	c0de1adc <OUTLINED_FUNCTION_2>
c0de12fc:	430e      	orrs	r6, r1
c0de12fe:	ea4b 0b00 	orr.w	fp, fp, r0
c0de1302:	3708      	adds	r7, #8
c0de1304:	e7f6      	b.n	c0de12f4 <poly_schoolbook+0x28>
c0de1306:	f04f 0800 	mov.w	r8, #0
c0de130a:	f8cd a004 	str.w	sl, [sp, #4]
c0de130e:	f1b8 0f27 	cmp.w	r8, #39	@ 0x27
c0de1312:	bf08      	it	eq
c0de1314:	e8bd 8dff 	ldmiaeq.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de1318:	f81a 0008 	ldrb.w	r0, [sl, r8]
c0de131c:	ea5f 71cb 	movs.w	r1, fp, lsl #31
c0de1320:	f5c0 7780 	rsb	r7, r0, #256	@ 0x100
c0de1324:	d111      	bne.n	c0de134a <poly_schoolbook+0x7e>
c0de1326:	9903      	ldr	r1, [sp, #12]
c0de1328:	9602      	str	r6, [sp, #8]
c0de132a:	2500      	movs	r5, #0
c0de132c:	eb01 0680 	add.w	r6, r1, r0, lsl #2
c0de1330:	42af      	cmp	r7, r5
c0de1332:	d01b      	beq.n	c0de136c <poly_schoolbook+0xa0>
c0de1334:	4620      	mov	r0, r4
c0de1336:	4629      	mov	r1, r5
c0de1338:	f000 f842 	bl	c0de13c0 <polyt0_unpack_idx>
c0de133c:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de1340:	4408      	add	r0, r1
c0de1342:	f846 0025 	str.w	r0, [r6, r5, lsl #2]
c0de1346:	3501      	adds	r5, #1
c0de1348:	e7f2      	b.n	c0de1330 <poly_schoolbook+0x64>
c0de134a:	9903      	ldr	r1, [sp, #12]
c0de134c:	2500      	movs	r5, #0
c0de134e:	eb01 0a80 	add.w	sl, r1, r0, lsl #2
c0de1352:	42af      	cmp	r7, r5
c0de1354:	d01b      	beq.n	c0de138e <poly_schoolbook+0xc2>
c0de1356:	4620      	mov	r0, r4
c0de1358:	4629      	mov	r1, r5
c0de135a:	f000 f831 	bl	c0de13c0 <polyt0_unpack_idx>
c0de135e:	f85a 1025 	ldr.w	r1, [sl, r5, lsl #2]
c0de1362:	1a08      	subs	r0, r1, r0
c0de1364:	f84a 0025 	str.w	r0, [sl, r5, lsl #2]
c0de1368:	3501      	adds	r5, #1
c0de136a:	e7f2      	b.n	c0de1352 <poly_schoolbook+0x86>
c0de136c:	f5a6 6580 	sub.w	r5, r6, #1024	@ 0x400
c0de1370:	9e02      	ldr	r6, [sp, #8]
c0de1372:	f5b7 7f80 	cmp.w	r7, #256	@ 0x100
c0de1376:	d01c      	beq.n	c0de13b2 <poly_schoolbook+0xe6>
c0de1378:	4620      	mov	r0, r4
c0de137a:	4639      	mov	r1, r7
c0de137c:	f000 f820 	bl	c0de13c0 <polyt0_unpack_idx>
c0de1380:	f855 1027 	ldr.w	r1, [r5, r7, lsl #2]
c0de1384:	1a08      	subs	r0, r1, r0
c0de1386:	f845 0027 	str.w	r0, [r5, r7, lsl #2]
c0de138a:	3701      	adds	r7, #1
c0de138c:	e7f1      	b.n	c0de1372 <poly_schoolbook+0xa6>
c0de138e:	f5aa 6580 	sub.w	r5, sl, #1024	@ 0x400
c0de1392:	f8dd a004 	ldr.w	sl, [sp, #4]
c0de1396:	f5b7 7f80 	cmp.w	r7, #256	@ 0x100
c0de139a:	d00a      	beq.n	c0de13b2 <poly_schoolbook+0xe6>
c0de139c:	4620      	mov	r0, r4
c0de139e:	4639      	mov	r1, r7
c0de13a0:	f000 f80e 	bl	c0de13c0 <polyt0_unpack_idx>
c0de13a4:	f855 1027 	ldr.w	r1, [r5, r7, lsl #2]
c0de13a8:	4408      	add	r0, r1
c0de13aa:	f845 0027 	str.w	r0, [r5, r7, lsl #2]
c0de13ae:	3701      	adds	r7, #1
c0de13b0:	e7f1      	b.n	c0de1396 <poly_schoolbook+0xca>
c0de13b2:	ea5f 0656 	movs.w	r6, r6, lsr #1
c0de13b6:	f108 0801 	add.w	r8, r8, #1
c0de13ba:	ea4f 0b3b 	mov.w	fp, fp, rrx
c0de13be:	e7a6      	b.n	c0de130e <poly_schoolbook+0x42>

c0de13c0 <polyt0_unpack_idx>:
c0de13c0:	08ca      	lsrs	r2, r1, #3
c0de13c2:	230d      	movs	r3, #13
c0de13c4:	f001 0107 	and.w	r1, r1, #7
c0de13c8:	fb02 0003 	mla	r0, r2, r3, r0
c0de13cc:	2906      	cmp	r1, #6
c0de13ce:	d00e      	beq.n	c0de13ee <polyt0_unpack_idx+0x2e>
c0de13d0:	2901      	cmp	r1, #1
c0de13d2:	d014      	beq.n	c0de13fe <polyt0_unpack_idx+0x3e>
c0de13d4:	2902      	cmp	r1, #2
c0de13d6:	d01a      	beq.n	c0de140e <polyt0_unpack_idx+0x4e>
c0de13d8:	2903      	cmp	r1, #3
c0de13da:	d01d      	beq.n	c0de1418 <polyt0_unpack_idx+0x58>
c0de13dc:	2904      	cmp	r1, #4
c0de13de:	d023      	beq.n	c0de1428 <polyt0_unpack_idx+0x68>
c0de13e0:	2905      	cmp	r1, #5
c0de13e2:	d029      	beq.n	c0de1438 <polyt0_unpack_idx+0x78>
c0de13e4:	bb69      	cbnz	r1, c0de1442 <polyt0_unpack_idx+0x82>
c0de13e6:	7801      	ldrb	r1, [r0, #0]
c0de13e8:	7840      	ldrb	r0, [r0, #1]
c0de13ea:	0200      	lsls	r0, r0, #8
c0de13ec:	e02d      	b.n	c0de144a <polyt0_unpack_idx+0x8a>
c0de13ee:	7a82      	ldrb	r2, [r0, #10]
c0de13f0:	7a41      	ldrb	r1, [r0, #9]
c0de13f2:	7ac3      	ldrb	r3, [r0, #11]
c0de13f4:	0090      	lsls	r0, r2, #2
c0de13f6:	ea40 1091 	orr.w	r0, r0, r1, lsr #6
c0de13fa:	0299      	lsls	r1, r3, #10
c0de13fc:	e025      	b.n	c0de144a <polyt0_unpack_idx+0x8a>
c0de13fe:	7882      	ldrb	r2, [r0, #2]
c0de1400:	7841      	ldrb	r1, [r0, #1]
c0de1402:	78c3      	ldrb	r3, [r0, #3]
c0de1404:	00d0      	lsls	r0, r2, #3
c0de1406:	ea40 1051 	orr.w	r0, r0, r1, lsr #5
c0de140a:	02d9      	lsls	r1, r3, #11
c0de140c:	e01d      	b.n	c0de144a <polyt0_unpack_idx+0x8a>
c0de140e:	78c1      	ldrb	r1, [r0, #3]
c0de1410:	7900      	ldrb	r0, [r0, #4]
c0de1412:	0180      	lsls	r0, r0, #6
c0de1414:	0889      	lsrs	r1, r1, #2
c0de1416:	e018      	b.n	c0de144a <polyt0_unpack_idx+0x8a>
c0de1418:	7942      	ldrb	r2, [r0, #5]
c0de141a:	7901      	ldrb	r1, [r0, #4]
c0de141c:	7983      	ldrb	r3, [r0, #6]
c0de141e:	0050      	lsls	r0, r2, #1
c0de1420:	ea40 10d1 	orr.w	r0, r0, r1, lsr #7
c0de1424:	0259      	lsls	r1, r3, #9
c0de1426:	e010      	b.n	c0de144a <polyt0_unpack_idx+0x8a>
c0de1428:	79c2      	ldrb	r2, [r0, #7]
c0de142a:	7981      	ldrb	r1, [r0, #6]
c0de142c:	7a03      	ldrb	r3, [r0, #8]
c0de142e:	0110      	lsls	r0, r2, #4
c0de1430:	ea40 1011 	orr.w	r0, r0, r1, lsr #4
c0de1434:	0319      	lsls	r1, r3, #12
c0de1436:	e008      	b.n	c0de144a <polyt0_unpack_idx+0x8a>
c0de1438:	7a01      	ldrb	r1, [r0, #8]
c0de143a:	7a40      	ldrb	r0, [r0, #9]
c0de143c:	01c0      	lsls	r0, r0, #7
c0de143e:	0849      	lsrs	r1, r1, #1
c0de1440:	e003      	b.n	c0de144a <polyt0_unpack_idx+0x8a>
c0de1442:	7ac1      	ldrb	r1, [r0, #11]
c0de1444:	7b00      	ldrb	r0, [r0, #12]
c0de1446:	0140      	lsls	r0, r0, #5
c0de1448:	08c9      	lsrs	r1, r1, #3
c0de144a:	4308      	orrs	r0, r1
c0de144c:	f36f 305f 	bfc	r0, #13, #19
c0de1450:	f5c0 5080 	rsb	r0, r0, #4096	@ 0x1000
c0de1454:	4770      	bx	lr
	...

c0de1458 <poly_schoolbook_t1>:
c0de1458:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de145c:	4614      	mov	r4, r2
c0de145e:	468b      	mov	fp, r1
c0de1460:	2200      	movs	r2, #0
c0de1462:	2100      	movs	r1, #0
c0de1464:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de1468:	d003      	beq.n	c0de1472 <poly_schoolbook_t1+0x1a>
c0de146a:	f840 2021 	str.w	r2, [r0, r1, lsl #2]
c0de146e:	3101      	adds	r1, #1
c0de1470:	e7f8      	b.n	c0de1464 <poly_schoolbook_t1+0xc>
c0de1472:	f10b 053c 	add.w	r5, fp, #60	@ 0x3c
c0de1476:	2700      	movs	r7, #0
c0de1478:	f04f 0a00 	mov.w	sl, #0
c0de147c:	2600      	movs	r6, #0
c0de147e:	9002      	str	r0, [sp, #8]
c0de1480:	2f40      	cmp	r7, #64	@ 0x40
c0de1482:	d006      	beq.n	c0de1492 <poly_schoolbook_t1+0x3a>
c0de1484:	f000 fb2a 	bl	c0de1adc <OUTLINED_FUNCTION_2>
c0de1488:	430e      	orrs	r6, r1
c0de148a:	ea4a 0a00 	orr.w	sl, sl, r0
c0de148e:	3708      	adds	r7, #8
c0de1490:	e7f6      	b.n	c0de1480 <poly_schoolbook_t1+0x28>
c0de1492:	4832      	ldr	r0, [pc, #200]	@ (c0de155c <poly_schoolbook_t1+0x104>)
c0de1494:	2200      	movs	r2, #0
c0de1496:	f8cd b000 	str.w	fp, [sp]
c0de149a:	4680      	mov	r8, r0
c0de149c:	2a27      	cmp	r2, #39	@ 0x27
c0de149e:	bf08      	it	eq
c0de14a0:	e8bd 8dff 	ldmiaeq.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de14a4:	f81b 0002 	ldrb.w	r0, [fp, r2]
c0de14a8:	ea5f 71ca 	movs.w	r1, sl, lsl #31
c0de14ac:	9203      	str	r2, [sp, #12]
c0de14ae:	f5c0 7780 	rsb	r7, r0, #256	@ 0x100
c0de14b2:	d112      	bne.n	c0de14da <poly_schoolbook_t1+0x82>
c0de14b4:	9902      	ldr	r1, [sp, #8]
c0de14b6:	9601      	str	r6, [sp, #4]
c0de14b8:	2500      	movs	r5, #0
c0de14ba:	eb01 0680 	add.w	r6, r1, r0, lsl #2
c0de14be:	42af      	cmp	r7, r5
c0de14c0:	d01e      	beq.n	c0de1500 <poly_schoolbook_t1+0xa8>
c0de14c2:	4620      	mov	r0, r4
c0de14c4:	4629      	mov	r1, r5
c0de14c6:	f000 f84b 	bl	c0de1560 <polyt1_unpack_idx>
c0de14ca:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de14ce:	eb01 3040 	add.w	r0, r1, r0, lsl #13
c0de14d2:	f846 0025 	str.w	r0, [r6, r5, lsl #2]
c0de14d6:	3501      	adds	r5, #1
c0de14d8:	e7f1      	b.n	c0de14be <poly_schoolbook_t1+0x66>
c0de14da:	9902      	ldr	r1, [sp, #8]
c0de14dc:	2500      	movs	r5, #0
c0de14de:	eb01 0b80 	add.w	fp, r1, r0, lsl #2
c0de14e2:	42af      	cmp	r7, r5
c0de14e4:	d01f      	beq.n	c0de1526 <poly_schoolbook_t1+0xce>
c0de14e6:	4620      	mov	r0, r4
c0de14e8:	4629      	mov	r1, r5
c0de14ea:	f000 f839 	bl	c0de1560 <polyt1_unpack_idx>
c0de14ee:	f85b 1025 	ldr.w	r1, [fp, r5, lsl #2]
c0de14f2:	4642      	mov	r2, r8
c0de14f4:	fb00 1008 	mla	r0, r0, r8, r1
c0de14f8:	f84b 0025 	str.w	r0, [fp, r5, lsl #2]
c0de14fc:	3501      	adds	r5, #1
c0de14fe:	e7f0      	b.n	c0de14e2 <poly_schoolbook_t1+0x8a>
c0de1500:	f5a6 6580 	sub.w	r5, r6, #1024	@ 0x400
c0de1504:	9e01      	ldr	r6, [sp, #4]
c0de1506:	f5b7 7f80 	cmp.w	r7, #256	@ 0x100
c0de150a:	d01f      	beq.n	c0de154c <poly_schoolbook_t1+0xf4>
c0de150c:	4620      	mov	r0, r4
c0de150e:	4639      	mov	r1, r7
c0de1510:	f000 f826 	bl	c0de1560 <polyt1_unpack_idx>
c0de1514:	f855 1027 	ldr.w	r1, [r5, r7, lsl #2]
c0de1518:	4642      	mov	r2, r8
c0de151a:	fb00 1008 	mla	r0, r0, r8, r1
c0de151e:	f845 0027 	str.w	r0, [r5, r7, lsl #2]
c0de1522:	3701      	adds	r7, #1
c0de1524:	e7ef      	b.n	c0de1506 <poly_schoolbook_t1+0xae>
c0de1526:	f5ab 6580 	sub.w	r5, fp, #1024	@ 0x400
c0de152a:	f8dd b000 	ldr.w	fp, [sp]
c0de152e:	f5b7 7f80 	cmp.w	r7, #256	@ 0x100
c0de1532:	d00b      	beq.n	c0de154c <poly_schoolbook_t1+0xf4>
c0de1534:	4620      	mov	r0, r4
c0de1536:	4639      	mov	r1, r7
c0de1538:	f000 f812 	bl	c0de1560 <polyt1_unpack_idx>
c0de153c:	f855 1027 	ldr.w	r1, [r5, r7, lsl #2]
c0de1540:	eb01 3040 	add.w	r0, r1, r0, lsl #13
c0de1544:	f845 0027 	str.w	r0, [r5, r7, lsl #2]
c0de1548:	3701      	adds	r7, #1
c0de154a:	e7f0      	b.n	c0de152e <poly_schoolbook_t1+0xd6>
c0de154c:	9a03      	ldr	r2, [sp, #12]
c0de154e:	ea5f 0656 	movs.w	r6, r6, lsr #1
c0de1552:	ea4f 0a3a 	mov.w	sl, sl, rrx
c0de1556:	3201      	adds	r2, #1
c0de1558:	e7a0      	b.n	c0de149c <poly_schoolbook_t1+0x44>
c0de155a:	bf00      	nop
c0de155c:	ffffe000 	.word	0xffffe000

c0de1560 <polyt1_unpack_idx>:
c0de1560:	088a      	lsrs	r2, r1, #2
c0de1562:	f001 0103 	and.w	r1, r1, #3
c0de1566:	eb02 0282 	add.w	r2, r2, r2, lsl #2
c0de156a:	2902      	cmp	r1, #2
c0de156c:	4410      	add	r0, r2
c0de156e:	d006      	beq.n	c0de157e <polyt1_unpack_idx+0x1e>
c0de1570:	2901      	cmp	r1, #1
c0de1572:	d009      	beq.n	c0de1588 <polyt1_unpack_idx+0x28>
c0de1574:	b969      	cbnz	r1, c0de1592 <polyt1_unpack_idx+0x32>
c0de1576:	7801      	ldrb	r1, [r0, #0]
c0de1578:	2208      	movs	r2, #8
c0de157a:	2301      	movs	r3, #1
c0de157c:	e00d      	b.n	c0de159a <polyt1_unpack_idx+0x3a>
c0de157e:	7881      	ldrb	r1, [r0, #2]
c0de1580:	2204      	movs	r2, #4
c0de1582:	2303      	movs	r3, #3
c0de1584:	0909      	lsrs	r1, r1, #4
c0de1586:	e008      	b.n	c0de159a <polyt1_unpack_idx+0x3a>
c0de1588:	7841      	ldrb	r1, [r0, #1]
c0de158a:	2206      	movs	r2, #6
c0de158c:	2302      	movs	r3, #2
c0de158e:	0889      	lsrs	r1, r1, #2
c0de1590:	e003      	b.n	c0de159a <polyt1_unpack_idx+0x3a>
c0de1592:	78c1      	ldrb	r1, [r0, #3]
c0de1594:	2202      	movs	r2, #2
c0de1596:	2304      	movs	r3, #4
c0de1598:	0989      	lsrs	r1, r1, #6
c0de159a:	5cc0      	ldrb	r0, [r0, r3]
c0de159c:	4090      	lsls	r0, r2
c0de159e:	f400 707f 	and.w	r0, r0, #1020	@ 0x3fc
c0de15a2:	4308      	orrs	r0, r1
c0de15a4:	4770      	bx	lr

c0de15a6 <polyw_pack>:
c0de15a6:	b5b0      	push	{r4, r5, r7, lr}
c0de15a8:	4605      	mov	r5, r0
c0de15aa:	4608      	mov	r0, r1
c0de15ac:	460c      	mov	r4, r1
c0de15ae:	f000 fb23 	bl	c0de1bf8 <pqcrystals_dilithium2_lowram_poly_reduce>
c0de15b2:	4620      	mov	r0, r4
c0de15b4:	f000 fb2f 	bl	c0de1c16 <pqcrystals_dilithium2_lowram_poly_caddq>
c0de15b8:	2000      	movs	r0, #0
c0de15ba:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de15be:	bf08      	it	eq
c0de15c0:	bdb0      	popeq	{r4, r5, r7, pc}
c0de15c2:	f854 1020 	ldr.w	r1, [r4, r0, lsl #2]
c0de15c6:	eb00 0240 	add.w	r2, r0, r0, lsl #1
c0de15ca:	54a9      	strb	r1, [r5, r2]
c0de15cc:	18a9      	adds	r1, r5, r2
c0de15ce:	f854 2020 	ldr.w	r2, [r4, r0, lsl #2]
c0de15d2:	0a12      	lsrs	r2, r2, #8
c0de15d4:	704a      	strb	r2, [r1, #1]
c0de15d6:	eb04 0280 	add.w	r2, r4, r0, lsl #2
c0de15da:	3001      	adds	r0, #1
c0de15dc:	8852      	ldrh	r2, [r2, #2]
c0de15de:	708a      	strb	r2, [r1, #2]
c0de15e0:	e7eb      	b.n	c0de15ba <polyw_pack+0x14>

c0de15e2 <polyw_unpack>:
c0de15e2:	b5b0      	push	{r4, r5, r7, lr}
c0de15e4:	2200      	movs	r2, #0
c0de15e6:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de15ea:	bf08      	it	eq
c0de15ec:	bdb0      	popeq	{r4, r5, r7, pc}
c0de15ee:	eb02 0342 	add.w	r3, r2, r2, lsl #1
c0de15f2:	5ccc      	ldrb	r4, [r1, r3]
c0de15f4:	440b      	add	r3, r1
c0de15f6:	f840 4022 	str.w	r4, [r0, r2, lsl #2]
c0de15fa:	785d      	ldrb	r5, [r3, #1]
c0de15fc:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de1600:	f840 4022 	str.w	r4, [r0, r2, lsl #2]
c0de1604:	789b      	ldrb	r3, [r3, #2]
c0de1606:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
c0de160a:	f840 3022 	str.w	r3, [r0, r2, lsl #2]
c0de160e:	3201      	adds	r2, #1
c0de1610:	e7e9      	b.n	c0de15e6 <polyw_unpack+0x4>

c0de1612 <polyw_sub>:
c0de1612:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1614:	3102      	adds	r1, #2
c0de1616:	2300      	movs	r3, #0
c0de1618:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
c0de161c:	bf08      	it	eq
c0de161e:	bdf0      	popeq	{r4, r5, r6, r7, pc}
c0de1620:	f811 5c02 	ldrb.w	r5, [r1, #-2]
c0de1624:	f811 6c01 	ldrb.w	r6, [r1, #-1]
c0de1628:	f811 7b03 	ldrb.w	r7, [r1], #3
c0de162c:	f852 4023 	ldr.w	r4, [r2, r3, lsl #2]
c0de1630:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de1634:	ea45 4507 	orr.w	r5, r5, r7, lsl #16
c0de1638:	1b2c      	subs	r4, r5, r4
c0de163a:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
c0de163e:	3301      	adds	r3, #1
c0de1640:	e7ea      	b.n	c0de1618 <polyw_sub+0x6>

c0de1642 <poly_highbits>:
c0de1642:	b5b0      	push	{r4, r5, r7, lr}
c0de1644:	2200      	movs	r2, #0
c0de1646:	f642 430b 	movw	r3, #11275	@ 0x2c0b
c0de164a:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de164e:	bf08      	it	eq
c0de1650:	bdb0      	popeq	{r4, r5, r7, pc}
c0de1652:	f851 4022 	ldr.w	r4, [r1, r2, lsl #2]
c0de1656:	347f      	adds	r4, #127	@ 0x7f
c0de1658:	11e4      	asrs	r4, r4, #7
c0de165a:	435c      	muls	r4, r3
c0de165c:	f504 0500 	add.w	r5, r4, #8388608	@ 0x800000
c0de1660:	162d      	asrs	r5, r5, #24
c0de1662:	f1b4 5f2e 	cmp.w	r4, #729808896	@ 0x2b800000
c0de1666:	bfa8      	it	ge
c0de1668:	2500      	movge	r5, #0
c0de166a:	f840 5022 	str.w	r5, [r0, r2, lsl #2]
c0de166e:	3201      	adds	r2, #1
c0de1670:	e7eb      	b.n	c0de164a <poly_highbits+0x8>
	...

c0de1674 <poly_lowbits>:
c0de1674:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1678:	4e13      	ldr	r6, [pc, #76]	@ (c0de16c8 <poly_lowbits+0x54>)
c0de167a:	4f15      	ldr	r7, [pc, #84]	@ (c0de16d0 <poly_lowbits+0x5c>)
c0de167c:	2200      	movs	r2, #0
c0de167e:	f642 4c0b 	movw	ip, #11275	@ 0x2c0b
c0de1682:	f06f 0e01 	mvn.w	lr, #1
c0de1686:	46b0      	mov	r8, r6
c0de1688:	4e10      	ldr	r6, [pc, #64]	@ (c0de16cc <poly_lowbits+0x58>)
c0de168a:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de168e:	bf08      	it	eq
c0de1690:	e8bd 81f0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de1694:	f851 3022 	ldr.w	r3, [r1, r2, lsl #2]
c0de1698:	f103 047f 	add.w	r4, r3, #127	@ 0x7f
c0de169c:	11e4      	asrs	r4, r4, #7
c0de169e:	fb04 f40c 	mul.w	r4, r4, ip
c0de16a2:	f504 0500 	add.w	r5, r4, #8388608	@ 0x800000
c0de16a6:	f1b4 5f2e 	cmp.w	r4, #729808896	@ 0x2b800000
c0de16aa:	4644      	mov	r4, r8
c0de16ac:	ea0e 55e5 	and.w	r5, lr, r5, asr #23
c0de16b0:	bfb8      	it	lt
c0de16b2:	fb05 3308 	mlalt	r3, r5, r8, r3
c0de16b6:	42bb      	cmp	r3, r7
c0de16b8:	4634      	mov	r4, r6
c0de16ba:	bfc8      	it	gt
c0de16bc:	4433      	addgt	r3, r6
c0de16be:	f840 3022 	str.w	r3, [r0, r2, lsl #2]
c0de16c2:	3201      	adds	r2, #1
c0de16c4:	e7e1      	b.n	c0de168a <poly_lowbits+0x16>
c0de16c6:	bf00      	nop
c0de16c8:	fffe8c00 	.word	0xfffe8c00
c0de16cc:	ff801fff 	.word	0xff801fff
c0de16d0:	003ff000 	.word	0x003ff000

c0de16d4 <unpack_sk_s1>:
c0de16d4:	eb02 0242 	add.w	r2, r2, r2, lsl #1
c0de16d8:	eb01 1142 	add.w	r1, r1, r2, lsl #5
c0de16dc:	3180      	adds	r1, #128	@ 0x80
c0de16de:	f001 bb1e 	b.w	c0de2d1e <small_polyeta_unpack>

c0de16e2 <unpack_sk_s2>:
c0de16e2:	eb02 0242 	add.w	r2, r2, r2, lsl #1
c0de16e6:	eb01 1142 	add.w	r1, r1, r2, lsl #5
c0de16ea:	f501 7100 	add.w	r1, r1, #512	@ 0x200
c0de16ee:	f001 bb16 	b.w	c0de2d1e <small_polyeta_unpack>

c0de16f2 <polyw_add_idx>:
c0de16f2:	b570      	push	{r4, r5, r6, lr}
c0de16f4:	4604      	mov	r4, r0
c0de16f6:	eb02 0542 	add.w	r5, r2, r2, lsl #1
c0de16fa:	1966      	adds	r6, r4, r5
c0de16fc:	5d40      	ldrb	r0, [r0, r5]
c0de16fe:	7872      	ldrb	r2, [r6, #1]
c0de1700:	78b3      	ldrb	r3, [r6, #2]
c0de1702:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
c0de1706:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de170a:	4408      	add	r0, r1
c0de170c:	f000 fd88 	bl	c0de2220 <pqcrystals_dilithium2_lowram_freeze>
c0de1710:	0c01      	lsrs	r1, r0, #16
c0de1712:	5560      	strb	r0, [r4, r5]
c0de1714:	0a00      	lsrs	r0, r0, #8
c0de1716:	70b1      	strb	r1, [r6, #2]
c0de1718:	7070      	strb	r0, [r6, #1]
c0de171a:	bd70      	pop	{r4, r5, r6, pc}

c0de171c <poly_uniform_pointwise_montgomery_polywadd_lowram_eth>:
c0de171c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1720:	f5ad 7d06 	sub.w	sp, sp, #536	@ 0x218
c0de1724:	f10d 0808 	add.w	r8, sp, #8
c0de1728:	4683      	mov	fp, r0
c0de172a:	461e      	mov	r6, r3
c0de172c:	4617      	mov	r7, r2
c0de172e:	468a      	mov	sl, r1
c0de1730:	4640      	mov	r0, r8
c0de1732:	f7ff fc85 	bl	c0de1040 <inner_keccak256_init>
c0de1736:	4640      	mov	r0, r8
c0de1738:	4639      	mov	r1, r7
c0de173a:	2220      	movs	r2, #32
c0de173c:	f7ff fc91 	bl	c0de1062 <inner_keccak256_inject>
c0de1740:	0a30      	lsrs	r0, r6, #8
c0de1742:	f10d 0106 	add.w	r1, sp, #6
c0de1746:	2202      	movs	r2, #2
c0de1748:	f88d 6006 	strb.w	r6, [sp, #6]
c0de174c:	f88d 0007 	strb.w	r0, [sp, #7]
c0de1750:	4640      	mov	r0, r8
c0de1752:	f7ff fc86 	bl	c0de1062 <inner_keccak256_inject>
c0de1756:	4640      	mov	r0, r8
c0de1758:	f7ff fc95 	bl	c0de1086 <inner_keccak256_flip>
c0de175c:	4c10      	ldr	r4, [pc, #64]	@ (c0de17a0 <poly_uniform_pointwise_montgomery_polywadd_lowram_eth+0x84>)
c0de175e:	2700      	movs	r7, #0
c0de1760:	f20d 260f 	addw	r6, sp, #527	@ 0x20f
c0de1764:	4640      	mov	r0, r8
c0de1766:	4631      	mov	r1, r6
c0de1768:	2209      	movs	r2, #9
c0de176a:	f7ff fca2 	bl	c0de10b2 <inner_keccak256_extract>
c0de176e:	2500      	movs	r5, #0
c0de1770:	2d06      	cmp	r5, #6
c0de1772:	bf98      	it	ls
c0de1774:	f5b7 7f80 	cmpls.w	r7, #256	@ 0x100
c0de1778:	d20b      	bcs.n	c0de1792 <poly_uniform_pointwise_montgomery_polywadd_lowram_eth+0x76>
c0de177a:	f000 f99a 	bl	c0de1ab2 <OUTLINED_FUNCTION_0>
c0de177e:	d806      	bhi.n	c0de178e <poly_uniform_pointwise_montgomery_polywadd_lowram_eth+0x72>
c0de1780:	f85a 1027 	ldr.w	r1, [sl, r7, lsl #2]
c0de1784:	f000 f9b0 	bl	c0de1ae8 <OUTLINED_FUNCTION_3>
c0de1788:	f000 f9b2 	bl	c0de1af0 <OUTLINED_FUNCTION_4>
c0de178c:	3701      	adds	r7, #1
c0de178e:	3503      	adds	r5, #3
c0de1790:	e7ee      	b.n	c0de1770 <poly_uniform_pointwise_montgomery_polywadd_lowram_eth+0x54>
c0de1792:	f5b7 7f80 	cmp.w	r7, #256	@ 0x100
c0de1796:	d3e5      	bcc.n	c0de1764 <poly_uniform_pointwise_montgomery_polywadd_lowram_eth+0x48>
c0de1798:	f50d 7d06 	add.w	sp, sp, #536	@ 0x218
c0de179c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de17a0:	007fe000 	.word	0x007fe000

c0de17a4 <polyz_unpack_inplace>:
c0de17a4:	b5b0      	push	{r4, r5, r7, lr}
c0de17a6:	7801      	ldrb	r1, [r0, #0]
c0de17a8:	7883      	ldrb	r3, [r0, #2]
c0de17aa:	7842      	ldrb	r2, [r0, #1]
c0de17ac:	78c4      	ldrb	r4, [r0, #3]
c0de17ae:	7a05      	ldrb	r5, [r0, #8]
c0de17b0:	f363 4111 	bfi	r1, r3, #16, #2
c0de17b4:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de17b8:	79c2      	ldrb	r2, [r0, #7]
c0de17ba:	f5c1 3100 	rsb	r1, r1, #131072	@ 0x20000
c0de17be:	6001      	str	r1, [r0, #0]
c0de17c0:	7981      	ldrb	r1, [r0, #6]
c0de17c2:	0092      	lsls	r2, r2, #2
c0de17c4:	ea42 1291 	orr.w	r2, r2, r1, lsr #6
c0de17c8:	f001 013f 	and.w	r1, r1, #63	@ 0x3f
c0de17cc:	ea42 2285 	orr.w	r2, r2, r5, lsl #10
c0de17d0:	7945      	ldrb	r5, [r0, #5]
c0de17d2:	f5c2 3200 	rsb	r2, r2, #131072	@ 0x20000
c0de17d6:	60c2      	str	r2, [r0, #12]
c0de17d8:	7902      	ldrb	r2, [r0, #4]
c0de17da:	012d      	lsls	r5, r5, #4
c0de17dc:	ea45 1512 	orr.w	r5, r5, r2, lsr #4
c0de17e0:	ea45 3101 	orr.w	r1, r5, r1, lsl #12
c0de17e4:	f5c1 3100 	rsb	r1, r1, #131072	@ 0x20000
c0de17e8:	6081      	str	r1, [r0, #8]
c0de17ea:	0899      	lsrs	r1, r3, #2
c0de17ec:	f362 3191 	bfi	r1, r2, #14, #4
c0de17f0:	ea41 1184 	orr.w	r1, r1, r4, lsl #6
c0de17f4:	f5c1 3100 	rsb	r1, r1, #131072	@ 0x20000
c0de17f8:	6041      	str	r1, [r0, #4]
c0de17fa:	bdb0      	pop	{r4, r5, r7, pc}

c0de17fc <poly_uniform_gamma1_lowram_eth>:
c0de17fc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de17fe:	b085      	sub	sp, #20
c0de1800:	4605      	mov	r5, r0
c0de1802:	4618      	mov	r0, r3
c0de1804:	461c      	mov	r4, r3
c0de1806:	4616      	mov	r6, r2
c0de1808:	460f      	mov	r7, r1
c0de180a:	f7ff fc19 	bl	c0de1040 <inner_keccak256_init>
c0de180e:	4620      	mov	r0, r4
c0de1810:	4639      	mov	r1, r7
c0de1812:	2240      	movs	r2, #64	@ 0x40
c0de1814:	f7ff fc25 	bl	c0de1062 <inner_keccak256_inject>
c0de1818:	0a30      	lsrs	r0, r6, #8
c0de181a:	f10d 0102 	add.w	r1, sp, #2
c0de181e:	2202      	movs	r2, #2
c0de1820:	f88d 6002 	strb.w	r6, [sp, #2]
c0de1824:	f88d 0003 	strb.w	r0, [sp, #3]
c0de1828:	4620      	mov	r0, r4
c0de182a:	f7ff fc1a 	bl	c0de1062 <inner_keccak256_inject>
c0de182e:	4620      	mov	r0, r4
c0de1830:	f7ff fc29 	bl	c0de1086 <inner_keccak256_flip>
c0de1834:	2700      	movs	r7, #0
c0de1836:	ae01      	add	r6, sp, #4
c0de1838:	2f40      	cmp	r7, #64	@ 0x40
c0de183a:	bf04      	itt	eq
c0de183c:	b005      	addeq	sp, #20
c0de183e:	bdf0      	popeq	{r4, r5, r6, r7, pc}
c0de1840:	4620      	mov	r0, r4
c0de1842:	4631      	mov	r1, r6
c0de1844:	2209      	movs	r2, #9
c0de1846:	f7ff fc34 	bl	c0de10b2 <inner_keccak256_extract>
c0de184a:	4630      	mov	r0, r6
c0de184c:	f7ff ffaa 	bl	c0de17a4 <polyz_unpack_inplace>
c0de1850:	2000      	movs	r0, #0
c0de1852:	2804      	cmp	r0, #4
c0de1854:	d005      	beq.n	c0de1862 <poly_uniform_gamma1_lowram_eth+0x66>
c0de1856:	f856 1020 	ldr.w	r1, [r6, r0, lsl #2]
c0de185a:	f845 1020 	str.w	r1, [r5, r0, lsl #2]
c0de185e:	3001      	adds	r0, #1
c0de1860:	e7f7      	b.n	c0de1852 <poly_uniform_gamma1_lowram_eth+0x56>
c0de1862:	3510      	adds	r5, #16
c0de1864:	3701      	adds	r7, #1
c0de1866:	e7e7      	b.n	c0de1838 <poly_uniform_gamma1_lowram_eth+0x3c>

c0de1868 <poly_uniform_gamma1_add_lowram_eth>:
c0de1868:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de186c:	b085      	sub	sp, #20
c0de186e:	f8dd a030 	ldr.w	sl, [sp, #48]	@ 0x30
c0de1872:	4605      	mov	r5, r0
c0de1874:	461f      	mov	r7, r3
c0de1876:	4690      	mov	r8, r2
c0de1878:	460c      	mov	r4, r1
c0de187a:	4650      	mov	r0, sl
c0de187c:	f7ff fbe0 	bl	c0de1040 <inner_keccak256_init>
c0de1880:	4650      	mov	r0, sl
c0de1882:	4641      	mov	r1, r8
c0de1884:	2240      	movs	r2, #64	@ 0x40
c0de1886:	f7ff fbec 	bl	c0de1062 <inner_keccak256_inject>
c0de188a:	0a38      	lsrs	r0, r7, #8
c0de188c:	f10d 0102 	add.w	r1, sp, #2
c0de1890:	2202      	movs	r2, #2
c0de1892:	f88d 7002 	strb.w	r7, [sp, #2]
c0de1896:	f88d 0003 	strb.w	r0, [sp, #3]
c0de189a:	4650      	mov	r0, sl
c0de189c:	f7ff fbe1 	bl	c0de1062 <inner_keccak256_inject>
c0de18a0:	4650      	mov	r0, sl
c0de18a2:	f7ff fbf0 	bl	c0de1086 <inner_keccak256_flip>
c0de18a6:	2600      	movs	r6, #0
c0de18a8:	af01      	add	r7, sp, #4
c0de18aa:	2e40      	cmp	r6, #64	@ 0x40
c0de18ac:	d011      	beq.n	c0de18d2 <poly_uniform_gamma1_add_lowram_eth+0x6a>
c0de18ae:	4650      	mov	r0, sl
c0de18b0:	4639      	mov	r1, r7
c0de18b2:	2209      	movs	r2, #9
c0de18b4:	f7ff fbfd 	bl	c0de10b2 <inner_keccak256_extract>
c0de18b8:	4638      	mov	r0, r7
c0de18ba:	f7ff ff73 	bl	c0de17a4 <polyz_unpack_inplace>
c0de18be:	2000      	movs	r0, #0
c0de18c0:	2804      	cmp	r0, #4
c0de18c2:	d002      	beq.n	c0de18ca <poly_uniform_gamma1_add_lowram_eth+0x62>
c0de18c4:	f000 f901 	bl	c0de1aca <OUTLINED_FUNCTION_1>
c0de18c8:	e7fa      	b.n	c0de18c0 <poly_uniform_gamma1_add_lowram_eth+0x58>
c0de18ca:	3410      	adds	r4, #16
c0de18cc:	3510      	adds	r5, #16
c0de18ce:	3601      	adds	r6, #1
c0de18d0:	e7eb      	b.n	c0de18aa <poly_uniform_gamma1_add_lowram_eth+0x42>
c0de18d2:	b005      	add	sp, #20
c0de18d4:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de18d8 <poly_make_hint_lowram>:
c0de18d8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de18dc:	4686      	mov	lr, r0
c0de18de:	481a      	ldr	r0, [pc, #104]	@ (c0de1948 <poly_make_hint_lowram+0x70>)
c0de18e0:	1c93      	adds	r3, r2, #2
c0de18e2:	468c      	mov	ip, r1
c0de18e4:	2200      	movs	r2, #0
c0de18e6:	f642 450b 	movw	r5, #11275	@ 0x2c0b
c0de18ea:	2600      	movs	r6, #0
c0de18ec:	4680      	mov	r8, r0
c0de18ee:	f5b6 7f80 	cmp.w	r6, #256	@ 0x100
c0de18f2:	d026      	beq.n	c0de1942 <poly_make_hint_lowram+0x6a>
c0de18f4:	f813 4c02 	ldrb.w	r4, [r3, #-2]
c0de18f8:	f813 1c01 	ldrb.w	r1, [r3, #-1]
c0de18fc:	f813 0b03 	ldrb.w	r0, [r3], #3
c0de1900:	f85c 7026 	ldr.w	r7, [ip, r6, lsl #2]
c0de1904:	ea44 2101 	orr.w	r1, r4, r1, lsl #8
c0de1908:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de190c:	307f      	adds	r0, #127	@ 0x7f
c0de190e:	19c1      	adds	r1, r0, r7
c0de1910:	4647      	mov	r7, r8
c0de1912:	11c9      	asrs	r1, r1, #7
c0de1914:	4369      	muls	r1, r5
c0de1916:	f501 0400 	add.w	r4, r1, #8388608	@ 0x800000
c0de191a:	1624      	asrs	r4, r4, #24
c0de191c:	4541      	cmp	r1, r8
c0de191e:	bfc8      	it	gt
c0de1920:	2400      	movgt	r4, #0
c0de1922:	09c0      	lsrs	r0, r0, #7
c0de1924:	4368      	muls	r0, r5
c0de1926:	f500 0100 	add.w	r1, r0, #8388608	@ 0x800000
c0de192a:	0e09      	lsrs	r1, r1, #24
c0de192c:	4540      	cmp	r0, r8
c0de192e:	bf88      	it	hi
c0de1930:	2100      	movhi	r1, #0
c0de1932:	1a60      	subs	r0, r4, r1
c0de1934:	bf18      	it	ne
c0de1936:	2001      	movne	r0, #1
c0de1938:	f84e 0026 	str.w	r0, [lr, r6, lsl #2]
c0de193c:	4402      	add	r2, r0
c0de193e:	3601      	adds	r6, #1
c0de1940:	e7d5      	b.n	c0de18ee <poly_make_hint_lowram+0x16>
c0de1942:	4610      	mov	r0, r2
c0de1944:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de1948:	2b7fffff 	.word	0x2b7fffff

c0de194c <unpack_sig_h_indices>:
c0de194c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1950:	f503 6c12 	add.w	ip, r3, #2336	@ 0x920
c0de1954:	b142      	cbz	r2, c0de1968 <unpack_sig_h_indices+0x1c>
c0de1956:	eb02 0e0c 	add.w	lr, r2, ip
c0de195a:	f81e 6f50 	ldrb.w	r6, [lr, #80]!
c0de195e:	f81e 5c01 	ldrb.w	r5, [lr, #-1]
c0de1962:	42b5      	cmp	r5, r6
c0de1964:	d905      	bls.n	c0de1972 <unpack_sig_h_indices+0x26>
c0de1966:	e006      	b.n	c0de1976 <unpack_sig_h_indices+0x2a>
c0de1968:	f893 6970 	ldrb.w	r6, [r3, #2416]	@ 0x970
c0de196c:	f503 6e17 	add.w	lr, r3, #2416	@ 0x970
c0de1970:	2500      	movs	r5, #0
c0de1972:	2e50      	cmp	r6, #80	@ 0x50
c0de1974:	d902      	bls.n	c0de197c <unpack_sig_h_indices+0x30>
c0de1976:	2001      	movs	r0, #1
c0de1978:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de197c:	eb03 0805 	add.w	r8, r3, r5
c0de1980:	2700      	movs	r7, #0
c0de1982:	19ea      	adds	r2, r5, r7
c0de1984:	42b2      	cmp	r2, r6
c0de1986:	d20e      	bcs.n	c0de19a6 <unpack_sig_h_indices+0x5a>
c0de1988:	eb08 0407 	add.w	r4, r8, r7
c0de198c:	42aa      	cmp	r2, r5
c0de198e:	f894 6920 	ldrb.w	r6, [r4, #2336]	@ 0x920
c0de1992:	d903      	bls.n	c0de199c <unpack_sig_h_indices+0x50>
c0de1994:	f894 291f 	ldrb.w	r2, [r4, #2335]	@ 0x91f
c0de1998:	4296      	cmp	r6, r2
c0de199a:	d9ec      	bls.n	c0de1976 <unpack_sig_h_indices+0x2a>
c0de199c:	55c6      	strb	r6, [r0, r7]
c0de199e:	3701      	adds	r7, #1
c0de19a0:	f89e 6000 	ldrb.w	r6, [lr]
c0de19a4:	e7ed      	b.n	c0de1982 <unpack_sig_h_indices+0x36>
c0de19a6:	600f      	str	r7, [r1, #0]
c0de19a8:	f893 0973 	ldrb.w	r0, [r3, #2419]	@ 0x973
c0de19ac:	4601      	mov	r1, r0
c0de19ae:	284f      	cmp	r0, #79	@ 0x4f
c0de19b0:	d804      	bhi.n	c0de19bc <unpack_sig_h_indices+0x70>
c0de19b2:	f81c 2001 	ldrb.w	r2, [ip, r1]
c0de19b6:	1c48      	adds	r0, r1, #1
c0de19b8:	2a00      	cmp	r2, #0
c0de19ba:	d0f7      	beq.n	c0de19ac <unpack_sig_h_indices+0x60>
c0de19bc:	2000      	movs	r0, #0
c0de19be:	2950      	cmp	r1, #80	@ 0x50
c0de19c0:	bf38      	it	cc
c0de19c2:	2001      	movcc	r0, #1
c0de19c4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de19c8 <poly_use_hint_lowram>:
c0de19c8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de19cc:	4698      	mov	r8, r3
c0de19ce:	4615      	mov	r5, r2
c0de19d0:	460e      	mov	r6, r1
c0de19d2:	4607      	mov	r7, r0
c0de19d4:	2400      	movs	r4, #0
c0de19d6:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
c0de19da:	bf08      	it	eq
c0de19dc:	e8bd 81f0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de19e0:	4628      	mov	r0, r5
c0de19e2:	4641      	mov	r1, r8
c0de19e4:	b131      	cbz	r1, c0de19f4 <poly_use_hint_lowram+0x2c>
c0de19e6:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de19ea:	3901      	subs	r1, #1
c0de19ec:	4294      	cmp	r4, r2
c0de19ee:	d1f9      	bne.n	c0de19e4 <poly_use_hint_lowram+0x1c>
c0de19f0:	2101      	movs	r1, #1
c0de19f2:	e000      	b.n	c0de19f6 <poly_use_hint_lowram+0x2e>
c0de19f4:	2100      	movs	r1, #0
c0de19f6:	f856 0024 	ldr.w	r0, [r6, r4, lsl #2]
c0de19fa:	f000 fc4b 	bl	c0de2294 <pqcrystals_dilithium2_lowram_use_hint>
c0de19fe:	f847 0024 	str.w	r0, [r7, r4, lsl #2]
c0de1a02:	3401      	adds	r4, #1
c0de1a04:	e7e7      	b.n	c0de19d6 <poly_use_hint_lowram+0xe>

c0de1a06 <pack_pk_rho>:
c0de1a06:	2200      	movs	r2, #0
c0de1a08:	2a20      	cmp	r2, #32
c0de1a0a:	bf08      	it	eq
c0de1a0c:	4770      	bxeq	lr
c0de1a0e:	5c8b      	ldrb	r3, [r1, r2]
c0de1a10:	5483      	strb	r3, [r0, r2]
c0de1a12:	3201      	adds	r2, #1
c0de1a14:	e7f8      	b.n	c0de1a08 <pack_pk_rho+0x2>

c0de1a16 <pack_pk_t1>:
c0de1a16:	eb02 0282 	add.w	r2, r2, r2, lsl #2
c0de1a1a:	eb00 1082 	add.w	r0, r0, r2, lsl #6
c0de1a1e:	3020      	adds	r0, #32
c0de1a20:	f000 bb06 	b.w	c0de2030 <pqcrystals_dilithium2_lowram_polyt1_pack>

c0de1a24 <pack_sk_s1>:
c0de1a24:	eb02 0242 	add.w	r2, r2, r2, lsl #1
c0de1a28:	eb00 1042 	add.w	r0, r0, r2, lsl #5
c0de1a2c:	3080      	adds	r0, #128	@ 0x80
c0de1a2e:	f000 ba66 	b.w	c0de1efe <pqcrystals_dilithium2_lowram_polyeta_pack>

c0de1a32 <pack_sk_s2>:
c0de1a32:	eb02 0242 	add.w	r2, r2, r2, lsl #1
c0de1a36:	eb00 1042 	add.w	r0, r0, r2, lsl #5
c0de1a3a:	f500 7000 	add.w	r0, r0, #512	@ 0x200
c0de1a3e:	f000 ba5e 	b.w	c0de1efe <pqcrystals_dilithium2_lowram_polyeta_pack>

c0de1a42 <pack_sk_t0>:
c0de1a42:	f44f 73d0 	mov.w	r3, #416	@ 0x1a0
c0de1a46:	fb02 0003 	mla	r0, r2, r3, r0
c0de1a4a:	f500 7060 	add.w	r0, r0, #896	@ 0x380
c0de1a4e:	f000 bb13 	b.w	c0de2078 <pqcrystals_dilithium2_lowram_polyt0_pack>

c0de1a52 <pack_sk_rho>:
c0de1a52:	2200      	movs	r2, #0
c0de1a54:	2a20      	cmp	r2, #32
c0de1a56:	bf08      	it	eq
c0de1a58:	4770      	bxeq	lr
c0de1a5a:	5c8b      	ldrb	r3, [r1, r2]
c0de1a5c:	5483      	strb	r3, [r0, r2]
c0de1a5e:	3201      	adds	r2, #1
c0de1a60:	e7f8      	b.n	c0de1a54 <pack_sk_rho+0x2>

c0de1a62 <pack_sk_key>:
c0de1a62:	3020      	adds	r0, #32
c0de1a64:	2200      	movs	r2, #0
c0de1a66:	2a20      	cmp	r2, #32
c0de1a68:	bf08      	it	eq
c0de1a6a:	4770      	bxeq	lr
c0de1a6c:	5c8b      	ldrb	r3, [r1, r2]
c0de1a6e:	5483      	strb	r3, [r0, r2]
c0de1a70:	3201      	adds	r2, #1
c0de1a72:	e7f8      	b.n	c0de1a66 <pack_sk_key+0x4>

c0de1a74 <pack_sk_tr>:
c0de1a74:	3040      	adds	r0, #64	@ 0x40
c0de1a76:	2200      	movs	r2, #0
c0de1a78:	2a40      	cmp	r2, #64	@ 0x40
c0de1a7a:	bf08      	it	eq
c0de1a7c:	4770      	bxeq	lr
c0de1a7e:	5c8b      	ldrb	r3, [r1, r2]
c0de1a80:	5483      	strb	r3, [r0, r2]
c0de1a82:	3201      	adds	r2, #1
c0de1a84:	e7f8      	b.n	c0de1a78 <pack_sk_tr+0x4>

c0de1a86 <pqcrystals_dilithium2_lowram_poly_pointwise_acc_montgomery>:
c0de1a86:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1a88:	4614      	mov	r4, r2
c0de1a8a:	460d      	mov	r5, r1
c0de1a8c:	4606      	mov	r6, r0
c0de1a8e:	2700      	movs	r7, #0
c0de1a90:	f5b7 7f80 	cmp.w	r7, #256	@ 0x100
c0de1a94:	bf08      	it	eq
c0de1a96:	bdf8      	popeq	{r3, r4, r5, r6, r7, pc}
c0de1a98:	f855 0027 	ldr.w	r0, [r5, r7, lsl #2]
c0de1a9c:	f854 1027 	ldr.w	r1, [r4, r7, lsl #2]
c0de1aa0:	f000 f822 	bl	c0de1ae8 <OUTLINED_FUNCTION_3>
c0de1aa4:	f856 1027 	ldr.w	r1, [r6, r7, lsl #2]
c0de1aa8:	4408      	add	r0, r1
c0de1aaa:	f846 0027 	str.w	r0, [r6, r7, lsl #2]
c0de1aae:	3701      	adds	r7, #1
c0de1ab0:	e7ee      	b.n	c0de1a90 <pqcrystals_dilithium2_lowram_poly_pointwise_acc_montgomery+0xa>

c0de1ab2 <OUTLINED_FUNCTION_0>:
c0de1ab2:	1971      	adds	r1, r6, r5
c0de1ab4:	5d70      	ldrb	r0, [r6, r5]
c0de1ab6:	784a      	ldrb	r2, [r1, #1]
c0de1ab8:	7889      	ldrb	r1, [r1, #2]
c0de1aba:	ea40 2002 	orr.w	r0, r0, r2, lsl #8
c0de1abe:	f001 017f 	and.w	r1, r1, #127	@ 0x7f
c0de1ac2:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de1ac6:	42a0      	cmp	r0, r4
c0de1ac8:	4770      	bx	lr

c0de1aca <OUTLINED_FUNCTION_1>:
c0de1aca:	f857 1020 	ldr.w	r1, [r7, r0, lsl #2]
c0de1ace:	f854 2020 	ldr.w	r2, [r4, r0, lsl #2]
c0de1ad2:	4411      	add	r1, r2
c0de1ad4:	f845 1020 	str.w	r1, [r5, r0, lsl #2]
c0de1ad8:	3001      	adds	r0, #1
c0de1ada:	4770      	bx	lr

c0de1adc <OUTLINED_FUNCTION_2>:
c0de1adc:	f815 0b01 	ldrb.w	r0, [r5], #1
c0de1ae0:	2100      	movs	r1, #0
c0de1ae2:	463a      	mov	r2, r7
c0de1ae4:	f009 ba80 	b.w	c0deafe8 <__aeabi_llsl>

c0de1ae8 <OUTLINED_FUNCTION_3>:
c0de1ae8:	fb81 0100 	smull	r0, r1, r1, r0
c0de1aec:	f000 bb7a 	b.w	c0de21e4 <pqcrystals_dilithium2_lowram_montgomery_reduce>

c0de1af0 <OUTLINED_FUNCTION_4>:
c0de1af0:	4601      	mov	r1, r0
c0de1af2:	4658      	mov	r0, fp
c0de1af4:	463a      	mov	r2, r7
c0de1af6:	f7ff bdfc 	b.w	c0de16f2 <polyw_add_idx>
	...

c0de1afc <pqcrystals_dilithium2_lowram_ntt>:
c0de1afc:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de1b00:	4604      	mov	r4, r0
c0de1b02:	4817      	ldr	r0, [pc, #92]	@ (c0de1b60 <pqcrystals_dilithium2_lowram_ntt+0x64>)
c0de1b04:	f04f 0880 	mov.w	r8, #128	@ 0x80
c0de1b08:	f04f 0a00 	mov.w	sl, #0
c0de1b0c:	4478      	add	r0, pc
c0de1b0e:	9001      	str	r0, [sp, #4]
c0de1b10:	f1b8 0f00 	cmp.w	r8, #0
c0de1b14:	bf08      	it	eq
c0de1b16:	e8bd 8dfc 	ldmiaeq.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de1b1a:	2700      	movs	r7, #0
c0de1b1c:	2fff      	cmp	r7, #255	@ 0xff
c0de1b1e:	d81c      	bhi.n	c0de1b5a <pqcrystals_dilithium2_lowram_ntt+0x5e>
c0de1b20:	9801      	ldr	r0, [sp, #4]
c0de1b22:	f10a 0a01 	add.w	sl, sl, #1
c0de1b26:	eb07 0608 	add.w	r6, r7, r8
c0de1b2a:	4635      	mov	r5, r6
c0de1b2c:	f850 b02a 	ldr.w	fp, [r0, sl, lsl #2]
c0de1b30:	42b7      	cmp	r7, r6
c0de1b32:	d210      	bcs.n	c0de1b56 <pqcrystals_dilithium2_lowram_ntt+0x5a>
c0de1b34:	f854 0025 	ldr.w	r0, [r4, r5, lsl #2]
c0de1b38:	fb80 010b 	smull	r0, r1, r0, fp
c0de1b3c:	f000 fb52 	bl	c0de21e4 <pqcrystals_dilithium2_lowram_montgomery_reduce>
c0de1b40:	f854 1027 	ldr.w	r1, [r4, r7, lsl #2]
c0de1b44:	180a      	adds	r2, r1, r0
c0de1b46:	1a08      	subs	r0, r1, r0
c0de1b48:	f844 2027 	str.w	r2, [r4, r7, lsl #2]
c0de1b4c:	f844 0025 	str.w	r0, [r4, r5, lsl #2]
c0de1b50:	3501      	adds	r5, #1
c0de1b52:	3701      	adds	r7, #1
c0de1b54:	e7ec      	b.n	c0de1b30 <pqcrystals_dilithium2_lowram_ntt+0x34>
c0de1b56:	462f      	mov	r7, r5
c0de1b58:	e7e0      	b.n	c0de1b1c <pqcrystals_dilithium2_lowram_ntt+0x20>
c0de1b5a:	ea4f 0858 	mov.w	r8, r8, lsr #1
c0de1b5e:	e7d7      	b.n	c0de1b10 <pqcrystals_dilithium2_lowram_ntt+0x14>
c0de1b60:	0000aea4 	.word	0x0000aea4

c0de1b64 <pqcrystals_dilithium2_lowram_invntt_tomont>:
c0de1b64:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de1b68:	4604      	mov	r4, r0
c0de1b6a:	4822      	ldr	r0, [pc, #136]	@ (c0de1bf4 <pqcrystals_dilithium2_lowram_invntt_tomont+0x90>)
c0de1b6c:	f04f 0801 	mov.w	r8, #1
c0de1b70:	f44f 7a80 	mov.w	sl, #256	@ 0x100
c0de1b74:	4478      	add	r0, pc
c0de1b76:	9001      	str	r0, [sp, #4]
c0de1b78:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de1b7c:	d828      	bhi.n	c0de1bd0 <pqcrystals_dilithium2_lowram_invntt_tomont+0x6c>
c0de1b7e:	2700      	movs	r7, #0
c0de1b80:	2fff      	cmp	r7, #255	@ 0xff
c0de1b82:	d822      	bhi.n	c0de1bca <pqcrystals_dilithium2_lowram_invntt_tomont+0x66>
c0de1b84:	9801      	ldr	r0, [sp, #4]
c0de1b86:	f1aa 0a01 	sub.w	sl, sl, #1
c0de1b8a:	eb07 0608 	add.w	r6, r7, r8
c0de1b8e:	4635      	mov	r5, r6
c0de1b90:	f850 002a 	ldr.w	r0, [r0, sl, lsl #2]
c0de1b94:	f1c0 0b00 	rsb	fp, r0, #0
c0de1b98:	42b7      	cmp	r7, r6
c0de1b9a:	d214      	bcs.n	c0de1bc6 <pqcrystals_dilithium2_lowram_invntt_tomont+0x62>
c0de1b9c:	f854 0027 	ldr.w	r0, [r4, r7, lsl #2]
c0de1ba0:	f854 1025 	ldr.w	r1, [r4, r5, lsl #2]
c0de1ba4:	4401      	add	r1, r0
c0de1ba6:	f844 1027 	str.w	r1, [r4, r7, lsl #2]
c0de1baa:	f854 1025 	ldr.w	r1, [r4, r5, lsl #2]
c0de1bae:	1a40      	subs	r0, r0, r1
c0de1bb0:	f844 0025 	str.w	r0, [r4, r5, lsl #2]
c0de1bb4:	fb80 010b 	smull	r0, r1, r0, fp
c0de1bb8:	f000 fb14 	bl	c0de21e4 <pqcrystals_dilithium2_lowram_montgomery_reduce>
c0de1bbc:	f844 0025 	str.w	r0, [r4, r5, lsl #2]
c0de1bc0:	3501      	adds	r5, #1
c0de1bc2:	3701      	adds	r7, #1
c0de1bc4:	e7e8      	b.n	c0de1b98 <pqcrystals_dilithium2_lowram_invntt_tomont+0x34>
c0de1bc6:	462f      	mov	r7, r5
c0de1bc8:	e7da      	b.n	c0de1b80 <pqcrystals_dilithium2_lowram_invntt_tomont+0x1c>
c0de1bca:	ea4f 0848 	mov.w	r8, r8, lsl #1
c0de1bce:	e7d3      	b.n	c0de1b78 <pqcrystals_dilithium2_lowram_invntt_tomont+0x14>
c0de1bd0:	2500      	movs	r5, #0
c0de1bd2:	f24a 36fa 	movw	r6, #41978	@ 0xa3fa
c0de1bd6:	f5b5 7f80 	cmp.w	r5, #256	@ 0x100
c0de1bda:	bf08      	it	eq
c0de1bdc:	e8bd 8dfc 	ldmiaeq.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de1be0:	f854 0025 	ldr.w	r0, [r4, r5, lsl #2]
c0de1be4:	fb80 0106 	smull	r0, r1, r0, r6
c0de1be8:	f000 fafc 	bl	c0de21e4 <pqcrystals_dilithium2_lowram_montgomery_reduce>
c0de1bec:	f844 0025 	str.w	r0, [r4, r5, lsl #2]
c0de1bf0:	3501      	adds	r5, #1
c0de1bf2:	e7f0      	b.n	c0de1bd6 <pqcrystals_dilithium2_lowram_invntt_tomont+0x72>
c0de1bf4:	0000ae3c 	.word	0x0000ae3c

c0de1bf8 <pqcrystals_dilithium2_lowram_poly_reduce>:
c0de1bf8:	b5b0      	push	{r4, r5, r7, lr}
c0de1bfa:	4604      	mov	r4, r0
c0de1bfc:	2500      	movs	r5, #0
c0de1bfe:	f5b5 7f80 	cmp.w	r5, #256	@ 0x100
c0de1c02:	bf08      	it	eq
c0de1c04:	bdb0      	popeq	{r4, r5, r7, pc}
c0de1c06:	f854 0025 	ldr.w	r0, [r4, r5, lsl #2]
c0de1c0a:	f000 faf7 	bl	c0de21fc <pqcrystals_dilithium2_lowram_reduce32>
c0de1c0e:	f844 0025 	str.w	r0, [r4, r5, lsl #2]
c0de1c12:	3501      	adds	r5, #1
c0de1c14:	e7f3      	b.n	c0de1bfe <pqcrystals_dilithium2_lowram_poly_reduce+0x6>

c0de1c16 <pqcrystals_dilithium2_lowram_poly_caddq>:
c0de1c16:	b5b0      	push	{r4, r5, r7, lr}
c0de1c18:	4604      	mov	r4, r0
c0de1c1a:	2500      	movs	r5, #0
c0de1c1c:	f5b5 7f80 	cmp.w	r5, #256	@ 0x100
c0de1c20:	bf08      	it	eq
c0de1c22:	bdb0      	popeq	{r4, r5, r7, pc}
c0de1c24:	f854 0025 	ldr.w	r0, [r4, r5, lsl #2]
c0de1c28:	f000 faf2 	bl	c0de2210 <pqcrystals_dilithium2_lowram_caddq>
c0de1c2c:	f844 0025 	str.w	r0, [r4, r5, lsl #2]
c0de1c30:	3501      	adds	r5, #1
c0de1c32:	e7f3      	b.n	c0de1c1c <pqcrystals_dilithium2_lowram_poly_caddq+0x6>

c0de1c34 <pqcrystals_dilithium2_lowram_poly_add>:
c0de1c34:	b5b0      	push	{r4, r5, r7, lr}
c0de1c36:	2300      	movs	r3, #0
c0de1c38:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
c0de1c3c:	bf08      	it	eq
c0de1c3e:	bdb0      	popeq	{r4, r5, r7, pc}
c0de1c40:	f851 4023 	ldr.w	r4, [r1, r3, lsl #2]
c0de1c44:	f852 5023 	ldr.w	r5, [r2, r3, lsl #2]
c0de1c48:	442c      	add	r4, r5
c0de1c4a:	f840 4023 	str.w	r4, [r0, r3, lsl #2]
c0de1c4e:	3301      	adds	r3, #1
c0de1c50:	e7f2      	b.n	c0de1c38 <pqcrystals_dilithium2_lowram_poly_add+0x4>

c0de1c52 <pqcrystals_dilithium2_lowram_poly_ntt>:
c0de1c52:	f7ff bf53 	b.w	c0de1afc <pqcrystals_dilithium2_lowram_ntt>

c0de1c56 <pqcrystals_dilithium2_lowram_poly_invntt_tomont>:
c0de1c56:	f7ff bf85 	b.w	c0de1b64 <pqcrystals_dilithium2_lowram_invntt_tomont>

c0de1c5a <pqcrystals_dilithium2_lowram_poly_pointwise_montgomery>:
c0de1c5a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1c5c:	f000 fab5 	bl	c0de21ca <OUTLINED_FUNCTION_0>
c0de1c60:	f5b7 7f80 	cmp.w	r7, #256	@ 0x100
c0de1c64:	bf08      	it	eq
c0de1c66:	bdf8      	popeq	{r3, r4, r5, r6, r7, pc}
c0de1c68:	f855 0027 	ldr.w	r0, [r5, r7, lsl #2]
c0de1c6c:	f854 1027 	ldr.w	r1, [r4, r7, lsl #2]
c0de1c70:	fb81 0100 	smull	r0, r1, r1, r0
c0de1c74:	f000 fab6 	bl	c0de21e4 <pqcrystals_dilithium2_lowram_montgomery_reduce>
c0de1c78:	f846 0027 	str.w	r0, [r6, r7, lsl #2]
c0de1c7c:	3701      	adds	r7, #1
c0de1c7e:	e7ef      	b.n	c0de1c60 <pqcrystals_dilithium2_lowram_poly_pointwise_montgomery+0x6>

c0de1c80 <pqcrystals_dilithium2_lowram_poly_power2round>:
c0de1c80:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de1c82:	f000 faa2 	bl	c0de21ca <OUTLINED_FUNCTION_0>
c0de1c86:	f5b7 6f80 	cmp.w	r7, #1024	@ 0x400
c0de1c8a:	bf08      	it	eq
c0de1c8c:	bdf8      	popeq	{r3, r4, r5, r6, r7, pc}
c0de1c8e:	59e1      	ldr	r1, [r4, r7]
c0de1c90:	19e8      	adds	r0, r5, r7
c0de1c92:	f000 fad5 	bl	c0de2240 <pqcrystals_dilithium2_lowram_power2round>
c0de1c96:	51f0      	str	r0, [r6, r7]
c0de1c98:	3704      	adds	r7, #4
c0de1c9a:	e7f4      	b.n	c0de1c86 <pqcrystals_dilithium2_lowram_poly_power2round+0x6>

c0de1c9c <pqcrystals_dilithium2_lowram_poly_chknorm>:
c0de1c9c:	4a09      	ldr	r2, [pc, #36]	@ (c0de1cc4 <pqcrystals_dilithium2_lowram_poly_chknorm+0x28>)
c0de1c9e:	4291      	cmp	r1, r2
c0de1ca0:	dc0e      	bgt.n	c0de1cc0 <pqcrystals_dilithium2_lowram_poly_chknorm+0x24>
c0de1ca2:	2200      	movs	r2, #0
c0de1ca4:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de1ca8:	bf04      	itt	eq
c0de1caa:	2000      	moveq	r0, #0
c0de1cac:	4770      	bxeq	lr
c0de1cae:	f850 3022 	ldr.w	r3, [r0, r2, lsl #2]
c0de1cb2:	2b00      	cmp	r3, #0
c0de1cb4:	bf48      	it	mi
c0de1cb6:	eba3 0343 	submi.w	r3, r3, r3, lsl #1
c0de1cba:	3201      	adds	r2, #1
c0de1cbc:	428b      	cmp	r3, r1
c0de1cbe:	dbf1      	blt.n	c0de1ca4 <pqcrystals_dilithium2_lowram_poly_chknorm+0x8>
c0de1cc0:	2001      	movs	r0, #1
c0de1cc2:	4770      	bx	lr
c0de1cc4:	000ffc00 	.word	0x000ffc00

c0de1cc8 <pqcrystals_dilithium2_lowram_poly_uniform>:
c0de1cc8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1ccc:	f5ad 6daa 	sub.w	sp, sp, #1360	@ 0x550
c0de1cd0:	46e8      	mov	r8, sp
c0de1cd2:	4683      	mov	fp, r0
c0de1cd4:	460d      	mov	r5, r1
c0de1cd6:	f8ad 254e 	strh.w	r2, [sp, #1358]	@ 0x54e
c0de1cda:	4640      	mov	r0, r8
c0de1cdc:	f7ff f9b0 	bl	c0de1040 <inner_keccak256_init>
c0de1ce0:	4640      	mov	r0, r8
c0de1ce2:	4629      	mov	r1, r5
c0de1ce4:	2220      	movs	r2, #32
c0de1ce6:	f7ff f9bc 	bl	c0de1062 <inner_keccak256_inject>
c0de1cea:	f20d 514e 	addw	r1, sp, #1358	@ 0x54e
c0de1cee:	4640      	mov	r0, r8
c0de1cf0:	2202      	movs	r2, #2
c0de1cf2:	f7ff f9b6 	bl	c0de1062 <inner_keccak256_inject>
c0de1cf6:	4640      	mov	r0, r8
c0de1cf8:	f7ff f9c5 	bl	c0de1086 <inner_keccak256_flip>
c0de1cfc:	ae81      	add	r6, sp, #516	@ 0x204
c0de1cfe:	4640      	mov	r0, r8
c0de1d00:	f44f 7252 	mov.w	r2, #840	@ 0x348
c0de1d04:	f44f 7752 	mov.w	r7, #840	@ 0x348
c0de1d08:	4631      	mov	r1, r6
c0de1d0a:	f7ff f9d2 	bl	c0de10b2 <inner_keccak256_extract>
c0de1d0e:	4658      	mov	r0, fp
c0de1d10:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de1d14:	4632      	mov	r2, r6
c0de1d16:	f44f 7352 	mov.w	r3, #840	@ 0x348
c0de1d1a:	f000 f827 	bl	c0de1d6c <rej_uniform>
c0de1d1e:	4605      	mov	r5, r0
c0de1d20:	f04f 0a03 	mov.w	sl, #3
c0de1d24:	2dff      	cmp	r5, #255	@ 0xff
c0de1d26:	d81d      	bhi.n	c0de1d64 <pqcrystals_dilithium2_lowram_poly_uniform+0x9c>
c0de1d28:	fbb7 f0fa 	udiv	r0, r7, sl
c0de1d2c:	4631      	mov	r1, r6
c0de1d2e:	eb00 0040 	add.w	r0, r0, r0, lsl #1
c0de1d32:	1a3c      	subs	r4, r7, r0
c0de1d34:	42b8      	cmp	r0, r7
c0de1d36:	d004      	beq.n	c0de1d42 <pqcrystals_dilithium2_lowram_poly_uniform+0x7a>
c0de1d38:	5c0a      	ldrb	r2, [r1, r0]
c0de1d3a:	3f01      	subs	r7, #1
c0de1d3c:	700a      	strb	r2, [r1, #0]
c0de1d3e:	3101      	adds	r1, #1
c0de1d40:	e7f8      	b.n	c0de1d34 <pqcrystals_dilithium2_lowram_poly_uniform+0x6c>
c0de1d42:	1931      	adds	r1, r6, r4
c0de1d44:	4640      	mov	r0, r8
c0de1d46:	22a8      	movs	r2, #168	@ 0xa8
c0de1d48:	f7ff f9b3 	bl	c0de10b2 <inner_keccak256_extract>
c0de1d4c:	f044 07a8 	orr.w	r7, r4, #168	@ 0xa8
c0de1d50:	eb0b 0085 	add.w	r0, fp, r5, lsl #2
c0de1d54:	f5c5 7180 	rsb	r1, r5, #256	@ 0x100
c0de1d58:	4632      	mov	r2, r6
c0de1d5a:	463b      	mov	r3, r7
c0de1d5c:	f000 f806 	bl	c0de1d6c <rej_uniform>
c0de1d60:	4405      	add	r5, r0
c0de1d62:	e7df      	b.n	c0de1d24 <pqcrystals_dilithium2_lowram_poly_uniform+0x5c>
c0de1d64:	f50d 6daa 	add.w	sp, sp, #1360	@ 0x550
c0de1d68:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de1d6c <rej_uniform>:
c0de1d6c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1d6e:	4c0f      	ldr	r4, [pc, #60]	@ (c0de1dac <rej_uniform+0x40>)
c0de1d70:	4684      	mov	ip, r0
c0de1d72:	2000      	movs	r0, #0
c0de1d74:	2700      	movs	r7, #0
c0de1d76:	46a6      	mov	lr, r4
c0de1d78:	4288      	cmp	r0, r1
c0de1d7a:	d215      	bcs.n	c0de1da8 <rej_uniform+0x3c>
c0de1d7c:	1cfe      	adds	r6, r7, #3
c0de1d7e:	429e      	cmp	r6, r3
c0de1d80:	d812      	bhi.n	c0de1da8 <rej_uniform+0x3c>
c0de1d82:	5dd4      	ldrb	r4, [r2, r7]
c0de1d84:	4417      	add	r7, r2
c0de1d86:	787d      	ldrb	r5, [r7, #1]
c0de1d88:	78bf      	ldrb	r7, [r7, #2]
c0de1d8a:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de1d8e:	f007 057f 	and.w	r5, r7, #127	@ 0x7f
c0de1d92:	4637      	mov	r7, r6
c0de1d94:	ea44 4405 	orr.w	r4, r4, r5, lsl #16
c0de1d98:	4675      	mov	r5, lr
c0de1d9a:	4574      	cmp	r4, lr
c0de1d9c:	d8ec      	bhi.n	c0de1d78 <rej_uniform+0xc>
c0de1d9e:	f84c 4020 	str.w	r4, [ip, r0, lsl #2]
c0de1da2:	3001      	adds	r0, #1
c0de1da4:	4637      	mov	r7, r6
c0de1da6:	e7e7      	b.n	c0de1d78 <rej_uniform+0xc>
c0de1da8:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1daa:	bf00      	nop
c0de1dac:	007fe000 	.word	0x007fe000

c0de1db0 <pqcrystals_dilithium2_lowram_poly_uniform_eta>:
c0de1db0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1db4:	f5ad 7d0a 	sub.w	sp, sp, #552	@ 0x228
c0de1db8:	f8ad 2226 	strh.w	r2, [sp, #550]	@ 0x226
c0de1dbc:	ac08      	add	r4, sp, #32
c0de1dbe:	4682      	mov	sl, r0
c0de1dc0:	460e      	mov	r6, r1
c0de1dc2:	4620      	mov	r0, r4
c0de1dc4:	f7ff f93c 	bl	c0de1040 <inner_keccak256_init>
c0de1dc8:	4620      	mov	r0, r4
c0de1dca:	4631      	mov	r1, r6
c0de1dcc:	2240      	movs	r2, #64	@ 0x40
c0de1dce:	f7ff f948 	bl	c0de1062 <inner_keccak256_inject>
c0de1dd2:	f20d 2126 	addw	r1, sp, #550	@ 0x226
c0de1dd6:	4620      	mov	r0, r4
c0de1dd8:	2202      	movs	r2, #2
c0de1dda:	f7ff f942 	bl	c0de1062 <inner_keccak256_inject>
c0de1dde:	4620      	mov	r0, r4
c0de1de0:	f7ff f951 	bl	c0de1086 <inner_keccak256_flip>
c0de1de4:	f04f 0b00 	mov.w	fp, #0
c0de1de8:	466e      	mov	r6, sp
c0de1dea:	f04f 08cd 	mov.w	r8, #205	@ 0xcd
c0de1dee:	f1bb 0fff 	cmp.w	fp, #255	@ 0xff
c0de1df2:	d830      	bhi.n	c0de1e56 <pqcrystals_dilithium2_lowram_poly_uniform_eta+0xa6>
c0de1df4:	a808      	add	r0, sp, #32
c0de1df6:	4631      	mov	r1, r6
c0de1df8:	2220      	movs	r2, #32
c0de1dfa:	f7ff f95a 	bl	c0de10b2 <inner_keccak256_extract>
c0de1dfe:	eb0a 008b 	add.w	r0, sl, fp, lsl #2
c0de1e02:	f5cb 7280 	rsb	r2, fp, #256	@ 0x100
c0de1e06:	2100      	movs	r1, #0
c0de1e08:	2300      	movs	r3, #0
c0de1e0a:	4291      	cmp	r1, r2
c0de1e0c:	d221      	bcs.n	c0de1e52 <pqcrystals_dilithium2_lowram_poly_uniform_eta+0xa2>
c0de1e0e:	2b1f      	cmp	r3, #31
c0de1e10:	d81f      	bhi.n	c0de1e52 <pqcrystals_dilithium2_lowram_poly_uniform_eta+0xa2>
c0de1e12:	5cf4      	ldrb	r4, [r6, r3]
c0de1e14:	f004 070f 	and.w	r7, r4, #15
c0de1e18:	2f0f      	cmp	r7, #15
c0de1e1a:	d009      	beq.n	c0de1e30 <pqcrystals_dilithium2_lowram_poly_uniform_eta+0x80>
c0de1e1c:	fb07 f508 	mul.w	r5, r7, r8
c0de1e20:	0aad      	lsrs	r5, r5, #10
c0de1e22:	eb05 0585 	add.w	r5, r5, r5, lsl #2
c0de1e26:	1bed      	subs	r5, r5, r7
c0de1e28:	3502      	adds	r5, #2
c0de1e2a:	f840 5021 	str.w	r5, [r0, r1, lsl #2]
c0de1e2e:	3101      	adds	r1, #1
c0de1e30:	0924      	lsrs	r4, r4, #4
c0de1e32:	2c0f      	cmp	r4, #15
c0de1e34:	d00b      	beq.n	c0de1e4e <pqcrystals_dilithium2_lowram_poly_uniform_eta+0x9e>
c0de1e36:	4291      	cmp	r1, r2
c0de1e38:	d209      	bcs.n	c0de1e4e <pqcrystals_dilithium2_lowram_poly_uniform_eta+0x9e>
c0de1e3a:	fb04 f508 	mul.w	r5, r4, r8
c0de1e3e:	0aad      	lsrs	r5, r5, #10
c0de1e40:	eb05 0585 	add.w	r5, r5, r5, lsl #2
c0de1e44:	1b2c      	subs	r4, r5, r4
c0de1e46:	3402      	adds	r4, #2
c0de1e48:	f840 4021 	str.w	r4, [r0, r1, lsl #2]
c0de1e4c:	3101      	adds	r1, #1
c0de1e4e:	3301      	adds	r3, #1
c0de1e50:	e7db      	b.n	c0de1e0a <pqcrystals_dilithium2_lowram_poly_uniform_eta+0x5a>
c0de1e52:	448b      	add	fp, r1
c0de1e54:	e7cb      	b.n	c0de1dee <pqcrystals_dilithium2_lowram_poly_uniform_eta+0x3e>
c0de1e56:	f50d 7d0a 	add.w	sp, sp, #552	@ 0x228
c0de1e5a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de1e5e <pqcrystals_dilithium2_lowram_polyz_unpack>:
c0de1e5e:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1e60:	3008      	adds	r0, #8
c0de1e62:	f04f 0c00 	mov.w	ip, #0
c0de1e66:	f5bc 7f10 	cmp.w	ip, #576	@ 0x240
c0de1e6a:	bf08      	it	eq
c0de1e6c:	bdf0      	popeq	{r4, r5, r6, r7, pc}
c0de1e6e:	f811 300c 	ldrb.w	r3, [r1, ip]
c0de1e72:	eb01 040c 	add.w	r4, r1, ip
c0de1e76:	f10c 0c09 	add.w	ip, ip, #9
c0de1e7a:	f840 3c08 	str.w	r3, [r0, #-8]
c0de1e7e:	7865      	ldrb	r5, [r4, #1]
c0de1e80:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de1e84:	f840 3c08 	str.w	r3, [r0, #-8]
c0de1e88:	78a5      	ldrb	r5, [r4, #2]
c0de1e8a:	f365 4311 	bfi	r3, r5, #16, #2
c0de1e8e:	f840 3c08 	str.w	r3, [r0, #-8]
c0de1e92:	f5c3 3300 	rsb	r3, r3, #131072	@ 0x20000
c0de1e96:	78a5      	ldrb	r5, [r4, #2]
c0de1e98:	08ae      	lsrs	r6, r5, #2
c0de1e9a:	f840 6c04 	str.w	r6, [r0, #-4]
c0de1e9e:	78e6      	ldrb	r6, [r4, #3]
c0de1ea0:	01b6      	lsls	r6, r6, #6
c0de1ea2:	ea46 0595 	orr.w	r5, r6, r5, lsr #2
c0de1ea6:	f840 5c04 	str.w	r5, [r0, #-4]
c0de1eaa:	7926      	ldrb	r6, [r4, #4]
c0de1eac:	f366 3591 	bfi	r5, r6, #14, #4
c0de1eb0:	f840 5c04 	str.w	r5, [r0, #-4]
c0de1eb4:	f5c5 3500 	rsb	r5, r5, #131072	@ 0x20000
c0de1eb8:	7926      	ldrb	r6, [r4, #4]
c0de1eba:	0937      	lsrs	r7, r6, #4
c0de1ebc:	6007      	str	r7, [r0, #0]
c0de1ebe:	7967      	ldrb	r7, [r4, #5]
c0de1ec0:	013f      	lsls	r7, r7, #4
c0de1ec2:	ea47 1616 	orr.w	r6, r7, r6, lsr #4
c0de1ec6:	6006      	str	r6, [r0, #0]
c0de1ec8:	79a7      	ldrb	r7, [r4, #6]
c0de1eca:	f367 3611 	bfi	r6, r7, #12, #6
c0de1ece:	6006      	str	r6, [r0, #0]
c0de1ed0:	f5c6 3600 	rsb	r6, r6, #131072	@ 0x20000
c0de1ed4:	79a7      	ldrb	r7, [r4, #6]
c0de1ed6:	09ba      	lsrs	r2, r7, #6
c0de1ed8:	6042      	str	r2, [r0, #4]
c0de1eda:	79e2      	ldrb	r2, [r4, #7]
c0de1edc:	0092      	lsls	r2, r2, #2
c0de1ede:	ea42 1297 	orr.w	r2, r2, r7, lsr #6
c0de1ee2:	6042      	str	r2, [r0, #4]
c0de1ee4:	7a24      	ldrb	r4, [r4, #8]
c0de1ee6:	6006      	str	r6, [r0, #0]
c0de1ee8:	f840 5c04 	str.w	r5, [r0, #-4]
c0de1eec:	f840 3c08 	str.w	r3, [r0, #-8]
c0de1ef0:	ea42 2284 	orr.w	r2, r2, r4, lsl #10
c0de1ef4:	f5c2 3200 	rsb	r2, r2, #131072	@ 0x20000
c0de1ef8:	6042      	str	r2, [r0, #4]
c0de1efa:	3010      	adds	r0, #16
c0de1efc:	e7b3      	b.n	c0de1e66 <pqcrystals_dilithium2_lowram_polyz_unpack+0x8>

c0de1efe <pqcrystals_dilithium2_lowram_polyeta_pack>:
c0de1efe:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1f02:	3001      	adds	r0, #1
c0de1f04:	2200      	movs	r2, #0
c0de1f06:	2640      	movs	r6, #64	@ 0x40
c0de1f08:	f5b2 6f80 	cmp.w	r2, #1024	@ 0x400
c0de1f0c:	bf08      	it	eq
c0de1f0e:	e8bd 8df0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1f12:	188b      	adds	r3, r1, r2
c0de1f14:	f851 8002 	ldr.w	r8, [r1, r2]
c0de1f18:	2710      	movs	r7, #16
c0de1f1a:	3220      	adds	r2, #32
c0de1f1c:	f103 0b04 	add.w	fp, r3, #4
c0de1f20:	f103 0e10 	add.w	lr, r3, #16
c0de1f24:	69db      	ldr	r3, [r3, #28]
c0de1f26:	e89b 0830 	ldmia.w	fp, {r4, r5, fp}
c0de1f2a:	e89e 5400 	ldmia.w	lr, {sl, ip, lr}
c0de1f2e:	f1c5 0502 	rsb	r5, r5, #2
c0de1f32:	eba6 1343 	sub.w	r3, r6, r3, lsl #5
c0de1f36:	eba7 04c4 	sub.w	r4, r7, r4, lsl #3
c0de1f3a:	f1c8 0702 	rsb	r7, r8, #2
c0de1f3e:	b2ed      	uxtb	r5, r5
c0de1f40:	433c      	orrs	r4, r7
c0de1f42:	f1cc 0702 	rsb	r7, ip, #2
c0de1f46:	ea44 1485 	orr.w	r4, r4, r5, lsl #6
c0de1f4a:	b2ff      	uxtb	r7, r7
c0de1f4c:	f800 4c01 	strb.w	r4, [r0, #-1]
c0de1f50:	2408      	movs	r4, #8
c0de1f52:	eba4 048e 	sub.w	r4, r4, lr, lsl #2
c0de1f56:	ea44 0457 	orr.w	r4, r4, r7, lsr #1
c0de1f5a:	4323      	orrs	r3, r4
c0de1f5c:	2420      	movs	r4, #32
c0de1f5e:	7043      	strb	r3, [r0, #1]
c0de1f60:	2304      	movs	r3, #4
c0de1f62:	eba4 140a 	sub.w	r4, r4, sl, lsl #4
c0de1f66:	eba3 034b 	sub.w	r3, r3, fp, lsl #1
c0de1f6a:	ea43 0395 	orr.w	r3, r3, r5, lsr #2
c0de1f6e:	4323      	orrs	r3, r4
c0de1f70:	ea43 13c7 	orr.w	r3, r3, r7, lsl #7
c0de1f74:	f800 3b03 	strb.w	r3, [r0], #3
c0de1f78:	e7c6      	b.n	c0de1f08 <pqcrystals_dilithium2_lowram_polyeta_pack+0xa>

c0de1f7a <pqcrystals_dilithium2_lowram_poly_challenge_eth>:
c0de1f7a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1f7e:	f5ad 7d10 	sub.w	sp, sp, #576	@ 0x240
c0de1f82:	466e      	mov	r6, sp
c0de1f84:	4680      	mov	r8, r0
c0de1f86:	460d      	mov	r5, r1
c0de1f88:	4630      	mov	r0, r6
c0de1f8a:	f7ff f859 	bl	c0de1040 <inner_keccak256_init>
c0de1f8e:	4630      	mov	r0, r6
c0de1f90:	4629      	mov	r1, r5
c0de1f92:	2220      	movs	r2, #32
c0de1f94:	f7ff f865 	bl	c0de1062 <inner_keccak256_inject>
c0de1f98:	4630      	mov	r0, r6
c0de1f9a:	f7ff f874 	bl	c0de1086 <inner_keccak256_flip>
c0de1f9e:	ad80      	add	r5, sp, #512	@ 0x200
c0de1fa0:	4630      	mov	r0, r6
c0de1fa2:	2208      	movs	r2, #8
c0de1fa4:	4629      	mov	r1, r5
c0de1fa6:	f7ff f884 	bl	c0de10b2 <inner_keccak256_extract>
c0de1faa:	2600      	movs	r6, #0
c0de1fac:	462c      	mov	r4, r5
c0de1fae:	f04f 0b00 	mov.w	fp, #0
c0de1fb2:	f04f 0a00 	mov.w	sl, #0
c0de1fb6:	2e40      	cmp	r6, #64	@ 0x40
c0de1fb8:	d007      	beq.n	c0de1fca <pqcrystals_dilithium2_lowram_poly_challenge_eth+0x50>
c0de1fba:	f000 f90b 	bl	c0de21d4 <OUTLINED_FUNCTION_1>
c0de1fbe:	ea4a 0a01 	orr.w	sl, sl, r1
c0de1fc2:	ea4b 0b00 	orr.w	fp, fp, r0
c0de1fc6:	3608      	adds	r6, #8
c0de1fc8:	e7f5      	b.n	c0de1fb6 <pqcrystals_dilithium2_lowram_poly_challenge_eth+0x3c>
c0de1fca:	2000      	movs	r0, #0
c0de1fcc:	2100      	movs	r1, #0
c0de1fce:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de1fd2:	d003      	beq.n	c0de1fdc <pqcrystals_dilithium2_lowram_poly_challenge_eth+0x62>
c0de1fd4:	f848 0021 	str.w	r0, [r8, r1, lsl #2]
c0de1fd8:	3101      	adds	r1, #1
c0de1fda:	e7f8      	b.n	c0de1fce <pqcrystals_dilithium2_lowram_poly_challenge_eth+0x54>
c0de1fdc:	2000      	movs	r0, #0
c0de1fde:	24d9      	movs	r4, #217	@ 0xd9
c0de1fe0:	466e      	mov	r6, sp
c0de1fe2:	2700      	movs	r7, #0
c0de1fe4:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
c0de1fe8:	d01e      	beq.n	c0de2028 <pqcrystals_dilithium2_lowram_poly_challenge_eth+0xae>
c0de1fea:	42b8      	cmp	r0, r7
c0de1fec:	d306      	bcc.n	c0de1ffc <pqcrystals_dilithium2_lowram_poly_challenge_eth+0x82>
c0de1fee:	4630      	mov	r0, r6
c0de1ff0:	4629      	mov	r1, r5
c0de1ff2:	2240      	movs	r2, #64	@ 0x40
c0de1ff4:	2740      	movs	r7, #64	@ 0x40
c0de1ff6:	f7ff f85c 	bl	c0de10b2 <inner_keccak256_extract>
c0de1ffa:	2000      	movs	r0, #0
c0de1ffc:	5c29      	ldrb	r1, [r5, r0]
c0de1ffe:	3001      	adds	r0, #1
c0de2000:	428c      	cmp	r4, r1
c0de2002:	d3f2      	bcc.n	c0de1fea <pqcrystals_dilithium2_lowram_poly_challenge_eth+0x70>
c0de2004:	f858 2021 	ldr.w	r2, [r8, r1, lsl #2]
c0de2008:	f848 2024 	str.w	r2, [r8, r4, lsl #2]
c0de200c:	ea5f 72cb 	movs.w	r2, fp, lsl #31
c0de2010:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de2014:	bf08      	it	eq
c0de2016:	2201      	moveq	r2, #1
c0de2018:	ea5f 0a5a 	movs.w	sl, sl, lsr #1
c0de201c:	f848 2021 	str.w	r2, [r8, r1, lsl #2]
c0de2020:	ea4f 0b3b 	mov.w	fp, fp, rrx
c0de2024:	3401      	adds	r4, #1
c0de2026:	e7dd      	b.n	c0de1fe4 <pqcrystals_dilithium2_lowram_poly_challenge_eth+0x6a>
c0de2028:	f50d 7d10 	add.w	sp, sp, #576	@ 0x240
c0de202c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de2030 <pqcrystals_dilithium2_lowram_polyt1_pack>:
c0de2030:	b5b0      	push	{r4, r5, r7, lr}
c0de2032:	3108      	adds	r1, #8
c0de2034:	2200      	movs	r2, #0
c0de2036:	f5b2 7fa0 	cmp.w	r2, #320	@ 0x140
c0de203a:	bf08      	it	eq
c0de203c:	bdb0      	popeq	{r4, r5, r7, pc}
c0de203e:	f851 3c08 	ldr.w	r3, [r1, #-8]
c0de2042:	5483      	strb	r3, [r0, r2]
c0de2044:	1883      	adds	r3, r0, r2
c0de2046:	3205      	adds	r2, #5
c0de2048:	e951 4502 	ldrd	r4, r5, [r1, #-8]
c0de204c:	00ad      	lsls	r5, r5, #2
c0de204e:	ea45 2414 	orr.w	r4, r5, r4, lsr #8
c0de2052:	705c      	strb	r4, [r3, #1]
c0de2054:	680d      	ldr	r5, [r1, #0]
c0de2056:	f851 4c04 	ldr.w	r4, [r1, #-4]
c0de205a:	012d      	lsls	r5, r5, #4
c0de205c:	ea45 1494 	orr.w	r4, r5, r4, lsr #6
c0de2060:	709c      	strb	r4, [r3, #2]
c0de2062:	e9d1 4500 	ldrd	r4, r5, [r1]
c0de2066:	01ad      	lsls	r5, r5, #6
c0de2068:	ea45 1414 	orr.w	r4, r5, r4, lsr #4
c0de206c:	70dc      	strb	r4, [r3, #3]
c0de206e:	684c      	ldr	r4, [r1, #4]
c0de2070:	3110      	adds	r1, #16
c0de2072:	08a4      	lsrs	r4, r4, #2
c0de2074:	711c      	strb	r4, [r3, #4]
c0de2076:	e7de      	b.n	c0de2036 <pqcrystals_dilithium2_lowram_polyt1_pack+0x6>

c0de2078 <pqcrystals_dilithium2_lowram_polyt0_pack>:
c0de2078:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de207c:	311c      	adds	r1, #28
c0de207e:	f04f 0c00 	mov.w	ip, #0
c0de2082:	9000      	str	r0, [sp, #0]
c0de2084:	f5bc 7fd0 	cmp.w	ip, #416	@ 0x1a0
c0de2088:	bf08      	it	eq
c0de208a:	e8bd 8dfc 	ldmiaeq.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de208e:	f851 0c14 	ldr.w	r0, [r1, #-20]
c0de2092:	e951 a504 	ldrd	sl, r5, [r1, #-16]
c0de2096:	e951 3807 	ldrd	r3, r8, [r1, #-28]
c0de209a:	e951 e602 	ldrd	lr, r6, [r1, #-8]
c0de209e:	f851 7b20 	ldr.w	r7, [r1], #32
c0de20a2:	9001      	str	r0, [sp, #4]
c0de20a4:	9800      	ldr	r0, [sp, #0]
c0de20a6:	f5c7 5780 	rsb	r7, r7, #4096	@ 0x1000
c0de20aa:	f5c3 5b80 	rsb	fp, r3, #4096	@ 0x1000
c0de20ae:	f5c5 5580 	rsb	r5, r5, #4096	@ 0x1000
c0de20b2:	097b      	lsrs	r3, r7, #5
c0de20b4:	eb00 040c 	add.w	r4, r0, ip
c0de20b8:	f800 b00c 	strb.w	fp, [r0, ip]
c0de20bc:	f10c 0c0d 	add.w	ip, ip, #13
c0de20c0:	7323      	strb	r3, [r4, #12]
c0de20c2:	f5c6 5380 	rsb	r3, r6, #4096	@ 0x1000
c0de20c6:	089e      	lsrs	r6, r3, #2
c0de20c8:	72a6      	strb	r6, [r4, #10]
c0de20ca:	092e      	lsrs	r6, r5, #4
c0de20cc:	71e6      	strb	r6, [r4, #7]
c0de20ce:	f5ca 5680 	rsb	r6, sl, #4096	@ 0x1000
c0de20d2:	0872      	lsrs	r2, r6, #1
c0de20d4:	7162      	strb	r2, [r4, #5]
c0de20d6:	f5c8 5280 	rsb	r2, r8, #4096	@ 0x1000
c0de20da:	08d0      	lsrs	r0, r2, #3
c0de20dc:	70a0      	strb	r0, [r4, #2]
c0de20de:	00f8      	lsls	r0, r7, #3
c0de20e0:	ea40 2093 	orr.w	r0, r0, r3, lsr #10
c0de20e4:	019b      	lsls	r3, r3, #6
c0de20e6:	72e0      	strb	r0, [r4, #11]
c0de20e8:	f5ce 5080 	rsb	r0, lr, #4096	@ 0x1000
c0de20ec:	ea43 13d0 	orr.w	r3, r3, r0, lsr #7
c0de20f0:	0040      	lsls	r0, r0, #1
c0de20f2:	ea40 3015 	orr.w	r0, r0, r5, lsr #12
c0de20f6:	7263      	strb	r3, [r4, #9]
c0de20f8:	01f3      	lsls	r3, r6, #7
c0de20fa:	7220      	strb	r0, [r4, #8]
c0de20fc:	0128      	lsls	r0, r5, #4
c0de20fe:	ea40 2056 	orr.w	r0, r0, r6, lsr #9
c0de2102:	71a0      	strb	r0, [r4, #6]
c0de2104:	9801      	ldr	r0, [sp, #4]
c0de2106:	f5c0 5080 	rsb	r0, r0, #4096	@ 0x1000
c0de210a:	ea43 1390 	orr.w	r3, r3, r0, lsr #6
c0de210e:	0080      	lsls	r0, r0, #2
c0de2110:	ea40 20d2 	orr.w	r0, r0, r2, lsr #11
c0de2114:	7123      	strb	r3, [r4, #4]
c0de2116:	70e0      	strb	r0, [r4, #3]
c0de2118:	0150      	lsls	r0, r2, #5
c0de211a:	ea40 201b 	orr.w	r0, r0, fp, lsr #8
c0de211e:	7060      	strb	r0, [r4, #1]
c0de2120:	e7b0      	b.n	c0de2084 <pqcrystals_dilithium2_lowram_polyt0_pack+0xc>

c0de2122 <pqcrystals_dilithium2_lowram_polyz_pack>:
c0de2122:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de2124:	3108      	adds	r1, #8
c0de2126:	f04f 0e00 	mov.w	lr, #0
c0de212a:	f5be 7f10 	cmp.w	lr, #576	@ 0x240
c0de212e:	bf08      	it	eq
c0de2130:	bdf0      	popeq	{r4, r5, r6, r7, pc}
c0de2132:	e951 3c02 	ldrd	r3, ip, [r1, #-8]
c0de2136:	e8f1 5604 	ldrd	r5, r6, [r1], #16
c0de213a:	eb00 070e 	add.w	r7, r0, lr
c0de213e:	f5c6 3600 	rsb	r6, r6, #131072	@ 0x20000
c0de2142:	f5c3 3300 	rsb	r3, r3, #131072	@ 0x20000
c0de2146:	0ab4      	lsrs	r4, r6, #10
c0de2148:	f800 300e 	strb.w	r3, [r0, lr]
c0de214c:	f10e 0e09 	add.w	lr, lr, #9
c0de2150:	723c      	strb	r4, [r7, #8]
c0de2152:	08b4      	lsrs	r4, r6, #2
c0de2154:	71fc      	strb	r4, [r7, #7]
c0de2156:	f5c5 3400 	rsb	r4, r5, #131072	@ 0x20000
c0de215a:	0925      	lsrs	r5, r4, #4
c0de215c:	717d      	strb	r5, [r7, #5]
c0de215e:	f5cc 3500 	rsb	r5, ip, #131072	@ 0x20000
c0de2162:	09aa      	lsrs	r2, r5, #6
c0de2164:	70fa      	strb	r2, [r7, #3]
c0de2166:	0a1a      	lsrs	r2, r3, #8
c0de2168:	707a      	strb	r2, [r7, #1]
c0de216a:	01b2      	lsls	r2, r6, #6
c0de216c:	ea42 3214 	orr.w	r2, r2, r4, lsr #12
c0de2170:	71ba      	strb	r2, [r7, #6]
c0de2172:	0122      	lsls	r2, r4, #4
c0de2174:	ea42 3295 	orr.w	r2, r2, r5, lsr #14
c0de2178:	713a      	strb	r2, [r7, #4]
c0de217a:	00aa      	lsls	r2, r5, #2
c0de217c:	ea42 4213 	orr.w	r2, r2, r3, lsr #16
c0de2180:	70ba      	strb	r2, [r7, #2]
c0de2182:	e7d2      	b.n	c0de212a <pqcrystals_dilithium2_lowram_polyz_pack+0x8>

c0de2184 <pqcrystals_dilithium2_lowram_polyw1_pack>:
c0de2184:	b5b0      	push	{r4, r5, r7, lr}
c0de2186:	3001      	adds	r0, #1
c0de2188:	2200      	movs	r2, #0
c0de218a:	f5b2 6f80 	cmp.w	r2, #1024	@ 0x400
c0de218e:	bf08      	it	eq
c0de2190:	bdb0      	popeq	{r4, r5, r7, pc}
c0de2192:	588b      	ldr	r3, [r1, r2]
c0de2194:	188c      	adds	r4, r1, r2
c0de2196:	3210      	adds	r2, #16
c0de2198:	f800 3c01 	strb.w	r3, [r0, #-1]
c0de219c:	6865      	ldr	r5, [r4, #4]
c0de219e:	ea43 1385 	orr.w	r3, r3, r5, lsl #6
c0de21a2:	f800 3c01 	strb.w	r3, [r0, #-1]
c0de21a6:	6863      	ldr	r3, [r4, #4]
c0de21a8:	089d      	lsrs	r5, r3, #2
c0de21aa:	7005      	strb	r5, [r0, #0]
c0de21ac:	68a5      	ldr	r5, [r4, #8]
c0de21ae:	012d      	lsls	r5, r5, #4
c0de21b0:	ea45 0393 	orr.w	r3, r5, r3, lsr #2
c0de21b4:	7003      	strb	r3, [r0, #0]
c0de21b6:	68a3      	ldr	r3, [r4, #8]
c0de21b8:	091d      	lsrs	r5, r3, #4
c0de21ba:	7045      	strb	r5, [r0, #1]
c0de21bc:	68e4      	ldr	r4, [r4, #12]
c0de21be:	00a4      	lsls	r4, r4, #2
c0de21c0:	ea44 1313 	orr.w	r3, r4, r3, lsr #4
c0de21c4:	7043      	strb	r3, [r0, #1]
c0de21c6:	3003      	adds	r0, #3
c0de21c8:	e7df      	b.n	c0de218a <pqcrystals_dilithium2_lowram_polyw1_pack+0x6>

c0de21ca <OUTLINED_FUNCTION_0>:
c0de21ca:	4614      	mov	r4, r2
c0de21cc:	460d      	mov	r5, r1
c0de21ce:	4606      	mov	r6, r0
c0de21d0:	2700      	movs	r7, #0
c0de21d2:	4770      	bx	lr

c0de21d4 <OUTLINED_FUNCTION_1>:
c0de21d4:	f814 0b01 	ldrb.w	r0, [r4], #1
c0de21d8:	2100      	movs	r1, #0
c0de21da:	4632      	mov	r2, r6
c0de21dc:	f008 bf04 	b.w	c0deafe8 <__aeabi_llsl>

c0de21e0 <randombytes>:
c0de21e0:	f007 be8d 	b.w	c0de9efe <cx_rng_no_throw>

c0de21e4 <pqcrystals_dilithium2_lowram_montgomery_reduce>:
c0de21e4:	4a03      	ldr	r2, [pc, #12]	@ (c0de21f4 <pqcrystals_dilithium2_lowram_montgomery_reduce+0x10>)
c0de21e6:	4b04      	ldr	r3, [pc, #16]	@ (c0de21f8 <pqcrystals_dilithium2_lowram_montgomery_reduce+0x14>)
c0de21e8:	4342      	muls	r2, r0
c0de21ea:	fbc2 0103 	smlal	r0, r1, r2, r3
c0de21ee:	4608      	mov	r0, r1
c0de21f0:	4770      	bx	lr
c0de21f2:	bf00      	nop
c0de21f4:	03802001 	.word	0x03802001
c0de21f8:	ff801fff 	.word	0xff801fff

c0de21fc <pqcrystals_dilithium2_lowram_reduce32>:
c0de21fc:	f500 0180 	add.w	r1, r0, #4194304	@ 0x400000
c0de2200:	4a02      	ldr	r2, [pc, #8]	@ (c0de220c <pqcrystals_dilithium2_lowram_reduce32+0x10>)
c0de2202:	15c9      	asrs	r1, r1, #23
c0de2204:	fb01 0002 	mla	r0, r1, r2, r0
c0de2208:	4770      	bx	lr
c0de220a:	bf00      	nop
c0de220c:	ff801fff 	.word	0xff801fff

c0de2210 <pqcrystals_dilithium2_lowram_caddq>:
c0de2210:	4902      	ldr	r1, [pc, #8]	@ (c0de221c <pqcrystals_dilithium2_lowram_caddq+0xc>)
c0de2212:	2800      	cmp	r0, #0
c0de2214:	bf48      	it	mi
c0de2216:	4408      	addmi	r0, r1
c0de2218:	4770      	bx	lr
c0de221a:	bf00      	nop
c0de221c:	007fe001 	.word	0x007fe001

c0de2220 <pqcrystals_dilithium2_lowram_freeze>:
c0de2220:	f500 0180 	add.w	r1, r0, #4194304	@ 0x400000
c0de2224:	4a04      	ldr	r2, [pc, #16]	@ (c0de2238 <pqcrystals_dilithium2_lowram_freeze+0x18>)
c0de2226:	15c9      	asrs	r1, r1, #23
c0de2228:	fb01 0002 	mla	r0, r1, r2, r0
c0de222c:	4903      	ldr	r1, [pc, #12]	@ (c0de223c <pqcrystals_dilithium2_lowram_freeze+0x1c>)
c0de222e:	2800      	cmp	r0, #0
c0de2230:	bf48      	it	mi
c0de2232:	4408      	addmi	r0, r1
c0de2234:	4770      	bx	lr
c0de2236:	bf00      	nop
c0de2238:	ff801fff 	.word	0xff801fff
c0de223c:	007fe001 	.word	0x007fe001

c0de2240 <pqcrystals_dilithium2_lowram_power2round>:
c0de2240:	f601 72ff 	addw	r2, r1, #4095	@ 0xfff
c0de2244:	f641 73ff 	movw	r3, #8191	@ 0x1fff
c0de2248:	ea22 0303 	bic.w	r3, r2, r3
c0de224c:	1ac9      	subs	r1, r1, r3
c0de224e:	6001      	str	r1, [r0, #0]
c0de2250:	1350      	asrs	r0, r2, #13
c0de2252:	4770      	bx	lr

c0de2254 <pqcrystals_dilithium2_lowram_decompose>:
c0de2254:	b510      	push	{r4, lr}
c0de2256:	f101 027f 	add.w	r2, r1, #127	@ 0x7f
c0de225a:	f642 430b 	movw	r3, #11275	@ 0x2c0b
c0de225e:	4c0c      	ldr	r4, [pc, #48]	@ (c0de2290 <pqcrystals_dilithium2_lowram_decompose+0x3c>)
c0de2260:	11d2      	asrs	r2, r2, #7
c0de2262:	4353      	muls	r3, r2
c0de2264:	f503 0200 	add.w	r2, r3, #8388608	@ 0x800000
c0de2268:	1612      	asrs	r2, r2, #24
c0de226a:	f1b3 5f2e 	cmp.w	r3, #729808896	@ 0x2b800000
c0de226e:	4b06      	ldr	r3, [pc, #24]	@ (c0de2288 <pqcrystals_dilithium2_lowram_decompose+0x34>)
c0de2270:	bfa8      	it	ge
c0de2272:	2200      	movge	r2, #0
c0de2274:	fb02 1103 	mla	r1, r2, r3, r1
c0de2278:	4b04      	ldr	r3, [pc, #16]	@ (c0de228c <pqcrystals_dilithium2_lowram_decompose+0x38>)
c0de227a:	42a1      	cmp	r1, r4
c0de227c:	bfc8      	it	gt
c0de227e:	4419      	addgt	r1, r3
c0de2280:	6001      	str	r1, [r0, #0]
c0de2282:	4610      	mov	r0, r2
c0de2284:	bd10      	pop	{r4, pc}
c0de2286:	bf00      	nop
c0de2288:	fffd1800 	.word	0xfffd1800
c0de228c:	ff801fff 	.word	0xff801fff
c0de2290:	003ff000 	.word	0x003ff000

c0de2294 <pqcrystals_dilithium2_lowram_use_hint>:
c0de2294:	b51c      	push	{r2, r3, r4, lr}
c0de2296:	460c      	mov	r4, r1
c0de2298:	4601      	mov	r1, r0
c0de229a:	a801      	add	r0, sp, #4
c0de229c:	f7ff ffda 	bl	c0de2254 <pqcrystals_dilithium2_lowram_decompose>
c0de22a0:	b164      	cbz	r4, c0de22bc <pqcrystals_dilithium2_lowram_use_hint+0x28>
c0de22a2:	9901      	ldr	r1, [sp, #4]
c0de22a4:	2901      	cmp	r1, #1
c0de22a6:	db04      	blt.n	c0de22b2 <pqcrystals_dilithium2_lowram_use_hint+0x1e>
c0de22a8:	f1b0 012b 	subs.w	r1, r0, #43	@ 0x2b
c0de22ac:	bf18      	it	ne
c0de22ae:	1c41      	addne	r1, r0, #1
c0de22b0:	e003      	b.n	c0de22ba <pqcrystals_dilithium2_lowram_use_hint+0x26>
c0de22b2:	1e41      	subs	r1, r0, #1
c0de22b4:	2800      	cmp	r0, #0
c0de22b6:	bf08      	it	eq
c0de22b8:	212b      	moveq	r1, #43	@ 0x2b
c0de22ba:	4608      	mov	r0, r1
c0de22bc:	bd1c      	pop	{r2, r3, r4, pc}

c0de22be <pqcrystals_dilithium2_lowram_keypair>:
c0de22be:	b570      	push	{r4, r5, r6, lr}
c0de22c0:	b088      	sub	sp, #32
c0de22c2:	466e      	mov	r6, sp
c0de22c4:	460c      	mov	r4, r1
c0de22c6:	4605      	mov	r5, r0
c0de22c8:	2120      	movs	r1, #32
c0de22ca:	4630      	mov	r0, r6
c0de22cc:	f7ff ff88 	bl	c0de21e0 <randombytes>
c0de22d0:	4628      	mov	r0, r5
c0de22d2:	4621      	mov	r1, r4
c0de22d4:	4632      	mov	r2, r6
c0de22d6:	f000 f803 	bl	c0de22e0 <crypto_sign_keypair_core>
c0de22da:	2000      	movs	r0, #0
c0de22dc:	b008      	add	sp, #32
c0de22de:	bd70      	pop	{r4, r5, r6, pc}

c0de22e0 <crypto_sign_keypair_core>:
c0de22e0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de22e4:	f6ad 6d88 	subw	sp, sp, #3720	@ 0xe88
c0de22e8:	f60d 6708 	addw	r7, sp, #3592	@ 0xe08
c0de22ec:	460d      	mov	r5, r1
c0de22ee:	4606      	mov	r6, r0
c0de22f0:	4611      	mov	r1, r2
c0de22f2:	2220      	movs	r2, #32
c0de22f4:	4638      	mov	r0, r7
c0de22f6:	f009 f814 	bl	c0deb322 <__aeabi_memcpy>
c0de22fa:	f240 4004 	movw	r0, #1028	@ 0x404
c0de22fe:	f8ad 0e28 	strh.w	r0, [sp, #3624]	@ 0xe28
c0de2302:	ac02      	add	r4, sp, #8
c0de2304:	4620      	mov	r0, r4
c0de2306:	f7fe fe9b 	bl	c0de1040 <inner_keccak256_init>
c0de230a:	4620      	mov	r0, r4
c0de230c:	4639      	mov	r1, r7
c0de230e:	2222      	movs	r2, #34	@ 0x22
c0de2310:	f7fe fea7 	bl	c0de1062 <inner_keccak256_inject>
c0de2314:	f000 fbca 	bl	c0de2aac <OUTLINED_FUNCTION_0>
c0de2318:	4620      	mov	r0, r4
c0de231a:	4639      	mov	r1, r7
c0de231c:	2280      	movs	r2, #128	@ 0x80
c0de231e:	f7fe fec8 	bl	c0de10b2 <inner_keccak256_extract>
c0de2322:	4628      	mov	r0, r5
c0de2324:	4639      	mov	r1, r7
c0de2326:	f7ff fb94 	bl	c0de1a52 <pack_sk_rho>
c0de232a:	f107 0160 	add.w	r1, r7, #96	@ 0x60
c0de232e:	4628      	mov	r0, r5
c0de2330:	9501      	str	r5, [sp, #4]
c0de2332:	f7ff fb96 	bl	c0de1a62 <pack_sk_key>
c0de2336:	4630      	mov	r0, r6
c0de2338:	4639      	mov	r1, r7
c0de233a:	9600      	str	r6, [sp, #0]
c0de233c:	f7ff fb63 	bl	c0de1a06 <pack_pk_rho>
c0de2340:	3720      	adds	r7, #32
c0de2342:	f04f 0b00 	mov.w	fp, #0
c0de2346:	ad82      	add	r5, sp, #520	@ 0x208
c0de2348:	f50d 64c1 	add.w	r4, sp, #1544	@ 0x608
c0de234c:	f60d 2608 	addw	r6, sp, #2568	@ 0xa08
c0de2350:	f04f 0800 	mov.w	r8, #0
c0de2354:	f1b8 0f04 	cmp.w	r8, #4
c0de2358:	d072      	beq.n	c0de2440 <crypto_sign_keypair_core+0x160>
c0de235a:	4628      	mov	r0, r5
c0de235c:	4639      	mov	r1, r7
c0de235e:	2200      	movs	r2, #0
c0de2360:	f7ff fd26 	bl	c0de1db0 <pqcrystals_dilithium2_lowram_poly_uniform_eta>
c0de2364:	f1b8 0f00 	cmp.w	r8, #0
c0de2368:	d104      	bne.n	c0de2374 <crypto_sign_keypair_core+0x94>
c0de236a:	9801      	ldr	r0, [sp, #4]
c0de236c:	4629      	mov	r1, r5
c0de236e:	2200      	movs	r2, #0
c0de2370:	f7ff fb58 	bl	c0de1a24 <pack_sk_s1>
c0de2374:	4628      	mov	r0, r5
c0de2376:	f7ff fc6c 	bl	c0de1c52 <pqcrystals_dilithium2_lowram_poly_ntt>
c0de237a:	ea4f 2008 	mov.w	r0, r8, lsl #8
c0de237e:	f60d 6108 	addw	r1, sp, #3592	@ 0xe08
c0de2382:	b282      	uxth	r2, r0
c0de2384:	4620      	mov	r0, r4
c0de2386:	f7ff fc9f 	bl	c0de1cc8 <pqcrystals_dilithium2_lowram_poly_uniform>
c0de238a:	4630      	mov	r0, r6
c0de238c:	4621      	mov	r1, r4
c0de238e:	462a      	mov	r2, r5
c0de2390:	f7ff fc63 	bl	c0de1c5a <pqcrystals_dilithium2_lowram_poly_pointwise_montgomery>
c0de2394:	f04f 0a01 	mov.w	sl, #1
c0de2398:	f1ba 0f04 	cmp.w	sl, #4
c0de239c:	d020      	beq.n	c0de23e0 <crypto_sign_keypair_core+0x100>
c0de239e:	fa1f f28a 	uxth.w	r2, sl
c0de23a2:	4628      	mov	r0, r5
c0de23a4:	4639      	mov	r1, r7
c0de23a6:	f7ff fd03 	bl	c0de1db0 <pqcrystals_dilithium2_lowram_poly_uniform_eta>
c0de23aa:	f1b8 0f00 	cmp.w	r8, #0
c0de23ae:	d104      	bne.n	c0de23ba <crypto_sign_keypair_core+0xda>
c0de23b0:	9801      	ldr	r0, [sp, #4]
c0de23b2:	4629      	mov	r1, r5
c0de23b4:	4652      	mov	r2, sl
c0de23b6:	f7ff fb35 	bl	c0de1a24 <pack_sk_s1>
c0de23ba:	4628      	mov	r0, r5
c0de23bc:	f7ff fc49 	bl	c0de1c52 <pqcrystals_dilithium2_lowram_poly_ntt>
c0de23c0:	eb0b 000a 	add.w	r0, fp, sl
c0de23c4:	f60d 6108 	addw	r1, sp, #3592	@ 0xe08
c0de23c8:	b282      	uxth	r2, r0
c0de23ca:	4620      	mov	r0, r4
c0de23cc:	f7ff fc7c 	bl	c0de1cc8 <pqcrystals_dilithium2_lowram_poly_uniform>
c0de23d0:	4630      	mov	r0, r6
c0de23d2:	4621      	mov	r1, r4
c0de23d4:	462a      	mov	r2, r5
c0de23d6:	f7ff fb56 	bl	c0de1a86 <pqcrystals_dilithium2_lowram_poly_pointwise_acc_montgomery>
c0de23da:	f10a 0a01 	add.w	sl, sl, #1
c0de23de:	e7db      	b.n	c0de2398 <crypto_sign_keypair_core+0xb8>
c0de23e0:	4630      	mov	r0, r6
c0de23e2:	f7ff fc09 	bl	c0de1bf8 <pqcrystals_dilithium2_lowram_poly_reduce>
c0de23e6:	4630      	mov	r0, r6
c0de23e8:	f7ff fc35 	bl	c0de1c56 <pqcrystals_dilithium2_lowram_poly_invntt_tomont>
c0de23ec:	f108 0004 	add.w	r0, r8, #4
c0de23f0:	4639      	mov	r1, r7
c0de23f2:	b282      	uxth	r2, r0
c0de23f4:	4620      	mov	r0, r4
c0de23f6:	f7ff fcdb 	bl	c0de1db0 <pqcrystals_dilithium2_lowram_poly_uniform_eta>
c0de23fa:	f8dd a004 	ldr.w	sl, [sp, #4]
c0de23fe:	4621      	mov	r1, r4
c0de2400:	4642      	mov	r2, r8
c0de2402:	4650      	mov	r0, sl
c0de2404:	f7ff fb15 	bl	c0de1a32 <pack_sk_s2>
c0de2408:	4630      	mov	r0, r6
c0de240a:	4631      	mov	r1, r6
c0de240c:	4622      	mov	r2, r4
c0de240e:	f7ff fc11 	bl	c0de1c34 <pqcrystals_dilithium2_lowram_poly_add>
c0de2412:	4630      	mov	r0, r6
c0de2414:	f7ff fbff 	bl	c0de1c16 <pqcrystals_dilithium2_lowram_poly_caddq>
c0de2418:	4628      	mov	r0, r5
c0de241a:	4621      	mov	r1, r4
c0de241c:	4632      	mov	r2, r6
c0de241e:	f7ff fc2f 	bl	c0de1c80 <pqcrystals_dilithium2_lowram_poly_power2round>
c0de2422:	4650      	mov	r0, sl
c0de2424:	4621      	mov	r1, r4
c0de2426:	4642      	mov	r2, r8
c0de2428:	f7ff fb0b 	bl	c0de1a42 <pack_sk_t0>
c0de242c:	9800      	ldr	r0, [sp, #0]
c0de242e:	4629      	mov	r1, r5
c0de2430:	4642      	mov	r2, r8
c0de2432:	f7ff faf0 	bl	c0de1a16 <pack_pk_t1>
c0de2436:	f50b 7b80 	add.w	fp, fp, #256	@ 0x100
c0de243a:	f108 0801 	add.w	r8, r8, #1
c0de243e:	e789      	b.n	c0de2354 <crypto_sign_keypair_core+0x74>
c0de2440:	ac02      	add	r4, sp, #8
c0de2442:	4620      	mov	r0, r4
c0de2444:	f7fe fdfc 	bl	c0de1040 <inner_keccak256_init>
c0de2448:	9e00      	ldr	r6, [sp, #0]
c0de244a:	4620      	mov	r0, r4
c0de244c:	f44f 62a4 	mov.w	r2, #1312	@ 0x520
c0de2450:	4631      	mov	r1, r6
c0de2452:	f7fe fe06 	bl	c0de1062 <inner_keccak256_inject>
c0de2456:	f000 fb29 	bl	c0de2aac <OUTLINED_FUNCTION_0>
c0de245a:	ad82      	add	r5, sp, #520	@ 0x208
c0de245c:	4620      	mov	r0, r4
c0de245e:	2240      	movs	r2, #64	@ 0x40
c0de2460:	4629      	mov	r1, r5
c0de2462:	f7fe fe26 	bl	c0de10b2 <inner_keccak256_extract>
c0de2466:	480c      	ldr	r0, [pc, #48]	@ (c0de2498 <crypto_sign_keypair_core+0x1b8>)
c0de2468:	4629      	mov	r1, r5
c0de246a:	2240      	movs	r2, #64	@ 0x40
c0de246c:	eb09 0400 	add.w	r4, r9, r0
c0de2470:	f504 7020 	add.w	r0, r4, #640	@ 0x280
c0de2474:	f008 ff55 	bl	c0deb322 <__aeabi_memcpy>
c0de2478:	f504 7030 	add.w	r0, r4, #704	@ 0x2c0
c0de247c:	4631      	mov	r1, r6
c0de247e:	f44f 62a4 	mov.w	r2, #1312	@ 0x520
c0de2482:	f008 ff4e 	bl	c0deb322 <__aeabi_memcpy>
c0de2486:	9801      	ldr	r0, [sp, #4]
c0de2488:	4629      	mov	r1, r5
c0de248a:	f7ff faf3 	bl	c0de1a74 <pack_sk_tr>
c0de248e:	2000      	movs	r0, #0
c0de2490:	f60d 6d88 	addw	sp, sp, #3720	@ 0xe88
c0de2494:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2498:	000002d8 	.word	0x000002d8

c0de249c <crypto_sign_signature_init>:
c0de249c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de24a0:	29ff      	cmp	r1, #255	@ 0xff
c0de24a2:	d902      	bls.n	c0de24aa <crypto_sign_signature_init+0xe>
c0de24a4:	f04f 34ff 	mov.w	r4, #4294967295	@ 0xffffffff
c0de24a8:	e01c      	b.n	c0de24e4 <crypto_sign_signature_init+0x48>
c0de24aa:	4680      	mov	r8, r0
c0de24ac:	480f      	ldr	r0, [pc, #60]	@ (c0de24ec <crypto_sign_signature_init+0x50>)
c0de24ae:	2400      	movs	r4, #0
c0de24b0:	460d      	mov	r5, r1
c0de24b2:	eb09 0700 	add.w	r7, r9, r0
c0de24b6:	4638      	mov	r0, r7
c0de24b8:	f887 1201 	strb.w	r1, [r7, #513]	@ 0x201
c0de24bc:	f887 4200 	strb.w	r4, [r7, #512]	@ 0x200
c0de24c0:	f7fe fdbe 	bl	c0de1040 <inner_keccak256_init>
c0de24c4:	4e0a      	ldr	r6, [pc, #40]	@ (c0de24f0 <crypto_sign_signature_init+0x54>)
c0de24c6:	f507 7120 	add.w	r1, r7, #640	@ 0x280
c0de24ca:	4638      	mov	r0, r7
c0de24cc:	2240      	movs	r2, #64	@ 0x40
c0de24ce:	447e      	add	r6, pc
c0de24d0:	47b0      	blx	r6
c0de24d2:	f507 7100 	add.w	r1, r7, #512	@ 0x200
c0de24d6:	4638      	mov	r0, r7
c0de24d8:	2202      	movs	r2, #2
c0de24da:	47b0      	blx	r6
c0de24dc:	4638      	mov	r0, r7
c0de24de:	4641      	mov	r1, r8
c0de24e0:	462a      	mov	r2, r5
c0de24e2:	47b0      	blx	r6
c0de24e4:	4620      	mov	r0, r4
c0de24e6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de24ea:	bf00      	nop
c0de24ec:	000002d8 	.word	0x000002d8
c0de24f0:	ffffeb91 	.word	0xffffeb91

c0de24f4 <crypto_sign_signature_absorb>:
c0de24f4:	460a      	mov	r2, r1
c0de24f6:	4601      	mov	r1, r0
c0de24f8:	4801      	ldr	r0, [pc, #4]	@ (c0de2500 <crypto_sign_signature_absorb+0xc>)
c0de24fa:	4448      	add	r0, r9
c0de24fc:	f7fe bdb1 	b.w	c0de1062 <inner_keccak256_inject>
c0de2500:	000002d8 	.word	0x000002d8

c0de2504 <crypto_sign_signature_core>:
c0de2504:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2508:	f5ad 5d83 	sub.w	sp, sp, #4192	@ 0x1060
c0de250c:	b086      	sub	sp, #24
c0de250e:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de2510:	48bf      	ldr	r0, [pc, #764]	@ (c0de2810 <crypto_sign_signature_core+0x30c>)
c0de2512:	4616      	mov	r6, r2
c0de2514:	9103      	str	r1, [sp, #12]
c0de2516:	eb09 0400 	add.w	r4, r9, r0
c0de251a:	f000 fac7 	bl	c0de2aac <OUTLINED_FUNCTION_0>
c0de251e:	f504 7100 	add.w	r1, r4, #512	@ 0x200
c0de2522:	4620      	mov	r0, r4
c0de2524:	2240      	movs	r2, #64	@ 0x40
c0de2526:	f7fe fdc4 	bl	c0de10b2 <inner_keccak256_extract>
c0de252a:	a80d      	add	r0, sp, #52	@ 0x34
c0de252c:	2100      	movs	r1, #0
c0de252e:	f500 7000 	add.w	r0, r0, #512	@ 0x200
c0de2532:	900a      	str	r0, [sp, #40]	@ 0x28
c0de2534:	2000      	movs	r0, #0
c0de2536:	2920      	cmp	r1, #32
c0de2538:	d006      	beq.n	c0de2548 <crypto_sign_signature_core+0x44>
c0de253a:	4ab5      	ldr	r2, [pc, #724]	@ (c0de2810 <crypto_sign_signature_core+0x30c>)
c0de253c:	444a      	add	r2, r9
c0de253e:	440a      	add	r2, r1
c0de2540:	3101      	adds	r1, #1
c0de2542:	f882 0240 	strb.w	r0, [r2, #576]	@ 0x240
c0de2546:	e7f6      	b.n	c0de2536 <crypto_sign_signature_core+0x32>
c0de2548:	48b1      	ldr	r0, [pc, #708]	@ (c0de2810 <crypto_sign_signature_core+0x30c>)
c0de254a:	eb09 0400 	add.w	r4, r9, r0
c0de254e:	4620      	mov	r0, r4
c0de2550:	f7fe fd76 	bl	c0de1040 <inner_keccak256_init>
c0de2554:	4fb0      	ldr	r7, [pc, #704]	@ (c0de2818 <crypto_sign_signature_core+0x314>)
c0de2556:	f106 0120 	add.w	r1, r6, #32
c0de255a:	4620      	mov	r0, r4
c0de255c:	2220      	movs	r2, #32
c0de255e:	447f      	add	r7, pc
c0de2560:	47b8      	blx	r7
c0de2562:	f504 7510 	add.w	r5, r4, #576	@ 0x240
c0de2566:	4620      	mov	r0, r4
c0de2568:	2220      	movs	r2, #32
c0de256a:	4629      	mov	r1, r5
c0de256c:	47b8      	blx	r7
c0de256e:	f504 7100 	add.w	r1, r4, #512	@ 0x200
c0de2572:	4620      	mov	r0, r4
c0de2574:	2240      	movs	r2, #64	@ 0x40
c0de2576:	47b8      	blx	r7
c0de2578:	f000 fa98 	bl	c0de2aac <OUTLINED_FUNCTION_0>
c0de257c:	4620      	mov	r0, r4
c0de257e:	4629      	mov	r1, r5
c0de2580:	2240      	movs	r2, #64	@ 0x40
c0de2582:	f7fe fd96 	bl	c0de10b2 <inner_keccak256_extract>
c0de2586:	f506 7060 	add.w	r0, r6, #896	@ 0x380
c0de258a:	2100      	movs	r1, #0
c0de258c:	f04f 0800 	mov.w	r8, #0
c0de2590:	9004      	str	r0, [sp, #16]
c0de2592:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de2594:	3020      	adds	r0, #32
c0de2596:	9005      	str	r0, [sp, #20]
c0de2598:	ac0d      	add	r4, sp, #52	@ 0x34
c0de259a:	2001      	movs	r0, #1
c0de259c:	9107      	str	r1, [sp, #28]
c0de259e:	9006      	str	r0, [sp, #24]
c0de25a0:	b280      	uxth	r0, r0
c0de25a2:	f64f 71fc 	movw	r1, #65532	@ 0xfffc
c0de25a6:	eb01 0380 	add.w	r3, r1, r0, lsl #2
c0de25aa:	2000      	movs	r0, #0
c0de25ac:	f50d 618f 	add.w	r1, sp, #1144	@ 0x478
c0de25b0:	2804      	cmp	r0, #4
c0de25b2:	d00b      	beq.n	c0de25cc <crypto_sign_signature_core+0xc8>
c0de25b4:	2200      	movs	r2, #0
c0de25b6:	f5b2 7f40 	cmp.w	r2, #768	@ 0x300
c0de25ba:	d003      	beq.n	c0de25c4 <crypto_sign_signature_core+0xc0>
c0de25bc:	f801 8002 	strb.w	r8, [r1, r2]
c0de25c0:	3201      	adds	r2, #1
c0de25c2:	e7f8      	b.n	c0de25b6 <crypto_sign_signature_core+0xb2>
c0de25c4:	f501 7140 	add.w	r1, r1, #768	@ 0x300
c0de25c8:	3001      	adds	r0, #1
c0de25ca:	e7f1      	b.n	c0de25b0 <crypto_sign_signature_core+0xac>
c0de25cc:	9807      	ldr	r0, [sp, #28]
c0de25ce:	2700      	movs	r7, #0
c0de25d0:	9309      	str	r3, [sp, #36]	@ 0x24
c0de25d2:	b280      	uxth	r0, r0
c0de25d4:	ea4f 0b80 	mov.w	fp, r0, lsl #2
c0de25d8:	2f04      	cmp	r7, #4
c0de25da:	d023      	beq.n	c0de2624 <crypto_sign_signature_core+0x120>
c0de25dc:	488c      	ldr	r0, [pc, #560]	@ (c0de2810 <crypto_sign_signature_core+0x30c>)
c0de25de:	eb09 0300 	add.w	r3, r9, r0
c0de25e2:	eb07 000b 	add.w	r0, r7, fp
c0de25e6:	b282      	uxth	r2, r0
c0de25e8:	f503 7110 	add.w	r1, r3, #576	@ 0x240
c0de25ec:	4620      	mov	r0, r4
c0de25ee:	f7ff f905 	bl	c0de17fc <poly_uniform_gamma1_lowram_eth>
c0de25f2:	4620      	mov	r0, r4
c0de25f4:	f7ff fb2d 	bl	c0de1c52 <pqcrystals_dilithium2_lowram_poly_ntt>
c0de25f8:	f04f 0a00 	mov.w	sl, #0
c0de25fc:	f50d 658f 	add.w	r5, sp, #1144	@ 0x478
c0de2600:	f5ba 6f80 	cmp.w	sl, #1024	@ 0x400
c0de2604:	d00c      	beq.n	c0de2620 <crypto_sign_signature_core+0x11c>
c0de2606:	eb07 000a 	add.w	r0, r7, sl
c0de260a:	4621      	mov	r1, r4
c0de260c:	4632      	mov	r2, r6
c0de260e:	b283      	uxth	r3, r0
c0de2610:	4628      	mov	r0, r5
c0de2612:	f7ff f883 	bl	c0de171c <poly_uniform_pointwise_montgomery_polywadd_lowram_eth>
c0de2616:	f505 7540 	add.w	r5, r5, #768	@ 0x300
c0de261a:	f50a 7a80 	add.w	sl, sl, #256	@ 0x100
c0de261e:	e7ef      	b.n	c0de2600 <crypto_sign_signature_core+0xfc>
c0de2620:	3701      	adds	r7, #1
c0de2622:	e7d9      	b.n	c0de25d8 <crypto_sign_signature_core+0xd4>
c0de2624:	f8dd b024 	ldr.w	fp, [sp, #36]	@ 0x24
c0de2628:	2700      	movs	r7, #0
c0de262a:	f50d 658f 	add.w	r5, sp, #1144	@ 0x478
c0de262e:	f5b7 7f40 	cmp.w	r7, #768	@ 0x300
c0de2632:	d01a      	beq.n	c0de266a <crypto_sign_signature_core+0x166>
c0de2634:	4620      	mov	r0, r4
c0de2636:	4629      	mov	r1, r5
c0de2638:	f7fe ffd3 	bl	c0de15e2 <polyw_unpack>
c0de263c:	4620      	mov	r0, r4
c0de263e:	f7ff fb0a 	bl	c0de1c56 <pqcrystals_dilithium2_lowram_poly_invntt_tomont>
c0de2642:	4620      	mov	r0, r4
c0de2644:	f7ff fae7 	bl	c0de1c16 <pqcrystals_dilithium2_lowram_poly_caddq>
c0de2648:	4628      	mov	r0, r5
c0de264a:	4621      	mov	r1, r4
c0de264c:	f7fe ffab 	bl	c0de15a6 <polyw_pack>
c0de2650:	4620      	mov	r0, r4
c0de2652:	4621      	mov	r1, r4
c0de2654:	f7fe fff5 	bl	c0de1642 <poly_highbits>
c0de2658:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de265a:	4621      	mov	r1, r4
c0de265c:	4438      	add	r0, r7
c0de265e:	f7ff fd91 	bl	c0de2184 <pqcrystals_dilithium2_lowram_polyw1_pack>
c0de2662:	f505 7540 	add.w	r5, r5, #768	@ 0x300
c0de2666:	37c0      	adds	r7, #192	@ 0xc0
c0de2668:	e7e1      	b.n	c0de262e <crypto_sign_signature_core+0x12a>
c0de266a:	4869      	ldr	r0, [pc, #420]	@ (c0de2810 <crypto_sign_signature_core+0x30c>)
c0de266c:	eb09 0500 	add.w	r5, r9, r0
c0de2670:	4628      	mov	r0, r5
c0de2672:	f7fe fce5 	bl	c0de1040 <inner_keccak256_init>
c0de2676:	f505 7100 	add.w	r1, r5, #512	@ 0x200
c0de267a:	4628      	mov	r0, r5
c0de267c:	2240      	movs	r2, #64	@ 0x40
c0de267e:	f7fe fcf0 	bl	c0de1062 <inner_keccak256_inject>
c0de2682:	9f0b      	ldr	r7, [sp, #44]	@ 0x2c
c0de2684:	4628      	mov	r0, r5
c0de2686:	f44f 7240 	mov.w	r2, #768	@ 0x300
c0de268a:	4639      	mov	r1, r7
c0de268c:	f7fe fce9 	bl	c0de1062 <inner_keccak256_inject>
c0de2690:	4628      	mov	r0, r5
c0de2692:	f7fe fcf8 	bl	c0de1086 <inner_keccak256_flip>
c0de2696:	4628      	mov	r0, r5
c0de2698:	4639      	mov	r1, r7
c0de269a:	2220      	movs	r2, #32
c0de269c:	f7fe fd09 	bl	c0de10b2 <inner_keccak256_extract>
c0de26a0:	4620      	mov	r0, r4
c0de26a2:	4639      	mov	r1, r7
c0de26a4:	f7ff fc69 	bl	c0de1f7a <pqcrystals_dilithium2_lowram_poly_challenge_eth>
c0de26a8:	f20d 4034 	addw	r0, sp, #1076	@ 0x434
c0de26ac:	4621      	mov	r1, r4
c0de26ae:	f7fe fda6 	bl	c0de11fe <poly_challenge_compress>
c0de26b2:	9807      	ldr	r0, [sp, #28]
c0de26b4:	f8dd a014 	ldr.w	sl, [sp, #20]
c0de26b8:	2500      	movs	r5, #0
c0de26ba:	3001      	adds	r0, #1
c0de26bc:	9007      	str	r0, [sp, #28]
c0de26be:	b135      	cbz	r5, c0de26ce <crypto_sign_signature_core+0x1ca>
c0de26c0:	2d04      	cmp	r5, #4
c0de26c2:	d035      	beq.n	c0de2730 <crypto_sign_signature_core+0x22c>
c0de26c4:	4620      	mov	r0, r4
c0de26c6:	f20d 4134 	addw	r1, sp, #1076	@ 0x434
c0de26ca:	f7fe fdcd 	bl	c0de1268 <poly_challenge_decompress>
c0de26ce:	9f0a      	ldr	r7, [sp, #40]	@ 0x28
c0de26d0:	4621      	mov	r1, r4
c0de26d2:	4638      	mov	r0, r7
c0de26d4:	f000 fada 	bl	c0de2c8c <poly_small_ntt_copy>
c0de26d8:	4620      	mov	r0, r4
c0de26da:	4631      	mov	r1, r6
c0de26dc:	462a      	mov	r2, r5
c0de26de:	f7fe fff9 	bl	c0de16d4 <unpack_sk_s1>
c0de26e2:	4620      	mov	r0, r4
c0de26e4:	f000 f9e6 	bl	c0de2ab4 <small_ntt>
c0de26e8:	4620      	mov	r0, r4
c0de26ea:	4639      	mov	r1, r7
c0de26ec:	4622      	mov	r2, r4
c0de26ee:	f000 fb05 	bl	c0de2cfc <poly_small_basemul_invntt>
c0de26f2:	4847      	ldr	r0, [pc, #284]	@ (c0de2810 <crypto_sign_signature_core+0x30c>)
c0de26f4:	4621      	mov	r1, r4
c0de26f6:	4448      	add	r0, r9
c0de26f8:	9000      	str	r0, [sp, #0]
c0de26fa:	f500 7210 	add.w	r2, r0, #576	@ 0x240
c0de26fe:	eb0b 0005 	add.w	r0, fp, r5
c0de2702:	b283      	uxth	r3, r0
c0de2704:	4620      	mov	r0, r4
c0de2706:	f7ff f8af 	bl	c0de1868 <poly_uniform_gamma1_add_lowram_eth>
c0de270a:	4620      	mov	r0, r4
c0de270c:	f7ff fa74 	bl	c0de1bf8 <pqcrystals_dilithium2_lowram_poly_reduce>
c0de2710:	4840      	ldr	r0, [pc, #256]	@ (c0de2814 <crypto_sign_signature_core+0x310>)
c0de2712:	f500 410c 	add.w	r1, r0, #35840	@ 0x8c00
c0de2716:	4620      	mov	r0, r4
c0de2718:	f7ff fac0 	bl	c0de1c9c <pqcrystals_dilithium2_lowram_poly_chknorm>
c0de271c:	2800      	cmp	r0, #0
c0de271e:	d166      	bne.n	c0de27ee <crypto_sign_signature_core+0x2ea>
c0de2720:	4650      	mov	r0, sl
c0de2722:	4621      	mov	r1, r4
c0de2724:	f7ff fcfd 	bl	c0de2122 <pqcrystals_dilithium2_lowram_polyz_pack>
c0de2728:	f50a 7a10 	add.w	sl, sl, #576	@ 0x240
c0de272c:	3501      	adds	r5, #1
c0de272e:	e7c6      	b.n	c0de26be <crypto_sign_signature_core+0x1ba>
c0de2730:	9d04      	ldr	r5, [sp, #16]
c0de2732:	2100      	movs	r1, #0
c0de2734:	2000      	movs	r0, #0
c0de2736:	f50d 6a8f 	add.w	sl, sp, #1144	@ 0x478
c0de273a:	2700      	movs	r7, #0
c0de273c:	9009      	str	r0, [sp, #36]	@ 0x24
c0de273e:	910c      	str	r1, [sp, #48]	@ 0x30
c0de2740:	2f04      	cmp	r7, #4
c0de2742:	d057      	beq.n	c0de27f4 <crypto_sign_signature_core+0x2f0>
c0de2744:	4620      	mov	r0, r4
c0de2746:	f20d 4134 	addw	r1, sp, #1076	@ 0x434
c0de274a:	f7fe fd8d 	bl	c0de1268 <poly_challenge_decompress>
c0de274e:	46ab      	mov	fp, r5
c0de2750:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
c0de2752:	4621      	mov	r1, r4
c0de2754:	4628      	mov	r0, r5
c0de2756:	f000 fa99 	bl	c0de2c8c <poly_small_ntt_copy>
c0de275a:	4620      	mov	r0, r4
c0de275c:	4631      	mov	r1, r6
c0de275e:	463a      	mov	r2, r7
c0de2760:	9708      	str	r7, [sp, #32]
c0de2762:	f7fe ffbe 	bl	c0de16e2 <unpack_sk_s2>
c0de2766:	4620      	mov	r0, r4
c0de2768:	f000 f9a4 	bl	c0de2ab4 <small_ntt>
c0de276c:	4629      	mov	r1, r5
c0de276e:	4620      	mov	r0, r4
c0de2770:	4622      	mov	r2, r4
c0de2772:	465d      	mov	r5, fp
c0de2774:	f000 fac2 	bl	c0de2cfc <poly_small_basemul_invntt>
c0de2778:	4620      	mov	r0, r4
c0de277a:	4651      	mov	r1, sl
c0de277c:	4622      	mov	r2, r4
c0de277e:	f7fe ff48 	bl	c0de1612 <polyw_sub>
c0de2782:	4620      	mov	r0, r4
c0de2784:	f7ff fa38 	bl	c0de1bf8 <pqcrystals_dilithium2_lowram_poly_reduce>
c0de2788:	4650      	mov	r0, sl
c0de278a:	4621      	mov	r1, r4
c0de278c:	f7fe ff0b 	bl	c0de15a6 <polyw_pack>
c0de2790:	4620      	mov	r0, r4
c0de2792:	4621      	mov	r1, r4
c0de2794:	f7fe ff6e 	bl	c0de1674 <poly_lowbits>
c0de2798:	4620      	mov	r0, r4
c0de279a:	f7ff fa2d 	bl	c0de1bf8 <pqcrystals_dilithium2_lowram_poly_reduce>
c0de279e:	491d      	ldr	r1, [pc, #116]	@ (c0de2814 <crypto_sign_signature_core+0x310>)
c0de27a0:	4620      	mov	r0, r4
c0de27a2:	f7ff fa7b 	bl	c0de1c9c <pqcrystals_dilithium2_lowram_poly_chknorm>
c0de27a6:	bb10      	cbnz	r0, c0de27ee <crypto_sign_signature_core+0x2ea>
c0de27a8:	4620      	mov	r0, r4
c0de27aa:	f20d 4134 	addw	r1, sp, #1076	@ 0x434
c0de27ae:	462a      	mov	r2, r5
c0de27b0:	f7fe fd8c 	bl	c0de12cc <poly_schoolbook>
c0de27b4:	4620      	mov	r0, r4
c0de27b6:	f44f 31ba 	mov.w	r1, #95232	@ 0x17400
c0de27ba:	f7ff fa6f 	bl	c0de1c9c <pqcrystals_dilithium2_lowram_poly_chknorm>
c0de27be:	b9b0      	cbnz	r0, c0de27ee <crypto_sign_signature_core+0x2ea>
c0de27c0:	4620      	mov	r0, r4
c0de27c2:	4621      	mov	r1, r4
c0de27c4:	4652      	mov	r2, sl
c0de27c6:	f7ff f887 	bl	c0de18d8 <poly_make_hint_lowram>
c0de27ca:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de27cc:	4401      	add	r1, r0
c0de27ce:	2950      	cmp	r1, #80	@ 0x50
c0de27d0:	9109      	str	r1, [sp, #36]	@ 0x24
c0de27d2:	d80c      	bhi.n	c0de27ee <crypto_sign_signature_core+0x2ea>
c0de27d4:	9f08      	ldr	r7, [sp, #32]
c0de27d6:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de27d8:	4621      	mov	r1, r4
c0de27da:	ab0c      	add	r3, sp, #48	@ 0x30
c0de27dc:	463a      	mov	r2, r7
c0de27de:	f7fe fcec 	bl	c0de11ba <pqcrystals_dilithium2_lowram_pack_sig_h>
c0de27e2:	f505 75d0 	add.w	r5, r5, #416	@ 0x1a0
c0de27e6:	f50a 7a40 	add.w	sl, sl, #768	@ 0x300
c0de27ea:	3701      	adds	r7, #1
c0de27ec:	e7a8      	b.n	c0de2740 <crypto_sign_signature_core+0x23c>
c0de27ee:	9806      	ldr	r0, [sp, #24]
c0de27f0:	3001      	adds	r0, #1
c0de27f2:	e6d4      	b.n	c0de259e <crypto_sign_signature_core+0x9a>
c0de27f4:	a90c      	add	r1, sp, #48	@ 0x30
c0de27f6:	980b      	ldr	r0, [sp, #44]	@ 0x2c
c0de27f8:	f7fe fcf5 	bl	c0de11e6 <pqcrystals_dilithium2_lowram_pack_sig_h_zero>
c0de27fc:	9903      	ldr	r1, [sp, #12]
c0de27fe:	f640 1074 	movw	r0, #2420	@ 0x974
c0de2802:	6008      	str	r0, [r1, #0]
c0de2804:	2000      	movs	r0, #0
c0de2806:	f50d 5d83 	add.w	sp, sp, #4192	@ 0x1060
c0de280a:	b006      	add	sp, #24
c0de280c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2810:	000002d8 	.word	0x000002d8
c0de2814:	000173b2 	.word	0x000173b2
c0de2818:	ffffeb01 	.word	0xffffeb01

c0de281c <pqcrystals_dilithium2_lowram_verify>:
c0de281c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2820:	f6ad 3d58 	subw	sp, sp, #2904	@ 0xb58
c0de2824:	4692      	mov	sl, r2
c0de2826:	f640 1274 	movw	r2, #2420	@ 0x974
c0de282a:	4604      	mov	r4, r0
c0de282c:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de2830:	4291      	cmp	r1, r2
c0de2832:	f040 80eb 	bne.w	c0de2a0c <pqcrystals_dilithium2_lowram_verify+0x1f0>
c0de2836:	f8dd 1b7c 	ldr.w	r1, [sp, #2940]	@ 0xb7c
c0de283a:	29ff      	cmp	r1, #255	@ 0xff
c0de283c:	f200 80e6 	bhi.w	c0de2a0c <pqcrystals_dilithium2_lowram_verify+0x1f0>
c0de2840:	ad84      	add	r5, sp, #528	@ 0x210
c0de2842:	4e81      	ldr	r6, [pc, #516]	@ (c0de2a48 <pqcrystals_dilithium2_lowram_verify+0x22c>)
c0de2844:	f8dd 8b80 	ldr.w	r8, [sp, #2944]	@ 0xb80
c0de2848:	9303      	str	r3, [sp, #12]
c0de284a:	4628      	mov	r0, r5
c0de284c:	447e      	add	r6, pc
c0de284e:	47b0      	blx	r6
c0de2850:	4f7e      	ldr	r7, [pc, #504]	@ (c0de2a4c <pqcrystals_dilithium2_lowram_verify+0x230>)
c0de2852:	4628      	mov	r0, r5
c0de2854:	4641      	mov	r1, r8
c0de2856:	f44f 62a4 	mov.w	r2, #1312	@ 0x520
c0de285a:	447f      	add	r7, pc
c0de285c:	47b8      	blx	r7
c0de285e:	4628      	mov	r0, r5
c0de2860:	f7fe fc11 	bl	c0de1086 <inner_keccak256_flip>
c0de2864:	f50d 6b82 	add.w	fp, sp, #1040	@ 0x410
c0de2868:	4628      	mov	r0, r5
c0de286a:	2240      	movs	r2, #64	@ 0x40
c0de286c:	4659      	mov	r1, fp
c0de286e:	f7fe fc20 	bl	c0de10b2 <inner_keccak256_extract>
c0de2872:	4628      	mov	r0, r5
c0de2874:	47b0      	blx	r6
c0de2876:	4628      	mov	r0, r5
c0de2878:	4659      	mov	r1, fp
c0de287a:	2240      	movs	r2, #64	@ 0x40
c0de287c:	47b8      	blx	r7
c0de287e:	f8dd 0b7c 	ldr.w	r0, [sp, #2940]	@ 0xb7c
c0de2882:	f04f 0800 	mov.w	r8, #0
c0de2886:	4659      	mov	r1, fp
c0de2888:	2202      	movs	r2, #2
c0de288a:	f88d 8410 	strb.w	r8, [sp, #1040]	@ 0x410
c0de288e:	f88d 0411 	strb.w	r0, [sp, #1041]	@ 0x411
c0de2892:	4628      	mov	r0, r5
c0de2894:	47b8      	blx	r7
c0de2896:	f8dd 1b78 	ldr.w	r1, [sp, #2936]	@ 0xb78
c0de289a:	f8dd 2b7c 	ldr.w	r2, [sp, #2940]	@ 0xb7c
c0de289e:	4628      	mov	r0, r5
c0de28a0:	47b8      	blx	r7
c0de28a2:	9a03      	ldr	r2, [sp, #12]
c0de28a4:	4628      	mov	r0, r5
c0de28a6:	4651      	mov	r1, sl
c0de28a8:	47b8      	blx	r7
c0de28aa:	4628      	mov	r0, r5
c0de28ac:	f7fe fbeb 	bl	c0de1086 <inner_keccak256_flip>
c0de28b0:	4628      	mov	r0, r5
c0de28b2:	4659      	mov	r1, fp
c0de28b4:	2240      	movs	r2, #64	@ 0x40
c0de28b6:	f7fe fbfc 	bl	c0de10b2 <inner_keccak256_extract>
c0de28ba:	4628      	mov	r0, r5
c0de28bc:	47b0      	blx	r6
c0de28be:	4628      	mov	r0, r5
c0de28c0:	4659      	mov	r1, fp
c0de28c2:	2240      	movs	r2, #64	@ 0x40
c0de28c4:	47b8      	blx	r7
c0de28c6:	f20d 7754 	addw	r7, sp, #1876	@ 0x754
c0de28ca:	4621      	mov	r1, r4
c0de28cc:	4638      	mov	r0, r7
c0de28ce:	f7ff fb54 	bl	c0de1f7a <pqcrystals_dilithium2_lowram_poly_challenge_eth>
c0de28d2:	4658      	mov	r0, fp
c0de28d4:	4639      	mov	r1, r7
c0de28d6:	f7fe fc92 	bl	c0de11fe <poly_challenge_compress>
c0de28da:	f8dd 0b80 	ldr.w	r0, [sp, #2944]	@ 0xb80
c0de28de:	4e59      	ldr	r6, [pc, #356]	@ (c0de2a44 <pqcrystals_dilithium2_lowram_verify+0x228>)
c0de28e0:	f104 0520 	add.w	r5, r4, #32
c0de28e4:	f20d 4b54 	addw	fp, sp, #1108	@ 0x454
c0de28e8:	f04f 0a00 	mov.w	sl, #0
c0de28ec:	9500      	str	r5, [sp, #0]
c0de28ee:	3020      	adds	r0, #32
c0de28f0:	9001      	str	r0, [sp, #4]
c0de28f2:	2001      	movs	r0, #1
c0de28f4:	9003      	str	r0, [sp, #12]
c0de28f6:	f1ba 0f04 	cmp.w	sl, #4
c0de28fa:	f000 808b 	beq.w	c0de2a14 <pqcrystals_dilithium2_lowram_verify+0x1f8>
c0de28fe:	2000      	movs	r0, #0
c0de2900:	f5b0 7f40 	cmp.w	r0, #768	@ 0x300
c0de2904:	d003      	beq.n	c0de290e <pqcrystals_dilithium2_lowram_verify+0xf2>
c0de2906:	f80b 8000 	strb.w	r8, [fp, r0]
c0de290a:	3001      	adds	r0, #1
c0de290c:	e7f8      	b.n	c0de2900 <pqcrystals_dilithium2_lowram_verify+0xe4>
c0de290e:	4638      	mov	r0, r7
c0de2910:	4629      	mov	r1, r5
c0de2912:	f8cd a008 	str.w	sl, [sp, #8]
c0de2916:	f7ff faa2 	bl	c0de1e5e <pqcrystals_dilithium2_lowram_polyz_unpack>
c0de291a:	4638      	mov	r0, r7
c0de291c:	4631      	mov	r1, r6
c0de291e:	f7ff f9bd 	bl	c0de1c9c <pqcrystals_dilithium2_lowram_poly_chknorm>
c0de2922:	2800      	cmp	r0, #0
c0de2924:	d170      	bne.n	c0de2a08 <pqcrystals_dilithium2_lowram_verify+0x1ec>
c0de2926:	4638      	mov	r0, r7
c0de2928:	f7ff f993 	bl	c0de1c52 <pqcrystals_dilithium2_lowram_poly_ntt>
c0de292c:	9802      	ldr	r0, [sp, #8]
c0de292e:	f8dd 2b80 	ldr.w	r2, [sp, #2944]	@ 0xb80
c0de2932:	4639      	mov	r1, r7
c0de2934:	0200      	lsls	r0, r0, #8
c0de2936:	b283      	uxth	r3, r0
c0de2938:	4658      	mov	r0, fp
c0de293a:	f7fe feef 	bl	c0de171c <poly_uniform_pointwise_montgomery_polywadd_lowram_eth>
c0de293e:	9d03      	ldr	r5, [sp, #12]
c0de2940:	f44f 7a18 	mov.w	sl, #608	@ 0x260
c0de2944:	f5ba 6f12 	cmp.w	sl, #2336	@ 0x920
c0de2948:	d018      	beq.n	c0de297c <pqcrystals_dilithium2_lowram_verify+0x160>
c0de294a:	eb04 010a 	add.w	r1, r4, sl
c0de294e:	4638      	mov	r0, r7
c0de2950:	f7ff fa85 	bl	c0de1e5e <pqcrystals_dilithium2_lowram_polyz_unpack>
c0de2954:	4638      	mov	r0, r7
c0de2956:	4631      	mov	r1, r6
c0de2958:	f7ff f9a0 	bl	c0de1c9c <pqcrystals_dilithium2_lowram_poly_chknorm>
c0de295c:	2800      	cmp	r0, #0
c0de295e:	d153      	bne.n	c0de2a08 <pqcrystals_dilithium2_lowram_verify+0x1ec>
c0de2960:	4638      	mov	r0, r7
c0de2962:	f7ff f976 	bl	c0de1c52 <pqcrystals_dilithium2_lowram_poly_ntt>
c0de2966:	f8dd 2b80 	ldr.w	r2, [sp, #2944]	@ 0xb80
c0de296a:	b2ab      	uxth	r3, r5
c0de296c:	4658      	mov	r0, fp
c0de296e:	4639      	mov	r1, r7
c0de2970:	f7fe fed4 	bl	c0de171c <poly_uniform_pointwise_montgomery_polywadd_lowram_eth>
c0de2974:	3501      	adds	r5, #1
c0de2976:	f50a 7a10 	add.w	sl, sl, #576	@ 0x240
c0de297a:	e7e3      	b.n	c0de2944 <pqcrystals_dilithium2_lowram_verify+0x128>
c0de297c:	4638      	mov	r0, r7
c0de297e:	4659      	mov	r1, fp
c0de2980:	f7fe fe2f 	bl	c0de15e2 <polyw_unpack>
c0de2984:	4638      	mov	r0, r7
c0de2986:	f7ff f937 	bl	c0de1bf8 <pqcrystals_dilithium2_lowram_poly_reduce>
c0de298a:	4638      	mov	r0, r7
c0de298c:	f7ff f963 	bl	c0de1c56 <pqcrystals_dilithium2_lowram_poly_invntt_tomont>
c0de2990:	4658      	mov	r0, fp
c0de2992:	4639      	mov	r1, r7
c0de2994:	f7fe fe07 	bl	c0de15a6 <polyw_pack>
c0de2998:	f8dd a008 	ldr.w	sl, [sp, #8]
c0de299c:	9901      	ldr	r1, [sp, #4]
c0de299e:	eb0a 008a 	add.w	r0, sl, sl, lsl #2
c0de29a2:	eb01 1280 	add.w	r2, r1, r0, lsl #6
c0de29a6:	4638      	mov	r0, r7
c0de29a8:	f50d 6182 	add.w	r1, sp, #1040	@ 0x410
c0de29ac:	f7fe fd54 	bl	c0de1458 <poly_schoolbook_t1>
c0de29b0:	4638      	mov	r0, r7
c0de29b2:	4659      	mov	r1, fp
c0de29b4:	463a      	mov	r2, r7
c0de29b6:	f7fe fe2c 	bl	c0de1612 <polyw_sub>
c0de29ba:	4638      	mov	r0, r7
c0de29bc:	f7ff f91c 	bl	c0de1bf8 <pqcrystals_dilithium2_lowram_poly_reduce>
c0de29c0:	4638      	mov	r0, r7
c0de29c2:	f7ff f928 	bl	c0de1c16 <pqcrystals_dilithium2_lowram_poly_caddq>
c0de29c6:	ad04      	add	r5, sp, #16
c0de29c8:	f60d 3154 	addw	r1, sp, #2900	@ 0xb54
c0de29cc:	4652      	mov	r2, sl
c0de29ce:	4623      	mov	r3, r4
c0de29d0:	4628      	mov	r0, r5
c0de29d2:	f7fe ffbb 	bl	c0de194c <unpack_sig_h_indices>
c0de29d6:	b9b8      	cbnz	r0, c0de2a08 <pqcrystals_dilithium2_lowram_verify+0x1ec>
c0de29d8:	f8dd 3b54 	ldr.w	r3, [sp, #2900]	@ 0xb54
c0de29dc:	4638      	mov	r0, r7
c0de29de:	4639      	mov	r1, r7
c0de29e0:	462a      	mov	r2, r5
c0de29e2:	f7fe fff1 	bl	c0de19c8 <poly_use_hint_lowram>
c0de29e6:	4658      	mov	r0, fp
c0de29e8:	4639      	mov	r1, r7
c0de29ea:	f7ff fbcb 	bl	c0de2184 <pqcrystals_dilithium2_lowram_polyw1_pack>
c0de29ee:	a884      	add	r0, sp, #528	@ 0x210
c0de29f0:	4659      	mov	r1, fp
c0de29f2:	22c0      	movs	r2, #192	@ 0xc0
c0de29f4:	f7fe fb35 	bl	c0de1062 <inner_keccak256_inject>
c0de29f8:	9803      	ldr	r0, [sp, #12]
c0de29fa:	9d00      	ldr	r5, [sp, #0]
c0de29fc:	f10a 0a01 	add.w	sl, sl, #1
c0de2a00:	f500 7080 	add.w	r0, r0, #256	@ 0x100
c0de2a04:	9003      	str	r0, [sp, #12]
c0de2a06:	e776      	b.n	c0de28f6 <pqcrystals_dilithium2_lowram_verify+0xda>
c0de2a08:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de2a0c:	f60d 3d58 	addw	sp, sp, #2904	@ 0xb58
c0de2a10:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2a14:	ae84      	add	r6, sp, #528	@ 0x210
c0de2a16:	4630      	mov	r0, r6
c0de2a18:	f7fe fb35 	bl	c0de1086 <inner_keccak256_flip>
c0de2a1c:	ad04      	add	r5, sp, #16
c0de2a1e:	4630      	mov	r0, r6
c0de2a20:	2220      	movs	r2, #32
c0de2a22:	4629      	mov	r1, r5
c0de2a24:	f7fe fb45 	bl	c0de10b2 <inner_keccak256_extract>
c0de2a28:	2100      	movs	r1, #0
c0de2a2a:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de2a2e:	2920      	cmp	r1, #32
c0de2a30:	d005      	beq.n	c0de2a3e <pqcrystals_dilithium2_lowram_verify+0x222>
c0de2a32:	5c6a      	ldrb	r2, [r5, r1]
c0de2a34:	5c63      	ldrb	r3, [r4, r1]
c0de2a36:	3101      	adds	r1, #1
c0de2a38:	4293      	cmp	r3, r2
c0de2a3a:	d0f8      	beq.n	c0de2a2e <pqcrystals_dilithium2_lowram_verify+0x212>
c0de2a3c:	e7e6      	b.n	c0de2a0c <pqcrystals_dilithium2_lowram_verify+0x1f0>
c0de2a3e:	2000      	movs	r0, #0
c0de2a40:	e7e4      	b.n	c0de2a0c <pqcrystals_dilithium2_lowram_verify+0x1f0>
c0de2a42:	bf00      	nop
c0de2a44:	0001ffb2 	.word	0x0001ffb2
c0de2a48:	ffffe7f1 	.word	0xffffe7f1
c0de2a4c:	ffffe805 	.word	0xffffe805

c0de2a50 <pqcrystals_dilithium2_lowram_open>:
c0de2a50:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de2a52:	4604      	mov	r4, r0
c0de2a54:	f640 1074 	movw	r0, #2420	@ 0x974
c0de2a58:	461d      	mov	r5, r3
c0de2a5a:	460e      	mov	r6, r1
c0de2a5c:	4283      	cmp	r3, r0
c0de2a5e:	d311      	bcc.n	c0de2a84 <pqcrystals_dilithium2_lowram_open+0x34>
c0de2a60:	e9dd 7108 	ldrd	r7, r1, [sp, #32]
c0de2a64:	f6a5 1374 	subw	r3, r5, #2420	@ 0x974
c0de2a68:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de2a6a:	6033      	str	r3, [r6, #0]
c0de2a6c:	e9cd 7100 	strd	r7, r1, [sp]
c0de2a70:	f602 1774 	addw	r7, r2, #2420	@ 0x974
c0de2a74:	9002      	str	r0, [sp, #8]
c0de2a76:	4610      	mov	r0, r2
c0de2a78:	f640 1174 	movw	r1, #2420	@ 0x974
c0de2a7c:	463a      	mov	r2, r7
c0de2a7e:	f7ff fecd 	bl	c0de281c <pqcrystals_dilithium2_lowram_verify>
c0de2a82:	b148      	cbz	r0, c0de2a98 <pqcrystals_dilithium2_lowram_open+0x48>
c0de2a84:	2000      	movs	r0, #0
c0de2a86:	6030      	str	r0, [r6, #0]
c0de2a88:	b11d      	cbz	r5, c0de2a92 <pqcrystals_dilithium2_lowram_open+0x42>
c0de2a8a:	f804 0b01 	strb.w	r0, [r4], #1
c0de2a8e:	3d01      	subs	r5, #1
c0de2a90:	e7fa      	b.n	c0de2a88 <pqcrystals_dilithium2_lowram_open+0x38>
c0de2a92:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de2a96:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de2a98:	2000      	movs	r0, #0
c0de2a9a:	6831      	ldr	r1, [r6, #0]
c0de2a9c:	4288      	cmp	r0, r1
c0de2a9e:	bf24      	itt	cs
c0de2aa0:	2000      	movcs	r0, #0
c0de2aa2:	bdfe      	popcs	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de2aa4:	5c39      	ldrb	r1, [r7, r0]
c0de2aa6:	5421      	strb	r1, [r4, r0]
c0de2aa8:	3001      	adds	r0, #1
c0de2aaa:	e7f6      	b.n	c0de2a9a <pqcrystals_dilithium2_lowram_open+0x4a>

c0de2aac <OUTLINED_FUNCTION_0>:
c0de2aac:	4620      	mov	r0, r4
c0de2aae:	f7fe baea 	b.w	c0de1086 <inner_keccak256_flip>
	...

c0de2ab4 <small_ntt>:
c0de2ab4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2ab8:	491c      	ldr	r1, [pc, #112]	@ (c0de2b2c <small_ntt+0x78>)
c0de2aba:	f04f 0c80 	mov.w	ip, #128	@ 0x80
c0de2abe:	f04f 0e01 	mov.w	lr, #1
c0de2ac2:	f46f 6850 	mvn.w	r8, #3328	@ 0xd00
c0de2ac6:	4479      	add	r1, pc
c0de2ac8:	468a      	mov	sl, r1
c0de2aca:	4917      	ldr	r1, [pc, #92]	@ (c0de2b28 <small_ntt+0x74>)
c0de2acc:	468b      	mov	fp, r1
c0de2ace:	f1bc 0f02 	cmp.w	ip, #2
c0de2ad2:	bf38      	it	cc
c0de2ad4:	e8bd 8df0 	ldmiacc.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2ad8:	2600      	movs	r6, #0
c0de2ada:	2eff      	cmp	r6, #255	@ 0xff
c0de2adc:	d821      	bhi.n	c0de2b22 <small_ntt+0x6e>
c0de2ade:	4651      	mov	r1, sl
c0de2ae0:	f93a 301e 	ldrsh.w	r3, [sl, lr, lsl #1]
c0de2ae4:	eb06 010c 	add.w	r1, r6, ip
c0de2ae8:	460f      	mov	r7, r1
c0de2aea:	428e      	cmp	r6, r1
c0de2aec:	d215      	bcs.n	c0de2b1a <small_ntt+0x66>
c0de2aee:	f930 2017 	ldrsh.w	r2, [r0, r7, lsl #1]
c0de2af2:	465c      	mov	r4, fp
c0de2af4:	435a      	muls	r2, r3
c0de2af6:	fb02 f40b 	mul.w	r4, r2, fp
c0de2afa:	1424      	asrs	r4, r4, #16
c0de2afc:	fb04 2208 	mla	r2, r4, r8, r2
c0de2b00:	f830 4016 	ldrh.w	r4, [r0, r6, lsl #1]
c0de2b04:	eba4 4512 	sub.w	r5, r4, r2, lsr #16
c0de2b08:	eb04 4212 	add.w	r2, r4, r2, lsr #16
c0de2b0c:	f820 5017 	strh.w	r5, [r0, r7, lsl #1]
c0de2b10:	f820 2016 	strh.w	r2, [r0, r6, lsl #1]
c0de2b14:	3701      	adds	r7, #1
c0de2b16:	3601      	adds	r6, #1
c0de2b18:	e7e7      	b.n	c0de2aea <small_ntt+0x36>
c0de2b1a:	f10e 0e01 	add.w	lr, lr, #1
c0de2b1e:	463e      	mov	r6, r7
c0de2b20:	e7db      	b.n	c0de2ada <small_ntt+0x26>
c0de2b22:	ea4f 0c5c 	mov.w	ip, ip, lsr #1
c0de2b26:	e7d2      	b.n	c0de2ace <small_ntt+0x1a>
c0de2b28:	f3010000 	.word	0xf3010000
c0de2b2c:	0000a2ea 	.word	0x0000a2ea

c0de2b30 <small_invntt_tomont>:
c0de2b30:	e92d 4dfe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2b34:	4934      	ldr	r1, [pc, #208]	@ (c0de2c08 <small_invntt_tomont+0xd8>)
c0de2b36:	4b36      	ldr	r3, [pc, #216]	@ (c0de2c10 <small_invntt_tomont+0xe0>)
c0de2b38:	2202      	movs	r2, #2
c0de2b3a:	247f      	movs	r4, #127	@ 0x7f
c0de2b3c:	f644 68bf 	movw	r8, #20159	@ 0x4ebf
c0de2b40:	f46f 6a50 	mvn.w	sl, #3328	@ 0xd00
c0de2b44:	468e      	mov	lr, r1
c0de2b46:	4931      	ldr	r1, [pc, #196]	@ (c0de2c0c <small_invntt_tomont+0xdc>)
c0de2b48:	447b      	add	r3, pc
c0de2b4a:	9300      	str	r3, [sp, #0]
c0de2b4c:	f101 5bd3 	add.w	fp, r1, #442499072	@ 0x1a600000
c0de2b50:	2a80      	cmp	r2, #128	@ 0x80
c0de2b52:	d834      	bhi.n	c0de2bbe <small_invntt_tomont+0x8e>
c0de2b54:	2300      	movs	r3, #0
c0de2b56:	9201      	str	r2, [sp, #4]
c0de2b58:	2bff      	cmp	r3, #255	@ 0xff
c0de2b5a:	d82e      	bhi.n	c0de2bba <small_invntt_tomont+0x8a>
c0de2b5c:	9900      	ldr	r1, [sp, #0]
c0de2b5e:	9402      	str	r4, [sp, #8]
c0de2b60:	f931 4014 	ldrsh.w	r4, [r1, r4, lsl #1]
c0de2b64:	1899      	adds	r1, r3, r2
c0de2b66:	460d      	mov	r5, r1
c0de2b68:	428b      	cmp	r3, r1
c0de2b6a:	d221      	bcs.n	c0de2bb0 <small_invntt_tomont+0x80>
c0de2b6c:	f830 6013 	ldrh.w	r6, [r0, r3, lsl #1]
c0de2b70:	f830 2015 	ldrh.w	r2, [r0, r5, lsl #1]
c0de2b74:	46f4      	mov	ip, lr
c0de2b76:	4432      	add	r2, r6
c0de2b78:	b217      	sxth	r7, r2
c0de2b7a:	fb07 f708 	mul.w	r7, r7, r8
c0de2b7e:	f107 7700 	add.w	r7, r7, #33554432	@ 0x2000000
c0de2b82:	16bf      	asrs	r7, r7, #26
c0de2b84:	fb07 f70e 	mul.w	r7, r7, lr
c0de2b88:	eba2 4217 	sub.w	r2, r2, r7, lsr #16
c0de2b8c:	f820 2013 	strh.w	r2, [r0, r3, lsl #1]
c0de2b90:	3301      	adds	r3, #1
c0de2b92:	f830 2015 	ldrh.w	r2, [r0, r5, lsl #1]
c0de2b96:	1b92      	subs	r2, r2, r6
c0de2b98:	b212      	sxth	r2, r2
c0de2b9a:	4362      	muls	r2, r4
c0de2b9c:	fb02 f60b 	mul.w	r6, r2, fp
c0de2ba0:	1436      	asrs	r6, r6, #16
c0de2ba2:	fb06 220a 	mla	r2, r6, sl, r2
c0de2ba6:	0c12      	lsrs	r2, r2, #16
c0de2ba8:	f820 2015 	strh.w	r2, [r0, r5, lsl #1]
c0de2bac:	3501      	adds	r5, #1
c0de2bae:	e7db      	b.n	c0de2b68 <small_invntt_tomont+0x38>
c0de2bb0:	9c02      	ldr	r4, [sp, #8]
c0de2bb2:	9a01      	ldr	r2, [sp, #4]
c0de2bb4:	462b      	mov	r3, r5
c0de2bb6:	3c01      	subs	r4, #1
c0de2bb8:	e7ce      	b.n	c0de2b58 <small_invntt_tomont+0x28>
c0de2bba:	0052      	lsls	r2, r2, #1
c0de2bbc:	e7c8      	b.n	c0de2b50 <small_invntt_tomont+0x20>
c0de2bbe:	2100      	movs	r1, #0
c0de2bc0:	f240 52a1 	movw	r2, #1441	@ 0x5a1
c0de2bc4:	f46f 6350 	mvn.w	r3, #3328	@ 0xd00
c0de2bc8:	f644 64bf 	movw	r4, #20159	@ 0x4ebf
c0de2bcc:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de2bd0:	bf08      	it	eq
c0de2bd2:	e8bd 8dfe 	ldmiaeq.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de2bd6:	f930 5011 	ldrsh.w	r5, [r0, r1, lsl #1]
c0de2bda:	4f0c      	ldr	r7, [pc, #48]	@ (c0de2c0c <small_invntt_tomont+0xdc>)
c0de2bdc:	fb05 f602 	mul.w	r6, r5, r2
c0de2be0:	437d      	muls	r5, r7
c0de2be2:	4677      	mov	r7, lr
c0de2be4:	142d      	asrs	r5, r5, #16
c0de2be6:	fb05 6503 	mla	r5, r5, r3, r6
c0de2bea:	142e      	asrs	r6, r5, #16
c0de2bec:	0c2d      	lsrs	r5, r5, #16
c0de2bee:	4366      	muls	r6, r4
c0de2bf0:	f106 7600 	add.w	r6, r6, #33554432	@ 0x2000000
c0de2bf4:	16b6      	asrs	r6, r6, #26
c0de2bf6:	fb06 f60e 	mul.w	r6, r6, lr
c0de2bfa:	eba5 4516 	sub.w	r5, r5, r6, lsr #16
c0de2bfe:	f820 5011 	strh.w	r5, [r0, r1, lsl #1]
c0de2c02:	3101      	adds	r1, #1
c0de2c04:	e7e2      	b.n	c0de2bcc <small_invntt_tomont+0x9c>
c0de2c06:	bf00      	nop
c0de2c08:	0d010000 	.word	0x0d010000
c0de2c0c:	d8a10000 	.word	0xd8a10000
c0de2c10:	0000a268 	.word	0x0000a268

c0de2c14 <small_basemul>:
c0de2c14:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de2c16:	f9b1 c000 	ldrsh.w	ip, [r1]
c0de2c1a:	f9b1 5002 	ldrsh.w	r5, [r1, #2]
c0de2c1e:	f9b2 1002 	ldrsh.w	r1, [r2, #2]
c0de2c22:	f46f 6e50 	mvn.w	lr, #3328	@ 0xd00
c0de2c26:	f9b2 6000 	ldrsh.w	r6, [r2]
c0de2c2a:	fb01 f705 	mul.w	r7, r1, r5
c0de2c2e:	4916      	ldr	r1, [pc, #88]	@ (c0de2c88 <small_basemul+0x74>)
c0de2c30:	fb07 f401 	mul.w	r4, r7, r1
c0de2c34:	1424      	asrs	r4, r4, #16
c0de2c36:	fb04 740e 	mla	r4, r4, lr, r7
c0de2c3a:	1424      	asrs	r4, r4, #16
c0de2c3c:	4363      	muls	r3, r4
c0de2c3e:	fb03 f401 	mul.w	r4, r3, r1
c0de2c42:	1424      	asrs	r4, r4, #16
c0de2c44:	fb04 330e 	mla	r3, r4, lr, r3
c0de2c48:	fb06 f40c 	mul.w	r4, r6, ip
c0de2c4c:	fb04 f701 	mul.w	r7, r4, r1
c0de2c50:	143f      	asrs	r7, r7, #16
c0de2c52:	0c1b      	lsrs	r3, r3, #16
c0de2c54:	fb07 440e 	mla	r4, r7, lr, r4
c0de2c58:	eb03 4314 	add.w	r3, r3, r4, lsr #16
c0de2c5c:	8003      	strh	r3, [r0, #0]
c0de2c5e:	fb06 f305 	mul.w	r3, r6, r5
c0de2c62:	f9b2 2002 	ldrsh.w	r2, [r2, #2]
c0de2c66:	fb03 f401 	mul.w	r4, r3, r1
c0de2c6a:	1424      	asrs	r4, r4, #16
c0de2c6c:	fb02 f20c 	mul.w	r2, r2, ip
c0de2c70:	fb04 330e 	mla	r3, r4, lr, r3
c0de2c74:	4351      	muls	r1, r2
c0de2c76:	1409      	asrs	r1, r1, #16
c0de2c78:	fb01 210e 	mla	r1, r1, lr, r2
c0de2c7c:	0c09      	lsrs	r1, r1, #16
c0de2c7e:	eb01 4113 	add.w	r1, r1, r3, lsr #16
c0de2c82:	8041      	strh	r1, [r0, #2]
c0de2c84:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de2c86:	bf00      	nop
c0de2c88:	f3010000 	.word	0xf3010000

c0de2c8c <poly_small_ntt_copy>:
c0de2c8c:	22ff      	movs	r2, #255	@ 0xff
c0de2c8e:	f1b2 3fff 	cmp.w	r2, #4294967295	@ 0xffffffff
c0de2c92:	bfd8      	it	le
c0de2c94:	f7ff bf0e 	ble.w	c0de2ab4 <small_ntt>
c0de2c98:	f851 3022 	ldr.w	r3, [r1, r2, lsl #2]
c0de2c9c:	f820 3012 	strh.w	r3, [r0, r2, lsl #1]
c0de2ca0:	3a01      	subs	r2, #1
c0de2ca2:	e7f4      	b.n	c0de2c8e <poly_small_ntt_copy+0x2>

c0de2ca4 <poly_small_basemul>:
c0de2ca4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2ca8:	e9cd 1200 	strd	r1, r2, [sp]
c0de2cac:	4683      	mov	fp, r0
c0de2cae:	f04f 0a00 	mov.w	sl, #0
c0de2cb2:	4811      	ldr	r0, [pc, #68]	@ (c0de2cf8 <poly_small_basemul+0x54>)
c0de2cb4:	4478      	add	r0, pc
c0de2cb6:	f100 0880 	add.w	r8, r0, #128	@ 0x80
c0de2cba:	f5ba 7f00 	cmp.w	sl, #512	@ 0x200
c0de2cbe:	bf08      	it	eq
c0de2cc0:	e8bd 8dfc 	ldmiaeq.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de2cc4:	9800      	ldr	r0, [sp, #0]
c0de2cc6:	f938 6b02 	ldrsh.w	r6, [r8], #2
c0de2cca:	eb0b 070a 	add.w	r7, fp, sl
c0de2cce:	eb00 040a 	add.w	r4, r0, sl
c0de2cd2:	9801      	ldr	r0, [sp, #4]
c0de2cd4:	4633      	mov	r3, r6
c0de2cd6:	4621      	mov	r1, r4
c0de2cd8:	eb00 050a 	add.w	r5, r0, sl
c0de2cdc:	4638      	mov	r0, r7
c0de2cde:	462a      	mov	r2, r5
c0de2ce0:	f7ff ff98 	bl	c0de2c14 <small_basemul>
c0de2ce4:	4273      	negs	r3, r6
c0de2ce6:	1d38      	adds	r0, r7, #4
c0de2ce8:	1d21      	adds	r1, r4, #4
c0de2cea:	1d2a      	adds	r2, r5, #4
c0de2cec:	b21b      	sxth	r3, r3
c0de2cee:	f7ff ff91 	bl	c0de2c14 <small_basemul>
c0de2cf2:	f10a 0a08 	add.w	sl, sl, #8
c0de2cf6:	e7e0      	b.n	c0de2cba <poly_small_basemul+0x16>
c0de2cf8:	0000a0fc 	.word	0x0000a0fc

c0de2cfc <poly_small_basemul_invntt>:
c0de2cfc:	b510      	push	{r4, lr}
c0de2cfe:	4604      	mov	r4, r0
c0de2d00:	f7ff ffd0 	bl	c0de2ca4 <poly_small_basemul>
c0de2d04:	4620      	mov	r0, r4
c0de2d06:	f7ff ff13 	bl	c0de2b30 <small_invntt_tomont>
c0de2d0a:	20ff      	movs	r0, #255	@ 0xff
c0de2d0c:	2800      	cmp	r0, #0
c0de2d0e:	d405      	bmi.n	c0de2d1c <poly_small_basemul_invntt+0x20>
c0de2d10:	f934 1010 	ldrsh.w	r1, [r4, r0, lsl #1]
c0de2d14:	f844 1020 	str.w	r1, [r4, r0, lsl #2]
c0de2d18:	3801      	subs	r0, #1
c0de2d1a:	e7f7      	b.n	c0de2d0c <poly_small_basemul_invntt+0x10>
c0de2d1c:	bd10      	pop	{r4, pc}

c0de2d1e <small_polyeta_unpack>:
c0de2d1e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2d22:	3101      	adds	r1, #1
c0de2d24:	f04f 0c00 	mov.w	ip, #0
c0de2d28:	f5bc 7f00 	cmp.w	ip, #512	@ 0x200
c0de2d2c:	bf08      	it	eq
c0de2d2e:	e8bd 8df0 	ldmiaeq.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2d32:	f811 4c01 	ldrb.w	r4, [r1, #-1]
c0de2d36:	f004 0807 	and.w	r8, r4, #7
c0de2d3a:	eb00 040c 	add.w	r4, r0, ip
c0de2d3e:	f820 800c 	strh.w	r8, [r0, ip]
c0de2d42:	f1c8 0202 	rsb	r2, r8, #2
c0de2d46:	f811 5c01 	ldrb.w	r5, [r1, #-1]
c0de2d4a:	f3c5 0ec2 	ubfx	lr, r5, #3, #3
c0de2d4e:	f8a4 e002 	strh.w	lr, [r4, #2]
c0de2d52:	f811 6c01 	ldrb.w	r6, [r1, #-1]
c0de2d56:	780b      	ldrb	r3, [r1, #0]
c0de2d58:	09b6      	lsrs	r6, r6, #6
c0de2d5a:	f363 0682 	bfi	r6, r3, #2, #1
c0de2d5e:	80a6      	strh	r6, [r4, #4]
c0de2d60:	780b      	ldrb	r3, [r1, #0]
c0de2d62:	f3c3 0a42 	ubfx	sl, r3, #1, #3
c0de2d66:	f8a4 a006 	strh.w	sl, [r4, #6]
c0de2d6a:	780d      	ldrb	r5, [r1, #0]
c0de2d6c:	f3c5 1502 	ubfx	r5, r5, #4, #3
c0de2d70:	8125      	strh	r5, [r4, #8]
c0de2d72:	780f      	ldrb	r7, [r1, #0]
c0de2d74:	784b      	ldrb	r3, [r1, #1]
c0de2d76:	09ff      	lsrs	r7, r7, #7
c0de2d78:	f363 0742 	bfi	r7, r3, #1, #2
c0de2d7c:	8167      	strh	r7, [r4, #10]
c0de2d7e:	784b      	ldrb	r3, [r1, #1]
c0de2d80:	f3c3 0382 	ubfx	r3, r3, #2, #3
c0de2d84:	81a3      	strh	r3, [r4, #12]
c0de2d86:	f891 b001 	ldrb.w	fp, [r1, #1]
c0de2d8a:	f820 200c 	strh.w	r2, [r0, ip]
c0de2d8e:	f1c3 0202 	rsb	r2, r3, #2
c0de2d92:	3103      	adds	r1, #3
c0de2d94:	f10c 0c10 	add.w	ip, ip, #16
c0de2d98:	81a2      	strh	r2, [r4, #12]
c0de2d9a:	f1c7 0202 	rsb	r2, r7, #2
c0de2d9e:	8162      	strh	r2, [r4, #10]
c0de2da0:	f1c5 0202 	rsb	r2, r5, #2
c0de2da4:	8122      	strh	r2, [r4, #8]
c0de2da6:	f1ca 0202 	rsb	r2, sl, #2
c0de2daa:	80e2      	strh	r2, [r4, #6]
c0de2dac:	f1c6 0202 	rsb	r2, r6, #2
c0de2db0:	80a2      	strh	r2, [r4, #4]
c0de2db2:	f1ce 0202 	rsb	r2, lr, #2
c0de2db6:	8062      	strh	r2, [r4, #2]
c0de2db8:	2202      	movs	r2, #2
c0de2dba:	eba2 125b 	sub.w	r2, r2, fp, lsr #5
c0de2dbe:	81e2      	strh	r2, [r4, #14]
c0de2dc0:	e7b2      	b.n	c0de2d28 <small_polyeta_unpack+0xa>

c0de2dc2 <tEdwards_alloc>:
c0de2dc2:	b5b0      	push	{r4, r5, r7, lr}
c0de2dc4:	f000 fbbf 	bl	c0de3546 <OUTLINED_FUNCTION_4>
c0de2dc8:	b920      	cbnz	r0, c0de2dd4 <tEdwards_alloc+0x12>
c0de2dca:	6821      	ldr	r1, [r4, #0]
c0de2dcc:	1d28      	adds	r0, r5, #4
c0de2dce:	f007 ff75 	bl	c0deacbc <cx_bn_alloc>
c0de2dd2:	b100      	cbz	r0, c0de2dd6 <tEdwards_alloc+0x14>
c0de2dd4:	bdb0      	pop	{r4, r5, r7, pc}
c0de2dd6:	6821      	ldr	r1, [r4, #0]
c0de2dd8:	f105 0008 	add.w	r0, r5, #8
c0de2ddc:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2de0:	f007 bf6c 	b.w	c0deacbc <cx_bn_alloc>

c0de2de4 <tEdwards_double>:
c0de2de4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2de6:	460f      	mov	r7, r1
c0de2de8:	4614      	mov	r4, r2
c0de2dea:	4605      	mov	r5, r0
c0de2dec:	6843      	ldr	r3, [r0, #4]
c0de2dee:	6809      	ldr	r1, [r1, #0]
c0de2df0:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de2df2:	687a      	ldr	r2, [r7, #4]
c0de2df4:	f007 ffd0 	bl	c0dead98 <cx_bn_mod_add>
c0de2df8:	2800      	cmp	r0, #0
c0de2dfa:	d154      	bne.n	c0de2ea6 <tEdwards_double+0xc2>
c0de2dfc:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de2e00:	f105 0620 	add.w	r6, r5, #32
c0de2e04:	f000 fb96 	bl	c0de3534 <OUTLINED_FUNCTION_2>
c0de2e08:	2800      	cmp	r0, #0
c0de2e0a:	d14c      	bne.n	c0de2ea6 <tEdwards_double+0xc2>
c0de2e0c:	6839      	ldr	r1, [r7, #0]
c0de2e0e:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2e10:	f000 fb90 	bl	c0de3534 <OUTLINED_FUNCTION_2>
c0de2e14:	2800      	cmp	r0, #0
c0de2e16:	d146      	bne.n	c0de2ea6 <tEdwards_double+0xc2>
c0de2e18:	6879      	ldr	r1, [r7, #4]
c0de2e1a:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2e1c:	f000 fb8a 	bl	c0de3534 <OUTLINED_FUNCTION_2>
c0de2e20:	2800      	cmp	r0, #0
c0de2e22:	d140      	bne.n	c0de2ea6 <tEdwards_double+0xc2>
c0de2e24:	69a9      	ldr	r1, [r5, #24]
c0de2e26:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2e28:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de2e2a:	f000 fb7d 	bl	c0de3528 <OUTLINED_FUNCTION_0>
c0de2e2e:	bbd0      	cbnz	r0, c0de2ea6 <tEdwards_double+0xc2>
c0de2e30:	686b      	ldr	r3, [r5, #4]
c0de2e32:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de2e36:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de2e38:	f007 ffae 	bl	c0dead98 <cx_bn_mod_add>
c0de2e3c:	bb98      	cbnz	r0, c0de2ea6 <tEdwards_double+0xc2>
c0de2e3e:	68b9      	ldr	r1, [r7, #8]
c0de2e40:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de2e42:	f000 fb77 	bl	c0de3534 <OUTLINED_FUNCTION_2>
c0de2e46:	bb70      	cbnz	r0, c0de2ea6 <tEdwards_double+0xc2>
c0de2e48:	686b      	ldr	r3, [r5, #4]
c0de2e4a:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2e4c:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2e4e:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de2e50:	f007 ffae 	bl	c0deadb0 <cx_bn_mod_sub>
c0de2e54:	bb38      	cbnz	r0, c0de2ea6 <tEdwards_double+0xc2>
c0de2e56:	686b      	ldr	r3, [r5, #4]
c0de2e58:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2e5a:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de2e5e:	f007 ffa7 	bl	c0deadb0 <cx_bn_mod_sub>
c0de2e62:	bb00      	cbnz	r0, c0de2ea6 <tEdwards_double+0xc2>
c0de2e64:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de2e68:	686b      	ldr	r3, [r5, #4]
c0de2e6a:	ca07      	ldmia	r2, {r0, r1, r2}
c0de2e6c:	f007 ffa0 	bl	c0deadb0 <cx_bn_mod_sub>
c0de2e70:	b9c8      	cbnz	r0, c0de2ea6 <tEdwards_double+0xc2>
c0de2e72:	686b      	ldr	r3, [r5, #4]
c0de2e74:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2e78:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de2e7a:	f007 ff99 	bl	c0deadb0 <cx_bn_mod_sub>
c0de2e7e:	b990      	cbnz	r0, c0de2ea6 <tEdwards_double+0xc2>
c0de2e80:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2e82:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de2e84:	6820      	ldr	r0, [r4, #0]
c0de2e86:	f000 fb4f 	bl	c0de3528 <OUTLINED_FUNCTION_0>
c0de2e8a:	b960      	cbnz	r0, c0de2ea6 <tEdwards_double+0xc2>
c0de2e8c:	686b      	ldr	r3, [r5, #4]
c0de2e8e:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de2e92:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de2e94:	f007 ff8c 	bl	c0deadb0 <cx_bn_mod_sub>
c0de2e98:	b928      	cbnz	r0, c0de2ea6 <tEdwards_double+0xc2>
c0de2e9a:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de2e9c:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2e9e:	6860      	ldr	r0, [r4, #4]
c0de2ea0:	f000 fb42 	bl	c0de3528 <OUTLINED_FUNCTION_0>
c0de2ea4:	b100      	cbz	r0, c0de2ea8 <tEdwards_double+0xc4>
c0de2ea6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2ea8:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de2eaa:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de2eac:	68a0      	ldr	r0, [r4, #8]
c0de2eae:	4633      	mov	r3, r6
c0de2eb0:	b001      	add	sp, #4
c0de2eb2:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2eb6:	f007 bfbd 	b.w	c0deae34 <cx_mont_mul>

c0de2eba <tEdwards_add>:
c0de2eba:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2ebe:	4606      	mov	r6, r0
c0de2ec0:	4617      	mov	r7, r2
c0de2ec2:	460c      	mov	r4, r1
c0de2ec4:	6892      	ldr	r2, [r2, #8]
c0de2ec6:	6889      	ldr	r1, [r1, #8]
c0de2ec8:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2eca:	4698      	mov	r8, r3
c0de2ecc:	f106 0520 	add.w	r5, r6, #32
c0de2ed0:	f000 fb2d 	bl	c0de352e <OUTLINED_FUNCTION_1>
c0de2ed4:	2800      	cmp	r0, #0
c0de2ed6:	d17d      	bne.n	c0de2fd4 <tEdwards_add+0x11a>
c0de2ed8:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2edc:	462b      	mov	r3, r5
c0de2ede:	460a      	mov	r2, r1
c0de2ee0:	f007 ffa8 	bl	c0deae34 <cx_mont_mul>
c0de2ee4:	2800      	cmp	r0, #0
c0de2ee6:	d175      	bne.n	c0de2fd4 <tEdwards_add+0x11a>
c0de2ee8:	683a      	ldr	r2, [r7, #0]
c0de2eea:	6821      	ldr	r1, [r4, #0]
c0de2eec:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de2eee:	f000 fb1e 	bl	c0de352e <OUTLINED_FUNCTION_1>
c0de2ef2:	2800      	cmp	r0, #0
c0de2ef4:	d16e      	bne.n	c0de2fd4 <tEdwards_add+0x11a>
c0de2ef6:	687a      	ldr	r2, [r7, #4]
c0de2ef8:	6861      	ldr	r1, [r4, #4]
c0de2efa:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de2efc:	f000 fb17 	bl	c0de352e <OUTLINED_FUNCTION_1>
c0de2f00:	2800      	cmp	r0, #0
c0de2f02:	d167      	bne.n	c0de2fd4 <tEdwards_add+0x11a>
c0de2f04:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de2f08:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2f0a:	f000 fb10 	bl	c0de352e <OUTLINED_FUNCTION_1>
c0de2f0e:	2800      	cmp	r0, #0
c0de2f10:	d160      	bne.n	c0de2fd4 <tEdwards_add+0x11a>
c0de2f12:	69f2      	ldr	r2, [r6, #28]
c0de2f14:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de2f16:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de2f18:	f000 fb09 	bl	c0de352e <OUTLINED_FUNCTION_1>
c0de2f1c:	2800      	cmp	r0, #0
c0de2f1e:	d159      	bne.n	c0de2fd4 <tEdwards_add+0x11a>
c0de2f20:	6873      	ldr	r3, [r6, #4]
c0de2f22:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2f24:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de2f28:	f007 ff42 	bl	c0deadb0 <cx_bn_mod_sub>
c0de2f2c:	2800      	cmp	r0, #0
c0de2f2e:	d151      	bne.n	c0de2fd4 <tEdwards_add+0x11a>
c0de2f30:	6873      	ldr	r3, [r6, #4]
c0de2f32:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de2f34:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de2f36:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de2f38:	f007 ff2e 	bl	c0dead98 <cx_bn_mod_add>
c0de2f3c:	2800      	cmp	r0, #0
c0de2f3e:	d149      	bne.n	c0de2fd4 <tEdwards_add+0x11a>
c0de2f40:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de2f44:	6873      	ldr	r3, [r6, #4]
c0de2f46:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2f48:	f007 ff26 	bl	c0dead98 <cx_bn_mod_add>
c0de2f4c:	2800      	cmp	r0, #0
c0de2f4e:	d141      	bne.n	c0de2fd4 <tEdwards_add+0x11a>
c0de2f50:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de2f54:	6873      	ldr	r3, [r6, #4]
c0de2f56:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2f58:	f007 ff1e 	bl	c0dead98 <cx_bn_mod_add>
c0de2f5c:	bbd0      	cbnz	r0, c0de2fd4 <tEdwards_add+0x11a>
c0de2f5e:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2f60:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de2f64:	f000 fae3 	bl	c0de352e <OUTLINED_FUNCTION_1>
c0de2f68:	bba0      	cbnz	r0, c0de2fd4 <tEdwards_add+0x11a>
c0de2f6a:	6873      	ldr	r3, [r6, #4]
c0de2f6c:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de2f70:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2f72:	f007 ff1d 	bl	c0deadb0 <cx_bn_mod_sub>
c0de2f76:	bb68      	cbnz	r0, c0de2fd4 <tEdwards_add+0x11a>
c0de2f78:	6873      	ldr	r3, [r6, #4]
c0de2f7a:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de2f7c:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de2f80:	f007 ff16 	bl	c0deadb0 <cx_bn_mod_sub>
c0de2f84:	bb30      	cbnz	r0, c0de2fd4 <tEdwards_add+0x11a>
c0de2f86:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de2f8a:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2f8c:	f000 facf 	bl	c0de352e <OUTLINED_FUNCTION_1>
c0de2f90:	bb00      	cbnz	r0, c0de2fd4 <tEdwards_add+0x11a>
c0de2f92:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2f94:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de2f96:	f8d8 0000 	ldr.w	r0, [r8]
c0de2f9a:	f000 fac8 	bl	c0de352e <OUTLINED_FUNCTION_1>
c0de2f9e:	b9c8      	cbnz	r0, c0de2fd4 <tEdwards_add+0x11a>
c0de2fa0:	69b1      	ldr	r1, [r6, #24]
c0de2fa2:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de2fa6:	f000 fac2 	bl	c0de352e <OUTLINED_FUNCTION_1>
c0de2faa:	b998      	cbnz	r0, c0de2fd4 <tEdwards_add+0x11a>
c0de2fac:	6873      	ldr	r3, [r6, #4]
c0de2fae:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2fb0:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de2fb2:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2fb4:	f007 fefc 	bl	c0deadb0 <cx_bn_mod_sub>
c0de2fb8:	b960      	cbnz	r0, c0de2fd4 <tEdwards_add+0x11a>
c0de2fba:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de2fbc:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de2fbe:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2fc0:	f000 fab5 	bl	c0de352e <OUTLINED_FUNCTION_1>
c0de2fc4:	b930      	cbnz	r0, c0de2fd4 <tEdwards_add+0x11a>
c0de2fc6:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de2fca:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de2fce:	f000 faae 	bl	c0de352e <OUTLINED_FUNCTION_1>
c0de2fd2:	b108      	cbz	r0, c0de2fd8 <tEdwards_add+0x11e>
c0de2fd4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2fd8:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de2fdc:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de2fe0:	462b      	mov	r3, r5
c0de2fe2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2fe6:	f007 bf25 	b.w	c0deae34 <cx_mont_mul>

c0de2fea <tEdwards_IsOnCurve>:
c0de2fea:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2fec:	4605      	mov	r5, r0
c0de2fee:	460f      	mov	r7, r1
c0de2ff0:	2005      	movs	r0, #5
c0de2ff2:	6809      	ldr	r1, [r1, #0]
c0de2ff4:	4614      	mov	r4, r2
c0de2ff6:	9000      	str	r0, [sp, #0]
c0de2ff8:	f105 0620 	add.w	r6, r5, #32
c0de2ffc:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2ffe:	460a      	mov	r2, r1
c0de3000:	f000 fa92 	bl	c0de3528 <OUTLINED_FUNCTION_0>
c0de3004:	b100      	cbz	r0, c0de3008 <tEdwards_IsOnCurve+0x1e>
c0de3006:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de3008:	6879      	ldr	r1, [r7, #4]
c0de300a:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de300c:	f000 fa92 	bl	c0de3534 <OUTLINED_FUNCTION_2>
c0de3010:	2800      	cmp	r0, #0
c0de3012:	d1f8      	bne.n	c0de3006 <tEdwards_IsOnCurve+0x1c>
c0de3014:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de3018:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de301a:	f000 fa85 	bl	c0de3528 <OUTLINED_FUNCTION_0>
c0de301e:	2800      	cmp	r0, #0
c0de3020:	d1f1      	bne.n	c0de3006 <tEdwards_IsOnCurve+0x1c>
c0de3022:	69a9      	ldr	r1, [r5, #24]
c0de3024:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de3026:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de3028:	f000 fa7e 	bl	c0de3528 <OUTLINED_FUNCTION_0>
c0de302c:	2800      	cmp	r0, #0
c0de302e:	d1ea      	bne.n	c0de3006 <tEdwards_IsOnCurve+0x1c>
c0de3030:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de3032:	686b      	ldr	r3, [r5, #4]
c0de3034:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de3036:	4601      	mov	r1, r0
c0de3038:	f007 feae 	bl	c0dead98 <cx_bn_mod_add>
c0de303c:	2800      	cmp	r0, #0
c0de303e:	d1e2      	bne.n	c0de3006 <tEdwards_IsOnCurve+0x1c>
c0de3040:	69e9      	ldr	r1, [r5, #28]
c0de3042:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de3044:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de3046:	f000 fa6f 	bl	c0de3528 <OUTLINED_FUNCTION_0>
c0de304a:	2800      	cmp	r0, #0
c0de304c:	d1db      	bne.n	c0de3006 <tEdwards_IsOnCurve+0x1c>
c0de304e:	686b      	ldr	r3, [r5, #4]
c0de3050:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de3052:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de3054:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de3056:	f007 fe9f 	bl	c0dead98 <cx_bn_mod_add>
c0de305a:	2800      	cmp	r0, #0
c0de305c:	d1d3      	bne.n	c0de3006 <tEdwards_IsOnCurve+0x1c>
c0de305e:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de3060:	4632      	mov	r2, r6
c0de3062:	4601      	mov	r1, r0
c0de3064:	f007 feda 	bl	c0deae1c <cx_mont_from_montgomery>
c0de3068:	2800      	cmp	r0, #0
c0de306a:	d1cc      	bne.n	c0de3006 <tEdwards_IsOnCurve+0x1c>
c0de306c:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de306e:	4632      	mov	r2, r6
c0de3070:	4601      	mov	r1, r0
c0de3072:	f007 fed3 	bl	c0deae1c <cx_mont_from_montgomery>
c0de3076:	2800      	cmp	r0, #0
c0de3078:	d1c5      	bne.n	c0de3006 <tEdwards_IsOnCurve+0x1c>
c0de307a:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de307e:	466a      	mov	r2, sp
c0de3080:	f007 fe66 	bl	c0dead50 <cx_bn_cmp>
c0de3084:	2800      	cmp	r0, #0
c0de3086:	d1be      	bne.n	c0de3006 <tEdwards_IsOnCurve+0x1c>
c0de3088:	9800      	ldr	r0, [sp, #0]
c0de308a:	fab0 f080 	clz	r0, r0
c0de308e:	0940      	lsrs	r0, r0, #5
c0de3090:	7020      	strb	r0, [r4, #0]
c0de3092:	2000      	movs	r0, #0
c0de3094:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de3098 <tEdwards_Curve_alloc_init>:
c0de3098:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de309c:	b0c1      	sub	sp, #260	@ 0x104
c0de309e:	4604      	mov	r4, r0
c0de30a0:	2902      	cmp	r1, #2
c0de30a2:	d01f      	beq.n	c0de30e4 <tEdwards_Curve_alloc_init+0x4c>
c0de30a4:	2901      	cmp	r1, #1
c0de30a6:	f040 80cf 	bne.w	c0de3248 <tEdwards_Curve_alloc_init+0x1b0>
c0de30aa:	2020      	movs	r0, #32
c0de30ac:	2220      	movs	r2, #32
c0de30ae:	6020      	str	r0, [r4, #0]
c0de30b0:	af39      	add	r7, sp, #228	@ 0xe4
c0de30b2:	4968      	ldr	r1, [pc, #416]	@ (c0de3254 <tEdwards_Curve_alloc_init+0x1bc>)
c0de30b4:	4638      	mov	r0, r7
c0de30b6:	4479      	add	r1, pc
c0de30b8:	f008 f933 	bl	c0deb322 <__aeabi_memcpy>
c0de30bc:	4966      	ldr	r1, [pc, #408]	@ (c0de3258 <tEdwards_Curve_alloc_init+0x1c0>)
c0de30be:	f10d 0ac4 	add.w	sl, sp, #196	@ 0xc4
c0de30c2:	2220      	movs	r2, #32
c0de30c4:	4650      	mov	r0, sl
c0de30c6:	4479      	add	r1, pc
c0de30c8:	f008 f92b 	bl	c0deb322 <__aeabi_memcpy>
c0de30cc:	4963      	ldr	r1, [pc, #396]	@ (c0de325c <tEdwards_Curve_alloc_init+0x1c4>)
c0de30ce:	f10d 08a4 	add.w	r8, sp, #164	@ 0xa4
c0de30d2:	2220      	movs	r2, #32
c0de30d4:	4640      	mov	r0, r8
c0de30d6:	4479      	add	r1, pc
c0de30d8:	f008 f923 	bl	c0deb322 <__aeabi_memcpy>
c0de30dc:	ad21      	add	r5, sp, #132	@ 0x84
c0de30de:	4960      	ldr	r1, [pc, #384]	@ (c0de3260 <tEdwards_Curve_alloc_init+0x1c8>)
c0de30e0:	4479      	add	r1, pc
c0de30e2:	e01b      	b.n	c0de311c <tEdwards_Curve_alloc_init+0x84>
c0de30e4:	2020      	movs	r0, #32
c0de30e6:	2220      	movs	r2, #32
c0de30e8:	6020      	str	r0, [r4, #0]
c0de30ea:	af19      	add	r7, sp, #100	@ 0x64
c0de30ec:	495d      	ldr	r1, [pc, #372]	@ (c0de3264 <tEdwards_Curve_alloc_init+0x1cc>)
c0de30ee:	4638      	mov	r0, r7
c0de30f0:	4479      	add	r1, pc
c0de30f2:	f008 f916 	bl	c0deb322 <__aeabi_memcpy>
c0de30f6:	495c      	ldr	r1, [pc, #368]	@ (c0de3268 <tEdwards_Curve_alloc_init+0x1d0>)
c0de30f8:	f10d 0a44 	add.w	sl, sp, #68	@ 0x44
c0de30fc:	2220      	movs	r2, #32
c0de30fe:	4650      	mov	r0, sl
c0de3100:	4479      	add	r1, pc
c0de3102:	f008 f90e 	bl	c0deb322 <__aeabi_memcpy>
c0de3106:	4959      	ldr	r1, [pc, #356]	@ (c0de326c <tEdwards_Curve_alloc_init+0x1d4>)
c0de3108:	f10d 0824 	add.w	r8, sp, #36	@ 0x24
c0de310c:	2220      	movs	r2, #32
c0de310e:	4640      	mov	r0, r8
c0de3110:	4479      	add	r1, pc
c0de3112:	f008 f906 	bl	c0deb322 <__aeabi_memcpy>
c0de3116:	ad01      	add	r5, sp, #4
c0de3118:	4955      	ldr	r1, [pc, #340]	@ (c0de3270 <tEdwards_Curve_alloc_init+0x1d8>)
c0de311a:	4479      	add	r1, pc
c0de311c:	4628      	mov	r0, r5
c0de311e:	2220      	movs	r2, #32
c0de3120:	f008 f8ff 	bl	c0deb322 <__aeabi_memcpy>
c0de3124:	1d26      	adds	r6, r4, #4
c0de3126:	2120      	movs	r1, #32
c0de3128:	463a      	mov	r2, r7
c0de312a:	2320      	movs	r3, #32
c0de312c:	4630      	mov	r0, r6
c0de312e:	f007 fdcf 	bl	c0deacd0 <cx_bn_alloc_init>
c0de3132:	2800      	cmp	r0, #0
c0de3134:	f040 808a 	bne.w	c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de3138:	4620      	mov	r0, r4
c0de313a:	462a      	mov	r2, r5
c0de313c:	f850 1b08 	ldr.w	r1, [r0], #8
c0de3140:	460b      	mov	r3, r1
c0de3142:	f007 fdc5 	bl	c0deacd0 <cx_bn_alloc_init>
c0de3146:	2800      	cmp	r0, #0
c0de3148:	f040 8080 	bne.w	c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de314c:	f104 0720 	add.w	r7, r4, #32
c0de3150:	2120      	movs	r1, #32
c0de3152:	4638      	mov	r0, r7
c0de3154:	f007 fe42 	bl	c0deaddc <cx_mont_alloc>
c0de3158:	2800      	cmp	r0, #0
c0de315a:	d177      	bne.n	c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de315c:	6831      	ldr	r1, [r6, #0]
c0de315e:	4638      	mov	r0, r7
c0de3160:	f007 fe46 	bl	c0deadf0 <cx_mont_init>
c0de3164:	2800      	cmp	r0, #0
c0de3166:	d171      	bne.n	c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de3168:	4625      	mov	r5, r4
c0de316a:	f855 1b28 	ldr.w	r1, [r5], #40
c0de316e:	4628      	mov	r0, r5
c0de3170:	f007 fda4 	bl	c0deacbc <cx_bn_alloc>
c0de3174:	2800      	cmp	r0, #0
c0de3176:	d169      	bne.n	c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de3178:	6828      	ldr	r0, [r5, #0]
c0de317a:	2101      	movs	r1, #1
c0de317c:	f007 fdd2 	bl	c0dead24 <cx_bn_set_u32>
c0de3180:	2800      	cmp	r0, #0
c0de3182:	d163      	bne.n	c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de3184:	f000 f9da 	bl	c0de353c <OUTLINED_FUNCTION_3>
c0de3188:	2800      	cmp	r0, #0
c0de318a:	d15f      	bne.n	c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de318c:	f104 050c 	add.w	r5, r4, #12
c0de3190:	4620      	mov	r0, r4
c0de3192:	4629      	mov	r1, r5
c0de3194:	f7ff fe15 	bl	c0de2dc2 <tEdwards_alloc>
c0de3198:	2800      	cmp	r0, #0
c0de319a:	d157      	bne.n	c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de319c:	4620      	mov	r0, r4
c0de319e:	4629      	mov	r1, r5
c0de31a0:	f000 f868 	bl	c0de3274 <tEdwards_SetNeutral>
c0de31a4:	2800      	cmp	r0, #0
c0de31a6:	d151      	bne.n	c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de31a8:	4625      	mov	r5, r4
c0de31aa:	4652      	mov	r2, sl
c0de31ac:	f855 1b18 	ldr.w	r1, [r5], #24
c0de31b0:	4628      	mov	r0, r5
c0de31b2:	460b      	mov	r3, r1
c0de31b4:	f007 fd8c 	bl	c0deacd0 <cx_bn_alloc_init>
c0de31b8:	2800      	cmp	r0, #0
c0de31ba:	d147      	bne.n	c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de31bc:	f000 f9be 	bl	c0de353c <OUTLINED_FUNCTION_3>
c0de31c0:	2800      	cmp	r0, #0
c0de31c2:	d143      	bne.n	c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de31c4:	4625      	mov	r5, r4
c0de31c6:	4642      	mov	r2, r8
c0de31c8:	f855 1b1c 	ldr.w	r1, [r5], #28
c0de31cc:	4628      	mov	r0, r5
c0de31ce:	460b      	mov	r3, r1
c0de31d0:	f007 fd7e 	bl	c0deacd0 <cx_bn_alloc_init>
c0de31d4:	bbd0      	cbnz	r0, c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de31d6:	f000 f9b1 	bl	c0de353c <OUTLINED_FUNCTION_3>
c0de31da:	bbb8      	cbnz	r0, c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de31dc:	4620      	mov	r0, r4
c0de31de:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de31e2:	f007 fd6b 	bl	c0deacbc <cx_bn_alloc>
c0de31e6:	bb88      	cbnz	r0, c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de31e8:	4620      	mov	r0, r4
c0de31ea:	f850 1b30 	ldr.w	r1, [r0], #48
c0de31ee:	f007 fd65 	bl	c0deacbc <cx_bn_alloc>
c0de31f2:	bb58      	cbnz	r0, c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de31f4:	4620      	mov	r0, r4
c0de31f6:	f850 1b34 	ldr.w	r1, [r0], #52
c0de31fa:	f007 fd5f 	bl	c0deacbc <cx_bn_alloc>
c0de31fe:	bb28      	cbnz	r0, c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de3200:	4620      	mov	r0, r4
c0de3202:	f850 1b38 	ldr.w	r1, [r0], #56
c0de3206:	f007 fd59 	bl	c0deacbc <cx_bn_alloc>
c0de320a:	b9f8      	cbnz	r0, c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de320c:	4620      	mov	r0, r4
c0de320e:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de3212:	f007 fd53 	bl	c0deacbc <cx_bn_alloc>
c0de3216:	b9c8      	cbnz	r0, c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de3218:	4620      	mov	r0, r4
c0de321a:	f850 1b40 	ldr.w	r1, [r0], #64
c0de321e:	f007 fd4d 	bl	c0deacbc <cx_bn_alloc>
c0de3222:	b998      	cbnz	r0, c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de3224:	4620      	mov	r0, r4
c0de3226:	f850 1b44 	ldr.w	r1, [r0], #68
c0de322a:	f007 fd47 	bl	c0deacbc <cx_bn_alloc>
c0de322e:	b968      	cbnz	r0, c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de3230:	4620      	mov	r0, r4
c0de3232:	f850 1b48 	ldr.w	r1, [r0], #72
c0de3236:	f007 fd41 	bl	c0deacbc <cx_bn_alloc>
c0de323a:	b938      	cbnz	r0, c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de323c:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de3240:	4620      	mov	r0, r4
c0de3242:	f007 fd3b 	bl	c0deacbc <cx_bn_alloc>
c0de3246:	e001      	b.n	c0de324c <tEdwards_Curve_alloc_init+0x1b4>
c0de3248:	f648 3099 	movw	r0, #35737	@ 0x8b99
c0de324c:	b041      	add	sp, #260	@ 0x104
c0de324e:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de3252:	bf00      	nop
c0de3254:	00008842 	.word	0x00008842
c0de3258:	00008972 	.word	0x00008972
c0de325c:	00008942 	.word	0x00008942
c0de3260:	00008898 	.word	0x00008898
c0de3264:	00008988 	.word	0x00008988
c0de3268:	000088f8 	.word	0x000088f8
c0de326c:	00008948 	.word	0x00008948
c0de3270:	0000887e 	.word	0x0000887e

c0de3274 <tEdwards_SetNeutral>:
c0de3274:	b5b0      	push	{r4, r5, r7, lr}
c0de3276:	4605      	mov	r5, r0
c0de3278:	6808      	ldr	r0, [r1, #0]
c0de327a:	460c      	mov	r4, r1
c0de327c:	2100      	movs	r1, #0
c0de327e:	f007 fd51 	bl	c0dead24 <cx_bn_set_u32>
c0de3282:	b918      	cbnz	r0, c0de328c <tEdwards_SetNeutral+0x18>
c0de3284:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de3286:	f000 f964 	bl	c0de3552 <OUTLINED_FUNCTION_5>
c0de328a:	b100      	cbz	r0, c0de328e <tEdwards_SetNeutral+0x1a>
c0de328c:	bdb0      	pop	{r4, r5, r7, pc}
c0de328e:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de3290:	68a0      	ldr	r0, [r4, #8]
c0de3292:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3296:	f007 bd3b 	b.w	c0dead10 <cx_bn_copy>

c0de329a <tEdwards_init>:
c0de329a:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de329c:	6806      	ldr	r6, [r0, #0]
c0de329e:	461c      	mov	r4, r3
c0de32a0:	4617      	mov	r7, r2
c0de32a2:	460a      	mov	r2, r1
c0de32a4:	4605      	mov	r5, r0
c0de32a6:	a802      	add	r0, sp, #8
c0de32a8:	4631      	mov	r1, r6
c0de32aa:	4633      	mov	r3, r6
c0de32ac:	f007 fd10 	bl	c0deacd0 <cx_bn_alloc_init>
c0de32b0:	b100      	cbz	r0, c0de32b4 <tEdwards_init+0x1a>
c0de32b2:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de32b4:	a801      	add	r0, sp, #4
c0de32b6:	4631      	mov	r1, r6
c0de32b8:	463a      	mov	r2, r7
c0de32ba:	4633      	mov	r3, r6
c0de32bc:	f007 fd08 	bl	c0deacd0 <cx_bn_alloc_init>
c0de32c0:	2800      	cmp	r0, #0
c0de32c2:	d1f6      	bne.n	c0de32b2 <tEdwards_init+0x18>
c0de32c4:	4668      	mov	r0, sp
c0de32c6:	4631      	mov	r1, r6
c0de32c8:	f007 fcf8 	bl	c0deacbc <cx_bn_alloc>
c0de32cc:	2800      	cmp	r0, #0
c0de32ce:	d1f0      	bne.n	c0de32b2 <tEdwards_init+0x18>
c0de32d0:	f105 0620 	add.w	r6, r5, #32
c0de32d4:	6820      	ldr	r0, [r4, #0]
c0de32d6:	9902      	ldr	r1, [sp, #8]
c0de32d8:	4632      	mov	r2, r6
c0de32da:	f007 fd93 	bl	c0deae04 <cx_mont_to_montgomery>
c0de32de:	2800      	cmp	r0, #0
c0de32e0:	d1e7      	bne.n	c0de32b2 <tEdwards_init+0x18>
c0de32e2:	6860      	ldr	r0, [r4, #4]
c0de32e4:	9901      	ldr	r1, [sp, #4]
c0de32e6:	4632      	mov	r2, r6
c0de32e8:	f007 fd8c 	bl	c0deae04 <cx_mont_to_montgomery>
c0de32ec:	2800      	cmp	r0, #0
c0de32ee:	d1e0      	bne.n	c0de32b2 <tEdwards_init+0x18>
c0de32f0:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de32f2:	68a0      	ldr	r0, [r4, #8]
c0de32f4:	f007 fd0c 	bl	c0dead10 <cx_bn_copy>
c0de32f8:	2800      	cmp	r0, #0
c0de32fa:	d1da      	bne.n	c0de32b2 <tEdwards_init+0x18>
c0de32fc:	a802      	add	r0, sp, #8
c0de32fe:	f007 fcf3 	bl	c0deace8 <cx_bn_destroy>
c0de3302:	2800      	cmp	r0, #0
c0de3304:	d1d5      	bne.n	c0de32b2 <tEdwards_init+0x18>
c0de3306:	a801      	add	r0, sp, #4
c0de3308:	f007 fcee 	bl	c0deace8 <cx_bn_destroy>
c0de330c:	2800      	cmp	r0, #0
c0de330e:	d1d0      	bne.n	c0de32b2 <tEdwards_init+0x18>
c0de3310:	4668      	mov	r0, sp
c0de3312:	f007 fce9 	bl	c0deace8 <cx_bn_destroy>
c0de3316:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de3318 <tEdwards_export>:
c0de3318:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de331c:	4698      	mov	r8, r3
c0de331e:	4616      	mov	r6, r2
c0de3320:	460f      	mov	r7, r1
c0de3322:	4605      	mov	r5, r0
c0de3324:	f000 f81e 	bl	c0de3364 <tEdwards_normalize>
c0de3328:	b998      	cbnz	r0, c0de3352 <tEdwards_export+0x3a>
c0de332a:	f105 0420 	add.w	r4, r5, #32
c0de332e:	6839      	ldr	r1, [r7, #0]
c0de3330:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de3332:	4622      	mov	r2, r4
c0de3334:	f007 fd72 	bl	c0deae1c <cx_mont_from_montgomery>
c0de3338:	b958      	cbnz	r0, c0de3352 <tEdwards_export+0x3a>
c0de333a:	6879      	ldr	r1, [r7, #4]
c0de333c:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de333e:	4622      	mov	r2, r4
c0de3340:	f007 fd6c 	bl	c0deae1c <cx_mont_from_montgomery>
c0de3344:	b928      	cbnz	r0, c0de3352 <tEdwards_export+0x3a>
c0de3346:	682a      	ldr	r2, [r5, #0]
c0de3348:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de334a:	4631      	mov	r1, r6
c0de334c:	f007 fcf4 	bl	c0dead38 <cx_bn_export>
c0de3350:	b108      	cbz	r0, c0de3356 <tEdwards_export+0x3e>
c0de3352:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de3356:	682a      	ldr	r2, [r5, #0]
c0de3358:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de335a:	4641      	mov	r1, r8
c0de335c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de3360:	f007 bcea 	b.w	c0dead38 <cx_bn_export>

c0de3364 <tEdwards_normalize>:
c0de3364:	b570      	push	{r4, r5, r6, lr}
c0de3366:	4605      	mov	r5, r0
c0de3368:	460c      	mov	r4, r1
c0de336a:	6889      	ldr	r1, [r1, #8]
c0de336c:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de336e:	f105 0620 	add.w	r6, r5, #32
c0de3372:	4632      	mov	r2, r6
c0de3374:	f007 fd6a 	bl	c0deae4c <cx_mont_invert_nprime>
c0de3378:	b9d0      	cbnz	r0, c0de33b0 <tEdwards_normalize+0x4c>
c0de337a:	6822      	ldr	r2, [r4, #0]
c0de337c:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de3380:	f000 f8d2 	bl	c0de3528 <OUTLINED_FUNCTION_0>
c0de3384:	b9a0      	cbnz	r0, c0de33b0 <tEdwards_normalize+0x4c>
c0de3386:	6862      	ldr	r2, [r4, #4]
c0de3388:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de338a:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de338c:	f000 f8cc 	bl	c0de3528 <OUTLINED_FUNCTION_0>
c0de3390:	b970      	cbnz	r0, c0de33b0 <tEdwards_normalize+0x4c>
c0de3392:	68a2      	ldr	r2, [r4, #8]
c0de3394:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de3396:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de3398:	f000 f8c6 	bl	c0de3528 <OUTLINED_FUNCTION_0>
c0de339c:	b940      	cbnz	r0, c0de33b0 <tEdwards_normalize+0x4c>
c0de339e:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de33a0:	6820      	ldr	r0, [r4, #0]
c0de33a2:	f007 fcb5 	bl	c0dead10 <cx_bn_copy>
c0de33a6:	b918      	cbnz	r0, c0de33b0 <tEdwards_normalize+0x4c>
c0de33a8:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de33aa:	f000 f8d2 	bl	c0de3552 <OUTLINED_FUNCTION_5>
c0de33ae:	b100      	cbz	r0, c0de33b2 <tEdwards_normalize+0x4e>
c0de33b0:	bd70      	pop	{r4, r5, r6, pc}
c0de33b2:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de33b4:	68a0      	ldr	r0, [r4, #8]
c0de33b6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de33ba:	f007 bca9 	b.w	c0dead10 <cx_bn_copy>

c0de33be <tEdwards_copy>:
c0de33be:	b5b0      	push	{r4, r5, r7, lr}
c0de33c0:	460c      	mov	r4, r1
c0de33c2:	4605      	mov	r5, r0
c0de33c4:	6801      	ldr	r1, [r0, #0]
c0de33c6:	6820      	ldr	r0, [r4, #0]
c0de33c8:	f007 fca2 	bl	c0dead10 <cx_bn_copy>
c0de33cc:	b918      	cbnz	r0, c0de33d6 <tEdwards_copy+0x18>
c0de33ce:	6869      	ldr	r1, [r5, #4]
c0de33d0:	f000 f8bf 	bl	c0de3552 <OUTLINED_FUNCTION_5>
c0de33d4:	b100      	cbz	r0, c0de33d8 <tEdwards_copy+0x1a>
c0de33d6:	bdb0      	pop	{r4, r5, r7, pc}
c0de33d8:	68a9      	ldr	r1, [r5, #8]
c0de33da:	68a0      	ldr	r0, [r4, #8]
c0de33dc:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de33e0:	f007 bc96 	b.w	c0dead10 <cx_bn_copy>

c0de33e4 <tEdwards_alloc_init>:
c0de33e4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de33e6:	460e      	mov	r6, r1
c0de33e8:	6801      	ldr	r1, [r0, #0]
c0de33ea:	4607      	mov	r7, r0
c0de33ec:	4618      	mov	r0, r3
c0de33ee:	461c      	mov	r4, r3
c0de33f0:	4615      	mov	r5, r2
c0de33f2:	f007 fc63 	bl	c0deacbc <cx_bn_alloc>
c0de33f6:	b950      	cbnz	r0, c0de340e <tEdwards_alloc_init+0x2a>
c0de33f8:	6839      	ldr	r1, [r7, #0]
c0de33fa:	1d20      	adds	r0, r4, #4
c0de33fc:	f007 fc5e 	bl	c0deacbc <cx_bn_alloc>
c0de3400:	b928      	cbnz	r0, c0de340e <tEdwards_alloc_init+0x2a>
c0de3402:	6839      	ldr	r1, [r7, #0]
c0de3404:	f104 0008 	add.w	r0, r4, #8
c0de3408:	f007 fc58 	bl	c0deacbc <cx_bn_alloc>
c0de340c:	b100      	cbz	r0, c0de3410 <tEdwards_alloc_init+0x2c>
c0de340e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de3410:	4638      	mov	r0, r7
c0de3412:	4631      	mov	r1, r6
c0de3414:	462a      	mov	r2, r5
c0de3416:	4623      	mov	r3, r4
c0de3418:	b001      	add	sp, #4
c0de341a:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de341e:	f7ff bf3c 	b.w	c0de329a <tEdwards_init>

c0de3422 <tEdwards_scalarMul_bn>:
c0de3422:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de3426:	4607      	mov	r7, r0
c0de3428:	2000      	movs	r0, #0
c0de342a:	4688      	mov	r8, r1
c0de342c:	4615      	mov	r5, r2
c0de342e:	2100      	movs	r1, #0
c0de3430:	469b      	mov	fp, r3
c0de3432:	9003      	str	r0, [sp, #12]
c0de3434:	f88d 000b 	strb.w	r0, [sp, #11]
c0de3438:	6810      	ldr	r0, [r2, #0]
c0de343a:	aa03      	add	r2, sp, #12
c0de343c:	f007 fc94 	bl	c0dead68 <cx_bn_cmp_u32>
c0de3440:	bb38      	cbnz	r0, c0de3492 <tEdwards_scalarMul_bn+0x70>
c0de3442:	9803      	ldr	r0, [sp, #12]
c0de3444:	b1d0      	cbz	r0, c0de347c <tEdwards_scalarMul_bn+0x5a>
c0de3446:	6828      	ldr	r0, [r5, #0]
c0de3448:	a901      	add	r1, sp, #4
c0de344a:	f007 fc57 	bl	c0deacfc <cx_bn_nbytes>
c0de344e:	bb00      	cbnz	r0, c0de3492 <tEdwards_scalarMul_bn+0x70>
c0de3450:	2002      	movs	r0, #2
c0de3452:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de3456:	f10d 040b 	add.w	r4, sp, #11
c0de345a:	6538      	str	r0, [r7, #80]	@ 0x50
c0de345c:	9801      	ldr	r0, [sp, #4]
c0de345e:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de3462:	2000      	movs	r0, #0
c0de3464:	2801      	cmp	r0, #1
c0de3466:	d00f      	beq.n	c0de3488 <tEdwards_scalarMul_bn+0x66>
c0de3468:	6828      	ldr	r0, [r5, #0]
c0de346a:	4631      	mov	r1, r6
c0de346c:	4622      	mov	r2, r4
c0de346e:	f007 fc87 	bl	c0dead80 <cx_bn_tst_bit>
c0de3472:	b970      	cbnz	r0, c0de3492 <tEdwards_scalarMul_bn+0x70>
c0de3474:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de3478:	3e01      	subs	r6, #1
c0de347a:	e7f3      	b.n	c0de3464 <tEdwards_scalarMul_bn+0x42>
c0de347c:	4638      	mov	r0, r7
c0de347e:	4659      	mov	r1, fp
c0de3480:	f7ff fef8 	bl	c0de3274 <tEdwards_SetNeutral>
c0de3484:	b928      	cbnz	r0, c0de3492 <tEdwards_scalarMul_bn+0x70>
c0de3486:	e7de      	b.n	c0de3446 <tEdwards_scalarMul_bn+0x24>
c0de3488:	4640      	mov	r0, r8
c0de348a:	4659      	mov	r1, fp
c0de348c:	f7ff ff97 	bl	c0de33be <tEdwards_copy>
c0de3490:	b110      	cbz	r0, c0de3498 <tEdwards_scalarMul_bn+0x76>
c0de3492:	b004      	add	sp, #16
c0de3494:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3498:	2001      	movs	r0, #1
c0de349a:	f10d 0a0b 	add.w	sl, sp, #11
c0de349e:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de34a2:	2e00      	cmp	r6, #0
c0de34a4:	d420      	bmi.n	c0de34e8 <tEdwards_scalarMul_bn+0xc6>
c0de34a6:	4638      	mov	r0, r7
c0de34a8:	4659      	mov	r1, fp
c0de34aa:	465a      	mov	r2, fp
c0de34ac:	f7ff fc9a 	bl	c0de2de4 <tEdwards_double>
c0de34b0:	2800      	cmp	r0, #0
c0de34b2:	d1ee      	bne.n	c0de3492 <tEdwards_scalarMul_bn+0x70>
c0de34b4:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de34b6:	4631      	mov	r1, r6
c0de34b8:	4652      	mov	r2, sl
c0de34ba:	0040      	lsls	r0, r0, #1
c0de34bc:	6538      	str	r0, [r7, #80]	@ 0x50
c0de34be:	6828      	ldr	r0, [r5, #0]
c0de34c0:	f007 fc5e 	bl	c0dead80 <cx_bn_tst_bit>
c0de34c4:	2800      	cmp	r0, #0
c0de34c6:	d1e4      	bne.n	c0de3492 <tEdwards_scalarMul_bn+0x70>
c0de34c8:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de34cc:	b150      	cbz	r0, c0de34e4 <tEdwards_scalarMul_bn+0xc2>
c0de34ce:	4638      	mov	r0, r7
c0de34d0:	4659      	mov	r1, fp
c0de34d2:	4642      	mov	r2, r8
c0de34d4:	465b      	mov	r3, fp
c0de34d6:	f7ff fcf0 	bl	c0de2eba <tEdwards_add>
c0de34da:	2800      	cmp	r0, #0
c0de34dc:	d1d9      	bne.n	c0de3492 <tEdwards_scalarMul_bn+0x70>
c0de34de:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de34e0:	3001      	adds	r0, #1
c0de34e2:	6538      	str	r0, [r7, #80]	@ 0x50
c0de34e4:	3e01      	subs	r6, #1
c0de34e6:	e7dc      	b.n	c0de34a2 <tEdwards_scalarMul_bn+0x80>
c0de34e8:	2000      	movs	r0, #0
c0de34ea:	e7d2      	b.n	c0de3492 <tEdwards_scalarMul_bn+0x70>

c0de34ec <tEdwards_scalarMul>:
c0de34ec:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de34ee:	460c      	mov	r4, r1
c0de34f0:	6801      	ldr	r1, [r0, #0]
c0de34f2:	4299      	cmp	r1, r3
c0de34f4:	bf3c      	itt	cc
c0de34f6:	f648 3099 	movwcc	r0, #35737	@ 0x8b99
c0de34fa:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de34fc:	4605      	mov	r5, r0
c0de34fe:	20ca      	movs	r0, #202	@ 0xca
c0de3500:	6528      	str	r0, [r5, #80]	@ 0x50
c0de3502:	a801      	add	r0, sp, #4
c0de3504:	f007 fbe4 	bl	c0deacd0 <cx_bn_alloc_init>
c0de3508:	b100      	cbz	r0, c0de350c <tEdwards_scalarMul+0x20>
c0de350a:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de350c:	20b3      	movs	r0, #179	@ 0xb3
c0de350e:	9b06      	ldr	r3, [sp, #24]
c0de3510:	4621      	mov	r1, r4
c0de3512:	6528      	str	r0, [r5, #80]	@ 0x50
c0de3514:	aa01      	add	r2, sp, #4
c0de3516:	4628      	mov	r0, r5
c0de3518:	f7ff ff83 	bl	c0de3422 <tEdwards_scalarMul_bn>
c0de351c:	2800      	cmp	r0, #0
c0de351e:	d1f4      	bne.n	c0de350a <tEdwards_scalarMul+0x1e>
c0de3520:	a801      	add	r0, sp, #4
c0de3522:	f007 fbe1 	bl	c0deace8 <cx_bn_destroy>
c0de3526:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de3528 <OUTLINED_FUNCTION_0>:
c0de3528:	4633      	mov	r3, r6
c0de352a:	f007 bc83 	b.w	c0deae34 <cx_mont_mul>

c0de352e <OUTLINED_FUNCTION_1>:
c0de352e:	462b      	mov	r3, r5
c0de3530:	f007 bc80 	b.w	c0deae34 <cx_mont_mul>

c0de3534 <OUTLINED_FUNCTION_2>:
c0de3534:	4633      	mov	r3, r6
c0de3536:	460a      	mov	r2, r1
c0de3538:	f007 bc7c 	b.w	c0deae34 <cx_mont_mul>

c0de353c <OUTLINED_FUNCTION_3>:
c0de353c:	6828      	ldr	r0, [r5, #0]
c0de353e:	463a      	mov	r2, r7
c0de3540:	4601      	mov	r1, r0
c0de3542:	f007 bc5f 	b.w	c0deae04 <cx_mont_to_montgomery>

c0de3546 <OUTLINED_FUNCTION_4>:
c0de3546:	460d      	mov	r5, r1
c0de3548:	6801      	ldr	r1, [r0, #0]
c0de354a:	4604      	mov	r4, r0
c0de354c:	4628      	mov	r0, r5
c0de354e:	f007 bbb5 	b.w	c0deacbc <cx_bn_alloc>

c0de3552 <OUTLINED_FUNCTION_5>:
c0de3552:	6860      	ldr	r0, [r4, #4]
c0de3554:	f007 bbdc 	b.w	c0dead10 <cx_bn_copy>

c0de3558 <grain_lfsr_advance>:
c0de3558:	b5b0      	push	{r4, r5, r7, lr}
c0de355a:	68c2      	ldr	r2, [r0, #12]
c0de355c:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de3560:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de3564:	ea4f 0234 	mov.w	r2, r4, rrx
c0de3568:	07e4      	lsls	r4, r4, #31
c0de356a:	60c5      	str	r5, [r0, #12]
c0de356c:	07dd      	lsls	r5, r3, #31
c0de356e:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de3572:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de3576:	6044      	str	r4, [r0, #4]
c0de3578:	4c15      	ldr	r4, [pc, #84]	@ (c0de35d0 <grain_lfsr_advance+0x78>)
c0de357a:	6005      	str	r5, [r0, #0]
c0de357c:	4021      	ands	r1, r4
c0de357e:	4c15      	ldr	r4, [pc, #84]	@ (c0de35d4 <grain_lfsr_advance+0x7c>)
c0de3580:	4023      	ands	r3, r4
c0de3582:	4419      	add	r1, r3
c0de3584:	0c0c      	lsrs	r4, r1, #16
c0de3586:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de358a:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de358e:	4421      	add	r1, r4
c0de3590:	0a0c      	lsrs	r4, r1, #8
c0de3592:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de3596:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de359a:	4061      	eors	r1, r4
c0de359c:	090c      	lsrs	r4, r1, #4
c0de359e:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de35a2:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de35a6:	4061      	eors	r1, r4
c0de35a8:	088c      	lsrs	r4, r1, #2
c0de35aa:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de35ae:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de35b2:	4061      	eors	r1, r4
c0de35b4:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de35b8:	ea4f 0331 	mov.w	r3, r1, rrx
c0de35bc:	4059      	eors	r1, r3
c0de35be:	f001 0101 	and.w	r1, r1, #1
c0de35c2:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de35c6:	6082      	str	r2, [r0, #8]
c0de35c8:	4608      	mov	r0, r1
c0de35ca:	2100      	movs	r1, #0
c0de35cc:	bdb0      	pop	{r4, r5, r7, pc}
c0de35ce:	bf00      	nop
c0de35d0:	00802001 	.word	0x00802001
c0de35d4:	40080040 	.word	0x40080040

c0de35d8 <next64_graingen>:
c0de35d8:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de35dc:	460c      	mov	r4, r1
c0de35de:	4605      	mov	r5, r0
c0de35e0:	f04f 0a00 	mov.w	sl, #0
c0de35e4:	f04f 0800 	mov.w	r8, #0
c0de35e8:	2700      	movs	r7, #0
c0de35ea:	42a7      	cmp	r7, r4
c0de35ec:	d215      	bcs.n	c0de361a <next64_graingen+0x42>
c0de35ee:	4628      	mov	r0, r5
c0de35f0:	f7ff ffb2 	bl	c0de3558 <grain_lfsr_advance>
c0de35f4:	4606      	mov	r6, r0
c0de35f6:	4628      	mov	r0, r5
c0de35f8:	f7ff ffae 	bl	c0de3558 <grain_lfsr_advance>
c0de35fc:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de3600:	0781      	lsls	r1, r0, #30
c0de3602:	d5f2      	bpl.n	c0de35ea <next64_graingen+0x12>
c0de3604:	f000 0001 	and.w	r0, r0, #1
c0de3608:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de360c:	3701      	adds	r7, #1
c0de360e:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de3612:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de3616:	4682      	mov	sl, r0
c0de3618:	e7e7      	b.n	c0de35ea <next64_graingen+0x12>
c0de361a:	4650      	mov	r0, sl
c0de361c:	4641      	mov	r1, r8
c0de361e:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de3624 <init_generator>:
c0de3624:	b5b0      	push	{r4, r5, r7, lr}
c0de3626:	4a09      	ldr	r2, [pc, #36]	@ (c0de364c <init_generator+0x28>)
c0de3628:	4b09      	ldr	r3, [pc, #36]	@ (c0de3650 <init_generator+0x2c>)
c0de362a:	4604      	mov	r4, r0
c0de362c:	25a0      	movs	r5, #160	@ 0xa0
c0de362e:	2000      	movs	r0, #0
c0de3630:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de3634:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de3638:	e9c4 3200 	strd	r3, r2, [r4]
c0de363c:	b125      	cbz	r5, c0de3648 <init_generator+0x24>
c0de363e:	4620      	mov	r0, r4
c0de3640:	f7ff ff8a 	bl	c0de3558 <grain_lfsr_advance>
c0de3644:	3d01      	subs	r5, #1
c0de3646:	e7f9      	b.n	c0de363c <init_generator+0x18>
c0de3648:	bdb0      	pop	{r4, r5, r7, pc}
c0de364a:	bf00      	nop
c0de364c:	fffcf010 	.word	0xfffcf010
c0de3650:	1801fc02 	.word	0x1801fc02

c0de3654 <gen_integer>:
c0de3654:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3658:	4f20      	ldr	r7, [pc, #128]	@ (c0de36dc <gen_integer+0x88>)
c0de365a:	4e22      	ldr	r6, [pc, #136]	@ (c0de36e4 <gen_integer+0x90>)
c0de365c:	4605      	mov	r5, r0
c0de365e:	460c      	mov	r4, r1
c0de3660:	2000      	movs	r0, #0
c0de3662:	46b8      	mov	r8, r7
c0de3664:	4f1e      	ldr	r7, [pc, #120]	@ (c0de36e0 <gen_integer+0x8c>)
c0de3666:	447e      	add	r6, pc
c0de3668:	b9f8      	cbnz	r0, c0de36aa <gen_integer+0x56>
c0de366a:	4628      	mov	r0, r5
c0de366c:	213e      	movs	r1, #62	@ 0x3e
c0de366e:	47b0      	blx	r6
c0de3670:	e9c4 0100 	strd	r0, r1, [r4]
c0de3674:	4628      	mov	r0, r5
c0de3676:	2140      	movs	r1, #64	@ 0x40
c0de3678:	47b0      	blx	r6
c0de367a:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de367e:	4628      	mov	r0, r5
c0de3680:	2140      	movs	r1, #64	@ 0x40
c0de3682:	47b0      	blx	r6
c0de3684:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de3688:	4628      	mov	r0, r5
c0de368a:	2140      	movs	r1, #64	@ 0x40
c0de368c:	47b0      	blx	r6
c0de368e:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de3692:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de3696:	463a      	mov	r2, r7
c0de3698:	1bc0      	subs	r0, r0, r7
c0de369a:	4640      	mov	r0, r8
c0de369c:	eb71 0008 	sbcs.w	r0, r1, r8
c0de36a0:	f04f 0000 	mov.w	r0, #0
c0de36a4:	bf38      	it	cc
c0de36a6:	2001      	movcc	r0, #1
c0de36a8:	e7de      	b.n	c0de3668 <gen_integer+0x14>
c0de36aa:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de36ae:	4d0e      	ldr	r5, [pc, #56]	@ (c0de36e8 <gen_integer+0x94>)
c0de36b0:	447d      	add	r5, pc
c0de36b2:	47a8      	blx	r5
c0de36b4:	e9c4 0100 	strd	r0, r1, [r4]
c0de36b8:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de36bc:	47a8      	blx	r5
c0de36be:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de36c2:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de36c6:	47a8      	blx	r5
c0de36c8:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de36cc:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de36d0:	47a8      	blx	r5
c0de36d2:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de36d6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de36da:	bf00      	nop
c0de36dc:	305a4b4e 	.word	0x305a4b4e
c0de36e0:	4f582122 	.word	0x4f582122
c0de36e4:	ffffff6f 	.word	0xffffff6f
c0de36e8:	00000039 	.word	0x00000039

c0de36ec <rev64>:
c0de36ec:	ba0a      	rev	r2, r1
c0de36ee:	ba01      	rev	r1, r0
c0de36f0:	4610      	mov	r0, r2
c0de36f2:	4770      	bx	lr

c0de36f4 <Poseidon_getNext_RC>:
c0de36f4:	3090      	adds	r0, #144	@ 0x90
c0de36f6:	f7ff bfad 	b.w	c0de3654 <gen_integer>

c0de36fa <Poseidon_alloc_init>:
c0de36fa:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de36fc:	4604      	mov	r4, r0
c0de36fe:	3090      	adds	r0, #144	@ 0x90
c0de3700:	461d      	mov	r5, r3
c0de3702:	4616      	mov	r6, r2
c0de3704:	460f      	mov	r7, r1
c0de3706:	f7ff ff8d 	bl	c0de3624 <init_generator>
c0de370a:	2000      	movs	r0, #0
c0de370c:	e9c4 7503 	strd	r7, r5, [r4, #12]
c0de3710:	4621      	mov	r1, r4
c0de3712:	f8c4 00a0 	str.w	r0, [r4, #160]	@ 0xa0
c0de3716:	1c70      	adds	r0, r6, #1
c0de3718:	e9c4 6001 	strd	r6, r0, [r4, #4]
c0de371c:	6828      	ldr	r0, [r5, #0]
c0de371e:	f007 faed 	bl	c0deacfc <cx_bn_nbytes>
c0de3722:	68a0      	ldr	r0, [r4, #8]
c0de3724:	f104 0514 	add.w	r5, r4, #20
c0de3728:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de372c:	3601      	adds	r6, #1
c0de372e:	4286      	cmp	r6, r0
c0de3730:	bf28      	it	cs
c0de3732:	bdf8      	popcs	{r3, r4, r5, r6, r7, pc}
c0de3734:	6821      	ldr	r1, [r4, #0]
c0de3736:	4628      	mov	r0, r5
c0de3738:	f007 fac0 	bl	c0deacbc <cx_bn_alloc>
c0de373c:	68a0      	ldr	r0, [r4, #8]
c0de373e:	3504      	adds	r5, #4
c0de3740:	4286      	cmp	r6, r0
c0de3742:	d2f3      	bcs.n	c0de372c <Poseidon_alloc_init+0x32>
c0de3744:	e7fe      	b.n	c0de3744 <Poseidon_alloc_init+0x4a>
	...

c0de3748 <nbgl_buttonsHandler>:
c0de3748:	b5b0      	push	{r4, r5, r7, lr}
c0de374a:	4930      	ldr	r1, [pc, #192]	@ (c0de380c <nbgl_buttonsHandler+0xc4>)
c0de374c:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de3750:	4282      	cmp	r2, r0
c0de3752:	d108      	bne.n	c0de3766 <nbgl_buttonsHandler+0x1e>
c0de3754:	2800      	cmp	r0, #0
c0de3756:	d04b      	beq.n	c0de37f0 <nbgl_buttonsHandler+0xa8>
c0de3758:	eb09 0301 	add.w	r3, r9, r1
c0de375c:	685a      	ldr	r2, [r3, #4]
c0de375e:	3201      	adds	r2, #1
c0de3760:	605a      	str	r2, [r3, #4]
c0de3762:	4603      	mov	r3, r0
c0de3764:	e006      	b.n	c0de3774 <nbgl_buttonsHandler+0x2c>
c0de3766:	ea42 0400 	orr.w	r4, r2, r0
c0de376a:	eb09 0201 	add.w	r2, r9, r1
c0de376e:	6852      	ldr	r2, [r2, #4]
c0de3770:	b120      	cbz	r0, c0de377c <nbgl_buttonsHandler+0x34>
c0de3772:	4623      	mov	r3, r4
c0de3774:	461c      	mov	r4, r3
c0de3776:	f809 3001 	strb.w	r3, [r9, r1]
c0de377a:	e007      	b.n	c0de378c <nbgl_buttonsHandler+0x44>
c0de377c:	2300      	movs	r3, #0
c0de377e:	eb09 0501 	add.w	r5, r9, r1
c0de3782:	f064 047f 	orn	r4, r4, #127	@ 0x7f
c0de3786:	f809 3001 	strb.w	r3, [r9, r1]
c0de378a:	606b      	str	r3, [r5, #4]
c0de378c:	4283      	cmp	r3, r0
c0de378e:	bf1e      	ittt	ne
c0de3790:	eb09 0001 	addne.w	r0, r9, r1
c0de3794:	2100      	movne	r1, #0
c0de3796:	6041      	strne	r1, [r0, #4]
c0de3798:	2a08      	cmp	r2, #8
c0de379a:	d30a      	bcc.n	c0de37b2 <nbgl_buttonsHandler+0x6a>
c0de379c:	2003      	movs	r0, #3
c0de379e:	fbb2 f0f0 	udiv	r0, r2, r0
c0de37a2:	eb00 0040 	add.w	r0, r0, r0, lsl #1
c0de37a6:	1a10      	subs	r0, r2, r0
c0de37a8:	bf08      	it	eq
c0de37aa:	f044 0440 	orreq.w	r4, r4, #64	@ 0x40
c0de37ae:	f004 047f 	and.w	r4, r4, #127	@ 0x7f
c0de37b2:	f002 fe9f 	bl	c0de64f4 <nbgl_screenGetTop>
c0de37b6:	b1d8      	cbz	r0, c0de37f0 <nbgl_buttonsHandler+0xa8>
c0de37b8:	4601      	mov	r1, r0
c0de37ba:	f811 2f32 	ldrb.w	r2, [r1, #50]!
c0de37be:	784b      	ldrb	r3, [r1, #1]
c0de37c0:	788d      	ldrb	r5, [r1, #2]
c0de37c2:	78c9      	ldrb	r1, [r1, #3]
c0de37c4:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de37c8:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de37cc:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
c0de37d0:	b172      	cbz	r2, c0de37f0 <nbgl_buttonsHandler+0xa8>
c0de37d2:	b2e1      	uxtb	r1, r4
c0de37d4:	2983      	cmp	r1, #131	@ 0x83
c0de37d6:	d00c      	beq.n	c0de37f2 <nbgl_buttonsHandler+0xaa>
c0de37d8:	2941      	cmp	r1, #65	@ 0x41
c0de37da:	d00c      	beq.n	c0de37f6 <nbgl_buttonsHandler+0xae>
c0de37dc:	2942      	cmp	r1, #66	@ 0x42
c0de37de:	d00c      	beq.n	c0de37fa <nbgl_buttonsHandler+0xb2>
c0de37e0:	2981      	cmp	r1, #129	@ 0x81
c0de37e2:	d00c      	beq.n	c0de37fe <nbgl_buttonsHandler+0xb6>
c0de37e4:	2982      	cmp	r1, #130	@ 0x82
c0de37e6:	d00c      	beq.n	c0de3802 <nbgl_buttonsHandler+0xba>
c0de37e8:	2903      	cmp	r1, #3
c0de37ea:	d101      	bne.n	c0de37f0 <nbgl_buttonsHandler+0xa8>
c0de37ec:	2105      	movs	r1, #5
c0de37ee:	e009      	b.n	c0de3804 <nbgl_buttonsHandler+0xbc>
c0de37f0:	bdb0      	pop	{r4, r5, r7, pc}
c0de37f2:	2104      	movs	r1, #4
c0de37f4:	e006      	b.n	c0de3804 <nbgl_buttonsHandler+0xbc>
c0de37f6:	2102      	movs	r1, #2
c0de37f8:	e004      	b.n	c0de3804 <nbgl_buttonsHandler+0xbc>
c0de37fa:	2103      	movs	r1, #3
c0de37fc:	e002      	b.n	c0de3804 <nbgl_buttonsHandler+0xbc>
c0de37fe:	2100      	movs	r1, #0
c0de3800:	e000      	b.n	c0de3804 <nbgl_buttonsHandler+0xbc>
c0de3802:	2101      	movs	r1, #1
c0de3804:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3808:	4710      	bx	r2
c0de380a:	bf00      	nop
c0de380c:	000014f8 	.word	0x000014f8

c0de3810 <nbgl_drawRoundedRect>:
c0de3810:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3814:	b08a      	sub	sp, #40	@ 0x28
c0de3816:	468b      	mov	fp, r1
c0de3818:	4606      	mov	r6, r0
c0de381a:	2901      	cmp	r1, #1
c0de381c:	9206      	str	r2, [sp, #24]
c0de381e:	d804      	bhi.n	c0de382a <nbgl_drawRoundedRect+0x1a>
c0de3820:	4872      	ldr	r0, [pc, #456]	@ (c0de39ec <nbgl_drawRoundedRect+0x1dc>)
c0de3822:	4478      	add	r0, pc
c0de3824:	f810 700b 	ldrb.w	r7, [r0, fp]
c0de3828:	e004      	b.n	c0de3834 <nbgl_drawRoundedRect+0x24>
c0de382a:	f1bb 0fff 	cmp.w	fp, #255	@ 0xff
c0de382e:	f040 80da 	bne.w	c0de39e6 <nbgl_drawRoundedRect+0x1d6>
c0de3832:	2700      	movs	r7, #0
c0de3834:	9806      	ldr	r0, [sp, #24]
c0de3836:	7871      	ldrb	r1, [r6, #1]
c0de3838:	78b2      	ldrb	r2, [r6, #2]
c0de383a:	78f3      	ldrb	r3, [r6, #3]
c0de383c:	f88d 0024 	strb.w	r0, [sp, #36]	@ 0x24
c0de3840:	7830      	ldrb	r0, [r6, #0]
c0de3842:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de3846:	79b3      	ldrb	r3, [r6, #6]
c0de3848:	f8ad 201e 	strh.w	r2, [sp, #30]
c0de384c:	79f2      	ldrb	r2, [r6, #7]
c0de384e:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3852:	7931      	ldrb	r1, [r6, #4]
c0de3854:	4438      	add	r0, r7
c0de3856:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de385a:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de385e:	7970      	ldrb	r0, [r6, #5]
c0de3860:	f8ad 2022 	strh.w	r2, [sp, #34]	@ 0x22
c0de3864:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de3868:	eba0 0047 	sub.w	r0, r0, r7, lsl #1
c0de386c:	f8ad 0020 	strh.w	r0, [sp, #32]
c0de3870:	a807      	add	r0, sp, #28
c0de3872:	f007 f9b3 	bl	c0deabdc <nbgl_frontDrawRect>
c0de3876:	f1bb 0fff 	cmp.w	fp, #255	@ 0xff
c0de387a:	f000 80b4 	beq.w	c0de39e6 <nbgl_drawRoundedRect+0x1d6>
c0de387e:	7830      	ldrb	r0, [r6, #0]
c0de3880:	7871      	ldrb	r1, [r6, #1]
c0de3882:	4635      	mov	r5, r6
c0de3884:	46b0      	mov	r8, r6
c0de3886:	007c      	lsls	r4, r7, #1
c0de3888:	f10d 0a1c 	add.w	sl, sp, #28
c0de388c:	f8ad 7020 	strh.w	r7, [sp, #32]
c0de3890:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3894:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de3898:	f815 0f02 	ldrb.w	r0, [r5, #2]!
c0de389c:	7869      	ldrb	r1, [r5, #1]
c0de389e:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de38a2:	4438      	add	r0, r7
c0de38a4:	f8ad 001e 	strh.w	r0, [sp, #30]
c0de38a8:	f818 0f06 	ldrb.w	r0, [r8, #6]!
c0de38ac:	f898 1001 	ldrb.w	r1, [r8, #1]
c0de38b0:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de38b4:	1b00      	subs	r0, r0, r4
c0de38b6:	f8ad 0022 	strh.w	r0, [sp, #34]	@ 0x22
c0de38ba:	4650      	mov	r0, sl
c0de38bc:	f007 f98e 	bl	c0deabdc <nbgl_frontDrawRect>
c0de38c0:	7828      	ldrb	r0, [r5, #0]
c0de38c2:	7869      	ldrb	r1, [r5, #1]
c0de38c4:	7932      	ldrb	r2, [r6, #4]
c0de38c6:	7973      	ldrb	r3, [r6, #5]
c0de38c8:	f8ad 7020 	strh.w	r7, [sp, #32]
c0de38cc:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de38d0:	f898 1001 	ldrb.w	r1, [r8, #1]
c0de38d4:	4438      	add	r0, r7
c0de38d6:	f8ad 001e 	strh.w	r0, [sp, #30]
c0de38da:	f898 0000 	ldrb.w	r0, [r8]
c0de38de:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de38e2:	7871      	ldrb	r1, [r6, #1]
c0de38e4:	1b00      	subs	r0, r0, r4
c0de38e6:	f8ad 0022 	strh.w	r0, [sp, #34]	@ 0x22
c0de38ea:	f000 fb5f 	bl	c0de3fac <OUTLINED_FUNCTION_1>
c0de38ee:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de38f2:	4650      	mov	r0, sl
c0de38f4:	f007 f972 	bl	c0deabdc <nbgl_frontDrawRect>
c0de38f8:	f1bb 0f00 	cmp.w	fp, #0
c0de38fc:	d073      	beq.n	c0de39e6 <nbgl_drawRoundedRect+0x1d6>
c0de38fe:	46b2      	mov	sl, r6
c0de3900:	7a31      	ldrb	r1, [r6, #8]
c0de3902:	f8dd 8018 	ldr.w	r8, [sp, #24]
c0de3906:	f996 0001 	ldrsb.w	r0, [r6, #1]
c0de390a:	7833      	ldrb	r3, [r6, #0]
c0de390c:	f81a cf02 	ldrb.w	ip, [sl, #2]!
c0de3910:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3914:	2301      	movs	r3, #1
c0de3916:	f99a 2001 	ldrsb.w	r2, [sl, #1]
c0de391a:	9102      	str	r1, [sp, #8]
c0de391c:	e9cd 8800 	strd	r8, r8, [sp]
c0de3920:	4438      	add	r0, r7
c0de3922:	4c33      	ldr	r4, [pc, #204]	@ (c0de39f0 <nbgl_drawRoundedRect+0x1e0>)
c0de3924:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de3928:	465a      	mov	r2, fp
c0de392a:	4439      	add	r1, r7
c0de392c:	447c      	add	r4, pc
c0de392e:	47a0      	blx	r4
c0de3930:	4630      	mov	r0, r6
c0de3932:	f996 c001 	ldrsb.w	ip, [r6, #1]
c0de3936:	7832      	ldrb	r2, [r6, #0]
c0de3938:	f99a 5001 	ldrsb.w	r5, [sl, #1]
c0de393c:	f89a e000 	ldrb.w	lr, [sl]
c0de3940:	9405      	str	r4, [sp, #20]
c0de3942:	f810 3f04 	ldrb.w	r3, [r0, #4]!
c0de3946:	9004      	str	r0, [sp, #16]
c0de3948:	7841      	ldrb	r1, [r0, #1]
c0de394a:	7a30      	ldrb	r0, [r6, #8]
c0de394c:	e9cd 8800 	strd	r8, r8, [sp]
c0de3950:	9002      	str	r0, [sp, #8]
c0de3952:	ea43 2001 	orr.w	r0, r3, r1, lsl #8
c0de3956:	ea42 210c 	orr.w	r1, r2, ip, lsl #8
c0de395a:	465a      	mov	r2, fp
c0de395c:	2300      	movs	r3, #0
c0de395e:	1bc9      	subs	r1, r1, r7
c0de3960:	4408      	add	r0, r1
c0de3962:	ea4e 2105 	orr.w	r1, lr, r5, lsl #8
c0de3966:	4439      	add	r1, r7
c0de3968:	47a0      	blx	r4
c0de396a:	4634      	mov	r4, r6
c0de396c:	f99a e001 	ldrsb.w	lr, [sl, #1]
c0de3970:	f89a c000 	ldrb.w	ip, [sl]
c0de3974:	7a31      	ldrb	r1, [r6, #8]
c0de3976:	f996 5001 	ldrsb.w	r5, [r6, #1]
c0de397a:	7832      	ldrb	r2, [r6, #0]
c0de397c:	f814 3f06 	ldrb.w	r3, [r4, #6]!
c0de3980:	7860      	ldrb	r0, [r4, #1]
c0de3982:	9102      	str	r1, [sp, #8]
c0de3984:	ea4c 210e 	orr.w	r1, ip, lr, lsl #8
c0de3988:	e9cd 8800 	strd	r8, r8, [sp]
c0de398c:	1bc9      	subs	r1, r1, r7
c0de398e:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3992:	2302      	movs	r3, #2
c0de3994:	4401      	add	r1, r0
c0de3996:	ea42 2005 	orr.w	r0, r2, r5, lsl #8
c0de399a:	9d05      	ldr	r5, [sp, #20]
c0de399c:	465a      	mov	r2, fp
c0de399e:	4438      	add	r0, r7
c0de39a0:	47a8      	blx	r5
c0de39a2:	9904      	ldr	r1, [sp, #16]
c0de39a4:	7832      	ldrb	r2, [r6, #0]
c0de39a6:	f894 c000 	ldrb.w	ip, [r4]
c0de39aa:	f894 e001 	ldrb.w	lr, [r4, #1]
c0de39ae:	f99a 3001 	ldrsb.w	r3, [sl, #1]
c0de39b2:	f89a 4000 	ldrb.w	r4, [sl]
c0de39b6:	7808      	ldrb	r0, [r1, #0]
c0de39b8:	784d      	ldrb	r5, [r1, #1]
c0de39ba:	f996 1001 	ldrsb.w	r1, [r6, #1]
c0de39be:	7a36      	ldrb	r6, [r6, #8]
c0de39c0:	e9cd 8800 	strd	r8, r8, [sp]
c0de39c4:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de39c8:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de39cc:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de39d0:	9602      	str	r6, [sp, #8]
c0de39d2:	1bc9      	subs	r1, r1, r7
c0de39d4:	4408      	add	r0, r1
c0de39d6:	ea44 2103 	orr.w	r1, r4, r3, lsl #8
c0de39da:	9c05      	ldr	r4, [sp, #20]
c0de39dc:	2303      	movs	r3, #3
c0de39de:	1bc9      	subs	r1, r1, r7
c0de39e0:	4411      	add	r1, r2
c0de39e2:	465a      	mov	r2, fp
c0de39e4:	47a0      	blx	r4
c0de39e6:	b00a      	add	sp, #40	@ 0x28
c0de39e8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de39ec:	0000968e 	.word	0x0000968e
c0de39f0:	000000c5 	.word	0x000000c5

c0de39f4 <draw_circle_helper>:
c0de39f4:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de39f6:	461c      	mov	r4, r3
c0de39f8:	2300      	movs	r3, #0
c0de39fa:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
c0de39fc:	2a01      	cmp	r2, #1
c0de39fe:	f88d 300d 	strb.w	r3, [sp, #13]
c0de3a02:	9301      	str	r3, [sp, #4]
c0de3a04:	f88d 500c 	strb.w	r5, [sp, #12]
c0de3a08:	d837      	bhi.n	c0de3a7a <draw_circle_helper+0x86>
c0de3a0a:	4e1d      	ldr	r6, [pc, #116]	@ (c0de3a80 <draw_circle_helper+0x8c>)
c0de3a0c:	e9dd 3508 	ldrd	r3, r5, [sp, #32]
c0de3a10:	447e      	add	r6, pc
c0de3a12:	5cb2      	ldrb	r2, [r6, r2]
c0de3a14:	f8ad 2008 	strh.w	r2, [sp, #8]
c0de3a18:	f8ad 200a 	strh.w	r2, [sp, #10]
c0de3a1c:	b164      	cbz	r4, c0de3a38 <draw_circle_helper+0x44>
c0de3a1e:	2c01      	cmp	r4, #1
c0de3a20:	d014      	beq.n	c0de3a4c <draw_circle_helper+0x58>
c0de3a22:	2c02      	cmp	r4, #2
c0de3a24:	d01b      	beq.n	c0de3a5e <draw_circle_helper+0x6a>
c0de3a26:	2c03      	cmp	r4, #3
c0de3a28:	d128      	bne.n	c0de3a7c <draw_circle_helper+0x88>
c0de3a2a:	f000 fac7 	bl	c0de3fbc <OUTLINED_FUNCTION_2>
c0de3a2e:	4815      	ldr	r0, [pc, #84]	@ (c0de3a84 <draw_circle_helper+0x90>)
c0de3a30:	4915      	ldr	r1, [pc, #84]	@ (c0de3a88 <draw_circle_helper+0x94>)
c0de3a32:	4478      	add	r0, pc
c0de3a34:	4479      	add	r1, pc
c0de3a36:	e019      	b.n	c0de3a6c <draw_circle_helper+0x78>
c0de3a38:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de3a3c:	1a88      	subs	r0, r1, r2
c0de3a3e:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de3a42:	4814      	ldr	r0, [pc, #80]	@ (c0de3a94 <draw_circle_helper+0xa0>)
c0de3a44:	4914      	ldr	r1, [pc, #80]	@ (c0de3a98 <draw_circle_helper+0xa4>)
c0de3a46:	4478      	add	r0, pc
c0de3a48:	4479      	add	r1, pc
c0de3a4a:	e00f      	b.n	c0de3a6c <draw_circle_helper+0x78>
c0de3a4c:	1a89      	subs	r1, r1, r2
c0de3a4e:	1a80      	subs	r0, r0, r2
c0de3a50:	f000 fab4 	bl	c0de3fbc <OUTLINED_FUNCTION_2>
c0de3a54:	4811      	ldr	r0, [pc, #68]	@ (c0de3a9c <draw_circle_helper+0xa8>)
c0de3a56:	4912      	ldr	r1, [pc, #72]	@ (c0de3aa0 <draw_circle_helper+0xac>)
c0de3a58:	4478      	add	r0, pc
c0de3a5a:	4479      	add	r1, pc
c0de3a5c:	e006      	b.n	c0de3a6c <draw_circle_helper+0x78>
c0de3a5e:	1a80      	subs	r0, r0, r2
c0de3a60:	f000 faac 	bl	c0de3fbc <OUTLINED_FUNCTION_2>
c0de3a64:	4809      	ldr	r0, [pc, #36]	@ (c0de3a8c <draw_circle_helper+0x98>)
c0de3a66:	490a      	ldr	r1, [pc, #40]	@ (c0de3a90 <draw_circle_helper+0x9c>)
c0de3a68:	4478      	add	r0, pc
c0de3a6a:	4479      	add	r1, pc
c0de3a6c:	42ab      	cmp	r3, r5
c0de3a6e:	bf08      	it	eq
c0de3a70:	4601      	moveq	r1, r0
c0de3a72:	a801      	add	r0, sp, #4
c0de3a74:	2200      	movs	r2, #0
c0de3a76:	f007 f8b9 	bl	c0deabec <nbgl_frontDrawImage>
c0de3a7a:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de3a7c:	2100      	movs	r1, #0
c0de3a7e:	e7f8      	b.n	c0de3a72 <draw_circle_helper+0x7e>
c0de3a80:	000094a0 	.word	0x000094a0
c0de3a84:	00009480 	.word	0x00009480
c0de3a88:	00009480 	.word	0x00009480
c0de3a8c:	0000944e 	.word	0x0000944e
c0de3a90:	0000944e 	.word	0x0000944e
c0de3a94:	00009474 	.word	0x00009474
c0de3a98:	00009474 	.word	0x00009474
c0de3a9c:	00009466 	.word	0x00009466
c0de3aa0:	00009466 	.word	0x00009466

c0de3aa4 <nbgl_drawRoundedBorderedRect>:
c0de3aa4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3aa8:	b08c      	sub	sp, #48	@ 0x30
c0de3aaa:	4606      	mov	r6, r0
c0de3aac:	4690      	mov	r8, r2
c0de3aae:	2901      	cmp	r1, #1
c0de3ab0:	4608      	mov	r0, r1
c0de3ab2:	9108      	str	r1, [sp, #32]
c0de3ab4:	d804      	bhi.n	c0de3ac0 <nbgl_drawRoundedBorderedRect+0x1c>
c0de3ab6:	48b5      	ldr	r0, [pc, #724]	@ (c0de3d8c <nbgl_drawRoundedBorderedRect+0x2e8>)
c0de3ab8:	9908      	ldr	r1, [sp, #32]
c0de3aba:	4478      	add	r0, pc
c0de3abc:	5c47      	ldrb	r7, [r0, r1]
c0de3abe:	e004      	b.n	c0de3aca <nbgl_drawRoundedBorderedRect+0x26>
c0de3ac0:	9808      	ldr	r0, [sp, #32]
c0de3ac2:	28ff      	cmp	r0, #255	@ 0xff
c0de3ac4:	f040 815e 	bne.w	c0de3d84 <nbgl_drawRoundedBorderedRect+0x2e0>
c0de3ac8:	2700      	movs	r7, #0
c0de3aca:	f8dd b050 	ldr.w	fp, [sp, #80]	@ 0x50
c0de3ace:	f88d 302c 	strb.w	r3, [sp, #44]	@ 0x2c
c0de3ad2:	455b      	cmp	r3, fp
c0de3ad4:	d11e      	bne.n	c0de3b14 <nbgl_drawRoundedBorderedRect+0x70>
c0de3ad6:	7a30      	ldrb	r0, [r6, #8]
c0de3ad8:	4298      	cmp	r0, r3
c0de3ada:	d11b      	bne.n	c0de3b14 <nbgl_drawRoundedBorderedRect+0x70>
c0de3adc:	7830      	ldrb	r0, [r6, #0]
c0de3ade:	7871      	ldrb	r1, [r6, #1]
c0de3ae0:	78b2      	ldrb	r2, [r6, #2]
c0de3ae2:	78f3      	ldrb	r3, [r6, #3]
c0de3ae4:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3ae8:	7931      	ldrb	r1, [r6, #4]
c0de3aea:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de3aee:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de3af2:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de3af6:	7970      	ldrb	r0, [r6, #5]
c0de3af8:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de3afc:	79b1      	ldrb	r1, [r6, #6]
c0de3afe:	f8ad 0028 	strh.w	r0, [sp, #40]	@ 0x28
c0de3b02:	79f0      	ldrb	r0, [r6, #7]
c0de3b04:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de3b08:	f8ad 002a 	strh.w	r0, [sp, #42]	@ 0x2a
c0de3b0c:	a809      	add	r0, sp, #36	@ 0x24
c0de3b0e:	f007 f865 	bl	c0deabdc <nbgl_frontDrawRect>
c0de3b12:	e137      	b.n	c0de3d84 <nbgl_drawRoundedBorderedRect+0x2e0>
c0de3b14:	7930      	ldrb	r0, [r6, #4]
c0de3b16:	7971      	ldrb	r1, [r6, #5]
c0de3b18:	007d      	lsls	r5, r7, #1
c0de3b1a:	9306      	str	r3, [sp, #24]
c0de3b1c:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3b20:	ebb0 0f47 	cmp.w	r0, r7, lsl #1
c0de3b24:	d918      	bls.n	c0de3b58 <nbgl_drawRoundedBorderedRect+0xb4>
c0de3b26:	78b2      	ldrb	r2, [r6, #2]
c0de3b28:	78f3      	ldrb	r3, [r6, #3]
c0de3b2a:	1b40      	subs	r0, r0, r5
c0de3b2c:	7871      	ldrb	r1, [r6, #1]
c0de3b2e:	f8ad 0028 	strh.w	r0, [sp, #40]	@ 0x28
c0de3b32:	7830      	ldrb	r0, [r6, #0]
c0de3b34:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de3b38:	79b3      	ldrb	r3, [r6, #6]
c0de3b3a:	f8ad 2026 	strh.w	r2, [sp, #38]	@ 0x26
c0de3b3e:	79f2      	ldrb	r2, [r6, #7]
c0de3b40:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3b44:	4438      	add	r0, r7
c0de3b46:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de3b4a:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de3b4e:	f8ad 202a 	strh.w	r2, [sp, #42]	@ 0x2a
c0de3b52:	a809      	add	r0, sp, #36	@ 0x24
c0de3b54:	f007 f842 	bl	c0deabdc <nbgl_frontDrawRect>
c0de3b58:	9808      	ldr	r0, [sp, #32]
c0de3b5a:	9507      	str	r5, [sp, #28]
c0de3b5c:	2801      	cmp	r0, #1
c0de3b5e:	d82a      	bhi.n	c0de3bb6 <nbgl_drawRoundedBorderedRect+0x112>
c0de3b60:	79b0      	ldrb	r0, [r6, #6]
c0de3b62:	79f1      	ldrb	r1, [r6, #7]
c0de3b64:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3b68:	4285      	cmp	r5, r0
c0de3b6a:	d224      	bcs.n	c0de3bb6 <nbgl_drawRoundedBorderedRect+0x112>
c0de3b6c:	1b40      	subs	r0, r0, r5
c0de3b6e:	7871      	ldrb	r1, [r6, #1]
c0de3b70:	4634      	mov	r4, r6
c0de3b72:	f8ad 7028 	strh.w	r7, [sp, #40]	@ 0x28
c0de3b76:	f8ad 002a 	strh.w	r0, [sp, #42]	@ 0x2a
c0de3b7a:	7830      	ldrb	r0, [r6, #0]
c0de3b7c:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3b80:	f000 fa0c 	bl	c0de3f9c <OUTLINED_FUNCTION_0>
c0de3b84:	4438      	add	r0, r7
c0de3b86:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de3b8a:	ad09      	add	r5, sp, #36	@ 0x24
c0de3b8c:	4628      	mov	r0, r5
c0de3b8e:	f007 f825 	bl	c0deabdc <nbgl_frontDrawRect>
c0de3b92:	7820      	ldrb	r0, [r4, #0]
c0de3b94:	7861      	ldrb	r1, [r4, #1]
c0de3b96:	7932      	ldrb	r2, [r6, #4]
c0de3b98:	7973      	ldrb	r3, [r6, #5]
c0de3b9a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3b9e:	7871      	ldrb	r1, [r6, #1]
c0de3ba0:	4438      	add	r0, r7
c0de3ba2:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de3ba6:	f000 fa01 	bl	c0de3fac <OUTLINED_FUNCTION_1>
c0de3baa:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de3bae:	4628      	mov	r0, r5
c0de3bb0:	9d07      	ldr	r5, [sp, #28]
c0de3bb2:	f007 f813 	bl	c0deabdc <nbgl_frontDrawRect>
c0de3bb6:	7830      	ldrb	r0, [r6, #0]
c0de3bb8:	7871      	ldrb	r1, [r6, #1]
c0de3bba:	4634      	mov	r4, r6
c0de3bbc:	7932      	ldrb	r2, [r6, #4]
c0de3bbe:	7973      	ldrb	r3, [r6, #5]
c0de3bc0:	f88d b02c 	strb.w	fp, [sp, #44]	@ 0x2c
c0de3bc4:	f10d 0b24 	add.w	fp, sp, #36	@ 0x24
c0de3bc8:	f8ad 802a 	strh.w	r8, [sp, #42]	@ 0x2a
c0de3bcc:	9705      	str	r7, [sp, #20]
c0de3bce:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3bd2:	4438      	add	r0, r7
c0de3bd4:	f000 f9e2 	bl	c0de3f9c <OUTLINED_FUNCTION_0>
c0de3bd8:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de3bdc:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de3be0:	1b40      	subs	r0, r0, r5
c0de3be2:	f8ad 0028 	strh.w	r0, [sp, #40]	@ 0x28
c0de3be6:	4658      	mov	r0, fp
c0de3be8:	f006 fff8 	bl	c0deabdc <nbgl_frontDrawRect>
c0de3bec:	4635      	mov	r5, r6
c0de3bee:	7862      	ldrb	r2, [r4, #1]
c0de3bf0:	9f07      	ldr	r7, [sp, #28]
c0de3bf2:	f815 0f06 	ldrb.w	r0, [r5, #6]!
c0de3bf6:	7869      	ldrb	r1, [r5, #1]
c0de3bf8:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3bfc:	7821      	ldrb	r1, [r4, #0]
c0de3bfe:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3c02:	eba1 0108 	sub.w	r1, r1, r8
c0de3c06:	4408      	add	r0, r1
c0de3c08:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de3c0c:	4658      	mov	r0, fp
c0de3c0e:	f006 ffe5 	bl	c0deabdc <nbgl_frontDrawRect>
c0de3c12:	7828      	ldrb	r0, [r5, #0]
c0de3c14:	7869      	ldrb	r1, [r5, #1]
c0de3c16:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3c1a:	4287      	cmp	r7, r0
c0de3c1c:	d229      	bcs.n	c0de3c72 <nbgl_drawRoundedBorderedRect+0x1ce>
c0de3c1e:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de3c20:	1bc0      	subs	r0, r0, r7
c0de3c22:	78b2      	ldrb	r2, [r6, #2]
c0de3c24:	78f3      	ldrb	r3, [r6, #3]
c0de3c26:	f8ad 8028 	strh.w	r8, [sp, #40]	@ 0x28
c0de3c2a:	f8ad 002a 	strh.w	r0, [sp, #42]	@ 0x2a
c0de3c2e:	7830      	ldrb	r0, [r6, #0]
c0de3c30:	f88d 102c 	strb.w	r1, [sp, #44]	@ 0x2c
c0de3c34:	7871      	ldrb	r1, [r6, #1]
c0de3c36:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3c3a:	9905      	ldr	r1, [sp, #20]
c0de3c3c:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de3c40:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de3c44:	4408      	add	r0, r1
c0de3c46:	f8ad 0026 	strh.w	r0, [sp, #38]	@ 0x26
c0de3c4a:	ac09      	add	r4, sp, #36	@ 0x24
c0de3c4c:	4620      	mov	r0, r4
c0de3c4e:	f006 ffc5 	bl	c0deabdc <nbgl_frontDrawRect>
c0de3c52:	7830      	ldrb	r0, [r6, #0]
c0de3c54:	7871      	ldrb	r1, [r6, #1]
c0de3c56:	7932      	ldrb	r2, [r6, #4]
c0de3c58:	7973      	ldrb	r3, [r6, #5]
c0de3c5a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3c5e:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de3c62:	eba0 0008 	sub.w	r0, r0, r8
c0de3c66:	4408      	add	r0, r1
c0de3c68:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de3c6c:	4620      	mov	r0, r4
c0de3c6e:	f006 ffb5 	bl	c0deabdc <nbgl_frontDrawRect>
c0de3c72:	9808      	ldr	r0, [sp, #32]
c0de3c74:	f8dd b018 	ldr.w	fp, [sp, #24]
c0de3c78:	2801      	cmp	r0, #1
c0de3c7a:	f200 8083 	bhi.w	c0de3d84 <nbgl_drawRoundedBorderedRect+0x2e0>
c0de3c7e:	4635      	mov	r5, r6
c0de3c80:	7a34      	ldrb	r4, [r6, #8]
c0de3c82:	9914      	ldr	r1, [sp, #80]	@ 0x50
c0de3c84:	f996 0001 	ldrsb.w	r0, [r6, #1]
c0de3c88:	7833      	ldrb	r3, [r6, #0]
c0de3c8a:	f8dd a014 	ldr.w	sl, [sp, #20]
c0de3c8e:	f815 cf02 	ldrb.w	ip, [r5, #2]!
c0de3c92:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3c96:	2301      	movs	r3, #1
c0de3c98:	f995 2001 	ldrsb.w	r2, [r5, #1]
c0de3c9c:	e9cd 1b00 	strd	r1, fp, [sp]
c0de3ca0:	9402      	str	r4, [sp, #8]
c0de3ca2:	4450      	add	r0, sl
c0de3ca4:	4c3a      	ldr	r4, [pc, #232]	@ (c0de3d90 <nbgl_drawRoundedBorderedRect+0x2ec>)
c0de3ca6:	9f08      	ldr	r7, [sp, #32]
c0de3ca8:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de3cac:	4451      	add	r1, sl
c0de3cae:	447c      	add	r4, pc
c0de3cb0:	463a      	mov	r2, r7
c0de3cb2:	47a0      	blx	r4
c0de3cb4:	f995 0001 	ldrsb.w	r0, [r5, #1]
c0de3cb8:	46a0      	mov	r8, r4
c0de3cba:	9407      	str	r4, [sp, #28]
c0de3cbc:	4634      	mov	r4, r6
c0de3cbe:	f996 e001 	ldrsb.w	lr, [r6, #1]
c0de3cc2:	7832      	ldrb	r2, [r6, #0]
c0de3cc4:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de3cc6:	f814 cf04 	ldrb.w	ip, [r4, #4]!
c0de3cca:	9004      	str	r0, [sp, #16]
c0de3ccc:	7828      	ldrb	r0, [r5, #0]
c0de3cce:	7861      	ldrb	r1, [r4, #1]
c0de3cd0:	9003      	str	r0, [sp, #12]
c0de3cd2:	7a30      	ldrb	r0, [r6, #8]
c0de3cd4:	e9cd 3b00 	strd	r3, fp, [sp]
c0de3cd8:	2300      	movs	r3, #0
c0de3cda:	9002      	str	r0, [sp, #8]
c0de3cdc:	ea4c 2001 	orr.w	r0, ip, r1, lsl #8
c0de3ce0:	ea42 210e 	orr.w	r1, r2, lr, lsl #8
c0de3ce4:	eba1 010a 	sub.w	r1, r1, sl
c0de3ce8:	4408      	add	r0, r1
c0de3cea:	e9dd 2103 	ldrd	r2, r1, [sp, #12]
c0de3cee:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de3cf2:	463a      	mov	r2, r7
c0de3cf4:	4451      	add	r1, sl
c0de3cf6:	47c0      	blx	r8
c0de3cf8:	f996 0001 	ldrsb.w	r0, [r6, #1]
c0de3cfc:	463a      	mov	r2, r7
c0de3cfe:	4637      	mov	r7, r6
c0de3d00:	7a31      	ldrb	r1, [r6, #8]
c0de3d02:	f895 8000 	ldrb.w	r8, [r5]
c0de3d06:	f896 e000 	ldrb.w	lr, [r6]
c0de3d0a:	9b14      	ldr	r3, [sp, #80]	@ 0x50
c0de3d0c:	f817 cf06 	ldrb.w	ip, [r7, #6]!
c0de3d10:	9004      	str	r0, [sp, #16]
c0de3d12:	f995 0001 	ldrsb.w	r0, [r5, #1]
c0de3d16:	9003      	str	r0, [sp, #12]
c0de3d18:	7878      	ldrb	r0, [r7, #1]
c0de3d1a:	9102      	str	r1, [sp, #8]
c0de3d1c:	e9cd 3b00 	strd	r3, fp, [sp]
c0de3d20:	2302      	movs	r3, #2
c0de3d22:	9903      	ldr	r1, [sp, #12]
c0de3d24:	ea4c 2000 	orr.w	r0, ip, r0, lsl #8
c0de3d28:	ea48 2101 	orr.w	r1, r8, r1, lsl #8
c0de3d2c:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de3d30:	eba1 010a 	sub.w	r1, r1, sl
c0de3d34:	4401      	add	r1, r0
c0de3d36:	9804      	ldr	r0, [sp, #16]
c0de3d38:	ea4e 2000 	orr.w	r0, lr, r0, lsl #8
c0de3d3c:	4450      	add	r0, sl
c0de3d3e:	47c0      	blx	r8
c0de3d40:	f897 c000 	ldrb.w	ip, [r7]
c0de3d44:	f897 e001 	ldrb.w	lr, [r7, #1]
c0de3d48:	f996 7001 	ldrsb.w	r7, [r6, #1]
c0de3d4c:	7831      	ldrb	r1, [r6, #0]
c0de3d4e:	7820      	ldrb	r0, [r4, #0]
c0de3d50:	7864      	ldrb	r4, [r4, #1]
c0de3d52:	f995 3001 	ldrsb.w	r3, [r5, #1]
c0de3d56:	782d      	ldrb	r5, [r5, #0]
c0de3d58:	9a14      	ldr	r2, [sp, #80]	@ 0x50
c0de3d5a:	7a36      	ldrb	r6, [r6, #8]
c0de3d5c:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
c0de3d60:	ea40 2004 	orr.w	r0, r0, r4, lsl #8
c0de3d64:	e9cd 2b00 	strd	r2, fp, [sp]
c0de3d68:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de3d6c:	9602      	str	r6, [sp, #8]
c0de3d6e:	eba1 010a 	sub.w	r1, r1, sl
c0de3d72:	4408      	add	r0, r1
c0de3d74:	ea45 2103 	orr.w	r1, r5, r3, lsl #8
c0de3d78:	2303      	movs	r3, #3
c0de3d7a:	eba1 010a 	sub.w	r1, r1, sl
c0de3d7e:	4411      	add	r1, r2
c0de3d80:	9a08      	ldr	r2, [sp, #32]
c0de3d82:	47c0      	blx	r8
c0de3d84:	b00c      	add	sp, #48	@ 0x30
c0de3d86:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3d8a:	bf00      	nop
c0de3d8c:	000093f6 	.word	0x000093f6
c0de3d90:	fffffd43 	.word	0xfffffd43

c0de3d94 <nbgl_drawIcon>:
c0de3d94:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3d96:	4614      	mov	r4, r2
c0de3d98:	460a      	mov	r2, r1
c0de3d9a:	f813 1f06 	ldrb.w	r1, [r3, #6]!
c0de3d9e:	f813 5c01 	ldrb.w	r5, [r3, #-1]
c0de3da2:	785e      	ldrb	r6, [r3, #1]
c0de3da4:	789f      	ldrb	r7, [r3, #2]
c0de3da6:	78db      	ldrb	r3, [r3, #3]
c0de3da8:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
c0de3dac:	ea47 2303 	orr.w	r3, r7, r3, lsl #8
c0de3db0:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de3db4:	b13d      	cbz	r5, c0de3dc6 <nbgl_drawIcon+0x32>
c0de3db6:	4a06      	ldr	r2, [pc, #24]	@ (c0de3dd0 <nbgl_drawIcon+0x3c>)
c0de3db8:	eb09 0302 	add.w	r3, r9, r2
c0de3dbc:	4622      	mov	r2, r4
c0de3dbe:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3dc2:	f006 bf33 	b.w	c0deac2c <nbgl_frontDrawImageFile>
c0de3dc6:	4623      	mov	r3, r4
c0de3dc8:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3dcc:	f006 bf0e 	b.w	c0deabec <nbgl_frontDrawImage>
c0de3dd0:	00001544 	.word	0x00001544

c0de3dd4 <nbgl_drawText>:
c0de3dd4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3dd8:	b090      	sub	sp, #64	@ 0x40
c0de3dda:	4604      	mov	r4, r0
c0de3ddc:	f890 8000 	ldrb.w	r8, [r0]
c0de3de0:	7846      	ldrb	r6, [r0, #1]
c0de3de2:	4618      	mov	r0, r3
c0de3de4:	469b      	mov	fp, r3
c0de3de6:	4617      	mov	r7, r2
c0de3de8:	f8ad 203a 	strh.w	r2, [sp, #58]	@ 0x3a
c0de3dec:	910f      	str	r1, [sp, #60]	@ 0x3c
c0de3dee:	f000 f8ea 	bl	c0de3fc6 <nbgl_getFont>
c0de3df2:	4605      	mov	r5, r0
c0de3df4:	7a20      	ldrb	r0, [r4, #8]
c0de3df6:	9405      	str	r4, [sp, #20]
c0de3df8:	f10d 0a3c 	add.w	sl, sp, #60	@ 0x3c
c0de3dfc:	f10d 042f 	add.w	r4, sp, #47	@ 0x2f
c0de3e00:	f88d 0038 	strb.w	r0, [sp, #56]	@ 0x38
c0de3e04:	7968      	ldrb	r0, [r5, #5]
c0de3e06:	f88d 0039 	strb.w	r0, [sp, #57]	@ 0x39
c0de3e0a:	ea48 2006 	orr.w	r0, r8, r6, lsl #8
c0de3e0e:	f10d 063a 	add.w	r6, sp, #58	@ 0x3a
c0de3e12:	900a      	str	r0, [sp, #40]	@ 0x28
c0de3e14:	2f00      	cmp	r7, #0
c0de3e16:	f000 80bc 	beq.w	c0de3f92 <nbgl_drawText+0x1be>
c0de3e1a:	4650      	mov	r0, sl
c0de3e1c:	4631      	mov	r1, r6
c0de3e1e:	4622      	mov	r2, r4
c0de3e20:	f000 f8d3 	bl	c0de3fca <nbgl_popUnicodeChar>
c0de3e24:	4680      	mov	r8, r0
c0de3e26:	f89d 002f 	ldrb.w	r0, [sp, #47]	@ 0x2f
c0de3e2a:	b110      	cbz	r0, c0de3e32 <nbgl_drawText+0x5e>
c0de3e2c:	f8bd 703a 	ldrh.w	r7, [sp, #58]	@ 0x3a
c0de3e30:	e7f0      	b.n	c0de3e14 <nbgl_drawText+0x40>
c0de3e32:	f1b8 0f08 	cmp.w	r8, #8
c0de3e36:	d030      	beq.n	c0de3e9a <nbgl_drawText+0xc6>
c0de3e38:	f1b8 0f0c 	cmp.w	r8, #12
c0de3e3c:	f000 80a9 	beq.w	c0de3f92 <nbgl_drawText+0x1be>
c0de3e40:	7ae8      	ldrb	r0, [r5, #11]
c0de3e42:	4580      	cmp	r8, r0
c0de3e44:	d3f2      	bcc.n	c0de3e2c <nbgl_drawText+0x58>
c0de3e46:	7b29      	ldrb	r1, [r5, #12]
c0de3e48:	4588      	cmp	r8, r1
c0de3e4a:	d8ef      	bhi.n	c0de3e2c <nbgl_drawText+0x58>
c0de3e4c:	6929      	ldr	r1, [r5, #16]
c0de3e4e:	eba8 0000 	sub.w	r0, r8, r0
c0de3e52:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de3e56:	f006 fe91 	bl	c0deab7c <pic>
c0de3e5a:	4607      	mov	r7, r0
c0de3e5c:	6800      	ldr	r0, [r0, #0]
c0de3e5e:	6969      	ldr	r1, [r5, #20]
c0de3e60:	4408      	add	r0, r1
c0de3e62:	f006 fe8b 	bl	c0deab7c <pic>
c0de3e66:	9009      	str	r0, [sp, #36]	@ 0x24
c0de3e68:	687f      	ldr	r7, [r7, #4]
c0de3e6a:	7a68      	ldrb	r0, [r5, #9]
c0de3e6c:	f895 c006 	ldrb.w	ip, [r5, #6]
c0de3e70:	f3c7 0245 	ubfx	r2, r7, #1, #6
c0de3e74:	b310      	cbz	r0, c0de3ebc <nbgl_drawText+0xe8>
c0de3e76:	f3c7 5045 	ubfx	r0, r7, #21, #6
c0de3e7a:	f3c7 21c5 	ubfx	r1, r7, #11, #6
c0de3e7e:	ebac 0c00 	sub.w	ip, ip, r0
c0de3e82:	f3c7 4043 	ubfx	r0, r7, #17, #4
c0de3e86:	1a13      	subs	r3, r2, r0
c0de3e88:	7aa8      	ldrb	r0, [r5, #10]
c0de3e8a:	4408      	add	r0, r1
c0de3e8c:	9007      	str	r0, [sp, #28]
c0de3e8e:	f3c7 10c3 	ubfx	r0, r7, #7, #4
c0de3e92:	9006      	str	r0, [sp, #24]
c0de3e94:	2000      	movs	r0, #0
c0de3e96:	9004      	str	r0, [sp, #16]
c0de3e98:	e01c      	b.n	c0de3ed4 <nbgl_drawText+0x100>
c0de3e9a:	fa5f f08b 	uxtb.w	r0, fp
c0de3e9e:	2808      	cmp	r0, #8
c0de3ea0:	d005      	beq.n	c0de3eae <nbgl_drawText+0xda>
c0de3ea2:	280a      	cmp	r0, #10
c0de3ea4:	d1c2      	bne.n	c0de3e2c <nbgl_drawText+0x58>
c0de3ea6:	f04f 0b08 	mov.w	fp, #8
c0de3eaa:	2008      	movs	r0, #8
c0de3eac:	e002      	b.n	c0de3eb4 <nbgl_drawText+0xe0>
c0de3eae:	f04f 0b0a 	mov.w	fp, #10
c0de3eb2:	200a      	movs	r0, #10
c0de3eb4:	f000 f887 	bl	c0de3fc6 <nbgl_getFont>
c0de3eb8:	4605      	mov	r5, r0
c0de3eba:	e7b7      	b.n	c0de3e2c <nbgl_drawText+0x58>
c0de3ebc:	2038      	movs	r0, #56	@ 0x38
c0de3ebe:	f3c7 21c2 	ubfx	r1, r7, #11, #3
c0de3ec2:	4613      	mov	r3, r2
c0de3ec4:	ea00 1017 	and.w	r0, r0, r7, lsr #4
c0de3ec8:	4408      	add	r0, r1
c0de3eca:	9004      	str	r0, [sp, #16]
c0de3ecc:	2000      	movs	r0, #0
c0de3ece:	9006      	str	r0, [sp, #24]
c0de3ed0:	2000      	movs	r0, #0
c0de3ed2:	9007      	str	r0, [sp, #28]
c0de3ed4:	7ae9      	ldrb	r1, [r5, #11]
c0de3ed6:	fa5f f088 	uxtb.w	r0, r8
c0de3eda:	9208      	str	r2, [sp, #32]
c0de3edc:	4281      	cmp	r1, r0
c0de3ede:	d802      	bhi.n	c0de3ee6 <nbgl_drawText+0x112>
c0de3ee0:	7b2a      	ldrb	r2, [r5, #12]
c0de3ee2:	4282      	cmp	r2, r0
c0de3ee4:	d231      	bcs.n	c0de3f4a <nbgl_drawText+0x176>
c0de3ee6:	4698      	mov	r8, r3
c0de3ee8:	2200      	movs	r2, #0
c0de3eea:	9906      	ldr	r1, [sp, #24]
c0de3eec:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de3eee:	f8dd e01c 	ldr.w	lr, [sp, #28]
c0de3ef2:	4408      	add	r0, r1
c0de3ef4:	f8ad 0030 	strh.w	r0, [sp, #48]	@ 0x30
c0de3ef8:	ebac 000e 	sub.w	r0, ip, lr
c0de3efc:	f8ad 0036 	strh.w	r0, [sp, #54]	@ 0x36
c0de3f00:	eba8 0001 	sub.w	r0, r8, r1
c0de3f04:	9905      	ldr	r1, [sp, #20]
c0de3f06:	f8ad 0034 	strh.w	r0, [sp, #52]	@ 0x34
c0de3f0a:	7888      	ldrb	r0, [r1, #2]
c0de3f0c:	78c9      	ldrb	r1, [r1, #3]
c0de3f0e:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3f12:	4470      	add	r0, lr
c0de3f14:	f8ad 0032 	strh.w	r0, [sp, #50]	@ 0x32
c0de3f18:	b14a      	cbz	r2, c0de3f2e <nbgl_drawText+0x15a>
c0de3f1a:	f017 0001 	ands.w	r0, r7, #1
c0de3f1e:	d106      	bne.n	c0de3f2e <nbgl_drawText+0x15a>
c0de3f20:	a80c      	add	r0, sp, #48	@ 0x30
c0de3f22:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de3f24:	9b18      	ldr	r3, [sp, #96]	@ 0x60
c0de3f26:	2200      	movs	r2, #0
c0de3f28:	f006 fe60 	bl	c0deabec <nbgl_frontDrawImage>
c0de3f2c:	e006      	b.n	c0de3f3c <nbgl_drawText+0x168>
c0de3f2e:	9804      	ldr	r0, [sp, #16]
c0de3f30:	9b18      	ldr	r3, [sp, #96]	@ 0x60
c0de3f32:	9000      	str	r0, [sp, #0]
c0de3f34:	a80c      	add	r0, sp, #48	@ 0x30
c0de3f36:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de3f38:	f006 fe66 	bl	c0deac08 <nbgl_frontDrawImageRle>
c0de3f3c:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de3f3e:	9908      	ldr	r1, [sp, #32]
c0de3f40:	4408      	add	r0, r1
c0de3f42:	7a29      	ldrb	r1, [r5, #8]
c0de3f44:	1a40      	subs	r0, r0, r1
c0de3f46:	900a      	str	r0, [sp, #40]	@ 0x28
c0de3f48:	e770      	b.n	c0de3e2c <nbgl_drawText+0x58>
c0de3f4a:	eba0 0101 	sub.w	r1, r0, r1
c0de3f4e:	4698      	mov	r8, r3
c0de3f50:	d913      	bls.n	c0de3f7a <nbgl_drawText+0x1a6>
c0de3f52:	6928      	ldr	r0, [r5, #16]
c0de3f54:	b289      	uxth	r1, r1
c0de3f56:	f8cd c00c 	str.w	ip, [sp, #12]
c0de3f5a:	9101      	str	r1, [sp, #4]
c0de3f5c:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de3f60:	f006 fe0c 	bl	c0deab7c <pic>
c0de3f64:	9002      	str	r0, [sp, #8]
c0de3f66:	6928      	ldr	r0, [r5, #16]
c0de3f68:	9901      	ldr	r1, [sp, #4]
c0de3f6a:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de3f6e:	3008      	adds	r0, #8
c0de3f70:	f006 fe04 	bl	c0deab7c <pic>
c0de3f74:	e9dd 1c02 	ldrd	r1, ip, [sp, #8]
c0de3f78:	e006      	b.n	c0de3f88 <nbgl_drawText+0x1b4>
c0de3f7a:	4282      	cmp	r2, r0
c0de3f7c:	d1b4      	bne.n	c0de3ee8 <nbgl_drawText+0x114>
c0de3f7e:	b288      	uxth	r0, r1
c0de3f80:	6929      	ldr	r1, [r5, #16]
c0de3f82:	eb01 01c0 	add.w	r1, r1, r0, lsl #3
c0de3f86:	4628      	mov	r0, r5
c0de3f88:	6809      	ldr	r1, [r1, #0]
c0de3f8a:	6800      	ldr	r0, [r0, #0]
c0de3f8c:	1a40      	subs	r0, r0, r1
c0de3f8e:	b282      	uxth	r2, r0
c0de3f90:	e7ab      	b.n	c0de3eea <nbgl_drawText+0x116>
c0de3f92:	fa5f f08b 	uxtb.w	r0, fp
c0de3f96:	b010      	add	sp, #64	@ 0x40
c0de3f98:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3f9c <OUTLINED_FUNCTION_0>:
c0de3f9c:	f8ad 0024 	strh.w	r0, [sp, #36]	@ 0x24
c0de3fa0:	f814 0f02 	ldrb.w	r0, [r4, #2]!
c0de3fa4:	7861      	ldrb	r1, [r4, #1]
c0de3fa6:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3faa:	4770      	bx	lr

c0de3fac <OUTLINED_FUNCTION_1>:
c0de3fac:	7830      	ldrb	r0, [r6, #0]
c0de3fae:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3fb2:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de3fb6:	1bc0      	subs	r0, r0, r7
c0de3fb8:	4408      	add	r0, r1
c0de3fba:	4770      	bx	lr

c0de3fbc <OUTLINED_FUNCTION_2>:
c0de3fbc:	f8ad 1006 	strh.w	r1, [sp, #6]
c0de3fc0:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de3fc4:	4770      	bx	lr

c0de3fc6 <nbgl_getFont>:
c0de3fc6:	f006 be49 	b.w	c0deac5c <nbgl_font_getFont>

c0de3fca <nbgl_popUnicodeChar>:
c0de3fca:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3fcc:	6804      	ldr	r4, [r0, #0]
c0de3fce:	2501      	movs	r5, #1
c0de3fd0:	4626      	mov	r6, r4
c0de3fd2:	f816 3b01 	ldrb.w	r3, [r6], #1
c0de3fd6:	7015      	strb	r5, [r2, #0]
c0de3fd8:	2bf0      	cmp	r3, #240	@ 0xf0
c0de3fda:	d315      	bcc.n	c0de4008 <nbgl_popUnicodeChar+0x3e>
c0de3fdc:	880d      	ldrh	r5, [r1, #0]
c0de3fde:	2d04      	cmp	r5, #4
c0de3fe0:	d315      	bcc.n	c0de400e <nbgl_popUnicodeChar+0x44>
c0de3fe2:	f44f 12e0 	mov.w	r2, #1835008	@ 0x1c0000
c0de3fe6:	78a6      	ldrb	r6, [r4, #2]
c0de3fe8:	78e7      	ldrb	r7, [r4, #3]
c0de3fea:	ea02 4283 	and.w	r2, r2, r3, lsl #18
c0de3fee:	7863      	ldrb	r3, [r4, #1]
c0de3ff0:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
c0de3ff4:	ea42 3203 	orr.w	r2, r2, r3, lsl #12
c0de3ff8:	f006 033f 	and.w	r3, r6, #63	@ 0x3f
c0de3ffc:	1d26      	adds	r6, r4, #4
c0de3ffe:	ea42 1283 	orr.w	r2, r2, r3, lsl #6
c0de4002:	f007 033f 	and.w	r3, r7, #63	@ 0x3f
c0de4006:	e00f      	b.n	c0de4028 <nbgl_popUnicodeChar+0x5e>
c0de4008:	2be0      	cmp	r3, #224	@ 0xe0
c0de400a:	d30f      	bcc.n	c0de402c <nbgl_popUnicodeChar+0x62>
c0de400c:	880d      	ldrh	r5, [r1, #0]
c0de400e:	2d03      	cmp	r5, #3
c0de4010:	d30f      	bcc.n	c0de4032 <nbgl_popUnicodeChar+0x68>
c0de4012:	7862      	ldrb	r2, [r4, #1]
c0de4014:	031b      	lsls	r3, r3, #12
c0de4016:	78a6      	ldrb	r6, [r4, #2]
c0de4018:	b29b      	uxth	r3, r3
c0de401a:	f002 023f 	and.w	r2, r2, #63	@ 0x3f
c0de401e:	ea43 1282 	orr.w	r2, r3, r2, lsl #6
c0de4022:	f006 033f 	and.w	r3, r6, #63	@ 0x3f
c0de4026:	1ce6      	adds	r6, r4, #3
c0de4028:	4413      	add	r3, r2
c0de402a:	e00e      	b.n	c0de404a <nbgl_popUnicodeChar+0x80>
c0de402c:	880d      	ldrh	r5, [r1, #0]
c0de402e:	2bc2      	cmp	r3, #194	@ 0xc2
c0de4030:	d309      	bcc.n	c0de4046 <nbgl_popUnicodeChar+0x7c>
c0de4032:	2d02      	cmp	r5, #2
c0de4034:	d307      	bcc.n	c0de4046 <nbgl_popUnicodeChar+0x7c>
c0de4036:	7862      	ldrb	r2, [r4, #1]
c0de4038:	1ca6      	adds	r6, r4, #2
c0de403a:	f002 023f 	and.w	r2, r2, #63	@ 0x3f
c0de403e:	f363 128a 	bfi	r2, r3, #6, #5
c0de4042:	4613      	mov	r3, r2
c0de4044:	e001      	b.n	c0de404a <nbgl_popUnicodeChar+0x80>
c0de4046:	2700      	movs	r7, #0
c0de4048:	7017      	strb	r7, [r2, #0]
c0de404a:	6006      	str	r6, [r0, #0]
c0de404c:	1ba0      	subs	r0, r4, r6
c0de404e:	4428      	add	r0, r5
c0de4050:	8008      	strh	r0, [r1, #0]
c0de4052:	4618      	mov	r0, r3
c0de4054:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de4056 <nbgl_getSingleLineTextWidth>:
c0de4056:	2201      	movs	r2, #1
c0de4058:	f64f 73ff 	movw	r3, #65535	@ 0xffff
c0de405c:	f000 b800 	b.w	c0de4060 <getTextWidth>

c0de4060 <getTextWidth>:
c0de4060:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de4064:	461c      	mov	r4, r3
c0de4066:	9201      	str	r2, [sp, #4]
c0de4068:	460f      	mov	r7, r1
c0de406a:	4605      	mov	r5, r0
c0de406c:	9103      	str	r1, [sp, #12]
c0de406e:	f7ff ffaa 	bl	c0de3fc6 <nbgl_getFont>
c0de4072:	4606      	mov	r6, r0
c0de4074:	4638      	mov	r0, r7
c0de4076:	f007 f9ab 	bl	c0deb3d0 <strlen>
c0de407a:	42a0      	cmp	r0, r4
c0de407c:	bf38      	it	cc
c0de407e:	4604      	movcc	r4, r0
c0de4080:	f8ad 400a 	strh.w	r4, [sp, #10]
c0de4084:	b2a0      	uxth	r0, r4
c0de4086:	f10d 0a0c 	add.w	sl, sp, #12
c0de408a:	f10d 0b0a 	add.w	fp, sp, #10
c0de408e:	f10d 0709 	add.w	r7, sp, #9
c0de4092:	f04f 0800 	mov.w	r8, #0
c0de4096:	2400      	movs	r4, #0
c0de4098:	b358      	cbz	r0, c0de40f2 <getTextWidth+0x92>
c0de409a:	4650      	mov	r0, sl
c0de409c:	4659      	mov	r1, fp
c0de409e:	463a      	mov	r2, r7
c0de40a0:	f7ff ff93 	bl	c0de3fca <nbgl_popUnicodeChar>
c0de40a4:	280a      	cmp	r0, #10
c0de40a6:	d00a      	beq.n	c0de40be <getTextWidth+0x5e>
c0de40a8:	4601      	mov	r1, r0
c0de40aa:	2808      	cmp	r0, #8
c0de40ac:	d10c      	bne.n	c0de40c8 <getTextWidth+0x68>
c0de40ae:	b2e8      	uxtb	r0, r5
c0de40b0:	2808      	cmp	r0, #8
c0de40b2:	d016      	beq.n	c0de40e2 <getTextWidth+0x82>
c0de40b4:	280a      	cmp	r0, #10
c0de40b6:	d119      	bne.n	c0de40ec <getTextWidth+0x8c>
c0de40b8:	2508      	movs	r5, #8
c0de40ba:	2008      	movs	r0, #8
c0de40bc:	e013      	b.n	c0de40e6 <getTextWidth+0x86>
c0de40be:	9801      	ldr	r0, [sp, #4]
c0de40c0:	b9b8      	cbnz	r0, c0de40f2 <getTextWidth+0x92>
c0de40c2:	f04f 0800 	mov.w	r8, #0
c0de40c6:	e011      	b.n	c0de40ec <getTextWidth+0x8c>
c0de40c8:	f89d 2009 	ldrb.w	r2, [sp, #9]
c0de40cc:	4630      	mov	r0, r6
c0de40ce:	f000 f819 	bl	c0de4104 <getCharWidth>
c0de40d2:	4480      	add	r8, r0
c0de40d4:	b2a1      	uxth	r1, r4
c0de40d6:	fa1f f088 	uxth.w	r0, r8
c0de40da:	4288      	cmp	r0, r1
c0de40dc:	bf88      	it	hi
c0de40de:	4644      	movhi	r4, r8
c0de40e0:	e004      	b.n	c0de40ec <getTextWidth+0x8c>
c0de40e2:	250a      	movs	r5, #10
c0de40e4:	200a      	movs	r0, #10
c0de40e6:	f006 fdb9 	bl	c0deac5c <nbgl_font_getFont>
c0de40ea:	4606      	mov	r6, r0
c0de40ec:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de40f0:	e7d2      	b.n	c0de4098 <getTextWidth+0x38>
c0de40f2:	b2a0      	uxth	r0, r4
c0de40f4:	b004      	add	sp, #16
c0de40f6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de40fa <nbgl_getTextWidth>:
c0de40fa:	2200      	movs	r2, #0
c0de40fc:	f64f 73ff 	movw	r3, #65535	@ 0xffff
c0de4100:	f7ff bfae 	b.w	c0de4060 <getTextWidth>

c0de4104 <getCharWidth>:
c0de4104:	b510      	push	{r4, lr}
c0de4106:	b932      	cbnz	r2, c0de4116 <getCharWidth+0x12>
c0de4108:	4604      	mov	r4, r0
c0de410a:	7ac0      	ldrb	r0, [r0, #11]
c0de410c:	4288      	cmp	r0, r1
c0de410e:	d802      	bhi.n	c0de4116 <getCharWidth+0x12>
c0de4110:	7b22      	ldrb	r2, [r4, #12]
c0de4112:	428a      	cmp	r2, r1
c0de4114:	d202      	bcs.n	c0de411c <getCharWidth+0x18>
c0de4116:	2000      	movs	r0, #0
c0de4118:	b2c0      	uxtb	r0, r0
c0de411a:	bd10      	pop	{r4, pc}
c0de411c:	1a08      	subs	r0, r1, r0
c0de411e:	6921      	ldr	r1, [r4, #16]
c0de4120:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de4124:	f006 fd2a 	bl	c0deab7c <pic>
c0de4128:	7900      	ldrb	r0, [r0, #4]
c0de412a:	7a21      	ldrb	r1, [r4, #8]
c0de412c:	f3c0 0045 	ubfx	r0, r0, #1, #6
c0de4130:	1a40      	subs	r0, r0, r1
c0de4132:	e7f1      	b.n	c0de4118 <getCharWidth+0x14>

c0de4134 <nbgl_getFontHeight>:
c0de4134:	b580      	push	{r7, lr}
c0de4136:	f7ff ff46 	bl	c0de3fc6 <nbgl_getFont>
c0de413a:	7980      	ldrb	r0, [r0, #6]
c0de413c:	bd80      	pop	{r7, pc}

c0de413e <nbgl_getFontLineHeight>:
c0de413e:	b580      	push	{r7, lr}
c0de4140:	f7ff ff41 	bl	c0de3fc6 <nbgl_getFont>
c0de4144:	79c0      	ldrb	r0, [r0, #7]
c0de4146:	bd80      	pop	{r7, pc}

c0de4148 <nbgl_getTextLength>:
c0de4148:	b510      	push	{r4, lr}
c0de414a:	2100      	movs	r1, #0
c0de414c:	2201      	movs	r2, #1
c0de414e:	f241 4301 	movw	r3, #5121	@ 0x1401
c0de4152:	5c44      	ldrb	r4, [r0, r1]
c0de4154:	2c0c      	cmp	r4, #12
c0de4156:	d805      	bhi.n	c0de4164 <nbgl_getTextLength+0x1c>
c0de4158:	fa02 f404 	lsl.w	r4, r2, r4
c0de415c:	421c      	tst	r4, r3
c0de415e:	bf1c      	itt	ne
c0de4160:	b288      	uxthne	r0, r1
c0de4162:	bd10      	popne	{r4, pc}
c0de4164:	3101      	adds	r1, #1
c0de4166:	e7f4      	b.n	c0de4152 <nbgl_getTextLength+0xa>

c0de4168 <nbgl_getTextMaxLenAndWidth>:
c0de4168:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de416c:	b086      	sub	sp, #24
c0de416e:	461c      	mov	r4, r3
c0de4170:	9203      	str	r2, [sp, #12]
c0de4172:	460f      	mov	r7, r1
c0de4174:	4606      	mov	r6, r0
c0de4176:	9105      	str	r1, [sp, #20]
c0de4178:	f7ff ff25 	bl	c0de3fc6 <nbgl_getFont>
c0de417c:	4605      	mov	r5, r0
c0de417e:	4638      	mov	r0, r7
c0de4180:	f7ff ffe2 	bl	c0de4148 <nbgl_getTextLength>
c0de4184:	4680      	mov	r8, r0
c0de4186:	2000      	movs	r0, #0
c0de4188:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
c0de418a:	2100      	movs	r1, #0
c0de418c:	f10d 0b11 	add.w	fp, sp, #17
c0de4190:	9002      	str	r0, [sp, #8]
c0de4192:	2000      	movs	r0, #0
c0de4194:	f8ad 8012 	strh.w	r8, [sp, #18]
c0de4198:	8039      	strh	r1, [r7, #0]
c0de419a:	8021      	strh	r1, [r4, #0]
c0de419c:	9001      	str	r0, [sp, #4]
c0de419e:	ea5f 4008 	movs.w	r0, r8, lsl #16
c0de41a2:	d051      	beq.n	c0de4248 <nbgl_getTextMaxLenAndWidth+0xe0>
c0de41a4:	a805      	add	r0, sp, #20
c0de41a6:	f10d 0112 	add.w	r1, sp, #18
c0de41aa:	465a      	mov	r2, fp
c0de41ac:	f7ff ff0d 	bl	c0de3fca <nbgl_popUnicodeChar>
c0de41b0:	2808      	cmp	r0, #8
c0de41b2:	d029      	beq.n	c0de4208 <nbgl_getTextMaxLenAndWidth+0xa0>
c0de41b4:	4682      	mov	sl, r0
c0de41b6:	280c      	cmp	r0, #12
c0de41b8:	d03f      	beq.n	c0de423a <nbgl_getTextMaxLenAndWidth+0xd2>
c0de41ba:	f1ba 0f0a 	cmp.w	sl, #10
c0de41be:	d03c      	beq.n	c0de423a <nbgl_getTextMaxLenAndWidth+0xd2>
c0de41c0:	f89d 2011 	ldrb.w	r2, [sp, #17]
c0de41c4:	4628      	mov	r0, r5
c0de41c6:	4651      	mov	r1, sl
c0de41c8:	f7ff ff9c 	bl	c0de4104 <getCharWidth>
c0de41cc:	b340      	cbz	r0, c0de4220 <nbgl_getTextMaxLenAndWidth+0xb8>
c0de41ce:	990f      	ldr	r1, [sp, #60]	@ 0x3c
c0de41d0:	b149      	cbz	r1, c0de41e6 <nbgl_getTextMaxLenAndWidth+0x7e>
c0de41d2:	f1ba 0f20 	cmp.w	sl, #32
c0de41d6:	bf18      	it	ne
c0de41d8:	f1ba 0f5f 	cmpne.w	sl, #95	@ 0x5f
c0de41dc:	d129      	bne.n	c0de4232 <nbgl_getTextMaxLenAndWidth+0xca>
c0de41de:	8839      	ldrh	r1, [r7, #0]
c0de41e0:	9102      	str	r1, [sp, #8]
c0de41e2:	8821      	ldrh	r1, [r4, #0]
c0de41e4:	9101      	str	r1, [sp, #4]
c0de41e6:	8839      	ldrh	r1, [r7, #0]
c0de41e8:	9a03      	ldr	r2, [sp, #12]
c0de41ea:	4401      	add	r1, r0
c0de41ec:	4291      	cmp	r1, r2
c0de41ee:	d82e      	bhi.n	c0de424e <nbgl_getTextMaxLenAndWidth+0xe6>
c0de41f0:	f8bd 1012 	ldrh.w	r1, [sp, #18]
c0de41f4:	8823      	ldrh	r3, [r4, #0]
c0de41f6:	eba8 0201 	sub.w	r2, r8, r1
c0de41fa:	4688      	mov	r8, r1
c0de41fc:	441a      	add	r2, r3
c0de41fe:	8022      	strh	r2, [r4, #0]
c0de4200:	883a      	ldrh	r2, [r7, #0]
c0de4202:	4410      	add	r0, r2
c0de4204:	8038      	strh	r0, [r7, #0]
c0de4206:	e7ca      	b.n	c0de419e <nbgl_getTextMaxLenAndWidth+0x36>
c0de4208:	b2f0      	uxtb	r0, r6
c0de420a:	280a      	cmp	r0, #10
c0de420c:	d003      	beq.n	c0de4216 <nbgl_getTextMaxLenAndWidth+0xae>
c0de420e:	2808      	cmp	r0, #8
c0de4210:	d106      	bne.n	c0de4220 <nbgl_getTextMaxLenAndWidth+0xb8>
c0de4212:	260a      	movs	r6, #10
c0de4214:	e000      	b.n	c0de4218 <nbgl_getTextMaxLenAndWidth+0xb0>
c0de4216:	2608      	movs	r6, #8
c0de4218:	4630      	mov	r0, r6
c0de421a:	f006 fd1f 	bl	c0deac5c <nbgl_font_getFont>
c0de421e:	4605      	mov	r5, r0
c0de4220:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de4224:	8822      	ldrh	r2, [r4, #0]
c0de4226:	eba8 0100 	sub.w	r1, r8, r0
c0de422a:	4680      	mov	r8, r0
c0de422c:	4411      	add	r1, r2
c0de422e:	8021      	strh	r1, [r4, #0]
c0de4230:	e7b5      	b.n	c0de419e <nbgl_getTextMaxLenAndWidth+0x36>
c0de4232:	f1ba 0f2d 	cmp.w	sl, #45	@ 0x2d
c0de4236:	d0d2      	beq.n	c0de41de <nbgl_getTextMaxLenAndWidth+0x76>
c0de4238:	e7d5      	b.n	c0de41e6 <nbgl_getTextMaxLenAndWidth+0x7e>
c0de423a:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de423e:	8821      	ldrh	r1, [r4, #0]
c0de4240:	eba8 0000 	sub.w	r0, r8, r0
c0de4244:	4408      	add	r0, r1
c0de4246:	8020      	strh	r0, [r4, #0]
c0de4248:	b006      	add	sp, #24
c0de424a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de424e:	980f      	ldr	r0, [sp, #60]	@ 0x3c
c0de4250:	9902      	ldr	r1, [sp, #8]
c0de4252:	2800      	cmp	r0, #0
c0de4254:	d0f8      	beq.n	c0de4248 <nbgl_getTextMaxLenAndWidth+0xe0>
c0de4256:	2900      	cmp	r1, #0
c0de4258:	d0f6      	beq.n	c0de4248 <nbgl_getTextMaxLenAndWidth+0xe0>
c0de425a:	9801      	ldr	r0, [sp, #4]
c0de425c:	3001      	adds	r0, #1
c0de425e:	8020      	strh	r0, [r4, #0]
c0de4260:	8039      	strh	r1, [r7, #0]
c0de4262:	e7f1      	b.n	c0de4248 <nbgl_getTextMaxLenAndWidth+0xe0>

c0de4264 <nbgl_getTextMaxLenInNbLines>:
c0de4264:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4268:	b086      	sub	sp, #24
c0de426a:	461d      	mov	r5, r3
c0de426c:	9202      	str	r2, [sp, #8]
c0de426e:	460e      	mov	r6, r1
c0de4270:	4607      	mov	r7, r0
c0de4272:	9105      	str	r1, [sp, #20]
c0de4274:	f7ff fea7 	bl	c0de3fc6 <nbgl_getFont>
c0de4278:	4604      	mov	r4, r0
c0de427a:	4630      	mov	r0, r6
c0de427c:	9601      	str	r6, [sp, #4]
c0de427e:	f007 f8a7 	bl	c0deb3d0 <strlen>
c0de4282:	f8dd a03c 	ldr.w	sl, [sp, #60]	@ 0x3c
c0de4286:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de428a:	2100      	movs	r1, #0
c0de428c:	b280      	uxth	r0, r0
c0de428e:	f04f 0b00 	mov.w	fp, #0
c0de4292:	f04f 0800 	mov.w	r8, #0
c0de4296:	9103      	str	r1, [sp, #12]
c0de4298:	2800      	cmp	r0, #0
c0de429a:	d066      	beq.n	c0de436a <nbgl_getTextMaxLenInNbLines+0x106>
c0de429c:	0428      	lsls	r0, r5, #16
c0de429e:	d064      	beq.n	c0de436a <nbgl_getTextMaxLenInNbLines+0x106>
c0de42a0:	9e05      	ldr	r6, [sp, #20]
c0de42a2:	a805      	add	r0, sp, #20
c0de42a4:	f10d 0112 	add.w	r1, sp, #18
c0de42a8:	f10d 0211 	add.w	r2, sp, #17
c0de42ac:	f7ff fe8d 	bl	c0de3fca <nbgl_popUnicodeChar>
c0de42b0:	4601      	mov	r1, r0
c0de42b2:	f1ba 0f00 	cmp.w	sl, #0
c0de42b6:	d012      	beq.n	c0de42de <nbgl_getTextMaxLenInNbLines+0x7a>
c0de42b8:	f1a1 0008 	sub.w	r0, r1, #8
c0de42bc:	2818      	cmp	r0, #24
c0de42be:	d805      	bhi.n	c0de42cc <nbgl_getTextMaxLenInNbLines+0x68>
c0de42c0:	2201      	movs	r2, #1
c0de42c2:	fa02 f000 	lsl.w	r0, r2, r0
c0de42c6:	4a2f      	ldr	r2, [pc, #188]	@ (c0de4384 <nbgl_getTextMaxLenInNbLines+0x120>)
c0de42c8:	4210      	tst	r0, r2
c0de42ca:	d103      	bne.n	c0de42d4 <nbgl_getTextMaxLenInNbLines+0x70>
c0de42cc:	295f      	cmp	r1, #95	@ 0x5f
c0de42ce:	d001      	beq.n	c0de42d4 <nbgl_getTextMaxLenInNbLines+0x70>
c0de42d0:	292d      	cmp	r1, #45	@ 0x2d
c0de42d2:	d104      	bne.n	c0de42de <nbgl_getTextMaxLenInNbLines+0x7a>
c0de42d4:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de42d8:	f8dd b014 	ldr.w	fp, [sp, #20]
c0de42dc:	9003      	str	r0, [sp, #12]
c0de42de:	2908      	cmp	r1, #8
c0de42e0:	d01d      	beq.n	c0de431e <nbgl_getTextMaxLenInNbLines+0xba>
c0de42e2:	290a      	cmp	r1, #10
c0de42e4:	d023      	beq.n	c0de432e <nbgl_getTextMaxLenInNbLines+0xca>
c0de42e6:	290c      	cmp	r1, #12
c0de42e8:	d03e      	beq.n	c0de4368 <nbgl_getTextMaxLenInNbLines+0x104>
c0de42ea:	f89d 2011 	ldrb.w	r2, [sp, #17]
c0de42ee:	4620      	mov	r0, r4
c0de42f0:	f7ff ff08 	bl	c0de4104 <getCharWidth>
c0de42f4:	b3a8      	cbz	r0, c0de4362 <nbgl_getTextMaxLenInNbLines+0xfe>
c0de42f6:	fa1f f188 	uxth.w	r1, r8
c0de42fa:	eb00 0801 	add.w	r8, r0, r1
c0de42fe:	9802      	ldr	r0, [sp, #8]
c0de4300:	4580      	cmp	r8, r0
c0de4302:	d92e      	bls.n	c0de4362 <nbgl_getTextMaxLenInNbLines+0xfe>
c0de4304:	f1ba 0f00 	cmp.w	sl, #0
c0de4308:	bf18      	it	ne
c0de430a:	f1bb 0f00 	cmpne.w	fp, #0
c0de430e:	d11e      	bne.n	c0de434e <nbgl_getTextMaxLenInNbLines+0xea>
c0de4310:	9805      	ldr	r0, [sp, #20]
c0de4312:	f8bd 1012 	ldrh.w	r1, [sp, #18]
c0de4316:	9605      	str	r6, [sp, #20]
c0de4318:	1b80      	subs	r0, r0, r6
c0de431a:	4408      	add	r0, r1
c0de431c:	e01c      	b.n	c0de4358 <nbgl_getTextMaxLenInNbLines+0xf4>
c0de431e:	b2f8      	uxtb	r0, r7
c0de4320:	2808      	cmp	r0, #8
c0de4322:	d00e      	beq.n	c0de4342 <nbgl_getTextMaxLenInNbLines+0xde>
c0de4324:	280a      	cmp	r0, #10
c0de4326:	d11c      	bne.n	c0de4362 <nbgl_getTextMaxLenInNbLines+0xfe>
c0de4328:	2708      	movs	r7, #8
c0de432a:	2008      	movs	r0, #8
c0de432c:	e00b      	b.n	c0de4346 <nbgl_getTextMaxLenInNbLines+0xe2>
c0de432e:	3d01      	subs	r5, #1
c0de4330:	0428      	lsls	r0, r5, #16
c0de4332:	d114      	bne.n	c0de435e <nbgl_getTextMaxLenInNbLines+0xfa>
c0de4334:	9805      	ldr	r0, [sp, #20]
c0de4336:	f04f 0800 	mov.w	r8, #0
c0de433a:	2500      	movs	r5, #0
c0de433c:	3801      	subs	r0, #1
c0de433e:	9005      	str	r0, [sp, #20]
c0de4340:	e00f      	b.n	c0de4362 <nbgl_getTextMaxLenInNbLines+0xfe>
c0de4342:	270a      	movs	r7, #10
c0de4344:	200a      	movs	r0, #10
c0de4346:	f006 fc89 	bl	c0deac5c <nbgl_font_getFont>
c0de434a:	4604      	mov	r4, r0
c0de434c:	e009      	b.n	c0de4362 <nbgl_getTextMaxLenInNbLines+0xfe>
c0de434e:	9803      	ldr	r0, [sp, #12]
c0de4350:	f8cd b014 	str.w	fp, [sp, #20]
c0de4354:	f04f 0b00 	mov.w	fp, #0
c0de4358:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de435c:	3d01      	subs	r5, #1
c0de435e:	f04f 0800 	mov.w	r8, #0
c0de4362:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de4366:	e797      	b.n	c0de4298 <nbgl_getTextMaxLenInNbLines+0x34>
c0de4368:	2500      	movs	r5, #0
c0de436a:	9805      	ldr	r0, [sp, #20]
c0de436c:	9901      	ldr	r1, [sp, #4]
c0de436e:	1a40      	subs	r0, r0, r1
c0de4370:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de4372:	8008      	strh	r0, [r1, #0]
c0de4374:	b2a8      	uxth	r0, r5
c0de4376:	fab0 f080 	clz	r0, r0
c0de437a:	0940      	lsrs	r0, r0, #5
c0de437c:	b006      	add	sp, #24
c0de437e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4382:	bf00      	nop
c0de4384:	01000015 	.word	0x01000015

c0de4388 <nbgl_getTextMaxLenAndWidthFromEnd>:
c0de4388:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de438c:	461c      	mov	r4, r3
c0de438e:	4690      	mov	r8, r2
c0de4390:	460e      	mov	r6, r1
c0de4392:	f7ff fe18 	bl	c0de3fc6 <nbgl_getFont>
c0de4396:	4682      	mov	sl, r0
c0de4398:	4630      	mov	r0, r6
c0de439a:	f7ff fed5 	bl	c0de4148 <nbgl_getTextLength>
c0de439e:	f8dd b020 	ldr.w	fp, [sp, #32]
c0de43a2:	4607      	mov	r7, r0
c0de43a4:	2000      	movs	r0, #0
c0de43a6:	f8ab 0000 	strh.w	r0, [fp]
c0de43aa:	8020      	strh	r0, [r4, #0]
c0de43ac:	463d      	mov	r5, r7
c0de43ae:	b33f      	cbz	r7, c0de4400 <nbgl_getTextMaxLenAndWidthFromEnd+0x78>
c0de43b0:	1e6f      	subs	r7, r5, #1
c0de43b2:	b2b8      	uxth	r0, r7
c0de43b4:	5c30      	ldrb	r0, [r6, r0]
c0de43b6:	280a      	cmp	r0, #10
c0de43b8:	d01f      	beq.n	c0de43fa <nbgl_getTextMaxLenAndWidthFromEnd+0x72>
c0de43ba:	f89a 100b 	ldrb.w	r1, [sl, #11]
c0de43be:	4288      	cmp	r0, r1
c0de43c0:	d3f4      	bcc.n	c0de43ac <nbgl_getTextMaxLenAndWidthFromEnd+0x24>
c0de43c2:	f89a 200c 	ldrb.w	r2, [sl, #12]
c0de43c6:	4290      	cmp	r0, r2
c0de43c8:	d8f0      	bhi.n	c0de43ac <nbgl_getTextMaxLenAndWidthFromEnd+0x24>
c0de43ca:	1a40      	subs	r0, r0, r1
c0de43cc:	f8da 1010 	ldr.w	r1, [sl, #16]
c0de43d0:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de43d4:	f006 fbd2 	bl	c0deab7c <pic>
c0de43d8:	6840      	ldr	r0, [r0, #4]
c0de43da:	f8bb 1000 	ldrh.w	r1, [fp]
c0de43de:	f3c0 0045 	ubfx	r0, r0, #1, #6
c0de43e2:	4401      	add	r1, r0
c0de43e4:	4541      	cmp	r1, r8
c0de43e6:	d80b      	bhi.n	c0de4400 <nbgl_getTextMaxLenAndWidthFromEnd+0x78>
c0de43e8:	8821      	ldrh	r1, [r4, #0]
c0de43ea:	3101      	adds	r1, #1
c0de43ec:	8021      	strh	r1, [r4, #0]
c0de43ee:	f8bb 1000 	ldrh.w	r1, [fp]
c0de43f2:	4408      	add	r0, r1
c0de43f4:	f8ab 0000 	strh.w	r0, [fp]
c0de43f8:	e7d8      	b.n	c0de43ac <nbgl_getTextMaxLenAndWidthFromEnd+0x24>
c0de43fa:	8820      	ldrh	r0, [r4, #0]
c0de43fc:	3001      	adds	r0, #1
c0de43fe:	e7d4      	b.n	c0de43aa <nbgl_getTextMaxLenAndWidthFromEnd+0x22>
c0de4400:	2d00      	cmp	r5, #0
c0de4402:	bf18      	it	ne
c0de4404:	2501      	movne	r5, #1
c0de4406:	4628      	mov	r0, r5
c0de4408:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de440c <nbgl_getTextNbLinesInWidth>:
c0de440c:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de4410:	461c      	mov	r4, r3
c0de4412:	9200      	str	r2, [sp, #0]
c0de4414:	460d      	mov	r5, r1
c0de4416:	4606      	mov	r6, r0
c0de4418:	9103      	str	r1, [sp, #12]
c0de441a:	f7ff fdd4 	bl	c0de3fc6 <nbgl_getFont>
c0de441e:	4607      	mov	r7, r0
c0de4420:	4628      	mov	r0, r5
c0de4422:	f006 ffd5 	bl	c0deb3d0 <strlen>
c0de4426:	2100      	movs	r1, #0
c0de4428:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de442c:	b280      	uxth	r0, r0
c0de442e:	f04f 0b00 	mov.w	fp, #0
c0de4432:	f04f 0800 	mov.w	r8, #0
c0de4436:	f04f 0a00 	mov.w	sl, #0
c0de443a:	9101      	str	r1, [sp, #4]
c0de443c:	2800      	cmp	r0, #0
c0de443e:	d056      	beq.n	c0de44ee <nbgl_getTextNbLinesInWidth+0xe2>
c0de4440:	9d03      	ldr	r5, [sp, #12]
c0de4442:	a803      	add	r0, sp, #12
c0de4444:	f10d 010a 	add.w	r1, sp, #10
c0de4448:	f10d 0209 	add.w	r2, sp, #9
c0de444c:	f7ff fdbd 	bl	c0de3fca <nbgl_popUnicodeChar>
c0de4450:	4601      	mov	r1, r0
c0de4452:	b18c      	cbz	r4, c0de4478 <nbgl_getTextNbLinesInWidth+0x6c>
c0de4454:	f1a1 0008 	sub.w	r0, r1, #8
c0de4458:	2818      	cmp	r0, #24
c0de445a:	d805      	bhi.n	c0de4468 <nbgl_getTextNbLinesInWidth+0x5c>
c0de445c:	2201      	movs	r2, #1
c0de445e:	fa02 f000 	lsl.w	r0, r2, r0
c0de4462:	4a28      	ldr	r2, [pc, #160]	@ (c0de4504 <nbgl_getTextNbLinesInWidth+0xf8>)
c0de4464:	4210      	tst	r0, r2
c0de4466:	d103      	bne.n	c0de4470 <nbgl_getTextNbLinesInWidth+0x64>
c0de4468:	295f      	cmp	r1, #95	@ 0x5f
c0de446a:	d001      	beq.n	c0de4470 <nbgl_getTextNbLinesInWidth+0x64>
c0de446c:	292d      	cmp	r1, #45	@ 0x2d
c0de446e:	d103      	bne.n	c0de4478 <nbgl_getTextNbLinesInWidth+0x6c>
c0de4470:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de4474:	46aa      	mov	sl, r5
c0de4476:	9001      	str	r0, [sp, #4]
c0de4478:	2908      	cmp	r1, #8
c0de447a:	d021      	beq.n	c0de44c0 <nbgl_getTextNbLinesInWidth+0xb4>
c0de447c:	290a      	cmp	r1, #10
c0de447e:	d027      	beq.n	c0de44d0 <nbgl_getTextNbLinesInWidth+0xc4>
c0de4480:	290c      	cmp	r1, #12
c0de4482:	d034      	beq.n	c0de44ee <nbgl_getTextNbLinesInWidth+0xe2>
c0de4484:	f89d 2009 	ldrb.w	r2, [sp, #9]
c0de4488:	4638      	mov	r0, r7
c0de448a:	f7ff fe3b 	bl	c0de4104 <getCharWidth>
c0de448e:	b358      	cbz	r0, c0de44e8 <nbgl_getTextNbLinesInWidth+0xdc>
c0de4490:	fa1f f18b 	uxth.w	r1, fp
c0de4494:	eb00 0b01 	add.w	fp, r0, r1
c0de4498:	9900      	ldr	r1, [sp, #0]
c0de449a:	458b      	cmp	fp, r1
c0de449c:	d924      	bls.n	c0de44e8 <nbgl_getTextNbLinesInWidth+0xdc>
c0de449e:	b15c      	cbz	r4, c0de44b8 <nbgl_getTextNbLinesInWidth+0xac>
c0de44a0:	f1ba 0f00 	cmp.w	sl, #0
c0de44a4:	d008      	beq.n	c0de44b8 <nbgl_getTextNbLinesInWidth+0xac>
c0de44a6:	9801      	ldr	r0, [sp, #4]
c0de44a8:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de44ac:	f10a 0001 	add.w	r0, sl, #1
c0de44b0:	f04f 0a00 	mov.w	sl, #0
c0de44b4:	9003      	str	r0, [sp, #12]
c0de44b6:	2000      	movs	r0, #0
c0de44b8:	f108 0801 	add.w	r8, r8, #1
c0de44bc:	4683      	mov	fp, r0
c0de44be:	e013      	b.n	c0de44e8 <nbgl_getTextNbLinesInWidth+0xdc>
c0de44c0:	b2f0      	uxtb	r0, r6
c0de44c2:	2808      	cmp	r0, #8
c0de44c4:	d00b      	beq.n	c0de44de <nbgl_getTextNbLinesInWidth+0xd2>
c0de44c6:	280a      	cmp	r0, #10
c0de44c8:	d10e      	bne.n	c0de44e8 <nbgl_getTextNbLinesInWidth+0xdc>
c0de44ca:	2608      	movs	r6, #8
c0de44cc:	2008      	movs	r0, #8
c0de44ce:	e008      	b.n	c0de44e2 <nbgl_getTextNbLinesInWidth+0xd6>
c0de44d0:	f108 0801 	add.w	r8, r8, #1
c0de44d4:	f04f 0b00 	mov.w	fp, #0
c0de44d8:	f04f 0a00 	mov.w	sl, #0
c0de44dc:	e004      	b.n	c0de44e8 <nbgl_getTextNbLinesInWidth+0xdc>
c0de44de:	260a      	movs	r6, #10
c0de44e0:	200a      	movs	r0, #10
c0de44e2:	f006 fbbb 	bl	c0deac5c <nbgl_font_getFont>
c0de44e6:	4607      	mov	r7, r0
c0de44e8:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de44ec:	e7a6      	b.n	c0de443c <nbgl_getTextNbLinesInWidth+0x30>
c0de44ee:	ea5f 400b 	movs.w	r0, fp, lsl #16
c0de44f2:	bf18      	it	ne
c0de44f4:	f108 0801 	addne.w	r8, r8, #1
c0de44f8:	fa1f f088 	uxth.w	r0, r8
c0de44fc:	b004      	add	sp, #16
c0de44fe:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4502:	bf00      	nop
c0de4504:	01000015 	.word	0x01000015

c0de4508 <nbgl_getTextNbPagesInWidth>:
c0de4508:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de450c:	b086      	sub	sp, #24
c0de450e:	e9cd 3200 	strd	r3, r2, [sp]
c0de4512:	460c      	mov	r4, r1
c0de4514:	9105      	str	r1, [sp, #20]
c0de4516:	9003      	str	r0, [sp, #12]
c0de4518:	f7ff fd55 	bl	c0de3fc6 <nbgl_getFont>
c0de451c:	9002      	str	r0, [sp, #8]
c0de451e:	4620      	mov	r0, r4
c0de4520:	f006 ff56 	bl	c0deb3d0 <strlen>
c0de4524:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de4528:	b280      	uxth	r0, r0
c0de452a:	2600      	movs	r6, #0
c0de452c:	f10d 0711 	add.w	r7, sp, #17
c0de4530:	f04f 0b00 	mov.w	fp, #0
c0de4534:	f04f 0801 	mov.w	r8, #1
c0de4538:	2500      	movs	r5, #0
c0de453a:	f04f 0a00 	mov.w	sl, #0
c0de453e:	2800      	cmp	r0, #0
c0de4540:	d06e      	beq.n	c0de4620 <nbgl_getTextNbPagesInWidth+0x118>
c0de4542:	9c05      	ldr	r4, [sp, #20]
c0de4544:	a805      	add	r0, sp, #20
c0de4546:	f10d 0112 	add.w	r1, sp, #18
c0de454a:	463a      	mov	r2, r7
c0de454c:	f7ff fd3d 	bl	c0de3fca <nbgl_popUnicodeChar>
c0de4550:	4601      	mov	r1, r0
c0de4552:	3808      	subs	r0, #8
c0de4554:	2818      	cmp	r0, #24
c0de4556:	d814      	bhi.n	c0de4582 <nbgl_getTextNbPagesInWidth+0x7a>
c0de4558:	2201      	movs	r2, #1
c0de455a:	fa02 f000 	lsl.w	r0, r2, r0
c0de455e:	4a33      	ldr	r2, [pc, #204]	@ (c0de462c <nbgl_getTextNbPagesInWidth+0x124>)
c0de4560:	4210      	tst	r0, r2
c0de4562:	d00e      	beq.n	c0de4582 <nbgl_getTextNbPagesInWidth+0x7a>
c0de4564:	f8bd a012 	ldrh.w	sl, [sp, #18]
c0de4568:	4625      	mov	r5, r4
c0de456a:	2908      	cmp	r1, #8
c0de456c:	d024      	beq.n	c0de45b8 <nbgl_getTextNbPagesInWidth+0xb0>
c0de456e:	290a      	cmp	r1, #10
c0de4570:	d00c      	beq.n	c0de458c <nbgl_getTextNbPagesInWidth+0x84>
c0de4572:	290c      	cmp	r1, #12
c0de4574:	d12a      	bne.n	c0de45cc <nbgl_getTextNbPagesInWidth+0xc4>
c0de4576:	f108 0801 	add.w	r8, r8, #1
c0de457a:	2600      	movs	r6, #0
c0de457c:	f04f 0b00 	mov.w	fp, #0
c0de4580:	e048      	b.n	c0de4614 <nbgl_getTextNbPagesInWidth+0x10c>
c0de4582:	295f      	cmp	r1, #95	@ 0x5f
c0de4584:	d0ee      	beq.n	c0de4564 <nbgl_getTextNbPagesInWidth+0x5c>
c0de4586:	292d      	cmp	r1, #45	@ 0x2d
c0de4588:	d0ec      	beq.n	c0de4564 <nbgl_getTextNbPagesInWidth+0x5c>
c0de458a:	e7ee      	b.n	c0de456a <nbgl_getTextNbPagesInWidth+0x62>
c0de458c:	f10b 0b01 	add.w	fp, fp, #1
c0de4590:	9901      	ldr	r1, [sp, #4]
c0de4592:	fa1f f08b 	uxth.w	r0, fp
c0de4596:	1a40      	subs	r0, r0, r1
c0de4598:	f8bd 1012 	ldrh.w	r1, [sp, #18]
c0de459c:	fab0 f080 	clz	r0, r0
c0de45a0:	0940      	lsrs	r0, r0, #5
c0de45a2:	2900      	cmp	r1, #0
c0de45a4:	bf18      	it	ne
c0de45a6:	2101      	movne	r1, #1
c0de45a8:	4008      	ands	r0, r1
c0de45aa:	bf18      	it	ne
c0de45ac:	f04f 0b00 	movne.w	fp, #0
c0de45b0:	4480      	add	r8, r0
c0de45b2:	2600      	movs	r6, #0
c0de45b4:	2500      	movs	r5, #0
c0de45b6:	e02d      	b.n	c0de4614 <nbgl_getTextNbPagesInWidth+0x10c>
c0de45b8:	9803      	ldr	r0, [sp, #12]
c0de45ba:	b2c0      	uxtb	r0, r0
c0de45bc:	2808      	cmp	r0, #8
c0de45be:	d023      	beq.n	c0de4608 <nbgl_getTextNbPagesInWidth+0x100>
c0de45c0:	280a      	cmp	r0, #10
c0de45c2:	d127      	bne.n	c0de4614 <nbgl_getTextNbPagesInWidth+0x10c>
c0de45c4:	2008      	movs	r0, #8
c0de45c6:	9003      	str	r0, [sp, #12]
c0de45c8:	2008      	movs	r0, #8
c0de45ca:	e020      	b.n	c0de460e <nbgl_getTextNbPagesInWidth+0x106>
c0de45cc:	f89d 2011 	ldrb.w	r2, [sp, #17]
c0de45d0:	9802      	ldr	r0, [sp, #8]
c0de45d2:	f7ff fd97 	bl	c0de4104 <getCharWidth>
c0de45d6:	b1e8      	cbz	r0, c0de4614 <nbgl_getTextNbPagesInWidth+0x10c>
c0de45d8:	b2b1      	uxth	r1, r6
c0de45da:	1846      	adds	r6, r0, r1
c0de45dc:	9900      	ldr	r1, [sp, #0]
c0de45de:	428e      	cmp	r6, r1
c0de45e0:	d918      	bls.n	c0de4614 <nbgl_getTextNbPagesInWidth+0x10c>
c0de45e2:	b125      	cbz	r5, c0de45ee <nbgl_getTextNbPagesInWidth+0xe6>
c0de45e4:	1c68      	adds	r0, r5, #1
c0de45e6:	f8ad a012 	strh.w	sl, [sp, #18]
c0de45ea:	9005      	str	r0, [sp, #20]
c0de45ec:	2000      	movs	r0, #0
c0de45ee:	f10b 0b01 	add.w	fp, fp, #1
c0de45f2:	9a01      	ldr	r2, [sp, #4]
c0de45f4:	fa1f f18b 	uxth.w	r1, fp
c0de45f8:	4291      	cmp	r1, r2
c0de45fa:	d10e      	bne.n	c0de461a <nbgl_getTextNbPagesInWidth+0x112>
c0de45fc:	f108 0801 	add.w	r8, r8, #1
c0de4600:	f04f 0b00 	mov.w	fp, #0
c0de4604:	4606      	mov	r6, r0
c0de4606:	e7d5      	b.n	c0de45b4 <nbgl_getTextNbPagesInWidth+0xac>
c0de4608:	200a      	movs	r0, #10
c0de460a:	9003      	str	r0, [sp, #12]
c0de460c:	200a      	movs	r0, #10
c0de460e:	f006 fb25 	bl	c0deac5c <nbgl_font_getFont>
c0de4612:	9002      	str	r0, [sp, #8]
c0de4614:	f8bd 0012 	ldrh.w	r0, [sp, #18]
c0de4618:	e791      	b.n	c0de453e <nbgl_getTextNbPagesInWidth+0x36>
c0de461a:	2500      	movs	r5, #0
c0de461c:	4606      	mov	r6, r0
c0de461e:	e7f9      	b.n	c0de4614 <nbgl_getTextNbPagesInWidth+0x10c>
c0de4620:	fa5f f088 	uxtb.w	r0, r8
c0de4624:	b006      	add	sp, #24
c0de4626:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de462a:	bf00      	nop
c0de462c:	01000015 	.word	0x01000015

c0de4630 <nbgl_textReduceOnNbLines>:
c0de4630:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4634:	b088      	sub	sp, #32
c0de4636:	469a      	mov	sl, r3
c0de4638:	4614      	mov	r4, r2
c0de463a:	460e      	mov	r6, r1
c0de463c:	4607      	mov	r7, r0
c0de463e:	f7ff fcc2 	bl	c0de3fc6 <nbgl_getFont>
c0de4642:	4683      	mov	fp, r0
c0de4644:	4630      	mov	r0, r6
c0de4646:	f006 fec3 	bl	c0deb3d0 <strlen>
c0de464a:	4945      	ldr	r1, [pc, #276]	@ (c0de4760 <nbgl_textReduceOnNbLines+0x130>)
c0de464c:	4680      	mov	r8, r0
c0de464e:	4638      	mov	r0, r7
c0de4650:	4479      	add	r1, pc
c0de4652:	f7ff fd52 	bl	c0de40fa <nbgl_getTextWidth>
c0de4656:	ea5f 71ca 	movs.w	r1, sl, lsl #31
c0de465a:	d050      	beq.n	c0de46fe <nbgl_textReduceOnNbLines+0xce>
c0de465c:	f8cd b01c 	str.w	fp, [sp, #28]
c0de4660:	f04f 0b01 	mov.w	fp, #1
c0de4664:	1a20      	subs	r0, r4, r0
c0de4666:	4625      	mov	r5, r4
c0de4668:	e9dd 1210 	ldrd	r1, r2, [sp, #64]	@ 0x40
c0de466c:	9106      	str	r1, [sp, #24]
c0de466e:	eb0b 015a 	add.w	r1, fp, sl, lsr #1
c0de4672:	9103      	str	r1, [sp, #12]
c0de4674:	2102      	movs	r1, #2
c0de4676:	fb90 f0f1 	sdiv	r0, r0, r1
c0de467a:	ea4f 015a 	mov.w	r1, sl, lsr #1
c0de467e:	f04f 0a00 	mov.w	sl, #0
c0de4682:	b280      	uxth	r0, r0
c0de4684:	9002      	str	r0, [sp, #8]
c0de4686:	9101      	str	r1, [sp, #4]
c0de4688:	fa1f f188 	uxth.w	r1, r8
c0de468c:	4610      	mov	r0, r2
c0de468e:	f04f 0800 	mov.w	r8, #0
c0de4692:	e9cd 2104 	strd	r2, r1, [sp, #16]
c0de4696:	4582      	cmp	sl, r0
c0de4698:	f04f 0000 	mov.w	r0, #0
c0de469c:	bf38      	it	cc
c0de469e:	2001      	movcc	r0, #1
c0de46a0:	458a      	cmp	sl, r1
c0de46a2:	f04f 0100 	mov.w	r1, #0
c0de46a6:	bf38      	it	cc
c0de46a8:	2101      	movcc	r1, #1
c0de46aa:	ea01 0400 	and.w	r4, r1, r0
c0de46ae:	b314      	cbz	r4, c0de46f6 <nbgl_textReduceOnNbLines+0xc6>
c0de46b0:	f816 700a 	ldrb.w	r7, [r6, sl]
c0de46b4:	9807      	ldr	r0, [sp, #28]
c0de46b6:	2200      	movs	r2, #0
c0de46b8:	4639      	mov	r1, r7
c0de46ba:	f7ff fd23 	bl	c0de4104 <getCharWidth>
c0de46be:	b190      	cbz	r0, c0de46e6 <nbgl_textReduceOnNbLines+0xb6>
c0de46c0:	fa1f f188 	uxth.w	r1, r8
c0de46c4:	eb00 0801 	add.w	r8, r0, r1
c0de46c8:	45a8      	cmp	r8, r5
c0de46ca:	d904      	bls.n	c0de46d6 <nbgl_textReduceOnNbLines+0xa6>
c0de46cc:	f10b 0b01 	add.w	fp, fp, #1
c0de46d0:	f04f 0800 	mov.w	r8, #0
c0de46d4:	e7eb      	b.n	c0de46ae <nbgl_textReduceOnNbLines+0x7e>
c0de46d6:	9903      	ldr	r1, [sp, #12]
c0de46d8:	fa5f f08b 	uxtb.w	r0, fp
c0de46dc:	4281      	cmp	r1, r0
c0de46de:	d102      	bne.n	c0de46e6 <nbgl_textReduceOnNbLines+0xb6>
c0de46e0:	9802      	ldr	r0, [sp, #8]
c0de46e2:	4580      	cmp	r8, r0
c0de46e4:	d80e      	bhi.n	c0de4704 <nbgl_textReduceOnNbLines+0xd4>
c0de46e6:	9806      	ldr	r0, [sp, #24]
c0de46e8:	f800 700a 	strb.w	r7, [r0, sl]
c0de46ec:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
c0de46f0:	f10a 0a01 	add.w	sl, sl, #1
c0de46f4:	e7cf      	b.n	c0de4696 <nbgl_textReduceOnNbLines+0x66>
c0de46f6:	9906      	ldr	r1, [sp, #24]
c0de46f8:	2000      	movs	r0, #0
c0de46fa:	f801 000a 	strb.w	r0, [r1, sl]
c0de46fe:	b008      	add	sp, #32
c0de4700:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4704:	9906      	ldr	r1, [sp, #24]
c0de4706:	202e      	movs	r0, #46	@ 0x2e
c0de4708:	2400      	movs	r4, #0
c0de470a:	eb01 080a 	add.w	r8, r1, sl
c0de470e:	f801 000a 	strb.w	r0, [r1, sl]
c0de4712:	f888 0001 	strb.w	r0, [r8, #1]
c0de4716:	f808 0c01 	strb.w	r0, [r8, #-1]
c0de471a:	e9dd 1001 	ldrd	r1, r0, [sp, #4]
c0de471e:	fb01 0705 	mla	r7, r1, r5, r0
c0de4722:	9805      	ldr	r0, [sp, #20]
c0de4724:	2500      	movs	r5, #0
c0de4726:	eb06 0a00 	add.w	sl, r6, r0
c0de472a:	9e07      	ldr	r6, [sp, #28]
c0de472c:	b2a0      	uxth	r0, r4
c0de472e:	4287      	cmp	r7, r0
c0de4730:	d90a      	bls.n	c0de4748 <nbgl_textReduceOnNbLines+0x118>
c0de4732:	eb0a 0005 	add.w	r0, sl, r5
c0de4736:	2200      	movs	r2, #0
c0de4738:	f810 1c01 	ldrb.w	r1, [r0, #-1]
c0de473c:	4630      	mov	r0, r6
c0de473e:	f7ff fce1 	bl	c0de4104 <getCharWidth>
c0de4742:	4404      	add	r4, r0
c0de4744:	3d01      	subs	r5, #1
c0de4746:	e7f1      	b.n	c0de472c <nbgl_textReduceOnNbLines+0xfc>
c0de4748:	eb0a 0105 	add.w	r1, sl, r5
c0de474c:	f108 0002 	add.w	r0, r8, #2
c0de4750:	f1c5 0201 	rsb	r2, r5, #1
c0de4754:	3101      	adds	r1, #1
c0de4756:	b008      	add	sp, #32
c0de4758:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de475c:	f006 bde1 	b.w	c0deb322 <__aeabi_memcpy>
c0de4760:	00007133 	.word	0x00007133

c0de4764 <nbgl_layoutGet>:
c0de4764:	b570      	push	{r4, r5, r6, lr}
c0de4766:	4605      	mov	r5, r0
c0de4768:	7800      	ldrb	r0, [r0, #0]
c0de476a:	b148      	cbz	r0, c0de4780 <nbgl_layoutGet+0x1c>
c0de476c:	4819      	ldr	r0, [pc, #100]	@ (c0de47d4 <nbgl_layoutGet+0x70>)
c0de476e:	eb09 0100 	add.w	r1, r9, r0
c0de4772:	7b8a      	ldrb	r2, [r1, #14]
c0de4774:	b152      	cbz	r2, c0de478c <nbgl_layoutGet+0x28>
c0de4776:	4448      	add	r0, r9
c0de4778:	7e81      	ldrb	r1, [r0, #26]
c0de477a:	b151      	cbz	r1, c0de4792 <nbgl_layoutGet+0x2e>
c0de477c:	2400      	movs	r4, #0
c0de477e:	e026      	b.n	c0de47ce <nbgl_layoutGet+0x6a>
c0de4780:	4814      	ldr	r0, [pc, #80]	@ (c0de47d4 <nbgl_layoutGet+0x70>)
c0de4782:	eb09 0400 	add.w	r4, r9, r0
c0de4786:	2000      	movs	r0, #0
c0de4788:	70a0      	strb	r0, [r4, #2]
c0de478a:	e004      	b.n	c0de4796 <nbgl_layoutGet+0x32>
c0de478c:	f101 040c 	add.w	r4, r1, #12
c0de4790:	e001      	b.n	c0de4796 <nbgl_layoutGet+0x32>
c0de4792:	f100 0418 	add.w	r4, r0, #24
c0de4796:	2000      	movs	r0, #0
c0de4798:	4626      	mov	r6, r4
c0de479a:	60a0      	str	r0, [r4, #8]
c0de479c:	6020      	str	r0, [r4, #0]
c0de479e:	f846 0f04 	str.w	r0, [r6, #4]!
c0de47a2:	6868      	ldr	r0, [r5, #4]
c0de47a4:	f006 f9ea 	bl	c0deab7c <pic>
c0de47a8:	60a0      	str	r0, [r4, #8]
c0de47aa:	7828      	ldrb	r0, [r5, #0]
c0de47ac:	f105 0208 	add.w	r2, r5, #8
c0de47b0:	7020      	strb	r0, [r4, #0]
c0de47b2:	4b09      	ldr	r3, [pc, #36]	@ (c0de47d8 <nbgl_layoutGet+0x74>)
c0de47b4:	447b      	add	r3, pc
c0de47b6:	b120      	cbz	r0, c0de47c2 <nbgl_layoutGet+0x5e>
c0de47b8:	4630      	mov	r0, r6
c0de47ba:	2107      	movs	r1, #7
c0de47bc:	f001 ff5e 	bl	c0de667c <nbgl_screenPush>
c0de47c0:	e004      	b.n	c0de47cc <nbgl_layoutGet+0x68>
c0de47c2:	4630      	mov	r0, r6
c0de47c4:	2107      	movs	r1, #7
c0de47c6:	f001 fea1 	bl	c0de650c <nbgl_screenSet>
c0de47ca:	2000      	movs	r0, #0
c0de47cc:	7060      	strb	r0, [r4, #1]
c0de47ce:	4620      	mov	r0, r4
c0de47d0:	bd70      	pop	{r4, r5, r6, pc}
c0de47d2:	bf00      	nop
c0de47d4:	00001500 	.word	0x00001500
c0de47d8:	00000025 	.word	0x00000025

c0de47dc <buttonCallback>:
c0de47dc:	b5b0      	push	{r4, r5, r7, lr}
c0de47de:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de47e2:	4811      	ldr	r0, [pc, #68]	@ (c0de4828 <buttonCallback+0x4c>)
c0de47e4:	2302      	movs	r3, #2
c0de47e6:	1c5c      	adds	r4, r3, #1
c0de47e8:	d01d      	beq.n	c0de4826 <buttonCallback+0x4a>
c0de47ea:	b2dc      	uxtb	r4, r3
c0de47ec:	eb09 0500 	add.w	r5, r9, r0
c0de47f0:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de47f4:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de47f8:	786d      	ldrb	r5, [r5, #1]
c0de47fa:	42aa      	cmp	r2, r5
c0de47fc:	d105      	bne.n	c0de480a <buttonCallback+0x2e>
c0de47fe:	eb09 0500 	add.w	r5, r9, r0
c0de4802:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de4806:	78ad      	ldrb	r5, [r5, #2]
c0de4808:	b90d      	cbnz	r5, c0de480e <buttonCallback+0x32>
c0de480a:	3b01      	subs	r3, #1
c0de480c:	e7eb      	b.n	c0de47e6 <buttonCallback+0xa>
c0de480e:	eb09 0200 	add.w	r2, r9, r0
c0de4812:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de4816:	6892      	ldr	r2, [r2, #8]
c0de4818:	b12a      	cbz	r2, c0de4826 <buttonCallback+0x4a>
c0de481a:	4448      	add	r0, r9
c0de481c:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de4820:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de4824:	4710      	bx	r2
c0de4826:	bdb0      	pop	{r4, r5, r7, pc}
c0de4828:	00001500 	.word	0x00001500

c0de482c <nbgl_layoutAddNavigation>:
c0de482c:	b570      	push	{r4, r5, r6, lr}
c0de482e:	2800      	cmp	r0, #0
c0de4830:	d04d      	beq.n	c0de48ce <nbgl_layoutAddNavigation+0xa2>
c0de4832:	460d      	mov	r5, r1
c0de4834:	7849      	ldrb	r1, [r1, #1]
c0de4836:	4604      	mov	r4, r0
c0de4838:	07c8      	lsls	r0, r1, #31
c0de483a:	d022      	beq.n	c0de4882 <nbgl_layoutAddNavigation+0x56>
c0de483c:	7861      	ldrb	r1, [r4, #1]
c0de483e:	2002      	movs	r0, #2
c0de4840:	f001 fd90 	bl	c0de6364 <nbgl_objPoolGet>
c0de4844:	782a      	ldrb	r2, [r5, #0]
c0de4846:	7869      	ldrb	r1, [r5, #1]
c0de4848:	4b23      	ldr	r3, [pc, #140]	@ (c0de48d8 <nbgl_layoutAddNavigation+0xac>)
c0de484a:	4e24      	ldr	r6, [pc, #144]	@ (c0de48dc <nbgl_layoutAddNavigation+0xb0>)
c0de484c:	2a00      	cmp	r2, #0
c0de484e:	447b      	add	r3, pc
c0de4850:	447e      	add	r6, pc
c0de4852:	4602      	mov	r2, r0
c0de4854:	bf08      	it	eq
c0de4856:	461e      	moveq	r6, r3
c0de4858:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de485c:	0e33      	lsrs	r3, r6, #24
c0de485e:	70d3      	strb	r3, [r2, #3]
c0de4860:	0c33      	lsrs	r3, r6, #16
c0de4862:	7093      	strb	r3, [r2, #2]
c0de4864:	0a32      	lsrs	r2, r6, #8
c0de4866:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de486a:	6862      	ldr	r2, [r4, #4]
c0de486c:	78a3      	ldrb	r3, [r4, #2]
c0de486e:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de4872:	2203      	movs	r2, #3
c0de4874:	77c2      	strb	r2, [r0, #31]
c0de4876:	2204      	movs	r2, #4
c0de4878:	7582      	strb	r2, [r0, #22]
c0de487a:	2200      	movs	r2, #0
c0de487c:	7242      	strb	r2, [r0, #9]
c0de487e:	1c58      	adds	r0, r3, #1
c0de4880:	70a0      	strb	r0, [r4, #2]
c0de4882:	0788      	lsls	r0, r1, #30
c0de4884:	f04f 0600 	mov.w	r6, #0
c0de4888:	d523      	bpl.n	c0de48d2 <nbgl_layoutAddNavigation+0xa6>
c0de488a:	7861      	ldrb	r1, [r4, #1]
c0de488c:	2002      	movs	r0, #2
c0de488e:	f001 fd69 	bl	c0de6364 <nbgl_objPoolGet>
c0de4892:	7829      	ldrb	r1, [r5, #0]
c0de4894:	4a12      	ldr	r2, [pc, #72]	@ (c0de48e0 <nbgl_layoutAddNavigation+0xb4>)
c0de4896:	4b13      	ldr	r3, [pc, #76]	@ (c0de48e4 <nbgl_layoutAddNavigation+0xb8>)
c0de4898:	2900      	cmp	r1, #0
c0de489a:	447a      	add	r2, pc
c0de489c:	447b      	add	r3, pc
c0de489e:	4601      	mov	r1, r0
c0de48a0:	bf08      	it	eq
c0de48a2:	4613      	moveq	r3, r2
c0de48a4:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de48a8:	0e1a      	lsrs	r2, r3, #24
c0de48aa:	7246      	strb	r6, [r0, #9]
c0de48ac:	70ca      	strb	r2, [r1, #3]
c0de48ae:	0c1a      	lsrs	r2, r3, #16
c0de48b0:	708a      	strb	r2, [r1, #2]
c0de48b2:	0a19      	lsrs	r1, r3, #8
c0de48b4:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de48b8:	6861      	ldr	r1, [r4, #4]
c0de48ba:	78a2      	ldrb	r2, [r4, #2]
c0de48bc:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de48c0:	2103      	movs	r1, #3
c0de48c2:	77c1      	strb	r1, [r0, #31]
c0de48c4:	2106      	movs	r1, #6
c0de48c6:	7581      	strb	r1, [r0, #22]
c0de48c8:	1c50      	adds	r0, r2, #1
c0de48ca:	70a0      	strb	r0, [r4, #2]
c0de48cc:	e001      	b.n	c0de48d2 <nbgl_layoutAddNavigation+0xa6>
c0de48ce:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de48d2:	4630      	mov	r0, r6
c0de48d4:	bd70      	pop	{r4, r5, r6, pc}
c0de48d6:	bf00      	nop
c0de48d8:	00006cc4 	.word	0x00006cc4
c0de48dc:	00006cde 	.word	0x00006cde
c0de48e0:	00006c86 	.word	0x00006c86
c0de48e4:	00006c68 	.word	0x00006c68

c0de48e8 <nbgl_layoutAddText>:
c0de48e8:	2800      	cmp	r0, #0
c0de48ea:	f000 8135 	beq.w	c0de4b58 <nbgl_layoutAddText+0x270>
c0de48ee:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de48f2:	b088      	sub	sp, #32
c0de48f4:	460e      	mov	r6, r1
c0de48f6:	7841      	ldrb	r1, [r0, #1]
c0de48f8:	4605      	mov	r5, r0
c0de48fa:	2001      	movs	r0, #1
c0de48fc:	4617      	mov	r7, r2
c0de48fe:	461c      	mov	r4, r3
c0de4900:	f001 fd30 	bl	c0de6364 <nbgl_objPoolGet>
c0de4904:	4680      	mov	r8, r0
c0de4906:	2003      	movs	r0, #3
c0de4908:	2f00      	cmp	r7, #0
c0de490a:	bf08      	it	eq
c0de490c:	2001      	moveq	r0, #1
c0de490e:	7869      	ldrb	r1, [r5, #1]
c0de4910:	f888 0020 	strb.w	r0, [r8, #32]
c0de4914:	f001 fd88 	bl	c0de6428 <nbgl_containerPoolGet>
c0de4918:	4641      	mov	r1, r8
c0de491a:	0e02      	lsrs	r2, r0, #24
c0de491c:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de4920:	f04f 0b00 	mov.w	fp, #0
c0de4924:	9704      	str	r7, [sp, #16]
c0de4926:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de492a:	f888 a004 	strb.w	sl, [r8, #4]
c0de492e:	f888 b005 	strb.w	fp, [r8, #5]
c0de4932:	70ca      	strb	r2, [r1, #3]
c0de4934:	0c02      	lsrs	r2, r0, #16
c0de4936:	0a00      	lsrs	r0, r0, #8
c0de4938:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de493c:	708a      	strb	r2, [r1, #2]
c0de493e:	2004      	movs	r0, #4
c0de4940:	7869      	ldrb	r1, [r5, #1]
c0de4942:	f001 fd0f 	bl	c0de6364 <nbgl_objPoolGet>
c0de4946:	4607      	mov	r7, r0
c0de4948:	2003      	movs	r0, #3
c0de494a:	77f8      	strb	r0, [r7, #31]
c0de494c:	4630      	mov	r0, r6
c0de494e:	f006 f915 	bl	c0deab7c <pic>
c0de4952:	4601      	mov	r1, r0
c0de4954:	2008      	movs	r0, #8
c0de4956:	f887 a004 	strb.w	sl, [r7, #4]
c0de495a:	f887 b005 	strb.w	fp, [r7, #5]
c0de495e:	9403      	str	r4, [sp, #12]
c0de4960:	f04f 0a01 	mov.w	sl, #1
c0de4964:	2c00      	cmp	r4, #0
c0de4966:	bf08      	it	eq
c0de4968:	200a      	moveq	r0, #10
c0de496a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de496e:	2205      	movs	r2, #5
c0de4970:	0e0b      	lsrs	r3, r1, #24
c0de4972:	f887 2020 	strb.w	r2, [r7, #32]
c0de4976:	463a      	mov	r2, r7
c0de4978:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de497c:	70d3      	strb	r3, [r2, #3]
c0de497e:	0c0b      	lsrs	r3, r1, #16
c0de4980:	7093      	strb	r3, [r2, #2]
c0de4982:	0a0a      	lsrs	r2, r1, #8
c0de4984:	2301      	movs	r3, #1
c0de4986:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de498a:	2272      	movs	r2, #114	@ 0x72
c0de498c:	f7ff fd3e 	bl	c0de440c <nbgl_getTextNbLinesInWidth>
c0de4990:	4606      	mov	r6, r0
c0de4992:	2805      	cmp	r0, #5
c0de4994:	9505      	str	r5, [sp, #20]
c0de4996:	d31d      	bcc.n	c0de49d4 <nbgl_layoutAddText+0xec>
c0de4998:	463e      	mov	r6, r7
c0de499a:	2004      	movs	r0, #4
c0de499c:	f10d 051e 	add.w	r5, sp, #30
c0de49a0:	f816 1f26 	ldrb.w	r1, [r6, #38]!
c0de49a4:	7872      	ldrb	r2, [r6, #1]
c0de49a6:	78b3      	ldrb	r3, [r6, #2]
c0de49a8:	78f4      	ldrb	r4, [r6, #3]
c0de49aa:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de49ae:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de49b2:	9500      	str	r5, [sp, #0]
c0de49b4:	9d05      	ldr	r5, [sp, #20]
c0de49b6:	f8cd a004 	str.w	sl, [sp, #4]
c0de49ba:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de49be:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de49c2:	2304      	movs	r3, #4
c0de49c4:	f000 fc60 	bl	c0de5288 <OUTLINED_FUNCTION_4>
c0de49c8:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de49cc:	7130      	strb	r0, [r6, #4]
c0de49ce:	0a00      	lsrs	r0, r0, #8
c0de49d0:	7170      	strb	r0, [r6, #5]
c0de49d2:	2604      	movs	r6, #4
c0de49d4:	f000 fc60 	bl	c0de5298 <OUTLINED_FUNCTION_6>
c0de49d8:	4683      	mov	fp, r0
c0de49da:	2002      	movs	r0, #2
c0de49dc:	f887 a024 	strb.w	sl, [r7, #36]	@ 0x24
c0de49e0:	9c04      	ldr	r4, [sp, #16]
c0de49e2:	75b8      	strb	r0, [r7, #22]
c0de49e4:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de49e8:	2c00      	cmp	r4, #0
c0de49ea:	fb06 fa00 	mul.w	sl, r6, r0
c0de49ee:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de49f2:	f887 a006 	strb.w	sl, [r7, #6]
c0de49f6:	71f8      	strb	r0, [r7, #7]
c0de49f8:	4640      	mov	r0, r8
c0de49fa:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de49fe:	7842      	ldrb	r2, [r0, #1]
c0de4a00:	7883      	ldrb	r3, [r0, #2]
c0de4a02:	78c0      	ldrb	r0, [r0, #3]
c0de4a04:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4a08:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de4a0c:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4a10:	6007      	str	r7, [r0, #0]
c0de4a12:	f000 8106 	beq.w	c0de4c22 <nbgl_layoutAddText+0x33a>
c0de4a16:	9803      	ldr	r0, [sp, #12]
c0de4a18:	7869      	ldrb	r1, [r5, #1]
c0de4a1a:	2802      	cmp	r0, #2
c0de4a1c:	f040 809e 	bne.w	c0de4b5c <nbgl_layoutAddText+0x274>
c0de4a20:	2005      	movs	r0, #5
c0de4a22:	2505      	movs	r5, #5
c0de4a24:	f001 fc9e 	bl	c0de6364 <nbgl_objPoolGet>
c0de4a28:	2600      	movs	r6, #0
c0de4a2a:	4607      	mov	r7, r0
c0de4a2c:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de4a30:	2001      	movs	r0, #1
c0de4a32:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de4a36:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de4a3a:	f000 fc3c 	bl	c0de52b6 <OUTLINED_FUNCTION_9>
c0de4a3e:	4620      	mov	r0, r4
c0de4a40:	f006 f89c 	bl	c0deab7c <pic>
c0de4a44:	4601      	mov	r1, r0
c0de4a46:	200e      	movs	r0, #14
c0de4a48:	71fe      	strb	r6, [r7, #7]
c0de4a4a:	75bd      	strb	r5, [r7, #22]
c0de4a4c:	f000 fbf1 	bl	c0de5232 <OUTLINED_FUNCTION_1>
c0de4a50:	2865      	cmp	r0, #101	@ 0x65
c0de4a52:	f240 80d6 	bls.w	c0de4c02 <nbgl_layoutAddText+0x31a>
c0de4a56:	46bb      	mov	fp, r7
c0de4a58:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de4a5c:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de4a60:	2401      	movs	r4, #1
c0de4a62:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de4a66:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de4a6a:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de4a6e:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de4a72:	ae06      	add	r6, sp, #24
c0de4a74:	e9cd 6400 	strd	r6, r4, [sp]
c0de4a78:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de4a7c:	f10d 031a 	add.w	r3, sp, #26
c0de4a80:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4a84:	2266      	movs	r2, #102	@ 0x66
c0de4a86:	f7ff fb6f 	bl	c0de4168 <nbgl_getTextMaxLenAndWidth>
c0de4a8a:	f8bd 4018 	ldrh.w	r4, [sp, #24]
c0de4a8e:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de4a92:	4655      	mov	r5, sl
c0de4a94:	f104 000c 	add.w	r0, r4, #12
c0de4a98:	7138      	strb	r0, [r7, #4]
c0de4a9a:	0a00      	lsrs	r0, r0, #8
c0de4a9c:	7178      	strb	r0, [r7, #5]
c0de4a9e:	486b      	ldr	r0, [pc, #428]	@ (c0de4c4c <nbgl_layoutAddText+0x364>)
c0de4aa0:	2e13      	cmp	r6, #19
c0de4aa2:	bf28      	it	cs
c0de4aa4:	2613      	movcs	r6, #19
c0de4aa6:	f89b 1000 	ldrb.w	r1, [fp]
c0de4aaa:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de4aae:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de4ab2:	eb09 0a00 	add.w	sl, r9, r0
c0de4ab6:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de4aba:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4abe:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de4ac2:	4632      	mov	r2, r6
c0de4ac4:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de4ac8:	4650      	mov	r0, sl
c0de4aca:	f006 fc2a 	bl	c0deb322 <__aeabi_memcpy>
c0de4ace:	2000      	movs	r0, #0
c0de4ad0:	f80a 0006 	strb.w	r0, [sl, r6]
c0de4ad4:	76b8      	strb	r0, [r7, #26]
c0de4ad6:	2001      	movs	r0, #1
c0de4ad8:	f88b a000 	strb.w	sl, [fp]
c0de4adc:	7678      	strb	r0, [r7, #25]
c0de4ade:	ea4f 601a 	mov.w	r0, sl, lsr #24
c0de4ae2:	2c00      	cmp	r4, #0
c0de4ae4:	f88b 0003 	strb.w	r0, [fp, #3]
c0de4ae8:	ea4f 401a 	mov.w	r0, sl, lsr #16
c0de4aec:	f88b 0002 	strb.w	r0, [fp, #2]
c0de4af0:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de4af4:	46aa      	mov	sl, r5
c0de4af6:	9d05      	ldr	r5, [sp, #20]
c0de4af8:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de4afc:	4640      	mov	r0, r8
c0de4afe:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de4b02:	7842      	ldrb	r2, [r0, #1]
c0de4b04:	7883      	ldrb	r3, [r0, #2]
c0de4b06:	78c0      	ldrb	r0, [r0, #3]
c0de4b08:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4b0c:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de4b10:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de4b14:	6047      	str	r7, [r0, #4]
c0de4b16:	f000 8082 	beq.w	c0de4c1e <nbgl_layoutAddText+0x336>
c0de4b1a:	7869      	ldrb	r1, [r5, #1]
c0de4b1c:	2005      	movs	r0, #5
c0de4b1e:	2605      	movs	r6, #5
c0de4b20:	f001 fc20 	bl	c0de6364 <nbgl_objPoolGet>
c0de4b24:	2500      	movs	r5, #0
c0de4b26:	4607      	mov	r7, r0
c0de4b28:	9904      	ldr	r1, [sp, #16]
c0de4b2a:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de4b2e:	2001      	movs	r0, #1
c0de4b30:	f000 fbc1 	bl	c0de52b6 <OUTLINED_FUNCTION_9>
c0de4b34:	f8bd 001a 	ldrh.w	r0, [sp, #26]
c0de4b38:	4408      	add	r0, r1
c0de4b3a:	f006 f81f 	bl	c0deab7c <pic>
c0de4b3e:	4601      	mov	r1, r0
c0de4b40:	200e      	movs	r0, #14
c0de4b42:	71fd      	strb	r5, [r7, #7]
c0de4b44:	f000 fb75 	bl	c0de5232 <OUTLINED_FUNCTION_1>
c0de4b48:	300c      	adds	r0, #12
c0de4b4a:	210f      	movs	r1, #15
c0de4b4c:	75be      	strb	r6, [r7, #22]
c0de4b4e:	7138      	strb	r0, [r7, #4]
c0de4b50:	0a00      	lsrs	r0, r0, #8
c0de4b52:	7178      	strb	r0, [r7, #5]
c0de4b54:	2002      	movs	r0, #2
c0de4b56:	e05a      	b.n	c0de4c0e <nbgl_layoutAddText+0x326>
c0de4b58:	f000 bbaa 	b.w	c0de52b0 <OUTLINED_FUNCTION_8>
c0de4b5c:	f000 fb99 	bl	c0de5292 <OUTLINED_FUNCTION_5>
c0de4b60:	2603      	movs	r6, #3
c0de4b62:	4607      	mov	r7, r0
c0de4b64:	77c6      	strb	r6, [r0, #31]
c0de4b66:	4620      	mov	r0, r4
c0de4b68:	f006 f808 	bl	c0deab7c <pic>
c0de4b6c:	4601      	mov	r1, r0
c0de4b6e:	2072      	movs	r0, #114	@ 0x72
c0de4b70:	2400      	movs	r4, #0
c0de4b72:	2301      	movs	r3, #1
c0de4b74:	7138      	strb	r0, [r7, #4]
c0de4b76:	2001      	movs	r0, #1
c0de4b78:	0e0a      	lsrs	r2, r1, #24
c0de4b7a:	717c      	strb	r4, [r7, #5]
c0de4b7c:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de4b80:	200a      	movs	r0, #10
c0de4b82:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4b86:	f000 fb65 	bl	c0de5254 <OUTLINED_FUNCTION_2>
c0de4b8a:	2804      	cmp	r0, #4
c0de4b8c:	d31e      	bcc.n	c0de4bcc <nbgl_layoutAddText+0x2e4>
c0de4b8e:	463d      	mov	r5, r7
c0de4b90:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de4b94:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de4b98:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de4b9c:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de4ba0:	78ab      	ldrb	r3, [r5, #2]
c0de4ba2:	78e9      	ldrb	r1, [r5, #3]
c0de4ba4:	aa07      	add	r2, sp, #28
c0de4ba6:	9200      	str	r2, [sp, #0]
c0de4ba8:	2201      	movs	r2, #1
c0de4baa:	9201      	str	r2, [sp, #4]
c0de4bac:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de4bb0:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de4bb4:	2303      	movs	r3, #3
c0de4bb6:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de4bba:	2272      	movs	r2, #114	@ 0x72
c0de4bbc:	f7ff fb52 	bl	c0de4264 <nbgl_getTextMaxLenInNbLines>
c0de4bc0:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de4bc4:	7128      	strb	r0, [r5, #4]
c0de4bc6:	0a00      	lsrs	r0, r0, #8
c0de4bc8:	7168      	strb	r0, [r5, #5]
c0de4bca:	2003      	movs	r0, #3
c0de4bcc:	9903      	ldr	r1, [sp, #12]
c0de4bce:	2900      	cmp	r1, #0
c0de4bd0:	bf08      	it	eq
c0de4bd2:	4606      	moveq	r6, r0
c0de4bd4:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de4bd8:	76bc      	strb	r4, [r7, #26]
c0de4bda:	75bc      	strb	r4, [r7, #22]
c0de4bdc:	fb06 f100 	mul.w	r1, r6, r0
c0de4be0:	fb06 a000 	mla	r0, r6, r0, sl
c0de4be4:	71b9      	strb	r1, [r7, #6]
c0de4be6:	0a09      	lsrs	r1, r1, #8
c0de4be8:	71f9      	strb	r1, [r7, #7]
c0de4bea:	2102      	movs	r1, #2
c0de4bec:	f100 0a02 	add.w	sl, r0, #2
c0de4bf0:	7679      	strb	r1, [r7, #25]
c0de4bf2:	2105      	movs	r1, #5
c0de4bf4:	f887 1020 	strb.w	r1, [r7, #32]
c0de4bf8:	4641      	mov	r1, r8
c0de4bfa:	f000 fb38 	bl	c0de526e <OUTLINED_FUNCTION_3>
c0de4bfe:	604f      	str	r7, [r1, #4]
c0de4c00:	e00f      	b.n	c0de4c22 <nbgl_layoutAddText+0x33a>
c0de4c02:	300c      	adds	r0, #12
c0de4c04:	2108      	movs	r1, #8
c0de4c06:	7138      	strb	r0, [r7, #4]
c0de4c08:	0a00      	lsrs	r0, r0, #8
c0de4c0a:	7178      	strb	r0, [r7, #5]
c0de4c0c:	2001      	movs	r0, #1
c0de4c0e:	2200      	movs	r2, #0
c0de4c10:	7679      	strb	r1, [r7, #25]
c0de4c12:	4641      	mov	r1, r8
c0de4c14:	76ba      	strb	r2, [r7, #26]
c0de4c16:	f000 fb2a 	bl	c0de526e <OUTLINED_FUNCTION_3>
c0de4c1a:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de4c1e:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de4c22:	6868      	ldr	r0, [r5, #4]
c0de4c24:	78a9      	ldrb	r1, [r5, #2]
c0de4c26:	2205      	movs	r2, #5
c0de4c28:	f888 2016 	strb.w	r2, [r8, #22]
c0de4c2c:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de4c30:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de4c34:	2000      	movs	r0, #0
c0de4c36:	3101      	adds	r1, #1
c0de4c38:	f888 a006 	strb.w	sl, [r8, #6]
c0de4c3c:	f888 2007 	strb.w	r2, [r8, #7]
c0de4c40:	f888 001f 	strb.w	r0, [r8, #31]
c0de4c44:	70a9      	strb	r1, [r5, #2]
c0de4c46:	b008      	add	sp, #32
c0de4c48:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4c4c:	00001524 	.word	0x00001524

c0de4c50 <nbgl_layoutAddMenuList>:
c0de4c50:	2800      	cmp	r0, #0
c0de4c52:	d04f      	beq.n	c0de4cf4 <nbgl_layoutAddMenuList+0xa4>
c0de4c54:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4c58:	460c      	mov	r4, r1
c0de4c5a:	4605      	mov	r5, r0
c0de4c5c:	2700      	movs	r7, #0
c0de4c5e:	f04f 0b05 	mov.w	fp, #5
c0de4c62:	f04f 0803 	mov.w	r8, #3
c0de4c66:	f04f 0a00 	mov.w	sl, #0
c0de4c6a:	7920      	ldrb	r0, [r4, #4]
c0de4c6c:	4582      	cmp	sl, r0
c0de4c6e:	d23e      	bcs.n	c0de4cee <nbgl_layoutAddMenuList+0x9e>
c0de4c70:	7960      	ldrb	r0, [r4, #5]
c0de4c72:	2803      	cmp	r0, #3
c0de4c74:	d302      	bcc.n	c0de4c7c <nbgl_layoutAddMenuList+0x2c>
c0de4c76:	1e81      	subs	r1, r0, #2
c0de4c78:	4551      	cmp	r1, sl
c0de4c7a:	dc35      	bgt.n	c0de4ce8 <nbgl_layoutAddMenuList+0x98>
c0de4c7c:	3002      	adds	r0, #2
c0de4c7e:	4550      	cmp	r0, sl
c0de4c80:	d332      	bcc.n	c0de4ce8 <nbgl_layoutAddMenuList+0x98>
c0de4c82:	7869      	ldrb	r1, [r5, #1]
c0de4c84:	f000 fb05 	bl	c0de5292 <OUTLINED_FUNCTION_5>
c0de4c88:	6821      	ldr	r1, [r4, #0]
c0de4c8a:	4606      	mov	r6, r0
c0de4c8c:	fa5f f08a 	uxtb.w	r0, sl
c0de4c90:	4788      	blx	r1
c0de4c92:	7961      	ldrb	r1, [r4, #5]
c0de4c94:	220a      	movs	r2, #10
c0de4c96:	458a      	cmp	sl, r1
c0de4c98:	bf08      	it	eq
c0de4c9a:	2208      	moveq	r2, #8
c0de4c9c:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de4ca0:	71f7      	strb	r7, [r6, #7]
c0de4ca2:	7177      	strb	r7, [r6, #5]
c0de4ca4:	f886 b020 	strb.w	fp, [r6, #32]
c0de4ca8:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de4cac:	f886 b016 	strb.w	fp, [r6, #22]
c0de4cb0:	f886 801f 	strb.w	r8, [r6, #31]
c0de4cb4:	4632      	mov	r2, r6
c0de4cb6:	0e03      	lsrs	r3, r0, #24
c0de4cb8:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de4cbc:	70d3      	strb	r3, [r2, #3]
c0de4cbe:	0c03      	lsrs	r3, r0, #16
c0de4cc0:	0a00      	lsrs	r0, r0, #8
c0de4cc2:	7093      	strb	r3, [r2, #2]
c0de4cc4:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de4cc8:	6868      	ldr	r0, [r5, #4]
c0de4cca:	78aa      	ldrb	r2, [r5, #2]
c0de4ccc:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de4cd0:	200c      	movs	r0, #12
c0de4cd2:	71b0      	strb	r0, [r6, #6]
c0de4cd4:	2072      	movs	r0, #114	@ 0x72
c0de4cd6:	7130      	strb	r0, [r6, #4]
c0de4cd8:	ebaa 0001 	sub.w	r0, sl, r1
c0de4cdc:	0901      	lsrs	r1, r0, #4
c0de4cde:	0100      	lsls	r0, r0, #4
c0de4ce0:	7670      	strb	r0, [r6, #25]
c0de4ce2:	1c50      	adds	r0, r2, #1
c0de4ce4:	76b1      	strb	r1, [r6, #26]
c0de4ce6:	70a8      	strb	r0, [r5, #2]
c0de4ce8:	f10a 0a01 	add.w	sl, sl, #1
c0de4cec:	e7bd      	b.n	c0de4c6a <nbgl_layoutAddMenuList+0x1a>
c0de4cee:	2000      	movs	r0, #0
c0de4cf0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4cf4:	f000 badc 	b.w	c0de52b0 <OUTLINED_FUNCTION_8>

c0de4cf8 <nbgl_layoutAddCenteredInfo>:
c0de4cf8:	2800      	cmp	r0, #0
c0de4cfa:	f000 80d9 	beq.w	c0de4eb0 <nbgl_layoutAddCenteredInfo+0x1b8>
c0de4cfe:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4d02:	b086      	sub	sp, #24
c0de4d04:	460c      	mov	r4, r1
c0de4d06:	7841      	ldrb	r1, [r0, #1]
c0de4d08:	4682      	mov	sl, r0
c0de4d0a:	2001      	movs	r0, #1
c0de4d0c:	f001 fb2a 	bl	c0de6364 <nbgl_objPoolGet>
c0de4d10:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4d14:	4680      	mov	r8, r0
c0de4d16:	2003      	movs	r0, #3
c0de4d18:	2703      	movs	r7, #3
c0de4d1a:	f001 fb85 	bl	c0de6428 <nbgl_containerPoolGet>
c0de4d1e:	4641      	mov	r1, r8
c0de4d20:	0e02      	lsrs	r2, r0, #24
c0de4d22:	f04f 0b00 	mov.w	fp, #0
c0de4d26:	9404      	str	r4, [sp, #16]
c0de4d28:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de4d2c:	f888 b020 	strb.w	fp, [r8, #32]
c0de4d30:	70ca      	strb	r2, [r1, #3]
c0de4d32:	0c02      	lsrs	r2, r0, #16
c0de4d34:	0a00      	lsrs	r0, r0, #8
c0de4d36:	708a      	strb	r2, [r1, #2]
c0de4d38:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de4d3c:	68a0      	ldr	r0, [r4, #8]
c0de4d3e:	b3c0      	cbz	r0, c0de4db2 <nbgl_layoutAddCenteredInfo+0xba>
c0de4d40:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4d44:	2002      	movs	r0, #2
c0de4d46:	f001 fb0d 	bl	c0de6364 <nbgl_objPoolGet>
c0de4d4a:	4606      	mov	r6, r0
c0de4d4c:	77c7      	strb	r7, [r0, #31]
c0de4d4e:	68a0      	ldr	r0, [r4, #8]
c0de4d50:	f005 ff14 	bl	c0deab7c <pic>
c0de4d54:	4631      	mov	r1, r6
c0de4d56:	0e02      	lsrs	r2, r0, #24
c0de4d58:	f886 b013 	strb.w	fp, [r6, #19]
c0de4d5c:	f886 b009 	strb.w	fp, [r6, #9]
c0de4d60:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de4d64:	70ca      	strb	r2, [r1, #3]
c0de4d66:	0c02      	lsrs	r2, r0, #16
c0de4d68:	708a      	strb	r2, [r1, #2]
c0de4d6a:	0a01      	lsrs	r1, r0, #8
c0de4d6c:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de4d70:	4631      	mov	r1, r6
c0de4d72:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de4d76:	f881 b003 	strb.w	fp, [r1, #3]
c0de4d7a:	f881 b002 	strb.w	fp, [r1, #2]
c0de4d7e:	4641      	mov	r1, r8
c0de4d80:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4d84:	784f      	ldrb	r7, [r1, #1]
c0de4d86:	788c      	ldrb	r4, [r1, #2]
c0de4d88:	78cd      	ldrb	r5, [r1, #3]
c0de4d8a:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de4d8e:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de4d92:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de4d96:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de4d9a:	9c04      	ldr	r4, [sp, #16]
c0de4d9c:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de4da0:	2202      	movs	r2, #2
c0de4da2:	75b2      	strb	r2, [r6, #22]
c0de4da4:	1c5a      	adds	r2, r3, #1
c0de4da6:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de4daa:	7881      	ldrb	r1, [r0, #2]
c0de4dac:	78c0      	ldrb	r0, [r0, #3]
c0de4dae:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de4db2:	6820      	ldr	r0, [r4, #0]
c0de4db4:	2800      	cmp	r0, #0
c0de4db6:	f000 80a2 	beq.w	c0de4efe <nbgl_layoutAddCenteredInfo+0x206>
c0de4dba:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4dbe:	f000 fa68 	bl	c0de5292 <OUTLINED_FUNCTION_5>
c0de4dc2:	4607      	mov	r7, r0
c0de4dc4:	2003      	movs	r0, #3
c0de4dc6:	77f8      	strb	r0, [r7, #31]
c0de4dc8:	6820      	ldr	r0, [r4, #0]
c0de4dca:	f005 fed7 	bl	c0deab7c <pic>
c0de4dce:	4601      	mov	r1, r0
c0de4dd0:	2072      	movs	r0, #114	@ 0x72
c0de4dd2:	2500      	movs	r5, #0
c0de4dd4:	7138      	strb	r0, [r7, #4]
c0de4dd6:	2005      	movs	r0, #5
c0de4dd8:	0e0a      	lsrs	r2, r1, #24
c0de4dda:	717d      	strb	r5, [r7, #5]
c0de4ddc:	f887 0020 	strb.w	r0, [r7, #32]
c0de4de0:	2001      	movs	r0, #1
c0de4de2:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de4de6:	4638      	mov	r0, r7
c0de4de8:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de4dec:	70c2      	strb	r2, [r0, #3]
c0de4dee:	0c0a      	lsrs	r2, r1, #16
c0de4df0:	7082      	strb	r2, [r0, #2]
c0de4df2:	0a08      	lsrs	r0, r1, #8
c0de4df4:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de4df8:	2008      	movs	r0, #8
c0de4dfa:	7b62      	ldrb	r2, [r4, #13]
c0de4dfc:	2a00      	cmp	r2, #0
c0de4dfe:	bf08      	it	eq
c0de4e00:	200a      	moveq	r0, #10
c0de4e02:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4e06:	2272      	movs	r2, #114	@ 0x72
c0de4e08:	2301      	movs	r3, #1
c0de4e0a:	f7ff faff 	bl	c0de440c <nbgl_getTextNbLinesInWidth>
c0de4e0e:	4606      	mov	r6, r0
c0de4e10:	2805      	cmp	r0, #5
c0de4e12:	d31e      	bcc.n	c0de4e52 <nbgl_layoutAddCenteredInfo+0x15a>
c0de4e14:	463d      	mov	r5, r7
c0de4e16:	2004      	movs	r0, #4
c0de4e18:	2101      	movs	r1, #1
c0de4e1a:	f10d 0416 	add.w	r4, sp, #22
c0de4e1e:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de4e22:	786a      	ldrb	r2, [r5, #1]
c0de4e24:	78ab      	ldrb	r3, [r5, #2]
c0de4e26:	78ee      	ldrb	r6, [r5, #3]
c0de4e28:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de4e2c:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de4e30:	9101      	str	r1, [sp, #4]
c0de4e32:	9400      	str	r4, [sp, #0]
c0de4e34:	9c04      	ldr	r4, [sp, #16]
c0de4e36:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de4e3a:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de4e3e:	2304      	movs	r3, #4
c0de4e40:	f000 fa22 	bl	c0de5288 <OUTLINED_FUNCTION_4>
c0de4e44:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de4e48:	2604      	movs	r6, #4
c0de4e4a:	7128      	strb	r0, [r5, #4]
c0de4e4c:	0a00      	lsrs	r0, r0, #8
c0de4e4e:	7168      	strb	r0, [r5, #5]
c0de4e50:	2500      	movs	r5, #0
c0de4e52:	f000 fa21 	bl	c0de5298 <OUTLINED_FUNCTION_6>
c0de4e56:	79c0      	ldrb	r0, [r0, #7]
c0de4e58:	f887 5021 	strb.w	r5, [r7, #33]	@ 0x21
c0de4e5c:	4370      	muls	r0, r6
c0de4e5e:	0a01      	lsrs	r1, r0, #8
c0de4e60:	71b8      	strb	r0, [r7, #6]
c0de4e62:	71f9      	strb	r1, [r7, #7]
c0de4e64:	68a1      	ldr	r1, [r4, #8]
c0de4e66:	b329      	cbz	r1, c0de4eb4 <nbgl_layoutAddCenteredInfo+0x1bc>
c0de4e68:	4641      	mov	r1, r8
c0de4e6a:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4e6e:	784c      	ldrb	r4, [r1, #1]
c0de4e70:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de4e74:	788d      	ldrb	r5, [r1, #2]
c0de4e76:	78c9      	ldrb	r1, [r1, #3]
c0de4e78:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de4e7c:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de4e80:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de4e84:	463a      	mov	r2, r7
c0de4e86:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de4e8a:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de4e8e:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de4e92:	0e0b      	lsrs	r3, r1, #24
c0de4e94:	70d3      	strb	r3, [r2, #3]
c0de4e96:	0c0b      	lsrs	r3, r1, #16
c0de4e98:	0a09      	lsrs	r1, r1, #8
c0de4e9a:	7051      	strb	r1, [r2, #1]
c0de4e9c:	2100      	movs	r1, #0
c0de4e9e:	7093      	strb	r3, [r2, #2]
c0de4ea0:	7211      	strb	r1, [r2, #8]
c0de4ea2:	2e03      	cmp	r6, #3
c0de4ea4:	bf38      	it	cc
c0de4ea6:	2101      	movcc	r1, #1
c0de4ea8:	0089      	lsls	r1, r1, #2
c0de4eaa:	71d1      	strb	r1, [r2, #7]
c0de4eac:	2108      	movs	r1, #8
c0de4eae:	e00a      	b.n	c0de4ec6 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de4eb0:	f000 b9fe 	b.w	c0de52b0 <OUTLINED_FUNCTION_8>
c0de4eb4:	6861      	ldr	r1, [r4, #4]
c0de4eb6:	b119      	cbz	r1, c0de4ec0 <nbgl_layoutAddCenteredInfo+0x1c8>
c0de4eb8:	f000 f9f2 	bl	c0de52a0 <OUTLINED_FUNCTION_7>
c0de4ebc:	2102      	movs	r1, #2
c0de4ebe:	e002      	b.n	c0de4ec6 <nbgl_layoutAddCenteredInfo+0x1ce>
c0de4ec0:	f000 f9ee 	bl	c0de52a0 <OUTLINED_FUNCTION_7>
c0de4ec4:	2105      	movs	r1, #5
c0de4ec6:	7111      	strb	r1, [r2, #4]
c0de4ec8:	4641      	mov	r1, r8
c0de4eca:	4458      	add	r0, fp
c0de4ecc:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de4ed0:	784c      	ldrb	r4, [r1, #1]
c0de4ed2:	788d      	ldrb	r5, [r1, #2]
c0de4ed4:	78ce      	ldrb	r6, [r1, #3]
c0de4ed6:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de4eda:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de4ede:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de4ee2:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de4ee6:	9c04      	ldr	r4, [sp, #16]
c0de4ee8:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de4eec:	1c5a      	adds	r2, r3, #1
c0de4eee:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de4ef2:	7e79      	ldrb	r1, [r7, #25]
c0de4ef4:	7eba      	ldrb	r2, [r7, #26]
c0de4ef6:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4efa:	eb00 0b01 	add.w	fp, r0, r1
c0de4efe:	6860      	ldr	r0, [r4, #4]
c0de4f00:	2800      	cmp	r0, #0
c0de4f02:	d074      	beq.n	c0de4fee <nbgl_layoutAddCenteredInfo+0x2f6>
c0de4f04:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de4f08:	2004      	movs	r0, #4
c0de4f0a:	f8cd a00c 	str.w	sl, [sp, #12]
c0de4f0e:	f001 fa29 	bl	c0de6364 <nbgl_objPoolGet>
c0de4f12:	2603      	movs	r6, #3
c0de4f14:	4607      	mov	r7, r0
c0de4f16:	77c6      	strb	r6, [r0, #31]
c0de4f18:	6860      	ldr	r0, [r4, #4]
c0de4f1a:	f005 fe2f 	bl	c0deab7c <pic>
c0de4f1e:	4601      	mov	r1, r0
c0de4f20:	2000      	movs	r0, #0
c0de4f22:	2301      	movs	r3, #1
c0de4f24:	7178      	strb	r0, [r7, #5]
c0de4f26:	2072      	movs	r0, #114	@ 0x72
c0de4f28:	0e0a      	lsrs	r2, r1, #24
c0de4f2a:	7138      	strb	r0, [r7, #4]
c0de4f2c:	200a      	movs	r0, #10
c0de4f2e:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de4f32:	2005      	movs	r0, #5
c0de4f34:	f887 0020 	strb.w	r0, [r7, #32]
c0de4f38:	2001      	movs	r0, #1
c0de4f3a:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de4f3e:	f000 f989 	bl	c0de5254 <OUTLINED_FUNCTION_2>
c0de4f42:	4682      	mov	sl, r0
c0de4f44:	2804      	cmp	r0, #4
c0de4f46:	d31c      	bcc.n	c0de4f82 <nbgl_layoutAddCenteredInfo+0x28a>
c0de4f48:	463d      	mov	r5, r7
c0de4f4a:	f04f 0c01 	mov.w	ip, #1
c0de4f4e:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de4f52:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de4f56:	786a      	ldrb	r2, [r5, #1]
c0de4f58:	78ab      	ldrb	r3, [r5, #2]
c0de4f5a:	78ee      	ldrb	r6, [r5, #3]
c0de4f5c:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de4f60:	ac05      	add	r4, sp, #20
c0de4f62:	e9cd 4c00 	strd	r4, ip, [sp]
c0de4f66:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4f6a:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de4f6e:	2303      	movs	r3, #3
c0de4f70:	f000 f98a 	bl	c0de5288 <OUTLINED_FUNCTION_4>
c0de4f74:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de4f78:	f04f 0a03 	mov.w	sl, #3
c0de4f7c:	7128      	strb	r0, [r5, #4]
c0de4f7e:	0a00      	lsrs	r0, r0, #8
c0de4f80:	7168      	strb	r0, [r5, #5]
c0de4f82:	f000 f989 	bl	c0de5298 <OUTLINED_FUNCTION_6>
c0de4f86:	4641      	mov	r1, r8
c0de4f88:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de4f8c:	784c      	ldrb	r4, [r1, #1]
c0de4f8e:	788d      	ldrb	r5, [r1, #2]
c0de4f90:	78ce      	ldrb	r6, [r1, #3]
c0de4f92:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de4f96:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de4f9a:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de4f9e:	463d      	mov	r5, r7
c0de4fa0:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de4fa4:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de4fa8:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de4fac:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de4fb0:	0e26      	lsrs	r6, r4, #24
c0de4fb2:	70ee      	strb	r6, [r5, #3]
c0de4fb4:	0c26      	lsrs	r6, r4, #16
c0de4fb6:	0a24      	lsrs	r4, r4, #8
c0de4fb8:	74fc      	strb	r4, [r7, #19]
c0de4fba:	70ae      	strb	r6, [r5, #2]
c0de4fbc:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de4fc0:	2302      	movs	r3, #2
c0de4fc2:	2400      	movs	r4, #0
c0de4fc4:	3201      	adds	r2, #1
c0de4fc6:	767b      	strb	r3, [r7, #25]
c0de4fc8:	2308      	movs	r3, #8
c0de4fca:	76bc      	strb	r4, [r7, #26]
c0de4fcc:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de4fd0:	79c0      	ldrb	r0, [r0, #7]
c0de4fd2:	75bb      	strb	r3, [r7, #22]
c0de4fd4:	fb0a f300 	mul.w	r3, sl, r0
c0de4fd8:	fb0a b000 	mla	r0, sl, r0, fp
c0de4fdc:	e9dd a403 	ldrd	sl, r4, [sp, #12]
c0de4fe0:	71bb      	strb	r3, [r7, #6]
c0de4fe2:	0a1b      	lsrs	r3, r3, #8
c0de4fe4:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de4fe8:	f100 0b02 	add.w	fp, r0, #2
c0de4fec:	71fb      	strb	r3, [r7, #7]
c0de4fee:	7b20      	ldrb	r0, [r4, #12]
c0de4ff0:	2102      	movs	r1, #2
c0de4ff2:	2800      	cmp	r0, #0
c0de4ff4:	bf08      	it	eq
c0de4ff6:	2105      	moveq	r1, #5
c0de4ff8:	f888 1016 	strb.w	r1, [r8, #22]
c0de4ffc:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de5000:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de5004:	2272      	movs	r2, #114	@ 0x72
c0de5006:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de500a:	2000      	movs	r0, #0
c0de500c:	f888 2004 	strb.w	r2, [r8, #4]
c0de5010:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de5014:	3101      	adds	r1, #1
c0de5016:	f888 b006 	strb.w	fp, [r8, #6]
c0de501a:	f888 0019 	strb.w	r0, [r8, #25]
c0de501e:	f888 001a 	strb.w	r0, [r8, #26]
c0de5022:	f888 0005 	strb.w	r0, [r8, #5]
c0de5026:	f888 001f 	strb.w	r0, [r8, #31]
c0de502a:	f888 2007 	strb.w	r2, [r8, #7]
c0de502e:	f88a 1002 	strb.w	r1, [sl, #2]
c0de5032:	b006      	add	sp, #24
c0de5034:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de5038 <nbgl_layoutAddSwitch>:
c0de5038:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de503c:	2800      	cmp	r0, #0
c0de503e:	d077      	beq.n	c0de5130 <nbgl_layoutAddSwitch+0xf8>
c0de5040:	468b      	mov	fp, r1
c0de5042:	7841      	ldrb	r1, [r0, #1]
c0de5044:	4604      	mov	r4, r0
c0de5046:	f000 f924 	bl	c0de5292 <OUTLINED_FUNCTION_5>
c0de504a:	f04f 0a03 	mov.w	sl, #3
c0de504e:	4606      	mov	r6, r0
c0de5050:	f880 a01f 	strb.w	sl, [r0, #31]
c0de5054:	f8db 0000 	ldr.w	r0, [fp]
c0de5058:	f005 fd90 	bl	c0deab7c <pic>
c0de505c:	4601      	mov	r1, r0
c0de505e:	2072      	movs	r0, #114	@ 0x72
c0de5060:	2500      	movs	r5, #0
c0de5062:	f04f 0805 	mov.w	r8, #5
c0de5066:	2301      	movs	r3, #1
c0de5068:	7130      	strb	r0, [r6, #4]
c0de506a:	2008      	movs	r0, #8
c0de506c:	0e0a      	lsrs	r2, r1, #24
c0de506e:	7175      	strb	r5, [r6, #5]
c0de5070:	f886 8020 	strb.w	r8, [r6, #32]
c0de5074:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de5078:	2001      	movs	r0, #1
c0de507a:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de507e:	4630      	mov	r0, r6
c0de5080:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de5084:	70c2      	strb	r2, [r0, #3]
c0de5086:	0c0a      	lsrs	r2, r1, #16
c0de5088:	7082      	strb	r2, [r0, #2]
c0de508a:	0a08      	lsrs	r0, r1, #8
c0de508c:	2272      	movs	r2, #114	@ 0x72
c0de508e:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de5092:	2008      	movs	r0, #8
c0de5094:	f7ff f9ba 	bl	c0de440c <nbgl_getTextNbLinesInWidth>
c0de5098:	2801      	cmp	r0, #1
c0de509a:	d849      	bhi.n	c0de5130 <nbgl_layoutAddSwitch+0xf8>
c0de509c:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de50a0:	f7ff f84d 	bl	c0de413e <nbgl_getFontLineHeight>
c0de50a4:	6862      	ldr	r2, [r4, #4]
c0de50a6:	78a3      	ldrb	r3, [r4, #2]
c0de50a8:	7861      	ldrb	r1, [r4, #1]
c0de50aa:	76b5      	strb	r5, [r6, #26]
c0de50ac:	71f5      	strb	r5, [r6, #7]
c0de50ae:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de50b2:	71b0      	strb	r0, [r6, #6]
c0de50b4:	2002      	movs	r0, #2
c0de50b6:	f886 a019 	strb.w	sl, [r6, #25]
c0de50ba:	75b0      	strb	r0, [r6, #22]
c0de50bc:	1c58      	adds	r0, r3, #1
c0de50be:	70a0      	strb	r0, [r4, #2]
c0de50c0:	f000 f8e7 	bl	c0de5292 <OUTLINED_FUNCTION_5>
c0de50c4:	4607      	mov	r7, r0
c0de50c6:	f880 a01f 	strb.w	sl, [r0, #31]
c0de50ca:	f8db 0004 	ldr.w	r0, [fp, #4]
c0de50ce:	2672      	movs	r6, #114	@ 0x72
c0de50d0:	f005 fd54 	bl	c0deab7c <pic>
c0de50d4:	717d      	strb	r5, [r7, #5]
c0de50d6:	463d      	mov	r5, r7
c0de50d8:	210a      	movs	r1, #10
c0de50da:	713e      	strb	r6, [r7, #4]
c0de50dc:	f887 8020 	strb.w	r8, [r7, #32]
c0de50e0:	f887 1022 	strb.w	r1, [r7, #34]	@ 0x22
c0de50e4:	f805 0f26 	strb.w	r0, [r5, #38]!
c0de50e8:	0e01      	lsrs	r1, r0, #24
c0de50ea:	70e9      	strb	r1, [r5, #3]
c0de50ec:	0c01      	lsrs	r1, r0, #16
c0de50ee:	0a00      	lsrs	r0, r0, #8
c0de50f0:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de50f4:	200a      	movs	r0, #10
c0de50f6:	70a9      	strb	r1, [r5, #2]
c0de50f8:	f7ff f821 	bl	c0de413e <nbgl_getFontLineHeight>
c0de50fc:	2101      	movs	r1, #1
c0de50fe:	782a      	ldrb	r2, [r5, #0]
c0de5100:	78ab      	ldrb	r3, [r5, #2]
c0de5102:	78ed      	ldrb	r5, [r5, #3]
c0de5104:	f887 1024 	strb.w	r1, [r7, #36]	@ 0x24
c0de5108:	09c1      	lsrs	r1, r0, #7
c0de510a:	0040      	lsls	r0, r0, #1
c0de510c:	71f9      	strb	r1, [r7, #7]
c0de510e:	f897 1027 	ldrb.w	r1, [r7, #39]	@ 0x27
c0de5112:	71b8      	strb	r0, [r7, #6]
c0de5114:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de5118:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de511c:	ea43 2205 	orr.w	r2, r3, r5, lsl #8
c0de5120:	2301      	movs	r3, #1
c0de5122:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de5126:	2272      	movs	r2, #114	@ 0x72
c0de5128:	f7ff f970 	bl	c0de440c <nbgl_getTextNbLinesInWidth>
c0de512c:	2802      	cmp	r0, #2
c0de512e:	d904      	bls.n	c0de513a <nbgl_layoutAddSwitch+0x102>
c0de5130:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de5134:	4630      	mov	r0, r6
c0de5136:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de513a:	6860      	ldr	r0, [r4, #4]
c0de513c:	78a2      	ldrb	r2, [r4, #2]
c0de513e:	7861      	ldrb	r1, [r4, #1]
c0de5140:	2501      	movs	r5, #1
c0de5142:	2600      	movs	r6, #0
c0de5144:	76be      	strb	r6, [r7, #26]
c0de5146:	f840 7022 	str.w	r7, [r0, r2, lsl #2]
c0de514a:	2005      	movs	r0, #5
c0de514c:	767d      	strb	r5, [r7, #25]
c0de514e:	75b8      	strb	r0, [r7, #22]
c0de5150:	1c50      	adds	r0, r2, #1
c0de5152:	70a0      	strb	r0, [r4, #2]
c0de5154:	2005      	movs	r0, #5
c0de5156:	f001 f905 	bl	c0de6364 <nbgl_objPoolGet>
c0de515a:	f04f 0a03 	mov.w	sl, #3
c0de515e:	f04f 0808 	mov.w	r8, #8
c0de5162:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de5166:	f880 5022 	strb.w	r5, [r0, #34]	@ 0x22
c0de516a:	4607      	mov	r7, r0
c0de516c:	f880 a020 	strb.w	sl, [r0, #32]
c0de5170:	f880 a01f 	strb.w	sl, [r0, #31]
c0de5174:	f880 8023 	strb.w	r8, [r0, #35]	@ 0x23
c0de5178:	f89b 0008 	ldrb.w	r0, [fp, #8]
c0de517c:	4a1e      	ldr	r2, [pc, #120]	@ (c0de51f8 <nbgl_layoutAddSwitch+0x1c0>)
c0de517e:	491f      	ldr	r1, [pc, #124]	@ (c0de51fc <nbgl_layoutAddSwitch+0x1c4>)
c0de5180:	2801      	cmp	r0, #1
c0de5182:	447a      	add	r2, pc
c0de5184:	4479      	add	r1, pc
c0de5186:	bf08      	it	eq
c0de5188:	4611      	moveq	r1, r2
c0de518a:	463a      	mov	r2, r7
c0de518c:	0e0b      	lsrs	r3, r1, #24
c0de518e:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de5192:	70d3      	strb	r3, [r2, #3]
c0de5194:	0c0b      	lsrs	r3, r1, #16
c0de5196:	7093      	strb	r3, [r2, #2]
c0de5198:	0a0a      	lsrs	r2, r1, #8
c0de519a:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de519e:	2801      	cmp	r0, #1
c0de51a0:	4638      	mov	r0, r7
c0de51a2:	4a17      	ldr	r2, [pc, #92]	@ (c0de5200 <nbgl_layoutAddSwitch+0x1c8>)
c0de51a4:	4d17      	ldr	r5, [pc, #92]	@ (c0de5204 <nbgl_layoutAddSwitch+0x1cc>)
c0de51a6:	447a      	add	r2, pc
c0de51a8:	447d      	add	r5, pc
c0de51aa:	bf18      	it	ne
c0de51ac:	462a      	movne	r2, r5
c0de51ae:	f800 2f2d 	strb.w	r2, [r0, #45]!
c0de51b2:	0e13      	lsrs	r3, r2, #24
c0de51b4:	70c3      	strb	r3, [r0, #3]
c0de51b6:	0c13      	lsrs	r3, r2, #16
c0de51b8:	7083      	strb	r3, [r0, #2]
c0de51ba:	0a10      	lsrs	r0, r2, #8
c0de51bc:	f887 002e 	strb.w	r0, [r7, #46]	@ 0x2e
c0de51c0:	2008      	movs	r0, #8
c0de51c2:	f7fe ff9a 	bl	c0de40fa <nbgl_getTextWidth>
c0de51c6:	6861      	ldr	r1, [r4, #4]
c0de51c8:	78a2      	ldrb	r2, [r4, #2]
c0de51ca:	786b      	ldrb	r3, [r5, #1]
c0de51cc:	76be      	strb	r6, [r7, #26]
c0de51ce:	71fe      	strb	r6, [r7, #7]
c0de51d0:	f887 8016 	strb.w	r8, [r7, #22]
c0de51d4:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de51d8:	210c      	movs	r1, #12
c0de51da:	f887 a019 	strb.w	sl, [r7, #25]
c0de51de:	71b9      	strb	r1, [r7, #6]
c0de51e0:	7829      	ldrb	r1, [r5, #0]
c0de51e2:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de51e6:	4408      	add	r0, r1
c0de51e8:	1c51      	adds	r1, r2, #1
c0de51ea:	300a      	adds	r0, #10
c0de51ec:	7138      	strb	r0, [r7, #4]
c0de51ee:	0a00      	lsrs	r0, r0, #8
c0de51f0:	70a1      	strb	r1, [r4, #2]
c0de51f2:	7178      	strb	r0, [r7, #5]
c0de51f4:	e79e      	b.n	c0de5134 <nbgl_layoutAddSwitch+0xfc>
c0de51f6:	bf00      	nop
c0de51f8:	0000654a 	.word	0x0000654a
c0de51fc:	00006624 	.word	0x00006624
c0de5200:	000062e7 	.word	0x000062e7
c0de5204:	000062cf 	.word	0x000062cf

c0de5208 <nbgl_layoutDraw>:
c0de5208:	b120      	cbz	r0, c0de5214 <nbgl_layoutDraw+0xc>
c0de520a:	b580      	push	{r7, lr}
c0de520c:	f001 f960 	bl	c0de64d0 <nbgl_screenRedraw>
c0de5210:	2000      	movs	r0, #0
c0de5212:	bd80      	pop	{r7, pc}
c0de5214:	f000 b84c 	b.w	c0de52b0 <OUTLINED_FUNCTION_8>

c0de5218 <nbgl_layoutRelease>:
c0de5218:	b148      	cbz	r0, c0de522e <nbgl_layoutRelease+0x16>
c0de521a:	b510      	push	{r4, lr}
c0de521c:	4604      	mov	r4, r0
c0de521e:	7800      	ldrb	r0, [r0, #0]
c0de5220:	b110      	cbz	r0, c0de5228 <nbgl_layoutRelease+0x10>
c0de5222:	7860      	ldrb	r0, [r4, #1]
c0de5224:	f001 faae 	bl	c0de6784 <nbgl_screenPop>
c0de5228:	2000      	movs	r0, #0
c0de522a:	70a0      	strb	r0, [r4, #2]
c0de522c:	bd10      	pop	{r4, pc}
c0de522e:	f000 b83f 	b.w	c0de52b0 <OUTLINED_FUNCTION_8>

c0de5232 <OUTLINED_FUNCTION_1>:
c0de5232:	71b8      	strb	r0, [r7, #6]
c0de5234:	2008      	movs	r0, #8
c0de5236:	0e0a      	lsrs	r2, r1, #24
c0de5238:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de523c:	4638      	mov	r0, r7
c0de523e:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de5242:	70c2      	strb	r2, [r0, #3]
c0de5244:	0c0a      	lsrs	r2, r1, #16
c0de5246:	7082      	strb	r2, [r0, #2]
c0de5248:	0a08      	lsrs	r0, r1, #8
c0de524a:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de524e:	2008      	movs	r0, #8
c0de5250:	f7fe bf53 	b.w	c0de40fa <nbgl_getTextWidth>

c0de5254 <OUTLINED_FUNCTION_2>:
c0de5254:	4638      	mov	r0, r7
c0de5256:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de525a:	70c2      	strb	r2, [r0, #3]
c0de525c:	0c0a      	lsrs	r2, r1, #16
c0de525e:	7082      	strb	r2, [r0, #2]
c0de5260:	0a08      	lsrs	r0, r1, #8
c0de5262:	2272      	movs	r2, #114	@ 0x72
c0de5264:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de5268:	200a      	movs	r0, #10
c0de526a:	f7ff b8cf 	b.w	c0de440c <nbgl_getTextNbLinesInWidth>

c0de526e <OUTLINED_FUNCTION_3>:
c0de526e:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de5272:	784b      	ldrb	r3, [r1, #1]
c0de5274:	788d      	ldrb	r5, [r1, #2]
c0de5276:	78c9      	ldrb	r1, [r1, #3]
c0de5278:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de527c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5280:	9d05      	ldr	r5, [sp, #20]
c0de5282:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de5286:	4770      	bx	lr

c0de5288 <OUTLINED_FUNCTION_4>:
c0de5288:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de528c:	2272      	movs	r2, #114	@ 0x72
c0de528e:	f7fe bfe9 	b.w	c0de4264 <nbgl_getTextMaxLenInNbLines>

c0de5292 <OUTLINED_FUNCTION_5>:
c0de5292:	2004      	movs	r0, #4
c0de5294:	f001 b866 	b.w	c0de6364 <nbgl_objPoolGet>

c0de5298 <OUTLINED_FUNCTION_6>:
c0de5298:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de529c:	f7fe be93 	b.w	c0de3fc6 <nbgl_getFont>

c0de52a0 <OUTLINED_FUNCTION_7>:
c0de52a0:	2100      	movs	r1, #0
c0de52a2:	463a      	mov	r2, r7
c0de52a4:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de52a8:	70d1      	strb	r1, [r2, #3]
c0de52aa:	7091      	strb	r1, [r2, #2]
c0de52ac:	7051      	strb	r1, [r2, #1]
c0de52ae:	4770      	bx	lr

c0de52b0 <OUTLINED_FUNCTION_8>:
c0de52b0:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de52b4:	4770      	bx	lr

c0de52b6 <OUTLINED_FUNCTION_9>:
c0de52b6:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de52ba:	2003      	movs	r0, #3
c0de52bc:	f887 0020 	strb.w	r0, [r7, #32]
c0de52c0:	77f8      	strb	r0, [r7, #31]
c0de52c2:	4770      	bx	lr

c0de52c4 <nbgl_objDraw>:
c0de52c4:	b570      	push	{r4, r5, r6, lr}
c0de52c6:	7ec1      	ldrb	r1, [r0, #27]
c0de52c8:	4602      	mov	r2, r0
c0de52ca:	b191      	cbz	r1, c0de52f2 <nbgl_objDraw+0x2e>
c0de52cc:	4603      	mov	r3, r0
c0de52ce:	461a      	mov	r2, r3
c0de52d0:	f813 4f0e 	ldrb.w	r4, [r3, #14]!
c0de52d4:	785d      	ldrb	r5, [r3, #1]
c0de52d6:	789e      	ldrb	r6, [r3, #2]
c0de52d8:	78db      	ldrb	r3, [r3, #3]
c0de52da:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de52de:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de52e2:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
c0de52e6:	2b00      	cmp	r3, #0
c0de52e8:	d1f1      	bne.n	c0de52ce <nbgl_objDraw+0xa>
c0de52ea:	7ed3      	ldrb	r3, [r2, #27]
c0de52ec:	b10b      	cbz	r3, c0de52f2 <nbgl_objDraw+0x2e>
c0de52ee:	2201      	movs	r2, #1
c0de52f0:	e004      	b.n	c0de52fc <nbgl_objDraw+0x38>
c0de52f2:	f892 203f 	ldrb.w	r2, [r2, #63]	@ 0x3f
c0de52f6:	2a00      	cmp	r2, #0
c0de52f8:	bf18      	it	ne
c0de52fa:	2201      	movne	r2, #1
c0de52fc:	4b06      	ldr	r3, [pc, #24]	@ (c0de5318 <nbgl_objDraw+0x54>)
c0de52fe:	f819 3003 	ldrb.w	r3, [r9, r3]
c0de5302:	b10b      	cbz	r3, c0de5308 <nbgl_objDraw+0x44>
c0de5304:	b902      	cbnz	r2, c0de5308 <nbgl_objDraw+0x44>
c0de5306:	bd70      	pop	{r4, r5, r6, pc}
c0de5308:	fab1 f181 	clz	r1, r1
c0de530c:	094a      	lsrs	r2, r1, #5
c0de530e:	2100      	movs	r1, #0
c0de5310:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5314:	f000 b802 	b.w	c0de531c <draw_obj_and_chidren>
c0de5318:	00001538 	.word	0x00001538

c0de531c <draw_obj_and_chidren>:
c0de531c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5320:	4604      	mov	r4, r0
c0de5322:	7ec0      	ldrb	r0, [r0, #27]
c0de5324:	2810      	cmp	r0, #16
c0de5326:	f200 80a9 	bhi.w	c0de547c <draw_obj_and_chidren+0x160>
c0de532a:	460e      	mov	r6, r1
c0de532c:	4954      	ldr	r1, [pc, #336]	@ (c0de5480 <draw_obj_and_chidren+0x164>)
c0de532e:	40c1      	lsrs	r1, r0
c0de5330:	07c9      	lsls	r1, r1, #31
c0de5332:	d167      	bne.n	c0de5404 <draw_obj_and_chidren+0xe8>
c0de5334:	4954      	ldr	r1, [pc, #336]	@ (c0de5488 <draw_obj_and_chidren+0x16c>)
c0de5336:	4615      	mov	r5, r2
c0de5338:	4479      	add	r1, pc
c0de533a:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de533e:	f005 fc1d 	bl	c0deab7c <pic>
c0de5342:	4603      	mov	r3, r0
c0de5344:	4620      	mov	r0, r4
c0de5346:	4631      	mov	r1, r6
c0de5348:	462a      	mov	r2, r5
c0de534a:	4798      	blx	r3
c0de534c:	f8df c134 	ldr.w	ip, [pc, #308]	@ c0de5484 <draw_obj_and_chidren+0x168>
c0de5350:	f994 3001 	ldrsb.w	r3, [r4, #1]
c0de5354:	7827      	ldrb	r7, [r4, #0]
c0de5356:	eb09 050c 	add.w	r5, r9, ip
c0de535a:	f939 100c 	ldrsh.w	r1, [r9, ip]
c0de535e:	ea47 2703 	orr.w	r7, r7, r3, lsl #8
c0de5362:	88ae      	ldrh	r6, [r5, #4]
c0de5364:	1872      	adds	r2, r6, r1
c0de5366:	428f      	cmp	r7, r1
c0de5368:	da07      	bge.n	c0de537a <draw_obj_and_chidren+0x5e>
c0de536a:	ea27 71e7 	bic.w	r1, r7, r7, asr #31
c0de536e:	f829 100c 	strh.w	r1, [r9, ip]
c0de5372:	7823      	ldrb	r3, [r4, #0]
c0de5374:	7867      	ldrb	r7, [r4, #1]
c0de5376:	ea43 2707 	orr.w	r7, r3, r7, lsl #8
c0de537a:	f9b5 3002 	ldrsh.w	r3, [r5, #2]
c0de537e:	f8b5 e006 	ldrh.w	lr, [r5, #6]
c0de5382:	7920      	ldrb	r0, [r4, #4]
c0de5384:	7965      	ldrb	r5, [r4, #5]
c0de5386:	b23f      	sxth	r7, r7
c0de5388:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de538c:	4407      	add	r7, r0
c0de538e:	b210      	sxth	r0, r2
c0de5390:	4287      	cmp	r7, r0
c0de5392:	dc00      	bgt.n	c0de5396 <draw_obj_and_chidren+0x7a>
c0de5394:	b91e      	cbnz	r6, c0de539e <draw_obj_and_chidren+0x82>
c0de5396:	2f80      	cmp	r7, #128	@ 0x80
c0de5398:	bfa8      	it	ge
c0de539a:	2780      	movge	r7, #128	@ 0x80
c0de539c:	463a      	mov	r2, r7
c0de539e:	f994 0003 	ldrsb.w	r0, [r4, #3]
c0de53a2:	78a5      	ldrb	r5, [r4, #2]
c0de53a4:	eb0e 0603 	add.w	r6, lr, r3
c0de53a8:	ea45 2700 	orr.w	r7, r5, r0, lsl #8
c0de53ac:	429f      	cmp	r7, r3
c0de53ae:	da08      	bge.n	c0de53c2 <draw_obj_and_chidren+0xa6>
c0de53b0:	eb09 000c 	add.w	r0, r9, ip
c0de53b4:	ea27 73e7 	bic.w	r3, r7, r7, asr #31
c0de53b8:	8043      	strh	r3, [r0, #2]
c0de53ba:	78a0      	ldrb	r0, [r4, #2]
c0de53bc:	78e5      	ldrb	r5, [r4, #3]
c0de53be:	ea40 2705 	orr.w	r7, r0, r5, lsl #8
c0de53c2:	b238      	sxth	r0, r7
c0de53c4:	79a5      	ldrb	r5, [r4, #6]
c0de53c6:	79e7      	ldrb	r7, [r4, #7]
c0de53c8:	ea45 2507 	orr.w	r5, r5, r7, lsl #8
c0de53cc:	182f      	adds	r7, r5, r0
c0de53ce:	b230      	sxth	r0, r6
c0de53d0:	4287      	cmp	r7, r0
c0de53d2:	dc02      	bgt.n	c0de53da <draw_obj_and_chidren+0xbe>
c0de53d4:	f1be 0f00 	cmp.w	lr, #0
c0de53d8:	d103      	bne.n	c0de53e2 <draw_obj_and_chidren+0xc6>
c0de53da:	2f40      	cmp	r7, #64	@ 0x40
c0de53dc:	bfa8      	it	ge
c0de53de:	2740      	movge	r7, #64	@ 0x40
c0de53e0:	463e      	mov	r6, r7
c0de53e2:	eb09 000c 	add.w	r0, r9, ip
c0de53e6:	1a51      	subs	r1, r2, r1
c0de53e8:	8081      	strh	r1, [r0, #4]
c0de53ea:	b231      	sxth	r1, r6
c0de53ec:	2940      	cmp	r1, #64	@ 0x40
c0de53ee:	bfa8      	it	ge
c0de53f0:	2640      	movge	r6, #64	@ 0x40
c0de53f2:	1af1      	subs	r1, r6, r3
c0de53f4:	80c1      	strh	r1, [r0, #6]
c0de53f6:	7a40      	ldrb	r0, [r0, #9]
c0de53f8:	7a61      	ldrb	r1, [r4, #9]
c0de53fa:	4281      	cmp	r1, r0
c0de53fc:	bf84      	itt	hi
c0de53fe:	eb09 000c 	addhi.w	r0, r9, ip
c0de5402:	7241      	strbhi	r1, [r0, #9]
c0de5404:	7ee0      	ldrb	r0, [r4, #27]
c0de5406:	2801      	cmp	r0, #1
c0de5408:	d838      	bhi.n	c0de547c <draw_obj_and_chidren+0x160>
c0de540a:	4620      	mov	r0, r4
c0de540c:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de5410:	f000 ff05 	bl	c0de621e <OUTLINED_FUNCTION_1>
c0de5414:	b390      	cbz	r0, c0de547c <draw_obj_and_chidren+0x160>
c0de5416:	2700      	movs	r7, #0
c0de5418:	ea4f 6814 	mov.w	r8, r4, lsr #24
c0de541c:	ea4f 4a14 	mov.w	sl, r4, lsr #16
c0de5420:	ea4f 2b14 	mov.w	fp, r4, lsr #8
c0de5424:	2500      	movs	r5, #0
c0de5426:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de542a:	4287      	cmp	r7, r0
c0de542c:	d226      	bcs.n	c0de547c <draw_obj_and_chidren+0x160>
c0de542e:	4620      	mov	r0, r4
c0de5430:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de5434:	f000 fef3 	bl	c0de621e <OUTLINED_FUNCTION_1>
c0de5438:	f850 6027 	ldr.w	r6, [r0, r7, lsl #2]
c0de543c:	b1e6      	cbz	r6, c0de5478 <draw_obj_and_chidren+0x15c>
c0de543e:	4630      	mov	r0, r6
c0de5440:	4629      	mov	r1, r5
c0de5442:	2201      	movs	r2, #1
c0de5444:	f886 b00f 	strb.w	fp, [r6, #15]
c0de5448:	f800 4f0e 	strb.w	r4, [r0, #14]!
c0de544c:	f880 8003 	strb.w	r8, [r0, #3]
c0de5450:	f880 a002 	strb.w	sl, [r0, #2]
c0de5454:	4630      	mov	r0, r6
c0de5456:	f7ff ff61 	bl	c0de531c <draw_obj_and_chidren>
c0de545a:	4631      	mov	r1, r6
c0de545c:	7cf0      	ldrb	r0, [r6, #19]
c0de545e:	f811 2f12 	ldrb.w	r2, [r1, #18]!
c0de5462:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de5466:	788a      	ldrb	r2, [r1, #2]
c0de5468:	78c9      	ldrb	r1, [r1, #3]
c0de546a:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de546e:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de5472:	2800      	cmp	r0, #0
c0de5474:	bf08      	it	eq
c0de5476:	4635      	moveq	r5, r6
c0de5478:	3701      	adds	r7, #1
c0de547a:	e7d4      	b.n	c0de5426 <draw_obj_and_chidren+0x10a>
c0de547c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5480:	00013ec8 	.word	0x00013ec8
c0de5484:	0000153a 	.word	0x0000153a
c0de5488:	00007b8c 	.word	0x00007b8c

c0de548c <nbgl_refresh>:
c0de548c:	2002      	movs	r0, #2
c0de548e:	f000 b801 	b.w	c0de5494 <nbgl_refreshSpecial>
	...

c0de5494 <nbgl_refreshSpecial>:
c0de5494:	b570      	push	{r4, r5, r6, lr}
c0de5496:	4d0d      	ldr	r5, [pc, #52]	@ (c0de54cc <nbgl_refreshSpecial+0x38>)
c0de5498:	4601      	mov	r1, r0
c0de549a:	eb09 0005 	add.w	r0, r9, r5
c0de549e:	8880      	ldrh	r0, [r0, #4]
c0de54a0:	b198      	cbz	r0, c0de54ca <nbgl_refreshSpecial+0x36>
c0de54a2:	eb09 0005 	add.w	r0, r9, r5
c0de54a6:	88c0      	ldrh	r0, [r0, #6]
c0de54a8:	b178      	cbz	r0, c0de54ca <nbgl_refreshSpecial+0x36>
c0de54aa:	eb09 0405 	add.w	r4, r9, r5
c0de54ae:	2200      	movs	r2, #0
c0de54b0:	2600      	movs	r6, #0
c0de54b2:	4620      	mov	r0, r4
c0de54b4:	f005 fbc8 	bl	c0deac48 <nbgl_frontRefreshArea>
c0de54b8:	207f      	movs	r0, #127	@ 0x7f
c0de54ba:	80a6      	strh	r6, [r4, #4]
c0de54bc:	80e6      	strh	r6, [r4, #6]
c0de54be:	f829 0005 	strh.w	r0, [r9, r5]
c0de54c2:	2001      	movs	r0, #1
c0de54c4:	7260      	strb	r0, [r4, #9]
c0de54c6:	203f      	movs	r0, #63	@ 0x3f
c0de54c8:	8060      	strh	r0, [r4, #2]
c0de54ca:	bd70      	pop	{r4, r5, r6, pc}
c0de54cc:	0000153a 	.word	0x0000153a

c0de54d0 <nbgl_objInit>:
c0de54d0:	4801      	ldr	r0, [pc, #4]	@ (c0de54d8 <nbgl_objInit+0x8>)
c0de54d2:	f000 bee8 	b.w	c0de62a6 <OUTLINED_FUNCTION_6>
c0de54d6:	bf00      	nop
c0de54d8:	0000153a 	.word	0x0000153a

c0de54dc <nbgl_objAllowDrawing>:
c0de54dc:	4902      	ldr	r1, [pc, #8]	@ (c0de54e8 <nbgl_objAllowDrawing+0xc>)
c0de54de:	f080 0001 	eor.w	r0, r0, #1
c0de54e2:	f809 0001 	strb.w	r0, [r9, r1]
c0de54e6:	4770      	bx	lr
c0de54e8:	00001538 	.word	0x00001538

c0de54ec <draw_screen>:
c0de54ec:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de54ee:	7a01      	ldrb	r1, [r0, #8]
c0de54f0:	7842      	ldrb	r2, [r0, #1]
c0de54f2:	7883      	ldrb	r3, [r0, #2]
c0de54f4:	78c4      	ldrb	r4, [r0, #3]
c0de54f6:	f88d 100c 	strb.w	r1, [sp, #12]
c0de54fa:	7801      	ldrb	r1, [r0, #0]
c0de54fc:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5500:	7902      	ldrb	r2, [r0, #4]
c0de5502:	f8ad 1004 	strh.w	r1, [sp, #4]
c0de5506:	ea43 2104 	orr.w	r1, r3, r4, lsl #8
c0de550a:	f8ad 1006 	strh.w	r1, [sp, #6]
c0de550e:	7941      	ldrb	r1, [r0, #5]
c0de5510:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de5514:	f8ad 1008 	strh.w	r1, [sp, #8]
c0de5518:	79c1      	ldrb	r1, [r0, #7]
c0de551a:	7980      	ldrb	r0, [r0, #6]
c0de551c:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5520:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de5524:	a801      	add	r0, sp, #4
c0de5526:	f005 fb59 	bl	c0deabdc <nbgl_frontDrawRect>
c0de552a:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de552c <draw_container>:
c0de552c:	b570      	push	{r4, r5, r6, lr}
c0de552e:	4604      	mov	r4, r0
c0de5530:	b10a      	cbz	r2, c0de5536 <draw_container+0xa>
c0de5532:	f000 fed5 	bl	c0de62e0 <OUTLINED_FUNCTION_9>
c0de5536:	f000 fee6 	bl	c0de6306 <OUTLINED_FUNCTION_12>
c0de553a:	7cc6      	ldrb	r6, [r0, #19]
c0de553c:	f000 fedb 	bl	c0de62f6 <OUTLINED_FUNCTION_11>
c0de5540:	7a09      	ldrb	r1, [r1, #8]
c0de5542:	f800 1c06 	strb.w	r1, [r0, #-6]
c0de5546:	d004      	beq.n	c0de5552 <draw_container+0x26>
c0de5548:	4620      	mov	r0, r4
c0de554a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de554e:	f005 bb45 	b.w	c0deabdc <nbgl_frontDrawRect>
c0de5552:	bd70      	pop	{r4, r5, r6, pc}

c0de5554 <draw_image>:
c0de5554:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de5556:	460e      	mov	r6, r1
c0de5558:	4604      	mov	r4, r0
c0de555a:	f810 1f21 	ldrb.w	r1, [r0, #33]!
c0de555e:	4617      	mov	r7, r2
c0de5560:	f000 fe53 	bl	c0de620a <OUTLINED_FUNCTION_0>
c0de5564:	b35d      	cbz	r5, c0de55be <draw_image+0x6a>
c0de5566:	7828      	ldrb	r0, [r5, #0]
c0de5568:	78aa      	ldrb	r2, [r5, #2]
c0de556a:	7869      	ldrb	r1, [r5, #1]
c0de556c:	78eb      	ldrb	r3, [r5, #3]
c0de556e:	7120      	strb	r0, [r4, #4]
c0de5570:	71a2      	strb	r2, [r4, #6]
c0de5572:	7161      	strb	r1, [r4, #5]
c0de5574:	71e3      	strb	r3, [r4, #7]
c0de5576:	7928      	ldrb	r0, [r5, #4]
c0de5578:	7260      	strb	r0, [r4, #9]
c0de557a:	b127      	cbz	r7, c0de5586 <draw_image+0x32>
c0de557c:	4620      	mov	r0, r4
c0de557e:	4631      	mov	r1, r6
c0de5580:	f000 fb8c 	bl	c0de5c9c <compute_position>
c0de5584:	7a60      	ldrb	r0, [r4, #9]
c0de5586:	4621      	mov	r1, r4
c0de5588:	2801      	cmp	r0, #1
c0de558a:	4620      	mov	r0, r4
c0de558c:	f811 2f0e 	ldrb.w	r2, [r1, #14]!
c0de5590:	784b      	ldrb	r3, [r1, #1]
c0de5592:	788e      	ldrb	r6, [r1, #2]
c0de5594:	78cf      	ldrb	r7, [r1, #3]
c0de5596:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de559a:	ea46 2307 	orr.w	r3, r6, r7, lsl #8
c0de559e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de55a2:	462b      	mov	r3, r5
c0de55a4:	7a12      	ldrb	r2, [r2, #8]
c0de55a6:	f801 2c06 	strb.w	r2, [r1, #-6]
c0de55aa:	bf14      	ite	ne
c0de55ac:	7fe2      	ldrbne	r2, [r4, #31]
c0de55ae:	22e4      	moveq	r2, #228	@ 0xe4
c0de55b0:	f894 1020 	ldrb.w	r1, [r4, #32]
c0de55b4:	b001      	add	sp, #4
c0de55b6:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de55ba:	f7fe bbeb 	b.w	c0de3d94 <nbgl_drawIcon>
c0de55be:	4620      	mov	r0, r4
c0de55c0:	f810 1f25 	ldrb.w	r1, [r0, #37]!
c0de55c4:	f000 fe48 	bl	c0de6258 <OUTLINED_FUNCTION_3>
c0de55c8:	d005      	beq.n	c0de55d6 <draw_image+0x82>
c0de55ca:	f894 0029 	ldrb.w	r0, [r4, #41]	@ 0x29
c0de55ce:	4788      	blx	r1
c0de55d0:	4605      	mov	r5, r0
c0de55d2:	2800      	cmp	r0, #0
c0de55d4:	d1c7      	bne.n	c0de5566 <draw_image+0x12>
c0de55d6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de55d8 <draw_textArea>:
c0de55d8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de55dc:	b086      	sub	sp, #24
c0de55de:	f890 6022 	ldrb.w	r6, [r0, #34]	@ 0x22
c0de55e2:	4604      	mov	r4, r0
c0de55e4:	b10a      	cbz	r2, c0de55ea <draw_textArea+0x12>
c0de55e6:	f000 fe7b 	bl	c0de62e0 <OUTLINED_FUNCTION_9>
c0de55ea:	4620      	mov	r0, r4
c0de55ec:	f810 1f2c 	ldrb.w	r1, [r0, #44]!
c0de55f0:	f000 fe32 	bl	c0de6258 <OUTLINED_FUNCTION_3>
c0de55f4:	d009      	beq.n	c0de560a <draw_textArea+0x32>
c0de55f6:	f894 0030 	ldrb.w	r0, [r4, #48]	@ 0x30
c0de55fa:	4788      	blx	r1
c0de55fc:	4605      	mov	r5, r0
c0de55fe:	4620      	mov	r0, r4
c0de5600:	f800 5f26 	strb.w	r5, [r0, #38]!
c0de5604:	f000 fe86 	bl	c0de6314 <OUTLINED_FUNCTION_13>
c0de5608:	e004      	b.n	c0de5614 <draw_textArea+0x3c>
c0de560a:	4620      	mov	r0, r4
c0de560c:	f810 1f26 	ldrb.w	r1, [r0, #38]!
c0de5610:	f000 fdfb 	bl	c0de620a <OUTLINED_FUNCTION_0>
c0de5614:	2d00      	cmp	r5, #0
c0de5616:	f000 8138 	beq.w	c0de588a <draw_textArea+0x2b2>
c0de561a:	4622      	mov	r2, r4
c0de561c:	f812 1f0e 	ldrb.w	r1, [r2, #14]!
c0de5620:	7853      	ldrb	r3, [r2, #1]
c0de5622:	7897      	ldrb	r7, [r2, #2]
c0de5624:	78d0      	ldrb	r0, [r2, #3]
c0de5626:	f892 c013 	ldrb.w	ip, [r2, #19]
c0de562a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de562e:	ea47 2000 	orr.w	r0, r7, r0, lsl #8
c0de5632:	f1bc 0f01 	cmp.w	ip, #1
c0de5636:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
c0de563a:	7a08      	ldrb	r0, [r1, #8]
c0de563c:	f802 0c06 	strb.w	r0, [r2, #-6]
c0de5640:	bf19      	ittee	ne
c0de5642:	7a09      	ldrbne	r1, [r1, #8]
c0de5644:	460a      	movne	r2, r1
c0de5646:	2200      	moveq	r2, #0
c0de5648:	2103      	moveq	r1, #3
c0de564a:	7221      	strb	r1, [r4, #8]
c0de564c:	7820      	ldrb	r0, [r4, #0]
c0de564e:	f88d 2014 	strb.w	r2, [sp, #20]
c0de5652:	78e3      	ldrb	r3, [r4, #3]
c0de5654:	f1bc 0f01 	cmp.w	ip, #1
c0de5658:	7861      	ldrb	r1, [r4, #1]
c0de565a:	78a2      	ldrb	r2, [r4, #2]
c0de565c:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5660:	7921      	ldrb	r1, [r4, #4]
c0de5662:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de5666:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de566a:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de566e:	7960      	ldrb	r0, [r4, #5]
c0de5670:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de5674:	79a1      	ldrb	r1, [r4, #6]
c0de5676:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de567a:	79e0      	ldrb	r0, [r4, #7]
c0de567c:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de5680:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de5684:	a803      	add	r0, sp, #12
c0de5686:	d104      	bne.n	c0de5692 <draw_textArea+0xba>
c0de5688:	2100      	movs	r1, #0
c0de568a:	2203      	movs	r2, #3
c0de568c:	f7fe f8c0 	bl	c0de3810 <nbgl_drawRoundedRect>
c0de5690:	e001      	b.n	c0de5696 <draw_textArea+0xbe>
c0de5692:	f005 faa3 	bl	c0deabdc <nbgl_frontDrawRect>
c0de5696:	4630      	mov	r0, r6
c0de5698:	f7fe fd4c 	bl	c0de4134 <nbgl_getFontHeight>
c0de569c:	4680      	mov	r8, r0
c0de569e:	4630      	mov	r0, r6
c0de56a0:	f7fe fd4d 	bl	c0de413e <nbgl_getFontLineHeight>
c0de56a4:	4683      	mov	fp, r0
c0de56a6:	f894 0023 	ldrb.w	r0, [r4, #35]	@ 0x23
c0de56aa:	2800      	cmp	r0, #0
c0de56ac:	d057      	beq.n	c0de575e <draw_textArea+0x186>
c0de56ae:	4630      	mov	r0, r6
c0de56b0:	4629      	mov	r1, r5
c0de56b2:	f7fe fcd0 	bl	c0de4056 <nbgl_getSingleLineTextWidth>
c0de56b6:	7921      	ldrb	r1, [r4, #4]
c0de56b8:	7962      	ldrb	r2, [r4, #5]
c0de56ba:	ea41 2202 	orr.w	r2, r1, r2, lsl #8
c0de56be:	4290      	cmp	r0, r2
c0de56c0:	d951      	bls.n	c0de5766 <draw_textArea+0x18e>
c0de56c2:	4f73      	ldr	r7, [pc, #460]	@ (c0de5890 <draw_textArea+0x2b8>)
c0de56c4:	4630      	mov	r0, r6
c0de56c6:	447f      	add	r7, pc
c0de56c8:	4639      	mov	r1, r7
c0de56ca:	f7fe fd16 	bl	c0de40fa <nbgl_getTextWidth>
c0de56ce:	4682      	mov	sl, r0
c0de56d0:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de56d4:	7820      	ldrb	r0, [r4, #0]
c0de56d6:	7861      	ldrb	r1, [r4, #1]
c0de56d8:	78a2      	ldrb	r2, [r4, #2]
c0de56da:	78e3      	ldrb	r3, [r4, #3]
c0de56dc:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de56e0:	79a1      	ldrb	r1, [r4, #6]
c0de56e2:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de56e6:	79e0      	ldrb	r0, [r4, #7]
c0de56e8:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de56ec:	2102      	movs	r1, #2
c0de56ee:	eba0 0008 	sub.w	r0, r0, r8
c0de56f2:	f10d 080c 	add.w	r8, sp, #12
c0de56f6:	fb90 f0f1 	sdiv	r0, r0, r1
c0de56fa:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de56fe:	2203      	movs	r2, #3
c0de5700:	4633      	mov	r3, r6
c0de5702:	4408      	add	r0, r1
c0de5704:	4639      	mov	r1, r7
c0de5706:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de570a:	7fe0      	ldrb	r0, [r4, #31]
c0de570c:	9000      	str	r0, [sp, #0]
c0de570e:	4640      	mov	r0, r8
c0de5710:	f7fe fb60 	bl	c0de3dd4 <nbgl_drawText>
c0de5714:	7920      	ldrb	r0, [r4, #4]
c0de5716:	7961      	ldrb	r1, [r4, #5]
c0de5718:	f10d 020a 	add.w	r2, sp, #10
c0de571c:	9200      	str	r2, [sp, #0]
c0de571e:	ab02      	add	r3, sp, #8
c0de5720:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5724:	4629      	mov	r1, r5
c0de5726:	eba0 000a 	sub.w	r0, r0, sl
c0de572a:	b282      	uxth	r2, r0
c0de572c:	4630      	mov	r0, r6
c0de572e:	f7fe fe2b 	bl	c0de4388 <nbgl_getTextMaxLenAndWidthFromEnd>
c0de5732:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de5736:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de573a:	f8bd 000c 	ldrh.w	r0, [sp, #12]
c0de573e:	4450      	add	r0, sl
c0de5740:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de5744:	4628      	mov	r0, r5
c0de5746:	f7fe fcff 	bl	c0de4148 <nbgl_getTextLength>
c0de574a:	f8bd 2008 	ldrh.w	r2, [sp, #8]
c0de574e:	7fe1      	ldrb	r1, [r4, #31]
c0de5750:	f894 3022 	ldrb.w	r3, [r4, #34]	@ 0x22
c0de5754:	1a80      	subs	r0, r0, r2
c0de5756:	9100      	str	r1, [sp, #0]
c0de5758:	1829      	adds	r1, r5, r0
c0de575a:	4640      	mov	r0, r8
c0de575c:	e093      	b.n	c0de5886 <draw_textArea+0x2ae>
c0de575e:	7920      	ldrb	r0, [r4, #4]
c0de5760:	7961      	ldrb	r1, [r4, #5]
c0de5762:	ea40 2201 	orr.w	r2, r0, r1, lsl #8
c0de5766:	f894 3024 	ldrb.w	r3, [r4, #36]	@ 0x24
c0de576a:	4630      	mov	r0, r6
c0de576c:	4629      	mov	r1, r5
c0de576e:	f7fe fe4d 	bl	c0de440c <nbgl_getTextNbLinesInWidth>
c0de5772:	7a23      	ldrb	r3, [r4, #8]
c0de5774:	f894 7025 	ldrb.w	r7, [r4, #37]	@ 0x25
c0de5778:	f8ad 8012 	strh.w	r8, [sp, #18]
c0de577c:	79a1      	ldrb	r1, [r4, #6]
c0de577e:	79e2      	ldrb	r2, [r4, #7]
c0de5780:	f894 c021 	ldrb.w	ip, [r4, #33]	@ 0x21
c0de5784:	f88d 3014 	strb.w	r3, [sp, #20]
c0de5788:	b2c3      	uxtb	r3, r0
c0de578a:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de578e:	42bb      	cmp	r3, r7
c0de5790:	4603      	mov	r3, r0
c0de5792:	bf88      	it	hi
c0de5794:	463b      	movhi	r3, r7
c0de5796:	2f00      	cmp	r7, #0
c0de5798:	bf08      	it	eq
c0de579a:	4603      	moveq	r3, r0
c0de579c:	b2df      	uxtb	r7, r3
c0de579e:	1e78      	subs	r0, r7, #1
c0de57a0:	fb00 800b 	mla	r0, r0, fp, r8
c0de57a4:	f04f 0800 	mov.w	r8, #0
c0de57a8:	b280      	uxth	r0, r0
c0de57aa:	1a08      	subs	r0, r1, r0
c0de57ac:	2102      	movs	r1, #2
c0de57ae:	fb90 faf1 	sdiv	sl, r0, r1
c0de57b2:	f64f 70ff 	movw	r0, #65535	@ 0xffff
c0de57b6:	f1bc 0f01 	cmp.w	ip, #1
c0de57ba:	bf08      	it	eq
c0de57bc:	4482      	addeq	sl, r0
c0de57be:	4547      	cmp	r7, r8
c0de57c0:	d063      	beq.n	c0de588a <draw_textArea+0x2b2>
c0de57c2:	7920      	ldrb	r0, [r4, #4]
c0de57c4:	7961      	ldrb	r1, [r4, #5]
c0de57c6:	f894 2024 	ldrb.w	r2, [r4, #36]	@ 0x24
c0de57ca:	f10d 030a 	add.w	r3, sp, #10
c0de57ce:	b2f6      	uxtb	r6, r6
c0de57d0:	e9cd 3200 	strd	r3, r2, [sp]
c0de57d4:	ea40 2201 	orr.w	r2, r0, r1, lsl #8
c0de57d8:	4630      	mov	r0, r6
c0de57da:	4629      	mov	r1, r5
c0de57dc:	ab02      	add	r3, sp, #8
c0de57de:	f7fe fcc3 	bl	c0de4168 <nbgl_getTextMaxLenAndWidth>
c0de57e2:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de57e6:	2806      	cmp	r0, #6
c0de57e8:	d008      	beq.n	c0de57fc <draw_textArea+0x224>
c0de57ea:	2805      	cmp	r0, #5
c0de57ec:	d013      	beq.n	c0de5816 <draw_textArea+0x23e>
c0de57ee:	2804      	cmp	r0, #4
c0de57f0:	d122      	bne.n	c0de5838 <draw_textArea+0x260>
c0de57f2:	7820      	ldrb	r0, [r4, #0]
c0de57f4:	7861      	ldrb	r1, [r4, #1]
c0de57f6:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de57fa:	e01b      	b.n	c0de5834 <draw_textArea+0x25c>
c0de57fc:	7820      	ldrb	r0, [r4, #0]
c0de57fe:	7861      	ldrb	r1, [r4, #1]
c0de5800:	7922      	ldrb	r2, [r4, #4]
c0de5802:	7963      	ldrb	r3, [r4, #5]
c0de5804:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5808:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de580c:	4408      	add	r0, r1
c0de580e:	f8bd 100a 	ldrh.w	r1, [sp, #10]
c0de5812:	1a40      	subs	r0, r0, r1
c0de5814:	e00e      	b.n	c0de5834 <draw_textArea+0x25c>
c0de5816:	7922      	ldrb	r2, [r4, #4]
c0de5818:	7963      	ldrb	r3, [r4, #5]
c0de581a:	7820      	ldrb	r0, [r4, #0]
c0de581c:	7861      	ldrb	r1, [r4, #1]
c0de581e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5822:	f8bd 300a 	ldrh.w	r3, [sp, #10]
c0de5826:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de582a:	1ad2      	subs	r2, r2, r3
c0de582c:	2302      	movs	r3, #2
c0de582e:	fb92 f2f3 	sdiv	r2, r2, r3
c0de5832:	4410      	add	r0, r2
c0de5834:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de5838:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de583c:	78a1      	ldrb	r1, [r4, #2]
c0de583e:	78e2      	ldrb	r2, [r4, #3]
c0de5840:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de5844:	f894 0025 	ldrb.w	r0, [r4, #37]	@ 0x25
c0de5848:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de584c:	4451      	add	r1, sl
c0de584e:	f8ad 100e 	strh.w	r1, [sp, #14]
c0de5852:	b110      	cbz	r0, c0de585a <draw_textArea+0x282>
c0de5854:	3801      	subs	r0, #1
c0de5856:	4540      	cmp	r0, r8
c0de5858:	d912      	bls.n	c0de5880 <draw_textArea+0x2a8>
c0de585a:	f000 fd62 	bl	c0de6322 <OUTLINED_FUNCTION_14>
c0de585e:	a803      	add	r0, sp, #12
c0de5860:	f7fe fab8 	bl	c0de3dd4 <nbgl_drawText>
c0de5864:	4606      	mov	r6, r0
c0de5866:	f8bd 0008 	ldrh.w	r0, [sp, #8]
c0de586a:	44da      	add	sl, fp
c0de586c:	f108 0801 	add.w	r8, r8, #1
c0de5870:	4428      	add	r0, r5
c0de5872:	4605      	mov	r5, r0
c0de5874:	f815 1b01 	ldrb.w	r1, [r5], #1
c0de5878:	290a      	cmp	r1, #10
c0de587a:	bf18      	it	ne
c0de587c:	4605      	movne	r5, r0
c0de587e:	e79e      	b.n	c0de57be <draw_textArea+0x1e6>
c0de5880:	f000 fd4f 	bl	c0de6322 <OUTLINED_FUNCTION_14>
c0de5884:	a803      	add	r0, sp, #12
c0de5886:	f7fe faa5 	bl	c0de3dd4 <nbgl_drawText>
c0de588a:	b006      	add	sp, #24
c0de588c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5890:	00006119 	.word	0x00006119

c0de5894 <draw_button>:
c0de5894:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5898:	b086      	sub	sp, #24
c0de589a:	4604      	mov	r4, r0
c0de589c:	2000      	movs	r0, #0
c0de589e:	f8ad 0016 	strh.w	r0, [sp, #22]
c0de58a2:	b10a      	cbz	r2, c0de58a8 <draw_button+0x14>
c0de58a4:	f000 fd1c 	bl	c0de62e0 <OUTLINED_FUNCTION_9>
c0de58a8:	4623      	mov	r3, r4
c0de58aa:	7be0      	ldrb	r0, [r4, #15]
c0de58ac:	7fe2      	ldrb	r2, [r4, #31]
c0de58ae:	f894 1022 	ldrb.w	r1, [r4, #34]	@ 0x22
c0de58b2:	f813 5f0e 	ldrb.w	r5, [r3, #14]!
c0de58b6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de58ba:	789d      	ldrb	r5, [r3, #2]
c0de58bc:	78db      	ldrb	r3, [r3, #3]
c0de58be:	ea45 2303 	orr.w	r3, r5, r3, lsl #8
c0de58c2:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de58c6:	7a00      	ldrb	r0, [r0, #8]
c0de58c8:	7220      	strb	r0, [r4, #8]
c0de58ca:	4620      	mov	r0, r4
c0de58cc:	f7fd ffa0 	bl	c0de3810 <nbgl_drawRoundedRect>
c0de58d0:	4620      	mov	r0, r4
c0de58d2:	f810 1f29 	ldrb.w	r1, [r0, #41]!
c0de58d6:	f000 fcbf 	bl	c0de6258 <OUTLINED_FUNCTION_3>
c0de58da:	d009      	beq.n	c0de58f0 <draw_button+0x5c>
c0de58dc:	f894 0031 	ldrb.w	r0, [r4, #49]	@ 0x31
c0de58e0:	4788      	blx	r1
c0de58e2:	4605      	mov	r5, r0
c0de58e4:	4620      	mov	r0, r4
c0de58e6:	f800 5f25 	strb.w	r5, [r0, #37]!
c0de58ea:	f000 fd13 	bl	c0de6314 <OUTLINED_FUNCTION_13>
c0de58ee:	e004      	b.n	c0de58fa <draw_button+0x66>
c0de58f0:	4620      	mov	r0, r4
c0de58f2:	f810 1f25 	ldrb.w	r1, [r0, #37]!
c0de58f6:	f000 fc88 	bl	c0de620a <OUTLINED_FUNCTION_0>
c0de58fa:	2d00      	cmp	r5, #0
c0de58fc:	d076      	beq.n	c0de59ec <draw_button+0x158>
c0de58fe:	7820      	ldrb	r0, [r4, #0]
c0de5900:	7861      	ldrb	r1, [r4, #1]
c0de5902:	f894 8002 	ldrb.w	r8, [r4, #2]
c0de5906:	f894 b003 	ldrb.w	fp, [r4, #3]
c0de590a:	ea40 2a01 	orr.w	sl, r0, r1, lsl #8
c0de590e:	f894 0023 	ldrb.w	r0, [r4, #35]	@ 0x23
c0de5912:	f8ad a00c 	strh.w	sl, [sp, #12]
c0de5916:	f7fe fc0d 	bl	c0de4134 <nbgl_getFontHeight>
c0de591a:	4622      	mov	r2, r4
c0de591c:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de5920:	f812 cf2d 	ldrb.w	ip, [r2, #45]!
c0de5924:	f812 6c27 	ldrb.w	r6, [r2, #-39]
c0de5928:	f812 3c26 	ldrb.w	r3, [r2, #-38]
c0de592c:	f812 1c29 	ldrb.w	r1, [r2, #-41]
c0de5930:	f812 7c28 	ldrb.w	r7, [r2, #-40]
c0de5934:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de5938:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
c0de593c:	1a18      	subs	r0, r3, r0
c0de593e:	2302      	movs	r3, #2
c0de5940:	f8ad 1010 	strh.w	r1, [sp, #16]
c0de5944:	fb90 f0f3 	sdiv	r0, r0, r3
c0de5948:	ea48 230b 	orr.w	r3, r8, fp, lsl #8
c0de594c:	4418      	add	r0, r3
c0de594e:	7893      	ldrb	r3, [r2, #2]
c0de5950:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de5954:	78d0      	ldrb	r0, [r2, #3]
c0de5956:	7852      	ldrb	r2, [r2, #1]
c0de5958:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de595c:	ea4c 2202 	orr.w	r2, ip, r2, lsl #8
c0de5960:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de5964:	b150      	cbz	r0, c0de597c <draw_button+0xe8>
c0de5966:	7802      	ldrb	r2, [r0, #0]
c0de5968:	7840      	ldrb	r0, [r0, #1]
c0de596a:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de596e:	3002      	adds	r0, #2
c0de5970:	1a09      	subs	r1, r1, r0
c0de5972:	4482      	add	sl, r0
c0de5974:	f8ad 1010 	strh.w	r1, [sp, #16]
c0de5978:	f8ad a00c 	strh.w	sl, [sp, #12]
c0de597c:	b28e      	uxth	r6, r1
c0de597e:	f894 0023 	ldrb.w	r0, [r4, #35]	@ 0x23
c0de5982:	2201      	movs	r2, #1
c0de5984:	f10d 0316 	add.w	r3, sp, #22
c0de5988:	4629      	mov	r1, r5
c0de598a:	e9cd 3200 	strd	r3, r2, [sp]
c0de598e:	f10d 030a 	add.w	r3, sp, #10
c0de5992:	4632      	mov	r2, r6
c0de5994:	f7fe fbe8 	bl	c0de4168 <nbgl_getTextMaxLenAndWidth>
c0de5998:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de599c:	4286      	cmp	r6, r0
c0de599e:	d906      	bls.n	c0de59ae <draw_button+0x11a>
c0de59a0:	1a30      	subs	r0, r6, r0
c0de59a2:	2102      	movs	r1, #2
c0de59a4:	fb90 f0f1 	sdiv	r0, r0, r1
c0de59a8:	4450      	add	r0, sl
c0de59aa:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de59ae:	7fe0      	ldrb	r0, [r4, #31]
c0de59b0:	f894 1021 	ldrb.w	r1, [r4, #33]	@ 0x21
c0de59b4:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
c0de59b8:	f8bd 200a 	ldrh.w	r2, [sp, #10]
c0de59bc:	9100      	str	r1, [sp, #0]
c0de59be:	f88d 0014 	strb.w	r0, [sp, #20]
c0de59c2:	a803      	add	r0, sp, #12
c0de59c4:	4629      	mov	r1, r5
c0de59c6:	f7fe fa05 	bl	c0de3dd4 <nbgl_drawText>
c0de59ca:	f000 fc5e 	bl	c0de628a <OUTLINED_FUNCTION_5>
c0de59ce:	d047      	beq.n	c0de5a60 <draw_button+0x1cc>
c0de59d0:	7818      	ldrb	r0, [r3, #0]
c0de59d2:	7859      	ldrb	r1, [r3, #1]
c0de59d4:	7922      	ldrb	r2, [r4, #4]
c0de59d6:	7965      	ldrb	r5, [r4, #5]
c0de59d8:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de59dc:	f8bd 1016 	ldrh.w	r1, [sp, #22]
c0de59e0:	ea42 2205 	orr.w	r2, r2, r5, lsl #8
c0de59e4:	4401      	add	r1, r0
c0de59e6:	1a51      	subs	r1, r2, r1
c0de59e8:	3902      	subs	r1, #2
c0de59ea:	e00b      	b.n	c0de5a04 <draw_button+0x170>
c0de59ec:	f000 fc4d 	bl	c0de628a <OUTLINED_FUNCTION_5>
c0de59f0:	d036      	beq.n	c0de5a60 <draw_button+0x1cc>
c0de59f2:	7818      	ldrb	r0, [r3, #0]
c0de59f4:	7859      	ldrb	r1, [r3, #1]
c0de59f6:	7962      	ldrb	r2, [r4, #5]
c0de59f8:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de59fc:	7921      	ldrb	r1, [r4, #4]
c0de59fe:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5a02:	1a09      	subs	r1, r1, r0
c0de5a04:	f04f 0c02 	mov.w	ip, #2
c0de5a08:	7826      	ldrb	r6, [r4, #0]
c0de5a0a:	7867      	ldrb	r7, [r4, #1]
c0de5a0c:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de5a10:	7fe0      	ldrb	r0, [r4, #31]
c0de5a12:	fb91 f1fc 	sdiv	r1, r1, ip
c0de5a16:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5a1a:	f88d 0014 	strb.w	r0, [sp, #20]
c0de5a1e:	78e0      	ldrb	r0, [r4, #3]
c0de5a20:	4431      	add	r1, r6
c0de5a22:	f893 e002 	ldrb.w	lr, [r3, #2]
c0de5a26:	78da      	ldrb	r2, [r3, #3]
c0de5a28:	79a6      	ldrb	r6, [r4, #6]
c0de5a2a:	791d      	ldrb	r5, [r3, #4]
c0de5a2c:	f8ad 100c 	strh.w	r1, [sp, #12]
c0de5a30:	79e1      	ldrb	r1, [r4, #7]
c0de5a32:	ea4e 2202 	orr.w	r2, lr, r2, lsl #8
c0de5a36:	f88d 5015 	strb.w	r5, [sp, #21]
c0de5a3a:	78a5      	ldrb	r5, [r4, #2]
c0de5a3c:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de5a40:	f8ad 2012 	strh.w	r2, [sp, #18]
c0de5a44:	1a89      	subs	r1, r1, r2
c0de5a46:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de5a4a:	f894 2021 	ldrb.w	r2, [r4, #33]	@ 0x21
c0de5a4e:	fb91 f1fc 	sdiv	r1, r1, ip
c0de5a52:	4408      	add	r0, r1
c0de5a54:	2100      	movs	r1, #0
c0de5a56:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de5a5a:	a803      	add	r0, sp, #12
c0de5a5c:	f7fe f99a 	bl	c0de3d94 <nbgl_drawIcon>
c0de5a60:	b006      	add	sp, #24
c0de5a62:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de5a66 <draw_progressBar>:
c0de5a66:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de5a68:	4604      	mov	r4, r0
c0de5a6a:	b10a      	cbz	r2, c0de5a70 <draw_progressBar+0xa>
c0de5a6c:	f000 fc38 	bl	c0de62e0 <OUTLINED_FUNCTION_9>
c0de5a70:	f000 fc49 	bl	c0de6306 <OUTLINED_FUNCTION_12>
c0de5a74:	7c46      	ldrb	r6, [r0, #17]
c0de5a76:	f000 fc3e 	bl	c0de62f6 <OUTLINED_FUNCTION_11>
c0de5a7a:	7a0b      	ldrb	r3, [r1, #8]
c0de5a7c:	f800 3c06 	strb.w	r3, [r0, #-6]
c0de5a80:	d008      	beq.n	c0de5a94 <draw_progressBar+0x2e>
c0de5a82:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
c0de5a86:	2101      	movs	r1, #1
c0de5a88:	2201      	movs	r2, #1
c0de5a8a:	9000      	str	r0, [sp, #0]
c0de5a8c:	4620      	mov	r0, r4
c0de5a8e:	f7fe f809 	bl	c0de3aa4 <nbgl_drawRoundedBorderedRect>
c0de5a92:	e004      	b.n	c0de5a9e <draw_progressBar+0x38>
c0de5a94:	4620      	mov	r0, r4
c0de5a96:	2101      	movs	r1, #1
c0de5a98:	461a      	mov	r2, r3
c0de5a9a:	f7fd feb9 	bl	c0de3810 <nbgl_drawRoundedRect>
c0de5a9e:	7920      	ldrb	r0, [r4, #4]
c0de5aa0:	7961      	ldrb	r1, [r4, #5]
c0de5aa2:	f894 2020 	ldrb.w	r2, [r4, #32]
c0de5aa6:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5aaa:	3802      	subs	r0, #2
c0de5aac:	fb00 f102 	mul.w	r1, r0, r2
c0de5ab0:	2264      	movs	r2, #100	@ 0x64
c0de5ab2:	fb91 f1f2 	sdiv	r1, r1, r2
c0de5ab6:	4281      	cmp	r1, r0
c0de5ab8:	bfb8      	it	lt
c0de5aba:	4608      	movlt	r0, r1
c0de5abc:	0401      	lsls	r1, r0, #16
c0de5abe:	d020      	beq.n	c0de5b02 <draw_progressBar+0x9c>
c0de5ac0:	f8ad 0008 	strh.w	r0, [sp, #8]
c0de5ac4:	2000      	movs	r0, #0
c0de5ac6:	79a1      	ldrb	r1, [r4, #6]
c0de5ac8:	78a2      	ldrb	r2, [r4, #2]
c0de5aca:	78e3      	ldrb	r3, [r4, #3]
c0de5acc:	f88d 000d 	strb.w	r0, [sp, #13]
c0de5ad0:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
c0de5ad4:	f88d 000c 	strb.w	r0, [sp, #12]
c0de5ad8:	79e0      	ldrb	r0, [r4, #7]
c0de5ada:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de5ade:	7861      	ldrb	r1, [r4, #1]
c0de5ae0:	3802      	subs	r0, #2
c0de5ae2:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de5ae6:	7820      	ldrb	r0, [r4, #0]
c0de5ae8:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5aec:	3001      	adds	r0, #1
c0de5aee:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de5af2:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de5af6:	3001      	adds	r0, #1
c0de5af8:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de5afc:	a801      	add	r0, sp, #4
c0de5afe:	f005 f86d 	bl	c0deabdc <nbgl_frontDrawRect>
c0de5b02:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}

c0de5b04 <draw_image_file>:
c0de5b04:	b570      	push	{r4, r5, r6, lr}
c0de5b06:	4604      	mov	r4, r0
c0de5b08:	f810 3f1f 	ldrb.w	r3, [r0, #31]!
c0de5b0c:	7845      	ldrb	r5, [r0, #1]
c0de5b0e:	7886      	ldrb	r6, [r0, #2]
c0de5b10:	78c0      	ldrb	r0, [r0, #3]
c0de5b12:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de5b16:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
c0de5b1a:	ea43 4500 	orr.w	r5, r3, r0, lsl #16
c0de5b1e:	b19d      	cbz	r5, c0de5b48 <draw_image_file+0x44>
c0de5b20:	b132      	cbz	r2, c0de5b30 <draw_image_file+0x2c>
c0de5b22:	f000 fbdd 	bl	c0de62e0 <OUTLINED_FUNCTION_9>
c0de5b26:	4620      	mov	r0, r4
c0de5b28:	f810 1f1f 	ldrb.w	r1, [r0, #31]!
c0de5b2c:	f000 fb6d 	bl	c0de620a <OUTLINED_FUNCTION_0>
c0de5b30:	2003      	movs	r0, #3
c0de5b32:	4629      	mov	r1, r5
c0de5b34:	2200      	movs	r2, #0
c0de5b36:	7220      	strb	r0, [r4, #8]
c0de5b38:	4804      	ldr	r0, [pc, #16]	@ (c0de5b4c <draw_image_file+0x48>)
c0de5b3a:	eb09 0300 	add.w	r3, r9, r0
c0de5b3e:	4620      	mov	r0, r4
c0de5b40:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5b44:	f005 b872 	b.w	c0deac2c <nbgl_frontDrawImageFile>
c0de5b48:	bd70      	pop	{r4, r5, r6, pc}
c0de5b4a:	bf00      	nop
c0de5b4c:	00001544 	.word	0x00001544

c0de5b50 <draw_textEntry>:
c0de5b50:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5b54:	b086      	sub	sp, #24
c0de5b56:	460e      	mov	r6, r1
c0de5b58:	4604      	mov	r4, r0
c0de5b5a:	f810 1f21 	ldrb.w	r1, [r0, #33]!
c0de5b5e:	4617      	mov	r7, r2
c0de5b60:	f000 fb5d 	bl	c0de621e <OUTLINED_FUNCTION_1>
c0de5b64:	f005 fc34 	bl	c0deb3d0 <strlen>
c0de5b68:	4605      	mov	r5, r0
c0de5b6a:	b11f      	cbz	r7, c0de5b74 <draw_textEntry+0x24>
c0de5b6c:	4620      	mov	r0, r4
c0de5b6e:	4631      	mov	r1, r6
c0de5b70:	f000 f894 	bl	c0de5c9c <compute_position>
c0de5b74:	2003      	movs	r0, #3
c0de5b76:	7861      	ldrb	r1, [r4, #1]
c0de5b78:	78a2      	ldrb	r2, [r4, #2]
c0de5b7a:	78e3      	ldrb	r3, [r4, #3]
c0de5b7c:	7220      	strb	r0, [r4, #8]
c0de5b7e:	2000      	movs	r0, #0
c0de5b80:	f8ad 0014 	strh.w	r0, [sp, #20]
c0de5b84:	7820      	ldrb	r0, [r4, #0]
c0de5b86:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de5b8a:	7921      	ldrb	r1, [r4, #4]
c0de5b8c:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de5b90:	ea42 2003 	orr.w	r0, r2, r3, lsl #8
c0de5b94:	2203      	movs	r2, #3
c0de5b96:	f8ad 000e 	strh.w	r0, [sp, #14]
c0de5b9a:	7960      	ldrb	r0, [r4, #5]
c0de5b9c:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de5ba0:	79a1      	ldrb	r1, [r4, #6]
c0de5ba2:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de5ba6:	79e0      	ldrb	r0, [r4, #7]
c0de5ba8:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de5bac:	2101      	movs	r1, #1
c0de5bae:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de5bb2:	a803      	add	r0, sp, #12
c0de5bb4:	f7fd fe2c 	bl	c0de3810 <nbgl_drawRoundedRect>
c0de5bb8:	7a21      	ldrb	r1, [r4, #8]
c0de5bba:	7fe0      	ldrb	r0, [r4, #31]
c0de5bbc:	f88d 1014 	strb.w	r1, [sp, #20]
c0de5bc0:	f7fe fab8 	bl	c0de4134 <nbgl_getFontHeight>
c0de5bc4:	f8ad 0012 	strh.w	r0, [sp, #18]
c0de5bc8:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de5bcc:	2809      	cmp	r0, #9
c0de5bce:	d902      	bls.n	c0de5bd6 <draw_textEntry+0x86>
c0de5bd0:	b006      	add	sp, #24
c0de5bd2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5bd6:	7922      	ldrb	r2, [r4, #4]
c0de5bd8:	7963      	ldrb	r3, [r4, #5]
c0de5bda:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de5bde:	f04f 0b08 	mov.w	fp, #8
c0de5be2:	f10d 0a0c 	add.w	sl, sp, #12
c0de5be6:	f04f 0800 	mov.w	r8, #0
c0de5bea:	4249      	negs	r1, r1
c0de5bec:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5bf0:	eb02 0141 	add.w	r1, r2, r1, lsl #1
c0de5bf4:	2202      	movs	r2, #2
c0de5bf6:	fb91 f7f2 	sdiv	r7, r1, r2
c0de5bfa:	4927      	ldr	r1, [pc, #156]	@ (c0de5c98 <draw_textEntry+0x148>)
c0de5bfc:	4479      	add	r1, pc
c0de5bfe:	9101      	str	r1, [sp, #4]
c0de5c00:	4580      	cmp	r8, r0
c0de5c02:	d2e5      	bcs.n	c0de5bd0 <draw_textEntry+0x80>
c0de5c04:	7821      	ldrb	r1, [r4, #0]
c0de5c06:	7862      	ldrb	r2, [r4, #1]
c0de5c08:	78a3      	ldrb	r3, [r4, #2]
c0de5c0a:	78e6      	ldrb	r6, [r4, #3]
c0de5c0c:	f8ad b010 	strh.w	fp, [sp, #16]
c0de5c10:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de5c14:	4439      	add	r1, r7
c0de5c16:	f8ad 100c 	strh.w	r1, [sp, #12]
c0de5c1a:	ea43 2106 	orr.w	r1, r3, r6, lsl #8
c0de5c1e:	3902      	subs	r1, #2
c0de5c20:	4285      	cmp	r5, r0
c0de5c22:	f8ad 100e 	strh.w	r1, [sp, #14]
c0de5c26:	da09      	bge.n	c0de5c3c <draw_textEntry+0xec>
c0de5c28:	45a8      	cmp	r8, r5
c0de5c2a:	da1e      	bge.n	c0de5c6a <draw_textEntry+0x11a>
c0de5c2c:	4620      	mov	r0, r4
c0de5c2e:	f810 1f21 	ldrb.w	r1, [r0, #33]!
c0de5c32:	f000 faf4 	bl	c0de621e <OUTLINED_FUNCTION_1>
c0de5c36:	f810 0008 	ldrb.w	r0, [r0, r8]
c0de5c3a:	e017      	b.n	c0de5c6c <draw_textEntry+0x11c>
c0de5c3c:	f1b8 0f00 	cmp.w	r8, #0
c0de5c40:	d025      	beq.n	c0de5c8e <draw_textEntry+0x13e>
c0de5c42:	1e41      	subs	r1, r0, #1
c0de5c44:	4588      	cmp	r8, r1
c0de5c46:	da10      	bge.n	c0de5c6a <draw_textEntry+0x11a>
c0de5c48:	4621      	mov	r1, r4
c0de5c4a:	f811 2f21 	ldrb.w	r2, [r1, #33]!
c0de5c4e:	784b      	ldrb	r3, [r1, #1]
c0de5c50:	788e      	ldrb	r6, [r1, #2]
c0de5c52:	78c9      	ldrb	r1, [r1, #3]
c0de5c54:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de5c58:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de5c5c:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de5c60:	1a08      	subs	r0, r1, r0
c0de5c62:	4428      	add	r0, r5
c0de5c64:	4440      	add	r0, r8
c0de5c66:	7840      	ldrb	r0, [r0, #1]
c0de5c68:	e000      	b.n	c0de5c6c <draw_textEntry+0x11c>
c0de5c6a:	205f      	movs	r0, #95	@ 0x5f
c0de5c6c:	f88d 000b 	strb.w	r0, [sp, #11]
c0de5c70:	2000      	movs	r0, #0
c0de5c72:	f10d 010b 	add.w	r1, sp, #11
c0de5c76:	2201      	movs	r2, #1
c0de5c78:	9000      	str	r0, [sp, #0]
c0de5c7a:	4650      	mov	r0, sl
c0de5c7c:	2308      	movs	r3, #8
c0de5c7e:	f7fe f8a9 	bl	c0de3dd4 <nbgl_drawText>
c0de5c82:	f894 0020 	ldrb.w	r0, [r4, #32]
c0de5c86:	370a      	adds	r7, #10
c0de5c88:	f108 0801 	add.w	r8, r8, #1
c0de5c8c:	e7b8      	b.n	c0de5c00 <draw_textEntry+0xb0>
c0de5c8e:	2000      	movs	r0, #0
c0de5c90:	9901      	ldr	r1, [sp, #4]
c0de5c92:	2202      	movs	r2, #2
c0de5c94:	e7f0      	b.n	c0de5c78 <draw_textEntry+0x128>
c0de5c96:	bf00      	nop
c0de5c98:	00005c9d 	.word	0x00005c9d

c0de5c9c <compute_position>:
c0de5c9c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5c9e:	4602      	mov	r2, r0
c0de5ca0:	f812 4f0e 	ldrb.w	r4, [r2, #14]!
c0de5ca4:	7855      	ldrb	r5, [r2, #1]
c0de5ca6:	7896      	ldrb	r6, [r2, #2]
c0de5ca8:	78d7      	ldrb	r7, [r2, #3]
c0de5caa:	7a13      	ldrb	r3, [r2, #8]
c0de5cac:	ea44 2205 	orr.w	r2, r4, r5, lsl #8
c0de5cb0:	ea46 2407 	orr.w	r4, r6, r7, lsl #8
c0de5cb4:	2b00      	cmp	r3, #0
c0de5cb6:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de5cba:	d04e      	beq.n	c0de5d5a <compute_position+0xbe>
c0de5cbc:	4601      	mov	r1, r0
c0de5cbe:	f811 4f12 	ldrb.w	r4, [r1, #18]!
c0de5cc2:	784d      	ldrb	r5, [r1, #1]
c0de5cc4:	788e      	ldrb	r6, [r1, #2]
c0de5cc6:	78c9      	ldrb	r1, [r1, #3]
c0de5cc8:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5ccc:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de5cd0:	ea44 4101 	orr.w	r1, r4, r1, lsl #16
c0de5cd4:	2900      	cmp	r1, #0
c0de5cd6:	bf08      	it	eq
c0de5cd8:	4611      	moveq	r1, r2
c0de5cda:	4291      	cmp	r1, r2
c0de5cdc:	d050      	beq.n	c0de5d80 <compute_position+0xe4>
c0de5cde:	2b0d      	cmp	r3, #13
c0de5ce0:	f000 808f 	beq.w	c0de5e02 <compute_position+0x166>
c0de5ce4:	2b02      	cmp	r3, #2
c0de5ce6:	f000 80ac 	beq.w	c0de5e42 <compute_position+0x1a6>
c0de5cea:	2b03      	cmp	r3, #3
c0de5cec:	f000 80c4 	beq.w	c0de5e78 <compute_position+0x1dc>
c0de5cf0:	2b04      	cmp	r3, #4
c0de5cf2:	f000 80e3 	beq.w	c0de5ebc <compute_position+0x220>
c0de5cf6:	2b06      	cmp	r3, #6
c0de5cf8:	f000 8100 	beq.w	c0de5efc <compute_position+0x260>
c0de5cfc:	2b07      	cmp	r3, #7
c0de5cfe:	f000 811d 	beq.w	c0de5f3c <compute_position+0x2a0>
c0de5d02:	2b08      	cmp	r3, #8
c0de5d04:	f000 8136 	beq.w	c0de5f74 <compute_position+0x2d8>
c0de5d08:	2b09      	cmp	r3, #9
c0de5d0a:	f000 814d 	beq.w	c0de5fa8 <compute_position+0x30c>
c0de5d0e:	2b0a      	cmp	r3, #10
c0de5d10:	f000 816f 	beq.w	c0de5ff2 <compute_position+0x356>
c0de5d14:	2b0b      	cmp	r3, #11
c0de5d16:	f000 8186 	beq.w	c0de6026 <compute_position+0x38a>
c0de5d1a:	2b0c      	cmp	r3, #12
c0de5d1c:	f000 81a4 	beq.w	c0de6068 <compute_position+0x3cc>
c0de5d20:	2b01      	cmp	r3, #1
c0de5d22:	f040 8232 	bne.w	c0de618a <compute_position+0x4ee>
c0de5d26:	7a8b      	ldrb	r3, [r1, #10]
c0de5d28:	7acc      	ldrb	r4, [r1, #11]
c0de5d2a:	7dc7      	ldrb	r7, [r0, #23]
c0de5d2c:	7e05      	ldrb	r5, [r0, #24]
c0de5d2e:	f891 c00c 	ldrb.w	ip, [r1, #12]
c0de5d32:	7b49      	ldrb	r1, [r1, #13]
c0de5d34:	79c6      	ldrb	r6, [r0, #7]
c0de5d36:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5d3a:	ea47 2505 	orr.w	r5, r7, r5, lsl #8
c0de5d3e:	7984      	ldrb	r4, [r0, #6]
c0de5d40:	ea4c 2101 	orr.w	r1, ip, r1, lsl #8
c0de5d44:	442b      	add	r3, r5
c0de5d46:	7e45      	ldrb	r5, [r0, #25]
c0de5d48:	7283      	strb	r3, [r0, #10]
c0de5d4a:	0a1b      	lsrs	r3, r3, #8
c0de5d4c:	ea44 2406 	orr.w	r4, r4, r6, lsl #8
c0de5d50:	72c3      	strb	r3, [r0, #11]
c0de5d52:	7e83      	ldrb	r3, [r0, #26]
c0de5d54:	ea45 2303 	orr.w	r3, r5, r3, lsl #8
c0de5d58:	e0ad      	b.n	c0de5eb6 <compute_position+0x21a>
c0de5d5a:	7fd3      	ldrb	r3, [r2, #31]
c0de5d5c:	b3a3      	cbz	r3, c0de5dc8 <compute_position+0x12c>
c0de5d5e:	2900      	cmp	r1, #0
c0de5d60:	d043      	beq.n	c0de5dea <compute_position+0x14e>
c0de5d62:	790b      	ldrb	r3, [r1, #4]
c0de5d64:	794c      	ldrb	r4, [r1, #5]
c0de5d66:	7a8d      	ldrb	r5, [r1, #10]
c0de5d68:	7ac9      	ldrb	r1, [r1, #11]
c0de5d6a:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5d6e:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de5d72:	7e04      	ldrb	r4, [r0, #24]
c0de5d74:	4419      	add	r1, r3
c0de5d76:	7dc3      	ldrb	r3, [r0, #23]
c0de5d78:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5d7c:	4419      	add	r1, r3
c0de5d7e:	e038      	b.n	c0de5df2 <compute_position+0x156>
c0de5d80:	2b09      	cmp	r3, #9
c0de5d82:	f000 818b 	beq.w	c0de609c <compute_position+0x400>
c0de5d86:	2b02      	cmp	r3, #2
c0de5d88:	f000 8198 	beq.w	c0de60bc <compute_position+0x420>
c0de5d8c:	2b03      	cmp	r3, #3
c0de5d8e:	f000 81a7 	beq.w	c0de60e0 <compute_position+0x444>
c0de5d92:	2b04      	cmp	r3, #4
c0de5d94:	f000 81ba 	beq.w	c0de610c <compute_position+0x470>
c0de5d98:	2b05      	cmp	r3, #5
c0de5d9a:	f000 81c2 	beq.w	c0de6122 <compute_position+0x486>
c0de5d9e:	2b06      	cmp	r3, #6
c0de5da0:	f000 81dd 	beq.w	c0de615e <compute_position+0x4c2>
c0de5da4:	2b07      	cmp	r3, #7
c0de5da6:	f000 820a 	beq.w	c0de61be <compute_position+0x522>
c0de5daa:	2b08      	cmp	r3, #8
c0de5dac:	f000 820e 	beq.w	c0de61cc <compute_position+0x530>
c0de5db0:	2b01      	cmp	r3, #1
c0de5db2:	f040 81ea 	bne.w	c0de618a <compute_position+0x4ee>
c0de5db6:	7dc1      	ldrb	r1, [r0, #23]
c0de5db8:	7e03      	ldrb	r3, [r0, #24]
c0de5dba:	7e44      	ldrb	r4, [r0, #25]
c0de5dbc:	7e85      	ldrb	r5, [r0, #26]
c0de5dbe:	7281      	strb	r1, [r0, #10]
c0de5dc0:	72c3      	strb	r3, [r0, #11]
c0de5dc2:	ea44 2105 	orr.w	r1, r4, r5, lsl #8
c0de5dc6:	e1dd      	b.n	c0de6184 <compute_position+0x4e8>
c0de5dc8:	7dc3      	ldrb	r3, [r0, #23]
c0de5dca:	7e04      	ldrb	r4, [r0, #24]
c0de5dcc:	72c4      	strb	r4, [r0, #11]
c0de5dce:	7283      	strb	r3, [r0, #10]
c0de5dd0:	b191      	cbz	r1, c0de5df8 <compute_position+0x15c>
c0de5dd2:	798b      	ldrb	r3, [r1, #6]
c0de5dd4:	79cc      	ldrb	r4, [r1, #7]
c0de5dd6:	7b0d      	ldrb	r5, [r1, #12]
c0de5dd8:	7b49      	ldrb	r1, [r1, #13]
c0de5dda:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5dde:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de5de2:	7e84      	ldrb	r4, [r0, #26]
c0de5de4:	4419      	add	r1, r3
c0de5de6:	7e43      	ldrb	r3, [r0, #25]
c0de5de8:	e0c1      	b.n	c0de5f6e <compute_position+0x2d2>
c0de5dea:	7dc1      	ldrb	r1, [r0, #23]
c0de5dec:	7e03      	ldrb	r3, [r0, #24]
c0de5dee:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5df2:	7281      	strb	r1, [r0, #10]
c0de5df4:	0a09      	lsrs	r1, r1, #8
c0de5df6:	72c1      	strb	r1, [r0, #11]
c0de5df8:	7e41      	ldrb	r1, [r0, #25]
c0de5dfa:	7e83      	ldrb	r3, [r0, #26]
c0de5dfc:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5e00:	e1c0      	b.n	c0de6184 <compute_position+0x4e8>
c0de5e02:	f000 fa70 	bl	c0de62e6 <OUTLINED_FUNCTION_10>
c0de5e06:	f891 e007 	ldrb.w	lr, [r1, #7]
c0de5e0a:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5e0e:	790c      	ldrb	r4, [r1, #4]
c0de5e10:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5e14:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5e18:	79c5      	ldrb	r5, [r0, #7]
c0de5e1a:	4423      	add	r3, r4
c0de5e1c:	7984      	ldrb	r4, [r0, #6]
c0de5e1e:	4433      	add	r3, r6
c0de5e20:	7e46      	ldrb	r6, [r0, #25]
c0de5e22:	7283      	strb	r3, [r0, #10]
c0de5e24:	0a1b      	lsrs	r3, r3, #8
c0de5e26:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5e2a:	72c3      	strb	r3, [r0, #11]
c0de5e2c:	7e83      	ldrb	r3, [r0, #26]
c0de5e2e:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de5e32:	7b4e      	ldrb	r6, [r1, #13]
c0de5e34:	7b09      	ldrb	r1, [r1, #12]
c0de5e36:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
c0de5e3a:	ea4c 260e 	orr.w	r6, ip, lr, lsl #8
c0de5e3e:	4431      	add	r1, r6
c0de5e40:	e110      	b.n	c0de6064 <compute_position+0x3c8>
c0de5e42:	7e03      	ldrb	r3, [r0, #24]
c0de5e44:	7dc4      	ldrb	r4, [r0, #23]
c0de5e46:	7a8e      	ldrb	r6, [r1, #10]
c0de5e48:	7acf      	ldrb	r7, [r1, #11]
c0de5e4a:	794d      	ldrb	r5, [r1, #5]
c0de5e4c:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de5e50:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de5e54:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5e58:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5e5c:	790c      	ldrb	r4, [r1, #4]
c0de5e5e:	7947      	ldrb	r7, [r0, #5]
c0de5e60:	4433      	add	r3, r6
c0de5e62:	7906      	ldrb	r6, [r0, #4]
c0de5e64:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5e68:	2502      	movs	r5, #2
c0de5e6a:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5e6e:	1ba4      	subs	r4, r4, r6
c0de5e70:	fb94 f4f5 	sdiv	r4, r4, r5
c0de5e74:	4423      	add	r3, r4
c0de5e76:	e011      	b.n	c0de5e9c <compute_position+0x200>
c0de5e78:	f000 fa21 	bl	c0de62be <OUTLINED_FUNCTION_7>
c0de5e7c:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de5e80:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5e84:	7904      	ldrb	r4, [r0, #4]
c0de5e86:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5e8a:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5e8e:	794d      	ldrb	r5, [r1, #5]
c0de5e90:	4423      	add	r3, r4
c0de5e92:	790c      	ldrb	r4, [r1, #4]
c0de5e94:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5e98:	4434      	add	r4, r6
c0de5e9a:	1ae3      	subs	r3, r4, r3
c0de5e9c:	7283      	strb	r3, [r0, #10]
c0de5e9e:	0a1b      	lsrs	r3, r3, #8
c0de5ea0:	7e44      	ldrb	r4, [r0, #25]
c0de5ea2:	72c3      	strb	r3, [r0, #11]
c0de5ea4:	7b4b      	ldrb	r3, [r1, #13]
c0de5ea6:	7b09      	ldrb	r1, [r1, #12]
c0de5ea8:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5eac:	7e83      	ldrb	r3, [r0, #26]
c0de5eae:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5eb2:	ea4c 240e 	orr.w	r4, ip, lr, lsl #8
c0de5eb6:	4423      	add	r3, r4
c0de5eb8:	1ac9      	subs	r1, r1, r3
c0de5eba:	e163      	b.n	c0de6184 <compute_position+0x4e8>
c0de5ebc:	f000 f9ff 	bl	c0de62be <OUTLINED_FUNCTION_7>
c0de5ec0:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de5ec4:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5ec8:	7904      	ldrb	r4, [r0, #4]
c0de5eca:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5ece:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5ed2:	79cd      	ldrb	r5, [r1, #7]
c0de5ed4:	4423      	add	r3, r4
c0de5ed6:	798c      	ldrb	r4, [r1, #6]
c0de5ed8:	1af3      	subs	r3, r6, r3
c0de5eda:	7e46      	ldrb	r6, [r0, #25]
c0de5edc:	7283      	strb	r3, [r0, #10]
c0de5ede:	0a1b      	lsrs	r3, r3, #8
c0de5ee0:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5ee4:	72c3      	strb	r3, [r0, #11]
c0de5ee6:	7b4b      	ldrb	r3, [r1, #13]
c0de5ee8:	7b09      	ldrb	r1, [r1, #12]
c0de5eea:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5eee:	7e83      	ldrb	r3, [r0, #26]
c0de5ef0:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de5ef4:	4419      	add	r1, r3
c0de5ef6:	ea4c 230e 	orr.w	r3, ip, lr, lsl #8
c0de5efa:	e13e      	b.n	c0de617a <compute_position+0x4de>
c0de5efc:	f000 f9f3 	bl	c0de62e6 <OUTLINED_FUNCTION_10>
c0de5f00:	f891 e007 	ldrb.w	lr, [r1, #7]
c0de5f04:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5f08:	790c      	ldrb	r4, [r1, #4]
c0de5f0a:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5f0e:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5f12:	79c5      	ldrb	r5, [r0, #7]
c0de5f14:	4423      	add	r3, r4
c0de5f16:	7984      	ldrb	r4, [r0, #6]
c0de5f18:	4433      	add	r3, r6
c0de5f1a:	7e46      	ldrb	r6, [r0, #25]
c0de5f1c:	7283      	strb	r3, [r0, #10]
c0de5f1e:	0a1b      	lsrs	r3, r3, #8
c0de5f20:	72c3      	strb	r3, [r0, #11]
c0de5f22:	7b4b      	ldrb	r3, [r1, #13]
c0de5f24:	7b09      	ldrb	r1, [r1, #12]
c0de5f26:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de5f2a:	7e83      	ldrb	r3, [r0, #26]
c0de5f2c:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de5f30:	4419      	add	r1, r3
c0de5f32:	ea44 2305 	orr.w	r3, r4, r5, lsl #8
c0de5f36:	ea4c 240e 	orr.w	r4, ip, lr, lsl #8
c0de5f3a:	e11e      	b.n	c0de617a <compute_position+0x4de>
c0de5f3c:	7a8d      	ldrb	r5, [r1, #10]
c0de5f3e:	7ace      	ldrb	r6, [r1, #11]
c0de5f40:	7e07      	ldrb	r7, [r0, #24]
c0de5f42:	f891 c006 	ldrb.w	ip, [r1, #6]
c0de5f46:	f891 e007 	ldrb.w	lr, [r1, #7]
c0de5f4a:	7e43      	ldrb	r3, [r0, #25]
c0de5f4c:	7e84      	ldrb	r4, [r0, #26]
c0de5f4e:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de5f52:	7dc6      	ldrb	r6, [r0, #23]
c0de5f54:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5f58:	4435      	add	r5, r6
c0de5f5a:	7285      	strb	r5, [r0, #10]
c0de5f5c:	0a2d      	lsrs	r5, r5, #8
c0de5f5e:	72c5      	strb	r5, [r0, #11]
c0de5f60:	7b4d      	ldrb	r5, [r1, #13]
c0de5f62:	7b09      	ldrb	r1, [r1, #12]
c0de5f64:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de5f68:	ea4c 250e 	orr.w	r5, ip, lr, lsl #8
c0de5f6c:	4429      	add	r1, r5
c0de5f6e:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5f72:	e106      	b.n	c0de6182 <compute_position+0x4e6>
c0de5f74:	7acb      	ldrb	r3, [r1, #11]
c0de5f76:	7a8c      	ldrb	r4, [r1, #10]
c0de5f78:	7dc6      	ldrb	r6, [r0, #23]
c0de5f7a:	7e07      	ldrb	r7, [r0, #24]
c0de5f7c:	7945      	ldrb	r5, [r0, #5]
c0de5f7e:	f891 c006 	ldrb.w	ip, [r1, #6]
c0de5f82:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5f86:	7904      	ldrb	r4, [r0, #4]
c0de5f88:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de5f8c:	79cf      	ldrb	r7, [r1, #7]
c0de5f8e:	4433      	add	r3, r6
c0de5f90:	794e      	ldrb	r6, [r1, #5]
c0de5f92:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de5f96:	790d      	ldrb	r5, [r1, #4]
c0de5f98:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de5f9c:	1b2c      	subs	r4, r5, r4
c0de5f9e:	2502      	movs	r5, #2
c0de5fa0:	fb94 f4f5 	sdiv	r4, r4, r5
c0de5fa4:	4423      	add	r3, r4
c0de5fa6:	e015      	b.n	c0de5fd4 <compute_position+0x338>
c0de5fa8:	7903      	ldrb	r3, [r0, #4]
c0de5faa:	7944      	ldrb	r4, [r0, #5]
c0de5fac:	7dc5      	ldrb	r5, [r0, #23]
c0de5fae:	7e06      	ldrb	r6, [r0, #24]
c0de5fb0:	f891 c006 	ldrb.w	ip, [r1, #6]
c0de5fb4:	79cf      	ldrb	r7, [r1, #7]
c0de5fb6:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de5fba:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de5fbe:	7acc      	ldrb	r4, [r1, #11]
c0de5fc0:	794e      	ldrb	r6, [r1, #5]
c0de5fc2:	442b      	add	r3, r5
c0de5fc4:	7a8d      	ldrb	r5, [r1, #10]
c0de5fc6:	ea45 2404 	orr.w	r4, r5, r4, lsl #8
c0de5fca:	790d      	ldrb	r5, [r1, #4]
c0de5fcc:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de5fd0:	442c      	add	r4, r5
c0de5fd2:	1ae3      	subs	r3, r4, r3
c0de5fd4:	7283      	strb	r3, [r0, #10]
c0de5fd6:	0a1b      	lsrs	r3, r3, #8
c0de5fd8:	7e44      	ldrb	r4, [r0, #25]
c0de5fda:	72c3      	strb	r3, [r0, #11]
c0de5fdc:	7e83      	ldrb	r3, [r0, #26]
c0de5fde:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de5fe2:	7b4c      	ldrb	r4, [r1, #13]
c0de5fe4:	7b09      	ldrb	r1, [r1, #12]
c0de5fe6:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
c0de5fea:	ea4c 2407 	orr.w	r4, ip, r7, lsl #8
c0de5fee:	4421      	add	r1, r4
c0de5ff0:	e0c7      	b.n	c0de6182 <compute_position+0x4e6>
c0de5ff2:	7903      	ldrb	r3, [r0, #4]
c0de5ff4:	7944      	ldrb	r4, [r0, #5]
c0de5ff6:	7dc5      	ldrb	r5, [r0, #23]
c0de5ff8:	7e06      	ldrb	r6, [r0, #24]
c0de5ffa:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de5ffe:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de6002:	7a8c      	ldrb	r4, [r1, #10]
c0de6004:	7b0e      	ldrb	r6, [r1, #12]
c0de6006:	442b      	add	r3, r5
c0de6008:	7acd      	ldrb	r5, [r1, #11]
c0de600a:	7b49      	ldrb	r1, [r1, #13]
c0de600c:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de6010:	ea46 2101 	orr.w	r1, r6, r1, lsl #8
c0de6014:	1ae3      	subs	r3, r4, r3
c0de6016:	7e44      	ldrb	r4, [r0, #25]
c0de6018:	7283      	strb	r3, [r0, #10]
c0de601a:	0a1b      	lsrs	r3, r3, #8
c0de601c:	72c3      	strb	r3, [r0, #11]
c0de601e:	7e83      	ldrb	r3, [r0, #26]
c0de6020:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de6024:	e0ad      	b.n	c0de6182 <compute_position+0x4e6>
c0de6026:	f000 f94a 	bl	c0de62be <OUTLINED_FUNCTION_7>
c0de602a:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de602e:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de6032:	7904      	ldrb	r4, [r0, #4]
c0de6034:	ea46 2607 	orr.w	r6, r6, r7, lsl #8
c0de6038:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de603c:	79cd      	ldrb	r5, [r1, #7]
c0de603e:	4423      	add	r3, r4
c0de6040:	798c      	ldrb	r4, [r1, #6]
c0de6042:	1af3      	subs	r3, r6, r3
c0de6044:	7e46      	ldrb	r6, [r0, #25]
c0de6046:	7283      	strb	r3, [r0, #10]
c0de6048:	0a1b      	lsrs	r3, r3, #8
c0de604a:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de604e:	72c3      	strb	r3, [r0, #11]
c0de6050:	7e83      	ldrb	r3, [r0, #26]
c0de6052:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de6056:	7b4e      	ldrb	r6, [r1, #13]
c0de6058:	7b09      	ldrb	r1, [r1, #12]
c0de605a:	ea41 2106 	orr.w	r1, r1, r6, lsl #8
c0de605e:	4421      	add	r1, r4
c0de6060:	ea4c 240e 	orr.w	r4, ip, lr, lsl #8
c0de6064:	1b09      	subs	r1, r1, r4
c0de6066:	e08c      	b.n	c0de6182 <compute_position+0x4e6>
c0de6068:	790b      	ldrb	r3, [r1, #4]
c0de606a:	794c      	ldrb	r4, [r1, #5]
c0de606c:	7a8d      	ldrb	r5, [r1, #10]
c0de606e:	7ace      	ldrb	r6, [r1, #11]
c0de6070:	7e87      	ldrb	r7, [r0, #26]
c0de6072:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de6076:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de607a:	7dc4      	ldrb	r4, [r0, #23]
c0de607c:	7e46      	ldrb	r6, [r0, #25]
c0de607e:	442b      	add	r3, r5
c0de6080:	7e05      	ldrb	r5, [r0, #24]
c0de6082:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de6086:	4423      	add	r3, r4
c0de6088:	7283      	strb	r3, [r0, #10]
c0de608a:	0a1b      	lsrs	r3, r3, #8
c0de608c:	72c3      	strb	r3, [r0, #11]
c0de608e:	7b4b      	ldrb	r3, [r1, #13]
c0de6090:	7b09      	ldrb	r1, [r1, #12]
c0de6092:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de6096:	ea46 2307 	orr.w	r3, r6, r7, lsl #8
c0de609a:	e072      	b.n	c0de6182 <compute_position+0x4e6>
c0de609c:	f000 f8c9 	bl	c0de6232 <OUTLINED_FUNCTION_2>
c0de60a0:	1a59      	subs	r1, r3, r1
c0de60a2:	7e43      	ldrb	r3, [r0, #25]
c0de60a4:	7281      	strb	r1, [r0, #10]
c0de60a6:	0a09      	lsrs	r1, r1, #8
c0de60a8:	72c1      	strb	r1, [r0, #11]
c0de60aa:	7e81      	ldrb	r1, [r0, #26]
c0de60ac:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de60b0:	ea4c 2306 	orr.w	r3, ip, r6, lsl #8
c0de60b4:	4419      	add	r1, r3
c0de60b6:	ea47 2305 	orr.w	r3, r7, r5, lsl #8
c0de60ba:	e0a4      	b.n	c0de6206 <compute_position+0x56a>
c0de60bc:	7901      	ldrb	r1, [r0, #4]
c0de60be:	7943      	ldrb	r3, [r0, #5]
c0de60c0:	7956      	ldrb	r6, [r2, #5]
c0de60c2:	7dc4      	ldrb	r4, [r0, #23]
c0de60c4:	7e05      	ldrb	r5, [r0, #24]
c0de60c6:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de60ca:	7913      	ldrb	r3, [r2, #4]
c0de60cc:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
c0de60d0:	1a59      	subs	r1, r3, r1
c0de60d2:	2302      	movs	r3, #2
c0de60d4:	fb91 f1f3 	sdiv	r1, r1, r3
c0de60d8:	ea44 2305 	orr.w	r3, r4, r5, lsl #8
c0de60dc:	4419      	add	r1, r3
c0de60de:	e00d      	b.n	c0de60fc <compute_position+0x460>
c0de60e0:	7901      	ldrb	r1, [r0, #4]
c0de60e2:	7943      	ldrb	r3, [r0, #5]
c0de60e4:	7dc4      	ldrb	r4, [r0, #23]
c0de60e6:	7e05      	ldrb	r5, [r0, #24]
c0de60e8:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de60ec:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de60f0:	7913      	ldrb	r3, [r2, #4]
c0de60f2:	4421      	add	r1, r4
c0de60f4:	7954      	ldrb	r4, [r2, #5]
c0de60f6:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de60fa:	1a59      	subs	r1, r3, r1
c0de60fc:	7281      	strb	r1, [r0, #10]
c0de60fe:	0a09      	lsrs	r1, r1, #8
c0de6100:	7e43      	ldrb	r3, [r0, #25]
c0de6102:	72c1      	strb	r1, [r0, #11]
c0de6104:	7e81      	ldrb	r1, [r0, #26]
c0de6106:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de610a:	e03b      	b.n	c0de6184 <compute_position+0x4e8>
c0de610c:	f000 f8af 	bl	c0de626e <OUTLINED_FUNCTION_4>
c0de6110:	79d5      	ldrb	r5, [r2, #7]
c0de6112:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de6116:	1a59      	subs	r1, r3, r1
c0de6118:	2302      	movs	r3, #2
c0de611a:	fb91 f1f3 	sdiv	r1, r1, r3
c0de611e:	4421      	add	r1, r4
c0de6120:	e030      	b.n	c0de6184 <compute_position+0x4e8>
c0de6122:	f000 f8d4 	bl	c0de62ce <OUTLINED_FUNCTION_8>
c0de6126:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de612a:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de612e:	7903      	ldrb	r3, [r0, #4]
c0de6130:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de6134:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de6138:	7914      	ldrb	r4, [r2, #4]
c0de613a:	ea44 2407 	orr.w	r4, r4, r7, lsl #8
c0de613e:	1ae3      	subs	r3, r4, r3
c0de6140:	2402      	movs	r4, #2
c0de6142:	fb93 f3f4 	sdiv	r3, r3, r4
c0de6146:	4419      	add	r1, r3
c0de6148:	7e43      	ldrb	r3, [r0, #25]
c0de614a:	7281      	strb	r1, [r0, #10]
c0de614c:	0a09      	lsrs	r1, r1, #8
c0de614e:	72c1      	strb	r1, [r0, #11]
c0de6150:	7e81      	ldrb	r1, [r0, #26]
c0de6152:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de6156:	ea4c 230e 	orr.w	r3, ip, lr, lsl #8
c0de615a:	1aeb      	subs	r3, r5, r3
c0de615c:	e00f      	b.n	c0de617e <compute_position+0x4e2>
c0de615e:	f000 f868 	bl	c0de6232 <OUTLINED_FUNCTION_2>
c0de6162:	ea47 2405 	orr.w	r4, r7, r5, lsl #8
c0de6166:	1a59      	subs	r1, r3, r1
c0de6168:	7e43      	ldrb	r3, [r0, #25]
c0de616a:	7281      	strb	r1, [r0, #10]
c0de616c:	0a09      	lsrs	r1, r1, #8
c0de616e:	72c1      	strb	r1, [r0, #11]
c0de6170:	7e81      	ldrb	r1, [r0, #26]
c0de6172:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de6176:	ea4c 2306 	orr.w	r3, ip, r6, lsl #8
c0de617a:	1ae3      	subs	r3, r4, r3
c0de617c:	2402      	movs	r4, #2
c0de617e:	fb93 f3f4 	sdiv	r3, r3, r4
c0de6182:	4419      	add	r1, r3
c0de6184:	7301      	strb	r1, [r0, #12]
c0de6186:	0a09      	lsrs	r1, r1, #8
c0de6188:	7341      	strb	r1, [r0, #13]
c0de618a:	b1ba      	cbz	r2, c0de61bc <compute_position+0x520>
c0de618c:	7811      	ldrb	r1, [r2, #0]
c0de618e:	7853      	ldrb	r3, [r2, #1]
c0de6190:	7ac5      	ldrb	r5, [r0, #11]
c0de6192:	7894      	ldrb	r4, [r2, #2]
c0de6194:	78d2      	ldrb	r2, [r2, #3]
c0de6196:	7b06      	ldrb	r6, [r0, #12]
c0de6198:	7b47      	ldrb	r7, [r0, #13]
c0de619a:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de619e:	7a83      	ldrb	r3, [r0, #10]
c0de61a0:	ea44 2202 	orr.w	r2, r4, r2, lsl #8
c0de61a4:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de61a8:	4419      	add	r1, r3
c0de61aa:	ea46 2307 	orr.w	r3, r6, r7, lsl #8
c0de61ae:	7001      	strb	r1, [r0, #0]
c0de61b0:	441a      	add	r2, r3
c0de61b2:	0a09      	lsrs	r1, r1, #8
c0de61b4:	7041      	strb	r1, [r0, #1]
c0de61b6:	0a11      	lsrs	r1, r2, #8
c0de61b8:	7082      	strb	r2, [r0, #2]
c0de61ba:	70c1      	strb	r1, [r0, #3]
c0de61bc:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de61be:	f000 f856 	bl	c0de626e <OUTLINED_FUNCTION_4>
c0de61c2:	4421      	add	r1, r4
c0de61c4:	79d4      	ldrb	r4, [r2, #7]
c0de61c6:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de61ca:	e01c      	b.n	c0de6206 <compute_position+0x56a>
c0de61cc:	f000 f87f 	bl	c0de62ce <OUTLINED_FUNCTION_8>
c0de61d0:	f890 e007 	ldrb.w	lr, [r0, #7]
c0de61d4:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de61d8:	7903      	ldrb	r3, [r0, #4]
c0de61da:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de61de:	7914      	ldrb	r4, [r2, #4]
c0de61e0:	ea44 2407 	orr.w	r4, r4, r7, lsl #8
c0de61e4:	1ae3      	subs	r3, r4, r3
c0de61e6:	2402      	movs	r4, #2
c0de61e8:	fb93 f3f4 	sdiv	r3, r3, r4
c0de61ec:	4419      	add	r1, r3
c0de61ee:	7e43      	ldrb	r3, [r0, #25]
c0de61f0:	7281      	strb	r1, [r0, #10]
c0de61f2:	0a09      	lsrs	r1, r1, #8
c0de61f4:	72c1      	strb	r1, [r0, #11]
c0de61f6:	7e81      	ldrb	r1, [r0, #26]
c0de61f8:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de61fc:	ea4c 230e 	orr.w	r3, ip, lr, lsl #8
c0de6200:	4419      	add	r1, r3
c0de6202:	ea45 2306 	orr.w	r3, r5, r6, lsl #8
c0de6206:	1a59      	subs	r1, r3, r1
c0de6208:	e7bc      	b.n	c0de6184 <compute_position+0x4e8>

c0de620a <OUTLINED_FUNCTION_0>:
c0de620a:	7842      	ldrb	r2, [r0, #1]
c0de620c:	7883      	ldrb	r3, [r0, #2]
c0de620e:	78c0      	ldrb	r0, [r0, #3]
c0de6210:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de6214:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de6218:	ea41 4500 	orr.w	r5, r1, r0, lsl #16
c0de621c:	4770      	bx	lr

c0de621e <OUTLINED_FUNCTION_1>:
c0de621e:	7842      	ldrb	r2, [r0, #1]
c0de6220:	7883      	ldrb	r3, [r0, #2]
c0de6222:	78c0      	ldrb	r0, [r0, #3]
c0de6224:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de6228:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de622c:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de6230:	4770      	bx	lr

c0de6232 <OUTLINED_FUNCTION_2>:
c0de6232:	7e01      	ldrb	r1, [r0, #24]
c0de6234:	7dc3      	ldrb	r3, [r0, #23]
c0de6236:	7944      	ldrb	r4, [r0, #5]
c0de6238:	7997      	ldrb	r7, [r2, #6]
c0de623a:	79d5      	ldrb	r5, [r2, #7]
c0de623c:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de6240:	79c6      	ldrb	r6, [r0, #7]
c0de6242:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de6246:	7903      	ldrb	r3, [r0, #4]
c0de6248:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de624c:	7954      	ldrb	r4, [r2, #5]
c0de624e:	4419      	add	r1, r3
c0de6250:	7913      	ldrb	r3, [r2, #4]
c0de6252:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de6256:	4770      	bx	lr

c0de6258 <OUTLINED_FUNCTION_3>:
c0de6258:	7842      	ldrb	r2, [r0, #1]
c0de625a:	7883      	ldrb	r3, [r0, #2]
c0de625c:	78c0      	ldrb	r0, [r0, #3]
c0de625e:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de6262:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de6266:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
c0de626a:	2900      	cmp	r1, #0
c0de626c:	4770      	bx	lr

c0de626e <OUTLINED_FUNCTION_4>:
c0de626e:	7dc4      	ldrb	r4, [r0, #23]
c0de6270:	7e05      	ldrb	r5, [r0, #24]
c0de6272:	7981      	ldrb	r1, [r0, #6]
c0de6274:	79c3      	ldrb	r3, [r0, #7]
c0de6276:	72c5      	strb	r5, [r0, #11]
c0de6278:	7284      	strb	r4, [r0, #10]
c0de627a:	7e84      	ldrb	r4, [r0, #26]
c0de627c:	7e45      	ldrb	r5, [r0, #25]
c0de627e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de6282:	7993      	ldrb	r3, [r2, #6]
c0de6284:	ea45 2404 	orr.w	r4, r5, r4, lsl #8
c0de6288:	4770      	bx	lr

c0de628a <OUTLINED_FUNCTION_5>:
c0de628a:	4620      	mov	r0, r4
c0de628c:	f810 1f2d 	ldrb.w	r1, [r0, #45]!
c0de6290:	7842      	ldrb	r2, [r0, #1]
c0de6292:	7883      	ldrb	r3, [r0, #2]
c0de6294:	78c0      	ldrb	r0, [r0, #3]
c0de6296:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de629a:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de629e:	ea41 4300 	orr.w	r3, r1, r0, lsl #16
c0de62a2:	2b00      	cmp	r3, #0
c0de62a4:	4770      	bx	lr

c0de62a6 <OUTLINED_FUNCTION_6>:
c0de62a6:	217f      	movs	r1, #127	@ 0x7f
c0de62a8:	2201      	movs	r2, #1
c0de62aa:	f829 1000 	strh.w	r1, [r9, r0]
c0de62ae:	4448      	add	r0, r9
c0de62b0:	2100      	movs	r1, #0
c0de62b2:	8081      	strh	r1, [r0, #4]
c0de62b4:	80c1      	strh	r1, [r0, #6]
c0de62b6:	213f      	movs	r1, #63	@ 0x3f
c0de62b8:	7242      	strb	r2, [r0, #9]
c0de62ba:	8041      	strh	r1, [r0, #2]
c0de62bc:	4770      	bx	lr

c0de62be <OUTLINED_FUNCTION_7>:
c0de62be:	7e03      	ldrb	r3, [r0, #24]
c0de62c0:	7dc4      	ldrb	r4, [r0, #23]
c0de62c2:	7945      	ldrb	r5, [r0, #5]
c0de62c4:	7a8e      	ldrb	r6, [r1, #10]
c0de62c6:	7acf      	ldrb	r7, [r1, #11]
c0de62c8:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de62cc:	4770      	bx	lr

c0de62ce <OUTLINED_FUNCTION_8>:
c0de62ce:	7e01      	ldrb	r1, [r0, #24]
c0de62d0:	7dc3      	ldrb	r3, [r0, #23]
c0de62d2:	7944      	ldrb	r4, [r0, #5]
c0de62d4:	7957      	ldrb	r7, [r2, #5]
c0de62d6:	7995      	ldrb	r5, [r2, #6]
c0de62d8:	79d6      	ldrb	r6, [r2, #7]
c0de62da:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de62de:	4770      	bx	lr

c0de62e0 <OUTLINED_FUNCTION_9>:
c0de62e0:	4620      	mov	r0, r4
c0de62e2:	f7ff bcdb 	b.w	c0de5c9c <compute_position>

c0de62e6 <OUTLINED_FUNCTION_10>:
c0de62e6:	7acb      	ldrb	r3, [r1, #11]
c0de62e8:	7a8c      	ldrb	r4, [r1, #10]
c0de62ea:	794d      	ldrb	r5, [r1, #5]
c0de62ec:	7dc6      	ldrb	r6, [r0, #23]
c0de62ee:	7e07      	ldrb	r7, [r0, #24]
c0de62f0:	f891 c006 	ldrb.w	ip, [r1, #6]
c0de62f4:	4770      	bx	lr

c0de62f6 <OUTLINED_FUNCTION_11>:
c0de62f6:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de62fa:	ea43 2205 	orr.w	r2, r3, r5, lsl #8
c0de62fe:	2e00      	cmp	r6, #0
c0de6300:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de6304:	4770      	bx	lr

c0de6306 <OUTLINED_FUNCTION_12>:
c0de6306:	4620      	mov	r0, r4
c0de6308:	f810 1f0e 	ldrb.w	r1, [r0, #14]!
c0de630c:	7842      	ldrb	r2, [r0, #1]
c0de630e:	7883      	ldrb	r3, [r0, #2]
c0de6310:	78c5      	ldrb	r5, [r0, #3]
c0de6312:	4770      	bx	lr

c0de6314 <OUTLINED_FUNCTION_13>:
c0de6314:	0e29      	lsrs	r1, r5, #24
c0de6316:	70c1      	strb	r1, [r0, #3]
c0de6318:	0c29      	lsrs	r1, r5, #16
c0de631a:	7081      	strb	r1, [r0, #2]
c0de631c:	0a29      	lsrs	r1, r5, #8
c0de631e:	7041      	strb	r1, [r0, #1]
c0de6320:	4770      	bx	lr

c0de6322 <OUTLINED_FUNCTION_14>:
c0de6322:	7fe0      	ldrb	r0, [r4, #31]
c0de6324:	f8bd 2008 	ldrh.w	r2, [sp, #8]
c0de6328:	4629      	mov	r1, r5
c0de632a:	4633      	mov	r3, r6
c0de632c:	9000      	str	r0, [sp, #0]
c0de632e:	4770      	bx	lr

c0de6330 <nbgl_objPoolRelease>:
c0de6330:	b5b0      	push	{r4, r5, r7, lr}
c0de6332:	490b      	ldr	r1, [pc, #44]	@ (c0de6360 <nbgl_objPoolRelease+0x30>)
c0de6334:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de6338:	b182      	cbz	r2, c0de635c <nbgl_objPoolRelease+0x2c>
c0de633a:	2303      	movs	r3, #3
c0de633c:	24ff      	movs	r4, #255	@ 0xff
c0de633e:	2b2b      	cmp	r3, #43	@ 0x2b
c0de6340:	d00c      	beq.n	c0de635c <nbgl_objPoolRelease+0x2c>
c0de6342:	eb09 0501 	add.w	r5, r9, r1
c0de6346:	5ced      	ldrb	r5, [r5, r3]
c0de6348:	4285      	cmp	r5, r0
c0de634a:	d105      	bne.n	c0de6358 <nbgl_objPoolRelease+0x28>
c0de634c:	3a01      	subs	r2, #1
c0de634e:	eb09 0501 	add.w	r5, r9, r1
c0de6352:	f809 2001 	strb.w	r2, [r9, r1]
c0de6356:	54ec      	strb	r4, [r5, r3]
c0de6358:	3301      	adds	r3, #1
c0de635a:	e7f0      	b.n	c0de633e <nbgl_objPoolRelease+0xe>
c0de635c:	bdb0      	pop	{r4, r5, r7, pc}
c0de635e:	bf00      	nop
c0de6360:	000025f0 	.word	0x000025f0

c0de6364 <nbgl_objPoolGet>:
c0de6364:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6368:	4f1a      	ldr	r7, [pc, #104]	@ (c0de63d4 <nbgl_objPoolGet+0x70>)
c0de636a:	4680      	mov	r8, r0
c0de636c:	468a      	mov	sl, r1
c0de636e:	eb09 0007 	add.w	r0, r9, r7
c0de6372:	7840      	ldrb	r0, [r0, #1]
c0de6374:	b938      	cbnz	r0, c0de6386 <nbgl_objPoolGet+0x22>
c0de6376:	eb09 0407 	add.w	r4, r9, r7
c0de637a:	f000 f8a3 	bl	c0de64c4 <OUTLINED_FUNCTION_1>
c0de637e:	f000 f89b 	bl	c0de64b8 <OUTLINED_FUNCTION_0>
c0de6382:	2001      	movs	r0, #1
c0de6384:	7060      	strb	r0, [r4, #1]
c0de6386:	f819 4007 	ldrb.w	r4, [r9, r7]
c0de638a:	2c27      	cmp	r4, #39	@ 0x27
c0de638c:	d101      	bne.n	c0de6392 <nbgl_objPoolGet+0x2e>
c0de638e:	2600      	movs	r6, #0
c0de6390:	e01c      	b.n	c0de63cc <nbgl_objPoolGet+0x68>
c0de6392:	eb09 0007 	add.w	r0, r9, r7
c0de6396:	1c85      	adds	r5, r0, #2
c0de6398:	2000      	movs	r0, #0
c0de639a:	f5b0 6ff5 	cmp.w	r0, #1960	@ 0x7a8
c0de639e:	d0f6      	beq.n	c0de638e <nbgl_objPoolGet+0x2a>
c0de63a0:	f815 1f01 	ldrb.w	r1, [r5, #1]!
c0de63a4:	3031      	adds	r0, #49	@ 0x31
c0de63a6:	29ff      	cmp	r1, #255	@ 0xff
c0de63a8:	d1f7      	bne.n	c0de639a <nbgl_objPoolGet+0x36>
c0de63aa:	490b      	ldr	r1, [pc, #44]	@ (c0de63d8 <nbgl_objPoolGet+0x74>)
c0de63ac:	4449      	add	r1, r9
c0de63ae:	eb01 0b00 	add.w	fp, r1, r0
c0de63b2:	2131      	movs	r1, #49	@ 0x31
c0de63b4:	f1ab 0631 	sub.w	r6, fp, #49	@ 0x31
c0de63b8:	4630      	mov	r0, r6
c0de63ba:	f004 ffaf 	bl	c0deb31c <__aeabi_memclr>
c0de63be:	1c60      	adds	r0, r4, #1
c0de63c0:	f885 a000 	strb.w	sl, [r5]
c0de63c4:	f80b 8c16 	strb.w	r8, [fp, #-22]
c0de63c8:	f809 0007 	strb.w	r0, [r9, r7]
c0de63cc:	4630      	mov	r0, r6
c0de63ce:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de63d2:	bf00      	nop
c0de63d4:	000025f0 	.word	0x000025f0
c0de63d8:	00001d45 	.word	0x00001d45

c0de63dc <nbgl_containerPoolRelease>:
c0de63dc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de63de:	4910      	ldr	r1, [pc, #64]	@ (c0de6420 <nbgl_containerPoolRelease+0x44>)
c0de63e0:	eb09 0201 	add.w	r2, r9, r1
c0de63e4:	7892      	ldrb	r2, [r2, #2]
c0de63e6:	b1ca      	cbz	r2, c0de641c <nbgl_containerPoolRelease+0x40>
c0de63e8:	4c0e      	ldr	r4, [pc, #56]	@ (c0de6424 <nbgl_containerPoolRelease+0x48>)
c0de63ea:	2300      	movs	r3, #0
c0de63ec:	25ff      	movs	r5, #255	@ 0xff
c0de63ee:	2600      	movs	r6, #0
c0de63f0:	2e40      	cmp	r6, #64	@ 0x40
c0de63f2:	d013      	beq.n	c0de641c <nbgl_containerPoolRelease+0x40>
c0de63f4:	eb09 0701 	add.w	r7, r9, r1
c0de63f8:	4437      	add	r7, r6
c0de63fa:	f897 702b 	ldrb.w	r7, [r7, #43]	@ 0x2b
c0de63fe:	4287      	cmp	r7, r0
c0de6400:	d10a      	bne.n	c0de6418 <nbgl_containerPoolRelease+0x3c>
c0de6402:	eb09 0704 	add.w	r7, r9, r4
c0de6406:	3a01      	subs	r2, #1
c0de6408:	f847 3026 	str.w	r3, [r7, r6, lsl #2]
c0de640c:	eb09 0701 	add.w	r7, r9, r1
c0de6410:	70ba      	strb	r2, [r7, #2]
c0de6412:	4437      	add	r7, r6
c0de6414:	f887 502b 	strb.w	r5, [r7, #43]	@ 0x2b
c0de6418:	3601      	adds	r6, #1
c0de641a:	e7e9      	b.n	c0de63f0 <nbgl_containerPoolRelease+0x14>
c0de641c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de641e:	bf00      	nop
c0de6420:	000025f0 	.word	0x000025f0
c0de6424:	000024f0 	.word	0x000024f0

c0de6428 <nbgl_containerPoolGet>:
c0de6428:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de642c:	f8df a080 	ldr.w	sl, [pc, #128]	@ c0de64b0 <nbgl_containerPoolGet+0x88>
c0de6430:	4605      	mov	r5, r0
c0de6432:	4688      	mov	r8, r1
c0de6434:	eb09 000a 	add.w	r0, r9, sl
c0de6438:	7840      	ldrb	r0, [r0, #1]
c0de643a:	b938      	cbnz	r0, c0de644c <nbgl_containerPoolGet+0x24>
c0de643c:	eb09 040a 	add.w	r4, r9, sl
c0de6440:	f000 f840 	bl	c0de64c4 <OUTLINED_FUNCTION_1>
c0de6444:	f000 f838 	bl	c0de64b8 <OUTLINED_FUNCTION_0>
c0de6448:	2001      	movs	r0, #1
c0de644a:	7060      	strb	r0, [r4, #1]
c0de644c:	eb09 000a 	add.w	r0, r9, sl
c0de6450:	2600      	movs	r6, #0
c0de6452:	7880      	ldrb	r0, [r0, #2]
c0de6454:	1944      	adds	r4, r0, r5
c0de6456:	2c3e      	cmp	r4, #62	@ 0x3e
c0de6458:	d826      	bhi.n	c0de64a8 <nbgl_containerPoolGet+0x80>
c0de645a:	eb09 000a 	add.w	r0, r9, sl
c0de645e:	f100 072b 	add.w	r7, r0, #43	@ 0x2b
c0de6462:	2000      	movs	r0, #0
c0de6464:	f5b6 7f80 	cmp.w	r6, #256	@ 0x100
c0de6468:	d01d      	beq.n	c0de64a6 <nbgl_containerPoolGet+0x7e>
c0de646a:	f817 1b01 	ldrb.w	r1, [r7], #1
c0de646e:	29ff      	cmp	r1, #255	@ 0xff
c0de6470:	f04f 0100 	mov.w	r1, #0
c0de6474:	bf08      	it	eq
c0de6476:	1c41      	addeq	r1, r0, #1
c0de6478:	b2c8      	uxtb	r0, r1
c0de647a:	3604      	adds	r6, #4
c0de647c:	42a8      	cmp	r0, r5
c0de647e:	4608      	mov	r0, r1
c0de6480:	d1f0      	bne.n	c0de6464 <nbgl_containerPoolGet+0x3c>
c0de6482:	480c      	ldr	r0, [pc, #48]	@ (c0de64b4 <nbgl_containerPoolGet+0x8c>)
c0de6484:	00a9      	lsls	r1, r5, #2
c0de6486:	4448      	add	r0, r9
c0de6488:	eba0 0085 	sub.w	r0, r0, r5, lsl #2
c0de648c:	4406      	add	r6, r0
c0de648e:	4630      	mov	r0, r6
c0de6490:	f004 ff44 	bl	c0deb31c <__aeabi_memclr>
c0de6494:	1b78      	subs	r0, r7, r5
c0de6496:	4629      	mov	r1, r5
c0de6498:	4642      	mov	r2, r8
c0de649a:	f004 ff46 	bl	c0deb32a <__aeabi_memset>
c0de649e:	eb09 000a 	add.w	r0, r9, sl
c0de64a2:	7084      	strb	r4, [r0, #2]
c0de64a4:	e000      	b.n	c0de64a8 <nbgl_containerPoolGet+0x80>
c0de64a6:	2600      	movs	r6, #0
c0de64a8:	4630      	mov	r0, r6
c0de64aa:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de64ae:	bf00      	nop
c0de64b0:	000025f0 	.word	0x000025f0
c0de64b4:	000024f0 	.word	0x000024f0

c0de64b8 <OUTLINED_FUNCTION_0>:
c0de64b8:	f104 002b 	add.w	r0, r4, #43	@ 0x2b
c0de64bc:	2140      	movs	r1, #64	@ 0x40
c0de64be:	22ff      	movs	r2, #255	@ 0xff
c0de64c0:	f004 bf33 	b.w	c0deb32a <__aeabi_memset>

c0de64c4 <OUTLINED_FUNCTION_1>:
c0de64c4:	2128      	movs	r1, #40	@ 0x28
c0de64c6:	22ff      	movs	r2, #255	@ 0xff
c0de64c8:	1ce0      	adds	r0, r4, #3
c0de64ca:	f004 bf2e 	b.w	c0deb32a <__aeabi_memset>
	...

c0de64d0 <nbgl_screenRedraw>:
c0de64d0:	b510      	push	{r4, lr}
c0de64d2:	4807      	ldr	r0, [pc, #28]	@ (c0de64f0 <nbgl_screenRedraw+0x20>)
c0de64d4:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de64d8:	b141      	cbz	r1, c0de64ec <nbgl_screenRedraw+0x1c>
c0de64da:	eb09 0400 	add.w	r4, r9, r0
c0de64de:	f004 fbc7 	bl	c0deac70 <nbgl_screen_reinit>
c0de64e2:	6860      	ldr	r0, [r4, #4]
c0de64e4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de64e8:	f7fe beec 	b.w	c0de52c4 <nbgl_objDraw>
c0de64ec:	bd10      	pop	{r4, pc}
c0de64ee:	bf00      	nop
c0de64f0:	0000275c 	.word	0x0000275c

c0de64f4 <nbgl_screenGetTop>:
c0de64f4:	4804      	ldr	r0, [pc, #16]	@ (c0de6508 <nbgl_screenGetTop+0x14>)
c0de64f6:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de64fa:	4448      	add	r0, r9
c0de64fc:	6840      	ldr	r0, [r0, #4]
c0de64fe:	2900      	cmp	r1, #0
c0de6500:	bf08      	it	eq
c0de6502:	4608      	moveq	r0, r1
c0de6504:	4770      	bx	lr
c0de6506:	bf00      	nop
c0de6508:	0000275c 	.word	0x0000275c

c0de650c <nbgl_screenSet>:
c0de650c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de650e:	4607      	mov	r7, r0
c0de6510:	480d      	ldr	r0, [pc, #52]	@ (c0de6548 <nbgl_screenSet+0x3c>)
c0de6512:	460d      	mov	r5, r1
c0de6514:	461e      	mov	r6, r3
c0de6516:	4614      	mov	r4, r2
c0de6518:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de651c:	b931      	cbnz	r1, c0de652c <nbgl_screenSet+0x20>
c0de651e:	2101      	movs	r1, #1
c0de6520:	f809 1000 	strb.w	r1, [r9, r0]
c0de6524:	4909      	ldr	r1, [pc, #36]	@ (c0de654c <nbgl_screenSet+0x40>)
c0de6526:	4448      	add	r0, r9
c0de6528:	4449      	add	r1, r9
c0de652a:	6041      	str	r1, [r0, #4]
c0de652c:	2000      	movs	r0, #0
c0de652e:	f7ff feff 	bl	c0de6330 <nbgl_objPoolRelease>
c0de6532:	2000      	movs	r0, #0
c0de6534:	f7ff ff52 	bl	c0de63dc <nbgl_containerPoolRelease>
c0de6538:	2000      	movs	r0, #0
c0de653a:	4639      	mov	r1, r7
c0de653c:	462a      	mov	r2, r5
c0de653e:	4623      	mov	r3, r4
c0de6540:	9600      	str	r6, [sp, #0]
c0de6542:	f000 f805 	bl	c0de6550 <nbgl_screenSetAt>
c0de6546:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de6548:	0000275c 	.word	0x0000275c
c0de654c:	0000265b 	.word	0x0000265b

c0de6550 <nbgl_screenSetAt>:
c0de6550:	2803      	cmp	r0, #3
c0de6552:	bf84      	itt	hi
c0de6554:	f04f 30ff 	movhi.w	r0, #4294967295	@ 0xffffffff
c0de6558:	4770      	bxhi	lr
c0de655a:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de655e:	4604      	mov	r4, r0
c0de6560:	460f      	mov	r7, r1
c0de6562:	f8dd a020 	ldr.w	sl, [sp, #32]
c0de6566:	4610      	mov	r0, r2
c0de6568:	461d      	mov	r5, r3
c0de656a:	4616      	mov	r6, r2
c0de656c:	4621      	mov	r1, r4
c0de656e:	f7ff ff5b 	bl	c0de6428 <nbgl_containerPoolGet>
c0de6572:	f8df 8104 	ldr.w	r8, [pc, #260]	@ c0de6678 <nbgl_screenSetAt+0x128>
c0de6576:	01a3      	lsls	r3, r4, #6
c0de6578:	2100      	movs	r1, #0
c0de657a:	eb09 0208 	add.w	r2, r9, r8
c0de657e:	54d1      	strb	r1, [r2, r3]
c0de6580:	eb02 1284 	add.w	r2, r2, r4, lsl #6
c0de6584:	ea4f 231a 	mov.w	r3, sl, lsr #8
c0de6588:	6038      	str	r0, [r7, #0]
c0de658a:	f882 3033 	strb.w	r3, [r2, #51]	@ 0x33
c0de658e:	0a03      	lsrs	r3, r0, #8
c0de6590:	f882 6020 	strb.w	r6, [r2, #32]
c0de6594:	ea4f 661a 	mov.w	r6, sl, lsr #24
c0de6598:	71d1      	strb	r1, [r2, #7]
c0de659a:	7151      	strb	r1, [r2, #5]
c0de659c:	7351      	strb	r1, [r2, #13]
c0de659e:	7311      	strb	r1, [r2, #12]
c0de65a0:	72d1      	strb	r1, [r2, #11]
c0de65a2:	7291      	strb	r1, [r2, #10]
c0de65a4:	70d1      	strb	r1, [r2, #3]
c0de65a6:	7091      	strb	r1, [r2, #2]
c0de65a8:	7051      	strb	r1, [r2, #1]
c0de65aa:	76d1      	strb	r1, [r2, #27]
c0de65ac:	7211      	strb	r1, [r2, #8]
c0de65ae:	f882 403e 	strb.w	r4, [r2, #62]	@ 0x3e
c0de65b2:	77d1      	strb	r1, [r2, #31]
c0de65b4:	f882 3023 	strb.w	r3, [r2, #35]	@ 0x23
c0de65b8:	2340      	movs	r3, #64	@ 0x40
c0de65ba:	7193      	strb	r3, [r2, #6]
c0de65bc:	2380      	movs	r3, #128	@ 0x80
c0de65be:	7113      	strb	r3, [r2, #4]
c0de65c0:	4613      	mov	r3, r2
c0de65c2:	f802 0f22 	strb.w	r0, [r2, #34]!
c0de65c6:	f803 af32 	strb.w	sl, [r3, #50]!
c0de65ca:	70de      	strb	r6, [r3, #3]
c0de65cc:	ea4f 461a 	mov.w	r6, sl, lsr #16
c0de65d0:	709e      	strb	r6, [r3, #2]
c0de65d2:	0e03      	lsrs	r3, r0, #24
c0de65d4:	0c00      	lsrs	r0, r0, #16
c0de65d6:	70d3      	strb	r3, [r2, #3]
c0de65d8:	7090      	strb	r0, [r2, #2]
c0de65da:	b3ad      	cbz	r5, c0de6648 <nbgl_screenSetAt+0xf8>
c0de65dc:	7828      	ldrb	r0, [r5, #0]
c0de65de:	7869      	ldrb	r1, [r5, #1]
c0de65e0:	78aa      	ldrb	r2, [r5, #2]
c0de65e2:	78eb      	ldrb	r3, [r5, #3]
c0de65e4:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de65e8:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de65ec:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de65f0:	f004 fac4 	bl	c0deab7c <pic>
c0de65f4:	eb09 0108 	add.w	r1, r9, r8
c0de65f8:	eb01 1184 	add.w	r1, r1, r4, lsl #6
c0de65fc:	f801 0f26 	strb.w	r0, [r1, #38]!
c0de6600:	f815 2f04 	ldrb.w	r2, [r5, #4]!
c0de6604:	f815 3f04 	ldrb.w	r3, [r5, #4]!
c0de6608:	f815 cc03 	ldrb.w	ip, [r5, #-3]
c0de660c:	f815 7c02 	ldrb.w	r7, [r5, #-2]
c0de6610:	f815 ec01 	ldrb.w	lr, [r5, #-1]
c0de6614:	786e      	ldrb	r6, [r5, #1]
c0de6616:	f801 2f04 	strb.w	r2, [r1, #4]!
c0de661a:	78ea      	ldrb	r2, [r5, #3]
c0de661c:	78ad      	ldrb	r5, [r5, #2]
c0de661e:	f801 3f04 	strb.w	r3, [r1, #4]!
c0de6622:	0e03      	lsrs	r3, r0, #24
c0de6624:	f801 3c05 	strb.w	r3, [r1, #-5]
c0de6628:	0c03      	lsrs	r3, r0, #16
c0de662a:	0a00      	lsrs	r0, r0, #8
c0de662c:	704e      	strb	r6, [r1, #1]
c0de662e:	f801 7c02 	strb.w	r7, [r1, #-2]
c0de6632:	f801 ec01 	strb.w	lr, [r1, #-1]
c0de6636:	f801 cc03 	strb.w	ip, [r1, #-3]
c0de663a:	f801 3c06 	strb.w	r3, [r1, #-6]
c0de663e:	f801 0c07 	strb.w	r0, [r1, #-7]
c0de6642:	708d      	strb	r5, [r1, #2]
c0de6644:	70ca      	strb	r2, [r1, #3]
c0de6646:	e008      	b.n	c0de665a <nbgl_screenSetAt+0x10a>
c0de6648:	eb09 0008 	add.w	r0, r9, r8
c0de664c:	eb00 1084 	add.w	r0, r0, r4, lsl #6
c0de6650:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de6654:	70c1      	strb	r1, [r0, #3]
c0de6656:	7081      	strb	r1, [r0, #2]
c0de6658:	7041      	strb	r1, [r0, #1]
c0de665a:	eb09 0008 	add.w	r0, r9, r8
c0de665e:	eb00 1484 	add.w	r4, r0, r4, lsl #6
c0de6662:	f004 fca3 	bl	c0deafac <os_sched_current_task>
c0de6666:	3804      	subs	r0, #4
c0de6668:	fab0 f080 	clz	r0, r0
c0de666c:	0940      	lsrs	r0, r0, #5
c0de666e:	f884 003f 	strb.w	r0, [r4, #63]	@ 0x3f
c0de6672:	2000      	movs	r0, #0
c0de6674:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de6678:	0000265b 	.word	0x0000265b

c0de667c <nbgl_screenPush>:
c0de667c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6680:	f8df 80f8 	ldr.w	r8, [pc, #248]	@ c0de677c <nbgl_screenPush+0x100>
c0de6684:	4682      	mov	sl, r0
c0de6686:	f819 0008 	ldrb.w	r0, [r9, r8]
c0de668a:	2803      	cmp	r0, #3
c0de668c:	d871      	bhi.n	c0de6772 <nbgl_screenPush+0xf6>
c0de668e:	4694      	mov	ip, r2
c0de6690:	468e      	mov	lr, r1
c0de6692:	b1a0      	cbz	r0, c0de66be <nbgl_screenPush+0x42>
c0de6694:	483a      	ldr	r0, [pc, #232]	@ (c0de6780 <nbgl_screenPush+0x104>)
c0de6696:	4448      	add	r0, r9
c0de6698:	f100 057a 	add.w	r5, r0, #122	@ 0x7a
c0de669c:	2001      	movs	r0, #1
c0de669e:	2804      	cmp	r0, #4
c0de66a0:	d037      	beq.n	c0de6712 <nbgl_screenPush+0x96>
c0de66a2:	782c      	ldrb	r4, [r5, #0]
c0de66a4:	786e      	ldrb	r6, [r5, #1]
c0de66a6:	78af      	ldrb	r7, [r5, #2]
c0de66a8:	78ea      	ldrb	r2, [r5, #3]
c0de66aa:	ea47 2202 	orr.w	r2, r7, r2, lsl #8
c0de66ae:	ea44 2406 	orr.w	r4, r4, r6, lsl #8
c0de66b2:	ea44 4202 	orr.w	r2, r4, r2, lsl #16
c0de66b6:	b372      	cbz	r2, c0de6716 <nbgl_screenPush+0x9a>
c0de66b8:	3540      	adds	r5, #64	@ 0x40
c0de66ba:	3001      	adds	r0, #1
c0de66bc:	e7ef      	b.n	c0de669e <nbgl_screenPush+0x22>
c0de66be:	4d30      	ldr	r5, [pc, #192]	@ (c0de6780 <nbgl_screenPush+0x104>)
c0de66c0:	2700      	movs	r7, #0
c0de66c2:	2001      	movs	r0, #1
c0de66c4:	f809 0008 	strb.w	r0, [r9, r8]
c0de66c8:	444d      	add	r5, r9
c0de66ca:	0e2e      	lsrs	r6, r5, #24
c0de66cc:	f885 7077 	strb.w	r7, [r5, #119]	@ 0x77
c0de66d0:	f885 7020 	strb.w	r7, [r5, #32]
c0de66d4:	f885 507a 	strb.w	r5, [r5, #122]	@ 0x7a
c0de66d8:	f885 607d 	strb.w	r6, [r5, #125]	@ 0x7d
c0de66dc:	0c2e      	lsrs	r6, r5, #16
c0de66de:	f885 607c 	strb.w	r6, [r5, #124]	@ 0x7c
c0de66e2:	0a2e      	lsrs	r6, r5, #8
c0de66e4:	f885 607b 	strb.w	r6, [r5, #123]	@ 0x7b
c0de66e8:	462e      	mov	r6, r5
c0de66ea:	f806 7f76 	strb.w	r7, [r6, #118]!
c0de66ee:	70f7      	strb	r7, [r6, #3]
c0de66f0:	70b7      	strb	r7, [r6, #2]
c0de66f2:	f105 0740 	add.w	r7, r5, #64	@ 0x40
c0de66f6:	eb09 0608 	add.w	r6, r9, r8
c0de66fa:	6077      	str	r7, [r6, #4]
c0de66fc:	462e      	mov	r6, r5
c0de66fe:	0e3c      	lsrs	r4, r7, #24
c0de6700:	f806 7f36 	strb.w	r7, [r6, #54]!
c0de6704:	70f4      	strb	r4, [r6, #3]
c0de6706:	0c3c      	lsrs	r4, r7, #16
c0de6708:	70b4      	strb	r4, [r6, #2]
c0de670a:	0a3c      	lsrs	r4, r7, #8
c0de670c:	f885 4037 	strb.w	r4, [r5, #55]	@ 0x37
c0de6710:	e01f      	b.n	c0de6752 <nbgl_screenPush+0xd6>
c0de6712:	2004      	movs	r0, #4
c0de6714:	e01d      	b.n	c0de6752 <nbgl_screenPush+0xd6>
c0de6716:	eb09 0208 	add.w	r2, r9, r8
c0de671a:	f1a5 063a 	sub.w	r6, r5, #58	@ 0x3a
c0de671e:	6854      	ldr	r4, [r2, #4]
c0de6720:	0a37      	lsrs	r7, r6, #8
c0de6722:	0e31      	lsrs	r1, r6, #24
c0de6724:	6056      	str	r6, [r2, #4]
c0de6726:	f884 7037 	strb.w	r7, [r4, #55]	@ 0x37
c0de672a:	4627      	mov	r7, r4
c0de672c:	f807 6f36 	strb.w	r6, [r7, #54]!
c0de6730:	70f9      	strb	r1, [r7, #3]
c0de6732:	0c31      	lsrs	r1, r6, #16
c0de6734:	70b9      	strb	r1, [r7, #2]
c0de6736:	0e21      	lsrs	r1, r4, #24
c0de6738:	702c      	strb	r4, [r5, #0]
c0de673a:	70e9      	strb	r1, [r5, #3]
c0de673c:	0c21      	lsrs	r1, r4, #16
c0de673e:	70a9      	strb	r1, [r5, #2]
c0de6740:	0a21      	lsrs	r1, r4, #8
c0de6742:	7069      	strb	r1, [r5, #1]
c0de6744:	2100      	movs	r1, #0
c0de6746:	f805 1c03 	strb.w	r1, [r5, #-3]
c0de674a:	f805 1d04 	strb.w	r1, [r5, #-4]!
c0de674e:	70a9      	strb	r1, [r5, #2]
c0de6750:	70e9      	strb	r1, [r5, #3]
c0de6752:	b2c5      	uxtb	r5, r0
c0de6754:	9300      	str	r3, [sp, #0]
c0de6756:	4651      	mov	r1, sl
c0de6758:	4672      	mov	r2, lr
c0de675a:	4663      	mov	r3, ip
c0de675c:	4628      	mov	r0, r5
c0de675e:	f7ff fef7 	bl	c0de6550 <nbgl_screenSetAt>
c0de6762:	2800      	cmp	r0, #0
c0de6764:	d405      	bmi.n	c0de6772 <nbgl_screenPush+0xf6>
c0de6766:	f819 0008 	ldrb.w	r0, [r9, r8]
c0de676a:	3001      	adds	r0, #1
c0de676c:	f809 0008 	strb.w	r0, [r9, r8]
c0de6770:	e001      	b.n	c0de6776 <nbgl_screenPush+0xfa>
c0de6772:	f04f 35ff 	mov.w	r5, #4294967295	@ 0xffffffff
c0de6776:	4628      	mov	r0, r5
c0de6778:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de677c:	0000275c 	.word	0x0000275c
c0de6780:	0000265b 	.word	0x0000265b

c0de6784 <nbgl_screenPop>:
c0de6784:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de6786:	4e49      	ldr	r6, [pc, #292]	@ (c0de68ac <nbgl_screenPop+0x128>)
c0de6788:	4604      	mov	r4, r0
c0de678a:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de678e:	2800      	cmp	r0, #0
c0de6790:	d045      	beq.n	c0de681e <nbgl_screenPop+0x9a>
c0de6792:	f8df c11c 	ldr.w	ip, [pc, #284]	@ c0de68b0 <nbgl_screenPop+0x12c>
c0de6796:	eb09 0306 	add.w	r3, r9, r6
c0de679a:	1e41      	subs	r1, r0, #1
c0de679c:	685b      	ldr	r3, [r3, #4]
c0de679e:	f809 1006 	strb.w	r1, [r9, r6]
c0de67a2:	eb09 020c 	add.w	r2, r9, ip
c0de67a6:	eb02 1284 	add.w	r2, r2, r4, lsl #6
c0de67aa:	429a      	cmp	r2, r3
c0de67ac:	d03a      	beq.n	c0de6824 <nbgl_screenPop+0xa0>
c0de67ae:	eb09 010c 	add.w	r1, r9, ip
c0de67b2:	eb01 1184 	add.w	r1, r1, r4, lsl #6
c0de67b6:	f811 2f3a 	ldrb.w	r2, [r1, #58]!
c0de67ba:	784b      	ldrb	r3, [r1, #1]
c0de67bc:	788d      	ldrb	r5, [r1, #2]
c0de67be:	78c9      	ldrb	r1, [r1, #3]
c0de67c0:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de67c4:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de67c8:	ea42 4001 	orr.w	r0, r2, r1, lsl #16
c0de67cc:	b170      	cbz	r0, c0de67ec <nbgl_screenPop+0x68>
c0de67ce:	eb09 020c 	add.w	r2, r9, ip
c0de67d2:	4601      	mov	r1, r0
c0de67d4:	eb02 1284 	add.w	r2, r2, r4, lsl #6
c0de67d8:	f812 3f36 	ldrb.w	r3, [r2, #54]!
c0de67dc:	7855      	ldrb	r5, [r2, #1]
c0de67de:	7897      	ldrb	r7, [r2, #2]
c0de67e0:	78d2      	ldrb	r2, [r2, #3]
c0de67e2:	f801 3f36 	strb.w	r3, [r1, #54]!
c0de67e6:	708f      	strb	r7, [r1, #2]
c0de67e8:	70ca      	strb	r2, [r1, #3]
c0de67ea:	704d      	strb	r5, [r1, #1]
c0de67ec:	eb09 010c 	add.w	r1, r9, ip
c0de67f0:	eb01 1184 	add.w	r1, r1, r4, lsl #6
c0de67f4:	f811 2f36 	ldrb.w	r2, [r1, #54]!
c0de67f8:	784b      	ldrb	r3, [r1, #1]
c0de67fa:	788d      	ldrb	r5, [r1, #2]
c0de67fc:	78c9      	ldrb	r1, [r1, #3]
c0de67fe:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6802:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de6806:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
c0de680a:	b322      	cbz	r2, c0de6856 <nbgl_screenPop+0xd2>
c0de680c:	f802 0f3a 	strb.w	r0, [r2, #58]!
c0de6810:	0e01      	lsrs	r1, r0, #24
c0de6812:	70d1      	strb	r1, [r2, #3]
c0de6814:	0c01      	lsrs	r1, r0, #16
c0de6816:	0a00      	lsrs	r0, r0, #8
c0de6818:	7091      	strb	r1, [r2, #2]
c0de681a:	7050      	strb	r0, [r2, #1]
c0de681c:	e01b      	b.n	c0de6856 <nbgl_screenPop+0xd2>
c0de681e:	f04f 35ff 	mov.w	r5, #4294967295	@ 0xffffffff
c0de6822:	e041      	b.n	c0de68a8 <nbgl_screenPop+0x124>
c0de6824:	0609      	lsls	r1, r1, #24
c0de6826:	d012      	beq.n	c0de684e <nbgl_screenPop+0xca>
c0de6828:	eb09 010c 	add.w	r1, r9, ip
c0de682c:	eb01 1184 	add.w	r1, r1, r4, lsl #6
c0de6830:	f811 2f3a 	ldrb.w	r2, [r1, #58]!
c0de6834:	784b      	ldrb	r3, [r1, #1]
c0de6836:	788d      	ldrb	r5, [r1, #2]
c0de6838:	78c9      	ldrb	r1, [r1, #3]
c0de683a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de683e:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de6842:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de6846:	eb09 0206 	add.w	r2, r9, r6
c0de684a:	6051      	str	r1, [r2, #4]
c0de684c:	e003      	b.n	c0de6856 <nbgl_screenPop+0xd2>
c0de684e:	eb09 0106 	add.w	r1, r9, r6
c0de6852:	2200      	movs	r2, #0
c0de6854:	604a      	str	r2, [r1, #4]
c0de6856:	eb09 070c 	add.w	r7, r9, ip
c0de685a:	2500      	movs	r5, #0
c0de685c:	eb07 1084 	add.w	r0, r7, r4, lsl #6
c0de6860:	f800 5f3a 	strb.w	r5, [r0, #58]!
c0de6864:	f800 5d04 	strb.w	r5, [r0, #-4]!
c0de6868:	f800 5d14 	strb.w	r5, [r0, #-20]!
c0de686c:	75c5      	strb	r5, [r0, #23]
c0de686e:	7585      	strb	r5, [r0, #22]
c0de6870:	7545      	strb	r5, [r0, #21]
c0de6872:	76c5      	strb	r5, [r0, #27]
c0de6874:	7685      	strb	r5, [r0, #26]
c0de6876:	7645      	strb	r5, [r0, #25]
c0de6878:	70c5      	strb	r5, [r0, #3]
c0de687a:	7085      	strb	r5, [r0, #2]
c0de687c:	7045      	strb	r5, [r0, #1]
c0de687e:	f800 5c02 	strb.w	r5, [r0, #-2]
c0de6882:	4620      	mov	r0, r4
c0de6884:	f7ff fd54 	bl	c0de6330 <nbgl_objPoolRelease>
c0de6888:	4620      	mov	r0, r4
c0de688a:	f7ff fda7 	bl	c0de63dc <nbgl_containerPoolRelease>
c0de688e:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de6892:	2801      	cmp	r0, #1
c0de6894:	d108      	bne.n	c0de68a8 <nbgl_screenPop+0x124>
c0de6896:	f897 0020 	ldrb.w	r0, [r7, #32]
c0de689a:	b928      	cbnz	r0, c0de68a8 <nbgl_screenPop+0x124>
c0de689c:	2500      	movs	r5, #0
c0de689e:	eb09 0006 	add.w	r0, r9, r6
c0de68a2:	f809 5006 	strb.w	r5, [r9, r6]
c0de68a6:	6045      	str	r5, [r0, #4]
c0de68a8:	4628      	mov	r0, r5
c0de68aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de68ac:	0000275c 	.word	0x0000275c
c0de68b0:	0000265b 	.word	0x0000265b

c0de68b4 <nbgl_screenHandler>:
c0de68b4:	b570      	push	{r4, r5, r6, lr}
c0de68b6:	4920      	ldr	r1, [pc, #128]	@ (c0de6938 <nbgl_screenHandler+0x84>)
c0de68b8:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de68bc:	b352      	cbz	r2, c0de6914 <nbgl_screenHandler+0x60>
c0de68be:	4449      	add	r1, r9
c0de68c0:	6849      	ldr	r1, [r1, #4]
c0de68c2:	460b      	mov	r3, r1
c0de68c4:	f891 2027 	ldrb.w	r2, [r1, #39]	@ 0x27
c0de68c8:	f813 4f26 	ldrb.w	r4, [r3, #38]!
c0de68cc:	ea44 2202 	orr.w	r2, r4, r2, lsl #8
c0de68d0:	789c      	ldrb	r4, [r3, #2]
c0de68d2:	78db      	ldrb	r3, [r3, #3]
c0de68d4:	ea44 2303 	orr.w	r3, r4, r3, lsl #8
c0de68d8:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de68dc:	b1d2      	cbz	r2, c0de6914 <nbgl_screenHandler+0x60>
c0de68de:	460b      	mov	r3, r1
c0de68e0:	f813 4f2a 	ldrb.w	r4, [r3, #42]!
c0de68e4:	785d      	ldrb	r5, [r3, #1]
c0de68e6:	789e      	ldrb	r6, [r3, #2]
c0de68e8:	78db      	ldrb	r3, [r3, #3]
c0de68ea:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de68ee:	ea46 2303 	orr.w	r3, r6, r3, lsl #8
c0de68f2:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
c0de68f6:	b16b      	cbz	r3, c0de6914 <nbgl_screenHandler+0x60>
c0de68f8:	1a1c      	subs	r4, r3, r0
c0de68fa:	460d      	mov	r5, r1
c0de68fc:	bf38      	it	cc
c0de68fe:	2400      	movcc	r4, #0
c0de6900:	f805 4f2a 	strb.w	r4, [r5, #42]!
c0de6904:	0e26      	lsrs	r6, r4, #24
c0de6906:	70ee      	strb	r6, [r5, #3]
c0de6908:	0c26      	lsrs	r6, r4, #16
c0de690a:	0a24      	lsrs	r4, r4, #8
c0de690c:	4283      	cmp	r3, r0
c0de690e:	70ae      	strb	r6, [r5, #2]
c0de6910:	706c      	strb	r4, [r5, #1]
c0de6912:	d900      	bls.n	c0de6916 <nbgl_screenHandler+0x62>
c0de6914:	bd70      	pop	{r4, r5, r6, pc}
c0de6916:	4608      	mov	r0, r1
c0de6918:	460c      	mov	r4, r1
c0de691a:	f810 3f2e 	ldrb.w	r3, [r0, #46]!
c0de691e:	f804 3f2a 	strb.w	r3, [r4, #42]!
c0de6922:	7883      	ldrb	r3, [r0, #2]
c0de6924:	78c0      	ldrb	r0, [r0, #3]
c0de6926:	70e0      	strb	r0, [r4, #3]
c0de6928:	f891 002f 	ldrb.w	r0, [r1, #47]	@ 0x2f
c0de692c:	70a3      	strb	r3, [r4, #2]
c0de692e:	7060      	strb	r0, [r4, #1]
c0de6930:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6934:	4710      	bx	r2
c0de6936:	bf00      	nop
c0de6938:	0000275c 	.word	0x0000275c

c0de693c <nbgl_stepDrawText>:
c0de693c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6940:	460e      	mov	r6, r1
c0de6942:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de6944:	4605      	mov	r5, r0
c0de6946:	2000      	movs	r0, #0
c0de6948:	469a      	mov	sl, r3
c0de694a:	4617      	mov	r7, r2
c0de694c:	f000 f830 	bl	c0de69b0 <getFreeContext>
c0de6950:	b348      	cbz	r0, c0de69a6 <nbgl_stepDrawText+0x6a>
c0de6952:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de6956:	4604      	mov	r4, r0
c0de6958:	6146      	str	r6, [r0, #20]
c0de695a:	b10f      	cbz	r7, c0de6960 <nbgl_stepDrawText+0x24>
c0de695c:	f000 fae1 	bl	c0de6f22 <OUTLINED_FUNCTION_1>
c0de6960:	200a      	movs	r0, #10
c0de6962:	f1b8 0f00 	cmp.w	r8, #0
c0de6966:	bf19      	ittee	ne
c0de6968:	4641      	movne	r1, r8
c0de696a:	2203      	movne	r2, #3
c0de696c:	4651      	moveq	r1, sl
c0de696e:	2204      	moveq	r2, #4
c0de6970:	2372      	movs	r3, #114	@ 0x72
c0de6972:	f7fd fdc9 	bl	c0de4508 <nbgl_getTextNbPagesInWidth>
c0de6976:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de6978:	7020      	strb	r0, [r4, #0]
c0de697a:	072a      	lsls	r2, r5, #28
c0de697c:	bf46      	itte	mi
c0de697e:	3801      	submi	r0, #1
c0de6980:	7060      	strbmi	r0, [r4, #1]
c0de6982:	7860      	ldrbpl	r0, [r4, #1]
c0de6984:	f8c4 800c 	str.w	r8, [r4, #12]
c0de6988:	f8c4 a004 	str.w	sl, [r4, #4]
c0de698c:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de6990:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de6994:	7461      	strb	r1, [r4, #17]
c0de6996:	f005 0103 	and.w	r1, r5, #3
c0de699a:	7421      	strb	r1, [r4, #16]
c0de699c:	b2c1      	uxtb	r1, r0
c0de699e:	4620      	mov	r0, r4
c0de69a0:	f000 f82c 	bl	c0de69fc <displayTextPage>
c0de69a4:	e000      	b.n	c0de69a8 <nbgl_stepDrawText+0x6c>
c0de69a6:	2400      	movs	r4, #0
c0de69a8:	4620      	mov	r0, r4
c0de69aa:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de69b0 <getFreeContext>:
c0de69b0:	b570      	push	{r4, r5, r6, lr}
c0de69b2:	4604      	mov	r4, r0
c0de69b4:	4810      	ldr	r0, [pc, #64]	@ (c0de69f8 <getFreeContext+0x48>)
c0de69b6:	460d      	mov	r5, r1
c0de69b8:	b151      	cbz	r1, c0de69d0 <getFreeContext+0x20>
c0de69ba:	2100      	movs	r1, #0
c0de69bc:	2990      	cmp	r1, #144	@ 0x90
c0de69be:	d00a      	beq.n	c0de69d6 <getFreeContext+0x26>
c0de69c0:	eb09 0200 	add.w	r2, r9, r0
c0de69c4:	440a      	add	r2, r1
c0de69c6:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de69ca:	b132      	cbz	r2, c0de69da <getFreeContext+0x2a>
c0de69cc:	3148      	adds	r1, #72	@ 0x48
c0de69ce:	e7f5      	b.n	c0de69bc <getFreeContext+0xc>
c0de69d0:	eb09 0600 	add.w	r6, r9, r0
c0de69d4:	e005      	b.n	c0de69e2 <getFreeContext+0x32>
c0de69d6:	2600      	movs	r6, #0
c0de69d8:	e00b      	b.n	c0de69f2 <getFreeContext+0x42>
c0de69da:	4448      	add	r0, r9
c0de69dc:	4408      	add	r0, r1
c0de69de:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de69e2:	4630      	mov	r0, r6
c0de69e4:	2148      	movs	r1, #72	@ 0x48
c0de69e6:	f004 fc99 	bl	c0deb31c <__aeabi_memclr>
c0de69ea:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de69ee:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de69f2:	4630      	mov	r0, r6
c0de69f4:	bd70      	pop	{r4, r5, r6, pc}
c0de69f6:	bf00      	nop
c0de69f8:	00002764 	.word	0x00002764

c0de69fc <displayTextPage>:
c0de69fc:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de6a00:	b091      	sub	sp, #68	@ 0x44
c0de6a02:	4604      	mov	r4, r0
c0de6a04:	7840      	ldrb	r0, [r0, #1]
c0de6a06:	460e      	mov	r6, r1
c0de6a08:	4288      	cmp	r0, r1
c0de6a0a:	d21c      	bcs.n	c0de6a46 <displayTextPage+0x4a>
c0de6a0c:	68a5      	ldr	r5, [r4, #8]
c0de6a0e:	7820      	ldrb	r0, [r4, #0]
c0de6a10:	7066      	strb	r6, [r4, #1]
c0de6a12:	3801      	subs	r0, #1
c0de6a14:	42b0      	cmp	r0, r6
c0de6a16:	dd31      	ble.n	c0de6a7c <displayTextPage+0x80>
c0de6a18:	68e0      	ldr	r0, [r4, #12]
c0de6a1a:	2101      	movs	r1, #1
c0de6a1c:	2303      	movs	r3, #3
c0de6a1e:	aa08      	add	r2, sp, #32
c0de6a20:	e9cd 2100 	strd	r2, r1, [sp]
c0de6a24:	4629      	mov	r1, r5
c0de6a26:	2800      	cmp	r0, #0
c0de6a28:	bf08      	it	eq
c0de6a2a:	2304      	moveq	r3, #4
c0de6a2c:	200a      	movs	r0, #10
c0de6a2e:	2272      	movs	r2, #114	@ 0x72
c0de6a30:	f7fd fc18 	bl	c0de4264 <nbgl_getTextMaxLenInNbLines>
c0de6a34:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de6a38:	1868      	adds	r0, r5, r1
c0de6a3a:	60a0      	str	r0, [r4, #8]
c0de6a3c:	5c69      	ldrb	r1, [r5, r1]
c0de6a3e:	290a      	cmp	r1, #10
c0de6a40:	d11e      	bne.n	c0de6a80 <displayTextPage+0x84>
c0de6a42:	3001      	adds	r0, #1
c0de6a44:	e01b      	b.n	c0de6a7e <displayTextPage+0x82>
c0de6a46:	68e5      	ldr	r5, [r4, #12]
c0de6a48:	2d00      	cmp	r5, #0
c0de6a4a:	d074      	beq.n	c0de6b36 <displayTextPage+0x13a>
c0de6a4c:	2700      	movs	r7, #0
c0de6a4e:	f04f 0801 	mov.w	r8, #1
c0de6a52:	f10d 0a20 	add.w	sl, sp, #32
c0de6a56:	42be      	cmp	r6, r7
c0de6a58:	d0d9      	beq.n	c0de6a0e <displayTextPage+0x12>
c0de6a5a:	7820      	ldrb	r0, [r4, #0]
c0de6a5c:	3801      	subs	r0, #1
c0de6a5e:	42b8      	cmp	r0, r7
c0de6a60:	dd0a      	ble.n	c0de6a78 <displayTextPage+0x7c>
c0de6a62:	200a      	movs	r0, #10
c0de6a64:	4629      	mov	r1, r5
c0de6a66:	2272      	movs	r2, #114	@ 0x72
c0de6a68:	2303      	movs	r3, #3
c0de6a6a:	e9cd a800 	strd	sl, r8, [sp]
c0de6a6e:	f7fd fbf9 	bl	c0de4264 <nbgl_getTextMaxLenInNbLines>
c0de6a72:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de6a76:	4405      	add	r5, r0
c0de6a78:	3701      	adds	r7, #1
c0de6a7a:	e7ec      	b.n	c0de6a56 <displayTextPage+0x5a>
c0de6a7c:	2000      	movs	r0, #0
c0de6a7e:	60a0      	str	r0, [r4, #8]
c0de6a80:	484f      	ldr	r0, [pc, #316]	@ (c0de6bc0 <displayTextPage+0x1c4>)
c0de6a82:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de6a86:	4478      	add	r0, pc
c0de6a88:	9004      	str	r0, [sp, #16]
c0de6a8a:	2000      	movs	r0, #0
c0de6a8c:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de6a90:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de6a94:	f88d 000c 	strb.w	r0, [sp, #12]
c0de6a98:	ca07      	ldmia	r2, {r0, r1, r2}
c0de6a9a:	ab05      	add	r3, sp, #20
c0de6a9c:	c307      	stmia	r3!, {r0, r1, r2}
c0de6a9e:	a803      	add	r0, sp, #12
c0de6aa0:	f7fd fe60 	bl	c0de4764 <nbgl_layoutGet>
c0de6aa4:	7827      	ldrb	r7, [r4, #0]
c0de6aa6:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de6aaa:	4606      	mov	r6, r0
c0de6aac:	6420      	str	r0, [r4, #64]	@ 0x40
c0de6aae:	7c20      	ldrb	r0, [r4, #16]
c0de6ab0:	4639      	mov	r1, r7
c0de6ab2:	4652      	mov	r2, sl
c0de6ab4:	f000 f8fc 	bl	c0de6cb0 <getNavigationInfo>
c0de6ab8:	4680      	mov	r8, r0
c0de6aba:	f88d 000b 	strb.w	r0, [sp, #11]
c0de6abe:	68e0      	ldr	r0, [r4, #12]
c0de6ac0:	b188      	cbz	r0, c0de6ae6 <displayTextPage+0xea>
c0de6ac2:	2f01      	cmp	r7, #1
c0de6ac4:	d115      	bne.n	c0de6af2 <displayTextPage+0xf6>
c0de6ac6:	6861      	ldr	r1, [r4, #4]
c0de6ac8:	2008      	movs	r0, #8
c0de6aca:	2272      	movs	r2, #114	@ 0x72
c0de6acc:	2300      	movs	r3, #0
c0de6ace:	2600      	movs	r6, #0
c0de6ad0:	f7fd fc9c 	bl	c0de440c <nbgl_getTextNbLinesInWidth>
c0de6ad4:	2802      	cmp	r0, #2
c0de6ad6:	d348      	bcc.n	c0de6b6a <displayTextPage+0x16e>
c0de6ad8:	6861      	ldr	r1, [r4, #4]
c0de6ada:	2018      	movs	r0, #24
c0de6adc:	f104 0218 	add.w	r2, r4, #24
c0de6ae0:	e9cd 2000 	strd	r2, r0, [sp]
c0de6ae4:	e021      	b.n	c0de6b2a <displayTextPage+0x12e>
c0de6ae6:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de6aea:	4630      	mov	r0, r6
c0de6aec:	4629      	mov	r1, r5
c0de6aee:	2200      	movs	r2, #0
c0de6af0:	e055      	b.n	c0de6b9e <displayTextPage+0x1a2>
c0de6af2:	f10a 0001 	add.w	r0, sl, #1
c0de6af6:	6863      	ldr	r3, [r4, #4]
c0de6af8:	2124      	movs	r1, #36	@ 0x24
c0de6afa:	e9cd 0700 	strd	r0, r7, [sp]
c0de6afe:	af08      	add	r7, sp, #32
c0de6b00:	4a30      	ldr	r2, [pc, #192]	@ (c0de6bc4 <displayTextPage+0x1c8>)
c0de6b02:	4638      	mov	r0, r7
c0de6b04:	447a      	add	r2, pc
c0de6b06:	f003 fe9f 	bl	c0dea848 <snprintf>
c0de6b0a:	2008      	movs	r0, #8
c0de6b0c:	4639      	mov	r1, r7
c0de6b0e:	2272      	movs	r2, #114	@ 0x72
c0de6b10:	2300      	movs	r3, #0
c0de6b12:	f04f 0a00 	mov.w	sl, #0
c0de6b16:	f7fd fc79 	bl	c0de440c <nbgl_getTextNbLinesInWidth>
c0de6b1a:	f104 0c18 	add.w	ip, r4, #24
c0de6b1e:	2802      	cmp	r0, #2
c0de6b20:	d32c      	bcc.n	c0de6b7c <displayTextPage+0x180>
c0de6b22:	2018      	movs	r0, #24
c0de6b24:	e9cd c000 	strd	ip, r0, [sp]
c0de6b28:	a908      	add	r1, sp, #32
c0de6b2a:	2008      	movs	r0, #8
c0de6b2c:	2272      	movs	r2, #114	@ 0x72
c0de6b2e:	2301      	movs	r3, #1
c0de6b30:	f7fd fd7e 	bl	c0de4630 <nbgl_textReduceOnNbLines>
c0de6b34:	e02d      	b.n	c0de6b92 <displayTextPage+0x196>
c0de6b36:	6865      	ldr	r5, [r4, #4]
c0de6b38:	2700      	movs	r7, #0
c0de6b3a:	f04f 0801 	mov.w	r8, #1
c0de6b3e:	f10d 0a20 	add.w	sl, sp, #32
c0de6b42:	42be      	cmp	r6, r7
c0de6b44:	f43f af63 	beq.w	c0de6a0e <displayTextPage+0x12>
c0de6b48:	7820      	ldrb	r0, [r4, #0]
c0de6b4a:	3801      	subs	r0, #1
c0de6b4c:	42b8      	cmp	r0, r7
c0de6b4e:	dd0a      	ble.n	c0de6b66 <displayTextPage+0x16a>
c0de6b50:	200a      	movs	r0, #10
c0de6b52:	4629      	mov	r1, r5
c0de6b54:	2272      	movs	r2, #114	@ 0x72
c0de6b56:	2304      	movs	r3, #4
c0de6b58:	e9cd a800 	strd	sl, r8, [sp]
c0de6b5c:	f7fd fb82 	bl	c0de4264 <nbgl_getTextMaxLenInNbLines>
c0de6b60:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de6b64:	4405      	add	r5, r0
c0de6b66:	3701      	adds	r7, #1
c0de6b68:	e7eb      	b.n	c0de6b42 <displayTextPage+0x146>
c0de6b6a:	6861      	ldr	r1, [r4, #4]
c0de6b6c:	f104 0018 	add.w	r0, r4, #24
c0de6b70:	2217      	movs	r2, #23
c0de6b72:	f004 fbd6 	bl	c0deb322 <__aeabi_memcpy>
c0de6b76:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de6b7a:	e00a      	b.n	c0de6b92 <displayTextPage+0x196>
c0de6b7c:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de6b7e:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de6b82:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de6b86:	8838      	ldrh	r0, [r7, #0]
c0de6b88:	f8ac 0000 	strh.w	r0, [ip]
c0de6b8c:	78b8      	ldrb	r0, [r7, #2]
c0de6b8e:	f88c 0002 	strb.w	r0, [ip, #2]
c0de6b92:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de6b96:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de6b98:	f104 0118 	add.w	r1, r4, #24
c0de6b9c:	462a      	mov	r2, r5
c0de6b9e:	f7fd fea3 	bl	c0de48e8 <nbgl_layoutAddText>
c0de6ba2:	f1b8 0f00 	cmp.w	r8, #0
c0de6ba6:	d004      	beq.n	c0de6bb2 <displayTextPage+0x1b6>
c0de6ba8:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de6baa:	f10d 010a 	add.w	r1, sp, #10
c0de6bae:	f7fd fe3d 	bl	c0de482c <nbgl_layoutAddNavigation>
c0de6bb2:	f000 f9e9 	bl	c0de6f88 <OUTLINED_FUNCTION_4>
c0de6bb6:	f7fe fc69 	bl	c0de548c <nbgl_refresh>
c0de6bba:	b011      	add	sp, #68	@ 0x44
c0de6bbc:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de6bc0:	000001bb 	.word	0x000001bb
c0de6bc4:	00004ac2 	.word	0x00004ac2

c0de6bc8 <nbgl_stepDrawCenteredInfo>:
c0de6bc8:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de6bcc:	b087      	sub	sp, #28
c0de6bce:	460d      	mov	r5, r1
c0de6bd0:	4682      	mov	sl, r0
c0de6bd2:	a802      	add	r0, sp, #8
c0de6bd4:	f000 f9d3 	bl	c0de6f7e <OUTLINED_FUNCTION_3>
c0de6bd8:	4819      	ldr	r0, [pc, #100]	@ (c0de6c40 <nbgl_stepDrawCenteredInfo+0x78>)
c0de6bda:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de6bdc:	4478      	add	r0, pc
c0de6bde:	f000 f9c5 	bl	c0de6f6c <OUTLINED_FUNCTION_2>
c0de6be2:	b168      	cbz	r0, c0de6c00 <nbgl_stepDrawCenteredInfo+0x38>
c0de6be4:	4604      	mov	r4, r0
c0de6be6:	6145      	str	r5, [r0, #20]
c0de6be8:	b10f      	cbz	r7, c0de6bee <nbgl_stepDrawCenteredInfo+0x26>
c0de6bea:	f000 f953 	bl	c0de6e94 <OUTLINED_FUNCTION_0>
c0de6bee:	f000 f9ce 	bl	c0de6f8e <OUTLINED_FUNCTION_5>
c0de6bf2:	d007      	beq.n	c0de6c04 <nbgl_stepDrawCenteredInfo+0x3c>
c0de6bf4:	2802      	cmp	r0, #2
c0de6bf6:	d007      	beq.n	c0de6c08 <nbgl_stepDrawCenteredInfo+0x40>
c0de6bf8:	2801      	cmp	r0, #1
c0de6bfa:	d108      	bne.n	c0de6c0e <nbgl_stepDrawCenteredInfo+0x46>
c0de6bfc:	2002      	movs	r0, #2
c0de6bfe:	e004      	b.n	c0de6c0a <nbgl_stepDrawCenteredInfo+0x42>
c0de6c00:	2400      	movs	r4, #0
c0de6c02:	e018      	b.n	c0de6c36 <nbgl_stepDrawCenteredInfo+0x6e>
c0de6c04:	2003      	movs	r0, #3
c0de6c06:	e000      	b.n	c0de6c0a <nbgl_stepDrawCenteredInfo+0x42>
c0de6c08:	2001      	movs	r0, #1
c0de6c0a:	2500      	movs	r5, #0
c0de6c0c:	e000      	b.n	c0de6c10 <nbgl_stepDrawCenteredInfo+0x48>
c0de6c0e:	2000      	movs	r0, #0
c0de6c10:	f88d 0007 	strb.w	r0, [sp, #7]
c0de6c14:	a802      	add	r0, sp, #8
c0de6c16:	f7fd fda5 	bl	c0de4764 <nbgl_layoutGet>
c0de6c1a:	4641      	mov	r1, r8
c0de6c1c:	6420      	str	r0, [r4, #64]	@ 0x40
c0de6c1e:	f7fe f86b 	bl	c0de4cf8 <nbgl_layoutAddCenteredInfo>
c0de6c22:	b925      	cbnz	r5, c0de6c2e <nbgl_stepDrawCenteredInfo+0x66>
c0de6c24:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de6c26:	f10d 0106 	add.w	r1, sp, #6
c0de6c2a:	f7fd fdff 	bl	c0de482c <nbgl_layoutAddNavigation>
c0de6c2e:	f000 f9ab 	bl	c0de6f88 <OUTLINED_FUNCTION_4>
c0de6c32:	f7fe fc2b 	bl	c0de548c <nbgl_refresh>
c0de6c36:	4620      	mov	r0, r4
c0de6c38:	b007      	add	sp, #28
c0de6c3a:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de6c3e:	bf00      	nop
c0de6c40:	00000065 	.word	0x00000065

c0de6c44 <actionCallback>:
c0de6c44:	b510      	push	{r4, lr}
c0de6c46:	460c      	mov	r4, r1
c0de6c48:	f000 f8f0 	bl	c0de6e2c <getContextFromLayout>
c0de6c4c:	b378      	cbz	r0, c0de6cae <actionCallback+0x6a>
c0de6c4e:	2c04      	cmp	r4, #4
c0de6c50:	d006      	beq.n	c0de6c60 <actionCallback+0x1c>
c0de6c52:	2c01      	cmp	r4, #1
c0de6c54:	d008      	beq.n	c0de6c68 <actionCallback+0x24>
c0de6c56:	bb54      	cbnz	r4, c0de6cae <actionCallback+0x6a>
c0de6c58:	7841      	ldrb	r1, [r0, #1]
c0de6c5a:	b1d9      	cbz	r1, c0de6c94 <actionCallback+0x50>
c0de6c5c:	3901      	subs	r1, #1
c0de6c5e:	e009      	b.n	c0de6c74 <actionCallback+0x30>
c0de6c60:	6942      	ldr	r2, [r0, #20]
c0de6c62:	b322      	cbz	r2, c0de6cae <actionCallback+0x6a>
c0de6c64:	2104      	movs	r1, #4
c0de6c66:	e01f      	b.n	c0de6ca8 <actionCallback+0x64>
c0de6c68:	7802      	ldrb	r2, [r0, #0]
c0de6c6a:	7841      	ldrb	r1, [r0, #1]
c0de6c6c:	3a01      	subs	r2, #1
c0de6c6e:	428a      	cmp	r2, r1
c0de6c70:	dd05      	ble.n	c0de6c7e <actionCallback+0x3a>
c0de6c72:	3101      	adds	r1, #1
c0de6c74:	b2c9      	uxtb	r1, r1
c0de6c76:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6c7a:	f7ff bebf 	b.w	c0de69fc <displayTextPage>
c0de6c7e:	7c01      	ldrb	r1, [r0, #16]
c0de6c80:	f041 0102 	orr.w	r1, r1, #2
c0de6c84:	2903      	cmp	r1, #3
c0de6c86:	d001      	beq.n	c0de6c8c <actionCallback+0x48>
c0de6c88:	7c41      	ldrb	r1, [r0, #17]
c0de6c8a:	b181      	cbz	r1, c0de6cae <actionCallback+0x6a>
c0de6c8c:	6942      	ldr	r2, [r0, #20]
c0de6c8e:	b172      	cbz	r2, c0de6cae <actionCallback+0x6a>
c0de6c90:	2101      	movs	r1, #1
c0de6c92:	e009      	b.n	c0de6ca8 <actionCallback+0x64>
c0de6c94:	7c01      	ldrb	r1, [r0, #16]
c0de6c96:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de6c9a:	2902      	cmp	r1, #2
c0de6c9c:	d001      	beq.n	c0de6ca2 <actionCallback+0x5e>
c0de6c9e:	7c41      	ldrb	r1, [r0, #17]
c0de6ca0:	b129      	cbz	r1, c0de6cae <actionCallback+0x6a>
c0de6ca2:	6942      	ldr	r2, [r0, #20]
c0de6ca4:	b11a      	cbz	r2, c0de6cae <actionCallback+0x6a>
c0de6ca6:	2100      	movs	r1, #0
c0de6ca8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6cac:	4710      	bx	r2
c0de6cae:	bd10      	pop	{r4, pc}

c0de6cb0 <getNavigationInfo>:
c0de6cb0:	4603      	mov	r3, r0
c0de6cb2:	2902      	cmp	r1, #2
c0de6cb4:	d308      	bcc.n	c0de6cc8 <getNavigationInfo+0x18>
c0de6cb6:	3901      	subs	r1, #1
c0de6cb8:	4610      	mov	r0, r2
c0de6cba:	2a00      	cmp	r2, #0
c0de6cbc:	bf18      	it	ne
c0de6cbe:	2001      	movne	r0, #1
c0de6cc0:	4291      	cmp	r1, r2
c0de6cc2:	bf88      	it	hi
c0de6cc4:	3002      	addhi	r0, #2
c0de6cc6:	e000      	b.n	c0de6cca <getNavigationInfo+0x1a>
c0de6cc8:	2000      	movs	r0, #0
c0de6cca:	2b03      	cmp	r3, #3
c0de6ccc:	d00a      	beq.n	c0de6ce4 <getNavigationInfo+0x34>
c0de6cce:	2b02      	cmp	r3, #2
c0de6cd0:	bf04      	itt	eq
c0de6cd2:	f040 0001 	orreq.w	r0, r0, #1
c0de6cd6:	4770      	bxeq	lr
c0de6cd8:	2b01      	cmp	r3, #1
c0de6cda:	bf04      	itt	eq
c0de6cdc:	f040 0002 	orreq.w	r0, r0, #2
c0de6ce0:	4770      	bxeq	lr
c0de6ce2:	4770      	bx	lr
c0de6ce4:	2003      	movs	r0, #3
c0de6ce6:	4770      	bx	lr

c0de6ce8 <nbgl_stepDrawMenuList>:
c0de6ce8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de6cea:	460f      	mov	r7, r1
c0de6cec:	4606      	mov	r6, r0
c0de6cee:	2002      	movs	r0, #2
c0de6cf0:	4619      	mov	r1, r3
c0de6cf2:	4615      	mov	r5, r2
c0de6cf4:	f7ff fe5c 	bl	c0de69b0 <getFreeContext>
c0de6cf8:	b170      	cbz	r0, c0de6d18 <nbgl_stepDrawMenuList+0x30>
c0de6cfa:	4604      	mov	r4, r0
c0de6cfc:	b10f      	cbz	r7, c0de6d02 <nbgl_stepDrawMenuList+0x1a>
c0de6cfe:	f000 f910 	bl	c0de6f22 <OUTLINED_FUNCTION_1>
c0de6d02:	7928      	ldrb	r0, [r5, #4]
c0de6d04:	7220      	strb	r0, [r4, #8]
c0de6d06:	7968      	ldrb	r0, [r5, #5]
c0de6d08:	7260      	strb	r0, [r4, #9]
c0de6d0a:	6828      	ldr	r0, [r5, #0]
c0de6d0c:	e9c4 6000 	strd	r6, r0, [r4]
c0de6d10:	4620      	mov	r0, r4
c0de6d12:	f000 f805 	bl	c0de6d20 <displayMenuList>
c0de6d16:	e000      	b.n	c0de6d1a <nbgl_stepDrawMenuList+0x32>
c0de6d18:	2400      	movs	r4, #0
c0de6d1a:	4620      	mov	r0, r4
c0de6d1c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de6d20 <displayMenuList>:
c0de6d20:	b5b0      	push	{r4, r5, r7, lr}
c0de6d22:	b086      	sub	sp, #24
c0de6d24:	4604      	mov	r4, r0
c0de6d26:	2000      	movs	r0, #0
c0de6d28:	9001      	str	r0, [sp, #4]
c0de6d2a:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de6d2e:	4819      	ldr	r0, [pc, #100]	@ (c0de6d94 <displayMenuList+0x74>)
c0de6d30:	4478      	add	r0, pc
c0de6d32:	9002      	str	r0, [sp, #8]
c0de6d34:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de6d38:	f88d 0004 	strb.w	r0, [sp, #4]
c0de6d3c:	ca07      	ldmia	r2, {r0, r1, r2}
c0de6d3e:	ab03      	add	r3, sp, #12
c0de6d40:	c307      	stmia	r3!, {r0, r1, r2}
c0de6d42:	a801      	add	r0, sp, #4
c0de6d44:	f7fd fd0e 	bl	c0de4764 <nbgl_layoutGet>
c0de6d48:	1d25      	adds	r5, r4, #4
c0de6d4a:	6420      	str	r0, [r4, #64]	@ 0x40
c0de6d4c:	4629      	mov	r1, r5
c0de6d4e:	f7fd ff7f 	bl	c0de4c50 <nbgl_layoutAddMenuList>
c0de6d52:	7a20      	ldrb	r0, [r4, #8]
c0de6d54:	2802      	cmp	r0, #2
c0de6d56:	d316      	bcc.n	c0de6d86 <displayMenuList+0x66>
c0de6d58:	2101      	movs	r1, #1
c0de6d5a:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de6d5e:	7969      	ldrb	r1, [r5, #5]
c0de6d60:	2900      	cmp	r1, #0
c0de6d62:	460a      	mov	r2, r1
c0de6d64:	bf18      	it	ne
c0de6d66:	2201      	movne	r2, #1
c0de6d68:	3801      	subs	r0, #1
c0de6d6a:	f88d 2003 	strb.w	r2, [sp, #3]
c0de6d6e:	4288      	cmp	r0, r1
c0de6d70:	d903      	bls.n	c0de6d7a <displayMenuList+0x5a>
c0de6d72:	1c90      	adds	r0, r2, #2
c0de6d74:	f88d 0003 	strb.w	r0, [sp, #3]
c0de6d78:	e000      	b.n	c0de6d7c <displayMenuList+0x5c>
c0de6d7a:	b121      	cbz	r1, c0de6d86 <displayMenuList+0x66>
c0de6d7c:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de6d7e:	f10d 0102 	add.w	r1, sp, #2
c0de6d82:	f7fd fd53 	bl	c0de482c <nbgl_layoutAddNavigation>
c0de6d86:	f000 f8ff 	bl	c0de6f88 <OUTLINED_FUNCTION_4>
c0de6d8a:	f7fe fb7f 	bl	c0de548c <nbgl_refresh>
c0de6d8e:	b006      	add	sp, #24
c0de6d90:	bdb0      	pop	{r4, r5, r7, pc}
c0de6d92:	bf00      	nop
c0de6d94:	00000121 	.word	0x00000121

c0de6d98 <nbgl_stepDrawSwitch>:
c0de6d98:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de6d9c:	b087      	sub	sp, #28
c0de6d9e:	460d      	mov	r5, r1
c0de6da0:	4682      	mov	sl, r0
c0de6da2:	a802      	add	r0, sp, #8
c0de6da4:	f000 f8eb 	bl	c0de6f7e <OUTLINED_FUNCTION_3>
c0de6da8:	4819      	ldr	r0, [pc, #100]	@ (c0de6e10 <nbgl_stepDrawSwitch+0x78>)
c0de6daa:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de6dac:	4478      	add	r0, pc
c0de6dae:	f000 f8dd 	bl	c0de6f6c <OUTLINED_FUNCTION_2>
c0de6db2:	b168      	cbz	r0, c0de6dd0 <nbgl_stepDrawSwitch+0x38>
c0de6db4:	4604      	mov	r4, r0
c0de6db6:	6145      	str	r5, [r0, #20]
c0de6db8:	b10f      	cbz	r7, c0de6dbe <nbgl_stepDrawSwitch+0x26>
c0de6dba:	f000 f86b 	bl	c0de6e94 <OUTLINED_FUNCTION_0>
c0de6dbe:	f000 f8e6 	bl	c0de6f8e <OUTLINED_FUNCTION_5>
c0de6dc2:	d007      	beq.n	c0de6dd4 <nbgl_stepDrawSwitch+0x3c>
c0de6dc4:	2802      	cmp	r0, #2
c0de6dc6:	d007      	beq.n	c0de6dd8 <nbgl_stepDrawSwitch+0x40>
c0de6dc8:	2801      	cmp	r0, #1
c0de6dca:	d108      	bne.n	c0de6dde <nbgl_stepDrawSwitch+0x46>
c0de6dcc:	2002      	movs	r0, #2
c0de6dce:	e004      	b.n	c0de6dda <nbgl_stepDrawSwitch+0x42>
c0de6dd0:	2400      	movs	r4, #0
c0de6dd2:	e018      	b.n	c0de6e06 <nbgl_stepDrawSwitch+0x6e>
c0de6dd4:	2003      	movs	r0, #3
c0de6dd6:	e000      	b.n	c0de6dda <nbgl_stepDrawSwitch+0x42>
c0de6dd8:	2001      	movs	r0, #1
c0de6dda:	2500      	movs	r5, #0
c0de6ddc:	e000      	b.n	c0de6de0 <nbgl_stepDrawSwitch+0x48>
c0de6dde:	2000      	movs	r0, #0
c0de6de0:	f88d 0007 	strb.w	r0, [sp, #7]
c0de6de4:	a802      	add	r0, sp, #8
c0de6de6:	f7fd fcbd 	bl	c0de4764 <nbgl_layoutGet>
c0de6dea:	4641      	mov	r1, r8
c0de6dec:	6420      	str	r0, [r4, #64]	@ 0x40
c0de6dee:	f7fe f923 	bl	c0de5038 <nbgl_layoutAddSwitch>
c0de6df2:	b925      	cbnz	r5, c0de6dfe <nbgl_stepDrawSwitch+0x66>
c0de6df4:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de6df6:	f10d 0106 	add.w	r1, sp, #6
c0de6dfa:	f7fd fd17 	bl	c0de482c <nbgl_layoutAddNavigation>
c0de6dfe:	f000 f8c3 	bl	c0de6f88 <OUTLINED_FUNCTION_4>
c0de6e02:	f7fe fb43 	bl	c0de548c <nbgl_refresh>
c0de6e06:	4620      	mov	r0, r4
c0de6e08:	b007      	add	sp, #28
c0de6e0a:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de6e0e:	bf00      	nop
c0de6e10:	fffffe95 	.word	0xfffffe95

c0de6e14 <nbgl_stepRelease>:
c0de6e14:	b138      	cbz	r0, c0de6e26 <nbgl_stepRelease+0x12>
c0de6e16:	b510      	push	{r4, lr}
c0de6e18:	4604      	mov	r4, r0
c0de6e1a:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de6e1c:	f7fe f9fc 	bl	c0de5218 <nbgl_layoutRelease>
c0de6e20:	2100      	movs	r1, #0
c0de6e22:	6421      	str	r1, [r4, #64]	@ 0x40
c0de6e24:	bd10      	pop	{r4, pc}
c0de6e26:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de6e2a:	4770      	bx	lr

c0de6e2c <getContextFromLayout>:
c0de6e2c:	4a08      	ldr	r2, [pc, #32]	@ (c0de6e50 <getContextFromLayout+0x24>)
c0de6e2e:	2100      	movs	r1, #0
c0de6e30:	29d8      	cmp	r1, #216	@ 0xd8
c0de6e32:	bf04      	itt	eq
c0de6e34:	2000      	moveq	r0, #0
c0de6e36:	4770      	bxeq	lr
c0de6e38:	eb09 0302 	add.w	r3, r9, r2
c0de6e3c:	440b      	add	r3, r1
c0de6e3e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de6e40:	4283      	cmp	r3, r0
c0de6e42:	d001      	beq.n	c0de6e48 <getContextFromLayout+0x1c>
c0de6e44:	3148      	adds	r1, #72	@ 0x48
c0de6e46:	e7f3      	b.n	c0de6e30 <getContextFromLayout+0x4>
c0de6e48:	eb09 0002 	add.w	r0, r9, r2
c0de6e4c:	4408      	add	r0, r1
c0de6e4e:	4770      	bx	lr
c0de6e50:	00002764 	.word	0x00002764

c0de6e54 <menuListActionCallback>:
c0de6e54:	b510      	push	{r4, lr}
c0de6e56:	460c      	mov	r4, r1
c0de6e58:	f7ff ffe8 	bl	c0de6e2c <getContextFromLayout>
c0de6e5c:	b1c8      	cbz	r0, c0de6e92 <menuListActionCallback+0x3e>
c0de6e5e:	2c04      	cmp	r4, #4
c0de6e60:	d006      	beq.n	c0de6e70 <menuListActionCallback+0x1c>
c0de6e62:	2c01      	cmp	r4, #1
c0de6e64:	d00a      	beq.n	c0de6e7c <menuListActionCallback+0x28>
c0de6e66:	b9a4      	cbnz	r4, c0de6e92 <menuListActionCallback+0x3e>
c0de6e68:	7a41      	ldrb	r1, [r0, #9]
c0de6e6a:	b191      	cbz	r1, c0de6e92 <menuListActionCallback+0x3e>
c0de6e6c:	3901      	subs	r1, #1
c0de6e6e:	e00b      	b.n	c0de6e88 <menuListActionCallback+0x34>
c0de6e70:	7a41      	ldrb	r1, [r0, #9]
c0de6e72:	6802      	ldr	r2, [r0, #0]
c0de6e74:	4608      	mov	r0, r1
c0de6e76:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6e7a:	4710      	bx	r2
c0de6e7c:	7a02      	ldrb	r2, [r0, #8]
c0de6e7e:	7a41      	ldrb	r1, [r0, #9]
c0de6e80:	3a01      	subs	r2, #1
c0de6e82:	428a      	cmp	r2, r1
c0de6e84:	dd05      	ble.n	c0de6e92 <menuListActionCallback+0x3e>
c0de6e86:	3101      	adds	r1, #1
c0de6e88:	7241      	strb	r1, [r0, #9]
c0de6e8a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6e8e:	f7ff bf47 	b.w	c0de6d20 <displayMenuList>
c0de6e92:	bd10      	pop	{r4, pc}

c0de6e94 <OUTLINED_FUNCTION_0>:
c0de6e94:	7838      	ldrb	r0, [r7, #0]
c0de6e96:	7879      	ldrb	r1, [r7, #1]
c0de6e98:	78ba      	ldrb	r2, [r7, #2]
c0de6e9a:	78fb      	ldrb	r3, [r7, #3]
c0de6e9c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6ea0:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6ea4:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de6ea8:	6360      	str	r0, [r4, #52]	@ 0x34
c0de6eaa:	4638      	mov	r0, r7
c0de6eac:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de6eb0:	7a79      	ldrb	r1, [r7, #9]
c0de6eb2:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de6eb6:	7882      	ldrb	r2, [r0, #2]
c0de6eb8:	78c3      	ldrb	r3, [r0, #3]
c0de6eba:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6ebe:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de6ec2:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de6ec4:	4639      	mov	r1, r7
c0de6ec6:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de6eca:	797a      	ldrb	r2, [r7, #5]
c0de6ecc:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de6ed0:	788b      	ldrb	r3, [r1, #2]
c0de6ed2:	78cd      	ldrb	r5, [r1, #3]
c0de6ed4:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de6ed8:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de6edc:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de6ede:	783a      	ldrb	r2, [r7, #0]
c0de6ee0:	787b      	ldrb	r3, [r7, #1]
c0de6ee2:	78bd      	ldrb	r5, [r7, #2]
c0de6ee4:	78fe      	ldrb	r6, [r7, #3]
c0de6ee6:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6eea:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de6eee:	7803      	ldrb	r3, [r0, #0]
c0de6ef0:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de6ef4:	7885      	ldrb	r5, [r0, #2]
c0de6ef6:	78c0      	ldrb	r0, [r0, #3]
c0de6ef8:	9204      	str	r2, [sp, #16]
c0de6efa:	7a7a      	ldrb	r2, [r7, #9]
c0de6efc:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de6f00:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de6f04:	788b      	ldrb	r3, [r1, #2]
c0de6f06:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de6f0a:	780a      	ldrb	r2, [r1, #0]
c0de6f0c:	78c9      	ldrb	r1, [r1, #3]
c0de6f0e:	9006      	str	r0, [sp, #24]
c0de6f10:	7978      	ldrb	r0, [r7, #5]
c0de6f12:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de6f16:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6f1a:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de6f1e:	9005      	str	r0, [sp, #20]
c0de6f20:	4770      	bx	lr

c0de6f22 <OUTLINED_FUNCTION_1>:
c0de6f22:	7838      	ldrb	r0, [r7, #0]
c0de6f24:	7879      	ldrb	r1, [r7, #1]
c0de6f26:	78ba      	ldrb	r2, [r7, #2]
c0de6f28:	78fb      	ldrb	r3, [r7, #3]
c0de6f2a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de6f2e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de6f32:	4639      	mov	r1, r7
c0de6f34:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de6f38:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de6f3c:	6360      	str	r0, [r4, #52]	@ 0x34
c0de6f3e:	7a78      	ldrb	r0, [r7, #9]
c0de6f40:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de6f44:	788a      	ldrb	r2, [r1, #2]
c0de6f46:	78c9      	ldrb	r1, [r1, #3]
c0de6f48:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de6f4c:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de6f50:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de6f52:	7978      	ldrb	r0, [r7, #5]
c0de6f54:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de6f58:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de6f5c:	78b9      	ldrb	r1, [r7, #2]
c0de6f5e:	78fa      	ldrb	r2, [r7, #3]
c0de6f60:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de6f64:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de6f68:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de6f6a:	4770      	bx	lr

c0de6f6c <OUTLINED_FUNCTION_2>:
c0de6f6c:	f88d 1008 	strb.w	r1, [sp, #8]
c0de6f70:	9003      	str	r0, [sp, #12]
c0de6f72:	2000      	movs	r0, #0
c0de6f74:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de6f78:	2001      	movs	r0, #1
c0de6f7a:	f7ff bd19 	b.w	c0de69b0 <getFreeContext>

c0de6f7e <OUTLINED_FUNCTION_3>:
c0de6f7e:	2114      	movs	r1, #20
c0de6f80:	4698      	mov	r8, r3
c0de6f82:	4617      	mov	r7, r2
c0de6f84:	f004 b9ca 	b.w	c0deb31c <__aeabi_memclr>

c0de6f88 <OUTLINED_FUNCTION_4>:
c0de6f88:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de6f8a:	f7fe b93d 	b.w	c0de5208 <nbgl_layoutDraw>

c0de6f8e <OUTLINED_FUNCTION_5>:
c0de6f8e:	2501      	movs	r5, #1
c0de6f90:	f00a 0003 	and.w	r0, sl, #3
c0de6f94:	2803      	cmp	r0, #3
c0de6f96:	7025      	strb	r5, [r4, #0]
c0de6f98:	7420      	strb	r0, [r4, #16]
c0de6f9a:	4770      	bx	lr

c0de6f9c <nbgl_useCaseHomeAndSettings>:
c0de6f9c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de6fa0:	4607      	mov	r7, r0
c0de6fa2:	4810      	ldr	r0, [pc, #64]	@ (c0de6fe4 <nbgl_useCaseHomeAndSettings+0x48>)
c0de6fa4:	f001 fbb4 	bl	c0de8710 <OUTLINED_FUNCTION_0>
c0de6fa8:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de6fac:	6425      	str	r5, [r4, #64]	@ 0x40
c0de6fae:	9d06      	ldr	r5, [sp, #24]
c0de6fb0:	4628      	mov	r0, r5
c0de6fb2:	f003 fde3 	bl	c0deab7c <pic>
c0de6fb6:	6460      	str	r0, [r4, #68]	@ 0x44
c0de6fb8:	9807      	ldr	r0, [sp, #28]
c0de6fba:	f003 fddf 	bl	c0deab7c <pic>
c0de6fbe:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de6fc0:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de6fc4:	6521      	str	r1, [r4, #80]	@ 0x50
c0de6fc6:	9908      	ldr	r1, [sp, #32]
c0de6fc8:	e9c4 0112 	strd	r0, r1, [r4, #72]	@ 0x48
c0de6fcc:	bf18      	it	ne
c0de6fce:	2d00      	cmpne	r5, #0
c0de6fd0:	d103      	bne.n	c0de6fda <nbgl_useCaseHomeAndSettings+0x3e>
c0de6fd2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de6fd6:	f000 b843 	b.w	c0de7060 <startUseCaseHome>
c0de6fda:	4640      	mov	r0, r8
c0de6fdc:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de6fe0:	f000 b802 	b.w	c0de6fe8 <startUseCaseSettingsAtPage>
c0de6fe4:	0000283c 	.word	0x0000283c

c0de6fe8 <startUseCaseSettingsAtPage>:
c0de6fe8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6fea:	b08d      	sub	sp, #52	@ 0x34
c0de6fec:	4604      	mov	r4, r0
c0de6fee:	4668      	mov	r0, sp
c0de6ff0:	2134      	movs	r1, #52	@ 0x34
c0de6ff2:	f004 f993 	bl	c0deb31c <__aeabi_memclr>
c0de6ff6:	4e19      	ldr	r6, [pc, #100]	@ (c0de705c <startUseCaseSettingsAtPage+0x74>)
c0de6ff8:	466d      	mov	r5, sp
c0de6ffa:	eb09 0006 	add.w	r0, r9, r6
c0de6ffe:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de7002:	280f      	cmp	r0, #15
c0de7004:	bf1e      	ittt	ne
c0de7006:	eb09 0006 	addne.w	r0, r9, r6
c0de700a:	210e      	movne	r1, #14
c0de700c:	f880 1028 	strbne.w	r1, [r0, #40]	@ 0x28
c0de7010:	2700      	movs	r7, #0
c0de7012:	eb09 0006 	add.w	r0, r9, r6
c0de7016:	2101      	movs	r1, #1
c0de7018:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de701c:	eb09 0006 	add.w	r0, r9, r6
c0de7020:	6c40      	ldr	r0, [r0, #68]	@ 0x44
c0de7022:	7a01      	ldrb	r1, [r0, #8]
c0de7024:	428f      	cmp	r7, r1
c0de7026:	d20e      	bcs.n	c0de7046 <startUseCaseSettingsAtPage+0x5e>
c0de7028:	b279      	sxtb	r1, r7
c0de702a:	462a      	mov	r2, r5
c0de702c:	f000 fc3e 	bl	c0de78ac <getContentAtIdx>
c0de7030:	f000 fc96 	bl	c0de7960 <getContentNbElement>
c0de7034:	eb09 0106 	add.w	r1, r9, r6
c0de7038:	3701      	adds	r7, #1
c0de703a:	f891 2030 	ldrb.w	r2, [r1, #48]	@ 0x30
c0de703e:	4410      	add	r0, r2
c0de7040:	f881 0030 	strb.w	r0, [r1, #48]	@ 0x30
c0de7044:	e7ea      	b.n	c0de701c <startUseCaseSettingsAtPage+0x34>
c0de7046:	eb09 0006 	add.w	r0, r9, r6
c0de704a:	2100      	movs	r1, #0
c0de704c:	f880 4031 	strb.w	r4, [r0, #49]	@ 0x31
c0de7050:	2000      	movs	r0, #0
c0de7052:	f000 fe8f 	bl	c0de7d74 <displaySettingsPage>
c0de7056:	b00d      	add	sp, #52	@ 0x34
c0de7058:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de705a:	bf00      	nop
c0de705c:	0000283c 	.word	0x0000283c

c0de7060 <startUseCaseHome>:
c0de7060:	b510      	push	{r4, lr}
c0de7062:	4821      	ldr	r0, [pc, #132]	@ (c0de70e8 <startUseCaseHome+0x88>)
c0de7064:	eb09 0100 	add.w	r1, r9, r0
c0de7068:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de706c:	290d      	cmp	r1, #13
c0de706e:	d009      	beq.n	c0de7084 <startUseCaseHome+0x24>
c0de7070:	290e      	cmp	r1, #14
c0de7072:	d114      	bne.n	c0de709e <startUseCaseHome+0x3e>
c0de7074:	eb09 0100 	add.w	r1, r9, r0
c0de7078:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de707a:	2102      	movs	r1, #2
c0de707c:	2a00      	cmp	r2, #0
c0de707e:	bf08      	it	eq
c0de7080:	2101      	moveq	r1, #1
c0de7082:	e00d      	b.n	c0de70a0 <startUseCaseHome+0x40>
c0de7084:	eb09 0200 	add.w	r2, r9, r0
c0de7088:	2102      	movs	r1, #2
c0de708a:	6cd4      	ldr	r4, [r2, #76]	@ 0x4c
c0de708c:	6c53      	ldr	r3, [r2, #68]	@ 0x44
c0de708e:	2c00      	cmp	r4, #0
c0de7090:	bf08      	it	eq
c0de7092:	2101      	moveq	r1, #1
c0de7094:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de7098:	b133      	cbz	r3, c0de70a8 <startUseCaseHome+0x48>
c0de709a:	3101      	adds	r1, #1
c0de709c:	e000      	b.n	c0de70a0 <startUseCaseHome+0x40>
c0de709e:	2100      	movs	r1, #0
c0de70a0:	eb09 0200 	add.w	r2, r9, r0
c0de70a4:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de70a8:	eb09 0200 	add.w	r2, r9, r0
c0de70ac:	210c      	movs	r1, #12
c0de70ae:	e9d2 3411 	ldrd	r3, r4, [r2, #68]	@ 0x44
c0de70b2:	f882 1028 	strb.w	r1, [r2, #40]	@ 0x28
c0de70b6:	2103      	movs	r1, #3
c0de70b8:	2b00      	cmp	r3, #0
c0de70ba:	bf08      	it	eq
c0de70bc:	2102      	moveq	r1, #2
c0de70be:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de70c2:	b124      	cbz	r4, c0de70ce <startUseCaseHome+0x6e>
c0de70c4:	3101      	adds	r1, #1
c0de70c6:	eb09 0200 	add.w	r2, r9, r0
c0de70ca:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de70ce:	eb09 0200 	add.w	r2, r9, r0
c0de70d2:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de70d4:	b11a      	cbz	r2, c0de70de <startUseCaseHome+0x7e>
c0de70d6:	4448      	add	r0, r9
c0de70d8:	3101      	adds	r1, #1
c0de70da:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de70de:	2000      	movs	r0, #0
c0de70e0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de70e4:	f000 bf34 	b.w	c0de7f50 <displayHomePage>
c0de70e8:	0000283c 	.word	0x0000283c

c0de70ec <nbgl_useCaseReview>:
c0de70ec:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de70ee:	4614      	mov	r4, r2
c0de70f0:	460a      	mov	r2, r1
c0de70f2:	4601      	mov	r1, r0
c0de70f4:	9808      	ldr	r0, [sp, #32]
c0de70f6:	9003      	str	r0, [sp, #12]
c0de70f8:	9807      	ldr	r0, [sp, #28]
c0de70fa:	9002      	str	r0, [sp, #8]
c0de70fc:	9806      	ldr	r0, [sp, #24]
c0de70fe:	e9cd 3000 	strd	r3, r0, [sp]
c0de7102:	2002      	movs	r0, #2
c0de7104:	4623      	mov	r3, r4
c0de7106:	f000 f801 	bl	c0de710c <useCaseReview>
c0de710a:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de710c <useCaseReview>:
c0de710c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de7110:	4607      	mov	r7, r0
c0de7112:	4811      	ldr	r0, [pc, #68]	@ (c0de7158 <useCaseReview+0x4c>)
c0de7114:	4688      	mov	r8, r1
c0de7116:	2140      	movs	r1, #64	@ 0x40
c0de7118:	461d      	mov	r5, r3
c0de711a:	4614      	mov	r4, r2
c0de711c:	f001 fb11 	bl	c0de8742 <OUTLINED_FUNCTION_5>
c0de7120:	9808      	ldr	r0, [sp, #32]
c0de7122:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de7124:	9807      	ldr	r0, [sp, #28]
c0de7126:	64b0      	str	r0, [r6, #72]	@ 0x48
c0de7128:	9906      	ldr	r1, [sp, #24]
c0de712a:	e9c6 450f 	strd	r4, r5, [r6, #60]	@ 0x3c
c0de712e:	6471      	str	r1, [r6, #68]	@ 0x44
c0de7130:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de7132:	f8c6 802c 	str.w	r8, [r6, #44]	@ 0x2c
c0de7136:	f886 7028 	strb.w	r7, [r6, #40]	@ 0x28
c0de713a:	63b1      	str	r1, [r6, #56]	@ 0x38
c0de713c:	2104      	movs	r1, #4
c0de713e:	2800      	cmp	r0, #0
c0de7140:	bf08      	it	eq
c0de7142:	2103      	moveq	r1, #3
c0de7144:	7a20      	ldrb	r0, [r4, #8]
c0de7146:	4408      	add	r0, r1
c0de7148:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de714c:	2000      	movs	r0, #0
c0de714e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de7152:	f000 b8a7 	b.w	c0de72a4 <displayReviewPage>
c0de7156:	bf00      	nop
c0de7158:	0000283c 	.word	0x0000283c

c0de715c <nbgl_useCaseAdvancedReview>:
c0de715c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7160:	b088      	sub	sp, #32
c0de7162:	468c      	mov	ip, r1
c0de7164:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de7168:	e9dd 8b10 	ldrd	r8, fp, [sp, #64]	@ 0x40
c0de716c:	4616      	mov	r6, r2
c0de716e:	4604      	mov	r4, r0
c0de7170:	f1ba 0f00 	cmp.w	sl, #0
c0de7174:	d034      	beq.n	c0de71e0 <nbgl_useCaseAdvancedReview+0x84>
c0de7176:	f8da 7000 	ldr.w	r7, [sl]
c0de717a:	b92f      	cbnz	r7, c0de7188 <nbgl_useCaseAdvancedReview+0x2c>
c0de717c:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de7180:	b910      	cbnz	r0, c0de7188 <nbgl_useCaseAdvancedReview+0x2c>
c0de7182:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de7186:	b358      	cbz	r0, c0de71e0 <nbgl_useCaseAdvancedReview+0x84>
c0de7188:	481f      	ldr	r0, [pc, #124]	@ (c0de7208 <nbgl_useCaseAdvancedReview+0xac>)
c0de718a:	e9cd 4106 	strd	r4, r1, [sp, #24]
c0de718e:	2128      	movs	r1, #40	@ 0x28
c0de7190:	9705      	str	r7, [sp, #20]
c0de7192:	461f      	mov	r7, r3
c0de7194:	4665      	mov	r5, ip
c0de7196:	eb09 0400 	add.w	r4, r9, r0
c0de719a:	4620      	mov	r0, r4
c0de719c:	f004 f8be 	bl	c0deb31c <__aeabi_memclr>
c0de71a0:	4919      	ldr	r1, [pc, #100]	@ (c0de7208 <nbgl_useCaseAdvancedReview+0xac>)
c0de71a2:	2002      	movs	r0, #2
c0de71a4:	46c4      	mov	ip, r8
c0de71a6:	462a      	mov	r2, r5
c0de71a8:	f809 0001 	strb.w	r0, [r9, r1]
c0de71ac:	9905      	ldr	r1, [sp, #20]
c0de71ae:	2040      	movs	r0, #64	@ 0x40
c0de71b0:	2908      	cmp	r1, #8
c0de71b2:	bf08      	it	eq
c0de71b4:	2080      	moveq	r0, #128	@ 0x80
c0de71b6:	9906      	ldr	r1, [sp, #24]
c0de71b8:	f8c4 a01c 	str.w	sl, [r4, #28]
c0de71bc:	4301      	orrs	r1, r0
c0de71be:	1d20      	adds	r0, r4, #4
c0de71c0:	e880 09e2 	stmia.w	r0, {r1, r5, r6, r7, r8, fp}
c0de71c4:	9807      	ldr	r0, [sp, #28]
c0de71c6:	f8dd 801c 	ldr.w	r8, [sp, #28]
c0de71ca:	6220      	str	r0, [r4, #32]
c0de71cc:	f89a 0000 	ldrb.w	r0, [sl]
c0de71d0:	f010 0f16 	tst.w	r0, #22
c0de71d4:	d00b      	beq.n	c0de71ee <nbgl_useCaseAdvancedReview+0x92>
c0de71d6:	b008      	add	sp, #32
c0de71d8:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de71dc:	f000 b816 	b.w	c0de720c <displayInitialWarning>
c0de71e0:	9103      	str	r1, [sp, #12]
c0de71e2:	e88d 0908 	stmia.w	sp, {r3, r8, fp}
c0de71e6:	2002      	movs	r0, #2
c0de71e8:	4621      	mov	r1, r4
c0de71ea:	4662      	mov	r2, ip
c0de71ec:	e005      	b.n	c0de71fa <nbgl_useCaseAdvancedReview+0x9e>
c0de71ee:	2002      	movs	r0, #2
c0de71f0:	463d      	mov	r5, r7
c0de71f2:	e9cd 7c00 	strd	r7, ip, [sp]
c0de71f6:	e9cd b802 	strd	fp, r8, [sp, #8]
c0de71fa:	4633      	mov	r3, r6
c0de71fc:	f7ff ff86 	bl	c0de710c <useCaseReview>
c0de7200:	b008      	add	sp, #32
c0de7202:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de7206:	bf00      	nop
c0de7208:	0000283c 	.word	0x0000283c

c0de720c <displayInitialWarning>:
c0de720c:	4803      	ldr	r0, [pc, #12]	@ (c0de721c <displayInitialWarning+0x10>)
c0de720e:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de7212:	4448      	add	r0, r9
c0de7214:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de7216:	f000 bf87 	b.w	c0de8128 <displayWarningStep>
c0de721a:	bf00      	nop
c0de721c:	0000283c 	.word	0x0000283c

c0de7220 <nbgl_useCaseReviewBlindSigning>:
c0de7220:	b5b0      	push	{r4, r5, r7, lr}
c0de7222:	b086      	sub	sp, #24
c0de7224:	4d06      	ldr	r5, [pc, #24]	@ (c0de7240 <nbgl_useCaseReviewBlindSigning+0x20>)
c0de7226:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de7228:	447d      	add	r5, pc
c0de722a:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de722e:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de7230:	9401      	str	r4, [sp, #4]
c0de7232:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de7234:	9400      	str	r4, [sp, #0]
c0de7236:	f7ff ff91 	bl	c0de715c <nbgl_useCaseAdvancedReview>
c0de723a:	b006      	add	sp, #24
c0de723c:	bdb0      	pop	{r4, r5, r7, pc}
c0de723e:	bf00      	nop
c0de7240:	00005ce0 	.word	0x00005ce0

c0de7244 <nbgl_useCaseAddressReview>:
c0de7244:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de7248:	f8df 8054 	ldr.w	r8, [pc, #84]	@ c0de72a0 <nbgl_useCaseAddressReview+0x5c>
c0de724c:	460c      	mov	r4, r1
c0de724e:	4607      	mov	r7, r0
c0de7250:	2140      	movs	r1, #64	@ 0x40
c0de7252:	469a      	mov	sl, r3
c0de7254:	4616      	mov	r6, r2
c0de7256:	eb09 0508 	add.w	r5, r9, r8
c0de725a:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de725e:	f004 f85d 	bl	c0deb31c <__aeabi_memclr>
c0de7262:	2004      	movs	r0, #4
c0de7264:	652f      	str	r7, [r5, #80]	@ 0x50
c0de7266:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de726a:	9908      	ldr	r1, [sp, #32]
c0de726c:	e9c5 6a10 	strd	r6, sl, [r5, #64]	@ 0x40
c0de7270:	64a9      	str	r1, [r5, #72]	@ 0x48
c0de7272:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de7274:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de7278:	63a9      	str	r1, [r5, #56]	@ 0x38
c0de727a:	b15c      	cbz	r4, c0de7294 <nbgl_useCaseAddressReview+0x50>
c0de727c:	4620      	mov	r0, r4
c0de727e:	eb09 0508 	add.w	r5, r9, r8
c0de7282:	f003 fc7b 	bl	c0deab7c <pic>
c0de7286:	63e8      	str	r0, [r5, #60]	@ 0x3c
c0de7288:	f895 0030 	ldrb.w	r0, [r5, #48]	@ 0x30
c0de728c:	7a21      	ldrb	r1, [r4, #8]
c0de728e:	4408      	add	r0, r1
c0de7290:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de7294:	2000      	movs	r0, #0
c0de7296:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de729a:	f000 b803 	b.w	c0de72a4 <displayReviewPage>
c0de729e:	bf00      	nop
c0de72a0:	0000283c 	.word	0x0000283c

c0de72a4 <displayReviewPage>:
c0de72a4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de72a8:	b088      	sub	sp, #32
c0de72aa:	4e40      	ldr	r6, [pc, #256]	@ (c0de73ac <displayReviewPage+0x108>)
c0de72ac:	4680      	mov	r8, r0
c0de72ae:	2100      	movs	r1, #0
c0de72b0:	2501      	movs	r5, #1
c0de72b2:	e9cd 1106 	strd	r1, r1, [sp, #24]
c0de72b6:	e9cd 1104 	strd	r1, r1, [sp, #16]
c0de72ba:	eb09 0006 	add.w	r0, r9, r6
c0de72be:	6c83      	ldr	r3, [r0, #72]	@ 0x48
c0de72c0:	6341      	str	r1, [r0, #52]	@ 0x34
c0de72c2:	2102      	movs	r1, #2
c0de72c4:	2b00      	cmp	r3, #0
c0de72c6:	bf08      	it	eq
c0de72c8:	25ff      	moveq	r5, #255	@ 0xff
c0de72ca:	bf08      	it	eq
c0de72cc:	2101      	moveq	r1, #1
c0de72ce:	f890 7030 	ldrb.w	r7, [r0, #48]	@ 0x30
c0de72d2:	f890 2031 	ldrb.w	r2, [r0, #49]	@ 0x31
c0de72d6:	1ebc      	subs	r4, r7, #2
c0de72d8:	b250      	sxtb	r0, r2
c0de72da:	b2e4      	uxtb	r4, r4
c0de72dc:	42a0      	cmp	r0, r4
c0de72de:	da07      	bge.n	c0de72f0 <displayReviewPage+0x4c>
c0de72e0:	4281      	cmp	r1, r0
c0de72e2:	dd0c      	ble.n	c0de72fe <displayReviewPage+0x5a>
c0de72e4:	2a00      	cmp	r2, #0
c0de72e6:	d041      	beq.n	c0de736c <displayReviewPage+0xc8>
c0de72e8:	4285      	cmp	r5, r0
c0de72ea:	bf08      	it	eq
c0de72ec:	9307      	streq	r3, [sp, #28]
c0de72ee:	e043      	b.n	c0de7378 <displayReviewPage+0xd4>
c0de72f0:	d110      	bne.n	c0de7314 <displayReviewPage+0x70>
c0de72f2:	a905      	add	r1, sp, #20
c0de72f4:	aa07      	add	r2, sp, #28
c0de72f6:	2001      	movs	r0, #1
c0de72f8:	f000 ff56 	bl	c0de81a8 <getLastPageInfo>
c0de72fc:	e03c      	b.n	c0de7378 <displayReviewPage+0xd4>
c0de72fe:	eb09 0306 	add.w	r3, r9, r6
c0de7302:	6d1d      	ldr	r5, [r3, #80]	@ 0x50
c0de7304:	b18d      	cbz	r5, c0de732a <displayReviewPage+0x86>
c0de7306:	4281      	cmp	r1, r0
c0de7308:	d10f      	bne.n	c0de732a <displayReviewPage+0x86>
c0de730a:	9506      	str	r5, [sp, #24]
c0de730c:	4828      	ldr	r0, [pc, #160]	@ (c0de73b0 <displayReviewPage+0x10c>)
c0de730e:	4478      	add	r0, pc
c0de7310:	9007      	str	r0, [sp, #28]
c0de7312:	e032      	b.n	c0de737a <displayReviewPage+0xd6>
c0de7314:	1e79      	subs	r1, r7, #1
c0de7316:	b2c9      	uxtb	r1, r1
c0de7318:	4288      	cmp	r0, r1
c0de731a:	d12d      	bne.n	c0de7378 <displayReviewPage+0xd4>
c0de731c:	a905      	add	r1, sp, #20
c0de731e:	aa07      	add	r2, sp, #28
c0de7320:	2000      	movs	r0, #0
c0de7322:	2500      	movs	r5, #0
c0de7324:	f000 ff40 	bl	c0de81a8 <getLastPageInfo>
c0de7328:	e027      	b.n	c0de737a <displayReviewPage+0xd6>
c0de732a:	2000      	movs	r0, #0
c0de732c:	f10d 030f 	add.w	r3, sp, #15
c0de7330:	f88d 000f 	strb.w	r0, [sp, #15]
c0de7334:	eb09 0006 	add.w	r0, r9, r6
c0de7338:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de733a:	ac05      	add	r4, sp, #20
c0de733c:	af04      	add	r7, sp, #16
c0de733e:	9302      	str	r3, [sp, #8]
c0de7340:	e9cd 7400 	strd	r7, r4, [sp]
c0de7344:	1a57      	subs	r7, r2, r1
c0de7346:	2d00      	cmp	r5, #0
c0de7348:	bf18      	it	ne
c0de734a:	3f01      	subne	r7, #1
c0de734c:	aa07      	add	r2, sp, #28
c0de734e:	b2f9      	uxtb	r1, r7
c0de7350:	ab06      	add	r3, sp, #24
c0de7352:	f000 fc93 	bl	c0de7c7c <getPairData>
c0de7356:	9804      	ldr	r0, [sp, #16]
c0de7358:	b310      	cbz	r0, c0de73a0 <displayReviewPage+0xfc>
c0de735a:	eb09 0006 	add.w	r0, r9, r6
c0de735e:	f880 705b 	strb.w	r7, [r0, #91]	@ 0x5b
c0de7362:	4914      	ldr	r1, [pc, #80]	@ (c0de73b4 <displayReviewPage+0x110>)
c0de7364:	4479      	add	r1, pc
c0de7366:	6341      	str	r1, [r0, #52]	@ 0x34
c0de7368:	2001      	movs	r0, #1
c0de736a:	e01c      	b.n	c0de73a6 <displayReviewPage+0x102>
c0de736c:	eb09 0006 	add.w	r0, r9, r6
c0de7370:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de7374:	9105      	str	r1, [sp, #20]
c0de7376:	9007      	str	r0, [sp, #28]
c0de7378:	2500      	movs	r5, #0
c0de737a:	2000      	movs	r0, #0
c0de737c:	9a07      	ldr	r2, [sp, #28]
c0de737e:	9905      	ldr	r1, [sp, #20]
c0de7380:	4c0d      	ldr	r4, [pc, #52]	@ (c0de73b8 <displayReviewPage+0x114>)
c0de7382:	b2c0      	uxtb	r0, r0
c0de7384:	2300      	movs	r3, #0
c0de7386:	9002      	str	r0, [sp, #8]
c0de7388:	4640      	mov	r0, r8
c0de738a:	447c      	add	r4, pc
c0de738c:	e9cd 4300 	strd	r4, r3, [sp]
c0de7390:	462b      	mov	r3, r5
c0de7392:	f000 f833 	bl	c0de73fc <drawStep>
c0de7396:	b008      	add	sp, #32
c0de7398:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de739c:	f7fe b876 	b.w	c0de548c <nbgl_refresh>
c0de73a0:	f89d 000f 	ldrb.w	r0, [sp, #15]
c0de73a4:	0040      	lsls	r0, r0, #1
c0de73a6:	9d06      	ldr	r5, [sp, #24]
c0de73a8:	e7e8      	b.n	c0de737c <displayReviewPage+0xd8>
c0de73aa:	bf00      	nop
c0de73ac:	0000283c 	.word	0x0000283c
c0de73b0:	00004533 	.word	0x00004533
c0de73b4:	0000102d 	.word	0x0000102d
c0de73b8:	0000106f 	.word	0x0000106f

c0de73bc <nbgl_useCaseStatus>:
c0de73bc:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de73be:	4605      	mov	r5, r0
c0de73c0:	480c      	ldr	r0, [pc, #48]	@ (c0de73f4 <nbgl_useCaseStatus+0x38>)
c0de73c2:	2140      	movs	r1, #64	@ 0x40
c0de73c4:	4614      	mov	r4, r2
c0de73c6:	f001 f9bc 	bl	c0de8742 <OUTLINED_FUNCTION_5>
c0de73ca:	2009      	movs	r0, #9
c0de73cc:	6374      	str	r4, [r6, #52]	@ 0x34
c0de73ce:	462a      	mov	r2, r5
c0de73d0:	2300      	movs	r3, #0
c0de73d2:	f886 0028 	strb.w	r0, [r6, #40]	@ 0x28
c0de73d6:	2001      	movs	r0, #1
c0de73d8:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de73dc:	2000      	movs	r0, #0
c0de73de:	4906      	ldr	r1, [pc, #24]	@ (c0de73f8 <nbgl_useCaseStatus+0x3c>)
c0de73e0:	9002      	str	r0, [sp, #8]
c0de73e2:	4479      	add	r1, pc
c0de73e4:	e9cd 1000 	strd	r1, r0, [sp]
c0de73e8:	2040      	movs	r0, #64	@ 0x40
c0de73ea:	2100      	movs	r1, #0
c0de73ec:	f000 f806 	bl	c0de73fc <drawStep>
c0de73f0:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de73f2:	bf00      	nop
c0de73f4:	0000283c 	.word	0x0000283c
c0de73f8:	0000019f 	.word	0x0000019f

c0de73fc <drawStep>:
c0de73fc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7400:	b09a      	sub	sp, #104	@ 0x68
c0de7402:	4688      	mov	r8, r1
c0de7404:	4604      	mov	r4, r0
c0de7406:	a80d      	add	r0, sp, #52	@ 0x34
c0de7408:	2134      	movs	r1, #52	@ 0x34
c0de740a:	461d      	mov	r5, r3
c0de740c:	4616      	mov	r6, r2
c0de740e:	f003 ff85 	bl	c0deb31c <__aeabi_memclr>
c0de7412:	2700      	movs	r7, #0
c0de7414:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de7418:	4856      	ldr	r0, [pc, #344]	@ (c0de7574 <drawStep+0x178>)
c0de741a:	4478      	add	r0, pc
c0de741c:	f003 fbae 	bl	c0deab7c <pic>
c0de7420:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de7570 <drawStep+0x174>
c0de7424:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de7428:	9709      	str	r7, [sp, #36]	@ 0x24
c0de742a:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de742e:	eb09 000b 	add.w	r0, r9, fp
c0de7432:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de7436:	2802      	cmp	r0, #2
c0de7438:	d30b      	bcc.n	c0de7452 <drawStep+0x56>
c0de743a:	eb09 010b 	add.w	r1, r9, fp
c0de743e:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de7442:	b129      	cbz	r1, c0de7450 <drawStep+0x54>
c0de7444:	3801      	subs	r0, #1
c0de7446:	2703      	movs	r7, #3
c0de7448:	4288      	cmp	r0, r1
c0de744a:	bf08      	it	eq
c0de744c:	2702      	moveq	r7, #2
c0de744e:	e000      	b.n	c0de7452 <drawStep+0x56>
c0de7450:	2701      	movs	r7, #1
c0de7452:	eb09 000b 	add.w	r0, r9, fp
c0de7456:	ea47 0204 	orr.w	r2, r7, r4
c0de745a:	f890 1058 	ldrb.w	r1, [r0, #88]	@ 0x58
c0de745e:	4614      	mov	r4, r2
c0de7460:	2901      	cmp	r1, #1
c0de7462:	bf88      	it	hi
c0de7464:	f044 0402 	orrhi.w	r4, r4, #2
c0de7468:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de746a:	2900      	cmp	r1, #0
c0de746c:	bf08      	it	eq
c0de746e:	4614      	moveq	r4, r2
c0de7470:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de7474:	2806      	cmp	r0, #6
c0de7476:	f040 0108 	orr.w	r1, r0, #8
c0de747a:	bf18      	it	ne
c0de747c:	4614      	movne	r4, r2
c0de747e:	2909      	cmp	r1, #9
c0de7480:	bf0c      	ite	eq
c0de7482:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de7486:	f04f 0a00 	movne.w	sl, #0
c0de748a:	280a      	cmp	r0, #10
c0de748c:	d105      	bne.n	c0de749a <drawStep+0x9e>
c0de748e:	eb09 000b 	add.w	r0, r9, fp
c0de7492:	6cc0      	ldr	r0, [r0, #76]	@ 0x4c
c0de7494:	b108      	cbz	r0, c0de749a <drawStep+0x9e>
c0de7496:	f7ff fcbd 	bl	c0de6e14 <nbgl_stepRelease>
c0de749a:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de749c:	b1b6      	cbz	r6, c0de74cc <drawStep+0xd0>
c0de749e:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de74a0:	f1b8 0f00 	cmp.w	r8, #0
c0de74a4:	d12c      	bne.n	c0de7500 <drawStep+0x104>
c0de74a6:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de74a8:	2802      	cmp	r0, #2
c0de74aa:	d029      	beq.n	c0de7500 <drawStep+0x104>
c0de74ac:	2201      	movs	r2, #1
c0de74ae:	4633      	mov	r3, r6
c0de74b0:	2801      	cmp	r0, #1
c0de74b2:	bf08      	it	eq
c0de74b4:	2202      	moveq	r2, #2
c0de74b6:	4620      	mov	r0, r4
c0de74b8:	2d00      	cmp	r5, #0
c0de74ba:	bf08      	it	eq
c0de74bc:	462a      	moveq	r2, r5
c0de74be:	e9cd 5200 	strd	r5, r2, [sp]
c0de74c2:	9702      	str	r7, [sp, #8]
c0de74c4:	4652      	mov	r2, sl
c0de74c6:	f7ff fa39 	bl	c0de693c <nbgl_stepDrawText>
c0de74ca:	e043      	b.n	c0de7554 <drawStep+0x158>
c0de74cc:	eb09 000b 	add.w	r0, r9, fp
c0de74d0:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de74d4:	a903      	add	r1, sp, #12
c0de74d6:	aa0d      	add	r2, sp, #52	@ 0x34
c0de74d8:	f000 fb8c 	bl	c0de7bf4 <getContentElemAtIdx>
c0de74dc:	b330      	cbz	r0, c0de752c <drawStep+0x130>
c0de74de:	7801      	ldrb	r1, [r0, #0]
c0de74e0:	2400      	movs	r4, #0
c0de74e2:	290a      	cmp	r1, #10
c0de74e4:	d024      	beq.n	c0de7530 <drawStep+0x134>
c0de74e6:	2909      	cmp	r1, #9
c0de74e8:	d135      	bne.n	c0de7556 <drawStep+0x15a>
c0de74ea:	f001 f930 	bl	c0de874e <OUTLINED_FUNCTION_6>
c0de74ee:	4922      	ldr	r1, [pc, #136]	@ (c0de7578 <drawStep+0x17c>)
c0de74f0:	4479      	add	r1, pc
c0de74f2:	910a      	str	r1, [sp, #40]	@ 0x28
c0de74f4:	7941      	ldrb	r1, [r0, #5]
c0de74f6:	7980      	ldrb	r0, [r0, #6]
c0de74f8:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de74fc:	1c48      	adds	r0, r1, #1
c0de74fe:	e020      	b.n	c0de7542 <drawStep+0x146>
c0de7500:	2000      	movs	r0, #0
c0de7502:	9603      	str	r6, [sp, #12]
c0de7504:	f8cd 8014 	str.w	r8, [sp, #20]
c0de7508:	9504      	str	r5, [sp, #16]
c0de750a:	4652      	mov	r2, sl
c0de750c:	f88d 0018 	strb.w	r0, [sp, #24]
c0de7510:	eb09 000b 	add.w	r0, r9, fp
c0de7514:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de7516:	4328      	orrs	r0, r5
c0de7518:	bf18      	it	ne
c0de751a:	2001      	movne	r0, #1
c0de751c:	f88d 0019 	strb.w	r0, [sp, #25]
c0de7520:	9700      	str	r7, [sp, #0]
c0de7522:	ab03      	add	r3, sp, #12
c0de7524:	4620      	mov	r0, r4
c0de7526:	f7ff fb4f 	bl	c0de6bc8 <nbgl_stepDrawCenteredInfo>
c0de752a:	e013      	b.n	c0de7554 <drawStep+0x158>
c0de752c:	2400      	movs	r4, #0
c0de752e:	e012      	b.n	c0de7556 <drawStep+0x15a>
c0de7530:	f001 f90d 	bl	c0de874e <OUTLINED_FUNCTION_6>
c0de7534:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de7538:	4910      	ldr	r1, [pc, #64]	@ (c0de757c <drawStep+0x180>)
c0de753a:	7a00      	ldrb	r0, [r0, #8]
c0de753c:	4479      	add	r1, pc
c0de753e:	3001      	adds	r0, #1
c0de7540:	910a      	str	r1, [sp, #40]	@ 0x28
c0de7542:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de7546:	4651      	mov	r1, sl
c0de7548:	463b      	mov	r3, r7
c0de754a:	480d      	ldr	r0, [pc, #52]	@ (c0de7580 <drawStep+0x184>)
c0de754c:	aa0a      	add	r2, sp, #40	@ 0x28
c0de754e:	4478      	add	r0, pc
c0de7550:	f7ff fbca 	bl	c0de6ce8 <nbgl_stepDrawMenuList>
c0de7554:	4604      	mov	r4, r0
c0de7556:	eb09 000b 	add.w	r0, r9, fp
c0de755a:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de755e:	280a      	cmp	r0, #10
c0de7560:	bf04      	itt	eq
c0de7562:	eb09 000b 	addeq.w	r0, r9, fp
c0de7566:	64c4      	streq	r4, [r0, #76]	@ 0x4c
c0de7568:	b01a      	add	sp, #104	@ 0x68
c0de756a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de756e:	bf00      	nop
c0de7570:	0000283c 	.word	0x0000283c
c0de7574:	00001133 	.word	0x00001133
c0de7578:	0000106d 	.word	0x0000106d
c0de757c:	00001021 	.word	0x00001021
c0de7580:	00001073 	.word	0x00001073

c0de7584 <statusButtonCallback>:
c0de7584:	f041 0004 	orr.w	r0, r1, #4
c0de7588:	2804      	cmp	r0, #4
c0de758a:	d001      	beq.n	c0de7590 <statusButtonCallback+0xc>
c0de758c:	2901      	cmp	r1, #1
c0de758e:	d104      	bne.n	c0de759a <statusButtonCallback+0x16>
c0de7590:	4802      	ldr	r0, [pc, #8]	@ (c0de759c <statusButtonCallback+0x18>)
c0de7592:	4448      	add	r0, r9
c0de7594:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de7596:	b100      	cbz	r0, c0de759a <statusButtonCallback+0x16>
c0de7598:	4700      	bx	r0
c0de759a:	4770      	bx	lr
c0de759c:	0000283c 	.word	0x0000283c

c0de75a0 <nbgl_useCaseReviewStatus>:
c0de75a0:	460a      	mov	r2, r1
c0de75a2:	b198      	cbz	r0, c0de75cc <nbgl_useCaseReviewStatus+0x2c>
c0de75a4:	2801      	cmp	r0, #1
c0de75a6:	d016      	beq.n	c0de75d6 <nbgl_useCaseReviewStatus+0x36>
c0de75a8:	2802      	cmp	r0, #2
c0de75aa:	d019      	beq.n	c0de75e0 <nbgl_useCaseReviewStatus+0x40>
c0de75ac:	2803      	cmp	r0, #3
c0de75ae:	d01c      	beq.n	c0de75ea <nbgl_useCaseReviewStatus+0x4a>
c0de75b0:	2804      	cmp	r0, #4
c0de75b2:	d01f      	beq.n	c0de75f4 <nbgl_useCaseReviewStatus+0x54>
c0de75b4:	2807      	cmp	r0, #7
c0de75b6:	d022      	beq.n	c0de75fe <nbgl_useCaseReviewStatus+0x5e>
c0de75b8:	2806      	cmp	r0, #6
c0de75ba:	d025      	beq.n	c0de7608 <nbgl_useCaseReviewStatus+0x68>
c0de75bc:	2805      	cmp	r0, #5
c0de75be:	bf18      	it	ne
c0de75c0:	4770      	bxne	lr
c0de75c2:	4815      	ldr	r0, [pc, #84]	@ (c0de7618 <nbgl_useCaseReviewStatus+0x78>)
c0de75c4:	2100      	movs	r1, #0
c0de75c6:	4478      	add	r0, pc
c0de75c8:	f7ff bef8 	b.w	c0de73bc <nbgl_useCaseStatus>
c0de75cc:	4813      	ldr	r0, [pc, #76]	@ (c0de761c <nbgl_useCaseReviewStatus+0x7c>)
c0de75ce:	2101      	movs	r1, #1
c0de75d0:	4478      	add	r0, pc
c0de75d2:	f7ff bef3 	b.w	c0de73bc <nbgl_useCaseStatus>
c0de75d6:	4812      	ldr	r0, [pc, #72]	@ (c0de7620 <nbgl_useCaseReviewStatus+0x80>)
c0de75d8:	2100      	movs	r1, #0
c0de75da:	4478      	add	r0, pc
c0de75dc:	f7ff beee 	b.w	c0de73bc <nbgl_useCaseStatus>
c0de75e0:	4810      	ldr	r0, [pc, #64]	@ (c0de7624 <nbgl_useCaseReviewStatus+0x84>)
c0de75e2:	2101      	movs	r1, #1
c0de75e4:	4478      	add	r0, pc
c0de75e6:	f7ff bee9 	b.w	c0de73bc <nbgl_useCaseStatus>
c0de75ea:	480f      	ldr	r0, [pc, #60]	@ (c0de7628 <nbgl_useCaseReviewStatus+0x88>)
c0de75ec:	2100      	movs	r1, #0
c0de75ee:	4478      	add	r0, pc
c0de75f0:	f7ff bee4 	b.w	c0de73bc <nbgl_useCaseStatus>
c0de75f4:	4807      	ldr	r0, [pc, #28]	@ (c0de7614 <nbgl_useCaseReviewStatus+0x74>)
c0de75f6:	2101      	movs	r1, #1
c0de75f8:	4478      	add	r0, pc
c0de75fa:	f7ff bedf 	b.w	c0de73bc <nbgl_useCaseStatus>
c0de75fe:	480c      	ldr	r0, [pc, #48]	@ (c0de7630 <nbgl_useCaseReviewStatus+0x90>)
c0de7600:	2100      	movs	r1, #0
c0de7602:	4478      	add	r0, pc
c0de7604:	f7ff beda 	b.w	c0de73bc <nbgl_useCaseStatus>
c0de7608:	4808      	ldr	r0, [pc, #32]	@ (c0de762c <nbgl_useCaseReviewStatus+0x8c>)
c0de760a:	2101      	movs	r1, #1
c0de760c:	4478      	add	r0, pc
c0de760e:	f7ff bed5 	b.w	c0de73bc <nbgl_useCaseStatus>
c0de7612:	bf00      	nop
c0de7614:	00003fd9 	.word	0x00003fd9
c0de7618:	0000402d 	.word	0x0000402d
c0de761c:	000040bc 	.word	0x000040bc
c0de7620:	00004292 	.word	0x00004292
c0de7624:	0000411b 	.word	0x0000411b
c0de7628:	00004228 	.word	0x00004228
c0de762c:	00004040 	.word	0x00004040
c0de7630:	00004187 	.word	0x00004187

c0de7634 <displayStreamingReviewPage>:
c0de7634:	b570      	push	{r4, r5, r6, lr}
c0de7636:	b08c      	sub	sp, #48	@ 0x30
c0de7638:	4d5a      	ldr	r5, [pc, #360]	@ (c0de77a4 <displayStreamingReviewPage+0x170>)
c0de763a:	2100      	movs	r1, #0
c0de763c:	4604      	mov	r4, r0
c0de763e:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de7642:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de7646:	eb09 0005 	add.w	r0, r9, r5
c0de764a:	6341      	str	r1, [r0, #52]	@ 0x34
c0de764c:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de7650:	2806      	cmp	r0, #6
c0de7652:	d015      	beq.n	c0de7680 <displayStreamingReviewPage+0x4c>
c0de7654:	2805      	cmp	r0, #5
c0de7656:	d13d      	bne.n	c0de76d4 <displayStreamingReviewPage+0xa0>
c0de7658:	eb09 0205 	add.w	r2, r9, r5
c0de765c:	2101      	movs	r1, #1
c0de765e:	2302      	movs	r3, #2
c0de7660:	6c90      	ldr	r0, [r2, #72]	@ 0x48
c0de7662:	2800      	cmp	r0, #0
c0de7664:	bf08      	it	eq
c0de7666:	21ff      	moveq	r1, #255	@ 0xff
c0de7668:	bf08      	it	eq
c0de766a:	2301      	moveq	r3, #1
c0de766c:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de7670:	4293      	cmp	r3, r2
c0de7672:	dd3b      	ble.n	c0de76ec <displayStreamingReviewPage+0xb8>
c0de7674:	b2d3      	uxtb	r3, r2
c0de7676:	2b00      	cmp	r3, #0
c0de7678:	d063      	beq.n	c0de7742 <displayStreamingReviewPage+0x10e>
c0de767a:	4291      	cmp	r1, r2
c0de767c:	d066      	beq.n	c0de774c <displayStreamingReviewPage+0x118>
c0de767e:	e066      	b.n	c0de774e <displayStreamingReviewPage+0x11a>
c0de7680:	eb09 0005 	add.w	r0, r9, r5
c0de7684:	f990 1031 	ldrsb.w	r1, [r0, #49]	@ 0x31
c0de7688:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de768a:	7a02      	ldrb	r2, [r0, #8]
c0de768c:	4291      	cmp	r1, r2
c0de768e:	da2d      	bge.n	c0de76ec <displayStreamingReviewPage+0xb8>
c0de7690:	eb09 0205 	add.w	r2, r9, r5
c0de7694:	6d53      	ldr	r3, [r2, #84]	@ 0x54
c0de7696:	b3cb      	cbz	r3, c0de770c <displayStreamingReviewPage+0xd8>
c0de7698:	f892 2059 	ldrb.w	r2, [r2, #89]	@ 0x59
c0de769c:	bbb2      	cbnz	r2, c0de770c <displayStreamingReviewPage+0xd8>
c0de769e:	eb09 0205 	add.w	r2, r9, r5
c0de76a2:	f892 2058 	ldrb.w	r2, [r2, #88]	@ 0x58
c0de76a6:	2a01      	cmp	r2, #1
c0de76a8:	d807      	bhi.n	c0de76ba <displayStreamingReviewPage+0x86>
c0de76aa:	2900      	cmp	r1, #0
c0de76ac:	dc05      	bgt.n	c0de76ba <displayStreamingReviewPage+0x86>
c0de76ae:	eb09 0305 	add.w	r3, r9, r5
c0de76b2:	f893 305a 	ldrb.w	r3, [r3, #90]	@ 0x5a
c0de76b6:	2b08      	cmp	r3, #8
c0de76b8:	d128      	bne.n	c0de770c <displayStreamingReviewPage+0xd8>
c0de76ba:	2000      	movs	r0, #0
c0de76bc:	9007      	str	r0, [sp, #28]
c0de76be:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de76c2:	f004 0008 	and.w	r0, r4, #8
c0de76c6:	2a01      	cmp	r2, #1
c0de76c8:	d001      	beq.n	c0de76ce <displayStreamingReviewPage+0x9a>
c0de76ca:	2901      	cmp	r1, #1
c0de76cc:	db50      	blt.n	c0de7770 <displayStreamingReviewPage+0x13c>
c0de76ce:	f040 0003 	orr.w	r0, r0, #3
c0de76d2:	e04f      	b.n	c0de7774 <displayStreamingReviewPage+0x140>
c0de76d4:	eb09 0005 	add.w	r0, r9, r5
c0de76d8:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de76dc:	b180      	cbz	r0, c0de7700 <displayStreamingReviewPage+0xcc>
c0de76de:	a909      	add	r1, sp, #36	@ 0x24
c0de76e0:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de76e2:	2000      	movs	r0, #0
c0de76e4:	2500      	movs	r5, #0
c0de76e6:	f000 fd5f 	bl	c0de81a8 <getLastPageInfo>
c0de76ea:	e031      	b.n	c0de7750 <displayStreamingReviewPage+0x11c>
c0de76ec:	eb09 0005 	add.w	r0, r9, r5
c0de76f0:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de76f2:	2900      	cmp	r1, #0
c0de76f4:	d053      	beq.n	c0de779e <displayStreamingReviewPage+0x16a>
c0de76f6:	2001      	movs	r0, #1
c0de76f8:	b00c      	add	sp, #48	@ 0x30
c0de76fa:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de76fe:	4708      	bx	r1
c0de7700:	a909      	add	r1, sp, #36	@ 0x24
c0de7702:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de7704:	2001      	movs	r0, #1
c0de7706:	f000 fd4f 	bl	c0de81a8 <getLastPageInfo>
c0de770a:	e020      	b.n	c0de774e <displayStreamingReviewPage+0x11a>
c0de770c:	2300      	movs	r3, #0
c0de770e:	eb09 0205 	add.w	r2, r9, r5
c0de7712:	b2c9      	uxtb	r1, r1
c0de7714:	f882 3059 	strb.w	r3, [r2, #89]	@ 0x59
c0de7718:	f88d 300f 	strb.w	r3, [sp, #15]
c0de771c:	ab09      	add	r3, sp, #36	@ 0x24
c0de771e:	ad08      	add	r5, sp, #32
c0de7720:	f10d 020f 	add.w	r2, sp, #15
c0de7724:	e9cd 5300 	strd	r5, r3, [sp]
c0de7728:	9202      	str	r2, [sp, #8]
c0de772a:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de772c:	ab0a      	add	r3, sp, #40	@ 0x28
c0de772e:	f000 faa5 	bl	c0de7c7c <getPairData>
c0de7732:	9808      	ldr	r0, [sp, #32]
c0de7734:	2800      	cmp	r0, #0
c0de7736:	bf12      	itee	ne
c0de7738:	2501      	movne	r5, #1
c0de773a:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de773e:	0045      	lsleq	r5, r0, #1
c0de7740:	e006      	b.n	c0de7750 <displayStreamingReviewPage+0x11c>
c0de7742:	eb09 0005 	add.w	r0, r9, r5
c0de7746:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de774a:	9109      	str	r1, [sp, #36]	@ 0x24
c0de774c:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de774e:	2500      	movs	r5, #0
c0de7750:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de7752:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de7756:	4e17      	ldr	r6, [pc, #92]	@ (c0de77b4 <displayStreamingReviewPage+0x180>)
c0de7758:	b2e8      	uxtb	r0, r5
c0de775a:	2500      	movs	r5, #0
c0de775c:	9002      	str	r0, [sp, #8]
c0de775e:	4620      	mov	r0, r4
c0de7760:	447e      	add	r6, pc
c0de7762:	f000 fff7 	bl	c0de8754 <OUTLINED_FUNCTION_7>
c0de7766:	b00c      	add	sp, #48	@ 0x30
c0de7768:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de776c:	f7fd be8e 	b.w	c0de548c <nbgl_refresh>
c0de7770:	f040 0001 	orr.w	r0, r0, #1
c0de7774:	490c      	ldr	r1, [pc, #48]	@ (c0de77a8 <displayStreamingReviewPage+0x174>)
c0de7776:	2200      	movs	r2, #0
c0de7778:	4479      	add	r1, pc
c0de777a:	9104      	str	r1, [sp, #16]
c0de777c:	490b      	ldr	r1, [pc, #44]	@ (c0de77ac <displayStreamingReviewPage+0x178>)
c0de777e:	4479      	add	r1, pc
c0de7780:	9106      	str	r1, [sp, #24]
c0de7782:	2100      	movs	r1, #0
c0de7784:	9100      	str	r1, [sp, #0]
c0de7786:	490a      	ldr	r1, [pc, #40]	@ (c0de77b0 <displayStreamingReviewPage+0x17c>)
c0de7788:	ab04      	add	r3, sp, #16
c0de778a:	4479      	add	r1, pc
c0de778c:	f7ff fa1c 	bl	c0de6bc8 <nbgl_stepDrawCenteredInfo>
c0de7790:	eb09 0405 	add.w	r4, r9, r5
c0de7794:	f7fd fe7a 	bl	c0de548c <nbgl_refresh>
c0de7798:	2001      	movs	r0, #1
c0de779a:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de779e:	b00c      	add	sp, #48	@ 0x30
c0de77a0:	bd70      	pop	{r4, r5, r6, pc}
c0de77a2:	bf00      	nop
c0de77a4:	0000283c 	.word	0x0000283c
c0de77a8:	00003e8e 	.word	0x00003e8e
c0de77ac:	00003cc0 	.word	0x00003cc0
c0de77b0:	00000ea3 	.word	0x00000ea3
c0de77b4:	00000f3d 	.word	0x00000f3d

c0de77b8 <nbgl_useCaseChoice>:
c0de77b8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de77bc:	4607      	mov	r7, r0
c0de77be:	480b      	ldr	r0, [pc, #44]	@ (c0de77ec <nbgl_useCaseChoice+0x34>)
c0de77c0:	f000 ffa6 	bl	c0de8710 <OUTLINED_FUNCTION_0>
c0de77c4:	9807      	ldr	r0, [sp, #28]
c0de77c6:	64e0      	str	r0, [r4, #76]	@ 0x4c
c0de77c8:	9806      	ldr	r0, [sp, #24]
c0de77ca:	e9c4 5810 	strd	r5, r8, [r4, #64]	@ 0x40
c0de77ce:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de77d2:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de77d4:	2008      	movs	r0, #8
c0de77d6:	f884 0028 	strb.w	r0, [r4, #40]	@ 0x28
c0de77da:	2004      	movs	r0, #4
c0de77dc:	f884 0030 	strb.w	r0, [r4, #48]	@ 0x30
c0de77e0:	2000      	movs	r0, #0
c0de77e2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de77e6:	f000 b803 	b.w	c0de77f0 <displayChoicePage>
c0de77ea:	bf00      	nop
c0de77ec:	0000283c 	.word	0x0000283c

c0de77f0 <displayChoicePage>:
c0de77f0:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de77f2:	4b28      	ldr	r3, [pc, #160]	@ (c0de7894 <displayChoicePage+0xa4>)
c0de77f4:	2200      	movs	r2, #0
c0de77f6:	eb09 0103 	add.w	r1, r9, r3
c0de77fa:	634a      	str	r2, [r1, #52]	@ 0x34
c0de77fc:	f891 1031 	ldrb.w	r1, [r1, #49]	@ 0x31
c0de7800:	b179      	cbz	r1, c0de7822 <displayChoicePage+0x32>
c0de7802:	2902      	cmp	r1, #2
c0de7804:	d021      	beq.n	c0de784a <displayChoicePage+0x5a>
c0de7806:	2901      	cmp	r1, #1
c0de7808:	d10f      	bne.n	c0de782a <displayChoicePage+0x3a>
c0de780a:	eb09 0103 	add.w	r1, r9, r3
c0de780e:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de7810:	b1a1      	cbz	r1, c0de783c <displayChoicePage+0x4c>
c0de7812:	eb09 0203 	add.w	r2, r9, r3
c0de7816:	6c12      	ldr	r2, [r2, #64]	@ 0x40
c0de7818:	b182      	cbz	r2, c0de783c <displayChoicePage+0x4c>
c0de781a:	eb09 0103 	add.w	r1, r9, r3
c0de781e:	6bca      	ldr	r2, [r1, #60]	@ 0x3c
c0de7820:	e029      	b.n	c0de7876 <displayChoicePage+0x86>
c0de7822:	eb09 0103 	add.w	r1, r9, r3
c0de7826:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de7828:	e01d      	b.n	c0de7866 <displayChoicePage+0x76>
c0de782a:	4a1d      	ldr	r2, [pc, #116]	@ (c0de78a0 <displayChoicePage+0xb0>)
c0de782c:	eb09 0103 	add.w	r1, r9, r3
c0de7830:	447a      	add	r2, pc
c0de7832:	634a      	str	r2, [r1, #52]	@ 0x34
c0de7834:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de7836:	491b      	ldr	r1, [pc, #108]	@ (c0de78a4 <displayChoicePage+0xb4>)
c0de7838:	4479      	add	r1, pc
c0de783a:	e018      	b.n	c0de786e <displayChoicePage+0x7e>
c0de783c:	0702      	lsls	r2, r0, #28
c0de783e:	d40d      	bmi.n	c0de785c <displayChoicePage+0x6c>
c0de7840:	eb09 0103 	add.w	r1, r9, r3
c0de7844:	2202      	movs	r2, #2
c0de7846:	f881 2031 	strb.w	r2, [r1, #49]	@ 0x31
c0de784a:	4a13      	ldr	r2, [pc, #76]	@ (c0de7898 <displayChoicePage+0xa8>)
c0de784c:	eb09 0103 	add.w	r1, r9, r3
c0de7850:	447a      	add	r2, pc
c0de7852:	634a      	str	r2, [r1, #52]	@ 0x34
c0de7854:	6c4a      	ldr	r2, [r1, #68]	@ 0x44
c0de7856:	4911      	ldr	r1, [pc, #68]	@ (c0de789c <displayChoicePage+0xac>)
c0de7858:	4479      	add	r1, pc
c0de785a:	e008      	b.n	c0de786e <displayChoicePage+0x7e>
c0de785c:	eb09 0203 	add.w	r2, r9, r3
c0de7860:	2400      	movs	r4, #0
c0de7862:	f882 4031 	strb.w	r4, [r2, #49]	@ 0x31
c0de7866:	eb09 0203 	add.w	r2, r9, r3
c0de786a:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
c0de786c:	b109      	cbz	r1, c0de7872 <displayChoicePage+0x82>
c0de786e:	2300      	movs	r3, #0
c0de7870:	e003      	b.n	c0de787a <displayChoicePage+0x8a>
c0de7872:	eb09 0103 	add.w	r1, r9, r3
c0de7876:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
c0de7878:	2100      	movs	r1, #0
c0de787a:	4d0b      	ldr	r5, [pc, #44]	@ (c0de78a8 <displayChoicePage+0xb8>)
c0de787c:	2400      	movs	r4, #0
c0de787e:	9402      	str	r4, [sp, #8]
c0de7880:	447d      	add	r5, pc
c0de7882:	e9cd 5400 	strd	r5, r4, [sp]
c0de7886:	f7ff fdb9 	bl	c0de73fc <drawStep>
c0de788a:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de788e:	f7fd bdfd 	b.w	c0de548c <nbgl_refresh>
c0de7892:	bf00      	nop
c0de7894:	0000283c 	.word	0x0000283c
c0de7898:	00000e79 	.word	0x00000e79
c0de789c:	00003cf7 	.word	0x00003cf7
c0de78a0:	00000ead 	.word	0x00000ead
c0de78a4:	00003cbe 	.word	0x00003cbe
c0de78a8:	00000e71 	.word	0x00000e71

c0de78ac <getContentAtIdx>:
c0de78ac:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de78ae:	b087      	sub	sp, #28
c0de78b0:	460d      	mov	r5, r1
c0de78b2:	4606      	mov	r6, r0
c0de78b4:	a801      	add	r0, sp, #4
c0de78b6:	2118      	movs	r1, #24
c0de78b8:	4614      	mov	r4, r2
c0de78ba:	f003 fd2f 	bl	c0deb31c <__aeabi_memclr>
c0de78be:	2d00      	cmp	r5, #0
c0de78c0:	d428      	bmi.n	c0de7914 <getContentAtIdx+0x68>
c0de78c2:	7a30      	ldrb	r0, [r6, #8]
c0de78c4:	4285      	cmp	r5, r0
c0de78c6:	da25      	bge.n	c0de7914 <getContentAtIdx+0x68>
c0de78c8:	7830      	ldrb	r0, [r6, #0]
c0de78ca:	b338      	cbz	r0, c0de791c <getContentAtIdx+0x70>
c0de78cc:	b314      	cbz	r4, c0de7914 <getContentAtIdx+0x68>
c0de78ce:	4620      	mov	r0, r4
c0de78d0:	2134      	movs	r1, #52	@ 0x34
c0de78d2:	f003 fd23 	bl	c0deb31c <__aeabi_memclr>
c0de78d6:	4821      	ldr	r0, [pc, #132]	@ (c0de795c <getContentAtIdx+0xb0>)
c0de78d8:	4448      	add	r0, r9
c0de78da:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de78dc:	b33a      	cbz	r2, c0de792e <getContentAtIdx+0x82>
c0de78de:	b2e8      	uxtb	r0, r5
c0de78e0:	ad01      	add	r5, sp, #4
c0de78e2:	4629      	mov	r1, r5
c0de78e4:	4790      	blx	r2
c0de78e6:	b1a8      	cbz	r0, c0de7914 <getContentAtIdx+0x68>
c0de78e8:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de78ec:	280a      	cmp	r0, #10
c0de78ee:	7020      	strb	r0, [r4, #0]
c0de78f0:	d027      	beq.n	c0de7942 <getContentAtIdx+0x96>
c0de78f2:	2803      	cmp	r0, #3
c0de78f4:	d008      	beq.n	c0de7908 <getContentAtIdx+0x5c>
c0de78f6:	2804      	cmp	r0, #4
c0de78f8:	d029      	beq.n	c0de794e <getContentAtIdx+0xa2>
c0de78fa:	2807      	cmp	r0, #7
c0de78fc:	d01c      	beq.n	c0de7938 <getContentAtIdx+0x8c>
c0de78fe:	2808      	cmp	r0, #8
c0de7900:	d002      	beq.n	c0de7908 <getContentAtIdx+0x5c>
c0de7902:	2809      	cmp	r0, #9
c0de7904:	d018      	beq.n	c0de7938 <getContentAtIdx+0x8c>
c0de7906:	b928      	cbnz	r0, c0de7914 <getContentAtIdx+0x68>
c0de7908:	1d28      	adds	r0, r5, #4
c0de790a:	1d21      	adds	r1, r4, #4
c0de790c:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de7910:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de7912:	e000      	b.n	c0de7916 <getContentAtIdx+0x6a>
c0de7914:	2400      	movs	r4, #0
c0de7916:	4620      	mov	r0, r4
c0de7918:	b007      	add	sp, #28
c0de791a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de791c:	6870      	ldr	r0, [r6, #4]
c0de791e:	2134      	movs	r1, #52	@ 0x34
c0de7920:	fb05 0001 	mla	r0, r5, r1, r0
c0de7924:	b007      	add	sp, #28
c0de7926:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de792a:	f003 b927 	b.w	c0deab7c <pic>
c0de792e:	6872      	ldr	r2, [r6, #4]
c0de7930:	b2e8      	uxtb	r0, r5
c0de7932:	4621      	mov	r1, r4
c0de7934:	4790      	blx	r2
c0de7936:	e7ee      	b.n	c0de7916 <getContentAtIdx+0x6a>
c0de7938:	9802      	ldr	r0, [sp, #8]
c0de793a:	9903      	ldr	r1, [sp, #12]
c0de793c:	6060      	str	r0, [r4, #4]
c0de793e:	60a1      	str	r1, [r4, #8]
c0de7940:	e7e9      	b.n	c0de7916 <getContentAtIdx+0x6a>
c0de7942:	1d28      	adds	r0, r5, #4
c0de7944:	1d21      	adds	r1, r4, #4
c0de7946:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de794a:	c12c      	stmia	r1!, {r2, r3, r5}
c0de794c:	e7e3      	b.n	c0de7916 <getContentAtIdx+0x6a>
c0de794e:	1d28      	adds	r0, r5, #4
c0de7950:	1d21      	adds	r1, r4, #4
c0de7952:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de7956:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de7958:	e7dd      	b.n	c0de7916 <getContentAtIdx+0x6a>
c0de795a:	bf00      	nop
c0de795c:	0000283c 	.word	0x0000283c

c0de7960 <getContentNbElement>:
c0de7960:	7802      	ldrb	r2, [r0, #0]
c0de7962:	2101      	movs	r1, #1
c0de7964:	b1a2      	cbz	r2, c0de7990 <getContentNbElement+0x30>
c0de7966:	2a03      	cmp	r2, #3
c0de7968:	d012      	beq.n	c0de7990 <getContentNbElement+0x30>
c0de796a:	2a0a      	cmp	r2, #10
c0de796c:	d007      	beq.n	c0de797e <getContentNbElement+0x1e>
c0de796e:	2a07      	cmp	r2, #7
c0de7970:	d007      	beq.n	c0de7982 <getContentNbElement+0x22>
c0de7972:	2a08      	cmp	r2, #8
c0de7974:	d007      	beq.n	c0de7986 <getContentNbElement+0x26>
c0de7976:	2a09      	cmp	r2, #9
c0de7978:	d007      	beq.n	c0de798a <getContentNbElement+0x2a>
c0de797a:	2a04      	cmp	r2, #4
c0de797c:	d107      	bne.n	c0de798e <getContentNbElement+0x2e>
c0de797e:	7b01      	ldrb	r1, [r0, #12]
c0de7980:	e006      	b.n	c0de7990 <getContentNbElement+0x30>
c0de7982:	7a01      	ldrb	r1, [r0, #8]
c0de7984:	e004      	b.n	c0de7990 <getContentNbElement+0x30>
c0de7986:	7c01      	ldrb	r1, [r0, #16]
c0de7988:	e002      	b.n	c0de7990 <getContentNbElement+0x30>
c0de798a:	7a41      	ldrb	r1, [r0, #9]
c0de798c:	e000      	b.n	c0de7990 <getContentNbElement+0x30>
c0de798e:	2100      	movs	r1, #0
c0de7990:	4608      	mov	r0, r1
c0de7992:	4770      	bx	lr

c0de7994 <displayContent>:
c0de7994:	b570      	push	{r4, r5, r6, lr}
c0de7996:	b08a      	sub	sp, #40	@ 0x28
c0de7998:	460d      	mov	r5, r1
c0de799a:	4604      	mov	r4, r0
c0de799c:	a804      	add	r0, sp, #16
c0de799e:	2118      	movs	r1, #24
c0de79a0:	f003 fcbc 	bl	c0deb31c <__aeabi_memclr>
c0de79a4:	4820      	ldr	r0, [pc, #128]	@ (c0de7a28 <displayContent+0x94>)
c0de79a6:	f000 febd 	bl	c0de8724 <OUTLINED_FUNCTION_2>
c0de79aa:	dd14      	ble.n	c0de79d6 <displayContent+0x42>
c0de79ac:	a904      	add	r1, sp, #16
c0de79ae:	4628      	mov	r0, r5
c0de79b0:	f000 f846 	bl	c0de7a40 <getContentPage>
c0de79b4:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de79b8:	b318      	cbz	r0, c0de7a02 <displayContent+0x6e>
c0de79ba:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de79be:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de79c2:	481e      	ldr	r0, [pc, #120]	@ (c0de7a3c <displayContent+0xa8>)
c0de79c4:	4478      	add	r0, pc
c0de79c6:	2b00      	cmp	r3, #0
c0de79c8:	9000      	str	r0, [sp, #0]
c0de79ca:	4620      	mov	r0, r4
c0de79cc:	bf18      	it	ne
c0de79ce:	2301      	movne	r3, #1
c0de79d0:	f000 f8d8 	bl	c0de7b84 <drawSwitchStep>
c0de79d4:	e023      	b.n	c0de7a1e <displayContent+0x8a>
c0de79d6:	4448      	add	r0, r9
c0de79d8:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de79da:	6341      	str	r1, [r0, #52]	@ 0x34
c0de79dc:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de79de:	4a13      	ldr	r2, [pc, #76]	@ (c0de7a2c <displayContent+0x98>)
c0de79e0:	2900      	cmp	r1, #0
c0de79e2:	447a      	add	r2, pc
c0de79e4:	bf18      	it	ne
c0de79e6:	460a      	movne	r2, r1
c0de79e8:	9205      	str	r2, [sp, #20]
c0de79ea:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de79ee:	4910      	ldr	r1, [pc, #64]	@ (c0de7a30 <displayContent+0x9c>)
c0de79f0:	4a10      	ldr	r2, [pc, #64]	@ (c0de7a34 <displayContent+0xa0>)
c0de79f2:	2803      	cmp	r0, #3
c0de79f4:	447a      	add	r2, pc
c0de79f6:	4479      	add	r1, pc
c0de79f8:	bf08      	it	eq
c0de79fa:	460a      	moveq	r2, r1
c0de79fc:	9207      	str	r2, [sp, #28]
c0de79fe:	2000      	movs	r0, #0
c0de7a00:	e002      	b.n	c0de7a08 <displayContent+0x74>
c0de7a02:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de7a06:	0040      	lsls	r0, r0, #1
c0de7a08:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de7a0c:	9907      	ldr	r1, [sp, #28]
c0de7a0e:	4e0a      	ldr	r6, [pc, #40]	@ (c0de7a38 <displayContent+0xa4>)
c0de7a10:	b2c0      	uxtb	r0, r0
c0de7a12:	2500      	movs	r5, #0
c0de7a14:	9002      	str	r0, [sp, #8]
c0de7a16:	4620      	mov	r0, r4
c0de7a18:	447e      	add	r6, pc
c0de7a1a:	f000 fe9b 	bl	c0de8754 <OUTLINED_FUNCTION_7>
c0de7a1e:	f7fd fd35 	bl	c0de548c <nbgl_refresh>
c0de7a22:	b00a      	add	sp, #40	@ 0x28
c0de7a24:	bd70      	pop	{r4, r5, r6, pc}
c0de7a26:	bf00      	nop
c0de7a28:	0000283c 	.word	0x0000283c
c0de7a2c:	00003e67 	.word	0x00003e67
c0de7a30:	00003b00 	.word	0x00003b00
c0de7a34:	00003abc 	.word	0x00003abc
c0de7a38:	000001b9 	.word	0x000001b9
c0de7a3c:	0000020d 	.word	0x0000020d

c0de7a40 <getContentPage>:
c0de7a40:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7a42:	b091      	sub	sp, #68	@ 0x44
c0de7a44:	4606      	mov	r6, r0
c0de7a46:	2000      	movs	r0, #0
c0de7a48:	460c      	mov	r4, r1
c0de7a4a:	2134      	movs	r1, #52	@ 0x34
c0de7a4c:	f88d 0043 	strb.w	r0, [sp, #67]	@ 0x43
c0de7a50:	ad03      	add	r5, sp, #12
c0de7a52:	4628      	mov	r0, r5
c0de7a54:	f003 fc62 	bl	c0deb31c <__aeabi_memclr>
c0de7a58:	4f47      	ldr	r7, [pc, #284]	@ (c0de7b78 <getContentPage+0x138>)
c0de7a5a:	f10d 0143 	add.w	r1, sp, #67	@ 0x43
c0de7a5e:	462a      	mov	r2, r5
c0de7a60:	eb09 0007 	add.w	r0, r9, r7
c0de7a64:	f000 fe69 	bl	c0de873a <OUTLINED_FUNCTION_4>
c0de7a68:	2800      	cmp	r0, #0
c0de7a6a:	d07a      	beq.n	c0de7b62 <getContentPage+0x122>
c0de7a6c:	4605      	mov	r5, r0
c0de7a6e:	7800      	ldrb	r0, [r0, #0]
c0de7a70:	280a      	cmp	r0, #10
c0de7a72:	d011      	beq.n	c0de7a98 <getContentPage+0x58>
c0de7a74:	2803      	cmp	r0, #3
c0de7a76:	d02c      	beq.n	c0de7ad2 <getContentPage+0x92>
c0de7a78:	2804      	cmp	r0, #4
c0de7a7a:	d035      	beq.n	c0de7ae8 <getContentPage+0xa8>
c0de7a7c:	2807      	cmp	r0, #7
c0de7a7e:	d045      	beq.n	c0de7b0c <getContentPage+0xcc>
c0de7a80:	2808      	cmp	r0, #8
c0de7a82:	d060      	beq.n	c0de7b46 <getContentPage+0x106>
c0de7a84:	2809      	cmp	r0, #9
c0de7a86:	d007      	beq.n	c0de7a98 <getContentPage+0x58>
c0de7a88:	2800      	cmp	r0, #0
c0de7a8a:	d16a      	bne.n	c0de7b62 <getContentPage+0x122>
c0de7a8c:	6868      	ldr	r0, [r5, #4]
c0de7a8e:	f003 f875 	bl	c0deab7c <pic>
c0de7a92:	6060      	str	r0, [r4, #4]
c0de7a94:	68a8      	ldr	r0, [r5, #8]
c0de7a96:	e019      	b.n	c0de7acc <getContentPage+0x8c>
c0de7a98:	1d28      	adds	r0, r5, #4
c0de7a9a:	eb09 0607 	add.w	r6, r9, r7
c0de7a9e:	f003 f86d 	bl	c0deab7c <pic>
c0de7aa2:	6800      	ldr	r0, [r0, #0]
c0de7aa4:	f003 f86a 	bl	c0deab7c <pic>
c0de7aa8:	f896 1028 	ldrb.w	r1, [r6, #40]	@ 0x28
c0de7aac:	4605      	mov	r5, r0
c0de7aae:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de7ab0:	2910      	cmp	r1, #16
c0de7ab2:	d100      	bne.n	c0de7ab6 <getContentPage+0x76>
c0de7ab4:	b918      	cbnz	r0, c0de7abe <getContentPage+0x7e>
c0de7ab6:	290f      	cmp	r1, #15
c0de7ab8:	d155      	bne.n	c0de7b66 <getContentPage+0x126>
c0de7aba:	2800      	cmp	r0, #0
c0de7abc:	d053      	beq.n	c0de7b66 <getContentPage+0x126>
c0de7abe:	f003 f85d 	bl	c0deab7c <pic>
c0de7ac2:	6060      	str	r0, [r4, #4]
c0de7ac4:	f89d 0043 	ldrb.w	r0, [sp, #67]	@ 0x43
c0de7ac8:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de7acc:	f003 f856 	bl	c0deab7c <pic>
c0de7ad0:	e046      	b.n	c0de7b60 <getContentPage+0x120>
c0de7ad2:	68a8      	ldr	r0, [r5, #8]
c0de7ad4:	4e29      	ldr	r6, [pc, #164]	@ (c0de7b7c <getContentPage+0x13c>)
c0de7ad6:	447e      	add	r6, pc
c0de7ad8:	47b0      	blx	r6
c0de7ada:	60e0      	str	r0, [r4, #12]
c0de7adc:	6868      	ldr	r0, [r5, #4]
c0de7ade:	47b0      	blx	r6
c0de7ae0:	6060      	str	r0, [r4, #4]
c0de7ae2:	68e8      	ldr	r0, [r5, #12]
c0de7ae4:	47b0      	blx	r6
c0de7ae6:	e03b      	b.n	c0de7b60 <getContentPage+0x120>
c0de7ae8:	f104 0015 	add.w	r0, r4, #21
c0de7aec:	f89d 1043 	ldrb.w	r1, [sp, #67]	@ 0x43
c0de7af0:	f104 020c 	add.w	r2, r4, #12
c0de7af4:	f104 0310 	add.w	r3, r4, #16
c0de7af8:	e9cd 3200 	strd	r3, r2, [sp]
c0de7afc:	9002      	str	r0, [sp, #8]
c0de7afe:	1d28      	adds	r0, r5, #4
c0de7b00:	1d22      	adds	r2, r4, #4
c0de7b02:	f104 0308 	add.w	r3, r4, #8
c0de7b06:	f000 f8b9 	bl	c0de7c7c <getPairData>
c0de7b0a:	e02a      	b.n	c0de7b62 <getContentPage+0x122>
c0de7b0c:	2001      	movs	r0, #1
c0de7b0e:	444f      	add	r7, r9
c0de7b10:	7020      	strb	r0, [r4, #0]
c0de7b12:	6868      	ldr	r0, [r5, #4]
c0de7b14:	f003 f832 	bl	c0deab7c <pic>
c0de7b18:	4919      	ldr	r1, [pc, #100]	@ (c0de7b80 <getContentPage+0x140>)
c0de7b1a:	4479      	add	r1, pc
c0de7b1c:	6379      	str	r1, [r7, #52]	@ 0x34
c0de7b1e:	f89d 1043 	ldrb.w	r1, [sp, #67]	@ 0x43
c0de7b22:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de7b26:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de7b2a:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de7b2e:	6062      	str	r2, [r4, #4]
c0de7b30:	6841      	ldr	r1, [r0, #4]
c0de7b32:	60a1      	str	r1, [r4, #8]
c0de7b34:	7a00      	ldrb	r0, [r0, #8]
c0de7b36:	1e41      	subs	r1, r0, #1
c0de7b38:	bf18      	it	ne
c0de7b3a:	2101      	movne	r1, #1
c0de7b3c:	2e00      	cmp	r6, #0
c0de7b3e:	bf08      	it	eq
c0de7b40:	4601      	moveq	r1, r0
c0de7b42:	7521      	strb	r1, [r4, #20]
c0de7b44:	e00d      	b.n	c0de7b62 <getContentPage+0x122>
c0de7b46:	6868      	ldr	r0, [r5, #4]
c0de7b48:	f003 f818 	bl	c0deab7c <pic>
c0de7b4c:	f89d 6043 	ldrb.w	r6, [sp, #67]	@ 0x43
c0de7b50:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de7b54:	6060      	str	r0, [r4, #4]
c0de7b56:	68a8      	ldr	r0, [r5, #8]
c0de7b58:	f003 f810 	bl	c0deab7c <pic>
c0de7b5c:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de7b60:	60a0      	str	r0, [r4, #8]
c0de7b62:	b011      	add	sp, #68	@ 0x44
c0de7b64:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de7b66:	f89d 0043 	ldrb.w	r0, [sp, #67]	@ 0x43
c0de7b6a:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de7b6e:	f003 f805 	bl	c0deab7c <pic>
c0de7b72:	6060      	str	r0, [r4, #4]
c0de7b74:	e7f5      	b.n	c0de7b62 <getContentPage+0x122>
c0de7b76:	bf00      	nop
c0de7b78:	0000283c 	.word	0x0000283c
c0de7b7c:	000030a3 	.word	0x000030a3
c0de7b80:	000001a7 	.word	0x000001a7

c0de7b84 <drawSwitchStep>:
c0de7b84:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7b86:	b085      	sub	sp, #20
c0de7b88:	4c11      	ldr	r4, [pc, #68]	@ (c0de7bd0 <drawSwitchStep+0x4c>)
c0de7b8a:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de7b8e:	2600      	movs	r6, #0
c0de7b90:	eb09 0504 	add.w	r5, r9, r4
c0de7b94:	f895 7030 	ldrb.w	r7, [r5, #48]	@ 0x30
c0de7b98:	2500      	movs	r5, #0
c0de7b9a:	2f02      	cmp	r7, #2
c0de7b9c:	d30a      	bcc.n	c0de7bb4 <drawSwitchStep+0x30>
c0de7b9e:	444c      	add	r4, r9
c0de7ba0:	f994 4031 	ldrsb.w	r4, [r4, #49]	@ 0x31
c0de7ba4:	b12c      	cbz	r4, c0de7bb2 <drawSwitchStep+0x2e>
c0de7ba6:	3f01      	subs	r7, #1
c0de7ba8:	2603      	movs	r6, #3
c0de7baa:	42a7      	cmp	r7, r4
c0de7bac:	bf08      	it	eq
c0de7bae:	2602      	moveq	r6, #2
c0de7bb0:	e000      	b.n	c0de7bb4 <drawSwitchStep+0x30>
c0de7bb2:	2601      	movs	r6, #1
c0de7bb4:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de7bb8:	f88d 3010 	strb.w	r3, [sp, #16]
c0de7bbc:	9500      	str	r5, [sp, #0]
c0de7bbe:	4330      	orrs	r0, r6
c0de7bc0:	ab02      	add	r3, sp, #8
c0de7bc2:	4661      	mov	r1, ip
c0de7bc4:	2200      	movs	r2, #0
c0de7bc6:	f7ff f8e7 	bl	c0de6d98 <nbgl_stepDrawSwitch>
c0de7bca:	b005      	add	sp, #20
c0de7bcc:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de7bce:	bf00      	nop
c0de7bd0:	0000283c 	.word	0x0000283c

c0de7bd4 <contentCallback>:
c0de7bd4:	b5e0      	push	{r5, r6, r7, lr}
c0de7bd6:	4608      	mov	r0, r1
c0de7bd8:	f10d 0107 	add.w	r1, sp, #7
c0de7bdc:	f000 f928 	bl	c0de7e30 <buttonGenericCallback>
c0de7be0:	b130      	cbz	r0, c0de7bf0 <contentCallback+0x1c>
c0de7be2:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de7be6:	2100      	movs	r1, #0
c0de7be8:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de7bec:	f7ff bed2 	b.w	c0de7994 <displayContent>
c0de7bf0:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de7bf4 <getContentElemAtIdx>:
c0de7bf4:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de7bf8:	4c1e      	ldr	r4, [pc, #120]	@ (c0de7c74 <getContentElemAtIdx+0x80>)
c0de7bfa:	4606      	mov	r6, r0
c0de7bfc:	2700      	movs	r7, #0
c0de7bfe:	eb09 0004 	add.w	r0, r9, r4
c0de7c02:	f890 3028 	ldrb.w	r3, [r0, #40]	@ 0x28
c0de7c06:	2b10      	cmp	r3, #16
c0de7c08:	d830      	bhi.n	c0de7c6c <getContentElemAtIdx+0x78>
c0de7c0a:	4693      	mov	fp, r2
c0de7c0c:	2201      	movs	r2, #1
c0de7c0e:	9101      	str	r1, [sp, #4]
c0de7c10:	fa02 f303 	lsl.w	r3, r2, r3
c0de7c14:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de7c18:	d004      	beq.n	c0de7c24 <getContentElemAtIdx+0x30>
c0de7c1a:	eb09 0004 	add.w	r0, r9, r4
c0de7c1e:	46a2      	mov	sl, r4
c0de7c20:	6c44      	ldr	r4, [r0, #68]	@ 0x44
c0de7c22:	e005      	b.n	c0de7c30 <getContentElemAtIdx+0x3c>
c0de7c24:	4a14      	ldr	r2, [pc, #80]	@ (c0de7c78 <getContentElemAtIdx+0x84>)
c0de7c26:	4213      	tst	r3, r2
c0de7c28:	d020      	beq.n	c0de7c6c <getContentElemAtIdx+0x78>
c0de7c2a:	46a2      	mov	sl, r4
c0de7c2c:	f100 043c 	add.w	r4, r0, #60	@ 0x3c
c0de7c30:	2700      	movs	r7, #0
c0de7c32:	2000      	movs	r0, #0
c0de7c34:	f04f 0800 	mov.w	r8, #0
c0de7c38:	4605      	mov	r5, r0
c0de7c3a:	7a20      	ldrb	r0, [r4, #8]
c0de7c3c:	4580      	cmp	r8, r0
c0de7c3e:	d215      	bcs.n	c0de7c6c <getContentElemAtIdx+0x78>
c0de7c40:	fa4f f188 	sxtb.w	r1, r8
c0de7c44:	4620      	mov	r0, r4
c0de7c46:	465a      	mov	r2, fp
c0de7c48:	f7ff fe30 	bl	c0de78ac <getContentAtIdx>
c0de7c4c:	4607      	mov	r7, r0
c0de7c4e:	f7ff fe87 	bl	c0de7960 <getContentNbElement>
c0de7c52:	b2e9      	uxtb	r1, r5
c0de7c54:	f108 0801 	add.w	r8, r8, #1
c0de7c58:	4408      	add	r0, r1
c0de7c5a:	42b0      	cmp	r0, r6
c0de7c5c:	d9ec      	bls.n	c0de7c38 <getContentElemAtIdx+0x44>
c0de7c5e:	eb09 000a 	add.w	r0, r9, sl
c0de7c62:	9901      	ldr	r1, [sp, #4]
c0de7c64:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de7c68:	1b40      	subs	r0, r0, r5
c0de7c6a:	7008      	strb	r0, [r1, #0]
c0de7c6c:	4638      	mov	r0, r7
c0de7c6e:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de7c72:	bf00      	nop
c0de7c74:	0000283c 	.word	0x0000283c
c0de7c78:	00010008 	.word	0x00010008

c0de7c7c <getPairData>:
c0de7c7c:	b5b0      	push	{r4, r5, r7, lr}
c0de7c7e:	4615      	mov	r5, r2
c0de7c80:	6802      	ldr	r2, [r0, #0]
c0de7c82:	461c      	mov	r4, r3
c0de7c84:	b112      	cbz	r2, c0de7c8c <getPairData+0x10>
c0de7c86:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de7c8a:	e002      	b.n	c0de7c92 <getPairData+0x16>
c0de7c8c:	6842      	ldr	r2, [r0, #4]
c0de7c8e:	4608      	mov	r0, r1
c0de7c90:	4790      	blx	r2
c0de7c92:	f002 ff73 	bl	c0deab7c <pic>
c0de7c96:	6802      	ldr	r2, [r0, #0]
c0de7c98:	9904      	ldr	r1, [sp, #16]
c0de7c9a:	602a      	str	r2, [r5, #0]
c0de7c9c:	6842      	ldr	r2, [r0, #4]
c0de7c9e:	6022      	str	r2, [r4, #0]
c0de7ca0:	7b02      	ldrb	r2, [r0, #12]
c0de7ca2:	0753      	lsls	r3, r2, #29
c0de7ca4:	d403      	bmi.n	c0de7cae <getPairData+0x32>
c0de7ca6:	0792      	lsls	r2, r2, #30
c0de7ca8:	d404      	bmi.n	c0de7cb4 <getPairData+0x38>
c0de7caa:	2000      	movs	r0, #0
c0de7cac:	e000      	b.n	c0de7cb0 <getPairData+0x34>
c0de7cae:	6880      	ldr	r0, [r0, #8]
c0de7cb0:	6008      	str	r0, [r1, #0]
c0de7cb2:	bdb0      	pop	{r4, r5, r7, pc}
c0de7cb4:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de7cb8:	2301      	movs	r3, #1
c0de7cba:	700b      	strb	r3, [r1, #0]
c0de7cbc:	6880      	ldr	r0, [r0, #8]
c0de7cbe:	6010      	str	r0, [r2, #0]
c0de7cc0:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de7cc4 <onSwitchAction>:
c0de7cc4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de7cc6:	b08f      	sub	sp, #60	@ 0x3c
c0de7cc8:	ac02      	add	r4, sp, #8
c0de7cca:	2134      	movs	r1, #52	@ 0x34
c0de7ccc:	4620      	mov	r0, r4
c0de7cce:	f003 fb25 	bl	c0deb31c <__aeabi_memclr>
c0de7cd2:	4e26      	ldr	r6, [pc, #152]	@ (c0de7d6c <onSwitchAction+0xa8>)
c0de7cd4:	f10d 0107 	add.w	r1, sp, #7
c0de7cd8:	4622      	mov	r2, r4
c0de7cda:	eb09 0006 	add.w	r0, r9, r6
c0de7cde:	f000 fd2c 	bl	c0de873a <OUTLINED_FUNCTION_4>
c0de7ce2:	2800      	cmp	r0, #0
c0de7ce4:	d040      	beq.n	c0de7d68 <onSwitchAction+0xa4>
c0de7ce6:	4604      	mov	r4, r0
c0de7ce8:	7800      	ldrb	r0, [r0, #0]
c0de7cea:	2807      	cmp	r0, #7
c0de7cec:	d13c      	bne.n	c0de7d68 <onSwitchAction+0xa4>
c0de7cee:	6860      	ldr	r0, [r4, #4]
c0de7cf0:	eb09 0706 	add.w	r7, r9, r6
c0de7cf4:	f002 ff42 	bl	c0deab7c <pic>
c0de7cf8:	4605      	mov	r5, r0
c0de7cfa:	f897 0028 	ldrb.w	r0, [r7, #40]	@ 0x28
c0de7cfe:	f89d 7007 	ldrb.w	r7, [sp, #7]
c0de7d02:	2810      	cmp	r0, #16
c0de7d04:	d811      	bhi.n	c0de7d2a <onSwitchAction+0x66>
c0de7d06:	2101      	movs	r1, #1
c0de7d08:	fa01 f000 	lsl.w	r0, r1, r0
c0de7d0c:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de7d10:	d004      	beq.n	c0de7d1c <onSwitchAction+0x58>
c0de7d12:	2000      	movs	r0, #0
c0de7d14:	2101      	movs	r1, #1
c0de7d16:	f000 f82d 	bl	c0de7d74 <displaySettingsPage>
c0de7d1a:	e006      	b.n	c0de7d2a <onSwitchAction+0x66>
c0de7d1c:	4914      	ldr	r1, [pc, #80]	@ (c0de7d70 <onSwitchAction+0xac>)
c0de7d1e:	4208      	tst	r0, r1
c0de7d20:	d003      	beq.n	c0de7d2a <onSwitchAction+0x66>
c0de7d22:	2000      	movs	r0, #0
c0de7d24:	2101      	movs	r1, #1
c0de7d26:	f7ff fe35 	bl	c0de7994 <displayContent>
c0de7d2a:	6b20      	ldr	r0, [r4, #48]	@ 0x30
c0de7d2c:	b188      	cbz	r0, c0de7d52 <onSwitchAction+0x8e>
c0de7d2e:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de7d32:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de7d36:	f002 ff21 	bl	c0deab7c <pic>
c0de7d3a:	7a21      	ldrb	r1, [r4, #8]
c0de7d3c:	eb09 0206 	add.w	r2, r9, r6
c0de7d40:	4603      	mov	r3, r0
c0de7d42:	7a60      	ldrb	r0, [r4, #9]
c0de7d44:	3901      	subs	r1, #1
c0de7d46:	bf18      	it	ne
c0de7d48:	2101      	movne	r1, #1
c0de7d4a:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de7d4e:	4798      	blx	r3
c0de7d50:	e00a      	b.n	c0de7d68 <onSwitchAction+0xa4>
c0de7d52:	eb09 0006 	add.w	r0, r9, r6
c0de7d56:	6cc2      	ldr	r2, [r0, #76]	@ 0x4c
c0de7d58:	b132      	cbz	r2, c0de7d68 <onSwitchAction+0xa4>
c0de7d5a:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de7d5e:	2100      	movs	r1, #0
c0de7d60:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de7d64:	7a40      	ldrb	r0, [r0, #9]
c0de7d66:	4790      	blx	r2
c0de7d68:	b00f      	add	sp, #60	@ 0x3c
c0de7d6a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de7d6c:	0000283c 	.word	0x0000283c
c0de7d70:	00010008 	.word	0x00010008

c0de7d74 <displaySettingsPage>:
c0de7d74:	b5b0      	push	{r4, r5, r7, lr}
c0de7d76:	b08a      	sub	sp, #40	@ 0x28
c0de7d78:	460d      	mov	r5, r1
c0de7d7a:	4604      	mov	r4, r0
c0de7d7c:	a804      	add	r0, sp, #16
c0de7d7e:	2118      	movs	r1, #24
c0de7d80:	f003 facc 	bl	c0deb31c <__aeabi_memclr>
c0de7d84:	481c      	ldr	r0, [pc, #112]	@ (c0de7df8 <displaySettingsPage+0x84>)
c0de7d86:	f000 fccd 	bl	c0de8724 <OUTLINED_FUNCTION_2>
c0de7d8a:	dd14      	ble.n	c0de7db6 <displaySettingsPage+0x42>
c0de7d8c:	a904      	add	r1, sp, #16
c0de7d8e:	4628      	mov	r0, r5
c0de7d90:	f7ff fe56 	bl	c0de7a40 <getContentPage>
c0de7d94:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de7d98:	b1e8      	cbz	r0, c0de7dd6 <displaySettingsPage+0x62>
c0de7d9a:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de7d9e:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de7da2:	481a      	ldr	r0, [pc, #104]	@ (c0de7e0c <displaySettingsPage+0x98>)
c0de7da4:	4478      	add	r0, pc
c0de7da6:	2b00      	cmp	r3, #0
c0de7da8:	9000      	str	r0, [sp, #0]
c0de7daa:	4620      	mov	r0, r4
c0de7dac:	bf18      	it	ne
c0de7dae:	2301      	movne	r3, #1
c0de7db0:	f7ff fee8 	bl	c0de7b84 <drawSwitchStep>
c0de7db4:	e01b      	b.n	c0de7dee <displaySettingsPage+0x7a>
c0de7db6:	4448      	add	r0, r9
c0de7db8:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de7dbc:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de7dbe:	4b0f      	ldr	r3, [pc, #60]	@ (c0de7dfc <displaySettingsPage+0x88>)
c0de7dc0:	447b      	add	r3, pc
c0de7dc2:	290f      	cmp	r1, #15
c0de7dc4:	bf08      	it	eq
c0de7dc6:	4613      	moveq	r3, r2
c0de7dc8:	6343      	str	r3, [r0, #52]	@ 0x34
c0de7dca:	480d      	ldr	r0, [pc, #52]	@ (c0de7e00 <displaySettingsPage+0x8c>)
c0de7dcc:	4478      	add	r0, pc
c0de7dce:	9005      	str	r0, [sp, #20]
c0de7dd0:	480c      	ldr	r0, [pc, #48]	@ (c0de7e04 <displaySettingsPage+0x90>)
c0de7dd2:	4478      	add	r0, pc
c0de7dd4:	9007      	str	r0, [sp, #28]
c0de7dd6:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de7dda:	9907      	ldr	r1, [sp, #28]
c0de7ddc:	4d0a      	ldr	r5, [pc, #40]	@ (c0de7e08 <displaySettingsPage+0x94>)
c0de7dde:	2000      	movs	r0, #0
c0de7de0:	9002      	str	r0, [sp, #8]
c0de7de2:	447d      	add	r5, pc
c0de7de4:	e9cd 5000 	strd	r5, r0, [sp]
c0de7de8:	4620      	mov	r0, r4
c0de7dea:	f7ff fb07 	bl	c0de73fc <drawStep>
c0de7dee:	f7fd fb4d 	bl	c0de548c <nbgl_refresh>
c0de7df2:	b00a      	add	sp, #40	@ 0x28
c0de7df4:	bdb0      	pop	{r4, r5, r7, pc}
c0de7df6:	bf00      	nop
c0de7df8:	0000283c 	.word	0x0000283c
c0de7dfc:	fffff29d 	.word	0xfffff29d
c0de7e00:	00003a7d 	.word	0x00003a7d
c0de7e04:	000036de 	.word	0x000036de
c0de7e08:	0000002b 	.word	0x0000002b
c0de7e0c:	00000069 	.word	0x00000069

c0de7e10 <settingsCallback>:
c0de7e10:	b5e0      	push	{r5, r6, r7, lr}
c0de7e12:	4608      	mov	r0, r1
c0de7e14:	f10d 0107 	add.w	r1, sp, #7
c0de7e18:	f000 f80a 	bl	c0de7e30 <buttonGenericCallback>
c0de7e1c:	b130      	cbz	r0, c0de7e2c <settingsCallback+0x1c>
c0de7e1e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de7e22:	2100      	movs	r1, #0
c0de7e24:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de7e28:	f7ff bfa4 	b.w	c0de7d74 <displaySettingsPage>
c0de7e2c:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de7e30 <buttonGenericCallback>:
c0de7e30:	b5b0      	push	{r4, r5, r7, lr}
c0de7e32:	b08e      	sub	sp, #56	@ 0x38
c0de7e34:	460c      	mov	r4, r1
c0de7e36:	4605      	mov	r5, r0
c0de7e38:	4668      	mov	r0, sp
c0de7e3a:	2134      	movs	r1, #52	@ 0x34
c0de7e3c:	f003 fa6e 	bl	c0deb31c <__aeabi_memclr>
c0de7e40:	2d04      	cmp	r5, #4
c0de7e42:	d00d      	beq.n	c0de7e60 <buttonGenericCallback+0x30>
c0de7e44:	2d01      	cmp	r5, #1
c0de7e46:	d012      	beq.n	c0de7e6e <buttonGenericCallback+0x3e>
c0de7e48:	2d00      	cmp	r5, #0
c0de7e4a:	d17a      	bne.n	c0de7f42 <buttonGenericCallback+0x112>
c0de7e4c:	483e      	ldr	r0, [pc, #248]	@ (c0de7f48 <buttonGenericCallback+0x118>)
c0de7e4e:	eb09 0100 	add.w	r1, r9, r0
c0de7e52:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de7e56:	2901      	cmp	r1, #1
c0de7e58:	db1d      	blt.n	c0de7e96 <buttonGenericCallback+0x66>
c0de7e5a:	3901      	subs	r1, #1
c0de7e5c:	2008      	movs	r0, #8
c0de7e5e:	e013      	b.n	c0de7e88 <buttonGenericCallback+0x58>
c0de7e60:	4c39      	ldr	r4, [pc, #228]	@ (c0de7f48 <buttonGenericCallback+0x118>)
c0de7e62:	eb09 0004 	add.w	r0, r9, r4
c0de7e66:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de7e68:	b338      	cbz	r0, c0de7eba <buttonGenericCallback+0x8a>
c0de7e6a:	4780      	blx	r0
c0de7e6c:	e069      	b.n	c0de7f42 <buttonGenericCallback+0x112>
c0de7e6e:	4836      	ldr	r0, [pc, #216]	@ (c0de7f48 <buttonGenericCallback+0x118>)
c0de7e70:	eb09 0100 	add.w	r1, r9, r0
c0de7e74:	f991 0031 	ldrsb.w	r0, [r1, #49]	@ 0x31
c0de7e78:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de7e7c:	3901      	subs	r1, #1
c0de7e7e:	4281      	cmp	r1, r0
c0de7e80:	dd5f      	ble.n	c0de7f42 <buttonGenericCallback+0x112>
c0de7e82:	b2c0      	uxtb	r0, r0
c0de7e84:	1c41      	adds	r1, r0, #1
c0de7e86:	2000      	movs	r0, #0
c0de7e88:	4a2f      	ldr	r2, [pc, #188]	@ (c0de7f48 <buttonGenericCallback+0x118>)
c0de7e8a:	444a      	add	r2, r9
c0de7e8c:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de7e90:	7020      	strb	r0, [r4, #0]
c0de7e92:	2001      	movs	r0, #1
c0de7e94:	e056      	b.n	c0de7f44 <buttonGenericCallback+0x114>
c0de7e96:	eb09 0100 	add.w	r1, r9, r0
c0de7e9a:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de7e9e:	2906      	cmp	r1, #6
c0de7ea0:	d14f      	bne.n	c0de7f42 <buttonGenericCallback+0x112>
c0de7ea2:	eb09 0100 	add.w	r1, r9, r0
c0de7ea6:	6d49      	ldr	r1, [r1, #84]	@ 0x54
c0de7ea8:	2900      	cmp	r1, #0
c0de7eaa:	d04a      	beq.n	c0de7f42 <buttonGenericCallback+0x112>
c0de7eac:	4448      	add	r0, r9
c0de7eae:	f890 0058 	ldrb.w	r0, [r0, #88]	@ 0x58
c0de7eb2:	2801      	cmp	r0, #1
c0de7eb4:	d045      	beq.n	c0de7f42 <buttonGenericCallback+0x112>
c0de7eb6:	2008      	movs	r0, #8
c0de7eb8:	e7ea      	b.n	c0de7e90 <buttonGenericCallback+0x60>
c0de7eba:	eb09 0004 	add.w	r0, r9, r4
c0de7ebe:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de7ec2:	2000      	movs	r0, #0
c0de7ec4:	2910      	cmp	r1, #16
c0de7ec6:	d83d      	bhi.n	c0de7f44 <buttonGenericCallback+0x114>
c0de7ec8:	2201      	movs	r2, #1
c0de7eca:	fa02 f101 	lsl.w	r1, r2, r1
c0de7ece:	4a1f      	ldr	r2, [pc, #124]	@ (c0de7f4c <buttonGenericCallback+0x11c>)
c0de7ed0:	4211      	tst	r1, r2
c0de7ed2:	d037      	beq.n	c0de7f44 <buttonGenericCallback+0x114>
c0de7ed4:	eb09 0004 	add.w	r0, r9, r4
c0de7ed8:	f10d 0137 	add.w	r1, sp, #55	@ 0x37
c0de7edc:	466a      	mov	r2, sp
c0de7ede:	f000 fc2c 	bl	c0de873a <OUTLINED_FUNCTION_4>
c0de7ee2:	b370      	cbz	r0, c0de7f42 <buttonGenericCallback+0x112>
c0de7ee4:	7801      	ldrb	r1, [r0, #0]
c0de7ee6:	4602      	mov	r2, r0
c0de7ee8:	2000      	movs	r0, #0
c0de7eea:	b359      	cbz	r1, c0de7f44 <buttonGenericCallback+0x114>
c0de7eec:	290a      	cmp	r1, #10
c0de7eee:	d009      	beq.n	c0de7f04 <buttonGenericCallback+0xd4>
c0de7ef0:	2907      	cmp	r1, #7
c0de7ef2:	d00f      	beq.n	c0de7f14 <buttonGenericCallback+0xe4>
c0de7ef4:	2909      	cmp	r1, #9
c0de7ef6:	d011      	beq.n	c0de7f1c <buttonGenericCallback+0xec>
c0de7ef8:	2903      	cmp	r1, #3
c0de7efa:	f04f 0100 	mov.w	r1, #0
c0de7efe:	d112      	bne.n	c0de7f26 <buttonGenericCallback+0xf6>
c0de7f00:	7c10      	ldrb	r0, [r2, #16]
c0de7f02:	e005      	b.n	c0de7f10 <buttonGenericCallback+0xe0>
c0de7f04:	eb09 0004 	add.w	r0, r9, r4
c0de7f08:	6891      	ldr	r1, [r2, #8]
c0de7f0a:	f990 0031 	ldrsb.w	r0, [r0, #49]	@ 0x31
c0de7f0e:	5c08      	ldrb	r0, [r1, r0]
c0de7f10:	2100      	movs	r1, #0
c0de7f12:	e008      	b.n	c0de7f26 <buttonGenericCallback+0xf6>
c0de7f14:	6850      	ldr	r0, [r2, #4]
c0de7f16:	2100      	movs	r1, #0
c0de7f18:	7a40      	ldrb	r0, [r0, #9]
c0de7f1a:	e004      	b.n	c0de7f26 <buttonGenericCallback+0xf6>
c0de7f1c:	eb09 0004 	add.w	r0, r9, r4
c0de7f20:	f890 1031 	ldrb.w	r1, [r0, #49]	@ 0x31
c0de7f24:	7ad0      	ldrb	r0, [r2, #11]
c0de7f26:	6b13      	ldr	r3, [r2, #48]	@ 0x30
c0de7f28:	b133      	cbz	r3, c0de7f38 <buttonGenericCallback+0x108>
c0de7f2a:	eb09 0104 	add.w	r1, r9, r4
c0de7f2e:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de7f32:	2100      	movs	r1, #0
c0de7f34:	4798      	blx	r3
c0de7f36:	e004      	b.n	c0de7f42 <buttonGenericCallback+0x112>
c0de7f38:	eb09 0204 	add.w	r2, r9, r4
c0de7f3c:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de7f3e:	b102      	cbz	r2, c0de7f42 <buttonGenericCallback+0x112>
c0de7f40:	4790      	blx	r2
c0de7f42:	2000      	movs	r0, #0
c0de7f44:	b00e      	add	sp, #56	@ 0x38
c0de7f46:	bdb0      	pop	{r4, r5, r7, pc}
c0de7f48:	0000283c 	.word	0x0000283c
c0de7f4c:	0001c008 	.word	0x0001c008

c0de7f50 <displayHomePage>:
c0de7f50:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de7f54:	4680      	mov	r8, r0
c0de7f56:	4832      	ldr	r0, [pc, #200]	@ (c0de8020 <displayHomePage+0xd0>)
c0de7f58:	2200      	movs	r2, #0
c0de7f5a:	eb09 0100 	add.w	r1, r9, r0
c0de7f5e:	6c4f      	ldr	r7, [r1, #68]	@ 0x44
c0de7f60:	6ccd      	ldr	r5, [r1, #76]	@ 0x4c
c0de7f62:	634a      	str	r2, [r1, #52]	@ 0x34
c0de7f64:	2202      	movs	r2, #2
c0de7f66:	2d00      	cmp	r5, #0
c0de7f68:	463e      	mov	r6, r7
c0de7f6a:	bf08      	it	eq
c0de7f6c:	2201      	moveq	r2, #1
c0de7f6e:	2f00      	cmp	r7, #0
c0de7f70:	bf18      	it	ne
c0de7f72:	2601      	movne	r6, #1
c0de7f74:	f991 3031 	ldrsb.w	r3, [r1, #49]	@ 0x31
c0de7f78:	b183      	cbz	r3, c0de7f9c <displayHomePage+0x4c>
c0de7f7a:	2401      	movs	r4, #1
c0de7f7c:	2d00      	cmp	r5, #0
c0de7f7e:	bf08      	it	eq
c0de7f80:	24ff      	moveq	r4, #255	@ 0xff
c0de7f82:	429c      	cmp	r4, r3
c0de7f84:	d111      	bne.n	c0de7faa <displayHomePage+0x5a>
c0de7f86:	eb09 0400 	add.w	r4, r9, r0
c0de7f8a:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de7f8e:	f002 fdf5 	bl	c0deab7c <pic>
c0de7f92:	4602      	mov	r2, r0
c0de7f94:	6ce0      	ldr	r0, [r4, #76]	@ 0x4c
c0de7f96:	6880      	ldr	r0, [r0, #8]
c0de7f98:	6360      	str	r0, [r4, #52]	@ 0x34
c0de7f9a:	e004      	b.n	c0de7fa6 <displayHomePage+0x56>
c0de7f9c:	eb09 0100 	add.w	r1, r9, r0
c0de7fa0:	e9d1 520f 	ldrd	r5, r2, [r1, #60]	@ 0x3c
c0de7fa4:	b312      	cbz	r2, c0de7fec <displayHomePage+0x9c>
c0de7fa6:	2300      	movs	r3, #0
c0de7fa8:	e02c      	b.n	c0de8004 <displayHomePage+0xb4>
c0de7faa:	2f00      	cmp	r7, #0
c0de7fac:	4614      	mov	r4, r2
c0de7fae:	bf08      	it	eq
c0de7fb0:	24ff      	moveq	r4, #255	@ 0xff
c0de7fb2:	429c      	cmp	r4, r3
c0de7fb4:	d109      	bne.n	c0de7fca <displayHomePage+0x7a>
c0de7fb6:	491c      	ldr	r1, [pc, #112]	@ (c0de8028 <displayHomePage+0xd8>)
c0de7fb8:	4448      	add	r0, r9
c0de7fba:	2300      	movs	r3, #0
c0de7fbc:	4479      	add	r1, pc
c0de7fbe:	6341      	str	r1, [r0, #52]	@ 0x34
c0de7fc0:	4d1a      	ldr	r5, [pc, #104]	@ (c0de802c <displayHomePage+0xdc>)
c0de7fc2:	4a1b      	ldr	r2, [pc, #108]	@ (c0de8030 <displayHomePage+0xe0>)
c0de7fc4:	447d      	add	r5, pc
c0de7fc6:	447a      	add	r2, pc
c0de7fc8:	e01c      	b.n	c0de8004 <displayHomePage+0xb4>
c0de7fca:	6c89      	ldr	r1, [r1, #72]	@ 0x48
c0de7fcc:	4432      	add	r2, r6
c0de7fce:	4448      	add	r0, r9
c0de7fd0:	2900      	cmp	r1, #0
c0de7fd2:	bf08      	it	eq
c0de7fd4:	22ff      	moveq	r2, #255	@ 0xff
c0de7fd6:	429a      	cmp	r2, r3
c0de7fd8:	d10d      	bne.n	c0de7ff6 <displayHomePage+0xa6>
c0de7fda:	4916      	ldr	r1, [pc, #88]	@ (c0de8034 <displayHomePage+0xe4>)
c0de7fdc:	2300      	movs	r3, #0
c0de7fde:	4479      	add	r1, pc
c0de7fe0:	6341      	str	r1, [r0, #52]	@ 0x34
c0de7fe2:	4d15      	ldr	r5, [pc, #84]	@ (c0de8038 <displayHomePage+0xe8>)
c0de7fe4:	4a15      	ldr	r2, [pc, #84]	@ (c0de803c <displayHomePage+0xec>)
c0de7fe6:	447d      	add	r5, pc
c0de7fe8:	447a      	add	r2, pc
c0de7fea:	e00b      	b.n	c0de8004 <displayHomePage+0xb4>
c0de7fec:	4448      	add	r0, r9
c0de7fee:	6b82      	ldr	r2, [r0, #56]	@ 0x38
c0de7ff0:	4b0c      	ldr	r3, [pc, #48]	@ (c0de8024 <displayHomePage+0xd4>)
c0de7ff2:	447b      	add	r3, pc
c0de7ff4:	e006      	b.n	c0de8004 <displayHomePage+0xb4>
c0de7ff6:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de7ff8:	2300      	movs	r3, #0
c0de7ffa:	6341      	str	r1, [r0, #52]	@ 0x34
c0de7ffc:	4d10      	ldr	r5, [pc, #64]	@ (c0de8040 <displayHomePage+0xf0>)
c0de7ffe:	4a11      	ldr	r2, [pc, #68]	@ (c0de8044 <displayHomePage+0xf4>)
c0de8000:	447d      	add	r5, pc
c0de8002:	447a      	add	r2, pc
c0de8004:	4910      	ldr	r1, [pc, #64]	@ (c0de8048 <displayHomePage+0xf8>)
c0de8006:	2000      	movs	r0, #0
c0de8008:	9002      	str	r0, [sp, #8]
c0de800a:	4479      	add	r1, pc
c0de800c:	e9cd 1000 	strd	r1, r0, [sp]
c0de8010:	4640      	mov	r0, r8
c0de8012:	4629      	mov	r1, r5
c0de8014:	f7ff f9f2 	bl	c0de73fc <drawStep>
c0de8018:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de801c:	f7fd ba36 	b.w	c0de548c <nbgl_refresh>
c0de8020:	0000283c 	.word	0x0000283c
c0de8024:	000038e5 	.word	0x000038e5
c0de8028:	0000008d 	.word	0x0000008d
c0de802c:	0000350f 	.word	0x0000350f
c0de8030:	000037eb 	.word	0x000037eb
c0de8034:	00000073 	.word	0x00000073
c0de8038:	00003458 	.word	0x00003458
c0de803c:	00003899 	.word	0x00003899
c0de8040:	00003461 	.word	0x00003461
c0de8044:	000038e2 	.word	0x000038e2
c0de8048:	0000006b 	.word	0x0000006b

c0de804c <startUseCaseSettings>:
c0de804c:	2000      	movs	r0, #0
c0de804e:	f7fe bfcb 	b.w	c0de6fe8 <startUseCaseSettingsAtPage>
	...

c0de8054 <startUseCaseInfo>:
c0de8054:	4807      	ldr	r0, [pc, #28]	@ (c0de8074 <startUseCaseInfo+0x20>)
c0de8056:	210d      	movs	r1, #13
c0de8058:	4448      	add	r0, r9
c0de805a:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de805e:	2100      	movs	r1, #0
c0de8060:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de8064:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de8066:	7b09      	ldrb	r1, [r1, #12]
c0de8068:	3101      	adds	r1, #1
c0de806a:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de806e:	2000      	movs	r0, #0
c0de8070:	f000 b810 	b.w	c0de8094 <displayInfoPage>
c0de8074:	0000283c 	.word	0x0000283c

c0de8078 <homeCallback>:
c0de8078:	b5e0      	push	{r5, r6, r7, lr}
c0de807a:	4608      	mov	r0, r1
c0de807c:	f10d 0107 	add.w	r1, sp, #7
c0de8080:	f7ff fed6 	bl	c0de7e30 <buttonGenericCallback>
c0de8084:	b128      	cbz	r0, c0de8092 <homeCallback+0x1a>
c0de8086:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de808a:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de808e:	f7ff bf5f 	b.w	c0de7f50 <displayHomePage>
c0de8092:	bd8c      	pop	{r2, r3, r7, pc}

c0de8094 <displayInfoPage>:
c0de8094:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de8096:	4604      	mov	r4, r0
c0de8098:	4816      	ldr	r0, [pc, #88]	@ (c0de80f4 <displayInfoPage+0x60>)
c0de809a:	f000 fb43 	bl	c0de8724 <OUTLINED_FUNCTION_2>
c0de809e:	dd11      	ble.n	c0de80c4 <displayInfoPage+0x30>
c0de80a0:	eb09 0700 	add.w	r7, r9, r0
c0de80a4:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de80a6:	6800      	ldr	r0, [r0, #0]
c0de80a8:	4e13      	ldr	r6, [pc, #76]	@ (c0de80f8 <displayInfoPage+0x64>)
c0de80aa:	447e      	add	r6, pc
c0de80ac:	47b0      	blx	r6
c0de80ae:	f000 fb55 	bl	c0de875c <OUTLINED_FUNCTION_8>
c0de80b2:	4605      	mov	r5, r0
c0de80b4:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de80b6:	6840      	ldr	r0, [r0, #4]
c0de80b8:	47b0      	blx	r6
c0de80ba:	f000 fb4f 	bl	c0de875c <OUTLINED_FUNCTION_8>
c0de80be:	4603      	mov	r3, r0
c0de80c0:	2100      	movs	r1, #0
c0de80c2:	e008      	b.n	c0de80d6 <displayInfoPage+0x42>
c0de80c4:	490d      	ldr	r1, [pc, #52]	@ (c0de80fc <displayInfoPage+0x68>)
c0de80c6:	4448      	add	r0, r9
c0de80c8:	2300      	movs	r3, #0
c0de80ca:	4479      	add	r1, pc
c0de80cc:	6341      	str	r1, [r0, #52]	@ 0x34
c0de80ce:	490c      	ldr	r1, [pc, #48]	@ (c0de8100 <displayInfoPage+0x6c>)
c0de80d0:	4d0c      	ldr	r5, [pc, #48]	@ (c0de8104 <displayInfoPage+0x70>)
c0de80d2:	4479      	add	r1, pc
c0de80d4:	447d      	add	r5, pc
c0de80d6:	4e0c      	ldr	r6, [pc, #48]	@ (c0de8108 <displayInfoPage+0x74>)
c0de80d8:	2002      	movs	r0, #2
c0de80da:	2200      	movs	r2, #0
c0de80dc:	9002      	str	r0, [sp, #8]
c0de80de:	4620      	mov	r0, r4
c0de80e0:	447e      	add	r6, pc
c0de80e2:	e9cd 6200 	strd	r6, r2, [sp]
c0de80e6:	462a      	mov	r2, r5
c0de80e8:	f7ff f988 	bl	c0de73fc <drawStep>
c0de80ec:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de80f0:	f7fd b9cc 	b.w	c0de548c <nbgl_refresh>
c0de80f4:	0000283c 	.word	0x0000283c
c0de80f8:	00002acf 	.word	0x00002acf
c0de80fc:	ffffef93 	.word	0xffffef93
c0de8100:	000033de 	.word	0x000033de
c0de8104:	00003775 	.word	0x00003775
c0de8108:	00000029 	.word	0x00000029

c0de810c <infoCallback>:
c0de810c:	b5e0      	push	{r5, r6, r7, lr}
c0de810e:	4608      	mov	r0, r1
c0de8110:	f10d 0107 	add.w	r1, sp, #7
c0de8114:	f7ff fe8c 	bl	c0de7e30 <buttonGenericCallback>
c0de8118:	b128      	cbz	r0, c0de8126 <infoCallback+0x1a>
c0de811a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de811e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de8122:	f7ff bfb7 	b.w	c0de8094 <displayInfoPage>
c0de8126:	bd8c      	pop	{r2, r3, r7, pc}

c0de8128 <displayWarningStep>:
c0de8128:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de812a:	2000      	movs	r0, #0
c0de812c:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de8130:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de8134:	4817      	ldr	r0, [pc, #92]	@ (c0de8194 <displayWarningStep+0x6c>)
c0de8136:	eb09 0100 	add.w	r1, r9, r0
c0de813a:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de813e:	b169      	cbz	r1, c0de815c <displayWarningStep+0x34>
c0de8140:	4448      	add	r0, r9
c0de8142:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de8146:	3801      	subs	r0, #1
c0de8148:	4288      	cmp	r0, r1
c0de814a:	d112      	bne.n	c0de8172 <displayWarningStep+0x4a>
c0de814c:	aa02      	add	r2, sp, #8
c0de814e:	2000      	movs	r0, #0
c0de8150:	f102 0108 	add.w	r1, r2, #8
c0de8154:	f000 f828 	bl	c0de81a8 <getLastPageInfo>
c0de8158:	200a      	movs	r0, #10
c0de815a:	e00b      	b.n	c0de8174 <displayWarningStep+0x4c>
c0de815c:	480e      	ldr	r0, [pc, #56]	@ (c0de8198 <displayWarningStep+0x70>)
c0de815e:	4478      	add	r0, pc
c0de8160:	9003      	str	r0, [sp, #12]
c0de8162:	480e      	ldr	r0, [pc, #56]	@ (c0de819c <displayWarningStep+0x74>)
c0de8164:	4478      	add	r0, pc
c0de8166:	9002      	str	r0, [sp, #8]
c0de8168:	480d      	ldr	r0, [pc, #52]	@ (c0de81a0 <displayWarningStep+0x78>)
c0de816a:	4478      	add	r0, pc
c0de816c:	9004      	str	r0, [sp, #16]
c0de816e:	2001      	movs	r0, #1
c0de8170:	e000      	b.n	c0de8174 <displayWarningStep+0x4c>
c0de8172:	2000      	movs	r0, #0
c0de8174:	2101      	movs	r1, #1
c0de8176:	2200      	movs	r2, #0
c0de8178:	f88d 1015 	strb.w	r1, [sp, #21]
c0de817c:	2100      	movs	r1, #0
c0de817e:	9100      	str	r1, [sp, #0]
c0de8180:	4908      	ldr	r1, [pc, #32]	@ (c0de81a4 <displayWarningStep+0x7c>)
c0de8182:	ab02      	add	r3, sp, #8
c0de8184:	4479      	add	r1, pc
c0de8186:	f7fe fd1f 	bl	c0de6bc8 <nbgl_stepDrawCenteredInfo>
c0de818a:	f7fd f97f 	bl	c0de548c <nbgl_refresh>
c0de818e:	b006      	add	sp, #24
c0de8190:	bd80      	pop	{r7, pc}
c0de8192:	bf00      	nop
c0de8194:	0000283c 	.word	0x0000283c
c0de8198:	00003541 	.word	0x00003541
c0de819c:	0000367f 	.word	0x0000367f
c0de81a0:	00003408 	.word	0x00003408
c0de81a4:	00000149 	.word	0x00000149

c0de81a8 <getLastPageInfo>:
c0de81a8:	b170      	cbz	r0, c0de81c8 <getLastPageInfo+0x20>
c0de81aa:	4833      	ldr	r0, [pc, #204]	@ (c0de8278 <getLastPageInfo+0xd0>)
c0de81ac:	4478      	add	r0, pc
c0de81ae:	6008      	str	r0, [r1, #0]
c0de81b0:	4830      	ldr	r0, [pc, #192]	@ (c0de8274 <getLastPageInfo+0xcc>)
c0de81b2:	eb09 0100 	add.w	r1, r9, r0
c0de81b6:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de81ba:	2904      	cmp	r1, #4
c0de81bc:	d113      	bne.n	c0de81e6 <getLastPageInfo+0x3e>
c0de81be:	482f      	ldr	r0, [pc, #188]	@ (c0de827c <getLastPageInfo+0xd4>)
c0de81c0:	492f      	ldr	r1, [pc, #188]	@ (c0de8280 <getLastPageInfo+0xd8>)
c0de81c2:	4478      	add	r0, pc
c0de81c4:	4479      	add	r1, pc
c0de81c6:	e04f      	b.n	c0de8268 <getLastPageInfo+0xc0>
c0de81c8:	4838      	ldr	r0, [pc, #224]	@ (c0de82ac <getLastPageInfo+0x104>)
c0de81ca:	4478      	add	r0, pc
c0de81cc:	6008      	str	r0, [r1, #0]
c0de81ce:	4829      	ldr	r0, [pc, #164]	@ (c0de8274 <getLastPageInfo+0xcc>)
c0de81d0:	eb09 0100 	add.w	r1, r9, r0
c0de81d4:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de81d8:	2904      	cmp	r1, #4
c0de81da:	d10b      	bne.n	c0de81f4 <getLastPageInfo+0x4c>
c0de81dc:	4834      	ldr	r0, [pc, #208]	@ (c0de82b0 <getLastPageInfo+0x108>)
c0de81de:	4935      	ldr	r1, [pc, #212]	@ (c0de82b4 <getLastPageInfo+0x10c>)
c0de81e0:	4478      	add	r0, pc
c0de81e2:	4479      	add	r1, pc
c0de81e4:	e040      	b.n	c0de8268 <getLastPageInfo+0xc0>
c0de81e6:	eb09 0100 	add.w	r1, r9, r0
c0de81ea:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de81ec:	b171      	cbz	r1, c0de820c <getLastPageInfo+0x64>
c0de81ee:	4825      	ldr	r0, [pc, #148]	@ (c0de8284 <getLastPageInfo+0xdc>)
c0de81f0:	4478      	add	r0, pc
c0de81f2:	e039      	b.n	c0de8268 <getLastPageInfo+0xc0>
c0de81f4:	4448      	add	r0, r9
c0de81f6:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de81f8:	f010 0007 	ands.w	r0, r0, #7
c0de81fc:	d017      	beq.n	c0de822e <getLastPageInfo+0x86>
c0de81fe:	2801      	cmp	r0, #1
c0de8200:	d11a      	bne.n	c0de8238 <getLastPageInfo+0x90>
c0de8202:	482f      	ldr	r0, [pc, #188]	@ (c0de82c0 <getLastPageInfo+0x118>)
c0de8204:	492f      	ldr	r1, [pc, #188]	@ (c0de82c4 <getLastPageInfo+0x11c>)
c0de8206:	4478      	add	r0, pc
c0de8208:	4479      	add	r1, pc
c0de820a:	e02d      	b.n	c0de8268 <getLastPageInfo+0xc0>
c0de820c:	4448      	add	r0, r9
c0de820e:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de8210:	f000 0107 	and.w	r1, r0, #7
c0de8214:	2901      	cmp	r1, #1
c0de8216:	d014      	beq.n	c0de8242 <getLastPageInfo+0x9a>
c0de8218:	b9e9      	cbnz	r1, c0de8256 <getLastPageInfo+0xae>
c0de821a:	0640      	lsls	r0, r0, #25
c0de821c:	481a      	ldr	r0, [pc, #104]	@ (c0de8288 <getLastPageInfo+0xe0>)
c0de821e:	491b      	ldr	r1, [pc, #108]	@ (c0de828c <getLastPageInfo+0xe4>)
c0de8220:	4478      	add	r0, pc
c0de8222:	4479      	add	r1, pc
c0de8224:	bf58      	it	pl
c0de8226:	4601      	movpl	r1, r0
c0de8228:	4819      	ldr	r0, [pc, #100]	@ (c0de8290 <getLastPageInfo+0xe8>)
c0de822a:	4478      	add	r0, pc
c0de822c:	e01c      	b.n	c0de8268 <getLastPageInfo+0xc0>
c0de822e:	4822      	ldr	r0, [pc, #136]	@ (c0de82b8 <getLastPageInfo+0x110>)
c0de8230:	4922      	ldr	r1, [pc, #136]	@ (c0de82bc <getLastPageInfo+0x114>)
c0de8232:	4478      	add	r0, pc
c0de8234:	4479      	add	r1, pc
c0de8236:	e017      	b.n	c0de8268 <getLastPageInfo+0xc0>
c0de8238:	4823      	ldr	r0, [pc, #140]	@ (c0de82c8 <getLastPageInfo+0x120>)
c0de823a:	4924      	ldr	r1, [pc, #144]	@ (c0de82cc <getLastPageInfo+0x124>)
c0de823c:	4478      	add	r0, pc
c0de823e:	4479      	add	r1, pc
c0de8240:	e012      	b.n	c0de8268 <getLastPageInfo+0xc0>
c0de8242:	0640      	lsls	r0, r0, #25
c0de8244:	4813      	ldr	r0, [pc, #76]	@ (c0de8294 <getLastPageInfo+0xec>)
c0de8246:	4914      	ldr	r1, [pc, #80]	@ (c0de8298 <getLastPageInfo+0xf0>)
c0de8248:	4478      	add	r0, pc
c0de824a:	4479      	add	r1, pc
c0de824c:	bf58      	it	pl
c0de824e:	4601      	movpl	r1, r0
c0de8250:	4812      	ldr	r0, [pc, #72]	@ (c0de829c <getLastPageInfo+0xf4>)
c0de8252:	4478      	add	r0, pc
c0de8254:	e008      	b.n	c0de8268 <getLastPageInfo+0xc0>
c0de8256:	0640      	lsls	r0, r0, #25
c0de8258:	4811      	ldr	r0, [pc, #68]	@ (c0de82a0 <getLastPageInfo+0xf8>)
c0de825a:	4912      	ldr	r1, [pc, #72]	@ (c0de82a4 <getLastPageInfo+0xfc>)
c0de825c:	4478      	add	r0, pc
c0de825e:	4479      	add	r1, pc
c0de8260:	bf58      	it	pl
c0de8262:	4601      	movpl	r1, r0
c0de8264:	4810      	ldr	r0, [pc, #64]	@ (c0de82a8 <getLastPageInfo+0x100>)
c0de8266:	4478      	add	r0, pc
c0de8268:	6011      	str	r1, [r2, #0]
c0de826a:	4902      	ldr	r1, [pc, #8]	@ (c0de8274 <getLastPageInfo+0xcc>)
c0de826c:	4449      	add	r1, r9
c0de826e:	6348      	str	r0, [r1, #52]	@ 0x34
c0de8270:	4770      	bx	lr
c0de8272:	bf00      	nop
c0de8274:	0000283c 	.word	0x0000283c
c0de8278:	000033a3 	.word	0x000033a3
c0de827c:	000001a7 	.word	0x000001a7
c0de8280:	00003729 	.word	0x00003729
c0de8284:	00000179 	.word	0x00000179
c0de8288:	000034ee 	.word	0x000034ee
c0de828c:	0000359c 	.word	0x0000359c
c0de8290:	0000013f 	.word	0x0000013f
c0de8294:	000034aa 	.word	0x000034aa
c0de8298:	000034ef 	.word	0x000034ef
c0de829c:	00000117 	.word	0x00000117
c0de82a0:	0000362e 	.word	0x0000362e
c0de82a4:	00003599 	.word	0x00003599
c0de82a8:	00000103 	.word	0x00000103
c0de82ac:	0000332c 	.word	0x0000332c
c0de82b0:	0000019d 	.word	0x0000019d
c0de82b4:	0000359a 	.word	0x0000359a
c0de82b8:	0000014b 	.word	0x0000014b
c0de82bc:	000034eb 	.word	0x000034eb
c0de82c0:	00000177 	.word	0x00000177
c0de82c4:	00003694 	.word	0x00003694
c0de82c8:	00000141 	.word	0x00000141
c0de82cc:	0000366d 	.word	0x0000366d

c0de82d0 <warningNavigate>:
c0de82d0:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de82d2:	2904      	cmp	r1, #4
c0de82d4:	d00a      	beq.n	c0de82ec <warningNavigate+0x1c>
c0de82d6:	2901      	cmp	r1, #1
c0de82d8:	d01c      	beq.n	c0de8314 <warningNavigate+0x44>
c0de82da:	2900      	cmp	r1, #0
c0de82dc:	d13d      	bne.n	c0de835a <warningNavigate+0x8a>
c0de82de:	4822      	ldr	r0, [pc, #136]	@ (c0de8368 <warningNavigate+0x98>)
c0de82e0:	4448      	add	r0, r9
c0de82e2:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de82e6:	b320      	cbz	r0, c0de8332 <warningNavigate+0x62>
c0de82e8:	3801      	subs	r0, #1
c0de82ea:	e01e      	b.n	c0de832a <warningNavigate+0x5a>
c0de82ec:	481e      	ldr	r0, [pc, #120]	@ (c0de8368 <warningNavigate+0x98>)
c0de82ee:	eb09 0100 	add.w	r1, r9, r0
c0de82f2:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de82f6:	b301      	cbz	r1, c0de833a <warningNavigate+0x6a>
c0de82f8:	eb09 0200 	add.w	r2, r9, r0
c0de82fc:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de8300:	3a01      	subs	r2, #1
c0de8302:	428a      	cmp	r2, r1
c0de8304:	d129      	bne.n	c0de835a <warningNavigate+0x8a>
c0de8306:	4448      	add	r0, r9
c0de8308:	6a01      	ldr	r1, [r0, #32]
c0de830a:	2000      	movs	r0, #0
c0de830c:	b004      	add	sp, #16
c0de830e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de8312:	4708      	bx	r1
c0de8314:	4814      	ldr	r0, [pc, #80]	@ (c0de8368 <warningNavigate+0x98>)
c0de8316:	eb09 0100 	add.w	r1, r9, r0
c0de831a:	f891 0026 	ldrb.w	r0, [r1, #38]	@ 0x26
c0de831e:	f891 1027 	ldrb.w	r1, [r1, #39]	@ 0x27
c0de8322:	3901      	subs	r1, #1
c0de8324:	4281      	cmp	r1, r0
c0de8326:	dd04      	ble.n	c0de8332 <warningNavigate+0x62>
c0de8328:	3001      	adds	r0, #1
c0de832a:	490f      	ldr	r1, [pc, #60]	@ (c0de8368 <warningNavigate+0x98>)
c0de832c:	4449      	add	r1, r9
c0de832e:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de8332:	e8bd 407f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, lr}
c0de8336:	f7ff bef7 	b.w	c0de8128 <displayWarningStep>
c0de833a:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de833e:	2905      	cmp	r1, #5
c0de8340:	d00c      	beq.n	c0de835c <warningNavigate+0x8c>
c0de8342:	2902      	cmp	r1, #2
c0de8344:	d109      	bne.n	c0de835a <warningNavigate+0x8a>
c0de8346:	4448      	add	r0, r9
c0de8348:	1d06      	adds	r6, r0, #4
c0de834a:	6a00      	ldr	r0, [r0, #32]
c0de834c:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de834e:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de8352:	9003      	str	r0, [sp, #12]
c0de8354:	2002      	movs	r0, #2
c0de8356:	f7fe fed9 	bl	c0de710c <useCaseReview>
c0de835a:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de835c:	2000      	movs	r0, #0
c0de835e:	b004      	add	sp, #16
c0de8360:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de8364:	f7ff b966 	b.w	c0de7634 <displayStreamingReviewPage>
c0de8368:	0000283c 	.word	0x0000283c

c0de836c <onReviewAccept>:
c0de836c:	4803      	ldr	r0, [pc, #12]	@ (c0de837c <onReviewAccept+0x10>)
c0de836e:	4448      	add	r0, r9
c0de8370:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de8372:	b109      	cbz	r1, c0de8378 <onReviewAccept+0xc>
c0de8374:	2001      	movs	r0, #1
c0de8376:	4708      	bx	r1
c0de8378:	4770      	bx	lr
c0de837a:	bf00      	nop
c0de837c:	0000283c 	.word	0x0000283c

c0de8380 <onReviewReject>:
c0de8380:	4803      	ldr	r0, [pc, #12]	@ (c0de8390 <onReviewReject+0x10>)
c0de8382:	4448      	add	r0, r9
c0de8384:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de8386:	b109      	cbz	r1, c0de838c <onReviewReject+0xc>
c0de8388:	2000      	movs	r0, #0
c0de838a:	4708      	bx	r1
c0de838c:	4770      	bx	lr
c0de838e:	bf00      	nop
c0de8390:	0000283c 	.word	0x0000283c

c0de8394 <displayAliasFullValue>:
c0de8394:	b570      	push	{r4, r5, r6, lr}
c0de8396:	b088      	sub	sp, #32
c0de8398:	4c17      	ldr	r4, [pc, #92]	@ (c0de83f8 <displayAliasFullValue+0x64>)
c0de839a:	f10d 0213 	add.w	r2, sp, #19
c0de839e:	eb09 0504 	add.w	r5, r9, r4
c0de83a2:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de83a4:	f895 105b 	ldrb.w	r1, [r5, #91]	@ 0x5b
c0de83a8:	ab05      	add	r3, sp, #20
c0de83aa:	f105 0660 	add.w	r6, r5, #96	@ 0x60
c0de83ae:	9202      	str	r2, [sp, #8]
c0de83b0:	e9cd 6300 	strd	r6, r3, [sp]
c0de83b4:	aa07      	add	r2, sp, #28
c0de83b6:	ab06      	add	r3, sp, #24
c0de83b8:	f7ff fc60 	bl	c0de7c7c <getPairData>
c0de83bc:	6e28      	ldr	r0, [r5, #96]	@ 0x60
c0de83be:	b170      	cbz	r0, c0de83de <displayAliasFullValue+0x4a>
c0de83c0:	eb09 0104 	add.w	r1, r9, r4
c0de83c4:	2200      	movs	r2, #0
c0de83c6:	664a      	str	r2, [r1, #100]	@ 0x64
c0de83c8:	f881 205c 	strb.w	r2, [r1, #92]	@ 0x5c
c0de83cc:	7d01      	ldrb	r1, [r0, #20]
c0de83ce:	2901      	cmp	r1, #1
c0de83d0:	d007      	beq.n	c0de83e2 <displayAliasFullValue+0x4e>
c0de83d2:	2904      	cmp	r1, #4
c0de83d4:	d103      	bne.n	c0de83de <displayAliasFullValue+0x4a>
c0de83d6:	6900      	ldr	r0, [r0, #16]
c0de83d8:	7b00      	ldrb	r0, [r0, #12]
c0de83da:	3001      	adds	r0, #1
c0de83dc:	e002      	b.n	c0de83e4 <displayAliasFullValue+0x50>
c0de83de:	b008      	add	sp, #32
c0de83e0:	bd70      	pop	{r4, r5, r6, pc}
c0de83e2:	2002      	movs	r0, #2
c0de83e4:	eb09 0104 	add.w	r1, r9, r4
c0de83e8:	f881 005d 	strb.w	r0, [r1, #93]	@ 0x5d
c0de83ec:	2000      	movs	r0, #0
c0de83ee:	b008      	add	sp, #32
c0de83f0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de83f4:	f000 b810 	b.w	c0de8418 <displayExtensionStep>
c0de83f8:	0000283c 	.word	0x0000283c

c0de83fc <reviewCallback>:
c0de83fc:	b5e0      	push	{r5, r6, r7, lr}
c0de83fe:	4608      	mov	r0, r1
c0de8400:	f10d 0107 	add.w	r1, sp, #7
c0de8404:	f7ff fd14 	bl	c0de7e30 <buttonGenericCallback>
c0de8408:	b128      	cbz	r0, c0de8416 <reviewCallback+0x1a>
c0de840a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de840e:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de8412:	f7fe bf47 	b.w	c0de72a4 <displayReviewPage>
c0de8416:	bd8c      	pop	{r2, r3, r7, pc}

c0de8418 <displayExtensionStep>:
c0de8418:	b5b0      	push	{r4, r5, r7, lr}
c0de841a:	b088      	sub	sp, #32
c0de841c:	4d28      	ldr	r5, [pc, #160]	@ (c0de84c0 <displayExtensionStep+0xa8>)
c0de841e:	4604      	mov	r4, r0
c0de8420:	2000      	movs	r0, #0
c0de8422:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de8426:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de842a:	eb09 0005 	add.w	r0, r9, r5
c0de842e:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de8430:	b108      	cbz	r0, c0de8436 <displayExtensionStep+0x1e>
c0de8432:	f7fe fcef 	bl	c0de6e14 <nbgl_stepRelease>
c0de8436:	eb09 0005 	add.w	r0, r9, r5
c0de843a:	f890 105c 	ldrb.w	r1, [r0, #92]	@ 0x5c
c0de843e:	f890 005d 	ldrb.w	r0, [r0, #93]	@ 0x5d
c0de8442:	3801      	subs	r0, #1
c0de8444:	4288      	cmp	r0, r1
c0de8446:	dd0f      	ble.n	c0de8468 <displayExtensionStep+0x50>
c0de8448:	2003      	movs	r0, #3
c0de844a:	eb09 0205 	add.w	r2, r9, r5
c0de844e:	2900      	cmp	r1, #0
c0de8450:	bf08      	it	eq
c0de8452:	2001      	moveq	r0, #1
c0de8454:	6e12      	ldr	r2, [r2, #96]	@ 0x60
c0de8456:	4320      	orrs	r0, r4
c0de8458:	7d13      	ldrb	r3, [r2, #20]
c0de845a:	2b04      	cmp	r3, #4
c0de845c:	d018      	beq.n	c0de8490 <displayExtensionStep+0x78>
c0de845e:	2b01      	cmp	r3, #1
c0de8460:	d129      	bne.n	c0de84b6 <displayExtensionStep+0x9e>
c0de8462:	6811      	ldr	r1, [r2, #0]
c0de8464:	6893      	ldr	r3, [r2, #8]
c0de8466:	e01a      	b.n	c0de849e <displayExtensionStep+0x86>
c0de8468:	d125      	bne.n	c0de84b6 <displayExtensionStep+0x9e>
c0de846a:	2001      	movs	r0, #1
c0de846c:	2200      	movs	r2, #0
c0de846e:	f88d 001d 	strb.w	r0, [sp, #29]
c0de8472:	4915      	ldr	r1, [pc, #84]	@ (c0de84c8 <displayExtensionStep+0xb0>)
c0de8474:	4479      	add	r1, pc
c0de8476:	9104      	str	r1, [sp, #16]
c0de8478:	4914      	ldr	r1, [pc, #80]	@ (c0de84cc <displayExtensionStep+0xb4>)
c0de847a:	9000      	str	r0, [sp, #0]
c0de847c:	f044 0002 	orr.w	r0, r4, #2
c0de8480:	4479      	add	r1, pc
c0de8482:	9106      	str	r1, [sp, #24]
c0de8484:	4912      	ldr	r1, [pc, #72]	@ (c0de84d0 <displayExtensionStep+0xb8>)
c0de8486:	ab04      	add	r3, sp, #16
c0de8488:	4479      	add	r1, pc
c0de848a:	f7fe fb9d 	bl	c0de6bc8 <nbgl_stepDrawCenteredInfo>
c0de848e:	e00f      	b.n	c0de84b0 <displayExtensionStep+0x98>
c0de8490:	6912      	ldr	r2, [r2, #16]
c0de8492:	e9d2 3200 	ldrd	r3, r2, [r2]
c0de8496:	f853 3021 	ldr.w	r3, [r3, r1, lsl #2]
c0de849a:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
c0de849e:	2201      	movs	r2, #1
c0de84a0:	e9cd 1200 	strd	r1, r2, [sp]
c0de84a4:	9202      	str	r2, [sp, #8]
c0de84a6:	2200      	movs	r2, #0
c0de84a8:	4906      	ldr	r1, [pc, #24]	@ (c0de84c4 <displayExtensionStep+0xac>)
c0de84aa:	4479      	add	r1, pc
c0de84ac:	f7fe fa46 	bl	c0de693c <nbgl_stepDrawText>
c0de84b0:	eb09 0105 	add.w	r1, r9, r5
c0de84b4:	6648      	str	r0, [r1, #100]	@ 0x64
c0de84b6:	f7fc ffe9 	bl	c0de548c <nbgl_refresh>
c0de84ba:	b008      	add	sp, #32
c0de84bc:	bdb0      	pop	{r4, r5, r7, pc}
c0de84be:	bf00      	nop
c0de84c0:	0000283c 	.word	0x0000283c
c0de84c4:	00000027 	.word	0x00000027
c0de84c8:	000033d5 	.word	0x000033d5
c0de84cc:	00003030 	.word	0x00003030
c0de84d0:	00000049 	.word	0x00000049

c0de84d4 <extensionNavigate>:
c0de84d4:	b580      	push	{r7, lr}
c0de84d6:	2904      	cmp	r1, #4
c0de84d8:	d00a      	beq.n	c0de84f0 <extensionNavigate+0x1c>
c0de84da:	2901      	cmp	r1, #1
c0de84dc:	d01d      	beq.n	c0de851a <extensionNavigate+0x46>
c0de84de:	b9d9      	cbnz	r1, c0de8518 <extensionNavigate+0x44>
c0de84e0:	481a      	ldr	r0, [pc, #104]	@ (c0de854c <extensionNavigate+0x78>)
c0de84e2:	4448      	add	r0, r9
c0de84e4:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de84e8:	b350      	cbz	r0, c0de8540 <extensionNavigate+0x6c>
c0de84ea:	1e41      	subs	r1, r0, #1
c0de84ec:	2008      	movs	r0, #8
c0de84ee:	e020      	b.n	c0de8532 <extensionNavigate+0x5e>
c0de84f0:	4816      	ldr	r0, [pc, #88]	@ (c0de854c <extensionNavigate+0x78>)
c0de84f2:	eb09 0100 	add.w	r1, r9, r0
c0de84f6:	f891 205c 	ldrb.w	r2, [r1, #92]	@ 0x5c
c0de84fa:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de84fe:	3901      	subs	r1, #1
c0de8500:	4291      	cmp	r1, r2
c0de8502:	d109      	bne.n	c0de8518 <extensionNavigate+0x44>
c0de8504:	4448      	add	r0, r9
c0de8506:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de8508:	f7fe fc84 	bl	c0de6e14 <nbgl_stepRelease>
c0de850c:	f7fd ffe0 	bl	c0de64d0 <nbgl_screenRedraw>
c0de8510:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de8514:	f7fc bfba 	b.w	c0de548c <nbgl_refresh>
c0de8518:	bd80      	pop	{r7, pc}
c0de851a:	480c      	ldr	r0, [pc, #48]	@ (c0de854c <extensionNavigate+0x78>)
c0de851c:	eb09 0100 	add.w	r1, r9, r0
c0de8520:	f891 005c 	ldrb.w	r0, [r1, #92]	@ 0x5c
c0de8524:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de8528:	3901      	subs	r1, #1
c0de852a:	4281      	cmp	r1, r0
c0de852c:	dd06      	ble.n	c0de853c <extensionNavigate+0x68>
c0de852e:	1c41      	adds	r1, r0, #1
c0de8530:	2000      	movs	r0, #0
c0de8532:	4a06      	ldr	r2, [pc, #24]	@ (c0de854c <extensionNavigate+0x78>)
c0de8534:	444a      	add	r2, r9
c0de8536:	f882 105c 	strb.w	r1, [r2, #92]	@ 0x5c
c0de853a:	e002      	b.n	c0de8542 <extensionNavigate+0x6e>
c0de853c:	2000      	movs	r0, #0
c0de853e:	e000      	b.n	c0de8542 <extensionNavigate+0x6e>
c0de8540:	2008      	movs	r0, #8
c0de8542:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de8546:	f7ff bf67 	b.w	c0de8418 <displayExtensionStep>
c0de854a:	bf00      	nop
c0de854c:	0000283c 	.word	0x0000283c

c0de8550 <statusTickerCallback>:
c0de8550:	4802      	ldr	r0, [pc, #8]	@ (c0de855c <statusTickerCallback+0xc>)
c0de8552:	4448      	add	r0, r9
c0de8554:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de8556:	b100      	cbz	r0, c0de855a <statusTickerCallback+0xa>
c0de8558:	4700      	bx	r0
c0de855a:	4770      	bx	lr
c0de855c:	0000283c 	.word	0x0000283c

c0de8560 <getChoiceName>:
c0de8560:	b5b0      	push	{r4, r5, r7, lr}
c0de8562:	b08e      	sub	sp, #56	@ 0x38
c0de8564:	466d      	mov	r5, sp
c0de8566:	f000 f8fe 	bl	c0de8766 <OUTLINED_FUNCTION_9>
c0de856a:	4814      	ldr	r0, [pc, #80]	@ (c0de85bc <getChoiceName+0x5c>)
c0de856c:	f10d 0137 	add.w	r1, sp, #55	@ 0x37
c0de8570:	462a      	mov	r2, r5
c0de8572:	4448      	add	r0, r9
c0de8574:	f000 f8e1 	bl	c0de873a <OUTLINED_FUNCTION_4>
c0de8578:	b150      	cbz	r0, c0de8590 <getChoiceName+0x30>
c0de857a:	7801      	ldrb	r1, [r0, #0]
c0de857c:	290a      	cmp	r1, #10
c0de857e:	d009      	beq.n	c0de8594 <getChoiceName+0x34>
c0de8580:	2909      	cmp	r1, #9
c0de8582:	d105      	bne.n	c0de8590 <getChoiceName+0x30>
c0de8584:	f000 f8e3 	bl	c0de874e <OUTLINED_FUNCTION_6>
c0de8588:	4605      	mov	r5, r0
c0de858a:	f855 0b05 	ldr.w	r0, [r5], #5
c0de858e:	e006      	b.n	c0de859e <getChoiceName+0x3e>
c0de8590:	2000      	movs	r0, #0
c0de8592:	e010      	b.n	c0de85b6 <getChoiceName+0x56>
c0de8594:	f000 f8db 	bl	c0de874e <OUTLINED_FUNCTION_6>
c0de8598:	4605      	mov	r5, r0
c0de859a:	f855 0b08 	ldr.w	r0, [r5], #8
c0de859e:	f002 faed 	bl	c0deab7c <pic>
c0de85a2:	7829      	ldrb	r1, [r5, #0]
c0de85a4:	42a1      	cmp	r1, r4
c0de85a6:	d904      	bls.n	c0de85b2 <getChoiceName+0x52>
c0de85a8:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de85ac:	f002 fae6 	bl	c0deab7c <pic>
c0de85b0:	e001      	b.n	c0de85b6 <getChoiceName+0x56>
c0de85b2:	4803      	ldr	r0, [pc, #12]	@ (c0de85c0 <getChoiceName+0x60>)
c0de85b4:	4478      	add	r0, pc
c0de85b6:	b00e      	add	sp, #56	@ 0x38
c0de85b8:	bdb0      	pop	{r4, r5, r7, pc}
c0de85ba:	bf00      	nop
c0de85bc:	0000283c 	.word	0x0000283c
c0de85c0:	00003295 	.word	0x00003295

c0de85c4 <onChoiceSelected>:
c0de85c4:	b570      	push	{r4, r5, r6, lr}
c0de85c6:	b08e      	sub	sp, #56	@ 0x38
c0de85c8:	466d      	mov	r5, sp
c0de85ca:	f000 f8cc 	bl	c0de8766 <OUTLINED_FUNCTION_9>
c0de85ce:	4e17      	ldr	r6, [pc, #92]	@ (c0de862c <onChoiceSelected+0x68>)
c0de85d0:	f10d 0137 	add.w	r1, sp, #55	@ 0x37
c0de85d4:	462a      	mov	r2, r5
c0de85d6:	eb09 0006 	add.w	r0, r9, r6
c0de85da:	f000 f8ae 	bl	c0de873a <OUTLINED_FUNCTION_4>
c0de85de:	b318      	cbz	r0, c0de8628 <onChoiceSelected+0x64>
c0de85e0:	7801      	ldrb	r1, [r0, #0]
c0de85e2:	290a      	cmp	r1, #10
c0de85e4:	d008      	beq.n	c0de85f8 <onChoiceSelected+0x34>
c0de85e6:	2909      	cmp	r1, #9
c0de85e8:	d10f      	bne.n	c0de860a <onChoiceSelected+0x46>
c0de85ea:	f000 f8b0 	bl	c0de874e <OUTLINED_FUNCTION_6>
c0de85ee:	7941      	ldrb	r1, [r0, #5]
c0de85f0:	42a1      	cmp	r1, r4
c0de85f2:	d90a      	bls.n	c0de860a <onChoiceSelected+0x46>
c0de85f4:	3007      	adds	r0, #7
c0de85f6:	e006      	b.n	c0de8606 <onChoiceSelected+0x42>
c0de85f8:	f000 f8a9 	bl	c0de874e <OUTLINED_FUNCTION_6>
c0de85fc:	7a01      	ldrb	r1, [r0, #8]
c0de85fe:	42a1      	cmp	r1, r4
c0de8600:	d903      	bls.n	c0de860a <onChoiceSelected+0x46>
c0de8602:	6840      	ldr	r0, [r0, #4]
c0de8604:	4420      	add	r0, r4
c0de8606:	7800      	ldrb	r0, [r0, #0]
c0de8608:	e000      	b.n	c0de860c <onChoiceSelected+0x48>
c0de860a:	20ff      	movs	r0, #255	@ 0xff
c0de860c:	28ff      	cmp	r0, #255	@ 0xff
c0de860e:	d006      	beq.n	c0de861e <onChoiceSelected+0x5a>
c0de8610:	eb09 0106 	add.w	r1, r9, r6
c0de8614:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de8616:	b112      	cbz	r2, c0de861e <onChoiceSelected+0x5a>
c0de8618:	2100      	movs	r1, #0
c0de861a:	4790      	blx	r2
c0de861c:	e004      	b.n	c0de8628 <onChoiceSelected+0x64>
c0de861e:	eb09 0006 	add.w	r0, r9, r6
c0de8622:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de8624:	b100      	cbz	r0, c0de8628 <onChoiceSelected+0x64>
c0de8626:	4780      	blx	r0
c0de8628:	b00e      	add	sp, #56	@ 0x38
c0de862a:	bd70      	pop	{r4, r5, r6, pc}
c0de862c:	0000283c 	.word	0x0000283c

c0de8630 <buttonSkipCallback>:
c0de8630:	2904      	cmp	r1, #4
c0de8632:	d02b      	beq.n	c0de868c <buttonSkipCallback+0x5c>
c0de8634:	2901      	cmp	r1, #1
c0de8636:	d00e      	beq.n	c0de8656 <buttonSkipCallback+0x26>
c0de8638:	bb61      	cbnz	r1, c0de8694 <buttonSkipCallback+0x64>
c0de863a:	4818      	ldr	r0, [pc, #96]	@ (c0de869c <buttonSkipCallback+0x6c>)
c0de863c:	eb09 0100 	add.w	r1, r9, r0
c0de8640:	2008      	movs	r0, #8
c0de8642:	f891 205a 	ldrb.w	r2, [r1, #90]	@ 0x5a
c0de8646:	b9fa      	cbnz	r2, c0de8688 <buttonSkipCallback+0x58>
c0de8648:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de864c:	2901      	cmp	r1, #1
c0de864e:	db1b      	blt.n	c0de8688 <buttonSkipCallback+0x58>
c0de8650:	3901      	subs	r1, #1
c0de8652:	2008      	movs	r0, #8
c0de8654:	e014      	b.n	c0de8680 <buttonSkipCallback+0x50>
c0de8656:	4811      	ldr	r0, [pc, #68]	@ (c0de869c <buttonSkipCallback+0x6c>)
c0de8658:	eb09 0100 	add.w	r1, r9, r0
c0de865c:	f891 105a 	ldrb.w	r1, [r1, #90]	@ 0x5a
c0de8660:	2908      	cmp	r1, #8
c0de8662:	d118      	bne.n	c0de8696 <buttonSkipCallback+0x66>
c0de8664:	eb09 0200 	add.w	r2, r9, r0
c0de8668:	2000      	movs	r0, #0
c0de866a:	f992 1031 	ldrsb.w	r1, [r2, #49]	@ 0x31
c0de866e:	2901      	cmp	r1, #1
c0de8670:	db0a      	blt.n	c0de8688 <buttonSkipCallback+0x58>
c0de8672:	f892 2030 	ldrb.w	r2, [r2, #48]	@ 0x30
c0de8676:	3a01      	subs	r2, #1
c0de8678:	428a      	cmp	r2, r1
c0de867a:	dd05      	ble.n	c0de8688 <buttonSkipCallback+0x58>
c0de867c:	3101      	adds	r1, #1
c0de867e:	2000      	movs	r0, #0
c0de8680:	4a06      	ldr	r2, [pc, #24]	@ (c0de869c <buttonSkipCallback+0x6c>)
c0de8682:	444a      	add	r2, r9
c0de8684:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de8688:	f7fe bfd4 	b.w	c0de7634 <displayStreamingReviewPage>
c0de868c:	4803      	ldr	r0, [pc, #12]	@ (c0de869c <buttonSkipCallback+0x6c>)
c0de868e:	4448      	add	r0, r9
c0de8690:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de8692:	4700      	bx	r0
c0de8694:	4770      	bx	lr
c0de8696:	2000      	movs	r0, #0
c0de8698:	f7fe bfcc 	b.w	c0de7634 <displayStreamingReviewPage>
c0de869c:	0000283c 	.word	0x0000283c

c0de86a0 <streamingReviewCallback>:
c0de86a0:	b5e0      	push	{r5, r6, r7, lr}
c0de86a2:	4608      	mov	r0, r1
c0de86a4:	f10d 0107 	add.w	r1, sp, #7
c0de86a8:	f7ff fbc2 	bl	c0de7e30 <buttonGenericCallback>
c0de86ac:	b150      	cbz	r0, c0de86c4 <streamingReviewCallback+0x24>
c0de86ae:	4806      	ldr	r0, [pc, #24]	@ (c0de86c8 <streamingReviewCallback+0x28>)
c0de86b0:	eb09 0100 	add.w	r1, r9, r0
c0de86b4:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de86b8:	f881 005a 	strb.w	r0, [r1, #90]	@ 0x5a
c0de86bc:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de86c0:	f7fe bfb8 	b.w	c0de7634 <displayStreamingReviewPage>
c0de86c4:	bd8c      	pop	{r2, r3, r7, pc}
c0de86c6:	bf00      	nop
c0de86c8:	0000283c 	.word	0x0000283c

c0de86cc <onChoiceAccept>:
c0de86cc:	4803      	ldr	r0, [pc, #12]	@ (c0de86dc <onChoiceAccept+0x10>)
c0de86ce:	4448      	add	r0, r9
c0de86d0:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de86d2:	b109      	cbz	r1, c0de86d8 <onChoiceAccept+0xc>
c0de86d4:	2001      	movs	r0, #1
c0de86d6:	4708      	bx	r1
c0de86d8:	4770      	bx	lr
c0de86da:	bf00      	nop
c0de86dc:	0000283c 	.word	0x0000283c

c0de86e0 <onChoiceReject>:
c0de86e0:	4803      	ldr	r0, [pc, #12]	@ (c0de86f0 <onChoiceReject+0x10>)
c0de86e2:	4448      	add	r0, r9
c0de86e4:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de86e6:	b109      	cbz	r1, c0de86ec <onChoiceReject+0xc>
c0de86e8:	2000      	movs	r0, #0
c0de86ea:	4708      	bx	r1
c0de86ec:	4770      	bx	lr
c0de86ee:	bf00      	nop
c0de86f0:	0000283c 	.word	0x0000283c

c0de86f4 <genericChoiceCallback>:
c0de86f4:	b5e0      	push	{r5, r6, r7, lr}
c0de86f6:	4608      	mov	r0, r1
c0de86f8:	f10d 0107 	add.w	r1, sp, #7
c0de86fc:	f7ff fb98 	bl	c0de7e30 <buttonGenericCallback>
c0de8700:	b128      	cbz	r0, c0de870e <genericChoiceCallback+0x1a>
c0de8702:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de8706:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de870a:	f7ff b871 	b.w	c0de77f0 <displayChoicePage>
c0de870e:	bd8c      	pop	{r2, r3, r7, pc}

c0de8710 <OUTLINED_FUNCTION_0>:
c0de8710:	460e      	mov	r6, r1
c0de8712:	2140      	movs	r1, #64	@ 0x40
c0de8714:	4698      	mov	r8, r3
c0de8716:	4615      	mov	r5, r2
c0de8718:	eb09 0400 	add.w	r4, r9, r0
c0de871c:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de8720:	f002 bdfc 	b.w	c0deb31c <__aeabi_memclr>

c0de8724 <OUTLINED_FUNCTION_2>:
c0de8724:	2200      	movs	r2, #0
c0de8726:	eb09 0100 	add.w	r1, r9, r0
c0de872a:	634a      	str	r2, [r1, #52]	@ 0x34
c0de872c:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de8730:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de8734:	3901      	subs	r1, #1
c0de8736:	4291      	cmp	r1, r2
c0de8738:	4770      	bx	lr

c0de873a <OUTLINED_FUNCTION_4>:
c0de873a:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de873e:	f7ff ba59 	b.w	c0de7bf4 <getContentElemAtIdx>

c0de8742 <OUTLINED_FUNCTION_5>:
c0de8742:	eb09 0600 	add.w	r6, r9, r0
c0de8746:	f106 0028 	add.w	r0, r6, #40	@ 0x28
c0de874a:	f002 bde7 	b.w	c0deb31c <__aeabi_memclr>

c0de874e <OUTLINED_FUNCTION_6>:
c0de874e:	3004      	adds	r0, #4
c0de8750:	f002 ba14 	b.w	c0deab7c <pic>

c0de8754 <OUTLINED_FUNCTION_7>:
c0de8754:	e9cd 6500 	strd	r6, r5, [sp]
c0de8758:	f7fe be50 	b.w	c0de73fc <drawStep>

c0de875c <OUTLINED_FUNCTION_8>:
c0de875c:	f997 1031 	ldrsb.w	r1, [r7, #49]	@ 0x31
c0de8760:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de8764:	4730      	bx	r6

c0de8766 <OUTLINED_FUNCTION_9>:
c0de8766:	4604      	mov	r4, r0
c0de8768:	2134      	movs	r1, #52	@ 0x34
c0de876a:	4628      	mov	r0, r5
c0de876c:	f002 bdd6 	b.w	c0deb31c <__aeabi_memclr>

c0de8770 <bip32_path_read>:
c0de8770:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de8774:	b10b      	cbz	r3, c0de877a <bip32_path_read+0xa>
c0de8776:	2b0a      	cmp	r3, #10
c0de8778:	d902      	bls.n	c0de8780 <bip32_path_read+0x10>
c0de877a:	2000      	movs	r0, #0
c0de877c:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de8780:	4692      	mov	sl, r2
c0de8782:	460e      	mov	r6, r1
c0de8784:	4683      	mov	fp, r0
c0de8786:	425f      	negs	r7, r3
c0de8788:	2500      	movs	r5, #0
c0de878a:	f04f 0800 	mov.w	r8, #0
c0de878e:	9301      	str	r3, [sp, #4]
c0de8790:	42af      	cmp	r7, r5
c0de8792:	d00c      	beq.n	c0de87ae <bip32_path_read+0x3e>
c0de8794:	f108 0404 	add.w	r4, r8, #4
c0de8798:	42b4      	cmp	r4, r6
c0de879a:	d808      	bhi.n	c0de87ae <bip32_path_read+0x3e>
c0de879c:	4658      	mov	r0, fp
c0de879e:	4641      	mov	r1, r8
c0de87a0:	f000 fb4c 	bl	c0de8e3c <read_u32_be>
c0de87a4:	f84a 0008 	str.w	r0, [sl, r8]
c0de87a8:	3d01      	subs	r5, #1
c0de87aa:	46a0      	mov	r8, r4
c0de87ac:	e7f0      	b.n	c0de8790 <bip32_path_read+0x20>
c0de87ae:	9a01      	ldr	r2, [sp, #4]
c0de87b0:	4269      	negs	r1, r5
c0de87b2:	2000      	movs	r0, #0
c0de87b4:	4291      	cmp	r1, r2
c0de87b6:	bf28      	it	cs
c0de87b8:	2001      	movcs	r0, #1
c0de87ba:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de87be <buffer_seek_cur>:
c0de87be:	6882      	ldr	r2, [r0, #8]
c0de87c0:	1889      	adds	r1, r1, r2
c0de87c2:	d205      	bcs.n	c0de87d0 <buffer_seek_cur+0x12>
c0de87c4:	6842      	ldr	r2, [r0, #4]
c0de87c6:	4291      	cmp	r1, r2
c0de87c8:	bf9e      	ittt	ls
c0de87ca:	6081      	strls	r1, [r0, #8]
c0de87cc:	2001      	movls	r0, #1
c0de87ce:	4770      	bxls	lr
c0de87d0:	2000      	movs	r0, #0
c0de87d2:	4770      	bx	lr

c0de87d4 <buffer_read_u8>:
c0de87d4:	b510      	push	{r4, lr}
c0de87d6:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de87da:	429a      	cmp	r2, r3
c0de87dc:	d00a      	beq.n	c0de87f4 <buffer_read_u8+0x20>
c0de87de:	6804      	ldr	r4, [r0, #0]
c0de87e0:	5ce4      	ldrb	r4, [r4, r3]
c0de87e2:	700c      	strb	r4, [r1, #0]
c0de87e4:	6881      	ldr	r1, [r0, #8]
c0de87e6:	3101      	adds	r1, #1
c0de87e8:	d206      	bcs.n	c0de87f8 <buffer_read_u8+0x24>
c0de87ea:	6844      	ldr	r4, [r0, #4]
c0de87ec:	42a1      	cmp	r1, r4
c0de87ee:	bf98      	it	ls
c0de87f0:	6081      	strls	r1, [r0, #8]
c0de87f2:	e001      	b.n	c0de87f8 <buffer_read_u8+0x24>
c0de87f4:	2000      	movs	r0, #0
c0de87f6:	7008      	strb	r0, [r1, #0]
c0de87f8:	1ad0      	subs	r0, r2, r3
c0de87fa:	bf18      	it	ne
c0de87fc:	2001      	movne	r0, #1
c0de87fe:	bd10      	pop	{r4, pc}

c0de8800 <buffer_read_u64>:
c0de8800:	b570      	push	{r4, r5, r6, lr}
c0de8802:	f000 f87d 	bl	c0de8900 <OUTLINED_FUNCTION_0>
c0de8806:	2e07      	cmp	r6, #7
c0de8808:	d904      	bls.n	c0de8814 <buffer_read_u64+0x14>
c0de880a:	6820      	ldr	r0, [r4, #0]
c0de880c:	b132      	cbz	r2, c0de881c <buffer_read_u64+0x1c>
c0de880e:	f000 fb4c 	bl	c0de8eaa <read_u64_le>
c0de8812:	e005      	b.n	c0de8820 <buffer_read_u64+0x20>
c0de8814:	2000      	movs	r0, #0
c0de8816:	e9c5 0000 	strd	r0, r0, [r5]
c0de881a:	e00c      	b.n	c0de8836 <buffer_read_u64+0x36>
c0de881c:	f000 fb1a 	bl	c0de8e54 <read_u64_be>
c0de8820:	e9c5 0100 	strd	r0, r1, [r5]
c0de8824:	68a0      	ldr	r0, [r4, #8]
c0de8826:	f110 0f09 	cmn.w	r0, #9
c0de882a:	d804      	bhi.n	c0de8836 <buffer_read_u64+0x36>
c0de882c:	6861      	ldr	r1, [r4, #4]
c0de882e:	3008      	adds	r0, #8
c0de8830:	4288      	cmp	r0, r1
c0de8832:	bf98      	it	ls
c0de8834:	60a0      	strls	r0, [r4, #8]
c0de8836:	2000      	movs	r0, #0
c0de8838:	2e07      	cmp	r6, #7
c0de883a:	bf88      	it	hi
c0de883c:	2001      	movhi	r0, #1
c0de883e:	bd70      	pop	{r4, r5, r6, pc}

c0de8840 <buffer_read_varint>:
c0de8840:	b5b0      	push	{r4, r5, r7, lr}
c0de8842:	4604      	mov	r4, r0
c0de8844:	460d      	mov	r5, r1
c0de8846:	6800      	ldr	r0, [r0, #0]
c0de8848:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de884c:	4410      	add	r0, r2
c0de884e:	1a89      	subs	r1, r1, r2
c0de8850:	462a      	mov	r2, r5
c0de8852:	f000 fb41 	bl	c0de8ed8 <varint_read>
c0de8856:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de885a:	dd0a      	ble.n	c0de8872 <buffer_read_varint+0x32>
c0de885c:	68a1      	ldr	r1, [r4, #8]
c0de885e:	1840      	adds	r0, r0, r1
c0de8860:	d205      	bcs.n	c0de886e <buffer_read_varint+0x2e>
c0de8862:	6861      	ldr	r1, [r4, #4]
c0de8864:	4288      	cmp	r0, r1
c0de8866:	bf9e      	ittt	ls
c0de8868:	60a0      	strls	r0, [r4, #8]
c0de886a:	2001      	movls	r0, #1
c0de886c:	bdb0      	popls	{r4, r5, r7, pc}
c0de886e:	2000      	movs	r0, #0
c0de8870:	bdb0      	pop	{r4, r5, r7, pc}
c0de8872:	2000      	movs	r0, #0
c0de8874:	e9c5 0000 	strd	r0, r0, [r5]
c0de8878:	bdb0      	pop	{r4, r5, r7, pc}

c0de887a <buffer_read_bip32_path>:
c0de887a:	b5b0      	push	{r4, r5, r7, lr}
c0de887c:	4604      	mov	r4, r0
c0de887e:	4615      	mov	r5, r2
c0de8880:	460a      	mov	r2, r1
c0de8882:	6800      	ldr	r0, [r0, #0]
c0de8884:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de8888:	4418      	add	r0, r3
c0de888a:	1ac9      	subs	r1, r1, r3
c0de888c:	462b      	mov	r3, r5
c0de888e:	f7ff ff6f 	bl	c0de8770 <bip32_path_read>
c0de8892:	b140      	cbz	r0, c0de88a6 <buffer_read_bip32_path+0x2c>
c0de8894:	68a2      	ldr	r2, [r4, #8]
c0de8896:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de889a:	4291      	cmp	r1, r2
c0de889c:	d303      	bcc.n	c0de88a6 <buffer_read_bip32_path+0x2c>
c0de889e:	6862      	ldr	r2, [r4, #4]
c0de88a0:	4291      	cmp	r1, r2
c0de88a2:	bf98      	it	ls
c0de88a4:	60a1      	strls	r1, [r4, #8]
c0de88a6:	bdb0      	pop	{r4, r5, r7, pc}

c0de88a8 <buffer_copy>:
c0de88a8:	b5b0      	push	{r4, r5, r7, lr}
c0de88aa:	4614      	mov	r4, r2
c0de88ac:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de88b0:	1a9d      	subs	r5, r3, r2
c0de88b2:	42a5      	cmp	r5, r4
c0de88b4:	d806      	bhi.n	c0de88c4 <buffer_copy+0x1c>
c0de88b6:	6800      	ldr	r0, [r0, #0]
c0de88b8:	4402      	add	r2, r0
c0de88ba:	4608      	mov	r0, r1
c0de88bc:	4611      	mov	r1, r2
c0de88be:	462a      	mov	r2, r5
c0de88c0:	f002 fd31 	bl	c0deb326 <__aeabi_memmove>
c0de88c4:	2000      	movs	r0, #0
c0de88c6:	42a5      	cmp	r5, r4
c0de88c8:	bf98      	it	ls
c0de88ca:	2001      	movls	r0, #1
c0de88cc:	bdb0      	pop	{r4, r5, r7, pc}

c0de88ce <buffer_move>:
c0de88ce:	b5b0      	push	{r4, r5, r7, lr}
c0de88d0:	4615      	mov	r5, r2
c0de88d2:	4604      	mov	r4, r0
c0de88d4:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de88d8:	1a12      	subs	r2, r2, r0
c0de88da:	42aa      	cmp	r2, r5
c0de88dc:	bf84      	itt	hi
c0de88de:	2000      	movhi	r0, #0
c0de88e0:	bdb0      	pophi	{r4, r5, r7, pc}
c0de88e2:	6823      	ldr	r3, [r4, #0]
c0de88e4:	4403      	add	r3, r0
c0de88e6:	4608      	mov	r0, r1
c0de88e8:	4619      	mov	r1, r3
c0de88ea:	f002 fd1c 	bl	c0deb326 <__aeabi_memmove>
c0de88ee:	68a0      	ldr	r0, [r4, #8]
c0de88f0:	1940      	adds	r0, r0, r5
c0de88f2:	d203      	bcs.n	c0de88fc <buffer_move+0x2e>
c0de88f4:	6861      	ldr	r1, [r4, #4]
c0de88f6:	4288      	cmp	r0, r1
c0de88f8:	bf98      	it	ls
c0de88fa:	60a0      	strls	r0, [r4, #8]
c0de88fc:	2001      	movs	r0, #1
c0de88fe:	bdb0      	pop	{r4, r5, r7, pc}

c0de8900 <OUTLINED_FUNCTION_0>:
c0de8900:	4604      	mov	r4, r0
c0de8902:	460d      	mov	r5, r1
c0de8904:	6840      	ldr	r0, [r0, #4]
c0de8906:	68a1      	ldr	r1, [r4, #8]
c0de8908:	1a46      	subs	r6, r0, r1
c0de890a:	4770      	bx	lr

c0de890c <bip32_derive_with_seed_init_privkey_256>:
c0de890c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de8910:	b095      	sub	sp, #84	@ 0x54
c0de8912:	460d      	mov	r5, r1
c0de8914:	4607      	mov	r7, r0
c0de8916:	a904      	add	r1, sp, #16
c0de8918:	469a      	mov	sl, r3
c0de891a:	4614      	mov	r4, r2
c0de891c:	4628      	mov	r0, r5
c0de891e:	f002 faa1 	bl	c0deae64 <cx_ecdomain_parameters_length>
c0de8922:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de8926:	4606      	mov	r6, r0
c0de8928:	b9e0      	cbnz	r0, c0de8964 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de892a:	9804      	ldr	r0, [sp, #16]
c0de892c:	2820      	cmp	r0, #32
c0de892e:	d117      	bne.n	c0de8960 <bip32_derive_with_seed_init_privkey_256+0x54>
c0de8930:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de8932:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de8936:	ab05      	add	r3, sp, #20
c0de8938:	e9cd 3200 	strd	r3, r2, [sp]
c0de893c:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de8940:	4638      	mov	r0, r7
c0de8942:	4629      	mov	r1, r5
c0de8944:	4622      	mov	r2, r4
c0de8946:	4653      	mov	r3, sl
c0de8948:	f000 f818 	bl	c0de897c <os_derive_bip32_with_seed_no_throw>
c0de894c:	4606      	mov	r6, r0
c0de894e:	b948      	cbnz	r0, c0de8964 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de8950:	9a04      	ldr	r2, [sp, #16]
c0de8952:	a905      	add	r1, sp, #20
c0de8954:	4628      	mov	r0, r5
c0de8956:	4643      	mov	r3, r8
c0de8958:	f001 fabd 	bl	c0de9ed6 <cx_ecfp_init_private_key_no_throw>
c0de895c:	4606      	mov	r6, r0
c0de895e:	e001      	b.n	c0de8964 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de8960:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de8964:	a805      	add	r0, sp, #20
c0de8966:	2140      	movs	r1, #64	@ 0x40
c0de8968:	f002 fce4 	bl	c0deb334 <explicit_bzero>
c0de896c:	b116      	cbz	r6, c0de8974 <bip32_derive_with_seed_init_privkey_256+0x68>
c0de896e:	4640      	mov	r0, r8
c0de8970:	f000 f89f 	bl	c0de8ab2 <OUTLINED_FUNCTION_0>
c0de8974:	4630      	mov	r0, r6
c0de8976:	b015      	add	sp, #84	@ 0x54
c0de8978:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de897c <os_derive_bip32_with_seed_no_throw>:
c0de897c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de8980:	b090      	sub	sp, #64	@ 0x40
c0de8982:	f10d 0810 	add.w	r8, sp, #16
c0de8986:	4607      	mov	r7, r0
c0de8988:	469b      	mov	fp, r3
c0de898a:	4616      	mov	r6, r2
c0de898c:	460c      	mov	r4, r1
c0de898e:	4640      	mov	r0, r8
c0de8990:	f002 fd06 	bl	c0deb3a0 <setjmp>
c0de8994:	b285      	uxth	r5, r0
c0de8996:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de899a:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de899e:	b155      	cbz	r5, c0de89b6 <os_derive_bip32_with_seed_no_throw+0x3a>
c0de89a0:	2000      	movs	r0, #0
c0de89a2:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de89a6:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de89a8:	f002 faea 	bl	c0deaf80 <try_context_set>
c0de89ac:	2140      	movs	r1, #64	@ 0x40
c0de89ae:	4650      	mov	r0, sl
c0de89b0:	f002 fcc0 	bl	c0deb334 <explicit_bzero>
c0de89b4:	e012      	b.n	c0de89dc <os_derive_bip32_with_seed_no_throw+0x60>
c0de89b6:	a804      	add	r0, sp, #16
c0de89b8:	f002 fae2 	bl	c0deaf80 <try_context_set>
c0de89bc:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de89be:	900e      	str	r0, [sp, #56]	@ 0x38
c0de89c0:	4668      	mov	r0, sp
c0de89c2:	4632      	mov	r2, r6
c0de89c4:	465b      	mov	r3, fp
c0de89c6:	f8c0 a000 	str.w	sl, [r0]
c0de89ca:	6041      	str	r1, [r0, #4]
c0de89cc:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de89ce:	6081      	str	r1, [r0, #8]
c0de89d0:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de89d2:	60c1      	str	r1, [r0, #12]
c0de89d4:	4638      	mov	r0, r7
c0de89d6:	4621      	mov	r1, r4
c0de89d8:	f002 fa4e 	bl	c0deae78 <os_perso_derive_node_with_seed_key>
c0de89dc:	f002 fac8 	bl	c0deaf70 <try_context_get>
c0de89e0:	4540      	cmp	r0, r8
c0de89e2:	d102      	bne.n	c0de89ea <os_derive_bip32_with_seed_no_throw+0x6e>
c0de89e4:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de89e6:	f002 facb 	bl	c0deaf80 <try_context_set>
c0de89ea:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de89ee:	b918      	cbnz	r0, c0de89f8 <os_derive_bip32_with_seed_no_throw+0x7c>
c0de89f0:	4628      	mov	r0, r5
c0de89f2:	b010      	add	sp, #64	@ 0x40
c0de89f4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de89f8:	f001 fa94 	bl	c0de9f24 <os_longjmp>

c0de89fc <bip32_derive_with_seed_get_pubkey_256>:
c0de89fc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de89fe:	b0a1      	sub	sp, #132	@ 0x84
c0de8a00:	460e      	mov	r6, r1
c0de8a02:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de8a04:	9103      	str	r1, [sp, #12]
c0de8a06:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de8a08:	9102      	str	r1, [sp, #8]
c0de8a0a:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de8a0c:	9101      	str	r1, [sp, #4]
c0de8a0e:	a917      	add	r1, sp, #92	@ 0x5c
c0de8a10:	9100      	str	r1, [sp, #0]
c0de8a12:	4631      	mov	r1, r6
c0de8a14:	f7ff ff7a 	bl	c0de890c <bip32_derive_with_seed_init_privkey_256>
c0de8a18:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de8a1a:	4605      	mov	r5, r0
c0de8a1c:	b9b8      	cbnz	r0, c0de8a4e <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de8a1e:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de8a20:	2301      	movs	r3, #1
c0de8a22:	9000      	str	r0, [sp, #0]
c0de8a24:	af04      	add	r7, sp, #16
c0de8a26:	aa17      	add	r2, sp, #92	@ 0x5c
c0de8a28:	4630      	mov	r0, r6
c0de8a2a:	4639      	mov	r1, r7
c0de8a2c:	f001 fa4e 	bl	c0de9ecc <cx_ecfp_generate_pair2_no_throw>
c0de8a30:	4605      	mov	r5, r0
c0de8a32:	b960      	cbnz	r0, c0de8a4e <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de8a34:	9805      	ldr	r0, [sp, #20]
c0de8a36:	2841      	cmp	r0, #65	@ 0x41
c0de8a38:	d107      	bne.n	c0de8a4a <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de8a3a:	f107 0108 	add.w	r1, r7, #8
c0de8a3e:	4620      	mov	r0, r4
c0de8a40:	2241      	movs	r2, #65	@ 0x41
c0de8a42:	f002 fc6e 	bl	c0deb322 <__aeabi_memcpy>
c0de8a46:	2500      	movs	r5, #0
c0de8a48:	e001      	b.n	c0de8a4e <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de8a4a:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de8a4e:	a817      	add	r0, sp, #92	@ 0x5c
c0de8a50:	f000 f82f 	bl	c0de8ab2 <OUTLINED_FUNCTION_0>
c0de8a54:	b11d      	cbz	r5, c0de8a5e <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de8a56:	4620      	mov	r0, r4
c0de8a58:	2141      	movs	r1, #65	@ 0x41
c0de8a5a:	f002 fc6b 	bl	c0deb334 <explicit_bzero>
c0de8a5e:	4628      	mov	r0, r5
c0de8a60:	b021      	add	sp, #132	@ 0x84
c0de8a62:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de8a64 <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de8a64:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de8a66:	b08f      	sub	sp, #60	@ 0x3c
c0de8a68:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de8a6a:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de8a6c:	683c      	ldr	r4, [r7, #0]
c0de8a6e:	9503      	str	r5, [sp, #12]
c0de8a70:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de8a72:	9502      	str	r5, [sp, #8]
c0de8a74:	2500      	movs	r5, #0
c0de8a76:	9501      	str	r5, [sp, #4]
c0de8a78:	ad05      	add	r5, sp, #20
c0de8a7a:	9500      	str	r5, [sp, #0]
c0de8a7c:	f7ff ff46 	bl	c0de890c <bip32_derive_with_seed_init_privkey_256>
c0de8a80:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de8a82:	4606      	mov	r6, r0
c0de8a84:	b950      	cbnz	r0, c0de8a9c <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de8a86:	ae14      	add	r6, sp, #80	@ 0x50
c0de8a88:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de8a8a:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de8a8c:	e9cd 6500 	strd	r6, r5, [sp]
c0de8a90:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de8a94:	a805      	add	r0, sp, #20
c0de8a96:	f001 fa14 	bl	c0de9ec2 <cx_ecdsa_sign_no_throw>
c0de8a9a:	4606      	mov	r6, r0
c0de8a9c:	a805      	add	r0, sp, #20
c0de8a9e:	f000 f808 	bl	c0de8ab2 <OUTLINED_FUNCTION_0>
c0de8aa2:	b11e      	cbz	r6, c0de8aac <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de8aa4:	4628      	mov	r0, r5
c0de8aa6:	4621      	mov	r1, r4
c0de8aa8:	f002 fc44 	bl	c0deb334 <explicit_bzero>
c0de8aac:	4630      	mov	r0, r6
c0de8aae:	b00f      	add	sp, #60	@ 0x3c
c0de8ab0:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de8ab2 <OUTLINED_FUNCTION_0>:
c0de8ab2:	2128      	movs	r1, #40	@ 0x28
c0de8ab4:	f002 bc3e 	b.w	c0deb334 <explicit_bzero>

c0de8ab8 <format_u64>:
c0de8ab8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de8abc:	b1f9      	cbz	r1, c0de8afe <format_u64+0x46>
c0de8abe:	4615      	mov	r5, r2
c0de8ac0:	4604      	mov	r4, r0
c0de8ac2:	f1a1 0801 	sub.w	r8, r1, #1
c0de8ac6:	2700      	movs	r7, #0
c0de8ac8:	2600      	movs	r6, #0
c0de8aca:	f1b5 000a 	subs.w	r0, r5, #10
c0de8ace:	f173 0000 	sbcs.w	r0, r3, #0
c0de8ad2:	d316      	bcc.n	c0de8b02 <format_u64+0x4a>
c0de8ad4:	4619      	mov	r1, r3
c0de8ad6:	4628      	mov	r0, r5
c0de8ad8:	220a      	movs	r2, #10
c0de8ada:	2300      	movs	r3, #0
c0de8adc:	f002 fa92 	bl	c0deb004 <__aeabi_uldivmod>
c0de8ae0:	460b      	mov	r3, r1
c0de8ae2:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de8ae6:	1cba      	adds	r2, r7, #2
c0de8ae8:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de8aec:	4605      	mov	r5, r0
c0de8aee:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de8af2:	55e1      	strb	r1, [r4, r7]
c0de8af4:	1c79      	adds	r1, r7, #1
c0de8af6:	4542      	cmp	r2, r8
c0de8af8:	460f      	mov	r7, r1
c0de8afa:	d9e6      	bls.n	c0de8aca <format_u64+0x12>
c0de8afc:	e012      	b.n	c0de8b24 <format_u64+0x6c>
c0de8afe:	2600      	movs	r6, #0
c0de8b00:	e010      	b.n	c0de8b24 <format_u64+0x6c>
c0de8b02:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de8b06:	19e1      	adds	r1, r4, r7
c0de8b08:	55e0      	strb	r0, [r4, r7]
c0de8b0a:	2000      	movs	r0, #0
c0de8b0c:	7048      	strb	r0, [r1, #1]
c0de8b0e:	b2c1      	uxtb	r1, r0
c0de8b10:	428f      	cmp	r7, r1
c0de8b12:	d906      	bls.n	c0de8b22 <format_u64+0x6a>
c0de8b14:	5c62      	ldrb	r2, [r4, r1]
c0de8b16:	5de3      	ldrb	r3, [r4, r7]
c0de8b18:	3001      	adds	r0, #1
c0de8b1a:	5463      	strb	r3, [r4, r1]
c0de8b1c:	55e2      	strb	r2, [r4, r7]
c0de8b1e:	3f01      	subs	r7, #1
c0de8b20:	e7f5      	b.n	c0de8b0e <format_u64+0x56>
c0de8b22:	2601      	movs	r6, #1
c0de8b24:	4630      	mov	r0, r6
c0de8b26:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de8b2a <format_fpu64>:
c0de8b2a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de8b2e:	b086      	sub	sp, #24
c0de8b30:	466c      	mov	r4, sp
c0de8b32:	4688      	mov	r8, r1
c0de8b34:	4605      	mov	r5, r0
c0de8b36:	2115      	movs	r1, #21
c0de8b38:	461e      	mov	r6, r3
c0de8b3a:	4617      	mov	r7, r2
c0de8b3c:	4620      	mov	r0, r4
c0de8b3e:	f002 fbed 	bl	c0deb31c <__aeabi_memclr>
c0de8b42:	4620      	mov	r0, r4
c0de8b44:	2115      	movs	r1, #21
c0de8b46:	463a      	mov	r2, r7
c0de8b48:	4633      	mov	r3, r6
c0de8b4a:	f7ff ffb5 	bl	c0de8ab8 <format_u64>
c0de8b4e:	b340      	cbz	r0, c0de8ba2 <format_fpu64+0x78>
c0de8b50:	466f      	mov	r7, sp
c0de8b52:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de8b54:	4638      	mov	r0, r7
c0de8b56:	f002 fc3b 	bl	c0deb3d0 <strlen>
c0de8b5a:	42b0      	cmp	r0, r6
c0de8b5c:	d910      	bls.n	c0de8b80 <format_fpu64+0x56>
c0de8b5e:	1831      	adds	r1, r6, r0
c0de8b60:	3101      	adds	r1, #1
c0de8b62:	4541      	cmp	r1, r8
c0de8b64:	d21d      	bcs.n	c0de8ba2 <format_fpu64+0x78>
c0de8b66:	1b84      	subs	r4, r0, r6
c0de8b68:	4628      	mov	r0, r5
c0de8b6a:	4639      	mov	r1, r7
c0de8b6c:	4622      	mov	r2, r4
c0de8b6e:	f002 fbd8 	bl	c0deb322 <__aeabi_memcpy>
c0de8b72:	1928      	adds	r0, r5, r4
c0de8b74:	212e      	movs	r1, #46	@ 0x2e
c0de8b76:	4632      	mov	r2, r6
c0de8b78:	f800 1b01 	strb.w	r1, [r0], #1
c0de8b7c:	1939      	adds	r1, r7, r4
c0de8b7e:	e015      	b.n	c0de8bac <format_fpu64+0x82>
c0de8b80:	1a32      	subs	r2, r6, r0
c0de8b82:	1c91      	adds	r1, r2, #2
c0de8b84:	4541      	cmp	r1, r8
c0de8b86:	d20c      	bcs.n	c0de8ba2 <format_fpu64+0x78>
c0de8b88:	202e      	movs	r0, #46	@ 0x2e
c0de8b8a:	2330      	movs	r3, #48	@ 0x30
c0de8b8c:	2400      	movs	r4, #0
c0de8b8e:	7068      	strb	r0, [r5, #1]
c0de8b90:	1ca8      	adds	r0, r5, #2
c0de8b92:	702b      	strb	r3, [r5, #0]
c0de8b94:	b2a5      	uxth	r5, r4
c0de8b96:	42aa      	cmp	r2, r5
c0de8b98:	d905      	bls.n	c0de8ba6 <format_fpu64+0x7c>
c0de8b9a:	f800 3b01 	strb.w	r3, [r0], #1
c0de8b9e:	3401      	adds	r4, #1
c0de8ba0:	e7f8      	b.n	c0de8b94 <format_fpu64+0x6a>
c0de8ba2:	2000      	movs	r0, #0
c0de8ba4:	e005      	b.n	c0de8bb2 <format_fpu64+0x88>
c0de8ba6:	eba8 0201 	sub.w	r2, r8, r1
c0de8baa:	4669      	mov	r1, sp
c0de8bac:	f002 fc18 	bl	c0deb3e0 <strncpy>
c0de8bb0:	2001      	movs	r0, #1
c0de8bb2:	b006      	add	sp, #24
c0de8bb4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de8bb8 <format_hex>:
c0de8bb8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de8bba:	4604      	mov	r4, r0
c0de8bbc:	0048      	lsls	r0, r1, #1
c0de8bbe:	f100 0c01 	add.w	ip, r0, #1
c0de8bc2:	459c      	cmp	ip, r3
c0de8bc4:	d902      	bls.n	c0de8bcc <format_hex+0x14>
c0de8bc6:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de8bca:	e018      	b.n	c0de8bfe <format_hex+0x46>
c0de8bcc:	480d      	ldr	r0, [pc, #52]	@ (c0de8c04 <format_hex+0x4c>)
c0de8bce:	2500      	movs	r5, #0
c0de8bd0:	4478      	add	r0, pc
c0de8bd2:	b191      	cbz	r1, c0de8bfa <format_hex+0x42>
c0de8bd4:	1cef      	adds	r7, r5, #3
c0de8bd6:	429f      	cmp	r7, r3
c0de8bd8:	d80d      	bhi.n	c0de8bf6 <format_hex+0x3e>
c0de8bda:	7827      	ldrb	r7, [r4, #0]
c0de8bdc:	3901      	subs	r1, #1
c0de8bde:	093f      	lsrs	r7, r7, #4
c0de8be0:	5dc7      	ldrb	r7, [r0, r7]
c0de8be2:	5557      	strb	r7, [r2, r5]
c0de8be4:	1957      	adds	r7, r2, r5
c0de8be6:	3502      	adds	r5, #2
c0de8be8:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de8bec:	f006 060f 	and.w	r6, r6, #15
c0de8bf0:	5d86      	ldrb	r6, [r0, r6]
c0de8bf2:	707e      	strb	r6, [r7, #1]
c0de8bf4:	e7ed      	b.n	c0de8bd2 <format_hex+0x1a>
c0de8bf6:	f105 0c01 	add.w	ip, r5, #1
c0de8bfa:	2000      	movs	r0, #0
c0de8bfc:	5550      	strb	r0, [r2, r5]
c0de8bfe:	4660      	mov	r0, ip
c0de8c00:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de8c02:	bf00      	nop
c0de8c04:	00002c57 	.word	0x00002c57

c0de8c08 <app_ticker_event_callback>:
c0de8c08:	4770      	bx	lr
	...

c0de8c0c <io_event>:
c0de8c0c:	b580      	push	{r7, lr}
c0de8c0e:	4815      	ldr	r0, [pc, #84]	@ (c0de8c64 <io_event+0x58>)
c0de8c10:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de8c14:	2915      	cmp	r1, #21
c0de8c16:	d010      	beq.n	c0de8c3a <io_event+0x2e>
c0de8c18:	290c      	cmp	r1, #12
c0de8c1a:	d019      	beq.n	c0de8c50 <io_event+0x44>
c0de8c1c:	290d      	cmp	r1, #13
c0de8c1e:	d015      	beq.n	c0de8c4c <io_event+0x40>
c0de8c20:	290e      	cmp	r1, #14
c0de8c22:	d005      	beq.n	c0de8c30 <io_event+0x24>
c0de8c24:	2905      	cmp	r1, #5
c0de8c26:	d111      	bne.n	c0de8c4c <io_event+0x40>
c0de8c28:	4448      	add	r0, r9
c0de8c2a:	f001 f8b7 	bl	c0de9d9c <ux_process_button_event>
c0de8c2e:	e00f      	b.n	c0de8c50 <io_event+0x44>
c0de8c30:	f7ff ffea 	bl	c0de8c08 <app_ticker_event_callback>
c0de8c34:	f001 f8f6 	bl	c0de9e24 <ux_process_ticker_event>
c0de8c38:	e00a      	b.n	c0de8c50 <io_event+0x44>
c0de8c3a:	490b      	ldr	r1, [pc, #44]	@ (c0de8c68 <io_event+0x5c>)
c0de8c3c:	4449      	add	r1, r9
c0de8c3e:	7989      	ldrb	r1, [r1, #6]
c0de8c40:	2901      	cmp	r1, #1
c0de8c42:	d103      	bne.n	c0de8c4c <io_event+0x40>
c0de8c44:	4448      	add	r0, r9
c0de8c46:	7980      	ldrb	r0, [r0, #6]
c0de8c48:	0700      	lsls	r0, r0, #28
c0de8c4a:	d508      	bpl.n	c0de8c5e <io_event+0x52>
c0de8c4c:	f001 f902 	bl	c0de9e54 <ux_process_default_event>
c0de8c50:	f002 f97a 	bl	c0deaf48 <io_seph_is_status_sent>
c0de8c54:	b908      	cbnz	r0, c0de8c5a <io_event+0x4e>
c0de8c56:	f001 f96b 	bl	c0de9f30 <io_seproxyhal_general_status>
c0de8c5a:	2001      	movs	r0, #1
c0de8c5c:	bd80      	pop	{r7, pc}
c0de8c5e:	2005      	movs	r0, #5
c0de8c60:	f001 f960 	bl	c0de9f24 <os_longjmp>
c0de8c64:	000028a4 	.word	0x000028a4
c0de8c68:	00002bc8 	.word	0x00002bc8

c0de8c6c <io_exchange_al>:
c0de8c6c:	b510      	push	{r4, lr}
c0de8c6e:	4604      	mov	r4, r0
c0de8c70:	f000 0003 	and.w	r0, r0, #3
c0de8c74:	2801      	cmp	r0, #1
c0de8c76:	d00a      	beq.n	c0de8c8e <io_exchange_al+0x22>
c0de8c78:	2802      	cmp	r0, #2
c0de8c7a:	d111      	bne.n	c0de8ca0 <io_exchange_al+0x34>
c0de8c7c:	480a      	ldr	r0, [pc, #40]	@ (c0de8ca8 <io_exchange_al+0x3c>)
c0de8c7e:	4448      	add	r0, r9
c0de8c80:	b139      	cbz	r1, c0de8c92 <io_exchange_al+0x26>
c0de8c82:	f002 f957 	bl	c0deaf34 <io_seph_send>
c0de8c86:	0620      	lsls	r0, r4, #24
c0de8c88:	bf48      	it	mi
c0de8c8a:	f001 ff9f 	blmi	c0deabcc <halt>
c0de8c8e:	2000      	movs	r0, #0
c0de8c90:	bd10      	pop	{r4, pc}
c0de8c92:	f44f 7182 	mov.w	r1, #260	@ 0x104
c0de8c96:	2200      	movs	r2, #0
c0de8c98:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de8c9c:	f002 b95c 	b.w	c0deaf58 <io_seph_recv>
c0de8ca0:	2002      	movs	r0, #2
c0de8ca2:	f001 f93f 	bl	c0de9f24 <os_longjmp>
c0de8ca6:	bf00      	nop
c0de8ca8:	00002ac4 	.word	0x00002ac4

c0de8cac <io_init>:
c0de8cac:	4803      	ldr	r0, [pc, #12]	@ (c0de8cbc <io_init+0x10>)
c0de8cae:	2100      	movs	r1, #0
c0de8cb0:	f809 1000 	strb.w	r1, [r9, r0]
c0de8cb4:	4448      	add	r0, r9
c0de8cb6:	6041      	str	r1, [r0, #4]
c0de8cb8:	4770      	bx	lr
c0de8cba:	bf00      	nop
c0de8cbc:	000029d0 	.word	0x000029d0

c0de8cc0 <io_recv_command>:
c0de8cc0:	b510      	push	{r4, lr}
c0de8cc2:	4c0d      	ldr	r4, [pc, #52]	@ (c0de8cf8 <io_recv_command+0x38>)
c0de8cc4:	f819 1004 	ldrb.w	r1, [r9, r4]
c0de8cc8:	b151      	cbz	r1, c0de8ce0 <io_recv_command+0x20>
c0de8cca:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de8cce:	2902      	cmp	r1, #2
c0de8cd0:	d00e      	beq.n	c0de8cf0 <io_recv_command+0x30>
c0de8cd2:	2901      	cmp	r1, #1
c0de8cd4:	d10f      	bne.n	c0de8cf6 <io_recv_command+0x36>
c0de8cd6:	2002      	movs	r0, #2
c0de8cd8:	f809 0004 	strb.w	r0, [r9, r4]
c0de8cdc:	2010      	movs	r0, #16
c0de8cde:	e000      	b.n	c0de8ce2 <io_recv_command+0x22>
c0de8ce0:	2004      	movs	r0, #4
c0de8ce2:	eb09 0104 	add.w	r1, r9, r4
c0de8ce6:	8889      	ldrh	r1, [r1, #4]
c0de8ce8:	f001 fa94 	bl	c0dea214 <io_exchange>
c0de8cec:	2101      	movs	r1, #1
c0de8cee:	e000      	b.n	c0de8cf2 <io_recv_command+0x32>
c0de8cf0:	2100      	movs	r1, #0
c0de8cf2:	f809 1004 	strb.w	r1, [r9, r4]
c0de8cf6:	bd10      	pop	{r4, pc}
c0de8cf8:	000029d0 	.word	0x000029d0

c0de8cfc <io_send_response_buffers>:
c0de8cfc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de8d00:	4f23      	ldr	r7, [pc, #140]	@ (c0de8d90 <io_send_response_buffers+0x94>)
c0de8d02:	4c24      	ldr	r4, [pc, #144]	@ (c0de8d94 <io_send_response_buffers+0x98>)
c0de8d04:	4690      	mov	r8, r2
c0de8d06:	460e      	mov	r6, r1
c0de8d08:	4605      	mov	r5, r0
c0de8d0a:	2100      	movs	r1, #0
c0de8d0c:	eb09 0007 	add.w	r0, r9, r7
c0de8d10:	6041      	str	r1, [r0, #4]
c0de8d12:	b1e5      	cbz	r5, c0de8d4e <io_send_response_buffers+0x52>
c0de8d14:	b1de      	cbz	r6, c0de8d4e <io_send_response_buffers+0x52>
c0de8d16:	2100      	movs	r1, #0
c0de8d18:	b1ce      	cbz	r6, c0de8d4e <io_send_response_buffers+0x52>
c0de8d1a:	eb09 0004 	add.w	r0, r9, r4
c0de8d1e:	f5c1 7281 	rsb	r2, r1, #258	@ 0x102
c0de8d22:	1843      	adds	r3, r0, r1
c0de8d24:	4628      	mov	r0, r5
c0de8d26:	4619      	mov	r1, r3
c0de8d28:	f7ff fdbe 	bl	c0de88a8 <buffer_copy>
c0de8d2c:	b150      	cbz	r0, c0de8d44 <io_send_response_buffers+0x48>
c0de8d2e:	e9d5 2301 	ldrd	r2, r3, [r5, #4]
c0de8d32:	eb09 0007 	add.w	r0, r9, r7
c0de8d36:	350c      	adds	r5, #12
c0de8d38:	3e01      	subs	r6, #1
c0de8d3a:	6841      	ldr	r1, [r0, #4]
c0de8d3c:	1ad2      	subs	r2, r2, r3
c0de8d3e:	4411      	add	r1, r2
c0de8d40:	6041      	str	r1, [r0, #4]
c0de8d42:	e7e9      	b.n	c0de8d18 <io_send_response_buffers+0x1c>
c0de8d44:	f44f 4830 	mov.w	r8, #45056	@ 0xb000
c0de8d48:	2500      	movs	r5, #0
c0de8d4a:	2600      	movs	r6, #0
c0de8d4c:	e7dd      	b.n	c0de8d0a <io_send_response_buffers+0xe>
c0de8d4e:	eb09 0004 	add.w	r0, r9, r4
c0de8d52:	fa1f f288 	uxth.w	r2, r8
c0de8d56:	f000 f8ed 	bl	c0de8f34 <write_u16_be>
c0de8d5a:	eb09 0107 	add.w	r1, r9, r7
c0de8d5e:	6848      	ldr	r0, [r1, #4]
c0de8d60:	3002      	adds	r0, #2
c0de8d62:	6048      	str	r0, [r1, #4]
c0de8d64:	f819 1007 	ldrb.w	r1, [r9, r7]
c0de8d68:	3901      	subs	r1, #1
c0de8d6a:	2901      	cmp	r1, #1
c0de8d6c:	bf84      	itt	hi
c0de8d6e:	f04f 30ff 	movhi.w	r0, #4294967295	@ 0xffffffff
c0de8d72:	e8bd 81f0 	ldmiahi.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de8d76:	b281      	uxth	r1, r0
c0de8d78:	2020      	movs	r0, #32
c0de8d7a:	f001 fa4b 	bl	c0dea214 <io_exchange>
c0de8d7e:	2100      	movs	r1, #0
c0de8d80:	eb09 0207 	add.w	r2, r9, r7
c0de8d84:	f809 1007 	strb.w	r1, [r9, r7]
c0de8d88:	6051      	str	r1, [r2, #4]
c0de8d8a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de8d8e:	bf00      	nop
c0de8d90:	000029d0 	.word	0x000029d0
c0de8d94:	00002ac4 	.word	0x00002ac4

c0de8d98 <app_exit>:
c0de8d98:	20ff      	movs	r0, #255	@ 0xff
c0de8d9a:	f002 f8c1 	bl	c0deaf20 <os_sched_exit>

c0de8d9e <common_app_init>:
c0de8d9e:	b580      	push	{r7, lr}
c0de8da0:	f7fc fb96 	bl	c0de54d0 <nbgl_objInit>
c0de8da4:	f001 f9c8 	bl	c0dea138 <io_seproxyhal_init>
c0de8da8:	2000      	movs	r0, #0
c0de8daa:	f000 ffaf 	bl	c0de9d0c <USB_power>
c0de8dae:	2001      	movs	r0, #1
c0de8db0:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de8db4:	f000 bfaa 	b.w	c0de9d0c <USB_power>

c0de8db8 <standalone_app_main>:
c0de8db8:	b510      	push	{r4, lr}
c0de8dba:	b08c      	sub	sp, #48	@ 0x30
c0de8dbc:	466c      	mov	r4, sp
c0de8dbe:	4620      	mov	r0, r4
c0de8dc0:	f002 faee 	bl	c0deb3a0 <setjmp>
c0de8dc4:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de8dc8:	0400      	lsls	r0, r0, #16
c0de8dca:	d108      	bne.n	c0de8dde <standalone_app_main+0x26>
c0de8dcc:	4668      	mov	r0, sp
c0de8dce:	f002 f8d7 	bl	c0deaf80 <try_context_set>
c0de8dd2:	900a      	str	r0, [sp, #40]	@ 0x28
c0de8dd4:	f7ff ffe3 	bl	c0de8d9e <common_app_init>
c0de8dd8:	f7f7 fa62 	bl	c0de02a0 <app_main>
c0de8ddc:	e005      	b.n	c0de8dea <standalone_app_main+0x32>
c0de8dde:	2000      	movs	r0, #0
c0de8de0:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de8de4:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de8de6:	f002 f8cb 	bl	c0deaf80 <try_context_set>
c0de8dea:	f002 f8c1 	bl	c0deaf70 <try_context_get>
c0de8dee:	42a0      	cmp	r0, r4
c0de8df0:	d102      	bne.n	c0de8df8 <standalone_app_main+0x40>
c0de8df2:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de8df4:	f002 f8c4 	bl	c0deaf80 <try_context_set>
c0de8df8:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de8dfc:	b908      	cbnz	r0, c0de8e02 <standalone_app_main+0x4a>
c0de8dfe:	f7ff ffcb 	bl	c0de8d98 <app_exit>
c0de8e02:	f001 f88f 	bl	c0de9f24 <os_longjmp>

c0de8e06 <apdu_parser>:
c0de8e06:	2a04      	cmp	r2, #4
c0de8e08:	d316      	bcc.n	c0de8e38 <apdu_parser+0x32>
c0de8e0a:	d102      	bne.n	c0de8e12 <apdu_parser+0xc>
c0de8e0c:	2300      	movs	r3, #0
c0de8e0e:	7103      	strb	r3, [r0, #4]
c0de8e10:	e004      	b.n	c0de8e1c <apdu_parser+0x16>
c0de8e12:	790b      	ldrb	r3, [r1, #4]
c0de8e14:	3a05      	subs	r2, #5
c0de8e16:	429a      	cmp	r2, r3
c0de8e18:	7103      	strb	r3, [r0, #4]
c0de8e1a:	d10d      	bne.n	c0de8e38 <apdu_parser+0x32>
c0de8e1c:	780a      	ldrb	r2, [r1, #0]
c0de8e1e:	2b00      	cmp	r3, #0
c0de8e20:	7002      	strb	r2, [r0, #0]
c0de8e22:	784a      	ldrb	r2, [r1, #1]
c0de8e24:	7042      	strb	r2, [r0, #1]
c0de8e26:	788a      	ldrb	r2, [r1, #2]
c0de8e28:	7082      	strb	r2, [r0, #2]
c0de8e2a:	bf18      	it	ne
c0de8e2c:	1d4b      	addne	r3, r1, #5
c0de8e2e:	78c9      	ldrb	r1, [r1, #3]
c0de8e30:	6083      	str	r3, [r0, #8]
c0de8e32:	70c1      	strb	r1, [r0, #3]
c0de8e34:	2001      	movs	r0, #1
c0de8e36:	4770      	bx	lr
c0de8e38:	2000      	movs	r0, #0
c0de8e3a:	4770      	bx	lr

c0de8e3c <read_u32_be>:
c0de8e3c:	5c42      	ldrb	r2, [r0, r1]
c0de8e3e:	4408      	add	r0, r1
c0de8e40:	7841      	ldrb	r1, [r0, #1]
c0de8e42:	7883      	ldrb	r3, [r0, #2]
c0de8e44:	78c0      	ldrb	r0, [r0, #3]
c0de8e46:	0409      	lsls	r1, r1, #16
c0de8e48:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de8e4c:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de8e50:	4408      	add	r0, r1
c0de8e52:	4770      	bx	lr

c0de8e54 <read_u64_be>:
c0de8e54:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de8e56:	1842      	adds	r2, r0, r1
c0de8e58:	5c40      	ldrb	r0, [r0, r1]
c0de8e5a:	7917      	ldrb	r7, [r2, #4]
c0de8e5c:	7953      	ldrb	r3, [r2, #5]
c0de8e5e:	7854      	ldrb	r4, [r2, #1]
c0de8e60:	7895      	ldrb	r5, [r2, #2]
c0de8e62:	78d6      	ldrb	r6, [r2, #3]
c0de8e64:	063f      	lsls	r7, r7, #24
c0de8e66:	0421      	lsls	r1, r4, #16
c0de8e68:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de8e6c:	7997      	ldrb	r7, [r2, #6]
c0de8e6e:	79d2      	ldrb	r2, [r2, #7]
c0de8e70:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de8e74:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de8e78:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de8e7c:	1981      	adds	r1, r0, r6
c0de8e7e:	441a      	add	r2, r3
c0de8e80:	4610      	mov	r0, r2
c0de8e82:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de8e84 <read_u16_le>:
c0de8e84:	5c42      	ldrb	r2, [r0, r1]
c0de8e86:	4408      	add	r0, r1
c0de8e88:	7840      	ldrb	r0, [r0, #1]
c0de8e8a:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de8e8e:	b280      	uxth	r0, r0
c0de8e90:	4770      	bx	lr

c0de8e92 <read_u32_le>:
c0de8e92:	5c42      	ldrb	r2, [r0, r1]
c0de8e94:	4408      	add	r0, r1
c0de8e96:	7841      	ldrb	r1, [r0, #1]
c0de8e98:	7883      	ldrb	r3, [r0, #2]
c0de8e9a:	78c0      	ldrb	r0, [r0, #3]
c0de8e9c:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de8ea0:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de8ea4:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de8ea8:	4770      	bx	lr

c0de8eaa <read_u64_le>:
c0de8eaa:	b5b0      	push	{r4, r5, r7, lr}
c0de8eac:	5c42      	ldrb	r2, [r0, r1]
c0de8eae:	4401      	add	r1, r0
c0de8eb0:	7848      	ldrb	r0, [r1, #1]
c0de8eb2:	788b      	ldrb	r3, [r1, #2]
c0de8eb4:	790d      	ldrb	r5, [r1, #4]
c0de8eb6:	78cc      	ldrb	r4, [r1, #3]
c0de8eb8:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de8ebc:	794a      	ldrb	r2, [r1, #5]
c0de8ebe:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de8ec2:	798b      	ldrb	r3, [r1, #6]
c0de8ec4:	79c9      	ldrb	r1, [r1, #7]
c0de8ec6:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de8eca:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de8ece:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de8ed2:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de8ed6:	bdb0      	pop	{r4, r5, r7, pc}

c0de8ed8 <varint_read>:
c0de8ed8:	b510      	push	{r4, lr}
c0de8eda:	b1d9      	cbz	r1, c0de8f14 <varint_read+0x3c>
c0de8edc:	4614      	mov	r4, r2
c0de8ede:	4602      	mov	r2, r0
c0de8ee0:	7800      	ldrb	r0, [r0, #0]
c0de8ee2:	28ff      	cmp	r0, #255	@ 0xff
c0de8ee4:	d00c      	beq.n	c0de8f00 <varint_read+0x28>
c0de8ee6:	28fe      	cmp	r0, #254	@ 0xfe
c0de8ee8:	d012      	beq.n	c0de8f10 <varint_read+0x38>
c0de8eea:	28fd      	cmp	r0, #253	@ 0xfd
c0de8eec:	d115      	bne.n	c0de8f1a <varint_read+0x42>
c0de8eee:	2903      	cmp	r1, #3
c0de8ef0:	d310      	bcc.n	c0de8f14 <varint_read+0x3c>
c0de8ef2:	4610      	mov	r0, r2
c0de8ef4:	2101      	movs	r1, #1
c0de8ef6:	f7ff ffc5 	bl	c0de8e84 <read_u16_le>
c0de8efa:	2100      	movs	r1, #0
c0de8efc:	2203      	movs	r2, #3
c0de8efe:	e015      	b.n	c0de8f2c <varint_read+0x54>
c0de8f00:	2909      	cmp	r1, #9
c0de8f02:	d307      	bcc.n	c0de8f14 <varint_read+0x3c>
c0de8f04:	4610      	mov	r0, r2
c0de8f06:	2101      	movs	r1, #1
c0de8f08:	f7ff ffcf 	bl	c0de8eaa <read_u64_le>
c0de8f0c:	2209      	movs	r2, #9
c0de8f0e:	e00d      	b.n	c0de8f2c <varint_read+0x54>
c0de8f10:	2905      	cmp	r1, #5
c0de8f12:	d205      	bcs.n	c0de8f20 <varint_read+0x48>
c0de8f14:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de8f18:	e00a      	b.n	c0de8f30 <varint_read+0x58>
c0de8f1a:	2100      	movs	r1, #0
c0de8f1c:	2201      	movs	r2, #1
c0de8f1e:	e005      	b.n	c0de8f2c <varint_read+0x54>
c0de8f20:	4610      	mov	r0, r2
c0de8f22:	2101      	movs	r1, #1
c0de8f24:	f7ff ffb5 	bl	c0de8e92 <read_u32_le>
c0de8f28:	2100      	movs	r1, #0
c0de8f2a:	2205      	movs	r2, #5
c0de8f2c:	e9c4 0100 	strd	r0, r1, [r4]
c0de8f30:	4610      	mov	r0, r2
c0de8f32:	bd10      	pop	{r4, pc}

c0de8f34 <write_u16_be>:
c0de8f34:	0a13      	lsrs	r3, r2, #8
c0de8f36:	5443      	strb	r3, [r0, r1]
c0de8f38:	4408      	add	r0, r1
c0de8f3a:	7042      	strb	r2, [r0, #1]
c0de8f3c:	4770      	bx	lr

c0de8f3e <USBD_HID_Setup>:
c0de8f3e:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de8f40:	460d      	mov	r5, r1
c0de8f42:	7809      	ldrb	r1, [r1, #0]
c0de8f44:	4604      	mov	r4, r0
c0de8f46:	2000      	movs	r0, #0
c0de8f48:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de8f4c:	f88d 0005 	strb.w	r0, [sp, #5]
c0de8f50:	f011 0160 	ands.w	r1, r1, #96	@ 0x60
c0de8f54:	d010      	beq.n	c0de8f78 <USBD_HID_Setup+0x3a>
c0de8f56:	2920      	cmp	r1, #32
c0de8f58:	d13c      	bne.n	c0de8fd4 <USBD_HID_Setup+0x96>
c0de8f5a:	7868      	ldrb	r0, [r5, #1]
c0de8f5c:	f1a0 010a 	sub.w	r1, r0, #10
c0de8f60:	2902      	cmp	r1, #2
c0de8f62:	d336      	bcc.n	c0de8fd2 <USBD_HID_Setup+0x94>
c0de8f64:	2802      	cmp	r0, #2
c0de8f66:	d018      	beq.n	c0de8f9a <USBD_HID_Setup+0x5c>
c0de8f68:	2803      	cmp	r0, #3
c0de8f6a:	d016      	beq.n	c0de8f9a <USBD_HID_Setup+0x5c>
c0de8f6c:	4620      	mov	r0, r4
c0de8f6e:	4629      	mov	r1, r5
c0de8f70:	f000 fe88 	bl	c0de9c84 <USBD_CtlError>
c0de8f74:	2002      	movs	r0, #2
c0de8f76:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de8f78:	7868      	ldrb	r0, [r5, #1]
c0de8f7a:	280b      	cmp	r0, #11
c0de8f7c:	d012      	beq.n	c0de8fa4 <USBD_HID_Setup+0x66>
c0de8f7e:	280a      	cmp	r0, #10
c0de8f80:	d00b      	beq.n	c0de8f9a <USBD_HID_Setup+0x5c>
c0de8f82:	2806      	cmp	r0, #6
c0de8f84:	d125      	bne.n	c0de8fd2 <USBD_HID_Setup+0x94>
c0de8f86:	78e8      	ldrb	r0, [r5, #3]
c0de8f88:	2821      	cmp	r0, #33	@ 0x21
c0de8f8a:	d00f      	beq.n	c0de8fac <USBD_HID_Setup+0x6e>
c0de8f8c:	2822      	cmp	r0, #34	@ 0x22
c0de8f8e:	d11b      	bne.n	c0de8fc8 <USBD_HID_Setup+0x8a>
c0de8f90:	f10d 0006 	add.w	r0, sp, #6
c0de8f94:	f000 fd92 	bl	c0de9abc <USBD_HID_GetReportDescriptor_impl>
c0de8f98:	e00c      	b.n	c0de8fb4 <USBD_HID_Setup+0x76>
c0de8f9a:	f10d 0105 	add.w	r1, sp, #5
c0de8f9e:	4620      	mov	r0, r4
c0de8fa0:	2201      	movs	r2, #1
c0de8fa2:	e014      	b.n	c0de8fce <USBD_HID_Setup+0x90>
c0de8fa4:	4620      	mov	r0, r4
c0de8fa6:	f000 fc26 	bl	c0de97f6 <USBD_CtlSendStatus>
c0de8faa:	e012      	b.n	c0de8fd2 <USBD_HID_Setup+0x94>
c0de8fac:	f10d 0006 	add.w	r0, sp, #6
c0de8fb0:	f000 fd70 	bl	c0de9a94 <USBD_HID_GetHidDescriptor_impl>
c0de8fb4:	4601      	mov	r1, r0
c0de8fb6:	88ea      	ldrh	r2, [r5, #6]
c0de8fb8:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de8fbc:	4290      	cmp	r0, r2
c0de8fbe:	bf38      	it	cc
c0de8fc0:	4602      	movcc	r2, r0
c0de8fc2:	f8ad 2006 	strh.w	r2, [sp, #6]
c0de8fc6:	e001      	b.n	c0de8fcc <USBD_HID_Setup+0x8e>
c0de8fc8:	2200      	movs	r2, #0
c0de8fca:	2100      	movs	r1, #0
c0de8fcc:	4620      	mov	r0, r4
c0de8fce:	f000 fbf1 	bl	c0de97b4 <USBD_CtlSendData>
c0de8fd2:	2000      	movs	r0, #0
c0de8fd4:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de8fd6 <USBD_HID_Init>:
c0de8fd6:	b510      	push	{r4, lr}
c0de8fd8:	2182      	movs	r1, #130	@ 0x82
c0de8fda:	2203      	movs	r2, #3
c0de8fdc:	2340      	movs	r3, #64	@ 0x40
c0de8fde:	4604      	mov	r4, r0
c0de8fe0:	f000 fc62 	bl	c0de98a8 <USBD_LL_OpenEP>
c0de8fe4:	4620      	mov	r0, r4
c0de8fe6:	2102      	movs	r1, #2
c0de8fe8:	2203      	movs	r2, #3
c0de8fea:	2340      	movs	r3, #64	@ 0x40
c0de8fec:	f000 fc5c 	bl	c0de98a8 <USBD_LL_OpenEP>
c0de8ff0:	4620      	mov	r0, r4
c0de8ff2:	2102      	movs	r1, #2
c0de8ff4:	2240      	movs	r2, #64	@ 0x40
c0de8ff6:	f000 fd13 	bl	c0de9a20 <USBD_LL_PrepareReceive>
c0de8ffa:	2000      	movs	r0, #0
c0de8ffc:	bd10      	pop	{r4, pc}

c0de8ffe <USBD_HID_DeInit>:
c0de8ffe:	2000      	movs	r0, #0
c0de9000:	4770      	bx	lr

c0de9002 <USBD_Init>:
c0de9002:	b190      	cbz	r0, c0de902a <USBD_Init+0x28>
c0de9004:	b570      	push	{r4, r5, r6, lr}
c0de9006:	460e      	mov	r6, r1
c0de9008:	21d4      	movs	r1, #212	@ 0xd4
c0de900a:	4615      	mov	r5, r2
c0de900c:	4604      	mov	r4, r0
c0de900e:	f002 f985 	bl	c0deb31c <__aeabi_memclr>
c0de9012:	b10e      	cbz	r6, c0de9018 <USBD_Init+0x16>
c0de9014:	f8c4 60b0 	str.w	r6, [r4, #176]	@ 0xb0
c0de9018:	2001      	movs	r0, #1
c0de901a:	7025      	strb	r5, [r4, #0]
c0de901c:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de9020:	4620      	mov	r0, r4
c0de9022:	f000 fc05 	bl	c0de9830 <USBD_LL_Init>
c0de9026:	2000      	movs	r0, #0
c0de9028:	bd70      	pop	{r4, r5, r6, pc}
c0de902a:	2002      	movs	r0, #2
c0de902c:	4770      	bx	lr

c0de902e <USBD_DeInit>:
c0de902e:	b5b0      	push	{r4, r5, r7, lr}
c0de9030:	4604      	mov	r4, r0
c0de9032:	2001      	movs	r0, #1
c0de9034:	25b4      	movs	r5, #180	@ 0xb4
c0de9036:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de903a:	2dcc      	cmp	r5, #204	@ 0xcc
c0de903c:	d008      	beq.n	c0de9050 <USBD_DeInit+0x22>
c0de903e:	5960      	ldr	r0, [r4, r5]
c0de9040:	b120      	cbz	r0, c0de904c <USBD_DeInit+0x1e>
c0de9042:	6840      	ldr	r0, [r0, #4]
c0de9044:	f001 fd9a 	bl	c0deab7c <pic>
c0de9048:	f000 f973 	bl	c0de9332 <OUTLINED_FUNCTION_3>
c0de904c:	3508      	adds	r5, #8
c0de904e:	e7f4      	b.n	c0de903a <USBD_DeInit+0xc>
c0de9050:	4620      	mov	r0, r4
c0de9052:	f000 fc21 	bl	c0de9898 <USBD_LL_Stop>
c0de9056:	4620      	mov	r0, r4
c0de9058:	f000 fbf8 	bl	c0de984c <USBD_LL_DeInit>
c0de905c:	2000      	movs	r0, #0
c0de905e:	bdb0      	pop	{r4, r5, r7, pc}

c0de9060 <USBD_RegisterClassForInterface>:
c0de9060:	b13a      	cbz	r2, c0de9072 <USBD_RegisterClassForInterface+0x12>
c0de9062:	2802      	cmp	r0, #2
c0de9064:	bf9c      	itt	ls
c0de9066:	eb01 00c0 	addls.w	r0, r1, r0, lsl #3
c0de906a:	f8c0 20b4 	strls.w	r2, [r0, #180]	@ 0xb4
c0de906e:	2000      	movs	r0, #0
c0de9070:	4770      	bx	lr
c0de9072:	2002      	movs	r0, #2
c0de9074:	4770      	bx	lr

c0de9076 <USBD_Start>:
c0de9076:	b580      	push	{r7, lr}
c0de9078:	f000 fbf0 	bl	c0de985c <USBD_LL_Start>
c0de907c:	2000      	movs	r0, #0
c0de907e:	bd80      	pop	{r7, pc}

c0de9080 <USBD_SetClassConfig>:
c0de9080:	b570      	push	{r4, r5, r6, lr}
c0de9082:	460c      	mov	r4, r1
c0de9084:	4605      	mov	r5, r0
c0de9086:	2600      	movs	r6, #0
c0de9088:	2e03      	cmp	r6, #3
c0de908a:	bf04      	itt	eq
c0de908c:	2000      	moveq	r0, #0
c0de908e:	bd70      	popeq	{r4, r5, r6, pc}
c0de9090:	4628      	mov	r0, r5
c0de9092:	4631      	mov	r1, r6
c0de9094:	f000 f951 	bl	c0de933a <usbd_is_valid_intf>
c0de9098:	b150      	cbz	r0, c0de90b0 <USBD_SetClassConfig+0x30>
c0de909a:	eb05 00c6 	add.w	r0, r5, r6, lsl #3
c0de909e:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de90a2:	6800      	ldr	r0, [r0, #0]
c0de90a4:	f001 fd6a 	bl	c0deab7c <pic>
c0de90a8:	4602      	mov	r2, r0
c0de90aa:	4628      	mov	r0, r5
c0de90ac:	4621      	mov	r1, r4
c0de90ae:	4790      	blx	r2
c0de90b0:	3601      	adds	r6, #1
c0de90b2:	e7e9      	b.n	c0de9088 <USBD_SetClassConfig+0x8>

c0de90b4 <USBD_ClrClassConfig>:
c0de90b4:	b570      	push	{r4, r5, r6, lr}
c0de90b6:	460c      	mov	r4, r1
c0de90b8:	4605      	mov	r5, r0
c0de90ba:	2600      	movs	r6, #0
c0de90bc:	2e03      	cmp	r6, #3
c0de90be:	bf04      	itt	eq
c0de90c0:	2000      	moveq	r0, #0
c0de90c2:	bd70      	popeq	{r4, r5, r6, pc}
c0de90c4:	4628      	mov	r0, r5
c0de90c6:	4631      	mov	r1, r6
c0de90c8:	f000 f937 	bl	c0de933a <usbd_is_valid_intf>
c0de90cc:	b138      	cbz	r0, c0de90de <USBD_ClrClassConfig+0x2a>
c0de90ce:	eb05 00c6 	add.w	r0, r5, r6, lsl #3
c0de90d2:	f000 f924 	bl	c0de931e <OUTLINED_FUNCTION_1>
c0de90d6:	4602      	mov	r2, r0
c0de90d8:	4628      	mov	r0, r5
c0de90da:	4621      	mov	r1, r4
c0de90dc:	4790      	blx	r2
c0de90de:	3601      	adds	r6, #1
c0de90e0:	e7ec      	b.n	c0de90bc <USBD_ClrClassConfig+0x8>

c0de90e2 <USBD_LL_SetupStage>:
c0de90e2:	b5b0      	push	{r4, r5, r7, lr}
c0de90e4:	f100 05a8 	add.w	r5, r0, #168	@ 0xa8
c0de90e8:	4604      	mov	r4, r0
c0de90ea:	4628      	mov	r0, r5
c0de90ec:	f000 fb33 	bl	c0de9756 <USBD_ParseSetupRequest>
c0de90f0:	f8b4 10ae 	ldrh.w	r1, [r4, #174]	@ 0xae
c0de90f4:	2001      	movs	r0, #1
c0de90f6:	e9c4 0125 	strd	r0, r1, [r4, #148]	@ 0x94
c0de90fa:	f894 00a8 	ldrb.w	r0, [r4, #168]	@ 0xa8
c0de90fe:	f000 011f 	and.w	r1, r0, #31
c0de9102:	2902      	cmp	r1, #2
c0de9104:	d007      	beq.n	c0de9116 <USBD_LL_SetupStage+0x34>
c0de9106:	2901      	cmp	r1, #1
c0de9108:	d00a      	beq.n	c0de9120 <USBD_LL_SetupStage+0x3e>
c0de910a:	b971      	cbnz	r1, c0de912a <USBD_LL_SetupStage+0x48>
c0de910c:	4620      	mov	r0, r4
c0de910e:	4629      	mov	r1, r5
c0de9110:	f000 f91f 	bl	c0de9352 <USBD_StdDevReq>
c0de9114:	e00e      	b.n	c0de9134 <USBD_LL_SetupStage+0x52>
c0de9116:	4620      	mov	r0, r4
c0de9118:	4629      	mov	r1, r5
c0de911a:	f000 faa9 	bl	c0de9670 <USBD_StdEPReq>
c0de911e:	e009      	b.n	c0de9134 <USBD_LL_SetupStage+0x52>
c0de9120:	4620      	mov	r0, r4
c0de9122:	4629      	mov	r1, r5
c0de9124:	f000 fa88 	bl	c0de9638 <USBD_StdItfReq>
c0de9128:	e004      	b.n	c0de9134 <USBD_LL_SetupStage+0x52>
c0de912a:	f000 0180 	and.w	r1, r0, #128	@ 0x80
c0de912e:	4620      	mov	r0, r4
c0de9130:	f000 fbee 	bl	c0de9910 <USBD_LL_StallEP>
c0de9134:	2000      	movs	r0, #0
c0de9136:	bdb0      	pop	{r4, r5, r7, pc}

c0de9138 <USBD_LL_DataOutStage>:
c0de9138:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de913c:	4690      	mov	r8, r2
c0de913e:	4604      	mov	r4, r0
c0de9140:	b1c9      	cbz	r1, c0de9176 <USBD_LL_DataOutStage+0x3e>
c0de9142:	469a      	mov	sl, r3
c0de9144:	460f      	mov	r7, r1
c0de9146:	2500      	movs	r5, #0
c0de9148:	2d03      	cmp	r5, #3
c0de914a:	d03f      	beq.n	c0de91cc <USBD_LL_DataOutStage+0x94>
c0de914c:	f000 f8e3 	bl	c0de9316 <OUTLINED_FUNCTION_0>
c0de9150:	b178      	cbz	r0, c0de9172 <USBD_LL_DataOutStage+0x3a>
c0de9152:	f000 f8e9 	bl	c0de9328 <OUTLINED_FUNCTION_2>
c0de9156:	6980      	ldr	r0, [r0, #24]
c0de9158:	b158      	cbz	r0, c0de9172 <USBD_LL_DataOutStage+0x3a>
c0de915a:	f894 109c 	ldrb.w	r1, [r4, #156]	@ 0x9c
c0de915e:	2903      	cmp	r1, #3
c0de9160:	d107      	bne.n	c0de9172 <USBD_LL_DataOutStage+0x3a>
c0de9162:	f001 fd0b 	bl	c0deab7c <pic>
c0de9166:	4606      	mov	r6, r0
c0de9168:	4620      	mov	r0, r4
c0de916a:	4639      	mov	r1, r7
c0de916c:	4642      	mov	r2, r8
c0de916e:	4653      	mov	r3, sl
c0de9170:	47b0      	blx	r6
c0de9172:	3501      	adds	r5, #1
c0de9174:	e7e8      	b.n	c0de9148 <USBD_LL_DataOutStage+0x10>
c0de9176:	f8d4 0094 	ldr.w	r0, [r4, #148]	@ 0x94
c0de917a:	2803      	cmp	r0, #3
c0de917c:	d126      	bne.n	c0de91cc <USBD_LL_DataOutStage+0x94>
c0de917e:	e9d4 1017 	ldrd	r1, r0, [r4, #92]	@ 0x5c
c0de9182:	4281      	cmp	r1, r0
c0de9184:	d90a      	bls.n	c0de919c <USBD_LL_DataOutStage+0x64>
c0de9186:	1a09      	subs	r1, r1, r0
c0de9188:	65e1      	str	r1, [r4, #92]	@ 0x5c
c0de918a:	4281      	cmp	r1, r0
c0de918c:	bf38      	it	cc
c0de918e:	4608      	movcc	r0, r1
c0de9190:	b282      	uxth	r2, r0
c0de9192:	4641      	mov	r1, r8
c0de9194:	4620      	mov	r0, r4
c0de9196:	f000 fb28 	bl	c0de97ea <USBD_CtlContinueRx>
c0de919a:	e017      	b.n	c0de91cc <USBD_LL_DataOutStage+0x94>
c0de919c:	2500      	movs	r5, #0
c0de919e:	2d03      	cmp	r5, #3
c0de91a0:	d011      	beq.n	c0de91c6 <USBD_LL_DataOutStage+0x8e>
c0de91a2:	f000 f8b8 	bl	c0de9316 <OUTLINED_FUNCTION_0>
c0de91a6:	b160      	cbz	r0, c0de91c2 <USBD_LL_DataOutStage+0x8a>
c0de91a8:	f000 f8be 	bl	c0de9328 <OUTLINED_FUNCTION_2>
c0de91ac:	6900      	ldr	r0, [r0, #16]
c0de91ae:	b140      	cbz	r0, c0de91c2 <USBD_LL_DataOutStage+0x8a>
c0de91b0:	f894 109c 	ldrb.w	r1, [r4, #156]	@ 0x9c
c0de91b4:	2903      	cmp	r1, #3
c0de91b6:	d104      	bne.n	c0de91c2 <USBD_LL_DataOutStage+0x8a>
c0de91b8:	f001 fce0 	bl	c0deab7c <pic>
c0de91bc:	4601      	mov	r1, r0
c0de91be:	4620      	mov	r0, r4
c0de91c0:	4788      	blx	r1
c0de91c2:	3501      	adds	r5, #1
c0de91c4:	e7eb      	b.n	c0de919e <USBD_LL_DataOutStage+0x66>
c0de91c6:	4620      	mov	r0, r4
c0de91c8:	f000 fb15 	bl	c0de97f6 <USBD_CtlSendStatus>
c0de91cc:	2000      	movs	r0, #0
c0de91ce:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de91d2 <USBD_LL_DataInStage>:
c0de91d2:	b570      	push	{r4, r5, r6, lr}
c0de91d4:	4604      	mov	r4, r0
c0de91d6:	b1d1      	cbz	r1, c0de920e <USBD_LL_DataInStage+0x3c>
c0de91d8:	460d      	mov	r5, r1
c0de91da:	2600      	movs	r6, #0
c0de91dc:	2e03      	cmp	r6, #3
c0de91de:	d060      	beq.n	c0de92a2 <USBD_LL_DataInStage+0xd0>
c0de91e0:	4620      	mov	r0, r4
c0de91e2:	4631      	mov	r1, r6
c0de91e4:	f000 f8a9 	bl	c0de933a <usbd_is_valid_intf>
c0de91e8:	b178      	cbz	r0, c0de920a <USBD_LL_DataInStage+0x38>
c0de91ea:	eb04 00c6 	add.w	r0, r4, r6, lsl #3
c0de91ee:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de91f2:	6940      	ldr	r0, [r0, #20]
c0de91f4:	b148      	cbz	r0, c0de920a <USBD_LL_DataInStage+0x38>
c0de91f6:	f894 109c 	ldrb.w	r1, [r4, #156]	@ 0x9c
c0de91fa:	2903      	cmp	r1, #3
c0de91fc:	d105      	bne.n	c0de920a <USBD_LL_DataInStage+0x38>
c0de91fe:	f001 fcbd 	bl	c0deab7c <pic>
c0de9202:	4602      	mov	r2, r0
c0de9204:	4620      	mov	r0, r4
c0de9206:	4629      	mov	r1, r5
c0de9208:	4790      	blx	r2
c0de920a:	3601      	adds	r6, #1
c0de920c:	e7e6      	b.n	c0de91dc <USBD_LL_DataInStage+0xa>
c0de920e:	f8d4 0094 	ldr.w	r0, [r4, #148]	@ 0x94
c0de9212:	2802      	cmp	r0, #2
c0de9214:	d13e      	bne.n	c0de9294 <USBD_LL_DataInStage+0xc2>
c0de9216:	e9d4 1007 	ldrd	r1, r0, [r4, #28]
c0de921a:	4281      	cmp	r1, r0
c0de921c:	d90b      	bls.n	c0de9236 <USBD_LL_DataInStage+0x64>
c0de921e:	1a0a      	subs	r2, r1, r0
c0de9220:	f8d4 10d0 	ldr.w	r1, [r4, #208]	@ 0xd0
c0de9224:	61e2      	str	r2, [r4, #28]
c0de9226:	b292      	uxth	r2, r2
c0de9228:	4401      	add	r1, r0
c0de922a:	4620      	mov	r0, r4
c0de922c:	f8c4 10d0 	str.w	r1, [r4, #208]	@ 0xd0
c0de9230:	f000 fad1 	bl	c0de97d6 <USBD_CtlContinueSendData>
c0de9234:	e02e      	b.n	c0de9294 <USBD_LL_DataInStage+0xc2>
c0de9236:	b1a0      	cbz	r0, c0de9262 <USBD_LL_DataInStage+0x90>
c0de9238:	69a1      	ldr	r1, [r4, #24]
c0de923a:	fbb1 f2f0 	udiv	r2, r1, r0
c0de923e:	fb02 1210 	mls	r2, r2, r0, r1
c0de9242:	b972      	cbnz	r2, c0de9262 <USBD_LL_DataInStage+0x90>
c0de9244:	4281      	cmp	r1, r0
c0de9246:	d30c      	bcc.n	c0de9262 <USBD_LL_DataInStage+0x90>
c0de9248:	f8d4 0098 	ldr.w	r0, [r4, #152]	@ 0x98
c0de924c:	4281      	cmp	r1, r0
c0de924e:	d208      	bcs.n	c0de9262 <USBD_LL_DataInStage+0x90>
c0de9250:	4620      	mov	r0, r4
c0de9252:	2100      	movs	r1, #0
c0de9254:	2200      	movs	r2, #0
c0de9256:	2500      	movs	r5, #0
c0de9258:	f000 fabd 	bl	c0de97d6 <USBD_CtlContinueSendData>
c0de925c:	f8c4 5098 	str.w	r5, [r4, #152]	@ 0x98
c0de9260:	e018      	b.n	c0de9294 <USBD_LL_DataInStage+0xc2>
c0de9262:	2500      	movs	r5, #0
c0de9264:	4620      	mov	r0, r4
c0de9266:	2d03      	cmp	r5, #3
c0de9268:	d012      	beq.n	c0de9290 <USBD_LL_DataInStage+0xbe>
c0de926a:	4629      	mov	r1, r5
c0de926c:	f000 f865 	bl	c0de933a <usbd_is_valid_intf>
c0de9270:	b160      	cbz	r0, c0de928c <USBD_LL_DataInStage+0xba>
c0de9272:	f000 f859 	bl	c0de9328 <OUTLINED_FUNCTION_2>
c0de9276:	68c0      	ldr	r0, [r0, #12]
c0de9278:	b140      	cbz	r0, c0de928c <USBD_LL_DataInStage+0xba>
c0de927a:	f894 109c 	ldrb.w	r1, [r4, #156]	@ 0x9c
c0de927e:	2903      	cmp	r1, #3
c0de9280:	d104      	bne.n	c0de928c <USBD_LL_DataInStage+0xba>
c0de9282:	f001 fc7b 	bl	c0deab7c <pic>
c0de9286:	4601      	mov	r1, r0
c0de9288:	4620      	mov	r0, r4
c0de928a:	4788      	blx	r1
c0de928c:	3501      	adds	r5, #1
c0de928e:	e7e9      	b.n	c0de9264 <USBD_LL_DataInStage+0x92>
c0de9290:	f000 fabc 	bl	c0de980c <USBD_CtlReceiveStatus>
c0de9294:	f894 00a0 	ldrb.w	r0, [r4, #160]	@ 0xa0
c0de9298:	2801      	cmp	r0, #1
c0de929a:	bf04      	itt	eq
c0de929c:	2000      	moveq	r0, #0
c0de929e:	f884 00a0 	strbeq.w	r0, [r4, #160]	@ 0xa0
c0de92a2:	2000      	movs	r0, #0
c0de92a4:	bd70      	pop	{r4, r5, r6, pc}

c0de92a6 <USBD_LL_Reset>:
c0de92a6:	b5b0      	push	{r4, r5, r7, lr}
c0de92a8:	4604      	mov	r4, r0
c0de92aa:	2001      	movs	r0, #1
c0de92ac:	2500      	movs	r5, #0
c0de92ae:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de92b2:	2040      	movs	r0, #64	@ 0x40
c0de92b4:	6220      	str	r0, [r4, #32]
c0de92b6:	6620      	str	r0, [r4, #96]	@ 0x60
c0de92b8:	2d03      	cmp	r5, #3
c0de92ba:	bf04      	itt	eq
c0de92bc:	2000      	moveq	r0, #0
c0de92be:	bdb0      	popeq	{r4, r5, r7, pc}
c0de92c0:	f000 f829 	bl	c0de9316 <OUTLINED_FUNCTION_0>
c0de92c4:	b128      	cbz	r0, c0de92d2 <USBD_LL_Reset+0x2c>
c0de92c6:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de92ca:	f000 f828 	bl	c0de931e <OUTLINED_FUNCTION_1>
c0de92ce:	f000 f830 	bl	c0de9332 <OUTLINED_FUNCTION_3>
c0de92d2:	3501      	adds	r5, #1
c0de92d4:	e7f0      	b.n	c0de92b8 <USBD_LL_Reset+0x12>

c0de92d6 <USBD_LL_SetSpeed>:
c0de92d6:	7401      	strb	r1, [r0, #16]
c0de92d8:	2000      	movs	r0, #0
c0de92da:	4770      	bx	lr

c0de92dc <USBD_LL_Suspend>:
c0de92dc:	2000      	movs	r0, #0
c0de92de:	4770      	bx	lr

c0de92e0 <USBD_LL_Resume>:
c0de92e0:	2000      	movs	r0, #0
c0de92e2:	4770      	bx	lr

c0de92e4 <USBD_LL_SOF>:
c0de92e4:	b5b0      	push	{r4, r5, r7, lr}
c0de92e6:	4604      	mov	r4, r0
c0de92e8:	f890 009c 	ldrb.w	r0, [r0, #156]	@ 0x9c
c0de92ec:	2803      	cmp	r0, #3
c0de92ee:	d110      	bne.n	c0de9312 <USBD_LL_SOF+0x2e>
c0de92f0:	2500      	movs	r5, #0
c0de92f2:	2d03      	cmp	r5, #3
c0de92f4:	d00d      	beq.n	c0de9312 <USBD_LL_SOF+0x2e>
c0de92f6:	f000 f80e 	bl	c0de9316 <OUTLINED_FUNCTION_0>
c0de92fa:	b140      	cbz	r0, c0de930e <USBD_LL_SOF+0x2a>
c0de92fc:	f000 f814 	bl	c0de9328 <OUTLINED_FUNCTION_2>
c0de9300:	69c0      	ldr	r0, [r0, #28]
c0de9302:	b120      	cbz	r0, c0de930e <USBD_LL_SOF+0x2a>
c0de9304:	f001 fc3a 	bl	c0deab7c <pic>
c0de9308:	4601      	mov	r1, r0
c0de930a:	4620      	mov	r0, r4
c0de930c:	4788      	blx	r1
c0de930e:	3501      	adds	r5, #1
c0de9310:	e7ef      	b.n	c0de92f2 <USBD_LL_SOF+0xe>
c0de9312:	2000      	movs	r0, #0
c0de9314:	bdb0      	pop	{r4, r5, r7, pc}

c0de9316 <OUTLINED_FUNCTION_0>:
c0de9316:	4620      	mov	r0, r4
c0de9318:	4629      	mov	r1, r5
c0de931a:	f000 b80e 	b.w	c0de933a <usbd_is_valid_intf>

c0de931e <OUTLINED_FUNCTION_1>:
c0de931e:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de9322:	6840      	ldr	r0, [r0, #4]
c0de9324:	f001 bc2a 	b.w	c0deab7c <pic>

c0de9328 <OUTLINED_FUNCTION_2>:
c0de9328:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de932c:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de9330:	4770      	bx	lr

c0de9332 <OUTLINED_FUNCTION_3>:
c0de9332:	7921      	ldrb	r1, [r4, #4]
c0de9334:	4602      	mov	r2, r0
c0de9336:	4620      	mov	r0, r4
c0de9338:	4710      	bx	r2

c0de933a <usbd_is_valid_intf>:
c0de933a:	2902      	cmp	r1, #2
c0de933c:	bf84      	itt	hi
c0de933e:	2000      	movhi	r0, #0
c0de9340:	4770      	bxhi	lr
c0de9342:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de9346:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de934a:	2800      	cmp	r0, #0
c0de934c:	bf18      	it	ne
c0de934e:	2001      	movne	r0, #1
c0de9350:	4770      	bx	lr

c0de9352 <USBD_StdDevReq>:
c0de9352:	b580      	push	{r7, lr}
c0de9354:	784a      	ldrb	r2, [r1, #1]
c0de9356:	b172      	cbz	r2, c0de9376 <USBD_StdDevReq+0x24>
c0de9358:	2a01      	cmp	r2, #1
c0de935a:	d00f      	beq.n	c0de937c <USBD_StdDevReq+0x2a>
c0de935c:	2a03      	cmp	r2, #3
c0de935e:	d010      	beq.n	c0de9382 <USBD_StdDevReq+0x30>
c0de9360:	2a05      	cmp	r2, #5
c0de9362:	d011      	beq.n	c0de9388 <USBD_StdDevReq+0x36>
c0de9364:	2a09      	cmp	r2, #9
c0de9366:	d012      	beq.n	c0de938e <USBD_StdDevReq+0x3c>
c0de9368:	2a08      	cmp	r2, #8
c0de936a:	d013      	beq.n	c0de9394 <USBD_StdDevReq+0x42>
c0de936c:	2a06      	cmp	r2, #6
c0de936e:	d114      	bne.n	c0de939a <USBD_StdDevReq+0x48>
c0de9370:	f000 f817 	bl	c0de93a2 <USBD_GetDescriptor>
c0de9374:	e013      	b.n	c0de939e <USBD_StdDevReq+0x4c>
c0de9376:	f000 f8fd 	bl	c0de9574 <USBD_GetStatus>
c0de937a:	e010      	b.n	c0de939e <USBD_StdDevReq+0x4c>
c0de937c:	f000 f937 	bl	c0de95ee <USBD_ClrFeature>
c0de9380:	e00d      	b.n	c0de939e <USBD_StdDevReq+0x4c>
c0de9382:	f000 f91b 	bl	c0de95bc <USBD_SetFeature>
c0de9386:	e00a      	b.n	c0de939e <USBD_StdDevReq+0x4c>
c0de9388:	f000 f887 	bl	c0de949a <USBD_SetAddress>
c0de938c:	e007      	b.n	c0de939e <USBD_StdDevReq+0x4c>
c0de938e:	f000 f8a5 	bl	c0de94dc <USBD_SetConfig>
c0de9392:	e004      	b.n	c0de939e <USBD_StdDevReq+0x4c>
c0de9394:	f000 f8da 	bl	c0de954c <USBD_GetConfig>
c0de9398:	e001      	b.n	c0de939e <USBD_StdDevReq+0x4c>
c0de939a:	f000 fc73 	bl	c0de9c84 <USBD_CtlError>
c0de939e:	2000      	movs	r0, #0
c0de93a0:	bd80      	pop	{r7, pc}

c0de93a2 <USBD_GetDescriptor>:
c0de93a2:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de93a4:	460d      	mov	r5, r1
c0de93a6:	8849      	ldrh	r1, [r1, #2]
c0de93a8:	4604      	mov	r4, r0
c0de93aa:	2000      	movs	r0, #0
c0de93ac:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de93b0:	0a08      	lsrs	r0, r1, #8
c0de93b2:	2801      	cmp	r0, #1
c0de93b4:	d025      	beq.n	c0de9402 <USBD_GetDescriptor+0x60>
c0de93b6:	2802      	cmp	r0, #2
c0de93b8:	d02e      	beq.n	c0de9418 <USBD_GetDescriptor+0x76>
c0de93ba:	2803      	cmp	r0, #3
c0de93bc:	d00a      	beq.n	c0de93d4 <USBD_GetDescriptor+0x32>
c0de93be:	2806      	cmp	r0, #6
c0de93c0:	d031      	beq.n	c0de9426 <USBD_GetDescriptor+0x84>
c0de93c2:	2807      	cmp	r0, #7
c0de93c4:	d016      	beq.n	c0de93f4 <USBD_GetDescriptor+0x52>
c0de93c6:	280f      	cmp	r0, #15
c0de93c8:	d12f      	bne.n	c0de942a <USBD_GetDescriptor+0x88>
c0de93ca:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de93ce:	69c0      	ldr	r0, [r0, #28]
c0de93d0:	b9d0      	cbnz	r0, c0de9408 <USBD_GetDescriptor+0x66>
c0de93d2:	e02a      	b.n	c0de942a <USBD_GetDescriptor+0x88>
c0de93d4:	b2c8      	uxtb	r0, r1
c0de93d6:	2805      	cmp	r0, #5
c0de93d8:	d04b      	beq.n	c0de9472 <USBD_GetDescriptor+0xd0>
c0de93da:	2801      	cmp	r0, #1
c0de93dc:	d04d      	beq.n	c0de947a <USBD_GetDescriptor+0xd8>
c0de93de:	2802      	cmp	r0, #2
c0de93e0:	d04f      	beq.n	c0de9482 <USBD_GetDescriptor+0xe0>
c0de93e2:	2803      	cmp	r0, #3
c0de93e4:	d051      	beq.n	c0de948a <USBD_GetDescriptor+0xe8>
c0de93e6:	2804      	cmp	r0, #4
c0de93e8:	d053      	beq.n	c0de9492 <USBD_GetDescriptor+0xf0>
c0de93ea:	b9f0      	cbnz	r0, c0de942a <USBD_GetDescriptor+0x88>
c0de93ec:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de93f0:	6840      	ldr	r0, [r0, #4]
c0de93f2:	e009      	b.n	c0de9408 <USBD_GetDescriptor+0x66>
c0de93f4:	7c20      	ldrb	r0, [r4, #16]
c0de93f6:	b9c0      	cbnz	r0, c0de942a <USBD_GetDescriptor+0x88>
c0de93f8:	f8d4 00b4 	ldr.w	r0, [r4, #180]	@ 0xb4
c0de93fc:	b1a8      	cbz	r0, c0de942a <USBD_GetDescriptor+0x88>
c0de93fe:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de9400:	e022      	b.n	c0de9448 <USBD_GetDescriptor+0xa6>
c0de9402:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de9406:	6800      	ldr	r0, [r0, #0]
c0de9408:	f001 fbb8 	bl	c0deab7c <pic>
c0de940c:	4602      	mov	r2, r0
c0de940e:	7c20      	ldrb	r0, [r4, #16]
c0de9410:	f10d 0106 	add.w	r1, sp, #6
c0de9414:	4790      	blx	r2
c0de9416:	e01d      	b.n	c0de9454 <USBD_GetDescriptor+0xb2>
c0de9418:	f8d4 00b4 	ldr.w	r0, [r4, #180]	@ 0xb4
c0de941c:	b158      	cbz	r0, c0de9436 <USBD_GetDescriptor+0x94>
c0de941e:	7c21      	ldrb	r1, [r4, #16]
c0de9420:	b189      	cbz	r1, c0de9446 <USBD_GetDescriptor+0xa4>
c0de9422:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de9424:	e010      	b.n	c0de9448 <USBD_GetDescriptor+0xa6>
c0de9426:	7c20      	ldrb	r0, [r4, #16]
c0de9428:	b138      	cbz	r0, c0de943a <USBD_GetDescriptor+0x98>
c0de942a:	4620      	mov	r0, r4
c0de942c:	4629      	mov	r1, r5
c0de942e:	e8bd 40bc 	ldmia.w	sp!, {r2, r3, r4, r5, r7, lr}
c0de9432:	f000 bc27 	b.w	c0de9c84 <USBD_CtlError>
c0de9436:	2100      	movs	r1, #0
c0de9438:	e00d      	b.n	c0de9456 <USBD_GetDescriptor+0xb4>
c0de943a:	f8d4 00b4 	ldr.w	r0, [r4, #180]	@ 0xb4
c0de943e:	2800      	cmp	r0, #0
c0de9440:	d0f3      	beq.n	c0de942a <USBD_GetDescriptor+0x88>
c0de9442:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de9444:	e000      	b.n	c0de9448 <USBD_GetDescriptor+0xa6>
c0de9446:	6a80      	ldr	r0, [r0, #40]	@ 0x28
c0de9448:	f001 fb98 	bl	c0deab7c <pic>
c0de944c:	4601      	mov	r1, r0
c0de944e:	f10d 0006 	add.w	r0, sp, #6
c0de9452:	4788      	blx	r1
c0de9454:	4601      	mov	r1, r0
c0de9456:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de945a:	b148      	cbz	r0, c0de9470 <USBD_GetDescriptor+0xce>
c0de945c:	88ea      	ldrh	r2, [r5, #6]
c0de945e:	b13a      	cbz	r2, c0de9470 <USBD_GetDescriptor+0xce>
c0de9460:	4290      	cmp	r0, r2
c0de9462:	bf38      	it	cc
c0de9464:	4602      	movcc	r2, r0
c0de9466:	4620      	mov	r0, r4
c0de9468:	f8ad 2006 	strh.w	r2, [sp, #6]
c0de946c:	f000 f9a2 	bl	c0de97b4 <USBD_CtlSendData>
c0de9470:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de9472:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de9476:	6980      	ldr	r0, [r0, #24]
c0de9478:	e7c6      	b.n	c0de9408 <USBD_GetDescriptor+0x66>
c0de947a:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de947e:	6880      	ldr	r0, [r0, #8]
c0de9480:	e7c2      	b.n	c0de9408 <USBD_GetDescriptor+0x66>
c0de9482:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de9486:	68c0      	ldr	r0, [r0, #12]
c0de9488:	e7be      	b.n	c0de9408 <USBD_GetDescriptor+0x66>
c0de948a:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de948e:	6900      	ldr	r0, [r0, #16]
c0de9490:	e7ba      	b.n	c0de9408 <USBD_GetDescriptor+0x66>
c0de9492:	f8d4 00b0 	ldr.w	r0, [r4, #176]	@ 0xb0
c0de9496:	6940      	ldr	r0, [r0, #20]
c0de9498:	e7b6      	b.n	c0de9408 <USBD_GetDescriptor+0x66>

c0de949a <USBD_SetAddress>:
c0de949a:	b5b0      	push	{r4, r5, r7, lr}
c0de949c:	4604      	mov	r4, r0
c0de949e:	8888      	ldrh	r0, [r1, #4]
c0de94a0:	b928      	cbnz	r0, c0de94ae <USBD_SetAddress+0x14>
c0de94a2:	88c8      	ldrh	r0, [r1, #6]
c0de94a4:	b918      	cbnz	r0, c0de94ae <USBD_SetAddress+0x14>
c0de94a6:	f894 009c 	ldrb.w	r0, [r4, #156]	@ 0x9c
c0de94aa:	2803      	cmp	r0, #3
c0de94ac:	d104      	bne.n	c0de94b8 <USBD_SetAddress+0x1e>
c0de94ae:	4620      	mov	r0, r4
c0de94b0:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de94b4:	f000 bbe6 	b.w	c0de9c84 <USBD_CtlError>
c0de94b8:	7888      	ldrb	r0, [r1, #2]
c0de94ba:	f000 057f 	and.w	r5, r0, #127	@ 0x7f
c0de94be:	4620      	mov	r0, r4
c0de94c0:	4629      	mov	r1, r5
c0de94c2:	f884 509e 	strb.w	r5, [r4, #158]	@ 0x9e
c0de94c6:	f000 fa77 	bl	c0de99b8 <USBD_LL_SetUSBAddress>
c0de94ca:	f000 f96d 	bl	c0de97a8 <OUTLINED_FUNCTION_2>
c0de94ce:	b10d      	cbz	r5, c0de94d4 <USBD_SetAddress+0x3a>
c0de94d0:	2002      	movs	r0, #2
c0de94d2:	e000      	b.n	c0de94d6 <USBD_SetAddress+0x3c>
c0de94d4:	2001      	movs	r0, #1
c0de94d6:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de94da:	bdb0      	pop	{r4, r5, r7, pc}

c0de94dc <USBD_SetConfig>:
c0de94dc:	b570      	push	{r4, r5, r6, lr}
c0de94de:	788e      	ldrb	r6, [r1, #2]
c0de94e0:	460d      	mov	r5, r1
c0de94e2:	4604      	mov	r4, r0
c0de94e4:	2e02      	cmp	r6, #2
c0de94e6:	d21b      	bcs.n	c0de9520 <USBD_SetConfig+0x44>
c0de94e8:	f894 009c 	ldrb.w	r0, [r4, #156]	@ 0x9c
c0de94ec:	2803      	cmp	r0, #3
c0de94ee:	d007      	beq.n	c0de9500 <USBD_SetConfig+0x24>
c0de94f0:	2802      	cmp	r0, #2
c0de94f2:	d115      	bne.n	c0de9520 <USBD_SetConfig+0x44>
c0de94f4:	b32e      	cbz	r6, c0de9542 <USBD_SetConfig+0x66>
c0de94f6:	2003      	movs	r0, #3
c0de94f8:	6066      	str	r6, [r4, #4]
c0de94fa:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de94fe:	e009      	b.n	c0de9514 <USBD_SetConfig+0x38>
c0de9500:	b1a6      	cbz	r6, c0de952c <USBD_SetConfig+0x50>
c0de9502:	6860      	ldr	r0, [r4, #4]
c0de9504:	2801      	cmp	r0, #1
c0de9506:	d01c      	beq.n	c0de9542 <USBD_SetConfig+0x66>
c0de9508:	b2c1      	uxtb	r1, r0
c0de950a:	4620      	mov	r0, r4
c0de950c:	f7ff fdd2 	bl	c0de90b4 <USBD_ClrClassConfig>
c0de9510:	2001      	movs	r0, #1
c0de9512:	6060      	str	r0, [r4, #4]
c0de9514:	4620      	mov	r0, r4
c0de9516:	4631      	mov	r1, r6
c0de9518:	f7ff fdb2 	bl	c0de9080 <USBD_SetClassConfig>
c0de951c:	2802      	cmp	r0, #2
c0de951e:	d110      	bne.n	c0de9542 <USBD_SetConfig+0x66>
c0de9520:	4620      	mov	r0, r4
c0de9522:	4629      	mov	r1, r5
c0de9524:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de9528:	f000 bbac 	b.w	c0de9c84 <USBD_CtlError>
c0de952c:	2000      	movs	r0, #0
c0de952e:	4631      	mov	r1, r6
c0de9530:	6060      	str	r0, [r4, #4]
c0de9532:	2002      	movs	r0, #2
c0de9534:	f884 009c 	strb.w	r0, [r4, #156]	@ 0x9c
c0de9538:	4620      	mov	r0, r4
c0de953a:	f7ff fdbb 	bl	c0de90b4 <USBD_ClrClassConfig>
c0de953e:	f000 f933 	bl	c0de97a8 <OUTLINED_FUNCTION_2>
c0de9542:	4620      	mov	r0, r4
c0de9544:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de9548:	f000 b955 	b.w	c0de97f6 <USBD_CtlSendStatus>

c0de954c <USBD_GetConfig>:
c0de954c:	88ca      	ldrh	r2, [r1, #6]
c0de954e:	2a01      	cmp	r2, #1
c0de9550:	d10a      	bne.n	c0de9568 <USBD_GetConfig+0x1c>
c0de9552:	f890 209c 	ldrb.w	r2, [r0, #156]	@ 0x9c
c0de9556:	2a03      	cmp	r2, #3
c0de9558:	d008      	beq.n	c0de956c <USBD_GetConfig+0x20>
c0de955a:	2a02      	cmp	r2, #2
c0de955c:	d104      	bne.n	c0de9568 <USBD_GetConfig+0x1c>
c0de955e:	2200      	movs	r2, #0
c0de9560:	4601      	mov	r1, r0
c0de9562:	f841 2f08 	str.w	r2, [r1, #8]!
c0de9566:	e002      	b.n	c0de956e <USBD_GetConfig+0x22>
c0de9568:	f000 bb8c 	b.w	c0de9c84 <USBD_CtlError>
c0de956c:	1d01      	adds	r1, r0, #4
c0de956e:	2201      	movs	r2, #1
c0de9570:	f000 b920 	b.w	c0de97b4 <USBD_CtlSendData>

c0de9574 <USBD_GetStatus>:
c0de9574:	b5b0      	push	{r4, r5, r7, lr}
c0de9576:	4604      	mov	r4, r0
c0de9578:	f890 009c 	ldrb.w	r0, [r0, #156]	@ 0x9c
c0de957c:	f000 00fe 	and.w	r0, r0, #254	@ 0xfe
c0de9580:	2802      	cmp	r0, #2
c0de9582:	d10d      	bne.n	c0de95a0 <USBD_GetStatus+0x2c>
c0de9584:	2001      	movs	r0, #1
c0de9586:	4625      	mov	r5, r4
c0de9588:	f845 0f0c 	str.w	r0, [r5, #12]!
c0de958c:	f8d5 0098 	ldr.w	r0, [r5, #152]	@ 0x98
c0de9590:	b158      	cbz	r0, c0de95aa <USBD_GetStatus+0x36>
c0de9592:	4620      	mov	r0, r4
c0de9594:	f000 f93a 	bl	c0de980c <USBD_CtlReceiveStatus>
c0de9598:	68e0      	ldr	r0, [r4, #12]
c0de959a:	f040 0002 	orr.w	r0, r0, #2
c0de959e:	e005      	b.n	c0de95ac <USBD_GetStatus+0x38>
c0de95a0:	4620      	mov	r0, r4
c0de95a2:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de95a6:	f000 bb6d 	b.w	c0de9c84 <USBD_CtlError>
c0de95aa:	2003      	movs	r0, #3
c0de95ac:	60e0      	str	r0, [r4, #12]
c0de95ae:	4620      	mov	r0, r4
c0de95b0:	4629      	mov	r1, r5
c0de95b2:	2202      	movs	r2, #2
c0de95b4:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de95b8:	f000 b8fc 	b.w	c0de97b4 <USBD_CtlSendData>

c0de95bc <USBD_SetFeature>:
c0de95bc:	b5b0      	push	{r4, r5, r7, lr}
c0de95be:	4604      	mov	r4, r0
c0de95c0:	8848      	ldrh	r0, [r1, #2]
c0de95c2:	2801      	cmp	r0, #1
c0de95c4:	bf18      	it	ne
c0de95c6:	bdb0      	popne	{r4, r5, r7, pc}
c0de95c8:	2001      	movs	r0, #1
c0de95ca:	460d      	mov	r5, r1
c0de95cc:	f8c4 00a4 	str.w	r0, [r4, #164]	@ 0xa4
c0de95d0:	7908      	ldrb	r0, [r1, #4]
c0de95d2:	2802      	cmp	r0, #2
c0de95d4:	d806      	bhi.n	c0de95e4 <USBD_SetFeature+0x28>
c0de95d6:	f000 f8e1 	bl	c0de979c <OUTLINED_FUNCTION_1>
c0de95da:	d003      	beq.n	c0de95e4 <USBD_SetFeature+0x28>
c0de95dc:	f000 f8e7 	bl	c0de97ae <OUTLINED_FUNCTION_3>
c0de95e0:	f000 f8d8 	bl	c0de9794 <OUTLINED_FUNCTION_0>
c0de95e4:	4620      	mov	r0, r4
c0de95e6:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de95ea:	f000 b904 	b.w	c0de97f6 <USBD_CtlSendStatus>

c0de95ee <USBD_ClrFeature>:
c0de95ee:	b5b0      	push	{r4, r5, r7, lr}
c0de95f0:	4604      	mov	r4, r0
c0de95f2:	f890 009c 	ldrb.w	r0, [r0, #156]	@ 0x9c
c0de95f6:	460d      	mov	r5, r1
c0de95f8:	f000 00fe 	and.w	r0, r0, #254	@ 0xfe
c0de95fc:	2802      	cmp	r0, #2
c0de95fe:	d115      	bne.n	c0de962c <USBD_ClrFeature+0x3e>
c0de9600:	8868      	ldrh	r0, [r5, #2]
c0de9602:	2801      	cmp	r0, #1
c0de9604:	bf18      	it	ne
c0de9606:	bdb0      	popne	{r4, r5, r7, pc}
c0de9608:	2000      	movs	r0, #0
c0de960a:	f8c4 00a4 	str.w	r0, [r4, #164]	@ 0xa4
c0de960e:	7928      	ldrb	r0, [r5, #4]
c0de9610:	2802      	cmp	r0, #2
c0de9612:	d806      	bhi.n	c0de9622 <USBD_ClrFeature+0x34>
c0de9614:	f000 f8c2 	bl	c0de979c <OUTLINED_FUNCTION_1>
c0de9618:	d003      	beq.n	c0de9622 <USBD_ClrFeature+0x34>
c0de961a:	f000 f8c8 	bl	c0de97ae <OUTLINED_FUNCTION_3>
c0de961e:	f000 f8b9 	bl	c0de9794 <OUTLINED_FUNCTION_0>
c0de9622:	4620      	mov	r0, r4
c0de9624:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9628:	f000 b8e5 	b.w	c0de97f6 <USBD_CtlSendStatus>
c0de962c:	4620      	mov	r0, r4
c0de962e:	4629      	mov	r1, r5
c0de9630:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9634:	f000 bb26 	b.w	c0de9c84 <USBD_CtlError>

c0de9638 <USBD_StdItfReq>:
c0de9638:	b5b0      	push	{r4, r5, r7, lr}
c0de963a:	4604      	mov	r4, r0
c0de963c:	f890 009c 	ldrb.w	r0, [r0, #156]	@ 0x9c
c0de9640:	460d      	mov	r5, r1
c0de9642:	2803      	cmp	r0, #3
c0de9644:	d10e      	bne.n	c0de9664 <USBD_StdItfReq+0x2c>
c0de9646:	7928      	ldrb	r0, [r5, #4]
c0de9648:	2802      	cmp	r0, #2
c0de964a:	d80b      	bhi.n	c0de9664 <USBD_StdItfReq+0x2c>
c0de964c:	f000 f8a6 	bl	c0de979c <OUTLINED_FUNCTION_1>
c0de9650:	d008      	beq.n	c0de9664 <USBD_StdItfReq+0x2c>
c0de9652:	f000 f8ac 	bl	c0de97ae <OUTLINED_FUNCTION_3>
c0de9656:	f000 f89d 	bl	c0de9794 <OUTLINED_FUNCTION_0>
c0de965a:	88e8      	ldrh	r0, [r5, #6]
c0de965c:	b930      	cbnz	r0, c0de966c <USBD_StdItfReq+0x34>
c0de965e:	f000 f8a3 	bl	c0de97a8 <OUTLINED_FUNCTION_2>
c0de9662:	e003      	b.n	c0de966c <USBD_StdItfReq+0x34>
c0de9664:	4620      	mov	r0, r4
c0de9666:	4629      	mov	r1, r5
c0de9668:	f000 fb0c 	bl	c0de9c84 <USBD_CtlError>
c0de966c:	2000      	movs	r0, #0
c0de966e:	bdb0      	pop	{r4, r5, r7, pc}

c0de9670 <USBD_StdEPReq>:
c0de9670:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de9672:	460d      	mov	r5, r1
c0de9674:	7909      	ldrb	r1, [r1, #4]
c0de9676:	4604      	mov	r4, r0
c0de9678:	f001 007f 	and.w	r0, r1, #127	@ 0x7f
c0de967c:	2805      	cmp	r0, #5
c0de967e:	d304      	bcc.n	c0de968a <USBD_StdEPReq+0x1a>
c0de9680:	4620      	mov	r0, r4
c0de9682:	4629      	mov	r1, r5
c0de9684:	f000 fafe 	bl	c0de9c84 <USBD_CtlError>
c0de9688:	e063      	b.n	c0de9752 <USBD_StdEPReq+0xe2>
c0de968a:	782a      	ldrb	r2, [r5, #0]
c0de968c:	f002 0260 	and.w	r2, r2, #96	@ 0x60
c0de9690:	2a20      	cmp	r2, #32
c0de9692:	d10c      	bne.n	c0de96ae <USBD_StdEPReq+0x3e>
c0de9694:	2902      	cmp	r1, #2
c0de9696:	d80a      	bhi.n	c0de96ae <USBD_StdEPReq+0x3e>
c0de9698:	eb04 02c1 	add.w	r2, r4, r1, lsl #3
c0de969c:	f8d2 20b4 	ldr.w	r2, [r2, #180]	@ 0xb4
c0de96a0:	b12a      	cbz	r2, c0de96ae <USBD_StdEPReq+0x3e>
c0de96a2:	6890      	ldr	r0, [r2, #8]
c0de96a4:	f001 fa6a 	bl	c0deab7c <pic>
c0de96a8:	f000 f874 	bl	c0de9794 <OUTLINED_FUNCTION_0>
c0de96ac:	e051      	b.n	c0de9752 <USBD_StdEPReq+0xe2>
c0de96ae:	786a      	ldrb	r2, [r5, #1]
c0de96b0:	b152      	cbz	r2, c0de96c8 <USBD_StdEPReq+0x58>
c0de96b2:	2a01      	cmp	r2, #1
c0de96b4:	d010      	beq.n	c0de96d8 <USBD_StdEPReq+0x68>
c0de96b6:	2a03      	cmp	r2, #3
c0de96b8:	d14b      	bne.n	c0de9752 <USBD_StdEPReq+0xe2>
c0de96ba:	f894 009c 	ldrb.w	r0, [r4, #156]	@ 0x9c
c0de96be:	2803      	cmp	r0, #3
c0de96c0:	d016      	beq.n	c0de96f0 <USBD_StdEPReq+0x80>
c0de96c2:	2802      	cmp	r0, #2
c0de96c4:	d00e      	beq.n	c0de96e4 <USBD_StdEPReq+0x74>
c0de96c6:	e7db      	b.n	c0de9680 <USBD_StdEPReq+0x10>
c0de96c8:	f894 209c 	ldrb.w	r2, [r4, #156]	@ 0x9c
c0de96cc:	2a03      	cmp	r2, #3
c0de96ce:	d023      	beq.n	c0de9718 <USBD_StdEPReq+0xa8>
c0de96d0:	2a02      	cmp	r2, #2
c0de96d2:	d1d5      	bne.n	c0de9680 <USBD_StdEPReq+0x10>
c0de96d4:	b940      	cbnz	r0, c0de96e8 <USBD_StdEPReq+0x78>
c0de96d6:	e03c      	b.n	c0de9752 <USBD_StdEPReq+0xe2>
c0de96d8:	f894 209c 	ldrb.w	r2, [r4, #156]	@ 0x9c
c0de96dc:	2a03      	cmp	r2, #3
c0de96de:	d02a      	beq.n	c0de9736 <USBD_StdEPReq+0xc6>
c0de96e0:	2a02      	cmp	r2, #2
c0de96e2:	d1cd      	bne.n	c0de9680 <USBD_StdEPReq+0x10>
c0de96e4:	0648      	lsls	r0, r1, #25
c0de96e6:	d034      	beq.n	c0de9752 <USBD_StdEPReq+0xe2>
c0de96e8:	4620      	mov	r0, r4
c0de96ea:	f000 f911 	bl	c0de9910 <USBD_LL_StallEP>
c0de96ee:	e030      	b.n	c0de9752 <USBD_StdEPReq+0xe2>
c0de96f0:	8868      	ldrh	r0, [r5, #2]
c0de96f2:	b928      	cbnz	r0, c0de9700 <USBD_StdEPReq+0x90>
c0de96f4:	0648      	lsls	r0, r1, #25
c0de96f6:	d003      	beq.n	c0de9700 <USBD_StdEPReq+0x90>
c0de96f8:	4620      	mov	r0, r4
c0de96fa:	f000 f909 	bl	c0de9910 <USBD_LL_StallEP>
c0de96fe:	7929      	ldrb	r1, [r5, #4]
c0de9700:	2902      	cmp	r1, #2
c0de9702:	d824      	bhi.n	c0de974e <USBD_StdEPReq+0xde>
c0de9704:	eb04 00c1 	add.w	r0, r4, r1, lsl #3
c0de9708:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de970c:	b1f8      	cbz	r0, c0de974e <USBD_StdEPReq+0xde>
c0de970e:	f000 f84e 	bl	c0de97ae <OUTLINED_FUNCTION_3>
c0de9712:	f000 f83f 	bl	c0de9794 <OUTLINED_FUNCTION_0>
c0de9716:	e01a      	b.n	c0de974e <USBD_StdEPReq+0xde>
c0de9718:	4620      	mov	r0, r4
c0de971a:	f000 f939 	bl	c0de9990 <USBD_LL_IsStallEP>
c0de971e:	2800      	cmp	r0, #0
c0de9720:	bf18      	it	ne
c0de9722:	2001      	movne	r0, #1
c0de9724:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de9728:	f10d 0106 	add.w	r1, sp, #6
c0de972c:	4620      	mov	r0, r4
c0de972e:	2202      	movs	r2, #2
c0de9730:	f000 f840 	bl	c0de97b4 <USBD_CtlSendData>
c0de9734:	e00d      	b.n	c0de9752 <USBD_StdEPReq+0xe2>
c0de9736:	886a      	ldrh	r2, [r5, #2]
c0de9738:	b95a      	cbnz	r2, c0de9752 <USBD_StdEPReq+0xe2>
c0de973a:	b140      	cbz	r0, c0de974e <USBD_StdEPReq+0xde>
c0de973c:	4620      	mov	r0, r4
c0de973e:	f000 f907 	bl	c0de9950 <USBD_LL_ClearStallEP>
c0de9742:	7928      	ldrb	r0, [r5, #4]
c0de9744:	2802      	cmp	r0, #2
c0de9746:	d802      	bhi.n	c0de974e <USBD_StdEPReq+0xde>
c0de9748:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0de974c:	e7dc      	b.n	c0de9708 <USBD_StdEPReq+0x98>
c0de974e:	f000 f82b 	bl	c0de97a8 <OUTLINED_FUNCTION_2>
c0de9752:	2000      	movs	r0, #0
c0de9754:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de9756 <USBD_ParseSetupRequest>:
c0de9756:	780a      	ldrb	r2, [r1, #0]
c0de9758:	7002      	strb	r2, [r0, #0]
c0de975a:	784a      	ldrb	r2, [r1, #1]
c0de975c:	7042      	strb	r2, [r0, #1]
c0de975e:	788a      	ldrb	r2, [r1, #2]
c0de9760:	78cb      	ldrb	r3, [r1, #3]
c0de9762:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de9766:	8042      	strh	r2, [r0, #2]
c0de9768:	790a      	ldrb	r2, [r1, #4]
c0de976a:	794b      	ldrb	r3, [r1, #5]
c0de976c:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de9770:	8082      	strh	r2, [r0, #4]
c0de9772:	798a      	ldrb	r2, [r1, #6]
c0de9774:	79c9      	ldrb	r1, [r1, #7]
c0de9776:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de977a:	80c1      	strh	r1, [r0, #6]
c0de977c:	4770      	bx	lr

c0de977e <USBD_CtlStall>:
c0de977e:	b510      	push	{r4, lr}
c0de9780:	2180      	movs	r1, #128	@ 0x80
c0de9782:	4604      	mov	r4, r0
c0de9784:	f000 f8c4 	bl	c0de9910 <USBD_LL_StallEP>
c0de9788:	4620      	mov	r0, r4
c0de978a:	2100      	movs	r1, #0
c0de978c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de9790:	f000 b8be 	b.w	c0de9910 <USBD_LL_StallEP>

c0de9794 <OUTLINED_FUNCTION_0>:
c0de9794:	4602      	mov	r2, r0
c0de9796:	4620      	mov	r0, r4
c0de9798:	4629      	mov	r1, r5
c0de979a:	4710      	bx	r2

c0de979c <OUTLINED_FUNCTION_1>:
c0de979c:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0de97a0:	f8d0 00b4 	ldr.w	r0, [r0, #180]	@ 0xb4
c0de97a4:	2800      	cmp	r0, #0
c0de97a6:	4770      	bx	lr

c0de97a8 <OUTLINED_FUNCTION_2>:
c0de97a8:	4620      	mov	r0, r4
c0de97aa:	f000 b824 	b.w	c0de97f6 <USBD_CtlSendStatus>

c0de97ae <OUTLINED_FUNCTION_3>:
c0de97ae:	6880      	ldr	r0, [r0, #8]
c0de97b0:	f001 b9e4 	b.w	c0deab7c <pic>

c0de97b4 <USBD_CtlSendData>:
c0de97b4:	b510      	push	{r4, lr}
c0de97b6:	460c      	mov	r4, r1
c0de97b8:	f8c0 10d0 	str.w	r1, [r0, #208]	@ 0xd0
c0de97bc:	2102      	movs	r1, #2
c0de97be:	e9c0 2206 	strd	r2, r2, [r0, #24]
c0de97c2:	f8c0 1094 	str.w	r1, [r0, #148]	@ 0x94
c0de97c6:	6a01      	ldr	r1, [r0, #32]
c0de97c8:	4291      	cmp	r1, r2
c0de97ca:	bf88      	it	hi
c0de97cc:	4611      	movhi	r1, r2
c0de97ce:	f000 f829 	bl	c0de9824 <OUTLINED_FUNCTION_1>
c0de97d2:	2000      	movs	r0, #0
c0de97d4:	bd10      	pop	{r4, pc}

c0de97d6 <USBD_CtlContinueSendData>:
c0de97d6:	b510      	push	{r4, lr}
c0de97d8:	460c      	mov	r4, r1
c0de97da:	6a01      	ldr	r1, [r0, #32]
c0de97dc:	4291      	cmp	r1, r2
c0de97de:	bf88      	it	hi
c0de97e0:	4611      	movhi	r1, r2
c0de97e2:	f000 f81f 	bl	c0de9824 <OUTLINED_FUNCTION_1>
c0de97e6:	2000      	movs	r0, #0
c0de97e8:	bd10      	pop	{r4, pc}

c0de97ea <USBD_CtlContinueRx>:
c0de97ea:	b580      	push	{r7, lr}
c0de97ec:	2100      	movs	r1, #0
c0de97ee:	f000 f917 	bl	c0de9a20 <USBD_LL_PrepareReceive>
c0de97f2:	2000      	movs	r0, #0
c0de97f4:	bd80      	pop	{r7, pc}

c0de97f6 <USBD_CtlSendStatus>:
c0de97f6:	b580      	push	{r7, lr}
c0de97f8:	2104      	movs	r1, #4
c0de97fa:	2200      	movs	r2, #0
c0de97fc:	2300      	movs	r3, #0
c0de97fe:	f8c0 1094 	str.w	r1, [r0, #148]	@ 0x94
c0de9802:	2100      	movs	r1, #0
c0de9804:	f000 f8ee 	bl	c0de99e4 <USBD_LL_Transmit>
c0de9808:	2000      	movs	r0, #0
c0de980a:	bd80      	pop	{r7, pc}

c0de980c <USBD_CtlReceiveStatus>:
c0de980c:	b580      	push	{r7, lr}
c0de980e:	2105      	movs	r1, #5
c0de9810:	2200      	movs	r2, #0
c0de9812:	f000 f802 	bl	c0de981a <OUTLINED_FUNCTION_0>
c0de9816:	2000      	movs	r0, #0
c0de9818:	bd80      	pop	{r7, pc}

c0de981a <OUTLINED_FUNCTION_0>:
c0de981a:	f8c0 1094 	str.w	r1, [r0, #148]	@ 0x94
c0de981e:	2100      	movs	r1, #0
c0de9820:	f000 b8fe 	b.w	c0de9a20 <USBD_LL_PrepareReceive>

c0de9824 <OUTLINED_FUNCTION_1>:
c0de9824:	b28b      	uxth	r3, r1
c0de9826:	4622      	mov	r2, r4
c0de9828:	2100      	movs	r1, #0
c0de982a:	f000 b8db 	b.w	c0de99e4 <USBD_LL_Transmit>
	...

c0de9830 <USBD_LL_Init>:
c0de9830:	4804      	ldr	r0, [pc, #16]	@ (c0de9844 <USBD_LL_Init+0x14>)
c0de9832:	2100      	movs	r1, #0
c0de9834:	f849 1000 	str.w	r1, [r9, r0]
c0de9838:	4803      	ldr	r0, [pc, #12]	@ (c0de9848 <USBD_LL_Init+0x18>)
c0de983a:	f849 1000 	str.w	r1, [r9, r0]
c0de983e:	2000      	movs	r0, #0
c0de9840:	4770      	bx	lr
c0de9842:	bf00      	nop
c0de9844:	00002abc 	.word	0x00002abc
c0de9848:	00002ab8 	.word	0x00002ab8

c0de984c <USBD_LL_DeInit>:
c0de984c:	b5e0      	push	{r5, r6, r7, lr}
c0de984e:	f000 f90e 	bl	c0de9a6e <OUTLINED_FUNCTION_1>
c0de9852:	a801      	add	r0, sp, #4
c0de9854:	f001 fb6e 	bl	c0deaf34 <io_seph_send>
c0de9858:	2000      	movs	r0, #0
c0de985a:	bd8c      	pop	{r2, r3, r7, pc}

c0de985c <USBD_LL_Start>:
c0de985c:	b57c      	push	{r2, r3, r4, r5, r6, lr}
c0de985e:	2003      	movs	r0, #3
c0de9860:	f10d 0403 	add.w	r4, sp, #3
c0de9864:	2500      	movs	r5, #0
c0de9866:	264f      	movs	r6, #79	@ 0x4f
c0de9868:	2105      	movs	r1, #5
c0de986a:	f88d 0006 	strb.w	r0, [sp, #6]
c0de986e:	2002      	movs	r0, #2
c0de9870:	f88d 5007 	strb.w	r5, [sp, #7]
c0de9874:	f88d 5004 	strb.w	r5, [sp, #4]
c0de9878:	f88d 6003 	strb.w	r6, [sp, #3]
c0de987c:	f000 f905 	bl	c0de9a8a <OUTLINED_FUNCTION_2>
c0de9880:	2001      	movs	r0, #1
c0de9882:	2104      	movs	r1, #4
c0de9884:	f88d 5004 	strb.w	r5, [sp, #4]
c0de9888:	f88d 6003 	strb.w	r6, [sp, #3]
c0de988c:	f88d 0006 	strb.w	r0, [sp, #6]
c0de9890:	f000 f8fb 	bl	c0de9a8a <OUTLINED_FUNCTION_2>
c0de9894:	2000      	movs	r0, #0
c0de9896:	bd7c      	pop	{r2, r3, r4, r5, r6, pc}

c0de9898 <USBD_LL_Stop>:
c0de9898:	b5e0      	push	{r5, r6, r7, lr}
c0de989a:	f000 f8e8 	bl	c0de9a6e <OUTLINED_FUNCTION_1>
c0de989e:	a801      	add	r0, sp, #4
c0de98a0:	f001 fb48 	bl	c0deaf34 <io_seph_send>
c0de98a4:	2000      	movs	r0, #0
c0de98a6:	bd8c      	pop	{r2, r3, r7, pc}

c0de98a8 <USBD_LL_OpenEP>:
c0de98a8:	b51c      	push	{r2, r3, r4, lr}
c0de98aa:	4817      	ldr	r0, [pc, #92]	@ (c0de9908 <USBD_LL_OpenEP+0x60>)
c0de98ac:	2400      	movs	r4, #0
c0de98ae:	f88d 1005 	strb.w	r1, [sp, #5]
c0de98b2:	2104      	movs	r1, #4
c0de98b4:	f88d 1003 	strb.w	r1, [sp, #3]
c0de98b8:	2105      	movs	r1, #5
c0de98ba:	f88d 4006 	strb.w	r4, [sp, #6]
c0de98be:	f88d 4001 	strb.w	r4, [sp, #1]
c0de98c2:	f849 4000 	str.w	r4, [r9, r0]
c0de98c6:	4811      	ldr	r0, [pc, #68]	@ (c0de990c <USBD_LL_OpenEP+0x64>)
c0de98c8:	f88d 1002 	strb.w	r1, [sp, #2]
c0de98cc:	214f      	movs	r1, #79	@ 0x4f
c0de98ce:	f88d 1000 	strb.w	r1, [sp]
c0de98d2:	f849 4000 	str.w	r4, [r9, r0]
c0de98d6:	2001      	movs	r0, #1
c0de98d8:	f88d 0004 	strb.w	r0, [sp, #4]
c0de98dc:	b152      	cbz	r2, c0de98f4 <USBD_LL_OpenEP+0x4c>
c0de98de:	2a03      	cmp	r2, #3
c0de98e0:	d005      	beq.n	c0de98ee <USBD_LL_OpenEP+0x46>
c0de98e2:	2a02      	cmp	r2, #2
c0de98e4:	d005      	beq.n	c0de98f2 <USBD_LL_OpenEP+0x4a>
c0de98e6:	2a01      	cmp	r2, #1
c0de98e8:	d106      	bne.n	c0de98f8 <USBD_LL_OpenEP+0x50>
c0de98ea:	2004      	movs	r0, #4
c0de98ec:	e002      	b.n	c0de98f4 <USBD_LL_OpenEP+0x4c>
c0de98ee:	2002      	movs	r0, #2
c0de98f0:	e000      	b.n	c0de98f4 <USBD_LL_OpenEP+0x4c>
c0de98f2:	2003      	movs	r0, #3
c0de98f4:	f88d 0006 	strb.w	r0, [sp, #6]
c0de98f8:	4668      	mov	r0, sp
c0de98fa:	2108      	movs	r1, #8
c0de98fc:	f88d 3007 	strb.w	r3, [sp, #7]
c0de9900:	f001 fb18 	bl	c0deaf34 <io_seph_send>
c0de9904:	2000      	movs	r0, #0
c0de9906:	bd1c      	pop	{r2, r3, r4, pc}
c0de9908:	00002ab8 	.word	0x00002ab8
c0de990c:	00002abc 	.word	0x00002abc

c0de9910 <USBD_LL_StallEP>:
c0de9910:	b51c      	push	{r2, r3, r4, lr}
c0de9912:	460c      	mov	r4, r1
c0de9914:	2000      	movs	r0, #0
c0de9916:	2140      	movs	r1, #64	@ 0x40
c0de9918:	f000 f89a 	bl	c0de9a50 <OUTLINED_FUNCTION_0>
c0de991c:	f10d 0002 	add.w	r0, sp, #2
c0de9920:	2106      	movs	r1, #6
c0de9922:	f001 fb07 	bl	c0deaf34 <io_seph_send>
c0de9926:	4909      	ldr	r1, [pc, #36]	@ (c0de994c <USBD_LL_StallEP+0x3c>)
c0de9928:	0622      	lsls	r2, r4, #24
c0de992a:	4807      	ldr	r0, [pc, #28]	@ (c0de9948 <USBD_LL_StallEP+0x38>)
c0de992c:	f004 027f 	and.w	r2, r4, #127	@ 0x7f
c0de9930:	4449      	add	r1, r9
c0de9932:	bf58      	it	pl
c0de9934:	eb09 0100 	addpl.w	r1, r9, r0
c0de9938:	2301      	movs	r3, #1
c0de993a:	6808      	ldr	r0, [r1, #0]
c0de993c:	fa03 f202 	lsl.w	r2, r3, r2
c0de9940:	4310      	orrs	r0, r2
c0de9942:	6008      	str	r0, [r1, #0]
c0de9944:	2000      	movs	r0, #0
c0de9946:	bd1c      	pop	{r2, r3, r4, pc}
c0de9948:	00002abc 	.word	0x00002abc
c0de994c:	00002ab8 	.word	0x00002ab8

c0de9950 <USBD_LL_ClearStallEP>:
c0de9950:	b51c      	push	{r2, r3, r4, lr}
c0de9952:	460c      	mov	r4, r1
c0de9954:	2000      	movs	r0, #0
c0de9956:	2180      	movs	r1, #128	@ 0x80
c0de9958:	f000 f87a 	bl	c0de9a50 <OUTLINED_FUNCTION_0>
c0de995c:	f10d 0002 	add.w	r0, sp, #2
c0de9960:	2106      	movs	r1, #6
c0de9962:	f001 fae7 	bl	c0deaf34 <io_seph_send>
c0de9966:	4909      	ldr	r1, [pc, #36]	@ (c0de998c <USBD_LL_ClearStallEP+0x3c>)
c0de9968:	0622      	lsls	r2, r4, #24
c0de996a:	4807      	ldr	r0, [pc, #28]	@ (c0de9988 <USBD_LL_ClearStallEP+0x38>)
c0de996c:	f004 027f 	and.w	r2, r4, #127	@ 0x7f
c0de9970:	4449      	add	r1, r9
c0de9972:	bf58      	it	pl
c0de9974:	eb09 0100 	addpl.w	r1, r9, r0
c0de9978:	2301      	movs	r3, #1
c0de997a:	6808      	ldr	r0, [r1, #0]
c0de997c:	fa03 f202 	lsl.w	r2, r3, r2
c0de9980:	4390      	bics	r0, r2
c0de9982:	6008      	str	r0, [r1, #0]
c0de9984:	2000      	movs	r0, #0
c0de9986:	bd1c      	pop	{r2, r3, r4, pc}
c0de9988:	00002abc 	.word	0x00002abc
c0de998c:	00002ab8 	.word	0x00002ab8

c0de9990 <USBD_LL_IsStallEP>:
c0de9990:	4a08      	ldr	r2, [pc, #32]	@ (c0de99b4 <USBD_LL_IsStallEP+0x24>)
c0de9992:	060b      	lsls	r3, r1, #24
c0de9994:	4806      	ldr	r0, [pc, #24]	@ (c0de99b0 <USBD_LL_IsStallEP+0x20>)
c0de9996:	f001 017f 	and.w	r1, r1, #127	@ 0x7f
c0de999a:	444a      	add	r2, r9
c0de999c:	bf58      	it	pl
c0de999e:	eb09 0200 	addpl.w	r2, r9, r0
c0de99a2:	7810      	ldrb	r0, [r2, #0]
c0de99a4:	2201      	movs	r2, #1
c0de99a6:	fa02 f101 	lsl.w	r1, r2, r1
c0de99aa:	4008      	ands	r0, r1
c0de99ac:	4770      	bx	lr
c0de99ae:	bf00      	nop
c0de99b0:	00002abc 	.word	0x00002abc
c0de99b4:	00002ab8 	.word	0x00002ab8

c0de99b8 <USBD_LL_SetUSBAddress>:
c0de99b8:	b5e0      	push	{r5, r6, r7, lr}
c0de99ba:	2003      	movs	r0, #3
c0de99bc:	f88d 1007 	strb.w	r1, [sp, #7]
c0de99c0:	2105      	movs	r1, #5
c0de99c2:	f88d 0006 	strb.w	r0, [sp, #6]
c0de99c6:	2002      	movs	r0, #2
c0de99c8:	f88d 0005 	strb.w	r0, [sp, #5]
c0de99cc:	2000      	movs	r0, #0
c0de99ce:	f88d 0004 	strb.w	r0, [sp, #4]
c0de99d2:	204f      	movs	r0, #79	@ 0x4f
c0de99d4:	f88d 0003 	strb.w	r0, [sp, #3]
c0de99d8:	f10d 0003 	add.w	r0, sp, #3
c0de99dc:	f001 faaa 	bl	c0deaf34 <io_seph_send>
c0de99e0:	2000      	movs	r0, #0
c0de99e2:	bd8c      	pop	{r2, r3, r7, pc}

c0de99e4 <USBD_LL_Transmit>:
c0de99e4:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de99e6:	2020      	movs	r0, #32
c0de99e8:	f88d 1005 	strb.w	r1, [sp, #5]
c0de99ec:	2106      	movs	r1, #6
c0de99ee:	461c      	mov	r4, r3
c0de99f0:	4615      	mov	r5, r2
c0de99f2:	f88d 3007 	strb.w	r3, [sp, #7]
c0de99f6:	f88d 0006 	strb.w	r0, [sp, #6]
c0de99fa:	2050      	movs	r0, #80	@ 0x50
c0de99fc:	f88d 0002 	strb.w	r0, [sp, #2]
c0de9a00:	1cd8      	adds	r0, r3, #3
c0de9a02:	f88d 0004 	strb.w	r0, [sp, #4]
c0de9a06:	0a00      	lsrs	r0, r0, #8
c0de9a08:	f88d 0003 	strb.w	r0, [sp, #3]
c0de9a0c:	f10d 0002 	add.w	r0, sp, #2
c0de9a10:	f001 fa90 	bl	c0deaf34 <io_seph_send>
c0de9a14:	4628      	mov	r0, r5
c0de9a16:	4621      	mov	r1, r4
c0de9a18:	f001 fa8c 	bl	c0deaf34 <io_seph_send>
c0de9a1c:	2000      	movs	r0, #0
c0de9a1e:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}

c0de9a20 <USBD_LL_PrepareReceive>:
c0de9a20:	b5e0      	push	{r5, r6, r7, lr}
c0de9a22:	2030      	movs	r0, #48	@ 0x30
c0de9a24:	f88d 1005 	strb.w	r1, [sp, #5]
c0de9a28:	2106      	movs	r1, #6
c0de9a2a:	f88d 2007 	strb.w	r2, [sp, #7]
c0de9a2e:	f88d 0006 	strb.w	r0, [sp, #6]
c0de9a32:	2003      	movs	r0, #3
c0de9a34:	f88d 0004 	strb.w	r0, [sp, #4]
c0de9a38:	2000      	movs	r0, #0
c0de9a3a:	f88d 0003 	strb.w	r0, [sp, #3]
c0de9a3e:	2050      	movs	r0, #80	@ 0x50
c0de9a40:	f88d 0002 	strb.w	r0, [sp, #2]
c0de9a44:	f10d 0002 	add.w	r0, sp, #2
c0de9a48:	f001 fa74 	bl	c0deaf34 <io_seph_send>
c0de9a4c:	2000      	movs	r0, #0
c0de9a4e:	bd8c      	pop	{r2, r3, r7, pc}

c0de9a50 <OUTLINED_FUNCTION_0>:
c0de9a50:	f88d 1006 	strb.w	r1, [sp, #6]
c0de9a54:	2103      	movs	r1, #3
c0de9a56:	f88d 0007 	strb.w	r0, [sp, #7]
c0de9a5a:	f88d 0003 	strb.w	r0, [sp, #3]
c0de9a5e:	2050      	movs	r0, #80	@ 0x50
c0de9a60:	f88d 4005 	strb.w	r4, [sp, #5]
c0de9a64:	f88d 1004 	strb.w	r1, [sp, #4]
c0de9a68:	f88d 0002 	strb.w	r0, [sp, #2]
c0de9a6c:	4770      	bx	lr

c0de9a6e <OUTLINED_FUNCTION_1>:
c0de9a6e:	2002      	movs	r0, #2
c0de9a70:	2104      	movs	r1, #4
c0de9a72:	f88d 0007 	strb.w	r0, [sp, #7]
c0de9a76:	2001      	movs	r0, #1
c0de9a78:	f88d 0006 	strb.w	r0, [sp, #6]
c0de9a7c:	2000      	movs	r0, #0
c0de9a7e:	f88d 0005 	strb.w	r0, [sp, #5]
c0de9a82:	204f      	movs	r0, #79	@ 0x4f
c0de9a84:	f88d 0004 	strb.w	r0, [sp, #4]
c0de9a88:	4770      	bx	lr

c0de9a8a <OUTLINED_FUNCTION_2>:
c0de9a8a:	f88d 0005 	strb.w	r0, [sp, #5]
c0de9a8e:	4620      	mov	r0, r4
c0de9a90:	f001 ba50 	b.w	c0deaf34 <io_seph_send>

c0de9a94 <USBD_HID_GetHidDescriptor_impl>:
c0de9a94:	4907      	ldr	r1, [pc, #28]	@ (c0de9ab4 <USBD_HID_GetHidDescriptor_impl+0x20>)
c0de9a96:	2200      	movs	r2, #0
c0de9a98:	4449      	add	r1, r9
c0de9a9a:	f891 10ac 	ldrb.w	r1, [r1, #172]	@ 0xac
c0de9a9e:	2900      	cmp	r1, #0
c0de9aa0:	f04f 0100 	mov.w	r1, #0
c0de9aa4:	bf08      	it	eq
c0de9aa6:	2109      	moveq	r1, #9
c0de9aa8:	8001      	strh	r1, [r0, #0]
c0de9aaa:	4803      	ldr	r0, [pc, #12]	@ (c0de9ab8 <USBD_HID_GetHidDescriptor_impl+0x24>)
c0de9aac:	4478      	add	r0, pc
c0de9aae:	bf18      	it	ne
c0de9ab0:	4610      	movne	r0, r2
c0de9ab2:	4770      	bx	lr
c0de9ab4:	000029e4 	.word	0x000029e4
c0de9ab8:	00003484 	.word	0x00003484

c0de9abc <USBD_HID_GetReportDescriptor_impl>:
c0de9abc:	4907      	ldr	r1, [pc, #28]	@ (c0de9adc <USBD_HID_GetReportDescriptor_impl+0x20>)
c0de9abe:	2200      	movs	r2, #0
c0de9ac0:	4449      	add	r1, r9
c0de9ac2:	f891 10ac 	ldrb.w	r1, [r1, #172]	@ 0xac
c0de9ac6:	2900      	cmp	r1, #0
c0de9ac8:	f04f 0100 	mov.w	r1, #0
c0de9acc:	bf08      	it	eq
c0de9ace:	2122      	moveq	r1, #34	@ 0x22
c0de9ad0:	8001      	strh	r1, [r0, #0]
c0de9ad2:	4803      	ldr	r0, [pc, #12]	@ (c0de9ae0 <USBD_HID_GetReportDescriptor_impl+0x24>)
c0de9ad4:	4478      	add	r0, pc
c0de9ad6:	bf18      	it	ne
c0de9ad8:	4610      	movne	r0, r2
c0de9ada:	4770      	bx	lr
c0de9adc:	000029e4 	.word	0x000029e4
c0de9ae0:	00003465 	.word	0x00003465

c0de9ae4 <USBD_HID_DataIn_impl>:
c0de9ae4:	2902      	cmp	r1, #2
c0de9ae6:	d106      	bne.n	c0de9af6 <USBD_HID_DataIn_impl+0x12>
c0de9ae8:	b580      	push	{r7, lr}
c0de9aea:	4804      	ldr	r0, [pc, #16]	@ (c0de9afc <USBD_HID_DataIn_impl+0x18>)
c0de9aec:	4478      	add	r0, pc
c0de9aee:	f000 fe19 	bl	c0dea724 <io_usb_hid_sent>
c0de9af2:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de9af6:	2000      	movs	r0, #0
c0de9af8:	4770      	bx	lr
c0de9afa:	bf00      	nop
c0de9afc:	00000a71 	.word	0x00000a71

c0de9b00 <USBD_HID_DataOut_impl>:
c0de9b00:	b570      	push	{r4, r5, r6, lr}
c0de9b02:	2902      	cmp	r1, #2
c0de9b04:	d121      	bne.n	c0de9b4a <USBD_HID_DataOut_impl+0x4a>
c0de9b06:	4615      	mov	r5, r2
c0de9b08:	2102      	movs	r1, #2
c0de9b0a:	2240      	movs	r2, #64	@ 0x40
c0de9b0c:	461c      	mov	r4, r3
c0de9b0e:	f7ff ff87 	bl	c0de9a20 <USBD_LL_PrepareReceive>
c0de9b12:	4e0f      	ldr	r6, [pc, #60]	@ (c0de9b50 <USBD_HID_DataOut_impl+0x50>)
c0de9b14:	eb09 0006 	add.w	r0, r9, r6
c0de9b18:	7980      	ldrb	r0, [r0, #6]
c0de9b1a:	b9b0      	cbnz	r0, c0de9b4a <USBD_HID_DataOut_impl+0x4a>
c0de9b1c:	2002      	movs	r0, #2
c0de9b1e:	f000 fce1 	bl	c0dea4e4 <io_seproxyhal_get_ep_rx_size>
c0de9b22:	4602      	mov	r2, r0
c0de9b24:	480c      	ldr	r0, [pc, #48]	@ (c0de9b58 <USBD_HID_DataOut_impl+0x58>)
c0de9b26:	4629      	mov	r1, r5
c0de9b28:	4623      	mov	r3, r4
c0de9b2a:	4478      	add	r0, pc
c0de9b2c:	f000 fd1e 	bl	c0dea56c <io_usb_hid_receive>
c0de9b30:	2802      	cmp	r0, #2
c0de9b32:	d10a      	bne.n	c0de9b4a <USBD_HID_DataOut_impl+0x4a>
c0de9b34:	2007      	movs	r0, #7
c0de9b36:	2101      	movs	r1, #1
c0de9b38:	f809 0006 	strb.w	r0, [r9, r6]
c0de9b3c:	eb09 0006 	add.w	r0, r9, r6
c0de9b40:	7181      	strb	r1, [r0, #6]
c0de9b42:	4904      	ldr	r1, [pc, #16]	@ (c0de9b54 <USBD_HID_DataOut_impl+0x54>)
c0de9b44:	f859 1001 	ldr.w	r1, [r9, r1]
c0de9b48:	8041      	strh	r1, [r0, #2]
c0de9b4a:	2000      	movs	r0, #0
c0de9b4c:	bd70      	pop	{r4, r5, r6, pc}
c0de9b4e:	bf00      	nop
c0de9b50:	00002bc8 	.word	0x00002bc8
c0de9b54:	00002c28 	.word	0x00002c28
c0de9b58:	00000a33 	.word	0x00000a33

c0de9b5c <USBD_WEBUSB_Init>:
c0de9b5c:	b510      	push	{r4, lr}
c0de9b5e:	2183      	movs	r1, #131	@ 0x83
c0de9b60:	2203      	movs	r2, #3
c0de9b62:	2340      	movs	r3, #64	@ 0x40
c0de9b64:	4604      	mov	r4, r0
c0de9b66:	f7ff fe9f 	bl	c0de98a8 <USBD_LL_OpenEP>
c0de9b6a:	4620      	mov	r0, r4
c0de9b6c:	2103      	movs	r1, #3
c0de9b6e:	2203      	movs	r2, #3
c0de9b70:	2340      	movs	r3, #64	@ 0x40
c0de9b72:	f7ff fe99 	bl	c0de98a8 <USBD_LL_OpenEP>
c0de9b76:	4620      	mov	r0, r4
c0de9b78:	2103      	movs	r1, #3
c0de9b7a:	2240      	movs	r2, #64	@ 0x40
c0de9b7c:	f7ff ff50 	bl	c0de9a20 <USBD_LL_PrepareReceive>
c0de9b80:	2000      	movs	r0, #0
c0de9b82:	bd10      	pop	{r4, pc}

c0de9b84 <USBD_WEBUSB_DeInit>:
c0de9b84:	2000      	movs	r0, #0
c0de9b86:	4770      	bx	lr

c0de9b88 <USBD_WEBUSB_Setup>:
c0de9b88:	2000      	movs	r0, #0
c0de9b8a:	4770      	bx	lr

c0de9b8c <USBD_WEBUSB_DataIn>:
c0de9b8c:	2903      	cmp	r1, #3
c0de9b8e:	d106      	bne.n	c0de9b9e <USBD_WEBUSB_DataIn+0x12>
c0de9b90:	b580      	push	{r7, lr}
c0de9b92:	4804      	ldr	r0, [pc, #16]	@ (c0de9ba4 <USBD_WEBUSB_DataIn+0x18>)
c0de9b94:	4478      	add	r0, pc
c0de9b96:	f000 fdc5 	bl	c0dea724 <io_usb_hid_sent>
c0de9b9a:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de9b9e:	2000      	movs	r0, #0
c0de9ba0:	4770      	bx	lr
c0de9ba2:	bf00      	nop
c0de9ba4:	00000499 	.word	0x00000499

c0de9ba8 <USBD_WEBUSB_DataOut>:
c0de9ba8:	b570      	push	{r4, r5, r6, lr}
c0de9baa:	2903      	cmp	r1, #3
c0de9bac:	d121      	bne.n	c0de9bf2 <USBD_WEBUSB_DataOut+0x4a>
c0de9bae:	4615      	mov	r5, r2
c0de9bb0:	2103      	movs	r1, #3
c0de9bb2:	2240      	movs	r2, #64	@ 0x40
c0de9bb4:	461c      	mov	r4, r3
c0de9bb6:	f7ff ff33 	bl	c0de9a20 <USBD_LL_PrepareReceive>
c0de9bba:	4e0f      	ldr	r6, [pc, #60]	@ (c0de9bf8 <USBD_WEBUSB_DataOut+0x50>)
c0de9bbc:	eb09 0006 	add.w	r0, r9, r6
c0de9bc0:	7980      	ldrb	r0, [r0, #6]
c0de9bc2:	b9b0      	cbnz	r0, c0de9bf2 <USBD_WEBUSB_DataOut+0x4a>
c0de9bc4:	2003      	movs	r0, #3
c0de9bc6:	f000 fc8d 	bl	c0dea4e4 <io_seproxyhal_get_ep_rx_size>
c0de9bca:	4602      	mov	r2, r0
c0de9bcc:	480c      	ldr	r0, [pc, #48]	@ (c0de9c00 <USBD_WEBUSB_DataOut+0x58>)
c0de9bce:	4629      	mov	r1, r5
c0de9bd0:	4623      	mov	r3, r4
c0de9bd2:	4478      	add	r0, pc
c0de9bd4:	f000 fcca 	bl	c0dea56c <io_usb_hid_receive>
c0de9bd8:	2802      	cmp	r0, #2
c0de9bda:	d10a      	bne.n	c0de9bf2 <USBD_WEBUSB_DataOut+0x4a>
c0de9bdc:	200b      	movs	r0, #11
c0de9bde:	2105      	movs	r1, #5
c0de9be0:	f809 0006 	strb.w	r0, [r9, r6]
c0de9be4:	eb09 0006 	add.w	r0, r9, r6
c0de9be8:	7181      	strb	r1, [r0, #6]
c0de9bea:	4904      	ldr	r1, [pc, #16]	@ (c0de9bfc <USBD_WEBUSB_DataOut+0x54>)
c0de9bec:	f859 1001 	ldr.w	r1, [r9, r1]
c0de9bf0:	8041      	strh	r1, [r0, #2]
c0de9bf2:	2000      	movs	r0, #0
c0de9bf4:	bd70      	pop	{r4, r5, r6, pc}
c0de9bf6:	bf00      	nop
c0de9bf8:	00002bc8 	.word	0x00002bc8
c0de9bfc:	00002c28 	.word	0x00002c28
c0de9c00:	0000045b 	.word	0x0000045b

c0de9c04 <USBD_DeviceDescriptor>:
c0de9c04:	2012      	movs	r0, #18
c0de9c06:	8008      	strh	r0, [r1, #0]
c0de9c08:	4801      	ldr	r0, [pc, #4]	@ (c0de9c10 <USBD_DeviceDescriptor+0xc>)
c0de9c0a:	4478      	add	r0, pc
c0de9c0c:	4770      	bx	lr
c0de9c0e:	bf00      	nop
c0de9c10:	00003572 	.word	0x00003572

c0de9c14 <USBD_LangIDStrDescriptor>:
c0de9c14:	2004      	movs	r0, #4
c0de9c16:	8008      	strh	r0, [r1, #0]
c0de9c18:	4801      	ldr	r0, [pc, #4]	@ (c0de9c20 <USBD_LangIDStrDescriptor+0xc>)
c0de9c1a:	4478      	add	r0, pc
c0de9c1c:	4770      	bx	lr
c0de9c1e:	bf00      	nop
c0de9c20:	00003574 	.word	0x00003574

c0de9c24 <USBD_ManufacturerStrDescriptor>:
c0de9c24:	200e      	movs	r0, #14
c0de9c26:	8008      	strh	r0, [r1, #0]
c0de9c28:	4801      	ldr	r0, [pc, #4]	@ (c0de9c30 <USBD_ManufacturerStrDescriptor+0xc>)
c0de9c2a:	4478      	add	r0, pc
c0de9c2c:	4770      	bx	lr
c0de9c2e:	bf00      	nop
c0de9c30:	00003568 	.word	0x00003568

c0de9c34 <USBD_ProductStrDescriptor>:
c0de9c34:	2018      	movs	r0, #24
c0de9c36:	8008      	strh	r0, [r1, #0]
c0de9c38:	4801      	ldr	r0, [pc, #4]	@ (c0de9c40 <USBD_ProductStrDescriptor+0xc>)
c0de9c3a:	4478      	add	r0, pc
c0de9c3c:	4770      	bx	lr
c0de9c3e:	bf00      	nop
c0de9c40:	00003566 	.word	0x00003566

c0de9c44 <USBD_SerialStrDescriptor>:
c0de9c44:	200a      	movs	r0, #10
c0de9c46:	8008      	strh	r0, [r1, #0]
c0de9c48:	4801      	ldr	r0, [pc, #4]	@ (c0de9c50 <USBD_SerialStrDescriptor+0xc>)
c0de9c4a:	4478      	add	r0, pc
c0de9c4c:	4770      	bx	lr
c0de9c4e:	bf00      	nop
c0de9c50:	0000356e 	.word	0x0000356e

c0de9c54 <USBD_ConfigStrDescriptor>:
c0de9c54:	2018      	movs	r0, #24
c0de9c56:	8008      	strh	r0, [r1, #0]
c0de9c58:	4801      	ldr	r0, [pc, #4]	@ (c0de9c60 <USBD_ConfigStrDescriptor+0xc>)
c0de9c5a:	4478      	add	r0, pc
c0de9c5c:	4770      	bx	lr
c0de9c5e:	bf00      	nop
c0de9c60:	00003546 	.word	0x00003546

c0de9c64 <USBD_InterfaceStrDescriptor>:
c0de9c64:	2018      	movs	r0, #24
c0de9c66:	8008      	strh	r0, [r1, #0]
c0de9c68:	4801      	ldr	r0, [pc, #4]	@ (c0de9c70 <USBD_InterfaceStrDescriptor+0xc>)
c0de9c6a:	4478      	add	r0, pc
c0de9c6c:	4770      	bx	lr
c0de9c6e:	bf00      	nop
c0de9c70:	00003536 	.word	0x00003536

c0de9c74 <USBD_BOSDescriptor>:
c0de9c74:	2039      	movs	r0, #57	@ 0x39
c0de9c76:	8008      	strh	r0, [r1, #0]
c0de9c78:	4801      	ldr	r0, [pc, #4]	@ (c0de9c80 <USBD_BOSDescriptor+0xc>)
c0de9c7a:	4478      	add	r0, pc
c0de9c7c:	4770      	bx	lr
c0de9c7e:	bf00      	nop
c0de9c80:	000032e1 	.word	0x000032e1

c0de9c84 <USBD_CtlError>:
c0de9c84:	b580      	push	{r7, lr}
c0de9c86:	f991 2000 	ldrsb.w	r2, [r1]
c0de9c8a:	f1b2 3fff 	cmp.w	r2, #4294967295	@ 0xffffffff
c0de9c8e:	dd03      	ble.n	c0de9c98 <USBD_CtlError+0x14>
c0de9c90:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de9c94:	f7ff bd73 	b.w	c0de977e <USBD_CtlStall>
c0de9c98:	784a      	ldrb	r2, [r1, #1]
c0de9c9a:	2a77      	cmp	r2, #119	@ 0x77
c0de9c9c:	d00d      	beq.n	c0de9cba <USBD_CtlError+0x36>
c0de9c9e:	2a06      	cmp	r2, #6
c0de9ca0:	d1f6      	bne.n	c0de9c90 <USBD_CtlError+0xc>
c0de9ca2:	884a      	ldrh	r2, [r1, #2]
c0de9ca4:	f240 33ee 	movw	r3, #1006	@ 0x3ee
c0de9ca8:	429a      	cmp	r2, r3
c0de9caa:	d1f1      	bne.n	c0de9c90 <USBD_CtlError+0xc>
c0de9cac:	88ca      	ldrh	r2, [r1, #6]
c0de9cae:	2a12      	cmp	r2, #18
c0de9cb0:	bf28      	it	cs
c0de9cb2:	2212      	movcs	r2, #18
c0de9cb4:	4911      	ldr	r1, [pc, #68]	@ (c0de9cfc <USBD_CtlError+0x78>)
c0de9cb6:	4479      	add	r1, pc
c0de9cb8:	e01c      	b.n	c0de9cf4 <USBD_CtlError+0x70>
c0de9cba:	888a      	ldrh	r2, [r1, #4]
c0de9cbc:	2a04      	cmp	r2, #4
c0de9cbe:	d106      	bne.n	c0de9cce <USBD_CtlError+0x4a>
c0de9cc0:	88ca      	ldrh	r2, [r1, #6]
c0de9cc2:	2a28      	cmp	r2, #40	@ 0x28
c0de9cc4:	bf28      	it	cs
c0de9cc6:	2228      	movcs	r2, #40	@ 0x28
c0de9cc8:	490d      	ldr	r1, [pc, #52]	@ (c0de9d00 <USBD_CtlError+0x7c>)
c0de9cca:	4479      	add	r1, pc
c0de9ccc:	e012      	b.n	c0de9cf4 <USBD_CtlError+0x70>
c0de9cce:	888a      	ldrh	r2, [r1, #4]
c0de9cd0:	2a05      	cmp	r2, #5
c0de9cd2:	d106      	bne.n	c0de9ce2 <USBD_CtlError+0x5e>
c0de9cd4:	88ca      	ldrh	r2, [r1, #6]
c0de9cd6:	2a92      	cmp	r2, #146	@ 0x92
c0de9cd8:	bf28      	it	cs
c0de9cda:	2292      	movcs	r2, #146	@ 0x92
c0de9cdc:	4909      	ldr	r1, [pc, #36]	@ (c0de9d04 <USBD_CtlError+0x80>)
c0de9cde:	4479      	add	r1, pc
c0de9ce0:	e008      	b.n	c0de9cf4 <USBD_CtlError+0x70>
c0de9ce2:	888a      	ldrh	r2, [r1, #4]
c0de9ce4:	2a07      	cmp	r2, #7
c0de9ce6:	d1d3      	bne.n	c0de9c90 <USBD_CtlError+0xc>
c0de9ce8:	88ca      	ldrh	r2, [r1, #6]
c0de9cea:	2ab2      	cmp	r2, #178	@ 0xb2
c0de9cec:	bf28      	it	cs
c0de9cee:	22b2      	movcs	r2, #178	@ 0xb2
c0de9cf0:	4905      	ldr	r1, [pc, #20]	@ (c0de9d08 <USBD_CtlError+0x84>)
c0de9cf2:	4479      	add	r1, pc
c0de9cf4:	f7ff fd5e 	bl	c0de97b4 <USBD_CtlSendData>
c0de9cf8:	bd80      	pop	{r7, pc}
c0de9cfa:	bf00      	nop
c0de9cfc:	000032fe 	.word	0x000032fe
c0de9d00:	000034f8 	.word	0x000034f8
c0de9d04:	000032e8 	.word	0x000032e8
c0de9d08:	00003366 	.word	0x00003366

c0de9d0c <USB_power>:
c0de9d0c:	b5b0      	push	{r4, r5, r7, lr}
c0de9d0e:	4d16      	ldr	r5, [pc, #88]	@ (c0de9d68 <USB_power+0x5c>)
c0de9d10:	4604      	mov	r4, r0
c0de9d12:	21d4      	movs	r1, #212	@ 0xd4
c0de9d14:	eb09 0005 	add.w	r0, r9, r5
c0de9d18:	f001 fb00 	bl	c0deb31c <__aeabi_memclr>
c0de9d1c:	4813      	ldr	r0, [pc, #76]	@ (c0de9d6c <USB_power+0x60>)
c0de9d1e:	2100      	movs	r1, #0
c0de9d20:	4448      	add	r0, r9
c0de9d22:	e9c0 1103 	strd	r1, r1, [r0, #12]
c0de9d26:	6141      	str	r1, [r0, #20]
c0de9d28:	b1c4      	cbz	r4, c0de9d5c <USB_power+0x50>
c0de9d2a:	4911      	ldr	r1, [pc, #68]	@ (c0de9d70 <USB_power+0x64>)
c0de9d2c:	eb09 0405 	add.w	r4, r9, r5
c0de9d30:	2200      	movs	r2, #0
c0de9d32:	4620      	mov	r0, r4
c0de9d34:	4479      	add	r1, pc
c0de9d36:	f7ff f964 	bl	c0de9002 <USBD_Init>
c0de9d3a:	4a0e      	ldr	r2, [pc, #56]	@ (c0de9d74 <USB_power+0x68>)
c0de9d3c:	2000      	movs	r0, #0
c0de9d3e:	4621      	mov	r1, r4
c0de9d40:	447a      	add	r2, pc
c0de9d42:	f7ff f98d 	bl	c0de9060 <USBD_RegisterClassForInterface>
c0de9d46:	4a0c      	ldr	r2, [pc, #48]	@ (c0de9d78 <USB_power+0x6c>)
c0de9d48:	2001      	movs	r0, #1
c0de9d4a:	4621      	mov	r1, r4
c0de9d4c:	447a      	add	r2, pc
c0de9d4e:	f7ff f987 	bl	c0de9060 <USBD_RegisterClassForInterface>
c0de9d52:	4620      	mov	r0, r4
c0de9d54:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9d58:	f7ff b98d 	b.w	c0de9076 <USBD_Start>
c0de9d5c:	eb09 0005 	add.w	r0, r9, r5
c0de9d60:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9d64:	f7ff b963 	b.w	c0de902e <USBD_DeInit>
c0de9d68:	000029e4 	.word	0x000029e4
c0de9d6c:	00002bc8 	.word	0x00002bc8
c0de9d70:	00003260 	.word	0x00003260
c0de9d74:	000033cc 	.word	0x000033cc
c0de9d78:	000033f8 	.word	0x000033f8

c0de9d7c <USBD_GetCfgDesc_impl>:
c0de9d7c:	2140      	movs	r1, #64	@ 0x40
c0de9d7e:	8001      	strh	r1, [r0, #0]
c0de9d80:	4801      	ldr	r0, [pc, #4]	@ (c0de9d88 <USBD_GetCfgDesc_impl+0xc>)
c0de9d82:	4478      	add	r0, pc
c0de9d84:	4770      	bx	lr
c0de9d86:	bf00      	nop
c0de9d88:	0000346a 	.word	0x0000346a

c0de9d8c <USBD_GetDeviceQualifierDesc_impl>:
c0de9d8c:	210a      	movs	r1, #10
c0de9d8e:	8001      	strh	r1, [r0, #0]
c0de9d90:	4801      	ldr	r0, [pc, #4]	@ (c0de9d98 <USBD_GetDeviceQualifierDesc_impl+0xc>)
c0de9d92:	4478      	add	r0, pc
c0de9d94:	4770      	bx	lr
c0de9d96:	bf00      	nop
c0de9d98:	0000349a 	.word	0x0000349a

c0de9d9c <ux_process_button_event>:
c0de9d9c:	b5b0      	push	{r4, r5, r7, lr}
c0de9d9e:	4604      	mov	r4, r0
c0de9da0:	2001      	movs	r0, #1
c0de9da2:	f000 f815 	bl	c0de9dd0 <ux_forward_event>
c0de9da6:	4605      	mov	r5, r0
c0de9da8:	f7fb fb98 	bl	c0de54dc <nbgl_objAllowDrawing>
c0de9dac:	b165      	cbz	r5, c0de9dc8 <ux_process_button_event+0x2c>
c0de9dae:	4807      	ldr	r0, [pc, #28]	@ (c0de9dcc <ux_process_button_event+0x30>)
c0de9db0:	2164      	movs	r1, #100	@ 0x64
c0de9db2:	f859 0000 	ldr.w	r0, [r9, r0]
c0de9db6:	4341      	muls	r1, r0
c0de9db8:	78e0      	ldrb	r0, [r4, #3]
c0de9dba:	0840      	lsrs	r0, r0, #1
c0de9dbc:	f7f9 fcc4 	bl	c0de3748 <nbgl_buttonsHandler>
c0de9dc0:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9dc4:	f7fb bb62 	b.w	c0de548c <nbgl_refresh>
c0de9dc8:	bdb0      	pop	{r4, r5, r7, pc}
c0de9dca:	bf00      	nop
c0de9dcc:	00002ac0 	.word	0x00002ac0

c0de9dd0 <ux_forward_event>:
c0de9dd0:	b5b0      	push	{r4, r5, r7, lr}
c0de9dd2:	4604      	mov	r4, r0
c0de9dd4:	4812      	ldr	r0, [pc, #72]	@ (c0de9e20 <ux_forward_event+0x50>)
c0de9dd6:	2101      	movs	r1, #1
c0de9dd8:	f809 1000 	strb.w	r1, [r9, r0]
c0de9ddc:	eb09 0500 	add.w	r5, r9, r0
c0de9de0:	2000      	movs	r0, #0
c0de9de2:	6068      	str	r0, [r5, #4]
c0de9de4:	4628      	mov	r0, r5
c0de9de6:	f001 f87d 	bl	c0deaee4 <os_ux>
c0de9dea:	2004      	movs	r0, #4
c0de9dec:	f001 f8d2 	bl	c0deaf94 <os_sched_last_status>
c0de9df0:	2869      	cmp	r0, #105	@ 0x69
c0de9df2:	6068      	str	r0, [r5, #4]
c0de9df4:	d108      	bne.n	c0de9e08 <ux_forward_event+0x38>
c0de9df6:	2001      	movs	r0, #1
c0de9df8:	f7fb fb70 	bl	c0de54dc <nbgl_objAllowDrawing>
c0de9dfc:	f7fc fb68 	bl	c0de64d0 <nbgl_screenRedraw>
c0de9e00:	f7fb fb44 	bl	c0de548c <nbgl_refresh>
c0de9e04:	2000      	movs	r0, #0
c0de9e06:	bdb0      	pop	{r4, r5, r7, pc}
c0de9e08:	b144      	cbz	r4, c0de9e1c <ux_forward_event+0x4c>
c0de9e0a:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de9e0e:	bf18      	it	ne
c0de9e10:	2101      	movne	r1, #1
c0de9e12:	2800      	cmp	r0, #0
c0de9e14:	bf18      	it	ne
c0de9e16:	2001      	movne	r0, #1
c0de9e18:	4008      	ands	r0, r1
c0de9e1a:	bdb0      	pop	{r4, r5, r7, pc}
c0de9e1c:	2001      	movs	r0, #1
c0de9e1e:	bdb0      	pop	{r4, r5, r7, pc}
c0de9e20:	000029d8 	.word	0x000029d8

c0de9e24 <ux_process_ticker_event>:
c0de9e24:	b510      	push	{r4, lr}
c0de9e26:	480a      	ldr	r0, [pc, #40]	@ (c0de9e50 <ux_process_ticker_event+0x2c>)
c0de9e28:	f859 1000 	ldr.w	r1, [r9, r0]
c0de9e2c:	3101      	adds	r1, #1
c0de9e2e:	f849 1000 	str.w	r1, [r9, r0]
c0de9e32:	2001      	movs	r0, #1
c0de9e34:	f7ff ffcc 	bl	c0de9dd0 <ux_forward_event>
c0de9e38:	4604      	mov	r4, r0
c0de9e3a:	f7fb fb4f 	bl	c0de54dc <nbgl_objAllowDrawing>
c0de9e3e:	2064      	movs	r0, #100	@ 0x64
c0de9e40:	f7fc fd38 	bl	c0de68b4 <nbgl_screenHandler>
c0de9e44:	b11c      	cbz	r4, c0de9e4e <ux_process_ticker_event+0x2a>
c0de9e46:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de9e4a:	f7fb bb1f 	b.w	c0de548c <nbgl_refresh>
c0de9e4e:	bd10      	pop	{r4, pc}
c0de9e50:	00002ac0 	.word	0x00002ac0

c0de9e54 <ux_process_default_event>:
c0de9e54:	2000      	movs	r0, #0
c0de9e56:	f7ff bfbb 	b.w	c0de9dd0 <ux_forward_event>

c0de9e5a <hash_iovec_ex>:
c0de9e5a:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de9e5e:	468a      	mov	sl, r1
c0de9e60:	4611      	mov	r1, r2
c0de9e62:	461a      	mov	r2, r3
c0de9e64:	4605      	mov	r5, r0
c0de9e66:	f000 f840 	bl	c0de9eea <cx_hash_init_ex>
c0de9e6a:	4607      	mov	r7, r0
c0de9e6c:	b9a8      	cbnz	r0, c0de9e9a <hash_iovec_ex+0x40>
c0de9e6e:	f10d 0820 	add.w	r8, sp, #32
c0de9e72:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de9e76:	1d04      	adds	r4, r0, #4
c0de9e78:	b156      	cbz	r6, c0de9e90 <hash_iovec_ex+0x36>
c0de9e7a:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de9e7e:	f854 2b08 	ldr.w	r2, [r4], #8
c0de9e82:	4628      	mov	r0, r5
c0de9e84:	f000 f836 	bl	c0de9ef4 <cx_hash_update>
c0de9e88:	3e01      	subs	r6, #1
c0de9e8a:	2800      	cmp	r0, #0
c0de9e8c:	d0f4      	beq.n	c0de9e78 <hash_iovec_ex+0x1e>
c0de9e8e:	e003      	b.n	c0de9e98 <hash_iovec_ex+0x3e>
c0de9e90:	4628      	mov	r0, r5
c0de9e92:	4641      	mov	r1, r8
c0de9e94:	f000 f824 	bl	c0de9ee0 <cx_hash_final>
c0de9e98:	4607      	mov	r7, r0
c0de9e9a:	4628      	mov	r0, r5
c0de9e9c:	4651      	mov	r1, sl
c0de9e9e:	f001 fa49 	bl	c0deb334 <explicit_bzero>
c0de9ea2:	4638      	mov	r0, r7
c0de9ea4:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de9ea8 <cx_keccak_256_hash_iovec>:
c0de9ea8:	b580      	push	{r7, lr}
c0de9eaa:	b0ee      	sub	sp, #440	@ 0x1b8
c0de9eac:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de9eb0:	a804      	add	r0, sp, #16
c0de9eb2:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de9eb6:	2206      	movs	r2, #6
c0de9eb8:	2320      	movs	r3, #32
c0de9eba:	f7ff ffce 	bl	c0de9e5a <hash_iovec_ex>
c0de9ebe:	b06e      	add	sp, #440	@ 0x1b8
c0de9ec0:	bd80      	pop	{r7, pc}

c0de9ec2 <cx_ecdsa_sign_no_throw>:
c0de9ec2:	b403      	push	{r0, r1}
c0de9ec4:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de9ec8:	f000 b822 	b.w	c0de9f10 <cx_trampoline_helper>

c0de9ecc <cx_ecfp_generate_pair2_no_throw>:
c0de9ecc:	b403      	push	{r0, r1}
c0de9ece:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de9ed2:	f000 b81d 	b.w	c0de9f10 <cx_trampoline_helper>

c0de9ed6 <cx_ecfp_init_private_key_no_throw>:
c0de9ed6:	b403      	push	{r0, r1}
c0de9ed8:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de9edc:	f000 b818 	b.w	c0de9f10 <cx_trampoline_helper>

c0de9ee0 <cx_hash_final>:
c0de9ee0:	b403      	push	{r0, r1}
c0de9ee2:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de9ee6:	f000 b813 	b.w	c0de9f10 <cx_trampoline_helper>

c0de9eea <cx_hash_init_ex>:
c0de9eea:	b403      	push	{r0, r1}
c0de9eec:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de9ef0:	f000 b80e 	b.w	c0de9f10 <cx_trampoline_helper>

c0de9ef4 <cx_hash_update>:
c0de9ef4:	b403      	push	{r0, r1}
c0de9ef6:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de9efa:	f000 b809 	b.w	c0de9f10 <cx_trampoline_helper>

c0de9efe <cx_rng_no_throw>:
c0de9efe:	b403      	push	{r0, r1}
c0de9f00:	f04f 006a 	mov.w	r0, #106	@ 0x6a
c0de9f04:	f000 b804 	b.w	c0de9f10 <cx_trampoline_helper>

c0de9f08 <cx_aes_siv_reset>:
c0de9f08:	b403      	push	{r0, r1}
c0de9f0a:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de9f0e:	e7ff      	b.n	c0de9f10 <cx_trampoline_helper>

c0de9f10 <cx_trampoline_helper>:
c0de9f10:	4900      	ldr	r1, [pc, #0]	@ (c0de9f14 <cx_trampoline_helper+0x4>)
c0de9f12:	4708      	bx	r1
c0de9f14:	00810001 	.word	0x00810001

c0de9f18 <assert_exit>:
c0de9f18:	20ff      	movs	r0, #255	@ 0xff
c0de9f1a:	f001 f801 	bl	c0deaf20 <os_sched_exit>

c0de9f1e <os_boot>:
c0de9f1e:	2000      	movs	r0, #0
c0de9f20:	f001 b82e 	b.w	c0deaf80 <try_context_set>

c0de9f24 <os_longjmp>:
c0de9f24:	4604      	mov	r4, r0
c0de9f26:	f001 f823 	bl	c0deaf70 <try_context_get>
c0de9f2a:	4621      	mov	r1, r4
c0de9f2c:	f001 fa3e 	bl	c0deb3ac <longjmp>

c0de9f30 <io_seproxyhal_general_status>:
c0de9f30:	4802      	ldr	r0, [pc, #8]	@ (c0de9f3c <io_seproxyhal_general_status+0xc>)
c0de9f32:	2105      	movs	r1, #5
c0de9f34:	4478      	add	r0, pc
c0de9f36:	f000 bffd 	b.w	c0deaf34 <io_seph_send>
c0de9f3a:	bf00      	nop
c0de9f3c:	00003302 	.word	0x00003302

c0de9f40 <io_seproxyhal_handle_usb_event>:
c0de9f40:	b510      	push	{r4, lr}
c0de9f42:	481a      	ldr	r0, [pc, #104]	@ (c0de9fac <io_seproxyhal_handle_usb_event+0x6c>)
c0de9f44:	4448      	add	r0, r9
c0de9f46:	78c0      	ldrb	r0, [r0, #3]
c0de9f48:	2808      	cmp	r0, #8
c0de9f4a:	d020      	beq.n	c0de9f8e <io_seproxyhal_handle_usb_event+0x4e>
c0de9f4c:	2802      	cmp	r0, #2
c0de9f4e:	d018      	beq.n	c0de9f82 <io_seproxyhal_handle_usb_event+0x42>
c0de9f50:	2804      	cmp	r0, #4
c0de9f52:	d022      	beq.n	c0de9f9a <io_seproxyhal_handle_usb_event+0x5a>
c0de9f54:	2801      	cmp	r0, #1
c0de9f56:	d113      	bne.n	c0de9f80 <io_seproxyhal_handle_usb_event+0x40>
c0de9f58:	4815      	ldr	r0, [pc, #84]	@ (c0de9fb0 <io_seproxyhal_handle_usb_event+0x70>)
c0de9f5a:	2101      	movs	r1, #1
c0de9f5c:	eb09 0400 	add.w	r4, r9, r0
c0de9f60:	4620      	mov	r0, r4
c0de9f62:	f7ff f9b8 	bl	c0de92d6 <USBD_LL_SetSpeed>
c0de9f66:	4620      	mov	r0, r4
c0de9f68:	f7ff f99d 	bl	c0de92a6 <USBD_LL_Reset>
c0de9f6c:	4811      	ldr	r0, [pc, #68]	@ (c0de9fb4 <io_seproxyhal_handle_usb_event+0x74>)
c0de9f6e:	eb09 0100 	add.w	r1, r9, r0
c0de9f72:	7989      	ldrb	r1, [r1, #6]
c0de9f74:	b9b9      	cbnz	r1, c0de9fa6 <io_seproxyhal_handle_usb_event+0x66>
c0de9f76:	4448      	add	r0, r9
c0de9f78:	2100      	movs	r1, #0
c0de9f7a:	e9c0 1103 	strd	r1, r1, [r0, #12]
c0de9f7e:	6141      	str	r1, [r0, #20]
c0de9f80:	bd10      	pop	{r4, pc}
c0de9f82:	480b      	ldr	r0, [pc, #44]	@ (c0de9fb0 <io_seproxyhal_handle_usb_event+0x70>)
c0de9f84:	4448      	add	r0, r9
c0de9f86:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de9f8a:	f7ff b9ab 	b.w	c0de92e4 <USBD_LL_SOF>
c0de9f8e:	4808      	ldr	r0, [pc, #32]	@ (c0de9fb0 <io_seproxyhal_handle_usb_event+0x70>)
c0de9f90:	4448      	add	r0, r9
c0de9f92:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de9f96:	f7ff b9a3 	b.w	c0de92e0 <USBD_LL_Resume>
c0de9f9a:	4805      	ldr	r0, [pc, #20]	@ (c0de9fb0 <io_seproxyhal_handle_usb_event+0x70>)
c0de9f9c:	4448      	add	r0, r9
c0de9f9e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de9fa2:	f7ff b99b 	b.w	c0de92dc <USBD_LL_Suspend>
c0de9fa6:	2005      	movs	r0, #5
c0de9fa8:	f7ff ffbc 	bl	c0de9f24 <os_longjmp>
c0de9fac:	000028a4 	.word	0x000028a4
c0de9fb0:	000029e4 	.word	0x000029e4
c0de9fb4:	00002bc8 	.word	0x00002bc8

c0de9fb8 <io_seproxyhal_handle_usb_ep_xfer_event>:
c0de9fb8:	b580      	push	{r7, lr}
c0de9fba:	4a1a      	ldr	r2, [pc, #104]	@ (c0dea024 <io_seproxyhal_handle_usb_ep_xfer_event+0x6c>)
c0de9fbc:	eb09 0002 	add.w	r0, r9, r2
c0de9fc0:	78c1      	ldrb	r1, [r0, #3]
c0de9fc2:	7900      	ldrb	r0, [r0, #4]
c0de9fc4:	f001 017f 	and.w	r1, r1, #127	@ 0x7f
c0de9fc8:	2804      	cmp	r0, #4
c0de9fca:	d01b      	beq.n	c0dea004 <io_seproxyhal_handle_usb_ep_xfer_event+0x4c>
c0de9fcc:	2802      	cmp	r0, #2
c0de9fce:	d00a      	beq.n	c0de9fe6 <io_seproxyhal_handle_usb_ep_xfer_event+0x2e>
c0de9fd0:	2801      	cmp	r0, #1
c0de9fd2:	d125      	bne.n	c0dea020 <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0de9fd4:	4815      	ldr	r0, [pc, #84]	@ (c0dea02c <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0de9fd6:	eb09 0102 	add.w	r1, r9, r2
c0de9fda:	3106      	adds	r1, #6
c0de9fdc:	4448      	add	r0, r9
c0de9fde:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de9fe2:	f7ff b87e 	b.w	c0de90e2 <USBD_LL_SetupStage>
c0de9fe6:	2903      	cmp	r1, #3
c0de9fe8:	d81a      	bhi.n	c0dea020 <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0de9fea:	480f      	ldr	r0, [pc, #60]	@ (c0dea028 <io_seproxyhal_handle_usb_ep_xfer_event+0x70>)
c0de9fec:	2300      	movs	r3, #0
c0de9fee:	444a      	add	r2, r9
c0de9ff0:	3206      	adds	r2, #6
c0de9ff2:	4448      	add	r0, r9
c0de9ff4:	eb00 0041 	add.w	r0, r0, r1, lsl #1
c0de9ff8:	8203      	strh	r3, [r0, #16]
c0de9ffa:	480c      	ldr	r0, [pc, #48]	@ (c0dea02c <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0de9ffc:	4448      	add	r0, r9
c0de9ffe:	f7ff f8e8 	bl	c0de91d2 <USBD_LL_DataInStage>
c0dea002:	bd80      	pop	{r7, pc}
c0dea004:	2903      	cmp	r1, #3
c0dea006:	d80b      	bhi.n	c0dea020 <io_seproxyhal_handle_usb_ep_xfer_event+0x68>
c0dea008:	4807      	ldr	r0, [pc, #28]	@ (c0dea028 <io_seproxyhal_handle_usb_ep_xfer_event+0x70>)
c0dea00a:	444a      	add	r2, r9
c0dea00c:	7953      	ldrb	r3, [r2, #5]
c0dea00e:	3206      	adds	r2, #6
c0dea010:	4448      	add	r0, r9
c0dea012:	4408      	add	r0, r1
c0dea014:	7303      	strb	r3, [r0, #12]
c0dea016:	4805      	ldr	r0, [pc, #20]	@ (c0dea02c <io_seproxyhal_handle_usb_ep_xfer_event+0x74>)
c0dea018:	2300      	movs	r3, #0
c0dea01a:	4448      	add	r0, r9
c0dea01c:	f7ff f88c 	bl	c0de9138 <USBD_LL_DataOutStage>
c0dea020:	bd80      	pop	{r7, pc}
c0dea022:	bf00      	nop
c0dea024:	000028a4 	.word	0x000028a4
c0dea028:	00002bc8 	.word	0x00002bc8
c0dea02c:	000029e4 	.word	0x000029e4

c0dea030 <io_usb_send_apdu_data_ep0x83>:
c0dea030:	460a      	mov	r2, r1
c0dea032:	4601      	mov	r1, r0
c0dea034:	2083      	movs	r0, #131	@ 0x83
c0dea036:	2314      	movs	r3, #20
c0dea038:	f000 ba62 	b.w	c0dea500 <io_usb_send_ep>

c0dea03c <io_seproxyhal_handle_capdu_event>:
c0dea03c:	480d      	ldr	r0, [pc, #52]	@ (c0dea074 <io_seproxyhal_handle_capdu_event+0x38>)
c0dea03e:	f819 1000 	ldrb.w	r1, [r9, r0]
c0dea042:	b101      	cbz	r1, c0dea046 <io_seproxyhal_handle_capdu_event+0xa>
c0dea044:	4770      	bx	lr
c0dea046:	210a      	movs	r1, #10
c0dea048:	f809 1000 	strb.w	r1, [r9, r0]
c0dea04c:	4448      	add	r0, r9
c0dea04e:	2106      	movs	r1, #6
c0dea050:	7181      	strb	r1, [r0, #6]
c0dea052:	4909      	ldr	r1, [pc, #36]	@ (c0dea078 <io_seproxyhal_handle_capdu_event+0x3c>)
c0dea054:	4449      	add	r1, r9
c0dea056:	784a      	ldrb	r2, [r1, #1]
c0dea058:	788b      	ldrb	r3, [r1, #2]
c0dea05a:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0dea05e:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0dea062:	bf88      	it	hi
c0dea064:	f240 1201 	movwhi	r2, #257	@ 0x101
c0dea068:	8042      	strh	r2, [r0, #2]
c0dea06a:	4804      	ldr	r0, [pc, #16]	@ (c0dea07c <io_seproxyhal_handle_capdu_event+0x40>)
c0dea06c:	3103      	adds	r1, #3
c0dea06e:	4448      	add	r0, r9
c0dea070:	f001 b957 	b.w	c0deb322 <__aeabi_memcpy>
c0dea074:	00002bc8 	.word	0x00002bc8
c0dea078:	000028a4 	.word	0x000028a4
c0dea07c:	00002ac4 	.word	0x00002ac4

c0dea080 <io_seproxyhal_handle_event>:
c0dea080:	b510      	push	{r4, lr}
c0dea082:	492b      	ldr	r1, [pc, #172]	@ (c0dea130 <io_seproxyhal_handle_event+0xb0>)
c0dea084:	f819 0001 	ldrb.w	r0, [r9, r1]
c0dea088:	280e      	cmp	r0, #14
c0dea08a:	d011      	beq.n	c0dea0b0 <io_seproxyhal_handle_event+0x30>
c0dea08c:	281a      	cmp	r0, #26
c0dea08e:	d029      	beq.n	c0dea0e4 <io_seproxyhal_handle_event+0x64>
c0dea090:	4449      	add	r1, r9
c0dea092:	2810      	cmp	r0, #16
c0dea094:	784a      	ldrb	r2, [r1, #1]
c0dea096:	7889      	ldrb	r1, [r1, #2]
c0dea098:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0dea09c:	d035      	beq.n	c0dea10a <io_seproxyhal_handle_event+0x8a>
c0dea09e:	2816      	cmp	r0, #22
c0dea0a0:	d037      	beq.n	c0dea112 <io_seproxyhal_handle_event+0x92>
c0dea0a2:	280f      	cmp	r0, #15
c0dea0a4:	d12c      	bne.n	c0dea100 <io_seproxyhal_handle_event+0x80>
c0dea0a6:	2901      	cmp	r1, #1
c0dea0a8:	d131      	bne.n	c0dea10e <io_seproxyhal_handle_event+0x8e>
c0dea0aa:	f7ff ff49 	bl	c0de9f40 <io_seproxyhal_handle_usb_event>
c0dea0ae:	e035      	b.n	c0dea11c <io_seproxyhal_handle_event+0x9c>
c0dea0b0:	4820      	ldr	r0, [pc, #128]	@ (c0dea134 <io_seproxyhal_handle_event+0xb4>)
c0dea0b2:	eb09 0100 	add.w	r1, r9, r0
c0dea0b6:	688a      	ldr	r2, [r1, #8]
c0dea0b8:	3264      	adds	r2, #100	@ 0x64
c0dea0ba:	608a      	str	r2, [r1, #8]
c0dea0bc:	210b      	movs	r1, #11
c0dea0be:	2907      	cmp	r1, #7
c0dea0c0:	d01e      	beq.n	c0dea100 <io_seproxyhal_handle_event+0x80>
c0dea0c2:	eb09 0200 	add.w	r2, r9, r0
c0dea0c6:	f832 2011 	ldrh.w	r2, [r2, r1, lsl #1]
c0dea0ca:	b14a      	cbz	r2, c0dea0e0 <io_seproxyhal_handle_event+0x60>
c0dea0cc:	f1b2 0364 	subs.w	r3, r2, #100	@ 0x64
c0dea0d0:	eb09 0400 	add.w	r4, r9, r0
c0dea0d4:	bf38      	it	cc
c0dea0d6:	2300      	movcc	r3, #0
c0dea0d8:	2a65      	cmp	r2, #101	@ 0x65
c0dea0da:	f824 3011 	strh.w	r3, [r4, r1, lsl #1]
c0dea0de:	d320      	bcc.n	c0dea122 <io_seproxyhal_handle_event+0xa2>
c0dea0e0:	3901      	subs	r1, #1
c0dea0e2:	e7ec      	b.n	c0dea0be <io_seproxyhal_handle_event+0x3e>
c0dea0e4:	eb09 0001 	add.w	r0, r9, r1
c0dea0e8:	78c0      	ldrb	r0, [r0, #3]
c0dea0ea:	2803      	cmp	r0, #3
c0dea0ec:	d108      	bne.n	c0dea100 <io_seproxyhal_handle_event+0x80>
c0dea0ee:	2001      	movs	r0, #1
c0dea0f0:	2401      	movs	r4, #1
c0dea0f2:	f7fb f9f3 	bl	c0de54dc <nbgl_objAllowDrawing>
c0dea0f6:	f7fc f9eb 	bl	c0de64d0 <nbgl_screenRedraw>
c0dea0fa:	f7fb f9c7 	bl	c0de548c <nbgl_refresh>
c0dea0fe:	e00e      	b.n	c0dea11e <io_seproxyhal_handle_event+0x9e>
c0dea100:	2002      	movs	r0, #2
c0dea102:	f7fe fd83 	bl	c0de8c0c <io_event>
c0dea106:	4604      	mov	r4, r0
c0dea108:	e009      	b.n	c0dea11e <io_seproxyhal_handle_event+0x9e>
c0dea10a:	2903      	cmp	r1, #3
c0dea10c:	d204      	bcs.n	c0dea118 <io_seproxyhal_handle_event+0x98>
c0dea10e:	2400      	movs	r4, #0
c0dea110:	e005      	b.n	c0dea11e <io_seproxyhal_handle_event+0x9e>
c0dea112:	f7ff ff93 	bl	c0dea03c <io_seproxyhal_handle_capdu_event>
c0dea116:	e001      	b.n	c0dea11c <io_seproxyhal_handle_event+0x9c>
c0dea118:	f7ff ff4e 	bl	c0de9fb8 <io_seproxyhal_handle_usb_ep_xfer_event>
c0dea11c:	2401      	movs	r4, #1
c0dea11e:	4620      	mov	r0, r4
c0dea120:	bd10      	pop	{r4, pc}
c0dea122:	2100      	movs	r1, #0
c0dea124:	f809 1000 	strb.w	r1, [r9, r0]
c0dea128:	2005      	movs	r0, #5
c0dea12a:	f7ff fefb 	bl	c0de9f24 <os_longjmp>
c0dea12e:	bf00      	nop
c0dea130:	000028a4 	.word	0x000028a4
c0dea134:	00002bc8 	.word	0x00002bc8

c0dea138 <io_seproxyhal_init>:
c0dea138:	b5b0      	push	{r4, r5, r7, lr}
c0dea13a:	4c10      	ldr	r4, [pc, #64]	@ (c0dea17c <io_seproxyhal_init+0x44>)
c0dea13c:	2500      	movs	r5, #0
c0dea13e:	2008      	movs	r0, #8
c0dea140:	f849 5004 	str.w	r5, [r9, r4]
c0dea144:	f809 0004 	strb.w	r0, [r9, r4]
c0dea148:	eb09 0004 	add.w	r0, r9, r4
c0dea14c:	e9c0 5501 	strd	r5, r5, [r0, #4]
c0dea150:	2d01      	cmp	r5, #1
c0dea152:	d809      	bhi.n	c0dea168 <io_seproxyhal_init+0x30>
c0dea154:	eb09 0004 	add.w	r0, r9, r4
c0dea158:	f000 fec4 	bl	c0deaee4 <os_ux>
c0dea15c:	2004      	movs	r0, #4
c0dea15e:	f000 ff19 	bl	c0deaf94 <os_sched_last_status>
c0dea162:	3501      	adds	r5, #1
c0dea164:	28aa      	cmp	r0, #170	@ 0xaa
c0dea166:	d1f3      	bne.n	c0dea150 <io_seproxyhal_init+0x18>
c0dea168:	4805      	ldr	r0, [pc, #20]	@ (c0dea180 <io_seproxyhal_init+0x48>)
c0dea16a:	211c      	movs	r1, #28
c0dea16c:	4448      	add	r0, r9
c0dea16e:	f001 f8d5 	bl	c0deb31c <__aeabi_memclr>
c0dea172:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0dea176:	f000 bac3 	b.w	c0dea700 <io_usb_hid_init>
c0dea17a:	bf00      	nop
c0dea17c:	000029d8 	.word	0x000029d8
c0dea180:	00002bc8 	.word	0x00002bc8

c0dea184 <os_io_seproxyhal_get_app_name_and_version>:
c0dea184:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dea186:	4811      	ldr	r0, [pc, #68]	@ (c0dea1cc <os_io_seproxyhal_get_app_name_and_version+0x48>)
c0dea188:	2501      	movs	r5, #1
c0dea18a:	f44f 7281 	mov.w	r2, #258	@ 0x102
c0dea18e:	eb09 0600 	add.w	r6, r9, r0
c0dea192:	f809 5000 	strb.w	r5, [r9, r0]
c0dea196:	2001      	movs	r0, #1
c0dea198:	1cb1      	adds	r1, r6, #2
c0dea19a:	f000 feb5 	bl	c0deaf08 <os_registry_get_current_app_tag>
c0dea19e:	1987      	adds	r7, r0, r6
c0dea1a0:	4604      	mov	r4, r0
c0dea1a2:	7070      	strb	r0, [r6, #1]
c0dea1a4:	f240 1001 	movw	r0, #257	@ 0x101
c0dea1a8:	1b02      	subs	r2, r0, r4
c0dea1aa:	1cf9      	adds	r1, r7, #3
c0dea1ac:	2002      	movs	r0, #2
c0dea1ae:	f000 feab 	bl	c0deaf08 <os_registry_get_current_app_tag>
c0dea1b2:	4404      	add	r4, r0
c0dea1b4:	70b8      	strb	r0, [r7, #2]
c0dea1b6:	4426      	add	r6, r4
c0dea1b8:	70f5      	strb	r5, [r6, #3]
c0dea1ba:	f000 fe9d 	bl	c0deaef8 <os_flags>
c0dea1be:	2100      	movs	r1, #0
c0dea1c0:	7130      	strb	r0, [r6, #4]
c0dea1c2:	1de0      	adds	r0, r4, #7
c0dea1c4:	71b1      	strb	r1, [r6, #6]
c0dea1c6:	2190      	movs	r1, #144	@ 0x90
c0dea1c8:	7171      	strb	r1, [r6, #5]
c0dea1ca:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0dea1cc:	00002ac4 	.word	0x00002ac4

c0dea1d0 <os_io_seproxyhal_pki_load_certificate>:
c0dea1d0:	b5b0      	push	{r4, r5, r7, lr}
c0dea1d2:	b09e      	sub	sp, #120	@ 0x78
c0dea1d4:	460b      	mov	r3, r1
c0dea1d6:	4601      	mov	r1, r0
c0dea1d8:	ac03      	add	r4, sp, #12
c0dea1da:	2000      	movs	r0, #0
c0dea1dc:	e9cd 0400 	strd	r0, r4, [sp]
c0dea1e0:	4610      	mov	r0, r2
c0dea1e2:	461a      	mov	r2, r3
c0dea1e4:	2300      	movs	r3, #0
c0dea1e6:	f000 fe5b 	bl	c0deaea0 <os_pki_load_certificate>
c0dea1ea:	4605      	mov	r5, r0
c0dea1ec:	4620      	mov	r0, r4
c0dea1ee:	216c      	movs	r1, #108	@ 0x6c
c0dea1f0:	f001 f8a0 	bl	c0deb334 <explicit_bzero>
c0dea1f4:	2d00      	cmp	r5, #0
c0dea1f6:	4906      	ldr	r1, [pc, #24]	@ (c0dea210 <os_io_seproxyhal_pki_load_certificate+0x40>)
c0dea1f8:	bf08      	it	eq
c0dea1fa:	f44f 4510 	moveq.w	r5, #36864	@ 0x9000
c0dea1fe:	0a28      	lsrs	r0, r5, #8
c0dea200:	f809 0001 	strb.w	r0, [r9, r1]
c0dea204:	eb09 0001 	add.w	r0, r9, r1
c0dea208:	7045      	strb	r5, [r0, #1]
c0dea20a:	2002      	movs	r0, #2
c0dea20c:	b01e      	add	sp, #120	@ 0x78
c0dea20e:	bdb0      	pop	{r4, r5, r7, pc}
c0dea210:	00002ac4 	.word	0x00002ac4

c0dea214 <io_exchange>:
c0dea214:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0dea218:	4680      	mov	r8, r0
c0dea21a:	489b      	ldr	r0, [pc, #620]	@ (c0dea488 <io_exchange+0x274>)
c0dea21c:	4c97      	ldr	r4, [pc, #604]	@ (c0dea47c <io_exchange+0x268>)
c0dea21e:	f8df b260 	ldr.w	fp, [pc, #608]	@ c0dea480 <io_exchange+0x26c>
c0dea222:	4d95      	ldr	r5, [pc, #596]	@ (c0dea478 <io_exchange+0x264>)
c0dea224:	460f      	mov	r7, r1
c0dea226:	f04f 0a00 	mov.w	sl, #0
c0dea22a:	4478      	add	r0, pc
c0dea22c:	9001      	str	r0, [sp, #4]
c0dea22e:	fa5f f688 	uxtb.w	r6, r8
c0dea232:	ea5f 7088 	movs.w	r0, r8, lsl #30
c0dea236:	f040 8106 	bne.w	c0dea446 <io_exchange+0x232>
c0dea23a:	f006 0110 	and.w	r1, r6, #16
c0dea23e:	0438      	lsls	r0, r7, #16
c0dea240:	d07b      	beq.n	c0dea33a <io_exchange+0x126>
c0dea242:	2900      	cmp	r1, #0
c0dea244:	d179      	bne.n	c0dea33a <io_exchange+0x126>
c0dea246:	9102      	str	r1, [sp, #8]
c0dea248:	f000 fe7e 	bl	c0deaf48 <io_seph_is_status_sent>
c0dea24c:	b138      	cbz	r0, c0dea25e <io_exchange+0x4a>
c0dea24e:	eb09 0005 	add.w	r0, r9, r5
c0dea252:	f000 f941 	bl	c0dea4d8 <OUTLINED_FUNCTION_0>
c0dea256:	2001      	movs	r0, #1
c0dea258:	f000 f91a 	bl	c0dea490 <os_io_seph_recv_and_process>
c0dea25c:	e7f4      	b.n	c0dea248 <io_exchange+0x34>
c0dea25e:	f819 0004 	ldrb.w	r0, [r9, r4]
c0dea262:	eb09 0104 	add.w	r1, r9, r4
c0dea266:	f8cd 800c 	str.w	r8, [sp, #12]
c0dea26a:	f8d1 8008 	ldr.w	r8, [r1, #8]
c0dea26e:	2807      	cmp	r0, #7
c0dea270:	d00c      	beq.n	c0dea28c <io_exchange+0x78>
c0dea272:	280a      	cmp	r0, #10
c0dea274:	d00f      	beq.n	c0dea296 <io_exchange+0x82>
c0dea276:	280b      	cmp	r0, #11
c0dea278:	d02a      	beq.n	c0dea2d0 <io_exchange+0xbc>
c0dea27a:	2800      	cmp	r0, #0
c0dea27c:	f000 80f5 	beq.w	c0dea46a <io_exchange+0x256>
c0dea280:	b2b9      	uxth	r1, r7
c0dea282:	4630      	mov	r0, r6
c0dea284:	f7fe fcf2 	bl	c0de8c6c <io_exchange_al>
c0dea288:	b348      	cbz	r0, c0dea2de <io_exchange+0xca>
c0dea28a:	e0ee      	b.n	c0dea46a <io_exchange+0x256>
c0dea28c:	9801      	ldr	r0, [sp, #4]
c0dea28e:	eb09 020b 	add.w	r2, r9, fp
c0dea292:	b2b9      	uxth	r1, r7
c0dea294:	e021      	b.n	c0dea2da <io_exchange+0xc6>
c0dea296:	46da      	mov	sl, fp
c0dea298:	fa1f fb87 	uxth.w	fp, r7
c0dea29c:	f5bb 7f82 	cmp.w	fp, #260	@ 0x104
c0dea2a0:	f200 80e6 	bhi.w	c0dea470 <io_exchange+0x25c>
c0dea2a4:	2053      	movs	r0, #83	@ 0x53
c0dea2a6:	0a39      	lsrs	r1, r7, #8
c0dea2a8:	f809 0005 	strb.w	r0, [r9, r5]
c0dea2ac:	eb09 0005 	add.w	r0, r9, r5
c0dea2b0:	7041      	strb	r1, [r0, #1]
c0dea2b2:	2103      	movs	r1, #3
c0dea2b4:	7087      	strb	r7, [r0, #2]
c0dea2b6:	f000 fe3d 	bl	c0deaf34 <io_seph_send>
c0dea2ba:	4659      	mov	r1, fp
c0dea2bc:	eb09 000a 	add.w	r0, r9, sl
c0dea2c0:	46d3      	mov	fp, sl
c0dea2c2:	f000 fe37 	bl	c0deaf34 <io_seph_send>
c0dea2c6:	f04f 0a00 	mov.w	sl, #0
c0dea2ca:	f809 a004 	strb.w	sl, [r9, r4]
c0dea2ce:	e006      	b.n	c0dea2de <io_exchange+0xca>
c0dea2d0:	486e      	ldr	r0, [pc, #440]	@ (c0dea48c <io_exchange+0x278>)
c0dea2d2:	eb09 020b 	add.w	r2, r9, fp
c0dea2d6:	b2b9      	uxth	r1, r7
c0dea2d8:	4478      	add	r0, pc
c0dea2da:	f000 fa99 	bl	c0dea810 <io_usb_hid_send>
c0dea2de:	f508 67fa 	add.w	r7, r8, #2000	@ 0x7d0
c0dea2e2:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0dea2e6:	f819 0004 	ldrb.w	r0, [r9, r4]
c0dea2ea:	b190      	cbz	r0, c0dea312 <io_exchange+0xfe>
c0dea2ec:	f7ff fe20 	bl	c0de9f30 <io_seproxyhal_general_status>
c0dea2f0:	eb09 0005 	add.w	r0, r9, r5
c0dea2f4:	f000 f8f0 	bl	c0dea4d8 <OUTLINED_FUNCTION_0>
c0dea2f8:	eb09 0004 	add.w	r0, r9, r4
c0dea2fc:	6880      	ldr	r0, [r0, #8]
c0dea2fe:	42b8      	cmp	r0, r7
c0dea300:	f080 80ad 	bcs.w	c0dea45e <io_exchange+0x24a>
c0dea304:	f7ff febc 	bl	c0dea080 <io_seproxyhal_handle_event>
c0dea308:	f000 fe1e 	bl	c0deaf48 <io_seph_is_status_sent>
c0dea30c:	2800      	cmp	r0, #0
c0dea30e:	d1ef      	bne.n	c0dea2f0 <io_exchange+0xdc>
c0dea310:	e7e9      	b.n	c0dea2e6 <io_exchange+0xd2>
c0dea312:	2000      	movs	r0, #0
c0dea314:	eb09 0104 	add.w	r1, r9, r4
c0dea318:	7188      	strb	r0, [r1, #6]
c0dea31a:	8048      	strh	r0, [r1, #2]
c0dea31c:	ea5f 6188 	movs.w	r1, r8, lsl #26
c0dea320:	f809 0004 	strb.w	r0, [r9, r4]
c0dea324:	f100 808b 	bmi.w	c0dea43e <io_exchange+0x22a>
c0dea328:	f7ff fe02 	bl	c0de9f30 <io_seproxyhal_general_status>
c0dea32c:	fa4f f088 	sxtb.w	r0, r8
c0dea330:	9902      	ldr	r1, [sp, #8]
c0dea332:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0dea336:	f340 8095 	ble.w	c0dea464 <io_exchange+0x250>
c0dea33a:	0770      	lsls	r0, r6, #29
c0dea33c:	d40e      	bmi.n	c0dea35c <io_exchange+0x148>
c0dea33e:	b941      	cbnz	r1, c0dea352 <io_exchange+0x13e>
c0dea340:	0670      	lsls	r0, r6, #25
c0dea342:	f100 8087 	bmi.w	c0dea454 <io_exchange+0x240>
c0dea346:	eb09 0004 	add.w	r0, r9, r4
c0dea34a:	f809 a004 	strb.w	sl, [r9, r4]
c0dea34e:	f880 a006 	strb.w	sl, [r0, #6]
c0dea352:	2000      	movs	r0, #0
c0dea354:	eb09 0104 	add.w	r1, r9, r4
c0dea358:	8048      	strh	r0, [r1, #2]
c0dea35a:	e002      	b.n	c0dea362 <io_exchange+0x14e>
c0dea35c:	eb09 0004 	add.w	r0, r9, r4
c0dea360:	8840      	ldrh	r0, [r0, #2]
c0dea362:	f819 1004 	ldrb.w	r1, [r9, r4]
c0dea366:	b101      	cbz	r1, c0dea36a <io_exchange+0x156>
c0dea368:	bb00      	cbnz	r0, c0dea3ac <io_exchange+0x198>
c0dea36a:	f7ff fde1 	bl	c0de9f30 <io_seproxyhal_general_status>
c0dea36e:	eb09 0005 	add.w	r0, r9, r5
c0dea372:	f000 f8b1 	bl	c0dea4d8 <OUTLINED_FUNCTION_0>
c0dea376:	2803      	cmp	r0, #3
c0dea378:	d310      	bcc.n	c0dea39c <io_exchange+0x188>
c0dea37a:	eb09 0105 	add.w	r1, r9, r5
c0dea37e:	784a      	ldrb	r2, [r1, #1]
c0dea380:	7889      	ldrb	r1, [r1, #2]
c0dea382:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0dea386:	3103      	adds	r1, #3
c0dea388:	4281      	cmp	r1, r0
c0dea38a:	d107      	bne.n	c0dea39c <io_exchange+0x188>
c0dea38c:	f7ff fe78 	bl	c0dea080 <io_seproxyhal_handle_event>
c0dea390:	eb09 0004 	add.w	r0, r9, r4
c0dea394:	f819 1004 	ldrb.w	r1, [r9, r4]
c0dea398:	8840      	ldrh	r0, [r0, #2]
c0dea39a:	e7e4      	b.n	c0dea366 <io_exchange+0x152>
c0dea39c:	2000      	movs	r0, #0
c0dea39e:	eb09 0104 	add.w	r1, r9, r4
c0dea3a2:	8048      	strh	r0, [r1, #2]
c0dea3a4:	f809 0004 	strb.w	r0, [r9, r4]
c0dea3a8:	2100      	movs	r1, #0
c0dea3aa:	e7dc      	b.n	c0dea366 <io_exchange+0x152>
c0dea3ac:	f000 fd88 	bl	c0deaec0 <os_perso_is_pin_set>
c0dea3b0:	28aa      	cmp	r0, #170	@ 0xaa
c0dea3b2:	d103      	bne.n	c0dea3bc <io_exchange+0x1a8>
c0dea3b4:	f000 fd8d 	bl	c0deaed2 <os_global_pin_is_validated>
c0dea3b8:	28aa      	cmp	r0, #170	@ 0xaa
c0dea3ba:	d118      	bne.n	c0dea3ee <io_exchange+0x1da>
c0dea3bc:	f819 000b 	ldrb.w	r0, [r9, fp]
c0dea3c0:	28b0      	cmp	r0, #176	@ 0xb0
c0dea3c2:	d139      	bne.n	c0dea438 <io_exchange+0x224>
c0dea3c4:	eb09 000b 	add.w	r0, r9, fp
c0dea3c8:	7840      	ldrb	r0, [r0, #1]
c0dea3ca:	28a7      	cmp	r0, #167	@ 0xa7
c0dea3cc:	d017      	beq.n	c0dea3fe <io_exchange+0x1ea>
c0dea3ce:	2806      	cmp	r0, #6
c0dea3d0:	d027      	beq.n	c0dea422 <io_exchange+0x20e>
c0dea3d2:	2801      	cmp	r0, #1
c0dea3d4:	d130      	bne.n	c0dea438 <io_exchange+0x224>
c0dea3d6:	eb09 000b 	add.w	r0, r9, fp
c0dea3da:	7881      	ldrb	r1, [r0, #2]
c0dea3dc:	78c0      	ldrb	r0, [r0, #3]
c0dea3de:	4308      	orrs	r0, r1
c0dea3e0:	d12a      	bne.n	c0dea438 <io_exchange+0x224>
c0dea3e2:	f008 0803 	and.w	r8, r8, #3
c0dea3e6:	f7ff fecd 	bl	c0dea184 <os_io_seproxyhal_get_app_name_and_version>
c0dea3ea:	4607      	mov	r7, r0
c0dea3ec:	e71f      	b.n	c0dea22e <io_exchange+0x1a>
c0dea3ee:	2055      	movs	r0, #85	@ 0x55
c0dea3f0:	2115      	movs	r1, #21
c0dea3f2:	f809 000b 	strb.w	r0, [r9, fp]
c0dea3f6:	eb09 000b 	add.w	r0, r9, fp
c0dea3fa:	7041      	strb	r1, [r0, #1]
c0dea3fc:	e018      	b.n	c0dea430 <io_exchange+0x21c>
c0dea3fe:	eb09 000b 	add.w	r0, r9, fp
c0dea402:	7881      	ldrb	r1, [r0, #2]
c0dea404:	78c0      	ldrb	r0, [r0, #3]
c0dea406:	4308      	orrs	r0, r1
c0dea408:	d116      	bne.n	c0dea438 <io_exchange+0x224>
c0dea40a:	2090      	movs	r0, #144	@ 0x90
c0dea40c:	2702      	movs	r7, #2
c0dea40e:	f809 000b 	strb.w	r0, [r9, fp]
c0dea412:	eb09 000b 	add.w	r0, r9, fp
c0dea416:	f880 a001 	strb.w	sl, [r0, #1]
c0dea41a:	481a      	ldr	r0, [pc, #104]	@ (c0dea484 <io_exchange+0x270>)
c0dea41c:	f360 089f 	bfi	r8, r0, #2, #30
c0dea420:	e705      	b.n	c0dea22e <io_exchange+0x1a>
c0dea422:	eb09 000b 	add.w	r0, r9, fp
c0dea426:	7882      	ldrb	r2, [r0, #2]
c0dea428:	7901      	ldrb	r1, [r0, #4]
c0dea42a:	3005      	adds	r0, #5
c0dea42c:	f7ff fed0 	bl	c0dea1d0 <os_io_seproxyhal_pki_load_certificate>
c0dea430:	f008 0803 	and.w	r8, r8, #3
c0dea434:	2702      	movs	r7, #2
c0dea436:	e6fa      	b.n	c0dea22e <io_exchange+0x1a>
c0dea438:	eb09 0004 	add.w	r0, r9, r4
c0dea43c:	8840      	ldrh	r0, [r0, #2]
c0dea43e:	b280      	uxth	r0, r0
c0dea440:	b004      	add	sp, #16
c0dea442:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0dea446:	b2b9      	uxth	r1, r7
c0dea448:	4630      	mov	r0, r6
c0dea44a:	b004      	add	sp, #16
c0dea44c:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0dea450:	f7fe bc0c 	b.w	c0de8c6c <io_exchange_al>
c0dea454:	eb09 0004 	add.w	r0, r9, r4
c0dea458:	8840      	ldrh	r0, [r0, #2]
c0dea45a:	3805      	subs	r0, #5
c0dea45c:	e7ef      	b.n	c0dea43e <io_exchange+0x22a>
c0dea45e:	2005      	movs	r0, #5
c0dea460:	f7ff fd60 	bl	c0de9f24 <os_longjmp>
c0dea464:	2005      	movs	r0, #5
c0dea466:	f000 fd5b 	bl	c0deaf20 <os_sched_exit>
c0dea46a:	2004      	movs	r0, #4
c0dea46c:	f7ff fd5a 	bl	c0de9f24 <os_longjmp>
c0dea470:	2002      	movs	r0, #2
c0dea472:	f7ff fd57 	bl	c0de9f24 <os_longjmp>
c0dea476:	bf00      	nop
c0dea478:	000028a4 	.word	0x000028a4
c0dea47c:	00002bc8 	.word	0x00002bc8
c0dea480:	00002ac4 	.word	0x00002ac4
c0dea484:	3fffffe0 	.word	0x3fffffe0
c0dea488:	00000333 	.word	0x00000333
c0dea48c:	fffffd55 	.word	0xfffffd55

c0dea490 <os_io_seph_recv_and_process>:
c0dea490:	b5b0      	push	{r4, r5, r7, lr}
c0dea492:	4604      	mov	r4, r0
c0dea494:	f7ff fd4c 	bl	c0de9f30 <io_seproxyhal_general_status>
c0dea498:	4d0d      	ldr	r5, [pc, #52]	@ (c0dea4d0 <os_io_seph_recv_and_process+0x40>)
c0dea49a:	f44f 7196 	mov.w	r1, #300	@ 0x12c
c0dea49e:	2200      	movs	r2, #0
c0dea4a0:	eb09 0005 	add.w	r0, r9, r5
c0dea4a4:	f000 fd58 	bl	c0deaf58 <io_seph_recv>
c0dea4a8:	f819 0005 	ldrb.w	r0, [r9, r5]
c0dea4ac:	2815      	cmp	r0, #21
c0dea4ae:	d808      	bhi.n	c0dea4c2 <os_io_seph_recv_and_process+0x32>
c0dea4b0:	2101      	movs	r1, #1
c0dea4b2:	fa01 f000 	lsl.w	r0, r1, r0
c0dea4b6:	4907      	ldr	r1, [pc, #28]	@ (c0dea4d4 <os_io_seph_recv_and_process+0x44>)
c0dea4b8:	4208      	tst	r0, r1
c0dea4ba:	d002      	beq.n	c0dea4c2 <os_io_seph_recv_and_process+0x32>
c0dea4bc:	b10c      	cbz	r4, c0dea4c2 <os_io_seph_recv_and_process+0x32>
c0dea4be:	2000      	movs	r0, #0
c0dea4c0:	bdb0      	pop	{r4, r5, r7, pc}
c0dea4c2:	f7ff fddd 	bl	c0dea080 <io_seproxyhal_handle_event>
c0dea4c6:	2800      	cmp	r0, #0
c0dea4c8:	bf18      	it	ne
c0dea4ca:	2001      	movne	r0, #1
c0dea4cc:	bdb0      	pop	{r4, r5, r7, pc}
c0dea4ce:	bf00      	nop
c0dea4d0:	000028a4 	.word	0x000028a4
c0dea4d4:	00207020 	.word	0x00207020

c0dea4d8 <OUTLINED_FUNCTION_0>:
c0dea4d8:	f44f 7196 	mov.w	r1, #300	@ 0x12c
c0dea4dc:	2200      	movs	r2, #0
c0dea4de:	f000 bd3b 	b.w	c0deaf58 <io_seph_recv>
	...

c0dea4e4 <io_seproxyhal_get_ep_rx_size>:
c0dea4e4:	f000 007f 	and.w	r0, r0, #127	@ 0x7f
c0dea4e8:	2803      	cmp	r0, #3
c0dea4ea:	bf84      	itt	hi
c0dea4ec:	2000      	movhi	r0, #0
c0dea4ee:	4770      	bxhi	lr
c0dea4f0:	4902      	ldr	r1, [pc, #8]	@ (c0dea4fc <io_seproxyhal_get_ep_rx_size+0x18>)
c0dea4f2:	4449      	add	r1, r9
c0dea4f4:	4408      	add	r0, r1
c0dea4f6:	7b00      	ldrb	r0, [r0, #12]
c0dea4f8:	4770      	bx	lr
c0dea4fa:	bf00      	nop
c0dea4fc:	00002bc8 	.word	0x00002bc8

c0dea500 <io_usb_send_ep>:
c0dea500:	2aff      	cmp	r2, #255	@ 0xff
c0dea502:	d829      	bhi.n	c0dea558 <io_usb_send_ep+0x58>
c0dea504:	b57c      	push	{r2, r3, r4, r5, r6, lr}
c0dea506:	4604      	mov	r4, r0
c0dea508:	2020      	movs	r0, #32
c0dea50a:	460e      	mov	r6, r1
c0dea50c:	2106      	movs	r1, #6
c0dea50e:	4615      	mov	r5, r2
c0dea510:	f88d 2007 	strb.w	r2, [sp, #7]
c0dea514:	f88d 0006 	strb.w	r0, [sp, #6]
c0dea518:	2050      	movs	r0, #80	@ 0x50
c0dea51a:	f88d 0002 	strb.w	r0, [sp, #2]
c0dea51e:	f044 0080 	orr.w	r0, r4, #128	@ 0x80
c0dea522:	f88d 0005 	strb.w	r0, [sp, #5]
c0dea526:	1cd0      	adds	r0, r2, #3
c0dea528:	f88d 0004 	strb.w	r0, [sp, #4]
c0dea52c:	0a00      	lsrs	r0, r0, #8
c0dea52e:	f88d 0003 	strb.w	r0, [sp, #3]
c0dea532:	f10d 0002 	add.w	r0, sp, #2
c0dea536:	f000 fcfd 	bl	c0deaf34 <io_seph_send>
c0dea53a:	4630      	mov	r0, r6
c0dea53c:	4629      	mov	r1, r5
c0dea53e:	f000 fcf9 	bl	c0deaf34 <io_seph_send>
c0dea542:	4806      	ldr	r0, [pc, #24]	@ (c0dea55c <io_usb_send_ep+0x5c>)
c0dea544:	f004 017f 	and.w	r1, r4, #127	@ 0x7f
c0dea548:	4448      	add	r0, r9
c0dea54a:	eb00 0041 	add.w	r0, r0, r1, lsl #1
c0dea54e:	f44f 61fa 	mov.w	r1, #2000	@ 0x7d0
c0dea552:	8201      	strh	r1, [r0, #16]
c0dea554:	e8bd 407c 	ldmia.w	sp!, {r2, r3, r4, r5, r6, lr}
c0dea558:	4770      	bx	lr
c0dea55a:	bf00      	nop
c0dea55c:	00002bc8 	.word	0x00002bc8

c0dea560 <io_usb_send_apdu_data>:
c0dea560:	460a      	mov	r2, r1
c0dea562:	4601      	mov	r1, r0
c0dea564:	2082      	movs	r0, #130	@ 0x82
c0dea566:	f7ff bfcb 	b.w	c0dea500 <io_usb_send_ep>
	...

c0dea56c <io_usb_hid_receive>:
c0dea56c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0dea570:	4615      	mov	r5, r2
c0dea572:	460f      	mov	r7, r1
c0dea574:	4682      	mov	sl, r0
c0dea576:	b11b      	cbz	r3, c0dea580 <io_usb_hid_receive+0x14>
c0dea578:	f8b3 8004 	ldrh.w	r8, [r3, #4]
c0dea57c:	6818      	ldr	r0, [r3, #0]
c0dea57e:	e003      	b.n	c0dea588 <io_usb_hid_receive+0x1c>
c0dea580:	4858      	ldr	r0, [pc, #352]	@ (c0dea6e4 <io_usb_hid_receive+0x178>)
c0dea582:	f44f 7882 	mov.w	r8, #260	@ 0x104
c0dea586:	4448      	add	r0, r9
c0dea588:	9001      	str	r0, [sp, #4]
c0dea58a:	f8df b15c 	ldr.w	fp, [pc, #348]	@ c0dea6e8 <io_usb_hid_receive+0x17c>
c0dea58e:	eb09 000b 	add.w	r0, r9, fp
c0dea592:	4287      	cmp	r7, r0
c0dea594:	d00e      	beq.n	c0dea5b4 <io_usb_hid_receive+0x48>
c0dea596:	eb09 040b 	add.w	r4, r9, fp
c0dea59a:	2140      	movs	r1, #64	@ 0x40
c0dea59c:	2640      	movs	r6, #64	@ 0x40
c0dea59e:	4620      	mov	r0, r4
c0dea5a0:	f000 febc 	bl	c0deb31c <__aeabi_memclr>
c0dea5a4:	2d40      	cmp	r5, #64	@ 0x40
c0dea5a6:	bf38      	it	cc
c0dea5a8:	462e      	movcc	r6, r5
c0dea5aa:	4620      	mov	r0, r4
c0dea5ac:	4639      	mov	r1, r7
c0dea5ae:	4632      	mov	r2, r6
c0dea5b0:	f000 feb9 	bl	c0deb326 <__aeabi_memmove>
c0dea5b4:	eb09 000b 	add.w	r0, r9, fp
c0dea5b8:	7880      	ldrb	r0, [r0, #2]
c0dea5ba:	b348      	cbz	r0, c0dea610 <io_usb_hid_receive+0xa4>
c0dea5bc:	2801      	cmp	r0, #1
c0dea5be:	d030      	beq.n	c0dea622 <io_usb_hid_receive+0xb6>
c0dea5c0:	2802      	cmp	r0, #2
c0dea5c2:	d034      	beq.n	c0dea62e <io_usb_hid_receive+0xc2>
c0dea5c4:	2805      	cmp	r0, #5
c0dea5c6:	f040 8083 	bne.w	c0dea6d0 <io_usb_hid_receive+0x164>
c0dea5ca:	4c48      	ldr	r4, [pc, #288]	@ (c0dea6ec <io_usb_hid_receive+0x180>)
c0dea5cc:	eb09 010b 	add.w	r1, r9, fp
c0dea5d0:	f859 0004 	ldr.w	r0, [r9, r4]
c0dea5d4:	78ca      	ldrb	r2, [r1, #3]
c0dea5d6:	7909      	ldrb	r1, [r1, #4]
c0dea5d8:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0dea5dc:	4288      	cmp	r0, r1
c0dea5de:	d12a      	bne.n	c0dea636 <io_usb_hid_receive+0xca>
c0dea5e0:	f859 0004 	ldr.w	r0, [r9, r4]
c0dea5e4:	b3a0      	cbz	r0, c0dea650 <io_usb_hid_receive+0xe4>
c0dea5e6:	4942      	ldr	r1, [pc, #264]	@ (c0dea6f0 <io_usb_hid_receive+0x184>)
c0dea5e8:	1f68      	subs	r0, r5, #5
c0dea5ea:	b283      	uxth	r3, r0
c0dea5ec:	f859 2001 	ldr.w	r2, [r9, r1]
c0dea5f0:	429a      	cmp	r2, r3
c0dea5f2:	bf38      	it	cc
c0dea5f4:	f859 0001 	ldrcc.w	r0, [r9, r1]
c0dea5f8:	b281      	uxth	r1, r0
c0dea5fa:	293b      	cmp	r1, #59	@ 0x3b
c0dea5fc:	bf28      	it	cs
c0dea5fe:	203b      	movcs	r0, #59	@ 0x3b
c0dea600:	b285      	uxth	r5, r0
c0dea602:	483c      	ldr	r0, [pc, #240]	@ (c0dea6f4 <io_usb_hid_receive+0x188>)
c0dea604:	f859 6000 	ldr.w	r6, [r9, r0]
c0dea608:	eb09 000b 	add.w	r0, r9, fp
c0dea60c:	1d41      	adds	r1, r0, #5
c0dea60e:	e04c      	b.n	c0dea6aa <io_usb_hid_receive+0x13e>
c0dea610:	eb09 000b 	add.w	r0, r9, fp
c0dea614:	2100      	movs	r1, #0
c0dea616:	f800 1f03 	strb.w	r1, [r0, #3]!
c0dea61a:	70c1      	strb	r1, [r0, #3]
c0dea61c:	7081      	strb	r1, [r0, #2]
c0dea61e:	7041      	strb	r1, [r0, #1]
c0dea620:	e005      	b.n	c0dea62e <io_usb_hid_receive+0xc2>
c0dea622:	eb09 000b 	add.w	r0, r9, fp
c0dea626:	2104      	movs	r1, #4
c0dea628:	3003      	adds	r0, #3
c0dea62a:	f7ff fc68 	bl	c0de9efe <cx_rng_no_throw>
c0dea62e:	eb09 000b 	add.w	r0, r9, fp
c0dea632:	2140      	movs	r1, #64	@ 0x40
c0dea634:	47d0      	blx	sl
c0dea636:	2000      	movs	r0, #0
c0dea638:	492c      	ldr	r1, [pc, #176]	@ (c0dea6ec <io_usb_hid_receive+0x180>)
c0dea63a:	2200      	movs	r2, #0
c0dea63c:	f849 2001 	str.w	r2, [r9, r1]
c0dea640:	492c      	ldr	r1, [pc, #176]	@ (c0dea6f4 <io_usb_hid_receive+0x188>)
c0dea642:	f849 2001 	str.w	r2, [r9, r1]
c0dea646:	492a      	ldr	r1, [pc, #168]	@ (c0dea6f0 <io_usb_hid_receive+0x184>)
c0dea648:	f849 2001 	str.w	r2, [r9, r1]
c0dea64c:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0dea650:	eb09 000b 	add.w	r0, r9, fp
c0dea654:	7941      	ldrb	r1, [r0, #5]
c0dea656:	7980      	ldrb	r0, [r0, #6]
c0dea658:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
c0dea65c:	4826      	ldr	r0, [pc, #152]	@ (c0dea6f8 <io_usb_hid_receive+0x18c>)
c0dea65e:	f849 1000 	str.w	r1, [r9, r0]
c0dea662:	f859 1000 	ldr.w	r1, [r9, r0]
c0dea666:	4541      	cmp	r1, r8
c0dea668:	d8e5      	bhi.n	c0dea636 <io_usb_hid_receive+0xca>
c0dea66a:	f859 1000 	ldr.w	r1, [r9, r0]
c0dea66e:	4820      	ldr	r0, [pc, #128]	@ (c0dea6f0 <io_usb_hid_receive+0x184>)
c0dea670:	eb09 020b 	add.w	r2, r9, fp
c0dea674:	f849 1000 	str.w	r1, [r9, r0]
c0dea678:	f819 100b 	ldrb.w	r1, [r9, fp]
c0dea67c:	7852      	ldrb	r2, [r2, #1]
c0dea67e:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0dea682:	4a1e      	ldr	r2, [pc, #120]	@ (c0dea6fc <io_usb_hid_receive+0x190>)
c0dea684:	f849 1002 	str.w	r1, [r9, r2]
c0dea688:	1fe9      	subs	r1, r5, #7
c0dea68a:	f859 2000 	ldr.w	r2, [r9, r0]
c0dea68e:	b28b      	uxth	r3, r1
c0dea690:	429a      	cmp	r2, r3
c0dea692:	bf38      	it	cc
c0dea694:	f859 1000 	ldrcc.w	r1, [r9, r0]
c0dea698:	b288      	uxth	r0, r1
c0dea69a:	2839      	cmp	r0, #57	@ 0x39
c0dea69c:	bf28      	it	cs
c0dea69e:	2139      	movcs	r1, #57	@ 0x39
c0dea6a0:	9e01      	ldr	r6, [sp, #4]
c0dea6a2:	eb09 000b 	add.w	r0, r9, fp
c0dea6a6:	b28d      	uxth	r5, r1
c0dea6a8:	1dc1      	adds	r1, r0, #7
c0dea6aa:	4630      	mov	r0, r6
c0dea6ac:	462a      	mov	r2, r5
c0dea6ae:	f000 fe3a 	bl	c0deb326 <__aeabi_memmove>
c0dea6b2:	480f      	ldr	r0, [pc, #60]	@ (c0dea6f0 <io_usb_hid_receive+0x184>)
c0dea6b4:	f859 1000 	ldr.w	r1, [r9, r0]
c0dea6b8:	1b49      	subs	r1, r1, r5
c0dea6ba:	f849 1000 	str.w	r1, [r9, r0]
c0dea6be:	490d      	ldr	r1, [pc, #52]	@ (c0dea6f4 <io_usb_hid_receive+0x188>)
c0dea6c0:	1970      	adds	r0, r6, r5
c0dea6c2:	f849 0001 	str.w	r0, [r9, r1]
c0dea6c6:	f859 0004 	ldr.w	r0, [r9, r4]
c0dea6ca:	3001      	adds	r0, #1
c0dea6cc:	f849 0004 	str.w	r0, [r9, r4]
c0dea6d0:	4807      	ldr	r0, [pc, #28]	@ (c0dea6f0 <io_usb_hid_receive+0x184>)
c0dea6d2:	f859 0000 	ldr.w	r0, [r9, r0]
c0dea6d6:	b110      	cbz	r0, c0dea6de <io_usb_hid_receive+0x172>
c0dea6d8:	2001      	movs	r0, #1
c0dea6da:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0dea6de:	2002      	movs	r0, #2
c0dea6e0:	e7aa      	b.n	c0dea638 <io_usb_hid_receive+0xcc>
c0dea6e2:	bf00      	nop
c0dea6e4:	00002ac4 	.word	0x00002ac4
c0dea6e8:	00002be4 	.word	0x00002be4
c0dea6ec:	00002c24 	.word	0x00002c24
c0dea6f0:	00002c2c 	.word	0x00002c2c
c0dea6f4:	00002c30 	.word	0x00002c30
c0dea6f8:	00002c28 	.word	0x00002c28
c0dea6fc:	00002c34 	.word	0x00002c34

c0dea700 <io_usb_hid_init>:
c0dea700:	4805      	ldr	r0, [pc, #20]	@ (c0dea718 <io_usb_hid_init+0x18>)
c0dea702:	2100      	movs	r1, #0
c0dea704:	f849 1000 	str.w	r1, [r9, r0]
c0dea708:	4804      	ldr	r0, [pc, #16]	@ (c0dea71c <io_usb_hid_init+0x1c>)
c0dea70a:	f849 1000 	str.w	r1, [r9, r0]
c0dea70e:	4804      	ldr	r0, [pc, #16]	@ (c0dea720 <io_usb_hid_init+0x20>)
c0dea710:	f849 1000 	str.w	r1, [r9, r0]
c0dea714:	4770      	bx	lr
c0dea716:	bf00      	nop
c0dea718:	00002c24 	.word	0x00002c24
c0dea71c:	00002c30 	.word	0x00002c30
c0dea720:	00002c2c 	.word	0x00002c2c

c0dea724 <io_usb_hid_sent>:
c0dea724:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0dea728:	f8df a0cc 	ldr.w	sl, [pc, #204]	@ c0dea7f8 <io_usb_hid_sent+0xd4>
c0dea72c:	4f33      	ldr	r7, [pc, #204]	@ (c0dea7fc <io_usb_hid_sent+0xd8>)
c0dea72e:	f859 400a 	ldr.w	r4, [r9, sl]
c0dea732:	f859 1007 	ldr.w	r1, [r9, r7]
c0dea736:	b351      	cbz	r1, c0dea78e <io_usb_hid_sent+0x6a>
c0dea738:	b34c      	cbz	r4, c0dea78e <io_usb_hid_sent+0x6a>
c0dea73a:	f8df 80cc 	ldr.w	r8, [pc, #204]	@ c0dea808 <io_usb_hid_sent+0xe4>
c0dea73e:	4683      	mov	fp, r0
c0dea740:	213b      	movs	r1, #59	@ 0x3b
c0dea742:	eb09 0508 	add.w	r5, r9, r8
c0dea746:	1d68      	adds	r0, r5, #5
c0dea748:	f000 fde8 	bl	c0deb31c <__aeabi_memclr>
c0dea74c:	482f      	ldr	r0, [pc, #188]	@ (c0dea80c <io_usb_hid_sent+0xe8>)
c0dea74e:	4e2c      	ldr	r6, [pc, #176]	@ (c0dea800 <io_usb_hid_sent+0xdc>)
c0dea750:	f859 1000 	ldr.w	r1, [r9, r0]
c0dea754:	0a09      	lsrs	r1, r1, #8
c0dea756:	f809 1008 	strb.w	r1, [r9, r8]
c0dea75a:	2105      	movs	r1, #5
c0dea75c:	70a9      	strb	r1, [r5, #2]
c0dea75e:	f859 0000 	ldr.w	r0, [r9, r0]
c0dea762:	7068      	strb	r0, [r5, #1]
c0dea764:	f859 0006 	ldr.w	r0, [r9, r6]
c0dea768:	0a00      	lsrs	r0, r0, #8
c0dea76a:	70e8      	strb	r0, [r5, #3]
c0dea76c:	f859 0006 	ldr.w	r0, [r9, r6]
c0dea770:	7128      	strb	r0, [r5, #4]
c0dea772:	f859 1006 	ldr.w	r1, [r9, r6]
c0dea776:	f859 0007 	ldr.w	r0, [r9, r7]
c0dea77a:	b1a9      	cbz	r1, c0dea7a8 <io_usb_hid_sent+0x84>
c0dea77c:	283b      	cmp	r0, #59	@ 0x3b
c0dea77e:	eb09 0008 	add.w	r0, r9, r8
c0dea782:	bf94      	ite	ls
c0dea784:	f859 5007 	ldrls.w	r5, [r9, r7]
c0dea788:	253b      	movhi	r5, #59	@ 0x3b
c0dea78a:	3005      	adds	r0, #5
c0dea78c:	e01b      	b.n	c0dea7c6 <io_usb_hid_sent+0xa2>
c0dea78e:	481c      	ldr	r0, [pc, #112]	@ (c0dea800 <io_usb_hid_sent+0xdc>)
c0dea790:	2100      	movs	r1, #0
c0dea792:	f849 1000 	str.w	r1, [r9, r0]
c0dea796:	481b      	ldr	r0, [pc, #108]	@ (c0dea804 <io_usb_hid_sent+0xe0>)
c0dea798:	f849 100a 	str.w	r1, [r9, sl]
c0dea79c:	f809 1000 	strb.w	r1, [r9, r0]
c0dea7a0:	f849 1007 	str.w	r1, [r9, r7]
c0dea7a4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0dea7a8:	2839      	cmp	r0, #57	@ 0x39
c0dea7aa:	bf94      	ite	ls
c0dea7ac:	f859 5007 	ldrls.w	r5, [r9, r7]
c0dea7b0:	2539      	movhi	r5, #57	@ 0x39
c0dea7b2:	f859 1007 	ldr.w	r1, [r9, r7]
c0dea7b6:	eb09 0008 	add.w	r0, r9, r8
c0dea7ba:	0a09      	lsrs	r1, r1, #8
c0dea7bc:	7141      	strb	r1, [r0, #5]
c0dea7be:	f859 1007 	ldr.w	r1, [r9, r7]
c0dea7c2:	7181      	strb	r1, [r0, #6]
c0dea7c4:	3007      	adds	r0, #7
c0dea7c6:	4621      	mov	r1, r4
c0dea7c8:	462a      	mov	r2, r5
c0dea7ca:	f000 fdac 	bl	c0deb326 <__aeabi_memmove>
c0dea7ce:	f859 0007 	ldr.w	r0, [r9, r7]
c0dea7d2:	465a      	mov	r2, fp
c0dea7d4:	2140      	movs	r1, #64	@ 0x40
c0dea7d6:	1b40      	subs	r0, r0, r5
c0dea7d8:	f849 0007 	str.w	r0, [r9, r7]
c0dea7dc:	1960      	adds	r0, r4, r5
c0dea7de:	f849 000a 	str.w	r0, [r9, sl]
c0dea7e2:	f859 0006 	ldr.w	r0, [r9, r6]
c0dea7e6:	3001      	adds	r0, #1
c0dea7e8:	f849 0006 	str.w	r0, [r9, r6]
c0dea7ec:	eb09 0008 	add.w	r0, r9, r8
c0dea7f0:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0dea7f4:	4710      	bx	r2
c0dea7f6:	bf00      	nop
c0dea7f8:	00002c30 	.word	0x00002c30
c0dea7fc:	00002c2c 	.word	0x00002c2c
c0dea800:	00002c24 	.word	0x00002c24
c0dea804:	00002bc8 	.word	0x00002bc8
c0dea808:	00002be4 	.word	0x00002be4
c0dea80c:	00002c34 	.word	0x00002c34

c0dea810 <io_usb_hid_send>:
c0dea810:	b189      	cbz	r1, c0dea836 <io_usb_hid_send+0x26>
c0dea812:	b510      	push	{r4, lr}
c0dea814:	4b08      	ldr	r3, [pc, #32]	@ (c0dea838 <io_usb_hid_send+0x28>)
c0dea816:	2400      	movs	r4, #0
c0dea818:	f849 4003 	str.w	r4, [r9, r3]
c0dea81c:	4b07      	ldr	r3, [pc, #28]	@ (c0dea83c <io_usb_hid_send+0x2c>)
c0dea81e:	f849 1003 	str.w	r1, [r9, r3]
c0dea822:	4b07      	ldr	r3, [pc, #28]	@ (c0dea840 <io_usb_hid_send+0x30>)
c0dea824:	f849 2003 	str.w	r2, [r9, r3]
c0dea828:	4a06      	ldr	r2, [pc, #24]	@ (c0dea844 <io_usb_hid_send+0x34>)
c0dea82a:	f849 1002 	str.w	r1, [r9, r2]
c0dea82e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0dea832:	f7ff bf77 	b.w	c0dea724 <io_usb_hid_sent>
c0dea836:	4770      	bx	lr
c0dea838:	00002c24 	.word	0x00002c24
c0dea83c:	00002c2c 	.word	0x00002c2c
c0dea840:	00002c30 	.word	0x00002c30
c0dea844:	00002c28 	.word	0x00002c28

c0dea848 <snprintf>:
c0dea848:	b081      	sub	sp, #4
c0dea84a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0dea84e:	b087      	sub	sp, #28
c0dea850:	2800      	cmp	r0, #0
c0dea852:	930f      	str	r3, [sp, #60]	@ 0x3c
c0dea854:	f000 817a 	beq.w	c0deab4c <snprintf+0x304>
c0dea858:	460d      	mov	r5, r1
c0dea85a:	2900      	cmp	r1, #0
c0dea85c:	f000 8176 	beq.w	c0deab4c <snprintf+0x304>
c0dea860:	4629      	mov	r1, r5
c0dea862:	4616      	mov	r6, r2
c0dea864:	4604      	mov	r4, r0
c0dea866:	f000 fd59 	bl	c0deb31c <__aeabi_memclr>
c0dea86a:	f1b5 0801 	subs.w	r8, r5, #1
c0dea86e:	f000 816d 	beq.w	c0deab4c <snprintf+0x304>
c0dea872:	a80f      	add	r0, sp, #60	@ 0x3c
c0dea874:	9002      	str	r0, [sp, #8]
c0dea876:	7830      	ldrb	r0, [r6, #0]
c0dea878:	2800      	cmp	r0, #0
c0dea87a:	f000 8167 	beq.w	c0deab4c <snprintf+0x304>
c0dea87e:	2700      	movs	r7, #0
c0dea880:	b128      	cbz	r0, c0dea88e <snprintf+0x46>
c0dea882:	2825      	cmp	r0, #37	@ 0x25
c0dea884:	d003      	beq.n	c0dea88e <snprintf+0x46>
c0dea886:	19f0      	adds	r0, r6, r7
c0dea888:	3701      	adds	r7, #1
c0dea88a:	7840      	ldrb	r0, [r0, #1]
c0dea88c:	e7f8      	b.n	c0dea880 <snprintf+0x38>
c0dea88e:	4547      	cmp	r7, r8
c0dea890:	bf28      	it	cs
c0dea892:	4647      	movcs	r7, r8
c0dea894:	4620      	mov	r0, r4
c0dea896:	4631      	mov	r1, r6
c0dea898:	463a      	mov	r2, r7
c0dea89a:	f000 fd44 	bl	c0deb326 <__aeabi_memmove>
c0dea89e:	ebb8 0807 	subs.w	r8, r8, r7
c0dea8a2:	f000 8153 	beq.w	c0deab4c <snprintf+0x304>
c0dea8a6:	5df1      	ldrb	r1, [r6, r7]
c0dea8a8:	19f0      	adds	r0, r6, r7
c0dea8aa:	443c      	add	r4, r7
c0dea8ac:	4606      	mov	r6, r0
c0dea8ae:	2925      	cmp	r1, #37	@ 0x25
c0dea8b0:	d1e1      	bne.n	c0dea876 <snprintf+0x2e>
c0dea8b2:	1c41      	adds	r1, r0, #1
c0dea8b4:	f04f 0b00 	mov.w	fp, #0
c0dea8b8:	f04f 0e20 	mov.w	lr, #32
c0dea8bc:	2500      	movs	r5, #0
c0dea8be:	2600      	movs	r6, #0
c0dea8c0:	3101      	adds	r1, #1
c0dea8c2:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0dea8c6:	4632      	mov	r2, r6
c0dea8c8:	3101      	adds	r1, #1
c0dea8ca:	2600      	movs	r6, #0
c0dea8cc:	2b2d      	cmp	r3, #45	@ 0x2d
c0dea8ce:	d0f8      	beq.n	c0dea8c2 <snprintf+0x7a>
c0dea8d0:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0dea8d4:	2e0a      	cmp	r6, #10
c0dea8d6:	d313      	bcc.n	c0dea900 <snprintf+0xb8>
c0dea8d8:	2b25      	cmp	r3, #37	@ 0x25
c0dea8da:	d046      	beq.n	c0dea96a <snprintf+0x122>
c0dea8dc:	2b2a      	cmp	r3, #42	@ 0x2a
c0dea8de:	d01f      	beq.n	c0dea920 <snprintf+0xd8>
c0dea8e0:	2b2e      	cmp	r3, #46	@ 0x2e
c0dea8e2:	d129      	bne.n	c0dea938 <snprintf+0xf0>
c0dea8e4:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0dea8e8:	2a2a      	cmp	r2, #42	@ 0x2a
c0dea8ea:	d13c      	bne.n	c0dea966 <snprintf+0x11e>
c0dea8ec:	780a      	ldrb	r2, [r1, #0]
c0dea8ee:	2a48      	cmp	r2, #72	@ 0x48
c0dea8f0:	d003      	beq.n	c0dea8fa <snprintf+0xb2>
c0dea8f2:	2a73      	cmp	r2, #115	@ 0x73
c0dea8f4:	d001      	beq.n	c0dea8fa <snprintf+0xb2>
c0dea8f6:	2a68      	cmp	r2, #104	@ 0x68
c0dea8f8:	d135      	bne.n	c0dea966 <snprintf+0x11e>
c0dea8fa:	9a02      	ldr	r2, [sp, #8]
c0dea8fc:	2601      	movs	r6, #1
c0dea8fe:	e017      	b.n	c0dea930 <snprintf+0xe8>
c0dea900:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0dea904:	ea56 060b 	orrs.w	r6, r6, fp
c0dea908:	bf08      	it	eq
c0dea90a:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0dea90e:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0dea912:	3901      	subs	r1, #1
c0dea914:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0dea918:	4616      	mov	r6, r2
c0dea91a:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0dea91e:	e7cf      	b.n	c0dea8c0 <snprintf+0x78>
c0dea920:	460b      	mov	r3, r1
c0dea922:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0dea926:	2a73      	cmp	r2, #115	@ 0x73
c0dea928:	d11d      	bne.n	c0dea966 <snprintf+0x11e>
c0dea92a:	9a02      	ldr	r2, [sp, #8]
c0dea92c:	2602      	movs	r6, #2
c0dea92e:	4619      	mov	r1, r3
c0dea930:	1d13      	adds	r3, r2, #4
c0dea932:	9302      	str	r3, [sp, #8]
c0dea934:	6815      	ldr	r5, [r2, #0]
c0dea936:	e7c3      	b.n	c0dea8c0 <snprintf+0x78>
c0dea938:	2b48      	cmp	r3, #72	@ 0x48
c0dea93a:	d018      	beq.n	c0dea96e <snprintf+0x126>
c0dea93c:	2b58      	cmp	r3, #88	@ 0x58
c0dea93e:	d019      	beq.n	c0dea974 <snprintf+0x12c>
c0dea940:	2b63      	cmp	r3, #99	@ 0x63
c0dea942:	d020      	beq.n	c0dea986 <snprintf+0x13e>
c0dea944:	2b64      	cmp	r3, #100	@ 0x64
c0dea946:	d02a      	beq.n	c0dea99e <snprintf+0x156>
c0dea948:	2b68      	cmp	r3, #104	@ 0x68
c0dea94a:	d036      	beq.n	c0dea9ba <snprintf+0x172>
c0dea94c:	2b70      	cmp	r3, #112	@ 0x70
c0dea94e:	d006      	beq.n	c0dea95e <snprintf+0x116>
c0dea950:	2b73      	cmp	r3, #115	@ 0x73
c0dea952:	d037      	beq.n	c0dea9c4 <snprintf+0x17c>
c0dea954:	2b75      	cmp	r3, #117	@ 0x75
c0dea956:	f000 8081 	beq.w	c0deaa5c <snprintf+0x214>
c0dea95a:	2b78      	cmp	r3, #120	@ 0x78
c0dea95c:	d103      	bne.n	c0dea966 <snprintf+0x11e>
c0dea95e:	9400      	str	r4, [sp, #0]
c0dea960:	f04f 0c00 	mov.w	ip, #0
c0dea964:	e009      	b.n	c0dea97a <snprintf+0x132>
c0dea966:	1e4e      	subs	r6, r1, #1
c0dea968:	e785      	b.n	c0dea876 <snprintf+0x2e>
c0dea96a:	2025      	movs	r0, #37	@ 0x25
c0dea96c:	e00f      	b.n	c0dea98e <snprintf+0x146>
c0dea96e:	487b      	ldr	r0, [pc, #492]	@ (c0deab5c <snprintf+0x314>)
c0dea970:	4478      	add	r0, pc
c0dea972:	e024      	b.n	c0dea9be <snprintf+0x176>
c0dea974:	f04f 0c01 	mov.w	ip, #1
c0dea978:	9400      	str	r4, [sp, #0]
c0dea97a:	9a02      	ldr	r2, [sp, #8]
c0dea97c:	2400      	movs	r4, #0
c0dea97e:	1d13      	adds	r3, r2, #4
c0dea980:	9302      	str	r3, [sp, #8]
c0dea982:	2310      	movs	r3, #16
c0dea984:	e072      	b.n	c0deaa6c <snprintf+0x224>
c0dea986:	9802      	ldr	r0, [sp, #8]
c0dea988:	1d02      	adds	r2, r0, #4
c0dea98a:	9202      	str	r2, [sp, #8]
c0dea98c:	6800      	ldr	r0, [r0, #0]
c0dea98e:	1e4e      	subs	r6, r1, #1
c0dea990:	f804 0b01 	strb.w	r0, [r4], #1
c0dea994:	f1b8 0801 	subs.w	r8, r8, #1
c0dea998:	f47f af6d 	bne.w	c0dea876 <snprintf+0x2e>
c0dea99c:	e0d6      	b.n	c0deab4c <snprintf+0x304>
c0dea99e:	9a02      	ldr	r2, [sp, #8]
c0dea9a0:	9400      	str	r4, [sp, #0]
c0dea9a2:	1d13      	adds	r3, r2, #4
c0dea9a4:	9302      	str	r3, [sp, #8]
c0dea9a6:	6813      	ldr	r3, [r2, #0]
c0dea9a8:	2b00      	cmp	r3, #0
c0dea9aa:	461a      	mov	r2, r3
c0dea9ac:	d500      	bpl.n	c0dea9b0 <snprintf+0x168>
c0dea9ae:	425a      	negs	r2, r3
c0dea9b0:	0fdc      	lsrs	r4, r3, #31
c0dea9b2:	f04f 0c00 	mov.w	ip, #0
c0dea9b6:	230a      	movs	r3, #10
c0dea9b8:	e059      	b.n	c0deaa6e <snprintf+0x226>
c0dea9ba:	4869      	ldr	r0, [pc, #420]	@ (c0deab60 <snprintf+0x318>)
c0dea9bc:	4478      	add	r0, pc
c0dea9be:	f04f 0c01 	mov.w	ip, #1
c0dea9c2:	e003      	b.n	c0dea9cc <snprintf+0x184>
c0dea9c4:	4864      	ldr	r0, [pc, #400]	@ (c0deab58 <snprintf+0x310>)
c0dea9c6:	f04f 0c00 	mov.w	ip, #0
c0dea9ca:	4478      	add	r0, pc
c0dea9cc:	9b02      	ldr	r3, [sp, #8]
c0dea9ce:	b2d2      	uxtb	r2, r2
c0dea9d0:	1d1e      	adds	r6, r3, #4
c0dea9d2:	9602      	str	r6, [sp, #8]
c0dea9d4:	1e4e      	subs	r6, r1, #1
c0dea9d6:	6819      	ldr	r1, [r3, #0]
c0dea9d8:	2a02      	cmp	r2, #2
c0dea9da:	f000 80a7 	beq.w	c0deab2c <snprintf+0x2e4>
c0dea9de:	2a01      	cmp	r2, #1
c0dea9e0:	d007      	beq.n	c0dea9f2 <snprintf+0x1aa>
c0dea9e2:	463d      	mov	r5, r7
c0dea9e4:	b92a      	cbnz	r2, c0dea9f2 <snprintf+0x1aa>
c0dea9e6:	2200      	movs	r2, #0
c0dea9e8:	5c8b      	ldrb	r3, [r1, r2]
c0dea9ea:	3201      	adds	r2, #1
c0dea9ec:	2b00      	cmp	r3, #0
c0dea9ee:	d1fb      	bne.n	c0dea9e8 <snprintf+0x1a0>
c0dea9f0:	1e55      	subs	r5, r2, #1
c0dea9f2:	f1bc 0f00 	cmp.w	ip, #0
c0dea9f6:	d016      	beq.n	c0deaa26 <snprintf+0x1de>
c0dea9f8:	2d00      	cmp	r5, #0
c0dea9fa:	f43f af3c 	beq.w	c0dea876 <snprintf+0x2e>
c0dea9fe:	f1b8 0f02 	cmp.w	r8, #2
c0deaa02:	f0c0 80a3 	bcc.w	c0deab4c <snprintf+0x304>
c0deaa06:	780a      	ldrb	r2, [r1, #0]
c0deaa08:	0913      	lsrs	r3, r2, #4
c0deaa0a:	f002 020f 	and.w	r2, r2, #15
c0deaa0e:	5cc3      	ldrb	r3, [r0, r3]
c0deaa10:	f1b8 0802 	subs.w	r8, r8, #2
c0deaa14:	7023      	strb	r3, [r4, #0]
c0deaa16:	5c82      	ldrb	r2, [r0, r2]
c0deaa18:	7062      	strb	r2, [r4, #1]
c0deaa1a:	f000 8097 	beq.w	c0deab4c <snprintf+0x304>
c0deaa1e:	3101      	adds	r1, #1
c0deaa20:	3d01      	subs	r5, #1
c0deaa22:	3402      	adds	r4, #2
c0deaa24:	e7e8      	b.n	c0dea9f8 <snprintf+0x1b0>
c0deaa26:	4545      	cmp	r5, r8
c0deaa28:	bf28      	it	cs
c0deaa2a:	4645      	movcs	r5, r8
c0deaa2c:	4620      	mov	r0, r4
c0deaa2e:	462a      	mov	r2, r5
c0deaa30:	f000 fc79 	bl	c0deb326 <__aeabi_memmove>
c0deaa34:	ebb8 0805 	subs.w	r8, r8, r5
c0deaa38:	f000 8088 	beq.w	c0deab4c <snprintf+0x304>
c0deaa3c:	462f      	mov	r7, r5
c0deaa3e:	442c      	add	r4, r5
c0deaa40:	45bb      	cmp	fp, r7
c0deaa42:	f67f af18 	bls.w	c0dea876 <snprintf+0x2e>
c0deaa46:	ebab 0507 	sub.w	r5, fp, r7
c0deaa4a:	4620      	mov	r0, r4
c0deaa4c:	4545      	cmp	r5, r8
c0deaa4e:	bf28      	it	cs
c0deaa50:	4645      	movcs	r5, r8
c0deaa52:	4629      	mov	r1, r5
c0deaa54:	2220      	movs	r2, #32
c0deaa56:	f000 fc68 	bl	c0deb32a <__aeabi_memset>
c0deaa5a:	e061      	b.n	c0deab20 <snprintf+0x2d8>
c0deaa5c:	9a02      	ldr	r2, [sp, #8]
c0deaa5e:	9400      	str	r4, [sp, #0]
c0deaa60:	2400      	movs	r4, #0
c0deaa62:	f04f 0c00 	mov.w	ip, #0
c0deaa66:	1d13      	adds	r3, r2, #4
c0deaa68:	9302      	str	r3, [sp, #8]
c0deaa6a:	230a      	movs	r3, #10
c0deaa6c:	6812      	ldr	r2, [r2, #0]
c0deaa6e:	483d      	ldr	r0, [pc, #244]	@ (c0deab64 <snprintf+0x31c>)
c0deaa70:	1e4e      	subs	r6, r1, #1
c0deaa72:	f04f 0a01 	mov.w	sl, #1
c0deaa76:	4478      	add	r0, pc
c0deaa78:	9001      	str	r0, [sp, #4]
c0deaa7a:	fba3 570a 	umull	r5, r7, r3, sl
c0deaa7e:	2f00      	cmp	r7, #0
c0deaa80:	bf18      	it	ne
c0deaa82:	2701      	movne	r7, #1
c0deaa84:	4295      	cmp	r5, r2
c0deaa86:	d804      	bhi.n	c0deaa92 <snprintf+0x24a>
c0deaa88:	b91f      	cbnz	r7, c0deaa92 <snprintf+0x24a>
c0deaa8a:	f1ab 0b01 	sub.w	fp, fp, #1
c0deaa8e:	46aa      	mov	sl, r5
c0deaa90:	e7f3      	b.n	c0deaa7a <snprintf+0x232>
c0deaa92:	2c00      	cmp	r4, #0
c0deaa94:	4627      	mov	r7, r4
c0deaa96:	f04f 0500 	mov.w	r5, #0
c0deaa9a:	bf18      	it	ne
c0deaa9c:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0deaaa0:	d00d      	beq.n	c0deaabe <snprintf+0x276>
c0deaaa2:	4660      	mov	r0, ip
c0deaaa4:	fa5f fc8e 	uxtb.w	ip, lr
c0deaaa8:	a903      	add	r1, sp, #12
c0deaaaa:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0deaaae:	4684      	mov	ip, r0
c0deaab0:	d106      	bne.n	c0deaac0 <snprintf+0x278>
c0deaab2:	202d      	movs	r0, #45	@ 0x2d
c0deaab4:	2400      	movs	r4, #0
c0deaab6:	2501      	movs	r5, #1
c0deaab8:	f88d 000c 	strb.w	r0, [sp, #12]
c0deaabc:	e000      	b.n	c0deaac0 <snprintf+0x278>
c0deaabe:	a903      	add	r1, sp, #12
c0deaac0:	eb07 000b 	add.w	r0, r7, fp
c0deaac4:	3802      	subs	r0, #2
c0deaac6:	280d      	cmp	r0, #13
c0deaac8:	d808      	bhi.n	c0deaadc <snprintf+0x294>
c0deaaca:	f1c7 0701 	rsb	r7, r7, #1
c0deaace:	45bb      	cmp	fp, r7
c0deaad0:	d004      	beq.n	c0deaadc <snprintf+0x294>
c0deaad2:	f801 e005 	strb.w	lr, [r1, r5]
c0deaad6:	3701      	adds	r7, #1
c0deaad8:	3501      	adds	r5, #1
c0deaada:	e7f8      	b.n	c0deaace <snprintf+0x286>
c0deaadc:	9f01      	ldr	r7, [sp, #4]
c0deaade:	b114      	cbz	r4, c0deaae6 <snprintf+0x29e>
c0deaae0:	202d      	movs	r0, #45	@ 0x2d
c0deaae2:	5548      	strb	r0, [r1, r5]
c0deaae4:	3501      	adds	r5, #1
c0deaae6:	4820      	ldr	r0, [pc, #128]	@ (c0deab68 <snprintf+0x320>)
c0deaae8:	f1bc 0f00 	cmp.w	ip, #0
c0deaaec:	4478      	add	r0, pc
c0deaaee:	bf08      	it	eq
c0deaaf0:	4638      	moveq	r0, r7
c0deaaf2:	f1ba 0f00 	cmp.w	sl, #0
c0deaaf6:	d00b      	beq.n	c0deab10 <snprintf+0x2c8>
c0deaaf8:	fbb2 f7fa 	udiv	r7, r2, sl
c0deaafc:	fbba faf3 	udiv	sl, sl, r3
c0deab00:	fbb7 f4f3 	udiv	r4, r7, r3
c0deab04:	fb04 7413 	mls	r4, r4, r3, r7
c0deab08:	5d04      	ldrb	r4, [r0, r4]
c0deab0a:	554c      	strb	r4, [r1, r5]
c0deab0c:	3501      	adds	r5, #1
c0deab0e:	e7f0      	b.n	c0deaaf2 <snprintf+0x2aa>
c0deab10:	4545      	cmp	r5, r8
c0deab12:	bf28      	it	cs
c0deab14:	4645      	movcs	r5, r8
c0deab16:	9c00      	ldr	r4, [sp, #0]
c0deab18:	462a      	mov	r2, r5
c0deab1a:	4620      	mov	r0, r4
c0deab1c:	f000 fc03 	bl	c0deb326 <__aeabi_memmove>
c0deab20:	ebb8 0805 	subs.w	r8, r8, r5
c0deab24:	442c      	add	r4, r5
c0deab26:	f47f aea6 	bne.w	c0dea876 <snprintf+0x2e>
c0deab2a:	e00f      	b.n	c0deab4c <snprintf+0x304>
c0deab2c:	7808      	ldrb	r0, [r1, #0]
c0deab2e:	2800      	cmp	r0, #0
c0deab30:	f47f aea1 	bne.w	c0dea876 <snprintf+0x2e>
c0deab34:	4545      	cmp	r5, r8
c0deab36:	bf28      	it	cs
c0deab38:	4645      	movcs	r5, r8
c0deab3a:	4620      	mov	r0, r4
c0deab3c:	4629      	mov	r1, r5
c0deab3e:	2220      	movs	r2, #32
c0deab40:	f000 fbf3 	bl	c0deb32a <__aeabi_memset>
c0deab44:	ebb8 0805 	subs.w	r8, r8, r5
c0deab48:	f47f af79 	bne.w	c0deaa3e <snprintf+0x1f6>
c0deab4c:	2000      	movs	r0, #0
c0deab4e:	b007      	add	sp, #28
c0deab50:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0deab54:	b001      	add	sp, #4
c0deab56:	4770      	bx	lr
c0deab58:	00002871 	.word	0x00002871
c0deab5c:	000028db 	.word	0x000028db
c0deab60:	0000287f 	.word	0x0000287f
c0deab64:	000027c5 	.word	0x000027c5
c0deab68:	0000275f 	.word	0x0000275f

c0deab6c <pic_internal>:
c0deab6c:	467a      	mov	r2, pc
c0deab6e:	4902      	ldr	r1, [pc, #8]	@ (c0deab78 <pic_internal+0xc>)
c0deab70:	1cc9      	adds	r1, r1, #3
c0deab72:	1a89      	subs	r1, r1, r2
c0deab74:	1a40      	subs	r0, r0, r1
c0deab76:	4770      	bx	lr
c0deab78:	c0deab6d 	.word	0xc0deab6d

c0deab7c <pic>:
c0deab7c:	4a0a      	ldr	r2, [pc, #40]	@ (c0deaba8 <pic+0x2c>)
c0deab7e:	4282      	cmp	r2, r0
c0deab80:	490a      	ldr	r1, [pc, #40]	@ (c0deabac <pic+0x30>)
c0deab82:	d806      	bhi.n	c0deab92 <pic+0x16>
c0deab84:	4281      	cmp	r1, r0
c0deab86:	d304      	bcc.n	c0deab92 <pic+0x16>
c0deab88:	b580      	push	{r7, lr}
c0deab8a:	f7ff ffef 	bl	c0deab6c <pic_internal>
c0deab8e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0deab92:	4907      	ldr	r1, [pc, #28]	@ (c0deabb0 <pic+0x34>)
c0deab94:	4288      	cmp	r0, r1
c0deab96:	4a07      	ldr	r2, [pc, #28]	@ (c0deabb4 <pic+0x38>)
c0deab98:	d304      	bcc.n	c0deaba4 <pic+0x28>
c0deab9a:	4290      	cmp	r0, r2
c0deab9c:	d802      	bhi.n	c0deaba4 <pic+0x28>
c0deab9e:	1a40      	subs	r0, r0, r1
c0deaba0:	4649      	mov	r1, r9
c0deaba2:	4408      	add	r0, r1
c0deaba4:	4770      	bx	lr
c0deaba6:	0000      	movs	r0, r0
c0deaba8:	c0de0000 	.word	0xc0de0000
c0deabac:	c0ded63f 	.word	0xc0ded63f
c0deabb0:	da7a0000 	.word	0xda7a0000
c0deabb4:	da7ab000 	.word	0xda7ab000

c0deabb8 <SVC_Call>:
c0deabb8:	df01      	svc	1
c0deabba:	2900      	cmp	r1, #0
c0deabbc:	d100      	bne.n	c0deabc0 <exception>
c0deabbe:	4770      	bx	lr

c0deabc0 <exception>:
c0deabc0:	4608      	mov	r0, r1
c0deabc2:	f7ff f9af 	bl	c0de9f24 <os_longjmp>
	...

c0deabc8 <SVC_cx_call>:
c0deabc8:	df01      	svc	1
c0deabca:	4770      	bx	lr

c0deabcc <halt>:
c0deabcc:	b5e0      	push	{r5, r6, r7, lr}
c0deabce:	2000      	movs	r0, #0
c0deabd0:	4669      	mov	r1, sp
c0deabd2:	9001      	str	r0, [sp, #4]
c0deabd4:	2002      	movs	r0, #2
c0deabd6:	f7ff ffef 	bl	c0deabb8 <SVC_Call>
c0deabda:	bd8c      	pop	{r2, r3, r7, pc}

c0deabdc <nbgl_frontDrawRect>:
c0deabdc:	b5e0      	push	{r5, r6, r7, lr}
c0deabde:	9001      	str	r0, [sp, #4]
c0deabe0:	a901      	add	r1, sp, #4
c0deabe2:	f04f 70fd 	mov.w	r0, #33161216	@ 0x1fa0000
c0deabe6:	f7ff ffe7 	bl	c0deabb8 <SVC_Call>
c0deabea:	bd8c      	pop	{r2, r3, r7, pc}

c0deabec <nbgl_frontDrawImage>:
c0deabec:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0deabee:	9000      	str	r0, [sp, #0]
c0deabf0:	f000 f9e8 	bl	c0deafc4 <OUTLINED_FUNCTION_1>
c0deabf4:	e9cd 0501 	strd	r0, r5, [sp, #4]
c0deabf8:	4802      	ldr	r0, [pc, #8]	@ (c0deac04 <nbgl_frontDrawImage+0x18>)
c0deabfa:	4669      	mov	r1, sp
c0deabfc:	9403      	str	r4, [sp, #12]
c0deabfe:	f7ff ffdb 	bl	c0deabb8 <SVC_Call>
c0deac02:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0deac04:	04fa0002 	.word	0x04fa0002

c0deac08 <nbgl_frontDrawImageRle>:
c0deac08:	b5b0      	push	{r4, r5, r7, lr}
c0deac0a:	b086      	sub	sp, #24
c0deac0c:	9001      	str	r0, [sp, #4]
c0deac0e:	f000 f9d9 	bl	c0deafc4 <OUTLINED_FUNCTION_1>
c0deac12:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0deac14:	e9cd 0502 	strd	r0, r5, [sp, #8]
c0deac18:	4803      	ldr	r0, [pc, #12]	@ (c0deac28 <nbgl_frontDrawImageRle+0x20>)
c0deac1a:	e9cd 4104 	strd	r4, r1, [sp, #16]
c0deac1e:	a901      	add	r1, sp, #4
c0deac20:	f7ff ffca 	bl	c0deabb8 <SVC_Call>
c0deac24:	b006      	add	sp, #24
c0deac26:	bdb0      	pop	{r4, r5, r7, pc}
c0deac28:	05fa0010 	.word	0x05fa0010

c0deac2c <nbgl_frontDrawImageFile>:
c0deac2c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0deac2e:	9000      	str	r0, [sp, #0]
c0deac30:	f000 f9c8 	bl	c0deafc4 <OUTLINED_FUNCTION_1>
c0deac34:	e9cd 0501 	strd	r0, r5, [sp, #4]
c0deac38:	4802      	ldr	r0, [pc, #8]	@ (c0deac44 <nbgl_frontDrawImageFile+0x18>)
c0deac3a:	4669      	mov	r1, sp
c0deac3c:	9403      	str	r4, [sp, #12]
c0deac3e:	f7ff ffbb 	bl	c0deabb8 <SVC_Call>
c0deac42:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0deac44:	05fa0004 	.word	0x05fa0004

c0deac48 <nbgl_frontRefreshArea>:
c0deac48:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deac4a:	ab01      	add	r3, sp, #4
c0deac4c:	c307      	stmia	r3!, {r0, r1, r2}
c0deac4e:	4802      	ldr	r0, [pc, #8]	@ (c0deac58 <nbgl_frontRefreshArea+0x10>)
c0deac50:	a901      	add	r1, sp, #4
c0deac52:	f7ff ffb1 	bl	c0deabb8 <SVC_Call>
c0deac56:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0deac58:	03fa0003 	.word	0x03fa0003

c0deac5c <nbgl_font_getFont>:
c0deac5c:	b5e0      	push	{r5, r6, r7, lr}
c0deac5e:	9001      	str	r0, [sp, #4]
c0deac60:	4802      	ldr	r0, [pc, #8]	@ (c0deac6c <nbgl_font_getFont+0x10>)
c0deac62:	a901      	add	r1, sp, #4
c0deac64:	f7ff ffa8 	bl	c0deabb8 <SVC_Call>
c0deac68:	bd8c      	pop	{r2, r3, r7, pc}
c0deac6a:	bf00      	nop
c0deac6c:	01fa000c 	.word	0x01fa000c

c0deac70 <nbgl_screen_reinit>:
c0deac70:	b5e0      	push	{r5, r6, r7, lr}
c0deac72:	2000      	movs	r0, #0
c0deac74:	9001      	str	r0, [sp, #4]
c0deac76:	4802      	ldr	r0, [pc, #8]	@ (c0deac80 <nbgl_screen_reinit+0x10>)
c0deac78:	a901      	add	r1, sp, #4
c0deac7a:	f7ff ff9d 	bl	c0deabb8 <SVC_Call>
c0deac7e:	bd8c      	pop	{r2, r3, r7, pc}
c0deac80:	00fa000d 	.word	0x00fa000d

c0deac84 <nvm_write>:
c0deac84:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deac86:	ab01      	add	r3, sp, #4
c0deac88:	c307      	stmia	r3!, {r0, r1, r2}
c0deac8a:	4802      	ldr	r0, [pc, #8]	@ (c0deac94 <nvm_write+0x10>)
c0deac8c:	a901      	add	r1, sp, #4
c0deac8e:	f7ff ff93 	bl	c0deabb8 <SVC_Call>
c0deac92:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0deac94:	03000003 	.word	0x03000003

c0deac98 <cx_bn_lock>:
c0deac98:	b5e0      	push	{r5, r6, r7, lr}
c0deac9a:	e9cd 0100 	strd	r0, r1, [sp]
c0deac9e:	4802      	ldr	r0, [pc, #8]	@ (c0deaca8 <cx_bn_lock+0x10>)
c0deaca0:	4669      	mov	r1, sp
c0deaca2:	f7ff ff91 	bl	c0deabc8 <SVC_cx_call>
c0deaca6:	bd8c      	pop	{r2, r3, r7, pc}
c0deaca8:	02000112 	.word	0x02000112

c0deacac <cx_bn_unlock>:
c0deacac:	b5e0      	push	{r5, r6, r7, lr}
c0deacae:	2000      	movs	r0, #0
c0deacb0:	4669      	mov	r1, sp
c0deacb2:	9001      	str	r0, [sp, #4]
c0deacb4:	20b6      	movs	r0, #182	@ 0xb6
c0deacb6:	f7ff ff87 	bl	c0deabc8 <SVC_cx_call>
c0deacba:	bd8c      	pop	{r2, r3, r7, pc}

c0deacbc <cx_bn_alloc>:
c0deacbc:	b5e0      	push	{r5, r6, r7, lr}
c0deacbe:	e9cd 0100 	strd	r0, r1, [sp]
c0deacc2:	4802      	ldr	r0, [pc, #8]	@ (c0deaccc <cx_bn_alloc+0x10>)
c0deacc4:	4669      	mov	r1, sp
c0deacc6:	f7ff ff7f 	bl	c0deabc8 <SVC_cx_call>
c0deacca:	bd8c      	pop	{r2, r3, r7, pc}
c0deaccc:	02000113 	.word	0x02000113

c0deacd0 <cx_bn_alloc_init>:
c0deacd0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deacd2:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0deacd6:	4803      	ldr	r0, [pc, #12]	@ (c0deace4 <cx_bn_alloc_init+0x14>)
c0deacd8:	4669      	mov	r1, sp
c0deacda:	f7ff ff75 	bl	c0deabc8 <SVC_cx_call>
c0deacde:	b004      	add	sp, #16
c0deace0:	bd80      	pop	{r7, pc}
c0deace2:	bf00      	nop
c0deace4:	04000114 	.word	0x04000114

c0deace8 <cx_bn_destroy>:
c0deace8:	b5e0      	push	{r5, r6, r7, lr}
c0deacea:	f000 f967 	bl	c0deafbc <OUTLINED_FUNCTION_0>
c0deacee:	4802      	ldr	r0, [pc, #8]	@ (c0deacf8 <cx_bn_destroy+0x10>)
c0deacf0:	4669      	mov	r1, sp
c0deacf2:	f7ff ff69 	bl	c0deabc8 <SVC_cx_call>
c0deacf6:	bd8c      	pop	{r2, r3, r7, pc}
c0deacf8:	010000bc 	.word	0x010000bc

c0deacfc <cx_bn_nbytes>:
c0deacfc:	b5e0      	push	{r5, r6, r7, lr}
c0deacfe:	e9cd 0100 	strd	r0, r1, [sp]
c0dead02:	4802      	ldr	r0, [pc, #8]	@ (c0dead0c <cx_bn_nbytes+0x10>)
c0dead04:	4669      	mov	r1, sp
c0dead06:	f7ff ff5f 	bl	c0deabc8 <SVC_cx_call>
c0dead0a:	bd8c      	pop	{r2, r3, r7, pc}
c0dead0c:	0200010d 	.word	0x0200010d

c0dead10 <cx_bn_copy>:
c0dead10:	b5e0      	push	{r5, r6, r7, lr}
c0dead12:	e9cd 0100 	strd	r0, r1, [sp]
c0dead16:	4802      	ldr	r0, [pc, #8]	@ (c0dead20 <cx_bn_copy+0x10>)
c0dead18:	4669      	mov	r1, sp
c0dead1a:	f7ff ff55 	bl	c0deabc8 <SVC_cx_call>
c0dead1e:	bd8c      	pop	{r2, r3, r7, pc}
c0dead20:	020000c0 	.word	0x020000c0

c0dead24 <cx_bn_set_u32>:
c0dead24:	b5e0      	push	{r5, r6, r7, lr}
c0dead26:	e9cd 0100 	strd	r0, r1, [sp]
c0dead2a:	4802      	ldr	r0, [pc, #8]	@ (c0dead34 <cx_bn_set_u32+0x10>)
c0dead2c:	4669      	mov	r1, sp
c0dead2e:	f7ff ff4b 	bl	c0deabc8 <SVC_cx_call>
c0dead32:	bd8c      	pop	{r2, r3, r7, pc}
c0dead34:	020000c1 	.word	0x020000c1

c0dead38 <cx_bn_export>:
c0dead38:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dead3a:	ab01      	add	r3, sp, #4
c0dead3c:	c307      	stmia	r3!, {r0, r1, r2}
c0dead3e:	4803      	ldr	r0, [pc, #12]	@ (c0dead4c <cx_bn_export+0x14>)
c0dead40:	a901      	add	r1, sp, #4
c0dead42:	f7ff ff41 	bl	c0deabc8 <SVC_cx_call>
c0dead46:	b004      	add	sp, #16
c0dead48:	bd80      	pop	{r7, pc}
c0dead4a:	bf00      	nop
c0dead4c:	030000c3 	.word	0x030000c3

c0dead50 <cx_bn_cmp>:
c0dead50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dead52:	ab01      	add	r3, sp, #4
c0dead54:	c307      	stmia	r3!, {r0, r1, r2}
c0dead56:	4803      	ldr	r0, [pc, #12]	@ (c0dead64 <cx_bn_cmp+0x14>)
c0dead58:	a901      	add	r1, sp, #4
c0dead5a:	f7ff ff35 	bl	c0deabc8 <SVC_cx_call>
c0dead5e:	b004      	add	sp, #16
c0dead60:	bd80      	pop	{r7, pc}
c0dead62:	bf00      	nop
c0dead64:	030000c4 	.word	0x030000c4

c0dead68 <cx_bn_cmp_u32>:
c0dead68:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dead6a:	ab01      	add	r3, sp, #4
c0dead6c:	c307      	stmia	r3!, {r0, r1, r2}
c0dead6e:	4803      	ldr	r0, [pc, #12]	@ (c0dead7c <cx_bn_cmp_u32+0x14>)
c0dead70:	a901      	add	r1, sp, #4
c0dead72:	f7ff ff29 	bl	c0deabc8 <SVC_cx_call>
c0dead76:	b004      	add	sp, #16
c0dead78:	bd80      	pop	{r7, pc}
c0dead7a:	bf00      	nop
c0dead7c:	030000c5 	.word	0x030000c5

c0dead80 <cx_bn_tst_bit>:
c0dead80:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dead82:	ab01      	add	r3, sp, #4
c0dead84:	c307      	stmia	r3!, {r0, r1, r2}
c0dead86:	4803      	ldr	r0, [pc, #12]	@ (c0dead94 <cx_bn_tst_bit+0x14>)
c0dead88:	a901      	add	r1, sp, #4
c0dead8a:	f7ff ff1d 	bl	c0deabc8 <SVC_cx_call>
c0dead8e:	b004      	add	sp, #16
c0dead90:	bd80      	pop	{r7, pc}
c0dead92:	bf00      	nop
c0dead94:	030000cb 	.word	0x030000cb

c0dead98 <cx_bn_mod_add>:
c0dead98:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0dead9a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0dead9e:	4803      	ldr	r0, [pc, #12]	@ (c0deadac <cx_bn_mod_add+0x14>)
c0deada0:	4669      	mov	r1, sp
c0deada2:	f7ff ff11 	bl	c0deabc8 <SVC_cx_call>
c0deada6:	b004      	add	sp, #16
c0deada8:	bd80      	pop	{r7, pc}
c0deadaa:	bf00      	nop
c0deadac:	040000d3 	.word	0x040000d3

c0deadb0 <cx_bn_mod_sub>:
c0deadb0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deadb2:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0deadb6:	4803      	ldr	r0, [pc, #12]	@ (c0deadc4 <cx_bn_mod_sub+0x14>)
c0deadb8:	4669      	mov	r1, sp
c0deadba:	f7ff ff05 	bl	c0deabc8 <SVC_cx_call>
c0deadbe:	b004      	add	sp, #16
c0deadc0:	bd80      	pop	{r7, pc}
c0deadc2:	bf00      	nop
c0deadc4:	040000d4 	.word	0x040000d4

c0deadc8 <cx_bn_is_prime>:
c0deadc8:	b5e0      	push	{r5, r6, r7, lr}
c0deadca:	e9cd 0100 	strd	r0, r1, [sp]
c0deadce:	4802      	ldr	r0, [pc, #8]	@ (c0deadd8 <cx_bn_is_prime+0x10>)
c0deadd0:	4669      	mov	r1, sp
c0deadd2:	f7ff fef9 	bl	c0deabc8 <SVC_cx_call>
c0deadd6:	bd8c      	pop	{r2, r3, r7, pc}
c0deadd8:	020000ef 	.word	0x020000ef

c0deaddc <cx_mont_alloc>:
c0deaddc:	b5e0      	push	{r5, r6, r7, lr}
c0deadde:	e9cd 0100 	strd	r0, r1, [sp]
c0deade2:	4802      	ldr	r0, [pc, #8]	@ (c0deadec <cx_mont_alloc+0x10>)
c0deade4:	4669      	mov	r1, sp
c0deade6:	f7ff feef 	bl	c0deabc8 <SVC_cx_call>
c0deadea:	bd8c      	pop	{r2, r3, r7, pc}
c0deadec:	020000dc 	.word	0x020000dc

c0deadf0 <cx_mont_init>:
c0deadf0:	b5e0      	push	{r5, r6, r7, lr}
c0deadf2:	e9cd 0100 	strd	r0, r1, [sp]
c0deadf6:	4802      	ldr	r0, [pc, #8]	@ (c0deae00 <cx_mont_init+0x10>)
c0deadf8:	4669      	mov	r1, sp
c0deadfa:	f7ff fee5 	bl	c0deabc8 <SVC_cx_call>
c0deadfe:	bd8c      	pop	{r2, r3, r7, pc}
c0deae00:	020000dd 	.word	0x020000dd

c0deae04 <cx_mont_to_montgomery>:
c0deae04:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deae06:	ab01      	add	r3, sp, #4
c0deae08:	c307      	stmia	r3!, {r0, r1, r2}
c0deae0a:	4803      	ldr	r0, [pc, #12]	@ (c0deae18 <cx_mont_to_montgomery+0x14>)
c0deae0c:	a901      	add	r1, sp, #4
c0deae0e:	f7ff fedb 	bl	c0deabc8 <SVC_cx_call>
c0deae12:	b004      	add	sp, #16
c0deae14:	bd80      	pop	{r7, pc}
c0deae16:	bf00      	nop
c0deae18:	030000df 	.word	0x030000df

c0deae1c <cx_mont_from_montgomery>:
c0deae1c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deae1e:	ab01      	add	r3, sp, #4
c0deae20:	c307      	stmia	r3!, {r0, r1, r2}
c0deae22:	4803      	ldr	r0, [pc, #12]	@ (c0deae30 <cx_mont_from_montgomery+0x14>)
c0deae24:	a901      	add	r1, sp, #4
c0deae26:	f7ff fecf 	bl	c0deabc8 <SVC_cx_call>
c0deae2a:	b004      	add	sp, #16
c0deae2c:	bd80      	pop	{r7, pc}
c0deae2e:	bf00      	nop
c0deae30:	030000e0 	.word	0x030000e0

c0deae34 <cx_mont_mul>:
c0deae34:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deae36:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0deae3a:	4803      	ldr	r0, [pc, #12]	@ (c0deae48 <cx_mont_mul+0x14>)
c0deae3c:	4669      	mov	r1, sp
c0deae3e:	f7ff fec3 	bl	c0deabc8 <SVC_cx_call>
c0deae42:	b004      	add	sp, #16
c0deae44:	bd80      	pop	{r7, pc}
c0deae46:	bf00      	nop
c0deae48:	040000e1 	.word	0x040000e1

c0deae4c <cx_mont_invert_nprime>:
c0deae4c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deae4e:	ab01      	add	r3, sp, #4
c0deae50:	c307      	stmia	r3!, {r0, r1, r2}
c0deae52:	4803      	ldr	r0, [pc, #12]	@ (c0deae60 <cx_mont_invert_nprime+0x14>)
c0deae54:	a901      	add	r1, sp, #4
c0deae56:	f7ff feb7 	bl	c0deabc8 <SVC_cx_call>
c0deae5a:	b004      	add	sp, #16
c0deae5c:	bd80      	pop	{r7, pc}
c0deae5e:	bf00      	nop
c0deae60:	030000e4 	.word	0x030000e4

c0deae64 <cx_ecdomain_parameters_length>:
c0deae64:	b5e0      	push	{r5, r6, r7, lr}
c0deae66:	e9cd 0100 	strd	r0, r1, [sp]
c0deae6a:	4802      	ldr	r0, [pc, #8]	@ (c0deae74 <cx_ecdomain_parameters_length+0x10>)
c0deae6c:	4669      	mov	r1, sp
c0deae6e:	f7ff feab 	bl	c0deabc8 <SVC_cx_call>
c0deae72:	bd8c      	pop	{r2, r3, r7, pc}
c0deae74:	0200012f 	.word	0x0200012f

c0deae78 <os_perso_derive_node_with_seed_key>:
c0deae78:	b510      	push	{r4, lr}
c0deae7a:	b088      	sub	sp, #32
c0deae7c:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0deae7e:	9407      	str	r4, [sp, #28]
c0deae80:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0deae82:	9406      	str	r4, [sp, #24]
c0deae84:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0deae86:	9405      	str	r4, [sp, #20]
c0deae88:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0deae8a:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0deae8e:	4803      	ldr	r0, [pc, #12]	@ (c0deae9c <os_perso_derive_node_with_seed_key+0x24>)
c0deae90:	4669      	mov	r1, sp
c0deae92:	f7ff fe91 	bl	c0deabb8 <SVC_Call>
c0deae96:	b008      	add	sp, #32
c0deae98:	bd10      	pop	{r4, pc}
c0deae9a:	bf00      	nop
c0deae9c:	080000a6 	.word	0x080000a6

c0deaea0 <os_pki_load_certificate>:
c0deaea0:	b510      	push	{r4, lr}
c0deaea2:	b086      	sub	sp, #24
c0deaea4:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0deaea6:	9405      	str	r4, [sp, #20]
c0deaea8:	9c08      	ldr	r4, [sp, #32]
c0deaeaa:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0deaeae:	4803      	ldr	r0, [pc, #12]	@ (c0deaebc <os_pki_load_certificate+0x1c>)
c0deaeb0:	4669      	mov	r1, sp
c0deaeb2:	f7ff fe81 	bl	c0deabb8 <SVC_Call>
c0deaeb6:	b006      	add	sp, #24
c0deaeb8:	bd10      	pop	{r4, pc}
c0deaeba:	bf00      	nop
c0deaebc:	060000aa 	.word	0x060000aa

c0deaec0 <os_perso_is_pin_set>:
c0deaec0:	b5e0      	push	{r5, r6, r7, lr}
c0deaec2:	2000      	movs	r0, #0
c0deaec4:	4669      	mov	r1, sp
c0deaec6:	9001      	str	r0, [sp, #4]
c0deaec8:	209e      	movs	r0, #158	@ 0x9e
c0deaeca:	f7ff fe75 	bl	c0deabb8 <SVC_Call>
c0deaece:	b2c0      	uxtb	r0, r0
c0deaed0:	bd8c      	pop	{r2, r3, r7, pc}

c0deaed2 <os_global_pin_is_validated>:
c0deaed2:	b5e0      	push	{r5, r6, r7, lr}
c0deaed4:	2000      	movs	r0, #0
c0deaed6:	4669      	mov	r1, sp
c0deaed8:	9001      	str	r0, [sp, #4]
c0deaeda:	20a0      	movs	r0, #160	@ 0xa0
c0deaedc:	f7ff fe6c 	bl	c0deabb8 <SVC_Call>
c0deaee0:	b2c0      	uxtb	r0, r0
c0deaee2:	bd8c      	pop	{r2, r3, r7, pc}

c0deaee4 <os_ux>:
c0deaee4:	b5e0      	push	{r5, r6, r7, lr}
c0deaee6:	f000 f869 	bl	c0deafbc <OUTLINED_FUNCTION_0>
c0deaeea:	4802      	ldr	r0, [pc, #8]	@ (c0deaef4 <os_ux+0x10>)
c0deaeec:	4669      	mov	r1, sp
c0deaeee:	f7ff fe63 	bl	c0deabb8 <SVC_Call>
c0deaef2:	bd8c      	pop	{r2, r3, r7, pc}
c0deaef4:	01000064 	.word	0x01000064

c0deaef8 <os_flags>:
c0deaef8:	b5e0      	push	{r5, r6, r7, lr}
c0deaefa:	2000      	movs	r0, #0
c0deaefc:	4669      	mov	r1, sp
c0deaefe:	9001      	str	r0, [sp, #4]
c0deaf00:	206a      	movs	r0, #106	@ 0x6a
c0deaf02:	f7ff fe59 	bl	c0deabb8 <SVC_Call>
c0deaf06:	bd8c      	pop	{r2, r3, r7, pc}

c0deaf08 <os_registry_get_current_app_tag>:
c0deaf08:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deaf0a:	ab01      	add	r3, sp, #4
c0deaf0c:	c307      	stmia	r3!, {r0, r1, r2}
c0deaf0e:	4803      	ldr	r0, [pc, #12]	@ (c0deaf1c <os_registry_get_current_app_tag+0x14>)
c0deaf10:	a901      	add	r1, sp, #4
c0deaf12:	f7ff fe51 	bl	c0deabb8 <SVC_Call>
c0deaf16:	b004      	add	sp, #16
c0deaf18:	bd80      	pop	{r7, pc}
c0deaf1a:	bf00      	nop
c0deaf1c:	03000074 	.word	0x03000074

c0deaf20 <os_sched_exit>:
c0deaf20:	b082      	sub	sp, #8
c0deaf22:	f000 f84b 	bl	c0deafbc <OUTLINED_FUNCTION_0>
c0deaf26:	4802      	ldr	r0, [pc, #8]	@ (c0deaf30 <os_sched_exit+0x10>)
c0deaf28:	4669      	mov	r1, sp
c0deaf2a:	f7ff fe45 	bl	c0deabb8 <SVC_Call>
c0deaf2e:	deff      	udf	#255	@ 0xff
c0deaf30:	0100009a 	.word	0x0100009a

c0deaf34 <io_seph_send>:
c0deaf34:	b5e0      	push	{r5, r6, r7, lr}
c0deaf36:	e9cd 0100 	strd	r0, r1, [sp]
c0deaf3a:	4802      	ldr	r0, [pc, #8]	@ (c0deaf44 <io_seph_send+0x10>)
c0deaf3c:	4669      	mov	r1, sp
c0deaf3e:	f7ff fe3b 	bl	c0deabb8 <SVC_Call>
c0deaf42:	bd8c      	pop	{r2, r3, r7, pc}
c0deaf44:	02000083 	.word	0x02000083

c0deaf48 <io_seph_is_status_sent>:
c0deaf48:	b5e0      	push	{r5, r6, r7, lr}
c0deaf4a:	2000      	movs	r0, #0
c0deaf4c:	4669      	mov	r1, sp
c0deaf4e:	9001      	str	r0, [sp, #4]
c0deaf50:	2084      	movs	r0, #132	@ 0x84
c0deaf52:	f7ff fe31 	bl	c0deabb8 <SVC_Call>
c0deaf56:	bd8c      	pop	{r2, r3, r7, pc}

c0deaf58 <io_seph_recv>:
c0deaf58:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0deaf5a:	ab01      	add	r3, sp, #4
c0deaf5c:	c307      	stmia	r3!, {r0, r1, r2}
c0deaf5e:	4803      	ldr	r0, [pc, #12]	@ (c0deaf6c <io_seph_recv+0x14>)
c0deaf60:	a901      	add	r1, sp, #4
c0deaf62:	f7ff fe29 	bl	c0deabb8 <SVC_Call>
c0deaf66:	b280      	uxth	r0, r0
c0deaf68:	b004      	add	sp, #16
c0deaf6a:	bd80      	pop	{r7, pc}
c0deaf6c:	03000085 	.word	0x03000085

c0deaf70 <try_context_get>:
c0deaf70:	b5e0      	push	{r5, r6, r7, lr}
c0deaf72:	2000      	movs	r0, #0
c0deaf74:	4669      	mov	r1, sp
c0deaf76:	9001      	str	r0, [sp, #4]
c0deaf78:	2087      	movs	r0, #135	@ 0x87
c0deaf7a:	f7ff fe1d 	bl	c0deabb8 <SVC_Call>
c0deaf7e:	bd8c      	pop	{r2, r3, r7, pc}

c0deaf80 <try_context_set>:
c0deaf80:	b5e0      	push	{r5, r6, r7, lr}
c0deaf82:	f000 f81b 	bl	c0deafbc <OUTLINED_FUNCTION_0>
c0deaf86:	4802      	ldr	r0, [pc, #8]	@ (c0deaf90 <try_context_set+0x10>)
c0deaf88:	4669      	mov	r1, sp
c0deaf8a:	f7ff fe15 	bl	c0deabb8 <SVC_Call>
c0deaf8e:	bd8c      	pop	{r2, r3, r7, pc}
c0deaf90:	0100010b 	.word	0x0100010b

c0deaf94 <os_sched_last_status>:
c0deaf94:	b5e0      	push	{r5, r6, r7, lr}
c0deaf96:	f000 f811 	bl	c0deafbc <OUTLINED_FUNCTION_0>
c0deaf9a:	4803      	ldr	r0, [pc, #12]	@ (c0deafa8 <os_sched_last_status+0x14>)
c0deaf9c:	4669      	mov	r1, sp
c0deaf9e:	f7ff fe0b 	bl	c0deabb8 <SVC_Call>
c0deafa2:	b2c0      	uxtb	r0, r0
c0deafa4:	bd8c      	pop	{r2, r3, r7, pc}
c0deafa6:	bf00      	nop
c0deafa8:	0100009c 	.word	0x0100009c

c0deafac <os_sched_current_task>:
c0deafac:	b5e0      	push	{r5, r6, r7, lr}
c0deafae:	2000      	movs	r0, #0
c0deafb0:	4669      	mov	r1, sp
c0deafb2:	9001      	str	r0, [sp, #4]
c0deafb4:	208b      	movs	r0, #139	@ 0x8b
c0deafb6:	f7ff fdff 	bl	c0deabb8 <SVC_Call>
c0deafba:	bd8c      	pop	{r2, r3, r7, pc}

c0deafbc <OUTLINED_FUNCTION_0>:
c0deafbc:	2100      	movs	r1, #0
c0deafbe:	e9cd 0100 	strd	r0, r1, [sp]
c0deafc2:	4770      	bx	lr

c0deafc4 <OUTLINED_FUNCTION_1>:
c0deafc4:	4608      	mov	r0, r1
c0deafc6:	461c      	mov	r4, r3
c0deafc8:	4615      	mov	r5, r2
c0deafca:	f7ff bdd7 	b.w	c0deab7c <pic>
	...

c0deafd0 <__aeabi_llsr>:
c0deafd0:	40d0      	lsrs	r0, r2
c0deafd2:	000b      	movs	r3, r1
c0deafd4:	40d1      	lsrs	r1, r2
c0deafd6:	469c      	mov	ip, r3
c0deafd8:	3a20      	subs	r2, #32
c0deafda:	40d3      	lsrs	r3, r2
c0deafdc:	4318      	orrs	r0, r3
c0deafde:	4252      	negs	r2, r2
c0deafe0:	4663      	mov	r3, ip
c0deafe2:	4093      	lsls	r3, r2
c0deafe4:	4318      	orrs	r0, r3
c0deafe6:	4770      	bx	lr

c0deafe8 <__aeabi_llsl>:
c0deafe8:	4091      	lsls	r1, r2
c0deafea:	0003      	movs	r3, r0
c0deafec:	4090      	lsls	r0, r2
c0deafee:	469c      	mov	ip, r3
c0deaff0:	3a20      	subs	r2, #32
c0deaff2:	4093      	lsls	r3, r2
c0deaff4:	4319      	orrs	r1, r3
c0deaff6:	4252      	negs	r2, r2
c0deaff8:	4663      	mov	r3, ip
c0deaffa:	40d3      	lsrs	r3, r2
c0deaffc:	4319      	orrs	r1, r3
c0deaffe:	4770      	bx	lr

c0deb000 <__aeabi_idiv0>:
c0deb000:	4770      	bx	lr
c0deb002:	bf00      	nop

c0deb004 <__aeabi_uldivmod>:
c0deb004:	b953      	cbnz	r3, c0deb01c <__aeabi_uldivmod+0x18>
c0deb006:	b94a      	cbnz	r2, c0deb01c <__aeabi_uldivmod+0x18>
c0deb008:	2900      	cmp	r1, #0
c0deb00a:	bf08      	it	eq
c0deb00c:	2800      	cmpeq	r0, #0
c0deb00e:	bf1c      	itt	ne
c0deb010:	f04f 31ff 	movne.w	r1, #4294967295	@ 0xffffffff
c0deb014:	f04f 30ff 	movne.w	r0, #4294967295	@ 0xffffffff
c0deb018:	f7ff bff2 	b.w	c0deb000 <__aeabi_idiv0>
c0deb01c:	f1ad 0c08 	sub.w	ip, sp, #8
c0deb020:	e96d ce04 	strd	ip, lr, [sp, #-16]!
c0deb024:	f000 f806 	bl	c0deb034 <__udivmoddi4>
c0deb028:	f8dd e004 	ldr.w	lr, [sp, #4]
c0deb02c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0deb030:	b004      	add	sp, #16
c0deb032:	4770      	bx	lr

c0deb034 <__udivmoddi4>:
c0deb034:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
c0deb038:	9e09      	ldr	r6, [sp, #36]	@ 0x24
c0deb03a:	460d      	mov	r5, r1
c0deb03c:	4604      	mov	r4, r0
c0deb03e:	460f      	mov	r7, r1
c0deb040:	2b00      	cmp	r3, #0
c0deb042:	d147      	bne.n	c0deb0d4 <__udivmoddi4+0xa0>
c0deb044:	428a      	cmp	r2, r1
c0deb046:	4694      	mov	ip, r2
c0deb048:	d95f      	bls.n	c0deb10a <__udivmoddi4+0xd6>
c0deb04a:	fab2 f382 	clz	r3, r2
c0deb04e:	b143      	cbz	r3, c0deb062 <__udivmoddi4+0x2e>
c0deb050:	f1c3 0120 	rsb	r1, r3, #32
c0deb054:	409f      	lsls	r7, r3
c0deb056:	fa02 fc03 	lsl.w	ip, r2, r3
c0deb05a:	409c      	lsls	r4, r3
c0deb05c:	fa20 f101 	lsr.w	r1, r0, r1
c0deb060:	430f      	orrs	r7, r1
c0deb062:	ea4f 451c 	mov.w	r5, ip, lsr #16
c0deb066:	fa1f fe8c 	uxth.w	lr, ip
c0deb06a:	0c22      	lsrs	r2, r4, #16
c0deb06c:	fbb7 f1f5 	udiv	r1, r7, r5
c0deb070:	fb05 7711 	mls	r7, r5, r1, r7
c0deb074:	fb01 f00e 	mul.w	r0, r1, lr
c0deb078:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
c0deb07c:	4290      	cmp	r0, r2
c0deb07e:	d908      	bls.n	c0deb092 <__udivmoddi4+0x5e>
c0deb080:	eb1c 0202 	adds.w	r2, ip, r2
c0deb084:	f101 37ff 	add.w	r7, r1, #4294967295	@ 0xffffffff
c0deb088:	d202      	bcs.n	c0deb090 <__udivmoddi4+0x5c>
c0deb08a:	4290      	cmp	r0, r2
c0deb08c:	f200 8134 	bhi.w	c0deb2f8 <__udivmoddi4+0x2c4>
c0deb090:	4639      	mov	r1, r7
c0deb092:	1a12      	subs	r2, r2, r0
c0deb094:	b2a4      	uxth	r4, r4
c0deb096:	fbb2 f0f5 	udiv	r0, r2, r5
c0deb09a:	fb05 2210 	mls	r2, r5, r0, r2
c0deb09e:	fb00 fe0e 	mul.w	lr, r0, lr
c0deb0a2:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
c0deb0a6:	45a6      	cmp	lr, r4
c0deb0a8:	d908      	bls.n	c0deb0bc <__udivmoddi4+0x88>
c0deb0aa:	eb1c 0404 	adds.w	r4, ip, r4
c0deb0ae:	f100 32ff 	add.w	r2, r0, #4294967295	@ 0xffffffff
c0deb0b2:	d202      	bcs.n	c0deb0ba <__udivmoddi4+0x86>
c0deb0b4:	45a6      	cmp	lr, r4
c0deb0b6:	f200 8119 	bhi.w	c0deb2ec <__udivmoddi4+0x2b8>
c0deb0ba:	4610      	mov	r0, r2
c0deb0bc:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0deb0c0:	eba4 040e 	sub.w	r4, r4, lr
c0deb0c4:	2100      	movs	r1, #0
c0deb0c6:	b11e      	cbz	r6, c0deb0d0 <__udivmoddi4+0x9c>
c0deb0c8:	40dc      	lsrs	r4, r3
c0deb0ca:	2300      	movs	r3, #0
c0deb0cc:	e9c6 4300 	strd	r4, r3, [r6]
c0deb0d0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
c0deb0d4:	428b      	cmp	r3, r1
c0deb0d6:	d908      	bls.n	c0deb0ea <__udivmoddi4+0xb6>
c0deb0d8:	2e00      	cmp	r6, #0
c0deb0da:	f000 80fb 	beq.w	c0deb2d4 <__udivmoddi4+0x2a0>
c0deb0de:	2100      	movs	r1, #0
c0deb0e0:	e9c6 0500 	strd	r0, r5, [r6]
c0deb0e4:	4608      	mov	r0, r1
c0deb0e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
c0deb0ea:	fab3 f183 	clz	r1, r3
c0deb0ee:	2900      	cmp	r1, #0
c0deb0f0:	d14b      	bne.n	c0deb18a <__udivmoddi4+0x156>
c0deb0f2:	42ab      	cmp	r3, r5
c0deb0f4:	f0c0 80f1 	bcc.w	c0deb2da <__udivmoddi4+0x2a6>
c0deb0f8:	4282      	cmp	r2, r0
c0deb0fa:	f240 80ee 	bls.w	c0deb2da <__udivmoddi4+0x2a6>
c0deb0fe:	4608      	mov	r0, r1
c0deb100:	2e00      	cmp	r6, #0
c0deb102:	d0e5      	beq.n	c0deb0d0 <__udivmoddi4+0x9c>
c0deb104:	e9c6 4700 	strd	r4, r7, [r6]
c0deb108:	e7e2      	b.n	c0deb0d0 <__udivmoddi4+0x9c>
c0deb10a:	b902      	cbnz	r2, c0deb10e <__udivmoddi4+0xda>
c0deb10c:	deff      	udf	#255	@ 0xff
c0deb10e:	fab2 f382 	clz	r3, r2
c0deb112:	2b00      	cmp	r3, #0
c0deb114:	f040 809d 	bne.w	c0deb252 <__udivmoddi4+0x21e>
c0deb118:	1a8d      	subs	r5, r1, r2
c0deb11a:	ea4f 4e12 	mov.w	lr, r2, lsr #16
c0deb11e:	b297      	uxth	r7, r2
c0deb120:	2101      	movs	r1, #1
c0deb122:	fbb5 f2fe 	udiv	r2, r5, lr
c0deb126:	fb0e 5012 	mls	r0, lr, r2, r5
c0deb12a:	0c25      	lsrs	r5, r4, #16
c0deb12c:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
c0deb130:	fb07 f002 	mul.w	r0, r7, r2
c0deb134:	42a8      	cmp	r0, r5
c0deb136:	d90f      	bls.n	c0deb158 <__udivmoddi4+0x124>
c0deb138:	eb1c 0505 	adds.w	r5, ip, r5
c0deb13c:	f102 38ff 	add.w	r8, r2, #4294967295	@ 0xffffffff
c0deb140:	bf2c      	ite	cs
c0deb142:	f04f 0901 	movcs.w	r9, #1
c0deb146:	f04f 0900 	movcc.w	r9, #0
c0deb14a:	42a8      	cmp	r0, r5
c0deb14c:	d903      	bls.n	c0deb156 <__udivmoddi4+0x122>
c0deb14e:	f1b9 0f00 	cmp.w	r9, #0
c0deb152:	f000 80ce 	beq.w	c0deb2f2 <__udivmoddi4+0x2be>
c0deb156:	4642      	mov	r2, r8
c0deb158:	1a2d      	subs	r5, r5, r0
c0deb15a:	b2a4      	uxth	r4, r4
c0deb15c:	fbb5 f0fe 	udiv	r0, r5, lr
c0deb160:	fb0e 5510 	mls	r5, lr, r0, r5
c0deb164:	fb00 f707 	mul.w	r7, r0, r7
c0deb168:	ea44 4405 	orr.w	r4, r4, r5, lsl #16
c0deb16c:	42a7      	cmp	r7, r4
c0deb16e:	d908      	bls.n	c0deb182 <__udivmoddi4+0x14e>
c0deb170:	eb1c 0404 	adds.w	r4, ip, r4
c0deb174:	f100 35ff 	add.w	r5, r0, #4294967295	@ 0xffffffff
c0deb178:	d202      	bcs.n	c0deb180 <__udivmoddi4+0x14c>
c0deb17a:	42a7      	cmp	r7, r4
c0deb17c:	f200 80b3 	bhi.w	c0deb2e6 <__udivmoddi4+0x2b2>
c0deb180:	4628      	mov	r0, r5
c0deb182:	1be4      	subs	r4, r4, r7
c0deb184:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0deb188:	e79d      	b.n	c0deb0c6 <__udivmoddi4+0x92>
c0deb18a:	f1c1 0720 	rsb	r7, r1, #32
c0deb18e:	408b      	lsls	r3, r1
c0deb190:	fa05 f401 	lsl.w	r4, r5, r1
c0deb194:	fa22 fc07 	lsr.w	ip, r2, r7
c0deb198:	40fd      	lsrs	r5, r7
c0deb19a:	408a      	lsls	r2, r1
c0deb19c:	ea4c 0c03 	orr.w	ip, ip, r3
c0deb1a0:	fa20 f307 	lsr.w	r3, r0, r7
c0deb1a4:	ea4f 491c 	mov.w	r9, ip, lsr #16
c0deb1a8:	431c      	orrs	r4, r3
c0deb1aa:	fa1f fe8c 	uxth.w	lr, ip
c0deb1ae:	fa00 f301 	lsl.w	r3, r0, r1
c0deb1b2:	0c20      	lsrs	r0, r4, #16
c0deb1b4:	fbb5 f8f9 	udiv	r8, r5, r9
c0deb1b8:	fb09 5518 	mls	r5, r9, r8, r5
c0deb1bc:	ea40 4505 	orr.w	r5, r0, r5, lsl #16
c0deb1c0:	fb08 f00e 	mul.w	r0, r8, lr
c0deb1c4:	42a8      	cmp	r0, r5
c0deb1c6:	d90f      	bls.n	c0deb1e8 <__udivmoddi4+0x1b4>
c0deb1c8:	eb1c 0505 	adds.w	r5, ip, r5
c0deb1cc:	f108 3aff 	add.w	sl, r8, #4294967295	@ 0xffffffff
c0deb1d0:	bf2c      	ite	cs
c0deb1d2:	f04f 0b01 	movcs.w	fp, #1
c0deb1d6:	f04f 0b00 	movcc.w	fp, #0
c0deb1da:	42a8      	cmp	r0, r5
c0deb1dc:	d903      	bls.n	c0deb1e6 <__udivmoddi4+0x1b2>
c0deb1de:	f1bb 0f00 	cmp.w	fp, #0
c0deb1e2:	f000 808c 	beq.w	c0deb2fe <__udivmoddi4+0x2ca>
c0deb1e6:	46d0      	mov	r8, sl
c0deb1e8:	1a2d      	subs	r5, r5, r0
c0deb1ea:	b2a4      	uxth	r4, r4
c0deb1ec:	fbb5 f0f9 	udiv	r0, r5, r9
c0deb1f0:	fb09 5510 	mls	r5, r9, r0, r5
c0deb1f4:	fb00 fe0e 	mul.w	lr, r0, lr
c0deb1f8:	ea44 4505 	orr.w	r5, r4, r5, lsl #16
c0deb1fc:	45ae      	cmp	lr, r5
c0deb1fe:	d907      	bls.n	c0deb210 <__udivmoddi4+0x1dc>
c0deb200:	eb1c 0505 	adds.w	r5, ip, r5
c0deb204:	f100 34ff 	add.w	r4, r0, #4294967295	@ 0xffffffff
c0deb208:	d201      	bcs.n	c0deb20e <__udivmoddi4+0x1da>
c0deb20a:	45ae      	cmp	lr, r5
c0deb20c:	d87e      	bhi.n	c0deb30c <__udivmoddi4+0x2d8>
c0deb20e:	4620      	mov	r0, r4
c0deb210:	ea40 4008 	orr.w	r0, r0, r8, lsl #16
c0deb214:	eba5 050e 	sub.w	r5, r5, lr
c0deb218:	fba0 9802 	umull	r9, r8, r0, r2
c0deb21c:	4545      	cmp	r5, r8
c0deb21e:	464c      	mov	r4, r9
c0deb220:	46c6      	mov	lr, r8
c0deb222:	d302      	bcc.n	c0deb22a <__udivmoddi4+0x1f6>
c0deb224:	d106      	bne.n	c0deb234 <__udivmoddi4+0x200>
c0deb226:	454b      	cmp	r3, r9
c0deb228:	d204      	bcs.n	c0deb234 <__udivmoddi4+0x200>
c0deb22a:	3801      	subs	r0, #1
c0deb22c:	ebb9 0402 	subs.w	r4, r9, r2
c0deb230:	eb68 0e0c 	sbc.w	lr, r8, ip
c0deb234:	2e00      	cmp	r6, #0
c0deb236:	d06f      	beq.n	c0deb318 <__udivmoddi4+0x2e4>
c0deb238:	1b1a      	subs	r2, r3, r4
c0deb23a:	eb65 050e 	sbc.w	r5, r5, lr
c0deb23e:	fa22 f301 	lsr.w	r3, r2, r1
c0deb242:	fa05 f707 	lsl.w	r7, r5, r7
c0deb246:	40cd      	lsrs	r5, r1
c0deb248:	2100      	movs	r1, #0
c0deb24a:	431f      	orrs	r7, r3
c0deb24c:	e9c6 7500 	strd	r7, r5, [r6]
c0deb250:	e73e      	b.n	c0deb0d0 <__udivmoddi4+0x9c>
c0deb252:	fa02 fc03 	lsl.w	ip, r2, r3
c0deb256:	f1c3 0020 	rsb	r0, r3, #32
c0deb25a:	fa01 f203 	lsl.w	r2, r1, r3
c0deb25e:	ea4f 4e1c 	mov.w	lr, ip, lsr #16
c0deb262:	40c1      	lsrs	r1, r0
c0deb264:	fa24 f500 	lsr.w	r5, r4, r0
c0deb268:	fa1f f78c 	uxth.w	r7, ip
c0deb26c:	409c      	lsls	r4, r3
c0deb26e:	4315      	orrs	r5, r2
c0deb270:	fbb1 f0fe 	udiv	r0, r1, lr
c0deb274:	0c2a      	lsrs	r2, r5, #16
c0deb276:	fb0e 1110 	mls	r1, lr, r0, r1
c0deb27a:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
c0deb27e:	fb00 f107 	mul.w	r1, r0, r7
c0deb282:	4291      	cmp	r1, r2
c0deb284:	d90e      	bls.n	c0deb2a4 <__udivmoddi4+0x270>
c0deb286:	eb1c 0202 	adds.w	r2, ip, r2
c0deb28a:	f100 38ff 	add.w	r8, r0, #4294967295	@ 0xffffffff
c0deb28e:	bf2c      	ite	cs
c0deb290:	f04f 0901 	movcs.w	r9, #1
c0deb294:	f04f 0900 	movcc.w	r9, #0
c0deb298:	4291      	cmp	r1, r2
c0deb29a:	d902      	bls.n	c0deb2a2 <__udivmoddi4+0x26e>
c0deb29c:	f1b9 0f00 	cmp.w	r9, #0
c0deb2a0:	d031      	beq.n	c0deb306 <__udivmoddi4+0x2d2>
c0deb2a2:	4640      	mov	r0, r8
c0deb2a4:	1a52      	subs	r2, r2, r1
c0deb2a6:	b2ad      	uxth	r5, r5
c0deb2a8:	fbb2 f1fe 	udiv	r1, r2, lr
c0deb2ac:	fb0e 2211 	mls	r2, lr, r1, r2
c0deb2b0:	ea45 4502 	orr.w	r5, r5, r2, lsl #16
c0deb2b4:	fb01 f207 	mul.w	r2, r1, r7
c0deb2b8:	42aa      	cmp	r2, r5
c0deb2ba:	d907      	bls.n	c0deb2cc <__udivmoddi4+0x298>
c0deb2bc:	eb1c 0505 	adds.w	r5, ip, r5
c0deb2c0:	f101 38ff 	add.w	r8, r1, #4294967295	@ 0xffffffff
c0deb2c4:	d201      	bcs.n	c0deb2ca <__udivmoddi4+0x296>
c0deb2c6:	42aa      	cmp	r2, r5
c0deb2c8:	d823      	bhi.n	c0deb312 <__udivmoddi4+0x2de>
c0deb2ca:	4641      	mov	r1, r8
c0deb2cc:	1aad      	subs	r5, r5, r2
c0deb2ce:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
c0deb2d2:	e726      	b.n	c0deb122 <__udivmoddi4+0xee>
c0deb2d4:	4631      	mov	r1, r6
c0deb2d6:	4630      	mov	r0, r6
c0deb2d8:	e6fa      	b.n	c0deb0d0 <__udivmoddi4+0x9c>
c0deb2da:	1a84      	subs	r4, r0, r2
c0deb2dc:	eb65 0303 	sbc.w	r3, r5, r3
c0deb2e0:	2001      	movs	r0, #1
c0deb2e2:	461f      	mov	r7, r3
c0deb2e4:	e70c      	b.n	c0deb100 <__udivmoddi4+0xcc>
c0deb2e6:	4464      	add	r4, ip
c0deb2e8:	3802      	subs	r0, #2
c0deb2ea:	e74a      	b.n	c0deb182 <__udivmoddi4+0x14e>
c0deb2ec:	4464      	add	r4, ip
c0deb2ee:	3802      	subs	r0, #2
c0deb2f0:	e6e4      	b.n	c0deb0bc <__udivmoddi4+0x88>
c0deb2f2:	3a02      	subs	r2, #2
c0deb2f4:	4465      	add	r5, ip
c0deb2f6:	e72f      	b.n	c0deb158 <__udivmoddi4+0x124>
c0deb2f8:	3902      	subs	r1, #2
c0deb2fa:	4462      	add	r2, ip
c0deb2fc:	e6c9      	b.n	c0deb092 <__udivmoddi4+0x5e>
c0deb2fe:	f1a8 0802 	sub.w	r8, r8, #2
c0deb302:	4465      	add	r5, ip
c0deb304:	e770      	b.n	c0deb1e8 <__udivmoddi4+0x1b4>
c0deb306:	3802      	subs	r0, #2
c0deb308:	4462      	add	r2, ip
c0deb30a:	e7cb      	b.n	c0deb2a4 <__udivmoddi4+0x270>
c0deb30c:	3802      	subs	r0, #2
c0deb30e:	4465      	add	r5, ip
c0deb310:	e77e      	b.n	c0deb210 <__udivmoddi4+0x1dc>
c0deb312:	3902      	subs	r1, #2
c0deb314:	4465      	add	r5, ip
c0deb316:	e7d9      	b.n	c0deb2cc <__udivmoddi4+0x298>
c0deb318:	4631      	mov	r1, r6
c0deb31a:	e6d9      	b.n	c0deb0d0 <__udivmoddi4+0x9c>

c0deb31c <__aeabi_memclr>:
c0deb31c:	2200      	movs	r2, #0
c0deb31e:	f000 b804 	b.w	c0deb32a <__aeabi_memset>

c0deb322 <__aeabi_memcpy>:
c0deb322:	f000 b80d 	b.w	c0deb340 <memcpy>

c0deb326 <__aeabi_memmove>:
c0deb326:	f000 b818 	b.w	c0deb35a <memmove>

c0deb32a <__aeabi_memset>:
c0deb32a:	4613      	mov	r3, r2
c0deb32c:	460a      	mov	r2, r1
c0deb32e:	4619      	mov	r1, r3
c0deb330:	f000 b82d 	b.w	c0deb38e <memset>

c0deb334 <explicit_bzero>:
c0deb334:	f000 b800 	b.w	c0deb338 <bzero>

c0deb338 <bzero>:
c0deb338:	460a      	mov	r2, r1
c0deb33a:	2100      	movs	r1, #0
c0deb33c:	f000 b827 	b.w	c0deb38e <memset>

c0deb340 <memcpy>:
c0deb340:	440a      	add	r2, r1
c0deb342:	1e43      	subs	r3, r0, #1
c0deb344:	4291      	cmp	r1, r2
c0deb346:	d100      	bne.n	c0deb34a <memcpy+0xa>
c0deb348:	4770      	bx	lr
c0deb34a:	b510      	push	{r4, lr}
c0deb34c:	f811 4b01 	ldrb.w	r4, [r1], #1
c0deb350:	4291      	cmp	r1, r2
c0deb352:	f803 4f01 	strb.w	r4, [r3, #1]!
c0deb356:	d1f9      	bne.n	c0deb34c <memcpy+0xc>
c0deb358:	bd10      	pop	{r4, pc}

c0deb35a <memmove>:
c0deb35a:	4288      	cmp	r0, r1
c0deb35c:	b510      	push	{r4, lr}
c0deb35e:	eb01 0402 	add.w	r4, r1, r2
c0deb362:	d902      	bls.n	c0deb36a <memmove+0x10>
c0deb364:	4284      	cmp	r4, r0
c0deb366:	4623      	mov	r3, r4
c0deb368:	d807      	bhi.n	c0deb37a <memmove+0x20>
c0deb36a:	1e43      	subs	r3, r0, #1
c0deb36c:	42a1      	cmp	r1, r4
c0deb36e:	d008      	beq.n	c0deb382 <memmove+0x28>
c0deb370:	f811 2b01 	ldrb.w	r2, [r1], #1
c0deb374:	f803 2f01 	strb.w	r2, [r3, #1]!
c0deb378:	e7f8      	b.n	c0deb36c <memmove+0x12>
c0deb37a:	4402      	add	r2, r0
c0deb37c:	4601      	mov	r1, r0
c0deb37e:	428a      	cmp	r2, r1
c0deb380:	d100      	bne.n	c0deb384 <memmove+0x2a>
c0deb382:	bd10      	pop	{r4, pc}
c0deb384:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0deb388:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0deb38c:	e7f7      	b.n	c0deb37e <memmove+0x24>

c0deb38e <memset>:
c0deb38e:	4402      	add	r2, r0
c0deb390:	4603      	mov	r3, r0
c0deb392:	4293      	cmp	r3, r2
c0deb394:	d100      	bne.n	c0deb398 <memset+0xa>
c0deb396:	4770      	bx	lr
c0deb398:	f803 1b01 	strb.w	r1, [r3], #1
c0deb39c:	e7f9      	b.n	c0deb392 <memset+0x4>
	...

c0deb3a0 <setjmp>:
c0deb3a0:	46ec      	mov	ip, sp
c0deb3a2:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0deb3a6:	f04f 0000 	mov.w	r0, #0
c0deb3aa:	4770      	bx	lr

c0deb3ac <longjmp>:
c0deb3ac:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0deb3b0:	46e5      	mov	sp, ip
c0deb3b2:	0008      	movs	r0, r1
c0deb3b4:	bf08      	it	eq
c0deb3b6:	2001      	moveq	r0, #1
c0deb3b8:	4770      	bx	lr
c0deb3ba:	bf00      	nop

c0deb3bc <strcmp>:
c0deb3bc:	f810 2b01 	ldrb.w	r2, [r0], #1
c0deb3c0:	f811 3b01 	ldrb.w	r3, [r1], #1
c0deb3c4:	2a01      	cmp	r2, #1
c0deb3c6:	bf28      	it	cs
c0deb3c8:	429a      	cmpcs	r2, r3
c0deb3ca:	d0f7      	beq.n	c0deb3bc <strcmp>
c0deb3cc:	1ad0      	subs	r0, r2, r3
c0deb3ce:	4770      	bx	lr

c0deb3d0 <strlen>:
c0deb3d0:	4603      	mov	r3, r0
c0deb3d2:	f813 2b01 	ldrb.w	r2, [r3], #1
c0deb3d6:	2a00      	cmp	r2, #0
c0deb3d8:	d1fb      	bne.n	c0deb3d2 <strlen+0x2>
c0deb3da:	1a18      	subs	r0, r3, r0
c0deb3dc:	3801      	subs	r0, #1
c0deb3de:	4770      	bx	lr

c0deb3e0 <strncpy>:
c0deb3e0:	3901      	subs	r1, #1
c0deb3e2:	4603      	mov	r3, r0
c0deb3e4:	b510      	push	{r4, lr}
c0deb3e6:	b132      	cbz	r2, c0deb3f6 <strncpy+0x16>
c0deb3e8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0deb3ec:	3a01      	subs	r2, #1
c0deb3ee:	f803 4b01 	strb.w	r4, [r3], #1
c0deb3f2:	2c00      	cmp	r4, #0
c0deb3f4:	d1f7      	bne.n	c0deb3e6 <strncpy+0x6>
c0deb3f6:	441a      	add	r2, r3
c0deb3f8:	2100      	movs	r1, #0
c0deb3fa:	4293      	cmp	r3, r2
c0deb3fc:	d100      	bne.n	c0deb400 <strncpy+0x20>
c0deb3fe:	bd10      	pop	{r4, pc}
c0deb400:	f803 1b01 	strb.w	r1, [r3], #1
c0deb404:	e7f9      	b.n	c0deb3fa <strncpy+0x1a>

c0deb406 <C_home_boilerplate_14px_bitmap>:
c0deb406:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0deb416:	fc7b df0f 7ffe 7ff8                          {........

c0deb41f <C_home_boilerplate_14px>:
c0deb41f:	000e 000e 0000 b406 c0de                    ..........

c0deb429 <C_Information_circle_14px_bitmap>:
c0deb429:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0deb439:	e7ff 8fff 1ffc 1ee0                          .........

c0deb442 <C_Information_circle_14px>:
c0deb442:	000e 000e 0000 b429 c0de                    ......)...

c0deb44c <C_Quit_14px_bitmap>:
c0deb44c:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0deb45c:	6680 9801 7f06 fff9                          .f.......

c0deb465 <C_Quit_14px>:
c0deb465:	000e 000e 0000 b44c c0de                    ......L...

c0deb46f <C_Switch_Off_8px_bitmap>:
c0deb46f:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0deb47b <C_Switch_Off_8px>:
c0deb47b:	000c 0008 0000 b46f c0de                    ......o...

c0deb485 <C_Switch_On_8px_bitmap>:
c0deb485:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0deb491 <C_Switch_On_8px>:
c0deb491:	000c 0008 0000 b485 c0de                    ..........

c0deb49b <C_icon_back_x_bitmap>:
c0deb49b:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0deb4ab:	003f 0078 00c0 0000                          ?.x......

c0deb4b4 <C_icon_back_x>:
c0deb4b4:	000e 000e 0000 b49b c0de                    ..........

c0deb4be <C_icon_coggle_bitmap>:
c0deb4be:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0deb4ce:	807f 00b4 00c0 0000                          .........

c0deb4d7 <C_icon_coggle>:
c0deb4d7:	000e 000e 0000 b4be c0de                    ..........

c0deb4e1 <C_icon_crossmark_bitmap>:
c0deb4e1:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0deb4f1:	8373 1c87 600e 0018                          s....`...

c0deb4fa <C_icon_crossmark>:
c0deb4fa:	000e 000e 0000 b4e1 c0de                    ..........

c0deb504 <C_icon_down_bitmap>:
c0deb504:	2184 8024                                   .!$.

c0deb508 <C_icon_down>:
c0deb508:	0007 0004 0000 b504 c0de                    ..........

c0deb512 <C_icon_left_bitmap>:
c0deb512:	8882 80a0                                   ....

c0deb516 <C_icon_left>:
c0deb516:	0004 0007 0000 b512 c0de                    ..........

c0deb520 <C_icon_right_bitmap>:
c0deb520:	5110 1014                                   .Q..

c0deb524 <C_icon_right>:
c0deb524:	0004 0007 0000 b520 c0de                    ...... ...

c0deb52e <C_icon_up_bitmap>:
c0deb52e:	4812 1042                                   .HB.

c0deb532 <C_icon_up>:
c0deb532:	0007 0004 0000 b52e c0de                    ..........

c0deb53c <C_icon_validate_14_bitmap>:
c0deb53c:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0deb54c:	a3b3 a3a3 f0b2                               ......P

c0deb553 <C_icon_validate_14>:
c0deb553:	000e 000e 0100 b53c c0de                    ......<...

c0deb55d <C_icon_warning_bitmap>:
c0deb55d:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0deb56d:	e01f 801f 001e 0018                          .........

c0deb576 <C_icon_warning>:
c0deb576:	000e 000e 0000 b55d c0de                    ......]...

c0deb580 <C_app_boilerplate_14px_bitmap>:
c0deb580:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0deb590:	0384 00f0 0000 0000                          .........

c0deb599 <C_app_boilerplate_14px>:
c0deb599:	000e 000e 0000 b580 c0de 7544 6d6d 2079     ..........Dummy 
c0deb5a9:	0032 6552 6976 7765 7420 6172 736e 6361     2.Review transac
c0deb5b9:	6974 6e6f 740a 206f 6573 646e 4220 4c4f     tion.to send BOL
c0deb5c9:	2500 2073 2528 2f64 6425 0029 704f 7265     .%s (%d/%d).Oper
c0deb5d9:	7461 6f69 206e 6973 6e67 6465 4200 696c     ation signed.Bli
c0deb5e9:	646e 732d 6769 006e 2e30 2e30 0031 704f     nd-sign.0.0.1.Op
c0deb5f9:	7265 7461 6f69 206e 6572 656a 7463 6465     eration rejected
c0deb609:	5000 6572 7373 7220 6769 7468 6220 7475     .Press right but
c0deb619:	6f74 206e 6f74 6320 6e6f 6974 756e 2065     ton to continue 
c0deb629:	656d 7373 6761 2065 726f 0820 7270 7365     message or .pres
c0deb639:	2073 6f62 6874 7420 206f 6b73 7069 0008     s both to skip..
c0deb649:	6d41 756f 746e 4100 6464 6572 7373 7620     Amount.Address v
c0deb659:	7265 6669 6569 0064 7241 2065 6f79 2075     erified.Are you 
c0deb669:	7573 6572 7420 0a6f 6c61 6f6c 2077 7564     sure to.allow du
c0deb679:	6d6d 2079 0a32 6e69 7420 6172 736e 6361     mmy 2.in transac
c0deb689:	6974 6e6f 3f73 5400 6172 736e 6361 6974     tions?.Transacti
c0deb699:	6e6f 7320 6769 656e 0064 6f54 6120 6363     on signed.To acc
c0deb6a9:	7065 2074 6972 6b73 202c 7270 7365 2073     ept risk, press 
c0deb6b9:	6f62 6874 6220 7475 6f74 736e 4400 7665     both buttons.Dev
c0deb6c9:	6c65 706f 7265 4500 616e 6c62 6465 4100     eloper.Enabled.A
c0deb6d9:	6c6c 776f 6420 6d75 796d 3120 690a 206e     llow dummy 1.in 
c0deb6e9:	7274 6e61 6173 7463 6f69 736e 5300 6769     transactions.Sig
c0deb6f9:	206e 656d 7373 6761 0065 654d 7373 6761     n message.Messag
c0deb709:	2065 6973 6e67 6465 5300 6769 206e 7274     e signed.Sign tr
c0deb719:	6e61 6173 7463 6f69 006e 6552 656a 7463     ansaction.Reject
c0deb729:	7420 6172 736e 6361 6974 6e6f 4c00 6465      transaction.Led
c0deb739:	6567 0072 6341 6563 7470 7220 7369 206b     ger.Accept risk 
c0deb749:	6e61 2064 6973 6e67 6d20 7365 6173 6567     and sign message
c0deb759:	4100 6c6c 776f 6420 6d75 796d 3220 690a     .Allow dummy 2.i
c0deb769:	206e 7274 6e61 6173 7463 6f69 736e 5600     n transactions.V
c0deb779:	7265 6973 6e6f 4300 6e61 6563 006c 2e20     ersion.Cancel. .
c0deb789:	2e2e 0020 6441 7264 7365 2073 6576 6972     .. .Address veri
c0deb799:	6966 6163 6974 6e6f 6320 6e61 6563 6c6c     fication cancell
c0deb7a9:	6465 4400 7369 6261 656c 0064 7041 2070     ed.Disabled.App 
c0deb7b9:	6573 7474 6e69 7367 4100 6363 7065 2074     settings.Accept 
c0deb7c9:	6972 6b73 6120 646e 7320 6769 206e 7274     risk and sign tr
c0deb7d9:	6e61 6173 7463 6f69 006e 2e2e 002e 6c42     ansaction.....Bl
c0deb7e9:	6e69 2064 6973 6e67 6e69 2067 6861 6165     ind signing ahea
c0deb7f9:	0064 6341 6563 7470 7220 7369 206b 6e61     d.Accept risk an
c0deb809:	2064 6973 6e67 6f20 6570 6172 6974 6e6f     d sign operation
c0deb819:	4d00 7365 6173 6567 7220 6a65 6365 6574     .Message rejecte
c0deb829:	0064 3130 3332 3534 3736 3938 4241 4443     d.0123456789ABCD
c0deb839:	4645 4200 4c4f 2520 2a2e 0073 6441 7264     EF.BOL %.*s.Addr
c0deb849:	7365 0073 6142 6b63 4400 6d75 796d 3120     ess.Back.Dummy 1
c0deb859:	4900 7520 646e 7265 7473 6e61 2c64 6320     .I understand, c
c0deb869:	6e6f 6966 6d72 5400 6172 736e 6361 6974     onfirm.Transacti
c0deb879:	6e6f 7220 6a65 6365 6574 0064 7041 2070     on rejected.App 
c0deb889:	6e69 6f66 5300 6769 206e 706f 7265 7461     info.Sign operat
c0deb899:	6f69 006e 2e2e 5200 6a65 6365 2074 656d     ion....Reject me
c0deb8a9:	7373 6761 0065 6552 656a 7463 6f20 6570     ssage.Reject ope
c0deb8b9:	6172 6974 6e6f 5600 7265 6669 2079 4f42     ration.Verify BO
c0deb8c9:	204c 6461 7264 7365 0073 4b5a 4f4e 4858     L address.ZKNOXH
c0deb8d9:	0057 7061 2070 7369 7220 6165 7964 5100     W.app is ready.Q
c0deb8e9:	6975 2074 7061 0070 6f43 666e 7269 006d     uit app.Confirm.
c0deb8f9:	0000 7300 a7ed 2953 7d9d 3348 d839 0908     ...s..S).}H39...
c0deb909:	d8a1 5305 a4bd ff02 5bfe fffe ffff 00ff     ...S.....[......
c0deb919:	0000 0501 98ce 1bc6 f405 e27f e9ea 42a5     ...............B
c0deb929:	99bd b2f6 82e7 2346 4016 45b5 fe95 d5bf     ......F#.@.E....
c0deb939:	b81e 1c53 eec6 1338 1c9c 0211 5323 8c7a     ..S...8.....#Sz.
c0deb949:	9de7 7e06 cc58 6710 fbc6 d8b7 a1b3 8db0     ...~X..g........
c0deb959:	8ffc 2708 bc4d d1e8 7951 9b96 d4c0 a79f     ...'M...Qy......
c0deb969:	bd25 9ddf 55e5 bae0 696a 6a3c 52db 9efc     %....U..ji<j.R..
c0deb979:	a8e7 1c2c 69fb cad4 5f67 0c52 76ce 0202     ..,..i..g_R..v..
c0deb989:	7668 ff00 878f 7400 0419 7471 06fd 28b5     hv.....t..qt...(
c0deb999:	e776 06e1 890c 5cce 3426 3705 080a d0b6     v......\&4.7....
c0deb9a9:	2b30 ab0b ed3e 39b8 ee20 670a 9772 39dc     0+..>..9 ..gr..9
c0deb9b9:	2621 70f1 89a5 644a 5444 d038 ac15 ba32     !&.p..JdDT8...2.
c0deb9c9:	0f36 2c09 44de b1ba c21f d4b7 c0b5 16d2     6..,.D..........
c0deb9d9:	8c22 a3ce c03b a0a7 138c d4c0 17c1 dd4d     "...;.........M.
c0deb9e9:	6a88 4cac 6656 f4e1 1f83 6c00 1995 6bd3     .j.LVf.....l...k
c0deb9f9:	e82c 0082 0000 0000 0000 0000 0000 0000     ,...............
	...
c0deba19:	9202 63fc c189 3326 67c2 c6cb 3b6e 6bf8     ...c..&3.g..n;.k
c0deba29:	b6e3 cbd8 6766 7771 4fe5 b392 f269 18f5     ....fgqw.O..i...
c0deba39:	588d 73e7 a7ed 2953 7d9d 3348 d839 0908     .X.s..S).}H39...
c0deba49:	d8a1 5305 a4bd ff02 5bfe fffe ffff fffe     ...S.....[......
c0deba59:	ffff 00fc 0000 0000 0000 0000 0000 0000     ................
	...
c0deba79:	9202 30f8 4e64 e172 a031 b829 4550 81b6     ...0dNr.1.).PE..
c0deba89:	5881 285d e833 7948 70b9 4391 f5e1 f093     .X](3.Hy.p.C....
c0deba99:	0000                                         ...

c0deba9c <handler_cmd_verify_dilithium.sig>:
c0deba9c:	6193 b128 b2a6 c9f2 9a4b 7ee4 4896 d274     .a(.....K..~.Ht.
c0debaac:	9592 59da 1be5 29ef 8b95 55f8 26d9 af6d     ...Y...)...U.&m.
c0debabc:	2425 e843 c1a1 f5cd badc 27aa a1db bf64     %$C........'..d.
c0debacc:	6d79 a5ac 1d33 009a 18e5 4002 3ecb b67a     ym..3......@.>z.
c0debadc:	2569 3e5c 2fe1 81dd 868f a3fd 6914 e0e8     i%\>./.......i..
c0debaec:	df2d 0573 dc39 ddd3 1fc5 6442 1648 ef86     -.s.9.....BdH...
c0debafc:	f283 c300 077b 1f7b 4610 28ed 694b 6818     ....{.{..F.(Ki.h
c0debb0c:	c39e 454e ea20 db7d 4315 fe5c b291 a47f     ..NE .}..C\.....
c0debb1c:	fb91 5e8f 2c01 3a19 364f fedd 4558 a9db     ...^.,.:O6..XE..
c0debb2c:	3f4b dd84 e2da ea56 2d53 0e29 5d8f 3823     K?....V.S-)..]#8
c0debb3c:	e6a8 371c 0f4f 90aa 4fe6 cca9 7d0a b976     ...7O....O...}v.
c0debb4c:	ed6c 46be 2679 7d6b 7d53 07e3 2b95 e42c     l..Fy&k}S}...+,.
c0debb5c:	7061 60cf ab4c 2add 2046 af90 2803 32dd     ap.`L..*F ...(.2
c0debb6c:	f998 f506 5bc4 0a97 961f f2d7 bbc5 5aa0     .....[.........Z
c0debb7c:	d546 d49d f992 5905 749b e49b 7a8b 6fbd     F......Y.t...z.o
c0debb8c:	34cc bae3 74ac 7391 4ff7 1a93 59d8 5b23     .4...t.s.O...Y#[
c0debb9c:	4e01 bc5f 5030 3d13 8cfb 8486 ee78 5116     .N_.0P.=....x..Q
c0debbac:	55f2 1291 fc05 eead 5f18 3653 6f1d e98b     .U......._S6.o..
c0debbbc:	31ae cf90 313d 252e 8d8f 6235 b8e3 cb93     .1..=1.%..5b....
c0debbcc:	19f9 48e4 69e7 f329 85c7 3a96 57b0 002f     ...H.i)....:.W/.
c0debbdc:	e050 f38b ab81 1c21 cb78 43ec 811a b1e6     P.....!.x..C....
c0debbec:	9f07 07ca f452 6d94 1448 e297 3f00 9507     ....R..mH....?..
c0debbfc:	1a47 98f9 2cb0 f817 d14f 5d5f 9873 aa15     G....,..O._]s...
c0debc0c:	5dfb ae6d 3b65 c833 835b 2ca8 98b5 7906     .]m.e;3.[..,...y
c0debc1c:	b571 b358 12bb 5f9b b015 4180 e145 2b65     q.X...._...AE.e+
c0debc2c:	ea61 ea65 37e8 ab75 fec1 a358 6b36 f83e     a.e..7u...X.6k>.
c0debc3c:	f8db bbb4 f57d 0fe6 745d a532 dcdf 8690     ....}...]t2.....
c0debc4c:	b217 71fa 7848 146e 85bb 341e 7d95 4190     ...qHxn....4.}.A
c0debc5c:	e2be faac 55b4 8892 9936 64d0 58cc 0383     .....U..6..d.X..
c0debc6c:	9204 291e 0304 1f30 fad8 f66e d5f2 7f6f     ...)..0...n...o.
c0debc7c:	3b52 ca90 41b9 f55e ef0c aa1e 3e75 98bc     R;...A^.....u>..
c0debc8c:	749f 8391 0c9f 9dbe 0ff3 8cfc b65f e18e     .t.........._...
c0debc9c:	4a62 6072 d27f 9af9 a434 c6c6 eb02 0042     bJr`....4.....B.
c0debcac:	403c 83a6 36c3 fbf8 b30d bd78 01b6 2d67     <@...6....x...g-
c0debcbc:	0ee9 2092 2cd8 4817 5a26 e648 8d9a a192     ... .,.H&ZH.....
c0debccc:	5bc4 f31d 2cee deeb ef1c cfe7 2566 7e7f     .[...,......f%.~
c0debcdc:	ad82 d4ff 4b6a 9e9f 4856 6301 4aa6 9ea6     ....jK..VH.c.J..
c0debcec:	7ca0 93e7 08be f9ac 0ba4 59a9 cb9f 19df     .|.........Y....
c0debcfc:	6c1c d1a7 c1b0 0a10 fc11 a572 948d e0f7     .l........r.....
c0debd0c:	0bd4 dfcd c753 3105 701e d8b5 d9a8 951a     ....S..1.p......
c0debd1c:	154f 6fcb 2787 ee3a eadc 4175 49ad db69     O..o.':...uA.Ii.
c0debd2c:	df94 d71c 827f 9b84 eabb 064d 85ad 5461     ..........M...aT
c0debd3c:	057d 6271 a419 fccf 755c 819c d1ed 04cc     }.qb....\u......
c0debd4c:	5439 3156 a2c1 074d b296 29d9 16b9 d5f4     9TV1..M....)....
c0debd5c:	a443 38ff 6670 38e9 208b 7127 aa41 a76f     C..8pf.8. 'qA.o.
c0debd6c:	f413 9f5d 8897 edf5 9722 0e01 f915 468d     ..]....."......F
c0debd7c:	6e66 d1ef d73e be07 debe 9347 9d23 52df     fn..>.....G.#..R
c0debd8c:	37be 6705 db1d 47cd a661 4864 847e 593c     .7.g...Ga.dH~.<Y
c0debd9c:	99ac 7676 1d66 78ae ee05 85fd 12b8 d181     ..vvf..x........
c0debdac:	11ed f771 8111 fa3b 9931 6e0d cd4d a811     ..q...;.1..nM...
c0debdbc:	0f92 81e6 e0ff c365 b563 b4bf 4616 c54a     ......e.c....FJ.
c0debdcc:	5822 8994 8dd7 eff4 95f0 66e8 c9a9 12b7     "X.........f....
c0debddc:	a7d4 495d 15c8 93e9 db31 35ca 33b7 d019     ..]I....1..5.3..
c0debdec:	1bc3 ce8c 913d 4c9e d2b5 280f 1618 8f32     ....=..L...(..2.
c0debdfc:	7715 1dd3 6e18 75f5 cfe6 ec0a 5502 c85c     .w...n.u.....U\.
c0debe0c:	b370 2d30 a23f 03df 0c3b 60f6 b1dd 5ecf     p.0-?...;..`...^
c0debe1c:	38da 89b4 30ed 89fc 26c9 3494 4ab6 de0b     .8...0...&.4.J..
c0debe2c:	590b 1c65 94f6 12ac 1165 da50 420e 018d     .Ye.....e.P..B..
c0debe3c:	5ef4 d262 3b80 bbd6 d7ef 8066 c599 c4f8     .^b..;....f.....
c0debe4c:	65aa 20c0 cf86 fc24 91c9 07e4 3a1a 6cec     .e. ..$......:.l
c0debe5c:	8787 aa6f 033f ee54 7645 96b6 08bc eecf     ..o.?.T.Ev......
c0debe6c:	29ef 2607 2e6c 0590 2b97 0fff 49f2 2d87     .).&l....+...I.-
c0debe7c:	606b a11d ff02 e4c8 927b e3a0 ac84 f695     k`......{.......
c0debe8c:	4ec5 aba6 960a c26b 51a6 a5ac e920 fbba     .N....k..Q.. ...
c0debe9c:	b66b 8502 3c1c 0c50 66c0 0062 8d53 5c61     k....<P..fb.S.a\
c0debeac:	2de7 a8ef 2202 ebd6 25bf fe39 6bbd a978     .-..."...%9..kx.
c0debebc:	f4d1 7bbf cf6a 9233 55e5 2f1d d976 c956     ...{j.3..U./v.V.
c0debecc:	1445 18ae c006 a110 b11f 82f6 de41 24f4     E...........A..$
c0debedc:	33e6 ae85 46b1 703d 81f6 b34f ab6d e013     .3...F=p..O.m...
c0debeec:	fb77 84b2 927d d346 e751 f7b6 63b1 5e8e     w...}.F.Q....c.^
c0debefc:	8605 3e12 a1e7 ac74 ab29 eb69 f033 c2a7     ...>..t.).i.3...
c0debf0c:	208a 48f1 76b1 5513 b1f1 53be 9f78 bf46     . .H.v.U...Sx.F.
c0debf1c:	62f6 8901 ff95 9fad 8e87 7c56 318d 02f2     .b........V|.1..
c0debf2c:	265a 4f39 eae9 f1ad bd9e 30b6 1712 931f     Z&9O.......0....
c0debf3c:	d19c 897e 85ee 1370 7ed5 9b91 6d0d 4a77     ..~...p..~...mwJ
c0debf4c:	2542 9544 8796 344b ff23 3c22 fdc5 1912     B%D...K4#."<....
c0debf5c:	b7f9 8228 15aa 7bc8 7b9f 1dbf e790 93e9     ..(....{.{......
c0debf6c:	e263 8083 7602 630c 86bd 8997 073b 62b7     c....v.c....;..b
c0debf7c:	3107 2633 10f5 6133 0987 ce50 f71f 4af3     .13&..3a..P....J
c0debf8c:	2922 e325 96d0 64a2 3503 3669 8f95 1bce     ")%....d.5i6....
c0debf9c:	6ede a80d d0fa 9d41 80c5 4680 bc47 1ff7     .n....A....FG...
c0debfac:	01e9 5c8f 48e3 0417 5ca4 479f 7fae cc19     ...\.H...\.G....
c0debfbc:	3205 43a5 f783 dc00 e1ef a83a ccd7 f47f     .2.C......:.....
c0debfcc:	5d58 18a3 8c32 e723 7e29 2ded 0a60 7a8a     X]..2.#.)~.-`..z
c0debfdc:	9fef 5134 4caa 1853 6aeb 4531 0af7 0d1b     ..4Q.LS..j1E....
c0debfec:	6391 63c7 d3af 462e 4887 d0ca 5e2e 7a1c     .c.c...F.H...^.z
c0debffc:	2675 fd69 29ed 5dd3 06fb d43f d2db 0502     u&i..).]..?.....
c0dec00c:	ad21 1cbb 1a20 238a c229 28ac 973d 0a15     !... ..#)..(=...
c0dec01c:	96c2 fe60 7268 0e64 96d7 56eb be4b 2aa1     ..`.hrd....VK..*
c0dec02c:	a6f5 756f 4f64 e0cf 1632 1145 2eac 7d6d     ..oudO..2.E...m}
c0dec03c:	b724 dbef e1b1 09c2 961e 439f 73df 9763     $..........C.sc.
c0dec04c:	3dbd 2198 3583 c086 3859 bea6 2141 c4f2     .=.!.5..Y8..A!..
c0dec05c:	aff8 98ae 7e86 caee 09a5 840a 3ea1 890b     .....~.......>..
c0dec06c:	f904 5fe9 9cc6 b0f2 ea77 3111 7d1f d5f1     ..._....w..1.}..
c0dec07c:	d3a3 96ae ef16 5f94 1e3c e269 f00c 1a4b     ......._<.i...K.
c0dec08c:	7e9a 2aab d1b5 b4f1 0604 314d 0774 6639     .~.*......M1t.9f
c0dec09c:	2e43 d646 21db ef98 d8d0 6dbf dbd9 39c5     C.F..!.....m...9
c0dec0ac:	4531 1d25 8f41 78f8 d3af 673d ed94 20ed     1E%.A..x..=g... 
c0dec0bc:	50ed 3e00 972d 600b 2d5a 63bf e5d3 e3be     .P.>-..`Z-.c....
c0dec0cc:	7d5c 65bc 9421 2756 ee83 3343 4fff d3c0     \}.e!.V'..C3.O..
c0dec0dc:	c382 841c 608a f196 fbd4 1f78 9720 676f     .....`....x. .og
c0dec0ec:	6b7c d2db e092 4dfd 16d7 de8d cb5e 375f     |k.....M....^._7
c0dec0fc:	e98f 9cf4 99f7 ba6d 747a 004b 03e7 d21b     ......m.ztK.....
c0dec10c:	4290 5df8 f84d f3cd b9f7 f727 fd31 51c9     .B.]M.....'.1..Q
c0dec11c:	da82 aa7f 23f4 60d7 e619 527e cca3 e96f     .....#.`..~R..o.
c0dec12c:	3bdb ce43 46b3 2328 04a0 43e9 8f63 2ec1     .;C..F(#...Cc...
c0dec13c:	e5db 3eba 5f7f 994b 16c2 ae8d edfc 7060     ...>._K.......`p
c0dec14c:	8dd9 a673 75e1 b64d 0cf3 658e 7672 2dac     ..s..uM....erv.-
c0dec15c:	e95f 54f7 3097 9119 5ee6 8d6f 2fb9 696e     _..T.0...^o../ni
c0dec16c:	ca01 bc42 ad99 fab0 3a15 80a1 5d0c 3741     ..B......:...]A7
c0dec17c:	13db 1855 0849 dc1d 9305 e7b1 9ab0 26fd     ..U.I..........&
c0dec18c:	345b b19b c16f b905 8358 a609 de0a e699     [4..o...X.......
c0dec19c:	a16e d490 5bc3 7a1f ddc2 dc8c 4210 a442     n....[.z.....BB.
c0dec1ac:	0b0b a3d1 297d 4c35 0274 a399 4a18 1cd0     ....})5Lt....J..
c0dec1bc:	50e9 1744 26b8 7d3e e8a8 ee32 8828 d05e     .PD..&>}..2.(.^.
c0dec1cc:	8185 44d9 13b8 9ff1 1d9e add2 3b40 b24e     ...D........@;N.
c0dec1dc:	10ec dce9 8119 19f2 beb8 e1bf fdc3 034e     ..............N.
c0dec1ec:	2afa aab9 36a6 fa54 d005 654c 0426 cd95     .*...6T...Le&...
c0dec1fc:	685a 2141 59ee e89f dbf3 d401 4f37 d820     ZhA!.Y......7O .
c0dec20c:	f7a9 5322 5f4e b0a4 b8dc 99a7 d7a1 85b8     .."SN_..........
c0dec21c:	079e 67f9 bc1d 86e1 60a5 fbff 1074 91b2     ...g.....`..t...
c0dec22c:	e203 850f 6c23 99ff ae43 6054 0f59 c585     ....#l..C.T`Y...
c0dec23c:	f196 d72b 0e54 6ac0 3105 9dc3 9b21 e89d     ..+.T..j.1..!...
c0dec24c:	5383 5f8e 6860 a3d0 7132 433c b19f 3722     .S._`h..2q<C.."7
c0dec25c:	2177 e9ae 8584 0985 4d83 bfc1 461f c991     w!.......M...F..
c0dec26c:	3d7f 26b7 60ff 2eb2 142b cf17 02a9 2cd9     .=.&.`..+......,
c0dec27c:	3120 f1a7 d4bb b1bc 6fec eaaa 3722 a36f      1.......o.."7o.
c0dec28c:	da49 009f 1682 1154 5020 5855 6044 2c4a     I.....T. PUXD`J,
c0dec29c:	0d53 8ec7 cc40 366e f143 88cf d075 c778     S...@.n6C...u.x.
c0dec2ac:	faac 028f 8b0e ad24 cf5e 04a0 f0b7 4a5a     ......$.^.....ZJ
c0dec2bc:	34d5 6ffc 40cd e590 4ad1 9348 2f64 5395     .4.o.@...JH.d/.S
c0dec2cc:	207c d634 966a 2571 1bbb 9e52 0a9a 29eb     | 4.j.q%..R....)
c0dec2dc:	bbf2 06a8 a498 68e3 4195 b6ce a78e 7a1c     .......h.A.....z
c0dec2ec:	226e a567 9168 9825 defd ece9 d3b8 3585     n"g.h.%........5
c0dec2fc:	0c74 8edd 873d ad66 5cdb 5ce9 4c24 74e4     t...=.f..\.\$L.t
c0dec30c:	e76c b702 26e6 cea2 d100 25ad 8de4 6ae3     l....&.....%...j
c0dec31c:	a50e cb49 8758 b01e f9bb ddd7 15ab 8503     ..I.X...........
c0dec32c:	d36d 45be 19ba c1d6 f082 0adb 5ace 350c     m..E.........Z.5
c0dec33c:	6955 ab0a 5737 5260 9a64 6565 f739 99cd     Ui..7W`Rd.ee9...
c0dec34c:	0c61 fa68 436d ed67 f2d4 3b7c df96 9fcd     a.h.mCg...|;....
c0dec35c:	471f 5ca4 e60d e7a7 a991 8e13 d019 9318     .G.\............
c0dec36c:	54ee 86b9 92cc 6fb0 319c f9c9 aac9 e2bb     .T.....o.1......
c0dec37c:	49a7 4aa4 ad39 a666 472a f872 ab21 689b     .I.J9.f.*Gr.!..h
c0dec38c:	48c1 bd53 2f19 f4c7 5739 9c10 30d9 d354     .HS../..9W...0T.
c0dec39c:	cf67 c1e4 4e3a 8715 9b55 c2cd 7050 41fa     g...:N..U...Pp.A
c0dec3ac:	2f71 7207 3072 2c5e ec40 f9cc 7de9 ff02     q/.rr0^,@....}..
c0dec3bc:	300d 5740 7570 807d 9f90 c7a8 d6ce eae8     .0@Wpu}.........
c0dec3cc:	fcf0 1e18 3929 3f3e 7244 8783 9488 e5c6     ....)9>?Dr......
c0dec3dc:	e9e6 f8f3 1c07 1e1d 5326 5b54 7e72 8e86     ........&ST[r~..
c0dec3ec:	ae97 c3c2 d7c7 e5dc f0ee 1508 211c 6924     .............!$i
c0dec3fc:	857c aea2 c1c0 f4cd 0000 0000 0000 0000     |...............
c0dec40c:	2412 483a 1cd8 8d4d 4f73 fbcb deea 3f3d     .$:H..M.sO....=?
c0dec41c:	038a aa9f 2c2a 5799 35e8 55ad 2eb2 bf75     ....*,.W.5.U..u.
c0dec42c:	bb57 6a55                                    W.Uj.

c0dec431 <handler_cmd_verify_dilithium.pk>:
c0dec431:	327a 5741 a941 7c35 07db 85a5 803f 8ad1     z2AWA.5|....?...
c0dec441:	2a7a bcaa 44de 441b 3aa0 3f0e 4d84 194a     z*...D.D.:.?.MJ.
c0dec451:	d32a 5df5 437d ad53 4cba 3b91 9cdd 55a7     *..]}CS..L.;...U
c0dec461:	9a70 9b10 4592 c2f9 c6cb b1ae bdde 6661     p....E........af
c0dec471:	3851 912d 01c8 ad7c 13aa 7db3 cc14 4ca2     Q8-...|....}...L
c0dec481:	7cb3 e01f 08d1 69e5 1d94 cde9 f744 4948     .|.....i....D.HI
c0dec491:	9241 9af1 8421 a34e 4a74 75af d752 d710     A...!.N.tJ.uR...
c0dec4a1:	865c 4baa e604 72b1 61e9 108b ffef 08e7     \..K...r.a......
c0dec4b1:	4b0e aca6 f1de f372 22cd 2d04 aa53 134d     .K....r..".-S.M.
c0dec4c1:	4545 e081 21fa 30d9 deae 7b8d 59ff 38ca     EE...!.0...{.Y.8
c0dec4d1:	4870 de91 19f7 e87e f00a f7dd c702 6ea3     pH....~........n
c0dec4e1:	2095 a999 5aca aaef 51c9 3a78 7fa1 7244     . ...Z...Qx:..Dr
c0dec4f1:	046e ec79 19fd a0c9 013a fdfe 0399 0fd4     n.y.....:.......
c0dec501:	04d1 afae 1316 9f4b efef ef96 7dae 679d     ......K......}.g
c0dec511:	9f84 0bac 3f2c 03a1 7020 849e 5bac 5859     ....,?.. p...[YX
c0dec521:	5da1 8c97 6a5a 764a 9339 e684 c356 634b     .]..ZjJv9...V.Kc
c0dec531:	78af 25ba ec71 a999 3adc 1e0c b932 79f2     .x.%q....:..2..y
c0dec541:	5552 9a5f 2428 8dd4 ac6e a97a 03d9 6a71     RU_.($..n.z...qj
c0dec551:	347c b956 4264 d69d a454 d917 a9b1 5df1     |4V.dB..T......]
c0dec561:	ad2a c3cf f802 726b d86f d60a 0295 7a48     *.....kro.....Hz
c0dec571:	b72a eb2f b497 6e3b fb57 b5a0 be54 4a08     *./...;nW...T..J
c0dec581:	4e64 511e 66e2 239d da96 aad4 6d1c add2     dN.Q.f.#.....m..
c0dec591:	4e23 0891 c269 9a65 ea74 4559 52b4 39a1     #N..i.e.t.YE.R.9
c0dec5a1:	3d14 aed7 2371 576b 2840 952d 9280 e187     .=..q#kW@(-.....
c0dec5b1:	a52e 4e47 f12e 3aa9 315e 5e10 2826 2640     ..GN...:^1.^&(@&
c0dec5c1:	18a0 71a4 6a75 1650 3904 53b7 f134 099e     ...qujP..9.S4...
c0dec5d1:	30ec f718 800d cbb6 2c00 d883 5d0b c153     .0.......,...]S.
c0dec5e1:	5169 396e f1e3 5585 c7dc 55b5 5fdb 18a4     iQn9...U...U._..
c0dec5f1:	8ab3 78cb 11d0 1f02 dcea 43bf 5af3 6917     ...x.......C.Z.i
c0dec601:	d8d2 bf9d d264 6ca6 1aef 4a41 8170 de2e     ....d..l..AJp...
c0dec611:	7e3f 503a 969a c149 9b0c 5140 1364 54d5     ?~:P..I...@Qd..T
c0dec621:	2261 b31f 7f51 38aa c47c 3160 bf0e d6e0     a"..Q..8|.`1....
c0dec631:	caf9 6619 0453 7cdd 7dfa 80f9 9c3d 8dc8     ...fS..|.}..=...
c0dec641:	03dc fba1 9396 d980 90d8 c488 2b31 b6ef     ............1+..
c0dec651:	3fa6 7e45 cf83 53e0 f344 5461 e621 ba01     .?E~...SD.aT!...
c0dec661:	c295 a899 2c84 150b 7423 2dfe 0251 2f9e     .....,..#t.-Q../
c0dec671:	97d2 97a6 b961 e363 ee3a bf98 3bef 810d     ....a.c.:....;..
c0dec681:	377f a25a 7cf4 ac35 c4aa f11a 52e8 1367     .7Z..|5......Rg.
c0dec691:	ca57 1a82 abe8 f901 85b4 6f3b 3869 ecbe     W.........;oi8..
c0dec6a1:	9acd cf7a 4f61 67eb 6944 9164 d202 c923     ..z.aO.gDid...#.
c0dec6b1:	f887 9e24 2924 d833 55ea f328 1c8f 89d5     ..$.$)3..U(.....
c0dec6c1:	8367 8969 e721 0bd9 d97e ecac 3043 d9c4     g.i.!...~...C0..
c0dec6d1:	12d9 17f5 5bf8 2462 690e 5358 0de6 114b     .....[b$.iXS..K.
c0dec6e1:	4efa a889 522f 9396 982c 05a1 0c60 7912     .N../R..,...`..y
c0dec6f1:	0178 1617 b82e e983 2282 90c0 d80f e32f     x........"..../.
c0dec701:	0906 0bc3 03f1 a465 3814 6857 7870 db4d     ......e..8WhpxM.
c0dec711:	f4cb 442c 630c d79e 15e0 675b 679c 7c98     ..,D.c....[g.g.|
c0dec721:	9e42 f7ac 1b33 3e5a 0ff1 1e1e 2ab1 aa1f     B...3.Z>.....*..
c0dec731:	94b4 0eb5 5d2a 9da6 29f4 4d0f 8b76 fb6f     ....*]...).Mv.o.
c0dec741:	8c3f 3046 1ab7 5215 ede8 b5fe 42e1 1fc5     ?.F0...R.....B..
c0dec751:	0cf1 13b8 cdf3 394e 9f97 fef5 2700 bb42     ......N9.....'B.
c0dec761:	e96e 10c4 18c8 a829 b82c deb5 e6de e7a4     n.....).,.......
c0dec771:	4c6b ab84 c102 1466 d85e 59fc f4f7 16b4     kL....f.^..Y....
c0dec781:	39be ab0e fc8b 49dc 6f8d 3148 cf38 15a0     .9.....I.oH18...
c0dec791:	0b2f c988 75de 901d 1107 6d59 d064 c3c6     /....u....Ymd...
c0dec7a1:	a2bd c2d1 5545 fc1f 1bb8 3b5d b1bd 38a7     ....EU....];...8
c0dec7b1:	622c dfd0 a24c dd3b 28d2 999a ff78 bc31     ,b..L.;..(..x.1.
c0dec7c1:	995f ef25 d2f1 7984 8396 408c f4d2 0547     _.%....y...@..G.
c0dec7d1:	37d7 aa35 d6ac a7c6 f196 1388 69f0 1534     .75..........i4.
c0dec7e1:	5055 72df a339 2a6a 9200 8500 cceb ff37     UP.r9.j*......7.
c0dec7f1:	1230 34bc 030a 4724 9529 9c3b 8dc1 bd2d     0..4..$G).;...-.
c0dec801:	fd9b 36e8 7f6d 88f6 6c2c 99cf b40b d3da     ...6m...,l......
c0dec811:	32ae 38b1 f347 475b 612e 7417 9df6 1c73     .2.8G.[G.a.t..s.
c0dec821:	fd79 27f7 4aab 2140 daf4 9cc5 ff2e 57bc     y..'.J@!.......W
c0dec831:	669c 08f2 2601 6d00 4a81 43d8 8831 1dde     .f...&.m.J.C1...
c0dec841:	53b0 aafb f44d 52f7 a54f e800 dc9c 8a58     .S..M..RO.....X.
c0dec851:	76e8 c12a 4c72 449a 0fac 9773 32f7 87c3     .v*.rL.D..s..2..
c0dec861:	4b2f 40dc 2875 4d14 373b 49ac 2653 48a8     /K.@u(.M;7.IS&.H
c0dec871:	1045 dff6 8480 ea9b e8d5 5bf8 1f11 c9ff     E..........[....
c0dec881:	f401 be47 f9b6 f974 1438 356f d0b5 9bed     ..G...t.8.o5....
c0dec891:	9ec3 9b60 2cfb 3791 9646 8f80 701e 8bae     ..`..,.7F....p..
c0dec8a1:	673b b56a d4ce 44ec bf67 4c90 18bd ca70     ;gj....Dg..L..p.
c0dec8b1:	a9ab fbc5 923e f712 b4c3 2836 7e5a 276e     ....>.....6(Z~n'
c0dec8c1:	c32a f960 7e13 52bc 7352 8535 2a21 db91     *.`..~.RRs5.!*..
c0dec8d1:	9e4b de86 de4c f52a 1699 a8e6 5904 45f1     K...L.*......Y.E
c0dec8e1:	6b0e acad 14ee ea83 b1c5 295b 79d7 5554     .k........[).yTU
c0dec8f1:	547e eafb d73a a98f eba3 0b05 fb68 9695     ~T..:.......h...
c0dec901:	7369 4cb1 c91a aa56 4845 b981 d16a 92f4     is.L..V.EH..j...
c0dec911:	83e1 1c09 ff31 41a2 f10b 842b 43bf 5a21     ....1..A..+..C!Z
c0dec921:	3f07 c916 41ef e919 6101 de5d 41b1 67de     .?...A...a]..A.g
c0dec931:	919f 451e b0a3 89f1 2aa9 0f95 e22e 9d62     ...E.....*....b.
c0dec941:	014c 1dd4 1da3 081d 4712 6382 183f ee68     L........G.c?.h.
c0dec951:	0000                                         ...

c0dec954 <settingContents>:
c0dec954:	0000 0000 c970 c0de 0001 0000               ....p.......

c0dec960 <infoList>:
c0dec960:	c9a4 c0de c9ac c0de 0000 0000 0002 0000     ................

c0dec970 <contents>:
c0dec970:	0007 0000 1434 da7a 0002 0000 0000 0000     ....4.z.........
	...
c0dec9a0:	0cb9 c0de                                   ....

c0dec9a4 <INFO_TYPES>:
c0dec9a4:	b778 c0de b6c6 c0de                         x.......

c0dec9ac <INFO_CONTENTS>:
c0dec9ac:	b5f1 c0de b736 c0de                         ....6...

c0dec9b4 <zetas>:
c0dec9b4:	0000 0000 64f7 0000 3102 ffd8 1503 fff8     .....d...1......
c0dec9c4:	9e44 0003 2118 fff4 a128 fff2 1e24 0007     D....!..(...$...
c0dec9d4:	de2b 001b e92b 0023 84ad fffa 147f ffe0     +...+.#.........
c0dec9e4:	9a75 002f fb09 ffd3 7a49 002f e527 0028     u./.....Iz/.'.(.
c0dec9f4:	9658 0029 a070 000f 85a4 ffef b788 0036     X.).p.........6.
c0deca04:	9d90 fff7 eaa0 ffee f968 0027 d37b ffdf     ........h.'.{...
c0deca14:	add6 ffdf 1ae7 ffc5 a4f7 ffea fc98 ffcd     ................
c0deca24:	d035 001a b422 ffff 3201 003d 45c5 0004     5..."....2=..E..
c0deca34:	4a67 0029 7620 0001 f4cd 002e dec5 0035     gJ). v........5.
c0deca44:	a503 ffe6 302c ffc9 47d4 ffd9 beaf 003b     ....,0...G....;.
c0deca54:	1585 ffc5 8e7c ffd1 8a96 0036 3e41 ffd4     ....|.....6.A>..
c0deca64:	0400 0036 6a4d fffb d69c 0023 c55d fff7     ..6.Mj....#.]...
c0deca74:	123d ffe6 ead6 ffe6 7e1e 0035 af59 ffc5     =........~5.Y...
c0deca84:	843f 0035 5617 ffdf 945c ffe7 738c 0038     ?.5..V..\....s8.
c0deca94:	63a8 000c 1b9a 0008 8f76 000e 3853 003b     .c......v...S8;.
c0decaa4:	8534 003b fc30 ffd8 9d54 001f 4f2d ffd5     4.;.0...T...-O..
c0decab4:	06e5 ffc4 ac81 ffe8 e1cf ffc7 9819 ffd1     ................
c0decac4:	d65d ffe9 09ee 0035 35c7 0021 cfbb ffe7     ].....5..5!.....
c0decad4:	cf75 ffec 9772 001d b072 ffc1 bcf6 fff0     u...r...r.......
c0decae4:	5280 ffcf d2ae ffcf 90e0 ffc8 efca 0001     .R..............
c0decaf4:	10f2 0034 fe85 fff0 c638 0020 6e9f 0029     ..4.....8. ..n).
c0decb04:	b7a3 ffd2 a44b ffc7 ba6d fff9 3409 ffda     ....K...m....4..
c0decb14:	c282 fff5 4113 ffed a63b ffff 09f7 ffec     .....A..;.......
c0decb24:	2bdd fffa 95d4 0014 4563 001c 2c62 ffea     .+......cE..b,..
c0decb34:	fbe9 ffcc 0af0 0004 c417 0007 4588 002f     .............E/.
c0decb44:	ad00 0000 36be ffef cd44 000d 675a 003c     .....6..D...Zg<.
c0decb54:	2bca ffc7 de7e ffff 3948 0019 69c0 ffce     .+..~...H9...i..
c0decb64:	756c 0024 c7df fffc 98a1 000b e808 ffeb     lu$.............
c0decb74:	e46c 0002 c808 ffc9 36c2 0030 bff6 ffe3     l........60.....
c0decb84:	3c93 ffdb 4ae0 fffd 1305 0014 7792 0014     .<...J.......w..
c0decb94:	9e25 0013 d0e0 ffe7 9944 fff3 0802 ffea     %.......D.......
c0decba4:	eea2 ffd1 c79c ffc4 a057 ffc8 97d9 003a     ........W.....:.
c0decbb4:	ea93 001f ff5a 0033 58d4 0023 41f8 003a     ....Z.3..X#..A:.
c0decbc4:	ff72 ffcc 3dfb 0022 ab9f ffda a422 ffc9     r....="....."...
c0decbd4:	12f5 0004 2587 0025 24f0 ffed 9b5d 0035     .....%%..$..].5.
c0decbe4:	48a0 ffca a2fc ffc6 bb56 ffed 45de ffcf     .H......V....E..
c0decbf4:	be5e 000d 5e1a 001c e0e6 000d 7f5a 000c     ^....^......Z...
c0decc04:	8f83 0007 628a ffe7 5704 ffff 06fc fff8     .....b...W......
c0decc14:	0021 fff6 5af6 ffd0 0084 001f ef86 0030     !....Z........0.
c0decc24:	b97d ffc9 fcd6 fff7 4592 fff4 21c2 ffc9     }........E...!..
c0decc34:	3919 0005 610c 0004 cd41 ffda b01b 003e     .9...a..A.....>.
c0decc44:	72e7 0034 003b ffcd 7cc7 001a 1924 0003     .r4.;....|..$...
c0decc54:	5ee5 002b 1199 0029 7a3a ffd8 4d71 0013     .^+...).:z..qM..
c0decc64:	e11c 003d 0984 0013 f051 0025 5a46 0018     ..=.....Q.%.FZ..
c0decc74:	8518 ffc6 14be 0013 3891 0028 db90 ffc9     .........8(.....
c0decc84:	5089 ffd2 853f 001c 0b4b 001d f6a6 ffef     .P..?...K.......
c0decc94:	a8be ffeb e11b 0012 5e3e ffcd 2d2f ffea     ........>^../-..
c0decca4:	1de4 fff9 06c7 0014 7283 0032 0d6e ffe2     .........r2.n...
c0deccb4:	7953 ffec 4099 001d 2578 ffd9 05ad ffeb     Sy...@..x%......
c0deccc4:	e405 0016 dbe7 000b 1de8 0022 f8cf 0033     .........."...3.
c0deccd4:	b934 fff7 ca0c ffd4 7ff8 ffe6 d157 ffe3     4...........W...
c0decce4:	911b ffd8 2c12 ffc7 10d8 0009 5e1f ffc6     .....,.......^..
c0deccf4:	4658 ffe1 1d8b 0025 73b7 0025 7c8f fffd     XF....%..s%..|..
c0decd04:	dd98 001d 6898 0033 d4bb 0002 93a7 ffed     .....h3.........
c0decd14:	6cbe ffcf 7c1c 0002 aa08 0018 fd71 002d     .l...|......q.-.
c0decd24:	5ca5 000c 379a 0019 a167 ffc7 8c3d ffe4     .\...7..g...=...
c0decd34:	a13c ffd1 c539 0035 0115 003b 1dc0 0004     <...9.5...;.....
c0decd44:	c4f7 0021 1bf4 fff1 35e7 001a 340e 0007     ..!......5...4..
c0decd54:	7d45 fff9 4cd0 001a 7cae ffe4 2668 001d     E}...L...|..h&..
c0decd64:	8e98 ffe6 2633 ffef 05da fffc 7fdb ffc5     ....3&..........
c0decd74:	2764 ffd3 e1af ffdd 93dd fff9 1d09 ffdd     d'..............
c0decd84:	cc93 0002 1805 fff1 9c2a 0018 e5a9 ffc9     ........*.......
c0decd94:	8a50 fff7 cf2c 003b 434e ffff 36df ffeb     P...,.;.NC...6..
c0decda4:	15ca 003c 5e68 0015 16b6 fff3 29ce 001e     ..<.h^.......)..

c0decdb4 <small_zetas>:
c0decdb4:	fbec fd0a fe99 fa13 05d5 058e 011f 00ca     ................
c0decdc4:	ff55 026e 0629 00b6 03c2 fb4e fa3e 05bc     U.n.).....N.>...
c0decdd4:	023d fad3 0108 017f fcc3 05b2 f9be ff7e     =.............~.
c0decde4:	fd57 03f9 02dc 0260 f9fa 019b ff33 f9dd     W.....`.....3...
c0decdf4:	04c7 028c fdd8 03f7 faf3 05d3 fee6 f9f8     ................
c0dece04:	0204 fff8 fec0 fd66 f9ae fb76 007e 05bd     ......f...v.~...
c0dece14:	fcab ffa6 fef1 033e 006b fa73 ff09 fc49     ......>.k.s...I.
c0dece24:	fe72 03c1 fa1c fd2b 01c0 fbd7 02a5 fb05     r.....+.........
c0dece34:	fbb1 01ae 022b 034b fb1d 0367 060e 0069     ....+.K...g...i.
c0dece44:	01a6 024b 00b1 ff15 fedd fe34 0626 0675     ..K.......4.&.u.
c0dece54:	ff0a 030a 0487 ff6d fcf7 05cb fda6 045f     ......m......._.
c0dece64:	f9ca 0284 fc98 015d 01a2 0149 ff64 ffb5     ......]...I.d...
c0dece74:	0331 0449 025b 0262 052a fafb fa47 0180     1.I.[.b.*...G...
c0dece84:	fb41 ff78 04c2 fac9 fc96 00dc fb5d f985     A.x.........]...
c0dece94:	fb5f fa06 fb02 031a fa1a fcaa fc9a 01de     _...............
c0decea4:	ff94 fecc 03e4 03df 03be fa4c 05f2 065c     ..........L...\.

c0deceb4 <radiusValues>:
c0deceb4:	0301                                        ..

c0deceb6 <quarter_disc_3px_180_1bpp>:
c0deceb6:	ff9b                                        ..

c0deceb8 <quarter_circle_3px_180_1bpp>:
c0deceb8:	0019                                        ..

c0deceba <quarter_disc_3px_270_1bpp>:
c0deceba:	00fa                                        ..

c0decebc <quarter_circle_3px_270_1bpp>:
c0decebc:	0058                                        X.

c0decebe <quarter_disc_3px_90_1bpp>:
c0decebe:	ff2f                                        /.

c0decec0 <quarter_circle_3px_90_1bpp>:
c0decec0:	000d                                        ..

c0decec2 <quarter_disc_3px_1bpp>:
c0decec2:	ffec                                        ..

c0decec4 <quarter_circle_3px_1bpp>:
c0decec4:	004c 0000                                   L...

c0decec8 <draw_functions>:
c0decec8:	54ed c0de 552d c0de 5555 c0de 0000 0000     .T..-U..UU......
c0deced8:	55d9 c0de 5895 c0de 0000 0000 0000 0000     .U...X..........
c0decee8:	5a67 c0de 0000 0000 0000 0000 0000 0000     gZ..............
	...
c0decf00:	5b05 c0de 5b51 c0de 0000 0000               .[..Q[......

c0decf0c <blindSigningWarning>:
c0decf0c:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0decf34 <USBD_HID_Desc>:
c0decf34:	2109 0111 0100 2222                          .!...."".

c0decf3d <HID_ReportDesc>:
c0decf3d:	a006 09ff a101 0901 1503 2600 00ff 0875     ...........&..u.
c0decf4d:	4095 0881 0409 0015 ff26 7500 9508 9140     .@......&..u..@.
c0decf5d:	c008                                        ..

c0decf5f <C_usb_bos>:
c0decf5f:	0f05 0039 1802 0510 3800 08b6 a934 a009     ..9......8..4...
c0decf6f:	8b47 a0fd 8876 b615 0065 1e01 1c00 0510     G...v...e.......
c0decf7f:	df00 dd60 89d8 c745 9c4c 65d2 9e9d 8a64     ..`...E.L..e..d.
c0decf8f:	009f 0300 b206 7700                          .......w.

c0decf98 <HID_Desc>:
c0decf98:	9c05 c0de 9c15 c0de 9c25 c0de 9c35 c0de     ........%...5...
c0decfa8:	9c45 c0de 9c55 c0de 9c65 c0de 9c75 c0de     E...U...e...u...

c0decfb8 <C_winusb_string_descriptor>:
c0decfb8:	0312 004d 0053 0046 0054 0031 0030 0030     ..M.S.F.T.1.0.0.
c0decfc8:	0077                                        w.

c0decfca <C_winusb_guid>:
c0decfca:	0092 0000 0100 0005 0001 0088 0000 0007     ................
c0decfda:	0000 002a 0044 0065 0076 0069 0063 0065     ..*.D.e.v.i.c.e.
c0decfea:	0049 006e 0074 0065 0072 0066 0061 0063     I.n.t.e.r.f.a.c.
c0decffa:	0065 0047 0055 0049 0044 0073 0000 0050     e.G.U.I.D.s...P.
c0ded00a:	0000 007b 0031 0033 0064 0036 0033 0034     ..{.1.3.d.6.3.4.
c0ded01a:	0030 0030 002d 0032 0043 0039 0037 002d     0.0.-.2.C.9.7.-.
c0ded02a:	0030 0030 0030 0034 002d 0030 0030 0030     0.0.0.4.-.0.0.0.
c0ded03a:	0030 002d 0034 0063 0036 0035 0036 0034     0.-.4.c.6.5.6.4.
c0ded04a:	0036 0037 0036 0035 0037 0032 007d 0000     6.7.6.5.7.2.}...
	...

c0ded05c <C_winusb_request_descriptor>:
c0ded05c:	000a 0000 0000 0603 00b2 0008 0001 0000     ................
c0ded06c:	00a8 0008 0002 0001 00a0 0014 0003 4957     ..............WI
c0ded07c:	554e 4253 0000 0000 0000 0000 0000 0084     NUSB............
c0ded08c:	0004 0007 002a 0044 0065 0076 0069 0063     ....*.D.e.v.i.c.
c0ded09c:	0065 0049 006e 0074 0065 0072 0066 0061     e.I.n.t.e.r.f.a.
c0ded0ac:	0063 0065 0047 0055 0049 0044 0073 0000     c.e.G.U.I.D.s...
c0ded0bc:	0050 007b 0043 0045 0038 0030 0039 0032     P.{.C.E.8.0.9.2.
c0ded0cc:	0036 0034 002d 0034 0042 0032 0034 002d     6.4.-.4.B.2.4.-.
c0ded0dc:	0034 0045 0038 0031 002d 0041 0038 0042     4.E.8.1.-.A.8.B.
c0ded0ec:	0032 002d 0035 0037 0045 0044 0030 0031     2.-.5.7.E.D.0.1.
c0ded0fc:	0044 0035 0038 0030 0045 0031 007d 0000     D.5.8.0.E.1.}...
c0ded10c:	0000 0000                                   ....

c0ded110 <USBD_HID>:
c0ded110:	8fd7 c0de 8fff c0de 8f3f c0de 0000 0000     ........?.......
c0ded120:	0000 0000 9ae5 c0de 9b01 c0de 0000 0000     ................
	...
c0ded138:	9d7d c0de 9d7d c0de 9d7d c0de 9d8d c0de     }...}...}.......

c0ded148 <USBD_WEBUSB>:
c0ded148:	9b5d c0de 9b85 c0de 9b89 c0de 0000 0000     ]...............
c0ded158:	0000 0000 9b8d c0de 9ba9 c0de 0000 0000     ................
	...
c0ded170:	9d7d c0de 9d7d c0de 9d7d c0de 9d8d c0de     }...}...}.......

c0ded180 <USBD_DeviceDesc>:
c0ded180:	0112 0210 0000 4000 2c97 5000 0201 0201     .......@.,.P....
c0ded190:	0103                                        ..

c0ded192 <USBD_LangIDDesc>:
c0ded192:	0304 0409                                   ....

c0ded196 <USBD_MANUFACTURER_STRING>:
c0ded196:	030e 004c 0065 0064 0067 0065 0072          ..L.e.d.g.e.r.

c0ded1a4 <USBD_PRODUCT_FS_STRING>:
c0ded1a4:	0318 004e 0061 006e 006f 0020 0053 0020     ..N.a.n.o. .S. .
c0ded1b4:	0050 006c 0075 0073                         P.l.u.s.

c0ded1bc <USB_SERIAL_STRING>:
c0ded1bc:	030a 0030 0030 0030 0031                    ..0.0.0.1.

c0ded1c6 <C_winusb_wcid>:
c0ded1c6:	0028 0000 0100 0004 0001 0000 0000 0000     (...............
c0ded1d6:	0101 4957 554e 4253 0000 0000 0000 0000     ..WINUSB........
	...

c0ded1f0 <USBD_CfgDesc>:
c0ded1f0:	0209 0040 0102 c002 0932 0004 0200 0003     ..@.....2.......
c0ded200:	0200 2109 0111 0100 2222 0700 8205 4003     ...!...."".....@
c0ded210:	0100 0507 0302 0040 0901 0104 0200 ffff     ......@.........
c0ded220:	02ff 0507 0383 0040 0701 0305 4003 0100     ......@......@..

c0ded230 <USBD_DeviceQualifierDesc>:
c0ded230:	060a 0200 0000 4000 0001                    .......@..

c0ded23a <seph_io_general_status>:
c0ded23a:	0060 0002                                    `....

c0ded23f <g_pcHex>:
c0ded23f:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0ded24f <g_pcHex_cap>:
c0ded24f:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
	...

c0ded260 <_etext>:
	...

c0ded400 <N_storage_real>:
	...

c0ded600 <install_parameters>:
c0ded600:	0701 4b5a 4f4e 4858 0257 3005 302e 312e     ..ZKNOXHW..0.0.1
c0ded610:	2103 000e 000e 1900 0000 0000 0300 08f0     .!..............
c0ded620:	4e40 5281 8fa5 a090 8040 0384 00f0 0000     @N.R....@.......
c0ded630:	0000 0400 010a 8002 0000 802c 0000           ..........,....
