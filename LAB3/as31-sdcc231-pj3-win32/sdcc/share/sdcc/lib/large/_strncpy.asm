;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:19 2002

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
_strncpy_sloc0_1_0::
	.ds 3
_strncpy_sloc1_1_0::
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
_strncpy_PARM_2::
	.ds 3
_strncpy_PARM_3::
	.ds 2
_strncpy_d_1_1::
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
;Allocation info for local variables in function 'strncpy'
;------------------------------------------------------------
;s                         Allocated to in memory with name '_strncpy_PARM_2'
;n                         Allocated to in memory with name '_strncpy_PARM_3'
;d                         Allocated to in memory with name '_strncpy_d_1_1'
;d1                        Allocated to in memory with name '_strncpy_d1_1_1'
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
	push	b
	push	dph
	push	dpl
	mov	dptr,#_strncpy_d_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_strncpy.c 32
;	genAssign
	mov	dptr,#_strncpy_d_1_1
	movx	a,@dptr
	mov	_strncpy_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_strncpy_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_strncpy_sloc1_1_0 + 2),a
;	_strncpy.c 34
;	genAssign
	mov	dptr,#_strncpy_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genAssign
	mov	_strncpy_sloc0_1_0,_strncpy_sloc1_1_0
	mov	(_strncpy_sloc0_1_0 + 1),(_strncpy_sloc1_1_0 + 1)
	mov	(_strncpy_sloc0_1_0 + 2),(_strncpy_sloc1_1_0 + 2)
;	genAssign
	mov	dptr,#_strncpy_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
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
;	genAssign
	mov	dptr,#_strncpy_d_1_1
	mov	a,_strncpy_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_strncpy_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_strncpy_sloc0_1_0 + 2)
	movx	@dptr,a
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00103$
00109$:
;	_strncpy.c 35
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
;	genPlus
;	genPlusIncr
	inc	r5
	cjne	r5,#0x00,00110$
	inc	r6
00110$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,_strncpy_sloc0_1_0
	mov	dph,(_strncpy_sloc0_1_0 + 1)
	mov	b,(_strncpy_sloc0_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	_strncpy_sloc0_1_0,dpl
	mov	(_strncpy_sloc0_1_0 + 1),dph
	mov	(_strncpy_sloc0_1_0 + 2),b
; Peephole 132   changed ljmp to sjmp
	sjmp 00101$
00103$:
;	_strncpy.c 36
;	genRet
	mov	dpl,_strncpy_sloc1_1_0
	mov	dph,(_strncpy_sloc1_1_0 + 1)
	mov	b,(_strncpy_sloc1_1_0 + 2)
00104$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
