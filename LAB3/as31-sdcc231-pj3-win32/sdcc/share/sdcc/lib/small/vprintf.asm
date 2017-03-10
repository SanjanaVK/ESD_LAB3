;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:03 2002

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
_output_ptr:
	.ds 3
_value:
	.ds 5
_radix:
	.ds 1
_charsOutputted:
	.ds 2
_vsprintf_PARM_2::
	.ds 3
_vsprintf_PARM_3::
	.ds 1
_vsprintf_decimals_1_1::
	.ds 1
_vsprintf_c_1_1::
	.ds 1
_vprintf_PARM_2::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
	mov	r3,_output_ptr
	mov	r4,(_output_ptr + 1)
	mov	r5,(_output_ptr + 2)
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r2
	lcall	__gptrput
;	genPlus
;	genPlusIncr
	inc	_output_ptr
	clr	a
	cjne	a,_output_ptr,00108$
	inc	(_output_ptr + 1)
00108$:
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00102$:
;	vprintf.c 94
;	genCall
	mov	dpl,r2
	lcall	_putchar
00103$:
;	vprintf.c 96
;	genPlus
;	genPlusIncr
	inc	_charsOutputted
	clr	a
	cjne	a,_charsOutputted,00109$
	inc	(_charsOutputted + 1)
00109$:
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
	mov	dpl,a
;	genCall
	push	ar2
	lcall	_output_digit
	pop	ar2
;	vprintf.c 112
;	genAnd
	mov	a,#0x0F
	anl	a,r2
	mov	dpl,a
;	genCall
	lcall	_output_digit
00101$:
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_digit'
;------------------------------------------------------------
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
;	genCmpGt
;	genCmp
	clr	c
	mov	a,0x0004 + _value
	subb	a,_radix
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
	subb	a,_radix
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
;format                    Allocated to in memory with name '_vsprintf_PARM_2'
;ap                        Allocated to in memory with name '_vsprintf_PARM_3'
;buf                       Allocated to registers r2 r3 r4 
;width                     Allocated to registers r5 
;decimals                  Allocated to in memory with name '_vsprintf_decimals_1_1'
;length                    Allocated to registers r2 
;c                         Allocated to in memory with name '_vsprintf_c_1_1'
;	vprintf.c 282
;	-----------------------------------------
;	 function vsprintf
;	-----------------------------------------
_vsprintf:
;	vprintf.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	vprintf.c 299
;	genAssign
	clr	a
	mov	(_charsOutputted + 1),a
	mov	_charsOutputted,a
;	vprintf.c 301
;	genAssign
	mov	_output_ptr,r2
	mov	(_output_ptr + 1),r3
	mov	(_output_ptr + 2),r4
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
	mov	r2,_vsprintf_PARM_2
	mov	r3,(_vsprintf_PARM_2 + 1)
	mov	r4,(_vsprintf_PARM_2 + 2)
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
	mov	_vsprintf_PARM_2,r2
	mov	(_vsprintf_PARM_2 + 1),r3
	mov	(_vsprintf_PARM_2 + 2),r4
;	genAssign
	mov	_vsprintf_c_1_1,r5
;	genIfx
	mov	a,r5
;	genIfxJump
	jnz	00289$
	ljmp	00211$
00289$:
;	vprintf.c 319
;	genCmpEq
	mov	a,_vsprintf_c_1_1
	cjne	a,#0x25,00290$
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
	mov	_radix,#0x00
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
	mov	r5,#0x00
;	vprintf.c 331
;	genAssign
	mov	_vsprintf_decimals_1_1,#0xFF
;	vprintf.c 333
;	genAssign
	mov	_vsprintf_PARM_2,r2
	mov	(_vsprintf_PARM_2 + 1),r3
	mov	(_vsprintf_PARM_2 + 2),r4
00104$:
;	vprintf.c 335
;	genPointerGet
;	genGenPointerGet
	mov	dpl,_vsprintf_PARM_2
	mov	dph,(_vsprintf_PARM_2 + 1)
	mov	b,(_vsprintf_PARM_2 + 2)
	lcall	__gptrget
	mov	_vsprintf_c_1_1,a
;	genPlus
;	genPlusIncr
	inc	_vsprintf_PARM_2
	clr	a
	cjne	a,_vsprintf_PARM_2,00292$
	inc	(_vsprintf_PARM_2 + 1)
00292$:
;	genAssign
;	vprintf.c 337
;	genCmpEq
	mov	a,_vsprintf_c_1_1
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne a,#0x25,00106$
;00293$:
; Peephole 200   removed redundant sjmp
00294$:
;	vprintf.c 338
;	genCall
	mov	dpl,_vsprintf_c_1_1
	push	ar5
	lcall	_output_char
	pop	ar5
;	vprintf.c 339
	ljmp	00209$
00106$:
;	vprintf.c 342
;	genCall
	mov	dpl,_vsprintf_c_1_1
	push	ar5
	lcall	_isdigit
	mov	a,dpl
	pop	ar5
;	genIfx
;	genIfxJump
	jnz	00295$
	ljmp	00113$
00295$:
;	vprintf.c 343
;	genCmpEq
	mov	a,_vsprintf_decimals_1_1
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne a,#0xFF,00110$
;00296$:
; Peephole 200   removed redundant sjmp
00297$:
;	vprintf.c 344
;	genMult
;	genMultOneByte
	mov	b,#0x0A
	mov	a,r5
	mul	ab
	mov	r0,a
	mov	r1,b
;	genMinus
	mov	a,_vsprintf_c_1_1
	add	a,#0xd0
;	genCast
; Peephole 105   removed redundant mov
	mov  r7,a
	rlc	a
	subb	a,acc
	mov	r2,a
;	genPlus
	mov	a,r7
	add	a,r0
	mov	r0,a
	mov	a,r2
	addc	a,r1
	mov	r1,a
;	genCast
	mov	ar5,r0
;	vprintf.c 345
;	genCmpEq
	cjne	r5,#0x00,00298$
	sjmp	00299$
00298$:
	ljmp	00104$
00299$:
;	vprintf.c 347
;	genAssign
	setb	_vsprintf_zero_padding_1_1
	ljmp	00104$
00110$:
;	vprintf.c 350
;	genMult
;	genMultOneByte
	clr	F0
	mov	a,_vsprintf_decimals_1_1
	jnb	acc.7,00300$
	setb	F0
	cpl	a
	inc	a
00300$:
	mov	b,#0x0a
	mul	ab
	jnb	F0,00301$
	cpl	a
	add	a,#1
	xch	a,b
	cpl	a
	addc	a,#0
	xch	a,b
00301$:
	mov	r2,a
	mov	r3,b
;	genMinus
	mov	a,_vsprintf_c_1_1
	add	a,#0xd0
;	genCast
; Peephole 105   removed redundant mov
	mov  r4,a
	rlc	a
	subb	a,acc
	mov	r7,a
;	genPlus
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
;	genCast
	mov	_vsprintf_decimals_1_1,r2
;	vprintf.c 352
	ljmp	00104$
00113$:
;	vprintf.c 355
;	genCmpEq
	mov	a,_vsprintf_c_1_1
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne a,#0x2E,00117$
;00302$:
; Peephole 200   removed redundant sjmp
00303$:
;	vprintf.c 356
;	genAssign
	mov	_vsprintf_decimals_1_1,#0x00
;	vprintf.c 359
	ljmp	00104$
00117$:
;	vprintf.c 362
;	genCall
	mov	dpl,_vsprintf_c_1_1
	push	ar5
	lcall	_islower
	mov	a,dpl
	pop	ar5
;	genAssign
	clr	c
	jz	00304$
	cpl	c
00304$:
	mov	_lower_case,c
;	vprintf.c 363
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _lower_case,00119$
00305$:
;	vprintf.c 365
;	genAnd
	anl	_vsprintf_c_1_1,#0xDF
00119$:
;	vprintf.c 368
;	genCmpEq
	mov	a,_vsprintf_c_1_1
	cjne	a,#0x20,00306$
	ljmp	00122$
00306$:
;	genCmpEq
	mov	a,_vsprintf_c_1_1
	cjne	a,#0x2B,00307$
; Peephole 132   changed ljmp to sjmp
	sjmp 00121$
00307$:
;	genCmpEq
	mov	a,_vsprintf_c_1_1
	cjne	a,#0x2D,00308$
; Peephole 132   changed ljmp to sjmp
	sjmp 00120$
00308$:
;	genCmpEq
	mov	a,_vsprintf_c_1_1
	cjne	a,#0x42,00309$
; Peephole 132   changed ljmp to sjmp
	sjmp 00123$
00309$:
;	genCmpEq
	mov	a,_vsprintf_c_1_1
	cjne	a,#0x43,00310$
; Peephole 132   changed ljmp to sjmp
	sjmp 00125$
00310$:
;	genCmpEq
	mov	a,_vsprintf_c_1_1
	cjne	a,#0x44,00311$
	ljmp	00146$
00311$:
;	genCmpEq
	mov	a,_vsprintf_c_1_1
	cjne	a,#0x46,00312$
	ljmp	00151$
00312$:
;	genCmpEq
	mov	a,_vsprintf_c_1_1
	cjne	a,#0x49,00313$
	ljmp	00146$
00313$:
;	genCmpEq
	mov	a,_vsprintf_c_1_1
	cjne	a,#0x4C,00314$
; Peephole 132   changed ljmp to sjmp
	sjmp 00124$
00314$:
;	genCmpEq
	mov	a,_vsprintf_c_1_1
	cjne	a,#0x4F,00315$
	ljmp	00148$
00315$:
;	genCmpEq
	mov	a,_vsprintf_c_1_1
	cjne	a,#0x50,00316$
	ljmp	00142$
00316$:
;	genCmpEq
	mov	a,_vsprintf_c_1_1
	cjne	a,#0x53,00317$
; Peephole 132   changed ljmp to sjmp
	sjmp 00126$
00317$:
;	genCmpEq
	mov	a,_vsprintf_c_1_1
	cjne	a,#0x55,00318$
	ljmp	00149$
00318$:
;	genCmpEq
	mov	a,_vsprintf_c_1_1
	cjne	a,#0x58,00319$
	ljmp	00150$
00319$:
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
;	genMinus
;	genMinusDec
	mov	a,_vsprintf_PARM_3
	add	a,#0xfe
	mov	r0,a
;	genAssign
	mov	_vsprintf_PARM_3,r0
;	genPointerGet
;	genNearPointerGet
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	dec	r0
;	genCast
	mov	dpl,r2
;	genCall
	push	ar5
	lcall	_output_char
	pop	ar5
;	vprintf.c 388
	ljmp	00153$
;	vprintf.c 391
00126$:
;	genMinus
;	genMinusDec
	mov	a,_vsprintf_PARM_3
	add	a,#0xfd
	mov	r0,a
;	genAssign
	mov	_vsprintf_PARM_3,r0
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
	lcall	_strlen
	mov	r2,dpl
	mov	r3,dph
	pop	ar5
;	genCast
;	vprintf.c 403
;	genIfx
;	genIfxJump
; Peephole 112   removed ljmp by inverse jump logic
	jb   _vsprintf_left_justify_1_1,00133$
00320$:
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,r5
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00133$
00321$:
;	vprintf.c 405
;	genMinus
	clr	c
	mov	a,r5
	subb	a,r2
	mov	r5,a
;	vprintf.c 406
;	genAssign
	mov	ar3,r5
00127$:
;	genAssign
	mov	ar4,r3
;	genMinus
;	genMinusDec
	dec	r3
;	genAssign
	mov	ar5,r3
;	genCmpEq
	cjne	r4,#0x00,00322$
; Peephole 132   changed ljmp to sjmp
	sjmp 00133$
00322$:
;	vprintf.c 408
;	genCall
	mov	dpl,#0x20
	push	ar2
	push	ar3
	push	ar5
	lcall	_output_char
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
00323$:
;	vprintf.c 413
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
	mov	ar6,r7
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,r0
	mov	(_value + 1),r1
	mov	(_value + 2),r6
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
	lcall	_output_char
	pop	ar5
	pop	ar2
; Peephole 132   changed ljmp to sjmp
	sjmp 00133$
00135$:
;	vprintf.c 415
;	genIfx
;	genIfxJump
	jb	_vsprintf_left_justify_1_1,00324$
	ljmp	00153$
00324$:
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,r5
;	genIfxJump
	jc	00325$
	ljmp	00153$
00325$:
;	vprintf.c 417
;	genMinus
	clr	c
	mov	a,r5
	subb	a,r2
	mov	r5,a
;	vprintf.c 418
;	genAssign
	mov	ar3,r5
00136$:
;	genAssign
	mov	ar4,r3
;	genMinus
;	genMinusDec
	dec	r3
;	genAssign
	mov	ar5,r3
;	genCmpEq
	cjne	r4,#0x00,00326$
	ljmp	00153$
00326$:
;	vprintf.c 420
;	genCall
	mov	dpl,#0x20
	push	ar2
	push	ar3
	push	ar5
	lcall	_output_char
	pop	ar5
	pop	ar3
	pop	ar2
;	vprintf.c 426
; Peephole 132   changed ljmp to sjmp
	sjmp 00136$
00142$:
;	genMinus
;	genMinusDec
	mov	a,_vsprintf_PARM_3
	add	a,#0xfd
	mov	r0,a
;	genAssign
	mov	_vsprintf_PARM_3,r0
;	genPointerGet
;	genNearPointerGet
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	dec	r0
	dec	r0
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,r3
	mov	(_value + 1),r4
	mov	(_value + 2),r6
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
00327$:
;	genAssign
	mov	r3,#0x04
; Peephole 132   changed ljmp to sjmp
	sjmp 00218$
00217$:
;	genPointerGet
;	genNearPointerGet
;	genDataPointerGet
	mov	r3,(_value + 0x0002)
00218$:
;	genPlus
	mov	a,r3
; Peephole 180   changed mov to clr
;	genPointerGet
;	genCodePointerGet
; Peephole 186   optimized movc sequence
	mov  dptr,#_memory_id
	movc a,@a+dptr
	mov	r3,a
;	genCall
	mov	dpl,r3
	push	ar2
	push	ar5
	lcall	_output_char
	pop	ar5
	pop	ar2
;	vprintf.c 438
;	genCall
	mov	dpl,#0x3A
	push	ar2
	push	ar5
	lcall	_output_char
	pop	ar5
	pop	ar2
;	vprintf.c 439
;	genCall
	mov	dpl,#0x30
	push	ar2
	push	ar5
	lcall	_output_char
	pop	ar5
	pop	ar2
;	vprintf.c 440
;	genCall
	mov	dpl,#0x78
	push	ar2
	push	ar5
	lcall	_output_char
	pop	ar5
	pop	ar2
;	vprintf.c 441
;	genAssign
;	genCmpEq
	mov	a,0x0002 + _value
; Peephole 110   removed ljmp by inverse jump logic
	jz  00144$
00328$:
;	vprintf.c 442
;	genAssign
;	genCmpEq
	mov	a,0x0002 + _value
	cjne	a,#0x03,00329$
; Peephole 132   changed ljmp to sjmp
	sjmp 00144$
00329$:
;	vprintf.c 443
;	genPointerGet
;	genNearPointerGet
;	genDataPointerGet
	mov	dpl,(_value + 0x0001)
;	genCall
	push	ar2
	push	ar5
	lcall	_output_2digits
	pop	ar5
	pop	ar2
00144$:
;	vprintf.c 444
;	genPointerGet
;	genNearPointerGet
;	genDataPointerGet
	mov	dpl,_value
;	genCall
	push	ar2
	push	ar5
	lcall	_output_2digits
	pop	ar5
	pop	ar2
;	vprintf.c 446
;	vprintf.c 450
; Peephole 132   changed ljmp to sjmp
	sjmp 00153$
00146$:
;	genAssign
	setb	_vsprintf_signed_argument_1_1
;	vprintf.c 451
;	genAssign
	mov	_radix,#0x0A
;	vprintf.c 452
;	vprintf.c 455
; Peephole 132   changed ljmp to sjmp
	sjmp 00153$
00148$:
;	genAssign
	mov	_radix,#0x08
;	vprintf.c 456
;	vprintf.c 459
; Peephole 132   changed ljmp to sjmp
	sjmp 00153$
00149$:
;	genAssign
	mov	_radix,#0x0A
;	vprintf.c 460
;	vprintf.c 463
; Peephole 132   changed ljmp to sjmp
	sjmp 00153$
00150$:
;	genAssign
	mov	_radix,#0x10
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
	mov	dpl,_vsprintf_c_1_1
	push	ar2
	push	ar5
	lcall	_output_char
	pop	ar5
	pop	ar2
;	vprintf.c 474
00153$:
;	vprintf.c 476
;	genIfx
;	genIfxJump
	jb	_vsprintf_float_argument_1_1,00330$
	ljmp	00204$
00330$:
;	vprintf.c 477
;	genMinus
;	genMinusDec
	mov	a,_vsprintf_PARM_3
	add	a,#0xfc
	mov	r0,a
;	genAssign
	mov	_vsprintf_PARM_3,r0
;	genPointerGet
;	genNearPointerGet
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,r3
	mov	(_value + 1),r4
	mov	(_value + 2),r6
	mov	(_value + 3),r7
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
	mov	r3,_value
	mov	r4,(_value + 1)
	mov	r6,(_value + 2)
;	genPlus
;	genPlusIncr
	mov	a,#0x01
	add	a,r3
	mov	r7,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r4
	mov	r0,a
	mov	ar1,r6
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,r7
	mov	(_value + 1),r0
	mov	(_value + 2),r1
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
;	genAssign
;	genIfx
; Peephole 166   removed redundant mov
	mov  r3,a
	mov  _vsprintf_c_1_1,r3 
;	genIfxJump
	jnz	00331$
	ljmp	00209$
00331$:
;	vprintf.c 481
;	genCall
	mov	dpl,_vsprintf_c_1_1
	push	ar2
	push	ar5
	lcall	_output_char
	pop	ar5
	pop	ar2
; Peephole 132   changed ljmp to sjmp
	sjmp 00154$
00204$:
;	vprintf.c 492
;	genCmpEq
	mov	a,_radix
	jnz	00332$
	ljmp	00209$
00332$:
;	vprintf.c 498
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _vsprintf_char_argument_1_1,00165$
00333$:
;	vprintf.c 500
;	genMinus
;	genMinusDec
	mov	a,_vsprintf_PARM_3
	dec	a
	mov	r0,a
;	genAssign
	mov	_vsprintf_PARM_3,r0
;	genPointerGet
;	genNearPointerGet
	mov	ar3,@r0
;	genCast
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r6,a
	mov	r7,a
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,r3
	mov	(_value + 1),r4
	mov	(_value + 2),r6
	mov	(_value + 3),r7
;	vprintf.c 501
;	genIfx
;	genIfxJump
	jnb	_vsprintf_signed_argument_1_1,00334$
	ljmp	00166$
00334$:
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
; Peephole 132   changed ljmp to sjmp
	sjmp 00166$
00165$:
;	vprintf.c 508
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _vsprintf_long_argument_1_1,00162$
00335$:
;	vprintf.c 510
;	genMinus
;	genMinusDec
	mov	a,_vsprintf_PARM_3
	add	a,#0xfc
	mov	r0,a
;	genAssign
	mov	_vsprintf_PARM_3,r0
;	genPointerGet
;	genNearPointerGet
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	dec	r0
	dec	r0
	dec	r0
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,r3
	mov	(_value + 1),r4
	mov	(_value + 2),r6
	mov	(_value + 3),r7
; Peephole 132   changed ljmp to sjmp
	sjmp 00166$
00162$:
;	vprintf.c 514
;	genMinus
;	genMinusDec
	mov	a,_vsprintf_PARM_3
	add	a,#0xfe
	mov	r0,a
;	genAssign
	mov	_vsprintf_PARM_3,r0
;	genPointerGet
;	genNearPointerGet
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	dec	r0
;	genCast
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,r3
	mov	(_value + 1),r4
	mov	(_value + 2),r6
	mov	(_value + 3),r7
;	vprintf.c 515
;	genIfx
;	genIfxJump
; Peephole 112   removed ljmp by inverse jump logic
	jb   _vsprintf_signed_argument_1_1,00166$
00336$:
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
00337$:
;	vprintf.c 524
;	genAssign
;	genCmpLt
;	genCmp
	mov	a,(_value + 3)
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00168$
00338$:
;	vprintf.c 525
;	genUminus
	clr	c
	clr	a
	subb	a,_value
	mov	r3,a
	clr	a
	subb	a,(_value + 1)
	mov	r4,a
	clr	a
	subb	a,(_value + 2)
	mov	r6,a
	clr	a
	subb	a,(_value + 3)
	mov	r7,a
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_value,r3
	mov	(_value + 1),r4
	mov	(_value + 2),r6
	mov	(_value + 3),r7
; Peephole 132   changed ljmp to sjmp
	sjmp 00171$
00168$:
;	vprintf.c 527
;	genAssign
	clr	_vsprintf_signed_argument_1_1
00171$:
;	vprintf.c 531
;	genAssign
	setb	_lsd
;	vprintf.c 534
;	genAssign
	mov	r3,#0x00
00175$:
;	vprintf.c 535
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_value + 0x0004),#0x00
;	vprintf.c 536
;	genCall
	push	ar2
	push	ar3
	push	ar5
	lcall	_calculate_digit
	pop	ar5
	pop	ar3
	pop	ar2
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
;	genPlus
;	genPlusIncr
	inc	r3
;	vprintf.c 553
;	genCpl
; Peephole 167   removed redundant bit moves (c not set to _lsd)
	cpl  _lsd 
;	vprintf.c 554
;	genAssign
;	genCmpEq
	mov	a,_value
; Peephole 162   removed sjmp by inverse jump logic
	jz   00340$
00339$:
; Peephole 132   changed ljmp to sjmp
	sjmp 00175$
00340$:
;	genAssign
;	genCmpEq
	mov	a,0x0001 + _value
; Peephole 162   removed sjmp by inverse jump logic
	jz   00342$
00341$:
; Peephole 132   changed ljmp to sjmp
	sjmp 00175$
00342$:
;	vprintf.c 555
;	genAssign
;	genCmpEq
	mov	a,0x0002 + _value
; Peephole 162   removed sjmp by inverse jump logic
	jz   00344$
00343$:
; Peephole 132   changed ljmp to sjmp
	sjmp 00175$
00344$:
;	genAssign
;	genCmpEq
	mov	a,0x0003 + _value
	jnz	00345$
	mov	a,#0x01
	sjmp	00346$
00345$:
	clr	a
00346$:
	mov	r4,a
;	genAssign
	mov	ar2,r3
;	genIfx
	mov	a,r4
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00175$
00347$:
;	vprintf.c 557
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne r5,#0x00,00179$
;00348$:
; Peephole 200   removed redundant sjmp
00349$:
;	vprintf.c 562
;	genAssign
	mov	r5,#0x01
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
	mov	ar4,r5
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
	mov	ar5,r4
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
;	genMinus
;	genMinusDec
	dec	r5
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
	push	ar2
	push	ar5
	lcall	_output_char
	pop	ar5
	pop	ar2
;	vprintf.c 588
;	genMinus
;	genMinusDec
	dec	r5
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
	push	ar2
	push	ar5
	lcall	_output_char
	pop	ar5
	pop	ar2
;	vprintf.c 594
;	genMinus
;	genMinusDec
	dec	r5
;	vprintf.c 599
00283$:
;	genAssign
	mov	ar3,r5
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
	lcall	_output_char
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
;	genPointerGet
;	genNearPointerGet
;	genDataPointerGet
	mov	dpl,(_value + 0x0004)
;	genCall
	push	ar2
	lcall	_output_digit
	pop	ar2
; Peephole 132   changed ljmp to sjmp
	sjmp 00198$
00207$:
;	vprintf.c 631
;	genCall
	mov	dpl,_vsprintf_c_1_1
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
;	genMinus
;	genMinusDec
	mov	a,_charsOutputted
	add	a,#0xff
	mov	dpl,a
	mov	a,(_charsOutputted + 1)
	addc	a,#0xff
	mov	dph,a
;	genRet
; Peephole 132   changed ljmp to sjmp
	sjmp 00215$
00213$:
;	vprintf.c 641
;	genRet
	mov	dpl,_charsOutputted
	mov	dph,(_charsOutputted + 1)
00215$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'vprintf'
;------------------------------------------------------------
;ap                        Allocated to in memory with name '_vprintf_PARM_2'
;format                    Allocated to registers 
;	vprintf.c 647
;	-----------------------------------------
;	 function vprintf
;	-----------------------------------------
_vprintf:
;	vprintf.c 649
;	genReceive
	mov	_vsprintf_PARM_2,dpl
	mov	(_vsprintf_PARM_2 + 1),dph
	mov	(_vsprintf_PARM_2 + 2),b
;	genAssign
	mov	_vsprintf_PARM_3,_vprintf_PARM_2
;	genCall
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	mov	b,#0x00
	lcall	_vsprintf
;	genRet
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
