;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:09 2002

;--------------------------------------------------------
	.module asincosf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
	.globl _asincosf_PARM_2
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
_asincosf_PARM_2::
	.ds 2
_asincosf_x_1_1::
	.ds 4
_asincosf_y_1_1::
	.ds 4
_asincosf_g_1_1::
	.ds 4
_asincosf_r_1_1::
	.ds 4
_asincosf_i_1_1::
	.ds 2
_asincosf_a_1_1::
	.ds 8
_asincosf_b_1_1::
	.ds 8
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
;Allocation info for local variables in function 'asincosf'
;------------------------------------------------------------
;isacos                    Allocated to in memory with name '_asincosf_PARM_2'
;x                         Allocated to in memory with name '_asincosf_x_1_1'
;y                         Allocated to in memory with name '_asincosf_y_1_1'
;g                         Allocated to in memory with name '_asincosf_g_1_1'
;r                         Allocated to in memory with name '_asincosf_r_1_1'
;i                         Allocated to in memory with name '_asincosf_i_1_1'
;a                         Allocated to in memory with name '_asincosf_a_1_1'
;b                         Allocated to in memory with name '_asincosf_b_1_1'
;	asincosf.c 36
;	-----------------------------------------
;	 function asincosf
;	-----------------------------------------
_asincosf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	asincosf.c 79
;	genReceive
	mov	_asincosf_x_1_1,dpl
	mov	(_asincosf_x_1_1 + 1),dph
	mov	(_asincosf_x_1_1 + 2),b
	mov	(_asincosf_x_1_1 + 3),a
;	asincosf.c 40
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_asincosf_a_1_1,#0x00
	mov	(_asincosf_a_1_1 + 1),#0x00
	mov	(_asincosf_a_1_1 + 2),#0x00
	mov	(_asincosf_a_1_1 + 3),#0x00
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_asincosf_a_1_1 + 0x0004),#0xDB
	mov	((_asincosf_a_1_1 + 0x0004) + 1),#0x0F
	mov	((_asincosf_a_1_1 + 0x0004) + 2),#0x49
	mov	((_asincosf_a_1_1 + 0x0004) + 3),#0x3F
;	asincosf.c 41
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_asincosf_b_1_1,#0xDB
	mov	(_asincosf_b_1_1 + 1),#0x0F
	mov	(_asincosf_b_1_1 + 2),#0xC9
	mov	(_asincosf_b_1_1 + 3),#0x3F
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_asincosf_b_1_1 + 0x0004),#0xDB
	mov	((_asincosf_b_1_1 + 0x0004) + 1),#0x0F
	mov	((_asincosf_b_1_1 + 0x0004) + 2),#0x49
	mov	((_asincosf_b_1_1 + 0x0004) + 3),#0x3F
;	asincosf.c 43
;	genCall
	mov	dpl,_asincosf_x_1_1
	mov	dph,(_asincosf_x_1_1 + 1)
	mov	b,(_asincosf_x_1_1 + 2)
	mov	a,(_asincosf_x_1_1 + 3)
	lcall	_fabsf
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
;	genAssign
	mov	_asincosf_y_1_1,r6
	mov	(_asincosf_y_1_1 + 1),r7
	mov	(_asincosf_y_1_1 + 2),r0
	mov	(_asincosf_y_1_1 + 3),r1
;	asincosf.c 44
;	genAssign
	mov	_asincosf_i_1_1,_asincosf_PARM_2
	mov	(_asincosf_i_1_1 + 1),(_asincosf_PARM_2 + 1)
;	asincosf.c 45
;	genAssign
	mov	___fslt_PARM_2,#0x00
	mov	(___fslt_PARM_2 + 1),#0x00
	mov	(___fslt_PARM_2 + 2),#0x80
	mov	(___fslt_PARM_2 + 3),#0x39
;	genCall
	mov	dpl,_asincosf_y_1_1
	mov	dph,(_asincosf_y_1_1 + 1)
	mov	b,(_asincosf_y_1_1 + 2)
	mov	a,(_asincosf_y_1_1 + 3)
	lcall	___fslt
	mov	a,dpl
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00107$
00125$:
;	genAssign
	mov	_asincosf_r_1_1,_asincosf_y_1_1
	mov	(_asincosf_r_1_1 + 1),(_asincosf_y_1_1 + 1)
	mov	(_asincosf_r_1_1 + 2),(_asincosf_y_1_1 + 2)
	mov	(_asincosf_r_1_1 + 3),(_asincosf_y_1_1 + 3)
	ljmp	00108$
00107$:
;	asincosf.c 48
;	genAssign
	mov	___fsgt_PARM_2,#0x00
	mov	(___fsgt_PARM_2 + 1),#0x00
	mov	(___fsgt_PARM_2 + 2),#0x00
	mov	(___fsgt_PARM_2 + 3),#0x3F
;	genCall
	mov	dpl,_asincosf_y_1_1
	mov	dph,(_asincosf_y_1_1 + 1)
	mov	b,(_asincosf_y_1_1 + 2)
	mov	a,(_asincosf_y_1_1 + 3)
	lcall	___fsgt
	mov	a,dpl
;	genIfx
;	genIfxJump
	jnz	00126$
	ljmp	00104$
00126$:
;	asincosf.c 50
;	genMinus
	clr	c
	mov	a,#0x01
	subb	a,_asincosf_i_1_1
	mov	_asincosf_i_1_1,a
; Peephole 180   changed mov to clr
	clr  a
	subb	a,(_asincosf_i_1_1 + 1)
	mov	(_asincosf_i_1_1 + 1),a
;	asincosf.c 51
;	genAssign
	mov	___fsgt_PARM_2,#0x00
	mov	(___fsgt_PARM_2 + 1),#0x00
	mov	(___fsgt_PARM_2 + 2),#0x80
	mov	(___fsgt_PARM_2 + 3),#0x3F
;	genCall
	mov	dpl,_asincosf_y_1_1
	mov	dph,(_asincosf_y_1_1 + 1)
	mov	b,(_asincosf_y_1_1 + 2)
	mov	a,(_asincosf_y_1_1 + 3)
	lcall	___fsgt
	mov	a,dpl
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00127$:
;	asincosf.c 53
;	genAssign
	clr	a
	mov	(_errno + 1),a
	mov	_errno,#0x21
;	asincosf.c 54
;	genRet
; Peephole 3.a   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  dpl,a
	mov  dph,a
	mov  b,a
	ljmp	00117$
00102$:
;	asincosf.c 56
;	genAssign
	mov	___fssub_PARM_2,_asincosf_y_1_1
	mov	(___fssub_PARM_2 + 1),(_asincosf_y_1_1 + 1)
	mov	(___fssub_PARM_2 + 2),(_asincosf_y_1_1 + 2)
	mov	(___fssub_PARM_2 + 3),(_asincosf_y_1_1 + 3)
;	genCall
; Peephole 3.c   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  dpl,a
	mov  dph,a
	mov  b,a
	mov  a,#0x3F
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fsadd_PARM_2,#0x00
	mov	(___fsadd_PARM_2 + 1),#0x00
	mov	(___fsadd_PARM_2 + 2),#0x00
	mov	(___fsadd_PARM_2 + 3),#0x3F
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	_asincosf_g_1_1,r2
	mov	(_asincosf_g_1_1 + 1),r3
	mov	(_asincosf_g_1_1 + 2),r4
	mov	(_asincosf_g_1_1 + 3),r5
;	asincosf.c 57
;	genAssign
	mov	_ldexpf_PARM_2,#0xFF
	mov	(_ldexpf_PARM_2 + 1),#0xFF
;	genCall
	mov	dpl,_asincosf_g_1_1
	mov	dph,(_asincosf_g_1_1 + 1)
	mov	b,(_asincosf_g_1_1 + 2)
	mov	a,(_asincosf_g_1_1 + 3)
	lcall	_ldexpf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	_asincosf_g_1_1,r2
	mov	(_asincosf_g_1_1 + 1),r3
	mov	(_asincosf_g_1_1 + 2),r4
	mov	(_asincosf_g_1_1 + 3),r5
;	asincosf.c 58
;	genCall
	mov	dpl,_asincosf_g_1_1
	mov	dph,(_asincosf_g_1_1 + 1)
	mov	b,(_asincosf_g_1_1 + 2)
	mov	a,(_asincosf_g_1_1 + 3)
	lcall	_sqrtf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	_asincosf_y_1_1,r2
	mov	(_asincosf_y_1_1 + 1),r3
	mov	(_asincosf_y_1_1 + 2),r4
	mov	(_asincosf_y_1_1 + 3),r5
;	asincosf.c 59
;	genAssign
	mov	___fsadd_PARM_2,_asincosf_y_1_1
	mov	(___fsadd_PARM_2 + 1),(_asincosf_y_1_1 + 1)
	mov	(___fsadd_PARM_2 + 2),(_asincosf_y_1_1 + 2)
	mov	(___fsadd_PARM_2 + 3),(_asincosf_y_1_1 + 3)
;	genCall
	mov	dpl,_asincosf_y_1_1
	mov	dph,(_asincosf_y_1_1 + 1)
	mov	b,(_asincosf_y_1_1 + 2)
	mov	a,(_asincosf_y_1_1 + 3)
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	genUminus
;	genUminusFloat
; Peephole 105   removed redundant mov
	mov  r5,a
	cpl	acc.7
	mov	(_asincosf_y_1_1 + 3),a
	mov	_asincosf_y_1_1,r2
	mov	(_asincosf_y_1_1 + 1),r3
	mov	(_asincosf_y_1_1 + 2),r4
; Peephole 132   changed ljmp to sjmp
	sjmp 00105$
00104$:
;	asincosf.c 63
;	genAssign
	mov	___fsmul_PARM_2,_asincosf_y_1_1
	mov	(___fsmul_PARM_2 + 1),(_asincosf_y_1_1 + 1)
	mov	(___fsmul_PARM_2 + 2),(_asincosf_y_1_1 + 2)
	mov	(___fsmul_PARM_2 + 3),(_asincosf_y_1_1 + 3)
;	genCall
	mov	dpl,_asincosf_y_1_1
	mov	dph,(_asincosf_y_1_1 + 1)
	mov	b,(_asincosf_y_1_1 + 2)
	mov	a,(_asincosf_y_1_1 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	_asincosf_g_1_1,r2
	mov	(_asincosf_g_1_1 + 1),r3
	mov	(_asincosf_g_1_1 + 2),r4
	mov	(_asincosf_g_1_1 + 3),r5
00105$:
;	asincosf.c 65
;	genAssign
	mov	___fsmul_PARM_2,#0x65
	mov	(___fsmul_PARM_2 + 1),#0x20
	mov	(___fsmul_PARM_2 + 2),#0x01
	mov	(___fsmul_PARM_2 + 3),#0xBF
;	genCall
	mov	dpl,_asincosf_g_1_1
	mov	dph,(_asincosf_g_1_1 + 1)
	mov	b,(_asincosf_g_1_1 + 2)
	mov	a,(_asincosf_g_1_1 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fsadd_PARM_2,#0x6B
	mov	(___fsadd_PARM_2 + 1),#0x16
	mov	(___fsadd_PARM_2 + 2),#0x6F
	mov	(___fsadd_PARM_2 + 3),#0x3F
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fsmul_PARM_2,_asincosf_g_1_1
	mov	(___fsmul_PARM_2 + 1),(_asincosf_g_1_1 + 1)
	mov	(___fsmul_PARM_2 + 2),(_asincosf_g_1_1 + 2)
	mov	(___fsmul_PARM_2 + 3),(_asincosf_g_1_1 + 3)
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
	mov	___fsadd_PARM_2,#0x0B
	mov	(___fsadd_PARM_2 + 1),#0x8D
	mov	(___fsadd_PARM_2 + 2),#0xB1
	mov	(___fsadd_PARM_2 + 3),#0xC0
;	genCall
	mov	dpl,_asincosf_g_1_1
	mov	dph,(_asincosf_g_1_1 + 1)
	mov	b,(_asincosf_g_1_1 + 2)
	mov	a,(_asincosf_g_1_1 + 3)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	___fsmul_PARM_2,_asincosf_g_1_1
	mov	(___fsmul_PARM_2 + 1),(_asincosf_g_1_1 + 1)
	mov	(___fsmul_PARM_2 + 2),(_asincosf_g_1_1 + 2)
	mov	(___fsmul_PARM_2 + 3),(_asincosf_g_1_1 + 3)
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	___fsadd_PARM_2,#0xF0
	mov	(___fsadd_PARM_2 + 1),#0x50
	mov	(___fsadd_PARM_2 + 2),#0xB3
	mov	(___fsadd_PARM_2 + 3),#0x40
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	___fsdiv_PARM_2,r6
	mov	(___fsdiv_PARM_2 + 1),r7
	mov	(___fsdiv_PARM_2 + 2),r0
	mov	(___fsdiv_PARM_2 + 3),r1
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fsmul_PARM_2,r2
	mov	(___fsmul_PARM_2 + 1),r3
	mov	(___fsmul_PARM_2 + 2),r4
	mov	(___fsmul_PARM_2 + 3),r5
;	genCall
	mov	dpl,_asincosf_y_1_1
	mov	dph,(_asincosf_y_1_1 + 1)
	mov	b,(_asincosf_y_1_1 + 2)
	mov	a,(_asincosf_y_1_1 + 3)
	lcall	___fsmul
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
	mov	dpl,_asincosf_y_1_1
	mov	dph,(_asincosf_y_1_1 + 1)
	mov	b,(_asincosf_y_1_1 + 2)
	mov	a,(_asincosf_y_1_1 + 3)
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	_asincosf_r_1_1,r2
	mov	(_asincosf_r_1_1 + 1),r3
	mov	(_asincosf_r_1_1 + 2),r4
	mov	(_asincosf_r_1_1 + 3),r5
00108$:
;	asincosf.c 67
;	genIfx
	mov	a,_asincosf_PARM_2
	orl	a,(_asincosf_PARM_2 + 1)
;	genIfxJump
	jnz	00128$
	ljmp	00115$
00128$:
;	asincosf.c 69
;	genAssign
	mov	___fslt_PARM_2,#0x00
	mov	(___fslt_PARM_2 + 1),#0x00
	mov	(___fslt_PARM_2 + 2),#0x00
	mov	(___fslt_PARM_2 + 3),#0x00
;	genCall
	mov	dpl,_asincosf_x_1_1
	mov	dph,(_asincosf_x_1_1 + 1)
	mov	b,(_asincosf_x_1_1 + 2)
	mov	a,(_asincosf_x_1_1 + 3)
	lcall	___fslt
	mov	a,dpl
;	genIfx
;	genIfxJump
	jnz	00129$
	ljmp	00110$
00129$:
;	asincosf.c 70
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	mov	r2,_asincosf_i_1_1
	mov	a,(_asincosf_i_1_1 + 1)
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
	add	a,#_asincosf_b_1_1
	mov	r0,a
;	genPointerGet
;	genNearPointerGet
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	genAssign
	mov	___fsadd_PARM_2,_asincosf_r_1_1
	mov	(___fsadd_PARM_2 + 1),(_asincosf_r_1_1 + 1)
	mov	(___fsadd_PARM_2 + 2),(_asincosf_r_1_1 + 2)
	mov	(___fsadd_PARM_2 + 3),(_asincosf_r_1_1 + 3)
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	___fsadd_PARM_2,r2
	mov	(___fsadd_PARM_2 + 1),r3
	mov	(___fsadd_PARM_2 + 2),r4
	mov	(___fsadd_PARM_2 + 3),r5
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	_asincosf_r_1_1,r2
	mov	(_asincosf_r_1_1 + 1),r3
	mov	(_asincosf_r_1_1 + 2),r4
	mov	(_asincosf_r_1_1 + 3),r5
	ljmp	00116$
00110$:
;	asincosf.c 72
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	mov	r2,_asincosf_i_1_1
	mov	a,(_asincosf_i_1_1 + 1)
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
	add	a,#_asincosf_a_1_1
	mov	r0,a
;	genPointerGet
;	genNearPointerGet
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	genAssign
	mov	___fssub_PARM_2,_asincosf_r_1_1
	mov	(___fssub_PARM_2 + 1),(_asincosf_r_1_1 + 1)
	mov	(___fssub_PARM_2 + 2),(_asincosf_r_1_1 + 2)
	mov	(___fssub_PARM_2 + 3),(_asincosf_r_1_1 + 3)
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fssub
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	___fsadd_PARM_2,r2
	mov	(___fsadd_PARM_2 + 1),r3
	mov	(___fsadd_PARM_2 + 2),r4
	mov	(___fsadd_PARM_2 + 3),r5
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	_asincosf_r_1_1,r2
	mov	(_asincosf_r_1_1 + 1),r3
	mov	(_asincosf_r_1_1 + 2),r4
	mov	(_asincosf_r_1_1 + 3),r5
	ljmp	00116$
00115$:
;	asincosf.c 76
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	mov	r2,_asincosf_i_1_1
	mov	a,(_asincosf_i_1_1 + 1)
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
	add	a,#_asincosf_a_1_1
	mov	r0,a
;	genPointerGet
;	genNearPointerGet
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	genAssign
	mov	___fsadd_PARM_2,_asincosf_r_1_1
	mov	(___fsadd_PARM_2 + 1),(_asincosf_r_1_1 + 1)
	mov	(___fsadd_PARM_2 + 2),(_asincosf_r_1_1 + 2)
	mov	(___fsadd_PARM_2 + 3),(_asincosf_r_1_1 + 3)
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	___fsadd_PARM_2,r2
	mov	(___fsadd_PARM_2 + 1),r3
	mov	(___fsadd_PARM_2 + 2),r4
	mov	(___fsadd_PARM_2 + 3),r5
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	_asincosf_r_1_1,r2
	mov	(_asincosf_r_1_1 + 1),r3
	mov	(_asincosf_r_1_1 + 2),r4
	mov	(_asincosf_r_1_1 + 3),r5
;	asincosf.c 77
;	genAssign
	mov	___fslt_PARM_2,#0x00
	mov	(___fslt_PARM_2 + 1),#0x00
	mov	(___fslt_PARM_2 + 2),#0x00
	mov	(___fslt_PARM_2 + 3),#0x00
;	genCall
	mov	dpl,_asincosf_x_1_1
	mov	dph,(_asincosf_x_1_1 + 1)
	mov	b,(_asincosf_x_1_1 + 2)
	mov	a,(_asincosf_x_1_1 + 3)
	lcall	___fslt
	mov	a,dpl
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00116$
00130$:
;	genUminus
;	genUminusFloat
	mov	a,(_asincosf_r_1_1 + 3)
	cpl	acc.7
	mov	(_asincosf_r_1_1 + 3),a
00116$:
;	asincosf.c 79
;	genRet
	mov	dpl,_asincosf_r_1_1
	mov	dph,(_asincosf_r_1_1 + 1)
	mov	b,(_asincosf_r_1_1 + 2)
	mov	a,(_asincosf_r_1_1 + 3)
00117$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
