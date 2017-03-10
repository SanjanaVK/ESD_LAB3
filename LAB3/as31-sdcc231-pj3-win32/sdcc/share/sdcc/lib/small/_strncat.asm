;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:00 2002

;--------------------------------------------------------
	.module _strncat
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncat_PARM_3
	.globl _strncat_PARM_2
	.globl _strncat
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
_strncat_PARM_2::
	.ds 3
_strncat_PARM_3::
	.ds 2
_strncat_front_1_1::
	.ds 3
_strncat_start_1_1::
	.ds 3
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
;Allocation info for local variables in function 'strncat'
;------------------------------------------------------------
;	_strncat.c 27
;	-----------------------------------------
;	 function strncat
;	-----------------------------------------
_strncat:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strncat.c 44
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	_strncat.c 33
;	genAssign
	mov	_strncat_start_1_1,r2
	mov	(_strncat_start_1_1 + 1),r3
	mov	(_strncat_start_1_1 + 2),r4
;	_strncat.c 35
;	genAssign
	mov	ar0,r2
	mov	ar1,r3
	mov	ar5,r4
00101$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	inc	r0
	cjne	r0,#0x00,00116$
	inc	r1
00116$:
;	genIfx
	mov	a,r6
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00101$
00117$:
;	_strncat.c 37
;	genMinus
;	genMinusDec
	mov	a,r0
	add	a,#0xff
	mov	r2,a
	mov	a,r1
	addc	a,#0xff
	mov	r3,a
	mov	ar4,r5
;	_strncat.c 39
;	genAssign
;	genAssign
	mov	_strncat_front_1_1,r2
	mov	(_strncat_front_1_1 + 1),r3
	mov	(_strncat_front_1_1 + 2),r4
;	genAssign
	mov	r6,_strncat_PARM_3
	mov	r7,(_strncat_PARM_3 + 1)
00106$:
;	genAssign
	mov	ar5,r6
	mov	ar0,r7
;	genMinus
;	genMinusDec
	dec	r6
	cjne	r6,#0xff,00118$
	dec	r7
00118$:
;	genIfx
	mov	a,r5
	orl	a,r0
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00108$
00119$:
;	_strncat.c 40
;	genPointerGet
;	genGenPointerGet
	mov	dpl,_strncat_PARM_2
	mov	dph,(_strncat_PARM_2 + 1)
	mov	b,(_strncat_PARM_2 + 2)
	lcall	__gptrget
	mov	r5,a
;	genPlus
;	genPlusIncr
	inc	_strncat_PARM_2
	clr	a
	cjne	a,_strncat_PARM_2,00120$
	inc	(_strncat_PARM_2 + 1)
00120$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,_strncat_front_1_1
	mov	dph,(_strncat_front_1_1 + 1)
	mov	b,(_strncat_front_1_1 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	_strncat_front_1_1,dpl
	mov	(_strncat_front_1_1 + 1),dph
	mov	(_strncat_front_1_1 + 2),b
;	genAssign
	mov	r2,_strncat_front_1_1
	mov	r3,(_strncat_front_1_1 + 1)
	mov	r4,(_strncat_front_1_1 + 2)
;	genIfx
	mov	a,r5
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00106$
00121$:
;	_strncat.c 41
;	genRet
	mov	dpl,_strncat_start_1_1
	mov	dph,(_strncat_start_1_1 + 1)
	mov	b,(_strncat_start_1_1 + 2)
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00108$:
;	_strncat.c 43
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
; Peephole 180   changed mov to clr
	clr  a
	lcall	__gptrput
;	_strncat.c 44
;	genRet
	mov	dpl,_strncat_start_1_1
	mov	dph,(_strncat_start_1_1 + 1)
	mov	b,(_strncat_start_1_1 + 2)
00109$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
