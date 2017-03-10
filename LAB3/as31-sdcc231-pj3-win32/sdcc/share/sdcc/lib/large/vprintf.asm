;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:22 2002

;--------------------------------------------------------
	.module vprintf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _vprintf_PARM_2
	.globl _vsprintf_PARM_3
	.globl _vsprintf_PARM_2
	.globl _vsprintf
	.globl _vprintf
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
_value:
	.ds 5
_vsprintf_sloc0_1_0::
	.ds 2
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
_output_to_string:
	.ds 1
_lower_case:
	.ds 1
_lsd:
	.ds 1
_vsprintf_left_justify_1_1:
	.ds 1
_vsprintf_zero_padding_1_1:
	.ds 1
_vsprintf_prefix_sign_1_1:
	.ds 1
_vsprintf_prefix_space_1_1:
	.ds 1
_vsprintf_signed_argument_1_1:
	.ds 1
_vsprintf_char_argument_1_1:
	.ds 1
_vsprintf_long_argument_1_1:
	.ds 1
_vsprintf_float_argument_1_1:
	.ds 1
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_output_ptr:
	.ds 3
_radix:
	.ds 1
_charsOutputted:
	.ds 2
_vsprintf_PARM_2::
	.ds 3
_vsprintf_PARM_3::
	.ds 1
_vsprintf_buf_1_1::
	.ds 3
_vsprintf_width_1_1::
	.ds 1
_vsprintf_decimals_1_1::
	.ds 1
_vsprintf_length_1_1::
	.ds 1
_vsprintf_c_1_1::
	.ds 1
_vprintf_PARM_2::
	.ds 1
_vprintf_format_1_1::
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
;Allocation info for local variables in function 'output_char'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;	vprintf.c 86
;	-----------------------------------------
;	 function output_char
;	-----------------------------------------
_output_char:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	_bp
	mov	_bp,sp
;	vprintf.c 96
;	genReceive
	mov	r2,dpl
;	vprintf.c 88
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _output_to_string,00102$
00107$:
;	vprintf.c 90
;	genAssign
	mov	dptr,#_output_ptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
;	genPlus
	mov	dptr,#_output_ptr
;	genPlusIncr
	mov	a,#0x01
	add	a,r3
	movx	@dptr,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00102$:
;	vprintf.c 94
;	genCall
	mov	dpl,r2
	lcall	_putchar
00103$:
;	vprintf.c 96
;	genAssign
	mov	dptr,#_charsOutputted
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
	mov	dptr,#_charsOutputted
;	genPlusIncr
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
00104$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_digit'
;------------------------------------------------------------
;n                         Allocated to registers r2 
;	vprintf.c 101
;	-----------------------------------------
;	 function output_digit
;	-----------------------------------------
_output_digit:
	push	_bp
	mov	_bp,sp
;	vprintf.c 104
;	genReceive
	mov	r2,dpl
;	vprintf.c 103
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x09
	subb	a,r2
	clr	a
	rlc	a
;	genNot
; Peephole 105   removed redundant mov
	mov  r3,a
	cjne	a,#0x01,00109$
00109$:
	clr	a
	rlc	a
;	genIfx
; Peephole 105   removed redundant mov
	mov  r3,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00103$
00110$:
;	genPlus
	mov	a,#0x30
	add	a,r2
	mov	r3,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00104$
00103$:
;	vprintf.c 104
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _lower_case,00105$
00111$:
;	genPlus
	mov	a,#0x57
	add	a,r2
	mov	r4,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00106$
00105$:
;	genPlus
	mov	a,#0x37
	add	a,r2
	mov	r4,a
00106$:
;	genAssign
	mov	ar3,r4
00104$:
;	genCall
	mov	dpl,r3
	lcall	_output_char
00101$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_2digits'
;------------------------------------------------------------
;b                         Allocated to registers r2 
;	vprintf.c 109
;	-----------------------------------------
;	 function output_2digits
;	-----------------------------------------
_output_2digits:
	push	_bp
	mov	_bp,sp
;	vprintf.c 112
;	genReceive
	mov	r2,dpl
;	vprintf.c 111
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	mov	a,r2
	swap	a
	anl	a,#0x0f
	mov	r3,a
;	genCall
	mov	dpl,r3
	push	ar2
	lcall	_output_digit
	pop	ar2
;	vprintf.c 112
;	genAnd
	anl	ar2,#0x0F
;	genCall
	mov	dpl,r2
	lcall	_output_digit
00101$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_digit'
;------------------------------------------------------------
;i                         Allocated to in memory with name '_calculate_digit_i_1_1'
;	vprintf.c 117
;	-----------------------------------------
;	 function calculate_digit
;	-----------------------------------------
_calculate_digit:
;	vprintf.c 121
;	genAssign
	mov	r2,#0x20
00103$:
;	genCmpEq
	cjne	r2,#0x00,00112$
; Peephole 132   changed ljmp to sjmp
	sjmp 00107$
00112$:
;	vprintf.c 140
;	genInline
	  clr c
	  mov a,_value+0
	  rlc a
	  mov _value+0,a
	  mov a,_value+1
	  rlc a
	  mov _value+1,a
	  mov a,_value+2
	  rlc a
	  mov _value+2,a
	  mov a,_value+3
	  rlc a
	  mov _value+3,a
	  mov a,_value+4
	  rlc a
	  mov _value+4,a
;	vprintf.c 142
;	genAssign
;	genAssign
	mov	dptr,#_radix
	movx	a,@dptr
	mov	r3,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,0x0004 + _value
	subb	a,r3
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00105$
00113$:
;	vprintf.c 144
;	genAssign
;	genMinus
	clr	c
	mov	a,0x0004 + _value
	subb	a,r3
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_value + 0x0004),a
;	vprintf.c 145
;	genPointerGet
;	genNearPointerGet
;	genDataPointerGet
	mov	r3,_value
;	genPlus
;	genPlusIncr
	mov	a,#0x01
	add	a,r3
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,a
00105$:
;	vprintf.c 121
;	genMinus
;	genMinusDec
	dec	r2
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vsprintf'
;------------------------------------------------------------
;sloc0                     Allocated to in memory with name '_vsprintf_sloc0_1_0'
;format                    Allocated to in memory with name '_vsprintf_PARM_2'
;ap                        Allocated to in memory with name '_vsprintf_PARM_3'
;buf                       Allocated to in memory with name '_vsprintf_buf_1_1'
;width                     Allocated to in memory with name '_vsprintf_width_1_1'
;decimals                  Allocated to in memory with name '_vsprintf_decimals_1_1'
;length                    Allocated to in memory with name '_vsprintf_length_1_1'
;c                         Allocated to in memory with name '_vsprintf_c_1_1'
;	vprintf.c 282
;	-----------------------------------------
;	 function vsprintf
;	-----------------------------------------
_vsprintf:
;	vprintf.c 0
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_vsprintf_buf_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	vprintf.c 299
;	genAssign
; Peephole 229   replaced inefficient 16 bit clear
	mov     dptr,#_charsOutputted
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
;	vprintf.c 301
;	genAssign
; Peephole 231   removed redundant mov to dptr
	mov     dptr,#_vsprintf_buf_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_output_ptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	vprintf.c 302
;	genIfx
	mov	a,r2
	orl	a,r3
	orl	a,r4
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00102$
00287$:
;	vprintf.c 304
;	genAssign
	clr	_output_to_string
; Peephole 132   changed ljmp to sjmp
	sjmp 00225$
00102$:
;	vprintf.c 308
;	genAssign
	setb	_output_to_string
;	vprintf.c 317
00225$:
00209$:
;	genAssign
	mov	dptr,#_vsprintf_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00288$
	inc	r3
00288$:
;	genAssign
	mov	dptr,#_vsprintf_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	genIfx
	mov	a,r5
;	genIfxJump
	jnz	00289$
	ljmp	00211$
00289$:
;	vprintf.c 319
;	genCmpEq
	cjne	r5,#0x25,00290$
	sjmp	00291$
00290$:
	ljmp	00207$
00291$:
;	vprintf.c 321
;	genAssign
	clr	_vsprintf_left_justify_1_1
;	vprintf.c 322
;	genAssign
	clr	_vsprintf_zero_padding_1_1
;	vprintf.c 323
;	genAssign
	clr	_vsprintf_prefix_sign_1_1
;	vprintf.c 324
;	genAssign
	clr	_vsprintf_prefix_space_1_1
;	vprintf.c 325
;	genAssign
	clr	_vsprintf_signed_argument_1_1
;	vprintf.c 326
;	genAssign
	mov	dptr,#_radix
; Peephole 180   changed mov to clr
	clr  a
	movx	@dptr,a
;	vprintf.c 327
;	genAssign
	clr	_vsprintf_char_argument_1_1
;	vprintf.c 328
;	genAssign
	clr	_vsprintf_long_argument_1_1
;	vprintf.c 329
;	genAssign
	clr	_vsprintf_float_argument_1_1
;	vprintf.c 330
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
; Peephole 180   changed mov to clr
	clr  a
	movx	@dptr,a
;	vprintf.c 331
;	genAssign
	mov	dptr,#_vsprintf_decimals_1_1
	mov	a,#0xFF
	movx	@dptr,a
;	vprintf.c 333
;	genAssign
00104$:
;	vprintf.c 335
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	inc	r2
	cjne	r2,#0x00,00292$
	inc	r3
00292$:
;	genAssign
	mov	dptr,#_vsprintf_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	genAssign
	mov	dptr,#_vsprintf_c_1_1
	mov	a,r6
	movx	@dptr,a
;	vprintf.c 337
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne r6,#0x25,00106$
;00293$:
; Peephole 200   removed redundant sjmp
00294$:
;	vprintf.c 338
;	genCall
	mov	dpl,r6
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_output_char
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	vprintf.c 339
	ljmp	00209$
00106$:
;	vprintf.c 342
;	genCall
	mov	dpl,r6
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_isdigit
	mov	a,dpl
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
	jnz	00295$
	ljmp	00113$
00295$:
;	vprintf.c 343
;	genAssign
	mov	dptr,#_vsprintf_decimals_1_1
	movx	a,@dptr
	mov	r7,a
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne r7,#0xFF,00110$
;00296$:
; Peephole 200   removed redundant sjmp
00297$:
;	vprintf.c 344
;	genIpush
	push	ar5
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
	movx	a,@dptr
	mov	r0,a
;	genMult
;	genMultOneByte
	mov	b,#0x0A
	mov	a,r0
	mul	ab
	mov	_vsprintf_sloc0_1_0,a
	mov	(_vsprintf_sloc0_1_0 + 1),b
;	genMinus
	mov	a,r6
	add	a,#0xd0
;	genCast
; Peephole 105   removed redundant mov
	mov  r5,a
	rlc	a
	subb	a,acc
	mov	r0,a
;	genPlus
	mov	a,r5
	add	a,_vsprintf_sloc0_1_0
	mov	r5,a
	mov	a,r0
	addc	a,(_vsprintf_sloc0_1_0 + 1)
	mov	r0,a
;	genCast
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
	mov	a,r5
	movx	@dptr,a
;	vprintf.c 345
;	genCmpEq
	cjne	r5,#0x00,00298$
	mov	a,#0x01
	sjmp	00299$
00298$:
	clr	a
00299$:
;	genIpop
	pop	ar5
;	genIfx
;	genIfxJump
	jnz	00300$
	ljmp	00104$
00300$:
;	vprintf.c 347
;	genAssign
	setb	_vsprintf_zero_padding_1_1
	ljmp	00104$
00110$:
;	vprintf.c 350
;	genIpush
	push	ar5
;	genMult
;	genMultOneByte
	clr	F0
	mov	a,r7
	jnb	acc.7,00301$
	setb	F0
	cpl	a
	inc	a
00301$:
	mov	b,#0x0a
	mul	ab
	jnb	F0,00302$
	cpl	a
	add	a,#1
	xch	a,b
	cpl	a
	addc	a,#0
	xch	a,b
00302$:
	mov	r7,a
	mov	r0,b
;	genMinus
	mov	a,r6
	add	a,#0xd0
;	genCast
; Peephole 105   removed redundant mov
	mov  r1,a
	rlc	a
	subb	a,acc
	mov	r5,a
;	genPlus
	mov	a,r1
	add	a,r7
	mov	r7,a
	mov	a,r5
	addc	a,r0
	mov	r0,a
;	genCast
	mov	dptr,#_vsprintf_decimals_1_1
	mov	a,r7
	movx	@dptr,a
;	vprintf.c 352
;	genIpop
	pop	ar5
	ljmp	00104$
00113$:
;	vprintf.c 355
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne r6,#0x2E,00117$
;00303$:
; Peephole 200   removed redundant sjmp
00304$:
;	vprintf.c 356
;	genAssign
	mov	dptr,#_vsprintf_decimals_1_1
; Peephole 180   changed mov to clr
	clr  a
	movx	@dptr,a
;	vprintf.c 359
	ljmp	00104$
00117$:
;	vprintf.c 362
;	genCall
	mov	dpl,r6
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_islower
	mov	a,dpl
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	clr	c
	jz	00305$
	cpl	c
00305$:
	mov	_lower_case,c
;	vprintf.c 363
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _lower_case,00119$
00306$:
;	vprintf.c 365
;	genAnd
	mov	dptr,#_vsprintf_c_1_1
	mov	a,#0xDF
	anl	a,r6
	movx	@dptr,a
00119$:
;	vprintf.c 368
;	genAssign
	mov	dptr,#_vsprintf_c_1_1
	movx	a,@dptr
	mov	r6,a
;	genCmpEq
	cjne	r6,#0x20,00307$
; Peephole 132   changed ljmp to sjmp
	sjmp 00122$
00307$:
;	genCmpEq
	cjne	r6,#0x2B,00308$
; Peephole 132   changed ljmp to sjmp
	sjmp 00121$
00308$:
;	genCmpEq
	cjne	r6,#0x2D,00309$
; Peephole 132   changed ljmp to sjmp
	sjmp 00120$
00309$:
;	genCmpEq
	cjne	r6,#0x42,00310$
; Peephole 132   changed ljmp to sjmp
	sjmp 00123$
00310$:
;	genCmpEq
	cjne	r6,#0x43,00311$
; Peephole 132   changed ljmp to sjmp
	sjmp 00125$
00311$:
;	genCmpEq
	cjne	r6,#0x44,00312$
	ljmp	00146$
00312$:
;	genCmpEq
	cjne	r6,#0x46,00313$
	ljmp	00151$
00313$:
;	genCmpEq
	cjne	r6,#0x49,00314$
	ljmp	00146$
00314$:
;	genCmpEq
	cjne	r6,#0x4C,00315$
; Peephole 132   changed ljmp to sjmp
	sjmp 00124$
00315$:
;	genCmpEq
	cjne	r6,#0x4F,00316$
	ljmp	00148$
00316$:
;	genCmpEq
	cjne	r6,#0x50,00317$
	ljmp	00142$
00317$:
;	genCmpEq
	cjne	r6,#0x53,00318$
; Peephole 132   changed ljmp to sjmp
	sjmp 00126$
00318$:
;	genCmpEq
	cjne	r6,#0x55,00319$
	ljmp	00149$
00319$:
;	genCmpEq
	cjne	r6,#0x58,00320$
	ljmp	00150$
00320$:
	ljmp	00152$
;	vprintf.c 371
00120$:
;	genAssign
	setb	_vsprintf_left_justify_1_1
;	vprintf.c 372
	ljmp	00104$
;	vprintf.c 374
00121$:
;	genAssign
	setb	_vsprintf_prefix_sign_1_1
;	vprintf.c 375
	ljmp	00104$
;	vprintf.c 377
00122$:
;	genAssign
	setb	_vsprintf_prefix_space_1_1
;	vprintf.c 378
	ljmp	00104$
;	vprintf.c 380
00123$:
;	genAssign
	setb	_vsprintf_char_argument_1_1
;	vprintf.c 381
	ljmp	00104$
;	vprintf.c 383
00124$:
;	genAssign
	setb	_vsprintf_long_argument_1_1
;	vprintf.c 384
	ljmp	00104$
;	vprintf.c 387
00125$:
;	genAssign
	mov	dptr,#_vsprintf_PARM_3
	movx	a,@dptr
;	genMinus
;	genMinusDec
; Peephole 105   removed redundant mov
	mov  r2,a
	add	a,#0xfe
;	genAssign
; Peephole 100   removed redundant mov
	mov  r0,a
	mov  dptr,#_vsprintf_PARM_3
	movx @dptr,a
;	genPointerGet
;	genNearPointerGet
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	dec	r0
;	genCast
;	genCall
	mov	dpl,r2
	push	ar5
	push	ar6
	lcall	_output_char
	pop	ar6
	pop	ar5
;	vprintf.c 388
	ljmp	00153$
;	vprintf.c 391
00126$:
;	genAssign
	mov	dptr,#_vsprintf_PARM_3
	movx	a,@dptr
;	genMinus
;	genMinusDec
; Peephole 105   removed redundant mov
	mov  r2,a
	add	a,#0xfd
;	genAssign
; Peephole 100   removed redundant mov
	mov  r0,a
	mov  dptr,#_vsprintf_PARM_3
	movx @dptr,a
;	genPointerGet
;	genNearPointerGet
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	dec	r0
	dec	r0
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,r2
	mov	(_value + 1),r3
	mov	(_value + 2),r4
;	vprintf.c 401
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar5
	push	ar6
	lcall	_strlen
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar5
;	genCast
;	vprintf.c 403
;	genIfx
;	genIfxJump
; Peephole 112   removed ljmp by inverse jump logic
	jb   _vsprintf_left_justify_1_1,00133$
00321$:
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
	movx	a,@dptr
	mov	r3,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,r3
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00133$
00322$:
;	vprintf.c 405
;	genMinus
	clr	c
	mov	a,r3
	subb	a,r2
	mov	r3,a
;	vprintf.c 406
;	genAssign
00127$:
;	genAssign
	mov	ar4,r3
;	genMinus
;	genMinusDec
	dec	r3
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
	mov	a,r3
	movx	@dptr,a
;	genCmpEq
	cjne	r4,#0x00,00323$
; Peephole 132   changed ljmp to sjmp
	sjmp 00133$
00323$:
;	vprintf.c 408
;	genCall
	mov	dpl,#0x20
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	lcall	_output_char
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar2
;	vprintf.c 412
; Peephole 132   changed ljmp to sjmp
	sjmp 00127$
00133$:
;	genPointerGet
;	genNearPointerGet
;	genDataPointerGet
	mov	r3,_value
	mov	r4,(_value + 1)
	mov	r7,(_value + 2)
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r3,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00135$
00324$:
;	vprintf.c 413
;	genIpush
	push	ar5
;	genPointerGet
;	genNearPointerGet
;	genDataPointerGet
	mov	r3,_value
	mov	r4,(_value + 1)
	mov	r7,(_value + 2)
;	genPlus
;	genPlusIncr
	mov	a,#0x01
	add	a,r3
	mov	r0,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r4
	mov	r1,a
	mov	ar5,r7
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,r0
	mov	(_value + 1),r1
	mov	(_value + 2),r5
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
;	genCall
	mov	dpl,r3
	push	ar2
	push	ar5
	push	ar6
	lcall	_output_char
	pop	ar6
	pop	ar5
	pop	ar2
;	genIpop
	pop	ar5
; Peephole 132   changed ljmp to sjmp
	sjmp 00133$
00135$:
;	vprintf.c 415
;	genIfx
;	genIfxJump
	jb	_vsprintf_left_justify_1_1,00325$
	ljmp	00153$
00325$:
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
	movx	a,@dptr
	mov	r3,a
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,r3
;	genIfxJump
	jc	00326$
	ljmp	00153$
00326$:
;	vprintf.c 417
;	genMinus
	clr	c
	mov	a,r3
	subb	a,r2
	mov	r2,a
;	vprintf.c 418
;	genAssign
00136$:
;	genAssign
	mov	ar3,r2
;	genMinus
;	genMinusDec
	dec	r2
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
	mov	a,r2
	movx	@dptr,a
;	genCmpEq
	cjne	r3,#0x00,00327$
	ljmp	00153$
00327$:
;	vprintf.c 420
;	genCall
	mov	dpl,#0x20
	push	ar2
	push	ar5
	push	ar6
	lcall	_output_char
	pop	ar6
	pop	ar5
	pop	ar2
;	vprintf.c 426
; Peephole 132   changed ljmp to sjmp
	sjmp 00136$
00142$:
;	genAssign
	mov	dptr,#_vsprintf_PARM_3
	movx	a,@dptr
;	genMinus
;	genMinusDec
; Peephole 105   removed redundant mov
	mov  r2,a
	add	a,#0xfd
;	genAssign
; Peephole 100   removed redundant mov
	mov  r0,a
	mov  dptr,#_vsprintf_PARM_3
	movx @dptr,a
;	genPointerGet
;	genNearPointerGet
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	dec	r0
	dec	r0
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,r2
	mov	(_value + 1),r3
	mov	(_value + 2),r4
;	vprintf.c 437
;	genAssign
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x03
	subb	a,0x0002 + _value
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00217$
00328$:
;	genAssign
	mov	r2,#0x04
; Peephole 132   changed ljmp to sjmp
	sjmp 00218$
00217$:
;	genPointerGet
;	genNearPointerGet
;	genDataPointerGet
	mov	r2,(_value + 0x0002)
00218$:
;	genPlus
	mov	a,r2
; Peephole 180   changed mov to clr
;	genPointerGet
;	genCodePointerGet
; Peephole 186   optimized movc sequence
	mov  dptr,#_memory_id
	movc a,@a+dptr
	mov	r2,a
;	genCall
	mov	dpl,r2
	push	ar5
	push	ar6
	lcall	_output_char
	pop	ar6
	pop	ar5
;	vprintf.c 438
;	genCall
	mov	dpl,#0x3A
	push	ar5
	push	ar6
	lcall	_output_char
	pop	ar6
	pop	ar5
;	vprintf.c 439
;	genCall
	mov	dpl,#0x30
	push	ar5
	push	ar6
	lcall	_output_char
	pop	ar6
	pop	ar5
;	vprintf.c 440
;	genCall
	mov	dpl,#0x78
	push	ar5
	push	ar6
	lcall	_output_char
	pop	ar6
	pop	ar5
;	vprintf.c 441
;	genAssign
;	genCmpEq
	mov	a,0x0002 + _value
; Peephole 110   removed ljmp by inverse jump logic
	jz  00144$
00329$:
;	vprintf.c 442
;	genAssign
;	genCmpEq
	mov	a,0x0002 + _value
	cjne	a,#0x03,00330$
; Peephole 132   changed ljmp to sjmp
	sjmp 00144$
00330$:
;	vprintf.c 443
;	genAssign
;	genCall
	mov	dpl,0x0001 + _value
	push	ar5
	push	ar6
	lcall	_output_2digits
	pop	ar6
	pop	ar5
00144$:
;	vprintf.c 444
;	genAssign
;	genCall
	mov	dpl,_value
	push	ar5
	push	ar6
	lcall	_output_2digits
	pop	ar6
	pop	ar5
;	vprintf.c 446
;	vprintf.c 450
; Peephole 132   changed ljmp to sjmp
	sjmp 00153$
00146$:
;	genAssign
	setb	_vsprintf_signed_argument_1_1
;	vprintf.c 451
;	genAssign
	mov	dptr,#_radix
	mov	a,#0x0A
	movx	@dptr,a
;	vprintf.c 452
;	vprintf.c 455
; Peephole 132   changed ljmp to sjmp
	sjmp 00153$
00148$:
;	genAssign
	mov	dptr,#_radix
	mov	a,#0x08
	movx	@dptr,a
;	vprintf.c 456
;	vprintf.c 459
; Peephole 132   changed ljmp to sjmp
	sjmp 00153$
00149$:
;	genAssign
	mov	dptr,#_radix
	mov	a,#0x0A
	movx	@dptr,a
;	vprintf.c 460
;	vprintf.c 463
; Peephole 132   changed ljmp to sjmp
	sjmp 00153$
00150$:
;	genAssign
	mov	dptr,#_radix
	mov	a,#0x10
	movx	@dptr,a
;	vprintf.c 464
;	vprintf.c 467
; Peephole 132   changed ljmp to sjmp
	sjmp 00153$
00151$:
;	genAssign
	setb	_vsprintf_float_argument_1_1
;	vprintf.c 468
;	vprintf.c 472
; Peephole 132   changed ljmp to sjmp
	sjmp 00153$
00152$:
;	genCall
	mov	dpl,r6
	push	ar5
	lcall	_output_char
	pop	ar5
;	vprintf.c 474
00153$:
;	vprintf.c 476
;	genIfx
;	genIfxJump
	jb	_vsprintf_float_argument_1_1,00331$
	ljmp	00204$
00331$:
;	vprintf.c 477
;	genAssign
	mov	dptr,#_vsprintf_PARM_3
	movx	a,@dptr
;	genMinus
;	genMinusDec
; Peephole 105   removed redundant mov
	mov  r2,a
	add	a,#0xfc
;	genAssign
; Peephole 100   removed redundant mov
	mov  r0,a
	mov  dptr,#_vsprintf_PARM_3
	movx @dptr,a
;	genPointerGet
;	genNearPointerGet
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	dec	r0
	dec	r0
	dec	r0
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,r2
	mov	(_value + 1),r3
	mov	(_value + 2),r4
	mov	(_value + 3),r6
;	vprintf.c 479
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,#__str_0
	mov	(_value + 1),#(__str_0 >> 8)
	mov	(_value + 2),#0x02
;	vprintf.c 480
00154$:
;	genPointerGet
;	genNearPointerGet
;	genDataPointerGet
	mov	r2,_value
	mov	r3,(_value + 1)
	mov	r4,(_value + 2)
;	genPlus
;	genPlusIncr
	mov	a,#0x01
	add	a,r2
	mov	r6,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,r6
	mov	(_value + 1),r7
	mov	(_value + 2),r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r2,a
;	genIfxJump
	jnz	00332$
	ljmp	00209$
00332$:
;	vprintf.c 481
;	genCall
	mov	dpl,r2
	push	ar5
	lcall	_output_char
	pop	ar5
; Peephole 132   changed ljmp to sjmp
	sjmp 00154$
00204$:
;	vprintf.c 492
;	genAssign
	mov	dptr,#_radix
	movx	a,@dptr
	mov	r2,a
;	genCmpEq
	cjne	r2,#0x00,00333$
	ljmp	00209$
00333$:
;	vprintf.c 498
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _vsprintf_char_argument_1_1,00165$
00334$:
;	vprintf.c 500
;	genAssign
	mov	dptr,#_vsprintf_PARM_3
	movx	a,@dptr
;	genMinus
;	genMinusDec
; Peephole 105   removed redundant mov
	mov  r2,a
	dec	a
;	genAssign
; Peephole 100   removed redundant mov
	mov  r0,a
	mov  dptr,#_vsprintf_PARM_3
	movx @dptr,a
;	genPointerGet
;	genNearPointerGet
	mov	ar2,@r0
;	genCast
	mov	a,r2
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r4,a
	mov	r6,a
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,r2
	mov	(_value + 1),r3
	mov	(_value + 2),r4
	mov	(_value + 3),r6
;	vprintf.c 501
;	genIfx
;	genIfxJump
	jnb	_vsprintf_signed_argument_1_1,00335$
	ljmp	00166$
00335$:
;	vprintf.c 503
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_value + 0x0001),#0x00
;	vprintf.c 504
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_value + 0x0002),#0x00
;	vprintf.c 505
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_value + 0x0003),#0x00
	ljmp	00166$
00165$:
;	vprintf.c 508
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _vsprintf_long_argument_1_1,00162$
00336$:
;	vprintf.c 510
;	genAssign
	mov	dptr,#_vsprintf_PARM_3
	movx	a,@dptr
;	genMinus
;	genMinusDec
; Peephole 105   removed redundant mov
	mov  r2,a
	add	a,#0xfc
;	genAssign
; Peephole 100   removed redundant mov
	mov  r0,a
	mov  dptr,#_vsprintf_PARM_3
	movx @dptr,a
;	genPointerGet
;	genNearPointerGet
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	dec	r0
	dec	r0
	dec	r0
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,r2
	mov	(_value + 1),r3
	mov	(_value + 2),r4
	mov	(_value + 3),r6
; Peephole 132   changed ljmp to sjmp
	sjmp 00166$
00162$:
;	vprintf.c 514
;	genAssign
	mov	dptr,#_vsprintf_PARM_3
	movx	a,@dptr
;	genMinus
;	genMinusDec
; Peephole 105   removed redundant mov
	mov  r2,a
	add	a,#0xfe
;	genAssign
; Peephole 100   removed redundant mov
	mov  r0,a
	mov  dptr,#_vsprintf_PARM_3
	movx @dptr,a
;	genPointerGet
;	genNearPointerGet
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	dec	r0
;	genCast
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r6,a
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,r2
	mov	(_value + 1),r3
	mov	(_value + 2),r4
	mov	(_value + 3),r6
;	vprintf.c 515
;	genIfx
;	genIfxJump
; Peephole 112   removed ljmp by inverse jump logic
	jb   _vsprintf_signed_argument_1_1,00166$
00337$:
;	vprintf.c 517
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_value + 0x0002),#0x00
;	vprintf.c 518
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_value + 0x0003),#0x00
00166$:
;	vprintf.c 522
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _vsprintf_signed_argument_1_1,00171$
00338$:
;	vprintf.c 524
;	genAssign
;	genCmpLt
;	genCmp
	mov	a,(_value + 3)
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00168$
00339$:
;	vprintf.c 525
;	genUminus
	clr	c
	clr	a
	subb	a,_value
	mov	r2,a
	clr	a
	subb	a,(_value + 1)
	mov	r3,a
	clr	a
	subb	a,(_value + 2)
	mov	r4,a
	clr	a
	subb	a,(_value + 3)
	mov	r6,a
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,r2
	mov	(_value + 1),r3
	mov	(_value + 2),r4
	mov	(_value + 3),r6
; Peephole 132   changed ljmp to sjmp
	sjmp 00171$
00168$:
;	vprintf.c 527
;	genAssign
	clr	_vsprintf_signed_argument_1_1
00171$:
;	vprintf.c 530
;	genAssign
	mov	dptr,#_vsprintf_length_1_1
; Peephole 180   changed mov to clr
	clr  a
	movx	@dptr,a
;	vprintf.c 531
;	genAssign
	setb	_lsd
;	vprintf.c 534
00175$:
;	vprintf.c 535
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_value + 0x0004),#0x00
;	vprintf.c 536
;	genCall
	push	ar5
	lcall	_calculate_digit
	pop	ar5
;	vprintf.c 550
;	genInline
	  jb _lsd,1$
	  pop b ; b = <lsd>
	  mov a,_value+4 ; a = <msd>
	  swap a
	  orl b,a ; b = <msd><lsd>
	  push b
	  sjmp 2$
1$:
	  mov a,_value+4 ; a = <lsd>
	  push acc
2$:
;	vprintf.c 552
;	genAssign
	mov	dptr,#_vsprintf_length_1_1
	movx	a,@dptr
;	genPlus
;	genPlusIncr
; Peephole 185   changed order of increment (acc incremented also!)
	inc  a
	mov  r2,a
;	genAssign
	mov	dptr,#_vsprintf_length_1_1
	mov	a,r2
	movx	@dptr,a
;	vprintf.c 553
;	genCpl
; Peephole 167   removed redundant bit moves (c not set to _lsd)
	cpl  _lsd 
;	vprintf.c 554
;	genAssign
;	genCmpEq
	mov	a,_value
; Peephole 162   removed sjmp by inverse jump logic
	jz   00341$
00340$:
; Peephole 132   changed ljmp to sjmp
	sjmp 00175$
00341$:
;	genAssign
;	genCmpEq
	mov	a,0x0001 + _value
; Peephole 162   removed sjmp by inverse jump logic
	jz   00343$
00342$:
; Peephole 132   changed ljmp to sjmp
	sjmp 00175$
00343$:
;	vprintf.c 555
;	genAssign
;	genCmpEq
	mov	a,0x0002 + _value
; Peephole 162   removed sjmp by inverse jump logic
	jz   00345$
00344$:
; Peephole 132   changed ljmp to sjmp
	sjmp 00175$
00345$:
;	genAssign
;	genCmpEq
	mov	a,0x0003 + _value
; Peephole 162   removed sjmp by inverse jump logic
	jz   00347$
00346$:
; Peephole 132   changed ljmp to sjmp
	sjmp 00175$
00347$:
;	vprintf.c 557
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
	movx	a,@dptr
	mov	r3,a
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne r3,#0x00,00179$
;00348$:
; Peephole 200   removed redundant sjmp
00349$:
;	vprintf.c 562
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
	mov	a,#0x01
	movx	@dptr,a
00179$:
;	vprintf.c 566
;	genIfx
;	genIfxJump
; Peephole 112   removed ljmp by inverse jump logic
	jb   _vsprintf_zero_padding_1_1,00184$
00350$:
;	vprintf.c 568
;	genPlus
;	genPlusIncr
	mov	a,#0x01
	add	a,r2
	mov	r3,a
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
	movx	a,@dptr
	mov	r4,a
00180$:
;	genCmpGt
;	genCmp
	clr	c
	mov	a,r3
	subb	a,r4
	clr	a
	rlc	a
	mov	r3,a
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
	mov	a,r4
	movx	@dptr,a
;	genIfx
	mov	a,r3
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00184$
00351$:
;	vprintf.c 570
;	genCall
	mov	dpl,#0x20
	push	ar2
	push	ar4
	push	ar5
	lcall	_output_char
	pop	ar5
	pop	ar4
	pop	ar2
;	vprintf.c 571
;	genMinus
;	genMinusDec
	dec	r4
; Peephole 132   changed ljmp to sjmp
	sjmp 00180$
00184$:
;	vprintf.c 575
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _vsprintf_signed_argument_1_1,00193$
00352$:
;	vprintf.c 577
;	genCall
	mov	dpl,#0x2D
	push	ar2
	push	ar5
	lcall	_output_char
	pop	ar5
	pop	ar2
;	vprintf.c 579
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
	movx	a,@dptr
;	genMinus
;	genMinusDec
; Peephole 105   removed redundant mov
	mov  r3,a
	dec	a
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
	movx	@dptr,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00283$
00193$:
;	vprintf.c 581
;	genCmpEq
	cjne	r2,#0x00,00353$
; Peephole 132   changed ljmp to sjmp
	sjmp 00283$
00353$:
;	vprintf.c 584
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _vsprintf_prefix_sign_1_1,00188$
00354$:
;	vprintf.c 586
;	genCall
	mov	dpl,#0x2B
	push	ar5
	lcall	_output_char
	pop	ar5
;	vprintf.c 588
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
	movx	a,@dptr
;	genMinus
;	genMinusDec
; Peephole 105   removed redundant mov
	mov  r2,a
	dec	a
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
	movx	@dptr,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00283$
00188$:
;	vprintf.c 590
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _vsprintf_prefix_space_1_1,00283$
00355$:
;	vprintf.c 592
;	genCall
	mov	dpl,#0x20
	push	ar5
	lcall	_output_char
	pop	ar5
;	vprintf.c 594
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
	movx	a,@dptr
;	genMinus
;	genMinusDec
; Peephole 105   removed redundant mov
	mov  r2,a
	dec	a
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
	movx	@dptr,a
;	vprintf.c 599
00283$:
;	genAssign
	mov	dptr,#_vsprintf_length_1_1
	movx	a,@dptr
	mov	r2,a
;	genAssign
	mov	dptr,#_vsprintf_width_1_1
	movx	a,@dptr
	mov	r3,a
00195$:
;	genAssign
	mov	ar4,r3
;	genMinus
;	genMinusDec
	dec	r3
;	genCmpGt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,r4
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00285$
00356$:
;	vprintf.c 601
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _vsprintf_zero_padding_1_1,00219$
00357$:
;	genAssign
	mov	r4,#0x30
; Peephole 132   changed ljmp to sjmp
	sjmp 00220$
00219$:
;	genAssign
	mov	r4,#0x20
00220$:
;	genCall
	mov	dpl,r4
	push	ar2
	push	ar3
	push	ar5
	lcall	_output_char
	pop	ar5
	pop	ar3
	pop	ar2
;	vprintf.c 605
; Peephole 132   changed ljmp to sjmp
	sjmp 00195$
00285$:
;	genAssign
00198$:
;	genAssign
	mov	ar3,r2
;	genMinus
;	genMinusDec
	dec	r2
;	genIfx
	mov	a,r3
;	genIfxJump
	jnz	00358$
	ljmp	00209$
00358$:
;	vprintf.c 607
;	genCpl
; Peephole 167   removed redundant bit moves (c not set to _lsd)
	cpl  _lsd 
;	vprintf.c 622
;	genInline
	  jb _lsd,3$
	  pop acc ; a = <msd><lsd>
	  nop ; to disable the "optimizer"
	  push acc
	  swap a
	  anl a,#0x0F ; a = <msd>
	  sjmp 4$
3$:
	  pop acc
	  anl a,#0x0F ; a = <lsd>
4$:
	  mov _value+4,a
;	vprintf.c 624
;	genAssign
;	genCall
	mov	dpl,0x0004 + _value
	push	ar2
	push	ar5
	lcall	_output_digit
	pop	ar5
	pop	ar2
; Peephole 132   changed ljmp to sjmp
	sjmp 00198$
00207$:
;	vprintf.c 631
;	genCall
	mov	dpl,r5
	lcall	_output_char
	ljmp	00209$
00211$:
;	vprintf.c 637
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _output_to_string,00213$
00359$:
;	vprintf.c 638
;	genCall
	mov	dpl,#0x00
	lcall	_output_char
;	vprintf.c 639
;	genAssign
	mov	dptr,#_charsOutputted
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genMinus
;	genMinusDec
	dec	r2
	cjne	r2,#0xff,00360$
	dec	r3
00360$:
;	genRet
	mov	dpl,r2
	mov	dph,r3
; Peephole 132   changed ljmp to sjmp
	sjmp 00215$
00213$:
;	vprintf.c 641
;	genAssign
	mov	dptr,#_charsOutputted
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genRet
	mov	dpl,r2
	mov	dph,r3
00215$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vprintf'
;------------------------------------------------------------
;ap                        Allocated to in memory with name '_vprintf_PARM_2'
;format                    Allocated to in memory with name '_vprintf_format_1_1'
;	vprintf.c 647
;	-----------------------------------------
;	 function vprintf
;	-----------------------------------------
_vprintf:
;	vprintf.c 649
;	genReceive
	push	b
	push	dph
	push	dpl
	mov	dptr,#_vprintf_format_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	genAssign
	mov	dptr,#_vprintf_format_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	dptr,#_vprintf_PARM_2
	movx	a,@dptr
	mov	r5,a
;	genAssign
	mov	dptr,#_vsprintf_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	genAssign
	mov	dptr,#_vsprintf_PARM_3
	mov	a,r5
	movx	@dptr,a
;	genCall
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	mov	b,#0x00
	lcall	_vsprintf
;	genRet
; Peephole 151   removed misc moves via dph, dpl before return
00101$:
	ret
	.area CSEG    (CODE)
_memory_id:
	.ascii "IXCP-"
	.db 0x00
__str_0:
	.ascii "<NO FLOAT>"
	.db 0x00
	.area	XINIT   (CODE)
