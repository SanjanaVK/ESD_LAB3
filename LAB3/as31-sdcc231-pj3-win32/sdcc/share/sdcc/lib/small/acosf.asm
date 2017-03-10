;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:10 2002

;--------------------------------------------------------
	.module acosf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _acosf
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
;Allocation info for local variables in function 'acosf'
;------------------------------------------------------------
;x                         Allocated to registers r2 r3 r4 r5 
;	acosf.c 25
;	-----------------------------------------
;	 function acosf
;	-----------------------------------------
_acosf:
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
;	acosf.c 30
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	acosf.c 27
;	genAssign
	mov	___fseq_PARM_2,#0x00
	mov	(___fseq_PARM_2 + 1),#0x00
	mov	(___fseq_PARM_2 + 2),#0x80
	mov	(___fseq_PARM_2 + 3),#0x3F
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fseq
	mov	a,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00107$
00114$:
;	genRet
; Peephole 3.a   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  dpl,a
	mov  dph,a
	mov  b,a
	ljmp	00109$
00107$:
;	acosf.c 28
;	genAssign
	mov	___fseq_PARM_2,#0x00
	mov	(___fseq_PARM_2 + 1),#0x00
	mov	(___fseq_PARM_2 + 2),#0x80
	mov	(___fseq_PARM_2 + 3),#0xBF
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fseq
	mov	a,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00104$
00115$:
;	genRet
; Peephole 182   used 16 bit load of dptr
	mov  dptr,#(((0x0F)<<8) + 0xDB)
	mov	b,#0x49
	mov	a,#0x40
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00104$:
;	acosf.c 29
;	genAssign
	mov	___fseq_PARM_2,#0x00
	mov	(___fseq_PARM_2 + 1),#0x00
	mov	(___fseq_PARM_2 + 2),#0x00
	mov	(___fseq_PARM_2 + 3),#0x00
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___fseq
	mov	a,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00108$
00116$:
;	genRet
; Peephole 182   used 16 bit load of dptr
	mov  dptr,#(((0x0F)<<8) + 0xDB)
	mov	b,#0xC9
	mov	a,#0x3F
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00108$:
;	acosf.c 30
;	genAssign
	clr	a
	mov	(_asincosf_PARM_2 + 1),a
	mov	_asincosf_PARM_2,#0x01
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_asincosf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	genRet
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
00109$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
