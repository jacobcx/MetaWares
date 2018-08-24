#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinIf_PBcfg.c"
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
	.section	.invalid_BSS,,b
	.0byte		.L662
	.section	.invalid_BSS,,b
	.type		ETCollisionDetectd_a0,@object
	.size		ETCollisionDetectd_a0,3
	.align		2
ETCollisionDetectd_a0:
	.space		3
	.section	.invalid_BSS,,b
	.type		SPPendingRequest_a0,@object
	.size		SPPendingRequest_a0,1
	.align		2
SPPendingRequest_a0:
	.space		1
	.section	.invalid_BSS,,b
	.type		LinIf_ScheduleTableEntry_a0,@object
	.size		LinIf_ScheduleTableEntry_a0,3
	.align		2
LinIf_ScheduleTableEntry_a0:
	.space		3
	.section	.text_vle
	.0byte		.L675
	.section	.text_vle
	.type		LinIf_ConfigFrame0,@object
	.size		LinIf_ConfigFrame0,32
	.align		2
LinIf_ConfigFrame0:
	.byte		0
	.space		3
	.long		9
	.byte		8
	.byte		1
	.short		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.space		1
	.short		0
	.long		0
	.byte		0
	.space		1
	.short		0
	.section	.text_vle
	.type		LinIf_ConfigEntry0,@object
	.size		LinIf_ConfigEntry0,8
	.align		2
LinIf_ConfigEntry0:
	.short		0
	.byte		0
	.space		1
	.long		LinIf_ConfigFrame0
	.section	.text_vle
	.type		LinIf_ConfigEntry1,@object
	.size		LinIf_ConfigEntry1,8
	.align		2
LinIf_ConfigEntry1:
	.short		0
	.byte		0
	.space		1
	.long		LinIf_ConfigFrame0
	.section	.text_vle
	.type		LinIf_ConfigSchTable0,@object
	.size		LinIf_ConfigSchTable0,60
	.align		2
LinIf_ConfigSchTable0:
	.long		0
	.long		0
	.long		0
	.byte		0
	.byte		0
	.space		2
	.long		0
	.long		1
	.long		0
	.long		0
	.byte		1
	.byte		1
	.space		2
	.long		LinIf_ConfigEntry0
	.long		1
	.long		0
	.long		0
	.byte		1
	.byte		1
	.space		2
	.long		LinIf_ConfigEntry1
	.section	.text_vle
	.type		LinIf_ConfigChannel,@object
	.size		LinIf_ConfigChannel,24
	.align		2
LinIf_ConfigChannel:
	.byte		1
	.byte		3
	.space		2
	.long		LinIf_ConfigFrame0
	.long		LinIf_ConfigSchTable0
	.long		ETCollisionDetectd_a0
	.long		SPPendingRequest_a0
	.long		LinIf_ScheduleTableEntry_a0
	.section	.text_vle
	.type		LinIf_ConfirmationULConfig,@object
	.size		LinIf_ConfirmationULConfig,12
	.align		2
LinIf_ConfirmationULConfig:
	.long		0
	.long		0
	.long		0
	.section	.text_vle
	.type		LinIf_PBtoPCHashValue,@object
	.size		LinIf_PBtoPCHashValue,4
	.align		2
LinIf_PBtoPCHashValue:
	.long		-1733749838
	.section	.text_vle
	.type		LinIf_PBtoLTHashValue,@object
	.size		LinIf_PBtoLTHashValue,4
	.align		2
LinIf_PBtoLTHashValue:
	.long		911557151
	.section	.text_vle
	.0byte		.L713
	.section	.text_vle
	.type		LinIfGlobalConfig,@object
	.size		LinIfGlobalConfig,20
	.align		2
	.globl		LinIfGlobalConfig
LinIfGlobalConfig:
	.short		1
	.space		2
	.long		LinIf_ConfigChannel
	.long		LinIf_PBtoPCHashValue
	.long		LinIf_PBtoLTHashValue
	.long		LinIf_ConfirmationULConfig
	.section	.text_vle
#$$ld
.L5:
.L717:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Types.h"
.L663:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\LinIf_PBcfg.c"
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\LinIf_PBcfg.c"
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
.L662:
	.sleb128	2
	.4byte		.L663
	.uleb128	44
	.uleb128	35
	.byte		"ETCollisionDetectd_a0"
	.byte		0
	.4byte		.L664
	.sleb128	5
	.byte		0x3
	.4byte		ETCollisionDetectd_a0
	.section	.debug_info,,n
	.section	.debug_info,,n
.L668:
	.sleb128	2
	.4byte		.L663
	.uleb128	47
	.uleb128	35
	.byte		"SPPendingRequest_a0"
	.byte		0
	.4byte		.L669
	.sleb128	5
	.byte		0x3
	.4byte		SPPendingRequest_a0
	.section	.debug_info,,n
.L671:
	.sleb128	2
	.4byte		.L663
	.uleb128	50
	.uleb128	33
	.byte		"LinIf_ScheduleTableEntry_a0"
	.byte		0
	.4byte		.L672
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_ScheduleTableEntry_a0
	.section	.debug_info,,n
.L675:
	.sleb128	2
	.4byte		.L663
	.uleb128	59
	.uleb128	42
	.byte		"LinIf_ConfigFrame0"
	.byte		0
	.4byte		.L676
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_ConfigFrame0
	.section	.debug_info,,n
	.section	.debug_info,,n
.L681:
	.sleb128	2
	.4byte		.L663
	.uleb128	77
	.uleb128	42
	.byte		"LinIf_ConfigEntry0"
	.byte		0
	.4byte		.L682
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_ConfigEntry0
	.section	.debug_info,,n
.L687:
	.sleb128	2
	.4byte		.L663
	.uleb128	87
	.uleb128	42
	.byte		"LinIf_ConfigEntry1"
	.byte		0
	.4byte		.L688
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_ConfigEntry1
	.section	.debug_info,,n
.L690:
	.sleb128	2
	.4byte		.L663
	.uleb128	97
	.uleb128	50
	.byte		"LinIf_ConfigSchTable0"
	.byte		0
	.4byte		.L691
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_ConfigSchTable0
	.section	.debug_info,,n
.L696:
	.sleb128	2
	.4byte		.L663
	.uleb128	126
	.uleb128	49
	.byte		"LinIf_ConfigChannel"
	.byte		0
	.4byte		.L697
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_ConfigChannel
	.section	.debug_info,,n
.L702:
	.sleb128	2
	.4byte		.L663
	.uleb128	140
	.uleb128	60
	.byte		"LinIf_ConfirmationULConfig"
	.byte		0
	.4byte		.L703
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_ConfirmationULConfig
	.section	.debug_info,,n
.L708:
	.sleb128	2
	.4byte		.L663
	.uleb128	149
	.uleb128	37
	.byte		"LinIf_PBtoPCHashValue"
	.byte		0
	.4byte		.L709
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_PBtoPCHashValue
	.section	.debug_info,,n
.L712:
	.sleb128	2
	.4byte		.L663
	.uleb128	150
	.uleb128	37
	.byte		"LinIf_PBtoLTHashValue"
	.byte		0
	.4byte		.L709
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_PBtoLTHashValue
	.section	.debug_info,,n
.L713:
	.sleb128	3
	.byte		0x1
	.4byte		.L663
	.uleb128	156
	.uleb128	41
	.byte		"LinIfGlobalConfig"
	.byte		0
	.4byte		.L714
	.sleb128	5
	.byte		0x3
	.4byte		LinIfGlobalConfig
	.section	.debug_info,,n
	.section	.debug_info,,n
.L716:
	.sleb128	4
	.4byte		.L717
	.uleb128	322
	.uleb128	1
	.4byte		.L718-.L2
	.uleb128	20
	.section	.debug_info,,n
.L461:
	.sleb128	5
	.byte		"MaxLinIfChannel"
	.byte		0
	.4byte		.L719
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L462:
	.sleb128	5
	.byte		"LinIfChannel_p"
	.byte		0
	.4byte		.L722
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L463:
	.sleb128	5
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L723
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L464:
	.sleb128	5
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L723
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L465:
	.sleb128	5
	.byte		"LinIf_ConfirmationULConfig_p"
	.byte		0
	.4byte		.L724
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L718:
.L701:
	.sleb128	4
	.4byte		.L717
	.uleb128	322
	.uleb128	1
	.4byte		.L725-.L2
	.uleb128	24
.L442:
	.sleb128	5
	.byte		"LinIfMaxLinFrames"
	.byte		0
	.4byte		.L726
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L443:
	.sleb128	5
	.byte		"LinIfMaxSchedules"
	.byte		0
	.4byte		.L726
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L444:
	.sleb128	5
	.byte		"LinIfFrame_p"
	.byte		0
	.4byte		.L727
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L445:
	.sleb128	5
	.byte		"LinIfScheduleTable_p"
	.byte		0
	.4byte		.L728
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L446:
	.sleb128	5
	.byte		"ETCollisionDetectd_p"
	.byte		0
	.4byte		.L729
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L447:
	.sleb128	5
	.byte		"SPPendingRequest_p"
	.byte		0
	.4byte		.L729
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L448:
	.sleb128	5
	.byte		"LinIf_ScheduleTableEntry_p"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L725:
.L695:
	.sleb128	4
	.4byte		.L717
	.uleb128	322
	.uleb128	1
	.4byte		.L731-.L2
	.uleb128	20
.L422:
	.sleb128	5
	.byte		"LinIfResumePosition"
	.byte		0
	.4byte		.L732
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L423:
	.sleb128	5
	.byte		"LinIfRunMode"
	.byte		0
	.4byte		.L735
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L424:
	.sleb128	5
	.byte		"LinIfScheduleMode"
	.byte		0
	.4byte		.L738
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L425:
	.sleb128	5
	.byte		"LinIfScheduleTableIndex"
	.byte		0
	.4byte		.L741
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L426:
	.sleb128	5
	.byte		"LinIfMaxSchEntry"
	.byte		0
	.4byte		.L726
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L427:
	.sleb128	5
	.byte		"LinIfEntry_p"
	.byte		0
	.4byte		.L743
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L731:
.L686:
	.sleb128	4
	.4byte		.L717
	.uleb128	322
	.uleb128	1
	.4byte		.L744-.L2
	.uleb128	8
.L419:
	.sleb128	5
	.byte		"LinIfDelay"
	.byte		0
	.4byte		.L719
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L420:
	.sleb128	5
	.byte		"LinIfCollisionResolvingRef"
	.byte		0
	.4byte		.L741
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L421:
	.sleb128	5
	.byte		"LinIfFrameRef"
	.byte		0
	.4byte		.L727
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L744:
.L680:
	.sleb128	4
	.4byte		.L717
	.uleb128	322
	.uleb128	1
	.4byte		.L745-.L2
	.uleb128	32
.L405:
	.sleb128	5
	.byte		"LinIfChecksumType"
	.byte		0
	.4byte		.L746
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L406:
	.sleb128	5
	.byte		"LinIfFrameType"
	.byte		0
	.4byte		.L748
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L407:
	.sleb128	5
	.byte		"LinIfLength"
	.byte		0
	.4byte		.L751
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L408:
	.sleb128	5
	.byte		"LinIfPid"
	.byte		0
	.4byte		.L753
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L409:
	.sleb128	5
	.byte		"LinIfTxConfirmationId"
	.byte		0
	.4byte		.L755
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L410:
	.sleb128	5
	.byte		"LinIfPduDirection"
	.byte		0
	.4byte		.L757
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L411:
	.sleb128	5
	.byte		"LinIfFixedFrameSduData"
	.byte		0
	.4byte		.L759
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L412:
	.sleb128	5
	.byte		"LinIfRxTxTargetPduRef"
	.byte		0
	.4byte		.L755
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L413:
	.sleb128	5
	.byte		"LinIfSubsFrames_p"
	.byte		0
	.4byte		.L761
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L414:
	.sleb128	5
	.byte		"LinIfNoOfSubEntry"
	.byte		0
	.4byte		.L726
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L415:
	.sleb128	5
	.byte		"LinIfFunctionIndex"
	.byte		0
	.4byte		.L719
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L745:
.L764:
	.sleb128	4
	.4byte		.L717
	.uleb128	322
	.uleb128	1
	.4byte		.L765-.L2
	.uleb128	2
.L403:
	.sleb128	5
	.byte		"LinIfSubFrameIndex"
	.byte		0
	.4byte		.L726
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L404:
	.sleb128	5
	.byte		"LinIfSubFramePriority"
	.byte		0
	.4byte		.L726
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L765:
.L707:
	.sleb128	4
	.4byte		.L717
	.uleb128	322
	.uleb128	1
	.4byte		.L766-.L2
	.uleb128	12
.L400:
	.sleb128	5
	.byte		"GotoSleepConfirmationUL"
	.byte		0
	.4byte		.L767
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L401:
	.sleb128	5
	.byte		"WakeupConfirmationUL"
	.byte		0
	.4byte		.L767
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L402:
	.sleb128	5
	.byte		"ScheduleRequestConfirmationUL"
	.byte		0
	.4byte		.L767
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L766:
	.section	.debug_info,,n
.L769:
	.sleb128	6
	.4byte		.L717
	.uleb128	322
	.uleb128	1
	.4byte		.L770-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"LIN_SM"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"CDD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L770:
.L740:
	.sleb128	6
	.4byte		.L717
	.uleb128	232
	.uleb128	14
	.4byte		.L771-.L2
	.uleb128	4
	.sleb128	7
	.byte		"LINTP_APPLICATIVE_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"LINTP_DIAG_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"LINTP_DIAG_RESPONSE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L771:
.L750:
	.sleb128	6
	.4byte		.L717
	.uleb128	110
	.uleb128	1
	.4byte		.L772-.L2
	.uleb128	4
	.sleb128	7
	.byte		"INVALID_STATE"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"FREE"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"ASSIGN"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"ASSIGN_FRAME_ID_RANGE"
	.byte		0
	.sleb128	3
	.sleb128	7
	.byte		"EVENT_TRIGGERED"
	.byte		0
	.sleb128	4
	.sleb128	7
	.byte		"SAVE_CONFIGURATION"
	.byte		0
	.sleb128	5
	.sleb128	7
	.byte		"SPORADIC"
	.byte		0
	.sleb128	6
	.sleb128	7
	.byte		"SRF"
	.byte		0
	.sleb128	7
	.sleb128	7
	.byte		"UNASSIGN"
	.byte		0
	.sleb128	8
	.sleb128	7
	.byte		"UNCONDITIONAL"
	.byte		0
	.sleb128	9
	.sleb128	0
.L772:
.L734:
	.sleb128	6
	.4byte		.L717
	.uleb128	102
	.uleb128	1
	.4byte		.L773-.L2
	.uleb128	4
	.sleb128	7
	.byte		"CONTINUE_AT_IT_POINT"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"START_FROM_BEGINNING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L773:
.L737:
	.sleb128	6
	.4byte		.L717
	.uleb128	63
	.uleb128	1
	.4byte		.L774-.L2
	.uleb128	4
	.sleb128	7
	.byte		"RUN_CONTINUOUS"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L774:
	.section	.debug_info,,n
.L667:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L666:
	.sleb128	9
	.byte		"boolean"
	.byte		0
	.4byte		.L667
	.section	.debug_info,,n
.L664:
	.sleb128	10
	.4byte		.L665-.L2
	.4byte		.L666
	.section	.debug_info,,n
	.sleb128	11
	.uleb128	2
	.sleb128	0
.L665:
.L669:
	.sleb128	10
	.4byte		.L670-.L2
	.4byte		.L666
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L670:
.L674:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L667
.L672:
	.sleb128	10
	.4byte		.L673-.L2
	.4byte		.L674
	.sleb128	11
	.uleb128	2
	.sleb128	0
.L673:
.L679:
	.sleb128	9
	.byte		"LinIfFrame"
	.byte		0
	.4byte		.L680
	.section	.debug_info,,n
.L678:
	.sleb128	12
	.4byte		.L679
.L676:
	.sleb128	10
	.4byte		.L677-.L2
	.4byte		.L678
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L677:
.L685:
	.sleb128	9
	.byte		"LinIfEntry"
	.byte		0
	.4byte		.L686
.L684:
	.sleb128	12
	.4byte		.L685
.L682:
	.sleb128	10
	.4byte		.L683-.L2
	.4byte		.L684
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L683:
.L688:
	.sleb128	10
	.4byte		.L689-.L2
	.4byte		.L684
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L689:
.L694:
	.sleb128	9
	.byte		"LinIfScheduleTable"
	.byte		0
	.4byte		.L695
.L693:
	.sleb128	12
	.4byte		.L694
.L691:
	.sleb128	10
	.4byte		.L692-.L2
	.4byte		.L693
	.sleb128	11
	.uleb128	2
	.sleb128	0
.L692:
.L700:
	.sleb128	9
	.byte		"LinIfChannelReloc"
	.byte		0
	.4byte		.L701
.L699:
	.sleb128	12
	.4byte		.L700
.L697:
	.sleb128	10
	.4byte		.L698-.L2
	.4byte		.L699
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L698:
.L706:
	.sleb128	9
	.byte		"LinIf_ConfirmationULConfig_t"
	.byte		0
	.4byte		.L707
.L705:
	.sleb128	12
	.4byte		.L706
.L703:
	.sleb128	10
	.4byte		.L704-.L2
	.4byte		.L705
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L704:
.L711:
	.sleb128	8
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L710:
	.sleb128	9
	.byte		"uint32"
	.byte		0
	.4byte		.L711
.L709:
	.sleb128	12
	.4byte		.L710
.L715:
	.sleb128	9
	.byte		"LinIf_ConfigType"
	.byte		0
	.4byte		.L716
.L714:
	.sleb128	12
	.4byte		.L715
.L721:
	.sleb128	8
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L720:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L721
.L719:
	.sleb128	12
	.4byte		.L720
	.section	.debug_info,,n
.L722:
	.sleb128	13
	.4byte		.L699
.L723:
	.sleb128	13
	.4byte		.L709
.L724:
	.sleb128	13
	.4byte		.L705
.L726:
	.sleb128	12
	.4byte		.L674
.L727:
	.sleb128	13
	.4byte		.L678
.L728:
	.sleb128	13
	.4byte		.L693
.L729:
	.sleb128	13
	.4byte		.L666
.L730:
	.sleb128	13
	.4byte		.L674
.L733:
	.sleb128	9
	.byte		"LinIfResumePosition_t"
	.byte		0
	.4byte		.L734
.L732:
	.sleb128	12
	.4byte		.L733
.L736:
	.sleb128	9
	.byte		"LinIfRunMode_t"
	.byte		0
	.4byte		.L737
.L735:
	.sleb128	12
	.4byte		.L736
.L739:
	.sleb128	9
	.byte		"LinTp_Mode"
	.byte		0
	.4byte		.L740
.L738:
	.sleb128	12
	.4byte		.L739
.L742:
	.sleb128	9
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L674
.L741:
	.sleb128	12
	.4byte		.L742
.L743:
	.sleb128	13
	.4byte		.L684
.L747:
	.sleb128	9
	.byte		"Lin_FrameCsModelType"
	.byte		0
	.4byte		.L674
.L746:
	.sleb128	12
	.4byte		.L747
.L749:
	.sleb128	9
	.byte		"LinIfFrameType_t"
	.byte		0
	.4byte		.L750
.L748:
	.sleb128	12
	.4byte		.L749
.L752:
	.sleb128	9
	.byte		"Lin_FrameDlType"
	.byte		0
	.4byte		.L674
.L751:
	.sleb128	12
	.4byte		.L752
.L754:
	.sleb128	9
	.byte		"Lin_FramePidType"
	.byte		0
	.4byte		.L674
.L753:
	.sleb128	12
	.4byte		.L754
.L756:
	.sleb128	9
	.byte		"PduIdType"
	.byte		0
	.4byte		.L720
.L755:
	.sleb128	12
	.4byte		.L756
.L758:
	.sleb128	9
	.byte		"Lin_FrameResponseType"
	.byte		0
	.4byte		.L674
.L757:
	.sleb128	12
	.4byte		.L758
.L759:
	.sleb128	10
	.4byte		.L760-.L2
	.4byte		.L726
	.sleb128	11
	.uleb128	7
	.sleb128	0
.L760:
.L763:
	.sleb128	9
	.byte		"LinIfSubstitutionFrames"
	.byte		0
	.4byte		.L764
.L762:
	.sleb128	12
	.4byte		.L763
.L761:
	.sleb128	13
	.4byte		.L762
.L768:
	.sleb128	9
	.byte		"LinIf_ConfirmationUL_t"
	.byte		0
	.4byte		.L769
.L767:
	.sleb128	12
	.4byte		.L768
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\LinIf_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
