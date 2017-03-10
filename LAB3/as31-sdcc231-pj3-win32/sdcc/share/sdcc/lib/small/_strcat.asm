;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:04 2002

;--------------------------------------------------------
	.module _strcat
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcat_PARM_2
	.globl _strcat
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
	.area	OSEG    (OVR,DATA)
_strcat_PARM_2::
	.ds 3
_strcat_dst_1_1::
	.ds 3
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
;Allocation info for local variables in function 'strcat'
;------------------------------------------------------------
;	_strcat.c 26
;	-----------------------------------------
;	 function strcat
;	-----------------------------------------
_strcat:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	_strcat.c 38
;	genReceive
	mov	_strcat_dst_1_1,dpl
	mov	(_strcat_dst_1_1 + 1),dph
	mov	(_strcat_dst_1_1 + 2),b
;	_strcat.c 33
;	genAssign
	mov	r5,_strcat_dst_1_1
	mov	r6,(_strcat_dst_1_1 + 1)
	mov	r7,(_strcat_dst_1_1 + 2)
00101$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
;	genIfx
; Peephole 105   removed redundant mov
	mov  r0,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00111$
00113$:
;	_strcat.c 34
;	genPlus
;	genPlusIncr
;	tail increment optimized
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
;	_strcat.c 36
; Peephole 132   changed ljmp to sjmp
	sjmp 00101$
00111$:
;	genAssign
	mov	r0,_strcat_PARM_2
	mov	r1,(_strcat_PARM_2 + 1)
	mov	r2,(_strcat_PARM_2 + 2)
;	genAssign
	mov	ar4,r6
	mov	ar3,r7
00104$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
;	genPlus
;	genPlusIncr
	inc	r0
	cjne	r0,#0x00,00114$
	inc	r1
00114$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r4
	mov	b,r3
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r4,dph
	mov	r3,b
;	genIfx
	mov	a,r6
;	genIfxJump
; Peephole 109   removed ljmp by inverse jump logic
	jnz  00104$
00115$:
;	_strcat.c 38
;	genRet
	mov	dpl,_strcat_dst_1_1
	mov	dph,(_strcat_dst_1_1 + 1)
	mov	b,(_strcat_dst_1_1 + 2)
00107$:
	ret
	.area CSEG    (CODE)
	.area	XINIT   (CODE)
