#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_RequestComMode.c"
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
# FUNC(Std_ReturnType, COMM_CODE) ComM_RequestComMode(VAR(ComM_UserHandleType, AUTOMATIC) User,
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_RequestComMode.c"
        .d2line         58,33
#$$ld
.L776:

#$$bf	ComM_RequestComMode,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,cr0,xer,lr
	.globl		ComM_RequestComMode
	.d2_cfa_start __cie
ComM_RequestComMode:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# User=r5 User=r3
.Llo10:
	mr		r4,r4		# ComMode=r4 ComMode=r4
	.d2prologue_end
#                                                     VAR(ComM_ModeType, AUTOMATIC)       ComMode)
# {
#     VAR(Std_ReturnType, AUTOMATIC) retVal = E_OK;
	.d2line		61
	diab.li		r3,0		# retVal=r3
# 
#     /* [ComM612] Check whether ComM has been initialized */
#     if(ComM_InitStatus != COMM_INIT)
	.d2line		64
.Llo2:
	lis		r6,ComM_InitStatus@ha
	lwz		r0,ComM_InitStatus@l(r6)
	se_cmpi		r0,1
	bc		1,2,.L758	# eq
#     {
#         COMM_DET_REPORT_ERROR(COMM_REQUESTCOMMODE_API_ID, COMM_E_NOT_INITED);
#         retVal = COMM_UNINIT_RETVAL;
	.d2line		67
.Llo3:
	diab.li		r3,1		# retVal=r3
	b		.L759
.L758:
	.section	.text_vle
.L789:
#     }
# #if(COMM_DEV_ERROR_DETECT == STD_ON)
#     /* Check if arguments passed are valid */
#     else if( (User >= ComM_ConfigPtr->UsersNum) || ((ComMode != COMM_NO_COMMUNICATION) && (ComMode != COMM_FULL_COMMUNICATION)) )
#     {
#         COMM_DET_REPORT_ERROR(COMM_REQUESTCOMMODE_API_ID, COMM_E_WRONG_PARAMETERS);
#         retVal = E_NOT_OK;
#     }
# #endif
#     else
#     {
# #if(COMM_MODE_LIMITATION_ENABLED == STD_ON)
#         VAR(uint16, AUTOMATIC) localRejectedRequestCount = 0U;
# #endif
#         VAR(boolean, AUTOMATIC) requestedModeChanged = (boolean)(ComM_UserRequests[User] != ComMode);
	.d2line		82
	lis		r6,ComM_UserRequests@ha
	e_add16i		r6,r6,ComM_UserRequests@l
	rlwinm		r0,r5,0,24,31		# User=r5
	lbzx		r0,r6,r0
	rlwinm		r6,r4,0,24,31		# ComMode=r4
	subf		r0,r0,r6
	addic		r7,r0,-1		# requestedModeChanged=r7
.Llo9:
	subfe		r7,r7,r0		# requestedModeChanged=r7 requestedModeChanged=r7
	mr		r7,r7		# requestedModeChanged=r7 requestedModeChanged=r7
# 
#         if(requestedModeChanged == TRUE)
	.d2line		84
	rlwinm		r0,r7,0,24,31		# requestedModeChanged=r7
	se_cmpi		r0,1
	bc		0,2,.L760	# ne
#         {
#             ComM_UserRequests[User] = ComMode;
	.d2line		86
	lis		r6,ComM_UserRequests@ha
	e_add16i		r6,r6,ComM_UserRequests@l
	rlwinm		r0,r5,0,24,31		# User=r5
	stbx		r4,r6,r0		# ComMode=r4
.L760:
#         }
# 
#         /* Used only for unit tests to simulate concurrency */
# #ifdef COMM_TEST_CONCURRENCY
#         ComM_TestConcurrentCallout();
# #endif
# 
#         /* Notify Channels and increment the Inhibition Counter if needed */
#         if( (requestedModeChanged == TRUE) || (ComMode == COMM_FULL_COMMUNICATION) )
	.d2line		95
	rlwinm		r0,r7,0,24,31		# requestedModeChanged=r7
	se_cmpi		r0,1
	bc		1,2,.L767	# eq
	rlwinm		r4,r4,0,24,31		# ComMode=r4 ComMode=r4
	se_cmpi		r4,2		# ComMode=r4
	bc		0,2,.L759	# ne
.L767:
	.section	.text_vle
.L796:
#         {
#             CONSTP2CONST(ComM_UserType, AUTOMATIC, COMM_APPL_DATA) userPtr = &(ComM_ConfigPtr->UsersPtr[User]);
	.d2line		97
.Llo5:
	lis		r4,ComM_ConfigPtr@ha		# ComMode=r4
.Llo6:
	lwz		r4,ComM_ConfigPtr@l(r4)		# ComMode=r4 ComMode=r4
	lwz		r4,8(r4)		# ComMode=r4 ComMode=r4
	rlwinm		r5,r5,3,21,28		# User=r5 User=r5
	se_add		r4,r5		# ComMode=r4 ComMode=r4 User=r5
.Llo7:
	mr		r4,r4		# userPtr=r4 userPtr=r4
#             VAR(uint16, AUTOMATIC) channelIndex;
# 
#             /* Loop through all channels (direct or indirect) mapped to the user */
#             for(channelIndex = 0U; channelIndex < userPtr->AllChannelIDsNum; channelIndex++)
	.d2line		101
	diab.li		r5,0		# channelIndex=r5
.L762:
	rlwinm		r0,r5,0,16,31		# channelID=r0 channelIndex=r5
.Llo15:
	lhz		r6,4(r4)		# channelID=r6 userPtr=r4
	se_cmp		r0,r6		# channelID=r0 channelID=r6
	bc		0,0,.L759	# ge
	.section	.text_vle
.L811:
#             {
#                 /* The 1. part of AllChannelIDsPtr[] array contains the direct mapped users */
#                 CONST(boolean, AUTOMATIC) isDirectUser = (boolean)(channelIndex < userPtr->DirectChannelIDsNum);
	.d2line		104
.Llo16:
	rlwinm		r0,r5,0,16,31		# channelID=r0 channelIndex=r5
.Llo17:
	lhz		r6,6(r4)		# channelID=r6 userPtr=r4
	se_cmp		r0,r6		# channelID=r0 channelID=r6
	mfcr		r31		# isDirectUser=r31
.Llo11:
	se_srwi		r31,31		# isDirectUser=r31 isDirectUser=r31
	mr		r31,r31		# isDirectUser=r31 isDirectUser=r31
# 
#                 /* Get channel identifier */
#                 CONST(NetworkHandleType, AUTOMATIC) channelID = userPtr->AllChannelIDsPtr[channelIndex];
	.d2line		107
	lwz		r6,0(r4)		# channelID=r6 userPtr=r4
	lbzx		r0,r6,r0		# channelID=r0 channelID=r6
	mr		r0,r0		# channelID=r0 channelID=r0
#                 CONSTP2VAR(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) statePtr = &ComM_ChannelStates[channelID];
	.d2line		108
	rlwinm		r0,r0,0,24,31		# channelID=r0 channelID=r0
	lis		r6,ComM_ChannelStates@ha		# channelID=r6
	e_add16i		r6,r6,ComM_ChannelStates@l		# channelID=r6 channelID=r6
	rlwinm		r30,r0,5,0,26		# channelID=r0
	se_slwi		r0,3		# channelID=r0 channelID=r0
	subf		r0,r0,r30		# channelID=r0 channelID=r0
	se_add		r0,r6		# channelID=r0 channelID=r0 channelID=r6
.Llo18:
	mr		r6,r0		# statePtr=r6 statePtr=r0
# 
#                 if(requestedModeChanged == TRUE)
	.d2line		110
	rlwinm		r0,r7,0,24,31		# channelID=r0 requestedModeChanged=r7
.Llo19:
	se_cmpi		r0,1		# channelID=r0
	bc		0,2,.L765	# ne
#                 {
#                     statePtr->UserRequestsChanged = TRUE; /* Update CurrentChannelRequesters in the RTE */
	.d2line		112
.Llo12:
	diab.li		r0,1		# channelID=r0
.Llo20:
	stb		r0,17(r6)		# statePtr=r6 channelID=r0
#                     if(isDirectUser == TRUE)
	.d2line		113
.Llo13:
	rlwinm		r31,r31,0,24,31		# isDirectUser=r31 isDirectUser=r31
	se_cmpi		r31,1		# isDirectUser=r31
	bc		0,2,.L765	# ne
#                     {
#                         statePtr->DirectUserRequestsChanged = TRUE; /* Update COMM_IS_CHANNEL_REQUESTED */
	.d2line		115
.Llo14:
	diab.li		r0,1		# channelID=r0
.Llo21:
	stb		r0,18(r6)		# statePtr=r6 channelID=r0
.L765:
	.section	.text_vle
.L812:
#                     }
#                 }
# #if(COMM_MODE_LIMITATION_ENABLED == STD_ON)
#                 if( (isDirectUser == TRUE) && (ComMode == COMM_FULL_COMMUNICATION) && (COMM_REPORT_MODE_LIMITATION(statePtr) == TRUE) )
#                 {
#                     localRejectedRequestCount += 1U;
#                 }
# #endif
#             }
	.d2line		124
.Llo22:
	diab.addi		r0,r5,1		# channelID=r0 channelIndex=r5
	se_addi		r5,1		# channelIndex=r5 channelIndex=r5
	b		.L762
	.section	.text_vle
.L797:
	.section	.text_vle
.L790:
.L759:
#         }
# 
# #if(COMM_MODE_LIMITATION_ENABLED == STD_ON)
#         /* [DEV_ComM2005] */
#         if(localRejectedRequestCount > 0U)
#         {
#             SchM_Enter_ComM_ComM_InhibitionCounter();
# 
#             COMM_ADD_TO_INHIBITION_COUNTER(localRejectedRequestCount);
# 
#             SchM_Exit_ComM_ComM_InhibitionCounter();
# 
#             /* [DEV_ComM2005] Return COMM_E_MODE_LIMITATION if ComMNoCom is True */
#             retVal = COMM_E_MODE_LIMITATION;
#         }
# #endif
#     }
# 
#     return retVal;
	.d2line		143
.Llo4:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		144
	.d2epilogue_begin
.Llo8:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# channelID=r0
	mtspr		lr,r0		# channelID=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L777:
	.type		ComM_RequestComMode,@function
	.size		ComM_RequestComMode,.-ComM_RequestComMode
# Number of nodes = 117

# Allocations for ComM_RequestComMode
#	?a4		User
#	?a5		ComMode
#	?a6		$$237
#	?a7		retVal
#	?a8		requestedModeChanged
#	?a9		userPtr
#	?a10		channelIndex
#	?a11		isDirectUser
#	?a12		channelID
#	?a13		statePtr

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L843:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L829:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Private.h"
.L778:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_RequestComMode.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_RequestComMode.c"
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
	.4byte		.L775-.L2
	.byte		"ComM_RequestComMode"
	.byte		0
	.4byte		.L778
	.uleb128	58
	.uleb128	33
	.4byte		.L779
	.byte		0x1
	.byte		0x1
	.4byte		.L776
	.4byte		.L777
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L778
	.uleb128	58
	.uleb128	33
	.byte		"User"
	.byte		0
	.4byte		.L783
	.4byte		.L784
	.sleb128	3
	.4byte		.L778
	.uleb128	58
	.uleb128	33
	.byte		"ComMode"
	.byte		0
	.4byte		.L785
	.4byte		.L786
	.section	.debug_info,,n
.L787:
	.sleb128	4
	.4byte		.L778
	.uleb128	61
	.uleb128	36
	.byte		"retVal"
	.byte		0
	.4byte		.L779
	.4byte		.L788
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L792
	.4byte		.L789
	.4byte		.L790
.L793:
	.sleb128	4
	.4byte		.L778
	.uleb128	82
	.uleb128	33
	.byte		"requestedModeChanged"
	.byte		0
	.4byte		.L794
	.4byte		.L795
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L799
	.4byte		.L796
	.4byte		.L797
.L800:
	.sleb128	4
	.4byte		.L778
	.uleb128	97
	.uleb128	68
	.byte		"userPtr"
	.byte		0
	.4byte		.L801
	.4byte		.L806
.L807:
	.sleb128	4
	.4byte		.L778
	.uleb128	98
	.uleb128	36
	.byte		"channelIndex"
	.byte		0
	.4byte		.L808
	.4byte		.L810
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L814
	.4byte		.L811
	.4byte		.L812
.L815:
	.sleb128	4
	.4byte		.L778
	.uleb128	104
	.uleb128	43
	.byte		"isDirectUser"
	.byte		0
	.4byte		.L816
	.4byte		.L817
.L818:
	.sleb128	4
	.4byte		.L778
	.uleb128	107
	.uleb128	53
	.byte		"channelID"
	.byte		0
	.4byte		.L819
	.4byte		.L821
.L822:
	.sleb128	4
	.4byte		.L778
	.uleb128	108
	.uleb128	78
	.byte		"statePtr"
	.byte		0
	.4byte		.L823
	.4byte		.L827
	.section	.debug_info,,n
	.sleb128	0
.L814:
	.section	.debug_info,,n
	.sleb128	0
.L799:
	.section	.debug_info,,n
	.sleb128	0
.L792:
	.section	.debug_info,,n
	.sleb128	0
.L775:
	.section	.debug_info,,n
.L828:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L829
	.uleb128	374
	.uleb128	55
	.byte		"ComM_InitStatus"
	.byte		0
	.4byte		.L830
	.0byte		.L828
.L832:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L829
	.uleb128	377
	.uleb128	55
	.byte		"ComM_ConfigPtr"
	.byte		0
	.4byte		.L833
.L837:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L829
	.uleb128	388
	.uleb128	45
	.byte		"ComM_ChannelStates"
	.byte		0
	.4byte		.L838
.L840:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L829
	.uleb128	443
	.uleb128	52
	.byte		"ComM_UserRequests"
	.byte		0
	.4byte		.L841
	.section	.debug_info,,n
.L836:
	.sleb128	7
	.4byte		.L843
	.uleb128	121
	.uleb128	1
	.4byte		.L844-.L2
	.uleb128	32
	.section	.debug_info,,n
.L380:
	.sleb128	8
	.byte		"PBtoPCHashValuePtr"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L381:
	.sleb128	8
	.byte		"PBtoLTHashValuePtr"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L382:
	.sleb128	8
	.byte		"UsersPtr"
	.byte		0
	.4byte		.L801
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L383:
	.sleb128	8
	.byte		"ChannelsPtr"
	.byte		0
	.4byte		.L849
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L384:
	.sleb128	8
	.byte		"PncsPtr"
	.byte		0
	.4byte		.L854
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	8
	.byte		"PncRxSignalsPtr"
	.byte		0
	.4byte		.L859
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	8
	.byte		"PncsNum"
	.byte		0
	.4byte		.L864
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	8
	.byte		"PncRxSignalsNum"
	.byte		0
	.4byte		.L864
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L388:
	.sleb128	8
	.byte		"UsersNum"
	.byte		0
	.4byte		.L865
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L389:
	.sleb128	8
	.byte		"PncEnabled"
	.byte		0
	.4byte		.L816
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
	.sleb128	0
.L844:
.L863:
	.sleb128	7
	.4byte		.L843
	.uleb128	121
	.uleb128	1
	.4byte		.L866-.L2
	.uleb128	12
.L377:
	.sleb128	8
	.byte		"SignalId"
	.byte		0
	.4byte		.L867
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L378:
	.sleb128	8
	.byte		"SignalKind"
	.byte		0
	.4byte		.L869
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L379:
	.sleb128	8
	.byte		"SignalChannel"
	.byte		0
	.4byte		.L819
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L866:
.L858:
	.sleb128	7
	.4byte		.L843
	.uleb128	121
	.uleb128	1
	.4byte		.L872-.L2
	.uleb128	32
.L366:
	.sleb128	8
	.byte		"PncID"
	.byte		0
	.4byte		.L873
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	8
	.byte		"PncIdByteIndex"
	.byte		0
	.4byte		.L865
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L368:
	.sleb128	8
	.byte		"PncIdBitIndex"
	.byte		0
	.4byte		.L865
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L369:
	.sleb128	8
	.byte		"PncTimerMaxValue"
	.byte		0
	.4byte		.L864
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L370:
	.sleb128	8
	.byte		"PncTimerHandlerChannelID"
	.byte		0
	.4byte		.L819
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L371:
	.sleb128	8
	.byte		"PncChannelIDsPtr"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L372:
	.sleb128	8
	.byte		"PncChannelIDsNum"
	.byte		0
	.4byte		.L865
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L373:
	.sleb128	8
	.byte		"PncComRxSignalIndexesPtr"
	.byte		0
	.4byte		.L877
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L374:
	.sleb128	8
	.byte		"PncComRxSignalIndexesNum"
	.byte		0
	.4byte		.L864
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L375:
	.sleb128	8
	.byte		"PncUserIDsPtr"
	.byte		0
	.4byte		.L879
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L376:
	.sleb128	8
	.byte		"PncUserIDsNum"
	.byte		0
	.4byte		.L864
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L872:
.L805:
	.sleb128	7
	.4byte		.L843
	.uleb128	121
	.uleb128	1
	.4byte		.L882-.L2
	.uleb128	8
.L356:
	.sleb128	8
	.byte		"AllChannelIDsPtr"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L357:
	.sleb128	8
	.byte		"AllChannelIDsNum"
	.byte		0
	.4byte		.L864
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L358:
	.sleb128	8
	.byte		"DirectChannelIDsNum"
	.byte		0
	.4byte		.L864
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L882:
.L853:
	.sleb128	7
	.4byte		.L843
	.uleb128	121
	.uleb128	1
	.4byte		.L883-.L2
	.uleb128	48
.L342:
	.sleb128	8
	.byte		"UserIDsPtr"
	.byte		0
	.4byte		.L879
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L343:
	.sleb128	8
	.byte		"AllUserIDsNum"
	.byte		0
	.4byte		.L864
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L344:
	.sleb128	8
	.byte		"DirectUserIDsNum"
	.byte		0
	.4byte		.L864
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L345:
	.sleb128	8
	.byte		"PncIndexesPtr"
	.byte		0
	.4byte		.L879
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L346:
	.sleb128	8
	.byte		"PncStatesPtr"
	.byte		0
	.4byte		.L884
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L347:
	.sleb128	8
	.byte		"PncRequestsPtr"
	.byte		0
	.4byte		.L888
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L348:
	.sleb128	8
	.byte		"ChannelPncsNum"
	.byte		0
	.4byte		.L865
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L349:
	.sleb128	8
	.byte		"FullComTimerInitValue"
	.byte		0
	.4byte		.L864
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L350:
	.sleb128	8
	.byte		"NmVariant"
	.byte		0
	.4byte		.L890
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L351:
	.sleb128	8
	.byte		"TxSignalIDsPtr"
	.byte		0
	.4byte		.L893
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L352:
	.sleb128	8
	.byte		"TxSignalBufferPtr"
	.byte		0
	.4byte		.L895
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L353:
	.sleb128	8
	.byte		"TxSignalIDsNum"
	.byte		0
	.4byte		.L865
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L354:
	.sleb128	8
	.byte		"BusType"
	.byte		0
	.4byte		.L897
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L355:
	.sleb128	8
	.byte		"PncNmRequestEnabled"
	.byte		0
	.4byte		.L816
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L883:
.L826:
	.sleb128	7
	.4byte		.L843
	.uleb128	121
	.uleb128	1
	.4byte		.L900-.L2
	.uleb128	24
.L324:
	.sleb128	8
	.byte		"FullComTimer"
	.byte		0
	.4byte		.L808
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L325:
	.sleb128	8
	.byte		"ChannelSubState"
	.byte		0
	.4byte		.L901
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L326:
	.sleb128	8
	.byte		"HaltInNoComState"
	.byte		0
	.4byte		.L794
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L327:
	.sleb128	8
	.byte		"LastNmIndicatedMode"
	.byte		0
	.4byte		.L902
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L328:
	.sleb128	8
	.byte		"IsLastNmIndicatedModeUpdated"
	.byte		0
	.4byte		.L794
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L329:
	.sleb128	8
	.byte		"NmRestartIndication"
	.byte		0
	.4byte		.L794
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L330:
	.sleb128	8
	.byte		"NmNetworkStartIndication"
	.byte		0
	.4byte		.L794
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L331:
	.sleb128	8
	.byte		"LastBusSMIndicatedMode"
	.byte		0
	.4byte		.L785
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L332:
	.sleb128	8
	.byte		"EcuMWakeUpIndication"
	.byte		0
	.4byte		.L794
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L333:
	.sleb128	8
	.byte		"ActiveDiagnostic"
	.byte		0
	.4byte		.L794
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L334:
	.sleb128	8
	.byte		"CommunicationAllowed"
	.byte		0
	.4byte		.L794
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L335:
	.sleb128	8
	.byte		"InitialTransition"
	.byte		0
	.4byte		.L794
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L336:
	.sleb128	8
	.byte		"BusSMReturnValue"
	.byte		0
	.4byte		.L779
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L337:
	.sleb128	8
	.byte		"UserRequestsChanged"
	.byte		0
	.4byte		.L794
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L338:
	.sleb128	8
	.byte		"DirectUserRequestsChanged"
	.byte		0
	.4byte		.L794
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L339:
	.sleb128	8
	.byte		"ChannelRequestedMode"
	.byte		0
	.4byte		.L785
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L340:
	.sleb128	8
	.byte		"DirectUsersRequestedMode"
	.byte		0
	.4byte		.L785
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L341:
	.sleb128	8
	.byte		"PncsRequestedMode"
	.byte		0
	.4byte		.L785
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L900:
	.section	.debug_info,,n
.L903:
	.sleb128	9
	.4byte		.L843
	.uleb128	112
	.uleb128	1
	.4byte		.L904-.L2
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
.L904:
.L892:
	.sleb128	9
	.4byte		.L843
	.uleb128	103
	.uleb128	1
	.4byte		.L905-.L2
	.uleb128	4
	.sleb128	10
	.byte		"COMM_FULL"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"COMM_LIGHT"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"COMM_NONE"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"COMM_PASSIVE"
	.byte		0
	.sleb128	3
	.sleb128	0
.L905:
.L899:
	.sleb128	9
	.4byte		.L843
	.uleb128	93
	.uleb128	1
	.4byte		.L906-.L2
	.uleb128	4
	.sleb128	10
	.byte		"COMM_BUS_TYPE_CAN"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"COMM_BUS_TYPE_ETH"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"COMM_BUS_TYPE_FR"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"COMM_BUS_TYPE_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"COMM_BUS_TYPE_LIN"
	.byte		0
	.sleb128	4
	.sleb128	0
.L906:
.L871:
	.sleb128	9
	.4byte		.L843
	.uleb128	86
	.uleb128	1
	.4byte		.L907-.L2
	.uleb128	4
	.sleb128	10
	.byte		"COMM_SIGNAL_KIND_EIRA"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"COMM_SIGNAL_KIND_ERA"
	.byte		0
	.sleb128	1
	.sleb128	0
.L907:
.L887:
	.sleb128	9
	.4byte		.L843
	.uleb128	57
	.uleb128	1
	.4byte		.L908-.L2
	.uleb128	4
	.sleb128	10
	.byte		"PNC_REQUESTED"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"PNC_READY_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"PNC_PREPARE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"PNC_NO_COMMUNICATION"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"PNC_FULL_COMMUNICATION"
	.byte		0
	.sleb128	4
	.sleb128	0
.L908:
.L831:
	.sleb128	9
	.4byte		.L843
	.uleb128	50
	.uleb128	1
	.4byte		.L909-.L2
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
.L909:
	.section	.debug_info,,n
.L781:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L780:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L781
.L779:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L780
.L783:
	.sleb128	12
	.byte		"ComM_UserHandleType"
	.byte		0
	.4byte		.L780
.L785:
	.sleb128	12
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L780
.L794:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L781
.L804:
	.sleb128	12
	.byte		"ComM_UserType"
	.byte		0
	.4byte		.L805
	.section	.debug_info,,n
.L803:
	.sleb128	13
	.4byte		.L804
	.section	.debug_info,,n
.L802:
	.sleb128	14
	.4byte		.L803
.L801:
	.sleb128	13
	.4byte		.L802
.L809:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L808:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L809
.L816:
	.sleb128	13
	.4byte		.L794
.L820:
	.sleb128	12
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L780
.L819:
	.sleb128	13
	.4byte		.L820
.L825:
	.sleb128	12
	.byte		"ComM_ChannelStateType"
	.byte		0
	.4byte		.L826
.L824:
	.sleb128	14
	.4byte		.L825
.L823:
	.sleb128	13
	.4byte		.L824
.L830:
	.sleb128	12
	.byte		"ComM_InitStatusType"
	.byte		0
	.4byte		.L831
.L835:
	.sleb128	12
	.byte		"ComM_ConfigType"
	.byte		0
	.4byte		.L836
.L834:
	.sleb128	13
	.4byte		.L835
.L833:
	.sleb128	14
	.4byte		.L834
	.section	.debug_info,,n
.L838:
	.sleb128	15
	.4byte		.L839-.L2
	.4byte		.L825
	.section	.debug_info,,n
	.sleb128	16
	.sleb128	0
.L839:
.L841:
	.sleb128	15
	.4byte		.L842-.L2
	.4byte		.L785
	.sleb128	16
	.sleb128	0
.L842:
.L848:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L847:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L848
.L846:
	.sleb128	13
	.4byte		.L847
.L845:
	.sleb128	14
	.4byte		.L846
.L852:
	.sleb128	12
	.byte		"ComM_ChannelType"
	.byte		0
	.4byte		.L853
.L851:
	.sleb128	13
	.4byte		.L852
.L850:
	.sleb128	14
	.4byte		.L851
.L849:
	.sleb128	13
	.4byte		.L850
.L857:
	.sleb128	12
	.byte		"ComM_PncType"
	.byte		0
	.4byte		.L858
.L856:
	.sleb128	13
	.4byte		.L857
.L855:
	.sleb128	14
	.4byte		.L856
.L854:
	.sleb128	13
	.4byte		.L855
.L862:
	.sleb128	12
	.byte		"ComM_PncRxSignalType"
	.byte		0
	.4byte		.L863
.L861:
	.sleb128	13
	.4byte		.L862
.L860:
	.sleb128	14
	.4byte		.L861
.L859:
	.sleb128	13
	.4byte		.L860
.L864:
	.sleb128	13
	.4byte		.L808
.L865:
	.sleb128	13
	.4byte		.L780
.L868:
	.sleb128	12
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L808
.L867:
	.sleb128	13
	.4byte		.L868
.L870:
	.sleb128	12
	.byte		"ComM_PncComSignalKindType"
	.byte		0
	.4byte		.L871
.L869:
	.sleb128	13
	.4byte		.L870
.L874:
	.sleb128	12
	.byte		"PNCHandleType"
	.byte		0
	.4byte		.L780
.L873:
	.sleb128	13
	.4byte		.L874
.L876:
	.sleb128	14
	.4byte		.L819
.L875:
	.sleb128	13
	.4byte		.L876
.L878:
	.sleb128	14
	.4byte		.L865
.L877:
	.sleb128	13
	.4byte		.L878
.L881:
	.sleb128	13
	.4byte		.L783
.L880:
	.sleb128	14
	.4byte		.L881
.L879:
	.sleb128	13
	.4byte		.L880
.L886:
	.sleb128	12
	.byte		"ComM_PncModeType"
	.byte		0
	.4byte		.L887
.L885:
	.sleb128	14
	.4byte		.L886
.L884:
	.sleb128	13
	.4byte		.L885
.L889:
	.sleb128	14
	.4byte		.L785
.L888:
	.sleb128	13
	.4byte		.L889
.L891:
	.sleb128	12
	.byte		"ComM_NmVariantType"
	.byte		0
	.4byte		.L892
.L890:
	.sleb128	13
	.4byte		.L891
.L894:
	.sleb128	14
	.4byte		.L864
.L893:
	.sleb128	13
	.4byte		.L894
.L896:
	.sleb128	14
	.4byte		.L780
.L895:
	.sleb128	13
	.4byte		.L896
.L898:
	.sleb128	12
	.byte		"ComM_BusTypeType"
	.byte		0
	.4byte		.L899
.L897:
	.sleb128	13
	.4byte		.L898
.L901:
	.sleb128	12
	.byte		"ComM_StateType"
	.byte		0
	.4byte		.L780
.L902:
	.sleb128	12
	.byte		"ComM_NmCurrentModeType"
	.byte		0
	.4byte		.L903
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L784:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),5
	.d2locend
.L786:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),4
	.d2locend
.L788:
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo8),3
	.d2locend
.L795:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo4),7
	.d2locend
.L806:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo4),4
	.d2locend
.L810:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo4),5
	.d2locend
.L817:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),31
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),31
	.d2locend
.L821:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo12),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),0
	.d2locend
.L827:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo22),6
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_RequestComMode"
	.wrcm.nint32 "frameSize", 32
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_RequestComMode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_RequestComMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_RequestComMode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_RequestComMode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_RequestComMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_RequestComMode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_RequestComMode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
