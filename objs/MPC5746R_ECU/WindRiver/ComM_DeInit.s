#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_DeInit.c"
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
# FUNC(void, COMM_CODE) ComM_DeInit(void)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_DeInit.c"
        .d2line         47,23
#$$ld
.L773:

#$$bf	ComM_DeInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.globl		ComM_DeInit
	.d2_cfa_start __cie
ComM_DeInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(NetworkHandleType, AUTOMATIC) channelIndex;
#     /* Indicates whether all channels are in NO_COMMUNICATIOn state or not */
#     VAR(boolean, AUTOMATIC) allChannelsInNoComState = TRUE ;
	.d2line		51
	diab.li		r5,1		# allChannelsInNoComState=r5
# 
# #if(COMM_NVM_SUPPORT == STD_ON)
#     /* Set RAM block as changed */
#     if(ComM_NvmModuleReferenced == TRUE)
#     {
# #if(COMM_MODE_LIMITATION_ENABLED == STD_ON)
#         ComM_GlobalNvMDataPtr[ComM_REJECTEDREQUESTCOUNT_HIGH_BYTEINDEX] = (uint8)((ComM_RejectedRequestCount >> 8U) & 0x00FFU);
# 
#         ComM_GlobalNvMDataPtr[ComM_REJECTEDREQUESTCOUNT_LOW_BYTEINDEX] = (uint8)(ComM_RejectedRequestCount & 0x00FFU);
# #endif
# #if(COMM_MODE_LIMITATION_ENABLED == STD_ON || COMM_WAKEUP_INHIBITION_ENABLED == STD_ON)
#         ComM_GlobalNvMDataPtr[COMM_ECUGROUPCLASSIFICATION_BYTEINDEX] = ComM_EcuGroupClassification;
# #endif
#     }
# #endif
# 
#     /* Loop through all channels */
#     for(channelIndex = 0U; channelIndex < ComM_ChannelsNum; channelIndex++)
	.d2line		69
.Llo5:
	diab.li		r3,0		# channelIndex=r3
.L758:
.Llo1:
	rlwinm		r0,r3,0,24,31		# channelIndex=r3
	lis		r4,ComM_ChannelsNum@ha		# statePtr=r4
.Llo6:
	lbz		r4,ComM_ChannelsNum@l(r4)		# statePtr=r4 statePtr=r4
	se_cmp		r0,r4		# statePtr=r4
	bc		0,0,.L760	# ge
	.section	.text_vle
.L785:
#     {
#         CONSTP2VAR(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) statePtr = &ComM_ChannelStates[channelIndex];
	.d2line		71
.Llo7:
	rlwinm		r0,r3,0,24,31		# channelIndex=r3
	lis		r4,ComM_ChannelStates@ha		# statePtr=r4
.Llo8:
	e_add16i		r4,r4,ComM_ChannelStates@l		# statePtr=r4 statePtr=r4
	rlwinm		r6,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r6
	se_add		r0,r4		# statePtr=r4
	mr		r4,r0		# statePtr=r4 statePtr=r0
# 
# #if(COMM_NVM_SUPPORT == STD_ON && COMM_WAKEUP_INHIBITION_ENABLED == STD_ON)
#         /* Set RAM block as changed */
#         if(ComM_NvmModuleReferenced == TRUE)
#         {
#             ComM_GlobalNvMDataPtr[COMM_NOWAKEUP_BYTEINDEX + channelIndex] = (uint8)statePtr->ComMNoWakeup;
#         }
# #endif
#         if(COMM_IS_CHANNEL_IN_NO_COM(statePtr) == FALSE)
	.d2line		80
.Llo9:
	lbz		r0,2(r4)		# statePtr=r4
	se_cmpi		r0,0
	bc		1,2,.L763	# eq
.Llo10:
	lbz		r0,2(r4)		# statePtr=r4
	se_cmpi		r0,1
	bc		1,2,.L763	# eq
.Llo11:
	diab.li		r0,0
	b		.L764
.L763:
.Llo12:
	diab.li		r0,1
.L764:
.Llo13:
	e_andi.		r0,r0,255
#         {
#             allChannelsInNoComState = FALSE;
	.d2line		82
	isel		r5,0,r5,2		# allChannelsInNoComState=r5 allChannelsInNoComState=r5
.L761:
	.section	.text_vle
.L786:
#         }
#     }
	.d2line		84
	diab.addi		r0,r3,1		# channelIndex=r3
	se_addi		r3,1		# channelIndex=r3 channelIndex=r3
	b		.L758
.L760:
# 
# #if(COMM_NVM_SUPPORT == STD_ON)
#     /* Set RAM block as changed */
#     (void)NvM_SetRamBlockStatus(ComM_GlobalNvmBlockIdentifier, TRUE);
# #endif
# 
#     /* Check if there is at least one channel not in NO_COMMUNICATION state */
#     if(allChannelsInNoComState == TRUE)
	.d2line		92
	rlwinm		r5,r5,0,24,31		# allChannelsInNoComState=r5 allChannelsInNoComState=r5
	se_cmpi		r5,1		# allChannelsInNoComState=r5
	bc		0,2,.L757	# ne
#     {
#         /* Deinitialize ComM */
#         ComM_InitStatus = COMM_UNINIT;
	.d2line		95
.Llo2:
	diab.li		r0,0
	lis		r3,ComM_InitStatus@ha		# channelIndex=r3
.Llo3:
	e_add16i		r3,r3,ComM_InitStatus@l		# channelIndex=r3 channelIndex=r3
	stw		r0,0(r3)		# channelIndex=r3
.L757:
#     }
# }
	.d2line		97
	.d2epilogue_begin
.Llo4:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L774:
	.type		ComM_DeInit,@function
	.size		ComM_DeInit,.-ComM_DeInit
# Number of nodes = 59

# Allocations for ComM_DeInit
#	?a4		$$238
#	?a5		$$237
#	?a6		channelIndex
#	?a7		allChannelsInNoComState
#	?a8		statePtr

# Allocations for module
	.section	.text_vle
	.0byte		.L802
	.section	.text_vle
#$$ld
.L5:
.L804:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L796:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Private.h"
.L775:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_DeInit.c"
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
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	4
	.uleb128	11
	.byte		0x1
	.uleb128	1
	.uleb128	16
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	5
	.uleb128	52
	.byte		0x0
	.uleb128	63
	.uleb128	12
	.uleb128	60
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
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
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
	.uleb128	11
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
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
	.uleb128	13
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	33
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_DeInit.c"
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
.L776:
	.sleb128	2
	.4byte		.L772-.L2
	.byte		"ComM_DeInit"
	.byte		0
	.4byte		.L775
	.uleb128	47
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L773
	.4byte		.L774
	.section	.debug_info,,n
.L777:
	.sleb128	3
	.4byte		.L775
	.uleb128	49
	.uleb128	39
	.byte		"channelIndex"
	.byte		0
	.4byte		.L778
	.4byte		.L781
.L782:
	.sleb128	3
	.4byte		.L775
	.uleb128	51
	.uleb128	29
	.byte		"allChannelsInNoComState"
	.byte		0
	.4byte		.L783
	.4byte		.L784
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L788
	.4byte		.L785
	.4byte		.L786
.L789:
	.sleb128	3
	.4byte		.L775
	.uleb128	71
	.uleb128	70
	.byte		"statePtr"
	.byte		0
	.4byte		.L790
	.4byte		.L794
	.section	.debug_info,,n
	.sleb128	0
.L788:
	.section	.debug_info,,n
	.sleb128	0
.L772:
	.section	.debug_info,,n
.L795:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L796
	.uleb128	374
	.uleb128	55
	.byte		"ComM_InitStatus"
	.byte		0
	.4byte		.L797
	.0byte		.L795
.L799:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L796
	.uleb128	388
	.uleb128	45
	.byte		"ComM_ChannelStates"
	.byte		0
	.4byte		.L800
.L802:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L796
	.uleb128	417
	.uleb128	53
	.byte		"ComM_ChannelsNum"
	.byte		0
	.4byte		.L803
	.section	.debug_info,,n
	.section	.debug_info,,n
.L793:
	.sleb128	6
	.4byte		.L804
	.uleb128	121
	.uleb128	1
	.4byte		.L805-.L2
	.uleb128	24
	.section	.debug_info,,n
.L324:
	.sleb128	7
	.byte		"FullComTimer"
	.byte		0
	.4byte		.L806
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L325:
	.sleb128	7
	.byte		"ChannelSubState"
	.byte		0
	.4byte		.L808
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L326:
	.sleb128	7
	.byte		"HaltInNoComState"
	.byte		0
	.4byte		.L783
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L327:
	.sleb128	7
	.byte		"LastNmIndicatedMode"
	.byte		0
	.4byte		.L809
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L328:
	.sleb128	7
	.byte		"IsLastNmIndicatedModeUpdated"
	.byte		0
	.4byte		.L783
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L329:
	.sleb128	7
	.byte		"NmRestartIndication"
	.byte		0
	.4byte		.L783
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L330:
	.sleb128	7
	.byte		"NmNetworkStartIndication"
	.byte		0
	.4byte		.L783
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L331:
	.sleb128	7
	.byte		"LastBusSMIndicatedMode"
	.byte		0
	.4byte		.L811
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L332:
	.sleb128	7
	.byte		"EcuMWakeUpIndication"
	.byte		0
	.4byte		.L783
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L333:
	.sleb128	7
	.byte		"ActiveDiagnostic"
	.byte		0
	.4byte		.L783
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L334:
	.sleb128	7
	.byte		"CommunicationAllowed"
	.byte		0
	.4byte		.L783
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L335:
	.sleb128	7
	.byte		"InitialTransition"
	.byte		0
	.4byte		.L783
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L336:
	.sleb128	7
	.byte		"BusSMReturnValue"
	.byte		0
	.4byte		.L812
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L337:
	.sleb128	7
	.byte		"UserRequestsChanged"
	.byte		0
	.4byte		.L783
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L338:
	.sleb128	7
	.byte		"DirectUserRequestsChanged"
	.byte		0
	.4byte		.L783
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L339:
	.sleb128	7
	.byte		"ChannelRequestedMode"
	.byte		0
	.4byte		.L811
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L340:
	.sleb128	7
	.byte		"DirectUsersRequestedMode"
	.byte		0
	.4byte		.L811
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L341:
	.sleb128	7
	.byte		"PncsRequestedMode"
	.byte		0
	.4byte		.L811
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L805:
	.section	.debug_info,,n
.L810:
	.sleb128	8
	.4byte		.L804
	.uleb128	112
	.uleb128	1
	.4byte		.L813-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	9
	.byte		"COMM_NM_MODE_NO_CHANGE"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"COMM_NM_MODE_NETWORK"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"COMM_NM_MODE_PREPARE_BUS_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	9
	.byte		"COMM_NM_MODE_BUS_SLEEP"
	.byte		0
	.sleb128	3
	.sleb128	0
.L813:
.L798:
	.sleb128	8
	.4byte		.L804
	.uleb128	50
	.uleb128	1
	.4byte		.L814-.L2
	.uleb128	4
	.sleb128	9
	.byte		"COMM_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"COMM_INIT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L814:
	.section	.debug_info,,n
.L780:
	.sleb128	10
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L779:
	.sleb128	11
	.byte		"uint8"
	.byte		0
	.4byte		.L780
.L778:
	.sleb128	11
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L779
.L783:
	.sleb128	11
	.byte		"boolean"
	.byte		0
	.4byte		.L780
.L792:
	.sleb128	11
	.byte		"ComM_ChannelStateType"
	.byte		0
	.4byte		.L793
	.section	.debug_info,,n
.L791:
	.sleb128	12
	.4byte		.L792
	.section	.debug_info,,n
.L790:
	.sleb128	13
	.4byte		.L791
.L797:
	.sleb128	11
	.byte		"ComM_InitStatusType"
	.byte		0
	.4byte		.L798
	.section	.debug_info,,n
.L800:
	.sleb128	14
	.4byte		.L801-.L2
	.4byte		.L792
	.section	.debug_info,,n
	.sleb128	15
	.sleb128	0
.L801:
.L803:
	.sleb128	13
	.4byte		.L778
.L807:
	.sleb128	10
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L806:
	.sleb128	11
	.byte		"uint16"
	.byte		0
	.4byte		.L807
.L808:
	.sleb128	11
	.byte		"ComM_StateType"
	.byte		0
	.4byte		.L779
.L809:
	.sleb128	11
	.byte		"ComM_NmCurrentModeType"
	.byte		0
	.4byte		.L810
.L811:
	.sleb128	11
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L779
.L812:
	.sleb128	11
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L779
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L781:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L784:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo2),5
	.d2locend
.L794:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),4
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),4
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_DeInit"
	.wrcm.nint32 "frameSize", 16
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_DeInit.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_DeInit.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_DeInit.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_DeInit.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_DeInit.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_DeInit.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_DeInit.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
