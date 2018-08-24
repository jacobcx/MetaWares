#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinTrcv_31_UJA1132_Lcfg.c"
#$$dg 1
	.section	.PPC.EMB.apuinfo,,@note
	.4byte		8
	.4byte		8+4
	.4byte		2
	.byte		"APUinfo"
	.byte		0
	.align		2
	.4byte		0x01040001
	.4byte		0x00400001
	.4byte		0x01010001

	.section	.text_vle
	.section	.debug_line,,n
.L8:
	.section	.text_vle
#$$ld
.L4:
	.0byte		.L2
	.d2_line_start	.debug_line
	.section	.text_vle

# Allocations for module
	.section	.text_vle
	.0byte		.L498
	.section	.text_vle
	.type		LinTrcvConfig_a,@object
	.size		LinTrcvConfig_a,12
	.align		2
LinTrcvConfig_a:
	.byte		0
	.byte		0
	.space		2
	.long		0
	.byte		0
	.byte		0
	.short		13
	.section	.text_vle
	.type		LinTrcv_31_UJA1132_Status_p,@object
	.size		LinTrcv_31_UJA1132_Status_p,4
	.align		2
	.globl		LinTrcv_31_UJA1132_Status_p
LinTrcv_31_UJA1132_Status_p:
	.long		LinTrcvStatus_a
	.section	.text_vle
	.type		LinTrcv_31_UJA1132_ConfigPtr,@object
	.size		LinTrcv_31_UJA1132_ConfigPtr,4
	.align		2
	.globl		LinTrcv_31_UJA1132_ConfigPtr
LinTrcv_31_UJA1132_ConfigPtr:
	.long		LinTrcvConfig_a
	.section	.text_vle
	.type		LinTrcv_31_UJA1132_NumChannels,@object
	.size		LinTrcv_31_UJA1132_NumChannels,1
	.align		0
	.globl		LinTrcv_31_UJA1132_NumChannels
LinTrcv_31_UJA1132_NumChannels:
	.byte		1
	.section	.text_vle
	.type		LinTrcv_31_UJA1132_WaitCount,@object
	.size		LinTrcv_31_UJA1132_WaitCount,4
	.align		2
	.globl		LinTrcv_31_UJA1132_WaitCount
LinTrcv_31_UJA1132_WaitCount:
	.long		0
	.section	.text_vle
	.type		LinTrcv_31_UJA1132_LTtoPCHashValue,@object
	.size		LinTrcv_31_UJA1132_LTtoPCHashValue,4
	.align		2
	.globl		LinTrcv_31_UJA1132_LTtoPCHashValue
LinTrcv_31_UJA1132_LTtoPCHashValue:
	.long		-1577351443
	.section	.text_vle
#$$ld
.L5:
.L525:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L499:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\LinTrcv_31_UJA1132_Lcfg.c"
	.d2_line_end


	.section	.debug_abbrev,,n
.L9:
	.section	.debug_abbrev,,n
	.uleb128	1
	.uleb128	17
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	37
	.uleb128	8
	.uleb128	27
	.uleb128	8
	.uleb128	19
	.uleb128	15
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	16
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	2
	.uleb128	52
	.byte		0x0
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	57
	.uleb128	15
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	2
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	3
	.uleb128	52
	.byte		0x0
	.uleb128	63
	.uleb128	12
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	57
	.uleb128	15
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	2
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	4
	.uleb128	19
	.byte		0x1
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	57
	.uleb128	15
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	5
	.uleb128	13
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	56
	.uleb128	9
	.uleb128	50
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	6
	.uleb128	4
	.byte		0x1
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	57
	.uleb128	15
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	8
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	62
	.uleb128	11
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.sleb128	0


	.section	.debug_info,,n
.L2:
	.4byte		.L3-.L1
.L1:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.section	.debug_info,,n
	.sleb128	1
	.4byte		.L7-.L2
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\LinTrcv_31_UJA1132_Lcfg.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info,,n
.L498:
	.sleb128	2
	.4byte		.L499
	.uleb128	95
	.uleb128	78
	.byte		"LinTrcvConfig_a"
	.byte		0
	.4byte		.L500
	.sleb128	5
	.byte		0x3
	.4byte		LinTrcvConfig_a
	.section	.debug_info,,n
	.section	.debug_info,,n
.L505:
	.sleb128	2
	.4byte		.L499
	.uleb128	124
	.uleb128	75
	.byte		"LinTrcvStatus_a"
	.byte		0
	.4byte		.L506
	.sleb128	5
	.byte		0x3
	.4byte		LinTrcvStatus_a
	.0byte		.L505
	.lcomm		LinTrcvStatus_a,8,2
	.section	.debug_info,,n
.L510:
	.sleb128	3
	.byte		0x1
	.4byte		.L499
	.uleb128	141
	.uleb128	41
	.byte		"LinTrcv_31_UJA1132_Status_p"
	.byte		0
	.4byte		.L511
	.sleb128	5
	.byte		0x3
	.4byte		LinTrcv_31_UJA1132_Status_p
	.section	.debug_info,,n
.L513:
	.sleb128	3
	.byte		0x1
	.4byte		.L499
	.uleb128	143
	.uleb128	89
	.byte		"LinTrcv_31_UJA1132_ConfigPtr"
	.byte		0
	.4byte		.L514
	.sleb128	5
	.byte		0x3
	.4byte		LinTrcv_31_UJA1132_ConfigPtr
	.section	.debug_info,,n
.L516:
	.sleb128	3
	.byte		0x1
	.4byte		.L499
	.uleb128	147
	.uleb128	29
	.byte		"LinTrcv_31_UJA1132_NumChannels"
	.byte		0
	.4byte		.L517
	.sleb128	5
	.byte		0x3
	.4byte		LinTrcv_31_UJA1132_NumChannels
	.section	.debug_info,,n
.L520:
	.sleb128	3
	.byte		0x1
	.4byte		.L499
	.uleb128	157
	.uleb128	30
	.byte		"LinTrcv_31_UJA1132_WaitCount"
	.byte		0
	.4byte		.L521
	.sleb128	5
	.byte		0x3
	.4byte		LinTrcv_31_UJA1132_WaitCount
	.section	.debug_info,,n
.L524:
	.sleb128	3
	.byte		0x1
	.4byte		.L499
	.uleb128	160
	.uleb128	30
	.byte		"LinTrcv_31_UJA1132_LTtoPCHashValue"
	.byte		0
	.4byte		.L521
	.sleb128	5
	.byte		0x3
	.4byte		LinTrcv_31_UJA1132_LTtoPCHashValue
	.section	.debug_info,,n
.L509:
	.sleb128	4
	.4byte		.L525
	.uleb128	59
	.uleb128	13
	.4byte		.L526-.L2
	.uleb128	8
	.section	.debug_info,,n
.L496:
	.sleb128	5
	.byte		"CurrentState"
	.byte		0
	.4byte		.L527
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	5
	.byte		"isInitialised"
	.byte		0
	.4byte		.L529
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L526:
.L504:
	.sleb128	4
	.4byte		.L525
	.uleb128	59
	.uleb128	13
	.4byte		.L530-.L2
	.uleb128	12
.L490:
	.sleb128	5
	.byte		"ChannelId"
	.byte		0
	.4byte		.L517
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L491:
	.sleb128	5
	.byte		"LinTrcvName"
	.byte		0
	.4byte		.L517
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L492:
	.sleb128	5
	.byte		"InitState"
	.byte		0
	.4byte		.L531
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L493:
	.sleb128	5
	.byte		"SpiSeqId"
	.byte		0
	.4byte		.L517
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L494:
	.sleb128	5
	.byte		"LinTrcvSpiChannelId"
	.byte		0
	.4byte		.L517
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L495:
	.sleb128	5
	.byte		"RxDioPin"
	.byte		0
	.4byte		.L532
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L530:
	.section	.debug_info,,n
.L528:
	.sleb128	6
	.4byte		.L525
	.uleb128	59
	.uleb128	13
	.4byte		.L536-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"LINTRCV_TRCV_MODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"LINTRCV_TRCV_MODE_STANDBY"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"LINTRCV_TRCV_MODE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L536:
	.section	.debug_info,,n
.L503:
	.sleb128	8
	.byte		"LinTrcv_31_UJA1132_ChannelConfig"
	.byte		0
	.4byte		.L504
	.section	.debug_info,,n
.L502:
	.sleb128	9
	.4byte		.L503
	.section	.debug_info,,n
.L500:
	.sleb128	10
	.4byte		.L501-.L2
	.4byte		.L502
	.section	.debug_info,,n
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L501:
.L508:
	.sleb128	8
	.byte		"LinTrcv_31_UJA1132_ChannelStatus"
	.byte		0
	.4byte		.L509
.L506:
	.sleb128	10
	.4byte		.L507-.L2
	.4byte		.L508
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L507:
	.section	.debug_info,,n
.L512:
	.sleb128	12
	.4byte		.L508
.L511:
	.sleb128	9
	.4byte		.L512
.L515:
	.sleb128	12
	.4byte		.L502
.L514:
	.sleb128	9
	.4byte		.L515
	.section	.debug_info,,n
.L519:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L518:
	.sleb128	8
	.byte		"uint8"
	.byte		0
	.4byte		.L519
.L517:
	.sleb128	9
	.4byte		.L518
.L523:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L522:
	.sleb128	8
	.byte		"uint32"
	.byte		0
	.4byte		.L523
.L521:
	.sleb128	9
	.4byte		.L522
.L527:
	.sleb128	8
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L528
.L529:
	.sleb128	8
	.byte		"boolean"
	.byte		0
	.4byte		.L519
.L531:
	.sleb128	9
	.4byte		.L527
.L535:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L534:
	.sleb128	8
	.byte		"uint16"
	.byte		0
	.4byte		.L535
.L533:
	.sleb128	8
	.byte		"Dio_ChannelType"
	.byte		0
	.4byte		.L534
.L532:
	.sleb128	9
	.4byte		.L533
.L7:
	.sleb128	0
.L3:
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "tools"
	.wrcm.nelem "llopt"
	.wrcm.nelem "version"
	.wrcm.nstr "string", "5.9.6.4"
	.wrcm.nint32 "number", 5964
	.wrcm.nstr "path", "C:\WindRiver\compilers\diab-5.9.6.4\WIN32\bin\llopt.exe"
	.wrcm.nstr "label", "DIAB_5_9_6_4-FCS_20170817_111028"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "etoa"
	.wrcm.nelem "version"
	.wrcm.nstr "string", "5.9.6.4"
	.wrcm.nint32 "number", 5964
	.wrcm.nstr "path", "C:\WindRiver\compilers\diab-5.9.6.4\WIN32\lib\etoa.exe"
	.wrcm.nstr "label", "DIAB_5_9_6_4-FCS_20170817_111028"
	.wrcm.end
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_Lcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_Lcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_Lcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_Lcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_Lcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
