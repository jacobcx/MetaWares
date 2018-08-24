#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinIf_Lcfg.c"
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
	.0byte		.L753
	.section	.text_vle
	.type		LinIf_ChannelIdentifier_a,@object
	.size		LinIf_ChannelIdentifier_a,3
	.align		0
LinIf_ChannelIdentifier_a:
	.byte		0
	.byte		0
	.byte		0
	.section	.text_vle
	.type		LinIf_ConfigFrameFunctions,@object
	.size		LinIf_ConfigFrameFunctions,12
	.align		2
LinIf_ConfigFrameFunctions:
	.long		PduR_LinIfRxIndication
	.long		PduR_LinIfTxConfirmation
	.long		PduR_LinIfTriggerTransmit
	.section	.text_vle
	.0byte		.L765
	.section	.text_vle
	.type		LinIf_LinSMConfirmationInterfaceConfig,@object
	.size		LinIf_LinSMConfirmationInterfaceConfig,12
	.align		2
	.globl		LinIf_LinSMConfirmationInterfaceConfig
LinIf_LinSMConfirmationInterfaceConfig:
	.long		LinSM_GotoSleepConfirmation
	.long		LinSM_WakeupConfirmation
	.long		LinSM_ScheduleRequestConfirmation
	.section	.text_vle
	.type		LinIf_ConfirmationInterfaceConfig_a,@object
	.size		LinIf_ConfirmationInterfaceConfig_a,12
	.align		2
LinIf_ConfirmationInterfaceConfig_a:
	.long		0
	.long		0
	.long		0
	.section	.text_vle
	.type		LinIf_LinDrvCalls_a,@object
	.size		LinIf_LinDrvCalls_a,24
	.align		2
LinIf_LinDrvCalls_a:
	.long		Lin_SendFrame
	.long		Lin_GoToSleep
	.long		Lin_GoToSleepInternal
	.long		Lin_Wakeup
	.long		Lin_GetStatus
	.long		Lin_CheckWakeup
	.section	.text_vle
	.type		LinIf_LinTrcvDrvCalls_a,@object
	.size		LinIf_LinTrcvDrvCalls_a,20
	.align		2
LinIf_LinTrcvDrvCalls_a:
	.long		LinTrcv_31_UJA1132_SetOpMode
	.long		LinTrcv_31_UJA1132_GetOpMode
	.long		LinTrcv_31_UJA1132_GetBusWuReason
	.long		LinTrcv_31_UJA1132_SetWakeupMode
	.long		LinTrcv_31_UJA1132_CheckWakeup
	.section	.text_vle
	.type		LinIf_ConfigChannelLT,@object
	.size		LinIf_ConfigChannelLT,32
	.align		2
LinIf_ConfigChannelLT:
	.long		LinIf_LinTrcvDrvCalls_a
	.long		0
	.long		0
	.byte		0
	.byte		1
	.space		2
	.long		1
	.long		1
	.long		LinIf_LinDrvCalls_a
	.long		LinIf_ChannelManager_a
	.section	.text_vle
	.type		LinIf_ChannelIdentifier_p,@object
	.size		LinIf_ChannelIdentifier_p,4
	.align		2
	.globl		LinIf_ChannelIdentifier_p
LinIf_ChannelIdentifier_p:
	.long		LinIf_ChannelIdentifier_a
	.section	.text_vle
	.type		LinIf_ConfigChannelLT_p,@object
	.size		LinIf_ConfigChannelLT_p,4
	.align		2
	.globl		LinIf_ConfigChannelLT_p
LinIf_ConfigChannelLT_p:
	.long		LinIf_ConfigChannelLT
	.section	.text_vle
	.type		LinIfFrameFunctions_p,@object
	.size		LinIfFrameFunctions_p,4
	.align		2
	.globl		LinIfFrameFunctions_p
LinIfFrameFunctions_p:
	.long		LinIf_ConfigFrameFunctions
	.section	.text_vle
	.type		LinIf_ConfirmationInterfaceConfig_p,@object
	.size		LinIf_ConfirmationInterfaceConfig_p,4
	.align		2
	.globl		LinIf_ConfirmationInterfaceConfig_p
LinIf_ConfirmationInterfaceConfig_p:
	.long		LinIf_ConfirmationInterfaceConfig_a
	.section	.text_vle
	.type		LinIf_LTtoPCHashValue,@object
	.size		LinIf_LTtoPCHashValue,4
	.align		2
	.globl		LinIf_LTtoPCHashValue
LinIf_LTtoPCHashValue:
	.long		-1733749838
	.section	.text_vle
	.type		LinIf_LTHashValue,@object
	.size		LinIf_LTHashValue,4
	.align		2
	.globl		LinIf_LTHashValue
LinIf_LTHashValue:
	.long		911557151
	.section	.text_vle
	.type		LinTp_LTtoPCHashValue,@object
	.size		LinTp_LTtoPCHashValue,4
	.align		2
	.globl		LinTp_LTtoPCHashValue
LinTp_LTtoPCHashValue:
	.long		-1733749838
	.section	.text_vle
	.type		LinTp_LTHashValue,@object
	.size		LinTp_LTHashValue,4
	.align		2
	.globl		LinTp_LTHashValue
LinTp_LTHashValue:
	.long		911557151
	.section	.text_vle
#$$ld
.L5:
.L964:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L962:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L809:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Types.h"
.L743:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\LinIf_Lcfg.c"
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
	.uleb128	7
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
	.uleb128	8
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.uleb128	14
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
	.uleb128	16
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\LinIf_Lcfg.c"
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
.L742:
	.sleb128	2
	.4byte		.L743
	.uleb128	57
	.uleb128	44
	.byte		"LinIf_ChannelManager_a"
	.byte		0
	.4byte		.L744
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_ChannelManager_a
	.0byte		.L742
	.lcomm		LinIf_ChannelManager_a,48,2
	.section	.debug_info,,n
.L748:
	.sleb128	3
	.byte		0x1
	.4byte		.L743
	.uleb128	60
	.uleb128	57
	.byte		"LinIf_ConfigChannel_Reloc_p"
	.byte		0
	.4byte		.L749
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_ConfigChannel_Reloc_p
	.0byte		.L748
	.comm		LinIf_ConfigChannel_Reloc_p,4,2
.L753:
	.sleb128	2
	.4byte		.L743
	.uleb128	69
	.uleb128	51
	.byte		"LinIf_ChannelIdentifier_a"
	.byte		0
	.4byte		.L754
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_ChannelIdentifier_a
	.section	.debug_info,,n
	.section	.debug_info,,n
.L759:
	.sleb128	2
	.4byte		.L743
	.uleb128	79
	.uleb128	48
	.byte		"LinIf_ConfigFrameFunctions"
	.byte		0
	.4byte		.L760
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_ConfigFrameFunctions
	.section	.debug_info,,n
.L765:
	.sleb128	3
	.byte		0x1
	.4byte		.L743
	.uleb128	92
	.uleb128	57
	.byte		"LinIf_LinSMConfirmationInterfaceConfig"
	.byte		0
	.4byte		.L766
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_LinSMConfirmationInterfaceConfig
	.section	.debug_info,,n
	.section	.debug_info,,n
.L769:
	.sleb128	2
	.4byte		.L743
	.uleb128	103
	.uleb128	64
	.byte		"LinIf_ConfirmationInterfaceConfig_a"
	.byte		0
	.4byte		.L770
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_ConfirmationInterfaceConfig_a
	.section	.debug_info,,n
.L772:
	.sleb128	2
	.4byte		.L743
	.uleb128	116
	.uleb128	48
	.byte		"LinIf_LinDrvCalls_a"
	.byte		0
	.4byte		.L773
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_LinDrvCalls_a
	.section	.debug_info,,n
.L778:
	.sleb128	2
	.4byte		.L743
	.uleb128	135
	.uleb128	52
	.byte		"LinIf_LinTrcvDrvCalls_a"
	.byte		0
	.4byte		.L779
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_LinTrcvDrvCalls_a
	.section	.debug_info,,n
.L784:
	.sleb128	2
	.4byte		.L743
	.uleb128	152
	.uleb128	41
	.byte		"LinIf_ConfigChannelLT"
	.byte		0
	.4byte		.L785
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_ConfigChannelLT
	.section	.debug_info,,n
.L790:
	.sleb128	3
	.byte		0x1
	.4byte		.L743
	.uleb128	168
	.uleb128	69
	.byte		"LinIf_ChannelIdentifier_p"
	.byte		0
	.4byte		.L791
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_ChannelIdentifier_p
	.section	.debug_info,,n
.L793:
	.sleb128	3
	.byte		0x1
	.4byte		.L743
	.uleb128	171
	.uleb128	59
	.byte		"LinIf_ConfigChannelLT_p"
	.byte		0
	.4byte		.L794
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_ConfigChannelLT_p
	.section	.debug_info,,n
.L796:
	.sleb128	3
	.byte		0x1
	.4byte		.L743
	.uleb128	174
	.uleb128	66
	.byte		"LinIfFrameFunctions_p"
	.byte		0
	.4byte		.L797
	.sleb128	5
	.byte		0x3
	.4byte		LinIfFrameFunctions_p
	.section	.debug_info,,n
.L799:
	.sleb128	3
	.byte		0x1
	.4byte		.L743
	.uleb128	176
	.uleb128	82
	.byte		"LinIf_ConfirmationInterfaceConfig_p"
	.byte		0
	.4byte		.L800
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_ConfirmationInterfaceConfig_p
	.section	.debug_info,,n
.L802:
	.sleb128	3
	.byte		0x1
	.4byte		.L743
	.uleb128	185
	.uleb128	28
	.byte		"LinIf_LTtoPCHashValue"
	.byte		0
	.4byte		.L803
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_LTtoPCHashValue
	.section	.debug_info,,n
.L806:
	.sleb128	3
	.byte		0x1
	.4byte		.L743
	.uleb128	188
	.uleb128	28
	.byte		"LinIf_LTHashValue"
	.byte		0
	.4byte		.L803
	.sleb128	5
	.byte		0x3
	.4byte		LinIf_LTHashValue
	.section	.debug_info,,n
.L807:
	.sleb128	3
	.byte		0x1
	.4byte		.L743
	.uleb128	191
	.uleb128	28
	.byte		"LinTp_LTtoPCHashValue"
	.byte		0
	.4byte		.L803
	.sleb128	5
	.byte		0x3
	.4byte		LinTp_LTtoPCHashValue
	.section	.debug_info,,n
.L808:
	.sleb128	3
	.byte		0x1
	.4byte		.L743
	.uleb128	194
	.uleb128	28
	.byte		"LinTp_LTHashValue"
	.byte		0
	.4byte		.L803
	.sleb128	5
	.byte		0x3
	.4byte		LinTp_LTHashValue
	.section	.debug_info,,n
.L758:
	.sleb128	4
	.4byte		.L809
	.uleb128	322
	.uleb128	1
	.4byte		.L810-.L2
	.uleb128	3
	.section	.debug_info,,n
.L475:
	.sleb128	5
	.byte		"LinIfTrcvIdRef"
	.byte		0
	.4byte		.L811
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L476:
	.sleb128	5
	.byte		"LinIfChannelId"
	.byte		0
	.4byte		.L814
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L477:
	.sleb128	5
	.byte		"LinIfChannelRef"
	.byte		0
	.4byte		.L811
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L810:
.L789:
	.sleb128	4
	.4byte		.L809
	.uleb128	322
	.uleb128	1
	.4byte		.L816-.L2
	.uleb128	32
.L466:
	.sleb128	5
	.byte		"LinTrcvDrvCalls_p"
	.byte		0
	.4byte		.L817
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L467:
	.sleb128	5
	.byte		"WakeupSourceIdLin"
	.byte		0
	.4byte		.L803
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L468:
	.sleb128	5
	.byte		"WakeupSourceIdTrcv"
	.byte		0
	.4byte		.L803
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L469:
	.sleb128	5
	.byte		"LinIfChannelIndex"
	.byte		0
	.4byte		.L811
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L470:
	.sleb128	5
	.byte		"ExternalChannelIndex"
	.byte		0
	.4byte		.L814
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L471:
	.sleb128	5
	.byte		"LinIfDelayForSleep"
	.byte		0
	.4byte		.L803
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L472:
	.sleb128	5
	.byte		"LinIfStartupState"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L473:
	.sleb128	5
	.byte		"LinDrvCalls_p"
	.byte		0
	.4byte		.L821
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L474:
	.sleb128	5
	.byte		"LinIf_channelManager_p"
	.byte		0
	.4byte		.L822
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L816:
.L752:
	.sleb128	4
	.4byte		.L809
	.uleb128	322
	.uleb128	1
	.4byte		.L824-.L2
	.uleb128	24
.L459:
	.sleb128	5
	.byte		"LinIfMaxLinFrames"
	.byte		0
	.4byte		.L811
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L460:
	.sleb128	5
	.byte		"LinIfMaxSchedules"
	.byte		0
	.4byte		.L811
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L461:
	.sleb128	5
	.byte		"LinIfFrame_p"
	.byte		0
	.4byte		.L825
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L462:
	.sleb128	5
	.byte		"LinIfScheduleTable_p"
	.byte		0
	.4byte		.L829
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L463:
	.sleb128	5
	.byte		"ETCollisionDetectd_p"
	.byte		0
	.4byte		.L833
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L464:
	.sleb128	5
	.byte		"SPPendingRequest_p"
	.byte		0
	.4byte		.L833
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L465:
	.sleb128	5
	.byte		"LinIf_ScheduleTableEntry_p"
	.byte		0
	.4byte		.L835
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L824:
.L747:
	.sleb128	4
	.4byte		.L809
	.uleb128	322
	.uleb128	1
	.4byte		.L836-.L2
	.uleb128	48
.L449:
	.sleb128	5
	.byte		"LinIf_NewScheduleTableType"
	.byte		0
	.4byte		.L837
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L450:
	.sleb128	5
	.byte		"LinIf_RunContSchTableIndexRequested"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	5
	.byte		"LinIf_RunOnceSchTableRequested"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L452:
	.sleb128	5
	.byte		"LinIf_EntryDelayCounter"
	.byte		0
	.4byte		.L840
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L453:
	.sleb128	5
	.byte		"LinIf_SleepDelayCounter"
	.byte		0
	.4byte		.L804
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L454:
	.sleb128	5
	.byte		"LinIf_ScheduleTableIndex"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L455:
	.sleb128	5
	.byte		"LinIf_ScheduleTableType"
	.byte		0
	.4byte		.L837
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L456:
	.sleb128	5
	.byte		"LinIf_BusStatus"
	.byte		0
	.4byte		.L842
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L457:
	.sleb128	5
	.byte		"LinIf_ChannelSubState"
	.byte		0
	.4byte		.L844
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L458:
	.sleb128	5
	.byte		"LinIf_ChannelState"
	.byte		0
	.4byte		.L819
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L836:
.L843:
	.sleb128	4
	.4byte		.L809
	.uleb128	322
	.uleb128	1
	.4byte		.L846-.L2
	.uleb128	20
.L445:
	.sleb128	5
	.byte		"Lin_DriverGetStatusVal"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	5
	.byte		"LinIf_frameStatus"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	5
	.byte		"LinIf_frameEntry_p"
	.byte		0
	.4byte		.L850
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L448:
	.sleb128	5
	.byte		"LinIf_RxData"
	.byte		0
	.4byte		.L854
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L846:
.L832:
	.sleb128	4
	.4byte		.L809
	.uleb128	322
	.uleb128	1
	.4byte		.L856-.L2
	.uleb128	20
.L439:
	.sleb128	5
	.byte		"LinIfResumePosition"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L440:
	.sleb128	5
	.byte		"LinIfRunMode"
	.byte		0
	.4byte		.L860
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L441:
	.sleb128	5
	.byte		"LinIfScheduleMode"
	.byte		0
	.4byte		.L863
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L442:
	.sleb128	5
	.byte		"LinIfScheduleTableIndex"
	.byte		0
	.4byte		.L866
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L443:
	.sleb128	5
	.byte		"LinIfMaxSchEntry"
	.byte		0
	.4byte		.L811
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L444:
	.sleb128	5
	.byte		"LinIfEntry_p"
	.byte		0
	.4byte		.L850
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L856:
.L853:
	.sleb128	4
	.4byte		.L809
	.uleb128	322
	.uleb128	1
	.4byte		.L867-.L2
	.uleb128	8
.L436:
	.sleb128	5
	.byte		"LinIfDelay"
	.byte		0
	.4byte		.L868
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L437:
	.sleb128	5
	.byte		"LinIfCollisionResolvingRef"
	.byte		0
	.4byte		.L866
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L438:
	.sleb128	5
	.byte		"LinIfFrameRef"
	.byte		0
	.4byte		.L825
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L867:
.L764:
	.sleb128	4
	.4byte		.L809
	.uleb128	322
	.uleb128	1
	.4byte		.L869-.L2
	.uleb128	12
.L433:
	.sleb128	5
	.byte		"User_LinIfRxIndication_p"
	.byte		0
	.4byte		.L870
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	5
	.byte		"User_LinIfTxConfirmation_p"
	.byte		0
	.4byte		.L877
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	5
	.byte		"User_LinIfTriggerTransmit_p"
	.byte		0
	.4byte		.L880
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L869:
.L828:
	.sleb128	4
	.4byte		.L809
	.uleb128	322
	.uleb128	1
	.4byte		.L884-.L2
	.uleb128	32
.L422:
	.sleb128	5
	.byte		"LinIfChecksumType"
	.byte		0
	.4byte		.L885
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L423:
	.sleb128	5
	.byte		"LinIfFrameType"
	.byte		0
	.4byte		.L887
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L424:
	.sleb128	5
	.byte		"LinIfLength"
	.byte		0
	.4byte		.L890
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L425:
	.sleb128	5
	.byte		"LinIfPid"
	.byte		0
	.4byte		.L892
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L426:
	.sleb128	5
	.byte		"LinIfTxConfirmationId"
	.byte		0
	.4byte		.L894
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L427:
	.sleb128	5
	.byte		"LinIfPduDirection"
	.byte		0
	.4byte		.L895
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L428:
	.sleb128	5
	.byte		"LinIfFixedFrameSduData"
	.byte		0
	.4byte		.L897
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L429:
	.sleb128	5
	.byte		"LinIfRxTxTargetPduRef"
	.byte		0
	.4byte		.L894
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L430:
	.sleb128	5
	.byte		"LinIfSubsFrames_p"
	.byte		0
	.4byte		.L899
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L431:
	.sleb128	5
	.byte		"LinIfNoOfSubEntry"
	.byte		0
	.4byte		.L811
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L432:
	.sleb128	5
	.byte		"LinIfFunctionIndex"
	.byte		0
	.4byte		.L868
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L884:
.L902:
	.sleb128	4
	.4byte		.L809
	.uleb128	322
	.uleb128	1
	.4byte		.L903-.L2
	.uleb128	2
.L420:
	.sleb128	5
	.byte		"LinIfSubFrameIndex"
	.byte		0
	.4byte		.L811
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L421:
	.sleb128	5
	.byte		"LinIfSubFramePriority"
	.byte		0
	.4byte		.L811
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L903:
.L768:
	.sleb128	4
	.4byte		.L809
	.uleb128	293
	.uleb128	1
	.4byte		.L904-.L2
	.uleb128	12
.L414:
	.sleb128	5
	.byte		"User_GotoSleepConfirmation_p"
	.byte		0
	.4byte		.L905
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L415:
	.sleb128	5
	.byte		"User_WakeupConfirmation_p"
	.byte		0
	.4byte		.L905
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L416:
	.sleb128	5
	.byte		"User_ScheduleRequestConfirmation_p"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L904:
.L783:
	.sleb128	4
	.4byte		.L809
	.uleb128	232
	.uleb128	14
	.4byte		.L915-.L2
	.uleb128	20
.L409:
	.sleb128	5
	.byte		"LinTrcv_SetOpMode_p"
	.byte		0
	.4byte		.L916
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	5
	.byte		"LinTrcv_GetOpMode_p"
	.byte		0
	.4byte		.L921
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L411:
	.sleb128	5
	.byte		"LinTrcv_GetBusWuReason_p"
	.byte		0
	.4byte		.L925
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L412:
	.sleb128	5
	.byte		"LinTrcv_SetWakeupMode_p"
	.byte		0
	.4byte		.L931
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L413:
	.sleb128	5
	.byte		"LinTrcv_CheckWakeup_p"
	.byte		0
	.4byte		.L936
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L915:
.L777:
	.sleb128	4
	.4byte		.L809
	.uleb128	184
	.uleb128	1
	.4byte		.L939-.L2
	.uleb128	24
.L403:
	.sleb128	5
	.byte		"Lin_SendFrame_p"
	.byte		0
	.4byte		.L940
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L404:
	.sleb128	5
	.byte		"Lin_GoToSleep_p"
	.byte		0
	.4byte		.L946
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L405:
	.sleb128	5
	.byte		"Lin_GoToSleepInternal_p"
	.byte		0
	.4byte		.L949
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L406:
	.sleb128	5
	.byte		"Lin_Wakeup_p"
	.byte		0
	.4byte		.L952
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L407:
	.sleb128	5
	.byte		"Lin_GetStatus_p"
	.byte		0
	.4byte		.L955
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L408:
	.sleb128	5
	.byte		"Lin_CheckWakeup_p"
	.byte		0
	.4byte		.L959
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L939:
.L945:
	.sleb128	4
	.4byte		.L962
	.uleb128	59
	.uleb128	13
	.4byte		.L963-.L2
	.uleb128	8
.L318:
	.sleb128	5
	.byte		"Pid"
	.byte		0
	.4byte		.L893
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L319:
	.sleb128	5
	.byte		"Cs"
	.byte		0
	.4byte		.L886
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L320:
	.sleb128	5
	.byte		"Drc"
	.byte		0
	.4byte		.L896
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L321:
	.sleb128	5
	.byte		"Dl"
	.byte		0
	.4byte		.L891
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L322:
	.sleb128	5
	.byte		"SduPtr"
	.byte		0
	.4byte		.L835
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L963:
	.section	.debug_info,,n
.L876:
	.sleb128	6
	.4byte		.L964
	.uleb128	7761
	.uleb128	5
	.4byte		.L965-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L314:
	.sleb128	5
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L835
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L315:
	.sleb128	5
	.byte		"SduLength"
	.byte		0
	.4byte		.L966
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L965:
	.section	.debug_info,,n
.L865:
	.sleb128	7
	.4byte		.L809
	.uleb128	232
	.uleb128	14
	.4byte		.L967-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	8
	.byte		"LINTP_APPLICATIVE_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"LINTP_DIAG_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"LINTP_DIAG_RESPONSE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L967:
.L849:
	.sleb128	7
	.4byte		.L809
	.uleb128	184
	.uleb128	1
	.4byte		.L968-.L2
	.uleb128	4
	.sleb128	8
	.byte		"LINIF_FRAME_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"LINIF_FRAME_RX_ONGOING"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"LINIF_FRAME_TX_ONGOING"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"LINIF_FRAME_FINISHED"
	.byte		0
	.sleb128	3
	.sleb128	8
	.byte		"LINIF_FRAME_ERROR"
	.byte		0
	.sleb128	4
	.sleb128	0
.L968:
.L889:
	.sleb128	7
	.4byte		.L809
	.uleb128	110
	.uleb128	1
	.4byte		.L969-.L2
	.uleb128	4
	.sleb128	8
	.byte		"INVALID_STATE"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"FREE"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"ASSIGN"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"ASSIGN_FRAME_ID_RANGE"
	.byte		0
	.sleb128	3
	.sleb128	8
	.byte		"EVENT_TRIGGERED"
	.byte		0
	.sleb128	4
	.sleb128	8
	.byte		"SAVE_CONFIGURATION"
	.byte		0
	.sleb128	5
	.sleb128	8
	.byte		"SPORADIC"
	.byte		0
	.sleb128	6
	.sleb128	8
	.byte		"SRF"
	.byte		0
	.sleb128	7
	.sleb128	8
	.byte		"UNASSIGN"
	.byte		0
	.sleb128	8
	.sleb128	8
	.byte		"UNCONDITIONAL"
	.byte		0
	.sleb128	9
	.sleb128	0
.L969:
.L859:
	.sleb128	7
	.4byte		.L809
	.uleb128	102
	.uleb128	1
	.4byte		.L970-.L2
	.uleb128	4
	.sleb128	8
	.byte		"CONTINUE_AT_IT_POINT"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"START_FROM_BEGINNING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L970:
.L845:
	.sleb128	7
	.4byte		.L809
	.uleb128	87
	.uleb128	1
	.4byte		.L971-.L2
	.uleb128	4
	.sleb128	8
	.byte		"LINIF_CHANNEL_SUBSTATE_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"LINIF_CHANNEL_SLEEP_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"LINIF_CHANNEL_SLEEP_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"LINIF_CHANNEL_GOTO_SLEEP_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	8
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_FALSE"
	.byte		0
	.sleb128	4
	.sleb128	8
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_TRUE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L971:
.L820:
	.sleb128	7
	.4byte		.L809
	.uleb128	79
	.uleb128	1
	.4byte		.L972-.L2
	.uleb128	4
	.sleb128	8
	.byte		"LINIF_CHANNEL_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"LINIF_CHANNEL_OPERATIONAL"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"LINIF_CHANNEL_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L972:
.L838:
	.sleb128	7
	.4byte		.L809
	.uleb128	70
	.uleb128	1
	.4byte		.L973-.L2
	.uleb128	4
	.sleb128	8
	.byte		"NULL_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"ACTIVE_RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"ACTIVE_RUN_CONTINUOUS"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"ACTIVE_SCHEDULE_MANAGER_OFF"
	.byte		0
	.sleb128	3
	.sleb128	0
.L973:
.L862:
	.sleb128	7
	.4byte		.L809
	.uleb128	63
	.uleb128	1
	.4byte		.L974-.L2
	.uleb128	4
	.sleb128	8
	.byte		"RUN_CONTINUOUS"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L974:
.L920:
	.sleb128	7
	.4byte		.L962
	.uleb128	59
	.uleb128	13
	.4byte		.L975-.L2
	.uleb128	4
	.sleb128	8
	.byte		"LINTRCV_TRCV_MODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"LINTRCV_TRCV_MODE_STANDBY"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"LINTRCV_TRCV_MODE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L975:
.L930:
	.sleb128	7
	.4byte		.L962
	.uleb128	49
	.uleb128	13
	.4byte		.L976-.L2
	.uleb128	4
	.sleb128	8
	.byte		"LINTRCV_WU_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"LINTRCV_WU_NOT_SUPPORTED"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"LINTRCV_WU_BY_BUS"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"LINTRCV_WU_BY_PIN"
	.byte		0
	.sleb128	3
	.sleb128	8
	.byte		"LINTRCV_WU_INTERNALLY"
	.byte		0
	.sleb128	4
	.sleb128	8
	.byte		"LINTRCV_WU_RESET"
	.byte		0
	.sleb128	5
	.sleb128	8
	.byte		"LINTRCV_WU_POWER_ON"
	.byte		0
	.sleb128	6
	.sleb128	0
.L976:
.L935:
	.sleb128	7
	.4byte		.L962
	.uleb128	42
	.uleb128	13
	.4byte		.L977-.L2
	.uleb128	4
	.sleb128	8
	.byte		"LINTRCV_WUMODE_ENABLE"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"LINTRCV_WUMODE_DISABLE"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"LINTRCV_WUMODE_CLEAR"
	.byte		0
	.sleb128	2
	.sleb128	0
.L977:
	.section	.debug_info,,n
.L746:
	.sleb128	9
	.byte		"LinIfChannelManager"
	.byte		0
	.4byte		.L747
	.section	.debug_info,,n
.L744:
	.sleb128	10
	.4byte		.L745-.L2
	.4byte		.L746
	.section	.debug_info,,n
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L745:
.L751:
	.sleb128	9
	.byte		"LinIfChannelReloc"
	.byte		0
	.4byte		.L752
	.section	.debug_info,,n
.L750:
	.sleb128	12
	.4byte		.L751
	.section	.debug_info,,n
.L749:
	.sleb128	13
	.4byte		.L750
.L757:
	.sleb128	9
	.byte		"LinIfChannelIdentifier"
	.byte		0
	.4byte		.L758
.L756:
	.sleb128	12
	.4byte		.L757
.L754:
	.sleb128	10
	.4byte		.L755-.L2
	.4byte		.L756
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L755:
.L763:
	.sleb128	9
	.byte		"LinIfFrameFunctions"
	.byte		0
	.4byte		.L764
.L762:
	.sleb128	12
	.4byte		.L763
.L760:
	.sleb128	10
	.4byte		.L761-.L2
	.4byte		.L762
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L761:
.L767:
	.sleb128	9
	.byte		"LinIf_ConfirmationInterfaceConfig_t"
	.byte		0
	.4byte		.L768
.L766:
	.sleb128	12
	.4byte		.L767
.L770:
	.sleb128	10
	.4byte		.L771-.L2
	.4byte		.L766
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L771:
.L776:
	.sleb128	9
	.byte		"LinIf_LinDrvCalls_t"
	.byte		0
	.4byte		.L777
.L775:
	.sleb128	12
	.4byte		.L776
.L773:
	.sleb128	10
	.4byte		.L774-.L2
	.4byte		.L775
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L774:
.L782:
	.sleb128	9
	.byte		"LinIf_LinTrcvDrvCalls_t"
	.byte		0
	.4byte		.L783
.L781:
	.sleb128	12
	.4byte		.L782
.L779:
	.sleb128	10
	.4byte		.L780-.L2
	.4byte		.L781
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L780:
.L788:
	.sleb128	9
	.byte		"LinIfChannel"
	.byte		0
	.4byte		.L789
.L787:
	.sleb128	12
	.4byte		.L788
.L785:
	.sleb128	10
	.4byte		.L786-.L2
	.4byte		.L787
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L786:
.L792:
	.sleb128	13
	.4byte		.L756
.L791:
	.sleb128	12
	.4byte		.L792
.L795:
	.sleb128	13
	.4byte		.L787
.L794:
	.sleb128	12
	.4byte		.L795
.L798:
	.sleb128	13
	.4byte		.L762
.L797:
	.sleb128	12
	.4byte		.L798
.L801:
	.sleb128	13
	.4byte		.L766
.L800:
	.sleb128	12
	.4byte		.L801
	.section	.debug_info,,n
.L805:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L804:
	.sleb128	9
	.byte		"uint32"
	.byte		0
	.4byte		.L805
.L803:
	.sleb128	12
	.4byte		.L804
.L813:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L812:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L813
.L811:
	.sleb128	12
	.4byte		.L812
.L815:
	.sleb128	9
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L812
.L814:
	.sleb128	12
	.4byte		.L815
.L817:
	.sleb128	13
	.4byte		.L781
.L819:
	.sleb128	9
	.byte		"LinIf_ChannelState_t"
	.byte		0
	.4byte		.L820
.L818:
	.sleb128	12
	.4byte		.L819
.L821:
	.sleb128	13
	.4byte		.L775
.L823:
	.sleb128	13
	.4byte		.L746
.L822:
	.sleb128	12
	.4byte		.L823
.L827:
	.sleb128	9
	.byte		"LinIfFrame"
	.byte		0
	.4byte		.L828
.L826:
	.sleb128	12
	.4byte		.L827
.L825:
	.sleb128	13
	.4byte		.L826
.L831:
	.sleb128	9
	.byte		"LinIfScheduleTable"
	.byte		0
	.4byte		.L832
.L830:
	.sleb128	12
	.4byte		.L831
.L829:
	.sleb128	13
	.4byte		.L830
.L834:
	.sleb128	9
	.byte		"boolean"
	.byte		0
	.4byte		.L813
.L833:
	.sleb128	13
	.4byte		.L834
.L835:
	.sleb128	13
	.4byte		.L812
.L837:
	.sleb128	9
	.byte		"LinIfSchTableType_t"
	.byte		0
	.4byte		.L838
.L839:
	.sleb128	9
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L812
.L841:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L840:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L841
.L842:
	.sleb128	9
	.byte		"LinIf_BusStatusStruct"
	.byte		0
	.4byte		.L843
.L844:
	.sleb128	9
	.byte		"LinIf_ChannelSubState_t"
	.byte		0
	.4byte		.L845
.L847:
	.sleb128	9
	.byte		"Lin_StatusType"
	.byte		0
	.4byte		.L812
.L848:
	.sleb128	9
	.byte		"LinIf_frameStatusType"
	.byte		0
	.4byte		.L849
.L852:
	.sleb128	9
	.byte		"LinIfEntry"
	.byte		0
	.4byte		.L853
.L851:
	.sleb128	12
	.4byte		.L852
.L850:
	.sleb128	13
	.4byte		.L851
.L854:
	.sleb128	10
	.4byte		.L855-.L2
	.4byte		.L812
	.sleb128	11
	.uleb128	7
	.sleb128	0
.L855:
.L858:
	.sleb128	9
	.byte		"LinIfResumePosition_t"
	.byte		0
	.4byte		.L859
.L857:
	.sleb128	12
	.4byte		.L858
.L861:
	.sleb128	9
	.byte		"LinIfRunMode_t"
	.byte		0
	.4byte		.L862
.L860:
	.sleb128	12
	.4byte		.L861
.L864:
	.sleb128	9
	.byte		"LinTp_Mode"
	.byte		0
	.4byte		.L865
.L863:
	.sleb128	12
	.4byte		.L864
.L866:
	.sleb128	12
	.4byte		.L839
.L868:
	.sleb128	12
	.4byte		.L840
	.section	.debug_info,,n
.L871:
	.sleb128	15
	.4byte		.L872-.L2
	.byte		0x1
.L873:
	.sleb128	9
	.byte		"PduIdType"
	.byte		0
	.4byte		.L840
	.section	.debug_info,,n
	.sleb128	16
	.4byte		.L873
.L875:
	.sleb128	9
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L876
.L874:
	.sleb128	13
	.4byte		.L875
	.sleb128	16
	.4byte		.L874
	.sleb128	0
.L872:
.L870:
	.sleb128	13
	.4byte		.L871
.L878:
	.sleb128	15
	.4byte		.L879-.L2
	.byte		0x1
	.sleb128	16
	.4byte		.L873
	.sleb128	0
.L879:
.L877:
	.sleb128	13
	.4byte		.L878
.L883:
	.sleb128	9
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L812
	.section	.debug_info,,n
.L881:
	.sleb128	17
	.4byte		.L882-.L2
	.4byte		.L883
	.byte		0x1
	.sleb128	16
	.4byte		.L873
	.sleb128	16
	.4byte		.L874
	.sleb128	0
.L882:
.L880:
	.sleb128	13
	.4byte		.L881
.L886:
	.sleb128	9
	.byte		"Lin_FrameCsModelType"
	.byte		0
	.4byte		.L812
.L885:
	.sleb128	12
	.4byte		.L886
.L888:
	.sleb128	9
	.byte		"LinIfFrameType_t"
	.byte		0
	.4byte		.L889
.L887:
	.sleb128	12
	.4byte		.L888
.L891:
	.sleb128	9
	.byte		"Lin_FrameDlType"
	.byte		0
	.4byte		.L812
.L890:
	.sleb128	12
	.4byte		.L891
.L893:
	.sleb128	9
	.byte		"Lin_FramePidType"
	.byte		0
	.4byte		.L812
.L892:
	.sleb128	12
	.4byte		.L893
.L894:
	.sleb128	12
	.4byte		.L873
.L896:
	.sleb128	9
	.byte		"Lin_FrameResponseType"
	.byte		0
	.4byte		.L812
.L895:
	.sleb128	12
	.4byte		.L896
.L897:
	.sleb128	10
	.4byte		.L898-.L2
	.4byte		.L811
	.sleb128	11
	.uleb128	7
	.sleb128	0
.L898:
.L901:
	.sleb128	9
	.byte		"LinIfSubstitutionFrames"
	.byte		0
	.4byte		.L902
.L900:
	.sleb128	12
	.4byte		.L901
.L899:
	.sleb128	13
	.4byte		.L900
.L908:
	.sleb128	15
	.4byte		.L909-.L2
	.byte		0x1
	.sleb128	16
	.4byte		.L815
	.sleb128	16
	.4byte		.L834
	.sleb128	0
.L909:
.L907:
	.sleb128	13
	.4byte		.L908
.L906:
	.sleb128	9
	.byte		"LinIf_UserConfirmation_t"
	.byte		0
	.4byte		.L907
.L905:
	.sleb128	12
	.4byte		.L906
.L913:
	.sleb128	15
	.4byte		.L914-.L2
	.byte		0x1
	.sleb128	16
	.4byte		.L815
	.sleb128	16
	.4byte		.L839
	.sleb128	0
.L914:
.L912:
	.sleb128	13
	.4byte		.L913
.L911:
	.sleb128	9
	.byte		"LinIf_UserRequestConfirmation_t"
	.byte		0
	.4byte		.L912
.L910:
	.sleb128	12
	.4byte		.L911
.L917:
	.sleb128	17
	.4byte		.L918-.L2
	.4byte		.L883
	.byte		0x1
	.sleb128	16
	.4byte		.L812
.L919:
	.sleb128	9
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L920
	.sleb128	16
	.4byte		.L919
	.sleb128	0
.L918:
.L916:
	.sleb128	13
	.4byte		.L917
.L922:
	.sleb128	17
	.4byte		.L923-.L2
	.4byte		.L883
	.byte		0x1
	.sleb128	16
	.4byte		.L812
.L924:
	.sleb128	13
	.4byte		.L919
	.sleb128	16
	.4byte		.L924
	.sleb128	0
.L923:
.L921:
	.sleb128	13
	.4byte		.L922
.L926:
	.sleb128	17
	.4byte		.L927-.L2
	.4byte		.L883
	.byte		0x1
	.sleb128	16
	.4byte		.L812
.L929:
	.sleb128	9
	.byte		"LinTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L930
.L928:
	.sleb128	13
	.4byte		.L929
	.sleb128	16
	.4byte		.L928
	.sleb128	0
.L927:
.L925:
	.sleb128	13
	.4byte		.L926
.L932:
	.sleb128	17
	.4byte		.L933-.L2
	.4byte		.L883
	.byte		0x1
	.sleb128	16
	.4byte		.L812
.L934:
	.sleb128	9
	.byte		"LinTrcv_TrcvWakeupModeType"
	.byte		0
	.4byte		.L935
	.sleb128	16
	.4byte		.L934
	.sleb128	0
.L933:
.L931:
	.sleb128	13
	.4byte		.L932
.L937:
	.sleb128	17
	.4byte		.L938-.L2
	.4byte		.L883
	.byte		0x1
	.sleb128	16
	.4byte		.L812
	.sleb128	0
.L938:
.L936:
	.sleb128	13
	.4byte		.L937
.L941:
	.sleb128	17
	.4byte		.L942-.L2
	.4byte		.L883
	.byte		0x1
	.sleb128	16
	.4byte		.L812
.L944:
	.sleb128	9
	.byte		"Lin_PduType"
	.byte		0
	.4byte		.L945
.L943:
	.sleb128	13
	.4byte		.L944
	.sleb128	16
	.4byte		.L943
	.sleb128	0
.L942:
.L940:
	.sleb128	13
	.4byte		.L941
.L947:
	.sleb128	17
	.4byte		.L948-.L2
	.4byte		.L883
	.byte		0x1
	.sleb128	16
	.4byte		.L812
	.sleb128	0
.L948:
.L946:
	.sleb128	13
	.4byte		.L947
.L950:
	.sleb128	17
	.4byte		.L951-.L2
	.4byte		.L883
	.byte		0x1
	.sleb128	16
	.4byte		.L812
	.sleb128	0
.L951:
.L949:
	.sleb128	13
	.4byte		.L950
.L953:
	.sleb128	17
	.4byte		.L954-.L2
	.4byte		.L883
	.byte		0x1
	.sleb128	16
	.4byte		.L812
	.sleb128	0
.L954:
.L952:
	.sleb128	13
	.4byte		.L953
.L956:
	.sleb128	17
	.4byte		.L957-.L2
	.4byte		.L847
	.byte		0x1
	.sleb128	16
	.4byte		.L812
.L958:
	.sleb128	13
	.4byte		.L835
	.sleb128	16
	.4byte		.L958
	.sleb128	0
.L957:
.L955:
	.sleb128	13
	.4byte		.L956
.L960:
	.sleb128	17
	.4byte		.L961-.L2
	.4byte		.L883
	.byte		0x1
	.sleb128	16
	.4byte		.L812
	.sleb128	0
.L961:
.L959:
	.sleb128	13
	.4byte		.L960
.L966:
	.sleb128	9
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L840
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_Lcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_Lcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_Lcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_Lcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\LinIf_Lcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
