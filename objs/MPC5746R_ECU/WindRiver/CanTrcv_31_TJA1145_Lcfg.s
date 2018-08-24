#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTrcv_31_TJA1145_Lcfg.c"
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
	.type		CanTrcv_31_TJA1145_LTHashValue,@object
	.size		CanTrcv_31_TJA1145_LTHashValue,4
	.align		2
	.globl		CanTrcv_31_TJA1145_LTHashValue
CanTrcv_31_TJA1145_LTHashValue:
	.long		2011945630
	.section	.text_vle
	.type		CanTrcv_31_TJA1145_LTtoPCHashValue,@object
	.size		CanTrcv_31_TJA1145_LTtoPCHashValue,4
	.align		2
	.globl		CanTrcv_31_TJA1145_LTtoPCHashValue
CanTrcv_31_TJA1145_LTtoPCHashValue:
	.long		-1908460700
	.data
	.type		CanTrcv_31_TJA1145_Status_p,@object
	.size		CanTrcv_31_TJA1145_Status_p,4
	.align		2
	.globl		CanTrcv_31_TJA1145_Status_p
CanTrcv_31_TJA1145_Status_p:
	.long		CanTrcv_31_TJA1145_Status_a
	.section	.text_vle
	.type		CanTrcv_31_TJA1145_LT_Config_a,@object
	.size		CanTrcv_31_TJA1145_LT_Config_a,40
	.align		2
CanTrcv_31_TJA1145_LT_Config_a:
	.long		0
	.short		1000
	.byte		0
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		0
	.byte		0
	.byte		1
	.byte		1
	.byte		1
	.long		0
	.short		1000
	.byte		0
	.byte		1
	.byte		0
	.byte		1
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		0
	.byte		0
	.byte		1
	.byte		2
	.byte		2
	.section	.text_vle
	.type		CanTrcv_31_TJA1145_Index_u8,@object
	.size		CanTrcv_31_TJA1145_Index_u8,1
	.align		0
	.globl		CanTrcv_31_TJA1145_Index_u8
CanTrcv_31_TJA1145_Index_u8:
	.byte		0
	.section	.text_vle
	.type		CanTrcv_31_TJA1145_MaxChannels_u16,@object
	.size		CanTrcv_31_TJA1145_MaxChannels_u16,2
	.align		1
	.globl		CanTrcv_31_TJA1145_MaxChannels_u16
CanTrcv_31_TJA1145_MaxChannels_u16:
	.short		2
	.section	.text_vle
	.type		CANTRCV_31_TJA1145_WAITCOUNT_U32,@object
	.size		CANTRCV_31_TJA1145_WAITCOUNT_U32,4
	.align		2
	.globl		CANTRCV_31_TJA1145_WAITCOUNT_U32
CANTRCV_31_TJA1145_WAITCOUNT_U32:
	.long		10000
	.section	.text_vle
	.type		CanTrcv_31_TJA1145_LtConfig_p,@object
	.size		CanTrcv_31_TJA1145_LtConfig_p,4
	.align		2
	.globl		CanTrcv_31_TJA1145_LtConfig_p
CanTrcv_31_TJA1145_LtConfig_p:
	.long		CanTrcv_31_TJA1145_LT_Config_a
	.section	.text_vle
#$$ld
.L5:
.L585:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L583:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Spi.h"
.L567:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\..\\..\\inc\\CanTrcv_Types.h"
.L532:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\CanTrcv_31_TJA1145_Lcfg.c"
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\CanTrcv_31_TJA1145_Lcfg.c"
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
	.byte		0x1
	.4byte		.L532
	.uleb128	37
	.uleb128	41
	.byte		"CanTrcv_31_TJA1145_LTHashValue"
	.byte		0
	.4byte		.L533
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_TJA1145_LTHashValue
	.section	.debug_info,,n
	.section	.debug_info,,n
.L536:
	.sleb128	2
	.byte		0x1
	.4byte		.L532
	.uleb128	40
	.uleb128	40
	.byte		"CanTrcv_31_TJA1145_LTtoPCHashValue"
	.byte		0
	.4byte		.L533
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_TJA1145_LTtoPCHashValue
	.section	.debug_info,,n
.L537:
	.sleb128	3
	.4byte		.L532
	.uleb128	50
	.uleb128	73
	.byte		"CanTrcv_31_TJA1145_Status_a"
	.byte		0
	.4byte		.L538
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_TJA1145_Status_a
	.0byte		.L537
	.lcomm		CanTrcv_31_TJA1145_Status_a,64,2
.L542:
	.sleb128	2
	.byte		0x1
	.4byte		.L532
	.uleb128	92
	.uleb128	80
	.byte		"CanTrcv_31_TJA1145_Status_p"
	.byte		0
	.4byte		.L543
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_TJA1145_Status_p
	.section	.debug_info,,n
.L544:
	.sleb128	3
	.4byte		.L532
	.uleb128	103
	.uleb128	70
	.byte		"CanTrcv_31_TJA1145_LT_Config_a"
	.byte		0
	.4byte		.L545
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_TJA1145_LT_Config_a
	.section	.debug_info,,n
.L550:
	.sleb128	2
	.byte		0x1
	.4byte		.L532
	.uleb128	193
	.uleb128	40
	.byte		"CanTrcv_31_TJA1145_Index_u8"
	.byte		0
	.4byte		.L551
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_TJA1145_Index_u8
	.section	.debug_info,,n
.L554:
	.sleb128	2
	.byte		0x1
	.4byte		.L532
	.uleb128	202
	.uleb128	41
	.byte		"CanTrcv_31_TJA1145_MaxChannels_u16"
	.byte		0
	.4byte		.L555
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_TJA1145_MaxChannels_u16
	.section	.debug_info,,n
.L558:
	.sleb128	2
	.byte		0x1
	.4byte		.L532
	.uleb128	211
	.uleb128	42
	.byte		"CANTRCV_31_TJA1145_WAITCOUNT_U32"
	.byte		0
	.4byte		.L533
	.sleb128	5
	.byte		0x3
	.4byte		CANTRCV_31_TJA1145_WAITCOUNT_U32
	.section	.debug_info,,n
.L559:
	.sleb128	2
	.byte		0x1
	.4byte		.L532
	.uleb128	214
	.uleb128	80
	.byte		"CanTrcv_31_TJA1145_LtConfig_p"
	.byte		0
	.4byte		.L560
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_TJA1145_LtConfig_p
	.section	.debug_info,,n
.L562:
	.sleb128	2
	.byte		0x1
	.4byte		.L532
	.uleb128	232
	.uleb128	1
	.byte		"CanTrcv_31_TJA1145_PbConfig_p"
	.byte		0
	.4byte		.L563
	.sleb128	5
	.byte		0x3
	.4byte		CanTrcv_31_TJA1145_PbConfig_p
	.comm		CanTrcv_31_TJA1145_PbConfig_p,4,2
	.section	.debug_info,,n
.L541:
	.sleb128	4
	.4byte		.L567
	.uleb128	61
	.uleb128	13
	.4byte		.L568-.L2
	.uleb128	32
	.section	.debug_info,,n
.L523:
	.sleb128	5
	.byte		"CanTrcvCurrentState"
	.byte		0
	.4byte		.L569
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L524:
	.sleb128	5
	.byte		"CanTrcvSetOpModeRxBuf"
	.byte		0
	.4byte		.L571
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L525:
	.sleb128	5
	.byte		"CanTrcvMainFuncRxBuf"
	.byte		0
	.4byte		.L573
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L526:
	.sleb128	5
	.byte		"CanTrcvMainFuncRxFlag"
	.byte		0
	.4byte		.L575
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L527:
	.sleb128	5
	.byte		"CanTrcvMainDiagnosticRxFlag"
	.byte		0
	.4byte		.L575
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L528:
	.sleb128	5
	.byte		"CanTrcvInitialised_bt"
	.byte		0
	.4byte		.L575
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L529:
	.sleb128	5
	.byte		"CanTrcvSpiRetriesCounter"
	.byte		0
	.4byte		.L552
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L530:
	.sleb128	5
	.byte		"CanTrcvSpiTimeCounter"
	.byte		0
	.4byte		.L552
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L568:
.L549:
	.sleb128	4
	.4byte		.L567
	.uleb128	61
	.uleb128	13
	.4byte		.L576-.L2
	.uleb128	20
.L507:
	.sleb128	5
	.byte		"CanTrcvInitState"
	.byte		0
	.4byte		.L577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L508:
	.sleb128	5
	.byte		"CanTrcvMaxBaudrate"
	.byte		0
	.4byte		.L555
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L509:
	.sleb128	5
	.byte		"CanTrcvControlsPowerSupply"
	.byte		0
	.4byte		.L578
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L510:
	.sleb128	5
	.byte		"CanTrcvChannelUsed"
	.byte		0
	.4byte		.L578
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L511:
	.sleb128	5
	.byte		"CanTrcvWakeupByBusUsed"
	.byte		0
	.4byte		.L578
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L512:
	.sleb128	5
	.byte		"CanTrcvChannelId"
	.byte		0
	.4byte		.L551
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L513:
	.sleb128	5
	.byte		"CanTrcvPorWakeupSourceId"
	.byte		0
	.4byte		.L551
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L514:
	.sleb128	5
	.byte		"CanTrcvSyserrWakeupSourceId"
	.byte		0
	.4byte		.L551
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L515:
	.sleb128	5
	.byte		"CanTrcvWakeupSourceId"
	.byte		0
	.4byte		.L551
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L516:
	.sleb128	5
	.byte		"CanTrcvPinWakeupSourceId"
	.byte		0
	.4byte		.L551
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L517:
	.sleb128	5
	.byte		"CanTrcvSpiAccessSynchronous"
	.byte		0
	.4byte		.L578
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L518:
	.sleb128	5
	.byte		"CanTrcvSpiCommRetries"
	.byte		0
	.4byte		.L551
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L519:
	.sleb128	5
	.byte		"CanTrcvSpiCommTimeout"
	.byte		0
	.4byte		.L551
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L520:
	.sleb128	5
	.byte		"CanTrcvSpiChannelId"
	.byte		0
	.4byte		.L579
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L521:
	.sleb128	5
	.byte		"CanTrcvSpiSequenceId"
	.byte		0
	.4byte		.L581
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L522:
	.sleb128	5
	.byte		"CanIfTrcvID"
	.byte		0
	.4byte		.L551
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
	.sleb128	0
.L576:
.L566:
	.sleb128	4
	.4byte		.L583
	.uleb128	495
	.uleb128	1
	.4byte		.L584-.L2
	.uleb128	2
.L502:
	.sleb128	5
	.byte		"CanTrcvWakeOnRisingEdge"
	.byte		0
	.4byte		.L578
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L503:
	.sleb128	5
	.byte		"CanTrcvWakeOnFallingEdge"
	.byte		0
	.4byte		.L578
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L584:
	.section	.debug_info,,n
.L570:
	.sleb128	6
	.4byte		.L585
	.uleb128	23
	.uleb128	15
	.4byte		.L586-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"CANTRCV_TRCVMODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"CANTRCV_TRCVMODE_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"CANTRCV_TRCVMODE_STANDBY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L586:
	.section	.debug_info,,n
.L535:
	.sleb128	8
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L534:
	.sleb128	9
	.byte		"uint32"
	.byte		0
	.4byte		.L535
	.section	.debug_info,,n
.L533:
	.sleb128	10
	.4byte		.L534
.L540:
	.sleb128	9
	.byte		"CanTrcv_31_TJA1145_StatusType"
	.byte		0
	.4byte		.L541
	.section	.debug_info,,n
.L538:
	.sleb128	11
	.4byte		.L539-.L2
	.4byte		.L540
	.section	.debug_info,,n
	.sleb128	12
	.uleb128	1
	.sleb128	0
.L539:
	.section	.debug_info,,n
.L543:
	.sleb128	13
	.4byte		.L540
.L548:
	.sleb128	9
	.byte		"CanTrcv_31_TJA1145_LtCfgType"
	.byte		0
	.4byte		.L549
.L547:
	.sleb128	10
	.4byte		.L548
.L545:
	.sleb128	11
	.4byte		.L546-.L2
	.4byte		.L547
	.sleb128	12
	.uleb128	1
	.sleb128	0
.L546:
.L553:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L552:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L553
.L551:
	.sleb128	10
	.4byte		.L552
.L557:
	.sleb128	8
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L556:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L557
.L555:
	.sleb128	10
	.4byte		.L556
.L561:
	.sleb128	13
	.4byte		.L547
.L560:
	.sleb128	10
	.4byte		.L561
.L565:
	.sleb128	9
	.byte		"CanTrcv_31_TJA1145_PbConfigType"
	.byte		0
	.4byte		.L566
.L564:
	.sleb128	10
	.4byte		.L565
.L563:
	.sleb128	13
	.4byte		.L564
.L569:
	.sleb128	9
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L570
.L571:
	.sleb128	11
	.4byte		.L572-.L2
	.4byte		.L556
	.sleb128	12
	.uleb128	6
	.sleb128	0
.L572:
.L573:
	.sleb128	11
	.4byte		.L574-.L2
	.4byte		.L556
	.sleb128	12
	.uleb128	3
	.sleb128	0
.L574:
.L575:
	.sleb128	9
	.byte		"boolean"
	.byte		0
	.4byte		.L553
.L577:
	.sleb128	10
	.4byte		.L569
.L578:
	.sleb128	10
	.4byte		.L575
.L580:
	.sleb128	9
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L552
.L579:
	.sleb128	10
	.4byte		.L580
.L582:
	.sleb128	9
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L552
.L581:
	.sleb128	10
	.4byte		.L582
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Lcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Lcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Lcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Lcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Lcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
