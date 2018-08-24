#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Lin_PBcfg.c"
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
	.section	.mcal_const_cfg,,r
	.0byte		.L393
	.section	.mcal_const_cfg,,r
	.type		Lin_LinChannel_SBC_C,@object
	.size		Lin_LinChannel_SBC_C,20
	.align		2
	.globl		Lin_LinChannel_SBC_C
Lin_LinChannel_SBC_C:
	.byte		0
	.byte		3
	.space		2
	.long		83208
	.short		0
	.space		2
	.long		1
	.byte		3
	.space		3
	.section	.mcal_const_cfg,,r
	.0byte		.L398
	.section	.mcal_const_cfg,,r
	.type		LinGlobalConfig,@object
	.size		LinGlobalConfig,8
	.align		2
	.globl		LinGlobalConfig
LinGlobalConfig:
	.byte		1
	.space		3
	.long		Lin_LinChannel_SBC_C
	.section	.text_vle
#$$ld
.L5:
.L402:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L394:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\src\\Lin_PBcfg.c"
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
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	6
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
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
	.uleb128	8
	.uleb128	15
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\src\\Lin_PBcfg.c"
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
.L393:
	.sleb128	2
	.byte		0x1
	.4byte		.L394
	.uleb128	216
	.uleb128	40
	.byte		"Lin_LinChannel_SBC_C"
	.byte		0
	.4byte		.L395
	.sleb128	5
	.byte		0x3
	.4byte		Lin_LinChannel_SBC_C
	.section	.debug_info,,n
	.section	.debug_info,,n
.L398:
	.sleb128	2
	.byte		0x1
	.4byte		.L394
	.uleb128	238
	.uleb128	32
	.byte		"LinGlobalConfig"
	.byte		0
	.4byte		.L399
	.sleb128	5
	.byte		0x3
	.4byte		LinGlobalConfig
	.section	.debug_info,,n
	.section	.debug_info,,n
.L401:
	.sleb128	3
	.4byte		.L402
	.uleb128	34
	.uleb128	14
	.4byte		.L403-.L2
	.uleb128	8
	.section	.debug_info,,n
.L391:
	.sleb128	4
	.byte		"u8Lin_MaxHWChannels"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L392:
	.sleb128	4
	.byte		"pLin_Channel"
	.byte		0
	.4byte		.L407
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L403:
.L397:
	.sleb128	3
	.4byte		.L402
	.uleb128	34
	.uleb128	14
	.4byte		.L411-.L2
	.uleb128	20
.L385:
	.sleb128	4
	.byte		"u8LinChannelID"
	.byte		0
	.4byte		.L405
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L386:
	.sleb128	4
	.byte		"u8LinHwChannel"
	.byte		0
	.4byte		.L405
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L387:
	.sleb128	4
	.byte		"u32Lin_BaudRate_RegValue"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L388:
	.sleb128	4
	.byte		"u16LinChannelWakeupSupport"
	.byte		0
	.4byte		.L414
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L389:
	.sleb128	4
	.byte		"LinChannelEcuMWakeupSource"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L390:
	.sleb128	4
	.byte		"u8LinChannelBreakLength"
	.byte		0
	.4byte		.L405
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L411:
	.section	.debug_info,,n
.L396:
	.sleb128	5
	.byte		"Lin_ChannelConfigType"
	.byte		0
	.4byte		.L397
	.section	.debug_info,,n
.L395:
	.sleb128	6
	.4byte		.L396
.L400:
	.sleb128	5
	.byte		"Lin_ConfigType"
	.byte		0
	.4byte		.L401
.L399:
	.sleb128	6
	.4byte		.L400
	.section	.debug_info,,n
.L406:
	.sleb128	7
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L405:
	.sleb128	5
	.byte		"uint8"
	.byte		0
	.4byte		.L406
.L404:
	.sleb128	6
	.4byte		.L405
	.section	.debug_info,,n
.L410:
	.sleb128	8
	.4byte		.L395
.L409:
	.sleb128	6
	.4byte		.L410
	.section	.debug_info,,n
.L407:
	.sleb128	9
	.4byte		.L408-.L2
	.4byte		.L409
	.section	.debug_info,,n
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L408:
.L413:
	.sleb128	7
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L412:
	.sleb128	5
	.byte		"uint32"
	.byte		0
	.4byte		.L413
.L415:
	.sleb128	7
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L414:
	.sleb128	5
	.byte		"uint16"
	.byte		0
	.4byte		.L415
.L416:
	.sleb128	5
	.byte		"EcuM_WakeupSourceType"
	.byte		0
	.4byte		.L412
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Lin_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Lin_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Lin_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Lin_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Lin_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Lin_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\src\Lin_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
