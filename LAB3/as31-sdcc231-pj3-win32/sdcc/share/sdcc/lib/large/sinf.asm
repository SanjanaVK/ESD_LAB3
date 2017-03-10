;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:26 2002

;--------------------------------------------------------
	.module sinf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sinf
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
;Allocation info for local variables in function 'sinf'
;------------------------------------------------------------
;x                         Allocated to registers r2 r3 r4 r5 
;	sinf.c 25
;	-----------------------------------------
;	 function sinf
;	-----------------------------------------
_sinf:
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
;	sinf.c 28
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	sinf.c 27
;	genAssign
	mov	dptr,#___fseq_PARM_2
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
	lcall	___fseq
	mov	a,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00106$:
;	genRet
; Peephole 3.a   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  dpl,a
	mov  dph,a
	mov  b,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00103$
00102$:
;	sinf.c 28
;	genAssign
; Peephole 229   replaced inefficient 16 bit clear
	mov     dptr,#_sincosf_PARM_2
	clr     a
	movx    @dptr,a
	inc     dptr
	movx    @dptr,a
	mov     dptr,#_sincosf_PARM_2
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_sincosf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	genRet
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
00103$:
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
