;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:25 2002

;--------------------------------------------------------
	.module sincosf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincosf
	.globl _sincosf_PARM_2
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
_sincosf_sloc0_1_0::
	.ds 4
_sincosf_sloc1_1_0::
	.ds 4
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
_sincosf_PARM_2::
	.ds 2
_sincosf_x_1_1::
	.ds 4
_sincosf_y_1_1::
	.ds 4
_sincosf_f_1_1::
	.ds 4
_sincosf_XN_1_1::
	.ds 4
_sincosf_sign_1_1::
	.ds 2
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
;Allocation info for local variables in function 'sincosf'
;------------------------------------------------------------
;sloc0                     Allocated to in memory with name '_sincosf_sloc0_1_0'
;sloc1                     Allocated to in memory with name '_sincosf_sloc1_1_0'
;iscos                     Allocated to in memory with name '_sincosf_PARM_2'
;x                         Allocated to in memory with name '_sincosf_x_1_1'
;y                         Allocated to in memory with name '_sincosf_y_1_1'
;f                         Allocated to in memory with name '_sincosf_f_1_1'
;r                         Allocated to in memory with name '_sincosf_r_1_1'
;g                         Allocated to in memory with name '_sincosf_g_1_1'
;XN                        Allocated to in memory with name '_sincosf_XN_1_1'
;N                         Allocated to in memory with name '_sincosf_N_1_1'
;sign                      Allocated to in memory with name '_sincosf_sign_1_1'
;	sincosf.c 39
;	-----------------------------------------
;	 function sincosf
;	-----------------------------------------
_sincosf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	sincosf.c 84
;	genReceive
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#_sincosf_x_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	sincosf.c 44
;	genAssign
	mov	dptr,#_sincosf_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
;	genIfx
; Peephole 135   removed redundant mov
	mov  r3,a
	orl  a,r2
;	genIfxJump
	jnz	00126$
	ljmp	00105$
00126$:
;	sincosf.c 46
;	genAssign
	mov	dptr,#_sincosf_x_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	genCall
; Peephole 191   removed redundant mov
	mov  r7,a
	mov  dpl,r4
	mov  dph,r5
	mov  b,r6
	push	ar2
	push	ar3
	lcall	_fabsf
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0xDB
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0F
	movx	@dptr,a
	inc	dptr
	mov	a,#0xC9
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
;	genCall
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar2
	push	ar3
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#_sincosf_y_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	sincosf.c 47
;	genAssign
; Peephole 229   replaced inefficient 16 bit clear
	mov     dptr,#_sincosf_sign_1_1
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#_sincosf_sign_1_1
	ljmp	00106$
00105$:
;	sincosf.c 51
;	genAssign
	mov	dptr,#_sincosf_x_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genAssign
	mov	dptr,#___fslt_PARM_2
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
; Peephole 226   removed unnecessary clr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx @dptr,a
	inc  dptr
	movx @dptr,a
;	genCall
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___fslt
	mov	a,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00127$:
;	sincosf.c 52
;	genUminus
	mov	dptr,#_sincosf_y_1_1
;	genUminusFloat
	mov	a,r7
	cpl	acc.7
	inc	dptr
	inc	dptr
	inc	dptr
	movx	@dptr,a
	lcall	__decdptr
	lcall	__decdptr
	lcall	__decdptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	genAssign
; Peephole 230   replaced inefficient 16 constant
	mov     dptr,#_sincosf_sign_1_1
	mov     a,#0x01
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	mov     dptr,#_sincosf_sign_1_1
; Peephole 132   changed ljmp to sjmp
	sjmp 00106$
00102$:
;	sincosf.c 54
;	genAssign
	mov	dptr,#_sincosf_y_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	genAssign
; Peephole 229   replaced inefficient 16 bit clear
	mov     dptr,#_sincosf_sign_1_1
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#_sincosf_sign_1_1
00106$:
;	sincosf.c 57
;	genAssign
	mov	dptr,#_sincosf_y_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genAssign
	mov	dptr,#___fsgt_PARM_2
; Peephole 180   changed mov to clr
	clr  a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0C
	movx	@dptr,a
	inc	dptr
	mov	a,#0x49
	movx	@dptr,a
	inc	dptr
	mov	a,#0x46
	movx	@dptr,a
;	genCall
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___fsgt
	mov	a,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00108$
00128$:
;	sincosf.c 59
;	genAssign
; Peephole 230   replaced inefficient 16 constant
	mov     dptr,#_errno
	mov     a,#0x22
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	mov     dptr,#_errno
;	sincosf.c 60
;	genRet
; Peephole 3.a   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  dpl,a
	mov  dph,a
	mov  b,a
	ljmp	00115$
00108$:
;	sincosf.c 64
;	genAssign
	mov	dptr,#___fsmul_PARM_2
	mov	a,#0x83
	movx	@dptr,a
	inc	dptr
	mov	a,#0xF9
	movx	@dptr,a
	inc	dptr
	mov	a,#0xA2
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3E
	movx	@dptr,a
;	genCall
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar2
	push	ar3
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fsadd_PARM_2
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
; Peephole 180   changed mov to clr
; Peephole 226   removed unnecessary clr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
;	genCall
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar2
	push	ar3
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	pop	ar2
;	genCall
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar2
	push	ar3
	lcall	___fs2sint
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar2
;	sincosf.c 67
;	genAnd
	mov	a,r4
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.0,00110$
00129$:
;	genAssign
	mov	dptr,#_sincosf_sign_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genCpl
	mov	dptr,#_sincosf_sign_1_1
	mov	a,r6
	cpl	a
	movx	@dptr,a
	mov	a,r7
	cpl	a
	inc	dptr
	movx	@dptr,a
00110$:
;	sincosf.c 69
;	genCall
	mov	dpl,r4
	mov	dph,r5
	push	ar2
	push	ar3
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#_sincosf_XN_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	sincosf.c 71
;	genIfx
	mov	a,r2
	orl	a,r3
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00112$
00130$:
;	genAssign
	mov	dptr,#___fssub_PARM_2
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
; Peephole 180   changed mov to clr
; Peephole 226   removed unnecessary clr
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	inc     dptr
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
;	genCall
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	dptr,#_sincosf_XN_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
00112$:
;	sincosf.c 73
;	genAssign
	mov	dptr,#_sincosf_x_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genCall
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
	lcall	_fabsf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	sincosf.c 74
;	genCall
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fs2sint
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genCall
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___sint2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	sincosf.c 75
;	genAssign
	mov	dptr,#___fssub_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	sincosf.c 76
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	___fssub
	mov	_sincosf_sloc0_1_0,dpl
	mov	(_sincosf_sloc0_1_0 + 1),dph
	mov	(_sincosf_sloc0_1_0 + 2),b
	mov	(_sincosf_sloc0_1_0 + 3),a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign
	mov	dptr,#_sincosf_XN_1_1
	movx	a,@dptr
	mov	_sincosf_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_sincosf_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_sincosf_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_sincosf_sloc1_1_0 + 3),a
;	genAssign
	mov	dptr,#___fsmul_PARM_2
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
	clr  a
	movx @dptr,a
	inc  dptr
	movx @dptr,a
	inc	dptr
	mov	a,#0x49
	movx	@dptr,a
	inc	dptr
	mov	a,#0x40
	movx	@dptr,a
;	genCall
	mov	dpl,_sincosf_sloc1_1_0
	mov	dph,(_sincosf_sloc1_1_0 + 1)
	mov	b,(_sincosf_sloc1_1_0 + 2)
	mov	a,(_sincosf_sloc1_1_0 + 3)
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign
	mov	dptr,#___fssub_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	dptr,#___fsadd_PARM_2
	mov	a,_sincosf_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_sincosf_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_sincosf_sloc0_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_sincosf_sloc0_1_0 + 3)
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	dptr,#___fsmul_PARM_2
	mov	a,#0x22
	movx	@dptr,a
	inc	dptr
	mov	a,#0xAA
	movx	@dptr,a
	inc	dptr
	mov	a,#0x7D
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3A
	movx	@dptr,a
;	genCall
	mov	dpl,_sincosf_sloc1_1_0
	mov	dph,(_sincosf_sloc1_1_0 + 1)
	mov	b,(_sincosf_sloc1_1_0 + 2)
	mov	a,(_sincosf_sloc1_1_0 + 3)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fssub_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	dptr,#_sincosf_f_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	sincosf.c 78
;	genAssign
	mov	dptr,#___fsmul_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
;	sincosf.c 79
;	genCall
; Peephole 225   removed redundant move to acc
	mov     a,r5
	movx    @dptr,a
	mov     dpl,r2
	mov     dph,r3
	mov     b,r4
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsmul
	mov	_sincosf_sloc1_1_0,dpl
	mov	(_sincosf_sloc1_1_0 + 1),dph
	mov	(_sincosf_sloc1_1_0 + 2),b
	mov	(_sincosf_sloc1_1_0 + 3),a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fsgt_PARM_2
	mov	a,#0xF3
	movx	@dptr,a
	inc	dptr
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	mov	a,#0x7F
	movx	@dptr,a
	inc	dptr
	mov	a,#0x33
	movx	@dptr,a
;	genCall
	mov	dpl,_sincosf_sloc1_1_0
	mov	dph,(_sincosf_sloc1_1_0 + 1)
	mov	b,(_sincosf_sloc1_1_0 + 2)
	mov	a,(_sincosf_sloc1_1_0 + 3)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsgt
	mov	a,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
	jnz	00131$
	ljmp	00114$
00131$:
;	sincosf.c 81
;	genAssign
	mov	dptr,#___fsmul_PARM_2
	mov	a,#0x5B
	movx	@dptr,a
	inc	dptr
	mov	a,#0x9C
	movx	@dptr,a
	inc	dptr
	mov	a,#0x2E
	movx	@dptr,a
	inc	dptr
	mov	a,#0x36
	movx	@dptr,a
;	genCall
	mov	dpl,_sincosf_sloc1_1_0
	mov	dph,(_sincosf_sloc1_1_0 + 1)
	mov	b,(_sincosf_sloc1_1_0 + 2)
	mov	a,(_sincosf_sloc1_1_0 + 3)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0x22
	movx	@dptr,a
	inc	dptr
	mov	a,#0xB2
	movx	@dptr,a
	inc	dptr
	mov	a,#0x4F
	movx	@dptr,a
	inc	dptr
	mov	a,#0xB9
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fsmul_PARM_2
	mov	a,_sincosf_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_sincosf_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_sincosf_sloc1_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_sincosf_sloc1_1_0 + 3)
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0x3E
	movx	@dptr,a
	inc	dptr
	mov	a,#0x87
	movx	@dptr,a
	inc	dptr
	mov	a,#0x08
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3C
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fsmul_PARM_2
	mov	a,_sincosf_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_sincosf_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_sincosf_sloc1_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_sincosf_sloc1_1_0 + 3)
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0xA4
	movx	@dptr,a
	inc	dptr
	mov	a,#0xAA
	movx	@dptr,a
	inc	dptr
	mov	a,#0x2A
	movx	@dptr,a
	inc	dptr
	mov	a,#0xBE
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fsmul_PARM_2
	mov	a,_sincosf_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_sincosf_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_sincosf_sloc1_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_sincosf_sloc1_1_0 + 3)
	movx	@dptr,a
;	sincosf.c 82
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fsmul_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fsadd_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	dptr,#_sincosf_f_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
00114$:
;	sincosf.c 84
;	genAssign
	mov	dptr,#_sincosf_sign_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
;	genIfx
; Peephole 135   removed redundant mov
	mov  r3,a
	orl  a,r2
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00117$
00132$:
;	genAssign
	mov	dptr,#_sincosf_f_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
;	genUminus
;	genUminusFloat
; Peephole 105   removed redundant mov
	mov  r5,a
	cpl	acc.7
	mov	r5,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00118$
00117$:
;	genAssign
	mov	dptr,#_sincosf_f_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00118$:
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
00115$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
