#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Com_SignalGroupInterface.c"
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
# FUNC(uint8, COM_CODE) Com_SendSignal(
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_SignalGroupInterface.c"
        .d2line         267,23
#$$ld
.L260:

#$$bf	Com_SendSignal,interprocedural,rasave,nostackparams
	.globl		Com_SendSignal
	.d2_cfa_start __cie
Com_SendSignal:
.Llo1:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# SignalId=r31 SignalId=r3
	mr		r30,r4		# SignalDataPtr=r30 SignalDataPtr=r4
	.d2prologue_end
#         VAR(Com_SignalIdType, AUTOMATIC) SignalId,
#         P2CONST(void, AUTOMATIC, COM_APPL_DATA) SignalDataPtr)
# {
#     /*[ADD_Com_20004]*/
#     P2CONST(Com_SignalsPB,AUTOMATIC,COM_CONST_PB) SignalPB_Ref;
#     VAR(uint8, AUTOMATIC) ReturnValue = E_OK;
	.d2line		273
	diab.li		r27,0		# ReturnValue=r27
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#     VAR(boolean, AUTOMATIC) IsSignalChanged = FALSE;
# #endif
# #if COM_ENABLE_RISE_FALL_TRIGGER ==STD_ON
#     VAR(boolean, AUTOMATIC) isSignalRiseFall = FALSE;
# #endif
# 
#     P2CONST(Com_TxIpdu,AUTOMATIC,COM_CONST_PB) Ipdu;
# 
# #if COM_DEV_ERROR_DETECT == STD_ON
#     if (Com_Status == COM_UNINIT)
#     {
#         (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,COMServiceId_SendSignal
#                 ,COM_E_UNINIT);
#         ReturnValue = COM_SERVICE_NOT_AVAILABLE;
#     }
#     else
#     {
#         if(SignalDataPtr == NULL_PTR)
#         {
#             (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,
#                     COMServiceId_SendSignal,COM_E_PARAM_POINTER);
#             ReturnValue = COM_SERVICE_NOT_AVAILABLE;
#         }
#         else if(((SignalId) >= (Com_Main->SignalArrayLength))
#         || (((Com_Main->Signals_Ref[SignalId]).ComXf_Signal.Type) == COM_UINT8_DYN)
#         || (((uint16)(((Com_Main->Signals_Ref[SignalId]).ComXf_Signal.Flags) & COM_SIGNAL_ORPHAN) != COM_SIGNAL_ORPHAN)
#                 && ((((Com_Main->Signals_Ref[SignalId]).ForeGroundBuffer_Ref) == NULL_PTR)
#                      || ((Com_Main->Signals_Ref[SignalId].ComXf_Signal.Flags & COM_SIGNAL_TX) == 0))))
#         {
#             (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,
#                     COMServiceId_SendSignal,COM_E_PARAM);
#             ReturnValue = COM_SERVICE_NOT_AVAILABLE;
#         }
#         else
# #endif
#         {
#             SignalPB_Ref = &(Com_Main->Signals_Ref[SignalId]);
	.d2line		311
	rlwinm		r0,r31,0,16,31		# SignalId=r31
	lis		r3,Com_Main@ha
.Llo2:
	lwz		r3,Com_Main@l(r3)
	lwz		r29,36(r3)		# SignalPB_Ref=r29
.Llo8:
	rlwinm		r3,r0,6,0,25
	se_slwi		r0,3
	subf		r0,r0,r3
	se_add		r0,r29		# SignalPB_Ref=r29
	mr		r29,r0		# SignalPB_Ref=r29 SignalPB_Ref=r0
#             /*If the signal is connected to an IPdu */
#             if((uint16)(SignalPB_Ref->ComXf_Signal.Flags & COM_SIGNAL_ORPHAN) != COM_SIGNAL_ORPHAN)
	.d2line		313
.Llo9:
	lhz		r0,42(r29)		# SignalPB_Ref=r29
	rlwinm		r0,r0,0,16,16
	cmpli		0,0,r0,32768
	bc		1,2,.L182	# eq
#             {
#                 Ipdu = &(Com_Main->TxIpdus_Ref[SignalPB_Ref->IPDU]);
	.d2line		315
.Llo3:
	lhz		r0,20(r29)		# SignalPB_Ref=r29
.Llo5:
	lis		r3,Com_Main@ha
	lwz		r3,Com_Main@l(r3)
	lwz		r28,32(r3)		# Ipdu=r28
.Llo11:
	rlwinm		r3,r0,6,0,25
	se_slwi		r0,2
	subf		r0,r0,r3
	se_add		r0,r28		# Ipdu=r28
	mr		r28,r0		# Ipdu=r28 Ipdu=r0
# #if COM_ENABLE_IMMEDIATE_PDU_TRANSMIT == STD_ON
#                 if((uint16)(Ipdu->IpduFlags & COM_TXIPDU_IMMEDIATE_TRANSFER) == COM_TXIPDU_IMMEDIATE_TRANSFER)
#                 {
#                     ReturnValue = SendImmediateSignalPdu(SignalId, SignalPB_Ref, Ipdu, SignalDataPtr);
#                 }
#                 else
# #endif
#                 {
# #if COM_ENABLE_LARGE_DATA_TYPES == STD_ON
#                     /*If Ipdu is TP, check if it is locked */
#                     if((0 != (Ipdu->IpduFlags & COM_TXIPDU_TP))
#                     &&(*Ipdu->IsTpBufferLocked_Ref != FALSE))
#                     {
#                         ReturnValue = COM_BUSY;
#                     }
#                     else
# #endif /* COM_ENABLE_LARGE_DATA_TYPES */
#                     {
#                         /* Protect Tx foreground buffer */
#                         SchM_Enter_Com_COM_APPLICATION_TXIPDU();
	.d2line		335
	bl		SchM_Enter_Com_COM_APPLICATION_TXIPDU
# 
# #if COM_ENABLE_TMS == STD_ON
#                         /* Evaluate filter for this signal */
#                         if(SignalPB_Ref->TxFilterMask != (uint8)0)
#                         {
#                             Com_ProcessTxSignalFilter(SignalId,
#                                 SignalId,
#                                 SignalDataPtr,
#                                 COM_CALLER_SEND_SIGNAL,
#                                 Com_Main->TxSignalFilterMasks);
#                         }
# #endif /* COM_ENABLE_TMS */
# 
# #if COM_ENABLE_RISE_FALL_TRIGGER == STD_ON
#                         {
#                             CONST(uint8, AUTOMATIC) oldValue = (uint8)(*SignalPB_Ref->ForeGroundBuffer_Ref & SignalPB_Ref->ComXf_Signal.Mask1);
#                             CONST(uint8, AUTOMATIC) newValue = *(P2CONST(uint8, AUTOMATIC, COM_APPL_DATA)) SignalDataPtr;
#                             isSignalRiseFall = changedRiseFall(SignalPB_Ref->ComXf_Signal.TransferProperty, oldValue, newValue);
#                         }
# #endif
#                         Com_PackSignal(SignalId , SignalDataPtr
	.d2line		356
	rlwinm		r3,r31,0,16,31		# SignalId=r31
	mr		r4,r30		# SignalDataPtr=r4 SignalDataPtr=r30
	bl		Com_PackSignal
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#                                        ,0
# #endif
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                                        , &IsSignalChanged
# #endif
#                         );
# 
#                         /*Set the update bit*/
#                         *(SignalPB_Ref->UpdateBit_Ref) |= SignalPB_Ref->UpdateBitMask;
	.d2line		366
	lwz		r3,12(r29)		# SignalPB_Ref=r29
	lbz		r0,0(r3)
	lbz		r4,31(r29)		# SignalPB_Ref=r29
	or		r0,r0,r4
	stb		r0,0(r3)
#                         /*End Critical Section*/
#                         SchM_Exit_Com_COM_APPLICATION_TXIPDU();
	.d2line		368
	bl		SchM_Exit_Com_COM_APPLICATION_TXIPDU
#                         /*check if Ipdu is stopped*/
#                         if (*Ipdu->IsIPduGroupEnabled_Ref == FALSE)
	.d2line		370
	lwz		r3,4(r28)		# Ipdu=r28
	lbz		r0,0(r3)
	se_cmpi		r0,0
#                         {
#                             ReturnValue = COM_SERVICE_NOT_AVAILABLE;
	.d2line		372
	diab.li		r3,128
	isel		r27,r3,r27,2		# ReturnValue=r27 ReturnValue=r27
.L182:
# #if COM_ERROR_NOTIFICATION == STD_ON
#                             if (Com_ErrorFunction_Array[SignalPB_Ref->ErrorFunctionIndex] != NULL_PTR)
#                             {
#                                 (Com_ErrorFunction_Array[SignalPB_Ref->ErrorFunctionIndex])();
#                             }
# #endif /* COM_ERROR_NOTIFICATION */
#                         }
#                         else
#                         {
# #if COM_ENABLE_TRIGERRED_SIGNALS == STD_ON || COM_ENABLE_RISE_FALL_TRIGGER == STD_ON
#                             if(
#                                ((uint8)(SignalPB_Ref->ComXf_Signal.TransferProperty & COM_SIGNAL_TRP_TRIGGERTYPE_MASK) == COM_SIGNAL_TRP_TRIGGERRED)
# #if COM_ENABLE_TRIGGERED_ON_CHANGE  == STD_ON
#                              || (((uint8)(SignalPB_Ref->ComXf_Signal.TransferProperty & COM_SIGNAL_TRP_TRIGGERTYPE_MASK) == COM_SIGNAL_TRP_TRIGGERRED_ON_CHANGE) &&
#                                   (IsSignalChanged == TRUE))
# #endif
# #if COM_ENABLE_RISE_FALL_TRIGGER == STD_ON
#                              || (isSignalRiseFall == TRUE)
# #endif
#                                 )
#                             {
#                                 Com_CheckTM(SignalId);
#                             }
# #endif
#                         }
#                     }
#                 }
#             }
#         }
# #if COM_DEV_ERROR_DETECT == STD_ON
#     }
# #endif
#     return ReturnValue;
	.d2line		405
.Llo4:
	rlwinm		r3,r27,0,24,31		# ReturnValue=r27
# }
	.d2line		406
	.d2epilogue_begin
.Llo6:
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo10:
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo7:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L261:
	.type		Com_SendSignal,@function
	.size		Com_SendSignal,.-Com_SendSignal
# Number of nodes = 71

# Allocations for Com_SendSignal
#	?a4		SignalId
#	?a5		SignalDataPtr
#	?a6		$$51
#	?a7		$$50
#	?a8		$$47
#	?a9		SignalPB_Ref
#	?a10		ReturnValue
#	?a11		Ipdu
# FUNC(uint8, COM_CODE) Com_SendSignalGroup(
	.align		2
	.section	.text_vle
        .d2line         565,23
#$$ld
.L290:

#$$bf	Com_SendSignalGroup,interprocedural,rasave,nostackparams
	.globl		Com_SendSignalGroup
	.d2_cfa_start __cie
Com_SendSignalGroup:
.Llo12:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# SignalGroupId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# SignalGroupId=r0 SignalGroupId=r3
	.d2prologue_end
#         VAR(Com_SignalGroupIdType, AUTOMATIC) SignalGroupId)
# {
#     VAR(uint8, AUTOMATIC) ReturnValue = E_OK;
	.d2line		568
	diab.li		r31,0		# ReturnValue=r31
# 
# #if COM_DEV_ERROR_DETECT == STD_ON
#     if (Com_Status == COM_UNINIT)
#     {
#         (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,
#                 COMServiceId_SendSignalGroup,COM_E_UNINIT);
#         ReturnValue = COM_SERVICE_NOT_AVAILABLE;
#     }
#     else
# #endif
#     {
#         SignalGroupId = (Com_SignalGroupIdType)(SignalGroupId + (Com_Main->SignalGroup_base));
	.d2line		580
.Llo28:
	lis		r3,Com_Main@ha		# SignalGroupId=r3
	lwz		r3,Com_Main@l(r3)		# SignalGroupId=r3 SignalGroupId=r3
	lhz		r3,76(r3)		# SignalGroupId=r3 SignalGroupId=r3
.Llo13:
	se_add		r0,r3		# SignalGroupId=r0 SignalGroupId=r0 SignalGroupId=r3
.Llo14:
	mr		r0,r0		# SignalGroupId=r0 SignalGroupId=r0
	.section	.text_vle
.L297:
# 
# #if COM_DEV_ERROR_DETECT == STD_ON
#         if(((SignalGroupId) >= (Com_Main->SignalGroupArrayLength))
#         || ((uint16)(Com_Main->Signals_Ref[SignalGroupId].ComXf_Signal.Flags & COM_SIGNAL_SIGNALGROUP_ARRAYACCESS) ==
#                                                      COM_SIGNAL_SIGNALGROUP_ARRAYACCESS)
#         || (((uint16)(((Com_Main->Signals_Ref[SignalGroupId]).ComXf_Signal.Flags) & COM_SIGNAL_ORPHAN) != COM_SIGNAL_ORPHAN)
#                 && ((((Com_Main->Signals_Ref[SignalGroupId]).ForeGroundBuffer_Ref) == NULL_PTR)
#                      || ((Com_Main->Signals_Ref[SignalGroupId].ComXf_Signal.Flags & COM_SIGNAL_TX) == 0))))
#         {
#             (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,
#                     COMServiceId_SendSignalGroup,COM_E_PARAM);
#             ReturnValue = COM_SERVICE_NOT_AVAILABLE;
#         }
#         else
# #endif
#         {
#             P2CONST(Com_SignalsPB,AUTOMATIC,COM_CONST_PB) SignalPB_Ref = &(Com_Main->Signals_Ref[SignalGroupId]);
	.d2line		597
	rlwinm		r0,r0,0,16,31		# SignalGroupId=r0 SignalGroupId=r0
	lis		r3,Com_Main@ha		# SignalGroupId=r3
	lwz		r3,Com_Main@l(r3)		# SignalGroupId=r3 SignalGroupId=r3
	lwz		r30,36(r3)		# SignalPB_Ref=r30 SignalGroupId=r3
.Llo30:
	rlwinm		r3,r0,6,0,25		# SignalGroupId=r3 SignalGroupId=r0
	se_slwi		r0,3		# SignalGroupId=r0 SignalGroupId=r0
	subf		r0,r0,r3		# SignalGroupId=r0 SignalGroupId=r0 SignalGroupId=r3
	se_add		r0,r30		# SignalGroupId=r0 SignalGroupId=r0 SignalPB_Ref=r30
.Llo15:
	mr		r30,r0		# SignalPB_Ref=r30 SignalPB_Ref=r0
#             /*If the signal is connected to an IPdu */
#             if((uint16)(SignalPB_Ref->ComXf_Signal.Flags & COM_SIGNAL_ORPHAN) != COM_SIGNAL_ORPHAN)
	.d2line		599
.Llo31:
	lhz		r0,42(r30)		# SignalGroupId=r0 SignalPB_Ref=r30
.Llo16:
	rlwinm		r0,r0,0,16,16		# SignalGroupId=r0 SignalGroupId=r0
	cmpli		0,0,r0,32768		# SignalGroupId=r0
	bc		1,2,.L187	# eq
	.section	.text_vle
.L303:
#             {
#                 P2CONST(Com_TxIpdu,AUTOMATIC,COM_CONST_PB) Ipdu = &(Com_Main->TxIpdus_Ref[SignalPB_Ref->IPDU]);
	.d2line		601
.Llo17:
	lhz		r0,20(r30)		# SignalGroupId=r0 SignalPB_Ref=r30
.Llo18:
	lis		r3,Com_Main@ha		# SignalGroupId=r3
	lwz		r3,Com_Main@l(r3)		# SignalGroupId=r3 SignalGroupId=r3
	lwz		r29,32(r3)		# SignalGroupId=r29 SignalGroupId=r3
	rlwinm		r3,r0,6,0,25		# SignalGroupId=r3 SignalGroupId=r0
	se_slwi		r0,2		# SignalGroupId=r0 SignalGroupId=r0
	subf		r0,r0,r3		# SignalGroupId=r0 SignalGroupId=r0 SignalGroupId=r3
	se_add		r0,r29		# SignalGroupId=r0 SignalGroupId=r0 SignalGroupId=r29
.Llo19:
	mr		r29,r0		# Ipdu=r29 Ipdu=r0
	.section	.text_vle
.L309:
# #if COM_ENABLE_IMMEDIATE_PDU_TRANSMIT == STD_ON
#                 if((Ipdu->IpduFlags & COM_TXIPDU_IMMEDIATE_TRANSFER) == COM_TXIPDU_IMMEDIATE_TRANSFER)
#                 {
#                     ReturnValue = SendImmediateSignalGroupPdu(SignalPB_Ref, Ipdu);
#                 }
#                 else
# #endif
#                 {
# #if COM_ENABLE_LARGE_DATA_TYPES == STD_ON
#                     /*If Ipdu is TP, check if it is locked */
#                     if((0 != (Ipdu->IpduFlags & COM_TXIPDU_TP))
#                             &&(*Ipdu->IsTpBufferLocked_Ref != FALSE))
#                     {
#                         ReturnValue = COM_BUSY;
#                     }
#                     else
# #endif /* COM_ENABLE_LARGE_DATA_TYPES */
#                     {
#                         VAR(uint16,AUTOMATIC) Index;
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                         VAR(boolean, AUTOMATIC) Com_GroupSignalValueChanged = FALSE;
# #endif
# #if COM_ENABLE_RISE_FALL_TRIGGER ==STD_ON
#                         VAR(boolean, AUTOMATIC) isSignalRiseFall = FALSE;
# #endif
# 
#                         SchM_Enter_Com_COM_APPLICATION_TXIPDU();
	.d2line		628
.Llo32:
	bl		SchM_Enter_Com_COM_APPLICATION_TXIPDU
# 
#                         /*Set the update bit*/
#                         *(SignalPB_Ref->UpdateBit_Ref) |= SignalPB_Ref->UpdateBitMask;
	.d2line		631
.Llo33:
	lwz		r3,12(r30)		# SignalGroupId=r3 SignalPB_Ref=r30
.Llo20:
	lbz		r0,0(r3)		# SignalGroupId=r0 SignalGroupId=r3
	lbz		r4,31(r30)		# SignalPB_Ref=r30
	or		r0,r0,r4		# SignalGroupId=r0 SignalGroupId=r0
	stb		r0,0(r3)		# SignalGroupId=r3 SignalGroupId=r0
# 
#                         for(Index = (uint16)0; Index < (uint16)SignalPB_Ref->NotifyLength; Index++)
	.d2line		633
	diab.li		r28,0		# Index=r28
.L188:
.Llo21:
	rlwinm		r5,r28,0,16,31		# GroupSignalPointer=r5 Index=r28
.Llo36:
	lbz		r0,32(r30)		# SignalGroupId=r0 SignalPB_Ref=r30
.Llo22:
	se_cmp		r5,r0		# GroupSignalPointer=r5 SignalGroupId=r0
	bc		0,0,.L190	# ge
	.section	.text_vle
.L315:
#                         {
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                             VAR(boolean, AUTOMATIC) IsSignalChanged = FALSE;
# #endif
#                             CONST(Com_SignalIdType, AUTOMATIC) GroupSignalId =
	.d2line		638
.Llo23:
	lis		r3,Com_Main@ha		# SignalGroupId=r3
.Llo24:
	lwz		r4,Com_Main@l(r3)		# SignalGroupId=r3
	lwz		r4,40(r4)
	lhz		r0,22(r30)		# SignalGroupId=r0 SignalPB_Ref=r30
	rlwinm		r5,r28,0,16,31		# GroupSignalPointer=r5 Index=r28
.Llo37:
	se_add		r0,r5		# SignalGroupId=r0 SignalGroupId=r0 GroupSignalPointer=r5
	se_slwi		r0,1		# SignalGroupId=r0 SignalGroupId=r0
	lhzx		r0,r4,r0		# SignalGroupId=r0
.Llo34:
	mr		r0,r0		# GroupSignalId=r0 GroupSignalId=r0
#                                     Com_Main->IpduToSignal_Ref[SignalPB_Ref->InvalidIndex + Index];
#                             P2CONST(Com_SignalsPB, AUTOMATIC,COM_CONST_PB) GroupSignalPointer =
	.d2line		640
	rlwinm		r0,r0,0,16,31		# GroupSignalId=r0 GroupSignalId=r0
	lwz		r3,Com_Main@l(r3)		# SignalGroupId=r3 SignalGroupId=r3
	lwz		r5,36(r3)		# GroupSignalPointer=r5 SignalGroupId=r3
	rlwinm		r3,r0,6,0,25		# SignalGroupId=r3 GroupSignalId=r0
	rlwinm		r4,r0,3,0,28		# GroupSignalId=r0
	subf		r4,r4,r3		# SignalGroupId=r3
	se_add		r4,r5		# GroupSignalPointer=r5
	mr		r5,r4		# GroupSignalPointer=r5 GroupSignalPointer=r4
#                                     &(Com_Main->Signals_Ref[GroupSignalId]);
# #if COM_ENABLE_RISE_FALL_TRIGGER == STD_ON
#                             if(isSignalRiseFall == FALSE)
#                             {
#                                 CONST(uint8, AUTOMATIC) oldValue = (uint8)(*GroupSignalPointer->ForeGroundBuffer_Ref & GroupSignalPointer->ComXf_Signal.Mask1);
#                                 CONST(uint8, AUTOMATIC) newValue = *GroupSignalPointer->ShadowBuffer_Ref;
#                                 isSignalRiseFall = changedRiseFall(GroupSignalPointer->ComXf_Signal.TransferProperty, oldValue, newValue);
#                             }
# #endif
#                             /* Pack group signal from shadow buffer to FG buffer */
#                             Com_PackSignal(GroupSignalId, GroupSignalPointer->ShadowBuffer_Ref
	.d2line		651
.Llo38:
	lwz		r4,8(r5)		# GroupSignalPointer=r5
	mr		r3,r0		# GroupSignalId=r3
.Llo25:
	bl		Com_PackSignal
	.section	.text_vle
.L316:
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#                                            ,GroupSignalPointer->ComXf_Signal.BufferLength
# #endif
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                                            ,&IsSignalChanged
# #endif
#                                         );
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                             /*REQ: [DEV_COM743] -  initiate transmissions of the assigned I-PDU,
#                              * if at least one new value of the signal groups group signals
#                              * having ComTransferProperty TRIGGERED_ON_CHANGE differs to the locally stored*/
#                             if((IsSignalChanged == TRUE) && ((uint8)(GroupSignalPointer->ComXf_Signal.TransferProperty & COM_SIGNAL_TRP_TRIGGERTYPE_MASK) ==  COM_SIGNAL_TRP_TRIGGERRED_ON_CHANGE))
#                             {
#                                 Com_GroupSignalValueChanged = TRUE;
#                             }
# #endif
#                             /* Copy TMC from ShadowTxSignalFilterMasks to TxSignalFilterMasks */
# #if COM_ENABLE_TMS == STD_ON
#                             if(GroupSignalPointer->TxFilterMask != (uint8)0)
#                             {
#                                 /* Clear mask bit in TxSignalFilterMasks */
#                                 Com_Main->TxSignalFilterMasks[GroupSignalPointer->FilterBytePosition] &= (uint8)~GroupSignalPointer->TxFilterMask;
#                                 /* Set mask bit in TxSignalFilterMasks according to TxShadowSignalFilterMasks value */
#                                 Com_Main->TxSignalFilterMasks[GroupSignalPointer->FilterBytePosition] |=
#                                         (uint8)(Com_Main->TxShadowSignalFilterMasks[GroupSignalPointer->FilterBytePosition] &
#                                          GroupSignalPointer->TxFilterMask);
#                             }
# #endif /* COM_ENABLE_TMS */
#                         }
	.d2line		680
.Llo35:
	diab.addi		r5,r28,1		# GroupSignalPointer=r5 Index=r28
	se_addi		r28,1		# Index=r28 Index=r28
	b		.L188
.L190:
# #if COM_ENABLE_TRIGERRED_SIGNALS == STD_ON || COM_ENABLE_RISE_FALL_TRIGGER == STD_ON
#                         if (*Ipdu->IsIPduGroupEnabled_Ref == TRUE)
#                         {
#                             if(
#                                ((uint8)(SignalPB_Ref->ComXf_Signal.TransferProperty & COM_SIGNAL_TRP_TRIGGERTYPE_MASK) == COM_SIGNAL_TRP_TRIGGERRED)
# #if COM_ENABLE_TRIGGERED_ON_CHANGE  == STD_ON
#                            || (((uint8)(SignalPB_Ref->ComXf_Signal.TransferProperty & COM_SIGNAL_TRP_TRIGGERTYPE_MASK) == COM_SIGNAL_TRP_TRIGGERRED_ON_CHANGE) &&
#                                 (Com_GroupSignalValueChanged == TRUE))
# #endif
# #if COM_ENABLE_RISE_FALL_TRIGGER == STD_ON
#                            || (isSignalRiseFall == TRUE)
# #endif
#                               )
#                             {
#                                 Com_CheckTM((Com_SignalIdType)SignalGroupId);
#                             }
#                         }
# #endif
#                         SchM_Exit_Com_COM_APPLICATION_TXIPDU();
	.d2line		699
	bl		SchM_Exit_Com_COM_APPLICATION_TXIPDU
# 
#                         /*check if Ipdu is stopped*/
#                         if (*Ipdu->IsIPduGroupEnabled_Ref == FALSE)
	.d2line		702
	lwz		r3,4(r29)		# SignalGroupId=r3 Ipdu=r29
.Llo26:
	lbz		r0,0(r3)		# SignalGroupId=r0 SignalGroupId=r3
	se_cmpi		r0,0		# SignalGroupId=r0
	bc		0,2,.L187	# ne
#                         {
#                             ReturnValue = COM_SERVICE_NOT_AVAILABLE;
	.d2line		704
.Llo27:
	diab.li		r31,128		# ReturnValue=r31
	.section	.text_vle
.L310:
	.section	.text_vle
.L304:
.L187:
	.section	.text_vle
.L298:
# #if COM_ERROR_NOTIFICATION == STD_ON
#                             if (Com_ErrorFunction_Array[SignalPB_Ref->ErrorFunctionIndex] != NULL_PTR)
#                             {
#                                 (Com_ErrorFunction_Array[SignalPB_Ref->ErrorFunctionIndex])();
#                             }
# #endif /* COM_ERROR_NOTIFICATION */
#                         }
#                     }
#                 }
#             }
#         }
#     }
#     return ReturnValue;
	.d2line		717
	rlwinm		r3,r31,0,24,31		# SignalGroupId=r3 ReturnValue=r31
# }
	.d2line		718
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo29:
	lwz		r0,36(r1)		# SignalGroupId=r0
	mtspr		lr,r0		# SignalGroupId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L291:
	.type		Com_SendSignalGroup,@function
	.size		Com_SendSignalGroup,.-Com_SendSignalGroup
# Number of nodes = 126

# Allocations for Com_SendSignalGroup
#	?a4		SignalGroupId
#	?a5		$$54
#	?a6		$$53
#	?a7		$$52
#	?a8		$$48
#	?a9		ReturnValue
#	?a10		SignalPB_Ref
#	?a11		Ipdu
#	?a12		Index
#	?a13		GroupSignalId
#	?a14		GroupSignalPointer
# FUNC(uint16, COM_CODE) GetSignalLength(
	.align		2
	.section	.text_vle
        .d2line         1269,24
#$$ld
.L327:

#$$bf	GetSignalLength,interprocedural,nostackparams

# Regs written: r0,r1,r3,r6,r7,cr0,lr,ctr
	.globl		GetSignalLength
	.d2_cfa_start __cie
GetSignalLength:
.Llo39:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# xfSignalPtr=r3 xfSignalPtr=r3
	.d2prologue_end
#         CONSTP2CONST(ComXf_SignalsPB, TYPEDEF, COM_CONST_PB) xfSignalPtr)
# {
#     VAR(uint16, AUTOMATIC) ReturnValue;
# 
#     switch(xfSignalPtr->Type)
	.d2line		1274
	lwz		r6,8(r3)		# xfSignalPtr=r3
	se_cmpli	r6,10
	se_slwi		r6,2
	e_add2is		r6,.L338@ha
	bc		1,1,.L220	# gt
	lwz		r7,.L338@l(r6)
	mtspr		ctr,r7
	bcctr		20,0
.L338:
#$$sl
	.long		.L212
	.long		.L212
	.long		.L215
	.long		.L218
	.long		.L212
	.long		.L215
	.long		.L218
	.long		.L220
	.long		.L220
	.long		.L218
	.long		.L219
#$$se
.L212:
#     {
#         case COM_BOOLEAN:
#         case COM_UINT8:
#         case COM_SINT8:
#             ReturnValue = (uint16)1;
	.d2line		1279
.Llo40:
	diab.li		r3,1		# ReturnValue=r3
.Llo43:
	b		.L213
.L215:
#             break;
#         case COM_UINT16:
#         case COM_SINT16:
#             ReturnValue = (uint16)2;
	.d2line		1283
.Llo44:
	diab.li		r3,2		# ReturnValue=r3
.Llo45:
	b		.L213
.L218:
#             break;
#         case COM_UINT32:
#         case COM_SINT32:
#         case COM_FLOAT32:
#             ReturnValue = (uint16)4;
	.d2line		1288
.Llo46:
	diab.li		r3,4		# ReturnValue=r3
.Llo47:
	b		.L213
.L219:
#             break;
#         case COM_FLOAT64:
#             ReturnValue = (uint16)8;
	.d2line		1291
.Llo48:
	diab.li		r3,8		# ReturnValue=r3
.Llo49:
	b		.L213
.L220:
#             break;
#         default:
#             ReturnValue = xfSignalPtr->BufferLength;
	.d2line		1294
.Llo41:
	lhz		r3,4(r3)		# xfSignalPtr=r3 xfSignalPtr=r3
.Llo42:
	mr		r3,r3		# ReturnValue=r3 ReturnValue=r3
.L213:
#             break;
#     }
#     return ReturnValue;
	.d2line		1297
	rlwinm		r3,r3,0,16,31		# ReturnValue=r3 ReturnValue=r3
# }
	.d2line		1298
	.d2epilogue_begin
.Llo50:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L328:
	.type		GetSignalLength,@function
	.size		GetSignalLength,.-GetSignalLength
# Number of nodes = 29

# Allocations for GetSignalLength
#	?a4		xfSignalPtr
#	?a5		ReturnValue
# FUNC(void, COM_CODE) Com_UpdateShadowSignal(
	.align		2
	.section	.text_vle
        .d2line         885,22
#$$ld
.L341:

#$$bf	Com_UpdateShadowSignal,interprocedural,rasave,nostackparams
	.globl		Com_UpdateShadowSignal
	.d2_cfa_start __cie
Com_UpdateShadowSignal:
.Llo51:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# SignalId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# SignalId=r0 SignalId=r3
	mr		r8,r4		# SignalDataPtr=r8 SignalDataPtr=r4
	.d2prologue_end
#         VAR(Com_SignalIdType, AUTOMATIC) SignalId,
#         P2CONST(void, AUTOMATIC, COM_APPL_DATA) SignalDataPtr)
# {
# #if COM_DEV_ERROR_DETECT == STD_ON
#     if (Com_Status == COM_UNINIT)
#     {
#         (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,
#                 COMServiceId_UpdateShadowSignal,COM_E_UNINIT);
#     }
#     else
# #endif
#     {
#         SignalId = (Com_SignalIdType)(SignalId + Com_Main->MemberSignal_base);
	.d2line		898
	lis		r3,Com_Main@ha		# SignalId=r3
	lwz		r3,Com_Main@l(r3)		# SignalId=r3 SignalId=r3
	lhz		r3,78(r3)		# SignalId=r3 SignalId=r3
.Llo52:
	se_add		r0,r3		# SignalId=r0 SignalId=r0 SignalId=r3
.Llo53:
	mr		r0,r0		# SignalId=r0 SignalId=r0
	.section	.text_vle
.L346:
# 
# #if COM_DEV_ERROR_DETECT == STD_ON
#         if(SignalDataPtr == NULL_PTR)
#         {
#             (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,
#                     COMServiceId_UpdateShadowSignal,COM_E_PARAM_POINTER);
#         }
#         else if(((SignalId) >= (Com_Main->MemberSignalArrayLength))
#              || ((uint16)(Com_Main->Signals_Ref[SignalId].ComXf_Signal.Flags & COM_SIGNAL_SIGNALGROUP_ARRAYACCESS) ==
#                                                           COM_SIGNAL_SIGNALGROUP_ARRAYACCESS)
#         || (((uint16)(((Com_Main->Signals_Ref[SignalId]).ComXf_Signal.Flags) & COM_SIGNAL_ORPHAN) != COM_SIGNAL_ORPHAN)
#                 && ((((Com_Main->Signals_Ref[SignalId]).ForeGroundBuffer_Ref) == NULL_PTR)
#                      || ((Com_Main->Signals_Ref[SignalId].ComXf_Signal.Flags & COM_SIGNAL_TX) == 0))))
#         {
#             (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,
#                     COMServiceId_UpdateShadowSignal,COM_E_PARAM);
#         }
#         else
# #endif
#         {
#             P2CONST(Com_SignalsPB, AUTOMATIC, COM_CONST_PB) SignalPB_Ref = &Com_Main->Signals_Ref[SignalId];
	.d2line		919
.Llo57:
	rlwinm		r0,r0,0,16,31		# SignalId=r0 SignalId=r0
.Llo58:
	lis		r3,Com_Main@ha		# SignalId=r3
	lwz		r3,Com_Main@l(r3)		# SignalId=r3 SignalId=r3
	lwz		r4,36(r3)		# SignalPB_Ref=r4 SignalId=r3
.Llo60:
	rlwinm		r3,r0,6,0,25		# SignalId=r3 SignalId=r0
	se_slwi		r0,3		# SignalId=r0 SignalId=r0
	subf		r0,r0,r3		# SignalId=r0 SignalId=r0 SignalId=r3
	se_add		r0,r4		# SignalId=r0 SignalId=r0 SignalPB_Ref=r4
.Llo54:
	mr		r4,r0		# SignalPB_Ref=r4 SignalPB_Ref=r0
#             /*If the signal is connected to an IPdu */
#             if((uint16)(SignalPB_Ref->ComXf_Signal.Flags & COM_SIGNAL_ORPHAN) != COM_SIGNAL_ORPHAN)
	.d2line		921
.Llo61:
	lhz		r0,42(r4)		# SignalId=r0 SignalPB_Ref=r4
.Llo55:
	rlwinm		r0,r0,0,16,16		# SignalId=r0 SignalId=r0
	cmpli		0,0,r0,32768		# SignalId=r0
	bc		1,2,.L195	# eq
	.section	.text_vle
.L352:
#             {
#                 CONST(uint16, AUTOMATIC) copyLen = GetSignalLength(&SignalPB_Ref->ComXf_Signal);
	.d2line		923
.Llo56:
	diab.addi		r3,r4,36		# SignalId=r3 SignalPB_Ref=r4
	bl		GetSignalLength
.Llo63:
	mr		r5,r3		# copyLen=r5 copyLen=r3
# #if COM_ENABLE_TMS == STD_ON
# 
#                 /* Process group signal filter */
#                 if(SignalPB_Ref->TxFilterMask !=(uint8)0)
#                 {
#                     Com_ProcessTxSignalFilter(SignalId,
#                         SignalId,
#                         SignalDataPtr,
#                         COM_CALLER_SEND_GROUP_SIGNAL,
#                         Com_Main->TxShadowSignalFilterMasks);
#                 }
# #endif /* COM_ENABLE_TMS */
#                 /* Copy data into shadow buffer from SignalDataPtr */
#                 COM_COPY_EXTERNAL(SignalPB_Ref->ShadowBuffer_Ref, SignalDataPtr, (uint32)copyLen);
	.d2line		937
	lwz		r3,8(r4)		# SignalId=r3 SignalPB_Ref=r4
.Llo64:
	rlwinm		r5,r5,0,16,31		# copyLen=r5 copyLen=r5
	mr		r4,r8		# SignalDataPtr=r4 SignalDataPtr=r8
.Llo62:
	bl		vstar_copy
	.section	.text_vle
.L353:
	.section	.text_vle
.L347:
.L195:
#             }
#         }
#     }
# }
	.d2line		941
	.d2epilogue_begin
.Llo59:
	lwz		r0,20(r1)		# SignalId=r0
	mtspr		lr,r0		# SignalId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L342:
	.type		Com_UpdateShadowSignal,@function
	.size		Com_UpdateShadowSignal,.-Com_UpdateShadowSignal
# Number of nodes = 48

# Allocations for Com_UpdateShadowSignal
#	?a4		SignalId
#	?a5		SignalDataPtr
#	?a6		$$55
#	?a7		SignalPB_Ref
#	?a8		copyLen
# FUNC(uint8, COM_CODE) Com_ReceiveSignal(
	.align		2
	.section	.text_vle
        .d2line         1024,23
#$$ld
.L361:

#$$bf	Com_ReceiveSignal,interprocedural,rasave,nostackparams
	.globl		Com_ReceiveSignal
	.d2_cfa_start __cie
Com_ReceiveSignal:
.Llo65:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# SignalId=r31 SignalId=r3
	mr		r30,r4		# SignalDataPtr=r30 SignalDataPtr=r4
	.d2prologue_end
#         VAR(Com_SignalIdType, AUTOMATIC) SignalId,
#         P2VAR(void, AUTOMATIC, COM_APPL_DATA) SignalDataPtr)
# {
#     P2CONST(Com_SignalsPB,AUTOMATIC,COM_CONST_PB) SignalPB_Ref;
#     P2CONST(Com_RxIpdu,AUTOMATIC,COM_CONST_PB)  Ipdu;
#     VAR(uint8, AUTOMATIC) ReturnValue = E_OK;
	.d2line		1030
	diab.li		r26,0		# ReturnValue=r26
#     /* variable to cache Ipdu ram flags */
#     P2VAR(uint8,AUTOMATIC,COM_VAR_PB) RxIpduRamFlag;
# #if COM_DEV_ERROR_DETECT == STD_ON
#     if (Com_Status == COM_UNINIT)
#     {
#         (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,COMServiceId_ReceiveSignal
#                 ,COM_E_UNINIT);
#         ReturnValue = COM_SERVICE_NOT_AVAILABLE;
#     }
#     else
#     {
#         if(SignalDataPtr == NULL_PTR)
#         {
#             (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,
#                     COMServiceId_ReceiveSignal,COM_E_PARAM_POINTER);
#             ReturnValue = COM_SERVICE_NOT_AVAILABLE;
#         }
#         else if(((SignalId) >= (Com_Main->SignalArrayLength))
#         || (((Com_Main->Signals_Ref[SignalId]).ComXf_Signal.Type) == COM_UINT8_DYN)
#         || (((uint16)(((Com_Main->Signals_Ref[SignalId]).ComXf_Signal.Flags) & COM_SIGNAL_ORPHAN) != COM_SIGNAL_ORPHAN) &&
#               ((((Com_Main->Signals_Ref[SignalId]).ForeGroundBuffer_Ref) == NULL_PTR)
#               || ((Com_Main->Signals_Ref[SignalId].ComXf_Signal.Flags & COM_SIGNAL_TX) != 0))))
#         {
#             (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,
#                     COMServiceId_ReceiveSignal,COM_E_PARAM);
#             ReturnValue = COM_SERVICE_NOT_AVAILABLE;
#         }
#         else
#         {
# #endif
#             SignalPB_Ref = &(Com_Main->Signals_Ref[SignalId]);
	.d2line		1061
	rlwinm		r0,r31,0,16,31		# SignalId=r31
	lis		r3,Com_Main@ha
.Llo66:
	lwz		r3,Com_Main@l(r3)
	lwz		r29,36(r3)		# SignalPB_Ref=r29
.Llo70:
	rlwinm		r3,r0,6,0,25
	se_slwi		r0,3
	subf		r0,r0,r3
	se_add		r0,r29		# SignalPB_Ref=r29
	mr		r29,r0		# SignalPB_Ref=r29 SignalPB_Ref=r0
# 
#             if((uint16)(SignalPB_Ref->ComXf_Signal.Flags & COM_SIGNAL_ORPHAN) == COM_SIGNAL_ORPHAN)
	.d2line		1063
.Llo71:
	lhz		r0,42(r29)		# SignalPB_Ref=r29
	rlwinm		r0,r0,0,16,16
	cmpli		0,0,r0,32768
	bc		0,2,.L199	# ne
#             {
#                 /* This is an orphan signal, we have to return the initial value */
#                 Com_CopyInitValue(SignalId, SignalDataPtr);
	.d2line		1066
.Llo67:
	rlwinm		r3,r31,0,16,31		# SignalId=r31
.Llo69:
	mr		r4,r30		# SignalDataPtr=r4 SignalDataPtr=r30
	bl		Com_CopyInitValue
	b		.L200
.L199:
#             }
#             /*If the signal is connected to an IPdu */
#             else
#             {
#                 Ipdu = &Com_Main->RxIpdus_Ref[SignalPB_Ref->IPDU];
	.d2line		1071
	lis		r3,Com_Main@ha
	lwz		r4,Com_Main@l(r3)
	lwz		r28,16(r4)		# Ipdu=r28
.Llo72:
	lhz		r27,20(r29)		# SignalPB_Ref=r29
	e_mulli		r0,r27,40
	se_add		r0,r28		# Ipdu=r28
	mr		r28,r0		# Ipdu=r28 Ipdu=r0
#                 /* cache Ipdu ram flags  */
#                 RxIpduRamFlag = & Com_Main->RxIpdusFlags[SignalPB_Ref->IPDU];
	.d2line		1073
	lwz		r3,Com_Main@l(r3)
	lwz		r0,68(r3)
	se_add		r0,r27
.Llo77:
	mr		r27,r0		# RxIpduRamFlag=r27 RxIpduRamFlag=r0
# #if COM_ENABLE_LARGE_DATA_TYPES == STD_ON
#                 /* If a TP type IPdu is currently locked, but readable */
#                 if((0 != (Ipdu->IPduFlags & COM_RXIPDU_TP))
#                  &&(0 != (*RxIpduRamFlag & COM_RXIPDU_BUFFER_LOCKED)))
#                 {
#                     ReturnValue = COM_BUSY;
#                 }
#                 else
# #endif /* COM_ENABLE_LARGE_DATA_TYPES */
#                 {
#                     /* TODO: Nested exclusive area is unnecessary if application can interrupt main function, because
#                      * it can be protected by a single enter-exit. */
#                     SchM_Enter_Com_COM_APPLICAITON_FOREGROUND();
	.d2line		1086
	bl		SchM_Enter_Com_COM_APPLICAITON_FOREGROUND
# 
#                     /* If BackgroundBuffer was marked for copy into ForegroundBuffer */
#                     if(*Ipdu->IsBackGroundBufferUpdated_Ref == TRUE)
	.d2line		1089
.Llo78:
	lwz		r3,24(r28)		# Ipdu=r28
	lbz		r0,0(r3)
	se_cmpi		r0,1
	bc		0,2,.L201	# ne
#                     {
#                         SchM_Enter_Com_COM_APPLICAITON_BACKGROUND();
	.d2line		1091
.Llo79:
	bl		SchM_Enter_Com_COM_APPLICAITON_BACKGROUND
# 
#                         /* Copy from BackgroundBuffer to ForegroundBuffer with stored updated length */
#                         COM_COPY_INTERNAL(Ipdu->ForeGroundBuffer_Ref,Ipdu->BackGroundBuffer_Ref,(uint32)Com_Main->DeferredLength_Ref[SignalPB_Ref->IPDU]);
	.d2line		1094
	lis		r3,Com_Main@ha
	lwz		r3,Com_Main@l(r3)
	lwz		r3,56(r3)
	lhz		r0,20(r29)		# SignalPB_Ref=r29
	rlwinm		r0,r0,1,15,30
	lhzx		r5,r3,r0
	lwz		r3,12(r28)		# Ipdu=r28
	lwz		r4,16(r28)		# Ipdu=r28
	bl		vstar_copy
# 
#                         /* Clear updated status */
#                         *Ipdu->IsBackGroundBufferUpdated_Ref = FALSE;
	.d2line		1097
	diab.li		r0,0
	lwz		r3,24(r28)		# Ipdu=r28
	stb		r0,0(r3)
# 
#                         SchM_Exit_Com_COM_APPLICAITON_BACKGROUND();
	.d2line		1099
	bl		SchM_Exit_Com_COM_APPLICAITON_BACKGROUND
.L201:
#                     }
#                     /*Unpack the signal from Foreground buffer to SignalDataPtr*/
#                     Com_UnPackSignal(SignalId, SignalDataPtr
	.d2line		1102
	rlwinm		r3,r31,0,16,31		# ReturnValue=r3 SignalId=r31
	mr		r4,r30		# SignalDataPtr=r4 SignalDataPtr=r30
	diab.li		r5,0
	bl		Com_UnPackSignal
#                             ,NULL_PTR
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#                             ,0
# #endif
# #if COM_ENABLE_TMS == STD_ON
#                             ,TRUE
# #endif
#                     );
#                     /*check if Ipdu is stopped*/
#                     if ((*RxIpduRamFlag & COM_RXIPDU_ACTIVE) == 0)
	.d2line		1112
	lbz		r0,0(r27)		# RxIpduRamFlag=r27
	se_btsti		r0,24
#                     {
#                         ReturnValue = COM_SERVICE_NOT_AVAILABLE;
	.d2line		1114
	diab.li		r3,128		# ReturnValue=r3
	isel		r3,r3,r26,2		# ReturnValue=r3 ReturnValue=r3 ReturnValue=r26
.L202:
#                     }
#                     /* If Ipdu is TP, check if it is locked */
#                     else
#                     {
#                         ReturnValue = E_OK;
	.d2line		1119
.Llo68:
	diab.li		r0,0
.Llo73:
	isel		r26,r3,r0,2		# ReturnValue=r26 ReturnValue=r3
.L203:
#                     }
#                     /*End Critical Section*/
#                     SchM_Exit_Com_COM_APPLICAITON_FOREGROUND();
	.d2line		1122
.Llo74:
	bl		SchM_Exit_Com_COM_APPLICAITON_FOREGROUND
.L200:
#                 }
#             }
# #if COM_DEV_ERROR_DETECT == STD_ON
#         }
#     }
# #endif
#     return ReturnValue;
	.d2line		1129
.Llo75:
	rlwinm		r3,r26,0,24,31		# ReturnValue=r3 ReturnValue=r26
# }
	.d2line		1130
	.d2epilogue_begin
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
.Llo76:
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L362:
	.type		Com_ReceiveSignal,@function
	.size		Com_ReceiveSignal,.-Com_ReceiveSignal
# Number of nodes = 132

# Allocations for Com_ReceiveSignal
#	?a4		SignalId
#	?a5		SignalDataPtr
#	?a6		$$56
#	?a7		SignalPB_Ref
#	?a8		Ipdu
#	?a9		ReturnValue
#	?a10		RxIpduRamFlag
# FUNC(void, COM_CODE) Com_ReceiveShadowSignal(
	.align		2
	.section	.text_vle
        .d2line         1315,22
#$$ld
.L382:

#$$bf	Com_ReceiveShadowSignal,interprocedural,rasave,nostackparams
	.globl		Com_ReceiveShadowSignal
	.d2_cfa_start __cie
Com_ReceiveShadowSignal:
.Llo80:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# SignalId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# SignalId=r0 SignalId=r3
	mr		r8,r4		# SignalDataPtr=r8 SignalDataPtr=r4
	.d2prologue_end
#         VAR(Com_SignalIdType, AUTOMATIC) SignalId,
#         P2VAR(void, AUTOMATIC, COM_APPL_DATA) SignalDataPtr)
# {
# #if COM_DEV_ERROR_DETECT == STD_ON
#     if (Com_Status == COM_UNINIT)
#     {
#         (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,
#                 COMServiceId_ReceiveShadowSignal,COM_E_UNINIT);
#     }
#     else
#     {
# #endif
# 
#         SignalId = (Com_SignalIdType)(SignalId + Com_Main->MemberSignal_base);
	.d2line		1329
	lis		r3,Com_Main@ha		# SignalId=r3
	lwz		r3,Com_Main@l(r3)		# SignalId=r3 SignalId=r3
	lhz		r3,78(r3)		# SignalId=r3 SignalId=r3
.Llo81:
	se_add		r0,r3		# SignalId=r0 SignalId=r0 SignalId=r3
.Llo82:
	mr		r0,r0		# SignalId=r0 SignalId=r0
	.section	.text_vle
.L387:
# 
# #if COM_DEV_ERROR_DETECT == STD_ON
#         if(SignalDataPtr == NULL_PTR)
#         {
#             (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,
#                     COMServiceId_ReceiveShadowSignal,COM_E_PARAM_POINTER);
#         }
#         else if(((SignalId) >= (Com_Main->MemberSignalArrayLength))
#                 || ((uint16)(Com_Main->Signals_Ref[SignalId].ComXf_Signal.Flags & COM_SIGNAL_SIGNALGROUP_ARRAYACCESS) ==
#                                                              COM_SIGNAL_SIGNALGROUP_ARRAYACCESS)
#                 || (((uint16)(((Com_Main->Signals_Ref[SignalId]).ComXf_Signal.Flags) & COM_SIGNAL_ORPHAN) != COM_SIGNAL_ORPHAN) &&
#                       ((((Com_Main->Signals_Ref[SignalId]).ForeGroundBuffer_Ref) == NULL_PTR)
#                       || ((Com_Main->Signals_Ref[SignalId].ComXf_Signal.Flags & COM_SIGNAL_TX) != 0))))
#         {
#             (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,
#                     COMServiceId_ReceiveShadowSignal,COM_E_PARAM);
#         }
#         else
# #endif
#         {
#             P2CONST(Com_SignalsPB,AUTOMATIC,COM_CONST_PB) SignalPB_Ref = &Com_Main->Signals_Ref[SignalId];
	.d2line		1350
.Llo84:
	rlwinm		r4,r0,0,16,31		# SignalPB_Ref=r4 SignalId=r0
.Llo85:
	lis		r3,Com_Main@ha		# SignalId=r3
	lwz		r3,Com_Main@l(r3)		# SignalId=r3 SignalId=r3
	lwz		r5,36(r3)		# SignalId=r3
	rlwinm		r3,r4,6,0,25		# SignalId=r3 SignalPB_Ref=r4
	se_slwi		r4,3		# SignalPB_Ref=r4 SignalPB_Ref=r4
	subf		r4,r4,r3		# SignalPB_Ref=r4 SignalPB_Ref=r4 SignalId=r3
	se_add		r4,r5		# SignalPB_Ref=r4 SignalPB_Ref=r4
	mr		r4,r4		# SignalPB_Ref=r4 SignalPB_Ref=r4
#             if((uint16)(SignalPB_Ref->ComXf_Signal.Flags & COM_SIGNAL_ORPHAN) == COM_SIGNAL_ORPHAN)
	.d2line		1351
	lhz		r3,42(r4)		# SignalId=r3 SignalPB_Ref=r4
	rlwinm		r3,r3,0,16,16		# SignalId=r3 SignalId=r3
	cmpli		0,0,r3,32768		# SignalId=r3
	bc		0,2,.L228	# ne
#             {
#                 /* This is an orphan signal, we have to return the initial value */
#                 Com_CopyInitValue(SignalId, SignalDataPtr);
	.d2line		1354
.Llo88:
	rlwinm		r3,r0,0,16,31		# SignalId=r3 SignalId=r0
	mr		r4,r8		# SignalDataPtr=r4 SignalDataPtr=r8
	bl		Com_CopyInitValue
.Llo83:
	b		.L227
.L228:
	.section	.text_vle
.L393:
#             }
#             /*If the signal is connected to an IPdu */
#             else
#             {
#                 /* Copy data from shadow buffer to SignalDataPtr */
#                 CONST(uint16, AUTOMATIC) copyLen = GetSignalLength(&SignalPB_Ref->ComXf_Signal);
	.d2line		1360
.Llo86:
	diab.addi		r3,r4,36		# SignalId=r3 SignalPB_Ref=r4
	bl		GetSignalLength
.Llo90:
	mr		r5,r3		# copyLen=r5 copyLen=r3
# 
#                 COM_COPY_EXTERNAL(SignalDataPtr, SignalPB_Ref->ShadowBuffer_Ref, (uint32)copyLen);
	.d2line		1362
	lwz		r4,8(r4)		# SignalPB_Ref=r4 SignalPB_Ref=r4
.Llo89:
	rlwinm		r5,r5,0,16,31		# copyLen=r5 copyLen=r5
	mr		r3,r8		# SignalDataPtr=r3 SignalDataPtr=r8
.Llo91:
	bl		vstar_copy
	.section	.text_vle
.L394:
	.section	.text_vle
.L388:
.L227:
#             }
#         }
# #if COM_DEV_ERROR_DETECT == STD_ON
#     }
# #endif
# }
	.d2line		1368
	.d2epilogue_begin
.Llo87:
	lwz		r0,20(r1)		# SignalId=r0
	mtspr		lr,r0		# SignalId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L383:
	.type		Com_ReceiveShadowSignal,@function
	.size		Com_ReceiveShadowSignal,.-Com_ReceiveShadowSignal
# Number of nodes = 56

# Allocations for Com_ReceiveShadowSignal
#	?a4		SignalId
#	?a5		SignalDataPtr
#	?a6		$$57
#	?a7		SignalPB_Ref
#	?a8		copyLen
# FUNC(uint8, COM_CODE) Com_ReceiveSignalGroup(
	.align		2
	.section	.text_vle
        .d2line         1381,23
#$$ld
.L401:

#$$bf	Com_ReceiveSignalGroup,interprocedural,rasave,nostackparams
	.globl		Com_ReceiveSignalGroup
	.d2_cfa_start __cie
Com_ReceiveSignalGroup:
.Llo92:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo116:
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# ReturnValue=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# SignalGroupId=r0 SignalGroupId=r3
	.d2prologue_end
#         VAR(Com_SignalGroupIdType, AUTOMATIC) SignalGroupId)
# {
#     VAR(uint8, AUTOMATIC)   ReturnValue = E_OK;
	.d2line		1384
	diab.li		r3,0		# ReturnValue=r3
# #if COM_DEV_ERROR_DETECT == STD_ON
#     if (Com_Status == COM_UNINIT)
#     {
#         (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,
#                 COMServiceId_ReceiveSignalGroup,COM_E_UNINIT);
#         ReturnValue = COM_SERVICE_NOT_AVAILABLE;
#     }
#     else
# #endif
#     {
#         SignalGroupId = (Com_SignalGroupIdType)(SignalGroupId + (Com_Main->SignalGroup_base));
	.d2line		1395
.Llo93:
	lis		r4,Com_Main@ha		# SignalGroupId=r4
.Llo94:
	lwz		r4,Com_Main@l(r4)		# SignalGroupId=r4 SignalGroupId=r4
	lhz		r4,76(r4)		# SignalGroupId=r4 SignalGroupId=r4
	se_add		r0,r4		# ReturnValue=r0 ReturnValue=r0 SignalGroupId=r4
.Llo117:
	mr		r0,r0		# SignalGroupId=r0 SignalGroupId=r0
	.section	.text_vle
.L407:
# #if COM_DEV_ERROR_DETECT == STD_ON
#         if(((SignalGroupId) >= (Com_Main->SignalGroupArrayLength)) ||
#             ((uint16)(Com_Main->Signals_Ref[SignalGroupId].ComXf_Signal.Flags & COM_SIGNAL_SIGNALGROUP_ARRAYACCESS) ==
#                                                            COM_SIGNAL_SIGNALGROUP_ARRAYACCESS) ||
#              ((((uint16)(((Com_Main->Signals_Ref[SignalGroupId]).ComXf_Signal.Flags) & COM_SIGNAL_ORPHAN) != COM_SIGNAL_ORPHAN) &&
#                            (((Com_Main->Signals_Ref[SignalGroupId].ForeGroundBuffer_Ref) == NULL_PTR) ||
#                                    ((Com_Main->Signals_Ref[SignalGroupId].ComXf_Signal.Flags & COM_SIGNAL_TX) != 0)))))
#         {
#             (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID, COMServiceId_ReceiveSignalGroup,COM_E_PARAM);
#             ReturnValue = COM_SERVICE_NOT_AVAILABLE;
#         }
#         else
# #endif
#         {
#             P2VAR(uint8,AUTOMATIC,COM_VAR_PB) RxIpduRamFlag;
#             P2CONST(Com_SignalsPB,AUTOMATIC,COM_CONST_PB) SignalPB_Ref = &Com_Main->Signals_Ref[SignalGroupId];
	.d2line		1411
.Llo95:
	rlwinm		r0,r0,0,16,31		# SignalGroupId=r0 SignalGroupId=r0
.Llo96:
	lis		r4,Com_Main@ha		# SignalGroupId=r4
	lwz		r5,Com_Main@l(r4)		# SignalGroupId=r4
	lwz		r29,36(r5)		# SignalPB_Ref=r29
.Llo128:
	rlwinm		r5,r0,6,0,25		# SignalGroupId=r0
	se_slwi		r0,3		# SignalGroupId=r0 SignalGroupId=r0
	subf		r0,r0,r5		# SignalGroupId=r0 SignalGroupId=r0
	se_add		r0,r29		# SignalGroupId=r0 SignalGroupId=r0 SignalPB_Ref=r29
.Llo97:
	mr		r29,r0		# SignalPB_Ref=r29 SignalPB_Ref=r0
#             P2CONST(Com_RxIpdu,AUTOMATIC,COM_CONST_PB)  Ipdu = &Com_Main->RxIpdus_Ref[SignalPB_Ref->IPDU];
	.d2line		1412
.Llo98:
	lwz		r4,Com_Main@l(r4)		# SignalGroupId=r4 SignalGroupId=r4
	lwz		r4,16(r4)		# SignalGroupId=r4 SignalGroupId=r4
	lhz		r0,20(r29)		# SignalGroupId=r0 SignalPB_Ref=r29
	e_mulli		r0,r0,40		# SignalGroupId=r0 SignalGroupId=r0
	se_add		r0,r4		# SignalGroupId=r0 SignalGroupId=r0 SignalGroupId=r4
.Llo130:
	mr		r4,r0		# Ipdu=r4 Ipdu=r0
# 
#             if((uint16)(SignalPB_Ref->ComXf_Signal.Flags & COM_SIGNAL_ORPHAN) != COM_SIGNAL_ORPHAN)
	.d2line		1414
.Llo99:
	lhz		r0,42(r29)		# SignalGroupId=r0 SignalPB_Ref=r29
.Llo100:
	rlwinm		r0,r0,0,16,16		# SignalGroupId=r0 SignalGroupId=r0
	cmpli		0,0,r0,32768		# SignalGroupId=r0
	bc		1,2,.L233	# eq
#             {
# 
#                 /* cache Ipdu ram flags  */
#                 RxIpduRamFlag = & Com_Main->RxIpdusFlags[SignalPB_Ref->IPDU];
	.d2line		1418
.Llo101:
	lis		r3,Com_Main@ha		# ReturnValue=r3
.Llo118:
	lwz		r3,Com_Main@l(r3)		# ReturnValue=r3 ReturnValue=r3
	lwz		r31,68(r3)		# SignalGroupId=r31 ReturnValue=r3
.Llo102:
	lhz		r0,20(r29)		# SignalGroupId=r0 SignalPB_Ref=r29
	se_add		r0,r31		# SignalGroupId=r0 SignalGroupId=r0 SignalGroupId=r31
.Llo127:
	mr		r31,r0		# RxIpduRamFlag=r31 RxIpduRamFlag=r0
	.section	.text_vle
.L417:
# 
# #if COM_ENABLE_LARGE_DATA_TYPES == STD_ON
#                 /* If Ipdu is TP, check if it is locked */
#                 if((0 != (Ipdu->IPduFlags & COM_RXIPDU_TP))
#                         && (0 != (*RxIpduRamFlag & COM_RXIPDU_BUFFER_LOCKED)))
#                 {
#                     ReturnValue = COM_BUSY;
#                 }
#                 else
# #endif /* COM_ENABLE_LARGE_DATA_TYPES */
#                 {
#                     VAR(uint16, AUTOMATIC) GroupSignalIndex;
#                     VAR(Com_SignalIdType, AUTOMATIC) GroupSignald;
#                     P2CONST(Com_SignalsPB, AUTOMATIC, COM_CONST_PB) GroupSignalPointer;
#                     if((Ipdu->IPduFlags & COM_RXIPDU_IMMEDIATE) != 0)
	.d2line		1433
.Llo103:
	lbz		r0,34(r4)		# SignalGroupId=r0 Ipdu=r4
.Llo104:
	se_btsti		r0,31		# SignalGroupId=r0
	bc		1,2,.L234	# eq
#                     {
#                         /* Immediate IPDU */
# 
#                         SchM_Enter_Com_COM_APPLICAITON_BACKGROUND();
	.d2line		1437
.Llo105:
	bl		SchM_Enter_Com_COM_APPLICAITON_BACKGROUND
# 
#                         /* Unpack group signals from BG into Shadow buffer (only for this signal group) */
#                         for(GroupSignalIndex = (uint16)0; GroupSignalIndex<(uint16)SignalPB_Ref->NotifyLength; GroupSignalIndex++)
	.d2line		1440
	diab.li		r30,0		# GroupSignalIndex=r30
.L235:
.Llo135:
	rlwinm		r5,r30,0,16,31		# GroupSignalIndex=r30
	lbz		r0,32(r29)		# SignalGroupId=r0 SignalPB_Ref=r29
.Llo106:
	se_cmp		r5,r0		# SignalGroupId=r0
	bc		0,0,.L237	# ge
#                         {
#                             GroupSignald = Com_Main->GroupSignalToIPdu_Ref[SignalPB_Ref->InvalidIndex + GroupSignalIndex];
	.d2line		1442
.Llo107:
	lis		r3,Com_Main@ha		# ReturnValue=r3
.Llo119:
	lwz		r4,Com_Main@l(r3)		# Ipdu=r4 ReturnValue=r3
.Llo131:
	lwz		r4,44(r4)		# Ipdu=r4 Ipdu=r4
	lhz		r0,22(r29)		# SignalGroupId=r0 SignalPB_Ref=r29
.Llo108:
	rlwinm		r5,r30,0,16,31		# GroupSignalIndex=r30
	se_add		r0,r5		# SignalGroupId=r0 SignalGroupId=r0
	se_slwi		r0,1		# SignalGroupId=r0 SignalGroupId=r0
	lhzx		r0,r4,r0		# SignalGroupId=r0 Ipdu=r4
.Llo109:
	mr		r0,r0		# GroupSignald=r0 GroupSignald=r0
#                             GroupSignalPointer = &(Com_Main->Signals_Ref[GroupSignald]);
	.d2line		1443
	rlwinm		r0,r0,0,16,31		# GroupSignald=r0 GroupSignald=r0
	lwz		r3,Com_Main@l(r3)		# ReturnValue=r3 ReturnValue=r3
	lwz		r5,36(r3)		# ReturnValue=r3
	rlwinm		r3,r0,6,0,25		# ReturnValue=r3 GroupSignald=r0
	rlwinm		r4,r0,3,0,28		# Ipdu=r4 GroupSignald=r0
	subf		r4,r4,r3		# Ipdu=r4 Ipdu=r4 ReturnValue=r3
	add		r3,r5,r4		# ReturnValue=r3 Ipdu=r4
.Llo120:
	mr		r3,r3		# GroupSignalPointer=r3 GroupSignalPointer=r3
#                             Com_UnPackSignal(GroupSignald, GroupSignalPointer->ShadowBuffer_Ref, GroupSignalPointer->BackGroundBuffer_Ref
	.d2line		1444
	lwz		r4,8(r3)		# Ipdu=r4 GroupSignalPointer=r3
.Llo132:
	lwz		r5,4(r3)		# GroupSignalPointer=r3
	mr		r3,r0		# GroupSignald=r3
.Llo140:
	bl		Com_UnPackSignal
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#                                            ,0
# #endif
# #if COM_ENABLE_TMS == STD_ON
#                                            ,TRUE
# #endif
#                             );
#                         }
	.d2line		1452
.Llo138:
	diab.addi		r5,r30,1		# GroupSignalIndex=r30
	se_addi		r30,1		# GroupSignalIndex=r30 GroupSignalIndex=r30
	b		.L235
.L237:
# 
#                         SchM_Exit_Com_COM_APPLICAITON_BACKGROUND();
	.d2line		1454
	bl		SchM_Exit_Com_COM_APPLICAITON_BACKGROUND
	b		.L238
.L234:
#                     }
#                     else
#                     {
#                         /* Deferred IPDU */
# 
#                         SchM_Enter_Com_COM_APPLICAITON_FOREGROUND();
	.d2line		1460
.Llo136:
	bl		SchM_Enter_Com_COM_APPLICAITON_FOREGROUND
# 
#                         /* Unpack group signals from FG into Shadow buffer (only for this signal group) */
#                         for(GroupSignalIndex = 0; GroupSignalIndex<(uint16)SignalPB_Ref->NotifyLength; GroupSignalIndex++)
	.d2line		1463
	diab.li		r30,0		# GroupSignalIndex=r30
.L239:
.Llo137:
	rlwinm		r5,r30,0,16,31		# GroupSignalPointer=r5 GroupSignalIndex=r30
.Llo141:
	lbz		r0,32(r29)		# SignalGroupId=r0 SignalPB_Ref=r29
.Llo110:
	se_cmp		r5,r0		# GroupSignalPointer=r5 SignalGroupId=r0
	bc		0,0,.L241	# ge
#                         {
#                             GroupSignald = Com_Main->GroupSignalToIPdu_Ref[SignalPB_Ref->InvalidIndex + GroupSignalIndex];
	.d2line		1465
.Llo111:
	lis		r3,Com_Main@ha		# ReturnValue=r3
.Llo121:
	lwz		r4,Com_Main@l(r3)		# Ipdu=r4 ReturnValue=r3
.Llo133:
	lwz		r4,44(r4)		# Ipdu=r4 Ipdu=r4
	lhz		r0,22(r29)		# SignalGroupId=r0 SignalPB_Ref=r29
.Llo112:
	rlwinm		r5,r30,0,16,31		# GroupSignalPointer=r5 GroupSignalIndex=r30
.Llo142:
	se_add		r0,r5		# SignalGroupId=r0 SignalGroupId=r0 GroupSignalPointer=r5
	se_slwi		r0,1		# SignalGroupId=r0 SignalGroupId=r0
	lhzx		r0,r4,r0		# SignalGroupId=r0 Ipdu=r4
.Llo113:
	mr		r0,r0		# GroupSignald=r0 GroupSignald=r0
#                             GroupSignalPointer = &(Com_Main->Signals_Ref[GroupSignald]);
	.d2line		1466
	rlwinm		r0,r0,0,16,31		# GroupSignald=r0 GroupSignald=r0
	lwz		r3,Com_Main@l(r3)		# ReturnValue=r3 ReturnValue=r3
	lwz		r5,36(r3)		# GroupSignalPointer=r5 ReturnValue=r3
	rlwinm		r3,r0,6,0,25		# ReturnValue=r3 GroupSignald=r0
	rlwinm		r4,r0,3,0,28		# Ipdu=r4 GroupSignald=r0
	subf		r4,r4,r3		# Ipdu=r4 Ipdu=r4 ReturnValue=r3
	se_add		r4,r5		# Ipdu=r4 Ipdu=r4 GroupSignalPointer=r5
.Llo134:
	mr		r5,r4		# GroupSignalPointer=r5 GroupSignalPointer=r4
#                             Com_UnPackSignal(GroupSignald, GroupSignalPointer->ShadowBuffer_Ref, GroupSignalPointer->ForeGroundBuffer_Ref
	.d2line		1467
.Llo143:
	lwz		r4,8(r5)		# Ipdu=r4 GroupSignalPointer=r5
	mr		r3,r0		# GroupSignald=r3
.Llo122:
	lwz		r5,0(r5)		# GroupSignalPointer=r5 GroupSignalPointer=r5
.Llo144:
	bl		Com_UnPackSignal
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#                                            ,0
# #endif
# #if COM_ENABLE_TMS == STD_ON
#                                            ,TRUE
# #endif
#                             );
#                         }
	.d2line		1475
.Llo139:
	diab.addi		r5,r30,1		# GroupSignalPointer=r5 GroupSignalIndex=r30
	se_addi		r30,1		# GroupSignalIndex=r30 GroupSignalIndex=r30
	b		.L239
.L241:
# 
#                         SchM_Exit_Com_COM_APPLICAITON_FOREGROUND();
	.d2line		1477
	bl		SchM_Exit_Com_COM_APPLICAITON_FOREGROUND
.L238:
#                     }
# 
#                     if ((*RxIpduRamFlag & COM_RXIPDU_ACTIVE) == 0)
	.d2line		1480
.Llo129:
	lbz		r0,0(r31)		# SignalGroupId=r0 RxIpduRamFlag=r31
.Llo114:
	se_btsti		r0,24		# SignalGroupId=r0
	bc		0,2,.L242	# ne
#                     {
#                         ReturnValue = COM_SERVICE_NOT_AVAILABLE;
	.d2line		1482
.Llo115:
	diab.li		r3,128		# ReturnValue=r3
.Llo123:
	b		.L233
.L242:
#                     }
#                     else
#                     {
#                         ReturnValue = E_OK;
	.d2line		1486
.Llo124:
	diab.li		r3,0		# ReturnValue=r3
	.section	.text_vle
.L418:
.L233:
	.section	.text_vle
.L408:
#                     }
#                 }
#             }
#         }
#     }
#     return ReturnValue;
	.d2line		1492
.Llo125:
	rlwinm		r3,r3,0,24,31		# ReturnValue=r3 ReturnValue=r3
# }
	.d2line		1493
	.d2epilogue_begin
.Llo126:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# SignalGroupId=r0
	mtspr		lr,r0		# SignalGroupId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L402:
	.type		Com_ReceiveSignalGroup,@function
	.size		Com_ReceiveSignalGroup,.-Com_ReceiveSignalGroup
# Number of nodes = 207

# Allocations for Com_ReceiveSignalGroup
#	?a4		SignalGroupId
#	?a5		$$60
#	?a6		$$59
#	?a7		$$58
#	?a8		ReturnValue
#	?a9		RxIpduRamFlag
#	?a10		SignalPB_Ref
#	?a11		Ipdu
#	?a12		GroupSignalIndex
#	?a13		GroupSignald
#	?a14		GroupSignalPointer
# FUNC(uint8, COM_CODE) Com_SetSignalGroupUpdateBit(
	.align		2
	.section	.text_vle
        .d2line         1597,23
#$$ld
.L429:

#$$bf	Com_SetSignalGroupUpdateBit,interprocedural,rasave,nostackparams
	.globl		Com_SetSignalGroupUpdateBit
	.d2_cfa_start __cie
Com_SetSignalGroupUpdateBit:
.Llo145:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#         VAR(Com_SignalGroupIdType, AUTOMATIC) SignalGroupId)
# {
#     return Com_SendSignalGroup(SignalGroupId);
	.d2line		1600
	mr		r0,r3		# SignalGroupId=r0 SignalGroupId=r3
	bl		Com_SendSignalGroup
.Llo146:
	rlwinm		r3,r3,0,24,31
# }
	.d2line		1601
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
.L430:
	.type		Com_SetSignalGroupUpdateBit,@function
	.size		Com_SetSignalGroupUpdateBit,.-Com_SetSignalGroupUpdateBit
# Number of nodes = 6

# Allocations for Com_SetSignalGroupUpdateBit
#	?a4		SignalGroupId
# FUNC(uint8, COM_CODE) Com_SetSignalUpdateBit(
	.align		2
	.section	.text_vle
        .d2line         1614,23
#$$ld
.L435:

#$$bf	Com_SetSignalUpdateBit,interprocedural,rasave,nostackparams
	.globl		Com_SetSignalUpdateBit
	.d2_cfa_start __cie
Com_SetSignalUpdateBit:
.Llo147:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# SignalId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# SignalId=r0 SignalId=r3
	.d2prologue_end
#         VAR(Com_SignalIdType, AUTOMATIC) SignalId)
# {
#     /*[ADD_Com_20002]*/
#     P2CONST(Com_SignalsPB,AUTOMATIC,COM_CONST_PB) SignalPB_Ref;
#     VAR(uint8, AUTOMATIC) ReturnValue = E_OK;
	.d2line		1619
	diab.li		r30,0		# ReturnValue=r30
#     P2CONST(Com_TxIpdu,AUTOMATIC,COM_CONST_PB) Ipdu;
# #if COM_DEV_ERROR_DETECT == STD_ON
#     if (Com_Status == COM_UNINIT)
#     {
#         (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,COMServiceId_SendSignal
#             ,COM_E_UNINIT);
#         ReturnValue = COM_SERVICE_NOT_AVAILABLE;
#     }
#     else
#     {
#         if(((SignalId) >= (Com_Main->SignalArrayLength))
#         || (((Com_Main->Signals_Ref[SignalId]).ComXf_Signal.Type) == COM_UINT8_DYN)
#         || (((uint16)(((Com_Main->Signals_Ref[SignalId]).ComXf_Signal.Flags) & COM_SIGNAL_ORPHAN) != COM_SIGNAL_ORPHAN)
#               && ((((Com_Main->Signals_Ref[SignalId]).ForeGroundBuffer_Ref) == NULL_PTR)
#                    || ((Com_Main->Signals_Ref[SignalId].ComXf_Signal.Flags & COM_SIGNAL_TX) == 0))))
#         {
#             (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,
#                 COMServiceId_SendSignal,COM_E_PARAM);
#             ReturnValue = COM_SERVICE_NOT_AVAILABLE;
#         }
#         else
#         {
# #endif
#             SignalPB_Ref = &(Com_Main->Signals_Ref[SignalId]);
	.d2line		1643
.Llo161:
	rlwinm		r0,r0,0,16,31		# SignalId=r0 SignalId=r0
.Llo148:
	lis		r3,Com_Main@ha
.Llo149:
	lwz		r3,Com_Main@l(r3)
	lwz		r31,36(r3)		# SignalPB_Ref=r31
.Llo159:
	rlwinm		r3,r0,6,0,25		# SignalId=r0
	se_slwi		r0,3		# SignalId=r0 SignalId=r0
	subf		r0,r0,r3		# SignalId=r0 SignalId=r0
	se_add		r0,r31		# SignalId=r0 SignalId=r0 SignalPB_Ref=r31
.Llo150:
	mr		r31,r0		# SignalPB_Ref=r31 SignalPB_Ref=r0
#             /*If the signal is connected to an IPdu */
#             if((uint16)(SignalPB_Ref->ComXf_Signal.Flags & COM_SIGNAL_ORPHAN) != COM_SIGNAL_ORPHAN)
	.d2line		1645
.Llo160:
	lhz		r0,42(r31)		# SignalId=r0 SignalPB_Ref=r31
.Llo151:
	rlwinm		r0,r0,0,16,16		# SignalId=r0 SignalId=r0
	cmpli		0,0,r0,32768		# SignalId=r0
	bc		1,2,.L254	# eq
#             {
#                 Ipdu = &(Com_Main->TxIpdus_Ref[SignalPB_Ref->IPDU]);
	.d2line		1647
.Llo152:
	lhz		r0,20(r31)		# SignalId=r0 SignalPB_Ref=r31
.Llo153:
	lis		r3,Com_Main@ha
	lwz		r3,Com_Main@l(r3)
	lwz		r29,32(r3)		# Ipdu=r29
.Llo163:
	rlwinm		r3,r0,6,0,25		# SignalId=r0
	se_slwi		r0,2		# SignalId=r0 SignalId=r0
	subf		r0,r0,r3		# SignalId=r0 SignalId=r0
	se_add		r0,r29		# SignalId=r0 SignalId=r0 Ipdu=r29
.Llo154:
	mr		r29,r0		# Ipdu=r29 Ipdu=r0
# #if COM_ENABLE_LARGE_DATA_TYPES == STD_ON
#                 /*If Ipdu is TP, check if it is locked */
#                 if((0 != (Ipdu->IpduFlags & COM_TXIPDU_TP))
#                 &&(*Ipdu->IsTpBufferLocked_Ref != FALSE))
#                 {
#                     ReturnValue = COM_BUSY;
#                 }
#                 else
# #endif /* COM_ENABLE_LARGE_DATA_TYPES */
#                 {
#                     /* Protect Tx Ipdu foreground buffer */
#                     SchM_Enter_Com_COM_APPLICATION_TXIPDU();
	.d2line		1659
	bl		SchM_Enter_Com_COM_APPLICATION_TXIPDU
# 
#                     /*Set the update bit*/
#                     *(SignalPB_Ref->UpdateBit_Ref) |= SignalPB_Ref->UpdateBitMask;
	.d2line		1662
	lwz		r3,12(r31)		# SignalPB_Ref=r31
	lbz		r0,0(r3)		# SignalId=r0
.Llo155:
	lbz		r4,31(r31)		# SignalPB_Ref=r31
	or		r0,r0,r4		# SignalId=r0 SignalId=r0
	stb		r0,0(r3)		# SignalId=r0
#                     /*End Critical Section*/
#                     SchM_Exit_Com_COM_APPLICATION_TXIPDU();
	.d2line		1664
	bl		SchM_Exit_Com_COM_APPLICATION_TXIPDU
#                     /*check if Ipdu is stopped*/
#                     if (*Ipdu->IsIPduGroupEnabled_Ref == FALSE)
	.d2line		1666
.Llo156:
	lwz		r3,4(r29)		# Ipdu=r29
	lbz		r0,0(r3)		# SignalId=r0
.Llo157:
	se_cmpi		r0,0		# SignalId=r0
#                     {
#                         ReturnValue = COM_SERVICE_NOT_AVAILABLE;
	.d2line		1668
	diab.li		r3,128
	isel		r30,r3,r30,2		# ReturnValue=r30 ReturnValue=r30
.L254:
#                     }
#                     else
#                     {
# #if COM_ENABLE_TRIGERRED_SIGNALS == STD_ON
#                         if((uint8)(SignalPB_Ref->ComXf_Signal.TransferProperty & COM_SIGNAL_TRP_TRIGGERTYPE_MASK) == COM_SIGNAL_TRP_TRIGGERRED)
#                         {
#                             Com_CheckTM(SignalId);
#                         }
# #endif
#                     }
#                 }
#             }
# #if COM_DEV_ERROR_DETECT == STD_ON
#         }
#     }
# #endif
#     return ReturnValue;
	.d2line		1685
.Llo158:
	rlwinm		r3,r30,0,24,31		# ReturnValue=r30
# }
	.d2line		1686
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo162:
	lwz		r0,36(r1)		# SignalId=r0
	mtspr		lr,r0		# SignalId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L436:
	.type		Com_SetSignalUpdateBit,@function
	.size		Com_SetSignalUpdateBit,.-Com_SetSignalUpdateBit
# Number of nodes = 64

# Allocations for Com_SetSignalUpdateBit
#	?a4		SignalId
#	?a5		$$62
#	?a6		$$61
#	?a7		$$49
#	?a8		SignalPB_Ref
#	?a9		ReturnValue
#	?a10		Ipdu

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L515:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L511:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\ComXf_CommonTypes.h"
.L451:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\Com_Types.h"
.L446:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\Com_i.h"
.L262:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_SignalGroupInterface.c"
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
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_SignalGroupInterface.c"
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
.L265:
	.sleb128	2
	.4byte		.L259-.L2
	.byte		"Com_SendSignal"
	.byte		0
	.4byte		.L262
	.uleb128	267
	.uleb128	23
	.4byte		.L263
	.byte		0x1
	.byte		0x1
	.4byte		.L260
	.4byte		.L261
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L262
	.uleb128	267
	.uleb128	23
	.byte		"SignalId"
	.byte		0
	.4byte		.L266
	.4byte		.L269
	.sleb128	3
	.4byte		.L262
	.uleb128	267
	.uleb128	23
	.byte		"SignalDataPtr"
	.byte		0
	.4byte		.L270
	.4byte		.L273
	.section	.debug_info,,n
.L274:
	.sleb128	4
	.4byte		.L262
	.uleb128	272
	.uleb128	51
	.byte		"SignalPB_Ref"
	.byte		0
	.4byte		.L275
	.4byte		.L279
.L280:
	.sleb128	4
	.4byte		.L262
	.uleb128	273
	.uleb128	27
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L263
	.4byte		.L281
.L282:
	.sleb128	4
	.4byte		.L262
	.uleb128	281
	.uleb128	48
	.byte		"Ipdu"
	.byte		0
	.4byte		.L283
	.4byte		.L287
	.section	.debug_info,,n
	.sleb128	0
.L259:
	.section	.debug_info,,n
.L292:
	.sleb128	2
	.4byte		.L289-.L2
	.byte		"Com_SendSignalGroup"
	.byte		0
	.4byte		.L262
	.uleb128	565
	.uleb128	23
	.4byte		.L263
	.byte		0x1
	.byte		0x1
	.4byte		.L290
	.4byte		.L291
	.sleb128	3
	.4byte		.L262
	.uleb128	565
	.uleb128	23
	.byte		"SignalGroupId"
	.byte		0
	.4byte		.L293
	.4byte		.L294
.L295:
	.sleb128	4
	.4byte		.L262
	.uleb128	568
	.uleb128	27
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L263
	.4byte		.L296
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L300
	.4byte		.L297
	.4byte		.L298
.L301:
	.sleb128	4
	.4byte		.L262
	.uleb128	597
	.uleb128	59
	.byte		"SignalPB_Ref"
	.byte		0
	.4byte		.L275
	.4byte		.L302
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L306
	.4byte		.L303
	.4byte		.L304
.L307:
	.sleb128	4
	.4byte		.L262
	.uleb128	601
	.uleb128	60
	.byte		"Ipdu"
	.byte		0
	.4byte		.L283
	.4byte		.L308
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L312
	.4byte		.L309
	.4byte		.L310
.L313:
	.sleb128	4
	.4byte		.L262
	.uleb128	620
	.uleb128	47
	.byte		"Index"
	.byte		0
	.4byte		.L267
	.4byte		.L314
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L318
	.4byte		.L315
	.4byte		.L316
.L319:
	.sleb128	4
	.4byte		.L262
	.uleb128	638
	.uleb128	64
	.byte		"GroupSignalId"
	.byte		0
	.4byte		.L320
	.4byte		.L321
.L322:
	.sleb128	4
	.4byte		.L262
	.uleb128	640
	.uleb128	76
	.byte		"GroupSignalPointer"
	.byte		0
	.4byte		.L275
	.4byte		.L323
	.section	.debug_info,,n
	.sleb128	0
.L318:
	.section	.debug_info,,n
	.sleb128	0
.L312:
	.section	.debug_info,,n
	.sleb128	0
.L306:
	.section	.debug_info,,n
	.sleb128	0
.L300:
	.section	.debug_info,,n
	.sleb128	0
.L289:
	.section	.debug_info,,n
.L329:
	.sleb128	2
	.4byte		.L326-.L2
	.byte		"GetSignalLength"
	.byte		0
	.4byte		.L262
	.uleb128	1269
	.uleb128	24
	.4byte		.L267
	.byte		0x1
	.byte		0x1
	.4byte		.L327
	.4byte		.L328
	.sleb128	3
	.4byte		.L262
	.uleb128	1269
	.uleb128	24
	.byte		"xfSignalPtr"
	.byte		0
	.4byte		.L330
	.4byte		.L335
.L336:
	.sleb128	4
	.4byte		.L262
	.uleb128	1272
	.uleb128	28
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L267
	.4byte		.L337
	.section	.debug_info,,n
	.sleb128	0
.L326:
	.section	.debug_info,,n
.L343:
	.sleb128	6
	.4byte		.L340-.L2
	.byte		"Com_UpdateShadowSignal"
	.byte		0
	.4byte		.L262
	.uleb128	885
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L341
	.4byte		.L342
	.sleb128	3
	.4byte		.L262
	.uleb128	885
	.uleb128	22
	.byte		"SignalId"
	.byte		0
	.4byte		.L266
	.4byte		.L344
	.sleb128	3
	.4byte		.L262
	.uleb128	885
	.uleb128	22
	.byte		"SignalDataPtr"
	.byte		0
	.4byte		.L270
	.4byte		.L345
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L349
	.4byte		.L346
	.4byte		.L347
.L350:
	.sleb128	4
	.4byte		.L262
	.uleb128	919
	.uleb128	61
	.byte		"SignalPB_Ref"
	.byte		0
	.4byte		.L275
	.4byte		.L351
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L355
	.4byte		.L352
	.4byte		.L353
.L356:
	.sleb128	4
	.4byte		.L262
	.uleb128	923
	.uleb128	42
	.byte		"copyLen"
	.byte		0
	.4byte		.L357
	.4byte		.L358
	.section	.debug_info,,n
	.sleb128	0
.L355:
	.section	.debug_info,,n
	.sleb128	0
.L349:
	.section	.debug_info,,n
	.sleb128	0
.L340:
	.section	.debug_info,,n
.L363:
	.sleb128	2
	.4byte		.L360-.L2
	.byte		"Com_ReceiveSignal"
	.byte		0
	.4byte		.L262
	.uleb128	1024
	.uleb128	23
	.4byte		.L263
	.byte		0x1
	.byte		0x1
	.4byte		.L361
	.4byte		.L362
	.sleb128	3
	.4byte		.L262
	.uleb128	1024
	.uleb128	23
	.byte		"SignalId"
	.byte		0
	.4byte		.L266
	.4byte		.L364
	.sleb128	3
	.4byte		.L262
	.uleb128	1024
	.uleb128	23
	.byte		"SignalDataPtr"
	.byte		0
	.4byte		.L365
	.4byte		.L366
.L367:
	.sleb128	4
	.4byte		.L262
	.uleb128	1028
	.uleb128	51
	.byte		"SignalPB_Ref"
	.byte		0
	.4byte		.L275
	.4byte		.L368
.L369:
	.sleb128	4
	.4byte		.L262
	.uleb128	1029
	.uleb128	49
	.byte		"Ipdu"
	.byte		0
	.4byte		.L370
	.4byte		.L374
.L375:
	.sleb128	4
	.4byte		.L262
	.uleb128	1030
	.uleb128	27
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L263
	.4byte		.L376
.L377:
	.sleb128	4
	.4byte		.L262
	.uleb128	1032
	.uleb128	39
	.byte		"RxIpduRamFlag"
	.byte		0
	.4byte		.L378
	.4byte		.L379
	.section	.debug_info,,n
	.sleb128	0
.L360:
	.section	.debug_info,,n
.L384:
	.sleb128	6
	.4byte		.L381-.L2
	.byte		"Com_ReceiveShadowSignal"
	.byte		0
	.4byte		.L262
	.uleb128	1315
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L382
	.4byte		.L383
	.sleb128	3
	.4byte		.L262
	.uleb128	1315
	.uleb128	22
	.byte		"SignalId"
	.byte		0
	.4byte		.L266
	.4byte		.L385
	.sleb128	3
	.4byte		.L262
	.uleb128	1315
	.uleb128	22
	.byte		"SignalDataPtr"
	.byte		0
	.4byte		.L365
	.4byte		.L386
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L390
	.4byte		.L387
	.4byte		.L388
.L391:
	.sleb128	4
	.4byte		.L262
	.uleb128	1350
	.uleb128	59
	.byte		"SignalPB_Ref"
	.byte		0
	.4byte		.L275
	.4byte		.L392
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L396
	.4byte		.L393
	.4byte		.L394
.L397:
	.sleb128	4
	.4byte		.L262
	.uleb128	1360
	.uleb128	42
	.byte		"copyLen"
	.byte		0
	.4byte		.L357
	.4byte		.L398
	.section	.debug_info,,n
	.sleb128	0
.L396:
	.section	.debug_info,,n
	.sleb128	0
.L390:
	.section	.debug_info,,n
	.sleb128	0
.L381:
	.section	.debug_info,,n
.L403:
	.sleb128	2
	.4byte		.L400-.L2
	.byte		"Com_ReceiveSignalGroup"
	.byte		0
	.4byte		.L262
	.uleb128	1381
	.uleb128	23
	.4byte		.L263
	.byte		0x1
	.byte		0x1
	.4byte		.L401
	.4byte		.L402
	.sleb128	3
	.4byte		.L262
	.uleb128	1381
	.uleb128	23
	.byte		"SignalGroupId"
	.byte		0
	.4byte		.L293
	.4byte		.L404
.L405:
	.sleb128	4
	.4byte		.L262
	.uleb128	1384
	.uleb128	29
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L263
	.4byte		.L406
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L410
	.4byte		.L407
	.4byte		.L408
.L411:
	.sleb128	4
	.4byte		.L262
	.uleb128	1410
	.uleb128	47
	.byte		"RxIpduRamFlag"
	.byte		0
	.4byte		.L378
	.4byte		.L412
.L413:
	.sleb128	4
	.4byte		.L262
	.uleb128	1411
	.uleb128	59
	.byte		"SignalPB_Ref"
	.byte		0
	.4byte		.L275
	.4byte		.L414
.L415:
	.sleb128	4
	.4byte		.L262
	.uleb128	1412
	.uleb128	57
	.byte		"Ipdu"
	.byte		0
	.4byte		.L370
	.4byte		.L416
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L420
	.4byte		.L417
	.4byte		.L418
.L421:
	.sleb128	4
	.4byte		.L262
	.uleb128	1430
	.uleb128	44
	.byte		"GroupSignalIndex"
	.byte		0
	.4byte		.L267
	.4byte		.L422
.L423:
	.sleb128	4
	.4byte		.L262
	.uleb128	1431
	.uleb128	54
	.byte		"GroupSignald"
	.byte		0
	.4byte		.L266
	.4byte		.L424
.L425:
	.sleb128	4
	.4byte		.L262
	.uleb128	1432
	.uleb128	69
	.byte		"GroupSignalPointer"
	.byte		0
	.4byte		.L275
	.4byte		.L426
	.section	.debug_info,,n
	.sleb128	0
.L420:
	.section	.debug_info,,n
	.sleb128	0
.L410:
	.section	.debug_info,,n
	.sleb128	0
.L400:
	.section	.debug_info,,n
.L431:
	.sleb128	2
	.4byte		.L428-.L2
	.byte		"Com_SetSignalGroupUpdateBit"
	.byte		0
	.4byte		.L262
	.uleb128	1597
	.uleb128	23
	.4byte		.L263
	.byte		0x1
	.byte		0x1
	.4byte		.L429
	.4byte		.L430
	.sleb128	3
	.4byte		.L262
	.uleb128	1597
	.uleb128	23
	.byte		"SignalGroupId"
	.byte		0
	.4byte		.L293
	.4byte		.L432
	.section	.debug_info,,n
	.sleb128	0
.L428:
	.section	.debug_info,,n
.L437:
	.sleb128	2
	.4byte		.L434-.L2
	.byte		"Com_SetSignalUpdateBit"
	.byte		0
	.4byte		.L262
	.uleb128	1614
	.uleb128	23
	.4byte		.L263
	.byte		0x1
	.byte		0x1
	.4byte		.L435
	.4byte		.L436
	.sleb128	3
	.4byte		.L262
	.uleb128	1614
	.uleb128	23
	.byte		"SignalId"
	.byte		0
	.4byte		.L266
	.4byte		.L438
.L439:
	.sleb128	4
	.4byte		.L262
	.uleb128	1618
	.uleb128	51
	.byte		"SignalPB_Ref"
	.byte		0
	.4byte		.L275
	.4byte		.L440
.L441:
	.sleb128	4
	.4byte		.L262
	.uleb128	1619
	.uleb128	27
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L263
	.4byte		.L442
.L443:
	.sleb128	4
	.4byte		.L262
	.uleb128	1620
	.uleb128	48
	.byte		"Ipdu"
	.byte		0
	.4byte		.L283
	.4byte		.L444
	.section	.debug_info,,n
	.sleb128	0
.L434:
	.section	.debug_info,,n
.L445:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L446
	.uleb128	513
	.uleb128	55
	.byte		"Com_Main"
	.byte		0
	.4byte		.L447
	.0byte		.L445
	.section	.debug_info,,n
.L450:
	.sleb128	8
	.4byte		.L451
	.uleb128	82
	.uleb128	1
	.4byte		.L452-.L2
	.uleb128	100
	.section	.debug_info,,n
.L126:
	.sleb128	9
	.byte		"ConfigurationId"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L127:
	.sleb128	9
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L128:
	.sleb128	9
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L129:
	.sleb128	9
	.byte		"IpduGroups_Ref"
	.byte		0
	.4byte		.L457
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L130:
	.sleb128	9
	.byte		"RxIpdus_Ref"
	.byte		0
	.4byte		.L462
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L131:
	.sleb128	9
	.byte		"RxIpdusDeferred_Ref"
	.byte		0
	.4byte		.L463
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L132:
	.sleb128	9
	.byte		"RxIpdusImmediate_Ref"
	.byte		0
	.4byte		.L463
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L133:
	.sleb128	9
	.byte		"RxIpdusRxDM_Ref"
	.byte		0
	.4byte		.L463
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L134:
	.sleb128	9
	.byte		"TxIpdus_Ref"
	.byte		0
	.4byte		.L465
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L135:
	.sleb128	9
	.byte		"Signals_Ref"
	.byte		0
	.4byte		.L466
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L136:
	.sleb128	9
	.byte		"IpduToSignal_Ref"
	.byte		0
	.4byte		.L467
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L137:
	.sleb128	9
	.byte		"GroupSignalToIPdu_Ref"
	.byte		0
	.4byte		.L467
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L138:
	.sleb128	9
	.byte		"TxModes_Ref"
	.byte		0
	.4byte		.L469
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L139:
	.sleb128	9
	.byte		"CycleTimers_Ref"
	.byte		0
	.4byte		.L474
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L140:
	.sleb128	9
	.byte		"DeferredLength_Ref"
	.byte		0
	.4byte		.L477
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L141:
	.sleb128	9
	.byte		"DeferredReceivedIPdu_Ref"
	.byte		0
	.4byte		.L480
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L142:
	.sleb128	9
	.byte		"DeferredReceivedIPduArrayLength"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L143:
	.sleb128	9
	.byte		"RxIpdusFlags"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L144:
	.sleb128	9
	.byte		"Com_ZeroMask"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L145:
	.sleb128	9
	.byte		"SignalGroup_base"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L146:
	.sleb128	9
	.byte		"MemberSignal_base"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	78
	.byte		0x1
.L147:
	.sleb128	9
	.byte		"SignalArrayLength"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L148:
	.sleb128	9
	.byte		"SignalGroupArrayLength"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	82
	.byte		0x1
.L149:
	.sleb128	9
	.byte		"MemberSignalArrayLength"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L150:
	.sleb128	9
	.byte		"TxIpduIdArrayLength"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	86
	.byte		0x1
.L151:
	.sleb128	9
	.byte		"RxIpduIdArrayLength"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L152:
	.sleb128	9
	.byte		"RxIPduDeferredArrayLength"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	90
	.byte		0x1
.L153:
	.sleb128	9
	.byte		"RxIPduImmediateArralLength"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L154:
	.sleb128	9
	.byte		"RxIPduRxDMArralLength"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	94
	.byte		0x1
.L155:
	.sleb128	9
	.byte		"IpduGroupArrayLength"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
	.sleb128	0
.L452:
.L461:
	.sleb128	8
	.4byte		.L451
	.uleb128	82
	.uleb128	1
	.4byte		.L483-.L2
	.uleb128	24
.L115:
	.sleb128	9
	.byte		"DescendentGroupList_Ref"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L116:
	.sleb128	9
	.byte		"ChildGroupList_Ref"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L117:
	.sleb128	9
	.byte		"AncestorGroupList_Ref"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L118:
	.sleb128	9
	.byte		"DescendentListLength"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L119:
	.sleb128	9
	.byte		"ChildListLength"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L120:
	.sleb128	9
	.byte		"AncestorListLength"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L121:
	.sleb128	9
	.byte		"ParentListLength"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L122:
	.sleb128	9
	.byte		"Flags"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L483:
.L373:
	.sleb128	8
	.4byte		.L451
	.uleb128	82
	.uleb128	1
	.4byte		.L487-.L2
	.uleb128	40
.L103:
	.sleb128	9
	.byte		"RxIPduId"
	.byte		0
	.4byte		.L481
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L104:
	.sleb128	9
	.byte		"RxGroupList_Ref"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L105:
	.sleb128	9
	.byte		"SignalIndex_Ref"
	.byte		0
	.4byte		.L467
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L106:
	.sleb128	9
	.byte		"ForeGroundBuffer_Ref"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L107:
	.sleb128	9
	.byte		"BackGroundBuffer_Ref"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L108:
	.sleb128	9
	.byte		"RxIpduFlags_Ref"
	.byte		0
	.4byte		.L488
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L109:
	.sleb128	9
	.byte		"IsBackGroundBufferUpdated_Ref"
	.byte		0
	.4byte		.L492
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L110:
	.sleb128	9
	.byte		"RxGroupListLength"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L111:
	.sleb128	9
	.byte		"NumberOfSignals"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L112:
	.sleb128	9
	.byte		"IpduLength"
	.byte		0
	.4byte		.L479
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L113:
	.sleb128	9
	.byte		"IPduFlags"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L114:
	.sleb128	9
	.byte		"Com_DeferredNotificationCall_Ref"
	.byte		0
	.4byte		.L495
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L487:
.L497:
	.sleb128	8
	.4byte		.L451
	.uleb128	82
	.uleb128	1
	.4byte		.L498-.L2
	.uleb128	4
.L101:
	.sleb128	9
	.byte		"Com_DeferredNotificationIndex"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L102:
	.sleb128	9
	.byte		"Com_DeferredNotificationIndexType"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L498:
.L491:
	.sleb128	8
	.4byte		.L451
	.uleb128	82
	.uleb128	1
	.4byte		.L499-.L2
	.uleb128	2
.L99:
	.sleb128	9
	.byte		"DeferredIPduReceived"
	.byte		0
	.4byte		.L494
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L100:
	.sleb128	9
	.byte		"IsBackGroundBufferUpdated"
	.byte		0
	.4byte		.L494
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L499:
.L286:
	.sleb128	8
	.4byte		.L451
	.uleb128	82
	.uleb128	1
	.4byte		.L500-.L2
	.uleb128	60
.L81:
	.sleb128	9
	.byte		"TxGroupList_Ref"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L82:
	.sleb128	9
	.byte		"IsIPduGroupEnabled_Ref"
	.byte		0
	.4byte		.L492
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L83:
	.sleb128	9
	.byte		"IsTxPending_Ref"
	.byte		0
	.4byte		.L492
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L84:
	.sleb128	9
	.byte		"IsConfirmationPending_Ref"
	.byte		0
	.4byte		.L492
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L85:
	.sleb128	9
	.byte		"IsConfirmationDeferred_Ref"
	.byte		0
	.4byte		.L492
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L86:
	.sleb128	9
	.byte		"CurrentTxMode_Ref"
	.byte		0
	.4byte		.L492
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L87:
	.sleb128	9
	.byte		"IsTransmissionFailed_Ref"
	.byte		0
	.4byte		.L492
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L88:
	.sleb128	9
	.byte		"Pdu"
	.byte		0
	.4byte		.L501
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L89:
	.sleb128	9
	.byte		"TxGroupListLength"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L90:
	.sleb128	9
	.byte		"Signals_Index"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L91:
	.sleb128	9
	.byte		"NumberOfSignals"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L92:
	.sleb128	9
	.byte		"SignalsWithUpdateBit_Ref"
	.byte		0
	.4byte		.L503
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L93:
	.sleb128	9
	.byte		"NumberOfSignalsWithUpdateBit"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L94:
	.sleb128	9
	.byte		"InitializeLength"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
.L95:
	.sleb128	9
	.byte		"TxMode"
	.byte		0
	.4byte		.L504
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L96:
	.sleb128	9
	.byte		"TargetId"
	.byte		0
	.4byte		.L481
	.sleb128	2
	.byte		0x23
	.uleb128	54
	.byte		0x1
.L97:
	.sleb128	9
	.byte		"IpduFlags"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L98:
	.sleb128	9
	.byte		"UnusedValue"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	58
	.byte		0x1
	.sleb128	0
.L500:
.L278:
	.sleb128	8
	.4byte		.L451
	.uleb128	82
	.uleb128	1
	.4byte		.L506-.L2
	.uleb128	56
.L60:
	.sleb128	9
	.byte		"ForeGroundBuffer_Ref"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L61:
	.sleb128	9
	.byte		"BackGroundBuffer_Ref"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L62:
	.sleb128	9
	.byte		"ShadowBuffer_Ref"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L63:
	.sleb128	9
	.byte		"UpdateBit_Ref"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L64:
	.sleb128	9
	.byte		"InitValue_Ref"
	.byte		0
	.4byte		.L507
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L65:
	.sleb128	9
	.byte		"IPDU"
	.byte		0
	.4byte		.L481
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L66:
	.sleb128	9
	.byte		"InvalidIndex"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L67:
	.sleb128	9
	.byte		"BytePosition"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L68:
	.sleb128	9
	.byte		"NotifyFunctionIndex"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L69:
	.sleb128	9
	.byte		"TimeoutFunctionIndex"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L70:
	.sleb128	9
	.byte		"SignalFlagsLT"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L71:
	.sleb128	9
	.byte		"UpdateBitMask"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L72:
	.sleb128	9
	.byte		"NotifyLength"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L73:
	.sleb128	9
	.byte		"MinimumReceiveLength"
	.byte		0
	.4byte		.L479
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L74:
	.sleb128	9
	.byte		"ComXf_Signal"
	.byte		0
	.4byte		.L333
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L506:
.L473:
	.sleb128	8
	.4byte		.L451
	.uleb128	82
	.uleb128	1
	.4byte		.L510-.L2
	.uleb128	4
.L58:
	.sleb128	9
	.byte		"Period"
	.byte		0
	.4byte		.L476
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L59:
	.sleb128	9
	.byte		"Offset"
	.byte		0
	.4byte		.L476
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L510:
.L334:
	.sleb128	8
	.4byte		.L511
	.uleb128	44
	.uleb128	1
	.4byte		.L512-.L2
	.uleb128	20
.L49:
	.sleb128	9
	.byte		"SignBitMask"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L50:
	.sleb128	9
	.byte		"BufferLength"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L51:
	.sleb128	9
	.byte		"Flags"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L52:
	.sleb128	9
	.byte		"Type"
	.byte		0
	.4byte		.L513
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L53:
	.sleb128	9
	.byte		"TransferProperty"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L54:
	.sleb128	9
	.byte		"PackingType"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L55:
	.sleb128	9
	.byte		"Mask1"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L56:
	.sleb128	9
	.byte		"Mask2"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L57:
	.sleb128	9
	.byte		"shift"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L512:
	.section	.debug_info,,n
.L502:
	.sleb128	10
	.4byte		.L515
	.uleb128	69
	.uleb128	1
	.4byte		.L516-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L45:
	.sleb128	9
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L378
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L46:
	.sleb128	9
	.byte		"SduLength"
	.byte		0
	.4byte		.L479
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L516:
	.section	.debug_info,,n
.L514:
	.sleb128	11
	.4byte		.L511
	.uleb128	44
	.uleb128	1
	.4byte		.L517-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"COM_BOOLEAN"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"COM_UINT8"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"COM_UINT16"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"COM_UINT32"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"COM_SINT8"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"COM_SINT16"
	.byte		0
	.sleb128	5
	.sleb128	12
	.byte		"COM_SINT32"
	.byte		0
	.sleb128	6
	.sleb128	12
	.byte		"COM_BYTES"
	.byte		0
	.sleb128	7
	.sleb128	12
	.byte		"COM_UINT8_DYN"
	.byte		0
	.sleb128	8
	.sleb128	12
	.byte		"COM_FLOAT32"
	.byte		0
	.sleb128	9
	.sleb128	12
	.byte		"COM_FLOAT64"
	.byte		0
	.sleb128	10
	.sleb128	0
.L517:
	.section	.debug_info,,n
.L264:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L263:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L264
.L268:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L267:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L268
.L266:
	.sleb128	14
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L267
	.section	.debug_info,,n
.L272:
	.sleb128	15
	.byte		"void"
	.byte		0
	.byte		0x0
	.section	.debug_info,,n
.L271:
	.sleb128	16
	.4byte		.L272
	.section	.debug_info,,n
.L270:
	.sleb128	17
	.4byte		.L271
.L277:
	.sleb128	14
	.byte		"Com_SignalsPB"
	.byte		0
	.4byte		.L278
.L276:
	.sleb128	16
	.4byte		.L277
.L275:
	.sleb128	17
	.4byte		.L276
.L285:
	.sleb128	14
	.byte		"Com_TxIpdu"
	.byte		0
	.4byte		.L286
.L284:
	.sleb128	16
	.4byte		.L285
.L283:
	.sleb128	17
	.4byte		.L284
.L293:
	.sleb128	14
	.byte		"Com_SignalGroupIdType"
	.byte		0
	.4byte		.L267
.L320:
	.sleb128	16
	.4byte		.L266
.L333:
	.sleb128	14
	.byte		"ComXf_SignalsPB"
	.byte		0
	.4byte		.L334
.L332:
	.sleb128	16
	.4byte		.L333
.L331:
	.sleb128	17
	.4byte		.L332
.L330:
	.sleb128	16
	.4byte		.L331
.L357:
	.sleb128	16
	.4byte		.L267
.L365:
	.sleb128	17
	.4byte		.L272
.L372:
	.sleb128	14
	.byte		"Com_RxIpdu"
	.byte		0
	.4byte		.L373
.L371:
	.sleb128	16
	.4byte		.L372
.L370:
	.sleb128	17
	.4byte		.L371
.L378:
	.sleb128	17
	.4byte		.L263
.L449:
	.sleb128	14
	.byte		"Com_ConfigType"
	.byte		0
	.4byte		.L450
.L448:
	.sleb128	16
	.4byte		.L449
.L447:
	.sleb128	17
	.4byte		.L448
.L454:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L453:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L454
.L456:
	.sleb128	16
	.4byte		.L453
.L455:
	.sleb128	17
	.4byte		.L456
.L460:
	.sleb128	14
	.byte		"Com_IpduGroup"
	.byte		0
	.4byte		.L461
.L459:
	.sleb128	16
	.4byte		.L460
.L458:
	.sleb128	17
	.4byte		.L459
.L457:
	.sleb128	16
	.4byte		.L458
.L462:
	.sleb128	16
	.4byte		.L370
.L464:
	.sleb128	17
	.4byte		.L462
.L463:
	.sleb128	16
	.4byte		.L464
.L465:
	.sleb128	16
	.4byte		.L283
.L466:
	.sleb128	16
	.4byte		.L275
.L468:
	.sleb128	17
	.4byte		.L320
.L467:
	.sleb128	16
	.4byte		.L468
.L472:
	.sleb128	14
	.byte		"Com_TxModeType"
	.byte		0
	.4byte		.L473
.L471:
	.sleb128	16
	.4byte		.L472
.L470:
	.sleb128	17
	.4byte		.L471
.L469:
	.sleb128	16
	.4byte		.L470
.L476:
	.sleb128	14
	.byte		"Com_Timer"
	.byte		0
	.4byte		.L267
.L475:
	.sleb128	17
	.4byte		.L476
.L474:
	.sleb128	16
	.4byte		.L475
.L479:
	.sleb128	14
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L267
.L478:
	.sleb128	17
	.4byte		.L479
.L477:
	.sleb128	16
	.4byte		.L478
.L481:
	.sleb128	14
	.byte		"PduIdType"
	.byte		0
	.4byte		.L267
.L480:
	.sleb128	17
	.4byte		.L481
.L482:
	.sleb128	16
	.4byte		.L378
.L486:
	.sleb128	16
	.4byte		.L481
.L485:
	.sleb128	17
	.4byte		.L486
.L484:
	.sleb128	16
	.4byte		.L485
.L490:
	.sleb128	14
	.byte		"Com_RxIPduFlag"
	.byte		0
	.4byte		.L491
.L489:
	.sleb128	17
	.4byte		.L490
.L488:
	.sleb128	16
	.4byte		.L489
.L494:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L264
.L493:
	.sleb128	17
	.4byte		.L494
.L492:
	.sleb128	16
	.4byte		.L493
.L496:
	.sleb128	14
	.byte		"Com_DeferredNotificationCall"
	.byte		0
	.4byte		.L497
.L495:
	.sleb128	17
	.4byte		.L496
.L501:
	.sleb128	14
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L502
.L503:
	.sleb128	17
	.4byte		.L357
	.section	.debug_info,,n
.L504:
	.sleb128	18
	.4byte		.L505-.L2
	.4byte		.L267
	.section	.debug_info,,n
	.sleb128	19
	.uleb128	0
	.sleb128	0
.L505:
.L509:
	.sleb128	16
	.4byte		.L263
.L508:
	.sleb128	17
	.4byte		.L509
.L507:
	.sleb128	16
	.4byte		.L508
.L513:
	.sleb128	14
	.byte		"Com_SignalType"
	.byte		0
	.4byte		.L514
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L269:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L273:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo4),30
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),4
	.d2locend
.L279:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),29
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),29
	.d2locend
.L281:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo10),27
	.d2locend
.L287:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo4),28
	.d2locend
.L294:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),0
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),0
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locend
.L296:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),31
	.d2locend
.L302:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),30
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo27),30
	.d2locend
.L308:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo32),0
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo27),29
	.d2locend
.L314:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo27),28
	.d2locend
.L321:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),0
	.d2locend
.L323:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo23),5
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),5
	.d2locend
.L335:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),3
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),3
	.d2locend
.L337:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),3
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),3
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),3
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo41),3
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo50),3
	.d2locend
.L344:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),3
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),0
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),0
	.d2locend
.L345:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo57),4
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),8
	.d2locend
.L351:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),4
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo62),4
	.d2locend
.L358:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),3
	.d2locend
.L364:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),31
	.d2locend
.L366:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo67),4
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo68),30
	.d2locend
.L368:
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),29
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),29
	.d2locend
.L374:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo68),28
	.d2locend
.L376:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo68),26
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),3
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),26
	.d2locend
.L379:
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),0
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo68),27
	.d2locend
.L385:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),3
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),0
	.d2locend
.L386:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo84),4
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo83),8
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),8
	.d2locend
.L392:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo88),4
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo89),4
	.d2locend
.L398:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),3
	.d2locend
.L404:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),3
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),4
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),0
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),4
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),0
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),31
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),0
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),0
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),0
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),0
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo113),0
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo115),0
	.d2locend
.L406:
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),0
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo101),3
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo103),3
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),3
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),3
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),3
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),3
	.d2locend
.L412:
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo103),0
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo115),31
	.d2locend
.L414:
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo129),29
	.d2locend
.L416:
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo100),0
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo105),4
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),4
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),4
	.d2locend
.L422:
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),30
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo129),30
	.d2locend
.L424:
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo138),0
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo139),0
	.d2locend
.L426:
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo140),3
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo111),5
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo143),5
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo144),5
	.d2locend
.L432:
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),3
	.d2locend
.L438:
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo148),3
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo150),0
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo152),0
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo154),0
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo156),0
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),0
	.d2locend
.L440:
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo160),31
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo158),31
	.d2locend
.L442:
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo162),30
	.d2locend
.L444:
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo158),29
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Com_SetSignalUpdateBit"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Com_COM_APPLICATION_TXIPDU","SchM_Exit_Com_COM_APPLICATION_TXIPDU"
	.wrcm.end
	.wrcm.nelem "Com_SetSignalGroupUpdateBit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Com_SendSignalGroup"
	.wrcm.end
	.wrcm.nelem "Com_ReceiveSignalGroup"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Com_UnPackSignal","SchM_Enter_Com_COM_APPLICAITON_BACKGROUND","SchM_Enter_Com_COM_APPLICAITON_FOREGROUND","SchM_Exit_Com_COM_APPLICAITON_BACKGROUND","SchM_Exit_Com_COM_APPLICAITON_FOREGROUND"
	.wrcm.end
	.wrcm.nelem "Com_ReceiveShadowSignal"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Com_CopyInitValue","GetSignalLength","vstar_copy"
	.wrcm.end
	.wrcm.nelem "Com_ReceiveSignal"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "Com_CopyInitValue","Com_UnPackSignal","SchM_Enter_Com_COM_APPLICAITON_BACKGROUND","SchM_Enter_Com_COM_APPLICAITON_FOREGROUND","SchM_Exit_Com_COM_APPLICAITON_BACKGROUND","SchM_Exit_Com_COM_APPLICAITON_FOREGROUND","vstar_copy"
	.wrcm.end
	.wrcm.nelem "Com_UpdateShadowSignal"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "GetSignalLength","vstar_copy"
	.wrcm.end
	.wrcm.nelem "GetSignalLength"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Com_SendSignalGroup"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Com_PackSignal","SchM_Enter_Com_COM_APPLICATION_TXIPDU","SchM_Exit_Com_COM_APPLICATION_TXIPDU"
	.wrcm.end
	.wrcm.nelem "Com_SendSignal"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "Com_PackSignal","SchM_Enter_Com_COM_APPLICATION_TXIPDU","SchM_Exit_Com_COM_APPLICATION_TXIPDU"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Com_SignalGroupInterface.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Com_SignalGroupInterface.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Com_SignalGroupInterface.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Com_SignalGroupInterface.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Com_SignalGroupInterface.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Com_SignalGroupInterface.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\Com\ssc\make\..\src\Com_SignalGroupInterface.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
