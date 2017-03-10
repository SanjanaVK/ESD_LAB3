;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:02 2002

;--------------------------------------------------------
	.module malloc
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _init_dynamic_memory_PARM_2
	.globl _free
	.globl _malloc
	.globl _init_dynamic_memory
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
_FIRST_MEMORY_HEADER_PTR:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_init_dynamic_memory_PARM_2::
	.ds 2
	.area	OSEG    (OVR,DATA)
_malloc_size_1_1::
	.ds 2
_malloc_sloc0_1_0::
	.ds 2
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'init_dynamic_memory'
;------------------------------------------------------------
;	malloc.c 148
;	-----------------------------------------
;	 function init_dynamic_memory
;	-----------------------------------------
_init_dynamic_memory:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	malloc.c 180
;	genReceive
	mov	r2,dpl
	mov	r3,dph
;	malloc.c 170
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00102$
00106$:
;	malloc.c 172
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00107$
	inc	r3
00107$:
;	malloc.c 173
;	genMinus
;	genMinusDec
	dec	_init_dynamic_memory_PARM_2
	mov	a,#0xff
	cjne	a,_init_dynamic_memory_PARM_2,00108$
	dec	(_init_dynamic_memory_PARM_2 + 1)
00108$:
00102$:
;	malloc.c 175
;	genAssign
	mov	_FIRST_MEMORY_HEADER_PTR,r2
	mov	(_FIRST_MEMORY_HEADER_PTR + 1),r3
;	malloc.c 177
;	genPlus
	mov	a,_init_dynamic_memory_PARM_2
	add	a,r2
	mov	r4,a
	mov	a,(_init_dynamic_memory_PARM_2 + 1)
	addc	a,r3
	mov	r5,a
;	genMinus
	mov	a,r4
	add	a,#0xfa
	mov	r4,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
;	genPointerSet
;	genFarPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	malloc.c 178
;	genPointerSet
;	genFarPointerSet
	mov	dpl,r4
	mov	dph,r5
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
	clr  a
	movx @dptr,a
	inc  dptr
	movx @dptr,a
;	malloc.c 179
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,r2
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	dph,a
;	genPointerSet
;	genFarPointerSet
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
	clr  a
	movx @dptr,a
	inc  dptr
	movx @dptr,a
;	malloc.c 180
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,r2
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	dph,a
;	genPointerSet
;	genFarPointerSet
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
	clr  a
	movx @dptr,a
	inc  dptr
	movx @dptr,a
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'malloc'
;------------------------------------------------------------
;	malloc.c 183
;	-----------------------------------------
;	 function malloc
;	-----------------------------------------
_malloc:
;	malloc.c 0
;	genReceive
	mov	_malloc_size_1_1,dpl
	mov	(_malloc_size_1_1 + 1),dph
;	malloc.c 188
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0xF9
	subb	a,_malloc_size_1_1
	mov	a,#0xFF
	subb	a,(_malloc_size_1_1 + 1)
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00102$
00122$:
;	genRet
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	ljmp	00114$
00102$:
;	malloc.c 189
;	genPlus
	mov	a,#0x06
	add	a,_malloc_size_1_1
	mov	_malloc_size_1_1,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_malloc_size_1_1 + 1)
	mov	(_malloc_size_1_1 + 1),a
;	malloc.c 190
;	genAssign
	mov	r4,_FIRST_MEMORY_HEADER_PTR
	mov	r5,(_FIRST_MEMORY_HEADER_PTR + 1)
;	malloc.c 191
00108$:
;	malloc.c 201
;	genPointerGet
;	genFarPointerGet
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genCast
	mov	ar0,r6
	mov	ar1,r7
;	malloc.c 202
;	genCast
	mov	ar2,r4
	mov	ar3,r5
;	genMinus
	clr	c
	mov	a,r0
	subb	a,r2
	mov	r0,a
	mov	a,r1
	subb	a,r3
	mov	r1,a
;	malloc.c 203
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,r4
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r5
	mov	r3,a
;	genPointerGet
;	genFarPointerGet
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	_malloc_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_malloc_sloc0_1_0 + 1),a
;	genMinus
	clr	c
	mov	a,r0
	subb	a,_malloc_sloc0_1_0
	mov	r0,a
	mov	a,r1
	subb	a,(_malloc_sloc0_1_0 + 1)
	mov	r1,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r0
	subb	a,_malloc_size_1_1
	mov	a,r1
	subb	a,(_malloc_size_1_1 + 1)
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00109$
00123$:
;	malloc.c 204
;	genAssign
	mov	ar4,r6
	mov	ar5,r7
;	malloc.c 205
;	genPointerGet
;	genFarPointerGet
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
;	genIfx
; Peephole 135   removed redundant mov
	mov  r1,a
	orl  a,r0
;	genIfxJump
	jz	00124$
	ljmp	00108$
00124$:
;	genRet
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	ljmp	00114$
00109$:
;	malloc.c 207
;	genIfx
	mov	a,_malloc_sloc0_1_0
	orl	a,(_malloc_sloc0_1_0 + 1)
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00111$
00125$:
;	malloc.c 209
;	genPointerSet
;	genFarPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	a,_malloc_size_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,(_malloc_size_1_1 + 1)
	movx	@dptr,a
;	malloc.c 210
;	genPlus
	mov	a,#0x06
	add	a,r4
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r5
	mov	dph,a
;	genRet
	ljmp	00114$
00111$:
;	malloc.c 212
;	genPlus
	mov	a,_malloc_sloc0_1_0
	add	a,r4
	mov	r2,a
	mov	a,(_malloc_sloc0_1_0 + 1)
	addc	a,r5
	mov	r3,a
;	malloc.c 213
;	genPointerSet
;	genFarPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	malloc.c 214
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,r2
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	dph,a
;	genPointerSet
;	genFarPointerSet
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	malloc.c 215
;	genPointerSet
;	genFarPointerSet
	mov	dpl,r4
	mov	dph,r5
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	malloc.c 216
;	genIfx
	mov	a,r6
	orl	a,r7
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00113$
00126$:
;	genPointerGet
;	genFarPointerGet
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,r4
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r5
	mov	dph,a
;	genPointerSet
;	genFarPointerSet
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
00113$:
;	malloc.c 217
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,r2
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	dph,a
;	genPointerSet
;	genFarPointerSet
	mov	a,_malloc_size_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,(_malloc_size_1_1 + 1)
	movx	@dptr,a
;	malloc.c 218
;	genPlus
	mov	a,#0x06
	add	a,r2
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	dph,a
;	genRet
00114$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'free'
;------------------------------------------------------------
;	malloc.c 221
;	-----------------------------------------
;	 function free
;	-----------------------------------------
_free:
;	malloc.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
;	malloc.c 224
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
	jnz	00113$
	ljmp	00108$
00113$:
;	malloc.c 226
;	genMinus
	mov	a,r2
	add	a,#0xfa
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
;	malloc.c 227
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,r2
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genIfx
; Peephole 135   removed redundant mov
	mov  r5,a
	orl  a,r4
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00104$
00114$:
;	malloc.c 229
;	genAssign
;	malloc.c 230
;	genPointerGet
;	genFarPointerGet
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genPointerSet
;	genFarPointerSet
	mov	dpl,r4
	mov	dph,r5
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	malloc.c 231
;	genIfx
	mov	a,r6
	orl	a,r7
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00108$
00115$:
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,r6
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r7
	mov	dph,a
;	genPointerSet
;	genFarPointerSet
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00108$
00104$:
;	malloc.c 233
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,r2
	mov	dpl,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	dph,a
;	genPointerSet
;	genFarPointerSet
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
	clr  a
	movx @dptr,a
	inc  dptr
	movx @dptr,a
00108$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
