#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Com_Initialize.c"
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
# FUNC( Std_ReturnType, COM_CODE ) Com_ConsistencyCheck(
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_Initialize.c"
        .d2line         371,34
#$$ld
.L207:

#$$bf	Com_ConsistencyCheck,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Com_ConsistencyCheck
	.d2_cfa_start __cie
Com_ConsistencyCheck:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr.		r3,r3		# config=?a4 config=r3
	.d2prologue_end
#         CONSTP2CONST(Com_ConfigType, AUTOMATIC, COM_CONST_PB) config)
# {
#     VAR( Std_ReturnType, AUTOMATIC )    Retval = E_NOT_OK;
	.d2line		374
	diab.li		r5,1		# Retval=r5
# 
#     if (config != NULL_PTR)
	.d2line		376
.Llo3:
	bc		1,2,.L200	# eq
#     {
#         if(*(config->PBtoPCHashValue_P) == COM_PC_HASH_VALUE)
	.d2line		378
	lwz		r4,4(r3)		# config=r3
	lwz		r0,0(r4)
	e_lis		r4,53713
	e_or2i		r4,63891
	se_cmpl		r0,r4
	bc		0,2,.L200	# ne
#         {
#             if(*(config->PBtoLTHashValue_P) == Com_LTHashValue)
	.d2line		380
	lwz		r3,8(r3)		# config=r3 config=r3
	lwz		r0,0(r3)		# config=r3
	lis		r3,Com_LTHashValue@ha		# config=r3
	lwz		r3,Com_LTHashValue@l(r3)		# config=r3 config=r3
	se_cmpl		r0,r3		# config=r3
#             {
#                 Retval = E_OK;
	.d2line		382
	isel		r5,0,r5,2		# Retval=r5 Retval=r5
.L200:
#             }
#         }
#     }
# 
#     return Retval;
	.d2line		387
.Llo2:
	rlwinm		r3,r5,0,24,31		# config=r3 Retval=r5
# }
	.d2line		388
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
.L208:
	.type		Com_ConsistencyCheck,@function
	.size		Com_ConsistencyCheck,.-Com_ConsistencyCheck
# Number of nodes = 25

# Allocations for Com_ConsistencyCheck
#	?a4		config
#	?a5		Retval
# FUNC(void, COM_CODE) Com_Init(
	.align		2
	.section	.text_vle
        .d2line         76,22
#$$ld
.L224:

#$$bf	Com_Init,interprocedural,rasave,nostackparams
	.globl		Com_Init
	.d2_cfa_start __cie
Com_Init:
.Llo5:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# config=r0 config=r3
	.d2prologue_end
	.section	.text_vle
.L228:
#         P2CONST(Com_ConfigType, AUTOMATIC, COM_CONST_PB) config)
# {
# #if COM_DEV_ERROR_DETECT == STD_ON
#     if(config == NULL_PTR)
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                 COM_INSTANCE_ID,
#                 COMServiceId_Init,
#                 COM_E_PARAM_POINTER);
#     }
# #if COM_ENABLE_PDU_BUFFER_ALIGNMENT == STD_ON
#     else if((sizeof(uint16) != 2) || (sizeof(uint32) != 4) || (sizeof(float64) != 8))
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                         COM_INSTANCE_ID,
#                         COMServiceId_Init,
#                         COM_E_TYPE_SIZE);
#     }
# #endif
#     else
# #endif /* COM_DEV_ERROR_DETECT */
#     {
#         VAR(uint16,AUTOMATIC) Index;
#         P2CONST(Com_TxIpdu,AUTOMATIC,COM_CONST_PB) TxIpdu;
#         P2CONST(Com_RxIpdu,AUTOMATIC,COM_CONST_PB) RxIpdu;
# #if COM_ENABLE_TMS == STD_ON
#         P2CONST(Com_SignalsPB, AUTOMATIC, COM_CONST_PB) SignalPointer;
# #endif
#         Com_Main = config;
	.d2line		105
.Llo6:
	lis		r3,Com_Main@ha		# config=r3
.Llo7:
	e_add16i		r3,r3,Com_Main@l		# config=r3 config=r3
	stw		r0,0(r3)		# config=r3 config=r0
# 
#         if (E_OK == Com_ConsistencyCheck(config))
	.d2line		107
	mr		r3,r0		# config=r3 config=r0
	bl		Com_ConsistencyCheck
.Llo8:
	rlwinm		r3,r3,0,24,31		# config=r3 config=r3
.Llo9:
	se_cmpi		r3,0		# config=r3
	bc		0,2,.L168	# ne
#         {
#             *Com_Main->Com_ZeroMask = (uint8)0; /* this is an always zero flag */
	.d2line		109
.Llo10:
	diab.li		r31,0
.Llo47:
	lis		r3,Com_Main@ha		# config=r3
.Llo11:
	lwz		r3,Com_Main@l(r3)		# config=r3 config=r3
	lwz		r3,72(r3)		# config=r3 config=r3
	stb		r31,0(r3)		# config=r3
# 
# #if COM_ENABLE_SIGNAL_GATEWAY == STD_ON
#             Com_GwPointerArrayRead = Com_Main->GwPointersShadow_Ref;
#             Com_GwPointerArrayWrite = Com_Main->GwPointers_Ref;
# 
#             for (Index = (uint16)0; Index < Com_Main->GWMaskArrayLength;
#             Index++)
#             {
#                 *(Com_Main->GwPointers_Ref[Index]) = 0;
#                 *(Com_Main->GwPointersShadow_Ref[Index]) = 0;
#             }
# #endif
# 
# #if COM_ENABLE_IPDU_COUNTER == STD_ON
#             /* reset DSC Counters */
#             vstar_set(Com_Main->DSCCounters_ref,(uint8)0,(uint32)Com_Main->DSCCounters_length);
# #endif /* COM_ENABLE_IPDU_COUNTER */
# #if COM_FILTERS_OR_TMS_ENABLED == STD_ON
#             /*reset EveryNFilters*/
#             vstar_set(Com_Main->EveryNFilters,(uint8)0,(uint32)Com_Main->EveryNFilters_length);
# #endif /* COM_FILTERS_OR_TMS_ENABLED */
# #if COM_ENABLE_TMS == STD_ON
#             /*reset TxSignalFilterMasks*/
#             vstar_set(Com_Main->TxSignalFilterMasks,(uint8)0,(uint32)Com_Main->TxSignalFilterMasks_length);
# #endif /* COM_ENABLE_TMS */
#             for (Index = (uint16)0; Index < Com_Main->TxIpduIdArrayLength; Index++)
.L170:
	.d2line		135
.Llo12:
	rlwinm		r0,r31,0,16,31		# config=r0 Index=r31
.Llo13:
	lis		r3,Com_Main@ha		# config=r3
	lwz		r3,Com_Main@l(r3)		# config=r3 config=r3
	lhz		r3,86(r3)		# config=r3 config=r3
	se_cmp		r0,r3		# config=r0 config=r3
	bc		0,0,.L172	# ge
#             {
#                 TxIpdu = &(Com_Main->TxIpdus_Ref[Index]);
	.d2line		137
.Llo14:
	rlwinm		r3,r31,0,16,31		# config=r3 Index=r31
.Llo15:
	lis		r4,Com_Main@ha
	lwz		r4,Com_Main@l(r4)
	lwz		r30,32(r4)		# TxIpdu=r30
.Llo51:
	rlwinm		r0,r3,6,0,25		# config=r0 config=r3
	rlwinm		r4,r3,2,0,29		# config=r3
	subf		r4,r4,r0		# config=r0
	se_add		r4,r30		# TxIpdu=r30
	mr		r30,r4		# TxIpdu=r30 TxIpdu=r4
#                 Com_InitializeIpdu((PduIdType)Index,TRUE);
	.d2line		138
	diab.li		r4,1
	bl		Com_InitializeIpdu
# #if COM_ENABLE_TX_DM == STD_ON
#                 if(TxIpdu->DmTimer_Ref != NULL_PTR)
#                 {
#                     *TxIpdu->DmTimer_Ref = 0;
#                 }
# #endif
#                 /* Initialize TxIpdu flags */
#                *TxIpdu->IsIPduGroupEnabled_Ref = FALSE;
	.d2line		146
.Llo16:
	diab.li		r4,0
	lwz		r3,4(r30)		# config=r3 TxIpdu=r30
.Llo17:
	stb		r4,0(r3)		# config=r3
#                *TxIpdu->IsTxPending_Ref = FALSE;
	.d2line		147
	lwz		r3,8(r30)		# config=r3 TxIpdu=r30
	stb		r4,0(r3)		# config=r3
#                *TxIpdu->IsConfirmationPending_Ref = FALSE;
	.d2line		148
	lwz		r3,12(r30)		# config=r3 TxIpdu=r30
	stb		r4,0(r3)		# config=r3
#                *TxIpdu->IsConfirmationDeferred_Ref = FALSE;
	.d2line		149
	lwz		r3,16(r30)		# config=r3 TxIpdu=r30
	stb		r4,0(r3)		# config=r3
#                *TxIpdu->CurrentTxMode_Ref = TRUE;
	.d2line		150
	diab.li		r0,1		# config=r0
	lwz		r3,20(r30)		# config=r3 TxIpdu=r30
.Llo18:
	stb		r0,0(r3)		# config=r3 config=r0
# #if COM_ENABLE_TMS == STD_ON
#                *TxIpdu->RequestedTxMode_Ref = TRUE;
# #endif
# #if COM_ENABLE_MDT == STD_ON
# #if COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION == STD_OFF
#                *TxIpdu->CyclicTransmissionOngoing_Ref = FALSE;
# #endif /* COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION */
# #endif /* COM_ENABLE_MDT */
# #if COM_ENABLE_LARGE_DATA_TYPES == STD_ON
#                *TxIpdu->IsTpBufferLocked_Ref = FALSE;
# #endif
# #if COM_ENABLE_RETRY_FAILED_TRANSMIT == STD_ON
#                *TxIpdu->IsTransmissionFailed_Ref = FALSE;
	.d2line		163
.Llo19:
	lwz		r3,24(r30)		# config=r3 TxIpdu=r30
	stb		r4,0(r3)		# config=r3
# #endif
#                 /*check if ipdu is not a gap*/
#                 if ((TxIpdu->IpduFlags & COM_TXIPDU_IS_IPDU) != 0)
	.d2line		166
	lhz		r0,56(r30)		# config=r0 TxIpdu=r30
	se_btsti		r0,20		# config=r0
	bc		1,2,.L173	# eq
#                 {
#                     /*clear ipdu update bit*/
#                     Com_ClearIpduUpdateBits(TxIpdu);
	.d2line		169
.Llo20:
	mr		r3,r30		# TxIpdu=r3 TxIpdu=r30
	bl		Com_ClearIpduUpdateBits
.L173:
#                 }
#             }
	.d2line		171
	diab.addi		r0,r31,1		# config=r0 Index=r31
	se_addi		r31,1		# Index=r31 Index=r31
	b		.L170
.L172:
# 
#             /*************** RxIPdu initialization ********************/
#             for (Index = 0; Index < Com_Main->RxIpduIdArrayLength; Index++)
	.d2line		174
.Llo52:
	diab.li		r30,0		# Index=r30
.L174:
.Llo48:
	rlwinm		r0,r30,0,16,31		# config=r0 Index=r30
.Llo21:
	lis		r3,Com_Main@ha		# config=r3
	lwz		r3,Com_Main@l(r3)		# config=r3 config=r3
	lhz		r3,88(r3)		# config=r3 config=r3
	se_cmp		r0,r3		# config=r0 config=r3
	bc		0,0,.L176	# ge
	.section	.text_vle
.L248:
#             {
#                 VAR(uint16, AUTOMATIC) signalIndex;
#                 P2VAR(Com_DeferredNotificationCall, AUTOMATIC, AUTOMATIC) Com_DeferredNotifyPtr;
#                 /* Init RxIpdusFlags(ram array) will reset Ipdu state including
#                  Buffer status
#                  IPDU Counter state */
#                 Com_Main->RxIpdusFlags[Index] = 0;
	.d2line		181
.Llo22:
	diab.li		r4,0
	lis		r3,Com_Main@ha		# config=r3
.Llo23:
	lwz		r5,Com_Main@l(r3)		# config=r3
	lwz		r5,68(r5)
	rlwinm		r0,r30,0,16,31		# config=r0 Index=r30
	stbux		r4,r5,r0
#                 RxIpdu = &(Com_Main->RxIpdus_Ref[Index]);
	.d2line		182
	lwz		r3,Com_Main@l(r3)		# config=r3 config=r3
.Llo24:
	lwz		r31,16(r3)		# Index=r31 config=r3
.Llo25:
	e_mulli		r3,r0,40		# config=r3 config=r0
	se_add		r3,r31		# config=r3 config=r3 Index=r31
.Llo56:
	mr		r31,r3		# RxIpdu=r31 RxIpdu=r3
# 
#                 Com_InitializeIpdu((PduIdType)Index,FALSE);
	.d2line		184
.Llo57:
	mr		r3,r0		# config=r3
.Llo58:
	bl		Com_InitializeIpdu
# 
#                 /* Copy updated length of the IPdu to ForegroundBuffer */
#                 COM_COPY_INTERNAL(RxIpdu->ForeGroundBuffer_Ref,RxIpdu->BackGroundBuffer_Ref,(uint32)RxIpdu->IpduLength);
	.d2line		187
.Llo26:
	lhz		r5,32(r31)		# RxIpdu=r31
	lwz		r3,12(r31)		# config=r3 RxIpdu=r31
	lwz		r4,16(r31)		# RxIpdu=r31
	bl		vstar_copy
# 
#                 /*check if ipdu is not a gap*/
#                 if ((RxIpdu->IPduFlags & COM_RXIPDU_ISGAP) != 0)
	.d2line		190
	lbz		r0,34(r31)		# config=r0 RxIpdu=r31
.Llo27:
	se_btsti		r0,24		# config=r0
	bc		1,2,.L177	# eq
#                 {
#                     /* Set IPDU first time to start flag   */
#                     Com_Main->RxIpdusFlags[Index] |= COM_RXIPDU_FIRST_TIME;
	.d2line		193
.Llo28:
	lis		r3,Com_Main@ha		# config=r3
.Llo29:
	lwz		r3,Com_Main@l(r3)		# config=r3 config=r3
	lwz		r3,68(r3)		# config=r3 config=r3
	rlwinm		r4,r30,0,16,31		# Index=r30
	lbzx		r0,r3,r4		# config=r0 config=r3
	.diab.bseti		r0,28		# config=r0
	stbx		r0,r3,r4		# config=r3 config=r0
# 
#                     /* Initialize flags */
#                     *RxIpdu->IsBackGroundBufferUpdated_Ref = FALSE;
	.d2line		196
	diab.li		r0,0		# config=r0
	lwz		r3,24(r31)		# config=r3 RxIpdu=r31
.Llo30:
	stb		r0,0(r3)		# config=r3 config=r0
# #if COM_ENABLE_IPDU_COUNTER == STD_ON
#                     *RxIpdu->IsDSCRunning_Ref = FALSE;
# #endif
#                     RxIpdu->RxIpduFlags_Ref->DeferredIPduReceived = FALSE;
	.d2line		200
.Llo31:
	lwz		r3,20(r31)		# config=r3 RxIpdu=r31
	stb		r0,0(r3)		# config=r3 config=r0
.L177:
#                 }
# 
#                 Com_DeferredNotifyPtr  = RxIpdu->Com_DeferredNotificationCall_Ref;
	.d2line		203
.Llo32:
	lwz		r0,36(r31)		# config=r0 RxIpdu=r31
.Llo62:
	mr		r0,r0		# Com_DeferredNotifyPtr=r0 Com_DeferredNotifyPtr=r0
#                 for(signalIndex = 0;signalIndex<RxIpdu->NumberOfSignals;signalIndex++)
	.d2line		204
	diab.li		r3,0		# signalIndex=r3
.L178:
.Llo59:
	rlwinm		r4,r3,0,16,31		# signalIndex=r3
	lhz		r5,30(r31)		# RxIpdu=r31
	se_cmp		r4,r5
	bc		0,0,.L180	# ge
#                 {
#                     Com_DeferredNotifyPtr[signalIndex].Com_DeferredNotificationIndexType = COM_DEFERRED_CALLBACK_NONE;
	.d2line		206
	diab.li		r5,0
	rlwinm		r4,r3,2,14,29		# signalIndex=r3
	se_add		r4,r0		# Com_DeferredNotifyPtr=r0
	stb		r5,2(r4)
#                 }
	.d2line		207
	diab.addi		r4,r3,1		# signalIndex=r3
	se_addi		r3,1		# signalIndex=r3 signalIndex=r3
	b		.L178
.L180:
# 
#                 /*Initialize deferred length */
#                 Com_Main->DeferredLength_Ref[Index] = 0;
	.d2line		210
.Llo60:
	diab.li		r0,0		# config=r0
.Llo33:
	lis		r3,Com_Main@ha		# signalIndex=r3
.Llo61:
	lwz		r3,Com_Main@l(r3)		# signalIndex=r3 signalIndex=r3
	lwz		r3,56(r3)		# signalIndex=r3 signalIndex=r3
	rlwinm		r4,r30,1,15,30		# Index=r30
	sthx		r0,r3,r4		# signalIndex=r3 config=r0
	.section	.text_vle
.L249:
#             }
	.d2line		211
.Llo34:
	diab.addi		r0,r30,1		# config=r0 Index=r30
	se_addi		r30,1		# Index=r30 Index=r30
	b		.L174
.L176:
#             /* Initialize DeferredReceivedIPdu */
#             Com_DeferredReceivedIPduWriter = 0;
	.d2line		213
	diab.li		r0,0		# config=r0
.Llo35:
	lis		r3,Com_DeferredReceivedIPduWriter@ha		# config=r3
	e_add16i		r3,r3,Com_DeferredReceivedIPduWriter@l		# config=r3 config=r3
	sth		r0,0(r3)		# config=r3 config=r0
#             Com_DeferredReceivedIPduReader = 0;
	.d2line		214
	lis		r3,Com_DeferredReceivedIPduReader@ha		# config=r3
	e_add16i		r3,r3,Com_DeferredReceivedIPduReader@l		# config=r3 config=r3
	sth		r0,0(r3)		# config=r3 config=r0
#             Com_DeferredReceivedIPduFifo = Com_Main->DeferredReceivedIPdu_Ref;
	.d2line		215
	lis		r3,Com_Main@ha		# config=r3
	lwz		r3,Com_Main@l(r3)		# config=r3 config=r3
	lwz		r4,60(r3)		# config=r3
	lis		r3,Com_DeferredReceivedIPduFifo@ha		# config=r3
	e_add16i		r3,r3,Com_DeferredReceivedIPduFifo@l		# config=r3 config=r3
	stw		r4,0(r3)		# config=r3
# 
# #if COM_ENABLE_TMS == STD_ON
#             /* loop through all signals */
#             for(Index = 0; Index < Com_Main->SignalArrayLength; Index++)
#             {
#                 SignalPointer = &(Com_Main->Signals_Ref[Index]);
#                 /* check if signal is transmitted and it has a filter */
#                 if((((SignalPointer->ComXf_Signal.Flags) & COM_SIGNAL_TX) != 0)
#                     && (SignalPointer->TxFilterMask != (uint8)0))
#                 {
#                     /* process signal filter and store its status */
#                     Com_ProcessTxSignalFilter(
#                             (Com_SignalIdType)Index,
#                             (Com_SignalIdType)Index,
#                             NULL_PTR,
#                             COM_CALLER_INIT,
#                             Com_Main->TxSignalFilterMasks);
#                 }
#             }
#             /* loop through all group signals */
#             for(Index = Com_Main->MemberSignal_base; Index < Com_Main->MemberSignalArrayLength; Index++)
#             {
#                 SignalPointer = &(Com_Main->Signals_Ref[Index]);
#                 /* check if signal is transmitted and it has a filter */
#                 if((((SignalPointer->ComXf_Signal.Flags) & COM_SIGNAL_TX) != 0)
#                     && (SignalPointer->TxFilterMask != (uint8)0))
#                 {
#                     /* process signal filter and store its status */
#                     Com_ProcessTxSignalFilter(
#                             (Com_SignalIdType)Index,
#                             (Com_SignalIdType)Index,
#                             NULL_PTR,
#                             COM_CALLER_INIT,
#                             Com_Main->TxSignalFilterMasks);
#                     /* Copy TMC values into shadow TMC buffer */
#                     Com_Main->TxShadowSignalFilterMasks[SignalPointer->FilterBytePosition] =
#                             Com_Main->TxSignalFilterMasks[SignalPointer->FilterBytePosition];
#                 }
#             }
# #endif /* COM_ENABLE_TMS */
#             /* loop through all transmitted IPDUs to initialize Tx mode */
#             for (Index = (uint16)0; Index < Com_Main->TxIpduIdArrayLength; Index++)
	.d2line		257
	diab.li		r3,0		# config=r3
.L181:
.Llo36:
	rlwinm		r0,r3,0,16,31		# config=r0 Index=r3
.Llo37:
	lis		r4,Com_Main@ha		# TxIpdu=r4
.Llo53:
	lwz		r4,Com_Main@l(r4)		# TxIpdu=r4 TxIpdu=r4
	lhz		r4,86(r4)		# TxIpdu=r4 TxIpdu=r4
	se_cmp		r0,r4		# config=r0 TxIpdu=r4
	bc		0,0,.L183	# ge
#             {
#                 TxIpdu = &(Com_Main->TxIpdus_Ref[Index]);
	.d2line		259
.Llo38:
	rlwinm		r0,r3,0,16,31		# config=r0 Index=r3
.Llo39:
	lis		r4,Com_Main@ha		# TxIpdu=r4
.Llo54:
	lwz		r4,Com_Main@l(r4)		# TxIpdu=r4 TxIpdu=r4
	lwz		r4,32(r4)		# TxIpdu=r4 TxIpdu=r4
	rlwinm		r5,r0,6,0,25		# config=r0
	se_slwi		r0,2		# config=r0 config=r0
	subf		r0,r0,r5		# config=r0 config=r0
	se_add		r0,r4		# config=r0 config=r0 TxIpdu=r4
.Llo40:
	mr		r4,r0		# TxIpdu=r4 TxIpdu=r0
# 
#                 /*check if ipdu is not a gap*/
#                 if ((TxIpdu->IpduFlags & COM_TXIPDU_IS_IPDU) != 0)
	.d2line		262
.Llo55:
	lhz		r0,56(r4)		# config=r0 TxIpdu=r4
.Llo41:
	se_btsti		r0,20		# config=r0
	bc		1,2,.L184	# eq
	.section	.text_vle
.L259:
#                 {
#                     VAR(uint8, AUTOMATIC) ActiveTM;
# #if COM_ENABLE_TMS == STD_ON
#                     /* check if this IPDU has no signals with configured
#                      filters, then set TM to true, and it should never
#                      change */
#                     if((TxIpdu->IpduFlags & COM_TXIPDU_HAS_NO_FILTER) != 0)
#                     {
#                         /* set current TM of IPDU to true */
#                         *TxIpdu->CurrentTxMode_Ref = TRUE;
#                         ActiveTM = (uint8) COM_TXMODETRUE_INDEX;
#                     }
#                     else
#                     {
#                         /* check the IPDU transmission mode based on all
#                          contributing signals and initialize current TM */
#                         Com_ProcessFiltersForTM(TxIpdu);
#                         *TxIpdu->CurrentTxMode_Ref = *TxIpdu->RequestedTxMode_Ref;
#                         ActiveTM =  (*TxIpdu->CurrentTxMode_Ref != FALSE)? COM_TXMODETRUE_INDEX: COM_TXMODEFALSE_INDEX;
#                     }
# 
# #else
#                     *TxIpdu->CurrentTxMode_Ref = TRUE;
	.d2line		285
.Llo42:
	diab.li		r0,1		# config=r0
.Llo43:
	lwz		r5,20(r4)		# TxIpdu=r4
	stb		r0,0(r5)		# config=r0
#                     ActiveTM = (uint8) COM_TXMODETRUE_INDEX;
	.d2line		286
	diab.li		r0,0		# ActiveTM=r0
# #endif /* COM_ENABLE_TMS */
#                     /* check if the active txmode is valid */
#                     if(TxIpdu->TxMode[ActiveTM] != COM_INVALID_TM_INDEX)
	.d2line		289
.Llo44:
	lhz		r0,52(r4)		# ActiveTM=r0 TxIpdu=r4
.Llo63:
	cmpli		0,0,r0,65535		# ActiveTM=r0
	bc		1,2,.L184	# eq
#                     {
#         #if COM_ENABLE_NTIMES_TM == STD_ON
#                         /* check if transmission mode is Ntimes */
#                         if(Com_Main->TxModes_Ref[TxIpdu->TxMode[ActiveTM]]
#                                 .NtimesRepetitions != (uint8)0)
#                         {
#                             /* reset Ntimes timers */
#                             Com_Main->NtimesTimers_Ref[TxIpdu->NtimesRepetitions_Index] = (uint16)0;
#                         }
#         #endif /* COM_ENABLE_NTIMES_TM  */
#                         /* check if Active TM for this IPDU has periodic
#                          counter */
#                         if(Com_Main->TxModes_Ref[TxIpdu->TxMode[ActiveTM]].Period != (Com_Timer)0)
	.d2line		302
.Llo64:
	lis		r5,Com_Main@ha
	lwz		r5,Com_Main@l(r5)
	lwz		r5,48(r5)
	lhz		r0,52(r4)		# ActiveTM=r0 TxIpdu=r4
.Llo65:
	rlwinm		r0,r0,2,14,29		# ActiveTM=r0 ActiveTM=r0
	lhzx		r0,r5,r0		# ActiveTM=r0
	se_cmpi		r0,0		# ActiveTM=r0
	bc		1,2,.L184	# eq
#                         {
#                             /* initialize Cycle counter */
#                             Com_Main->CycleTimers_Ref[TxIpdu->TxMode[ActiveTM]] =
	.d2line		305
.Llo66:
	lis		r6,Com_Main@ha
	lwz		r5,Com_Main@l(r6)
	lwz		r0,48(r5)		# ActiveTM=r0
.Llo67:
	lhz		r5,52(r4)		# TxIpdu=r4
	rlwinm		r4,r5,2,14,29		# TxIpdu=r4
	se_add		r4,r0		# TxIpdu=r4 TxIpdu=r4 ActiveTM=r0
	lhz		r0,2(r4)		# ActiveTM=r0 TxIpdu=r4
	lwz		r4,Com_Main@l(r6)		# TxIpdu=r4
	lwz		r4,52(r4)		# TxIpdu=r4 TxIpdu=r4
	rlwinm		r5,r5,1,15,30
	sthx		r0,r4,r5		# TxIpdu=r4 ActiveTM=r0
	.section	.text_vle
.L260:
.L184:
#                                     Com_Main->TxModes_Ref[TxIpdu->TxMode[ActiveTM]].Offset;
#                         }
#                     }
#                 }
#             }
	.d2line		310
.Llo68:
	diab.addi		r0,r3,1		# config=r0 Index=r3
	se_addi		r3,1		# Index=r3 Index=r3
	b		.L181
.L183:
# #if COM_ENABLE_RX_DM == STD_ON
#             for (Index = (uint16)0; Index < Com_Main->RxDmTimersArrayLength; Index++)
#             {
#                 /*reset Rx deadline monitoring*/
#                 Com_Main->ComRxDmCounters_Ref[Index] = (uint16)0;
#                 Com_Main->Com_RxDmEnabled_Ref[Index] = TRUE;
#                 Com_Main->Com_RxDmStopRequest_Ref[Index] = FALSE;
#                 Com_Main->Com_RxDmFirstTimeoutRestartRequest_Ref[Index] = FALSE;
#                 Com_Main->Com_RxDmTimeoutRestartRequest_Ref[Index] = FALSE;
#             }
# #endif /* COM_ENABLE_RX_DM */
# #if COM_ENABLE_MDT == STD_ON
#             for (Index = (uint16)0; Index < Com_Main->MdtArrayLength; Index++)
#             {
#                 /*reset minimum delay time*/
#                 Com_Main->MdtTimers_Ref[Index] = (uint16)0;
#                 Com_Main->MdtRestartRequest_Ref[Index] = FALSE;
#             }
# #endif
# #if COM_ENABLE_LARGE_DATA_TYPES == STD_ON
#             for (Index = (uint16)0; Index < Com_Main->TxTpCountersArrayLength; Index++)
#             {
#                 /*reset TxTpCounter*/
#                 Com_Main->TxTpCounter_Ref[Index] = (uint16)0;
#             }
# #endif /* COM_ENABLE_LARGE_DATA_TYPES */
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#             for (Index = (uint16)0; Index < Com_Main->DynArrayLength; Index++)
#             {
#                 /*reset DynArray*/
#                 Com_Main->DynLength_Ref[Index] = (uint16)0;
#             }
# #endif /* COM_ENABLE_DYNAMIC_SIGNALS */
# 
#             Com_Status = COM_INIT;
	.d2line		345
.Llo49:
	diab.li		r0,1		# config=r0
.Llo45:
	lis		r3,Com_Status@ha		# Index=r3
.Llo50:
	e_add16i		r3,r3,Com_Status@l		# Index=r3 Index=r3
	stw		r0,0(r3)		# Index=r3 config=r0
	.section	.text_vle
.L229:
.L168:
#         }
# #if (COM_DEV_ERROR_DETECT == STD_ON)
#         else    /* Com_ConsistencyCheck was not OK. [COM433] */
#         {
#             (void)Det_ReportError(COM_MODULE_ID,
#                                   COM_INSTANCE_ID,
#                                   COMServiceId_Init,
#                                   COM_E_PARAM);
#         }
# #endif
#     }
# }
	.d2line		357
	.d2epilogue_begin
.Llo46:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# config=r0
	mtspr		lr,r0		# config=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L225:
	.type		Com_Init,@function
	.size		Com_Init,.-Com_Init
# Number of nodes = 351

# Allocations for Com_Init
#	?a4		config
#	?a5		$$41
#	?a6		$$40
#	?a7		$$39
#	?a8		Index
#	?a9		TxIpdu
#	?a10		RxIpdu
#	?a11		signalIndex
#	?a12		Com_DeferredNotifyPtr
#	?a13		ActiveTM
# FUNC(void, COM_CODE) Com_DeInit(void)
	.align		2
	.section	.text_vle
        .d2line         400,22
#$$ld
.L267:

#$$bf	Com_DeInit,interprocedural,rasave,nostackparams
	.globl		Com_DeInit
	.d2_cfa_start __cie
Com_DeInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(Com_IpduGroupVector, AUTOMATIC) ipduGroupVector;
# 
# #if COM_DEV_ERROR_DETECT == STD_ON
#     if (Com_Status == COM_UNINIT)
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                 COM_INSTANCE_ID,
#                 COMServiceId_DeInit,
#                 COM_E_UNINIT);
#     }
#     else
#     {
# #endif /* COM_DEV_ERROR_DETECT */
# 
#     /* clear all Ipduvector bits and call  Com_IpduGroupControl() to
#      stop all Ipdu Groups*/
#     Com_ClearIpduGroupVector(ipduGroupVector);
	.d2line		418
	diab.addi		r3,r1,8
	bl		Com_ClearIpduGroupVector
#     /* initialize parameter value is arbitrary */
#     Com_IpduGroupControl(ipduGroupVector, FALSE);
	.d2line		420
	diab.addi		r3,r1,8
	diab.li		r4,0
	bl		Com_IpduGroupControl
# 
#     Com_Status = COM_UNINIT;
	.d2line		422
	diab.li		r3,0
	lis		r4,Com_Status@ha
	e_add16i		r4,r4,Com_Status@l
	stw		r3,0(r4)
# #if COM_DEV_ERROR_DETECT == STD_ON
# }
# #endif /* COM_DEV_ERROR_DETECT */
# 
# }
	.d2line		427
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
.L268:
	.type		Com_DeInit,@function
	.size		Com_DeInit,.-Com_DeInit
# Number of nodes = 15

# Allocations for Com_DeInit
#	SP,8		ipduGroupVector

# Allocations for module
	.section	.text_vle
	.0byte		.L274
	.section	.text_vle
#$$ld
.L5:
.L355:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L351:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\ComXf_CommonTypes.h"
.L289:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\Com_Types.h"
.L280:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\Com_i.h"
.L275:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\Com.h"
.L209:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_Initialize.c"
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
	.uleb128	8
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
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_Initialize.c"
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
.L213:
	.sleb128	2
	.4byte		.L206-.L2
	.byte		"Com_ConsistencyCheck"
	.byte		0
	.4byte		.L209
	.uleb128	371
	.uleb128	34
	.4byte		.L210
	.byte		0x1
	.byte		0x1
	.4byte		.L207
	.4byte		.L208
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L209
	.uleb128	371
	.uleb128	34
	.byte		"config"
	.byte		0
	.4byte		.L214
	.4byte		.L219
	.section	.debug_info,,n
.L220:
	.sleb128	4
	.4byte		.L209
	.uleb128	374
	.uleb128	41
	.byte		"Retval"
	.byte		0
	.4byte		.L210
	.4byte		.L221
	.section	.debug_info,,n
	.sleb128	0
.L206:
	.section	.debug_info,,n
.L226:
	.sleb128	5
	.4byte		.L223-.L2
	.byte		"Com_Init"
	.byte		0
	.4byte		.L209
	.uleb128	76
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L224
	.4byte		.L225
	.sleb128	3
	.4byte		.L209
	.uleb128	76
	.uleb128	22
	.byte		"config"
	.byte		0
	.4byte		.L215
	.4byte		.L227
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L231
	.4byte		.L228
	.4byte		.L229
.L232:
	.sleb128	4
	.4byte		.L209
	.uleb128	99
	.uleb128	31
	.byte		"Index"
	.byte		0
	.4byte		.L233
	.4byte		.L235
.L236:
	.sleb128	4
	.4byte		.L209
	.uleb128	100
	.uleb128	52
	.byte		"TxIpdu"
	.byte		0
	.4byte		.L237
	.4byte		.L241
.L242:
	.sleb128	4
	.4byte		.L209
	.uleb128	101
	.uleb128	52
	.byte		"RxIpdu"
	.byte		0
	.4byte		.L243
	.4byte		.L247
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L251
	.4byte		.L248
	.4byte		.L249
.L252:
	.sleb128	4
	.4byte		.L209
	.uleb128	176
	.uleb128	40
	.byte		"signalIndex"
	.byte		0
	.4byte		.L233
	.4byte		.L253
.L254:
	.sleb128	4
	.4byte		.L209
	.uleb128	177
	.uleb128	75
	.byte		"Com_DeferredNotifyPtr"
	.byte		0
	.4byte		.L255
	.4byte		.L258
	.section	.debug_info,,n
	.sleb128	0
.L251:
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L262
	.4byte		.L259
	.4byte		.L260
.L263:
	.sleb128	4
	.4byte		.L209
	.uleb128	264
	.uleb128	43
	.byte		"ActiveTM"
	.byte		0
	.4byte		.L211
	.4byte		.L264
	.section	.debug_info,,n
	.sleb128	0
.L262:
	.section	.debug_info,,n
	.sleb128	0
.L231:
	.section	.debug_info,,n
	.sleb128	0
.L223:
	.section	.debug_info,,n
.L269:
	.sleb128	5
	.4byte		.L266-.L2
	.byte		"Com_DeInit"
	.byte		0
	.4byte		.L209
	.uleb128	400
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L267
	.4byte		.L268
	.section	.debug_info,,n
.L270:
	.sleb128	7
	.4byte		.L209
	.uleb128	402
	.uleb128	41
	.byte		"ipduGroupVector"
	.byte		0
	.4byte		.L271
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L266:
	.section	.debug_info,,n
.L274:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L275
	.uleb128	287
	.uleb128	34
	.byte		"Com_LTHashValue"
	.byte		0
	.4byte		.L276
	.section	.debug_info,,n
.L279:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L280
	.uleb128	511
	.uleb128	36
	.byte		"Com_Status"
	.byte		0
	.4byte		.L281
	.0byte		.L279
.L283:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L280
	.uleb128	513
	.uleb128	55
	.byte		"Com_Main"
	.byte		0
	.4byte		.L215
.L284:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L280
	.uleb128	526
	.uleb128	32
	.byte		"Com_DeferredReceivedIPduWriter"
	.byte		0
	.4byte		.L285
.L286:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L280
	.uleb128	527
	.uleb128	32
	.byte		"Com_DeferredReceivedIPduReader"
	.byte		0
	.4byte		.L285
.L287:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L280
	.uleb128	528
	.uleb128	45
	.byte		"Com_DeferredReceivedIPduFifo"
	.byte		0
	.4byte		.L288
	.section	.debug_info,,n
.L218:
	.sleb128	9
	.4byte		.L289
	.uleb128	82
	.uleb128	1
	.4byte		.L290-.L2
	.uleb128	100
	.section	.debug_info,,n
.L120:
	.sleb128	10
	.byte		"ConfigurationId"
	.byte		0
	.4byte		.L277
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L121:
	.sleb128	10
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L291
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L122:
	.sleb128	10
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L291
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L123:
	.sleb128	10
	.byte		"IpduGroups_Ref"
	.byte		0
	.4byte		.L292
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L124:
	.sleb128	10
	.byte		"RxIpdus_Ref"
	.byte		0
	.4byte		.L297
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L125:
	.sleb128	10
	.byte		"RxIpdusDeferred_Ref"
	.byte		0
	.4byte		.L298
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L126:
	.sleb128	10
	.byte		"RxIpdusImmediate_Ref"
	.byte		0
	.4byte		.L298
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L127:
	.sleb128	10
	.byte		"RxIpdusRxDM_Ref"
	.byte		0
	.4byte		.L298
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L128:
	.sleb128	10
	.byte		"TxIpdus_Ref"
	.byte		0
	.4byte		.L300
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L129:
	.sleb128	10
	.byte		"Signals_Ref"
	.byte		0
	.4byte		.L301
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L130:
	.sleb128	10
	.byte		"IpduToSignal_Ref"
	.byte		0
	.4byte		.L306
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L131:
	.sleb128	10
	.byte		"GroupSignalToIPdu_Ref"
	.byte		0
	.4byte		.L306
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L132:
	.sleb128	10
	.byte		"TxModes_Ref"
	.byte		0
	.4byte		.L310
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L133:
	.sleb128	10
	.byte		"CycleTimers_Ref"
	.byte		0
	.4byte		.L315
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L134:
	.sleb128	10
	.byte		"DeferredLength_Ref"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L135:
	.sleb128	10
	.byte		"DeferredReceivedIPdu_Ref"
	.byte		0
	.4byte		.L288
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L136:
	.sleb128	10
	.byte		"DeferredReceivedIPduArrayLength"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L137:
	.sleb128	10
	.byte		"RxIpdusFlags"
	.byte		0
	.4byte		.L321
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L138:
	.sleb128	10
	.byte		"Com_ZeroMask"
	.byte		0
	.4byte		.L321
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L139:
	.sleb128	10
	.byte		"SignalGroup_base"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L140:
	.sleb128	10
	.byte		"MemberSignal_base"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	78
	.byte		0x1
.L141:
	.sleb128	10
	.byte		"SignalArrayLength"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L142:
	.sleb128	10
	.byte		"SignalGroupArrayLength"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	82
	.byte		0x1
.L143:
	.sleb128	10
	.byte		"MemberSignalArrayLength"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L144:
	.sleb128	10
	.byte		"TxIpduIdArrayLength"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	86
	.byte		0x1
.L145:
	.sleb128	10
	.byte		"RxIpduIdArrayLength"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L146:
	.sleb128	10
	.byte		"RxIPduDeferredArrayLength"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	90
	.byte		0x1
.L147:
	.sleb128	10
	.byte		"RxIPduImmediateArralLength"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L148:
	.sleb128	10
	.byte		"RxIPduRxDMArralLength"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	94
	.byte		0x1
.L149:
	.sleb128	10
	.byte		"IpduGroupArrayLength"
	.byte		0
	.4byte		.L211
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
	.sleb128	0
.L290:
.L296:
	.sleb128	9
	.4byte		.L289
	.uleb128	82
	.uleb128	1
	.4byte		.L323-.L2
	.uleb128	24
.L109:
	.sleb128	10
	.byte		"DescendentGroupList_Ref"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L110:
	.sleb128	10
	.byte		"ChildGroupList_Ref"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L111:
	.sleb128	10
	.byte		"AncestorGroupList_Ref"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L112:
	.sleb128	10
	.byte		"DescendentListLength"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L113:
	.sleb128	10
	.byte		"ChildListLength"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L114:
	.sleb128	10
	.byte		"AncestorListLength"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L115:
	.sleb128	10
	.byte		"ParentListLength"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L116:
	.sleb128	10
	.byte		"Flags"
	.byte		0
	.4byte		.L211
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L323:
.L246:
	.sleb128	9
	.4byte		.L289
	.uleb128	82
	.uleb128	1
	.4byte		.L327-.L2
	.uleb128	40
.L97:
	.sleb128	10
	.byte		"RxIPduId"
	.byte		0
	.4byte		.L285
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L98:
	.sleb128	10
	.byte		"RxGroupList_Ref"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L99:
	.sleb128	10
	.byte		"SignalIndex_Ref"
	.byte		0
	.4byte		.L306
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L100:
	.sleb128	10
	.byte		"ForeGroundBuffer_Ref"
	.byte		0
	.4byte		.L321
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L101:
	.sleb128	10
	.byte		"BackGroundBuffer_Ref"
	.byte		0
	.4byte		.L321
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L102:
	.sleb128	10
	.byte		"RxIpduFlags_Ref"
	.byte		0
	.4byte		.L328
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L103:
	.sleb128	10
	.byte		"IsBackGroundBufferUpdated_Ref"
	.byte		0
	.4byte		.L332
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L104:
	.sleb128	10
	.byte		"RxGroupListLength"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L105:
	.sleb128	10
	.byte		"NumberOfSignals"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L106:
	.sleb128	10
	.byte		"IpduLength"
	.byte		0
	.4byte		.L320
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L107:
	.sleb128	10
	.byte		"IPduFlags"
	.byte		0
	.4byte		.L211
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L108:
	.sleb128	10
	.byte		"Com_DeferredNotificationCall_Ref"
	.byte		0
	.4byte		.L255
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L327:
.L257:
	.sleb128	9
	.4byte		.L289
	.uleb128	82
	.uleb128	1
	.4byte		.L335-.L2
	.uleb128	4
.L95:
	.sleb128	10
	.byte		"Com_DeferredNotificationIndex"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L96:
	.sleb128	10
	.byte		"Com_DeferredNotificationIndexType"
	.byte		0
	.4byte		.L211
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L335:
.L331:
	.sleb128	9
	.4byte		.L289
	.uleb128	82
	.uleb128	1
	.4byte		.L336-.L2
	.uleb128	2
.L93:
	.sleb128	10
	.byte		"DeferredIPduReceived"
	.byte		0
	.4byte		.L334
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L94:
	.sleb128	10
	.byte		"IsBackGroundBufferUpdated"
	.byte		0
	.4byte		.L334
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L336:
.L240:
	.sleb128	9
	.4byte		.L289
	.uleb128	82
	.uleb128	1
	.4byte		.L337-.L2
	.uleb128	60
.L75:
	.sleb128	10
	.byte		"TxGroupList_Ref"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L76:
	.sleb128	10
	.byte		"IsIPduGroupEnabled_Ref"
	.byte		0
	.4byte		.L332
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L77:
	.sleb128	10
	.byte		"IsTxPending_Ref"
	.byte		0
	.4byte		.L332
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L78:
	.sleb128	10
	.byte		"IsConfirmationPending_Ref"
	.byte		0
	.4byte		.L332
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L79:
	.sleb128	10
	.byte		"IsConfirmationDeferred_Ref"
	.byte		0
	.4byte		.L332
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L80:
	.sleb128	10
	.byte		"CurrentTxMode_Ref"
	.byte		0
	.4byte		.L332
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L81:
	.sleb128	10
	.byte		"IsTransmissionFailed_Ref"
	.byte		0
	.4byte		.L332
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L82:
	.sleb128	10
	.byte		"Pdu"
	.byte		0
	.4byte		.L338
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L83:
	.sleb128	10
	.byte		"TxGroupListLength"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L84:
	.sleb128	10
	.byte		"Signals_Index"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L85:
	.sleb128	10
	.byte		"NumberOfSignals"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L86:
	.sleb128	10
	.byte		"SignalsWithUpdateBit_Ref"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L87:
	.sleb128	10
	.byte		"NumberOfSignalsWithUpdateBit"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L88:
	.sleb128	10
	.byte		"InitializeLength"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
.L89:
	.sleb128	10
	.byte		"TxMode"
	.byte		0
	.4byte		.L342
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L90:
	.sleb128	10
	.byte		"TargetId"
	.byte		0
	.4byte		.L285
	.sleb128	2
	.byte		0x23
	.uleb128	54
	.byte		0x1
.L91:
	.sleb128	10
	.byte		"IpduFlags"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L92:
	.sleb128	10
	.byte		"UnusedValue"
	.byte		0
	.4byte		.L211
	.sleb128	2
	.byte		0x23
	.uleb128	58
	.byte		0x1
	.sleb128	0
.L337:
.L305:
	.sleb128	9
	.4byte		.L289
	.uleb128	82
	.uleb128	1
	.4byte		.L344-.L2
	.uleb128	56
.L54:
	.sleb128	10
	.byte		"ForeGroundBuffer_Ref"
	.byte		0
	.4byte		.L321
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L55:
	.sleb128	10
	.byte		"BackGroundBuffer_Ref"
	.byte		0
	.4byte		.L321
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L56:
	.sleb128	10
	.byte		"ShadowBuffer_Ref"
	.byte		0
	.4byte		.L321
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L57:
	.sleb128	10
	.byte		"UpdateBit_Ref"
	.byte		0
	.4byte		.L321
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L58:
	.sleb128	10
	.byte		"InitValue_Ref"
	.byte		0
	.4byte		.L345
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L59:
	.sleb128	10
	.byte		"IPDU"
	.byte		0
	.4byte		.L285
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L60:
	.sleb128	10
	.byte		"InvalidIndex"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L61:
	.sleb128	10
	.byte		"BytePosition"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L62:
	.sleb128	10
	.byte		"NotifyFunctionIndex"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L63:
	.sleb128	10
	.byte		"TimeoutFunctionIndex"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L64:
	.sleb128	10
	.byte		"SignalFlagsLT"
	.byte		0
	.4byte		.L211
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L65:
	.sleb128	10
	.byte		"UpdateBitMask"
	.byte		0
	.4byte		.L211
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L66:
	.sleb128	10
	.byte		"NotifyLength"
	.byte		0
	.4byte		.L211
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L67:
	.sleb128	10
	.byte		"MinimumReceiveLength"
	.byte		0
	.4byte		.L320
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L68:
	.sleb128	10
	.byte		"ComXf_Signal"
	.byte		0
	.4byte		.L348
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L344:
.L314:
	.sleb128	9
	.4byte		.L289
	.uleb128	82
	.uleb128	1
	.4byte		.L350-.L2
	.uleb128	4
.L52:
	.sleb128	10
	.byte		"Period"
	.byte		0
	.4byte		.L317
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L53:
	.sleb128	10
	.byte		"Offset"
	.byte		0
	.4byte		.L317
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L350:
.L349:
	.sleb128	9
	.4byte		.L351
	.uleb128	44
	.uleb128	1
	.4byte		.L352-.L2
	.uleb128	20
.L43:
	.sleb128	10
	.byte		"SignBitMask"
	.byte		0
	.4byte		.L277
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L44:
	.sleb128	10
	.byte		"BufferLength"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L45:
	.sleb128	10
	.byte		"Flags"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L46:
	.sleb128	10
	.byte		"Type"
	.byte		0
	.4byte		.L353
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L47:
	.sleb128	10
	.byte		"TransferProperty"
	.byte		0
	.4byte		.L211
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L48:
	.sleb128	10
	.byte		"PackingType"
	.byte		0
	.4byte		.L211
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L49:
	.sleb128	10
	.byte		"Mask1"
	.byte		0
	.4byte		.L211
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L50:
	.sleb128	10
	.byte		"Mask2"
	.byte		0
	.4byte		.L211
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L51:
	.sleb128	10
	.byte		"shift"
	.byte		0
	.4byte		.L211
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L352:
	.section	.debug_info,,n
.L339:
	.sleb128	11
	.4byte		.L355
	.uleb128	69
	.uleb128	1
	.4byte		.L356-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L39:
	.sleb128	10
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L40:
	.sleb128	10
	.byte		"SduLength"
	.byte		0
	.4byte		.L320
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L356:
	.section	.debug_info,,n
.L282:
	.sleb128	12
	.4byte		.L289
	.uleb128	82
	.uleb128	1
	.4byte		.L357-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"COM_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"COM_INIT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L357:
.L354:
	.sleb128	12
	.4byte		.L351
	.uleb128	44
	.uleb128	1
	.4byte		.L358-.L2
	.uleb128	4
	.sleb128	13
	.byte		"COM_BOOLEAN"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"COM_UINT8"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"COM_UINT16"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"COM_UINT32"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"COM_SINT8"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"COM_SINT16"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"COM_SINT32"
	.byte		0
	.sleb128	6
	.sleb128	13
	.byte		"COM_BYTES"
	.byte		0
	.sleb128	7
	.sleb128	13
	.byte		"COM_UINT8_DYN"
	.byte		0
	.sleb128	8
	.sleb128	13
	.byte		"COM_FLOAT32"
	.byte		0
	.sleb128	9
	.sleb128	13
	.byte		"COM_FLOAT64"
	.byte		0
	.sleb128	10
	.sleb128	0
.L358:
	.section	.debug_info,,n
.L212:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L211:
	.sleb128	15
	.byte		"uint8"
	.byte		0
	.4byte		.L212
.L210:
	.sleb128	15
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L211
.L217:
	.sleb128	15
	.byte		"Com_ConfigType"
	.byte		0
	.4byte		.L218
	.section	.debug_info,,n
.L216:
	.sleb128	16
	.4byte		.L217
	.section	.debug_info,,n
.L215:
	.sleb128	17
	.4byte		.L216
.L214:
	.sleb128	16
	.4byte		.L215
.L234:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L233:
	.sleb128	15
	.byte		"uint16"
	.byte		0
	.4byte		.L234
.L239:
	.sleb128	15
	.byte		"Com_TxIpdu"
	.byte		0
	.4byte		.L240
.L238:
	.sleb128	16
	.4byte		.L239
.L237:
	.sleb128	17
	.4byte		.L238
.L245:
	.sleb128	15
	.byte		"Com_RxIpdu"
	.byte		0
	.4byte		.L246
.L244:
	.sleb128	16
	.4byte		.L245
.L243:
	.sleb128	17
	.4byte		.L244
.L256:
	.sleb128	15
	.byte		"Com_DeferredNotificationCall"
	.byte		0
	.4byte		.L257
.L255:
	.sleb128	17
	.4byte		.L256
	.section	.debug_info,,n
.L272:
	.sleb128	18
	.4byte		.L273-.L2
	.4byte		.L211
	.section	.debug_info,,n
	.sleb128	19
	.uleb128	2
	.sleb128	0
.L273:
.L271:
	.sleb128	15
	.byte		"Com_IpduGroupVector"
	.byte		0
	.4byte		.L272
.L278:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L277:
	.sleb128	15
	.byte		"uint32"
	.byte		0
	.4byte		.L278
.L276:
	.sleb128	16
	.4byte		.L277
.L281:
	.sleb128	15
	.byte		"Com_StatusType"
	.byte		0
	.4byte		.L282
.L285:
	.sleb128	15
	.byte		"PduIdType"
	.byte		0
	.4byte		.L233
.L288:
	.sleb128	17
	.4byte		.L285
.L291:
	.sleb128	17
	.4byte		.L276
.L295:
	.sleb128	15
	.byte		"Com_IpduGroup"
	.byte		0
	.4byte		.L296
.L294:
	.sleb128	16
	.4byte		.L295
.L293:
	.sleb128	17
	.4byte		.L294
.L292:
	.sleb128	16
	.4byte		.L293
.L297:
	.sleb128	16
	.4byte		.L243
.L299:
	.sleb128	17
	.4byte		.L297
.L298:
	.sleb128	16
	.4byte		.L299
.L300:
	.sleb128	16
	.4byte		.L237
.L304:
	.sleb128	15
	.byte		"Com_SignalsPB"
	.byte		0
	.4byte		.L305
.L303:
	.sleb128	16
	.4byte		.L304
.L302:
	.sleb128	17
	.4byte		.L303
.L301:
	.sleb128	16
	.4byte		.L302
.L309:
	.sleb128	15
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L233
.L308:
	.sleb128	16
	.4byte		.L309
.L307:
	.sleb128	17
	.4byte		.L308
.L306:
	.sleb128	16
	.4byte		.L307
.L313:
	.sleb128	15
	.byte		"Com_TxModeType"
	.byte		0
	.4byte		.L314
.L312:
	.sleb128	16
	.4byte		.L313
.L311:
	.sleb128	17
	.4byte		.L312
.L310:
	.sleb128	16
	.4byte		.L311
.L317:
	.sleb128	15
	.byte		"Com_Timer"
	.byte		0
	.4byte		.L233
.L316:
	.sleb128	17
	.4byte		.L317
.L315:
	.sleb128	16
	.4byte		.L316
.L320:
	.sleb128	15
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L233
.L319:
	.sleb128	17
	.4byte		.L320
.L318:
	.sleb128	16
	.4byte		.L319
.L322:
	.sleb128	17
	.4byte		.L211
.L321:
	.sleb128	16
	.4byte		.L322
.L326:
	.sleb128	16
	.4byte		.L285
.L325:
	.sleb128	17
	.4byte		.L326
.L324:
	.sleb128	16
	.4byte		.L325
.L330:
	.sleb128	15
	.byte		"Com_RxIPduFlag"
	.byte		0
	.4byte		.L331
.L329:
	.sleb128	17
	.4byte		.L330
.L328:
	.sleb128	16
	.4byte		.L329
.L334:
	.sleb128	15
	.byte		"boolean"
	.byte		0
	.4byte		.L212
.L333:
	.sleb128	17
	.4byte		.L334
.L332:
	.sleb128	16
	.4byte		.L333
.L338:
	.sleb128	15
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L339
.L341:
	.sleb128	16
	.4byte		.L233
.L340:
	.sleb128	17
	.4byte		.L341
.L342:
	.sleb128	18
	.4byte		.L343-.L2
	.4byte		.L233
	.sleb128	19
	.uleb128	0
	.sleb128	0
.L343:
.L347:
	.sleb128	16
	.4byte		.L211
.L346:
	.sleb128	17
	.4byte		.L347
.L345:
	.sleb128	16
	.4byte		.L346
.L348:
	.sleb128	15
	.byte		"ComXf_SignalsPB"
	.byte		0
	.4byte		.L349
.L353:
	.sleb128	15
	.byte		"Com_SignalType"
	.byte		0
	.4byte		.L354
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L219:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L221:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),5
	.d2locend
.L227:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),0
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),0
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),0
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),0
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),0
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),0
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),0
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),0
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),0
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),0
	.d2locend
.L235:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),31
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo36),30
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo49),3
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo46),3
	.d2locend
.L241:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),30
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo38),4
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),4
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo49),4
	.d2locend
.L247:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),3
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo34),31
	.d2locend
.L253:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),3
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo34),3
	.d2locend
.L258:
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo60),0
	.d2locend
.L264:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),0
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),0
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Com_DeInit"
	.wrcm.nstrlist "calls", "Com_ClearIpduGroupVector","Com_IpduGroupControl"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Com_Init"
	.wrcm.nstrlist "calls", "Com_ClearIpduUpdateBits","Com_ConsistencyCheck","Com_InitializeIpdu","vstar_copy"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Com_ConsistencyCheck"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Com_Initialize.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Com_Initialize.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Com_Initialize.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Com_Initialize.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Com_Initialize.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Com_Initialize.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\Com\ssc\make\..\src\Com_Initialize.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
