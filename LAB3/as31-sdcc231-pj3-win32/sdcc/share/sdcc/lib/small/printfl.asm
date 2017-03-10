;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:02 2002

;--------------------------------------------------------
	.module printfl
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _printf_small
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits 
;--------------------------------------------------------
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_ch:
	.ds 1
_radix:
	.ds 1
_str:
	.ds 3
_val:
	.ds 4
_pval_sp_1_1::
	.ds 1
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
_long_flag:
	.ds 1
_string_flag:
	.ds 1
_char_flag:
	.ds 1
_sign:
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
;	printfl.c 52
;	genAssign
	clr	_long_flag
;	printfl.c 53
;	genAssign
	clr	_string_flag
;	printfl.c 54
;	genAssign
	clr	_char_flag
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
;Allocation info for local variables in function 'pval'
;------------------------------------------------------------
;sp                        Allocated to in memory with name '_pval_sp_1_1'
;lval                      Allocated to registers r3 r4 r5 r6 
;	printfl.c 59
;	-----------------------------------------
;	 function pval
;	-----------------------------------------
_pval:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	printfl.c 63
;	genAssign
	mov	_pval_sp_1_1,_SP
;	printfl.c 65
;	genCmpLt
;	genCmp
	mov	a,(_val + 3)
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00102$
00132$:
;	genCmpEq
	mov	a,_radix
	cjne	a,#0x10,00133$
; Peephole 132   changed ljmp to sjmp
	sjmp 00102$
00133$:
;	printfl.c 67
;	genUminus
	clr	c
	clr	a
	subb	a,_val
	mov	r3,a
	clr	a
	subb	a,(_val + 1)
	mov	r4,a
	clr	a
	subb	a,(_val + 2)
	mov	r5,a
	clr	a
	subb	a,(_val + 3)
	mov	r6,a
;	printfl.c 68
;	genAssign
	setb	_sign
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00102$:
;	printfl.c 70
;	genAssign
	clr	_sign
;	genAssign
	mov	r3,_val
	mov	r4,(_val + 1)
	mov	r5,(_val + 2)
	mov	r6,(_val + 3)
00103$:
;	printfl.c 72
;	genIfx
;	genIfxJump
; Peephole 112   removed ljmp by inverse jump logic
	jb   _long_flag,00106$
00134$:
;	printfl.c 73
;	genAnd
	mov	r5,#0x00
	mov	r6,#0x00
00106$:
;	printfl.c 75
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _char_flag,00127$
00135$:
;	printfl.c 76
;	genAnd
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
;	printfl.c 79
00127$:
00112$:
;	printfl.c 82
;	genCmpEq
	mov	a,_radix
	cjne	a,#0x10,00136$
; Peephole 132   changed ljmp to sjmp
	sjmp 00110$
00136$:
;	genCast
	mov	__modulong_PARM_2,_radix
	mov	a,_radix
	rlc	a
	subb	a,acc
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
;	genCall
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	__modulong
	mov	r7,dpl
	mov	r0,dph
	mov	r1,b
	mov	r2,a
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
;	genPlus
	mov	a,#0x30
	add	a,r7
	mov	r7,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r0
	mov	r0,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r1
	mov	r1,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r2
	mov	r2,a
;	genCast
	mov	_ch,r7
; Peephole 132   changed ljmp to sjmp
	sjmp 00111$
00110$:
;	printfl.c 83
;	genCast
	mov	ar2,r3
;	genAnd
	anl	ar2,#0x0F
;	genPlus
	mov	a,r2
; Peephole 180   changed mov to clr
;	genPointerGet
;	genCodePointerGet
; Peephole 186   optimized movc sequence
	mov  dptr,#__str_0
	movc a,@a+dptr
	mov	_ch,a
00111$:
;	printfl.c 84
;	genInline
	 push _ch 
;	printfl.c 85
;	genCast
	mov	__divulong_PARM_2,_radix
	mov	a,_radix
	rlc	a
	subb	a,acc
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
;	genCall
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	__divulong
	mov	r2,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
;	genAssign
	mov	ar3,r2
	mov	ar4,r7
	mov	ar5,r0
	mov	ar6,r1
;	printfl.c 94
;	genIfx
	mov	a,r3
	orl	a,r4
	orl	a,r5
	orl	a,r6
;	genIfxJump
	jz	00137$
	ljmp	00112$
00137$:
;	printfl.c 96
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _sign,00117$
00138$:
;	printfl.c 97
;	genAssign
	mov	_ch,#0x2D
;	printfl.c 98
;	genInline
	 push _ch 
;	printfl.c 101
00117$:
;	genCmpEq
	mov	a,_pval_sp_1_1
	cjne	a,_SP,00139$
; Peephole 132   changed ljmp to sjmp
	sjmp 00120$
00139$:
;	printfl.c 102
;	genInline
	 pop _ch 
;	printfl.c 103
;	genCall
	mov	dpl,_ch
	lcall	_putchar
; Peephole 132   changed ljmp to sjmp
	sjmp 00117$
00120$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printf_small'
;------------------------------------------------------------
;fmt                       Allocated to stack - offset -5
;ap                        Allocated to stack - offset 1
;sloc0                     Allocated to stack - offset 2
;sloc1                     Allocated to stack - offset 2
;sloc2                     Allocated to stack - offset 6
;sloc3                     Allocated to stack - offset 5
;	printfl.c 107
;	-----------------------------------------
;	 function printf_small
;	-----------------------------------------
_printf_small:
	push	_bp
	mov	_bp,sp
	mov	a,sp
	add	a,#0x07
	mov	sp,a
;	printfl.c 111
;	genAddrOf
	mov	a,_bp
	add	a,#0xfb
	mov	r2,a
;	genAssign
; Peephole 212  reduced add sequence to inc
	mov  r0,_bp
	inc  r0
	mov	@r0,ar2
00127$:
;	printfl.c 113
;	genAssign
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r6,a
;	genIfxJump
	jnz	00149$
	ljmp	00131$
00149$:
;	printfl.c 114
;	genCmpEq
	cjne	r6,#0x25,00150$
	sjmp	00151$
00150$:
	ljmp	00125$
00151$:
;	printfl.c 115
;	genAssign
	clr	_char_flag
;	genAssign
	clr	_string_flag
;	genAssign
	clr	_long_flag
;	printfl.c 116
;	genPlus
;	genPlusIncr
	inc	r3
	cjne	r3,#0x00,00152$
	inc	r4
00152$:
;	genAssign
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	printfl.c 117
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r7,a
;	genCmpEq
	cjne	r7,#0x68,00153$
; Peephole 132   changed ljmp to sjmp
	sjmp 00102$
00153$:
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne r7,#0x6C,00103$
;00154$:
; Peephole 200   removed redundant sjmp
00155$:
;	printfl.c 119
;	genAssign
	setb	_long_flag
;	printfl.c 120
;	genPlus
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
;	genPlusIncr
	mov	a,#0x01
	add	a,r3
	mov	@r0,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
;	printfl.c 121
;	printfl.c 123
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00102$:
;	genAssign
	setb	_char_flag
;	printfl.c 124
;	genPlus
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
;	genPlusIncr
	mov	a,#0x01
	add	a,r3
	mov	@r0,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r4
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,ar5
;	printfl.c 125
00103$:
;	printfl.c 127
;	genAssign
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
;	genCmpEq
	cjne	r3,#0x63,00156$
; Peephole 132   changed ljmp to sjmp
	sjmp 00107$
00156$:
;	genCmpEq
	cjne	r3,#0x64,00157$
; Peephole 132   changed ljmp to sjmp
	sjmp 00105$
00157$:
;	genCmpEq
	cjne	r3,#0x6F,00158$
; Peephole 132   changed ljmp to sjmp
	sjmp 00108$
00158$:
;	genCmpEq
	cjne	r3,#0x73,00159$
; Peephole 132   changed ljmp to sjmp
	sjmp 00104$
00159$:
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
;	printfl.c 129
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne r3,#0x78,00109$
	sjmp 00106$
;00160$:
00104$:
;	genAssign
	setb	_string_flag
;	printfl.c 130
;	printfl.c 132
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00105$:
;	genAssign
	mov	_radix,#0x0A
;	printfl.c 133
;	printfl.c 135
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00106$:
;	genAssign
	mov	_radix,#0x10
;	printfl.c 136
;	printfl.c 138
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00107$:
;	genAssign
	mov	_radix,#0x00
;	printfl.c 139
;	printfl.c 141
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00108$:
;	genAssign
	mov	_radix,#0x08
;	printfl.c 143
00109$:
;	printfl.c 145
;	genIfx
;	genIfxJump
	jb	_string_flag,00161$
	ljmp	00114$
00161$:
;	printfl.c 146
;	genMinus
; Peephole 212  reduced add sequence to inc
	mov  r1,_bp
	inc  r1
;	genMinusDec
	mov	a,@r1
	add	a,#0xfd
	mov	r0,a
;	genAssign
; Peephole 212  reduced add sequence to inc
	mov  r1,_bp
	inc  r1
	mov	@r1,ar0
;	genPointerGet
;	genNearPointerGet
	mov	_str,@r0
	inc	r0
	mov	(_str + 1),@r0
	inc	r0
	mov	(_str + 2),@r0
	dec	r0
	dec	r0
;	printfl.c 147
00110$:
;	genAssign
	mov	a,_bp
	add	a,#0x02
	mov	r0,a
	mov	@r0,_str
	inc	r0
	mov	@r0,(_str + 1)
	inc	r0
	mov	@r0,(_str + 2)
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x02
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r3,a
;	genIfxJump
	jnz	00162$
	ljmp	00129$
00162$:
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,_str
	inc	r0
	mov	@r0,(_str + 1)
	inc	r0
	mov	@r0,(_str + 2)
;	genPointerGet
;	genGenPointerGet
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r7,a
;	genPlus
;	genPlusIncr
	mov	a,#0x01
	add	a,_str
	mov	r5,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_str + 1)
	mov	r4,a
	mov	r2,(_str + 2)
;	genAssign
	mov	_str,r5
	mov	(_str + 1),r4
	mov	(_str + 2),r2
;	genAssign
;	genCall
	mov	dpl,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_putchar
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00110$
;	printfl.c 148
00114$:
;	printfl.c 151
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _long_flag,00119$
00163$:
;	printfl.c 152
;	genMinus
; Peephole 212  reduced add sequence to inc
	mov  r1,_bp
	inc  r1
;	genMinusDec
	mov	a,@r1
	add	a,#0xfc
	mov	r0,a
;	genAssign
; Peephole 212  reduced add sequence to inc
	mov  r1,_bp
	inc  r1
	mov	@r1,ar0
;	genPointerGet
;	genNearPointerGet
	mov	_val,@r0
	inc	r0
	mov	(_val + 1),@r0
	inc	r0
	mov	(_val + 2),@r0
	inc	r0
	mov	(_val + 3),@r0
	dec	r0
	dec	r0
	dec	r0
; Peephole 132   changed ljmp to sjmp
	sjmp 00120$
00119$:
;	printfl.c 154
;	genIfx
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  _char_flag,00116$
00164$:
;	printfl.c 155
;	genMinus
; Peephole 212  reduced add sequence to inc
	mov  r1,_bp
	inc  r1
;	genMinusDec
	mov	a,@r1
	dec	a
	mov	r0,a
;	genAssign
; Peephole 212  reduced add sequence to inc
	mov  r1,_bp
	inc  r1
	mov	@r1,ar0
;	genPointerGet
;	genNearPointerGet
	mov	ar2,@r0
;	genCast
	mov	_val,r2
	mov	a,r2
	rlc	a
	subb	a,acc
	mov	(_val + 1),a
	mov	(_val + 2),a
	mov	(_val + 3),a
; Peephole 132   changed ljmp to sjmp
	sjmp 00120$
00116$:
;	printfl.c 157
;	genMinus
; Peephole 212  reduced add sequence to inc
	mov  r1,_bp
	inc  r1
;	genMinusDec
	mov	a,@r1
	add	a,#0xfe
	mov	r0,a
;	genAssign
; Peephole 212  reduced add sequence to inc
	mov  r1,_bp
	inc  r1
	mov	@r1,ar0
;	genPointerGet
;	genNearPointerGet
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	dec	r0
;	genCast
	mov	_val,r2
	mov	(_val + 1),r3
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	(_val + 2),a
	mov	(_val + 3),a
00120$:
;	printfl.c 159
;	genIfx
	mov	a,_radix
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00122$
00165$:
;	genCall
	push	ar6
	lcall	_pval
	pop	ar6
; Peephole 132   changed ljmp to sjmp
	sjmp 00129$
00122$:
;	printfl.c 160
;	genCast
	mov	dpl,_val
;	genCall
	push	ar6
	lcall	_putchar
	pop	ar6
; Peephole 132   changed ljmp to sjmp
	sjmp 00129$
00125$:
;	printfl.c 163
;	genCall
	mov	dpl,r6
	lcall	_putchar
00129$:
;	printfl.c 113
;	genPlus
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
;	genPlusIncr
	inc	@r0
	cjne	@r0,#0x00,00166$
	inc	r0
	inc	@r0
00166$:
	ljmp	00127$
00131$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
__str_0:
	.ascii "0123456789ABCDEF"
	.db 0x00
	.area	XINIT   (CODE)
