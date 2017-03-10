;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:57 2002

;--------------------------------------------------------
	.module _fssub
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fssub_PARM_2
	.globl ___fssub
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
___fssub_PARM_2::
	.ds 4
___fssub_fl1_1_1::
	.ds 4
___fssub_fl2_1_1::
	.ds 4
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
;Allocation info for local variables in function '__fssub'
;------------------------------------------------------------
;a2                        Allocated to in memory with name '___fssub_PARM_2'
;a1                        Allocated to registers r2 r3 r4 r5 
;fl1                       Allocated to in memory with name '___fssub_fl1_1_1'
;fl2                       Allocated to in memory with name '___fssub_fl2_1_1'
;	_fssub.c 28
;	-----------------------------------------
;	 function __fssub
;	-----------------------------------------
___fssub:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_fssub.c 43
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	_fssub.c 32
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fssub_fl1_1_1,r2
	mov	(___fssub_fl1_1_1 + 1),r3
	mov	(___fssub_fl1_1_1 + 2),r4
	mov	(___fssub_fl1_1_1 + 3),r5
;	_fssub.c 33
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fssub_fl2_1_1,___fssub_PARM_2
	mov	(___fssub_fl2_1_1 + 1),(___fssub_PARM_2 + 1)
	mov	(___fssub_fl2_1_1 + 2),(___fssub_PARM_2 + 2)
	mov	(___fssub_fl2_1_1 + 3),(___fssub_PARM_2 + 3)
;	_fssub.c 36
;	genAssign
;	genIfx
	mov	a,___fssub_fl2_1_1
	orl	a,(___fssub_fl2_1_1 + 1)
	orl	a,(___fssub_fl2_1_1 + 2)
	orl	a,(___fssub_fl2_1_1 + 3)
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00102$
00109$:
;	_fssub.c 37
;	genAssign
;	genRet
	mov	dpl,___fssub_fl1_1_1
	mov	dph,(___fssub_fl1_1_1 + 1)
	mov	b,(___fssub_fl1_1_1 + 2)
	mov	a,(___fssub_fl1_1_1 + 3)
	ljmp	00105$
00102$:
;	_fssub.c 38
;	genAssign
;	genIfx
	mov	a,___fssub_fl1_1_1
	orl	a,(___fssub_fl1_1_1 + 1)
	orl	a,(___fssub_fl1_1_1 + 2)
	orl	a,(___fssub_fl1_1_1 + 3)
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00104$
00110$:
;	_fssub.c 39
;	genAssign
;	genUminus
;	genUminusFloat
	mov	a,(___fssub_fl2_1_1 + 3)
	cpl	acc.7
	mov	r5,a
	mov	r2,___fssub_fl2_1_1
	mov	r3,(___fssub_fl2_1_1 + 1)
	mov	r4,(___fssub_fl2_1_1 + 2)
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
; Peephole 132   changed ljmp to sjmp
	sjmp 00105$
00104$:
;	_fssub.c 42
;	genAssign
;	genXor
	mov	r2,___fssub_fl2_1_1
	mov	r3,(___fssub_fl2_1_1 + 1)
	mov	r4,(___fssub_fl2_1_1 + 2)
	mov	a,#0x80
	xrl	a,(___fssub_fl2_1_1 + 3)
	mov	r5,a
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fssub_fl2_1_1,r2
	mov	(___fssub_fl2_1_1 + 1),r3
	mov	(___fssub_fl2_1_1 + 2),r4
	mov	(___fssub_fl2_1_1 + 3),r5
;	_fssub.c 43
;	genAssign
;	genPointerGet
;	genNearPointerGet
;	genDataPointerGet
	mov	___fsadd_PARM_2,___fssub_fl2_1_1
	mov	(___fsadd_PARM_2 + 1),(___fssub_fl2_1_1 + 1)
	mov	(___fsadd_PARM_2 + 2),(___fssub_fl2_1_1 + 2)
	mov	(___fsadd_PARM_2 + 3),(___fssub_fl2_1_1 + 3)
;	genCall
	mov	dpl,___fssub_fl1_1_1
	mov	dph,(___fssub_fl1_1_1 + 1)
	mov	b,(___fssub_fl1_1_1 + 2)
	mov	a,(___fssub_fl1_1_1 + 3)
	lcall	___fsadd
;	genRet
; Peephole 156   removed misc moves via dph, dpl, b, a before return
00105$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
