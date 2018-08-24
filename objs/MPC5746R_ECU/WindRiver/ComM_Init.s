#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_Init.c"
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
# FUNC(Std_ReturnType, COMM_CODE) ComM_ConsistencyCheck(P2CONST(ComM_ConfigType, AUTOMATIC, COMM_APPL_DATA) ConfigPtr)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_Init.c"
        .d2line         60,33
#$$ld
.L777:

#$$bf	ComM_ConsistencyCheck,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		ComM_ConsistencyCheck
	.d2_cfa_start __cie
ComM_ConsistencyCheck:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ConfigPtr=r3 ConfigPtr=r3
	.d2prologue_end
# {
#     VAR(Std_ReturnType, AUTOMATIC) retVal = E_NOT_OK;
	.d2line		62
	diab.li		r5,1		# retVal=r5
# 
#     if( (ComM_LTtoPCHashValue == COMM_PC_HASH_VALUE)
	.d2line		64
.Llo3:
	lis		r4,ComM_LTtoPCHashValue@ha
	lwz		r0,ComM_LTtoPCHashValue@l(r4)
	e_lis		r4,26129
	e_or2i		r4,31283
	se_cmpl		r0,r4
	bc		0,2,.L758	# ne
	se_cmpi		r3,0		# ConfigPtr=r3
	bc		1,2,.L758	# eq
	lwz		r4,0(r3)		# ConfigPtr=r3
	lwz		r0,0(r4)
	e_lis		r4,26129
	e_or2i		r4,31283
	se_cmpl		r0,r4
	bc		0,2,.L758	# ne
	lwz		r3,4(r3)		# ConfigPtr=r3 ConfigPtr=r3
	lwz		r0,0(r3)		# ConfigPtr=r3
	lis		r3,ComM_LTHashValue@ha		# ConfigPtr=r3
	lwz		r3,ComM_LTHashValue@l(r3)		# ConfigPtr=r3 ConfigPtr=r3
	se_cmpl		r0,r3		# ConfigPtr=r3
#             && (ConfigPtr != NULL_PTR)
#             && (*ConfigPtr->PBtoPCHashValuePtr == COMM_PC_HASH_VALUE)
#             && (*ConfigPtr->PBtoLTHashValuePtr == ComM_LTHashValue)
#     )
#     {
#         retVal = E_OK;
	.d2line		70
	isel		r5,0,r5,2		# retVal=r5 retVal=r5
.L758:
#     }
# 
#     return retVal;
	.d2line		73
.Llo2:
	rlwinm		r3,r5,0,24,31		# ConfigPtr=r3 retVal=r5
# }
	.d2line		74
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo4:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L778:
	.type		ComM_ConsistencyCheck,@function
	.size		ComM_ConsistencyCheck,.-ComM_ConsistencyCheck
# Number of nodes = 26

# Allocations for ComM_ConsistencyCheck
#	?a4		ConfigPtr
#	?a5		retVal
# FUNC(void, COMM_CODE) ComM_Init(P2CONST(ComM_ConfigType, AUTOMATIC, COMM_APPL_DATA) ConfigPtr)
	.align		2
	.section	.text_vle
        .d2line         87,23
#$$ld
.L793:

#$$bf	ComM_Init,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.globl		ComM_Init
	.d2_cfa_start __cie
ComM_Init:
.Llo5:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r6,r3		# ConfigPtr=r6 ConfigPtr=r3
	.d2prologue_end
# {
#     VAR(NetworkHandleType, AUTOMATIC) channelIndex;
#     VAR(uint16, AUTOMATIC) userIndex;
# 
#     /* Exclusive area is not needed to protect non reentrant Init function  */
#     ComM_InitStatus = COMM_UNINIT;
	.d2line		93
.Llo6:
	diab.li		r0,0
.Llo7:
	lis		r3,ComM_InitStatus@ha
	e_add16i		r3,r3,ComM_InitStatus@l
	stw		r0,0(r3)
# 
# #if(COMM_DEV_ERROR_DETECT == STD_ON)
#     /* Check if PB Configuration pointer is not NULL pointer */
#     if(ConfigPtr == NULL_PTR)
#     {
#         COMM_DET_REPORT_ERROR(COMM_INIT_API_ID, COMM_E_WRONG_PARAMETERS);
#     }
#     else
# #endif
#     {
#         if(ComM_ConsistencyCheck(ConfigPtr) == E_OK)
	.d2line		104
	mr		r3,r6		# ConfigPtr=r3 ConfigPtr=r6
	bl		ComM_ConsistencyCheck
	e_andi.		r3,r3,255
	bc		0,2,.L760	# ne
#         {
# #if(COMM_NVM_SUPPORT == STD_ON && COMM_WAKEUP_INHIBITION_ENABLED == STD_ON)
#             VAR(boolean, AUTOMATIC) isNvmRamDataOK = FALSE;
# #endif
#             /* Assign PB Configuration pointer to ComM global pointer */
#             ComM_ConfigPtr = ConfigPtr;
	.d2line		110
	lis		r3,ComM_ConfigPtr@ha		# channelIndex=r3
.Llo9:
	e_add16i		r3,r3,ComM_ConfigPtr@l		# channelIndex=r3 channelIndex=r3
	stw		r6,0(r3)		# channelIndex=r3 ConfigPtr=r6
# 
# #if(COMM_MODE_LIMITATION_ENABLED == STD_ON)
#             ComM_RejectedRequestCount = COMM_DEFAULT_REJECTEDUSERCOUNT;
# #endif
# #if(COMM_MODE_LIMITATION_ENABLED == STD_ON || COMM_WAKEUP_INHIBITION_ENABLED == STD_ON)
#             ComM_EcuGroupClassification = ComM_DefaultEcuGroupClassification;
# #endif
# 
# #if(COMM_NVM_SUPPORT == STD_ON)
#             /* If Nvm is referenced and supported we read the data from ROM to RAM. */
#             if(ComM_NvmModuleReferenced == TRUE)
#             {
#                 VAR(NvM_RequestResultType, AUTOMATIC) NvM_RequestResult;
#                 VAR(Std_ReturnType, AUTOMATIC) nvmRetVal = NvM_GetErrorStatus(ComM_GlobalNvmBlockIdentifier, &NvM_RequestResult);
# 
#                 /* If NvmData is correct */
#                 if( (nvmRetVal == E_OK) && (NvM_RequestResult == NVM_REQ_OK) )
#                 {
# #if(COMM_MODE_LIMITATION_ENABLED == STD_ON)
#                     CONST(uint16, AUTOMATIC) rejectedUserCountHighByte = (uint16)ComM_GlobalNvMDataPtr[ComM_REJECTEDREQUESTCOUNT_HIGH_BYTEINDEX];
# 
#                     ComM_RejectedRequestCount =
#                             (uint16)(rejectedUserCountHighByte << 8U) + (uint16)ComM_GlobalNvMDataPtr[ComM_REJECTEDREQUESTCOUNT_LOW_BYTEINDEX];
# #endif
# #if(COMM_MODE_LIMITATION_ENABLED == STD_ON || COMM_WAKEUP_INHIBITION_ENABLED == STD_ON)
#                     ComM_EcuGroupClassification = ComM_GlobalNvMDataPtr[COMM_ECUGROUPCLASSIFICATION_BYTEINDEX];
# #endif
# #if(COMM_WAKEUP_INHIBITION_ENABLED == STD_ON)
#                     isNvmRamDataOK = TRUE;
# #endif
#                 }
#             }
# #endif
# 
#             /* Loop through all ComM Channels */
#             for(channelIndex = 0U; channelIndex < ComM_ChannelsNum; channelIndex++)
	.d2line		146
	diab.li		r3,0		# channelIndex=r3
.L762:
.Llo8:
	rlwinm		r5,r3,0,24,31		# channelIndex=r3
	lis		r4,ComM_ChannelsNum@ha		# channelStatePtr=r4
.Llo15:
	lbz		r0,ComM_ChannelsNum@l(r4)		# channelStatePtr=r4
	se_cmp		r5,r0
	bc		0,0,.L764	# ge
	.section	.text_vle
.L804:
#             {
#                 CONSTP2VAR(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) channelStatePtr = &ComM_ChannelStates[channelIndex];
	.d2line		148
.Llo16:
	rlwinm		r5,r3,0,24,31		# channelIndex=r3
	lis		r4,ComM_ChannelStates@ha		# channelStatePtr=r4
.Llo17:
	e_add16i		r4,r4,ComM_ChannelStates@l		# channelStatePtr=r4 channelStatePtr=r4
	rlwinm		r0,r5,5,0,26
	se_slwi		r5,3
	subf		r5,r5,r0
	se_add		r4,r5		# channelStatePtr=r4 channelStatePtr=r4
	mr		r4,r4		# channelStatePtr=r4 channelStatePtr=r4
# #if(COMM_PNC_SUPPORT == STD_ON || COMM_MODE_LIMITATION_ENABLED == STD_ON || COMM_NM_VARIANT_FULL == STD_ON || COMM_NM_VARIANT_PASSIVE == STD_ON)
#                 CONSTP2CONST(ComM_ChannelType, AUTOMATIC, COMM_APPL_CONST) channelConfigPtr = &ComM_ConfigPtr->ChannelsPtr[channelIndex];
# #endif
# 
# #if(COMM_WAKEUP_INHIBITION_ENABLED == STD_ON)
#                 channelStatePtr->ComMNoWakeup = ComM_DefaultNoWakeupValuesPerChannel[channelIndex];
# #if(COMM_NVM_SUPPORT == STD_ON)
#                 /* If the NvMData is correct */
#                 if(isNvmRamDataOK == TRUE)
#                 {
#                     channelStatePtr->ComMNoWakeup = (boolean)ComM_GlobalNvMDataPtr[COMM_NOWAKEUP_BYTEINDEX + channelIndex];
#                 }
# #endif
# #endif /* COMM_WAKEUP_INHIBITION_ENABLED */
# 
# #if(COMM_PNC_SUPPORT == STD_ON)
#                 {
#                     /* Initialize the variables what belong to PNCs of this Channel */
#                     VAR(uint8, AUTOMATIC) pncIndex;
#                     for(pncIndex = 0U; pncIndex < channelConfigPtr->ChannelPncsNum; pncIndex++)
#                     {
#                         channelConfigPtr->PncStatesPtr[pncIndex] = PNC_NO_COMMUNICATION;
#                         channelConfigPtr->PncRequestsPtr[pncIndex] = COMM_NO_COMMUNICATION;
#                     }
#                 }
# 
#                 /* Initialize last sent COM TX signal buffer */
#                 if(channelConfigPtr->TxSignalIDsNum > 0U)
#                 {
#                     VAR(uint8, AUTOMATIC) signalByteIndex;
#                     for(signalByteIndex = 0U; signalByteIndex < COMM_PNC_SIGNAL_DATASIZE_IN_BYTE; signalByteIndex++)
#                     {
#                         /* All PNCs are inactive at startup */
#                         channelConfigPtr->TxSignalBufferPtr[signalByteIndex] = 0U;
#                     }
#                 }
# 
#                 ComM_PncEcuMWakeUpIndications[channelIndex] = FALSE;
# #endif
# 
#                 channelStatePtr->CommunicationAllowed = FALSE; /* [ComM884] */
	.d2line		189
	diab.li		r5,0
	stb		r5,14(r4)		# channelStatePtr=r4
# 
#                 /* Initialize channel state as "No Communication" */
#                 channelStatePtr->ChannelSubState = COMM_NO_COM_NO_PENDING_REQUEST;
	.d2line		192
	stb		r5,2(r4)		# channelStatePtr=r4
# 
#                 /* The BusNm starts in BusSleepMode after initialization */
#                 channelStatePtr->LastNmIndicatedMode = COMM_NM_MODE_BUS_SLEEP;
	.d2line		195
	diab.li		r0,3
	stw		r0,4(r4)		# channelStatePtr=r4
#                 channelStatePtr->IsLastNmIndicatedModeUpdated = FALSE;
	.d2line		196
	stb		r5,8(r4)		# channelStatePtr=r4
# 
#                 channelStatePtr->EcuMWakeUpIndication = FALSE;
	.d2line		198
	stb		r5,12(r4)		# channelStatePtr=r4
#                 channelStatePtr->NmRestartIndication = FALSE;
	.d2line		199
	stb		r5,9(r4)		# channelStatePtr=r4
#                 channelStatePtr->NmNetworkStartIndication = FALSE;
	.d2line		200
	stb		r5,10(r4)		# channelStatePtr=r4
#                 channelStatePtr->ActiveDiagnostic = FALSE;
	.d2line		201
	stb		r5,13(r4)		# channelStatePtr=r4
#                 channelStatePtr->HaltInNoComState = FALSE;
	.d2line		202
	stb		r5,3(r4)		# channelStatePtr=r4
# 
#                 /* Initialize Bus SM mode indication for "No Communication" */
#                 channelStatePtr->LastBusSMIndicatedMode = COMM_NO_COMMUNICATION;
	.d2line		205
	stb		r5,11(r4)		# channelStatePtr=r4
# 
# #if(COMM_NM_VARIANT_FULL == STD_ON)
#                 channelStatePtr->RequestedNmMode = COMM_NM_REQ_NONE;
#                 channelStatePtr->PncNmRequestRequired = FALSE;
#                 channelStatePtr->CallNmNetworkRelease = FALSE;
# #endif
#                 /* This is the initial transition to COMM_NO_COMMUNICATION mode */
#                 channelStatePtr->InitialTransition = TRUE;
	.d2line		213
	diab.li		r0,1
	stb		r0,15(r4)		# channelStatePtr=r4
# 
#                 channelStatePtr->BusSMReturnValue = E_OK;
	.d2line		215
	stb		r5,16(r4)		# channelStatePtr=r4
# 
# #if(COMM_MODE_LIMITATION_ENABLED == STD_ON)
#                 channelStatePtr->ComMNoCom = channelConfigPtr->ComMNoComInitValue;
# #endif
# 
# #if(COMM_NM_VARIANT_LIGHT == STD_ON || COMM_NM_VARIANT_NONE == STD_ON)
#                 channelStatePtr->FullComTimer = 0U;
	.d2line		222
	sth		r5,0(r4)		# channelStatePtr=r4
# #endif
# 
# #if(COMM_NM_VARIANT_LIGHT == STD_ON)
#                 channelStatePtr->LightTimeoutTimer = 0U;
# #endif
# 
# #if(COMM_NM_VARIANT_FULL == STD_ON)
#                 if(channelConfigPtr->NmVariant == COMM_FULL)
#                 {
#                     (void)Nm_NetworkRelease(channelIndex);
#                 }
# #endif
# 
# #if(COMM_NM_VARIANT_FULL == STD_ON || COMM_NM_VARIANT_PASSIVE == STD_ON)
#                 if( (channelConfigPtr->NmVariant == COMM_FULL) || (channelConfigPtr->NmVariant == COMM_PASSIVE) )
#                 {
#                     channelStatePtr->CallPassiveStartup = FALSE;
#                 }
# #endif
# 
#                 /* Don't have to call EnterNoCommunicationState function
#                  * it's enough to set the SubState and the SM Mode */
#                 channelStatePtr->ChannelSubState = COMM_NO_COM_NO_PENDING_REQUEST;
# 
#                 channelStatePtr->UserRequestsChanged = FALSE;
	.d2line		247
	stb		r5,17(r4)		# channelStatePtr=r4
#                 channelStatePtr->DirectUserRequestsChanged = FALSE;
	.d2line		248
	stb		r5,18(r4)		# channelStatePtr=r4
# 
#                 channelStatePtr->ChannelRequestedMode = COMM_NO_COMMUNICATION;
	.d2line		250
	stb		r5,19(r4)		# channelStatePtr=r4
#                 channelStatePtr->DirectUsersRequestedMode = COMM_NO_COMMUNICATION;
	.d2line		251
	stb		r5,20(r4)		# channelStatePtr=r4
#                 channelStatePtr->PncsRequestedMode = COMM_NO_COMMUNICATION;
	.d2line		252
	stb		r5,21(r4)		# channelStatePtr=r4
# 
#                 if(ComM_CurrentChannelRequestPorts[channelIndex].CurrentChannelRequestData != NULL_PTR)
	.d2line		254
	lis		r4,(ComM_CurrentChannelRequestPorts+4)@ha		# channelStatePtr=r4
	e_add16i		r4,r4,(ComM_CurrentChannelRequestPorts+4)@l		# channelStatePtr=r4 channelStatePtr=r4
	rlwinm		r5,r3,3,21,28		# channelIndex=r3
	lwzx		r0,r4,r5		# channelStatePtr=r4
	se_cmpi		r0,0
	bc		1,2,.L765	# eq
#                 {
#                     ComM_CurrentChannelRequestPorts[channelIndex].CurrentChannelRequestData->numberOfRequesters = 0U;
	.d2line		256
.Llo18:
	diab.li		r0,0
	lis		r4,(ComM_CurrentChannelRequestPorts+4)@ha		# channelStatePtr=r4
.Llo19:
	e_add16i		r4,r4,(ComM_CurrentChannelRequestPorts+4)@l		# channelStatePtr=r4 channelStatePtr=r4
	rlwinm		r5,r3,3,21,28		# channelIndex=r3
	lwzx		r4,r4,r5		# channelStatePtr=r4 channelStatePtr=r4
	stb		r0,0(r4)		# channelStatePtr=r4
.L765:
	.section	.text_vle
.L805:
#                 }
#             }
	.d2line		258
.Llo20:
	diab.addi		r5,r3,1		# channelIndex=r3
	se_addi		r3,1		# channelIndex=r3 channelIndex=r3
	b		.L762
.L764:
# 
#             /* Loop through on all ComM Users */
#             for(userIndex = 0U; userIndex < (uint16)ComM_ConfigPtr->UsersNum; userIndex++)
	.d2line		261
.Llo10:
	diab.li		r3,0		# userIndex=r3
.L766:
.Llo11:
	rlwinm		r0,r3,0,16,31		# userIndex=r3
	lis		r4,ComM_ConfigPtr@ha		# channelStatePtr=r4
.Llo21:
	lwz		r4,ComM_ConfigPtr@l(r4)		# channelStatePtr=r4 channelStatePtr=r4
	lbz		r4,28(r4)		# channelStatePtr=r4 channelStatePtr=r4
	se_cmp		r0,r4		# channelStatePtr=r4
	bc		0,0,.L768	# ge
#             {
#                 ComM_UserRequests[userIndex] = COMM_NO_COMMUNICATION;
	.d2line		263
.Llo22:
	diab.li		r5,0
	lis		r4,ComM_UserRequests@ha		# channelStatePtr=r4
.Llo23:
	e_add16i		r4,r4,ComM_UserRequests@l		# channelStatePtr=r4 channelStatePtr=r4
	rlwinm		r0,r3,0,16,31		# userIndex=r3
	stbx		r5,r4,r0		# channelStatePtr=r4
#             }
	.d2line		264
	diab.addi		r0,r3,1		# userIndex=r3
	se_addi		r3,1		# userIndex=r3 userIndex=r3
	b		.L766
.L768:
# 
# #if(COMM_PNC_SUPPORT == STD_ON)
#             /* [ComM910] [ComM926] [ComM927] [DEV_ComM911] [ComM953] */
#             /* PNC Initialization */
#             if(ComM_ConfigPtr->PncEnabled == TRUE)
#             {
#                 VAR(uint16, AUTOMATIC) index;
# 
#                 /* Initialize the variables what belong to PNCs. */
#                 for(index = 0U; index < ComM_ConfigPtr->PncsNum; index++)
#                 {
#                     ComM_PncStatuses[index].PncState = PNC_NO_COMMUNICATION;
#                     ComM_PncStatuses[index].PncTimer = 0U;
# #if(COMM_DELAY_PNC_REQUESTED == STD_ON)
#                     ComM_PncStatuses[index].BswMNotificationNeeded = FALSE;
# #endif
#                 }
# 
#                 for(index = 0U; index < (uint16)ComM_ConfigPtr->PncRxSignalsNum; index++)
#                 {
#                     VAR(uint8, AUTOMATIC) signalDataIndex;
#                     ComM_RxSignals[index].ComCbkCounter = 0U;
#                     ComM_RxSignals[index].ComCbkCounterControl = 0U;
#                     for(signalDataIndex = 0U; signalDataIndex < COMM_PNC_SIGNAL_DATASIZE_IN_BYTE; signalDataIndex++)
#                     {
#                         ComM_RxSignals[index].RxSignalDataArray[signalDataIndex] = 0U;
#                     }
#                 }
#             }
# #endif
#             /* Set ComM state as initialized */
#             ComM_InitStatus = COMM_INIT;
	.d2line		296
.Llo12:
	diab.li		r0,1
	lis		r3,ComM_InitStatus@ha		# userIndex=r3
.Llo13:
	e_add16i		r3,r3,ComM_InitStatus@l		# userIndex=r3 userIndex=r3
	stw		r0,0(r3)		# userIndex=r3
.L760:
#         }
#     }
# }
	.d2line		299
	.d2epilogue_begin
.Llo14:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L794:
	.type		ComM_Init,@function
	.size		ComM_Init,.-ComM_Init
# Number of nodes = 196

# Allocations for ComM_Init
#	?a4		ConfigPtr
#	?a5		$$237
#	?a6		channelIndex
#	?a7		userIndex
#	?a8		channelStatePtr

# Allocations for module
	.section	.text_vle
	.0byte		.L814
	.section	.text_vle
#$$ld
.L5:
.L918:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\ComStack_Types.h"
.L840:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L821:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Private.h"
.L815:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM.h"
.L779:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_Init.c"
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	12
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
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
	.uleb128	38
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
	.uleb128	17
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	33
	.byte		0x0
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
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
	.uleb128	20
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_Init.c"
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
.L783:
	.sleb128	2
	.4byte		.L776-.L2
	.byte		"ComM_ConsistencyCheck"
	.byte		0
	.4byte		.L779
	.uleb128	60
	.uleb128	33
	.4byte		.L780
	.byte		0x1
	.byte		0x1
	.4byte		.L777
	.4byte		.L778
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L779
	.uleb128	60
	.uleb128	33
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L784
	.4byte		.L788
	.section	.debug_info,,n
.L789:
	.sleb128	4
	.4byte		.L779
	.uleb128	62
	.uleb128	36
	.byte		"retVal"
	.byte		0
	.4byte		.L780
	.4byte		.L790
	.section	.debug_info,,n
	.sleb128	0
.L776:
	.section	.debug_info,,n
.L795:
	.sleb128	5
	.4byte		.L792-.L2
	.byte		"ComM_Init"
	.byte		0
	.4byte		.L779
	.uleb128	87
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L793
	.4byte		.L794
	.sleb128	3
	.4byte		.L779
	.uleb128	87
	.uleb128	23
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L784
	.4byte		.L796
.L797:
	.sleb128	4
	.4byte		.L779
	.uleb128	89
	.uleb128	39
	.byte		"channelIndex"
	.byte		0
	.4byte		.L798
	.4byte		.L799
.L800:
	.sleb128	4
	.4byte		.L779
	.uleb128	90
	.uleb128	28
	.byte		"userIndex"
	.byte		0
	.4byte		.L801
	.4byte		.L803
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L807
	.4byte		.L804
	.4byte		.L805
.L808:
	.sleb128	4
	.4byte		.L779
	.uleb128	148
	.uleb128	78
	.byte		"channelStatePtr"
	.byte		0
	.4byte		.L809
	.4byte		.L813
	.section	.debug_info,,n
	.sleb128	0
.L807:
	.section	.debug_info,,n
	.sleb128	0
.L792:
	.section	.debug_info,,n
.L814:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L815
	.uleb128	147
	.uleb128	36
	.byte		"ComM_LTtoPCHashValue"
	.byte		0
	.4byte		.L816
	.section	.debug_info,,n
.L819:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L815
	.uleb128	150
	.uleb128	36
	.byte		"ComM_LTHashValue"
	.byte		0
	.4byte		.L816
.L820:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L821
	.uleb128	377
	.uleb128	55
	.byte		"ComM_ConfigPtr"
	.byte		0
	.4byte		.L784
	.0byte		.L820
.L822:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L821
	.uleb128	388
	.uleb128	45
	.byte		"ComM_ChannelStates"
	.byte		0
	.4byte		.L823
.L825:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L821
	.uleb128	403
	.uleb128	64
	.byte		"ComM_CurrentChannelRequestPorts"
	.byte		0
	.4byte		.L826
.L831:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L821
	.uleb128	417
	.uleb128	53
	.byte		"ComM_ChannelsNum"
	.byte		0
	.4byte		.L832
.L833:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L821
	.uleb128	443
	.uleb128	52
	.byte		"ComM_UserRequests"
	.byte		0
	.4byte		.L834
	.section	.debug_info,,n
.L837:
	.sleb128	8
	.byte		0x1
	.4byte		.L779
	.uleb128	40
	.uleb128	36
	.byte		"ComM_InitStatus"
	.byte		0
	.4byte		.L838
	.sleb128	5
	.byte		0x3
	.4byte		ComM_InitStatus
	.comm		ComM_InitStatus,4,2
	.section	.debug_info,,n
.L830:
	.sleb128	9
	.4byte		.L840
	.uleb128	121
	.uleb128	1
	.4byte		.L841-.L2
	.uleb128	8
	.section	.debug_info,,n
.L390:
	.sleb128	10
	.byte		"RteWriteCurrentChannelRequestCallout"
	.byte		0
	.4byte		.L842
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L391:
	.sleb128	10
	.byte		"CurrentChannelRequestData"
	.byte		0
	.4byte		.L851
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L841:
.L787:
	.sleb128	9
	.4byte		.L840
	.uleb128	121
	.uleb128	1
	.4byte		.L853-.L2
	.uleb128	32
.L380:
	.sleb128	10
	.byte		"PBtoPCHashValuePtr"
	.byte		0
	.4byte		.L854
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L381:
	.sleb128	10
	.byte		"PBtoLTHashValuePtr"
	.byte		0
	.4byte		.L854
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L382:
	.sleb128	10
	.byte		"UsersPtr"
	.byte		0
	.4byte		.L855
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L383:
	.sleb128	10
	.byte		"ChannelsPtr"
	.byte		0
	.4byte		.L860
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L384:
	.sleb128	10
	.byte		"PncsPtr"
	.byte		0
	.4byte		.L865
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	10
	.byte		"PncRxSignalsPtr"
	.byte		0
	.4byte		.L870
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	10
	.byte		"PncsNum"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	10
	.byte		"PncRxSignalsNum"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L388:
	.sleb128	10
	.byte		"UsersNum"
	.byte		0
	.4byte		.L876
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L389:
	.sleb128	10
	.byte		"PncEnabled"
	.byte		0
	.4byte		.L877
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
	.sleb128	0
.L853:
.L874:
	.sleb128	9
	.4byte		.L840
	.uleb128	121
	.uleb128	1
	.4byte		.L879-.L2
	.uleb128	12
.L377:
	.sleb128	10
	.byte		"SignalId"
	.byte		0
	.4byte		.L880
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L378:
	.sleb128	10
	.byte		"SignalKind"
	.byte		0
	.4byte		.L882
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L379:
	.sleb128	10
	.byte		"SignalChannel"
	.byte		0
	.4byte		.L832
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L879:
.L869:
	.sleb128	9
	.4byte		.L840
	.uleb128	121
	.uleb128	1
	.4byte		.L885-.L2
	.uleb128	32
.L366:
	.sleb128	10
	.byte		"PncID"
	.byte		0
	.4byte		.L886
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	10
	.byte		"PncIdByteIndex"
	.byte		0
	.4byte		.L876
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L368:
	.sleb128	10
	.byte		"PncIdBitIndex"
	.byte		0
	.4byte		.L876
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L369:
	.sleb128	10
	.byte		"PncTimerMaxValue"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L370:
	.sleb128	10
	.byte		"PncTimerHandlerChannelID"
	.byte		0
	.4byte		.L832
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L371:
	.sleb128	10
	.byte		"PncChannelIDsPtr"
	.byte		0
	.4byte		.L888
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L372:
	.sleb128	10
	.byte		"PncChannelIDsNum"
	.byte		0
	.4byte		.L876
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L373:
	.sleb128	10
	.byte		"PncComRxSignalIndexesPtr"
	.byte		0
	.4byte		.L890
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L374:
	.sleb128	10
	.byte		"PncComRxSignalIndexesNum"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L375:
	.sleb128	10
	.byte		"PncUserIDsPtr"
	.byte		0
	.4byte		.L892
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L376:
	.sleb128	10
	.byte		"PncUserIDsNum"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L885:
.L859:
	.sleb128	9
	.4byte		.L840
	.uleb128	121
	.uleb128	1
	.4byte		.L896-.L2
	.uleb128	8
.L356:
	.sleb128	10
	.byte		"AllChannelIDsPtr"
	.byte		0
	.4byte		.L888
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L357:
	.sleb128	10
	.byte		"AllChannelIDsNum"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L358:
	.sleb128	10
	.byte		"DirectChannelIDsNum"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L896:
.L864:
	.sleb128	9
	.4byte		.L840
	.uleb128	121
	.uleb128	1
	.4byte		.L897-.L2
	.uleb128	48
.L342:
	.sleb128	10
	.byte		"UserIDsPtr"
	.byte		0
	.4byte		.L892
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L343:
	.sleb128	10
	.byte		"AllUserIDsNum"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L344:
	.sleb128	10
	.byte		"DirectUserIDsNum"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L345:
	.sleb128	10
	.byte		"PncIndexesPtr"
	.byte		0
	.4byte		.L892
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L346:
	.sleb128	10
	.byte		"PncStatesPtr"
	.byte		0
	.4byte		.L898
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L347:
	.sleb128	10
	.byte		"PncRequestsPtr"
	.byte		0
	.4byte		.L902
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L348:
	.sleb128	10
	.byte		"ChannelPncsNum"
	.byte		0
	.4byte		.L876
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L349:
	.sleb128	10
	.byte		"FullComTimerInitValue"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L350:
	.sleb128	10
	.byte		"NmVariant"
	.byte		0
	.4byte		.L904
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L351:
	.sleb128	10
	.byte		"TxSignalIDsPtr"
	.byte		0
	.4byte		.L907
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L352:
	.sleb128	10
	.byte		"TxSignalBufferPtr"
	.byte		0
	.4byte		.L909
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L353:
	.sleb128	10
	.byte		"TxSignalIDsNum"
	.byte		0
	.4byte		.L876
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L354:
	.sleb128	10
	.byte		"BusType"
	.byte		0
	.4byte		.L911
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L355:
	.sleb128	10
	.byte		"PncNmRequestEnabled"
	.byte		0
	.4byte		.L877
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L897:
.L812:
	.sleb128	9
	.4byte		.L840
	.uleb128	121
	.uleb128	1
	.4byte		.L914-.L2
	.uleb128	24
.L324:
	.sleb128	10
	.byte		"FullComTimer"
	.byte		0
	.4byte		.L801
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L325:
	.sleb128	10
	.byte		"ChannelSubState"
	.byte		0
	.4byte		.L915
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L326:
	.sleb128	10
	.byte		"HaltInNoComState"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L327:
	.sleb128	10
	.byte		"LastNmIndicatedMode"
	.byte		0
	.4byte		.L916
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L328:
	.sleb128	10
	.byte		"IsLastNmIndicatedModeUpdated"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L329:
	.sleb128	10
	.byte		"NmRestartIndication"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L330:
	.sleb128	10
	.byte		"NmNetworkStartIndication"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L331:
	.sleb128	10
	.byte		"LastBusSMIndicatedMode"
	.byte		0
	.4byte		.L836
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L332:
	.sleb128	10
	.byte		"EcuMWakeUpIndication"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L333:
	.sleb128	10
	.byte		"ActiveDiagnostic"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L334:
	.sleb128	10
	.byte		"CommunicationAllowed"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L335:
	.sleb128	10
	.byte		"InitialTransition"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L336:
	.sleb128	10
	.byte		"BusSMReturnValue"
	.byte		0
	.4byte		.L780
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L337:
	.sleb128	10
	.byte		"UserRequestsChanged"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L338:
	.sleb128	10
	.byte		"DirectUserRequestsChanged"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L339:
	.sleb128	10
	.byte		"ChannelRequestedMode"
	.byte		0
	.4byte		.L836
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L340:
	.sleb128	10
	.byte		"DirectUsersRequestedMode"
	.byte		0
	.4byte		.L836
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L341:
	.sleb128	10
	.byte		"PncsRequestedMode"
	.byte		0
	.4byte		.L836
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L914:
.L850:
	.sleb128	9
	.4byte		.L918
	.uleb128	65
	.uleb128	14
	.4byte		.L919-.L2
	.uleb128	5
.L205:
	.sleb128	10
	.byte		"numberOfRequesters"
	.byte		0
	.4byte		.L781
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L206:
	.sleb128	10
	.byte		"handleArray"
	.byte		0
	.4byte		.L920
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L919:
	.section	.debug_info,,n
.L917:
	.sleb128	11
	.4byte		.L840
	.uleb128	112
	.uleb128	1
	.4byte		.L922-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"COMM_NM_MODE_NO_CHANGE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"COMM_NM_MODE_NETWORK"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"COMM_NM_MODE_PREPARE_BUS_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"COMM_NM_MODE_BUS_SLEEP"
	.byte		0
	.sleb128	3
	.sleb128	0
.L922:
.L906:
	.sleb128	11
	.4byte		.L840
	.uleb128	103
	.uleb128	1
	.4byte		.L923-.L2
	.uleb128	4
	.sleb128	12
	.byte		"COMM_FULL"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"COMM_LIGHT"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"COMM_NONE"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"COMM_PASSIVE"
	.byte		0
	.sleb128	3
	.sleb128	0
.L923:
.L913:
	.sleb128	11
	.4byte		.L840
	.uleb128	93
	.uleb128	1
	.4byte		.L924-.L2
	.uleb128	4
	.sleb128	12
	.byte		"COMM_BUS_TYPE_CAN"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"COMM_BUS_TYPE_ETH"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"COMM_BUS_TYPE_FR"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"COMM_BUS_TYPE_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"COMM_BUS_TYPE_LIN"
	.byte		0
	.sleb128	4
	.sleb128	0
.L924:
.L884:
	.sleb128	11
	.4byte		.L840
	.uleb128	86
	.uleb128	1
	.4byte		.L925-.L2
	.uleb128	4
	.sleb128	12
	.byte		"COMM_SIGNAL_KIND_EIRA"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"COMM_SIGNAL_KIND_ERA"
	.byte		0
	.sleb128	1
	.sleb128	0
.L925:
.L901:
	.sleb128	11
	.4byte		.L840
	.uleb128	57
	.uleb128	1
	.4byte		.L926-.L2
	.uleb128	4
	.sleb128	12
	.byte		"PNC_REQUESTED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"PNC_READY_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"PNC_PREPARE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"PNC_NO_COMMUNICATION"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"PNC_FULL_COMMUNICATION"
	.byte		0
	.sleb128	4
	.sleb128	0
.L926:
.L839:
	.sleb128	11
	.4byte		.L840
	.uleb128	50
	.uleb128	1
	.4byte		.L927-.L2
	.uleb128	4
	.sleb128	12
	.byte		"COMM_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"COMM_INIT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L927:
	.section	.debug_info,,n
.L782:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L781:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L782
.L780:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L781
.L786:
	.sleb128	14
	.byte		"ComM_ConfigType"
	.byte		0
	.4byte		.L787
	.section	.debug_info,,n
.L785:
	.sleb128	15
	.4byte		.L786
	.section	.debug_info,,n
.L784:
	.sleb128	16
	.4byte		.L785
.L798:
	.sleb128	14
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L781
.L802:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L801:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L802
.L811:
	.sleb128	14
	.byte		"ComM_ChannelStateType"
	.byte		0
	.4byte		.L812
.L810:
	.sleb128	16
	.4byte		.L811
.L809:
	.sleb128	15
	.4byte		.L810
.L818:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L817:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L818
.L816:
	.sleb128	15
	.4byte		.L817
	.section	.debug_info,,n
.L823:
	.sleb128	17
	.4byte		.L824-.L2
	.4byte		.L811
	.section	.debug_info,,n
	.sleb128	18
	.sleb128	0
.L824:
.L829:
	.sleb128	14
	.byte		"ComM_CurrentChannelRequestPortType"
	.byte		0
	.4byte		.L830
.L828:
	.sleb128	15
	.4byte		.L829
.L826:
	.sleb128	17
	.4byte		.L827-.L2
	.4byte		.L828
	.sleb128	18
	.sleb128	0
.L827:
.L832:
	.sleb128	15
	.4byte		.L798
.L836:
	.sleb128	14
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L781
.L834:
	.sleb128	17
	.4byte		.L835-.L2
	.4byte		.L836
	.sleb128	18
	.sleb128	0
.L835:
.L838:
	.sleb128	14
	.byte		"ComM_InitStatusType"
	.byte		0
	.4byte		.L839
	.section	.debug_info,,n
.L845:
	.sleb128	19
	.4byte		.L846-.L2
	.4byte		.L780
	.byte		0x1
.L849:
	.sleb128	14
	.byte		"ComM_UserHandleArrayType"
	.byte		0
	.4byte		.L850
.L848:
	.sleb128	15
	.4byte		.L849
.L847:
	.sleb128	16
	.4byte		.L848
	.section	.debug_info,,n
	.sleb128	20
	.4byte		.L847
	.sleb128	0
.L846:
.L844:
	.sleb128	16
	.4byte		.L845
.L843:
	.sleb128	14
	.byte		"ComM_RteWriteCurrentChannelRequestCalloutType"
	.byte		0
	.4byte		.L844
.L842:
	.sleb128	15
	.4byte		.L843
.L852:
	.sleb128	16
	.4byte		.L849
.L851:
	.sleb128	15
	.4byte		.L852
.L854:
	.sleb128	16
	.4byte		.L816
.L858:
	.sleb128	14
	.byte		"ComM_UserType"
	.byte		0
	.4byte		.L859
.L857:
	.sleb128	15
	.4byte		.L858
.L856:
	.sleb128	16
	.4byte		.L857
.L855:
	.sleb128	15
	.4byte		.L856
.L863:
	.sleb128	14
	.byte		"ComM_ChannelType"
	.byte		0
	.4byte		.L864
.L862:
	.sleb128	15
	.4byte		.L863
.L861:
	.sleb128	16
	.4byte		.L862
.L860:
	.sleb128	15
	.4byte		.L861
.L868:
	.sleb128	14
	.byte		"ComM_PncType"
	.byte		0
	.4byte		.L869
.L867:
	.sleb128	15
	.4byte		.L868
.L866:
	.sleb128	16
	.4byte		.L867
.L865:
	.sleb128	15
	.4byte		.L866
.L873:
	.sleb128	14
	.byte		"ComM_PncRxSignalType"
	.byte		0
	.4byte		.L874
.L872:
	.sleb128	15
	.4byte		.L873
.L871:
	.sleb128	16
	.4byte		.L872
.L870:
	.sleb128	15
	.4byte		.L871
.L875:
	.sleb128	15
	.4byte		.L801
.L876:
	.sleb128	15
	.4byte		.L781
.L878:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L782
.L877:
	.sleb128	15
	.4byte		.L878
.L881:
	.sleb128	14
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L801
.L880:
	.sleb128	15
	.4byte		.L881
.L883:
	.sleb128	14
	.byte		"ComM_PncComSignalKindType"
	.byte		0
	.4byte		.L884
.L882:
	.sleb128	15
	.4byte		.L883
.L887:
	.sleb128	14
	.byte		"PNCHandleType"
	.byte		0
	.4byte		.L781
.L886:
	.sleb128	15
	.4byte		.L887
.L889:
	.sleb128	16
	.4byte		.L832
.L888:
	.sleb128	15
	.4byte		.L889
.L891:
	.sleb128	16
	.4byte		.L876
.L890:
	.sleb128	15
	.4byte		.L891
.L895:
	.sleb128	14
	.byte		"ComM_UserHandleType"
	.byte		0
	.4byte		.L781
.L894:
	.sleb128	15
	.4byte		.L895
.L893:
	.sleb128	16
	.4byte		.L894
.L892:
	.sleb128	15
	.4byte		.L893
.L900:
	.sleb128	14
	.byte		"ComM_PncModeType"
	.byte		0
	.4byte		.L901
.L899:
	.sleb128	16
	.4byte		.L900
.L898:
	.sleb128	15
	.4byte		.L899
.L903:
	.sleb128	16
	.4byte		.L836
.L902:
	.sleb128	15
	.4byte		.L903
.L905:
	.sleb128	14
	.byte		"ComM_NmVariantType"
	.byte		0
	.4byte		.L906
.L904:
	.sleb128	15
	.4byte		.L905
.L908:
	.sleb128	16
	.4byte		.L875
.L907:
	.sleb128	15
	.4byte		.L908
.L910:
	.sleb128	16
	.4byte		.L781
.L909:
	.sleb128	15
	.4byte		.L910
.L912:
	.sleb128	14
	.byte		"ComM_BusTypeType"
	.byte		0
	.4byte		.L913
.L911:
	.sleb128	15
	.4byte		.L912
.L915:
	.sleb128	14
	.byte		"ComM_StateType"
	.byte		0
	.4byte		.L781
.L916:
	.sleb128	14
	.byte		"ComM_NmCurrentModeType"
	.byte		0
	.4byte		.L917
.L920:
	.sleb128	17
	.4byte		.L921-.L2
	.4byte		.L895
	.section	.debug_info,,n
	.sleb128	21
	.uleb128	3
	.sleb128	0
.L921:
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L788:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L790:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),5
	.d2locend
.L796:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),6
	.d2locend
.L799:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locend
.L803:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locend
.L813:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),4
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),4
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),4
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),4
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo12),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_Init"
	.wrcm.nstrlist "calls", "ComM_ConsistencyCheck"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "ComM_ConsistencyCheck"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_Init.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_Init.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_Init.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_Init.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_Init.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
