;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:27 2002

;--------------------------------------------------------
	.module tancotf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tancotf
	.globl _tancotf_PARM_2
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
_tancotf_sloc0_1_0::
	.ds 4
_tancotf_sloc1_1_0::
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
_tancotf_PARM_2::
	.ds 2
_tancotf_x_1_1::
	.ds 4
_tancotf_xnum_1_1::
	.ds 4
_tancotf_xden_1_1::
	.ds 4
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
;Allocation info for local variables in function 'tancotf'
;------------------------------------------------------------
;sloc0                     Allocated to in memory with name '_tancotf_sloc0_1_0'
;sloc1                     Allocated to in memory with name '_tancotf_sloc1_1_0'
;iscotan                   Allocated to in memory with name '_tancotf_PARM_2'
;x                         Allocated to in memory with name '_tancotf_x_1_1'
;f                         Allocated to in memory with name '_tancotf_f_1_1'
;g                         Allocated to in memory with name '_tancotf_g_1_1'
;xn                        Allocated to in memory with name '_tancotf_xn_1_1'
;xnum                      Allocated to in memory with name '_tancotf_xnum_1_1'
;xden                      Allocated to in memory with name '_tancotf_xden_1_1'
;n                         Allocated to in memory with name '_tancotf_n_1_1'
;	tancotf.c 42
;	-----------------------------------------
;	 function tancotf
;	-----------------------------------------
_tancotf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	tancotf.c 0
;	genReceive
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#_tancotf_x_1_1
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
;	tancotf.c 47
;	genAssign
	mov	dptr,#_tancotf_x_1_1
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
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_fabsf
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fsgt_PARM_2
; Peephole 180   changed mov to clr
	clr  a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x08
	movx	@dptr,a
	inc	dptr
	mov	a,#0xC9
	movx	@dptr,a
	inc	dptr
	mov	a,#0x45
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
	lcall	___fsgt
	mov	a,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00125$:
;	tancotf.c 49
;	genAssign
; Peephole 230   replaced inefficient 16 constant
	mov     dptr,#_errno
	mov     a,#0x22
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	mov     dptr,#_errno
;	tancotf.c 50
;	genRet
; Peephole 3.a   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  dpl,a
	mov  dph,a
	mov  b,a
	ljmp	00115$
00102$:
;	tancotf.c 54
;	genAssign
	mov	dptr,#___fsmul_PARM_2
	mov	a,#0x83
	movx	@dptr,a
	inc	dptr
	mov	a,#0xF9
	movx	@dptr,a
	inc	dptr
	mov	a,#0x22
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
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
	mov	dptr,#___fsgt_PARM_2
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
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	___fsgt
	mov	a,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00117$
00126$:
;	genAssign
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x3F
; Peephole 132   changed ljmp to sjmp
	sjmp 00118$
00117$:
;	genAssign
	mov	r2,#0x00
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0xBF
00118$:
;	genAssign
	mov	dptr,#___fsadd_PARM_2
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
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	genCall
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
	lcall	___fs2sint
;	tancotf.c 55
;	genCall
; Peephole 223   removed redundant dph/dpl moves
	mov     r2,dpl
	mov     r3,dph
	push	ar2
	push	ar3
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	pop	ar2
;	tancotf.c 57
;	genIpush
	push	ar2
	push	ar3
;	genAssign
	mov	dptr,#_tancotf_x_1_1
	movx	a,@dptr
	mov	_tancotf_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_tancotf_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_tancotf_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_tancotf_sloc0_1_0 + 3),a
;	genCall
	mov	dpl,_tancotf_sloc0_1_0
	mov	dph,(_tancotf_sloc0_1_0 + 1)
	mov	b,(_tancotf_sloc0_1_0 + 2)
	mov	a,(_tancotf_sloc0_1_0 + 3)
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___fs2sint
	mov	r2,dpl
	mov	r3,dph
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	genCall
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___sint2fs
	mov	_tancotf_sloc1_1_0,dpl
	mov	(_tancotf_sloc1_1_0 + 1),dph
	mov	(_tancotf_sloc1_1_0 + 2),b
	mov	(_tancotf_sloc1_1_0 + 3),a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	tancotf.c 58
;	genAssign
	mov	dptr,#___fssub_PARM_2
	mov	a,_tancotf_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 3)
	movx	@dptr,a
;	tancotf.c 59
;	genCall
	mov	dpl,_tancotf_sloc0_1_0
	mov	dph,(_tancotf_sloc0_1_0 + 1)
	mov	b,(_tancotf_sloc0_1_0 + 2)
	mov	a,(_tancotf_sloc0_1_0 + 3)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___fssub
	mov	_tancotf_sloc0_1_0,dpl
	mov	(_tancotf_sloc0_1_0 + 1),dph
	mov	(_tancotf_sloc0_1_0 + 2),b
	mov	(_tancotf_sloc0_1_0 + 3),a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fsmul_PARM_2
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
	clr  a
	movx @dptr,a
	inc  dptr
	movx @dptr,a
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
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	genAssign
	mov	dptr,#___fssub_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	genCall
	mov	dpl,_tancotf_sloc1_1_0
	mov	dph,(_tancotf_sloc1_1_0 + 1)
	mov	b,(_tancotf_sloc1_1_0 + 2)
	mov	a,(_tancotf_sloc1_1_0 + 3)
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
	mov	dptr,#___fsadd_PARM_2
	mov	a,_tancotf_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc0_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc0_1_0 + 3)
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
	lcall	___fsadd
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
	mov	a,#0x22
	movx	@dptr,a
	inc	dptr
	mov	a,#0xAA
	movx	@dptr,a
	inc	dptr
	mov	a,#0xFD
	movx	@dptr,a
	inc	dptr
	mov	a,#0x39
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
;	tancotf.c 61
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r0
	mov	a,r1
	push	ar2
	push	ar3
	lcall	___fssub
	mov	_tancotf_sloc1_1_0,dpl
	mov	(_tancotf_sloc1_1_0 + 1),dph
	mov	(_tancotf_sloc1_1_0 + 2),b
	mov	(_tancotf_sloc1_1_0 + 3),a
	pop	ar3
	pop	ar2
;	genCall
	mov	dpl,_tancotf_sloc1_1_0
	mov	dph,(_tancotf_sloc1_1_0 + 1)
	mov	b,(_tancotf_sloc1_1_0 + 2)
	mov	a,(_tancotf_sloc1_1_0 + 3)
	lcall	_fabsf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	dptr,#___fslt_PARM_2
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
	mov	a,#0x39
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	lcall	___fslt
	mov	a,dpl
	pop	ar3
	pop	ar2
;	genIpop
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00104$
00127$:
;	tancotf.c 63
;	genAssign
	mov	dptr,#_tancotf_xnum_1_1
	mov	a,_tancotf_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 3)
	movx	@dptr,a
;	tancotf.c 64
;	genAssign
	mov	dptr,#_tancotf_xden_1_1
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
	mov	a,#0x3F
	movx	@dptr,a
	ljmp	00105$
00104$:
;	tancotf.c 68
;	genIpush
	push	ar2
	push	ar3
;	genAssign
	mov	dptr,#___fsmul_PARM_2
	mov	a,_tancotf_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 3)
	movx	@dptr,a
;	tancotf.c 69
;	genCall
	mov	dpl,_tancotf_sloc1_1_0
	mov	dph,(_tancotf_sloc1_1_0 + 1)
	mov	b,(_tancotf_sloc1_1_0 + 2)
	mov	a,(_tancotf_sloc1_1_0 + 3)
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
	mov	dptr,#___fsmul_PARM_2
	mov	a,#0xB8
	movx	@dptr,a
	inc	dptr
	mov	a,#0x33
	movx	@dptr,a
	inc	dptr
	mov	a,#0xC4
	movx	@dptr,a
	inc	dptr
	mov	a,#0xBD
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
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	genAssign
	mov	dptr,#___fsmul_PARM_2
	mov	a,_tancotf_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 3)
	movx	@dptr,a
;	genCall
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	genAssign
	mov	dptr,#___fsadd_PARM_2
	mov	a,_tancotf_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_tancotf_sloc1_1_0 + 3)
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
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	genAssign
	mov	dptr,#_tancotf_xnum_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	tancotf.c 70
;	genAssign
	mov	dptr,#___fsmul_PARM_2
	mov	a,#0x75
	movx	@dptr,a
	inc	dptr
	mov	a,#0x33
	movx	@dptr,a
	inc	dptr
	mov	a,#0x1F
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3C
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
	mov	r2,dpl
	mov	r3,dph
	mov	r0,b
	mov	r1,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
;	genAssign
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0xAF
	movx	@dptr,a
	inc	dptr
	mov	a,#0xB7
	movx	@dptr,a
	inc	dptr
	mov	a,#0xDB
	movx	@dptr,a
	inc	dptr
	mov	a,#0xBE
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
	lcall	___fsadd
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
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r0
	mov	a,r1
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
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
	mov	a,#0x3F
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
	mov	dptr,#_tancotf_xden_1_1
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
;	tancotf.c 82
;	genIpop
	pop	ar3
	pop	ar2
;	tancotf.c 70
00105$:
;	tancotf.c 73
;	genAnd
	mov	a,r2
;	genIfxJump
	jb	acc.0,00128$
	ljmp	00113$
00128$:
;	tancotf.c 76
;	genAssign
	mov	dptr,#_tancotf_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
;	genIfx
; Peephole 135   removed redundant mov
	mov  r3,a
	orl  a,r2
;	genIfxJump
	jnz	00129$
	ljmp	00107$
00129$:
;	genAssign
	mov	dptr,#_tancotf_xnum_1_1
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
;	genAssign
	mov	dptr,#_tancotf_xden_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
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
;	genRet
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
	ljmp	00115$
00107$:
;	tancotf.c 77
;	genAssign
	mov	dptr,#_tancotf_xden_1_1
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
;	genAssign
	mov	dptr,#_tancotf_xnum_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
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
;	genRet
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
	ljmp	00115$
00113$:
;	tancotf.c 81
;	genAssign
	mov	dptr,#_tancotf_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
;	genIfx
; Peephole 135   removed redundant mov
	mov  r3,a
	orl  a,r2
;	genIfxJump
	jnz	00130$
	ljmp	00110$
00130$:
;	genAssign
	mov	dptr,#_tancotf_xnum_1_1
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
	mov	dptr,#_tancotf_xden_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
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
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	genRet
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
; Peephole 132   changed ljmp to sjmp
	sjmp 00115$
00110$:
;	tancotf.c 82
;	genAssign
	mov	dptr,#_tancotf_xden_1_1
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
	mov	dptr,#_tancotf_xnum_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
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
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsdiv
;	genRet
; Peephole 156   removed misc moves via dph, dpl, b, a before return
00115$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
