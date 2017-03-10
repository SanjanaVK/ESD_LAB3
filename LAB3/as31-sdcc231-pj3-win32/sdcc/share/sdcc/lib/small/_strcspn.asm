;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:09:59 2002

;--------------------------------------------------------
	.module _strcspn
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcspn_PARM_2
	.globl _strcspn
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
_strcspn_PARM_2::
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
;Allocation info for local variables in function 'strcspn'
;------------------------------------------------------------
;control                   Allocated to in memory with name '_strcspn_PARM_2'
;string                    Allocated to registers r2 r3 r4 
;count                     Allocated to registers 
;ch                        Allocated to registers r0 
;	_strcspn.c 27
;	-----------------------------------------
;	 function strcspn
;	-----------------------------------------
_strcspn:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strcspn.c 42
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	_strcspn.c 35
;	genAssign
	mov	r5,#0x00
	mov	r6,#0x00
00104$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
;	genAssign
;	genIfx
; Peephole 166   removed redundant mov
	mov  r7,a
	mov  ar0,r7 
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00106$
00112$:
;	_strcspn.c 36
;	genAssign
	mov	_strchr_PARM_2,r0
;	genCall
	mov	dpl,_strcspn_PARM_2
	mov	dph,(_strcspn_PARM_2 + 1)
	mov	b,(_strcspn_PARM_2 + 2)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_strchr
	mov	r7,dpl
	mov	r0,dph
	mov	r1,b
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genIfx
	mov	a,r7
	orl	a,r0
	orl	a,r1
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00106$
00113$:
;	_strcspn.c 39
;	genPlus
;	genPlusIncr
;	tail increment optimized
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
; Peephole 132   changed ljmp to sjmp
	sjmp 00104$
00106$:
;	_strcspn.c 42
;	genRet
	mov	dpl,r5
	mov	dph,r6
00107$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
