;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:07 2002

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
_sincosf_PARM_2::
	.ds 2
_sincosf_y_1_1::
	.ds 4
_sincosf_r_1_1::
	.ds 4
_sincosf_g_1_1::
	.ds 4
_sincosf_XN_1_1::
	.ds 4
_sincosf_sign_1_1::
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
;Allocation info for local variables in function 'sincosf'
;------------------------------------------------------------
;iscos                     Allocated to in memory with name '_sincosf_PARM_2'
;x                         Allocated to registers r2 r3 r4 r5 
;y                         Allocated to in memory with name '_sincosf_y_1_1'
;f                         Allocated to registers r2 r3 r4 r5 
;r                         Allocated to in memory with name '_sincosf_r_1_1'
;g                         Allocated to in memory with name '_sincosf_g_1_1'
;XN                        Allocated to in memory with name '_sincosf_XN_1_1'
;N                         Allocated to registers r6 r7 
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
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	sincosf.c 44
;	genIfx
	mov	a,_sincosf_PARM_2
	orl	a,(_sincosf_PARM_2 + 1)
;	genIfxJump
	jnz	00126$
	ljmp	00105$
00126$:
;	sincosf.c 46
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
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
	mov	___fsadd_PARM_2,#0xDB
	mov	(___fsadd_PARM_2 + 1),#0x0F
	mov	(___fsadd_PARM_2 + 2),#0xC9
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
	mov	_sincosf_y_1_1,r6
	mov	(_sincosf_y_1_1 + 1),r7
	mov	(_sincosf_y_1_1 + 2),r0
	mov	(_sincosf_y_1_1 + 3),r1
;	sincosf.c 47
;	genAssign
	clr	a
	mov	(_sincosf_sign_1_1 + 1),a
	mov	_sincosf_sign_1_1,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00106$
00105$:
;	sincosf.c 51
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
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00127$:
;	sincosf.c 52
;	genUminus
;	genUminusFloat
	mov	a,r5
	cpl	acc.7
	mov	(_sincosf_y_1_1 + 3),a
	mov	_sincosf_y_1_1,r2
	mov	(_sincosf_y_1_1 + 1),r3
	mov	(_sincosf_y_1_1 + 2),r4
;	genAssign
	clr	a
	mov	(_sincosf_sign_1_1 + 1),a
	mov	_sincosf_sign_1_1,#0x01
; Peephole 132   changed ljmp to sjmp
	sjmp 00106$
00102$:
;	sincosf.c 54
;	genAssign
	mov	_sincosf_y_1_1,r2
	mov	(_sincosf_y_1_1 + 1),r3
	mov	(_sincosf_y_1_1 + 2),r4
	mov	(_sincosf_y_1_1 + 3),r5
;	genAssign
	clr	a
	mov	(_sincosf_sign_1_1 + 1),a
	mov	_sincosf_sign_1_1,a
00106$:
;	sincosf.c 57
;	genAssign
	mov	___fsgt_PARM_2,#0x00
	mov	(___fsgt_PARM_2 + 1),#0x0C
	mov	(___fsgt_PARM_2 + 2),#0x49
	mov	(___fsgt_PARM_2 + 3),#0x46
;	genCall
	mov	dpl,_sincosf_y_1_1
	mov	dph,(_sincosf_y_1_1 + 1)
	mov	b,(_sincosf_y_1_1 + 2)
	mov	a,(_sincosf_y_1_1 + 3)
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
	jz  00108$
00128$:
;	sincosf.c 59
;	genAssign
	clr	a
	mov	(_errno + 1),a
	mov	_errno,#0x22
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
	mov	___fsmul_PARM_2,#0x83
	mov	(___fsmul_PARM_2 + 1),#0xF9
	mov	(___fsmul_PARM_2 + 2),#0xA2
	mov	(___fsmul_PARM_2 + 3),#0x3E
;	genCall
	mov	dpl,_sincosf_y_1_1
	mov	dph,(_sincosf_y_1_1 + 1)
	mov	b,(_sincosf_y_1_1 + 2)
	mov	a,(_sincosf_y_1_1 + 3)
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
	mov	r6,a
	mov	r7,b
;	sincosf.c 67
;	genAnd
	mov	a,r6
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.0,00110$
00129$:
;	genCpl
	mov	a,_sincosf_sign_1_1
	cpl	a
	mov	_sincosf_sign_1_1,a
	mov	a,(_sincosf_sign_1_1 + 1)
	cpl	a
	mov	(_sincosf_sign_1_1 + 1),a
00110$:
;	sincosf.c 69
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
	mov	_sincosf_XN_1_1,r6
	mov	(_sincosf_XN_1_1 + 1),r7
	mov	(_sincosf_XN_1_1 + 2),r0
	mov	(_sincosf_XN_1_1 + 3),r1
;	sincosf.c 71
;	genIfx
	mov	a,_sincosf_PARM_2
	orl	a,(_sincosf_PARM_2 + 1)
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00112$
00130$:
;	genAssign
	mov	___fssub_PARM_2,#0x00
	mov	(___fssub_PARM_2 + 1),#0x00
	mov	(___fssub_PARM_2 + 2),#0x00
	mov	(___fssub_PARM_2 + 3),#0x3F
;	genCall
	mov	dpl,_sincosf_XN_1_1
	mov	dph,(_sincosf_XN_1_1 + 1)
	mov	b,(_sincosf_XN_1_1 + 2)
	mov	a,(_sincosf_XN_1_1 + 3)
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
	mov	_sincosf_XN_1_1,r6
	mov	(_sincosf_XN_1_1 + 1),r7
	mov	(_sincosf_XN_1_1 + 2),r0
	mov	(_sincosf_XN_1_1 + 3),r1
00112$:
;	sincosf.c 73
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_fabsf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	_sincosf_y_1_1,r2
	mov	(_sincosf_y_1_1 + 1),r3
	mov	(_sincosf_y_1_1 + 2),r4
	mov	(_sincosf_y_1_1 + 3),r5
;	sincosf.c 74
;	genCall
	mov	dpl,_sincosf_y_1_1
	mov	dph,(_sincosf_y_1_1 + 1)
	mov	b,(_sincosf_y_1_1 + 2)
	mov	a,(_sincosf_y_1_1 + 3)
	lcall	___fs2sint
;	genCall
; Peephole 223   removed redundant dph/dpl moves
	mov     r2,dpl
	mov     r3,dph
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	_sincosf_r_1_1,r2
	mov	(_sincosf_r_1_1 + 1),r3
	mov	(_sincosf_r_1_1 + 2),r4
	mov	(_sincosf_r_1_1 + 3),r5
;	sincosf.c 75
;	genAssign
	mov	___fssub_PARM_2,_sincosf_r_1_1
	mov	(___fssub_PARM_2 + 1),(_sincosf_r_1_1 + 1)
	mov	(___fssub_PARM_2 + 2),(_sincosf_r_1_1 + 2)
	mov	(___fssub_PARM_2 + 3),(_sincosf_r_1_1 + 3)
;	genCall
	mov	dpl,_sincosf_y_1_1
	mov	dph,(_sincosf_y_1_1 + 1)
	mov	b,(_sincosf_y_1_1 + 2)
	mov	a,(_sincosf_y_1_1 + 3)
	lcall	___fssub
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
;	genAssign
	mov	_sincosf_g_1_1,r6
	mov	(_sincosf_g_1_1 + 1),r7
	mov	(_sincosf_g_1_1 + 2),r0
	mov	(_sincosf_g_1_1 + 3),r1
;	sincosf.c 76
;	genAssign
	mov	___fsmul_PARM_2,#0x00
	mov	(___fsmul_PARM_2 + 1),#0x00
	mov	(___fsmul_PARM_2 + 2),#0x49
	mov	(___fsmul_PARM_2 + 3),#0x40
;	genCall
	mov	dpl,_sincosf_XN_1_1
	mov	dph,(_sincosf_XN_1_1 + 1)
	mov	b,(_sincosf_XN_1_1 + 2)
	mov	a,(_sincosf_XN_1_1 + 3)
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
	mov	dpl,_sincosf_r_1_1
	mov	dph,(_sincosf_r_1_1 + 1)
	mov	b,(_sincosf_r_1_1 + 2)
	mov	a,(_sincosf_r_1_1 + 3)
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fsadd_PARM_2,_sincosf_g_1_1
	mov	(___fsadd_PARM_2 + 1),(_sincosf_g_1_1 + 1)
	mov	(___fsadd_PARM_2 + 2),(_sincosf_g_1_1 + 2)
	mov	(___fsadd_PARM_2 + 3),(_sincosf_g_1_1 + 3)
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
	mov	(___fsmul_PARM_2 + 2),#0x7D
	mov	(___fsmul_PARM_2 + 3),#0x3A
;	genCall
	mov	dpl,_sincosf_XN_1_1
	mov	dph,(_sincosf_XN_1_1 + 1)
	mov	b,(_sincosf_XN_1_1 + 2)
	mov	a,(_sincosf_XN_1_1 + 3)
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
	mov	r5,a
;	genAssign
;	sincosf.c 78
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
	mov	_sincosf_g_1_1,r6
	mov	(_sincosf_g_1_1 + 1),r7
	mov	(_sincosf_g_1_1 + 2),r0
	mov	(_sincosf_g_1_1 + 3),r1
;	sincosf.c 79
;	genAssign
	mov	___fsgt_PARM_2,#0xF3
	mov	(___fsgt_PARM_2 + 1),#0xFF
	mov	(___fsgt_PARM_2 + 2),#0x7F
	mov	(___fsgt_PARM_2 + 3),#0x33
;	genCall
	mov	dpl,_sincosf_g_1_1
	mov	dph,(_sincosf_g_1_1 + 1)
	mov	b,(_sincosf_g_1_1 + 2)
	mov	a,(_sincosf_g_1_1 + 3)
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
	mov	___fsmul_PARM_2,#0x5B
	mov	(___fsmul_PARM_2 + 1),#0x9C
	mov	(___fsmul_PARM_2 + 2),#0x2E
	mov	(___fsmul_PARM_2 + 3),#0x36
;	genCall
	mov	dpl,_sincosf_g_1_1
	mov	dph,(_sincosf_g_1_1 + 1)
	mov	b,(_sincosf_g_1_1 + 2)
	mov	a,(_sincosf_g_1_1 + 3)
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
	mov	___fsadd_PARM_2,#0x22
	mov	(___fsadd_PARM_2 + 1),#0xB2
	mov	(___fsadd_PARM_2 + 2),#0x4F
	mov	(___fsadd_PARM_2 + 3),#0xB9
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
	mov	___fsmul_PARM_2,_sincosf_g_1_1
	mov	(___fsmul_PARM_2 + 1),(_sincosf_g_1_1 + 1)
	mov	(___fsmul_PARM_2 + 2),(_sincosf_g_1_1 + 2)
	mov	(___fsmul_PARM_2 + 3),(_sincosf_g_1_1 + 3)
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
	mov	___fsadd_PARM_2,#0x3E
	mov	(___fsadd_PARM_2 + 1),#0x87
	mov	(___fsadd_PARM_2 + 2),#0x08
	mov	(___fsadd_PARM_2 + 3),#0x3C
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
	mov	___fsmul_PARM_2,_sincosf_g_1_1
	mov	(___fsmul_PARM_2 + 1),(_sincosf_g_1_1 + 1)
	mov	(___fsmul_PARM_2 + 2),(_sincosf_g_1_1 + 2)
	mov	(___fsmul_PARM_2 + 3),(_sincosf_g_1_1 + 3)
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
	mov	___fsadd_PARM_2,#0xA4
	mov	(___fsadd_PARM_2 + 1),#0xAA
	mov	(___fsadd_PARM_2 + 2),#0x2A
	mov	(___fsadd_PARM_2 + 3),#0xBE
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
	mov	___fsmul_PARM_2,_sincosf_g_1_1
	mov	(___fsmul_PARM_2 + 1),(_sincosf_g_1_1 + 1)
	mov	(___fsmul_PARM_2 + 2),(_sincosf_g_1_1 + 2)
	mov	(___fsmul_PARM_2 + 3),(_sincosf_g_1_1 + 3)
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
	mov	___fsmul_PARM_2,r6
	mov	(___fsmul_PARM_2 + 1),r7
	mov	(___fsmul_PARM_2 + 2),r0
	mov	(___fsmul_PARM_2 + 3),r1
;	sincosf.c 82
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
	mov	___fsadd_PARM_2,r6
	mov	(___fsadd_PARM_2 + 1),r7
	mov	(___fsadd_PARM_2 + 2),r0
	mov	(___fsadd_PARM_2 + 3),r1
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
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
00114$:
;	sincosf.c 84
;	genIfx
	mov	a,_sincosf_sign_1_1
	orl	a,(_sincosf_sign_1_1 + 1)
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00117$
00132$:
;	genUminus
;	genUminusFloat
	mov	a,r5
	cpl	acc.7
	mov	r1,a
	mov	ar6,r2
	mov	ar7,r3
	mov	ar0,r4
; Peephole 132   changed ljmp to sjmp
	sjmp 00118$
00117$:
;	genAssign
	mov	ar6,r2
	mov	ar7,r3
	mov	ar0,r4
	mov	ar1,r5
00118$:
;	genRet
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
00115$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
