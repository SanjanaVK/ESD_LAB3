;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:19 2002

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
_strncat_sloc0_1_0::
	.ds 3
_strncat_sloc1_1_0::
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
_strncat_PARM_2::
	.ds 3
_strncat_PARM_3::
	.ds 2
_strncat_front_1_1::
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
;Allocation info for local variables in function 'strncat'
;------------------------------------------------------------
;back                      Allocated to in memory with name '_strncat_PARM_2'
;count                     Allocated to in memory with name '_strncat_PARM_3'
;front                     Allocated to in memory with name '_strncat_front_1_1'
;start                     Allocated to in memory with name '_strncat_start_1_1'
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
	push	b
	push	dph
	push	dpl
	mov	dptr,#_strncat_front_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	_strncat.c 33
;	genAssign
	mov	dptr,#_strncat_front_1_1
	movx	a,@dptr
	mov	_strncat_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_strncat_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_strncat_sloc1_1_0 + 2),a
;	_strncat.c 35
00101$:
;	genAssign
	mov	dptr,#_strncat_front_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
;	genPlus
;	genPlusIncr
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
;	genAssign
	mov	dptr,#_strncat_front_1_1
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	genIfx
	mov	a,r0
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00101$
00117$:
;	_strncat.c 37
;	genMinus
;	genMinusDec
	dec	r5
	cjne	r5,#0xff,00118$
	dec	r6
00118$:
;	genAssign
	mov	dptr,#_strncat_front_1_1
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	_strncat.c 39
;	genAssign
	mov	dptr,#_strncat_PARM_2
	movx	a,@dptr
	mov	_strncat_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_strncat_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_strncat_sloc0_1_0 + 2),a
;	genAssign
;	genAssign
	mov	dptr,#_strncat_PARM_3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
00106$:
;	genAssign
	mov	ar2,r0
	mov	ar3,r1
;	genMinus
;	genMinusDec
	dec	r0
	cjne	r0,#0xff,00119$
	dec	r1
00119$:
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00108$
00120$:
;	_strncat.c 40
;	genPointerGet
;	genGenPointerGet
	mov	dpl,_strncat_sloc0_1_0
	mov	dph,(_strncat_sloc0_1_0 + 1)
	mov	b,(_strncat_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
;	genPlus
;	genPlusIncr
	inc	_strncat_sloc0_1_0
	clr	a
	cjne	a,_strncat_sloc0_1_0,00121$
	inc	(_strncat_sloc0_1_0 + 1)
00121$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	genAssign
	mov	dptr,#_strncat_front_1_1
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	genIfx
	mov	a,r2
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00106$
00122$:
;	_strncat.c 41
;	genRet
	mov	dpl,_strncat_sloc1_1_0
	mov	dph,(_strncat_sloc1_1_0 + 1)
	mov	b,(_strncat_sloc1_1_0 + 2)
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00108$:
;	_strncat.c 43
;	genAssign
	mov	dptr,#_strncat_front_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
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
	mov	dpl,_strncat_sloc1_1_0
	mov	dph,(_strncat_sloc1_1_0 + 1)
	mov	b,(_strncat_sloc1_1_0 + 2)
00109$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
