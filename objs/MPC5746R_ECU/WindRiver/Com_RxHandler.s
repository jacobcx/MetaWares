#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Com_RxHandler.c"
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
# static FUNC(PduLengthType,COM_CODE) Com_ProcessSignals(
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_RxHandler.c"
        .d2line         688,37
#$$ld
.L227:

#$$bf	Com_ProcessSignals,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.d2_cfa_start __cie
Com_ProcessSignals:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# IpduIndex=r0
	.d2_cfa_offset    108,-1
	mr		r4,r3		# IpduIndex=r4 IpduIndex=r3
	mr		r0,r5		# RecievedIpduLength=r0 RecievedIpduLength=r5
	.d2prologue_end
#         CONST(PduIdType, AUTOMATIC) IpduIndex,
#         CONSTP2CONST(uint8,AUTOMATIC,COM_CONST_PB) SourceBuffer,
#         CONST(PduLengthType, AUTOMATIC) RecievedIpduLength)
# {
#     P2CONST(Com_SignalsPB, AUTOMATIC, COM_CONST_PB)   SignalPointer;
#     VAR(uint16, AUTOMATIC)  Index;
#     VAR(Com_SignalIdType, AUTOMATIC)  SignalIndex;
# #if (COM_ENABLE_DATA_INVALIDATION == STD_ON)
#     VAR(uint8, AUTOMATIC)   InvalidStatus;
# #endif
# #if (COM_ENABLE_FILTERS == STD_ON)
#     VAR(boolean, AUTOMATIC)   FilterPassedStatus;
# #endif
# 
#     CONSTP2CONST(Com_RxIpdu,AUTOMATIC,COM_CONST_PB) Ipdu = &(Com_Main->RxIpdus_Ref[IpduIndex]);
#     VAR(PduIdType, AUTOMATIC) NumberOfNotReceivedSignals;
#     VAR(PduLengthType, AUTOMATIC) UpdatedIPduLength = 0;
	.d2line		705
	diab.li		r6,0		# UpdatedIPduLength=r6
	.d2line		703
.Llo33:
	lis		r3,Com_Main@ha
.Llo2:
	lwz		r3,Com_Main@l(r3)
	lwz		r5,16(r3)		# IpduIndex=r5
.Llo3:
	rlwinm		r4,r4,0,16,31		# IpduIndex=r4 IpduIndex=r4
	e_mulli		r4,r4,40		# IpduIndex=r4 IpduIndex=r4
	se_add		r4,r5		# IpduIndex=r4 IpduIndex=r4 IpduIndex=r5
.Llo4:
	mr		r5,r4		# Ipdu=r5 Ipdu=r4
# 
#     /*REQ: [COM574]*/
#     /* Check which Signals or SignalGroups are completely received.
#      * Com_Main->Signals_Ref is sorted according MinimumReceiveLength of the corresponding signal/signalGroup */
#     for(NumberOfNotReceivedSignals = (uint16)0U; NumberOfNotReceivedSignals < Ipdu->NumberOfSignals; NumberOfNotReceivedSignals++)
	.d2line		710
	diab.li		r4,0		# IpduIndex=r4
.L204:
.Llo5:
	rlwinm		r7,r4,0,16,31		# NumberOfNotReceivedSignals=r4
.Llo32:
	lhz		r3,30(r5)		# SignalPointer=r3 Ipdu=r5
.Llo9:
	se_cmp		r7,r3		# SignalPointer=r3
	bc		0,0,.L208	# ge
#     {
#         SignalPointer = &(Com_Main->Signals_Ref[Ipdu->SignalIndex_Ref[NumberOfNotReceivedSignals]]);
	.d2line		712
.Llo10:
	lwz		r3,8(r5)		# SignalPointer=r3 Ipdu=r5
.Llo11:
	rlwinm		r7,r4,1,15,30		# NumberOfNotReceivedSignals=r4
	lhzx		r7,r3,r7		# SignalPointer=r3
	lis		r3,Com_Main@ha		# SignalPointer=r3
	lwz		r3,Com_Main@l(r3)		# SignalPointer=r3 SignalPointer=r3
	lwz		r3,36(r3)		# SignalPointer=r3 SignalPointer=r3
	rlwinm		r31,r7,6,0,25
	se_slwi		r7,3
	subf		r7,r7,r31
	se_add		r3,r7		# SignalPointer=r3 SignalPointer=r3
	mr		r3,r3		# SignalPointer=r3 SignalPointer=r3
#         if(SignalPointer->MinimumReceiveLength<=RecievedIpduLength)
	.d2line		713
	lhz		r3,34(r3)		# SignalPointer=r3 SignalPointer=r3
	rlwinm		r7,r0,0,16,31		# RecievedIpduLength=r0
	se_cmp		r3,r7		# SignalPointer=r3
	bc		0,1,.L208	# le
#         {
#             break;
#         }
#     }
	.d2line		717
.Llo12:
	diab.addi		r7,r4,1		# NumberOfNotReceivedSignals=r4
	se_addi		r4,1		# NumberOfNotReceivedSignals=r4 NumberOfNotReceivedSignals=r4
	b		.L204
.L208:
# 
#     /* Process completely received Signals and SignalGrops */
#     for(Index = NumberOfNotReceivedSignals; Index < Ipdu->NumberOfSignals; Index++)
	.d2line		720
	mr		r4,r4		# Index=r4 Index=r4
.L209:
.Llo6:
	rlwinm		r31,r4,0,16,31		# Index=r4
	lhz		r0,30(r5)		# RecievedIpduLength=r0 Ipdu=r5
.Llo7:
	se_cmp		r31,r0		# RecievedIpduLength=r0
	bc		0,0,.L211	# ge
#     {
#         SignalIndex = Ipdu->SignalIndex_Ref[Index];
	.d2line		722
.Llo8:
	lwz		r3,8(r5)		# SignalPointer=r3 Ipdu=r5
.Llo13:
	rlwinm		r31,r4,1,15,30		# Index=r4
	lhzx		r0,r3,r31		# RecievedIpduLength=r0 SignalPointer=r3
.Llo17:
	mr		r0,r0		# SignalIndex=r0 SignalIndex=r0
#         SignalPointer = &(Com_Main->Signals_Ref[SignalIndex]);
	.d2line		723
	rlwinm		r0,r0,0,16,31		# SignalIndex=r0 SignalIndex=r0
	lis		r3,Com_Main@ha		# SignalPointer=r3
	lwz		r3,Com_Main@l(r3)		# SignalPointer=r3 SignalPointer=r3
	lwz		r3,36(r3)		# SignalPointer=r3 SignalPointer=r3
	rlwinm		r7,r0,6,0,25		# SignalIndex=r0
	se_slwi		r0,3		# SignalIndex=r0 SignalIndex=r0
	subf		r0,r0,r7		# SignalIndex=r0 SignalIndex=r0
	se_add		r0,r3		# SignalIndex=r0 SignalIndex=r0 SignalPointer=r3
.Llo18:
	mr		r3,r0		# SignalPointer=r3 SignalPointer=r0
# #if (COM_ENABLE_DATA_INVALIDATION == STD_ON)
#         InvalidStatus = COM_INVALIDSTATUS_VALID;
# #endif
# #if (COM_ENABLE_FILTERS == STD_ON)
#         FilterPassedStatus = TRUE;
# #endif
#         /*
#          * Update bit is NOT configured OR update bit is set
#          */
# 
#         /* PRQA S 490++ *//* these pointers are referencing the same byte array. */
#         /* PRQA S 492 5 *//* Length of underlying object is checked previously */
#         if(((SignalPointer->UpdateBitMask) == (uint8)0x00)
	.d2line		736
.Llo14:
	lbz		r0,31(r3)		# SignalIndex=r0 SignalPointer=r3
.Llo19:
	se_cmpi		r0,0		# SignalIndex=r0
	bc		1,2,.L216	# eq
.Llo15:
	lwz		r7,12(r3)		# SignalPointer=r3
	lbz		r0,0(r7)		# SignalIndex=r0
.Llo20:
	lbz		r7,31(r3)		# SignalPointer=r3
	and.		r0,r0,r7		# SignalIndex=r0 SignalIndex=r0
.Llo21:
	bc		1,2,.L215	# eq
.L216:
# #if ((COM_ENABLE_FILTERS == STD_OFF) && (COM_ENABLE_DATA_INVALIDATION == STD_OFF))
#                 || ((*(SignalPointer->UpdateBit_Ref) & (SignalPointer->UpdateBitMask)) != 0))   /* Update bit in BG */
# #else
#                 || ((SourceBuffer[SignalPointer->UpdateBitIndex] & (SignalPointer->UpdateBitMask)) != 0))
# #endif
#         {
# #if (COM_ENABLE_SIGNAL_GATEWAY == STD_ON)|| (COM_ENABLE_DATA_INVALIDATION == STD_ON) || (COM_ENABLE_FILTERS == STD_ON)
# 
#             if(SignalPointer->NotifyLength == 1)
#             {
#                 /*
#                  * Validate and filter normal signal
#                  */
# 
# #if COM_PROCESSING_NOTIFICATION == STD_ON
#                     /* Callback test function */
#                     Com_ProcessingNotification(SignalIndex);
# #endif
# #if (COM_ENABLE_SIGNAL_GATEWAY == STD_ON)
#                 if(Com_Main->GwPointers_Ref != NULL_PTR)
#                 {
#                     /* Set the signal's GW-pending flag */
#                     *(Com_GwPointerArrayWrite[SignalIndex]) |= Com_Main->GwMasks_Ref[SignalIndex];
#                 }
# #endif /* COM_ENABLE_SIGNAL_GATEWAY */
# 
# #if (COM_ENABLE_DATA_INVALIDATION == STD_ON) || (COM_ENABLE_FILTERS == STD_ON)
# 
# #if COM_ENABLE_DATA_INVALIDATION == STD_ON
# 
#                 /* Normal Signal validation */
# 
#                 if(0 == (SignalPointer->ComXf_Signal.Flags & COM_SIGNAL_ALWAYS_VALID))
#                 {
#                     InvalidStatus = Com_IsSignalInvalid(SignalIndex, &(SourceBuffer[SignalPointer->BytePosition])); /* PRQA S 492 *//* array subscription is intentional */
#                 }
# #endif /* COM_ENABLE_DATA_INVALIDATION */
# 
#                 if((Ipdu->IPduFlags & COM_RXIPDU_IMMEDIATE) != 0)
#                 {
#                     /*
#                      * Filter and process IMMEDIATE normal signal (only if signal is valid)
#                      */
# #if (COM_ENABLE_DATA_INVALIDATION == STD_ON)
#                     if(InvalidStatus == COM_INVALIDSTATUS_VALID)
#                     {
# #endif
# #if (COM_ENABLE_FILTERS == STD_ON)
#                         FilterPassedStatus =
# #endif
#                             Com_ProcessImmediateSignal(SignalPointer, SignalIndex, SourceBuffer);
# 
# #if (COM_ENABLE_DATA_INVALIDATION == STD_ON)
#                     }
# #endif
#                 }
#                 else
#                 {
# 
#                     /*
#                      * Filter and process DEFERRED normal signal
#                      */
# #if (COM_ENABLE_FILTERS == STD_ON)
#                     FilterPassedStatus =
# #endif
#                             Com_ProcessDeferredSignal(SignalPointer, SignalIndex, SourceBuffer
# #if COM_ENABLE_DATA_INVALIDATION == STD_ON
#                                     ,InvalidStatus
# #endif
#                                     );
#                 }
# 
#                 /*
#                  * Replace normal signal value if the value is invalid, and invalid action is REPLACE
#                  */
# #if (COM_ENABLE_DATA_INVALIDATION == STD_ON)
#                 /* Signal is invalid */
#                 if(InvalidStatus == COM_INVALIDSTATUS_INVALID)
#                 {
#                     /* Signal is invalid,check action is to REPLACE */
#                     if((SignalPointer->ComXf_Signal.Flags & COM_SIGNAL_INVALID_REPLACE) != 0)
#                     {
# #if COM_ENABLE_FILTERS == STD_ON
#                         /* REQ: [COM681] Do Filtering on the Replaced value */
#                         /* If normal Signal and has configured filter */
#                         if((Com_Main->Signals_Ref[SignalIndex].SignalFlagsLT & COM_F_HAS_FILTER) != 0)
#                         {
#                             FilterPassedStatus = Com_ProcessRxSignalFilter(SignalIndex,
#                                                    SignalPointer->InitValue_Ref,
#                                                    SignalPointer->BackGroundBuffer_Ref);
#                         }
#                         if(TRUE == FilterPassedStatus)
# #endif /* COM_ENABLE_FILTERS */
#                         {
#                             /*
#                              * Replace signal value, signal becomes valid
#                              */
#                             Com_ReplaceSignals(SignalIndex, TO_BG_BUFFER
# #if(COM_ENABLE_TIMEOUT_SUBSTITUTION == STD_ON)
#                                                ,INIT_VAL
# #endif
#                                                );
#                             InvalidStatus = COM_INVALIDSTATUS_VALID;
#                         }
#                     }
#                 }
# #endif /* (COM_ENABLE_DATA_INVALIDATION == STD_ON) */
# #endif    /* (COM_ENABLE_DATA_INVALIDATION == STD_ON) || (COM_ENABLE_FILTERS == STD_ON) */
#             } /* end of normal signal process */
# 
#             else
#             {
#                 /*
#                  * Process SignalGroup (no filtering, only validation and signal copy)
#                  */
# #if COM_ENABLE_DATA_INVALIDATION == STD_ON
#                 InvalidStatus =
# #endif
#                         Com_ProcessSignalGroup(Ipdu, SignalIndex, SignalPointer, SourceBuffer);
#             }
# #endif /* (COM_ENABLE_SIGNAL_GATEWAY == STD_ON) || (COM_ENABLE_DATA_INVALIDATION == STD_ON) || (COM_ENABLE_FILTERS == STD_ON) */
# 
# #if (COM_ENABLE_DATA_INVALIDATION == STD_ON)
#             if(InvalidStatus == COM_INVALIDSTATUS_VALID)
#             {
#                 /*
#                  * Signal(group) is valid.
#                  */
# #endif /* (COM_ENABLE_DATA_INVALIDATION == STD_ON) */
# #if(COM_ENABLE_FILTERS == STD_ON)
#                 if(TRUE == FilterPassedStatus)
#                     /*
#                      * Signal passed filter
#                      */
# #endif     /* (COM_ENABLE_FILTERS == STD_ON) */
#                 {
#                     /*
#                      * Store the maximum length of updated IPdu and store
#                      * deferred notify function call request.
#                      */
#                     if((PduLengthType)(SignalPointer->BytePosition+SignalPointer->ComXf_Signal.BufferLength) > UpdatedIPduLength)
	.d2line		877
	lhz		r0,24(r3)		# SignalIndex=r0 SignalPointer=r3
.Llo22:
	lhz		r7,40(r3)		# SignalPointer=r3
	se_add		r0,r7		# SignalIndex=r0 SignalIndex=r0
	rlwinm		r0,r0,0,16,31		# SignalIndex=r0 SignalIndex=r0
	rlwinm		r7,r6,0,16,31		# UpdatedIPduLength=r6
	se_cmp		r0,r7		# SignalIndex=r0
	bc		0,1,.L213	# le
#                     {
#                         UpdatedIPduLength = (PduLengthType)(SignalPointer->BytePosition+SignalPointer->ComXf_Signal.BufferLength);
	.d2line		879
.Llo23:
	lhz		r6,24(r3)		# UpdatedIPduLength=r6 SignalPointer=r3
	lhz		r0,40(r3)		# SignalIndex=r0 SignalPointer=r3
.Llo24:
	se_add		r0,r6		# SignalIndex=r0 SignalIndex=r0 UpdatedIPduLength=r6
.Llo25:
	mr		r6,r0		# UpdatedIPduLength=r6 UpdatedIPduLength=r0
.L213:
#                     }
#                     if(Com_NotifyFunction_Array[SignalPointer->NotifyFunctionIndex] != NULL_PTR)
	.d2line		881
	lis		r7,Com_NotifyFunction_Array@ha
	e_add16i		r7,r7,Com_NotifyFunction_Array@l
	lhz		r0,26(r3)		# SignalIndex=r0 SignalPointer=r3
.Llo26:
	rlwinm		r0,r0,2,14,29		# SignalIndex=r0 SignalIndex=r0
	lwzx		r0,r7,r0		# SignalIndex=r0
	se_cmpi		r0,0		# SignalIndex=r0
	bc		1,2,.L214	# eq
#                     {
#                         Ipdu->Com_DeferredNotificationCall_Ref[Index].Com_DeferredNotificationIndex = SignalPointer->NotifyFunctionIndex;
	.d2line		883
.Llo27:
	lhz		r0,26(r3)		# SignalIndex=r0 SignalPointer=r3
.Llo28:
	lwz		r7,36(r5)		# Ipdu=r5
	rlwinm		r31,r4,2,14,29		# Index=r4
	sthux		r0,r7,r31		# SignalIndex=r0
#                         Ipdu->Com_DeferredNotificationCall_Ref[Index].Com_DeferredNotificationIndexType = COM_DEFERRED_CALLBACK_NORMAL_NOTIF;
	.d2line		884
	diab.li		r0,1		# SignalIndex=r0
	lwz		r7,36(r5)		# Ipdu=r5
	se_add		r31,r7
	stb		r0,2(r31)		# SignalIndex=r0
.L214:
#                     }
#                 }
# #if (COM_ENABLE_DATA_INVALIDATION == STD_ON)
#             }
#             else
#             {
#                 /*
#                  * Signal is invalid, call error notification
#                  */
#                 if (Com_ErrorFunction_Array[SignalPointer->ErrorFunctionIndex] != NULL_PTR)
#                 {
#                     Ipdu->Com_DeferredNotificationCall_Ref[Index].Com_DeferredNotificationIndex = SignalPointer->ErrorFunctionIndex;
#                     Ipdu->Com_DeferredNotificationCall_Ref[Index].Com_DeferredNotificationIndexType = COM_DEFERRED_CALLBACK_ERROR_NOTIF;
#                 }
#             }
# #endif /* COM_ENABLE_DATA_INVALIDATION */
# 
# #if COM_ENABLE_RX_DM == STD_ON
#             /* If a signal/signal group is received and has own deadline monitoring, then the RxDm timer
#              * should be restarted. */
#             /* If signal is received and has ComTimeout configured */
#             if((SignalPointer->ComXf_Signal.Flags & COM_SIGNAL_USING_DEADLINEMONITORING) != 0)
#             {
#                 VAR(uint8, AUTOMATIC) RxDmLoopIndex;
#                 VAR(PduIdType, AUTOMATIC) RxDmIndex = 0;
#                 P2CONST(Com_RxDmTimeOut,AUTOMATIC,COM_CONST_PB) ThisRxTimer;
# 
#                 for(RxDmLoopIndex = 0; RxDmLoopIndex < Ipdu->RxDmListLength; RxDmLoopIndex++)
#                 {
#                     RxDmIndex = (PduIdType)(Ipdu->RxDmList_Index + (PduIdType)RxDmLoopIndex);
#                     ThisRxTimer = &(Com_Main->RxTimeOuts_Ref[RxDmIndex]);
#                     if(ThisRxTimer->Signal_Index_Ref[0] == SignalIndex)
#                     {
#                         /* Correct RxDm entry found */
#                         break;
#                     }
#                 }
#                 /* Trigger Timer restart */
#                 Com_Main->Com_RxDmTimeoutRestartRequest_Ref[RxDmIndex] = TRUE;
#                 /* Clear FirstTimeoutRestartRequest (if it was present before)*/
#                 Com_Main->Com_RxDmFirstTimeoutRestartRequest_Ref[RxDmIndex] = FALSE;
#             }
# #endif
#             /* clear update bit for signal */
#             *(SignalPointer->UpdateBit_Ref) &= (uint8)~(SignalPointer->UpdateBitMask);
	.d2line		929
.Llo29:
	lwz		r7,12(r3)		# SignalPointer=r3
	lbz		r0,0(r7)		# SignalIndex=r0
.Llo30:
	lbz		r3,31(r3)		# SignalPointer=r3 SignalPointer=r3
	andc		r0,r0,r3		# SignalIndex=r0 SignalIndex=r0 SignalPointer=r3
	stb		r0,0(r7)		# SignalIndex=r0
.L215:
#         }/* Update bit check */
#         else
#         {
#             /* Copy back from ForegroundBuffer to BackgroundBuffer all completely received but not processed signal/signalgroup value if:
#              * The PDU processing is DEFERRED
#              * The signal has filter or REPLACE flag (invalid or RxDm replace)
#              */
# #if (COM_ENABLE_DATA_INVALIDATION == STD_ON) || (COM_ENABLE_RX_DM == STD_ON) || (COM_ENABLE_FILTERS == STD_ON)
#             if((Ipdu->IPduFlags & COM_RXIPDU_IMMEDIATE) == 0)
#             {
#                 /* Normal signal */
#                 if(SignalPointer->NotifyLength == 1)
#                 {
#                     if(
# #if (COM_ENABLE_DATA_INVALIDATION == STD_ON)
#                        (((uint16)(SignalPointer->ComXf_Signal.Flags & COM_SIGNAL_ALWAYS_VALID) != COM_SIGNAL_ALWAYS_VALID) &&
#                         ((uint16)(SignalPointer->ComXf_Signal.Flags & COM_SIGNAL_INVALID_REPLACE) == COM_SIGNAL_INVALID_REPLACE))   /* INVALID_REPLACE */
# #if (COM_ENABLE_RX_DM == STD_ON) ||  (COM_ENABLE_FILTERS == STD_ON)
#                         ||
# #endif /* (COM_ENABLE_RX_DM == STD_ON) ||  (COM_ENABLE_FILTERS == STD_ON) */
# #endif /*  (COM_ENABLE_DATA_INVALIDATION == STD_ON) */
# #if (COM_ENABLE_RX_DM == STD_ON)
#                        ((uint16)(SignalPointer->ComXf_Signal.Flags & COM_SIGNAL_TO_REPLACE) == COM_SIGNAL_TO_REPLACE)            /* RxDm Replace */
# #if (COM_ENABLE_FILTERS == STD_ON)
#                        ||
# #endif /* (COM_ENABLE_FILTERS == STD_ON) */
# #endif /* (COM_ENABLE_RX_DM == STD_ON) */
# #if (COM_ENABLE_FILTERS == STD_ON)
#                        ((uint8)(SignalPointer->SignalFlagsLT & COM_F_HAS_FILTER) == COM_F_HAS_FILTER)                           /* has filter */
# #endif /* (COM_ENABLE_FILTERS == STD_ON) */
#                       )
#                     {
#                         Com_CopyBufferNr(SignalPointer->ForeGroundBuffer_Ref,
#                                          SignalPointer->BackGroundBuffer_Ref,
#                                          SignalPointer->ComXf_Signal.BufferLength,
#                                          SignalPointer->ComXf_Signal.Mask1,
#                                          SignalPointer->ComXf_Signal.Mask2);
#                     }
#                 }
# #if ((COM_ENABLE_DATA_INVALIDATION == STD_ON) || (COM_ENABLE_RX_DM == STD_ON))
#                 else
#                 {
#                     /* Signal group */
#                     if(
# #if (COM_ENABLE_DATA_INVALIDATION == STD_ON)
#                        (((uint16)(SignalPointer->ComXf_Signal.Flags & COM_SIGNAL_ALWAYS_VALID) != COM_SIGNAL_ALWAYS_VALID) &&
#                         ((uint16)(SignalPointer->ComXf_Signal.Flags & COM_SIGNAL_INVALID_REPLACE) == COM_SIGNAL_INVALID_REPLACE)) /* INVALID_REPLACE */
# #if (COM_ENABLE_RX_DM == STD_ON)
#                        ||
# #endif /* COM_ENABLE_RX_DM == STD_ON */
# #endif /* COM_ENABLE_DATA_INVALIDATION == STD_ON */
# #if (COM_ENABLE_RX_DM == STD_ON)
#                        ((uint16)(SignalPointer->ComXf_Signal.Flags & COM_SIGNAL_TO_REPLACE) == COM_SIGNAL_TO_REPLACE)            /* RxDm Replace */
# #endif /* COM_ENABLE_RX_DM == STD_ON */
#                       )
#                     {
#                         VAR(uint16, AUTOMATIC) GroupSignalIndex;
#                         for(GroupSignalIndex = 0; GroupSignalIndex<(uint16)SignalPointer->NotifyLength; GroupSignalIndex++)
#                         {
#                             CONST(Com_SignalIdType, AUTOMATIC) GroupSignald = Com_Main->GroupSignalToIPdu_Ref[SignalPointer->InvalidIndex+GroupSignalIndex];
#                             P2CONST(Com_SignalsPB, AUTOMATIC, COM_CONST_PB) GroupSignalPointer = &(Com_Main->Signals_Ref[GroupSignald]);
#                             Com_CopyBufferNr(GroupSignalPointer->ForeGroundBuffer_Ref,
#                                              GroupSignalPointer->BackGroundBuffer_Ref,
#                                              GroupSignalPointer->ComXf_Signal.BufferLength,
#                                              GroupSignalPointer->ComXf_Signal.Mask1,
#                                              GroupSignalPointer->ComXf_Signal.Mask2);
#                         }
#                     }
#                 }
# #endif /* ((COM_ENABLE_DATA_INVALIDATION == STD_ON) || (COM_ENABLE_RX_DM == STD_ON)) */
#             }
# #endif /* (COM_ENABLE_DATA_INVALIDATION == STD_ON) || (COM_ENABLE_RX_DM == STD_ON) || (COM_ENABLE_FILTERS == STD_ON) */
# 
#         /*
#          * Call notification callbacks for tests
#          */
# #if COM_PROCESSING_NOTIFICATION == STD_ON
#             {
#                 /*
#                  * Update bit not set, notify test
#                  */
#                 /* Notify for simple Signal */
#                 if(SignalPointer->NotifyLength == 1)
#                 {
#                     Com_ProcessingNotification(SignalIndex);
#                 }
#                 /* Notify for GroupSignal */
#                 else
#                 {
#                     VAR(uint16, AUTOMATIC) GroupSignalIndex;
#                     for(GroupSignalIndex = 0; GroupSignalIndex<(uint16)SignalPointer->NotifyLength;GroupSignalIndex++)
#                     {
#                        CONST(Com_SignalIdType, AUTOMATIC) GroupSignald =
#                                Com_Main->GroupSignalToIPdu_Ref[SignalPointer->InvalidIndex+GroupSignalIndex];
# 
#                        Com_ProcessingNotification(GroupSignald);
#                     }
#                 }
#             }
# #endif
#         }
#     }
	.d2line		1031
.Llo31:
	diab.addi		r31,r4,1		# Index=r4
	se_addi		r4,1		# Index=r4 Index=r4
	b		.L209
.L211:
#     return UpdatedIPduLength;
	.d2line		1032
.Llo16:
	rlwinm		r3,r6,0,16,31		# SignalPointer=r3 UpdatedIPduLength=r6
# }
	.d2line		1033
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# RecievedIpduLength=r0
	mtspr		lr,r0		# RecievedIpduLength=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo34:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L228:
	.type		Com_ProcessSignals,@function
	.size		Com_ProcessSignals,.-Com_ProcessSignals
# Number of nodes = 193

# Allocations for Com_ProcessSignals
#	?a4		IpduIndex
#	not allocated	SourceBuffer
#	?a5		RecievedIpduLength
#	?a6		$$41
#	?a7		$$40
#	?a8		$$39
#	?a9		SignalPointer
#	?a10		Index
#	?a11		SignalIndex
#	?a12		Ipdu
#	?a13		NumberOfNotReceivedSignals
#	?a14		UpdatedIPduLength
# FUNC(void,COM_CODE) Com_MainFunctionRx(void)
	.align		2
	.section	.text_vle
        .d2line         147,21
#$$ld
.L268:

#$$bf	Com_MainFunctionRx,interprocedural,rasave,nostackparams
	.globl		Com_MainFunctionRx
	.d2_cfa_start __cie
Com_MainFunctionRx:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(uint16,AUTOMATIC) signalIndex;
#     /* variable to cache Ipdu information */
# 
# 
#     if (Com_Status == COM_UNINIT)
	.d2line		153
	lis		r3,Com_Status@ha
	lwz		r0,Com_Status@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L168	# eq
.L171:
#     {
# #if COM_DEV_ERROR_DETECT == STD_ON
#         (void)Det_ReportError(COM_MODULE_ID,
#                 COM_INSTANCE_ID,
#                 COMServiceId_MainFunctionRx,
#                 COM_E_UNINIT);
# #endif /* COM_DEV_ERROR_DETECT */
#     }
#     else
# 
#     {
#         /* Handle already received DEFERRED RxIPdu-s */
#         while(Com_DeferredReceivedIPduReader != Com_DeferredReceivedIPduWriter)
	.d2line		166
	lis		r3,Com_DeferredReceivedIPduReader@ha
	lhz		r0,Com_DeferredReceivedIPduReader@l(r3)
	lis		r3,Com_DeferredReceivedIPduWriter@ha
	lhz		r3,Com_DeferredReceivedIPduWriter@l(r3)
	se_cmp		r0,r3
	bc		1,2,.L168	# eq
	.section	.text_vle
.L273:
#         {
# 
#             P2CONST(Com_RxIpdu, AUTOMATIC, COM_VAR_PB) Ipdu = &(Com_Main->RxIpdus_Ref[Com_DeferredReceivedIPduFifo[Com_DeferredReceivedIPduReader]]);
	.d2line		169
	lis		r3,Com_Main@ha
	lwz		r4,Com_Main@l(r3)
	lwz		r29,16(r4)
	lis		r4,Com_DeferredReceivedIPduFifo@ha
	lwz		r4,Com_DeferredReceivedIPduFifo@l(r4)
	lis		r5,Com_DeferredReceivedIPduReader@ha
	lhz		r0,Com_DeferredReceivedIPduReader@l(r5)
	rlwinm		r0,r0,1,15,30
	lhzx		r0,r4,r0
	e_mulli		r0,r0,40
	se_add		r0,r29
.Llo37:
	mr		r29,r0		# Ipdu=r29 Ipdu=r0
# 
#             /* Only process the IPdu if IPduGroup is still enabled */
#             /* REQ: [COM684] If an I-PDU is stopped as result of a call to Com_IpduGroupControl,
#              * the AUTOSAR COM module shall disable its reception processing.*/
#             if((Com_Main->RxIpdusFlags[Ipdu->RxIPduId] & COM_RXIPDU_ACTIVE) != 0)
	.d2line		174
	lwz		r3,Com_Main@l(r3)
	lwz		r3,68(r3)
	lhz		r0,0(r29)		# Ipdu=r29
.Llo38:
	lbzx		r0,r3,r0
	se_btsti		r0,24
	bc		1,2,.L173	# eq
	.section	.text_vle
.L279:
#             {
#                 VAR(PduLengthType, AUTOMATIC) UpdatedLength;
#                 SchM_Enter_Com_COM_MAIN_DEFERRED_BACKGROUND();
	.d2line		177
.Llo39:
	bl		SchM_Enter_Com_COM_MAIN_DEFERRED_BACKGROUND
# 
#                 /* process signals stored in back ground buffer */
#                 UpdatedLength = Com_ProcessSignals(Ipdu->RxIPduId,
	.d2line		180
	lis		r3,Com_Main@ha
	lwz		r3,Com_Main@l(r3)
	lwz		r4,56(r3)
	lhz		r3,0(r29)		# Ipdu=r29
	rlwinm		r0,r3,1,15,30
	lhzx		r5,r4,r0
	lwz		r4,16(r29)		# Ipdu=r29
	bl		Com_ProcessSignals
.Llo40:
	mr		r31,r3		# UpdatedLength=r31 UpdatedLength=r3
#                                    Ipdu->BackGroundBuffer_Ref,
#                                    Com_Main->DeferredLength_Ref[Ipdu->RxIPduId]);
# 
#                 SchM_Enter_Com_COM_MAIN_DEFERRED_FOREGROUND();
	.d2line		184
.Llo41:
	bl		SchM_Enter_Com_COM_MAIN_DEFERRED_FOREGROUND
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#                 /* Check if the IPDU contains dynamic signal.*/
#                 if(Ipdu->DynIndex != COM_INVALID_DYN_INDEX)
#                 {
#                     /* Save new value for dynamic signal length */
#                     /* The value should be Total length - Byte position of dynamic signal*/
#                     Com_Main->DynLength_Ref[Ipdu->DynIndex] = DYN_SIGNAL_LENGTH(Com_Main->DeferredLength_Ref[Ipdu->RxIPduId], Ipdu);
#                 }
# #endif /* COM_ENABLE_DYNAMIC_SIGNALS */
# 
#                 /* Copy updated length of the IPdu to ForegroundBuffer */
#                 COM_COPY_INTERNAL(Ipdu->ForeGroundBuffer_Ref,Ipdu->BackGroundBuffer_Ref,(uint32)UpdatedLength);
	.d2line		196
.Llo42:
	lwz		r3,12(r29)		# Ipdu=r29
	lwz		r4,16(r29)		# Ipdu=r29
	rlwinm		r5,r31,0,16,31		# UpdatedLength=r31
	bl		vstar_copy
# 
#                 SchM_Exit_Com_COM_MAIN_DEFERRED_FOREGROUND();
	.d2line		198
	bl		SchM_Exit_Com_COM_MAIN_DEFERRED_FOREGROUND
#                 SchM_Exit_Com_COM_MAIN_DEFERRED_BACKGROUND();
	.d2line		199
	bl		SchM_Exit_Com_COM_MAIN_DEFERRED_BACKGROUND
	.section	.text_vle
.L285:
#                 {
#                     CONSTP2VAR(Com_DeferredNotificationCall,AUTOMATIC, AUTOMATIC) Com_DeferredNotifyPtr = Ipdu->Com_DeferredNotificationCall_Ref;
	.d2line		201
.Llo43:
	lwz		r30,36(r29)		# Ipdu=r29
.Llo44:
	mr		r30,r30		# Com_DeferredNotifyPtr=r30 Com_DeferredNotifyPtr=r30
#                     for(signalIndex = 0;signalIndex<Ipdu->NumberOfSignals;signalIndex++)
	.d2line		202
	diab.li		r31,0		# signalIndex=r31
.L174:
.Llo35:
	rlwinm		r3,r31,0,16,31		# signalIndex=r31
	lhz		r0,30(r29)		# Ipdu=r29
	se_cmp		r3,r0
	bc		0,0,.L173	# ge
#                     {
#                         if(Com_DeferredNotifyPtr[signalIndex].Com_DeferredNotificationIndexType == COM_DEFERRED_CALLBACK_NORMAL_NOTIF)
	.d2line		204
	rlwinm		r3,r31,2,14,29		# signalIndex=r31
	se_add		r3,r30		# Com_DeferredNotifyPtr=r30
	lbz		r0,2(r3)
	se_cmpi		r0,1
	bc		0,2,.L177	# ne
#                         {
#                             Com_NotifyFunction_Array[Com_DeferredNotifyPtr[signalIndex].Com_DeferredNotificationIndex]();
	.d2line		206
	lis		r3,Com_NotifyFunction_Array@ha
	e_add16i		r3,r3,Com_NotifyFunction_Array@l
	rlwinm		r4,r31,2,14,29		# signalIndex=r31
	lhzux		r0,r4,r30
	rlwinm		r0,r0,2,14,29
	lwzx		r0,r3,r0
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
#                             Com_DeferredNotifyPtr[signalIndex].Com_DeferredNotificationIndexType = COM_DEFERRED_CALLBACK_NONE;
	.d2line		207
	diab.li		r0,0
	rlwinm		r3,r31,2,14,29		# signalIndex=r31
	se_add		r3,r30		# Com_DeferredNotifyPtr=r30
	stb		r0,2(r3)
.L177:
#                         }
# #if (COM_ENABLE_DATA_INVALIDATION == STD_ON)
#                         else
#                         {
#                             if(Com_DeferredNotifyPtr[signalIndex].Com_DeferredNotificationIndexType == COM_DEFERRED_CALLBACK_ERROR_NOTIF)
#                             {
#                                 Com_ErrorFunction_Array[Com_DeferredNotifyPtr[signalIndex].Com_DeferredNotificationIndex]();
#                                 Com_DeferredNotifyPtr[signalIndex].Com_DeferredNotificationIndexType = COM_DEFERRED_CALLBACK_NONE;
#                             }
#                         }
# #endif
#                     }
	.d2line		219
	diab.addi		r3,r31,1		# signalIndex=r31
	se_addi		r31,1		# signalIndex=r31 signalIndex=r31
	b		.L174
	.section	.text_vle
.L286:
	.section	.text_vle
.L280:
.L173:
#                 }
#             }/* RxIPdu active */
#             /* Clear received status (even for unprocessed RxIPdus when IPduGroup is disabled)*/
#             Ipdu->RxIpduFlags_Ref->DeferredIPduReceived = FALSE;
	.d2line		223
	diab.li		r0,0
	lwz		r3,20(r29)		# Ipdu=r29
	stb		r0,0(r3)
# 
#             /*increment loop counter considering wrap-around */
#             Com_DeferredReceivedIPduReader++;
	.d2line		226
	lis		r3,Com_DeferredReceivedIPduReader@ha
	lhz		r4,Com_DeferredReceivedIPduReader@l(r3)
	diab.addi		r0,r4,1
	e_add16i		r4,r3,Com_DeferredReceivedIPduReader@l
	sth		r0,0(r4)
#             if(Com_DeferredReceivedIPduReader == (PduIdType)(Com_Main->DeferredReceivedIPduArrayLength + 1U))
	.d2line		227
	lhz		r0,Com_DeferredReceivedIPduReader@l(r3)
	lis		r3,Com_Main@ha
	lwz		r3,Com_Main@l(r3)
	lhz		r3,64(r3)
	se_addi		r3,1
	rlwinm		r3,r3,0,16,31
	se_cmp		r0,r3
	bc		0,2,.L171	# ne
#             {
#                 Com_DeferredReceivedIPduReader = 0;
	.d2line		229
.Llo36:
	diab.li		r0,0
	lis		r3,Com_DeferredReceivedIPduReader@ha
	e_add16i		r3,r3,Com_DeferredReceivedIPduReader@l
	sth		r0,0(r3)
	.section	.text_vle
.L274:
	b		.L171
.L168:
#             }
#         }/* for: deferredReceivedIPdu */
#         /* PRQA S 2461-- */
#         /* PRQA S 2472-- */
# 
#         /* Testing callout after RxDm processing */
#         COM_AFTERRXDM_NOTIFICATION();
# 
# #if COM_ENABLE_RX_DM == STD_ON
#         {
#             VAR(PduIdType, AUTOMATIC) RxIPduWithDMIndex;
#             for(RxIPduWithDMIndex = 0;RxIPduWithDMIndex<Com_Main->RxIPduRxDMArralLength;RxIPduWithDMIndex++)
#             {
#                 CONST(uint16, AUTOMATIC) RxIPduIndex = Com_Main->RxIpdusRxDM_Ref[RxIPduWithDMIndex]->RxIPduId;
#                 /* REQ: [COM685]*/
#                 /* do not process deadline monitoring for stopped Ipdu */
#                 if((Com_Main->RxIpdusFlags[RxIPduIndex] & COM_RXIPDU_ACTIVE) != 0)
#                 {
#                     /* Process this IPdu RxDm counters, if any */
#                     Com_ProcessRxDmCounters(Com_Main->RxIpdusRxDM_Ref[RxIPduWithDMIndex]);
#                 }
#             }
#         }
# #endif /* COM_ENABLE_RX_DM */
#     }
# }
	.d2line		255
	.d2epilogue_begin
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
.L269:
	.type		Com_MainFunctionRx,@function
	.size		Com_MainFunctionRx,.-Com_MainFunctionRx
# Number of nodes = 170

# Allocations for Com_MainFunctionRx
#	?a4		signalIndex
#	?a5		Ipdu
#	?a6		UpdatedLength
#	?a7		Com_DeferredNotifyPtr
# FUNC(void,COM_CODE) Com_RxIndication(
	.align		2
	.section	.text_vle
        .d2line         270,21
#$$ld
.L297:

#$$bf	Com_RxIndication,interprocedural,rasave,nostackparams
	.globl		Com_RxIndication
	.d2_cfa_start __cie
Com_RxIndication:
.Llo45:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# RxPduId=r31 RxPduId=r3
.Llo46:
	mr		r30,r4		# PduInfoPtr=r30 PduInfoPtr=r4
	.d2prologue_end
#         VAR(PduIdType, AUTOMATIC) RxPduId,
#         P2CONST(PduInfoType, AUTOMATIC, COM_APPL_DATA) PduInfoPtr)
# {
#     /* variable to store length needed to be copied to background buffer */
#     VAR(PduLengthType, AUTOMATIC) CopyLength;
#     P2CONST(Com_RxIpdu,AUTOMATIC,COM_CONST_PB) Ipdu;
#     VAR(uint16,AUTOMATIC) signalIndex;
# 
# #if (COM_RXIPDU_DISCARD_ENABLED == STD_ON)
#     VAR(boolean, AUTOMATIC) IPduDiscarded = FALSE;
# #endif /* COM_ENABLE_IPDU_CALLOUT */
# 
# #if COM_DEV_ERROR_DETECT == STD_ON
#     if (Com_Status == COM_UNINIT)
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                 COM_INSTANCE_ID,
#                 COMServiceId_RxIndication,
#                 COM_E_UNINIT);
#     }
#     /* check if PduInfo pointer contains NULL */
#     else if((PduInfoPtr == NULL_PTR)||(PduInfoPtr->SduDataPtr == NULL_PTR))
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                 COM_INSTANCE_ID,
#                 COMServiceId_RxIndication,
#                 COM_E_PARAM_POINTER);
#     }
#     /* check if IPDU Id is in configured range and if Id is for a valid Rx IPDU
#      check Ipdu length
#      check if IPDU isn't TP*/
#     else if((RxPduId >= Com_Main->RxIpduIdArrayLength)
#     ||((Com_Main->RxIpdus_Ref[RxPduId].IPduFlags & COM_RXIPDU_ISGAP) == 0)
# #if COM_ENABLE_LARGE_DATA_TYPES == STD_ON
#     ||((uint8)(Com_Main->RxIpdus_Ref[RxPduId].IPduFlags & COM_RXIPDU_TP) == COM_RXIPDU_TP)
# #endif /* COM_ENABLE_LARGE_DATA_TYPES */
#     )
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                 COM_INSTANCE_ID,
#                 COMServiceId_RxIndication,
#                 COM_E_PARAM);
#     }
#     else
# #endif /* COM_DEV_ERROR_DETECT */
#     {
#         /* cache Ipdu information  */
#         Ipdu = &(Com_Main->RxIpdus_Ref[RxPduId]);
	.d2line		318
.Llo47:
	lis		r3,Com_Main@ha
	lwz		r4,Com_Main@l(r3)
.Llo55:
	lwz		r28,16(r4)
	rlwinm		r0,r31,0,16,31		# RxPduId=r31
	e_mulli		r4,r0,40
	se_add		r4,r28
.Llo61:
	mr		r28,r4		# Ipdu=r28 Ipdu=r4
# 
#         /* Process the received IPDU only if it is started */
#         /* [COM684] */
#         if((Com_Main->RxIpdusFlags[RxPduId] & COM_RXIPDU_ACTIVE) != 0)
	.d2line		322
	lwz		r3,Com_Main@l(r3)
	lwz		r3,68(r3)
	lbzx		r0,r3,r0
	se_btsti		r0,24
	bc		1,2,.L185	# eq
#         {
# #if COM_ENABLE_IPDU_CALLOUT == STD_ON
#             /* check IPDU call-out return value, if FALSE, stop processing */
#             /*  [SWS_Com_00816]  */
#             if(Com_RxIpduCallOut_Array[Ipdu->RxIpduCalloutIndex] != NULL_PTR)
#             {
#                 if(COM_CALLOUT(Com_RxIpduCallOut_Array, Ipdu->RxIpduCalloutIndex, RxPduId, PduInfoPtr) == FALSE)
#                 {
#                     IPduDiscarded = TRUE;
#                 }
#             }
# #endif /* COM_ENABLE_IPDU_CALLOUT */
# #if COM_ENABLE_IPDU_COUNTER == STD_ON
#             /* Discard IPdu if Data Sequence Control is incorrect */
#             if((IPduDiscarded == FALSE) && ((Ipdu->IPduFlags & (uint8)COM_IPDU_DSCCOUNTER_TRUE) != 0))
#             {
#                 IPduDiscarded =  Com_ProcessDSCRx(Ipdu->RxIPduId, PduInfoPtr);
#             }
# #endif
# #if COM_ENABLE_RX_DM == STD_ON
#             /* If IPdu has any signals with rx deadline monitoring */
#             if(Ipdu->RxDmListLength != 0)
#             {
#                 /* Initialize reception deadline monitoring with offset for IPdu level */
#                 CONST(PduIdType, AUTOMATIC) RxDmIndex = (PduIdType)((PduIdType)(Ipdu->RxDmList_Index + (PduIdType)Ipdu->RxDmListLength) - 1U);
#                 if(Com_Main->RxTimeOuts_Ref[RxDmIndex].NumberOfIPduLevelRxDmSignals != 0)
#                 {
#                     Com_Main->Com_RxDmTimeoutRestartRequest_Ref[RxDmIndex] = TRUE;
#                 }
#             }
# #endif
# #if (COM_RXIPDU_DISCARD_ENABLED == STD_ON)
#             if(IPduDiscarded == FALSE)
#             {
# #endif
# 
#                 /* Initialize length to received IPDU length*/
#                 CopyLength = PduInfoPtr->SduLength;
	.d2line		360
.Llo56:
	lhz		r29,4(r30)		# CopyLength=r29 PduInfoPtr=r30
.Llo59:
	mr		r29,r29		# CopyLength=r29 CopyLength=r29
#                 /*  In case the received data length is greater than IPDU length ,
#                  COM module shall not copy or handle additional received data */
#                 if(CopyLength > Ipdu->IpduLength)
	.d2line		363
	rlwinm		r5,r29,0,16,31		# CopyLength=r29
	lhz		r0,32(r28)		# Ipdu=r28
	se_cmp		r5,r0
	bc		0,1,.L187	# le
#                 {
#                     CopyLength = Ipdu->IpduLength;
	.d2line		365
	lhz		r29,32(r28)		# CopyLength=r29 Ipdu=r28
	mr		r29,r29		# CopyLength=r29 CopyLength=r29
.L187:
#                 }
# 
#                 /* IPdu processing is IMMEDIATE */
#                 if((Ipdu->IPduFlags & COM_RXIPDU_IMMEDIATE) != 0)
	.d2line		369
	lbz		r0,34(r28)		# Ipdu=r28
	se_btsti		r0,31
	bc		1,2,.L188	# eq
	.section	.text_vle
.L312:
#                 {
#                     VAR(PduLengthType, AUTOMATIC) UpdatedLength;
#                     SchM_Enter_Com_COM_RXIND_IMMEDIATE_BACKGROUND();
	.d2line		372
	bl		SchM_Enter_Com_COM_RXIND_IMMEDIATE_BACKGROUND
# #if ((COM_ENABLE_FILTERS == STD_OFF) && (COM_ENABLE_DATA_INVALIDATION == STD_OFF))
#                     /* TODO: implement check - if non of signal of ipdu using invalidation and filtering than byte copy can be done here */
#                     /* Copy IPDU contents to background buffer */
#                     COM_COPY_EXTERNAL(Ipdu->BackGroundBuffer_Ref,PduInfoPtr->SduDataPtr,(uint32)CopyLength);
	.d2line		376
	lwz		r3,16(r28)		# UpdatedLength=r3 Ipdu=r28
	lwz		r4,0(r30)		# PduInfoPtr=r30
	rlwinm		r5,r29,0,16,31		# CopyLength=r29
	bl		vstar_copy
# #endif
#                     /* process signals based on local stack values */
#                     UpdatedLength = Com_ProcessSignals(RxPduId, PduInfoPtr->SduDataPtr, PduInfoPtr->SduLength);
	.d2line		379
	lhz		r5,4(r30)		# PduInfoPtr=r30
	lwz		r4,0(r30)		# PduInfoPtr=r30
	mr		r3,r31		# RxPduId=r3 RxPduId=r31
	bl		Com_ProcessSignals
.Llo62:
	mr		r0,r3		# UpdatedLength=r0 UpdatedLength=r3
# 
#                     /* Store length of updated BackgroundBuffer to be able to copy it to ForegroundBuffer later
#                      * by the Com_ReceivSignal, Com_ReceiveSignalGroup API-s */
#                     Com_Main->DeferredLength_Ref[RxPduId] = UpdatedLength;
	.d2line		383
	lis		r4,Com_Main@ha
	lwz		r4,Com_Main@l(r4)
	lwz		r4,56(r4)
	rlwinm		r31,r31,1,15,30		# RxPduId=r31 RxPduId=r31
.Llo48:
	sthx		r3,r4,r31		# UpdatedLength=r3
# 
#                     /* Mark BackgroundBuffer as updated */
#                     *Ipdu->IsBackGroundBufferUpdated_Ref = TRUE;
	.d2line		386
	diab.li		r0,1		# RxPduId=r0
.Llo49:
	lwz		r3,24(r28)		# UpdatedLength=r3 Ipdu=r28
	stb		r0,0(r3)		# UpdatedLength=r3 RxPduId=r0
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#                     /* Check if the IPDU contains dynamic signal.*/
#                     if(Ipdu->DynIndex != COM_INVALID_DYN_INDEX)
#                     {
#                         /* Save new value for dynamic signal length */
#                         /* The value should be Total length - Byte position of dynamic signal*/
#                         Com_Main->DynLength_Ref[Ipdu->DynIndex] = DYN_SIGNAL_LENGTH(PduInfoPtr->SduLength, Ipdu);
#                     }
# #endif /* COM_ENABLE_DYNAMIC_SIGNALS */
#                     SchM_Exit_Com_COM_RXIND_IMMEDIATE_BACKGROUND();
	.d2line		396
	bl		SchM_Exit_Com_COM_RXIND_IMMEDIATE_BACKGROUND
	.section	.text_vle
.L318:
# 
#                     {
#                         CONSTP2VAR(Com_DeferredNotificationCall,AUTOMATIC, AUTOMATIC) Com_DeferredNotifyPtr = Ipdu->Com_DeferredNotificationCall_Ref;
	.d2line		399
.Llo50:
	lwz		r30,36(r28)		# PduInfoPtr=r30 Ipdu=r28
.Llo71:
	mr		r30,r30		# Com_DeferredNotifyPtr=r30 Com_DeferredNotifyPtr=r30
#                         for(signalIndex = 0;signalIndex<Ipdu->NumberOfSignals;signalIndex++)
	.d2line		400
.Llo57:
	diab.li		r31,0		# signalIndex=r31
.L189:
.Llo51:
	rlwinm		r3,r31,0,16,31		# UpdatedLength=r3 signalIndex=r31
.Llo63:
	lhz		r0,30(r28)		# RxPduId=r0 Ipdu=r28
	se_cmp		r3,r0		# UpdatedLength=r3 RxPduId=r0
	bc		0,0,.L185	# ge
#                         {
#                             if(Com_DeferredNotifyPtr[signalIndex].Com_DeferredNotificationIndexType == COM_DEFERRED_CALLBACK_NORMAL_NOTIF)
	.d2line		402
.Llo64:
	rlwinm		r3,r31,2,14,29		# UpdatedLength=r3 signalIndex=r31
.Llo65:
	se_add		r3,r30		# UpdatedLength=r3 UpdatedLength=r3 Com_DeferredNotifyPtr=r30
	lbz		r0,2(r3)		# RxPduId=r0 UpdatedLength=r3
	se_cmpi		r0,1		# RxPduId=r0
	bc		0,2,.L192	# ne
#                             {
#                                 Com_NotifyFunction_Array[Com_DeferredNotifyPtr[signalIndex].Com_DeferredNotificationIndex]();
	.d2line		404
.Llo66:
	lis		r3,Com_NotifyFunction_Array@ha		# UpdatedLength=r3
.Llo67:
	e_add16i		r3,r3,Com_NotifyFunction_Array@l		# UpdatedLength=r3 UpdatedLength=r3
	rlwinm		r4,r31,2,14,29		# signalIndex=r31
	lhzux		r0,r4,r30		# RxPduId=r0
	rlwinm		r0,r0,2,14,29		# RxPduId=r0 RxPduId=r0
	lwzx		r0,r3,r0		# RxPduId=r0 UpdatedLength=r3
	mtspr		ctr,r0		# RxPduId=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
#                                 Com_DeferredNotifyPtr[signalIndex].Com_DeferredNotificationIndexType = COM_DEFERRED_CALLBACK_NONE;
	.d2line		405
.Llo68:
	diab.li		r0,0		# RxPduId=r0
	rlwinm		r3,r31,2,14,29		# UpdatedLength=r3 signalIndex=r31
.Llo69:
	se_add		r3,r30		# UpdatedLength=r3 UpdatedLength=r3 Com_DeferredNotifyPtr=r30
	stb		r0,2(r3)		# UpdatedLength=r3 RxPduId=r0
.L192:
#                             }
# #if (COM_ENABLE_DATA_INVALIDATION == STD_ON)
#                             else
#                             {
#                                 if(Com_DeferredNotifyPtr[signalIndex].Com_DeferredNotificationIndexType == COM_DEFERRED_CALLBACK_ERROR_NOTIF)
#                                 {
#                                     Com_ErrorFunction_Array[Com_DeferredNotifyPtr[signalIndex].Com_DeferredNotificationIndex]();
#                                     Com_DeferredNotifyPtr[signalIndex].Com_DeferredNotificationIndexType = COM_DEFERRED_CALLBACK_NONE;
#                                 }
#                             }
# #endif
#                         }
	.d2line		417
.Llo70:
	diab.addi		r3,r31,1		# UpdatedLength=r3 signalIndex=r31
	se_addi		r31,1		# signalIndex=r31 signalIndex=r31
	b		.L189
	.section	.text_vle
.L319:
	.section	.text_vle
.L313:
.L188:
#                     }
#                 }
#                 /* IPdu processing is DEFERRED */
#                 else
#                 {
#                     SchM_Enter_Com_COM_RXIND_DEFERRED_BACKGROUND();
	.d2line		423
.Llo60:
	bl		SchM_Enter_Com_COM_RXIND_DEFERRED_BACKGROUND
# 
#                     /* Copy IPDU contents to background buffer */
#                     COM_COPY_EXTERNAL(Ipdu->BackGroundBuffer_Ref,PduInfoPtr->SduDataPtr,(uint32)CopyLength);
	.d2line		426
	lwz		r3,16(r28)		# Ipdu=r28
	lwz		r4,0(r30)		# PduInfoPtr=r30
	rlwinm		r5,r29,0,16,31		# CopyLength=r29
	bl		vstar_copy
# 
#                     /* Store length for deferred processing */
#                     Com_Main->DeferredLength_Ref[RxPduId] = CopyLength;
	.d2line		429
	lis		r3,Com_Main@ha
	lwz		r3,Com_Main@l(r3)
	lwz		r3,56(r3)
	rlwinm		r0,r31,1,15,30		# RxPduId=r31
	sthx		r29,r3,r0		# CopyLength=r29
# 
#                     /* Put RxIPduId into a receive FIFO if already not queued */
#                     if(Ipdu->RxIpduFlags_Ref->DeferredIPduReceived == FALSE)
	.d2line		432
	lwz		r3,20(r28)		# Ipdu=r28
	lbz		r0,0(r3)
	se_cmpi		r0,0
	bc		0,2,.L194	# ne
#                     {
#                         Com_DeferredReceivedIPduFifo[Com_DeferredReceivedIPduWriter] = RxPduId;
	.d2line		434
.Llo58:
	lis		r3,Com_DeferredReceivedIPduFifo@ha
	lwz		r4,Com_DeferredReceivedIPduFifo@l(r3)
	lis		r3,Com_DeferredReceivedIPduWriter@ha
	lhz		r0,Com_DeferredReceivedIPduWriter@l(r3)
	rlwinm		r0,r0,1,15,30
	sthx		r31,r4,r0		# RxPduId=r31
# 
#                         Com_DeferredReceivedIPduWriter++;
	.d2line		436
	lhz		r4,Com_DeferredReceivedIPduWriter@l(r3)
	diab.addi		r0,r4,1
	e_add16i		r4,r3,Com_DeferredReceivedIPduWriter@l
	sth		r0,0(r4)
#                         if(Com_DeferredReceivedIPduWriter == (PduIdType)(Com_Main->DeferredReceivedIPduArrayLength+1))
	.d2line		437
	lhz		r0,Com_DeferredReceivedIPduWriter@l(r3)
	lis		r3,Com_Main@ha
	lwz		r3,Com_Main@l(r3)
	lhz		r3,64(r3)
	se_addi		r3,1
	rlwinm		r3,r3,0,16,31
	se_cmp		r0,r3
	bc		0,2,.L195	# ne
#                         {
#                             Com_DeferredReceivedIPduWriter = 0;
	.d2line		439
.Llo52:
	diab.li		r0,0
	lis		r3,Com_DeferredReceivedIPduWriter@ha
	e_add16i		r3,r3,Com_DeferredReceivedIPduWriter@l
	sth		r0,0(r3)
.L195:
#                         }
#                         Ipdu->RxIpduFlags_Ref->DeferredIPduReceived = TRUE;
	.d2line		441
	diab.li		r0,1
	lwz		r3,20(r28)		# Ipdu=r28
	stb		r0,0(r3)
.L194:
#                     }
# 
#                     SchM_Exit_Com_COM_RXIND_DEFERRED_BACKGROUND();
	.d2line		444
.Llo53:
	bl		SchM_Exit_Com_COM_RXIND_DEFERRED_BACKGROUND
.L185:
#                 }
# #if (COM_RXIPDU_DISCARD_ENABLED == STD_ON)
#             }
# #endif
#         }
#     }
# }
	.d2line		451
	.d2epilogue_begin
.Llo54:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# RxPduId=r0
	mtspr		lr,r0		# RxPduId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L298:
	.type		Com_RxIndication,@function
	.size		Com_RxIndication,.-Com_RxIndication
# Number of nodes = 232

# Allocations for Com_RxIndication
#	?a4		RxPduId
#	?a5		PduInfoPtr
#	?a6		CopyLength
#	?a7		Ipdu
#	?a8		signalIndex
#	?a9		UpdatedLength
#	?a10		Com_DeferredNotifyPtr

# Allocations for module
	.section	.text_vle
	.0byte		.L337
	.section	.text_vle
#$$ld
.L5:
.L405:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L401:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\ComXf_CommonTypes.h"
.L345:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\Com_Types.h"
.L325:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\Com_i.h"
.L229:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_RxHandler.c"
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
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	33
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_RxHandler.c"
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
.L233:
	.sleb128	2
	.4byte		.L226-.L2
	.byte		"Com_ProcessSignals"
	.byte		0
	.4byte		.L229
	.uleb128	688
	.uleb128	37
	.4byte		.L230
	.byte		0x1
	.4byte		.L227
	.4byte		.L228
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L229
	.uleb128	688
	.uleb128	37
	.byte		"IpduIndex"
	.byte		0
	.4byte		.L234
	.4byte		.L236
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L229
	.uleb128	688
	.uleb128	37
	.byte		"SourceBuffer"
	.byte		0
	.4byte		.L237
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	3
	.4byte		.L229
	.uleb128	688
	.uleb128	37
	.byte		"RecievedIpduLength"
	.byte		0
	.4byte		.L242
	.4byte		.L243
	.section	.debug_info,,n
.L244:
	.sleb128	5
	.4byte		.L229
	.uleb128	693
	.uleb128	55
	.byte		"SignalPointer"
	.byte		0
	.4byte		.L245
	.4byte		.L249
.L250:
	.sleb128	5
	.4byte		.L229
	.uleb128	694
	.uleb128	29
	.byte		"Index"
	.byte		0
	.4byte		.L231
	.4byte		.L251
.L252:
	.sleb128	5
	.4byte		.L229
	.uleb128	695
	.uleb128	39
	.byte		"SignalIndex"
	.byte		0
	.4byte		.L253
	.4byte		.L254
.L255:
	.sleb128	5
	.4byte		.L229
	.uleb128	703
	.uleb128	53
	.byte		"Ipdu"
	.byte		0
	.4byte		.L256
	.4byte		.L261
.L262:
	.sleb128	5
	.4byte		.L229
	.uleb128	704
	.uleb128	31
	.byte		"NumberOfNotReceivedSignals"
	.byte		0
	.4byte		.L235
	.4byte		.L263
.L264:
	.sleb128	5
	.4byte		.L229
	.uleb128	705
	.uleb128	35
	.byte		"UpdatedIPduLength"
	.byte		0
	.4byte		.L230
	.4byte		.L265
	.section	.debug_info,,n
	.sleb128	0
.L226:
	.section	.debug_info,,n
.L270:
	.sleb128	6
	.4byte		.L267-.L2
	.byte		"Com_MainFunctionRx"
	.byte		0
	.4byte		.L229
	.uleb128	147
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L268
	.4byte		.L269
.L271:
	.sleb128	5
	.4byte		.L229
	.uleb128	149
	.uleb128	27
	.byte		"signalIndex"
	.byte		0
	.4byte		.L231
	.4byte		.L272
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L276
	.4byte		.L273
	.4byte		.L274
.L277:
	.sleb128	5
	.4byte		.L229
	.uleb128	169
	.uleb128	56
	.byte		"Ipdu"
	.byte		0
	.4byte		.L257
	.4byte		.L278
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L282
	.4byte		.L279
	.4byte		.L280
.L283:
	.sleb128	5
	.4byte		.L229
	.uleb128	176
	.uleb128	47
	.byte		"UpdatedLength"
	.byte		0
	.4byte		.L230
	.4byte		.L284
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L288
	.4byte		.L285
	.4byte		.L286
.L289:
	.sleb128	5
	.4byte		.L229
	.uleb128	201
	.uleb128	83
	.byte		"Com_DeferredNotifyPtr"
	.byte		0
	.4byte		.L290
	.4byte		.L294
	.section	.debug_info,,n
	.sleb128	0
.L288:
	.section	.debug_info,,n
	.sleb128	0
.L282:
	.section	.debug_info,,n
	.sleb128	0
.L276:
	.section	.debug_info,,n
	.sleb128	0
.L267:
	.section	.debug_info,,n
.L299:
	.sleb128	6
	.4byte		.L296-.L2
	.byte		"Com_RxIndication"
	.byte		0
	.4byte		.L229
	.uleb128	270
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L297
	.4byte		.L298
	.sleb128	3
	.4byte		.L229
	.uleb128	270
	.uleb128	21
	.byte		"RxPduId"
	.byte		0
	.4byte		.L235
	.4byte		.L300
	.sleb128	3
	.4byte		.L229
	.uleb128	270
	.uleb128	21
	.byte		"PduInfoPtr"
	.byte		0
	.4byte		.L301
	.4byte		.L305
.L306:
	.sleb128	5
	.4byte		.L229
	.uleb128	275
	.uleb128	35
	.byte		"CopyLength"
	.byte		0
	.4byte		.L230
	.4byte		.L307
.L308:
	.sleb128	5
	.4byte		.L229
	.uleb128	276
	.uleb128	48
	.byte		"Ipdu"
	.byte		0
	.4byte		.L257
	.4byte		.L309
.L310:
	.sleb128	5
	.4byte		.L229
	.uleb128	277
	.uleb128	27
	.byte		"signalIndex"
	.byte		0
	.4byte		.L231
	.4byte		.L311
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L315
	.4byte		.L312
	.4byte		.L313
.L316:
	.sleb128	5
	.4byte		.L229
	.uleb128	371
	.uleb128	51
	.byte		"UpdatedLength"
	.byte		0
	.4byte		.L230
	.4byte		.L317
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L321
	.4byte		.L318
	.4byte		.L319
.L322:
	.sleb128	5
	.4byte		.L229
	.uleb128	399
	.uleb128	87
	.byte		"Com_DeferredNotifyPtr"
	.byte		0
	.4byte		.L290
	.4byte		.L323
	.section	.debug_info,,n
	.sleb128	0
.L321:
	.section	.debug_info,,n
	.sleb128	0
.L315:
	.section	.debug_info,,n
	.sleb128	0
.L296:
	.section	.debug_info,,n
.L324:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L325
	.uleb128	511
	.uleb128	36
	.byte		"Com_Status"
	.byte		0
	.4byte		.L326
	.0byte		.L324
.L328:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L325
	.uleb128	513
	.uleb128	55
	.byte		"Com_Main"
	.byte		0
	.4byte		.L329
.L333:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L325
	.uleb128	526
	.uleb128	32
	.byte		"Com_DeferredReceivedIPduWriter"
	.byte		0
	.4byte		.L235
.L334:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L325
	.uleb128	527
	.uleb128	32
	.byte		"Com_DeferredReceivedIPduReader"
	.byte		0
	.4byte		.L235
.L335:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L325
	.uleb128	528
	.uleb128	45
	.byte		"Com_DeferredReceivedIPduFifo"
	.byte		0
	.4byte		.L336
.L337:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L325
	.uleb128	548
	.uleb128	48
	.byte		"Com_NotifyFunction_Array"
	.byte		0
	.4byte		.L338
	.section	.debug_info,,n
	.section	.debug_info,,n
.L332:
	.sleb128	9
	.4byte		.L345
	.uleb128	82
	.uleb128	1
	.4byte		.L346-.L2
	.uleb128	100
	.section	.debug_info,,n
.L120:
	.sleb128	10
	.byte		"ConfigurationId"
	.byte		0
	.4byte		.L347
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L121:
	.sleb128	10
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L349
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L122:
	.sleb128	10
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L349
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L123:
	.sleb128	10
	.byte		"IpduGroups_Ref"
	.byte		0
	.4byte		.L351
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L124:
	.sleb128	10
	.byte		"RxIpdus_Ref"
	.byte		0
	.4byte		.L256
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L125:
	.sleb128	10
	.byte		"RxIpdusDeferred_Ref"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L126:
	.sleb128	10
	.byte		"RxIpdusImmediate_Ref"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L127:
	.sleb128	10
	.byte		"RxIpdusRxDM_Ref"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L128:
	.sleb128	10
	.byte		"TxIpdus_Ref"
	.byte		0
	.4byte		.L358
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L129:
	.sleb128	10
	.byte		"Signals_Ref"
	.byte		0
	.4byte		.L363
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L130:
	.sleb128	10
	.byte		"IpduToSignal_Ref"
	.byte		0
	.4byte		.L364
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L131:
	.sleb128	10
	.byte		"GroupSignalToIPdu_Ref"
	.byte		0
	.4byte		.L364
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L132:
	.sleb128	10
	.byte		"TxModes_Ref"
	.byte		0
	.4byte		.L367
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L133:
	.sleb128	10
	.byte		"CycleTimers_Ref"
	.byte		0
	.4byte		.L372
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L134:
	.sleb128	10
	.byte		"DeferredLength_Ref"
	.byte		0
	.4byte		.L375
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L135:
	.sleb128	10
	.byte		"DeferredReceivedIPdu_Ref"
	.byte		0
	.4byte		.L336
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L136:
	.sleb128	10
	.byte		"DeferredReceivedIPduArrayLength"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L137:
	.sleb128	10
	.byte		"RxIpdusFlags"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L138:
	.sleb128	10
	.byte		"Com_ZeroMask"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L139:
	.sleb128	10
	.byte		"SignalGroup_base"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L140:
	.sleb128	10
	.byte		"MemberSignal_base"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	78
	.byte		0x1
.L141:
	.sleb128	10
	.byte		"SignalArrayLength"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L142:
	.sleb128	10
	.byte		"SignalGroupArrayLength"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	82
	.byte		0x1
.L143:
	.sleb128	10
	.byte		"MemberSignalArrayLength"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L144:
	.sleb128	10
	.byte		"TxIpduIdArrayLength"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	86
	.byte		0x1
.L145:
	.sleb128	10
	.byte		"RxIpduIdArrayLength"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L146:
	.sleb128	10
	.byte		"RxIPduDeferredArrayLength"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	90
	.byte		0x1
.L147:
	.sleb128	10
	.byte		"RxIPduImmediateArralLength"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L148:
	.sleb128	10
	.byte		"RxIPduRxDMArralLength"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	94
	.byte		0x1
.L149:
	.sleb128	10
	.byte		"IpduGroupArrayLength"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
	.sleb128	0
.L346:
.L355:
	.sleb128	9
	.4byte		.L345
	.uleb128	82
	.uleb128	1
	.4byte		.L379-.L2
	.uleb128	24
.L109:
	.sleb128	10
	.byte		"DescendentGroupList_Ref"
	.byte		0
	.4byte		.L380
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L110:
	.sleb128	10
	.byte		"ChildGroupList_Ref"
	.byte		0
	.4byte		.L380
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L111:
	.sleb128	10
	.byte		"AncestorGroupList_Ref"
	.byte		0
	.4byte		.L380
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L112:
	.sleb128	10
	.byte		"DescendentListLength"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L113:
	.sleb128	10
	.byte		"ChildListLength"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L114:
	.sleb128	10
	.byte		"AncestorListLength"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L115:
	.sleb128	10
	.byte		"ParentListLength"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L116:
	.sleb128	10
	.byte		"Flags"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L379:
.L260:
	.sleb128	9
	.4byte		.L345
	.uleb128	82
	.uleb128	1
	.4byte		.L382-.L2
	.uleb128	40
.L97:
	.sleb128	10
	.byte		"RxIPduId"
	.byte		0
	.4byte		.L235
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L98:
	.sleb128	10
	.byte		"RxGroupList_Ref"
	.byte		0
	.4byte		.L380
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L99:
	.sleb128	10
	.byte		"SignalIndex_Ref"
	.byte		0
	.4byte		.L364
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L100:
	.sleb128	10
	.byte		"ForeGroundBuffer_Ref"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L101:
	.sleb128	10
	.byte		"BackGroundBuffer_Ref"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L102:
	.sleb128	10
	.byte		"RxIpduFlags_Ref"
	.byte		0
	.4byte		.L383
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L103:
	.sleb128	10
	.byte		"IsBackGroundBufferUpdated_Ref"
	.byte		0
	.4byte		.L387
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L104:
	.sleb128	10
	.byte		"RxGroupListLength"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L105:
	.sleb128	10
	.byte		"NumberOfSignals"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L106:
	.sleb128	10
	.byte		"IpduLength"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L107:
	.sleb128	10
	.byte		"IPduFlags"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L108:
	.sleb128	10
	.byte		"Com_DeferredNotificationCall_Ref"
	.byte		0
	.4byte		.L291
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L382:
.L293:
	.sleb128	9
	.4byte		.L345
	.uleb128	82
	.uleb128	1
	.4byte		.L390-.L2
	.uleb128	4
.L95:
	.sleb128	10
	.byte		"Com_DeferredNotificationIndex"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L96:
	.sleb128	10
	.byte		"Com_DeferredNotificationIndexType"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L390:
.L386:
	.sleb128	9
	.4byte		.L345
	.uleb128	82
	.uleb128	1
	.4byte		.L391-.L2
	.uleb128	2
.L93:
	.sleb128	10
	.byte		"DeferredIPduReceived"
	.byte		0
	.4byte		.L389
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L94:
	.sleb128	10
	.byte		"IsBackGroundBufferUpdated"
	.byte		0
	.4byte		.L389
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L391:
.L362:
	.sleb128	9
	.4byte		.L345
	.uleb128	82
	.uleb128	1
	.4byte		.L392-.L2
	.uleb128	60
.L75:
	.sleb128	10
	.byte		"TxGroupList_Ref"
	.byte		0
	.4byte		.L380
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L76:
	.sleb128	10
	.byte		"IsIPduGroupEnabled_Ref"
	.byte		0
	.4byte		.L387
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L77:
	.sleb128	10
	.byte		"IsTxPending_Ref"
	.byte		0
	.4byte		.L387
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L78:
	.sleb128	10
	.byte		"IsConfirmationPending_Ref"
	.byte		0
	.4byte		.L387
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L79:
	.sleb128	10
	.byte		"IsConfirmationDeferred_Ref"
	.byte		0
	.4byte		.L387
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L80:
	.sleb128	10
	.byte		"CurrentTxMode_Ref"
	.byte		0
	.4byte		.L387
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L81:
	.sleb128	10
	.byte		"IsTransmissionFailed_Ref"
	.byte		0
	.4byte		.L387
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L82:
	.sleb128	10
	.byte		"Pdu"
	.byte		0
	.4byte		.L303
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L83:
	.sleb128	10
	.byte		"TxGroupListLength"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L84:
	.sleb128	10
	.byte		"Signals_Index"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L85:
	.sleb128	10
	.byte		"NumberOfSignals"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L86:
	.sleb128	10
	.byte		"SignalsWithUpdateBit_Ref"
	.byte		0
	.4byte		.L393
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L87:
	.sleb128	10
	.byte		"NumberOfSignalsWithUpdateBit"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L88:
	.sleb128	10
	.byte		"InitializeLength"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
.L89:
	.sleb128	10
	.byte		"TxMode"
	.byte		0
	.4byte		.L395
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L90:
	.sleb128	10
	.byte		"TargetId"
	.byte		0
	.4byte		.L235
	.sleb128	2
	.byte		0x23
	.uleb128	54
	.byte		0x1
.L91:
	.sleb128	10
	.byte		"IpduFlags"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L92:
	.sleb128	10
	.byte		"UnusedValue"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	58
	.byte		0x1
	.sleb128	0
.L392:
.L248:
	.sleb128	9
	.4byte		.L345
	.uleb128	82
	.uleb128	1
	.4byte		.L397-.L2
	.uleb128	56
.L54:
	.sleb128	10
	.byte		"ForeGroundBuffer_Ref"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L55:
	.sleb128	10
	.byte		"BackGroundBuffer_Ref"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L56:
	.sleb128	10
	.byte		"ShadowBuffer_Ref"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L57:
	.sleb128	10
	.byte		"UpdateBit_Ref"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L58:
	.sleb128	10
	.byte		"InitValue_Ref"
	.byte		0
	.4byte		.L237
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L59:
	.sleb128	10
	.byte		"IPDU"
	.byte		0
	.4byte		.L235
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L60:
	.sleb128	10
	.byte		"InvalidIndex"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L61:
	.sleb128	10
	.byte		"BytePosition"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L62:
	.sleb128	10
	.byte		"NotifyFunctionIndex"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L63:
	.sleb128	10
	.byte		"TimeoutFunctionIndex"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L64:
	.sleb128	10
	.byte		"SignalFlagsLT"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L65:
	.sleb128	10
	.byte		"UpdateBitMask"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L66:
	.sleb128	10
	.byte		"NotifyLength"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L67:
	.sleb128	10
	.byte		"MinimumReceiveLength"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L68:
	.sleb128	10
	.byte		"ComXf_Signal"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L397:
.L371:
	.sleb128	9
	.4byte		.L345
	.uleb128	82
	.uleb128	1
	.4byte		.L400-.L2
	.uleb128	4
.L52:
	.sleb128	10
	.byte		"Period"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L53:
	.sleb128	10
	.byte		"Offset"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L400:
.L399:
	.sleb128	9
	.4byte		.L401
	.uleb128	44
	.uleb128	1
	.4byte		.L402-.L2
	.uleb128	20
.L43:
	.sleb128	10
	.byte		"SignBitMask"
	.byte		0
	.4byte		.L347
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L44:
	.sleb128	10
	.byte		"BufferLength"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L45:
	.sleb128	10
	.byte		"Flags"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L46:
	.sleb128	10
	.byte		"Type"
	.byte		0
	.4byte		.L403
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L47:
	.sleb128	10
	.byte		"TransferProperty"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L48:
	.sleb128	10
	.byte		"PackingType"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L49:
	.sleb128	10
	.byte		"Mask1"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L50:
	.sleb128	10
	.byte		"Mask2"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L51:
	.sleb128	10
	.byte		"shift"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L402:
	.section	.debug_info,,n
.L304:
	.sleb128	11
	.4byte		.L405
	.uleb128	69
	.uleb128	1
	.4byte		.L406-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L39:
	.sleb128	10
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L378
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L40:
	.sleb128	10
	.byte		"SduLength"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L406:
	.section	.debug_info,,n
.L327:
	.sleb128	12
	.4byte		.L345
	.uleb128	82
	.uleb128	1
	.4byte		.L407-.L2
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
.L407:
.L404:
	.sleb128	12
	.4byte		.L401
	.uleb128	44
	.uleb128	1
	.4byte		.L408-.L2
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
.L408:
	.section	.debug_info,,n
.L232:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L231:
	.sleb128	15
	.byte		"uint16"
	.byte		0
	.4byte		.L232
.L230:
	.sleb128	15
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L231
.L235:
	.sleb128	15
	.byte		"PduIdType"
	.byte		0
	.4byte		.L231
	.section	.debug_info,,n
.L234:
	.sleb128	16
	.4byte		.L235
.L241:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L240:
	.sleb128	15
	.byte		"uint8"
	.byte		0
	.4byte		.L241
.L239:
	.sleb128	16
	.4byte		.L240
	.section	.debug_info,,n
.L238:
	.sleb128	17
	.4byte		.L239
.L237:
	.sleb128	16
	.4byte		.L238
.L242:
	.sleb128	16
	.4byte		.L230
.L247:
	.sleb128	15
	.byte		"Com_SignalsPB"
	.byte		0
	.4byte		.L248
.L246:
	.sleb128	16
	.4byte		.L247
.L245:
	.sleb128	17
	.4byte		.L246
.L253:
	.sleb128	15
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L231
.L259:
	.sleb128	15
	.byte		"Com_RxIpdu"
	.byte		0
	.4byte		.L260
.L258:
	.sleb128	16
	.4byte		.L259
.L257:
	.sleb128	17
	.4byte		.L258
.L256:
	.sleb128	16
	.4byte		.L257
.L292:
	.sleb128	15
	.byte		"Com_DeferredNotificationCall"
	.byte		0
	.4byte		.L293
.L291:
	.sleb128	17
	.4byte		.L292
.L290:
	.sleb128	16
	.4byte		.L291
.L303:
	.sleb128	15
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L304
.L302:
	.sleb128	16
	.4byte		.L303
.L301:
	.sleb128	17
	.4byte		.L302
.L326:
	.sleb128	15
	.byte		"Com_StatusType"
	.byte		0
	.4byte		.L327
.L331:
	.sleb128	15
	.byte		"Com_ConfigType"
	.byte		0
	.4byte		.L332
.L330:
	.sleb128	16
	.4byte		.L331
.L329:
	.sleb128	17
	.4byte		.L330
.L336:
	.sleb128	17
	.4byte		.L235
	.section	.debug_info,,n
.L343:
	.sleb128	18
	.4byte		.L344-.L2
	.byte		0x1
	.sleb128	0
.L344:
.L342:
	.sleb128	17
	.4byte		.L343
.L341:
	.sleb128	15
	.byte		"Com_NotifyFunction"
	.byte		0
	.4byte		.L342
.L340:
	.sleb128	16
	.4byte		.L341
	.section	.debug_info,,n
.L338:
	.sleb128	19
	.4byte		.L339-.L2
	.4byte		.L340
	.section	.debug_info,,n
	.sleb128	20
	.sleb128	0
.L339:
.L348:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L347:
	.sleb128	15
	.byte		"uint32"
	.byte		0
	.4byte		.L348
.L350:
	.sleb128	16
	.4byte		.L347
.L349:
	.sleb128	17
	.4byte		.L350
.L354:
	.sleb128	15
	.byte		"Com_IpduGroup"
	.byte		0
	.4byte		.L355
.L353:
	.sleb128	16
	.4byte		.L354
.L352:
	.sleb128	17
	.4byte		.L353
.L351:
	.sleb128	16
	.4byte		.L352
.L357:
	.sleb128	17
	.4byte		.L256
.L356:
	.sleb128	16
	.4byte		.L357
.L361:
	.sleb128	15
	.byte		"Com_TxIpdu"
	.byte		0
	.4byte		.L362
.L360:
	.sleb128	16
	.4byte		.L361
.L359:
	.sleb128	17
	.4byte		.L360
.L358:
	.sleb128	16
	.4byte		.L359
.L363:
	.sleb128	16
	.4byte		.L245
.L366:
	.sleb128	16
	.4byte		.L253
.L365:
	.sleb128	17
	.4byte		.L366
.L364:
	.sleb128	16
	.4byte		.L365
.L370:
	.sleb128	15
	.byte		"Com_TxModeType"
	.byte		0
	.4byte		.L371
.L369:
	.sleb128	16
	.4byte		.L370
.L368:
	.sleb128	17
	.4byte		.L369
.L367:
	.sleb128	16
	.4byte		.L368
.L374:
	.sleb128	15
	.byte		"Com_Timer"
	.byte		0
	.4byte		.L231
.L373:
	.sleb128	17
	.4byte		.L374
.L372:
	.sleb128	16
	.4byte		.L373
.L376:
	.sleb128	17
	.4byte		.L230
.L375:
	.sleb128	16
	.4byte		.L376
.L378:
	.sleb128	17
	.4byte		.L240
.L377:
	.sleb128	16
	.4byte		.L378
.L381:
	.sleb128	17
	.4byte		.L234
.L380:
	.sleb128	16
	.4byte		.L381
.L385:
	.sleb128	15
	.byte		"Com_RxIPduFlag"
	.byte		0
	.4byte		.L386
.L384:
	.sleb128	17
	.4byte		.L385
.L383:
	.sleb128	16
	.4byte		.L384
.L389:
	.sleb128	15
	.byte		"boolean"
	.byte		0
	.4byte		.L241
.L388:
	.sleb128	17
	.4byte		.L389
.L387:
	.sleb128	16
	.4byte		.L388
.L394:
	.sleb128	16
	.4byte		.L231
.L393:
	.sleb128	17
	.4byte		.L394
.L395:
	.sleb128	19
	.4byte		.L396-.L2
	.4byte		.L231
	.section	.debug_info,,n
	.sleb128	21
	.uleb128	0
	.sleb128	0
.L396:
.L398:
	.sleb128	15
	.byte		"ComXf_SignalsPB"
	.byte		0
	.4byte		.L399
.L403:
	.sleb128	15
	.byte		"Com_SignalType"
	.byte		0
	.4byte		.L404
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L236:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),4
	.d2locend
.L243:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),5
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locend
.L249:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locend
.L251:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo16),4
	.d2locend
.L254:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo15),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),0
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),0
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),0
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),0
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),0
	.d2locend
.L261:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo16),5
	.d2locend
.L263:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),4
	.d2locend
.L265:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),6
	.d2locend
.L272:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),31
	.d2locend
.L278:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),0
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo36),29
	.d2locend
.L284:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),3
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),31
	.d2locend
.L294:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo36),30
	.d2locend
.L300:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),3
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),31
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),0
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),31
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),31
	.d2locend
.L305:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo55),4
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo50),30
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),30
	.d2locend
.L307:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo50),29
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo58),29
	.d2locend
.L309:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo56),4
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo54),28
	.d2locend
.L311:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo48),31
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),31
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),31
	.d2locend
.L317:
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo50),3
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),3
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),3
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),3
	.d2locend
.L323:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo50),30
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo58),30
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Com_RxIndication"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "Com_ProcessSignals","SchM_Enter_Com_COM_RXIND_DEFERRED_BACKGROUND","SchM_Enter_Com_COM_RXIND_IMMEDIATE_BACKGROUND","SchM_Exit_Com_COM_RXIND_DEFERRED_BACKGROUND","SchM_Exit_Com_COM_RXIND_IMMEDIATE_BACKGROUND","vstar_copy"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Com_MainFunctionRx"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "Com_ProcessSignals","SchM_Enter_Com_COM_MAIN_DEFERRED_BACKGROUND","SchM_Enter_Com_COM_MAIN_DEFERRED_FOREGROUND","SchM_Exit_Com_COM_MAIN_DEFERRED_BACKGROUND","SchM_Exit_Com_COM_MAIN_DEFERRED_FOREGROUND","vstar_copy"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Com_ProcessSignals"
	.wrcm.nint32 "frameSize", 32
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Com_RxHandler.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Com_RxHandler.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Com_RxHandler.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Com_RxHandler.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Com_RxHandler.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Com_RxHandler.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\Com\ssc\make\..\src\Com_RxHandler.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
