;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:11 2002

;--------------------------------------------------------
	.module tanhf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tanhf
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
;Allocation info for local variables in function 'tanhf'
;------------------------------------------------------------
;x                         Allocated to stack - offset 1
;f                         Allocated to stack - offset 5
;g                         Allocated to stack - offset 9
;r                         Allocated to stack - offset 13
;sloc0                     Allocated to stack - offset 17
;	tanhf.c 40
;	-----------------------------------------
;	 function tanhf
;	-----------------------------------------
_tanhf:
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
	add	a,#0x14
	mov	sp,a
	mov	a,ar0
;	tanhf.c 58
;	genReceive
	push	acc
; Peephole 212  reduced add sequence to inc
	mov  r0,_bp
	inc  r0
	pop	acc
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	inc	r0
	mov	@r0,b
	inc	r0
	mov	@r0,a
;	tanhf.c 44
;	genCall
; Peephole 212  reduced add sequence to inc
	mov  r0,_bp
	inc  r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	_fabsf
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
;	tanhf.c 45
;	genAssign
	mov	___fsgt_PARM_2,#0xB0
	mov	(___fsgt_PARM_2 + 1),#0x2C
	mov	(___fsgt_PARM_2 + 2),#0x10
	mov	(___fsgt_PARM_2 + 3),#0x41
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
; Peephole 110   removed ljmp by inverse jump logic
	jz  00108$
00118$:
;	genAssign
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x80
	inc	r0
	mov	@r0,#0x3F
	ljmp	00109$
00108$:
;	tanhf.c 46
;	genAssign
	mov	___fsgt_PARM_2,#0x54
	mov	(___fsgt_PARM_2 + 1),#0x9F
	mov	(___fsgt_PARM_2 + 2),#0x0C
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
	jnz	00119$
	ljmp	00105$
00119$:
;	tanhf.c 48
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	___fsadd_PARM_2,@r0
	inc	r0
	mov	(___fsadd_PARM_2 + 1),@r0
	inc	r0
	mov	(___fsadd_PARM_2 + 2),@r0
	inc	r0
	mov	(___fsadd_PARM_2 + 3),@r0
;	genIpush
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
	lcall	___fsadd
	mov	r4,dpl
	mov	r5,dph
	mov	r2,b
;	genCall
; Peephole 191   removed redundant mov
	mov  r3,a
	mov  dpl,r4
	mov  dph,r5
	mov  b,r2
	lcall	_expf
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
	mov	___fsdiv_PARM_2,r2
	mov	(___fsdiv_PARM_2 + 1),r3
	mov	(___fsdiv_PARM_2 + 2),r4
	mov	(___fsdiv_PARM_2 + 3),r5
;	genCall
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	lcall	___fsdiv
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
; Peephole 3.c   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  dpl,a
	mov  dph,a
	mov  b,a
	mov  a,#0x3F
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
;	tanhf.c 49
;	genAssign
	mov	a,_bp
	add	a,#0x0d
	mov	r0,a
	mov	___fsadd_PARM_2,@r0
	inc	r0
	mov	(___fsadd_PARM_2 + 1),@r0
	inc	r0
	mov	(___fsadd_PARM_2 + 2),@r0
	inc	r0
	mov	(___fsadd_PARM_2 + 3),@r0
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
	lcall	___fsadd
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
;	genIpop
	ljmp	00109$
00105$:
;	tanhf.c 51
;	genAssign
	mov	___fslt_PARM_2,#0x00
	mov	(___fslt_PARM_2 + 1),#0x00
	mov	(___fslt_PARM_2 + 2),#0x80
	mov	(___fslt_PARM_2 + 3),#0x39
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
	lcall	___fslt
	mov	a,dpl
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00120$:
;	genAssign
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,_bp
	add	a,#0x0d
	mov	r1,a
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	ljmp	00109$
00102$:
;	tanhf.c 54
;	genAssign
	mov	a,_bp
	add	a,#0x05
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
;	tanhf.c 55
;	genAssign
	mov	___fsmul_PARM_2,#0xB2
	mov	(___fsmul_PARM_2 + 1),#0x11
	mov	(___fsmul_PARM_2 + 2),#0x7B
	mov	(___fsmul_PARM_2 + 3),#0xBB
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
	mov	r4,dpl
	mov	r5,dph
	mov	r2,b
	mov	r3,a
;	genAssign
	mov	___fsadd_PARM_2,#0xC6
	mov	(___fsadd_PARM_2 + 1),#0xE2
	mov	(___fsadd_PARM_2 + 2),#0x52
	mov	(___fsadd_PARM_2 + 3),#0xBF
;	genCall
	mov	dpl,r4
	mov	dph,r5
	mov	b,r2
	mov	a,r3
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsmul
	push	acc
	mov	a,_bp
	add	a,#0x11
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
	mov	___fsadd_PARM_2,#0x1A
	mov	(___fsadd_PARM_2 + 1),#0x2A
	mov	(___fsadd_PARM_2 + 2),#0x1E
	mov	(___fsadd_PARM_2 + 3),#0x40
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
	mov	r6,dpl
	mov	r7,dph
	mov	r2,b
	mov	r3,a
;	genAssign
	mov	___fsdiv_PARM_2,r6
	mov	(___fsdiv_PARM_2 + 1),r7
	mov	(___fsdiv_PARM_2 + 2),r2
	mov	(___fsdiv_PARM_2 + 3),r3
;	genCall
	mov	a,_bp
	add	a,#0x11
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
	mov	___fsadd_PARM_2,r2
	mov	(___fsadd_PARM_2 + 1),r3
	mov	(___fsadd_PARM_2 + 2),r4
	mov	(___fsadd_PARM_2 + 3),r5
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
	lcall	___fsadd
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
00109$:
;	tanhf.c 57
;	genAssign
	mov	___fslt_PARM_2,#0x00
	mov	(___fslt_PARM_2 + 1),#0x00
	mov	(___fslt_PARM_2 + 2),#0x00
	mov	(___fslt_PARM_2 + 3),#0x00
;	genCall
; Peephole 212  reduced add sequence to inc
	mov  r0,_bp
	inc  r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	inc	r0
	mov	a,@r0
	lcall	___fslt
	mov	a,dpl
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00111$
00121$:
;	genUminus
	mov	a,_bp
	add	a,#0x0d
;	genUminusFloat
; Peephole 185   changed order of increment (acc incremented also!)
	inc  a
; Peephole 185   changed order of increment (acc incremented also!)
	inc  a
; Peephole 185   changed order of increment (acc incremented also!)
	inc  a
	mov  r0,a
	mov	a,@r0
	cpl	acc.7
	mov	@r0,a
	dec	r0
	dec	r0
	dec	r0
	mov	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	mov	@r0,a
	inc	r0
	mov	a,@r0
	mov	@r0,a
00111$:
;	tanhf.c 58
;	genRet
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
00112$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
