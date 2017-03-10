                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : FreeWare ANSI-C Compiler
                              3 ; Version 2.6.0 #4309 (Jul 28 2006)
                              4 ; This file generated Fri Mar 10 09:09:10 2017
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl __sdcc_external_startup
                             14 	.globl _TF1
                             15 	.globl _TR1
                             16 	.globl _TF0
                             17 	.globl _TR0
                             18 	.globl _IE1
                             19 	.globl _IT1
                             20 	.globl _IE0
                             21 	.globl _IT0
                             22 	.globl _SM0
                             23 	.globl _SM1
                             24 	.globl _SM2
                             25 	.globl _REN
                             26 	.globl _TB8
                             27 	.globl _RB8
                             28 	.globl _TI
                             29 	.globl _RI
                             30 	.globl _CY
                             31 	.globl _AC
                             32 	.globl _F0
                             33 	.globl _RS1
                             34 	.globl _RS0
                             35 	.globl _OV
                             36 	.globl _F1
                             37 	.globl _P
                             38 	.globl _RD
                             39 	.globl _WR
                             40 	.globl _T1
                             41 	.globl _T0
                             42 	.globl _INT1
                             43 	.globl _INT0
                             44 	.globl _TXD0
                             45 	.globl _TXD
                             46 	.globl _RXD0
                             47 	.globl _RXD
                             48 	.globl _P3_7
                             49 	.globl _P3_6
                             50 	.globl _P3_5
                             51 	.globl _P3_4
                             52 	.globl _P3_3
                             53 	.globl _P3_2
                             54 	.globl _P3_1
                             55 	.globl _P3_0
                             56 	.globl _P2_7
                             57 	.globl _P2_6
                             58 	.globl _P2_5
                             59 	.globl _P2_4
                             60 	.globl _P2_3
                             61 	.globl _P2_2
                             62 	.globl _P2_1
                             63 	.globl _P2_0
                             64 	.globl _P1_7
                             65 	.globl _P1_6
                             66 	.globl _P1_5
                             67 	.globl _P1_4
                             68 	.globl _P1_3
                             69 	.globl _P1_2
                             70 	.globl _P1_1
                             71 	.globl _P1_0
                             72 	.globl _P0_7
                             73 	.globl _P0_6
                             74 	.globl _P0_5
                             75 	.globl _P0_4
                             76 	.globl _P0_3
                             77 	.globl _P0_2
                             78 	.globl _P0_1
                             79 	.globl _P0_0
                             80 	.globl _PS
                             81 	.globl _PT1
                             82 	.globl _PX1
                             83 	.globl _PT0
                             84 	.globl _PX0
                             85 	.globl _EA
                             86 	.globl _ES
                             87 	.globl _ET1
                             88 	.globl _EX1
                             89 	.globl _ET0
                             90 	.globl _EX0
                             91 	.globl _BREG_F7
                             92 	.globl _BREG_F6
                             93 	.globl _BREG_F5
                             94 	.globl _BREG_F4
                             95 	.globl _BREG_F3
                             96 	.globl _BREG_F2
                             97 	.globl _BREG_F1
                             98 	.globl _BREG_F0
                             99 	.globl _P5_7
                            100 	.globl _P5_6
                            101 	.globl _P5_5
                            102 	.globl _P5_4
                            103 	.globl _P5_3
                            104 	.globl _P5_2
                            105 	.globl _P5_1
                            106 	.globl _P5_0
                            107 	.globl _P4_7
                            108 	.globl _P4_6
                            109 	.globl _P4_5
                            110 	.globl _P4_4
                            111 	.globl _P4_3
                            112 	.globl _P4_2
                            113 	.globl _P4_1
                            114 	.globl _P4_0
                            115 	.globl _PX0L
                            116 	.globl _PT0L
                            117 	.globl _PX1L
                            118 	.globl _PT1L
                            119 	.globl _PLS
                            120 	.globl _PT2L
                            121 	.globl _PPCL
                            122 	.globl _EC
                            123 	.globl _CCF0
                            124 	.globl _CCF1
                            125 	.globl _CCF2
                            126 	.globl _CCF3
                            127 	.globl _CCF4
                            128 	.globl _CR
                            129 	.globl _CF
                            130 	.globl _TF2
                            131 	.globl _EXF2
                            132 	.globl _RCLK
                            133 	.globl _TCLK
                            134 	.globl _EXEN2
                            135 	.globl _TR2
                            136 	.globl _C_T2
                            137 	.globl _CP_RL2
                            138 	.globl _T2CON_7
                            139 	.globl _T2CON_6
                            140 	.globl _T2CON_5
                            141 	.globl _T2CON_4
                            142 	.globl _T2CON_3
                            143 	.globl _T2CON_2
                            144 	.globl _T2CON_1
                            145 	.globl _T2CON_0
                            146 	.globl _PT2
                            147 	.globl _ET2
                            148 	.globl _TMOD
                            149 	.globl _TL1
                            150 	.globl _TL0
                            151 	.globl _TH1
                            152 	.globl _TH0
                            153 	.globl _TCON
                            154 	.globl _SP
                            155 	.globl _SCON
                            156 	.globl _SBUF0
                            157 	.globl _SBUF
                            158 	.globl _PSW
                            159 	.globl _PCON
                            160 	.globl _P3
                            161 	.globl _P2
                            162 	.globl _P1
                            163 	.globl _P0
                            164 	.globl _IP
                            165 	.globl _IE
                            166 	.globl _DP0L
                            167 	.globl _DPL
                            168 	.globl _DP0H
                            169 	.globl _DPH
                            170 	.globl _B
                            171 	.globl _ACC
                            172 	.globl _EECON
                            173 	.globl _KBF
                            174 	.globl _KBE
                            175 	.globl _KBLS
                            176 	.globl _BRL
                            177 	.globl _BDRCON
                            178 	.globl _T2MOD
                            179 	.globl _SPDAT
                            180 	.globl _SPSTA
                            181 	.globl _SPCON
                            182 	.globl _SADEN
                            183 	.globl _SADDR
                            184 	.globl _WDTPRG
                            185 	.globl _WDTRST
                            186 	.globl _P5
                            187 	.globl _P4
                            188 	.globl _IPH1
                            189 	.globl _IPL1
                            190 	.globl _IPH0
                            191 	.globl _IPL0
                            192 	.globl _IEN1
                            193 	.globl _IEN0
                            194 	.globl _CMOD
                            195 	.globl _CL
                            196 	.globl _CH
                            197 	.globl _CCON
                            198 	.globl _CCAPM4
                            199 	.globl _CCAPM3
                            200 	.globl _CCAPM2
                            201 	.globl _CCAPM1
                            202 	.globl _CCAPM0
                            203 	.globl _CCAP4L
                            204 	.globl _CCAP3L
                            205 	.globl _CCAP2L
                            206 	.globl _CCAP1L
                            207 	.globl _CCAP0L
                            208 	.globl _CCAP4H
                            209 	.globl _CCAP3H
                            210 	.globl _CCAP2H
                            211 	.globl _CCAP1H
                            212 	.globl _CCAP0H
                            213 	.globl _CKCKON1
                            214 	.globl _CKCKON0
                            215 	.globl _CKRL
                            216 	.globl _AUXR1
                            217 	.globl _AUXR
                            218 	.globl _TH2
                            219 	.globl _TL2
                            220 	.globl _RCAP2H
                            221 	.globl _RCAP2L
                            222 	.globl _T2CON
                            223 	.globl _command_count
                            224 	.globl _storage_count
                            225 	.globl _result
                            226 	.globl _char_received
                            227 	.globl _cmd
                            228 	.globl _buffer_num
                            229 	.globl _size1
                            230 	.globl _size
                            231 	.globl _p
                            232 	.globl _buffer1
                            233 	.globl _buffer0
                            234 	.globl _temp
                            235 	.globl _num_elements
                            236 	.globl _new_result
                            237 	.globl _clear_count
                            238 	.globl _cmd_count
                            239 	.globl _j
                            240 	.globl _i
                            241 	.globl _buffer_size
                            242 	.globl _buffer_array
                            243 	.globl _temp_result
                            244 	.globl _num_buffers
                            245 	.globl _buffer_result
                            246 	.globl _buffer_index
                            247 	.globl _data_get
                            248 	.globl _add
                            249 	.globl _heap
                            250 	.globl _init_hardware
                            251 	.globl _dataout
                            252 	.globl _atoi
                            253 	.globl _getstr
                            254 	.globl _putchar
                            255 	.globl _getchar
                            256 	.globl _putstr
                            257 	.globl _buffer_create
                            258 	.globl _buffer_shift
                            259 	.globl _buffer_add
                            260 	.globl _buffer_delete
                            261 	.globl _heap_report
                            262 	.globl _buffer0_hex
                            263 	.globl _buffer_free
                            264 ;--------------------------------------------------------
                            265 ; special function registers
                            266 ;--------------------------------------------------------
                            267 	.area RSEG    (DATA)
                    00C8    268 _T2CON	=	0x00c8
                    00CA    269 _RCAP2L	=	0x00ca
                    00CB    270 _RCAP2H	=	0x00cb
                    00CC    271 _TL2	=	0x00cc
                    00CD    272 _TH2	=	0x00cd
                    008E    273 _AUXR	=	0x008e
                    00A2    274 _AUXR1	=	0x00a2
                    0097    275 _CKRL	=	0x0097
                    008F    276 _CKCKON0	=	0x008f
                    008F    277 _CKCKON1	=	0x008f
                    00FA    278 _CCAP0H	=	0x00fa
                    00FB    279 _CCAP1H	=	0x00fb
                    00FC    280 _CCAP2H	=	0x00fc
                    00FD    281 _CCAP3H	=	0x00fd
                    00FE    282 _CCAP4H	=	0x00fe
                    00EA    283 _CCAP0L	=	0x00ea
                    00EB    284 _CCAP1L	=	0x00eb
                    00EC    285 _CCAP2L	=	0x00ec
                    00ED    286 _CCAP3L	=	0x00ed
                    00EE    287 _CCAP4L	=	0x00ee
                    00DA    288 _CCAPM0	=	0x00da
                    00DB    289 _CCAPM1	=	0x00db
                    00DC    290 _CCAPM2	=	0x00dc
                    00DD    291 _CCAPM3	=	0x00dd
                    00DE    292 _CCAPM4	=	0x00de
                    00D8    293 _CCON	=	0x00d8
                    00F9    294 _CH	=	0x00f9
                    00E9    295 _CL	=	0x00e9
                    00D9    296 _CMOD	=	0x00d9
                    00A8    297 _IEN0	=	0x00a8
                    00B1    298 _IEN1	=	0x00b1
                    00B8    299 _IPL0	=	0x00b8
                    00B7    300 _IPH0	=	0x00b7
                    00B2    301 _IPL1	=	0x00b2
                    00B3    302 _IPH1	=	0x00b3
                    00C0    303 _P4	=	0x00c0
                    00D8    304 _P5	=	0x00d8
                    00A6    305 _WDTRST	=	0x00a6
                    00A7    306 _WDTPRG	=	0x00a7
                    00A9    307 _SADDR	=	0x00a9
                    00B9    308 _SADEN	=	0x00b9
                    00C3    309 _SPCON	=	0x00c3
                    00C4    310 _SPSTA	=	0x00c4
                    00C5    311 _SPDAT	=	0x00c5
                    00C9    312 _T2MOD	=	0x00c9
                    009B    313 _BDRCON	=	0x009b
                    009A    314 _BRL	=	0x009a
                    009C    315 _KBLS	=	0x009c
                    009D    316 _KBE	=	0x009d
                    009E    317 _KBF	=	0x009e
                    00D2    318 _EECON	=	0x00d2
                    00E0    319 _ACC	=	0x00e0
                    00F0    320 _B	=	0x00f0
                    0083    321 _DPH	=	0x0083
                    0083    322 _DP0H	=	0x0083
                    0082    323 _DPL	=	0x0082
                    0082    324 _DP0L	=	0x0082
                    00A8    325 _IE	=	0x00a8
                    00B8    326 _IP	=	0x00b8
                    0080    327 _P0	=	0x0080
                    0090    328 _P1	=	0x0090
                    00A0    329 _P2	=	0x00a0
                    00B0    330 _P3	=	0x00b0
                    0087    331 _PCON	=	0x0087
                    00D0    332 _PSW	=	0x00d0
                    0099    333 _SBUF	=	0x0099
                    0099    334 _SBUF0	=	0x0099
                    0098    335 _SCON	=	0x0098
                    0081    336 _SP	=	0x0081
                    0088    337 _TCON	=	0x0088
                    008C    338 _TH0	=	0x008c
                    008D    339 _TH1	=	0x008d
                    008A    340 _TL0	=	0x008a
                    008B    341 _TL1	=	0x008b
                    0089    342 _TMOD	=	0x0089
                            343 ;--------------------------------------------------------
                            344 ; special function bits
                            345 ;--------------------------------------------------------
                            346 	.area RSEG    (DATA)
                    00AD    347 _ET2	=	0x00ad
                    00BD    348 _PT2	=	0x00bd
                    00C8    349 _T2CON_0	=	0x00c8
                    00C9    350 _T2CON_1	=	0x00c9
                    00CA    351 _T2CON_2	=	0x00ca
                    00CB    352 _T2CON_3	=	0x00cb
                    00CC    353 _T2CON_4	=	0x00cc
                    00CD    354 _T2CON_5	=	0x00cd
                    00CE    355 _T2CON_6	=	0x00ce
                    00CF    356 _T2CON_7	=	0x00cf
                    00C8    357 _CP_RL2	=	0x00c8
                    00C9    358 _C_T2	=	0x00c9
                    00CA    359 _TR2	=	0x00ca
                    00CB    360 _EXEN2	=	0x00cb
                    00CC    361 _TCLK	=	0x00cc
                    00CD    362 _RCLK	=	0x00cd
                    00CE    363 _EXF2	=	0x00ce
                    00CF    364 _TF2	=	0x00cf
                    00DF    365 _CF	=	0x00df
                    00DE    366 _CR	=	0x00de
                    00DC    367 _CCF4	=	0x00dc
                    00DB    368 _CCF3	=	0x00db
                    00DA    369 _CCF2	=	0x00da
                    00D9    370 _CCF1	=	0x00d9
                    00D8    371 _CCF0	=	0x00d8
                    00AE    372 _EC	=	0x00ae
                    00BE    373 _PPCL	=	0x00be
                    00BD    374 _PT2L	=	0x00bd
                    00BC    375 _PLS	=	0x00bc
                    00BB    376 _PT1L	=	0x00bb
                    00BA    377 _PX1L	=	0x00ba
                    00B9    378 _PT0L	=	0x00b9
                    00B8    379 _PX0L	=	0x00b8
                    00C0    380 _P4_0	=	0x00c0
                    00C1    381 _P4_1	=	0x00c1
                    00C2    382 _P4_2	=	0x00c2
                    00C3    383 _P4_3	=	0x00c3
                    00C4    384 _P4_4	=	0x00c4
                    00C5    385 _P4_5	=	0x00c5
                    00C6    386 _P4_6	=	0x00c6
                    00C7    387 _P4_7	=	0x00c7
                    00D8    388 _P5_0	=	0x00d8
                    00D9    389 _P5_1	=	0x00d9
                    00DA    390 _P5_2	=	0x00da
                    00DB    391 _P5_3	=	0x00db
                    00DC    392 _P5_4	=	0x00dc
                    00DD    393 _P5_5	=	0x00dd
                    00DE    394 _P5_6	=	0x00de
                    00DF    395 _P5_7	=	0x00df
                    00F0    396 _BREG_F0	=	0x00f0
                    00F1    397 _BREG_F1	=	0x00f1
                    00F2    398 _BREG_F2	=	0x00f2
                    00F3    399 _BREG_F3	=	0x00f3
                    00F4    400 _BREG_F4	=	0x00f4
                    00F5    401 _BREG_F5	=	0x00f5
                    00F6    402 _BREG_F6	=	0x00f6
                    00F7    403 _BREG_F7	=	0x00f7
                    00A8    404 _EX0	=	0x00a8
                    00A9    405 _ET0	=	0x00a9
                    00AA    406 _EX1	=	0x00aa
                    00AB    407 _ET1	=	0x00ab
                    00AC    408 _ES	=	0x00ac
                    00AF    409 _EA	=	0x00af
                    00B8    410 _PX0	=	0x00b8
                    00B9    411 _PT0	=	0x00b9
                    00BA    412 _PX1	=	0x00ba
                    00BB    413 _PT1	=	0x00bb
                    00BC    414 _PS	=	0x00bc
                    0080    415 _P0_0	=	0x0080
                    0081    416 _P0_1	=	0x0081
                    0082    417 _P0_2	=	0x0082
                    0083    418 _P0_3	=	0x0083
                    0084    419 _P0_4	=	0x0084
                    0085    420 _P0_5	=	0x0085
                    0086    421 _P0_6	=	0x0086
                    0087    422 _P0_7	=	0x0087
                    0090    423 _P1_0	=	0x0090
                    0091    424 _P1_1	=	0x0091
                    0092    425 _P1_2	=	0x0092
                    0093    426 _P1_3	=	0x0093
                    0094    427 _P1_4	=	0x0094
                    0095    428 _P1_5	=	0x0095
                    0096    429 _P1_6	=	0x0096
                    0097    430 _P1_7	=	0x0097
                    00A0    431 _P2_0	=	0x00a0
                    00A1    432 _P2_1	=	0x00a1
                    00A2    433 _P2_2	=	0x00a2
                    00A3    434 _P2_3	=	0x00a3
                    00A4    435 _P2_4	=	0x00a4
                    00A5    436 _P2_5	=	0x00a5
                    00A6    437 _P2_6	=	0x00a6
                    00A7    438 _P2_7	=	0x00a7
                    00B0    439 _P3_0	=	0x00b0
                    00B1    440 _P3_1	=	0x00b1
                    00B2    441 _P3_2	=	0x00b2
                    00B3    442 _P3_3	=	0x00b3
                    00B4    443 _P3_4	=	0x00b4
                    00B5    444 _P3_5	=	0x00b5
                    00B6    445 _P3_6	=	0x00b6
                    00B7    446 _P3_7	=	0x00b7
                    00B0    447 _RXD	=	0x00b0
                    00B0    448 _RXD0	=	0x00b0
                    00B1    449 _TXD	=	0x00b1
                    00B1    450 _TXD0	=	0x00b1
                    00B2    451 _INT0	=	0x00b2
                    00B3    452 _INT1	=	0x00b3
                    00B4    453 _T0	=	0x00b4
                    00B5    454 _T1	=	0x00b5
                    00B6    455 _WR	=	0x00b6
                    00B7    456 _RD	=	0x00b7
                    00D0    457 _P	=	0x00d0
                    00D1    458 _F1	=	0x00d1
                    00D2    459 _OV	=	0x00d2
                    00D3    460 _RS0	=	0x00d3
                    00D4    461 _RS1	=	0x00d4
                    00D5    462 _F0	=	0x00d5
                    00D6    463 _AC	=	0x00d6
                    00D7    464 _CY	=	0x00d7
                    0098    465 _RI	=	0x0098
                    0099    466 _TI	=	0x0099
                    009A    467 _RB8	=	0x009a
                    009B    468 _TB8	=	0x009b
                    009C    469 _REN	=	0x009c
                    009D    470 _SM2	=	0x009d
                    009E    471 _SM1	=	0x009e
                    009F    472 _SM0	=	0x009f
                    0088    473 _IT0	=	0x0088
                    0089    474 _IE0	=	0x0089
                    008A    475 _IT1	=	0x008a
                    008B    476 _IE1	=	0x008b
                    008C    477 _TR0	=	0x008c
                    008D    478 _TF0	=	0x008d
                    008E    479 _TR1	=	0x008e
                    008F    480 _TF1	=	0x008f
                            481 ;--------------------------------------------------------
                            482 ; overlayable register banks
                            483 ;--------------------------------------------------------
                            484 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     485 	.ds 8
                            486 ;--------------------------------------------------------
                            487 ; internal ram data
                            488 ;--------------------------------------------------------
                            489 	.area DSEG    (DATA)
                            490 ;--------------------------------------------------------
                            491 ; overlayable items in internal ram 
                            492 ;--------------------------------------------------------
                            493 	.area OSEG    (OVR,DATA)
                            494 ;--------------------------------------------------------
                            495 ; Stack segment in internal ram 
                            496 ;--------------------------------------------------------
                            497 	.area	SSEG	(DATA)
   002F                     498 __start__stack:
   002F                     499 	.ds	1
                            500 
                            501 ;--------------------------------------------------------
                            502 ; indirectly addressable internal ram data
                            503 ;--------------------------------------------------------
                            504 	.area ISEG    (DATA)
                            505 ;--------------------------------------------------------
                            506 ; bit data
                            507 ;--------------------------------------------------------
                            508 	.area BSEG    (BIT)
                            509 ;--------------------------------------------------------
                            510 ; paged external ram data
                            511 ;--------------------------------------------------------
                            512 	.area PSEG    (PAG,XDATA)
                            513 ;--------------------------------------------------------
                            514 ; external ram data
                            515 ;--------------------------------------------------------
                            516 	.area XSEG    (XDATA)
   0000                     517 _heap::
   0000                     518 	.ds 2500
   09C4                     519 _add::
   09C4                     520 	.ds 2
   09C6                     521 _data_get::
   09C6                     522 	.ds 50
   09F8                     523 _buffer_index::
   09F8                     524 	.ds 2
   09FA                     525 _buffer_result::
   09FA                     526 	.ds 2
   09FC                     527 _num_buffers::
   09FC                     528 	.ds 2
   09FE                     529 _temp_result::
   09FE                     530 	.ds 2
   0A00                     531 _buffer_array::
   0A00                     532 	.ds 375
   0B77                     533 _buffer_size::
   0B77                     534 	.ds 250
   0C71                     535 _i::
   0C71                     536 	.ds 2
   0C73                     537 _j::
   0C73                     538 	.ds 2
   0C75                     539 _cmd_count::
   0C75                     540 	.ds 2
   0C77                     541 _clear_count::
   0C77                     542 	.ds 2
   0C79                     543 _new_result::
   0C79                     544 	.ds 2
   0C7B                     545 _num_elements::
   0C7B                     546 	.ds 2
   0C7D                     547 _temp::
   0C7D                     548 	.ds 2
   0C7F                     549 _buffer0::
   0C7F                     550 	.ds 2
   0C81                     551 _buffer1::
   0C81                     552 	.ds 2
   0C83                     553 _p::
   0C83                     554 	.ds 2
   0C85                     555 _size::
   0C85                     556 	.ds 3
   0C88                     557 _size1::
   0C88                     558 	.ds 3
   0C8B                     559 _buffer_num::
   0C8B                     560 	.ds 3
   0C8E                     561 _cmd::
   0C8E                     562 	.ds 1
   0C8F                     563 _char_received::
   0C8F                     564 	.ds 2
   0C91                     565 _dataout_x_1_1:
   0C91                     566 	.ds 2
   0C93                     567 _atoi_a_1_1:
   0C93                     568 	.ds 3
   0C96                     569 _getstr_c_1_1:
   0C96                     570 	.ds 1
   0C97                     571 _putchar_c_1_1:
   0C97                     572 	.ds 1
   0C98                     573 _putstr_s_1_1:
   0C98                     574 	.ds 3
   0C9B                     575 _buffer_create_size_1_1:
   0C9B                     576 	.ds 2
   0C9D                     577 _buffer_shift_buffer_result_1_1:
   0C9D                     578 	.ds 2
                            579 ;--------------------------------------------------------
                            580 ; external initialized ram data
                            581 ;--------------------------------------------------------
                            582 	.area XISEG   (XDATA)
   0D2C                     583 _result::
   0D2C                     584 	.ds 2
   0D2E                     585 _storage_count::
   0D2E                     586 	.ds 2
   0D30                     587 _command_count::
   0D30                     588 	.ds 2
                            589 	.area HOME    (CODE)
                            590 	.area GSINIT0 (CODE)
                            591 	.area GSINIT1 (CODE)
                            592 	.area GSINIT2 (CODE)
                            593 	.area GSINIT3 (CODE)
                            594 	.area GSINIT4 (CODE)
                            595 	.area GSINIT5 (CODE)
                            596 	.area GSINIT  (CODE)
                            597 	.area GSFINAL (CODE)
                            598 	.area CSEG    (CODE)
                            599 ;--------------------------------------------------------
                            600 ; interrupt vector 
                            601 ;--------------------------------------------------------
                            602 	.area HOME    (CODE)
   0000                     603 __interrupt_vect:
   0000 02 00 03            604 	ljmp	__sdcc_gsinit_startup
                            605 ;--------------------------------------------------------
                            606 ; global & static initialisations
                            607 ;--------------------------------------------------------
                            608 	.area HOME    (CODE)
                            609 	.area GSINIT  (CODE)
                            610 	.area GSFINAL (CODE)
                            611 	.area GSINIT  (CODE)
                            612 	.globl __sdcc_gsinit_startup
                            613 	.globl __sdcc_program_startup
                            614 	.globl __start__stack
                            615 	.globl __mcs51_genXINIT
                            616 	.globl __mcs51_genXRAMCLEAR
                            617 	.globl __mcs51_genRAMCLEAR
                            618 	.area GSFINAL (CODE)
   0062 02 00 65            619 	ljmp	__sdcc_program_startup
                            620 ;--------------------------------------------------------
                            621 ; Home
                            622 ;--------------------------------------------------------
                            623 	.area HOME    (CODE)
                            624 	.area CSEG    (CODE)
   0065                     625 __sdcc_program_startup:
   0065 12 00 71            626 	lcall	_main
                            627 ;	return from main will lock up
   0068 80 FE               628 	sjmp .
                            629 ;--------------------------------------------------------
                            630 ; code
                            631 ;--------------------------------------------------------
                            632 	.area CSEG    (CODE)
                            633 ;------------------------------------------------------------
                            634 ;Allocation info for local variables in function '_sdcc_external_startup'
                            635 ;------------------------------------------------------------
                            636 ;------------------------------------------------------------
                            637 ;	main.c:64: _sdcc_external_startup()  //This function changes the size of Internal RAM to 1KB
                            638 ;	-----------------------------------------
                            639 ;	 function _sdcc_external_startup
                            640 ;	-----------------------------------------
   006A                     641 __sdcc_external_startup:
                    0002    642 	ar2 = 0x02
                    0003    643 	ar3 = 0x03
                    0004    644 	ar4 = 0x04
                    0005    645 	ar5 = 0x05
                    0006    646 	ar6 = 0x06
                    0007    647 	ar7 = 0x07
                    0000    648 	ar0 = 0x00
                    0001    649 	ar1 = 0x01
                            650 ;	main.c:66: AUXR |= 0x0C;
                            651 ;	genOr
   006A 43 8E 0C            652 	orl	_AUXR,#0x0C
                            653 ;	main.c:67: return 0;
                            654 ;	genRet
                            655 ;	Peephole 182.b	used 16 bit load of dptr
   006D 90 00 00            656 	mov	dptr,#0x0000
                            657 ;	Peephole 300	removed redundant label 00101$
   0070 22                  658 	ret
                            659 ;------------------------------------------------------------
                            660 ;Allocation info for local variables in function 'main'
                            661 ;------------------------------------------------------------
                            662 ;------------------------------------------------------------
                            663 ;	main.c:70: void main()
                            664 ;	-----------------------------------------
                            665 ;	 function main
                            666 ;	-----------------------------------------
   0071                     667 _main:
                            668 ;	main.c:74: init_hardware();   //Function to Initialise the hardware for Serial Communication
                            669 ;	genCall
   0071 12 04 F1            670 	lcall	_init_hardware
                            671 ;	main.c:75: buffer_index=2;
                            672 ;	genAssign
   0074 90 09 F8            673 	mov	dptr,#_buffer_index
   0077 74 02               674 	mov	a,#0x02
   0079 F0                  675 	movx	@dptr,a
   007A E4                  676 	clr	a
   007B A3                  677 	inc	dptr
   007C F0                  678 	movx	@dptr,a
                            679 ;	main.c:76: num_buffers=2;
                            680 ;	genAssign
   007D 90 09 FC            681 	mov	dptr,#_num_buffers
   0080 74 02               682 	mov	a,#0x02
   0082 F0                  683 	movx	@dptr,a
   0083 E4                  684 	clr	a
   0084 A3                  685 	inc	dptr
   0085 F0                  686 	movx	@dptr,a
                            687 ;	main.c:78: init_dynamic_memory((MEMHEADER xdata *)heap, HEAP_SIZE); //allocates heap of size HEAP_SIZE
                            688 ;	genAssign
   0086 90 0C AA            689 	mov	dptr,#_init_dynamic_memory_PARM_2
   0089 74 C4               690 	mov	a,#0xC4
   008B F0                  691 	movx	@dptr,a
   008C A3                  692 	inc	dptr
   008D 74 09               693 	mov	a,#0x09
   008F F0                  694 	movx	@dptr,a
                            695 ;	genCall
                            696 ;	Peephole 182.a	used 16 bit load of DPTR
   0090 90 00 00            697 	mov	dptr,#_heap
   0093 12 12 B1            698 	lcall	_init_dynamic_memory
                            699 ;	main.c:82: do
   0096                     700 00111$:
                            701 ;	main.c:84: printf_tiny("Enter the buffer size between 32 and 2400 bytes divisible by 8\r\n");
                            702 ;	genIpush
   0096 74 EB               703 	mov	a,#__str_0
   0098 C0 E0               704 	push	acc
   009A 74 24               705 	mov	a,#(__str_0 >> 8)
   009C C0 E0               706 	push	acc
                            707 ;	genCall
   009E 12 14 87            708 	lcall	_printf_tiny
   00A1 15 81               709 	dec	sp
   00A3 15 81               710 	dec	sp
                            711 ;	main.c:85: size= getstr();  //Obtain the size from the use
                            712 ;	genCall
   00A5 12 05 ED            713 	lcall	_getstr
   00A8 AA 82               714 	mov	r2,dpl
   00AA AB 83               715 	mov	r3,dph
   00AC AC F0               716 	mov	r4,b
                            717 ;	genAssign
   00AE 90 0C 85            718 	mov	dptr,#_size
   00B1 EA                  719 	mov	a,r2
   00B2 F0                  720 	movx	@dptr,a
   00B3 A3                  721 	inc	dptr
   00B4 EB                  722 	mov	a,r3
   00B5 F0                  723 	movx	@dptr,a
   00B6 A3                  724 	inc	dptr
   00B7 EC                  725 	mov	a,r4
   00B8 F0                  726 	movx	@dptr,a
                            727 ;	main.c:86: printf_tiny("The buffer size you entered is : ");
                            728 ;	genIpush
   00B9 74 2C               729 	mov	a,#__str_1
   00BB C0 E0               730 	push	acc
   00BD 74 25               731 	mov	a,#(__str_1 >> 8)
   00BF C0 E0               732 	push	acc
                            733 ;	genCall
   00C1 12 14 87            734 	lcall	_printf_tiny
   00C4 15 81               735 	dec	sp
   00C6 15 81               736 	dec	sp
                            737 ;	main.c:87: putstr(size);
                            738 ;	genAssign
   00C8 90 0C 85            739 	mov	dptr,#_size
   00CB E0                  740 	movx	a,@dptr
   00CC FA                  741 	mov	r2,a
   00CD A3                  742 	inc	dptr
   00CE E0                  743 	movx	a,@dptr
   00CF FB                  744 	mov	r3,a
   00D0 A3                  745 	inc	dptr
   00D1 E0                  746 	movx	a,@dptr
   00D2 FC                  747 	mov	r4,a
                            748 ;	genCall
   00D3 8A 82               749 	mov	dpl,r2
   00D5 8B 83               750 	mov	dph,r3
   00D7 8C F0               751 	mov	b,r4
   00D9 12 06 70            752 	lcall	_putstr
                            753 ;	main.c:88: printf_tiny("\r\n");
                            754 ;	genIpush
   00DC 74 4E               755 	mov	a,#__str_2
   00DE C0 E0               756 	push	acc
   00E0 74 25               757 	mov	a,#(__str_2 >> 8)
   00E2 C0 E0               758 	push	acc
                            759 ;	genCall
   00E4 12 14 87            760 	lcall	_printf_tiny
   00E7 15 81               761 	dec	sp
   00E9 15 81               762 	dec	sp
                            763 ;	main.c:89: storage_count=0;
                            764 ;	genAssign
   00EB 90 0D 2E            765 	mov	dptr,#_storage_count
   00EE E4                  766 	clr	a
   00EF F0                  767 	movx	@dptr,a
   00F0 A3                  768 	inc	dptr
   00F1 F0                  769 	movx	@dptr,a
                            770 ;	main.c:90: command_count=0;
                            771 ;	genAssign
   00F2 90 0D 30            772 	mov	dptr,#_command_count
   00F5 E4                  773 	clr	a
   00F6 F0                  774 	movx	@dptr,a
   00F7 A3                  775 	inc	dptr
   00F8 F0                  776 	movx	@dptr,a
                            777 ;	main.c:91: i=0;
                            778 ;	genAssign
   00F9 90 0C 71            779 	mov	dptr,#_i
   00FC E4                  780 	clr	a
   00FD F0                  781 	movx	@dptr,a
   00FE A3                  782 	inc	dptr
   00FF F0                  783 	movx	@dptr,a
                            784 ;	main.c:92: while(*(size+i)!='\0') //Check if the size is in the form of numbers
   0100                     785 00106$:
                            786 ;	genAssign
   0100 90 0C 71            787 	mov	dptr,#_i
   0103 E0                  788 	movx	a,@dptr
   0104 FA                  789 	mov	r2,a
   0105 A3                  790 	inc	dptr
   0106 E0                  791 	movx	a,@dptr
   0107 FB                  792 	mov	r3,a
                            793 ;	genAssign
   0108 90 0C 85            794 	mov	dptr,#_size
   010B E0                  795 	movx	a,@dptr
   010C FC                  796 	mov	r4,a
   010D A3                  797 	inc	dptr
   010E E0                  798 	movx	a,@dptr
   010F FD                  799 	mov	r5,a
   0110 A3                  800 	inc	dptr
   0111 E0                  801 	movx	a,@dptr
   0112 FE                  802 	mov	r6,a
                            803 ;	genPlus
                            804 ;	Peephole 236.g	used r2 instead of ar2
   0113 EA                  805 	mov	a,r2
                            806 ;	Peephole 236.a	used r4 instead of ar4
   0114 2C                  807 	add	a,r4
   0115 FF                  808 	mov	r7,a
                            809 ;	Peephole 236.g	used r3 instead of ar3
   0116 EB                  810 	mov	a,r3
                            811 ;	Peephole 236.b	used r5 instead of ar5
   0117 3D                  812 	addc	a,r5
   0118 F8                  813 	mov	r0,a
   0119 8E 01               814 	mov	ar1,r6
                            815 ;	genPointerGet
                            816 ;	genGenPointerGet
   011B 8F 82               817 	mov	dpl,r7
   011D 88 83               818 	mov	dph,r0
   011F 89 F0               819 	mov	b,r1
   0121 12 22 5D            820 	lcall	__gptrget
                            821 ;	genCmpEq
                            822 ;	gencjneshort
                            823 ;	Peephole 112.b	changed ljmp to sjmp
   0124 FF                  824 	mov	r7,a
                            825 ;	Peephole 115.b	jump optimization
   0125 60 32               826 	jz	00108$
                            827 ;	Peephole 300	removed redundant label 00164$
                            828 ;	main.c:94: if(*(size+i)>= '0' && *(size+i)<='9')
                            829 ;	genCmpLt
                            830 ;	genCmp
   0127 C3                  831 	clr	c
   0128 EF                  832 	mov	a,r7
   0129 64 80               833 	xrl	a,#0x80
   012B 94 B0               834 	subb	a,#0xb0
                            835 ;	genIfxJump
                            836 ;	Peephole 112.b	changed ljmp to sjmp
                            837 ;	Peephole 160.a	removed sjmp by inverse jump logic
                            838 ;	genCmpGt
                            839 ;	genCmp
   012D 40 18               840 	jc	00103$
                            841 ;	Peephole 300	removed redundant label 00165$
                            842 ;	Peephole 256.a	removed redundant clr c
                            843 ;	Peephole 159	avoided xrl during execution
   012F 74 B9               844 	mov	a,#(0x39 ^ 0x80)
   0131 8F F0               845 	mov	b,r7
   0133 63 F0 80            846 	xrl	b,#0x80
   0136 95 F0               847 	subb	a,b
                            848 ;	genIfxJump
                            849 ;	Peephole 112.b	changed ljmp to sjmp
                            850 ;	Peephole 160.a	removed sjmp by inverse jump logic
   0138 40 0D               851 	jc	00103$
                            852 ;	Peephole 300	removed redundant label 00166$
                            853 ;	main.c:96: i++;
                            854 ;	genPlus
   013A 90 0C 71            855 	mov	dptr,#_i
                            856 ;     genPlusIncr
   013D 74 01               857 	mov	a,#0x01
                            858 ;	Peephole 236.a	used r2 instead of ar2
   013F 2A                  859 	add	a,r2
   0140 F0                  860 	movx	@dptr,a
                            861 ;	Peephole 181	changed mov to clr
   0141 E4                  862 	clr	a
                            863 ;	Peephole 236.b	used r3 instead of ar3
   0142 3B                  864 	addc	a,r3
   0143 A3                  865 	inc	dptr
   0144 F0                  866 	movx	@dptr,a
                            867 ;	main.c:97: continue;
                            868 ;	Peephole 112.b	changed ljmp to sjmp
   0145 80 B9               869 	sjmp	00106$
   0147                     870 00103$:
                            871 ;	main.c:101: printf_tiny("Please enter a number\r\n"); //else prompt the user to enter a number
                            872 ;	genIpush
   0147 74 51               873 	mov	a,#__str_3
   0149 C0 E0               874 	push	acc
   014B 74 25               875 	mov	a,#(__str_3 >> 8)
   014D C0 E0               876 	push	acc
                            877 ;	genCall
   014F 12 14 87            878 	lcall	_printf_tiny
   0152 15 81               879 	dec	sp
   0154 15 81               880 	dec	sp
                            881 ;	main.c:102: goto start;
   0156 02 00 96            882 	ljmp	00111$
   0159                     883 00108$:
                            884 ;	main.c:105: result=0;
                            885 ;	genAssign
   0159 90 0D 2C            886 	mov	dptr,#_result
   015C E4                  887 	clr	a
   015D F0                  888 	movx	@dptr,a
   015E A3                  889 	inc	dptr
   015F F0                  890 	movx	@dptr,a
                            891 ;	main.c:106: result=atoi(size); //Converts ascii to integer
                            892 ;	genCall
   0160 8C 82               893 	mov	dpl,r4
   0162 8D 83               894 	mov	dph,r5
   0164 8E F0               895 	mov	b,r6
   0166 12 05 37            896 	lcall	_atoi
   0169 AA 82               897 	mov	r2,dpl
   016B AB 83               898 	mov	r3,dph
                            899 ;	genAssign
   016D 90 0D 2C            900 	mov	dptr,#_result
   0170 EA                  901 	mov	a,r2
   0171 F0                  902 	movx	@dptr,a
   0172 A3                  903 	inc	dptr
   0173 EB                  904 	mov	a,r3
   0174 F0                  905 	movx	@dptr,a
                            906 ;	main.c:107: printf_tiny("The buffer size integer value is %d\r\n",result);
                            907 ;	genIpush
   0175 C0 02               908 	push	ar2
   0177 C0 03               909 	push	ar3
                            910 ;	genIpush
   0179 74 69               911 	mov	a,#__str_4
   017B C0 E0               912 	push	acc
   017D 74 25               913 	mov	a,#(__str_4 >> 8)
   017F C0 E0               914 	push	acc
                            915 ;	genCall
   0181 12 14 87            916 	lcall	_printf_tiny
   0184 E5 81               917 	mov	a,sp
   0186 24 FC               918 	add	a,#0xfc
   0188 F5 81               919 	mov	sp,a
                            920 ;	main.c:109: }while(((result%8)!=0)||(result<32)||(result>2400)); //Check if the size is divisible by 8 and is between 32 and 2400
                            921 ;	genAssign
   018A 90 0D 2C            922 	mov	dptr,#_result
   018D E0                  923 	movx	a,@dptr
   018E FA                  924 	mov	r2,a
   018F A3                  925 	inc	dptr
   0190 E0                  926 	movx	a,@dptr
   0191 FB                  927 	mov	r3,a
                            928 ;	genAnd
   0192 74 07               929 	mov	a,#0x07
   0194 5A                  930 	anl	a,r2
   0195 FC                  931 	mov	r4,a
   0196 7D 00               932 	mov	r5,#0x00
                            933 ;	genCmpEq
                            934 ;	gencjneshort
   0198 BC 00 05            935 	cjne	r4,#0x00,00167$
   019B BD 00 02            936 	cjne	r5,#0x00,00167$
   019E 80 03               937 	sjmp	00168$
   01A0                     938 00167$:
   01A0 02 00 96            939 	ljmp	00111$
   01A3                     940 00168$:
                            941 ;	genCmpLt
                            942 ;	genCmp
   01A3 C3                  943 	clr	c
   01A4 EA                  944 	mov	a,r2
   01A5 94 20               945 	subb	a,#0x20
   01A7 EB                  946 	mov	a,r3
   01A8 94 00               947 	subb	a,#0x00
                            948 ;	genIfxJump
   01AA 50 03               949 	jnc	00169$
   01AC 02 00 96            950 	ljmp	00111$
   01AF                     951 00169$:
                            952 ;	genCmpGt
                            953 ;	genCmp
   01AF C3                  954 	clr	c
   01B0 74 60               955 	mov	a,#0x60
   01B2 9A                  956 	subb	a,r2
   01B3 74 09               957 	mov	a,#0x09
   01B5 9B                  958 	subb	a,r3
                            959 ;	genIfxJump
   01B6 50 03               960 	jnc	00170$
   01B8 02 00 96            961 	ljmp	00111$
   01BB                     962 00170$:
                            963 ;	main.c:111: if ((buffer0 = malloc((result))) == 0)  //allocate buffer0
                            964 ;	genCall
   01BB 8A 82               965 	mov	dpl,r2
   01BD 8B 83               966 	mov	dph,r3
   01BF 12 13 32            967 	lcall	_malloc
   01C2 AA 82               968 	mov	r2,dpl
   01C4 AB 83               969 	mov	r3,dph
                            970 ;	genAssign
   01C6 90 0C 7F            971 	mov	dptr,#_buffer0
   01C9 EA                  972 	mov	a,r2
   01CA F0                  973 	movx	@dptr,a
   01CB A3                  974 	inc	dptr
   01CC EB                  975 	mov	a,r3
   01CD F0                  976 	movx	@dptr,a
                            977 ;	genIfx
   01CE EA                  978 	mov	a,r2
   01CF 4B                  979 	orl	a,r3
                            980 ;	genIfxJump
                            981 ;	Peephole 108.b	removed ljmp by inverse jump logic
   01D0 70 22               982 	jnz	00115$
                            983 ;	Peephole 300	removed redundant label 00171$
                            984 ;	main.c:113: printf_tiny("malloc buffer0 failed, Please enter a smaller size\n\r");
                            985 ;	genIpush
   01D2 74 8F               986 	mov	a,#__str_5
   01D4 C0 E0               987 	push	acc
   01D6 74 25               988 	mov	a,#(__str_5 >> 8)
   01D8 C0 E0               989 	push	acc
                            990 ;	genCall
   01DA 12 14 87            991 	lcall	_printf_tiny
   01DD 15 81               992 	dec	sp
   01DF 15 81               993 	dec	sp
                            994 ;	main.c:114: free(buffer0); //free buffer0 if malloc to buffer0 fails
                            995 ;	genAssign
   01E1 90 0C 7F            996 	mov	dptr,#_buffer0
   01E4 E0                  997 	movx	a,@dptr
   01E5 FA                  998 	mov	r2,a
   01E6 A3                  999 	inc	dptr
   01E7 E0                 1000 	movx	a,@dptr
   01E8 FB                 1001 	mov	r3,a
                           1002 ;	genCast
   01E9 7C 00              1003 	mov	r4,#0x0
                           1004 ;	genCall
   01EB 8A 82              1005 	mov	dpl,r2
   01ED 8B 83              1006 	mov	dph,r3
   01EF 8C F0              1007 	mov	b,r4
   01F1 12 12 5E           1008 	lcall	_free
   01F4                    1009 00115$:
                           1010 ;	main.c:117: if ((buffer1 = malloc((result))) == 0)         //allocate buffer1
                           1011 ;	genAssign
   01F4 90 0D 2C           1012 	mov	dptr,#_result
   01F7 E0                 1013 	movx	a,@dptr
   01F8 FA                 1014 	mov	r2,a
   01F9 A3                 1015 	inc	dptr
   01FA E0                 1016 	movx	a,@dptr
   01FB FB                 1017 	mov	r3,a
                           1018 ;	genCall
   01FC 8A 82              1019 	mov	dpl,r2
   01FE 8B 83              1020 	mov	dph,r3
   0200 12 13 32           1021 	lcall	_malloc
   0203 AA 82              1022 	mov	r2,dpl
   0205 AB 83              1023 	mov	r3,dph
                           1024 ;	genAssign
   0207 90 0C 81           1025 	mov	dptr,#_buffer1
   020A EA                 1026 	mov	a,r2
   020B F0                 1027 	movx	@dptr,a
   020C A3                 1028 	inc	dptr
   020D EB                 1029 	mov	a,r3
   020E F0                 1030 	movx	@dptr,a
                           1031 ;	genIfx
   020F EA                 1032 	mov	a,r2
   0210 4B                 1033 	orl	a,r3
                           1034 ;	genIfxJump
                           1035 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0211 70 35              1036 	jnz	00120$
                           1037 ;	Peephole 300	removed redundant label 00172$
                           1038 ;	main.c:119: printf_tiny("malloc buffer1 failed, Please enter a smaller size\n\r");
                           1039 ;	genIpush
   0213 74 C4              1040 	mov	a,#__str_6
   0215 C0 E0              1041 	push	acc
   0217 74 25              1042 	mov	a,#(__str_6 >> 8)
   0219 C0 E0              1043 	push	acc
                           1044 ;	genCall
   021B 12 14 87           1045 	lcall	_printf_tiny
   021E 15 81              1046 	dec	sp
   0220 15 81              1047 	dec	sp
                           1048 ;	main.c:120: free (buffer1);
                           1049 ;	genAssign
   0222 90 0C 81           1050 	mov	dptr,#_buffer1
   0225 E0                 1051 	movx	a,@dptr
   0226 FA                 1052 	mov	r2,a
   0227 A3                 1053 	inc	dptr
   0228 E0                 1054 	movx	a,@dptr
   0229 FB                 1055 	mov	r3,a
                           1056 ;	genCast
   022A 7C 00              1057 	mov	r4,#0x0
                           1058 ;	genCall
   022C 8A 82              1059 	mov	dpl,r2
   022E 8B 83              1060 	mov	dph,r3
   0230 8C F0              1061 	mov	b,r4
   0232 12 12 5E           1062 	lcall	_free
                           1063 ;	main.c:121: free (buffer0);  // if buffer1 malloc fails, free buffer 0 and buffer1
                           1064 ;	genAssign
   0235 90 0C 7F           1065 	mov	dptr,#_buffer0
   0238 E0                 1066 	movx	a,@dptr
   0239 FA                 1067 	mov	r2,a
   023A A3                 1068 	inc	dptr
   023B E0                 1069 	movx	a,@dptr
   023C FB                 1070 	mov	r3,a
                           1071 ;	genCast
   023D 7C 00              1072 	mov	r4,#0x0
                           1073 ;	genCall
   023F 8A 82              1074 	mov	dpl,r2
   0241 8B 83              1075 	mov	dph,r3
   0243 8C F0              1076 	mov	b,r4
   0245 12 12 5E           1077 	lcall	_free
   0248                    1078 00120$:
                           1079 ;	main.c:124: } while ((buffer0 == 0) || (buffer1 == 0)); //If fails then prompt the user to enter a new size
                           1080 ;	genAssign
   0248 90 0C 7F           1081 	mov	dptr,#_buffer0
   024B E0                 1082 	movx	a,@dptr
   024C FA                 1083 	mov	r2,a
   024D A3                 1084 	inc	dptr
   024E E0                 1085 	movx	a,@dptr
                           1086 ;	genIfx
   024F FB                 1087 	mov	r3,a
                           1088 ;	Peephole 135	removed redundant mov
   0250 4A                 1089 	orl	a,r2
                           1090 ;	genIfxJump
   0251 70 03              1091 	jnz	00173$
   0253 02 00 96           1092 	ljmp	00111$
   0256                    1093 00173$:
                           1094 ;	genAssign
   0256 90 0C 81           1095 	mov	dptr,#_buffer1
   0259 E0                 1096 	movx	a,@dptr
   025A FA                 1097 	mov	r2,a
   025B A3                 1098 	inc	dptr
   025C E0                 1099 	movx	a,@dptr
                           1100 ;	genIfx
   025D FB                 1101 	mov	r3,a
                           1102 ;	Peephole 135	removed redundant mov
   025E 4A                 1103 	orl	a,r2
                           1104 ;	genIfxJump
   025F 70 03              1105 	jnz	00174$
   0261 02 00 96           1106 	ljmp	00111$
   0264                    1107 00174$:
                           1108 ;	main.c:126: printf_tiny("malloc passed for both buffer0 and buffer1\n\r");
                           1109 ;	genIpush
   0264 74 F9              1110 	mov	a,#__str_7
   0266 C0 E0              1111 	push	acc
   0268 74 25              1112 	mov	a,#(__str_7 >> 8)
   026A C0 E0              1113 	push	acc
                           1114 ;	genCall
   026C 12 14 87           1115 	lcall	_printf_tiny
   026F 15 81              1116 	dec	sp
   0271 15 81              1117 	dec	sp
                           1118 ;	main.c:127: buffer_array[0]=buffer0; //alloacte buffers in buffer_array and their sizes in buffer_size
                           1119 ;	genAssign
   0273 90 0C 7F           1120 	mov	dptr,#_buffer0
   0276 E0                 1121 	movx	a,@dptr
   0277 FA                 1122 	mov	r2,a
   0278 A3                 1123 	inc	dptr
   0279 E0                 1124 	movx	a,@dptr
   027A FB                 1125 	mov	r3,a
                           1126 ;	genCast
   027B 7C 00              1127 	mov	r4,#0x0
                           1128 ;	genPointerSet
                           1129 ;     genFarPointerSet
   027D 90 0A 00           1130 	mov	dptr,#_buffer_array
   0280 EA                 1131 	mov	a,r2
   0281 F0                 1132 	movx	@dptr,a
   0282 A3                 1133 	inc	dptr
   0283 EB                 1134 	mov	a,r3
   0284 F0                 1135 	movx	@dptr,a
   0285 A3                 1136 	inc	dptr
   0286 EC                 1137 	mov	a,r4
   0287 F0                 1138 	movx	@dptr,a
                           1139 ;	main.c:128: buffer_array[1]=buffer1;
                           1140 ;	genAssign
   0288 90 0C 81           1141 	mov	dptr,#_buffer1
   028B E0                 1142 	movx	a,@dptr
   028C FA                 1143 	mov	r2,a
   028D A3                 1144 	inc	dptr
   028E E0                 1145 	movx	a,@dptr
   028F FB                 1146 	mov	r3,a
                           1147 ;	genCast
   0290 7C 00              1148 	mov	r4,#0x0
                           1149 ;	genPointerSet
                           1150 ;     genFarPointerSet
   0292 90 0A 03           1151 	mov	dptr,#(_buffer_array + 0x0003)
   0295 EA                 1152 	mov	a,r2
   0296 F0                 1153 	movx	@dptr,a
   0297 A3                 1154 	inc	dptr
   0298 EB                 1155 	mov	a,r3
   0299 F0                 1156 	movx	@dptr,a
   029A A3                 1157 	inc	dptr
   029B EC                 1158 	mov	a,r4
   029C F0                 1159 	movx	@dptr,a
                           1160 ;	main.c:129: buffer_size[0]=result;
                           1161 ;	genAssign
   029D 90 0D 2C           1162 	mov	dptr,#_result
   02A0 E0                 1163 	movx	a,@dptr
   02A1 FA                 1164 	mov	r2,a
   02A2 A3                 1165 	inc	dptr
   02A3 E0                 1166 	movx	a,@dptr
   02A4 FB                 1167 	mov	r3,a
                           1168 ;	genPointerSet
                           1169 ;     genFarPointerSet
   02A5 90 0B 77           1170 	mov	dptr,#_buffer_size
   02A8 EA                 1171 	mov	a,r2
   02A9 F0                 1172 	movx	@dptr,a
   02AA A3                 1173 	inc	dptr
   02AB EB                 1174 	mov	a,r3
   02AC F0                 1175 	movx	@dptr,a
                           1176 ;	main.c:130: buffer_size[1]=result;
                           1177 ;	genPointerSet
                           1178 ;     genFarPointerSet
   02AD 90 0B 79           1179 	mov	dptr,#(_buffer_size + 0x0002)
   02B0 EA                 1180 	mov	a,r2
   02B1 F0                 1181 	movx	@dptr,a
   02B2 A3                 1182 	inc	dptr
   02B3 EB                 1183 	mov	a,r3
   02B4 F0                 1184 	movx	@dptr,a
                           1185 ;	main.c:131: cmd_count=0;
                           1186 ;	genAssign
   02B5 90 0C 75           1187 	mov	dptr,#_cmd_count
   02B8 E4                 1188 	clr	a
   02B9 F0                 1189 	movx	@dptr,a
   02BA A3                 1190 	inc	dptr
   02BB F0                 1191 	movx	@dptr,a
                           1192 ;	main.c:133: while(1)
   02BC                    1193 00139$:
                           1194 ;	main.c:135: printf("\r\n/**********************MENU************************/\r\n");
                           1195 ;	genIpush
   02BC 74 26              1196 	mov	a,#__str_8
   02BE C0 E0              1197 	push	acc
   02C0 74 26              1198 	mov	a,#(__str_8 >> 8)
   02C2 C0 E0              1199 	push	acc
   02C4 74 80              1200 	mov	a,#0x80
   02C6 C0 E0              1201 	push	acc
                           1202 ;	genCall
   02C8 12 19 BE           1203 	lcall	_printf
   02CB 15 81              1204 	dec	sp
   02CD 15 81              1205 	dec	sp
   02CF 15 81              1206 	dec	sp
                           1207 ;	main.c:136: printf_tiny("The valid command characters with functions are:\r\n");
                           1208 ;	genIpush
   02D1 74 5F              1209 	mov	a,#__str_9
   02D3 C0 E0              1210 	push	acc
   02D5 74 26              1211 	mov	a,#(__str_9 >> 8)
   02D7 C0 E0              1212 	push	acc
                           1213 ;	genCall
   02D9 12 14 87           1214 	lcall	_printf_tiny
   02DC 15 81              1215 	dec	sp
   02DE 15 81              1216 	dec	sp
                           1217 ;	main.c:137: printf_tiny(" '+' command character ---------- Buffer Add\r\n");
                           1218 ;	genIpush
   02E0 74 92              1219 	mov	a,#__str_10
   02E2 C0 E0              1220 	push	acc
   02E4 74 26              1221 	mov	a,#(__str_10 >> 8)
   02E6 C0 E0              1222 	push	acc
                           1223 ;	genCall
   02E8 12 14 87           1224 	lcall	_printf_tiny
   02EB 15 81              1225 	dec	sp
   02ED 15 81              1226 	dec	sp
                           1227 ;	main.c:138: printf_tiny(" '-' command character ---------- Buffer Delete\r\n");
                           1228 ;	genIpush
   02EF 74 C1              1229 	mov	a,#__str_11
   02F1 C0 E0              1230 	push	acc
   02F3 74 26              1231 	mov	a,#(__str_11 >> 8)
   02F5 C0 E0              1232 	push	acc
                           1233 ;	genCall
   02F7 12 14 87           1234 	lcall	_printf_tiny
   02FA 15 81              1235 	dec	sp
   02FC 15 81              1236 	dec	sp
                           1237 ;	main.c:139: printf_tiny(" '?' command character ---------- Heap Report\r\n");
                           1238 ;	genIpush
   02FE 74 F3              1239 	mov	a,#__str_12
   0300 C0 E0              1240 	push	acc
   0302 74 26              1241 	mov	a,#(__str_12 >> 8)
   0304 C0 E0              1242 	push	acc
                           1243 ;	genCall
   0306 12 14 87           1244 	lcall	_printf_tiny
   0309 15 81              1245 	dec	sp
   030B 15 81              1246 	dec	sp
                           1247 ;	main.c:140: printf_tiny(" '=' command character ---------- Buffer0 Contents in Hex\r\n");
                           1248 ;	genIpush
   030D 74 23              1249 	mov	a,#__str_13
   030F C0 E0              1250 	push	acc
   0311 74 27              1251 	mov	a,#(__str_13 >> 8)
   0313 C0 E0              1252 	push	acc
                           1253 ;	genCall
   0315 12 14 87           1254 	lcall	_printf_tiny
   0318 15 81              1255 	dec	sp
   031A 15 81              1256 	dec	sp
                           1257 ;	main.c:141: printf_tiny(" '@' command character ---------- Freeing allocations of all buffers\r\n");
                           1258 ;	genIpush
   031C 74 5F              1259 	mov	a,#__str_14
   031E C0 E0              1260 	push	acc
   0320 74 27              1261 	mov	a,#(__str_14 >> 8)
   0322 C0 E0              1262 	push	acc
                           1263 ;	genCall
   0324 12 14 87           1264 	lcall	_printf_tiny
   0327 15 81              1265 	dec	sp
   0329 15 81              1266 	dec	sp
                           1267 ;	main.c:142: printf_tiny("\n\rEnter a character\n\r");    //prompt the user to enter a character
                           1268 ;	genIpush
   032B 74 A6              1269 	mov	a,#__str_15
   032D C0 E0              1270 	push	acc
   032F 74 27              1271 	mov	a,#(__str_15 >> 8)
   0331 C0 E0              1272 	push	acc
                           1273 ;	genCall
   0333 12 14 87           1274 	lcall	_printf_tiny
   0336 15 81              1275 	dec	sp
   0338 15 81              1276 	dec	sp
                           1277 ;	main.c:143: cmd=getchar(); //obtain the character
                           1278 ;	genCall
   033A 12 06 66           1279 	lcall	_getchar
   033D E5 82              1280 	mov	a,dpl
                           1281 ;	genAssign
   033F 90 0C 8E           1282 	mov	dptr,#_cmd
   0342 F0                 1283 	movx	@dptr,a
                           1284 ;	main.c:144: printf_tiny("The character you entered is : ");
                           1285 ;	genIpush
   0343 74 BC              1286 	mov	a,#__str_16
   0345 C0 E0              1287 	push	acc
   0347 74 27              1288 	mov	a,#(__str_16 >> 8)
   0349 C0 E0              1289 	push	acc
                           1290 ;	genCall
   034B 12 14 87           1291 	lcall	_printf_tiny
   034E 15 81              1292 	dec	sp
   0350 15 81              1293 	dec	sp
                           1294 ;	main.c:145: putchar(cmd);
                           1295 ;	genAssign
   0352 90 0C 8E           1296 	mov	dptr,#_cmd
   0355 E0                 1297 	movx	a,@dptr
                           1298 ;	genCall
   0356 FA                 1299 	mov	r2,a
                           1300 ;	Peephole 244.c	loading dpl from a instead of r2
   0357 F5 82              1301 	mov	dpl,a
   0359 12 06 54           1302 	lcall	_putchar
                           1303 ;	main.c:146: printf_tiny("\r\n");
                           1304 ;	genIpush
   035C 74 4E              1305 	mov	a,#__str_2
   035E C0 E0              1306 	push	acc
   0360 74 25              1307 	mov	a,#(__str_2 >> 8)
   0362 C0 E0              1308 	push	acc
                           1309 ;	genCall
   0364 12 14 87           1310 	lcall	_printf_tiny
   0367 15 81              1311 	dec	sp
   0369 15 81              1312 	dec	sp
                           1313 ;	main.c:147: if((cmd >='a' && cmd <='z') || (cmd >='0' && cmd <='9')) //Check if it is a storage character
                           1314 ;	genAssign
   036B 90 0C 8E           1315 	mov	dptr,#_cmd
   036E E0                 1316 	movx	a,@dptr
                           1317 ;	genCmpLt
                           1318 ;	genCmp
   036F FA                 1319 	mov	r2,a
   0370 C3                 1320 	clr	c
                           1321 ;	Peephole 106	removed redundant mov
   0371 64 80              1322 	xrl	a,#0x80
   0373 94 E1              1323 	subb	a,#0xe1
                           1324 ;	genIfxJump
                           1325 ;	Peephole 112.b	changed ljmp to sjmp
                           1326 ;	Peephole 160.a	removed sjmp by inverse jump logic
                           1327 ;	genCmpGt
                           1328 ;	genCmp
   0375 40 0B              1329 	jc	00137$
                           1330 ;	Peephole 300	removed redundant label 00175$
                           1331 ;	Peephole 256.a	removed redundant clr c
                           1332 ;	Peephole 159	avoided xrl during execution
   0377 74 FA              1333 	mov	a,#(0x7A ^ 0x80)
   0379 8A F0              1334 	mov	b,r2
   037B 63 F0 80           1335 	xrl	b,#0x80
   037E 95 F0              1336 	subb	a,b
                           1337 ;	genIfxJump
                           1338 ;	Peephole 108.a	removed ljmp by inverse jump logic
   0380 50 1E              1339 	jnc	00132$
                           1340 ;	Peephole 300	removed redundant label 00176$
   0382                    1341 00137$:
                           1342 ;	genAssign
   0382 90 0C 8E           1343 	mov	dptr,#_cmd
   0385 E0                 1344 	movx	a,@dptr
                           1345 ;	genCmpLt
                           1346 ;	genCmp
   0386 FA                 1347 	mov	r2,a
   0387 C3                 1348 	clr	c
                           1349 ;	Peephole 106	removed redundant mov
   0388 64 80              1350 	xrl	a,#0x80
   038A 94 B0              1351 	subb	a,#0xb0
                           1352 ;	genIfxJump
   038C 50 03              1353 	jnc	00177$
   038E 02 04 50           1354 	ljmp	00133$
   0391                    1355 00177$:
                           1356 ;	genCmpGt
                           1357 ;	genCmp
   0391 C3                 1358 	clr	c
                           1359 ;	Peephole 159	avoided xrl during execution
   0392 74 B9              1360 	mov	a,#(0x39 ^ 0x80)
   0394 8A F0              1361 	mov	b,r2
   0396 63 F0 80           1362 	xrl	b,#0x80
   0399 95 F0              1363 	subb	a,b
                           1364 ;	genIfxJump
   039B 50 03              1365 	jnc	00178$
   039D 02 04 50           1366 	ljmp	00133$
   03A0                    1367 00178$:
   03A0                    1368 00132$:
                           1369 ;	main.c:149: printf_tiny("It is a storage character\n\r");
                           1370 ;	genIpush
   03A0 74 DC              1371 	mov	a,#__str_17
   03A2 C0 E0              1372 	push	acc
   03A4 74 27              1373 	mov	a,#(__str_17 >> 8)
   03A6 C0 E0              1374 	push	acc
                           1375 ;	genCall
   03A8 12 14 87           1376 	lcall	_printf_tiny
   03AB 15 81              1377 	dec	sp
   03AD 15 81              1378 	dec	sp
                           1379 ;	main.c:150: if(cmd_count>(buffer_size[0]-1)) //if buffer0 full, then only display the storage character
                           1380 ;	genPointerGet
                           1381 ;	genFarPointerGet
   03AF 90 0B 77           1382 	mov	dptr,#_buffer_size
   03B2 E0                 1383 	movx	a,@dptr
   03B3 FA                 1384 	mov	r2,a
   03B4 A3                 1385 	inc	dptr
   03B5 E0                 1386 	movx	a,@dptr
   03B6 FB                 1387 	mov	r3,a
                           1388 ;	genMinus
                           1389 ;	genMinusDec
   03B7 1A                 1390 	dec	r2
   03B8 BA FF 01           1391 	cjne	r2,#0xff,00179$
   03BB 1B                 1392 	dec	r3
   03BC                    1393 00179$:
                           1394 ;	genAssign
   03BC 90 0C 75           1395 	mov	dptr,#_cmd_count
   03BF E0                 1396 	movx	a,@dptr
   03C0 FC                 1397 	mov	r4,a
   03C1 A3                 1398 	inc	dptr
   03C2 E0                 1399 	movx	a,@dptr
   03C3 FD                 1400 	mov	r5,a
                           1401 ;	genCmpGt
                           1402 ;	genCmp
   03C4 C3                 1403 	clr	c
   03C5 EA                 1404 	mov	a,r2
   03C6 9C                 1405 	subb	a,r4
   03C7 EB                 1406 	mov	a,r3
   03C8 9D                 1407 	subb	a,r5
                           1408 ;	genIfxJump
                           1409 ;	Peephole 108.a	removed ljmp by inverse jump logic
   03C9 50 39              1410 	jnc	00123$
                           1411 ;	Peephole 300	removed redundant label 00180$
                           1412 ;	main.c:152: printf_tiny("Buffer0 is full, The character you entered will not be stored in the buffer\r\n");
                           1413 ;	genIpush
   03CB 74 F8              1414 	mov	a,#__str_18
   03CD C0 E0              1415 	push	acc
   03CF 74 27              1416 	mov	a,#(__str_18 >> 8)
   03D1 C0 E0              1417 	push	acc
                           1418 ;	genCall
   03D3 12 14 87           1419 	lcall	_printf_tiny
   03D6 15 81              1420 	dec	sp
   03D8 15 81              1421 	dec	sp
                           1422 ;	main.c:153: printf_tiny("The character you entered is: ");
                           1423 ;	genIpush
   03DA 74 46              1424 	mov	a,#__str_19
   03DC C0 E0              1425 	push	acc
   03DE 74 28              1426 	mov	a,#(__str_19 >> 8)
   03E0 C0 E0              1427 	push	acc
                           1428 ;	genCall
   03E2 12 14 87           1429 	lcall	_printf_tiny
   03E5 15 81              1430 	dec	sp
   03E7 15 81              1431 	dec	sp
                           1432 ;	main.c:154: putchar(cmd);
                           1433 ;	genAssign
   03E9 90 0C 8E           1434 	mov	dptr,#_cmd
   03EC E0                 1435 	movx	a,@dptr
                           1436 ;	genCall
   03ED FA                 1437 	mov	r2,a
                           1438 ;	Peephole 244.c	loading dpl from a instead of r2
   03EE F5 82              1439 	mov	dpl,a
   03F0 12 06 54           1440 	lcall	_putchar
                           1441 ;	main.c:155: printf_tiny("\r\n");
                           1442 ;	genIpush
   03F3 74 4E              1443 	mov	a,#__str_2
   03F5 C0 E0              1444 	push	acc
   03F7 74 25              1445 	mov	a,#(__str_2 >> 8)
   03F9 C0 E0              1446 	push	acc
                           1447 ;	genCall
   03FB 12 14 87           1448 	lcall	_printf_tiny
   03FE 15 81              1449 	dec	sp
   0400 15 81              1450 	dec	sp
                           1451 ;	Peephole 112.b	changed ljmp to sjmp
   0402 80 36              1452 	sjmp	00124$
   0404                    1453 00123$:
                           1454 ;	main.c:159: *(buffer0+cmd_count)=cmd;  //if buffer0 not full, store the character in the buffer0
                           1455 ;	genAssign
   0404 90 0C 7F           1456 	mov	dptr,#_buffer0
   0407 E0                 1457 	movx	a,@dptr
   0408 FA                 1458 	mov	r2,a
   0409 A3                 1459 	inc	dptr
   040A E0                 1460 	movx	a,@dptr
   040B FB                 1461 	mov	r3,a
                           1462 ;	genPlus
                           1463 ;	Peephole 236.g	used r4 instead of ar4
   040C EC                 1464 	mov	a,r4
                           1465 ;	Peephole 236.a	used r2 instead of ar2
   040D 2A                 1466 	add	a,r2
   040E FA                 1467 	mov	r2,a
                           1468 ;	Peephole 236.g	used r5 instead of ar5
   040F ED                 1469 	mov	a,r5
                           1470 ;	Peephole 236.b	used r3 instead of ar3
   0410 3B                 1471 	addc	a,r3
   0411 FB                 1472 	mov	r3,a
                           1473 ;	genAssign
   0412 90 0C 8E           1474 	mov	dptr,#_cmd
   0415 E0                 1475 	movx	a,@dptr
                           1476 ;	genPointerSet
                           1477 ;     genFarPointerSet
   0416 FE                 1478 	mov	r6,a
   0417 8A 82              1479 	mov	dpl,r2
   0419 8B 83              1480 	mov	dph,r3
                           1481 ;	Peephole 136	removed redundant move
   041B F0                 1482 	movx	@dptr,a
                           1483 ;	main.c:160: cmd_count++;
                           1484 ;	genPlus
   041C 90 0C 75           1485 	mov	dptr,#_cmd_count
                           1486 ;     genPlusIncr
   041F 74 01              1487 	mov	a,#0x01
                           1488 ;	Peephole 236.a	used r4 instead of ar4
   0421 2C                 1489 	add	a,r4
   0422 F0                 1490 	movx	@dptr,a
                           1491 ;	Peephole 181	changed mov to clr
   0423 E4                 1492 	clr	a
                           1493 ;	Peephole 236.b	used r5 instead of ar5
   0424 3D                 1494 	addc	a,r5
   0425 A3                 1495 	inc	dptr
   0426 F0                 1496 	movx	@dptr,a
                           1497 ;	main.c:161: storage_count++; //keep a count of storage characters received
                           1498 ;	genAssign
   0427 90 0D 2E           1499 	mov	dptr,#_storage_count
   042A E0                 1500 	movx	a,@dptr
   042B FA                 1501 	mov	r2,a
   042C A3                 1502 	inc	dptr
   042D E0                 1503 	movx	a,@dptr
   042E FB                 1504 	mov	r3,a
                           1505 ;	genPlus
   042F 90 0D 2E           1506 	mov	dptr,#_storage_count
                           1507 ;     genPlusIncr
   0432 74 01              1508 	mov	a,#0x01
                           1509 ;	Peephole 236.a	used r2 instead of ar2
   0434 2A                 1510 	add	a,r2
   0435 F0                 1511 	movx	@dptr,a
                           1512 ;	Peephole 181	changed mov to clr
   0436 E4                 1513 	clr	a
                           1514 ;	Peephole 236.b	used r3 instead of ar3
   0437 3B                 1515 	addc	a,r3
   0438 A3                 1516 	inc	dptr
   0439 F0                 1517 	movx	@dptr,a
   043A                    1518 00124$:
                           1519 ;	main.c:163: char_received++; //keep  count of total number of character received since last '?' command character
                           1520 ;	genAssign
   043A 90 0C 8F           1521 	mov	dptr,#_char_received
   043D E0                 1522 	movx	a,@dptr
   043E FA                 1523 	mov	r2,a
   043F A3                 1524 	inc	dptr
   0440 E0                 1525 	movx	a,@dptr
   0441 FB                 1526 	mov	r3,a
                           1527 ;	genPlus
   0442 90 0C 8F           1528 	mov	dptr,#_char_received
                           1529 ;     genPlusIncr
   0445 74 01              1530 	mov	a,#0x01
                           1531 ;	Peephole 236.a	used r2 instead of ar2
   0447 2A                 1532 	add	a,r2
   0448 F0                 1533 	movx	@dptr,a
                           1534 ;	Peephole 181	changed mov to clr
   0449 E4                 1535 	clr	a
                           1536 ;	Peephole 236.b	used r3 instead of ar3
   044A 3B                 1537 	addc	a,r3
   044B A3                 1538 	inc	dptr
   044C F0                 1539 	movx	@dptr,a
   044D 02 02 BC           1540 	ljmp	00139$
   0450                    1541 00133$:
                           1542 ;	main.c:168: printf_tiny("it is a command character\n\r"); //if not storage counter, it is a command character
                           1543 ;	genIpush
   0450 74 65              1544 	mov	a,#__str_20
   0452 C0 E0              1545 	push	acc
   0454 74 28              1546 	mov	a,#(__str_20 >> 8)
   0456 C0 E0              1547 	push	acc
                           1548 ;	genCall
   0458 12 14 87           1549 	lcall	_printf_tiny
   045B 15 81              1550 	dec	sp
   045D 15 81              1551 	dec	sp
                           1552 ;	main.c:169: command_count++; //keep a count of command characters received
                           1553 ;	genAssign
   045F 90 0D 30           1554 	mov	dptr,#_command_count
   0462 E0                 1555 	movx	a,@dptr
   0463 FA                 1556 	mov	r2,a
   0464 A3                 1557 	inc	dptr
   0465 E0                 1558 	movx	a,@dptr
   0466 FB                 1559 	mov	r3,a
                           1560 ;	genPlus
   0467 90 0D 30           1561 	mov	dptr,#_command_count
                           1562 ;     genPlusIncr
   046A 74 01              1563 	mov	a,#0x01
                           1564 ;	Peephole 236.a	used r2 instead of ar2
   046C 2A                 1565 	add	a,r2
   046D F0                 1566 	movx	@dptr,a
                           1567 ;	Peephole 181	changed mov to clr
   046E E4                 1568 	clr	a
                           1569 ;	Peephole 236.b	used r3 instead of ar3
   046F 3B                 1570 	addc	a,r3
   0470 A3                 1571 	inc	dptr
   0471 F0                 1572 	movx	@dptr,a
                           1573 ;	main.c:170: char_received++;
                           1574 ;	genAssign
   0472 90 0C 8F           1575 	mov	dptr,#_char_received
   0475 E0                 1576 	movx	a,@dptr
   0476 FA                 1577 	mov	r2,a
   0477 A3                 1578 	inc	dptr
   0478 E0                 1579 	movx	a,@dptr
   0479 FB                 1580 	mov	r3,a
                           1581 ;	genPlus
   047A 90 0C 8F           1582 	mov	dptr,#_char_received
                           1583 ;     genPlusIncr
   047D 74 01              1584 	mov	a,#0x01
                           1585 ;	Peephole 236.a	used r2 instead of ar2
   047F 2A                 1586 	add	a,r2
   0480 F0                 1587 	movx	@dptr,a
                           1588 ;	Peephole 181	changed mov to clr
   0481 E4                 1589 	clr	a
                           1590 ;	Peephole 236.b	used r3 instead of ar3
   0482 3B                 1591 	addc	a,r3
   0483 A3                 1592 	inc	dptr
   0484 F0                 1593 	movx	@dptr,a
                           1594 ;	main.c:171: switch(cmd)       //switch case for valid command characters defined with functions
                           1595 ;	genAssign
   0485 90 0C 8E           1596 	mov	dptr,#_cmd
   0488 E0                 1597 	movx	a,@dptr
   0489 FA                 1598 	mov	r2,a
                           1599 ;	genCmpEq
                           1600 ;	gencjneshort
   048A BA 2B 02           1601 	cjne	r2,#0x2B,00181$
                           1602 ;	Peephole 112.b	changed ljmp to sjmp
   048D 80 14              1603 	sjmp	00125$
   048F                    1604 00181$:
                           1605 ;	genCmpEq
                           1606 ;	gencjneshort
   048F BA 2D 02           1607 	cjne	r2,#0x2D,00182$
                           1608 ;	Peephole 112.b	changed ljmp to sjmp
   0492 80 1B              1609 	sjmp	00126$
   0494                    1610 00182$:
                           1611 ;	genCmpEq
                           1612 ;	gencjneshort
   0494 BA 3D 02           1613 	cjne	r2,#0x3D,00183$
                           1614 ;	Peephole 112.b	changed ljmp to sjmp
   0497 80 2E              1615 	sjmp	00128$
   0499                    1616 00183$:
                           1617 ;	genCmpEq
                           1618 ;	gencjneshort
   0499 BA 3F 02           1619 	cjne	r2,#0x3F,00184$
                           1620 ;	Peephole 112.b	changed ljmp to sjmp
   049C 80 1D              1621 	sjmp	00127$
   049E                    1622 00184$:
                           1623 ;	genCmpEq
                           1624 ;	gencjneshort
                           1625 ;	Peephole 112.b	changed ljmp to sjmp
                           1626 ;	main.c:173: case '+':                //if '+' then add buffer
                           1627 ;	Peephole 112.b	changed ljmp to sjmp
                           1628 ;	Peephole 198.b	optimized misc jump sequence
   049E BA 40 3E           1629 	cjne	r2,#0x40,00130$
   04A1 80 30              1630 	sjmp	00129$
                           1631 ;	Peephole 300	removed redundant label 00185$
   04A3                    1632 00125$:
                           1633 ;	main.c:175: DEBUGPORT(5)          //writes a value given in the external memory if DEBUG is defined
                           1634 ;	genCall
                           1635 ;	Peephole 182.b	used 16 bit load of dptr
   04A3 90 00 05           1636 	mov	dptr,#0x0005
   04A6 12 04 FF           1637 	lcall	_dataout
                           1638 ;	main.c:176: buffer_add();         //function to add buffer
                           1639 ;	genCall
   04A9 12 07 E5           1640 	lcall	_buffer_add
                           1641 ;	main.c:177: break;
   04AC 02 02 BC           1642 	ljmp	00139$
                           1643 ;	main.c:179: case '-':
   04AF                    1644 00126$:
                           1645 ;	main.c:180: DEBUGPORT(6)
                           1646 ;	genCall
                           1647 ;	Peephole 182.b	used 16 bit load of dptr
   04AF 90 00 06           1648 	mov	dptr,#0x0006
   04B2 12 04 FF           1649 	lcall	_dataout
                           1650 ;	main.c:181: buffer_delete();      //if -' then delete buffer
                           1651 ;	genCall
   04B5 12 0A 4E           1652 	lcall	_buffer_delete
                           1653 ;	main.c:182: break;
   04B8 02 02 BC           1654 	ljmp	00139$
                           1655 ;	main.c:184: case '?':
   04BB                    1656 00127$:
                           1657 ;	main.c:185: DEBUGPORT(7)
                           1658 ;	genCall
                           1659 ;	Peephole 182.b	used 16 bit load of dptr
   04BB 90 00 07           1660 	mov	dptr,#0x0007
   04BE 12 04 FF           1661 	lcall	_dataout
                           1662 ;	main.c:186: heap_report();        //if '?' then provide a heap report
                           1663 ;	genCall
   04C1 12 0C 04           1664 	lcall	_heap_report
                           1665 ;	main.c:187: break;
   04C4 02 02 BC           1666 	ljmp	00139$
                           1667 ;	main.c:189: case '=':
   04C7                    1668 00128$:
                           1669 ;	main.c:190: DEBUGPORT(8)
                           1670 ;	genCall
                           1671 ;	Peephole 182.b	used 16 bit load of dptr
   04C7 90 00 08           1672 	mov	dptr,#0x0008
   04CA 12 04 FF           1673 	lcall	_dataout
                           1674 ;	main.c:191: buffer0_hex();     //if '=' then print hex values in buffer0
                           1675 ;	genCall
   04CD 12 10 1D           1676 	lcall	_buffer0_hex
                           1677 ;	main.c:192: break;
   04D0 02 02 BC           1678 	ljmp	00139$
                           1679 ;	main.c:194: case '@':
   04D3                    1680 00129$:
                           1681 ;	main.c:195: DEBUGPORT(9)
                           1682 ;	genCall
                           1683 ;	Peephole 182.b	used 16 bit load of dptr
   04D3 90 00 09           1684 	mov	dptr,#0x0009
   04D6 12 04 FF           1685 	lcall	_dataout
                           1686 ;	main.c:196: buffer_free();      //if '@' then free the memory allocated to the buffers
                           1687 ;	genCall
   04D9 12 11 15           1688 	lcall	_buffer_free
                           1689 ;	main.c:197: goto start;
   04DC 02 00 96           1690 	ljmp	00111$
                           1691 ;	main.c:200: default:
   04DF                    1692 00130$:
                           1693 ;	main.c:201: printf_tiny("No matching command characters\n\r");
                           1694 ;	genIpush
   04DF 74 81              1695 	mov	a,#__str_21
   04E1 C0 E0              1696 	push	acc
   04E3 74 28              1697 	mov	a,#(__str_21 >> 8)
   04E5 C0 E0              1698 	push	acc
                           1699 ;	genCall
   04E7 12 14 87           1700 	lcall	_printf_tiny
   04EA 15 81              1701 	dec	sp
   04EC 15 81              1702 	dec	sp
                           1703 ;	main.c:202: }
   04EE 02 02 BC           1704 	ljmp	00139$
                           1705 ;	Peephole 259.b	removed redundant label 00141$ and ret
                           1706 ;
                           1707 ;------------------------------------------------------------
                           1708 ;Allocation info for local variables in function 'init_hardware'
                           1709 ;------------------------------------------------------------
                           1710 ;------------------------------------------------------------
                           1711 ;	main.c:208: void init_hardware()
                           1712 ;	-----------------------------------------
                           1713 ;	 function init_hardware
                           1714 ;	-----------------------------------------
   04F1                    1715 _init_hardware:
                           1716 ;	main.c:210: TMOD=0x20; //use Timer 1, mode 2
                           1717 ;	genAssign
   04F1 75 89 20           1718 	mov	_TMOD,#0x20
                           1719 ;	main.c:211: TH1=0xFA; //4800 baud rate
                           1720 ;	genAssign
   04F4 75 8D FA           1721 	mov	_TH1,#0xFA
                           1722 ;	main.c:212: SCON=0x50;
                           1723 ;	genAssign
   04F7 75 98 50           1724 	mov	_SCON,#0x50
                           1725 ;	main.c:213: TR1=1;   //Start the Timer
                           1726 ;	genAssign
   04FA D2 8E              1727 	setb	_TR1
                           1728 ;	main.c:214: TI=1; //Set TI flag to 1
                           1729 ;	genAssign
   04FC D2 99              1730 	setb	_TI
                           1731 ;	Peephole 300	removed redundant label 00101$
   04FE 22                 1732 	ret
                           1733 ;------------------------------------------------------------
                           1734 ;Allocation info for local variables in function 'dataout'
                           1735 ;------------------------------------------------------------
                           1736 ;x                         Allocated with name '_dataout_x_1_1'
                           1737 ;------------------------------------------------------------
                           1738 ;	main.c:217: void dataout(int x)
                           1739 ;	-----------------------------------------
                           1740 ;	 function dataout
                           1741 ;	-----------------------------------------
   04FF                    1742 _dataout:
                           1743 ;	genReceive
   04FF AA 83              1744 	mov	r2,dph
   0501 E5 82              1745 	mov	a,dpl
   0503 90 0C 91           1746 	mov	dptr,#_dataout_x_1_1
   0506 F0                 1747 	movx	@dptr,a
   0507 A3                 1748 	inc	dptr
   0508 EA                 1749 	mov	a,r2
   0509 F0                 1750 	movx	@dptr,a
                           1751 ;	main.c:219: add= 0xFFFF;
                           1752 ;	genAssign
   050A 90 09 C4           1753 	mov	dptr,#_add
   050D 74 FF              1754 	mov	a,#0xFF
   050F F0                 1755 	movx	@dptr,a
   0510 A3                 1756 	inc	dptr
                           1757 ;	Peephole 101	removed redundant mov
   0511 F0                 1758 	movx	@dptr,a
                           1759 ;	main.c:220: *add = x;
                           1760 ;	genAssign
   0512 7A FF              1761 	mov	r2,#0xFF
   0514 7B FF              1762 	mov	r3,#0xFF
                           1763 ;	genAssign
   0516 90 0C 91           1764 	mov	dptr,#_dataout_x_1_1
   0519 E0                 1765 	movx	a,@dptr
   051A FC                 1766 	mov	r4,a
   051B A3                 1767 	inc	dptr
   051C E0                 1768 	movx	a,@dptr
   051D FD                 1769 	mov	r5,a
                           1770 ;	genPointerSet
                           1771 ;     genFarPointerSet
   051E 8A 82              1772 	mov	dpl,r2
   0520 8B 83              1773 	mov	dph,r3
   0522 EC                 1774 	mov	a,r4
   0523 F0                 1775 	movx	@dptr,a
   0524 A3                 1776 	inc	dptr
   0525 ED                 1777 	mov	a,r5
   0526 F0                 1778 	movx	@dptr,a
                           1779 ;	main.c:221: printf_tiny("Debugport executed\r\n");
                           1780 ;	genIpush
   0527 74 A2              1781 	mov	a,#__str_22
   0529 C0 E0              1782 	push	acc
   052B 74 28              1783 	mov	a,#(__str_22 >> 8)
   052D C0 E0              1784 	push	acc
                           1785 ;	genCall
   052F 12 14 87           1786 	lcall	_printf_tiny
   0532 15 81              1787 	dec	sp
   0534 15 81              1788 	dec	sp
                           1789 ;	Peephole 300	removed redundant label 00101$
   0536 22                 1790 	ret
                           1791 ;------------------------------------------------------------
                           1792 ;Allocation info for local variables in function 'atoi'
                           1793 ;------------------------------------------------------------
                           1794 ;a                         Allocated with name '_atoi_a_1_1'
                           1795 ;------------------------------------------------------------
                           1796 ;	main.c:224: int atoi(char *a)
                           1797 ;	-----------------------------------------
                           1798 ;	 function atoi
                           1799 ;	-----------------------------------------
   0537                    1800 _atoi:
                           1801 ;	genReceive
   0537 AA F0              1802 	mov	r2,b
   0539 AB 83              1803 	mov	r3,dph
   053B E5 82              1804 	mov	a,dpl
   053D 90 0C 93           1805 	mov	dptr,#_atoi_a_1_1
   0540 F0                 1806 	movx	@dptr,a
   0541 A3                 1807 	inc	dptr
   0542 EB                 1808 	mov	a,r3
   0543 F0                 1809 	movx	@dptr,a
   0544 A3                 1810 	inc	dptr
   0545 EA                 1811 	mov	a,r2
   0546 F0                 1812 	movx	@dptr,a
                           1813 ;	main.c:226: i=0;
                           1814 ;	genAssign
   0547 90 0C 71           1815 	mov	dptr,#_i
   054A E4                 1816 	clr	a
   054B F0                 1817 	movx	@dptr,a
   054C A3                 1818 	inc	dptr
   054D F0                 1819 	movx	@dptr,a
                           1820 ;	main.c:227: temp_result=0;
                           1821 ;	genAssign
   054E 90 09 FE           1822 	mov	dptr,#_temp_result
   0551 E4                 1823 	clr	a
   0552 F0                 1824 	movx	@dptr,a
   0553 A3                 1825 	inc	dptr
   0554 F0                 1826 	movx	@dptr,a
                           1827 ;	main.c:228: while(*(a+i)!='\0')
                           1828 ;	genAssign
   0555 90 0C 93           1829 	mov	dptr,#_atoi_a_1_1
   0558 E0                 1830 	movx	a,@dptr
   0559 FA                 1831 	mov	r2,a
   055A A3                 1832 	inc	dptr
   055B E0                 1833 	movx	a,@dptr
   055C FB                 1834 	mov	r3,a
   055D A3                 1835 	inc	dptr
   055E E0                 1836 	movx	a,@dptr
   055F FC                 1837 	mov	r4,a
   0560                    1838 00101$:
                           1839 ;	genAssign
   0560 90 0C 71           1840 	mov	dptr,#_i
   0563 E0                 1841 	movx	a,@dptr
   0564 FD                 1842 	mov	r5,a
   0565 A3                 1843 	inc	dptr
   0566 E0                 1844 	movx	a,@dptr
   0567 FE                 1845 	mov	r6,a
                           1846 ;	genPlus
                           1847 ;	Peephole 236.g	used r5 instead of ar5
   0568 ED                 1848 	mov	a,r5
                           1849 ;	Peephole 236.a	used r2 instead of ar2
   0569 2A                 1850 	add	a,r2
   056A FF                 1851 	mov	r7,a
                           1852 ;	Peephole 236.g	used r6 instead of ar6
   056B EE                 1853 	mov	a,r6
                           1854 ;	Peephole 236.b	used r3 instead of ar3
   056C 3B                 1855 	addc	a,r3
   056D F8                 1856 	mov	r0,a
   056E 8C 01              1857 	mov	ar1,r4
                           1858 ;	genPointerGet
                           1859 ;	genGenPointerGet
   0570 8F 82              1860 	mov	dpl,r7
   0572 88 83              1861 	mov	dph,r0
   0574 89 F0              1862 	mov	b,r1
   0576 12 22 5D           1863 	lcall	__gptrget
                           1864 ;	genCmpEq
                           1865 ;	gencjneshort
                           1866 ;	Peephole 112.b	changed ljmp to sjmp
   0579 FF                 1867 	mov	r7,a
                           1868 ;	Peephole 115.b	jump optimization
   057A 60 65              1869 	jz	00103$
                           1870 ;	Peephole 300	removed redundant label 00108$
                           1871 ;	main.c:230: temp_result = temp_result * 10 + ( *(a+i)- '0' );
                           1872 ;	genIpush
   057C C0 02              1873 	push	ar2
   057E C0 03              1874 	push	ar3
   0580 C0 04              1875 	push	ar4
                           1876 ;	genAssign
   0582 90 09 FE           1877 	mov	dptr,#_temp_result
   0585 E0                 1878 	movx	a,@dptr
   0586 F8                 1879 	mov	r0,a
   0587 A3                 1880 	inc	dptr
   0588 E0                 1881 	movx	a,@dptr
   0589 F9                 1882 	mov	r1,a
                           1883 ;	genAssign
   058A 90 0C B7           1884 	mov	dptr,#__mulint_PARM_2
   058D 74 0A              1885 	mov	a,#0x0A
   058F F0                 1886 	movx	@dptr,a
   0590 E4                 1887 	clr	a
   0591 A3                 1888 	inc	dptr
   0592 F0                 1889 	movx	@dptr,a
                           1890 ;	genCall
   0593 88 82              1891 	mov	dpl,r0
   0595 89 83              1892 	mov	dph,r1
   0597 C0 02              1893 	push	ar2
   0599 C0 03              1894 	push	ar3
   059B C0 04              1895 	push	ar4
   059D C0 05              1896 	push	ar5
   059F C0 06              1897 	push	ar6
   05A1 C0 07              1898 	push	ar7
   05A3 12 15 8F           1899 	lcall	__mulint
   05A6 A8 82              1900 	mov	r0,dpl
   05A8 A9 83              1901 	mov	r1,dph
   05AA D0 07              1902 	pop	ar7
   05AC D0 06              1903 	pop	ar6
   05AE D0 05              1904 	pop	ar5
   05B0 D0 04              1905 	pop	ar4
   05B2 D0 03              1906 	pop	ar3
   05B4 D0 02              1907 	pop	ar2
                           1908 ;	genCast
   05B6 EF                 1909 	mov	a,r7
   05B7 33                 1910 	rlc	a
   05B8 95 E0              1911 	subb	a,acc
   05BA FA                 1912 	mov	r2,a
                           1913 ;	genMinus
   05BB EF                 1914 	mov	a,r7
   05BC 24 D0              1915 	add	a,#0xd0
   05BE FF                 1916 	mov	r7,a
   05BF EA                 1917 	mov	a,r2
   05C0 34 FF              1918 	addc	a,#0xff
   05C2 FA                 1919 	mov	r2,a
                           1920 ;	genPlus
   05C3 90 09 FE           1921 	mov	dptr,#_temp_result
                           1922 ;	Peephole 236.g	used r7 instead of ar7
   05C6 EF                 1923 	mov	a,r7
                           1924 ;	Peephole 236.a	used r0 instead of ar0
   05C7 28                 1925 	add	a,r0
   05C8 F0                 1926 	movx	@dptr,a
                           1927 ;	Peephole 236.g	used r2 instead of ar2
   05C9 EA                 1928 	mov	a,r2
                           1929 ;	Peephole 236.b	used r1 instead of ar1
   05CA 39                 1930 	addc	a,r1
   05CB A3                 1931 	inc	dptr
   05CC F0                 1932 	movx	@dptr,a
                           1933 ;	main.c:231: i++;
                           1934 ;	genPlus
   05CD 90 0C 71           1935 	mov	dptr,#_i
                           1936 ;     genPlusIncr
   05D0 74 01              1937 	mov	a,#0x01
                           1938 ;	Peephole 236.a	used r5 instead of ar5
   05D2 2D                 1939 	add	a,r5
   05D3 F0                 1940 	movx	@dptr,a
                           1941 ;	Peephole 181	changed mov to clr
   05D4 E4                 1942 	clr	a
                           1943 ;	Peephole 236.b	used r6 instead of ar6
   05D5 3E                 1944 	addc	a,r6
   05D6 A3                 1945 	inc	dptr
   05D7 F0                 1946 	movx	@dptr,a
                           1947 ;	genIpop
   05D8 D0 04              1948 	pop	ar4
   05DA D0 03              1949 	pop	ar3
   05DC D0 02              1950 	pop	ar2
   05DE 02 05 60           1951 	ljmp	00101$
   05E1                    1952 00103$:
                           1953 ;	main.c:233: return temp_result;
                           1954 ;	genAssign
   05E1 90 09 FE           1955 	mov	dptr,#_temp_result
   05E4 E0                 1956 	movx	a,@dptr
   05E5 FA                 1957 	mov	r2,a
   05E6 A3                 1958 	inc	dptr
   05E7 E0                 1959 	movx	a,@dptr
                           1960 ;	genRet
                           1961 ;	Peephole 234.b	loading dph directly from a(ccumulator), r3 not set
   05E8 8A 82              1962 	mov	dpl,r2
   05EA F5 83              1963 	mov	dph,a
                           1964 ;	Peephole 300	removed redundant label 00104$
   05EC 22                 1965 	ret
                           1966 ;------------------------------------------------------------
                           1967 ;Allocation info for local variables in function 'getstr'
                           1968 ;------------------------------------------------------------
                           1969 ;s                         Allocated with name '_getstr_s_1_1'
                           1970 ;c                         Allocated with name '_getstr_c_1_1'
                           1971 ;i                         Allocated with name '_getstr_i_1_1'
                           1972 ;------------------------------------------------------------
                           1973 ;	main.c:237: char * getstr()
                           1974 ;	-----------------------------------------
                           1975 ;	 function getstr
                           1976 ;	-----------------------------------------
   05ED                    1977 _getstr:
                           1978 ;	main.c:242: c = getchar();
                           1979 ;	genCall
   05ED 12 06 66           1980 	lcall	_getchar
   05F0 E5 82              1981 	mov	a,dpl
                           1982 ;	genAssign
   05F2 90 0C 96           1983 	mov	dptr,#_getstr_c_1_1
   05F5 F0                 1984 	movx	@dptr,a
                           1985 ;	main.c:243: while( c !='\r' && c !='\0') //get characters till null found
                           1986 ;	genAssign
   05F6 7A 00              1987 	mov	r2,#0x00
   05F8 7B 00              1988 	mov	r3,#0x00
   05FA                    1989 00102$:
                           1990 ;	genAssign
   05FA 90 0C 96           1991 	mov	dptr,#_getstr_c_1_1
   05FD E0                 1992 	movx	a,@dptr
   05FE FC                 1993 	mov	r4,a
                           1994 ;	genCmpEq
                           1995 ;	gencjneshort
   05FF BC 0D 02           1996 	cjne	r4,#0x0D,00111$
                           1997 ;	Peephole 112.b	changed ljmp to sjmp
   0602 80 29              1998 	sjmp	00104$
   0604                    1999 00111$:
                           2000 ;	genCmpEq
                           2001 ;	gencjneshort
   0604 BC 00 02           2002 	cjne	r4,#0x00,00112$
                           2003 ;	Peephole 112.b	changed ljmp to sjmp
   0607 80 24              2004 	sjmp	00104$
   0609                    2005 00112$:
                           2006 ;	main.c:245: data_get[i]=c;
                           2007 ;	genPlus
                           2008 ;	Peephole 236.g	used r2 instead of ar2
   0609 EA                 2009 	mov	a,r2
   060A 24 C6              2010 	add	a,#_data_get
   060C F5 82              2011 	mov	dpl,a
                           2012 ;	Peephole 236.g	used r3 instead of ar3
   060E EB                 2013 	mov	a,r3
   060F 34 09              2014 	addc	a,#(_data_get >> 8)
   0611 F5 83              2015 	mov	dph,a
                           2016 ;	genPointerSet
                           2017 ;     genFarPointerSet
   0613 EC                 2018 	mov	a,r4
   0614 F0                 2019 	movx	@dptr,a
                           2020 ;	main.c:246: i++;
                           2021 ;	genPlus
                           2022 ;     genPlusIncr
   0615 0A                 2023 	inc	r2
   0616 BA 00 01           2024 	cjne	r2,#0x00,00113$
   0619 0B                 2025 	inc	r3
   061A                    2026 00113$:
                           2027 ;	main.c:247: c = getchar();
                           2028 ;	genCall
   061A C0 02              2029 	push	ar2
   061C C0 03              2030 	push	ar3
   061E 12 06 66           2031 	lcall	_getchar
   0621 E5 82              2032 	mov	a,dpl
   0623 D0 03              2033 	pop	ar3
   0625 D0 02              2034 	pop	ar2
                           2035 ;	genAssign
   0627 90 0C 96           2036 	mov	dptr,#_getstr_c_1_1
   062A F0                 2037 	movx	@dptr,a
                           2038 ;	Peephole 112.b	changed ljmp to sjmp
   062B 80 CD              2039 	sjmp	00102$
   062D                    2040 00104$:
                           2041 ;	main.c:249: data_get[i]='\0';
                           2042 ;	genPlus
                           2043 ;	Peephole 236.g	used r2 instead of ar2
   062D EA                 2044 	mov	a,r2
   062E 24 C6              2045 	add	a,#_data_get
   0630 F5 82              2046 	mov	dpl,a
                           2047 ;	Peephole 236.g	used r3 instead of ar3
   0632 EB                 2048 	mov	a,r3
   0633 34 09              2049 	addc	a,#(_data_get >> 8)
   0635 F5 83              2050 	mov	dph,a
                           2051 ;	genPointerSet
                           2052 ;     genFarPointerSet
                           2053 ;	Peephole 181	changed mov to clr
   0637 E4                 2054 	clr	a
   0638 F0                 2055 	movx	@dptr,a
                           2056 ;	main.c:250: s=data_get;
                           2057 ;	main.c:251: *(s+i)='\0';
                           2058 ;	genPlus
                           2059 ;	Peephole 236.g	used r2 instead of ar2
   0639 EA                 2060 	mov	a,r2
   063A 24 C6              2061 	add	a,#_data_get
   063C FA                 2062 	mov	r2,a
                           2063 ;	Peephole 236.g	used r3 instead of ar3
   063D EB                 2064 	mov	a,r3
   063E 34 09              2065 	addc	a,#(_data_get >> 8)
   0640 FB                 2066 	mov	r3,a
   0641 7C 00              2067 	mov	r4,#0x00
                           2068 ;	genPointerSet
                           2069 ;	genGenPointerSet
   0643 8A 82              2070 	mov	dpl,r2
   0645 8B 83              2071 	mov	dph,r3
   0647 8C F0              2072 	mov	b,r4
                           2073 ;	Peephole 181	changed mov to clr
   0649 E4                 2074 	clr	a
   064A 12 14 6E           2075 	lcall	__gptrput
                           2076 ;	main.c:252: return s;
                           2077 ;	genRet
                           2078 ;	Peephole 182.a	used 16 bit load of DPTR
   064D 90 09 C6           2079 	mov	dptr,#_data_get
   0650 75 F0 00           2080 	mov	b,#0x00
                           2081 ;	Peephole 300	removed redundant label 00105$
   0653 22                 2082 	ret
                           2083 ;------------------------------------------------------------
                           2084 ;Allocation info for local variables in function 'putchar'
                           2085 ;------------------------------------------------------------
                           2086 ;c                         Allocated with name '_putchar_c_1_1'
                           2087 ;------------------------------------------------------------
                           2088 ;	main.c:256: void putchar (char c)
                           2089 ;	-----------------------------------------
                           2090 ;	 function putchar
                           2091 ;	-----------------------------------------
   0654                    2092 _putchar:
                           2093 ;	genReceive
   0654 E5 82              2094 	mov	a,dpl
   0656 90 0C 97           2095 	mov	dptr,#_putchar_c_1_1
   0659 F0                 2096 	movx	@dptr,a
                           2097 ;	main.c:258: while (TI == 0); // wait for TX ready, spin on TI
   065A                    2098 00101$:
                           2099 ;	genIfx
                           2100 ;	genIfxJump
                           2101 ;	Peephole 108.d	removed ljmp by inverse jump logic
   065A 30 99 FD           2102 	jnb	_TI,00101$
                           2103 ;	Peephole 300	removed redundant label 00108$
                           2104 ;	main.c:259: SBUF = c;  	// load serial port with transmit value
                           2105 ;	genAssign
   065D 90 0C 97           2106 	mov	dptr,#_putchar_c_1_1
   0660 E0                 2107 	movx	a,@dptr
   0661 F5 99              2108 	mov	_SBUF,a
                           2109 ;	main.c:260: TI = 0;  	// clear TI flag
                           2110 ;	genAssign
   0663 C2 99              2111 	clr	_TI
                           2112 ;	Peephole 300	removed redundant label 00104$
   0665 22                 2113 	ret
                           2114 ;------------------------------------------------------------
                           2115 ;Allocation info for local variables in function 'getchar'
                           2116 ;------------------------------------------------------------
                           2117 ;------------------------------------------------------------
                           2118 ;	main.c:264: char getchar ()
                           2119 ;	-----------------------------------------
                           2120 ;	 function getchar
                           2121 ;	-----------------------------------------
   0666                    2122 _getchar:
                           2123 ;	main.c:266: while (RI == 0); // wait for character to be received, spin on RI
   0666                    2124 00101$:
                           2125 ;	genIfx
                           2126 ;	genIfxJump
                           2127 ;	Peephole 108.d	removed ljmp by inverse jump logic
                           2128 ;	main.c:267: RI = 0;			// clear RI flag
                           2129 ;	genAssign
                           2130 ;	Peephole 250.a	using atomic test and clear
   0666 10 98 02           2131 	jbc	_RI,00108$
   0669 80 FB              2132 	sjmp	00101$
   066B                    2133 00108$:
                           2134 ;	main.c:268: return SBUF;  	// return character from SBUF
                           2135 ;	genAssign
   066B AA 99              2136 	mov	r2,_SBUF
                           2137 ;	genRet
   066D 8A 82              2138 	mov	dpl,r2
                           2139 ;	Peephole 300	removed redundant label 00104$
   066F 22                 2140 	ret
                           2141 ;------------------------------------------------------------
                           2142 ;Allocation info for local variables in function 'putstr'
                           2143 ;------------------------------------------------------------
                           2144 ;s                         Allocated with name '_putstr_s_1_1'
                           2145 ;i                         Allocated with name '_putstr_i_1_1'
                           2146 ;------------------------------------------------------------
                           2147 ;	main.c:272: void putstr (char *s)
                           2148 ;	-----------------------------------------
                           2149 ;	 function putstr
                           2150 ;	-----------------------------------------
   0670                    2151 _putstr:
                           2152 ;	genReceive
   0670 AA F0              2153 	mov	r2,b
   0672 AB 83              2154 	mov	r3,dph
   0674 E5 82              2155 	mov	a,dpl
   0676 90 0C 98           2156 	mov	dptr,#_putstr_s_1_1
   0679 F0                 2157 	movx	@dptr,a
   067A A3                 2158 	inc	dptr
   067B EB                 2159 	mov	a,r3
   067C F0                 2160 	movx	@dptr,a
   067D A3                 2161 	inc	dptr
   067E EA                 2162 	mov	a,r2
   067F F0                 2163 	movx	@dptr,a
                           2164 ;	main.c:275: while (*(s+i)!='\0') //output characters until NULL found
                           2165 ;	genAssign
   0680 90 0C 98           2166 	mov	dptr,#_putstr_s_1_1
   0683 E0                 2167 	movx	a,@dptr
   0684 FA                 2168 	mov	r2,a
   0685 A3                 2169 	inc	dptr
   0686 E0                 2170 	movx	a,@dptr
   0687 FB                 2171 	mov	r3,a
   0688 A3                 2172 	inc	dptr
   0689 E0                 2173 	movx	a,@dptr
   068A FC                 2174 	mov	r4,a
                           2175 ;	genAssign
   068B 7D 00              2176 	mov	r5,#0x00
   068D 7E 00              2177 	mov	r6,#0x00
   068F                    2178 00101$:
                           2179 ;	genPlus
                           2180 ;	Peephole 236.g	used r5 instead of ar5
   068F ED                 2181 	mov	a,r5
                           2182 ;	Peephole 236.a	used r2 instead of ar2
   0690 2A                 2183 	add	a,r2
   0691 FF                 2184 	mov	r7,a
                           2185 ;	Peephole 236.g	used r6 instead of ar6
   0692 EE                 2186 	mov	a,r6
                           2187 ;	Peephole 236.b	used r3 instead of ar3
   0693 3B                 2188 	addc	a,r3
   0694 F8                 2189 	mov	r0,a
   0695 8C 01              2190 	mov	ar1,r4
                           2191 ;	genPointerGet
                           2192 ;	genGenPointerGet
   0697 8F 82              2193 	mov	dpl,r7
   0699 88 83              2194 	mov	dph,r0
   069B 89 F0              2195 	mov	b,r1
   069D 12 22 5D           2196 	lcall	__gptrget
                           2197 ;	genCmpEq
                           2198 ;	gencjneshort
                           2199 ;	Peephole 112.b	changed ljmp to sjmp
   06A0 FF                 2200 	mov	r7,a
                           2201 ;	Peephole 115.b	jump optimization
   06A1 60 20              2202 	jz	00104$
                           2203 ;	Peephole 300	removed redundant label 00109$
                           2204 ;	main.c:277: putchar(*(s+i));
                           2205 ;	genCall
   06A3 8F 82              2206 	mov	dpl,r7
   06A5 C0 02              2207 	push	ar2
   06A7 C0 03              2208 	push	ar3
   06A9 C0 04              2209 	push	ar4
   06AB C0 05              2210 	push	ar5
   06AD C0 06              2211 	push	ar6
   06AF 12 06 54           2212 	lcall	_putchar
   06B2 D0 06              2213 	pop	ar6
   06B4 D0 05              2214 	pop	ar5
   06B6 D0 04              2215 	pop	ar4
   06B8 D0 03              2216 	pop	ar3
   06BA D0 02              2217 	pop	ar2
                           2218 ;	main.c:278: i++;
                           2219 ;	genPlus
                           2220 ;     genPlusIncr
                           2221 ;	tail increment optimized (range 7)
   06BC 0D                 2222 	inc	r5
   06BD BD 00 CF           2223 	cjne	r5,#0x00,00101$
   06C0 0E                 2224 	inc	r6
                           2225 ;	Peephole 112.b	changed ljmp to sjmp
   06C1 80 CC              2226 	sjmp	00101$
   06C3                    2227 00104$:
   06C3 22                 2228 	ret
                           2229 ;------------------------------------------------------------
                           2230 ;Allocation info for local variables in function 'buffer_create'
                           2231 ;------------------------------------------------------------
                           2232 ;size                      Allocated with name '_buffer_create_size_1_1'
                           2233 ;temp_buffer               Allocated with name '_buffer_create_temp_buffer_1_1'
                           2234 ;------------------------------------------------------------
                           2235 ;	main.c:284: char * buffer_create(unsigned int size)
                           2236 ;	-----------------------------------------
                           2237 ;	 function buffer_create
                           2238 ;	-----------------------------------------
   06C4                    2239 _buffer_create:
                           2240 ;	genReceive
   06C4 AA 83              2241 	mov	r2,dph
   06C6 E5 82              2242 	mov	a,dpl
   06C8 90 0C 9B           2243 	mov	dptr,#_buffer_create_size_1_1
   06CB F0                 2244 	movx	@dptr,a
   06CC A3                 2245 	inc	dptr
   06CD EA                 2246 	mov	a,r2
   06CE F0                 2247 	movx	@dptr,a
                           2248 ;	main.c:286: char * temp_buffer = malloc((size)); //allocation of new buffer
                           2249 ;	genAssign
   06CF 90 0C 9B           2250 	mov	dptr,#_buffer_create_size_1_1
   06D2 E0                 2251 	movx	a,@dptr
   06D3 FA                 2252 	mov	r2,a
   06D4 A3                 2253 	inc	dptr
   06D5 E0                 2254 	movx	a,@dptr
   06D6 FB                 2255 	mov	r3,a
                           2256 ;	genCall
   06D7 8A 82              2257 	mov	dpl,r2
   06D9 8B 83              2258 	mov	dph,r3
   06DB 12 13 32           2259 	lcall	_malloc
   06DE AA 82              2260 	mov	r2,dpl
   06E0 AB 83              2261 	mov	r3,dph
                           2262 ;	genCast
   06E2 7C 00              2263 	mov	r4,#0x0
                           2264 ;	main.c:287: printf_tiny("Buffer created\n\r");
                           2265 ;	genIpush
   06E4 C0 02              2266 	push	ar2
   06E6 C0 03              2267 	push	ar3
   06E8 C0 04              2268 	push	ar4
   06EA 74 B7              2269 	mov	a,#__str_23
   06EC C0 E0              2270 	push	acc
   06EE 74 28              2271 	mov	a,#(__str_23 >> 8)
   06F0 C0 E0              2272 	push	acc
                           2273 ;	genCall
   06F2 12 14 87           2274 	lcall	_printf_tiny
   06F5 15 81              2275 	dec	sp
   06F7 15 81              2276 	dec	sp
   06F9 D0 04              2277 	pop	ar4
   06FB D0 03              2278 	pop	ar3
   06FD D0 02              2279 	pop	ar2
                           2280 ;	main.c:288: num_buffers++;
                           2281 ;	genAssign
   06FF 90 09 FC           2282 	mov	dptr,#_num_buffers
   0702 E0                 2283 	movx	a,@dptr
   0703 FD                 2284 	mov	r5,a
   0704 A3                 2285 	inc	dptr
   0705 E0                 2286 	movx	a,@dptr
   0706 FE                 2287 	mov	r6,a
                           2288 ;	genPlus
   0707 90 09 FC           2289 	mov	dptr,#_num_buffers
                           2290 ;     genPlusIncr
   070A 74 01              2291 	mov	a,#0x01
                           2292 ;	Peephole 236.a	used r5 instead of ar5
   070C 2D                 2293 	add	a,r5
   070D F0                 2294 	movx	@dptr,a
                           2295 ;	Peephole 181	changed mov to clr
   070E E4                 2296 	clr	a
                           2297 ;	Peephole 236.b	used r6 instead of ar6
   070F 3E                 2298 	addc	a,r6
   0710 A3                 2299 	inc	dptr
   0711 F0                 2300 	movx	@dptr,a
                           2301 ;	main.c:289: return temp_buffer;
                           2302 ;	genRet
   0712 8A 82              2303 	mov	dpl,r2
   0714 8B 83              2304 	mov	dph,r3
   0716 8C F0              2305 	mov	b,r4
                           2306 ;	Peephole 300	removed redundant label 00101$
   0718 22                 2307 	ret
                           2308 ;------------------------------------------------------------
                           2309 ;Allocation info for local variables in function 'buffer_shift'
                           2310 ;------------------------------------------------------------
                           2311 ;buffer_result             Allocated with name '_buffer_shift_buffer_result_1_1'
                           2312 ;start                     Allocated with name '_buffer_shift_start_1_1'
                           2313 ;------------------------------------------------------------
                           2314 ;	main.c:293: void buffer_shift(unsigned int buffer_result)
                           2315 ;	-----------------------------------------
                           2316 ;	 function buffer_shift
                           2317 ;	-----------------------------------------
   0719                    2318 _buffer_shift:
                           2319 ;	genReceive
   0719 AA 83              2320 	mov	r2,dph
   071B E5 82              2321 	mov	a,dpl
   071D 90 0C 9D           2322 	mov	dptr,#_buffer_shift_buffer_result_1_1
   0720 F0                 2323 	movx	@dptr,a
   0721 A3                 2324 	inc	dptr
   0722 EA                 2325 	mov	a,r2
   0723 F0                 2326 	movx	@dptr,a
                           2327 ;	main.c:295: unsigned int start= buffer_result;
                           2328 ;	genAssign
   0724 90 0C 9D           2329 	mov	dptr,#_buffer_shift_buffer_result_1_1
   0727 E0                 2330 	movx	a,@dptr
   0728 FA                 2331 	mov	r2,a
   0729 A3                 2332 	inc	dptr
   072A E0                 2333 	movx	a,@dptr
   072B FB                 2334 	mov	r3,a
                           2335 ;	main.c:296: while(start < (num_buffers-1)) //Keep deleting a buffer till maximum number of buffers present
                           2336 ;	genAssign
   072C                    2337 00101$:
                           2338 ;	genAssign
   072C 90 09 FC           2339 	mov	dptr,#_num_buffers
   072F E0                 2340 	movx	a,@dptr
   0730 FC                 2341 	mov	r4,a
   0731 A3                 2342 	inc	dptr
   0732 E0                 2343 	movx	a,@dptr
   0733 FD                 2344 	mov	r5,a
                           2345 ;	genMinus
                           2346 ;	genMinusDec
   0734 1C                 2347 	dec	r4
   0735 BC FF 01           2348 	cjne	r4,#0xff,00109$
   0738 1D                 2349 	dec	r5
   0739                    2350 00109$:
                           2351 ;	genCmpLt
                           2352 ;	genCmp
   0739 C3                 2353 	clr	c
   073A EA                 2354 	mov	a,r2
   073B 9C                 2355 	subb	a,r4
   073C EB                 2356 	mov	a,r3
   073D 9D                 2357 	subb	a,r5
                           2358 ;	genIfxJump
   073E 40 03              2359 	jc	00110$
   0740 02 07 C0           2360 	ljmp	00103$
   0743                    2361 00110$:
                           2362 ;	main.c:298: buffer_array[start]=buffer_array[start+1];
                           2363 ;	genAssign
   0743 90 0C B7           2364 	mov	dptr,#__mulint_PARM_2
   0746 74 03              2365 	mov	a,#0x03
   0748 F0                 2366 	movx	@dptr,a
   0749 E4                 2367 	clr	a
   074A A3                 2368 	inc	dptr
   074B F0                 2369 	movx	@dptr,a
                           2370 ;	genCall
   074C 8A 82              2371 	mov	dpl,r2
   074E 8B 83              2372 	mov	dph,r3
   0750 C0 02              2373 	push	ar2
   0752 C0 03              2374 	push	ar3
   0754 12 15 8F           2375 	lcall	__mulint
   0757 AC 82              2376 	mov	r4,dpl
   0759 AD 83              2377 	mov	r5,dph
   075B D0 03              2378 	pop	ar3
   075D D0 02              2379 	pop	ar2
                           2380 ;	genPlus
                           2381 ;	Peephole 236.g	used r4 instead of ar4
   075F EC                 2382 	mov	a,r4
   0760 24 00              2383 	add	a,#_buffer_array
   0762 FC                 2384 	mov	r4,a
                           2385 ;	Peephole 236.g	used r5 instead of ar5
   0763 ED                 2386 	mov	a,r5
   0764 34 0A              2387 	addc	a,#(_buffer_array >> 8)
   0766 FD                 2388 	mov	r5,a
                           2389 ;	genCast
   0767 8A 06              2390 	mov	ar6,r2
                           2391 ;	genPlus
                           2392 ;     genPlusIncr
   0769 0E                 2393 	inc	r6
                           2394 ;	genMult
                           2395 ;	genMultOneByte
   076A EE                 2396 	mov	a,r6
   076B 75 F0 03           2397 	mov	b,#0x03
   076E A4                 2398 	mul	ab
                           2399 ;	genPlus
   076F 24 00              2400 	add	a,#_buffer_array
   0771 F5 82              2401 	mov	dpl,a
   0773 74 0A              2402 	mov	a,#(_buffer_array >> 8)
   0775 35 F0              2403 	addc	a,b
   0777 F5 83              2404 	mov	dph,a
                           2405 ;	genPointerGet
                           2406 ;	genFarPointerGet
   0779 E0                 2407 	movx	a,@dptr
   077A FF                 2408 	mov	r7,a
   077B A3                 2409 	inc	dptr
   077C E0                 2410 	movx	a,@dptr
   077D F8                 2411 	mov	r0,a
   077E A3                 2412 	inc	dptr
   077F E0                 2413 	movx	a,@dptr
   0780 F9                 2414 	mov	r1,a
                           2415 ;	genPointerSet
                           2416 ;     genFarPointerSet
   0781 8C 82              2417 	mov	dpl,r4
   0783 8D 83              2418 	mov	dph,r5
   0785 EF                 2419 	mov	a,r7
   0786 F0                 2420 	movx	@dptr,a
   0787 A3                 2421 	inc	dptr
   0788 E8                 2422 	mov	a,r0
   0789 F0                 2423 	movx	@dptr,a
   078A A3                 2424 	inc	dptr
   078B E9                 2425 	mov	a,r1
   078C F0                 2426 	movx	@dptr,a
                           2427 ;	main.c:299: buffer_size[start]=buffer_size[start+1];
                           2428 ;	genLeftShift
                           2429 ;	genLeftShiftLiteral
                           2430 ;	genlshTwo
   078D 8A 04              2431 	mov	ar4,r2
   078F EB                 2432 	mov	a,r3
   0790 CC                 2433 	xch	a,r4
   0791 25 E0              2434 	add	a,acc
   0793 CC                 2435 	xch	a,r4
   0794 33                 2436 	rlc	a
   0795 FD                 2437 	mov	r5,a
                           2438 ;	genPlus
                           2439 ;	Peephole 236.g	used r4 instead of ar4
   0796 EC                 2440 	mov	a,r4
   0797 24 77              2441 	add	a,#_buffer_size
   0799 FC                 2442 	mov	r4,a
                           2443 ;	Peephole 236.g	used r5 instead of ar5
   079A ED                 2444 	mov	a,r5
   079B 34 0B              2445 	addc	a,#(_buffer_size >> 8)
   079D FD                 2446 	mov	r5,a
                           2447 ;	genLeftShift
                           2448 ;	genLeftShiftLiteral
                           2449 ;	genlshOne
   079E EE                 2450 	mov	a,r6
                           2451 ;	Peephole 254	optimized left shift
   079F 2E                 2452 	add	a,r6
                           2453 ;	genPlus
   07A0 FE                 2454 	mov	r6,a
                           2455 ;	Peephole 177.b	removed redundant mov
   07A1 24 77              2456 	add	a,#_buffer_size
   07A3 F5 82              2457 	mov	dpl,a
                           2458 ;	Peephole 181	changed mov to clr
   07A5 E4                 2459 	clr	a
   07A6 34 0B              2460 	addc	a,#(_buffer_size >> 8)
   07A8 F5 83              2461 	mov	dph,a
                           2462 ;	genPointerGet
                           2463 ;	genFarPointerGet
   07AA E0                 2464 	movx	a,@dptr
   07AB FE                 2465 	mov	r6,a
   07AC A3                 2466 	inc	dptr
   07AD E0                 2467 	movx	a,@dptr
   07AE FF                 2468 	mov	r7,a
                           2469 ;	genPointerSet
                           2470 ;     genFarPointerSet
   07AF 8C 82              2471 	mov	dpl,r4
   07B1 8D 83              2472 	mov	dph,r5
   07B3 EE                 2473 	mov	a,r6
   07B4 F0                 2474 	movx	@dptr,a
   07B5 A3                 2475 	inc	dptr
   07B6 EF                 2476 	mov	a,r7
   07B7 F0                 2477 	movx	@dptr,a
                           2478 ;	main.c:300: start++;
                           2479 ;	genPlus
                           2480 ;     genPlusIncr
   07B8 0A                 2481 	inc	r2
   07B9 BA 00 01           2482 	cjne	r2,#0x00,00111$
   07BC 0B                 2483 	inc	r3
   07BD                    2484 00111$:
   07BD 02 07 2C           2485 	ljmp	00101$
   07C0                    2486 00103$:
                           2487 ;	main.c:302: printf_tiny("Buffer shifted\n\r");
                           2488 ;	genIpush
   07C0 74 C8              2489 	mov	a,#__str_24
   07C2 C0 E0              2490 	push	acc
   07C4 74 28              2491 	mov	a,#(__str_24 >> 8)
   07C6 C0 E0              2492 	push	acc
                           2493 ;	genCall
   07C8 12 14 87           2494 	lcall	_printf_tiny
   07CB 15 81              2495 	dec	sp
   07CD 15 81              2496 	dec	sp
                           2497 ;	main.c:303: num_buffers--;
                           2498 ;	genAssign
   07CF 90 09 FC           2499 	mov	dptr,#_num_buffers
   07D2 E0                 2500 	movx	a,@dptr
   07D3 FA                 2501 	mov	r2,a
   07D4 A3                 2502 	inc	dptr
   07D5 E0                 2503 	movx	a,@dptr
   07D6 FB                 2504 	mov	r3,a
                           2505 ;	genMinus
                           2506 ;	genMinusDec
   07D7 1A                 2507 	dec	r2
   07D8 BA FF 01           2508 	cjne	r2,#0xff,00112$
   07DB 1B                 2509 	dec	r3
   07DC                    2510 00112$:
                           2511 ;	genAssign
   07DC 90 09 FC           2512 	mov	dptr,#_num_buffers
   07DF EA                 2513 	mov	a,r2
   07E0 F0                 2514 	movx	@dptr,a
   07E1 A3                 2515 	inc	dptr
   07E2 EB                 2516 	mov	a,r3
   07E3 F0                 2517 	movx	@dptr,a
                           2518 ;	Peephole 300	removed redundant label 00104$
   07E4 22                 2519 	ret
                           2520 ;------------------------------------------------------------
                           2521 ;Allocation info for local variables in function 'buffer_add'
                           2522 ;------------------------------------------------------------
                           2523 ;------------------------------------------------------------
                           2524 ;	main.c:307: void buffer_add()
                           2525 ;	-----------------------------------------
                           2526 ;	 function buffer_add
                           2527 ;	-----------------------------------------
   07E5                    2528 _buffer_add:
                           2529 ;	main.c:314: back:    printf_tiny("Please enter a new buffer size between 20 and 400\n\r");
   07E5                    2530 00101$:
                           2531 ;	genIpush
   07E5 74 D9              2532 	mov	a,#__str_25
   07E7 C0 E0              2533 	push	acc
   07E9 74 28              2534 	mov	a,#(__str_25 >> 8)
   07EB C0 E0              2535 	push	acc
                           2536 ;	genCall
   07ED 12 14 87           2537 	lcall	_printf_tiny
   07F0 15 81              2538 	dec	sp
   07F2 15 81              2539 	dec	sp
                           2540 ;	main.c:315: size1= getstr(); //obtain the new buffer size
                           2541 ;	genCall
   07F4 12 05 ED           2542 	lcall	_getstr
   07F7 AA 82              2543 	mov	r2,dpl
   07F9 AB 83              2544 	mov	r3,dph
   07FB AC F0              2545 	mov	r4,b
                           2546 ;	genAssign
   07FD 90 0C 88           2547 	mov	dptr,#_size1
   0800 EA                 2548 	mov	a,r2
   0801 F0                 2549 	movx	@dptr,a
   0802 A3                 2550 	inc	dptr
   0803 EB                 2551 	mov	a,r3
   0804 F0                 2552 	movx	@dptr,a
   0805 A3                 2553 	inc	dptr
   0806 EC                 2554 	mov	a,r4
   0807 F0                 2555 	movx	@dptr,a
                           2556 ;	main.c:316: printf_tiny("The buffer size you entered is: ");
                           2557 ;	genIpush
   0808 74 0D              2558 	mov	a,#__str_26
   080A C0 E0              2559 	push	acc
   080C 74 29              2560 	mov	a,#(__str_26 >> 8)
   080E C0 E0              2561 	push	acc
                           2562 ;	genCall
   0810 12 14 87           2563 	lcall	_printf_tiny
   0813 15 81              2564 	dec	sp
   0815 15 81              2565 	dec	sp
                           2566 ;	main.c:317: putstr(size1);
                           2567 ;	genAssign
   0817 90 0C 88           2568 	mov	dptr,#_size1
   081A E0                 2569 	movx	a,@dptr
   081B FA                 2570 	mov	r2,a
   081C A3                 2571 	inc	dptr
   081D E0                 2572 	movx	a,@dptr
   081E FB                 2573 	mov	r3,a
   081F A3                 2574 	inc	dptr
   0820 E0                 2575 	movx	a,@dptr
   0821 FC                 2576 	mov	r4,a
                           2577 ;	genCall
   0822 8A 82              2578 	mov	dpl,r2
   0824 8B 83              2579 	mov	dph,r3
   0826 8C F0              2580 	mov	b,r4
   0828 12 06 70           2581 	lcall	_putstr
                           2582 ;	main.c:318: printf_tiny("\r\n");
                           2583 ;	genIpush
   082B 74 4E              2584 	mov	a,#__str_2
   082D C0 E0              2585 	push	acc
   082F 74 25              2586 	mov	a,#(__str_2 >> 8)
   0831 C0 E0              2587 	push	acc
                           2588 ;	genCall
   0833 12 14 87           2589 	lcall	_printf_tiny
   0836 15 81              2590 	dec	sp
   0838 15 81              2591 	dec	sp
                           2592 ;	main.c:319: i=0;
                           2593 ;	genAssign
   083A 90 0C 71           2594 	mov	dptr,#_i
   083D E4                 2595 	clr	a
   083E F0                 2596 	movx	@dptr,a
   083F A3                 2597 	inc	dptr
   0840 F0                 2598 	movx	@dptr,a
                           2599 ;	main.c:320: new_result=0;
                           2600 ;	genAssign
   0841 90 0C 79           2601 	mov	dptr,#_new_result
   0844 E4                 2602 	clr	a
   0845 F0                 2603 	movx	@dptr,a
   0846 A3                 2604 	inc	dptr
   0847 F0                 2605 	movx	@dptr,a
                           2606 ;	main.c:321: while(*(size1+i)!='\0') //Check if the size is a number
   0848                    2607 00106$:
                           2608 ;	genAssign
   0848 90 0C 71           2609 	mov	dptr,#_i
   084B E0                 2610 	movx	a,@dptr
   084C FA                 2611 	mov	r2,a
   084D A3                 2612 	inc	dptr
   084E E0                 2613 	movx	a,@dptr
   084F FB                 2614 	mov	r3,a
                           2615 ;	genAssign
   0850 90 0C 88           2616 	mov	dptr,#_size1
   0853 E0                 2617 	movx	a,@dptr
   0854 FC                 2618 	mov	r4,a
   0855 A3                 2619 	inc	dptr
   0856 E0                 2620 	movx	a,@dptr
   0857 FD                 2621 	mov	r5,a
   0858 A3                 2622 	inc	dptr
   0859 E0                 2623 	movx	a,@dptr
   085A FE                 2624 	mov	r6,a
                           2625 ;	genPlus
                           2626 ;	Peephole 236.g	used r2 instead of ar2
   085B EA                 2627 	mov	a,r2
                           2628 ;	Peephole 236.a	used r4 instead of ar4
   085C 2C                 2629 	add	a,r4
   085D FF                 2630 	mov	r7,a
                           2631 ;	Peephole 236.g	used r3 instead of ar3
   085E EB                 2632 	mov	a,r3
                           2633 ;	Peephole 236.b	used r5 instead of ar5
   085F 3D                 2634 	addc	a,r5
   0860 F8                 2635 	mov	r0,a
   0861 8E 01              2636 	mov	ar1,r6
                           2637 ;	genPointerGet
                           2638 ;	genGenPointerGet
   0863 8F 82              2639 	mov	dpl,r7
   0865 88 83              2640 	mov	dph,r0
   0867 89 F0              2641 	mov	b,r1
   0869 12 22 5D           2642 	lcall	__gptrget
                           2643 ;	genCmpEq
                           2644 ;	gencjneshort
                           2645 ;	Peephole 112.b	changed ljmp to sjmp
   086C FF                 2646 	mov	r7,a
                           2647 ;	Peephole 115.b	jump optimization
   086D 60 32              2648 	jz	00108$
                           2649 ;	Peephole 300	removed redundant label 00129$
                           2650 ;	main.c:323: if(*(size1+i)>= '0' && *(size1+i)<='9')
                           2651 ;	genCmpLt
                           2652 ;	genCmp
   086F C3                 2653 	clr	c
   0870 EF                 2654 	mov	a,r7
   0871 64 80              2655 	xrl	a,#0x80
   0873 94 B0              2656 	subb	a,#0xb0
                           2657 ;	genIfxJump
                           2658 ;	Peephole 112.b	changed ljmp to sjmp
                           2659 ;	Peephole 160.a	removed sjmp by inverse jump logic
                           2660 ;	genCmpGt
                           2661 ;	genCmp
   0875 40 18              2662 	jc	00103$
                           2663 ;	Peephole 300	removed redundant label 00130$
                           2664 ;	Peephole 256.a	removed redundant clr c
                           2665 ;	Peephole 159	avoided xrl during execution
   0877 74 B9              2666 	mov	a,#(0x39 ^ 0x80)
   0879 8F F0              2667 	mov	b,r7
   087B 63 F0 80           2668 	xrl	b,#0x80
   087E 95 F0              2669 	subb	a,b
                           2670 ;	genIfxJump
                           2671 ;	Peephole 112.b	changed ljmp to sjmp
                           2672 ;	Peephole 160.a	removed sjmp by inverse jump logic
   0880 40 0D              2673 	jc	00103$
                           2674 ;	Peephole 300	removed redundant label 00131$
                           2675 ;	main.c:325: i++;
                           2676 ;	genPlus
   0882 90 0C 71           2677 	mov	dptr,#_i
                           2678 ;     genPlusIncr
   0885 74 01              2679 	mov	a,#0x01
                           2680 ;	Peephole 236.a	used r2 instead of ar2
   0887 2A                 2681 	add	a,r2
   0888 F0                 2682 	movx	@dptr,a
                           2683 ;	Peephole 181	changed mov to clr
   0889 E4                 2684 	clr	a
                           2685 ;	Peephole 236.b	used r3 instead of ar3
   088A 3B                 2686 	addc	a,r3
   088B A3                 2687 	inc	dptr
   088C F0                 2688 	movx	@dptr,a
                           2689 ;	main.c:326: continue;
                           2690 ;	Peephole 112.b	changed ljmp to sjmp
   088D 80 B9              2691 	sjmp	00106$
   088F                    2692 00103$:
                           2693 ;	main.c:331: printf_tiny("Please enter a number\r\n");
                           2694 ;	genIpush
   088F 74 51              2695 	mov	a,#__str_3
   0891 C0 E0              2696 	push	acc
   0893 74 25              2697 	mov	a,#(__str_3 >> 8)
   0895 C0 E0              2698 	push	acc
                           2699 ;	genCall
   0897 12 14 87           2700 	lcall	_printf_tiny
   089A 15 81              2701 	dec	sp
   089C 15 81              2702 	dec	sp
                           2703 ;	main.c:332: goto back;
   089E 02 07 E5           2704 	ljmp	00101$
   08A1                    2705 00108$:
                           2706 ;	main.c:335: i=0;
                           2707 ;	genAssign
   08A1 90 0C 71           2708 	mov	dptr,#_i
   08A4 E4                 2709 	clr	a
   08A5 F0                 2710 	movx	@dptr,a
   08A6 A3                 2711 	inc	dptr
   08A7 F0                 2712 	movx	@dptr,a
                           2713 ;	main.c:336: new_result=atoi(size1); //Convert ascii size to an integer
                           2714 ;	genCall
   08A8 8C 82              2715 	mov	dpl,r4
   08AA 8D 83              2716 	mov	dph,r5
   08AC 8E F0              2717 	mov	b,r6
   08AE 12 05 37           2718 	lcall	_atoi
   08B1 AA 82              2719 	mov	r2,dpl
   08B3 AB 83              2720 	mov	r3,dph
                           2721 ;	genAssign
   08B5 90 0C 79           2722 	mov	dptr,#_new_result
   08B8 EA                 2723 	mov	a,r2
   08B9 F0                 2724 	movx	@dptr,a
   08BA A3                 2725 	inc	dptr
   08BB EB                 2726 	mov	a,r3
   08BC F0                 2727 	movx	@dptr,a
                           2728 ;	main.c:337: printf_tiny("The buffer size integer value is %d\r\n",new_result);
                           2729 ;	genIpush
   08BD C0 02              2730 	push	ar2
   08BF C0 03              2731 	push	ar3
                           2732 ;	genIpush
   08C1 74 69              2733 	mov	a,#__str_4
   08C3 C0 E0              2734 	push	acc
   08C5 74 25              2735 	mov	a,#(__str_4 >> 8)
   08C7 C0 E0              2736 	push	acc
                           2737 ;	genCall
   08C9 12 14 87           2738 	lcall	_printf_tiny
   08CC E5 81              2739 	mov	a,sp
   08CE 24 FC              2740 	add	a,#0xfc
   08D0 F5 81              2741 	mov	sp,a
                           2742 ;	main.c:338: }while(new_result<20 || new_result>400); //Check if the size is between 20 and 400
                           2743 ;	genAssign
   08D2 90 0C 79           2744 	mov	dptr,#_new_result
   08D5 E0                 2745 	movx	a,@dptr
   08D6 FA                 2746 	mov	r2,a
   08D7 A3                 2747 	inc	dptr
   08D8 E0                 2748 	movx	a,@dptr
   08D9 FB                 2749 	mov	r3,a
                           2750 ;	genCmpLt
                           2751 ;	genCmp
   08DA C3                 2752 	clr	c
   08DB EA                 2753 	mov	a,r2
   08DC 94 14              2754 	subb	a,#0x14
   08DE EB                 2755 	mov	a,r3
   08DF 94 00              2756 	subb	a,#0x00
                           2757 ;	genIfxJump
   08E1 50 03              2758 	jnc	00132$
   08E3 02 07 E5           2759 	ljmp	00101$
   08E6                    2760 00132$:
                           2761 ;	genCmpGt
                           2762 ;	genCmp
   08E6 C3                 2763 	clr	c
   08E7 74 90              2764 	mov	a,#0x90
   08E9 9A                 2765 	subb	a,r2
   08EA 74 01              2766 	mov	a,#0x01
   08EC 9B                 2767 	subb	a,r3
                           2768 ;	genIfxJump
   08ED 50 03              2769 	jnc	00133$
   08EF 02 07 E5           2770 	ljmp	00101$
   08F2                    2771 00133$:
                           2772 ;	main.c:340: buffer_array[buffer_index]=buffer_create(new_result);//Create a new buffer
                           2773 ;	genAssign
   08F2 90 09 F8           2774 	mov	dptr,#_buffer_index
   08F5 E0                 2775 	movx	a,@dptr
   08F6 FC                 2776 	mov	r4,a
   08F7 A3                 2777 	inc	dptr
   08F8 E0                 2778 	movx	a,@dptr
   08F9 FD                 2779 	mov	r5,a
                           2780 ;	genAssign
   08FA 90 0C B7           2781 	mov	dptr,#__mulint_PARM_2
   08FD 74 03              2782 	mov	a,#0x03
   08FF F0                 2783 	movx	@dptr,a
   0900 E4                 2784 	clr	a
   0901 A3                 2785 	inc	dptr
   0902 F0                 2786 	movx	@dptr,a
                           2787 ;	genCall
   0903 8C 82              2788 	mov	dpl,r4
   0905 8D 83              2789 	mov	dph,r5
   0907 C0 02              2790 	push	ar2
   0909 C0 03              2791 	push	ar3
   090B 12 15 8F           2792 	lcall	__mulint
   090E AC 82              2793 	mov	r4,dpl
   0910 AD 83              2794 	mov	r5,dph
   0912 D0 03              2795 	pop	ar3
   0914 D0 02              2796 	pop	ar2
                           2797 ;	genPlus
                           2798 ;	Peephole 236.g	used r4 instead of ar4
   0916 EC                 2799 	mov	a,r4
   0917 24 00              2800 	add	a,#_buffer_array
   0919 FC                 2801 	mov	r4,a
                           2802 ;	Peephole 236.g	used r5 instead of ar5
   091A ED                 2803 	mov	a,r5
   091B 34 0A              2804 	addc	a,#(_buffer_array >> 8)
   091D FD                 2805 	mov	r5,a
                           2806 ;	genCall
   091E 8A 82              2807 	mov	dpl,r2
   0920 8B 83              2808 	mov	dph,r3
   0922 C0 04              2809 	push	ar4
   0924 C0 05              2810 	push	ar5
   0926 12 06 C4           2811 	lcall	_buffer_create
   0929 AA 82              2812 	mov	r2,dpl
   092B AB 83              2813 	mov	r3,dph
   092D AE F0              2814 	mov	r6,b
   092F D0 05              2815 	pop	ar5
   0931 D0 04              2816 	pop	ar4
                           2817 ;	genPointerSet
                           2818 ;     genFarPointerSet
   0933 8C 82              2819 	mov	dpl,r4
   0935 8D 83              2820 	mov	dph,r5
   0937 EA                 2821 	mov	a,r2
   0938 F0                 2822 	movx	@dptr,a
   0939 A3                 2823 	inc	dptr
   093A EB                 2824 	mov	a,r3
   093B F0                 2825 	movx	@dptr,a
   093C A3                 2826 	inc	dptr
   093D EE                 2827 	mov	a,r6
   093E F0                 2828 	movx	@dptr,a
                           2829 ;	main.c:342: if ((buffer_array[buffer_index]) == 0)  //allocate new buffer
                           2830 ;	genAssign
   093F 90 09 F8           2831 	mov	dptr,#_buffer_index
   0942 E0                 2832 	movx	a,@dptr
   0943 FA                 2833 	mov	r2,a
   0944 A3                 2834 	inc	dptr
   0945 E0                 2835 	movx	a,@dptr
   0946 FB                 2836 	mov	r3,a
                           2837 ;	genAssign
   0947 90 0C B7           2838 	mov	dptr,#__mulint_PARM_2
   094A 74 03              2839 	mov	a,#0x03
   094C F0                 2840 	movx	@dptr,a
   094D E4                 2841 	clr	a
   094E A3                 2842 	inc	dptr
   094F F0                 2843 	movx	@dptr,a
                           2844 ;	genCall
   0950 8A 82              2845 	mov	dpl,r2
   0952 8B 83              2846 	mov	dph,r3
   0954 C0 02              2847 	push	ar2
   0956 C0 03              2848 	push	ar3
   0958 12 15 8F           2849 	lcall	__mulint
   095B AC 82              2850 	mov	r4,dpl
   095D AD 83              2851 	mov	r5,dph
   095F D0 03              2852 	pop	ar3
   0961 D0 02              2853 	pop	ar2
                           2854 ;	genPlus
                           2855 ;	Peephole 236.g	used r4 instead of ar4
   0963 EC                 2856 	mov	a,r4
   0964 24 00              2857 	add	a,#_buffer_array
   0966 F5 82              2858 	mov	dpl,a
                           2859 ;	Peephole 236.g	used r5 instead of ar5
   0968 ED                 2860 	mov	a,r5
   0969 34 0A              2861 	addc	a,#(_buffer_array >> 8)
   096B F5 83              2862 	mov	dph,a
                           2863 ;	genPointerGet
                           2864 ;	genFarPointerGet
   096D E0                 2865 	movx	a,@dptr
   096E FC                 2866 	mov	r4,a
   096F A3                 2867 	inc	dptr
   0970 E0                 2868 	movx	a,@dptr
   0971 FD                 2869 	mov	r5,a
   0972 A3                 2870 	inc	dptr
   0973 E0                 2871 	movx	a,@dptr
   0974 FE                 2872 	mov	r6,a
                           2873 ;	genIfx
   0975 EC                 2874 	mov	a,r4
   0976 4D                 2875 	orl	a,r5
   0977 4E                 2876 	orl	a,r6
                           2877 ;	genIfxJump
                           2878 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0978 70 4C              2879 	jnz	00116$
                           2880 ;	Peephole 300	removed redundant label 00134$
                           2881 ;	main.c:344: printf_tiny("malloc buffer%d failed, Please enter a smaller size\n\r",buffer_index);
                           2882 ;	genIpush
   097A C0 02              2883 	push	ar2
   097C C0 03              2884 	push	ar3
                           2885 ;	genIpush
   097E 74 2E              2886 	mov	a,#__str_27
   0980 C0 E0              2887 	push	acc
   0982 74 29              2888 	mov	a,#(__str_27 >> 8)
   0984 C0 E0              2889 	push	acc
                           2890 ;	genCall
   0986 12 14 87           2891 	lcall	_printf_tiny
   0989 E5 81              2892 	mov	a,sp
   098B 24 FC              2893 	add	a,#0xfc
   098D F5 81              2894 	mov	sp,a
                           2895 ;	main.c:345: free(buffer_array[buffer_index]);
                           2896 ;	genAssign
   098F 90 09 F8           2897 	mov	dptr,#_buffer_index
   0992 E0                 2898 	movx	a,@dptr
   0993 FA                 2899 	mov	r2,a
   0994 A3                 2900 	inc	dptr
   0995 E0                 2901 	movx	a,@dptr
   0996 FB                 2902 	mov	r3,a
                           2903 ;	genAssign
   0997 90 0C B7           2904 	mov	dptr,#__mulint_PARM_2
   099A 74 03              2905 	mov	a,#0x03
   099C F0                 2906 	movx	@dptr,a
   099D E4                 2907 	clr	a
   099E A3                 2908 	inc	dptr
   099F F0                 2909 	movx	@dptr,a
                           2910 ;	genCall
   09A0 8A 82              2911 	mov	dpl,r2
   09A2 8B 83              2912 	mov	dph,r3
   09A4 12 15 8F           2913 	lcall	__mulint
   09A7 AA 82              2914 	mov	r2,dpl
   09A9 AB 83              2915 	mov	r3,dph
                           2916 ;	genPlus
                           2917 ;	Peephole 236.g	used r2 instead of ar2
   09AB EA                 2918 	mov	a,r2
   09AC 24 00              2919 	add	a,#_buffer_array
   09AE F5 82              2920 	mov	dpl,a
                           2921 ;	Peephole 236.g	used r3 instead of ar3
   09B0 EB                 2922 	mov	a,r3
   09B1 34 0A              2923 	addc	a,#(_buffer_array >> 8)
   09B3 F5 83              2924 	mov	dph,a
                           2925 ;	genPointerGet
                           2926 ;	genFarPointerGet
   09B5 E0                 2927 	movx	a,@dptr
   09B6 FA                 2928 	mov	r2,a
   09B7 A3                 2929 	inc	dptr
   09B8 E0                 2930 	movx	a,@dptr
   09B9 FB                 2931 	mov	r3,a
   09BA A3                 2932 	inc	dptr
   09BB E0                 2933 	movx	a,@dptr
   09BC FC                 2934 	mov	r4,a
                           2935 ;	genCall
   09BD 8A 82              2936 	mov	dpl,r2
   09BF 8B 83              2937 	mov	dph,r3
   09C1 8C F0              2938 	mov	b,r4
   09C3 12 12 5E           2939 	lcall	_free
   09C6                    2940 00116$:
                           2941 ;	main.c:348: } while (buffer_array[buffer_index] == 0); //if fails then ask the user to give the size again
                           2942 ;	genAssign
   09C6 90 09 F8           2943 	mov	dptr,#_buffer_index
   09C9 E0                 2944 	movx	a,@dptr
   09CA FA                 2945 	mov	r2,a
   09CB A3                 2946 	inc	dptr
   09CC E0                 2947 	movx	a,@dptr
   09CD FB                 2948 	mov	r3,a
                           2949 ;	genAssign
   09CE 90 0C B7           2950 	mov	dptr,#__mulint_PARM_2
   09D1 74 03              2951 	mov	a,#0x03
   09D3 F0                 2952 	movx	@dptr,a
   09D4 E4                 2953 	clr	a
   09D5 A3                 2954 	inc	dptr
   09D6 F0                 2955 	movx	@dptr,a
                           2956 ;	genCall
   09D7 8A 82              2957 	mov	dpl,r2
   09D9 8B 83              2958 	mov	dph,r3
   09DB C0 02              2959 	push	ar2
   09DD C0 03              2960 	push	ar3
   09DF 12 15 8F           2961 	lcall	__mulint
   09E2 AC 82              2962 	mov	r4,dpl
   09E4 AD 83              2963 	mov	r5,dph
   09E6 D0 03              2964 	pop	ar3
   09E8 D0 02              2965 	pop	ar2
                           2966 ;	genPlus
                           2967 ;	Peephole 236.g	used r4 instead of ar4
   09EA EC                 2968 	mov	a,r4
   09EB 24 00              2969 	add	a,#_buffer_array
   09ED F5 82              2970 	mov	dpl,a
                           2971 ;	Peephole 236.g	used r5 instead of ar5
   09EF ED                 2972 	mov	a,r5
   09F0 34 0A              2973 	addc	a,#(_buffer_array >> 8)
   09F2 F5 83              2974 	mov	dph,a
                           2975 ;	genPointerGet
                           2976 ;	genFarPointerGet
   09F4 E0                 2977 	movx	a,@dptr
   09F5 FC                 2978 	mov	r4,a
   09F6 A3                 2979 	inc	dptr
   09F7 E0                 2980 	movx	a,@dptr
   09F8 FD                 2981 	mov	r5,a
   09F9 A3                 2982 	inc	dptr
   09FA E0                 2983 	movx	a,@dptr
   09FB FE                 2984 	mov	r6,a
                           2985 ;	genIfx
   09FC EC                 2986 	mov	a,r4
   09FD 4D                 2987 	orl	a,r5
   09FE 4E                 2988 	orl	a,r6
                           2989 ;	genIfxJump
   09FF 70 03              2990 	jnz	00135$
   0A01 02 07 E5           2991 	ljmp	00101$
   0A04                    2992 00135$:
                           2993 ;	main.c:349: printf_tiny("malloc passed for buffer%d\n\r",buffer_index);
                           2994 ;	genIpush
   0A04 C0 02              2995 	push	ar2
   0A06 C0 03              2996 	push	ar3
                           2997 ;	genIpush
   0A08 74 64              2998 	mov	a,#__str_28
   0A0A C0 E0              2999 	push	acc
   0A0C 74 29              3000 	mov	a,#(__str_28 >> 8)
   0A0E C0 E0              3001 	push	acc
                           3002 ;	genCall
   0A10 12 14 87           3003 	lcall	_printf_tiny
   0A13 E5 81              3004 	mov	a,sp
   0A15 24 FC              3005 	add	a,#0xfc
   0A17 F5 81              3006 	mov	sp,a
                           3007 ;	main.c:350: buffer_size[buffer_index]=new_result;
                           3008 ;	genAssign
   0A19 90 09 F8           3009 	mov	dptr,#_buffer_index
   0A1C E0                 3010 	movx	a,@dptr
   0A1D FA                 3011 	mov	r2,a
   0A1E A3                 3012 	inc	dptr
   0A1F E0                 3013 	movx	a,@dptr
                           3014 ;	genLeftShift
                           3015 ;	genLeftShiftLiteral
                           3016 ;	genlshTwo
   0A20 FB                 3017 	mov	r3,a
   0A21 8A 04              3018 	mov	ar4,r2
                           3019 ;	Peephole 177.d	removed redundant move
   0A23 CC                 3020 	xch	a,r4
   0A24 25 E0              3021 	add	a,acc
   0A26 CC                 3022 	xch	a,r4
   0A27 33                 3023 	rlc	a
   0A28 FD                 3024 	mov	r5,a
                           3025 ;	genPlus
                           3026 ;	Peephole 236.g	used r4 instead of ar4
   0A29 EC                 3027 	mov	a,r4
   0A2A 24 77              3028 	add	a,#_buffer_size
   0A2C FC                 3029 	mov	r4,a
                           3030 ;	Peephole 236.g	used r5 instead of ar5
   0A2D ED                 3031 	mov	a,r5
   0A2E 34 0B              3032 	addc	a,#(_buffer_size >> 8)
   0A30 FD                 3033 	mov	r5,a
                           3034 ;	genAssign
   0A31 90 0C 79           3035 	mov	dptr,#_new_result
   0A34 E0                 3036 	movx	a,@dptr
   0A35 FE                 3037 	mov	r6,a
   0A36 A3                 3038 	inc	dptr
   0A37 E0                 3039 	movx	a,@dptr
   0A38 FF                 3040 	mov	r7,a
                           3041 ;	genPointerSet
                           3042 ;     genFarPointerSet
   0A39 8C 82              3043 	mov	dpl,r4
   0A3B 8D 83              3044 	mov	dph,r5
   0A3D EE                 3045 	mov	a,r6
   0A3E F0                 3046 	movx	@dptr,a
   0A3F A3                 3047 	inc	dptr
   0A40 EF                 3048 	mov	a,r7
   0A41 F0                 3049 	movx	@dptr,a
                           3050 ;	main.c:351: buffer_index++;
                           3051 ;	genPlus
   0A42 90 09 F8           3052 	mov	dptr,#_buffer_index
                           3053 ;     genPlusIncr
   0A45 74 01              3054 	mov	a,#0x01
                           3055 ;	Peephole 236.a	used r2 instead of ar2
   0A47 2A                 3056 	add	a,r2
   0A48 F0                 3057 	movx	@dptr,a
                           3058 ;	Peephole 181	changed mov to clr
   0A49 E4                 3059 	clr	a
                           3060 ;	Peephole 236.b	used r3 instead of ar3
   0A4A 3B                 3061 	addc	a,r3
   0A4B A3                 3062 	inc	dptr
   0A4C F0                 3063 	movx	@dptr,a
                           3064 ;	Peephole 300	removed redundant label 00118$
   0A4D 22                 3065 	ret
                           3066 ;------------------------------------------------------------
                           3067 ;Allocation info for local variables in function 'buffer_delete'
                           3068 ;------------------------------------------------------------
                           3069 ;------------------------------------------------------------
                           3070 ;	main.c:355: void buffer_delete()
                           3071 ;	-----------------------------------------
                           3072 ;	 function buffer_delete
                           3073 ;	-----------------------------------------
   0A4E                    3074 _buffer_delete:
                           3075 ;	main.c:357: printf_tiny("Enter a valid buffer number\n\r");
                           3076 ;	genIpush
   0A4E 74 81              3077 	mov	a,#__str_29
   0A50 C0 E0              3078 	push	acc
   0A52 74 29              3079 	mov	a,#(__str_29 >> 8)
   0A54 C0 E0              3080 	push	acc
                           3081 ;	genCall
   0A56 12 14 87           3082 	lcall	_printf_tiny
   0A59 15 81              3083 	dec	sp
   0A5B 15 81              3084 	dec	sp
                           3085 ;	main.c:358: back:    buffer_num=getstr();//get the buffer number from the user
   0A5D                    3086 00101$:
                           3087 ;	genCall
   0A5D 12 05 ED           3088 	lcall	_getstr
   0A60 AA 82              3089 	mov	r2,dpl
   0A62 AB 83              3090 	mov	r3,dph
   0A64 AC F0              3091 	mov	r4,b
                           3092 ;	genAssign
   0A66 90 0C 8B           3093 	mov	dptr,#_buffer_num
   0A69 EA                 3094 	mov	a,r2
   0A6A F0                 3095 	movx	@dptr,a
   0A6B A3                 3096 	inc	dptr
   0A6C EB                 3097 	mov	a,r3
   0A6D F0                 3098 	movx	@dptr,a
   0A6E A3                 3099 	inc	dptr
   0A6F EC                 3100 	mov	a,r4
   0A70 F0                 3101 	movx	@dptr,a
                           3102 ;	main.c:359: printf_tiny("The buffer number you entered is: ");
                           3103 ;	genIpush
   0A71 74 9F              3104 	mov	a,#__str_30
   0A73 C0 E0              3105 	push	acc
   0A75 74 29              3106 	mov	a,#(__str_30 >> 8)
   0A77 C0 E0              3107 	push	acc
                           3108 ;	genCall
   0A79 12 14 87           3109 	lcall	_printf_tiny
   0A7C 15 81              3110 	dec	sp
   0A7E 15 81              3111 	dec	sp
                           3112 ;	main.c:360: putstr(buffer_num);
                           3113 ;	genAssign
   0A80 90 0C 8B           3114 	mov	dptr,#_buffer_num
   0A83 E0                 3115 	movx	a,@dptr
   0A84 FA                 3116 	mov	r2,a
   0A85 A3                 3117 	inc	dptr
   0A86 E0                 3118 	movx	a,@dptr
   0A87 FB                 3119 	mov	r3,a
   0A88 A3                 3120 	inc	dptr
   0A89 E0                 3121 	movx	a,@dptr
   0A8A FC                 3122 	mov	r4,a
                           3123 ;	genCall
   0A8B 8A 82              3124 	mov	dpl,r2
   0A8D 8B 83              3125 	mov	dph,r3
   0A8F 8C F0              3126 	mov	b,r4
   0A91 12 06 70           3127 	lcall	_putstr
                           3128 ;	main.c:361: printf_tiny("\n\r");
                           3129 ;	genIpush
   0A94 74 C2              3130 	mov	a,#__str_31
   0A96 C0 E0              3131 	push	acc
   0A98 74 29              3132 	mov	a,#(__str_31 >> 8)
   0A9A C0 E0              3133 	push	acc
                           3134 ;	genCall
   0A9C 12 14 87           3135 	lcall	_printf_tiny
   0A9F 15 81              3136 	dec	sp
   0AA1 15 81              3137 	dec	sp
                           3138 ;	main.c:362: buffer_result=0;
                           3139 ;	genAssign
   0AA3 90 09 FA           3140 	mov	dptr,#_buffer_result
   0AA6 E4                 3141 	clr	a
   0AA7 F0                 3142 	movx	@dptr,a
   0AA8 A3                 3143 	inc	dptr
   0AA9 F0                 3144 	movx	@dptr,a
                           3145 ;	main.c:363: i=0;
                           3146 ;	genAssign
   0AAA 90 0C 71           3147 	mov	dptr,#_i
   0AAD E4                 3148 	clr	a
   0AAE F0                 3149 	movx	@dptr,a
   0AAF A3                 3150 	inc	dptr
   0AB0 F0                 3151 	movx	@dptr,a
                           3152 ;	main.c:364: while(*(buffer_num+i)!='\0') //Convert ascii to integer
   0AB1                    3153 00102$:
                           3154 ;	genAssign
   0AB1 90 0C 71           3155 	mov	dptr,#_i
   0AB4 E0                 3156 	movx	a,@dptr
   0AB5 FA                 3157 	mov	r2,a
   0AB6 A3                 3158 	inc	dptr
   0AB7 E0                 3159 	movx	a,@dptr
   0AB8 FB                 3160 	mov	r3,a
                           3161 ;	genAssign
   0AB9 90 0C 8B           3162 	mov	dptr,#_buffer_num
   0ABC E0                 3163 	movx	a,@dptr
   0ABD FC                 3164 	mov	r4,a
   0ABE A3                 3165 	inc	dptr
   0ABF E0                 3166 	movx	a,@dptr
   0AC0 FD                 3167 	mov	r5,a
   0AC1 A3                 3168 	inc	dptr
   0AC2 E0                 3169 	movx	a,@dptr
   0AC3 FE                 3170 	mov	r6,a
                           3171 ;	genPlus
                           3172 ;	Peephole 236.g	used r2 instead of ar2
   0AC4 EA                 3173 	mov	a,r2
                           3174 ;	Peephole 236.a	used r4 instead of ar4
   0AC5 2C                 3175 	add	a,r4
   0AC6 FC                 3176 	mov	r4,a
                           3177 ;	Peephole 236.g	used r3 instead of ar3
   0AC7 EB                 3178 	mov	a,r3
                           3179 ;	Peephole 236.b	used r5 instead of ar5
   0AC8 3D                 3180 	addc	a,r5
   0AC9 FD                 3181 	mov	r5,a
                           3182 ;	genPointerGet
                           3183 ;	genGenPointerGet
   0ACA 8C 82              3184 	mov	dpl,r4
   0ACC 8D 83              3185 	mov	dph,r5
   0ACE 8E F0              3186 	mov	b,r6
   0AD0 12 22 5D           3187 	lcall	__gptrget
                           3188 ;	genCmpEq
                           3189 ;	gencjneshort
                           3190 ;	Peephole 112.b	changed ljmp to sjmp
   0AD3 FC                 3191 	mov	r4,a
                           3192 ;	Peephole 115.b	jump optimization
   0AD4 60 4D              3193 	jz	00104$
                           3194 ;	Peephole 300	removed redundant label 00118$
                           3195 ;	main.c:366: buffer_result= buffer_result*10+(*(buffer_num+i) - '0');
                           3196 ;	genAssign
   0AD6 90 09 FA           3197 	mov	dptr,#_buffer_result
   0AD9 E0                 3198 	movx	a,@dptr
   0ADA FD                 3199 	mov	r5,a
   0ADB A3                 3200 	inc	dptr
   0ADC E0                 3201 	movx	a,@dptr
   0ADD FE                 3202 	mov	r6,a
                           3203 ;	genAssign
   0ADE 90 0C B7           3204 	mov	dptr,#__mulint_PARM_2
   0AE1 74 0A              3205 	mov	a,#0x0A
   0AE3 F0                 3206 	movx	@dptr,a
   0AE4 E4                 3207 	clr	a
   0AE5 A3                 3208 	inc	dptr
   0AE6 F0                 3209 	movx	@dptr,a
                           3210 ;	genCall
   0AE7 8D 82              3211 	mov	dpl,r5
   0AE9 8E 83              3212 	mov	dph,r6
   0AEB C0 02              3213 	push	ar2
   0AED C0 03              3214 	push	ar3
   0AEF C0 04              3215 	push	ar4
   0AF1 12 15 8F           3216 	lcall	__mulint
   0AF4 AD 82              3217 	mov	r5,dpl
   0AF6 AE 83              3218 	mov	r6,dph
   0AF8 D0 04              3219 	pop	ar4
   0AFA D0 03              3220 	pop	ar3
   0AFC D0 02              3221 	pop	ar2
                           3222 ;	genCast
   0AFE EC                 3223 	mov	a,r4
   0AFF 33                 3224 	rlc	a
   0B00 95 E0              3225 	subb	a,acc
   0B02 FF                 3226 	mov	r7,a
                           3227 ;	genMinus
   0B03 EC                 3228 	mov	a,r4
   0B04 24 D0              3229 	add	a,#0xd0
   0B06 FC                 3230 	mov	r4,a
   0B07 EF                 3231 	mov	a,r7
   0B08 34 FF              3232 	addc	a,#0xff
   0B0A FF                 3233 	mov	r7,a
                           3234 ;	genPlus
   0B0B 90 09 FA           3235 	mov	dptr,#_buffer_result
                           3236 ;	Peephole 236.g	used r4 instead of ar4
   0B0E EC                 3237 	mov	a,r4
                           3238 ;	Peephole 236.a	used r5 instead of ar5
   0B0F 2D                 3239 	add	a,r5
   0B10 F0                 3240 	movx	@dptr,a
                           3241 ;	Peephole 236.g	used r7 instead of ar7
   0B11 EF                 3242 	mov	a,r7
                           3243 ;	Peephole 236.b	used r6 instead of ar6
   0B12 3E                 3244 	addc	a,r6
   0B13 A3                 3245 	inc	dptr
   0B14 F0                 3246 	movx	@dptr,a
                           3247 ;	main.c:367: i++;
                           3248 ;	genPlus
   0B15 90 0C 71           3249 	mov	dptr,#_i
                           3250 ;     genPlusIncr
   0B18 74 01              3251 	mov	a,#0x01
                           3252 ;	Peephole 236.a	used r2 instead of ar2
   0B1A 2A                 3253 	add	a,r2
   0B1B F0                 3254 	movx	@dptr,a
                           3255 ;	Peephole 181	changed mov to clr
   0B1C E4                 3256 	clr	a
                           3257 ;	Peephole 236.b	used r3 instead of ar3
   0B1D 3B                 3258 	addc	a,r3
   0B1E A3                 3259 	inc	dptr
   0B1F F0                 3260 	movx	@dptr,a
   0B20 02 0A B1           3261 	ljmp	00102$
   0B23                    3262 00104$:
                           3263 ;	main.c:369: if(buffer_result >(num_buffers-1)) //check if the buffer with that number does not exist
                           3264 ;	genAssign
   0B23 90 09 FC           3265 	mov	dptr,#_num_buffers
   0B26 E0                 3266 	movx	a,@dptr
   0B27 FA                 3267 	mov	r2,a
   0B28 A3                 3268 	inc	dptr
   0B29 E0                 3269 	movx	a,@dptr
   0B2A FB                 3270 	mov	r3,a
                           3271 ;	genMinus
                           3272 ;	genMinusDec
   0B2B 1A                 3273 	dec	r2
   0B2C BA FF 01           3274 	cjne	r2,#0xff,00119$
   0B2F 1B                 3275 	dec	r3
   0B30                    3276 00119$:
                           3277 ;	genAssign
   0B30 90 09 FA           3278 	mov	dptr,#_buffer_result
   0B33 E0                 3279 	movx	a,@dptr
   0B34 FC                 3280 	mov	r4,a
   0B35 A3                 3281 	inc	dptr
   0B36 E0                 3282 	movx	a,@dptr
   0B37 FD                 3283 	mov	r5,a
                           3284 ;	genCmpGt
                           3285 ;	genCmp
   0B38 C3                 3286 	clr	c
   0B39 EA                 3287 	mov	a,r2
   0B3A 9C                 3288 	subb	a,r4
   0B3B EB                 3289 	mov	a,r3
   0B3C 9D                 3290 	subb	a,r5
                           3291 ;	genIfxJump
                           3292 ;	Peephole 108.a	removed ljmp by inverse jump logic
   0B3D 50 12              3293 	jnc	00109$
                           3294 ;	Peephole 300	removed redundant label 00120$
                           3295 ;	main.c:371: printf_tiny("Enter a valid buffer number\n\r");
                           3296 ;	genIpush
   0B3F 74 81              3297 	mov	a,#__str_29
   0B41 C0 E0              3298 	push	acc
   0B43 74 29              3299 	mov	a,#(__str_29 >> 8)
   0B45 C0 E0              3300 	push	acc
                           3301 ;	genCall
   0B47 12 14 87           3302 	lcall	_printf_tiny
   0B4A 15 81              3303 	dec	sp
   0B4C 15 81              3304 	dec	sp
                           3305 ;	main.c:372: goto back;
   0B4E 02 0A 5D           3306 	ljmp	00101$
   0B51                    3307 00109$:
                           3308 ;	main.c:374: else if(buffer_result==0) //check if the user is trying to delete buffer0
                           3309 ;	genIfx
   0B51 EC                 3310 	mov	a,r4
   0B52 4D                 3311 	orl	a,r5
                           3312 ;	genIfxJump
                           3313 ;	Peephole 108.b	removed ljmp by inverse jump logic
   0B53 70 12              3314 	jnz	00106$
                           3315 ;	Peephole 300	removed redundant label 00121$
                           3316 ;	main.c:376: printf_tiny("Enter a valid buffer number other than 0\n\r");
                           3317 ;	genIpush
   0B55 74 C5              3318 	mov	a,#__str_32
   0B57 C0 E0              3319 	push	acc
   0B59 74 29              3320 	mov	a,#(__str_32 >> 8)
   0B5B C0 E0              3321 	push	acc
                           3322 ;	genCall
   0B5D 12 14 87           3323 	lcall	_printf_tiny
   0B60 15 81              3324 	dec	sp
   0B62 15 81              3325 	dec	sp
                           3326 ;	main.c:377: goto back;
   0B64 02 0A 5D           3327 	ljmp	00101$
   0B67                    3328 00106$:
                           3329 ;	main.c:381: printf_tiny("Buffer%d deleted\n\r",buffer_result);
                           3330 ;	genIpush
   0B67 C0 04              3331 	push	ar4
   0B69 C0 05              3332 	push	ar5
                           3333 ;	genIpush
   0B6B 74 F0              3334 	mov	a,#__str_33
   0B6D C0 E0              3335 	push	acc
   0B6F 74 29              3336 	mov	a,#(__str_33 >> 8)
   0B71 C0 E0              3337 	push	acc
                           3338 ;	genCall
   0B73 12 14 87           3339 	lcall	_printf_tiny
   0B76 E5 81              3340 	mov	a,sp
   0B78 24 FC              3341 	add	a,#0xfc
   0B7A F5 81              3342 	mov	sp,a
                           3343 ;	main.c:382: free(buffer_array[buffer_result]);
                           3344 ;	genAssign
   0B7C 90 09 FA           3345 	mov	dptr,#_buffer_result
   0B7F E0                 3346 	movx	a,@dptr
   0B80 FA                 3347 	mov	r2,a
   0B81 A3                 3348 	inc	dptr
   0B82 E0                 3349 	movx	a,@dptr
   0B83 FB                 3350 	mov	r3,a
                           3351 ;	genAssign
   0B84 90 0C B7           3352 	mov	dptr,#__mulint_PARM_2
   0B87 74 03              3353 	mov	a,#0x03
   0B89 F0                 3354 	movx	@dptr,a
   0B8A E4                 3355 	clr	a
   0B8B A3                 3356 	inc	dptr
   0B8C F0                 3357 	movx	@dptr,a
                           3358 ;	genCall
   0B8D 8A 82              3359 	mov	dpl,r2
   0B8F 8B 83              3360 	mov	dph,r3
   0B91 12 15 8F           3361 	lcall	__mulint
   0B94 AA 82              3362 	mov	r2,dpl
   0B96 AB 83              3363 	mov	r3,dph
                           3364 ;	genPlus
                           3365 ;	Peephole 236.g	used r2 instead of ar2
   0B98 EA                 3366 	mov	a,r2
   0B99 24 00              3367 	add	a,#_buffer_array
   0B9B F5 82              3368 	mov	dpl,a
                           3369 ;	Peephole 236.g	used r3 instead of ar3
   0B9D EB                 3370 	mov	a,r3
   0B9E 34 0A              3371 	addc	a,#(_buffer_array >> 8)
   0BA0 F5 83              3372 	mov	dph,a
                           3373 ;	genPointerGet
                           3374 ;	genFarPointerGet
   0BA2 E0                 3375 	movx	a,@dptr
   0BA3 FA                 3376 	mov	r2,a
   0BA4 A3                 3377 	inc	dptr
   0BA5 E0                 3378 	movx	a,@dptr
   0BA6 FB                 3379 	mov	r3,a
   0BA7 A3                 3380 	inc	dptr
   0BA8 E0                 3381 	movx	a,@dptr
   0BA9 FC                 3382 	mov	r4,a
                           3383 ;	genCall
   0BAA 8A 82              3384 	mov	dpl,r2
   0BAC 8B 83              3385 	mov	dph,r3
   0BAE 8C F0              3386 	mov	b,r4
   0BB0 12 12 5E           3387 	lcall	_free
                           3388 ;	main.c:383: buffer_array[buffer_result]= NULL;
                           3389 ;	genAssign
   0BB3 90 09 FA           3390 	mov	dptr,#_buffer_result
   0BB6 E0                 3391 	movx	a,@dptr
   0BB7 FA                 3392 	mov	r2,a
   0BB8 A3                 3393 	inc	dptr
   0BB9 E0                 3394 	movx	a,@dptr
   0BBA FB                 3395 	mov	r3,a
                           3396 ;	genAssign
   0BBB 90 0C B7           3397 	mov	dptr,#__mulint_PARM_2
   0BBE 74 03              3398 	mov	a,#0x03
   0BC0 F0                 3399 	movx	@dptr,a
   0BC1 E4                 3400 	clr	a
   0BC2 A3                 3401 	inc	dptr
   0BC3 F0                 3402 	movx	@dptr,a
                           3403 ;	genCall
   0BC4 8A 82              3404 	mov	dpl,r2
   0BC6 8B 83              3405 	mov	dph,r3
   0BC8 C0 02              3406 	push	ar2
   0BCA C0 03              3407 	push	ar3
   0BCC 12 15 8F           3408 	lcall	__mulint
   0BCF AC 82              3409 	mov	r4,dpl
   0BD1 AD 83              3410 	mov	r5,dph
   0BD3 D0 03              3411 	pop	ar3
   0BD5 D0 02              3412 	pop	ar2
                           3413 ;	genPlus
                           3414 ;	Peephole 236.g	used r4 instead of ar4
   0BD7 EC                 3415 	mov	a,r4
   0BD8 24 00              3416 	add	a,#_buffer_array
   0BDA F5 82              3417 	mov	dpl,a
                           3418 ;	Peephole 236.g	used r5 instead of ar5
   0BDC ED                 3419 	mov	a,r5
   0BDD 34 0A              3420 	addc	a,#(_buffer_array >> 8)
   0BDF F5 83              3421 	mov	dph,a
                           3422 ;	genPointerSet
                           3423 ;     genFarPointerSet
                           3424 ;	Peephole 181	changed mov to clr
                           3425 ;	Peephole 101	removed redundant mov
                           3426 ;	Peephole 181	changed mov to clr
   0BE1 E4                 3427 	clr	a
   0BE2 F0                 3428 	movx	@dptr,a
   0BE3 A3                 3429 	inc	dptr
   0BE4 F0                 3430 	movx	@dptr,a
   0BE5 A3                 3431 	inc	dptr
                           3432 ;	Peephole 226.b	removed unnecessary clr
   0BE6 F0                 3433 	movx	@dptr,a
                           3434 ;	main.c:384: buffer_shift(buffer_result);
                           3435 ;	genCall
   0BE7 8A 82              3436 	mov	dpl,r2
   0BE9 8B 83              3437 	mov	dph,r3
   0BEB 12 07 19           3438 	lcall	_buffer_shift
                           3439 ;	main.c:385: buffer_index--;
                           3440 ;	genAssign
   0BEE 90 09 F8           3441 	mov	dptr,#_buffer_index
   0BF1 E0                 3442 	movx	a,@dptr
   0BF2 FA                 3443 	mov	r2,a
   0BF3 A3                 3444 	inc	dptr
   0BF4 E0                 3445 	movx	a,@dptr
   0BF5 FB                 3446 	mov	r3,a
                           3447 ;	genMinus
                           3448 ;	genMinusDec
   0BF6 1A                 3449 	dec	r2
   0BF7 BA FF 01           3450 	cjne	r2,#0xff,00122$
   0BFA 1B                 3451 	dec	r3
   0BFB                    3452 00122$:
                           3453 ;	genAssign
   0BFB 90 09 F8           3454 	mov	dptr,#_buffer_index
   0BFE EA                 3455 	mov	a,r2
   0BFF F0                 3456 	movx	@dptr,a
   0C00 A3                 3457 	inc	dptr
   0C01 EB                 3458 	mov	a,r3
   0C02 F0                 3459 	movx	@dptr,a
                           3460 ;	Peephole 300	removed redundant label 00111$
   0C03 22                 3461 	ret
                           3462 ;------------------------------------------------------------
                           3463 ;Allocation info for local variables in function 'heap_report'
                           3464 ;------------------------------------------------------------
                           3465 ;------------------------------------------------------------
                           3466 ;	main.c:390: void heap_report()
                           3467 ;	-----------------------------------------
                           3468 ;	 function heap_report
                           3469 ;	-----------------------------------------
   0C04                    3470 _heap_report:
                           3471 ;	main.c:392: printf_tiny("Number of storage characters are %d\r\n",storage_count);
                           3472 ;	genIpush
   0C04 90 0D 2E           3473 	mov	dptr,#_storage_count
   0C07 E0                 3474 	movx	a,@dptr
   0C08 C0 E0              3475 	push	acc
   0C0A A3                 3476 	inc	dptr
   0C0B E0                 3477 	movx	a,@dptr
   0C0C C0 E0              3478 	push	acc
                           3479 ;	genIpush
   0C0E 74 03              3480 	mov	a,#__str_34
   0C10 C0 E0              3481 	push	acc
   0C12 74 2A              3482 	mov	a,#(__str_34 >> 8)
   0C14 C0 E0              3483 	push	acc
                           3484 ;	genCall
   0C16 12 14 87           3485 	lcall	_printf_tiny
   0C19 E5 81              3486 	mov	a,sp
   0C1B 24 FC              3487 	add	a,#0xfc
   0C1D F5 81              3488 	mov	sp,a
                           3489 ;	main.c:393: printf_tiny("Number of command characters are %d\r\n",command_count);
                           3490 ;	genIpush
   0C1F 90 0D 30           3491 	mov	dptr,#_command_count
   0C22 E0                 3492 	movx	a,@dptr
   0C23 C0 E0              3493 	push	acc
   0C25 A3                 3494 	inc	dptr
   0C26 E0                 3495 	movx	a,@dptr
   0C27 C0 E0              3496 	push	acc
                           3497 ;	genIpush
   0C29 74 29              3498 	mov	a,#__str_35
   0C2B C0 E0              3499 	push	acc
   0C2D 74 2A              3500 	mov	a,#(__str_35 >> 8)
   0C2F C0 E0              3501 	push	acc
                           3502 ;	genCall
   0C31 12 14 87           3503 	lcall	_printf_tiny
   0C34 E5 81              3504 	mov	a,sp
   0C36 24 FC              3505 	add	a,#0xfc
   0C38 F5 81              3506 	mov	sp,a
                           3507 ;	main.c:394: printf_tiny("There are %d buffers in the heap\r\n",num_buffers);
                           3508 ;	genIpush
   0C3A 90 09 FC           3509 	mov	dptr,#_num_buffers
   0C3D E0                 3510 	movx	a,@dptr
   0C3E C0 E0              3511 	push	acc
   0C40 A3                 3512 	inc	dptr
   0C41 E0                 3513 	movx	a,@dptr
   0C42 C0 E0              3514 	push	acc
                           3515 ;	genIpush
   0C44 74 4F              3516 	mov	a,#__str_36
   0C46 C0 E0              3517 	push	acc
   0C48 74 2A              3518 	mov	a,#(__str_36 >> 8)
   0C4A C0 E0              3519 	push	acc
                           3520 ;	genCall
   0C4C 12 14 87           3521 	lcall	_printf_tiny
   0C4F E5 81              3522 	mov	a,sp
   0C51 24 FC              3523 	add	a,#0xfc
   0C53 F5 81              3524 	mov	sp,a
                           3525 ;	main.c:395: printf_tiny("The buffers currently in heap are:\r\n");
                           3526 ;	genIpush
   0C55 74 72              3527 	mov	a,#__str_37
   0C57 C0 E0              3528 	push	acc
   0C59 74 2A              3529 	mov	a,#(__str_37 >> 8)
   0C5B C0 E0              3530 	push	acc
                           3531 ;	genCall
   0C5D 12 14 87           3532 	lcall	_printf_tiny
   0C60 15 81              3533 	dec	sp
   0C62 15 81              3534 	dec	sp
                           3535 ;	main.c:396: for(i=0;i<num_buffers;i++)
                           3536 ;	genAssign
   0C64 90 0C 71           3537 	mov	dptr,#_i
   0C67 E4                 3538 	clr	a
   0C68 F0                 3539 	movx	@dptr,a
   0C69 A3                 3540 	inc	dptr
   0C6A F0                 3541 	movx	@dptr,a
   0C6B                    3542 00118$:
                           3543 ;	genAssign
   0C6B 90 0C 71           3544 	mov	dptr,#_i
   0C6E E0                 3545 	movx	a,@dptr
   0C6F FA                 3546 	mov	r2,a
   0C70 A3                 3547 	inc	dptr
   0C71 E0                 3548 	movx	a,@dptr
   0C72 FB                 3549 	mov	r3,a
                           3550 ;	genAssign
   0C73 90 09 FC           3551 	mov	dptr,#_num_buffers
   0C76 E0                 3552 	movx	a,@dptr
   0C77 FC                 3553 	mov	r4,a
   0C78 A3                 3554 	inc	dptr
   0C79 E0                 3555 	movx	a,@dptr
   0C7A FD                 3556 	mov	r5,a
                           3557 ;	genCmpLt
                           3558 ;	genCmp
   0C7B C3                 3559 	clr	c
   0C7C EA                 3560 	mov	a,r2
   0C7D 9C                 3561 	subb	a,r4
   0C7E EB                 3562 	mov	a,r3
   0C7F 9D                 3563 	subb	a,r5
                           3564 ;	genIfxJump
                           3565 ;	Peephole 108.a	removed ljmp by inverse jump logic
   0C80 50 35              3566 	jnc	00121$
                           3567 ;	Peephole 300	removed redundant label 00141$
                           3568 ;	main.c:398: printf_tiny("[%d] buffer%d\r\n",(i+1),i);
                           3569 ;	genPlus
                           3570 ;     genPlusIncr
   0C82 74 01              3571 	mov	a,#0x01
                           3572 ;	Peephole 236.a	used r2 instead of ar2
   0C84 2A                 3573 	add	a,r2
   0C85 FC                 3574 	mov	r4,a
                           3575 ;	Peephole 181	changed mov to clr
   0C86 E4                 3576 	clr	a
                           3577 ;	Peephole 236.b	used r3 instead of ar3
   0C87 3B                 3578 	addc	a,r3
   0C88 FD                 3579 	mov	r5,a
                           3580 ;	genIpush
   0C89 C0 02              3581 	push	ar2
   0C8B C0 03              3582 	push	ar3
                           3583 ;	genIpush
   0C8D C0 04              3584 	push	ar4
   0C8F C0 05              3585 	push	ar5
                           3586 ;	genIpush
   0C91 74 97              3587 	mov	a,#__str_38
   0C93 C0 E0              3588 	push	acc
   0C95 74 2A              3589 	mov	a,#(__str_38 >> 8)
   0C97 C0 E0              3590 	push	acc
                           3591 ;	genCall
   0C99 12 14 87           3592 	lcall	_printf_tiny
   0C9C E5 81              3593 	mov	a,sp
   0C9E 24 FA              3594 	add	a,#0xfa
   0CA0 F5 81              3595 	mov	sp,a
                           3596 ;	main.c:396: for(i=0;i<num_buffers;i++)
                           3597 ;	genAssign
   0CA2 90 0C 71           3598 	mov	dptr,#_i
   0CA5 E0                 3599 	movx	a,@dptr
   0CA6 FA                 3600 	mov	r2,a
   0CA7 A3                 3601 	inc	dptr
   0CA8 E0                 3602 	movx	a,@dptr
   0CA9 FB                 3603 	mov	r3,a
                           3604 ;	genPlus
   0CAA 90 0C 71           3605 	mov	dptr,#_i
                           3606 ;     genPlusIncr
   0CAD 74 01              3607 	mov	a,#0x01
                           3608 ;	Peephole 236.a	used r2 instead of ar2
   0CAF 2A                 3609 	add	a,r2
   0CB0 F0                 3610 	movx	@dptr,a
                           3611 ;	Peephole 181	changed mov to clr
   0CB1 E4                 3612 	clr	a
                           3613 ;	Peephole 236.b	used r3 instead of ar3
   0CB2 3B                 3614 	addc	a,r3
   0CB3 A3                 3615 	inc	dptr
   0CB4 F0                 3616 	movx	@dptr,a
                           3617 ;	Peephole 112.b	changed ljmp to sjmp
   0CB5 80 B4              3618 	sjmp	00118$
   0CB7                    3619 00121$:
                           3620 ;	main.c:400: printf_tiny("Report of each buffer in the heap:\r\n");
                           3621 ;	genIpush
   0CB7 74 A7              3622 	mov	a,#__str_39
   0CB9 C0 E0              3623 	push	acc
   0CBB 74 2A              3624 	mov	a,#(__str_39 >> 8)
   0CBD C0 E0              3625 	push	acc
                           3626 ;	genCall
   0CBF 12 14 87           3627 	lcall	_printf_tiny
   0CC2 15 81              3628 	dec	sp
   0CC4 15 81              3629 	dec	sp
                           3630 ;	main.c:401: printf_tiny("\r\n");
                           3631 ;	genIpush
   0CC6 74 4E              3632 	mov	a,#__str_2
   0CC8 C0 E0              3633 	push	acc
   0CCA 74 25              3634 	mov	a,#(__str_2 >> 8)
   0CCC C0 E0              3635 	push	acc
                           3636 ;	genCall
   0CCE 12 14 87           3637 	lcall	_printf_tiny
   0CD1 15 81              3638 	dec	sp
   0CD3 15 81              3639 	dec	sp
                           3640 ;	main.c:402: for(i=0;i<num_buffers;i++)
                           3641 ;	genAssign
   0CD5 90 0C 71           3642 	mov	dptr,#_i
   0CD8 E4                 3643 	clr	a
   0CD9 F0                 3644 	movx	@dptr,a
   0CDA A3                 3645 	inc	dptr
   0CDB F0                 3646 	movx	@dptr,a
   0CDC                    3647 00122$:
                           3648 ;	genAssign
   0CDC 90 0C 71           3649 	mov	dptr,#_i
   0CDF E0                 3650 	movx	a,@dptr
   0CE0 FA                 3651 	mov	r2,a
   0CE1 A3                 3652 	inc	dptr
   0CE2 E0                 3653 	movx	a,@dptr
   0CE3 FB                 3654 	mov	r3,a
                           3655 ;	genAssign
   0CE4 90 09 FC           3656 	mov	dptr,#_num_buffers
   0CE7 E0                 3657 	movx	a,@dptr
   0CE8 FC                 3658 	mov	r4,a
   0CE9 A3                 3659 	inc	dptr
   0CEA E0                 3660 	movx	a,@dptr
   0CEB FD                 3661 	mov	r5,a
                           3662 ;	genCmpLt
                           3663 ;	genCmp
   0CEC C3                 3664 	clr	c
   0CED EA                 3665 	mov	a,r2
   0CEE 9C                 3666 	subb	a,r4
   0CEF EB                 3667 	mov	a,r3
   0CF0 9D                 3668 	subb	a,r5
                           3669 ;	genIfxJump
   0CF1 40 03              3670 	jc	00142$
   0CF3 02 0F FA           3671 	ljmp	00125$
   0CF6                    3672 00142$:
                           3673 ;	main.c:404: num_elements=0;
                           3674 ;	genAssign
   0CF6 90 0C 7B           3675 	mov	dptr,#_num_elements
   0CF9 E4                 3676 	clr	a
   0CFA F0                 3677 	movx	@dptr,a
   0CFB A3                 3678 	inc	dptr
   0CFC F0                 3679 	movx	@dptr,a
                           3680 ;	main.c:405: printf_tiny("Buffer%d report:\r\n",i);
                           3681 ;	genIpush
   0CFD C0 02              3682 	push	ar2
   0CFF C0 03              3683 	push	ar3
                           3684 ;	genIpush
   0D01 74 CC              3685 	mov	a,#__str_40
   0D03 C0 E0              3686 	push	acc
   0D05 74 2A              3687 	mov	a,#(__str_40 >> 8)
   0D07 C0 E0              3688 	push	acc
                           3689 ;	genCall
   0D09 12 14 87           3690 	lcall	_printf_tiny
   0D0C E5 81              3691 	mov	a,sp
   0D0E 24 FC              3692 	add	a,#0xfc
   0D10 F5 81              3693 	mov	sp,a
                           3694 ;	main.c:406: printf_tiny("Size of Buffer%d is %d\r\n",i,buffer_size[i]);
                           3695 ;	genAssign
   0D12 90 0C 71           3696 	mov	dptr,#_i
   0D15 E0                 3697 	movx	a,@dptr
   0D16 FA                 3698 	mov	r2,a
   0D17 A3                 3699 	inc	dptr
   0D18 E0                 3700 	movx	a,@dptr
                           3701 ;	genLeftShift
                           3702 ;	genLeftShiftLiteral
                           3703 ;	genlshTwo
   0D19 FB                 3704 	mov	r3,a
   0D1A 8A 04              3705 	mov	ar4,r2
                           3706 ;	Peephole 177.d	removed redundant move
   0D1C CC                 3707 	xch	a,r4
   0D1D 25 E0              3708 	add	a,acc
   0D1F CC                 3709 	xch	a,r4
   0D20 33                 3710 	rlc	a
   0D21 FD                 3711 	mov	r5,a
                           3712 ;	genPlus
                           3713 ;	Peephole 236.g	used r4 instead of ar4
   0D22 EC                 3714 	mov	a,r4
   0D23 24 77              3715 	add	a,#_buffer_size
   0D25 F5 82              3716 	mov	dpl,a
                           3717 ;	Peephole 236.g	used r5 instead of ar5
   0D27 ED                 3718 	mov	a,r5
   0D28 34 0B              3719 	addc	a,#(_buffer_size >> 8)
   0D2A F5 83              3720 	mov	dph,a
                           3721 ;	genPointerGet
                           3722 ;	genFarPointerGet
   0D2C E0                 3723 	movx	a,@dptr
   0D2D FC                 3724 	mov	r4,a
   0D2E A3                 3725 	inc	dptr
   0D2F E0                 3726 	movx	a,@dptr
   0D30 FD                 3727 	mov	r5,a
                           3728 ;	genIpush
   0D31 C0 04              3729 	push	ar4
   0D33 C0 05              3730 	push	ar5
                           3731 ;	genIpush
   0D35 C0 02              3732 	push	ar2
   0D37 C0 03              3733 	push	ar3
                           3734 ;	genIpush
   0D39 74 DF              3735 	mov	a,#__str_41
   0D3B C0 E0              3736 	push	acc
   0D3D 74 2A              3737 	mov	a,#(__str_41 >> 8)
   0D3F C0 E0              3738 	push	acc
                           3739 ;	genCall
   0D41 12 14 87           3740 	lcall	_printf_tiny
   0D44 E5 81              3741 	mov	a,sp
   0D46 24 FA              3742 	add	a,#0xfa
   0D48 F5 81              3743 	mov	sp,a
                           3744 ;	main.c:407: printf_tiny("Starting address of Buffer%d is %d\r\n",i,(unsigned int)buffer_array[i]);
                           3745 ;	genAssign
   0D4A 90 0C 71           3746 	mov	dptr,#_i
   0D4D E0                 3747 	movx	a,@dptr
   0D4E FA                 3748 	mov	r2,a
   0D4F A3                 3749 	inc	dptr
   0D50 E0                 3750 	movx	a,@dptr
   0D51 FB                 3751 	mov	r3,a
                           3752 ;	genAssign
   0D52 90 0C B7           3753 	mov	dptr,#__mulint_PARM_2
   0D55 74 03              3754 	mov	a,#0x03
   0D57 F0                 3755 	movx	@dptr,a
   0D58 E4                 3756 	clr	a
   0D59 A3                 3757 	inc	dptr
   0D5A F0                 3758 	movx	@dptr,a
                           3759 ;	genCall
   0D5B 8A 82              3760 	mov	dpl,r2
   0D5D 8B 83              3761 	mov	dph,r3
   0D5F C0 02              3762 	push	ar2
   0D61 C0 03              3763 	push	ar3
   0D63 12 15 8F           3764 	lcall	__mulint
   0D66 AC 82              3765 	mov	r4,dpl
   0D68 AD 83              3766 	mov	r5,dph
   0D6A D0 03              3767 	pop	ar3
   0D6C D0 02              3768 	pop	ar2
                           3769 ;	genPlus
                           3770 ;	Peephole 236.g	used r4 instead of ar4
   0D6E EC                 3771 	mov	a,r4
   0D6F 24 00              3772 	add	a,#_buffer_array
   0D71 F5 82              3773 	mov	dpl,a
                           3774 ;	Peephole 236.g	used r5 instead of ar5
   0D73 ED                 3775 	mov	a,r5
   0D74 34 0A              3776 	addc	a,#(_buffer_array >> 8)
   0D76 F5 83              3777 	mov	dph,a
                           3778 ;	genPointerGet
                           3779 ;	genFarPointerGet
   0D78 E0                 3780 	movx	a,@dptr
   0D79 FC                 3781 	mov	r4,a
   0D7A A3                 3782 	inc	dptr
   0D7B E0                 3783 	movx	a,@dptr
   0D7C FD                 3784 	mov	r5,a
   0D7D A3                 3785 	inc	dptr
   0D7E E0                 3786 	movx	a,@dptr
   0D7F FE                 3787 	mov	r6,a
                           3788 ;	genCast
                           3789 ;	genIpush
   0D80 C0 04              3790 	push	ar4
   0D82 C0 05              3791 	push	ar5
                           3792 ;	genIpush
   0D84 C0 02              3793 	push	ar2
   0D86 C0 03              3794 	push	ar3
                           3795 ;	genIpush
   0D88 74 F8              3796 	mov	a,#__str_42
   0D8A C0 E0              3797 	push	acc
   0D8C 74 2A              3798 	mov	a,#(__str_42 >> 8)
   0D8E C0 E0              3799 	push	acc
                           3800 ;	genCall
   0D90 12 14 87           3801 	lcall	_printf_tiny
   0D93 E5 81              3802 	mov	a,sp
   0D95 24 FA              3803 	add	a,#0xfa
   0D97 F5 81              3804 	mov	sp,a
                           3805 ;	main.c:408: printf_tiny("Ending address of Buffer%d is %d\r\n",i,(((unsigned int)buffer_array[i]) + buffer_size[i]));
                           3806 ;	genAssign
   0D99 90 0C 71           3807 	mov	dptr,#_i
   0D9C E0                 3808 	movx	a,@dptr
   0D9D FA                 3809 	mov	r2,a
   0D9E A3                 3810 	inc	dptr
   0D9F E0                 3811 	movx	a,@dptr
   0DA0 FB                 3812 	mov	r3,a
                           3813 ;	genAssign
   0DA1 90 0C B7           3814 	mov	dptr,#__mulint_PARM_2
   0DA4 74 03              3815 	mov	a,#0x03
   0DA6 F0                 3816 	movx	@dptr,a
   0DA7 E4                 3817 	clr	a
   0DA8 A3                 3818 	inc	dptr
   0DA9 F0                 3819 	movx	@dptr,a
                           3820 ;	genCall
   0DAA 8A 82              3821 	mov	dpl,r2
   0DAC 8B 83              3822 	mov	dph,r3
   0DAE C0 02              3823 	push	ar2
   0DB0 C0 03              3824 	push	ar3
   0DB2 12 15 8F           3825 	lcall	__mulint
   0DB5 AC 82              3826 	mov	r4,dpl
   0DB7 AD 83              3827 	mov	r5,dph
   0DB9 D0 03              3828 	pop	ar3
   0DBB D0 02              3829 	pop	ar2
                           3830 ;	genPlus
                           3831 ;	Peephole 236.g	used r4 instead of ar4
   0DBD EC                 3832 	mov	a,r4
   0DBE 24 00              3833 	add	a,#_buffer_array
   0DC0 F5 82              3834 	mov	dpl,a
                           3835 ;	Peephole 236.g	used r5 instead of ar5
   0DC2 ED                 3836 	mov	a,r5
   0DC3 34 0A              3837 	addc	a,#(_buffer_array >> 8)
   0DC5 F5 83              3838 	mov	dph,a
                           3839 ;	genPointerGet
                           3840 ;	genFarPointerGet
   0DC7 E0                 3841 	movx	a,@dptr
   0DC8 FC                 3842 	mov	r4,a
   0DC9 A3                 3843 	inc	dptr
   0DCA E0                 3844 	movx	a,@dptr
   0DCB FD                 3845 	mov	r5,a
   0DCC A3                 3846 	inc	dptr
   0DCD E0                 3847 	movx	a,@dptr
                           3848 ;	genCast
                           3849 ;	genLeftShift
                           3850 ;	genLeftShiftLiteral
                           3851 ;	genlshTwo
                           3852 ;	peephole 177.e	removed redundant move
   0DCE 8A 06              3853 	mov	ar6,r2
   0DD0 EB                 3854 	mov	a,r3
   0DD1 CE                 3855 	xch	a,r6
   0DD2 25 E0              3856 	add	a,acc
   0DD4 CE                 3857 	xch	a,r6
   0DD5 33                 3858 	rlc	a
   0DD6 FF                 3859 	mov	r7,a
                           3860 ;	genPlus
                           3861 ;	Peephole 236.g	used r6 instead of ar6
   0DD7 EE                 3862 	mov	a,r6
   0DD8 24 77              3863 	add	a,#_buffer_size
   0DDA F5 82              3864 	mov	dpl,a
                           3865 ;	Peephole 236.g	used r7 instead of ar7
   0DDC EF                 3866 	mov	a,r7
   0DDD 34 0B              3867 	addc	a,#(_buffer_size >> 8)
   0DDF F5 83              3868 	mov	dph,a
                           3869 ;	genPointerGet
                           3870 ;	genFarPointerGet
   0DE1 E0                 3871 	movx	a,@dptr
   0DE2 FE                 3872 	mov	r6,a
   0DE3 A3                 3873 	inc	dptr
   0DE4 E0                 3874 	movx	a,@dptr
   0DE5 FF                 3875 	mov	r7,a
                           3876 ;	genPlus
                           3877 ;	Peephole 236.g	used r6 instead of ar6
   0DE6 EE                 3878 	mov	a,r6
                           3879 ;	Peephole 236.a	used r4 instead of ar4
   0DE7 2C                 3880 	add	a,r4
   0DE8 FC                 3881 	mov	r4,a
                           3882 ;	Peephole 236.g	used r7 instead of ar7
   0DE9 EF                 3883 	mov	a,r7
                           3884 ;	Peephole 236.b	used r5 instead of ar5
   0DEA 3D                 3885 	addc	a,r5
   0DEB FD                 3886 	mov	r5,a
                           3887 ;	genIpush
   0DEC C0 04              3888 	push	ar4
   0DEE C0 05              3889 	push	ar5
                           3890 ;	genIpush
   0DF0 C0 02              3891 	push	ar2
   0DF2 C0 03              3892 	push	ar3
                           3893 ;	genIpush
   0DF4 74 1D              3894 	mov	a,#__str_43
   0DF6 C0 E0              3895 	push	acc
   0DF8 74 2B              3896 	mov	a,#(__str_43 >> 8)
   0DFA C0 E0              3897 	push	acc
                           3898 ;	genCall
   0DFC 12 14 87           3899 	lcall	_printf_tiny
   0DFF E5 81              3900 	mov	a,sp
   0E01 24 FA              3901 	add	a,#0xfa
   0E03 F5 81              3902 	mov	sp,a
                           3903 ;	main.c:410: while(*(buffer_array[i]+num_elements)!='\0') //Calculate number of elements in each buffer
   0E05                    3904 00101$:
                           3905 ;	genAssign
   0E05 90 0C 71           3906 	mov	dptr,#_i
   0E08 E0                 3907 	movx	a,@dptr
   0E09 FA                 3908 	mov	r2,a
   0E0A A3                 3909 	inc	dptr
   0E0B E0                 3910 	movx	a,@dptr
   0E0C FB                 3911 	mov	r3,a
                           3912 ;	genAssign
   0E0D 90 0C B7           3913 	mov	dptr,#__mulint_PARM_2
   0E10 74 03              3914 	mov	a,#0x03
   0E12 F0                 3915 	movx	@dptr,a
   0E13 E4                 3916 	clr	a
   0E14 A3                 3917 	inc	dptr
   0E15 F0                 3918 	movx	@dptr,a
                           3919 ;	genCall
   0E16 8A 82              3920 	mov	dpl,r2
   0E18 8B 83              3921 	mov	dph,r3
   0E1A C0 02              3922 	push	ar2
   0E1C C0 03              3923 	push	ar3
   0E1E 12 15 8F           3924 	lcall	__mulint
   0E21 AC 82              3925 	mov	r4,dpl
   0E23 AD 83              3926 	mov	r5,dph
   0E25 D0 03              3927 	pop	ar3
   0E27 D0 02              3928 	pop	ar2
                           3929 ;	genPlus
                           3930 ;	Peephole 236.g	used r4 instead of ar4
   0E29 EC                 3931 	mov	a,r4
   0E2A 24 00              3932 	add	a,#_buffer_array
   0E2C F5 82              3933 	mov	dpl,a
                           3934 ;	Peephole 236.g	used r5 instead of ar5
   0E2E ED                 3935 	mov	a,r5
   0E2F 34 0A              3936 	addc	a,#(_buffer_array >> 8)
   0E31 F5 83              3937 	mov	dph,a
                           3938 ;	genPointerGet
                           3939 ;	genFarPointerGet
   0E33 E0                 3940 	movx	a,@dptr
   0E34 FC                 3941 	mov	r4,a
   0E35 A3                 3942 	inc	dptr
   0E36 E0                 3943 	movx	a,@dptr
   0E37 FD                 3944 	mov	r5,a
   0E38 A3                 3945 	inc	dptr
   0E39 E0                 3946 	movx	a,@dptr
   0E3A FE                 3947 	mov	r6,a
                           3948 ;	genAssign
   0E3B 90 0C 7B           3949 	mov	dptr,#_num_elements
   0E3E E0                 3950 	movx	a,@dptr
   0E3F FF                 3951 	mov	r7,a
   0E40 A3                 3952 	inc	dptr
   0E41 E0                 3953 	movx	a,@dptr
   0E42 F8                 3954 	mov	r0,a
                           3955 ;	genPlus
                           3956 ;	Peephole 236.g	used r7 instead of ar7
   0E43 EF                 3957 	mov	a,r7
                           3958 ;	Peephole 236.a	used r4 instead of ar4
   0E44 2C                 3959 	add	a,r4
   0E45 FC                 3960 	mov	r4,a
                           3961 ;	Peephole 236.g	used r0 instead of ar0
   0E46 E8                 3962 	mov	a,r0
                           3963 ;	Peephole 236.b	used r5 instead of ar5
   0E47 3D                 3964 	addc	a,r5
   0E48 FD                 3965 	mov	r5,a
                           3966 ;	genPointerGet
                           3967 ;	genGenPointerGet
   0E49 8C 82              3968 	mov	dpl,r4
   0E4B 8D 83              3969 	mov	dph,r5
   0E4D 8E F0              3970 	mov	b,r6
   0E4F 12 22 5D           3971 	lcall	__gptrget
                           3972 ;	genCmpEq
                           3973 ;	gencjneshort
                           3974 ;	Peephole 112.b	changed ljmp to sjmp
   0E52 FC                 3975 	mov	r4,a
                           3976 ;	Peephole 115.b	jump optimization
   0E53 60 0D              3977 	jz	00103$
                           3978 ;	Peephole 300	removed redundant label 00143$
                           3979 ;	main.c:412: num_elements++;
                           3980 ;	genPlus
   0E55 90 0C 7B           3981 	mov	dptr,#_num_elements
                           3982 ;     genPlusIncr
   0E58 74 01              3983 	mov	a,#0x01
                           3984 ;	Peephole 236.a	used r7 instead of ar7
   0E5A 2F                 3985 	add	a,r7
   0E5B F0                 3986 	movx	@dptr,a
                           3987 ;	Peephole 181	changed mov to clr
   0E5C E4                 3988 	clr	a
                           3989 ;	Peephole 236.b	used r0 instead of ar0
   0E5D 38                 3990 	addc	a,r0
   0E5E A3                 3991 	inc	dptr
   0E5F F0                 3992 	movx	@dptr,a
                           3993 ;	Peephole 112.b	changed ljmp to sjmp
   0E60 80 A3              3994 	sjmp	00101$
   0E62                    3995 00103$:
                           3996 ;	main.c:414: printf_tiny("Free space in Buffer%d is %d\r\n",i,(unsigned int)(buffer_size[i] - num_elements));
                           3997 ;	genLeftShift
                           3998 ;	genLeftShiftLiteral
                           3999 ;	genlshTwo
   0E62 8A 04              4000 	mov	ar4,r2
   0E64 EB                 4001 	mov	a,r3
   0E65 CC                 4002 	xch	a,r4
   0E66 25 E0              4003 	add	a,acc
   0E68 CC                 4004 	xch	a,r4
   0E69 33                 4005 	rlc	a
   0E6A FD                 4006 	mov	r5,a
                           4007 ;	genPlus
                           4008 ;	Peephole 236.g	used r4 instead of ar4
   0E6B EC                 4009 	mov	a,r4
   0E6C 24 77              4010 	add	a,#_buffer_size
   0E6E F5 82              4011 	mov	dpl,a
                           4012 ;	Peephole 236.g	used r5 instead of ar5
   0E70 ED                 4013 	mov	a,r5
   0E71 34 0B              4014 	addc	a,#(_buffer_size >> 8)
   0E73 F5 83              4015 	mov	dph,a
                           4016 ;	genPointerGet
                           4017 ;	genFarPointerGet
   0E75 E0                 4018 	movx	a,@dptr
   0E76 FC                 4019 	mov	r4,a
   0E77 A3                 4020 	inc	dptr
   0E78 E0                 4021 	movx	a,@dptr
   0E79 FD                 4022 	mov	r5,a
                           4023 ;	genMinus
   0E7A EC                 4024 	mov	a,r4
   0E7B C3                 4025 	clr	c
                           4026 ;	Peephole 236.l	used r7 instead of ar7
   0E7C 9F                 4027 	subb	a,r7
   0E7D FF                 4028 	mov	r7,a
   0E7E ED                 4029 	mov	a,r5
                           4030 ;	Peephole 236.l	used r0 instead of ar0
   0E7F 98                 4031 	subb	a,r0
   0E80 F8                 4032 	mov	r0,a
                           4033 ;	genIpush
   0E81 C0 07              4034 	push	ar7
   0E83 C0 00              4035 	push	ar0
                           4036 ;	genIpush
   0E85 C0 02              4037 	push	ar2
   0E87 C0 03              4038 	push	ar3
                           4039 ;	genIpush
   0E89 74 40              4040 	mov	a,#__str_44
   0E8B C0 E0              4041 	push	acc
   0E8D 74 2B              4042 	mov	a,#(__str_44 >> 8)
   0E8F C0 E0              4043 	push	acc
                           4044 ;	genCall
   0E91 12 14 87           4045 	lcall	_printf_tiny
   0E94 E5 81              4046 	mov	a,sp
   0E96 24 FA              4047 	add	a,#0xfa
   0E98 F5 81              4048 	mov	sp,a
                           4049 ;	main.c:415: if(i==0)
                           4050 ;	genAssign
   0E9A 90 0C 71           4051 	mov	dptr,#_i
   0E9D E0                 4052 	movx	a,@dptr
   0E9E FA                 4053 	mov	r2,a
   0E9F A3                 4054 	inc	dptr
   0EA0 E0                 4055 	movx	a,@dptr
                           4056 ;	genIfx
   0EA1 FB                 4057 	mov	r3,a
                           4058 ;	Peephole 135	removed redundant mov
   0EA2 4A                 4059 	orl	a,r2
                           4060 ;	genIfxJump
   0EA3 60 03              4061 	jz	00144$
   0EA5 02 0F C0           4062 	ljmp	00116$
   0EA8                    4063 00144$:
                           4064 ;	main.c:417: clear_count=0;
                           4065 ;	genAssign
   0EA8 90 0C 77           4066 	mov	dptr,#_clear_count
   0EAB E4                 4067 	clr	a
   0EAC F0                 4068 	movx	@dptr,a
   0EAD A3                 4069 	inc	dptr
   0EAE F0                 4070 	movx	@dptr,a
                           4071 ;	main.c:418: printf_tiny("Number of storage characters in buffer%d are %d\r\n",i,storage_count);
                           4072 ;	genIpush
   0EAF 90 0D 2E           4073 	mov	dptr,#_storage_count
   0EB2 E0                 4074 	movx	a,@dptr
   0EB3 C0 E0              4075 	push	acc
   0EB5 A3                 4076 	inc	dptr
   0EB6 E0                 4077 	movx	a,@dptr
   0EB7 C0 E0              4078 	push	acc
                           4079 ;	genIpush
   0EB9 C0 02              4080 	push	ar2
   0EBB C0 03              4081 	push	ar3
                           4082 ;	genIpush
   0EBD 74 5F              4083 	mov	a,#__str_45
   0EBF C0 E0              4084 	push	acc
   0EC1 74 2B              4085 	mov	a,#(__str_45 >> 8)
   0EC3 C0 E0              4086 	push	acc
                           4087 ;	genCall
   0EC5 12 14 87           4088 	lcall	_printf_tiny
   0EC8 E5 81              4089 	mov	a,sp
   0ECA 24 FA              4090 	add	a,#0xfa
   0ECC F5 81              4091 	mov	sp,a
                           4092 ;	main.c:419: if(storage_count!=0)
                           4093 ;	genAssign
   0ECE 90 0D 2E           4094 	mov	dptr,#_storage_count
   0ED1 E0                 4095 	movx	a,@dptr
   0ED2 FC                 4096 	mov	r4,a
   0ED3 A3                 4097 	inc	dptr
   0ED4 E0                 4098 	movx	a,@dptr
   0ED5 FD                 4099 	mov	r5,a
                           4100 ;	genCmpEq
                           4101 ;	gencjneshort
   0ED6 BC 00 05           4102 	cjne	r4,#0x00,00145$
   0ED9 BD 00 02           4103 	cjne	r5,#0x00,00145$
                           4104 ;	Peephole 112.b	changed ljmp to sjmp
   0EDC 80 0F              4105 	sjmp	00109$
   0EDE                    4106 00145$:
                           4107 ;	main.c:421: printf_tiny("The storage characters are:\r\n");
                           4108 ;	genIpush
   0EDE 74 91              4109 	mov	a,#__str_46
   0EE0 C0 E0              4110 	push	acc
   0EE2 74 2B              4111 	mov	a,#(__str_46 >> 8)
   0EE4 C0 E0              4112 	push	acc
                           4113 ;	genCall
   0EE6 12 14 87           4114 	lcall	_printf_tiny
   0EE9 15 81              4115 	dec	sp
   0EEB 15 81              4116 	dec	sp
                           4117 ;	main.c:423: while(clear_count<storage_count) //Empty buffer0
   0EED                    4118 00109$:
                           4119 ;	genAssign
   0EED 90 0C 77           4120 	mov	dptr,#_clear_count
   0EF0 E0                 4121 	movx	a,@dptr
   0EF1 FC                 4122 	mov	r4,a
   0EF2 A3                 4123 	inc	dptr
   0EF3 E0                 4124 	movx	a,@dptr
   0EF4 FD                 4125 	mov	r5,a
                           4126 ;	genAssign
   0EF5 90 0D 2E           4127 	mov	dptr,#_storage_count
   0EF8 E0                 4128 	movx	a,@dptr
   0EF9 FE                 4129 	mov	r6,a
   0EFA A3                 4130 	inc	dptr
   0EFB E0                 4131 	movx	a,@dptr
   0EFC FF                 4132 	mov	r7,a
                           4133 ;	genCmpLt
                           4134 ;	genCmp
   0EFD C3                 4135 	clr	c
   0EFE EC                 4136 	mov	a,r4
   0EFF 9E                 4137 	subb	a,r6
   0F00 ED                 4138 	mov	a,r5
   0F01 9F                 4139 	subb	a,r7
                           4140 ;	genIfxJump
   0F02 40 03              4141 	jc	00146$
   0F04 02 0F 88           4142 	ljmp	00111$
   0F07                    4143 00146$:
                           4144 ;	main.c:425: temp=0;
                           4145 ;	genAssign
   0F07 90 0C 7D           4146 	mov	dptr,#_temp
   0F0A E4                 4147 	clr	a
   0F0B F0                 4148 	movx	@dptr,a
   0F0C A3                 4149 	inc	dptr
   0F0D F0                 4150 	movx	@dptr,a
                           4151 ;	main.c:426: do
   0F0E                    4152 00106$:
                           4153 ;	main.c:428: putchar(*(buffer0+clear_count));
                           4154 ;	genAssign
   0F0E 90 0C 77           4155 	mov	dptr,#_clear_count
   0F11 E0                 4156 	movx	a,@dptr
   0F12 FC                 4157 	mov	r4,a
   0F13 A3                 4158 	inc	dptr
   0F14 E0                 4159 	movx	a,@dptr
   0F15 FD                 4160 	mov	r5,a
                           4161 ;	genAssign
   0F16 90 0C 7F           4162 	mov	dptr,#_buffer0
   0F19 E0                 4163 	movx	a,@dptr
   0F1A F8                 4164 	mov	r0,a
   0F1B A3                 4165 	inc	dptr
   0F1C E0                 4166 	movx	a,@dptr
   0F1D F9                 4167 	mov	r1,a
                           4168 ;	genPlus
                           4169 ;	Peephole 236.g	used r4 instead of ar4
   0F1E EC                 4170 	mov	a,r4
                           4171 ;	Peephole 236.a	used r0 instead of ar0
   0F1F 28                 4172 	add	a,r0
   0F20 F5 82              4173 	mov	dpl,a
                           4174 ;	Peephole 236.g	used r5 instead of ar5
   0F22 ED                 4175 	mov	a,r5
                           4176 ;	Peephole 236.b	used r1 instead of ar1
   0F23 39                 4177 	addc	a,r1
   0F24 F5 83              4178 	mov	dph,a
                           4179 ;	genPointerGet
                           4180 ;	genFarPointerGet
   0F26 E0                 4181 	movx	a,@dptr
                           4182 ;	genCall
   0F27 FC                 4183 	mov	r4,a
                           4184 ;	Peephole 244.c	loading dpl from a instead of r4
   0F28 F5 82              4185 	mov	dpl,a
   0F2A 12 06 54           4186 	lcall	_putchar
                           4187 ;	main.c:429: *(buffer0+clear_count)='\0';
                           4188 ;	genAssign
   0F2D 90 0C 77           4189 	mov	dptr,#_clear_count
   0F30 E0                 4190 	movx	a,@dptr
   0F31 FC                 4191 	mov	r4,a
   0F32 A3                 4192 	inc	dptr
   0F33 E0                 4193 	movx	a,@dptr
   0F34 FD                 4194 	mov	r5,a
                           4195 ;	genAssign
   0F35 90 0C 7F           4196 	mov	dptr,#_buffer0
   0F38 E0                 4197 	movx	a,@dptr
   0F39 F8                 4198 	mov	r0,a
   0F3A A3                 4199 	inc	dptr
   0F3B E0                 4200 	movx	a,@dptr
   0F3C F9                 4201 	mov	r1,a
                           4202 ;	genPlus
                           4203 ;	Peephole 236.g	used r4 instead of ar4
   0F3D EC                 4204 	mov	a,r4
                           4205 ;	Peephole 236.a	used r0 instead of ar0
   0F3E 28                 4206 	add	a,r0
   0F3F F5 82              4207 	mov	dpl,a
                           4208 ;	Peephole 236.g	used r5 instead of ar5
   0F41 ED                 4209 	mov	a,r5
                           4210 ;	Peephole 236.b	used r1 instead of ar1
   0F42 39                 4211 	addc	a,r1
   0F43 F5 83              4212 	mov	dph,a
                           4213 ;	genPointerSet
                           4214 ;     genFarPointerSet
                           4215 ;	Peephole 181	changed mov to clr
   0F45 E4                 4216 	clr	a
   0F46 F0                 4217 	movx	@dptr,a
                           4218 ;	main.c:430: clear_count++;
                           4219 ;	genPlus
   0F47 90 0C 77           4220 	mov	dptr,#_clear_count
                           4221 ;     genPlusIncr
   0F4A 74 01              4222 	mov	a,#0x01
                           4223 ;	Peephole 236.a	used r4 instead of ar4
   0F4C 2C                 4224 	add	a,r4
   0F4D F0                 4225 	movx	@dptr,a
                           4226 ;	Peephole 181	changed mov to clr
   0F4E E4                 4227 	clr	a
                           4228 ;	Peephole 236.b	used r5 instead of ar5
   0F4F 3D                 4229 	addc	a,r5
   0F50 A3                 4230 	inc	dptr
   0F51 F0                 4231 	movx	@dptr,a
                           4232 ;	main.c:431: temp++;
                           4233 ;	genAssign
   0F52 90 0C 7D           4234 	mov	dptr,#_temp
   0F55 E0                 4235 	movx	a,@dptr
   0F56 FC                 4236 	mov	r4,a
   0F57 A3                 4237 	inc	dptr
   0F58 E0                 4238 	movx	a,@dptr
   0F59 FD                 4239 	mov	r5,a
                           4240 ;	genPlus
   0F5A 90 0C 7D           4241 	mov	dptr,#_temp
                           4242 ;     genPlusIncr
   0F5D 74 01              4243 	mov	a,#0x01
                           4244 ;	Peephole 236.a	used r4 instead of ar4
   0F5F 2C                 4245 	add	a,r4
   0F60 F0                 4246 	movx	@dptr,a
                           4247 ;	Peephole 181	changed mov to clr
   0F61 E4                 4248 	clr	a
                           4249 ;	Peephole 236.b	used r5 instead of ar5
   0F62 3D                 4250 	addc	a,r5
   0F63 A3                 4251 	inc	dptr
   0F64 F0                 4252 	movx	@dptr,a
                           4253 ;	main.c:432: }while(temp<32);
                           4254 ;	genAssign
   0F65 90 0C 7D           4255 	mov	dptr,#_temp
   0F68 E0                 4256 	movx	a,@dptr
   0F69 FC                 4257 	mov	r4,a
   0F6A A3                 4258 	inc	dptr
   0F6B E0                 4259 	movx	a,@dptr
   0F6C FD                 4260 	mov	r5,a
                           4261 ;	genCmpLt
                           4262 ;	genCmp
   0F6D C3                 4263 	clr	c
   0F6E EC                 4264 	mov	a,r4
   0F6F 94 20              4265 	subb	a,#0x20
   0F71 ED                 4266 	mov	a,r5
   0F72 94 00              4267 	subb	a,#0x00
                           4268 ;	genIfxJump
                           4269 ;	Peephole 112.b	changed ljmp to sjmp
                           4270 ;	Peephole 160.a	removed sjmp by inverse jump logic
   0F74 40 98              4271 	jc	00106$
                           4272 ;	Peephole 300	removed redundant label 00147$
                           4273 ;	main.c:433: printf_tiny("\r\n");
                           4274 ;	genIpush
   0F76 74 4E              4275 	mov	a,#__str_2
   0F78 C0 E0              4276 	push	acc
   0F7A 74 25              4277 	mov	a,#(__str_2 >> 8)
   0F7C C0 E0              4278 	push	acc
                           4279 ;	genCall
   0F7E 12 14 87           4280 	lcall	_printf_tiny
   0F81 15 81              4281 	dec	sp
   0F83 15 81              4282 	dec	sp
   0F85 02 0E ED           4283 	ljmp	00109$
   0F88                    4284 00111$:
                           4285 ;	main.c:436: if(storage_count!=0)
                           4286 ;	genCmpEq
                           4287 ;	gencjneshort
   0F88 BE 00 05           4288 	cjne	r6,#0x00,00148$
   0F8B BF 00 02           4289 	cjne	r7,#0x00,00148$
                           4290 ;	Peephole 112.b	changed ljmp to sjmp
   0F8E 80 11              4291 	sjmp	00113$
   0F90                    4292 00148$:
                           4293 ;	main.c:437: printf_tiny("Buffer0 is emptied\r\n");
                           4294 ;	genIpush
   0F90 74 AF              4295 	mov	a,#__str_47
   0F92 C0 E0              4296 	push	acc
   0F94 74 2B              4297 	mov	a,#(__str_47 >> 8)
   0F96 C0 E0              4298 	push	acc
                           4299 ;	genCall
   0F98 12 14 87           4300 	lcall	_printf_tiny
   0F9B 15 81              4301 	dec	sp
   0F9D 15 81              4302 	dec	sp
                           4303 ;	Peephole 112.b	changed ljmp to sjmp
   0F9F 80 0F              4304 	sjmp	00114$
   0FA1                    4305 00113$:
                           4306 ;	main.c:439: printf_tiny("Buffer0 is already empty\r\n");
                           4307 ;	genIpush
   0FA1 74 C4              4308 	mov	a,#__str_48
   0FA3 C0 E0              4309 	push	acc
   0FA5 74 2B              4310 	mov	a,#(__str_48 >> 8)
   0FA7 C0 E0              4311 	push	acc
                           4312 ;	genCall
   0FA9 12 14 87           4313 	lcall	_printf_tiny
   0FAC 15 81              4314 	dec	sp
   0FAE 15 81              4315 	dec	sp
   0FB0                    4316 00114$:
                           4317 ;	main.c:440: storage_count=0;
                           4318 ;	genAssign
   0FB0 90 0D 2E           4319 	mov	dptr,#_storage_count
   0FB3 E4                 4320 	clr	a
   0FB4 F0                 4321 	movx	@dptr,a
   0FB5 A3                 4322 	inc	dptr
   0FB6 F0                 4323 	movx	@dptr,a
                           4324 ;	main.c:441: cmd_count=0;
                           4325 ;	genAssign
   0FB7 90 0C 75           4326 	mov	dptr,#_cmd_count
   0FBA E4                 4327 	clr	a
   0FBB F0                 4328 	movx	@dptr,a
   0FBC A3                 4329 	inc	dptr
   0FBD F0                 4330 	movx	@dptr,a
                           4331 ;	Peephole 112.b	changed ljmp to sjmp
   0FBE 80 15              4332 	sjmp	00117$
   0FC0                    4333 00116$:
                           4334 ;	main.c:445: printf_tiny("There are no storage characters in buffer%d\r\n",i);
                           4335 ;	genIpush
   0FC0 C0 02              4336 	push	ar2
   0FC2 C0 03              4337 	push	ar3
                           4338 ;	genIpush
   0FC4 74 DF              4339 	mov	a,#__str_49
   0FC6 C0 E0              4340 	push	acc
   0FC8 74 2B              4341 	mov	a,#(__str_49 >> 8)
   0FCA C0 E0              4342 	push	acc
                           4343 ;	genCall
   0FCC 12 14 87           4344 	lcall	_printf_tiny
   0FCF E5 81              4345 	mov	a,sp
   0FD1 24 FC              4346 	add	a,#0xfc
   0FD3 F5 81              4347 	mov	sp,a
   0FD5                    4348 00117$:
                           4349 ;	main.c:446: printf_tiny("*******************************************************************\n\r");
                           4350 ;	genIpush
   0FD5 74 0D              4351 	mov	a,#__str_50
   0FD7 C0 E0              4352 	push	acc
   0FD9 74 2C              4353 	mov	a,#(__str_50 >> 8)
   0FDB C0 E0              4354 	push	acc
                           4355 ;	genCall
   0FDD 12 14 87           4356 	lcall	_printf_tiny
   0FE0 15 81              4357 	dec	sp
   0FE2 15 81              4358 	dec	sp
                           4359 ;	main.c:402: for(i=0;i<num_buffers;i++)
                           4360 ;	genAssign
   0FE4 90 0C 71           4361 	mov	dptr,#_i
   0FE7 E0                 4362 	movx	a,@dptr
   0FE8 FA                 4363 	mov	r2,a
   0FE9 A3                 4364 	inc	dptr
   0FEA E0                 4365 	movx	a,@dptr
   0FEB FB                 4366 	mov	r3,a
                           4367 ;	genPlus
   0FEC 90 0C 71           4368 	mov	dptr,#_i
                           4369 ;     genPlusIncr
   0FEF 74 01              4370 	mov	a,#0x01
                           4371 ;	Peephole 236.a	used r2 instead of ar2
   0FF1 2A                 4372 	add	a,r2
   0FF2 F0                 4373 	movx	@dptr,a
                           4374 ;	Peephole 181	changed mov to clr
   0FF3 E4                 4375 	clr	a
                           4376 ;	Peephole 236.b	used r3 instead of ar3
   0FF4 3B                 4377 	addc	a,r3
   0FF5 A3                 4378 	inc	dptr
   0FF6 F0                 4379 	movx	@dptr,a
   0FF7 02 0C DC           4380 	ljmp	00122$
   0FFA                    4381 00125$:
                           4382 ;	main.c:448: printf_tiny("Number of characters received since last '?' command is %d\r\n",char_received);
                           4383 ;	genIpush
   0FFA 90 0C 8F           4384 	mov	dptr,#_char_received
   0FFD E0                 4385 	movx	a,@dptr
   0FFE C0 E0              4386 	push	acc
   1000 A3                 4387 	inc	dptr
   1001 E0                 4388 	movx	a,@dptr
   1002 C0 E0              4389 	push	acc
                           4390 ;	genIpush
   1004 74 53              4391 	mov	a,#__str_51
   1006 C0 E0              4392 	push	acc
   1008 74 2C              4393 	mov	a,#(__str_51 >> 8)
   100A C0 E0              4394 	push	acc
                           4395 ;	genCall
   100C 12 14 87           4396 	lcall	_printf_tiny
   100F E5 81              4397 	mov	a,sp
   1011 24 FC              4398 	add	a,#0xfc
   1013 F5 81              4399 	mov	sp,a
                           4400 ;	main.c:449: char_received=0;
                           4401 ;	genAssign
   1015 90 0C 8F           4402 	mov	dptr,#_char_received
   1018 E4                 4403 	clr	a
   1019 F0                 4404 	movx	@dptr,a
   101A A3                 4405 	inc	dptr
   101B F0                 4406 	movx	@dptr,a
                           4407 ;	Peephole 300	removed redundant label 00126$
   101C 22                 4408 	ret
                           4409 ;------------------------------------------------------------
                           4410 ;Allocation info for local variables in function 'buffer0_hex'
                           4411 ;------------------------------------------------------------
                           4412 ;------------------------------------------------------------
                           4413 ;	main.c:453: void buffer0_hex()
                           4414 ;	-----------------------------------------
                           4415 ;	 function buffer0_hex
                           4416 ;	-----------------------------------------
   101D                    4417 _buffer0_hex:
                           4418 ;	main.c:455: printf_small("Hex values in Buffer 0 are:\r\n");
                           4419 ;	genIpush
   101D 74 90              4420 	mov	a,#__str_52
   101F C0 E0              4421 	push	acc
   1021 74 2C              4422 	mov	a,#(__str_52 >> 8)
   1023 C0 E0              4423 	push	acc
   1025 74 80              4424 	mov	a,#0x80
   1027 C0 E0              4425 	push	acc
                           4426 ;	genCall
   1029 12 15 AF           4427 	lcall	_printf_small
   102C 15 81              4428 	dec	sp
   102E 15 81              4429 	dec	sp
   1030 15 81              4430 	dec	sp
                           4431 ;	main.c:456: i=0;
                           4432 ;	genAssign
   1032 90 0C 71           4433 	mov	dptr,#_i
   1035 E4                 4434 	clr	a
   1036 F0                 4435 	movx	@dptr,a
   1037 A3                 4436 	inc	dptr
   1038 F0                 4437 	movx	@dptr,a
                           4438 ;	main.c:457: if(storage_count==0)//check if buffer0 has storage characters
                           4439 ;	genAssign
   1039 90 0D 2E           4440 	mov	dptr,#_storage_count
   103C E0                 4441 	movx	a,@dptr
   103D FA                 4442 	mov	r2,a
   103E A3                 4443 	inc	dptr
   103F E0                 4444 	movx	a,@dptr
                           4445 ;	genIfx
   1040 FB                 4446 	mov	r3,a
                           4447 ;	Peephole 135	removed redundant mov
   1041 4A                 4448 	orl	a,r2
                           4449 ;	genIfxJump
                           4450 ;	Peephole 108.b	removed ljmp by inverse jump logic
   1042 70 0F              4451 	jnz	00105$
                           4452 ;	Peephole 300	removed redundant label 00114$
                           4453 ;	main.c:458: printf_tiny("There are no storage characters in Buffer0\r\n");
                           4454 ;	genIpush
   1044 74 AE              4455 	mov	a,#__str_53
   1046 C0 E0              4456 	push	acc
   1048 74 2C              4457 	mov	a,#(__str_53 >> 8)
   104A C0 E0              4458 	push	acc
                           4459 ;	genCall
   104C 12 14 87           4460 	lcall	_printf_tiny
   104F 15 81              4461 	dec	sp
   1051 15 81              4462 	dec	sp
                           4463 ;	main.c:459: while(i<storage_count) //keep printing till the last storage character
   1053                    4464 00105$:
                           4465 ;	genAssign
   1053 90 0C 71           4466 	mov	dptr,#_i
   1056 E0                 4467 	movx	a,@dptr
   1057 FA                 4468 	mov	r2,a
   1058 A3                 4469 	inc	dptr
   1059 E0                 4470 	movx	a,@dptr
   105A FB                 4471 	mov	r3,a
                           4472 ;	genAssign
   105B 90 0D 2E           4473 	mov	dptr,#_storage_count
   105E E0                 4474 	movx	a,@dptr
   105F FC                 4475 	mov	r4,a
   1060 A3                 4476 	inc	dptr
   1061 E0                 4477 	movx	a,@dptr
   1062 FD                 4478 	mov	r5,a
                           4479 ;	genCmpLt
                           4480 ;	genCmp
   1063 C3                 4481 	clr	c
   1064 EA                 4482 	mov	a,r2
   1065 9C                 4483 	subb	a,r4
   1066 EB                 4484 	mov	a,r3
   1067 9D                 4485 	subb	a,r5
                           4486 ;	genIfxJump
   1068 40 03              4487 	jc	00115$
   106A 02 11 05           4488 	ljmp	00107$
   106D                    4489 00115$:
                           4490 ;	main.c:461: if((i%16)==0)
                           4491 ;	genAnd
   106D EA                 4492 	mov	a,r2
   106E 54 0F              4493 	anl	a,#0x0F
                           4494 ;	Peephole 160.c	removed sjmp by inverse jump logic
   1070 60 02              4495 	jz	00117$
                           4496 ;	Peephole 300	removed redundant label 00116$
                           4497 ;	Peephole 112.b	changed ljmp to sjmp
   1072 80 44              4498 	sjmp	00104$
   1074                    4499 00117$:
                           4500 ;	main.c:463: printf_small("\r\n");
                           4501 ;	genIpush
   1074 74 4E              4502 	mov	a,#__str_2
   1076 C0 E0              4503 	push	acc
   1078 74 25              4504 	mov	a,#(__str_2 >> 8)
   107A C0 E0              4505 	push	acc
   107C 74 80              4506 	mov	a,#0x80
   107E C0 E0              4507 	push	acc
                           4508 ;	genCall
   1080 12 15 AF           4509 	lcall	_printf_small
   1083 15 81              4510 	dec	sp
   1085 15 81              4511 	dec	sp
   1087 15 81              4512 	dec	sp
                           4513 ;	main.c:464: printf("%04X:",(unsigned int)(buffer0+i)); //print the address of the 1st byte of 16 bytes in each line
                           4514 ;	genAssign
   1089 90 0C 71           4515 	mov	dptr,#_i
   108C E0                 4516 	movx	a,@dptr
   108D FA                 4517 	mov	r2,a
   108E A3                 4518 	inc	dptr
   108F E0                 4519 	movx	a,@dptr
   1090 FB                 4520 	mov	r3,a
                           4521 ;	genAssign
   1091 90 0C 7F           4522 	mov	dptr,#_buffer0
   1094 E0                 4523 	movx	a,@dptr
   1095 FC                 4524 	mov	r4,a
   1096 A3                 4525 	inc	dptr
   1097 E0                 4526 	movx	a,@dptr
   1098 FD                 4527 	mov	r5,a
                           4528 ;	genPlus
                           4529 ;	Peephole 236.g	used r2 instead of ar2
   1099 EA                 4530 	mov	a,r2
                           4531 ;	Peephole 236.a	used r4 instead of ar4
   109A 2C                 4532 	add	a,r4
   109B FA                 4533 	mov	r2,a
                           4534 ;	Peephole 236.g	used r3 instead of ar3
   109C EB                 4535 	mov	a,r3
                           4536 ;	Peephole 236.b	used r5 instead of ar5
   109D 3D                 4537 	addc	a,r5
   109E FB                 4538 	mov	r3,a
                           4539 ;	genCast
                           4540 ;	genIpush
   109F C0 02              4541 	push	ar2
   10A1 C0 03              4542 	push	ar3
                           4543 ;	genIpush
   10A3 74 DB              4544 	mov	a,#__str_54
   10A5 C0 E0              4545 	push	acc
   10A7 74 2C              4546 	mov	a,#(__str_54 >> 8)
   10A9 C0 E0              4547 	push	acc
   10AB 74 80              4548 	mov	a,#0x80
   10AD C0 E0              4549 	push	acc
                           4550 ;	genCall
   10AF 12 19 BE           4551 	lcall	_printf
   10B2 E5 81              4552 	mov	a,sp
   10B4 24 FB              4553 	add	a,#0xfb
   10B6 F5 81              4554 	mov	sp,a
   10B8                    4555 00104$:
                           4556 ;	main.c:467: printf("%02X\t",(*(buffer0+i))); //print the character in buffer0
                           4557 ;	genAssign
   10B8 90 0C 71           4558 	mov	dptr,#_i
   10BB E0                 4559 	movx	a,@dptr
   10BC FA                 4560 	mov	r2,a
   10BD A3                 4561 	inc	dptr
   10BE E0                 4562 	movx	a,@dptr
   10BF FB                 4563 	mov	r3,a
                           4564 ;	genAssign
   10C0 90 0C 7F           4565 	mov	dptr,#_buffer0
   10C3 E0                 4566 	movx	a,@dptr
   10C4 FC                 4567 	mov	r4,a
   10C5 A3                 4568 	inc	dptr
   10C6 E0                 4569 	movx	a,@dptr
   10C7 FD                 4570 	mov	r5,a
                           4571 ;	genPlus
                           4572 ;	Peephole 236.g	used r2 instead of ar2
   10C8 EA                 4573 	mov	a,r2
                           4574 ;	Peephole 236.a	used r4 instead of ar4
   10C9 2C                 4575 	add	a,r4
   10CA F5 82              4576 	mov	dpl,a
                           4577 ;	Peephole 236.g	used r3 instead of ar3
   10CC EB                 4578 	mov	a,r3
                           4579 ;	Peephole 236.b	used r5 instead of ar5
   10CD 3D                 4580 	addc	a,r5
   10CE F5 83              4581 	mov	dph,a
                           4582 ;	genPointerGet
                           4583 ;	genFarPointerGet
   10D0 E0                 4584 	movx	a,@dptr
                           4585 ;	genCast
   10D1 FA                 4586 	mov	r2,a
                           4587 ;	Peephole 105	removed redundant mov
   10D2 33                 4588 	rlc	a
   10D3 95 E0              4589 	subb	a,acc
   10D5 FB                 4590 	mov	r3,a
                           4591 ;	genIpush
   10D6 C0 02              4592 	push	ar2
   10D8 C0 03              4593 	push	ar3
                           4594 ;	genIpush
   10DA 74 E1              4595 	mov	a,#__str_55
   10DC C0 E0              4596 	push	acc
   10DE 74 2C              4597 	mov	a,#(__str_55 >> 8)
   10E0 C0 E0              4598 	push	acc
   10E2 74 80              4599 	mov	a,#0x80
   10E4 C0 E0              4600 	push	acc
                           4601 ;	genCall
   10E6 12 19 BE           4602 	lcall	_printf
   10E9 E5 81              4603 	mov	a,sp
   10EB 24 FB              4604 	add	a,#0xfb
   10ED F5 81              4605 	mov	sp,a
                           4606 ;	main.c:468: i++;
                           4607 ;	genAssign
   10EF 90 0C 71           4608 	mov	dptr,#_i
   10F2 E0                 4609 	movx	a,@dptr
   10F3 FA                 4610 	mov	r2,a
   10F4 A3                 4611 	inc	dptr
   10F5 E0                 4612 	movx	a,@dptr
   10F6 FB                 4613 	mov	r3,a
                           4614 ;	genPlus
   10F7 90 0C 71           4615 	mov	dptr,#_i
                           4616 ;     genPlusIncr
   10FA 74 01              4617 	mov	a,#0x01
                           4618 ;	Peephole 236.a	used r2 instead of ar2
   10FC 2A                 4619 	add	a,r2
   10FD F0                 4620 	movx	@dptr,a
                           4621 ;	Peephole 181	changed mov to clr
   10FE E4                 4622 	clr	a
                           4623 ;	Peephole 236.b	used r3 instead of ar3
   10FF 3B                 4624 	addc	a,r3
   1100 A3                 4625 	inc	dptr
   1101 F0                 4626 	movx	@dptr,a
   1102 02 10 53           4627 	ljmp	00105$
   1105                    4628 00107$:
                           4629 ;	main.c:471: printf_tiny("\r\n");
                           4630 ;	genIpush
   1105 74 4E              4631 	mov	a,#__str_2
   1107 C0 E0              4632 	push	acc
   1109 74 25              4633 	mov	a,#(__str_2 >> 8)
   110B C0 E0              4634 	push	acc
                           4635 ;	genCall
   110D 12 14 87           4636 	lcall	_printf_tiny
   1110 15 81              4637 	dec	sp
   1112 15 81              4638 	dec	sp
                           4639 ;	Peephole 300	removed redundant label 00108$
   1114 22                 4640 	ret
                           4641 ;------------------------------------------------------------
                           4642 ;Allocation info for local variables in function 'buffer_free'
                           4643 ;------------------------------------------------------------
                           4644 ;------------------------------------------------------------
                           4645 ;	main.c:475: void buffer_free()
                           4646 ;	-----------------------------------------
                           4647 ;	 function buffer_free
                           4648 ;	-----------------------------------------
   1115                    4649 _buffer_free:
                           4650 ;	main.c:477: for(i=0;i<num_buffers;i++) //free all the buffers created
                           4651 ;	genAssign
   1115 90 0C 71           4652 	mov	dptr,#_i
   1118 E4                 4653 	clr	a
   1119 F0                 4654 	movx	@dptr,a
   111A A3                 4655 	inc	dptr
   111B F0                 4656 	movx	@dptr,a
   111C                    4657 00101$:
                           4658 ;	genAssign
   111C 90 0C 71           4659 	mov	dptr,#_i
   111F E0                 4660 	movx	a,@dptr
   1120 FA                 4661 	mov	r2,a
   1121 A3                 4662 	inc	dptr
   1122 E0                 4663 	movx	a,@dptr
   1123 FB                 4664 	mov	r3,a
                           4665 ;	genAssign
   1124 90 09 FC           4666 	mov	dptr,#_num_buffers
   1127 E0                 4667 	movx	a,@dptr
   1128 FC                 4668 	mov	r4,a
   1129 A3                 4669 	inc	dptr
   112A E0                 4670 	movx	a,@dptr
   112B FD                 4671 	mov	r5,a
                           4672 ;	genCmpLt
                           4673 ;	genCmp
   112C C3                 4674 	clr	c
   112D EA                 4675 	mov	a,r2
   112E 9C                 4676 	subb	a,r4
   112F EB                 4677 	mov	a,r3
   1130 9D                 4678 	subb	a,r5
                           4679 ;	genIfxJump
                           4680 ;	Peephole 112.b	changed ljmp to sjmp
                           4681 ;	Peephole 160.b	removed sjmp by inverse jump logic
   1131 50 71              4682 	jnc	00104$
                           4683 ;	Peephole 300	removed redundant label 00109$
                           4684 ;	main.c:479: free(buffer_array[i]);
                           4685 ;	genAssign
   1133 90 0C B7           4686 	mov	dptr,#__mulint_PARM_2
   1136 74 03              4687 	mov	a,#0x03
   1138 F0                 4688 	movx	@dptr,a
   1139 E4                 4689 	clr	a
   113A A3                 4690 	inc	dptr
   113B F0                 4691 	movx	@dptr,a
                           4692 ;	genCall
   113C 8A 82              4693 	mov	dpl,r2
   113E 8B 83              4694 	mov	dph,r3
   1140 12 15 8F           4695 	lcall	__mulint
   1143 AA 82              4696 	mov	r2,dpl
   1145 AB 83              4697 	mov	r3,dph
                           4698 ;	genPlus
                           4699 ;	Peephole 236.g	used r2 instead of ar2
   1147 EA                 4700 	mov	a,r2
   1148 24 00              4701 	add	a,#_buffer_array
   114A F5 82              4702 	mov	dpl,a
                           4703 ;	Peephole 236.g	used r3 instead of ar3
   114C EB                 4704 	mov	a,r3
   114D 34 0A              4705 	addc	a,#(_buffer_array >> 8)
   114F F5 83              4706 	mov	dph,a
                           4707 ;	genPointerGet
                           4708 ;	genFarPointerGet
   1151 E0                 4709 	movx	a,@dptr
   1152 FA                 4710 	mov	r2,a
   1153 A3                 4711 	inc	dptr
   1154 E0                 4712 	movx	a,@dptr
   1155 FB                 4713 	mov	r3,a
   1156 A3                 4714 	inc	dptr
   1157 E0                 4715 	movx	a,@dptr
   1158 FC                 4716 	mov	r4,a
                           4717 ;	genCall
   1159 8A 82              4718 	mov	dpl,r2
   115B 8B 83              4719 	mov	dph,r3
   115D 8C F0              4720 	mov	b,r4
   115F 12 12 5E           4721 	lcall	_free
                           4722 ;	main.c:480: buffer_array[i]='\0';
                           4723 ;	genAssign
   1162 90 0C 71           4724 	mov	dptr,#_i
   1165 E0                 4725 	movx	a,@dptr
   1166 FA                 4726 	mov	r2,a
   1167 A3                 4727 	inc	dptr
   1168 E0                 4728 	movx	a,@dptr
   1169 FB                 4729 	mov	r3,a
                           4730 ;	genAssign
   116A 90 0C B7           4731 	mov	dptr,#__mulint_PARM_2
   116D 74 03              4732 	mov	a,#0x03
   116F F0                 4733 	movx	@dptr,a
   1170 E4                 4734 	clr	a
   1171 A3                 4735 	inc	dptr
   1172 F0                 4736 	movx	@dptr,a
                           4737 ;	genCall
   1173 8A 82              4738 	mov	dpl,r2
   1175 8B 83              4739 	mov	dph,r3
   1177 C0 02              4740 	push	ar2
   1179 C0 03              4741 	push	ar3
   117B 12 15 8F           4742 	lcall	__mulint
   117E AC 82              4743 	mov	r4,dpl
   1180 AD 83              4744 	mov	r5,dph
   1182 D0 03              4745 	pop	ar3
   1184 D0 02              4746 	pop	ar2
                           4747 ;	genPlus
                           4748 ;	Peephole 236.g	used r4 instead of ar4
   1186 EC                 4749 	mov	a,r4
   1187 24 00              4750 	add	a,#_buffer_array
   1189 F5 82              4751 	mov	dpl,a
                           4752 ;	Peephole 236.g	used r5 instead of ar5
   118B ED                 4753 	mov	a,r5
   118C 34 0A              4754 	addc	a,#(_buffer_array >> 8)
   118E F5 83              4755 	mov	dph,a
                           4756 ;	genPointerSet
                           4757 ;     genFarPointerSet
                           4758 ;	Peephole 181	changed mov to clr
                           4759 ;	Peephole 101	removed redundant mov
                           4760 ;	Peephole 181	changed mov to clr
   1190 E4                 4761 	clr	a
   1191 F0                 4762 	movx	@dptr,a
   1192 A3                 4763 	inc	dptr
   1193 F0                 4764 	movx	@dptr,a
   1194 A3                 4765 	inc	dptr
                           4766 ;	Peephole 226.b	removed unnecessary clr
   1195 F0                 4767 	movx	@dptr,a
                           4768 ;	main.c:477: for(i=0;i<num_buffers;i++) //free all the buffers created
                           4769 ;	genPlus
   1196 90 0C 71           4770 	mov	dptr,#_i
                           4771 ;     genPlusIncr
   1199 74 01              4772 	mov	a,#0x01
                           4773 ;	Peephole 236.a	used r2 instead of ar2
   119B 2A                 4774 	add	a,r2
   119C F0                 4775 	movx	@dptr,a
                           4776 ;	Peephole 181	changed mov to clr
   119D E4                 4777 	clr	a
                           4778 ;	Peephole 236.b	used r3 instead of ar3
   119E 3B                 4779 	addc	a,r3
   119F A3                 4780 	inc	dptr
   11A0 F0                 4781 	movx	@dptr,a
   11A1 02 11 1C           4782 	ljmp	00101$
   11A4                    4783 00104$:
                           4784 ;	main.c:482: free(buffer0);
                           4785 ;	genAssign
   11A4 90 0C 7F           4786 	mov	dptr,#_buffer0
   11A7 E0                 4787 	movx	a,@dptr
   11A8 FA                 4788 	mov	r2,a
   11A9 A3                 4789 	inc	dptr
   11AA E0                 4790 	movx	a,@dptr
   11AB FB                 4791 	mov	r3,a
                           4792 ;	genCast
   11AC 7C 00              4793 	mov	r4,#0x0
                           4794 ;	genCall
   11AE 8A 82              4795 	mov	dpl,r2
   11B0 8B 83              4796 	mov	dph,r3
   11B2 8C F0              4797 	mov	b,r4
   11B4 12 12 5E           4798 	lcall	_free
                           4799 ;	main.c:483: free(buffer1);
                           4800 ;	genAssign
   11B7 90 0C 81           4801 	mov	dptr,#_buffer1
   11BA E0                 4802 	movx	a,@dptr
   11BB FA                 4803 	mov	r2,a
   11BC A3                 4804 	inc	dptr
   11BD E0                 4805 	movx	a,@dptr
   11BE FB                 4806 	mov	r3,a
                           4807 ;	genCast
   11BF 7C 00              4808 	mov	r4,#0x0
                           4809 ;	genCall
   11C1 8A 82              4810 	mov	dpl,r2
   11C3 8B 83              4811 	mov	dph,r3
   11C5 8C F0              4812 	mov	b,r4
   11C7 12 12 5E           4813 	lcall	_free
                           4814 ;	main.c:484: printf_tiny("The space allocated to buffers in the heap is freed\n\r");
                           4815 ;	genIpush
   11CA 74 E7              4816 	mov	a,#__str_56
   11CC C0 E0              4817 	push	acc
   11CE 74 2C              4818 	mov	a,#(__str_56 >> 8)
   11D0 C0 E0              4819 	push	acc
                           4820 ;	genCall
   11D2 12 14 87           4821 	lcall	_printf_tiny
   11D5 15 81              4822 	dec	sp
   11D7 15 81              4823 	dec	sp
                           4824 ;	main.c:485: printf_tiny("\n\r");
                           4825 ;	genIpush
   11D9 74 C2              4826 	mov	a,#__str_31
   11DB C0 E0              4827 	push	acc
   11DD 74 29              4828 	mov	a,#(__str_31 >> 8)
   11DF C0 E0              4829 	push	acc
                           4830 ;	genCall
   11E1 12 14 87           4831 	lcall	_printf_tiny
   11E4 15 81              4832 	dec	sp
   11E6 15 81              4833 	dec	sp
                           4834 ;	Peephole 300	removed redundant label 00105$
   11E8 22                 4835 	ret
                           4836 	.area CSEG    (CODE)
                           4837 	.area CONST   (CODE)
   24EB                    4838 __str_0:
   24EB 45 6E 74 65 72 20  4839 	.ascii "Enter the buffer size between 32 and 2400 bytes divisible by"
        74 68 65 20 62 75
        66 66 65 72 20 73
        69 7A 65 20 62 65
        74 77 65 65 6E 20
        33 32 20 61 6E 64
        20 32 34 30 30 20
        62 79 74 65 73 20
        64 69 76 69 73 69
        62 6C 65 20 62 79
   2527 20 38              4840 	.ascii " 8"
   2529 0D                 4841 	.db 0x0D
   252A 0A                 4842 	.db 0x0A
   252B 00                 4843 	.db 0x00
   252C                    4844 __str_1:
   252C 54 68 65 20 62 75  4845 	.ascii "The buffer size you entered is : "
        66 66 65 72 20 73
        69 7A 65 20 79 6F
        75 20 65 6E 74 65
        72 65 64 20 69 73
        20 3A 20
   254D 00                 4846 	.db 0x00
   254E                    4847 __str_2:
   254E 0D                 4848 	.db 0x0D
   254F 0A                 4849 	.db 0x0A
   2550 00                 4850 	.db 0x00
   2551                    4851 __str_3:
   2551 50 6C 65 61 73 65  4852 	.ascii "Please enter a number"
        20 65 6E 74 65 72
        20 61 20 6E 75 6D
        62 65 72
   2566 0D                 4853 	.db 0x0D
   2567 0A                 4854 	.db 0x0A
   2568 00                 4855 	.db 0x00
   2569                    4856 __str_4:
   2569 54 68 65 20 62 75  4857 	.ascii "The buffer size integer value is %d"
        66 66 65 72 20 73
        69 7A 65 20 69 6E
        74 65 67 65 72 20
        76 61 6C 75 65 20
        69 73 20 25 64
   258C 0D                 4858 	.db 0x0D
   258D 0A                 4859 	.db 0x0A
   258E 00                 4860 	.db 0x00
   258F                    4861 __str_5:
   258F 6D 61 6C 6C 6F 63  4862 	.ascii "malloc buffer0 failed, Please enter a smaller size"
        20 62 75 66 66 65
        72 30 20 66 61 69
        6C 65 64 2C 20 50
        6C 65 61 73 65 20
        65 6E 74 65 72 20
        61 20 73 6D 61 6C
        6C 65 72 20 73 69
        7A 65
   25C1 0A                 4863 	.db 0x0A
   25C2 0D                 4864 	.db 0x0D
   25C3 00                 4865 	.db 0x00
   25C4                    4866 __str_6:
   25C4 6D 61 6C 6C 6F 63  4867 	.ascii "malloc buffer1 failed, Please enter a smaller size"
        20 62 75 66 66 65
        72 31 20 66 61 69
        6C 65 64 2C 20 50
        6C 65 61 73 65 20
        65 6E 74 65 72 20
        61 20 73 6D 61 6C
        6C 65 72 20 73 69
        7A 65
   25F6 0A                 4868 	.db 0x0A
   25F7 0D                 4869 	.db 0x0D
   25F8 00                 4870 	.db 0x00
   25F9                    4871 __str_7:
   25F9 6D 61 6C 6C 6F 63  4872 	.ascii "malloc passed for both buffer0 and buffer1"
        20 70 61 73 73 65
        64 20 66 6F 72 20
        62 6F 74 68 20 62
        75 66 66 65 72 30
        20 61 6E 64 20 62
        75 66 66 65 72 31
   2623 0A                 4873 	.db 0x0A
   2624 0D                 4874 	.db 0x0D
   2625 00                 4875 	.db 0x00
   2626                    4876 __str_8:
   2626 0D                 4877 	.db 0x0D
   2627 0A                 4878 	.db 0x0A
   2628 2F 2A 2A 2A 2A 2A  4879 	.ascii "/**********************MENU************************/"
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2A 2A 4D
        45 4E 55 2A 2A 2A
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2F
   265C 0D                 4880 	.db 0x0D
   265D 0A                 4881 	.db 0x0A
   265E 00                 4882 	.db 0x00
   265F                    4883 __str_9:
   265F 54 68 65 20 76 61  4884 	.ascii "The valid command characters with functions are:"
        6C 69 64 20 63 6F
        6D 6D 61 6E 64 20
        63 68 61 72 61 63
        74 65 72 73 20 77
        69 74 68 20 66 75
        6E 63 74 69 6F 6E
        73 20 61 72 65 3A
   268F 0D                 4885 	.db 0x0D
   2690 0A                 4886 	.db 0x0A
   2691 00                 4887 	.db 0x00
   2692                    4888 __str_10:
   2692 20 27 2B 27 20 63  4889 	.ascii " '+' command character ---------- Buffer Add"
        6F 6D 6D 61 6E 64
        20 63 68 61 72 61
        63 74 65 72 20 2D
        2D 2D 2D 2D 2D 2D
        2D 2D 2D 20 42 75
        66 66 65 72 20 41
        64 64
   26BE 0D                 4890 	.db 0x0D
   26BF 0A                 4891 	.db 0x0A
   26C0 00                 4892 	.db 0x00
   26C1                    4893 __str_11:
   26C1 20 27 2D 27 20 63  4894 	.ascii " '-' command character ---------- Buffer Delete"
        6F 6D 6D 61 6E 64
        20 63 68 61 72 61
        63 74 65 72 20 2D
        2D 2D 2D 2D 2D 2D
        2D 2D 2D 20 42 75
        66 66 65 72 20 44
        65 6C 65 74 65
   26F0 0D                 4895 	.db 0x0D
   26F1 0A                 4896 	.db 0x0A
   26F2 00                 4897 	.db 0x00
   26F3                    4898 __str_12:
   26F3 20 27 3F 27 20 63  4899 	.ascii " '?' command character ---------- Heap Report"
        6F 6D 6D 61 6E 64
        20 63 68 61 72 61
        63 74 65 72 20 2D
        2D 2D 2D 2D 2D 2D
        2D 2D 2D 20 48 65
        61 70 20 52 65 70
        6F 72 74
   2720 0D                 4900 	.db 0x0D
   2721 0A                 4901 	.db 0x0A
   2722 00                 4902 	.db 0x00
   2723                    4903 __str_13:
   2723 20 27 3D 27 20 63  4904 	.ascii " '=' command character ---------- Buffer0 Contents in Hex"
        6F 6D 6D 61 6E 64
        20 63 68 61 72 61
        63 74 65 72 20 2D
        2D 2D 2D 2D 2D 2D
        2D 2D 2D 20 42 75
        66 66 65 72 30 20
        43 6F 6E 74 65 6E
        74 73 20 69 6E 20
        48 65 78
   275C 0D                 4905 	.db 0x0D
   275D 0A                 4906 	.db 0x0A
   275E 00                 4907 	.db 0x00
   275F                    4908 __str_14:
   275F 20 27 40 27 20 63  4909 	.ascii " '@' command character ---------- Freeing allocations of all"
        6F 6D 6D 61 6E 64
        20 63 68 61 72 61
        63 74 65 72 20 2D
        2D 2D 2D 2D 2D 2D
        2D 2D 2D 20 46 72
        65 65 69 6E 67 20
        61 6C 6C 6F 63 61
        74 69 6F 6E 73 20
        6F 66 20 61 6C 6C
   279B 20 62 75 66 66 65  4910 	.ascii " buffers"
        72 73
   27A3 0D                 4911 	.db 0x0D
   27A4 0A                 4912 	.db 0x0A
   27A5 00                 4913 	.db 0x00
   27A6                    4914 __str_15:
   27A6 0A                 4915 	.db 0x0A
   27A7 0D                 4916 	.db 0x0D
   27A8 45 6E 74 65 72 20  4917 	.ascii "Enter a character"
        61 20 63 68 61 72
        61 63 74 65 72
   27B9 0A                 4918 	.db 0x0A
   27BA 0D                 4919 	.db 0x0D
   27BB 00                 4920 	.db 0x00
   27BC                    4921 __str_16:
   27BC 54 68 65 20 63 68  4922 	.ascii "The character you entered is : "
        61 72 61 63 74 65
        72 20 79 6F 75 20
        65 6E 74 65 72 65
        64 20 69 73 20 3A
        20
   27DB 00                 4923 	.db 0x00
   27DC                    4924 __str_17:
   27DC 49 74 20 69 73 20  4925 	.ascii "It is a storage character"
        61 20 73 74 6F 72
        61 67 65 20 63 68
        61 72 61 63 74 65
        72
   27F5 0A                 4926 	.db 0x0A
   27F6 0D                 4927 	.db 0x0D
   27F7 00                 4928 	.db 0x00
   27F8                    4929 __str_18:
   27F8 42 75 66 66 65 72  4930 	.ascii "Buffer0 is full, The character you entered will not be store"
        30 20 69 73 20 66
        75 6C 6C 2C 20 54
        68 65 20 63 68 61
        72 61 63 74 65 72
        20 79 6F 75 20 65
        6E 74 65 72 65 64
        20 77 69 6C 6C 20
        6E 6F 74 20 62 65
        20 73 74 6F 72 65
   2834 64 20 69 6E 20 74  4931 	.ascii "d in the buffer"
        68 65 20 62 75 66
        66 65 72
   2843 0D                 4932 	.db 0x0D
   2844 0A                 4933 	.db 0x0A
   2845 00                 4934 	.db 0x00
   2846                    4935 __str_19:
   2846 54 68 65 20 63 68  4936 	.ascii "The character you entered is: "
        61 72 61 63 74 65
        72 20 79 6F 75 20
        65 6E 74 65 72 65
        64 20 69 73 3A 20
   2864 00                 4937 	.db 0x00
   2865                    4938 __str_20:
   2865 69 74 20 69 73 20  4939 	.ascii "it is a command character"
        61 20 63 6F 6D 6D
        61 6E 64 20 63 68
        61 72 61 63 74 65
        72
   287E 0A                 4940 	.db 0x0A
   287F 0D                 4941 	.db 0x0D
   2880 00                 4942 	.db 0x00
   2881                    4943 __str_21:
   2881 4E 6F 20 6D 61 74  4944 	.ascii "No matching command characters"
        63 68 69 6E 67 20
        63 6F 6D 6D 61 6E
        64 20 63 68 61 72
        61 63 74 65 72 73
   289F 0A                 4945 	.db 0x0A
   28A0 0D                 4946 	.db 0x0D
   28A1 00                 4947 	.db 0x00
   28A2                    4948 __str_22:
   28A2 44 65 62 75 67 70  4949 	.ascii "Debugport executed"
        6F 72 74 20 65 78
        65 63 75 74 65 64
   28B4 0D                 4950 	.db 0x0D
   28B5 0A                 4951 	.db 0x0A
   28B6 00                 4952 	.db 0x00
   28B7                    4953 __str_23:
   28B7 42 75 66 66 65 72  4954 	.ascii "Buffer created"
        20 63 72 65 61 74
        65 64
   28C5 0A                 4955 	.db 0x0A
   28C6 0D                 4956 	.db 0x0D
   28C7 00                 4957 	.db 0x00
   28C8                    4958 __str_24:
   28C8 42 75 66 66 65 72  4959 	.ascii "Buffer shifted"
        20 73 68 69 66 74
        65 64
   28D6 0A                 4960 	.db 0x0A
   28D7 0D                 4961 	.db 0x0D
   28D8 00                 4962 	.db 0x00
   28D9                    4963 __str_25:
   28D9 50 6C 65 61 73 65  4964 	.ascii "Please enter a new buffer size between 20 and 400"
        20 65 6E 74 65 72
        20 61 20 6E 65 77
        20 62 75 66 66 65
        72 20 73 69 7A 65
        20 62 65 74 77 65
        65 6E 20 32 30 20
        61 6E 64 20 34 30
        30
   290A 0A                 4965 	.db 0x0A
   290B 0D                 4966 	.db 0x0D
   290C 00                 4967 	.db 0x00
   290D                    4968 __str_26:
   290D 54 68 65 20 62 75  4969 	.ascii "The buffer size you entered is: "
        66 66 65 72 20 73
        69 7A 65 20 79 6F
        75 20 65 6E 74 65
        72 65 64 20 69 73
        3A 20
   292D 00                 4970 	.db 0x00
   292E                    4971 __str_27:
   292E 6D 61 6C 6C 6F 63  4972 	.ascii "malloc buffer%d failed, Please enter a smaller size"
        20 62 75 66 66 65
        72 25 64 20 66 61
        69 6C 65 64 2C 20
        50 6C 65 61 73 65
        20 65 6E 74 65 72
        20 61 20 73 6D 61
        6C 6C 65 72 20 73
        69 7A 65
   2961 0A                 4973 	.db 0x0A
   2962 0D                 4974 	.db 0x0D
   2963 00                 4975 	.db 0x00
   2964                    4976 __str_28:
   2964 6D 61 6C 6C 6F 63  4977 	.ascii "malloc passed for buffer%d"
        20 70 61 73 73 65
        64 20 66 6F 72 20
        62 75 66 66 65 72
        25 64
   297E 0A                 4978 	.db 0x0A
   297F 0D                 4979 	.db 0x0D
   2980 00                 4980 	.db 0x00
   2981                    4981 __str_29:
   2981 45 6E 74 65 72 20  4982 	.ascii "Enter a valid buffer number"
        61 20 76 61 6C 69
        64 20 62 75 66 66
        65 72 20 6E 75 6D
        62 65 72
   299C 0A                 4983 	.db 0x0A
   299D 0D                 4984 	.db 0x0D
   299E 00                 4985 	.db 0x00
   299F                    4986 __str_30:
   299F 54 68 65 20 62 75  4987 	.ascii "The buffer number you entered is: "
        66 66 65 72 20 6E
        75 6D 62 65 72 20
        79 6F 75 20 65 6E
        74 65 72 65 64 20
        69 73 3A 20
   29C1 00                 4988 	.db 0x00
   29C2                    4989 __str_31:
   29C2 0A                 4990 	.db 0x0A
   29C3 0D                 4991 	.db 0x0D
   29C4 00                 4992 	.db 0x00
   29C5                    4993 __str_32:
   29C5 45 6E 74 65 72 20  4994 	.ascii "Enter a valid buffer number other than 0"
        61 20 76 61 6C 69
        64 20 62 75 66 66
        65 72 20 6E 75 6D
        62 65 72 20 6F 74
        68 65 72 20 74 68
        61 6E 20 30
   29ED 0A                 4995 	.db 0x0A
   29EE 0D                 4996 	.db 0x0D
   29EF 00                 4997 	.db 0x00
   29F0                    4998 __str_33:
   29F0 42 75 66 66 65 72  4999 	.ascii "Buffer%d deleted"
        25 64 20 64 65 6C
        65 74 65 64
   2A00 0A                 5000 	.db 0x0A
   2A01 0D                 5001 	.db 0x0D
   2A02 00                 5002 	.db 0x00
   2A03                    5003 __str_34:
   2A03 4E 75 6D 62 65 72  5004 	.ascii "Number of storage characters are %d"
        20 6F 66 20 73 74
        6F 72 61 67 65 20
        63 68 61 72 61 63
        74 65 72 73 20 61
        72 65 20 25 64
   2A26 0D                 5005 	.db 0x0D
   2A27 0A                 5006 	.db 0x0A
   2A28 00                 5007 	.db 0x00
   2A29                    5008 __str_35:
   2A29 4E 75 6D 62 65 72  5009 	.ascii "Number of command characters are %d"
        20 6F 66 20 63 6F
        6D 6D 61 6E 64 20
        63 68 61 72 61 63
        74 65 72 73 20 61
        72 65 20 25 64
   2A4C 0D                 5010 	.db 0x0D
   2A4D 0A                 5011 	.db 0x0A
   2A4E 00                 5012 	.db 0x00
   2A4F                    5013 __str_36:
   2A4F 54 68 65 72 65 20  5014 	.ascii "There are %d buffers in the heap"
        61 72 65 20 25 64
        20 62 75 66 66 65
        72 73 20 69 6E 20
        74 68 65 20 68 65
        61 70
   2A6F 0D                 5015 	.db 0x0D
   2A70 0A                 5016 	.db 0x0A
   2A71 00                 5017 	.db 0x00
   2A72                    5018 __str_37:
   2A72 54 68 65 20 62 75  5019 	.ascii "The buffers currently in heap are:"
        66 66 65 72 73 20
        63 75 72 72 65 6E
        74 6C 79 20 69 6E
        20 68 65 61 70 20
        61 72 65 3A
   2A94 0D                 5020 	.db 0x0D
   2A95 0A                 5021 	.db 0x0A
   2A96 00                 5022 	.db 0x00
   2A97                    5023 __str_38:
   2A97 5B 25 64 5D 20 62  5024 	.ascii "[%d] buffer%d"
        75 66 66 65 72 25
        64
   2AA4 0D                 5025 	.db 0x0D
   2AA5 0A                 5026 	.db 0x0A
   2AA6 00                 5027 	.db 0x00
   2AA7                    5028 __str_39:
   2AA7 52 65 70 6F 72 74  5029 	.ascii "Report of each buffer in the heap:"
        20 6F 66 20 65 61
        63 68 20 62 75 66
        66 65 72 20 69 6E
        20 74 68 65 20 68
        65 61 70 3A
   2AC9 0D                 5030 	.db 0x0D
   2ACA 0A                 5031 	.db 0x0A
   2ACB 00                 5032 	.db 0x00
   2ACC                    5033 __str_40:
   2ACC 42 75 66 66 65 72  5034 	.ascii "Buffer%d report:"
        25 64 20 72 65 70
        6F 72 74 3A
   2ADC 0D                 5035 	.db 0x0D
   2ADD 0A                 5036 	.db 0x0A
   2ADE 00                 5037 	.db 0x00
   2ADF                    5038 __str_41:
   2ADF 53 69 7A 65 20 6F  5039 	.ascii "Size of Buffer%d is %d"
        66 20 42 75 66 66
        65 72 25 64 20 69
        73 20 25 64
   2AF5 0D                 5040 	.db 0x0D
   2AF6 0A                 5041 	.db 0x0A
   2AF7 00                 5042 	.db 0x00
   2AF8                    5043 __str_42:
   2AF8 53 74 61 72 74 69  5044 	.ascii "Starting address of Buffer%d is %d"
        6E 67 20 61 64 64
        72 65 73 73 20 6F
        66 20 42 75 66 66
        65 72 25 64 20 69
        73 20 25 64
   2B1A 0D                 5045 	.db 0x0D
   2B1B 0A                 5046 	.db 0x0A
   2B1C 00                 5047 	.db 0x00
   2B1D                    5048 __str_43:
   2B1D 45 6E 64 69 6E 67  5049 	.ascii "Ending address of Buffer%d is %d"
        20 61 64 64 72 65
        73 73 20 6F 66 20
        42 75 66 66 65 72
        25 64 20 69 73 20
        25 64
   2B3D 0D                 5050 	.db 0x0D
   2B3E 0A                 5051 	.db 0x0A
   2B3F 00                 5052 	.db 0x00
   2B40                    5053 __str_44:
   2B40 46 72 65 65 20 73  5054 	.ascii "Free space in Buffer%d is %d"
        70 61 63 65 20 69
        6E 20 42 75 66 66
        65 72 25 64 20 69
        73 20 25 64
   2B5C 0D                 5055 	.db 0x0D
   2B5D 0A                 5056 	.db 0x0A
   2B5E 00                 5057 	.db 0x00
   2B5F                    5058 __str_45:
   2B5F 4E 75 6D 62 65 72  5059 	.ascii "Number of storage characters in buffer%d are %d"
        20 6F 66 20 73 74
        6F 72 61 67 65 20
        63 68 61 72 61 63
        74 65 72 73 20 69
        6E 20 62 75 66 66
        65 72 25 64 20 61
        72 65 20 25 64
   2B8E 0D                 5060 	.db 0x0D
   2B8F 0A                 5061 	.db 0x0A
   2B90 00                 5062 	.db 0x00
   2B91                    5063 __str_46:
   2B91 54 68 65 20 73 74  5064 	.ascii "The storage characters are:"
        6F 72 61 67 65 20
        63 68 61 72 61 63
        74 65 72 73 20 61
        72 65 3A
   2BAC 0D                 5065 	.db 0x0D
   2BAD 0A                 5066 	.db 0x0A
   2BAE 00                 5067 	.db 0x00
   2BAF                    5068 __str_47:
   2BAF 42 75 66 66 65 72  5069 	.ascii "Buffer0 is emptied"
        30 20 69 73 20 65
        6D 70 74 69 65 64
   2BC1 0D                 5070 	.db 0x0D
   2BC2 0A                 5071 	.db 0x0A
   2BC3 00                 5072 	.db 0x00
   2BC4                    5073 __str_48:
   2BC4 42 75 66 66 65 72  5074 	.ascii "Buffer0 is already empty"
        30 20 69 73 20 61
        6C 72 65 61 64 79
        20 65 6D 70 74 79
   2BDC 0D                 5075 	.db 0x0D
   2BDD 0A                 5076 	.db 0x0A
   2BDE 00                 5077 	.db 0x00
   2BDF                    5078 __str_49:
   2BDF 54 68 65 72 65 20  5079 	.ascii "There are no storage characters in buffer%d"
        61 72 65 20 6E 6F
        20 73 74 6F 72 61
        67 65 20 63 68 61
        72 61 63 74 65 72
        73 20 69 6E 20 62
        75 66 66 65 72 25
        64
   2C0A 0D                 5080 	.db 0x0D
   2C0B 0A                 5081 	.db 0x0A
   2C0C 00                 5082 	.db 0x00
   2C0D                    5083 __str_50:
   2C0D 2A 2A 2A 2A 2A 2A  5084 	.ascii "************************************************************"
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2A 2A 2A
        2A 2A 2A 2A 2A 2A
   2C49 2A 2A 2A 2A 2A 2A  5085 	.ascii "*******"
        2A
   2C50 0A                 5086 	.db 0x0A
   2C51 0D                 5087 	.db 0x0D
   2C52 00                 5088 	.db 0x00
   2C53                    5089 __str_51:
   2C53 4E 75 6D 62 65 72  5090 	.ascii "Number of characters received since last '?' command is %d"
        20 6F 66 20 63 68
        61 72 61 63 74 65
        72 73 20 72 65 63
        65 69 76 65 64 20
        73 69 6E 63 65 20
        6C 61 73 74 20 27
        3F 27 20 63 6F 6D
        6D 61 6E 64 20 69
        73 20 25 64
   2C8D 0D                 5091 	.db 0x0D
   2C8E 0A                 5092 	.db 0x0A
   2C8F 00                 5093 	.db 0x00
   2C90                    5094 __str_52:
   2C90 48 65 78 20 76 61  5095 	.ascii "Hex values in Buffer 0 are:"
        6C 75 65 73 20 69
        6E 20 42 75 66 66
        65 72 20 30 20 61
        72 65 3A
   2CAB 0D                 5096 	.db 0x0D
   2CAC 0A                 5097 	.db 0x0A
   2CAD 00                 5098 	.db 0x00
   2CAE                    5099 __str_53:
   2CAE 54 68 65 72 65 20  5100 	.ascii "There are no storage characters in Buffer0"
        61 72 65 20 6E 6F
        20 73 74 6F 72 61
        67 65 20 63 68 61
        72 61 63 74 65 72
        73 20 69 6E 20 42
        75 66 66 65 72 30
   2CD8 0D                 5101 	.db 0x0D
   2CD9 0A                 5102 	.db 0x0A
   2CDA 00                 5103 	.db 0x00
   2CDB                    5104 __str_54:
   2CDB 25 30 34 58 3A     5105 	.ascii "%04X:"
   2CE0 00                 5106 	.db 0x00
   2CE1                    5107 __str_55:
   2CE1 25 30 32 58        5108 	.ascii "%02X"
   2CE5 09                 5109 	.db 0x09
   2CE6 00                 5110 	.db 0x00
   2CE7                    5111 __str_56:
   2CE7 54 68 65 20 73 70  5112 	.ascii "The space allocated to buffers in the heap is freed"
        61 63 65 20 61 6C
        6C 6F 63 61 74 65
        64 20 74 6F 20 62
        75 66 66 65 72 73
        20 69 6E 20 74 68
        65 20 68 65 61 70
        20 69 73 20 66 72
        65 65 64
   2D1A 0A                 5113 	.db 0x0A
   2D1B 0D                 5114 	.db 0x0D
   2D1C 00                 5115 	.db 0x00
                           5116 	.area XINIT   (CODE)
   2D28                    5117 __xinit__result:
   2D28 00 00              5118 	.byte #0x00,#0x00
   2D2A                    5119 __xinit__storage_count:
   2D2A 00 00              5120 	.byte #0x00,#0x00
   2D2C                    5121 __xinit__command_count:
   2D2C 00 00              5122 	.byte #0x00,#0x00
