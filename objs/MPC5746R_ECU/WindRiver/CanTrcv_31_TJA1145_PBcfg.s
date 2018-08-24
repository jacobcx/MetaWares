#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTrcv_31_TJA1145_PBcfg.c"
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
	.0byte		.L531
	.section	.text_vle
	.type		CANTRCV_31_TJA1145_PBtoPCHashValue,@object
	.size		CANTRCV_31_TJA1145_PBtoPCHashValue,4
	.align		2
CANTRCV_31_TJA1145_PBtoPCHashValue:
	.long		-1908460700
	.section	.text_vle
	.type		CANTRCV_31_TJA1145_PBtoLTHashValue,@object
	.size		CANTRCV_31_TJA1145_PBtoLTHashValue,4
	.align		2
CANTRCV_31_TJA1145_PBtoLTHashValue:
	.long		2011945630
	.section	.text_vle
	.type		CanTrcv_31_TJA1145_PbConfig_a,@object
	.size		CanTrcv_31_TJA1145_PbConfig_a,4
	.align		0
CanTrcv_31_TJA1145_PbConfig_a:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.section	.text_vle
	.type		CanTrcvConfigSet,@object
	.size		CanTrcvConfigSet,12
	.align		2
	.globl		CanTrcvConfigSet
CanTrcvConfigSet:
	.long		CanTrcv_31_TJA1145_PbConfig_a
	.long		CANTRCV_31_TJA1145_PBtoPCHashValue
	.long		CANTRCV_31_TJA1145_PBtoLTHashValue
	.section	.text_vle
#$$ld
.L5:
.L547:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Spi.h"
.L532:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\CanTrcv_31_TJA1145_PBcfg.c"
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
	.uleb128	7
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	8
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\CanTrcv_31_TJA1145_PBcfg.c"
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
.L531:
	.sleb128	2
	.4byte		.L532
	.uleb128	90
	.uleb128	49
	.byte		"CANTRCV_31_TJA1145_PBtoPCHashValue"
	.byte		0
	.4byte		.L533
	.sleb128	5
	.byte		0x3
	.4byte		CANTRCV_31_TJA1145_PBtoPCHashValue
	.section	.debug_info,,n
	.section	.debug_info,,n
.L536:
	.sleb128	2
	.4byte		.L532
	.uleb128	93
	.uleb128	49
	.byte		"CANTRCV_31_TJA1145_PBtoLTHashValue"
	.byte		0
	.4byte		.L533
	.sleb128	5
	.byte		0x3
	.4byte		CANTRCV_31_TJA1145_PBtoLTHashValue
	.section	.debug_info,,n
.L537:
	.sleb128	2
	.4byte		.L532
	.uleb128	111
	.uleb128	73
	.byte		"CanTrcv_31_TJA1145_PbConfig_a"
	.byte		0
	.4byte		.L538
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_TJA1145_PbConfig_a
	.section	.debug_info,,n
.L543:
	.sleb128	3
	.byte		0x1
	.4byte		.L532
	.uleb128	167
	.uleb128	65
	.byte		"CanTrcvConfigSet"
	.byte		0
	.4byte		.L544
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcvConfigSet
	.section	.debug_info,,n
.L546:
	.sleb128	4
	.4byte		.L547
	.uleb128	495
	.uleb128	1
	.4byte		.L548-.L2
	.uleb128	12
	.section	.debug_info,,n
.L504:
	.sleb128	5
	.byte		"PbConfig_pc"
	.byte		0
	.4byte		.L549
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L505:
	.sleb128	5
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L550
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L506:
	.sleb128	5
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L550
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L548:
.L542:
	.sleb128	4
	.4byte		.L547
	.uleb128	495
	.uleb128	1
	.4byte		.L551-.L2
	.uleb128	2
.L502:
	.sleb128	5
	.byte		"CanTrcvWakeOnRisingEdge"
	.byte		0
	.4byte		.L552
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L503:
	.sleb128	5
	.byte		"CanTrcvWakeOnFallingEdge"
	.byte		0
	.4byte		.L552
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L551:
	.section	.debug_info,,n
.L535:
	.sleb128	6
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L534:
	.sleb128	7
	.byte		"uint32"
	.byte		0
	.4byte		.L535
	.section	.debug_info,,n
.L533:
	.sleb128	8
	.4byte		.L534
.L541:
	.sleb128	7
	.byte		"CanTrcv_31_TJA1145_PbConfigType"
	.byte		0
	.4byte		.L542
.L540:
	.sleb128	8
	.4byte		.L541
	.section	.debug_info,,n
.L538:
	.sleb128	9
	.4byte		.L539-.L2
	.4byte		.L540
	.section	.debug_info,,n
	.sleb128	10
	.uleb128	1
	.sleb128	0
.L539:
.L545:
	.sleb128	7
	.byte		"CanTrcv_31_TJA1145_ConfigType"
	.byte		0
	.4byte		.L546
.L544:
	.sleb128	8
	.4byte		.L545
	.section	.debug_info,,n
.L549:
	.sleb128	11
	.4byte		.L540
.L550:
	.sleb128	11
	.4byte		.L533
.L554:
	.sleb128	6
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L553:
	.sleb128	7
	.byte		"boolean"
	.byte		0
	.4byte		.L554
.L552:
	.sleb128	8
	.4byte		.L553
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
