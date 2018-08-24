#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_EcuM_WakeUpIndication.c"
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
# FUNC(void, COMM_CODE) ComM_EcuM_WakeUpIndication(VAR( NetworkHandleType, AUTOMATIC ) Channel)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_EcuM_WakeUpIndication.c"
        .d2line         51,23
#$$ld
.L781:

#$$bf	ComM_EcuM_WakeUpIndication,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.globl		ComM_EcuM_WakeUpIndication
	.d2_cfa_start __cie
ComM_EcuM_WakeUpIndication:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* [ComM612] Check whether the module has been initialized */
#     if(ComM_InitStatus != COMM_INIT)
	.d2line		54
	lis		r3,ComM_InitStatus@ha
	lwz		r0,ComM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L757	# ne
	.section	.text_vle
.L788:
#     {
#         COMM_DET_REPORT_ERROR(COMM_ECUM_WAKEUPINDICATION_API_ID, COMM_E_NOT_INITED);
#     }
# #if(COMM_DEV_ERROR_DETECT == STD_ON)
#     /* Check if channel is invalid */
#     else if(Channel >= ComM_ChannelsNum)
#     {
#         COMM_DET_REPORT_ERROR(COMM_ECUM_WAKEUPINDICATION_API_ID, COMM_E_WRONG_PARAMETERS);
#     }
# #endif
#     else
#     {
# #if(COMM_SYNCHRONOUS_WAKE_UP == STD_ON)
#         VAR(NetworkHandleType, AUTOMATIC)   channelIndex = 0U;
	.d2line		68
	diab.li		r3,0		# channelIndex=r3
#         CONST(NetworkHandleType, AUTOMATIC) loopMax      = ComM_ChannelsNum;
	.d2line		69
.Llo1:
	lis		r4,ComM_ChannelsNum@ha
	lbz		r5,ComM_ChannelsNum@l(r4)
.Llo3:
	mr		r5,r5		# loopMax=r5 loopMax=r5
.L760:
# #else
#         VAR(NetworkHandleType, AUTOMATIC)   channelIndex = Channel;
#         CONST(NetworkHandleType, AUTOMATIC) loopMax      = Channel + 1U;
# #endif
# 
#         /* Loop through all channels */
#         while(channelIndex < loopMax)
	.d2line		76
	rlwinm		r0,r3,0,24,31		# channelIndex=r3
	rlwinm		r4,r5,0,24,31		# loopMax=r5
	se_cmp		r0,r4
	bc		0,0,.L757	# ge
	.section	.text_vle
.L797:
#         {
#             CONSTP2VAR(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) statePtr = &ComM_ChannelStates[channelIndex];
	.d2line		78
	rlwinm		r0,r3,0,24,31		# channelIndex=r3
	lis		r4,ComM_ChannelStates@ha
	e_add16i		r4,r4,ComM_ChannelStates@l
	rlwinm		r6,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r6
	se_add		r0,r4
.Llo4:
	mr		r4,r0		# statePtr=r4 statePtr=r0
# 
# #if(COMM_PNC_SUPPORT == STD_ON && COMM_SYNCHRONOUS_WAKE_UP == STD_ON)
#             /* Set EcuM wake-up indication for PNCs */
#             ComM_PncEcuMWakeUpIndications[channelIndex] = TRUE;
# #endif
# 
#             /* [ADD_ComM3005] */
#             if( (COMM_IS_CHANNEL_IN_NO_COM(statePtr) == TRUE) || (COMM_IS_NM_BUS_SLEEP_MODE_EVENT_PENDING(statePtr) == TRUE) )
	.d2line		86
	lbz		r0,2(r4)		# statePtr=r4
.Llo5:
	se_cmpi		r0,0
	bc		1,2,.L764	# eq
.Llo6:
	lbz		r0,2(r4)		# statePtr=r4
	se_cmpi		r0,1
	bc		1,2,.L764	# eq
	diab.li		r0,0
	b		.L765
.L764:
	diab.li		r0,1
.L765:
	rlwinm		r0,r0,0,24,31
	se_cmpi		r0,1
	bc		1,2,.L763	# eq
	lbz		r0,8(r4)		# statePtr=r4
	se_cmpi		r0,1
	bc		0,2,.L768	# ne
	lwz		r0,4(r4)		# statePtr=r4
	se_cmpi		r0,3
	bc		1,2,.L766	# eq
.L768:
	diab.li		r0,0
	b		.L767
.L766:
	diab.li		r0,1
.L767:
	rlwinm		r0,r0,0,24,31
	se_cmpi		r0,1
	bc		0,2,.L762	# ne
.L763:
#             {
#                 statePtr->EcuMWakeUpIndication = TRUE;
	.d2line		88
	diab.li		r0,1
	stb		r0,12(r4)		# statePtr=r4
.L762:
#             }
#             channelIndex++;
	.d2line		90
	diab.addi		r0,r3,1		# channelIndex=r3
	se_addi		r3,1		# channelIndex=r3 channelIndex=r3
	.section	.text_vle
.L798:
.Llo7:
	b		.L760
	.section	.text_vle
.L789:
.L757:
#         }
#     }
# }
	.d2line		93
	.d2epilogue_begin
.Llo2:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L782:
	.type		ComM_EcuM_WakeUpIndication,@function
	.size		ComM_EcuM_WakeUpIndication,.-ComM_EcuM_WakeUpIndication
# Number of nodes = 85

# Allocations for ComM_EcuM_WakeUpIndication
#	not allocated	Channel
#	?a4		$$239
#	?a5		$$238
#	?a6		$$237
#	?a7		channelIndex
#	?a8		loopMax
#	?a9		statePtr

# Allocations for module
	.section	.text_vle
	.0byte		.L814
	.section	.text_vle
#$$ld
.L5:
.L815:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L808:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Private.h"
.L783:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_EcuM_WakeUpIndication.c"
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
	.uleb128	9
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
	.uleb128	6
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
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_EcuM_WakeUpIndication.c"
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
.L784:
	.sleb128	2
	.4byte		.L780-.L2
	.byte		"ComM_EcuM_WakeUpIndication"
	.byte		0
	.4byte		.L783
	.uleb128	51
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L781
	.4byte		.L782
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L783
	.uleb128	51
	.uleb128	23
	.byte		"Channel"
	.byte		0
	.4byte		.L785
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L791
	.4byte		.L788
	.4byte		.L789
	.section	.debug_info,,n
.L792:
	.sleb128	5
	.4byte		.L783
	.uleb128	68
	.uleb128	45
	.byte		"channelIndex"
	.byte		0
	.4byte		.L785
	.4byte		.L793
.L794:
	.sleb128	5
	.4byte		.L783
	.uleb128	69
	.uleb128	45
	.byte		"loopMax"
	.byte		0
	.4byte		.L795
	.4byte		.L796
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L800
	.4byte		.L797
	.4byte		.L798
.L801:
	.sleb128	5
	.4byte		.L783
	.uleb128	78
	.uleb128	74
	.byte		"statePtr"
	.byte		0
	.4byte		.L802
	.4byte		.L806
	.section	.debug_info,,n
	.sleb128	0
.L800:
	.section	.debug_info,,n
	.sleb128	0
.L791:
	.section	.debug_info,,n
	.sleb128	0
.L780:
	.section	.debug_info,,n
.L807:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L808
	.uleb128	374
	.uleb128	55
	.byte		"ComM_InitStatus"
	.byte		0
	.4byte		.L809
	.0byte		.L807
.L811:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L808
	.uleb128	388
	.uleb128	45
	.byte		"ComM_ChannelStates"
	.byte		0
	.4byte		.L812
.L814:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L808
	.uleb128	417
	.uleb128	53
	.byte		"ComM_ChannelsNum"
	.byte		0
	.4byte		.L795
	.section	.debug_info,,n
	.section	.debug_info,,n
.L805:
	.sleb128	7
	.4byte		.L815
	.uleb128	121
	.uleb128	1
	.4byte		.L816-.L2
	.uleb128	24
	.section	.debug_info,,n
.L324:
	.sleb128	8
	.byte		"FullComTimer"
	.byte		0
	.4byte		.L817
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L325:
	.sleb128	8
	.byte		"ChannelSubState"
	.byte		0
	.4byte		.L819
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L326:
	.sleb128	8
	.byte		"HaltInNoComState"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L327:
	.sleb128	8
	.byte		"LastNmIndicatedMode"
	.byte		0
	.4byte		.L821
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L328:
	.sleb128	8
	.byte		"IsLastNmIndicatedModeUpdated"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L329:
	.sleb128	8
	.byte		"NmRestartIndication"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L330:
	.sleb128	8
	.byte		"NmNetworkStartIndication"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L331:
	.sleb128	8
	.byte		"LastBusSMIndicatedMode"
	.byte		0
	.4byte		.L823
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L332:
	.sleb128	8
	.byte		"EcuMWakeUpIndication"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L333:
	.sleb128	8
	.byte		"ActiveDiagnostic"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L334:
	.sleb128	8
	.byte		"CommunicationAllowed"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L335:
	.sleb128	8
	.byte		"InitialTransition"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L336:
	.sleb128	8
	.byte		"BusSMReturnValue"
	.byte		0
	.4byte		.L824
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L337:
	.sleb128	8
	.byte		"UserRequestsChanged"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L338:
	.sleb128	8
	.byte		"DirectUserRequestsChanged"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L339:
	.sleb128	8
	.byte		"ChannelRequestedMode"
	.byte		0
	.4byte		.L823
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L340:
	.sleb128	8
	.byte		"DirectUsersRequestedMode"
	.byte		0
	.4byte		.L823
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L341:
	.sleb128	8
	.byte		"PncsRequestedMode"
	.byte		0
	.4byte		.L823
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L816:
	.section	.debug_info,,n
.L822:
	.sleb128	9
	.4byte		.L815
	.uleb128	112
	.uleb128	1
	.4byte		.L825-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"COMM_NM_MODE_NO_CHANGE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"COMM_NM_MODE_NETWORK"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"COMM_NM_MODE_PREPARE_BUS_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"COMM_NM_MODE_BUS_SLEEP"
	.byte		0
	.sleb128	3
	.sleb128	0
.L825:
.L810:
	.sleb128	9
	.4byte		.L815
	.uleb128	50
	.uleb128	1
	.4byte		.L826-.L2
	.uleb128	4
	.sleb128	10
	.byte		"COMM_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"COMM_INIT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L826:
	.section	.debug_info,,n
.L787:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L786:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L787
.L785:
	.sleb128	12
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L786
	.section	.debug_info,,n
.L795:
	.sleb128	13
	.4byte		.L785
.L804:
	.sleb128	12
	.byte		"ComM_ChannelStateType"
	.byte		0
	.4byte		.L805
	.section	.debug_info,,n
.L803:
	.sleb128	14
	.4byte		.L804
.L802:
	.sleb128	13
	.4byte		.L803
.L809:
	.sleb128	12
	.byte		"ComM_InitStatusType"
	.byte		0
	.4byte		.L810
	.section	.debug_info,,n
.L812:
	.sleb128	15
	.4byte		.L813-.L2
	.4byte		.L804
	.section	.debug_info,,n
	.sleb128	16
	.sleb128	0
.L813:
.L818:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L817:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L818
.L819:
	.sleb128	12
	.byte		"ComM_StateType"
	.byte		0
	.4byte		.L786
.L820:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L787
.L821:
	.sleb128	12
	.byte		"ComM_NmCurrentModeType"
	.byte		0
	.4byte		.L822
.L823:
	.sleb128	12
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L786
.L824:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L786
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L793:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L796:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo2),5
	.d2locend
.L806:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),0
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_EcuM_WakeUpIndication"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_EcuM_WakeUpIndication.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_EcuM_WakeUpIndication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_EcuM_WakeUpIndication.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_EcuM_WakeUpIndication.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_EcuM_WakeUpIndication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_EcuM_WakeUpIndication.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_EcuM_WakeUpIndication.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
