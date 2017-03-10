;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:17 2002

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
_memset_PARM_2::
	.ds 1
_memset_PARM_3::
	.ds 2
_memset_buf_1_1::
	.ds 3
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
;ch                        Allocated to in memory with name '_memset_PARM_2'
;count                     Allocated to in memory with name '_memset_PARM_3'
;buf                       Allocated to in memory with name '_memset_buf_1_1'
;ret                       Allocated to in memory with name '_memset_ret_1_1'
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
	push	b
	push	dph
	push	dpl
	mov	dptr,#_memset_buf_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_memset.c 32
;	genAssign
	mov	dptr,#_memset_buf_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	_memset.c 34
;	genAssign
	mov	dptr,#_memset_PARM_2
	movx	a,@dptr
	mov	r5,a
;	genAssign
;	genAssign
	mov	dptr,#_memset_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00101$:
;	genAssign
	mov	ar0,r6
	mov	ar1,r7
;	genMinus
;	genMinusDec
	dec	r6
	cjne	r6,#0xff,00108$
	dec	r7
00108$:
;	genIfx
	mov	a,r0
	orl	a,r1
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00103$
00109$:
;	_memset.c 35
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
;	_memset.c 36
; Peephole 132   changed ljmp to sjmp
	sjmp 00101$
00103$:
;	_memset.c 39
;	genAssign
	mov	dptr,#_memset_buf_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
00104$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
