;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:29 2002

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
_atan2f_sloc0_1_0::
	.ds 4
_atan2f_sloc1_1_0::
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
_atan2f_PARM_2::
	.ds 4
_atan2f_x_1_1::
	.ds 4
_atan2f_r_1_1::
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
;Allocation info for local variables in function 'atan2f'
;------------------------------------------------------------
;sloc0                     Allocated to in memory with name '_atan2f_sloc0_1_0'
;sloc1                     Allocated to in memory with name '_atan2f_sloc1_1_0'
;y                         Allocated to in memory with name '_atan2f_PARM_2'
;x                         Allocated to in memory with name '_atan2f_x_1_1'
;r                         Allocated to in memory with name '_atan2f_r_1_1'
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
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#_atan2f_x_1_1
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
;	atan2f.c 28
;	genAssign
	mov	dptr,#_atan2f_x_1_1
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
	lcall	___fseq
	mov	a,dpl
;	genIfx
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 162   removed sjmp by inverse jump logic
	jz   00102$
00121$:
;	genAssign
	mov	dptr,#_atan2f_PARM_2
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
	lcall	___fseq
	mov	a,dpl
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00122$:
;	atan2f.c 30
;	genAssign
; Peephole 230   replaced inefficient 16 constant
	mov     dptr,#_errno
	mov     a,#0x21
	movx    @dptr,a
	inc     dptr
	clr     a
	movx    @dptr,a
	mov     dptr,#_errno
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
;	genAssign
	mov	dptr,#_atan2f_PARM_2
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
;	genCall
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_fabsf
	mov	_atan2f_sloc1_1_0,dpl
	mov	(_atan2f_sloc1_1_0 + 1),dph
	mov	(_atan2f_sloc1_1_0 + 2),b
	mov	(_atan2f_sloc1_1_0 + 3),a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#_atan2f_x_1_1
	movx	a,@dptr
	mov	_atan2f_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_atan2f_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_atan2f_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_atan2f_sloc0_1_0 + 3),a
;	genCall
	mov	dpl,_atan2f_sloc0_1_0
	mov	dph,(_atan2f_sloc0_1_0 + 1)
	mov	b,(_atan2f_sloc0_1_0 + 2)
	mov	a,(_atan2f_sloc0_1_0 + 3)
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
	mov	dptr,#___fslt_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	genCall
	mov	dpl,_atan2f_sloc1_1_0
	mov	dph,(_atan2f_sloc1_1_0 + 1)
	mov	b,(_atan2f_sloc1_1_0 + 2)
	mov	a,(_atan2f_sloc1_1_0 + 3)
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
	jz	00123$
	ljmp	00107$
00123$:
;	atan2f.c 36
;	genAssign
	mov	dptr,#___fsdiv_PARM_2
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
	mov	dpl,_atan2f_sloc0_1_0
	mov	dph,(_atan2f_sloc0_1_0 + 1)
	mov	b,(_atan2f_sloc0_1_0 + 2)
	mov	a,(_atan2f_sloc0_1_0 + 3)
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
;	genAssign
	mov	dptr,#_atan2f_r_1_1
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	atan2f.c 37
;	genAssign
	mov	dptr,#___fslt_PARM_2
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
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	lcall	___fslt
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
	jnz	00124$
	ljmp	00108$
00124$:
;	genIpush
	push	ar6
	push	ar7
	push	ar0
	push	ar1
;	genAssign
	mov	dptr,#___fslt_PARM_2
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
	mov	dpl,_atan2f_sloc0_1_0
	mov	dph,(_atan2f_sloc0_1_0 + 1)
	mov	b,(_atan2f_sloc0_1_0 + 2)
	mov	a,(_atan2f_sloc0_1_0 + 3)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar7
	push	ar0
	push	ar1
	lcall	___fslt
	mov	r6,dpl
	pop	ar1
	pop	ar0
	pop	ar7
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
;	genIpop
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00111$
00126$:
;	genAssign
	mov	_atan2f_sloc1_1_0,#0xDB
	mov	(_atan2f_sloc1_1_0 + 1),#0x0F
	mov	(_atan2f_sloc1_1_0 + 2),#0x49
	mov	(_atan2f_sloc1_1_0 + 3),#0x40
; Peephole 132   changed ljmp to sjmp
	sjmp 00112$
00111$:
;	genAssign
	mov	_atan2f_sloc1_1_0,#0xDB
	mov	(_atan2f_sloc1_1_0 + 1),#0x0F
	mov	(_atan2f_sloc1_1_0 + 2),#0x49
	mov	(_atan2f_sloc1_1_0 + 3),#0xC0
00112$:
;	genAssign
	mov	dptr,#___fsadd_PARM_2
	mov	a,_atan2f_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_atan2f_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_atan2f_sloc1_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_atan2f_sloc1_1_0 + 3)
	movx	@dptr,a
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
	mov	dptr,#_atan2f_r_1_1
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	ljmp	00108$
00107$:
;	atan2f.c 41
;	genAssign
	mov	dptr,#___fsdiv_PARM_2
	mov	a,_atan2f_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(_atan2f_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(_atan2f_sloc0_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(_atan2f_sloc0_1_0 + 3)
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
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
;	genUminus
;	genUminusFloat
; Peephole 105   removed redundant mov
	mov  r5,a
	cpl	acc.7
	mov	r5,a
;	atan2f.c 42
;	genAssign
	mov	dptr,#___fslt_PARM_2
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
	mov	dpl,_atan2f_sloc0_1_0
	mov	dph,(_atan2f_sloc0_1_0 + 1)
	mov	b,(_atan2f_sloc0_1_0 + 2)
	mov	a,(_atan2f_sloc0_1_0 + 3)
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
	mov	dptr,#___fsadd_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
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
	mov	dptr,#_atan2f_r_1_1
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
00108$:
;	atan2f.c 44
;	genAssign
	mov	dptr,#_atan2f_r_1_1
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
;	genRet
; Peephole 191   removed redundant mov
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  b,r4
00109$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
