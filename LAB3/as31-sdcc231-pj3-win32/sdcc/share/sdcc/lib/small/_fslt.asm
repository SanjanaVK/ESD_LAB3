;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:56 2002

;--------------------------------------------------------
	.module _fslt
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fslt_PARM_2
	.globl ___fslt
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
	.area	OSEG    (OVR,DATA)
___fslt_PARM_2::
	.ds 4
___fslt_fl1_1_1::
	.ds 4
___fslt_fl2_1_1::
	.ds 4
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
;Allocation info for local variables in function '__fslt'
;------------------------------------------------------------
;	_fslt.c 28
;	-----------------------------------------
;	 function __fslt
;	-----------------------------------------
___fslt:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_fslt.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	_fslt.c 32
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fslt_fl1_1_1,r2
	mov	(___fslt_fl1_1_1 + 1),r3
	mov	(___fslt_fl1_1_1 + 2),r4
	mov	(___fslt_fl1_1_1 + 3),r5
;	_fslt.c 33
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fslt_fl2_1_1,___fslt_PARM_2
	mov	(___fslt_fl2_1_1 + 1),(___fslt_PARM_2 + 1)
	mov	(___fslt_fl2_1_1 + 2),(___fslt_PARM_2 + 2)
	mov	(___fslt_fl2_1_1 + 3),(___fslt_PARM_2 + 3)
;	_fslt.c 35
;	genAssign
;	genCmpLt
;	genCmp
	mov	a,(___fslt_fl1_1_1 + 3)
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00104$
00114$:
;	genAssign
;	genCmpLt
;	genCmp
	mov	a,(___fslt_fl2_1_1 + 3)
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00104$
00115$:
;	_fslt.c 36
;	genAssign
;	genAssign
;	genCmpLt
;	genCmp
	clr	c
	mov	a,___fslt_fl2_1_1
	subb	a,___fslt_fl1_1_1
	mov	a,(___fslt_fl2_1_1 + 1)
	subb	a,(___fslt_fl1_1_1 + 1)
	mov	a,(___fslt_fl2_1_1 + 2)
	subb	a,(___fslt_fl1_1_1 + 2)
	mov	a,(___fslt_fl2_1_1 + 3)
	xrl	a,#0x80
	mov	b,(___fslt_fl1_1_1 + 3)
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00102$
00116$:
;	_fslt.c 37
;	genRet
	mov	dpl,#0x01
; Peephole 132   changed ljmp to sjmp
	sjmp 00108$
00102$:
;	_fslt.c 38
;	genRet
	mov	dpl,#0x00
; Peephole 132   changed ljmp to sjmp
	sjmp 00108$
00104$:
;	_fslt.c 41
;	genAssign
;	genAssign
;	genCmpLt
;	genCmp
	clr	c
	mov	a,___fslt_fl1_1_1
	subb	a,___fslt_fl2_1_1
	mov	a,(___fslt_fl1_1_1 + 1)
	subb	a,(___fslt_fl2_1_1 + 1)
	mov	a,(___fslt_fl1_1_1 + 2)
	subb	a,(___fslt_fl2_1_1 + 2)
	mov	a,(___fslt_fl1_1_1 + 3)
	xrl	a,#0x80
	mov	b,(___fslt_fl2_1_1 + 3)
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00107$
00117$:
;	_fslt.c 42
;	genRet
	mov	dpl,#0x01
; Peephole 132   changed ljmp to sjmp
	sjmp 00108$
00107$:
;	_fslt.c 43
;	genRet
	mov	dpl,#0x00
00108$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
