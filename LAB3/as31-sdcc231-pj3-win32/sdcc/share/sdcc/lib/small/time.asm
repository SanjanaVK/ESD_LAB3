;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.3.1-pj3 Sun Jan 20 13:10:05 2002

;--------------------------------------------------------
	.module time
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___day
	.globl ___month
	.globl _RtcRead
	.globl _time
	.globl _asctime
	.globl _ctime
	.globl _localtime
	.globl _gmtime
	.globl _mktime
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
_time_timeptr_1_1::
	.ds 3
_time_now_1_1::
	.ds 12
_ascTimeBuffer:
	.ds 32
_CheckTime_timeptr_1_1:
	.ds 3
_asctime_sloc0_1_0::
	.ds 2
_asctime_sloc1_1_0::
	.ds 2
_asctime_sloc2_1_0::
	.ds 2
_asctime_sloc3_1_0::
	.ds 2
_lastTime:
	.ds 12
_gmtime_epoch_1_1::
	.ds 4
_gmtime_days_1_1::
	.ds 4
_mktime_timeptr_1_1::
	.ds 3
_mktime_year_1_1::
	.ds 2
_mktime_month_1_1::
	.ds 2
_mktime_seconds_1_1::
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'RtcRead'
;------------------------------------------------------------
;	time.c 40
;	-----------------------------------------
;	 function RtcRead
;	-----------------------------------------
_RtcRead:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	time.c 43
;	genRet
	mov	dpl,#0x00
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'time'
;------------------------------------------------------------
;timeptr                   Allocated to in memory with name '_time_timeptr_1_1'
;now                       Allocated to in memory with name '_time_now_1_1'
;t                         Allocated to registers r5 r6 r7 r0 
;	time.c 48
;	-----------------------------------------
;	 function time
;	-----------------------------------------
_time:
;	time.c 58
;	genReceive
	mov	_time_timeptr_1_1,dpl
	mov	(_time_timeptr_1_1 + 1),dph
	mov	(_time_timeptr_1_1 + 2),b
;	time.c 50
;	genAssign
	mov	r5,#0xFF
	mov	r6,#0xFF
	mov	r7,#0xFF
	mov	r0,#0xFF
;	time.c 52
;	genCall
; Peephole 182a use 16 bit load of DPTR
	mov dptr,#_time_now_1_1
	mov	b,#0x00
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	lcall	_RtcRead
	mov	a,dpl
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
;	genIfx
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00102$
00109$:
;	time.c 53
;	genCall
; Peephole 182a use 16 bit load of DPTR
	mov dptr,#_time_now_1_1
	mov	b,#0x00
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	lcall	_mktime
	mov	r1,dpl
	mov	r2,dph
	mov	r3,b
	mov	r4,a
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
;	genAssign
	mov	ar5,r1
	mov	ar6,r2
	mov	ar7,r3
	mov	ar0,r4
00102$:
;	time.c 55
;	genIfx
	mov	a,_time_timeptr_1_1
	orl	a,(_time_timeptr_1_1 + 1)
	orl	a,(_time_timeptr_1_1 + 2)
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00104$
00110$:
;	time.c 56
;	genPointerSet
;	genGenPointerSet
	mov	dpl,_time_timeptr_1_1
	mov	dph,(_time_timeptr_1_1 + 1)
	mov	b,(_time_timeptr_1_1 + 2)
	mov	a,r5
	lcall	__gptrput
	inc	dptr
	mov	a,r6
	lcall	__gptrput
	inc	dptr
	mov	a,r7
	lcall	__gptrput
	inc	dptr
	mov	a,r0
	lcall	__gptrput
00104$:
;	time.c 58
;	genRet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CheckTime'
;------------------------------------------------------------
;timeptr                   Allocated to in memory with name '_CheckTime_timeptr_1_1'
;	time.c 71
;	-----------------------------------------
;	 function CheckTime
;	-----------------------------------------
_CheckTime:
;	time.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	time.c 75
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x3B
	subb	a,r5
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00109$
00143$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,#0x3B
	lcall	__gptrput
;	time.c 76
00109$:
;	time.c 77
;	genPlus
;	genPlusIncr
	mov	a,#0x01
	add	a,r2
	mov	r5,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x3B
	subb	a,r0
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00114$
00144$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x3B
	lcall	__gptrput
;	time.c 78
00114$:
;	time.c 79
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,r2
	mov	r5,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x17
	subb	a,r0
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00119$
00145$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x17
	lcall	__gptrput
;	time.c 80
00119$:
;	time.c 81
;	genPlus
	mov	a,#0x07
	add	a,r2
	mov	r5,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x06
	subb	a,r0
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00120$
00146$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x06
	lcall	__gptrput
00120$:
;	time.c 82
;	genPlus
;	genPlusIncr
	mov	a,#0x03
	add	a,r2
	mov	r5,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
;	genCmpLt
;	genCmp
	cjne	r0,#0x01,00147$
00147$:
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00124$
00148$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
; Peephole 132   changed ljmp to sjmp
	sjmp 00129$
00124$:
;	time.c 83
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x1F
	subb	a,r0
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00129$
00149$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x1F
	lcall	__gptrput
;	time.c 84
00129$:
;	time.c 85
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,r2
	mov	r5,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0x0B
	subb	a,r0
;	genIfxJump
; Peephole 108   removed ljmp by inverse jump logic
	jnc  00130$
00150$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x0B
	lcall	__gptrput
00130$:
;	time.c 86
;	genPlus
	mov	a,#0x05
	add	a,r2
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r3,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
;	genCmpLt
;	genCmp
; Peephole 105   removed redundant mov
	mov  r6,a
;	genIfxJump
; Peephole 111   removed ljmp by inverse jump logic
	jnb  acc.7,00133$
00151$:
;	genPointerSet
;	genGenPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
; Peephole 180   changed mov to clr
	clr  a
	lcall	__gptrput
	inc	dptr
; Peephole 180   changed mov to clr
	clr  a
	lcall	__gptrput
00133$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'asctime'
;------------------------------------------------------------
;timeptr                   Allocated to registers r2 r3 r4 
;sloc0                     Allocated to in memory with name '_asctime_sloc0_1_0'
;sloc1                     Allocated to in memory with name '_asctime_sloc1_1_0'
;sloc2                     Allocated to in memory with name '_asctime_sloc2_1_0'
;sloc3                     Allocated to in memory with name '_asctime_sloc3_1_0'
;	time.c 90
;	-----------------------------------------
;	 function asctime
;	-----------------------------------------
_asctime:
;	time.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	time.c 91
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	lcall	_CheckTime
	pop	ar4
	pop	ar3
	pop	ar2
;	time.c 95
;	genPlus
	mov	a,#0x05
	add	a,r2
	mov	r5,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
	mov	a,#0x6C
	add	a,r5
	mov	r5,a
	mov	a,#0x07
	addc	a,r6
	mov	r6,a
;	time.c 94
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
;	genCast
	mov	_asctime_sloc0_1_0,r7
	mov	(_asctime_sloc0_1_0 + 1),#0x00
;	genPlus
;	genPlusIncr
	mov	a,#0x01
	add	a,r2
	mov	r1,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r1
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r1,a
;	genCast
	mov	_asctime_sloc1_1_0,r1
	mov	(_asctime_sloc1_1_0 + 1),#0x00
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,r2
	mov	r0,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r7,a
	mov	ar1,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r0
	mov	dph,r7
	mov	b,r1
	lcall	__gptrget
	mov	r0,a
;	genCast
	mov	_asctime_sloc2_1_0,r0
	mov	(_asctime_sloc2_1_0 + 1),#0x00
;	time.c 93
;	genPlus
;	genPlusIncr
	mov	a,#0x03
	add	a,r2
	mov	r1,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r1
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r1,a
;	genCast
	mov	_asctime_sloc3_1_0,r1
	mov	(_asctime_sloc3_1_0 + 1),#0x00
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,r2
	mov	r0,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r7,a
	mov	ar1,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r0
	mov	dph,r7
	mov	b,r1
	lcall	__gptrget
	mov	r0,a
;	genMult
;	genMultOneByte
	mov	b,#0x02
	mov	a,r0
	mul	ab
	mov	r0,a
	mov	r7,b
;	genPlus
	mov	a,r0
	add	a,#___month
	mov	dpl,a
	mov	a,r7
	addc	a,#(___month >> 8)
	mov	dph,a
;	genPointerGet
;	genCodePointerGet
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r0,a
;	genCast
	mov	r1,#0x02
;	genPlus
	mov	a,#0x07
	add	a,r2
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r3
	mov	r3,a
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
;	genMult
;	genMultOneByte
	mov	b,#0x02
	mov	a,r2
	mul	ab
	mov	r2,a
	mov	r3,b
;	genPlus
	mov	a,r2
	add	a,#___day
	mov	dpl,a
	mov	a,r3
	addc	a,#(___day >> 8)
	mov	dph,a
;	genPointerGet
;	genCodePointerGet
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
;	genCast
	mov	r4,#0x02
;	time.c 92
;	genIpush
	push	ar5
	push	ar6
;	genIpush
	push	_asctime_sloc0_1_0
	push	(_asctime_sloc0_1_0 + 1)
;	genIpush
	push	_asctime_sloc1_1_0
	push	(_asctime_sloc1_1_0 + 1)
;	genIpush
	push	_asctime_sloc2_1_0
	push	(_asctime_sloc2_1_0 + 1)
;	genIpush
	push	_asctime_sloc3_1_0
	push	(_asctime_sloc3_1_0 + 1)
;	genIpush
	push	ar7
	push	ar0
	push	ar1
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genIpush
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x02
	push	acc
;	genIpush
	mov	a,#_ascTimeBuffer
	push	acc
	mov	a,#(_ascTimeBuffer >> 8)
	push	acc
; Peephole 180   changed mov to clr
	clr  a
	push	acc
;	genCall
	lcall	_sprintf
	mov	a,sp
	add	a,#0xea
	mov	sp,a
;	time.c 96
;	genRet
; Peephole 182a use 16 bit load of DPTR
	mov dptr,#_ascTimeBuffer
	mov	b,#0x00
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ctime'
;------------------------------------------------------------
;timep                     Allocated to registers r2 r3 r4 
;	time.c 99
;	-----------------------------------------
;	 function ctime
;	-----------------------------------------
_ctime:
;	time.c 100
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_localtime
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_asctime
;	genRet
; Peephole 153   removed misc moves via dph, dpl, b before return
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'localtime'
;------------------------------------------------------------
;timep                     Allocated to registers r2 r3 r4 
;	time.c 116
;	-----------------------------------------
;	 function localtime
;	-----------------------------------------
_localtime:
;	time.c 117
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_gmtime
;	genRet
; Peephole 153   removed misc moves via dph, dpl, b before return
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gmtime'
;------------------------------------------------------------
;timep                     Allocated to registers r2 r3 r4 
;epoch                     Allocated to in memory with name '_gmtime_epoch_1_1'
;year                      Allocated to registers 
;month                     Allocated to registers 
;monthLength               Allocated to registers r3 
;days                      Allocated to in memory with name '_gmtime_days_1_1'
;sloc0                     Allocated to in memory with name '_gmtime_sloc0_1_0'
;	time.c 120
;	-----------------------------------------
;	 function gmtime
;	-----------------------------------------
_gmtime:
;	time.c 0
;	genReceive
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	time.c 121
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	_gmtime_epoch_1_1,a
	inc	dptr
	lcall	__gptrget
	mov	(_gmtime_epoch_1_1 + 1),a
	inc	dptr
	lcall	__gptrget
	mov	(_gmtime_epoch_1_1 + 2),a
	inc	dptr
	lcall	__gptrget
	mov	(_gmtime_epoch_1_1 + 3),a
;	time.c 126
;	genAssign
	clr	a
	mov	(__modulong_PARM_2 + 3),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 1),a
	mov	__modulong_PARM_2,#0x3C
;	genCall
	mov	dpl,_gmtime_epoch_1_1
	mov	dph,(_gmtime_epoch_1_1 + 1)
	mov	b,(_gmtime_epoch_1_1 + 2)
	mov	a,(_gmtime_epoch_1_1 + 3)
	lcall	__modulong
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
;	genCast
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	_lastTime,r6
;	time.c 127
;	genAssign
	clr	a
	mov	(__divulong_PARM_2 + 3),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 1),a
	mov	__divulong_PARM_2,#0x3C
;	genCall
	mov	dpl,_gmtime_epoch_1_1
	mov	dph,(_gmtime_epoch_1_1 + 1)
	mov	b,(_gmtime_epoch_1_1 + 2)
	mov	a,(_gmtime_epoch_1_1 + 3)
	lcall	__divulong
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
;	genAssign
	mov	_gmtime_epoch_1_1,r6
	mov	(_gmtime_epoch_1_1 + 1),r7
	mov	(_gmtime_epoch_1_1 + 2),r0
	mov	(_gmtime_epoch_1_1 + 3),r1
;	time.c 128
;	genAssign
	clr	a
	mov	(__modulong_PARM_2 + 3),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 1),a
	mov	__modulong_PARM_2,#0x3C
;	genCall
	mov	dpl,_gmtime_epoch_1_1
	mov	dph,(_gmtime_epoch_1_1 + 1)
	mov	b,(_gmtime_epoch_1_1 + 2)
	mov	a,(_gmtime_epoch_1_1 + 3)
	lcall	__modulong
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
;	genCast
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_lastTime + 0x0001),r6
;	time.c 129
;	genAssign
	clr	a
	mov	(__divulong_PARM_2 + 3),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 1),a
	mov	__divulong_PARM_2,#0x3C
;	genCall
	mov	dpl,_gmtime_epoch_1_1
	mov	dph,(_gmtime_epoch_1_1 + 1)
	mov	b,(_gmtime_epoch_1_1 + 2)
	mov	a,(_gmtime_epoch_1_1 + 3)
	lcall	__divulong
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
;	genAssign
	mov	_gmtime_epoch_1_1,r6
	mov	(_gmtime_epoch_1_1 + 1),r7
	mov	(_gmtime_epoch_1_1 + 2),r0
	mov	(_gmtime_epoch_1_1 + 3),r1
;	time.c 130
;	genAssign
	clr	a
	mov	(__modulong_PARM_2 + 3),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 1),a
	mov	__modulong_PARM_2,#0x18
;	genCall
	mov	dpl,_gmtime_epoch_1_1
	mov	dph,(_gmtime_epoch_1_1 + 1)
	mov	b,(_gmtime_epoch_1_1 + 2)
	mov	a,(_gmtime_epoch_1_1 + 3)
	lcall	__modulong
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
;	genCast
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_lastTime + 0x0002),r6
;	time.c 131
;	genAssign
	clr	a
	mov	(__divulong_PARM_2 + 3),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 1),a
	mov	__divulong_PARM_2,#0x18
;	genCall
	mov	dpl,_gmtime_epoch_1_1
	mov	dph,(_gmtime_epoch_1_1 + 1)
	mov	b,(_gmtime_epoch_1_1 + 2)
	mov	a,(_gmtime_epoch_1_1 + 3)
	lcall	__divulong
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
;	genAssign
	mov	_gmtime_epoch_1_1,r6
	mov	(_gmtime_epoch_1_1 + 1),r7
	mov	(_gmtime_epoch_1_1 + 2),r0
	mov	(_gmtime_epoch_1_1 + 3),r1
;	time.c 132
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,_gmtime_epoch_1_1
	mov	r6,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_gmtime_epoch_1_1 + 1)
	mov	r7,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_gmtime_epoch_1_1 + 2)
	mov	r0,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_gmtime_epoch_1_1 + 3)
	mov	r1,a
;	genAssign
	clr	a
	mov	(__modulong_PARM_2 + 3),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 1),a
	mov	__modulong_PARM_2,#0x07
;	genCall
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	mov	a,r1
	lcall	__modulong
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
;	genCast
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_lastTime + 0x0007),r6
;	time.c 135
;	genAssign
	clr	a
	mov	(_gmtime_days_1_1 + 3),a
	mov	(_gmtime_days_1_1 + 2),a
	mov	(_gmtime_days_1_1 + 1),a
	mov	_gmtime_days_1_1,a
;	time.c 136
;	genAssign
	mov	r4,#0xB2
	mov	r5,#0x07
00101$:
;	genAssign
	clr	a
	mov	(__moduint_PARM_2 + 1),a
	mov	__moduint_PARM_2,#0x04
;	genCall
	mov	dpl,r4
	mov	dph,r5
	push	ar4
	push	ar5
	lcall	__moduint
	mov	r0,dpl
	mov	r1,dph
	pop	ar5
	pop	ar4
;	genCmpEq
	cjne	r0,#0x00,00132$
	cjne	r1,#0x00,00132$
	mov	a,#0x01
	sjmp	00133$
00132$:
	clr	a
00133$:
;	genIfx
; Peephole 105   removed redundant mov
	mov  r0,a
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00119$
00134$:
;	genAssign
	mov	r2,#0x6E
	mov	r3,#0x01
; Peephole 132   changed ljmp to sjmp
	sjmp 00120$
00119$:
;	genAssign
	mov	r2,#0x6D
	mov	r3,#0x01
00120$:
;	genCast
	mov	ar1,r2
	mov	ar6,r3
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	r2,a
;	genPlus
	mov	a,r1
	add	a,_gmtime_days_1_1
	mov	r1,a
	mov	a,r6
	addc	a,(_gmtime_days_1_1 + 1)
	mov	r6,a
	mov	a,r7
	addc	a,(_gmtime_days_1_1 + 2)
	mov	r7,a
	mov	a,r2
	addc	a,(_gmtime_days_1_1 + 3)
	mov	r2,a
;	genAssign
	mov	_gmtime_days_1_1,r1
	mov	(_gmtime_days_1_1 + 1),r6
	mov	(_gmtime_days_1_1 + 2),r7
	mov	(_gmtime_days_1_1 + 3),r2
;	genCmpGt
;	genCmp
	clr	c
	mov	a,_gmtime_epoch_1_1
	subb	a,r1
	mov	a,(_gmtime_epoch_1_1 + 1)
	subb	a,r6
	mov	a,(_gmtime_epoch_1_1 + 2)
	subb	a,r7
	mov	a,(_gmtime_epoch_1_1 + 3)
	subb	a,r2
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00103$
00135$:
;	time.c 137
;	genPlus
;	genPlusIncr
	inc	r4
	cjne	r4,#0x00,00136$
	inc	r5
00136$:
	ljmp	00101$
00103$:
;	time.c 139
;	genMinus
	mov	a,r4
	add	a,#0x94
	mov	r2,a
	mov	a,r5
	addc	a,#0xf8
	mov	r3,a
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_lastTime + 0x0005),r2
	mov	((_lastTime + 0x0005) + 1),r3
;	time.c 141
;	genIfx
	mov	a,r0
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00121$
00137$:
;	genAssign
	mov	r2,#0x6E
	mov	r3,#0x01
; Peephole 132   changed ljmp to sjmp
	sjmp 00122$
00121$:
;	genAssign
	mov	r2,#0x6D
	mov	r3,#0x01
00122$:
;	genCast
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	r5,a
;	genMinus
	clr	c
	mov	a,_gmtime_days_1_1
	subb	a,r2
	mov	_gmtime_days_1_1,a
	mov	a,(_gmtime_days_1_1 + 1)
	subb	a,r3
	mov	(_gmtime_days_1_1 + 1),a
	mov	a,(_gmtime_days_1_1 + 2)
	subb	a,r4
	mov	(_gmtime_days_1_1 + 2),a
	mov	a,(_gmtime_days_1_1 + 3)
	subb	a,r5
	mov	(_gmtime_days_1_1 + 3),a
;	time.c 142
;	genMinus
	clr	c
	mov	a,_gmtime_epoch_1_1
	subb	a,_gmtime_days_1_1
	mov	_gmtime_epoch_1_1,a
	mov	a,(_gmtime_epoch_1_1 + 1)
	subb	a,(_gmtime_days_1_1 + 1)
	mov	(_gmtime_epoch_1_1 + 1),a
	mov	a,(_gmtime_epoch_1_1 + 2)
	subb	a,(_gmtime_days_1_1 + 2)
	mov	(_gmtime_epoch_1_1 + 2),a
	mov	a,(_gmtime_epoch_1_1 + 3)
	subb	a,(_gmtime_days_1_1 + 3)
	mov	(_gmtime_epoch_1_1 + 3),a
;	time.c 143
;	genCast
	mov	r2,_gmtime_epoch_1_1
	mov	r3,(_gmtime_epoch_1_1 + 1)
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_lastTime + 0x0008),r2
	mov	((_lastTime + 0x0008) + 1),r3
;	time.c 148
;	genAssign
	mov	r2,#0x00
00113$:
;	genCmpLt
;	genCmp
	cjne	r2,#0x0C,00138$
00138$:
;	genIfxJump
	jc	00139$
	ljmp	00116$
00139$:
;	time.c 149
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 199   optimized misc jump sequence
	cjne r2,#0x01,00108$
;00140$:
; Peephole 200   removed redundant sjmp
00141$:
;	time.c 150
;	genIfx
	mov	a,r0
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00105$
00142$:
;	time.c 151
;	genAssign
	mov	r3,#0x1D
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00105$:
;	time.c 153
;	genAssign
	mov	r3,#0x1C
; Peephole 132   changed ljmp to sjmp
	sjmp 00109$
00108$:
;	time.c 156
;	genPlus
	mov	a,r2
; Peephole 180   changed mov to clr
;	genPointerGet
;	genCodePointerGet
; Peephole 186   optimized movc sequence
	mov  dptr,#_monthDays
	movc a,@a+dptr
	mov	r3,a
00109$:
;	time.c 159
;	genCast
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
;	genCmpLt
;	genCmp
	clr	c
	mov	a,_gmtime_epoch_1_1
	subb	a,r3
	mov	a,(_gmtime_epoch_1_1 + 1)
	subb	a,r4
	mov	a,(_gmtime_epoch_1_1 + 2)
	subb	a,r5
	mov	a,(_gmtime_epoch_1_1 + 3)
	subb	a,r6
;	genIfxJump
; Peephole 132   changed ljmp to sjmp
; Peephole 160   removed sjmp by inverse jump logic
	jc   00116$
00143$:
;	time.c 160
;	genMinus
	clr	c
	mov	a,_gmtime_epoch_1_1
	subb	a,r3
	mov	_gmtime_epoch_1_1,a
	mov	a,(_gmtime_epoch_1_1 + 1)
	subb	a,r4
	mov	(_gmtime_epoch_1_1 + 1),a
	mov	a,(_gmtime_epoch_1_1 + 2)
	subb	a,r5
	mov	(_gmtime_epoch_1_1 + 2),a
	mov	a,(_gmtime_epoch_1_1 + 3)
	subb	a,r6
	mov	(_gmtime_epoch_1_1 + 3),a
;	time.c 148
;	genPlus
;	genPlusIncr
	inc	r2
	ljmp	00113$
00116$:
;	time.c 165
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_lastTime + 0x0004),r2
;	time.c 166
;	genPlus
;	genPlusIncr
	mov	a,#0x01
	add	a,_gmtime_epoch_1_1
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_gmtime_epoch_1_1 + 1)
	mov	r3,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_gmtime_epoch_1_1 + 2)
	mov	r4,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_gmtime_epoch_1_1 + 3)
	mov	r5,a
;	genCast
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_lastTime + 0x0003),r2
;	time.c 168
;	genPointerSet
;	genNearPointerSet
;	genDataPointerSet
	mov	(_lastTime + 0x000a),#0x00
;	time.c 170
;	genRet
; Peephole 182a use 16 bit load of DPTR
	mov dptr,#_lastTime
	mov	b,#0x00
00117$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mktime'
;------------------------------------------------------------
;timeptr                   Allocated to in memory with name '_mktime_timeptr_1_1'
;year                      Allocated to in memory with name '_mktime_year_1_1'
;month                     Allocated to in memory with name '_mktime_month_1_1'
;i                         Allocated to registers 
;seconds                   Allocated to in memory with name '_mktime_seconds_1_1'
;	time.c 174
;	-----------------------------------------
;	 function mktime
;	-----------------------------------------
_mktime:
;	time.c 0
;	genReceive
	mov	_mktime_timeptr_1_1,dpl
	mov	(_mktime_timeptr_1_1 + 1),dph
	mov	(_mktime_timeptr_1_1 + 2),b
;	time.c 175
;	genPlus
	mov	a,#0x05
	add	a,_mktime_timeptr_1_1
	mov	r5,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_mktime_timeptr_1_1 + 1)
	mov	r6,a
	mov	r7,(_mktime_timeptr_1_1 + 2)
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	lcall	__gptrget
	mov	r6,a
;	genPlus
	mov	a,#0x6C
	add	a,r5
	mov	_mktime_year_1_1,a
	mov	a,#0x07
	addc	a,r6
	mov	(_mktime_year_1_1 + 1),a
;	genPlus
;	genPlusIncr
	mov	a,#0x04
	add	a,_mktime_timeptr_1_1
	mov	r7,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_mktime_timeptr_1_1 + 1)
	mov	r0,a
	mov	r1,(_mktime_timeptr_1_1 + 2)
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	r7,a
;	genCast
	mov	_mktime_month_1_1,r7
	mov	(_mktime_month_1_1 + 1),#0x00
;	time.c 178
;	genCall
	mov	dpl,_mktime_timeptr_1_1
	mov	dph,(_mktime_timeptr_1_1 + 1)
	mov	b,(_mktime_timeptr_1_1 + 2)
	lcall	_CheckTime
;	time.c 181
;	genMinus
	mov	a,_mktime_year_1_1
	add	a,#0x4e
	mov	r1,a
	mov	a,(_mktime_year_1_1 + 1)
	addc	a,#0xf8
	mov	r7,a
;	genCast
	mov	ar0,r1
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r1,a
	mov	r5,a
;	genAssign
	clr	a
	mov	(__mulslong_PARM_2 + 3),a
	mov	(__mulslong_PARM_2 + 2),a
	mov	(__mulslong_PARM_2 + 1),a
	mov	__mulslong_PARM_2,#0x3C
;	genCall
	mov	dpl,r0
	mov	dph,r7
	mov	b,r1
	mov	a,r5
	lcall	__mulslong
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,a
;	genAssign
	clr	a
	mov	(__mulslong_PARM_2 + 3),a
	mov	(__mulslong_PARM_2 + 2),a
	mov	(__mulslong_PARM_2 + 1),a
	mov	__mulslong_PARM_2,#0x3C
;	genCall
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__mulslong
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,a
;	genAssign
	clr	a
	mov	(__mulslong_PARM_2 + 3),a
	mov	(__mulslong_PARM_2 + 2),a
	mov	(__mulslong_PARM_2 + 1),a
	mov	__mulslong_PARM_2,#0x18
;	genCall
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__mulslong
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,a
;	genAssign
	mov	__mulslong_PARM_2,#0x6D
	mov	(__mulslong_PARM_2 + 1),#0x01
	mov	(__mulslong_PARM_2 + 2),#0x00
	mov	(__mulslong_PARM_2 + 3),#0x00
;	genCall
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	lcall	__mulslong
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,a
;	genAssign
	mov	_mktime_seconds_1_1,r5
	mov	(_mktime_seconds_1_1 + 1),r6
	mov	(_mktime_seconds_1_1 + 2),r7
	mov	(_mktime_seconds_1_1 + 3),r0
;	time.c 184
;	genAssign
	mov	r1,_mktime_seconds_1_1
	mov	r2,(_mktime_seconds_1_1 + 1)
	mov	r3,(_mktime_seconds_1_1 + 2)
	mov	r4,(_mktime_seconds_1_1 + 3)
;	genAssign
	mov	r5,#0xB2
	mov	r6,#0x07
00107$:
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r5
	subb	a,_mktime_year_1_1
	mov	a,r6
	xrl	a,#0x80
	mov	b,(_mktime_year_1_1 + 1)
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	r7,a
;	genAssign
	mov	_mktime_seconds_1_1,r1
	mov	(_mktime_seconds_1_1 + 1),r2
	mov	(_mktime_seconds_1_1 + 2),r3
	mov	(_mktime_seconds_1_1 + 3),r4
;	genIfx
	mov	a,r7
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00123$
00124$:
;	time.c 185
;	genAssign
	clr	a
	mov	(__modsint_PARM_2 + 1),a
	mov	__modsint_PARM_2,#0x04
;	genCall
	mov	dpl,r5
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar1
	lcall	__modsint
	mov	r7,dpl
	mov	r0,dph
	pop	ar1
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 198   optimized misc jump sequence
	cjne r7,#0x00,00109$
	cjne r0,#0x00,00109$
;00125$:
; Peephole 200   removed redundant sjmp
00126$:
;	time.c 186
;	genPlus
	mov	a,#0x80
	add	a,r1
	mov	r1,a
	mov	a,#0x51
	addc	a,r2
	mov	r2,a
	mov	a,#0x01
	addc	a,r3
	mov	r3,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,r4
	mov	r4,a
00109$:
;	time.c 184
;	genPlus
;	genPlusIncr
	inc	r5
	cjne	r5,#0x00,00127$
	inc	r6
00127$:
	ljmp	00107$
;	time.c 191
00123$:
;	genAssign
	clr	a
	mov	(__modsint_PARM_2 + 1),a
	mov	__modsint_PARM_2,#0x04
;	genCall
	mov	dpl,_mktime_year_1_1
	mov	dph,(_mktime_year_1_1 + 1)
	lcall	__modsint
	mov	r2,dpl
	mov	r3,dph
;	genCmpEq
	cjne	r2,#0x00,00128$
	cjne	r3,#0x00,00128$
	mov	a,#0x01
	sjmp	00129$
00128$:
	clr	a
00129$:
	mov	r2,a
;	genAssign
	mov	r3,#0x00
	mov	r4,#0x00
00111$:
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r3
	subb	a,_mktime_month_1_1
	mov	a,r4
	xrl	a,#0x80
	mov	b,(_mktime_month_1_1 + 1)
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
	jc	00130$
	ljmp	00114$
00130$:
;	time.c 192
;	genCmpEq
; Peephole 132   changed ljmp to sjmp
; Peephole 198   optimized misc jump sequence
	cjne r3,#0x01,00104$
	cjne r4,#0x00,00104$
;00131$:
; Peephole 200   removed redundant sjmp
00132$:
;	genIfx
	mov	a,r2
;	genIfxJump
; Peephole 110   removed ljmp by inverse jump logic
	jz  00104$
00133$:
;	time.c 193
;	genPlus
	mov	a,#0x80
	add	a,_mktime_seconds_1_1
	mov	_mktime_seconds_1_1,a
	mov	a,#0x3B
	addc	a,(_mktime_seconds_1_1 + 1)
	mov	(_mktime_seconds_1_1 + 1),a
	mov	a,#0x26
	addc	a,(_mktime_seconds_1_1 + 2)
	mov	(_mktime_seconds_1_1 + 2),a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_mktime_seconds_1_1 + 3)
	mov	(_mktime_seconds_1_1 + 3),a
	ljmp	00113$
00104$:
;	time.c 195
;	genPlus
	mov	a,r3
	add	a,#_monthDays
	mov	dpl,a
	mov	a,r4
	addc	a,#(_monthDays >> 8)
	mov	dph,a
;	genPointerGet
;	genCodePointerGet
	clr	a
	movc	a,@a+dptr
;	genCast
; Peephole 105   removed redundant mov
	mov  r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	r0,a
;	genAssign
	mov	__mulslong_PARM_2,#0x80
	mov	(__mulslong_PARM_2 + 1),#0x51
	mov	(__mulslong_PARM_2 + 2),#0x01
	mov	(__mulslong_PARM_2 + 3),#0x00
;	genCall
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r0
	push	ar2
	push	ar3
	push	ar4
	lcall	__mulslong
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	r0,a
	pop	ar4
	pop	ar3
	pop	ar2
;	genPlus
	mov	a,r5
	add	a,_mktime_seconds_1_1
	mov	_mktime_seconds_1_1,a
	mov	a,r6
	addc	a,(_mktime_seconds_1_1 + 1)
	mov	(_mktime_seconds_1_1 + 1),a
	mov	a,r7
	addc	a,(_mktime_seconds_1_1 + 2)
	mov	(_mktime_seconds_1_1 + 2),a
	mov	a,r0
	addc	a,(_mktime_seconds_1_1 + 3)
	mov	(_mktime_seconds_1_1 + 3),a
00113$:
;	time.c 191
;	genPlus
;	genPlusIncr
	inc	r3
	cjne	r3,#0x00,00134$
	inc	r4
00134$:
	ljmp	00111$
00114$:
;	time.c 199
;	genPlus
;	genPlusIncr
	mov	a,#0x03
	add	a,_mktime_timeptr_1_1
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_mktime_timeptr_1_1 + 1)
	mov	r3,a
	mov	r4,(_mktime_timeptr_1_1 + 2)
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
;	genMinus
;	genMinusDec
	dec	r2
;	genCast
;	genAssign
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  r3,a
	mov  r4,a
	mov  r5,a
	mov	(__mulslong_PARM_2 + 3),a
	mov	(__mulslong_PARM_2 + 2),a
	mov	(__mulslong_PARM_2 + 1),a
	mov	__mulslong_PARM_2,#0x3C
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__mulslong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	clr	a
	mov	(__mulslong_PARM_2 + 3),a
	mov	(__mulslong_PARM_2 + 2),a
	mov	(__mulslong_PARM_2 + 1),a
	mov	__mulslong_PARM_2,#0x3C
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__mulslong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	clr	a
	mov	(__mulslong_PARM_2 + 3),a
	mov	(__mulslong_PARM_2 + 2),a
	mov	(__mulslong_PARM_2 + 1),a
	mov	__mulslong_PARM_2,#0x18
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__mulslong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genPlus
	mov	a,r2
	add	a,_mktime_seconds_1_1
	mov	_mktime_seconds_1_1,a
	mov	a,r3
	addc	a,(_mktime_seconds_1_1 + 1)
	mov	(_mktime_seconds_1_1 + 1),a
	mov	a,r4
	addc	a,(_mktime_seconds_1_1 + 2)
	mov	(_mktime_seconds_1_1 + 2),a
	mov	a,r5
	addc	a,(_mktime_seconds_1_1 + 3)
	mov	(_mktime_seconds_1_1 + 3),a
;	time.c 200
;	genPlus
;	genPlusIncr
	mov	a,#0x02
	add	a,_mktime_timeptr_1_1
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_mktime_timeptr_1_1 + 1)
	mov	r3,a
	mov	r4,(_mktime_timeptr_1_1 + 2)
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
;	genCast
;	genAssign
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  r3,a
	mov  r4,a
	mov  r5,a
	mov	(__mulslong_PARM_2 + 3),a
	mov	(__mulslong_PARM_2 + 2),a
	mov	(__mulslong_PARM_2 + 1),a
	mov	__mulslong_PARM_2,#0x3C
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__mulslong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genAssign
	clr	a
	mov	(__mulslong_PARM_2 + 3),a
	mov	(__mulslong_PARM_2 + 2),a
	mov	(__mulslong_PARM_2 + 1),a
	mov	__mulslong_PARM_2,#0x3C
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__mulslong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genPlus
	mov	a,r2
	add	a,_mktime_seconds_1_1
	mov	_mktime_seconds_1_1,a
	mov	a,r3
	addc	a,(_mktime_seconds_1_1 + 1)
	mov	(_mktime_seconds_1_1 + 1),a
	mov	a,r4
	addc	a,(_mktime_seconds_1_1 + 2)
	mov	(_mktime_seconds_1_1 + 2),a
	mov	a,r5
	addc	a,(_mktime_seconds_1_1 + 3)
	mov	(_mktime_seconds_1_1 + 3),a
;	time.c 201
;	genPlus
;	genPlusIncr
	mov	a,#0x01
	add	a,_mktime_timeptr_1_1
	mov	r2,a
; Peephole 180   changed mov to clr
	clr  a
	addc	a,(_mktime_timeptr_1_1 + 1)
	mov	r3,a
	mov	r4,(_mktime_timeptr_1_1 + 2)
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
;	genCast
;	genAssign
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  r3,a
	mov  r4,a
	mov  r5,a
	mov	(__mulslong_PARM_2 + 3),a
	mov	(__mulslong_PARM_2 + 2),a
	mov	(__mulslong_PARM_2 + 1),a
	mov	__mulslong_PARM_2,#0x3C
;	genCall
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	__mulslong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
;	genPlus
	mov	a,r2
	add	a,_mktime_seconds_1_1
	mov	_mktime_seconds_1_1,a
	mov	a,r3
	addc	a,(_mktime_seconds_1_1 + 1)
	mov	(_mktime_seconds_1_1 + 1),a
	mov	a,r4
	addc	a,(_mktime_seconds_1_1 + 2)
	mov	(_mktime_seconds_1_1 + 2),a
	mov	a,r5
	addc	a,(_mktime_seconds_1_1 + 3)
	mov	(_mktime_seconds_1_1 + 3),a
;	time.c 202
;	genPointerGet
;	genGenPointerGet
	mov	dpl,_mktime_timeptr_1_1
	mov	dph,(_mktime_timeptr_1_1 + 1)
	mov	b,(_mktime_timeptr_1_1 + 2)
	lcall	__gptrget
	mov	r2,a
;	genCast
;	genPlus
; Peephole 3.c   changed mov to clr
; Peephole 3.b   changed mov to clr
	clr  a
	mov  r3,a
	mov  r4,a
	mov  r5,a
	mov  a,r2
	add	a,_mktime_seconds_1_1
	mov	_mktime_seconds_1_1,a
	mov	a,r3
	addc	a,(_mktime_seconds_1_1 + 1)
	mov	(_mktime_seconds_1_1 + 1),a
	mov	a,r4
	addc	a,(_mktime_seconds_1_1 + 2)
	mov	(_mktime_seconds_1_1 + 2),a
	mov	a,r5
	addc	a,(_mktime_seconds_1_1 + 3)
	mov	(_mktime_seconds_1_1 + 3),a
;	time.c 203
;	genRet
	mov	dpl,_mktime_seconds_1_1
	mov	dph,(_mktime_seconds_1_1 + 1)
	mov	b,(_mktime_seconds_1_1 + 2)
	mov	a,(_mktime_seconds_1_1 + 3)
00115$:
	ret
	.area CSEG    (CODE)
_monthDays:
	.db #0x1F
	.db #0x1C
	.db #0x1F
	.db #0x1E
	.db #0x1F
	.db #0x1E
	.db #0x1F
	.db #0x1F
	.db #0x1E
	.db #0x1F
	.db #0x1E
	.db #0x1F
___month:
	.byte _str_1,(_str_1 >> 8)
	.byte _str_2,(_str_2 >> 8)
	.byte _str_3,(_str_3 >> 8)
	.byte _str_4,(_str_4 >> 8)
	.byte _str_5,(_str_5 >> 8)
	.byte _str_6,(_str_6 >> 8)
	.byte _str_7,(_str_7 >> 8)
	.byte _str_8,(_str_8 >> 8)
	.byte _str_9,(_str_9 >> 8)
	.byte _str_10,(_str_10 >> 8)
	.byte _str_11,(_str_11 >> 8)
	.byte _str_12,(_str_12 >> 8)
___day:
	.byte _str_13,(_str_13 >> 8)
	.byte _str_14,(_str_14 >> 8)
	.byte _str_15,(_str_15 >> 8)
	.byte _str_16,(_str_16 >> 8)
	.byte _str_17,(_str_17 >> 8)
	.byte _str_18,(_str_18 >> 8)
	.byte _str_19,(_str_19 >> 8)
__str_0:
	.ascii "%s %s %2d %02d:%02d:%02d %04d"
	.db 0x0A
	.db 0x00
_str_1:
	.ascii "Jan"
	.db 0x00
_str_2:
	.ascii "Feb"
	.db 0x00
_str_3:
	.ascii "Mar"
	.db 0x00
_str_4:
	.ascii "Apr"
	.db 0x00
_str_5:
	.ascii "May"
	.db 0x00
_str_6:
	.ascii "Jun"
	.db 0x00
_str_7:
	.ascii "Jul"
	.db 0x00
_str_8:
	.ascii "Aug"
	.db 0x00
_str_9:
	.ascii "Sep"
	.db 0x00
_str_10:
	.ascii "Oct"
	.db 0x00
_str_11:
	.ascii "Nov"
	.db 0x00
_str_12:
	.ascii "Dec"
	.db 0x00
_str_13:
	.ascii "Sun"
	.db 0x00
_str_14:
	.ascii "Mon"
	.db 0x00
_str_15:
	.ascii "Tue"
	.db 0x00
_str_16:
	.ascii "Wed"
	.db 0x00
_str_17:
	.ascii "Thu"
	.db 0x00
_str_18:
	.ascii "Fri"
	.db 0x00
_str_19:
	.ascii "Sat"
	.db 0x00
	.area	XINIT   (CODE)
