;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:09 2002

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
_tancotf_PARM_2::
	.ds 2
_tancotf_g_1_1::
	.ds 4
_tancotf_xn_1_1::
	.ds 4
_tancotf_xnum_1_1::
	.ds 4
_tancotf_xden_1_1::
	.ds 4
_tancotf_n_1_1::
	.ds 2
_tancotf_sloc0_1_0::
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
;iscotan                   Allocated to in memory with name '_tancotf_PARM_2'
;x                         Allocated to registers r2 r3 r4 r5 
;f                         Allocated to registers r2 r3 r4 r5 
;g                         Allocated to in memory with name '_tancotf_g_1_1'
;xn                        Allocated to in memory with name '_tancotf_xn_1_1'
;xnum                      Allocated to in memory with name '_tancotf_xnum_1_1'
;xden                      Allocated to in memory with name '_tancotf_xden_1_1'
;n                         Allocated to in memory with name '_tancotf_n_1_1'
;sloc0                     Allocated to in memory with name '_tancotf_sloc0_1_0'
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
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	tancotf.c 47
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
	mov	___fsgt_PARM_2,#0x00
	mov	(___fsgt_PARM_2 + 1),#0x08
	mov	(___fsgt_PARM_2 + 2),#0xC9
	mov	(___fsgt_PARM_2 + 3),#0x45
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
	clr	a
	mov	(_errno + 1),a
	mov	_errno,#0x22
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
	mov	___fsmul_PARM_2,#0x83
	mov	(___fsmul_PARM_2 + 1),#0xF9
	mov	(___fsmul_PARM_2 + 2),#0x22
	mov	(___fsmul_PARM_2 + 3),#0x3F
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
	mov	___fsgt_PARM_2,#0x00
	mov	(___fsgt_PARM_2 + 1),#0x00
	mov	(___fsgt_PARM_2 + 2),#0x00
	mov	(___fsgt_PARM_2 + 3),#0x00
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
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
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00117$
00126$:
;	genAssign
	mov	_tancotf_sloc0_1_0,#0x00
	mov	(_tancotf_sloc0_1_0 + 1),#0x00
	mov	(_tancotf_sloc0_1_0 + 2),#0x00
	mov	(_tancotf_sloc0_1_0 + 3),#0x3F
; Peephole 132   changed ljmp to sjmp
	sjmp 00118$
00117$:
;	genAssign
	mov	_tancotf_sloc0_1_0,#0x00
	mov	(_tancotf_sloc0_1_0 + 1),#0x00
	mov	(_tancotf_sloc0_1_0 + 2),#0x00
	mov	(_tancotf_sloc0_1_0 + 3),#0xBF
00118$:
;	genAssign
	mov	___fsadd_PARM_2,_tancotf_sloc0_1_0
	mov	(___fsadd_PARM_2 + 1),(_tancotf_sloc0_1_0 + 1)
	mov	(___fsadd_PARM_2 + 2),(_tancotf_sloc0_1_0 + 2)
	mov	(___fsadd_PARM_2 + 3),(_tancotf_sloc0_1_0 + 3)
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
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fs2sint
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	_tancotf_n_1_1,a
	mov	(_tancotf_n_1_1 + 1),b
;	tancotf.c 55
;	genCall
	mov	dpl,_tancotf_n_1_1
	mov	dph,(_tancotf_n_1_1 + 1)
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
;	genAssign
	mov	_tancotf_xn_1_1,r6
	mov	(_tancotf_xn_1_1 + 1),r7
	mov	(_tancotf_xn_1_1 + 2),r0
	mov	(_tancotf_xn_1_1 + 3),r1
;	tancotf.c 57
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
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
;	genAssign
	mov	_tancotf_xnum_1_1,r6
	mov	(_tancotf_xnum_1_1 + 1),r7
	mov	(_tancotf_xnum_1_1 + 2),r0
	mov	(_tancotf_xnum_1_1 + 3),r1
;	tancotf.c 58
;	genAssign
	mov	___fssub_PARM_2,_tancotf_xnum_1_1
	mov	(___fssub_PARM_2 + 1),(_tancotf_xnum_1_1 + 1)
	mov	(___fssub_PARM_2 + 2),(_tancotf_xnum_1_1 + 2)
	mov	(___fssub_PARM_2 + 3),(_tancotf_xnum_1_1 + 3)
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
	mov	_tancotf_xden_1_1,r2
	mov	(_tancotf_xden_1_1 + 1),r3
	mov	(_tancotf_xden_1_1 + 2),r4
	mov	(_tancotf_xden_1_1 + 3),r5
;	tancotf.c 59
;	genAssign
	mov	___fsmul_PARM_2,#0x00
	mov	(___fsmul_PARM_2 + 1),#0x00
	mov	(___fsmul_PARM_2 + 2),#0xC9
	mov	(___fsmul_PARM_2 + 3),#0x3F
;	genCall
	mov	dpl,_tancotf_xn_1_1
	mov	dph,(_tancotf_xn_1_1 + 1)
	mov	b,(_tancotf_xn_1_1 + 2)
	mov	a,(_tancotf_xn_1_1 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fssub_PARM_2,r2
	mov	(___fssub_PARM_2 + 1),r3
	mov	(___fssub_PARM_2 + 2),r4
	mov	(___fssub_PARM_2 + 3),r5
;	genCall
	mov	dpl,_tancotf_xnum_1_1
	mov	dph,(_tancotf_xnum_1_1 + 1)
	mov	b,(_tancotf_xnum_1_1 + 2)
	mov	a,(_tancotf_xnum_1_1 + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fsadd_PARM_2,_tancotf_xden_1_1
	mov	(___fsadd_PARM_2 + 1),(_tancotf_xden_1_1 + 1)
	mov	(___fsadd_PARM_2 + 2),(_tancotf_xden_1_1 + 2)
	mov	(___fsadd_PARM_2 + 3),(_tancotf_xden_1_1 + 3)
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
	mov	___fsmul_PARM_2,#0x22
	mov	(___fsmul_PARM_2 + 1),#0xAA
	mov	(___fsmul_PARM_2 + 2),#0xFD
	mov	(___fsmul_PARM_2 + 3),#0x39
;	genCall
	mov	dpl,_tancotf_xn_1_1
	mov	dph,(_tancotf_xn_1_1 + 1)
	mov	b,(_tancotf_xn_1_1 + 2)
	mov	a,(_tancotf_xn_1_1 + 3)
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
	mov	___fssub_PARM_2,r6
	mov	(___fssub_PARM_2 + 1),r7
	mov	(___fssub_PARM_2 + 2),r0
	mov	(___fssub_PARM_2 + 3),r1
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	genAssign
;	tancotf.c 61
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
	mov	___fslt_PARM_2,#0x00
	mov	(___fslt_PARM_2 + 1),#0x00
	mov	(___fslt_PARM_2 + 2),#0x80
	mov	(___fslt_PARM_2 + 3),#0x39
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
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
	jz  00104$
00127$:
;	tancotf.c 63
;	genAssign
	mov	_tancotf_xnum_1_1,r2
	mov	(_tancotf_xnum_1_1 + 1),r3
	mov	(_tancotf_xnum_1_1 + 2),r4
	mov	(_tancotf_xnum_1_1 + 3),r5
;	tancotf.c 64
;	genAssign
	mov	_tancotf_xden_1_1,#0x00
	mov	(_tancotf_xden_1_1 + 1),#0x00
	mov	(_tancotf_xden_1_1 + 2),#0x80
	mov	(_tancotf_xden_1_1 + 3),#0x3F
	ljmp	00105$
00104$:
;	tancotf.c 68
;	genAssign
	mov	___fsmul_PARM_2,r2
	mov	(___fsmul_PARM_2 + 1),r3
	mov	(___fsmul_PARM_2 + 2),r4
	mov	(___fsmul_PARM_2 + 3),r5
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
	mov	_tancotf_g_1_1,r6
	mov	(_tancotf_g_1_1 + 1),r7
	mov	(_tancotf_g_1_1 + 2),r0
	mov	(_tancotf_g_1_1 + 3),r1
;	tancotf.c 69
;	genAssign
	mov	___fsmul_PARM_2,#0xB8
	mov	(___fsmul_PARM_2 + 1),#0x33
	mov	(___fsmul_PARM_2 + 2),#0xC4
	mov	(___fsmul_PARM_2 + 3),#0xBD
;	genCall
	mov	dpl,_tancotf_g_1_1
	mov	dph,(_tancotf_g_1_1 + 1)
	mov	b,(_tancotf_g_1_1 + 2)
	mov	a,(_tancotf_g_1_1 + 3)
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
	mov	___fsmul_PARM_2,r2
	mov	(___fsmul_PARM_2 + 1),r3
	mov	(___fsmul_PARM_2 + 2),r4
	mov	(___fsmul_PARM_2 + 3),r5
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
	mov	___fsadd_PARM_2,r2
	mov	(___fsadd_PARM_2 + 1),r3
	mov	(___fsadd_PARM_2 + 2),r4
	mov	(___fsadd_PARM_2 + 3),r5
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	_tancotf_xnum_1_1,r2
	mov	(_tancotf_xnum_1_1 + 1),r3
	mov	(_tancotf_xnum_1_1 + 2),r4
	mov	(_tancotf_xnum_1_1 + 3),r5
;	tancotf.c 70
;	genAssign
	mov	___fsmul_PARM_2,#0x75
	mov	(___fsmul_PARM_2 + 1),#0x33
	mov	(___fsmul_PARM_2 + 2),#0x1F
	mov	(___fsmul_PARM_2 + 3),#0x3C
;	genCall
	mov	dpl,_tancotf_g_1_1
	mov	dph,(_tancotf_g_1_1 + 1)
	mov	b,(_tancotf_g_1_1 + 2)
	mov	a,(_tancotf_g_1_1 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fsadd_PARM_2,#0xAF
	mov	(___fsadd_PARM_2 + 1),#0xB7
	mov	(___fsadd_PARM_2 + 2),#0xDB
	mov	(___fsadd_PARM_2 + 3),#0xBE
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
	mov	___fsmul_PARM_2,_tancotf_g_1_1
	mov	(___fsmul_PARM_2 + 1),(_tancotf_g_1_1 + 1)
	mov	(___fsmul_PARM_2 + 2),(_tancotf_g_1_1 + 2)
	mov	(___fsmul_PARM_2 + 3),(_tancotf_g_1_1 + 3)
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fsadd_PARM_2,#0x00
	mov	(___fsadd_PARM_2 + 1),#0x00
	mov	(___fsadd_PARM_2 + 2),#0x80
	mov	(___fsadd_PARM_2 + 3),#0x3F
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
	mov	_tancotf_xden_1_1,r2
	mov	(_tancotf_xden_1_1 + 1),r3
	mov	(_tancotf_xden_1_1 + 2),r4
	mov	(_tancotf_xden_1_1 + 3),r5
00105$:
;	tancotf.c 73
;	genAnd
	mov	a,_tancotf_n_1_1
;	genIfxJump
	jb	acc.0,00128$
	ljmp	00113$
00128$:
;	tancotf.c 76
;	genIfx
	mov	a,_tancotf_PARM_2
	orl	a,(_tancotf_PARM_2 + 1)
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00107$
00129$:
;	genUminus
;	genUminusFloat
	mov	a,(_tancotf_xnum_1_1 + 3)
	cpl	acc.7
	mov	r5,a
	mov	r2,_tancotf_xnum_1_1
	mov	r3,(_tancotf_xnum_1_1 + 1)
	mov	r4,(_tancotf_xnum_1_1 + 2)
;	genAssign
	mov	___fsdiv_PARM_2,_tancotf_xden_1_1
	mov	(___fsdiv_PARM_2 + 1),(_tancotf_xden_1_1 + 1)
	mov	(___fsdiv_PARM_2 + 2),(_tancotf_xden_1_1 + 2)
	mov	(___fsdiv_PARM_2 + 3),(_tancotf_xden_1_1 + 3)
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
;	genUminus
;	genUminusFloat
	mov	a,(_tancotf_xden_1_1 + 3)
	cpl	acc.7
	mov	r5,a
	mov	r2,_tancotf_xden_1_1
	mov	r3,(_tancotf_xden_1_1 + 1)
	mov	r4,(_tancotf_xden_1_1 + 2)
;	genAssign
	mov	___fsdiv_PARM_2,_tancotf_xnum_1_1
	mov	(___fsdiv_PARM_2 + 1),(_tancotf_xnum_1_1 + 1)
	mov	(___fsdiv_PARM_2 + 2),(_tancotf_xnum_1_1 + 2)
	mov	(___fsdiv_PARM_2 + 3),(_tancotf_xnum_1_1 + 3)
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
; Peephole 132   changed ljmp to sjmp
	sjmp 00115$
00113$:
;	tancotf.c 81
;	genIfx
	mov	a,_tancotf_PARM_2
	orl	a,(_tancotf_PARM_2 + 1)
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00110$
00130$:
;	genAssign
	mov	___fsdiv_PARM_2,_tancotf_xnum_1_1
	mov	(___fsdiv_PARM_2 + 1),(_tancotf_xnum_1_1 + 1)
	mov	(___fsdiv_PARM_2 + 2),(_tancotf_xnum_1_1 + 2)
	mov	(___fsdiv_PARM_2 + 3),(_tancotf_xnum_1_1 + 3)
;	genCall
	mov	dpl,_tancotf_xden_1_1
	mov	dph,(_tancotf_xden_1_1 + 1)
	mov	b,(_tancotf_xden_1_1 + 2)
	mov	a,(_tancotf_xden_1_1 + 3)
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
	mov	___fsdiv_PARM_2,_tancotf_xden_1_1
	mov	(___fsdiv_PARM_2 + 1),(_tancotf_xden_1_1 + 1)
	mov	(___fsdiv_PARM_2 + 2),(_tancotf_xden_1_1 + 2)
	mov	(___fsdiv_PARM_2 + 3),(_tancotf_xden_1_1 + 3)
;	genCall
	mov	dpl,_tancotf_xnum_1_1
	mov	dph,(_tancotf_xnum_1_1 + 1)
	mov	b,(_tancotf_xnum_1_1 + 2)
	mov	a,(_tancotf_xnum_1_1 + 3)
	lcall	___fsdiv
;	genRet
; Peephole 156   removed misc moves via dph, dpl, b, a before return
00115$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
