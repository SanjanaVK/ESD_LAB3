;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:18 2002

;--------------------------------------------------------
	.module _modslong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modslong_PARM_2
	.globl __modslong
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
__modslong_sloc0_1_0::
	.ds 1
__modslong_sloc1_1_0::
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
__modslong_PARM_2::
	.ds 4
__modslong_a_1_1::
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
;Allocation info for local variables in function '_modslong'
;------------------------------------------------------------
;sloc0                     Allocated to in memory with name '__modslong_sloc0_1_0'
;sloc1                     Allocated to in memory with name '__modslong_sloc1_1_0'
;b                         Allocated to in memory with name '__modslong_PARM_2'
;a                         Allocated to in memory with name '__modslong_a_1_1'
;r                         Allocated to in memory with name '__modslong_r_1_1'
;	_modslong.c 255
;	-----------------------------------------
;	 function _modslong
;	-----------------------------------------
__modslong:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_modslong.c 0
;	genReceive
	push	acc
	push	b
	push	dph
	push	dpl
	mov	dptr,#__modslong_a_1_1
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
;	_modslong.c 259
;	genAssign
	mov	dptr,#__modslong_a_1_1
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
;	genCmpLt
;	genCmp
; Peephole 105   removed redundant mov
	mov  r5,a
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00106$
00113$:
;	genUminus
	clr	c
	clr	a
	subb	a,r2
	mov	r6,a
	clr	a
	subb	a,r3
	mov	r7,a
	clr	a
	subb	a,r4
	mov	r0,a
	clr	a
	subb	a,r5
	mov	r1,a
; Peephole 132   changed ljmp to sjmp
	sjmp 00107$
00106$:
;	genAssign
	mov	ar6,r2
	mov	ar7,r3
	mov	ar0,r4
	mov	ar1,r5
00107$:
;	genAssign
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r0
	mov	ar5,r1
;	_modslong.c 260
;	genAssign
	mov	dptr,#__modslong_PARM_2
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
;	genCmpLt
;	genCmp
; Peephole 105   removed redundant mov
	mov  r1,a
	rlc	a
	clr	a
	rlc	a
;	genIfx
; Peephole 105   removed redundant mov
	mov  __modslong_sloc0_1_0,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00108$
00114$:
;	genUminus
	clr	c
	clr	a
	subb	a,r6
	mov	__modslong_sloc1_1_0,a
	clr	a
	subb	a,r7
	mov	(__modslong_sloc1_1_0 + 1),a
	clr	a
	subb	a,r0
	mov	(__modslong_sloc1_1_0 + 2),a
	clr	a
	subb	a,r1
	mov	(__modslong_sloc1_1_0 + 3),a
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00108$:
;	genAssign
	mov	__modslong_sloc1_1_0,r6
	mov	(__modslong_sloc1_1_0 + 1),r7
	mov	(__modslong_sloc1_1_0 + 2),r0
	mov	(__modslong_sloc1_1_0 + 3),r1
00109$:
;	genAssign
	mov	dptr,#__modulong_PARM_2
	mov	a,__modslong_sloc1_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,(__modslong_sloc1_1_0 + 1)
	movx	@dptr,a
	inc	dptr
	mov	a,(__modslong_sloc1_1_0 + 2)
	movx	@dptr,a
	inc	dptr
	mov	a,(__modslong_sloc1_1_0 + 3)
	movx	@dptr,a
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__modulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	_modslong.c 261
;	genAssign
	mov	dptr,#__modslong_a_1_1
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
;	genCmpLt
;	genCmp
; Peephole 105   removed redundant mov
	mov  r1,a
	rlc	a
	clr	a
	rlc	a
;	genXor
	xrl	a,__modslong_sloc0_1_0
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00115$:
;	_modslong.c 262
;	genUminus
	clr	c
	clr	a
	subb	a,r2
	mov	r6,a
	clr	a
	subb	a,r3
	mov	r7,a
	clr	a
	subb	a,r4
	mov	r0,a
	clr	a
	subb	a,r5
;	genRet
; Peephole 191   removed redundant mov
	mov  r1,a
	mov  dpl,r6
	mov  dph,r7
	mov  b,r0
; Peephole 132   changed ljmp to sjmp
	sjmp 00104$
00102$:
;	_modslong.c 264
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
00104$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
