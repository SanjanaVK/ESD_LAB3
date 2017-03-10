;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:59 2002

;--------------------------------------------------------
	.module _strcpy
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcpy_PARM_2
	.globl _strcpy
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
_strcpy_PARM_2::
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
;Allocation info for local variables in function 'strcpy'
;------------------------------------------------------------
;	_strcpy.c 31
;	-----------------------------------------
;	 function strcpy
;	-----------------------------------------
_strcpy:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strcpy.c 47
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	_strcpy.c 45
;	genAssign
;	genAssign
	mov	ar0,r2
	mov	ar1,r3
	mov	ar5,r4
00101$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,_strcpy_PARM_2
	mov	dph,(_strcpy_PARM_2 + 1)
	mov	b,(_strcpy_PARM_2 + 2)
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	inc	_strcpy_PARM_2
	clr	a
	cjne	a,_strcpy_PARM_2,00108$
	inc	(_strcpy_PARM_2 + 1)
00108$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r0
	mov	dph,r1
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	r0,dpl
	mov	r1,dph
	mov	r5,b
;	genIfx
	mov	a,r6
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00101$
00109$:
;	_strcpy.c 47
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
00104$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
