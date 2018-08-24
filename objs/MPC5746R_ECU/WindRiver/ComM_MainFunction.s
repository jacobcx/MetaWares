#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_MainFunction.c"
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
# LOCAL_INLINE FUNC(void, COMM_CODE) ComM_UpdateChannelRequestedMode(CONSTP2VAR(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) statePtr,
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_MainFunction.c"
        .d2line         213,36
#$$ld
.L825:

#$$bf	ComM_UpdateChannelRequestedMode,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.d2_cfa_start __cie
ComM_UpdateChannelRequestedMode:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# statePtr=r3 statePtr=r3
	mr		r4,r4		# channelPtr=r4 channelPtr=r4
	.d2prologue_end
#                                                                    CONSTP2CONST(ComM_ChannelType, AUTOMATIC, AUTOMATIC)         channelPtr,
#                                                                    CONST(boolean, AUTOMATIC)                                    pncRequestsChanged)
# {
#     if(statePtr->DirectUserRequestsChanged == TRUE)
	.d2line		217
	lbz		r0,18(r3)		# statePtr=r3
	se_cmpi		r0,1
	bc		0,2,.L776	# ne
	.section	.text_vle
.L843:
#     {
#         VAR(uint16, AUTOMATIC)  userIndex;
#         VAR(boolean, AUTOMATIC) isRequestedByUsers = FALSE;
	.d2line		220
	diab.li		r7,0		# isRequestedByUsers=r7
# 
#         statePtr->DirectUserRequestsChanged = FALSE;
	.d2line		222
.Llo5:
	diab.li		r5,0
.Llo4:
	stb		r5,18(r3)		# statePtr=r3
# 
#         for(userIndex = 0U; userIndex < channelPtr->DirectUserIDsNum; userIndex++)
.L778:
	.d2line		224
	rlwinm		r0,r5,0,16,31		# userID=r0 userIndex=r5
.Llo6:
	lhz		r6,6(r4)		# channelPtr=r4
	se_cmp		r0,r6		# userID=r0
	bc		0,0,.L782	# ge
	.section	.text_vle
.L853:
#         {
#             CONST(ComM_UserHandleType, AUTOMATIC) userID = channelPtr->UserIDsPtr[userIndex];
	.d2line		226
.Llo7:
	lwz		r6,0(r4)		# channelPtr=r4
	rlwinm		r0,r5,0,16,31		# userID=r0 userIndex=r5
.Llo8:
	lbzx		r0,r6,r0		# userID=r0
	mr		r0,r0		# userID=r0 userID=r0
# 
#             if(ComM_UserRequests[userID] == COMM_FULL_COMMUNICATION)
	.d2line		228
	lis		r6,ComM_UserRequests@ha
	e_add16i		r6,r6,ComM_UserRequests@l
	rlwinm		r0,r0,0,24,31		# userID=r0 userID=r0
	lbzx		r0,r6,r0		# userID=r0
	se_cmpi		r0,2		# userID=r0
	bc		0,2,.L781	# ne
#             {
#                 isRequestedByUsers = TRUE;
	.d2line		230
.Llo9:
	diab.li		r7,1		# isRequestedByUsers=r7
	b		.L782
.L781:
	.section	.text_vle
.L854:
#                 break;
#             }
#         }
	.d2line		233
	diab.addi		r0,r5,1		# userID=r0 userIndex=r5
	se_addi		r5,1		# userIndex=r5 userIndex=r5
	b		.L778
.L782:
#         if(isRequestedByUsers == TRUE)
	.d2line		234
	rlwinm		r7,r7,0,24,31		# isRequestedByUsers=r7 isRequestedByUsers=r7
	se_cmpi		r7,1		# isRequestedByUsers=r7
	bc		0,2,.L783	# ne
#         {
#             statePtr->DirectUsersRequestedMode = COMM_FULL_COMMUNICATION;
	.d2line		236
.Llo3:
	diab.li		r0,2		# userID=r0
.Llo10:
	stb		r0,20(r3)		# statePtr=r3 userID=r0
#             statePtr->ChannelRequestedMode     = COMM_FULL_COMMUNICATION;
	.d2line		237
	stb		r0,19(r3)		# statePtr=r3 userID=r0
	b		.L776
.L783:
#         }
#         else
#         {
#             statePtr->DirectUsersRequestedMode = COMM_NO_COMMUNICATION;
	.d2line		241
.Llo11:
	diab.li		r0,0		# userID=r0
.Llo12:
	stb		r0,20(r3)		# statePtr=r3 userID=r0
#             statePtr->ChannelRequestedMode     = statePtr->PncsRequestedMode;
	.d2line		242
	lbz		r0,21(r3)		# userID=r0 statePtr=r3
	stb		r0,19(r3)		# statePtr=r3 userID=r0
	.section	.text_vle
.L844:
.L776:
#         }
#     }
# 
# #if(COMM_PNC_SUPPORT == STD_ON)
#     if(pncRequestsChanged == TRUE)
#     {
#         VAR(uint8, AUTOMATIC)  index;
#         VAR(boolean, AUTOMATIC) isRequestedByPncs = FALSE;
# 
#         for(index = 0U; index < channelPtr->ChannelPncsNum; index++)
#         {
#             /* [SWS_ComM_00827] Requests from the PNC shall be treated the same way as real User requests */
#             if(channelPtr->PncRequestsPtr[index] == COMM_FULL_COMMUNICATION)
#             {
#                 isRequestedByPncs = TRUE;
#                 break;
#             }
#         }
#         if(isRequestedByPncs == TRUE)
#         {
#             statePtr->PncsRequestedMode    = COMM_FULL_COMMUNICATION;
#             statePtr->ChannelRequestedMode = COMM_FULL_COMMUNICATION;
#         }
#         else
#         {
#             statePtr->PncsRequestedMode    = COMM_NO_COMMUNICATION;
#             statePtr->ChannelRequestedMode = statePtr->DirectUsersRequestedMode;
#         }
#     }
# #endif
# }
	.d2line		273
	.d2epilogue_begin
.Llo2:
	lwz		r0,20(r1)		# userID=r0
	mtspr		lr,r0		# userID=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L826:
	.type		ComM_UpdateChannelRequestedMode,@function
	.size		ComM_UpdateChannelRequestedMode,.-ComM_UpdateChannelRequestedMode
# Number of nodes = 83

# Allocations for ComM_UpdateChannelRequestedMode
#	?a4		statePtr
#	?a5		channelPtr
#	not allocated	pncRequestsChanged
#	?a6		userIndex
#	?a7		isRequestedByUsers
#	?a8		userID
# LOCAL_INLINE FUNC(void, COMM_CODE) ComM_SendChannelRequesters(CONSTP2VAR(ComM_UserHandleArrayType, AUTOMATIC, COMM_APPL_DATA) channelRequestDataPtr,
	.align		1
	.section	.text_vle
        .d2line         436,36
#$$ld
.L864:

#$$bf	ComM_SendChannelRequesters,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
ComM_SendChannelRequesters:
.Llo13:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# channel=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# channelRequestDataPtr=r3 channelRequestDataPtr=r3
	mr		r0,r4		# channel=r0 channel=r4
	.d2prologue_end
#                                                               CONST(NetworkHandleType, AUTOMATIC) channel)
# {
#     CONSTP2CONST(ComM_ChannelType, AUTOMATIC, COMM_APPL_CONST) channelPtr = &(ComM_ConfigPtr->ChannelsPtr[channel]);
#     VAR(uint8, AUTOMATIC) newNumberOfRequesters = 0U;
	.d2line		440
	diab.li		r5,0		# newNumberOfRequesters=r5
	.d2line		439
.Llo23:
	rlwinm		r6,r0,0,24,31		# channel=r0
	lis		r4,ComM_ConfigPtr@ha
.Llo15:
	lwz		r4,ComM_ConfigPtr@l(r4)
	lwz		r4,12(r4)
	rlwinm		r7,r6,6,0,25
	se_slwi		r6,4
	subf		r6,r6,r7
	se_add		r4,r6
.Llo20:
	mr		r4,r4		# channelPtr=r4 channelPtr=r4
#     VAR(uint16, AUTOMATIC) userIndex;
# 
#     /* For each User of the Channel */
#     for(userIndex = 0U; userIndex < channelPtr->AllUserIDsNum; userIndex++)
	.d2line		444
	diab.li		r6,0
.L816:
.Llo16:
	rlwinm		r31,r6,0,16,31		# userID=r31 userIndex=r6
.Llo24:
	lhz		r7,4(r4)		# channelPtr=r4
	se_cmp		r31,r7		# userID=r31
	bc		0,0,.L818	# ge
	.section	.text_vle
.L881:
#     {
#         CONST(ComM_UserHandleType, AUTOMATIC) userID = channelPtr->UserIDsPtr[userIndex];
	.d2line		446
.Llo25:
	lwz		r7,0(r4)		# channelPtr=r4
	rlwinm		r31,r6,0,16,31		# userID=r31 userIndex=r6
.Llo26:
	lbzx		r31,r7,r31		# userID=r31
	mr		r31,r31		# userID=r31 userID=r31
# 
#         /* Add Users which request FULL_COMMUNICATION */
#         if(ComM_UserRequests[userID] == COMM_FULL_COMMUNICATION)
	.d2line		449
	lis		r7,ComM_UserRequests@ha
	e_add16i		r7,r7,ComM_UserRequests@l
	rlwinm		r30,r31,0,24,31		# userID=r31
	lbzx		r7,r7,r30
	se_cmpi		r7,2
	bc		0,2,.L819	# ne
#         {
#             channelRequestDataPtr->handleArray[newNumberOfRequesters] = userID;
	.d2line		451
	rlwinm		r7,r5,0,24,31		# newNumberOfRequesters=r5
	se_add		r7,r3		# channelRequestDataPtr=r3
	stb		r31,1(r7)		# userID=r31
#             newNumberOfRequesters++;
	.d2line		452
	diab.addi		r7,r5,1		# newNumberOfRequesters=r5
	se_addi		r5,1		# newNumberOfRequesters=r5 newNumberOfRequesters=r5
.L819:
	.section	.text_vle
.L882:
#         }
#     }
	.d2line		454
.Llo27:
	diab.addi		r31,r6,1		# userID=r31 userIndex=r6
	se_addi		r6,1		# userIndex=r6 userIndex=r6
	b		.L816
.L818:
# 
#     channelRequestDataPtr->numberOfRequesters = newNumberOfRequesters;
	.d2line		456
.Llo17:
	stb		r5,0(r3)		# channelRequestDataPtr=r3 newNumberOfRequesters=r5
#     /* Call Rte_Write API of the PPortPrototype */
#     ComM_CurrentChannelRequestPorts[channel].RteWriteCurrentChannelRequestCallout(channelRequestDataPtr);
	.d2line		458
	lis		r4,ComM_CurrentChannelRequestPorts@ha		# channelPtr=r4
.Llo21:
	e_add16i		r4,r4,ComM_CurrentChannelRequestPorts@l		# channelPtr=r4 channelPtr=r4
.Llo18:
	rlwinm		r0,r0,3,21,28		# channel=r0 channel=r0
	lwzx		r0,r4,r0		# channel=r0 channelPtr=r4
.Llo19:
	mtspr		ctr,r0		# channel=ctr
	mr		r3,r3		# channelRequestDataPtr=r3 channelRequestDataPtr=r3
.Llo14:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
# }
	.d2line		459
	.d2epilogue_begin
.Llo22:
	lmw		r30,24(r1)		# offset r1+24  0x18
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
.L865:
	.type		ComM_SendChannelRequesters,@function
	.size		ComM_SendChannelRequesters,.-ComM_SendChannelRequesters
# Number of nodes = 72

# Allocations for ComM_SendChannelRequesters
#	?a4		channelRequestDataPtr
#	?a5		channel
#	?a6		$$238
#	?a7		channelPtr
#	?a8		newNumberOfRequesters
#	?a9		userIndex
#	?a10		userID
# LOCAL_INLINE FUNC(void, COMM_CODE) ComM_CheckChannelRequestersCallout(CONST(NetworkHandleType, AUTOMATIC) channel)
	.align		1
	.section	.text_vle
        .d2line         402,36
#$$ld
.L889:

#$$bf	ComM_CheckChannelRequestersCallout,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
ComM_CheckChannelRequestersCallout:
.Llo28:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# channel=r5 channel=r3
	.d2prologue_end
# {
#     CONSTP2VAR(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) statePtr = &ComM_ChannelStates[channel];
	.d2line		404
.Llo29:
	rlwinm		r0,r5,0,24,31		# channel=r5
.Llo30:
	lis		r4,ComM_ChannelStates@ha		# statePtr=r4
.Llo36:
	e_add16i		r4,r4,ComM_ChannelStates@l		# statePtr=r4 statePtr=r4
	rlwinm		r3,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r3
	se_add		r0,r4		# statePtr=r4
	mr		r4,r0		# statePtr=r4 statePtr=r0
#     CONSTP2VAR(ComM_UserHandleArrayType, AUTOMATIC, COMM_APPL_DATA) channelRequestDataPtr =
	.d2line		405
	lis		r3,(ComM_CurrentChannelRequestPorts+4)@ha
	e_add16i		r3,r3,(ComM_CurrentChannelRequestPorts+4)@l
	rlwinm		r0,r5,3,21,28		# channel=r5
	lwzx		r3,r3,r0
.Llo40:
	mr		r3,r3		# channelRequestDataPtr=r3 channelRequestDataPtr=r3
#         ComM_CurrentChannelRequestPorts[channel].CurrentChannelRequestData;
# 
#     if(statePtr->ChannelSubState == COMM_FULL_COM_NETWORK_REQUESTED)
	.d2line		408
	lbz		r0,2(r4)		# statePtr=r4
	se_cmpi		r0,2
	bc		0,2,.L807	# ne
#     {
#         if( (channelRequestDataPtr->numberOfRequesters == 0U) || (statePtr->UserRequestsChanged == TRUE) )
	.d2line		410
	lbz		r0,0(r3)		# channelRequestDataPtr=r3
	se_cmpi		r0,0
	bc		1,2,.L811	# eq
	lbz		r0,17(r4)		# statePtr=r4
	se_cmpi		r0,1
	bc		0,2,.L806	# ne
.L811:
#         {
#             statePtr->UserRequestsChanged = FALSE;
	.d2line		412
.Llo41:
	diab.li		r0,0
	stb		r0,17(r4)		# statePtr=r4
#             ComM_SendChannelRequesters(channelRequestDataPtr, channel);
	.d2line		413
	mr		r4,r5		# channel=r4 channel=r5
.Llo37:
	mr		r3,r3		# channelRequestDataPtr=r3 channelRequestDataPtr=r3
.Llo42:
	bl		ComM_SendChannelRequesters
.Llo31:
	b		.L806
.L807:
#         }
#     }
#     else /* Another sub-state, e.g. no FULL_COMMUNICATION requesters or NoCom is True */
#     {
#         if(channelRequestDataPtr->numberOfRequesters != 0U)
	.d2line		418
.Llo32:
	lbz		r0,0(r3)		# channelRequestDataPtr=r3
	se_cmpi		r0,0
	bc		1,2,.L806	# eq
#         {
#             /* Call Rte_Write API of the PPortPrototype with NumberOfRequesters=0 */
#             channelRequestDataPtr->numberOfRequesters = 0U;
	.d2line		421
.Llo33:
	diab.li		r0,0
	stb		r0,0(r3)		# channelRequestDataPtr=r3
#             ComM_CurrentChannelRequestPorts[channel].RteWriteCurrentChannelRequestCallout(channelRequestDataPtr);
	.d2line		422
	lis		r4,ComM_CurrentChannelRequestPorts@ha		# statePtr=r4
.Llo38:
	e_add16i		r4,r4,ComM_CurrentChannelRequestPorts@l		# statePtr=r4 statePtr=r4
.Llo34:
	rlwinm		r5,r5,3,21,28		# channel=r5 channel=r5
.Llo35:
	lwzx		r0,r4,r5		# statePtr=r4
	mtspr		ctr,r0
	mr		r3,r3		# channelRequestDataPtr=r3 channelRequestDataPtr=r3
.Llo43:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.L806:
#         }
#     }
# }
	.d2line		425
	.d2epilogue_begin
.Llo39:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L890:
	.type		ComM_CheckChannelRequestersCallout,@function
	.size		ComM_CheckChannelRequestersCallout,.-ComM_CheckChannelRequestersCallout
# Number of nodes = 75

# Allocations for ComM_CheckChannelRequestersCallout
#	?a4		channel
#	?a5		$$239
#	?a6		statePtr
#	?a7		channelRequestDataPtr
# LOCAL_INLINE FUNC(void, COMM_CODE) ComM_CheckCallouts(CONST(NetworkHandleType, AUTOMATIC) channel,
	.align		1
	.section	.text_vle
        .d2line         340,36
#$$ld
.L899:

#$$bf	ComM_CheckCallouts,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
ComM_CheckCallouts:
.Llo44:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# channel=r31 channel=r3
.Llo45:
	mr		r30,r4		# lastChannelSubState=r30 lastChannelSubState=r4
	.d2prologue_end
#                                                       CONST(ComM_StateType, AUTOMATIC)    lastChannelSubState)
# {
#     CONSTP2VAR(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) statePtr = &ComM_ChannelStates[channel];
	.d2line		343
.Llo46:
	rlwinm		r0,r31,0,24,31		# channel=r31
	lis		r27,ComM_ChannelStates@ha
	e_add16i		r27,r27,ComM_ChannelStates@l
	rlwinm		r3,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r3
	se_add		r0,r27
.Llo52:
	mr		r27,r0		# statePtr=r27 statePtr=r0
# 
# #if(COMM_NM_VARIANT_FULL == STD_ON || COMM_NM_VARIANT_PASSIVE == STD_ON)
#     CONST(ComM_NmVariantType, AUTOMATIC) nmVariant = ComM_ConfigPtr->ChannelsPtr[channel].NmVariant;
# #endif
# 
#     /* [ComM734] [ComM736] Report FULL_COMMUNICATION requesting Users to the Rte
#      * if ComMFullCommRequestNotificationEnabled parameter is TRUE */
#     if(COMM_IS_FULL_COM_REQUEST_NOTIFICATION_ENABLED(channel) == TRUE)
	.d2line		351
	lis		r3,(ComM_CurrentChannelRequestPorts+4)@ha
	e_add16i		r3,r3,(ComM_CurrentChannelRequestPorts+4)@l
	rlwinm		r0,r31,3,21,28		# channel=r31
.Llo53:
	lwzx		r0,r3,r0
	se_cmpi		r0,0
	bc		1,2,.L796	# eq
.Llo48:
	rlwinm		r0,r31,0,24,31		# channel=r31
.Llo49:
	lis		r3,ComM_ConfigPtr@ha
	lwz		r3,ComM_ConfigPtr@l(r3)
	lwz		r4,12(r3)
	rlwinm		r3,r0,6,0,25
	se_slwi		r0,4
	subf		r0,r0,r3
	se_add		r4,r0
	lhz		r0,4(r4)
	e_cmphl16i	r0,0
	bc		0,2,.L794	# ne
.L796:
	diab.li		r0,0
	b		.L795
.L794:
	diab.li		r0,1
.L795:
	rlwinm		r0,r0,0,24,31
	se_cmpi		r0,1
	bc		0,2,.L791	# ne
#     {
#         ComM_CheckChannelRequestersCallout(channel);
	.d2line		353
	mr		r3,r31		# channel=r3 channel=r31
	bl		ComM_CheckChannelRequestersCallout
.L791:
#     }
# 
#     /* Keep calling BusSM RequestComMode until it returns E_OK */
#     if( (lastChannelSubState != statePtr->ChannelSubState) || (E_OK != statePtr->BusSMReturnValue) )
	.d2line		357
	rlwinm		r3,r30,0,24,31		# channel=r3 lastChannelSubState=r30
	lbz		r0,2(r27)		# statePtr=r27
	se_cmp		r3,r0		# channel=r3
	bc		0,2,.L797	# ne
	lbz		r0,16(r27)		# statePtr=r27
	se_cmpi		r0,0
	bc		1,2,.L790	# eq
.L797:
	.section	.text_vle
.L908:
#     {
#         CONST(ComM_ModeType, AUTOMATIC) currentRequestedSMMode = ComM_GetChannelState(statePtr->ChannelSubState);
	.d2line		359
	lbz		r3,2(r27)		# channel=r3 statePtr=r27
	bl		ComM_GetChannelState
.Llo54:
	mr		r29,r3		# currentRequestedSMMode=r29 currentRequestedSMMode=r3
# 
#         if( (currentRequestedSMMode != ComM_GetChannelState(lastChannelSubState)) || (E_OK != statePtr->BusSMReturnValue) )
	.d2line		361
	rlwinm		r28,r29,0,24,31		# currentRequestedSMMode=r29
	rlwinm		r3,r30,0,24,31		# channel=r3 lastChannelSubState=r30
.Llo55:
	bl		ComM_GetChannelState
	rlwinm		r3,r3,0,24,31		# channel=r3 channel=r3
	se_cmp		r28,r3		# channel=r3
	bc		0,2,.L798	# ne
.Llo50:
	lbz		r0,16(r27)		# statePtr=r27
	se_cmpi		r0,0
	bc		1,2,.L790	# eq
.L798:
#         {
#             statePtr->BusSMReturnValue = ComM_RequestModetoStateManager( channel, currentRequestedSMMode );
	.d2line		363
	rlwinm		r3,r31,0,24,31		# channel=r3 channel=r31
	rlwinm		r4,r29,0,24,31		# currentRequestedSMMode=r29
	bl		ComM_RequestModetoStateManager
	stb		r3,16(r27)		# statePtr=r27 channel=r3
	.section	.text_vle
.L909:
.L790:
#         }
#     }
# 
# #if(COMM_NM_VARIANT_FULL == STD_ON || COMM_NM_VARIANT_PASSIVE == STD_ON)
#     /* Check if it's necessary to call PassiveStartup */
#     if( (nmVariant == COMM_FULL) || (nmVariant == COMM_PASSIVE) )
#     {
#         if(statePtr->CallPassiveStartup == TRUE)
#         {
#             (void)Nm_PassiveStartUp(channel);
#             statePtr->CallPassiveStartup = FALSE;
# 
# #if(COMM_NM_VARIANT_FULL == STD_ON)
#             statePtr->RequestedNmMode = COMM_NM_REQ_NETWORK_RELEASE;
# #endif
#         }
#     }
# #endif
# 
# #if(COMM_NM_VARIANT_FULL == STD_ON)
#     /* Check if Nm NetworRequest or NetworkRelease is necessary */
#     if(nmVariant == COMM_FULL)
#     {
#         ComM_CheckNmNetworkCallouts(channel);
#     }
# #endif
# }
	.d2line		390
	.d2epilogue_begin
.Llo47:
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo51:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L900:
	.type		ComM_CheckCallouts,@function
	.size		ComM_CheckCallouts,.-ComM_CheckCallouts
# Number of nodes = 107

# Allocations for ComM_CheckCallouts
#	?a4		channel
#	?a5		lastChannelSubState
#	?a6		$$241
#	?a7		$$240
#	?a8		$$237
#	?a9		statePtr
#	?a10		currentRequestedSMMode
# FUNC(void, COMM_CODE) ComM_MainFunction(CONST(NetworkHandleType, AUTOMATIC) Channel)
	.align		2
	.section	.text_vle
        .d2line         109,23
#$$ld
.L918:

#$$bf	ComM_MainFunction,interprocedural,rasave,nostackparams
	.globl		ComM_MainFunction
	.d2_cfa_start __cie
ComM_MainFunction:
.Llo56:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	.d2prologue_end
# {
#     /* [ComM612] Check whether the module has been initialized */
#     if(ComM_InitStatus != COMM_INIT)
	.d2line		112
	lis		r3,ComM_InitStatus@ha
.Llo57:
	lwz		r0,ComM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L757	# ne
#     {
#         COMM_DET_REPORT_ERROR(COMM_MAINFUNCTION_API_ID, COMM_E_NOT_INITED);
#     }
#     else if(Channel >= ComM_ChannelsNum)
	.d2line		116
.Llo58:
	rlwinm		r0,r31,0,24,31		# Channel=r31
	lis		r3,ComM_ChannelsNum@ha
	lbz		r3,ComM_ChannelsNum@l(r3)
	se_cmp		r0,r3
	bc		0,0,.L757	# ge
	.section	.text_vle
.L922:
#     {
#         COMM_DET_REPORT_ERROR(COMM_MAINFUNCTION_API_ID, COMM_E_WRONG_PARAMETERS);
#     }
#     else
#     {
#         CONSTP2VAR(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) statePtr = &ComM_ChannelStates[Channel];
#         CONSTP2CONST(ComM_ChannelType, AUTOMATIC, COMM_APPL_DATA) channelPtr = &(ComM_ConfigPtr->ChannelsPtr[Channel]);
#         CONST(ComM_StateType, AUTOMATIC) prevChannelSubState = statePtr->ChannelSubState;
# 
# #if(COMM_PNC_SUPPORT == STD_ON && COMM_MODE_LIMITATION_ENABLED == STD_ON)
#         VAR(uint16, AUTOMATIC) rejectedRequestCount = 0U;
# #endif
# 
#         /* Output of the PNC processing relevant for the current Channel */
#         VAR(ComM_PncSmOutputType, AUTOMATIC) pncOutput = {0U, FALSE};
	.d2line		131
	lis		r7,.L762@ha
	e_add16i		r7,r7,.L762@l
	lhz		r4,0(r7)
	lhz		r5,2(r7)
	sth		r4,8(r1)
	sth		r5,10(r1)
	.d2line		122
	rlwinm		r0,r31,0,24,31		# Channel=r31
	lis		r30,ComM_ChannelStates@ha		# statePtr=r30
.Llo60:
	e_add16i		r30,r30,ComM_ChannelStates@l		# statePtr=r30 statePtr=r30
	rlwinm		r3,r0,5,0,26		# statePtr=r3
	rlwinm		r4,r0,3,0,28
	subf		r4,r4,r3		# statePtr=r3
	se_add		r4,r30		# statePtr=r30
	mr		r30,r4		# statePtr=r30 statePtr=r4
	.d2line		123
	lis		r3,ComM_ConfigPtr@ha		# statePtr=r3
	lwz		r3,ComM_ConfigPtr@l(r3)		# statePtr=r3 statePtr=r3
	lwz		r4,12(r3)		# statePtr=r3
	rlwinm		r3,r0,6,0,25		# statePtr=r3
	se_slwi		r0,4
	subf		r0,r0,r3		# statePtr=r3
	se_add		r0,r4
.Llo62:
	mr		r4,r0		# channelPtr=r4 channelPtr=r0
	.d2line		124
	lbz		r29,2(r30)		# statePtr=r30
.Llo64:
	mr		r29,r29		# prevChannelSubState=r29 prevChannelSubState=r29
#         /* [ComM953] All actions related to PNC changes shall be executed before the Channel related actions */
# #if(COMM_PNC_SUPPORT == STD_ON)
#         if( (channelPtr->ChannelPncsNum > 0U) && (ComM_ConfigPtr->PncEnabled == TRUE) )
#         {
#             pncOutput = ComM_MainFunction_PncStateMachine(Channel);
# #if(COMM_MODE_LIMITATION_ENABLED == STD_ON)
#             if(COMM_REPORT_MODE_LIMITATION(statePtr) == TRUE)
#             {
#                 rejectedRequestCount += pncOutput.PncNewFullComRequestCount;
#             }
# #endif
#         }
# #endif
# 
#         /* Check if there are new FULL_COM or NO_COM requests for the channel and update the Channel's RequestedMode */
#         ComM_UpdateChannelRequestedMode(statePtr, channelPtr, pncOutput.RequestsChanged);
	.d2line		147
	lbz		r5,10(r1)
	mr		r3,r30		# statePtr=r3 statePtr=r30
	mr		r4,r4		# channelPtr=r4 channelPtr=r4
	bl		ComM_UpdateChannelRequestedMode
# 
#         SchM_Enter_ComM((uint8)Channel);
	.d2line		149
.Llo63:
	rlwinm		r3,r31,0,24,31		# statePtr=r3 Channel=r31
	bl		SchM_Enter_ComM
# 
#         /* Invoke the processing function based on the current sub-state of the Channel */
#         switch (statePtr->ChannelSubState)
	.d2line		152
	lbz		r6,2(r30)		# statePtr=r30
	se_cmpi		r6,0
	bc		1,2,.L767	# eq
.Llo61:
	se_cmpi		r6,1
	bc		1,2,.L767	# eq
	se_cmpi		r6,2
	bc		1,2,.L763	# eq
	se_cmpi		r6,3
	bc		1,2,.L765	# eq
	b		.L764
.L763:
#         {
#             case COMM_FULL_COM_NETWORK_REQUESTED:
#                 ComM_FullComNetworkRequestedState(Channel);
	.d2line		155
	rlwinm		r3,r31,0,24,31		# statePtr=r3 Channel=r31
	bl		ComM_FullComNetworkRequestedState
	b		.L764
.L765:
#                 break;
#             case COMM_FULL_COM_READY_SLEEP:
#                 ComM_FullComReadySleepState(Channel);
	.d2line		158
	rlwinm		r3,r31,0,24,31		# statePtr=r3 Channel=r31
	bl		ComM_FullComReadySleepState
	b		.L764
.L767:
#                 break;
# #if(COMM_NM_VARIANT_FULL == STD_ON || COMM_NM_VARIANT_PASSIVE == STD_ON)
#             case COMM_SILENT_COM:
#                 ComM_SilentCommunicationState(Channel);
#                 break;
# #endif
#             case COMM_NO_COM_NO_PENDING_REQUEST:
#             case COMM_NO_COM_REQUEST_PENDING:
#                 ComM_NoCommunicationState(Channel);
	.d2line		167
	rlwinm		r3,r31,0,24,31		# statePtr=r3 Channel=r31
	bl		ComM_NoCommunicationState
.L764:
#                 break;
#             default:
#                 /* Should never happen */
#                 break;
#         }
# 
# #if(COMM_MODE_LIMITATION_ENABLED == STD_ON)
#         /* Check if there are any User requests that have to be cleared because of NoCom limitation */
#         if( (statePtr->ComMNoCom == TRUE) && (COMM_IS_CHANNEL_REQUESTED(statePtr) == TRUE) &&
#             (COMM_IS_CHANNEL_IN_NO_COM(statePtr) == TRUE) )
#         {
#             ComM_CheckUserComLimitation(channelPtr);
#         }
# #endif
# 
#         SchM_Exit_ComM((uint8)Channel);
	.d2line		183
	rlwinm		r3,r31,0,24,31		# statePtr=r3 Channel=r31
	bl		SchM_Exit_ComM
# 
#         /* Execute callouts if necessary */
#         ComM_CheckCallouts(Channel, prevChannelSubState);
	.d2line		186
	mr		r3,r31		# Channel=r3 Channel=r31
	mr		r4,r29		# prevChannelSubState=r4 prevChannelSubState=r29
	bl		ComM_CheckCallouts
	.section	.text_vle
.L923:
.L757:
# 
# #if(COMM_PNC_SUPPORT == STD_ON && COMM_MODE_LIMITATION_ENABLED == STD_ON)
#         if(rejectedRequestCount > 0U)
#         {
#             SchM_Enter_ComM_ComM_InhibitionCounter();
# 
#             COMM_ADD_TO_INHIBITION_COUNTER(rejectedRequestCount);
# 
#             SchM_Exit_ComM_ComM_InhibitionCounter();
#         }
# #endif
#     }
# }
	.d2line		199
	.d2epilogue_begin
.Llo59:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L919:
	.type		ComM_MainFunction,@function
	.size		ComM_MainFunction,.-ComM_MainFunction
# Number of nodes = 95

# Allocations for ComM_MainFunction
#	?a4		Channel
#	?a5		$$243
#	?a6		$$242
#	?a7		statePtr
#	?a8		channelPtr
#	?a9		prevChannelSubState
#	SP,8		pncOutput

# Allocations for module
	.section	.text_vle
	.0byte		.L947
	.section	.text_vle
	.type		.L762,@object
	.size		.L762,4
	.align		1
#	static		__static_init1
.L762:
	.space		4
	.section	.text_vle
#$$ld
.L5:
.L1026:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\ComStack_Types.h"
.L957:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L936:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Private.h"
.L827:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_MainFunction.c"
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
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	12
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
	.uleb128	13
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
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
	.uleb128	18
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	33
	.byte		0x0
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
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
	.uleb128	21
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_MainFunction.c"
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
.L828:
	.sleb128	2
	.4byte		.L824-.L2
	.byte		"ComM_UpdateChannelRequestedMode"
	.byte		0
	.4byte		.L827
	.uleb128	213
	.uleb128	36
	.byte		0x1
	.4byte		.L825
	.4byte		.L826
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L827
	.uleb128	213
	.uleb128	36
	.byte		"statePtr"
	.byte		0
	.4byte		.L829
	.4byte		.L833
	.sleb128	3
	.4byte		.L827
	.uleb128	213
	.uleb128	36
	.byte		"channelPtr"
	.byte		0
	.4byte		.L834
	.4byte		.L839
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L827
	.uleb128	213
	.uleb128	36
	.byte		"pncRequestsChanged"
	.byte		0
	.4byte		.L840
	.sleb128	2
	.byte		0x90
	.uleb128	5
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L846
	.4byte		.L843
	.4byte		.L844
	.section	.debug_info,,n
.L847:
	.sleb128	6
	.4byte		.L827
	.uleb128	219
	.uleb128	33
	.byte		"userIndex"
	.byte		0
	.4byte		.L848
	.4byte		.L850
.L851:
	.sleb128	6
	.4byte		.L827
	.uleb128	220
	.uleb128	33
	.byte		"isRequestedByUsers"
	.byte		0
	.4byte		.L841
	.4byte		.L852
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L856
	.4byte		.L853
	.4byte		.L854
.L857:
	.sleb128	6
	.4byte		.L827
	.uleb128	226
	.uleb128	51
	.byte		"userID"
	.byte		0
	.4byte		.L858
	.4byte		.L861
	.section	.debug_info,,n
	.sleb128	0
.L856:
	.section	.debug_info,,n
	.sleb128	0
.L846:
	.section	.debug_info,,n
	.sleb128	0
.L824:
	.section	.debug_info,,n
.L866:
	.sleb128	2
	.4byte		.L863-.L2
	.byte		"ComM_SendChannelRequesters"
	.byte		0
	.4byte		.L827
	.uleb128	436
	.uleb128	36
	.byte		0x1
	.4byte		.L864
	.4byte		.L865
	.sleb128	3
	.4byte		.L827
	.uleb128	436
	.uleb128	36
	.byte		"channelRequestDataPtr"
	.byte		0
	.4byte		.L867
	.4byte		.L871
	.sleb128	3
	.4byte		.L827
	.uleb128	436
	.uleb128	36
	.byte		"channel"
	.byte		0
	.4byte		.L872
	.4byte		.L874
.L875:
	.sleb128	6
	.4byte		.L827
	.uleb128	439
	.uleb128	64
	.byte		"channelPtr"
	.byte		0
	.4byte		.L834
	.4byte		.L876
.L877:
	.sleb128	6
	.4byte		.L827
	.uleb128	440
	.uleb128	27
	.byte		"newNumberOfRequesters"
	.byte		0
	.4byte		.L860
	.4byte		.L878
.L879:
	.sleb128	6
	.4byte		.L827
	.uleb128	441
	.uleb128	28
	.byte		"userIndex"
	.byte		0
	.4byte		.L848
	.4byte		.L880
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L884
	.4byte		.L881
	.4byte		.L882
.L885:
	.sleb128	6
	.4byte		.L827
	.uleb128	446
	.uleb128	47
	.byte		"userID"
	.byte		0
	.4byte		.L858
	.4byte		.L886
	.section	.debug_info,,n
	.sleb128	0
.L884:
	.section	.debug_info,,n
	.sleb128	0
.L863:
	.section	.debug_info,,n
.L891:
	.sleb128	2
	.4byte		.L888-.L2
	.byte		"ComM_CheckChannelRequestersCallout"
	.byte		0
	.4byte		.L827
	.uleb128	402
	.uleb128	36
	.byte		0x1
	.4byte		.L889
	.4byte		.L890
	.sleb128	3
	.4byte		.L827
	.uleb128	402
	.uleb128	36
	.byte		"channel"
	.byte		0
	.4byte		.L872
	.4byte		.L892
.L893:
	.sleb128	6
	.4byte		.L827
	.uleb128	404
	.uleb128	66
	.byte		"statePtr"
	.byte		0
	.4byte		.L829
	.4byte		.L894
.L895:
	.sleb128	6
	.4byte		.L827
	.uleb128	405
	.uleb128	69
	.byte		"channelRequestDataPtr"
	.byte		0
	.4byte		.L867
	.4byte		.L896
	.section	.debug_info,,n
	.sleb128	0
.L888:
	.section	.debug_info,,n
.L901:
	.sleb128	2
	.4byte		.L898-.L2
	.byte		"ComM_CheckCallouts"
	.byte		0
	.4byte		.L827
	.uleb128	340
	.uleb128	36
	.byte		0x1
	.4byte		.L899
	.4byte		.L900
	.sleb128	3
	.4byte		.L827
	.uleb128	340
	.uleb128	36
	.byte		"channel"
	.byte		0
	.4byte		.L872
	.4byte		.L902
	.sleb128	3
	.4byte		.L827
	.uleb128	340
	.uleb128	36
	.byte		"lastChannelSubState"
	.byte		0
	.4byte		.L903
	.4byte		.L905
.L906:
	.sleb128	6
	.4byte		.L827
	.uleb128	343
	.uleb128	66
	.byte		"statePtr"
	.byte		0
	.4byte		.L829
	.4byte		.L907
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L911
	.4byte		.L908
	.4byte		.L909
.L912:
	.sleb128	6
	.4byte		.L827
	.uleb128	359
	.uleb128	41
	.byte		"currentRequestedSMMode"
	.byte		0
	.4byte		.L913
	.4byte		.L915
	.section	.debug_info,,n
	.sleb128	0
.L911:
	.section	.debug_info,,n
	.sleb128	0
.L898:
	.section	.debug_info,,n
.L920:
	.sleb128	7
	.4byte		.L917-.L2
	.byte		"ComM_MainFunction"
	.byte		0
	.4byte		.L827
	.uleb128	109
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L918
	.4byte		.L919
	.sleb128	3
	.4byte		.L827
	.uleb128	109
	.uleb128	23
	.byte		"Channel"
	.byte		0
	.4byte		.L872
	.4byte		.L921
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L925
	.4byte		.L922
	.4byte		.L923
.L926:
	.sleb128	6
	.4byte		.L827
	.uleb128	122
	.uleb128	70
	.byte		"statePtr"
	.byte		0
	.4byte		.L829
	.4byte		.L927
.L928:
	.sleb128	6
	.4byte		.L827
	.uleb128	123
	.uleb128	67
	.byte		"channelPtr"
	.byte		0
	.4byte		.L834
	.4byte		.L929
.L930:
	.sleb128	6
	.4byte		.L827
	.uleb128	124
	.uleb128	42
	.byte		"prevChannelSubState"
	.byte		0
	.4byte		.L903
	.4byte		.L931
	.section	.debug_info,,n
.L932:
	.sleb128	8
	.4byte		.L827
	.uleb128	131
	.uleb128	46
	.byte		"pncOutput"
	.byte		0
	.4byte		.L933
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L925:
	.section	.debug_info,,n
	.sleb128	0
.L917:
	.section	.debug_info,,n
.L935:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L936
	.uleb128	374
	.uleb128	55
	.byte		"ComM_InitStatus"
	.byte		0
	.4byte		.L937
	.0byte		.L935
.L939:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L936
	.uleb128	377
	.uleb128	55
	.byte		"ComM_ConfigPtr"
	.byte		0
	.4byte		.L940
.L944:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L936
	.uleb128	388
	.uleb128	45
	.byte		"ComM_ChannelStates"
	.byte		0
	.4byte		.L945
.L947:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L936
	.uleb128	403
	.uleb128	64
	.byte		"ComM_CurrentChannelRequestPorts"
	.byte		0
	.4byte		.L948
	.section	.debug_info,,n
.L953:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L936
	.uleb128	417
	.uleb128	53
	.byte		"ComM_ChannelsNum"
	.byte		0
	.4byte		.L872
.L954:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L936
	.uleb128	443
	.uleb128	52
	.byte		"ComM_UserRequests"
	.byte		0
	.4byte		.L955
	.section	.debug_info,,n
.L952:
	.sleb128	10
	.4byte		.L957
	.uleb128	121
	.uleb128	1
	.4byte		.L958-.L2
	.uleb128	8
	.section	.debug_info,,n
.L390:
	.sleb128	11
	.byte		"RteWriteCurrentChannelRequestCallout"
	.byte		0
	.4byte		.L959
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L391:
	.sleb128	11
	.byte		"CurrentChannelRequestData"
	.byte		0
	.4byte		.L867
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L958:
.L943:
	.sleb128	10
	.4byte		.L957
	.uleb128	121
	.uleb128	1
	.4byte		.L967-.L2
	.uleb128	32
.L380:
	.sleb128	11
	.byte		"PBtoPCHashValuePtr"
	.byte		0
	.4byte		.L968
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L381:
	.sleb128	11
	.byte		"PBtoLTHashValuePtr"
	.byte		0
	.4byte		.L968
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L382:
	.sleb128	11
	.byte		"UsersPtr"
	.byte		0
	.4byte		.L972
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L383:
	.sleb128	11
	.byte		"ChannelsPtr"
	.byte		0
	.4byte		.L834
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L384:
	.sleb128	11
	.byte		"PncsPtr"
	.byte		0
	.4byte		.L977
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	11
	.byte		"PncRxSignalsPtr"
	.byte		0
	.4byte		.L982
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	11
	.byte		"PncsNum"
	.byte		0
	.4byte		.L987
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	11
	.byte		"PncRxSignalsNum"
	.byte		0
	.4byte		.L987
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L388:
	.sleb128	11
	.byte		"UsersNum"
	.byte		0
	.4byte		.L988
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L389:
	.sleb128	11
	.byte		"PncEnabled"
	.byte		0
	.4byte		.L840
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
	.sleb128	0
.L967:
.L986:
	.sleb128	10
	.4byte		.L957
	.uleb128	121
	.uleb128	1
	.4byte		.L989-.L2
	.uleb128	12
.L377:
	.sleb128	11
	.byte		"SignalId"
	.byte		0
	.4byte		.L990
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L378:
	.sleb128	11
	.byte		"SignalKind"
	.byte		0
	.4byte		.L992
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L379:
	.sleb128	11
	.byte		"SignalChannel"
	.byte		0
	.4byte		.L872
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L989:
.L981:
	.sleb128	10
	.4byte		.L957
	.uleb128	121
	.uleb128	1
	.4byte		.L995-.L2
	.uleb128	32
.L366:
	.sleb128	11
	.byte		"PncID"
	.byte		0
	.4byte		.L996
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	11
	.byte		"PncIdByteIndex"
	.byte		0
	.4byte		.L988
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L368:
	.sleb128	11
	.byte		"PncIdBitIndex"
	.byte		0
	.4byte		.L988
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L369:
	.sleb128	11
	.byte		"PncTimerMaxValue"
	.byte		0
	.4byte		.L987
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L370:
	.sleb128	11
	.byte		"PncTimerHandlerChannelID"
	.byte		0
	.4byte		.L872
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L371:
	.sleb128	11
	.byte		"PncChannelIDsPtr"
	.byte		0
	.4byte		.L998
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L372:
	.sleb128	11
	.byte		"PncChannelIDsNum"
	.byte		0
	.4byte		.L988
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L373:
	.sleb128	11
	.byte		"PncComRxSignalIndexesPtr"
	.byte		0
	.4byte		.L1000
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L374:
	.sleb128	11
	.byte		"PncComRxSignalIndexesNum"
	.byte		0
	.4byte		.L987
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L375:
	.sleb128	11
	.byte		"PncUserIDsPtr"
	.byte		0
	.4byte		.L1002
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L376:
	.sleb128	11
	.byte		"PncUserIDsNum"
	.byte		0
	.4byte		.L987
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L995:
.L934:
	.sleb128	10
	.4byte		.L957
	.uleb128	121
	.uleb128	1
	.4byte		.L1004-.L2
	.uleb128	4
.L362:
	.sleb128	11
	.byte		"PncNewFullComRequestCount"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L363:
	.sleb128	11
	.byte		"RequestsChanged"
	.byte		0
	.4byte		.L841
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L1004:
.L976:
	.sleb128	10
	.4byte		.L957
	.uleb128	121
	.uleb128	1
	.4byte		.L1005-.L2
	.uleb128	8
.L356:
	.sleb128	11
	.byte		"AllChannelIDsPtr"
	.byte		0
	.4byte		.L998
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L357:
	.sleb128	11
	.byte		"AllChannelIDsNum"
	.byte		0
	.4byte		.L987
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L358:
	.sleb128	11
	.byte		"DirectChannelIDsNum"
	.byte		0
	.4byte		.L987
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L1005:
.L838:
	.sleb128	10
	.4byte		.L957
	.uleb128	121
	.uleb128	1
	.4byte		.L1006-.L2
	.uleb128	48
.L342:
	.sleb128	11
	.byte		"UserIDsPtr"
	.byte		0
	.4byte		.L1002
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L343:
	.sleb128	11
	.byte		"AllUserIDsNum"
	.byte		0
	.4byte		.L987
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L344:
	.sleb128	11
	.byte		"DirectUserIDsNum"
	.byte		0
	.4byte		.L987
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L345:
	.sleb128	11
	.byte		"PncIndexesPtr"
	.byte		0
	.4byte		.L1002
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L346:
	.sleb128	11
	.byte		"PncStatesPtr"
	.byte		0
	.4byte		.L1007
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L347:
	.sleb128	11
	.byte		"PncRequestsPtr"
	.byte		0
	.4byte		.L1011
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L348:
	.sleb128	11
	.byte		"ChannelPncsNum"
	.byte		0
	.4byte		.L988
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L349:
	.sleb128	11
	.byte		"FullComTimerInitValue"
	.byte		0
	.4byte		.L987
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L350:
	.sleb128	11
	.byte		"NmVariant"
	.byte		0
	.4byte		.L1013
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L351:
	.sleb128	11
	.byte		"TxSignalIDsPtr"
	.byte		0
	.4byte		.L1016
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L352:
	.sleb128	11
	.byte		"TxSignalBufferPtr"
	.byte		0
	.4byte		.L1018
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L353:
	.sleb128	11
	.byte		"TxSignalIDsNum"
	.byte		0
	.4byte		.L988
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L354:
	.sleb128	11
	.byte		"BusType"
	.byte		0
	.4byte		.L1020
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L355:
	.sleb128	11
	.byte		"PncNmRequestEnabled"
	.byte		0
	.4byte		.L840
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L1006:
.L832:
	.sleb128	10
	.4byte		.L957
	.uleb128	121
	.uleb128	1
	.4byte		.L1023-.L2
	.uleb128	24
.L324:
	.sleb128	11
	.byte		"FullComTimer"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L325:
	.sleb128	11
	.byte		"ChannelSubState"
	.byte		0
	.4byte		.L904
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L326:
	.sleb128	11
	.byte		"HaltInNoComState"
	.byte		0
	.4byte		.L841
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L327:
	.sleb128	11
	.byte		"LastNmIndicatedMode"
	.byte		0
	.4byte		.L1024
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L328:
	.sleb128	11
	.byte		"IsLastNmIndicatedModeUpdated"
	.byte		0
	.4byte		.L841
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L329:
	.sleb128	11
	.byte		"NmRestartIndication"
	.byte		0
	.4byte		.L841
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L330:
	.sleb128	11
	.byte		"NmNetworkStartIndication"
	.byte		0
	.4byte		.L841
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L331:
	.sleb128	11
	.byte		"LastBusSMIndicatedMode"
	.byte		0
	.4byte		.L914
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L332:
	.sleb128	11
	.byte		"EcuMWakeUpIndication"
	.byte		0
	.4byte		.L841
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L333:
	.sleb128	11
	.byte		"ActiveDiagnostic"
	.byte		0
	.4byte		.L841
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L334:
	.sleb128	11
	.byte		"CommunicationAllowed"
	.byte		0
	.4byte		.L841
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L335:
	.sleb128	11
	.byte		"InitialTransition"
	.byte		0
	.4byte		.L841
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L336:
	.sleb128	11
	.byte		"BusSMReturnValue"
	.byte		0
	.4byte		.L964
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L337:
	.sleb128	11
	.byte		"UserRequestsChanged"
	.byte		0
	.4byte		.L841
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L338:
	.sleb128	11
	.byte		"DirectUserRequestsChanged"
	.byte		0
	.4byte		.L841
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L339:
	.sleb128	11
	.byte		"ChannelRequestedMode"
	.byte		0
	.4byte		.L914
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L340:
	.sleb128	11
	.byte		"DirectUsersRequestedMode"
	.byte		0
	.4byte		.L914
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L341:
	.sleb128	11
	.byte		"PncsRequestedMode"
	.byte		0
	.4byte		.L914
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L1023:
.L870:
	.sleb128	10
	.4byte		.L1026
	.uleb128	65
	.uleb128	14
	.4byte		.L1027-.L2
	.uleb128	5
.L205:
	.sleb128	11
	.byte		"numberOfRequesters"
	.byte		0
	.4byte		.L860
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L206:
	.sleb128	11
	.byte		"handleArray"
	.byte		0
	.4byte		.L1028
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L1027:
	.section	.debug_info,,n
.L1025:
	.sleb128	12
	.4byte		.L957
	.uleb128	112
	.uleb128	1
	.4byte		.L1030-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"COMM_NM_MODE_NO_CHANGE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"COMM_NM_MODE_NETWORK"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"COMM_NM_MODE_PREPARE_BUS_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"COMM_NM_MODE_BUS_SLEEP"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1030:
.L1015:
	.sleb128	12
	.4byte		.L957
	.uleb128	103
	.uleb128	1
	.4byte		.L1031-.L2
	.uleb128	4
	.sleb128	13
	.byte		"COMM_FULL"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"COMM_LIGHT"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"COMM_NONE"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"COMM_PASSIVE"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1031:
.L1022:
	.sleb128	12
	.4byte		.L957
	.uleb128	93
	.uleb128	1
	.4byte		.L1032-.L2
	.uleb128	4
	.sleb128	13
	.byte		"COMM_BUS_TYPE_CAN"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"COMM_BUS_TYPE_ETH"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"COMM_BUS_TYPE_FR"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"COMM_BUS_TYPE_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"COMM_BUS_TYPE_LIN"
	.byte		0
	.sleb128	4
	.sleb128	0
.L1032:
.L994:
	.sleb128	12
	.4byte		.L957
	.uleb128	86
	.uleb128	1
	.4byte		.L1033-.L2
	.uleb128	4
	.sleb128	13
	.byte		"COMM_SIGNAL_KIND_EIRA"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"COMM_SIGNAL_KIND_ERA"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1033:
.L1010:
	.sleb128	12
	.4byte		.L957
	.uleb128	57
	.uleb128	1
	.4byte		.L1034-.L2
	.uleb128	4
	.sleb128	13
	.byte		"PNC_REQUESTED"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"PNC_READY_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"PNC_PREPARE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"PNC_NO_COMMUNICATION"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"PNC_FULL_COMMUNICATION"
	.byte		0
	.sleb128	4
	.sleb128	0
.L1034:
.L938:
	.sleb128	12
	.4byte		.L957
	.uleb128	50
	.uleb128	1
	.4byte		.L1035-.L2
	.uleb128	4
	.sleb128	13
	.byte		"COMM_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"COMM_INIT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1035:
	.section	.debug_info,,n
.L831:
	.sleb128	14
	.byte		"ComM_ChannelStateType"
	.byte		0
	.4byte		.L832
	.section	.debug_info,,n
.L830:
	.sleb128	15
	.4byte		.L831
	.section	.debug_info,,n
.L829:
	.sleb128	16
	.4byte		.L830
.L837:
	.sleb128	14
	.byte		"ComM_ChannelType"
	.byte		0
	.4byte		.L838
.L836:
	.sleb128	16
	.4byte		.L837
.L835:
	.sleb128	15
	.4byte		.L836
.L834:
	.sleb128	16
	.4byte		.L835
	.section	.debug_info,,n
.L842:
	.sleb128	17
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L841:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L842
.L840:
	.sleb128	16
	.4byte		.L841
.L849:
	.sleb128	17
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L848:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L849
.L860:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L842
.L859:
	.sleb128	14
	.byte		"ComM_UserHandleType"
	.byte		0
	.4byte		.L860
.L858:
	.sleb128	16
	.4byte		.L859
.L869:
	.sleb128	14
	.byte		"ComM_UserHandleArrayType"
	.byte		0
	.4byte		.L870
.L868:
	.sleb128	15
	.4byte		.L869
.L867:
	.sleb128	16
	.4byte		.L868
.L873:
	.sleb128	14
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L860
.L872:
	.sleb128	16
	.4byte		.L873
.L904:
	.sleb128	14
	.byte		"ComM_StateType"
	.byte		0
	.4byte		.L860
.L903:
	.sleb128	16
	.4byte		.L904
.L914:
	.sleb128	14
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L860
.L913:
	.sleb128	16
	.4byte		.L914
.L933:
	.sleb128	14
	.byte		"ComM_PncSmOutputType"
	.byte		0
	.4byte		.L934
.L937:
	.sleb128	14
	.byte		"ComM_InitStatusType"
	.byte		0
	.4byte		.L938
.L942:
	.sleb128	14
	.byte		"ComM_ConfigType"
	.byte		0
	.4byte		.L943
.L941:
	.sleb128	16
	.4byte		.L942
.L940:
	.sleb128	15
	.4byte		.L941
	.section	.debug_info,,n
.L945:
	.sleb128	18
	.4byte		.L946-.L2
	.4byte		.L831
	.section	.debug_info,,n
	.sleb128	19
	.sleb128	0
.L946:
.L951:
	.sleb128	14
	.byte		"ComM_CurrentChannelRequestPortType"
	.byte		0
	.4byte		.L952
.L950:
	.sleb128	16
	.4byte		.L951
.L948:
	.sleb128	18
	.4byte		.L949-.L2
	.4byte		.L950
	.sleb128	19
	.sleb128	0
.L949:
.L955:
	.sleb128	18
	.4byte		.L956-.L2
	.4byte		.L914
	.sleb128	19
	.sleb128	0
.L956:
.L964:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L860
	.section	.debug_info,,n
.L962:
	.sleb128	20
	.4byte		.L963-.L2
	.4byte		.L964
	.byte		0x1
.L966:
	.sleb128	16
	.4byte		.L869
.L965:
	.sleb128	15
	.4byte		.L966
	.section	.debug_info,,n
	.sleb128	21
	.4byte		.L965
	.sleb128	0
.L963:
.L961:
	.sleb128	15
	.4byte		.L962
.L960:
	.sleb128	14
	.byte		"ComM_RteWriteCurrentChannelRequestCalloutType"
	.byte		0
	.4byte		.L961
.L959:
	.sleb128	16
	.4byte		.L960
.L971:
	.sleb128	17
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L970:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L971
.L969:
	.sleb128	16
	.4byte		.L970
.L968:
	.sleb128	15
	.4byte		.L969
.L975:
	.sleb128	14
	.byte		"ComM_UserType"
	.byte		0
	.4byte		.L976
.L974:
	.sleb128	16
	.4byte		.L975
.L973:
	.sleb128	15
	.4byte		.L974
.L972:
	.sleb128	16
	.4byte		.L973
.L980:
	.sleb128	14
	.byte		"ComM_PncType"
	.byte		0
	.4byte		.L981
.L979:
	.sleb128	16
	.4byte		.L980
.L978:
	.sleb128	15
	.4byte		.L979
.L977:
	.sleb128	16
	.4byte		.L978
.L985:
	.sleb128	14
	.byte		"ComM_PncRxSignalType"
	.byte		0
	.4byte		.L986
.L984:
	.sleb128	16
	.4byte		.L985
.L983:
	.sleb128	15
	.4byte		.L984
.L982:
	.sleb128	16
	.4byte		.L983
.L987:
	.sleb128	16
	.4byte		.L848
.L988:
	.sleb128	16
	.4byte		.L860
.L991:
	.sleb128	14
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L848
.L990:
	.sleb128	16
	.4byte		.L991
.L993:
	.sleb128	14
	.byte		"ComM_PncComSignalKindType"
	.byte		0
	.4byte		.L994
.L992:
	.sleb128	16
	.4byte		.L993
.L997:
	.sleb128	14
	.byte		"PNCHandleType"
	.byte		0
	.4byte		.L860
.L996:
	.sleb128	16
	.4byte		.L997
.L999:
	.sleb128	15
	.4byte		.L872
.L998:
	.sleb128	16
	.4byte		.L999
.L1001:
	.sleb128	15
	.4byte		.L988
.L1000:
	.sleb128	16
	.4byte		.L1001
.L1003:
	.sleb128	15
	.4byte		.L858
.L1002:
	.sleb128	16
	.4byte		.L1003
.L1009:
	.sleb128	14
	.byte		"ComM_PncModeType"
	.byte		0
	.4byte		.L1010
.L1008:
	.sleb128	15
	.4byte		.L1009
.L1007:
	.sleb128	16
	.4byte		.L1008
.L1012:
	.sleb128	15
	.4byte		.L914
.L1011:
	.sleb128	16
	.4byte		.L1012
.L1014:
	.sleb128	14
	.byte		"ComM_NmVariantType"
	.byte		0
	.4byte		.L1015
.L1013:
	.sleb128	16
	.4byte		.L1014
.L1017:
	.sleb128	15
	.4byte		.L987
.L1016:
	.sleb128	16
	.4byte		.L1017
.L1019:
	.sleb128	15
	.4byte		.L860
.L1018:
	.sleb128	16
	.4byte		.L1019
.L1021:
	.sleb128	14
	.byte		"ComM_BusTypeType"
	.byte		0
	.4byte		.L1022
.L1020:
	.sleb128	16
	.4byte		.L1021
.L1024:
	.sleb128	14
	.byte		"ComM_NmCurrentModeType"
	.byte		0
	.4byte		.L1025
.L1028:
	.sleb128	18
	.4byte		.L1029-.L2
	.4byte		.L859
	.section	.debug_info,,n
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L1029:
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L833:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L839:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locend
.L850:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo3),5
	.d2locend
.L852:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo3),7
	.d2locend
.L861:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),0
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),0
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),0
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo2),0
	.d2locend
.L871:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locend
.L874:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo15),4
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locend
.L876:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo17),4
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),4
	.d2locend
.L878:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo22),5
	.d2locend
.L880:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),6
	.d2locend
.L886:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),31
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),31
	.d2locend
.L892:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),5
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),5
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),5
	.d2locend
.L894:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),4
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),4
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),4
	.d2locend
.L896:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),3
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo42),3
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo43),3
	.d2locend
.L902:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),3
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),31
	.d2locend
.L905:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo48),4
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),30
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo51),4
	.d2locend
.L907:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),0
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo47),27
	.d2locend
.L915:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),3
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo47),29
	.d2locend
.L921:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),3
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),31
	.d2locend
.L927:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),30
	.d2locend
.L929:
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),0
	.d2locend
.L931:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo59),29
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_MainFunction"
	.wrcm.nstrlist "calls", "ComM_CheckCallouts","ComM_FullComNetworkRequestedState","ComM_FullComReadySleepState","ComM_NoCommunicationState","ComM_UpdateChannelRequestedMode","SchM_Enter_ComM","SchM_Exit_ComM"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "ComM_CheckCallouts"
	.wrcm.nstrlist "calls", "ComM_CheckChannelRequestersCallout","ComM_GetChannelState","ComM_RequestModetoStateManager"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "ComM_CheckChannelRequestersCallout"
	.wrcm.nstrlist "calls", "ComM_SendChannelRequesters"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "ComM_SendChannelRequesters"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "ComM_UpdateChannelRequestedMode"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_MainFunction.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_MainFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_MainFunction.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_MainFunction.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_MainFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_MainFunction.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_MainFunction.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
