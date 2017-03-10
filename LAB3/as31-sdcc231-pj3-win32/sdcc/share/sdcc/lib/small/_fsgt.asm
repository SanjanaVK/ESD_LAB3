;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:56 2002

;--------------------------------------------------------
	.module _fsgt
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsgt_PARM_2
	.globl ___fsgt
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
___fsgt_PARM_2::
	.ds 4
___fsgt_fl1_1_1::
	.ds 4
___fsgt_fl2_1_1::
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
;Allocation info for local variables in function '__fsgt'
;------------------------------------------------------------
;	_fsgt.c 28
;	-----------------------------------------
;	 function __fsgt
;	-----------------------------------------
___fsgt:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_fsgt.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	_fsgt.c 32
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fsgt_fl1_1_1,r2
	mov	(___fsgt_fl1_1_1 + 1),r3
	mov	(___fsgt_fl1_1_1 + 2),r4
	mov	(___fsgt_fl1_1_1 + 3),r5
;	_fsgt.c 33
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fsgt_fl2_1_1,___fsgt_PARM_2
	mov	(___fsgt_fl2_1_1 + 1),(___fsgt_PARM_2 + 1)
	mov	(___fsgt_fl2_1_1 + 2),(___fsgt_PARM_2 + 2)
	mov	(___fsgt_fl2_1_1 + 3),(___fsgt_PARM_2 + 3)
;	_fsgt.c 35
;	genAssign
;	genCmpLt
;	genCmp
	mov	a,(___fsgt_fl1_1_1 + 3)
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00104$
00114$:
;	genAssign
;	genCmpLt
;	genCmp
	mov	a,(___fsgt_fl2_1_1 + 3)
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00104$
00115$:
;	_fsgt.c 36
;	genAssign
;	genAssign
;	genCmpGt
;	genCmp
	clr	c
	mov	a,___fsgt_fl1_1_1
	subb	a,___fsgt_fl2_1_1
	mov	a,(___fsgt_fl1_1_1 + 1)
	subb	a,(___fsgt_fl2_1_1 + 1)
	mov	a,(___fsgt_fl1_1_1 + 2)
	subb	a,(___fsgt_fl2_1_1 + 2)
	mov	a,(___fsgt_fl1_1_1 + 3)
	xrl	a,#0x80
	mov	b,(___fsgt_fl2_1_1 + 3)
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00102$
00116$:
;	_fsgt.c 37
;	genRet
	mov	dpl,#0x01
; Peephole 132   changed ljmp to sjmp
	sjmp 00108$
00102$:
;	_fsgt.c 38
;	genRet
	mov	dpl,#0x00
; Peephole 132   changed ljmp to sjmp
	sjmp 00108$
00104$:
;	_fsgt.c 41
;	genAssign
;	genAssign
;	genCmpGt
;	genCmp
	clr	c
	mov	a,___fsgt_fl2_1_1
	subb	a,___fsgt_fl1_1_1
	mov	a,(___fsgt_fl2_1_1 + 1)
	subb	a,(___fsgt_fl1_1_1 + 1)
	mov	a,(___fsgt_fl2_1_1 + 2)
	subb	a,(___fsgt_fl1_1_1 + 2)
	mov	a,(___fsgt_fl2_1_1 + 3)
	xrl	a,#0x80
	mov	b,(___fsgt_fl1_1_1 + 3)
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00107$
00117$:
;	_fsgt.c 42
;	genRet
	mov	dpl,#0x01
; Peephole 132   changed ljmp to sjmp
	sjmp 00108$
00107$:
;	_fsgt.c 43
;	genRet
	mov	dpl,#0x00
00108$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
