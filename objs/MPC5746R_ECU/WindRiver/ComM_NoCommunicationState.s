#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_NoCommunicationState.c"
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
# LOCAL_INLINE FUNC(boolean, COMM_CODE) ComM_IsRequestPending(CONSTP2CONST(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) statePtr)
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_NoCommunicationState.c"
        .d2line         129,39
#$$ld
.L784:

#$$bf	ComM_IsRequestPending,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.d2_cfa_start __cie
ComM_IsRequestPending:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# statePtr=r3 statePtr=r3
	.d2prologue_end
# {
#     VAR(boolean, AUTOMATIC) requestPending;
# 
#     if( (COMM_IS_CHANNEL_REQUESTED(statePtr) == TRUE)
	.d2line		133
	lbz		r0,19(r3)		# statePtr=r3
	se_cmpi		r0,2
	bc		0,2,.L773	# ne
# #if(COMM_MODE_LIMITATION_ENABLED == STD_ON)
#         && (statePtr->ComMNoCom == FALSE) /* [DEV_ComM2000] [DEV_ComM2001] */
# #endif
# #if(COMM_WAKEUP_INHIBITION_ENABLED == STD_ON)
#         && (statePtr->ComMNoWakeup == FALSE)
# #endif
#         )
#     {
#         requestPending = TRUE;
	.d2line		142
.Llo2:
	diab.li		r3,1		# requestPending=r3
.Llo5:
	b		.L774
.L773:
#     }
#     else if( (statePtr->ActiveDiagnostic == TRUE) || (COMM_IS_PASSIVE_REQUEST_INDICATED(statePtr) == TRUE) ) /* [ComM182] */
	.d2line		144
.Llo3:
	lbz		r0,13(r3)		# statePtr=r3
	se_cmpi		r0,1
	bc		1,2,.L777	# eq
	lbz		r0,12(r3)		# statePtr=r3
	se_cmpi		r0,1
	bc		0,2,.L775	# ne
.L777:
#     {
#         requestPending = TRUE;
	.d2line		146
.Llo4:
	diab.li		r3,1		# requestPending=r3
.Llo6:
	b		.L774
.L775:
#     }
#     else
#     {
#         /* No valid request */
#         requestPending = FALSE;
	.d2line		151
.Llo7:
	diab.li		r3,0		# requestPending=r3
.L774:
#     }
# 
#     return requestPending;
	.d2line		154
.Llo8:
	rlwinm		r3,r3,0,24,31		# requestPending=r3 requestPending=r3
# }
	.d2line		155
	.d2epilogue_begin
.Llo9:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L785:
	.type		ComM_IsRequestPending,@function
	.size		ComM_IsRequestPending,.-ComM_IsRequestPending
# Number of nodes = 34

# Allocations for ComM_IsRequestPending
#	?a4		statePtr
#	?a5		requestPending
# FUNC(void, COMM_CODE) ComM_NoCommunicationState(CONST(NetworkHandleType, AUTOMATIC) channel)
	.align		2
	.section	.text_vle
        .d2line         51,23
#$$ld
.L800:

#$$bf	ComM_NoCommunicationState,interprocedural,rasave,nostackparams
	.globl		ComM_NoCommunicationState
	.d2_cfa_start __cie
ComM_NoCommunicationState:
.Llo10:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# channel=r4 channel=r3
	.d2prologue_end
# {
#     CONSTP2VAR(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) statePtr = &ComM_ChannelStates[channel];
	.d2line		53
	rlwinm		r0,r4,0,24,31		# channel=r4
	lis		r3,ComM_ChannelStates@ha
.Llo11:
	e_add16i		r3,r3,ComM_ChannelStates@l
	rlwinm		r5,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r5
	se_add		r0,r3
.Llo14:
	mr		r5,r0		# statePtr=r5 statePtr=r0
# 
#     if(ComM_IsRequestPending(statePtr) == TRUE)
	.d2line		55
	mr		r3,r5		# statePtr=r3 statePtr=r5
	bl		ComM_IsRequestPending
.Llo15:
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L758	# ne
#     {
#         /* [DEV_ComM694], [DEV_ComM875], [DEV_ComM876001], [DEV_ComM893], [DEV_ComM894] */
#         statePtr->ChannelSubState = COMM_NO_COM_REQUEST_PENDING;
	.d2line		58
.Llo12:
	diab.li		r0,1
	stb		r0,2(r5)		# statePtr=r5
	b		.L759
.L758:
#     }
#     else
#     {
#         /* [ComM897] */
#         statePtr->ChannelSubState = COMM_NO_COM_NO_PENDING_REQUEST;
	.d2line		63
	diab.li		r0,0
	stb		r0,2(r5)		# statePtr=r5
.L759:
#     }
# 
#     /* [ADD_ComM3008] If entering NO_COM state from any state other than Init, the channel
#      * state machine shall stay in NO_COM state for at least one MainFunction period */
#     if(statePtr->HaltInNoComState == TRUE)
	.d2line		68
	lbz		r0,3(r5)		# statePtr=r5
	se_cmpi		r0,1
	bc		0,2,.L760	# ne
#     {
#         statePtr->HaltInNoComState = FALSE;
	.d2line		70
	diab.li		r0,0
	stb		r0,3(r5)		# statePtr=r5
	b		.L757
.L760:
#     }
#     else
#     {
#         /* [DEV_ComM895] Evaluate CommunicationAllowed flag */
#         if((statePtr->ChannelSubState == COMM_NO_COM_REQUEST_PENDING) && (statePtr->CommunicationAllowed == TRUE))
	.d2line		75
	lbz		r0,2(r5)		# statePtr=r5
	se_cmpi		r0,1
	bc		0,2,.L757	# ne
	lbz		r0,14(r5)		# statePtr=r5
	se_cmpi		r0,1
	bc		0,2,.L757	# ne
#         {
#             ComM_EnterNetworkRequestedState(channel);
	.d2line		77
.Llo16:
	rlwinm		r3,r4,0,24,31		# channel=r4
	bl		ComM_EnterNetworkRequestedState
.L757:
#         }
#     }
# }
	.d2line		80
	.d2epilogue_begin
.Llo13:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L801:
	.type		ComM_NoCommunicationState,@function
	.size		ComM_NoCommunicationState,.-ComM_NoCommunicationState
# Number of nodes = 62

# Allocations for ComM_NoCommunicationState
#	?a4		channel
#	?a5		$$237
#	?a6		statePtr
# FUNC(void, COMM_CODE) ComM_EnterNoCommunicationState(CONST(NetworkHandleType, AUTOMATIC) channel)
	.align		2
	.section	.text_vle
        .d2line         91,23
#$$ld
.L813:

#$$bf	ComM_EnterNoCommunicationState,interprocedural,rasave,nostackparams
	.globl		ComM_EnterNoCommunicationState
	.d2_cfa_start __cie
ComM_EnterNoCommunicationState:
.Llo17:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# channel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# channel=r0 channel=r3
	.d2prologue_end
# {
#     CONSTP2VAR(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) statePtr = &ComM_ChannelStates[channel];
	.d2line		93
	rlwinm		r4,r0,0,24,31		# channel=r0
	lis		r3,ComM_ChannelStates@ha		# statePtr=r3
.Llo18:
	e_add16i		r3,r3,ComM_ChannelStates@l		# statePtr=r3 statePtr=r3
	rlwinm		r5,r4,5,0,26
	se_slwi		r4,3
	subf		r4,r4,r5
	se_add		r3,r4		# statePtr=r3 statePtr=r3
	mr		r3,r3		# statePtr=r3 statePtr=r3
# 
#     /* This condition depends on the previous sub-state so it shall be evaluated
#      * before setting the sub-state to NO_COM_NO_PENDING_REQUEST */
#     if(statePtr->ChannelSubState != COMM_NO_COM_NO_PENDING_REQUEST)
	.d2line		97
	lbz		r4,2(r3)		# statePtr=r3
	se_cmpi		r4,0
	bc		1,2,.L768	# eq
#     {
#         statePtr->HaltInNoComState = TRUE;
	.d2line		99
.Llo19:
	diab.li		r4,1
	stb		r4,3(r3)		# statePtr=r3
	b		.L769
.L768:
#     }
#     else
#     {
#         statePtr->HaltInNoComState = FALSE;
	.d2line		103
	diab.li		r4,0
	stb		r4,3(r3)		# statePtr=r3
.L769:
#     }
# 
#     statePtr->ChannelSubState = COMM_NO_COM_NO_PENDING_REQUEST;
	.d2line		106
	diab.li		r4,0
	stb		r4,2(r3)		# statePtr=r3
# 
# #if(COMM_NM_VARIANT_FULL == STD_ON)
#     /* Check if Channel NM variant is "FULL" */
#     if(ComM_ConfigPtr->ChannelsPtr[channel].NmVariant == COMM_FULL)
#     {
#         statePtr->CallNmNetworkRelease = TRUE;
#     }
# #endif
# 
#     ComM_NoCommunicationState(channel);
	.d2line		116
	mr		r3,r0		# channel=r3 channel=r0
.Llo21:
	bl		ComM_NoCommunicationState
# }
	.d2line		117
	.d2epilogue_begin
.Llo20:
	lwz		r0,20(r1)		# channel=r0
	mtspr		lr,r0		# channel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L814:
	.type		ComM_EnterNoCommunicationState,@function
	.size		ComM_EnterNoCommunicationState,.-ComM_EnterNoCommunicationState
# Number of nodes = 40

# Allocations for ComM_EnterNoCommunicationState
#	?a4		channel
#	?a5		$$238
#	?a6		statePtr

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L823:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L820:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Private.h"
.L786:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_NoCommunicationState.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_NoCommunicationState.c"
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
.L789:
	.sleb128	2
	.4byte		.L783-.L2
	.byte		"ComM_IsRequestPending"
	.byte		0
	.4byte		.L786
	.uleb128	129
	.uleb128	39
	.4byte		.L787
	.byte		0x1
	.4byte		.L784
	.4byte		.L785
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L786
	.uleb128	129
	.uleb128	39
	.byte		"statePtr"
	.byte		0
	.4byte		.L790
	.4byte		.L795
	.section	.debug_info,,n
.L796:
	.sleb128	4
	.4byte		.L786
	.uleb128	131
	.uleb128	29
	.byte		"requestPending"
	.byte		0
	.4byte		.L787
	.4byte		.L797
	.section	.debug_info,,n
	.sleb128	0
.L783:
	.section	.debug_info,,n
.L802:
	.sleb128	5
	.4byte		.L799-.L2
	.byte		"ComM_NoCommunicationState"
	.byte		0
	.4byte		.L786
	.uleb128	51
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L800
	.4byte		.L801
	.sleb128	3
	.4byte		.L786
	.uleb128	51
	.uleb128	23
	.byte		"channel"
	.byte		0
	.4byte		.L803
	.4byte		.L806
.L807:
	.sleb128	4
	.4byte		.L786
	.uleb128	53
	.uleb128	66
	.byte		"statePtr"
	.byte		0
	.4byte		.L808
	.4byte		.L810
	.section	.debug_info,,n
	.sleb128	0
.L799:
	.section	.debug_info,,n
.L815:
	.sleb128	5
	.4byte		.L812-.L2
	.byte		"ComM_EnterNoCommunicationState"
	.byte		0
	.4byte		.L786
	.uleb128	91
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L813
	.4byte		.L814
	.sleb128	3
	.4byte		.L786
	.uleb128	91
	.uleb128	23
	.byte		"channel"
	.byte		0
	.4byte		.L803
	.4byte		.L816
.L817:
	.sleb128	4
	.4byte		.L786
	.uleb128	93
	.uleb128	66
	.byte		"statePtr"
	.byte		0
	.4byte		.L808
	.4byte		.L818
	.section	.debug_info,,n
	.sleb128	0
.L812:
	.section	.debug_info,,n
.L819:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L820
	.uleb128	388
	.uleb128	45
	.byte		"ComM_ChannelStates"
	.byte		0
	.4byte		.L821
	.0byte		.L819
	.section	.debug_info,,n
.L794:
	.sleb128	7
	.4byte		.L823
	.uleb128	121
	.uleb128	1
	.4byte		.L824-.L2
	.uleb128	24
	.section	.debug_info,,n
.L324:
	.sleb128	8
	.byte		"FullComTimer"
	.byte		0
	.4byte		.L825
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L325:
	.sleb128	8
	.byte		"ChannelSubState"
	.byte		0
	.4byte		.L827
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L326:
	.sleb128	8
	.byte		"HaltInNoComState"
	.byte		0
	.4byte		.L787
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L327:
	.sleb128	8
	.byte		"LastNmIndicatedMode"
	.byte		0
	.4byte		.L828
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L328:
	.sleb128	8
	.byte		"IsLastNmIndicatedModeUpdated"
	.byte		0
	.4byte		.L787
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L329:
	.sleb128	8
	.byte		"NmRestartIndication"
	.byte		0
	.4byte		.L787
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L330:
	.sleb128	8
	.byte		"NmNetworkStartIndication"
	.byte		0
	.4byte		.L787
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L331:
	.sleb128	8
	.byte		"LastBusSMIndicatedMode"
	.byte		0
	.4byte		.L830
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L332:
	.sleb128	8
	.byte		"EcuMWakeUpIndication"
	.byte		0
	.4byte		.L787
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L333:
	.sleb128	8
	.byte		"ActiveDiagnostic"
	.byte		0
	.4byte		.L787
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L334:
	.sleb128	8
	.byte		"CommunicationAllowed"
	.byte		0
	.4byte		.L787
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L335:
	.sleb128	8
	.byte		"InitialTransition"
	.byte		0
	.4byte		.L787
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L336:
	.sleb128	8
	.byte		"BusSMReturnValue"
	.byte		0
	.4byte		.L831
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L337:
	.sleb128	8
	.byte		"UserRequestsChanged"
	.byte		0
	.4byte		.L787
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L338:
	.sleb128	8
	.byte		"DirectUserRequestsChanged"
	.byte		0
	.4byte		.L787
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L339:
	.sleb128	8
	.byte		"ChannelRequestedMode"
	.byte		0
	.4byte		.L830
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L340:
	.sleb128	8
	.byte		"DirectUsersRequestedMode"
	.byte		0
	.4byte		.L830
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L341:
	.sleb128	8
	.byte		"PncsRequestedMode"
	.byte		0
	.4byte		.L830
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L824:
	.section	.debug_info,,n
.L829:
	.sleb128	9
	.4byte		.L823
	.uleb128	112
	.uleb128	1
	.4byte		.L832-.L2
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
.L832:
	.section	.debug_info,,n
.L788:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L787:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L788
.L793:
	.sleb128	12
	.byte		"ComM_ChannelStateType"
	.byte		0
	.4byte		.L794
	.section	.debug_info,,n
.L792:
	.sleb128	13
	.4byte		.L793
	.section	.debug_info,,n
.L791:
	.sleb128	14
	.4byte		.L792
.L790:
	.sleb128	13
	.4byte		.L791
.L805:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L788
.L804:
	.sleb128	12
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L805
.L803:
	.sleb128	13
	.4byte		.L804
.L809:
	.sleb128	14
	.4byte		.L793
.L808:
	.sleb128	13
	.4byte		.L809
	.section	.debug_info,,n
.L821:
	.sleb128	15
	.4byte		.L822-.L2
	.4byte		.L793
	.section	.debug_info,,n
	.sleb128	16
	.sleb128	0
.L822:
.L826:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L825:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L826
.L827:
	.sleb128	12
	.byte		"ComM_StateType"
	.byte		0
	.4byte		.L805
.L828:
	.sleb128	12
	.byte		"ComM_NmCurrentModeType"
	.byte		0
	.4byte		.L829
.L830:
	.sleb128	12
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L805
.L831:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L805
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L795:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L797:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo3),3
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),3
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locend
.L806:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),4
	.d2locend
.L810:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),0
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo16),5
	.d2locend
.L816:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),0
	.d2locend
.L818:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo21),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_EnterNoCommunicationState"
	.wrcm.nstrlist "calls", "ComM_NoCommunicationState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "ComM_NoCommunicationState"
	.wrcm.nstrlist "calls", "ComM_EnterNetworkRequestedState","ComM_IsRequestPending"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "ComM_IsRequestPending"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_NoCommunicationState.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_NoCommunicationState.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_NoCommunicationState.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_NoCommunicationState.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_NoCommunicationState.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_NoCommunicationState.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_NoCommunicationState.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
