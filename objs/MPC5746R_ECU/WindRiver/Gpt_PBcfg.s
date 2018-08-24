#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Gpt_PBcfg.c"
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
	.0byte		.L403
	.section	.mcal_const_cfg,,r
	.type		Gpt_InitChannelPB_0,@object
	.size		Gpt_InitChannelPB_0,56
	.align		2
Gpt_InitChannelPB_0:
	.byte		0
	.space		3
	.long		0
	.long		0
	.long		16777215
	.long		1
	.byte		8
	.byte		72
	.byte		1
	.byte		0
	.byte		0
	.space		3
	.byte		0
	.space		3
	.long		Wdg_Cbk_GptNotification1
	.long		0
	.long		-1
	.long		0
	.byte		8
	.byte		8
	.byte		1
	.byte		0
	.byte		0
	.space		3
	.section	.mcal_const_cfg,,r
	.0byte		.L410
	.section	.mcal_const_cfg,,r
	.type		GptChannelConfigSet,@object
	.size		GptChannelConfigSet,144
	.align		2
	.globl		GptChannelConfigSet
GptChannelConfigSet:
	.byte		2
	.space		3
	.long		Gpt_InitChannelPB_0
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
	.byte		1
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
	.byte		0
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
#$$ld
.L5:
.L439:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L414:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Gpt.h"
.L404:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\src\\Gpt_PBcfg.c"
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
	.uleb128	13
	.uleb128	33
	.byte		0x0
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\src\\Gpt_PBcfg.c"
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
.L403:
	.sleb128	2
	.4byte		.L404
	.uleb128	192
	.uleb128	48
	.byte		"Gpt_InitChannelPB_0"
	.byte		0
	.4byte		.L405
	.sleb128	5
	.byte		0x3
	.4byte		Gpt_InitChannelPB_0
	.section	.debug_info,,n
	.section	.debug_info,,n
.L410:
	.sleb128	3
	.byte		0x1
	.4byte		.L404
	.uleb128	236
	.uleb128	34
	.byte		"GptChannelConfigSet"
	.byte		0
	.4byte		.L411
	.sleb128	5
	.byte		0x3
	.4byte		GptChannelConfigSet
	.section	.debug_info,,n
	.section	.debug_info,,n
.L413:
	.sleb128	4
	.4byte		.L414
	.uleb128	336
	.uleb128	1
	.4byte		.L415-.L2
	.uleb128	144
	.section	.debug_info,,n
.L400:
	.sleb128	5
	.byte		"Gpt_uChannelCount"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L401:
	.sleb128	5
	.byte		"Gpt_pChannelConfig"
	.byte		0
	.4byte		.L420
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L402:
	.sleb128	5
	.byte		"Gpt_aHw2LogicChannelMap"
	.byte		0
	.4byte		.L423
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L415:
.L409:
	.sleb128	4
	.4byte		.L414
	.uleb128	336
	.uleb128	1
	.4byte		.L425-.L2
	.uleb128	28
.L394:
	.sleb128	5
	.byte		"Gpt_bEnableWakeup"
	.byte		0
	.4byte		.L426
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L395:
	.sleb128	5
	.byte		"Gpt_pfNotification"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L396:
	.sleb128	5
	.byte		"Gpt_uWakeupSource"
	.byte		0
	.4byte		.L431
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L397:
	.sleb128	5
	.byte		"Gpt_uChannelTickValueMax"
	.byte		0
	.4byte		.L434
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L398:
	.sleb128	5
	.byte		"Gpt_eChannelMode"
	.byte		0
	.4byte		.L435
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L399:
	.sleb128	5
	.byte		"Gpt_HwChannelConfig"
	.byte		0
	.4byte		.L437
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L425:
.L438:
	.sleb128	4
	.4byte		.L439
	.uleb128	34
	.uleb128	14
	.4byte		.L440-.L2
	.uleb128	5
.L389:
	.sleb128	5
	.byte		"Gpt_u8HwChannel"
	.byte		0
	.4byte		.L418
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L390:
	.sleb128	5
	.byte		"Gpt_u8HwModule"
	.byte		0
	.4byte		.L418
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L391:
	.sleb128	5
	.byte		"Gpt_bFreezeEnable"
	.byte		0
	.4byte		.L426
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L392:
	.sleb128	5
	.byte		"Gpt_uPrescaler"
	.byte		0
	.4byte		.L441
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L393:
	.sleb128	5
	.byte		"Gpt_uStmClockSource"
	.byte		0
	.4byte		.L441
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L440:
	.section	.debug_info,,n
.L436:
	.sleb128	6
	.4byte		.L414
	.uleb128	336
	.uleb128	1
	.4byte		.L442-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"GPT_CH_MODE_CONTINUOUS"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"GPT_CH_MODE_ONESHOT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L442:
	.section	.debug_info,,n
.L408:
	.sleb128	8
	.byte		"Gpt_ChannelConfigType"
	.byte		0
	.4byte		.L409
	.section	.debug_info,,n
.L407:
	.sleb128	9
	.4byte		.L408
	.section	.debug_info,,n
.L405:
	.sleb128	10
	.4byte		.L406-.L2
	.4byte		.L407
	.section	.debug_info,,n
	.sleb128	11
	.uleb128	1
	.sleb128	0
.L406:
.L412:
	.sleb128	8
	.byte		"Gpt_ConfigType"
	.byte		0
	.4byte		.L413
.L411:
	.sleb128	9
	.4byte		.L412
	.section	.debug_info,,n
.L419:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L418:
	.sleb128	8
	.byte		"uint8"
	.byte		0
	.4byte		.L419
.L417:
	.sleb128	8
	.byte		"Gpt_ChannelType"
	.byte		0
	.4byte		.L418
.L416:
	.sleb128	9
	.4byte		.L417
.L421:
	.sleb128	10
	.4byte		.L422-.L2
	.4byte		.L407
	.section	.debug_info,,n
	.sleb128	13
	.sleb128	0
.L422:
	.section	.debug_info,,n
.L420:
	.sleb128	14
	.4byte		.L421
.L423:
	.sleb128	10
	.4byte		.L424-.L2
	.4byte		.L416
	.sleb128	11
	.uleb128	135
	.sleb128	0
.L424:
.L426:
	.sleb128	8
	.byte		"boolean"
	.byte		0
	.4byte		.L419
	.section	.debug_info,,n
.L429:
	.sleb128	15
	.4byte		.L430-.L2
	.byte		0x1
	.sleb128	0
.L430:
.L428:
	.sleb128	14
	.4byte		.L429
.L427:
	.sleb128	8
	.byte		"Gpt_NotificationType"
	.byte		0
	.4byte		.L428
.L433:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L432:
	.sleb128	8
	.byte		"uint32"
	.byte		0
	.4byte		.L433
.L431:
	.sleb128	8
	.byte		"EcuM_WakeupSourceType"
	.byte		0
	.4byte		.L432
.L434:
	.sleb128	8
	.byte		"Gpt_ValueType"
	.byte		0
	.4byte		.L432
.L435:
	.sleb128	8
	.byte		"Gpt_ChannelModeType"
	.byte		0
	.4byte		.L436
.L437:
	.sleb128	8
	.byte		"Gpt_HwChannelConfigType"
	.byte		0
	.4byte		.L438
.L441:
	.sleb128	8
	.byte		"Gpt_PrescalerType"
	.byte		0
	.4byte		.L418
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Gpt_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Gpt_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Gpt_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Gpt_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Gpt_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Gpt_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\src\Gpt_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
