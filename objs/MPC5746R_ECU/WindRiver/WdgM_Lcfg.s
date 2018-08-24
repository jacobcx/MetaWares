#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"WdgM_Lcfg.c"
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
	.section	.invalid_DATA,,d
	.0byte		.L602
	.section	.invalid_DATA,,d
	.type		WdgM_SupervisedEntityMonitorTable,@object
	.size		WdgM_SupervisedEntityMonitorTable,20
	.align		2
	.globl		WdgM_SupervisedEntityMonitorTable
WdgM_SupervisedEntityMonitorTable:
	.long		3
	.long		0
	.long		0
	.long		0
	.byte		0
	.byte		0
	.space		2
	.section	.invalid_DATA,,d
	.type		WdgM_AliveSupervisionMonitorTable,@object
	.size		WdgM_AliveSupervisionMonitorTable,4
	.align		1
	.globl		WdgM_AliveSupervisionMonitorTable
WdgM_AliveSupervisionMonitorTable:
	.short		0
	.byte		0
	.space		1
	.section	.invalid_DATA,,d
	.type		WdgM_DeadlineSupervisionMonitorTable,@object
	.size		WdgM_DeadlineSupervisionMonitorTable,12
	.align		2
	.globl		WdgM_DeadlineSupervisionMonitorTable
WdgM_DeadlineSupervisionMonitorTable:
	.long		0
	.long		0
	.long		0
	.section	.invalid_DATA,,d
	.type		WdgM_LogicalsupervisionMonitorTable,@object
	.size		WdgM_LogicalsupervisionMonitorTable,12
	.align		2
	.globl		WdgM_LogicalsupervisionMonitorTable
WdgM_LogicalsupervisionMonitorTable:
	.long		0
	.long		0
	.short		0
	.byte		0
	.space		1
	.section	.text_vle
	.0byte		.L623
	.section	.text_vle
	.type		WdgM_DemEventId,@object
	.size		WdgM_DemEventId,6
	.align		1
	.globl		WdgM_DemEventId
WdgM_DemEventId:
	.short		0
	.short		0
	.short		0
	.section	.text_vle
	.type		WdgMCallerIdCfg,@object
	.size		WdgMCallerIdCfg,8
	.align		2
	.globl		WdgMCallerIdCfg
WdgMCallerIdCfg:
	.long		0
	.byte		0
	.space		3
	.section	.text_vle
	.type		WdgM_LTtoPCHashValue,@object
	.size		WdgM_LTtoPCHashValue,4
	.align		2
	.globl		WdgM_LTtoPCHashValue
WdgM_LTtoPCHashValue:
	.long		-1382466861
	.section	.text_vle
	.type		WdgM_LTHashValue,@object
	.size		WdgM_LTHashValue,4
	.align		2
	.globl		WdgM_LTHashValue
WdgM_LTHashValue:
	.long		601671435
	.section	.text_vle
#$$ld
.L5:
.L636:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgM\\ssc\\make\\..\\inc\\WdgM_Types.h"
.L603:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\WdgM_Lcfg.c"
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	12
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\WdgM_Lcfg.c"
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
.L602:
	.sleb128	2
	.byte		0x1
	.4byte		.L603
	.uleb128	60
	.uleb128	49
	.byte		"WdgM_SupervisedEntityMonitorTable"
	.byte		0
	.4byte		.L604
	.sleb128	5
	.byte		0x3
	.4byte		WdgM_SupervisedEntityMonitorTable
	.section	.debug_info,,n
	.section	.debug_info,,n
.L608:
	.sleb128	2
	.byte		0x1
	.4byte		.L603
	.uleb128	65
	.uleb128	49
	.byte		"WdgM_AliveSupervisionMonitorTable"
	.byte		0
	.4byte		.L609
	.sleb128	5
	.byte		0x3
	.4byte		WdgM_AliveSupervisionMonitorTable
	.section	.debug_info,,n
.L613:
	.sleb128	2
	.byte		0x1
	.4byte		.L603
	.uleb128	70
	.uleb128	52
	.byte		"WdgM_DeadlineSupervisionMonitorTable"
	.byte		0
	.4byte		.L614
	.sleb128	5
	.byte		0x3
	.4byte		WdgM_DeadlineSupervisionMonitorTable
	.section	.debug_info,,n
.L618:
	.sleb128	2
	.byte		0x1
	.4byte		.L603
	.uleb128	75
	.uleb128	51
	.byte		"WdgM_LogicalsupervisionMonitorTable"
	.byte		0
	.4byte		.L619
	.sleb128	5
	.byte		0x3
	.4byte		WdgM_LogicalsupervisionMonitorTable
	.section	.debug_info,,n
.L623:
	.sleb128	2
	.byte		0x1
	.4byte		.L603
	.uleb128	95
	.uleb128	39
	.byte		"WdgM_DemEventId"
	.byte		0
	.4byte		.L624
	.sleb128	5
	.byte		0x3
	.4byte		WdgM_DemEventId
	.section	.debug_info,,n
	.section	.debug_info,,n
.L627:
	.sleb128	2
	.byte		0x1
	.4byte		.L603
	.uleb128	106
	.uleb128	37
	.byte		"WdgMCallerIdCfg"
	.byte		0
	.4byte		.L628
	.sleb128	5
	.byte		0x3
	.4byte		WdgMCallerIdCfg
	.section	.debug_info,,n
.L631:
	.sleb128	2
	.byte		0x1
	.4byte		.L603
	.uleb128	121
	.uleb128	27
	.byte		"WdgM_LTtoPCHashValue"
	.byte		0
	.4byte		.L632
	.sleb128	5
	.byte		0x3
	.4byte		WdgM_LTtoPCHashValue
	.section	.debug_info,,n
.L635:
	.sleb128	2
	.byte		0x1
	.4byte		.L603
	.uleb128	123
	.uleb128	27
	.byte		"WdgM_LTHashValue"
	.byte		0
	.4byte		.L632
	.sleb128	5
	.byte		0x3
	.4byte		WdgM_LTHashValue
	.section	.debug_info,,n
.L626:
	.sleb128	3
	.4byte		.L636
	.uleb128	179
	.uleb128	14
	.4byte		.L637-.L2
	.byte		"WdgM_DemEventIdType_Tag"
	.byte		0
	.uleb128	6
	.section	.debug_info,,n
.L598:
	.sleb128	4
	.byte		"Dem_E_Set_Mode"
	.byte		0
	.4byte		.L638
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L599:
	.sleb128	4
	.byte		"Dem_E_Improper_Caller"
	.byte		0
	.4byte		.L638
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L600:
	.sleb128	4
	.byte		"Dem_E_Monitoring"
	.byte		0
	.4byte		.L638
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L637:
.L630:
	.sleb128	3
	.4byte		.L636
	.uleb128	179
	.uleb128	14
	.4byte		.L641-.L2
	.byte		"WdgM_CallerIdType_Tag"
	.byte		0
	.uleb128	8
.L596:
	.sleb128	4
	.byte		"WdgM_CallerIdsTablePtr"
	.byte		0
	.4byte		.L642
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L597:
	.sleb128	4
	.byte		"WdgM_NoOfCallerIds"
	.byte		0
	.4byte		.L645
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L641:
.L622:
	.sleb128	3
	.4byte		.L636
	.uleb128	179
	.uleb128	14
	.4byte		.L648-.L2
	.byte		"WdgM_LogicalSupervisionMonitorType_Tag"
	.byte		0
	.uleb128	12
.L592:
	.sleb128	4
	.byte		"WdgM_NextPossibleCheckpointBitvectorInternal"
	.byte		0
	.4byte		.L649
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L593:
	.sleb128	4
	.byte		"WdgM_NextPossibleCheckpointBitvectorExternal"
	.byte		0
	.4byte		.L649
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L594:
	.sleb128	4
	.byte		"WdgM_MostRecentlyReportedCP"
	.byte		0
	.4byte		.L651
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L595:
	.sleb128	4
	.byte		"WdgM_ActivityFlag"
	.byte		0
	.4byte		.L652
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L648:
.L607:
	.sleb128	3
	.4byte		.L636
	.uleb128	179
	.uleb128	14
	.4byte		.L653-.L2
	.byte		"WdgM_SupervisedEntityMonitorType_Tag"
	.byte		0
	.uleb128	20
.L546:
	.sleb128	4
	.byte		"WdgM_LocalSupervisionStatus"
	.byte		0
	.4byte		.L654
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L547:
	.sleb128	4
	.byte		"WdgM_LogicalSupervisionResult"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L548:
	.sleb128	4
	.byte		"WdgM_DeadlineSupervisionResult"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L549:
	.sleb128	4
	.byte		"WdgM_AliveSupervisionResult"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L550:
	.sleb128	4
	.byte		"WdgM_StatusChanged"
	.byte		0
	.4byte		.L652
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L551:
	.sleb128	4
	.byte		"WdgM_FailedSupervisionCyclesCounter"
	.byte		0
	.4byte		.L646
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
	.sleb128	0
.L653:
.L617:
	.sleb128	3
	.4byte		.L636
	.uleb128	179
	.uleb128	14
	.4byte		.L658-.L2
	.byte		"WdgM_DeadLineSupervisionMonitorType_Tag"
	.byte		0
	.uleb128	12
.L538:
	.sleb128	4
	.byte		"WdgM_DeadlineTimeActual"
	.byte		0
	.4byte		.L659
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L539:
	.sleb128	4
	.byte		"WdgM_DeadlineTimerStatus"
	.byte		0
	.4byte		.L661
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L658:
.L660:
	.sleb128	3
	.4byte		.L636
	.uleb128	179
	.uleb128	14
	.4byte		.L663-.L2
	.byte		"WdgM_DeadlineTimeType_Tag"
	.byte		0
	.uleb128	8
.L536:
	.sleb128	4
	.byte		"WdgM_DeadlineTimeInTicks"
	.byte		0
	.4byte		.L664
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L537:
	.sleb128	4
	.byte		"WdgM_TimeOverflowValue"
	.byte		0
	.4byte		.L633
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L663:
.L612:
	.sleb128	3
	.4byte		.L636
	.uleb128	179
	.uleb128	14
	.4byte		.L665-.L2
	.byte		"WdgM_AliveSupervisionMonitorType_Tag"
	.byte		0
	.uleb128	4
.L528:
	.sleb128	4
	.byte		"WdgM_AliveCountVar"
	.byte		0
	.4byte		.L639
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L529:
	.sleb128	4
	.byte		"WdgM_SupervisionCyclesCounter"
	.byte		0
	.4byte		.L646
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L665:
	.section	.debug_info,,n
.L662:
	.sleb128	5
	.4byte		.L636
	.uleb128	169
	.uleb128	14
	.4byte		.L666-.L2
	.byte		"WdgM_TimerStatusType_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	6
	.byte		"WDGM_STOP"
	.byte		0
	.sleb128	0
	.sleb128	6
	.byte		"WDGM_START"
	.byte		0
	.sleb128	1
	.sleb128	0
.L666:
.L657:
	.sleb128	5
	.4byte		.L636
	.uleb128	159
	.uleb128	14
	.4byte		.L667-.L2
	.byte		"WdgM_SupervisionResultType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	6
	.byte		"WDGM_CORRECT"
	.byte		0
	.sleb128	0
	.sleb128	6
	.byte		"WDGM_INCORRECT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L667:
.L655:
	.sleb128	5
	.4byte		.L636
	.uleb128	124
	.uleb128	14
	.4byte		.L668-.L2
	.byte		"WdgM_LocalStatusType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	6
	.byte		"WDGM_LOCAL_STATUS_OK"
	.byte		0
	.sleb128	3
	.sleb128	6
	.byte		"WDGM_LOCAL_STATUS_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	6
	.byte		"WDGM_LOCAL_STATUS_EXPIRED"
	.byte		0
	.sleb128	1
	.sleb128	6
	.byte		"WDGM_LOCAL_STATUS_DEACTIVATED"
	.byte		0
	.sleb128	0
	.sleb128	0
.L668:
	.section	.debug_info,,n
.L606:
	.sleb128	7
	.byte		"WdgM_SupervisedEntityMonitorType"
	.byte		0
	.4byte		.L607
	.section	.debug_info,,n
.L604:
	.sleb128	8
	.4byte		.L605-.L2
	.4byte		.L606
	.section	.debug_info,,n
	.sleb128	9
	.uleb128	0
	.sleb128	0
.L605:
.L611:
	.sleb128	7
	.byte		"WdgM_AliveSupervisionMonitorType"
	.byte		0
	.4byte		.L612
.L609:
	.sleb128	8
	.4byte		.L610-.L2
	.4byte		.L611
	.sleb128	9
	.uleb128	0
	.sleb128	0
.L610:
.L616:
	.sleb128	7
	.byte		"WdgM_DeadLineSupervisionMonitorType"
	.byte		0
	.4byte		.L617
.L614:
	.sleb128	8
	.4byte		.L615-.L2
	.4byte		.L616
	.sleb128	9
	.uleb128	0
	.sleb128	0
.L615:
.L621:
	.sleb128	7
	.byte		"WdgM_LogicalSupervisionMonitorType"
	.byte		0
	.4byte		.L622
.L619:
	.sleb128	8
	.4byte		.L620-.L2
	.4byte		.L621
	.sleb128	9
	.uleb128	0
	.sleb128	0
.L620:
.L625:
	.sleb128	7
	.byte		"WdgM_DemEventIdType"
	.byte		0
	.4byte		.L626
	.section	.debug_info,,n
.L624:
	.sleb128	10
	.4byte		.L625
.L629:
	.sleb128	7
	.byte		"WdgM_CallerIdType"
	.byte		0
	.4byte		.L630
.L628:
	.sleb128	10
	.4byte		.L629
	.section	.debug_info,,n
.L634:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L633:
	.sleb128	7
	.byte		"uint32"
	.byte		0
	.4byte		.L634
.L632:
	.sleb128	10
	.4byte		.L633
.L640:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L639:
	.sleb128	7
	.byte		"uint16"
	.byte		0
	.4byte		.L640
.L638:
	.sleb128	7
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L639
.L644:
	.sleb128	10
	.4byte		.L639
	.section	.debug_info,,n
.L643:
	.sleb128	12
	.4byte		.L644
.L642:
	.sleb128	10
	.4byte		.L643
.L647:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L646:
	.sleb128	7
	.byte		"uint8"
	.byte		0
	.4byte		.L647
.L645:
	.sleb128	10
	.4byte		.L646
.L650:
	.sleb128	12
	.4byte		.L646
.L649:
	.sleb128	10
	.4byte		.L650
.L651:
	.sleb128	7
	.byte		"WdgM_CheckpointIdType"
	.byte		0
	.4byte		.L639
.L652:
	.sleb128	7
	.byte		"boolean"
	.byte		0
	.4byte		.L647
.L654:
	.sleb128	7
	.byte		"WdgM_LocalStatusType"
	.byte		0
	.4byte		.L655
.L656:
	.sleb128	7
	.byte		"WdgM_SupervisionResultType"
	.byte		0
	.4byte		.L657
.L659:
	.sleb128	7
	.byte		"WdgM_DeadlineTimeType"
	.byte		0
	.4byte		.L660
.L661:
	.sleb128	7
	.byte		"WdgM_TimerStatusType"
	.byte		0
	.4byte		.L662
.L664:
	.sleb128	7
	.byte		"TickType"
	.byte		0
	.4byte		.L633
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\WdgM_Lcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\WdgM_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\WdgM_Lcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\WdgM_Lcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\WdgM_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\WdgM_Lcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\WdgM_Lcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
