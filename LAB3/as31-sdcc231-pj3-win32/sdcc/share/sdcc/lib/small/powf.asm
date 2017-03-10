;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:06 2002

;--------------------------------------------------------
	.module powf
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _powf_PARM_2
	.globl _powf
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
_powf_PARM_2::
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
;Allocation info for local variables in function 'powf'
;------------------------------------------------------------
;y                         Allocated to in memory with name '_powf_PARM_2'
;x                         Allocated to registers r2 r3 r4 r5 
;	powf.c 25
;	-----------------------------------------
;	 function powf
;	-----------------------------------------
_powf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	powf.c 30
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	powf.c 27
;	genAssign
	mov	___fseq_PARM_2,#0x00
	mov	(___fseq_PARM_2 + 1),#0x00
	mov	(___fseq_PARM_2 + 2),#0x00
	mov	(___fseq_PARM_2 + 3),#0x00
;	genCall
	mov	dpl,_powf_PARM_2
	mov	dph,(_powf_PARM_2 + 1)
	mov	b,(_powf_PARM_2 + 2)
	mov	a,(_powf_PARM_2 + 3)
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
00112$:
;	genRet
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x3F
	ljmp	00107$
00102$:
;	powf.c 28
;	genAssign
	mov	___fseq_PARM_2,#0x00
	mov	(___fseq_PARM_2 + 1),#0x00
	mov	(___fseq_PARM_2 + 2),#0x80
	mov	(___fseq_PARM_2 + 3),#0x3F
;	genCall
	mov	dpl,_powf_PARM_2
	mov	dph,(_powf_PARM_2 + 1)
	mov	b,(_powf_PARM_2 + 2)
	mov	a,(_powf_PARM_2 + 3)
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
00113$:
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	ljmp	00107$
00104$:
;	powf.c 29
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
	jnz  00106$
00114$:
;	genRet
; Peephole 3.a   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  dpl,a
	mov  dph,a
	mov  b,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00107$
00106$:
;	powf.c 30
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_logf
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	mov	___fsmul_PARM_2,_powf_PARM_2
	mov	(___fsmul_PARM_2 + 1),(_powf_PARM_2 + 1)
	mov	(___fsmul_PARM_2 + 2),(_powf_PARM_2 + 2)
	mov	(___fsmul_PARM_2 + 3),(_powf_PARM_2 + 3)
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	genCall
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
	lcall	_expf
;	genRet
; Peephole 156   removed misc moves via dph, dpl, b, a before return
00107$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
