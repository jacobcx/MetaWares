#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Wdg_43_Instance1_PBcfg.c"
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
	.0byte		.L431
	.section	.mcal_const_cfg,,r
	.type		Wdg_Swt_OffModeSettings_Instance1,@object
	.size		Wdg_Swt_OffModeSettings_Instance1,20
	.align		2
	.globl		Wdg_Swt_OffModeSettings_Instance1
Wdg_Swt_OffModeSettings_Instance1:
	.long		-16777200
	.long		256
	.long		0
	.long		0
	.long		128
	.section	.mcal_const_cfg,,r
	.type		Wdg_Swt_SlowModeSettings_0,@object
	.size		Wdg_Swt_SlowModeSettings_0,20
	.align		2
	.globl		Wdg_Swt_SlowModeSettings_0
Wdg_Swt_SlowModeSettings_0:
	.long		-16776957
	.long		250000000
	.long		100000000
	.long		0
	.long		50000
	.section	.mcal_const_cfg,,r
	.type		Wdg_Swt_FastModeSettings_0,@object
	.size		Wdg_Swt_FastModeSettings_0,20
	.align		2
	.globl		Wdg_Swt_FastModeSettings_0
Wdg_Swt_FastModeSettings_0:
	.long		-16776957
	.long		50000000
	.long		20000000
	.long		0
	.long		50000
	.section	.mcal_const_cfg,,r
	.0byte		.L438
	.section	.mcal_const_cfg,,r
	.type		WdgSettingsConfig,@object
	.size		WdgSettingsConfig,32
	.align		2
	.globl		WdgSettingsConfig
WdgSettingsConfig:
	.long		1
	.long		1
	.byte		1
	.space		3
	.long		50000
	.long		Wdg_Swt_OffModeSettings_Instance1
	.long		Wdg_Swt_SlowModeSettings_0
	.long		Wdg_Swt_FastModeSettings_0
	.long		0
	.section	.text_vle
#$$ld
.L5:
.L468:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgIf\\ssc\\make\\..\\inc\\WdgIf_Types.h"
.L466:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Wdg_IPW_Types.h"
.L464:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Gpt.h"
.L442:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Wdg_Channel.h"
.L432:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\src\\Wdg_43_Instance1_PBcfg.c"
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	10
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\src\\Wdg_43_Instance1_PBcfg.c"
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
.L431:
	.sleb128	2
	.byte		0x1
	.4byte		.L432
	.uleb128	214
	.uleb128	38
	.byte		"Wdg_Swt_OffModeSettings_Instance1"
	.byte		0
	.4byte		.L433
	.sleb128	5
	.byte		0x3
	.4byte		Wdg_Swt_OffModeSettings_Instance1
	.section	.debug_info,,n
	.section	.debug_info,,n
.L436:
	.sleb128	2
	.byte		0x1
	.4byte		.L432
	.uleb128	226
	.uleb128	38
	.byte		"Wdg_Swt_SlowModeSettings_0"
	.byte		0
	.4byte		.L433
	.sleb128	5
	.byte		0x3
	.4byte		Wdg_Swt_SlowModeSettings_0
	.section	.debug_info,,n
.L437:
	.sleb128	2
	.byte		0x1
	.4byte		.L432
	.uleb128	240
	.uleb128	38
	.byte		"Wdg_Swt_FastModeSettings_0"
	.byte		0
	.4byte		.L433
	.sleb128	5
	.byte		0x3
	.4byte		Wdg_Swt_FastModeSettings_0
	.section	.debug_info,,n
.L438:
	.sleb128	2
	.byte		0x1
	.4byte		.L432
	.uleb128	256
	.uleb128	33
	.byte		"WdgSettingsConfig"
	.byte		0
	.4byte		.L439
	.sleb128	5
	.byte		0x3
	.4byte		WdgSettingsConfig
	.section	.debug_info,,n
	.section	.debug_info,,n
.L441:
	.sleb128	3
	.4byte		.L442
	.uleb128	197
	.uleb128	14
	.4byte		.L443-.L2
	.uleb128	32
	.section	.debug_info,,n
.L425:
	.sleb128	4
	.byte		"Wdg_DefaultMode"
	.byte		0
	.4byte		.L444
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L426:
	.sleb128	4
	.byte		"Wdg_Instance"
	.byte		0
	.4byte		.L447
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L427:
	.sleb128	4
	.byte		"Wdg_TimerChannel"
	.byte		0
	.4byte		.L450
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L428:
	.sleb128	4
	.byte		"Wdg_u32TriggerSourceClock"
	.byte		0
	.4byte		.L454
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L429:
	.sleb128	4
	.byte		"Wdg_ModeSettings"
	.byte		0
	.4byte		.L457
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L430:
	.sleb128	4
	.byte		"Wdg_CallbackPtr"
	.byte		0
	.4byte		.L460
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L443:
.L435:
	.sleb128	3
	.4byte		.L464
	.uleb128	336
	.uleb128	1
	.4byte		.L465-.L2
	.uleb128	20
.L420:
	.sleb128	4
	.byte		"Swt_u32Config"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L421:
	.sleb128	4
	.byte		"Swt_u32Timeout"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L422:
	.sleb128	4
	.byte		"Swt_u32Window"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L423:
	.sleb128	4
	.byte		"Swt_u32InitialKey"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L424:
	.sleb128	4
	.byte		"Wdg_u32InternalTimerClock"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L465:
	.section	.debug_info,,n
.L449:
	.sleb128	5
	.4byte		.L466
	.uleb128	118
	.uleb128	14
	.4byte		.L467-.L2
	.byte		"Wdg_IPW_InstanceType"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	6
	.byte		"WDG_IPW_INSTANCE0"
	.byte		0
	.sleb128	0
	.sleb128	6
	.byte		"WDG_IPW_INSTANCE1"
	.byte		0
	.sleb128	1
	.sleb128	6
	.byte		"WDG_IPW_INSTANCE2"
	.byte		0
	.sleb128	2
	.sleb128	6
	.byte		"WDG_IPW_INSTANCE3"
	.byte		0
	.sleb128	3
	.sleb128	0
.L467:
.L446:
	.sleb128	5
	.4byte		.L468
	.uleb128	66
	.uleb128	14
	.4byte		.L469-.L2
	.byte		"WdgIf_Mode_Tag"
	.byte		0
	.uleb128	4
	.sleb128	6
	.byte		"WDGIF_OFF_MODE"
	.byte		0
	.sleb128	0
	.sleb128	6
	.byte		"WDGIF_SLOW_MODE"
	.byte		0
	.sleb128	1
	.sleb128	6
	.byte		"WDGIF_FAST_MODE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L469:
	.section	.debug_info,,n
.L434:
	.sleb128	7
	.byte		"Wdg_Swt_ConfigType"
	.byte		0
	.4byte		.L435
	.section	.debug_info,,n
.L433:
	.sleb128	8
	.4byte		.L434
.L440:
	.sleb128	7
	.byte		"Wdg_ConfigType"
	.byte		0
	.4byte		.L441
.L439:
	.sleb128	8
	.4byte		.L440
.L445:
	.sleb128	7
	.byte		"WdgIf_ModeType"
	.byte		0
	.4byte		.L446
.L444:
	.sleb128	8
	.4byte		.L445
.L448:
	.sleb128	7
	.byte		"Wdg_IPW_InstanceType"
	.byte		0
	.4byte		.L449
.L447:
	.sleb128	8
	.4byte		.L448
	.section	.debug_info,,n
.L453:
	.sleb128	9
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L452:
	.sleb128	7
	.byte		"uint8"
	.byte		0
	.4byte		.L453
.L451:
	.sleb128	7
	.byte		"Gpt_ChannelType"
	.byte		0
	.4byte		.L452
.L450:
	.sleb128	8
	.4byte		.L451
.L456:
	.sleb128	9
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L455:
	.sleb128	7
	.byte		"uint32"
	.byte		0
	.4byte		.L456
.L454:
	.sleb128	8
	.4byte		.L455
	.section	.debug_info,,n
.L459:
	.sleb128	10
	.4byte		.L433
	.section	.debug_info,,n
.L457:
	.sleb128	11
	.4byte		.L458-.L2
	.4byte		.L459
	.section	.debug_info,,n
	.sleb128	12
	.uleb128	2
	.sleb128	0
.L458:
	.section	.debug_info,,n
.L462:
	.sleb128	13
	.4byte		.L463-.L2
	.byte		0x1
	.sleb128	0
.L463:
.L461:
	.sleb128	10
	.4byte		.L462
.L460:
	.sleb128	7
	.byte		"Wdg_CallbackPtrType"
	.byte		0
	.4byte		.L461
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Wdg_43_Instance1_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Wdg_43_Instance1_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Wdg_43_Instance1_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Wdg_43_Instance1_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Wdg_43_Instance1_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Wdg_43_Instance1_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\src\Wdg_43_Instance1_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
