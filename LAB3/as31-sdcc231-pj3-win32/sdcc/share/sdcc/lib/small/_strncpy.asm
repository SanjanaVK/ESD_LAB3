;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:00 2002

;--------------------------------------------------------
	.module _strncpy
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncpy_PARM_3
	.globl _strncpy_PARM_2
	.globl _strncpy
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
_strncpy_PARM_2::
	.ds 3
_strncpy_PARM_3::
	.ds 2
_strncpy_d1_1_1::
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
;Allocation info for local variables in function 'strncpy'
;------------------------------------------------------------
;	_strncpy.c 27
;	-----------------------------------------
;	 function strncpy
;	-----------------------------------------
_strncpy:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strncpy.c 36
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	_strncpy.c 32
;	genAssign
	mov	_strncpy_d1_1_1,r2
	mov	(_strncpy_d1_1_1 + 1),r3
	mov	(_strncpy_d1_1_1 + 2),r4
;	_strncpy.c 34
;	genAssign
;	genAssign
;	genAssign
	mov	r6,_strncpy_PARM_3
	mov	r7,(_strncpy_PARM_3 + 1)
00101$:
;	genAssign
	mov	ar5,r6
	mov	ar0,r7
;	genMinus
;	genMinusDec
	dec	r6
	cjne	r6,#0xff,00108$
	dec	r7
00108$:
;	genIfx
	mov	a,r5
	orl	a,r0
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00103$
00109$:
;	_strncpy.c 35
;	genPointerGet
;	genGenPointerGet
	mov	dpl,_strncpy_PARM_2
	mov	dph,(_strncpy_PARM_2 + 1)
	mov	b,(_strncpy_PARM_2 + 2)
	lcall	__gptrget
	mov	r5,a
;	genPlus
;	genPlusIncr
	inc	_strncpy_PARM_2
	clr	a
	cjne	a,_strncpy_PARM_2,00110$
	inc	(_strncpy_PARM_2 + 1)
00110$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
; Peephole 132   changed ljmp to sjmp
	sjmp 00101$
00103$:
;	_strncpy.c 36
;	genRet
	mov	dpl,_strncpy_d1_1_1
	mov	dph,(_strncpy_d1_1_1 + 1)
	mov	b,(_strncpy_d1_1_1 + 2)
00104$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
