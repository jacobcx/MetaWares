#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"PduR_Lcfg.c"
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
	.0byte		.L63
	.section	.text_vle
	.type		PduR_LTtoPCHashValue,@object
	.size		PduR_LTtoPCHashValue,4
	.align		2
	.globl		PduR_LTtoPCHashValue
PduR_LTtoPCHashValue:
	.long		212217955
	.section	.text_vle
	.type		PduR_LTHashValue,@object
	.size		PduR_LTHashValue,4
	.align		2
	.globl		PduR_LTHashValue
PduR_LTHashValue:
	.long		-1554277896
	.section	.text_vle
#$$ld
.L5:
.L68:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_Types.h"
.L44:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\PduR_Lcfg.c"
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
	.uleb128	3
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
	.uleb128	4
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
	.uleb128	5
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
	.uleb128	6
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\PduR_Lcfg.c"
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
.L43:
	.sleb128	2
	.byte		0x1
	.4byte		.L44
	.uleb128	33
	.uleb128	31
	.byte		"PduR_Status"
	.byte		0
	.4byte		.L45
	.sleb128	5
	.byte		0x3
	.4byte		PduR_Status
	.0byte		.L43
	.comm		PduR_Status,4,2
.L47:
	.sleb128	2
	.byte		0x1
	.4byte		.L44
	.uleb128	35
	.uleb128	51
	.byte		"PduR_Main"
	.byte		0
	.4byte		.L48
	.sleb128	5
	.byte		0x3
	.4byte		PduR_Main
	.comm		PduR_Main,4,2
.L52:
	.sleb128	2
	.byte		0x1
	.4byte		.L44
	.uleb128	38
	.uleb128	75
	.byte		"RoutingArraysRef"
	.byte		0
	.4byte		.L53
	.sleb128	5
	.byte		0x3
	.4byte		RoutingArraysRef
	.comm		RoutingArraysRef,4,2
.L58:
	.sleb128	2
	.byte		0x1
	.4byte		.L44
	.uleb128	41
	.uleb128	41
	.byte		"RoutingArraysSizeRef"
	.byte		0
	.4byte		.L59
	.sleb128	5
	.byte		0x3
	.4byte		RoutingArraysSizeRef
	.comm		RoutingArraysSizeRef,4,2
.L63:
	.sleb128	2
	.byte		0x1
	.4byte		.L44
	.uleb128	62
	.uleb128	27
	.byte		"PduR_LTtoPCHashValue"
	.byte		0
	.4byte		.L64
	.sleb128	5
	.byte		0x3
	.4byte		PduR_LTtoPCHashValue
	.section	.debug_info,,n
	.section	.debug_info,,n
.L67:
	.sleb128	2
	.byte		0x1
	.4byte		.L44
	.uleb128	65
	.uleb128	27
	.byte		"PduR_LTHashValue"
	.byte		0
	.4byte		.L64
	.sleb128	5
	.byte		0x3
	.4byte		PduR_LTHashValue
	.section	.debug_info,,n
.L51:
	.sleb128	3
	.4byte		.L68
	.uleb128	53
	.uleb128	1
	.4byte		.L69-.L2
	.uleb128	20
	.section	.debug_info,,n
.L38:
	.sleb128	4
	.byte		"ConfigurationId"
	.byte		0
	.4byte		.L70
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L39:
	.sleb128	4
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L71
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L40:
	.sleb128	4
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L71
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L41:
	.sleb128	4
	.byte		"RoutingArraysCfg"
	.byte		0
	.4byte		.L72
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L42:
	.sleb128	4
	.byte		"RoutingArraysSizesCfg"
	.byte		0
	.4byte		.L73
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L69:
	.section	.debug_info,,n
.L46:
	.sleb128	5
	.4byte		.L68
	.uleb128	53
	.uleb128	1
	.4byte		.L74-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	6
	.byte		"PDUR_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	6
	.byte		"PDUR_ONLINE"
	.byte		0
	.sleb128	1
	.sleb128	6
	.byte		"PDUR_REDUCED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L74:
	.section	.debug_info,,n
.L45:
	.sleb128	7
	.byte		"PduR_StateType"
	.byte		0
	.4byte		.L46
.L50:
	.sleb128	7
	.byte		"PduR_PBConfigType"
	.byte		0
	.4byte		.L51
	.section	.debug_info,,n
.L49:
	.sleb128	8
	.4byte		.L50
	.section	.debug_info,,n
.L48:
	.sleb128	9
	.4byte		.L49
	.section	.debug_info,,n
.L57:
	.sleb128	10
	.byte		"void"
	.byte		0
	.byte		0x0
.L56:
	.sleb128	8
	.4byte		.L57
.L55:
	.sleb128	9
	.4byte		.L56
.L54:
	.sleb128	8
	.4byte		.L55
.L53:
	.sleb128	9
	.4byte		.L54
	.section	.debug_info,,n
.L62:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L61:
	.sleb128	7
	.byte		"uint16"
	.byte		0
	.4byte		.L62
.L60:
	.sleb128	8
	.4byte		.L61
.L59:
	.sleb128	9
	.4byte		.L60
.L66:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L65:
	.sleb128	7
	.byte		"uint32"
	.byte		0
	.4byte		.L66
.L64:
	.sleb128	8
	.4byte		.L65
.L70:
	.sleb128	7
	.byte		"PduR_PBConfigIdType"
	.byte		0
	.4byte		.L65
.L71:
	.sleb128	9
	.4byte		.L64
.L72:
	.sleb128	8
	.4byte		.L53
.L73:
	.sleb128	8
	.4byte		.L59
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\PduR_Lcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\PduR_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\PduR_Lcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\PduR_Lcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\PduR_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\PduR_Lcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\PduR_Lcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
