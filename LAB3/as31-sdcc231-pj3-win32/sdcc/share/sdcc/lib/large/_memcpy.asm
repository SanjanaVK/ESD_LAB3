;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:17 2002

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
_memcpy_sloc0_1_0::
	.ds 3
_memcpy_sloc1_1_0::
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
_memcpy_PARM_2::
	.ds 3
_memcpy_PARM_3::
	.ds 2
_memcpy_dst_1_1::
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
;Allocation info for local variables in function 'memcpy'
;------------------------------------------------------------
;src                       Allocated to in memory with name '_memcpy_PARM_2'
;acount                    Allocated to in memory with name '_memcpy_PARM_3'
;dst                       Allocated to in memory with name '_memcpy_dst_1_1'
;ret                       Allocated to in memory with name '_memcpy_ret_1_1'
;d                         Allocated to in memory with name '_memcpy_d_1_1'
;s                         Allocated to in memory with name '_memcpy_s_1_1'
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
	push	b
	push	dph
	push	dpl
	mov	dptr,#_memcpy_dst_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_memcpy.c 64
;	genAssign
	mov	dptr,#_memcpy_dst_1_1
	movx	a,@dptr
	mov	_memcpy_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_memcpy_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_memcpy_sloc1_1_0 + 2),a
;	_memcpy.c 66
;	genAssign
	mov	dptr,#_memcpy_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	_memcpy.c 71
;	genAssign
;	genAssign
	mov	_memcpy_sloc0_1_0,_memcpy_sloc1_1_0
	mov	(_memcpy_sloc0_1_0 + 1),(_memcpy_sloc1_1_0 + 1)
	mov	(_memcpy_sloc0_1_0 + 2),(_memcpy_sloc1_1_0 + 2)
;	genAssign
	mov	dptr,#_memcpy_PARM_3
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
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00103$
00109$:
;	_memcpy.c 72
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
	mov	dpl,_memcpy_sloc0_1_0
	mov	dph,(_memcpy_sloc0_1_0 + 1)
	mov	b,(_memcpy_sloc0_1_0 + 2)
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	_memcpy_sloc0_1_0,dpl
	mov	(_memcpy_sloc0_1_0 + 1),dph
	mov	(_memcpy_sloc0_1_0 + 2),b
; Peephole 132   changed ljmp to sjmp
	sjmp 00101$
00103$:
;	_memcpy.c 75
;	genRet
	mov	dpl,_memcpy_sloc1_1_0
	mov	dph,(_memcpy_sloc1_1_0 + 1)
	mov	b,(_memcpy_sloc1_1_0 + 2)
00104$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
