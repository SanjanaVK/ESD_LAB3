;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:25 2002

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
_powf_PARM_2::
	.ds 4
_powf_x_1_1::
	.ds 4
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
;x                         Allocated to in memory with name '_powf_x_1_1'
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
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#_powf_x_1_1
	pop	acc
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
	pop	acc
	inc	dptr
	movx	@dptr,a
;	powf.c 27
;	genAssign
	mov	dptr,#_powf_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
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
	mov	dptr,#___fseq_PARM_2
; Peephole 101   removed redundant mov
; Peephole 180   changed mov to clr
	clr  a
	movx @dptr,a
	inc  dptr
	movx @dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
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
00113$:
;	genAssign
	mov	dptr,#_powf_x_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
;	genRet
; Peephole 191   removed redundant mov
	mov  r1,a
	mov  dpl,r6
	mov  dph,r7
	mov  b,r0
	ljmp	00107$
00104$:
;	powf.c 29
;	genAssign
	mov	dptr,#_powf_x_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
;	genAssign
	mov	dptr,#___fsgt_PARM_2
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
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
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
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_logf
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#___fsmul_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
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
