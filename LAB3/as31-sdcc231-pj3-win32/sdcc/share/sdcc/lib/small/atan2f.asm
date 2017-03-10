;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:10 2002

;--------------------------------------------------------
	.module atan2f
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atan2f_PARM_2
	.globl _atan2f
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
_atan2f_PARM_2::
	.ds 4
_atan2f_x_1_1::
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
;Allocation info for local variables in function 'atan2f'
;------------------------------------------------------------
;y                         Allocated to in memory with name '_atan2f_PARM_2'
;x                         Allocated to in memory with name '_atan2f_x_1_1'
;r                         Allocated to registers r2 r3 r4 r5 
;	atan2f.c 24
;	-----------------------------------------
;	 function atan2f
;	-----------------------------------------
_atan2f:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	atan2f.c 44
;	genReceive
	mov	_atan2f_x_1_1,dpl
	mov	(_atan2f_x_1_1 + 1),dph
	mov	(_atan2f_x_1_1 + 2),b
	mov	(_atan2f_x_1_1 + 3),a
;	atan2f.c 28
;	genAssign
	mov	___fseq_PARM_2,#0x00
	mov	(___fseq_PARM_2 + 1),#0x00
	mov	(___fseq_PARM_2 + 2),#0x00
	mov	(___fseq_PARM_2 + 3),#0x00
;	genCall
	mov	dpl,_atan2f_x_1_1
	mov	dph,(_atan2f_x_1_1 + 1)
	mov	b,(_atan2f_x_1_1 + 2)
	mov	a,(_atan2f_x_1_1 + 3)
	lcall	___fseq
	mov	a,dpl
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00121$:
;	genAssign
	mov	___fseq_PARM_2,#0x00
	mov	(___fseq_PARM_2 + 1),#0x00
	mov	(___fseq_PARM_2 + 2),#0x00
	mov	(___fseq_PARM_2 + 3),#0x00
;	genCall
	mov	dpl,_atan2f_PARM_2
	mov	dph,(_atan2f_PARM_2 + 1)
	mov	b,(_atan2f_PARM_2 + 2)
	mov	a,(_atan2f_PARM_2 + 3)
	lcall	___fseq
	mov	a,dpl
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00122$:
;	atan2f.c 30
;	genAssign
	clr	a
	mov	(_errno + 1),a
	mov	_errno,#0x21
;	atan2f.c 31
;	genRet
; Peephole 3.a   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  dpl,a
	mov  dph,a
	mov  b,a
	ljmp	00109$
00102$:
;	atan2f.c 34
;	genCall
	mov	dpl,_atan2f_PARM_2
	mov	dph,(_atan2f_PARM_2 + 1)
	mov	b,(_atan2f_PARM_2 + 2)
	mov	a,(_atan2f_PARM_2 + 3)
	lcall	_fabsf
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
;	genCall
	mov	dpl,_atan2f_x_1_1
	mov	dph,(_atan2f_x_1_1 + 1)
	mov	b,(_atan2f_x_1_1 + 2)
	mov	a,(_atan2f_x_1_1 + 3)
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	_fabsf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign
	mov	___fslt_PARM_2,r2
	mov	(___fslt_PARM_2 + 1),r3
	mov	(___fslt_PARM_2 + 2),r4
	mov	(___fslt_PARM_2 + 3),r5
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	___fslt
	mov	a,dpl
;	genIfx
;	genIfxJump
	jz	00123$
	ljmp	00107$
00123$:
;	atan2f.c 36
;	genAssign
	mov	___fsdiv_PARM_2,_atan2f_PARM_2
	mov	(___fsdiv_PARM_2 + 1),(_atan2f_PARM_2 + 1)
	mov	(___fsdiv_PARM_2 + 2),(_atan2f_PARM_2 + 2)
	mov	(___fsdiv_PARM_2 + 3),(_atan2f_PARM_2 + 3)
;	genCall
	mov	dpl,_atan2f_x_1_1
	mov	dph,(_atan2f_x_1_1 + 1)
	mov	b,(_atan2f_x_1_1 + 2)
	mov	a,(_atan2f_x_1_1 + 3)
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	genCall
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
	lcall	_atanf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
;	atan2f.c 37
;	genAssign
	mov	___fslt_PARM_2,#0x00
	mov	(___fslt_PARM_2 + 1),#0x00
	mov	(___fslt_PARM_2 + 2),#0x00
	mov	(___fslt_PARM_2 + 3),#0x00
;	genCall
	mov	dpl,_atan2f_PARM_2
	mov	dph,(_atan2f_PARM_2 + 1)
	mov	b,(_atan2f_PARM_2 + 2)
	mov	a,(_atan2f_PARM_2 + 3)
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
	jnz	00124$
	ljmp	00108$
00124$:
;	genAssign
	mov	___fslt_PARM_2,#0x00
	mov	(___fslt_PARM_2 + 1),#0x00
	mov	(___fslt_PARM_2 + 2),#0x00
	mov	(___fslt_PARM_2 + 3),#0x00
;	genCall
	mov	dpl,_atan2f_x_1_1
	mov	dph,(_atan2f_x_1_1 + 1)
	mov	b,(_atan2f_x_1_1 + 2)
	mov	a,(_atan2f_x_1_1 + 3)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fslt
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genNot
	mov	a,r6
	cjne	a,#0x01,00125$
00125$:
	clr	a
	rlc	a
;	genIfx
; Peephole 105   removed redundant mov
	mov  r6,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00111$
00126$:
;	genAssign
	mov	r6,#0xDB
	mov	r7,#0x0F
	mov	r0,#0x49
	mov	r1,#0x40
; Peephole 132   changed ljmp to sjmp
	sjmp 00112$
00111$:
;	genAssign
	mov	r6,#0xDB
	mov	r7,#0x0F
	mov	r0,#0x49
	mov	r1,#0xC0
00112$:
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
	ljmp	00108$
00107$:
;	atan2f.c 41
;	genAssign
	mov	___fsdiv_PARM_2,_atan2f_x_1_1
	mov	(___fsdiv_PARM_2 + 1),(_atan2f_x_1_1 + 1)
	mov	(___fsdiv_PARM_2 + 2),(_atan2f_x_1_1 + 2)
	mov	(___fsdiv_PARM_2 + 3),(_atan2f_x_1_1 + 3)
;	genCall
	mov	dpl,_atan2f_PARM_2
	mov	dph,(_atan2f_PARM_2 + 1)
	mov	b,(_atan2f_PARM_2 + 2)
	mov	a,(_atan2f_PARM_2 + 3)
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
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_atanf
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genUminus
;	genUminusFloat
	mov	a,r1
	cpl	acc.7
	mov	r5,a
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r0
;	atan2f.c 42
;	genAssign
	mov	___fslt_PARM_2,#0x00
	mov	(___fslt_PARM_2 + 1),#0x00
	mov	(___fslt_PARM_2 + 2),#0x00
	mov	(___fslt_PARM_2 + 3),#0x00
;	genCall
	mov	dpl,_atan2f_x_1_1
	mov	dph,(_atan2f_x_1_1 + 1)
	mov	b,(_atan2f_x_1_1 + 2)
	mov	a,(_atan2f_x_1_1 + 3)
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
	jz  00113$
00127$:
;	genAssign
	mov	r6,#0xDB
	mov	r7,#0x0F
	mov	r0,#0xC9
	mov	r1,#0xBF
; Peephole 132   changed ljmp to sjmp
	sjmp 00114$
00113$:
;	genAssign
	mov	r6,#0xDB
	mov	r7,#0x0F
	mov	r0,#0xC9
	mov	r1,#0x3F
00114$:
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
00108$:
;	atan2f.c 44
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
00109$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
