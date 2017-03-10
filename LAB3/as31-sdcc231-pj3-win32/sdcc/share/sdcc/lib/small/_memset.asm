;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:58 2002

;--------------------------------------------------------
	.module _memset
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset_PARM_3
	.globl _memset_PARM_2
	.globl _memset
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
_memset_PARM_2::
	.ds 1
_memset_PARM_3::
	.ds 2
_memset_buf_1_1::
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
;Allocation info for local variables in function 'memset'
;------------------------------------------------------------
;	_memset.c 27
;	-----------------------------------------
;	 function memset
;	-----------------------------------------
_memset:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_memset.c 39
;	genReceive
	mov	_memset_buf_1_1,dpl
	mov	(_memset_buf_1_1 + 1),dph
	mov	(_memset_buf_1_1 + 2),b
;	_memset.c 34
;	genAssign
	mov	r5,_memset_buf_1_1
	mov	r6,(_memset_buf_1_1 + 1)
	mov	r7,(_memset_buf_1_1 + 2)
;	genAssign
	mov	r0,_memset_PARM_3
	mov	r1,(_memset_PARM_3 + 1)
00101$:
;	genAssign
	mov	ar2,r0
	mov	ar3,r1
;	genMinus
;	genMinusDec
	dec	r0
	cjne	r0,#0xff,00108$
	dec	r1
00108$:
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00103$
00109$:
;	_memset.c 35
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_memset_PARM_2
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	_memset.c 36
; Peephole 132   changed ljmp to sjmp
	sjmp 00101$
00103$:
;	_memset.c 39
;	genRet
	mov	dpl,_memset_buf_1_1
	mov	dph,(_memset_buf_1_1 + 1)
	mov	b,(_memset_buf_1_1 + 2)
00104$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
