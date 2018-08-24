#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"WdgM_PBcfg.c"
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
	.0byte		.L601
	.section	.text_vle
	.type		PBtoPCHashValue,@object
	.size		PBtoPCHashValue,4
	.align		2
PBtoPCHashValue:
	.long		-1382466861
	.section	.text_vle
	.type		PBtoLTHashValue,@object
	.size		PBtoLTHashValue,4
	.align		2
PBtoLTHashValue:
	.long		601671435
	.section	.text_vle
	.type		WdgMMode_Triggers,@object
	.size		WdgMMode_Triggers,8
	.align		2
WdgMMode_Triggers:
	.long		1
	.short		2000
	.byte		0
	.space		1
	.section	.text_vle
	.type		WdgMConfigSet_ModeTable,@object
	.size		WdgMConfigSet_ModeTable,24
	.align		2
WdgMConfigSet_ModeTable:
	.long		0
	.long		0
	.long		0
	.long		WdgMMode_Triggers
	.short		0
	.short		0
	.short		0
	.byte		2
	.byte		1
	.section	.text_vle
	.type		WdgMConfigSet,@object
	.size		WdgMConfigSet,24
	.align		2
	.globl		WdgMConfigSet
WdgMConfigSet:
	.long		WdgMConfigSet_ModeTable
	.short		0
	.space		2
	.long		0
	.long		PBtoPCHashValue
	.long		PBtoLTHashValue
	.byte		0
	.byte		1
	.space		2
	.section	.text_vle
#$$ld
.L5:
.L723:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgIf\\ssc\\make\\..\\inc\\WdgIf_Types.h"
.L623:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgM\\ssc\\make\\..\\inc\\WdgM_Types.h"
.L602:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\WdgM_PBcfg.c"
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\WdgM_PBcfg.c"
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
.L601:
	.sleb128	2
	.4byte		.L602
	.uleb128	58
	.uleb128	34
	.byte		"PBtoPCHashValue"
	.byte		0
	.4byte		.L603
	.sleb128	5
	.byte		0x3
	.4byte		PBtoPCHashValue
	.section	.debug_info,,n
	.section	.debug_info,,n
.L606:
	.sleb128	2
	.4byte		.L602
	.uleb128	62
	.uleb128	34
	.byte		"PBtoLTHashValue"
	.byte		0
	.4byte		.L603
	.sleb128	5
	.byte		0x3
	.4byte		PBtoLTHashValue
	.section	.debug_info,,n
.L607:
	.sleb128	2
	.4byte		.L602
	.uleb128	83
	.uleb128	43
	.byte		"WdgMMode_Triggers"
	.byte		0
	.4byte		.L608
	.sleb128	5
	.byte		0x3
	.4byte		WdgMMode_Triggers
	.section	.debug_info,,n
.L613:
	.sleb128	2
	.4byte		.L602
	.uleb128	90
	.uleb128	44
	.byte		"WdgMConfigSet_ModeTable"
	.byte		0
	.4byte		.L614
	.sleb128	5
	.byte		0x3
	.4byte		WdgMConfigSet_ModeTable
	.section	.debug_info,,n
.L619:
	.sleb128	3
	.byte		0x1
	.4byte		.L602
	.uleb128	103
	.uleb128	35
	.byte		"WdgMConfigSet"
	.byte		0
	.4byte		.L620
	.sleb128	5
	.byte		0x3
	.4byte		WdgMConfigSet
	.section	.debug_info,,n
.L622:
	.sleb128	4
	.4byte		.L623
	.uleb128	179
	.uleb128	14
	.4byte		.L624-.L2
	.byte		"WdgM_ConfigType_Tag"
	.byte		0
	.uleb128	24
	.section	.debug_info,,n
.L584:
	.sleb128	5
	.byte		"WdgM_ModeTablePtr"
	.byte		0
	.4byte		.L625
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L585:
	.sleb128	5
	.byte		"WdgM_TotalNumberOfSupervisedEntities"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L586:
	.sleb128	5
	.byte		"WdgM_SupervisedEntityGeneralTablePtr"
	.byte		0
	.4byte		.L630
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L587:
	.sleb128	5
	.byte		"WdgM_PBtoPCHashValue_P"
	.byte		0
	.4byte		.L635
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L588:
	.sleb128	5
	.byte		"WdgM_PBtoLTHashValue_P"
	.byte		0
	.4byte		.L635
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L589:
	.sleb128	5
	.byte		"WdgM_InitialMode"
	.byte		0
	.4byte		.L637
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L590:
	.sleb128	5
	.byte		"WdgM_ModeCount"
	.byte		0
	.4byte		.L637
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L624:
.L618:
	.sleb128	4
	.4byte		.L623
	.uleb128	179
	.uleb128	14
	.4byte		.L640-.L2
	.byte		"WdgM_ModeInfoType_Tag"
	.byte		0
	.uleb128	24
.L575:
	.sleb128	5
	.byte		"WdgM_AliveSupervisionTablePtr"
	.byte		0
	.4byte		.L641
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L576:
	.sleb128	5
	.byte		"WdgM_DeadlineSupervisionTablePtr"
	.byte		0
	.4byte		.L646
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L577:
	.sleb128	5
	.byte		"WdgM_LocalStatusParmTablePtr"
	.byte		0
	.4byte		.L651
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L578:
	.sleb128	5
	.byte		"WdgM_TriggerTableptr"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L579:
	.sleb128	5
	.byte		"WdgM_AliveSupervisionCount"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L580:
	.sleb128	5
	.byte		"WdgM_DeadlineSupervisionCount"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L581:
	.sleb128	5
	.byte		"WdgM_LocalStatusParmCount"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L582:
	.sleb128	5
	.byte		"WdgM_ExpiredSupervisionCycleTolerance"
	.byte		0
	.4byte		.L637
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L583:
	.sleb128	5
	.byte		"WdgM_TriggerCount"
	.byte		0
	.4byte		.L637
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
	.sleb128	0
.L640:
.L612:
	.sleb128	4
	.4byte		.L623
	.uleb128	179
	.uleb128	14
	.4byte		.L658-.L2
	.byte		"WdgM_TriggerType_Tag"
	.byte		0
	.uleb128	8
.L558:
	.sleb128	5
	.byte		"WdgM_Mode"
	.byte		0
	.4byte		.L659
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L559:
	.sleb128	5
	.byte		"WdgM_TriggerReferenceCycle"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L560:
	.sleb128	5
	.byte		"WdgM_WatchdogDeviceID"
	.byte		0
	.4byte		.L637
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L658:
.L655:
	.sleb128	4
	.4byte		.L623
	.uleb128	179
	.uleb128	14
	.4byte		.L663-.L2
	.byte		"WdgM_LocalstatModeDepType_Tag"
	.byte		0
	.uleb128	20
.L552:
	.sleb128	5
	.byte		"WdgM_CheckpointTablePtr"
	.byte		0
	.4byte		.L664
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L553:
	.sleb128	5
	.byte		"WdgM_SupervisedEntityMonitorEntryPtr"
	.byte		0
	.4byte		.L669
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L554:
	.sleb128	5
	.byte		"WdgM_GeneralSEEntryPtr"
	.byte		0
	.4byte		.L630
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L555:
	.sleb128	5
	.byte		"WdgM_NumberOfActiveCheckPoints"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L556:
	.sleb128	5
	.byte		"WdgM_SupervisedEntityId"
	.byte		0
	.4byte		.L673
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L557:
	.sleb128	5
	.byte		"WdgM_FailedSupervisionRefCycleTolerance"
	.byte		0
	.4byte		.L637
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L663:
.L668:
	.sleb128	4
	.4byte		.L623
	.uleb128	179
	.uleb128	14
	.4byte		.L675-.L2
	.byte		"WdgM_CheckpointType_Tag"
	.byte		0
	.uleb128	40
.L561:
	.sleb128	5
	.byte		"WdgM_AliveSupervisionEntryPtr"
	.byte		0
	.4byte		.L641
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L562:
	.sleb128	5
	.byte		"WdgM_LocalStatusParmEntryPtr"
	.byte		0
	.4byte		.L651
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L563:
	.sleb128	5
	.byte		"WdgM_DeadlineSupervisionStartRefTablePtr"
	.byte		0
	.4byte		.L676
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L564:
	.sleb128	5
	.byte		"WdgM_DeadlineSupervisionEndRefTablePtr"
	.byte		0
	.4byte		.L676
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L565:
	.sleb128	5
	.byte		"WdgM_NextExternalCPEntriesTablePtr"
	.byte		0
	.4byte		.L678
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L566:
	.sleb128	5
	.byte		"WdgM_NextInternalCheckpointsBitVectorTablePtr"
	.byte		0
	.4byte		.L680
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L567:
	.sleb128	5
	.byte		"WdgM_LogicalSupervisionMonitorPtr"
	.byte		0
	.4byte		.L682
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L568:
	.sleb128	5
	.byte		"WdgM_NumberOfNextExternalCPs"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L569:
	.sleb128	5
	.byte		"WdgM_NumberOfDeadlineStartPointers"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L570:
	.sleb128	5
	.byte		"WdgM_NumberOfDeadlineEndPointers"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L571:
	.sleb128	5
	.byte		"WdgM_CheckpointID"
	.byte		0
	.4byte		.L686
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L572:
	.sleb128	5
	.byte		"WdgM_IsStartCpByInternal"
	.byte		0
	.4byte		.L688
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L573:
	.sleb128	5
	.byte		"WdgM_IsStopCpByInternal"
	.byte		0
	.4byte		.L688
	.sleb128	2
	.byte		0x23
	.uleb128	37
	.byte		0x1
.L574:
	.sleb128	5
	.byte		"WdgM_IsCpWaitingForExternalConnection"
	.byte		0
	.4byte		.L688
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
	.sleb128	0
.L675:
.L685:
	.sleb128	4
	.4byte		.L623
	.uleb128	179
	.uleb128	14
	.4byte		.L690-.L2
	.byte		"WdgM_LogicalSupervisionMonitorType_Tag"
	.byte		0
	.uleb128	12
.L592:
	.sleb128	5
	.byte		"WdgM_NextPossibleCheckpointBitvectorInternal"
	.byte		0
	.4byte		.L691
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L593:
	.sleb128	5
	.byte		"WdgM_NextPossibleCheckpointBitvectorExternal"
	.byte		0
	.4byte		.L691
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L594:
	.sleb128	5
	.byte		"WdgM_MostRecentlyReportedCP"
	.byte		0
	.4byte		.L687
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L595:
	.sleb128	5
	.byte		"WdgM_ActivityFlag"
	.byte		0
	.4byte		.L689
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L690:
.L672:
	.sleb128	4
	.4byte		.L623
	.uleb128	179
	.uleb128	14
	.4byte		.L693-.L2
	.byte		"WdgM_SupervisedEntityMonitorType_Tag"
	.byte		0
	.uleb128	20
.L546:
	.sleb128	5
	.byte		"WdgM_LocalSupervisionStatus"
	.byte		0
	.4byte		.L694
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L547:
	.sleb128	5
	.byte		"WdgM_LogicalSupervisionResult"
	.byte		0
	.4byte		.L696
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L548:
	.sleb128	5
	.byte		"WdgM_DeadlineSupervisionResult"
	.byte		0
	.4byte		.L696
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L549:
	.sleb128	5
	.byte		"WdgM_AliveSupervisionResult"
	.byte		0
	.4byte		.L696
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L550:
	.sleb128	5
	.byte		"WdgM_StatusChanged"
	.byte		0
	.4byte		.L689
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L551:
	.sleb128	5
	.byte		"WdgM_FailedSupervisionCyclesCounter"
	.byte		0
	.4byte		.L638
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
	.sleb128	0
.L693:
.L634:
	.sleb128	4
	.4byte		.L623
	.uleb128	179
	.uleb128	14
	.4byte		.L698-.L2
	.byte		"WdgM_LocalstatModeIndepType_Tag"
	.byte		0
	.uleb128	4
.L544:
	.sleb128	5
	.byte		"WdgM_SupervisedEntityId"
	.byte		0
	.4byte		.L673
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L545:
	.sleb128	5
	.byte		"WdgM_SizeOfInternalCheckpointsBitVector"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L698:
.L650:
	.sleb128	4
	.4byte		.L623
	.uleb128	179
	.uleb128	14
	.4byte		.L699-.L2
	.byte		"WdgM_DeadlineSupervisionType_Tag"
	.byte		0
	.uleb128	24
.L540:
	.sleb128	5
	.byte		"WdgM_DeadlineMin"
	.byte		0
	.4byte		.L700
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L541:
	.sleb128	5
	.byte		"WdgM_DeadlineMax"
	.byte		0
	.4byte		.L700
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L542:
	.sleb128	5
	.byte		"WdgM_OsCounter"
	.byte		0
	.4byte		.L703
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L543:
	.sleb128	5
	.byte		"WdgM_DeadlineMonitorEntryPtr"
	.byte		0
	.4byte		.L705
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L699:
.L708:
	.sleb128	4
	.4byte		.L623
	.uleb128	179
	.uleb128	14
	.4byte		.L709-.L2
	.byte		"WdgM_DeadLineSupervisionMonitorType_Tag"
	.byte		0
	.uleb128	12
.L538:
	.sleb128	5
	.byte		"WdgM_DeadlineTimeActual"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L539:
	.sleb128	5
	.byte		"WdgM_DeadlineTimerStatus"
	.byte		0
	.4byte		.L710
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L709:
.L702:
	.sleb128	4
	.4byte		.L623
	.uleb128	179
	.uleb128	14
	.4byte		.L712-.L2
	.byte		"WdgM_DeadlineTimeType_Tag"
	.byte		0
	.uleb128	8
.L536:
	.sleb128	5
	.byte		"WdgM_DeadlineTimeInTicks"
	.byte		0
	.4byte		.L713
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L537:
	.sleb128	5
	.byte		"WdgM_TimeOverflowValue"
	.byte		0
	.4byte		.L604
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L712:
.L645:
	.sleb128	4
	.4byte		.L623
	.uleb128	179
	.uleb128	14
	.4byte		.L714-.L2
	.byte		"WdgM_AliveSupervisionType_Tag"
	.byte		0
	.uleb128	16
.L530:
	.sleb128	5
	.byte		"WdgM_CorrespondingCheckpointStructPtr"
	.byte		0
	.4byte		.L664
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L531:
	.sleb128	5
	.byte		"WdgM_AliveMonitorEntryPtr"
	.byte		0
	.4byte		.L715
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L532:
	.sleb128	5
	.byte		"WdgM_ExpectedAliveIndications"
	.byte		0
	.4byte		.L627
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L533:
	.sleb128	5
	.byte		"WdgM_SupervisionReferenceCycle"
	.byte		0
	.4byte		.L637
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L534:
	.sleb128	5
	.byte		"WdgM_MinMargin"
	.byte		0
	.4byte		.L637
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L535:
	.sleb128	5
	.byte		"WdgM_MaxMargin"
	.byte		0
	.4byte		.L637
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L714:
.L718:
	.sleb128	4
	.4byte		.L623
	.uleb128	179
	.uleb128	14
	.4byte		.L719-.L2
	.byte		"WdgM_AliveSupervisionMonitorType_Tag"
	.byte		0
	.uleb128	4
.L528:
	.sleb128	5
	.byte		"WdgM_AliveCountVar"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L529:
	.sleb128	5
	.byte		"WdgM_SupervisionCyclesCounter"
	.byte		0
	.4byte		.L638
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L719:
	.section	.debug_info,,n
.L711:
	.sleb128	6
	.4byte		.L623
	.uleb128	169
	.uleb128	14
	.4byte		.L720-.L2
	.byte		"WdgM_TimerStatusType_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"WDGM_STOP"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"WDGM_START"
	.byte		0
	.sleb128	1
	.sleb128	0
.L720:
.L697:
	.sleb128	6
	.4byte		.L623
	.uleb128	159
	.uleb128	14
	.4byte		.L721-.L2
	.byte		"WdgM_SupervisionResultType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	7
	.byte		"WDGM_CORRECT"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"WDGM_INCORRECT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L721:
.L695:
	.sleb128	6
	.4byte		.L623
	.uleb128	124
	.uleb128	14
	.4byte		.L722-.L2
	.byte		"WdgM_LocalStatusType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	7
	.byte		"WDGM_LOCAL_STATUS_OK"
	.byte		0
	.sleb128	3
	.sleb128	7
	.byte		"WDGM_LOCAL_STATUS_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"WDGM_LOCAL_STATUS_EXPIRED"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"WDGM_LOCAL_STATUS_DEACTIVATED"
	.byte		0
	.sleb128	0
	.sleb128	0
.L722:
.L662:
	.sleb128	6
	.4byte		.L723
	.uleb128	66
	.uleb128	14
	.4byte		.L724-.L2
	.byte		"WdgIf_Mode_Tag"
	.byte		0
	.uleb128	4
	.sleb128	7
	.byte		"WDGIF_OFF_MODE"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"WDGIF_SLOW_MODE"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"WDGIF_FAST_MODE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L724:
	.section	.debug_info,,n
.L605:
	.sleb128	8
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L604:
	.sleb128	9
	.byte		"uint32"
	.byte		0
	.4byte		.L605
	.section	.debug_info,,n
.L603:
	.sleb128	10
	.4byte		.L604
.L611:
	.sleb128	9
	.byte		"WdgM_TriggerType"
	.byte		0
	.4byte		.L612
.L610:
	.sleb128	10
	.4byte		.L611
	.section	.debug_info,,n
.L608:
	.sleb128	11
	.4byte		.L609-.L2
	.4byte		.L610
	.section	.debug_info,,n
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L609:
.L617:
	.sleb128	9
	.byte		"WdgM_ModeInfoType"
	.byte		0
	.4byte		.L618
.L616:
	.sleb128	10
	.4byte		.L617
.L614:
	.sleb128	11
	.4byte		.L615-.L2
	.4byte		.L616
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L615:
.L621:
	.sleb128	9
	.byte		"WdgM_ConfigType"
	.byte		0
	.4byte		.L622
.L620:
	.sleb128	10
	.4byte		.L621
	.section	.debug_info,,n
.L626:
	.sleb128	13
	.4byte		.L616
.L625:
	.sleb128	10
	.4byte		.L626
.L629:
	.sleb128	8
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L628:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L629
.L627:
	.sleb128	10
	.4byte		.L628
.L633:
	.sleb128	9
	.byte		"WdgM_LocalstatModeIndepType"
	.byte		0
	.4byte		.L634
.L632:
	.sleb128	10
	.4byte		.L633
.L631:
	.sleb128	13
	.4byte		.L632
.L630:
	.sleb128	10
	.4byte		.L631
.L636:
	.sleb128	13
	.4byte		.L603
.L635:
	.sleb128	10
	.4byte		.L636
.L639:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L638:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L639
.L637:
	.sleb128	10
	.4byte		.L638
.L644:
	.sleb128	9
	.byte		"WdgM_AliveSupervisionType"
	.byte		0
	.4byte		.L645
.L643:
	.sleb128	10
	.4byte		.L644
.L642:
	.sleb128	13
	.4byte		.L643
.L641:
	.sleb128	10
	.4byte		.L642
.L649:
	.sleb128	9
	.byte		"WdgM_DeadlineSupervisionType"
	.byte		0
	.4byte		.L650
.L648:
	.sleb128	10
	.4byte		.L649
.L647:
	.sleb128	13
	.4byte		.L648
.L646:
	.sleb128	10
	.4byte		.L647
.L654:
	.sleb128	9
	.byte		"WdgM_LocalstatModeDepType"
	.byte		0
	.4byte		.L655
.L653:
	.sleb128	10
	.4byte		.L654
.L652:
	.sleb128	13
	.4byte		.L653
.L651:
	.sleb128	10
	.4byte		.L652
.L657:
	.sleb128	13
	.4byte		.L610
.L656:
	.sleb128	10
	.4byte		.L657
.L661:
	.sleb128	9
	.byte		"WdgIf_ModeType"
	.byte		0
	.4byte		.L662
.L660:
	.sleb128	9
	.byte		"WdgM_WdgModeType"
	.byte		0
	.4byte		.L661
.L659:
	.sleb128	10
	.4byte		.L660
.L667:
	.sleb128	9
	.byte		"WdgM_CheckpointType"
	.byte		0
	.4byte		.L668
.L666:
	.sleb128	10
	.4byte		.L667
.L665:
	.sleb128	13
	.4byte		.L666
.L664:
	.sleb128	10
	.4byte		.L665
.L671:
	.sleb128	9
	.byte		"WdgM_SupervisedEntityMonitorType"
	.byte		0
	.4byte		.L672
.L670:
	.sleb128	13
	.4byte		.L671
.L669:
	.sleb128	10
	.4byte		.L670
.L674:
	.sleb128	9
	.byte		"WdgM_SupervisedEntityIdType"
	.byte		0
	.4byte		.L628
.L673:
	.sleb128	10
	.4byte		.L674
.L677:
	.sleb128	13
	.4byte		.L647
.L676:
	.sleb128	10
	.4byte		.L677
.L679:
	.sleb128	13
	.4byte		.L665
.L678:
	.sleb128	10
	.4byte		.L679
.L681:
	.sleb128	13
	.4byte		.L637
.L680:
	.sleb128	10
	.4byte		.L681
.L684:
	.sleb128	9
	.byte		"WdgM_LogicalSupervisionMonitorType"
	.byte		0
	.4byte		.L685
.L683:
	.sleb128	13
	.4byte		.L684
.L682:
	.sleb128	10
	.4byte		.L683
.L687:
	.sleb128	9
	.byte		"WdgM_CheckpointIdType"
	.byte		0
	.4byte		.L628
.L686:
	.sleb128	10
	.4byte		.L687
.L689:
	.sleb128	9
	.byte		"boolean"
	.byte		0
	.4byte		.L639
.L688:
	.sleb128	10
	.4byte		.L689
.L692:
	.sleb128	13
	.4byte		.L638
.L691:
	.sleb128	10
	.4byte		.L692
.L694:
	.sleb128	9
	.byte		"WdgM_LocalStatusType"
	.byte		0
	.4byte		.L695
.L696:
	.sleb128	9
	.byte		"WdgM_SupervisionResultType"
	.byte		0
	.4byte		.L697
.L701:
	.sleb128	9
	.byte		"WdgM_DeadlineTimeType"
	.byte		0
	.4byte		.L702
.L700:
	.sleb128	10
	.4byte		.L701
.L704:
	.sleb128	9
	.byte		"CounterType"
	.byte		0
	.4byte		.L604
.L703:
	.sleb128	10
	.4byte		.L704
.L707:
	.sleb128	9
	.byte		"WdgM_DeadLineSupervisionMonitorType"
	.byte		0
	.4byte		.L708
.L706:
	.sleb128	13
	.4byte		.L707
.L705:
	.sleb128	10
	.4byte		.L706
.L710:
	.sleb128	9
	.byte		"WdgM_TimerStatusType"
	.byte		0
	.4byte		.L711
.L713:
	.sleb128	9
	.byte		"TickType"
	.byte		0
	.4byte		.L604
.L717:
	.sleb128	9
	.byte		"WdgM_AliveSupervisionMonitorType"
	.byte		0
	.4byte		.L718
.L716:
	.sleb128	13
	.4byte		.L717
.L715:
	.sleb128	10
	.4byte		.L716
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\WdgM_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\WdgM_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\WdgM_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\WdgM_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\WdgM_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\WdgM_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\WdgM_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
