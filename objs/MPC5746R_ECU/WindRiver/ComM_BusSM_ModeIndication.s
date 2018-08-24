#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_BusSM_ModeIndication.c"
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
# LOCAL_INLINE FUNC(ComM_ModeType, COMM_CODE) ComM_GetUserLowestMode(CONST(ComM_UserHandleType, AUTOMATIC) UserID)
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_BusSM_ModeIndication.c"
        .d2line         134,45
#$$ld
.L785:

#$$bf	ComM_GetUserLowestMode,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
ComM_GetUserLowestMode:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# UserID=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# UserID=r0 UserID=r3
	.d2prologue_end
# {
#     CONSTP2CONST(NetworkHandleType, AUTOMATIC, COMM_APPL_CONST) channelsUserIDsPtr = &ComM_ConfigPtr->UsersPtr[UserID].AllChannelIDsPtr[0];
#     VAR(ComM_ModeType, AUTOMATIC) lowestComMMode = COMM_FULL_COMMUNICATION;
	.d2line		137
	diab.li		r30,2		# lowestComMMode=r30
	.d2line		136
.Llo9:
	lis		r3,ComM_ConfigPtr@ha
.Llo2:
	lwz		r4,ComM_ConfigPtr@l(r3)
	lwz		r4,8(r4)
.Llo3:
	rlwinm		r0,r0,3,21,28		# UserID=r0 UserID=r0
	lwzux		r31,r4,r0
.Llo7:
	mr		r31,r31		# channelsUserIDsPtr=r31 channelsUserIDsPtr=r31
#     VAR(uint16, AUTOMATIC) channelIndex;
# 
# #if(COMM_REPORT_MODE_SWITCH_TO_USERS_OF_PNC == STD_ON)
#     /* Use all ComMChannels which are connected to the ComMUser directly or indirectly */
#     CONST(uint16, AUTOMATIC) channelsUserIDsNum = ComM_ConfigPtr->UsersPtr[UserID].AllChannelIDsNum;
	.d2line		142
.Llo8:
	lwz		r3,ComM_ConfigPtr@l(r3)
	lwz		r3,8(r3)
	se_add		r3,r0		# UserID=r0
	lhz		r28,4(r3)
.Llo12:
	mr		r28,r28		# channelsUserIDsNum=r28 channelsUserIDsNum=r28
# #else
#     /* Use all ComMChannels which are connected to the ComMUser directly only */
#     CONST(uint16, AUTOMATIC) channelsUserIDsNum = ComM_ConfigPtr->UsersPtr[UserID].DirectChannelIDsNum;
# #endif
# 
#     for(channelIndex = 0U; channelIndex < channelsUserIDsNum; channelIndex++)
	.d2line		148
	diab.li		r29,0		# channelIndex=r29
.L776:
.Llo4:
	rlwinm		r3,r29,0,16,31		# channelComMode=r3 channelIndex=r29
.Llo17:
	rlwinm		r0,r28,0,16,31		# UserID=r0 channelsUserIDsNum=r28
.Llo5:
	se_cmp		r3,r0		# channelComMode=r3 UserID=r0
	bc		0,0,.L778	# ge
	.section	.text_vle
.L810:
#     {
#         CONST(NetworkHandleType, AUTOMATIC) channelID = channelsUserIDsPtr[channelIndex];
	.d2line		150
.Llo6:
	rlwinm		r3,r29,0,16,31		# channelComMode=r3 channelIndex=r29
.Llo18:
	lbzux		r0,r3,r31		# UserID=r0 channelComMode=r3
.Llo13:
	mr		r0,r0		# channelID=r0 channelID=r0
#         /* Get channel Communication Mode */
#         CONST(ComM_ModeType, AUTOMATIC) channelComMode = ComM_GetChannelState(ComM_ChannelStates[channelID].ChannelSubState);
	.d2line		152
	rlwinm		r0,r0,0,24,31		# channelID=r0 channelID=r0
	lis		r3,(ComM_ChannelStates+2)@ha		# channelComMode=r3
	e_add16i		r3,r3,(ComM_ChannelStates+2)@l		# channelComMode=r3 channelComMode=r3
	rlwinm		r4,r0,5,0,26		# channelID=r0
	se_slwi		r0,3		# channelID=r0 channelID=r0
	subf		r0,r0,r4		# channelID=r0 channelID=r0
.Llo14:
	lbzx		r3,r3,r0		# channelComMode=r3 channelComMode=r3
.Llo19:
	bl		ComM_GetChannelState
.Llo20:
	mr		r3,r3		# channelComMode=r3 channelComMode=r3
# 
#         if(channelComMode < lowestComMMode)
	.d2line		154
	rlwinm		r4,r3,0,24,31		# channelComMode=r3
	rlwinm		r0,r30,0,24,31		# channelID=r0 lowestComMMode=r30
.Llo15:
	se_cmp		r4,r0		# channelID=r0
#         {
#             lowestComMMode = channelComMode;
	.d2line		156
	isel		r30,r3,r30,0		# lowestComMMode=r30 channelComMode=r3 lowestComMMode=r30
.L779:
	.section	.text_vle
.L811:
#         }
#     }
	.d2line		158
.Llo16:
	diab.addi		r3,r29,1		# channelComMode=r3 channelIndex=r29
	se_addi		r29,1		# channelIndex=r29 channelIndex=r29
	b		.L776
.L778:
# 
#     return lowestComMMode;
	.d2line		160
.Llo11:
	rlwinm		r3,r30,0,24,31		# channelComMode=r3 lowestComMMode=r30
# }
	.d2line		161
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo10:
	lwz		r0,36(r1)		# UserID=r0
	mtspr		lr,r0		# UserID=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L786:
	.type		ComM_GetUserLowestMode,@function
	.size		ComM_GetUserLowestMode,.-ComM_GetUserLowestMode
# Number of nodes = 73

# Allocations for ComM_GetUserLowestMode
#	?a4		UserID
#	?a5		$$237
#	?a6		channelsUserIDsPtr
#	?a7		lowestComMMode
#	?a8		channelIndex
#	?a9		channelsUserIDsNum
#	?a10		channelID
#	?a11		channelComMode
# FUNC(void, COMM_CODE) ComM_BusSM_ModeIndication(VAR(NetworkHandleType, AUTOMATIC)                  Channel,
	.align		2
	.section	.text_vle
        .d2line         56,23
#$$ld
.L821:

#$$bf	ComM_BusSM_ModeIndication,interprocedural,rasave,nostackparams
	.globl		ComM_BusSM_ModeIndication
	.d2_cfa_start __cie
ComM_BusSM_ModeIndication:
.Llo21:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	25,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	mr		r30,r4		# ComMode=r30 ComMode=r4
	.d2prologue_end
#                                                 P2CONST(ComM_ModeType, AUTOMATIC, COMM_APPL_CONST) ComMode)
# {
#     /* [ComM612] [ComM816] [ComM858] Check whether the module has been initialized */
#     if(ComM_InitStatus != COMM_INIT)
	.d2line		60
	lis		r3,ComM_InitStatus@ha
.Llo22:
	lwz		r0,ComM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L759	# ne
	.section	.text_vle
.L827:
#     {
#         COMM_DET_REPORT_ERROR(COMM_BUS_STATEMODEIND_API_ID, COMM_E_NOT_INITED);
#     }
# #if (COMM_DEV_ERROR_DETECT == STD_ON)
#     /* Check if arguments passed are valid */
#     else if( (ComMode == NULL_PTR) || (Channel >= ComM_ChannelsNum) ||
#              ( (*ComMode != COMM_NO_COMMUNICATION) && (*ComMode != COMM_SILENT_COMMUNICATION) && (*ComMode != COMM_FULL_COMMUNICATION) ) )
#     {
#         COMM_DET_REPORT_ERROR(COMM_BUS_STATEMODEIND_API_ID, COMM_E_WRONG_PARAMETERS);
#     }
# #endif
#     else
#     {
#         CONSTP2VAR(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) statePtr = &ComM_ChannelStates[Channel];
	.d2line		74
.Llo23:
	rlwinm		r0,r31,0,24,31		# Channel=r31
.Llo25:
	lis		r29,ComM_ChannelStates@ha		# statePtr=r29
.Llo28:
	e_add16i		r29,r29,ComM_ChannelStates@l		# statePtr=r29 statePtr=r29
	rlwinm		r3,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r3
	se_add		r0,r29		# statePtr=r29
	mr		r29,r0		# statePtr=r29 statePtr=r0
# 
#         statePtr->LastBusSMIndicatedMode = *ComMode;
	.d2line		76
	lbz		r0,0(r30)		# ComMode=r30
	stb		r0,11(r29)		# statePtr=r29
# 
#         /* [ComM313] Report only if the transition is not the initial transition in ComM_Init */
#         /* Report Communication mode to users */
#         if( (statePtr->InitialTransition == FALSE) || (*ComMode != COMM_NO_COMMUNICATION) )
	.d2line		80
	lbz		r0,15(r29)		# statePtr=r29
	se_cmpi		r0,0
	bc		1,2,.L767	# eq
	lbz		r0,0(r30)		# ComMode=r30
	se_cmpi		r0,0
	bc		1,2,.L762	# eq
.L767:
	.section	.text_vle
.L837:
#         {
#             CONSTP2CONST(ComM_UserHandleType, AUTOMATIC, COMM_APPL_CONST) channelsUserIDsPtr = &ComM_ConfigPtr->ChannelsPtr[Channel].UserIDsPtr[0];
	.d2line		82
	rlwinm		r0,r31,0,24,31		# Channel=r31
	lis		r3,ComM_ConfigPtr@ha
	lwz		r4,ComM_ConfigPtr@l(r3)
	lwz		r4,12(r4)
	rlwinm		r5,r0,6,0,25
	se_slwi		r0,4
	subf		r0,r0,r5
	lwzx		r28,r4,r0
.Llo29:
	mr		r28,r28		# channelsUserIDsPtr=r28 channelsUserIDsPtr=r28
# 
# #if(COMM_REPORT_MODE_SWITCH_TO_USERS_OF_PNC == STD_ON)
#             /* [DEV_ComM2015] Use all ComMChannels which are connected to the ComMUser directly or indirectly */
#             CONST(uint16, AUTOMATIC) channelsUserIDsNum = ComM_ConfigPtr->ChannelsPtr[Channel].AllUserIDsNum;
	.d2line		86
.Llo30:
	lwz		r3,ComM_ConfigPtr@l(r3)
	lwz		r3,12(r3)
	se_add		r3,r0
	lhz		r27,4(r3)		# channelsUserIDsNum=r27
.Llo31:
	mr		r27,r27		# channelsUserIDsNum=r27 channelsUserIDsNum=r27
# #else
#             /* [DEV_ComM2016] Use all ComMChannels which are connected to the ComMUser directly only */
#             CONST(uint16, AUTOMATIC) channelsUserIDsNum = ComM_ConfigPtr->ChannelsPtr[Channel].DirectUserIDsNum;
# #endif
# 
#             /* If the number of the ComMUsers what are connected to this channel is not zero */
#             if(channelsUserIDsNum > 0U)
	.d2line		93
	e_cmphl16i	r27,0		# channelsUserIDsNum=r27
	bc		1,2,.L763	# eq
	.section	.text_vle
.L847:
#             {
#                 VAR(uint16, AUTOMATIC) userIndex;
# 
#                 SchM_Enter_ComM_ComM_ModeIndication();
	.d2line		97
	bl		SchM_Enter_ComM_ComM_ModeIndication
# 
#                 /* [ComM091] [ComM472] Loop through all the users mapped to the channel */
#                 for(userIndex = 0U; userIndex < channelsUserIDsNum; userIndex++)
	.d2line		100
	diab.li		r26,0		# userIndex=r26
.L764:
.Llo33:
	rlwinm		r3,r26,0,16,31		# ComMLowestMode=r3 userIndex=r26
.Llo37:
	rlwinm		r0,r27,0,16,31		# channelsUserIDsNum=r27
	se_cmp		r3,r0		# ComMLowestMode=r3
	bc		0,0,.L766	# ge
	.section	.text_vle
.L853:
#                 {
#                     /* Get User Identifier */
#                     CONST(ComM_UserHandleType, AUTOMATIC) userID = channelsUserIDsPtr[userIndex];
	.d2line		103
.Llo38:
	rlwinm		r3,r26,0,16,31		# ComMLowestMode=r3 userIndex=r26
.Llo39:
	lbzux		r25,r3,r28		# userID=r25 ComMLowestMode=r3
.Llo35:
	mr		r25,r25		# userID=r25 userID=r25
#                     /* Get the lowest mode from the channels which are mapped to the user */
#                     CONST(ComM_ModeType, AUTOMATIC) ComMLowestMode = ComM_GetUserLowestMode(userID);
	.d2line		105
	mr		r3,r25		# userID=r3 userID=r25
.Llo40:
	bl		ComM_GetUserLowestMode
#                     /* Report mode to corresponding User via RTE */
#                     (void)ComM_RteSwitchCurrentModeCallouts[userID]( (uint8)ComMLowestMode );
	.d2line		107
.Llo41:
	lis		r4,ComM_RteSwitchCurrentModeCallouts@ha
	e_add16i		r4,r4,ComM_RteSwitchCurrentModeCallouts@l
	rlwinm		r25,r25,2,22,29		# userID=r25 userID=r25
.Llo36:
	lwzx		r0,r4,r25
	mtspr		ctr,r0
	rlwinm		r3,r3,0,24,31		# ComMLowestMode=r3 ComMLowestMode=r3
.Llo42:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
	.section	.text_vle
.L854:
#                 }
	.d2line		108
	diab.addi		r3,r26,1		# ComMLowestMode=r3 userIndex=r26
	se_addi		r26,1		# userIndex=r26 userIndex=r26
	b		.L764
.L766:
# 
#                 SchM_Exit_ComM_ComM_ModeIndication();
	.d2line		110
	bl		SchM_Exit_ComM_ComM_ModeIndication
	.section	.text_vle
.L848:
.L763:
#             }
#             /* [ComM976] */
#             BswM_ComM_CurrentMode(Channel, *ComMode);
	.d2line		113
.Llo34:
	lbz		r4,0(r30)		# ComMode=r30
	rlwinm		r3,r31,0,24,31		# ComMLowestMode=r3 Channel=r31
	bl		BswM_ComM_CurrentMode
	.section	.text_vle
.L838:
.L762:
#         }
# 
#         /* Report Communication mode to DCM */
#         ComM_DcmReportMode(Channel, *ComMode);
	.d2line		117
.Llo32:
	lbz		r4,0(r30)		# ComMode=r30
	rlwinm		r3,r31,0,24,31		# ComMLowestMode=r3 Channel=r31
	bl		ComM_DcmReportMode
#         statePtr->InitialTransition = FALSE;
	.d2line		118
	diab.li		r0,0
	stb		r0,15(r29)		# statePtr=r29
	.section	.text_vle
.L828:
.L759:
#     }
# }
	.d2line		120
	.d2epilogue_begin
.Llo24:
	lmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	2,10
.Llo26:
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo27:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L822:
	.type		ComM_BusSM_ModeIndication,@function
	.size		ComM_BusSM_ModeIndication,.-ComM_BusSM_ModeIndication
# Number of nodes = 129

# Allocations for ComM_BusSM_ModeIndication
#	?a4		Channel
#	?a5		ComMode
#	?a6		$$240
#	?a7		$$239
#	?a8		$$238
#	?a9		statePtr
#	?a10		channelsUserIDsPtr
#	?a11		channelsUserIDsNum
#	?a12		userIndex
#	?a13		userID
#	?a14		ComMLowestMode

# Allocations for module
	.section	.text_vle
	.0byte		.L873
	.section	.text_vle
#$$ld
.L5:
.L882:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L862:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Private.h"
.L787:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_BusSM_ModeIndication.c"
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
	.uleb128	73
	.uleb128	16
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
	.uleb128	5
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
	.uleb128	6
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
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
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
	.uleb128	13
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	33
	.byte		0x0
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
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
	.uleb128	19
	.uleb128	5
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_BusSM_ModeIndication.c"
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
.L791:
	.sleb128	2
	.4byte		.L784-.L2
	.byte		"ComM_GetUserLowestMode"
	.byte		0
	.4byte		.L787
	.uleb128	134
	.uleb128	45
	.4byte		.L788
	.byte		0x1
	.4byte		.L785
	.4byte		.L786
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L787
	.uleb128	134
	.uleb128	45
	.byte		"UserID"
	.byte		0
	.4byte		.L792
	.4byte		.L794
	.section	.debug_info,,n
.L795:
	.sleb128	4
	.4byte		.L787
	.uleb128	136
	.uleb128	65
	.byte		"channelsUserIDsPtr"
	.byte		0
	.4byte		.L796
	.4byte		.L800
.L801:
	.sleb128	4
	.4byte		.L787
	.uleb128	137
	.uleb128	35
	.byte		"lowestComMMode"
	.byte		0
	.4byte		.L788
	.4byte		.L802
.L803:
	.sleb128	4
	.4byte		.L787
	.uleb128	138
	.uleb128	28
	.byte		"channelIndex"
	.byte		0
	.4byte		.L804
	.4byte		.L806
.L807:
	.sleb128	4
	.4byte		.L787
	.uleb128	142
	.uleb128	30
	.byte		"channelsUserIDsNum"
	.byte		0
	.4byte		.L808
	.4byte		.L809
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L813
	.4byte		.L810
	.4byte		.L811
.L814:
	.sleb128	4
	.4byte		.L787
	.uleb128	150
	.uleb128	45
	.byte		"channelID"
	.byte		0
	.4byte		.L798
	.4byte		.L815
.L816:
	.sleb128	4
	.4byte		.L787
	.uleb128	152
	.uleb128	41
	.byte		"channelComMode"
	.byte		0
	.4byte		.L817
	.4byte		.L818
	.section	.debug_info,,n
	.sleb128	0
.L813:
	.section	.debug_info,,n
	.sleb128	0
.L784:
	.section	.debug_info,,n
.L823:
	.sleb128	6
	.4byte		.L820-.L2
	.byte		"ComM_BusSM_ModeIndication"
	.byte		0
	.4byte		.L787
	.uleb128	56
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L821
	.4byte		.L822
	.sleb128	3
	.4byte		.L787
	.uleb128	56
	.uleb128	23
	.byte		"Channel"
	.byte		0
	.4byte		.L799
	.4byte		.L824
	.sleb128	3
	.4byte		.L787
	.uleb128	56
	.uleb128	23
	.byte		"ComMode"
	.byte		0
	.4byte		.L825
	.4byte		.L826
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L830
	.4byte		.L827
	.4byte		.L828
.L831:
	.sleb128	4
	.4byte		.L787
	.uleb128	74
	.uleb128	70
	.byte		"statePtr"
	.byte		0
	.4byte		.L832
	.4byte		.L836
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L840
	.4byte		.L837
	.4byte		.L838
.L841:
	.sleb128	4
	.4byte		.L787
	.uleb128	82
	.uleb128	75
	.byte		"channelsUserIDsPtr"
	.byte		0
	.4byte		.L842
	.4byte		.L844
.L845:
	.sleb128	4
	.4byte		.L787
	.uleb128	86
	.uleb128	38
	.byte		"channelsUserIDsNum"
	.byte		0
	.4byte		.L808
	.4byte		.L846
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L850
	.4byte		.L847
	.4byte		.L848
.L851:
	.sleb128	4
	.4byte		.L787
	.uleb128	95
	.uleb128	40
	.byte		"userIndex"
	.byte		0
	.4byte		.L804
	.4byte		.L852
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L856
	.4byte		.L853
	.4byte		.L854
.L857:
	.sleb128	4
	.4byte		.L787
	.uleb128	103
	.uleb128	59
	.byte		"userID"
	.byte		0
	.4byte		.L792
	.4byte		.L858
.L859:
	.sleb128	4
	.4byte		.L787
	.uleb128	105
	.uleb128	53
	.byte		"ComMLowestMode"
	.byte		0
	.4byte		.L817
	.4byte		.L860
	.section	.debug_info,,n
	.sleb128	0
.L856:
	.section	.debug_info,,n
	.sleb128	0
.L850:
	.section	.debug_info,,n
	.sleb128	0
.L840:
	.section	.debug_info,,n
	.sleb128	0
.L830:
	.section	.debug_info,,n
	.sleb128	0
.L820:
	.section	.debug_info,,n
.L861:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L862
	.uleb128	374
	.uleb128	55
	.byte		"ComM_InitStatus"
	.byte		0
	.4byte		.L863
	.0byte		.L861
.L865:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L862
	.uleb128	377
	.uleb128	55
	.byte		"ComM_ConfigPtr"
	.byte		0
	.4byte		.L866
.L870:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L862
	.uleb128	388
	.uleb128	45
	.byte		"ComM_ChannelStates"
	.byte		0
	.4byte		.L871
.L873:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L862
	.uleb128	407
	.uleb128	64
	.byte		"ComM_RteSwitchCurrentModeCallouts"
	.byte		0
	.4byte		.L874
	.section	.debug_info,,n
	.section	.debug_info,,n
.L869:
	.sleb128	8
	.4byte		.L882
	.uleb128	121
	.uleb128	1
	.4byte		.L883-.L2
	.uleb128	32
	.section	.debug_info,,n
.L380:
	.sleb128	9
	.byte		"PBtoPCHashValuePtr"
	.byte		0
	.4byte		.L884
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L381:
	.sleb128	9
	.byte		"PBtoLTHashValuePtr"
	.byte		0
	.4byte		.L884
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L382:
	.sleb128	9
	.byte		"UsersPtr"
	.byte		0
	.4byte		.L888
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L383:
	.sleb128	9
	.byte		"ChannelsPtr"
	.byte		0
	.4byte		.L893
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L384:
	.sleb128	9
	.byte		"PncsPtr"
	.byte		0
	.4byte		.L898
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	9
	.byte		"PncRxSignalsPtr"
	.byte		0
	.4byte		.L903
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	9
	.byte		"PncsNum"
	.byte		0
	.4byte		.L808
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	9
	.byte		"PncRxSignalsNum"
	.byte		0
	.4byte		.L808
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L388:
	.sleb128	9
	.byte		"UsersNum"
	.byte		0
	.4byte		.L908
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L389:
	.sleb128	9
	.byte		"PncEnabled"
	.byte		0
	.4byte		.L909
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
	.sleb128	0
.L883:
.L907:
	.sleb128	8
	.4byte		.L882
	.uleb128	121
	.uleb128	1
	.4byte		.L911-.L2
	.uleb128	12
.L377:
	.sleb128	9
	.byte		"SignalId"
	.byte		0
	.4byte		.L912
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L378:
	.sleb128	9
	.byte		"SignalKind"
	.byte		0
	.4byte		.L914
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L379:
	.sleb128	9
	.byte		"SignalChannel"
	.byte		0
	.4byte		.L798
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L911:
.L902:
	.sleb128	8
	.4byte		.L882
	.uleb128	121
	.uleb128	1
	.4byte		.L917-.L2
	.uleb128	32
.L366:
	.sleb128	9
	.byte		"PncID"
	.byte		0
	.4byte		.L918
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	9
	.byte		"PncIdByteIndex"
	.byte		0
	.4byte		.L908
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L368:
	.sleb128	9
	.byte		"PncIdBitIndex"
	.byte		0
	.4byte		.L908
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L369:
	.sleb128	9
	.byte		"PncTimerMaxValue"
	.byte		0
	.4byte		.L808
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L370:
	.sleb128	9
	.byte		"PncTimerHandlerChannelID"
	.byte		0
	.4byte		.L798
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L371:
	.sleb128	9
	.byte		"PncChannelIDsPtr"
	.byte		0
	.4byte		.L796
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L372:
	.sleb128	9
	.byte		"PncChannelIDsNum"
	.byte		0
	.4byte		.L908
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L373:
	.sleb128	9
	.byte		"PncComRxSignalIndexesPtr"
	.byte		0
	.4byte		.L920
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L374:
	.sleb128	9
	.byte		"PncComRxSignalIndexesNum"
	.byte		0
	.4byte		.L808
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L375:
	.sleb128	9
	.byte		"PncUserIDsPtr"
	.byte		0
	.4byte		.L842
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L376:
	.sleb128	9
	.byte		"PncUserIDsNum"
	.byte		0
	.4byte		.L808
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L917:
.L892:
	.sleb128	8
	.4byte		.L882
	.uleb128	121
	.uleb128	1
	.4byte		.L922-.L2
	.uleb128	8
.L356:
	.sleb128	9
	.byte		"AllChannelIDsPtr"
	.byte		0
	.4byte		.L796
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L357:
	.sleb128	9
	.byte		"AllChannelIDsNum"
	.byte		0
	.4byte		.L808
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L358:
	.sleb128	9
	.byte		"DirectChannelIDsNum"
	.byte		0
	.4byte		.L808
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L922:
.L897:
	.sleb128	8
	.4byte		.L882
	.uleb128	121
	.uleb128	1
	.4byte		.L923-.L2
	.uleb128	48
.L342:
	.sleb128	9
	.byte		"UserIDsPtr"
	.byte		0
	.4byte		.L842
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L343:
	.sleb128	9
	.byte		"AllUserIDsNum"
	.byte		0
	.4byte		.L808
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L344:
	.sleb128	9
	.byte		"DirectUserIDsNum"
	.byte		0
	.4byte		.L808
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L345:
	.sleb128	9
	.byte		"PncIndexesPtr"
	.byte		0
	.4byte		.L842
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L346:
	.sleb128	9
	.byte		"PncStatesPtr"
	.byte		0
	.4byte		.L924
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L347:
	.sleb128	9
	.byte		"PncRequestsPtr"
	.byte		0
	.4byte		.L928
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L348:
	.sleb128	9
	.byte		"ChannelPncsNum"
	.byte		0
	.4byte		.L908
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L349:
	.sleb128	9
	.byte		"FullComTimerInitValue"
	.byte		0
	.4byte		.L808
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L350:
	.sleb128	9
	.byte		"NmVariant"
	.byte		0
	.4byte		.L930
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L351:
	.sleb128	9
	.byte		"TxSignalIDsPtr"
	.byte		0
	.4byte		.L933
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L352:
	.sleb128	9
	.byte		"TxSignalBufferPtr"
	.byte		0
	.4byte		.L935
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L353:
	.sleb128	9
	.byte		"TxSignalIDsNum"
	.byte		0
	.4byte		.L908
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L354:
	.sleb128	9
	.byte		"BusType"
	.byte		0
	.4byte		.L937
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L355:
	.sleb128	9
	.byte		"PncNmRequestEnabled"
	.byte		0
	.4byte		.L909
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L923:
.L835:
	.sleb128	8
	.4byte		.L882
	.uleb128	121
	.uleb128	1
	.4byte		.L940-.L2
	.uleb128	24
.L324:
	.sleb128	9
	.byte		"FullComTimer"
	.byte		0
	.4byte		.L804
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L325:
	.sleb128	9
	.byte		"ChannelSubState"
	.byte		0
	.4byte		.L941
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L326:
	.sleb128	9
	.byte		"HaltInNoComState"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L327:
	.sleb128	9
	.byte		"LastNmIndicatedMode"
	.byte		0
	.4byte		.L942
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L328:
	.sleb128	9
	.byte		"IsLastNmIndicatedModeUpdated"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L329:
	.sleb128	9
	.byte		"NmRestartIndication"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L330:
	.sleb128	9
	.byte		"NmNetworkStartIndication"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L331:
	.sleb128	9
	.byte		"LastBusSMIndicatedMode"
	.byte		0
	.4byte		.L788
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L332:
	.sleb128	9
	.byte		"EcuMWakeUpIndication"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L333:
	.sleb128	9
	.byte		"ActiveDiagnostic"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L334:
	.sleb128	9
	.byte		"CommunicationAllowed"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L335:
	.sleb128	9
	.byte		"InitialTransition"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L336:
	.sleb128	9
	.byte		"BusSMReturnValue"
	.byte		0
	.4byte		.L881
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L337:
	.sleb128	9
	.byte		"UserRequestsChanged"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L338:
	.sleb128	9
	.byte		"DirectUserRequestsChanged"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L339:
	.sleb128	9
	.byte		"ChannelRequestedMode"
	.byte		0
	.4byte		.L788
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L340:
	.sleb128	9
	.byte		"DirectUsersRequestedMode"
	.byte		0
	.4byte		.L788
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L341:
	.sleb128	9
	.byte		"PncsRequestedMode"
	.byte		0
	.4byte		.L788
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L940:
	.section	.debug_info,,n
.L943:
	.sleb128	10
	.4byte		.L882
	.uleb128	112
	.uleb128	1
	.4byte		.L944-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"COMM_NM_MODE_NO_CHANGE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"COMM_NM_MODE_NETWORK"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"COMM_NM_MODE_PREPARE_BUS_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"COMM_NM_MODE_BUS_SLEEP"
	.byte		0
	.sleb128	3
	.sleb128	0
.L944:
.L932:
	.sleb128	10
	.4byte		.L882
	.uleb128	103
	.uleb128	1
	.4byte		.L945-.L2
	.uleb128	4
	.sleb128	11
	.byte		"COMM_FULL"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"COMM_LIGHT"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"COMM_NONE"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"COMM_PASSIVE"
	.byte		0
	.sleb128	3
	.sleb128	0
.L945:
.L939:
	.sleb128	10
	.4byte		.L882
	.uleb128	93
	.uleb128	1
	.4byte		.L946-.L2
	.uleb128	4
	.sleb128	11
	.byte		"COMM_BUS_TYPE_CAN"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"COMM_BUS_TYPE_ETH"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"COMM_BUS_TYPE_FR"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"COMM_BUS_TYPE_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"COMM_BUS_TYPE_LIN"
	.byte		0
	.sleb128	4
	.sleb128	0
.L946:
.L916:
	.sleb128	10
	.4byte		.L882
	.uleb128	86
	.uleb128	1
	.4byte		.L947-.L2
	.uleb128	4
	.sleb128	11
	.byte		"COMM_SIGNAL_KIND_EIRA"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"COMM_SIGNAL_KIND_ERA"
	.byte		0
	.sleb128	1
	.sleb128	0
.L947:
.L927:
	.sleb128	10
	.4byte		.L882
	.uleb128	57
	.uleb128	1
	.4byte		.L948-.L2
	.uleb128	4
	.sleb128	11
	.byte		"PNC_REQUESTED"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"PNC_READY_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"PNC_PREPARE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"PNC_NO_COMMUNICATION"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"PNC_FULL_COMMUNICATION"
	.byte		0
	.sleb128	4
	.sleb128	0
.L948:
.L864:
	.sleb128	10
	.4byte		.L882
	.uleb128	50
	.uleb128	1
	.4byte		.L949-.L2
	.uleb128	4
	.sleb128	11
	.byte		"COMM_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"COMM_INIT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L949:
	.section	.debug_info,,n
.L790:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L789:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L790
.L788:
	.sleb128	13
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L789
.L793:
	.sleb128	13
	.byte		"ComM_UserHandleType"
	.byte		0
	.4byte		.L789
	.section	.debug_info,,n
.L792:
	.sleb128	14
	.4byte		.L793
.L799:
	.sleb128	13
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L789
.L798:
	.sleb128	14
	.4byte		.L799
	.section	.debug_info,,n
.L797:
	.sleb128	15
	.4byte		.L798
.L796:
	.sleb128	14
	.4byte		.L797
.L805:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L804:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L805
.L808:
	.sleb128	14
	.4byte		.L804
.L817:
	.sleb128	14
	.4byte		.L788
.L825:
	.sleb128	15
	.4byte		.L817
.L834:
	.sleb128	13
	.byte		"ComM_ChannelStateType"
	.byte		0
	.4byte		.L835
.L833:
	.sleb128	15
	.4byte		.L834
.L832:
	.sleb128	14
	.4byte		.L833
.L843:
	.sleb128	15
	.4byte		.L792
.L842:
	.sleb128	14
	.4byte		.L843
.L863:
	.sleb128	13
	.byte		"ComM_InitStatusType"
	.byte		0
	.4byte		.L864
.L868:
	.sleb128	13
	.byte		"ComM_ConfigType"
	.byte		0
	.4byte		.L869
.L867:
	.sleb128	14
	.4byte		.L868
.L866:
	.sleb128	15
	.4byte		.L867
	.section	.debug_info,,n
.L871:
	.sleb128	16
	.4byte		.L872-.L2
	.4byte		.L834
	.section	.debug_info,,n
	.sleb128	17
	.sleb128	0
.L872:
.L881:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L789
	.section	.debug_info,,n
.L879:
	.sleb128	18
	.4byte		.L880-.L2
	.4byte		.L881
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	19
	.4byte		.L789
	.sleb128	0
.L880:
.L878:
	.sleb128	15
	.4byte		.L879
.L877:
	.sleb128	13
	.byte		"ComM_RteSwitchCurrentModeCalloutType"
	.byte		0
	.4byte		.L878
.L876:
	.sleb128	14
	.4byte		.L877
.L874:
	.sleb128	16
	.4byte		.L875-.L2
	.4byte		.L876
	.sleb128	17
	.sleb128	0
.L875:
.L887:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L886:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L887
.L885:
	.sleb128	14
	.4byte		.L886
.L884:
	.sleb128	15
	.4byte		.L885
.L891:
	.sleb128	13
	.byte		"ComM_UserType"
	.byte		0
	.4byte		.L892
.L890:
	.sleb128	14
	.4byte		.L891
.L889:
	.sleb128	15
	.4byte		.L890
.L888:
	.sleb128	14
	.4byte		.L889
.L896:
	.sleb128	13
	.byte		"ComM_ChannelType"
	.byte		0
	.4byte		.L897
.L895:
	.sleb128	14
	.4byte		.L896
.L894:
	.sleb128	15
	.4byte		.L895
.L893:
	.sleb128	14
	.4byte		.L894
.L901:
	.sleb128	13
	.byte		"ComM_PncType"
	.byte		0
	.4byte		.L902
.L900:
	.sleb128	14
	.4byte		.L901
.L899:
	.sleb128	15
	.4byte		.L900
.L898:
	.sleb128	14
	.4byte		.L899
.L906:
	.sleb128	13
	.byte		"ComM_PncRxSignalType"
	.byte		0
	.4byte		.L907
.L905:
	.sleb128	14
	.4byte		.L906
.L904:
	.sleb128	15
	.4byte		.L905
.L903:
	.sleb128	14
	.4byte		.L904
.L908:
	.sleb128	14
	.4byte		.L789
.L910:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L790
.L909:
	.sleb128	14
	.4byte		.L910
.L913:
	.sleb128	13
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L804
.L912:
	.sleb128	14
	.4byte		.L913
.L915:
	.sleb128	13
	.byte		"ComM_PncComSignalKindType"
	.byte		0
	.4byte		.L916
.L914:
	.sleb128	14
	.4byte		.L915
.L919:
	.sleb128	13
	.byte		"PNCHandleType"
	.byte		0
	.4byte		.L789
.L918:
	.sleb128	14
	.4byte		.L919
.L921:
	.sleb128	15
	.4byte		.L908
.L920:
	.sleb128	14
	.4byte		.L921
.L926:
	.sleb128	13
	.byte		"ComM_PncModeType"
	.byte		0
	.4byte		.L927
.L925:
	.sleb128	15
	.4byte		.L926
.L924:
	.sleb128	14
	.4byte		.L925
.L929:
	.sleb128	15
	.4byte		.L788
.L928:
	.sleb128	14
	.4byte		.L929
.L931:
	.sleb128	13
	.byte		"ComM_NmVariantType"
	.byte		0
	.4byte		.L932
.L930:
	.sleb128	14
	.4byte		.L931
.L934:
	.sleb128	15
	.4byte		.L808
.L933:
	.sleb128	14
	.4byte		.L934
.L936:
	.sleb128	15
	.4byte		.L789
.L935:
	.sleb128	14
	.4byte		.L936
.L938:
	.sleb128	13
	.byte		"ComM_BusTypeType"
	.byte		0
	.4byte		.L939
.L937:
	.sleb128	14
	.4byte		.L938
.L941:
	.sleb128	13
	.byte		"ComM_StateType"
	.byte		0
	.4byte		.L789
.L942:
	.sleb128	13
	.byte		"ComM_NmCurrentModeType"
	.byte		0
	.4byte		.L943
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L794:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locend
.L800:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),31
	.d2locend
.L802:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),30
	.d2locend
.L806:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo11),29
	.d2locend
.L809:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo11),28
	.d2locend
.L815:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locend
.L818:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo16),3
	.d2locend
.L824:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),31
	.d2locend
.L826:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo23),4
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo24),30
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),4
	.d2locend
.L836:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo24),29
	.d2locend
.L844:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),28
	.d2locend
.L846:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),27
	.d2locend
.L852:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),26
	.d2locend
.L858:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),25
	.d2locend
.L860:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),3
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_BusSM_ModeIndication"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "BswM_ComM_CurrentMode","ComM_DcmReportMode","ComM_GetUserLowestMode","SchM_Enter_ComM_ComM_ModeIndication","SchM_Exit_ComM_ComM_ModeIndication"
	.wrcm.end
	.wrcm.nelem "ComM_GetUserLowestMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "ComM_GetChannelState"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_BusSM_ModeIndication.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_BusSM_ModeIndication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_BusSM_ModeIndication.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_BusSM_ModeIndication.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_BusSM_ModeIndication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_BusSM_ModeIndication.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_BusSM_ModeIndication.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
