#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanSM_PBcfg.c"
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
	.0byte		.L582
	.section	.text_vle
	.type		CANSM_PBtoPCHashValue,@object
	.size		CANSM_PBtoPCHashValue,4
	.align		2
CANSM_PBtoPCHashValue:
	.long		981199489
	.section	.text_vle
	.type		CANSM_PBtoLTHashValue,@object
	.size		CANSM_PBtoLTHashValue,4
	.align		2
CANSM_PBtoLTHashValue:
	.long		283128755
	.section	.text_vle
	.type		ControllerIdList0_au8,@object
	.size		ControllerIdList0_au8,8
	.align		2
ControllerIdList0_au8:
	.long		ControllerIdList0_RAM_au8
	.byte		0
	.space		3
	.section	.text_vle
	.type		CanSM_NetworkType_Array,@object
	.size		CanSM_NetworkType_Array,24
	.align		2
CanSM_NetworkType_Array:
	.long		CanSM_NetworkType_RAM_Array
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		2
	.space		1
	.short		50
	.short		150
	.short		499
	.short		2
	.long		ControllerIdList0_au8
	.section	.text_vle
	.type		CanSMConfiguration,@object
	.size		CanSMConfiguration,20
	.align		2
	.globl		CanSMConfiguration
CanSMConfiguration:
	.byte		1
	.space		1
	.short		10
	.byte		6
	.space		3
	.long		CANSM_PBtoPCHashValue
	.long		CANSM_PBtoLTHashValue
	.long		CanSM_NetworkType_Array
	.section	.text_vle
#$$ld
.L5:
.L603:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\inc\\CanSM_Types.h"
.L572:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\CanSM_PBcfg.c"
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
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	8
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\CanSM_PBcfg.c"
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
.L571:
	.sleb128	2
	.4byte		.L572
	.uleb128	45
	.uleb128	50
	.byte		"ControllerIdList0_RAM_au8"
	.byte		0
	.4byte		.L573
	.sleb128	5
	.byte		0x3
	.4byte		ControllerIdList0_RAM_au8
	.0byte		.L571
	.lcomm		ControllerIdList0_RAM_au8,3,0
.L577:
	.sleb128	2
	.4byte		.L572
	.uleb128	47
	.uleb128	47
	.byte		"CanSM_NetworkType_RAM_Array"
	.byte		0
	.4byte		.L578
	.sleb128	5
	.byte		0x3
	.4byte		CanSM_NetworkType_RAM_Array
	.lcomm		CanSM_NetworkType_RAM_Array,42,1
.L582:
	.sleb128	2
	.4byte		.L572
	.uleb128	57
	.uleb128	34
	.byte		"CANSM_PBtoPCHashValue"
	.byte		0
	.4byte		.L583
	.sleb128	5
	.byte		0x3
	.4byte		CANSM_PBtoPCHashValue
	.section	.debug_info,,n
	.section	.debug_info,,n
.L586:
	.sleb128	2
	.4byte		.L572
	.uleb128	58
	.uleb128	34
	.byte		"CANSM_PBtoLTHashValue"
	.byte		0
	.4byte		.L583
	.sleb128	5
	.byte		0x3
	.4byte		CANSM_PBtoLTHashValue
	.section	.debug_info,,n
.L587:
	.sleb128	2
	.4byte		.L572
	.uleb128	68
	.uleb128	50
	.byte		"ControllerIdList0_au8"
	.byte		0
	.4byte		.L588
	.sleb128	5
	.byte		0x3
	.4byte		ControllerIdList0_au8
	.section	.debug_info,,n
.L593:
	.sleb128	2
	.4byte		.L572
	.uleb128	76
	.uleb128	47
	.byte		"CanSM_NetworkType_Array"
	.byte		0
	.4byte		.L594
	.sleb128	5
	.byte		0x3
	.4byte		CanSM_NetworkType_Array
	.section	.debug_info,,n
.L599:
	.sleb128	3
	.byte		0x1
	.4byte		.L572
	.uleb128	95
	.uleb128	39
	.byte		"CanSMConfiguration"
	.byte		0
	.4byte		.L600
	.sleb128	5
	.byte		0x3
	.4byte		CanSMConfiguration
	.section	.debug_info,,n
.L602:
	.sleb128	4
	.4byte		.L603
	.uleb128	341
	.uleb128	14
	.4byte		.L604-.L2
	.uleb128	20
	.section	.debug_info,,n
.L565:
	.sleb128	5
	.byte		"NetworkType_R14_Size"
	.byte		0
	.4byte		.L605
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L566:
	.sleb128	5
	.byte		"RepetitionTime_u16"
	.byte		0
	.4byte		.L608
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L567:
	.sleb128	5
	.byte		"RepetitionMax_u8"
	.byte		0
	.4byte		.L605
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L568:
	.sleb128	5
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L611
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L569:
	.sleb128	5
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L611
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L570:
	.sleb128	5
	.byte		"NetworkType_R14"
	.byte		0
	.4byte		.L612
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L604:
.L598:
	.sleb128	4
	.4byte		.L603
	.uleb128	341
	.uleb128	14
	.4byte		.L613-.L2
	.uleb128	24
.L552:
	.sleb128	5
	.byte		"RAM"
	.byte		0
	.4byte		.L614
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L553:
	.sleb128	5
	.byte		"CanSMNetworkIndex"
	.byte		0
	.4byte		.L605
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L554:
	.sleb128	5
	.byte		"CanSMNetworkHandle"
	.byte		0
	.4byte		.L615
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L555:
	.sleb128	5
	.byte		"CanSMTransceiverId_u8"
	.byte		0
	.4byte		.L605
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L556:
	.sleb128	5
	.byte		"CanSMPartialNetworkSupport"
	.byte		0
	.4byte		.L617
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L557:
	.sleb128	5
	.byte		"CanSMBorTxConfirmationPolling"
	.byte		0
	.4byte		.L617
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L558:
	.sleb128	5
	.byte		"ControllerType_R16_Size"
	.byte		0
	.4byte		.L605
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L559:
	.sleb128	5
	.byte		"CanSMBorCounterL1ToL2_u8"
	.byte		0
	.4byte		.L605
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L560:
	.sleb128	5
	.byte		"CanSMBorTimeL1_u16"
	.byte		0
	.4byte		.L608
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L561:
	.sleb128	5
	.byte		"CanSMBorTimeL2_u16"
	.byte		0
	.4byte		.L608
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L562:
	.sleb128	5
	.byte		"CanSMBorTimeTxEnsured_u16"
	.byte		0
	.4byte		.L608
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L563:
	.sleb128	5
	.byte		"CanSMBorErrEvent"
	.byte		0
	.4byte		.L619
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L564:
	.sleb128	5
	.byte		"ControllerType_R16"
	.byte		0
	.4byte		.L621
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L613:
.L581:
	.sleb128	4
	.4byte		.L603
	.uleb128	341
	.uleb128	14
	.4byte		.L622-.L2
	.uleb128	42
.L518:
	.sleb128	5
	.byte		"current_state"
	.byte		0
	.4byte		.L623
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L519:
	.sleb128	5
	.byte		"State"
	.byte		0
	.4byte		.L609
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L520:
	.sleb128	5
	.byte		"CanSMBorTimer_u16"
	.byte		0
	.4byte		.L609
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L521:
	.sleb128	5
	.byte		"CanSMBorTimerTxEnsured_u16"
	.byte		0
	.4byte		.L609
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L522:
	.sleb128	5
	.byte		"ChannelTimer_u16"
	.byte		0
	.4byte		.L609
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L523:
	.sleb128	5
	.byte		"RetryTimerEnabled"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L524:
	.sleb128	5
	.byte		"CanSMNetworkMode"
	.byte		0
	.4byte		.L624
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L525:
	.sleb128	5
	.byte		"CanSMBorCounter_u8"
	.byte		0
	.4byte		.L606
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L526:
	.sleb128	5
	.byte		"RequestModeTransition"
	.byte		0
	.4byte		.L606
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L527:
	.sleb128	5
	.byte		"RetryCounter_u8"
	.byte		0
	.4byte		.L606
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L528:
	.sleb128	5
	.byte		"RequestMode"
	.byte		0
	.4byte		.L624
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L529:
	.sleb128	5
	.byte		"CanSM_InitFlag"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L530:
	.sleb128	5
	.byte		"CanSMCheckedBaudrateStatus"
	.byte		0
	.4byte		.L606
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L531:
	.sleb128	5
	.byte		"CanSMCheckedBaudrate"
	.byte		0
	.4byte		.L609
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L532:
	.sleb128	5
	.byte		"CanSMChangedBaudrate"
	.byte		0
	.4byte		.L609
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L533:
	.sleb128	5
	.byte		"CurrentStateNoCom_b"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L534:
	.sleb128	5
	.byte		"TxTimeoutstate_b"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L535:
	.sleb128	5
	.byte		"T_REPEAT_MAX_HAPPENED"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L536:
	.sleb128	5
	.byte		"BufferedRequestMode"
	.byte		0
	.4byte		.L624
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
.L537:
	.sleb128	5
	.byte		"CalledFromMainfunction"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L538:
	.sleb128	5
	.byte		"Lock"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L539:
	.sleb128	5
	.byte		"CanSM_ChangeBaudrateRequest"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L540:
	.sleb128	5
	.byte		"CanSM_ComModeRequest"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L541:
	.sleb128	5
	.byte		"CanSM_TransceiverWakeFlagIndication"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L542:
	.sleb128	5
	.byte		"CanSM_TrcvWuFlagIndication"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L543:
	.sleb128	5
	.byte		"CanSM_CtrlBusOffIndication"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L544:
	.sleb128	5
	.byte		"CanSM_CtrlSleepIndication"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L545:
	.sleb128	5
	.byte		"CanSM_CtrlStoppedIndication"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L546:
	.sleb128	5
	.byte		"CanSM_CtrlStartedIndication"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L547:
	.sleb128	5
	.byte		"CanSM_TransceiverModeNormalIndication"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L548:
	.sleb128	5
	.byte		"CanSM_TransceiverModeStandbyIndication"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	37
	.byte		0x1
.L549:
	.sleb128	5
	.byte		"CanSM_TxTimeoutIndication"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L550:
	.sleb128	5
	.byte		"BusOffDuringRecovery"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L551:
	.sleb128	5
	.byte		"BorFailTRepeatMax"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L622:
.L592:
	.sleb128	4
	.4byte		.L603
	.uleb128	341
	.uleb128	14
	.4byte		.L625-.L2
	.uleb128	8
.L514:
	.sleb128	5
	.byte		"RAM"
	.byte		0
	.4byte		.L626
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L515:
	.sleb128	5
	.byte		"ControllerId_pu8"
	.byte		0
	.4byte		.L605
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L625:
.L576:
	.sleb128	4
	.4byte		.L603
	.uleb128	341
	.uleb128	14
	.4byte		.L627-.L2
	.uleb128	3
.L511:
	.sleb128	5
	.byte		"ControllerSleepIndication"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	5
	.byte		"ControllerStoppedIndication"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L513:
	.sleb128	5
	.byte		"ControllerStartedIndication"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L627:
	.section	.debug_info,,n
.L575:
	.sleb128	6
	.byte		"CanSM_ControllerType_RAM"
	.byte		0
	.4byte		.L576
	.section	.debug_info,,n
.L573:
	.sleb128	7
	.4byte		.L574-.L2
	.4byte		.L575
	.section	.debug_info,,n
	.sleb128	8
	.uleb128	0
	.sleb128	0
.L574:
.L580:
	.sleb128	6
	.byte		"CanSM_NetworkType_RAM"
	.byte		0
	.4byte		.L581
.L578:
	.sleb128	7
	.4byte		.L579-.L2
	.4byte		.L580
	.sleb128	8
	.uleb128	0
	.sleb128	0
.L579:
	.section	.debug_info,,n
.L585:
	.sleb128	9
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L584:
	.sleb128	6
	.byte		"uint32"
	.byte		0
	.4byte		.L585
	.section	.debug_info,,n
.L583:
	.sleb128	10
	.4byte		.L584
.L591:
	.sleb128	6
	.byte		"CanSM_ControllerType"
	.byte		0
	.4byte		.L592
.L590:
	.sleb128	10
	.4byte		.L591
.L588:
	.sleb128	7
	.4byte		.L589-.L2
	.4byte		.L590
	.sleb128	8
	.uleb128	0
	.sleb128	0
.L589:
.L597:
	.sleb128	6
	.byte		"CanSM_NetworkType"
	.byte		0
	.4byte		.L598
.L596:
	.sleb128	10
	.4byte		.L597
.L594:
	.sleb128	7
	.4byte		.L595-.L2
	.4byte		.L596
	.sleb128	8
	.uleb128	0
	.sleb128	0
.L595:
.L601:
	.sleb128	6
	.byte		"CanSM_ConfigType"
	.byte		0
	.4byte		.L602
.L600:
	.sleb128	10
	.4byte		.L601
.L607:
	.sleb128	9
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L606:
	.sleb128	6
	.byte		"uint8"
	.byte		0
	.4byte		.L607
.L605:
	.sleb128	10
	.4byte		.L606
.L610:
	.sleb128	9
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L609:
	.sleb128	6
	.byte		"uint16"
	.byte		0
	.4byte		.L610
.L608:
	.sleb128	10
	.4byte		.L609
	.section	.debug_info,,n
.L611:
	.sleb128	11
	.4byte		.L583
.L612:
	.sleb128	11
	.4byte		.L596
.L614:
	.sleb128	11
	.4byte		.L580
.L616:
	.sleb128	6
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L606
.L615:
	.sleb128	10
	.4byte		.L616
.L618:
	.sleb128	6
	.byte		"boolean"
	.byte		0
	.4byte		.L607
.L617:
	.sleb128	10
	.4byte		.L618
.L620:
	.sleb128	6
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L609
.L619:
	.sleb128	10
	.4byte		.L620
.L621:
	.sleb128	11
	.4byte		.L590
.L623:
	.sleb128	6
	.byte		"CANSM_Escher_StateNumber_t"
	.byte		0
	.4byte		.L606
.L624:
	.sleb128	6
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L606
.L626:
	.sleb128	11
	.4byte		.L575
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\CanSM_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
