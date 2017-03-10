;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:56 2002

;--------------------------------------------------------
	.module _fseq
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fseq_PARM_2
	.globl ___fseq
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
___fseq_PARM_2::
	.ds 4
___fseq_fl1_1_1::
	.ds 4
___fseq_fl2_1_1::
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
;Allocation info for local variables in function '__fseq'
;------------------------------------------------------------
;	_fseq.c 29
;	-----------------------------------------
;	 function __fseq
;	-----------------------------------------
___fseq:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_fseq.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	_fseq.c 33
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fseq_fl1_1_1,r2
	mov	(___fseq_fl1_1_1 + 1),r3
	mov	(___fseq_fl1_1_1 + 2),r4
	mov	(___fseq_fl1_1_1 + 3),r5
;	_fseq.c 34
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	___fseq_fl2_1_1,___fseq_PARM_2
	mov	(___fseq_fl2_1_1 + 1),(___fseq_PARM_2 + 1)
	mov	(___fseq_fl2_1_1 + 2),(___fseq_PARM_2 + 2)
	mov	(___fseq_fl2_1_1 + 3),(___fseq_PARM_2 + 3)
;	_fseq.c 36
;	genAssign
;	genAssign
;	genCmpEq
	mov	a,___fseq_fl1_1_1
	cjne	a,___fseq_fl2_1_1,00106$
	mov	a,(___fseq_fl1_1_1 + 1)
	cjne	a,(___fseq_fl2_1_1 + 1),00106$
	mov	a,(___fseq_fl1_1_1 + 2)
	cjne	a,(___fseq_fl2_1_1 + 2),00106$
	mov	a,(___fseq_fl1_1_1 + 3)
	cjne	a,(___fseq_fl2_1_1 + 3),00106$
	sjmp	00107$
00106$:
; Peephole 132   changed ljmp to sjmp
	sjmp 00102$
00107$:
;	_fseq.c 37
;	genRet
	mov	dpl,#0x01
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00102$:
;	_fseq.c 38
;	genRet
	mov	dpl,#0x00
00103$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
