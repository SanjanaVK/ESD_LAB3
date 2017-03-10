;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:06 2002

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
_expf_n_1_1::
	.ds 2
_expf_xn_1_1::
	.ds 4
_expf_z_1_1::
	.ds 4
_expf_y_1_1::
	.ds 4
_expf_sign_1_1::
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
;Allocation info for local variables in function 'expf'
;------------------------------------------------------------
;x                         Allocated to registers r2 r3 r4 r5 
;n                         Allocated to in memory with name '_expf_n_1_1'
;xn                        Allocated to in memory with name '_expf_xn_1_1'
;g                         Allocated to registers r2 r3 r4 r5 
;r                         Allocated to registers r2 r3 r4 r5 
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
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	expf.c 48
;	genAssign
	mov	___fslt_PARM_2,#0x00
	mov	(___fslt_PARM_2 + 1),#0x00
	mov	(___fslt_PARM_2 + 2),#0x00
	mov	(___fslt_PARM_2 + 3),#0x00
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
	mov	_expf_y_1_1,r2
	mov	(_expf_y_1_1 + 1),r3
	mov	(_expf_y_1_1 + 2),r4
	mov	(_expf_y_1_1 + 3),r5
;	genAssign
	clr	a
	mov	(_expf_sign_1_1 + 1),a
	mov	_expf_sign_1_1,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00102$:
;	expf.c 51
;	genUminus
;	genUminusFloat
	mov	a,r5
	cpl	acc.7
	mov	(_expf_y_1_1 + 3),a
	mov	_expf_y_1_1,r2
	mov	(_expf_y_1_1 + 1),r3
	mov	(_expf_y_1_1 + 2),r4
;	genAssign
	clr	a
	mov	(_expf_sign_1_1 + 1),a
	mov	_expf_sign_1_1,#0x01
00103$:
;	expf.c 53
;	genAssign
	mov	___fslt_PARM_2,#0x95
	mov	(___fslt_PARM_2 + 1),#0xBF
	mov	(___fslt_PARM_2 + 2),#0xD6
	mov	(___fslt_PARM_2 + 3),#0x33
;	genCall
	mov	dpl,_expf_y_1_1
	mov	dph,(_expf_y_1_1 + 1)
	mov	b,(_expf_y_1_1 + 2)
	mov	a,(_expf_y_1_1 + 3)
	lcall	___fslt
	mov	a,dpl
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
	mov	___fsgt_PARM_2,#0x18
	mov	(___fsgt_PARM_2 + 1),#0x72
	mov	(___fsgt_PARM_2 + 2),#0xB1
	mov	(___fsgt_PARM_2 + 3),#0x42
;	genCall
	mov	dpl,_expf_y_1_1
	mov	dph,(_expf_y_1_1 + 1)
	mov	b,(_expf_y_1_1 + 2)
	mov	a,(_expf_y_1_1 + 3)
	lcall	___fsgt
	mov	a,dpl
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00110$
00129$:
;	expf.c 57
;	genIfx
	mov	a,_expf_sign_1_1
	orl	a,(_expf_sign_1_1 + 1)
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00107$
00130$:
;	expf.c 59
;	genAssign
	clr	a
	mov	(_errno + 1),a
	mov	_errno,#0x22
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
	mov	___fsmul_PARM_2,#0x3B
	mov	(___fsmul_PARM_2 + 1),#0xAA
	mov	(___fsmul_PARM_2 + 2),#0xB8
	mov	(___fsmul_PARM_2 + 3),#0x3F
;	genCall
	mov	dpl,_expf_y_1_1
	mov	dph,(_expf_y_1_1 + 1)
	mov	b,(_expf_y_1_1 + 2)
	mov	a,(_expf_y_1_1 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	_expf_z_1_1,r2
	mov	(_expf_z_1_1 + 1),r3
	mov	(_expf_z_1_1 + 2),r4
	mov	(_expf_z_1_1 + 3),r5
;	expf.c 69
;	genCall
	mov	dpl,_expf_z_1_1
	mov	dph,(_expf_z_1_1 + 1)
	mov	b,(_expf_z_1_1 + 2)
	mov	a,(_expf_z_1_1 + 3)
	lcall	___fs2sint
	mov	a,dpl
	mov	b,dph
;	genAssign
	mov	_expf_n_1_1,a
	mov	(_expf_n_1_1 + 1),b
;	expf.c 71
;	genCmpLt
;	genCmp
	mov	a,(_expf_n_1_1 + 1)
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00112$
00131$:
;	genMinus
;	genMinusDec
	dec	_expf_n_1_1
	mov	a,#0xff
	cjne	a,_expf_n_1_1,00132$
	dec	(_expf_n_1_1 + 1)
00132$:
00112$:
;	expf.c 72
;	genCall
	mov	dpl,_expf_n_1_1
	mov	dph,(_expf_n_1_1 + 1)
	lcall	___sint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
;	genAssign
	mov	___fssub_PARM_2,r0
	mov	(___fssub_PARM_2 + 1),r1
	mov	(___fssub_PARM_2 + 2),r2
	mov	(___fssub_PARM_2 + 3),r3
;	genCall
	mov	dpl,_expf_z_1_1
	mov	dph,(_expf_z_1_1 + 1)
	mov	b,(_expf_z_1_1 + 2)
	mov	a,(_expf_z_1_1 + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fslt_PARM_2,#0x00
	mov	(___fslt_PARM_2 + 1),#0x00
	mov	(___fslt_PARM_2 + 2),#0x00
	mov	(___fslt_PARM_2 + 3),#0x3F
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
;	genPlusIncr
	inc	_expf_n_1_1
	clr	a
	cjne	a,_expf_n_1_1,00134$
	inc	(_expf_n_1_1 + 1)
00134$:
00114$:
;	expf.c 73
;	genCall
	mov	dpl,_expf_n_1_1
	mov	dph,(_expf_n_1_1 + 1)
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	_expf_xn_1_1,r2
	mov	(_expf_xn_1_1 + 1),r3
	mov	(_expf_xn_1_1 + 2),r4
	mov	(_expf_xn_1_1 + 3),r5
;	expf.c 74
;	genAssign
	mov	___fsmul_PARM_2,#0x00
	mov	(___fsmul_PARM_2 + 1),#0x80
	mov	(___fsmul_PARM_2 + 2),#0x31
	mov	(___fsmul_PARM_2 + 3),#0x3F
;	genCall
	mov	dpl,_expf_xn_1_1
	mov	dph,(_expf_xn_1_1 + 1)
	mov	b,(_expf_xn_1_1 + 2)
	mov	a,(_expf_xn_1_1 + 3)
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
;	genAssign
	mov	___fssub_PARM_2,r0
	mov	(___fssub_PARM_2 + 1),r1
	mov	(___fssub_PARM_2 + 2),r2
	mov	(___fssub_PARM_2 + 3),r3
;	genCall
	mov	dpl,_expf_y_1_1
	mov	dph,(_expf_y_1_1 + 1)
	mov	b,(_expf_y_1_1 + 2)
	mov	a,(_expf_y_1_1 + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fsmul_PARM_2,#0x83
	mov	(___fsmul_PARM_2 + 1),#0x80
	mov	(___fsmul_PARM_2 + 2),#0x5E
	mov	(___fsmul_PARM_2 + 3),#0xB9
;	genCall
	mov	dpl,_expf_xn_1_1
	mov	dph,(_expf_xn_1_1 + 1)
	mov	b,(_expf_xn_1_1 + 2)
	mov	a,(_expf_xn_1_1 + 3)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fsmul
	mov	r0,dpl
	mov	r1,dph
	mov	r6,b
	mov	r7,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	___fssub_PARM_2,r0
	mov	(___fssub_PARM_2 + 1),r1
	mov	(___fssub_PARM_2 + 2),r6
	mov	(___fssub_PARM_2 + 3),r7
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
;	expf.c 75
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
	mov	_expf_z_1_1,r6
	mov	(_expf_z_1_1 + 1),r7
	mov	(_expf_z_1_1 + 2),r0
	mov	(_expf_z_1_1 + 3),r1
;	expf.c 76
;	genAssign
	mov	___fsmul_PARM_2,#0x08
	mov	(___fsmul_PARM_2 + 1),#0x53
	mov	(___fsmul_PARM_2 + 2),#0x88
	mov	(___fsmul_PARM_2 + 3),#0x3B
;	genCall
	mov	dpl,_expf_z_1_1
	mov	dph,(_expf_z_1_1 + 1)
	mov	b,(_expf_z_1_1 + 2)
	mov	a,(_expf_z_1_1 + 3)
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
	mov	___fsadd_PARM_2,#0x00
	mov	(___fsadd_PARM_2 + 1),#0x00
	mov	(___fsadd_PARM_2 + 2),#0x80
	mov	(___fsadd_PARM_2 + 3),#0x3E
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
	mov	___fsmul_PARM_2,r2
	mov	(___fsmul_PARM_2 + 1),r3
	mov	(___fsmul_PARM_2 + 2),r4
	mov	(___fsmul_PARM_2 + 3),r5
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
;	expf.c 77
;	genAssign
	mov	___fsmul_PARM_2,#0x5B
	mov	(___fsmul_PARM_2 + 1),#0xBF
	mov	(___fsmul_PARM_2 + 2),#0x4C
	mov	(___fsmul_PARM_2 + 3),#0x3D
;	genCall
	mov	dpl,_expf_z_1_1
	mov	dph,(_expf_z_1_1 + 1)
	mov	b,(_expf_z_1_1 + 2)
	mov	a,(_expf_z_1_1 + 3)
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
	mov	___fsadd_PARM_2,#0x00
	mov	(___fsadd_PARM_2 + 1),#0x00
	mov	(___fsadd_PARM_2 + 2),#0x00
	mov	(___fsadd_PARM_2 + 3),#0x3F
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
	mov	___fssub_PARM_2,r2
	mov	(___fssub_PARM_2 + 1),r3
	mov	(___fssub_PARM_2 + 2),r4
	mov	(___fssub_PARM_2 + 3),r5
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
	mov	___fsdiv_PARM_2,r6
	mov	(___fsdiv_PARM_2 + 1),r7
	mov	(___fsdiv_PARM_2 + 2),r0
	mov	(___fsdiv_PARM_2 + 3),r1
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
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
;	genAssign
	mov	___fsadd_PARM_2,#0x00
	mov	(___fsadd_PARM_2 + 1),#0x00
	mov	(___fsadd_PARM_2 + 2),#0x00
	mov	(___fsadd_PARM_2 + 3),#0x3F
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
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r0
	mov	ar5,r1
;	expf.c 79
;	genPlus
;	genPlusIncr
	mov	a,#0x01
	add	a,_expf_n_1_1
	mov	_ldexpf_PARM_2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_expf_n_1_1 + 1)
	mov	(_ldexpf_PARM_2 + 1),a
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
;	genAssign
	mov	_expf_z_1_1,r2
	mov	(_expf_z_1_1 + 1),r3
	mov	(_expf_z_1_1 + 2),r4
	mov	(_expf_z_1_1 + 3),r5
;	expf.c 81
;	genIfx
	mov	a,_expf_sign_1_1
	orl	a,(_expf_sign_1_1 + 1)
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00116$
00135$:
;	expf.c 82
;	genAssign
	mov	___fsdiv_PARM_2,_expf_z_1_1
	mov	(___fsdiv_PARM_2 + 1),(_expf_z_1_1 + 1)
	mov	(___fsdiv_PARM_2 + 2),(_expf_z_1_1 + 2)
	mov	(___fsdiv_PARM_2 + 3),(_expf_z_1_1 + 3)
;	genCall
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
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
	sjmp 00118$
00116$:
;	expf.c 84
;	genRet
	mov	dpl,_expf_z_1_1
	mov	dph,(_expf_z_1_1 + 1)
	mov	b,(_expf_z_1_1 + 2)
	mov	a,(_expf_z_1_1 + 3)
00118$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
