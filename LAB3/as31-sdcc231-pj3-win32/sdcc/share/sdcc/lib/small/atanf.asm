;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:10 2002

;--------------------------------------------------------
	.module atanf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atanf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; special function bits 
;--------------------------------------------------------
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_atanf_a_1_1:
	.ds 16
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'atanf'
;------------------------------------------------------------
;x                         Allocated to stack - offset 1
;f                         Allocated to stack - offset 5
;r                         Allocated to stack - offset 9
;g                         Allocated to stack - offset 13
;n                         Allocated to stack - offset 17
;sloc0                     Allocated to stack - offset 19
;a                         Allocated to in memory with name '_atanf_a_1_1'
;	atanf.c 43
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_atanf_a_1_1,#0x00
	mov	(_atanf_a_1_1 + 1),#0x00
	mov	(_atanf_a_1_1 + 2),#0x00
	mov	(_atanf_a_1_1 + 3),#0x00
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_atanf_a_1_1 + 0x0004),#0x92
	mov	((_atanf_a_1_1 + 0x0004) + 1),#0x0A
	mov	((_atanf_a_1_1 + 0x0004) + 2),#0x06
	mov	((_atanf_a_1_1 + 0x0004) + 3),#0x3F
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_atanf_a_1_1 + 0x0008),#0xDB
	mov	((_atanf_a_1_1 + 0x0008) + 1),#0x0F
	mov	((_atanf_a_1_1 + 0x0008) + 2),#0xC9
	mov	((_atanf_a_1_1 + 0x0008) + 3),#0x3F
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_atanf_a_1_1 + 0x000c),#0x92
	mov	((_atanf_a_1_1 + 0x000c) + 1),#0x0A
	mov	((_atanf_a_1_1 + 0x000c) + 2),#0x86
	mov	((_atanf_a_1_1 + 0x000c) + 3),#0x3F
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'atanf'
;------------------------------------------------------------
;x                         Allocated to stack - offset 1
;f                         Allocated to stack - offset 5
;r                         Allocated to stack - offset 9
;g                         Allocated to stack - offset 13
;n                         Allocated to stack - offset 17
;sloc0                     Allocated to stack - offset 19
;a                         Allocated to in memory with name '_atanf_a_1_1'
;	atanf.c 39
;	-----------------------------------------
;	 function atanf
;	-----------------------------------------
_atanf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	_bp
	mov	_bp,sp
	mov	ar0,a
	mov	a,sp
	add	a,#0x16
	mov	sp,a
	mov	a,ar0
;	atanf.c 68
;	genReceive
	push	acc
; Peephole 212  reduced add sequence to inc
	mov  r0,_bp
	inc  r0
	pop	acc
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
;	atanf.c 42
;	genAssign
	mov	a,_bp
	add	a,#0x11
; Peephole 216 simplified clear (2bytes)
	mov   r0,a
	clr   a
	mov   @r0,a
	inc   r0
	mov   @r0,a
;	atanf.c 45
;	genCall
; Peephole 212  reduced add sequence to inc
	mov  r0,_bp
	inc  r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_fabsf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	atanf.c 46
;	genAssign
	mov	___fsgt_PARM_2,#0x00
	mov	(___fsgt_PARM_2 + 1),#0x00
	mov	(___fsgt_PARM_2 + 2),#0x80
	mov	(___fsgt_PARM_2 + 3),#0x3F
;	genCall
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsgt
	mov	a,dpl
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00119$:
;	atanf.c 48
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	___fsdiv_PARM_2,@r0
	inc	r0
	mov	(___fsdiv_PARM_2 + 1),@r0
	inc	r0
	mov	(___fsdiv_PARM_2 + 2),@r0
	inc	r0
	mov	(___fsdiv_PARM_2 + 3),@r0
;	genCall
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fsdiv
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	atanf.c 49
;	genAssign
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	clr	a
	inc	r0
	mov	@r0,a
	dec	r0
	mov	@r0,#0x02
00102$:
;	atanf.c 51
;	genAssign
	mov	___fsgt_PARM_2,#0xA3
	mov	(___fsgt_PARM_2 + 1),#0x30
	mov	(___fsgt_PARM_2 + 2),#0x89
	mov	(___fsgt_PARM_2 + 3),#0x3E
;	genCall
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsgt
	mov	a,dpl
;	genIfx
;	genIfxJump
	jnz	00120$
	ljmp	00104$
00120$:
;	atanf.c 53
;	genAssign
	mov	___fsmul_PARM_2,#0xAF
	mov	(___fsmul_PARM_2 + 1),#0x67
	mov	(___fsmul_PARM_2 + 2),#0x3B
	mov	(___fsmul_PARM_2 + 3),#0x3F
;	genCall
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fssub_PARM_2,#0x00
	mov	(___fssub_PARM_2 + 1),#0x00
	mov	(___fssub_PARM_2 + 2),#0x80
	mov	(___fssub_PARM_2 + 3),#0x3F
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	___fsadd_PARM_2,@r0
	inc	r0
	mov	(___fsadd_PARM_2 + 1),@r0
	inc	r0
	mov	(___fsadd_PARM_2 + 2),@r0
	inc	r0
	mov	(___fsadd_PARM_2 + 3),@r0
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	push	acc
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	pop	acc
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
;	genAssign
	mov	___fsadd_PARM_2,#0xD7
	mov	(___fsadd_PARM_2 + 1),#0xB3
	mov	(___fsadd_PARM_2 + 2),#0xDD
	mov	(___fsadd_PARM_2 + 3),#0x3F
;	genCall
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
;	genAssign
	mov	___fsdiv_PARM_2,r6
	mov	(___fsdiv_PARM_2 + 1),r7
	mov	(___fsdiv_PARM_2 + 2),r2
	mov	(___fsdiv_PARM_2 + 3),r3
;	genCall
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	atanf.c 57
;	genPlus
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
;	genPlusIncr
	inc	@r0
	cjne	@r0,#0x00,00121$
	inc	r0
	inc	@r0
00121$:
00104$:
;	atanf.c 59
;	genCall
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_fabsf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fslt_PARM_2,#0x00
	mov	(___fslt_PARM_2 + 1),#0x00
	mov	(___fslt_PARM_2 + 2),#0x80
	mov	(___fslt_PARM_2 + 3),#0x39
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fslt
	mov	a,dpl
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00106$
00122$:
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x09
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	ljmp	00107$
00106$:
;	atanf.c 62
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	___fsmul_PARM_2,@r0
	inc	r0
	mov	(___fsmul_PARM_2 + 1),@r0
	inc	r0
	mov	(___fsmul_PARM_2 + 2),@r0
	inc	r0
	mov	(___fsmul_PARM_2 + 3),@r0
;	genCall
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	atanf.c 63
;	genAssign
	mov	___fsmul_PARM_2,#0x91
	mov	(___fsmul_PARM_2 + 1),#0x86
	mov	(___fsmul_PARM_2 + 2),#0x50
	mov	(___fsmul_PARM_2 + 3),#0xBD
;	genCall
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
;	genAssign
	mov	___fsadd_PARM_2,#0xF6
	mov	(___fsadd_PARM_2 + 1),#0x10
	mov	(___fsadd_PARM_2 + 2),#0xF1
	mov	(___fsadd_PARM_2 + 3),#0xBE
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	___fsmul_PARM_2,@r0
	inc	r0
	mov	(___fsmul_PARM_2 + 1),@r0
	inc	r0
	mov	(___fsmul_PARM_2 + 2),@r0
	inc	r0
	mov	(___fsmul_PARM_2 + 3),@r0
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	___fsmul_PARM_2,@r0
	inc	r0
	mov	(___fsmul_PARM_2 + 1),@r0
	inc	r0
	mov	(___fsmul_PARM_2 + 2),@r0
	inc	r0
	mov	(___fsmul_PARM_2 + 3),@r0
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsmul
	push	acc
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	pop	acc
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
;	genAssign
	mov	___fsadd_PARM_2,#0xD3
	mov	(___fsadd_PARM_2 + 1),#0xCC
	mov	(___fsadd_PARM_2 + 2),#0xB4
	mov	(___fsadd_PARM_2 + 3),#0x3F
;	genCall
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
;	genAssign
	mov	___fsdiv_PARM_2,r6
	mov	(___fsdiv_PARM_2 + 1),r7
	mov	(___fsdiv_PARM_2 + 2),r2
	mov	(___fsdiv_PARM_2 + 3),r3
;	genCall
	mov	a,_bp
	add	a,#0x13
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fsadd_PARM_2,r2
	mov	(___fsadd_PARM_2 + 1),r3
	mov	(___fsadd_PARM_2 + 2),r4
	mov	(___fsadd_PARM_2 + 3),r5
;	genCall
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
00107$:
;	atanf.c 65
;	genCmpGt
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
;	genCmp
	clr	c
	mov	a,#0x01
	subb	a,@r0
; Peephole 159   avoided xrl during execution
	mov  a,#(0x00 ^ 0x80)
	inc	r0
	mov	b,@r0
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00109$
00123$:
;	genUminus
	mov	a,_bp
	add	a,#0x09
;	genUminusFloat
; Peephole 185   changed order of increment (acc incremented also!)
	inc  a
	mov  r0,a
	inc	r0
	inc	r0
	mov	a,@r0
	cpl	acc.7
	mov	@r0,a
	dec	r0
	dec	r0
	dec	r0
	mov	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	mov	@r0,a
00109$:
;	atanf.c 66
;	genLeftShift
;	genLeftShiftLiteral
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
;	genlshTwo
	mov	ar2,@r0
	inc	r0
	mov	a,@r0
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	mov	r3,a
;	genPlus
	mov	a,r2
	add	a,#_atanf_a_1_1
	mov	r0,a
;	genPointerGet
;	genNearPointerGet
	mov	___fsadd_PARM_2,@r0
	inc	r0
	mov	(___fsadd_PARM_2 + 1),@r0
	inc	r0
	mov	(___fsadd_PARM_2 + 2),@r0
	inc	r0
	mov	(___fsadd_PARM_2 + 3),@r0
;	genCall
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	atanf.c 67
;	genAssign
	mov	___fslt_PARM_2,#0x00
	mov	(___fslt_PARM_2 + 1),#0x00
	mov	(___fslt_PARM_2 + 2),#0x00
	mov	(___fslt_PARM_2 + 3),#0x00
;	genCall
; Peephole 212  reduced add sequence to inc
	mov  r0,_bp
	inc  r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fslt
	mov	a,dpl
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00111$
00124$:
;	genUminus
	mov	a,_bp
	add	a,#0x09
;	genUminusFloat
; Peephole 185   changed order of increment (acc incremented also!)
	inc  a
	mov  r0,a
	inc	r0
	inc	r0
	mov	a,@r0
	cpl	acc.7
	mov	@r0,a
	dec	r0
	dec	r0
	dec	r0
	mov	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	mov	@r0,a
00111$:
;	atanf.c 68
;	genRet
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
00112$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
