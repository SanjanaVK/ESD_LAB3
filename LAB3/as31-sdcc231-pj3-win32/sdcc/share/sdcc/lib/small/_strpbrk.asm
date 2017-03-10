;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:00 2002

;--------------------------------------------------------
	.module _strpbrk
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strpbrk_PARM_2
	.globl _strpbrk
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
_strpbrk_PARM_2::
	.ds 3
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
;Allocation info for local variables in function 'strpbrk'
;------------------------------------------------------------
;control                   Allocated to in memory with name '_strpbrk_PARM_2'
;string                    Allocated to registers r2 r3 r4 
;ch                        Allocated to registers r6 
;	_strpbrk.c 27
;	-----------------------------------------
;	 function strpbrk
;	-----------------------------------------
_strpbrk:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strpbrk.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	_strpbrk.c 34
00103$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genAssign
;	genIfx
; Peephole 166   removed redundant mov
	mov  r5,a
	mov  ar6,r5 
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00105$
00111$:
;	_strpbrk.c 35
;	genAssign
	mov	_strchr_PARM_2,r6
;	genCall
	mov	dpl,_strpbrk_PARM_2
	mov	dph,(_strpbrk_PARM_2 + 1)
	mov	b,(_strpbrk_PARM_2 + 2)
	push	ar2
	push	ar3
	push	ar4
	lcall	_strchr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
	mov	a,r5
	orl	a,r6
	orl	a,r7
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00103$
00112$:
;	_strpbrk.c 36
;	genRet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
; Peephole 132   changed ljmp to sjmp
	sjmp 00106$
00105$:
;	_strpbrk.c 39
;	genRet
; Peephole 181   used 16 bit load of dptr
	mov  dptr,#0x0000
	mov	b,#0x00
00106$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
