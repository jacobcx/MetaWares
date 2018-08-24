#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_Lcfg.c"
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
# FUNC(void, COMM_CODE) ComM_MainFunction_0(void)
	.align		2
	.section	.text_vle
	.d2file		"gen\\MPC5746R_ECU\\WindRiver\\ComM_Lcfg.c"
        .d2line         146,23
#$$ld
.L779:

#$$bf	ComM_MainFunction_0,interprocedural,rasave,nostackparams
	.globl		ComM_MainFunction_0
	.d2_cfa_start __cie
ComM_MainFunction_0:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     ComM_MainFunction((NetworkHandleType)0U);
	.d2line		148
	diab.li		r3,0
	bl		ComM_MainFunction
# }
	.d2line		149
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L780:
	.type		ComM_MainFunction_0,@function
	.size		ComM_MainFunction_0,.-ComM_MainFunction_0
# Number of nodes = 4

# Allocations for ComM_MainFunction_0
# FUNC(void, COMM_CODE) ComM_MainFunction_1(void)
	.align		2
	.section	.text_vle
        .d2line         152,23
#$$ld
.L785:

#$$bf	ComM_MainFunction_1,interprocedural,rasave,nostackparams
	.globl		ComM_MainFunction_1
	.d2_cfa_start __cie
ComM_MainFunction_1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     ComM_MainFunction((NetworkHandleType)1U);
	.d2line		154
	diab.li		r3,1
	bl		ComM_MainFunction
# }
	.d2line		155
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L786:
	.type		ComM_MainFunction_1,@function
	.size		ComM_MainFunction_1,.-ComM_MainFunction_1
# Number of nodes = 4

# Allocations for ComM_MainFunction_1
# FUNC(void, COMM_CODE) SchM_Enter_ComM
	.align		2
	.section	.text_vle
        .d2line         165,23
#$$ld
.L790:

#$$bf	SchM_Enter_ComM,interprocedural,rasave,nostackparams
	.globl		SchM_Enter_ComM
	.d2_cfa_start __cie
SchM_Enter_ComM:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r6,r3		# ExclusiveArea=r6 ExclusiveArea=r3
	.d2prologue_end
# (
#     CONST(uint8, AUTOMATIC) ExclusiveArea
# )
# {
#     switch(ExclusiveArea)
	.d2line		170
	rlwinm		r6,r6,0,24,31		# ExclusiveArea=r6 ExclusiveArea=r6
	se_cmpi		r6,0		# ExclusiveArea=r6
	bc		1,2,.L762	# eq
.Llo2:
	se_cmpi		r6,1		# ExclusiveArea=r6
.Llo3:
	bc		1,2,.L764	# eq
.Llo4:
	b		.L761
.L762:
#     {
#         case 0U:
#         {
#             SchM_Enter_ComM_ComM_Channel0_StateMachine();
	.d2line		174
.Llo5:
	bl		SchM_Enter_ComM_ComM_Channel0_StateMachine
.Llo6:
	b		.L761
.L764:
#             break;
#         }
#         case 1U:
#         {
#             SchM_Enter_ComM_ComM_Channel1_StateMachine();
	.d2line		179
.Llo7:
	bl		SchM_Enter_ComM_ComM_Channel1_StateMachine
.L761:
#             break;
#         }
#         default:
#         {
#             break;
#         }
#     }
# }
	.d2line		187
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo8:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L791:
	.type		SchM_Enter_ComM,@function
	.size		SchM_Enter_ComM,.-SchM_Enter_ComM
# Number of nodes = 9

# Allocations for SchM_Enter_ComM
#	?a4		ExclusiveArea
# FUNC(void, COMM_CODE) SchM_Exit_ComM
	.align		2
	.section	.text_vle
        .d2line         191,23
#$$ld
.L799:

#$$bf	SchM_Exit_ComM,interprocedural,rasave,nostackparams
	.globl		SchM_Exit_ComM
	.d2_cfa_start __cie
SchM_Exit_ComM:
.Llo9:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r6,r3		# ExclusiveArea=r6 ExclusiveArea=r3
	.d2prologue_end
# (
#     CONST(uint8, AUTOMATIC) ExclusiveArea
# )
# {
#     switch(ExclusiveArea)
	.d2line		196
	rlwinm		r6,r6,0,24,31		# ExclusiveArea=r6 ExclusiveArea=r6
	se_cmpi		r6,0		# ExclusiveArea=r6
	bc		1,2,.L770	# eq
.Llo10:
	se_cmpi		r6,1		# ExclusiveArea=r6
.Llo11:
	bc		1,2,.L772	# eq
.Llo12:
	b		.L769
.L770:
#     {
#         case 0U:
#         {
#             SchM_Exit_ComM_ComM_Channel0_StateMachine();
	.d2line		200
.Llo13:
	bl		SchM_Exit_ComM_ComM_Channel0_StateMachine
.Llo14:
	b		.L769
.L772:
#             break;
#         }
#         case 1U:
#         {
#             SchM_Exit_ComM_ComM_Channel1_StateMachine();
	.d2line		205
.Llo15:
	bl		SchM_Exit_ComM_ComM_Channel1_StateMachine
.L769:
#             break;
#         }
#         default:
#         {
#             break;
#         }
#     }
# }
	.d2line		213
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo16:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L800:
	.type		SchM_Exit_ComM,@function
	.size		SchM_Exit_ComM,.-SchM_Exit_ComM
# Number of nodes = 9

# Allocations for SchM_Exit_ComM
#	?a4		ExclusiveArea

# Allocations for module
	.section	.text_vle
	.0byte		.L822
	.section	.text_vle
	.type		ComM_CurrentChannelRequestPorts,@object
	.size		ComM_CurrentChannelRequestPorts,16
	.align		2
	.globl		ComM_CurrentChannelRequestPorts
ComM_CurrentChannelRequestPorts:
	.long		0
	.long		0
	.long		0
	.long		0
	.section	.text_vle
	.type		ComM_RteSwitchCurrentModeCallouts,@object
	.size		ComM_RteSwitchCurrentModeCallouts,8
	.align		2
	.globl		ComM_RteSwitchCurrentModeCallouts
ComM_RteSwitchCurrentModeCallouts:
	.long		Rte_Switch_ComM_P_CurrentMode_CanCluster_User_currentMode
	.long		Rte_Switch_ComM_P_CurrentMode_ComMUser_Lin_currentMode
	.section	.text_vle
	.type		ComM_ChannelsNum,@object
	.size		ComM_ChannelsNum,1
	.align		0
	.globl		ComM_ChannelsNum
ComM_ChannelsNum:
	.byte		2
	.section	.text_vle
	.type		ComM_DefaultEcuGroupClassification,@object
	.size		ComM_DefaultEcuGroupClassification,1
	.align		0
	.globl		ComM_DefaultEcuGroupClassification
ComM_DefaultEcuGroupClassification:
	.byte		3
	.section	.text_vle
	.type		ComM_DefaultNoWakeupValuesPerChannel,@object
	.size		ComM_DefaultNoWakeupValuesPerChannel,2
	.align		2
	.globl		ComM_DefaultNoWakeupValuesPerChannel
ComM_DefaultNoWakeupValuesPerChannel:
	.byte		0
	.byte		0
	.section	.text_vle
	.type		ComM_NvmModuleReferenced,@object
	.size		ComM_NvmModuleReferenced,1
	.align		0
	.globl		ComM_NvmModuleReferenced
ComM_NvmModuleReferenced:
	.byte		0
	.section	.text_vle
	.type		ComM_LTtoPCHashValue,@object
	.size		ComM_LTtoPCHashValue,4
	.align		2
	.globl		ComM_LTtoPCHashValue
ComM_LTtoPCHashValue:
	.long		1712421427
	.section	.text_vle
	.type		ComM_LTHashValue,@object
	.size		ComM_LTHashValue,4
	.align		2
	.globl		ComM_LTHashValue
ComM_LTHashValue:
	.long		-718828917
	.section	.text_vle
#$$ld
.L5:
.L880:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\ComStack_Types.h"
.L854:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L781:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\ComM_Lcfg.c"
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
	.uleb128	46
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	57
	.uleb128	15
	.uleb128	63
	.uleb128	12
	.uleb128	39
	.uleb128	12
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	3
	.uleb128	5
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
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	4
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
	.uleb128	5
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
	.uleb128	6
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
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
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
	.uleb128	15
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\ComM_Lcfg.c"
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
.L782:
	.sleb128	2
	.4byte		.L778-.L2
	.byte		"ComM_MainFunction_0"
	.byte		0
	.4byte		.L781
	.uleb128	146
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L779
	.4byte		.L780
	.section	.debug_info,,n
	.sleb128	0
.L778:
	.section	.debug_info,,n
.L787:
	.sleb128	2
	.4byte		.L784-.L2
	.byte		"ComM_MainFunction_1"
	.byte		0
	.4byte		.L781
	.uleb128	152
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L785
	.4byte		.L786
	.section	.debug_info,,n
	.sleb128	0
.L784:
	.section	.debug_info,,n
.L792:
	.sleb128	2
	.4byte		.L789-.L2
	.byte		"SchM_Enter_ComM"
	.byte		0
	.4byte		.L781
	.uleb128	165
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L790
	.4byte		.L791
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L781
	.uleb128	165
	.uleb128	23
	.byte		"ExclusiveArea"
	.byte		0
	.4byte		.L793
	.4byte		.L796
	.section	.debug_info,,n
	.sleb128	0
.L789:
	.section	.debug_info,,n
.L801:
	.sleb128	2
	.4byte		.L798-.L2
	.byte		"SchM_Exit_ComM"
	.byte		0
	.4byte		.L781
	.uleb128	191
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L799
	.4byte		.L800
	.sleb128	3
	.4byte		.L781
	.uleb128	191
	.uleb128	23
	.byte		"ExclusiveArea"
	.byte		0
	.4byte		.L793
	.4byte		.L802
	.section	.debug_info,,n
	.sleb128	0
.L798:
	.section	.debug_info,,n
.L803:
	.sleb128	4
	.byte		0x1
	.4byte		.L781
	.uleb128	41
	.uleb128	38
	.byte		"ComM_ChannelStates"
	.byte		0
	.4byte		.L804
	.sleb128	5
	.byte		0x3
	.4byte		ComM_ChannelStates
	.0byte		.L803
	.comm		ComM_ChannelStates,48,2
.L808:
	.sleb128	4
	.byte		0x1
	.4byte		.L781
	.uleb128	44
	.uleb128	35
	.byte		"ComM_PncStatuses"
	.byte		0
	.4byte		.L809
	.sleb128	5
	.byte		0x3
	.4byte		ComM_PncStatuses
	.comm		ComM_PncStatuses,8,2
.L813:
	.sleb128	4
	.byte		0x1
	.4byte		.L781
	.uleb128	58
	.uleb128	34
	.byte		"ComM_RxSignals"
	.byte		0
	.4byte		.L814
	.sleb128	5
	.byte		0x3
	.4byte		ComM_RxSignals
	.comm		ComM_RxSignals,8,0
.L818:
	.sleb128	4
	.byte		0x1
	.4byte		.L781
	.uleb128	61
	.uleb128	30
	.byte		"ComM_UserRequests"
	.byte		0
	.4byte		.L819
	.sleb128	5
	.byte		0x3
	.4byte		ComM_UserRequests
	.comm		ComM_UserRequests,2,2
.L822:
	.sleb128	4
	.byte		0x1
	.4byte		.L781
	.uleb128	73
	.uleb128	55
	.byte		"ComM_CurrentChannelRequestPorts"
	.byte		0
	.4byte		.L823
	.sleb128	5
	.byte		0x3
	.4byte		ComM_CurrentChannelRequestPorts
	.section	.debug_info,,n
	.section	.debug_info,,n
.L828:
	.sleb128	4
	.byte		0x1
	.4byte		.L781
	.uleb128	86
	.uleb128	57
	.byte		"ComM_RteSwitchCurrentModeCallouts"
	.byte		0
	.4byte		.L829
	.sleb128	5
	.byte		0x3
	.4byte		ComM_RteSwitchCurrentModeCallouts
	.section	.debug_info,,n
.L837:
	.sleb128	4
	.byte		0x1
	.4byte		.L781
	.uleb128	102
	.uleb128	38
	.byte		"ComM_ChannelsNum"
	.byte		0
	.4byte		.L838
	.sleb128	5
	.byte		0x3
	.4byte		ComM_ChannelsNum
	.section	.debug_info,,n
.L840:
	.sleb128	4
	.byte		0x1
	.4byte		.L781
	.uleb128	105
	.uleb128	46
	.byte		"ComM_DefaultEcuGroupClassification"
	.byte		0
	.4byte		.L841
	.sleb128	5
	.byte		0x3
	.4byte		ComM_DefaultEcuGroupClassification
	.section	.debug_info,,n
.L843:
	.sleb128	4
	.byte		0x1
	.4byte		.L781
	.uleb128	108
	.uleb128	28
	.byte		"ComM_DefaultNoWakeupValuesPerChannel"
	.byte		0
	.4byte		.L844
	.sleb128	5
	.byte		0x3
	.4byte		ComM_DefaultNoWakeupValuesPerChannel
	.section	.debug_info,,n
.L848:
	.sleb128	4
	.byte		0x1
	.4byte		.L781
	.uleb128	115
	.uleb128	28
	.byte		"ComM_NvmModuleReferenced"
	.byte		0
	.4byte		.L846
	.sleb128	5
	.byte		0x3
	.4byte		ComM_NvmModuleReferenced
	.section	.debug_info,,n
.L849:
	.sleb128	4
	.byte		0x1
	.4byte		.L781
	.uleb128	130
	.uleb128	27
	.byte		"ComM_LTtoPCHashValue"
	.byte		0
	.4byte		.L850
	.sleb128	5
	.byte		0x3
	.4byte		ComM_LTtoPCHashValue
	.section	.debug_info,,n
.L853:
	.sleb128	4
	.byte		0x1
	.4byte		.L781
	.uleb128	133
	.uleb128	27
	.byte		"ComM_LTHashValue"
	.byte		0
	.4byte		.L850
	.sleb128	5
	.byte		0x3
	.4byte		ComM_LTHashValue
	.section	.debug_info,,n
.L827:
	.sleb128	5
	.4byte		.L854
	.uleb128	121
	.uleb128	1
	.4byte		.L855-.L2
	.uleb128	8
	.section	.debug_info,,n
.L390:
	.sleb128	6
	.byte		"RteWriteCurrentChannelRequestCallout"
	.byte		0
	.4byte		.L856
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L391:
	.sleb128	6
	.byte		"CurrentChannelRequestData"
	.byte		0
	.4byte		.L865
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L855:
.L812:
	.sleb128	5
	.4byte		.L854
	.uleb128	121
	.uleb128	1
	.4byte		.L867-.L2
	.uleb128	8
.L364:
	.sleb128	6
	.byte		"PncState"
	.byte		0
	.4byte		.L868
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	6
	.byte		"PncTimer"
	.byte		0
	.4byte		.L870
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L867:
.L817:
	.sleb128	5
	.4byte		.L854
	.uleb128	121
	.uleb128	1
	.4byte		.L872-.L2
	.uleb128	8
.L359:
	.sleb128	6
	.byte		"ComCbkCounter"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L360:
	.sleb128	6
	.byte		"ComCbkCounterControl"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L361:
	.sleb128	6
	.byte		"RxSignalDataArray"
	.byte		0
	.4byte		.L874
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L872:
.L807:
	.sleb128	5
	.4byte		.L854
	.uleb128	121
	.uleb128	1
	.4byte		.L876-.L2
	.uleb128	24
.L324:
	.sleb128	6
	.byte		"FullComTimer"
	.byte		0
	.4byte		.L870
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L325:
	.sleb128	6
	.byte		"ChannelSubState"
	.byte		0
	.4byte		.L877
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L326:
	.sleb128	6
	.byte		"HaltInNoComState"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L327:
	.sleb128	6
	.byte		"LastNmIndicatedMode"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L328:
	.sleb128	6
	.byte		"IsLastNmIndicatedModeUpdated"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L329:
	.sleb128	6
	.byte		"NmRestartIndication"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L330:
	.sleb128	6
	.byte		"NmNetworkStartIndication"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L331:
	.sleb128	6
	.byte		"LastBusSMIndicatedMode"
	.byte		0
	.4byte		.L821
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L332:
	.sleb128	6
	.byte		"EcuMWakeUpIndication"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L333:
	.sleb128	6
	.byte		"ActiveDiagnostic"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L334:
	.sleb128	6
	.byte		"CommunicationAllowed"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L335:
	.sleb128	6
	.byte		"InitialTransition"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L336:
	.sleb128	6
	.byte		"BusSMReturnValue"
	.byte		0
	.4byte		.L836
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L337:
	.sleb128	6
	.byte		"UserRequestsChanged"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L338:
	.sleb128	6
	.byte		"DirectUserRequestsChanged"
	.byte		0
	.4byte		.L847
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L339:
	.sleb128	6
	.byte		"ChannelRequestedMode"
	.byte		0
	.4byte		.L821
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L340:
	.sleb128	6
	.byte		"DirectUsersRequestedMode"
	.byte		0
	.4byte		.L821
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L341:
	.sleb128	6
	.byte		"PncsRequestedMode"
	.byte		0
	.4byte		.L821
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L876:
.L864:
	.sleb128	5
	.4byte		.L880
	.uleb128	65
	.uleb128	14
	.4byte		.L881-.L2
	.uleb128	5
.L205:
	.sleb128	6
	.byte		"numberOfRequesters"
	.byte		0
	.4byte		.L794
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L206:
	.sleb128	6
	.byte		"handleArray"
	.byte		0
	.4byte		.L882
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L881:
	.section	.debug_info,,n
.L879:
	.sleb128	7
	.4byte		.L854
	.uleb128	112
	.uleb128	1
	.4byte		.L885-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	8
	.byte		"COMM_NM_MODE_NO_CHANGE"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"COMM_NM_MODE_NETWORK"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"COMM_NM_MODE_PREPARE_BUS_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"COMM_NM_MODE_BUS_SLEEP"
	.byte		0
	.sleb128	3
	.sleb128	0
.L885:
.L869:
	.sleb128	7
	.4byte		.L854
	.uleb128	57
	.uleb128	1
	.4byte		.L886-.L2
	.uleb128	4
	.sleb128	8
	.byte		"PNC_REQUESTED"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"PNC_READY_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"PNC_PREPARE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"PNC_NO_COMMUNICATION"
	.byte		0
	.sleb128	3
	.sleb128	8
	.byte		"PNC_FULL_COMMUNICATION"
	.byte		0
	.sleb128	4
	.sleb128	0
.L886:
	.section	.debug_info,,n
.L795:
	.sleb128	9
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L794:
	.sleb128	10
	.byte		"uint8"
	.byte		0
	.4byte		.L795
	.section	.debug_info,,n
.L793:
	.sleb128	11
	.4byte		.L794
.L806:
	.sleb128	10
	.byte		"ComM_ChannelStateType"
	.byte		0
	.4byte		.L807
	.section	.debug_info,,n
.L804:
	.sleb128	12
	.4byte		.L805-.L2
	.4byte		.L806
	.section	.debug_info,,n
	.sleb128	13
	.uleb128	1
	.sleb128	0
.L805:
.L811:
	.sleb128	10
	.byte		"ComM_PncStatusType"
	.byte		0
	.4byte		.L812
.L809:
	.sleb128	12
	.4byte		.L810-.L2
	.4byte		.L811
	.sleb128	13
	.uleb128	0
	.sleb128	0
.L810:
.L816:
	.sleb128	10
	.byte		"ComM_RxSignalType"
	.byte		0
	.4byte		.L817
.L814:
	.sleb128	12
	.4byte		.L815-.L2
	.4byte		.L816
	.sleb128	13
	.uleb128	0
	.sleb128	0
.L815:
.L821:
	.sleb128	10
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L794
.L819:
	.sleb128	12
	.4byte		.L820-.L2
	.4byte		.L821
	.sleb128	13
	.uleb128	1
	.sleb128	0
.L820:
.L826:
	.sleb128	10
	.byte		"ComM_CurrentChannelRequestPortType"
	.byte		0
	.4byte		.L827
.L825:
	.sleb128	11
	.4byte		.L826
.L823:
	.sleb128	12
	.4byte		.L824-.L2
	.4byte		.L825
	.sleb128	13
	.uleb128	1
	.sleb128	0
.L824:
.L836:
	.sleb128	10
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L794
	.section	.debug_info,,n
.L834:
	.sleb128	14
	.4byte		.L835-.L2
	.4byte		.L836
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	15
	.4byte		.L794
	.sleb128	0
.L835:
	.section	.debug_info,,n
.L833:
	.sleb128	16
	.4byte		.L834
.L832:
	.sleb128	10
	.byte		"ComM_RteSwitchCurrentModeCalloutType"
	.byte		0
	.4byte		.L833
.L831:
	.sleb128	11
	.4byte		.L832
.L829:
	.sleb128	12
	.4byte		.L830-.L2
	.4byte		.L831
	.sleb128	13
	.uleb128	1
	.sleb128	0
.L830:
.L839:
	.sleb128	10
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L794
.L838:
	.sleb128	11
	.4byte		.L839
.L842:
	.sleb128	10
	.byte		"ComM_InhibitionStatusType"
	.byte		0
	.4byte		.L794
.L841:
	.sleb128	11
	.4byte		.L842
.L847:
	.sleb128	10
	.byte		"boolean"
	.byte		0
	.4byte		.L795
.L846:
	.sleb128	11
	.4byte		.L847
.L844:
	.sleb128	12
	.4byte		.L845-.L2
	.4byte		.L846
	.sleb128	13
	.uleb128	1
	.sleb128	0
.L845:
.L852:
	.sleb128	9
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L851:
	.sleb128	10
	.byte		"uint32"
	.byte		0
	.4byte		.L852
.L850:
	.sleb128	11
	.4byte		.L851
.L859:
	.sleb128	14
	.4byte		.L860-.L2
	.4byte		.L836
	.byte		0x1
.L863:
	.sleb128	10
	.byte		"ComM_UserHandleArrayType"
	.byte		0
	.4byte		.L864
.L862:
	.sleb128	11
	.4byte		.L863
.L861:
	.sleb128	16
	.4byte		.L862
	.sleb128	15
	.4byte		.L861
	.sleb128	0
.L860:
.L858:
	.sleb128	16
	.4byte		.L859
.L857:
	.sleb128	10
	.byte		"ComM_RteWriteCurrentChannelRequestCalloutType"
	.byte		0
	.4byte		.L858
.L856:
	.sleb128	11
	.4byte		.L857
.L866:
	.sleb128	16
	.4byte		.L863
.L865:
	.sleb128	11
	.4byte		.L866
.L868:
	.sleb128	10
	.byte		"ComM_PncModeType"
	.byte		0
	.4byte		.L869
.L871:
	.sleb128	9
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L870:
	.sleb128	10
	.byte		"uint16"
	.byte		0
	.4byte		.L871
.L873:
	.sleb128	10
	.byte		"ComM_ComCbkCounterType"
	.byte		0
	.4byte		.L794
.L874:
	.sleb128	12
	.4byte		.L875-.L2
	.4byte		.L794
	.sleb128	13
	.uleb128	5
	.sleb128	0
.L875:
.L877:
	.sleb128	10
	.byte		"ComM_StateType"
	.byte		0
	.4byte		.L794
.L878:
	.sleb128	10
	.byte		"ComM_NmCurrentModeType"
	.byte		0
	.4byte		.L879
.L884:
	.sleb128	10
	.byte		"ComM_UserHandleType"
	.byte		0
	.4byte		.L794
.L882:
	.sleb128	12
	.4byte		.L883-.L2
	.4byte		.L884
	.sleb128	13
	.uleb128	3
	.sleb128	0
.L883:
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L796:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),6
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L802:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),6
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "SchM_Exit_ComM"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "SchM_Exit_ComM_ComM_Channel0_StateMachine","SchM_Exit_ComM_ComM_Channel1_StateMachine"
	.wrcm.end
	.wrcm.nelem "SchM_Enter_ComM"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "SchM_Enter_ComM_ComM_Channel0_StateMachine","SchM_Enter_ComM_ComM_Channel1_StateMachine"
	.wrcm.end
	.wrcm.nelem "ComM_MainFunction_1"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "ComM_MainFunction"
	.wrcm.end
	.wrcm.nelem "ComM_MainFunction_0"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "ComM_MainFunction"
	.wrcm.end
	.wrcm.end
	.wrcm.end
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_Lcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_Lcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_Lcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_Lcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\ComM_Lcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
