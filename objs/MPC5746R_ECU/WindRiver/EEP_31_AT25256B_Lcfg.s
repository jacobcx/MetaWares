#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"EEP_31_AT25256B_Lcfg.c"
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
	.0byte		.L589
	.section	.text_vle
	.type		Eep_LcfgConfig,@object
	.size		Eep_LcfgConfig,12
	.align		2
	.globl		Eep_LcfgConfig
Eep_LcfgConfig:
	.long		Eep_TargetLocalDataBuffer
	.byte		3
	.byte		2
	.byte		3
	.byte		4
	.byte		4
	.byte		5
	.byte		5
	.space		1
	.section	.text_vle
	.type		ConstEraseData,@object
	.size		ConstEraseData,64
	.align		2
	.globl		ConstEraseData
ConstEraseData:
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.section	.text_vle
	.type		Eep_31_AT25256B_LTHashValue,@object
	.size		Eep_31_AT25256B_LTHashValue,4
	.align		2
	.globl		Eep_31_AT25256B_LTHashValue
Eep_31_AT25256B_LTHashValue:
	.long		163342455
	.section	.text_vle
	.type		Eep_31_AT25256B_LTtoPCHashValue,@object
	.size		Eep_31_AT25256B_LTtoPCHashValue,4
	.align		2
	.globl		Eep_31_AT25256B_LTtoPCHashValue
Eep_31_AT25256B_LTtoPCHashValue:
	.long		-2134304290
	.section	.text_vle
#$$ld
.L5:
.L602:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\Mentor\\Eep_31_AT25256B\\ssc\\make\\..\\inc\\Eep_31_AT25256B_IntTypes.h"
.L584:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\EEP_31_AT25256B_Lcfg.c"
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\EEP_31_AT25256B_Lcfg.c"
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
.L583:
	.sleb128	2
	.4byte		.L584
	.uleb128	54
	.uleb128	28
	.byte		"Eep_TargetLocalDataBuffer"
	.byte		0
	.4byte		.L585
	.sleb128	5
	.byte		0x3
	.4byte		Eep_TargetLocalDataBuffer
	.0byte		.L583
	.lcomm		Eep_TargetLocalDataBuffer,64,2
	.section	.debug_info,,n
.L589:
	.sleb128	3
	.byte		0x1
	.4byte		.L584
	.uleb128	63
	.uleb128	32
	.byte		"Eep_LcfgConfig"
	.byte		0
	.4byte		.L590
	.sleb128	5
	.byte		0x3
	.4byte		Eep_LcfgConfig
	.section	.debug_info,,n
	.section	.debug_info,,n
.L593:
	.sleb128	3
	.byte		0x1
	.4byte		.L584
	.uleb128	75
	.uleb128	25
	.byte		"ConstEraseData"
	.byte		0
	.4byte		.L594
	.sleb128	5
	.byte		0x3
	.4byte		ConstEraseData
	.section	.debug_info,,n
.L597:
	.sleb128	3
	.byte		0x1
	.4byte		.L584
	.uleb128	152
	.uleb128	38
	.byte		"Eep_31_AT25256B_LTHashValue"
	.byte		0
	.4byte		.L598
	.sleb128	5
	.byte		0x3
	.4byte		Eep_31_AT25256B_LTHashValue
	.section	.debug_info,,n
.L601:
	.sleb128	3
	.byte		0x1
	.4byte		.L584
	.uleb128	155
	.uleb128	38
	.byte		"Eep_31_AT25256B_LTtoPCHashValue"
	.byte		0
	.4byte		.L598
	.sleb128	5
	.byte		0x3
	.4byte		Eep_31_AT25256B_LTtoPCHashValue
	.section	.debug_info,,n
.L592:
	.sleb128	4
	.4byte		.L602
	.uleb128	114
	.uleb128	1
	.4byte		.L603-.L2
	.byte		"Eep_LcfgType_Tag"
	.byte		0
	.uleb128	12
	.section	.debug_info,,n
.L475:
	.sleb128	5
	.byte		"Eep_TargetLocalDataBufferPtr"
	.byte		0
	.4byte		.L604
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L476:
	.sleb128	5
	.byte		"ReadSequenceID"
	.byte		0
	.4byte		.L605
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L477:
	.sleb128	5
	.byte		"CommandAddressChlID"
	.byte		0
	.4byte		.L606
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L478:
	.sleb128	5
	.byte		"DataChlID"
	.byte		0
	.4byte		.L606
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L479:
	.sleb128	5
	.byte		"WriteEraseSequenceID"
	.byte		0
	.4byte		.L605
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L480:
	.sleb128	5
	.byte		"WriteEnableLatchChlID"
	.byte		0
	.4byte		.L606
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L481:
	.sleb128	5
	.byte		"ReadStatusRegSequenceID"
	.byte		0
	.4byte		.L605
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L482:
	.sleb128	5
	.byte		"ReadStatusRegChlID"
	.byte		0
	.4byte		.L606
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L603:
	.section	.debug_info,,n
.L588:
	.sleb128	6
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L587:
	.sleb128	7
	.byte		"uint8"
	.byte		0
	.4byte		.L588
	.section	.debug_info,,n
.L585:
	.sleb128	8
	.4byte		.L586-.L2
	.4byte		.L587
	.section	.debug_info,,n
	.sleb128	9
	.uleb128	63
	.sleb128	0
.L586:
.L591:
	.sleb128	7
	.byte		"Eep_LcfgType"
	.byte		0
	.4byte		.L592
	.section	.debug_info,,n
.L590:
	.sleb128	10
	.4byte		.L591
.L596:
	.sleb128	10
	.4byte		.L587
.L594:
	.sleb128	8
	.4byte		.L595-.L2
	.4byte		.L596
	.sleb128	9
	.uleb128	63
	.sleb128	0
.L595:
.L600:
	.sleb128	6
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L599:
	.sleb128	7
	.byte		"uint32"
	.byte		0
	.4byte		.L600
.L598:
	.sleb128	10
	.4byte		.L599
	.section	.debug_info,,n
.L604:
	.sleb128	11
	.4byte		.L587
.L605:
	.sleb128	7
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L587
.L606:
	.sleb128	7
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L587
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B_Lcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B_Lcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B_Lcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B_Lcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\EEP_31_AT25256B_Lcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
