;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:58 2002

;--------------------------------------------------------
	.module _memcpy
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcpy_PARM_3
	.globl _memcpy_PARM_2
	.globl _memcpy
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
_memcpy_PARM_2::
	.ds 3
_memcpy_PARM_3::
	.ds 2
_memcpy_ret_1_1::
	.ds 3
_memcpy_s_1_1::
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
;Allocation info for local variables in function 'memcpy'
;------------------------------------------------------------
;	_memcpy.c 31
;	-----------------------------------------
;	 function memcpy
;	-----------------------------------------
_memcpy:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_memcpy.c 75
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	_memcpy.c 64
;	genAssign
	mov	_memcpy_ret_1_1,r2
	mov	(_memcpy_ret_1_1 + 1),r3
	mov	(_memcpy_ret_1_1 + 2),r4
;	_memcpy.c 66
;	genAssign
	mov	r0,_memcpy_PARM_2
	mov	r1,(_memcpy_PARM_2 + 1)
	mov	r5,(_memcpy_PARM_2 + 2)
;	_memcpy.c 71
;	genAssign
	mov	_memcpy_s_1_1,r0
	mov	(_memcpy_s_1_1 + 1),r1
	mov	(_memcpy_s_1_1 + 2),r5
;	genAssign
;	genAssign
	mov	r0,_memcpy_PARM_3
	mov	r1,(_memcpy_PARM_3 + 1)
00101$:
;	genAssign
	mov	ar5,r0
	mov	ar6,r1
;	genMinus
;	genMinusDec
	dec	r0
	cjne	r0,#0xff,00108$
	dec	r1
00108$:
;	genIfx
	mov	a,r5
	orl	a,r6
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00103$
00109$:
;	_memcpy.c 72
;	genPointerGet
;	genGenPointerGet
	mov	dpl,_memcpy_s_1_1
	mov	dph,(_memcpy_s_1_1 + 1)
	mov	b,(_memcpy_s_1_1 + 2)
	lcall	__gptrget
	mov	r5,a
;	genPlus
;	genPlusIncr
	inc	_memcpy_s_1_1
	clr	a
	cjne	a,_memcpy_s_1_1,00110$
	inc	(_memcpy_s_1_1 + 1)
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
;	_memcpy.c 75
;	genRet
	mov	dpl,_memcpy_ret_1_1
	mov	dph,(_memcpy_ret_1_1 + 1)
	mov	b,(_memcpy_ret_1_1 + 2)
00104$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
