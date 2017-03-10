;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:29 2002

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
_atanf_a_1_1:
	.ds 16
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
;	genFarPointerSet
	mov	dptr,#_atanf_a_1_1
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
; Peephole 226   removed unnecessary clr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx @dptr,a
	inc  dptr
	movx @dptr,a
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#(_atanf_a_1_1 + 0x0004)
	mov	a,#0x92
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0A
	movx	@dptr,a
	inc	dptr
	mov	a,#0x06
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#(_atanf_a_1_1 + 0x0008)
	mov	a,#0xDB
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0F
	movx	@dptr,a
	inc	dptr
	mov	a,#0xC9
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
;	genPointerSet
;	genFarPointerSet
	mov	dptr,#(_atanf_a_1_1 + 0x000c)
	mov	a,#0x92
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0A
	movx	@dptr,a
	inc	dptr
	mov	a,#0x86
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
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
	mov	dptr,#___fsgt_PARM_2
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
	clr  a
	movx @dptr,a
	inc  dptr
	movx @dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
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
	jnz	00119$
	ljmp	00102$
00119$:
;	atanf.c 48
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dptr,#___fsdiv_PARM_2
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
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
	mov	dptr,#___fsgt_PARM_2
	mov	a,#0xA3
	movx	@dptr,a
	inc	dptr
	mov	a,#0x30
	movx	@dptr,a
	inc	dptr
	mov	a,#0x89
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3E
	movx	@dptr,a
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
	mov	dptr,#___fsmul_PARM_2
	mov	a,#0xAF
	movx	@dptr,a
	inc	dptr
	mov	a,#0x67
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3B
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
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
	mov	dptr,#___fssub_PARM_2
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
	clr  a
	movx @dptr,a
	inc  dptr
	movx @dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
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
	mov	dptr,#___fsadd_PARM_2
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
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
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0xD7
	movx	@dptr,a
	inc	dptr
	mov	a,#0xB3
	movx	@dptr,a
	inc	dptr
	mov	a,#0xDD
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
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
	mov	dptr,#___fsdiv_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
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
	mov	dptr,#___fslt_PARM_2
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
	clr  a
	movx @dptr,a
	inc  dptr
	movx @dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x39
	movx	@dptr,a
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
	mov	dptr,#___fsmul_PARM_2
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
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
	mov	dptr,#___fsmul_PARM_2
	mov	a,#0x91
	movx	@dptr,a
	inc	dptr
	mov	a,#0x86
	movx	@dptr,a
	inc	dptr
	mov	a,#0x50
	movx	@dptr,a
	inc	dptr
	mov	a,#0xBD
	movx	@dptr,a
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
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0xF6
	movx	@dptr,a
	inc	dptr
	mov	a,#0x10
	movx	@dptr,a
	inc	dptr
	mov	a,#0xF1
	movx	@dptr,a
	inc	dptr
	mov	a,#0xBE
	movx	@dptr,a
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
	mov	dptr,#___fsmul_PARM_2
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
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
	mov	dptr,#___fsmul_PARM_2
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
	inc	r0
	inc	dptr
	mov	a,@r0
	movx	@dptr,a
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
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0xD3
	movx	@dptr,a
	inc	dptr
	mov	a,#0xCC
	movx	@dptr,a
	inc	dptr
	mov	a,#0xB4
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
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
	mov	dptr,#___fsdiv_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
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
	mov	dptr,#___fsadd_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
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
	mov	dpl,a
	mov	a,r3
	addc	a,#(_atanf_a_1_1 >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAssign
	mov	dptr,#___fsadd_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
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
	mov	dptr,#___fslt_PARM_2
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
; Peephole 226   removed unnecessary clr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx @dptr,a
	inc  dptr
	movx @dptr,a
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
