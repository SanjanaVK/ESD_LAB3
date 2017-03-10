;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:25 2002

;--------------------------------------------------------
	.module expf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _expf
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
_expf_sloc0_1_0::
	.ds 2
_expf_sloc1_1_0::
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
_expf_x_1_1::
	.ds 4
_expf_n_1_1::
	.ds 2
_expf_y_1_1::
	.ds 4
_expf_sign_1_1::
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
;Allocation info for local variables in function 'expf'
;------------------------------------------------------------
;sloc0                     Allocated to in memory with name '_expf_sloc0_1_0'
;sloc1                     Allocated to in memory with name '_expf_sloc1_1_0'
;x                         Allocated to in memory with name '_expf_x_1_1'
;n                         Allocated to in memory with name '_expf_n_1_1'
;xn                        Allocated to in memory with name '_expf_xn_1_1'
;g                         Allocated to in memory with name '_expf_g_1_1'
;r                         Allocated to in memory with name '_expf_r_1_1'
;z                         Allocated to in memory with name '_expf_z_1_1'
;y                         Allocated to in memory with name '_expf_y_1_1'
;sign                      Allocated to in memory with name '_expf_sign_1_1'
;	expf.c 42
;	-----------------------------------------
;	 function expf
;	-----------------------------------------
_expf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	expf.c 0
;	genReceive
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#_expf_x_1_1
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
;	expf.c 48
;	genAssign
	mov	dptr,#_expf_x_1_1
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fslt
	mov	a,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00102$
00127$:
;	expf.c 49
;	genAssign
	mov	dptr,#_expf_y_1_1
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
;	genAssign
; Peephole 229   replaced inefficient 16 bit clear
	mov     dptr,#_expf_sign_1_1
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#_expf_sign_1_1
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00102$:
;	expf.c 51
;	genUminus
	mov	dptr,#_expf_y_1_1
;	genUminusFloat
	mov	a,r5
	cpl	acc.7
	inc	dptr
	inc	dptr
	inc	dptr
	movx	@dptr,a
	lcall	__decdptr
	lcall	__decdptr
	lcall	__decdptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	genAssign
; Peephole 230   replaced inefficient 16 constant
	mov     dptr,#_expf_sign_1_1
	mov     a,#0x01
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	mov     dptr,#_expf_sign_1_1
00103$:
;	expf.c 53
;	genAssign
	mov	dptr,#_expf_y_1_1
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
;	genAssign
	mov	dptr,#___fslt_PARM_2
	mov	a,#0x95
	movx	@dptr,a
	inc	dptr
	mov	a,#0xBF
	movx	@dptr,a
	inc	dptr
	mov	a,#0xD6
	movx	@dptr,a
	inc	dptr
	mov	a,#0x33
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
	lcall	___fslt
	mov	a,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00105$
00128$:
;	genRet
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	ljmp	00118$
00105$:
;	expf.c 55
;	genAssign
	mov	dptr,#___fsgt_PARM_2
	mov	a,#0x18
	movx	@dptr,a
	inc	dptr
	mov	a,#0x72
	movx	@dptr,a
	inc	dptr
	mov	a,#0xB1
	movx	@dptr,a
	inc	dptr
	mov	a,#0x42
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
	lcall	___fsgt
	mov	a,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00110$
00129$:
;	expf.c 57
;	genAssign
	mov	dptr,#_expf_sign_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	genIfx
; Peephole 135   removed redundant mov
	mov  r7,a
	orl  a,r6
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00107$
00130$:
;	expf.c 59
;	genAssign
; Peephole 230   replaced inefficient 16 constant
	mov     dptr,#_errno
	mov     a,#0x22
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	mov     dptr,#_errno
;	expf.c 60
;	genRet
; Peephole 182   used 16 bit load of dptr
	mov  dptr,#(((0xFF)<<8) + 0xFF)
	mov	b,#0x7F
	mov	a,#0x7F
	ljmp	00118$
00107$:
;	expf.c 64
;	genRet
; Peephole 3.a   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  dpl,a
	mov  dph,a
	mov  b,a
	ljmp	00118$
00110$:
;	expf.c 68
;	genAssign
	mov	dptr,#___fsmul_PARM_2
	mov	a,#0x3B
	movx	@dptr,a
	inc	dptr
	mov	a,#0xAA
	movx	@dptr,a
	inc	dptr
	mov	a,#0xB8
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
;	expf.c 69
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
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
;	genAssign
	mov	dptr,#_expf_n_1_1
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	expf.c 71
;	genCmpLt
;	genCmp
	mov	a,r7
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00112$
00131$:
;	genMinus
;	genMinusDec
	dec	r6
	cjne	r6,#0xff,00132$
	dec	r7
00132$:
;	genAssign
	mov	dptr,#_expf_n_1_1
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
00112$:
;	expf.c 72
;	genAssign
	mov	dptr,#_expf_n_1_1
	movx	a,@dptr
	mov	_expf_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_expf_sloc0_1_0 + 1),a
;	genCall
	mov	dpl,_expf_sloc0_1_0
	mov	dph,(_expf_sloc0_1_0 + 1)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___sint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r6,b
	mov	r7,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fssub_PARM_2
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
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
	mov	dptr,#___fslt_PARM_2
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fslt
	mov	a,dpl
;	genIfx
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00114$
00133$:
;	genPlus
	mov	dptr,#_expf_n_1_1
;	genPlusIncr
	mov	a,#0x01
	add	a,_expf_sloc0_1_0
	movx	@dptr,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_expf_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
00114$:
;	expf.c 73
;	genAssign
	mov	dptr,#_expf_n_1_1
	movx	a,@dptr
	mov	_expf_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_expf_sloc0_1_0 + 1),a
;	genCall
	mov	dpl,_expf_sloc0_1_0
	mov	dph,(_expf_sloc0_1_0 + 1)
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	expf.c 74
;	genAssign
	mov	dptr,#___fsmul_PARM_2
; Peephole 180   changed mov to clr
	clr  a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x31
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
;	genCall
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___fsmul
	mov	_expf_sloc1_1_0,dpl
	mov	(_expf_sloc1_1_0 + 1),dph
	mov	(_expf_sloc1_1_0 + 2),b
	mov	(_expf_sloc1_1_0 + 3),a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	genAssign
	mov	dptr,#_expf_y_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
;	genAssign
	mov	dptr,#___fssub_PARM_2
	mov	a,_expf_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_expf_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_expf_sloc1_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_expf_sloc1_1_0 + 3)
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r0
	mov	a,r1
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	genAssign
	mov	dptr,#___fsmul_PARM_2
	mov	a,#0x83
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x5E
	movx	@dptr,a
	inc	dptr
	mov	a,#0xB9
	movx	@dptr,a
;	genCall
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar2
	push	ar3
	push	ar0
	push	ar1
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar1
	pop	ar0
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fssub_PARM_2
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
;	expf.c 75
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r0
	mov	a,r1
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
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
;	expf.c 76
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
	mov	_expf_sloc1_1_0,dpl
	mov	(_expf_sloc1_1_0 + 1),dph
	mov	(_expf_sloc1_1_0 + 2),b
	mov	(_expf_sloc1_1_0 + 3),a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fsmul_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	inc	dptr
	mov	a,#0x53
	movx	@dptr,a
	inc	dptr
	mov	a,#0x88
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3B
	movx	@dptr,a
;	genCall
	mov	dpl,_expf_sloc1_1_0
	mov	dph,(_expf_sloc1_1_0 + 1)
	mov	b,(_expf_sloc1_1_0 + 2)
	mov	a,(_expf_sloc1_1_0 + 3)
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
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
	clr  a
	movx @dptr,a
	inc  dptr
	movx @dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3E
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
;	expf.c 77
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	dptr,#___fsmul_PARM_2
	mov	a,#0x5B
	movx	@dptr,a
	inc	dptr
	mov	a,#0xBF
	movx	@dptr,a
	inc	dptr
	mov	a,#0x4C
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3D
	movx	@dptr,a
;	genCall
	mov	dpl,_expf_sloc1_1_0
	mov	dph,(_expf_sloc1_1_0 + 1)
	mov	b,(_expf_sloc1_1_0 + 2)
	mov	a,(_expf_sloc1_1_0 + 3)
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
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fssub
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fsdiv_PARM_2
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
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
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
;	expf.c 79
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
;	genPlus
	mov	dptr,#_ldexpf_PARM_2
;	genPlusIncr
	mov	a,#0x01
	add	a,_expf_sloc0_1_0
	movx	@dptr,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_expf_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	expf.c 80
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_ldexpf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	expf.c 81
;	genAssign
	mov	dptr,#_expf_sign_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	genIfx
; Peephole 135   removed redundant mov
	mov  r7,a
	orl  a,r6
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00116$
00134$:
;	expf.c 82
;	genAssign
	mov	dptr,#___fsdiv_PARM_2
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
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsdiv
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genRet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
; Peephole 132   changed ljmp to sjmp
	sjmp 00118$
00116$:
;	expf.c 84
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
00118$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
