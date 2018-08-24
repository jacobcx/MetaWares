#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_FullCommnNetworkReqdState.c"
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
# LOCAL_INLINE FUNC(boolean, COMM_CODE) ComM_StepFullComTimer(CONST(NetworkHandleType, AUTOMATIC) channel)
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_FullCommnNetworkReqdState.c"
        .d2line         169,39
#$$ld
.L790:

#$$bf	ComM_StepFullComTimer,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.d2_cfa_start __cie
ComM_StepFullComTimer:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# channel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# channel=r0 channel=r3
	.d2prologue_end
# {
#     CONST(ComM_NmVariantType, AUTOMATIC) channelNmVariant = ComM_ConfigPtr->ChannelsPtr[channel].NmVariant;
#     VAR(boolean, AUTOMATIC) timerExpired = FALSE;
	.d2line		172
.Llo2:
	diab.li		r3,0		# timerExpired=r3
	.d2line		171
.Llo3:
	rlwinm		r5,r0,0,24,31		# channel=r0
	lis		r4,ComM_ConfigPtr@ha		# channelNmVariant=r4
.Llo9:
	lwz		r4,ComM_ConfigPtr@l(r4)		# channelNmVariant=r4 channelNmVariant=r4
	lwz		r4,12(r4)		# channelNmVariant=r4 channelNmVariant=r4
	rlwinm		r6,r5,6,0,25
	se_slwi		r5,4
	subf		r5,r5,r6
	se_add		r4,r5		# channelNmVariant=r4 channelNmVariant=r4
	lwz		r4,24(r4)		# channelNmVariant=r4 channelNmVariant=r4
	mr		r4,r4		# channelNmVariant=r4 channelNmVariant=r4
# 
#     if( (channelNmVariant == COMM_LIGHT) || (channelNmVariant == COMM_NONE) )
	.d2line		174
	se_cmpi		r4,1		# channelNmVariant=r4
	bc		1,2,.L784	# eq
	se_cmpi		r4,2		# channelNmVariant=r4
	bc		0,2,.L781	# ne
.L784:
	.section	.text_vle
.L807:
#     {
#         CONSTP2VAR(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) statePtr = &ComM_ChannelStates[channel];
	.d2line		176
.Llo10:
	rlwinm		r0,r0,0,24,31		# channel=r0 channel=r0
	lis		r4,ComM_ChannelStates@ha		# channelNmVariant=r4
.Llo11:
	e_add16i		r4,r4,ComM_ChannelStates@l		# channelNmVariant=r4 channelNmVariant=r4
	rlwinm		r5,r0,5,0,26		# channel=r0
	se_slwi		r0,3		# channel=r0 channel=r0
	subf		r0,r0,r5		# channel=r0 channel=r0
	se_add		r0,r4		# channel=r0 channel=r0 channelNmVariant=r4
.Llo4:
	mr		r4,r0		# statePtr=r4 statePtr=r0
#         if(statePtr->FullComTimer == 0U)
	.d2line		177
.Llo12:
	lhz		r0,0(r4)		# channel=r0 statePtr=r4
.Llo5:
	e_cmphl16i	r0,0		# channel=r0
	bc		0,2,.L782	# ne
#         {
#             timerExpired = TRUE;
	.d2line		179
.Llo6:
	diab.li		r3,1		# timerExpired=r3
	b		.L781
.L782:
#         }
#         else
#         {
#             statePtr->FullComTimer--;
	.d2line		183
	lhz		r0,0(r4)		# channel=r0 statePtr=r4
.Llo7:
	diab.li		r5,65535
	se_add		r0,r5		# channel=r0 channel=r0
	sth		r0,0(r4)		# statePtr=r4 channel=r0
	.section	.text_vle
.L808:
.L781:
#         }
#     }
# 
#     return timerExpired;
	.d2line		187
.Llo8:
	rlwinm		r3,r3,0,24,31		# timerExpired=r3 timerExpired=r3
# }
	.d2line		188
	.d2epilogue_begin
.Llo13:
	lwz		r0,20(r1)		# channel=r0
	mtspr		lr,r0		# channel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L791:
	.type		ComM_StepFullComTimer,@function
	.size		ComM_StepFullComTimer,.-ComM_StepFullComTimer
# Number of nodes = 46

# Allocations for ComM_StepFullComTimer
#	?a4		channel
#	?a5		$$238
#	?a6		$$237
#	?a7		channelNmVariant
#	?a8		timerExpired
#	?a9		statePtr
# FUNC(void, COMM_CODE) ComM_FullComNetworkRequestedState(CONST(NetworkHandleType, AUTOMATIC) channel)
	.align		2
	.section	.text_vle
        .d2line         55,23
#$$ld
.L819:

#$$bf	ComM_FullComNetworkRequestedState,interprocedural,rasave,nostackparams
	.globl		ComM_FullComNetworkRequestedState
	.d2_cfa_start __cie
ComM_FullComNetworkRequestedState:
.Llo14:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# channel=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# channel=r31 channel=r3
	.d2prologue_end
# {
#     CONSTP2VAR(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) statePtr = &ComM_ChannelStates[channel];
	.d2line		57
	rlwinm		r3,r3,0,24,31		# channel=r3 channel=r3
	lis		r7,ComM_ChannelStates@ha		# statePtr=r7
.Llo22:
	e_add16i		r7,r7,ComM_ChannelStates@l		# statePtr=r7 statePtr=r7
	rlwinm		r0,r3,5,0,26		# channel=r0 channel=r3
	se_slwi		r3,3		# channel=r3 channel=r3
.Llo15:
	subf		r3,r3,r0		# channel=r3 channel=r3 channel=r0
.Llo16:
	se_add		r3,r7		# channel=r3 channel=r3 statePtr=r7
	mr		r7,r3		# statePtr=r7 statePtr=r3
# 
# #if(COMM_NM_VARIANT_LIGHT == STD_ON || COMM_NM_VARIANT_NONE == STD_ON)
#     CONST(boolean, AUTOMATIC) fullComTimerExpired = ComM_StepFullComTimer( channel );
	.d2line		60
	mr		r3,r31		# channel=r3 channel=r31
	bl		ComM_StepFullComTimer
.Llo17:
	mr		r0,r3		# fullComTimerExpired=r0 fullComTimerExpired=r3
# #endif
# 
#     VAR(ComM_NmCurrentModeType, AUTOMATIC) nmEvent;
#     COMM_GET_NM_EVENT(statePtr, nmEvent);
	.d2line		64
	lbz		r3,8(r7)		# channel=r3 statePtr=r7
.Llo18:
	se_cmpi		r3,1		# channel=r3
.Llo26:
	bc		0,2,.L759	# ne
.Llo19:
	diab.li		r3,0		# channel=r3
.Llo20:
	stb		r3,8(r7)		# statePtr=r7 channel=r3
	lwz		r3,4(r7)		# channel=r3 statePtr=r7
.Llo28:
	mr		r3,r3		# nmEvent=r3 nmEvent=r3
	b		.L760
.L759:
.Llo29:
	diab.li		r3,0		# nmEvent=r3
.L760:
# 
#     /* Priority 1. NO_COM */
#     if(nmEvent == COMM_NM_MODE_BUS_SLEEP) /* [ComM637] */
	.d2line		67
.Llo30:
	se_cmpi		r3,3		# nmEvent=r3
	bc		0,2,.L761	# ne
#     {
#         ComM_EnterNoCommunicationState(channel);
	.d2line		69
.Llo23:
	rlwinm		r3,r31,0,24,31		# nmEvent=r3 channel=r31
	bl		ComM_EnterNoCommunicationState
	b		.L757
.L761:
#     }
#     /* Priority 2. READY_SLEEP */
#     else if(statePtr->ActiveDiagnostic == FALSE)
	.d2line		72
.Llo24:
	lbz		r3,13(r7)		# nmEvent=r3 statePtr=r7
.Llo31:
	se_cmpi		r3,0		# nmEvent=r3
	bc		0,2,.L757	# ne
#     {
# #if(COMM_MODE_LIMITATION_ENABLED == STD_ON)
#         if(statePtr->ComMNoCom == TRUE)
#         {
#             ComM_EnterReadySleepState(channel);
#         }
#         else
# #endif
#         {
#             if(COMM_IS_CHANNEL_REQUESTED(statePtr) == FALSE)
	.d2line		82
.Llo32:
	lbz		r3,19(r7)		# nmEvent=r3 statePtr=r7
.Llo33:
	se_cmpi		r3,2		# nmEvent=r3
	bc		1,2,.L757	# eq
	.section	.text_vle
.L832:
#             {
# #if(COMM_NM_VARIANT_LIGHT == STD_ON || COMM_NM_VARIANT_NONE == STD_ON)
#                 CONST(ComM_NmVariantType, AUTOMATIC) channelNmVariant = ComM_ConfigPtr->ChannelsPtr[channel].NmVariant;
	.d2line		85
.Llo25:
	rlwinm		r4,r31,0,24,31		# channel=r31
	lis		r3,ComM_ConfigPtr@ha		# nmEvent=r3
.Llo34:
	lwz		r3,ComM_ConfigPtr@l(r3)		# nmEvent=r3 nmEvent=r3
	lwz		r5,12(r3)		# nmEvent=r3
	rlwinm		r3,r4,6,0,25		# nmEvent=r3
	se_slwi		r4,4
	subf		r4,r4,r3		# nmEvent=r3
	se_add		r5,r4
	lwz		r3,24(r5)		# nmEvent=r3
.Llo35:
	mr		r3,r3		# channelNmVariant=r3 channelNmVariant=r3
#                 if( (channelNmVariant == COMM_LIGHT) || (channelNmVariant == COMM_NONE) )
	.d2line		86
	se_cmpi		r3,1		# channelNmVariant=r3
	bc		1,2,.L769	# eq
	se_cmpi		r3,2		# channelNmVariant=r3
	bc		0,2,.L765	# ne
.L769:
#                 {
#                     if(fullComTimerExpired == TRUE)
	.d2line		88
	rlwinm		r0,r0,0,24,31		# fullComTimerExpired=r0 fullComTimerExpired=r0
	se_cmpi		r0,1		# fullComTimerExpired=r0
	bc		0,2,.L757	# ne
#                     {
#                         ComM_EnterReadySleepState(channel);
	.d2line		90
.Llo27:
	rlwinm		r3,r31,0,24,31		# channelNmVariant=r3 channel=r31
	bl		ComM_EnterReadySleepState
	b		.L757
.L765:
#                     }
#                 }
#                 else
# #endif
#                 {
#                     ComM_EnterReadySleepState(channel);
	.d2line		96
	rlwinm		r3,r31,0,24,31		# channelNmVariant=r3 channel=r31
	bl		ComM_EnterReadySleepState
	.section	.text_vle
.L833:
.L757:
#                 }
#             }
#         }
#     }
#     else
#     {
#         /* Stay in FULL_COM_NETWORK_REQUESTED sub-state */
#     }
# }
	.d2line		105
	.d2epilogue_begin
.Llo21:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# channel=r0
	mtspr		lr,r0		# channel=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L820:
	.type		ComM_FullComNetworkRequestedState,@function
	.size		ComM_FullComNetworkRequestedState,.-ComM_FullComNetworkRequestedState
# Number of nodes = 98

# Allocations for ComM_FullComNetworkRequestedState
#	?a4		channel
#	?a5		$$240
#	?a6		$$239
#	?a7		statePtr
#	?a8		fullComTimerExpired
#	?a9		nmEvent
#	?a10		channelNmVariant
# FUNC(void, COMM_CODE) ComM_EnterNetworkRequestedState(CONST(NetworkHandleType, AUTOMATIC) channel)
	.align		2
	.section	.text_vle
        .d2line         117,23
#$$ld
.L840:

#$$bf	ComM_EnterNetworkRequestedState,interprocedural,rasave,nostackparams
	.globl		ComM_EnterNetworkRequestedState
	.d2_cfa_start __cie
ComM_EnterNetworkRequestedState:
.Llo36:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# channel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# channel=r0 channel=r3
	.d2prologue_end
# {
#     CONSTP2VAR(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) statePtr = &ComM_ChannelStates[channel];
	.d2line		119
	rlwinm		r5,r0,0,24,31		# channel=r0
	lis		r3,ComM_ChannelStates@ha		# statePtr=r3
.Llo37:
	e_add16i		r3,r3,ComM_ChannelStates@l		# statePtr=r3 statePtr=r3
	rlwinm		r4,r5,5,0,26
	se_slwi		r5,3
	subf		r5,r5,r4
	se_add		r3,r5		# statePtr=r3 statePtr=r3
	mr		r3,r3		# statePtr=r3 statePtr=r3
# 
#     /* Clear Nm Event, because an event might be stuck due to concurrency
#      * The first new Nm Event will come only after ComM called PassiveStartup or NetworkRequest */
#     COMM_CLEAR_NM_EVENT(statePtr);
	.d2line		123
	diab.li		r4,0
	stb		r4,8(r3)		# statePtr=r3
# 
#     /* Setting FULL_COM_NETWORK_REQUESTED sub-state must be before clearing the Passive Requests
#      * to ensure that no Passive Request is accepted from now on */
#     statePtr->ChannelSubState = COMM_FULL_COM_NETWORK_REQUESTED;
	.d2line		127
	diab.li		r4,2
	stb		r4,2(r3)		# statePtr=r3
# 
#     /* EcuM_WakeUp_Indication or Nm_RestartIndication or Nm_NetworkStartIndication was requested */
#     if(COMM_IS_PASSIVE_REQUEST_INDICATED(statePtr) == TRUE)
	.d2line		130
	lbz		r4,12(r3)		# statePtr=r3
	se_cmpi		r4,1
	bc		0,2,.L778	# ne
#     {
# #if(COMM_NM_VARIANT_FULL == STD_ON || COMM_NM_VARIANT_PASSIVE == STD_ON)
#         CONST(ComM_NmVariantType, AUTOMATIC) channelNmVariant = ComM_ConfigPtr->ChannelsPtr[channel].NmVariant;
#         /* [ComM602] [ComM665] [ComM902] [ComM903] */
#         if( (channelNmVariant == COMM_FULL) || (channelNmVariant == COMM_PASSIVE) )
#         {
#             /* Store the request and execute it at the end of the MainFunction() */
#             statePtr->CallPassiveStartup = TRUE;
#         }
# #endif
#         /* Clean old requests */
#         statePtr->EcuMWakeUpIndication = FALSE;
	.d2line		142
.Llo38:
	diab.li		r4,0
	stb		r4,12(r3)		# statePtr=r3
#         statePtr->NmRestartIndication = FALSE;
	.d2line		143
	stb		r4,9(r3)		# statePtr=r3
#         statePtr->NmNetworkStartIndication = FALSE;
	.d2line		144
	stb		r4,10(r3)		# statePtr=r3
.L778:
#     }
# 
# #if(COMM_NM_VARIANT_LIGHT == STD_ON || COMM_NM_VARIANT_NONE == STD_ON)
#     /* Initialize FullCom timer */
#     statePtr->FullComTimer = ComM_ConfigPtr->ChannelsPtr[channel].FullComTimerInitValue;
	.d2line		149
	rlwinm		r5,r0,0,24,31		# channel=r0
	lis		r4,ComM_ConfigPtr@ha
	lwz		r4,ComM_ConfigPtr@l(r4)
	lwz		r6,12(r4)
	rlwinm		r4,r5,6,0,25
	se_slwi		r5,4
	subf		r5,r5,r4
	se_add		r6,r5
	lhz		r4,22(r6)
	sth		r4,0(r3)		# statePtr=r3
# #endif
# 
#     ComM_FullComNetworkRequestedState(channel);
	.d2line		152
	mr		r3,r0		# channel=r3 channel=r0
.Llo40:
	bl		ComM_FullComNetworkRequestedState
# }
	.d2line		153
	.d2epilogue_begin
.Llo39:
	lwz		r0,20(r1)		# channel=r0
	mtspr		lr,r0		# channel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L841:
	.type		ComM_EnterNetworkRequestedState,@function
	.size		ComM_EnterNetworkRequestedState,.-ComM_EnterNetworkRequestedState
# Number of nodes = 66

# Allocations for ComM_EnterNetworkRequestedState
#	?a4		channel
#	?a5		$$242
#	?a6		$$241
#	?a7		statePtr

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L855:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L847:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Private.h"
.L792:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_FullCommnNetworkReqdState.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_FullCommnNetworkReqdState.c"
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
.L795:
	.sleb128	2
	.4byte		.L789-.L2
	.byte		"ComM_StepFullComTimer"
	.byte		0
	.4byte		.L792
	.uleb128	169
	.uleb128	39
	.4byte		.L793
	.byte		0x1
	.4byte		.L790
	.4byte		.L791
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L792
	.uleb128	169
	.uleb128	39
	.byte		"channel"
	.byte		0
	.4byte		.L796
	.4byte		.L799
	.section	.debug_info,,n
.L800:
	.sleb128	4
	.4byte		.L792
	.uleb128	171
	.uleb128	42
	.byte		"channelNmVariant"
	.byte		0
	.4byte		.L801
	.4byte		.L804
.L805:
	.sleb128	4
	.4byte		.L792
	.uleb128	172
	.uleb128	29
	.byte		"timerExpired"
	.byte		0
	.4byte		.L793
	.4byte		.L806
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L810
	.4byte		.L807
	.4byte		.L808
.L811:
	.sleb128	4
	.4byte		.L792
	.uleb128	176
	.uleb128	70
	.byte		"statePtr"
	.byte		0
	.4byte		.L812
	.4byte		.L816
	.section	.debug_info,,n
	.sleb128	0
.L810:
	.section	.debug_info,,n
	.sleb128	0
.L789:
	.section	.debug_info,,n
.L821:
	.sleb128	6
	.4byte		.L818-.L2
	.byte		"ComM_FullComNetworkRequestedState"
	.byte		0
	.4byte		.L792
	.uleb128	55
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L819
	.4byte		.L820
	.sleb128	3
	.4byte		.L792
	.uleb128	55
	.uleb128	23
	.byte		"channel"
	.byte		0
	.4byte		.L796
	.4byte		.L822
.L823:
	.sleb128	4
	.4byte		.L792
	.uleb128	57
	.uleb128	66
	.byte		"statePtr"
	.byte		0
	.4byte		.L812
	.4byte		.L824
.L825:
	.sleb128	4
	.4byte		.L792
	.uleb128	60
	.uleb128	31
	.byte		"fullComTimerExpired"
	.byte		0
	.4byte		.L826
	.4byte		.L827
.L828:
	.sleb128	4
	.4byte		.L792
	.uleb128	63
	.uleb128	44
	.byte		"nmEvent"
	.byte		0
	.4byte		.L829
	.4byte		.L831
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L835
	.4byte		.L832
	.4byte		.L833
.L836:
	.sleb128	4
	.4byte		.L792
	.uleb128	85
	.uleb128	54
	.byte		"channelNmVariant"
	.byte		0
	.4byte		.L801
	.4byte		.L837
	.section	.debug_info,,n
	.sleb128	0
.L835:
	.section	.debug_info,,n
	.sleb128	0
.L818:
	.section	.debug_info,,n
.L842:
	.sleb128	6
	.4byte		.L839-.L2
	.byte		"ComM_EnterNetworkRequestedState"
	.byte		0
	.4byte		.L792
	.uleb128	117
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L840
	.4byte		.L841
	.sleb128	3
	.4byte		.L792
	.uleb128	117
	.uleb128	23
	.byte		"channel"
	.byte		0
	.4byte		.L796
	.4byte		.L843
.L844:
	.sleb128	4
	.4byte		.L792
	.uleb128	119
	.uleb128	66
	.byte		"statePtr"
	.byte		0
	.4byte		.L812
	.4byte		.L845
	.section	.debug_info,,n
	.sleb128	0
.L839:
	.section	.debug_info,,n
.L846:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L847
	.uleb128	377
	.uleb128	55
	.byte		"ComM_ConfigPtr"
	.byte		0
	.4byte		.L848
	.0byte		.L846
.L852:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L847
	.uleb128	388
	.uleb128	45
	.byte		"ComM_ChannelStates"
	.byte		0
	.4byte		.L853
	.section	.debug_info,,n
.L851:
	.sleb128	8
	.4byte		.L855
	.uleb128	121
	.uleb128	1
	.4byte		.L856-.L2
	.uleb128	32
	.section	.debug_info,,n
.L380:
	.sleb128	9
	.byte		"PBtoPCHashValuePtr"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L381:
	.sleb128	9
	.byte		"PBtoLTHashValuePtr"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L382:
	.sleb128	9
	.byte		"UsersPtr"
	.byte		0
	.4byte		.L861
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L383:
	.sleb128	9
	.byte		"ChannelsPtr"
	.byte		0
	.4byte		.L866
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L384:
	.sleb128	9
	.byte		"PncsPtr"
	.byte		0
	.4byte		.L871
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	9
	.byte		"PncRxSignalsPtr"
	.byte		0
	.4byte		.L876
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	9
	.byte		"PncsNum"
	.byte		0
	.4byte		.L881
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	9
	.byte		"PncRxSignalsNum"
	.byte		0
	.4byte		.L881
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L388:
	.sleb128	9
	.byte		"UsersNum"
	.byte		0
	.4byte		.L884
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L389:
	.sleb128	9
	.byte		"PncEnabled"
	.byte		0
	.4byte		.L826
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
	.sleb128	0
.L856:
.L880:
	.sleb128	8
	.4byte		.L855
	.uleb128	121
	.uleb128	1
	.4byte		.L885-.L2
	.uleb128	12
.L377:
	.sleb128	9
	.byte		"SignalId"
	.byte		0
	.4byte		.L886
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L378:
	.sleb128	9
	.byte		"SignalKind"
	.byte		0
	.4byte		.L888
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L379:
	.sleb128	9
	.byte		"SignalChannel"
	.byte		0
	.4byte		.L796
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L885:
.L875:
	.sleb128	8
	.4byte		.L855
	.uleb128	121
	.uleb128	1
	.4byte		.L891-.L2
	.uleb128	32
.L366:
	.sleb128	9
	.byte		"PncID"
	.byte		0
	.4byte		.L892
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	9
	.byte		"PncIdByteIndex"
	.byte		0
	.4byte		.L884
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L368:
	.sleb128	9
	.byte		"PncIdBitIndex"
	.byte		0
	.4byte		.L884
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L369:
	.sleb128	9
	.byte		"PncTimerMaxValue"
	.byte		0
	.4byte		.L881
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L370:
	.sleb128	9
	.byte		"PncTimerHandlerChannelID"
	.byte		0
	.4byte		.L796
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L371:
	.sleb128	9
	.byte		"PncChannelIDsPtr"
	.byte		0
	.4byte		.L894
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L372:
	.sleb128	9
	.byte		"PncChannelIDsNum"
	.byte		0
	.4byte		.L884
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L373:
	.sleb128	9
	.byte		"PncComRxSignalIndexesPtr"
	.byte		0
	.4byte		.L896
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L374:
	.sleb128	9
	.byte		"PncComRxSignalIndexesNum"
	.byte		0
	.4byte		.L881
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L375:
	.sleb128	9
	.byte		"PncUserIDsPtr"
	.byte		0
	.4byte		.L898
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L376:
	.sleb128	9
	.byte		"PncUserIDsNum"
	.byte		0
	.4byte		.L881
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L891:
.L865:
	.sleb128	8
	.4byte		.L855
	.uleb128	121
	.uleb128	1
	.4byte		.L902-.L2
	.uleb128	8
.L356:
	.sleb128	9
	.byte		"AllChannelIDsPtr"
	.byte		0
	.4byte		.L894
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L357:
	.sleb128	9
	.byte		"AllChannelIDsNum"
	.byte		0
	.4byte		.L881
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L358:
	.sleb128	9
	.byte		"DirectChannelIDsNum"
	.byte		0
	.4byte		.L881
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L902:
.L870:
	.sleb128	8
	.4byte		.L855
	.uleb128	121
	.uleb128	1
	.4byte		.L903-.L2
	.uleb128	48
.L342:
	.sleb128	9
	.byte		"UserIDsPtr"
	.byte		0
	.4byte		.L898
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L343:
	.sleb128	9
	.byte		"AllUserIDsNum"
	.byte		0
	.4byte		.L881
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L344:
	.sleb128	9
	.byte		"DirectUserIDsNum"
	.byte		0
	.4byte		.L881
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L345:
	.sleb128	9
	.byte		"PncIndexesPtr"
	.byte		0
	.4byte		.L898
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L346:
	.sleb128	9
	.byte		"PncStatesPtr"
	.byte		0
	.4byte		.L904
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L347:
	.sleb128	9
	.byte		"PncRequestsPtr"
	.byte		0
	.4byte		.L908
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L348:
	.sleb128	9
	.byte		"ChannelPncsNum"
	.byte		0
	.4byte		.L884
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L349:
	.sleb128	9
	.byte		"FullComTimerInitValue"
	.byte		0
	.4byte		.L881
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L350:
	.sleb128	9
	.byte		"NmVariant"
	.byte		0
	.4byte		.L801
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L351:
	.sleb128	9
	.byte		"TxSignalIDsPtr"
	.byte		0
	.4byte		.L911
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L352:
	.sleb128	9
	.byte		"TxSignalBufferPtr"
	.byte		0
	.4byte		.L913
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L353:
	.sleb128	9
	.byte		"TxSignalIDsNum"
	.byte		0
	.4byte		.L884
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L354:
	.sleb128	9
	.byte		"BusType"
	.byte		0
	.4byte		.L915
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L355:
	.sleb128	9
	.byte		"PncNmRequestEnabled"
	.byte		0
	.4byte		.L826
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L903:
.L815:
	.sleb128	8
	.4byte		.L855
	.uleb128	121
	.uleb128	1
	.4byte		.L918-.L2
	.uleb128	24
.L324:
	.sleb128	9
	.byte		"FullComTimer"
	.byte		0
	.4byte		.L882
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L325:
	.sleb128	9
	.byte		"ChannelSubState"
	.byte		0
	.4byte		.L919
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L326:
	.sleb128	9
	.byte		"HaltInNoComState"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L327:
	.sleb128	9
	.byte		"LastNmIndicatedMode"
	.byte		0
	.4byte		.L829
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L328:
	.sleb128	9
	.byte		"IsLastNmIndicatedModeUpdated"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L329:
	.sleb128	9
	.byte		"NmRestartIndication"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L330:
	.sleb128	9
	.byte		"NmNetworkStartIndication"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L331:
	.sleb128	9
	.byte		"LastBusSMIndicatedMode"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L332:
	.sleb128	9
	.byte		"EcuMWakeUpIndication"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L333:
	.sleb128	9
	.byte		"ActiveDiagnostic"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L334:
	.sleb128	9
	.byte		"CommunicationAllowed"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L335:
	.sleb128	9
	.byte		"InitialTransition"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L336:
	.sleb128	9
	.byte		"BusSMReturnValue"
	.byte		0
	.4byte		.L920
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L337:
	.sleb128	9
	.byte		"UserRequestsChanged"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L338:
	.sleb128	9
	.byte		"DirectUserRequestsChanged"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L339:
	.sleb128	9
	.byte		"ChannelRequestedMode"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L340:
	.sleb128	9
	.byte		"DirectUsersRequestedMode"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L341:
	.sleb128	9
	.byte		"PncsRequestedMode"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L918:
	.section	.debug_info,,n
.L830:
	.sleb128	10
	.4byte		.L855
	.uleb128	112
	.uleb128	1
	.4byte		.L921-.L2
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
.L921:
.L803:
	.sleb128	10
	.4byte		.L855
	.uleb128	103
	.uleb128	1
	.4byte		.L922-.L2
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
.L922:
.L917:
	.sleb128	10
	.4byte		.L855
	.uleb128	93
	.uleb128	1
	.4byte		.L923-.L2
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
.L923:
.L890:
	.sleb128	10
	.4byte		.L855
	.uleb128	86
	.uleb128	1
	.4byte		.L924-.L2
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
.L924:
.L907:
	.sleb128	10
	.4byte		.L855
	.uleb128	57
	.uleb128	1
	.4byte		.L925-.L2
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
.L925:
	.section	.debug_info,,n
.L794:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L793:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L794
.L798:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L794
.L797:
	.sleb128	13
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L798
	.section	.debug_info,,n
.L796:
	.sleb128	14
	.4byte		.L797
.L802:
	.sleb128	13
	.byte		"ComM_NmVariantType"
	.byte		0
	.4byte		.L803
.L801:
	.sleb128	14
	.4byte		.L802
.L814:
	.sleb128	13
	.byte		"ComM_ChannelStateType"
	.byte		0
	.4byte		.L815
	.section	.debug_info,,n
.L813:
	.sleb128	15
	.4byte		.L814
.L812:
	.sleb128	14
	.4byte		.L813
.L826:
	.sleb128	14
	.4byte		.L793
.L829:
	.sleb128	13
	.byte		"ComM_NmCurrentModeType"
	.byte		0
	.4byte		.L830
.L850:
	.sleb128	13
	.byte		"ComM_ConfigType"
	.byte		0
	.4byte		.L851
.L849:
	.sleb128	14
	.4byte		.L850
.L848:
	.sleb128	15
	.4byte		.L849
	.section	.debug_info,,n
.L853:
	.sleb128	16
	.4byte		.L854-.L2
	.4byte		.L814
	.section	.debug_info,,n
	.sleb128	17
	.sleb128	0
.L854:
.L860:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L859:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L860
.L858:
	.sleb128	14
	.4byte		.L859
.L857:
	.sleb128	15
	.4byte		.L858
.L864:
	.sleb128	13
	.byte		"ComM_UserType"
	.byte		0
	.4byte		.L865
.L863:
	.sleb128	14
	.4byte		.L864
.L862:
	.sleb128	15
	.4byte		.L863
.L861:
	.sleb128	14
	.4byte		.L862
.L869:
	.sleb128	13
	.byte		"ComM_ChannelType"
	.byte		0
	.4byte		.L870
.L868:
	.sleb128	14
	.4byte		.L869
.L867:
	.sleb128	15
	.4byte		.L868
.L866:
	.sleb128	14
	.4byte		.L867
.L874:
	.sleb128	13
	.byte		"ComM_PncType"
	.byte		0
	.4byte		.L875
.L873:
	.sleb128	14
	.4byte		.L874
.L872:
	.sleb128	15
	.4byte		.L873
.L871:
	.sleb128	14
	.4byte		.L872
.L879:
	.sleb128	13
	.byte		"ComM_PncRxSignalType"
	.byte		0
	.4byte		.L880
.L878:
	.sleb128	14
	.4byte		.L879
.L877:
	.sleb128	15
	.4byte		.L878
.L876:
	.sleb128	14
	.4byte		.L877
.L883:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L882:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L883
.L881:
	.sleb128	14
	.4byte		.L882
.L884:
	.sleb128	14
	.4byte		.L798
.L887:
	.sleb128	13
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L882
.L886:
	.sleb128	14
	.4byte		.L887
.L889:
	.sleb128	13
	.byte		"ComM_PncComSignalKindType"
	.byte		0
	.4byte		.L890
.L888:
	.sleb128	14
	.4byte		.L889
.L893:
	.sleb128	13
	.byte		"PNCHandleType"
	.byte		0
	.4byte		.L798
.L892:
	.sleb128	14
	.4byte		.L893
.L895:
	.sleb128	15
	.4byte		.L796
.L894:
	.sleb128	14
	.4byte		.L895
.L897:
	.sleb128	15
	.4byte		.L884
.L896:
	.sleb128	14
	.4byte		.L897
.L901:
	.sleb128	13
	.byte		"ComM_UserHandleType"
	.byte		0
	.4byte		.L798
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
	.byte		"ComM_PncModeType"
	.byte		0
	.4byte		.L907
.L905:
	.sleb128	15
	.4byte		.L906
.L904:
	.sleb128	14
	.4byte		.L905
.L910:
	.sleb128	13
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L798
.L909:
	.sleb128	15
	.4byte		.L910
.L908:
	.sleb128	14
	.4byte		.L909
.L912:
	.sleb128	15
	.4byte		.L881
.L911:
	.sleb128	14
	.4byte		.L912
.L914:
	.sleb128	15
	.4byte		.L798
.L913:
	.sleb128	14
	.4byte		.L914
.L916:
	.sleb128	13
	.byte		"ComM_BusTypeType"
	.byte		0
	.4byte		.L917
.L915:
	.sleb128	14
	.4byte		.L916
.L919:
	.sleb128	13
	.byte		"ComM_StateType"
	.byte		0
	.4byte		.L798
.L920:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L798
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L799:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locend
.L804:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),4
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),4
	.d2locend
.L806:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo13),3
	.d2locend
.L816:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),0
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo8),4
	.d2locend
.L822:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),31
	.d2locend
.L824:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),7
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),7
	.d2locend
.L827:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo23),0
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo27),0
	.d2locend
.L831:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo23),3
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locend
.L837:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo27),3
	.d2locend
.L843:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),3
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),0
	.d2locend
.L845:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo40),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_EnterNetworkRequestedState"
	.wrcm.nstrlist "calls", "ComM_FullComNetworkRequestedState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "ComM_FullComNetworkRequestedState"
	.wrcm.nstrlist "calls", "ComM_EnterNoCommunicationState","ComM_EnterReadySleepState","ComM_StepFullComTimer"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "ComM_StepFullComTimer"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_FullCommnNetworkReqdState.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_FullCommnNetworkReqdState.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_FullCommnNetworkReqdState.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_FullCommnNetworkReqdState.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_FullCommnNetworkReqdState.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_FullCommnNetworkReqdState.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_FullCommnNetworkReqdState.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
