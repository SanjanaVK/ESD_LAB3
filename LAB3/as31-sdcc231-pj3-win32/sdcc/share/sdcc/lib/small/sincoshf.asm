;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:10 2002

;--------------------------------------------------------
	.module sincoshf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincoshf
	.globl _sincoshf_PARM_2
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
_sincoshf_PARM_2::
	.ds 2
_sincoshf_x_1_1::
	.ds 4
_sincoshf_w_1_1::
	.ds 4
_sincoshf_z_1_1::
	.ds 4
_sincoshf_sign_1_1::
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
;Allocation info for local variables in function 'sincoshf'
;------------------------------------------------------------
;iscosh                    Allocated to in memory with name '_sincoshf_PARM_2'
;x                         Allocated to in memory with name '_sincoshf_x_1_1'
;y                         Allocated to registers r6 r7 r0 r1 
;w                         Allocated to in memory with name '_sincoshf_w_1_1'
;z                         Allocated to in memory with name '_sincoshf_z_1_1'
;sign                      Allocated to in memory with name '_sincoshf_sign_1_1'
;	sincoshf.c 45
;	-----------------------------------------
;	 function sincoshf
;	-----------------------------------------
_sincoshf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	sincoshf.c 88
;	genReceive
	mov	_sincoshf_x_1_1,dpl
	mov	(_sincoshf_x_1_1 + 1),dph
	mov	(_sincoshf_x_1_1 + 2),b
	mov	(_sincoshf_x_1_1 + 3),a
;	sincoshf.c 50
;	genAssign
	mov	___fslt_PARM_2,#0x00
	mov	(___fslt_PARM_2 + 1),#0x00
	mov	(___fslt_PARM_2 + 2),#0x00
	mov	(___fslt_PARM_2 + 3),#0x00
;	genCall
	mov	dpl,_sincoshf_x_1_1
	mov	dph,(_sincoshf_x_1_1 + 1)
	mov	b,(_sincoshf_x_1_1 + 2)
	mov	a,(_sincoshf_x_1_1 + 3)
	lcall	___fslt
	mov	a,dpl
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00130$:
;	genUminus
;	genUminusFloat
	mov	a,(_sincoshf_x_1_1 + 3)
	cpl	acc.7
	mov	r1,a
	mov	r6,_sincoshf_x_1_1
	mov	r7,(_sincoshf_x_1_1 + 1)
	mov	r0,(_sincoshf_x_1_1 + 2)
;	genAssign
	clr	a
	mov	(_sincoshf_sign_1_1 + 1),a
	mov	_sincoshf_sign_1_1,#0x01
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00102$:
;	sincoshf.c 51
;	genAssign
	mov	r6,_sincoshf_x_1_1
	mov	r7,(_sincoshf_x_1_1 + 1)
	mov	r0,(_sincoshf_x_1_1 + 2)
	mov	r1,(_sincoshf_x_1_1 + 3)
;	genAssign
	clr	a
	mov	(_sincoshf_sign_1_1 + 1),a
	mov	_sincoshf_sign_1_1,a
00103$:
;	sincoshf.c 53
;	genAssign
	mov	___fsgt_PARM_2,#0x00
	mov	(___fsgt_PARM_2 + 1),#0x00
	mov	(___fsgt_PARM_2 + 2),#0x80
	mov	(___fsgt_PARM_2 + 3),#0x3F
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
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
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00117$
00131$:
;	genIfx
	mov	a,_sincoshf_PARM_2
	orl	a,(_sincoshf_PARM_2 + 1)
;	genIfxJump
	jnz	00132$
	ljmp	00118$
00132$:
00117$:
;	sincoshf.c 55
;	genAssign
	mov	___fsgt_PARM_2,#0x00
	mov	(___fsgt_PARM_2 + 1),#0x00
	mov	(___fsgt_PARM_2 + 2),#0x10
	mov	(___fsgt_PARM_2 + 3),#0x41
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
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
	jnz	00133$
	ljmp	00110$
00133$:
;	sincoshf.c 57
;	genAssign
	mov	___fssub_PARM_2,#0x00
	mov	(___fssub_PARM_2 + 1),#0x73
	mov	(___fssub_PARM_2 + 2),#0x31
	mov	(___fssub_PARM_2 + 3),#0x3F
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign
	mov	_sincoshf_w_1_1,r2
	mov	(_sincoshf_w_1_1 + 1),r3
	mov	(_sincoshf_w_1_1 + 2),r4
	mov	(_sincoshf_w_1_1 + 3),r5
;	sincoshf.c 58
;	genAssign
	mov	___fsgt_PARM_2,#0xCF
	mov	(___fsgt_PARM_2 + 1),#0xBD
	mov	(___fsgt_PARM_2 + 2),#0x33
	mov	(___fsgt_PARM_2 + 3),#0x42
;	genCall
	mov	dpl,_sincoshf_w_1_1
	mov	dph,(_sincoshf_w_1_1 + 1)
	mov	b,(_sincoshf_w_1_1 + 2)
	mov	a,(_sincoshf_w_1_1 + 3)
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
	jz  00105$
00134$:
;	sincoshf.c 60
;	genAssign
	clr	a
	mov	(_errno + 1),a
	mov	_errno,#0x22
;	sincoshf.c 61
;	genAssign
	mov	_sincoshf_z_1_1,#0xFF
	mov	(_sincoshf_z_1_1 + 1),#0xFF
	mov	(_sincoshf_z_1_1 + 2),#0x7F
	mov	(_sincoshf_z_1_1 + 3),#0x7F
	ljmp	00111$
00105$:
;	sincoshf.c 65
;	genCall
	mov	dpl,_sincoshf_w_1_1
	mov	dph,(_sincoshf_w_1_1 + 1)
	mov	b,(_sincoshf_w_1_1 + 2)
	mov	a,(_sincoshf_w_1_1 + 3)
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_expf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign
	mov	_sincoshf_z_1_1,r2
	mov	(_sincoshf_z_1_1 + 1),r3
	mov	(_sincoshf_z_1_1 + 2),r4
	mov	(_sincoshf_z_1_1 + 3),r5
;	sincoshf.c 66
;	genAssign
	mov	___fsmul_PARM_2,#0x97
	mov	(___fsmul_PARM_2 + 1),#0x08
	mov	(___fsmul_PARM_2 + 2),#0x68
	mov	(___fsmul_PARM_2 + 3),#0x37
;	genCall
	mov	dpl,_sincoshf_z_1_1
	mov	dph,(_sincoshf_z_1_1 + 1)
	mov	b,(_sincoshf_z_1_1 + 2)
	mov	a,(_sincoshf_z_1_1 + 3)
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
	mov	___fsadd_PARM_2,r2
	mov	(___fsadd_PARM_2 + 1),r3
	mov	(___fsadd_PARM_2 + 2),r4
	mov	(___fsadd_PARM_2 + 3),r5
;	genCall
	mov	dpl,_sincoshf_z_1_1
	mov	dph,(_sincoshf_z_1_1 + 1)
	mov	b,(_sincoshf_z_1_1 + 2)
	mov	a,(_sincoshf_z_1_1 + 3)
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign
	mov	_sincoshf_z_1_1,r2
	mov	(_sincoshf_z_1_1 + 1),r3
	mov	(_sincoshf_z_1_1 + 2),r4
	mov	(_sincoshf_z_1_1 + 3),r5
	ljmp	00111$
00110$:
;	sincoshf.c 71
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_expf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign
	mov	_sincoshf_z_1_1,r2
	mov	(_sincoshf_z_1_1 + 1),r3
	mov	(_sincoshf_z_1_1 + 2),r4
	mov	(_sincoshf_z_1_1 + 3),r5
;	sincoshf.c 72
;	genAssign
	mov	___fsdiv_PARM_2,_sincoshf_z_1_1
	mov	(___fsdiv_PARM_2 + 1),(_sincoshf_z_1_1 + 1)
	mov	(___fsdiv_PARM_2 + 2),(_sincoshf_z_1_1 + 2)
	mov	(___fsdiv_PARM_2 + 3),(_sincoshf_z_1_1 + 3)
;	genCall
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign
	mov	_sincoshf_w_1_1,r2
	mov	(_sincoshf_w_1_1 + 1),r3
	mov	(_sincoshf_w_1_1 + 2),r4
	mov	(_sincoshf_w_1_1 + 3),r5
;	sincoshf.c 73
;	genIfx
	mov	a,_sincoshf_PARM_2
	orl	a,(_sincoshf_PARM_2 + 1)
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00108$
00135$:
;	genUminus
;	genUminusFloat
	mov	a,(_sincoshf_w_1_1 + 3)
	cpl	acc.7
	mov	(_sincoshf_w_1_1 + 3),a
00108$:
;	sincoshf.c 74
;	genAssign
	mov	___fsadd_PARM_2,_sincoshf_w_1_1
	mov	(___fsadd_PARM_2 + 1),(_sincoshf_w_1_1 + 1)
	mov	(___fsadd_PARM_2 + 2),(_sincoshf_w_1_1 + 2)
	mov	(___fsadd_PARM_2 + 3),(_sincoshf_w_1_1 + 3)
;	genCall
	mov	dpl,_sincoshf_z_1_1
	mov	dph,(_sincoshf_z_1_1 + 1)
	mov	b,(_sincoshf_z_1_1 + 2)
	mov	a,(_sincoshf_z_1_1 + 3)
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign
	mov	___fsmul_PARM_2,#0x00
	mov	(___fsmul_PARM_2 + 1),#0x00
	mov	(___fsmul_PARM_2 + 2),#0x00
	mov	(___fsmul_PARM_2 + 3),#0x3F
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
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
	mov	_sincoshf_z_1_1,r2
	mov	(_sincoshf_z_1_1 + 1),r3
	mov	(_sincoshf_z_1_1 + 2),r4
	mov	(_sincoshf_z_1_1 + 3),r5
00111$:
;	sincoshf.c 76
;	genIfx
	mov	a,_sincoshf_sign_1_1
	orl	a,(_sincoshf_sign_1_1 + 1)
;	genIfxJump
	jnz	00136$
	ljmp	00119$
00136$:
;	genUminus
;	genUminusFloat
	mov	a,(_sincoshf_z_1_1 + 3)
	cpl	acc.7
	mov	(_sincoshf_z_1_1 + 3),a
	ljmp	00119$
00118$:
;	sincoshf.c 80
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
	lcall	___fslt
	mov	a,dpl
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00115$
00137$:
;	sincoshf.c 81
;	genAssign
	mov	_sincoshf_z_1_1,_sincoshf_x_1_1
	mov	(_sincoshf_z_1_1 + 1),(_sincoshf_x_1_1 + 1)
	mov	(_sincoshf_z_1_1 + 2),(_sincoshf_x_1_1 + 2)
	mov	(_sincoshf_z_1_1 + 3),(_sincoshf_x_1_1 + 3)
	ljmp	00119$
00115$:
;	sincoshf.c 84
;	genAssign
	mov	___fsmul_PARM_2,_sincoshf_x_1_1
	mov	(___fsmul_PARM_2 + 1),(_sincoshf_x_1_1 + 1)
	mov	(___fsmul_PARM_2 + 2),(_sincoshf_x_1_1 + 2)
	mov	(___fsmul_PARM_2 + 3),(_sincoshf_x_1_1 + 3)
;	genCall
	mov	dpl,_sincoshf_x_1_1
	mov	dph,(_sincoshf_x_1_1 + 1)
	mov	b,(_sincoshf_x_1_1 + 2)
	mov	a,(_sincoshf_x_1_1 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	_sincoshf_z_1_1,r2
	mov	(_sincoshf_z_1_1 + 1),r3
	mov	(_sincoshf_z_1_1 + 2),r4
	mov	(_sincoshf_z_1_1 + 3),r5
;	sincoshf.c 85
;	genAssign
	mov	___fsmul_PARM_2,_sincoshf_z_1_1
	mov	(___fsmul_PARM_2 + 1),(_sincoshf_z_1_1 + 1)
	mov	(___fsmul_PARM_2 + 2),(_sincoshf_z_1_1 + 2)
	mov	(___fsmul_PARM_2 + 3),(_sincoshf_z_1_1 + 3)
;	genCall
	mov	dpl,_sincoshf_x_1_1
	mov	dph,(_sincoshf_x_1_1 + 1)
	mov	b,(_sincoshf_x_1_1 + 2)
	mov	a,(_sincoshf_x_1_1 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fsmul_PARM_2,#0xEA
	mov	(___fsmul_PARM_2 + 1),#0xE6
	mov	(___fsmul_PARM_2 + 2),#0x42
	mov	(___fsmul_PARM_2 + 3),#0xBE
;	genCall
	mov	dpl,_sincoshf_z_1_1
	mov	dph,(_sincoshf_z_1_1 + 1)
	mov	b,(_sincoshf_z_1_1 + 2)
	mov	a,(_sincoshf_z_1_1 + 3)
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
	mov	___fsadd_PARM_2,#0xF0
	mov	(___fsadd_PARM_2 + 1),#0x69
	mov	(___fsadd_PARM_2 + 2),#0xE4
	mov	(___fsadd_PARM_2 + 3),#0xC0
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
	mov	___fsmul_PARM_2,r6
	mov	(___fsmul_PARM_2 + 1),r7
	mov	(___fsmul_PARM_2 + 2),r0
	mov	(___fsmul_PARM_2 + 3),r1
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
	mov	___fsadd_PARM_2,#0x93
	mov	(___fsadd_PARM_2 + 1),#0x4F
	mov	(___fsadd_PARM_2 + 2),#0x2B
	mov	(___fsadd_PARM_2 + 3),#0xC2
;	genCall
	mov	dpl,_sincoshf_z_1_1
	mov	dph,(_sincoshf_z_1_1 + 1)
	mov	b,(_sincoshf_z_1_1 + 2)
	mov	a,(_sincoshf_z_1_1 + 3)
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
	mov	___fsdiv_PARM_2,r6
	mov	(___fsdiv_PARM_2 + 1),r7
	mov	(___fsdiv_PARM_2 + 2),r0
	mov	(___fsdiv_PARM_2 + 3),r1
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
	mov	___fsadd_PARM_2,r2
	mov	(___fsadd_PARM_2 + 1),r3
	mov	(___fsadd_PARM_2 + 2),r4
	mov	(___fsadd_PARM_2 + 3),r5
;	genCall
	mov	dpl,_sincoshf_x_1_1
	mov	dph,(_sincoshf_x_1_1 + 1)
	mov	b,(_sincoshf_x_1_1 + 2)
	mov	a,(_sincoshf_x_1_1 + 3)
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	_sincoshf_z_1_1,r2
	mov	(_sincoshf_z_1_1 + 1),r3
	mov	(_sincoshf_z_1_1 + 2),r4
	mov	(_sincoshf_z_1_1 + 3),r5
00119$:
;	sincoshf.c 88
;	genRet
	mov	dpl,_sincoshf_z_1_1
	mov	dph,(_sincoshf_z_1_1 + 1)
	mov	b,(_sincoshf_z_1_1 + 2)
	mov	a,(_sincoshf_z_1_1 + 3)
00121$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
