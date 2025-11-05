
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	4604      	mov	r4, r0
c0de0004:	b662      	cpsie	i
c0de0006:	f006 feb3 	bl	c0de6d70 <os_boot>
c0de000a:	b13c      	cbz	r4, c0de001c <main+0x1c>
c0de000c:	6820      	ldr	r0, [r4, #0]
c0de000e:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0012:	d107      	bne.n	c0de0024 <main+0x24>
c0de0014:	4620      	mov	r0, r4
c0de0016:	f006 fc3f 	bl	c0de6898 <library_app_main>
c0de001a:	e001      	b.n	c0de0020 <main+0x20>
c0de001c:	f006 fc06 	bl	c0de682c <standalone_app_main>
c0de0020:	2000      	movs	r0, #0
c0de0022:	bd10      	pop	{r4, pc}
c0de0024:	f006 fbf7 	bl	c0de6816 <app_exit>

c0de0028 <address_from_pubkey>:
c0de0028:	b570      	push	{r4, r5, r6, lr}
c0de002a:	b08a      	sub	sp, #40	@ 0x28
c0de002c:	460c      	mov	r4, r1
c0de002e:	4605      	mov	r5, r0
c0de0030:	4668      	mov	r0, sp
c0de0032:	2120      	movs	r1, #32
c0de0034:	4616      	mov	r6, r2
c0de0036:	f007 fb4f 	bl	c0de76d8 <__aeabi_memclr>
c0de003a:	b914      	cbnz	r4, c0de0042 <address_from_pubkey+0x1a>
c0de003c:	2001      	movs	r0, #1
c0de003e:	f006 fe31 	bl	c0de6ca4 <assert_exit>
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
c0de0056:	f006 fde5 	bl	c0de6c24 <cx_keccak_256_hash_iovec>
c0de005a:	b108      	cbz	r0, c0de0060 <address_from_pubkey+0x38>
c0de005c:	2000      	movs	r0, #0
c0de005e:	e006      	b.n	c0de006e <address_from_pubkey+0x46>
c0de0060:	f105 010c 	add.w	r1, r5, #12
c0de0064:	4620      	mov	r0, r4
c0de0066:	2214      	movs	r2, #20
c0de0068:	f007 fb2c 	bl	c0de76c4 <__aeabi_memcpy>
c0de006c:	2001      	movs	r0, #1
c0de006e:	b00a      	add	sp, #40	@ 0x28
c0de0070:	bd70      	pop	{r4, r5, r6, pc}

c0de0072 <apdu_dispatcher>:
c0de0072:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de0074:	4604      	mov	r4, r0
c0de0076:	b910      	cbnz	r0, c0de007e <apdu_dispatcher+0xc>
c0de0078:	2001      	movs	r0, #1
c0de007a:	f006 fe13 	bl	c0de6ca4 <assert_exit>
c0de007e:	7820      	ldrb	r0, [r4, #0]
c0de0080:	28e0      	cmp	r0, #224	@ 0xe0
c0de0082:	d14a      	bne.n	c0de011a <apdu_dispatcher+0xa8>
c0de0084:	2000      	movs	r0, #0
c0de0086:	9003      	str	r0, [sp, #12]
c0de0088:	e9cd 0001 	strd	r0, r0, [sp, #4]
c0de008c:	7860      	ldrb	r0, [r4, #1]
c0de008e:	2817      	cmp	r0, #23
c0de0090:	d046      	beq.n	c0de0120 <apdu_dispatcher+0xae>
c0de0092:	2804      	cmp	r0, #4
c0de0094:	d04e      	beq.n	c0de0134 <apdu_dispatcher+0xc2>
c0de0096:	2805      	cmp	r0, #5
c0de0098:	d058      	beq.n	c0de014c <apdu_dispatcher+0xda>
c0de009a:	2806      	cmp	r0, #6
c0de009c:	d06c      	beq.n	c0de0178 <apdu_dispatcher+0x106>
c0de009e:	2807      	cmp	r0, #7
c0de00a0:	d078      	beq.n	c0de0194 <apdu_dispatcher+0x122>
c0de00a2:	2808      	cmp	r0, #8
c0de00a4:	f000 8080 	beq.w	c0de01a8 <apdu_dispatcher+0x136>
c0de00a8:	2809      	cmp	r0, #9
c0de00aa:	f000 8087 	beq.w	c0de01bc <apdu_dispatcher+0x14a>
c0de00ae:	280a      	cmp	r0, #10
c0de00b0:	f000 808e 	beq.w	c0de01d0 <apdu_dispatcher+0x15e>
c0de00b4:	280b      	cmp	r0, #11
c0de00b6:	f000 8095 	beq.w	c0de01e4 <apdu_dispatcher+0x172>
c0de00ba:	280c      	cmp	r0, #12
c0de00bc:	f000 809b 	beq.w	c0de01f6 <apdu_dispatcher+0x184>
c0de00c0:	280d      	cmp	r0, #13
c0de00c2:	f000 80a1 	beq.w	c0de0208 <apdu_dispatcher+0x196>
c0de00c6:	280e      	cmp	r0, #14
c0de00c8:	f000 80a7 	beq.w	c0de021a <apdu_dispatcher+0x1a8>
c0de00cc:	280f      	cmp	r0, #15
c0de00ce:	f000 80ad 	beq.w	c0de022c <apdu_dispatcher+0x1ba>
c0de00d2:	2810      	cmp	r0, #16
c0de00d4:	f000 80b3 	beq.w	c0de023e <apdu_dispatcher+0x1cc>
c0de00d8:	2811      	cmp	r0, #17
c0de00da:	f000 80b9 	beq.w	c0de0250 <apdu_dispatcher+0x1de>
c0de00de:	2812      	cmp	r0, #18
c0de00e0:	f000 80bf 	beq.w	c0de0262 <apdu_dispatcher+0x1f0>
c0de00e4:	2813      	cmp	r0, #19
c0de00e6:	f000 80c4 	beq.w	c0de0272 <apdu_dispatcher+0x200>
c0de00ea:	2814      	cmp	r0, #20
c0de00ec:	f000 80c9 	beq.w	c0de0282 <apdu_dispatcher+0x210>
c0de00f0:	2815      	cmp	r0, #21
c0de00f2:	f000 80ce 	beq.w	c0de0292 <apdu_dispatcher+0x220>
c0de00f6:	2816      	cmp	r0, #22
c0de00f8:	f000 80d3 	beq.w	c0de02a2 <apdu_dispatcher+0x230>
c0de00fc:	2803      	cmp	r0, #3
c0de00fe:	f040 80dd 	bne.w	c0de02bc <apdu_dispatcher+0x24a>
c0de0102:	78a0      	ldrb	r0, [r4, #2]
c0de0104:	2800      	cmp	r0, #0
c0de0106:	f040 80ee 	bne.w	c0de02e6 <apdu_dispatcher+0x274>
c0de010a:	78e0      	ldrb	r0, [r4, #3]
c0de010c:	2800      	cmp	r0, #0
c0de010e:	f040 80ea 	bne.w	c0de02e6 <apdu_dispatcher+0x274>
c0de0112:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0116:	f000 b9aa 	b.w	c0de046e <handler_get_version>
c0de011a:	f44f 40dc 	mov.w	r0, #28160	@ 0x6e00
c0de011e:	e0e4      	b.n	c0de02ea <apdu_dispatcher+0x278>
c0de0120:	68a0      	ldr	r0, [r4, #8]
c0de0122:	2800      	cmp	r0, #0
c0de0124:	f000 80dc 	beq.w	c0de02e0 <apdu_dispatcher+0x26e>
c0de0128:	f000 f8eb 	bl	c0de0302 <OUTLINED_FUNCTION_0>
c0de012c:	a801      	add	r0, sp, #4
c0de012e:	f001 f885 	bl	c0de123c <handler_cmd_tEddsaPoseidon_Sign_with_secret>
c0de0132:	e0d3      	b.n	c0de02dc <apdu_dispatcher+0x26a>
c0de0134:	78a0      	ldrb	r0, [r4, #2]
c0de0136:	2800      	cmp	r0, #0
c0de0138:	f040 80d5 	bne.w	c0de02e6 <apdu_dispatcher+0x274>
c0de013c:	78e0      	ldrb	r0, [r4, #3]
c0de013e:	2800      	cmp	r0, #0
c0de0140:	f040 80d1 	bne.w	c0de02e6 <apdu_dispatcher+0x274>
c0de0144:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de0148:	f000 b92a 	b.w	c0de03a0 <handler_get_app_name>
c0de014c:	78a1      	ldrb	r1, [r4, #2]
c0de014e:	2901      	cmp	r1, #1
c0de0150:	f200 80c9 	bhi.w	c0de02e6 <apdu_dispatcher+0x274>
c0de0154:	78e0      	ldrb	r0, [r4, #3]
c0de0156:	2800      	cmp	r0, #0
c0de0158:	f040 80c5 	bne.w	c0de02e6 <apdu_dispatcher+0x274>
c0de015c:	68a0      	ldr	r0, [r4, #8]
c0de015e:	2800      	cmp	r0, #0
c0de0160:	f000 80be 	beq.w	c0de02e0 <apdu_dispatcher+0x26e>
c0de0164:	9001      	str	r0, [sp, #4]
c0de0166:	7920      	ldrb	r0, [r4, #4]
c0de0168:	2900      	cmp	r1, #0
c0de016a:	9002      	str	r0, [sp, #8]
c0de016c:	bf18      	it	ne
c0de016e:	2101      	movne	r1, #1
c0de0170:	a801      	add	r0, sp, #4
c0de0172:	f000 f929 	bl	c0de03c8 <handler_get_public_key>
c0de0176:	e0b1      	b.n	c0de02dc <apdu_dispatcher+0x26a>
c0de0178:	78a1      	ldrb	r1, [r4, #2]
c0de017a:	2900      	cmp	r1, #0
c0de017c:	f000 80a1 	beq.w	c0de02c2 <apdu_dispatcher+0x250>
c0de0180:	2903      	cmp	r1, #3
c0de0182:	f200 80b0 	bhi.w	c0de02e6 <apdu_dispatcher+0x274>
c0de0186:	78e0      	ldrb	r0, [r4, #3]
c0de0188:	f040 0280 	orr.w	r2, r0, #128	@ 0x80
c0de018c:	2a80      	cmp	r2, #128	@ 0x80
c0de018e:	f000 809c 	beq.w	c0de02ca <apdu_dispatcher+0x258>
c0de0192:	e0a8      	b.n	c0de02e6 <apdu_dispatcher+0x274>
c0de0194:	68a0      	ldr	r0, [r4, #8]
c0de0196:	2800      	cmp	r0, #0
c0de0198:	f000 80a2 	beq.w	c0de02e0 <apdu_dispatcher+0x26e>
c0de019c:	f000 f8b1 	bl	c0de0302 <OUTLINED_FUNCTION_0>
c0de01a0:	a801      	add	r0, sp, #4
c0de01a2:	f000 fa6f 	bl	c0de0684 <handler_cmd_keccakH>
c0de01a6:	e099      	b.n	c0de02dc <apdu_dispatcher+0x26a>
c0de01a8:	68a0      	ldr	r0, [r4, #8]
c0de01aa:	2800      	cmp	r0, #0
c0de01ac:	f000 8098 	beq.w	c0de02e0 <apdu_dispatcher+0x26e>
c0de01b0:	f000 f8a7 	bl	c0de0302 <OUTLINED_FUNCTION_0>
c0de01b4:	a801      	add	r0, sp, #4
c0de01b6:	f000 fa2c 	bl	c0de0612 <handler_cmd_blake2b512>
c0de01ba:	e08f      	b.n	c0de02dc <apdu_dispatcher+0x26a>
c0de01bc:	68a0      	ldr	r0, [r4, #8]
c0de01be:	2800      	cmp	r0, #0
c0de01c0:	f000 808e 	beq.w	c0de02e0 <apdu_dispatcher+0x26e>
c0de01c4:	f000 f89d 	bl	c0de0302 <OUTLINED_FUNCTION_0>
c0de01c8:	a801      	add	r0, sp, #4
c0de01ca:	f000 fac3 	bl	c0de0754 <handler_cmd_Poseidon>
c0de01ce:	e085      	b.n	c0de02dc <apdu_dispatcher+0x26a>
c0de01d0:	68a0      	ldr	r0, [r4, #8]
c0de01d2:	2800      	cmp	r0, #0
c0de01d4:	f000 8084 	beq.w	c0de02e0 <apdu_dispatcher+0x26e>
c0de01d8:	f000 f893 	bl	c0de0302 <OUTLINED_FUNCTION_0>
c0de01dc:	a801      	add	r0, sp, #4
c0de01de:	f000 fc1f 	bl	c0de0a20 <handler_cmd_tEddsaPoseidon>
c0de01e2:	e07b      	b.n	c0de02dc <apdu_dispatcher+0x26a>
c0de01e4:	68a0      	ldr	r0, [r4, #8]
c0de01e6:	2800      	cmp	r0, #0
c0de01e8:	d07a      	beq.n	c0de02e0 <apdu_dispatcher+0x26e>
c0de01ea:	f000 f88a 	bl	c0de0302 <OUTLINED_FUNCTION_0>
c0de01ee:	a801      	add	r0, sp, #4
c0de01f0:	f000 fb7c 	bl	c0de08ec <handler_cmd_tEddsaPoseidon_Kpub>
c0de01f4:	e072      	b.n	c0de02dc <apdu_dispatcher+0x26a>
c0de01f6:	68a0      	ldr	r0, [r4, #8]
c0de01f8:	2800      	cmp	r0, #0
c0de01fa:	d071      	beq.n	c0de02e0 <apdu_dispatcher+0x26e>
c0de01fc:	f000 f881 	bl	c0de0302 <OUTLINED_FUNCTION_0>
c0de0200:	a801      	add	r0, sp, #4
c0de0202:	f000 fbb4 	bl	c0de096e <handler_cmd_tEddsaPoseidon_Sign>
c0de0206:	e069      	b.n	c0de02dc <apdu_dispatcher+0x26a>
c0de0208:	68a0      	ldr	r0, [r4, #8]
c0de020a:	2800      	cmp	r0, #0
c0de020c:	d068      	beq.n	c0de02e0 <apdu_dispatcher+0x26e>
c0de020e:	f000 f878 	bl	c0de0302 <OUTLINED_FUNCTION_0>
c0de0212:	a801      	add	r0, sp, #4
c0de0214:	f000 fb24 	bl	c0de0860 <handler_cmd_Poseidon_ithRC>
c0de0218:	e060      	b.n	c0de02dc <apdu_dispatcher+0x26a>
c0de021a:	68a0      	ldr	r0, [r4, #8]
c0de021c:	2800      	cmp	r0, #0
c0de021e:	d05f      	beq.n	c0de02e0 <apdu_dispatcher+0x26e>
c0de0220:	f000 f86f 	bl	c0de0302 <OUTLINED_FUNCTION_0>
c0de0224:	a801      	add	r0, sp, #4
c0de0226:	f000 fc6f 	bl	c0de0b08 <handler_cmd_tEdwards>
c0de022a:	e057      	b.n	c0de02dc <apdu_dispatcher+0x26a>
c0de022c:	68a0      	ldr	r0, [r4, #8]
c0de022e:	2800      	cmp	r0, #0
c0de0230:	d056      	beq.n	c0de02e0 <apdu_dispatcher+0x26e>
c0de0232:	f000 f866 	bl	c0de0302 <OUTLINED_FUNCTION_0>
c0de0236:	e8bd 401f 	ldmia.w	sp!, {r0, r1, r2, r3, r4, lr}
c0de023a:	f000 ba41 	b.w	c0de06c0 <handler_cmd_bolos_stretch>
c0de023e:	68a0      	ldr	r0, [r4, #8]
c0de0240:	2800      	cmp	r0, #0
c0de0242:	d04d      	beq.n	c0de02e0 <apdu_dispatcher+0x26e>
c0de0244:	f000 f85d 	bl	c0de0302 <OUTLINED_FUNCTION_0>
c0de0248:	a801      	add	r0, sp, #4
c0de024a:	f000 fd13 	bl	c0de0c74 <handler_cmd_Interpolate>
c0de024e:	e045      	b.n	c0de02dc <apdu_dispatcher+0x26a>
c0de0250:	68a0      	ldr	r0, [r4, #8]
c0de0252:	2800      	cmp	r0, #0
c0de0254:	d044      	beq.n	c0de02e0 <apdu_dispatcher+0x26e>
c0de0256:	f000 f854 	bl	c0de0302 <OUTLINED_FUNCTION_0>
c0de025a:	a801      	add	r0, sp, #4
c0de025c:	f000 fdbf 	bl	c0de0dde <handler_cmd_Split>
c0de0260:	e03c      	b.n	c0de02dc <apdu_dispatcher+0x26a>
c0de0262:	68a0      	ldr	r0, [r4, #8]
c0de0264:	b3e0      	cbz	r0, c0de02e0 <apdu_dispatcher+0x26e>
c0de0266:	f000 f84c 	bl	c0de0302 <OUTLINED_FUNCTION_0>
c0de026a:	a801      	add	r0, sp, #4
c0de026c:	f000 fe7f 	bl	c0de0f6e <handler_cmd_frostH>
c0de0270:	e034      	b.n	c0de02dc <apdu_dispatcher+0x26a>
c0de0272:	68a0      	ldr	r0, [r4, #8]
c0de0274:	b3a0      	cbz	r0, c0de02e0 <apdu_dispatcher+0x26e>
c0de0276:	f000 f844 	bl	c0de0302 <OUTLINED_FUNCTION_0>
c0de027a:	a801      	add	r0, sp, #4
c0de027c:	f000 fec8 	bl	c0de1010 <handler_cmd_encodeCommitment>
c0de0280:	e02c      	b.n	c0de02dc <apdu_dispatcher+0x26a>
c0de0282:	68a0      	ldr	r0, [r4, #8]
c0de0284:	b360      	cbz	r0, c0de02e0 <apdu_dispatcher+0x26e>
c0de0286:	f000 f83c 	bl	c0de0302 <OUTLINED_FUNCTION_0>
c0de028a:	a801      	add	r0, sp, #4
c0de028c:	f000 fef6 	bl	c0de107c <handler_cmd_GroupCommitment>
c0de0290:	e024      	b.n	c0de02dc <apdu_dispatcher+0x26a>
c0de0292:	68a0      	ldr	r0, [r4, #8]
c0de0294:	b320      	cbz	r0, c0de02e0 <apdu_dispatcher+0x26e>
c0de0296:	f000 f834 	bl	c0de0302 <OUTLINED_FUNCTION_0>
c0de029a:	a801      	add	r0, sp, #4
c0de029c:	f000 ff30 	bl	c0de1100 <handler_cmd_BindingFactors>
c0de02a0:	e01c      	b.n	c0de02dc <apdu_dispatcher+0x26a>
c0de02a2:	78a0      	ldrb	r0, [r4, #2]
c0de02a4:	2801      	cmp	r0, #1
c0de02a6:	d81e      	bhi.n	c0de02e6 <apdu_dispatcher+0x274>
c0de02a8:	78e0      	ldrb	r0, [r4, #3]
c0de02aa:	b9e0      	cbnz	r0, c0de02e6 <apdu_dispatcher+0x274>
c0de02ac:	68a0      	ldr	r0, [r4, #8]
c0de02ae:	b1b8      	cbz	r0, c0de02e0 <apdu_dispatcher+0x26e>
c0de02b0:	f000 f827 	bl	c0de0302 <OUTLINED_FUNCTION_0>
c0de02b4:	a801      	add	r0, sp, #4
c0de02b6:	f000 ff97 	bl	c0de11e8 <handler_get_insecure_secret>
c0de02ba:	e00f      	b.n	c0de02dc <apdu_dispatcher+0x26a>
c0de02bc:	f44f 40da 	mov.w	r0, #27904	@ 0x6d00
c0de02c0:	e013      	b.n	c0de02ea <apdu_dispatcher+0x278>
c0de02c2:	78e0      	ldrb	r0, [r4, #3]
c0de02c4:	2880      	cmp	r0, #128	@ 0x80
c0de02c6:	d10e      	bne.n	c0de02e6 <apdu_dispatcher+0x274>
c0de02c8:	2080      	movs	r0, #128	@ 0x80
c0de02ca:	68a2      	ldr	r2, [r4, #8]
c0de02cc:	b142      	cbz	r2, c0de02e0 <apdu_dispatcher+0x26e>
c0de02ce:	9201      	str	r2, [sp, #4]
c0de02d0:	7922      	ldrb	r2, [r4, #4]
c0de02d2:	9202      	str	r2, [sp, #8]
c0de02d4:	09c2      	lsrs	r2, r0, #7
c0de02d6:	a801      	add	r0, sp, #4
c0de02d8:	f000 f8e0 	bl	c0de049c <handler_sign_tx>
c0de02dc:	b004      	add	sp, #16
c0de02de:	bd10      	pop	{r4, pc}
c0de02e0:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de02e4:	e001      	b.n	c0de02ea <apdu_dispatcher+0x278>
c0de02e6:	f646 2086 	movw	r0, #27270	@ 0x6a86
c0de02ea:	b004      	add	sp, #16
c0de02ec:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de02f0:	f000 b800 	b.w	c0de02f4 <io_send_sw>

c0de02f4 <io_send_sw>:
c0de02f4:	b580      	push	{r7, lr}
c0de02f6:	4602      	mov	r2, r0
c0de02f8:	2000      	movs	r0, #0
c0de02fa:	2100      	movs	r1, #0
c0de02fc:	f006 fa32 	bl	c0de6764 <io_send_response_buffers>
c0de0300:	bd80      	pop	{r7, pc}

c0de0302 <OUTLINED_FUNCTION_0>:
c0de0302:	9001      	str	r0, [sp, #4]
c0de0304:	7920      	ldrb	r0, [r4, #4]
c0de0306:	9002      	str	r0, [sp, #8]
c0de0308:	4770      	bx	lr
	...

c0de030c <app_main>:
c0de030c:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de030e:	f006 fa0b 	bl	c0de6728 <io_init>
c0de0312:	481e      	ldr	r0, [pc, #120]	@ (c0de038c <app_main+0x80>)
c0de0314:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de0318:	b908      	cbnz	r0, c0de031e <app_main+0x12>
c0de031a:	f001 fa55 	bl	c0de17c8 <ui_menu_main>
c0de031e:	481c      	ldr	r0, [pc, #112]	@ (c0de0390 <app_main+0x84>)
c0de0320:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de0324:	4448      	add	r0, r9
c0de0326:	f007 f9e5 	bl	c0de76f4 <explicit_bzero>
c0de032a:	481b      	ldr	r0, [pc, #108]	@ (c0de0398 <app_main+0x8c>)
c0de032c:	4478      	add	r0, pc
c0de032e:	f006 fec7 	bl	c0de70c0 <pic>
c0de0332:	7880      	ldrb	r0, [r0, #2]
c0de0334:	2801      	cmp	r0, #1
c0de0336:	d00d      	beq.n	c0de0354 <app_main+0x48>
c0de0338:	2001      	movs	r0, #1
c0de033a:	f88d 0002 	strb.w	r0, [sp, #2]
c0de033e:	2000      	movs	r0, #0
c0de0340:	f8ad 0000 	strh.w	r0, [sp]
c0de0344:	4815      	ldr	r0, [pc, #84]	@ (c0de039c <app_main+0x90>)
c0de0346:	4478      	add	r0, pc
c0de0348:	f006 feba 	bl	c0de70c0 <pic>
c0de034c:	4669      	mov	r1, sp
c0de034e:	2203      	movs	r2, #3
c0de0350:	f006 fee6 	bl	c0de7120 <nvm_write>
c0de0354:	4d0f      	ldr	r5, [pc, #60]	@ (c0de0394 <app_main+0x88>)
c0de0356:	ac01      	add	r4, sp, #4
c0de0358:	f006 f9ee 	bl	c0de6738 <io_recv_command>
c0de035c:	2800      	cmp	r0, #0
c0de035e:	d414      	bmi.n	c0de038a <app_main+0x7e>
c0de0360:	4602      	mov	r2, r0
c0de0362:	eb09 0105 	add.w	r1, r9, r5
c0de0366:	4620      	mov	r0, r4
c0de0368:	f006 fae6 	bl	c0de6938 <apdu_parser>
c0de036c:	b130      	cbz	r0, c0de037c <app_main+0x70>
c0de036e:	4620      	mov	r0, r4
c0de0370:	f7ff fe7f 	bl	c0de0072 <apdu_dispatcher>
c0de0374:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de0378:	dcee      	bgt.n	c0de0358 <app_main+0x4c>
c0de037a:	e006      	b.n	c0de038a <app_main+0x7e>
c0de037c:	2000      	movs	r0, #0
c0de037e:	2100      	movs	r1, #0
c0de0380:	f646 2287 	movw	r2, #27271	@ 0x6a87
c0de0384:	f006 f9ee 	bl	c0de6764 <io_send_response_buffers>
c0de0388:	e7e6      	b.n	c0de0358 <app_main+0x4c>
c0de038a:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de038c:	000008cc 	.word	0x000008cc
c0de0390:	00000000 	.word	0x00000000
c0de0394:	00000407 	.word	0x00000407
c0de0398:	000088d0 	.word	0x000088d0
c0de039c:	000088b6 	.word	0x000088b6

c0de03a0 <handler_get_app_name>:
c0de03a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de03a2:	4808      	ldr	r0, [pc, #32]	@ (c0de03c4 <handler_get_app_name+0x24>)
c0de03a4:	4478      	add	r0, pc
c0de03a6:	f006 fe8b 	bl	c0de70c0 <pic>
c0de03aa:	2100      	movs	r1, #0
c0de03ac:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de03b0:	9103      	str	r1, [sp, #12]
c0de03b2:	2107      	movs	r1, #7
c0de03b4:	e9cd 0101 	strd	r0, r1, [sp, #4]
c0de03b8:	a801      	add	r0, sp, #4
c0de03ba:	2101      	movs	r1, #1
c0de03bc:	f006 f9d2 	bl	c0de6764 <io_send_response_buffers>
c0de03c0:	b004      	add	sp, #16
c0de03c2:	bd80      	pop	{r7, pc}
c0de03c4:	0000792c 	.word	0x0000792c

c0de03c8 <handler_get_public_key>:
c0de03c8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de03ca:	b085      	sub	sp, #20
c0de03cc:	4f23      	ldr	r7, [pc, #140]	@ (c0de045c <handler_get_public_key+0x94>)
c0de03ce:	460c      	mov	r4, r1
c0de03d0:	4605      	mov	r5, r0
c0de03d2:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de03d6:	eb09 0607 	add.w	r6, r9, r7
c0de03da:	4630      	mov	r0, r6
c0de03dc:	f007 f98a 	bl	c0de76f4 <explicit_bzero>
c0de03e0:	2000      	movs	r0, #0
c0de03e2:	f506 7135 	add.w	r1, r6, #724	@ 0x2d4
c0de03e6:	f809 0007 	strb.w	r0, [r9, r7]
c0de03ea:	f886 02a8 	strb.w	r0, [r6, #680]	@ 0x2a8
c0de03ee:	4628      	mov	r0, r5
c0de03f0:	f005 ff66 	bl	c0de62c0 <buffer_read_u8>
c0de03f4:	b308      	cbz	r0, c0de043a <handler_get_public_key+0x72>
c0de03f6:	eb09 0007 	add.w	r0, r9, r7
c0de03fa:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de03fe:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de0402:	4628      	mov	r0, r5
c0de0404:	f005 ffaf 	bl	c0de6366 <buffer_read_bip32_path>
c0de0408:	b1b8      	cbz	r0, c0de043a <handler_get_public_key+0x72>
c0de040a:	eb09 0007 	add.w	r0, r9, r7
c0de040e:	2100      	movs	r1, #0
c0de0410:	2205      	movs	r2, #5
c0de0412:	f890 32d4 	ldrb.w	r3, [r0, #724]	@ 0x2d4
c0de0416:	e9cd 2102 	strd	r2, r1, [sp, #8]
c0de041a:	9104      	str	r1, [sp, #16]
c0de041c:	f100 0549 	add.w	r5, r0, #73	@ 0x49
c0de0420:	f100 0608 	add.w	r6, r0, #8
c0de0424:	f500 722b 	add.w	r2, r0, #684	@ 0x2ac
c0de0428:	2000      	movs	r0, #0
c0de042a:	2121      	movs	r1, #33	@ 0x21
c0de042c:	e9cd 6500 	strd	r6, r5, [sp]
c0de0430:	f006 f85a 	bl	c0de64e8 <bip32_derive_with_seed_get_pubkey_256>
c0de0434:	b140      	cbz	r0, c0de0448 <handler_get_public_key+0x80>
c0de0436:	b280      	uxth	r0, r0
c0de0438:	e001      	b.n	c0de043e <handler_get_public_key+0x76>
c0de043a:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de043e:	b005      	add	sp, #20
c0de0440:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de0444:	f000 b80c 	b.w	c0de0460 <io_send_sw>
c0de0448:	2c00      	cmp	r4, #0
c0de044a:	b005      	add	sp, #20
c0de044c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de0450:	bf08      	it	eq
c0de0452:	f000 bf83 	beq.w	c0de135c <helper_send_response_pubkey>
c0de0456:	f001 ba9b 	b.w	c0de1990 <ui_display_address>
c0de045a:	bf00      	nop
c0de045c:	00000000 	.word	0x00000000

c0de0460 <io_send_sw>:
c0de0460:	b580      	push	{r7, lr}
c0de0462:	4602      	mov	r2, r0
c0de0464:	2000      	movs	r0, #0
c0de0466:	2100      	movs	r1, #0
c0de0468:	f006 f97c 	bl	c0de6764 <io_send_response_buffers>
c0de046c:	bd80      	pop	{r7, pc}

c0de046e <handler_get_version>:
c0de046e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de0470:	2000      	movs	r0, #0
c0de0472:	2101      	movs	r1, #1
c0de0474:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0478:	f88d 0002 	strb.w	r0, [sp, #2]
c0de047c:	f88d 0001 	strb.w	r0, [sp, #1]
c0de0480:	9003      	str	r0, [sp, #12]
c0de0482:	2003      	movs	r0, #3
c0de0484:	f88d 1003 	strb.w	r1, [sp, #3]
c0de0488:	2101      	movs	r1, #1
c0de048a:	9002      	str	r0, [sp, #8]
c0de048c:	f10d 0001 	add.w	r0, sp, #1
c0de0490:	9001      	str	r0, [sp, #4]
c0de0492:	a801      	add	r0, sp, #4
c0de0494:	f006 f966 	bl	c0de6764 <io_send_response_buffers>
c0de0498:	b004      	add	sp, #16
c0de049a:	bd80      	pop	{r7, pc}

c0de049c <handler_sign_tx>:
c0de049c:	b570      	push	{r4, r5, r6, lr}
c0de049e:	b086      	sub	sp, #24
c0de04a0:	4e54      	ldr	r6, [pc, #336]	@ (c0de05f4 <handler_sign_tx+0x158>)
c0de04a2:	4604      	mov	r4, r0
c0de04a4:	b191      	cbz	r1, c0de04cc <handler_sign_tx+0x30>
c0de04a6:	eb09 0006 	add.w	r0, r9, r6
c0de04aa:	f890 02a8 	ldrb.w	r0, [r0, #680]	@ 0x2a8
c0de04ae:	2801      	cmp	r0, #1
c0de04b0:	d12c      	bne.n	c0de050c <handler_sign_tx+0x70>
c0de04b2:	eb09 0006 	add.w	r0, r9, r6
c0de04b6:	4615      	mov	r5, r2
c0de04b8:	6862      	ldr	r2, [r4, #4]
c0de04ba:	f8d0 0208 	ldr.w	r0, [r0, #520]	@ 0x208
c0de04be:	1811      	adds	r1, r2, r0
c0de04c0:	f5b1 7fff 	cmp.w	r1, #510	@ 0x1fe
c0de04c4:	d925      	bls.n	c0de0512 <handler_sign_tx+0x76>
c0de04c6:	f24b 0004 	movw	r0, #45060	@ 0xb004
c0de04ca:	e039      	b.n	c0de0540 <handler_sign_tx+0xa4>
c0de04cc:	eb09 0506 	add.w	r5, r9, r6
c0de04d0:	f44f 7136 	mov.w	r1, #728	@ 0x2d8
c0de04d4:	4628      	mov	r0, r5
c0de04d6:	f007 f90d 	bl	c0de76f4 <explicit_bzero>
c0de04da:	2000      	movs	r0, #0
c0de04dc:	f505 7135 	add.w	r1, r5, #724	@ 0x2d4
c0de04e0:	f809 0006 	strb.w	r0, [r9, r6]
c0de04e4:	2001      	movs	r0, #1
c0de04e6:	f885 02a8 	strb.w	r0, [r5, #680]	@ 0x2a8
c0de04ea:	4620      	mov	r0, r4
c0de04ec:	f005 fee8 	bl	c0de62c0 <buffer_read_u8>
c0de04f0:	b148      	cbz	r0, c0de0506 <handler_sign_tx+0x6a>
c0de04f2:	eb09 0006 	add.w	r0, r9, r6
c0de04f6:	f890 22d4 	ldrb.w	r2, [r0, #724]	@ 0x2d4
c0de04fa:	f500 712b 	add.w	r1, r0, #684	@ 0x2ac
c0de04fe:	4620      	mov	r0, r4
c0de0500:	f005 ff31 	bl	c0de6366 <buffer_read_bip32_path>
c0de0504:	b9b8      	cbnz	r0, c0de0536 <handler_sign_tx+0x9a>
c0de0506:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de050a:	e019      	b.n	c0de0540 <handler_sign_tx+0xa4>
c0de050c:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de0510:	e016      	b.n	c0de0540 <handler_sign_tx+0xa4>
c0de0512:	eb09 0106 	add.w	r1, r9, r6
c0de0516:	4408      	add	r0, r1
c0de0518:	f100 0108 	add.w	r1, r0, #8
c0de051c:	4620      	mov	r0, r4
c0de051e:	f005 ff4c 	bl	c0de63ba <buffer_move>
c0de0522:	b158      	cbz	r0, c0de053c <handler_sign_tx+0xa0>
c0de0524:	eb09 0106 	add.w	r1, r9, r6
c0de0528:	6862      	ldr	r2, [r4, #4]
c0de052a:	f8d1 0208 	ldr.w	r0, [r1, #520]	@ 0x208
c0de052e:	4410      	add	r0, r2
c0de0530:	f8c1 0208 	str.w	r0, [r1, #520]	@ 0x208
c0de0534:	b14d      	cbz	r5, c0de054a <handler_sign_tx+0xae>
c0de0536:	f44f 4010 	mov.w	r0, #36864	@ 0x9000
c0de053a:	e001      	b.n	c0de0540 <handler_sign_tx+0xa4>
c0de053c:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de0540:	b006      	add	sp, #24
c0de0542:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de0546:	f000 b85d 	b.w	c0de0604 <io_send_sw>
c0de054a:	2100      	movs	r1, #0
c0de054c:	e9cd 0102 	strd	r0, r1, [sp, #8]
c0de0550:	eb09 0006 	add.w	r0, r9, r6
c0de0554:	f100 0108 	add.w	r1, r0, #8
c0de0558:	9101      	str	r1, [sp, #4]
c0de055a:	f500 7104 	add.w	r1, r0, #528	@ 0x210
c0de055e:	a801      	add	r0, sp, #4
c0de0560:	f001 f852 	bl	c0de1608 <transaction_deserialize>
c0de0564:	2801      	cmp	r0, #1
c0de0566:	d114      	bne.n	c0de0592 <handler_sign_tx+0xf6>
c0de0568:	2001      	movs	r0, #1
c0de056a:	f809 0006 	strb.w	r0, [r9, r6]
c0de056e:	eb09 0006 	add.w	r0, r9, r6
c0de0572:	f8d0 1208 	ldr.w	r1, [r0, #520]	@ 0x208
c0de0576:	f500 720e 	add.w	r2, r0, #568	@ 0x238
c0de057a:	9105      	str	r1, [sp, #20]
c0de057c:	f100 0108 	add.w	r1, r0, #8
c0de0580:	9104      	str	r1, [sp, #16]
c0de0582:	a804      	add	r0, sp, #16
c0de0584:	2101      	movs	r1, #1
c0de0586:	f006 fb4d 	bl	c0de6c24 <cx_keccak_256_hash_iovec>
c0de058a:	b140      	cbz	r0, c0de059e <handler_sign_tx+0x102>
c0de058c:	f24b 0006 	movw	r0, #45062	@ 0xb006
c0de0590:	e001      	b.n	c0de0596 <handler_sign_tx+0xfa>
c0de0592:	f24b 0005 	movw	r0, #45061	@ 0xb005
c0de0596:	f000 f835 	bl	c0de0604 <io_send_sw>
c0de059a:	b006      	add	sp, #24
c0de059c:	bd70      	pop	{r4, r5, r6, pc}
c0de059e:	4816      	ldr	r0, [pc, #88]	@ (c0de05f8 <handler_sign_tx+0x15c>)
c0de05a0:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de05a4:	b1a0      	cbz	r0, c0de05d0 <handler_sign_tx+0x134>
c0de05a6:	4815      	ldr	r0, [pc, #84]	@ (c0de05fc <handler_sign_tx+0x160>)
c0de05a8:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de05ac:	b9f9      	cbnz	r1, c0de05ee <handler_sign_tx+0x152>
c0de05ae:	eb09 0406 	add.w	r4, r9, r6
c0de05b2:	2101      	movs	r1, #1
c0de05b4:	f809 1000 	strb.w	r1, [r9, r0]
c0de05b8:	f504 7406 	add.w	r4, r4, #536	@ 0x218
c0de05bc:	cc1f      	ldmia	r4, {r0, r1, r2, r3, r4}
c0de05be:	9400      	str	r4, [sp, #0]
c0de05c0:	f000 ffe2 	bl	c0de1588 <swap_check_validity>
c0de05c4:	b110      	cbz	r0, c0de05cc <handler_sign_tx+0x130>
c0de05c6:	2001      	movs	r0, #1
c0de05c8:	f001 f8a8 	bl	c0de171c <validate_transaction>
c0de05cc:	2000      	movs	r0, #0
c0de05ce:	e7e4      	b.n	c0de059a <handler_sign_tx+0xfe>
c0de05d0:	eb09 0006 	add.w	r0, r9, r6
c0de05d4:	f8d0 022c 	ldr.w	r0, [r0, #556]	@ 0x22c
c0de05d8:	4909      	ldr	r1, [pc, #36]	@ (c0de0600 <handler_sign_tx+0x164>)
c0de05da:	4479      	add	r1, pc
c0de05dc:	f007 f8ce 	bl	c0de777c <strcmp>
c0de05e0:	b110      	cbz	r0, c0de05e8 <handler_sign_tx+0x14c>
c0de05e2:	f001 faf6 	bl	c0de1bd2 <ui_display_transaction>
c0de05e6:	e7d8      	b.n	c0de059a <handler_sign_tx+0xfe>
c0de05e8:	f001 faf0 	bl	c0de1bcc <ui_display_blind_signed_transaction>
c0de05ec:	e7d5      	b.n	c0de059a <handler_sign_tx+0xfe>
c0de05ee:	20ff      	movs	r0, #255	@ 0xff
c0de05f0:	f006 ff2c 	bl	c0de744c <os_sched_exit>
c0de05f4:	00000000 	.word	0x00000000
c0de05f8:	000008cc 	.word	0x000008cc
c0de05fc:	000008cd 	.word	0x000008cd
c0de0600:	0000740f 	.word	0x0000740f

c0de0604 <io_send_sw>:
c0de0604:	b580      	push	{r7, lr}
c0de0606:	4602      	mov	r2, r0
c0de0608:	2000      	movs	r0, #0
c0de060a:	2100      	movs	r1, #0
c0de060c:	f006 f8aa 	bl	c0de6764 <io_send_response_buffers>
c0de0610:	bd80      	pop	{r7, pc}

c0de0612 <handler_cmd_blake2b512>:
c0de0612:	b510      	push	{r4, lr}
c0de0614:	b0d0      	sub	sp, #320	@ 0x140
c0de0616:	4604      	mov	r4, r0
c0de0618:	6840      	ldr	r0, [r0, #4]
c0de061a:	2820      	cmp	r0, #32
c0de061c:	d10b      	bne.n	c0de0636 <handler_cmd_blake2b512+0x24>
c0de061e:	6820      	ldr	r0, [r4, #0]
c0de0620:	a940      	add	r1, sp, #256	@ 0x100
c0de0622:	2220      	movs	r2, #32
c0de0624:	f001 fad8 	bl	c0de1bd8 <zkn_prv_hash>
c0de0628:	b988      	cbnz	r0, c0de064e <handler_cmd_blake2b512+0x3c>
c0de062a:	a840      	add	r0, sp, #256	@ 0x100
c0de062c:	2140      	movs	r1, #64	@ 0x40
c0de062e:	f000 f817 	bl	c0de0660 <io_send_response_pointer>
c0de0632:	2000      	movs	r0, #0
c0de0634:	e00d      	b.n	c0de0652 <handler_cmd_blake2b512+0x40>
c0de0636:	4668      	mov	r0, sp
c0de0638:	2109      	movs	r1, #9
c0de063a:	2240      	movs	r2, #64	@ 0x40
c0de063c:	f006 fb20 	bl	c0de6c80 <cx_hash_init_ex>
c0de0640:	b928      	cbnz	r0, c0de064e <handler_cmd_blake2b512+0x3c>
c0de0642:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de0646:	4668      	mov	r0, sp
c0de0648:	f006 fb1f 	bl	c0de6c8a <cx_hash_update>
c0de064c:	b118      	cbz	r0, c0de0656 <handler_cmd_blake2b512+0x44>
c0de064e:	f000 fe53 	bl	c0de12f8 <OUTLINED_FUNCTION_1>
c0de0652:	b050      	add	sp, #320	@ 0x140
c0de0654:	bd10      	pop	{r4, pc}
c0de0656:	4668      	mov	r0, sp
c0de0658:	a940      	add	r1, sp, #256	@ 0x100
c0de065a:	f006 fb0c 	bl	c0de6c76 <cx_hash_final>
c0de065e:	e7e3      	b.n	c0de0628 <handler_cmd_blake2b512+0x16>

c0de0660 <io_send_response_pointer>:
c0de0660:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de0662:	2200      	movs	r2, #0
c0de0664:	ab01      	add	r3, sp, #4
c0de0666:	c307      	stmia	r3!, {r0, r1, r2}
c0de0668:	a801      	add	r0, sp, #4
c0de066a:	2101      	movs	r1, #1
c0de066c:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de0670:	f006 f878 	bl	c0de6764 <io_send_response_buffers>
c0de0674:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}

c0de0676 <io_send_sw>:
c0de0676:	b580      	push	{r7, lr}
c0de0678:	4602      	mov	r2, r0
c0de067a:	2000      	movs	r0, #0
c0de067c:	2100      	movs	r1, #0
c0de067e:	f006 f871 	bl	c0de6764 <io_send_response_buffers>
c0de0682:	bd80      	pop	{r7, pc}

c0de0684 <handler_cmd_keccakH>:
c0de0684:	b510      	push	{r4, lr}
c0de0686:	b0f2      	sub	sp, #456	@ 0x1c8
c0de0688:	4604      	mov	r4, r0
c0de068a:	4668      	mov	r0, sp
c0de068c:	2106      	movs	r1, #6
c0de068e:	2220      	movs	r2, #32
c0de0690:	f006 faf6 	bl	c0de6c80 <cx_hash_init_ex>
c0de0694:	b950      	cbnz	r0, c0de06ac <handler_cmd_keccakH+0x28>
c0de0696:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de069a:	4668      	mov	r0, sp
c0de069c:	f006 faf5 	bl	c0de6c8a <cx_hash_update>
c0de06a0:	b920      	cbnz	r0, c0de06ac <handler_cmd_keccakH+0x28>
c0de06a2:	4668      	mov	r0, sp
c0de06a4:	a96a      	add	r1, sp, #424	@ 0x1a8
c0de06a6:	f006 fae6 	bl	c0de6c76 <cx_hash_final>
c0de06aa:	b118      	cbz	r0, c0de06b4 <handler_cmd_keccakH+0x30>
c0de06ac:	f000 fe24 	bl	c0de12f8 <OUTLINED_FUNCTION_1>
c0de06b0:	b072      	add	sp, #456	@ 0x1c8
c0de06b2:	bd10      	pop	{r4, pc}
c0de06b4:	a86a      	add	r0, sp, #424	@ 0x1a8
c0de06b6:	f000 fe4b 	bl	c0de1350 <OUTLINED_FUNCTION_11>
c0de06ba:	2000      	movs	r0, #0
c0de06bc:	e7f8      	b.n	c0de06b0 <handler_cmd_keccakH+0x2c>
	...

c0de06c0 <handler_cmd_bolos_stretch>:
c0de06c0:	b510      	push	{r4, lr}
c0de06c2:	b0a4      	sub	sp, #144	@ 0x90
c0de06c4:	f000 fe14 	bl	c0de12f0 <OUTLINED_FUNCTION_0>
c0de06c8:	bba0      	cbnz	r0, c0de0734 <handler_cmd_bolos_stretch+0x74>
c0de06ca:	ac14      	add	r4, sp, #80	@ 0x50
c0de06cc:	491e      	ldr	r1, [pc, #120]	@ (c0de0748 <handler_cmd_bolos_stretch+0x88>)
c0de06ce:	2220      	movs	r2, #32
c0de06d0:	4620      	mov	r0, r4
c0de06d2:	4479      	add	r1, pc
c0de06d4:	f006 fff6 	bl	c0de76c4 <__aeabi_memcpy>
c0de06d8:	a80c      	add	r0, sp, #48	@ 0x30
c0de06da:	491c      	ldr	r1, [pc, #112]	@ (c0de074c <handler_cmd_bolos_stretch+0x8c>)
c0de06dc:	2220      	movs	r2, #32
c0de06de:	4479      	add	r1, pc
c0de06e0:	f006 fff0 	bl	c0de76c4 <__aeabi_memcpy>
c0de06e4:	a804      	add	r0, sp, #16
c0de06e6:	491a      	ldr	r1, [pc, #104]	@ (c0de0750 <handler_cmd_bolos_stretch+0x90>)
c0de06e8:	2220      	movs	r2, #32
c0de06ea:	4479      	add	r1, pc
c0de06ec:	f006 ffea 	bl	c0de76c4 <__aeabi_memcpy>
c0de06f0:	a803      	add	r0, sp, #12
c0de06f2:	2120      	movs	r1, #32
c0de06f4:	4622      	mov	r2, r4
c0de06f6:	f000 fe13 	bl	c0de1320 <OUTLINED_FUNCTION_6>
c0de06fa:	b9d8      	cbnz	r0, c0de0734 <handler_cmd_bolos_stretch+0x74>
c0de06fc:	a802      	add	r0, sp, #8
c0de06fe:	aa0c      	add	r2, sp, #48	@ 0x30
c0de0700:	2120      	movs	r1, #32
c0de0702:	f000 fe0d 	bl	c0de1320 <OUTLINED_FUNCTION_6>
c0de0706:	b9a8      	cbnz	r0, c0de0734 <handler_cmd_bolos_stretch+0x74>
c0de0708:	a801      	add	r0, sp, #4
c0de070a:	aa04      	add	r2, sp, #16
c0de070c:	2120      	movs	r1, #32
c0de070e:	f000 fe07 	bl	c0de1320 <OUTLINED_FUNCTION_6>
c0de0712:	b978      	cbnz	r0, c0de0734 <handler_cmd_bolos_stretch+0x74>
c0de0714:	4668      	mov	r0, sp
c0de0716:	f000 fdf5 	bl	c0de1304 <OUTLINED_FUNCTION_3>
c0de071a:	b958      	cbnz	r0, c0de0734 <handler_cmd_bolos_stretch+0x74>
c0de071c:	e9dd 1302 	ldrd	r1, r3, [sp, #8]
c0de0720:	e9dd 0200 	ldrd	r0, r2, [sp]
c0de0724:	f006 fd92 	bl	c0de724c <cx_bn_mod_add>
c0de0728:	b920      	cbnz	r0, c0de0734 <handler_cmd_bolos_stretch+0x74>
c0de072a:	9800      	ldr	r0, [sp, #0]
c0de072c:	a91c      	add	r1, sp, #112	@ 0x70
c0de072e:	f000 fde6 	bl	c0de12fe <OUTLINED_FUNCTION_2>
c0de0732:	b118      	cbz	r0, c0de073c <handler_cmd_bolos_stretch+0x7c>
c0de0734:	f000 fde0 	bl	c0de12f8 <OUTLINED_FUNCTION_1>
c0de0738:	b024      	add	sp, #144	@ 0x90
c0de073a:	bd10      	pop	{r4, pc}
c0de073c:	a81c      	add	r0, sp, #112	@ 0x70
c0de073e:	f000 fe07 	bl	c0de1350 <OUTLINED_FUNCTION_11>
c0de0742:	2000      	movs	r0, #0
c0de0744:	e7f8      	b.n	c0de0738 <handler_cmd_bolos_stretch+0x78>
c0de0746:	bf00      	nop
c0de0748:	0000770a 	.word	0x0000770a
c0de074c:	0000767e 	.word	0x0000767e
c0de0750:	00007792 	.word	0x00007792

c0de0754 <handler_cmd_Poseidon>:
c0de0754:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de0758:	f5ad 7d08 	sub.w	sp, sp, #544	@ 0x220
c0de075c:	4604      	mov	r4, r0
c0de075e:	a860      	add	r0, sp, #384	@ 0x180
c0de0760:	493d      	ldr	r1, [pc, #244]	@ (c0de0858 <handler_cmd_Poseidon+0x104>)
c0de0762:	22a0      	movs	r2, #160	@ 0xa0
c0de0764:	4479      	add	r1, pc
c0de0766:	f006 ffad 	bl	c0de76c4 <__aeabi_memcpy>
c0de076a:	f000 fdc1 	bl	c0de12f0 <OUTLINED_FUNCTION_0>
c0de076e:	bb68      	cbnz	r0, c0de07cc <handler_cmd_Poseidon+0x78>
c0de0770:	2000      	movs	r0, #0
c0de0772:	a948      	add	r1, sp, #288	@ 0x120
c0de0774:	22ff      	movs	r2, #255	@ 0xff
c0de0776:	2860      	cmp	r0, #96	@ 0x60
c0de0778:	d002      	beq.n	c0de0780 <handler_cmd_Poseidon+0x2c>
c0de077a:	540a      	strb	r2, [r1, r0]
c0de077c:	3001      	adds	r0, #1
c0de077e:	e7fa      	b.n	c0de0776 <handler_cmd_Poseidon+0x22>
c0de0780:	4936      	ldr	r1, [pc, #216]	@ (c0de085c <handler_cmd_Poseidon+0x108>)
c0de0782:	466d      	mov	r5, sp
c0de0784:	2220      	movs	r2, #32
c0de0786:	4628      	mov	r0, r5
c0de0788:	4479      	add	r1, pc
c0de078a:	f006 ff9b 	bl	c0de76c4 <__aeabi_memcpy>
c0de078e:	a809      	add	r0, sp, #36	@ 0x24
c0de0790:	2120      	movs	r1, #32
c0de0792:	462a      	mov	r2, r5
c0de0794:	f000 fdc4 	bl	c0de1320 <OUTLINED_FUNCTION_6>
c0de0798:	b9c0      	cbnz	r0, c0de07cc <handler_cmd_Poseidon+0x78>
c0de079a:	a808      	add	r0, sp, #32
c0de079c:	466a      	mov	r2, sp
c0de079e:	2120      	movs	r1, #32
c0de07a0:	f000 fdbe 	bl	c0de1320 <OUTLINED_FUNCTION_6>
c0de07a4:	b990      	cbnz	r0, c0de07cc <handler_cmd_Poseidon+0x78>
c0de07a6:	a80a      	add	r0, sp, #40	@ 0x28
c0de07a8:	2120      	movs	r1, #32
c0de07aa:	f006 fd95 	bl	c0de72d8 <cx_mont_alloc>
c0de07ae:	b968      	cbnz	r0, c0de07cc <handler_cmd_Poseidon+0x78>
c0de07b0:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de07b2:	a80a      	add	r0, sp, #40	@ 0x28
c0de07b4:	f006 fd9a 	bl	c0de72ec <cx_mont_init>
c0de07b8:	b940      	cbnz	r0, c0de07cc <handler_cmd_Poseidon+0x78>
c0de07ba:	f10d 0830 	add.w	r8, sp, #48	@ 0x30
c0de07be:	ab0a      	add	r3, sp, #40	@ 0x28
c0de07c0:	2105      	movs	r1, #5
c0de07c2:	2205      	movs	r2, #5
c0de07c4:	4640      	mov	r0, r8
c0de07c6:	f002 fb4b 	bl	c0de2e60 <Poseidon_alloc_init>
c0de07ca:	b128      	cbz	r0, c0de07d8 <handler_cmd_Poseidon+0x84>
c0de07cc:	f000 fd94 	bl	c0de12f8 <OUTLINED_FUNCTION_1>
c0de07d0:	f50d 7d08 	add.w	sp, sp, #544	@ 0x220
c0de07d4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de07d8:	2700      	movs	r7, #0
c0de07da:	ae60      	add	r6, sp, #384	@ 0x180
c0de07dc:	980d      	ldr	r0, [sp, #52]	@ 0x34
c0de07de:	4287      	cmp	r7, r0
c0de07e0:	d212      	bcs.n	c0de0808 <handler_cmd_Poseidon+0xb4>
c0de07e2:	eb08 0587 	add.w	r5, r8, r7, lsl #2
c0de07e6:	4631      	mov	r1, r6
c0de07e8:	2220      	movs	r2, #32
c0de07ea:	69e8      	ldr	r0, [r5, #28]
c0de07ec:	f006 fcde 	bl	c0de71ac <cx_bn_init>
c0de07f0:	2800      	cmp	r0, #0
c0de07f2:	d1eb      	bne.n	c0de07cc <handler_cmd_Poseidon+0x78>
c0de07f4:	69e8      	ldr	r0, [r5, #28]
c0de07f6:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de07f8:	4601      	mov	r1, r0
c0de07fa:	f006 fd81 	bl	c0de7300 <cx_mont_to_montgomery>
c0de07fe:	3701      	adds	r7, #1
c0de0800:	3620      	adds	r6, #32
c0de0802:	2800      	cmp	r0, #0
c0de0804:	d0ea      	beq.n	c0de07dc <handler_cmd_Poseidon+0x88>
c0de0806:	e7e1      	b.n	c0de07cc <handler_cmd_Poseidon+0x78>
c0de0808:	aa08      	add	r2, sp, #32
c0de080a:	4640      	mov	r0, r8
c0de080c:	2100      	movs	r1, #0
c0de080e:	2301      	movs	r3, #1
c0de0810:	f002 fb8c 	bl	c0de2f2c <Poseidon>
c0de0814:	6820      	ldr	r0, [r4, #0]
c0de0816:	9a11      	ldr	r2, [sp, #68]	@ 0x44
c0de0818:	7800      	ldrb	r0, [r0, #0]
c0de081a:	eb08 0480 	add.w	r4, r8, r0, lsl #2
c0de081e:	f854 0f18 	ldr.w	r0, [r4, #24]!
c0de0822:	4601      	mov	r1, r0
c0de0824:	f006 fd78 	bl	c0de7318 <cx_mont_from_montgomery>
c0de0828:	2800      	cmp	r0, #0
c0de082a:	d1cf      	bne.n	c0de07cc <handler_cmd_Poseidon+0x78>
c0de082c:	6820      	ldr	r0, [r4, #0]
c0de082e:	a948      	add	r1, sp, #288	@ 0x120
c0de0830:	f000 fd65 	bl	c0de12fe <OUTLINED_FUNCTION_2>
c0de0834:	2800      	cmp	r0, #0
c0de0836:	d1c9      	bne.n	c0de07cc <handler_cmd_Poseidon+0x78>
c0de0838:	a848      	add	r0, sp, #288	@ 0x120
c0de083a:	2160      	movs	r1, #96	@ 0x60
c0de083c:	f7ff ff10 	bl	c0de0660 <io_send_response_pointer>
c0de0840:	a808      	add	r0, sp, #32
c0de0842:	f006 fc9f 	bl	c0de7184 <cx_bn_destroy>
c0de0846:	2800      	cmp	r0, #0
c0de0848:	d1c0      	bne.n	c0de07cc <handler_cmd_Poseidon+0x78>
c0de084a:	f006 fc7d 	bl	c0de7148 <cx_bn_unlock>
c0de084e:	2800      	cmp	r0, #0
c0de0850:	d1bc      	bne.n	c0de07cc <handler_cmd_Poseidon+0x78>
c0de0852:	2000      	movs	r0, #0
c0de0854:	e7bc      	b.n	c0de07d0 <handler_cmd_Poseidon+0x7c>
c0de0856:	bf00      	nop
c0de0858:	000077f8 	.word	0x000077f8
c0de085c:	00007754 	.word	0x00007754

c0de0860 <handler_cmd_Poseidon_ithRC>:
c0de0860:	b570      	push	{r4, r5, r6, lr}
c0de0862:	b0d0      	sub	sp, #320	@ 0x140
c0de0864:	4604      	mov	r4, r0
c0de0866:	f000 fd43 	bl	c0de12f0 <OUTLINED_FUNCTION_0>
c0de086a:	bba0      	cbnz	r0, c0de08d6 <handler_cmd_Poseidon_ithRC+0x76>
c0de086c:	a848      	add	r0, sp, #288	@ 0x120
c0de086e:	491d      	ldr	r1, [pc, #116]	@ (c0de08e4 <handler_cmd_Poseidon_ithRC+0x84>)
c0de0870:	2220      	movs	r2, #32
c0de0872:	4479      	add	r1, pc
c0de0874:	f006 ff26 	bl	c0de76c4 <__aeabi_memcpy>
c0de0878:	ad01      	add	r5, sp, #4
c0de087a:	491b      	ldr	r1, [pc, #108]	@ (c0de08e8 <handler_cmd_Poseidon_ithRC+0x88>)
c0de087c:	2220      	movs	r2, #32
c0de087e:	4628      	mov	r0, r5
c0de0880:	4479      	add	r1, pc
c0de0882:	f006 ff1f 	bl	c0de76c4 <__aeabi_memcpy>
c0de0886:	a809      	add	r0, sp, #36	@ 0x24
c0de0888:	2120      	movs	r1, #32
c0de088a:	462a      	mov	r2, r5
c0de088c:	f000 fd48 	bl	c0de1320 <OUTLINED_FUNCTION_6>
c0de0890:	bb08      	cbnz	r0, c0de08d6 <handler_cmd_Poseidon_ithRC+0x76>
c0de0892:	a80a      	add	r0, sp, #40	@ 0x28
c0de0894:	2120      	movs	r1, #32
c0de0896:	f006 fd1f 	bl	c0de72d8 <cx_mont_alloc>
c0de089a:	b9e0      	cbnz	r0, c0de08d6 <handler_cmd_Poseidon_ithRC+0x76>
c0de089c:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de089e:	a80a      	add	r0, sp, #40	@ 0x28
c0de08a0:	f006 fd24 	bl	c0de72ec <cx_mont_init>
c0de08a4:	b9b8      	cbnz	r0, c0de08d6 <handler_cmd_Poseidon_ithRC+0x76>
c0de08a6:	a80c      	add	r0, sp, #48	@ 0x30
c0de08a8:	ab0a      	add	r3, sp, #40	@ 0x28
c0de08aa:	2105      	movs	r1, #5
c0de08ac:	2205      	movs	r2, #5
c0de08ae:	f002 fad7 	bl	c0de2e60 <Poseidon_alloc_init>
c0de08b2:	b980      	cbnz	r0, c0de08d6 <handler_cmd_Poseidon_ithRC+0x76>
c0de08b4:	6820      	ldr	r0, [r4, #0]
c0de08b6:	7806      	ldrb	r6, [r0, #0]
c0de08b8:	ac0c      	add	r4, sp, #48	@ 0x30
c0de08ba:	ad48      	add	r5, sp, #288	@ 0x120
c0de08bc:	b12e      	cbz	r6, c0de08ca <handler_cmd_Poseidon_ithRC+0x6a>
c0de08be:	4620      	mov	r0, r4
c0de08c0:	4629      	mov	r1, r5
c0de08c2:	f002 fac9 	bl	c0de2e58 <Poseidon_getNext_RC>
c0de08c6:	3e01      	subs	r6, #1
c0de08c8:	e7f8      	b.n	c0de08bc <handler_cmd_Poseidon_ithRC+0x5c>
c0de08ca:	a848      	add	r0, sp, #288	@ 0x120
c0de08cc:	f000 fd40 	bl	c0de1350 <OUTLINED_FUNCTION_11>
c0de08d0:	f006 fc3a 	bl	c0de7148 <cx_bn_unlock>
c0de08d4:	b118      	cbz	r0, c0de08de <handler_cmd_Poseidon_ithRC+0x7e>
c0de08d6:	f000 fd0f 	bl	c0de12f8 <OUTLINED_FUNCTION_1>
c0de08da:	b050      	add	sp, #320	@ 0x140
c0de08dc:	bd70      	pop	{r4, r5, r6, pc}
c0de08de:	2000      	movs	r0, #0
c0de08e0:	e7fb      	b.n	c0de08da <handler_cmd_Poseidon_ithRC+0x7a>
c0de08e2:	bf00      	nop
c0de08e4:	000074ca 	.word	0x000074ca
c0de08e8:	0000765c 	.word	0x0000765c

c0de08ec <handler_cmd_tEddsaPoseidon_Kpub>:
c0de08ec:	b5b0      	push	{r4, r5, r7, lr}
c0de08ee:	f5ad 7d1a 	sub.w	sp, sp, #616	@ 0x268
c0de08f2:	6801      	ldr	r1, [r0, #0]
c0de08f4:	2200      	movs	r2, #0
c0de08f6:	23ff      	movs	r3, #255	@ 0xff
c0de08f8:	780d      	ldrb	r5, [r1, #0]
c0de08fa:	ac5a      	add	r4, sp, #360	@ 0x168
c0de08fc:	f5b2 7f80 	cmp.w	r2, #256	@ 0x100
c0de0900:	d002      	beq.n	c0de0908 <handler_cmd_tEddsaPoseidon_Kpub+0x1c>
c0de0902:	54a3      	strb	r3, [r4, r2]
c0de0904:	3201      	adds	r2, #1
c0de0906:	e7f9      	b.n	c0de08fc <handler_cmd_tEddsaPoseidon_Kpub+0x10>
c0de0908:	6840      	ldr	r0, [r0, #4]
c0de090a:	3101      	adds	r1, #1
c0de090c:	aa1a      	add	r2, sp, #104	@ 0x68
c0de090e:	3801      	subs	r0, #1
c0de0910:	b128      	cbz	r0, c0de091e <handler_cmd_tEddsaPoseidon_Kpub+0x32>
c0de0912:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de0916:	3801      	subs	r0, #1
c0de0918:	f802 3b01 	strb.w	r3, [r2], #1
c0de091c:	e7f8      	b.n	c0de0910 <handler_cmd_tEddsaPoseidon_Kpub+0x24>
c0de091e:	f000 fce7 	bl	c0de12f0 <OUTLINED_FUNCTION_0>
c0de0922:	b9e8      	cbnz	r0, c0de0960 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0924:	a804      	add	r0, sp, #16
c0de0926:	f000 fd16 	bl	c0de1356 <OUTLINED_FUNCTION_12>
c0de092a:	b9c8      	cbnz	r0, c0de0960 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de092c:	a804      	add	r0, sp, #16
c0de092e:	a901      	add	r1, sp, #4
c0de0930:	f001 fd7a 	bl	c0de2428 <tEdwards_alloc>
c0de0934:	b9a0      	cbnz	r0, c0de0960 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0936:	a804      	add	r0, sp, #16
c0de0938:	a91a      	add	r1, sp, #104	@ 0x68
c0de093a:	aa01      	add	r2, sp, #4
c0de093c:	f001 f982 	bl	c0de1c44 <zkn_prv2pub>
c0de0940:	b970      	cbnz	r0, c0de0960 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0942:	a804      	add	r0, sp, #16
c0de0944:	f104 0320 	add.w	r3, r4, #32
c0de0948:	a901      	add	r1, sp, #4
c0de094a:	f000 fcfe 	bl	c0de134a <OUTLINED_FUNCTION_10>
c0de094e:	b938      	cbnz	r0, c0de0960 <handler_cmd_tEddsaPoseidon_Kpub+0x74>
c0de0950:	9804      	ldr	r0, [sp, #16]
c0de0952:	0041      	lsls	r1, r0, #1
c0de0954:	a85a      	add	r0, sp, #360	@ 0x168
c0de0956:	f7ff fe83 	bl	c0de0660 <io_send_response_pointer>
c0de095a:	f006 fbf5 	bl	c0de7148 <cx_bn_unlock>
c0de095e:	b120      	cbz	r0, c0de096a <handler_cmd_tEddsaPoseidon_Kpub+0x7e>
c0de0960:	f000 fcca 	bl	c0de12f8 <OUTLINED_FUNCTION_1>
c0de0964:	f50d 7d1a 	add.w	sp, sp, #616	@ 0x268
c0de0968:	bdb0      	pop	{r4, r5, r7, pc}
c0de096a:	2000      	movs	r0, #0
c0de096c:	e7fa      	b.n	c0de0964 <handler_cmd_tEddsaPoseidon_Kpub+0x78>

c0de096e <handler_cmd_tEddsaPoseidon_Sign>:
c0de096e:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0970:	f5ad 7d2b 	sub.w	sp, sp, #684	@ 0x2ac
c0de0974:	4606      	mov	r6, r0
c0de0976:	6800      	ldr	r0, [r0, #0]
c0de0978:	2100      	movs	r1, #0
c0de097a:	22ff      	movs	r2, #255	@ 0xff
c0de097c:	7805      	ldrb	r5, [r0, #0]
c0de097e:	ac6b      	add	r4, sp, #428	@ 0x1ac
c0de0980:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de0984:	d002      	beq.n	c0de098c <handler_cmd_tEddsaPoseidon_Sign+0x1e>
c0de0986:	5462      	strb	r2, [r4, r1]
c0de0988:	3101      	adds	r1, #1
c0de098a:	e7f9      	b.n	c0de0980 <handler_cmd_tEddsaPoseidon_Sign+0x12>
c0de098c:	6871      	ldr	r1, [r6, #4]
c0de098e:	3001      	adds	r0, #1
c0de0990:	aa2b      	add	r2, sp, #172	@ 0xac
c0de0992:	3901      	subs	r1, #1
c0de0994:	b129      	cbz	r1, c0de09a2 <handler_cmd_tEddsaPoseidon_Sign+0x34>
c0de0996:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de099a:	3901      	subs	r1, #1
c0de099c:	f802 3b01 	strb.w	r3, [r2], #1
c0de09a0:	e7f8      	b.n	c0de0994 <handler_cmd_tEddsaPoseidon_Sign+0x26>
c0de09a2:	f000 fca5 	bl	c0de12f0 <OUTLINED_FUNCTION_0>
c0de09a6:	bba0      	cbnz	r0, c0de0a12 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de09a8:	6830      	ldr	r0, [r6, #0]
c0de09aa:	aa0a      	add	r2, sp, #40	@ 0x28
c0de09ac:	2100      	movs	r1, #0
c0de09ae:	ab02      	add	r3, sp, #8
c0de09b0:	2920      	cmp	r1, #32
c0de09b2:	d007      	beq.n	c0de09c4 <handler_cmd_tEddsaPoseidon_Sign+0x56>
c0de09b4:	1846      	adds	r6, r0, r1
c0de09b6:	7877      	ldrb	r7, [r6, #1]
c0de09b8:	5457      	strb	r7, [r2, r1]
c0de09ba:	f896 6021 	ldrb.w	r6, [r6, #33]	@ 0x21
c0de09be:	545e      	strb	r6, [r3, r1]
c0de09c0:	3101      	adds	r1, #1
c0de09c2:	e7f5      	b.n	c0de09b0 <handler_cmd_tEddsaPoseidon_Sign+0x42>
c0de09c4:	a815      	add	r0, sp, #84	@ 0x54
c0de09c6:	f000 fcc6 	bl	c0de1356 <OUTLINED_FUNCTION_12>
c0de09ca:	bb10      	cbnz	r0, c0de0a12 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de09cc:	a815      	add	r0, sp, #84	@ 0x54
c0de09ce:	a912      	add	r1, sp, #72	@ 0x48
c0de09d0:	f001 fd2a 	bl	c0de2428 <tEdwards_alloc>
c0de09d4:	b9e8      	cbnz	r0, c0de0a12 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de09d6:	a815      	add	r0, sp, #84	@ 0x54
c0de09d8:	a92b      	add	r1, sp, #172	@ 0xac
c0de09da:	aa12      	add	r2, sp, #72	@ 0x48
c0de09dc:	f001 f932 	bl	c0de1c44 <zkn_prv2pub>
c0de09e0:	b9b8      	cbnz	r0, c0de0a12 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de09e2:	a815      	add	r0, sp, #84	@ 0x54
c0de09e4:	f104 0320 	add.w	r3, r4, #32
c0de09e8:	a912      	add	r1, sp, #72	@ 0x48
c0de09ea:	f000 fcae 	bl	c0de134a <OUTLINED_FUNCTION_10>
c0de09ee:	b980      	cbnz	r0, c0de0a12 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de09f0:	2020      	movs	r0, #32
c0de09f2:	e9cd 0400 	strd	r0, r4, [sp]
c0de09f6:	a815      	add	r0, sp, #84	@ 0x54
c0de09f8:	a90a      	add	r1, sp, #40	@ 0x28
c0de09fa:	aa12      	add	r2, sp, #72	@ 0x48
c0de09fc:	ab02      	add	r3, sp, #8
c0de09fe:	f001 f949 	bl	c0de1c94 <EddsaPoseidon_Sign_final>
c0de0a02:	b930      	cbnz	r0, c0de0a12 <handler_cmd_tEddsaPoseidon_Sign+0xa4>
c0de0a04:	a86b      	add	r0, sp, #428	@ 0x1ac
c0de0a06:	2160      	movs	r1, #96	@ 0x60
c0de0a08:	f7ff fe2a 	bl	c0de0660 <io_send_response_pointer>
c0de0a0c:	f006 fb9c 	bl	c0de7148 <cx_bn_unlock>
c0de0a10:	b120      	cbz	r0, c0de0a1c <handler_cmd_tEddsaPoseidon_Sign+0xae>
c0de0a12:	f000 fc71 	bl	c0de12f8 <OUTLINED_FUNCTION_1>
c0de0a16:	f50d 7d2b 	add.w	sp, sp, #684	@ 0x2ac
c0de0a1a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0a1c:	2000      	movs	r0, #0
c0de0a1e:	e7fa      	b.n	c0de0a16 <handler_cmd_tEddsaPoseidon_Sign+0xa8>

c0de0a20 <handler_cmd_tEddsaPoseidon>:
c0de0a20:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de0a24:	b0eb      	sub	sp, #428	@ 0x1ac
c0de0a26:	4605      	mov	r5, r0
c0de0a28:	6800      	ldr	r0, [r0, #0]
c0de0a2a:	f10d 04ab 	add.w	r4, sp, #171	@ 0xab
c0de0a2e:	21ff      	movs	r1, #255	@ 0xff
c0de0a30:	7806      	ldrb	r6, [r0, #0]
c0de0a32:	2000      	movs	r0, #0
c0de0a34:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0a38:	d002      	beq.n	c0de0a40 <handler_cmd_tEddsaPoseidon+0x20>
c0de0a3a:	5421      	strb	r1, [r4, r0]
c0de0a3c:	3001      	adds	r0, #1
c0de0a3e:	e7f9      	b.n	c0de0a34 <handler_cmd_tEddsaPoseidon+0x14>
c0de0a40:	f000 fc56 	bl	c0de12f0 <OUTLINED_FUNCTION_0>
c0de0a44:	2800      	cmp	r0, #0
c0de0a46:	d154      	bne.n	c0de0af2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a48:	af14      	add	r7, sp, #80	@ 0x50
c0de0a4a:	4631      	mov	r1, r6
c0de0a4c:	4638      	mov	r0, r7
c0de0a4e:	f001 fe6b 	bl	c0de2728 <tEdwards_Curve_alloc_init>
c0de0a52:	2800      	cmp	r0, #0
c0de0a54:	d14d      	bne.n	c0de0af2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a56:	f107 060c 	add.w	r6, r7, #12
c0de0a5a:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0a5e:	4638      	mov	r0, r7
c0de0a60:	4631      	mov	r1, r6
c0de0a62:	f001 fe0a 	bl	c0de267a <tEdwards_IsOnCurve>
c0de0a66:	2800      	cmp	r0, #0
c0de0a68:	d143      	bne.n	c0de0af2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a6a:	f89d 11ab 	ldrb.w	r1, [sp, #427]	@ 0x1ab
c0de0a6e:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0a72:	2901      	cmp	r1, #1
c0de0a74:	d13d      	bne.n	c0de0af2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0a76:	4922      	ldr	r1, [pc, #136]	@ (c0de0b00 <handler_cmd_tEddsaPoseidon+0xe0>)
c0de0a78:	f10d 0a24 	add.w	sl, sp, #36	@ 0x24
c0de0a7c:	2220      	movs	r2, #32
c0de0a7e:	4650      	mov	r0, sl
c0de0a80:	4479      	add	r1, pc
c0de0a82:	f006 fe1f 	bl	c0de76c4 <__aeabi_memcpy>
c0de0a86:	af01      	add	r7, sp, #4
c0de0a88:	491e      	ldr	r1, [pc, #120]	@ (c0de0b04 <handler_cmd_tEddsaPoseidon+0xe4>)
c0de0a8a:	2220      	movs	r2, #32
c0de0a8c:	4638      	mov	r0, r7
c0de0a8e:	4479      	add	r1, pc
c0de0a90:	f006 fe18 	bl	c0de76c4 <__aeabi_memcpy>
c0de0a94:	f10d 0844 	add.w	r8, sp, #68	@ 0x44
c0de0a98:	a814      	add	r0, sp, #80	@ 0x50
c0de0a9a:	4651      	mov	r1, sl
c0de0a9c:	463a      	mov	r2, r7
c0de0a9e:	4643      	mov	r3, r8
c0de0aa0:	f002 f833 	bl	c0de2b0a <tEdwards_alloc_init>
c0de0aa4:	bb28      	cbnz	r0, c0de0af2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0aa6:	a814      	add	r0, sp, #80	@ 0x50
c0de0aa8:	f20d 12ab 	addw	r2, sp, #427	@ 0x1ab
c0de0aac:	4631      	mov	r1, r6
c0de0aae:	f001 fde4 	bl	c0de267a <tEdwards_IsOnCurve>
c0de0ab2:	b9f0      	cbnz	r0, c0de0af2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0ab4:	f89d 01ab 	ldrb.w	r0, [sp, #427]	@ 0x1ab
c0de0ab8:	2801      	cmp	r0, #1
c0de0aba:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0abe:	d118      	bne.n	c0de0af2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0ac0:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0ac4:	f8cd 8000 	str.w	r8, [sp]
c0de0ac8:	1c42      	adds	r2, r0, #1
c0de0aca:	1e4b      	subs	r3, r1, #1
c0de0acc:	a814      	add	r0, sp, #80	@ 0x50
c0de0ace:	4631      	mov	r1, r6
c0de0ad0:	f002 f8a0 	bl	c0de2c14 <tEdwards_scalarMul>
c0de0ad4:	b968      	cbnz	r0, c0de0af2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0ad6:	a814      	add	r0, sp, #80	@ 0x50
c0de0ad8:	f104 0340 	add.w	r3, r4, #64	@ 0x40
c0de0adc:	a911      	add	r1, sp, #68	@ 0x44
c0de0ade:	f000 fc34 	bl	c0de134a <OUTLINED_FUNCTION_10>
c0de0ae2:	b930      	cbnz	r0, c0de0af2 <handler_cmd_tEddsaPoseidon+0xd2>
c0de0ae4:	f10d 00ab 	add.w	r0, sp, #171	@ 0xab
c0de0ae8:	f000 fc16 	bl	c0de1318 <OUTLINED_FUNCTION_5>
c0de0aec:	f006 fb2c 	bl	c0de7148 <cx_bn_unlock>
c0de0af0:	b120      	cbz	r0, c0de0afc <handler_cmd_tEddsaPoseidon+0xdc>
c0de0af2:	f000 fc01 	bl	c0de12f8 <OUTLINED_FUNCTION_1>
c0de0af6:	b06b      	add	sp, #428	@ 0x1ac
c0de0af8:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de0afc:	2000      	movs	r0, #0
c0de0afe:	e7fa      	b.n	c0de0af6 <handler_cmd_tEddsaPoseidon+0xd6>
c0de0b00:	0000747c 	.word	0x0000747c
c0de0b04:	0000748e 	.word	0x0000748e

c0de0b08 <handler_cmd_tEdwards>:
c0de0b08:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de0b0a:	b0ef      	sub	sp, #444	@ 0x1bc
c0de0b0c:	4605      	mov	r5, r0
c0de0b0e:	6840      	ldr	r0, [r0, #4]
c0de0b10:	2841      	cmp	r0, #65	@ 0x41
c0de0b12:	d801      	bhi.n	c0de0b18 <handler_cmd_tEdwards+0x10>
c0de0b14:	2802      	cmp	r0, #2
c0de0b16:	d202      	bcs.n	c0de0b1e <handler_cmd_tEdwards+0x16>
c0de0b18:	f646 2087 	movw	r0, #27271	@ 0x6a87
c0de0b1c:	e015      	b.n	c0de0b4a <handler_cmd_tEdwards+0x42>
c0de0b1e:	6828      	ldr	r0, [r5, #0]
c0de0b20:	21ff      	movs	r1, #255	@ 0xff
c0de0b22:	7806      	ldrb	r6, [r0, #0]
c0de0b24:	2000      	movs	r0, #0
c0de0b26:	ac2f      	add	r4, sp, #188	@ 0xbc
c0de0b28:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0b2c:	d002      	beq.n	c0de0b34 <handler_cmd_tEdwards+0x2c>
c0de0b2e:	5421      	strb	r1, [r4, r0]
c0de0b30:	3001      	adds	r0, #1
c0de0b32:	e7f9      	b.n	c0de0b28 <handler_cmd_tEdwards+0x20>
c0de0b34:	f000 fbdc 	bl	c0de12f0 <OUTLINED_FUNCTION_0>
c0de0b38:	b920      	cbnz	r0, c0de0b44 <handler_cmd_tEdwards+0x3c>
c0de0b3a:	a819      	add	r0, sp, #100	@ 0x64
c0de0b3c:	4631      	mov	r1, r6
c0de0b3e:	f001 fdf3 	bl	c0de2728 <tEdwards_Curve_alloc_init>
c0de0b42:	b120      	cbz	r0, c0de0b4e <handler_cmd_tEdwards+0x46>
c0de0b44:	b280      	uxth	r0, r0
c0de0b46:	f7ff fd96 	bl	c0de0676 <io_send_sw>
c0de0b4a:	b06f      	add	sp, #444	@ 0x1bc
c0de0b4c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0b4e:	2e02      	cmp	r6, #2
c0de0b50:	d00c      	beq.n	c0de0b6c <handler_cmd_tEdwards+0x64>
c0de0b52:	2e01      	cmp	r6, #1
c0de0b54:	d128      	bne.n	c0de0ba8 <handler_cmd_tEdwards+0xa0>
c0de0b56:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0b58:	4942      	ldr	r1, [pc, #264]	@ (c0de0c64 <handler_cmd_tEdwards+0x15c>)
c0de0b5a:	2220      	movs	r2, #32
c0de0b5c:	4630      	mov	r0, r6
c0de0b5e:	4479      	add	r1, pc
c0de0b60:	f006 fdb0 	bl	c0de76c4 <__aeabi_memcpy>
c0de0b64:	af03      	add	r7, sp, #12
c0de0b66:	4940      	ldr	r1, [pc, #256]	@ (c0de0c68 <handler_cmd_tEdwards+0x160>)
c0de0b68:	4479      	add	r1, pc
c0de0b6a:	e009      	b.n	c0de0b80 <handler_cmd_tEdwards+0x78>
c0de0b6c:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0b6e:	493f      	ldr	r1, [pc, #252]	@ (c0de0c6c <handler_cmd_tEdwards+0x164>)
c0de0b70:	2220      	movs	r2, #32
c0de0b72:	4630      	mov	r0, r6
c0de0b74:	4479      	add	r1, pc
c0de0b76:	f006 fda5 	bl	c0de76c4 <__aeabi_memcpy>
c0de0b7a:	af03      	add	r7, sp, #12
c0de0b7c:	493c      	ldr	r1, [pc, #240]	@ (c0de0c70 <handler_cmd_tEdwards+0x168>)
c0de0b7e:	4479      	add	r1, pc
c0de0b80:	4638      	mov	r0, r7
c0de0b82:	2220      	movs	r2, #32
c0de0b84:	f006 fd9e 	bl	c0de76c4 <__aeabi_memcpy>
c0de0b88:	a819      	add	r0, sp, #100	@ 0x64
c0de0b8a:	ab16      	add	r3, sp, #88	@ 0x58
c0de0b8c:	4631      	mov	r1, r6
c0de0b8e:	463a      	mov	r2, r7
c0de0b90:	f001 ffbb 	bl	c0de2b0a <tEdwards_alloc_init>
c0de0b94:	2800      	cmp	r0, #0
c0de0b96:	d1d5      	bne.n	c0de0b44 <handler_cmd_tEdwards+0x3c>
c0de0b98:	a819      	add	r0, sp, #100	@ 0x64
c0de0b9a:	a90b      	add	r1, sp, #44	@ 0x2c
c0de0b9c:	aa03      	add	r2, sp, #12
c0de0b9e:	ab13      	add	r3, sp, #76	@ 0x4c
c0de0ba0:	f001 ffb3 	bl	c0de2b0a <tEdwards_alloc_init>
c0de0ba4:	2800      	cmp	r0, #0
c0de0ba6:	d1cd      	bne.n	c0de0b44 <handler_cmd_tEdwards+0x3c>
c0de0ba8:	2000      	movs	r0, #0
c0de0baa:	f10d 020b 	add.w	r2, sp, #11
c0de0bae:	f88d 000b 	strb.w	r0, [sp, #11]
c0de0bb2:	a819      	add	r0, sp, #100	@ 0x64
c0de0bb4:	a916      	add	r1, sp, #88	@ 0x58
c0de0bb6:	f001 fd60 	bl	c0de267a <tEdwards_IsOnCurve>
c0de0bba:	2800      	cmp	r0, #0
c0de0bbc:	d1c2      	bne.n	c0de0b44 <handler_cmd_tEdwards+0x3c>
c0de0bbe:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0bc2:	2801      	cmp	r0, #1
c0de0bc4:	d142      	bne.n	c0de0c4c <handler_cmd_tEdwards+0x144>
c0de0bc6:	a819      	add	r0, sp, #100	@ 0x64
c0de0bc8:	ae13      	add	r6, sp, #76	@ 0x4c
c0de0bca:	f10d 020b 	add.w	r2, sp, #11
c0de0bce:	4631      	mov	r1, r6
c0de0bd0:	f001 fd53 	bl	c0de267a <tEdwards_IsOnCurve>
c0de0bd4:	2800      	cmp	r0, #0
c0de0bd6:	d1b5      	bne.n	c0de0b44 <handler_cmd_tEdwards+0x3c>
c0de0bd8:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0bdc:	2801      	cmp	r0, #1
c0de0bde:	d138      	bne.n	c0de0c52 <handler_cmd_tEdwards+0x14a>
c0de0be0:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de0be2:	f10d 010b 	add.w	r1, sp, #11
c0de0be6:	f006 fb6d 	bl	c0de72c4 <cx_bn_is_prime>
c0de0bea:	2800      	cmp	r0, #0
c0de0bec:	d1aa      	bne.n	c0de0b44 <handler_cmd_tEdwards+0x3c>
c0de0bee:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0bf2:	2801      	cmp	r0, #1
c0de0bf4:	d130      	bne.n	c0de0c58 <handler_cmd_tEdwards+0x150>
c0de0bf6:	981b      	ldr	r0, [sp, #108]	@ 0x6c
c0de0bf8:	f10d 010b 	add.w	r1, sp, #11
c0de0bfc:	f006 fb62 	bl	c0de72c4 <cx_bn_is_prime>
c0de0c00:	2800      	cmp	r0, #0
c0de0c02:	d19f      	bne.n	c0de0b44 <handler_cmd_tEdwards+0x3c>
c0de0c04:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de0c08:	2801      	cmp	r0, #1
c0de0c0a:	d128      	bne.n	c0de0c5e <handler_cmd_tEdwards+0x156>
c0de0c0c:	e9d5 0100 	ldrd	r0, r1, [r5]
c0de0c10:	9600      	str	r6, [sp, #0]
c0de0c12:	1c42      	adds	r2, r0, #1
c0de0c14:	1e4b      	subs	r3, r1, #1
c0de0c16:	a819      	add	r0, sp, #100	@ 0x64
c0de0c18:	a916      	add	r1, sp, #88	@ 0x58
c0de0c1a:	f001 fffb 	bl	c0de2c14 <tEdwards_scalarMul>
c0de0c1e:	2800      	cmp	r0, #0
c0de0c20:	d190      	bne.n	c0de0b44 <handler_cmd_tEdwards+0x3c>
c0de0c22:	a819      	add	r0, sp, #100	@ 0x64
c0de0c24:	f104 0320 	add.w	r3, r4, #32
c0de0c28:	a913      	add	r1, sp, #76	@ 0x4c
c0de0c2a:	f000 fb8e 	bl	c0de134a <OUTLINED_FUNCTION_10>
c0de0c2e:	2800      	cmp	r0, #0
c0de0c30:	f47f af88 	bne.w	c0de0b44 <handler_cmd_tEdwards+0x3c>
c0de0c34:	f006 fa88 	bl	c0de7148 <cx_bn_unlock>
c0de0c38:	2800      	cmp	r0, #0
c0de0c3a:	f47f af83 	bne.w	c0de0b44 <handler_cmd_tEdwards+0x3c>
c0de0c3e:	9819      	ldr	r0, [sp, #100]	@ 0x64
c0de0c40:	0041      	lsls	r1, r0, #1
c0de0c42:	a82f      	add	r0, sp, #188	@ 0xbc
c0de0c44:	f7ff fd0c 	bl	c0de0660 <io_send_response_pointer>
c0de0c48:	2000      	movs	r0, #0
c0de0c4a:	e77e      	b.n	c0de0b4a <handler_cmd_tEdwards+0x42>
c0de0c4c:	f64c 2001 	movw	r0, #51713	@ 0xca01
c0de0c50:	e779      	b.n	c0de0b46 <handler_cmd_tEdwards+0x3e>
c0de0c52:	f64c 2002 	movw	r0, #51714	@ 0xca02
c0de0c56:	e776      	b.n	c0de0b46 <handler_cmd_tEdwards+0x3e>
c0de0c58:	f64c 2003 	movw	r0, #51715	@ 0xca03
c0de0c5c:	e773      	b.n	c0de0b46 <handler_cmd_tEdwards+0x3e>
c0de0c5e:	f64c 2004 	movw	r0, #51716	@ 0xca04
c0de0c62:	e770      	b.n	c0de0b46 <handler_cmd_tEdwards+0x3e>
c0de0c64:	0000721e 	.word	0x0000721e
c0de0c68:	00007294 	.word	0x00007294
c0de0c6c:	00007228 	.word	0x00007228
c0de0c70:	0000719e 	.word	0x0000719e

c0de0c74 <handler_cmd_Interpolate>:
c0de0c74:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0c78:	f5ad 7d04 	sub.w	sp, sp, #528	@ 0x210
c0de0c7c:	4605      	mov	r5, r0
c0de0c7e:	6800      	ldr	r0, [r0, #0]
c0de0c80:	22ff      	movs	r2, #255	@ 0xff
c0de0c82:	7804      	ldrb	r4, [r0, #0]
c0de0c84:	2000      	movs	r0, #0
c0de0c86:	a944      	add	r1, sp, #272	@ 0x110
c0de0c88:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0c8c:	d002      	beq.n	c0de0c94 <handler_cmd_Interpolate+0x20>
c0de0c8e:	540a      	strb	r2, [r1, r0]
c0de0c90:	3001      	adds	r0, #1
c0de0c92:	e7f9      	b.n	c0de0c88 <handler_cmd_Interpolate+0x14>
c0de0c94:	f000 fb2c 	bl	c0de12f0 <OUTLINED_FUNCTION_0>
c0de0c98:	bb28      	cbnz	r0, c0de0ce6 <handler_cmd_Interpolate+0x72>
c0de0c9a:	f10d 08b8 	add.w	r8, sp, #184	@ 0xb8
c0de0c9e:	4621      	mov	r1, r4
c0de0ca0:	4640      	mov	r0, r8
c0de0ca2:	f001 fd41 	bl	c0de2728 <tEdwards_Curve_alloc_init>
c0de0ca6:	b9f0      	cbnz	r0, c0de0ce6 <handler_cmd_Interpolate+0x72>
c0de0ca8:	a827      	add	r0, sp, #156	@ 0x9c
c0de0caa:	f000 fb2b 	bl	c0de1304 <OUTLINED_FUNCTION_3>
c0de0cae:	b9d0      	cbnz	r0, c0de0ce6 <handler_cmd_Interpolate+0x72>
c0de0cb0:	6828      	ldr	r0, [r5, #0]
c0de0cb2:	2100      	movs	r1, #0
c0de0cb4:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0cb6:	3001      	adds	r0, #1
c0de0cb8:	2960      	cmp	r1, #96	@ 0x60
c0de0cba:	d003      	beq.n	c0de0cc4 <handler_cmd_Interpolate+0x50>
c0de0cbc:	5c43      	ldrb	r3, [r0, r1]
c0de0cbe:	5453      	strb	r3, [r2, r1]
c0de0cc0:	3101      	adds	r1, #1
c0de0cc2:	e7f9      	b.n	c0de0cb8 <handler_cmd_Interpolate+0x44>
c0de0cc4:	aa0f      	add	r2, sp, #60	@ 0x3c
c0de0cc6:	2100      	movs	r1, #0
c0de0cc8:	af2b      	add	r7, sp, #172	@ 0xac
c0de0cca:	1d0c      	adds	r4, r1, #4
c0de0ccc:	2c10      	cmp	r4, #16
c0de0cce:	d010      	beq.n	c0de0cf2 <handler_cmd_Interpolate+0x7e>
c0de0cd0:	1878      	adds	r0, r7, r1
c0de0cd2:	2120      	movs	r1, #32
c0de0cd4:	2320      	movs	r3, #32
c0de0cd6:	f102 0520 	add.w	r5, r2, #32
c0de0cda:	f006 fa47 	bl	c0de716c <cx_bn_alloc_init>
c0de0cde:	2800      	cmp	r0, #0
c0de0ce0:	462a      	mov	r2, r5
c0de0ce2:	4621      	mov	r1, r4
c0de0ce4:	d0f1      	beq.n	c0de0cca <handler_cmd_Interpolate+0x56>
c0de0ce6:	f000 fb07 	bl	c0de12f8 <OUTLINED_FUNCTION_1>
c0de0cea:	f50d 7d04 	add.w	sp, sp, #528	@ 0x210
c0de0cee:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0cf2:	f108 000c 	add.w	r0, r8, #12
c0de0cf6:	f04f 0a00 	mov.w	sl, #0
c0de0cfa:	2601      	movs	r6, #1
c0de0cfc:	f10d 0b0c 	add.w	fp, sp, #12
c0de0d00:	9001      	str	r0, [sp, #4]
c0de0d02:	ad44      	add	r5, sp, #272	@ 0x110
c0de0d04:	f1ba 0f0c 	cmp.w	sl, #12
c0de0d08:	d03b      	beq.n	c0de0d82 <handler_cmd_Interpolate+0x10e>
c0de0d0a:	a828      	add	r0, sp, #160	@ 0xa0
c0de0d0c:	2120      	movs	r1, #32
c0de0d0e:	eb00 040a 	add.w	r4, r0, sl
c0de0d12:	4620      	mov	r0, r4
c0de0d14:	f006 fa20 	bl	c0de7158 <cx_bn_alloc>
c0de0d18:	2800      	cmp	r0, #0
c0de0d1a:	d1e4      	bne.n	c0de0ce6 <handler_cmd_Interpolate+0x72>
c0de0d1c:	6820      	ldr	r0, [r4, #0]
c0de0d1e:	4631      	mov	r1, r6
c0de0d20:	f006 fa5a 	bl	c0de71d8 <cx_bn_set_u32>
c0de0d24:	2800      	cmp	r0, #0
c0de0d26:	d1de      	bne.n	c0de0ce6 <handler_cmd_Interpolate+0x72>
c0de0d28:	4640      	mov	r0, r8
c0de0d2a:	4659      	mov	r1, fp
c0de0d2c:	f001 fb7c 	bl	c0de2428 <tEdwards_alloc>
c0de0d30:	2800      	cmp	r0, #0
c0de0d32:	d1d8      	bne.n	c0de0ce6 <handler_cmd_Interpolate+0x72>
c0de0d34:	9602      	str	r6, [sp, #8]
c0de0d36:	eb07 060a 	add.w	r6, r7, sl
c0de0d3a:	9901      	ldr	r1, [sp, #4]
c0de0d3c:	4640      	mov	r0, r8
c0de0d3e:	465b      	mov	r3, fp
c0de0d40:	4632      	mov	r2, r6
c0de0d42:	f001 ff01 	bl	c0de2b48 <tEdwards_scalarMul_bn>
c0de0d46:	2800      	cmp	r0, #0
c0de0d48:	d1cd      	bne.n	c0de0ce6 <handler_cmd_Interpolate+0x72>
c0de0d4a:	6820      	ldr	r0, [r4, #0]
c0de0d4c:	4629      	mov	r1, r5
c0de0d4e:	f000 fad6 	bl	c0de12fe <OUTLINED_FUNCTION_2>
c0de0d52:	2800      	cmp	r0, #0
c0de0d54:	d1c7      	bne.n	c0de0ce6 <handler_cmd_Interpolate+0x72>
c0de0d56:	6830      	ldr	r0, [r6, #0]
c0de0d58:	f105 0120 	add.w	r1, r5, #32
c0de0d5c:	f000 facf 	bl	c0de12fe <OUTLINED_FUNCTION_2>
c0de0d60:	2800      	cmp	r0, #0
c0de0d62:	d1c0      	bne.n	c0de0ce6 <handler_cmd_Interpolate+0x72>
c0de0d64:	4640      	mov	r0, r8
c0de0d66:	4659      	mov	r1, fp
c0de0d68:	f001 fe8f 	bl	c0de2a8a <tEdwards_normalize>
c0de0d6c:	9e02      	ldr	r6, [sp, #8]
c0de0d6e:	3540      	adds	r5, #64	@ 0x40
c0de0d70:	f10b 0b0c 	add.w	fp, fp, #12
c0de0d74:	f10a 0a04 	add.w	sl, sl, #4
c0de0d78:	af2b      	add	r7, sp, #172	@ 0xac
c0de0d7a:	3601      	adds	r6, #1
c0de0d7c:	2800      	cmp	r0, #0
c0de0d7e:	d0c1      	beq.n	c0de0d04 <handler_cmd_Interpolate+0x90>
c0de0d80:	e7b1      	b.n	c0de0ce6 <handler_cmd_Interpolate+0x72>
c0de0d82:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0d84:	2303      	movs	r3, #3
c0de0d86:	9000      	str	r0, [sp, #0]
c0de0d88:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0d8a:	a928      	add	r1, sp, #160	@ 0xa0
c0de0d8c:	aa2b      	add	r2, sp, #172	@ 0xac
c0de0d8e:	f001 f948 	bl	c0de2022 <zkn_frost_interpolate_secrets>
c0de0d92:	2800      	cmp	r0, #0
c0de0d94:	d1a7      	bne.n	c0de0ce6 <handler_cmd_Interpolate+0x72>
c0de0d96:	9827      	ldr	r0, [sp, #156]	@ 0x9c
c0de0d98:	a944      	add	r1, sp, #272	@ 0x110
c0de0d9a:	2220      	movs	r2, #32
c0de0d9c:	31c0      	adds	r1, #192	@ 0xc0
c0de0d9e:	f006 fa25 	bl	c0de71ec <cx_bn_export>
c0de0da2:	2800      	cmp	r0, #0
c0de0da4:	d19f      	bne.n	c0de0ce6 <handler_cmd_Interpolate+0x72>
c0de0da6:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0da8:	aa27      	add	r2, sp, #156	@ 0x9c
c0de0daa:	ab03      	add	r3, sp, #12
c0de0dac:	9901      	ldr	r1, [sp, #4]
c0de0dae:	f001 fecb 	bl	c0de2b48 <tEdwards_scalarMul_bn>
c0de0db2:	2800      	cmp	r0, #0
c0de0db4:	d197      	bne.n	c0de0ce6 <handler_cmd_Interpolate+0x72>
c0de0db6:	a844      	add	r0, sp, #272	@ 0x110
c0de0db8:	f100 02e0 	add.w	r2, r0, #224	@ 0xe0
c0de0dbc:	a82e      	add	r0, sp, #184	@ 0xb8
c0de0dbe:	a903      	add	r1, sp, #12
c0de0dc0:	ab0f      	add	r3, sp, #60	@ 0x3c
c0de0dc2:	f001 fe3c 	bl	c0de2a3e <tEdwards_export>
c0de0dc6:	2800      	cmp	r0, #0
c0de0dc8:	d18d      	bne.n	c0de0ce6 <handler_cmd_Interpolate+0x72>
c0de0dca:	a844      	add	r0, sp, #272	@ 0x110
c0de0dcc:	f000 faa4 	bl	c0de1318 <OUTLINED_FUNCTION_5>
c0de0dd0:	f006 f9ba 	bl	c0de7148 <cx_bn_unlock>
c0de0dd4:	2800      	cmp	r0, #0
c0de0dd6:	f47f af86 	bne.w	c0de0ce6 <handler_cmd_Interpolate+0x72>
c0de0dda:	2000      	movs	r0, #0
c0de0ddc:	e785      	b.n	c0de0cea <handler_cmd_Interpolate+0x76>

c0de0dde <handler_cmd_Split>:
c0de0dde:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0de2:	f5ad 7d0a 	sub.w	sp, sp, #552	@ 0x228
c0de0de6:	4604      	mov	r4, r0
c0de0de8:	6800      	ldr	r0, [r0, #0]
c0de0dea:	22ff      	movs	r2, #255	@ 0xff
c0de0dec:	7805      	ldrb	r5, [r0, #0]
c0de0dee:	2000      	movs	r0, #0
c0de0df0:	a948      	add	r1, sp, #288	@ 0x120
c0de0df2:	f5b0 7f80 	cmp.w	r0, #256	@ 0x100
c0de0df6:	d002      	beq.n	c0de0dfe <handler_cmd_Split+0x20>
c0de0df8:	540a      	strb	r2, [r1, r0]
c0de0dfa:	3001      	adds	r0, #1
c0de0dfc:	e7f9      	b.n	c0de0df2 <handler_cmd_Split+0x14>
c0de0dfe:	f000 fa77 	bl	c0de12f0 <OUTLINED_FUNCTION_0>
c0de0e02:	bb90      	cbnz	r0, c0de0e6a <handler_cmd_Split+0x8c>
c0de0e04:	a832      	add	r0, sp, #200	@ 0xc8
c0de0e06:	f000 faa6 	bl	c0de1356 <OUTLINED_FUNCTION_12>
c0de0e0a:	bb70      	cbnz	r0, c0de0e6a <handler_cmd_Split+0x8c>
c0de0e0c:	6820      	ldr	r0, [r4, #0]
c0de0e0e:	2200      	movs	r2, #0
c0de0e10:	a91a      	add	r1, sp, #104	@ 0x68
c0de0e12:	3002      	adds	r0, #2
c0de0e14:	2a20      	cmp	r2, #32
c0de0e16:	d003      	beq.n	c0de0e20 <handler_cmd_Split+0x42>
c0de0e18:	5c83      	ldrb	r3, [r0, r2]
c0de0e1a:	548b      	strb	r3, [r1, r2]
c0de0e1c:	3201      	adds	r2, #1
c0de0e1e:	e7f9      	b.n	c0de0e14 <handler_cmd_Split+0x36>
c0de0e20:	6862      	ldr	r2, [r4, #4]
c0de0e22:	3a02      	subs	r2, #2
c0de0e24:	e9cd 0288 	strd	r0, r2, [sp, #544]	@ 0x220
c0de0e28:	f101 0220 	add.w	r2, r1, #32
c0de0e2c:	a888      	add	r0, sp, #544	@ 0x220
c0de0e2e:	2101      	movs	r1, #1
c0de0e30:	f005 ff05 	bl	c0de6c3e <cx_blake2b_512_hash_iovec>
c0de0e34:	b9c8      	cbnz	r0, c0de0e6a <handler_cmd_Split+0x8c>
c0de0e36:	aa1a      	add	r2, sp, #104	@ 0x68
c0de0e38:	2100      	movs	r1, #0
c0de0e3a:	ac17      	add	r4, sp, #92	@ 0x5c
c0de0e3c:	1d0d      	adds	r5, r1, #4
c0de0e3e:	2d10      	cmp	r5, #16
c0de0e40:	d00b      	beq.n	c0de0e5a <handler_cmd_Split+0x7c>
c0de0e42:	1860      	adds	r0, r4, r1
c0de0e44:	2120      	movs	r1, #32
c0de0e46:	2320      	movs	r3, #32
c0de0e48:	f102 0620 	add.w	r6, r2, #32
c0de0e4c:	f006 f98e 	bl	c0de716c <cx_bn_alloc_init>
c0de0e50:	2800      	cmp	r0, #0
c0de0e52:	4632      	mov	r2, r6
c0de0e54:	4629      	mov	r1, r5
c0de0e56:	d0f1      	beq.n	c0de0e3c <handler_cmd_Split+0x5e>
c0de0e58:	e007      	b.n	c0de0e6a <handler_cmd_Split+0x8c>
c0de0e5a:	a80a      	add	r0, sp, #40	@ 0x28
c0de0e5c:	f000 fa52 	bl	c0de1304 <OUTLINED_FUNCTION_3>
c0de0e60:	b918      	cbnz	r0, c0de0e6a <handler_cmd_Split+0x8c>
c0de0e62:	a809      	add	r0, sp, #36	@ 0x24
c0de0e64:	f000 fa4e 	bl	c0de1304 <OUTLINED_FUNCTION_3>
c0de0e68:	b128      	cbz	r0, c0de0e76 <handler_cmd_Split+0x98>
c0de0e6a:	f000 fa45 	bl	c0de12f8 <OUTLINED_FUNCTION_1>
c0de0e6e:	f50d 7d0a 	add.w	sp, sp, #552	@ 0x228
c0de0e72:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0e76:	f04f 0800 	mov.w	r8, #0
c0de0e7a:	f50d 7b90 	add.w	fp, sp, #288	@ 0x120
c0de0e7e:	ae0b      	add	r6, sp, #44	@ 0x2c
c0de0e80:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de0e84:	2400      	movs	r4, #0
c0de0e86:	f1b8 0f10 	cmp.w	r8, #16
c0de0e8a:	d04d      	beq.n	c0de0f28 <handler_cmd_Split+0x14a>
c0de0e8c:	a805      	add	r0, sp, #20
c0de0e8e:	2120      	movs	r1, #32
c0de0e90:	eb00 0708 	add.w	r7, r0, r8
c0de0e94:	4638      	mov	r0, r7
c0de0e96:	f006 f95f 	bl	c0de7158 <cx_bn_alloc>
c0de0e9a:	2800      	cmp	r0, #0
c0de0e9c:	d1e5      	bne.n	c0de0e6a <handler_cmd_Split+0x8c>
c0de0e9e:	a801      	add	r0, sp, #4
c0de0ea0:	2120      	movs	r1, #32
c0de0ea2:	eb00 0508 	add.w	r5, r0, r8
c0de0ea6:	4628      	mov	r0, r5
c0de0ea8:	f006 f956 	bl	c0de7158 <cx_bn_alloc>
c0de0eac:	2800      	cmp	r0, #0
c0de0eae:	d1dc      	bne.n	c0de0e6a <handler_cmd_Split+0x8c>
c0de0eb0:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0eb2:	4621      	mov	r1, r4
c0de0eb4:	f006 f990 	bl	c0de71d8 <cx_bn_set_u32>
c0de0eb8:	2800      	cmp	r0, #0
c0de0eba:	d1d6      	bne.n	c0de0e6a <handler_cmd_Split+0x8c>
c0de0ebc:	6828      	ldr	r0, [r5, #0]
c0de0ebe:	4621      	mov	r1, r4
c0de0ec0:	f006 f98a 	bl	c0de71d8 <cx_bn_set_u32>
c0de0ec4:	2800      	cmp	r0, #0
c0de0ec6:	d1d0      	bne.n	c0de0e6a <handler_cmd_Split+0x8c>
c0de0ec8:	4650      	mov	r0, sl
c0de0eca:	4631      	mov	r1, r6
c0de0ecc:	f001 faac 	bl	c0de2428 <tEdwards_alloc>
c0de0ed0:	2800      	cmp	r0, #0
c0de0ed2:	d1ca      	bne.n	c0de0e6a <handler_cmd_Split+0x8c>
c0de0ed4:	e9dd 3009 	ldrd	r3, r0, [sp, #36]	@ 0x24
c0de0ed8:	2202      	movs	r2, #2
c0de0eda:	9000      	str	r0, [sp, #0]
c0de0edc:	4650      	mov	r0, sl
c0de0ede:	a917      	add	r1, sp, #92	@ 0x5c
c0de0ee0:	f001 f8e1 	bl	c0de20a6 <zkn_evalshare>
c0de0ee4:	2800      	cmp	r0, #0
c0de0ee6:	d1c0      	bne.n	c0de0e6a <handler_cmd_Split+0x8c>
c0de0ee8:	6838      	ldr	r0, [r7, #0]
c0de0eea:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de0eec:	f006 f96a 	bl	c0de71c4 <cx_bn_copy>
c0de0ef0:	2800      	cmp	r0, #0
c0de0ef2:	d1ba      	bne.n	c0de0e6a <handler_cmd_Split+0x8c>
c0de0ef4:	4650      	mov	r0, sl
c0de0ef6:	4631      	mov	r1, r6
c0de0ef8:	f001 fdc7 	bl	c0de2a8a <tEdwards_normalize>
c0de0efc:	2800      	cmp	r0, #0
c0de0efe:	d1b4      	bne.n	c0de0e6a <handler_cmd_Split+0x8c>
c0de0f00:	9809      	ldr	r0, [sp, #36]	@ 0x24
c0de0f02:	4659      	mov	r1, fp
c0de0f04:	f000 f9fb 	bl	c0de12fe <OUTLINED_FUNCTION_2>
c0de0f08:	2800      	cmp	r0, #0
c0de0f0a:	d1ae      	bne.n	c0de0e6a <handler_cmd_Split+0x8c>
c0de0f0c:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0f0e:	f10b 0120 	add.w	r1, fp, #32
c0de0f12:	f000 f9f4 	bl	c0de12fe <OUTLINED_FUNCTION_2>
c0de0f16:	360c      	adds	r6, #12
c0de0f18:	3401      	adds	r4, #1
c0de0f1a:	f10b 0b40 	add.w	fp, fp, #64	@ 0x40
c0de0f1e:	f108 0804 	add.w	r8, r8, #4
c0de0f22:	2800      	cmp	r0, #0
c0de0f24:	d0af      	beq.n	c0de0e86 <handler_cmd_Split+0xa8>
c0de0f26:	e7a0      	b.n	c0de0e6a <handler_cmd_Split+0x8c>
c0de0f28:	2100      	movs	r1, #0
c0de0f2a:	1d0c      	adds	r4, r1, #4
c0de0f2c:	2c10      	cmp	r4, #16
c0de0f2e:	d007      	beq.n	c0de0f40 <handler_cmd_Split+0x162>
c0de0f30:	a817      	add	r0, sp, #92	@ 0x5c
c0de0f32:	4408      	add	r0, r1
c0de0f34:	f006 f926 	bl	c0de7184 <cx_bn_destroy>
c0de0f38:	2800      	cmp	r0, #0
c0de0f3a:	4621      	mov	r1, r4
c0de0f3c:	d0f5      	beq.n	c0de0f2a <handler_cmd_Split+0x14c>
c0de0f3e:	e794      	b.n	c0de0e6a <handler_cmd_Split+0x8c>
c0de0f40:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de0f42:	2303      	movs	r3, #3
c0de0f44:	9000      	str	r0, [sp, #0]
c0de0f46:	a801      	add	r0, sp, #4
c0de0f48:	1d01      	adds	r1, r0, #4
c0de0f4a:	a805      	add	r0, sp, #20
c0de0f4c:	1d02      	adds	r2, r0, #4
c0de0f4e:	a832      	add	r0, sp, #200	@ 0xc8
c0de0f50:	f001 f867 	bl	c0de2022 <zkn_frost_interpolate_secrets>
c0de0f54:	2800      	cmp	r0, #0
c0de0f56:	f47f af88 	bne.w	c0de0e6a <handler_cmd_Split+0x8c>
c0de0f5a:	a848      	add	r0, sp, #288	@ 0x120
c0de0f5c:	f000 f9dc 	bl	c0de1318 <OUTLINED_FUNCTION_5>
c0de0f60:	f006 f8f2 	bl	c0de7148 <cx_bn_unlock>
c0de0f64:	2800      	cmp	r0, #0
c0de0f66:	f47f af80 	bne.w	c0de0e6a <handler_cmd_Split+0x8c>
c0de0f6a:	2000      	movs	r0, #0
c0de0f6c:	e77f      	b.n	c0de0e6e <handler_cmd_Split+0x90>

c0de0f6e <handler_cmd_frostH>:
c0de0f6e:	b5b0      	push	{r4, r5, r7, lr}
c0de0f70:	b0d8      	sub	sp, #352	@ 0x160
c0de0f72:	4604      	mov	r4, r0
c0de0f74:	f000 f9bc 	bl	c0de12f0 <OUTLINED_FUNCTION_0>
c0de0f78:	2800      	cmp	r0, #0
c0de0f7a:	d142      	bne.n	c0de1002 <handler_cmd_frostH+0x94>
c0de0f7c:	6820      	ldr	r0, [r4, #0]
c0de0f7e:	7801      	ldrb	r1, [r0, #0]
c0de0f80:	a802      	add	r0, sp, #8
c0de0f82:	f001 fbd1 	bl	c0de2728 <tEdwards_Curve_alloc_init>
c0de0f86:	bbe0      	cbnz	r0, c0de1002 <handler_cmd_frostH+0x94>
c0de0f88:	a801      	add	r0, sp, #4
c0de0f8a:	f000 f9bb 	bl	c0de1304 <OUTLINED_FUNCTION_3>
c0de0f8e:	bbc0      	cbnz	r0, c0de1002 <handler_cmd_frostH+0x94>
c0de0f90:	f000 f9bb 	bl	c0de130a <OUTLINED_FUNCTION_4>
c0de0f94:	f002 f8e6 	bl	c0de3164 <Babyfrost_H1>
c0de0f98:	bb98      	cbnz	r0, c0de1002 <handler_cmd_frostH+0x94>
c0de0f9a:	9801      	ldr	r0, [sp, #4]
c0de0f9c:	ad18      	add	r5, sp, #96	@ 0x60
c0de0f9e:	2220      	movs	r2, #32
c0de0fa0:	4629      	mov	r1, r5
c0de0fa2:	f006 f923 	bl	c0de71ec <cx_bn_export>
c0de0fa6:	bb60      	cbnz	r0, c0de1002 <handler_cmd_frostH+0x94>
c0de0fa8:	f000 f9af 	bl	c0de130a <OUTLINED_FUNCTION_4>
c0de0fac:	f002 f8e8 	bl	c0de3180 <Babyfrost_H3>
c0de0fb0:	bb38      	cbnz	r0, c0de1002 <handler_cmd_frostH+0x94>
c0de0fb2:	9801      	ldr	r0, [sp, #4]
c0de0fb4:	f105 0120 	add.w	r1, r5, #32
c0de0fb8:	f000 f9a1 	bl	c0de12fe <OUTLINED_FUNCTION_2>
c0de0fbc:	bb08      	cbnz	r0, c0de1002 <handler_cmd_frostH+0x94>
c0de0fbe:	f000 f9a4 	bl	c0de130a <OUTLINED_FUNCTION_4>
c0de0fc2:	f002 f8f1 	bl	c0de31a8 <Babyfrost_H4>
c0de0fc6:	b9e0      	cbnz	r0, c0de1002 <handler_cmd_frostH+0x94>
c0de0fc8:	9801      	ldr	r0, [sp, #4]
c0de0fca:	f105 0140 	add.w	r1, r5, #64	@ 0x40
c0de0fce:	f000 f996 	bl	c0de12fe <OUTLINED_FUNCTION_2>
c0de0fd2:	b9b0      	cbnz	r0, c0de1002 <handler_cmd_frostH+0x94>
c0de0fd4:	f000 f999 	bl	c0de130a <OUTLINED_FUNCTION_4>
c0de0fd8:	f002 f8f4 	bl	c0de31c4 <Babyfrost_H5>
c0de0fdc:	b988      	cbnz	r0, c0de1002 <handler_cmd_frostH+0x94>
c0de0fde:	9801      	ldr	r0, [sp, #4]
c0de0fe0:	f105 0160 	add.w	r1, r5, #96	@ 0x60
c0de0fe4:	f000 f98b 	bl	c0de12fe <OUTLINED_FUNCTION_2>
c0de0fe8:	b958      	cbnz	r0, c0de1002 <handler_cmd_frostH+0x94>
c0de0fea:	9804      	ldr	r0, [sp, #16]
c0de0fec:	f105 01e0 	add.w	r1, r5, #224	@ 0xe0
c0de0ff0:	f000 f985 	bl	c0de12fe <OUTLINED_FUNCTION_2>
c0de0ff4:	b928      	cbnz	r0, c0de1002 <handler_cmd_frostH+0x94>
c0de0ff6:	a818      	add	r0, sp, #96	@ 0x60
c0de0ff8:	f000 f98e 	bl	c0de1318 <OUTLINED_FUNCTION_5>
c0de0ffc:	f006 f8a4 	bl	c0de7148 <cx_bn_unlock>
c0de1000:	b118      	cbz	r0, c0de100a <handler_cmd_frostH+0x9c>
c0de1002:	f000 f979 	bl	c0de12f8 <OUTLINED_FUNCTION_1>
c0de1006:	b058      	add	sp, #352	@ 0x160
c0de1008:	bdb0      	pop	{r4, r5, r7, pc}
c0de100a:	2000      	movs	r0, #0
c0de100c:	e7fb      	b.n	c0de1006 <handler_cmd_frostH+0x98>
	...

c0de1010 <handler_cmd_encodeCommitment>:
c0de1010:	b510      	push	{r4, lr}
c0de1012:	f5ad 7d50 	sub.w	sp, sp, #832	@ 0x340
c0de1016:	4604      	mov	r4, r0
c0de1018:	f000 f96a 	bl	c0de12f0 <OUTLINED_FUNCTION_0>
c0de101c:	bb10      	cbnz	r0, c0de1064 <handler_cmd_encodeCommitment+0x54>
c0de101e:	6820      	ldr	r0, [r4, #0]
c0de1020:	7801      	ldrb	r1, [r0, #0]
c0de1022:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de1024:	f001 fb80 	bl	c0de2728 <tEdwards_Curve_alloc_init>
c0de1028:	b9e0      	cbnz	r0, c0de1064 <handler_cmd_encodeCommitment+0x54>
c0de102a:	a879      	add	r0, sp, #484	@ 0x1e4
c0de102c:	f000 f96a 	bl	c0de1304 <OUTLINED_FUNCTION_3>
c0de1030:	b9c0      	cbnz	r0, c0de1064 <handler_cmd_encodeCommitment+0x54>
c0de1032:	ac01      	add	r4, sp, #4
c0de1034:	4910      	ldr	r1, [pc, #64]	@ (c0de1078 <handler_cmd_encodeCommitment+0x68>)
c0de1036:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de103a:	4620      	mov	r0, r4
c0de103c:	4479      	add	r1, pc
c0de103e:	f006 fb41 	bl	c0de76c4 <__aeabi_memcpy>
c0de1042:	9b79      	ldr	r3, [sp, #484]	@ 0x1e4
c0de1044:	a87a      	add	r0, sp, #488	@ 0x1e8
c0de1046:	4621      	mov	r1, r4
c0de1048:	2203      	movs	r2, #3
c0de104a:	f001 f865 	bl	c0de2118 <zkn_encode_group_commitmentHash>
c0de104e:	b948      	cbnz	r0, c0de1064 <handler_cmd_encodeCommitment+0x54>
c0de1050:	9879      	ldr	r0, [sp, #484]	@ 0x1e4
c0de1052:	a990      	add	r1, sp, #576	@ 0x240
c0de1054:	2220      	movs	r2, #32
c0de1056:	3120      	adds	r1, #32
c0de1058:	f006 f8c8 	bl	c0de71ec <cx_bn_export>
c0de105c:	b910      	cbnz	r0, c0de1064 <handler_cmd_encodeCommitment+0x54>
c0de105e:	f006 f873 	bl	c0de7148 <cx_bn_unlock>
c0de1062:	b120      	cbz	r0, c0de106e <handler_cmd_encodeCommitment+0x5e>
c0de1064:	f000 f948 	bl	c0de12f8 <OUTLINED_FUNCTION_1>
c0de1068:	f50d 7d50 	add.w	sp, sp, #832	@ 0x340
c0de106c:	bd10      	pop	{r4, pc}
c0de106e:	a890      	add	r0, sp, #576	@ 0x240
c0de1070:	f000 f96e 	bl	c0de1350 <OUTLINED_FUNCTION_11>
c0de1074:	2000      	movs	r0, #0
c0de1076:	e7f7      	b.n	c0de1068 <handler_cmd_encodeCommitment+0x58>
c0de1078:	00006fc0 	.word	0x00006fc0

c0de107c <handler_cmd_GroupCommitment>:
c0de107c:	b570      	push	{r4, r5, r6, lr}
c0de107e:	f5ad 7d6a 	sub.w	sp, sp, #936	@ 0x3a8
c0de1082:	4604      	mov	r4, r0
c0de1084:	f000 f934 	bl	c0de12f0 <OUTLINED_FUNCTION_0>
c0de1088:	bb58      	cbnz	r0, c0de10e2 <handler_cmd_GroupCommitment+0x66>
c0de108a:	6820      	ldr	r0, [r4, #0]
c0de108c:	7801      	ldrb	r1, [r0, #0]
c0de108e:	a894      	add	r0, sp, #592	@ 0x250
c0de1090:	f001 fb4a 	bl	c0de2728 <tEdwards_Curve_alloc_init>
c0de1094:	bb28      	cbnz	r0, c0de10e2 <handler_cmd_GroupCommitment+0x66>
c0de1096:	a894      	add	r0, sp, #592	@ 0x250
c0de1098:	ac91      	add	r4, sp, #580	@ 0x244
c0de109a:	4621      	mov	r1, r4
c0de109c:	f001 f9c4 	bl	c0de2428 <tEdwards_alloc>
c0de10a0:	b9f8      	cbnz	r0, c0de10e2 <handler_cmd_GroupCommitment+0x66>
c0de10a2:	ad19      	add	r5, sp, #100	@ 0x64
c0de10a4:	4914      	ldr	r1, [pc, #80]	@ (c0de10f8 <handler_cmd_GroupCommitment+0x7c>)
c0de10a6:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de10aa:	4628      	mov	r0, r5
c0de10ac:	4479      	add	r1, pc
c0de10ae:	f006 fb09 	bl	c0de76c4 <__aeabi_memcpy>
c0de10b2:	ae01      	add	r6, sp, #4
c0de10b4:	4911      	ldr	r1, [pc, #68]	@ (c0de10fc <handler_cmd_GroupCommitment+0x80>)
c0de10b6:	2260      	movs	r2, #96	@ 0x60
c0de10b8:	4630      	mov	r0, r6
c0de10ba:	4479      	add	r1, pc
c0de10bc:	f006 fb02 	bl	c0de76c4 <__aeabi_memcpy>
c0de10c0:	9400      	str	r4, [sp, #0]
c0de10c2:	a894      	add	r0, sp, #592	@ 0x250
c0de10c4:	4629      	mov	r1, r5
c0de10c6:	f000 f93c 	bl	c0de1342 <OUTLINED_FUNCTION_9>
c0de10ca:	b950      	cbnz	r0, c0de10e2 <handler_cmd_GroupCommitment+0x66>
c0de10cc:	aaaa      	add	r2, sp, #680	@ 0x2a8
c0de10ce:	a894      	add	r0, sp, #592	@ 0x250
c0de10d0:	a991      	add	r1, sp, #580	@ 0x244
c0de10d2:	f102 0320 	add.w	r3, r2, #32
c0de10d6:	f001 fcb2 	bl	c0de2a3e <tEdwards_export>
c0de10da:	b910      	cbnz	r0, c0de10e2 <handler_cmd_GroupCommitment+0x66>
c0de10dc:	f006 f834 	bl	c0de7148 <cx_bn_unlock>
c0de10e0:	b120      	cbz	r0, c0de10ec <handler_cmd_GroupCommitment+0x70>
c0de10e2:	f000 f909 	bl	c0de12f8 <OUTLINED_FUNCTION_1>
c0de10e6:	f50d 7d6a 	add.w	sp, sp, #936	@ 0x3a8
c0de10ea:	bd70      	pop	{r4, r5, r6, pc}
c0de10ec:	a8aa      	add	r0, sp, #680	@ 0x2a8
c0de10ee:	2140      	movs	r1, #64	@ 0x40
c0de10f0:	f7ff fab6 	bl	c0de0660 <io_send_response_pointer>
c0de10f4:	2000      	movs	r0, #0
c0de10f6:	e7f6      	b.n	c0de10e6 <handler_cmd_GroupCommitment+0x6a>
c0de10f8:	00007130 	.word	0x00007130
c0de10fc:	00007302 	.word	0x00007302

c0de1100 <handler_cmd_BindingFactors>:
c0de1100:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1104:	f5ad 7d65 	sub.w	sp, sp, #916	@ 0x394
c0de1108:	4604      	mov	r4, r0
c0de110a:	f000 f8f1 	bl	c0de12f0 <OUTLINED_FUNCTION_0>
c0de110e:	2800      	cmp	r0, #0
c0de1110:	d15c      	bne.n	c0de11cc <handler_cmd_BindingFactors+0xcc>
c0de1112:	6820      	ldr	r0, [r4, #0]
c0de1114:	7801      	ldrb	r1, [r0, #0]
c0de1116:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1118:	f001 fb06 	bl	c0de2728 <tEdwards_Curve_alloc_init>
c0de111c:	2800      	cmp	r0, #0
c0de111e:	d155      	bne.n	c0de11cc <handler_cmd_BindingFactors+0xcc>
c0de1120:	a88e      	add	r0, sp, #568	@ 0x238
c0de1122:	f000 f8ef 	bl	c0de1304 <OUTLINED_FUNCTION_3>
c0de1126:	2800      	cmp	r0, #0
c0de1128:	d150      	bne.n	c0de11cc <handler_cmd_BindingFactors+0xcc>
c0de112a:	a88f      	add	r0, sp, #572	@ 0x23c
c0de112c:	ac8b      	add	r4, sp, #556	@ 0x22c
c0de112e:	4621      	mov	r1, r4
c0de1130:	f001 f97a 	bl	c0de2428 <tEdwards_alloc>
c0de1134:	2800      	cmp	r0, #0
c0de1136:	d149      	bne.n	c0de11cc <handler_cmd_BindingFactors+0xcc>
c0de1138:	ad13      	add	r5, sp, #76	@ 0x4c
c0de113a:	4928      	ldr	r1, [pc, #160]	@ (c0de11dc <handler_cmd_BindingFactors+0xdc>)
c0de113c:	f44f 72f0 	mov.w	r2, #480	@ 0x1e0
c0de1140:	4628      	mov	r0, r5
c0de1142:	4479      	add	r1, pc
c0de1144:	f006 fabe 	bl	c0de76c4 <__aeabi_memcpy>
c0de1148:	9b8e      	ldr	r3, [sp, #568]	@ 0x238
c0de114a:	a88f      	add	r0, sp, #572	@ 0x23c
c0de114c:	4629      	mov	r1, r5
c0de114e:	2203      	movs	r2, #3
c0de1150:	f000 ffe2 	bl	c0de2118 <zkn_encode_group_commitmentHash>
c0de1154:	bbd0      	cbnz	r0, c0de11cc <handler_cmd_BindingFactors+0xcc>
c0de1156:	f50d 7825 	add.w	r8, sp, #660	@ 0x294
c0de115a:	f000 f8ec 	bl	c0de1336 <OUTLINED_FUNCTION_8>
c0de115e:	bba8      	cbnz	r0, c0de11cc <handler_cmd_BindingFactors+0xcc>
c0de1160:	491f      	ldr	r1, [pc, #124]	@ (c0de11e0 <handler_cmd_BindingFactors+0xe0>)
c0de1162:	f10d 0a2c 	add.w	sl, sp, #44	@ 0x2c
c0de1166:	2220      	movs	r2, #32
c0de1168:	4650      	mov	r0, sl
c0de116a:	4479      	add	r1, pc
c0de116c:	f006 faaa 	bl	c0de76c4 <__aeabi_memcpy>
c0de1170:	ad03      	add	r5, sp, #12
c0de1172:	491c      	ldr	r1, [pc, #112]	@ (c0de11e4 <handler_cmd_BindingFactors+0xe4>)
c0de1174:	2220      	movs	r2, #32
c0de1176:	4628      	mov	r0, r5
c0de1178:	4479      	add	r1, pc
c0de117a:	f006 faa3 	bl	c0de76c4 <__aeabi_memcpy>
c0de117e:	f000 f8d2 	bl	c0de1326 <OUTLINED_FUNCTION_7>
c0de1182:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1184:	aa13      	add	r2, sp, #76	@ 0x4c
c0de1186:	f001 f8af 	bl	c0de22e8 <zkn_compute_binding_factors>
c0de118a:	b9f8      	cbnz	r0, c0de11cc <handler_cmd_BindingFactors+0xcc>
c0de118c:	9400      	str	r4, [sp, #0]
c0de118e:	a88f      	add	r0, sp, #572	@ 0x23c
c0de1190:	a913      	add	r1, sp, #76	@ 0x4c
c0de1192:	f000 f8d6 	bl	c0de1342 <OUTLINED_FUNCTION_9>
c0de1196:	b9c8      	cbnz	r0, c0de11cc <handler_cmd_BindingFactors+0xcc>
c0de1198:	a88f      	add	r0, sp, #572	@ 0x23c
c0de119a:	f108 0280 	add.w	r2, r8, #128	@ 0x80
c0de119e:	f108 03a0 	add.w	r3, r8, #160	@ 0xa0
c0de11a2:	a98b      	add	r1, sp, #556	@ 0x22c
c0de11a4:	f001 fc4b 	bl	c0de2a3e <tEdwards_export>
c0de11a8:	b980      	cbnz	r0, c0de11cc <handler_cmd_BindingFactors+0xcc>
c0de11aa:	988e      	ldr	r0, [sp, #568]	@ 0x238
c0de11ac:	f108 01c0 	add.w	r1, r8, #192	@ 0xc0
c0de11b0:	f000 f8a5 	bl	c0de12fe <OUTLINED_FUNCTION_2>
c0de11b4:	b950      	cbnz	r0, c0de11cc <handler_cmd_BindingFactors+0xcc>
c0de11b6:	a8a5      	add	r0, sp, #660	@ 0x294
c0de11b8:	21e0      	movs	r1, #224	@ 0xe0
c0de11ba:	f7ff fa51 	bl	c0de0660 <io_send_response_pointer>
c0de11be:	a88e      	add	r0, sp, #568	@ 0x238
c0de11c0:	f005 ffe0 	bl	c0de7184 <cx_bn_destroy>
c0de11c4:	b910      	cbnz	r0, c0de11cc <handler_cmd_BindingFactors+0xcc>
c0de11c6:	f005 ffbf 	bl	c0de7148 <cx_bn_unlock>
c0de11ca:	b128      	cbz	r0, c0de11d8 <handler_cmd_BindingFactors+0xd8>
c0de11cc:	f000 f894 	bl	c0de12f8 <OUTLINED_FUNCTION_1>
c0de11d0:	f50d 7d65 	add.w	sp, sp, #916	@ 0x394
c0de11d4:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de11d8:	2000      	movs	r0, #0
c0de11da:	e7f9      	b.n	c0de11d0 <handler_cmd_BindingFactors+0xd0>
c0de11dc:	000072da 	.word	0x000072da
c0de11e0:	00006cb2 	.word	0x00006cb2
c0de11e4:	00006dc4 	.word	0x00006dc4

c0de11e8 <handler_get_insecure_secret>:
c0de11e8:	b510      	push	{r4, lr}
c0de11ea:	b0ea      	sub	sp, #424	@ 0x1a8
c0de11ec:	2100      	movs	r1, #0
c0de11ee:	f7ff f8eb 	bl	c0de03c8 <handler_get_public_key>
c0de11f2:	4668      	mov	r0, sp
c0de11f4:	2106      	movs	r1, #6
c0de11f6:	2220      	movs	r2, #32
c0de11f8:	f005 fd42 	bl	c0de6c80 <cx_hash_init_ex>
c0de11fc:	b978      	cbnz	r0, c0de121e <handler_get_insecure_secret+0x36>
c0de11fe:	480d      	ldr	r0, [pc, #52]	@ (c0de1234 <handler_get_insecure_secret+0x4c>)
c0de1200:	2241      	movs	r2, #65	@ 0x41
c0de1202:	4448      	add	r0, r9
c0de1204:	f100 0108 	add.w	r1, r0, #8
c0de1208:	4668      	mov	r0, sp
c0de120a:	f005 fd3e 	bl	c0de6c8a <cx_hash_update>
c0de120e:	b930      	cbnz	r0, c0de121e <handler_get_insecure_secret+0x36>
c0de1210:	4c09      	ldr	r4, [pc, #36]	@ (c0de1238 <handler_get_insecure_secret+0x50>)
c0de1212:	4668      	mov	r0, sp
c0de1214:	eb09 0104 	add.w	r1, r9, r4
c0de1218:	f005 fd2d 	bl	c0de6c76 <cx_hash_final>
c0de121c:	b118      	cbz	r0, c0de1226 <handler_get_insecure_secret+0x3e>
c0de121e:	f000 f86b 	bl	c0de12f8 <OUTLINED_FUNCTION_1>
c0de1222:	b06a      	add	sp, #424	@ 0x1a8
c0de1224:	bd10      	pop	{r4, pc}
c0de1226:	eb09 0004 	add.w	r0, r9, r4
c0de122a:	f000 f891 	bl	c0de1350 <OUTLINED_FUNCTION_11>
c0de122e:	2000      	movs	r0, #0
c0de1230:	e7f7      	b.n	c0de1222 <handler_get_insecure_secret+0x3a>
c0de1232:	bf00      	nop
c0de1234:	00000000 	.word	0x00000000
c0de1238:	000002d8 	.word	0x000002d8

c0de123c <handler_cmd_tEddsaPoseidon_Sign_with_secret>:
c0de123c:	b570      	push	{r4, r5, r6, lr}
c0de123e:	f5ad 7d04 	sub.w	sp, sp, #528	@ 0x210
c0de1242:	4606      	mov	r6, r0
c0de1244:	6800      	ldr	r0, [r0, #0]
c0de1246:	2100      	movs	r1, #0
c0de1248:	22ff      	movs	r2, #255	@ 0xff
c0de124a:	7805      	ldrb	r5, [r0, #0]
c0de124c:	ac44      	add	r4, sp, #272	@ 0x110
c0de124e:	f5b1 7f80 	cmp.w	r1, #256	@ 0x100
c0de1252:	d002      	beq.n	c0de125a <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x1e>
c0de1254:	5462      	strb	r2, [r4, r1]
c0de1256:	3101      	adds	r1, #1
c0de1258:	e7f9      	b.n	c0de124e <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x12>
c0de125a:	6871      	ldr	r1, [r6, #4]
c0de125c:	3001      	adds	r0, #1
c0de125e:	aa24      	add	r2, sp, #144	@ 0x90
c0de1260:	3901      	subs	r1, #1
c0de1262:	b129      	cbz	r1, c0de1270 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x34>
c0de1264:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de1268:	3901      	subs	r1, #1
c0de126a:	f802 3b01 	strb.w	r3, [r2], #1
c0de126e:	e7f8      	b.n	c0de1262 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x26>
c0de1270:	f000 f83e 	bl	c0de12f0 <OUTLINED_FUNCTION_0>
c0de1274:	bb90      	cbnz	r0, c0de12dc <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de1276:	6830      	ldr	r0, [r6, #0]
c0de1278:	2100      	movs	r1, #0
c0de127a:	aa03      	add	r2, sp, #12
c0de127c:	3001      	adds	r0, #1
c0de127e:	2920      	cmp	r1, #32
c0de1280:	d003      	beq.n	c0de128a <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x4e>
c0de1282:	5c43      	ldrb	r3, [r0, r1]
c0de1284:	5453      	strb	r3, [r2, r1]
c0de1286:	3101      	adds	r1, #1
c0de1288:	e7f9      	b.n	c0de127e <handler_cmd_tEddsaPoseidon_Sign_with_secret+0x42>
c0de128a:	a80e      	add	r0, sp, #56	@ 0x38
c0de128c:	f000 f863 	bl	c0de1356 <OUTLINED_FUNCTION_12>
c0de1290:	bb20      	cbnz	r0, c0de12dc <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de1292:	a80e      	add	r0, sp, #56	@ 0x38
c0de1294:	a90b      	add	r1, sp, #44	@ 0x2c
c0de1296:	f001 f8c7 	bl	c0de2428 <tEdwards_alloc>
c0de129a:	b9f8      	cbnz	r0, c0de12dc <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de129c:	a80e      	add	r0, sp, #56	@ 0x38
c0de129e:	a924      	add	r1, sp, #144	@ 0x90
c0de12a0:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de12a2:	f000 fccf 	bl	c0de1c44 <zkn_prv2pub>
c0de12a6:	b9c8      	cbnz	r0, c0de12dc <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de12a8:	a80e      	add	r0, sp, #56	@ 0x38
c0de12aa:	f104 0320 	add.w	r3, r4, #32
c0de12ae:	a90b      	add	r1, sp, #44	@ 0x2c
c0de12b0:	f000 f84b 	bl	c0de134a <OUTLINED_FUNCTION_10>
c0de12b4:	b990      	cbnz	r0, c0de12dc <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de12b6:	2020      	movs	r0, #32
c0de12b8:	e9cd 0400 	strd	r0, r4, [sp]
c0de12bc:	480b      	ldr	r0, [pc, #44]	@ (c0de12ec <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xb0>)
c0de12be:	eb09 0100 	add.w	r1, r9, r0
c0de12c2:	a80e      	add	r0, sp, #56	@ 0x38
c0de12c4:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de12c6:	ab03      	add	r3, sp, #12
c0de12c8:	f000 fce4 	bl	c0de1c94 <EddsaPoseidon_Sign_final>
c0de12cc:	b930      	cbnz	r0, c0de12dc <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa0>
c0de12ce:	a844      	add	r0, sp, #272	@ 0x110
c0de12d0:	2160      	movs	r1, #96	@ 0x60
c0de12d2:	f7ff f9c5 	bl	c0de0660 <io_send_response_pointer>
c0de12d6:	f005 ff37 	bl	c0de7148 <cx_bn_unlock>
c0de12da:	b120      	cbz	r0, c0de12e6 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xaa>
c0de12dc:	f000 f80c 	bl	c0de12f8 <OUTLINED_FUNCTION_1>
c0de12e0:	f50d 7d04 	add.w	sp, sp, #528	@ 0x210
c0de12e4:	bd70      	pop	{r4, r5, r6, pc}
c0de12e6:	2000      	movs	r0, #0
c0de12e8:	e7fa      	b.n	c0de12e0 <handler_cmd_tEddsaPoseidon_Sign_with_secret+0xa4>
c0de12ea:	bf00      	nop
c0de12ec:	000002d8 	.word	0x000002d8

c0de12f0 <OUTLINED_FUNCTION_0>:
c0de12f0:	2020      	movs	r0, #32
c0de12f2:	2100      	movs	r1, #0
c0de12f4:	f005 bf1e 	b.w	c0de7134 <cx_bn_lock>

c0de12f8 <OUTLINED_FUNCTION_1>:
c0de12f8:	b280      	uxth	r0, r0
c0de12fa:	f7ff b9bc 	b.w	c0de0676 <io_send_sw>

c0de12fe <OUTLINED_FUNCTION_2>:
c0de12fe:	2220      	movs	r2, #32
c0de1300:	f005 bf74 	b.w	c0de71ec <cx_bn_export>

c0de1304 <OUTLINED_FUNCTION_3>:
c0de1304:	2120      	movs	r1, #32
c0de1306:	f005 bf27 	b.w	c0de7158 <cx_bn_alloc>

c0de130a <OUTLINED_FUNCTION_4>:
c0de130a:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de130e:	9b01      	ldr	r3, [sp, #4]
c0de1310:	9a04      	ldr	r2, [sp, #16]
c0de1312:	3001      	adds	r0, #1
c0de1314:	3901      	subs	r1, #1
c0de1316:	4770      	bx	lr

c0de1318 <OUTLINED_FUNCTION_5>:
c0de1318:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de131c:	f7ff b9a0 	b.w	c0de0660 <io_send_response_pointer>

c0de1320 <OUTLINED_FUNCTION_6>:
c0de1320:	2320      	movs	r3, #32
c0de1322:	f005 bf23 	b.w	c0de716c <cx_bn_alloc_init>

c0de1326 <OUTLINED_FUNCTION_7>:
c0de1326:	f108 0620 	add.w	r6, r8, #32
c0de132a:	e9cd 5700 	strd	r5, r7, [sp]
c0de132e:	4651      	mov	r1, sl
c0de1330:	2303      	movs	r3, #3
c0de1332:	9602      	str	r6, [sp, #8]
c0de1334:	4770      	bx	lr

c0de1336 <OUTLINED_FUNCTION_8>:
c0de1336:	988e      	ldr	r0, [sp, #568]	@ 0x238
c0de1338:	2220      	movs	r2, #32
c0de133a:	2720      	movs	r7, #32
c0de133c:	4641      	mov	r1, r8
c0de133e:	f005 bf55 	b.w	c0de71ec <cx_bn_export>

c0de1342 <OUTLINED_FUNCTION_9>:
c0de1342:	4632      	mov	r2, r6
c0de1344:	2303      	movs	r3, #3
c0de1346:	f000 bf64 	b.w	c0de2212 <zkn_compute_group_commitment>

c0de134a <OUTLINED_FUNCTION_10>:
c0de134a:	4622      	mov	r2, r4
c0de134c:	f001 bb77 	b.w	c0de2a3e <tEdwards_export>

c0de1350 <OUTLINED_FUNCTION_11>:
c0de1350:	2120      	movs	r1, #32
c0de1352:	f7ff b985 	b.w	c0de0660 <io_send_response_pointer>

c0de1356 <OUTLINED_FUNCTION_12>:
c0de1356:	4629      	mov	r1, r5
c0de1358:	f001 b9e6 	b.w	c0de2728 <tEdwards_Curve_alloc_init>

c0de135c <helper_send_response_pubkey>:
c0de135c:	b5b0      	push	{r4, r5, r7, lr}
c0de135e:	b09a      	sub	sp, #104	@ 0x68
c0de1360:	2041      	movs	r0, #65	@ 0x41
c0de1362:	f10d 0405 	add.w	r4, sp, #5
c0de1366:	2241      	movs	r2, #65	@ 0x41
c0de1368:	f88d 0005 	strb.w	r0, [sp, #5]
c0de136c:	480b      	ldr	r0, [pc, #44]	@ (c0de139c <helper_send_response_pubkey+0x40>)
c0de136e:	eb09 0500 	add.w	r5, r9, r0
c0de1372:	1c60      	adds	r0, r4, #1
c0de1374:	f105 0108 	add.w	r1, r5, #8
c0de1378:	f006 f9a4 	bl	c0de76c4 <__aeabi_memcpy>
c0de137c:	2020      	movs	r0, #32
c0de137e:	f105 0149 	add.w	r1, r5, #73	@ 0x49
c0de1382:	2220      	movs	r2, #32
c0de1384:	f88d 0047 	strb.w	r0, [sp, #71]	@ 0x47
c0de1388:	f104 0043 	add.w	r0, r4, #67	@ 0x43
c0de138c:	f006 f99a 	bl	c0de76c4 <__aeabi_memcpy>
c0de1390:	4620      	mov	r0, r4
c0de1392:	2163      	movs	r1, #99	@ 0x63
c0de1394:	f000 f804 	bl	c0de13a0 <io_send_response_pointer>
c0de1398:	b01a      	add	sp, #104	@ 0x68
c0de139a:	bdb0      	pop	{r4, r5, r7, pc}
c0de139c:	00000000 	.word	0x00000000

c0de13a0 <io_send_response_pointer>:
c0de13a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de13a2:	2200      	movs	r2, #0
c0de13a4:	ab01      	add	r3, sp, #4
c0de13a6:	c307      	stmia	r3!, {r0, r1, r2}
c0de13a8:	a801      	add	r0, sp, #4
c0de13aa:	2101      	movs	r1, #1
c0de13ac:	f44f 4210 	mov.w	r2, #36864	@ 0x9000
c0de13b0:	f005 f9d8 	bl	c0de6764 <io_send_response_buffers>
c0de13b4:	b004      	add	sp, #16
c0de13b6:	bd80      	pop	{r7, pc}

c0de13b8 <helper_send_response_sig>:
c0de13b8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de13ba:	b093      	sub	sp, #76	@ 0x4c
c0de13bc:	f10d 0402 	add.w	r4, sp, #2
c0de13c0:	2149      	movs	r1, #73	@ 0x49
c0de13c2:	1c65      	adds	r5, r4, #1
c0de13c4:	4628      	mov	r0, r5
c0de13c6:	f006 f987 	bl	c0de76d8 <__aeabi_memclr>
c0de13ca:	480b      	ldr	r0, [pc, #44]	@ (c0de13f8 <helper_send_response_sig+0x40>)
c0de13cc:	eb09 0700 	add.w	r7, r9, r0
c0de13d0:	4628      	mov	r0, r5
c0de13d2:	f897 62a0 	ldrb.w	r6, [r7, #672]	@ 0x2a0
c0de13d6:	f507 7116 	add.w	r1, r7, #600	@ 0x258
c0de13da:	4632      	mov	r2, r6
c0de13dc:	f88d 6002 	strb.w	r6, [sp, #2]
c0de13e0:	f006 f970 	bl	c0de76c4 <__aeabi_memcpy>
c0de13e4:	f897 12a1 	ldrb.w	r1, [r7, #673]	@ 0x2a1
c0de13e8:	1930      	adds	r0, r6, r4
c0de13ea:	7041      	strb	r1, [r0, #1]
c0de13ec:	1cb1      	adds	r1, r6, #2
c0de13ee:	4620      	mov	r0, r4
c0de13f0:	f7ff ffd6 	bl	c0de13a0 <io_send_response_pointer>
c0de13f4:	b013      	add	sp, #76	@ 0x4c
c0de13f6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de13f8:	00000000 	.word	0x00000000

c0de13fc <swap_handle_check_address>:
c0de13fc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1400:	b0bc      	sub	sp, #240	@ 0xf0
c0de1402:	4604      	mov	r4, r0
c0de1404:	2000      	movs	r0, #0
c0de1406:	68a5      	ldr	r5, [r4, #8]
c0de1408:	61a0      	str	r0, [r4, #24]
c0de140a:	2d00      	cmp	r5, #0
c0de140c:	d04d      	beq.n	c0de14aa <swap_handle_check_address+0xae>
c0de140e:	6920      	ldr	r0, [r4, #16]
c0de1410:	2800      	cmp	r0, #0
c0de1412:	d04a      	beq.n	c0de14aa <swap_handle_check_address+0xae>
c0de1414:	f006 f9bc 	bl	c0de7790 <strlen>
c0de1418:	2828      	cmp	r0, #40	@ 0x28
c0de141a:	d146      	bne.n	c0de14aa <swap_handle_check_address+0xae>
c0de141c:	7b20      	ldrb	r0, [r4, #12]
c0de141e:	f04f 0800 	mov.w	r8, #0
c0de1422:	9539      	str	r5, [sp, #228]	@ 0xe4
c0de1424:	2161      	movs	r1, #97	@ 0x61
c0de1426:	f8cd 80ec 	str.w	r8, [sp, #236]	@ 0xec
c0de142a:	903a      	str	r0, [sp, #232]	@ 0xe8
c0de142c:	ad15      	add	r5, sp, #84	@ 0x54
c0de142e:	4628      	mov	r0, r5
c0de1430:	f006 f952 	bl	c0de76d8 <__aeabi_memclr>
c0de1434:	ae39      	add	r6, sp, #228	@ 0xe4
c0de1436:	f10d 01e3 	add.w	r1, sp, #227	@ 0xe3
c0de143a:	4630      	mov	r0, r6
c0de143c:	f004 ff40 	bl	c0de62c0 <buffer_read_u8>
c0de1440:	f89d 20e3 	ldrb.w	r2, [sp, #227]	@ 0xe3
c0de1444:	af2e      	add	r7, sp, #184	@ 0xb8
c0de1446:	4630      	mov	r0, r6
c0de1448:	4639      	mov	r1, r7
c0de144a:	f004 ff8c 	bl	c0de6366 <buffer_read_bip32_path>
c0de144e:	2005      	movs	r0, #5
c0de1450:	f105 0141 	add.w	r1, r5, #65	@ 0x41
c0de1454:	f89d 30e3 	ldrb.w	r3, [sp, #227]	@ 0xe3
c0de1458:	463a      	mov	r2, r7
c0de145a:	f8cd 8010 	str.w	r8, [sp, #16]
c0de145e:	e9cd 5100 	strd	r5, r1, [sp]
c0de1462:	e9cd 0802 	strd	r0, r8, [sp, #8]
c0de1466:	2000      	movs	r0, #0
c0de1468:	2121      	movs	r1, #33	@ 0x21
c0de146a:	f005 f83d 	bl	c0de64e8 <bip32_derive_with_seed_get_pubkey_256>
c0de146e:	b9e0      	cbnz	r0, c0de14aa <swap_handle_check_address+0xae>
c0de1470:	ad10      	add	r5, sp, #64	@ 0x40
c0de1472:	2114      	movs	r1, #20
c0de1474:	4628      	mov	r0, r5
c0de1476:	f006 f92f 	bl	c0de76d8 <__aeabi_memclr>
c0de147a:	a815      	add	r0, sp, #84	@ 0x54
c0de147c:	4629      	mov	r1, r5
c0de147e:	2214      	movs	r2, #20
c0de1480:	f7fe fdd2 	bl	c0de0028 <address_from_pubkey>
c0de1484:	ae05      	add	r6, sp, #20
c0de1486:	2129      	movs	r1, #41	@ 0x29
c0de1488:	4630      	mov	r0, r6
c0de148a:	f006 f925 	bl	c0de76d8 <__aeabi_memclr>
c0de148e:	4628      	mov	r0, r5
c0de1490:	2114      	movs	r1, #20
c0de1492:	4632      	mov	r2, r6
c0de1494:	2329      	movs	r3, #41	@ 0x29
c0de1496:	f005 f905 	bl	c0de66a4 <format_hex>
c0de149a:	6921      	ldr	r1, [r4, #16]
c0de149c:	4630      	mov	r0, r6
c0de149e:	2229      	movs	r2, #41	@ 0x29
c0de14a0:	f006 f97e 	bl	c0de77a0 <strncmp>
c0de14a4:	b908      	cbnz	r0, c0de14aa <swap_handle_check_address+0xae>
c0de14a6:	2001      	movs	r0, #1
c0de14a8:	61a0      	str	r0, [r4, #24]
c0de14aa:	b03c      	add	sp, #240	@ 0xf0
c0de14ac:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de14b0 <swap_handle_get_printable_amount>:
c0de14b0:	b570      	push	{r4, r5, r6, lr}
c0de14b2:	b08c      	sub	sp, #48	@ 0x30
c0de14b4:	ac04      	add	r4, sp, #16
c0de14b6:	4606      	mov	r6, r0
c0de14b8:	211e      	movs	r1, #30
c0de14ba:	4620      	mov	r0, r4
c0de14bc:	f006 f90c 	bl	c0de76d8 <__aeabi_memclr>
c0de14c0:	f106 050e 	add.w	r5, r6, #14
c0de14c4:	2132      	movs	r1, #50	@ 0x32
c0de14c6:	4628      	mov	r0, r5
c0de14c8:	f006 f906 	bl	c0de76d8 <__aeabi_memclr>
c0de14cc:	2000      	movs	r0, #0
c0de14ce:	7b31      	ldrb	r1, [r6, #12]
c0de14d0:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de14d4:	68b0      	ldr	r0, [r6, #8]
c0de14d6:	aa02      	add	r2, sp, #8
c0de14d8:	f005 fad0 	bl	c0de6a7c <swap_str_to_u64>
c0de14dc:	b178      	cbz	r0, c0de14fe <swap_handle_get_printable_amount+0x4e>
c0de14de:	2003      	movs	r0, #3
c0de14e0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
c0de14e4:	211e      	movs	r1, #30
c0de14e6:	9000      	str	r0, [sp, #0]
c0de14e8:	4620      	mov	r0, r4
c0de14ea:	f005 f894 	bl	c0de6616 <format_fpu64>
c0de14ee:	9400      	str	r4, [sp, #0]
c0de14f0:	4628      	mov	r0, r5
c0de14f2:	2132      	movs	r1, #50	@ 0x32
c0de14f4:	231e      	movs	r3, #30
c0de14f6:	4a03      	ldr	r2, [pc, #12]	@ (c0de1504 <swap_handle_get_printable_amount+0x54>)
c0de14f8:	447a      	add	r2, pc
c0de14fa:	f005 fc4f 	bl	c0de6d9c <snprintf>
c0de14fe:	b00c      	add	sp, #48	@ 0x30
c0de1500:	bd70      	pop	{r4, r5, r6, pc}
c0de1502:	bf00      	nop
c0de1504:	0000673e 	.word	0x0000673e

c0de1508 <swap_copy_transaction_parameters>:
c0de1508:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de150a:	b093      	sub	sp, #76	@ 0x4c
c0de150c:	6985      	ldr	r5, [r0, #24]
c0de150e:	b3ad      	cbz	r5, c0de157c <swap_copy_transaction_parameters+0x74>
c0de1510:	4604      	mov	r4, r0
c0de1512:	4628      	mov	r0, r5
c0de1514:	f006 f93c 	bl	c0de7790 <strlen>
c0de1518:	2828      	cmp	r0, #40	@ 0x28
c0de151a:	d12f      	bne.n	c0de157c <swap_copy_transaction_parameters+0x74>
c0de151c:	68a7      	ldr	r7, [r4, #8]
c0de151e:	b36f      	cbz	r7, c0de157c <swap_copy_transaction_parameters+0x74>
c0de1520:	466e      	mov	r6, sp
c0de1522:	2148      	movs	r1, #72	@ 0x48
c0de1524:	4630      	mov	r0, r6
c0de1526:	f006 f8d7 	bl	c0de76d8 <__aeabi_memclr>
c0de152a:	f106 0018 	add.w	r0, r6, #24
c0de152e:	2100      	movs	r1, #0
c0de1530:	2928      	cmp	r1, #40	@ 0x28
c0de1532:	d009      	beq.n	c0de1548 <swap_copy_transaction_parameters+0x40>
c0de1534:	5c6a      	ldrb	r2, [r5, r1]
c0de1536:	f1a2 0361 	sub.w	r3, r2, #97	@ 0x61
c0de153a:	b2db      	uxtb	r3, r3
c0de153c:	2b1a      	cmp	r3, #26
c0de153e:	bf38      	it	cc
c0de1540:	3a20      	subcc	r2, #32
c0de1542:	5442      	strb	r2, [r0, r1]
c0de1544:	3101      	adds	r1, #1
c0de1546:	e7f3      	b.n	c0de1530 <swap_copy_transaction_parameters+0x28>
c0de1548:	7b21      	ldrb	r1, [r4, #12]
c0de154a:	f106 0208 	add.w	r2, r6, #8
c0de154e:	4638      	mov	r0, r7
c0de1550:	f005 fa94 	bl	c0de6a7c <swap_str_to_u64>
c0de1554:	b190      	cbz	r0, c0de157c <swap_copy_transaction_parameters+0x74>
c0de1556:	7d21      	ldrb	r1, [r4, #20]
c0de1558:	6920      	ldr	r0, [r4, #16]
c0de155a:	f106 0210 	add.w	r2, r6, #16
c0de155e:	f005 fa8d 	bl	c0de6a7c <swap_str_to_u64>
c0de1562:	b158      	cbz	r0, c0de157c <swap_copy_transaction_parameters+0x74>
c0de1564:	2401      	movs	r4, #1
c0de1566:	f88d 4000 	strb.w	r4, [sp]
c0de156a:	f005 fc0b 	bl	c0de6d84 <os_explicit_zero_BSS_segment>
c0de156e:	4805      	ldr	r0, [pc, #20]	@ (c0de1584 <swap_copy_transaction_parameters+0x7c>)
c0de1570:	4669      	mov	r1, sp
c0de1572:	2248      	movs	r2, #72	@ 0x48
c0de1574:	4448      	add	r0, r9
c0de1576:	f006 f8a5 	bl	c0de76c4 <__aeabi_memcpy>
c0de157a:	e000      	b.n	c0de157e <swap_copy_transaction_parameters+0x76>
c0de157c:	2400      	movs	r4, #0
c0de157e:	4620      	mov	r0, r4
c0de1580:	b013      	add	sp, #76	@ 0x4c
c0de1582:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1584:	000002f8 	.word	0x000002f8

c0de1588 <swap_check_validity>:
c0de1588:	b570      	push	{r4, r5, r6, lr}
c0de158a:	b08c      	sub	sp, #48	@ 0x30
c0de158c:	4e1d      	ldr	r6, [pc, #116]	@ (c0de1604 <swap_check_validity+0x7c>)
c0de158e:	f819 4006 	ldrb.w	r4, [r9, r6]
c0de1592:	b32c      	cbz	r4, c0de15e0 <swap_check_validity+0x58>
c0de1594:	eb09 0406 	add.w	r4, r9, r6
c0de1598:	e9d4 4502 	ldrd	r4, r5, [r4, #8]
c0de159c:	4069      	eors	r1, r5
c0de159e:	4060      	eors	r0, r4
c0de15a0:	4308      	orrs	r0, r1
c0de15a2:	d121      	bne.n	c0de15e8 <swap_check_validity+0x60>
c0de15a4:	eb09 0006 	add.w	r0, r9, r6
c0de15a8:	e9d0 0104 	ldrd	r0, r1, [r0, #16]
c0de15ac:	4059      	eors	r1, r3
c0de15ae:	4050      	eors	r0, r2
c0de15b0:	4308      	orrs	r0, r1
c0de15b2:	d11d      	bne.n	c0de15f0 <swap_check_validity+0x68>
c0de15b4:	ad01      	add	r5, sp, #4
c0de15b6:	9c10      	ldr	r4, [sp, #64]	@ 0x40
c0de15b8:	2129      	movs	r1, #41	@ 0x29
c0de15ba:	4628      	mov	r0, r5
c0de15bc:	f006 f88c 	bl	c0de76d8 <__aeabi_memclr>
c0de15c0:	4620      	mov	r0, r4
c0de15c2:	2114      	movs	r1, #20
c0de15c4:	462a      	mov	r2, r5
c0de15c6:	2329      	movs	r3, #41	@ 0x29
c0de15c8:	f005 f86c 	bl	c0de66a4 <format_hex>
c0de15cc:	eb09 0006 	add.w	r0, r9, r6
c0de15d0:	4629      	mov	r1, r5
c0de15d2:	3018      	adds	r0, #24
c0de15d4:	f006 f8d2 	bl	c0de777c <strcmp>
c0de15d8:	b970      	cbnz	r0, c0de15f8 <swap_check_validity+0x70>
c0de15da:	2001      	movs	r0, #1
c0de15dc:	b00c      	add	sp, #48	@ 0x30
c0de15de:	bd70      	pop	{r4, r5, r6, pc}
c0de15e0:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de15e4:	21ff      	movs	r1, #255	@ 0xff
c0de15e6:	e00a      	b.n	c0de15fe <swap_check_validity+0x76>
c0de15e8:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de15ec:	2101      	movs	r1, #1
c0de15ee:	e006      	b.n	c0de15fe <swap_check_validity+0x76>
c0de15f0:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de15f4:	2103      	movs	r1, #3
c0de15f6:	e002      	b.n	c0de15fe <swap_check_validity+0x76>
c0de15f8:	f44f 4040 	mov.w	r0, #49152	@ 0xc000
c0de15fc:	2102      	movs	r1, #2
c0de15fe:	2200      	movs	r2, #0
c0de1600:	f005 fa03 	bl	c0de6a0a <send_swap_error_simple>
c0de1604:	000002f8 	.word	0x000002f8

c0de1608 <transaction_deserialize>:
c0de1608:	b570      	push	{r4, r5, r6, lr}
c0de160a:	460d      	mov	r5, r1
c0de160c:	4604      	mov	r4, r0
c0de160e:	b910      	cbnz	r0, c0de1616 <transaction_deserialize+0xe>
c0de1610:	2001      	movs	r0, #1
c0de1612:	f005 fb47 	bl	c0de6ca4 <assert_exit>
c0de1616:	b915      	cbnz	r5, c0de161e <transaction_deserialize+0x16>
c0de1618:	2001      	movs	r0, #1
c0de161a:	f005 fb43 	bl	c0de6ca4 <assert_exit>
c0de161e:	6860      	ldr	r0, [r4, #4]
c0de1620:	f5b0 7fff 	cmp.w	r0, #510	@ 0x1fe
c0de1624:	d901      	bls.n	c0de162a <transaction_deserialize+0x22>
c0de1626:	20f9      	movs	r0, #249	@ 0xf9
c0de1628:	e04b      	b.n	c0de16c2 <transaction_deserialize+0xba>
c0de162a:	4620      	mov	r0, r4
c0de162c:	4629      	mov	r1, r5
c0de162e:	2200      	movs	r2, #0
c0de1630:	f004 fe5c 	bl	c0de62ec <buffer_read_u64>
c0de1634:	b330      	cbz	r0, c0de1684 <transaction_deserialize+0x7c>
c0de1636:	6820      	ldr	r0, [r4, #0]
c0de1638:	68a1      	ldr	r1, [r4, #8]
c0de163a:	4408      	add	r0, r1
c0de163c:	2114      	movs	r1, #20
c0de163e:	61a8      	str	r0, [r5, #24]
c0de1640:	4620      	mov	r0, r4
c0de1642:	f004 fe32 	bl	c0de62aa <buffer_seek_cur>
c0de1646:	b1f8      	cbz	r0, c0de1688 <transaction_deserialize+0x80>
c0de1648:	f105 0108 	add.w	r1, r5, #8
c0de164c:	4620      	mov	r0, r4
c0de164e:	2200      	movs	r2, #0
c0de1650:	2600      	movs	r6, #0
c0de1652:	f004 fe4b 	bl	c0de62ec <buffer_read_u64>
c0de1656:	b1c8      	cbz	r0, c0de168c <transaction_deserialize+0x84>
c0de1658:	f105 0120 	add.w	r1, r5, #32
c0de165c:	4620      	mov	r0, r4
c0de165e:	e9c5 6604 	strd	r6, r6, [r5, #16]
c0de1662:	f004 fe63 	bl	c0de632c <buffer_read_varint>
c0de1666:	6a29      	ldr	r1, [r5, #32]
c0de1668:	b990      	cbnz	r0, c0de1690 <transaction_deserialize+0x88>
c0de166a:	6a68      	ldr	r0, [r5, #36]	@ 0x24
c0de166c:	ea5f 0050 	movs.w	r0, r0, lsr #1
c0de1670:	ea4f 0231 	mov.w	r2, r1, rrx
c0de1674:	2300      	movs	r3, #0
c0de1676:	f1d2 02e8 	rsbs	r2, r2, #232	@ 0xe8
c0de167a:	eb73 0000 	sbcs.w	r0, r3, r0
c0de167e:	d207      	bcs.n	c0de1690 <transaction_deserialize+0x88>
c0de1680:	20fc      	movs	r0, #252	@ 0xfc
c0de1682:	e01e      	b.n	c0de16c2 <transaction_deserialize+0xba>
c0de1684:	20ff      	movs	r0, #255	@ 0xff
c0de1686:	e01c      	b.n	c0de16c2 <transaction_deserialize+0xba>
c0de1688:	20fe      	movs	r0, #254	@ 0xfe
c0de168a:	e01a      	b.n	c0de16c2 <transaction_deserialize+0xba>
c0de168c:	20fd      	movs	r0, #253	@ 0xfd
c0de168e:	e018      	b.n	c0de16c2 <transaction_deserialize+0xba>
c0de1690:	6820      	ldr	r0, [r4, #0]
c0de1692:	68a2      	ldr	r2, [r4, #8]
c0de1694:	4410      	add	r0, r2
c0de1696:	61e8      	str	r0, [r5, #28]
c0de1698:	4620      	mov	r0, r4
c0de169a:	f004 fe06 	bl	c0de62aa <buffer_seek_cur>
c0de169e:	b168      	cbz	r0, c0de16bc <transaction_deserialize+0xb4>
c0de16a0:	f105 031c 	add.w	r3, r5, #28
c0de16a4:	cb0d      	ldmia	r3, {r0, r2, r3}
c0de16a6:	f000 f80e 	bl	c0de16c6 <transaction_utils_check_encoding>
c0de16aa:	b148      	cbz	r0, c0de16c0 <transaction_deserialize+0xb8>
c0de16ac:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de16b0:	f06f 0006 	mvn.w	r0, #6
c0de16b4:	428a      	cmp	r2, r1
c0de16b6:	bf08      	it	eq
c0de16b8:	2001      	moveq	r0, #1
c0de16ba:	e002      	b.n	c0de16c2 <transaction_deserialize+0xba>
c0de16bc:	20fb      	movs	r0, #251	@ 0xfb
c0de16be:	e000      	b.n	c0de16c2 <transaction_deserialize+0xba>
c0de16c0:	20fa      	movs	r0, #250	@ 0xfa
c0de16c2:	b240      	sxtb	r0, r0
c0de16c4:	bd70      	pop	{r4, r5, r6, pc}

c0de16c6 <transaction_utils_check_encoding>:
c0de16c6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de16c8:	461c      	mov	r4, r3
c0de16ca:	4615      	mov	r5, r2
c0de16cc:	4606      	mov	r6, r0
c0de16ce:	b910      	cbnz	r0, c0de16d6 <transaction_utils_check_encoding+0x10>
c0de16d0:	2001      	movs	r0, #1
c0de16d2:	f005 fae7 	bl	c0de6ca4 <assert_exit>
c0de16d6:	2000      	movs	r0, #0
c0de16d8:	2300      	movs	r3, #0
c0de16da:	4602      	mov	r2, r0
c0de16dc:	1b40      	subs	r0, r0, r5
c0de16de:	4619      	mov	r1, r3
c0de16e0:	eb73 0004 	sbcs.w	r0, r3, r4
c0de16e4:	d206      	bcs.n	c0de16f4 <transaction_utils_check_encoding+0x2e>
c0de16e6:	56b7      	ldrsb	r7, [r6, r2]
c0de16e8:	1c50      	adds	r0, r2, #1
c0de16ea:	f141 0300 	adc.w	r3, r1, #0
c0de16ee:	f1b7 3fff 	cmp.w	r7, #4294967295	@ 0xffffffff
c0de16f2:	dcf2      	bgt.n	c0de16da <transaction_utils_check_encoding+0x14>
c0de16f4:	2000      	movs	r0, #0
c0de16f6:	1b52      	subs	r2, r2, r5
c0de16f8:	41a1      	sbcs	r1, r4
c0de16fa:	bf28      	it	cs
c0de16fc:	2001      	movcs	r0, #1
c0de16fe:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

c0de1700 <validate_pubkey>:
c0de1700:	b108      	cbz	r0, c0de1706 <validate_pubkey+0x6>
c0de1702:	f7ff be2b 	b.w	c0de135c <helper_send_response_pubkey>
c0de1706:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de170a:	f000 b800 	b.w	c0de170e <io_send_sw>

c0de170e <io_send_sw>:
c0de170e:	b580      	push	{r7, lr}
c0de1710:	4602      	mov	r2, r0
c0de1712:	2000      	movs	r0, #0
c0de1714:	2100      	movs	r1, #0
c0de1716:	f005 f825 	bl	c0de6764 <io_send_response_buffers>
c0de171a:	bd80      	pop	{r7, pc}

c0de171c <validate_transaction>:
c0de171c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de1720:	b08c      	sub	sp, #48	@ 0x30
c0de1722:	b378      	cbz	r0, c0de1784 <validate_transaction+0x68>
c0de1724:	f8df 8094 	ldr.w	r8, [pc, #148]	@ c0de17bc <validate_transaction+0xa0>
c0de1728:	2002      	movs	r0, #2
c0de172a:	2500      	movs	r5, #0
c0de172c:	2720      	movs	r7, #32
c0de172e:	2203      	movs	r2, #3
c0de1730:	f240 6401 	movw	r4, #1537	@ 0x601
c0de1734:	f10d 0c2c 	add.w	ip, sp, #44	@ 0x2c
c0de1738:	f10d 0e28 	add.w	lr, sp, #40	@ 0x28
c0de173c:	950b      	str	r5, [sp, #44]	@ 0x2c
c0de173e:	f809 0008 	strb.w	r0, [r9, r8]
c0de1742:	2048      	movs	r0, #72	@ 0x48
c0de1744:	900a      	str	r0, [sp, #40]	@ 0x28
c0de1746:	eb09 0008 	add.w	r0, r9, r8
c0de174a:	f890 32d4 	ldrb.w	r3, [r0, #724]	@ 0x2d4
c0de174e:	f500 710e 	add.w	r1, r0, #568	@ 0x238
c0de1752:	f500 7616 	add.w	r6, r0, #600	@ 0x258
c0de1756:	e9cd 4200 	strd	r4, r2, [sp]
c0de175a:	f500 722b 	add.w	r2, r0, #684	@ 0x2ac
c0de175e:	2000      	movs	r0, #0
c0de1760:	9508      	str	r5, [sp, #32]
c0de1762:	e9cd c506 	strd	ip, r5, [sp, #24]
c0de1766:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de176a:	2121      	movs	r1, #33	@ 0x21
c0de176c:	e9cd 6e04 	strd	r6, lr, [sp, #16]
c0de1770:	f004 feee 	bl	c0de6550 <bip32_derive_with_seed_ecdsa_sign_hash_256>
c0de1774:	b188      	cbz	r0, c0de179a <validate_transaction+0x7e>
c0de1776:	f24b 0008 	movw	r0, #45064	@ 0xb008
c0de177a:	f809 5008 	strb.w	r5, [r9, r8]
c0de177e:	f7ff ffc6 	bl	c0de170e <io_send_sw>
c0de1782:	e017      	b.n	c0de17b4 <validate_transaction+0x98>
c0de1784:	480d      	ldr	r0, [pc, #52]	@ (c0de17bc <validate_transaction+0xa0>)
c0de1786:	2100      	movs	r1, #0
c0de1788:	f809 1000 	strb.w	r1, [r9, r0]
c0de178c:	f646 1085 	movw	r0, #27013	@ 0x6985
c0de1790:	b00c      	add	sp, #48	@ 0x30
c0de1792:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de1796:	f7ff bfba 	b.w	c0de170e <io_send_sw>
c0de179a:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de179c:	eb09 0008 	add.w	r0, r9, r8
c0de17a0:	f880 12a0 	strb.w	r1, [r0, #672]	@ 0x2a0
c0de17a4:	f89d 102c 	ldrb.w	r1, [sp, #44]	@ 0x2c
c0de17a8:	f001 0101 	and.w	r1, r1, #1
c0de17ac:	f880 12a1 	strb.w	r1, [r0, #673]	@ 0x2a1
c0de17b0:	f7ff fe02 	bl	c0de13b8 <helper_send_response_sig>
c0de17b4:	b00c      	add	sp, #48	@ 0x30
c0de17b6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de17ba:	bf00      	nop
c0de17bc:	00000000 	.word	0x00000000

c0de17c0 <app_quit>:
c0de17c0:	20ff      	movs	r0, #255	@ 0xff
c0de17c2:	f005 fe43 	bl	c0de744c <os_sched_exit>
	...

c0de17c8 <ui_menu_main>:
c0de17c8:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de17ca:	4c19      	ldr	r4, [pc, #100]	@ (c0de1830 <ui_menu_main+0x68>)
c0de17cc:	4817      	ldr	r0, [pc, #92]	@ (c0de182c <ui_menu_main+0x64>)
c0de17ce:	447c      	add	r4, pc
c0de17d0:	eb09 0500 	add.w	r5, r9, r0
c0de17d4:	f000 f8d8 	bl	c0de1988 <OUTLINED_FUNCTION_0>
c0de17d8:	2114      	movs	r1, #20
c0de17da:	7369      	strb	r1, [r5, #13]
c0de17dc:	4915      	ldr	r1, [pc, #84]	@ (c0de1834 <ui_menu_main+0x6c>)
c0de17de:	4a16      	ldr	r2, [pc, #88]	@ (c0de1838 <ui_menu_main+0x70>)
c0de17e0:	4479      	add	r1, pc
c0de17e2:	447a      	add	r2, pc
c0de17e4:	e9c5 2101 	strd	r2, r1, [r5, #4]
c0de17e8:	7800      	ldrb	r0, [r0, #0]
c0de17ea:	7328      	strb	r0, [r5, #12]
c0de17ec:	f000 f8cc 	bl	c0de1988 <OUTLINED_FUNCTION_0>
c0de17f0:	2115      	movs	r1, #21
c0de17f2:	7669      	strb	r1, [r5, #25]
c0de17f4:	4911      	ldr	r1, [pc, #68]	@ (c0de183c <ui_menu_main+0x74>)
c0de17f6:	4a12      	ldr	r2, [pc, #72]	@ (c0de1840 <ui_menu_main+0x78>)
c0de17f8:	4479      	add	r1, pc
c0de17fa:	447a      	add	r2, pc
c0de17fc:	e9c5 2104 	strd	r2, r1, [r5, #16]
c0de1800:	2100      	movs	r1, #0
c0de1802:	7840      	ldrb	r0, [r0, #1]
c0de1804:	7628      	strb	r0, [r5, #24]
c0de1806:	480f      	ldr	r0, [pc, #60]	@ (c0de1844 <ui_menu_main+0x7c>)
c0de1808:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1848 <ui_menu_main+0x80>)
c0de180a:	4b10      	ldr	r3, [pc, #64]	@ (c0de184c <ui_menu_main+0x84>)
c0de180c:	4478      	add	r0, pc
c0de180e:	447a      	add	r2, pc
c0de1810:	447b      	add	r3, pc
c0de1812:	e9cd 3200 	strd	r3, r2, [sp]
c0de1816:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de181a:	2200      	movs	r2, #0
c0de181c:	23ff      	movs	r3, #255	@ 0xff
c0de181e:	480c      	ldr	r0, [pc, #48]	@ (c0de1850 <ui_menu_main+0x88>)
c0de1820:	490c      	ldr	r1, [pc, #48]	@ (c0de1854 <ui_menu_main+0x8c>)
c0de1822:	4478      	add	r0, pc
c0de1824:	4479      	add	r1, pc
c0de1826:	f003 f837 	bl	c0de4898 <nbgl_useCaseHomeAndSettings>
c0de182a:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de182c:	00000340 	.word	0x00000340
c0de1830:	0000742e 	.word	0x0000742e
c0de1834:	00006303 	.word	0x00006303
c0de1838:	0000646a 	.word	0x0000646a
c0de183c:	00006366 	.word	0x00006366
c0de1840:	000061ac 	.word	0x000061ac
c0de1844:	ffffffb1 	.word	0xffffffb1
c0de1848:	00006dfa 	.word	0x00006dfa
c0de184c:	00006dec 	.word	0x00006dec
c0de1850:	000064ae 	.word	0x000064ae
c0de1854:	00005fdb 	.word	0x00005fdb

c0de1858 <controls_callback>:
c0de1858:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de185a:	4c22      	ldr	r4, [pc, #136]	@ (c0de18e4 <controls_callback+0x8c>)
c0de185c:	2815      	cmp	r0, #21
c0de185e:	f809 2004 	strb.w	r2, [r9, r4]
c0de1862:	d011      	beq.n	c0de1888 <controls_callback+0x30>
c0de1864:	2814      	cmp	r0, #20
c0de1866:	d12a      	bne.n	c0de18be <controls_callback+0x66>
c0de1868:	eb09 0504 	add.w	r5, r9, r4
c0de186c:	4c1e      	ldr	r4, [pc, #120]	@ (c0de18e8 <controls_callback+0x90>)
c0de186e:	447c      	add	r4, pc
c0de1870:	f000 f88a 	bl	c0de1988 <OUTLINED_FUNCTION_0>
c0de1874:	7800      	ldrb	r0, [r0, #0]
c0de1876:	fab0 f080 	clz	r0, r0
c0de187a:	0940      	lsrs	r0, r0, #5
c0de187c:	7328      	strb	r0, [r5, #12]
c0de187e:	f88d 000f 	strb.w	r0, [sp, #15]
c0de1882:	f000 f881 	bl	c0de1988 <OUTLINED_FUNCTION_0>
c0de1886:	e015      	b.n	c0de18b4 <controls_callback+0x5c>
c0de1888:	4818      	ldr	r0, [pc, #96]	@ (c0de18ec <controls_callback+0x94>)
c0de188a:	4478      	add	r0, pc
c0de188c:	f005 fc18 	bl	c0de70c0 <pic>
c0de1890:	7840      	ldrb	r0, [r0, #1]
c0de1892:	b1a8      	cbz	r0, c0de18c0 <controls_callback+0x68>
c0de1894:	eb09 0504 	add.w	r5, r9, r4
c0de1898:	4c15      	ldr	r4, [pc, #84]	@ (c0de18f0 <controls_callback+0x98>)
c0de189a:	447c      	add	r4, pc
c0de189c:	f000 f874 	bl	c0de1988 <OUTLINED_FUNCTION_0>
c0de18a0:	7840      	ldrb	r0, [r0, #1]
c0de18a2:	fab0 f080 	clz	r0, r0
c0de18a6:	0940      	lsrs	r0, r0, #5
c0de18a8:	7628      	strb	r0, [r5, #24]
c0de18aa:	f88d 000f 	strb.w	r0, [sp, #15]
c0de18ae:	f000 f86b 	bl	c0de1988 <OUTLINED_FUNCTION_0>
c0de18b2:	3001      	adds	r0, #1
c0de18b4:	f10d 010f 	add.w	r1, sp, #15
c0de18b8:	2201      	movs	r2, #1
c0de18ba:	f005 fc31 	bl	c0de7120 <nvm_write>
c0de18be:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de18c0:	480c      	ldr	r0, [pc, #48]	@ (c0de18f4 <controls_callback+0x9c>)
c0de18c2:	490d      	ldr	r1, [pc, #52]	@ (c0de18f8 <controls_callback+0xa0>)
c0de18c4:	4478      	add	r0, pc
c0de18c6:	4479      	add	r1, pc
c0de18c8:	e9cd 1000 	strd	r1, r0, [sp]
c0de18cc:	480b      	ldr	r0, [pc, #44]	@ (c0de18fc <controls_callback+0xa4>)
c0de18ce:	490c      	ldr	r1, [pc, #48]	@ (c0de1900 <controls_callback+0xa8>)
c0de18d0:	4a0c      	ldr	r2, [pc, #48]	@ (c0de1904 <controls_callback+0xac>)
c0de18d2:	4b0d      	ldr	r3, [pc, #52]	@ (c0de1908 <controls_callback+0xb0>)
c0de18d4:	4478      	add	r0, pc
c0de18d6:	4479      	add	r1, pc
c0de18d8:	447a      	add	r2, pc
c0de18da:	447b      	add	r3, pc
c0de18dc:	f003 fc52 	bl	c0de5184 <nbgl_useCaseChoice>
c0de18e0:	bdbf      	pop	{r0, r1, r2, r3, r4, r5, r7, pc}
c0de18e2:	bf00      	nop
c0de18e4:	00000340 	.word	0x00000340
c0de18e8:	0000738e 	.word	0x0000738e
c0de18ec:	00007372 	.word	0x00007372
c0de18f0:	00007362 	.word	0x00007362
c0de18f4:	00000045 	.word	0x00000045
c0de18f8:	000062be 	.word	0x000062be
c0de18fc:	000060a5 	.word	0x000060a5
c0de1900:	000060d0 	.word	0x000060d0
c0de1904:	00006194 	.word	0x00006194
c0de1908:	0000637a 	.word	0x0000637a

c0de190c <review_warning_choice>:
c0de190c:	b5b0      	push	{r4, r5, r7, lr}
c0de190e:	b086      	sub	sp, #24
c0de1910:	b1a8      	cbz	r0, c0de193e <review_warning_choice+0x32>
c0de1912:	4c17      	ldr	r4, [pc, #92]	@ (c0de1970 <review_warning_choice+0x64>)
c0de1914:	4815      	ldr	r0, [pc, #84]	@ (c0de196c <review_warning_choice+0x60>)
c0de1916:	447c      	add	r4, pc
c0de1918:	eb09 0500 	add.w	r5, r9, r0
c0de191c:	f000 f834 	bl	c0de1988 <OUTLINED_FUNCTION_0>
c0de1920:	7840      	ldrb	r0, [r0, #1]
c0de1922:	fab0 f080 	clz	r0, r0
c0de1926:	0940      	lsrs	r0, r0, #5
c0de1928:	7628      	strb	r0, [r5, #24]
c0de192a:	f88d 0017 	strb.w	r0, [sp, #23]
c0de192e:	f000 f82b 	bl	c0de1988 <OUTLINED_FUNCTION_0>
c0de1932:	3001      	adds	r0, #1
c0de1934:	f10d 0117 	add.w	r1, sp, #23
c0de1938:	2201      	movs	r2, #1
c0de193a:	f005 fbf1 	bl	c0de7120 <nvm_write>
c0de193e:	480b      	ldr	r0, [pc, #44]	@ (c0de196c <review_warning_choice+0x60>)
c0de1940:	2100      	movs	r1, #0
c0de1942:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de1946:	480b      	ldr	r0, [pc, #44]	@ (c0de1974 <review_warning_choice+0x68>)
c0de1948:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1978 <review_warning_choice+0x6c>)
c0de194a:	4c0c      	ldr	r4, [pc, #48]	@ (c0de197c <review_warning_choice+0x70>)
c0de194c:	4478      	add	r0, pc
c0de194e:	447a      	add	r2, pc
c0de1950:	447c      	add	r4, pc
c0de1952:	e9cd 4200 	strd	r4, r2, [sp]
c0de1956:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de195a:	2200      	movs	r2, #0
c0de195c:	4808      	ldr	r0, [pc, #32]	@ (c0de1980 <review_warning_choice+0x74>)
c0de195e:	4909      	ldr	r1, [pc, #36]	@ (c0de1984 <review_warning_choice+0x78>)
c0de1960:	4478      	add	r0, pc
c0de1962:	4479      	add	r1, pc
c0de1964:	f002 ff98 	bl	c0de4898 <nbgl_useCaseHomeAndSettings>
c0de1968:	b006      	add	sp, #24
c0de196a:	bdb0      	pop	{r4, r5, r7, pc}
c0de196c:	00000340 	.word	0x00000340
c0de1970:	000072e6 	.word	0x000072e6
c0de1974:	fffffe71 	.word	0xfffffe71
c0de1978:	00006cba 	.word	0x00006cba
c0de197c:	00006cac 	.word	0x00006cac
c0de1980:	00006370 	.word	0x00006370
c0de1984:	00005e9d 	.word	0x00005e9d

c0de1988 <OUTLINED_FUNCTION_0>:
c0de1988:	4620      	mov	r0, r4
c0de198a:	f005 bb99 	b.w	c0de70c0 <pic>
	...

c0de1990 <ui_display_address>:
c0de1990:	b570      	push	{r4, r5, r6, lr}
c0de1992:	b088      	sub	sp, #32
c0de1994:	4e22      	ldr	r6, [pc, #136]	@ (c0de1a20 <ui_display_address+0x90>)
c0de1996:	eb09 0106 	add.w	r1, r9, r6
c0de199a:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de199e:	f891 12a8 	ldrb.w	r1, [r1, #680]	@ 0x2a8
c0de19a2:	4308      	orrs	r0, r1
c0de19a4:	d12a      	bne.n	c0de19fc <ui_display_address+0x6c>
c0de19a6:	4d1f      	ldr	r5, [pc, #124]	@ (c0de1a24 <ui_display_address+0x94>)
c0de19a8:	212b      	movs	r1, #43	@ 0x2b
c0de19aa:	eb09 0005 	add.w	r0, r9, r5
c0de19ae:	f005 fe93 	bl	c0de76d8 <__aeabi_memclr>
c0de19b2:	ac03      	add	r4, sp, #12
c0de19b4:	2114      	movs	r1, #20
c0de19b6:	4620      	mov	r0, r4
c0de19b8:	f005 fe8e 	bl	c0de76d8 <__aeabi_memclr>
c0de19bc:	eb09 0006 	add.w	r0, r9, r6
c0de19c0:	4621      	mov	r1, r4
c0de19c2:	2214      	movs	r2, #20
c0de19c4:	3008      	adds	r0, #8
c0de19c6:	f7fe fb2f 	bl	c0de0028 <address_from_pubkey>
c0de19ca:	b308      	cbz	r0, c0de1a10 <ui_display_address+0x80>
c0de19cc:	eb09 0205 	add.w	r2, r9, r5
c0de19d0:	a803      	add	r0, sp, #12
c0de19d2:	2114      	movs	r1, #20
c0de19d4:	232b      	movs	r3, #43	@ 0x2b
c0de19d6:	f004 fe65 	bl	c0de66a4 <format_hex>
c0de19da:	3001      	adds	r0, #1
c0de19dc:	d018      	beq.n	c0de1a10 <ui_display_address+0x80>
c0de19de:	4812      	ldr	r0, [pc, #72]	@ (c0de1a28 <ui_display_address+0x98>)
c0de19e0:	2400      	movs	r4, #0
c0de19e2:	2100      	movs	r1, #0
c0de19e4:	4478      	add	r0, pc
c0de19e6:	e9cd 4000 	strd	r4, r0, [sp]
c0de19ea:	eb09 0005 	add.w	r0, r9, r5
c0de19ee:	4a0f      	ldr	r2, [pc, #60]	@ (c0de1a2c <ui_display_address+0x9c>)
c0de19f0:	4b0f      	ldr	r3, [pc, #60]	@ (c0de1a30 <ui_display_address+0xa0>)
c0de19f2:	447a      	add	r2, pc
c0de19f4:	447b      	add	r3, pc
c0de19f6:	f003 f8a9 	bl	c0de4b4c <nbgl_useCaseAddressReview>
c0de19fa:	e00e      	b.n	c0de1a1a <ui_display_address+0x8a>
c0de19fc:	2000      	movs	r0, #0
c0de19fe:	f809 0006 	strb.w	r0, [r9, r6]
c0de1a02:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1a06:	b008      	add	sp, #32
c0de1a08:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de1a0c:	f000 b812 	b.w	c0de1a34 <io_send_sw>
c0de1a10:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1a14:	f000 f80e 	bl	c0de1a34 <io_send_sw>
c0de1a18:	4604      	mov	r4, r0
c0de1a1a:	4620      	mov	r0, r4
c0de1a1c:	b008      	add	sp, #32
c0de1a1e:	bd70      	pop	{r4, r5, r6, pc}
c0de1a20:	00000000 	.word	0x00000000
c0de1a24:	0000035c 	.word	0x0000035c
c0de1a28:	0000005d 	.word	0x0000005d
c0de1a2c:	00005faa 	.word	0x00005faa
c0de1a30:	000062c9 	.word	0x000062c9

c0de1a34 <io_send_sw>:
c0de1a34:	b580      	push	{r7, lr}
c0de1a36:	4602      	mov	r2, r0
c0de1a38:	2000      	movs	r0, #0
c0de1a3a:	2100      	movs	r1, #0
c0de1a3c:	f004 fe92 	bl	c0de6764 <io_send_response_buffers>
c0de1a40:	bd80      	pop	{r7, pc}
	...

c0de1a44 <review_choice>:
c0de1a44:	b510      	push	{r4, lr}
c0de1a46:	4604      	mov	r4, r0
c0de1a48:	f7ff fe5a 	bl	c0de1700 <validate_pubkey>
c0de1a4c:	2007      	movs	r0, #7
c0de1a4e:	2c00      	cmp	r4, #0
c0de1a50:	bf18      	it	ne
c0de1a52:	2006      	movne	r0, #6
c0de1a54:	4902      	ldr	r1, [pc, #8]	@ (c0de1a60 <review_choice+0x1c>)
c0de1a56:	4479      	add	r1, pc
c0de1a58:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1a5c:	f003 ba68 	b.w	c0de4f30 <nbgl_useCaseReviewStatus>
c0de1a60:	fffffd6f 	.word	0xfffffd6f

c0de1a64 <ui_display_transaction_bs_choice>:
c0de1a64:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de1a66:	b08d      	sub	sp, #52	@ 0x34
c0de1a68:	4f43      	ldr	r7, [pc, #268]	@ (c0de1b78 <ui_display_transaction_bs_choice+0x114>)
c0de1a6a:	4604      	mov	r4, r0
c0de1a6c:	eb09 0007 	add.w	r0, r9, r7
c0de1a70:	f890 02a8 	ldrb.w	r0, [r0, #680]	@ 0x2a8
c0de1a74:	2801      	cmp	r0, #1
c0de1a76:	d15d      	bne.n	c0de1b34 <ui_display_transaction_bs_choice+0xd0>
c0de1a78:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de1a7c:	2801      	cmp	r0, #1
c0de1a7e:	d159      	bne.n	c0de1b34 <ui_display_transaction_bs_choice+0xd0>
c0de1a80:	4e3e      	ldr	r6, [pc, #248]	@ (c0de1b7c <ui_display_transaction_bs_choice+0x118>)
c0de1a82:	211e      	movs	r1, #30
c0de1a84:	eb09 0006 	add.w	r0, r9, r6
c0de1a88:	3014      	adds	r0, #20
c0de1a8a:	f005 fe25 	bl	c0de76d8 <__aeabi_memclr>
c0de1a8e:	ad05      	add	r5, sp, #20
c0de1a90:	211e      	movs	r1, #30
c0de1a92:	4628      	mov	r0, r5
c0de1a94:	f005 fe20 	bl	c0de76d8 <__aeabi_memclr>
c0de1a98:	eb09 0007 	add.w	r0, r9, r7
c0de1a9c:	211e      	movs	r1, #30
c0de1a9e:	e9d0 2386 	ldrd	r2, r3, [r0, #536]	@ 0x218
c0de1aa2:	2003      	movs	r0, #3
c0de1aa4:	9000      	str	r0, [sp, #0]
c0de1aa6:	4628      	mov	r0, r5
c0de1aa8:	f004 fdb5 	bl	c0de6616 <format_fpu64>
c0de1aac:	2800      	cmp	r0, #0
c0de1aae:	d04b      	beq.n	c0de1b48 <ui_display_transaction_bs_choice+0xe4>
c0de1ab0:	9500      	str	r5, [sp, #0]
c0de1ab2:	eb09 0506 	add.w	r5, r9, r6
c0de1ab6:	211e      	movs	r1, #30
c0de1ab8:	231e      	movs	r3, #30
c0de1aba:	4a31      	ldr	r2, [pc, #196]	@ (c0de1b80 <ui_display_transaction_bs_choice+0x11c>)
c0de1abc:	f105 0014 	add.w	r0, r5, #20
c0de1ac0:	447a      	add	r2, pc
c0de1ac2:	f005 f96b 	bl	c0de6d9c <snprintf>
c0de1ac6:	3554      	adds	r5, #84	@ 0x54
c0de1ac8:	212b      	movs	r1, #43	@ 0x2b
c0de1aca:	4628      	mov	r0, r5
c0de1acc:	f005 fe04 	bl	c0de76d8 <__aeabi_memclr>
c0de1ad0:	eb09 0007 	add.w	r0, r9, r7
c0de1ad4:	2114      	movs	r1, #20
c0de1ad6:	462a      	mov	r2, r5
c0de1ad8:	232b      	movs	r3, #43	@ 0x2b
c0de1ada:	f8d0 0228 	ldr.w	r0, [r0, #552]	@ 0x228
c0de1ade:	f004 fde1 	bl	c0de66a4 <format_hex>
c0de1ae2:	3001      	adds	r0, #1
c0de1ae4:	d033      	beq.n	c0de1b4e <ui_display_transaction_bs_choice+0xea>
c0de1ae6:	4927      	ldr	r1, [pc, #156]	@ (c0de1b84 <ui_display_transaction_bs_choice+0x120>)
c0de1ae8:	eb09 0006 	add.w	r0, r9, r6
c0de1aec:	2500      	movs	r5, #0
c0de1aee:	4602      	mov	r2, r0
c0de1af0:	4479      	add	r1, pc
c0de1af2:	f842 1f34 	str.w	r1, [r2, #52]!
c0de1af6:	f849 2006 	str.w	r2, [r9, r6]
c0de1afa:	2202      	movs	r2, #2
c0de1afc:	4922      	ldr	r1, [pc, #136]	@ (c0de1b88 <ui_display_transaction_bs_choice+0x124>)
c0de1afe:	7202      	strb	r2, [r0, #8]
c0de1b00:	f100 0254 	add.w	r2, r0, #84	@ 0x54
c0de1b04:	7285      	strb	r5, [r0, #10]
c0de1b06:	4479      	add	r1, pc
c0de1b08:	e9c0 1211 	strd	r1, r2, [r0, #68]	@ 0x44
c0de1b0c:	f100 0114 	add.w	r1, r0, #20
c0de1b10:	6381      	str	r1, [r0, #56]	@ 0x38
c0de1b12:	481e      	ldr	r0, [pc, #120]	@ (c0de1b8c <ui_display_transaction_bs_choice+0x128>)
c0de1b14:	4478      	add	r0, pc
c0de1b16:	b314      	cbz	r4, c0de1b5e <ui_display_transaction_bs_choice+0xfa>
c0de1b18:	e9cd 5002 	strd	r5, r0, [sp, #8]
c0de1b1c:	e9cd 5500 	strd	r5, r5, [sp]
c0de1b20:	eb09 0106 	add.w	r1, r9, r6
c0de1b24:	2000      	movs	r0, #0
c0de1b26:	4a1a      	ldr	r2, [pc, #104]	@ (c0de1b90 <ui_display_transaction_bs_choice+0x12c>)
c0de1b28:	4b1a      	ldr	r3, [pc, #104]	@ (c0de1b94 <ui_display_transaction_bs_choice+0x130>)
c0de1b2a:	447a      	add	r2, pc
c0de1b2c:	447b      	add	r3, pc
c0de1b2e:	f002 fffb 	bl	c0de4b28 <nbgl_useCaseReviewBlindSigning>
c0de1b32:	e011      	b.n	c0de1b58 <ui_display_transaction_bs_choice+0xf4>
c0de1b34:	2000      	movs	r0, #0
c0de1b36:	f809 0007 	strb.w	r0, [r9, r7]
c0de1b3a:	f24b 0007 	movw	r0, #45063	@ 0xb007
c0de1b3e:	b00d      	add	sp, #52	@ 0x34
c0de1b40:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de1b44:	f000 b82c 	b.w	c0de1ba0 <io_send_sw>
c0de1b48:	f24b 0003 	movw	r0, #45059	@ 0xb003
c0de1b4c:	e001      	b.n	c0de1b52 <ui_display_transaction_bs_choice+0xee>
c0de1b4e:	f24b 0002 	movw	r0, #45058	@ 0xb002
c0de1b52:	f000 f825 	bl	c0de1ba0 <io_send_sw>
c0de1b56:	4605      	mov	r5, r0
c0de1b58:	4628      	mov	r0, r5
c0de1b5a:	b00d      	add	sp, #52	@ 0x34
c0de1b5c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1b5e:	9002      	str	r0, [sp, #8]
c0de1b60:	e9cd 5500 	strd	r5, r5, [sp]
c0de1b64:	eb09 0106 	add.w	r1, r9, r6
c0de1b68:	2000      	movs	r0, #0
c0de1b6a:	4a0b      	ldr	r2, [pc, #44]	@ (c0de1b98 <ui_display_transaction_bs_choice+0x134>)
c0de1b6c:	4b0b      	ldr	r3, [pc, #44]	@ (c0de1b9c <ui_display_transaction_bs_choice+0x138>)
c0de1b6e:	447a      	add	r2, pc
c0de1b70:	447b      	add	r3, pc
c0de1b72:	f002 ff39 	bl	c0de49e8 <nbgl_useCaseReview>
c0de1b76:	e7ef      	b.n	c0de1b58 <ui_display_transaction_bs_choice+0xf4>
c0de1b78:	00000000 	.word	0x00000000
c0de1b7c:	00000388 	.word	0x00000388
c0de1b80:	00006176 	.word	0x00006176
c0de1b84:	00005f64 	.word	0x00005f64
c0de1b88:	00006139 	.word	0x00006139
c0de1b8c:	00000099 	.word	0x00000099
c0de1b90:	00005e72 	.word	0x00005e72
c0de1b94:	00005e82 	.word	0x00005e82
c0de1b98:	00005e2e 	.word	0x00005e2e
c0de1b9c:	00005e3e 	.word	0x00005e3e

c0de1ba0 <io_send_sw>:
c0de1ba0:	b580      	push	{r7, lr}
c0de1ba2:	4602      	mov	r2, r0
c0de1ba4:	2000      	movs	r0, #0
c0de1ba6:	2100      	movs	r1, #0
c0de1ba8:	f004 fddc 	bl	c0de6764 <io_send_response_buffers>
c0de1bac:	bd80      	pop	{r7, pc}
	...

c0de1bb0 <review_choice>:
c0de1bb0:	b510      	push	{r4, lr}
c0de1bb2:	4604      	mov	r4, r0
c0de1bb4:	f7ff fdb2 	bl	c0de171c <validate_transaction>
c0de1bb8:	4903      	ldr	r1, [pc, #12]	@ (c0de1bc8 <review_choice+0x18>)
c0de1bba:	f084 0001 	eor.w	r0, r4, #1
c0de1bbe:	4479      	add	r1, pc
c0de1bc0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de1bc4:	f003 b9b4 	b.w	c0de4f30 <nbgl_useCaseReviewStatus>
c0de1bc8:	fffffc07 	.word	0xfffffc07

c0de1bcc <ui_display_blind_signed_transaction>:
c0de1bcc:	2001      	movs	r0, #1
c0de1bce:	f7ff bf49 	b.w	c0de1a64 <ui_display_transaction_bs_choice>

c0de1bd2 <ui_display_transaction>:
c0de1bd2:	2000      	movs	r0, #0
c0de1bd4:	f7ff bf46 	b.w	c0de1a64 <ui_display_transaction_bs_choice>

c0de1bd8 <zkn_prv_hash>:
c0de1bd8:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de1bdc:	460c      	mov	r4, r1
c0de1bde:	e9cd 0200 	strd	r0, r2, [sp]
c0de1be2:	4668      	mov	r0, sp
c0de1be4:	2101      	movs	r1, #1
c0de1be6:	2601      	movs	r6, #1
c0de1be8:	4622      	mov	r2, r4
c0de1bea:	f005 f828 	bl	c0de6c3e <cx_blake2b_512_hash_iovec>
c0de1bee:	4605      	mov	r5, r0
c0de1bf0:	bb18      	cbnz	r0, c0de1c3a <zkn_prv_hash+0x62>
c0de1bf2:	7820      	ldrb	r0, [r4, #0]
c0de1bf4:	f000 00f8 	and.w	r0, r0, #248	@ 0xf8
c0de1bf8:	7020      	strb	r0, [r4, #0]
c0de1bfa:	7fe0      	ldrb	r0, [r4, #31]
c0de1bfc:	f366 109f 	bfi	r0, r6, #6, #26
c0de1c00:	77e0      	strb	r0, [r4, #31]
c0de1c02:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de1c06:	4e0e      	ldr	r6, [pc, #56]	@ (c0de1c40 <zkn_prv_hash+0x68>)
c0de1c08:	447e      	add	r6, pc
c0de1c0a:	47b0      	blx	r6
c0de1c0c:	4680      	mov	r8, r0
c0de1c0e:	468a      	mov	sl, r1
c0de1c10:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de1c14:	47b0      	blx	r6
c0de1c16:	4683      	mov	fp, r0
c0de1c18:	460f      	mov	r7, r1
c0de1c1a:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de1c1e:	47b0      	blx	r6
c0de1c20:	e9c4 0100 	strd	r0, r1, [r4]
c0de1c24:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de1c28:	47b0      	blx	r6
c0de1c2a:	f104 0208 	add.w	r2, r4, #8
c0de1c2e:	e882 0803 	stmia.w	r2, {r0, r1, fp}
c0de1c32:	f104 0014 	add.w	r0, r4, #20
c0de1c36:	e880 0580 	stmia.w	r0, {r7, r8, sl}
c0de1c3a:	4628      	mov	r0, r5
c0de1c3c:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de1c40:	00000341 	.word	0x00000341

c0de1c44 <zkn_prv2pub>:
c0de1c44:	b570      	push	{r4, r5, r6, lr}
c0de1c46:	b092      	sub	sp, #72	@ 0x48
c0de1c48:	4614      	mov	r4, r2
c0de1c4a:	6802      	ldr	r2, [r0, #0]
c0de1c4c:	ae02      	add	r6, sp, #8
c0de1c4e:	4605      	mov	r5, r0
c0de1c50:	4608      	mov	r0, r1
c0de1c52:	4631      	mov	r1, r6
c0de1c54:	f7ff ffc0 	bl	c0de1bd8 <zkn_prv_hash>
c0de1c58:	2000      	movs	r0, #0
c0de1c5a:	2100      	movs	r1, #0
c0de1c5c:	2820      	cmp	r0, #32
c0de1c5e:	d009      	beq.n	c0de1c74 <zkn_prv2pub+0x30>
c0de1c60:	5c32      	ldrb	r2, [r6, r0]
c0de1c62:	0149      	lsls	r1, r1, #5
c0de1c64:	0613      	lsls	r3, r2, #24
c0de1c66:	ea41 61d3 	orr.w	r1, r1, r3, lsr #27
c0de1c6a:	5431      	strb	r1, [r6, r0]
c0de1c6c:	f002 0107 	and.w	r1, r2, #7
c0de1c70:	3001      	adds	r0, #1
c0de1c72:	e7f3      	b.n	c0de1c5c <zkn_prv2pub+0x18>
c0de1c74:	4629      	mov	r1, r5
c0de1c76:	4628      	mov	r0, r5
c0de1c78:	f851 3b0c 	ldr.w	r3, [r1], #12
c0de1c7c:	9400      	str	r4, [sp, #0]
c0de1c7e:	aa02      	add	r2, sp, #8
c0de1c80:	f000 ffc8 	bl	c0de2c14 <tEdwards_scalarMul>
c0de1c84:	b918      	cbnz	r0, c0de1c8e <zkn_prv2pub+0x4a>
c0de1c86:	4628      	mov	r0, r5
c0de1c88:	4621      	mov	r1, r4
c0de1c8a:	f000 fefe 	bl	c0de2a8a <tEdwards_normalize>
c0de1c8e:	b012      	add	sp, #72	@ 0x48
c0de1c90:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de1c94 <EddsaPoseidon_Sign_final>:
c0de1c94:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1c98:	f5ad 7d46 	sub.w	sp, sp, #792	@ 0x318
c0de1c9c:	4605      	mov	r5, r0
c0de1c9e:	98ce      	ldr	r0, [sp, #824]	@ 0x338
c0de1ca0:	2820      	cmp	r0, #32
c0de1ca2:	d118      	bne.n	c0de1cd6 <EddsaPoseidon_Sign_final+0x42>
c0de1ca4:	460f      	mov	r7, r1
c0de1ca6:	a982      	add	r1, sp, #520	@ 0x208
c0de1ca8:	4628      	mov	r0, r5
c0de1caa:	461e      	mov	r6, r3
c0de1cac:	4692      	mov	sl, r2
c0de1cae:	f000 fbbb 	bl	c0de2428 <tEdwards_alloc>
c0de1cb2:	b988      	cbnz	r0, c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1cb4:	682a      	ldr	r2, [r5, #0]
c0de1cb6:	ac72      	add	r4, sp, #456	@ 0x1c8
c0de1cb8:	4638      	mov	r0, r7
c0de1cba:	4621      	mov	r1, r4
c0de1cbc:	f7ff ff8c 	bl	c0de1bd8 <zkn_prv_hash>
c0de1cc0:	b950      	cbnz	r0, c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1cc2:	f8dd b33c 	ldr.w	fp, [sp, #828]	@ 0x33c
c0de1cc6:	2000      	movs	r0, #0
c0de1cc8:	a95a      	add	r1, sp, #360	@ 0x168
c0de1cca:	2820      	cmp	r0, #32
c0de1ccc:	d008      	beq.n	c0de1ce0 <EddsaPoseidon_Sign_final+0x4c>
c0de1cce:	5c22      	ldrb	r2, [r4, r0]
c0de1cd0:	540a      	strb	r2, [r1, r0]
c0de1cd2:	3001      	adds	r0, #1
c0de1cd4:	e7f9      	b.n	c0de1cca <EddsaPoseidon_Sign_final+0x36>
c0de1cd6:	489b      	ldr	r0, [pc, #620]	@ (c0de1f44 <EddsaPoseidon_Sign_final+0x2b0>)
c0de1cd8:	f50d 7d46 	add.w	sp, sp, #792	@ 0x318
c0de1cdc:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1ce0:	a812      	add	r0, sp, #72	@ 0x48
c0de1ce2:	2109      	movs	r1, #9
c0de1ce4:	2240      	movs	r2, #64	@ 0x40
c0de1ce6:	f004 ffcb 	bl	c0de6c80 <cx_hash_init_ex>
c0de1cea:	2800      	cmp	r0, #0
c0de1cec:	d1f4      	bne.n	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1cee:	f104 0120 	add.w	r1, r4, #32
c0de1cf2:	a812      	add	r0, sp, #72	@ 0x48
c0de1cf4:	2220      	movs	r2, #32
c0de1cf6:	f004 ffc8 	bl	c0de6c8a <cx_hash_update>
c0de1cfa:	2800      	cmp	r0, #0
c0de1cfc:	d1ec      	bne.n	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1cfe:	a812      	add	r0, sp, #72	@ 0x48
c0de1d00:	4631      	mov	r1, r6
c0de1d02:	2220      	movs	r2, #32
c0de1d04:	f004 ffc1 	bl	c0de6c8a <cx_hash_update>
c0de1d08:	2800      	cmp	r0, #0
c0de1d0a:	d1e5      	bne.n	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1d0c:	a812      	add	r0, sp, #72	@ 0x48
c0de1d0e:	ac62      	add	r4, sp, #392	@ 0x188
c0de1d10:	4621      	mov	r1, r4
c0de1d12:	f004 ffb0 	bl	c0de6c76 <cx_hash_final>
c0de1d16:	2800      	cmp	r0, #0
c0de1d18:	d1de      	bne.n	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1d1a:	203f      	movs	r0, #63	@ 0x3f
c0de1d1c:	a972      	add	r1, sp, #456	@ 0x1c8
c0de1d1e:	1c42      	adds	r2, r0, #1
c0de1d20:	d004      	beq.n	c0de1d2c <EddsaPoseidon_Sign_final+0x98>
c0de1d22:	5c22      	ldrb	r2, [r4, r0]
c0de1d24:	3801      	subs	r0, #1
c0de1d26:	f801 2b01 	strb.w	r2, [r1], #1
c0de1d2a:	e7f8      	b.n	c0de1d1e <EddsaPoseidon_Sign_final+0x8a>
c0de1d2c:	a889      	add	r0, sp, #548	@ 0x224
c0de1d2e:	aa72      	add	r2, sp, #456	@ 0x1c8
c0de1d30:	2140      	movs	r1, #64	@ 0x40
c0de1d32:	2340      	movs	r3, #64	@ 0x40
c0de1d34:	f005 fa1a 	bl	c0de716c <cx_bn_alloc_init>
c0de1d38:	2800      	cmp	r0, #0
c0de1d3a:	d1cd      	bne.n	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1d3c:	a887      	add	r0, sp, #540	@ 0x21c
c0de1d3e:	2140      	movs	r1, #64	@ 0x40
c0de1d40:	f005 fa0a 	bl	c0de7158 <cx_bn_alloc>
c0de1d44:	2800      	cmp	r0, #0
c0de1d46:	d1c7      	bne.n	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1d48:	497f      	ldr	r1, [pc, #508]	@ (c0de1f48 <EddsaPoseidon_Sign_final+0x2b4>)
c0de1d4a:	f10d 0808 	add.w	r8, sp, #8
c0de1d4e:	2240      	movs	r2, #64	@ 0x40
c0de1d50:	4640      	mov	r0, r8
c0de1d52:	4479      	add	r1, pc
c0de1d54:	f005 fcb6 	bl	c0de76c4 <__aeabi_memcpy>
c0de1d58:	a888      	add	r0, sp, #544	@ 0x220
c0de1d5a:	2140      	movs	r1, #64	@ 0x40
c0de1d5c:	4642      	mov	r2, r8
c0de1d5e:	2340      	movs	r3, #64	@ 0x40
c0de1d60:	f005 fa04 	bl	c0de716c <cx_bn_alloc_init>
c0de1d64:	2800      	cmp	r0, #0
c0de1d66:	d1b7      	bne.n	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1d68:	9989      	ldr	r1, [sp, #548]	@ 0x224
c0de1d6a:	e9dd 0287 	ldrd	r0, r2, [sp, #540]	@ 0x21c
c0de1d6e:	f005 fa91 	bl	c0de7294 <cx_bn_reduce>
c0de1d72:	2800      	cmp	r0, #0
c0de1d74:	d1b0      	bne.n	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1d76:	aa87      	add	r2, sp, #540	@ 0x21c
c0de1d78:	f105 010c 	add.w	r1, r5, #12
c0de1d7c:	ab82      	add	r3, sp, #520	@ 0x208
c0de1d7e:	4628      	mov	r0, r5
c0de1d80:	f000 fee2 	bl	c0de2b48 <tEdwards_scalarMul_bn>
c0de1d84:	2800      	cmp	r0, #0
c0de1d86:	d1a7      	bne.n	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1d88:	a982      	add	r1, sp, #520	@ 0x208
c0de1d8a:	4628      	mov	r0, r5
c0de1d8c:	f000 fe7d 	bl	c0de2a8a <tEdwards_normalize>
c0de1d90:	2800      	cmp	r0, #0
c0de1d92:	d1a1      	bne.n	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1d94:	9887      	ldr	r0, [sp, #540]	@ 0x21c
c0de1d96:	a952      	add	r1, sp, #328	@ 0x148
c0de1d98:	f000 f8e0 	bl	c0de1f5c <OUTLINED_FUNCTION_1>
c0de1d9c:	2800      	cmp	r0, #0
c0de1d9e:	d19b      	bne.n	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1da0:	a888      	add	r0, sp, #544	@ 0x220
c0de1da2:	f005 f9ef 	bl	c0de7184 <cx_bn_destroy>
c0de1da6:	2800      	cmp	r0, #0
c0de1da8:	d196      	bne.n	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1daa:	a889      	add	r0, sp, #548	@ 0x224
c0de1dac:	f005 f9ea 	bl	c0de7184 <cx_bn_destroy>
c0de1db0:	2800      	cmp	r0, #0
c0de1db2:	d191      	bne.n	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1db4:	a887      	add	r0, sp, #540	@ 0x21c
c0de1db6:	f005 f9e5 	bl	c0de7184 <cx_bn_destroy>
c0de1dba:	2800      	cmp	r0, #0
c0de1dbc:	f47f af8c 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1dc0:	4628      	mov	r0, r5
c0de1dc2:	f000 fde0 	bl	c0de2986 <tEdwards_Curve_partial_destroy>
c0de1dc6:	2800      	cmp	r0, #0
c0de1dc8:	f47f af86 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1dcc:	f105 0420 	add.w	r4, r5, #32
c0de1dd0:	a88a      	add	r0, sp, #552	@ 0x228
c0de1dd2:	2105      	movs	r1, #5
c0de1dd4:	2205      	movs	r2, #5
c0de1dd6:	4623      	mov	r3, r4
c0de1dd8:	f001 f842 	bl	c0de2e60 <Poseidon_alloc_init>
c0de1ddc:	2800      	cmp	r0, #0
c0de1dde:	f47f af7b 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1de2:	201f      	movs	r0, #31
c0de1de4:	a962      	add	r1, sp, #392	@ 0x188
c0de1de6:	1c42      	adds	r2, r0, #1
c0de1de8:	d004      	beq.n	c0de1df4 <EddsaPoseidon_Sign_final+0x160>
c0de1dea:	5c32      	ldrb	r2, [r6, r0]
c0de1dec:	3801      	subs	r0, #1
c0de1dee:	f801 2b01 	strb.w	r2, [r1], #1
c0de1df2:	e7f8      	b.n	c0de1de6 <EddsaPoseidon_Sign_final+0x152>
c0de1df4:	9982      	ldr	r1, [sp, #520]	@ 0x208
c0de1df6:	9891      	ldr	r0, [sp, #580]	@ 0x244
c0de1df8:	f005 f9e4 	bl	c0de71c4 <cx_bn_copy>
c0de1dfc:	2800      	cmp	r0, #0
c0de1dfe:	f47f af6b 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1e02:	9983      	ldr	r1, [sp, #524]	@ 0x20c
c0de1e04:	9892      	ldr	r0, [sp, #584]	@ 0x248
c0de1e06:	f005 f9dd 	bl	c0de71c4 <cx_bn_copy>
c0de1e0a:	2800      	cmp	r0, #0
c0de1e0c:	f47f af64 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1e10:	f8da 1000 	ldr.w	r1, [sl]
c0de1e14:	9893      	ldr	r0, [sp, #588]	@ 0x24c
c0de1e16:	f005 f9d5 	bl	c0de71c4 <cx_bn_copy>
c0de1e1a:	2800      	cmp	r0, #0
c0de1e1c:	f47f af5c 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1e20:	f8da 1004 	ldr.w	r1, [sl, #4]
c0de1e24:	9894      	ldr	r0, [sp, #592]	@ 0x250
c0de1e26:	f005 f9cd 	bl	c0de71c4 <cx_bn_copy>
c0de1e2a:	2800      	cmp	r0, #0
c0de1e2c:	f47f af54 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1e30:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de1e32:	a962      	add	r1, sp, #392	@ 0x188
c0de1e34:	2220      	movs	r2, #32
c0de1e36:	f005 f9b9 	bl	c0de71ac <cx_bn_init>
c0de1e3a:	2800      	cmp	r0, #0
c0de1e3c:	f47f af4c 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1e40:	9895      	ldr	r0, [sp, #596]	@ 0x254
c0de1e42:	4622      	mov	r2, r4
c0de1e44:	4601      	mov	r1, r0
c0de1e46:	f005 fa5b 	bl	c0de7300 <cx_mont_to_montgomery>
c0de1e4a:	2800      	cmp	r0, #0
c0de1e4c:	f47f af44 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1e50:	9882      	ldr	r0, [sp, #520]	@ 0x208
c0de1e52:	f000 f87f 	bl	c0de1f54 <OUTLINED_FUNCTION_0>
c0de1e56:	2800      	cmp	r0, #0
c0de1e58:	f47f af3e 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1e5c:	9883      	ldr	r0, [sp, #524]	@ 0x20c
c0de1e5e:	f000 f879 	bl	c0de1f54 <OUTLINED_FUNCTION_0>
c0de1e62:	2800      	cmp	r0, #0
c0de1e64:	f47f af38 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1e68:	9882      	ldr	r0, [sp, #520]	@ 0x208
c0de1e6a:	4659      	mov	r1, fp
c0de1e6c:	f000 f876 	bl	c0de1f5c <OUTLINED_FUNCTION_1>
c0de1e70:	2800      	cmp	r0, #0
c0de1e72:	f47f af31 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1e76:	9883      	ldr	r0, [sp, #524]	@ 0x20c
c0de1e78:	f10b 0120 	add.w	r1, fp, #32
c0de1e7c:	f000 f86e 	bl	c0de1f5c <OUTLINED_FUNCTION_1>
c0de1e80:	2800      	cmp	r0, #0
c0de1e82:	f47f af29 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1e86:	a982      	add	r1, sp, #520	@ 0x208
c0de1e88:	4628      	mov	r0, r5
c0de1e8a:	f000 fae2 	bl	c0de2452 <tEdwards_destroy>
c0de1e8e:	2800      	cmp	r0, #0
c0de1e90:	f47f af22 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1e94:	a885      	add	r0, sp, #532	@ 0x214
c0de1e96:	2120      	movs	r1, #32
c0de1e98:	f005 f95e 	bl	c0de7158 <cx_bn_alloc>
c0de1e9c:	2800      	cmp	r0, #0
c0de1e9e:	f47f af1b 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1ea2:	a88a      	add	r0, sp, #552	@ 0x228
c0de1ea4:	aa85      	add	r2, sp, #532	@ 0x214
c0de1ea6:	2100      	movs	r1, #0
c0de1ea8:	2301      	movs	r3, #1
c0de1eaa:	f001 f83f 	bl	c0de2f2c <Poseidon>
c0de1eae:	2800      	cmp	r0, #0
c0de1eb0:	f47f af12 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1eb4:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1eb6:	f000 f84d 	bl	c0de1f54 <OUTLINED_FUNCTION_0>
c0de1eba:	2800      	cmp	r0, #0
c0de1ebc:	f47f af0c 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1ec0:	a886      	add	r0, sp, #536	@ 0x218
c0de1ec2:	aa5a      	add	r2, sp, #360	@ 0x168
c0de1ec4:	2120      	movs	r1, #32
c0de1ec6:	2320      	movs	r3, #32
c0de1ec8:	f005 f950 	bl	c0de716c <cx_bn_alloc_init>
c0de1ecc:	2800      	cmp	r0, #0
c0de1ece:	f47f af03 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1ed2:	a801      	add	r0, sp, #4
c0de1ed4:	2120      	movs	r1, #32
c0de1ed6:	f005 f93f 	bl	c0de7158 <cx_bn_alloc>
c0de1eda:	2800      	cmp	r0, #0
c0de1edc:	f47f aefc 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1ee0:	f108 0220 	add.w	r2, r8, #32
c0de1ee4:	a888      	add	r0, sp, #544	@ 0x220
c0de1ee6:	2120      	movs	r1, #32
c0de1ee8:	2320      	movs	r3, #32
c0de1eea:	f005 f93f 	bl	c0de716c <cx_bn_alloc_init>
c0de1eee:	2800      	cmp	r0, #0
c0de1ef0:	f47f aef2 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1ef4:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de1ef6:	e9dd 1285 	ldrd	r1, r2, [sp, #532]	@ 0x214
c0de1efa:	9801      	ldr	r0, [sp, #4]
c0de1efc:	f005 f9be 	bl	c0de727c <cx_bn_mod_mul>
c0de1f00:	2800      	cmp	r0, #0
c0de1f02:	f47f aee9 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1f06:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1f08:	a952      	add	r1, sp, #328	@ 0x148
c0de1f0a:	2220      	movs	r2, #32
c0de1f0c:	f005 f94e 	bl	c0de71ac <cx_bn_init>
c0de1f10:	2800      	cmp	r0, #0
c0de1f12:	f47f aee1 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1f16:	9b88      	ldr	r3, [sp, #544]	@ 0x220
c0de1f18:	9a01      	ldr	r2, [sp, #4]
c0de1f1a:	e9dd 1085 	ldrd	r1, r0, [sp, #532]	@ 0x214
c0de1f1e:	f005 f995 	bl	c0de724c <cx_bn_mod_add>
c0de1f22:	2800      	cmp	r0, #0
c0de1f24:	f47f aed8 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1f28:	9a88      	ldr	r2, [sp, #544]	@ 0x220
c0de1f2a:	e9dd 0185 	ldrd	r0, r1, [sp, #532]	@ 0x214
c0de1f2e:	f005 f9b1 	bl	c0de7294 <cx_bn_reduce>
c0de1f32:	2800      	cmp	r0, #0
c0de1f34:	f47f aed0 	bne.w	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1f38:	9885      	ldr	r0, [sp, #532]	@ 0x214
c0de1f3a:	f10b 0140 	add.w	r1, fp, #64	@ 0x40
c0de1f3e:	f000 f80d 	bl	c0de1f5c <OUTLINED_FUNCTION_1>
c0de1f42:	e6c9      	b.n	c0de1cd8 <EddsaPoseidon_Sign_final+0x44>
c0de1f44:	5a4b4e03 	.word	0x5a4b4e03
c0de1f48:	0000690e 	.word	0x0000690e

c0de1f4c <rev64>:
c0de1f4c:	ba0a      	rev	r2, r1
c0de1f4e:	ba01      	rev	r1, r0
c0de1f50:	4610      	mov	r0, r2
c0de1f52:	4770      	bx	lr

c0de1f54 <OUTLINED_FUNCTION_0>:
c0de1f54:	4622      	mov	r2, r4
c0de1f56:	4601      	mov	r1, r0
c0de1f58:	f005 b9de 	b.w	c0de7318 <cx_mont_from_montgomery>

c0de1f5c <OUTLINED_FUNCTION_1>:
c0de1f5c:	2220      	movs	r2, #32
c0de1f5e:	f005 b945 	b.w	c0de71ec <cx_bn_export>

c0de1f62 <zkn_frost_interpolate>:
c0de1f62:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1f66:	b085      	sub	sp, #20
c0de1f68:	460e      	mov	r6, r1
c0de1f6a:	4607      	mov	r7, r0
c0de1f6c:	a803      	add	r0, sp, #12
c0de1f6e:	2120      	movs	r1, #32
c0de1f70:	f000 fa50 	bl	c0de2414 <OUTLINED_FUNCTION_2>
c0de1f74:	b988      	cbnz	r0, c0de1f9a <zkn_frost_interpolate+0x38>
c0de1f76:	a802      	add	r0, sp, #8
c0de1f78:	f000 fa53 	bl	c0de2422 <OUTLINED_FUNCTION_4>
c0de1f7c:	b968      	cbnz	r0, c0de1f9a <zkn_frost_interpolate+0x38>
c0de1f7e:	a801      	add	r0, sp, #4
c0de1f80:	f000 fa4f 	bl	c0de2422 <OUTLINED_FUNCTION_4>
c0de1f84:	b948      	cbnz	r0, c0de1f9a <zkn_frost_interpolate+0x38>
c0de1f86:	9803      	ldr	r0, [sp, #12]
c0de1f88:	2101      	movs	r1, #1
c0de1f8a:	f005 f925 	bl	c0de71d8 <cx_bn_set_u32>
c0de1f8e:	b920      	cbnz	r0, c0de1f9a <zkn_frost_interpolate+0x38>
c0de1f90:	9802      	ldr	r0, [sp, #8]
c0de1f92:	2101      	movs	r1, #1
c0de1f94:	f005 f920 	bl	c0de71d8 <cx_bn_set_u32>
c0de1f98:	b110      	cbz	r0, c0de1fa0 <zkn_frost_interpolate+0x3e>
c0de1f9a:	b005      	add	sp, #20
c0de1f9c:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de1fa0:	f8dd 8030 	ldr.w	r8, [sp, #48]	@ 0x30
c0de1fa4:	f10d 0a10 	add.w	sl, sp, #16
c0de1fa8:	b31e      	cbz	r6, c0de1ff2 <zkn_frost_interpolate+0x90>
c0de1faa:	6838      	ldr	r0, [r7, #0]
c0de1fac:	4629      	mov	r1, r5
c0de1fae:	4652      	mov	r2, sl
c0de1fb0:	f005 f928 	bl	c0de7204 <cx_bn_cmp>
c0de1fb4:	2800      	cmp	r0, #0
c0de1fb6:	d1f0      	bne.n	c0de1f9a <zkn_frost_interpolate+0x38>
c0de1fb8:	9804      	ldr	r0, [sp, #16]
c0de1fba:	b1b8      	cbz	r0, c0de1fec <zkn_frost_interpolate+0x8a>
c0de1fbc:	9802      	ldr	r0, [sp, #8]
c0de1fbe:	683a      	ldr	r2, [r7, #0]
c0de1fc0:	4623      	mov	r3, r4
c0de1fc2:	4601      	mov	r1, r0
c0de1fc4:	f005 f95a 	bl	c0de727c <cx_bn_mod_mul>
c0de1fc8:	2800      	cmp	r0, #0
c0de1fca:	d1e6      	bne.n	c0de1f9a <zkn_frost_interpolate+0x38>
c0de1fcc:	6839      	ldr	r1, [r7, #0]
c0de1fce:	9801      	ldr	r0, [sp, #4]
c0de1fd0:	462a      	mov	r2, r5
c0de1fd2:	4623      	mov	r3, r4
c0de1fd4:	f005 f946 	bl	c0de7264 <cx_bn_mod_sub>
c0de1fd8:	2800      	cmp	r0, #0
c0de1fda:	d1de      	bne.n	c0de1f9a <zkn_frost_interpolate+0x38>
c0de1fdc:	9803      	ldr	r0, [sp, #12]
c0de1fde:	9a01      	ldr	r2, [sp, #4]
c0de1fe0:	4623      	mov	r3, r4
c0de1fe2:	4601      	mov	r1, r0
c0de1fe4:	f005 f94a 	bl	c0de727c <cx_bn_mod_mul>
c0de1fe8:	2800      	cmp	r0, #0
c0de1fea:	d1d6      	bne.n	c0de1f9a <zkn_frost_interpolate+0x38>
c0de1fec:	3704      	adds	r7, #4
c0de1fee:	3e01      	subs	r6, #1
c0de1ff0:	e7da      	b.n	c0de1fa8 <zkn_frost_interpolate+0x46>
c0de1ff2:	9903      	ldr	r1, [sp, #12]
c0de1ff4:	4640      	mov	r0, r8
c0de1ff6:	4622      	mov	r2, r4
c0de1ff8:	f005 f958 	bl	c0de72ac <cx_bn_mod_invert_nprime>
c0de1ffc:	2800      	cmp	r0, #0
c0de1ffe:	d1cc      	bne.n	c0de1f9a <zkn_frost_interpolate+0x38>
c0de2000:	9a02      	ldr	r2, [sp, #8]
c0de2002:	4640      	mov	r0, r8
c0de2004:	4641      	mov	r1, r8
c0de2006:	4623      	mov	r3, r4
c0de2008:	f005 f938 	bl	c0de727c <cx_bn_mod_mul>
c0de200c:	2800      	cmp	r0, #0
c0de200e:	d1c4      	bne.n	c0de1f9a <zkn_frost_interpolate+0x38>
c0de2010:	a803      	add	r0, sp, #12
c0de2012:	f005 f8b7 	bl	c0de7184 <cx_bn_destroy>
c0de2016:	2800      	cmp	r0, #0
c0de2018:	d1bf      	bne.n	c0de1f9a <zkn_frost_interpolate+0x38>
c0de201a:	a802      	add	r0, sp, #8
c0de201c:	f005 f8b2 	bl	c0de7184 <cx_bn_destroy>
c0de2020:	e7bb      	b.n	c0de1f9a <zkn_frost_interpolate+0x38>

c0de2022 <zkn_frost_interpolate_secrets>:
c0de2022:	e92d 45fe 	stmdb	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, lr}
c0de2026:	460f      	mov	r7, r1
c0de2028:	4606      	mov	r6, r0
c0de202a:	a802      	add	r0, sp, #8
c0de202c:	2120      	movs	r1, #32
c0de202e:	461c      	mov	r4, r3
c0de2030:	4692      	mov	sl, r2
c0de2032:	f005 f891 	bl	c0de7158 <cx_bn_alloc>
c0de2036:	b108      	cbz	r0, c0de203c <zkn_frost_interpolate_secrets+0x1a>
c0de2038:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}
c0de203c:	a801      	add	r0, sp, #4
c0de203e:	f000 f9f0 	bl	c0de2422 <OUTLINED_FUNCTION_4>
c0de2042:	2800      	cmp	r0, #0
c0de2044:	d1f8      	bne.n	c0de2038 <zkn_frost_interpolate_secrets+0x16>
c0de2046:	9802      	ldr	r0, [sp, #8]
c0de2048:	2100      	movs	r1, #0
c0de204a:	f005 f8c5 	bl	c0de71d8 <cx_bn_set_u32>
c0de204e:	2800      	cmp	r0, #0
c0de2050:	d1f2      	bne.n	c0de2038 <zkn_frost_interpolate_secrets+0x16>
c0de2052:	f8dd 8028 	ldr.w	r8, [sp, #40]	@ 0x28
c0de2056:	2500      	movs	r5, #0
c0de2058:	42ac      	cmp	r4, r5
c0de205a:	d01d      	beq.n	c0de2098 <zkn_frost_interpolate_secrets+0x76>
c0de205c:	9801      	ldr	r0, [sp, #4]
c0de205e:	f857 2025 	ldr.w	r2, [r7, r5, lsl #2]
c0de2062:	68b3      	ldr	r3, [r6, #8]
c0de2064:	4621      	mov	r1, r4
c0de2066:	9000      	str	r0, [sp, #0]
c0de2068:	4638      	mov	r0, r7
c0de206a:	f7ff ff7a 	bl	c0de1f62 <zkn_frost_interpolate>
c0de206e:	2800      	cmp	r0, #0
c0de2070:	d1e2      	bne.n	c0de2038 <zkn_frost_interpolate_secrets+0x16>
c0de2072:	9801      	ldr	r0, [sp, #4]
c0de2074:	f85a 2025 	ldr.w	r2, [sl, r5, lsl #2]
c0de2078:	68b3      	ldr	r3, [r6, #8]
c0de207a:	4601      	mov	r1, r0
c0de207c:	f005 f8fe 	bl	c0de727c <cx_bn_mod_mul>
c0de2080:	2800      	cmp	r0, #0
c0de2082:	d1d9      	bne.n	c0de2038 <zkn_frost_interpolate_secrets+0x16>
c0de2084:	e9dd 2001 	ldrd	r2, r0, [sp, #4]
c0de2088:	68b3      	ldr	r3, [r6, #8]
c0de208a:	4601      	mov	r1, r0
c0de208c:	f005 f8de 	bl	c0de724c <cx_bn_mod_add>
c0de2090:	3501      	adds	r5, #1
c0de2092:	2800      	cmp	r0, #0
c0de2094:	d0e0      	beq.n	c0de2058 <zkn_frost_interpolate_secrets+0x36>
c0de2096:	e7cf      	b.n	c0de2038 <zkn_frost_interpolate_secrets+0x16>
c0de2098:	68b2      	ldr	r2, [r6, #8]
c0de209a:	9902      	ldr	r1, [sp, #8]
c0de209c:	4640      	mov	r0, r8
c0de209e:	f005 f8f9 	bl	c0de7294 <cx_bn_reduce>
c0de20a2:	e8bd 85fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, r8, sl, pc}

c0de20a6 <zkn_evalshare>:
c0de20a6:	e92d 41fc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, lr}
c0de20aa:	460e      	mov	r6, r1
c0de20ac:	6801      	ldr	r1, [r0, #0]
c0de20ae:	4607      	mov	r7, r0
c0de20b0:	a801      	add	r0, sp, #4
c0de20b2:	f000 f9af 	bl	c0de2414 <OUTLINED_FUNCTION_2>
c0de20b6:	b108      	cbz	r0, c0de20bc <zkn_evalshare+0x16>
c0de20b8:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}
c0de20bc:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de20c0:	f856 1025 	ldr.w	r1, [r6, r5, lsl #2]
c0de20c4:	4640      	mov	r0, r8
c0de20c6:	f005 f87d 	bl	c0de71c4 <cx_bn_copy>
c0de20ca:	2800      	cmp	r0, #0
c0de20cc:	d1f4      	bne.n	c0de20b8 <zkn_evalshare+0x12>
c0de20ce:	3e04      	subs	r6, #4
c0de20d0:	68bb      	ldr	r3, [r7, #8]
c0de20d2:	9801      	ldr	r0, [sp, #4]
c0de20d4:	4641      	mov	r1, r8
c0de20d6:	b17d      	cbz	r5, c0de20f8 <zkn_evalshare+0x52>
c0de20d8:	4622      	mov	r2, r4
c0de20da:	f005 f8cf 	bl	c0de727c <cx_bn_mod_mul>
c0de20de:	2800      	cmp	r0, #0
c0de20e0:	d1ea      	bne.n	c0de20b8 <zkn_evalshare+0x12>
c0de20e2:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
c0de20e6:	68bb      	ldr	r3, [r7, #8]
c0de20e8:	9901      	ldr	r1, [sp, #4]
c0de20ea:	4640      	mov	r0, r8
c0de20ec:	f005 f8ae 	bl	c0de724c <cx_bn_mod_add>
c0de20f0:	3d01      	subs	r5, #1
c0de20f2:	2800      	cmp	r0, #0
c0de20f4:	d0ec      	beq.n	c0de20d0 <zkn_evalshare+0x2a>
c0de20f6:	e7df      	b.n	c0de20b8 <zkn_evalshare+0x12>
c0de20f8:	461a      	mov	r2, r3
c0de20fa:	f005 f8cb 	bl	c0de7294 <cx_bn_reduce>
c0de20fe:	2800      	cmp	r0, #0
c0de2100:	d1da      	bne.n	c0de20b8 <zkn_evalshare+0x12>
c0de2102:	9901      	ldr	r1, [sp, #4]
c0de2104:	4640      	mov	r0, r8
c0de2106:	f005 f85d 	bl	c0de71c4 <cx_bn_copy>
c0de210a:	2800      	cmp	r0, #0
c0de210c:	d1d4      	bne.n	c0de20b8 <zkn_evalshare+0x12>
c0de210e:	a801      	add	r0, sp, #4
c0de2110:	f005 f838 	bl	c0de7184 <cx_bn_destroy>
c0de2114:	e8bd 81fc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, pc}

c0de2118 <zkn_encode_group_commitmentHash>:
c0de2118:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de211c:	b0d6      	sub	sp, #344	@ 0x158
c0de211e:	4606      	mov	r6, r0
c0de2120:	a816      	add	r0, sp, #88	@ 0x58
c0de2122:	461c      	mov	r4, r3
c0de2124:	4615      	mov	r5, r2
c0de2126:	460f      	mov	r7, r1
c0de2128:	f001 f88a 	bl	c0de3240 <zkn_frost_H5_init>
c0de212c:	b110      	cbz	r0, c0de2134 <zkn_encode_group_commitmentHash+0x1c>
c0de212e:	b056      	add	sp, #344	@ 0x158
c0de2130:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2134:	e9cd 7604 	strd	r7, r6, [sp, #16]
c0de2138:	9401      	str	r4, [sp, #4]
c0de213a:	a806      	add	r0, sp, #24
c0de213c:	f04f 0a00 	mov.w	sl, #0
c0de2140:	f04f 0b02 	mov.w	fp, #2
c0de2144:	2604      	movs	r6, #4
c0de2146:	2400      	movs	r4, #0
c0de2148:	9502      	str	r5, [sp, #8]
c0de214a:	f1a0 0801 	sub.w	r8, r0, #1
c0de214e:	42ac      	cmp	r4, r5
c0de2150:	d058      	beq.n	c0de2204 <zkn_encode_group_commitmentHash+0xec>
c0de2152:	9805      	ldr	r0, [sp, #20]
c0de2154:	eb04 0184 	add.w	r1, r4, r4, lsl #2
c0de2158:	9103      	str	r1, [sp, #12]
c0de215a:	6805      	ldr	r5, [r0, #0]
c0de215c:	9804      	ldr	r0, [sp, #16]
c0de215e:	fb05 000a 	mla	r0, r5, sl, r0
c0de2162:	4629      	mov	r1, r5
c0de2164:	b129      	cbz	r1, c0de2172 <zkn_encode_group_commitmentHash+0x5a>
c0de2166:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de216a:	f808 2001 	strb.w	r2, [r8, r1]
c0de216e:	3901      	subs	r1, #1
c0de2170:	e7f8      	b.n	c0de2164 <zkn_encode_group_commitmentHash+0x4c>
c0de2172:	a816      	add	r0, sp, #88	@ 0x58
c0de2174:	a906      	add	r1, sp, #24
c0de2176:	462a      	mov	r2, r5
c0de2178:	f001 f87c 	bl	c0de3274 <zkn_frost_hash_update>
c0de217c:	2800      	cmp	r0, #0
c0de217e:	d1d6      	bne.n	c0de212e <zkn_encode_group_commitmentHash+0x16>
c0de2180:	9803      	ldr	r0, [sp, #12]
c0de2182:	9f04      	ldr	r7, [sp, #16]
c0de2184:	1c43      	adds	r3, r0, #1
c0de2186:	9805      	ldr	r0, [sp, #20]
c0de2188:	fb05 710b 	mla	r1, r5, fp, r7
c0de218c:	6802      	ldr	r2, [r0, #0]
c0de218e:	1e50      	subs	r0, r2, #1
c0de2190:	4615      	mov	r5, r2
c0de2192:	fb02 0303 	mla	r3, r2, r3, r0
c0de2196:	5cfb      	ldrb	r3, [r7, r3]
c0de2198:	b12d      	cbz	r5, c0de21a6 <zkn_encode_group_commitmentHash+0x8e>
c0de219a:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de219e:	f808 7005 	strb.w	r7, [r8, r5]
c0de21a2:	3d01      	subs	r5, #1
c0de21a4:	e7f8      	b.n	c0de2198 <zkn_encode_group_commitmentHash+0x80>
c0de21a6:	a906      	add	r1, sp, #24
c0de21a8:	5c0d      	ldrb	r5, [r1, r0]
c0de21aa:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de21ae:	540b      	strb	r3, [r1, r0]
c0de21b0:	a816      	add	r0, sp, #88	@ 0x58
c0de21b2:	f001 f85f 	bl	c0de3274 <zkn_frost_hash_update>
c0de21b6:	2800      	cmp	r0, #0
c0de21b8:	d1b9      	bne.n	c0de212e <zkn_encode_group_commitmentHash+0x16>
c0de21ba:	9805      	ldr	r0, [sp, #20]
c0de21bc:	9d04      	ldr	r5, [sp, #16]
c0de21be:	6802      	ldr	r2, [r0, #0]
c0de21c0:	9803      	ldr	r0, [sp, #12]
c0de21c2:	1cc3      	adds	r3, r0, #3
c0de21c4:	1e50      	subs	r0, r2, #1
c0de21c6:	fb02 5106 	mla	r1, r2, r6, r5
c0de21ca:	fb02 0303 	mla	r3, r2, r3, r0
c0de21ce:	5ceb      	ldrb	r3, [r5, r3]
c0de21d0:	4615      	mov	r5, r2
c0de21d2:	b12d      	cbz	r5, c0de21e0 <zkn_encode_group_commitmentHash+0xc8>
c0de21d4:	f811 7b01 	ldrb.w	r7, [r1], #1
c0de21d8:	f808 7005 	strb.w	r7, [r8, r5]
c0de21dc:	3d01      	subs	r5, #1
c0de21de:	e7f8      	b.n	c0de21d2 <zkn_encode_group_commitmentHash+0xba>
c0de21e0:	a906      	add	r1, sp, #24
c0de21e2:	5c0d      	ldrb	r5, [r1, r0]
c0de21e4:	ea45 13c3 	orr.w	r3, r5, r3, lsl #7
c0de21e8:	540b      	strb	r3, [r1, r0]
c0de21ea:	a816      	add	r0, sp, #88	@ 0x58
c0de21ec:	f001 f842 	bl	c0de3274 <zkn_frost_hash_update>
c0de21f0:	3605      	adds	r6, #5
c0de21f2:	3401      	adds	r4, #1
c0de21f4:	9d02      	ldr	r5, [sp, #8]
c0de21f6:	f10b 0b05 	add.w	fp, fp, #5
c0de21fa:	f10a 0a05 	add.w	sl, sl, #5
c0de21fe:	2800      	cmp	r0, #0
c0de2200:	d0a5      	beq.n	c0de214e <zkn_encode_group_commitmentHash+0x36>
c0de2202:	e794      	b.n	c0de212e <zkn_encode_group_commitmentHash+0x16>
c0de2204:	9805      	ldr	r0, [sp, #20]
c0de2206:	6881      	ldr	r1, [r0, #8]
c0de2208:	a816      	add	r0, sp, #88	@ 0x58
c0de220a:	9a01      	ldr	r2, [sp, #4]
c0de220c:	f001 f834 	bl	c0de3278 <zkn_frost_hash_final>
c0de2210:	e78d      	b.n	c0de212e <zkn_encode_group_commitmentHash+0x16>

c0de2212 <zkn_compute_group_commitment>:
c0de2212:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2216:	b088      	sub	sp, #32
c0de2218:	460d      	mov	r5, r1
c0de221a:	a905      	add	r1, sp, #20
c0de221c:	461f      	mov	r7, r3
c0de221e:	4692      	mov	sl, r2
c0de2220:	4604      	mov	r4, r0
c0de2222:	f000 f901 	bl	c0de2428 <tEdwards_alloc>
c0de2226:	b948      	cbnz	r0, c0de223c <zkn_compute_group_commitment+0x2a>
c0de2228:	a902      	add	r1, sp, #8
c0de222a:	4620      	mov	r0, r4
c0de222c:	f000 f8fc 	bl	c0de2428 <tEdwards_alloc>
c0de2230:	b920      	cbnz	r0, c0de223c <zkn_compute_group_commitment+0x2a>
c0de2232:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2234:	4620      	mov	r0, r4
c0de2236:	f000 fbef 	bl	c0de2a18 <tEdwards_SetNeutral>
c0de223a:	b110      	cbz	r0, c0de2242 <zkn_compute_group_commitment+0x30>
c0de223c:	b008      	add	sp, #32
c0de223e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2242:	ae05      	add	r6, sp, #20
c0de2244:	f04f 0800 	mov.w	r8, #0
c0de2248:	f04f 0b04 	mov.w	fp, #4
c0de224c:	9501      	str	r5, [sp, #4]
c0de224e:	4547      	cmp	r7, r8
c0de2250:	d041      	beq.n	c0de22d6 <zkn_compute_group_commitment+0xc4>
c0de2252:	6822      	ldr	r2, [r4, #0]
c0de2254:	f1ab 0003 	sub.w	r0, fp, #3
c0de2258:	4633      	mov	r3, r6
c0de225a:	fb02 5100 	mla	r1, r2, r0, r5
c0de225e:	f1ab 0002 	sub.w	r0, fp, #2
c0de2262:	fb02 5200 	mla	r2, r2, r0, r5
c0de2266:	4620      	mov	r0, r4
c0de2268:	f000 fb4e 	bl	c0de2908 <tEdwards_init>
c0de226c:	2800      	cmp	r0, #0
c0de226e:	d1e5      	bne.n	c0de223c <zkn_compute_group_commitment+0x2a>
c0de2270:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de2272:	4620      	mov	r0, r4
c0de2274:	4632      	mov	r2, r6
c0de2276:	460b      	mov	r3, r1
c0de2278:	f000 f967 	bl	c0de254a <tEdwards_add>
c0de227c:	2800      	cmp	r0, #0
c0de227e:	d1dd      	bne.n	c0de223c <zkn_compute_group_commitment+0x2a>
c0de2280:	6822      	ldr	r2, [r4, #0]
c0de2282:	f1ab 0001 	sub.w	r0, fp, #1
c0de2286:	4633      	mov	r3, r6
c0de2288:	fb02 5100 	mla	r1, r2, r0, r5
c0de228c:	fb02 520b 	mla	r2, r2, fp, r5
c0de2290:	4620      	mov	r0, r4
c0de2292:	f000 fb39 	bl	c0de2908 <tEdwards_init>
c0de2296:	2800      	cmp	r0, #0
c0de2298:	d1d0      	bne.n	c0de223c <zkn_compute_group_commitment+0x2a>
c0de229a:	6823      	ldr	r3, [r4, #0]
c0de229c:	4650      	mov	r0, sl
c0de229e:	f10d 0a08 	add.w	sl, sp, #8
c0de22a2:	4631      	mov	r1, r6
c0de22a4:	4605      	mov	r5, r0
c0de22a6:	f8cd a000 	str.w	sl, [sp]
c0de22aa:	fb03 0208 	mla	r2, r3, r8, r0
c0de22ae:	4620      	mov	r0, r4
c0de22b0:	f000 fcb0 	bl	c0de2c14 <tEdwards_scalarMul>
c0de22b4:	2800      	cmp	r0, #0
c0de22b6:	d1c1      	bne.n	c0de223c <zkn_compute_group_commitment+0x2a>
c0de22b8:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de22ba:	4620      	mov	r0, r4
c0de22bc:	4652      	mov	r2, sl
c0de22be:	460b      	mov	r3, r1
c0de22c0:	f000 f943 	bl	c0de254a <tEdwards_add>
c0de22c4:	46aa      	mov	sl, r5
c0de22c6:	9d01      	ldr	r5, [sp, #4]
c0de22c8:	f10b 0b05 	add.w	fp, fp, #5
c0de22cc:	f108 0801 	add.w	r8, r8, #1
c0de22d0:	2800      	cmp	r0, #0
c0de22d2:	d0bc      	beq.n	c0de224e <zkn_compute_group_commitment+0x3c>
c0de22d4:	e7b2      	b.n	c0de223c <zkn_compute_group_commitment+0x2a>
c0de22d6:	a905      	add	r1, sp, #20
c0de22d8:	f000 f8a0 	bl	c0de241c <OUTLINED_FUNCTION_3>
c0de22dc:	2800      	cmp	r0, #0
c0de22de:	d1ad      	bne.n	c0de223c <zkn_compute_group_commitment+0x2a>
c0de22e0:	a902      	add	r1, sp, #8
c0de22e2:	f000 f89b 	bl	c0de241c <OUTLINED_FUNCTION_3>
c0de22e6:	e7a9      	b.n	c0de223c <zkn_compute_group_commitment+0x2a>

c0de22e8 <zkn_compute_binding_factors>:
c0de22e8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de22ec:	b0f4      	sub	sp, #464	@ 0x1d0
c0de22ee:	460e      	mov	r6, r1
c0de22f0:	6801      	ldr	r1, [r0, #0]
c0de22f2:	4607      	mov	r7, r0
c0de22f4:	a873      	add	r0, sp, #460	@ 0x1cc
c0de22f6:	f000 f88d 	bl	c0de2414 <OUTLINED_FUNCTION_2>
c0de22fa:	b9f0      	cbnz	r0, c0de233a <zkn_compute_binding_factors+0x52>
c0de22fc:	6839      	ldr	r1, [r7, #0]
c0de22fe:	a872      	add	r0, sp, #456	@ 0x1c8
c0de2300:	f004 ff2a 	bl	c0de7158 <cx_bn_alloc>
c0de2304:	b9c8      	cbnz	r0, c0de233a <zkn_compute_binding_factors+0x52>
c0de2306:	e9dd 017c 	ldrd	r0, r1, [sp, #496]	@ 0x1f0
c0de230a:	68ba      	ldr	r2, [r7, #8]
c0de230c:	9b73      	ldr	r3, [sp, #460]	@ 0x1cc
c0de230e:	f000 ff4b 	bl	c0de31a8 <Babyfrost_H4>
c0de2312:	b990      	cbnz	r0, c0de233a <zkn_compute_binding_factors+0x52>
c0de2314:	9b72      	ldr	r3, [sp, #456]	@ 0x1c8
c0de2316:	4638      	mov	r0, r7
c0de2318:	4629      	mov	r1, r5
c0de231a:	4622      	mov	r2, r4
c0de231c:	f7ff fefc 	bl	c0de2118 <zkn_encode_group_commitmentHash>
c0de2320:	b958      	cbnz	r0, c0de233a <zkn_compute_binding_factors+0x52>
c0de2322:	683a      	ldr	r2, [r7, #0]
c0de2324:	9873      	ldr	r0, [sp, #460]	@ 0x1cc
c0de2326:	a912      	add	r1, sp, #72	@ 0x48
c0de2328:	f004 ff60 	bl	c0de71ec <cx_bn_export>
c0de232c:	b928      	cbnz	r0, c0de233a <zkn_compute_binding_factors+0x52>
c0de232e:	683a      	ldr	r2, [r7, #0]
c0de2330:	9872      	ldr	r0, [sp, #456]	@ 0x1c8
c0de2332:	a902      	add	r1, sp, #8
c0de2334:	f004 ff5a 	bl	c0de71ec <cx_bn_export>
c0de2338:	b110      	cbz	r0, c0de2340 <zkn_compute_binding_factors+0x58>
c0de233a:	b074      	add	sp, #464	@ 0x1d0
c0de233c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2340:	2000      	movs	r0, #0
c0de2342:	f10d 0ac8 	add.w	sl, sp, #200	@ 0xc8
c0de2346:	f10d 0b88 	add.w	fp, sp, #136	@ 0x88
c0de234a:	f04f 0800 	mov.w	r8, #0
c0de234e:	9000      	str	r0, [sp, #0]
c0de2350:	4544      	cmp	r4, r8
c0de2352:	d043      	beq.n	c0de23dc <zkn_compute_binding_factors+0xf4>
c0de2354:	6839      	ldr	r1, [r7, #0]
c0de2356:	a801      	add	r0, sp, #4
c0de2358:	f004 fefe 	bl	c0de7158 <cx_bn_alloc>
c0de235c:	2800      	cmp	r0, #0
c0de235e:	d1ec      	bne.n	c0de233a <zkn_compute_binding_factors+0x52>
c0de2360:	4650      	mov	r0, sl
c0de2362:	f000 ff53 	bl	c0de320c <zkn_frost_H1_init>
c0de2366:	2800      	cmp	r0, #0
c0de2368:	d1e7      	bne.n	c0de233a <zkn_compute_binding_factors+0x52>
c0de236a:	6839      	ldr	r1, [r7, #0]
c0de236c:	4630      	mov	r0, r6
c0de236e:	465a      	mov	r2, fp
c0de2370:	f000 f845 	bl	c0de23fe <OUTLINED_FUNCTION_0>
c0de2374:	2800      	cmp	r0, #0
c0de2376:	d1e0      	bne.n	c0de233a <zkn_compute_binding_factors+0x52>
c0de2378:	6839      	ldr	r1, [r7, #0]
c0de237a:	a812      	add	r0, sp, #72	@ 0x48
c0de237c:	465a      	mov	r2, fp
c0de237e:	f000 f83e 	bl	c0de23fe <OUTLINED_FUNCTION_0>
c0de2382:	2800      	cmp	r0, #0
c0de2384:	d1d9      	bne.n	c0de233a <zkn_compute_binding_factors+0x52>
c0de2386:	6839      	ldr	r1, [r7, #0]
c0de2388:	a802      	add	r0, sp, #8
c0de238a:	465a      	mov	r2, fp
c0de238c:	f000 f837 	bl	c0de23fe <OUTLINED_FUNCTION_0>
c0de2390:	2800      	cmp	r0, #0
c0de2392:	d1d2      	bne.n	c0de233a <zkn_compute_binding_factors+0x52>
c0de2394:	6839      	ldr	r1, [r7, #0]
c0de2396:	9800      	ldr	r0, [sp, #0]
c0de2398:	465a      	mov	r2, fp
c0de239a:	fb00 5001 	mla	r0, r0, r1, r5
c0de239e:	f000 f82e 	bl	c0de23fe <OUTLINED_FUNCTION_0>
c0de23a2:	2800      	cmp	r0, #0
c0de23a4:	d1c9      	bne.n	c0de233a <zkn_compute_binding_factors+0x52>
c0de23a6:	68b9      	ldr	r1, [r7, #8]
c0de23a8:	9a01      	ldr	r2, [sp, #4]
c0de23aa:	4650      	mov	r0, sl
c0de23ac:	f000 ff64 	bl	c0de3278 <zkn_frost_hash_final>
c0de23b0:	2800      	cmp	r0, #0
c0de23b2:	d1c2      	bne.n	c0de233a <zkn_compute_binding_factors+0x52>
c0de23b4:	683a      	ldr	r2, [r7, #0]
c0de23b6:	987e      	ldr	r0, [sp, #504]	@ 0x1f8
c0de23b8:	fb02 0108 	mla	r1, r2, r8, r0
c0de23bc:	9801      	ldr	r0, [sp, #4]
c0de23be:	f004 ff15 	bl	c0de71ec <cx_bn_export>
c0de23c2:	2800      	cmp	r0, #0
c0de23c4:	d1b9      	bne.n	c0de233a <zkn_compute_binding_factors+0x52>
c0de23c6:	a801      	add	r0, sp, #4
c0de23c8:	f004 fedc 	bl	c0de7184 <cx_bn_destroy>
c0de23cc:	2800      	cmp	r0, #0
c0de23ce:	d1b4      	bne.n	c0de233a <zkn_compute_binding_factors+0x52>
c0de23d0:	9800      	ldr	r0, [sp, #0]
c0de23d2:	f108 0801 	add.w	r8, r8, #1
c0de23d6:	3005      	adds	r0, #5
c0de23d8:	9000      	str	r0, [sp, #0]
c0de23da:	e7b9      	b.n	c0de2350 <zkn_compute_binding_factors+0x68>
c0de23dc:	a873      	add	r0, sp, #460	@ 0x1cc
c0de23de:	f004 fed1 	bl	c0de7184 <cx_bn_destroy>
c0de23e2:	2800      	cmp	r0, #0
c0de23e4:	d1a9      	bne.n	c0de233a <zkn_compute_binding_factors+0x52>
c0de23e6:	a872      	add	r0, sp, #456	@ 0x1c8
c0de23e8:	f004 fecc 	bl	c0de7184 <cx_bn_destroy>
c0de23ec:	e7a5      	b.n	c0de233a <zkn_compute_binding_factors+0x52>

c0de23ee <zkn_serialize_scalar_for_hash>:
c0de23ee:	3a01      	subs	r2, #1
c0de23f0:	b121      	cbz	r1, c0de23fc <zkn_serialize_scalar_for_hash+0xe>
c0de23f2:	f810 3b01 	ldrb.w	r3, [r0], #1
c0de23f6:	5453      	strb	r3, [r2, r1]
c0de23f8:	3901      	subs	r1, #1
c0de23fa:	e7f9      	b.n	c0de23f0 <zkn_serialize_scalar_for_hash+0x2>
c0de23fc:	4770      	bx	lr

c0de23fe <OUTLINED_FUNCTION_0>:
c0de23fe:	f84d ed08 	str.w	lr, [sp, #-8]!
c0de2402:	f7ff fff4 	bl	c0de23ee <zkn_serialize_scalar_for_hash>
c0de2406:	683a      	ldr	r2, [r7, #0]
c0de2408:	4650      	mov	r0, sl
c0de240a:	4659      	mov	r1, fp
c0de240c:	f85d eb08 	ldr.w	lr, [sp], #8
c0de2410:	f000 bf30 	b.w	c0de3274 <zkn_frost_hash_update>

c0de2414 <OUTLINED_FUNCTION_2>:
c0de2414:	461c      	mov	r4, r3
c0de2416:	4615      	mov	r5, r2
c0de2418:	f004 be9e 	b.w	c0de7158 <cx_bn_alloc>

c0de241c <OUTLINED_FUNCTION_3>:
c0de241c:	4620      	mov	r0, r4
c0de241e:	f000 b818 	b.w	c0de2452 <tEdwards_destroy>

c0de2422 <OUTLINED_FUNCTION_4>:
c0de2422:	2120      	movs	r1, #32
c0de2424:	f004 be98 	b.w	c0de7158 <cx_bn_alloc>

c0de2428 <tEdwards_alloc>:
c0de2428:	b5b0      	push	{r4, r5, r7, lr}
c0de242a:	460d      	mov	r5, r1
c0de242c:	6801      	ldr	r1, [r0, #0]
c0de242e:	4604      	mov	r4, r0
c0de2430:	4628      	mov	r0, r5
c0de2432:	f004 fe91 	bl	c0de7158 <cx_bn_alloc>
c0de2436:	b920      	cbnz	r0, c0de2442 <tEdwards_alloc+0x1a>
c0de2438:	6821      	ldr	r1, [r4, #0]
c0de243a:	1d28      	adds	r0, r5, #4
c0de243c:	f004 fe8c 	bl	c0de7158 <cx_bn_alloc>
c0de2440:	b100      	cbz	r0, c0de2444 <tEdwards_alloc+0x1c>
c0de2442:	bdb0      	pop	{r4, r5, r7, pc}
c0de2444:	6821      	ldr	r1, [r4, #0]
c0de2446:	f105 0008 	add.w	r0, r5, #8
c0de244a:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de244e:	f004 be83 	b.w	c0de7158 <cx_bn_alloc>

c0de2452 <tEdwards_destroy>:
c0de2452:	b510      	push	{r4, lr}
c0de2454:	4608      	mov	r0, r1
c0de2456:	460c      	mov	r4, r1
c0de2458:	f004 fe94 	bl	c0de7184 <cx_bn_destroy>
c0de245c:	b918      	cbnz	r0, c0de2466 <tEdwards_destroy+0x14>
c0de245e:	1d20      	adds	r0, r4, #4
c0de2460:	f004 fe90 	bl	c0de7184 <cx_bn_destroy>
c0de2464:	b100      	cbz	r0, c0de2468 <tEdwards_destroy+0x16>
c0de2466:	bd10      	pop	{r4, pc}
c0de2468:	f104 0008 	add.w	r0, r4, #8
c0de246c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2470:	f004 be88 	b.w	c0de7184 <cx_bn_destroy>

c0de2474 <tEdwards_double>:
c0de2474:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2476:	460f      	mov	r7, r1
c0de2478:	4614      	mov	r4, r2
c0de247a:	4605      	mov	r5, r0
c0de247c:	6843      	ldr	r3, [r0, #4]
c0de247e:	6809      	ldr	r1, [r1, #0]
c0de2480:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de2482:	687a      	ldr	r2, [r7, #4]
c0de2484:	f004 fee2 	bl	c0de724c <cx_bn_mod_add>
c0de2488:	2800      	cmp	r0, #0
c0de248a:	d154      	bne.n	c0de2536 <tEdwards_double+0xc2>
c0de248c:	e9d5 010c 	ldrd	r0, r1, [r5, #48]	@ 0x30
c0de2490:	f105 0620 	add.w	r6, r5, #32
c0de2494:	f000 fbe4 	bl	c0de2c60 <OUTLINED_FUNCTION_2>
c0de2498:	2800      	cmp	r0, #0
c0de249a:	d14c      	bne.n	c0de2536 <tEdwards_double+0xc2>
c0de249c:	6839      	ldr	r1, [r7, #0]
c0de249e:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de24a0:	f000 fbde 	bl	c0de2c60 <OUTLINED_FUNCTION_2>
c0de24a4:	2800      	cmp	r0, #0
c0de24a6:	d146      	bne.n	c0de2536 <tEdwards_double+0xc2>
c0de24a8:	6879      	ldr	r1, [r7, #4]
c0de24aa:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de24ac:	f000 fbd8 	bl	c0de2c60 <OUTLINED_FUNCTION_2>
c0de24b0:	2800      	cmp	r0, #0
c0de24b2:	d140      	bne.n	c0de2536 <tEdwards_double+0xc2>
c0de24b4:	69a9      	ldr	r1, [r5, #24]
c0de24b6:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de24b8:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de24ba:	f000 fbcb 	bl	c0de2c54 <OUTLINED_FUNCTION_0>
c0de24be:	bbd0      	cbnz	r0, c0de2536 <tEdwards_double+0xc2>
c0de24c0:	686b      	ldr	r3, [r5, #4]
c0de24c2:	e9d5 210e 	ldrd	r2, r1, [r5, #56]	@ 0x38
c0de24c6:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de24c8:	f004 fec0 	bl	c0de724c <cx_bn_mod_add>
c0de24cc:	bb98      	cbnz	r0, c0de2536 <tEdwards_double+0xc2>
c0de24ce:	68b9      	ldr	r1, [r7, #8]
c0de24d0:	6ca8      	ldr	r0, [r5, #72]	@ 0x48
c0de24d2:	f000 fbc5 	bl	c0de2c60 <OUTLINED_FUNCTION_2>
c0de24d6:	bb70      	cbnz	r0, c0de2536 <tEdwards_double+0xc2>
c0de24d8:	686b      	ldr	r3, [r5, #4]
c0de24da:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de24dc:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de24de:	6caa      	ldr	r2, [r5, #72]	@ 0x48
c0de24e0:	f004 fec0 	bl	c0de7264 <cx_bn_mod_sub>
c0de24e4:	bb38      	cbnz	r0, c0de2536 <tEdwards_double+0xc2>
c0de24e6:	686b      	ldr	r3, [r5, #4]
c0de24e8:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de24ea:	e9d5 2012 	ldrd	r2, r0, [r5, #72]	@ 0x48
c0de24ee:	f004 feb9 	bl	c0de7264 <cx_bn_mod_sub>
c0de24f2:	bb00      	cbnz	r0, c0de2536 <tEdwards_double+0xc2>
c0de24f4:	f105 022c 	add.w	r2, r5, #44	@ 0x2c
c0de24f8:	686b      	ldr	r3, [r5, #4]
c0de24fa:	ca07      	ldmia	r2, {r0, r1, r2}
c0de24fc:	f004 feb2 	bl	c0de7264 <cx_bn_mod_sub>
c0de2500:	b9c8      	cbnz	r0, c0de2536 <tEdwards_double+0xc2>
c0de2502:	686b      	ldr	r3, [r5, #4]
c0de2504:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2508:	6baa      	ldr	r2, [r5, #56]	@ 0x38
c0de250a:	f004 feab 	bl	c0de7264 <cx_bn_mod_sub>
c0de250e:	b990      	cbnz	r0, c0de2536 <tEdwards_double+0xc2>
c0de2510:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de2512:	6ce9      	ldr	r1, [r5, #76]	@ 0x4c
c0de2514:	6820      	ldr	r0, [r4, #0]
c0de2516:	f000 fb9d 	bl	c0de2c54 <OUTLINED_FUNCTION_0>
c0de251a:	b960      	cbnz	r0, c0de2536 <tEdwards_double+0xc2>
c0de251c:	686b      	ldr	r3, [r5, #4]
c0de251e:	e9d5 020d 	ldrd	r0, r2, [r5, #52]	@ 0x34
c0de2522:	6be9      	ldr	r1, [r5, #60]	@ 0x3c
c0de2524:	f004 fe9e 	bl	c0de7264 <cx_bn_mod_sub>
c0de2528:	b928      	cbnz	r0, c0de2536 <tEdwards_double+0xc2>
c0de252a:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de252c:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de252e:	6860      	ldr	r0, [r4, #4]
c0de2530:	f000 fb90 	bl	c0de2c54 <OUTLINED_FUNCTION_0>
c0de2534:	b100      	cbz	r0, c0de2538 <tEdwards_double+0xc4>
c0de2536:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2538:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de253a:	6cea      	ldr	r2, [r5, #76]	@ 0x4c
c0de253c:	68a0      	ldr	r0, [r4, #8]
c0de253e:	4633      	mov	r3, r6
c0de2540:	b001      	add	sp, #4
c0de2542:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2546:	f004 bef3 	b.w	c0de7330 <cx_mont_mul>

c0de254a <tEdwards_add>:
c0de254a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de254e:	4606      	mov	r6, r0
c0de2550:	4617      	mov	r7, r2
c0de2552:	460c      	mov	r4, r1
c0de2554:	6892      	ldr	r2, [r2, #8]
c0de2556:	6889      	ldr	r1, [r1, #8]
c0de2558:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de255a:	4698      	mov	r8, r3
c0de255c:	f106 0520 	add.w	r5, r6, #32
c0de2560:	f000 fb7b 	bl	c0de2c5a <OUTLINED_FUNCTION_1>
c0de2564:	2800      	cmp	r0, #0
c0de2566:	d17d      	bne.n	c0de2664 <tEdwards_add+0x11a>
c0de2568:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de256c:	462b      	mov	r3, r5
c0de256e:	460a      	mov	r2, r1
c0de2570:	f004 fede 	bl	c0de7330 <cx_mont_mul>
c0de2574:	2800      	cmp	r0, #0
c0de2576:	d175      	bne.n	c0de2664 <tEdwards_add+0x11a>
c0de2578:	683a      	ldr	r2, [r7, #0]
c0de257a:	6821      	ldr	r1, [r4, #0]
c0de257c:	6b70      	ldr	r0, [r6, #52]	@ 0x34
c0de257e:	f000 fb6c 	bl	c0de2c5a <OUTLINED_FUNCTION_1>
c0de2582:	2800      	cmp	r0, #0
c0de2584:	d16e      	bne.n	c0de2664 <tEdwards_add+0x11a>
c0de2586:	687a      	ldr	r2, [r7, #4]
c0de2588:	6861      	ldr	r1, [r4, #4]
c0de258a:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de258c:	f000 fb65 	bl	c0de2c5a <OUTLINED_FUNCTION_1>
c0de2590:	2800      	cmp	r0, #0
c0de2592:	d167      	bne.n	c0de2664 <tEdwards_add+0x11a>
c0de2594:	e9d6 120d 	ldrd	r1, r2, [r6, #52]	@ 0x34
c0de2598:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de259a:	f000 fb5e 	bl	c0de2c5a <OUTLINED_FUNCTION_1>
c0de259e:	2800      	cmp	r0, #0
c0de25a0:	d160      	bne.n	c0de2664 <tEdwards_add+0x11a>
c0de25a2:	69f2      	ldr	r2, [r6, #28]
c0de25a4:	6bf0      	ldr	r0, [r6, #60]	@ 0x3c
c0de25a6:	6cf1      	ldr	r1, [r6, #76]	@ 0x4c
c0de25a8:	f000 fb57 	bl	c0de2c5a <OUTLINED_FUNCTION_1>
c0de25ac:	2800      	cmp	r0, #0
c0de25ae:	d159      	bne.n	c0de2664 <tEdwards_add+0x11a>
c0de25b0:	6873      	ldr	r3, [r6, #4]
c0de25b2:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de25b4:	e9d6 200f 	ldrd	r2, r0, [r6, #60]	@ 0x3c
c0de25b8:	f004 fe54 	bl	c0de7264 <cx_bn_mod_sub>
c0de25bc:	2800      	cmp	r0, #0
c0de25be:	d151      	bne.n	c0de2664 <tEdwards_add+0x11a>
c0de25c0:	6873      	ldr	r3, [r6, #4]
c0de25c2:	6b31      	ldr	r1, [r6, #48]	@ 0x30
c0de25c4:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
c0de25c6:	6c70      	ldr	r0, [r6, #68]	@ 0x44
c0de25c8:	f004 fe40 	bl	c0de724c <cx_bn_mod_add>
c0de25cc:	2800      	cmp	r0, #0
c0de25ce:	d149      	bne.n	c0de2664 <tEdwards_add+0x11a>
c0de25d0:	e9d4 1200 	ldrd	r1, r2, [r4]
c0de25d4:	6873      	ldr	r3, [r6, #4]
c0de25d6:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de25d8:	f004 fe38 	bl	c0de724c <cx_bn_mod_add>
c0de25dc:	2800      	cmp	r0, #0
c0de25de:	d141      	bne.n	c0de2664 <tEdwards_add+0x11a>
c0de25e0:	e9d7 1200 	ldrd	r1, r2, [r7]
c0de25e4:	6873      	ldr	r3, [r6, #4]
c0de25e6:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de25e8:	f004 fe30 	bl	c0de724c <cx_bn_mod_add>
c0de25ec:	bbd0      	cbnz	r0, c0de2664 <tEdwards_add+0x11a>
c0de25ee:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de25f0:	e9d6 1212 	ldrd	r1, r2, [r6, #72]	@ 0x48
c0de25f4:	f000 fb31 	bl	c0de2c5a <OUTLINED_FUNCTION_1>
c0de25f8:	bba0      	cbnz	r0, c0de2664 <tEdwards_add+0x11a>
c0de25fa:	6873      	ldr	r3, [r6, #4]
c0de25fc:	e9d6 120c 	ldrd	r1, r2, [r6, #48]	@ 0x30
c0de2600:	6cb0      	ldr	r0, [r6, #72]	@ 0x48
c0de2602:	f004 fe2f 	bl	c0de7264 <cx_bn_mod_sub>
c0de2606:	bb68      	cbnz	r0, c0de2664 <tEdwards_add+0x11a>
c0de2608:	6873      	ldr	r3, [r6, #4]
c0de260a:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
c0de260c:	e9d6 1012 	ldrd	r1, r0, [r6, #72]	@ 0x48
c0de2610:	f004 fe28 	bl	c0de7264 <cx_bn_mod_sub>
c0de2614:	bb30      	cbnz	r0, c0de2664 <tEdwards_add+0x11a>
c0de2616:	e9d6 100b 	ldrd	r1, r0, [r6, #44]	@ 0x2c
c0de261a:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de261c:	f000 fb1d 	bl	c0de2c5a <OUTLINED_FUNCTION_1>
c0de2620:	bb00      	cbnz	r0, c0de2664 <tEdwards_add+0x11a>
c0de2622:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2624:	6c31      	ldr	r1, [r6, #64]	@ 0x40
c0de2626:	f8d8 0000 	ldr.w	r0, [r8]
c0de262a:	f000 fb16 	bl	c0de2c5a <OUTLINED_FUNCTION_1>
c0de262e:	b9c8      	cbnz	r0, c0de2664 <tEdwards_add+0x11a>
c0de2630:	69b1      	ldr	r1, [r6, #24]
c0de2632:	e9d6 020c 	ldrd	r0, r2, [r6, #48]	@ 0x30
c0de2636:	f000 fb10 	bl	c0de2c5a <OUTLINED_FUNCTION_1>
c0de263a:	b998      	cbnz	r0, c0de2664 <tEdwards_add+0x11a>
c0de263c:	6873      	ldr	r3, [r6, #4]
c0de263e:	6b32      	ldr	r2, [r6, #48]	@ 0x30
c0de2640:	6bb1      	ldr	r1, [r6, #56]	@ 0x38
c0de2642:	6cf0      	ldr	r0, [r6, #76]	@ 0x4c
c0de2644:	f004 fe0e 	bl	c0de7264 <cx_bn_mod_sub>
c0de2648:	b960      	cbnz	r0, c0de2664 <tEdwards_add+0x11a>
c0de264a:	6b30      	ldr	r0, [r6, #48]	@ 0x30
c0de264c:	6c71      	ldr	r1, [r6, #68]	@ 0x44
c0de264e:	6cf2      	ldr	r2, [r6, #76]	@ 0x4c
c0de2650:	f000 fb03 	bl	c0de2c5a <OUTLINED_FUNCTION_1>
c0de2654:	b930      	cbnz	r0, c0de2664 <tEdwards_add+0x11a>
c0de2656:	e9d6 120b 	ldrd	r1, r2, [r6, #44]	@ 0x2c
c0de265a:	f8d8 0004 	ldr.w	r0, [r8, #4]
c0de265e:	f000 fafc 	bl	c0de2c5a <OUTLINED_FUNCTION_1>
c0de2662:	b108      	cbz	r0, c0de2668 <tEdwards_add+0x11e>
c0de2664:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2668:	e9d6 1210 	ldrd	r1, r2, [r6, #64]	@ 0x40
c0de266c:	f8d8 0008 	ldr.w	r0, [r8, #8]
c0de2670:	462b      	mov	r3, r5
c0de2672:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2676:	f004 be5b 	b.w	c0de7330 <cx_mont_mul>

c0de267a <tEdwards_IsOnCurve>:
c0de267a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de267c:	4605      	mov	r5, r0
c0de267e:	460f      	mov	r7, r1
c0de2680:	2005      	movs	r0, #5
c0de2682:	6809      	ldr	r1, [r1, #0]
c0de2684:	4614      	mov	r4, r2
c0de2686:	9000      	str	r0, [sp, #0]
c0de2688:	f105 0620 	add.w	r6, r5, #32
c0de268c:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de268e:	460a      	mov	r2, r1
c0de2690:	f000 fae0 	bl	c0de2c54 <OUTLINED_FUNCTION_0>
c0de2694:	b100      	cbz	r0, c0de2698 <tEdwards_IsOnCurve+0x1e>
c0de2696:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2698:	6879      	ldr	r1, [r7, #4]
c0de269a:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de269c:	f000 fae0 	bl	c0de2c60 <OUTLINED_FUNCTION_2>
c0de26a0:	2800      	cmp	r0, #0
c0de26a2:	d1f8      	bne.n	c0de2696 <tEdwards_IsOnCurve+0x1c>
c0de26a4:	e9d5 120b 	ldrd	r1, r2, [r5, #44]	@ 0x2c
c0de26a8:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de26aa:	f000 fad3 	bl	c0de2c54 <OUTLINED_FUNCTION_0>
c0de26ae:	2800      	cmp	r0, #0
c0de26b0:	d1f1      	bne.n	c0de2696 <tEdwards_IsOnCurve+0x1c>
c0de26b2:	69a9      	ldr	r1, [r5, #24]
c0de26b4:	6aea      	ldr	r2, [r5, #44]	@ 0x2c
c0de26b6:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de26b8:	f000 facc 	bl	c0de2c54 <OUTLINED_FUNCTION_0>
c0de26bc:	2800      	cmp	r0, #0
c0de26be:	d1ea      	bne.n	c0de2696 <tEdwards_IsOnCurve+0x1c>
c0de26c0:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de26c2:	686b      	ldr	r3, [r5, #4]
c0de26c4:	6b2a      	ldr	r2, [r5, #48]	@ 0x30
c0de26c6:	4601      	mov	r1, r0
c0de26c8:	f004 fdc0 	bl	c0de724c <cx_bn_mod_add>
c0de26cc:	2800      	cmp	r0, #0
c0de26ce:	d1e2      	bne.n	c0de2696 <tEdwards_IsOnCurve+0x1c>
c0de26d0:	69e9      	ldr	r1, [r5, #28]
c0de26d2:	6b6a      	ldr	r2, [r5, #52]	@ 0x34
c0de26d4:	6c28      	ldr	r0, [r5, #64]	@ 0x40
c0de26d6:	f000 fabd 	bl	c0de2c54 <OUTLINED_FUNCTION_0>
c0de26da:	2800      	cmp	r0, #0
c0de26dc:	d1db      	bne.n	c0de2696 <tEdwards_IsOnCurve+0x1c>
c0de26de:	686b      	ldr	r3, [r5, #4]
c0de26e0:	6aaa      	ldr	r2, [r5, #40]	@ 0x28
c0de26e2:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de26e4:	6c29      	ldr	r1, [r5, #64]	@ 0x40
c0de26e6:	f004 fdb1 	bl	c0de724c <cx_bn_mod_add>
c0de26ea:	2800      	cmp	r0, #0
c0de26ec:	d1d3      	bne.n	c0de2696 <tEdwards_IsOnCurve+0x1c>
c0de26ee:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de26f0:	4632      	mov	r2, r6
c0de26f2:	4601      	mov	r1, r0
c0de26f4:	f004 fe10 	bl	c0de7318 <cx_mont_from_montgomery>
c0de26f8:	2800      	cmp	r0, #0
c0de26fa:	d1cc      	bne.n	c0de2696 <tEdwards_IsOnCurve+0x1c>
c0de26fc:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de26fe:	4632      	mov	r2, r6
c0de2700:	4601      	mov	r1, r0
c0de2702:	f004 fe09 	bl	c0de7318 <cx_mont_from_montgomery>
c0de2706:	2800      	cmp	r0, #0
c0de2708:	d1c5      	bne.n	c0de2696 <tEdwards_IsOnCurve+0x1c>
c0de270a:	e9d5 010e 	ldrd	r0, r1, [r5, #56]	@ 0x38
c0de270e:	466a      	mov	r2, sp
c0de2710:	f004 fd78 	bl	c0de7204 <cx_bn_cmp>
c0de2714:	2800      	cmp	r0, #0
c0de2716:	d1be      	bne.n	c0de2696 <tEdwards_IsOnCurve+0x1c>
c0de2718:	9800      	ldr	r0, [sp, #0]
c0de271a:	fab0 f080 	clz	r0, r0
c0de271e:	0940      	lsrs	r0, r0, #5
c0de2720:	7020      	strb	r0, [r4, #0]
c0de2722:	2000      	movs	r0, #0
c0de2724:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de2728 <tEdwards_Curve_alloc_init>:
c0de2728:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de272c:	b0d2      	sub	sp, #328	@ 0x148
c0de272e:	4604      	mov	r4, r0
c0de2730:	2902      	cmp	r1, #2
c0de2732:	d022      	beq.n	c0de277a <tEdwards_Curve_alloc_init+0x52>
c0de2734:	2901      	cmp	r1, #1
c0de2736:	f040 80cd 	bne.w	c0de28d4 <tEdwards_Curve_alloc_init+0x1ac>
c0de273a:	2020      	movs	r0, #32
c0de273c:	2220      	movs	r2, #32
c0de273e:	6020      	str	r0, [r4, #0]
c0de2740:	af4a      	add	r7, sp, #296	@ 0x128
c0de2742:	4967      	ldr	r1, [pc, #412]	@ (c0de28e0 <tEdwards_Curve_alloc_init+0x1b8>)
c0de2744:	4638      	mov	r0, r7
c0de2746:	4479      	add	r1, pc
c0de2748:	f004 ffbc 	bl	c0de76c4 <__aeabi_memcpy>
c0de274c:	ae42      	add	r6, sp, #264	@ 0x108
c0de274e:	4965      	ldr	r1, [pc, #404]	@ (c0de28e4 <tEdwards_Curve_alloc_init+0x1bc>)
c0de2750:	2220      	movs	r2, #32
c0de2752:	4630      	mov	r0, r6
c0de2754:	4479      	add	r1, pc
c0de2756:	f004 ffb5 	bl	c0de76c4 <__aeabi_memcpy>
c0de275a:	4963      	ldr	r1, [pc, #396]	@ (c0de28e8 <tEdwards_Curve_alloc_init+0x1c0>)
c0de275c:	f10d 0ae8 	add.w	sl, sp, #232	@ 0xe8
c0de2760:	2220      	movs	r2, #32
c0de2762:	4650      	mov	r0, sl
c0de2764:	4479      	add	r1, pc
c0de2766:	f004 ffad 	bl	c0de76c4 <__aeabi_memcpy>
c0de276a:	ad32      	add	r5, sp, #200	@ 0xc8
c0de276c:	495f      	ldr	r1, [pc, #380]	@ (c0de28ec <tEdwards_Curve_alloc_init+0x1c4>)
c0de276e:	2220      	movs	r2, #32
c0de2770:	4628      	mov	r0, r5
c0de2772:	4479      	add	r1, pc
c0de2774:	f004 ffa6 	bl	c0de76c4 <__aeabi_memcpy>
c0de2778:	e02d      	b.n	c0de27d6 <tEdwards_Curve_alloc_init+0xae>
c0de277a:	2020      	movs	r0, #32
c0de277c:	2220      	movs	r2, #32
c0de277e:	6020      	str	r0, [r4, #0]
c0de2780:	af2a      	add	r7, sp, #168	@ 0xa8
c0de2782:	495b      	ldr	r1, [pc, #364]	@ (c0de28f0 <tEdwards_Curve_alloc_init+0x1c8>)
c0de2784:	4638      	mov	r0, r7
c0de2786:	4479      	add	r1, pc
c0de2788:	f004 ff9c 	bl	c0de76c4 <__aeabi_memcpy>
c0de278c:	ae22      	add	r6, sp, #136	@ 0x88
c0de278e:	4959      	ldr	r1, [pc, #356]	@ (c0de28f4 <tEdwards_Curve_alloc_init+0x1cc>)
c0de2790:	2220      	movs	r2, #32
c0de2792:	4630      	mov	r0, r6
c0de2794:	4479      	add	r1, pc
c0de2796:	f004 ff95 	bl	c0de76c4 <__aeabi_memcpy>
c0de279a:	4957      	ldr	r1, [pc, #348]	@ (c0de28f8 <tEdwards_Curve_alloc_init+0x1d0>)
c0de279c:	f10d 0a68 	add.w	sl, sp, #104	@ 0x68
c0de27a0:	2220      	movs	r2, #32
c0de27a2:	4650      	mov	r0, sl
c0de27a4:	4479      	add	r1, pc
c0de27a6:	f004 ff8d 	bl	c0de76c4 <__aeabi_memcpy>
c0de27aa:	a812      	add	r0, sp, #72	@ 0x48
c0de27ac:	4953      	ldr	r1, [pc, #332]	@ (c0de28fc <tEdwards_Curve_alloc_init+0x1d4>)
c0de27ae:	2220      	movs	r2, #32
c0de27b0:	9001      	str	r0, [sp, #4]
c0de27b2:	4479      	add	r1, pc
c0de27b4:	f004 ff86 	bl	c0de76c4 <__aeabi_memcpy>
c0de27b8:	4951      	ldr	r1, [pc, #324]	@ (c0de2900 <tEdwards_Curve_alloc_init+0x1d8>)
c0de27ba:	f10d 0b28 	add.w	fp, sp, #40	@ 0x28
c0de27be:	2220      	movs	r2, #32
c0de27c0:	4658      	mov	r0, fp
c0de27c2:	4479      	add	r1, pc
c0de27c4:	f004 ff7e 	bl	c0de76c4 <__aeabi_memcpy>
c0de27c8:	ad02      	add	r5, sp, #8
c0de27ca:	494e      	ldr	r1, [pc, #312]	@ (c0de2904 <tEdwards_Curve_alloc_init+0x1dc>)
c0de27cc:	2220      	movs	r2, #32
c0de27ce:	4628      	mov	r0, r5
c0de27d0:	4479      	add	r1, pc
c0de27d2:	f004 ff77 	bl	c0de76c4 <__aeabi_memcpy>
c0de27d6:	f104 0804 	add.w	r8, r4, #4
c0de27da:	2120      	movs	r1, #32
c0de27dc:	463a      	mov	r2, r7
c0de27de:	2320      	movs	r3, #32
c0de27e0:	4640      	mov	r0, r8
c0de27e2:	f004 fcc3 	bl	c0de716c <cx_bn_alloc_init>
c0de27e6:	2800      	cmp	r0, #0
c0de27e8:	d175      	bne.n	c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de27ea:	4620      	mov	r0, r4
c0de27ec:	462a      	mov	r2, r5
c0de27ee:	f850 1b08 	ldr.w	r1, [r0], #8
c0de27f2:	460b      	mov	r3, r1
c0de27f4:	f004 fcba 	bl	c0de716c <cx_bn_alloc_init>
c0de27f8:	2800      	cmp	r0, #0
c0de27fa:	d16c      	bne.n	c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de27fc:	f104 0520 	add.w	r5, r4, #32
c0de2800:	2120      	movs	r1, #32
c0de2802:	4628      	mov	r0, r5
c0de2804:	f004 fd68 	bl	c0de72d8 <cx_mont_alloc>
c0de2808:	2800      	cmp	r0, #0
c0de280a:	d164      	bne.n	c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de280c:	f8d8 1000 	ldr.w	r1, [r8]
c0de2810:	4628      	mov	r0, r5
c0de2812:	f004 fd6b 	bl	c0de72ec <cx_mont_init>
c0de2816:	2800      	cmp	r0, #0
c0de2818:	d15d      	bne.n	c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de281a:	4627      	mov	r7, r4
c0de281c:	f857 1b28 	ldr.w	r1, [r7], #40
c0de2820:	4638      	mov	r0, r7
c0de2822:	f004 fc99 	bl	c0de7158 <cx_bn_alloc>
c0de2826:	2800      	cmp	r0, #0
c0de2828:	d155      	bne.n	c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de282a:	6838      	ldr	r0, [r7, #0]
c0de282c:	2101      	movs	r1, #1
c0de282e:	f004 fcd3 	bl	c0de71d8 <cx_bn_set_u32>
c0de2832:	2800      	cmp	r0, #0
c0de2834:	d14f      	bne.n	c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2836:	6838      	ldr	r0, [r7, #0]
c0de2838:	f000 fa16 	bl	c0de2c68 <OUTLINED_FUNCTION_3>
c0de283c:	2800      	cmp	r0, #0
c0de283e:	d14a      	bne.n	c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2840:	f104 070c 	add.w	r7, r4, #12
c0de2844:	4620      	mov	r0, r4
c0de2846:	4639      	mov	r1, r7
c0de2848:	f7ff fdee 	bl	c0de2428 <tEdwards_alloc>
c0de284c:	2800      	cmp	r0, #0
c0de284e:	d142      	bne.n	c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2850:	9901      	ldr	r1, [sp, #4]
c0de2852:	4620      	mov	r0, r4
c0de2854:	465a      	mov	r2, fp
c0de2856:	463b      	mov	r3, r7
c0de2858:	f000 f856 	bl	c0de2908 <tEdwards_init>
c0de285c:	bbd8      	cbnz	r0, c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de285e:	4627      	mov	r7, r4
c0de2860:	4632      	mov	r2, r6
c0de2862:	f857 1b18 	ldr.w	r1, [r7], #24
c0de2866:	4638      	mov	r0, r7
c0de2868:	460b      	mov	r3, r1
c0de286a:	f004 fc7f 	bl	c0de716c <cx_bn_alloc_init>
c0de286e:	bb90      	cbnz	r0, c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2870:	6838      	ldr	r0, [r7, #0]
c0de2872:	f000 f9f9 	bl	c0de2c68 <OUTLINED_FUNCTION_3>
c0de2876:	bb70      	cbnz	r0, c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2878:	4626      	mov	r6, r4
c0de287a:	4652      	mov	r2, sl
c0de287c:	f856 1b1c 	ldr.w	r1, [r6], #28
c0de2880:	4630      	mov	r0, r6
c0de2882:	460b      	mov	r3, r1
c0de2884:	f004 fc72 	bl	c0de716c <cx_bn_alloc_init>
c0de2888:	bb28      	cbnz	r0, c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de288a:	6830      	ldr	r0, [r6, #0]
c0de288c:	f000 f9ec 	bl	c0de2c68 <OUTLINED_FUNCTION_3>
c0de2890:	bb08      	cbnz	r0, c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de2892:	4620      	mov	r0, r4
c0de2894:	f850 1b2c 	ldr.w	r1, [r0], #44
c0de2898:	f004 fc5e 	bl	c0de7158 <cx_bn_alloc>
c0de289c:	b9d8      	cbnz	r0, c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de289e:	f000 f9fb 	bl	c0de2c98 <OUTLINED_FUNCTION_8>
c0de28a2:	b9c0      	cbnz	r0, c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de28a4:	f000 f9e4 	bl	c0de2c70 <OUTLINED_FUNCTION_4>
c0de28a8:	b9a8      	cbnz	r0, c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de28aa:	f000 f9f0 	bl	c0de2c8e <OUTLINED_FUNCTION_7>
c0de28ae:	b990      	cbnz	r0, c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de28b0:	f000 f9fc 	bl	c0de2cac <OUTLINED_FUNCTION_10>
c0de28b4:	b978      	cbnz	r0, c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de28b6:	f000 f9e5 	bl	c0de2c84 <OUTLINED_FUNCTION_6>
c0de28ba:	b960      	cbnz	r0, c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de28bc:	f000 f9f1 	bl	c0de2ca2 <OUTLINED_FUNCTION_9>
c0de28c0:	b948      	cbnz	r0, c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de28c2:	f000 f9da 	bl	c0de2c7a <OUTLINED_FUNCTION_5>
c0de28c6:	b930      	cbnz	r0, c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de28c8:	f854 1b4c 	ldr.w	r1, [r4], #76
c0de28cc:	4620      	mov	r0, r4
c0de28ce:	f004 fc43 	bl	c0de7158 <cx_bn_alloc>
c0de28d2:	e000      	b.n	c0de28d6 <tEdwards_Curve_alloc_init+0x1ae>
c0de28d4:	4801      	ldr	r0, [pc, #4]	@ (c0de28dc <tEdwards_Curve_alloc_init+0x1b4>)
c0de28d6:	b052      	add	sp, #328	@ 0x148
c0de28d8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de28dc:	5a4b4e01 	.word	0x5a4b4e01
c0de28e0:	000055b6 	.word	0x000055b6
c0de28e4:	00005748 	.word	0x00005748
c0de28e8:	000056f8 	.word	0x000056f8
c0de28ec:	0000564a 	.word	0x0000564a
c0de28f0:	00005756 	.word	0x00005756
c0de28f4:	000056a8 	.word	0x000056a8
c0de28f8:	00005718 	.word	0x00005718
c0de28fc:	0000574a 	.word	0x0000574a
c0de2900:	0000575a 	.word	0x0000575a
c0de2904:	0000560c 	.word	0x0000560c

c0de2908 <tEdwards_init>:
c0de2908:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de290a:	6806      	ldr	r6, [r0, #0]
c0de290c:	461c      	mov	r4, r3
c0de290e:	4617      	mov	r7, r2
c0de2910:	460a      	mov	r2, r1
c0de2912:	4605      	mov	r5, r0
c0de2914:	a802      	add	r0, sp, #8
c0de2916:	4631      	mov	r1, r6
c0de2918:	4633      	mov	r3, r6
c0de291a:	f004 fc27 	bl	c0de716c <cx_bn_alloc_init>
c0de291e:	b100      	cbz	r0, c0de2922 <tEdwards_init+0x1a>
c0de2920:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de2922:	a801      	add	r0, sp, #4
c0de2924:	4631      	mov	r1, r6
c0de2926:	463a      	mov	r2, r7
c0de2928:	4633      	mov	r3, r6
c0de292a:	f004 fc1f 	bl	c0de716c <cx_bn_alloc_init>
c0de292e:	2800      	cmp	r0, #0
c0de2930:	d1f6      	bne.n	c0de2920 <tEdwards_init+0x18>
c0de2932:	4668      	mov	r0, sp
c0de2934:	4631      	mov	r1, r6
c0de2936:	f004 fc0f 	bl	c0de7158 <cx_bn_alloc>
c0de293a:	2800      	cmp	r0, #0
c0de293c:	d1f0      	bne.n	c0de2920 <tEdwards_init+0x18>
c0de293e:	f105 0620 	add.w	r6, r5, #32
c0de2942:	6820      	ldr	r0, [r4, #0]
c0de2944:	9902      	ldr	r1, [sp, #8]
c0de2946:	4632      	mov	r2, r6
c0de2948:	f004 fcda 	bl	c0de7300 <cx_mont_to_montgomery>
c0de294c:	2800      	cmp	r0, #0
c0de294e:	d1e7      	bne.n	c0de2920 <tEdwards_init+0x18>
c0de2950:	6860      	ldr	r0, [r4, #4]
c0de2952:	9901      	ldr	r1, [sp, #4]
c0de2954:	4632      	mov	r2, r6
c0de2956:	f004 fcd3 	bl	c0de7300 <cx_mont_to_montgomery>
c0de295a:	2800      	cmp	r0, #0
c0de295c:	d1e0      	bne.n	c0de2920 <tEdwards_init+0x18>
c0de295e:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2960:	68a0      	ldr	r0, [r4, #8]
c0de2962:	f004 fc2f 	bl	c0de71c4 <cx_bn_copy>
c0de2966:	2800      	cmp	r0, #0
c0de2968:	d1da      	bne.n	c0de2920 <tEdwards_init+0x18>
c0de296a:	a802      	add	r0, sp, #8
c0de296c:	f004 fc0a 	bl	c0de7184 <cx_bn_destroy>
c0de2970:	2800      	cmp	r0, #0
c0de2972:	d1d5      	bne.n	c0de2920 <tEdwards_init+0x18>
c0de2974:	a801      	add	r0, sp, #4
c0de2976:	f004 fc05 	bl	c0de7184 <cx_bn_destroy>
c0de297a:	2800      	cmp	r0, #0
c0de297c:	d1d0      	bne.n	c0de2920 <tEdwards_init+0x18>
c0de297e:	4668      	mov	r0, sp
c0de2980:	f004 fc00 	bl	c0de7184 <cx_bn_destroy>
c0de2984:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

c0de2986 <tEdwards_Curve_partial_destroy>:
c0de2986:	b510      	push	{r4, lr}
c0de2988:	4604      	mov	r4, r0
c0de298a:	302c      	adds	r0, #44	@ 0x2c
c0de298c:	f004 fbfa 	bl	c0de7184 <cx_bn_destroy>
c0de2990:	bbd8      	cbnz	r0, c0de2a0a <tEdwards_Curve_partial_destroy+0x84>
c0de2992:	f104 0030 	add.w	r0, r4, #48	@ 0x30
c0de2996:	f004 fbf5 	bl	c0de7184 <cx_bn_destroy>
c0de299a:	bbb0      	cbnz	r0, c0de2a0a <tEdwards_Curve_partial_destroy+0x84>
c0de299c:	f104 0034 	add.w	r0, r4, #52	@ 0x34
c0de29a0:	f004 fbf0 	bl	c0de7184 <cx_bn_destroy>
c0de29a4:	bb88      	cbnz	r0, c0de2a0a <tEdwards_Curve_partial_destroy+0x84>
c0de29a6:	f104 0038 	add.w	r0, r4, #56	@ 0x38
c0de29aa:	f004 fbeb 	bl	c0de7184 <cx_bn_destroy>
c0de29ae:	bb60      	cbnz	r0, c0de2a0a <tEdwards_Curve_partial_destroy+0x84>
c0de29b0:	f104 003c 	add.w	r0, r4, #60	@ 0x3c
c0de29b4:	f004 fbe6 	bl	c0de7184 <cx_bn_destroy>
c0de29b8:	bb38      	cbnz	r0, c0de2a0a <tEdwards_Curve_partial_destroy+0x84>
c0de29ba:	f104 0040 	add.w	r0, r4, #64	@ 0x40
c0de29be:	f004 fbe1 	bl	c0de7184 <cx_bn_destroy>
c0de29c2:	bb10      	cbnz	r0, c0de2a0a <tEdwards_Curve_partial_destroy+0x84>
c0de29c4:	f104 0044 	add.w	r0, r4, #68	@ 0x44
c0de29c8:	f004 fbdc 	bl	c0de7184 <cx_bn_destroy>
c0de29cc:	b9e8      	cbnz	r0, c0de2a0a <tEdwards_Curve_partial_destroy+0x84>
c0de29ce:	f104 0048 	add.w	r0, r4, #72	@ 0x48
c0de29d2:	f004 fbd7 	bl	c0de7184 <cx_bn_destroy>
c0de29d6:	b9c0      	cbnz	r0, c0de2a0a <tEdwards_Curve_partial_destroy+0x84>
c0de29d8:	f104 004c 	add.w	r0, r4, #76	@ 0x4c
c0de29dc:	f004 fbd2 	bl	c0de7184 <cx_bn_destroy>
c0de29e0:	b998      	cbnz	r0, c0de2a0a <tEdwards_Curve_partial_destroy+0x84>
c0de29e2:	f104 010c 	add.w	r1, r4, #12
c0de29e6:	f7ff fd34 	bl	c0de2452 <tEdwards_destroy>
c0de29ea:	b970      	cbnz	r0, c0de2a0a <tEdwards_Curve_partial_destroy+0x84>
c0de29ec:	f104 0018 	add.w	r0, r4, #24
c0de29f0:	f004 fbc8 	bl	c0de7184 <cx_bn_destroy>
c0de29f4:	b948      	cbnz	r0, c0de2a0a <tEdwards_Curve_partial_destroy+0x84>
c0de29f6:	f104 001c 	add.w	r0, r4, #28
c0de29fa:	f004 fbc3 	bl	c0de7184 <cx_bn_destroy>
c0de29fe:	b920      	cbnz	r0, c0de2a0a <tEdwards_Curve_partial_destroy+0x84>
c0de2a00:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de2a04:	f004 fbbe 	bl	c0de7184 <cx_bn_destroy>
c0de2a08:	b100      	cbz	r0, c0de2a0c <tEdwards_Curve_partial_destroy+0x86>
c0de2a0a:	bd10      	pop	{r4, pc}
c0de2a0c:	f104 0008 	add.w	r0, r4, #8
c0de2a10:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2a14:	f004 bbb6 	b.w	c0de7184 <cx_bn_destroy>

c0de2a18 <tEdwards_SetNeutral>:
c0de2a18:	b5b0      	push	{r4, r5, r7, lr}
c0de2a1a:	4605      	mov	r5, r0
c0de2a1c:	6808      	ldr	r0, [r1, #0]
c0de2a1e:	460c      	mov	r4, r1
c0de2a20:	2100      	movs	r1, #0
c0de2a22:	f004 fbd9 	bl	c0de71d8 <cx_bn_set_u32>
c0de2a26:	b918      	cbnz	r0, c0de2a30 <tEdwards_SetNeutral+0x18>
c0de2a28:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2a2a:	f000 f944 	bl	c0de2cb6 <OUTLINED_FUNCTION_11>
c0de2a2e:	b100      	cbz	r0, c0de2a32 <tEdwards_SetNeutral+0x1a>
c0de2a30:	bdb0      	pop	{r4, r5, r7, pc}
c0de2a32:	6aa9      	ldr	r1, [r5, #40]	@ 0x28
c0de2a34:	68a0      	ldr	r0, [r4, #8]
c0de2a36:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2a3a:	f004 bbc3 	b.w	c0de71c4 <cx_bn_copy>

c0de2a3e <tEdwards_export>:
c0de2a3e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2a42:	4698      	mov	r8, r3
c0de2a44:	4616      	mov	r6, r2
c0de2a46:	460f      	mov	r7, r1
c0de2a48:	4605      	mov	r5, r0
c0de2a4a:	f000 f81e 	bl	c0de2a8a <tEdwards_normalize>
c0de2a4e:	b998      	cbnz	r0, c0de2a78 <tEdwards_export+0x3a>
c0de2a50:	f105 0420 	add.w	r4, r5, #32
c0de2a54:	6839      	ldr	r1, [r7, #0]
c0de2a56:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2a58:	4622      	mov	r2, r4
c0de2a5a:	f004 fc5d 	bl	c0de7318 <cx_mont_from_montgomery>
c0de2a5e:	b958      	cbnz	r0, c0de2a78 <tEdwards_export+0x3a>
c0de2a60:	6879      	ldr	r1, [r7, #4]
c0de2a62:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2a64:	4622      	mov	r2, r4
c0de2a66:	f004 fc57 	bl	c0de7318 <cx_mont_from_montgomery>
c0de2a6a:	b928      	cbnz	r0, c0de2a78 <tEdwards_export+0x3a>
c0de2a6c:	682a      	ldr	r2, [r5, #0]
c0de2a6e:	6ae8      	ldr	r0, [r5, #44]	@ 0x2c
c0de2a70:	4631      	mov	r1, r6
c0de2a72:	f004 fbbb 	bl	c0de71ec <cx_bn_export>
c0de2a76:	b108      	cbz	r0, c0de2a7c <tEdwards_export+0x3e>
c0de2a78:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2a7c:	682a      	ldr	r2, [r5, #0]
c0de2a7e:	6b28      	ldr	r0, [r5, #48]	@ 0x30
c0de2a80:	4641      	mov	r1, r8
c0de2a82:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de2a86:	f004 bbb1 	b.w	c0de71ec <cx_bn_export>

c0de2a8a <tEdwards_normalize>:
c0de2a8a:	b570      	push	{r4, r5, r6, lr}
c0de2a8c:	4605      	mov	r5, r0
c0de2a8e:	460c      	mov	r4, r1
c0de2a90:	6889      	ldr	r1, [r1, #8]
c0de2a92:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de2a94:	f105 0620 	add.w	r6, r5, #32
c0de2a98:	4632      	mov	r2, r6
c0de2a9a:	f004 fc65 	bl	c0de7368 <cx_mont_invert_nprime>
c0de2a9e:	b9d0      	cbnz	r0, c0de2ad6 <tEdwards_normalize+0x4c>
c0de2aa0:	6822      	ldr	r2, [r4, #0]
c0de2aa2:	e9d5 100b 	ldrd	r1, r0, [r5, #44]	@ 0x2c
c0de2aa6:	f000 f8d5 	bl	c0de2c54 <OUTLINED_FUNCTION_0>
c0de2aaa:	b9a0      	cbnz	r0, c0de2ad6 <tEdwards_normalize+0x4c>
c0de2aac:	6862      	ldr	r2, [r4, #4]
c0de2aae:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2ab0:	6b68      	ldr	r0, [r5, #52]	@ 0x34
c0de2ab2:	f000 f8cf 	bl	c0de2c54 <OUTLINED_FUNCTION_0>
c0de2ab6:	b970      	cbnz	r0, c0de2ad6 <tEdwards_normalize+0x4c>
c0de2ab8:	68a2      	ldr	r2, [r4, #8]
c0de2aba:	6ae9      	ldr	r1, [r5, #44]	@ 0x2c
c0de2abc:	6ba8      	ldr	r0, [r5, #56]	@ 0x38
c0de2abe:	f000 f8c9 	bl	c0de2c54 <OUTLINED_FUNCTION_0>
c0de2ac2:	b940      	cbnz	r0, c0de2ad6 <tEdwards_normalize+0x4c>
c0de2ac4:	6b29      	ldr	r1, [r5, #48]	@ 0x30
c0de2ac6:	6820      	ldr	r0, [r4, #0]
c0de2ac8:	f004 fb7c 	bl	c0de71c4 <cx_bn_copy>
c0de2acc:	b918      	cbnz	r0, c0de2ad6 <tEdwards_normalize+0x4c>
c0de2ace:	6b69      	ldr	r1, [r5, #52]	@ 0x34
c0de2ad0:	f000 f8f1 	bl	c0de2cb6 <OUTLINED_FUNCTION_11>
c0de2ad4:	b100      	cbz	r0, c0de2ad8 <tEdwards_normalize+0x4e>
c0de2ad6:	bd70      	pop	{r4, r5, r6, pc}
c0de2ad8:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
c0de2ada:	68a0      	ldr	r0, [r4, #8]
c0de2adc:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de2ae0:	f004 bb70 	b.w	c0de71c4 <cx_bn_copy>

c0de2ae4 <tEdwards_copy>:
c0de2ae4:	b5b0      	push	{r4, r5, r7, lr}
c0de2ae6:	460c      	mov	r4, r1
c0de2ae8:	4605      	mov	r5, r0
c0de2aea:	6801      	ldr	r1, [r0, #0]
c0de2aec:	6820      	ldr	r0, [r4, #0]
c0de2aee:	f004 fb69 	bl	c0de71c4 <cx_bn_copy>
c0de2af2:	b918      	cbnz	r0, c0de2afc <tEdwards_copy+0x18>
c0de2af4:	6869      	ldr	r1, [r5, #4]
c0de2af6:	f000 f8de 	bl	c0de2cb6 <OUTLINED_FUNCTION_11>
c0de2afa:	b100      	cbz	r0, c0de2afe <tEdwards_copy+0x1a>
c0de2afc:	bdb0      	pop	{r4, r5, r7, pc}
c0de2afe:	68a9      	ldr	r1, [r5, #8]
c0de2b00:	68a0      	ldr	r0, [r4, #8]
c0de2b02:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de2b06:	f004 bb5d 	b.w	c0de71c4 <cx_bn_copy>

c0de2b0a <tEdwards_alloc_init>:
c0de2b0a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de2b0c:	460e      	mov	r6, r1
c0de2b0e:	6801      	ldr	r1, [r0, #0]
c0de2b10:	4607      	mov	r7, r0
c0de2b12:	4618      	mov	r0, r3
c0de2b14:	461c      	mov	r4, r3
c0de2b16:	4615      	mov	r5, r2
c0de2b18:	f004 fb1e 	bl	c0de7158 <cx_bn_alloc>
c0de2b1c:	b950      	cbnz	r0, c0de2b34 <tEdwards_alloc_init+0x2a>
c0de2b1e:	6839      	ldr	r1, [r7, #0]
c0de2b20:	1d20      	adds	r0, r4, #4
c0de2b22:	f004 fb19 	bl	c0de7158 <cx_bn_alloc>
c0de2b26:	b928      	cbnz	r0, c0de2b34 <tEdwards_alloc_init+0x2a>
c0de2b28:	6839      	ldr	r1, [r7, #0]
c0de2b2a:	f104 0008 	add.w	r0, r4, #8
c0de2b2e:	f004 fb13 	bl	c0de7158 <cx_bn_alloc>
c0de2b32:	b100      	cbz	r0, c0de2b36 <tEdwards_alloc_init+0x2c>
c0de2b34:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de2b36:	4638      	mov	r0, r7
c0de2b38:	4631      	mov	r1, r6
c0de2b3a:	462a      	mov	r2, r5
c0de2b3c:	4623      	mov	r3, r4
c0de2b3e:	b001      	add	sp, #4
c0de2b40:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2b44:	f7ff bee0 	b.w	c0de2908 <tEdwards_init>

c0de2b48 <tEdwards_scalarMul_bn>:
c0de2b48:	e92d 4dff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de2b4c:	4607      	mov	r7, r0
c0de2b4e:	2000      	movs	r0, #0
c0de2b50:	4688      	mov	r8, r1
c0de2b52:	4615      	mov	r5, r2
c0de2b54:	2100      	movs	r1, #0
c0de2b56:	469b      	mov	fp, r3
c0de2b58:	9003      	str	r0, [sp, #12]
c0de2b5a:	f88d 000b 	strb.w	r0, [sp, #11]
c0de2b5e:	6810      	ldr	r0, [r2, #0]
c0de2b60:	aa03      	add	r2, sp, #12
c0de2b62:	f004 fb5b 	bl	c0de721c <cx_bn_cmp_u32>
c0de2b66:	bb38      	cbnz	r0, c0de2bb8 <tEdwards_scalarMul_bn+0x70>
c0de2b68:	9803      	ldr	r0, [sp, #12]
c0de2b6a:	b1d0      	cbz	r0, c0de2ba2 <tEdwards_scalarMul_bn+0x5a>
c0de2b6c:	6828      	ldr	r0, [r5, #0]
c0de2b6e:	a901      	add	r1, sp, #4
c0de2b70:	f004 fb12 	bl	c0de7198 <cx_bn_nbytes>
c0de2b74:	bb00      	cbnz	r0, c0de2bb8 <tEdwards_scalarMul_bn+0x70>
c0de2b76:	2002      	movs	r0, #2
c0de2b78:	f04f 31ff 	mov.w	r1, #4294967295	@ 0xffffffff
c0de2b7c:	f10d 040b 	add.w	r4, sp, #11
c0de2b80:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2b82:	9801      	ldr	r0, [sp, #4]
c0de2b84:	eb01 06c0 	add.w	r6, r1, r0, lsl #3
c0de2b88:	2000      	movs	r0, #0
c0de2b8a:	2801      	cmp	r0, #1
c0de2b8c:	d00f      	beq.n	c0de2bae <tEdwards_scalarMul_bn+0x66>
c0de2b8e:	6828      	ldr	r0, [r5, #0]
c0de2b90:	4631      	mov	r1, r6
c0de2b92:	4622      	mov	r2, r4
c0de2b94:	f004 fb4e 	bl	c0de7234 <cx_bn_tst_bit>
c0de2b98:	b970      	cbnz	r0, c0de2bb8 <tEdwards_scalarMul_bn+0x70>
c0de2b9a:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2b9e:	3e01      	subs	r6, #1
c0de2ba0:	e7f3      	b.n	c0de2b8a <tEdwards_scalarMul_bn+0x42>
c0de2ba2:	4638      	mov	r0, r7
c0de2ba4:	4659      	mov	r1, fp
c0de2ba6:	f7ff ff37 	bl	c0de2a18 <tEdwards_SetNeutral>
c0de2baa:	b928      	cbnz	r0, c0de2bb8 <tEdwards_scalarMul_bn+0x70>
c0de2bac:	e7de      	b.n	c0de2b6c <tEdwards_scalarMul_bn+0x24>
c0de2bae:	4640      	mov	r0, r8
c0de2bb0:	4659      	mov	r1, fp
c0de2bb2:	f7ff ff97 	bl	c0de2ae4 <tEdwards_copy>
c0de2bb6:	b110      	cbz	r0, c0de2bbe <tEdwards_scalarMul_bn+0x76>
c0de2bb8:	b004      	add	sp, #16
c0de2bba:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2bbe:	2001      	movs	r0, #1
c0de2bc0:	f10d 0a0b 	add.w	sl, sp, #11
c0de2bc4:	e9c7 0614 	strd	r0, r6, [r7, #80]	@ 0x50
c0de2bc8:	2e00      	cmp	r6, #0
c0de2bca:	d420      	bmi.n	c0de2c0e <tEdwards_scalarMul_bn+0xc6>
c0de2bcc:	4638      	mov	r0, r7
c0de2bce:	4659      	mov	r1, fp
c0de2bd0:	465a      	mov	r2, fp
c0de2bd2:	f7ff fc4f 	bl	c0de2474 <tEdwards_double>
c0de2bd6:	2800      	cmp	r0, #0
c0de2bd8:	d1ee      	bne.n	c0de2bb8 <tEdwards_scalarMul_bn+0x70>
c0de2bda:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2bdc:	4631      	mov	r1, r6
c0de2bde:	4652      	mov	r2, sl
c0de2be0:	0040      	lsls	r0, r0, #1
c0de2be2:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2be4:	6828      	ldr	r0, [r5, #0]
c0de2be6:	f004 fb25 	bl	c0de7234 <cx_bn_tst_bit>
c0de2bea:	2800      	cmp	r0, #0
c0de2bec:	d1e4      	bne.n	c0de2bb8 <tEdwards_scalarMul_bn+0x70>
c0de2bee:	f89d 000b 	ldrb.w	r0, [sp, #11]
c0de2bf2:	b150      	cbz	r0, c0de2c0a <tEdwards_scalarMul_bn+0xc2>
c0de2bf4:	4638      	mov	r0, r7
c0de2bf6:	4659      	mov	r1, fp
c0de2bf8:	4642      	mov	r2, r8
c0de2bfa:	465b      	mov	r3, fp
c0de2bfc:	f7ff fca5 	bl	c0de254a <tEdwards_add>
c0de2c00:	2800      	cmp	r0, #0
c0de2c02:	d1d9      	bne.n	c0de2bb8 <tEdwards_scalarMul_bn+0x70>
c0de2c04:	6d38      	ldr	r0, [r7, #80]	@ 0x50
c0de2c06:	3001      	adds	r0, #1
c0de2c08:	6538      	str	r0, [r7, #80]	@ 0x50
c0de2c0a:	3e01      	subs	r6, #1
c0de2c0c:	e7dc      	b.n	c0de2bc8 <tEdwards_scalarMul_bn+0x80>
c0de2c0e:	2000      	movs	r0, #0
c0de2c10:	e7d2      	b.n	c0de2bb8 <tEdwards_scalarMul_bn+0x70>
	...

c0de2c14 <tEdwards_scalarMul>:
c0de2c14:	b5bc      	push	{r2, r3, r4, r5, r7, lr}
c0de2c16:	460c      	mov	r4, r1
c0de2c18:	6801      	ldr	r1, [r0, #0]
c0de2c1a:	4299      	cmp	r1, r3
c0de2c1c:	bf3c      	itt	cc
c0de2c1e:	480c      	ldrcc	r0, [pc, #48]	@ (c0de2c50 <tEdwards_scalarMul+0x3c>)
c0de2c20:	bdbc      	popcc	{r2, r3, r4, r5, r7, pc}
c0de2c22:	4605      	mov	r5, r0
c0de2c24:	20ca      	movs	r0, #202	@ 0xca
c0de2c26:	6528      	str	r0, [r5, #80]	@ 0x50
c0de2c28:	a801      	add	r0, sp, #4
c0de2c2a:	f004 fa9f 	bl	c0de716c <cx_bn_alloc_init>
c0de2c2e:	b100      	cbz	r0, c0de2c32 <tEdwards_scalarMul+0x1e>
c0de2c30:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de2c32:	20b3      	movs	r0, #179	@ 0xb3
c0de2c34:	9b06      	ldr	r3, [sp, #24]
c0de2c36:	4621      	mov	r1, r4
c0de2c38:	6528      	str	r0, [r5, #80]	@ 0x50
c0de2c3a:	aa01      	add	r2, sp, #4
c0de2c3c:	4628      	mov	r0, r5
c0de2c3e:	f7ff ff83 	bl	c0de2b48 <tEdwards_scalarMul_bn>
c0de2c42:	2800      	cmp	r0, #0
c0de2c44:	d1f4      	bne.n	c0de2c30 <tEdwards_scalarMul+0x1c>
c0de2c46:	a801      	add	r0, sp, #4
c0de2c48:	f004 fa9c 	bl	c0de7184 <cx_bn_destroy>
c0de2c4c:	bdbc      	pop	{r2, r3, r4, r5, r7, pc}
c0de2c4e:	bf00      	nop
c0de2c50:	5a4b4e01 	.word	0x5a4b4e01

c0de2c54 <OUTLINED_FUNCTION_0>:
c0de2c54:	4633      	mov	r3, r6
c0de2c56:	f004 bb6b 	b.w	c0de7330 <cx_mont_mul>

c0de2c5a <OUTLINED_FUNCTION_1>:
c0de2c5a:	462b      	mov	r3, r5
c0de2c5c:	f004 bb68 	b.w	c0de7330 <cx_mont_mul>

c0de2c60 <OUTLINED_FUNCTION_2>:
c0de2c60:	4633      	mov	r3, r6
c0de2c62:	460a      	mov	r2, r1
c0de2c64:	f004 bb64 	b.w	c0de7330 <cx_mont_mul>

c0de2c68 <OUTLINED_FUNCTION_3>:
c0de2c68:	462a      	mov	r2, r5
c0de2c6a:	4601      	mov	r1, r0
c0de2c6c:	f004 bb48 	b.w	c0de7300 <cx_mont_to_montgomery>

c0de2c70 <OUTLINED_FUNCTION_4>:
c0de2c70:	4620      	mov	r0, r4
c0de2c72:	f850 1b34 	ldr.w	r1, [r0], #52
c0de2c76:	f004 ba6f 	b.w	c0de7158 <cx_bn_alloc>

c0de2c7a <OUTLINED_FUNCTION_5>:
c0de2c7a:	4620      	mov	r0, r4
c0de2c7c:	f850 1b48 	ldr.w	r1, [r0], #72
c0de2c80:	f004 ba6a 	b.w	c0de7158 <cx_bn_alloc>

c0de2c84 <OUTLINED_FUNCTION_6>:
c0de2c84:	4620      	mov	r0, r4
c0de2c86:	f850 1b40 	ldr.w	r1, [r0], #64
c0de2c8a:	f004 ba65 	b.w	c0de7158 <cx_bn_alloc>

c0de2c8e <OUTLINED_FUNCTION_7>:
c0de2c8e:	4620      	mov	r0, r4
c0de2c90:	f850 1b38 	ldr.w	r1, [r0], #56
c0de2c94:	f004 ba60 	b.w	c0de7158 <cx_bn_alloc>

c0de2c98 <OUTLINED_FUNCTION_8>:
c0de2c98:	4620      	mov	r0, r4
c0de2c9a:	f850 1b30 	ldr.w	r1, [r0], #48
c0de2c9e:	f004 ba5b 	b.w	c0de7158 <cx_bn_alloc>

c0de2ca2 <OUTLINED_FUNCTION_9>:
c0de2ca2:	4620      	mov	r0, r4
c0de2ca4:	f850 1b44 	ldr.w	r1, [r0], #68
c0de2ca8:	f004 ba56 	b.w	c0de7158 <cx_bn_alloc>

c0de2cac <OUTLINED_FUNCTION_10>:
c0de2cac:	4620      	mov	r0, r4
c0de2cae:	f850 1b3c 	ldr.w	r1, [r0], #60
c0de2cb2:	f004 ba51 	b.w	c0de7158 <cx_bn_alloc>

c0de2cb6 <OUTLINED_FUNCTION_11>:
c0de2cb6:	6860      	ldr	r0, [r4, #4]
c0de2cb8:	f004 ba84 	b.w	c0de71c4 <cx_bn_copy>

c0de2cbc <grain_lfsr_advance>:
c0de2cbc:	b5b0      	push	{r4, r5, r7, lr}
c0de2cbe:	68c2      	ldr	r2, [r0, #12]
c0de2cc0:	e890 001a 	ldmia.w	r0, {r1, r3, r4}
c0de2cc4:	ea5f 0552 	movs.w	r5, r2, lsr #1
c0de2cc8:	ea4f 0234 	mov.w	r2, r4, rrx
c0de2ccc:	07e4      	lsls	r4, r4, #31
c0de2cce:	60c5      	str	r5, [r0, #12]
c0de2cd0:	07dd      	lsls	r5, r3, #31
c0de2cd2:	ea44 0453 	orr.w	r4, r4, r3, lsr #1
c0de2cd6:	ea45 0551 	orr.w	r5, r5, r1, lsr #1
c0de2cda:	6044      	str	r4, [r0, #4]
c0de2cdc:	4c15      	ldr	r4, [pc, #84]	@ (c0de2d34 <grain_lfsr_advance+0x78>)
c0de2cde:	6005      	str	r5, [r0, #0]
c0de2ce0:	4021      	ands	r1, r4
c0de2ce2:	4c15      	ldr	r4, [pc, #84]	@ (c0de2d38 <grain_lfsr_advance+0x7c>)
c0de2ce4:	4023      	ands	r3, r4
c0de2ce6:	4419      	add	r1, r3
c0de2ce8:	0c0c      	lsrs	r4, r1, #16
c0de2cea:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
c0de2cee:	ea43 4313 	orr.w	r3, r3, r3, lsr #16
c0de2cf2:	4421      	add	r1, r4
c0de2cf4:	0a0c      	lsrs	r4, r1, #8
c0de2cf6:	ea44 6403 	orr.w	r4, r4, r3, lsl #24
c0de2cfa:	ea83 2313 	eor.w	r3, r3, r3, lsr #8
c0de2cfe:	4061      	eors	r1, r4
c0de2d00:	090c      	lsrs	r4, r1, #4
c0de2d02:	ea44 7403 	orr.w	r4, r4, r3, lsl #28
c0de2d06:	ea83 1313 	eor.w	r3, r3, r3, lsr #4
c0de2d0a:	4061      	eors	r1, r4
c0de2d0c:	088c      	lsrs	r4, r1, #2
c0de2d0e:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
c0de2d12:	ea83 0393 	eor.w	r3, r3, r3, lsr #2
c0de2d16:	4061      	eors	r1, r4
c0de2d18:	ea5f 0353 	movs.w	r3, r3, lsr #1
c0de2d1c:	ea4f 0331 	mov.w	r3, r1, rrx
c0de2d20:	4059      	eors	r1, r3
c0de2d22:	f001 0101 	and.w	r1, r1, #1
c0de2d26:	ea82 32c1 	eor.w	r2, r2, r1, lsl #15
c0de2d2a:	6082      	str	r2, [r0, #8]
c0de2d2c:	4608      	mov	r0, r1
c0de2d2e:	2100      	movs	r1, #0
c0de2d30:	bdb0      	pop	{r4, r5, r7, pc}
c0de2d32:	bf00      	nop
c0de2d34:	00802001 	.word	0x00802001
c0de2d38:	40080040 	.word	0x40080040

c0de2d3c <next64_graingen>:
c0de2d3c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de2d40:	460c      	mov	r4, r1
c0de2d42:	4605      	mov	r5, r0
c0de2d44:	f04f 0a00 	mov.w	sl, #0
c0de2d48:	f04f 0800 	mov.w	r8, #0
c0de2d4c:	2700      	movs	r7, #0
c0de2d4e:	42a7      	cmp	r7, r4
c0de2d50:	d215      	bcs.n	c0de2d7e <next64_graingen+0x42>
c0de2d52:	4628      	mov	r0, r5
c0de2d54:	f7ff ffb2 	bl	c0de2cbc <grain_lfsr_advance>
c0de2d58:	4606      	mov	r6, r0
c0de2d5a:	4628      	mov	r0, r5
c0de2d5c:	f7ff ffae 	bl	c0de2cbc <grain_lfsr_advance>
c0de2d60:	eb10 0046 	adds.w	r0, r0, r6, lsl #1
c0de2d64:	0781      	lsls	r1, r0, #30
c0de2d66:	d5f2      	bpl.n	c0de2d4e <next64_graingen+0x12>
c0de2d68:	f000 0001 	and.w	r0, r0, #1
c0de2d6c:	ea4f 0148 	mov.w	r1, r8, lsl #1
c0de2d70:	3701      	adds	r7, #1
c0de2d72:	ea40 004a 	orr.w	r0, r0, sl, lsl #1
c0de2d76:	ea41 78da 	orr.w	r8, r1, sl, lsr #31
c0de2d7a:	4682      	mov	sl, r0
c0de2d7c:	e7e7      	b.n	c0de2d4e <next64_graingen+0x12>
c0de2d7e:	4650      	mov	r0, sl
c0de2d80:	4641      	mov	r1, r8
c0de2d82:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de2d88 <init_generator>:
c0de2d88:	b5b0      	push	{r4, r5, r7, lr}
c0de2d8a:	4a09      	ldr	r2, [pc, #36]	@ (c0de2db0 <init_generator+0x28>)
c0de2d8c:	4b09      	ldr	r3, [pc, #36]	@ (c0de2db4 <init_generator+0x2c>)
c0de2d8e:	4604      	mov	r4, r0
c0de2d90:	25a0      	movs	r5, #160	@ 0xa0
c0de2d92:	2000      	movs	r0, #0
c0de2d94:	f64f 71ff 	movw	r1, #65535	@ 0xffff
c0de2d98:	e9c4 1002 	strd	r1, r0, [r4, #8]
c0de2d9c:	e9c4 3200 	strd	r3, r2, [r4]
c0de2da0:	b125      	cbz	r5, c0de2dac <init_generator+0x24>
c0de2da2:	4620      	mov	r0, r4
c0de2da4:	f7ff ff8a 	bl	c0de2cbc <grain_lfsr_advance>
c0de2da8:	3d01      	subs	r5, #1
c0de2daa:	e7f9      	b.n	c0de2da0 <init_generator+0x18>
c0de2dac:	bdb0      	pop	{r4, r5, r7, pc}
c0de2dae:	bf00      	nop
c0de2db0:	fffcf010 	.word	0xfffcf010
c0de2db4:	1801fc02 	.word	0x1801fc02

c0de2db8 <gen_integer>:
c0de2db8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2dbc:	4f20      	ldr	r7, [pc, #128]	@ (c0de2e40 <gen_integer+0x88>)
c0de2dbe:	4e22      	ldr	r6, [pc, #136]	@ (c0de2e48 <gen_integer+0x90>)
c0de2dc0:	4605      	mov	r5, r0
c0de2dc2:	460c      	mov	r4, r1
c0de2dc4:	2000      	movs	r0, #0
c0de2dc6:	46b8      	mov	r8, r7
c0de2dc8:	4f1e      	ldr	r7, [pc, #120]	@ (c0de2e44 <gen_integer+0x8c>)
c0de2dca:	447e      	add	r6, pc
c0de2dcc:	b9f8      	cbnz	r0, c0de2e0e <gen_integer+0x56>
c0de2dce:	4628      	mov	r0, r5
c0de2dd0:	213e      	movs	r1, #62	@ 0x3e
c0de2dd2:	47b0      	blx	r6
c0de2dd4:	e9c4 0100 	strd	r0, r1, [r4]
c0de2dd8:	4628      	mov	r0, r5
c0de2dda:	2140      	movs	r1, #64	@ 0x40
c0de2ddc:	47b0      	blx	r6
c0de2dde:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2de2:	4628      	mov	r0, r5
c0de2de4:	2140      	movs	r1, #64	@ 0x40
c0de2de6:	47b0      	blx	r6
c0de2de8:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de2dec:	4628      	mov	r0, r5
c0de2dee:	2140      	movs	r1, #64	@ 0x40
c0de2df0:	47b0      	blx	r6
c0de2df2:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de2df6:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de2dfa:	463a      	mov	r2, r7
c0de2dfc:	1bc0      	subs	r0, r0, r7
c0de2dfe:	4640      	mov	r0, r8
c0de2e00:	eb71 0008 	sbcs.w	r0, r1, r8
c0de2e04:	f04f 0000 	mov.w	r0, #0
c0de2e08:	bf38      	it	cc
c0de2e0a:	2001      	movcc	r0, #1
c0de2e0c:	e7de      	b.n	c0de2dcc <gen_integer+0x14>
c0de2e0e:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de2e12:	4d0e      	ldr	r5, [pc, #56]	@ (c0de2e4c <gen_integer+0x94>)
c0de2e14:	447d      	add	r5, pc
c0de2e16:	47a8      	blx	r5
c0de2e18:	e9c4 0100 	strd	r0, r1, [r4]
c0de2e1c:	e9d4 0102 	ldrd	r0, r1, [r4, #8]
c0de2e20:	47a8      	blx	r5
c0de2e22:	e9c4 0102 	strd	r0, r1, [r4, #8]
c0de2e26:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
c0de2e2a:	47a8      	blx	r5
c0de2e2c:	e9c4 0104 	strd	r0, r1, [r4, #16]
c0de2e30:	e9d4 0106 	ldrd	r0, r1, [r4, #24]
c0de2e34:	47a8      	blx	r5
c0de2e36:	e9c4 0106 	strd	r0, r1, [r4, #24]
c0de2e3a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2e3e:	bf00      	nop
c0de2e40:	305a4b4e 	.word	0x305a4b4e
c0de2e44:	4f582122 	.word	0x4f582122
c0de2e48:	ffffff6f 	.word	0xffffff6f
c0de2e4c:	00000039 	.word	0x00000039

c0de2e50 <rev64>:
c0de2e50:	ba0a      	rev	r2, r1
c0de2e52:	ba01      	rev	r1, r0
c0de2e54:	4610      	mov	r0, r2
c0de2e56:	4770      	bx	lr

c0de2e58 <Poseidon_getNext_RC>:
c0de2e58:	30c0      	adds	r0, #192	@ 0xc0
c0de2e5a:	f7ff bfad 	b.w	c0de2db8 <gen_integer>
	...

c0de2e60 <Poseidon_alloc_init>:
c0de2e60:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2e64:	f5ad 6d90 	sub.w	sp, sp, #1152	@ 0x480
c0de2e68:	4604      	mov	r4, r0
c0de2e6a:	30c0      	adds	r0, #192	@ 0xc0
c0de2e6c:	461e      	mov	r6, r3
c0de2e6e:	4617      	mov	r7, r2
c0de2e70:	460d      	mov	r5, r1
c0de2e72:	f7ff ff89 	bl	c0de2d88 <init_generator>
c0de2e76:	492c      	ldr	r1, [pc, #176]	@ (c0de2f28 <Poseidon_alloc_init+0xc8>)
c0de2e78:	46e8      	mov	r8, sp
c0de2e7a:	f44f 6290 	mov.w	r2, #1152	@ 0x480
c0de2e7e:	4640      	mov	r0, r8
c0de2e80:	4479      	add	r1, pc
c0de2e82:	f004 fc1f 	bl	c0de76c4 <__aeabi_memcpy>
c0de2e86:	2000      	movs	r0, #0
c0de2e88:	7325      	strb	r5, [r4, #12]
c0de2e8a:	6166      	str	r6, [r4, #20]
c0de2e8c:	4621      	mov	r1, r4
c0de2e8e:	f8c4 00d0 	str.w	r0, [r4, #208]	@ 0xd0
c0de2e92:	1c78      	adds	r0, r7, #1
c0de2e94:	e9c4 7001 	strd	r7, r0, [r4, #4]
c0de2e98:	6830      	ldr	r0, [r6, #0]
c0de2e9a:	f004 f97d 	bl	c0de7198 <cx_bn_nbytes>
c0de2e9e:	b930      	cbnz	r0, c0de2eae <Poseidon_alloc_init+0x4e>
c0de2ea0:	4620      	mov	r0, r4
c0de2ea2:	f850 6bd4 	ldr.w	r6, [r0], #212
c0de2ea6:	4631      	mov	r1, r6
c0de2ea8:	f004 f956 	bl	c0de7158 <cx_bn_alloc>
c0de2eac:	b118      	cbz	r0, c0de2eb6 <Poseidon_alloc_init+0x56>
c0de2eae:	f50d 6d90 	add.w	sp, sp, #1152	@ 0x480
c0de2eb2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2eb6:	68a0      	ldr	r0, [r4, #8]
c0de2eb8:	2500      	movs	r5, #0
c0de2eba:	4285      	cmp	r5, r0
c0de2ebc:	d230      	bcs.n	c0de2f20 <Poseidon_alloc_init+0xc0>
c0de2ebe:	eb04 0785 	add.w	r7, r4, r5, lsl #2
c0de2ec2:	4631      	mov	r1, r6
c0de2ec4:	f107 0018 	add.w	r0, r7, #24
c0de2ec8:	f004 f946 	bl	c0de7158 <cx_bn_alloc>
c0de2ecc:	2800      	cmp	r0, #0
c0de2ece:	d1ee      	bne.n	c0de2eae <Poseidon_alloc_init+0x4e>
c0de2ed0:	f107 00d8 	add.w	r0, r7, #216	@ 0xd8
c0de2ed4:	4631      	mov	r1, r6
c0de2ed6:	f004 f93f 	bl	c0de7158 <cx_bn_alloc>
c0de2eda:	2800      	cmp	r0, #0
c0de2edc:	d1e7      	bne.n	c0de2eae <Poseidon_alloc_init+0x4e>
c0de2ede:	2700      	movs	r7, #0
c0de2ee0:	68a0      	ldr	r0, [r4, #8]
c0de2ee2:	4287      	cmp	r7, r0
c0de2ee4:	d21a      	bcs.n	c0de2f1c <Poseidon_alloc_init+0xbc>
c0de2ee6:	fb05 7000 	mla	r0, r5, r0, r7
c0de2eea:	4631      	mov	r1, r6
c0de2eec:	4633      	mov	r3, r6
c0de2eee:	fb00 8206 	mla	r2, r0, r6, r8
c0de2ef2:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de2ef6:	3030      	adds	r0, #48	@ 0x30
c0de2ef8:	f004 f938 	bl	c0de716c <cx_bn_alloc_init>
c0de2efc:	2800      	cmp	r0, #0
c0de2efe:	d1d6      	bne.n	c0de2eae <Poseidon_alloc_init+0x4e>
c0de2f00:	68a0      	ldr	r0, [r4, #8]
c0de2f02:	6962      	ldr	r2, [r4, #20]
c0de2f04:	fb05 7000 	mla	r0, r5, r0, r7
c0de2f08:	eb04 0080 	add.w	r0, r4, r0, lsl #2
c0de2f0c:	6b00      	ldr	r0, [r0, #48]	@ 0x30
c0de2f0e:	4601      	mov	r1, r0
c0de2f10:	f004 f9f6 	bl	c0de7300 <cx_mont_to_montgomery>
c0de2f14:	3701      	adds	r7, #1
c0de2f16:	2800      	cmp	r0, #0
c0de2f18:	d0e2      	beq.n	c0de2ee0 <Poseidon_alloc_init+0x80>
c0de2f1a:	e7c8      	b.n	c0de2eae <Poseidon_alloc_init+0x4e>
c0de2f1c:	3501      	adds	r5, #1
c0de2f1e:	e7cc      	b.n	c0de2eba <Poseidon_alloc_init+0x5a>
c0de2f20:	2001      	movs	r0, #1
c0de2f22:	6120      	str	r0, [r4, #16]
c0de2f24:	2000      	movs	r0, #0
c0de2f26:	e7c2      	b.n	c0de2eae <Poseidon_alloc_init+0x4e>
c0de2f28:	00005820 	.word	0x00005820

c0de2f2c <Poseidon>:
c0de2f2c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2f30:	b08c      	sub	sp, #48	@ 0x30
c0de2f32:	4606      	mov	r6, r0
c0de2f34:	6900      	ldr	r0, [r0, #16]
c0de2f36:	2801      	cmp	r0, #1
c0de2f38:	f040 80b4 	bne.w	c0de30a4 <Poseidon+0x178>
c0de2f3c:	69b0      	ldr	r0, [r6, #24]
c0de2f3e:	461f      	mov	r7, r3
c0de2f40:	4692      	mov	sl, r2
c0de2f42:	f004 f949 	bl	c0de71d8 <cx_bn_set_u32>
c0de2f46:	2800      	cmp	r0, #0
c0de2f48:	f040 80ad 	bne.w	c0de30a6 <Poseidon+0x17a>
c0de2f4c:	f106 000c 	add.w	r0, r6, #12
c0de2f50:	f106 0818 	add.w	r8, r6, #24
c0de2f54:	f106 0bc0 	add.w	fp, r6, #192	@ 0xc0
c0de2f58:	9001      	str	r0, [sp, #4]
c0de2f5a:	2000      	movs	r0, #0
c0de2f5c:	2844      	cmp	r0, #68	@ 0x44
c0de2f5e:	f000 80ae 	beq.w	c0de30be <Poseidon+0x192>
c0de2f62:	6834      	ldr	r4, [r6, #0]
c0de2f64:	e9cd 0a02 	strd	r0, sl, [sp, #8]
c0de2f68:	f04f 0a00 	mov.w	sl, #0
c0de2f6c:	68b0      	ldr	r0, [r6, #8]
c0de2f6e:	4582      	cmp	sl, r0
c0de2f70:	d224      	bcs.n	c0de2fbc <Poseidon+0x90>
c0de2f72:	ad04      	add	r5, sp, #16
c0de2f74:	4658      	mov	r0, fp
c0de2f76:	4629      	mov	r1, r5
c0de2f78:	f7ff ff1e 	bl	c0de2db8 <gen_integer>
c0de2f7c:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de2f80:	4629      	mov	r1, r5
c0de2f82:	4622      	mov	r2, r4
c0de2f84:	f004 f912 	bl	c0de71ac <cx_bn_init>
c0de2f88:	2800      	cmp	r0, #0
c0de2f8a:	f040 808c 	bne.w	c0de30a6 <Poseidon+0x17a>
c0de2f8e:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de2f92:	6972      	ldr	r2, [r6, #20]
c0de2f94:	4601      	mov	r1, r0
c0de2f96:	f004 f9b3 	bl	c0de7300 <cx_mont_to_montgomery>
c0de2f9a:	2800      	cmp	r0, #0
c0de2f9c:	f040 8083 	bne.w	c0de30a6 <Poseidon+0x17a>
c0de2fa0:	6972      	ldr	r2, [r6, #20]
c0de2fa2:	f858 002a 	ldr.w	r0, [r8, sl, lsl #2]
c0de2fa6:	f8d6 10d8 	ldr.w	r1, [r6, #216]	@ 0xd8
c0de2faa:	6813      	ldr	r3, [r2, #0]
c0de2fac:	4602      	mov	r2, r0
c0de2fae:	f004 f94d 	bl	c0de724c <cx_bn_mod_add>
c0de2fb2:	f10a 0a01 	add.w	sl, sl, #1
c0de2fb6:	2800      	cmp	r0, #0
c0de2fb8:	d0d8      	beq.n	c0de2f6c <Poseidon+0x40>
c0de2fba:	e074      	b.n	c0de30a6 <Poseidon+0x17a>
c0de2fbc:	9902      	ldr	r1, [sp, #8]
c0de2fbe:	2904      	cmp	r1, #4
c0de2fc0:	d301      	bcc.n	c0de2fc6 <Poseidon+0x9a>
c0de2fc2:	2940      	cmp	r1, #64	@ 0x40
c0de2fc4:	d323      	bcc.n	c0de300e <Poseidon+0xe2>
c0de2fc6:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de2fca:	2400      	movs	r4, #0
c0de2fcc:	4284      	cmp	r4, r0
c0de2fce:	d22b      	bcs.n	c0de3028 <Poseidon+0xfc>
c0de2fd0:	f858 1024 	ldr.w	r1, [r8, r4, lsl #2]
c0de2fd4:	6973      	ldr	r3, [r6, #20]
c0de2fd6:	f8d6 00d8 	ldr.w	r0, [r6, #216]	@ 0xd8
c0de2fda:	460a      	mov	r2, r1
c0de2fdc:	f004 f9a8 	bl	c0de7330 <cx_mont_mul>
c0de2fe0:	2800      	cmp	r0, #0
c0de2fe2:	d160      	bne.n	c0de30a6 <Poseidon+0x17a>
c0de2fe4:	e9d6 1036 	ldrd	r1, r0, [r6, #216]	@ 0xd8
c0de2fe8:	6973      	ldr	r3, [r6, #20]
c0de2fea:	460a      	mov	r2, r1
c0de2fec:	f004 f9a0 	bl	c0de7330 <cx_mont_mul>
c0de2ff0:	2800      	cmp	r0, #0
c0de2ff2:	d158      	bne.n	c0de30a6 <Poseidon+0x17a>
c0de2ff4:	f858 0024 	ldr.w	r0, [r8, r4, lsl #2]
c0de2ff8:	6973      	ldr	r3, [r6, #20]
c0de2ffa:	f8d6 20dc 	ldr.w	r2, [r6, #220]	@ 0xdc
c0de2ffe:	4601      	mov	r1, r0
c0de3000:	f004 f996 	bl	c0de7330 <cx_mont_mul>
c0de3004:	2800      	cmp	r0, #0
c0de3006:	d14e      	bne.n	c0de30a6 <Poseidon+0x17a>
c0de3008:	68b0      	ldr	r0, [r6, #8]
c0de300a:	3401      	adds	r4, #1
c0de300c:	e7de      	b.n	c0de2fcc <Poseidon+0xa0>
c0de300e:	e9d6 1005 	ldrd	r1, r0, [r6, #20]
c0de3012:	9a01      	ldr	r2, [sp, #4]
c0de3014:	2301      	movs	r3, #1
c0de3016:	9100      	str	r1, [sp, #0]
c0de3018:	4601      	mov	r1, r0
c0de301a:	f004 f995 	bl	c0de7348 <cx_mont_pow>
c0de301e:	f8dd a00c 	ldr.w	sl, [sp, #12]
c0de3022:	2800      	cmp	r0, #0
c0de3024:	d13f      	bne.n	c0de30a6 <Poseidon+0x17a>
c0de3026:	68b0      	ldr	r0, [r6, #8]
c0de3028:	2500      	movs	r5, #0
c0de302a:	4285      	cmp	r5, r0
c0de302c:	d229      	bcs.n	c0de3082 <Poseidon+0x156>
c0de302e:	eb06 0485 	add.w	r4, r6, r5, lsl #2
c0de3032:	2100      	movs	r1, #0
c0de3034:	f854 0fd8 	ldr.w	r0, [r4, #216]!
c0de3038:	f004 f8ce 	bl	c0de71d8 <cx_bn_set_u32>
c0de303c:	bb98      	cbnz	r0, c0de30a6 <Poseidon+0x17a>
c0de303e:	9503      	str	r5, [sp, #12]
c0de3040:	2500      	movs	r5, #0
c0de3042:	68b0      	ldr	r0, [r6, #8]
c0de3044:	4285      	cmp	r5, r0
c0de3046:	d219      	bcs.n	c0de307c <Poseidon+0x150>
c0de3048:	9903      	ldr	r1, [sp, #12]
c0de304a:	6973      	ldr	r3, [r6, #20]
c0de304c:	fb01 5000 	mla	r0, r1, r0, r5
c0de3050:	f858 1025 	ldr.w	r1, [r8, r5, lsl #2]
c0de3054:	eb06 0080 	add.w	r0, r6, r0, lsl #2
c0de3058:	6b02      	ldr	r2, [r0, #48]	@ 0x30
c0de305a:	f8d6 00d4 	ldr.w	r0, [r6, #212]	@ 0xd4
c0de305e:	f004 f967 	bl	c0de7330 <cx_mont_mul>
c0de3062:	bb00      	cbnz	r0, c0de30a6 <Poseidon+0x17a>
c0de3064:	6971      	ldr	r1, [r6, #20]
c0de3066:	6820      	ldr	r0, [r4, #0]
c0de3068:	f8d6 20d4 	ldr.w	r2, [r6, #212]	@ 0xd4
c0de306c:	680b      	ldr	r3, [r1, #0]
c0de306e:	4601      	mov	r1, r0
c0de3070:	f004 f8ec 	bl	c0de724c <cx_bn_mod_add>
c0de3074:	3501      	adds	r5, #1
c0de3076:	2800      	cmp	r0, #0
c0de3078:	d0e3      	beq.n	c0de3042 <Poseidon+0x116>
c0de307a:	e014      	b.n	c0de30a6 <Poseidon+0x17a>
c0de307c:	9d03      	ldr	r5, [sp, #12]
c0de307e:	3501      	adds	r5, #1
c0de3080:	e7d3      	b.n	c0de302a <Poseidon+0xfe>
c0de3082:	2400      	movs	r4, #0
c0de3084:	4284      	cmp	r4, r0
c0de3086:	d20a      	bcs.n	c0de309e <Poseidon+0x172>
c0de3088:	eb06 0184 	add.w	r1, r6, r4, lsl #2
c0de308c:	6988      	ldr	r0, [r1, #24]
c0de308e:	f8d1 10d8 	ldr.w	r1, [r1, #216]	@ 0xd8
c0de3092:	f004 f897 	bl	c0de71c4 <cx_bn_copy>
c0de3096:	b930      	cbnz	r0, c0de30a6 <Poseidon+0x17a>
c0de3098:	68b0      	ldr	r0, [r6, #8]
c0de309a:	3401      	adds	r4, #1
c0de309c:	e7f2      	b.n	c0de3084 <Poseidon+0x158>
c0de309e:	9802      	ldr	r0, [sp, #8]
c0de30a0:	3001      	adds	r0, #1
c0de30a2:	e75b      	b.n	c0de2f5c <Poseidon+0x30>
c0de30a4:	4808      	ldr	r0, [pc, #32]	@ (c0de30c8 <Poseidon+0x19c>)
c0de30a6:	b00c      	add	sp, #48	@ 0x30
c0de30a8:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de30ac:	f858 1b04 	ldr.w	r1, [r8], #4
c0de30b0:	f85a 0b04 	ldr.w	r0, [sl], #4
c0de30b4:	f004 f886 	bl	c0de71c4 <cx_bn_copy>
c0de30b8:	3f01      	subs	r7, #1
c0de30ba:	2800      	cmp	r0, #0
c0de30bc:	d1f3      	bne.n	c0de30a6 <Poseidon+0x17a>
c0de30be:	2f00      	cmp	r7, #0
c0de30c0:	d1f4      	bne.n	c0de30ac <Poseidon+0x180>
c0de30c2:	2000      	movs	r0, #0
c0de30c4:	e7ef      	b.n	c0de30a6 <Poseidon+0x17a>
c0de30c6:	bf00      	nop
c0de30c8:	5a4b4e02 	.word	0x5a4b4e02

c0de30cc <RFC9591_taggedHash>:
c0de30cc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de30ce:	b0d9      	sub	sp, #356	@ 0x164
c0de30d0:	460e      	mov	r6, r1
c0de30d2:	4607      	mov	r7, r0
c0de30d4:	a858      	add	r0, sp, #352	@ 0x160
c0de30d6:	2140      	movs	r1, #64	@ 0x40
c0de30d8:	461c      	mov	r4, r3
c0de30da:	4615      	mov	r5, r2
c0de30dc:	f004 f83c 	bl	c0de7158 <cx_bn_alloc>
c0de30e0:	bbd8      	cbnz	r0, c0de315a <RFC9591_taggedHash+0x8e>
c0de30e2:	491f      	ldr	r1, [pc, #124]	@ (c0de3160 <RFC9591_taggedHash+0x94>)
c0de30e4:	4668      	mov	r0, sp
c0de30e6:	221d      	movs	r2, #29
c0de30e8:	4479      	add	r1, pc
c0de30ea:	f004 faeb 	bl	c0de76c4 <__aeabi_memcpy>
c0de30ee:	a808      	add	r0, sp, #32
c0de30f0:	2109      	movs	r1, #9
c0de30f2:	2240      	movs	r2, #64	@ 0x40
c0de30f4:	f003 fdc4 	bl	c0de6c80 <cx_hash_init_ex>
c0de30f8:	bb78      	cbnz	r0, c0de315a <RFC9591_taggedHash+0x8e>
c0de30fa:	a808      	add	r0, sp, #32
c0de30fc:	4669      	mov	r1, sp
c0de30fe:	221d      	movs	r2, #29
c0de3100:	f003 fdc3 	bl	c0de6c8a <cx_hash_update>
c0de3104:	bb48      	cbnz	r0, c0de315a <RFC9591_taggedHash+0x8e>
c0de3106:	a808      	add	r0, sp, #32
c0de3108:	4639      	mov	r1, r7
c0de310a:	4632      	mov	r2, r6
c0de310c:	f003 fdbd 	bl	c0de6c8a <cx_hash_update>
c0de3110:	bb18      	cbnz	r0, c0de315a <RFC9591_taggedHash+0x8e>
c0de3112:	a808      	add	r0, sp, #32
c0de3114:	4629      	mov	r1, r5
c0de3116:	4622      	mov	r2, r4
c0de3118:	f003 fdb7 	bl	c0de6c8a <cx_hash_update>
c0de311c:	b9e8      	cbnz	r0, c0de315a <RFC9591_taggedHash+0x8e>
c0de311e:	a808      	add	r0, sp, #32
c0de3120:	ae48      	add	r6, sp, #288	@ 0x120
c0de3122:	4631      	mov	r1, r6
c0de3124:	f003 fda7 	bl	c0de6c76 <cx_hash_final>
c0de3128:	b9b8      	cbnz	r0, c0de315a <RFC9591_taggedHash+0x8e>
c0de312a:	e9dd 455e 	ldrd	r4, r5, [sp, #376]	@ 0x178
c0de312e:	2000      	movs	r0, #0
c0de3130:	213f      	movs	r1, #63	@ 0x3f
c0de3132:	2820      	cmp	r0, #32
c0de3134:	d002      	beq.n	c0de313c <RFC9591_taggedHash+0x70>
c0de3136:	f000 f8dd 	bl	c0de32f4 <OUTLINED_FUNCTION_3>
c0de313a:	e7fa      	b.n	c0de3132 <RFC9591_taggedHash+0x66>
c0de313c:	9858      	ldr	r0, [sp, #352]	@ 0x160
c0de313e:	a948      	add	r1, sp, #288	@ 0x120
c0de3140:	2240      	movs	r2, #64	@ 0x40
c0de3142:	f004 f833 	bl	c0de71ac <cx_bn_init>
c0de3146:	b940      	cbnz	r0, c0de315a <RFC9591_taggedHash+0x8e>
c0de3148:	9958      	ldr	r1, [sp, #352]	@ 0x160
c0de314a:	4628      	mov	r0, r5
c0de314c:	4622      	mov	r2, r4
c0de314e:	f004 f8a1 	bl	c0de7294 <cx_bn_reduce>
c0de3152:	b910      	cbnz	r0, c0de315a <RFC9591_taggedHash+0x8e>
c0de3154:	a858      	add	r0, sp, #352	@ 0x160
c0de3156:	f004 f815 	bl	c0de7184 <cx_bn_destroy>
c0de315a:	b059      	add	sp, #356	@ 0x164
c0de315c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de315e:	bf00      	nop
c0de3160:	00005a38 	.word	0x00005a38

c0de3164 <Babyfrost_H1>:
c0de3164:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3166:	4605      	mov	r5, r0
c0de3168:	206f      	movs	r0, #111	@ 0x6f
c0de316a:	f000 f8b7 	bl	c0de32dc <OUTLINED_FUNCTION_1>
c0de316e:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de3172:	f000 f8ba 	bl	c0de32ea <OUTLINED_FUNCTION_2>
c0de3176:	a803      	add	r0, sp, #12
c0de3178:	f7ff ffa8 	bl	c0de30cc <RFC9591_taggedHash>
c0de317c:	b004      	add	sp, #16
c0de317e:	bdb0      	pop	{r4, r5, r7, pc}

c0de3180 <Babyfrost_H3>:
c0de3180:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de3182:	4605      	mov	r5, r0
c0de3184:	2065      	movs	r0, #101	@ 0x65
c0de3186:	460c      	mov	r4, r1
c0de3188:	e9cd 2300 	strd	r2, r3, [sp]
c0de318c:	2105      	movs	r1, #5
c0de318e:	f88d 000c 	strb.w	r0, [sp, #12]
c0de3192:	4804      	ldr	r0, [pc, #16]	@ (c0de31a4 <Babyfrost_H3+0x24>)
c0de3194:	462a      	mov	r2, r5
c0de3196:	4623      	mov	r3, r4
c0de3198:	9002      	str	r0, [sp, #8]
c0de319a:	a802      	add	r0, sp, #8
c0de319c:	f7ff ff96 	bl	c0de30cc <RFC9591_taggedHash>
c0de31a0:	b004      	add	sp, #16
c0de31a2:	bdb0      	pop	{r4, r5, r7, pc}
c0de31a4:	636e6f6e 	.word	0x636e6f6e

c0de31a8 <Babyfrost_H4>:
c0de31a8:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de31aa:	4605      	mov	r5, r0
c0de31ac:	2067      	movs	r0, #103	@ 0x67
c0de31ae:	f000 f895 	bl	c0de32dc <OUTLINED_FUNCTION_1>
c0de31b2:	f247 306d 	movw	r0, #29549	@ 0x736d
c0de31b6:	f000 f898 	bl	c0de32ea <OUTLINED_FUNCTION_2>
c0de31ba:	a803      	add	r0, sp, #12
c0de31bc:	f7ff ff86 	bl	c0de30cc <RFC9591_taggedHash>
c0de31c0:	b004      	add	sp, #16
c0de31c2:	bdb0      	pop	{r4, r5, r7, pc}

c0de31c4 <Babyfrost_H5>:
c0de31c4:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de31c6:	4605      	mov	r5, r0
c0de31c8:	206d      	movs	r0, #109	@ 0x6d
c0de31ca:	f000 f887 	bl	c0de32dc <OUTLINED_FUNCTION_1>
c0de31ce:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de31d2:	f000 f88a 	bl	c0de32ea <OUTLINED_FUNCTION_2>
c0de31d6:	a803      	add	r0, sp, #12
c0de31d8:	f7ff ff78 	bl	c0de30cc <RFC9591_taggedHash>
c0de31dc:	b004      	add	sp, #16
c0de31de:	bdb0      	pop	{r4, r5, r7, pc}

c0de31e0 <zkn_frost_hash_init>:
c0de31e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de31e2:	461d      	mov	r5, r3
c0de31e4:	4604      	mov	r4, r0
c0de31e6:	f003 fd4b 	bl	c0de6c80 <cx_hash_init_ex>
c0de31ea:	b938      	cbnz	r0, c0de31fc <zkn_frost_hash_init+0x1c>
c0de31ec:	e9dd 2706 	ldrd	r2, r7, [sp, #24]
c0de31f0:	9e08      	ldr	r6, [sp, #32]
c0de31f2:	4620      	mov	r0, r4
c0de31f4:	4629      	mov	r1, r5
c0de31f6:	f003 fd48 	bl	c0de6c8a <cx_hash_update>
c0de31fa:	b100      	cbz	r0, c0de31fe <zkn_frost_hash_init+0x1e>
c0de31fc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
c0de31fe:	4620      	mov	r0, r4
c0de3200:	4639      	mov	r1, r7
c0de3202:	4632      	mov	r2, r6
c0de3204:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
c0de3208:	f003 bd3f 	b.w	c0de6c8a <cx_hash_update>

c0de320c <zkn_frost_H1_init>:
c0de320c:	b570      	push	{r4, r5, r6, lr}
c0de320e:	b08c      	sub	sp, #48	@ 0x30
c0de3210:	4604      	mov	r4, r0
c0de3212:	206f      	movs	r0, #111	@ 0x6f
c0de3214:	221d      	movs	r2, #29
c0de3216:	261d      	movs	r6, #29
c0de3218:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de321c:	f646 0072 	movw	r0, #26738	@ 0x6872
c0de3220:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de3224:	ad03      	add	r5, sp, #12
c0de3226:	4905      	ldr	r1, [pc, #20]	@ (c0de323c <zkn_frost_H1_init+0x30>)
c0de3228:	4628      	mov	r0, r5
c0de322a:	4479      	add	r1, pc
c0de322c:	f004 fa4a 	bl	c0de76c4 <__aeabi_memcpy>
c0de3230:	a90b      	add	r1, sp, #44	@ 0x2c
c0de3232:	f000 f849 	bl	c0de32c8 <OUTLINED_FUNCTION_0>
c0de3236:	b00c      	add	sp, #48	@ 0x30
c0de3238:	bd70      	pop	{r4, r5, r6, pc}
c0de323a:	bf00      	nop
c0de323c:	000058f6 	.word	0x000058f6

c0de3240 <zkn_frost_H5_init>:
c0de3240:	b570      	push	{r4, r5, r6, lr}
c0de3242:	b08c      	sub	sp, #48	@ 0x30
c0de3244:	4604      	mov	r4, r0
c0de3246:	206d      	movs	r0, #109	@ 0x6d
c0de3248:	221d      	movs	r2, #29
c0de324a:	261d      	movs	r6, #29
c0de324c:	f88d 002e 	strb.w	r0, [sp, #46]	@ 0x2e
c0de3250:	f646 7063 	movw	r0, #28515	@ 0x6f63
c0de3254:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de3258:	ad03      	add	r5, sp, #12
c0de325a:	4905      	ldr	r1, [pc, #20]	@ (c0de3270 <zkn_frost_H5_init+0x30>)
c0de325c:	4628      	mov	r0, r5
c0de325e:	4479      	add	r1, pc
c0de3260:	f004 fa30 	bl	c0de76c4 <__aeabi_memcpy>
c0de3264:	a90b      	add	r1, sp, #44	@ 0x2c
c0de3266:	f000 f82f 	bl	c0de32c8 <OUTLINED_FUNCTION_0>
c0de326a:	b00c      	add	sp, #48	@ 0x30
c0de326c:	bd70      	pop	{r4, r5, r6, pc}
c0de326e:	bf00      	nop
c0de3270:	000058c2 	.word	0x000058c2

c0de3274 <zkn_frost_hash_update>:
c0de3274:	f003 bd09 	b.w	c0de6c8a <cx_hash_update>

c0de3278 <zkn_frost_hash_final>:
c0de3278:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de327a:	b091      	sub	sp, #68	@ 0x44
c0de327c:	460c      	mov	r4, r1
c0de327e:	4607      	mov	r7, r0
c0de3280:	a810      	add	r0, sp, #64	@ 0x40
c0de3282:	2140      	movs	r1, #64	@ 0x40
c0de3284:	4615      	mov	r5, r2
c0de3286:	f003 ff67 	bl	c0de7158 <cx_bn_alloc>
c0de328a:	b9d8      	cbnz	r0, c0de32c4 <zkn_frost_hash_final+0x4c>
c0de328c:	466e      	mov	r6, sp
c0de328e:	4638      	mov	r0, r7
c0de3290:	4631      	mov	r1, r6
c0de3292:	f003 fcf0 	bl	c0de6c76 <cx_hash_final>
c0de3296:	b9a8      	cbnz	r0, c0de32c4 <zkn_frost_hash_final+0x4c>
c0de3298:	2000      	movs	r0, #0
c0de329a:	213f      	movs	r1, #63	@ 0x3f
c0de329c:	2820      	cmp	r0, #32
c0de329e:	d002      	beq.n	c0de32a6 <zkn_frost_hash_final+0x2e>
c0de32a0:	f000 f828 	bl	c0de32f4 <OUTLINED_FUNCTION_3>
c0de32a4:	e7fa      	b.n	c0de329c <zkn_frost_hash_final+0x24>
c0de32a6:	9810      	ldr	r0, [sp, #64]	@ 0x40
c0de32a8:	4669      	mov	r1, sp
c0de32aa:	2240      	movs	r2, #64	@ 0x40
c0de32ac:	f003 ff7e 	bl	c0de71ac <cx_bn_init>
c0de32b0:	b940      	cbnz	r0, c0de32c4 <zkn_frost_hash_final+0x4c>
c0de32b2:	9910      	ldr	r1, [sp, #64]	@ 0x40
c0de32b4:	4628      	mov	r0, r5
c0de32b6:	4622      	mov	r2, r4
c0de32b8:	f003 ffec 	bl	c0de7294 <cx_bn_reduce>
c0de32bc:	b910      	cbnz	r0, c0de32c4 <zkn_frost_hash_final+0x4c>
c0de32be:	a810      	add	r0, sp, #64	@ 0x40
c0de32c0:	f003 ff60 	bl	c0de7184 <cx_bn_destroy>
c0de32c4:	b011      	add	sp, #68	@ 0x44
c0de32c6:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de32c8 <OUTLINED_FUNCTION_0>:
c0de32c8:	2003      	movs	r0, #3
c0de32ca:	2240      	movs	r2, #64	@ 0x40
c0de32cc:	462b      	mov	r3, r5
c0de32ce:	e9cd 6100 	strd	r6, r1, [sp]
c0de32d2:	9002      	str	r0, [sp, #8]
c0de32d4:	4620      	mov	r0, r4
c0de32d6:	2109      	movs	r1, #9
c0de32d8:	f7ff bf82 	b.w	c0de31e0 <zkn_frost_hash_init>

c0de32dc <OUTLINED_FUNCTION_1>:
c0de32dc:	460c      	mov	r4, r1
c0de32de:	e9cd 2300 	strd	r2, r3, [sp]
c0de32e2:	2103      	movs	r1, #3
c0de32e4:	f88d 000e 	strb.w	r0, [sp, #14]
c0de32e8:	4770      	bx	lr

c0de32ea <OUTLINED_FUNCTION_2>:
c0de32ea:	462a      	mov	r2, r5
c0de32ec:	4623      	mov	r3, r4
c0de32ee:	f8ad 000c 	strh.w	r0, [sp, #12]
c0de32f2:	4770      	bx	lr

c0de32f4 <OUTLINED_FUNCTION_3>:
c0de32f4:	5c32      	ldrb	r2, [r6, r0]
c0de32f6:	5c73      	ldrb	r3, [r6, r1]
c0de32f8:	5433      	strb	r3, [r6, r0]
c0de32fa:	5472      	strb	r2, [r6, r1]
c0de32fc:	3901      	subs	r1, #1
c0de32fe:	3001      	adds	r0, #1
c0de3300:	4770      	bx	lr

c0de3302 <os_io_handle_default_apdu>:
c0de3302:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3304:	b09d      	sub	sp, #116	@ 0x74
c0de3306:	4615      	mov	r5, r2
c0de3308:	9a22      	ldr	r2, [sp, #136]	@ 0x88
c0de330a:	b3c8      	cbz	r0, c0de3380 <os_io_handle_default_apdu+0x7e>
c0de330c:	b3c1      	cbz	r1, c0de3380 <os_io_handle_default_apdu+0x7e>
c0de330e:	b3bd      	cbz	r5, c0de3380 <os_io_handle_default_apdu+0x7e>
c0de3310:	461c      	mov	r4, r3
c0de3312:	b3ab      	cbz	r3, c0de3380 <os_io_handle_default_apdu+0x7e>
c0de3314:	b10a      	cbz	r2, c0de331a <os_io_handle_default_apdu+0x18>
c0de3316:	2100      	movs	r1, #0
c0de3318:	7011      	strb	r1, [r2, #0]
c0de331a:	7801      	ldrb	r1, [r0, #0]
c0de331c:	29b0      	cmp	r1, #176	@ 0xb0
c0de331e:	d131      	bne.n	c0de3384 <os_io_handle_default_apdu+0x82>
c0de3320:	7841      	ldrb	r1, [r0, #1]
c0de3322:	29a7      	cmp	r1, #167	@ 0xa7
c0de3324:	d031      	beq.n	c0de338a <os_io_handle_default_apdu+0x88>
c0de3326:	2906      	cmp	r1, #6
c0de3328:	d036      	beq.n	c0de3398 <os_io_handle_default_apdu+0x96>
c0de332a:	2901      	cmp	r1, #1
c0de332c:	d131      	bne.n	c0de3392 <os_io_handle_default_apdu+0x90>
c0de332e:	7881      	ldrb	r1, [r0, #2]
c0de3330:	bb79      	cbnz	r1, c0de3392 <os_io_handle_default_apdu+0x90>
c0de3332:	78c0      	ldrb	r0, [r0, #3]
c0de3334:	bb68      	cbnz	r0, c0de3392 <os_io_handle_default_apdu+0x90>
c0de3336:	6820      	ldr	r0, [r4, #0]
c0de3338:	2100      	movs	r1, #0
c0de333a:	6021      	str	r1, [r4, #0]
c0de333c:	2803      	cmp	r0, #3
c0de333e:	d321      	bcc.n	c0de3384 <os_io_handle_default_apdu+0x82>
c0de3340:	2601      	movs	r6, #1
c0de3342:	1ec7      	subs	r7, r0, #3
c0de3344:	6026      	str	r6, [r4, #0]
c0de3346:	702e      	strb	r6, [r5, #0]
c0de3348:	6820      	ldr	r0, [r4, #0]
c0de334a:	1a3a      	subs	r2, r7, r0
c0de334c:	4428      	add	r0, r5
c0de334e:	1c41      	adds	r1, r0, #1
c0de3350:	2001      	movs	r0, #1
c0de3352:	f004 f86f 	bl	c0de7434 <os_registry_get_current_app_tag>
c0de3356:	f000 f83f 	bl	c0de33d8 <OUTLINED_FUNCTION_0>
c0de335a:	6020      	str	r0, [r4, #0]
c0de335c:	1a3a      	subs	r2, r7, r0
c0de335e:	4428      	add	r0, r5
c0de3360:	1c41      	adds	r1, r0, #1
c0de3362:	2002      	movs	r0, #2
c0de3364:	f004 f866 	bl	c0de7434 <os_registry_get_current_app_tag>
c0de3368:	f000 f836 	bl	c0de33d8 <OUTLINED_FUNCTION_0>
c0de336c:	1c41      	adds	r1, r0, #1
c0de336e:	6021      	str	r1, [r4, #0]
c0de3370:	542e      	strb	r6, [r5, r0]
c0de3372:	f004 f857 	bl	c0de7424 <os_flags>
c0de3376:	6821      	ldr	r1, [r4, #0]
c0de3378:	1c4a      	adds	r2, r1, #1
c0de337a:	6022      	str	r2, [r4, #0]
c0de337c:	5468      	strb	r0, [r5, r1]
c0de337e:	e028      	b.n	c0de33d2 <os_io_handle_default_apdu+0xd0>
c0de3380:	7814      	ldrb	r4, [r2, #0]
c0de3382:	e01e      	b.n	c0de33c2 <os_io_handle_default_apdu+0xc0>
c0de3384:	f646 1485 	movw	r4, #27013	@ 0x6985
c0de3388:	e01b      	b.n	c0de33c2 <os_io_handle_default_apdu+0xc0>
c0de338a:	7881      	ldrb	r1, [r0, #2]
c0de338c:	b909      	cbnz	r1, c0de3392 <os_io_handle_default_apdu+0x90>
c0de338e:	78c0      	ldrb	r0, [r0, #3]
c0de3390:	b1d0      	cbz	r0, c0de33c8 <os_io_handle_default_apdu+0xc6>
c0de3392:	f44f 44dc 	mov.w	r4, #28160	@ 0x6e00
c0de3396:	e014      	b.n	c0de33c2 <os_io_handle_default_apdu+0xc0>
c0de3398:	2100      	movs	r1, #0
c0de339a:	6021      	str	r1, [r4, #0]
c0de339c:	7883      	ldrb	r3, [r0, #2]
c0de339e:	7902      	ldrb	r2, [r0, #4]
c0de33a0:	ad02      	add	r5, sp, #8
c0de33a2:	e9cd 1500 	strd	r1, r5, [sp]
c0de33a6:	1d41      	adds	r1, r0, #5
c0de33a8:	4618      	mov	r0, r3
c0de33aa:	2300      	movs	r3, #0
c0de33ac:	f004 f806 	bl	c0de73bc <os_pki_load_certificate>
c0de33b0:	4604      	mov	r4, r0
c0de33b2:	4628      	mov	r0, r5
c0de33b4:	216c      	movs	r1, #108	@ 0x6c
c0de33b6:	f004 f99d 	bl	c0de76f4 <explicit_bzero>
c0de33ba:	2c00      	cmp	r4, #0
c0de33bc:	bf08      	it	eq
c0de33be:	f44f 4410 	moveq.w	r4, #36864	@ 0x9000
c0de33c2:	4620      	mov	r0, r4
c0de33c4:	b01d      	add	sp, #116	@ 0x74
c0de33c6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de33c8:	2000      	movs	r0, #0
c0de33ca:	6020      	str	r0, [r4, #0]
c0de33cc:	b10a      	cbz	r2, c0de33d2 <os_io_handle_default_apdu+0xd0>
c0de33ce:	2001      	movs	r0, #1
c0de33d0:	7010      	strb	r0, [r2, #0]
c0de33d2:	f44f 4410 	mov.w	r4, #36864	@ 0x9000
c0de33d6:	e7f4      	b.n	c0de33c2 <os_io_handle_default_apdu+0xc0>

c0de33d8 <OUTLINED_FUNCTION_0>:
c0de33d8:	6821      	ldr	r1, [r4, #0]
c0de33da:	1c4a      	adds	r2, r1, #1
c0de33dc:	6022      	str	r2, [r4, #0]
c0de33de:	5468      	strb	r0, [r5, r1]
c0de33e0:	6821      	ldr	r1, [r4, #0]
c0de33e2:	4408      	add	r0, r1
c0de33e4:	4770      	bx	lr

c0de33e6 <io_process_itc_ux_event>:
c0de33e6:	b580      	push	{r7, lr}
c0de33e8:	78c0      	ldrb	r0, [r0, #3]
c0de33ea:	2820      	cmp	r0, #32
c0de33ec:	d107      	bne.n	c0de33fe <io_process_itc_ux_event+0x18>
c0de33ee:	2001      	movs	r0, #1
c0de33f0:	f003 fc65 	bl	c0de6cbe <nbgl_objAllowDrawing>
c0de33f4:	f003 fc72 	bl	c0de6cdc <nbgl_screenRedraw>
c0de33f8:	f003 fc57 	bl	c0de6caa <nbgl_refresh>
c0de33fc:	2100      	movs	r1, #0
c0de33fe:	4608      	mov	r0, r1
c0de3400:	bd80      	pop	{r7, pc}
	...

c0de3404 <io_legacy_apdu_tx>:
c0de3404:	b5b0      	push	{r4, r5, r7, lr}
c0de3406:	460a      	mov	r2, r1
c0de3408:	4601      	mov	r1, r0
c0de340a:	4806      	ldr	r0, [pc, #24]	@ (c0de3424 <io_legacy_apdu_tx+0x20>)
c0de340c:	2300      	movs	r3, #0
c0de340e:	2500      	movs	r5, #0
c0de3410:	eb09 0400 	add.w	r4, r9, r0
c0de3414:	7860      	ldrb	r0, [r4, #1]
c0de3416:	f004 f837 	bl	c0de7488 <os_io_tx_cmd>
c0de341a:	4903      	ldr	r1, [pc, #12]	@ (c0de3428 <io_legacy_apdu_tx+0x24>)
c0de341c:	7065      	strb	r5, [r4, #1]
c0de341e:	4449      	add	r1, r9
c0de3420:	718d      	strb	r5, [r1, #6]
c0de3422:	bdb0      	pop	{r4, r5, r7, pc}
c0de3424:	00000632 	.word	0x00000632
c0de3428:	0000062a 	.word	0x0000062a

c0de342c <io_legacy_apdu_rx>:
c0de342c:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de342e:	4e65      	ldr	r6, [pc, #404]	@ (c0de35c4 <io_legacy_apdu_rx+0x198>)
c0de3430:	2100      	movs	r1, #0
c0de3432:	4605      	mov	r5, r0
c0de3434:	2200      	movs	r2, #0
c0de3436:	2301      	movs	r3, #1
c0de3438:	f88d 100b 	strb.w	r1, [sp, #11]
c0de343c:	f240 1111 	movw	r1, #273	@ 0x111
c0de3440:	eb09 0006 	add.w	r0, r9, r6
c0de3444:	f004 f82c 	bl	c0de74a0 <os_io_rx_evt>
c0de3448:	4604      	mov	r4, r0
c0de344a:	2801      	cmp	r0, #1
c0de344c:	f2c0 80b5 	blt.w	c0de35ba <io_legacy_apdu_rx+0x18e>
c0de3450:	f819 0006 	ldrb.w	r0, [r9, r6]
c0de3454:	f1a0 0110 	sub.w	r1, r0, #16
c0de3458:	2916      	cmp	r1, #22
c0de345a:	d843      	bhi.n	c0de34e4 <io_legacy_apdu_rx+0xb8>
c0de345c:	2201      	movs	r2, #1
c0de345e:	fa02 f101 	lsl.w	r1, r2, r1
c0de3462:	4a59      	ldr	r2, [pc, #356]	@ (c0de35c8 <io_legacy_apdu_rx+0x19c>)
c0de3464:	4211      	tst	r1, r2
c0de3466:	d03d      	beq.n	c0de34e4 <io_legacy_apdu_rx+0xb8>
c0de3468:	4f58      	ldr	r7, [pc, #352]	@ (c0de35cc <io_legacy_apdu_rx+0x1a0>)
c0de346a:	eb09 0107 	add.w	r1, r9, r7
c0de346e:	7048      	strb	r0, [r1, #1]
c0de3470:	f003 ffb4 	bl	c0de73dc <os_perso_is_pin_set>
c0de3474:	28aa      	cmp	r0, #170	@ 0xaa
c0de3476:	d103      	bne.n	c0de3480 <io_legacy_apdu_rx+0x54>
c0de3478:	f003 ffb9 	bl	c0de73ee <os_global_pin_is_validated>
c0de347c:	28aa      	cmp	r0, #170	@ 0xaa
c0de347e:	d14d      	bne.n	c0de351c <io_legacy_apdu_rx+0xf0>
c0de3480:	eb09 0006 	add.w	r0, r9, r6
c0de3484:	7840      	ldrb	r0, [r0, #1]
c0de3486:	28b0      	cmp	r0, #176	@ 0xb0
c0de3488:	d134      	bne.n	c0de34f4 <io_legacy_apdu_rx+0xc8>
c0de348a:	f240 1011 	movw	r0, #273	@ 0x111
c0de348e:	1e61      	subs	r1, r4, #1
c0de3490:	9001      	str	r0, [sp, #4]
c0de3492:	f10d 000b 	add.w	r0, sp, #11
c0de3496:	9000      	str	r0, [sp, #0]
c0de3498:	484d      	ldr	r0, [pc, #308]	@ (c0de35d0 <io_legacy_apdu_rx+0x1a4>)
c0de349a:	ab01      	add	r3, sp, #4
c0de349c:	eb09 0500 	add.w	r5, r9, r0
c0de34a0:	eb09 0006 	add.w	r0, r9, r6
c0de34a4:	3001      	adds	r0, #1
c0de34a6:	462a      	mov	r2, r5
c0de34a8:	f7ff ff2b 	bl	c0de3302 <os_io_handle_default_apdu>
c0de34ac:	2400      	movs	r4, #0
c0de34ae:	9901      	ldr	r1, [sp, #4]
c0de34b0:	eb09 0607 	add.w	r6, r9, r7
c0de34b4:	f5b0 4f10 	cmp.w	r0, #36864	@ 0x9000
c0de34b8:	bf18      	it	ne
c0de34ba:	4621      	movne	r1, r4
c0de34bc:	0a02      	lsrs	r2, r0, #8
c0de34be:	2300      	movs	r3, #0
c0de34c0:	546a      	strb	r2, [r5, r1]
c0de34c2:	186a      	adds	r2, r5, r1
c0de34c4:	7050      	strb	r0, [r2, #1]
c0de34c6:	1c88      	adds	r0, r1, #2
c0de34c8:	4629      	mov	r1, r5
c0de34ca:	9001      	str	r0, [sp, #4]
c0de34cc:	b282      	uxth	r2, r0
c0de34ce:	7870      	ldrb	r0, [r6, #1]
c0de34d0:	f003 ffda 	bl	c0de7488 <os_io_tx_cmd>
c0de34d4:	f89d 100b 	ldrb.w	r1, [sp, #11]
c0de34d8:	7074      	strb	r4, [r6, #1]
c0de34da:	2901      	cmp	r1, #1
c0de34dc:	d06f      	beq.n	c0de35be <io_legacy_apdu_rx+0x192>
c0de34de:	ea00 74e0 	and.w	r4, r0, r0, asr #31
c0de34e2:	e06a      	b.n	c0de35ba <io_legacy_apdu_rx+0x18e>
c0de34e4:	1e41      	subs	r1, r0, #1
c0de34e6:	2902      	cmp	r1, #2
c0de34e8:	d32a      	bcc.n	c0de3540 <io_legacy_apdu_rx+0x114>
c0de34ea:	2830      	cmp	r0, #48	@ 0x30
c0de34ec:	d0bc      	beq.n	c0de3468 <io_legacy_apdu_rx+0x3c>
c0de34ee:	2840      	cmp	r0, #64	@ 0x40
c0de34f0:	d0ba      	beq.n	c0de3468 <io_legacy_apdu_rx+0x3c>
c0de34f2:	e061      	b.n	c0de35b8 <io_legacy_apdu_rx+0x18c>
c0de34f4:	eb09 0007 	add.w	r0, r9, r7
c0de34f8:	7840      	ldrb	r0, [r0, #1]
c0de34fa:	2810      	cmp	r0, #16
c0de34fc:	d040      	beq.n	c0de3580 <io_legacy_apdu_rx+0x154>
c0de34fe:	2840      	cmp	r0, #64	@ 0x40
c0de3500:	d040      	beq.n	c0de3584 <io_legacy_apdu_rx+0x158>
c0de3502:	2821      	cmp	r0, #33	@ 0x21
c0de3504:	d040      	beq.n	c0de3588 <io_legacy_apdu_rx+0x15c>
c0de3506:	2822      	cmp	r0, #34	@ 0x22
c0de3508:	d034      	beq.n	c0de3574 <io_legacy_apdu_rx+0x148>
c0de350a:	2823      	cmp	r0, #35	@ 0x23
c0de350c:	d034      	beq.n	c0de3578 <io_legacy_apdu_rx+0x14c>
c0de350e:	2830      	cmp	r0, #48	@ 0x30
c0de3510:	d034      	beq.n	c0de357c <io_legacy_apdu_rx+0x150>
c0de3512:	2820      	cmp	r0, #32
c0de3514:	bf14      	ite	ne
c0de3516:	2000      	movne	r0, #0
c0de3518:	2001      	moveq	r0, #1
c0de351a:	e036      	b.n	c0de358a <io_legacy_apdu_rx+0x15e>
c0de351c:	482c      	ldr	r0, [pc, #176]	@ (c0de35d0 <io_legacy_apdu_rx+0x1a4>)
c0de351e:	2155      	movs	r1, #85	@ 0x55
c0de3520:	2202      	movs	r2, #2
c0de3522:	2300      	movs	r3, #0
c0de3524:	f809 1000 	strb.w	r1, [r9, r0]
c0de3528:	eb09 0100 	add.w	r1, r9, r0
c0de352c:	2015      	movs	r0, #21
c0de352e:	7048      	strb	r0, [r1, #1]
c0de3530:	eb09 0007 	add.w	r0, r9, r7
c0de3534:	7840      	ldrb	r0, [r0, #1]
c0de3536:	b003      	add	sp, #12
c0de3538:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de353c:	f003 bfa4 	b.w	c0de7488 <os_io_tx_cmd>
c0de3540:	4f25      	ldr	r7, [pc, #148]	@ (c0de35d8 <io_legacy_apdu_rx+0x1ac>)
c0de3542:	444e      	add	r6, r9
c0de3544:	3c01      	subs	r4, #1
c0de3546:	1c71      	adds	r1, r6, #1
c0de3548:	4622      	mov	r2, r4
c0de354a:	eb09 0007 	add.w	r0, r9, r7
c0de354e:	f004 f8b9 	bl	c0de76c4 <__aeabi_memcpy>
c0de3552:	7870      	ldrb	r0, [r6, #1]
c0de3554:	281a      	cmp	r0, #26
c0de3556:	d107      	bne.n	c0de3568 <io_legacy_apdu_rx+0x13c>
c0de3558:	eb09 0007 	add.w	r0, r9, r7
c0de355c:	4621      	mov	r1, r4
c0de355e:	b003      	add	sp, #12
c0de3560:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de3564:	f7ff bf3f 	b.w	c0de33e6 <io_process_itc_ux_event>
c0de3568:	b1e5      	cbz	r5, c0de35a4 <io_legacy_apdu_rx+0x178>
c0de356a:	2000      	movs	r0, #0
c0de356c:	2400      	movs	r4, #0
c0de356e:	f003 f8c3 	bl	c0de66f8 <io_event>
c0de3572:	e022      	b.n	c0de35ba <io_legacy_apdu_rx+0x18e>
c0de3574:	2004      	movs	r0, #4
c0de3576:	e008      	b.n	c0de358a <io_legacy_apdu_rx+0x15e>
c0de3578:	2007      	movs	r0, #7
c0de357a:	e006      	b.n	c0de358a <io_legacy_apdu_rx+0x15e>
c0de357c:	2002      	movs	r0, #2
c0de357e:	e004      	b.n	c0de358a <io_legacy_apdu_rx+0x15e>
c0de3580:	2006      	movs	r0, #6
c0de3582:	e002      	b.n	c0de358a <io_legacy_apdu_rx+0x15e>
c0de3584:	2003      	movs	r0, #3
c0de3586:	e000      	b.n	c0de358a <io_legacy_apdu_rx+0x15e>
c0de3588:	2005      	movs	r0, #5
c0de358a:	4912      	ldr	r1, [pc, #72]	@ (c0de35d4 <io_legacy_apdu_rx+0x1a8>)
c0de358c:	3c01      	subs	r4, #1
c0de358e:	4622      	mov	r2, r4
c0de3590:	4449      	add	r1, r9
c0de3592:	7188      	strb	r0, [r1, #6]
c0de3594:	480e      	ldr	r0, [pc, #56]	@ (c0de35d0 <io_legacy_apdu_rx+0x1a4>)
c0de3596:	eb09 0106 	add.w	r1, r9, r6
c0de359a:	3101      	adds	r1, #1
c0de359c:	4448      	add	r0, r9
c0de359e:	f004 f891 	bl	c0de76c4 <__aeabi_memcpy>
c0de35a2:	e00a      	b.n	c0de35ba <io_legacy_apdu_rx+0x18e>
c0de35a4:	f819 0007 	ldrb.w	r0, [r9, r7]
c0de35a8:	2815      	cmp	r0, #21
c0de35aa:	d8de      	bhi.n	c0de356a <io_legacy_apdu_rx+0x13e>
c0de35ac:	2101      	movs	r1, #1
c0de35ae:	fa01 f000 	lsl.w	r0, r1, r0
c0de35b2:	490a      	ldr	r1, [pc, #40]	@ (c0de35dc <io_legacy_apdu_rx+0x1b0>)
c0de35b4:	4208      	tst	r0, r1
c0de35b6:	d0d8      	beq.n	c0de356a <io_legacy_apdu_rx+0x13e>
c0de35b8:	2400      	movs	r4, #0
c0de35ba:	4620      	mov	r0, r4
c0de35bc:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
c0de35be:	20ff      	movs	r0, #255	@ 0xff
c0de35c0:	f003 ff44 	bl	c0de744c <os_sched_exit>
c0de35c4:	00000518 	.word	0x00000518
c0de35c8:	007f0001 	.word	0x007f0001
c0de35cc:	00000632 	.word	0x00000632
c0de35d0:	00000407 	.word	0x00000407
c0de35d4:	0000062a 	.word	0x0000062a
c0de35d8:	000007ac 	.word	0x000007ac
c0de35dc:	00205020 	.word	0x00205020

c0de35e0 <io_seproxyhal_init>:
c0de35e0:	b570      	push	{r4, r5, r6, lr}
c0de35e2:	b08a      	sub	sp, #40	@ 0x28
c0de35e4:	4d0b      	ldr	r5, [pc, #44]	@ (c0de3614 <io_seproxyhal_init+0x34>)
c0de35e6:	2600      	movs	r6, #0
c0de35e8:	2118      	movs	r1, #24
c0de35ea:	eb09 0005 	add.w	r0, r9, r5
c0de35ee:	7046      	strb	r6, [r0, #1]
c0de35f0:	ac01      	add	r4, sp, #4
c0de35f2:	4620      	mov	r0, r4
c0de35f4:	f004 f870 	bl	c0de76d8 <__aeabi_memclr>
c0de35f8:	2011      	movs	r0, #17
c0de35fa:	f8ad 6024 	strh.w	r6, [sp, #36]	@ 0x24
c0de35fe:	f8ad 001c 	strh.w	r0, [sp, #28]
c0de3602:	4620      	mov	r0, r4
c0de3604:	f003 ff2c 	bl	c0de7460 <os_io_init>
c0de3608:	2001      	movs	r0, #1
c0de360a:	f809 0005 	strb.w	r0, [r9, r5]
c0de360e:	b00a      	add	sp, #40	@ 0x28
c0de3610:	bd70      	pop	{r4, r5, r6, pc}
c0de3612:	bf00      	nop
c0de3614:	00000632 	.word	0x00000632

c0de3618 <getTextMaxLenAndWidth>:
c0de3618:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de361c:	461c      	mov	r4, r3
c0de361e:	4690      	mov	r8, r2
c0de3620:	460e      	mov	r6, r1
c0de3622:	4682      	mov	sl, r0
c0de3624:	f003 fb73 	bl	c0de6d0e <nbgl_getFont>
c0de3628:	4607      	mov	r7, r0
c0de362a:	4630      	mov	r0, r6
c0de362c:	f004 f8b0 	bl	c0de7790 <strlen>
c0de3630:	f8dd b020 	ldr.w	fp, [sp, #32]
c0de3634:	4605      	mov	r5, r0
c0de3636:	2000      	movs	r0, #0
c0de3638:	f8ab 0000 	strh.w	r0, [fp]
c0de363c:	8020      	strh	r0, [r4, #0]
c0de363e:	0428      	lsls	r0, r5, #16
c0de3640:	d03e      	beq.n	c0de36c0 <getTextMaxLenAndWidth+0xa8>
c0de3642:	7830      	ldrb	r0, [r6, #0]
c0de3644:	3d01      	subs	r5, #1
c0de3646:	2808      	cmp	r0, #8
c0de3648:	d025      	beq.n	c0de3696 <getTextMaxLenAndWidth+0x7e>
c0de364a:	280c      	cmp	r0, #12
c0de364c:	d035      	beq.n	c0de36ba <getTextMaxLenAndWidth+0xa2>
c0de364e:	280a      	cmp	r0, #10
c0de3650:	d033      	beq.n	c0de36ba <getTextMaxLenAndWidth+0xa2>
c0de3652:	7af9      	ldrb	r1, [r7, #11]
c0de3654:	4288      	cmp	r0, r1
c0de3656:	d32d      	bcc.n	c0de36b4 <getTextMaxLenAndWidth+0x9c>
c0de3658:	7b3a      	ldrb	r2, [r7, #12]
c0de365a:	4290      	cmp	r0, r2
c0de365c:	d82a      	bhi.n	c0de36b4 <getTextMaxLenAndWidth+0x9c>
c0de365e:	1a40      	subs	r0, r0, r1
c0de3660:	6939      	ldr	r1, [r7, #16]
c0de3662:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de3666:	f003 fd2b 	bl	c0de70c0 <pic>
c0de366a:	7900      	ldrb	r0, [r0, #4]
c0de366c:	7a39      	ldrb	r1, [r7, #8]
c0de366e:	f3c0 0045 	ubfx	r0, r0, #1, #6
c0de3672:	1a40      	subs	r0, r0, r1
c0de3674:	0601      	lsls	r1, r0, #24
c0de3676:	d01d      	beq.n	c0de36b4 <getTextMaxLenAndWidth+0x9c>
c0de3678:	f8bb 1000 	ldrh.w	r1, [fp]
c0de367c:	b2c0      	uxtb	r0, r0
c0de367e:	4401      	add	r1, r0
c0de3680:	4541      	cmp	r1, r8
c0de3682:	d81d      	bhi.n	c0de36c0 <getTextMaxLenAndWidth+0xa8>
c0de3684:	8821      	ldrh	r1, [r4, #0]
c0de3686:	3101      	adds	r1, #1
c0de3688:	8021      	strh	r1, [r4, #0]
c0de368a:	f8bb 1000 	ldrh.w	r1, [fp]
c0de368e:	4408      	add	r0, r1
c0de3690:	f8ab 0000 	strh.w	r0, [fp]
c0de3694:	e7d3      	b.n	c0de363e <getTextMaxLenAndWidth+0x26>
c0de3696:	fa5f f08a 	uxtb.w	r0, sl
c0de369a:	280a      	cmp	r0, #10
c0de369c:	d004      	beq.n	c0de36a8 <getTextMaxLenAndWidth+0x90>
c0de369e:	2808      	cmp	r0, #8
c0de36a0:	d108      	bne.n	c0de36b4 <getTextMaxLenAndWidth+0x9c>
c0de36a2:	f04f 0a0a 	mov.w	sl, #10
c0de36a6:	e001      	b.n	c0de36ac <getTextMaxLenAndWidth+0x94>
c0de36a8:	f04f 0a08 	mov.w	sl, #8
c0de36ac:	4650      	mov	r0, sl
c0de36ae:	f003 fb2e 	bl	c0de6d0e <nbgl_getFont>
c0de36b2:	4607      	mov	r7, r0
c0de36b4:	8820      	ldrh	r0, [r4, #0]
c0de36b6:	3001      	adds	r0, #1
c0de36b8:	e7c0      	b.n	c0de363c <getTextMaxLenAndWidth+0x24>
c0de36ba:	8820      	ldrh	r0, [r4, #0]
c0de36bc:	3001      	adds	r0, #1
c0de36be:	8020      	strh	r0, [r4, #0]
c0de36c0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de36c4 <nbgl_layoutGet>:
c0de36c4:	b570      	push	{r4, r5, r6, lr}
c0de36c6:	4605      	mov	r5, r0
c0de36c8:	7800      	ldrb	r0, [r0, #0]
c0de36ca:	b148      	cbz	r0, c0de36e0 <nbgl_layoutGet+0x1c>
c0de36cc:	4819      	ldr	r0, [pc, #100]	@ (c0de3734 <nbgl_layoutGet+0x70>)
c0de36ce:	eb09 0100 	add.w	r1, r9, r0
c0de36d2:	7b8a      	ldrb	r2, [r1, #14]
c0de36d4:	b152      	cbz	r2, c0de36ec <nbgl_layoutGet+0x28>
c0de36d6:	4448      	add	r0, r9
c0de36d8:	7e81      	ldrb	r1, [r0, #26]
c0de36da:	b151      	cbz	r1, c0de36f2 <nbgl_layoutGet+0x2e>
c0de36dc:	2400      	movs	r4, #0
c0de36de:	e026      	b.n	c0de372e <nbgl_layoutGet+0x6a>
c0de36e0:	4814      	ldr	r0, [pc, #80]	@ (c0de3734 <nbgl_layoutGet+0x70>)
c0de36e2:	eb09 0400 	add.w	r4, r9, r0
c0de36e6:	2000      	movs	r0, #0
c0de36e8:	70a0      	strb	r0, [r4, #2]
c0de36ea:	e004      	b.n	c0de36f6 <nbgl_layoutGet+0x32>
c0de36ec:	f101 040c 	add.w	r4, r1, #12
c0de36f0:	e001      	b.n	c0de36f6 <nbgl_layoutGet+0x32>
c0de36f2:	f100 0418 	add.w	r4, r0, #24
c0de36f6:	2000      	movs	r0, #0
c0de36f8:	4626      	mov	r6, r4
c0de36fa:	60a0      	str	r0, [r4, #8]
c0de36fc:	6020      	str	r0, [r4, #0]
c0de36fe:	f846 0f04 	str.w	r0, [r6, #4]!
c0de3702:	6868      	ldr	r0, [r5, #4]
c0de3704:	f003 fcdc 	bl	c0de70c0 <pic>
c0de3708:	60a0      	str	r0, [r4, #8]
c0de370a:	7828      	ldrb	r0, [r5, #0]
c0de370c:	f105 0208 	add.w	r2, r5, #8
c0de3710:	7020      	strb	r0, [r4, #0]
c0de3712:	4b09      	ldr	r3, [pc, #36]	@ (c0de3738 <nbgl_layoutGet+0x74>)
c0de3714:	447b      	add	r3, pc
c0de3716:	b120      	cbz	r0, c0de3722 <nbgl_layoutGet+0x5e>
c0de3718:	4630      	mov	r0, r6
c0de371a:	2107      	movs	r1, #7
c0de371c:	f003 fad9 	bl	c0de6cd2 <nbgl_screenPush>
c0de3720:	e004      	b.n	c0de372c <nbgl_layoutGet+0x68>
c0de3722:	4630      	mov	r0, r6
c0de3724:	2107      	movs	r1, #7
c0de3726:	f003 facf 	bl	c0de6cc8 <nbgl_screenSet>
c0de372a:	2000      	movs	r0, #0
c0de372c:	7060      	strb	r0, [r4, #1]
c0de372e:	4620      	mov	r0, r4
c0de3730:	bd70      	pop	{r4, r5, r6, pc}
c0de3732:	bf00      	nop
c0de3734:	00000634 	.word	0x00000634
c0de3738:	00000025 	.word	0x00000025

c0de373c <buttonCallback>:
c0de373c:	b5b0      	push	{r4, r5, r7, lr}
c0de373e:	f890 203e 	ldrb.w	r2, [r0, #62]	@ 0x3e
c0de3742:	4811      	ldr	r0, [pc, #68]	@ (c0de3788 <buttonCallback+0x4c>)
c0de3744:	2302      	movs	r3, #2
c0de3746:	1c5c      	adds	r4, r3, #1
c0de3748:	d01d      	beq.n	c0de3786 <buttonCallback+0x4a>
c0de374a:	b2dc      	uxtb	r4, r3
c0de374c:	eb09 0500 	add.w	r5, r9, r0
c0de3750:	eb04 0444 	add.w	r4, r4, r4, lsl #1
c0de3754:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3758:	786d      	ldrb	r5, [r5, #1]
c0de375a:	42aa      	cmp	r2, r5
c0de375c:	d105      	bne.n	c0de376a <buttonCallback+0x2e>
c0de375e:	eb09 0500 	add.w	r5, r9, r0
c0de3762:	eb05 0584 	add.w	r5, r5, r4, lsl #2
c0de3766:	78ad      	ldrb	r5, [r5, #2]
c0de3768:	b90d      	cbnz	r5, c0de376e <buttonCallback+0x32>
c0de376a:	3b01      	subs	r3, #1
c0de376c:	e7eb      	b.n	c0de3746 <buttonCallback+0xa>
c0de376e:	eb09 0200 	add.w	r2, r9, r0
c0de3772:	eb02 0284 	add.w	r2, r2, r4, lsl #2
c0de3776:	6892      	ldr	r2, [r2, #8]
c0de3778:	b12a      	cbz	r2, c0de3786 <buttonCallback+0x4a>
c0de377a:	4448      	add	r0, r9
c0de377c:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de3780:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de3784:	4710      	bx	r2
c0de3786:	bdb0      	pop	{r4, r5, r7, pc}
c0de3788:	00000634 	.word	0x00000634

c0de378c <nbgl_layoutAddNavigation>:
c0de378c:	b570      	push	{r4, r5, r6, lr}
c0de378e:	2800      	cmp	r0, #0
c0de3790:	d04d      	beq.n	c0de382e <nbgl_layoutAddNavigation+0xa2>
c0de3792:	460d      	mov	r5, r1
c0de3794:	7849      	ldrb	r1, [r1, #1]
c0de3796:	4604      	mov	r4, r0
c0de3798:	07c8      	lsls	r0, r1, #31
c0de379a:	d022      	beq.n	c0de37e2 <nbgl_layoutAddNavigation+0x56>
c0de379c:	7861      	ldrb	r1, [r4, #1]
c0de379e:	2002      	movs	r0, #2
c0de37a0:	f003 faab 	bl	c0de6cfa <nbgl_objPoolGet>
c0de37a4:	782a      	ldrb	r2, [r5, #0]
c0de37a6:	7869      	ldrb	r1, [r5, #1]
c0de37a8:	4b23      	ldr	r3, [pc, #140]	@ (c0de3838 <nbgl_layoutAddNavigation+0xac>)
c0de37aa:	4e24      	ldr	r6, [pc, #144]	@ (c0de383c <nbgl_layoutAddNavigation+0xb0>)
c0de37ac:	2a00      	cmp	r2, #0
c0de37ae:	447b      	add	r3, pc
c0de37b0:	447e      	add	r6, pc
c0de37b2:	4602      	mov	r2, r0
c0de37b4:	bf08      	it	eq
c0de37b6:	461e      	moveq	r6, r3
c0de37b8:	f802 6f21 	strb.w	r6, [r2, #33]!
c0de37bc:	0e33      	lsrs	r3, r6, #24
c0de37be:	70d3      	strb	r3, [r2, #3]
c0de37c0:	0c33      	lsrs	r3, r6, #16
c0de37c2:	7093      	strb	r3, [r2, #2]
c0de37c4:	0a32      	lsrs	r2, r6, #8
c0de37c6:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
c0de37ca:	6862      	ldr	r2, [r4, #4]
c0de37cc:	78a3      	ldrb	r3, [r4, #2]
c0de37ce:	f842 0023 	str.w	r0, [r2, r3, lsl #2]
c0de37d2:	2203      	movs	r2, #3
c0de37d4:	77c2      	strb	r2, [r0, #31]
c0de37d6:	2204      	movs	r2, #4
c0de37d8:	7582      	strb	r2, [r0, #22]
c0de37da:	2200      	movs	r2, #0
c0de37dc:	7242      	strb	r2, [r0, #9]
c0de37de:	1c58      	adds	r0, r3, #1
c0de37e0:	70a0      	strb	r0, [r4, #2]
c0de37e2:	0788      	lsls	r0, r1, #30
c0de37e4:	f04f 0600 	mov.w	r6, #0
c0de37e8:	d523      	bpl.n	c0de3832 <nbgl_layoutAddNavigation+0xa6>
c0de37ea:	7861      	ldrb	r1, [r4, #1]
c0de37ec:	2002      	movs	r0, #2
c0de37ee:	f003 fa84 	bl	c0de6cfa <nbgl_objPoolGet>
c0de37f2:	7829      	ldrb	r1, [r5, #0]
c0de37f4:	4a12      	ldr	r2, [pc, #72]	@ (c0de3840 <nbgl_layoutAddNavigation+0xb4>)
c0de37f6:	4b13      	ldr	r3, [pc, #76]	@ (c0de3844 <nbgl_layoutAddNavigation+0xb8>)
c0de37f8:	2900      	cmp	r1, #0
c0de37fa:	447a      	add	r2, pc
c0de37fc:	447b      	add	r3, pc
c0de37fe:	4601      	mov	r1, r0
c0de3800:	bf08      	it	eq
c0de3802:	4613      	moveq	r3, r2
c0de3804:	f801 3f21 	strb.w	r3, [r1, #33]!
c0de3808:	0e1a      	lsrs	r2, r3, #24
c0de380a:	7246      	strb	r6, [r0, #9]
c0de380c:	70ca      	strb	r2, [r1, #3]
c0de380e:	0c1a      	lsrs	r2, r3, #16
c0de3810:	708a      	strb	r2, [r1, #2]
c0de3812:	0a19      	lsrs	r1, r3, #8
c0de3814:	f880 1022 	strb.w	r1, [r0, #34]	@ 0x22
c0de3818:	6861      	ldr	r1, [r4, #4]
c0de381a:	78a2      	ldrb	r2, [r4, #2]
c0de381c:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
c0de3820:	2103      	movs	r1, #3
c0de3822:	77c1      	strb	r1, [r0, #31]
c0de3824:	2106      	movs	r1, #6
c0de3826:	7581      	strb	r1, [r0, #22]
c0de3828:	1c50      	adds	r0, r2, #1
c0de382a:	70a0      	strb	r0, [r4, #2]
c0de382c:	e001      	b.n	c0de3832 <nbgl_layoutAddNavigation+0xa6>
c0de382e:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de3832:	4630      	mov	r0, r6
c0de3834:	bd70      	pop	{r4, r5, r6, pc}
c0de3836:	bf00      	nop
c0de3838:	00004148 	.word	0x00004148
c0de383c:	00004185 	.word	0x00004185
c0de3840:	0000412d 	.word	0x0000412d
c0de3844:	000040ec 	.word	0x000040ec

c0de3848 <nbgl_layoutAddText>:
c0de3848:	2800      	cmp	r0, #0
c0de384a:	f000 8140 	beq.w	c0de3ace <nbgl_layoutAddText+0x286>
c0de384e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3852:	b088      	sub	sp, #32
c0de3854:	460e      	mov	r6, r1
c0de3856:	7841      	ldrb	r1, [r0, #1]
c0de3858:	4605      	mov	r5, r0
c0de385a:	2001      	movs	r0, #1
c0de385c:	4617      	mov	r7, r2
c0de385e:	461c      	mov	r4, r3
c0de3860:	f003 fa4b 	bl	c0de6cfa <nbgl_objPoolGet>
c0de3864:	4680      	mov	r8, r0
c0de3866:	2003      	movs	r0, #3
c0de3868:	2f00      	cmp	r7, #0
c0de386a:	bf08      	it	eq
c0de386c:	2001      	moveq	r0, #1
c0de386e:	7869      	ldrb	r1, [r5, #1]
c0de3870:	f888 0020 	strb.w	r0, [r8, #32]
c0de3874:	f003 fa46 	bl	c0de6d04 <nbgl_containerPoolGet>
c0de3878:	4641      	mov	r1, r8
c0de387a:	0e02      	lsrs	r2, r0, #24
c0de387c:	f04f 0a72 	mov.w	sl, #114	@ 0x72
c0de3880:	f04f 0b00 	mov.w	fp, #0
c0de3884:	9704      	str	r7, [sp, #16]
c0de3886:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de388a:	f888 a004 	strb.w	sl, [r8, #4]
c0de388e:	f888 b005 	strb.w	fp, [r8, #5]
c0de3892:	70ca      	strb	r2, [r1, #3]
c0de3894:	0c02      	lsrs	r2, r0, #16
c0de3896:	0a00      	lsrs	r0, r0, #8
c0de3898:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de389c:	708a      	strb	r2, [r1, #2]
c0de389e:	2004      	movs	r0, #4
c0de38a0:	7869      	ldrb	r1, [r5, #1]
c0de38a2:	f003 fa2a 	bl	c0de6cfa <nbgl_objPoolGet>
c0de38a6:	4607      	mov	r7, r0
c0de38a8:	2003      	movs	r0, #3
c0de38aa:	77f8      	strb	r0, [r7, #31]
c0de38ac:	4630      	mov	r0, r6
c0de38ae:	f003 fc07 	bl	c0de70c0 <pic>
c0de38b2:	4601      	mov	r1, r0
c0de38b4:	2008      	movs	r0, #8
c0de38b6:	f887 a004 	strb.w	sl, [r7, #4]
c0de38ba:	f887 b005 	strb.w	fp, [r7, #5]
c0de38be:	9403      	str	r4, [sp, #12]
c0de38c0:	f04f 0a01 	mov.w	sl, #1
c0de38c4:	2c00      	cmp	r4, #0
c0de38c6:	bf08      	it	eq
c0de38c8:	200a      	moveq	r0, #10
c0de38ca:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de38ce:	2205      	movs	r2, #5
c0de38d0:	0e0b      	lsrs	r3, r1, #24
c0de38d2:	f887 2020 	strb.w	r2, [r7, #32]
c0de38d6:	463a      	mov	r2, r7
c0de38d8:	f802 1f26 	strb.w	r1, [r2, #38]!
c0de38dc:	70d3      	strb	r3, [r2, #3]
c0de38de:	0c0b      	lsrs	r3, r1, #16
c0de38e0:	7093      	strb	r3, [r2, #2]
c0de38e2:	0a0a      	lsrs	r2, r1, #8
c0de38e4:	2301      	movs	r3, #1
c0de38e6:	f887 2027 	strb.w	r2, [r7, #39]	@ 0x27
c0de38ea:	2272      	movs	r2, #114	@ 0x72
c0de38ec:	f003 fa19 	bl	c0de6d22 <nbgl_getTextNbLinesInWidth>
c0de38f0:	4606      	mov	r6, r0
c0de38f2:	2805      	cmp	r0, #5
c0de38f4:	9505      	str	r5, [sp, #20]
c0de38f6:	d31d      	bcc.n	c0de3934 <nbgl_layoutAddText+0xec>
c0de38f8:	463e      	mov	r6, r7
c0de38fa:	2004      	movs	r0, #4
c0de38fc:	f10d 051e 	add.w	r5, sp, #30
c0de3900:	f816 1f26 	ldrb.w	r1, [r6, #38]!
c0de3904:	7872      	ldrb	r2, [r6, #1]
c0de3906:	78b3      	ldrb	r3, [r6, #2]
c0de3908:	78f4      	ldrb	r4, [r6, #3]
c0de390a:	f806 0c01 	strb.w	r0, [r6, #-1]
c0de390e:	f816 0c04 	ldrb.w	r0, [r6, #-4]
c0de3912:	9500      	str	r5, [sp, #0]
c0de3914:	9d05      	ldr	r5, [sp, #20]
c0de3916:	f8cd a004 	str.w	sl, [sp, #4]
c0de391a:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de391e:	ea43 2204 	orr.w	r2, r3, r4, lsl #8
c0de3922:	2304      	movs	r3, #4
c0de3924:	f000 fc6d 	bl	c0de4202 <OUTLINED_FUNCTION_5>
c0de3928:	f8bd 001e 	ldrh.w	r0, [sp, #30]
c0de392c:	7130      	strb	r0, [r6, #4]
c0de392e:	0a00      	lsrs	r0, r0, #8
c0de3930:	7170      	strb	r0, [r6, #5]
c0de3932:	2604      	movs	r6, #4
c0de3934:	f000 fc72 	bl	c0de421c <OUTLINED_FUNCTION_7>
c0de3938:	4683      	mov	fp, r0
c0de393a:	2002      	movs	r0, #2
c0de393c:	f887 a024 	strb.w	sl, [r7, #36]	@ 0x24
c0de3940:	9c04      	ldr	r4, [sp, #16]
c0de3942:	75b8      	strb	r0, [r7, #22]
c0de3944:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de3948:	2c00      	cmp	r4, #0
c0de394a:	fb06 fa00 	mul.w	sl, r6, r0
c0de394e:	ea4f 201a 	mov.w	r0, sl, lsr #8
c0de3952:	f887 a006 	strb.w	sl, [r7, #6]
c0de3956:	71f8      	strb	r0, [r7, #7]
c0de3958:	4640      	mov	r0, r8
c0de395a:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de395e:	7842      	ldrb	r2, [r0, #1]
c0de3960:	7883      	ldrb	r3, [r0, #2]
c0de3962:	78c0      	ldrb	r0, [r0, #3]
c0de3964:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3968:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de396c:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3970:	6007      	str	r7, [r0, #0]
c0de3972:	f000 8111 	beq.w	c0de3b98 <nbgl_layoutAddText+0x350>
c0de3976:	9803      	ldr	r0, [sp, #12]
c0de3978:	7869      	ldrb	r1, [r5, #1]
c0de397a:	2802      	cmp	r0, #2
c0de397c:	f040 80a9 	bne.w	c0de3ad2 <nbgl_layoutAddText+0x28a>
c0de3980:	2005      	movs	r0, #5
c0de3982:	2505      	movs	r5, #5
c0de3984:	f003 f9b9 	bl	c0de6cfa <nbgl_objPoolGet>
c0de3988:	2600      	movs	r6, #0
c0de398a:	4607      	mov	r7, r0
c0de398c:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de3990:	2001      	movs	r0, #1
c0de3992:	f8ad 601a 	strh.w	r6, [sp, #26]
c0de3996:	f8ad 6018 	strh.w	r6, [sp, #24]
c0de399a:	f000 fc46 	bl	c0de422a <OUTLINED_FUNCTION_9>
c0de399e:	4620      	mov	r0, r4
c0de39a0:	f003 fb8e 	bl	c0de70c0 <pic>
c0de39a4:	4601      	mov	r1, r0
c0de39a6:	200e      	movs	r0, #14
c0de39a8:	71fe      	strb	r6, [r7, #7]
c0de39aa:	75bd      	strb	r5, [r7, #22]
c0de39ac:	71b8      	strb	r0, [r7, #6]
c0de39ae:	2008      	movs	r0, #8
c0de39b0:	0e0a      	lsrs	r2, r1, #24
c0de39b2:	f887 0023 	strb.w	r0, [r7, #35]	@ 0x23
c0de39b6:	4638      	mov	r0, r7
c0de39b8:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de39bc:	f000 fc15 	bl	c0de41ea <OUTLINED_FUNCTION_3>
c0de39c0:	2865      	cmp	r0, #101	@ 0x65
c0de39c2:	f240 80d9 	bls.w	c0de3b78 <nbgl_layoutAddText+0x330>
c0de39c6:	46bb      	mov	fp, r7
c0de39c8:	f897 5026 	ldrb.w	r5, [r7, #38]	@ 0x26
c0de39cc:	f897 0023 	ldrb.w	r0, [r7, #35]	@ 0x23
c0de39d0:	f81b 1f25 	ldrb.w	r1, [fp, #37]!
c0de39d4:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de39d8:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de39dc:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
c0de39e0:	ae06      	add	r6, sp, #24
c0de39e2:	9600      	str	r6, [sp, #0]
c0de39e4:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de39e8:	f10d 031a 	add.w	r3, sp, #26
c0de39ec:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de39f0:	2266      	movs	r2, #102	@ 0x66
c0de39f2:	f7ff fe11 	bl	c0de3618 <getTextMaxLenAndWidth>
c0de39f6:	f8bd 0018 	ldrh.w	r0, [sp, #24]
c0de39fa:	f8bd 601a 	ldrh.w	r6, [sp, #26]
c0de39fe:	9003      	str	r0, [sp, #12]
c0de3a00:	300c      	adds	r0, #12
c0de3a02:	9602      	str	r6, [sp, #8]
c0de3a04:	7138      	strb	r0, [r7, #4]
c0de3a06:	0a00      	lsrs	r0, r0, #8
c0de3a08:	7178      	strb	r0, [r7, #5]
c0de3a0a:	486e      	ldr	r0, [pc, #440]	@ (c0de3bc4 <nbgl_layoutAddText+0x37c>)
c0de3a0c:	2e13      	cmp	r6, #19
c0de3a0e:	bf28      	it	cs
c0de3a10:	2613      	movcs	r6, #19
c0de3a12:	f89b 1000 	ldrb.w	r1, [fp]
c0de3a16:	f89b 2002 	ldrb.w	r2, [fp, #2]
c0de3a1a:	f89b 3003 	ldrb.w	r3, [fp, #3]
c0de3a1e:	eb09 0400 	add.w	r4, r9, r0
c0de3a22:	f897 0026 	ldrb.w	r0, [r7, #38]	@ 0x26
c0de3a26:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de3a2a:	ea42 2103 	orr.w	r1, r2, r3, lsl #8
c0de3a2e:	4632      	mov	r2, r6
c0de3a30:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
c0de3a34:	4620      	mov	r0, r4
c0de3a36:	f003 fe45 	bl	c0de76c4 <__aeabi_memcpy>
c0de3a3a:	2500      	movs	r5, #0
c0de3a3c:	4620      	mov	r0, r4
c0de3a3e:	55a5      	strb	r5, [r4, r6]
c0de3a40:	f003 fb3e 	bl	c0de70c0 <pic>
c0de3a44:	2101      	movs	r1, #1
c0de3a46:	f88b 0000 	strb.w	r0, [fp]
c0de3a4a:	76bd      	strb	r5, [r7, #26]
c0de3a4c:	9d05      	ldr	r5, [sp, #20]
c0de3a4e:	7679      	strb	r1, [r7, #25]
c0de3a50:	0e01      	lsrs	r1, r0, #24
c0de3a52:	f88b 1003 	strb.w	r1, [fp, #3]
c0de3a56:	0c01      	lsrs	r1, r0, #16
c0de3a58:	0a00      	lsrs	r0, r0, #8
c0de3a5a:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de3a5e:	f88b 1002 	strb.w	r1, [fp, #2]
c0de3a62:	4640      	mov	r0, r8
c0de3a64:	f810 1f22 	ldrb.w	r1, [r0, #34]!
c0de3a68:	7842      	ldrb	r2, [r0, #1]
c0de3a6a:	7883      	ldrb	r3, [r0, #2]
c0de3a6c:	78c0      	ldrb	r0, [r0, #3]
c0de3a6e:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3a72:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de3a76:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de3a7a:	6047      	str	r7, [r0, #4]
c0de3a7c:	9803      	ldr	r0, [sp, #12]
c0de3a7e:	2800      	cmp	r0, #0
c0de3a80:	f000 8088 	beq.w	c0de3b94 <nbgl_layoutAddText+0x34c>
c0de3a84:	7869      	ldrb	r1, [r5, #1]
c0de3a86:	2005      	movs	r0, #5
c0de3a88:	2605      	movs	r6, #5
c0de3a8a:	f003 f936 	bl	c0de6cfa <nbgl_objPoolGet>
c0de3a8e:	2500      	movs	r5, #0
c0de3a90:	4607      	mov	r7, r0
c0de3a92:	f880 5021 	strb.w	r5, [r0, #33]	@ 0x21
c0de3a96:	2001      	movs	r0, #1
c0de3a98:	f000 fbc7 	bl	c0de422a <OUTLINED_FUNCTION_9>
c0de3a9c:	9804      	ldr	r0, [sp, #16]
c0de3a9e:	f003 fb0f 	bl	c0de70c0 <pic>
c0de3aa2:	210e      	movs	r1, #14
c0de3aa4:	71fd      	strb	r5, [r7, #7]
c0de3aa6:	71b9      	strb	r1, [r7, #6]
c0de3aa8:	2108      	movs	r1, #8
c0de3aaa:	f887 1023 	strb.w	r1, [r7, #35]	@ 0x23
c0de3aae:	9902      	ldr	r1, [sp, #8]
c0de3ab0:	4401      	add	r1, r0
c0de3ab2:	4638      	mov	r0, r7
c0de3ab4:	f800 1f25 	strb.w	r1, [r0, #37]!
c0de3ab8:	0e0a      	lsrs	r2, r1, #24
c0de3aba:	f000 fb96 	bl	c0de41ea <OUTLINED_FUNCTION_3>
c0de3abe:	300c      	adds	r0, #12
c0de3ac0:	210f      	movs	r1, #15
c0de3ac2:	75be      	strb	r6, [r7, #22]
c0de3ac4:	7138      	strb	r0, [r7, #4]
c0de3ac6:	0a00      	lsrs	r0, r0, #8
c0de3ac8:	7178      	strb	r0, [r7, #5]
c0de3aca:	2002      	movs	r0, #2
c0de3acc:	e05a      	b.n	c0de3b84 <nbgl_layoutAddText+0x33c>
c0de3ace:	f000 bba9 	b.w	c0de4224 <OUTLINED_FUNCTION_8>
c0de3ad2:	f000 fb93 	bl	c0de41fc <OUTLINED_FUNCTION_4>
c0de3ad6:	2603      	movs	r6, #3
c0de3ad8:	4607      	mov	r7, r0
c0de3ada:	77c6      	strb	r6, [r0, #31]
c0de3adc:	4620      	mov	r0, r4
c0de3ade:	f003 faef 	bl	c0de70c0 <pic>
c0de3ae2:	4601      	mov	r1, r0
c0de3ae4:	2072      	movs	r0, #114	@ 0x72
c0de3ae6:	2400      	movs	r4, #0
c0de3ae8:	2301      	movs	r3, #1
c0de3aea:	7138      	strb	r0, [r7, #4]
c0de3aec:	2001      	movs	r0, #1
c0de3aee:	0e0a      	lsrs	r2, r1, #24
c0de3af0:	717c      	strb	r4, [r7, #5]
c0de3af2:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3af6:	200a      	movs	r0, #10
c0de3af8:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3afc:	f000 fb5b 	bl	c0de41b6 <OUTLINED_FUNCTION_1>
c0de3b00:	2804      	cmp	r0, #4
c0de3b02:	d31e      	bcc.n	c0de3b42 <nbgl_layoutAddText+0x2fa>
c0de3b04:	463d      	mov	r5, r7
c0de3b06:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3b0a:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de3b0e:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3b12:	f895 e001 	ldrb.w	lr, [r5, #1]
c0de3b16:	78ab      	ldrb	r3, [r5, #2]
c0de3b18:	78e9      	ldrb	r1, [r5, #3]
c0de3b1a:	aa07      	add	r2, sp, #28
c0de3b1c:	9200      	str	r2, [sp, #0]
c0de3b1e:	2201      	movs	r2, #1
c0de3b20:	9201      	str	r2, [sp, #4]
c0de3b22:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de3b26:	ea4c 220e 	orr.w	r2, ip, lr, lsl #8
c0de3b2a:	2303      	movs	r3, #3
c0de3b2c:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de3b30:	2272      	movs	r2, #114	@ 0x72
c0de3b32:	f003 f905 	bl	c0de6d40 <nbgl_getTextMaxLenInNbLines>
c0de3b36:	f8bd 001c 	ldrh.w	r0, [sp, #28]
c0de3b3a:	7128      	strb	r0, [r5, #4]
c0de3b3c:	0a00      	lsrs	r0, r0, #8
c0de3b3e:	7168      	strb	r0, [r5, #5]
c0de3b40:	2003      	movs	r0, #3
c0de3b42:	9903      	ldr	r1, [sp, #12]
c0de3b44:	2900      	cmp	r1, #0
c0de3b46:	bf08      	it	eq
c0de3b48:	4606      	moveq	r6, r0
c0de3b4a:	f89b 0007 	ldrb.w	r0, [fp, #7]
c0de3b4e:	76bc      	strb	r4, [r7, #26]
c0de3b50:	75bc      	strb	r4, [r7, #22]
c0de3b52:	fb06 f100 	mul.w	r1, r6, r0
c0de3b56:	fb06 a000 	mla	r0, r6, r0, sl
c0de3b5a:	71b9      	strb	r1, [r7, #6]
c0de3b5c:	0a09      	lsrs	r1, r1, #8
c0de3b5e:	71f9      	strb	r1, [r7, #7]
c0de3b60:	2102      	movs	r1, #2
c0de3b62:	f100 0a02 	add.w	sl, r0, #2
c0de3b66:	7679      	strb	r1, [r7, #25]
c0de3b68:	2105      	movs	r1, #5
c0de3b6a:	f887 1020 	strb.w	r1, [r7, #32]
c0de3b6e:	4641      	mov	r1, r8
c0de3b70:	f000 fb2e 	bl	c0de41d0 <OUTLINED_FUNCTION_2>
c0de3b74:	604f      	str	r7, [r1, #4]
c0de3b76:	e00f      	b.n	c0de3b98 <nbgl_layoutAddText+0x350>
c0de3b78:	300c      	adds	r0, #12
c0de3b7a:	2108      	movs	r1, #8
c0de3b7c:	7138      	strb	r0, [r7, #4]
c0de3b7e:	0a00      	lsrs	r0, r0, #8
c0de3b80:	7178      	strb	r0, [r7, #5]
c0de3b82:	2001      	movs	r0, #1
c0de3b84:	2200      	movs	r2, #0
c0de3b86:	7679      	strb	r1, [r7, #25]
c0de3b88:	4641      	mov	r1, r8
c0de3b8a:	76ba      	strb	r2, [r7, #26]
c0de3b8c:	f000 fb20 	bl	c0de41d0 <OUTLINED_FUNCTION_2>
c0de3b90:	f841 7020 	str.w	r7, [r1, r0, lsl #2]
c0de3b94:	f10a 0a2c 	add.w	sl, sl, #44	@ 0x2c
c0de3b98:	6868      	ldr	r0, [r5, #4]
c0de3b9a:	78a9      	ldrb	r1, [r5, #2]
c0de3b9c:	2205      	movs	r2, #5
c0de3b9e:	f888 2016 	strb.w	r2, [r8, #22]
c0de3ba2:	ea4f 221a 	mov.w	r2, sl, lsr #8
c0de3ba6:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de3baa:	2000      	movs	r0, #0
c0de3bac:	3101      	adds	r1, #1
c0de3bae:	f888 a006 	strb.w	sl, [r8, #6]
c0de3bb2:	f888 2007 	strb.w	r2, [r8, #7]
c0de3bb6:	f888 001f 	strb.w	r0, [r8, #31]
c0de3bba:	70a9      	strb	r1, [r5, #2]
c0de3bbc:	b008      	add	sp, #32
c0de3bbe:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3bc2:	bf00      	nop
c0de3bc4:	00000658 	.word	0x00000658

c0de3bc8 <nbgl_layoutAddMenuList>:
c0de3bc8:	2800      	cmp	r0, #0
c0de3bca:	d04f      	beq.n	c0de3c6c <nbgl_layoutAddMenuList+0xa4>
c0de3bcc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3bd0:	460c      	mov	r4, r1
c0de3bd2:	4605      	mov	r5, r0
c0de3bd4:	2700      	movs	r7, #0
c0de3bd6:	f04f 0b05 	mov.w	fp, #5
c0de3bda:	f04f 0803 	mov.w	r8, #3
c0de3bde:	f04f 0a00 	mov.w	sl, #0
c0de3be2:	7920      	ldrb	r0, [r4, #4]
c0de3be4:	4582      	cmp	sl, r0
c0de3be6:	d23e      	bcs.n	c0de3c66 <nbgl_layoutAddMenuList+0x9e>
c0de3be8:	7960      	ldrb	r0, [r4, #5]
c0de3bea:	2803      	cmp	r0, #3
c0de3bec:	d302      	bcc.n	c0de3bf4 <nbgl_layoutAddMenuList+0x2c>
c0de3bee:	1e81      	subs	r1, r0, #2
c0de3bf0:	4551      	cmp	r1, sl
c0de3bf2:	dc35      	bgt.n	c0de3c60 <nbgl_layoutAddMenuList+0x98>
c0de3bf4:	3002      	adds	r0, #2
c0de3bf6:	4550      	cmp	r0, sl
c0de3bf8:	d332      	bcc.n	c0de3c60 <nbgl_layoutAddMenuList+0x98>
c0de3bfa:	7869      	ldrb	r1, [r5, #1]
c0de3bfc:	f000 fafe 	bl	c0de41fc <OUTLINED_FUNCTION_4>
c0de3c00:	6821      	ldr	r1, [r4, #0]
c0de3c02:	4606      	mov	r6, r0
c0de3c04:	fa5f f08a 	uxtb.w	r0, sl
c0de3c08:	4788      	blx	r1
c0de3c0a:	7961      	ldrb	r1, [r4, #5]
c0de3c0c:	220a      	movs	r2, #10
c0de3c0e:	458a      	cmp	sl, r1
c0de3c10:	bf08      	it	eq
c0de3c12:	2208      	moveq	r2, #8
c0de3c14:	f886 2022 	strb.w	r2, [r6, #34]	@ 0x22
c0de3c18:	71f7      	strb	r7, [r6, #7]
c0de3c1a:	7177      	strb	r7, [r6, #5]
c0de3c1c:	f886 b020 	strb.w	fp, [r6, #32]
c0de3c20:	f886 7021 	strb.w	r7, [r6, #33]	@ 0x21
c0de3c24:	f886 b016 	strb.w	fp, [r6, #22]
c0de3c28:	f886 801f 	strb.w	r8, [r6, #31]
c0de3c2c:	4632      	mov	r2, r6
c0de3c2e:	0e03      	lsrs	r3, r0, #24
c0de3c30:	f802 0f26 	strb.w	r0, [r2, #38]!
c0de3c34:	70d3      	strb	r3, [r2, #3]
c0de3c36:	0c03      	lsrs	r3, r0, #16
c0de3c38:	0a00      	lsrs	r0, r0, #8
c0de3c3a:	7093      	strb	r3, [r2, #2]
c0de3c3c:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de3c40:	6868      	ldr	r0, [r5, #4]
c0de3c42:	78aa      	ldrb	r2, [r5, #2]
c0de3c44:	f840 6022 	str.w	r6, [r0, r2, lsl #2]
c0de3c48:	200c      	movs	r0, #12
c0de3c4a:	71b0      	strb	r0, [r6, #6]
c0de3c4c:	2072      	movs	r0, #114	@ 0x72
c0de3c4e:	7130      	strb	r0, [r6, #4]
c0de3c50:	ebaa 0001 	sub.w	r0, sl, r1
c0de3c54:	0901      	lsrs	r1, r0, #4
c0de3c56:	0100      	lsls	r0, r0, #4
c0de3c58:	7670      	strb	r0, [r6, #25]
c0de3c5a:	1c50      	adds	r0, r2, #1
c0de3c5c:	76b1      	strb	r1, [r6, #26]
c0de3c5e:	70a8      	strb	r0, [r5, #2]
c0de3c60:	f10a 0a01 	add.w	sl, sl, #1
c0de3c64:	e7bd      	b.n	c0de3be2 <nbgl_layoutAddMenuList+0x1a>
c0de3c66:	2000      	movs	r0, #0
c0de3c68:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3c6c:	f000 bada 	b.w	c0de4224 <OUTLINED_FUNCTION_8>

c0de3c70 <nbgl_layoutAddCenteredInfo>:
c0de3c70:	2800      	cmp	r0, #0
c0de3c72:	f000 80d9 	beq.w	c0de3e28 <nbgl_layoutAddCenteredInfo+0x1b8>
c0de3c76:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3c7a:	b086      	sub	sp, #24
c0de3c7c:	460c      	mov	r4, r1
c0de3c7e:	7841      	ldrb	r1, [r0, #1]
c0de3c80:	4682      	mov	sl, r0
c0de3c82:	2001      	movs	r0, #1
c0de3c84:	f003 f839 	bl	c0de6cfa <nbgl_objPoolGet>
c0de3c88:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3c8c:	4680      	mov	r8, r0
c0de3c8e:	2003      	movs	r0, #3
c0de3c90:	2703      	movs	r7, #3
c0de3c92:	f003 f837 	bl	c0de6d04 <nbgl_containerPoolGet>
c0de3c96:	4641      	mov	r1, r8
c0de3c98:	0e02      	lsrs	r2, r0, #24
c0de3c9a:	f04f 0b00 	mov.w	fp, #0
c0de3c9e:	9404      	str	r4, [sp, #16]
c0de3ca0:	f801 0f22 	strb.w	r0, [r1, #34]!
c0de3ca4:	f888 b020 	strb.w	fp, [r8, #32]
c0de3ca8:	70ca      	strb	r2, [r1, #3]
c0de3caa:	0c02      	lsrs	r2, r0, #16
c0de3cac:	0a00      	lsrs	r0, r0, #8
c0de3cae:	708a      	strb	r2, [r1, #2]
c0de3cb0:	f888 0023 	strb.w	r0, [r8, #35]	@ 0x23
c0de3cb4:	68a0      	ldr	r0, [r4, #8]
c0de3cb6:	b3c0      	cbz	r0, c0de3d2a <nbgl_layoutAddCenteredInfo+0xba>
c0de3cb8:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3cbc:	2002      	movs	r0, #2
c0de3cbe:	f003 f81c 	bl	c0de6cfa <nbgl_objPoolGet>
c0de3cc2:	4606      	mov	r6, r0
c0de3cc4:	77c7      	strb	r7, [r0, #31]
c0de3cc6:	68a0      	ldr	r0, [r4, #8]
c0de3cc8:	f003 f9fa 	bl	c0de70c0 <pic>
c0de3ccc:	4631      	mov	r1, r6
c0de3cce:	0e02      	lsrs	r2, r0, #24
c0de3cd0:	f886 b013 	strb.w	fp, [r6, #19]
c0de3cd4:	f886 b009 	strb.w	fp, [r6, #9]
c0de3cd8:	f801 0f21 	strb.w	r0, [r1, #33]!
c0de3cdc:	70ca      	strb	r2, [r1, #3]
c0de3cde:	0c02      	lsrs	r2, r0, #16
c0de3ce0:	708a      	strb	r2, [r1, #2]
c0de3ce2:	0a01      	lsrs	r1, r0, #8
c0de3ce4:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de3ce8:	4631      	mov	r1, r6
c0de3cea:	f801 bf12 	strb.w	fp, [r1, #18]!
c0de3cee:	f881 b003 	strb.w	fp, [r1, #3]
c0de3cf2:	f881 b002 	strb.w	fp, [r1, #2]
c0de3cf6:	4641      	mov	r1, r8
c0de3cf8:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3cfc:	784f      	ldrb	r7, [r1, #1]
c0de3cfe:	788c      	ldrb	r4, [r1, #2]
c0de3d00:	78cd      	ldrb	r5, [r1, #3]
c0de3d02:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3d06:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
c0de3d0a:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
c0de3d0e:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de3d12:	9c04      	ldr	r4, [sp, #16]
c0de3d14:	f842 6023 	str.w	r6, [r2, r3, lsl #2]
c0de3d18:	2202      	movs	r2, #2
c0de3d1a:	75b2      	strb	r2, [r6, #22]
c0de3d1c:	1c5a      	adds	r2, r3, #1
c0de3d1e:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3d22:	7881      	ldrb	r1, [r0, #2]
c0de3d24:	78c0      	ldrb	r0, [r0, #3]
c0de3d26:	ea41 2b00 	orr.w	fp, r1, r0, lsl #8
c0de3d2a:	6820      	ldr	r0, [r4, #0]
c0de3d2c:	2800      	cmp	r0, #0
c0de3d2e:	f000 80a2 	beq.w	c0de3e76 <nbgl_layoutAddCenteredInfo+0x206>
c0de3d32:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3d36:	f000 fa61 	bl	c0de41fc <OUTLINED_FUNCTION_4>
c0de3d3a:	4607      	mov	r7, r0
c0de3d3c:	2003      	movs	r0, #3
c0de3d3e:	77f8      	strb	r0, [r7, #31]
c0de3d40:	6820      	ldr	r0, [r4, #0]
c0de3d42:	f003 f9bd 	bl	c0de70c0 <pic>
c0de3d46:	4601      	mov	r1, r0
c0de3d48:	2072      	movs	r0, #114	@ 0x72
c0de3d4a:	2500      	movs	r5, #0
c0de3d4c:	7138      	strb	r0, [r7, #4]
c0de3d4e:	2005      	movs	r0, #5
c0de3d50:	0e0a      	lsrs	r2, r1, #24
c0de3d52:	717d      	strb	r5, [r7, #5]
c0de3d54:	f887 0020 	strb.w	r0, [r7, #32]
c0de3d58:	2001      	movs	r0, #1
c0de3d5a:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3d5e:	4638      	mov	r0, r7
c0de3d60:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de3d64:	70c2      	strb	r2, [r0, #3]
c0de3d66:	0c0a      	lsrs	r2, r1, #16
c0de3d68:	7082      	strb	r2, [r0, #2]
c0de3d6a:	0a08      	lsrs	r0, r1, #8
c0de3d6c:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de3d70:	2008      	movs	r0, #8
c0de3d72:	7b62      	ldrb	r2, [r4, #13]
c0de3d74:	2a00      	cmp	r2, #0
c0de3d76:	bf08      	it	eq
c0de3d78:	200a      	moveq	r0, #10
c0de3d7a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3d7e:	2272      	movs	r2, #114	@ 0x72
c0de3d80:	2301      	movs	r3, #1
c0de3d82:	f002 ffce 	bl	c0de6d22 <nbgl_getTextNbLinesInWidth>
c0de3d86:	4606      	mov	r6, r0
c0de3d88:	2805      	cmp	r0, #5
c0de3d8a:	d31e      	bcc.n	c0de3dca <nbgl_layoutAddCenteredInfo+0x15a>
c0de3d8c:	463d      	mov	r5, r7
c0de3d8e:	2004      	movs	r0, #4
c0de3d90:	2101      	movs	r1, #1
c0de3d92:	f10d 0416 	add.w	r4, sp, #22
c0de3d96:	f815 cf26 	ldrb.w	ip, [r5, #38]!
c0de3d9a:	786a      	ldrb	r2, [r5, #1]
c0de3d9c:	78ab      	ldrb	r3, [r5, #2]
c0de3d9e:	78ee      	ldrb	r6, [r5, #3]
c0de3da0:	f805 0c01 	strb.w	r0, [r5, #-1]
c0de3da4:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3da8:	9101      	str	r1, [sp, #4]
c0de3daa:	9400      	str	r4, [sp, #0]
c0de3dac:	9c04      	ldr	r4, [sp, #16]
c0de3dae:	ea4c 2102 	orr.w	r1, ip, r2, lsl #8
c0de3db2:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de3db6:	2304      	movs	r3, #4
c0de3db8:	f000 fa23 	bl	c0de4202 <OUTLINED_FUNCTION_5>
c0de3dbc:	f8bd 0016 	ldrh.w	r0, [sp, #22]
c0de3dc0:	2604      	movs	r6, #4
c0de3dc2:	7128      	strb	r0, [r5, #4]
c0de3dc4:	0a00      	lsrs	r0, r0, #8
c0de3dc6:	7168      	strb	r0, [r5, #5]
c0de3dc8:	2500      	movs	r5, #0
c0de3dca:	f000 fa27 	bl	c0de421c <OUTLINED_FUNCTION_7>
c0de3dce:	79c0      	ldrb	r0, [r0, #7]
c0de3dd0:	f887 5021 	strb.w	r5, [r7, #33]	@ 0x21
c0de3dd4:	4370      	muls	r0, r6
c0de3dd6:	0a01      	lsrs	r1, r0, #8
c0de3dd8:	71b8      	strb	r0, [r7, #6]
c0de3dda:	71f9      	strb	r1, [r7, #7]
c0de3ddc:	68a1      	ldr	r1, [r4, #8]
c0de3dde:	b329      	cbz	r1, c0de3e2c <nbgl_layoutAddCenteredInfo+0x1bc>
c0de3de0:	4641      	mov	r1, r8
c0de3de2:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3de6:	784c      	ldrb	r4, [r1, #1]
c0de3de8:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3dec:	788d      	ldrb	r5, [r1, #2]
c0de3dee:	78c9      	ldrb	r1, [r1, #3]
c0de3df0:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de3df4:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de3df8:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de3dfc:	463a      	mov	r2, r7
c0de3dfe:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de3e02:	f851 1c04 	ldr.w	r1, [r1, #-4]
c0de3e06:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de3e0a:	0e0b      	lsrs	r3, r1, #24
c0de3e0c:	70d3      	strb	r3, [r2, #3]
c0de3e0e:	0c0b      	lsrs	r3, r1, #16
c0de3e10:	0a09      	lsrs	r1, r1, #8
c0de3e12:	7051      	strb	r1, [r2, #1]
c0de3e14:	2100      	movs	r1, #0
c0de3e16:	7093      	strb	r3, [r2, #2]
c0de3e18:	7211      	strb	r1, [r2, #8]
c0de3e1a:	2e03      	cmp	r6, #3
c0de3e1c:	bf38      	it	cc
c0de3e1e:	2101      	movcc	r1, #1
c0de3e20:	0089      	lsls	r1, r1, #2
c0de3e22:	71d1      	strb	r1, [r2, #7]
c0de3e24:	2108      	movs	r1, #8
c0de3e26:	e00a      	b.n	c0de3e3e <nbgl_layoutAddCenteredInfo+0x1ce>
c0de3e28:	f000 b9fc 	b.w	c0de4224 <OUTLINED_FUNCTION_8>
c0de3e2c:	6861      	ldr	r1, [r4, #4]
c0de3e2e:	b119      	cbz	r1, c0de3e38 <nbgl_layoutAddCenteredInfo+0x1c8>
c0de3e30:	f000 f9ec 	bl	c0de420c <OUTLINED_FUNCTION_6>
c0de3e34:	2102      	movs	r1, #2
c0de3e36:	e002      	b.n	c0de3e3e <nbgl_layoutAddCenteredInfo+0x1ce>
c0de3e38:	f000 f9e8 	bl	c0de420c <OUTLINED_FUNCTION_6>
c0de3e3c:	2105      	movs	r1, #5
c0de3e3e:	7111      	strb	r1, [r2, #4]
c0de3e40:	4641      	mov	r1, r8
c0de3e42:	4458      	add	r0, fp
c0de3e44:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de3e48:	784c      	ldrb	r4, [r1, #1]
c0de3e4a:	788d      	ldrb	r5, [r1, #2]
c0de3e4c:	78ce      	ldrb	r6, [r1, #3]
c0de3e4e:	f811 3c02 	ldrb.w	r3, [r1, #-2]
c0de3e52:	ea42 2204 	orr.w	r2, r2, r4, lsl #8
c0de3e56:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de3e5a:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
c0de3e5e:	9c04      	ldr	r4, [sp, #16]
c0de3e60:	f842 7023 	str.w	r7, [r2, r3, lsl #2]
c0de3e64:	1c5a      	adds	r2, r3, #1
c0de3e66:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3e6a:	7e79      	ldrb	r1, [r7, #25]
c0de3e6c:	7eba      	ldrb	r2, [r7, #26]
c0de3e6e:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3e72:	eb00 0b01 	add.w	fp, r0, r1
c0de3e76:	6860      	ldr	r0, [r4, #4]
c0de3e78:	2800      	cmp	r0, #0
c0de3e7a:	d074      	beq.n	c0de3f66 <nbgl_layoutAddCenteredInfo+0x2f6>
c0de3e7c:	f89a 1001 	ldrb.w	r1, [sl, #1]
c0de3e80:	2004      	movs	r0, #4
c0de3e82:	f8cd a00c 	str.w	sl, [sp, #12]
c0de3e86:	f002 ff38 	bl	c0de6cfa <nbgl_objPoolGet>
c0de3e8a:	2603      	movs	r6, #3
c0de3e8c:	4607      	mov	r7, r0
c0de3e8e:	77c6      	strb	r6, [r0, #31]
c0de3e90:	6860      	ldr	r0, [r4, #4]
c0de3e92:	f003 f915 	bl	c0de70c0 <pic>
c0de3e96:	4601      	mov	r1, r0
c0de3e98:	2000      	movs	r0, #0
c0de3e9a:	2301      	movs	r3, #1
c0de3e9c:	7178      	strb	r0, [r7, #5]
c0de3e9e:	2072      	movs	r0, #114	@ 0x72
c0de3ea0:	0e0a      	lsrs	r2, r1, #24
c0de3ea2:	7138      	strb	r0, [r7, #4]
c0de3ea4:	200a      	movs	r0, #10
c0de3ea6:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de3eaa:	2005      	movs	r0, #5
c0de3eac:	f887 0020 	strb.w	r0, [r7, #32]
c0de3eb0:	2001      	movs	r0, #1
c0de3eb2:	f887 0024 	strb.w	r0, [r7, #36]	@ 0x24
c0de3eb6:	f000 f97e 	bl	c0de41b6 <OUTLINED_FUNCTION_1>
c0de3eba:	4682      	mov	sl, r0
c0de3ebc:	2804      	cmp	r0, #4
c0de3ebe:	d31c      	bcc.n	c0de3efa <nbgl_layoutAddCenteredInfo+0x28a>
c0de3ec0:	463d      	mov	r5, r7
c0de3ec2:	f04f 0c01 	mov.w	ip, #1
c0de3ec6:	f815 1f26 	ldrb.w	r1, [r5, #38]!
c0de3eca:	f805 6c01 	strb.w	r6, [r5, #-1]
c0de3ece:	786a      	ldrb	r2, [r5, #1]
c0de3ed0:	78ab      	ldrb	r3, [r5, #2]
c0de3ed2:	78ee      	ldrb	r6, [r5, #3]
c0de3ed4:	f815 0c04 	ldrb.w	r0, [r5, #-4]
c0de3ed8:	ac05      	add	r4, sp, #20
c0de3eda:	e9cd 4c00 	strd	r4, ip, [sp]
c0de3ede:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3ee2:	ea43 2206 	orr.w	r2, r3, r6, lsl #8
c0de3ee6:	2303      	movs	r3, #3
c0de3ee8:	f000 f98b 	bl	c0de4202 <OUTLINED_FUNCTION_5>
c0de3eec:	f8bd 0014 	ldrh.w	r0, [sp, #20]
c0de3ef0:	f04f 0a03 	mov.w	sl, #3
c0de3ef4:	7128      	strb	r0, [r5, #4]
c0de3ef6:	0a00      	lsrs	r0, r0, #8
c0de3ef8:	7168      	strb	r0, [r5, #5]
c0de3efa:	f000 f98f 	bl	c0de421c <OUTLINED_FUNCTION_7>
c0de3efe:	4641      	mov	r1, r8
c0de3f00:	f811 3f22 	ldrb.w	r3, [r1, #34]!
c0de3f04:	784c      	ldrb	r4, [r1, #1]
c0de3f06:	788d      	ldrb	r5, [r1, #2]
c0de3f08:	78ce      	ldrb	r6, [r1, #3]
c0de3f0a:	f811 2c02 	ldrb.w	r2, [r1, #-2]
c0de3f0e:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
c0de3f12:	ea45 2406 	orr.w	r4, r5, r6, lsl #8
c0de3f16:	463d      	mov	r5, r7
c0de3f18:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
c0de3f1c:	eb03 0482 	add.w	r4, r3, r2, lsl #2
c0de3f20:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de3f24:	f805 4f12 	strb.w	r4, [r5, #18]!
c0de3f28:	0e26      	lsrs	r6, r4, #24
c0de3f2a:	70ee      	strb	r6, [r5, #3]
c0de3f2c:	0c26      	lsrs	r6, r4, #16
c0de3f2e:	0a24      	lsrs	r4, r4, #8
c0de3f30:	74fc      	strb	r4, [r7, #19]
c0de3f32:	70ae      	strb	r6, [r5, #2]
c0de3f34:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
c0de3f38:	2302      	movs	r3, #2
c0de3f3a:	2400      	movs	r4, #0
c0de3f3c:	3201      	adds	r2, #1
c0de3f3e:	767b      	strb	r3, [r7, #25]
c0de3f40:	2308      	movs	r3, #8
c0de3f42:	76bc      	strb	r4, [r7, #26]
c0de3f44:	f887 4021 	strb.w	r4, [r7, #33]	@ 0x21
c0de3f48:	79c0      	ldrb	r0, [r0, #7]
c0de3f4a:	75bb      	strb	r3, [r7, #22]
c0de3f4c:	fb0a f300 	mul.w	r3, sl, r0
c0de3f50:	fb0a b000 	mla	r0, sl, r0, fp
c0de3f54:	e9dd a403 	ldrd	sl, r4, [sp, #12]
c0de3f58:	71bb      	strb	r3, [r7, #6]
c0de3f5a:	0a1b      	lsrs	r3, r3, #8
c0de3f5c:	f801 2c02 	strb.w	r2, [r1, #-2]
c0de3f60:	f100 0b02 	add.w	fp, r0, #2
c0de3f64:	71fb      	strb	r3, [r7, #7]
c0de3f66:	7b20      	ldrb	r0, [r4, #12]
c0de3f68:	2102      	movs	r1, #2
c0de3f6a:	2800      	cmp	r0, #0
c0de3f6c:	bf08      	it	eq
c0de3f6e:	2105      	moveq	r1, #5
c0de3f70:	f888 1016 	strb.w	r1, [r8, #22]
c0de3f74:	f8da 0004 	ldr.w	r0, [sl, #4]
c0de3f78:	f89a 1002 	ldrb.w	r1, [sl, #2]
c0de3f7c:	2272      	movs	r2, #114	@ 0x72
c0de3f7e:	f840 8021 	str.w	r8, [r0, r1, lsl #2]
c0de3f82:	2000      	movs	r0, #0
c0de3f84:	f888 2004 	strb.w	r2, [r8, #4]
c0de3f88:	ea4f 221b 	mov.w	r2, fp, lsr #8
c0de3f8c:	3101      	adds	r1, #1
c0de3f8e:	f888 b006 	strb.w	fp, [r8, #6]
c0de3f92:	f888 0019 	strb.w	r0, [r8, #25]
c0de3f96:	f888 001a 	strb.w	r0, [r8, #26]
c0de3f9a:	f888 0005 	strb.w	r0, [r8, #5]
c0de3f9e:	f888 001f 	strb.w	r0, [r8, #31]
c0de3fa2:	f888 2007 	strb.w	r2, [r8, #7]
c0de3fa6:	f88a 1002 	strb.w	r1, [sl, #2]
c0de3faa:	b006      	add	sp, #24
c0de3fac:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de3fb0 <nbgl_layoutAddSwitch>:
c0de3fb0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3fb4:	2800      	cmp	r0, #0
c0de3fb6:	d07d      	beq.n	c0de40b4 <nbgl_layoutAddSwitch+0x104>
c0de3fb8:	460d      	mov	r5, r1
c0de3fba:	7841      	ldrb	r1, [r0, #1]
c0de3fbc:	4604      	mov	r4, r0
c0de3fbe:	f000 f91d 	bl	c0de41fc <OUTLINED_FUNCTION_4>
c0de3fc2:	f04f 0803 	mov.w	r8, #3
c0de3fc6:	4606      	mov	r6, r0
c0de3fc8:	f880 801f 	strb.w	r8, [r0, #31]
c0de3fcc:	6828      	ldr	r0, [r5, #0]
c0de3fce:	f003 f877 	bl	c0de70c0 <pic>
c0de3fd2:	4601      	mov	r1, r0
c0de3fd4:	2072      	movs	r0, #114	@ 0x72
c0de3fd6:	2700      	movs	r7, #0
c0de3fd8:	2301      	movs	r3, #1
c0de3fda:	7130      	strb	r0, [r6, #4]
c0de3fdc:	2008      	movs	r0, #8
c0de3fde:	0e0a      	lsrs	r2, r1, #24
c0de3fe0:	7177      	strb	r7, [r6, #5]
c0de3fe2:	f886 0022 	strb.w	r0, [r6, #34]	@ 0x22
c0de3fe6:	2005      	movs	r0, #5
c0de3fe8:	f886 0020 	strb.w	r0, [r6, #32]
c0de3fec:	2001      	movs	r0, #1
c0de3fee:	f886 0024 	strb.w	r0, [r6, #36]	@ 0x24
c0de3ff2:	4630      	mov	r0, r6
c0de3ff4:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de3ff8:	70c2      	strb	r2, [r0, #3]
c0de3ffa:	0c0a      	lsrs	r2, r1, #16
c0de3ffc:	7082      	strb	r2, [r0, #2]
c0de3ffe:	0a08      	lsrs	r0, r1, #8
c0de4000:	2272      	movs	r2, #114	@ 0x72
c0de4002:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de4006:	2008      	movs	r0, #8
c0de4008:	f002 fe8b 	bl	c0de6d22 <nbgl_getTextNbLinesInWidth>
c0de400c:	2801      	cmp	r0, #1
c0de400e:	d851      	bhi.n	c0de40b4 <nbgl_layoutAddSwitch+0x104>
c0de4010:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de4014:	f002 fe80 	bl	c0de6d18 <nbgl_getFontLineHeight>
c0de4018:	6861      	ldr	r1, [r4, #4]
c0de401a:	78a2      	ldrb	r2, [r4, #2]
c0de401c:	76b7      	strb	r7, [r6, #26]
c0de401e:	71f7      	strb	r7, [r6, #7]
c0de4020:	f841 6022 	str.w	r6, [r1, r2, lsl #2]
c0de4024:	71b0      	strb	r0, [r6, #6]
c0de4026:	2002      	movs	r0, #2
c0de4028:	f886 8019 	strb.w	r8, [r6, #25]
c0de402c:	75b0      	strb	r0, [r6, #22]
c0de402e:	1c50      	adds	r0, r2, #1
c0de4030:	70a0      	strb	r0, [r4, #2]
c0de4032:	6868      	ldr	r0, [r5, #4]
c0de4034:	2800      	cmp	r0, #0
c0de4036:	d04c      	beq.n	c0de40d2 <nbgl_layoutAddSwitch+0x122>
c0de4038:	7861      	ldrb	r1, [r4, #1]
c0de403a:	f000 f8df 	bl	c0de41fc <OUTLINED_FUNCTION_4>
c0de403e:	4606      	mov	r6, r0
c0de4040:	2003      	movs	r0, #3
c0de4042:	77f0      	strb	r0, [r6, #31]
c0de4044:	6868      	ldr	r0, [r5, #4]
c0de4046:	f003 f83b 	bl	c0de70c0 <pic>
c0de404a:	2172      	movs	r1, #114	@ 0x72
c0de404c:	4637      	mov	r7, r6
c0de404e:	f04f 0800 	mov.w	r8, #0
c0de4052:	f04f 0a05 	mov.w	sl, #5
c0de4056:	7131      	strb	r1, [r6, #4]
c0de4058:	210a      	movs	r1, #10
c0de405a:	f807 0f26 	strb.w	r0, [r7, #38]!
c0de405e:	f886 8005 	strb.w	r8, [r6, #5]
c0de4062:	f886 a020 	strb.w	sl, [r6, #32]
c0de4066:	f886 1022 	strb.w	r1, [r6, #34]	@ 0x22
c0de406a:	0e01      	lsrs	r1, r0, #24
c0de406c:	70f9      	strb	r1, [r7, #3]
c0de406e:	0c01      	lsrs	r1, r0, #16
c0de4070:	0a00      	lsrs	r0, r0, #8
c0de4072:	f886 0027 	strb.w	r0, [r6, #39]	@ 0x27
c0de4076:	200a      	movs	r0, #10
c0de4078:	70b9      	strb	r1, [r7, #2]
c0de407a:	f002 fe4d 	bl	c0de6d18 <nbgl_getFontLineHeight>
c0de407e:	09c1      	lsrs	r1, r0, #7
c0de4080:	783a      	ldrb	r2, [r7, #0]
c0de4082:	78bb      	ldrb	r3, [r7, #2]
c0de4084:	78ff      	ldrb	r7, [r7, #3]
c0de4086:	0040      	lsls	r0, r0, #1
c0de4088:	f04f 0b01 	mov.w	fp, #1
c0de408c:	71f1      	strb	r1, [r6, #7]
c0de408e:	f896 1027 	ldrb.w	r1, [r6, #39]	@ 0x27
c0de4092:	71b0      	strb	r0, [r6, #6]
c0de4094:	f896 0022 	ldrb.w	r0, [r6, #34]	@ 0x22
c0de4098:	f886 b024 	strb.w	fp, [r6, #36]	@ 0x24
c0de409c:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de40a0:	ea43 2207 	orr.w	r2, r3, r7, lsl #8
c0de40a4:	2301      	movs	r3, #1
c0de40a6:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de40aa:	2272      	movs	r2, #114	@ 0x72
c0de40ac:	f002 fe39 	bl	c0de6d22 <nbgl_getTextNbLinesInWidth>
c0de40b0:	2802      	cmp	r0, #2
c0de40b2:	d902      	bls.n	c0de40ba <nbgl_layoutAddSwitch+0x10a>
c0de40b4:	f04f 36ff 	mov.w	r6, #4294967295	@ 0xffffffff
c0de40b8:	e05d      	b.n	c0de4176 <nbgl_layoutAddSwitch+0x1c6>
c0de40ba:	6860      	ldr	r0, [r4, #4]
c0de40bc:	78a1      	ldrb	r1, [r4, #2]
c0de40be:	f886 801a 	strb.w	r8, [r6, #26]
c0de40c2:	f886 a016 	strb.w	sl, [r6, #22]
c0de40c6:	f840 6021 	str.w	r6, [r0, r1, lsl #2]
c0de40ca:	1c48      	adds	r0, r1, #1
c0de40cc:	f886 b019 	strb.w	fp, [r6, #25]
c0de40d0:	70a0      	strb	r0, [r4, #2]
c0de40d2:	7861      	ldrb	r1, [r4, #1]
c0de40d4:	2005      	movs	r0, #5
c0de40d6:	f002 fe10 	bl	c0de6cfa <nbgl_objPoolGet>
c0de40da:	2600      	movs	r6, #0
c0de40dc:	4607      	mov	r7, r0
c0de40de:	f04f 0a03 	mov.w	sl, #3
c0de40e2:	f04f 0808 	mov.w	r8, #8
c0de40e6:	f880 6021 	strb.w	r6, [r0, #33]	@ 0x21
c0de40ea:	2001      	movs	r0, #1
c0de40ec:	f887 a020 	strb.w	sl, [r7, #32]
c0de40f0:	f887 a01f 	strb.w	sl, [r7, #31]
c0de40f4:	f887 8023 	strb.w	r8, [r7, #35]	@ 0x23
c0de40f8:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de40fc:	7a28      	ldrb	r0, [r5, #8]
c0de40fe:	4a1f      	ldr	r2, [pc, #124]	@ (c0de417c <nbgl_layoutAddSwitch+0x1cc>)
c0de4100:	491f      	ldr	r1, [pc, #124]	@ (c0de4180 <nbgl_layoutAddSwitch+0x1d0>)
c0de4102:	2801      	cmp	r0, #1
c0de4104:	447a      	add	r2, pc
c0de4106:	4479      	add	r1, pc
c0de4108:	bf08      	it	eq
c0de410a:	4611      	moveq	r1, r2
c0de410c:	463a      	mov	r2, r7
c0de410e:	0e0b      	lsrs	r3, r1, #24
c0de4110:	f802 1f25 	strb.w	r1, [r2, #37]!
c0de4114:	70d3      	strb	r3, [r2, #3]
c0de4116:	0c0b      	lsrs	r3, r1, #16
c0de4118:	7093      	strb	r3, [r2, #2]
c0de411a:	0a0a      	lsrs	r2, r1, #8
c0de411c:	f887 2026 	strb.w	r2, [r7, #38]	@ 0x26
c0de4120:	2801      	cmp	r0, #1
c0de4122:	4638      	mov	r0, r7
c0de4124:	4a17      	ldr	r2, [pc, #92]	@ (c0de4184 <nbgl_layoutAddSwitch+0x1d4>)
c0de4126:	4d18      	ldr	r5, [pc, #96]	@ (c0de4188 <nbgl_layoutAddSwitch+0x1d8>)
c0de4128:	447a      	add	r2, pc
c0de412a:	447d      	add	r5, pc
c0de412c:	bf18      	it	ne
c0de412e:	462a      	movne	r2, r5
c0de4130:	f800 2f2e 	strb.w	r2, [r0, #46]!
c0de4134:	0e13      	lsrs	r3, r2, #24
c0de4136:	70c3      	strb	r3, [r0, #3]
c0de4138:	0c13      	lsrs	r3, r2, #16
c0de413a:	7083      	strb	r3, [r0, #2]
c0de413c:	0a10      	lsrs	r0, r2, #8
c0de413e:	f887 002f 	strb.w	r0, [r7, #47]	@ 0x2f
c0de4142:	2008      	movs	r0, #8
c0de4144:	f002 fdf7 	bl	c0de6d36 <nbgl_getTextWidth>
c0de4148:	6861      	ldr	r1, [r4, #4]
c0de414a:	78a2      	ldrb	r2, [r4, #2]
c0de414c:	786b      	ldrb	r3, [r5, #1]
c0de414e:	76be      	strb	r6, [r7, #26]
c0de4150:	71fe      	strb	r6, [r7, #7]
c0de4152:	f887 8016 	strb.w	r8, [r7, #22]
c0de4156:	f841 7022 	str.w	r7, [r1, r2, lsl #2]
c0de415a:	210c      	movs	r1, #12
c0de415c:	f887 a019 	strb.w	sl, [r7, #25]
c0de4160:	71b9      	strb	r1, [r7, #6]
c0de4162:	7829      	ldrb	r1, [r5, #0]
c0de4164:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de4168:	4408      	add	r0, r1
c0de416a:	1c51      	adds	r1, r2, #1
c0de416c:	300a      	adds	r0, #10
c0de416e:	7138      	strb	r0, [r7, #4]
c0de4170:	0a00      	lsrs	r0, r0, #8
c0de4172:	70a1      	strb	r1, [r4, #2]
c0de4174:	7178      	strb	r0, [r7, #5]
c0de4176:	4630      	mov	r0, r6
c0de4178:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de417c:	000039d7 	.word	0x000039d7
c0de4180:	00003aa4 	.word	0x00003aa4
c0de4184:	00003749 	.word	0x00003749
c0de4188:	00003731 	.word	0x00003731

c0de418c <nbgl_layoutDraw>:
c0de418c:	b120      	cbz	r0, c0de4198 <nbgl_layoutDraw+0xc>
c0de418e:	b580      	push	{r7, lr}
c0de4190:	f002 fda4 	bl	c0de6cdc <nbgl_screenRedraw>
c0de4194:	2000      	movs	r0, #0
c0de4196:	bd80      	pop	{r7, pc}
c0de4198:	f000 b844 	b.w	c0de4224 <OUTLINED_FUNCTION_8>

c0de419c <nbgl_layoutRelease>:
c0de419c:	b148      	cbz	r0, c0de41b2 <nbgl_layoutRelease+0x16>
c0de419e:	b510      	push	{r4, lr}
c0de41a0:	4604      	mov	r4, r0
c0de41a2:	7800      	ldrb	r0, [r0, #0]
c0de41a4:	b110      	cbz	r0, c0de41ac <nbgl_layoutRelease+0x10>
c0de41a6:	7860      	ldrb	r0, [r4, #1]
c0de41a8:	f002 fd9d 	bl	c0de6ce6 <nbgl_screenPop>
c0de41ac:	2000      	movs	r0, #0
c0de41ae:	70a0      	strb	r0, [r4, #2]
c0de41b0:	bd10      	pop	{r4, pc}
c0de41b2:	f000 b837 	b.w	c0de4224 <OUTLINED_FUNCTION_8>

c0de41b6 <OUTLINED_FUNCTION_1>:
c0de41b6:	4638      	mov	r0, r7
c0de41b8:	f800 1f26 	strb.w	r1, [r0, #38]!
c0de41bc:	70c2      	strb	r2, [r0, #3]
c0de41be:	0c0a      	lsrs	r2, r1, #16
c0de41c0:	7082      	strb	r2, [r0, #2]
c0de41c2:	0a08      	lsrs	r0, r1, #8
c0de41c4:	2272      	movs	r2, #114	@ 0x72
c0de41c6:	f887 0027 	strb.w	r0, [r7, #39]	@ 0x27
c0de41ca:	200a      	movs	r0, #10
c0de41cc:	f002 bda9 	b.w	c0de6d22 <nbgl_getTextNbLinesInWidth>

c0de41d0 <OUTLINED_FUNCTION_2>:
c0de41d0:	f811 2f22 	ldrb.w	r2, [r1, #34]!
c0de41d4:	784b      	ldrb	r3, [r1, #1]
c0de41d6:	788d      	ldrb	r5, [r1, #2]
c0de41d8:	78c9      	ldrb	r1, [r1, #3]
c0de41da:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
c0de41de:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de41e2:	9d05      	ldr	r5, [sp, #20]
c0de41e4:	ea42 4101 	orr.w	r1, r2, r1, lsl #16
c0de41e8:	4770      	bx	lr

c0de41ea <OUTLINED_FUNCTION_3>:
c0de41ea:	70c2      	strb	r2, [r0, #3]
c0de41ec:	0c0a      	lsrs	r2, r1, #16
c0de41ee:	7082      	strb	r2, [r0, #2]
c0de41f0:	0a08      	lsrs	r0, r1, #8
c0de41f2:	f887 0026 	strb.w	r0, [r7, #38]	@ 0x26
c0de41f6:	2008      	movs	r0, #8
c0de41f8:	f002 bd9d 	b.w	c0de6d36 <nbgl_getTextWidth>

c0de41fc <OUTLINED_FUNCTION_4>:
c0de41fc:	2004      	movs	r0, #4
c0de41fe:	f002 bd7c 	b.w	c0de6cfa <nbgl_objPoolGet>

c0de4202 <OUTLINED_FUNCTION_5>:
c0de4202:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de4206:	2272      	movs	r2, #114	@ 0x72
c0de4208:	f002 bd9a 	b.w	c0de6d40 <nbgl_getTextMaxLenInNbLines>

c0de420c <OUTLINED_FUNCTION_6>:
c0de420c:	2100      	movs	r1, #0
c0de420e:	463a      	mov	r2, r7
c0de4210:	f802 1f12 	strb.w	r1, [r2, #18]!
c0de4214:	70d1      	strb	r1, [r2, #3]
c0de4216:	7091      	strb	r1, [r2, #2]
c0de4218:	7051      	strb	r1, [r2, #1]
c0de421a:	4770      	bx	lr

c0de421c <OUTLINED_FUNCTION_7>:
c0de421c:	f897 0022 	ldrb.w	r0, [r7, #34]	@ 0x22
c0de4220:	f002 bd75 	b.w	c0de6d0e <nbgl_getFont>

c0de4224 <OUTLINED_FUNCTION_8>:
c0de4224:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de4228:	4770      	bx	lr

c0de422a <OUTLINED_FUNCTION_9>:
c0de422a:	f887 0022 	strb.w	r0, [r7, #34]	@ 0x22
c0de422e:	2003      	movs	r0, #3
c0de4230:	f887 0020 	strb.w	r0, [r7, #32]
c0de4234:	77f8      	strb	r0, [r7, #31]
c0de4236:	4770      	bx	lr

c0de4238 <nbgl_stepDrawText>:
c0de4238:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de423c:	460e      	mov	r6, r1
c0de423e:	990a      	ldr	r1, [sp, #40]	@ 0x28
c0de4240:	4605      	mov	r5, r0
c0de4242:	2000      	movs	r0, #0
c0de4244:	469a      	mov	sl, r3
c0de4246:	4617      	mov	r7, r2
c0de4248:	f000 f830 	bl	c0de42ac <getFreeContext>
c0de424c:	b348      	cbz	r0, c0de42a2 <nbgl_stepDrawText+0x6a>
c0de424e:	f8dd 8020 	ldr.w	r8, [sp, #32]
c0de4252:	4604      	mov	r4, r0
c0de4254:	6146      	str	r6, [r0, #20]
c0de4256:	b10f      	cbz	r7, c0de425c <nbgl_stepDrawText+0x24>
c0de4258:	f000 fae1 	bl	c0de481e <OUTLINED_FUNCTION_1>
c0de425c:	200a      	movs	r0, #10
c0de425e:	f1b8 0f00 	cmp.w	r8, #0
c0de4262:	bf19      	ittee	ne
c0de4264:	4641      	movne	r1, r8
c0de4266:	2203      	movne	r2, #3
c0de4268:	4651      	moveq	r1, sl
c0de426a:	2204      	moveq	r2, #4
c0de426c:	2372      	movs	r3, #114	@ 0x72
c0de426e:	f002 fd5d 	bl	c0de6d2c <nbgl_getTextNbPagesInWidth>
c0de4272:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4274:	7020      	strb	r0, [r4, #0]
c0de4276:	072a      	lsls	r2, r5, #28
c0de4278:	bf46      	itte	mi
c0de427a:	3801      	submi	r0, #1
c0de427c:	7060      	strbmi	r0, [r4, #1]
c0de427e:	7860      	ldrbpl	r0, [r4, #1]
c0de4280:	f8c4 800c 	str.w	r8, [r4, #12]
c0de4284:	f8c4 a004 	str.w	sl, [r4, #4]
c0de4288:	f884 1030 	strb.w	r1, [r4, #48]	@ 0x30
c0de428c:	f3c5 1180 	ubfx	r1, r5, #6, #1
c0de4290:	7461      	strb	r1, [r4, #17]
c0de4292:	f005 0103 	and.w	r1, r5, #3
c0de4296:	7421      	strb	r1, [r4, #16]
c0de4298:	b2c1      	uxtb	r1, r0
c0de429a:	4620      	mov	r0, r4
c0de429c:	f000 f82c 	bl	c0de42f8 <displayTextPage>
c0de42a0:	e000      	b.n	c0de42a4 <nbgl_stepDrawText+0x6c>
c0de42a2:	2400      	movs	r4, #0
c0de42a4:	4620      	mov	r0, r4
c0de42a6:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
	...

c0de42ac <getFreeContext>:
c0de42ac:	b570      	push	{r4, r5, r6, lr}
c0de42ae:	4604      	mov	r4, r0
c0de42b0:	4810      	ldr	r0, [pc, #64]	@ (c0de42f4 <getFreeContext+0x48>)
c0de42b2:	460d      	mov	r5, r1
c0de42b4:	b151      	cbz	r1, c0de42cc <getFreeContext+0x20>
c0de42b6:	2100      	movs	r1, #0
c0de42b8:	2990      	cmp	r1, #144	@ 0x90
c0de42ba:	d00a      	beq.n	c0de42d2 <getFreeContext+0x26>
c0de42bc:	eb09 0200 	add.w	r2, r9, r0
c0de42c0:	440a      	add	r2, r1
c0de42c2:	f8d2 2088 	ldr.w	r2, [r2, #136]	@ 0x88
c0de42c6:	b132      	cbz	r2, c0de42d6 <getFreeContext+0x2a>
c0de42c8:	3148      	adds	r1, #72	@ 0x48
c0de42ca:	e7f5      	b.n	c0de42b8 <getFreeContext+0xc>
c0de42cc:	eb09 0600 	add.w	r6, r9, r0
c0de42d0:	e005      	b.n	c0de42de <getFreeContext+0x32>
c0de42d2:	2600      	movs	r6, #0
c0de42d4:	e00b      	b.n	c0de42ee <getFreeContext+0x42>
c0de42d6:	4448      	add	r0, r9
c0de42d8:	4408      	add	r0, r1
c0de42da:	f100 0648 	add.w	r6, r0, #72	@ 0x48
c0de42de:	4630      	mov	r0, r6
c0de42e0:	2148      	movs	r1, #72	@ 0x48
c0de42e2:	f003 f9f9 	bl	c0de76d8 <__aeabi_memclr>
c0de42e6:	f886 5045 	strb.w	r5, [r6, #69]	@ 0x45
c0de42ea:	f886 4044 	strb.w	r4, [r6, #68]	@ 0x44
c0de42ee:	4630      	mov	r0, r6
c0de42f0:	bd70      	pop	{r4, r5, r6, pc}
c0de42f2:	bf00      	nop
c0de42f4:	0000066c 	.word	0x0000066c

c0de42f8 <displayTextPage>:
c0de42f8:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de42fc:	b091      	sub	sp, #68	@ 0x44
c0de42fe:	4604      	mov	r4, r0
c0de4300:	7840      	ldrb	r0, [r0, #1]
c0de4302:	460e      	mov	r6, r1
c0de4304:	4288      	cmp	r0, r1
c0de4306:	d21c      	bcs.n	c0de4342 <displayTextPage+0x4a>
c0de4308:	68a5      	ldr	r5, [r4, #8]
c0de430a:	7820      	ldrb	r0, [r4, #0]
c0de430c:	7066      	strb	r6, [r4, #1]
c0de430e:	3801      	subs	r0, #1
c0de4310:	42b0      	cmp	r0, r6
c0de4312:	dd31      	ble.n	c0de4378 <displayTextPage+0x80>
c0de4314:	68e0      	ldr	r0, [r4, #12]
c0de4316:	2101      	movs	r1, #1
c0de4318:	2303      	movs	r3, #3
c0de431a:	aa08      	add	r2, sp, #32
c0de431c:	e9cd 2100 	strd	r2, r1, [sp]
c0de4320:	4629      	mov	r1, r5
c0de4322:	2800      	cmp	r0, #0
c0de4324:	bf08      	it	eq
c0de4326:	2304      	moveq	r3, #4
c0de4328:	200a      	movs	r0, #10
c0de432a:	2272      	movs	r2, #114	@ 0x72
c0de432c:	f002 fd08 	bl	c0de6d40 <nbgl_getTextMaxLenInNbLines>
c0de4330:	f8bd 1020 	ldrh.w	r1, [sp, #32]
c0de4334:	1868      	adds	r0, r5, r1
c0de4336:	60a0      	str	r0, [r4, #8]
c0de4338:	5c69      	ldrb	r1, [r5, r1]
c0de433a:	290a      	cmp	r1, #10
c0de433c:	d11e      	bne.n	c0de437c <displayTextPage+0x84>
c0de433e:	3001      	adds	r0, #1
c0de4340:	e01b      	b.n	c0de437a <displayTextPage+0x82>
c0de4342:	68e5      	ldr	r5, [r4, #12]
c0de4344:	2d00      	cmp	r5, #0
c0de4346:	d074      	beq.n	c0de4432 <displayTextPage+0x13a>
c0de4348:	2700      	movs	r7, #0
c0de434a:	f04f 0801 	mov.w	r8, #1
c0de434e:	f10d 0a20 	add.w	sl, sp, #32
c0de4352:	42be      	cmp	r6, r7
c0de4354:	d0d9      	beq.n	c0de430a <displayTextPage+0x12>
c0de4356:	7820      	ldrb	r0, [r4, #0]
c0de4358:	3801      	subs	r0, #1
c0de435a:	42b8      	cmp	r0, r7
c0de435c:	dd0a      	ble.n	c0de4374 <displayTextPage+0x7c>
c0de435e:	200a      	movs	r0, #10
c0de4360:	4629      	mov	r1, r5
c0de4362:	2272      	movs	r2, #114	@ 0x72
c0de4364:	2303      	movs	r3, #3
c0de4366:	e9cd a800 	strd	sl, r8, [sp]
c0de436a:	f002 fce9 	bl	c0de6d40 <nbgl_getTextMaxLenInNbLines>
c0de436e:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de4372:	4405      	add	r5, r0
c0de4374:	3701      	adds	r7, #1
c0de4376:	e7ec      	b.n	c0de4352 <displayTextPage+0x5a>
c0de4378:	2000      	movs	r0, #0
c0de437a:	60a0      	str	r0, [r4, #8]
c0de437c:	484f      	ldr	r0, [pc, #316]	@ (c0de44bc <displayTextPage+0x1c4>)
c0de437e:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de4382:	4478      	add	r0, pc
c0de4384:	9004      	str	r0, [sp, #16]
c0de4386:	2000      	movs	r0, #0
c0de4388:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de438c:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4390:	f88d 000c 	strb.w	r0, [sp, #12]
c0de4394:	ca07      	ldmia	r2, {r0, r1, r2}
c0de4396:	ab05      	add	r3, sp, #20
c0de4398:	c307      	stmia	r3!, {r0, r1, r2}
c0de439a:	a803      	add	r0, sp, #12
c0de439c:	f7ff f992 	bl	c0de36c4 <nbgl_layoutGet>
c0de43a0:	7827      	ldrb	r7, [r4, #0]
c0de43a2:	f894 a001 	ldrb.w	sl, [r4, #1]
c0de43a6:	4606      	mov	r6, r0
c0de43a8:	6420      	str	r0, [r4, #64]	@ 0x40
c0de43aa:	7c20      	ldrb	r0, [r4, #16]
c0de43ac:	4639      	mov	r1, r7
c0de43ae:	4652      	mov	r2, sl
c0de43b0:	f000 f8fc 	bl	c0de45ac <getNavigationInfo>
c0de43b4:	4680      	mov	r8, r0
c0de43b6:	f88d 000b 	strb.w	r0, [sp, #11]
c0de43ba:	68e0      	ldr	r0, [r4, #12]
c0de43bc:	b188      	cbz	r0, c0de43e2 <displayTextPage+0xea>
c0de43be:	2f01      	cmp	r7, #1
c0de43c0:	d115      	bne.n	c0de43ee <displayTextPage+0xf6>
c0de43c2:	6861      	ldr	r1, [r4, #4]
c0de43c4:	2008      	movs	r0, #8
c0de43c6:	2272      	movs	r2, #114	@ 0x72
c0de43c8:	2300      	movs	r3, #0
c0de43ca:	2600      	movs	r6, #0
c0de43cc:	f002 fca9 	bl	c0de6d22 <nbgl_getTextNbLinesInWidth>
c0de43d0:	2802      	cmp	r0, #2
c0de43d2:	d348      	bcc.n	c0de4466 <displayTextPage+0x16e>
c0de43d4:	6861      	ldr	r1, [r4, #4]
c0de43d6:	2018      	movs	r0, #24
c0de43d8:	f104 0218 	add.w	r2, r4, #24
c0de43dc:	e9cd 2000 	strd	r2, r0, [sp]
c0de43e0:	e021      	b.n	c0de4426 <displayTextPage+0x12e>
c0de43e2:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de43e6:	4630      	mov	r0, r6
c0de43e8:	4629      	mov	r1, r5
c0de43ea:	2200      	movs	r2, #0
c0de43ec:	e055      	b.n	c0de449a <displayTextPage+0x1a2>
c0de43ee:	f10a 0001 	add.w	r0, sl, #1
c0de43f2:	6863      	ldr	r3, [r4, #4]
c0de43f4:	2124      	movs	r1, #36	@ 0x24
c0de43f6:	e9cd 0700 	strd	r0, r7, [sp]
c0de43fa:	af08      	add	r7, sp, #32
c0de43fc:	4a30      	ldr	r2, [pc, #192]	@ (c0de44c0 <displayTextPage+0x1c8>)
c0de43fe:	4638      	mov	r0, r7
c0de4400:	447a      	add	r2, pc
c0de4402:	f002 fccb 	bl	c0de6d9c <snprintf>
c0de4406:	2008      	movs	r0, #8
c0de4408:	4639      	mov	r1, r7
c0de440a:	2272      	movs	r2, #114	@ 0x72
c0de440c:	2300      	movs	r3, #0
c0de440e:	f04f 0a00 	mov.w	sl, #0
c0de4412:	f002 fc86 	bl	c0de6d22 <nbgl_getTextNbLinesInWidth>
c0de4416:	f104 0c18 	add.w	ip, r4, #24
c0de441a:	2802      	cmp	r0, #2
c0de441c:	d32c      	bcc.n	c0de4478 <displayTextPage+0x180>
c0de441e:	2018      	movs	r0, #24
c0de4420:	e9cd c000 	strd	ip, r0, [sp]
c0de4424:	a908      	add	r1, sp, #32
c0de4426:	2008      	movs	r0, #8
c0de4428:	2272      	movs	r2, #114	@ 0x72
c0de442a:	2301      	movs	r3, #1
c0de442c:	f002 fc8d 	bl	c0de6d4a <nbgl_textReduceOnNbLines>
c0de4430:	e02d      	b.n	c0de448e <displayTextPage+0x196>
c0de4432:	6865      	ldr	r5, [r4, #4]
c0de4434:	2700      	movs	r7, #0
c0de4436:	f04f 0801 	mov.w	r8, #1
c0de443a:	f10d 0a20 	add.w	sl, sp, #32
c0de443e:	42be      	cmp	r6, r7
c0de4440:	f43f af63 	beq.w	c0de430a <displayTextPage+0x12>
c0de4444:	7820      	ldrb	r0, [r4, #0]
c0de4446:	3801      	subs	r0, #1
c0de4448:	42b8      	cmp	r0, r7
c0de444a:	dd0a      	ble.n	c0de4462 <displayTextPage+0x16a>
c0de444c:	200a      	movs	r0, #10
c0de444e:	4629      	mov	r1, r5
c0de4450:	2272      	movs	r2, #114	@ 0x72
c0de4452:	2304      	movs	r3, #4
c0de4454:	e9cd a800 	strd	sl, r8, [sp]
c0de4458:	f002 fc72 	bl	c0de6d40 <nbgl_getTextMaxLenInNbLines>
c0de445c:	f8bd 0020 	ldrh.w	r0, [sp, #32]
c0de4460:	4405      	add	r5, r0
c0de4462:	3701      	adds	r7, #1
c0de4464:	e7eb      	b.n	c0de443e <displayTextPage+0x146>
c0de4466:	6861      	ldr	r1, [r4, #4]
c0de4468:	f104 0018 	add.w	r0, r4, #24
c0de446c:	2217      	movs	r2, #23
c0de446e:	f003 f929 	bl	c0de76c4 <__aeabi_memcpy>
c0de4472:	f884 602f 	strb.w	r6, [r4, #47]	@ 0x2f
c0de4476:	e00a      	b.n	c0de448e <displayTextPage+0x196>
c0de4478:	cf4f      	ldmia	r7!, {r0, r1, r2, r3, r6}
c0de447a:	e8ac 004f 	stmia.w	ip!, {r0, r1, r2, r3, r6}
c0de447e:	f884 a02f 	strb.w	sl, [r4, #47]	@ 0x2f
c0de4482:	8838      	ldrh	r0, [r7, #0]
c0de4484:	f8ac 0000 	strh.w	r0, [ip]
c0de4488:	78b8      	ldrb	r0, [r7, #2]
c0de448a:	f88c 0002 	strb.w	r0, [ip, #2]
c0de448e:	f894 3030 	ldrb.w	r3, [r4, #48]	@ 0x30
c0de4492:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4494:	f104 0118 	add.w	r1, r4, #24
c0de4498:	462a      	mov	r2, r5
c0de449a:	f7ff f9d5 	bl	c0de3848 <nbgl_layoutAddText>
c0de449e:	f1b8 0f00 	cmp.w	r8, #0
c0de44a2:	d004      	beq.n	c0de44ae <displayTextPage+0x1b6>
c0de44a4:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de44a6:	f10d 010a 	add.w	r1, sp, #10
c0de44aa:	f7ff f96f 	bl	c0de378c <nbgl_layoutAddNavigation>
c0de44ae:	f000 f9e9 	bl	c0de4884 <OUTLINED_FUNCTION_4>
c0de44b2:	f002 fbfa 	bl	c0de6caa <nbgl_refresh>
c0de44b6:	b011      	add	sp, #68	@ 0x44
c0de44b8:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de44bc:	000001bb 	.word	0x000001bb
c0de44c0:	000035cd 	.word	0x000035cd

c0de44c4 <nbgl_stepDrawCenteredInfo>:
c0de44c4:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de44c8:	b087      	sub	sp, #28
c0de44ca:	460d      	mov	r5, r1
c0de44cc:	4682      	mov	sl, r0
c0de44ce:	a802      	add	r0, sp, #8
c0de44d0:	f000 f9d3 	bl	c0de487a <OUTLINED_FUNCTION_3>
c0de44d4:	4819      	ldr	r0, [pc, #100]	@ (c0de453c <nbgl_stepDrawCenteredInfo+0x78>)
c0de44d6:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de44d8:	4478      	add	r0, pc
c0de44da:	f000 f9c5 	bl	c0de4868 <OUTLINED_FUNCTION_2>
c0de44de:	b168      	cbz	r0, c0de44fc <nbgl_stepDrawCenteredInfo+0x38>
c0de44e0:	4604      	mov	r4, r0
c0de44e2:	6145      	str	r5, [r0, #20]
c0de44e4:	b10f      	cbz	r7, c0de44ea <nbgl_stepDrawCenteredInfo+0x26>
c0de44e6:	f000 f953 	bl	c0de4790 <OUTLINED_FUNCTION_0>
c0de44ea:	f000 f9ce 	bl	c0de488a <OUTLINED_FUNCTION_5>
c0de44ee:	d007      	beq.n	c0de4500 <nbgl_stepDrawCenteredInfo+0x3c>
c0de44f0:	2802      	cmp	r0, #2
c0de44f2:	d007      	beq.n	c0de4504 <nbgl_stepDrawCenteredInfo+0x40>
c0de44f4:	2801      	cmp	r0, #1
c0de44f6:	d108      	bne.n	c0de450a <nbgl_stepDrawCenteredInfo+0x46>
c0de44f8:	2002      	movs	r0, #2
c0de44fa:	e004      	b.n	c0de4506 <nbgl_stepDrawCenteredInfo+0x42>
c0de44fc:	2400      	movs	r4, #0
c0de44fe:	e018      	b.n	c0de4532 <nbgl_stepDrawCenteredInfo+0x6e>
c0de4500:	2003      	movs	r0, #3
c0de4502:	e000      	b.n	c0de4506 <nbgl_stepDrawCenteredInfo+0x42>
c0de4504:	2001      	movs	r0, #1
c0de4506:	2500      	movs	r5, #0
c0de4508:	e000      	b.n	c0de450c <nbgl_stepDrawCenteredInfo+0x48>
c0de450a:	2000      	movs	r0, #0
c0de450c:	f88d 0007 	strb.w	r0, [sp, #7]
c0de4510:	a802      	add	r0, sp, #8
c0de4512:	f7ff f8d7 	bl	c0de36c4 <nbgl_layoutGet>
c0de4516:	4641      	mov	r1, r8
c0de4518:	6420      	str	r0, [r4, #64]	@ 0x40
c0de451a:	f7ff fba9 	bl	c0de3c70 <nbgl_layoutAddCenteredInfo>
c0de451e:	b925      	cbnz	r5, c0de452a <nbgl_stepDrawCenteredInfo+0x66>
c0de4520:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4522:	f10d 0106 	add.w	r1, sp, #6
c0de4526:	f7ff f931 	bl	c0de378c <nbgl_layoutAddNavigation>
c0de452a:	f000 f9ab 	bl	c0de4884 <OUTLINED_FUNCTION_4>
c0de452e:	f002 fbbc 	bl	c0de6caa <nbgl_refresh>
c0de4532:	4620      	mov	r0, r4
c0de4534:	b007      	add	sp, #28
c0de4536:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de453a:	bf00      	nop
c0de453c:	00000065 	.word	0x00000065

c0de4540 <actionCallback>:
c0de4540:	b510      	push	{r4, lr}
c0de4542:	460c      	mov	r4, r1
c0de4544:	f000 f8f0 	bl	c0de4728 <getContextFromLayout>
c0de4548:	b378      	cbz	r0, c0de45aa <actionCallback+0x6a>
c0de454a:	2c04      	cmp	r4, #4
c0de454c:	d006      	beq.n	c0de455c <actionCallback+0x1c>
c0de454e:	2c01      	cmp	r4, #1
c0de4550:	d008      	beq.n	c0de4564 <actionCallback+0x24>
c0de4552:	bb54      	cbnz	r4, c0de45aa <actionCallback+0x6a>
c0de4554:	7841      	ldrb	r1, [r0, #1]
c0de4556:	b1d9      	cbz	r1, c0de4590 <actionCallback+0x50>
c0de4558:	3901      	subs	r1, #1
c0de455a:	e009      	b.n	c0de4570 <actionCallback+0x30>
c0de455c:	6942      	ldr	r2, [r0, #20]
c0de455e:	b322      	cbz	r2, c0de45aa <actionCallback+0x6a>
c0de4560:	2104      	movs	r1, #4
c0de4562:	e01f      	b.n	c0de45a4 <actionCallback+0x64>
c0de4564:	7802      	ldrb	r2, [r0, #0]
c0de4566:	7841      	ldrb	r1, [r0, #1]
c0de4568:	3a01      	subs	r2, #1
c0de456a:	428a      	cmp	r2, r1
c0de456c:	dd05      	ble.n	c0de457a <actionCallback+0x3a>
c0de456e:	3101      	adds	r1, #1
c0de4570:	b2c9      	uxtb	r1, r1
c0de4572:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4576:	f7ff bebf 	b.w	c0de42f8 <displayTextPage>
c0de457a:	7c01      	ldrb	r1, [r0, #16]
c0de457c:	f041 0102 	orr.w	r1, r1, #2
c0de4580:	2903      	cmp	r1, #3
c0de4582:	d001      	beq.n	c0de4588 <actionCallback+0x48>
c0de4584:	7c41      	ldrb	r1, [r0, #17]
c0de4586:	b181      	cbz	r1, c0de45aa <actionCallback+0x6a>
c0de4588:	6942      	ldr	r2, [r0, #20]
c0de458a:	b172      	cbz	r2, c0de45aa <actionCallback+0x6a>
c0de458c:	2101      	movs	r1, #1
c0de458e:	e009      	b.n	c0de45a4 <actionCallback+0x64>
c0de4590:	7c01      	ldrb	r1, [r0, #16]
c0de4592:	f001 01fe 	and.w	r1, r1, #254	@ 0xfe
c0de4596:	2902      	cmp	r1, #2
c0de4598:	d001      	beq.n	c0de459e <actionCallback+0x5e>
c0de459a:	7c41      	ldrb	r1, [r0, #17]
c0de459c:	b129      	cbz	r1, c0de45aa <actionCallback+0x6a>
c0de459e:	6942      	ldr	r2, [r0, #20]
c0de45a0:	b11a      	cbz	r2, c0de45aa <actionCallback+0x6a>
c0de45a2:	2100      	movs	r1, #0
c0de45a4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de45a8:	4710      	bx	r2
c0de45aa:	bd10      	pop	{r4, pc}

c0de45ac <getNavigationInfo>:
c0de45ac:	4603      	mov	r3, r0
c0de45ae:	2902      	cmp	r1, #2
c0de45b0:	d308      	bcc.n	c0de45c4 <getNavigationInfo+0x18>
c0de45b2:	3901      	subs	r1, #1
c0de45b4:	4610      	mov	r0, r2
c0de45b6:	2a00      	cmp	r2, #0
c0de45b8:	bf18      	it	ne
c0de45ba:	2001      	movne	r0, #1
c0de45bc:	4291      	cmp	r1, r2
c0de45be:	bf88      	it	hi
c0de45c0:	3002      	addhi	r0, #2
c0de45c2:	e000      	b.n	c0de45c6 <getNavigationInfo+0x1a>
c0de45c4:	2000      	movs	r0, #0
c0de45c6:	2b03      	cmp	r3, #3
c0de45c8:	d00a      	beq.n	c0de45e0 <getNavigationInfo+0x34>
c0de45ca:	2b02      	cmp	r3, #2
c0de45cc:	bf04      	itt	eq
c0de45ce:	f040 0001 	orreq.w	r0, r0, #1
c0de45d2:	4770      	bxeq	lr
c0de45d4:	2b01      	cmp	r3, #1
c0de45d6:	bf04      	itt	eq
c0de45d8:	f040 0002 	orreq.w	r0, r0, #2
c0de45dc:	4770      	bxeq	lr
c0de45de:	4770      	bx	lr
c0de45e0:	2003      	movs	r0, #3
c0de45e2:	4770      	bx	lr

c0de45e4 <nbgl_stepDrawMenuList>:
c0de45e4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de45e6:	460f      	mov	r7, r1
c0de45e8:	4606      	mov	r6, r0
c0de45ea:	2002      	movs	r0, #2
c0de45ec:	4619      	mov	r1, r3
c0de45ee:	4615      	mov	r5, r2
c0de45f0:	f7ff fe5c 	bl	c0de42ac <getFreeContext>
c0de45f4:	b170      	cbz	r0, c0de4614 <nbgl_stepDrawMenuList+0x30>
c0de45f6:	4604      	mov	r4, r0
c0de45f8:	b10f      	cbz	r7, c0de45fe <nbgl_stepDrawMenuList+0x1a>
c0de45fa:	f000 f910 	bl	c0de481e <OUTLINED_FUNCTION_1>
c0de45fe:	7928      	ldrb	r0, [r5, #4]
c0de4600:	7220      	strb	r0, [r4, #8]
c0de4602:	7968      	ldrb	r0, [r5, #5]
c0de4604:	7260      	strb	r0, [r4, #9]
c0de4606:	6828      	ldr	r0, [r5, #0]
c0de4608:	e9c4 6000 	strd	r6, r0, [r4]
c0de460c:	4620      	mov	r0, r4
c0de460e:	f000 f805 	bl	c0de461c <displayMenuList>
c0de4612:	e000      	b.n	c0de4616 <nbgl_stepDrawMenuList+0x32>
c0de4614:	2400      	movs	r4, #0
c0de4616:	4620      	mov	r0, r4
c0de4618:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

c0de461c <displayMenuList>:
c0de461c:	b5b0      	push	{r4, r5, r7, lr}
c0de461e:	b086      	sub	sp, #24
c0de4620:	4604      	mov	r4, r0
c0de4622:	2000      	movs	r0, #0
c0de4624:	9001      	str	r0, [sp, #4]
c0de4626:	f104 0234 	add.w	r2, r4, #52	@ 0x34
c0de462a:	4819      	ldr	r0, [pc, #100]	@ (c0de4690 <displayMenuList+0x74>)
c0de462c:	4478      	add	r0, pc
c0de462e:	9002      	str	r0, [sp, #8]
c0de4630:	f894 0045 	ldrb.w	r0, [r4, #69]	@ 0x45
c0de4634:	f88d 0004 	strb.w	r0, [sp, #4]
c0de4638:	ca07      	ldmia	r2, {r0, r1, r2}
c0de463a:	ab03      	add	r3, sp, #12
c0de463c:	c307      	stmia	r3!, {r0, r1, r2}
c0de463e:	a801      	add	r0, sp, #4
c0de4640:	f7ff f840 	bl	c0de36c4 <nbgl_layoutGet>
c0de4644:	1d25      	adds	r5, r4, #4
c0de4646:	6420      	str	r0, [r4, #64]	@ 0x40
c0de4648:	4629      	mov	r1, r5
c0de464a:	f7ff fabd 	bl	c0de3bc8 <nbgl_layoutAddMenuList>
c0de464e:	7a20      	ldrb	r0, [r4, #8]
c0de4650:	2802      	cmp	r0, #2
c0de4652:	d316      	bcc.n	c0de4682 <displayMenuList+0x66>
c0de4654:	2101      	movs	r1, #1
c0de4656:	f8ad 1002 	strh.w	r1, [sp, #2]
c0de465a:	7969      	ldrb	r1, [r5, #5]
c0de465c:	2900      	cmp	r1, #0
c0de465e:	460a      	mov	r2, r1
c0de4660:	bf18      	it	ne
c0de4662:	2201      	movne	r2, #1
c0de4664:	3801      	subs	r0, #1
c0de4666:	f88d 2003 	strb.w	r2, [sp, #3]
c0de466a:	4288      	cmp	r0, r1
c0de466c:	d903      	bls.n	c0de4676 <displayMenuList+0x5a>
c0de466e:	1c90      	adds	r0, r2, #2
c0de4670:	f88d 0003 	strb.w	r0, [sp, #3]
c0de4674:	e000      	b.n	c0de4678 <displayMenuList+0x5c>
c0de4676:	b121      	cbz	r1, c0de4682 <displayMenuList+0x66>
c0de4678:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de467a:	f10d 0102 	add.w	r1, sp, #2
c0de467e:	f7ff f885 	bl	c0de378c <nbgl_layoutAddNavigation>
c0de4682:	f000 f8ff 	bl	c0de4884 <OUTLINED_FUNCTION_4>
c0de4686:	f002 fb10 	bl	c0de6caa <nbgl_refresh>
c0de468a:	b006      	add	sp, #24
c0de468c:	bdb0      	pop	{r4, r5, r7, pc}
c0de468e:	bf00      	nop
c0de4690:	00000121 	.word	0x00000121

c0de4694 <nbgl_stepDrawSwitch>:
c0de4694:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de4698:	b087      	sub	sp, #28
c0de469a:	460d      	mov	r5, r1
c0de469c:	4682      	mov	sl, r0
c0de469e:	a802      	add	r0, sp, #8
c0de46a0:	f000 f8eb 	bl	c0de487a <OUTLINED_FUNCTION_3>
c0de46a4:	4819      	ldr	r0, [pc, #100]	@ (c0de470c <nbgl_stepDrawSwitch+0x78>)
c0de46a6:	990e      	ldr	r1, [sp, #56]	@ 0x38
c0de46a8:	4478      	add	r0, pc
c0de46aa:	f000 f8dd 	bl	c0de4868 <OUTLINED_FUNCTION_2>
c0de46ae:	b168      	cbz	r0, c0de46cc <nbgl_stepDrawSwitch+0x38>
c0de46b0:	4604      	mov	r4, r0
c0de46b2:	6145      	str	r5, [r0, #20]
c0de46b4:	b10f      	cbz	r7, c0de46ba <nbgl_stepDrawSwitch+0x26>
c0de46b6:	f000 f86b 	bl	c0de4790 <OUTLINED_FUNCTION_0>
c0de46ba:	f000 f8e6 	bl	c0de488a <OUTLINED_FUNCTION_5>
c0de46be:	d007      	beq.n	c0de46d0 <nbgl_stepDrawSwitch+0x3c>
c0de46c0:	2802      	cmp	r0, #2
c0de46c2:	d007      	beq.n	c0de46d4 <nbgl_stepDrawSwitch+0x40>
c0de46c4:	2801      	cmp	r0, #1
c0de46c6:	d108      	bne.n	c0de46da <nbgl_stepDrawSwitch+0x46>
c0de46c8:	2002      	movs	r0, #2
c0de46ca:	e004      	b.n	c0de46d6 <nbgl_stepDrawSwitch+0x42>
c0de46cc:	2400      	movs	r4, #0
c0de46ce:	e018      	b.n	c0de4702 <nbgl_stepDrawSwitch+0x6e>
c0de46d0:	2003      	movs	r0, #3
c0de46d2:	e000      	b.n	c0de46d6 <nbgl_stepDrawSwitch+0x42>
c0de46d4:	2001      	movs	r0, #1
c0de46d6:	2500      	movs	r5, #0
c0de46d8:	e000      	b.n	c0de46dc <nbgl_stepDrawSwitch+0x48>
c0de46da:	2000      	movs	r0, #0
c0de46dc:	f88d 0007 	strb.w	r0, [sp, #7]
c0de46e0:	a802      	add	r0, sp, #8
c0de46e2:	f7fe ffef 	bl	c0de36c4 <nbgl_layoutGet>
c0de46e6:	4641      	mov	r1, r8
c0de46e8:	6420      	str	r0, [r4, #64]	@ 0x40
c0de46ea:	f7ff fc61 	bl	c0de3fb0 <nbgl_layoutAddSwitch>
c0de46ee:	b925      	cbnz	r5, c0de46fa <nbgl_stepDrawSwitch+0x66>
c0de46f0:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de46f2:	f10d 0106 	add.w	r1, sp, #6
c0de46f6:	f7ff f849 	bl	c0de378c <nbgl_layoutAddNavigation>
c0de46fa:	f000 f8c3 	bl	c0de4884 <OUTLINED_FUNCTION_4>
c0de46fe:	f002 fad4 	bl	c0de6caa <nbgl_refresh>
c0de4702:	4620      	mov	r0, r4
c0de4704:	b007      	add	sp, #28
c0de4706:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de470a:	bf00      	nop
c0de470c:	fffffe95 	.word	0xfffffe95

c0de4710 <nbgl_stepRelease>:
c0de4710:	b138      	cbz	r0, c0de4722 <nbgl_stepRelease+0x12>
c0de4712:	b510      	push	{r4, lr}
c0de4714:	4604      	mov	r4, r0
c0de4716:	6c00      	ldr	r0, [r0, #64]	@ 0x40
c0de4718:	f7ff fd40 	bl	c0de419c <nbgl_layoutRelease>
c0de471c:	2100      	movs	r1, #0
c0de471e:	6421      	str	r1, [r4, #64]	@ 0x40
c0de4720:	bd10      	pop	{r4, pc}
c0de4722:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
c0de4726:	4770      	bx	lr

c0de4728 <getContextFromLayout>:
c0de4728:	4a08      	ldr	r2, [pc, #32]	@ (c0de474c <getContextFromLayout+0x24>)
c0de472a:	2100      	movs	r1, #0
c0de472c:	29d8      	cmp	r1, #216	@ 0xd8
c0de472e:	bf04      	itt	eq
c0de4730:	2000      	moveq	r0, #0
c0de4732:	4770      	bxeq	lr
c0de4734:	eb09 0302 	add.w	r3, r9, r2
c0de4738:	440b      	add	r3, r1
c0de473a:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
c0de473c:	4283      	cmp	r3, r0
c0de473e:	d001      	beq.n	c0de4744 <getContextFromLayout+0x1c>
c0de4740:	3148      	adds	r1, #72	@ 0x48
c0de4742:	e7f3      	b.n	c0de472c <getContextFromLayout+0x4>
c0de4744:	eb09 0002 	add.w	r0, r9, r2
c0de4748:	4408      	add	r0, r1
c0de474a:	4770      	bx	lr
c0de474c:	0000066c 	.word	0x0000066c

c0de4750 <menuListActionCallback>:
c0de4750:	b510      	push	{r4, lr}
c0de4752:	460c      	mov	r4, r1
c0de4754:	f7ff ffe8 	bl	c0de4728 <getContextFromLayout>
c0de4758:	b1c8      	cbz	r0, c0de478e <menuListActionCallback+0x3e>
c0de475a:	2c04      	cmp	r4, #4
c0de475c:	d006      	beq.n	c0de476c <menuListActionCallback+0x1c>
c0de475e:	2c01      	cmp	r4, #1
c0de4760:	d00a      	beq.n	c0de4778 <menuListActionCallback+0x28>
c0de4762:	b9a4      	cbnz	r4, c0de478e <menuListActionCallback+0x3e>
c0de4764:	7a41      	ldrb	r1, [r0, #9]
c0de4766:	b191      	cbz	r1, c0de478e <menuListActionCallback+0x3e>
c0de4768:	3901      	subs	r1, #1
c0de476a:	e00b      	b.n	c0de4784 <menuListActionCallback+0x34>
c0de476c:	7a41      	ldrb	r1, [r0, #9]
c0de476e:	6802      	ldr	r2, [r0, #0]
c0de4770:	4608      	mov	r0, r1
c0de4772:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de4776:	4710      	bx	r2
c0de4778:	7a02      	ldrb	r2, [r0, #8]
c0de477a:	7a41      	ldrb	r1, [r0, #9]
c0de477c:	3a01      	subs	r2, #1
c0de477e:	428a      	cmp	r2, r1
c0de4780:	dd05      	ble.n	c0de478e <menuListActionCallback+0x3e>
c0de4782:	3101      	adds	r1, #1
c0de4784:	7241      	strb	r1, [r0, #9]
c0de4786:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de478a:	f7ff bf47 	b.w	c0de461c <displayMenuList>
c0de478e:	bd10      	pop	{r4, pc}

c0de4790 <OUTLINED_FUNCTION_0>:
c0de4790:	7838      	ldrb	r0, [r7, #0]
c0de4792:	7879      	ldrb	r1, [r7, #1]
c0de4794:	78ba      	ldrb	r2, [r7, #2]
c0de4796:	78fb      	ldrb	r3, [r7, #3]
c0de4798:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de479c:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de47a0:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de47a4:	6360      	str	r0, [r4, #52]	@ 0x34
c0de47a6:	4638      	mov	r0, r7
c0de47a8:	f810 2f08 	ldrb.w	r2, [r0, #8]!
c0de47ac:	7a79      	ldrb	r1, [r7, #9]
c0de47ae:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de47b2:	7882      	ldrb	r2, [r0, #2]
c0de47b4:	78c3      	ldrb	r3, [r0, #3]
c0de47b6:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de47ba:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de47be:	63e1      	str	r1, [r4, #60]	@ 0x3c
c0de47c0:	4639      	mov	r1, r7
c0de47c2:	f811 3f04 	ldrb.w	r3, [r1, #4]!
c0de47c6:	797a      	ldrb	r2, [r7, #5]
c0de47c8:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de47cc:	788b      	ldrb	r3, [r1, #2]
c0de47ce:	78cd      	ldrb	r5, [r1, #3]
c0de47d0:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
c0de47d4:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de47d8:	63a2      	str	r2, [r4, #56]	@ 0x38
c0de47da:	783a      	ldrb	r2, [r7, #0]
c0de47dc:	787b      	ldrb	r3, [r7, #1]
c0de47de:	78bd      	ldrb	r5, [r7, #2]
c0de47e0:	78fe      	ldrb	r6, [r7, #3]
c0de47e2:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de47e6:	ea45 2506 	orr.w	r5, r5, r6, lsl #8
c0de47ea:	7803      	ldrb	r3, [r0, #0]
c0de47ec:	ea42 4205 	orr.w	r2, r2, r5, lsl #16
c0de47f0:	7885      	ldrb	r5, [r0, #2]
c0de47f2:	78c0      	ldrb	r0, [r0, #3]
c0de47f4:	9204      	str	r2, [sp, #16]
c0de47f6:	7a7a      	ldrb	r2, [r7, #9]
c0de47f8:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
c0de47fc:	ea43 2202 	orr.w	r2, r3, r2, lsl #8
c0de4800:	788b      	ldrb	r3, [r1, #2]
c0de4802:	ea42 4000 	orr.w	r0, r2, r0, lsl #16
c0de4806:	780a      	ldrb	r2, [r1, #0]
c0de4808:	78c9      	ldrb	r1, [r1, #3]
c0de480a:	9006      	str	r0, [sp, #24]
c0de480c:	7978      	ldrb	r0, [r7, #5]
c0de480e:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
c0de4812:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4816:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de481a:	9005      	str	r0, [sp, #20]
c0de481c:	4770      	bx	lr

c0de481e <OUTLINED_FUNCTION_1>:
c0de481e:	7838      	ldrb	r0, [r7, #0]
c0de4820:	7879      	ldrb	r1, [r7, #1]
c0de4822:	78ba      	ldrb	r2, [r7, #2]
c0de4824:	78fb      	ldrb	r3, [r7, #3]
c0de4826:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de482a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de482e:	4639      	mov	r1, r7
c0de4830:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
c0de4834:	f811 2f08 	ldrb.w	r2, [r1, #8]!
c0de4838:	6360      	str	r0, [r4, #52]	@ 0x34
c0de483a:	7a78      	ldrb	r0, [r7, #9]
c0de483c:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de4840:	788a      	ldrb	r2, [r1, #2]
c0de4842:	78c9      	ldrb	r1, [r1, #3]
c0de4844:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de4848:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de484c:	63e0      	str	r0, [r4, #60]	@ 0x3c
c0de484e:	7978      	ldrb	r0, [r7, #5]
c0de4850:	f817 1f04 	ldrb.w	r1, [r7, #4]!
c0de4854:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de4858:	78b9      	ldrb	r1, [r7, #2]
c0de485a:	78fa      	ldrb	r2, [r7, #3]
c0de485c:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de4860:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de4864:	63a0      	str	r0, [r4, #56]	@ 0x38
c0de4866:	4770      	bx	lr

c0de4868 <OUTLINED_FUNCTION_2>:
c0de4868:	f88d 1008 	strb.w	r1, [sp, #8]
c0de486c:	9003      	str	r0, [sp, #12]
c0de486e:	2000      	movs	r0, #0
c0de4870:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de4874:	2001      	movs	r0, #1
c0de4876:	f7ff bd19 	b.w	c0de42ac <getFreeContext>

c0de487a <OUTLINED_FUNCTION_3>:
c0de487a:	2114      	movs	r1, #20
c0de487c:	4698      	mov	r8, r3
c0de487e:	4617      	mov	r7, r2
c0de4880:	f002 bf2a 	b.w	c0de76d8 <__aeabi_memclr>

c0de4884 <OUTLINED_FUNCTION_4>:
c0de4884:	6c20      	ldr	r0, [r4, #64]	@ 0x40
c0de4886:	f7ff bc81 	b.w	c0de418c <nbgl_layoutDraw>

c0de488a <OUTLINED_FUNCTION_5>:
c0de488a:	2501      	movs	r5, #1
c0de488c:	f00a 0003 	and.w	r0, sl, #3
c0de4890:	2803      	cmp	r0, #3
c0de4892:	7025      	strb	r5, [r4, #0]
c0de4894:	7420      	strb	r0, [r4, #16]
c0de4896:	4770      	bx	lr

c0de4898 <nbgl_useCaseHomeAndSettings>:
c0de4898:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de489c:	4607      	mov	r7, r0
c0de489e:	4810      	ldr	r0, [pc, #64]	@ (c0de48e0 <nbgl_useCaseHomeAndSettings+0x48>)
c0de48a0:	f001 fc98 	bl	c0de61d4 <OUTLINED_FUNCTION_0>
c0de48a4:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de48a8:	6425      	str	r5, [r4, #64]	@ 0x40
c0de48aa:	9d06      	ldr	r5, [sp, #24]
c0de48ac:	4628      	mov	r0, r5
c0de48ae:	f002 fc07 	bl	c0de70c0 <pic>
c0de48b2:	6460      	str	r0, [r4, #68]	@ 0x44
c0de48b4:	9807      	ldr	r0, [sp, #28]
c0de48b6:	f002 fc03 	bl	c0de70c0 <pic>
c0de48ba:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de48bc:	f1b8 0fff 	cmp.w	r8, #255	@ 0xff
c0de48c0:	6521      	str	r1, [r4, #80]	@ 0x50
c0de48c2:	9908      	ldr	r1, [sp, #32]
c0de48c4:	e9c4 0112 	strd	r0, r1, [r4, #72]	@ 0x48
c0de48c8:	bf18      	it	ne
c0de48ca:	2d00      	cmpne	r5, #0
c0de48cc:	d103      	bne.n	c0de48d6 <nbgl_useCaseHomeAndSettings+0x3e>
c0de48ce:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de48d2:	f000 b843 	b.w	c0de495c <startUseCaseHome>
c0de48d6:	4640      	mov	r0, r8
c0de48d8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de48dc:	f000 b802 	b.w	c0de48e4 <startUseCaseSettingsAtPage>
c0de48e0:	00000744 	.word	0x00000744

c0de48e4 <startUseCaseSettingsAtPage>:
c0de48e4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de48e6:	b08f      	sub	sp, #60	@ 0x3c
c0de48e8:	4604      	mov	r4, r0
c0de48ea:	a801      	add	r0, sp, #4
c0de48ec:	2138      	movs	r1, #56	@ 0x38
c0de48ee:	f002 fef3 	bl	c0de76d8 <__aeabi_memclr>
c0de48f2:	4e19      	ldr	r6, [pc, #100]	@ (c0de4958 <startUseCaseSettingsAtPage+0x74>)
c0de48f4:	eb09 0006 	add.w	r0, r9, r6
c0de48f8:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de48fc:	280f      	cmp	r0, #15
c0de48fe:	bf1e      	ittt	ne
c0de4900:	eb09 0006 	addne.w	r0, r9, r6
c0de4904:	210e      	movne	r1, #14
c0de4906:	f880 1028 	strbne.w	r1, [r0, #40]	@ 0x28
c0de490a:	eb09 0006 	add.w	r0, r9, r6
c0de490e:	2101      	movs	r1, #1
c0de4910:	2700      	movs	r7, #0
c0de4912:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de4916:	ad01      	add	r5, sp, #4
c0de4918:	eb09 0006 	add.w	r0, r9, r6
c0de491c:	6c40      	ldr	r0, [r0, #68]	@ 0x44
c0de491e:	7a01      	ldrb	r1, [r0, #8]
c0de4920:	428f      	cmp	r7, r1
c0de4922:	d20e      	bcs.n	c0de4942 <startUseCaseSettingsAtPage+0x5e>
c0de4924:	b279      	sxtb	r1, r7
c0de4926:	462a      	mov	r2, r5
c0de4928:	f000 fca6 	bl	c0de5278 <getContentAtIdx>
c0de492c:	f000 fcfe 	bl	c0de532c <getContentNbElement>
c0de4930:	eb09 0106 	add.w	r1, r9, r6
c0de4934:	3701      	adds	r7, #1
c0de4936:	f891 2030 	ldrb.w	r2, [r1, #48]	@ 0x30
c0de493a:	4410      	add	r0, r2
c0de493c:	f881 0030 	strb.w	r0, [r1, #48]	@ 0x30
c0de4940:	e7ea      	b.n	c0de4918 <startUseCaseSettingsAtPage+0x34>
c0de4942:	eb09 0006 	add.w	r0, r9, r6
c0de4946:	2100      	movs	r1, #0
c0de4948:	f880 4031 	strb.w	r4, [r0, #49]	@ 0x31
c0de494c:	2000      	movs	r0, #0
c0de494e:	f000 fef7 	bl	c0de5740 <displaySettingsPage>
c0de4952:	b00f      	add	sp, #60	@ 0x3c
c0de4954:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4956:	bf00      	nop
c0de4958:	00000744 	.word	0x00000744

c0de495c <startUseCaseHome>:
c0de495c:	b510      	push	{r4, lr}
c0de495e:	4821      	ldr	r0, [pc, #132]	@ (c0de49e4 <startUseCaseHome+0x88>)
c0de4960:	eb09 0100 	add.w	r1, r9, r0
c0de4964:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de4968:	290d      	cmp	r1, #13
c0de496a:	d009      	beq.n	c0de4980 <startUseCaseHome+0x24>
c0de496c:	290e      	cmp	r1, #14
c0de496e:	d114      	bne.n	c0de499a <startUseCaseHome+0x3e>
c0de4970:	eb09 0100 	add.w	r1, r9, r0
c0de4974:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de4976:	2102      	movs	r1, #2
c0de4978:	2a00      	cmp	r2, #0
c0de497a:	bf08      	it	eq
c0de497c:	2101      	moveq	r1, #1
c0de497e:	e00d      	b.n	c0de499c <startUseCaseHome+0x40>
c0de4980:	eb09 0200 	add.w	r2, r9, r0
c0de4984:	2102      	movs	r1, #2
c0de4986:	6cd4      	ldr	r4, [r2, #76]	@ 0x4c
c0de4988:	6c53      	ldr	r3, [r2, #68]	@ 0x44
c0de498a:	2c00      	cmp	r4, #0
c0de498c:	bf08      	it	eq
c0de498e:	2101      	moveq	r1, #1
c0de4990:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de4994:	b133      	cbz	r3, c0de49a4 <startUseCaseHome+0x48>
c0de4996:	3101      	adds	r1, #1
c0de4998:	e000      	b.n	c0de499c <startUseCaseHome+0x40>
c0de499a:	2100      	movs	r1, #0
c0de499c:	eb09 0200 	add.w	r2, r9, r0
c0de49a0:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de49a4:	eb09 0200 	add.w	r2, r9, r0
c0de49a8:	210c      	movs	r1, #12
c0de49aa:	e9d2 3411 	ldrd	r3, r4, [r2, #68]	@ 0x44
c0de49ae:	f882 1028 	strb.w	r1, [r2, #40]	@ 0x28
c0de49b2:	2103      	movs	r1, #3
c0de49b4:	2b00      	cmp	r3, #0
c0de49b6:	bf08      	it	eq
c0de49b8:	2102      	moveq	r1, #2
c0de49ba:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de49be:	b124      	cbz	r4, c0de49ca <startUseCaseHome+0x6e>
c0de49c0:	3101      	adds	r1, #1
c0de49c2:	eb09 0200 	add.w	r2, r9, r0
c0de49c6:	f882 1030 	strb.w	r1, [r2, #48]	@ 0x30
c0de49ca:	eb09 0200 	add.w	r2, r9, r0
c0de49ce:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de49d0:	b11a      	cbz	r2, c0de49da <startUseCaseHome+0x7e>
c0de49d2:	4448      	add	r0, r9
c0de49d4:	3101      	adds	r1, #1
c0de49d6:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de49da:	2000      	movs	r0, #0
c0de49dc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de49e0:	f000 bf9e 	b.w	c0de5920 <displayHomePage>
c0de49e4:	00000744 	.word	0x00000744

c0de49e8 <nbgl_useCaseReview>:
c0de49e8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
c0de49ea:	4614      	mov	r4, r2
c0de49ec:	460a      	mov	r2, r1
c0de49ee:	4601      	mov	r1, r0
c0de49f0:	9808      	ldr	r0, [sp, #32]
c0de49f2:	9003      	str	r0, [sp, #12]
c0de49f4:	9807      	ldr	r0, [sp, #28]
c0de49f6:	9002      	str	r0, [sp, #8]
c0de49f8:	9806      	ldr	r0, [sp, #24]
c0de49fa:	e9cd 3000 	strd	r3, r0, [sp]
c0de49fe:	2002      	movs	r0, #2
c0de4a00:	4623      	mov	r3, r4
c0de4a02:	f000 f801 	bl	c0de4a08 <useCaseReview>
c0de4a06:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

c0de4a08 <useCaseReview>:
c0de4a08:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de4a0c:	4607      	mov	r7, r0
c0de4a0e:	4811      	ldr	r0, [pc, #68]	@ (c0de4a54 <useCaseReview+0x4c>)
c0de4a10:	4688      	mov	r8, r1
c0de4a12:	2140      	movs	r1, #64	@ 0x40
c0de4a14:	461d      	mov	r5, r3
c0de4a16:	4614      	mov	r4, r2
c0de4a18:	f001 fbf1 	bl	c0de61fe <OUTLINED_FUNCTION_2>
c0de4a1c:	9808      	ldr	r0, [sp, #32]
c0de4a1e:	64f0      	str	r0, [r6, #76]	@ 0x4c
c0de4a20:	9807      	ldr	r0, [sp, #28]
c0de4a22:	64b0      	str	r0, [r6, #72]	@ 0x48
c0de4a24:	9906      	ldr	r1, [sp, #24]
c0de4a26:	e9c6 450f 	strd	r4, r5, [r6, #60]	@ 0x3c
c0de4a2a:	6471      	str	r1, [r6, #68]	@ 0x44
c0de4a2c:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4a2e:	f8c6 802c 	str.w	r8, [r6, #44]	@ 0x2c
c0de4a32:	f886 7028 	strb.w	r7, [r6, #40]	@ 0x28
c0de4a36:	63b1      	str	r1, [r6, #56]	@ 0x38
c0de4a38:	2104      	movs	r1, #4
c0de4a3a:	2800      	cmp	r0, #0
c0de4a3c:	bf08      	it	eq
c0de4a3e:	2103      	moveq	r1, #3
c0de4a40:	7a20      	ldrb	r0, [r4, #8]
c0de4a42:	4408      	add	r0, r1
c0de4a44:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de4a48:	2000      	movs	r0, #0
c0de4a4a:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de4a4e:	f000 b8b1 	b.w	c0de4bb4 <displayReviewPage>
c0de4a52:	bf00      	nop
c0de4a54:	00000744 	.word	0x00000744

c0de4a58 <nbgl_useCaseAdvancedReview>:
c0de4a58:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4a5c:	b088      	sub	sp, #32
c0de4a5e:	4688      	mov	r8, r1
c0de4a60:	e9dd a113 	ldrd	sl, r1, [sp, #76]	@ 0x4c
c0de4a64:	4615      	mov	r5, r2
c0de4a66:	e9dd 2b10 	ldrd	r2, fp, [sp, #64]	@ 0x40
c0de4a6a:	4604      	mov	r4, r0
c0de4a6c:	f1ba 0f00 	cmp.w	sl, #0
c0de4a70:	d039      	beq.n	c0de4ae6 <nbgl_useCaseAdvancedReview+0x8e>
c0de4a72:	f8da 6000 	ldr.w	r6, [sl]
c0de4a76:	b92e      	cbnz	r6, c0de4a84 <nbgl_useCaseAdvancedReview+0x2c>
c0de4a78:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4a7c:	b910      	cbnz	r0, c0de4a84 <nbgl_useCaseAdvancedReview+0x2c>
c0de4a7e:	f8da 0018 	ldr.w	r0, [sl, #24]
c0de4a82:	b380      	cbz	r0, c0de4ae6 <nbgl_useCaseAdvancedReview+0x8e>
c0de4a84:	4822      	ldr	r0, [pc, #136]	@ (c0de4b10 <nbgl_useCaseAdvancedReview+0xb8>)
c0de4a86:	e9cd 4106 	strd	r4, r1, [sp, #24]
c0de4a8a:	2128      	movs	r1, #40	@ 0x28
c0de4a8c:	9605      	str	r6, [sp, #20]
c0de4a8e:	461f      	mov	r7, r3
c0de4a90:	4616      	mov	r6, r2
c0de4a92:	eb09 0400 	add.w	r4, r9, r0
c0de4a96:	4620      	mov	r0, r4
c0de4a98:	f002 fe1e 	bl	c0de76d8 <__aeabi_memclr>
c0de4a9c:	491c      	ldr	r1, [pc, #112]	@ (c0de4b10 <nbgl_useCaseAdvancedReview+0xb8>)
c0de4a9e:	2002      	movs	r0, #2
c0de4aa0:	46b4      	mov	ip, r6
c0de4aa2:	462b      	mov	r3, r5
c0de4aa4:	f809 0001 	strb.w	r0, [r9, r1]
c0de4aa8:	9905      	ldr	r1, [sp, #20]
c0de4aaa:	2040      	movs	r0, #64	@ 0x40
c0de4aac:	2908      	cmp	r1, #8
c0de4aae:	bf08      	it	eq
c0de4ab0:	2080      	moveq	r0, #128	@ 0x80
c0de4ab2:	9906      	ldr	r1, [sp, #24]
c0de4ab4:	e9c4 6b05 	strd	r6, fp, [r4, #20]
c0de4ab8:	e9c4 5703 	strd	r5, r7, [r4, #12]
c0de4abc:	f8c4 a01c 	str.w	sl, [r4, #28]
c0de4ac0:	9e07      	ldr	r6, [sp, #28]
c0de4ac2:	4301      	orrs	r1, r0
c0de4ac4:	9807      	ldr	r0, [sp, #28]
c0de4ac6:	e9c4 1801 	strd	r1, r8, [r4, #4]
c0de4aca:	6220      	str	r0, [r4, #32]
c0de4acc:	f89a 0000 	ldrb.w	r0, [sl]
c0de4ad0:	f010 0f16 	tst.w	r0, #22
c0de4ad4:	d102      	bne.n	c0de4adc <nbgl_useCaseAdvancedReview+0x84>
c0de4ad6:	f8da 0014 	ldr.w	r0, [sl, #20]
c0de4ada:	b188      	cbz	r0, c0de4b00 <nbgl_useCaseAdvancedReview+0xa8>
c0de4adc:	b008      	add	sp, #32
c0de4ade:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4ae2:	f000 b817 	b.w	c0de4b14 <displayInitialWarning>
c0de4ae6:	e9cd 3200 	strd	r3, r2, [sp]
c0de4aea:	e9cd b102 	strd	fp, r1, [sp, #8]
c0de4aee:	2002      	movs	r0, #2
c0de4af0:	4621      	mov	r1, r4
c0de4af2:	4642      	mov	r2, r8
c0de4af4:	462b      	mov	r3, r5
c0de4af6:	f7ff ff87 	bl	c0de4a08 <useCaseReview>
c0de4afa:	b008      	add	sp, #32
c0de4afc:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4b00:	2002      	movs	r0, #2
c0de4b02:	4642      	mov	r2, r8
c0de4b04:	463d      	mov	r5, r7
c0de4b06:	e9cd 7c00 	strd	r7, ip, [sp]
c0de4b0a:	e9cd b602 	strd	fp, r6, [sp, #8]
c0de4b0e:	e7f2      	b.n	c0de4af6 <nbgl_useCaseAdvancedReview+0x9e>
c0de4b10:	00000744 	.word	0x00000744

c0de4b14 <displayInitialWarning>:
c0de4b14:	4803      	ldr	r0, [pc, #12]	@ (c0de4b24 <displayInitialWarning+0x10>)
c0de4b16:	f44f 7100 	mov.w	r1, #512	@ 0x200
c0de4b1a:	4448      	add	r0, r9
c0de4b1c:	84c1      	strh	r1, [r0, #38]	@ 0x26
c0de4b1e:	f000 bfeb 	b.w	c0de5af8 <displayWarningStep>
c0de4b22:	bf00      	nop
c0de4b24:	00000744 	.word	0x00000744

c0de4b28 <nbgl_useCaseReviewBlindSigning>:
c0de4b28:	b5b0      	push	{r4, r5, r7, lr}
c0de4b2a:	b086      	sub	sp, #24
c0de4b2c:	4d06      	ldr	r5, [pc, #24]	@ (c0de4b48 <nbgl_useCaseReviewBlindSigning+0x20>)
c0de4b2e:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de4b30:	447d      	add	r5, pc
c0de4b32:	e9cd 5403 	strd	r5, r4, [sp, #12]
c0de4b36:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de4b38:	9401      	str	r4, [sp, #4]
c0de4b3a:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de4b3c:	9400      	str	r4, [sp, #0]
c0de4b3e:	f7ff ff8b 	bl	c0de4a58 <nbgl_useCaseAdvancedReview>
c0de4b42:	b006      	add	sp, #24
c0de4b44:	bdb0      	pop	{r4, r5, r7, pc}
c0de4b46:	bf00      	nop
c0de4b48:	00004010 	.word	0x00004010

c0de4b4c <nbgl_useCaseAddressReview>:
c0de4b4c:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4b50:	f8df 805c 	ldr.w	r8, [pc, #92]	@ c0de4bb0 <nbgl_useCaseAddressReview+0x64>
c0de4b54:	460c      	mov	r4, r1
c0de4b56:	4607      	mov	r7, r0
c0de4b58:	2140      	movs	r1, #64	@ 0x40
c0de4b5a:	469a      	mov	sl, r3
c0de4b5c:	4616      	mov	r6, r2
c0de4b5e:	eb09 0508 	add.w	r5, r9, r8
c0de4b62:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de4b66:	f002 fdb7 	bl	c0de76d8 <__aeabi_memclr>
c0de4b6a:	2004      	movs	r0, #4
c0de4b6c:	652f      	str	r7, [r5, #80]	@ 0x50
c0de4b6e:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de4b72:	9808      	ldr	r0, [sp, #32]
c0de4b74:	e9c5 6a10 	strd	r6, sl, [r5, #64]	@ 0x40
c0de4b78:	64a8      	str	r0, [r5, #72]	@ 0x48
c0de4b7a:	9909      	ldr	r1, [sp, #36]	@ 0x24
c0de4b7c:	63a9      	str	r1, [r5, #56]	@ 0x38
c0de4b7e:	2105      	movs	r1, #5
c0de4b80:	2800      	cmp	r0, #0
c0de4b82:	bf08      	it	eq
c0de4b84:	2104      	moveq	r1, #4
c0de4b86:	f885 1030 	strb.w	r1, [r5, #48]	@ 0x30
c0de4b8a:	b15c      	cbz	r4, c0de4ba4 <nbgl_useCaseAddressReview+0x58>
c0de4b8c:	4620      	mov	r0, r4
c0de4b8e:	eb09 0508 	add.w	r5, r9, r8
c0de4b92:	f002 fa95 	bl	c0de70c0 <pic>
c0de4b96:	63e8      	str	r0, [r5, #60]	@ 0x3c
c0de4b98:	f895 0030 	ldrb.w	r0, [r5, #48]	@ 0x30
c0de4b9c:	7a21      	ldrb	r1, [r4, #8]
c0de4b9e:	4408      	add	r0, r1
c0de4ba0:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de4ba4:	2000      	movs	r0, #0
c0de4ba6:	e8bd 45f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de4baa:	f000 b803 	b.w	c0de4bb4 <displayReviewPage>
c0de4bae:	bf00      	nop
c0de4bb0:	00000744 	.word	0x00000744

c0de4bb4 <displayReviewPage>:
c0de4bb4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de4bb6:	b08b      	sub	sp, #44	@ 0x2c
c0de4bb8:	4e5d      	ldr	r6, [pc, #372]	@ (c0de4d30 <displayReviewPage+0x17c>)
c0de4bba:	4604      	mov	r4, r0
c0de4bbc:	2000      	movs	r0, #0
c0de4bbe:	2201      	movs	r2, #1
c0de4bc0:	2702      	movs	r7, #2
c0de4bc2:	e9cd 0009 	strd	r0, r0, [sp, #36]	@ 0x24
c0de4bc6:	e9cd 0007 	strd	r0, r0, [sp, #28]
c0de4bca:	eb09 0306 	add.w	r3, r9, r6
c0de4bce:	6358      	str	r0, [r3, #52]	@ 0x34
c0de4bd0:	6c98      	ldr	r0, [r3, #72]	@ 0x48
c0de4bd2:	2800      	cmp	r0, #0
c0de4bd4:	bf08      	it	eq
c0de4bd6:	22ff      	moveq	r2, #255	@ 0xff
c0de4bd8:	bf08      	it	eq
c0de4bda:	2701      	moveq	r7, #1
c0de4bdc:	f993 1031 	ldrsb.w	r1, [r3, #49]	@ 0x31
c0de4be0:	f893 3030 	ldrb.w	r3, [r3, #48]	@ 0x30
c0de4be4:	1e9d      	subs	r5, r3, #2
c0de4be6:	b2ed      	uxtb	r5, r5
c0de4be8:	42a9      	cmp	r1, r5
c0de4bea:	da06      	bge.n	c0de4bfa <displayReviewPage+0x46>
c0de4bec:	42b9      	cmp	r1, r7
c0de4bee:	da0b      	bge.n	c0de4c08 <displayReviewPage+0x54>
c0de4bf0:	2900      	cmp	r1, #0
c0de4bf2:	d041      	beq.n	c0de4c78 <displayReviewPage+0xc4>
c0de4bf4:	428a      	cmp	r2, r1
c0de4bf6:	d044      	beq.n	c0de4c82 <displayReviewPage+0xce>
c0de4bf8:	e044      	b.n	c0de4c84 <displayReviewPage+0xd0>
c0de4bfa:	d110      	bne.n	c0de4c1e <displayReviewPage+0x6a>
c0de4bfc:	a908      	add	r1, sp, #32
c0de4bfe:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4c00:	2001      	movs	r0, #1
c0de4c02:	f000 ffe1 	bl	c0de5bc8 <getLastPageInfo>
c0de4c06:	e03d      	b.n	c0de4c84 <displayReviewPage+0xd0>
c0de4c08:	eb09 0006 	add.w	r0, r9, r6
c0de4c0c:	6d05      	ldr	r5, [r0, #80]	@ 0x50
c0de4c0e:	b18d      	cbz	r5, c0de4c34 <displayReviewPage+0x80>
c0de4c10:	42b9      	cmp	r1, r7
c0de4c12:	d10f      	bne.n	c0de4c34 <displayReviewPage+0x80>
c0de4c14:	9509      	str	r5, [sp, #36]	@ 0x24
c0de4c16:	4847      	ldr	r0, [pc, #284]	@ (c0de4d34 <displayReviewPage+0x180>)
c0de4c18:	4478      	add	r0, pc
c0de4c1a:	900a      	str	r0, [sp, #40]	@ 0x28
c0de4c1c:	e033      	b.n	c0de4c86 <displayReviewPage+0xd2>
c0de4c1e:	1e58      	subs	r0, r3, #1
c0de4c20:	b2c0      	uxtb	r0, r0
c0de4c22:	4281      	cmp	r1, r0
c0de4c24:	d12e      	bne.n	c0de4c84 <displayReviewPage+0xd0>
c0de4c26:	a908      	add	r1, sp, #32
c0de4c28:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4c2a:	2000      	movs	r0, #0
c0de4c2c:	2500      	movs	r5, #0
c0de4c2e:	f000 ffcb 	bl	c0de5bc8 <getLastPageInfo>
c0de4c32:	e028      	b.n	c0de4c86 <displayReviewPage+0xd2>
c0de4c34:	eb09 0006 	add.w	r0, r9, r6
c0de4c38:	f890 202c 	ldrb.w	r2, [r0, #44]	@ 0x2c
c0de4c3c:	06d2      	lsls	r2, r2, #27
c0de4c3e:	d535      	bpl.n	c0de4cac <displayReviewPage+0xf8>
c0de4c40:	f890 0059 	ldrb.w	r0, [r0, #89]	@ 0x59
c0de4c44:	bb90      	cbnz	r0, c0de4cac <displayReviewPage+0xf8>
c0de4c46:	42b9      	cmp	r1, r7
c0de4c48:	dc05      	bgt.n	c0de4c56 <displayReviewPage+0xa2>
c0de4c4a:	eb09 0006 	add.w	r0, r9, r6
c0de4c4e:	f890 005a 	ldrb.w	r0, [r0, #90]	@ 0x5a
c0de4c52:	2808      	cmp	r0, #8
c0de4c54:	d12a      	bne.n	c0de4cac <displayReviewPage+0xf8>
c0de4c56:	2000      	movs	r0, #0
c0de4c58:	9006      	str	r0, [sp, #24]
c0de4c5a:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de4c5e:	eb09 0006 	add.w	r0, r9, r6
c0de4c62:	f890 2058 	ldrb.w	r2, [r0, #88]	@ 0x58
c0de4c66:	f004 0008 	and.w	r0, r4, #8
c0de4c6a:	2a01      	cmp	r2, #1
c0de4c6c:	d001      	beq.n	c0de4c72 <displayReviewPage+0xbe>
c0de4c6e:	2901      	cmp	r1, #1
c0de4c70:	db43      	blt.n	c0de4cfa <displayReviewPage+0x146>
c0de4c72:	f040 0003 	orr.w	r0, r0, #3
c0de4c76:	e042      	b.n	c0de4cfe <displayReviewPage+0x14a>
c0de4c78:	eb09 0006 	add.w	r0, r9, r6
c0de4c7c:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de4c80:	9108      	str	r1, [sp, #32]
c0de4c82:	900a      	str	r0, [sp, #40]	@ 0x28
c0de4c84:	2500      	movs	r5, #0
c0de4c86:	2000      	movs	r0, #0
c0de4c88:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
c0de4c8a:	9908      	ldr	r1, [sp, #32]
c0de4c8c:	4e2e      	ldr	r6, [pc, #184]	@ (c0de4d48 <displayReviewPage+0x194>)
c0de4c8e:	b2c0      	uxtb	r0, r0
c0de4c90:	2300      	movs	r3, #0
c0de4c92:	9002      	str	r0, [sp, #8]
c0de4c94:	4620      	mov	r0, r4
c0de4c96:	447e      	add	r6, pc
c0de4c98:	e9cd 6300 	strd	r6, r3, [sp]
c0de4c9c:	462b      	mov	r3, r5
c0de4c9e:	f000 f875 	bl	c0de4d8c <drawStep>
c0de4ca2:	b00b      	add	sp, #44	@ 0x2c
c0de4ca4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de4ca8:	f001 bfff 	b.w	c0de6caa <nbgl_refresh>
c0de4cac:	2200      	movs	r2, #0
c0de4cae:	eb09 0006 	add.w	r0, r9, r6
c0de4cb2:	1bcf      	subs	r7, r1, r7
c0de4cb4:	f10d 0c0c 	add.w	ip, sp, #12
c0de4cb8:	f880 2059 	strb.w	r2, [r0, #89]	@ 0x59
c0de4cbc:	f88d 200c 	strb.w	r2, [sp, #12]
c0de4cc0:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de4cc2:	ab08      	add	r3, sp, #32
c0de4cc4:	aa07      	add	r2, sp, #28
c0de4cc6:	2d00      	cmp	r5, #0
c0de4cc8:	e88d 100c 	stmia.w	sp, {r2, r3, ip}
c0de4ccc:	bf18      	it	ne
c0de4cce:	3f01      	subne	r7, #1
c0de4cd0:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4cd2:	b2f9      	uxtb	r1, r7
c0de4cd4:	ab09      	add	r3, sp, #36	@ 0x24
c0de4cd6:	f000 fcb7 	bl	c0de5648 <getPairData>
c0de4cda:	9807      	ldr	r0, [sp, #28]
c0de4cdc:	b140      	cbz	r0, c0de4cf0 <displayReviewPage+0x13c>
c0de4cde:	eb09 0006 	add.w	r0, r9, r6
c0de4ce2:	f880 705b 	strb.w	r7, [r0, #91]	@ 0x5b
c0de4ce6:	4917      	ldr	r1, [pc, #92]	@ (c0de4d44 <displayReviewPage+0x190>)
c0de4ce8:	4479      	add	r1, pc
c0de4cea:	6341      	str	r1, [r0, #52]	@ 0x34
c0de4cec:	2001      	movs	r0, #1
c0de4cee:	e002      	b.n	c0de4cf6 <displayReviewPage+0x142>
c0de4cf0:	f89d 000c 	ldrb.w	r0, [sp, #12]
c0de4cf4:	0040      	lsls	r0, r0, #1
c0de4cf6:	9d09      	ldr	r5, [sp, #36]	@ 0x24
c0de4cf8:	e7c6      	b.n	c0de4c88 <displayReviewPage+0xd4>
c0de4cfa:	f040 0001 	orr.w	r0, r0, #1
c0de4cfe:	490e      	ldr	r1, [pc, #56]	@ (c0de4d38 <displayReviewPage+0x184>)
c0de4d00:	2200      	movs	r2, #0
c0de4d02:	4479      	add	r1, pc
c0de4d04:	9103      	str	r1, [sp, #12]
c0de4d06:	490d      	ldr	r1, [pc, #52]	@ (c0de4d3c <displayReviewPage+0x188>)
c0de4d08:	4479      	add	r1, pc
c0de4d0a:	9105      	str	r1, [sp, #20]
c0de4d0c:	2100      	movs	r1, #0
c0de4d0e:	9100      	str	r1, [sp, #0]
c0de4d10:	490b      	ldr	r1, [pc, #44]	@ (c0de4d40 <displayReviewPage+0x18c>)
c0de4d12:	ab03      	add	r3, sp, #12
c0de4d14:	4479      	add	r1, pc
c0de4d16:	f7ff fbd5 	bl	c0de44c4 <nbgl_stepDrawCenteredInfo>
c0de4d1a:	eb09 0406 	add.w	r4, r9, r6
c0de4d1e:	f001 ffc4 	bl	c0de6caa <nbgl_refresh>
c0de4d22:	2001      	movs	r0, #1
c0de4d24:	f884 7032 	strb.w	r7, [r4, #50]	@ 0x32
c0de4d28:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de4d2c:	b00b      	add	sp, #44	@ 0x2c
c0de4d2e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de4d30:	00000744 	.word	0x00000744
c0de4d34:	00003027 	.word	0x00003027
c0de4d38:	00002d0b 	.word	0x00002d0b
c0de4d3c:	00002b1a 	.word	0x00002b1a
c0de4d40:	000010bd 	.word	0x000010bd
c0de4d44:	000011a1 	.word	0x000011a1
c0de4d48:	00001267 	.word	0x00001267

c0de4d4c <nbgl_useCaseStatus>:
c0de4d4c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de4d4e:	4605      	mov	r5, r0
c0de4d50:	480c      	ldr	r0, [pc, #48]	@ (c0de4d84 <nbgl_useCaseStatus+0x38>)
c0de4d52:	2140      	movs	r1, #64	@ 0x40
c0de4d54:	4614      	mov	r4, r2
c0de4d56:	f001 fa52 	bl	c0de61fe <OUTLINED_FUNCTION_2>
c0de4d5a:	2009      	movs	r0, #9
c0de4d5c:	6374      	str	r4, [r6, #52]	@ 0x34
c0de4d5e:	462a      	mov	r2, r5
c0de4d60:	2300      	movs	r3, #0
c0de4d62:	f886 0028 	strb.w	r0, [r6, #40]	@ 0x28
c0de4d66:	2001      	movs	r0, #1
c0de4d68:	f886 0030 	strb.w	r0, [r6, #48]	@ 0x30
c0de4d6c:	2000      	movs	r0, #0
c0de4d6e:	4906      	ldr	r1, [pc, #24]	@ (c0de4d88 <nbgl_useCaseStatus+0x3c>)
c0de4d70:	9002      	str	r0, [sp, #8]
c0de4d72:	4479      	add	r1, pc
c0de4d74:	e9cd 1000 	strd	r1, r0, [sp]
c0de4d78:	2040      	movs	r0, #64	@ 0x40
c0de4d7a:	2100      	movs	r1, #0
c0de4d7c:	f000 f806 	bl	c0de4d8c <drawStep>
c0de4d80:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de4d82:	bf00      	nop
c0de4d84:	00000744 	.word	0x00000744
c0de4d88:	0000019f 	.word	0x0000019f

c0de4d8c <drawStep>:
c0de4d8c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4d90:	b09a      	sub	sp, #104	@ 0x68
c0de4d92:	4688      	mov	r8, r1
c0de4d94:	4604      	mov	r4, r0
c0de4d96:	a80c      	add	r0, sp, #48	@ 0x30
c0de4d98:	2138      	movs	r1, #56	@ 0x38
c0de4d9a:	461d      	mov	r5, r3
c0de4d9c:	4616      	mov	r6, r2
c0de4d9e:	f002 fc9b 	bl	c0de76d8 <__aeabi_memclr>
c0de4da2:	2700      	movs	r7, #0
c0de4da4:	e9cd 770a 	strd	r7, r7, [sp, #40]	@ 0x28
c0de4da8:	4856      	ldr	r0, [pc, #344]	@ (c0de4f04 <drawStep+0x178>)
c0de4daa:	4478      	add	r0, pc
c0de4dac:	f002 f988 	bl	c0de70c0 <pic>
c0de4db0:	f8df b14c 	ldr.w	fp, [pc, #332]	@ c0de4f00 <drawStep+0x174>
c0de4db4:	f640 31b8 	movw	r1, #3000	@ 0xbb8
c0de4db8:	9709      	str	r7, [sp, #36]	@ 0x24
c0de4dba:	e9cd 0107 	strd	r0, r1, [sp, #28]
c0de4dbe:	eb09 000b 	add.w	r0, r9, fp
c0de4dc2:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de4dc6:	2802      	cmp	r0, #2
c0de4dc8:	d30b      	bcc.n	c0de4de2 <drawStep+0x56>
c0de4dca:	eb09 010b 	add.w	r1, r9, fp
c0de4dce:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de4dd2:	b129      	cbz	r1, c0de4de0 <drawStep+0x54>
c0de4dd4:	3801      	subs	r0, #1
c0de4dd6:	2703      	movs	r7, #3
c0de4dd8:	4288      	cmp	r0, r1
c0de4dda:	bf08      	it	eq
c0de4ddc:	2702      	moveq	r7, #2
c0de4dde:	e000      	b.n	c0de4de2 <drawStep+0x56>
c0de4de0:	2701      	movs	r7, #1
c0de4de2:	eb09 000b 	add.w	r0, r9, fp
c0de4de6:	ea47 0204 	orr.w	r2, r7, r4
c0de4dea:	f890 1058 	ldrb.w	r1, [r0, #88]	@ 0x58
c0de4dee:	4614      	mov	r4, r2
c0de4df0:	2901      	cmp	r1, #1
c0de4df2:	bf88      	it	hi
c0de4df4:	f044 0402 	orrhi.w	r4, r4, #2
c0de4df8:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de4dfa:	2900      	cmp	r1, #0
c0de4dfc:	bf08      	it	eq
c0de4dfe:	4614      	moveq	r4, r2
c0de4e00:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4e04:	2806      	cmp	r0, #6
c0de4e06:	f040 0108 	orr.w	r1, r0, #8
c0de4e0a:	bf18      	it	ne
c0de4e0c:	4614      	movne	r4, r2
c0de4e0e:	2909      	cmp	r1, #9
c0de4e10:	bf0c      	ite	eq
c0de4e12:	f10d 0a1c 	addeq.w	sl, sp, #28
c0de4e16:	f04f 0a00 	movne.w	sl, #0
c0de4e1a:	280a      	cmp	r0, #10
c0de4e1c:	d105      	bne.n	c0de4e2a <drawStep+0x9e>
c0de4e1e:	eb09 000b 	add.w	r0, r9, fp
c0de4e22:	6cc0      	ldr	r0, [r0, #76]	@ 0x4c
c0de4e24:	b108      	cbz	r0, c0de4e2a <drawStep+0x9e>
c0de4e26:	f7ff fc73 	bl	c0de4710 <nbgl_stepRelease>
c0de4e2a:	9f23      	ldr	r7, [sp, #140]	@ 0x8c
c0de4e2c:	b1b6      	cbz	r6, c0de4e5c <drawStep+0xd0>
c0de4e2e:	9922      	ldr	r1, [sp, #136]	@ 0x88
c0de4e30:	f1b8 0f00 	cmp.w	r8, #0
c0de4e34:	d12c      	bne.n	c0de4e90 <drawStep+0x104>
c0de4e36:	9824      	ldr	r0, [sp, #144]	@ 0x90
c0de4e38:	2802      	cmp	r0, #2
c0de4e3a:	d029      	beq.n	c0de4e90 <drawStep+0x104>
c0de4e3c:	2201      	movs	r2, #1
c0de4e3e:	4633      	mov	r3, r6
c0de4e40:	2801      	cmp	r0, #1
c0de4e42:	bf08      	it	eq
c0de4e44:	2202      	moveq	r2, #2
c0de4e46:	4620      	mov	r0, r4
c0de4e48:	2d00      	cmp	r5, #0
c0de4e4a:	bf08      	it	eq
c0de4e4c:	462a      	moveq	r2, r5
c0de4e4e:	e9cd 5200 	strd	r5, r2, [sp]
c0de4e52:	9702      	str	r7, [sp, #8]
c0de4e54:	4652      	mov	r2, sl
c0de4e56:	f7ff f9ef 	bl	c0de4238 <nbgl_stepDrawText>
c0de4e5a:	e043      	b.n	c0de4ee4 <drawStep+0x158>
c0de4e5c:	eb09 000b 	add.w	r0, r9, fp
c0de4e60:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de4e64:	a903      	add	r1, sp, #12
c0de4e66:	aa0c      	add	r2, sp, #48	@ 0x30
c0de4e68:	f000 fbaa 	bl	c0de55c0 <getContentElemAtIdx>
c0de4e6c:	b330      	cbz	r0, c0de4ebc <drawStep+0x130>
c0de4e6e:	7801      	ldrb	r1, [r0, #0]
c0de4e70:	2400      	movs	r4, #0
c0de4e72:	290a      	cmp	r1, #10
c0de4e74:	d024      	beq.n	c0de4ec0 <drawStep+0x134>
c0de4e76:	2909      	cmp	r1, #9
c0de4e78:	d135      	bne.n	c0de4ee6 <drawStep+0x15a>
c0de4e7a:	f001 f9d0 	bl	c0de621e <OUTLINED_FUNCTION_5>
c0de4e7e:	4922      	ldr	r1, [pc, #136]	@ (c0de4f08 <drawStep+0x17c>)
c0de4e80:	4479      	add	r1, pc
c0de4e82:	910a      	str	r1, [sp, #40]	@ 0x28
c0de4e84:	7941      	ldrb	r1, [r0, #5]
c0de4e86:	7980      	ldrb	r0, [r0, #6]
c0de4e88:	f88d 002d 	strb.w	r0, [sp, #45]	@ 0x2d
c0de4e8c:	1c48      	adds	r0, r1, #1
c0de4e8e:	e020      	b.n	c0de4ed2 <drawStep+0x146>
c0de4e90:	2000      	movs	r0, #0
c0de4e92:	9603      	str	r6, [sp, #12]
c0de4e94:	f8cd 8014 	str.w	r8, [sp, #20]
c0de4e98:	9504      	str	r5, [sp, #16]
c0de4e9a:	4652      	mov	r2, sl
c0de4e9c:	f88d 0018 	strb.w	r0, [sp, #24]
c0de4ea0:	eb09 000b 	add.w	r0, r9, fp
c0de4ea4:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de4ea6:	4328      	orrs	r0, r5
c0de4ea8:	bf18      	it	ne
c0de4eaa:	2001      	movne	r0, #1
c0de4eac:	f88d 0019 	strb.w	r0, [sp, #25]
c0de4eb0:	9700      	str	r7, [sp, #0]
c0de4eb2:	ab03      	add	r3, sp, #12
c0de4eb4:	4620      	mov	r0, r4
c0de4eb6:	f7ff fb05 	bl	c0de44c4 <nbgl_stepDrawCenteredInfo>
c0de4eba:	e013      	b.n	c0de4ee4 <drawStep+0x158>
c0de4ebc:	2400      	movs	r4, #0
c0de4ebe:	e012      	b.n	c0de4ee6 <drawStep+0x15a>
c0de4ec0:	f001 f9ad 	bl	c0de621e <OUTLINED_FUNCTION_5>
c0de4ec4:	f88d 402d 	strb.w	r4, [sp, #45]	@ 0x2d
c0de4ec8:	4910      	ldr	r1, [pc, #64]	@ (c0de4f0c <drawStep+0x180>)
c0de4eca:	7a00      	ldrb	r0, [r0, #8]
c0de4ecc:	4479      	add	r1, pc
c0de4ece:	3001      	adds	r0, #1
c0de4ed0:	910a      	str	r1, [sp, #40]	@ 0x28
c0de4ed2:	f88d 002c 	strb.w	r0, [sp, #44]	@ 0x2c
c0de4ed6:	4651      	mov	r1, sl
c0de4ed8:	463b      	mov	r3, r7
c0de4eda:	480d      	ldr	r0, [pc, #52]	@ (c0de4f10 <drawStep+0x184>)
c0de4edc:	aa0a      	add	r2, sp, #40	@ 0x28
c0de4ede:	4478      	add	r0, pc
c0de4ee0:	f7ff fb80 	bl	c0de45e4 <nbgl_stepDrawMenuList>
c0de4ee4:	4604      	mov	r4, r0
c0de4ee6:	eb09 000b 	add.w	r0, r9, fp
c0de4eea:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4eee:	280a      	cmp	r0, #10
c0de4ef0:	bf04      	itt	eq
c0de4ef2:	eb09 000b 	addeq.w	r0, r9, fp
c0de4ef6:	64c4      	streq	r4, [r0, #76]	@ 0x4c
c0de4ef8:	b01a      	add	sp, #104	@ 0x68
c0de4efa:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4efe:	bf00      	nop
c0de4f00:	00000744 	.word	0x00000744
c0de4f04:	000012df 	.word	0x000012df
c0de4f08:	00001219 	.word	0x00001219
c0de4f0c:	000011cd 	.word	0x000011cd
c0de4f10:	0000121f 	.word	0x0000121f

c0de4f14 <statusButtonCallback>:
c0de4f14:	f041 0004 	orr.w	r0, r1, #4
c0de4f18:	2804      	cmp	r0, #4
c0de4f1a:	d001      	beq.n	c0de4f20 <statusButtonCallback+0xc>
c0de4f1c:	2901      	cmp	r1, #1
c0de4f1e:	d104      	bne.n	c0de4f2a <statusButtonCallback+0x16>
c0de4f20:	4802      	ldr	r0, [pc, #8]	@ (c0de4f2c <statusButtonCallback+0x18>)
c0de4f22:	4448      	add	r0, r9
c0de4f24:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de4f26:	b100      	cbz	r0, c0de4f2a <statusButtonCallback+0x16>
c0de4f28:	4700      	bx	r0
c0de4f2a:	4770      	bx	lr
c0de4f2c:	00000744 	.word	0x00000744

c0de4f30 <nbgl_useCaseReviewStatus>:
c0de4f30:	460a      	mov	r2, r1
c0de4f32:	b198      	cbz	r0, c0de4f5c <nbgl_useCaseReviewStatus+0x2c>
c0de4f34:	2801      	cmp	r0, #1
c0de4f36:	d016      	beq.n	c0de4f66 <nbgl_useCaseReviewStatus+0x36>
c0de4f38:	2802      	cmp	r0, #2
c0de4f3a:	d019      	beq.n	c0de4f70 <nbgl_useCaseReviewStatus+0x40>
c0de4f3c:	2803      	cmp	r0, #3
c0de4f3e:	d01c      	beq.n	c0de4f7a <nbgl_useCaseReviewStatus+0x4a>
c0de4f40:	2804      	cmp	r0, #4
c0de4f42:	d01f      	beq.n	c0de4f84 <nbgl_useCaseReviewStatus+0x54>
c0de4f44:	2807      	cmp	r0, #7
c0de4f46:	d022      	beq.n	c0de4f8e <nbgl_useCaseReviewStatus+0x5e>
c0de4f48:	2806      	cmp	r0, #6
c0de4f4a:	d025      	beq.n	c0de4f98 <nbgl_useCaseReviewStatus+0x68>
c0de4f4c:	2805      	cmp	r0, #5
c0de4f4e:	bf18      	it	ne
c0de4f50:	4770      	bxne	lr
c0de4f52:	4815      	ldr	r0, [pc, #84]	@ (c0de4fa8 <nbgl_useCaseReviewStatus+0x78>)
c0de4f54:	2100      	movs	r1, #0
c0de4f56:	4478      	add	r0, pc
c0de4f58:	f7ff bef8 	b.w	c0de4d4c <nbgl_useCaseStatus>
c0de4f5c:	4813      	ldr	r0, [pc, #76]	@ (c0de4fac <nbgl_useCaseReviewStatus+0x7c>)
c0de4f5e:	2101      	movs	r1, #1
c0de4f60:	4478      	add	r0, pc
c0de4f62:	f7ff bef3 	b.w	c0de4d4c <nbgl_useCaseStatus>
c0de4f66:	4812      	ldr	r0, [pc, #72]	@ (c0de4fb0 <nbgl_useCaseReviewStatus+0x80>)
c0de4f68:	2100      	movs	r1, #0
c0de4f6a:	4478      	add	r0, pc
c0de4f6c:	f7ff beee 	b.w	c0de4d4c <nbgl_useCaseStatus>
c0de4f70:	4810      	ldr	r0, [pc, #64]	@ (c0de4fb4 <nbgl_useCaseReviewStatus+0x84>)
c0de4f72:	2101      	movs	r1, #1
c0de4f74:	4478      	add	r0, pc
c0de4f76:	f7ff bee9 	b.w	c0de4d4c <nbgl_useCaseStatus>
c0de4f7a:	480f      	ldr	r0, [pc, #60]	@ (c0de4fb8 <nbgl_useCaseReviewStatus+0x88>)
c0de4f7c:	2100      	movs	r1, #0
c0de4f7e:	4478      	add	r0, pc
c0de4f80:	f7ff bee4 	b.w	c0de4d4c <nbgl_useCaseStatus>
c0de4f84:	4807      	ldr	r0, [pc, #28]	@ (c0de4fa4 <nbgl_useCaseReviewStatus+0x74>)
c0de4f86:	2101      	movs	r1, #1
c0de4f88:	4478      	add	r0, pc
c0de4f8a:	f7ff bedf 	b.w	c0de4d4c <nbgl_useCaseStatus>
c0de4f8e:	480c      	ldr	r0, [pc, #48]	@ (c0de4fc0 <nbgl_useCaseReviewStatus+0x90>)
c0de4f90:	2100      	movs	r1, #0
c0de4f92:	4478      	add	r0, pc
c0de4f94:	f7ff beda 	b.w	c0de4d4c <nbgl_useCaseStatus>
c0de4f98:	4808      	ldr	r0, [pc, #32]	@ (c0de4fbc <nbgl_useCaseReviewStatus+0x8c>)
c0de4f9a:	2101      	movs	r1, #1
c0de4f9c:	4478      	add	r0, pc
c0de4f9e:	f7ff bed5 	b.w	c0de4d4c <nbgl_useCaseStatus>
c0de4fa2:	bf00      	nop
c0de4fa4:	00002a50 	.word	0x00002a50
c0de4fa8:	00002aa4 	.word	0x00002aa4
c0de4fac:	00002b3b 	.word	0x00002b3b
c0de4fb0:	00002d00 	.word	0x00002d00
c0de4fb4:	00002b9a 	.word	0x00002b9a
c0de4fb8:	00002c96 	.word	0x00002c96
c0de4fbc:	00002abf 	.word	0x00002abf
c0de4fc0:	00002bf9 	.word	0x00002bf9

c0de4fc4 <displayStreamingReviewPage>:
c0de4fc4:	b570      	push	{r4, r5, r6, lr}
c0de4fc6:	b08c      	sub	sp, #48	@ 0x30
c0de4fc8:	4d5a      	ldr	r5, [pc, #360]	@ (c0de5134 <displayStreamingReviewPage+0x170>)
c0de4fca:	2100      	movs	r1, #0
c0de4fcc:	4604      	mov	r4, r0
c0de4fce:	e9cd 110a 	strd	r1, r1, [sp, #40]	@ 0x28
c0de4fd2:	e9cd 1108 	strd	r1, r1, [sp, #32]
c0de4fd6:	eb09 0005 	add.w	r0, r9, r5
c0de4fda:	6341      	str	r1, [r0, #52]	@ 0x34
c0de4fdc:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de4fe0:	2806      	cmp	r0, #6
c0de4fe2:	d015      	beq.n	c0de5010 <displayStreamingReviewPage+0x4c>
c0de4fe4:	2805      	cmp	r0, #5
c0de4fe6:	d13d      	bne.n	c0de5064 <displayStreamingReviewPage+0xa0>
c0de4fe8:	eb09 0205 	add.w	r2, r9, r5
c0de4fec:	2101      	movs	r1, #1
c0de4fee:	2302      	movs	r3, #2
c0de4ff0:	6c90      	ldr	r0, [r2, #72]	@ 0x48
c0de4ff2:	2800      	cmp	r0, #0
c0de4ff4:	bf08      	it	eq
c0de4ff6:	21ff      	moveq	r1, #255	@ 0xff
c0de4ff8:	bf08      	it	eq
c0de4ffa:	2301      	moveq	r3, #1
c0de4ffc:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de5000:	4293      	cmp	r3, r2
c0de5002:	dd3b      	ble.n	c0de507c <displayStreamingReviewPage+0xb8>
c0de5004:	b2d3      	uxtb	r3, r2
c0de5006:	2b00      	cmp	r3, #0
c0de5008:	d063      	beq.n	c0de50d2 <displayStreamingReviewPage+0x10e>
c0de500a:	4291      	cmp	r1, r2
c0de500c:	d066      	beq.n	c0de50dc <displayStreamingReviewPage+0x118>
c0de500e:	e066      	b.n	c0de50de <displayStreamingReviewPage+0x11a>
c0de5010:	eb09 0005 	add.w	r0, r9, r5
c0de5014:	f990 1031 	ldrsb.w	r1, [r0, #49]	@ 0x31
c0de5018:	6bc0      	ldr	r0, [r0, #60]	@ 0x3c
c0de501a:	7a02      	ldrb	r2, [r0, #8]
c0de501c:	4291      	cmp	r1, r2
c0de501e:	da2d      	bge.n	c0de507c <displayStreamingReviewPage+0xb8>
c0de5020:	eb09 0205 	add.w	r2, r9, r5
c0de5024:	6d53      	ldr	r3, [r2, #84]	@ 0x54
c0de5026:	b3cb      	cbz	r3, c0de509c <displayStreamingReviewPage+0xd8>
c0de5028:	f892 2059 	ldrb.w	r2, [r2, #89]	@ 0x59
c0de502c:	bbb2      	cbnz	r2, c0de509c <displayStreamingReviewPage+0xd8>
c0de502e:	eb09 0205 	add.w	r2, r9, r5
c0de5032:	f892 2058 	ldrb.w	r2, [r2, #88]	@ 0x58
c0de5036:	2a01      	cmp	r2, #1
c0de5038:	d807      	bhi.n	c0de504a <displayStreamingReviewPage+0x86>
c0de503a:	2900      	cmp	r1, #0
c0de503c:	dc05      	bgt.n	c0de504a <displayStreamingReviewPage+0x86>
c0de503e:	eb09 0305 	add.w	r3, r9, r5
c0de5042:	f893 305a 	ldrb.w	r3, [r3, #90]	@ 0x5a
c0de5046:	2b08      	cmp	r3, #8
c0de5048:	d128      	bne.n	c0de509c <displayStreamingReviewPage+0xd8>
c0de504a:	2000      	movs	r0, #0
c0de504c:	9007      	str	r0, [sp, #28]
c0de504e:	e9cd 0005 	strd	r0, r0, [sp, #20]
c0de5052:	f004 0008 	and.w	r0, r4, #8
c0de5056:	2a01      	cmp	r2, #1
c0de5058:	d001      	beq.n	c0de505e <displayStreamingReviewPage+0x9a>
c0de505a:	2901      	cmp	r1, #1
c0de505c:	db50      	blt.n	c0de5100 <displayStreamingReviewPage+0x13c>
c0de505e:	f040 0003 	orr.w	r0, r0, #3
c0de5062:	e04f      	b.n	c0de5104 <displayStreamingReviewPage+0x140>
c0de5064:	eb09 0005 	add.w	r0, r9, r5
c0de5068:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de506c:	b180      	cbz	r0, c0de5090 <displayStreamingReviewPage+0xcc>
c0de506e:	a909      	add	r1, sp, #36	@ 0x24
c0de5070:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5072:	2000      	movs	r0, #0
c0de5074:	2500      	movs	r5, #0
c0de5076:	f000 fda7 	bl	c0de5bc8 <getLastPageInfo>
c0de507a:	e031      	b.n	c0de50e0 <displayStreamingReviewPage+0x11c>
c0de507c:	eb09 0005 	add.w	r0, r9, r5
c0de5080:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5082:	2900      	cmp	r1, #0
c0de5084:	d053      	beq.n	c0de512e <displayStreamingReviewPage+0x16a>
c0de5086:	2001      	movs	r0, #1
c0de5088:	b00c      	add	sp, #48	@ 0x30
c0de508a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de508e:	4708      	bx	r1
c0de5090:	a909      	add	r1, sp, #36	@ 0x24
c0de5092:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de5094:	2001      	movs	r0, #1
c0de5096:	f000 fd97 	bl	c0de5bc8 <getLastPageInfo>
c0de509a:	e020      	b.n	c0de50de <displayStreamingReviewPage+0x11a>
c0de509c:	2300      	movs	r3, #0
c0de509e:	eb09 0205 	add.w	r2, r9, r5
c0de50a2:	b2c9      	uxtb	r1, r1
c0de50a4:	f882 3059 	strb.w	r3, [r2, #89]	@ 0x59
c0de50a8:	f88d 300f 	strb.w	r3, [sp, #15]
c0de50ac:	ab09      	add	r3, sp, #36	@ 0x24
c0de50ae:	ad08      	add	r5, sp, #32
c0de50b0:	f10d 020f 	add.w	r2, sp, #15
c0de50b4:	e9cd 5300 	strd	r5, r3, [sp]
c0de50b8:	9202      	str	r2, [sp, #8]
c0de50ba:	aa0b      	add	r2, sp, #44	@ 0x2c
c0de50bc:	ab0a      	add	r3, sp, #40	@ 0x28
c0de50be:	f000 fac3 	bl	c0de5648 <getPairData>
c0de50c2:	9808      	ldr	r0, [sp, #32]
c0de50c4:	2800      	cmp	r0, #0
c0de50c6:	bf12      	itee	ne
c0de50c8:	2501      	movne	r5, #1
c0de50ca:	f89d 000f 	ldrbeq.w	r0, [sp, #15]
c0de50ce:	0045      	lsleq	r5, r0, #1
c0de50d0:	e006      	b.n	c0de50e0 <displayStreamingReviewPage+0x11c>
c0de50d2:	eb09 0005 	add.w	r0, r9, r5
c0de50d6:	e9d0 1010 	ldrd	r1, r0, [r0, #64]	@ 0x40
c0de50da:	9109      	str	r1, [sp, #36]	@ 0x24
c0de50dc:	900b      	str	r0, [sp, #44]	@ 0x2c
c0de50de:	2500      	movs	r5, #0
c0de50e0:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
c0de50e2:	e9dd 1309 	ldrd	r1, r3, [sp, #36]	@ 0x24
c0de50e6:	4e17      	ldr	r6, [pc, #92]	@ (c0de5144 <displayStreamingReviewPage+0x180>)
c0de50e8:	b2e8      	uxtb	r0, r5
c0de50ea:	2500      	movs	r5, #0
c0de50ec:	9002      	str	r0, [sp, #8]
c0de50ee:	4620      	mov	r0, r4
c0de50f0:	447e      	add	r6, pc
c0de50f2:	f001 f897 	bl	c0de6224 <OUTLINED_FUNCTION_6>
c0de50f6:	b00c      	add	sp, #48	@ 0x30
c0de50f8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de50fc:	f001 bdd5 	b.w	c0de6caa <nbgl_refresh>
c0de5100:	f040 0001 	orr.w	r0, r0, #1
c0de5104:	490c      	ldr	r1, [pc, #48]	@ (c0de5138 <displayStreamingReviewPage+0x174>)
c0de5106:	2200      	movs	r2, #0
c0de5108:	4479      	add	r1, pc
c0de510a:	9104      	str	r1, [sp, #16]
c0de510c:	490b      	ldr	r1, [pc, #44]	@ (c0de513c <displayStreamingReviewPage+0x178>)
c0de510e:	4479      	add	r1, pc
c0de5110:	9106      	str	r1, [sp, #24]
c0de5112:	2100      	movs	r1, #0
c0de5114:	9100      	str	r1, [sp, #0]
c0de5116:	490a      	ldr	r1, [pc, #40]	@ (c0de5140 <displayStreamingReviewPage+0x17c>)
c0de5118:	ab04      	add	r3, sp, #16
c0de511a:	4479      	add	r1, pc
c0de511c:	f7ff f9d2 	bl	c0de44c4 <nbgl_stepDrawCenteredInfo>
c0de5120:	eb09 0405 	add.w	r4, r9, r5
c0de5124:	f001 fdc1 	bl	c0de6caa <nbgl_refresh>
c0de5128:	2001      	movs	r0, #1
c0de512a:	f884 0059 	strb.w	r0, [r4, #89]	@ 0x59
c0de512e:	b00c      	add	sp, #48	@ 0x30
c0de5130:	bd70      	pop	{r4, r5, r6, pc}
c0de5132:	bf00      	nop
c0de5134:	00000744 	.word	0x00000744
c0de5138:	00002905 	.word	0x00002905
c0de513c:	00002714 	.word	0x00002714
c0de5140:	00000cb7 	.word	0x00000cb7
c0de5144:	00001079 	.word	0x00001079

c0de5148 <nbgl_useCaseSpinner>:
c0de5148:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de514a:	4604      	mov	r4, r0
c0de514c:	480b      	ldr	r0, [pc, #44]	@ (c0de517c <nbgl_useCaseSpinner+0x34>)
c0de514e:	2140      	movs	r1, #64	@ 0x40
c0de5150:	f001 f85b 	bl	c0de620a <OUTLINED_FUNCTION_3>
c0de5154:	2001      	movs	r0, #1
c0de5156:	4622      	mov	r2, r4
c0de5158:	2300      	movs	r3, #0
c0de515a:	f885 0030 	strb.w	r0, [r5, #48]	@ 0x30
c0de515e:	f885 0028 	strb.w	r0, [r5, #40]	@ 0x28
c0de5162:	2000      	movs	r0, #0
c0de5164:	e9cd 0000 	strd	r0, r0, [sp]
c0de5168:	9002      	str	r0, [sp, #8]
c0de516a:	2000      	movs	r0, #0
c0de516c:	4904      	ldr	r1, [pc, #16]	@ (c0de5180 <nbgl_useCaseSpinner+0x38>)
c0de516e:	4479      	add	r1, pc
c0de5170:	f7ff fe0c 	bl	c0de4d8c <drawStep>
c0de5174:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de5178:	f001 bd97 	b.w	c0de6caa <nbgl_refresh>
c0de517c:	00000744 	.word	0x00000744
c0de5180:	000027ab 	.word	0x000027ab

c0de5184 <nbgl_useCaseChoice>:
c0de5184:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de5188:	4607      	mov	r7, r0
c0de518a:	480b      	ldr	r0, [pc, #44]	@ (c0de51b8 <nbgl_useCaseChoice+0x34>)
c0de518c:	f001 f822 	bl	c0de61d4 <OUTLINED_FUNCTION_0>
c0de5190:	9807      	ldr	r0, [sp, #28]
c0de5192:	64e0      	str	r0, [r4, #76]	@ 0x4c
c0de5194:	9806      	ldr	r0, [sp, #24]
c0de5196:	e9c4 5810 	strd	r5, r8, [r4, #64]	@ 0x40
c0de519a:	e9c4 760e 	strd	r7, r6, [r4, #56]	@ 0x38
c0de519e:	64a0      	str	r0, [r4, #72]	@ 0x48
c0de51a0:	2008      	movs	r0, #8
c0de51a2:	f884 0028 	strb.w	r0, [r4, #40]	@ 0x28
c0de51a6:	2004      	movs	r0, #4
c0de51a8:	f884 0030 	strb.w	r0, [r4, #48]	@ 0x30
c0de51ac:	2000      	movs	r0, #0
c0de51ae:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de51b2:	f000 b803 	b.w	c0de51bc <displayChoicePage>
c0de51b6:	bf00      	nop
c0de51b8:	00000744 	.word	0x00000744

c0de51bc <displayChoicePage>:
c0de51bc:	b5bf      	push	{r0, r1, r2, r3, r4, r5, r7, lr}
c0de51be:	4b28      	ldr	r3, [pc, #160]	@ (c0de5260 <displayChoicePage+0xa4>)
c0de51c0:	2200      	movs	r2, #0
c0de51c2:	eb09 0103 	add.w	r1, r9, r3
c0de51c6:	634a      	str	r2, [r1, #52]	@ 0x34
c0de51c8:	f891 1031 	ldrb.w	r1, [r1, #49]	@ 0x31
c0de51cc:	b179      	cbz	r1, c0de51ee <displayChoicePage+0x32>
c0de51ce:	2902      	cmp	r1, #2
c0de51d0:	d021      	beq.n	c0de5216 <displayChoicePage+0x5a>
c0de51d2:	2901      	cmp	r1, #1
c0de51d4:	d10f      	bne.n	c0de51f6 <displayChoicePage+0x3a>
c0de51d6:	eb09 0103 	add.w	r1, r9, r3
c0de51da:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de51dc:	b1a1      	cbz	r1, c0de5208 <displayChoicePage+0x4c>
c0de51de:	eb09 0203 	add.w	r2, r9, r3
c0de51e2:	6c12      	ldr	r2, [r2, #64]	@ 0x40
c0de51e4:	b182      	cbz	r2, c0de5208 <displayChoicePage+0x4c>
c0de51e6:	eb09 0103 	add.w	r1, r9, r3
c0de51ea:	6bca      	ldr	r2, [r1, #60]	@ 0x3c
c0de51ec:	e029      	b.n	c0de5242 <displayChoicePage+0x86>
c0de51ee:	eb09 0103 	add.w	r1, r9, r3
c0de51f2:	6b89      	ldr	r1, [r1, #56]	@ 0x38
c0de51f4:	e01d      	b.n	c0de5232 <displayChoicePage+0x76>
c0de51f6:	4a1d      	ldr	r2, [pc, #116]	@ (c0de526c <displayChoicePage+0xb0>)
c0de51f8:	eb09 0103 	add.w	r1, r9, r3
c0de51fc:	447a      	add	r2, pc
c0de51fe:	634a      	str	r2, [r1, #52]	@ 0x34
c0de5200:	6c8a      	ldr	r2, [r1, #72]	@ 0x48
c0de5202:	491b      	ldr	r1, [pc, #108]	@ (c0de5270 <displayChoicePage+0xb4>)
c0de5204:	4479      	add	r1, pc
c0de5206:	e018      	b.n	c0de523a <displayChoicePage+0x7e>
c0de5208:	0702      	lsls	r2, r0, #28
c0de520a:	d40d      	bmi.n	c0de5228 <displayChoicePage+0x6c>
c0de520c:	eb09 0103 	add.w	r1, r9, r3
c0de5210:	2202      	movs	r2, #2
c0de5212:	f881 2031 	strb.w	r2, [r1, #49]	@ 0x31
c0de5216:	4a13      	ldr	r2, [pc, #76]	@ (c0de5264 <displayChoicePage+0xa8>)
c0de5218:	eb09 0103 	add.w	r1, r9, r3
c0de521c:	447a      	add	r2, pc
c0de521e:	634a      	str	r2, [r1, #52]	@ 0x34
c0de5220:	6c4a      	ldr	r2, [r1, #68]	@ 0x44
c0de5222:	4911      	ldr	r1, [pc, #68]	@ (c0de5268 <displayChoicePage+0xac>)
c0de5224:	4479      	add	r1, pc
c0de5226:	e008      	b.n	c0de523a <displayChoicePage+0x7e>
c0de5228:	eb09 0203 	add.w	r2, r9, r3
c0de522c:	2400      	movs	r4, #0
c0de522e:	f882 4031 	strb.w	r4, [r2, #49]	@ 0x31
c0de5232:	eb09 0203 	add.w	r2, r9, r3
c0de5236:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
c0de5238:	b109      	cbz	r1, c0de523e <displayChoicePage+0x82>
c0de523a:	2300      	movs	r3, #0
c0de523c:	e003      	b.n	c0de5246 <displayChoicePage+0x8a>
c0de523e:	eb09 0103 	add.w	r1, r9, r3
c0de5242:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
c0de5244:	2100      	movs	r1, #0
c0de5246:	4d0b      	ldr	r5, [pc, #44]	@ (c0de5274 <displayChoicePage+0xb8>)
c0de5248:	2400      	movs	r4, #0
c0de524a:	9402      	str	r4, [sp, #8]
c0de524c:	447d      	add	r5, pc
c0de524e:	e9cd 5400 	strd	r5, r4, [sp]
c0de5252:	f7ff fd9b 	bl	c0de4d8c <drawStep>
c0de5256:	e8bd 40bf 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r7, lr}
c0de525a:	f001 bd26 	b.w	c0de6caa <nbgl_refresh>
c0de525e:	bf00      	nop
c0de5260:	00000744 	.word	0x00000744
c0de5264:	00000f71 	.word	0x00000f71
c0de5268:	00002732 	.word	0x00002732
c0de526c:	00000fa5 	.word	0x00000fa5
c0de5270:	000026d6 	.word	0x000026d6
c0de5274:	00000f69 	.word	0x00000f69

c0de5278 <getContentAtIdx>:
c0de5278:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de527a:	b087      	sub	sp, #28
c0de527c:	460d      	mov	r5, r1
c0de527e:	4606      	mov	r6, r0
c0de5280:	a801      	add	r0, sp, #4
c0de5282:	2118      	movs	r1, #24
c0de5284:	4614      	mov	r4, r2
c0de5286:	f002 fa27 	bl	c0de76d8 <__aeabi_memclr>
c0de528a:	2d00      	cmp	r5, #0
c0de528c:	d428      	bmi.n	c0de52e0 <getContentAtIdx+0x68>
c0de528e:	7a30      	ldrb	r0, [r6, #8]
c0de5290:	4285      	cmp	r5, r0
c0de5292:	da25      	bge.n	c0de52e0 <getContentAtIdx+0x68>
c0de5294:	7830      	ldrb	r0, [r6, #0]
c0de5296:	b338      	cbz	r0, c0de52e8 <getContentAtIdx+0x70>
c0de5298:	b314      	cbz	r4, c0de52e0 <getContentAtIdx+0x68>
c0de529a:	4620      	mov	r0, r4
c0de529c:	2138      	movs	r1, #56	@ 0x38
c0de529e:	f002 fa1b 	bl	c0de76d8 <__aeabi_memclr>
c0de52a2:	4821      	ldr	r0, [pc, #132]	@ (c0de5328 <getContentAtIdx+0xb0>)
c0de52a4:	4448      	add	r0, r9
c0de52a6:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de52a8:	b342      	cbz	r2, c0de52fc <getContentAtIdx+0x84>
c0de52aa:	b2e8      	uxtb	r0, r5
c0de52ac:	ad01      	add	r5, sp, #4
c0de52ae:	4629      	mov	r1, r5
c0de52b0:	4790      	blx	r2
c0de52b2:	b1a8      	cbz	r0, c0de52e0 <getContentAtIdx+0x68>
c0de52b4:	f89d 0004 	ldrb.w	r0, [sp, #4]
c0de52b8:	280a      	cmp	r0, #10
c0de52ba:	7020      	strb	r0, [r4, #0]
c0de52bc:	d028      	beq.n	c0de5310 <getContentAtIdx+0x98>
c0de52be:	2803      	cmp	r0, #3
c0de52c0:	d008      	beq.n	c0de52d4 <getContentAtIdx+0x5c>
c0de52c2:	2804      	cmp	r0, #4
c0de52c4:	d02a      	beq.n	c0de531c <getContentAtIdx+0xa4>
c0de52c6:	2807      	cmp	r0, #7
c0de52c8:	d01d      	beq.n	c0de5306 <getContentAtIdx+0x8e>
c0de52ca:	2808      	cmp	r0, #8
c0de52cc:	d002      	beq.n	c0de52d4 <getContentAtIdx+0x5c>
c0de52ce:	2809      	cmp	r0, #9
c0de52d0:	d019      	beq.n	c0de5306 <getContentAtIdx+0x8e>
c0de52d2:	b928      	cbnz	r0, c0de52e0 <getContentAtIdx+0x68>
c0de52d4:	1d28      	adds	r0, r5, #4
c0de52d6:	1d21      	adds	r1, r4, #4
c0de52d8:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de52dc:	c16c      	stmia	r1!, {r2, r3, r5, r6}
c0de52de:	e000      	b.n	c0de52e2 <getContentAtIdx+0x6a>
c0de52e0:	2400      	movs	r4, #0
c0de52e2:	4620      	mov	r0, r4
c0de52e4:	b007      	add	sp, #28
c0de52e6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de52e8:	6871      	ldr	r1, [r6, #4]
c0de52ea:	ebc5 00c5 	rsb	r0, r5, r5, lsl #3
c0de52ee:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de52f2:	b007      	add	sp, #28
c0de52f4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de52f8:	f001 bee2 	b.w	c0de70c0 <pic>
c0de52fc:	6872      	ldr	r2, [r6, #4]
c0de52fe:	b2e8      	uxtb	r0, r5
c0de5300:	4621      	mov	r1, r4
c0de5302:	4790      	blx	r2
c0de5304:	e7ed      	b.n	c0de52e2 <getContentAtIdx+0x6a>
c0de5306:	9802      	ldr	r0, [sp, #8]
c0de5308:	9903      	ldr	r1, [sp, #12]
c0de530a:	6060      	str	r0, [r4, #4]
c0de530c:	60a1      	str	r1, [r4, #8]
c0de530e:	e7e8      	b.n	c0de52e2 <getContentAtIdx+0x6a>
c0de5310:	1d28      	adds	r0, r5, #4
c0de5312:	1d21      	adds	r1, r4, #4
c0de5314:	e890 002c 	ldmia.w	r0, {r2, r3, r5}
c0de5318:	c12c      	stmia	r1!, {r2, r3, r5}
c0de531a:	e7e2      	b.n	c0de52e2 <getContentAtIdx+0x6a>
c0de531c:	1d28      	adds	r0, r5, #4
c0de531e:	1d21      	adds	r1, r4, #4
c0de5320:	e890 00ec 	ldmia.w	r0, {r2, r3, r5, r6, r7}
c0de5324:	c1ec      	stmia	r1!, {r2, r3, r5, r6, r7}
c0de5326:	e7dc      	b.n	c0de52e2 <getContentAtIdx+0x6a>
c0de5328:	00000744 	.word	0x00000744

c0de532c <getContentNbElement>:
c0de532c:	7802      	ldrb	r2, [r0, #0]
c0de532e:	2101      	movs	r1, #1
c0de5330:	b1a2      	cbz	r2, c0de535c <getContentNbElement+0x30>
c0de5332:	2a03      	cmp	r2, #3
c0de5334:	d012      	beq.n	c0de535c <getContentNbElement+0x30>
c0de5336:	2a0a      	cmp	r2, #10
c0de5338:	d007      	beq.n	c0de534a <getContentNbElement+0x1e>
c0de533a:	2a07      	cmp	r2, #7
c0de533c:	d007      	beq.n	c0de534e <getContentNbElement+0x22>
c0de533e:	2a08      	cmp	r2, #8
c0de5340:	d007      	beq.n	c0de5352 <getContentNbElement+0x26>
c0de5342:	2a09      	cmp	r2, #9
c0de5344:	d007      	beq.n	c0de5356 <getContentNbElement+0x2a>
c0de5346:	2a04      	cmp	r2, #4
c0de5348:	d107      	bne.n	c0de535a <getContentNbElement+0x2e>
c0de534a:	7b01      	ldrb	r1, [r0, #12]
c0de534c:	e006      	b.n	c0de535c <getContentNbElement+0x30>
c0de534e:	7a01      	ldrb	r1, [r0, #8]
c0de5350:	e004      	b.n	c0de535c <getContentNbElement+0x30>
c0de5352:	7c01      	ldrb	r1, [r0, #16]
c0de5354:	e002      	b.n	c0de535c <getContentNbElement+0x30>
c0de5356:	7a41      	ldrb	r1, [r0, #9]
c0de5358:	e000      	b.n	c0de535c <getContentNbElement+0x30>
c0de535a:	2100      	movs	r1, #0
c0de535c:	4608      	mov	r0, r1
c0de535e:	4770      	bx	lr

c0de5360 <displayContent>:
c0de5360:	b570      	push	{r4, r5, r6, lr}
c0de5362:	b08a      	sub	sp, #40	@ 0x28
c0de5364:	460d      	mov	r5, r1
c0de5366:	4604      	mov	r4, r0
c0de5368:	a804      	add	r0, sp, #16
c0de536a:	2118      	movs	r1, #24
c0de536c:	f002 f9b4 	bl	c0de76d8 <__aeabi_memclr>
c0de5370:	4820      	ldr	r0, [pc, #128]	@ (c0de53f4 <displayContent+0x94>)
c0de5372:	f000 ff39 	bl	c0de61e8 <OUTLINED_FUNCTION_1>
c0de5376:	dd14      	ble.n	c0de53a2 <displayContent+0x42>
c0de5378:	a904      	add	r1, sp, #16
c0de537a:	4628      	mov	r0, r5
c0de537c:	f000 f846 	bl	c0de540c <getContentPage>
c0de5380:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5384:	b318      	cbz	r0, c0de53ce <displayContent+0x6e>
c0de5386:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de538a:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de538e:	481e      	ldr	r0, [pc, #120]	@ (c0de5408 <displayContent+0xa8>)
c0de5390:	4478      	add	r0, pc
c0de5392:	2b00      	cmp	r3, #0
c0de5394:	9000      	str	r0, [sp, #0]
c0de5396:	4620      	mov	r0, r4
c0de5398:	bf18      	it	ne
c0de539a:	2301      	movne	r3, #1
c0de539c:	f000 f8d8 	bl	c0de5550 <drawSwitchStep>
c0de53a0:	e023      	b.n	c0de53ea <displayContent+0x8a>
c0de53a2:	4448      	add	r0, r9
c0de53a4:	6d41      	ldr	r1, [r0, #84]	@ 0x54
c0de53a6:	6341      	str	r1, [r0, #52]	@ 0x34
c0de53a8:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de53aa:	4a13      	ldr	r2, [pc, #76]	@ (c0de53f8 <displayContent+0x98>)
c0de53ac:	2900      	cmp	r1, #0
c0de53ae:	447a      	add	r2, pc
c0de53b0:	bf18      	it	ne
c0de53b2:	460a      	movne	r2, r1
c0de53b4:	9205      	str	r2, [sp, #20]
c0de53b6:	f890 0028 	ldrb.w	r0, [r0, #40]	@ 0x28
c0de53ba:	4910      	ldr	r1, [pc, #64]	@ (c0de53fc <displayContent+0x9c>)
c0de53bc:	4a10      	ldr	r2, [pc, #64]	@ (c0de5400 <displayContent+0xa0>)
c0de53be:	2803      	cmp	r0, #3
c0de53c0:	447a      	add	r2, pc
c0de53c2:	4479      	add	r1, pc
c0de53c4:	bf08      	it	eq
c0de53c6:	460a      	moveq	r2, r1
c0de53c8:	9207      	str	r2, [sp, #28]
c0de53ca:	2000      	movs	r0, #0
c0de53cc:	e002      	b.n	c0de53d4 <displayContent+0x74>
c0de53ce:	f89d 0025 	ldrb.w	r0, [sp, #37]	@ 0x25
c0de53d2:	0040      	lsls	r0, r0, #1
c0de53d4:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de53d8:	9907      	ldr	r1, [sp, #28]
c0de53da:	4e0a      	ldr	r6, [pc, #40]	@ (c0de5404 <displayContent+0xa4>)
c0de53dc:	b2c0      	uxtb	r0, r0
c0de53de:	2500      	movs	r5, #0
c0de53e0:	9002      	str	r0, [sp, #8]
c0de53e2:	4620      	mov	r0, r4
c0de53e4:	447e      	add	r6, pc
c0de53e6:	f000 ff1d 	bl	c0de6224 <OUTLINED_FUNCTION_6>
c0de53ea:	f001 fc5e 	bl	c0de6caa <nbgl_refresh>
c0de53ee:	b00a      	add	sp, #40	@ 0x28
c0de53f0:	bd70      	pop	{r4, r5, r6, pc}
c0de53f2:	bf00      	nop
c0de53f4:	00000744 	.word	0x00000744
c0de53f8:	00002899 	.word	0x00002899
c0de53fc:	00002518 	.word	0x00002518
c0de5400:	000024d4 	.word	0x000024d4
c0de5404:	000001b9 	.word	0x000001b9
c0de5408:	0000020d 	.word	0x0000020d

c0de540c <getContentPage>:
c0de540c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de540e:	b093      	sub	sp, #76	@ 0x4c
c0de5410:	4606      	mov	r6, r0
c0de5412:	2000      	movs	r0, #0
c0de5414:	460c      	mov	r4, r1
c0de5416:	2138      	movs	r1, #56	@ 0x38
c0de5418:	f88d 004b 	strb.w	r0, [sp, #75]	@ 0x4b
c0de541c:	ad04      	add	r5, sp, #16
c0de541e:	4628      	mov	r0, r5
c0de5420:	f002 f95a 	bl	c0de76d8 <__aeabi_memclr>
c0de5424:	4f47      	ldr	r7, [pc, #284]	@ (c0de5544 <getContentPage+0x138>)
c0de5426:	f10d 014b 	add.w	r1, sp, #75	@ 0x4b
c0de542a:	462a      	mov	r2, r5
c0de542c:	eb09 0007 	add.w	r0, r9, r7
c0de5430:	f000 fef1 	bl	c0de6216 <OUTLINED_FUNCTION_4>
c0de5434:	2800      	cmp	r0, #0
c0de5436:	d07a      	beq.n	c0de552e <getContentPage+0x122>
c0de5438:	4605      	mov	r5, r0
c0de543a:	7800      	ldrb	r0, [r0, #0]
c0de543c:	280a      	cmp	r0, #10
c0de543e:	d011      	beq.n	c0de5464 <getContentPage+0x58>
c0de5440:	2803      	cmp	r0, #3
c0de5442:	d02c      	beq.n	c0de549e <getContentPage+0x92>
c0de5444:	2804      	cmp	r0, #4
c0de5446:	d035      	beq.n	c0de54b4 <getContentPage+0xa8>
c0de5448:	2807      	cmp	r0, #7
c0de544a:	d045      	beq.n	c0de54d8 <getContentPage+0xcc>
c0de544c:	2808      	cmp	r0, #8
c0de544e:	d060      	beq.n	c0de5512 <getContentPage+0x106>
c0de5450:	2809      	cmp	r0, #9
c0de5452:	d007      	beq.n	c0de5464 <getContentPage+0x58>
c0de5454:	2800      	cmp	r0, #0
c0de5456:	d16a      	bne.n	c0de552e <getContentPage+0x122>
c0de5458:	6868      	ldr	r0, [r5, #4]
c0de545a:	f001 fe31 	bl	c0de70c0 <pic>
c0de545e:	6060      	str	r0, [r4, #4]
c0de5460:	68a8      	ldr	r0, [r5, #8]
c0de5462:	e019      	b.n	c0de5498 <getContentPage+0x8c>
c0de5464:	1d28      	adds	r0, r5, #4
c0de5466:	eb09 0607 	add.w	r6, r9, r7
c0de546a:	f001 fe29 	bl	c0de70c0 <pic>
c0de546e:	6800      	ldr	r0, [r0, #0]
c0de5470:	f001 fe26 	bl	c0de70c0 <pic>
c0de5474:	f896 1028 	ldrb.w	r1, [r6, #40]	@ 0x28
c0de5478:	4605      	mov	r5, r0
c0de547a:	6bb0      	ldr	r0, [r6, #56]	@ 0x38
c0de547c:	2910      	cmp	r1, #16
c0de547e:	d100      	bne.n	c0de5482 <getContentPage+0x76>
c0de5480:	b918      	cbnz	r0, c0de548a <getContentPage+0x7e>
c0de5482:	290f      	cmp	r1, #15
c0de5484:	d155      	bne.n	c0de5532 <getContentPage+0x126>
c0de5486:	2800      	cmp	r0, #0
c0de5488:	d053      	beq.n	c0de5532 <getContentPage+0x126>
c0de548a:	f001 fe19 	bl	c0de70c0 <pic>
c0de548e:	6060      	str	r0, [r4, #4]
c0de5490:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de5494:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de5498:	f001 fe12 	bl	c0de70c0 <pic>
c0de549c:	e046      	b.n	c0de552c <getContentPage+0x120>
c0de549e:	68a8      	ldr	r0, [r5, #8]
c0de54a0:	4e29      	ldr	r6, [pc, #164]	@ (c0de5548 <getContentPage+0x13c>)
c0de54a2:	447e      	add	r6, pc
c0de54a4:	47b0      	blx	r6
c0de54a6:	60e0      	str	r0, [r4, #12]
c0de54a8:	6868      	ldr	r0, [r5, #4]
c0de54aa:	47b0      	blx	r6
c0de54ac:	6060      	str	r0, [r4, #4]
c0de54ae:	68e8      	ldr	r0, [r5, #12]
c0de54b0:	47b0      	blx	r6
c0de54b2:	e03b      	b.n	c0de552c <getContentPage+0x120>
c0de54b4:	f104 0015 	add.w	r0, r4, #21
c0de54b8:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de54bc:	f104 020c 	add.w	r2, r4, #12
c0de54c0:	f104 0310 	add.w	r3, r4, #16
c0de54c4:	e9cd 3200 	strd	r3, r2, [sp]
c0de54c8:	9002      	str	r0, [sp, #8]
c0de54ca:	1d28      	adds	r0, r5, #4
c0de54cc:	1d22      	adds	r2, r4, #4
c0de54ce:	f104 0308 	add.w	r3, r4, #8
c0de54d2:	f000 f8b9 	bl	c0de5648 <getPairData>
c0de54d6:	e02a      	b.n	c0de552e <getContentPage+0x122>
c0de54d8:	2001      	movs	r0, #1
c0de54da:	444f      	add	r7, r9
c0de54dc:	7020      	strb	r0, [r4, #0]
c0de54de:	6868      	ldr	r0, [r5, #4]
c0de54e0:	f001 fdee 	bl	c0de70c0 <pic>
c0de54e4:	4919      	ldr	r1, [pc, #100]	@ (c0de554c <getContentPage+0x140>)
c0de54e6:	4479      	add	r1, pc
c0de54e8:	6379      	str	r1, [r7, #52]	@ 0x34
c0de54ea:	f89d 104b 	ldrb.w	r1, [sp, #75]	@ 0x4b
c0de54ee:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de54f2:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de54f6:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de54fa:	6062      	str	r2, [r4, #4]
c0de54fc:	6841      	ldr	r1, [r0, #4]
c0de54fe:	60a1      	str	r1, [r4, #8]
c0de5500:	7a00      	ldrb	r0, [r0, #8]
c0de5502:	1e41      	subs	r1, r0, #1
c0de5504:	bf18      	it	ne
c0de5506:	2101      	movne	r1, #1
c0de5508:	2e00      	cmp	r6, #0
c0de550a:	bf08      	it	eq
c0de550c:	4601      	moveq	r1, r0
c0de550e:	7521      	strb	r1, [r4, #20]
c0de5510:	e00d      	b.n	c0de552e <getContentPage+0x122>
c0de5512:	6868      	ldr	r0, [r5, #4]
c0de5514:	f001 fdd4 	bl	c0de70c0 <pic>
c0de5518:	f89d 604b 	ldrb.w	r6, [sp, #75]	@ 0x4b
c0de551c:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de5520:	6060      	str	r0, [r4, #4]
c0de5522:	68a8      	ldr	r0, [r5, #8]
c0de5524:	f001 fdcc 	bl	c0de70c0 <pic>
c0de5528:	f850 0026 	ldr.w	r0, [r0, r6, lsl #2]
c0de552c:	60a0      	str	r0, [r4, #8]
c0de552e:	b013      	add	sp, #76	@ 0x4c
c0de5530:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5532:	f89d 004b 	ldrb.w	r0, [sp, #75]	@ 0x4b
c0de5536:	f855 0020 	ldr.w	r0, [r5, r0, lsl #2]
c0de553a:	f001 fdc1 	bl	c0de70c0 <pic>
c0de553e:	6060      	str	r0, [r4, #4]
c0de5540:	e7f5      	b.n	c0de552e <getContentPage+0x122>
c0de5542:	bf00      	nop
c0de5544:	00000744 	.word	0x00000744
c0de5548:	00001c1b 	.word	0x00001c1b
c0de554c:	000001a7 	.word	0x000001a7

c0de5550 <drawSwitchStep>:
c0de5550:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5552:	b085      	sub	sp, #20
c0de5554:	4c11      	ldr	r4, [pc, #68]	@ (c0de559c <drawSwitchStep+0x4c>)
c0de5556:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
c0de555a:	2600      	movs	r6, #0
c0de555c:	eb09 0504 	add.w	r5, r9, r4
c0de5560:	f895 7030 	ldrb.w	r7, [r5, #48]	@ 0x30
c0de5564:	2500      	movs	r5, #0
c0de5566:	2f02      	cmp	r7, #2
c0de5568:	d30a      	bcc.n	c0de5580 <drawSwitchStep+0x30>
c0de556a:	444c      	add	r4, r9
c0de556c:	f994 4031 	ldrsb.w	r4, [r4, #49]	@ 0x31
c0de5570:	b12c      	cbz	r4, c0de557e <drawSwitchStep+0x2e>
c0de5572:	3f01      	subs	r7, #1
c0de5574:	2603      	movs	r6, #3
c0de5576:	42a7      	cmp	r7, r4
c0de5578:	bf08      	it	eq
c0de557a:	2602      	moveq	r6, #2
c0de557c:	e000      	b.n	c0de5580 <drawSwitchStep+0x30>
c0de557e:	2601      	movs	r6, #1
c0de5580:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5584:	f88d 3010 	strb.w	r3, [sp, #16]
c0de5588:	9500      	str	r5, [sp, #0]
c0de558a:	4330      	orrs	r0, r6
c0de558c:	ab02      	add	r3, sp, #8
c0de558e:	4661      	mov	r1, ip
c0de5590:	2200      	movs	r2, #0
c0de5592:	f7ff f87f 	bl	c0de4694 <nbgl_stepDrawSwitch>
c0de5596:	b005      	add	sp, #20
c0de5598:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de559a:	bf00      	nop
c0de559c:	00000744 	.word	0x00000744

c0de55a0 <contentCallback>:
c0de55a0:	b5e0      	push	{r5, r6, r7, lr}
c0de55a2:	4608      	mov	r0, r1
c0de55a4:	f10d 0107 	add.w	r1, sp, #7
c0de55a8:	f000 f928 	bl	c0de57fc <buttonGenericCallback>
c0de55ac:	b130      	cbz	r0, c0de55bc <contentCallback+0x1c>
c0de55ae:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de55b2:	2100      	movs	r1, #0
c0de55b4:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de55b8:	f7ff bed2 	b.w	c0de5360 <displayContent>
c0de55bc:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de55c0 <getContentElemAtIdx>:
c0de55c0:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de55c4:	4c1e      	ldr	r4, [pc, #120]	@ (c0de5640 <getContentElemAtIdx+0x80>)
c0de55c6:	4606      	mov	r6, r0
c0de55c8:	2700      	movs	r7, #0
c0de55ca:	eb09 0004 	add.w	r0, r9, r4
c0de55ce:	f890 3028 	ldrb.w	r3, [r0, #40]	@ 0x28
c0de55d2:	2b10      	cmp	r3, #16
c0de55d4:	d830      	bhi.n	c0de5638 <getContentElemAtIdx+0x78>
c0de55d6:	4693      	mov	fp, r2
c0de55d8:	2201      	movs	r2, #1
c0de55da:	9101      	str	r1, [sp, #4]
c0de55dc:	fa02 f303 	lsl.w	r3, r2, r3
c0de55e0:	f413 4f50 	tst.w	r3, #53248	@ 0xd000
c0de55e4:	d004      	beq.n	c0de55f0 <getContentElemAtIdx+0x30>
c0de55e6:	eb09 0004 	add.w	r0, r9, r4
c0de55ea:	46a2      	mov	sl, r4
c0de55ec:	6c44      	ldr	r4, [r0, #68]	@ 0x44
c0de55ee:	e005      	b.n	c0de55fc <getContentElemAtIdx+0x3c>
c0de55f0:	4a14      	ldr	r2, [pc, #80]	@ (c0de5644 <getContentElemAtIdx+0x84>)
c0de55f2:	4213      	tst	r3, r2
c0de55f4:	d020      	beq.n	c0de5638 <getContentElemAtIdx+0x78>
c0de55f6:	46a2      	mov	sl, r4
c0de55f8:	f100 043c 	add.w	r4, r0, #60	@ 0x3c
c0de55fc:	2700      	movs	r7, #0
c0de55fe:	2000      	movs	r0, #0
c0de5600:	f04f 0800 	mov.w	r8, #0
c0de5604:	4605      	mov	r5, r0
c0de5606:	7a20      	ldrb	r0, [r4, #8]
c0de5608:	4580      	cmp	r8, r0
c0de560a:	d215      	bcs.n	c0de5638 <getContentElemAtIdx+0x78>
c0de560c:	fa4f f188 	sxtb.w	r1, r8
c0de5610:	4620      	mov	r0, r4
c0de5612:	465a      	mov	r2, fp
c0de5614:	f7ff fe30 	bl	c0de5278 <getContentAtIdx>
c0de5618:	4607      	mov	r7, r0
c0de561a:	f7ff fe87 	bl	c0de532c <getContentNbElement>
c0de561e:	b2e9      	uxtb	r1, r5
c0de5620:	f108 0801 	add.w	r8, r8, #1
c0de5624:	4408      	add	r0, r1
c0de5626:	42b0      	cmp	r0, r6
c0de5628:	d9ec      	bls.n	c0de5604 <getContentElemAtIdx+0x44>
c0de562a:	eb09 000a 	add.w	r0, r9, sl
c0de562e:	9901      	ldr	r1, [sp, #4]
c0de5630:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de5634:	1b40      	subs	r0, r0, r5
c0de5636:	7008      	strb	r0, [r1, #0]
c0de5638:	4638      	mov	r0, r7
c0de563a:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de563e:	bf00      	nop
c0de5640:	00000744 	.word	0x00000744
c0de5644:	00010008 	.word	0x00010008

c0de5648 <getPairData>:
c0de5648:	b5b0      	push	{r4, r5, r7, lr}
c0de564a:	4615      	mov	r5, r2
c0de564c:	6802      	ldr	r2, [r0, #0]
c0de564e:	461c      	mov	r4, r3
c0de5650:	b112      	cbz	r2, c0de5658 <getPairData+0x10>
c0de5652:	eb02 1001 	add.w	r0, r2, r1, lsl #4
c0de5656:	e002      	b.n	c0de565e <getPairData+0x16>
c0de5658:	6842      	ldr	r2, [r0, #4]
c0de565a:	4608      	mov	r0, r1
c0de565c:	4790      	blx	r2
c0de565e:	f001 fd2f 	bl	c0de70c0 <pic>
c0de5662:	6802      	ldr	r2, [r0, #0]
c0de5664:	9904      	ldr	r1, [sp, #16]
c0de5666:	602a      	str	r2, [r5, #0]
c0de5668:	6842      	ldr	r2, [r0, #4]
c0de566a:	6022      	str	r2, [r4, #0]
c0de566c:	7b02      	ldrb	r2, [r0, #12]
c0de566e:	0753      	lsls	r3, r2, #29
c0de5670:	d403      	bmi.n	c0de567a <getPairData+0x32>
c0de5672:	0792      	lsls	r2, r2, #30
c0de5674:	d404      	bmi.n	c0de5680 <getPairData+0x38>
c0de5676:	2000      	movs	r0, #0
c0de5678:	e000      	b.n	c0de567c <getPairData+0x34>
c0de567a:	6880      	ldr	r0, [r0, #8]
c0de567c:	6008      	str	r0, [r1, #0]
c0de567e:	bdb0      	pop	{r4, r5, r7, pc}
c0de5680:	e9dd 2105 	ldrd	r2, r1, [sp, #20]
c0de5684:	2301      	movs	r3, #1
c0de5686:	700b      	strb	r3, [r1, #0]
c0de5688:	6880      	ldr	r0, [r0, #8]
c0de568a:	6010      	str	r0, [r2, #0]
c0de568c:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de5690 <onSwitchAction>:
c0de5690:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de5692:	b08f      	sub	sp, #60	@ 0x3c
c0de5694:	ac01      	add	r4, sp, #4
c0de5696:	2138      	movs	r1, #56	@ 0x38
c0de5698:	4620      	mov	r0, r4
c0de569a:	f002 f81d 	bl	c0de76d8 <__aeabi_memclr>
c0de569e:	4e26      	ldr	r6, [pc, #152]	@ (c0de5738 <onSwitchAction+0xa8>)
c0de56a0:	f10d 0103 	add.w	r1, sp, #3
c0de56a4:	4622      	mov	r2, r4
c0de56a6:	eb09 0006 	add.w	r0, r9, r6
c0de56aa:	f000 fdb4 	bl	c0de6216 <OUTLINED_FUNCTION_4>
c0de56ae:	2800      	cmp	r0, #0
c0de56b0:	d040      	beq.n	c0de5734 <onSwitchAction+0xa4>
c0de56b2:	4604      	mov	r4, r0
c0de56b4:	7800      	ldrb	r0, [r0, #0]
c0de56b6:	2807      	cmp	r0, #7
c0de56b8:	d13c      	bne.n	c0de5734 <onSwitchAction+0xa4>
c0de56ba:	6860      	ldr	r0, [r4, #4]
c0de56bc:	eb09 0706 	add.w	r7, r9, r6
c0de56c0:	f001 fcfe 	bl	c0de70c0 <pic>
c0de56c4:	4605      	mov	r5, r0
c0de56c6:	f897 0028 	ldrb.w	r0, [r7, #40]	@ 0x28
c0de56ca:	f89d 7003 	ldrb.w	r7, [sp, #3]
c0de56ce:	2810      	cmp	r0, #16
c0de56d0:	d811      	bhi.n	c0de56f6 <onSwitchAction+0x66>
c0de56d2:	2101      	movs	r1, #1
c0de56d4:	fa01 f000 	lsl.w	r0, r1, r0
c0de56d8:	f410 4f50 	tst.w	r0, #53248	@ 0xd000
c0de56dc:	d004      	beq.n	c0de56e8 <onSwitchAction+0x58>
c0de56de:	2000      	movs	r0, #0
c0de56e0:	2101      	movs	r1, #1
c0de56e2:	f000 f82d 	bl	c0de5740 <displaySettingsPage>
c0de56e6:	e006      	b.n	c0de56f6 <onSwitchAction+0x66>
c0de56e8:	4914      	ldr	r1, [pc, #80]	@ (c0de573c <onSwitchAction+0xac>)
c0de56ea:	4208      	tst	r0, r1
c0de56ec:	d003      	beq.n	c0de56f6 <onSwitchAction+0x66>
c0de56ee:	2000      	movs	r0, #0
c0de56f0:	2101      	movs	r1, #1
c0de56f2:	f7ff fe35 	bl	c0de5360 <displayContent>
c0de56f6:	6b60      	ldr	r0, [r4, #52]	@ 0x34
c0de56f8:	b188      	cbz	r0, c0de571e <onSwitchAction+0x8e>
c0de56fa:	eb07 0147 	add.w	r1, r7, r7, lsl #1
c0de56fe:	eb05 0481 	add.w	r4, r5, r1, lsl #2
c0de5702:	f001 fcdd 	bl	c0de70c0 <pic>
c0de5706:	7a21      	ldrb	r1, [r4, #8]
c0de5708:	eb09 0206 	add.w	r2, r9, r6
c0de570c:	4603      	mov	r3, r0
c0de570e:	7a60      	ldrb	r0, [r4, #9]
c0de5710:	3901      	subs	r1, #1
c0de5712:	bf18      	it	ne
c0de5714:	2101      	movne	r1, #1
c0de5716:	f992 2031 	ldrsb.w	r2, [r2, #49]	@ 0x31
c0de571a:	4798      	blx	r3
c0de571c:	e00a      	b.n	c0de5734 <onSwitchAction+0xa4>
c0de571e:	eb09 0006 	add.w	r0, r9, r6
c0de5722:	6cc2      	ldr	r2, [r0, #76]	@ 0x4c
c0de5724:	b132      	cbz	r2, c0de5734 <onSwitchAction+0xa4>
c0de5726:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de572a:	2100      	movs	r1, #0
c0de572c:	eb05 0080 	add.w	r0, r5, r0, lsl #2
c0de5730:	7a40      	ldrb	r0, [r0, #9]
c0de5732:	4790      	blx	r2
c0de5734:	b00f      	add	sp, #60	@ 0x3c
c0de5736:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de5738:	00000744 	.word	0x00000744
c0de573c:	00010008 	.word	0x00010008

c0de5740 <displaySettingsPage>:
c0de5740:	b5b0      	push	{r4, r5, r7, lr}
c0de5742:	b08a      	sub	sp, #40	@ 0x28
c0de5744:	460d      	mov	r5, r1
c0de5746:	4604      	mov	r4, r0
c0de5748:	a804      	add	r0, sp, #16
c0de574a:	2118      	movs	r1, #24
c0de574c:	f001 ffc4 	bl	c0de76d8 <__aeabi_memclr>
c0de5750:	481c      	ldr	r0, [pc, #112]	@ (c0de57c4 <displaySettingsPage+0x84>)
c0de5752:	f000 fd49 	bl	c0de61e8 <OUTLINED_FUNCTION_1>
c0de5756:	dd14      	ble.n	c0de5782 <displaySettingsPage+0x42>
c0de5758:	a904      	add	r1, sp, #16
c0de575a:	4628      	mov	r0, r5
c0de575c:	f7ff fe56 	bl	c0de540c <getContentPage>
c0de5760:	f89d 0010 	ldrb.w	r0, [sp, #16]
c0de5764:	b1e8      	cbz	r0, c0de57a2 <displaySettingsPage+0x62>
c0de5766:	f89d 3024 	ldrb.w	r3, [sp, #36]	@ 0x24
c0de576a:	e9dd 1205 	ldrd	r1, r2, [sp, #20]
c0de576e:	481a      	ldr	r0, [pc, #104]	@ (c0de57d8 <displaySettingsPage+0x98>)
c0de5770:	4478      	add	r0, pc
c0de5772:	2b00      	cmp	r3, #0
c0de5774:	9000      	str	r0, [sp, #0]
c0de5776:	4620      	mov	r0, r4
c0de5778:	bf18      	it	ne
c0de577a:	2301      	movne	r3, #1
c0de577c:	f7ff fee8 	bl	c0de5550 <drawSwitchStep>
c0de5780:	e01b      	b.n	c0de57ba <displaySettingsPage+0x7a>
c0de5782:	4448      	add	r0, r9
c0de5784:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de5788:	6d02      	ldr	r2, [r0, #80]	@ 0x50
c0de578a:	4b0f      	ldr	r3, [pc, #60]	@ (c0de57c8 <displaySettingsPage+0x88>)
c0de578c:	447b      	add	r3, pc
c0de578e:	290f      	cmp	r1, #15
c0de5790:	bf08      	it	eq
c0de5792:	4613      	moveq	r3, r2
c0de5794:	6343      	str	r3, [r0, #52]	@ 0x34
c0de5796:	480d      	ldr	r0, [pc, #52]	@ (c0de57cc <displaySettingsPage+0x8c>)
c0de5798:	4478      	add	r0, pc
c0de579a:	9005      	str	r0, [sp, #20]
c0de579c:	480c      	ldr	r0, [pc, #48]	@ (c0de57d0 <displaySettingsPage+0x90>)
c0de579e:	4478      	add	r0, pc
c0de57a0:	9007      	str	r0, [sp, #28]
c0de57a2:	e9dd 2305 	ldrd	r2, r3, [sp, #20]
c0de57a6:	9907      	ldr	r1, [sp, #28]
c0de57a8:	4d0a      	ldr	r5, [pc, #40]	@ (c0de57d4 <displaySettingsPage+0x94>)
c0de57aa:	2000      	movs	r0, #0
c0de57ac:	9002      	str	r0, [sp, #8]
c0de57ae:	447d      	add	r5, pc
c0de57b0:	e9cd 5000 	strd	r5, r0, [sp]
c0de57b4:	4620      	mov	r0, r4
c0de57b6:	f7ff fae9 	bl	c0de4d8c <drawStep>
c0de57ba:	f001 fa76 	bl	c0de6caa <nbgl_refresh>
c0de57be:	b00a      	add	sp, #40	@ 0x28
c0de57c0:	bdb0      	pop	{r4, r5, r7, pc}
c0de57c2:	bf00      	nop
c0de57c4:	00000744 	.word	0x00000744
c0de57c8:	fffff1cd 	.word	0xfffff1cd
c0de57cc:	000024af 	.word	0x000024af
c0de57d0:	000020f6 	.word	0x000020f6
c0de57d4:	0000002b 	.word	0x0000002b
c0de57d8:	00000069 	.word	0x00000069

c0de57dc <settingsCallback>:
c0de57dc:	b5e0      	push	{r5, r6, r7, lr}
c0de57de:	4608      	mov	r0, r1
c0de57e0:	f10d 0107 	add.w	r1, sp, #7
c0de57e4:	f000 f80a 	bl	c0de57fc <buttonGenericCallback>
c0de57e8:	b130      	cbz	r0, c0de57f8 <settingsCallback+0x1c>
c0de57ea:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de57ee:	2100      	movs	r1, #0
c0de57f0:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de57f4:	f7ff bfa4 	b.w	c0de5740 <displaySettingsPage>
c0de57f8:	bd8c      	pop	{r2, r3, r7, pc}
	...

c0de57fc <buttonGenericCallback>:
c0de57fc:	b5b0      	push	{r4, r5, r7, lr}
c0de57fe:	b090      	sub	sp, #64	@ 0x40
c0de5800:	460c      	mov	r4, r1
c0de5802:	4605      	mov	r5, r0
c0de5804:	a801      	add	r0, sp, #4
c0de5806:	2138      	movs	r1, #56	@ 0x38
c0de5808:	f001 ff66 	bl	c0de76d8 <__aeabi_memclr>
c0de580c:	2d04      	cmp	r5, #4
c0de580e:	d00d      	beq.n	c0de582c <buttonGenericCallback+0x30>
c0de5810:	2d01      	cmp	r5, #1
c0de5812:	d012      	beq.n	c0de583a <buttonGenericCallback+0x3e>
c0de5814:	2d00      	cmp	r5, #0
c0de5816:	d17c      	bne.n	c0de5912 <buttonGenericCallback+0x116>
c0de5818:	483f      	ldr	r0, [pc, #252]	@ (c0de5918 <buttonGenericCallback+0x11c>)
c0de581a:	eb09 0100 	add.w	r1, r9, r0
c0de581e:	f991 1031 	ldrsb.w	r1, [r1, #49]	@ 0x31
c0de5822:	2901      	cmp	r1, #1
c0de5824:	db1d      	blt.n	c0de5862 <buttonGenericCallback+0x66>
c0de5826:	3901      	subs	r1, #1
c0de5828:	2008      	movs	r0, #8
c0de582a:	e013      	b.n	c0de5854 <buttonGenericCallback+0x58>
c0de582c:	4c3a      	ldr	r4, [pc, #232]	@ (c0de5918 <buttonGenericCallback+0x11c>)
c0de582e:	eb09 0004 	add.w	r0, r9, r4
c0de5832:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de5834:	b338      	cbz	r0, c0de5886 <buttonGenericCallback+0x8a>
c0de5836:	4780      	blx	r0
c0de5838:	e06b      	b.n	c0de5912 <buttonGenericCallback+0x116>
c0de583a:	4837      	ldr	r0, [pc, #220]	@ (c0de5918 <buttonGenericCallback+0x11c>)
c0de583c:	eb09 0100 	add.w	r1, r9, r0
c0de5840:	f991 0031 	ldrsb.w	r0, [r1, #49]	@ 0x31
c0de5844:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de5848:	3901      	subs	r1, #1
c0de584a:	4281      	cmp	r1, r0
c0de584c:	dd61      	ble.n	c0de5912 <buttonGenericCallback+0x116>
c0de584e:	b2c0      	uxtb	r0, r0
c0de5850:	1c41      	adds	r1, r0, #1
c0de5852:	2000      	movs	r0, #0
c0de5854:	4a30      	ldr	r2, [pc, #192]	@ (c0de5918 <buttonGenericCallback+0x11c>)
c0de5856:	444a      	add	r2, r9
c0de5858:	f882 1031 	strb.w	r1, [r2, #49]	@ 0x31
c0de585c:	7020      	strb	r0, [r4, #0]
c0de585e:	2001      	movs	r0, #1
c0de5860:	e058      	b.n	c0de5914 <buttonGenericCallback+0x118>
c0de5862:	eb09 0100 	add.w	r1, r9, r0
c0de5866:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de586a:	2906      	cmp	r1, #6
c0de586c:	d151      	bne.n	c0de5912 <buttonGenericCallback+0x116>
c0de586e:	eb09 0100 	add.w	r1, r9, r0
c0de5872:	6d49      	ldr	r1, [r1, #84]	@ 0x54
c0de5874:	2900      	cmp	r1, #0
c0de5876:	d04c      	beq.n	c0de5912 <buttonGenericCallback+0x116>
c0de5878:	4448      	add	r0, r9
c0de587a:	f890 0058 	ldrb.w	r0, [r0, #88]	@ 0x58
c0de587e:	2801      	cmp	r0, #1
c0de5880:	d047      	beq.n	c0de5912 <buttonGenericCallback+0x116>
c0de5882:	2008      	movs	r0, #8
c0de5884:	e7ea      	b.n	c0de585c <buttonGenericCallback+0x60>
c0de5886:	eb09 0004 	add.w	r0, r9, r4
c0de588a:	f890 1028 	ldrb.w	r1, [r0, #40]	@ 0x28
c0de588e:	2000      	movs	r0, #0
c0de5890:	2910      	cmp	r1, #16
c0de5892:	d83f      	bhi.n	c0de5914 <buttonGenericCallback+0x118>
c0de5894:	2201      	movs	r2, #1
c0de5896:	fa02 f101 	lsl.w	r1, r2, r1
c0de589a:	4a20      	ldr	r2, [pc, #128]	@ (c0de591c <buttonGenericCallback+0x120>)
c0de589c:	4211      	tst	r1, r2
c0de589e:	d039      	beq.n	c0de5914 <buttonGenericCallback+0x118>
c0de58a0:	eb09 0004 	add.w	r0, r9, r4
c0de58a4:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de58a8:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de58ac:	aa01      	add	r2, sp, #4
c0de58ae:	f7ff fe87 	bl	c0de55c0 <getContentElemAtIdx>
c0de58b2:	b370      	cbz	r0, c0de5912 <buttonGenericCallback+0x116>
c0de58b4:	7801      	ldrb	r1, [r0, #0]
c0de58b6:	4602      	mov	r2, r0
c0de58b8:	2000      	movs	r0, #0
c0de58ba:	b359      	cbz	r1, c0de5914 <buttonGenericCallback+0x118>
c0de58bc:	290a      	cmp	r1, #10
c0de58be:	d009      	beq.n	c0de58d4 <buttonGenericCallback+0xd8>
c0de58c0:	2907      	cmp	r1, #7
c0de58c2:	d00f      	beq.n	c0de58e4 <buttonGenericCallback+0xe8>
c0de58c4:	2909      	cmp	r1, #9
c0de58c6:	d011      	beq.n	c0de58ec <buttonGenericCallback+0xf0>
c0de58c8:	2903      	cmp	r1, #3
c0de58ca:	f04f 0100 	mov.w	r1, #0
c0de58ce:	d112      	bne.n	c0de58f6 <buttonGenericCallback+0xfa>
c0de58d0:	7c10      	ldrb	r0, [r2, #16]
c0de58d2:	e005      	b.n	c0de58e0 <buttonGenericCallback+0xe4>
c0de58d4:	eb09 0004 	add.w	r0, r9, r4
c0de58d8:	6891      	ldr	r1, [r2, #8]
c0de58da:	f990 0031 	ldrsb.w	r0, [r0, #49]	@ 0x31
c0de58de:	5c08      	ldrb	r0, [r1, r0]
c0de58e0:	2100      	movs	r1, #0
c0de58e2:	e008      	b.n	c0de58f6 <buttonGenericCallback+0xfa>
c0de58e4:	6850      	ldr	r0, [r2, #4]
c0de58e6:	2100      	movs	r1, #0
c0de58e8:	7a40      	ldrb	r0, [r0, #9]
c0de58ea:	e004      	b.n	c0de58f6 <buttonGenericCallback+0xfa>
c0de58ec:	eb09 0004 	add.w	r0, r9, r4
c0de58f0:	f890 1031 	ldrb.w	r1, [r0, #49]	@ 0x31
c0de58f4:	7ad0      	ldrb	r0, [r2, #11]
c0de58f6:	6b53      	ldr	r3, [r2, #52]	@ 0x34
c0de58f8:	b133      	cbz	r3, c0de5908 <buttonGenericCallback+0x10c>
c0de58fa:	eb09 0104 	add.w	r1, r9, r4
c0de58fe:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de5902:	2100      	movs	r1, #0
c0de5904:	4798      	blx	r3
c0de5906:	e004      	b.n	c0de5912 <buttonGenericCallback+0x116>
c0de5908:	eb09 0204 	add.w	r2, r9, r4
c0de590c:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
c0de590e:	b102      	cbz	r2, c0de5912 <buttonGenericCallback+0x116>
c0de5910:	4790      	blx	r2
c0de5912:	2000      	movs	r0, #0
c0de5914:	b010      	add	sp, #64	@ 0x40
c0de5916:	bdb0      	pop	{r4, r5, r7, pc}
c0de5918:	00000744 	.word	0x00000744
c0de591c:	0001c008 	.word	0x0001c008

c0de5920 <displayHomePage>:
c0de5920:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de5924:	4680      	mov	r8, r0
c0de5926:	4832      	ldr	r0, [pc, #200]	@ (c0de59f0 <displayHomePage+0xd0>)
c0de5928:	2200      	movs	r2, #0
c0de592a:	eb09 0100 	add.w	r1, r9, r0
c0de592e:	6c4f      	ldr	r7, [r1, #68]	@ 0x44
c0de5930:	6ccd      	ldr	r5, [r1, #76]	@ 0x4c
c0de5932:	634a      	str	r2, [r1, #52]	@ 0x34
c0de5934:	2202      	movs	r2, #2
c0de5936:	2d00      	cmp	r5, #0
c0de5938:	463e      	mov	r6, r7
c0de593a:	bf08      	it	eq
c0de593c:	2201      	moveq	r2, #1
c0de593e:	2f00      	cmp	r7, #0
c0de5940:	bf18      	it	ne
c0de5942:	2601      	movne	r6, #1
c0de5944:	f991 3031 	ldrsb.w	r3, [r1, #49]	@ 0x31
c0de5948:	b183      	cbz	r3, c0de596c <displayHomePage+0x4c>
c0de594a:	2401      	movs	r4, #1
c0de594c:	2d00      	cmp	r5, #0
c0de594e:	bf08      	it	eq
c0de5950:	24ff      	moveq	r4, #255	@ 0xff
c0de5952:	429c      	cmp	r4, r3
c0de5954:	d111      	bne.n	c0de597a <displayHomePage+0x5a>
c0de5956:	eb09 0400 	add.w	r4, r9, r0
c0de595a:	e9d5 0500 	ldrd	r0, r5, [r5]
c0de595e:	f001 fbaf 	bl	c0de70c0 <pic>
c0de5962:	4602      	mov	r2, r0
c0de5964:	6ce0      	ldr	r0, [r4, #76]	@ 0x4c
c0de5966:	6880      	ldr	r0, [r0, #8]
c0de5968:	6360      	str	r0, [r4, #52]	@ 0x34
c0de596a:	e004      	b.n	c0de5976 <displayHomePage+0x56>
c0de596c:	eb09 0100 	add.w	r1, r9, r0
c0de5970:	e9d1 520f 	ldrd	r5, r2, [r1, #60]	@ 0x3c
c0de5974:	b312      	cbz	r2, c0de59bc <displayHomePage+0x9c>
c0de5976:	2300      	movs	r3, #0
c0de5978:	e02c      	b.n	c0de59d4 <displayHomePage+0xb4>
c0de597a:	2f00      	cmp	r7, #0
c0de597c:	4614      	mov	r4, r2
c0de597e:	bf08      	it	eq
c0de5980:	24ff      	moveq	r4, #255	@ 0xff
c0de5982:	429c      	cmp	r4, r3
c0de5984:	d109      	bne.n	c0de599a <displayHomePage+0x7a>
c0de5986:	491c      	ldr	r1, [pc, #112]	@ (c0de59f8 <displayHomePage+0xd8>)
c0de5988:	4448      	add	r0, r9
c0de598a:	2300      	movs	r3, #0
c0de598c:	4479      	add	r1, pc
c0de598e:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5990:	4d1a      	ldr	r5, [pc, #104]	@ (c0de59fc <displayHomePage+0xdc>)
c0de5992:	4a1b      	ldr	r2, [pc, #108]	@ (c0de5a00 <displayHomePage+0xe0>)
c0de5994:	447d      	add	r5, pc
c0de5996:	447a      	add	r2, pc
c0de5998:	e01c      	b.n	c0de59d4 <displayHomePage+0xb4>
c0de599a:	6c89      	ldr	r1, [r1, #72]	@ 0x48
c0de599c:	4432      	add	r2, r6
c0de599e:	4448      	add	r0, r9
c0de59a0:	2900      	cmp	r1, #0
c0de59a2:	bf08      	it	eq
c0de59a4:	22ff      	moveq	r2, #255	@ 0xff
c0de59a6:	429a      	cmp	r2, r3
c0de59a8:	d10d      	bne.n	c0de59c6 <displayHomePage+0xa6>
c0de59aa:	4916      	ldr	r1, [pc, #88]	@ (c0de5a04 <displayHomePage+0xe4>)
c0de59ac:	2300      	movs	r3, #0
c0de59ae:	4479      	add	r1, pc
c0de59b0:	6341      	str	r1, [r0, #52]	@ 0x34
c0de59b2:	4d15      	ldr	r5, [pc, #84]	@ (c0de5a08 <displayHomePage+0xe8>)
c0de59b4:	4a15      	ldr	r2, [pc, #84]	@ (c0de5a0c <displayHomePage+0xec>)
c0de59b6:	447d      	add	r5, pc
c0de59b8:	447a      	add	r2, pc
c0de59ba:	e00b      	b.n	c0de59d4 <displayHomePage+0xb4>
c0de59bc:	4448      	add	r0, r9
c0de59be:	6b82      	ldr	r2, [r0, #56]	@ 0x38
c0de59c0:	4b0c      	ldr	r3, [pc, #48]	@ (c0de59f4 <displayHomePage+0xd4>)
c0de59c2:	447b      	add	r3, pc
c0de59c4:	e006      	b.n	c0de59d4 <displayHomePage+0xb4>
c0de59c6:	6d01      	ldr	r1, [r0, #80]	@ 0x50
c0de59c8:	2300      	movs	r3, #0
c0de59ca:	6341      	str	r1, [r0, #52]	@ 0x34
c0de59cc:	4d10      	ldr	r5, [pc, #64]	@ (c0de5a10 <displayHomePage+0xf0>)
c0de59ce:	4a11      	ldr	r2, [pc, #68]	@ (c0de5a14 <displayHomePage+0xf4>)
c0de59d0:	447d      	add	r5, pc
c0de59d2:	447a      	add	r2, pc
c0de59d4:	4910      	ldr	r1, [pc, #64]	@ (c0de5a18 <displayHomePage+0xf8>)
c0de59d6:	2000      	movs	r0, #0
c0de59d8:	9002      	str	r0, [sp, #8]
c0de59da:	4479      	add	r1, pc
c0de59dc:	e9cd 1000 	strd	r1, r0, [sp]
c0de59e0:	4640      	mov	r0, r8
c0de59e2:	4629      	mov	r1, r5
c0de59e4:	f7ff f9d2 	bl	c0de4d8c <drawStep>
c0de59e8:	e8bd 41ff 	ldmia.w	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
c0de59ec:	f001 b95d 	b.w	c0de6caa <nbgl_refresh>
c0de59f0:	00000744 	.word	0x00000744
c0de59f4:	00002316 	.word	0x00002316
c0de59f8:	0000008d 	.word	0x0000008d
c0de59fc:	00001f23 	.word	0x00001f23
c0de5a00:	0000221d 	.word	0x0000221d
c0de5a04:	00000073 	.word	0x00000073
c0de5a08:	00001e6c 	.word	0x00001e6c
c0de5a0c:	000022c7 	.word	0x000022c7
c0de5a10:	00001e75 	.word	0x00001e75
c0de5a14:	00002313 	.word	0x00002313
c0de5a18:	0000006b 	.word	0x0000006b

c0de5a1c <startUseCaseSettings>:
c0de5a1c:	2000      	movs	r0, #0
c0de5a1e:	f7fe bf61 	b.w	c0de48e4 <startUseCaseSettingsAtPage>
	...

c0de5a24 <startUseCaseInfo>:
c0de5a24:	4807      	ldr	r0, [pc, #28]	@ (c0de5a44 <startUseCaseInfo+0x20>)
c0de5a26:	210d      	movs	r1, #13
c0de5a28:	4448      	add	r0, r9
c0de5a2a:	f880 1028 	strb.w	r1, [r0, #40]	@ 0x28
c0de5a2e:	2100      	movs	r1, #0
c0de5a30:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5a34:	6c81      	ldr	r1, [r0, #72]	@ 0x48
c0de5a36:	7b09      	ldrb	r1, [r1, #12]
c0de5a38:	3101      	adds	r1, #1
c0de5a3a:	f880 1030 	strb.w	r1, [r0, #48]	@ 0x30
c0de5a3e:	2000      	movs	r0, #0
c0de5a40:	f000 b810 	b.w	c0de5a64 <displayInfoPage>
c0de5a44:	00000744 	.word	0x00000744

c0de5a48 <homeCallback>:
c0de5a48:	b5e0      	push	{r5, r6, r7, lr}
c0de5a4a:	4608      	mov	r0, r1
c0de5a4c:	f10d 0107 	add.w	r1, sp, #7
c0de5a50:	f7ff fed4 	bl	c0de57fc <buttonGenericCallback>
c0de5a54:	b128      	cbz	r0, c0de5a62 <homeCallback+0x1a>
c0de5a56:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5a5a:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5a5e:	f7ff bf5f 	b.w	c0de5920 <displayHomePage>
c0de5a62:	bd8c      	pop	{r2, r3, r7, pc}

c0de5a64 <displayInfoPage>:
c0de5a64:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de5a66:	4604      	mov	r4, r0
c0de5a68:	4816      	ldr	r0, [pc, #88]	@ (c0de5ac4 <displayInfoPage+0x60>)
c0de5a6a:	f000 fbbd 	bl	c0de61e8 <OUTLINED_FUNCTION_1>
c0de5a6e:	dd11      	ble.n	c0de5a94 <displayInfoPage+0x30>
c0de5a70:	eb09 0700 	add.w	r7, r9, r0
c0de5a74:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de5a76:	6800      	ldr	r0, [r0, #0]
c0de5a78:	4e13      	ldr	r6, [pc, #76]	@ (c0de5ac8 <displayInfoPage+0x64>)
c0de5a7a:	447e      	add	r6, pc
c0de5a7c:	47b0      	blx	r6
c0de5a7e:	f000 fbd5 	bl	c0de622c <OUTLINED_FUNCTION_7>
c0de5a82:	4605      	mov	r5, r0
c0de5a84:	6cb8      	ldr	r0, [r7, #72]	@ 0x48
c0de5a86:	6840      	ldr	r0, [r0, #4]
c0de5a88:	47b0      	blx	r6
c0de5a8a:	f000 fbcf 	bl	c0de622c <OUTLINED_FUNCTION_7>
c0de5a8e:	4603      	mov	r3, r0
c0de5a90:	2100      	movs	r1, #0
c0de5a92:	e008      	b.n	c0de5aa6 <displayInfoPage+0x42>
c0de5a94:	490d      	ldr	r1, [pc, #52]	@ (c0de5acc <displayInfoPage+0x68>)
c0de5a96:	4448      	add	r0, r9
c0de5a98:	2300      	movs	r3, #0
c0de5a9a:	4479      	add	r1, pc
c0de5a9c:	6341      	str	r1, [r0, #52]	@ 0x34
c0de5a9e:	490c      	ldr	r1, [pc, #48]	@ (c0de5ad0 <displayInfoPage+0x6c>)
c0de5aa0:	4d0c      	ldr	r5, [pc, #48]	@ (c0de5ad4 <displayInfoPage+0x70>)
c0de5aa2:	4479      	add	r1, pc
c0de5aa4:	447d      	add	r5, pc
c0de5aa6:	4e0c      	ldr	r6, [pc, #48]	@ (c0de5ad8 <displayInfoPage+0x74>)
c0de5aa8:	2002      	movs	r0, #2
c0de5aaa:	2200      	movs	r2, #0
c0de5aac:	9002      	str	r0, [sp, #8]
c0de5aae:	4620      	mov	r0, r4
c0de5ab0:	447e      	add	r6, pc
c0de5ab2:	e9cd 6200 	strd	r6, r2, [sp]
c0de5ab6:	462a      	mov	r2, r5
c0de5ab8:	f7ff f968 	bl	c0de4d8c <drawStep>
c0de5abc:	e8bd 40fe 	ldmia.w	sp!, {r1, r2, r3, r4, r5, r6, r7, lr}
c0de5ac0:	f001 b8f3 	b.w	c0de6caa <nbgl_refresh>
c0de5ac4:	00000744 	.word	0x00000744
c0de5ac8:	00001643 	.word	0x00001643
c0de5acc:	ffffeebf 	.word	0xffffeebf
c0de5ad0:	00001df2 	.word	0x00001df2
c0de5ad4:	000021a3 	.word	0x000021a3
c0de5ad8:	00000029 	.word	0x00000029

c0de5adc <infoCallback>:
c0de5adc:	b5e0      	push	{r5, r6, r7, lr}
c0de5ade:	4608      	mov	r0, r1
c0de5ae0:	f10d 0107 	add.w	r1, sp, #7
c0de5ae4:	f7ff fe8a 	bl	c0de57fc <buttonGenericCallback>
c0de5ae8:	b128      	cbz	r0, c0de5af6 <infoCallback+0x1a>
c0de5aea:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de5aee:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5af2:	f7ff bfb7 	b.w	c0de5a64 <displayInfoPage>
c0de5af6:	bd8c      	pop	{r2, r3, r7, pc}

c0de5af8 <displayWarningStep>:
c0de5af8:	b5fe      	push	{r1, r2, r3, r4, r5, r6, r7, lr}
c0de5afa:	2000      	movs	r0, #0
c0de5afc:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de5b00:	e9cd 0002 	strd	r0, r0, [sp, #8]
c0de5b04:	482b      	ldr	r0, [pc, #172]	@ (c0de5bb4 <displayWarningStep+0xbc>)
c0de5b06:	eb09 0100 	add.w	r1, r9, r0
c0de5b0a:	69c9      	ldr	r1, [r1, #28]
c0de5b0c:	680a      	ldr	r2, [r1, #0]
c0de5b0e:	06d3      	lsls	r3, r2, #27
c0de5b10:	d41b      	bmi.n	c0de5b4a <displayWarningStep+0x52>
c0de5b12:	2a00      	cmp	r2, #0
c0de5b14:	d145      	bne.n	c0de5ba2 <displayWarningStep+0xaa>
c0de5b16:	69ca      	ldr	r2, [r1, #28]
c0de5b18:	2a00      	cmp	r2, #0
c0de5b1a:	d042      	beq.n	c0de5ba2 <displayWarningStep+0xaa>
c0de5b1c:	eb09 0300 	add.w	r3, r9, r0
c0de5b20:	f893 3026 	ldrb.w	r3, [r3, #38]	@ 0x26
c0de5b24:	2b00      	cmp	r3, #0
c0de5b26:	d03e      	beq.n	c0de5ba6 <displayWarningStep+0xae>
c0de5b28:	4448      	add	r0, r9
c0de5b2a:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de5b2e:	3801      	subs	r0, #1
c0de5b30:	4298      	cmp	r0, r3
c0de5b32:	d11d      	bne.n	c0de5b70 <displayWarningStep+0x78>
c0de5b34:	6948      	ldr	r0, [r1, #20]
c0de5b36:	7901      	ldrb	r1, [r0, #4]
c0de5b38:	bb99      	cbnz	r1, c0de5ba2 <displayWarningStep+0xaa>
c0de5b3a:	68c1      	ldr	r1, [r0, #12]
c0de5b3c:	6982      	ldr	r2, [r0, #24]
c0de5b3e:	6a00      	ldr	r0, [r0, #32]
c0de5b40:	e9cd 2002 	strd	r2, r0, [sp, #8]
c0de5b44:	2003      	movs	r0, #3
c0de5b46:	9104      	str	r1, [sp, #16]
c0de5b48:	e01e      	b.n	c0de5b88 <displayWarningStep+0x90>
c0de5b4a:	eb09 0100 	add.w	r1, r9, r0
c0de5b4e:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de5b52:	b179      	cbz	r1, c0de5b74 <displayWarningStep+0x7c>
c0de5b54:	4448      	add	r0, r9
c0de5b56:	f890 0027 	ldrb.w	r0, [r0, #39]	@ 0x27
c0de5b5a:	3801      	subs	r0, #1
c0de5b5c:	4288      	cmp	r0, r1
c0de5b5e:	d107      	bne.n	c0de5b70 <displayWarningStep+0x78>
c0de5b60:	aa02      	add	r2, sp, #8
c0de5b62:	2000      	movs	r0, #0
c0de5b64:	f102 0108 	add.w	r1, r2, #8
c0de5b68:	f000 f82e 	bl	c0de5bc8 <getLastPageInfo>
c0de5b6c:	200a      	movs	r0, #10
c0de5b6e:	e00b      	b.n	c0de5b88 <displayWarningStep+0x90>
c0de5b70:	2000      	movs	r0, #0
c0de5b72:	e009      	b.n	c0de5b88 <displayWarningStep+0x90>
c0de5b74:	4810      	ldr	r0, [pc, #64]	@ (c0de5bb8 <displayWarningStep+0xc0>)
c0de5b76:	4478      	add	r0, pc
c0de5b78:	9003      	str	r0, [sp, #12]
c0de5b7a:	4810      	ldr	r0, [pc, #64]	@ (c0de5bbc <displayWarningStep+0xc4>)
c0de5b7c:	4478      	add	r0, pc
c0de5b7e:	9002      	str	r0, [sp, #8]
c0de5b80:	480f      	ldr	r0, [pc, #60]	@ (c0de5bc0 <displayWarningStep+0xc8>)
c0de5b82:	4478      	add	r0, pc
c0de5b84:	9004      	str	r0, [sp, #16]
c0de5b86:	2001      	movs	r0, #1
c0de5b88:	2101      	movs	r1, #1
c0de5b8a:	2200      	movs	r2, #0
c0de5b8c:	f88d 1015 	strb.w	r1, [sp, #21]
c0de5b90:	2100      	movs	r1, #0
c0de5b92:	9100      	str	r1, [sp, #0]
c0de5b94:	490b      	ldr	r1, [pc, #44]	@ (c0de5bc4 <displayWarningStep+0xcc>)
c0de5b96:	ab02      	add	r3, sp, #8
c0de5b98:	4479      	add	r1, pc
c0de5b9a:	f7fe fc93 	bl	c0de44c4 <nbgl_stepDrawCenteredInfo>
c0de5b9e:	f001 f884 	bl	c0de6caa <nbgl_refresh>
c0de5ba2:	b006      	add	sp, #24
c0de5ba4:	bd80      	pop	{r7, pc}
c0de5ba6:	6850      	ldr	r0, [r2, #4]
c0de5ba8:	6911      	ldr	r1, [r2, #16]
c0de5baa:	6992      	ldr	r2, [r2, #24]
c0de5bac:	9004      	str	r0, [sp, #16]
c0de5bae:	e9cd 1202 	strd	r1, r2, [sp, #8]
c0de5bb2:	e7e8      	b.n	c0de5b86 <displayWarningStep+0x8e>
c0de5bb4:	00000744 	.word	0x00000744
c0de5bb8:	00001f38 	.word	0x00001f38
c0de5bbc:	00002065 	.word	0x00002065
c0de5bc0:	00001df7 	.word	0x00001df7
c0de5bc4:	00000155 	.word	0x00000155

c0de5bc8 <getLastPageInfo>:
c0de5bc8:	b170      	cbz	r0, c0de5be8 <getLastPageInfo+0x20>
c0de5bca:	4833      	ldr	r0, [pc, #204]	@ (c0de5c98 <getLastPageInfo+0xd0>)
c0de5bcc:	4478      	add	r0, pc
c0de5bce:	6008      	str	r0, [r1, #0]
c0de5bd0:	4830      	ldr	r0, [pc, #192]	@ (c0de5c94 <getLastPageInfo+0xcc>)
c0de5bd2:	eb09 0100 	add.w	r1, r9, r0
c0de5bd6:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de5bda:	2904      	cmp	r1, #4
c0de5bdc:	d113      	bne.n	c0de5c06 <getLastPageInfo+0x3e>
c0de5bde:	482f      	ldr	r0, [pc, #188]	@ (c0de5c9c <getLastPageInfo+0xd4>)
c0de5be0:	492f      	ldr	r1, [pc, #188]	@ (c0de5ca0 <getLastPageInfo+0xd8>)
c0de5be2:	4478      	add	r0, pc
c0de5be4:	4479      	add	r1, pc
c0de5be6:	e04f      	b.n	c0de5c88 <getLastPageInfo+0xc0>
c0de5be8:	4838      	ldr	r0, [pc, #224]	@ (c0de5ccc <getLastPageInfo+0x104>)
c0de5bea:	4478      	add	r0, pc
c0de5bec:	6008      	str	r0, [r1, #0]
c0de5bee:	4829      	ldr	r0, [pc, #164]	@ (c0de5c94 <getLastPageInfo+0xcc>)
c0de5bf0:	eb09 0100 	add.w	r1, r9, r0
c0de5bf4:	f891 1028 	ldrb.w	r1, [r1, #40]	@ 0x28
c0de5bf8:	2904      	cmp	r1, #4
c0de5bfa:	d10b      	bne.n	c0de5c14 <getLastPageInfo+0x4c>
c0de5bfc:	4834      	ldr	r0, [pc, #208]	@ (c0de5cd0 <getLastPageInfo+0x108>)
c0de5bfe:	4935      	ldr	r1, [pc, #212]	@ (c0de5cd4 <getLastPageInfo+0x10c>)
c0de5c00:	4478      	add	r0, pc
c0de5c02:	4479      	add	r1, pc
c0de5c04:	e040      	b.n	c0de5c88 <getLastPageInfo+0xc0>
c0de5c06:	eb09 0100 	add.w	r1, r9, r0
c0de5c0a:	6cc9      	ldr	r1, [r1, #76]	@ 0x4c
c0de5c0c:	b171      	cbz	r1, c0de5c2c <getLastPageInfo+0x64>
c0de5c0e:	4825      	ldr	r0, [pc, #148]	@ (c0de5ca4 <getLastPageInfo+0xdc>)
c0de5c10:	4478      	add	r0, pc
c0de5c12:	e039      	b.n	c0de5c88 <getLastPageInfo+0xc0>
c0de5c14:	4448      	add	r0, r9
c0de5c16:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de5c18:	f010 0007 	ands.w	r0, r0, #7
c0de5c1c:	d017      	beq.n	c0de5c4e <getLastPageInfo+0x86>
c0de5c1e:	2801      	cmp	r0, #1
c0de5c20:	d11a      	bne.n	c0de5c58 <getLastPageInfo+0x90>
c0de5c22:	482f      	ldr	r0, [pc, #188]	@ (c0de5ce0 <getLastPageInfo+0x118>)
c0de5c24:	492f      	ldr	r1, [pc, #188]	@ (c0de5ce4 <getLastPageInfo+0x11c>)
c0de5c26:	4478      	add	r0, pc
c0de5c28:	4479      	add	r1, pc
c0de5c2a:	e02d      	b.n	c0de5c88 <getLastPageInfo+0xc0>
c0de5c2c:	4448      	add	r0, r9
c0de5c2e:	6ac0      	ldr	r0, [r0, #44]	@ 0x2c
c0de5c30:	f000 0107 	and.w	r1, r0, #7
c0de5c34:	2901      	cmp	r1, #1
c0de5c36:	d014      	beq.n	c0de5c62 <getLastPageInfo+0x9a>
c0de5c38:	b9e9      	cbnz	r1, c0de5c76 <getLastPageInfo+0xae>
c0de5c3a:	0640      	lsls	r0, r0, #25
c0de5c3c:	481a      	ldr	r0, [pc, #104]	@ (c0de5ca8 <getLastPageInfo+0xe0>)
c0de5c3e:	491b      	ldr	r1, [pc, #108]	@ (c0de5cac <getLastPageInfo+0xe4>)
c0de5c40:	4478      	add	r0, pc
c0de5c42:	4479      	add	r1, pc
c0de5c44:	bf58      	it	pl
c0de5c46:	4601      	movpl	r1, r0
c0de5c48:	4819      	ldr	r0, [pc, #100]	@ (c0de5cb0 <getLastPageInfo+0xe8>)
c0de5c4a:	4478      	add	r0, pc
c0de5c4c:	e01c      	b.n	c0de5c88 <getLastPageInfo+0xc0>
c0de5c4e:	4822      	ldr	r0, [pc, #136]	@ (c0de5cd8 <getLastPageInfo+0x110>)
c0de5c50:	4922      	ldr	r1, [pc, #136]	@ (c0de5cdc <getLastPageInfo+0x114>)
c0de5c52:	4478      	add	r0, pc
c0de5c54:	4479      	add	r1, pc
c0de5c56:	e017      	b.n	c0de5c88 <getLastPageInfo+0xc0>
c0de5c58:	4823      	ldr	r0, [pc, #140]	@ (c0de5ce8 <getLastPageInfo+0x120>)
c0de5c5a:	4924      	ldr	r1, [pc, #144]	@ (c0de5cec <getLastPageInfo+0x124>)
c0de5c5c:	4478      	add	r0, pc
c0de5c5e:	4479      	add	r1, pc
c0de5c60:	e012      	b.n	c0de5c88 <getLastPageInfo+0xc0>
c0de5c62:	0640      	lsls	r0, r0, #25
c0de5c64:	4813      	ldr	r0, [pc, #76]	@ (c0de5cb4 <getLastPageInfo+0xec>)
c0de5c66:	4914      	ldr	r1, [pc, #80]	@ (c0de5cb8 <getLastPageInfo+0xf0>)
c0de5c68:	4478      	add	r0, pc
c0de5c6a:	4479      	add	r1, pc
c0de5c6c:	bf58      	it	pl
c0de5c6e:	4601      	movpl	r1, r0
c0de5c70:	4812      	ldr	r0, [pc, #72]	@ (c0de5cbc <getLastPageInfo+0xf4>)
c0de5c72:	4478      	add	r0, pc
c0de5c74:	e008      	b.n	c0de5c88 <getLastPageInfo+0xc0>
c0de5c76:	0640      	lsls	r0, r0, #25
c0de5c78:	4811      	ldr	r0, [pc, #68]	@ (c0de5cc0 <getLastPageInfo+0xf8>)
c0de5c7a:	4912      	ldr	r1, [pc, #72]	@ (c0de5cc4 <getLastPageInfo+0xfc>)
c0de5c7c:	4478      	add	r0, pc
c0de5c7e:	4479      	add	r1, pc
c0de5c80:	bf58      	it	pl
c0de5c82:	4601      	movpl	r1, r0
c0de5c84:	4810      	ldr	r0, [pc, #64]	@ (c0de5cc8 <getLastPageInfo+0x100>)
c0de5c86:	4478      	add	r0, pc
c0de5c88:	6011      	str	r1, [r2, #0]
c0de5c8a:	4902      	ldr	r1, [pc, #8]	@ (c0de5c94 <getLastPageInfo+0xcc>)
c0de5c8c:	4449      	add	r1, r9
c0de5c8e:	6348      	str	r0, [r1, #52]	@ 0x34
c0de5c90:	4770      	bx	lr
c0de5c92:	bf00      	nop
c0de5c94:	00000744 	.word	0x00000744
c0de5c98:	00001d8a 	.word	0x00001d8a
c0de5c9c:	0000018f 	.word	0x0000018f
c0de5ca0:	0000210a 	.word	0x0000210a
c0de5ca4:	00000161 	.word	0x00000161
c0de5ca8:	00001edd 	.word	0x00001edd
c0de5cac:	00001f7e 	.word	0x00001f7e
c0de5cb0:	00000127 	.word	0x00000127
c0de5cb4:	00001e99 	.word	0x00001e99
c0de5cb8:	00001ed7 	.word	0x00001ed7
c0de5cbc:	000000ff 	.word	0x000000ff
c0de5cc0:	0000200c 	.word	0x0000200c
c0de5cc4:	00001f77 	.word	0x00001f77
c0de5cc8:	000000eb 	.word	0x000000eb
c0de5ccc:	00001cf0 	.word	0x00001cf0
c0de5cd0:	00000185 	.word	0x00000185
c0de5cd4:	00001f82 	.word	0x00001f82
c0de5cd8:	00000133 	.word	0x00000133
c0de5cdc:	00001eda 	.word	0x00001eda
c0de5ce0:	0000015f 	.word	0x0000015f
c0de5ce4:	0000206f 	.word	0x0000206f
c0de5ce8:	00000129 	.word	0x00000129
c0de5cec:	00002048 	.word	0x00002048

c0de5cf0 <warningNavigate>:
c0de5cf0:	2904      	cmp	r1, #4
c0de5cf2:	d009      	beq.n	c0de5d08 <warningNavigate+0x18>
c0de5cf4:	2901      	cmp	r1, #1
c0de5cf6:	d01f      	beq.n	c0de5d38 <warningNavigate+0x48>
c0de5cf8:	b9e9      	cbnz	r1, c0de5d36 <warningNavigate+0x46>
c0de5cfa:	481d      	ldr	r0, [pc, #116]	@ (c0de5d70 <warningNavigate+0x80>)
c0de5cfc:	4448      	add	r0, r9
c0de5cfe:	f890 0026 	ldrb.w	r0, [r0, #38]	@ 0x26
c0de5d02:	b368      	cbz	r0, c0de5d60 <warningNavigate+0x70>
c0de5d04:	3801      	subs	r0, #1
c0de5d06:	e022      	b.n	c0de5d4e <warningNavigate+0x5e>
c0de5d08:	4819      	ldr	r0, [pc, #100]	@ (c0de5d70 <warningNavigate+0x80>)
c0de5d0a:	eb09 0100 	add.w	r1, r9, r0
c0de5d0e:	69c9      	ldr	r1, [r1, #28]
c0de5d10:	7809      	ldrb	r1, [r1, #0]
c0de5d12:	06c9      	lsls	r1, r1, #27
c0de5d14:	d50f      	bpl.n	c0de5d36 <warningNavigate+0x46>
c0de5d16:	eb09 0100 	add.w	r1, r9, r0
c0de5d1a:	f891 1026 	ldrb.w	r1, [r1, #38]	@ 0x26
c0de5d1e:	b321      	cbz	r1, c0de5d6a <warningNavigate+0x7a>
c0de5d20:	eb09 0200 	add.w	r2, r9, r0
c0de5d24:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de5d28:	3a01      	subs	r2, #1
c0de5d2a:	428a      	cmp	r2, r1
c0de5d2c:	d103      	bne.n	c0de5d36 <warningNavigate+0x46>
c0de5d2e:	4448      	add	r0, r9
c0de5d30:	6a01      	ldr	r1, [r0, #32]
c0de5d32:	2000      	movs	r0, #0
c0de5d34:	4708      	bx	r1
c0de5d36:	4770      	bx	lr
c0de5d38:	480d      	ldr	r0, [pc, #52]	@ (c0de5d70 <warningNavigate+0x80>)
c0de5d3a:	eb09 0200 	add.w	r2, r9, r0
c0de5d3e:	f892 1026 	ldrb.w	r1, [r2, #38]	@ 0x26
c0de5d42:	f892 2027 	ldrb.w	r2, [r2, #39]	@ 0x27
c0de5d46:	3a01      	subs	r2, #1
c0de5d48:	428a      	cmp	r2, r1
c0de5d4a:	dd05      	ble.n	c0de5d58 <warningNavigate+0x68>
c0de5d4c:	1c48      	adds	r0, r1, #1
c0de5d4e:	4908      	ldr	r1, [pc, #32]	@ (c0de5d70 <warningNavigate+0x80>)
c0de5d50:	4449      	add	r1, r9
c0de5d52:	f881 0026 	strb.w	r0, [r1, #38]	@ 0x26
c0de5d56:	e003      	b.n	c0de5d60 <warningNavigate+0x70>
c0de5d58:	4448      	add	r0, r9
c0de5d5a:	69c0      	ldr	r0, [r0, #28]
c0de5d5c:	6801      	ldr	r1, [r0, #0]
c0de5d5e:	b109      	cbz	r1, c0de5d64 <warningNavigate+0x74>
c0de5d60:	f7ff beca 	b.w	c0de5af8 <displayWarningStep>
c0de5d64:	69c0      	ldr	r0, [r0, #28]
c0de5d66:	2800      	cmp	r0, #0
c0de5d68:	d0fa      	beq.n	c0de5d60 <warningNavigate+0x70>
c0de5d6a:	f000 b817 	b.w	c0de5d9c <launchReviewAfterWarning>
c0de5d6e:	bf00      	nop
c0de5d70:	00000744 	.word	0x00000744

c0de5d74 <onReviewAccept>:
c0de5d74:	4803      	ldr	r0, [pc, #12]	@ (c0de5d84 <onReviewAccept+0x10>)
c0de5d76:	4448      	add	r0, r9
c0de5d78:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5d7a:	b109      	cbz	r1, c0de5d80 <onReviewAccept+0xc>
c0de5d7c:	2001      	movs	r0, #1
c0de5d7e:	4708      	bx	r1
c0de5d80:	4770      	bx	lr
c0de5d82:	bf00      	nop
c0de5d84:	00000744 	.word	0x00000744

c0de5d88 <onReviewReject>:
c0de5d88:	4803      	ldr	r0, [pc, #12]	@ (c0de5d98 <onReviewReject+0x10>)
c0de5d8a:	4448      	add	r0, r9
c0de5d8c:	6b81      	ldr	r1, [r0, #56]	@ 0x38
c0de5d8e:	b109      	cbz	r1, c0de5d94 <onReviewReject+0xc>
c0de5d90:	2000      	movs	r0, #0
c0de5d92:	4708      	bx	r1
c0de5d94:	4770      	bx	lr
c0de5d96:	bf00      	nop
c0de5d98:	00000744 	.word	0x00000744

c0de5d9c <launchReviewAfterWarning>:
c0de5d9c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
c0de5d9e:	480c      	ldr	r0, [pc, #48]	@ (c0de5dd0 <launchReviewAfterWarning+0x34>)
c0de5da0:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de5da4:	2905      	cmp	r1, #5
c0de5da6:	d00d      	beq.n	c0de5dc4 <launchReviewAfterWarning+0x28>
c0de5da8:	2902      	cmp	r1, #2
c0de5daa:	bf18      	it	ne
c0de5dac:	bd7f      	popne	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de5dae:	4448      	add	r0, r9
c0de5db0:	1d06      	adds	r6, r0, #4
c0de5db2:	6a00      	ldr	r0, [r0, #32]
c0de5db4:	ce7e      	ldmia	r6, {r1, r2, r3, r4, r5, r6}
c0de5db6:	e88d 0070 	stmia.w	sp, {r4, r5, r6}
c0de5dba:	9003      	str	r0, [sp, #12]
c0de5dbc:	2002      	movs	r0, #2
c0de5dbe:	f7fe fe23 	bl	c0de4a08 <useCaseReview>
c0de5dc2:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
c0de5dc4:	2000      	movs	r0, #0
c0de5dc6:	b004      	add	sp, #16
c0de5dc8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5dcc:	f7ff b8fa 	b.w	c0de4fc4 <displayStreamingReviewPage>
c0de5dd0:	00000744 	.word	0x00000744

c0de5dd4 <buttonSkipCallback>:
c0de5dd4:	b5b0      	push	{r4, r5, r7, lr}
c0de5dd6:	2904      	cmp	r1, #4
c0de5dd8:	d00a      	beq.n	c0de5df0 <buttonSkipCallback+0x1c>
c0de5dda:	2901      	cmp	r1, #1
c0de5ddc:	d017      	beq.n	c0de5e0e <buttonSkipCallback+0x3a>
c0de5dde:	bbb9      	cbnz	r1, c0de5e50 <buttonSkipCallback+0x7c>
c0de5de0:	4829      	ldr	r0, [pc, #164]	@ (c0de5e88 <buttonSkipCallback+0xb4>)
c0de5de2:	eb09 0100 	add.w	r1, r9, r0
c0de5de6:	f891 105a 	ldrb.w	r1, [r1, #90]	@ 0x5a
c0de5dea:	b391      	cbz	r1, c0de5e52 <buttonSkipCallback+0x7e>
c0de5dec:	2008      	movs	r0, #8
c0de5dee:	e02a      	b.n	c0de5e46 <buttonSkipCallback+0x72>
c0de5df0:	4825      	ldr	r0, [pc, #148]	@ (c0de5e88 <buttonSkipCallback+0xb4>)
c0de5df2:	eb09 0100 	add.w	r1, r9, r0
c0de5df6:	4448      	add	r0, r9
c0de5df8:	f891 1032 	ldrb.w	r1, [r1, #50]	@ 0x32
c0de5dfc:	2900      	cmp	r1, #0
c0de5dfe:	d03f      	beq.n	c0de5e80 <buttonSkipCallback+0xac>
c0de5e00:	f890 1030 	ldrb.w	r1, [r0, #48]	@ 0x30
c0de5e04:	3902      	subs	r1, #2
c0de5e06:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5e0a:	2000      	movs	r0, #0
c0de5e0c:	e030      	b.n	c0de5e70 <buttonSkipCallback+0x9c>
c0de5e0e:	4a1e      	ldr	r2, [pc, #120]	@ (c0de5e88 <buttonSkipCallback+0xb4>)
c0de5e10:	eb09 0002 	add.w	r0, r9, r2
c0de5e14:	f890 005a 	ldrb.w	r0, [r0, #90]	@ 0x5a
c0de5e18:	2808      	cmp	r0, #8
c0de5e1a:	d113      	bne.n	c0de5e44 <buttonSkipCallback+0x70>
c0de5e1c:	eb09 0002 	add.w	r0, r9, r2
c0de5e20:	f990 4032 	ldrsb.w	r4, [r0, #50]	@ 0x32
c0de5e24:	f990 3031 	ldrsb.w	r3, [r0, #49]	@ 0x31
c0de5e28:	f890 0030 	ldrb.w	r0, [r0, #48]	@ 0x30
c0de5e2c:	1e45      	subs	r5, r0, #1
c0de5e2e:	2000      	movs	r0, #0
c0de5e30:	b2e1      	uxtb	r1, r4
c0de5e32:	429d      	cmp	r5, r3
c0de5e34:	bfc8      	it	gt
c0de5e36:	42a3      	cmpgt	r3, r4
c0de5e38:	dd19      	ble.n	c0de5e6e <buttonSkipCallback+0x9a>
c0de5e3a:	eb09 0002 	add.w	r0, r9, r2
c0de5e3e:	1c59      	adds	r1, r3, #1
c0de5e40:	f880 1031 	strb.w	r1, [r0, #49]	@ 0x31
c0de5e44:	2000      	movs	r0, #0
c0de5e46:	4910      	ldr	r1, [pc, #64]	@ (c0de5e88 <buttonSkipCallback+0xb4>)
c0de5e48:	4449      	add	r1, r9
c0de5e4a:	f891 1032 	ldrb.w	r1, [r1, #50]	@ 0x32
c0de5e4e:	e00e      	b.n	c0de5e6e <buttonSkipCallback+0x9a>
c0de5e50:	bdb0      	pop	{r4, r5, r7, pc}
c0de5e52:	eb09 0100 	add.w	r1, r9, r0
c0de5e56:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de5e5a:	f991 3032 	ldrsb.w	r3, [r1, #50]	@ 0x32
c0de5e5e:	b2d9      	uxtb	r1, r3
c0de5e60:	429a      	cmp	r2, r3
c0de5e62:	dd03      	ble.n	c0de5e6c <buttonSkipCallback+0x98>
c0de5e64:	4448      	add	r0, r9
c0de5e66:	3a01      	subs	r2, #1
c0de5e68:	f880 2031 	strb.w	r2, [r0, #49]	@ 0x31
c0de5e6c:	2008      	movs	r0, #8
c0de5e6e:	b119      	cbz	r1, c0de5e78 <buttonSkipCallback+0xa4>
c0de5e70:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5e74:	f7fe be9e 	b.w	c0de4bb4 <displayReviewPage>
c0de5e78:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5e7c:	f7ff b8a2 	b.w	c0de4fc4 <displayStreamingReviewPage>
c0de5e80:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de5e82:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de5e86:	4700      	bx	r0
c0de5e88:	00000744 	.word	0x00000744

c0de5e8c <displayAliasFullValue>:
c0de5e8c:	b570      	push	{r4, r5, r6, lr}
c0de5e8e:	b088      	sub	sp, #32
c0de5e90:	4c1a      	ldr	r4, [pc, #104]	@ (c0de5efc <displayAliasFullValue+0x70>)
c0de5e92:	f10d 0213 	add.w	r2, sp, #19
c0de5e96:	eb09 0504 	add.w	r5, r9, r4
c0de5e9a:	6be8      	ldr	r0, [r5, #60]	@ 0x3c
c0de5e9c:	f895 105b 	ldrb.w	r1, [r5, #91]	@ 0x5b
c0de5ea0:	ab05      	add	r3, sp, #20
c0de5ea2:	f105 0660 	add.w	r6, r5, #96	@ 0x60
c0de5ea6:	9202      	str	r2, [sp, #8]
c0de5ea8:	e9cd 6300 	strd	r6, r3, [sp]
c0de5eac:	aa07      	add	r2, sp, #28
c0de5eae:	ab06      	add	r3, sp, #24
c0de5eb0:	f7ff fbca 	bl	c0de5648 <getPairData>
c0de5eb4:	6e28      	ldr	r0, [r5, #96]	@ 0x60
c0de5eb6:	b178      	cbz	r0, c0de5ed8 <displayAliasFullValue+0x4c>
c0de5eb8:	eb09 0104 	add.w	r1, r9, r4
c0de5ebc:	2200      	movs	r2, #0
c0de5ebe:	664a      	str	r2, [r1, #100]	@ 0x64
c0de5ec0:	f881 205c 	strb.w	r2, [r1, #92]	@ 0x5c
c0de5ec4:	7d01      	ldrb	r1, [r0, #20]
c0de5ec6:	2901      	cmp	r1, #1
c0de5ec8:	d008      	beq.n	c0de5edc <displayAliasFullValue+0x50>
c0de5eca:	2905      	cmp	r1, #5
c0de5ecc:	d008      	beq.n	c0de5ee0 <displayAliasFullValue+0x54>
c0de5ece:	2904      	cmp	r1, #4
c0de5ed0:	d102      	bne.n	c0de5ed8 <displayAliasFullValue+0x4c>
c0de5ed2:	6900      	ldr	r0, [r0, #16]
c0de5ed4:	300c      	adds	r0, #12
c0de5ed6:	e005      	b.n	c0de5ee4 <displayAliasFullValue+0x58>
c0de5ed8:	b008      	add	sp, #32
c0de5eda:	bd70      	pop	{r4, r5, r6, pc}
c0de5edc:	2002      	movs	r0, #2
c0de5ede:	e003      	b.n	c0de5ee8 <displayAliasFullValue+0x5c>
c0de5ee0:	6900      	ldr	r0, [r0, #16]
c0de5ee2:	3008      	adds	r0, #8
c0de5ee4:	7800      	ldrb	r0, [r0, #0]
c0de5ee6:	3001      	adds	r0, #1
c0de5ee8:	eb09 0104 	add.w	r1, r9, r4
c0de5eec:	f881 005d 	strb.w	r0, [r1, #93]	@ 0x5d
c0de5ef0:	2000      	movs	r0, #0
c0de5ef2:	b008      	add	sp, #32
c0de5ef4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5ef8:	f000 b814 	b.w	c0de5f24 <displayExtensionStep>
c0de5efc:	00000744 	.word	0x00000744

c0de5f00 <reviewCallback>:
c0de5f00:	b5e0      	push	{r5, r6, r7, lr}
c0de5f02:	4608      	mov	r0, r1
c0de5f04:	f10d 0107 	add.w	r1, sp, #7
c0de5f08:	f7ff fc78 	bl	c0de57fc <buttonGenericCallback>
c0de5f0c:	b130      	cbz	r0, c0de5f1c <reviewCallback+0x1c>
c0de5f0e:	4804      	ldr	r0, [pc, #16]	@ (c0de5f20 <reviewCallback+0x20>)
c0de5f10:	f000 f991 	bl	c0de6236 <OUTLINED_FUNCTION_8>
c0de5f14:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de5f18:	f7fe be4c 	b.w	c0de4bb4 <displayReviewPage>
c0de5f1c:	bd8c      	pop	{r2, r3, r7, pc}
c0de5f1e:	bf00      	nop
c0de5f20:	00000744 	.word	0x00000744

c0de5f24 <displayExtensionStep>:
c0de5f24:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de5f28:	b088      	sub	sp, #32
c0de5f2a:	4e36      	ldr	r6, [pc, #216]	@ (c0de6004 <displayExtensionStep+0xe0>)
c0de5f2c:	4680      	mov	r8, r0
c0de5f2e:	2000      	movs	r0, #0
c0de5f30:	e9cd 0006 	strd	r0, r0, [sp, #24]
c0de5f34:	e9cd 0004 	strd	r0, r0, [sp, #16]
c0de5f38:	eb09 0006 	add.w	r0, r9, r6
c0de5f3c:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de5f3e:	b108      	cbz	r0, c0de5f44 <displayExtensionStep+0x20>
c0de5f40:	f7fe fbe6 	bl	c0de4710 <nbgl_stepRelease>
c0de5f44:	eb09 0106 	add.w	r1, r9, r6
c0de5f48:	f000 f981 	bl	c0de624e <OUTLINED_FUNCTION_10>
c0de5f4c:	dd10      	ble.n	c0de5f70 <displayExtensionStep+0x4c>
c0de5f4e:	2703      	movs	r7, #3
c0de5f50:	eb09 0106 	add.w	r1, r9, r6
c0de5f54:	2800      	cmp	r0, #0
c0de5f56:	bf08      	it	eq
c0de5f58:	2701      	moveq	r7, #1
c0de5f5a:	6e09      	ldr	r1, [r1, #96]	@ 0x60
c0de5f5c:	7d0a      	ldrb	r2, [r1, #20]
c0de5f5e:	2a05      	cmp	r2, #5
c0de5f60:	d01a      	beq.n	c0de5f98 <displayExtensionStep+0x74>
c0de5f62:	2a04      	cmp	r2, #4
c0de5f64:	d028      	beq.n	c0de5fb8 <displayExtensionStep+0x94>
c0de5f66:	2a01      	cmp	r2, #1
c0de5f68:	d147      	bne.n	c0de5ffa <displayExtensionStep+0xd6>
c0de5f6a:	6808      	ldr	r0, [r1, #0]
c0de5f6c:	688d      	ldr	r5, [r1, #8]
c0de5f6e:	e033      	b.n	c0de5fd8 <displayExtensionStep+0xb4>
c0de5f70:	d143      	bne.n	c0de5ffa <displayExtensionStep+0xd6>
c0de5f72:	2001      	movs	r0, #1
c0de5f74:	2200      	movs	r2, #0
c0de5f76:	f88d 001d 	strb.w	r0, [sp, #29]
c0de5f7a:	4924      	ldr	r1, [pc, #144]	@ (c0de600c <displayExtensionStep+0xe8>)
c0de5f7c:	4479      	add	r1, pc
c0de5f7e:	9104      	str	r1, [sp, #16]
c0de5f80:	4923      	ldr	r1, [pc, #140]	@ (c0de6010 <displayExtensionStep+0xec>)
c0de5f82:	9000      	str	r0, [sp, #0]
c0de5f84:	f048 0002 	orr.w	r0, r8, #2
c0de5f88:	4479      	add	r1, pc
c0de5f8a:	9106      	str	r1, [sp, #24]
c0de5f8c:	4921      	ldr	r1, [pc, #132]	@ (c0de6014 <displayExtensionStep+0xf0>)
c0de5f8e:	ab04      	add	r3, sp, #16
c0de5f90:	4479      	add	r1, pc
c0de5f92:	f7fe fa97 	bl	c0de44c4 <nbgl_stepDrawCenteredInfo>
c0de5f96:	e02d      	b.n	c0de5ff4 <displayExtensionStep+0xd0>
c0de5f98:	690c      	ldr	r4, [r1, #16]
c0de5f9a:	0100      	lsls	r0, r0, #4
c0de5f9c:	6821      	ldr	r1, [r4, #0]
c0de5f9e:	5808      	ldr	r0, [r1, r0]
c0de5fa0:	f001 f88e 	bl	c0de70c0 <pic>
c0de5fa4:	4605      	mov	r5, r0
c0de5fa6:	eb09 0006 	add.w	r0, r9, r6
c0de5faa:	6821      	ldr	r1, [r4, #0]
c0de5fac:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de5fb0:	eb01 1000 	add.w	r0, r1, r0, lsl #4
c0de5fb4:	6840      	ldr	r0, [r0, #4]
c0de5fb6:	e00d      	b.n	c0de5fd4 <displayExtensionStep+0xb0>
c0de5fb8:	690c      	ldr	r4, [r1, #16]
c0de5fba:	6821      	ldr	r1, [r4, #0]
c0de5fbc:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de5fc0:	f001 f87e 	bl	c0de70c0 <pic>
c0de5fc4:	4605      	mov	r5, r0
c0de5fc6:	eb09 0006 	add.w	r0, r9, r6
c0de5fca:	6861      	ldr	r1, [r4, #4]
c0de5fcc:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de5fd0:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
c0de5fd4:	f001 f874 	bl	c0de70c0 <pic>
c0de5fd8:	b17d      	cbz	r5, c0de5ffa <displayExtensionStep+0xd6>
c0de5fda:	2101      	movs	r1, #1
c0de5fdc:	ea47 0208 	orr.w	r2, r7, r8
c0de5fe0:	462b      	mov	r3, r5
c0de5fe2:	e9cd 0100 	strd	r0, r1, [sp]
c0de5fe6:	9102      	str	r1, [sp, #8]
c0de5fe8:	4610      	mov	r0, r2
c0de5fea:	2200      	movs	r2, #0
c0de5fec:	4906      	ldr	r1, [pc, #24]	@ (c0de6008 <displayExtensionStep+0xe4>)
c0de5fee:	4479      	add	r1, pc
c0de5ff0:	f7fe f922 	bl	c0de4238 <nbgl_stepDrawText>
c0de5ff4:	eb09 0106 	add.w	r1, r9, r6
c0de5ff8:	6648      	str	r0, [r1, #100]	@ 0x64
c0de5ffa:	f000 fe56 	bl	c0de6caa <nbgl_refresh>
c0de5ffe:	b008      	add	sp, #32
c0de6000:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de6004:	00000744 	.word	0x00000744
c0de6008:	00000027 	.word	0x00000027
c0de600c:	00001ccb 	.word	0x00001ccb
c0de6010:	0000190c 	.word	0x0000190c
c0de6014:	00000085 	.word	0x00000085

c0de6018 <extensionNavigate>:
c0de6018:	b580      	push	{r7, lr}
c0de601a:	2904      	cmp	r1, #4
c0de601c:	d00a      	beq.n	c0de6034 <extensionNavigate+0x1c>
c0de601e:	2901      	cmp	r1, #1
c0de6020:	d01d      	beq.n	c0de605e <extensionNavigate+0x46>
c0de6022:	b9d9      	cbnz	r1, c0de605c <extensionNavigate+0x44>
c0de6024:	4818      	ldr	r0, [pc, #96]	@ (c0de6088 <extensionNavigate+0x70>)
c0de6026:	4448      	add	r0, r9
c0de6028:	f890 005c 	ldrb.w	r0, [r0, #92]	@ 0x5c
c0de602c:	b330      	cbz	r0, c0de607c <extensionNavigate+0x64>
c0de602e:	1e41      	subs	r1, r0, #1
c0de6030:	2008      	movs	r0, #8
c0de6032:	e01c      	b.n	c0de606e <extensionNavigate+0x56>
c0de6034:	4814      	ldr	r0, [pc, #80]	@ (c0de6088 <extensionNavigate+0x70>)
c0de6036:	eb09 0100 	add.w	r1, r9, r0
c0de603a:	f891 205c 	ldrb.w	r2, [r1, #92]	@ 0x5c
c0de603e:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de6042:	3901      	subs	r1, #1
c0de6044:	4291      	cmp	r1, r2
c0de6046:	d109      	bne.n	c0de605c <extensionNavigate+0x44>
c0de6048:	4448      	add	r0, r9
c0de604a:	6e40      	ldr	r0, [r0, #100]	@ 0x64
c0de604c:	f7fe fb60 	bl	c0de4710 <nbgl_stepRelease>
c0de6050:	f000 fe44 	bl	c0de6cdc <nbgl_screenRedraw>
c0de6054:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6058:	f000 be27 	b.w	c0de6caa <nbgl_refresh>
c0de605c:	bd80      	pop	{r7, pc}
c0de605e:	480a      	ldr	r0, [pc, #40]	@ (c0de6088 <extensionNavigate+0x70>)
c0de6060:	eb09 0100 	add.w	r1, r9, r0
c0de6064:	f000 f8f3 	bl	c0de624e <OUTLINED_FUNCTION_10>
c0de6068:	dd06      	ble.n	c0de6078 <extensionNavigate+0x60>
c0de606a:	1c41      	adds	r1, r0, #1
c0de606c:	2000      	movs	r0, #0
c0de606e:	4a06      	ldr	r2, [pc, #24]	@ (c0de6088 <extensionNavigate+0x70>)
c0de6070:	444a      	add	r2, r9
c0de6072:	f882 105c 	strb.w	r1, [r2, #92]	@ 0x5c
c0de6076:	e002      	b.n	c0de607e <extensionNavigate+0x66>
c0de6078:	2000      	movs	r0, #0
c0de607a:	e000      	b.n	c0de607e <extensionNavigate+0x66>
c0de607c:	2008      	movs	r0, #8
c0de607e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6082:	f7ff bf4f 	b.w	c0de5f24 <displayExtensionStep>
c0de6086:	bf00      	nop
c0de6088:	00000744 	.word	0x00000744

c0de608c <statusTickerCallback>:
c0de608c:	4802      	ldr	r0, [pc, #8]	@ (c0de6098 <statusTickerCallback+0xc>)
c0de608e:	4448      	add	r0, r9
c0de6090:	6b40      	ldr	r0, [r0, #52]	@ 0x34
c0de6092:	b100      	cbz	r0, c0de6096 <statusTickerCallback+0xa>
c0de6094:	4700      	bx	r0
c0de6096:	4770      	bx	lr
c0de6098:	00000744 	.word	0x00000744

c0de609c <getChoiceName>:
c0de609c:	b5b0      	push	{r4, r5, r7, lr}
c0de609e:	b090      	sub	sp, #64	@ 0x40
c0de60a0:	ad01      	add	r5, sp, #4
c0de60a2:	f000 f8cf 	bl	c0de6244 <OUTLINED_FUNCTION_9>
c0de60a6:	4814      	ldr	r0, [pc, #80]	@ (c0de60f8 <getChoiceName+0x5c>)
c0de60a8:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de60ac:	462a      	mov	r2, r5
c0de60ae:	4448      	add	r0, r9
c0de60b0:	f000 f8b1 	bl	c0de6216 <OUTLINED_FUNCTION_4>
c0de60b4:	b150      	cbz	r0, c0de60cc <getChoiceName+0x30>
c0de60b6:	7801      	ldrb	r1, [r0, #0]
c0de60b8:	290a      	cmp	r1, #10
c0de60ba:	d009      	beq.n	c0de60d0 <getChoiceName+0x34>
c0de60bc:	2909      	cmp	r1, #9
c0de60be:	d105      	bne.n	c0de60cc <getChoiceName+0x30>
c0de60c0:	f000 f8ad 	bl	c0de621e <OUTLINED_FUNCTION_5>
c0de60c4:	4605      	mov	r5, r0
c0de60c6:	f855 0b05 	ldr.w	r0, [r5], #5
c0de60ca:	e006      	b.n	c0de60da <getChoiceName+0x3e>
c0de60cc:	2000      	movs	r0, #0
c0de60ce:	e010      	b.n	c0de60f2 <getChoiceName+0x56>
c0de60d0:	f000 f8a5 	bl	c0de621e <OUTLINED_FUNCTION_5>
c0de60d4:	4605      	mov	r5, r0
c0de60d6:	f855 0b08 	ldr.w	r0, [r5], #8
c0de60da:	f000 fff1 	bl	c0de70c0 <pic>
c0de60de:	7829      	ldrb	r1, [r5, #0]
c0de60e0:	42a1      	cmp	r1, r4
c0de60e2:	d904      	bls.n	c0de60ee <getChoiceName+0x52>
c0de60e4:	f850 0024 	ldr.w	r0, [r0, r4, lsl #2]
c0de60e8:	f000 ffea 	bl	c0de70c0 <pic>
c0de60ec:	e001      	b.n	c0de60f2 <getChoiceName+0x56>
c0de60ee:	4803      	ldr	r0, [pc, #12]	@ (c0de60fc <getChoiceName+0x60>)
c0de60f0:	4478      	add	r0, pc
c0de60f2:	b010      	add	sp, #64	@ 0x40
c0de60f4:	bdb0      	pop	{r4, r5, r7, pc}
c0de60f6:	bf00      	nop
c0de60f8:	00000744 	.word	0x00000744
c0de60fc:	00001b57 	.word	0x00001b57

c0de6100 <onChoiceSelected>:
c0de6100:	b570      	push	{r4, r5, r6, lr}
c0de6102:	b090      	sub	sp, #64	@ 0x40
c0de6104:	ad01      	add	r5, sp, #4
c0de6106:	f000 f89d 	bl	c0de6244 <OUTLINED_FUNCTION_9>
c0de610a:	4e17      	ldr	r6, [pc, #92]	@ (c0de6168 <onChoiceSelected+0x68>)
c0de610c:	f10d 013f 	add.w	r1, sp, #63	@ 0x3f
c0de6110:	462a      	mov	r2, r5
c0de6112:	eb09 0006 	add.w	r0, r9, r6
c0de6116:	f000 f87e 	bl	c0de6216 <OUTLINED_FUNCTION_4>
c0de611a:	b318      	cbz	r0, c0de6164 <onChoiceSelected+0x64>
c0de611c:	7801      	ldrb	r1, [r0, #0]
c0de611e:	290a      	cmp	r1, #10
c0de6120:	d008      	beq.n	c0de6134 <onChoiceSelected+0x34>
c0de6122:	2909      	cmp	r1, #9
c0de6124:	d10f      	bne.n	c0de6146 <onChoiceSelected+0x46>
c0de6126:	f000 f87a 	bl	c0de621e <OUTLINED_FUNCTION_5>
c0de612a:	7941      	ldrb	r1, [r0, #5]
c0de612c:	42a1      	cmp	r1, r4
c0de612e:	d90a      	bls.n	c0de6146 <onChoiceSelected+0x46>
c0de6130:	3007      	adds	r0, #7
c0de6132:	e006      	b.n	c0de6142 <onChoiceSelected+0x42>
c0de6134:	f000 f873 	bl	c0de621e <OUTLINED_FUNCTION_5>
c0de6138:	7a01      	ldrb	r1, [r0, #8]
c0de613a:	42a1      	cmp	r1, r4
c0de613c:	d903      	bls.n	c0de6146 <onChoiceSelected+0x46>
c0de613e:	6840      	ldr	r0, [r0, #4]
c0de6140:	4420      	add	r0, r4
c0de6142:	7800      	ldrb	r0, [r0, #0]
c0de6144:	e000      	b.n	c0de6148 <onChoiceSelected+0x48>
c0de6146:	20ff      	movs	r0, #255	@ 0xff
c0de6148:	28ff      	cmp	r0, #255	@ 0xff
c0de614a:	d006      	beq.n	c0de615a <onChoiceSelected+0x5a>
c0de614c:	eb09 0106 	add.w	r1, r9, r6
c0de6150:	6cca      	ldr	r2, [r1, #76]	@ 0x4c
c0de6152:	b112      	cbz	r2, c0de615a <onChoiceSelected+0x5a>
c0de6154:	2100      	movs	r1, #0
c0de6156:	4790      	blx	r2
c0de6158:	e004      	b.n	c0de6164 <onChoiceSelected+0x64>
c0de615a:	eb09 0006 	add.w	r0, r9, r6
c0de615e:	6d40      	ldr	r0, [r0, #84]	@ 0x54
c0de6160:	b100      	cbz	r0, c0de6164 <onChoiceSelected+0x64>
c0de6162:	4780      	blx	r0
c0de6164:	b010      	add	sp, #64	@ 0x40
c0de6166:	bd70      	pop	{r4, r5, r6, pc}
c0de6168:	00000744 	.word	0x00000744

c0de616c <streamingReviewCallback>:
c0de616c:	b5e0      	push	{r5, r6, r7, lr}
c0de616e:	4608      	mov	r0, r1
c0de6170:	f10d 0107 	add.w	r1, sp, #7
c0de6174:	f7ff fb42 	bl	c0de57fc <buttonGenericCallback>
c0de6178:	b130      	cbz	r0, c0de6188 <streamingReviewCallback+0x1c>
c0de617a:	4804      	ldr	r0, [pc, #16]	@ (c0de618c <streamingReviewCallback+0x20>)
c0de617c:	f000 f85b 	bl	c0de6236 <OUTLINED_FUNCTION_8>
c0de6180:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de6184:	f7fe bf1e 	b.w	c0de4fc4 <displayStreamingReviewPage>
c0de6188:	bd8c      	pop	{r2, r3, r7, pc}
c0de618a:	bf00      	nop
c0de618c:	00000744 	.word	0x00000744

c0de6190 <onChoiceAccept>:
c0de6190:	4803      	ldr	r0, [pc, #12]	@ (c0de61a0 <onChoiceAccept+0x10>)
c0de6192:	4448      	add	r0, r9
c0de6194:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de6196:	b109      	cbz	r1, c0de619c <onChoiceAccept+0xc>
c0de6198:	2001      	movs	r0, #1
c0de619a:	4708      	bx	r1
c0de619c:	4770      	bx	lr
c0de619e:	bf00      	nop
c0de61a0:	00000744 	.word	0x00000744

c0de61a4 <onChoiceReject>:
c0de61a4:	4803      	ldr	r0, [pc, #12]	@ (c0de61b4 <onChoiceReject+0x10>)
c0de61a6:	4448      	add	r0, r9
c0de61a8:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
c0de61aa:	b109      	cbz	r1, c0de61b0 <onChoiceReject+0xc>
c0de61ac:	2000      	movs	r0, #0
c0de61ae:	4708      	bx	r1
c0de61b0:	4770      	bx	lr
c0de61b2:	bf00      	nop
c0de61b4:	00000744 	.word	0x00000744

c0de61b8 <genericChoiceCallback>:
c0de61b8:	b5e0      	push	{r5, r6, r7, lr}
c0de61ba:	4608      	mov	r0, r1
c0de61bc:	f10d 0107 	add.w	r1, sp, #7
c0de61c0:	f7ff fb1c 	bl	c0de57fc <buttonGenericCallback>
c0de61c4:	b128      	cbz	r0, c0de61d2 <genericChoiceCallback+0x1a>
c0de61c6:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de61ca:	e8bd 408c 	ldmia.w	sp!, {r2, r3, r7, lr}
c0de61ce:	f7fe bff5 	b.w	c0de51bc <displayChoicePage>
c0de61d2:	bd8c      	pop	{r2, r3, r7, pc}

c0de61d4 <OUTLINED_FUNCTION_0>:
c0de61d4:	460e      	mov	r6, r1
c0de61d6:	2140      	movs	r1, #64	@ 0x40
c0de61d8:	4698      	mov	r8, r3
c0de61da:	4615      	mov	r5, r2
c0de61dc:	eb09 0400 	add.w	r4, r9, r0
c0de61e0:	f104 0028 	add.w	r0, r4, #40	@ 0x28
c0de61e4:	f001 ba78 	b.w	c0de76d8 <__aeabi_memclr>

c0de61e8 <OUTLINED_FUNCTION_1>:
c0de61e8:	2200      	movs	r2, #0
c0de61ea:	eb09 0100 	add.w	r1, r9, r0
c0de61ee:	634a      	str	r2, [r1, #52]	@ 0x34
c0de61f0:	f991 2031 	ldrsb.w	r2, [r1, #49]	@ 0x31
c0de61f4:	f891 1030 	ldrb.w	r1, [r1, #48]	@ 0x30
c0de61f8:	3901      	subs	r1, #1
c0de61fa:	4291      	cmp	r1, r2
c0de61fc:	4770      	bx	lr

c0de61fe <OUTLINED_FUNCTION_2>:
c0de61fe:	eb09 0600 	add.w	r6, r9, r0
c0de6202:	f106 0028 	add.w	r0, r6, #40	@ 0x28
c0de6206:	f001 ba67 	b.w	c0de76d8 <__aeabi_memclr>

c0de620a <OUTLINED_FUNCTION_3>:
c0de620a:	eb09 0500 	add.w	r5, r9, r0
c0de620e:	f105 0028 	add.w	r0, r5, #40	@ 0x28
c0de6212:	f001 ba61 	b.w	c0de76d8 <__aeabi_memclr>

c0de6216 <OUTLINED_FUNCTION_4>:
c0de6216:	f890 0031 	ldrb.w	r0, [r0, #49]	@ 0x31
c0de621a:	f7ff b9d1 	b.w	c0de55c0 <getContentElemAtIdx>

c0de621e <OUTLINED_FUNCTION_5>:
c0de621e:	3004      	adds	r0, #4
c0de6220:	f000 bf4e 	b.w	c0de70c0 <pic>

c0de6224 <OUTLINED_FUNCTION_6>:
c0de6224:	e9cd 6500 	strd	r6, r5, [sp]
c0de6228:	f7fe bdb0 	b.w	c0de4d8c <drawStep>

c0de622c <OUTLINED_FUNCTION_7>:
c0de622c:	f997 1031 	ldrsb.w	r1, [r7, #49]	@ 0x31
c0de6230:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de6234:	4730      	bx	r6

c0de6236 <OUTLINED_FUNCTION_8>:
c0de6236:	eb09 0100 	add.w	r1, r9, r0
c0de623a:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de623e:	f881 005a 	strb.w	r0, [r1, #90]	@ 0x5a
c0de6242:	4770      	bx	lr

c0de6244 <OUTLINED_FUNCTION_9>:
c0de6244:	4604      	mov	r4, r0
c0de6246:	2138      	movs	r1, #56	@ 0x38
c0de6248:	4628      	mov	r0, r5
c0de624a:	f001 ba45 	b.w	c0de76d8 <__aeabi_memclr>

c0de624e <OUTLINED_FUNCTION_10>:
c0de624e:	f891 005c 	ldrb.w	r0, [r1, #92]	@ 0x5c
c0de6252:	f891 105d 	ldrb.w	r1, [r1, #93]	@ 0x5d
c0de6256:	3901      	subs	r1, #1
c0de6258:	4281      	cmp	r1, r0
c0de625a:	4770      	bx	lr

c0de625c <bip32_path_read>:
c0de625c:	e92d 4dfc 	stmdb	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, lr}
c0de6260:	b10b      	cbz	r3, c0de6266 <bip32_path_read+0xa>
c0de6262:	2b0a      	cmp	r3, #10
c0de6264:	d902      	bls.n	c0de626c <bip32_path_read+0x10>
c0de6266:	2000      	movs	r0, #0
c0de6268:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}
c0de626c:	4692      	mov	sl, r2
c0de626e:	460e      	mov	r6, r1
c0de6270:	4683      	mov	fp, r0
c0de6272:	425f      	negs	r7, r3
c0de6274:	2500      	movs	r5, #0
c0de6276:	f04f 0800 	mov.w	r8, #0
c0de627a:	9301      	str	r3, [sp, #4]
c0de627c:	42af      	cmp	r7, r5
c0de627e:	d00c      	beq.n	c0de629a <bip32_path_read+0x3e>
c0de6280:	f108 0404 	add.w	r4, r8, #4
c0de6284:	42b4      	cmp	r4, r6
c0de6286:	d808      	bhi.n	c0de629a <bip32_path_read+0x3e>
c0de6288:	4658      	mov	r0, fp
c0de628a:	4641      	mov	r1, r8
c0de628c:	f000 fb6f 	bl	c0de696e <read_u32_be>
c0de6290:	f84a 0008 	str.w	r0, [sl, r8]
c0de6294:	3d01      	subs	r5, #1
c0de6296:	46a0      	mov	r8, r4
c0de6298:	e7f0      	b.n	c0de627c <bip32_path_read+0x20>
c0de629a:	9a01      	ldr	r2, [sp, #4]
c0de629c:	4269      	negs	r1, r5
c0de629e:	2000      	movs	r0, #0
c0de62a0:	4291      	cmp	r1, r2
c0de62a2:	bf28      	it	cs
c0de62a4:	2001      	movcs	r0, #1
c0de62a6:	e8bd 8dfc 	ldmia.w	sp!, {r2, r3, r4, r5, r6, r7, r8, sl, fp, pc}

c0de62aa <buffer_seek_cur>:
c0de62aa:	6882      	ldr	r2, [r0, #8]
c0de62ac:	1889      	adds	r1, r1, r2
c0de62ae:	d205      	bcs.n	c0de62bc <buffer_seek_cur+0x12>
c0de62b0:	6842      	ldr	r2, [r0, #4]
c0de62b2:	4291      	cmp	r1, r2
c0de62b4:	bf9e      	ittt	ls
c0de62b6:	6081      	strls	r1, [r0, #8]
c0de62b8:	2001      	movls	r0, #1
c0de62ba:	4770      	bxls	lr
c0de62bc:	2000      	movs	r0, #0
c0de62be:	4770      	bx	lr

c0de62c0 <buffer_read_u8>:
c0de62c0:	b510      	push	{r4, lr}
c0de62c2:	e9d0 2301 	ldrd	r2, r3, [r0, #4]
c0de62c6:	429a      	cmp	r2, r3
c0de62c8:	d00a      	beq.n	c0de62e0 <buffer_read_u8+0x20>
c0de62ca:	6804      	ldr	r4, [r0, #0]
c0de62cc:	5ce4      	ldrb	r4, [r4, r3]
c0de62ce:	700c      	strb	r4, [r1, #0]
c0de62d0:	6881      	ldr	r1, [r0, #8]
c0de62d2:	3101      	adds	r1, #1
c0de62d4:	d206      	bcs.n	c0de62e4 <buffer_read_u8+0x24>
c0de62d6:	6844      	ldr	r4, [r0, #4]
c0de62d8:	42a1      	cmp	r1, r4
c0de62da:	bf98      	it	ls
c0de62dc:	6081      	strls	r1, [r0, #8]
c0de62de:	e001      	b.n	c0de62e4 <buffer_read_u8+0x24>
c0de62e0:	2000      	movs	r0, #0
c0de62e2:	7008      	strb	r0, [r1, #0]
c0de62e4:	1ad0      	subs	r0, r2, r3
c0de62e6:	bf18      	it	ne
c0de62e8:	2001      	movne	r0, #1
c0de62ea:	bd10      	pop	{r4, pc}

c0de62ec <buffer_read_u64>:
c0de62ec:	b570      	push	{r4, r5, r6, lr}
c0de62ee:	f000 f87d 	bl	c0de63ec <OUTLINED_FUNCTION_0>
c0de62f2:	2e07      	cmp	r6, #7
c0de62f4:	d904      	bls.n	c0de6300 <buffer_read_u64+0x14>
c0de62f6:	6820      	ldr	r0, [r4, #0]
c0de62f8:	b132      	cbz	r2, c0de6308 <buffer_read_u64+0x1c>
c0de62fa:	f000 fb6f 	bl	c0de69dc <read_u64_le>
c0de62fe:	e005      	b.n	c0de630c <buffer_read_u64+0x20>
c0de6300:	2000      	movs	r0, #0
c0de6302:	e9c5 0000 	strd	r0, r0, [r5]
c0de6306:	e00c      	b.n	c0de6322 <buffer_read_u64+0x36>
c0de6308:	f000 fb3d 	bl	c0de6986 <read_u64_be>
c0de630c:	e9c5 0100 	strd	r0, r1, [r5]
c0de6310:	68a0      	ldr	r0, [r4, #8]
c0de6312:	f110 0f09 	cmn.w	r0, #9
c0de6316:	d804      	bhi.n	c0de6322 <buffer_read_u64+0x36>
c0de6318:	6861      	ldr	r1, [r4, #4]
c0de631a:	3008      	adds	r0, #8
c0de631c:	4288      	cmp	r0, r1
c0de631e:	bf98      	it	ls
c0de6320:	60a0      	strls	r0, [r4, #8]
c0de6322:	2000      	movs	r0, #0
c0de6324:	2e07      	cmp	r6, #7
c0de6326:	bf88      	it	hi
c0de6328:	2001      	movhi	r0, #1
c0de632a:	bd70      	pop	{r4, r5, r6, pc}

c0de632c <buffer_read_varint>:
c0de632c:	b5b0      	push	{r4, r5, r7, lr}
c0de632e:	4604      	mov	r4, r0
c0de6330:	460d      	mov	r5, r1
c0de6332:	6800      	ldr	r0, [r0, #0]
c0de6334:	e9d4 1201 	ldrd	r1, r2, [r4, #4]
c0de6338:	4410      	add	r0, r2
c0de633a:	1a89      	subs	r1, r1, r2
c0de633c:	462a      	mov	r2, r5
c0de633e:	f000 fbb7 	bl	c0de6ab0 <varint_read>
c0de6342:	f1b0 3fff 	cmp.w	r0, #4294967295	@ 0xffffffff
c0de6346:	dd0a      	ble.n	c0de635e <buffer_read_varint+0x32>
c0de6348:	68a1      	ldr	r1, [r4, #8]
c0de634a:	1840      	adds	r0, r0, r1
c0de634c:	d205      	bcs.n	c0de635a <buffer_read_varint+0x2e>
c0de634e:	6861      	ldr	r1, [r4, #4]
c0de6350:	4288      	cmp	r0, r1
c0de6352:	bf9e      	ittt	ls
c0de6354:	60a0      	strls	r0, [r4, #8]
c0de6356:	2001      	movls	r0, #1
c0de6358:	bdb0      	popls	{r4, r5, r7, pc}
c0de635a:	2000      	movs	r0, #0
c0de635c:	bdb0      	pop	{r4, r5, r7, pc}
c0de635e:	2000      	movs	r0, #0
c0de6360:	e9c5 0000 	strd	r0, r0, [r5]
c0de6364:	bdb0      	pop	{r4, r5, r7, pc}

c0de6366 <buffer_read_bip32_path>:
c0de6366:	b5b0      	push	{r4, r5, r7, lr}
c0de6368:	4604      	mov	r4, r0
c0de636a:	4615      	mov	r5, r2
c0de636c:	460a      	mov	r2, r1
c0de636e:	6800      	ldr	r0, [r0, #0]
c0de6370:	e9d4 1301 	ldrd	r1, r3, [r4, #4]
c0de6374:	4418      	add	r0, r3
c0de6376:	1ac9      	subs	r1, r1, r3
c0de6378:	462b      	mov	r3, r5
c0de637a:	f7ff ff6f 	bl	c0de625c <bip32_path_read>
c0de637e:	b140      	cbz	r0, c0de6392 <buffer_read_bip32_path+0x2c>
c0de6380:	68a2      	ldr	r2, [r4, #8]
c0de6382:	eb02 0185 	add.w	r1, r2, r5, lsl #2
c0de6386:	4291      	cmp	r1, r2
c0de6388:	d303      	bcc.n	c0de6392 <buffer_read_bip32_path+0x2c>
c0de638a:	6862      	ldr	r2, [r4, #4]
c0de638c:	4291      	cmp	r1, r2
c0de638e:	bf98      	it	ls
c0de6390:	60a1      	strls	r1, [r4, #8]
c0de6392:	bdb0      	pop	{r4, r5, r7, pc}

c0de6394 <buffer_copy>:
c0de6394:	b5b0      	push	{r4, r5, r7, lr}
c0de6396:	4614      	mov	r4, r2
c0de6398:	e9d0 3201 	ldrd	r3, r2, [r0, #4]
c0de639c:	1a9d      	subs	r5, r3, r2
c0de639e:	42a5      	cmp	r5, r4
c0de63a0:	d806      	bhi.n	c0de63b0 <buffer_copy+0x1c>
c0de63a2:	6800      	ldr	r0, [r0, #0]
c0de63a4:	4402      	add	r2, r0
c0de63a6:	4608      	mov	r0, r1
c0de63a8:	4611      	mov	r1, r2
c0de63aa:	462a      	mov	r2, r5
c0de63ac:	f001 f98c 	bl	c0de76c8 <__aeabi_memmove>
c0de63b0:	2000      	movs	r0, #0
c0de63b2:	42a5      	cmp	r5, r4
c0de63b4:	bf98      	it	ls
c0de63b6:	2001      	movls	r0, #1
c0de63b8:	bdb0      	pop	{r4, r5, r7, pc}

c0de63ba <buffer_move>:
c0de63ba:	b5b0      	push	{r4, r5, r7, lr}
c0de63bc:	4615      	mov	r5, r2
c0de63be:	4604      	mov	r4, r0
c0de63c0:	e9d0 2001 	ldrd	r2, r0, [r0, #4]
c0de63c4:	1a12      	subs	r2, r2, r0
c0de63c6:	42aa      	cmp	r2, r5
c0de63c8:	bf84      	itt	hi
c0de63ca:	2000      	movhi	r0, #0
c0de63cc:	bdb0      	pophi	{r4, r5, r7, pc}
c0de63ce:	6823      	ldr	r3, [r4, #0]
c0de63d0:	4403      	add	r3, r0
c0de63d2:	4608      	mov	r0, r1
c0de63d4:	4619      	mov	r1, r3
c0de63d6:	f001 f977 	bl	c0de76c8 <__aeabi_memmove>
c0de63da:	68a0      	ldr	r0, [r4, #8]
c0de63dc:	1940      	adds	r0, r0, r5
c0de63de:	d203      	bcs.n	c0de63e8 <buffer_move+0x2e>
c0de63e0:	6861      	ldr	r1, [r4, #4]
c0de63e2:	4288      	cmp	r0, r1
c0de63e4:	bf98      	it	ls
c0de63e6:	60a0      	strls	r0, [r4, #8]
c0de63e8:	2001      	movs	r0, #1
c0de63ea:	bdb0      	pop	{r4, r5, r7, pc}

c0de63ec <OUTLINED_FUNCTION_0>:
c0de63ec:	4604      	mov	r4, r0
c0de63ee:	460d      	mov	r5, r1
c0de63f0:	6840      	ldr	r0, [r0, #4]
c0de63f2:	68a1      	ldr	r1, [r4, #8]
c0de63f4:	1a46      	subs	r6, r0, r1
c0de63f6:	4770      	bx	lr

c0de63f8 <bip32_derive_with_seed_init_privkey_256>:
c0de63f8:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de63fc:	b095      	sub	sp, #84	@ 0x54
c0de63fe:	460d      	mov	r5, r1
c0de6400:	4607      	mov	r7, r0
c0de6402:	a904      	add	r1, sp, #16
c0de6404:	469a      	mov	sl, r3
c0de6406:	4614      	mov	r4, r2
c0de6408:	4628      	mov	r0, r5
c0de640a:	f000 ffb9 	bl	c0de7380 <cx_ecdomain_parameters_length>
c0de640e:	f8dd 8070 	ldr.w	r8, [sp, #112]	@ 0x70
c0de6412:	4606      	mov	r6, r0
c0de6414:	b9e0      	cbnz	r0, c0de6450 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de6416:	9804      	ldr	r0, [sp, #16]
c0de6418:	2820      	cmp	r0, #32
c0de641a:	d117      	bne.n	c0de644c <bip32_derive_with_seed_init_privkey_256+0x54>
c0de641c:	981f      	ldr	r0, [sp, #124]	@ 0x7c
c0de641e:	e9dd 211d 	ldrd	r2, r1, [sp, #116]	@ 0x74
c0de6422:	ab05      	add	r3, sp, #20
c0de6424:	e9cd 3200 	strd	r3, r2, [sp]
c0de6428:	e9cd 1002 	strd	r1, r0, [sp, #8]
c0de642c:	4638      	mov	r0, r7
c0de642e:	4629      	mov	r1, r5
c0de6430:	4622      	mov	r2, r4
c0de6432:	4653      	mov	r3, sl
c0de6434:	f000 f818 	bl	c0de6468 <os_derive_bip32_with_seed_no_throw>
c0de6438:	4606      	mov	r6, r0
c0de643a:	b948      	cbnz	r0, c0de6450 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de643c:	9a04      	ldr	r2, [sp, #16]
c0de643e:	a905      	add	r1, sp, #20
c0de6440:	4628      	mov	r0, r5
c0de6442:	4643      	mov	r3, r8
c0de6444:	f000 fc12 	bl	c0de6c6c <cx_ecfp_init_private_key_no_throw>
c0de6448:	4606      	mov	r6, r0
c0de644a:	e001      	b.n	c0de6450 <bip32_derive_with_seed_init_privkey_256+0x58>
c0de644c:	f06f 065c 	mvn.w	r6, #92	@ 0x5c
c0de6450:	a805      	add	r0, sp, #20
c0de6452:	2140      	movs	r1, #64	@ 0x40
c0de6454:	f001 f94e 	bl	c0de76f4 <explicit_bzero>
c0de6458:	b116      	cbz	r6, c0de6460 <bip32_derive_with_seed_init_privkey_256+0x68>
c0de645a:	4640      	mov	r0, r8
c0de645c:	f000 f89f 	bl	c0de659e <OUTLINED_FUNCTION_0>
c0de6460:	4630      	mov	r0, r6
c0de6462:	b015      	add	sp, #84	@ 0x54
c0de6464:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de6468 <os_derive_bip32_with_seed_no_throw>:
c0de6468:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de646c:	b090      	sub	sp, #64	@ 0x40
c0de646e:	f10d 0810 	add.w	r8, sp, #16
c0de6472:	4607      	mov	r7, r0
c0de6474:	469b      	mov	fp, r3
c0de6476:	4616      	mov	r6, r2
c0de6478:	460c      	mov	r4, r1
c0de647a:	4640      	mov	r0, r8
c0de647c:	f001 f970 	bl	c0de7760 <setjmp>
c0de6480:	b285      	uxth	r5, r0
c0de6482:	f8dd a060 	ldr.w	sl, [sp, #96]	@ 0x60
c0de6486:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de648a:	b155      	cbz	r5, c0de64a2 <os_derive_bip32_with_seed_no_throw+0x3a>
c0de648c:	2000      	movs	r0, #0
c0de648e:	f8ad 003c 	strh.w	r0, [sp, #60]	@ 0x3c
c0de6492:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de6494:	f001 f818 	bl	c0de74c8 <try_context_set>
c0de6498:	2140      	movs	r1, #64	@ 0x40
c0de649a:	4650      	mov	r0, sl
c0de649c:	f001 f92a 	bl	c0de76f4 <explicit_bzero>
c0de64a0:	e012      	b.n	c0de64c8 <os_derive_bip32_with_seed_no_throw+0x60>
c0de64a2:	a804      	add	r0, sp, #16
c0de64a4:	f001 f810 	bl	c0de74c8 <try_context_set>
c0de64a8:	9919      	ldr	r1, [sp, #100]	@ 0x64
c0de64aa:	900e      	str	r0, [sp, #56]	@ 0x38
c0de64ac:	4668      	mov	r0, sp
c0de64ae:	4632      	mov	r2, r6
c0de64b0:	465b      	mov	r3, fp
c0de64b2:	f8c0 a000 	str.w	sl, [r0]
c0de64b6:	6041      	str	r1, [r0, #4]
c0de64b8:	991a      	ldr	r1, [sp, #104]	@ 0x68
c0de64ba:	6081      	str	r1, [r0, #8]
c0de64bc:	991b      	ldr	r1, [sp, #108]	@ 0x6c
c0de64be:	60c1      	str	r1, [r0, #12]
c0de64c0:	4638      	mov	r0, r7
c0de64c2:	4621      	mov	r1, r4
c0de64c4:	f000 ff66 	bl	c0de7394 <os_perso_derive_node_with_seed_key>
c0de64c8:	f000 fff6 	bl	c0de74b8 <try_context_get>
c0de64cc:	4540      	cmp	r0, r8
c0de64ce:	d102      	bne.n	c0de64d6 <os_derive_bip32_with_seed_no_throw+0x6e>
c0de64d0:	980e      	ldr	r0, [sp, #56]	@ 0x38
c0de64d2:	f000 fff9 	bl	c0de74c8 <try_context_set>
c0de64d6:	f8bd 003c 	ldrh.w	r0, [sp, #60]	@ 0x3c
c0de64da:	b918      	cbnz	r0, c0de64e4 <os_derive_bip32_with_seed_no_throw+0x7c>
c0de64dc:	4628      	mov	r0, r5
c0de64de:	b010      	add	sp, #64	@ 0x40
c0de64e0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de64e4:	f000 fc47 	bl	c0de6d76 <os_longjmp>

c0de64e8 <bip32_derive_with_seed_get_pubkey_256>:
c0de64e8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de64ea:	b0a1      	sub	sp, #132	@ 0x84
c0de64ec:	460e      	mov	r6, r1
c0de64ee:	992a      	ldr	r1, [sp, #168]	@ 0xa8
c0de64f0:	9103      	str	r1, [sp, #12]
c0de64f2:	9929      	ldr	r1, [sp, #164]	@ 0xa4
c0de64f4:	9102      	str	r1, [sp, #8]
c0de64f6:	9927      	ldr	r1, [sp, #156]	@ 0x9c
c0de64f8:	9101      	str	r1, [sp, #4]
c0de64fa:	a917      	add	r1, sp, #92	@ 0x5c
c0de64fc:	9100      	str	r1, [sp, #0]
c0de64fe:	4631      	mov	r1, r6
c0de6500:	f7ff ff7a 	bl	c0de63f8 <bip32_derive_with_seed_init_privkey_256>
c0de6504:	9c26      	ldr	r4, [sp, #152]	@ 0x98
c0de6506:	4605      	mov	r5, r0
c0de6508:	b9b8      	cbnz	r0, c0de653a <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de650a:	9828      	ldr	r0, [sp, #160]	@ 0xa0
c0de650c:	2301      	movs	r3, #1
c0de650e:	9000      	str	r0, [sp, #0]
c0de6510:	af04      	add	r7, sp, #16
c0de6512:	aa17      	add	r2, sp, #92	@ 0x5c
c0de6514:	4630      	mov	r0, r6
c0de6516:	4639      	mov	r1, r7
c0de6518:	f000 fba3 	bl	c0de6c62 <cx_ecfp_generate_pair2_no_throw>
c0de651c:	4605      	mov	r5, r0
c0de651e:	b960      	cbnz	r0, c0de653a <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6520:	9805      	ldr	r0, [sp, #20]
c0de6522:	2841      	cmp	r0, #65	@ 0x41
c0de6524:	d107      	bne.n	c0de6536 <bip32_derive_with_seed_get_pubkey_256+0x4e>
c0de6526:	f107 0108 	add.w	r1, r7, #8
c0de652a:	4620      	mov	r0, r4
c0de652c:	2241      	movs	r2, #65	@ 0x41
c0de652e:	f001 f8c9 	bl	c0de76c4 <__aeabi_memcpy>
c0de6532:	2500      	movs	r5, #0
c0de6534:	e001      	b.n	c0de653a <bip32_derive_with_seed_get_pubkey_256+0x52>
c0de6536:	f06f 055c 	mvn.w	r5, #92	@ 0x5c
c0de653a:	a817      	add	r0, sp, #92	@ 0x5c
c0de653c:	f000 f82f 	bl	c0de659e <OUTLINED_FUNCTION_0>
c0de6540:	b11d      	cbz	r5, c0de654a <bip32_derive_with_seed_get_pubkey_256+0x62>
c0de6542:	4620      	mov	r0, r4
c0de6544:	2141      	movs	r1, #65	@ 0x41
c0de6546:	f001 f8d5 	bl	c0de76f4 <explicit_bzero>
c0de654a:	4628      	mov	r0, r5
c0de654c:	b021      	add	sp, #132	@ 0x84
c0de654e:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de6550 <bip32_derive_with_seed_ecdsa_sign_hash_256>:
c0de6550:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6552:	b08f      	sub	sp, #60	@ 0x3c
c0de6554:	9f19      	ldr	r7, [sp, #100]	@ 0x64
c0de6556:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
c0de6558:	683c      	ldr	r4, [r7, #0]
c0de655a:	9503      	str	r5, [sp, #12]
c0de655c:	9d1b      	ldr	r5, [sp, #108]	@ 0x6c
c0de655e:	9502      	str	r5, [sp, #8]
c0de6560:	2500      	movs	r5, #0
c0de6562:	9501      	str	r5, [sp, #4]
c0de6564:	ad05      	add	r5, sp, #20
c0de6566:	9500      	str	r5, [sp, #0]
c0de6568:	f7ff ff46 	bl	c0de63f8 <bip32_derive_with_seed_init_privkey_256>
c0de656c:	9d18      	ldr	r5, [sp, #96]	@ 0x60
c0de656e:	4606      	mov	r6, r0
c0de6570:	b950      	cbnz	r0, c0de6588 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x38>
c0de6572:	ae14      	add	r6, sp, #80	@ 0x50
c0de6574:	981a      	ldr	r0, [sp, #104]	@ 0x68
c0de6576:	ce4e      	ldmia	r6, {r1, r2, r3, r6}
c0de6578:	e9cd 6500 	strd	r6, r5, [sp]
c0de657c:	e9cd 7002 	strd	r7, r0, [sp, #8]
c0de6580:	a805      	add	r0, sp, #20
c0de6582:	f000 fb69 	bl	c0de6c58 <cx_ecdsa_sign_no_throw>
c0de6586:	4606      	mov	r6, r0
c0de6588:	a805      	add	r0, sp, #20
c0de658a:	f000 f808 	bl	c0de659e <OUTLINED_FUNCTION_0>
c0de658e:	b11e      	cbz	r6, c0de6598 <bip32_derive_with_seed_ecdsa_sign_hash_256+0x48>
c0de6590:	4628      	mov	r0, r5
c0de6592:	4621      	mov	r1, r4
c0de6594:	f001 f8ae 	bl	c0de76f4 <explicit_bzero>
c0de6598:	4630      	mov	r0, r6
c0de659a:	b00f      	add	sp, #60	@ 0x3c
c0de659c:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de659e <OUTLINED_FUNCTION_0>:
c0de659e:	2128      	movs	r1, #40	@ 0x28
c0de65a0:	f001 b8a8 	b.w	c0de76f4 <explicit_bzero>

c0de65a4 <format_u64>:
c0de65a4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de65a8:	b1f9      	cbz	r1, c0de65ea <format_u64+0x46>
c0de65aa:	4615      	mov	r5, r2
c0de65ac:	4604      	mov	r4, r0
c0de65ae:	f1a1 0801 	sub.w	r8, r1, #1
c0de65b2:	2700      	movs	r7, #0
c0de65b4:	2600      	movs	r6, #0
c0de65b6:	f1b5 000a 	subs.w	r0, r5, #10
c0de65ba:	f173 0000 	sbcs.w	r0, r3, #0
c0de65be:	d316      	bcc.n	c0de65ee <format_u64+0x4a>
c0de65c0:	4619      	mov	r1, r3
c0de65c2:	4628      	mov	r0, r5
c0de65c4:	220a      	movs	r2, #10
c0de65c6:	2300      	movs	r3, #0
c0de65c8:	f001 f88a 	bl	c0de76e0 <__aeabi_uldivmod>
c0de65cc:	460b      	mov	r3, r1
c0de65ce:	eb00 0180 	add.w	r1, r0, r0, lsl #2
c0de65d2:	1cba      	adds	r2, r7, #2
c0de65d4:	eba5 0141 	sub.w	r1, r5, r1, lsl #1
c0de65d8:	4605      	mov	r5, r0
c0de65da:	f041 0130 	orr.w	r1, r1, #48	@ 0x30
c0de65de:	55e1      	strb	r1, [r4, r7]
c0de65e0:	1c79      	adds	r1, r7, #1
c0de65e2:	4542      	cmp	r2, r8
c0de65e4:	460f      	mov	r7, r1
c0de65e6:	d9e6      	bls.n	c0de65b6 <format_u64+0x12>
c0de65e8:	e012      	b.n	c0de6610 <format_u64+0x6c>
c0de65ea:	2600      	movs	r6, #0
c0de65ec:	e010      	b.n	c0de6610 <format_u64+0x6c>
c0de65ee:	f105 0030 	add.w	r0, r5, #48	@ 0x30
c0de65f2:	19e1      	adds	r1, r4, r7
c0de65f4:	55e0      	strb	r0, [r4, r7]
c0de65f6:	2000      	movs	r0, #0
c0de65f8:	7048      	strb	r0, [r1, #1]
c0de65fa:	b2c1      	uxtb	r1, r0
c0de65fc:	428f      	cmp	r7, r1
c0de65fe:	d906      	bls.n	c0de660e <format_u64+0x6a>
c0de6600:	5c62      	ldrb	r2, [r4, r1]
c0de6602:	5de3      	ldrb	r3, [r4, r7]
c0de6604:	3001      	adds	r0, #1
c0de6606:	5463      	strb	r3, [r4, r1]
c0de6608:	55e2      	strb	r2, [r4, r7]
c0de660a:	3f01      	subs	r7, #1
c0de660c:	e7f5      	b.n	c0de65fa <format_u64+0x56>
c0de660e:	2601      	movs	r6, #1
c0de6610:	4630      	mov	r0, r6
c0de6612:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de6616 <format_fpu64>:
c0de6616:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de661a:	b086      	sub	sp, #24
c0de661c:	466c      	mov	r4, sp
c0de661e:	4688      	mov	r8, r1
c0de6620:	4605      	mov	r5, r0
c0de6622:	2115      	movs	r1, #21
c0de6624:	461e      	mov	r6, r3
c0de6626:	4617      	mov	r7, r2
c0de6628:	4620      	mov	r0, r4
c0de662a:	f001 f855 	bl	c0de76d8 <__aeabi_memclr>
c0de662e:	4620      	mov	r0, r4
c0de6630:	2115      	movs	r1, #21
c0de6632:	463a      	mov	r2, r7
c0de6634:	4633      	mov	r3, r6
c0de6636:	f7ff ffb5 	bl	c0de65a4 <format_u64>
c0de663a:	b340      	cbz	r0, c0de668e <format_fpu64+0x78>
c0de663c:	466f      	mov	r7, sp
c0de663e:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
c0de6640:	4638      	mov	r0, r7
c0de6642:	f001 f8a5 	bl	c0de7790 <strlen>
c0de6646:	42b0      	cmp	r0, r6
c0de6648:	d910      	bls.n	c0de666c <format_fpu64+0x56>
c0de664a:	1831      	adds	r1, r6, r0
c0de664c:	3101      	adds	r1, #1
c0de664e:	4541      	cmp	r1, r8
c0de6650:	d21d      	bcs.n	c0de668e <format_fpu64+0x78>
c0de6652:	1b84      	subs	r4, r0, r6
c0de6654:	4628      	mov	r0, r5
c0de6656:	4639      	mov	r1, r7
c0de6658:	4622      	mov	r2, r4
c0de665a:	f001 f833 	bl	c0de76c4 <__aeabi_memcpy>
c0de665e:	1928      	adds	r0, r5, r4
c0de6660:	212e      	movs	r1, #46	@ 0x2e
c0de6662:	4632      	mov	r2, r6
c0de6664:	f800 1b01 	strb.w	r1, [r0], #1
c0de6668:	1939      	adds	r1, r7, r4
c0de666a:	e015      	b.n	c0de6698 <format_fpu64+0x82>
c0de666c:	1a32      	subs	r2, r6, r0
c0de666e:	1c91      	adds	r1, r2, #2
c0de6670:	4541      	cmp	r1, r8
c0de6672:	d20c      	bcs.n	c0de668e <format_fpu64+0x78>
c0de6674:	202e      	movs	r0, #46	@ 0x2e
c0de6676:	2330      	movs	r3, #48	@ 0x30
c0de6678:	2400      	movs	r4, #0
c0de667a:	7068      	strb	r0, [r5, #1]
c0de667c:	1ca8      	adds	r0, r5, #2
c0de667e:	702b      	strb	r3, [r5, #0]
c0de6680:	b2a5      	uxth	r5, r4
c0de6682:	42aa      	cmp	r2, r5
c0de6684:	d905      	bls.n	c0de6692 <format_fpu64+0x7c>
c0de6686:	f800 3b01 	strb.w	r3, [r0], #1
c0de668a:	3401      	adds	r4, #1
c0de668c:	e7f8      	b.n	c0de6680 <format_fpu64+0x6a>
c0de668e:	2000      	movs	r0, #0
c0de6690:	e005      	b.n	c0de669e <format_fpu64+0x88>
c0de6692:	eba8 0201 	sub.w	r2, r8, r1
c0de6696:	4669      	mov	r1, sp
c0de6698:	f001 f894 	bl	c0de77c4 <strncpy>
c0de669c:	2001      	movs	r0, #1
c0de669e:	b006      	add	sp, #24
c0de66a0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de66a4 <format_hex>:
c0de66a4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de66a6:	4604      	mov	r4, r0
c0de66a8:	0048      	lsls	r0, r1, #1
c0de66aa:	f100 0c01 	add.w	ip, r0, #1
c0de66ae:	459c      	cmp	ip, r3
c0de66b0:	d902      	bls.n	c0de66b8 <format_hex+0x14>
c0de66b2:	f04f 3cff 	mov.w	ip, #4294967295	@ 0xffffffff
c0de66b6:	e018      	b.n	c0de66ea <format_hex+0x46>
c0de66b8:	480d      	ldr	r0, [pc, #52]	@ (c0de66f0 <format_hex+0x4c>)
c0de66ba:	2500      	movs	r5, #0
c0de66bc:	4478      	add	r0, pc
c0de66be:	b191      	cbz	r1, c0de66e6 <format_hex+0x42>
c0de66c0:	1cef      	adds	r7, r5, #3
c0de66c2:	429f      	cmp	r7, r3
c0de66c4:	d80d      	bhi.n	c0de66e2 <format_hex+0x3e>
c0de66c6:	7827      	ldrb	r7, [r4, #0]
c0de66c8:	3901      	subs	r1, #1
c0de66ca:	093f      	lsrs	r7, r7, #4
c0de66cc:	5dc7      	ldrb	r7, [r0, r7]
c0de66ce:	5557      	strb	r7, [r2, r5]
c0de66d0:	1957      	adds	r7, r2, r5
c0de66d2:	3502      	adds	r5, #2
c0de66d4:	f814 6b01 	ldrb.w	r6, [r4], #1
c0de66d8:	f006 060f 	and.w	r6, r6, #15
c0de66dc:	5d86      	ldrb	r6, [r0, r6]
c0de66de:	707e      	strb	r6, [r7, #1]
c0de66e0:	e7ed      	b.n	c0de66be <format_hex+0x1a>
c0de66e2:	f105 0c01 	add.w	ip, r5, #1
c0de66e6:	2000      	movs	r0, #0
c0de66e8:	5550      	strb	r0, [r2, r5]
c0de66ea:	4660      	mov	r0, ip
c0de66ec:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de66ee:	bf00      	nop
c0de66f0:	00001569 	.word	0x00001569

c0de66f4 <app_ticker_event_callback>:
c0de66f4:	4770      	bx	lr
	...

c0de66f8 <io_event>:
c0de66f8:	b580      	push	{r7, lr}
c0de66fa:	480a      	ldr	r0, [pc, #40]	@ (c0de6724 <io_event+0x2c>)
c0de66fc:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de6700:	290e      	cmp	r1, #14
c0de6702:	d005      	beq.n	c0de6710 <io_event+0x18>
c0de6704:	2905      	cmp	r1, #5
c0de6706:	d108      	bne.n	c0de671a <io_event+0x22>
c0de6708:	4448      	add	r0, r9
c0de670a:	f000 fa05 	bl	c0de6b18 <ux_process_button_event>
c0de670e:	e006      	b.n	c0de671e <io_event+0x26>
c0de6710:	f7ff fff0 	bl	c0de66f4 <app_ticker_event_callback>
c0de6714:	f000 fa44 	bl	c0de6ba0 <ux_process_ticker_event>
c0de6718:	e001      	b.n	c0de671e <io_event+0x26>
c0de671a:	f000 fa59 	bl	c0de6bd0 <ux_process_default_event>
c0de671e:	2001      	movs	r0, #1
c0de6720:	bd80      	pop	{r7, pc}
c0de6722:	bf00      	nop
c0de6724:	000007ac 	.word	0x000007ac

c0de6728 <io_init>:
c0de6728:	4802      	ldr	r0, [pc, #8]	@ (c0de6734 <io_init+0xc>)
c0de672a:	2101      	movs	r1, #1
c0de672c:	f809 1000 	strb.w	r1, [r9, r0]
c0de6730:	4770      	bx	lr
c0de6732:	bf00      	nop
c0de6734:	000008bc 	.word	0x000008bc

c0de6738 <io_recv_command>:
c0de6738:	b510      	push	{r4, lr}
c0de673a:	4c09      	ldr	r4, [pc, #36]	@ (c0de6760 <io_recv_command+0x28>)
c0de673c:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de6740:	2801      	cmp	r0, #1
c0de6742:	d104      	bne.n	c0de674e <io_recv_command+0x16>
c0de6744:	f000 fe96 	bl	c0de7474 <os_io_start>
c0de6748:	2000      	movs	r0, #0
c0de674a:	f809 0004 	strb.w	r0, [r9, r4]
c0de674e:	2000      	movs	r0, #0
c0de6750:	2800      	cmp	r0, #0
c0de6752:	dc03      	bgt.n	c0de675c <io_recv_command+0x24>
c0de6754:	2001      	movs	r0, #1
c0de6756:	f7fc fe69 	bl	c0de342c <io_legacy_apdu_rx>
c0de675a:	e7f9      	b.n	c0de6750 <io_recv_command+0x18>
c0de675c:	bd10      	pop	{r4, pc}
c0de675e:	bf00      	nop
c0de6760:	000008bc 	.word	0x000008bc

c0de6764 <io_send_response_buffers>:
c0de6764:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6768:	f8df a090 	ldr.w	sl, [pc, #144]	@ c0de67fc <io_send_response_buffers+0x98>
c0de676c:	4690      	mov	r8, r2
c0de676e:	460f      	mov	r7, r1
c0de6770:	4606      	mov	r6, r0
c0de6772:	f240 140f 	movw	r4, #271	@ 0x10f
c0de6776:	2500      	movs	r5, #0
c0de6778:	b1b6      	cbz	r6, c0de67a8 <io_send_response_buffers+0x44>
c0de677a:	b1af      	cbz	r7, c0de67a8 <io_send_response_buffers+0x44>
c0de677c:	2500      	movs	r5, #0
c0de677e:	b19f      	cbz	r7, c0de67a8 <io_send_response_buffers+0x44>
c0de6780:	eb09 000a 	add.w	r0, r9, sl
c0de6784:	1b62      	subs	r2, r4, r5
c0de6786:	1941      	adds	r1, r0, r5
c0de6788:	4630      	mov	r0, r6
c0de678a:	f7ff fe03 	bl	c0de6394 <buffer_copy>
c0de678e:	b130      	cbz	r0, c0de679e <io_send_response_buffers+0x3a>
c0de6790:	e9d6 0101 	ldrd	r0, r1, [r6, #4]
c0de6794:	360c      	adds	r6, #12
c0de6796:	3f01      	subs	r7, #1
c0de6798:	4428      	add	r0, r5
c0de679a:	1a45      	subs	r5, r0, r1
c0de679c:	e7ef      	b.n	c0de677e <io_send_response_buffers+0x1a>
c0de679e:	f646 2884 	movw	r8, #27268	@ 0x6a84
c0de67a2:	2600      	movs	r6, #0
c0de67a4:	2700      	movs	r7, #0
c0de67a6:	e7e6      	b.n	c0de6776 <io_send_response_buffers+0x12>
c0de67a8:	fa1f f688 	uxth.w	r6, r8
c0de67ac:	eb09 000a 	add.w	r0, r9, sl
c0de67b0:	4629      	mov	r1, r5
c0de67b2:	4632      	mov	r2, r6
c0de67b4:	f000 f9aa 	bl	c0de6b0c <write_u16_be>
c0de67b8:	4811      	ldr	r0, [pc, #68]	@ (c0de6800 <io_send_response_buffers+0x9c>)
c0de67ba:	1ca9      	adds	r1, r5, #2
c0de67bc:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de67c0:	b118      	cbz	r0, c0de67ca <io_send_response_buffers+0x66>
c0de67c2:	4810      	ldr	r0, [pc, #64]	@ (c0de6804 <io_send_response_buffers+0xa0>)
c0de67c4:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de67c8:	b928      	cbnz	r0, c0de67d6 <io_send_response_buffers+0x72>
c0de67ca:	f000 f81f 	bl	c0de680c <OUTLINED_FUNCTION_0>
c0de67ce:	ea40 70e0 	orr.w	r0, r0, r0, asr #31
c0de67d2:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
c0de67d6:	f000 f819 	bl	c0de680c <OUTLINED_FUNCTION_0>
c0de67da:	2800      	cmp	r0, #0
c0de67dc:	d40a      	bmi.n	c0de67f4 <io_send_response_buffers+0x90>
c0de67de:	480a      	ldr	r0, [pc, #40]	@ (c0de6808 <io_send_response_buffers+0xa4>)
c0de67e0:	f5a6 4110 	sub.w	r1, r6, #36864	@ 0x9000
c0de67e4:	fab1 f181 	clz	r1, r1
c0de67e8:	f859 0000 	ldr.w	r0, [r9, r0]
c0de67ec:	0949      	lsrs	r1, r1, #5
c0de67ee:	7001      	strb	r1, [r0, #0]
c0de67f0:	f000 fe10 	bl	c0de7414 <os_lib_end>
c0de67f4:	20ff      	movs	r0, #255	@ 0xff
c0de67f6:	f000 fe29 	bl	c0de744c <os_sched_exit>
c0de67fa:	bf00      	nop
c0de67fc:	00000407 	.word	0x00000407
c0de6800:	000008cc 	.word	0x000008cc
c0de6804:	000008cd 	.word	0x000008cd
c0de6808:	000008d0 	.word	0x000008d0

c0de680c <OUTLINED_FUNCTION_0>:
c0de680c:	eb09 000a 	add.w	r0, r9, sl
c0de6810:	b289      	uxth	r1, r1
c0de6812:	f7fc bdf7 	b.w	c0de3404 <io_legacy_apdu_tx>

c0de6816 <app_exit>:
c0de6816:	20ff      	movs	r0, #255	@ 0xff
c0de6818:	f000 fe18 	bl	c0de744c <os_sched_exit>

c0de681c <common_app_init>:
c0de681c:	b580      	push	{r7, lr}
c0de681e:	f000 fa49 	bl	c0de6cb4 <nbgl_objInit>
c0de6822:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de6826:	f7fc bedb 	b.w	c0de35e0 <io_seproxyhal_init>
	...

c0de682c <standalone_app_main>:
c0de682c:	b5b0      	push	{r4, r5, r7, lr}
c0de682e:	b08c      	sub	sp, #48	@ 0x30
c0de6830:	4816      	ldr	r0, [pc, #88]	@ (c0de688c <standalone_app_main+0x60>)
c0de6832:	2500      	movs	r5, #0
c0de6834:	466c      	mov	r4, sp
c0de6836:	f809 5000 	strb.w	r5, [r9, r0]
c0de683a:	4815      	ldr	r0, [pc, #84]	@ (c0de6890 <standalone_app_main+0x64>)
c0de683c:	f849 5000 	str.w	r5, [r9, r0]
c0de6840:	4814      	ldr	r0, [pc, #80]	@ (c0de6894 <standalone_app_main+0x68>)
c0de6842:	f809 5000 	strb.w	r5, [r9, r0]
c0de6846:	4620      	mov	r0, r4
c0de6848:	f000 ff8a 	bl	c0de7760 <setjmp>
c0de684c:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de6850:	0400      	lsls	r0, r0, #16
c0de6852:	d108      	bne.n	c0de6866 <standalone_app_main+0x3a>
c0de6854:	4668      	mov	r0, sp
c0de6856:	f000 fe37 	bl	c0de74c8 <try_context_set>
c0de685a:	900a      	str	r0, [sp, #40]	@ 0x28
c0de685c:	f7ff ffde 	bl	c0de681c <common_app_init>
c0de6860:	f7f9 fd54 	bl	c0de030c <app_main>
c0de6864:	e004      	b.n	c0de6870 <standalone_app_main+0x44>
c0de6866:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6868:	f8ad 502c 	strh.w	r5, [sp, #44]	@ 0x2c
c0de686c:	f000 fe2c 	bl	c0de74c8 <try_context_set>
c0de6870:	f000 fe22 	bl	c0de74b8 <try_context_get>
c0de6874:	42a0      	cmp	r0, r4
c0de6876:	d102      	bne.n	c0de687e <standalone_app_main+0x52>
c0de6878:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de687a:	f000 fe25 	bl	c0de74c8 <try_context_set>
c0de687e:	f8bd 002c 	ldrh.w	r0, [sp, #44]	@ 0x2c
c0de6882:	b908      	cbnz	r0, c0de6888 <standalone_app_main+0x5c>
c0de6884:	f7ff ffc7 	bl	c0de6816 <app_exit>
c0de6888:	f000 fa75 	bl	c0de6d76 <os_longjmp>
c0de688c:	000008cc 	.word	0x000008cc
c0de6890:	000008d0 	.word	0x000008d0
c0de6894:	000008cd 	.word	0x000008cd

c0de6898 <library_app_main>:
c0de6898:	b5b0      	push	{r4, r5, r7, lr}
c0de689a:	b08c      	sub	sp, #48	@ 0x30
c0de689c:	466c      	mov	r4, sp
c0de689e:	4605      	mov	r5, r0
c0de68a0:	4620      	mov	r0, r4
c0de68a2:	f000 ff5d 	bl	c0de7760 <setjmp>
c0de68a6:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de68aa:	0400      	lsls	r0, r0, #16
c0de68ac:	d124      	bne.n	c0de68f8 <library_app_main+0x60>
c0de68ae:	4668      	mov	r0, sp
c0de68b0:	f000 fe0a 	bl	c0de74c8 <try_context_set>
c0de68b4:	900a      	str	r0, [sp, #40]	@ 0x28
c0de68b6:	6868      	ldr	r0, [r5, #4]
c0de68b8:	2804      	cmp	r0, #4
c0de68ba:	d024      	beq.n	c0de6906 <library_app_main+0x6e>
c0de68bc:	2803      	cmp	r0, #3
c0de68be:	d026      	beq.n	c0de690e <library_app_main+0x76>
c0de68c0:	2802      	cmp	r0, #2
c0de68c2:	d127      	bne.n	c0de6914 <library_app_main+0x7c>
c0de68c4:	68e8      	ldr	r0, [r5, #12]
c0de68c6:	f7fa fe1f 	bl	c0de1508 <swap_copy_transaction_parameters>
c0de68ca:	b318      	cbz	r0, c0de6914 <library_app_main+0x7c>
c0de68cc:	4816      	ldr	r0, [pc, #88]	@ (c0de6928 <library_app_main+0x90>)
c0de68ce:	2201      	movs	r2, #1
c0de68d0:	f809 2000 	strb.w	r2, [r9, r0]
c0de68d4:	4815      	ldr	r0, [pc, #84]	@ (c0de692c <library_app_main+0x94>)
c0de68d6:	2200      	movs	r2, #0
c0de68d8:	f809 2000 	strb.w	r2, [r9, r0]
c0de68dc:	4a14      	ldr	r2, [pc, #80]	@ (c0de6930 <library_app_main+0x98>)
c0de68de:	68e8      	ldr	r0, [r5, #12]
c0de68e0:	3020      	adds	r0, #32
c0de68e2:	f849 0002 	str.w	r0, [r9, r2]
c0de68e6:	f7ff ff99 	bl	c0de681c <common_app_init>
c0de68ea:	4812      	ldr	r0, [pc, #72]	@ (c0de6934 <library_app_main+0x9c>)
c0de68ec:	4478      	add	r0, pc
c0de68ee:	f7fe fc2b 	bl	c0de5148 <nbgl_useCaseSpinner>
c0de68f2:	f7f9 fd0b 	bl	c0de030c <app_main>
c0de68f6:	e00d      	b.n	c0de6914 <library_app_main+0x7c>
c0de68f8:	2000      	movs	r0, #0
c0de68fa:	f8ad 002c 	strh.w	r0, [sp, #44]	@ 0x2c
c0de68fe:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de6900:	f000 fde2 	bl	c0de74c8 <try_context_set>
c0de6904:	e006      	b.n	c0de6914 <library_app_main+0x7c>
c0de6906:	68e8      	ldr	r0, [r5, #12]
c0de6908:	f7fa fdd2 	bl	c0de14b0 <swap_handle_get_printable_amount>
c0de690c:	e002      	b.n	c0de6914 <library_app_main+0x7c>
c0de690e:	68e8      	ldr	r0, [r5, #12]
c0de6910:	f7fa fd74 	bl	c0de13fc <swap_handle_check_address>
c0de6914:	f000 fdd0 	bl	c0de74b8 <try_context_get>
c0de6918:	42a0      	cmp	r0, r4
c0de691a:	d102      	bne.n	c0de6922 <library_app_main+0x8a>
c0de691c:	980a      	ldr	r0, [sp, #40]	@ 0x28
c0de691e:	f000 fdd3 	bl	c0de74c8 <try_context_set>
c0de6922:	f000 fd77 	bl	c0de7414 <os_lib_end>
c0de6926:	bf00      	nop
c0de6928:	000008cc 	.word	0x000008cc
c0de692c:	000008cd 	.word	0x000008cd
c0de6930:	000008d0 	.word	0x000008d0
c0de6934:	00001160 	.word	0x00001160

c0de6938 <apdu_parser>:
c0de6938:	2a04      	cmp	r2, #4
c0de693a:	d316      	bcc.n	c0de696a <apdu_parser+0x32>
c0de693c:	d102      	bne.n	c0de6944 <apdu_parser+0xc>
c0de693e:	2300      	movs	r3, #0
c0de6940:	7103      	strb	r3, [r0, #4]
c0de6942:	e004      	b.n	c0de694e <apdu_parser+0x16>
c0de6944:	790b      	ldrb	r3, [r1, #4]
c0de6946:	3a05      	subs	r2, #5
c0de6948:	429a      	cmp	r2, r3
c0de694a:	7103      	strb	r3, [r0, #4]
c0de694c:	d10d      	bne.n	c0de696a <apdu_parser+0x32>
c0de694e:	780a      	ldrb	r2, [r1, #0]
c0de6950:	2b00      	cmp	r3, #0
c0de6952:	7002      	strb	r2, [r0, #0]
c0de6954:	784a      	ldrb	r2, [r1, #1]
c0de6956:	7042      	strb	r2, [r0, #1]
c0de6958:	788a      	ldrb	r2, [r1, #2]
c0de695a:	7082      	strb	r2, [r0, #2]
c0de695c:	bf18      	it	ne
c0de695e:	1d4b      	addne	r3, r1, #5
c0de6960:	78c9      	ldrb	r1, [r1, #3]
c0de6962:	6083      	str	r3, [r0, #8]
c0de6964:	70c1      	strb	r1, [r0, #3]
c0de6966:	2001      	movs	r0, #1
c0de6968:	4770      	bx	lr
c0de696a:	2000      	movs	r0, #0
c0de696c:	4770      	bx	lr

c0de696e <read_u32_be>:
c0de696e:	5c42      	ldrb	r2, [r0, r1]
c0de6970:	4408      	add	r0, r1
c0de6972:	7841      	ldrb	r1, [r0, #1]
c0de6974:	7883      	ldrb	r3, [r0, #2]
c0de6976:	78c0      	ldrb	r0, [r0, #3]
c0de6978:	0409      	lsls	r1, r1, #16
c0de697a:	ea41 6102 	orr.w	r1, r1, r2, lsl #24
c0de697e:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
c0de6982:	4408      	add	r0, r1
c0de6984:	4770      	bx	lr

c0de6986 <read_u64_be>:
c0de6986:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de6988:	1842      	adds	r2, r0, r1
c0de698a:	5c40      	ldrb	r0, [r0, r1]
c0de698c:	7917      	ldrb	r7, [r2, #4]
c0de698e:	7953      	ldrb	r3, [r2, #5]
c0de6990:	7854      	ldrb	r4, [r2, #1]
c0de6992:	7895      	ldrb	r5, [r2, #2]
c0de6994:	78d6      	ldrb	r6, [r2, #3]
c0de6996:	063f      	lsls	r7, r7, #24
c0de6998:	0421      	lsls	r1, r4, #16
c0de699a:	ea47 4303 	orr.w	r3, r7, r3, lsl #16
c0de699e:	7997      	ldrb	r7, [r2, #6]
c0de69a0:	79d2      	ldrb	r2, [r2, #7]
c0de69a2:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de69a6:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
c0de69aa:	ea43 2307 	orr.w	r3, r3, r7, lsl #8
c0de69ae:	1981      	adds	r1, r0, r6
c0de69b0:	441a      	add	r2, r3
c0de69b2:	4610      	mov	r0, r2
c0de69b4:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de69b6 <read_u16_le>:
c0de69b6:	5c42      	ldrb	r2, [r0, r1]
c0de69b8:	4408      	add	r0, r1
c0de69ba:	7840      	ldrb	r0, [r0, #1]
c0de69bc:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de69c0:	b280      	uxth	r0, r0
c0de69c2:	4770      	bx	lr

c0de69c4 <read_u32_le>:
c0de69c4:	5c42      	ldrb	r2, [r0, r1]
c0de69c6:	4408      	add	r0, r1
c0de69c8:	7841      	ldrb	r1, [r0, #1]
c0de69ca:	7883      	ldrb	r3, [r0, #2]
c0de69cc:	78c0      	ldrb	r0, [r0, #3]
c0de69ce:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de69d2:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
c0de69d6:	ea41 6000 	orr.w	r0, r1, r0, lsl #24
c0de69da:	4770      	bx	lr

c0de69dc <read_u64_le>:
c0de69dc:	b5b0      	push	{r4, r5, r7, lr}
c0de69de:	5c42      	ldrb	r2, [r0, r1]
c0de69e0:	4401      	add	r1, r0
c0de69e2:	7848      	ldrb	r0, [r1, #1]
c0de69e4:	788b      	ldrb	r3, [r1, #2]
c0de69e6:	790d      	ldrb	r5, [r1, #4]
c0de69e8:	78cc      	ldrb	r4, [r1, #3]
c0de69ea:	ea42 2000 	orr.w	r0, r2, r0, lsl #8
c0de69ee:	794a      	ldrb	r2, [r1, #5]
c0de69f0:	ea40 4003 	orr.w	r0, r0, r3, lsl #16
c0de69f4:	798b      	ldrb	r3, [r1, #6]
c0de69f6:	79c9      	ldrb	r1, [r1, #7]
c0de69f8:	ea45 2202 	orr.w	r2, r5, r2, lsl #8
c0de69fc:	ea40 6004 	orr.w	r0, r0, r4, lsl #24
c0de6a00:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
c0de6a04:	ea42 6101 	orr.w	r1, r2, r1, lsl #24
c0de6a08:	bdb0      	pop	{r4, r5, r7, pc}

c0de6a0a <send_swap_error_simple>:
c0de6a0a:	b082      	sub	sp, #8
c0de6a0c:	2300      	movs	r3, #0
c0de6a0e:	9300      	str	r3, [sp, #0]
c0de6a10:	2300      	movs	r3, #0
c0de6a12:	f000 f801 	bl	c0de6a18 <send_swap_error_with_buffers>
	...

c0de6a18 <send_swap_error_with_buffers>:
c0de6a18:	b09c      	sub	sp, #112	@ 0x70
c0de6a1a:	4604      	mov	r4, r0
c0de6a1c:	4815      	ldr	r0, [pc, #84]	@ (c0de6a74 <send_swap_error_with_buffers+0x5c>)
c0de6a1e:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de6a22:	b320      	cbz	r0, c0de6a6e <send_swap_error_with_buffers+0x56>
c0de6a24:	4814      	ldr	r0, [pc, #80]	@ (c0de6a78 <send_swap_error_with_buffers+0x60>)
c0de6a26:	461d      	mov	r5, r3
c0de6a28:	2301      	movs	r3, #1
c0de6a2a:	466e      	mov	r6, sp
c0de6a2c:	9f1c      	ldr	r7, [sp, #112]	@ 0x70
c0de6a2e:	f809 3000 	strb.w	r3, [r9, r0]
c0de6a32:	f88d 106e 	strb.w	r1, [sp, #110]	@ 0x6e
c0de6a36:	f106 0008 	add.w	r0, r6, #8
c0de6a3a:	2164      	movs	r1, #100	@ 0x64
c0de6a3c:	f88d 206f 	strb.w	r2, [sp, #111]	@ 0x6f
c0de6a40:	f000 fe4a 	bl	c0de76d8 <__aeabi_memclr>
c0de6a44:	2002      	movs	r0, #2
c0de6a46:	4629      	mov	r1, r5
c0de6a48:	9001      	str	r0, [sp, #4]
c0de6a4a:	f10d 006e 	add.w	r0, sp, #110	@ 0x6e
c0de6a4e:	2f08      	cmp	r7, #8
c0de6a50:	9000      	str	r0, [sp, #0]
c0de6a52:	bf28      	it	cs
c0de6a54:	2708      	movcs	r7, #8
c0de6a56:	eb07 0047 	add.w	r0, r7, r7, lsl #1
c0de6a5a:	0082      	lsls	r2, r0, #2
c0de6a5c:	f106 000c 	add.w	r0, r6, #12
c0de6a60:	f000 fe30 	bl	c0de76c4 <__aeabi_memcpy>
c0de6a64:	1c79      	adds	r1, r7, #1
c0de6a66:	4630      	mov	r0, r6
c0de6a68:	4622      	mov	r2, r4
c0de6a6a:	f7ff fe7b 	bl	c0de6764 <io_send_response_buffers>
c0de6a6e:	2000      	movs	r0, #0
c0de6a70:	f000 fcec 	bl	c0de744c <os_sched_exit>
c0de6a74:	000008cc 	.word	0x000008cc
c0de6a78:	000008cd 	.word	0x000008cd

c0de6a7c <swap_str_to_u64>:
c0de6a7c:	2908      	cmp	r1, #8
c0de6a7e:	d812      	bhi.n	c0de6aa6 <swap_str_to_u64+0x2a>
c0de6a80:	b570      	push	{r4, r5, r6, lr}
c0de6a82:	2500      	movs	r5, #0
c0de6a84:	460b      	mov	r3, r1
c0de6a86:	2400      	movs	r4, #0
c0de6a88:	b14b      	cbz	r3, c0de6a9e <swap_str_to_u64+0x22>
c0de6a8a:	f810 6b01 	ldrb.w	r6, [r0], #1
c0de6a8e:	0224      	lsls	r4, r4, #8
c0de6a90:	3b01      	subs	r3, #1
c0de6a92:	ea44 6415 	orr.w	r4, r4, r5, lsr #24
c0de6a96:	ea46 2605 	orr.w	r6, r6, r5, lsl #8
c0de6a9a:	4635      	mov	r5, r6
c0de6a9c:	e7f4      	b.n	c0de6a88 <swap_str_to_u64+0xc>
c0de6a9e:	e9c2 5400 	strd	r5, r4, [r2]
c0de6aa2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de6aa6:	2000      	movs	r0, #0
c0de6aa8:	2909      	cmp	r1, #9
c0de6aaa:	bf38      	it	cc
c0de6aac:	2001      	movcc	r0, #1
c0de6aae:	4770      	bx	lr

c0de6ab0 <varint_read>:
c0de6ab0:	b510      	push	{r4, lr}
c0de6ab2:	b1d9      	cbz	r1, c0de6aec <varint_read+0x3c>
c0de6ab4:	4614      	mov	r4, r2
c0de6ab6:	4602      	mov	r2, r0
c0de6ab8:	7800      	ldrb	r0, [r0, #0]
c0de6aba:	28ff      	cmp	r0, #255	@ 0xff
c0de6abc:	d00c      	beq.n	c0de6ad8 <varint_read+0x28>
c0de6abe:	28fe      	cmp	r0, #254	@ 0xfe
c0de6ac0:	d012      	beq.n	c0de6ae8 <varint_read+0x38>
c0de6ac2:	28fd      	cmp	r0, #253	@ 0xfd
c0de6ac4:	d115      	bne.n	c0de6af2 <varint_read+0x42>
c0de6ac6:	2903      	cmp	r1, #3
c0de6ac8:	d310      	bcc.n	c0de6aec <varint_read+0x3c>
c0de6aca:	4610      	mov	r0, r2
c0de6acc:	2101      	movs	r1, #1
c0de6ace:	f7ff ff72 	bl	c0de69b6 <read_u16_le>
c0de6ad2:	2100      	movs	r1, #0
c0de6ad4:	2203      	movs	r2, #3
c0de6ad6:	e015      	b.n	c0de6b04 <varint_read+0x54>
c0de6ad8:	2909      	cmp	r1, #9
c0de6ada:	d307      	bcc.n	c0de6aec <varint_read+0x3c>
c0de6adc:	4610      	mov	r0, r2
c0de6ade:	2101      	movs	r1, #1
c0de6ae0:	f7ff ff7c 	bl	c0de69dc <read_u64_le>
c0de6ae4:	2209      	movs	r2, #9
c0de6ae6:	e00d      	b.n	c0de6b04 <varint_read+0x54>
c0de6ae8:	2905      	cmp	r1, #5
c0de6aea:	d205      	bcs.n	c0de6af8 <varint_read+0x48>
c0de6aec:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
c0de6af0:	e00a      	b.n	c0de6b08 <varint_read+0x58>
c0de6af2:	2100      	movs	r1, #0
c0de6af4:	2201      	movs	r2, #1
c0de6af6:	e005      	b.n	c0de6b04 <varint_read+0x54>
c0de6af8:	4610      	mov	r0, r2
c0de6afa:	2101      	movs	r1, #1
c0de6afc:	f7ff ff62 	bl	c0de69c4 <read_u32_le>
c0de6b00:	2100      	movs	r1, #0
c0de6b02:	2205      	movs	r2, #5
c0de6b04:	e9c4 0100 	strd	r0, r1, [r4]
c0de6b08:	4610      	mov	r0, r2
c0de6b0a:	bd10      	pop	{r4, pc}

c0de6b0c <write_u16_be>:
c0de6b0c:	0a13      	lsrs	r3, r2, #8
c0de6b0e:	5443      	strb	r3, [r0, r1]
c0de6b10:	4408      	add	r0, r1
c0de6b12:	7042      	strb	r2, [r0, #1]
c0de6b14:	4770      	bx	lr
	...

c0de6b18 <ux_process_button_event>:
c0de6b18:	b5b0      	push	{r4, r5, r7, lr}
c0de6b1a:	4604      	mov	r4, r0
c0de6b1c:	2001      	movs	r0, #1
c0de6b1e:	f000 f815 	bl	c0de6b4c <ux_forward_event>
c0de6b22:	4605      	mov	r5, r0
c0de6b24:	f000 f8cb 	bl	c0de6cbe <nbgl_objAllowDrawing>
c0de6b28:	b165      	cbz	r5, c0de6b44 <ux_process_button_event+0x2c>
c0de6b2a:	4807      	ldr	r0, [pc, #28]	@ (c0de6b48 <ux_process_button_event+0x30>)
c0de6b2c:	2164      	movs	r1, #100	@ 0x64
c0de6b2e:	f859 0000 	ldr.w	r0, [r9, r0]
c0de6b32:	4341      	muls	r1, r0
c0de6b34:	78e0      	ldrb	r0, [r4, #3]
c0de6b36:	0840      	lsrs	r0, r0, #1
c0de6b38:	f000 f90c 	bl	c0de6d54 <nbgl_buttonsHandler>
c0de6b3c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de6b40:	f000 b8b3 	b.w	c0de6caa <nbgl_refresh>
c0de6b44:	bdb0      	pop	{r4, r5, r7, pc}
c0de6b46:	bf00      	nop
c0de6b48:	000008d4 	.word	0x000008d4

c0de6b4c <ux_forward_event>:
c0de6b4c:	b5b0      	push	{r4, r5, r7, lr}
c0de6b4e:	4604      	mov	r4, r0
c0de6b50:	4812      	ldr	r0, [pc, #72]	@ (c0de6b9c <ux_forward_event+0x50>)
c0de6b52:	2101      	movs	r1, #1
c0de6b54:	f809 1000 	strb.w	r1, [r9, r0]
c0de6b58:	eb09 0500 	add.w	r5, r9, r0
c0de6b5c:	2000      	movs	r0, #0
c0de6b5e:	6068      	str	r0, [r5, #4]
c0de6b60:	4628      	mov	r0, r5
c0de6b62:	f000 fc4d 	bl	c0de7400 <os_ux>
c0de6b66:	2004      	movs	r0, #4
c0de6b68:	f000 fcb8 	bl	c0de74dc <os_sched_last_status>
c0de6b6c:	2869      	cmp	r0, #105	@ 0x69
c0de6b6e:	6068      	str	r0, [r5, #4]
c0de6b70:	d108      	bne.n	c0de6b84 <ux_forward_event+0x38>
c0de6b72:	2001      	movs	r0, #1
c0de6b74:	f000 f8a3 	bl	c0de6cbe <nbgl_objAllowDrawing>
c0de6b78:	f000 f8b0 	bl	c0de6cdc <nbgl_screenRedraw>
c0de6b7c:	f000 f895 	bl	c0de6caa <nbgl_refresh>
c0de6b80:	2000      	movs	r0, #0
c0de6b82:	bdb0      	pop	{r4, r5, r7, pc}
c0de6b84:	b144      	cbz	r4, c0de6b98 <ux_forward_event+0x4c>
c0de6b86:	f1b0 0197 	subs.w	r1, r0, #151	@ 0x97
c0de6b8a:	bf18      	it	ne
c0de6b8c:	2101      	movne	r1, #1
c0de6b8e:	2800      	cmp	r0, #0
c0de6b90:	bf18      	it	ne
c0de6b92:	2001      	movne	r0, #1
c0de6b94:	4008      	ands	r0, r1
c0de6b96:	bdb0      	pop	{r4, r5, r7, pc}
c0de6b98:	2001      	movs	r0, #1
c0de6b9a:	bdb0      	pop	{r4, r5, r7, pc}
c0de6b9c:	000008c0 	.word	0x000008c0

c0de6ba0 <ux_process_ticker_event>:
c0de6ba0:	b510      	push	{r4, lr}
c0de6ba2:	480a      	ldr	r0, [pc, #40]	@ (c0de6bcc <ux_process_ticker_event+0x2c>)
c0de6ba4:	f859 1000 	ldr.w	r1, [r9, r0]
c0de6ba8:	3101      	adds	r1, #1
c0de6baa:	f849 1000 	str.w	r1, [r9, r0]
c0de6bae:	2001      	movs	r0, #1
c0de6bb0:	f7ff ffcc 	bl	c0de6b4c <ux_forward_event>
c0de6bb4:	4604      	mov	r4, r0
c0de6bb6:	f000 f882 	bl	c0de6cbe <nbgl_objAllowDrawing>
c0de6bba:	b134      	cbz	r4, c0de6bca <ux_process_ticker_event+0x2a>
c0de6bbc:	2064      	movs	r0, #100	@ 0x64
c0de6bbe:	f000 f897 	bl	c0de6cf0 <nbgl_screenHandler>
c0de6bc2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de6bc6:	f000 b870 	b.w	c0de6caa <nbgl_refresh>
c0de6bca:	bd10      	pop	{r4, pc}
c0de6bcc:	000008d4 	.word	0x000008d4

c0de6bd0 <ux_process_default_event>:
c0de6bd0:	2000      	movs	r0, #0
c0de6bd2:	f7ff bfbb 	b.w	c0de6b4c <ux_forward_event>

c0de6bd6 <hash_iovec_ex>:
c0de6bd6:	e92d 45f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
c0de6bda:	468a      	mov	sl, r1
c0de6bdc:	4611      	mov	r1, r2
c0de6bde:	461a      	mov	r2, r3
c0de6be0:	4605      	mov	r5, r0
c0de6be2:	f000 f84d 	bl	c0de6c80 <cx_hash_init_ex>
c0de6be6:	4607      	mov	r7, r0
c0de6be8:	b9a8      	cbnz	r0, c0de6c16 <hash_iovec_ex+0x40>
c0de6bea:	f10d 0820 	add.w	r8, sp, #32
c0de6bee:	e898 0141 	ldmia.w	r8, {r0, r6, r8}
c0de6bf2:	1d04      	adds	r4, r0, #4
c0de6bf4:	b156      	cbz	r6, c0de6c0c <hash_iovec_ex+0x36>
c0de6bf6:	f854 1c04 	ldr.w	r1, [r4, #-4]
c0de6bfa:	f854 2b08 	ldr.w	r2, [r4], #8
c0de6bfe:	4628      	mov	r0, r5
c0de6c00:	f000 f843 	bl	c0de6c8a <cx_hash_update>
c0de6c04:	3e01      	subs	r6, #1
c0de6c06:	2800      	cmp	r0, #0
c0de6c08:	d0f4      	beq.n	c0de6bf4 <hash_iovec_ex+0x1e>
c0de6c0a:	e003      	b.n	c0de6c14 <hash_iovec_ex+0x3e>
c0de6c0c:	4628      	mov	r0, r5
c0de6c0e:	4641      	mov	r1, r8
c0de6c10:	f000 f831 	bl	c0de6c76 <cx_hash_final>
c0de6c14:	4607      	mov	r7, r0
c0de6c16:	4628      	mov	r0, r5
c0de6c18:	4651      	mov	r1, sl
c0de6c1a:	f000 fd6b 	bl	c0de76f4 <explicit_bzero>
c0de6c1e:	4638      	mov	r0, r7
c0de6c20:	e8bd 85f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}

c0de6c24 <cx_keccak_256_hash_iovec>:
c0de6c24:	b580      	push	{r7, lr}
c0de6c26:	b0ee      	sub	sp, #440	@ 0x1b8
c0de6c28:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de6c2c:	a804      	add	r0, sp, #16
c0de6c2e:	f44f 71d4 	mov.w	r1, #424	@ 0x1a8
c0de6c32:	2206      	movs	r2, #6
c0de6c34:	2320      	movs	r3, #32
c0de6c36:	f7ff ffce 	bl	c0de6bd6 <hash_iovec_ex>
c0de6c3a:	b06e      	add	sp, #440	@ 0x1b8
c0de6c3c:	bd80      	pop	{r7, pc}

c0de6c3e <cx_blake2b_512_hash_iovec>:
c0de6c3e:	b580      	push	{r7, lr}
c0de6c40:	b0c4      	sub	sp, #272	@ 0x110
c0de6c42:	e88d 0007 	stmia.w	sp, {r0, r1, r2}
c0de6c46:	a804      	add	r0, sp, #16
c0de6c48:	f44f 7180 	mov.w	r1, #256	@ 0x100
c0de6c4c:	2209      	movs	r2, #9
c0de6c4e:	2340      	movs	r3, #64	@ 0x40
c0de6c50:	f7ff ffc1 	bl	c0de6bd6 <hash_iovec_ex>
c0de6c54:	b044      	add	sp, #272	@ 0x110
c0de6c56:	bd80      	pop	{r7, pc}

c0de6c58 <cx_ecdsa_sign_no_throw>:
c0de6c58:	b403      	push	{r0, r1}
c0de6c5a:	f04f 002c 	mov.w	r0, #44	@ 0x2c
c0de6c5e:	f000 b81d 	b.w	c0de6c9c <cx_trampoline_helper>

c0de6c62 <cx_ecfp_generate_pair2_no_throw>:
c0de6c62:	b403      	push	{r0, r1}
c0de6c64:	f04f 0031 	mov.w	r0, #49	@ 0x31
c0de6c68:	f000 b818 	b.w	c0de6c9c <cx_trampoline_helper>

c0de6c6c <cx_ecfp_init_private_key_no_throw>:
c0de6c6c:	b403      	push	{r0, r1}
c0de6c6e:	f04f 0033 	mov.w	r0, #51	@ 0x33
c0de6c72:	f000 b813 	b.w	c0de6c9c <cx_trampoline_helper>

c0de6c76 <cx_hash_final>:
c0de6c76:	b403      	push	{r0, r1}
c0de6c78:	f04f 003f 	mov.w	r0, #63	@ 0x3f
c0de6c7c:	f000 b80e 	b.w	c0de6c9c <cx_trampoline_helper>

c0de6c80 <cx_hash_init_ex>:
c0de6c80:	b403      	push	{r0, r1}
c0de6c82:	f04f 0043 	mov.w	r0, #67	@ 0x43
c0de6c86:	f000 b809 	b.w	c0de6c9c <cx_trampoline_helper>

c0de6c8a <cx_hash_update>:
c0de6c8a:	b403      	push	{r0, r1}
c0de6c8c:	f04f 0048 	mov.w	r0, #72	@ 0x48
c0de6c90:	f000 b804 	b.w	c0de6c9c <cx_trampoline_helper>

c0de6c94 <cx_aes_siv_reset>:
c0de6c94:	b403      	push	{r0, r1}
c0de6c96:	f04f 0090 	mov.w	r0, #144	@ 0x90
c0de6c9a:	e7ff      	b.n	c0de6c9c <cx_trampoline_helper>

c0de6c9c <cx_trampoline_helper>:
c0de6c9c:	4900      	ldr	r1, [pc, #0]	@ (c0de6ca0 <cx_trampoline_helper+0x4>)
c0de6c9e:	4708      	bx	r1
c0de6ca0:	00808001 	.word	0x00808001

c0de6ca4 <assert_exit>:
c0de6ca4:	20ff      	movs	r0, #255	@ 0xff
c0de6ca6:	f000 fbd1 	bl	c0de744c <os_sched_exit>

c0de6caa <nbgl_refresh>:
c0de6caa:	b403      	push	{r0, r1}
c0de6cac:	f04f 0091 	mov.w	r0, #145	@ 0x91
c0de6cb0:	f000 b85a 	b.w	c0de6d68 <nbgl_trampoline_helper>

c0de6cb4 <nbgl_objInit>:
c0de6cb4:	b403      	push	{r0, r1}
c0de6cb6:	f04f 0096 	mov.w	r0, #150	@ 0x96
c0de6cba:	f000 b855 	b.w	c0de6d68 <nbgl_trampoline_helper>

c0de6cbe <nbgl_objAllowDrawing>:
c0de6cbe:	b403      	push	{r0, r1}
c0de6cc0:	f04f 0098 	mov.w	r0, #152	@ 0x98
c0de6cc4:	f000 b850 	b.w	c0de6d68 <nbgl_trampoline_helper>

c0de6cc8 <nbgl_screenSet>:
c0de6cc8:	b403      	push	{r0, r1}
c0de6cca:	f04f 009b 	mov.w	r0, #155	@ 0x9b
c0de6cce:	f000 b84b 	b.w	c0de6d68 <nbgl_trampoline_helper>

c0de6cd2 <nbgl_screenPush>:
c0de6cd2:	b403      	push	{r0, r1}
c0de6cd4:	f04f 009c 	mov.w	r0, #156	@ 0x9c
c0de6cd8:	f000 b846 	b.w	c0de6d68 <nbgl_trampoline_helper>

c0de6cdc <nbgl_screenRedraw>:
c0de6cdc:	b403      	push	{r0, r1}
c0de6cde:	f04f 009d 	mov.w	r0, #157	@ 0x9d
c0de6ce2:	f000 b841 	b.w	c0de6d68 <nbgl_trampoline_helper>

c0de6ce6 <nbgl_screenPop>:
c0de6ce6:	b403      	push	{r0, r1}
c0de6ce8:	f04f 009e 	mov.w	r0, #158	@ 0x9e
c0de6cec:	f000 b83c 	b.w	c0de6d68 <nbgl_trampoline_helper>

c0de6cf0 <nbgl_screenHandler>:
c0de6cf0:	b403      	push	{r0, r1}
c0de6cf2:	f04f 00a7 	mov.w	r0, #167	@ 0xa7
c0de6cf6:	f000 b837 	b.w	c0de6d68 <nbgl_trampoline_helper>

c0de6cfa <nbgl_objPoolGet>:
c0de6cfa:	b403      	push	{r0, r1}
c0de6cfc:	f04f 00a8 	mov.w	r0, #168	@ 0xa8
c0de6d00:	f000 b832 	b.w	c0de6d68 <nbgl_trampoline_helper>

c0de6d04 <nbgl_containerPoolGet>:
c0de6d04:	b403      	push	{r0, r1}
c0de6d06:	f04f 00aa 	mov.w	r0, #170	@ 0xaa
c0de6d0a:	f000 b82d 	b.w	c0de6d68 <nbgl_trampoline_helper>

c0de6d0e <nbgl_getFont>:
c0de6d0e:	b403      	push	{r0, r1}
c0de6d10:	f04f 00ac 	mov.w	r0, #172	@ 0xac
c0de6d14:	f000 b828 	b.w	c0de6d68 <nbgl_trampoline_helper>

c0de6d18 <nbgl_getFontLineHeight>:
c0de6d18:	b403      	push	{r0, r1}
c0de6d1a:	f04f 00ae 	mov.w	r0, #174	@ 0xae
c0de6d1e:	f000 b823 	b.w	c0de6d68 <nbgl_trampoline_helper>

c0de6d22 <nbgl_getTextNbLinesInWidth>:
c0de6d22:	b403      	push	{r0, r1}
c0de6d24:	f04f 00b4 	mov.w	r0, #180	@ 0xb4
c0de6d28:	f000 b81e 	b.w	c0de6d68 <nbgl_trampoline_helper>

c0de6d2c <nbgl_getTextNbPagesInWidth>:
c0de6d2c:	b403      	push	{r0, r1}
c0de6d2e:	f04f 00b5 	mov.w	r0, #181	@ 0xb5
c0de6d32:	f000 b819 	b.w	c0de6d68 <nbgl_trampoline_helper>

c0de6d36 <nbgl_getTextWidth>:
c0de6d36:	b403      	push	{r0, r1}
c0de6d38:	f04f 00b6 	mov.w	r0, #182	@ 0xb6
c0de6d3c:	f000 b814 	b.w	c0de6d68 <nbgl_trampoline_helper>

c0de6d40 <nbgl_getTextMaxLenInNbLines>:
c0de6d40:	b403      	push	{r0, r1}
c0de6d42:	f04f 00b7 	mov.w	r0, #183	@ 0xb7
c0de6d46:	f000 b80f 	b.w	c0de6d68 <nbgl_trampoline_helper>

c0de6d4a <nbgl_textReduceOnNbLines>:
c0de6d4a:	b403      	push	{r0, r1}
c0de6d4c:	f04f 00b8 	mov.w	r0, #184	@ 0xb8
c0de6d50:	f000 b80a 	b.w	c0de6d68 <nbgl_trampoline_helper>

c0de6d54 <nbgl_buttonsHandler>:
c0de6d54:	b403      	push	{r0, r1}
c0de6d56:	f04f 00be 	mov.w	r0, #190	@ 0xbe
c0de6d5a:	f000 b805 	b.w	c0de6d68 <nbgl_trampoline_helper>
	...

c0de6d60 <pic_init>:
c0de6d60:	b403      	push	{r0, r1}
c0de6d62:	f04f 00c4 	mov.w	r0, #196	@ 0xc4
c0de6d66:	e7ff      	b.n	c0de6d68 <nbgl_trampoline_helper>

c0de6d68 <nbgl_trampoline_helper>:
c0de6d68:	4900      	ldr	r1, [pc, #0]	@ (c0de6d6c <nbgl_trampoline_helper+0x4>)
c0de6d6a:	4708      	bx	r1
c0de6d6c:	00808001 	.word	0x00808001

c0de6d70 <os_boot>:
c0de6d70:	2000      	movs	r0, #0
c0de6d72:	f000 bba9 	b.w	c0de74c8 <try_context_set>

c0de6d76 <os_longjmp>:
c0de6d76:	4604      	mov	r4, r0
c0de6d78:	f000 fb9e 	bl	c0de74b8 <try_context_get>
c0de6d7c:	4621      	mov	r1, r4
c0de6d7e:	f000 fcf5 	bl	c0de776c <longjmp>
	...

c0de6d84 <os_explicit_zero_BSS_segment>:
c0de6d84:	4803      	ldr	r0, [pc, #12]	@ (c0de6d94 <os_explicit_zero_BSS_segment+0x10>)
c0de6d86:	4904      	ldr	r1, [pc, #16]	@ (c0de6d98 <os_explicit_zero_BSS_segment+0x14>)
c0de6d88:	4448      	add	r0, r9
c0de6d8a:	4449      	add	r1, r9
c0de6d8c:	1a09      	subs	r1, r1, r0
c0de6d8e:	f000 bcb1 	b.w	c0de76f4 <explicit_bzero>
c0de6d92:	bf00      	nop
c0de6d94:	00000000 	.word	0x00000000
c0de6d98:	000008d8 	.word	0x000008d8

c0de6d9c <snprintf>:
c0de6d9c:	b081      	sub	sp, #4
c0de6d9e:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6da2:	b087      	sub	sp, #28
c0de6da4:	2800      	cmp	r0, #0
c0de6da6:	930f      	str	r3, [sp, #60]	@ 0x3c
c0de6da8:	f000 817a 	beq.w	c0de70a0 <snprintf+0x304>
c0de6dac:	460d      	mov	r5, r1
c0de6dae:	2900      	cmp	r1, #0
c0de6db0:	f000 8176 	beq.w	c0de70a0 <snprintf+0x304>
c0de6db4:	4629      	mov	r1, r5
c0de6db6:	4616      	mov	r6, r2
c0de6db8:	4604      	mov	r4, r0
c0de6dba:	f000 fc8d 	bl	c0de76d8 <__aeabi_memclr>
c0de6dbe:	f1b5 0801 	subs.w	r8, r5, #1
c0de6dc2:	f000 816d 	beq.w	c0de70a0 <snprintf+0x304>
c0de6dc6:	a80f      	add	r0, sp, #60	@ 0x3c
c0de6dc8:	9002      	str	r0, [sp, #8]
c0de6dca:	7830      	ldrb	r0, [r6, #0]
c0de6dcc:	2800      	cmp	r0, #0
c0de6dce:	f000 8167 	beq.w	c0de70a0 <snprintf+0x304>
c0de6dd2:	2700      	movs	r7, #0
c0de6dd4:	b128      	cbz	r0, c0de6de2 <snprintf+0x46>
c0de6dd6:	2825      	cmp	r0, #37	@ 0x25
c0de6dd8:	d003      	beq.n	c0de6de2 <snprintf+0x46>
c0de6dda:	19f0      	adds	r0, r6, r7
c0de6ddc:	3701      	adds	r7, #1
c0de6dde:	7840      	ldrb	r0, [r0, #1]
c0de6de0:	e7f8      	b.n	c0de6dd4 <snprintf+0x38>
c0de6de2:	4547      	cmp	r7, r8
c0de6de4:	bf28      	it	cs
c0de6de6:	4647      	movcs	r7, r8
c0de6de8:	4620      	mov	r0, r4
c0de6dea:	4631      	mov	r1, r6
c0de6dec:	463a      	mov	r2, r7
c0de6dee:	f000 fc6b 	bl	c0de76c8 <__aeabi_memmove>
c0de6df2:	ebb8 0807 	subs.w	r8, r8, r7
c0de6df6:	f000 8153 	beq.w	c0de70a0 <snprintf+0x304>
c0de6dfa:	5df1      	ldrb	r1, [r6, r7]
c0de6dfc:	19f0      	adds	r0, r6, r7
c0de6dfe:	443c      	add	r4, r7
c0de6e00:	4606      	mov	r6, r0
c0de6e02:	2925      	cmp	r1, #37	@ 0x25
c0de6e04:	d1e1      	bne.n	c0de6dca <snprintf+0x2e>
c0de6e06:	1c41      	adds	r1, r0, #1
c0de6e08:	f04f 0b00 	mov.w	fp, #0
c0de6e0c:	f04f 0e20 	mov.w	lr, #32
c0de6e10:	2500      	movs	r5, #0
c0de6e12:	2600      	movs	r6, #0
c0de6e14:	3101      	adds	r1, #1
c0de6e16:	f811 3c01 	ldrb.w	r3, [r1, #-1]
c0de6e1a:	4632      	mov	r2, r6
c0de6e1c:	3101      	adds	r1, #1
c0de6e1e:	2600      	movs	r6, #0
c0de6e20:	2b2d      	cmp	r3, #45	@ 0x2d
c0de6e22:	d0f8      	beq.n	c0de6e16 <snprintf+0x7a>
c0de6e24:	f1a3 0630 	sub.w	r6, r3, #48	@ 0x30
c0de6e28:	2e0a      	cmp	r6, #10
c0de6e2a:	d313      	bcc.n	c0de6e54 <snprintf+0xb8>
c0de6e2c:	2b25      	cmp	r3, #37	@ 0x25
c0de6e2e:	d046      	beq.n	c0de6ebe <snprintf+0x122>
c0de6e30:	2b2a      	cmp	r3, #42	@ 0x2a
c0de6e32:	d01f      	beq.n	c0de6e74 <snprintf+0xd8>
c0de6e34:	2b2e      	cmp	r3, #46	@ 0x2e
c0de6e36:	d129      	bne.n	c0de6e8c <snprintf+0xf0>
c0de6e38:	f811 2c01 	ldrb.w	r2, [r1, #-1]
c0de6e3c:	2a2a      	cmp	r2, #42	@ 0x2a
c0de6e3e:	d13c      	bne.n	c0de6eba <snprintf+0x11e>
c0de6e40:	780a      	ldrb	r2, [r1, #0]
c0de6e42:	2a48      	cmp	r2, #72	@ 0x48
c0de6e44:	d003      	beq.n	c0de6e4e <snprintf+0xb2>
c0de6e46:	2a73      	cmp	r2, #115	@ 0x73
c0de6e48:	d001      	beq.n	c0de6e4e <snprintf+0xb2>
c0de6e4a:	2a68      	cmp	r2, #104	@ 0x68
c0de6e4c:	d135      	bne.n	c0de6eba <snprintf+0x11e>
c0de6e4e:	9a02      	ldr	r2, [sp, #8]
c0de6e50:	2601      	movs	r6, #1
c0de6e52:	e017      	b.n	c0de6e84 <snprintf+0xe8>
c0de6e54:	f083 0630 	eor.w	r6, r3, #48	@ 0x30
c0de6e58:	ea56 060b 	orrs.w	r6, r6, fp
c0de6e5c:	bf08      	it	eq
c0de6e5e:	f04f 0e30 	moveq.w	lr, #48	@ 0x30
c0de6e62:	eb0b 068b 	add.w	r6, fp, fp, lsl #2
c0de6e66:	3901      	subs	r1, #1
c0de6e68:	eb03 0346 	add.w	r3, r3, r6, lsl #1
c0de6e6c:	4616      	mov	r6, r2
c0de6e6e:	f1a3 0b30 	sub.w	fp, r3, #48	@ 0x30
c0de6e72:	e7cf      	b.n	c0de6e14 <snprintf+0x78>
c0de6e74:	460b      	mov	r3, r1
c0de6e76:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
c0de6e7a:	2a73      	cmp	r2, #115	@ 0x73
c0de6e7c:	d11d      	bne.n	c0de6eba <snprintf+0x11e>
c0de6e7e:	9a02      	ldr	r2, [sp, #8]
c0de6e80:	2602      	movs	r6, #2
c0de6e82:	4619      	mov	r1, r3
c0de6e84:	1d13      	adds	r3, r2, #4
c0de6e86:	9302      	str	r3, [sp, #8]
c0de6e88:	6815      	ldr	r5, [r2, #0]
c0de6e8a:	e7c3      	b.n	c0de6e14 <snprintf+0x78>
c0de6e8c:	2b48      	cmp	r3, #72	@ 0x48
c0de6e8e:	d018      	beq.n	c0de6ec2 <snprintf+0x126>
c0de6e90:	2b58      	cmp	r3, #88	@ 0x58
c0de6e92:	d019      	beq.n	c0de6ec8 <snprintf+0x12c>
c0de6e94:	2b63      	cmp	r3, #99	@ 0x63
c0de6e96:	d020      	beq.n	c0de6eda <snprintf+0x13e>
c0de6e98:	2b64      	cmp	r3, #100	@ 0x64
c0de6e9a:	d02a      	beq.n	c0de6ef2 <snprintf+0x156>
c0de6e9c:	2b68      	cmp	r3, #104	@ 0x68
c0de6e9e:	d036      	beq.n	c0de6f0e <snprintf+0x172>
c0de6ea0:	2b70      	cmp	r3, #112	@ 0x70
c0de6ea2:	d006      	beq.n	c0de6eb2 <snprintf+0x116>
c0de6ea4:	2b73      	cmp	r3, #115	@ 0x73
c0de6ea6:	d037      	beq.n	c0de6f18 <snprintf+0x17c>
c0de6ea8:	2b75      	cmp	r3, #117	@ 0x75
c0de6eaa:	f000 8081 	beq.w	c0de6fb0 <snprintf+0x214>
c0de6eae:	2b78      	cmp	r3, #120	@ 0x78
c0de6eb0:	d103      	bne.n	c0de6eba <snprintf+0x11e>
c0de6eb2:	9400      	str	r4, [sp, #0]
c0de6eb4:	f04f 0c00 	mov.w	ip, #0
c0de6eb8:	e009      	b.n	c0de6ece <snprintf+0x132>
c0de6eba:	1e4e      	subs	r6, r1, #1
c0de6ebc:	e785      	b.n	c0de6dca <snprintf+0x2e>
c0de6ebe:	2025      	movs	r0, #37	@ 0x25
c0de6ec0:	e00f      	b.n	c0de6ee2 <snprintf+0x146>
c0de6ec2:	487b      	ldr	r0, [pc, #492]	@ (c0de70b0 <snprintf+0x314>)
c0de6ec4:	4478      	add	r0, pc
c0de6ec6:	e024      	b.n	c0de6f12 <snprintf+0x176>
c0de6ec8:	f04f 0c01 	mov.w	ip, #1
c0de6ecc:	9400      	str	r4, [sp, #0]
c0de6ece:	9a02      	ldr	r2, [sp, #8]
c0de6ed0:	2400      	movs	r4, #0
c0de6ed2:	1d13      	adds	r3, r2, #4
c0de6ed4:	9302      	str	r3, [sp, #8]
c0de6ed6:	2310      	movs	r3, #16
c0de6ed8:	e072      	b.n	c0de6fc0 <snprintf+0x224>
c0de6eda:	9802      	ldr	r0, [sp, #8]
c0de6edc:	1d02      	adds	r2, r0, #4
c0de6ede:	9202      	str	r2, [sp, #8]
c0de6ee0:	6800      	ldr	r0, [r0, #0]
c0de6ee2:	1e4e      	subs	r6, r1, #1
c0de6ee4:	f804 0b01 	strb.w	r0, [r4], #1
c0de6ee8:	f1b8 0801 	subs.w	r8, r8, #1
c0de6eec:	f47f af6d 	bne.w	c0de6dca <snprintf+0x2e>
c0de6ef0:	e0d6      	b.n	c0de70a0 <snprintf+0x304>
c0de6ef2:	9a02      	ldr	r2, [sp, #8]
c0de6ef4:	9400      	str	r4, [sp, #0]
c0de6ef6:	1d13      	adds	r3, r2, #4
c0de6ef8:	9302      	str	r3, [sp, #8]
c0de6efa:	6813      	ldr	r3, [r2, #0]
c0de6efc:	2b00      	cmp	r3, #0
c0de6efe:	461a      	mov	r2, r3
c0de6f00:	d500      	bpl.n	c0de6f04 <snprintf+0x168>
c0de6f02:	425a      	negs	r2, r3
c0de6f04:	0fdc      	lsrs	r4, r3, #31
c0de6f06:	f04f 0c00 	mov.w	ip, #0
c0de6f0a:	230a      	movs	r3, #10
c0de6f0c:	e059      	b.n	c0de6fc2 <snprintf+0x226>
c0de6f0e:	4869      	ldr	r0, [pc, #420]	@ (c0de70b4 <snprintf+0x318>)
c0de6f10:	4478      	add	r0, pc
c0de6f12:	f04f 0c01 	mov.w	ip, #1
c0de6f16:	e003      	b.n	c0de6f20 <snprintf+0x184>
c0de6f18:	4864      	ldr	r0, [pc, #400]	@ (c0de70ac <snprintf+0x310>)
c0de6f1a:	f04f 0c00 	mov.w	ip, #0
c0de6f1e:	4478      	add	r0, pc
c0de6f20:	9b02      	ldr	r3, [sp, #8]
c0de6f22:	b2d2      	uxtb	r2, r2
c0de6f24:	1d1e      	adds	r6, r3, #4
c0de6f26:	9602      	str	r6, [sp, #8]
c0de6f28:	1e4e      	subs	r6, r1, #1
c0de6f2a:	6819      	ldr	r1, [r3, #0]
c0de6f2c:	2a02      	cmp	r2, #2
c0de6f2e:	f000 80a7 	beq.w	c0de7080 <snprintf+0x2e4>
c0de6f32:	2a01      	cmp	r2, #1
c0de6f34:	d007      	beq.n	c0de6f46 <snprintf+0x1aa>
c0de6f36:	463d      	mov	r5, r7
c0de6f38:	b92a      	cbnz	r2, c0de6f46 <snprintf+0x1aa>
c0de6f3a:	2200      	movs	r2, #0
c0de6f3c:	5c8b      	ldrb	r3, [r1, r2]
c0de6f3e:	3201      	adds	r2, #1
c0de6f40:	2b00      	cmp	r3, #0
c0de6f42:	d1fb      	bne.n	c0de6f3c <snprintf+0x1a0>
c0de6f44:	1e55      	subs	r5, r2, #1
c0de6f46:	f1bc 0f00 	cmp.w	ip, #0
c0de6f4a:	d016      	beq.n	c0de6f7a <snprintf+0x1de>
c0de6f4c:	2d00      	cmp	r5, #0
c0de6f4e:	f43f af3c 	beq.w	c0de6dca <snprintf+0x2e>
c0de6f52:	f1b8 0f02 	cmp.w	r8, #2
c0de6f56:	f0c0 80a3 	bcc.w	c0de70a0 <snprintf+0x304>
c0de6f5a:	780a      	ldrb	r2, [r1, #0]
c0de6f5c:	0913      	lsrs	r3, r2, #4
c0de6f5e:	f002 020f 	and.w	r2, r2, #15
c0de6f62:	5cc3      	ldrb	r3, [r0, r3]
c0de6f64:	f1b8 0802 	subs.w	r8, r8, #2
c0de6f68:	7023      	strb	r3, [r4, #0]
c0de6f6a:	5c82      	ldrb	r2, [r0, r2]
c0de6f6c:	7062      	strb	r2, [r4, #1]
c0de6f6e:	f000 8097 	beq.w	c0de70a0 <snprintf+0x304>
c0de6f72:	3101      	adds	r1, #1
c0de6f74:	3d01      	subs	r5, #1
c0de6f76:	3402      	adds	r4, #2
c0de6f78:	e7e8      	b.n	c0de6f4c <snprintf+0x1b0>
c0de6f7a:	4545      	cmp	r5, r8
c0de6f7c:	bf28      	it	cs
c0de6f7e:	4645      	movcs	r5, r8
c0de6f80:	4620      	mov	r0, r4
c0de6f82:	462a      	mov	r2, r5
c0de6f84:	f000 fba0 	bl	c0de76c8 <__aeabi_memmove>
c0de6f88:	ebb8 0805 	subs.w	r8, r8, r5
c0de6f8c:	f000 8088 	beq.w	c0de70a0 <snprintf+0x304>
c0de6f90:	462f      	mov	r7, r5
c0de6f92:	442c      	add	r4, r5
c0de6f94:	45bb      	cmp	fp, r7
c0de6f96:	f67f af18 	bls.w	c0de6dca <snprintf+0x2e>
c0de6f9a:	ebab 0507 	sub.w	r5, fp, r7
c0de6f9e:	4620      	mov	r0, r4
c0de6fa0:	4545      	cmp	r5, r8
c0de6fa2:	bf28      	it	cs
c0de6fa4:	4645      	movcs	r5, r8
c0de6fa6:	4629      	mov	r1, r5
c0de6fa8:	2220      	movs	r2, #32
c0de6faa:	f000 fb8f 	bl	c0de76cc <__aeabi_memset>
c0de6fae:	e061      	b.n	c0de7074 <snprintf+0x2d8>
c0de6fb0:	9a02      	ldr	r2, [sp, #8]
c0de6fb2:	9400      	str	r4, [sp, #0]
c0de6fb4:	2400      	movs	r4, #0
c0de6fb6:	f04f 0c00 	mov.w	ip, #0
c0de6fba:	1d13      	adds	r3, r2, #4
c0de6fbc:	9302      	str	r3, [sp, #8]
c0de6fbe:	230a      	movs	r3, #10
c0de6fc0:	6812      	ldr	r2, [r2, #0]
c0de6fc2:	483d      	ldr	r0, [pc, #244]	@ (c0de70b8 <snprintf+0x31c>)
c0de6fc4:	1e4e      	subs	r6, r1, #1
c0de6fc6:	f04f 0a01 	mov.w	sl, #1
c0de6fca:	4478      	add	r0, pc
c0de6fcc:	9001      	str	r0, [sp, #4]
c0de6fce:	fba3 570a 	umull	r5, r7, r3, sl
c0de6fd2:	2f00      	cmp	r7, #0
c0de6fd4:	bf18      	it	ne
c0de6fd6:	2701      	movne	r7, #1
c0de6fd8:	4295      	cmp	r5, r2
c0de6fda:	d804      	bhi.n	c0de6fe6 <snprintf+0x24a>
c0de6fdc:	b91f      	cbnz	r7, c0de6fe6 <snprintf+0x24a>
c0de6fde:	f1ab 0b01 	sub.w	fp, fp, #1
c0de6fe2:	46aa      	mov	sl, r5
c0de6fe4:	e7f3      	b.n	c0de6fce <snprintf+0x232>
c0de6fe6:	2c00      	cmp	r4, #0
c0de6fe8:	4627      	mov	r7, r4
c0de6fea:	f04f 0500 	mov.w	r5, #0
c0de6fee:	bf18      	it	ne
c0de6ff0:	f04f 37ff 	movne.w	r7, #4294967295	@ 0xffffffff
c0de6ff4:	d00d      	beq.n	c0de7012 <snprintf+0x276>
c0de6ff6:	4660      	mov	r0, ip
c0de6ff8:	fa5f fc8e 	uxtb.w	ip, lr
c0de6ffc:	a903      	add	r1, sp, #12
c0de6ffe:	f1bc 0f30 	cmp.w	ip, #48	@ 0x30
c0de7002:	4684      	mov	ip, r0
c0de7004:	d106      	bne.n	c0de7014 <snprintf+0x278>
c0de7006:	202d      	movs	r0, #45	@ 0x2d
c0de7008:	2400      	movs	r4, #0
c0de700a:	2501      	movs	r5, #1
c0de700c:	f88d 000c 	strb.w	r0, [sp, #12]
c0de7010:	e000      	b.n	c0de7014 <snprintf+0x278>
c0de7012:	a903      	add	r1, sp, #12
c0de7014:	eb07 000b 	add.w	r0, r7, fp
c0de7018:	3802      	subs	r0, #2
c0de701a:	280d      	cmp	r0, #13
c0de701c:	d808      	bhi.n	c0de7030 <snprintf+0x294>
c0de701e:	f1c7 0701 	rsb	r7, r7, #1
c0de7022:	45bb      	cmp	fp, r7
c0de7024:	d004      	beq.n	c0de7030 <snprintf+0x294>
c0de7026:	f801 e005 	strb.w	lr, [r1, r5]
c0de702a:	3701      	adds	r7, #1
c0de702c:	3501      	adds	r5, #1
c0de702e:	e7f8      	b.n	c0de7022 <snprintf+0x286>
c0de7030:	9f01      	ldr	r7, [sp, #4]
c0de7032:	b114      	cbz	r4, c0de703a <snprintf+0x29e>
c0de7034:	202d      	movs	r0, #45	@ 0x2d
c0de7036:	5548      	strb	r0, [r1, r5]
c0de7038:	3501      	adds	r5, #1
c0de703a:	4820      	ldr	r0, [pc, #128]	@ (c0de70bc <snprintf+0x320>)
c0de703c:	f1bc 0f00 	cmp.w	ip, #0
c0de7040:	4478      	add	r0, pc
c0de7042:	bf08      	it	eq
c0de7044:	4638      	moveq	r0, r7
c0de7046:	f1ba 0f00 	cmp.w	sl, #0
c0de704a:	d00b      	beq.n	c0de7064 <snprintf+0x2c8>
c0de704c:	fbb2 f7fa 	udiv	r7, r2, sl
c0de7050:	fbba faf3 	udiv	sl, sl, r3
c0de7054:	fbb7 f4f3 	udiv	r4, r7, r3
c0de7058:	fb04 7413 	mls	r4, r4, r3, r7
c0de705c:	5d04      	ldrb	r4, [r0, r4]
c0de705e:	554c      	strb	r4, [r1, r5]
c0de7060:	3501      	adds	r5, #1
c0de7062:	e7f0      	b.n	c0de7046 <snprintf+0x2aa>
c0de7064:	4545      	cmp	r5, r8
c0de7066:	bf28      	it	cs
c0de7068:	4645      	movcs	r5, r8
c0de706a:	9c00      	ldr	r4, [sp, #0]
c0de706c:	462a      	mov	r2, r5
c0de706e:	4620      	mov	r0, r4
c0de7070:	f000 fb2a 	bl	c0de76c8 <__aeabi_memmove>
c0de7074:	ebb8 0805 	subs.w	r8, r8, r5
c0de7078:	442c      	add	r4, r5
c0de707a:	f47f aea6 	bne.w	c0de6dca <snprintf+0x2e>
c0de707e:	e00f      	b.n	c0de70a0 <snprintf+0x304>
c0de7080:	7808      	ldrb	r0, [r1, #0]
c0de7082:	2800      	cmp	r0, #0
c0de7084:	f47f aea1 	bne.w	c0de6dca <snprintf+0x2e>
c0de7088:	4545      	cmp	r5, r8
c0de708a:	bf28      	it	cs
c0de708c:	4645      	movcs	r5, r8
c0de708e:	4620      	mov	r0, r4
c0de7090:	4629      	mov	r1, r5
c0de7092:	2220      	movs	r2, #32
c0de7094:	f000 fb1a 	bl	c0de76cc <__aeabi_memset>
c0de7098:	ebb8 0805 	subs.w	r8, r8, r5
c0de709c:	f47f af79 	bne.w	c0de6f92 <snprintf+0x1f6>
c0de70a0:	2000      	movs	r0, #0
c0de70a2:	b007      	add	sp, #28
c0de70a4:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de70a8:	b001      	add	sp, #4
c0de70aa:	4770      	bx	lr
c0de70ac:	00001c4a 	.word	0x00001c4a
c0de70b0:	00001cb4 	.word	0x00001cb4
c0de70b4:	00001c58 	.word	0x00001c58
c0de70b8:	00001b9e 	.word	0x00001b9e
c0de70bc:	00001b38 	.word	0x00001b38

c0de70c0 <pic>:
c0de70c0:	4a0a      	ldr	r2, [pc, #40]	@ (c0de70ec <pic+0x2c>)
c0de70c2:	4282      	cmp	r2, r0
c0de70c4:	490a      	ldr	r1, [pc, #40]	@ (c0de70f0 <pic+0x30>)
c0de70c6:	d806      	bhi.n	c0de70d6 <pic+0x16>
c0de70c8:	4281      	cmp	r1, r0
c0de70ca:	d304      	bcc.n	c0de70d6 <pic+0x16>
c0de70cc:	b580      	push	{r7, lr}
c0de70ce:	f000 f815 	bl	c0de70fc <pic_internal>
c0de70d2:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de70d6:	4907      	ldr	r1, [pc, #28]	@ (c0de70f4 <pic+0x34>)
c0de70d8:	4288      	cmp	r0, r1
c0de70da:	4a07      	ldr	r2, [pc, #28]	@ (c0de70f8 <pic+0x38>)
c0de70dc:	d304      	bcc.n	c0de70e8 <pic+0x28>
c0de70de:	4290      	cmp	r0, r2
c0de70e0:	d802      	bhi.n	c0de70e8 <pic+0x28>
c0de70e2:	1a40      	subs	r0, r0, r1
c0de70e4:	4649      	mov	r1, r9
c0de70e6:	4408      	add	r0, r1
c0de70e8:	4770      	bx	lr
c0de70ea:	0000      	movs	r0, r0
c0de70ec:	c0de0000 	.word	0xc0de0000
c0de70f0:	c0de8e3f 	.word	0xc0de8e3f
c0de70f4:	da7a0000 	.word	0xda7a0000
c0de70f8:	da7aa000 	.word	0xda7aa000

c0de70fc <pic_internal>:
c0de70fc:	467a      	mov	r2, pc
c0de70fe:	4902      	ldr	r1, [pc, #8]	@ (c0de7108 <pic_internal+0xc>)
c0de7100:	1cc9      	adds	r1, r1, #3
c0de7102:	1a89      	subs	r1, r1, r2
c0de7104:	1a40      	subs	r0, r0, r1
c0de7106:	4770      	bx	lr
c0de7108:	c0de70fd 	.word	0xc0de70fd

c0de710c <SVC_Call>:
c0de710c:	df01      	svc	1
c0de710e:	2900      	cmp	r1, #0
c0de7110:	d100      	bne.n	c0de7114 <exception>
c0de7112:	4770      	bx	lr

c0de7114 <exception>:
c0de7114:	4608      	mov	r0, r1
c0de7116:	f7ff fe2e 	bl	c0de6d76 <os_longjmp>
	...

c0de711c <SVC_cx_call>:
c0de711c:	df01      	svc	1
c0de711e:	4770      	bx	lr

c0de7120 <nvm_write>:
c0de7120:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7122:	ab01      	add	r3, sp, #4
c0de7124:	c307      	stmia	r3!, {r0, r1, r2}
c0de7126:	4802      	ldr	r0, [pc, #8]	@ (c0de7130 <nvm_write+0x10>)
c0de7128:	a901      	add	r1, sp, #4
c0de712a:	f7ff ffef 	bl	c0de710c <SVC_Call>
c0de712e:	bd8f      	pop	{r0, r1, r2, r3, r7, pc}
c0de7130:	03000003 	.word	0x03000003

c0de7134 <cx_bn_lock>:
c0de7134:	b5e0      	push	{r5, r6, r7, lr}
c0de7136:	e9cd 0100 	strd	r0, r1, [sp]
c0de713a:	4802      	ldr	r0, [pc, #8]	@ (c0de7144 <cx_bn_lock+0x10>)
c0de713c:	4669      	mov	r1, sp
c0de713e:	f7ff ffed 	bl	c0de711c <SVC_cx_call>
c0de7142:	bd8c      	pop	{r2, r3, r7, pc}
c0de7144:	02000112 	.word	0x02000112

c0de7148 <cx_bn_unlock>:
c0de7148:	b5e0      	push	{r5, r6, r7, lr}
c0de714a:	2000      	movs	r0, #0
c0de714c:	4669      	mov	r1, sp
c0de714e:	9001      	str	r0, [sp, #4]
c0de7150:	20b6      	movs	r0, #182	@ 0xb6
c0de7152:	f7ff ffe3 	bl	c0de711c <SVC_cx_call>
c0de7156:	bd8c      	pop	{r2, r3, r7, pc}

c0de7158 <cx_bn_alloc>:
c0de7158:	b5e0      	push	{r5, r6, r7, lr}
c0de715a:	e9cd 0100 	strd	r0, r1, [sp]
c0de715e:	4802      	ldr	r0, [pc, #8]	@ (c0de7168 <cx_bn_alloc+0x10>)
c0de7160:	4669      	mov	r1, sp
c0de7162:	f7ff ffdb 	bl	c0de711c <SVC_cx_call>
c0de7166:	bd8c      	pop	{r2, r3, r7, pc}
c0de7168:	02000113 	.word	0x02000113

c0de716c <cx_bn_alloc_init>:
c0de716c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de716e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7172:	4803      	ldr	r0, [pc, #12]	@ (c0de7180 <cx_bn_alloc_init+0x14>)
c0de7174:	4669      	mov	r1, sp
c0de7176:	f7ff ffd1 	bl	c0de711c <SVC_cx_call>
c0de717a:	b004      	add	sp, #16
c0de717c:	bd80      	pop	{r7, pc}
c0de717e:	bf00      	nop
c0de7180:	04000114 	.word	0x04000114

c0de7184 <cx_bn_destroy>:
c0de7184:	b5e0      	push	{r5, r6, r7, lr}
c0de7186:	f000 f9b5 	bl	c0de74f4 <OUTLINED_FUNCTION_0>
c0de718a:	4802      	ldr	r0, [pc, #8]	@ (c0de7194 <cx_bn_destroy+0x10>)
c0de718c:	4669      	mov	r1, sp
c0de718e:	f7ff ffc5 	bl	c0de711c <SVC_cx_call>
c0de7192:	bd8c      	pop	{r2, r3, r7, pc}
c0de7194:	010000bc 	.word	0x010000bc

c0de7198 <cx_bn_nbytes>:
c0de7198:	b5e0      	push	{r5, r6, r7, lr}
c0de719a:	e9cd 0100 	strd	r0, r1, [sp]
c0de719e:	4802      	ldr	r0, [pc, #8]	@ (c0de71a8 <cx_bn_nbytes+0x10>)
c0de71a0:	4669      	mov	r1, sp
c0de71a2:	f7ff ffbb 	bl	c0de711c <SVC_cx_call>
c0de71a6:	bd8c      	pop	{r2, r3, r7, pc}
c0de71a8:	0200010d 	.word	0x0200010d

c0de71ac <cx_bn_init>:
c0de71ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de71ae:	ab01      	add	r3, sp, #4
c0de71b0:	c307      	stmia	r3!, {r0, r1, r2}
c0de71b2:	4803      	ldr	r0, [pc, #12]	@ (c0de71c0 <cx_bn_init+0x14>)
c0de71b4:	a901      	add	r1, sp, #4
c0de71b6:	f7ff ffb1 	bl	c0de711c <SVC_cx_call>
c0de71ba:	b004      	add	sp, #16
c0de71bc:	bd80      	pop	{r7, pc}
c0de71be:	bf00      	nop
c0de71c0:	03000115 	.word	0x03000115

c0de71c4 <cx_bn_copy>:
c0de71c4:	b5e0      	push	{r5, r6, r7, lr}
c0de71c6:	e9cd 0100 	strd	r0, r1, [sp]
c0de71ca:	4802      	ldr	r0, [pc, #8]	@ (c0de71d4 <cx_bn_copy+0x10>)
c0de71cc:	4669      	mov	r1, sp
c0de71ce:	f7ff ffa5 	bl	c0de711c <SVC_cx_call>
c0de71d2:	bd8c      	pop	{r2, r3, r7, pc}
c0de71d4:	020000c0 	.word	0x020000c0

c0de71d8 <cx_bn_set_u32>:
c0de71d8:	b5e0      	push	{r5, r6, r7, lr}
c0de71da:	e9cd 0100 	strd	r0, r1, [sp]
c0de71de:	4802      	ldr	r0, [pc, #8]	@ (c0de71e8 <cx_bn_set_u32+0x10>)
c0de71e0:	4669      	mov	r1, sp
c0de71e2:	f7ff ff9b 	bl	c0de711c <SVC_cx_call>
c0de71e6:	bd8c      	pop	{r2, r3, r7, pc}
c0de71e8:	020000c1 	.word	0x020000c1

c0de71ec <cx_bn_export>:
c0de71ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de71ee:	ab01      	add	r3, sp, #4
c0de71f0:	c307      	stmia	r3!, {r0, r1, r2}
c0de71f2:	4803      	ldr	r0, [pc, #12]	@ (c0de7200 <cx_bn_export+0x14>)
c0de71f4:	a901      	add	r1, sp, #4
c0de71f6:	f7ff ff91 	bl	c0de711c <SVC_cx_call>
c0de71fa:	b004      	add	sp, #16
c0de71fc:	bd80      	pop	{r7, pc}
c0de71fe:	bf00      	nop
c0de7200:	030000c3 	.word	0x030000c3

c0de7204 <cx_bn_cmp>:
c0de7204:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7206:	ab01      	add	r3, sp, #4
c0de7208:	c307      	stmia	r3!, {r0, r1, r2}
c0de720a:	4803      	ldr	r0, [pc, #12]	@ (c0de7218 <cx_bn_cmp+0x14>)
c0de720c:	a901      	add	r1, sp, #4
c0de720e:	f7ff ff85 	bl	c0de711c <SVC_cx_call>
c0de7212:	b004      	add	sp, #16
c0de7214:	bd80      	pop	{r7, pc}
c0de7216:	bf00      	nop
c0de7218:	030000c4 	.word	0x030000c4

c0de721c <cx_bn_cmp_u32>:
c0de721c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de721e:	ab01      	add	r3, sp, #4
c0de7220:	c307      	stmia	r3!, {r0, r1, r2}
c0de7222:	4803      	ldr	r0, [pc, #12]	@ (c0de7230 <cx_bn_cmp_u32+0x14>)
c0de7224:	a901      	add	r1, sp, #4
c0de7226:	f7ff ff79 	bl	c0de711c <SVC_cx_call>
c0de722a:	b004      	add	sp, #16
c0de722c:	bd80      	pop	{r7, pc}
c0de722e:	bf00      	nop
c0de7230:	030000c5 	.word	0x030000c5

c0de7234 <cx_bn_tst_bit>:
c0de7234:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7236:	ab01      	add	r3, sp, #4
c0de7238:	c307      	stmia	r3!, {r0, r1, r2}
c0de723a:	4803      	ldr	r0, [pc, #12]	@ (c0de7248 <cx_bn_tst_bit+0x14>)
c0de723c:	a901      	add	r1, sp, #4
c0de723e:	f7ff ff6d 	bl	c0de711c <SVC_cx_call>
c0de7242:	b004      	add	sp, #16
c0de7244:	bd80      	pop	{r7, pc}
c0de7246:	bf00      	nop
c0de7248:	030000cb 	.word	0x030000cb

c0de724c <cx_bn_mod_add>:
c0de724c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de724e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7252:	4803      	ldr	r0, [pc, #12]	@ (c0de7260 <cx_bn_mod_add+0x14>)
c0de7254:	4669      	mov	r1, sp
c0de7256:	f7ff ff61 	bl	c0de711c <SVC_cx_call>
c0de725a:	b004      	add	sp, #16
c0de725c:	bd80      	pop	{r7, pc}
c0de725e:	bf00      	nop
c0de7260:	040000d3 	.word	0x040000d3

c0de7264 <cx_bn_mod_sub>:
c0de7264:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7266:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de726a:	4803      	ldr	r0, [pc, #12]	@ (c0de7278 <cx_bn_mod_sub+0x14>)
c0de726c:	4669      	mov	r1, sp
c0de726e:	f7ff ff55 	bl	c0de711c <SVC_cx_call>
c0de7272:	b004      	add	sp, #16
c0de7274:	bd80      	pop	{r7, pc}
c0de7276:	bf00      	nop
c0de7278:	040000d4 	.word	0x040000d4

c0de727c <cx_bn_mod_mul>:
c0de727c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de727e:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7282:	4803      	ldr	r0, [pc, #12]	@ (c0de7290 <cx_bn_mod_mul+0x14>)
c0de7284:	4669      	mov	r1, sp
c0de7286:	f7ff ff49 	bl	c0de711c <SVC_cx_call>
c0de728a:	b004      	add	sp, #16
c0de728c:	bd80      	pop	{r7, pc}
c0de728e:	bf00      	nop
c0de7290:	040000d5 	.word	0x040000d5

c0de7294 <cx_bn_reduce>:
c0de7294:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7296:	ab01      	add	r3, sp, #4
c0de7298:	c307      	stmia	r3!, {r0, r1, r2}
c0de729a:	4803      	ldr	r0, [pc, #12]	@ (c0de72a8 <cx_bn_reduce+0x14>)
c0de729c:	a901      	add	r1, sp, #4
c0de729e:	f7ff ff3d 	bl	c0de711c <SVC_cx_call>
c0de72a2:	b004      	add	sp, #16
c0de72a4:	bd80      	pop	{r7, pc}
c0de72a6:	bf00      	nop
c0de72a8:	030000d6 	.word	0x030000d6

c0de72ac <cx_bn_mod_invert_nprime>:
c0de72ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de72ae:	ab01      	add	r3, sp, #4
c0de72b0:	c307      	stmia	r3!, {r0, r1, r2}
c0de72b2:	4803      	ldr	r0, [pc, #12]	@ (c0de72c0 <cx_bn_mod_invert_nprime+0x14>)
c0de72b4:	a901      	add	r1, sp, #4
c0de72b6:	f7ff ff31 	bl	c0de711c <SVC_cx_call>
c0de72ba:	b004      	add	sp, #16
c0de72bc:	bd80      	pop	{r7, pc}
c0de72be:	bf00      	nop
c0de72c0:	030000da 	.word	0x030000da

c0de72c4 <cx_bn_is_prime>:
c0de72c4:	b5e0      	push	{r5, r6, r7, lr}
c0de72c6:	e9cd 0100 	strd	r0, r1, [sp]
c0de72ca:	4802      	ldr	r0, [pc, #8]	@ (c0de72d4 <cx_bn_is_prime+0x10>)
c0de72cc:	4669      	mov	r1, sp
c0de72ce:	f7ff ff25 	bl	c0de711c <SVC_cx_call>
c0de72d2:	bd8c      	pop	{r2, r3, r7, pc}
c0de72d4:	020000ef 	.word	0x020000ef

c0de72d8 <cx_mont_alloc>:
c0de72d8:	b5e0      	push	{r5, r6, r7, lr}
c0de72da:	e9cd 0100 	strd	r0, r1, [sp]
c0de72de:	4802      	ldr	r0, [pc, #8]	@ (c0de72e8 <cx_mont_alloc+0x10>)
c0de72e0:	4669      	mov	r1, sp
c0de72e2:	f7ff ff1b 	bl	c0de711c <SVC_cx_call>
c0de72e6:	bd8c      	pop	{r2, r3, r7, pc}
c0de72e8:	020000dc 	.word	0x020000dc

c0de72ec <cx_mont_init>:
c0de72ec:	b5e0      	push	{r5, r6, r7, lr}
c0de72ee:	e9cd 0100 	strd	r0, r1, [sp]
c0de72f2:	4802      	ldr	r0, [pc, #8]	@ (c0de72fc <cx_mont_init+0x10>)
c0de72f4:	4669      	mov	r1, sp
c0de72f6:	f7ff ff11 	bl	c0de711c <SVC_cx_call>
c0de72fa:	bd8c      	pop	{r2, r3, r7, pc}
c0de72fc:	020000dd 	.word	0x020000dd

c0de7300 <cx_mont_to_montgomery>:
c0de7300:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7302:	ab01      	add	r3, sp, #4
c0de7304:	c307      	stmia	r3!, {r0, r1, r2}
c0de7306:	4803      	ldr	r0, [pc, #12]	@ (c0de7314 <cx_mont_to_montgomery+0x14>)
c0de7308:	a901      	add	r1, sp, #4
c0de730a:	f7ff ff07 	bl	c0de711c <SVC_cx_call>
c0de730e:	b004      	add	sp, #16
c0de7310:	bd80      	pop	{r7, pc}
c0de7312:	bf00      	nop
c0de7314:	030000df 	.word	0x030000df

c0de7318 <cx_mont_from_montgomery>:
c0de7318:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de731a:	ab01      	add	r3, sp, #4
c0de731c:	c307      	stmia	r3!, {r0, r1, r2}
c0de731e:	4803      	ldr	r0, [pc, #12]	@ (c0de732c <cx_mont_from_montgomery+0x14>)
c0de7320:	a901      	add	r1, sp, #4
c0de7322:	f7ff fefb 	bl	c0de711c <SVC_cx_call>
c0de7326:	b004      	add	sp, #16
c0de7328:	bd80      	pop	{r7, pc}
c0de732a:	bf00      	nop
c0de732c:	030000e0 	.word	0x030000e0

c0de7330 <cx_mont_mul>:
c0de7330:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7332:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de7336:	4803      	ldr	r0, [pc, #12]	@ (c0de7344 <cx_mont_mul+0x14>)
c0de7338:	4669      	mov	r1, sp
c0de733a:	f7ff feef 	bl	c0de711c <SVC_cx_call>
c0de733e:	b004      	add	sp, #16
c0de7340:	bd80      	pop	{r7, pc}
c0de7342:	bf00      	nop
c0de7344:	040000e1 	.word	0x040000e1

c0de7348 <cx_mont_pow>:
c0de7348:	b510      	push	{r4, lr}
c0de734a:	b086      	sub	sp, #24
c0de734c:	f10d 0c04 	add.w	ip, sp, #4
c0de7350:	9c08      	ldr	r4, [sp, #32]
c0de7352:	e8ac 001f 	stmia.w	ip!, {r0, r1, r2, r3, r4}
c0de7356:	4803      	ldr	r0, [pc, #12]	@ (c0de7364 <cx_mont_pow+0x1c>)
c0de7358:	a901      	add	r1, sp, #4
c0de735a:	f7ff fedf 	bl	c0de711c <SVC_cx_call>
c0de735e:	b006      	add	sp, #24
c0de7360:	bd10      	pop	{r4, pc}
c0de7362:	bf00      	nop
c0de7364:	050000e2 	.word	0x050000e2

c0de7368 <cx_mont_invert_nprime>:
c0de7368:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de736a:	ab01      	add	r3, sp, #4
c0de736c:	c307      	stmia	r3!, {r0, r1, r2}
c0de736e:	4803      	ldr	r0, [pc, #12]	@ (c0de737c <cx_mont_invert_nprime+0x14>)
c0de7370:	a901      	add	r1, sp, #4
c0de7372:	f7ff fed3 	bl	c0de711c <SVC_cx_call>
c0de7376:	b004      	add	sp, #16
c0de7378:	bd80      	pop	{r7, pc}
c0de737a:	bf00      	nop
c0de737c:	030000e4 	.word	0x030000e4

c0de7380 <cx_ecdomain_parameters_length>:
c0de7380:	b5e0      	push	{r5, r6, r7, lr}
c0de7382:	e9cd 0100 	strd	r0, r1, [sp]
c0de7386:	4802      	ldr	r0, [pc, #8]	@ (c0de7390 <cx_ecdomain_parameters_length+0x10>)
c0de7388:	4669      	mov	r1, sp
c0de738a:	f7ff fec7 	bl	c0de711c <SVC_cx_call>
c0de738e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7390:	0200012f 	.word	0x0200012f

c0de7394 <os_perso_derive_node_with_seed_key>:
c0de7394:	b510      	push	{r4, lr}
c0de7396:	b088      	sub	sp, #32
c0de7398:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
c0de739a:	9407      	str	r4, [sp, #28]
c0de739c:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
c0de739e:	9406      	str	r4, [sp, #24]
c0de73a0:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
c0de73a2:	9405      	str	r4, [sp, #20]
c0de73a4:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
c0de73a6:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de73aa:	4803      	ldr	r0, [pc, #12]	@ (c0de73b8 <os_perso_derive_node_with_seed_key+0x24>)
c0de73ac:	4669      	mov	r1, sp
c0de73ae:	f7ff fead 	bl	c0de710c <SVC_Call>
c0de73b2:	b008      	add	sp, #32
c0de73b4:	bd10      	pop	{r4, pc}
c0de73b6:	bf00      	nop
c0de73b8:	080000a6 	.word	0x080000a6

c0de73bc <os_pki_load_certificate>:
c0de73bc:	b510      	push	{r4, lr}
c0de73be:	b086      	sub	sp, #24
c0de73c0:	9c09      	ldr	r4, [sp, #36]	@ 0x24
c0de73c2:	9405      	str	r4, [sp, #20]
c0de73c4:	9c08      	ldr	r4, [sp, #32]
c0de73c6:	e88d 001f 	stmia.w	sp, {r0, r1, r2, r3, r4}
c0de73ca:	4803      	ldr	r0, [pc, #12]	@ (c0de73d8 <os_pki_load_certificate+0x1c>)
c0de73cc:	4669      	mov	r1, sp
c0de73ce:	f7ff fe9d 	bl	c0de710c <SVC_Call>
c0de73d2:	b006      	add	sp, #24
c0de73d4:	bd10      	pop	{r4, pc}
c0de73d6:	bf00      	nop
c0de73d8:	060000aa 	.word	0x060000aa

c0de73dc <os_perso_is_pin_set>:
c0de73dc:	b5e0      	push	{r5, r6, r7, lr}
c0de73de:	2000      	movs	r0, #0
c0de73e0:	4669      	mov	r1, sp
c0de73e2:	9001      	str	r0, [sp, #4]
c0de73e4:	209e      	movs	r0, #158	@ 0x9e
c0de73e6:	f7ff fe91 	bl	c0de710c <SVC_Call>
c0de73ea:	b2c0      	uxtb	r0, r0
c0de73ec:	bd8c      	pop	{r2, r3, r7, pc}

c0de73ee <os_global_pin_is_validated>:
c0de73ee:	b5e0      	push	{r5, r6, r7, lr}
c0de73f0:	2000      	movs	r0, #0
c0de73f2:	4669      	mov	r1, sp
c0de73f4:	9001      	str	r0, [sp, #4]
c0de73f6:	20a0      	movs	r0, #160	@ 0xa0
c0de73f8:	f7ff fe88 	bl	c0de710c <SVC_Call>
c0de73fc:	b2c0      	uxtb	r0, r0
c0de73fe:	bd8c      	pop	{r2, r3, r7, pc}

c0de7400 <os_ux>:
c0de7400:	b5e0      	push	{r5, r6, r7, lr}
c0de7402:	f000 f877 	bl	c0de74f4 <OUTLINED_FUNCTION_0>
c0de7406:	4802      	ldr	r0, [pc, #8]	@ (c0de7410 <os_ux+0x10>)
c0de7408:	4669      	mov	r1, sp
c0de740a:	f7ff fe7f 	bl	c0de710c <SVC_Call>
c0de740e:	bd8c      	pop	{r2, r3, r7, pc}
c0de7410:	01000064 	.word	0x01000064

c0de7414 <os_lib_end>:
c0de7414:	b082      	sub	sp, #8
c0de7416:	2000      	movs	r0, #0
c0de7418:	4669      	mov	r1, sp
c0de741a:	9001      	str	r0, [sp, #4]
c0de741c:	2068      	movs	r0, #104	@ 0x68
c0de741e:	f7ff fe75 	bl	c0de710c <SVC_Call>
c0de7422:	deff      	udf	#255	@ 0xff

c0de7424 <os_flags>:
c0de7424:	b5e0      	push	{r5, r6, r7, lr}
c0de7426:	2000      	movs	r0, #0
c0de7428:	4669      	mov	r1, sp
c0de742a:	9001      	str	r0, [sp, #4]
c0de742c:	206a      	movs	r0, #106	@ 0x6a
c0de742e:	f7ff fe6d 	bl	c0de710c <SVC_Call>
c0de7432:	bd8c      	pop	{r2, r3, r7, pc}

c0de7434 <os_registry_get_current_app_tag>:
c0de7434:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de7436:	ab01      	add	r3, sp, #4
c0de7438:	c307      	stmia	r3!, {r0, r1, r2}
c0de743a:	4803      	ldr	r0, [pc, #12]	@ (c0de7448 <os_registry_get_current_app_tag+0x14>)
c0de743c:	a901      	add	r1, sp, #4
c0de743e:	f7ff fe65 	bl	c0de710c <SVC_Call>
c0de7442:	b004      	add	sp, #16
c0de7444:	bd80      	pop	{r7, pc}
c0de7446:	bf00      	nop
c0de7448:	03000074 	.word	0x03000074

c0de744c <os_sched_exit>:
c0de744c:	b082      	sub	sp, #8
c0de744e:	f000 f851 	bl	c0de74f4 <OUTLINED_FUNCTION_0>
c0de7452:	4802      	ldr	r0, [pc, #8]	@ (c0de745c <os_sched_exit+0x10>)
c0de7454:	4669      	mov	r1, sp
c0de7456:	f7ff fe59 	bl	c0de710c <SVC_Call>
c0de745a:	deff      	udf	#255	@ 0xff
c0de745c:	0100009a 	.word	0x0100009a

c0de7460 <os_io_init>:
c0de7460:	b5e0      	push	{r5, r6, r7, lr}
c0de7462:	9001      	str	r0, [sp, #4]
c0de7464:	4802      	ldr	r0, [pc, #8]	@ (c0de7470 <os_io_init+0x10>)
c0de7466:	a901      	add	r1, sp, #4
c0de7468:	f7ff fe50 	bl	c0de710c <SVC_Call>
c0de746c:	bd8c      	pop	{r2, r3, r7, pc}
c0de746e:	bf00      	nop
c0de7470:	01000084 	.word	0x01000084

c0de7474 <os_io_start>:
c0de7474:	b5e0      	push	{r5, r6, r7, lr}
c0de7476:	2000      	movs	r0, #0
c0de7478:	4669      	mov	r1, sp
c0de747a:	9001      	str	r0, [sp, #4]
c0de747c:	4801      	ldr	r0, [pc, #4]	@ (c0de7484 <os_io_start+0x10>)
c0de747e:	f7ff fe45 	bl	c0de710c <SVC_Call>
c0de7482:	bd8c      	pop	{r2, r3, r7, pc}
c0de7484:	01000085 	.word	0x01000085

c0de7488 <os_io_tx_cmd>:
c0de7488:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de748a:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de748e:	4803      	ldr	r0, [pc, #12]	@ (c0de749c <os_io_tx_cmd+0x14>)
c0de7490:	4669      	mov	r1, sp
c0de7492:	f7ff fe3b 	bl	c0de710c <SVC_Call>
c0de7496:	b004      	add	sp, #16
c0de7498:	bd80      	pop	{r7, pc}
c0de749a:	bf00      	nop
c0de749c:	04000088 	.word	0x04000088

c0de74a0 <os_io_rx_evt>:
c0de74a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
c0de74a2:	e88d 000f 	stmia.w	sp, {r0, r1, r2, r3}
c0de74a6:	4803      	ldr	r0, [pc, #12]	@ (c0de74b4 <os_io_rx_evt+0x14>)
c0de74a8:	4669      	mov	r1, sp
c0de74aa:	f7ff fe2f 	bl	c0de710c <SVC_Call>
c0de74ae:	b004      	add	sp, #16
c0de74b0:	bd80      	pop	{r7, pc}
c0de74b2:	bf00      	nop
c0de74b4:	03000089 	.word	0x03000089

c0de74b8 <try_context_get>:
c0de74b8:	b5e0      	push	{r5, r6, r7, lr}
c0de74ba:	2000      	movs	r0, #0
c0de74bc:	4669      	mov	r1, sp
c0de74be:	9001      	str	r0, [sp, #4]
c0de74c0:	2087      	movs	r0, #135	@ 0x87
c0de74c2:	f7ff fe23 	bl	c0de710c <SVC_Call>
c0de74c6:	bd8c      	pop	{r2, r3, r7, pc}

c0de74c8 <try_context_set>:
c0de74c8:	b5e0      	push	{r5, r6, r7, lr}
c0de74ca:	f000 f813 	bl	c0de74f4 <OUTLINED_FUNCTION_0>
c0de74ce:	4802      	ldr	r0, [pc, #8]	@ (c0de74d8 <try_context_set+0x10>)
c0de74d0:	4669      	mov	r1, sp
c0de74d2:	f7ff fe1b 	bl	c0de710c <SVC_Call>
c0de74d6:	bd8c      	pop	{r2, r3, r7, pc}
c0de74d8:	0100010b 	.word	0x0100010b

c0de74dc <os_sched_last_status>:
c0de74dc:	b5e0      	push	{r5, r6, r7, lr}
c0de74de:	f000 f809 	bl	c0de74f4 <OUTLINED_FUNCTION_0>
c0de74e2:	4803      	ldr	r0, [pc, #12]	@ (c0de74f0 <os_sched_last_status+0x14>)
c0de74e4:	4669      	mov	r1, sp
c0de74e6:	f7ff fe11 	bl	c0de710c <SVC_Call>
c0de74ea:	b2c0      	uxtb	r0, r0
c0de74ec:	bd8c      	pop	{r2, r3, r7, pc}
c0de74ee:	bf00      	nop
c0de74f0:	0100009c 	.word	0x0100009c

c0de74f4 <OUTLINED_FUNCTION_0>:
c0de74f4:	2100      	movs	r1, #0
c0de74f6:	e9cd 0100 	strd	r0, r1, [sp]
c0de74fa:	4770      	bx	lr

c0de74fc <__udivmoddi4>:
c0de74fc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7500:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de7504:	4604      	mov	r4, r0
c0de7506:	b179      	cbz	r1, c0de7528 <__udivmoddi4+0x2c>
c0de7508:	b1ba      	cbz	r2, c0de753a <__udivmoddi4+0x3e>
c0de750a:	b35b      	cbz	r3, c0de7564 <__udivmoddi4+0x68>
c0de750c:	fab1 f581 	clz	r5, r1
c0de7510:	fab3 f683 	clz	r6, r3
c0de7514:	1b75      	subs	r5, r6, r5
c0de7516:	2d20      	cmp	r5, #32
c0de7518:	d34a      	bcc.n	c0de75b0 <__udivmoddi4+0xb4>
c0de751a:	f1bc 0f00 	cmp.w	ip, #0
c0de751e:	bf18      	it	ne
c0de7520:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7524:	2400      	movs	r4, #0
c0de7526:	e066      	b.n	c0de75f6 <__udivmoddi4+0xfa>
c0de7528:	b3cb      	cbz	r3, c0de759e <__udivmoddi4+0xa2>
c0de752a:	2100      	movs	r1, #0
c0de752c:	f1bc 0f00 	cmp.w	ip, #0
c0de7530:	bf18      	it	ne
c0de7532:	e9cc 4100 	strdne	r4, r1, [ip]
c0de7536:	2400      	movs	r4, #0
c0de7538:	e0a6      	b.n	c0de7688 <__udivmoddi4+0x18c>
c0de753a:	2b00      	cmp	r3, #0
c0de753c:	d03e      	beq.n	c0de75bc <__udivmoddi4+0xc0>
c0de753e:	2800      	cmp	r0, #0
c0de7540:	d04f      	beq.n	c0de75e2 <__udivmoddi4+0xe6>
c0de7542:	1e5d      	subs	r5, r3, #1
c0de7544:	422b      	tst	r3, r5
c0de7546:	d158      	bne.n	c0de75fa <__udivmoddi4+0xfe>
c0de7548:	f1bc 0f00 	cmp.w	ip, #0
c0de754c:	bf1c      	itt	ne
c0de754e:	ea05 0001 	andne.w	r0, r5, r1
c0de7552:	e9cc 4000 	strdne	r4, r0, [ip]
c0de7556:	fa93 f0a3 	rbit	r0, r3
c0de755a:	fab0 f080 	clz	r0, r0
c0de755e:	fa21 f400 	lsr.w	r4, r1, r0
c0de7562:	e048      	b.n	c0de75f6 <__udivmoddi4+0xfa>
c0de7564:	1e55      	subs	r5, r2, #1
c0de7566:	422a      	tst	r2, r5
c0de7568:	d129      	bne.n	c0de75be <__udivmoddi4+0xc2>
c0de756a:	f1bc 0f00 	cmp.w	ip, #0
c0de756e:	bf1e      	ittt	ne
c0de7570:	2300      	movne	r3, #0
c0de7572:	4005      	andne	r5, r0
c0de7574:	e9cc 5300 	strdne	r5, r3, [ip]
c0de7578:	2a01      	cmp	r2, #1
c0de757a:	f000 8085 	beq.w	c0de7688 <__udivmoddi4+0x18c>
c0de757e:	fa92 f2a2 	rbit	r2, r2
c0de7582:	004c      	lsls	r4, r1, #1
c0de7584:	fab2 f282 	clz	r2, r2
c0de7588:	f002 031f 	and.w	r3, r2, #31
c0de758c:	40d1      	lsrs	r1, r2
c0de758e:	40d8      	lsrs	r0, r3
c0de7590:	231f      	movs	r3, #31
c0de7592:	4393      	bics	r3, r2
c0de7594:	fa04 f303 	lsl.w	r3, r4, r3
c0de7598:	ea43 0400 	orr.w	r4, r3, r0
c0de759c:	e074      	b.n	c0de7688 <__udivmoddi4+0x18c>
c0de759e:	fbb0 f4f2 	udiv	r4, r0, r2
c0de75a2:	f1bc 0f00 	cmp.w	ip, #0
c0de75a6:	d026      	beq.n	c0de75f6 <__udivmoddi4+0xfa>
c0de75a8:	fb04 0012 	mls	r0, r4, r2, r0
c0de75ac:	2100      	movs	r1, #0
c0de75ae:	e020      	b.n	c0de75f2 <__udivmoddi4+0xf6>
c0de75b0:	f105 0e01 	add.w	lr, r5, #1
c0de75b4:	f1be 0f20 	cmp.w	lr, #32
c0de75b8:	d00b      	beq.n	c0de75d2 <__udivmoddi4+0xd6>
c0de75ba:	e028      	b.n	c0de760e <__udivmoddi4+0x112>
c0de75bc:	e064      	b.n	c0de7688 <__udivmoddi4+0x18c>
c0de75be:	fab1 f481 	clz	r4, r1
c0de75c2:	fab2 f582 	clz	r5, r2
c0de75c6:	1b2c      	subs	r4, r5, r4
c0de75c8:	f104 0e21 	add.w	lr, r4, #33	@ 0x21
c0de75cc:	f1be 0f20 	cmp.w	lr, #32
c0de75d0:	d15d      	bne.n	c0de768e <__udivmoddi4+0x192>
c0de75d2:	f04f 0e20 	mov.w	lr, #32
c0de75d6:	f04f 0a00 	mov.w	sl, #0
c0de75da:	f04f 0b00 	mov.w	fp, #0
c0de75de:	460e      	mov	r6, r1
c0de75e0:	e021      	b.n	c0de7626 <__udivmoddi4+0x12a>
c0de75e2:	fbb1 f4f3 	udiv	r4, r1, r3
c0de75e6:	f1bc 0f00 	cmp.w	ip, #0
c0de75ea:	d004      	beq.n	c0de75f6 <__udivmoddi4+0xfa>
c0de75ec:	2000      	movs	r0, #0
c0de75ee:	fb04 1113 	mls	r1, r4, r3, r1
c0de75f2:	e9cc 0100 	strd	r0, r1, [ip]
c0de75f6:	2100      	movs	r1, #0
c0de75f8:	e046      	b.n	c0de7688 <__udivmoddi4+0x18c>
c0de75fa:	fab1 f581 	clz	r5, r1
c0de75fe:	fab3 f683 	clz	r6, r3
c0de7602:	1b75      	subs	r5, r6, r5
c0de7604:	2d1f      	cmp	r5, #31
c0de7606:	f4bf af88 	bcs.w	c0de751a <__udivmoddi4+0x1e>
c0de760a:	f105 0e01 	add.w	lr, r5, #1
c0de760e:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7612:	f1c5 051f 	rsb	r5, r5, #31
c0de7616:	fa01 f605 	lsl.w	r6, r1, r5
c0de761a:	fa21 fb0e 	lsr.w	fp, r1, lr
c0de761e:	40a8      	lsls	r0, r5
c0de7620:	f04f 0a00 	mov.w	sl, #0
c0de7624:	4326      	orrs	r6, r4
c0de7626:	f04f 0800 	mov.w	r8, #0
c0de762a:	f1be 0f00 	cmp.w	lr, #0
c0de762e:	d01c      	beq.n	c0de766a <__udivmoddi4+0x16e>
c0de7630:	ea4f 014b 	mov.w	r1, fp, lsl #1
c0de7634:	f1ae 0e01 	sub.w	lr, lr, #1
c0de7638:	ea41 71d6 	orr.w	r1, r1, r6, lsr #31
c0de763c:	0076      	lsls	r6, r6, #1
c0de763e:	ea46 75d0 	orr.w	r5, r6, r0, lsr #31
c0de7642:	1aae      	subs	r6, r5, r2
c0de7644:	eb61 0b03 	sbc.w	fp, r1, r3
c0de7648:	43cf      	mvns	r7, r1
c0de764a:	43ec      	mvns	r4, r5
c0de764c:	18a4      	adds	r4, r4, r2
c0de764e:	eb57 0403 	adcs.w	r4, r7, r3
c0de7652:	bf5c      	itt	pl
c0de7654:	468b      	movpl	fp, r1
c0de7656:	462e      	movpl	r6, r5
c0de7658:	0040      	lsls	r0, r0, #1
c0de765a:	0fe1      	lsrs	r1, r4, #31
c0de765c:	ea48 044a 	orr.w	r4, r8, sl, lsl #1
c0de7660:	ea40 70da 	orr.w	r0, r0, sl, lsr #31
c0de7664:	46a2      	mov	sl, r4
c0de7666:	4688      	mov	r8, r1
c0de7668:	e7df      	b.n	c0de762a <__udivmoddi4+0x12e>
c0de766a:	ea4f 71da 	mov.w	r1, sl, lsr #31
c0de766e:	f1bc 0f00 	cmp.w	ip, #0
c0de7672:	bf18      	it	ne
c0de7674:	e9cc 6b00 	strdne	r6, fp, [ip]
c0de7678:	ea41 0140 	orr.w	r1, r1, r0, lsl #1
c0de767c:	ea4f 004a 	mov.w	r0, sl, lsl #1
c0de7680:	f020 0001 	bic.w	r0, r0, #1
c0de7684:	ea40 0408 	orr.w	r4, r0, r8
c0de7688:	4620      	mov	r0, r4
c0de768a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de768e:	f1be 0f1f 	cmp.w	lr, #31
c0de7692:	d804      	bhi.n	c0de769e <__udivmoddi4+0x1a2>
c0de7694:	fa20 f40e 	lsr.w	r4, r0, lr
c0de7698:	f1ce 0520 	rsb	r5, lr, #32
c0de769c:	e7bb      	b.n	c0de7616 <__udivmoddi4+0x11a>
c0de769e:	f1ce 0740 	rsb	r7, lr, #64	@ 0x40
c0de76a2:	f1ae 0420 	sub.w	r4, lr, #32
c0de76a6:	f04f 0b00 	mov.w	fp, #0
c0de76aa:	fa20 f504 	lsr.w	r5, r0, r4
c0de76ae:	fa01 f607 	lsl.w	r6, r1, r7
c0de76b2:	fa00 fa07 	lsl.w	sl, r0, r7
c0de76b6:	ea46 0805 	orr.w	r8, r6, r5
c0de76ba:	fa21 f604 	lsr.w	r6, r1, r4
c0de76be:	4640      	mov	r0, r8
c0de76c0:	e7b1      	b.n	c0de7626 <__udivmoddi4+0x12a>
	...

c0de76c4 <__aeabi_memcpy>:
c0de76c4:	f000 b81c 	b.w	c0de7700 <memcpy>

c0de76c8 <__aeabi_memmove>:
c0de76c8:	f000 b828 	b.w	c0de771c <memmove>

c0de76cc <__aeabi_memset>:
c0de76cc:	460b      	mov	r3, r1
c0de76ce:	4611      	mov	r1, r2
c0de76d0:	461a      	mov	r2, r3
c0de76d2:	f000 b83d 	b.w	c0de7750 <memset>
c0de76d6:	bf00      	nop

c0de76d8 <__aeabi_memclr>:
c0de76d8:	460a      	mov	r2, r1
c0de76da:	2100      	movs	r1, #0
c0de76dc:	f000 b838 	b.w	c0de7750 <memset>

c0de76e0 <__aeabi_uldivmod>:
c0de76e0:	b540      	push	{r6, lr}
c0de76e2:	b084      	sub	sp, #16
c0de76e4:	ae02      	add	r6, sp, #8
c0de76e6:	9600      	str	r6, [sp, #0]
c0de76e8:	f7ff ff08 	bl	c0de74fc <__udivmoddi4>
c0de76ec:	9a02      	ldr	r2, [sp, #8]
c0de76ee:	9b03      	ldr	r3, [sp, #12]
c0de76f0:	b004      	add	sp, #16
c0de76f2:	bd40      	pop	{r6, pc}

c0de76f4 <explicit_bzero>:
c0de76f4:	f000 b800 	b.w	c0de76f8 <bzero>

c0de76f8 <bzero>:
c0de76f8:	460a      	mov	r2, r1
c0de76fa:	2100      	movs	r1, #0
c0de76fc:	f000 b828 	b.w	c0de7750 <memset>

c0de7700 <memcpy>:
c0de7700:	440a      	add	r2, r1
c0de7702:	4291      	cmp	r1, r2
c0de7704:	f100 33ff 	add.w	r3, r0, #4294967295	@ 0xffffffff
c0de7708:	d100      	bne.n	c0de770c <memcpy+0xc>
c0de770a:	4770      	bx	lr
c0de770c:	b510      	push	{r4, lr}
c0de770e:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de7712:	4291      	cmp	r1, r2
c0de7714:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de7718:	d1f9      	bne.n	c0de770e <memcpy+0xe>
c0de771a:	bd10      	pop	{r4, pc}

c0de771c <memmove>:
c0de771c:	4288      	cmp	r0, r1
c0de771e:	b510      	push	{r4, lr}
c0de7720:	eb01 0402 	add.w	r4, r1, r2
c0de7724:	d902      	bls.n	c0de772c <memmove+0x10>
c0de7726:	4284      	cmp	r4, r0
c0de7728:	4623      	mov	r3, r4
c0de772a:	d807      	bhi.n	c0de773c <memmove+0x20>
c0de772c:	1e43      	subs	r3, r0, #1
c0de772e:	42a1      	cmp	r1, r4
c0de7730:	d008      	beq.n	c0de7744 <memmove+0x28>
c0de7732:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de7736:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de773a:	e7f8      	b.n	c0de772e <memmove+0x12>
c0de773c:	4601      	mov	r1, r0
c0de773e:	4402      	add	r2, r0
c0de7740:	428a      	cmp	r2, r1
c0de7742:	d100      	bne.n	c0de7746 <memmove+0x2a>
c0de7744:	bd10      	pop	{r4, pc}
c0de7746:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de774a:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de774e:	e7f7      	b.n	c0de7740 <memmove+0x24>

c0de7750 <memset>:
c0de7750:	4603      	mov	r3, r0
c0de7752:	4402      	add	r2, r0
c0de7754:	4293      	cmp	r3, r2
c0de7756:	d100      	bne.n	c0de775a <memset+0xa>
c0de7758:	4770      	bx	lr
c0de775a:	f803 1b01 	strb.w	r1, [r3], #1
c0de775e:	e7f9      	b.n	c0de7754 <memset+0x4>

c0de7760 <setjmp>:
c0de7760:	46ec      	mov	ip, sp
c0de7762:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7766:	f04f 0000 	mov.w	r0, #0
c0de776a:	4770      	bx	lr

c0de776c <longjmp>:
c0de776c:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de7770:	46e5      	mov	sp, ip
c0de7772:	0008      	movs	r0, r1
c0de7774:	bf08      	it	eq
c0de7776:	2001      	moveq	r0, #1
c0de7778:	4770      	bx	lr
c0de777a:	bf00      	nop

c0de777c <strcmp>:
c0de777c:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de7780:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de7784:	2a01      	cmp	r2, #1
c0de7786:	bf28      	it	cs
c0de7788:	429a      	cmpcs	r2, r3
c0de778a:	d0f7      	beq.n	c0de777c <strcmp>
c0de778c:	1ad0      	subs	r0, r2, r3
c0de778e:	4770      	bx	lr

c0de7790 <strlen>:
c0de7790:	4603      	mov	r3, r0
c0de7792:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de7796:	2a00      	cmp	r2, #0
c0de7798:	d1fb      	bne.n	c0de7792 <strlen+0x2>
c0de779a:	1a18      	subs	r0, r3, r0
c0de779c:	3801      	subs	r0, #1
c0de779e:	4770      	bx	lr

c0de77a0 <strncmp>:
c0de77a0:	b510      	push	{r4, lr}
c0de77a2:	b16a      	cbz	r2, c0de77c0 <strncmp+0x20>
c0de77a4:	3901      	subs	r1, #1
c0de77a6:	1884      	adds	r4, r0, r2
c0de77a8:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de77ac:	f811 3f01 	ldrb.w	r3, [r1, #1]!
c0de77b0:	429a      	cmp	r2, r3
c0de77b2:	d103      	bne.n	c0de77bc <strncmp+0x1c>
c0de77b4:	42a0      	cmp	r0, r4
c0de77b6:	d001      	beq.n	c0de77bc <strncmp+0x1c>
c0de77b8:	2a00      	cmp	r2, #0
c0de77ba:	d1f5      	bne.n	c0de77a8 <strncmp+0x8>
c0de77bc:	1ad0      	subs	r0, r2, r3
c0de77be:	bd10      	pop	{r4, pc}
c0de77c0:	4610      	mov	r0, r2
c0de77c2:	e7fc      	b.n	c0de77be <strncmp+0x1e>

c0de77c4 <strncpy>:
c0de77c4:	4603      	mov	r3, r0
c0de77c6:	b510      	push	{r4, lr}
c0de77c8:	3901      	subs	r1, #1
c0de77ca:	b132      	cbz	r2, c0de77da <strncpy+0x16>
c0de77cc:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de77d0:	3a01      	subs	r2, #1
c0de77d2:	f803 4b01 	strb.w	r4, [r3], #1
c0de77d6:	2c00      	cmp	r4, #0
c0de77d8:	d1f7      	bne.n	c0de77ca <strncpy+0x6>
c0de77da:	2100      	movs	r1, #0
c0de77dc:	441a      	add	r2, r3
c0de77de:	4293      	cmp	r3, r2
c0de77e0:	d100      	bne.n	c0de77e4 <strncpy+0x20>
c0de77e2:	bd10      	pop	{r4, pc}
c0de77e4:	f803 1b01 	strb.w	r1, [r3], #1
c0de77e8:	e7f9      	b.n	c0de77de <strncpy+0x1a>

c0de77ea <C_home_boilerplate_14px_bitmap>:
c0de77ea:	e11f e4ff b70f b1bf ad7e 705a 5f6f 7fbf     ........~.Zpo_..
c0de77fa:	fc7b df0f 7ffe 7ff8                          {........

c0de7803 <C_home_boilerplate_14px>:
c0de7803:	000e 000e 0000 77ea c0de                    .......w..

c0de780d <C_Information_circle_14px_bitmap>:
c0de780d:	8007 837f 1fff 7ffe fffb 81fc 07f2 fdfb     ................
c0de781d:	e7ff 8fff 1ffc 1ee0                          .........

c0de7826 <C_Information_circle_14px>:
c0de7826:	000e 000e 0000 780d c0de                    .......x..

c0de7830 <C_Quit_14px_bitmap>:
c0de7830:	0003 001e 00fc 03c0 cc01 33e7 c698 1963     ...........3..c.
c0de7840:	6680 9801 7f06 fff9                          .f.......

c0de7849 <C_Quit_14px>:
c0de7849:	000e 000e 0000 7830 c0de                    ......0x..

c0de7853 <C_Switch_Off_8px_bitmap>:
c0de7853:	423c 8181 8181 bd99 99bd 3c42               <B........B<

c0de785f <C_Switch_Off_8px>:
c0de785f:	000c 0008 0000 7853 c0de                    ......Sx..

c0de7869 <C_Switch_On_8px_bitmap>:
c0de7869:	7e3c c3e7 e7c3 ffff ffff 3c7e               <~........~<

c0de7875 <C_Switch_On_8px>:
c0de7875:	000c 0008 0000 7869 c0de                    ......ix..

c0de787f <C_icon_back_x_bitmap>:
c0de787f:	0000 0000 0030 03c0 0c00 3303 dc0e e01f     ....0......3....
c0de788f:	003f 0078 00c0 0000                          ?.x......

c0de7898 <C_icon_back_x>:
c0de7898:	000e 000e 0000 787f c0de                    .......x..

c0de78a2 <C_icon_coggle_bitmap>:
c0de78a2:	0000 0000 0230 1fd0 3fe0 cf03 3c0f c00f     ....0....?...<..
c0de78b2:	807f 00b4 00c0 0000                          .........

c0de78bb <C_icon_coggle>:
c0de78bb:	000e 000e 0000 78a2 c0de                    .......x..

c0de78c5 <C_icon_crossmark_bitmap>:
c0de78c5:	0100 6780 8e03 1c1c 3fe0 7800 e001 c00f     ...g.....?.x....
c0de78d5:	8373 1c87 600e 0018                          s....`...

c0de78de <C_icon_crossmark>:
c0de78de:	000e 000e 0000 78c5 c0de                    .......x..

c0de78e8 <C_icon_down_bitmap>:
c0de78e8:	2184 8024                                   .!$.

c0de78ec <C_icon_down>:
c0de78ec:	0007 0004 0000 78e8 c0de                    .......x..

c0de78f6 <C_icon_left_bitmap>:
c0de78f6:	8882 80a0                                   ....

c0de78fa <C_icon_left>:
c0de78fa:	0004 0007 0000 78f6 c0de                    .......x..

c0de7904 <C_icon_processing_bitmap>:
c0de7904:	0000 010c 0e32 18dc 0060 0307 0e9c 0000     ....2...`.......
c0de7914:	8361 04b7 03c8 0000                          a........

c0de791d <C_icon_processing>:
c0de791d:	000e 000e 0000 7904 c0de                    .......y..

c0de7927 <C_icon_right_bitmap>:
c0de7927:	5110 1014                                   .Q..

c0de792b <C_icon_right>:
c0de792b:	0004 0007 0000 7927 c0de                    ......'y..

c0de7935 <C_icon_up_bitmap>:
c0de7935:	4812 1042                                   .HB.

c0de7939 <C_icon_up>:
c0de7939:	0007 0004 0000 7935 c0de                    ......5y..

c0de7943 <C_icon_validate_14_bitmap>:
c0de7943:	000e 000e 0f02 0000 c332 c3c3 c3c3 c3c3     ........2.......
c0de7953:	a3b3 a3a3 f0b2                               ......P

c0de795a <C_icon_validate_14>:
c0de795a:	000e 000e 0100 7943 c0de                    ......Cy..

c0de7964 <C_icon_warning_bitmap>:
c0de7964:	0000 6000 8007 077e 7ff8 04e7 129c f81f     ...`..~.........
c0de7974:	e01f 801f 001e 0018                          .........

c0de797d <C_icon_warning>:
c0de797d:	000e 000e 0000 7964 c0de                    ......dy..

c0de7987 <C_app_boilerplate_14px_bitmap>:
c0de7987:	0000 0300 08f0 4e40 5281 8fa5 a090 8040     ......@N.R....@.
c0de7997:	0384 00f0 0000 0000                          .........

c0de79a0 <C_app_boilerplate_14px>:
c0de79a0:	000e 000e 0000 7987 c0de 7544 6d6d 2079     .......y..Dummy 
c0de79b0:	0032 6552 6976 7765 7420 6172 736e 6361     2.Review transac
c0de79c0:	6974 6e6f 740a 206f 6573 646e 4220 4c4f     tion.to send BOL
c0de79d0:	2500 2073 2528 2f64 6425 0029 704f 7265     .%s (%d/%d).Oper
c0de79e0:	7461 6f69 206e 6973 6e67 6465 4200 696c     ation signed.Bli
c0de79f0:	646e 732d 6769 006e 2e30 2e30 0031 704f     nd-sign.0.0.1.Op
c0de7a00:	7265 7461 6f69 206e 6572 656a 7463 6465     eration rejected
c0de7a10:	5000 6572 7373 7220 6769 7468 6220 7475     .Press right but
c0de7a20:	6f74 206e 6f74 6320 6e6f 6974 756e 2065     ton to continue 
c0de7a30:	656d 7373 6761 2065 726f 0820 7270 7365     message or .pres
c0de7a40:	2073 6f62 6874 7420 206f 6b73 7069 0008     s both to skip..
c0de7a50:	6953 6e67 6e69 0067 6d41 756f 746e 4100     Signing.Amount.A
c0de7a60:	6464 6572 7373 7620 7265 6669 6569 0064     ddress verified.
c0de7a70:	7241 2065 6f79 2075 7573 6572 7420 0a6f     Are you sure to.
c0de7a80:	6c61 6f6c 2077 7564 6d6d 2079 0a32 6e69     allow dummy 2.in
c0de7a90:	7420 6172 736e 6361 6974 6e6f 3f73 5400      transactions?.T
c0de7aa0:	6172 736e 6361 6974 6e6f 7320 6769 656e     ransaction signe
c0de7ab0:	0064 6f54 6120 6363 7065 2074 6972 6b73     d.To accept risk
c0de7ac0:	202c 7270 7365 2073 6f62 6874 6220 7475     , press both but
c0de7ad0:	6f74 736e 4400 7665 6c65 706f 7265 4500     tons.Developer.E
c0de7ae0:	616e 6c62 6465 4100 6c6c 776f 6420 6d75     nabled.Allow dum
c0de7af0:	796d 3120 690a 206e 7274 6e61 6173 7463     my 1.in transact
c0de7b00:	6f69 736e 5300 6769 206e 656d 7373 6761     ions.Sign messag
c0de7b10:	0065 654d 7373 6761 2065 6973 6e67 6465     e.Message signed
c0de7b20:	5300 6769 206e 7274 6e61 6173 7463 6f69     .Sign transactio
c0de7b30:	006e 6552 656a 7463 7420 6172 736e 6361     n.Reject transac
c0de7b40:	6974 6e6f 4100 6363 7065 2074 6972 6b73     tion.Accept risk
c0de7b50:	6120 646e 7320 6769 206e 656d 7373 6761      and sign messag
c0de7b60:	0065 6c41 6f6c 2077 7564 6d6d 2079 0a32     e.Allow dummy 2.
c0de7b70:	6e69 7420 6172 736e 6361 6974 6e6f 0073     in transactions.
c0de7b80:	6556 7372 6f69 006e 6143 636e 6c65 4100     Version.Cancel.A
c0de7b90:	6464 6572 7373 7620 7265 6669 6369 7461     ddress verificat
c0de7ba0:	6f69 206e 6163 636e 6c65 656c 0064 6944     ion cancelled.Di
c0de7bb0:	6173 6c62 6465 4100 7070 7320 7465 6974     sabled.App setti
c0de7bc0:	676e 0073 6341 6563 7470 7220 7369 206b     ngs.Accept risk 
c0de7bd0:	6e61 2064 6973 6e67 7420 6172 736e 6361     and sign transac
c0de7be0:	6974 6e6f 4200 696c 646e 7320 6769 696e     tion.Blind signi
c0de7bf0:	676e 6120 6568 6461 4100 6363 7065 2074     ng ahead.Accept 
c0de7c00:	6972 6b73 6120 646e 7320 6769 206e 706f     risk and sign op
c0de7c10:	7265 7461 6f69 006e 654d 7373 6761 2065     eration.Message 
c0de7c20:	6572 656a 7463 6465 3000 3231 3433 3635     rejected.0123456
c0de7c30:	3837 4139 4342 4544 0046 4f42 204c 2e25     789ABCDEF.BOL %.
c0de7c40:	732a 4100 6464 6572 7373 4200 6361 006b     *s.Address.Back.
c0de7c50:	7544 6d6d 2079 0031 2049 6e75 6564 7372     Dummy 1.I unders
c0de7c60:	6174 646e 202c 6f63 666e 7269 006d 7254     tand, confirm.Tr
c0de7c70:	6e61 6173 7463 6f69 206e 6572 656a 7463     ansaction reject
c0de7c80:	6465 4100 7070 6920 666e 006f 6953 6e67     ed.App info.Sign
c0de7c90:	6f20 6570 6172 6974 6e6f 5200 6a65 6365      operation.Rejec
c0de7ca0:	2074 656d 7373 6761 0065 6552 656a 7463     t message.Reject
c0de7cb0:	6f20 6570 6172 6974 6e6f 5a00 4e4b 584f      operation.ZKNOX
c0de7cc0:	5600 7265 6669 2079 4f42 204c 6461 7264     .Verify BOL addr
c0de7cd0:	7365 0073 4b5a 4f4e 4858 0057 7061 2070     ess.ZKNOXHW.app 
c0de7ce0:	7369 7220 6165 7964 5100 6975 2074 7061     is ready.Quit ap
c0de7cf0:	0070 6f43 666e 7269 006d 0000 0000 0000     p.Confirm.......
c0de7d00:	ed73 53a7 9d29 487d 3933 08d8 a109 05d8     s..S).}H39......
c0de7d10:	bd53 02a4 feff fe5b ffff ffff 0000 0100     S.....[.........
c0de7d20:	ce05 c698 051b 7ff4 eae2 a5e9 bd42 f699     ............B...
c0de7d30:	e7b2 4682 1623 b540 9545 bffe 1ed5 53b8     ...F#.@.E......S
c0de7d40:	0001 0000 0000 0000 0002 0000 0000 0000     ................
c0de7d50:	0003 0000 0000 0000 0004 0000 0000 0000     ................
c0de7d60:	a005 91c0 8356 988b af28 123f e167 e675     ....V...(.?.g.u.
c0de7d70:	84e2 9dc7 6d1b d08a 0acd d9e0 9057 6e33     .....m......W.3n
c0de7d80:	c61c 38ee 9c13 111c 2302 7a53 e78c 069d     ...8.....#Sz....
c0de7d90:	587e 10cc c667 b7fb b3d8 b0a1 fc8d 088f     ~X..g...........
c0de7da0:	4d27 e8bc 51d1 9679 c09b 9fd4 25a7 dfbd     'M...Qy......%..
c0de7db0:	e59d e055 6aba 3c69 db6a fc52 e79e 2ca8     ..U..ji<j.R....,
c0de7dc0:	fb1c d469 67ca 525f ce0c 0276 6802 0076     ..i..g_R..v..hv.
c0de7dd0:	8fff 0087 1974 7104 fd74 b506 7628 e1e7     ....t..qt...(v..
c0de7de0:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de7df0:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.
c0de7e00:	a570 4a89 4464 3854 15d0 32ac 36ba 090f     p..JdDT8...2.6..
c0de7e10:	de2c ba44 1fb1 b7c2 b5d4 d2c0 2216 ce8c     ,.D.........."..
c0de7e20:	820b 39b7 8de7 57da 5ae7 80c6 68ef f19d     ...9...W.Z...h..
c0de7e30:	8f15 eee3 09d8 6d5c d14b c7b2 66c1 fdee     ......\mK....f..
	...
c0de7e5c:	0200 fc92 8963 26c1 c233 cb67 6ec6 f83b     ....c..&3.g..n;.
c0de7e6c:	e36b d8b6 66cb 7167 e577 924f 69b3 f5f2     k....fgqw.O..i..
c0de7e7c:	8d18 e758 8105 4afb 4a6e a8b5 0b12 2682     ..X....JnJ.....&
c0de7e8c:	95df 101e 94d7 b7d8 5d70 b31f 996b b98e     ........p]..k...
c0de7e9c:	4b1a e538 ed73 53a7 9d29 487d 3933 08d8     .K8.s..S).}H39..
c0de7eac:	a109 05d8 bd53 02a4 feff fe5b ffff feff     ....S.....[.....
c0de7ebc:	ffff fcff 0000 0000 0000 0000 0000 0000     ................
	...
c0de7edc:	0200 f892 6430 724e 31e1 29a0 50b8 b645     ....0dNr.1.).PE.
c0de7eec:	8181 5d58 3328 48e8 b979 9170 e143 93f5     ..X](3.Hy.p.C...
c0de7efc:	00f0 0100 b70b 6a7a 3ed6 9b73 ac4e e0b2     ......zj.>s.N...
c0de7f0c:	629d c177 b82a 01d8 3405 b6e0 9328 f6f3     .bw.*....4..(...
c0de7f1c:	95bb 5170 7925 0372 a0f7 49b2 5725 1c2e     ..pQ%yr....I%W..
c0de7f2c:	6bd1 edf9 e0fc 1f05 e1b9 7733 3c4b 7a25     .k........3wK<%z
c0de7f3c:	2d87 8b7d db2d 1c2f 0098 9939 f3a4 aad0     .-}.-./...9.....
c0de7f4c:	e24c 9d9a 8d1b 43dd 089c b5b2 281b 9240     L......C.....(@.
c0de7f5c:	88f4 7a60                                   ..`z

c0de7f60 <.L__const.handler_cmd_Poseidon.input>:
c0de7f60:	ba27 8413 87a8 77c1 9c8a b0ae 5699 eba9     '......w.....V..
c0de7f70:	5faf d40b b16c d824 53c0 c82f 3f7c 7265     ._..l.$..S/.|?er
c0de7f80:	7101 46b0 1bf3 eee4 6772 3b81 900f 3668     .q.F....rg.;..h6
c0de7f90:	f67b 92c9 ea33 c148 a571 e736 1995 537a     {...3.H.q.6...zS
c0de7fa0:	d707 29c9 2d01 8400 b177 1470 3e22 709b     ...).-..w.p.">.p
c0de7fb0:	6b6b 25a2 6ae6 a259 3550 f02c 9dd3 b655     kk.%.jY.P5,...U.
c0de7fc0:	6a2b ebc5 7859 26a9 0d0c 21a1 3693 39c6     +j..Yx.&...!.6.9
c0de7fd0:	86e1 58f7 1c7a 4086 2ac2 0fb4 8fa9 1847     ...Xz..@.*....G.
c0de7fe0:	8405 c70d d6a9 521d 16e1 574c ca9f afab     .......R..LW....
c0de7ff0:	dacc 7b47 6141 6e5c 707c 8227 2671 8c1f     ..G{Aa\n|p'.q&..

c0de8000 <.L__const.handler_cmd_encodeCommitment.commitmentlist_be>:
	...
c0de801c:	0000 0100 7e11 d3b1 235d f077 31b2 9f32     .....~..]#w..12.
c0de802c:	c8d5 a212 deb0 55ab 27d1 f04b 54d7 4eb5     .......U.'K..T.N
c0de803c:	7709 f574 cb25 194f b48b 3db2 6e31 5e45     .wt.%.O....=1nE^
c0de804c:	dc71 e963 00d6 3cbe 4dac 63a8 4354 65ad     q.c....<.M.cTC.e
c0de805c:	aac0 d65d fc0d 93c3 01fe e78d dc2b 2fc4     ..].........+../
c0de806c:	e1e4 b7df b8ff 2ec4 2abe 6ce8 33e2 14c4     .........*.l.3..
c0de807c:	01fd c00f 1105 a905 d823 0f8e 6886 98b2     ........#....h..
c0de808c:	e4cf 0f3d 48dd cf1c eb76 a2b7 8f10 8e6c     ..=..H..v.....l.
c0de809c:	9928 976c 0000 0000 0000 0000 0000 0000     (.l.............
	...
c0de80bc:	0000 0200 df15 eaad f4d3 acc7 a80f 20e7     ............... 
c0de80cc:	ade7 cb42 0ce5 585b b8a7 227e 5186 14b7     ..B...[X..~".Q..
c0de80dc:	3bcc 1507 5621 6d26 193a 41e9 bd1a 7624     .;..!V&m:..A..$v
c0de80ec:	6f64 5833 8f2a deb1 a31b c7b2 df45 72e1     do3X*.......E..r
c0de80fc:	a8a2 9ea9 9a26 52f7 231d fe84 f935 9db6     ....&..R.#..5...
c0de810c:	c869 8ff9 cefa b690 d42c 4920 4555 8b18     i.......,. IUE..
c0de811c:	2f49 785e 0000 3f0e f24e 50ed aebd 535e     I/^x...?N..P..^S
c0de812c:	8896 132e 8ff1 6bc6 098d 8306 ac4f b286     .......k....O...
c0de813c:	904d f113 0000 0000 0000 0000 0000 0000     M...............
	...
c0de815c:	0000 0300 0422 55f0 3b56 5d12 a915 32bf     ...."..UV;.]...2
c0de816c:	47f3 f78e 72a5 069a b026 590d d0ec 3d03     .G...r..&..Y...=
c0de817c:	a83d 1515 430f c5d0 84da a009 6af2 d809     =....C.......j..
c0de818c:	85ac 1ec6 ac40 0dfa 5d93 b7ea 7b4f 7a07     ....@....]..O{.z
c0de819c:	42eb a1a5 9629 76b5 ff71 9c5b 44bd 7e5a     .B..)..vq.[..DZ~
c0de81ac:	359a b04e a86a 98e0 922d 3818 d9c9 a8b1     .5N.j...-..8....
c0de81bc:	94ee 99f5 7e0a 636c ee77 df02 3641 735d     .....~lcw...A6]s
c0de81cc:	c21c fe30 319b 9ca6 0a91 0b4c e5c9 7c49     ..0..1....L...I|
c0de81dc:	9b44 9ffb                                   D...

c0de81e0 <.L__const.handler_cmd_GroupCommitment.commitmentlist_be>:
	...
c0de81fc:	0000 0100 2627 8ea4 26b3 6881 ed3a 7212     ....'&...&.h:..r
c0de820c:	83b9 81eb 4afa b22b 72a9 05c0 e18f c83e     .....J+..r....>.
c0de821c:	8de1 cea1 0d07 6491 6415 f23f 54b6 5085     .......d.d?..T.P
c0de822c:	58d2 e77d fb22 2e74 43e1 0f2b d962 61da     .X}.".t..C+.b..a
c0de823c:	059c d982 7305 32ed 42dc 3628 dee9 677d     .....s.2.B(6..}g
c0de824c:	3f6c 0e65 4d30 1234 89dd 8a3d 31de f717     l?e.0M4...=..1..
c0de825c:	004c fecd a20e ee03 9821 afd4 dda2 4e01     L.......!......N
c0de826c:	2d4e 4aa4 0d23 e5c0 b54f c8e3 912c 5c5b     N-.J#...O...,.[\
c0de827c:	d657 cbe6 0000 0000 0000 0000 0000 0000     W...............
	...
c0de829c:	0000 0200 3119 c9d9 1344 3bfc 25df cdee     .....1..D..;.%..
c0de82ac:	5bc0 b4b6 b592 cccb 4939 a342 1e6c 2755     .[......9IB.l.U'
c0de82bc:	cde8 e533 4c1e 6034 34f4 34f4 21d7 14c8     ..3..L4`.4.4.!..
c0de82cc:	3ebd cda0 f1cf bfef c684 1fc3 ec95 108f     .>..............
c0de82dc:	067f 7f74 a915 3db2 657d 3f17 b720 904a     ..t....=}e.? .J.
c0de82ec:	0efb c736 c95c 6bca 36b9 0b7b 819f 6a34     ..6.\..k.6{...4j
c0de82fc:	4065 85ab 0d1c d82d e769 f810 02b2 f48f     e@....-.i.......
c0de830c:	6b48 8289 9cff 173b 6a84 d93c 3368 fd14     Hk....;..j<.h3..
c0de831c:	9eef 774a 0000 0000 0000 0000 0000 0000     ..Jw............
	...
c0de833c:	0000 0300 c906 14ab eee1 614a 1c56 32a3     ..........JaV..2
c0de834c:	ecaf a2e4 7798 c369 e7b5 4b9b daca c359     .....wi....K..Y.
c0de835c:	7f47 b1c8 151b f46f 7f2e e041 be2a 6429     G.....o...A.*.)d
c0de836c:	2f0e 90e3 5ad9 a83b 443d 205b 302a 1a5d     ./...Z;.=D[ *0].
c0de837c:	596c a91f e426 6b67 783e e5be 9c54 3bb0     lY..&.gk>x..T..;
c0de838c:	4b45 ff10 9f01 90fb 8854 281c 971f 9fce     EK......T..(....
c0de839c:	c4d9 4159 870d ec3b 8965 7d78 9fa6 3c22     ..YA..;.e.x}.."<
c0de83ac:	cd5e 63d3 6c52 a020 23a8 482b ad49 a594     ^..cRl ..#+HI...
c0de83bc:	8132 74b1                                   2..t

c0de83c0 <.L__const.handler_cmd_GroupCommitment.binding_factors>:
c0de83c0:	1101 deb7 bc94 9409 b2cd fd68 edbf d448     ..........h...H.
c0de83d0:	ea91 d313 1c46 6e31 250b 8221 10ef 9777     ....F.1n.%!...w.
c0de83e0:	e600 1194 c574 0f7d 8054 9b71 5d0f 5c5a     ....t.}.T.q..]Z\
c0de83f0:	8840 039f 293c 1124 ec41 9a84 2c04 443a     @...<)$.A....,:D
c0de8400:	5a02 efdb 2f3c 250b 5388 73ec 6e3e 9c9d     .Z..</.%.S.s>n..
c0de8410:	58ff 694a 35f3 5bda 99bd 2ed1 123e 6f63     .XJi.5.[....>.co

c0de8420 <.L__const.handler_cmd_BindingFactors.commitmentlist_be>:
	...
c0de843c:	0000 0100 3229 55ae 7136 b0a5 b3d0 6ad2     ....)2.U6q.....j
c0de844c:	70af 71b5 d876 4698 8c1a 59c1 8bc8 322b     .p.qv..F...Y..+2
c0de845c:	285e 3734 c325 9954 61af 3e06 e0a9 8a56     ^(47%.T..a.>..V.
c0de846c:	5641 7b5b e45c c8b0 6ff1 e711 8d18 5867     AV[{\....o....gX
c0de847c:	27a8 c015 0627 8688 9c97 d30c f064 a97e     .'..'.......d.~.
c0de848c:	968c 8229 f399 dcc4 a1f8 b207 8aef c212     ..).............
c0de849c:	3713 73b9 ff1f 2fed 8440 7f75 4254 1f95     .7.s.../@.u.TB..
c0de84ac:	93fe ff81 507b dee5 d9a5 b827 8510 e4e4     ....{P....'.....
c0de84bc:	a9d0 a0f2 0000 0000 0000 0000 0000 0000     ................
	...
c0de84dc:	0000 0200 6e08 505e f749 39a9 eaaa d6a7     .....n^PI..9....
c0de84ec:	e3f9 337b 5355 e57a 1a1d 3435 cbd4 78ab     ..{3USz...54...x
c0de84fc:	8704 dd59 b701 ed2a 70c4 1124 6d74 4766     ..Y...*..p$.tmfG
c0de850c:	f98d 27bb bd42 e44f 5a4c cd87 13ed 873b     ...'B.O.LZ....;.
c0de851c:	3c80 3673 1813 8555 19fd 1c1c 5201 6d46     .<s6..U......RFm
c0de852c:	dffe 3a93 4caf 3e26 abec 8e2f 71f6 d0e8     ...:.L&>../..q..
c0de853c:	ecf8 f94c 212b b4ad 53a1 e230 f480 640e     ..L.+!...S0....d
c0de854c:	aa94 ac4d 5fc4 3176 1b81 12bc 968a bd07     ..M.._v1........
c0de855c:	2f0e d194 0000 0000 0000 0000 0000 0000     ./..............
	...
c0de857c:	0000 0300 1e07 30db 7c36 faf4 b8bb 6324     .......06|....$c
c0de858c:	9eed 7ba4 68cf 3b9e 9647 bd97 0086 77ff     ...{.h.;G......w
c0de859c:	e3de 6027 0b28 4fd3 6fb5 7c64 002a 8c05     ..'`(..O.od|*...
c0de85ac:	10db 07f6 e91a f888 bb42 a700 ee4e 13e7     ........B...N...
c0de85bc:	53ba c7e4 ce18 64ed ad9b b4ef df2f bd56     .S.....d..../.V.
c0de85cc:	f7c6 bae1 6dc3 49a2 1141 2f01 337a 9851     .....m.IA../z3Q.
c0de85dc:	f77b 6ed3 0c14 a8f9 5675 130f 5844 0ec4     {..n....uV..DX..
c0de85ec:	c881 1f0d 459c 2964 8469 00c9 ac70 f0b9     .....Ed)i...p...
c0de85fc:	a0c2 7523                                   ..#u

c0de8600 <settingContents>:
c0de8600:	0000 0000 861c c0de 0001 0000               ............

c0de860c <infoList>:
c0de860c:	8654 c0de 865c c0de 0000 0000 0002 0000     T...\...........

c0de861c <contents>:
c0de861c:	0007 0000 0344 da7a 0002 0000 0000 0000     ....D.z.........
	...
c0de8650:	1859 c0de                                   Y...

c0de8654 <INFO_TYPES>:
c0de8654:	7b80 c0de 7ad5 c0de                         .{...z..

c0de865c <INFO_CONTENTS>:
c0de865c:	79f8 c0de 7cbb c0de                         .y...|..

c0de8664 <.L__const.EddsaPoseidon_Sign_final.big_n>:
	...
c0de8684:	0c06 ce89 265c 0534 0a37 b608 30d0 0b2b     ....\&4.7....0+.
c0de8694:	3eab b8ed 2039 0aee 7267 dc97 2139 f126     .>..9 ..gr..9!&.

c0de86a4 <.L__const.Poseidon_alloc_init.MixColumn>:
c0de86a4:	4612 f866 6105 59ed f216 70f0 bdb1 8c24     .Ff..a.Y...p..$.
c0de86b4:	536d 4df4 3d27 6a95 870c 17b9 2a69 184d     mS.M'=.j....i*M.
c0de86c4:	9211 024f 19fd 92b0 aa55 cfa1 ea46 1805     ..O.....U...F...
c0de86d4:	d7e3 eebf 74f4 6021 9194 1d01 bdb0 020b     .....t!`........
c0de86e4:	7f24 f0a7 3022 194a ff94 5450 c256 1e20     $..."0J...PTV. .
c0de86f4:	b7f9 3617 9894 ffd3 44ce 0166 9ded 45f8     ...6.....Df....E
c0de8704:	fd03 197b 2cef 1f86 f722 f87f f510 274e     ..{..,..".....N'
c0de8714:	c97b b74e 026c 9dd7 6b98 dce3 05df 3f1c     {.N.l....k.....?
c0de8724:	bd18 2341 3e9c 5771 679a 4374 ffec 55bd     ..A#.>qW.gtC...U
c0de8734:	815a eeee 93a6 a652 678b 56c8 0c3c 062a     Z.....R..g.V<.*.
c0de8744:	782d a5c3 8dd2 ffe9 bf35 250a 3576 6e19     -x......5..%v5.n
c0de8754:	3057 7fca 4940 7732 8c07 5dd7 b4a8 dceb     W0..@I2w...]....
c0de8764:	510a 5c4a 7f22 ec4c df95 29a0 dde8 4c12     .QJ\".L....)...L
c0de8774:	8934 a45a b26b 097c f311 0d78 1550 0a54     4.Z.k.|...x.P.T.
c0de8784:	2e19 d116 957d 256b 857b 52a6 fdee eef2     ....}.k%{..R....
c0de8794:	5809 ac9e e85b 1509 5777 d223 1dcb 6da0     .X..[...wW#....m
c0de87a4:	8c29 c1e0 11e3 b93b c735 8e05 7277 33b5     ).....;.5...wr.3
c0de87b4:	aab1 b09d 92c0 dc6b 1789 60e5 a35c 10ac     ......k....`\...
c0de87c4:	4c09 e8b4 2136 d2af e471 c71b 2717 15f0     .L..6!..q....'..
c0de87d4:	bd8e 2261 ac39 699d 178b 4bfe 5be0 c87f     ..a"9..i...K.[..
c0de87e4:	d803 3980 e95b 273c 49d6 5faf 42d1 6be7     ...9[.<'.I._.B.k
c0de87f4:	9133 b88c 1d84 285a 3b17 cfd5 327d 9187     3.....Z(.;..}2..
c0de8804:	ee28 6bae 6658 68ad 43e4 afbb 6891 b70d     (..kXf.h.C...h..
c0de8814:	e2d7 03b3 387e f6fe 421b cccb ceff 81ca     ....~8...B......
c0de8824:	8b27 9ab4 4e7b ae44 6ea4 f8b0 cb82 2869     '...{ND..n....i(
c0de8834:	a601 0fe6 5bdd 235c 3cc6 5cd6 e4cc 0afe     .....[\#.<.\....
c0de8844:	3e06 c1de d8be f531 af06 b68d d648 eafd     .>....1.....H...
c0de8854:	5314 8845 8b7e ffdc 9010 a135 b6d9 d774     .SE.~.....5...t.
c0de8864:	ae1b cbf1 0955 26b5 20a4 fb61 6553 997f     ....U..&. a.Se..
c0de8874:	23b3 0025 55e8 2c19 8cbe 0e94 8c06 5f47     .#%..U.,......G_
c0de8884:	2413 4a56 bdc7 e2f9 6421 85e9 7f8d e3a8     .$VJ....!d......
c0de8894:	b168 ea65 3dea 4eaf 7eb6 9ce5 f20d d4e5     h.e..=.N.~......
c0de88a4:	5700 b861 aec6 1acb a48c 4dea 2cfc 7683     .Wa........M.,.v
c0de88b4:	4a06 804a ce04 a2ed a510 4052 2d56 13dc     .JJ.......R@V-..
c0de88c4:	c910 83e2 9d15 cb58 b24c 5fe3 83de baa3     ......X.L.._....
c0de88d4:	dc1f 0028 d92e 3d96 992a 86f1 8a17 8d14     ..(....=*.......
c0de88e4:	390c 9f9e aa67 7040 207a ee3f 0bfb 8b95     .9..g.@pz ?.....
c0de88f4:	adbd c5ce 34ca 1d90 3d25 6a02 1924 a2f6     .....4..%=.j$...
c0de8904:	3f08 f30d a0f1 1d35 3003 3fec 02f6 8cca     .?....5..0.?....
c0de8914:	53c3 f6b7 62e7 10c7 8471 7bcd 3442 f649     .S...b..q..{B4I.
c0de8924:	671a d564 3f94 a7c4 b420 a1c0 db9f 718c     .gd..?.. ......q
c0de8934:	8419 7230 a587 9b8b 9f5f 585d 2c21 63b2     ..0r...._.]X!,.c
c0de8944:	1a01 a263 ea6f 87bf 66fa e6bd c26c 925a     ..c.o....f..l.Z.
c0de8954:	962c 2d38 c676 ffa7 f148 7b53 edea 3a68     ,.8-v...H.S{..h:
c0de8964:	ca08 647b 7c65 4835 2bf3 5bef ad63 2824     ..{de|5H.+.[c.$(
c0de8974:	418a b2c0 0951 d29a 947f 3034 3e7e d464     .A..Q.....40~>d.
c0de8984:	9901 7082 1e47 6193 5495 b046 b8cd a9be     ...pG..a.TF.....
c0de8994:	ec15 7506 cdf1 8d64 b0dc 0343 7a50 8944     ...u..d...C.PzD.
c0de89a4:	6b1d 5f3d a36e c269 826f 235d 9362 aa3e     .k=_n.i.o.]#b.>.
c0de89b4:	ea31 ec35 770a fbc1 e0d9 a11c 3e52 3244     1.5..w......R>D2
c0de89c4:	9e11 88f1 3dbb d3d0 0623 6c97 9419 861e     .....=..#..l....
c0de89d4:	be64 7e68 697a 2d69 7da2 15a2 f0a6 406d     d.h~zii-.}....m@
c0de89e4:	9e2d b50a 68c0 df93 d0df 8134 1b38 6ba8     -....h....4.8..k
c0de89f4:	626e df92 0956 1fd7 642c d9b2 9fa7 9e80     nb..V...,d......
c0de8a04:	f125 3166 77bf 0f06 a37e 8740 25c0 13bf     %.f1.w..~.@..%..
c0de8a14:	8457 9e31 8cf0 2eda 4131 e09e 29a5 58e6     W.1.....1A...).X
c0de8a24:	4c14 117a 5ada 5d7c aeab 333f d0fb ad3c     .Lz..Z|]..?3..<.
c0de8a34:	d186 c58b c794 499a cb7e 9498 b5ed f154     .......I~.....T.
c0de8a44:	970f 6211 7762 f323 adfe b2ac 0c8b 4c10     ...bbw#........L
c0de8a54:	f7b8 e54d 7508 a82f c0d7 2adb 3df1 eee8     ..M..u/....*.=..
c0de8a64:	be24 0051 4395 0662 0add 0bbd bb0c c895     $.Q..Cb.........
c0de8a74:	ab83 4a30 25a5 b198 93a6 ec06 1a98 8d68     ..0J.%........h.
c0de8a84:	1621 e210 4aad 7437 fa26 70df b068 a6c1     !....J7t&..ph...
c0de8a94:	99c2 64a1 c1c1 03a6 edea 4894 d070 b9b9     ...d.......Hp...
c0de8aa4:	a615 987d 4110 f6b1 9ff0 9e3f fdbe 4e86     ..}..A....?....N
c0de8ab4:	9d77 f03a 5781 6a78 77c0 5e50 ec50 fc79     w.:..Wxj.wP^P.y.
c0de8ac4:	9304 fa27 d279 128c c8a2 0624 7f94 f077     ..'.y.....$...w.
c0de8ad4:	7567 28b0 6874 13b3 7768 1d70 7cbe 9895     gu.(th..hwp..|..
c0de8ae4:	0923 dc40 23c5 5826 9cff 6929 3f7a 16d4     #.@..#&X..)iz?..
c0de8af4:	70d1 c9e8 f198 85aa a0de 2dc4 f979 aa51     .p.........-y.Q.
c0de8b04:	121b 041c d19c 9e15 9028 e007 dac9 9599     ........(.......
c0de8b14:	4bcc 4cab fb26 8e88 97c3 8a2a 652e 6469     .K.L&.....*..eid

c0de8b24 <.L__const.zkn_frost_H5_init.contextString_BabyFROST>:
c0de8b24:	5246 534f 2d54 4445 4142 5942 554a 554a     FROST-EDBABYJUJU
c0de8b34:	2d42 4c42 4b41 3545 3231 762d 0031 0000     B-BLAKE512-v1...

c0de8b44 <blindSigningWarning>:
c0de8b44:	0010 0000 0000 0000 0000 0000 0000 0000     ................
	...

c0de8b6c <g_pcHex>:
c0de8b6c:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0de8b7c <g_pcHex_cap>:
c0de8b7c:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0de8b8c <_etext>:
	...

c0de8c00 <N_storage_real>:
	...

c0de8e00 <install_parameters>:
c0de8e00:	0701 4b5a 4f4e 4858 0257 3005 302e 312e     ..ZKNOXHW..0.0.1
c0de8e10:	2103 000e 000e 1900 0000 0000 0300 08f0     .!..............
c0de8e20:	4e40 5281 8fa5 a090 8040 0384 00f0 0000     @N.R....@.......
c0de8e30:	0000 0400 010a 8002 0000 802c 2300           ..........,..#s
