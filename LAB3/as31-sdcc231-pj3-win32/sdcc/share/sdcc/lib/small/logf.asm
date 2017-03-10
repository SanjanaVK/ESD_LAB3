;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:08 2002

;--------------------------------------------------------
	.module logf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _logf
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
;Allocation info for local variables in function 'logf'
;------------------------------------------------------------
;x                         Allocated to registers r2 r3 r4 r5 
;Rz                        Allocated to stack - offset 1
;f                         Allocated to stack - offset 5
;z                         Allocated to stack - offset 9
;w                         Allocated to registers r2 r3 r4 r5 
;znum                      Allocated to stack - offset 13
;zden                      Allocated to stack - offset 17
;xn                        Allocated to stack - offset 21
;n                         Allocated to stack - offset 25
;sloc0                     Allocated to stack - offset 27
;	logf.c 37
;	-----------------------------------------
;	 function logf
;	-----------------------------------------
_logf:
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
	mov	ar0,a
	mov	a,sp
	add	a,#0x1e
	mov	sp,a
	mov	a,ar0
;	logf.c 64
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	logf.c 42
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
	lcall	___fsgt
	mov	a,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00102$
00110$:
;	logf.c 44
;	genAssign
	clr	a
	mov	(_errno + 1),a
	mov	_errno,#0x21
;	logf.c 45
;	genRet
; Peephole 3.a   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  dpl,a
	mov  dph,a
	mov  b,a
	ljmp	00106$
00102$:
;	logf.c 47
;	genAddrOf
	mov	a,_bp
	add	a,#0x19
	mov	r6,a
;	genCast
	mov	_frexpf_PARM_2,r6
	mov	(_frexpf_PARM_2 + 1),#0x00
	mov	(_frexpf_PARM_2 + 2),#0x00
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_frexpf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	logf.c 48
;	genAssign
	mov	___fssub_PARM_2,#0x00
	mov	(___fssub_PARM_2 + 1),#0x00
	mov	(___fssub_PARM_2 + 2),#0x00
	mov	(___fssub_PARM_2 + 3),#0x3F
;	genCall
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	logf.c 49
;	genAssign
	mov	___fsgt_PARM_2,#0xF3
	mov	(___fsgt_PARM_2 + 1),#0x04
	mov	(___fsgt_PARM_2 + 2),#0x35
	mov	(___fsgt_PARM_2 + 3),#0x3F
;	genCall
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsgt
	mov	a,dpl
;	genIfx
;	genIfxJump
	jnz	00111$
	ljmp	00104$
00111$:
;	logf.c 51
;	genAssign
	mov	___fssub_PARM_2,#0x00
	mov	(___fssub_PARM_2 + 1),#0x00
	mov	(___fssub_PARM_2 + 2),#0x00
	mov	(___fssub_PARM_2 + 3),#0x3F
;	genCall
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fssub
	mov	r4,dpl
	mov	r5,dph
	mov	r2,b
	mov	r3,a
;	genAssign
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	logf.c 52
;	genAssign
	mov	___fsmul_PARM_2,#0x00
	mov	(___fsmul_PARM_2 + 1),#0x00
	mov	(___fsmul_PARM_2 + 2),#0x00
	mov	(___fsmul_PARM_2 + 3),#0x3F
;	genCall
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fsadd_PARM_2,#0x00
	mov	(___fsadd_PARM_2 + 1),#0x00
	mov	(___fsadd_PARM_2 + 2),#0x00
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
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
	ljmp	00105$
00104$:
;	logf.c 56
;	genMinus
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
;	genMinusDec
	dec	@r0
	cjne	@r0,#0xff,00112$
	inc	r0
	dec	@r0
00112$:
;	logf.c 57
;	genAssign
	mov	___fsmul_PARM_2,#0x00
	mov	(___fsmul_PARM_2 + 1),#0x00
	mov	(___fsmul_PARM_2 + 2),#0x00
	mov	(___fsmul_PARM_2 + 3),#0x3F
;	genCall
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
;	genAssign
	mov	___fsadd_PARM_2,#0x00
	mov	(___fsadd_PARM_2 + 1),#0x00
	mov	(___fsadd_PARM_2 + 2),#0x00
	mov	(___fsadd_PARM_2 + 3),#0x3F
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
00105$:
;	logf.c 59
;	genAssign
	mov	a,_bp
	add	a,#0x11
	mov	r0,a
	mov	___fsdiv_PARM_2,@r0
	inc	r0
	mov	(___fsdiv_PARM_2 + 1),@r0
	inc	r0
	mov	(___fsdiv_PARM_2 + 2),@r0
	inc	r0
	mov	(___fsdiv_PARM_2 + 3),@r0
;	genCall
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	logf.c 60
;	genAssign
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	___fsmul_PARM_2,@r0
	inc	r0
	mov	(___fsmul_PARM_2 + 1),@r0
	inc	r0
	mov	(___fsmul_PARM_2 + 2),@r0
	inc	r0
	mov	(___fsmul_PARM_2 + 3),@r0
;	genCall
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
;	logf.c 62
;	genAssign
	mov	___fsmul_PARM_2,#0x3D
	mov	(___fsmul_PARM_2 + 1),#0x7E
	mov	(___fsmul_PARM_2 + 2),#0x0D
	mov	(___fsmul_PARM_2 + 3),#0xBF
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
	push	acc
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	pop	acc
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	___fsadd_PARM_2,#0x3A
	mov	(___fsadd_PARM_2 + 1),#0x3F
	mov	(___fsadd_PARM_2 + 2),#0xD4
	mov	(___fsadd_PARM_2 + 3),#0xC0
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r2,b
	mov	r3,a
;	genAssign
	mov	___fsdiv_PARM_2,r4
	mov	(___fsdiv_PARM_2 + 1),r5
	mov	(___fsdiv_PARM_2 + 2),r2
	mov	(___fsdiv_PARM_2 + 3),r3
;	genCall
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fsmul_PARM_2,r2
	mov	(___fsmul_PARM_2 + 1),r3
	mov	(___fsmul_PARM_2 + 2),r4
	mov	(___fsmul_PARM_2 + 3),r5
;	genCall
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsmul
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
	mov	a,_bp
	add	a,#0x09
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
; Peephole 212  reduced add sequence to inc
	mov  r0,_bp
	inc  r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
;	logf.c 63
;	genCall
	mov	a,_bp
	add	a,#0x19
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	___sint2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
;	genAssign
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	@r0,ar6
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
;	logf.c 64
;	genAssign
	mov	___fsmul_PARM_2,#0x83
	mov	(___fsmul_PARM_2 + 1),#0x80
	mov	(___fsmul_PARM_2 + 2),#0x5E
	mov	(___fsmul_PARM_2 + 3),#0xB9
;	genCall
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r2,b
	mov	r3,a
;	genAssign
; Peephole 212  reduced add sequence to inc
	mov  r0,_bp
	inc  r0
	mov	___fsadd_PARM_2,@r0
	inc	r0
	mov	(___fsadd_PARM_2 + 1),@r0
	inc	r0
	mov	(___fsadd_PARM_2 + 2),@r0
	inc	r0
	mov	(___fsadd_PARM_2 + 3),@r0
;	genCall
	mov	dpl,r4
	mov	dph,r5
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	push	acc
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	pop	acc
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
;	genAssign
	mov	___fsmul_PARM_2,#0x00
	mov	(___fsmul_PARM_2 + 1),#0x80
	mov	(___fsmul_PARM_2 + 2),#0x31
	mov	(___fsmul_PARM_2 + 3),#0x3F
;	genCall
	mov	a,_bp
	add	a,#0x15
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
;	genAssign
	mov	___fsadd_PARM_2,r6
	mov	(___fsadd_PARM_2 + 1),r7
	mov	(___fsadd_PARM_2 + 2),r2
	mov	(___fsadd_PARM_2 + 3),r3
;	genCall
	mov	a,_bp
	add	a,#0x1b
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	genRet
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
00106$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
