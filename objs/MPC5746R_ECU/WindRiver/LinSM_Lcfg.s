#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinSM_Lcfg.c"
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
	.0byte		.L505
	.section	.text_vle
	.type		LinSM_LTtoPCHashValue,@object
	.size		LinSM_LTtoPCHashValue,4
	.align		2
	.globl		LinSM_LTtoPCHashValue
LinSM_LTtoPCHashValue:
	.long		-1631251720
	.section	.text_vle
	.type		LinSM_LTHashValue,@object
	.size		LinSM_LTHashValue,4
	.align		2
	.globl		LinSM_LTHashValue
LinSM_LTHashValue:
	.long		-1047053840
	.section	.text_vle
	.type		LinSM_NoOfChannel,@object
	.size		LinSM_NoOfChannel,1
	.align		0
	.globl		LinSM_NoOfChannel
LinSM_NoOfChannel:
	.byte		1
	.section	.text_vle
	.type		LinSM_ChannelMap_a,@object
	.size		LinSM_ChannelMap_a,1
	.align		2
LinSM_ChannelMap_a:
	.byte		1
	.section	.text_vle
	.type		LinSM_ChannelConfig_a,@object
	.size		LinSM_ChannelConfig_a,12
	.align		2
LinSM_ChannelConfig_a:
	.byte		1
	.space		3
	.long		2
	.short		100
	.space		2
	.section	.text_vle
	.type		LinSM_Interface_p,@object
	.size		LinSM_Interface_p,4
	.align		2
	.globl		LinSM_Interface_p
LinSM_Interface_p:
	.long		LinSM_InterfaceConfig_a
	.section	.text_vle
	.type		LinSM_ChannelMap_p,@object
	.size		LinSM_ChannelMap_p,4
	.align		2
	.globl		LinSM_ChannelMap_p
LinSM_ChannelMap_p:
	.long		LinSM_ChannelMap_a
	.section	.text_vle
	.type		LinSM_Channel_p,@object
	.size		LinSM_Channel_p,4
	.align		2
	.globl		LinSM_Channel_p
LinSM_Channel_p:
	.long		LinSM_ChannelConfig_a
	.section	.text_vle
#$$ld
.L5:
.L546:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_Types.h"
.L539:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\inc\\LinSM_Types.h"
.L506:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\LinSM_Lcfg.c"
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
	.uleb128	9
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\LinSM_Lcfg.c"
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
.L505:
	.sleb128	2
	.byte		0x1
	.4byte		.L506
	.uleb128	37
	.uleb128	28
	.byte		"LinSM_LTtoPCHashValue"
	.byte		0
	.4byte		.L507
	.sleb128	5
	.byte		0x3
	.4byte		LinSM_LTtoPCHashValue
	.section	.debug_info,,n
	.section	.debug_info,,n
.L510:
	.sleb128	2
	.byte		0x1
	.4byte		.L506
	.uleb128	40
	.uleb128	28
	.byte		"LinSM_LTHashValue"
	.byte		0
	.4byte		.L507
	.sleb128	5
	.byte		0x3
	.4byte		LinSM_LTHashValue
	.section	.debug_info,,n
.L511:
	.sleb128	2
	.byte		0x1
	.4byte		.L506
	.uleb128	49
	.uleb128	39
	.byte		"LinSM_NoOfChannel"
	.byte		0
	.4byte		.L512
	.sleb128	5
	.byte		0x3
	.4byte		LinSM_NoOfChannel
	.section	.debug_info,,n
.L516:
	.sleb128	3
	.4byte		.L506
	.uleb128	52
	.uleb128	46
	.byte		"LinSM_ChannelMap_a"
	.byte		0
	.4byte		.L517
	.sleb128	5
	.byte		0x3
	.4byte		LinSM_ChannelMap_a
	.section	.debug_info,,n
.L519:
	.sleb128	3
	.4byte		.L506
	.uleb128	63
	.uleb128	45
	.byte		"LinSM_InterfaceConfig_a"
	.byte		0
	.4byte		.L520
	.sleb128	5
	.byte		0x3
	.4byte		LinSM_InterfaceConfig_a
	.0byte		.L519
	.lcomm		LinSM_InterfaceConfig_a,8,1
.L524:
	.sleb128	3
	.4byte		.L506
	.uleb128	73
	.uleb128	41
	.byte		"LinSM_ChannelConfig_a"
	.byte		0
	.4byte		.L525
	.sleb128	5
	.byte		0x3
	.4byte		LinSM_ChannelConfig_a
	.section	.debug_info,,n
.L530:
	.sleb128	2
	.byte		0x1
	.4byte		.L506
	.uleb128	81
	.uleb128	64
	.byte		"LinSM_Interface_p"
	.byte		0
	.4byte		.L531
	.sleb128	5
	.byte		0x3
	.4byte		LinSM_Interface_p
	.section	.debug_info,,n
.L533:
	.sleb128	2
	.byte		0x1
	.4byte		.L506
	.uleb128	84
	.uleb128	64
	.byte		"LinSM_ChannelMap_p"
	.byte		0
	.4byte		.L534
	.sleb128	5
	.byte		0x3
	.4byte		LinSM_ChannelMap_p
	.section	.debug_info,,n
.L536:
	.sleb128	2
	.byte		0x1
	.4byte		.L506
	.uleb128	87
	.uleb128	59
	.byte		"LinSM_Channel_p"
	.byte		0
	.4byte		.L537
	.sleb128	5
	.byte		0x3
	.4byte		LinSM_Channel_p
	.section	.debug_info,,n
.L529:
	.sleb128	4
	.4byte		.L539
	.uleb128	115
	.uleb128	1
	.4byte		.L540-.L2
	.uleb128	12
	.section	.debug_info,,n
.L313:
	.sleb128	5
	.byte		"LinSM_SleepSupport_b"
	.byte		0
	.4byte		.L541
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L314:
	.sleb128	5
	.byte		"LinSM_TransceiverPassiveMode_u8"
	.byte		0
	.4byte		.L542
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L315:
	.sleb128	5
	.byte		"LinSM_ConfirmationTimeout_u16"
	.byte		0
	.4byte		.L544
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L540:
.L523:
	.sleb128	4
	.4byte		.L546
	.uleb128	248
	.uleb128	1
	.4byte		.L547-.L2
	.uleb128	8
.L306:
	.sleb128	5
	.byte		"LinSM_RqConfrmState"
	.byte		0
	.4byte		.L514
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L307:
	.sleb128	5
	.byte		"LinSM_RequestType_u8"
	.byte		0
	.4byte		.L514
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L308:
	.sleb128	5
	.byte		"LinSM_StartTimer_b"
	.byte		0
	.4byte		.L541
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L309:
	.sleb128	5
	.byte		"LinSM_ReqScheduleRef"
	.byte		0
	.4byte		.L548
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L310:
	.sleb128	5
	.byte		"LinSM_CrntScheduleRef"
	.byte		0
	.4byte		.L548
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L311:
	.sleb128	5
	.byte		"LinSM_CrntMode"
	.byte		0
	.4byte		.L549
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L312:
	.sleb128	5
	.byte		"LinSM_TimerVal_u16"
	.byte		0
	.4byte		.L544
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L547:
	.section	.debug_info,,n
.L543:
	.sleb128	6
	.4byte		.L539
	.uleb128	115
	.uleb128	1
	.4byte		.L550-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"LINSM_SLEEP"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"LINSM_STANDBY"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"LINSM_NOT_CONFIGURED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L550:
	.section	.debug_info,,n
.L509:
	.sleb128	8
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L508:
	.sleb128	9
	.byte		"uint32"
	.byte		0
	.4byte		.L509
	.section	.debug_info,,n
.L507:
	.sleb128	10
	.4byte		.L508
.L515:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L514:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L515
.L513:
	.sleb128	9
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L514
.L512:
	.sleb128	10
	.4byte		.L513
	.section	.debug_info,,n
.L517:
	.sleb128	11
	.4byte		.L518-.L2
	.4byte		.L512
	.section	.debug_info,,n
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L518:
.L522:
	.sleb128	9
	.byte		"LinSMInterfaceType_t"
	.byte		0
	.4byte		.L523
.L520:
	.sleb128	11
	.4byte		.L521-.L2
	.4byte		.L522
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L521:
.L528:
	.sleb128	9
	.byte		"LinSMChannel"
	.byte		0
	.4byte		.L529
.L527:
	.sleb128	10
	.4byte		.L528
.L525:
	.sleb128	11
	.4byte		.L526-.L2
	.4byte		.L527
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L526:
	.section	.debug_info,,n
.L532:
	.sleb128	13
	.4byte		.L522
.L531:
	.sleb128	10
	.4byte		.L532
.L535:
	.sleb128	13
	.4byte		.L512
.L534:
	.sleb128	10
	.4byte		.L535
.L538:
	.sleb128	13
	.4byte		.L527
.L537:
	.sleb128	10
	.4byte		.L538
.L541:
	.sleb128	9
	.byte		"boolean"
	.byte		0
	.4byte		.L515
.L542:
	.sleb128	9
	.byte		"LinSM_TrcvPassiveModeType"
	.byte		0
	.4byte		.L543
.L545:
	.sleb128	8
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L544:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L545
.L548:
	.sleb128	9
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L514
.L549:
	.sleb128	9
	.byte		"LinSM_ModeType"
	.byte		0
	.4byte		.L514
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM_Lcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM_Lcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM_Lcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM_Lcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\LinSM_Lcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
