#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Com_TxHandler.c"
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
# static FUNC(void, COM_CODE) Com_ProcessCycle(
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_TxHandler.c"
        .d2line         379,29
#$$ld
.L265:

#$$bf	Com_ProcessCycle,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.d2_cfa_start __cie
Com_ProcessCycle:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# TxModesIndex=r0
	.d2_cfa_offset    108,-1
	mr		r5,r3		# IpduIndex=r5 IpduIndex=r3
	mr		r0,r4		# TxModesIndex=r0 TxModesIndex=r4
	.d2prologue_end
#         CONST(PduIdType, AUTOMATIC) IpduIndex,
#         CONST(uint16, AUTOMATIC) TxModesIndex)
# {
#     CONSTP2VAR(Com_Timer,AUTOMATIC,COM_VAR_PB) CurrentTimer = &(Com_Main->CycleTimers_Ref[TxModesIndex]);
	.d2line		383
.Llo5:
	lis		r4,Com_Main@ha
.Llo6:
	lwz		r3,Com_Main@l(r4)		# CurrentTimer=r3
.Llo2:
	lwz		r3,52(r3)		# CurrentTimer=r3 CurrentTimer=r3
	rlwinm		r6,r0,1,15,30		# TxModesIndex=r0
	se_add		r3,r6		# CurrentTimer=r3 CurrentTimer=r3
	mr		r3,r3		# CurrentTimer=r3 CurrentTimer=r3
#     CONSTP2CONST(Com_TxIpdu,AUTOMATIC,COM_CONST_PB) TxIpdu = &(Com_Main->TxIpdus_Ref[IpduIndex]);
	.d2line		384
.Llo3:
	rlwinm		r5,r5,0,16,31		# IpduIndex=r5 IpduIndex=r5
	lwz		r4,Com_Main@l(r4)
	lwz		r4,32(r4)
	rlwinm		r6,r5,6,0,25		# IpduIndex=r5
	se_slwi		r5,2		# IpduIndex=r5 IpduIndex=r5
	subf		r5,r5,r6		# IpduIndex=r5 IpduIndex=r5
	se_add		r4,r5		# IpduIndex=r5
.Llo10:
	mr		r5,r4		# TxIpdu=r5 TxIpdu=r4
# 
# #if COM_ENABLE_NTIMES_TM == STD_ON
#     /* Check if periodic timer is not stopped (Only in case of MIXED_RESYNC txmode) */
#     if(*CurrentTimer > 0)
# #endif
#     {
#         /* decrement periodic counter */
#         (*CurrentTimer)--;
	.d2line		392
.Llo4:
	lhz		r4,0(r3)		# CurrentTimer=r3
.Llo11:
	diab.li		r6,65535
	se_add		r4,r6
	sth		r4,0(r3)		# CurrentTimer=r3
# 
#         /* is timer Zero yet? */
#         if(*CurrentTimer == (Com_Timer)0)
	.d2line		395
	e_and2i.		r4,65535
	bc		0,2,.L209	# ne
#         {
#             /* reload timer */
#             *CurrentTimer = Com_Main->TxModes_Ref[TxModesIndex].Period;
	.d2line		398
.Llo7:
	lis		r4,Com_Main@ha
	lwz		r4,Com_Main@l(r4)
	lwz		r4,48(r4)
.Llo8:
	rlwinm		r0,r0,2,14,29		# TxModesIndex=r0 TxModesIndex=r0
	lhzx		r0,r4,r0		# TxModesIndex=r0
	sth		r0,0(r3)		# CurrentTimer=r3 TxModesIndex=r0
# 
#             /* set TxPending bit */
#             *TxIpdu->IsTxPending_Ref = TRUE;
	.d2line		401
	diab.li		r0,1		# TxModesIndex=r0
	lwz		r3,8(r5)		# CurrentTimer=r3 TxIpdu=r5
	stb		r0,0(r3)		# CurrentTimer=r3 TxModesIndex=r0
.L209:
# 
#     #if COM_ENABLE_MDT == STD_ON
#     #if COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION == STD_OFF
#             /* set Cyclic Transmissionflag  */
#             *TxIpdu->CyclicTransmissionOngoing_Ref = TRUE;
#     #endif /* COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION */
#     #endif /* COM_ENABLE_MDT */
#         }
#     }
# }
	.d2line		411
	.d2epilogue_begin
.Llo9:
	lwz		r0,20(r1)		# TxModesIndex=r0
	mtspr		lr,r0		# TxModesIndex=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L266:
	.type		Com_ProcessCycle,@function
	.size		Com_ProcessCycle,.-Com_ProcessCycle
# Number of nodes = 50

# Allocations for Com_ProcessCycle
#	?a4		IpduIndex
#	?a5		TxModesIndex
#	?a6		$$47
#	?a7		CurrentTimer
#	?a8		TxIpdu
# static FUNC(void, COM_CODE) Com_TrySend(
	.align		1
	.section	.text_vle
        .d2line         575,29
#$$ld
.L290:

#$$bf	Com_TrySend,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Com_TrySend:
.Llo12:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo16:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# TargetReturn=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Ipdu=r31 Ipdu=r3
	.d2prologue_end
# #if COM_ENABLE_IPDU_CALLOUT == STD_ON
#         CONST (uint16, AUTOMATIC) IpduIndex,
# #endif
#         CONSTP2CONST(Com_TxIpdu, AUTOMATIC, COM_CONST_PB) Ipdu
# #if COM_ENABLE_TX_DM == STD_ON
#         ,CONST (uint16, AUTOMATIC) TxModesIndex
# #endif
# )
# {
# 
# #if COM_ENABLE_IPDU_CALLOUT == STD_ON
#     VAR(boolean, AUTOMATIC) CallOutReturn = TRUE;
# #endif /* COM_ENABLE_IPDU_CALLOUT */
#     VAR(Std_ReturnType, AUTOMATIC) TargetReturn = E_NOT_OK;
	.d2line		589
	diab.li		r0,1		# TargetReturn=r0
#     VAR(PduInfoType, AUTOMATIC) TransmitPdu;
# 
# #if COM_ENABLE_IPDU_COUNTER == STD_ON
#     VAR(uint8, AUTOMATIC) IPduDSCOldValue = 0;
# #endif
# #if COM_ENABLE_MDT == STD_ON
#     /* If MDT NOT configured OR elapsed */
#     /* REQ: [COM789.a][COM789.b][COM789.c] (ONLY FOR AR403)
#      *
#      * No MDT monitoring shall take place for periodic PDUs and
#      * for cyclic part of MIXED PDUs
#      * if ComEnableMDTForCyclicTransmission = FALSE
#      */
# 
#     /* decrement timer */
#     if((Com_Main->MdtTimers_Ref != NULL_PTR) && (Com_Main->MdtTimers_Ref[Ipdu->MDT_Index] > 0) && (Ipdu->MDT > 0))
#     {
#         Com_Main->MdtTimers_Ref[Ipdu->MDT_Index]--;
#     }
# 
#     if(
# #if COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION == STD_OFF
#     (*Ipdu->CyclicTransmissionOngoing_Ref == TRUE) ||
# #endif /* COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION */
#         ((Ipdu->MDT == (uint16) 0) || ((Com_Main->MdtTimers_Ref != NULL_PTR) && (Com_Main->MdtTimers_Ref[Ipdu->MDT_Index] == (uint16) 0))))
#     {
# #endif
# 
#         /* check if IPDU is due for transmission or TransmissionRetry pending */
#         if((*Ipdu->IsTxPending_Ref != FALSE)
	.d2line		619
.Llo17:
	lwz		r3,8(r31)		# Ipdu=r31
.Llo13:
	lbz		r0,0(r3)		# TargetReturn=r0
.Llo18:
	se_cmpi		r0,0		# TargetReturn=r0
	bc		0,2,.L217	# ne
.Llo14:
	lwz		r3,24(r31)		# Ipdu=r31
	lbz		r0,0(r3)		# TargetReturn=r0
.Llo19:
	se_cmpi		r0,0		# TargetReturn=r0
	bc		1,2,.L212	# eq
.L217:
# #if COM_ENABLE_RETRY_FAILED_TRANSMIT == STD_ON
#         || (*Ipdu->IsTransmissionFailed_Ref != FALSE)
# #endif
#         )
#         {
#             SchM_Enter_Com_COM_MAIN_TXIPDU();
	.d2line		625
.Llo20:
	bl		SchM_Enter_Com_COM_MAIN_TXIPDU
# 
# #if COM_ENABLE_IPDU_COUNTER == STD_ON
#             /* REQ: [COM688] - Increase DSC counter before sending out IPdu by PduR_ComTransmit */
#             /* check if the IPDU has a DSC counter configured */
#             if((Ipdu->IpduFlags & COM_IPDU_DSCCOUNTER_TRUE)!= 0)
#             {
#                 IPduDSCOldValue = Com_ProcessDSCTx(Ipdu);
#             }
# #endif /* COM_ENABLE_IPDU_COUNTER */
# 
#             TransmitPdu.SduDataPtr = Ipdu->Pdu.SduDataPtr;
	.d2line		636
	lwz		r0,28(r31)		# TargetReturn=r0 Ipdu=r31
.Llo21:
	stw		r0,8(r1)		# TargetReturn=r0
# 
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#             if( Ipdu->DynIndex != COM_INVALID_DYN_INDEX)
#             {
#                 P2VAR(uint16,AUTOMATIC,COM_CONST_PB) DynSignalLength = &(Com_Main->DynLength_Ref[Ipdu->DynIndex]);
#                 TransmitPdu.SduLength = Ipdu->Pdu.SduLength + *DynSignalLength;
#             }
#             else
# #endif /* COM_ENABLE_DYNAMIC_SIGNALS */
#             {
#                 TransmitPdu.SduLength = Ipdu->Pdu.SduLength;
	.d2line		647
	lhz		r0,32(r31)		# TargetReturn=r0 Ipdu=r31
	sth		r0,12(r1)		# TargetReturn=r0
#             }
# 
# #if COM_ENABLE_IPDU_CALLOUT == STD_ON
#             if(*Ipdu->IsTxPending_Ref == TRUE)
#             {
#                 if(Com_TxIpduCallOut_Array[Ipdu->TxIpduCalloutIndex] != NULL_PTR)
#                 {
#                     CallOutReturn = COM_CALLOUT(Com_TxIpduCallOut_Array, Ipdu->TxIpduCalloutIndex, IpduIndex, &TransmitPdu);
#                 }
#             }
#             /* check return value of IPDU callout */
#             if(CallOutReturn == TRUE)
# #endif /* COM_ENABLE_IPDU_CALLOUT */
#             {
# #if COM_ENABLE_LARGE_DATA_TYPES == STD_ON
#                 /* Lock Tp buffer before transmitting it. */
#                 if(0!=(Ipdu->IpduFlags & COM_TXIPDU_TP))
#                 {
#                     /*clear Counter*/
#                     Com_Main->TxTpCounter_Ref[Ipdu->TxTpCounter_Index] = (uint16)0;
#                     /* lock internal buffer for TP ipdus */
#                     *Ipdu->IsTpBufferLocked_Ref = TRUE;
#                 }
# #endif /* COM_ENABLE_LARGE_DATA_TYPES */
# 
#                 TargetReturn = PduR_ComTransmit(Ipdu->TargetId, &TransmitPdu);
	.d2line		673
	lhz		r3,54(r31)		# TargetReturn=r3 Ipdu=r31
	diab.addi		r4,r1,8
	bl		PduR_ComTransmit
.Llo22:
	mr		r3,r3		# TargetReturn=r3 TargetReturn=r3
#                 /* Exit transmission buffer protection critical section */
# 
#                 if(TargetReturn == E_NOT_OK)
	.d2line		676
.Llo23:
	rlwinm		r3,r3,0,24,31		# TargetReturn=r3 TargetReturn=r3
	se_cmpi		r3,1		# TargetReturn=r3
	bc		0,2,.L214	# ne
#                 {
# #if COM_ENABLE_RETRY_FAILED_TRANSMIT == STD_ON
#                     /* Set Transmission failed flag for later retry */
#                     *Ipdu->IsTransmissionFailed_Ref = TRUE;
	.d2line		680
.Llo24:
	diab.li		r0,1		# TargetReturn=r0
.Llo25:
	lwz		r3,24(r31)		# TargetReturn=r3 Ipdu=r31
	stb		r0,0(r3)		# TargetReturn=r3 TargetReturn=r0
	b		.L215
.L214:
# #endif /* COM_ENABLE_RETRY_FAILED_TRANSMIT */
# #if COM_ENABLE_IPDU_COUNTER == STD_ON
#                     /* REQ: [COM688]*/
#                     /* Decrement DSC counter if transmission was not successful */
#                     if((Ipdu->IpduFlags & COM_IPDU_DSCCOUNTER_TRUE)!= 0)
#                     {
#                         Com_SetDSCTx(Ipdu,IPduDSCOldValue);
#                     }
# #endif /* COM_ENABLE_IPDU_COUNTER */
# #if COM_ENABLE_LARGE_DATA_TYPES == STD_ON
#                     /*Unlock Tp buffer in case of unsuccessful transmission*/
#                     if(0!=(Ipdu->IpduFlags & COM_TXIPDU_TP))
#                     {
#                         *Ipdu->IsTpBufferLocked_Ref = FALSE;
#                     }
# #endif /* COM_ENABLE_LARGE_DATA_TYPES */
#                 }
#                 else /* E_OK */
#                 {
# #if COM_ENABLE_RETRY_FAILED_TRANSMIT == STD_ON
#                     /* Clear Retry-transmission flag */
#                     *Ipdu->IsTransmissionFailed_Ref = FALSE;
	.d2line		702
.Llo26:
	diab.li		r0,0		# TargetReturn=r0
.Llo27:
	lwz		r3,24(r31)		# TargetReturn=r3 Ipdu=r31
	stb		r0,0(r3)		# TargetReturn=r3 TargetReturn=r0
# #endif /* COM_ENABLE_RETRY_FAILED_TRANSMIT */
# 
#                     /* set IPDU confirmation-pending bit */
#                     *Ipdu->IsConfirmationPending_Ref = TRUE;
	.d2line		706
	diab.li		r0,1		# TargetReturn=r0
	lwz		r3,12(r31)		# TargetReturn=r3 Ipdu=r31
	stb		r0,0(r3)		# TargetReturn=r3 TargetReturn=r0
# 
#                     /* check if frame data provision is not triggered, clear
#                      signals update bits AND no synchronous Tx errors found for non TP frames */
#                     if((Ipdu->IpduFlags & COM_IPDU_CLEAR_ON_TRANSMIT) != 0)
	.d2line		710
	lhz		r0,56(r31)		# TargetReturn=r0 Ipdu=r31
	se_btsti		r0,23		# TargetReturn=r0
	bc		1,2,.L215	# eq
#                     {
#                         Com_ClearIpduUpdateBits(Ipdu);
	.d2line		712
.Llo28:
	mr		r3,r31		# Ipdu=r3 Ipdu=r31
	bl		Com_ClearIpduUpdateBits
.L215:
#                     }
# #if COM_ENABLE_MDT == STD_ON
#                     /* REQ : [COM698] */
#                     /*COM module shall load and start the minimum delay time counter upon
#                      transmission of that I PDU to the PDU Router via PduR_ComTransmit*/
#                     if((Com_Main->MdtTimers_Ref != NULL_PTR) && (Ipdu->MDT != (uint16)0)
# #if COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION == STD_OFF
#                             && (*Ipdu->CyclicTransmissionOngoing_Ref == FALSE)
# #endif /* COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION */
#                     )
#                     {
#                         /*  load, start and decrement timer */
#                         Com_Main->MdtTimers_Ref[Ipdu->MDT_Index] = (Com_Timer)Ipdu->MDT;
#                     }
# #if COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION == STD_OFF
#                     /* Clear Cyclic-transmission flag */
#                     *Ipdu->CyclicTransmissionOngoing_Ref = FALSE;
# #endif /* COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION */
# #endif /* COM_ENABLE_MDT */
#                 }
# #if COM_ENABLE_TX_DM == STD_ON
#                 if(*Ipdu->IsTxPending_Ref == TRUE)
#                 {
#                     if((TxModesIndex != COM_INVALID_TM_INDEX)
#                     && ((Com_Main->TxModes_Ref[TxModesIndex]).Period != 0)
#                     && (Ipdu->DmTimeOut != (uint16)0))
#                     {
#                         SchM_Enter_Com_COM_TX_TIMER();
# 
#                         /* for Mixed & periodic TMs, (if Tx Dm configured) restart Tx Dm
#                          timer unless this time is currently running */
#                         if (*(Ipdu->DmTimer_Ref) == (uint16)0)
#                         {
#                             /* Restart IPDU TX DM timer */
#                             *(Ipdu->DmTimer_Ref) = Ipdu->DmTimeOut;
#                         }
#                         SchM_Exit_Com_COM_TX_TIMER();
#                     }
#                 }
# #endif /* COM_ENABLE_TX_DM */
#             }
# #if COM_ENABLE_IPDU_CALLOUT == STD_ON
#             else
#             {
# #if COM_ENABLE_IPDU_COUNTER == STD_ON
#                 /* Decrement DSC counter if IPdu Callout returned FALSE */
#                 if((Ipdu->IpduFlags & COM_IPDU_DSCCOUNTER_TRUE)!= 0)
#                 {
#                     Com_SetDSCTx(Ipdu,IPduDSCOldValue);
#                 }
# #endif
#             }
# #endif
#             *Ipdu->IsTxPending_Ref = FALSE;
	.d2line		766
	diab.li		r0,0		# TargetReturn=r0
.Llo29:
	lwz		r3,8(r31)		# TargetReturn=r3 Ipdu=r31
	stb		r0,0(r3)		# TargetReturn=r3 TargetReturn=r0
# 
#             SchM_Exit_Com_COM_MAIN_TXIPDU();
	.d2line		768
	bl		SchM_Exit_Com_COM_MAIN_TXIPDU
.L212:
#         }
# #if COM_ENABLE_MDT == STD_ON
#     }
#     else
#     {
# 
#     }
# #endif
# }
	.d2line		777
	.d2epilogue_begin
.Llo15:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# TargetReturn=r0
	mtspr		lr,r0		# TargetReturn=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L291:
	.type		Com_TrySend,@function
	.size		Com_TrySend,.-Com_TrySend
# Number of nodes = 100

# Allocations for Com_TrySend
#	?a4		Ipdu
#	?a5		TargetReturn
#	SP,8		TransmitPdu
# FUNC(void, COM_CODE) Com_NotifySignals(
	.align		2
	.section	.text_vle
        .d2line         266,22
#$$ld
.L304:

#$$bf	Com_NotifySignals,interprocedural,rasave,nostackparams
	.globl		Com_NotifySignals
	.d2_cfa_start __cie
Com_NotifySignals:
.Llo30:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# NotifyIndex=r31 NotifyIndex=r3
	mr		r30,r4		# NotifyLength=r30 NotifyLength=r4
	mr		r29,r5		# NotifyType=r29 NotifyType=r5
	.d2prologue_end
#         VAR(uint16, AUTOMATIC) NotifyIndex,
#         VAR(uint16, AUTOMATIC) NotifyLength,
#         VAR(uint8, AUTOMATIC) NotifyType)
# {
#     P2CONST(Com_SignalsPB, AUTOMATIC, COM_CONST_PB) SignalPointer;
#     VAR(uint16,AUTOMATIC) Index;
# 
#     for(Index = (uint16)0; Index < NotifyLength; Index++)
	.d2line		274
	diab.li		r28,0		# Index=r28
.L194:
.Llo31:
	rlwinm		r0,r28,0,16,31		# Index=r28
.Llo32:
	rlwinm		r4,r30,0,16,31		# NotifyLength=r30
	se_cmp		r0,r4
	bc		0,0,.L193	# ge
#     {
#         SignalPointer = &(Com_Main->Signals_Ref[Com_Main->IpduToSignal_Ref[Index + NotifyIndex]]);
	.d2line		276
	lis		r3,Com_Main@ha		# SignalPointer=r3
.Llo36:
	lwz		r4,Com_Main@l(r3)		# SignalPointer=r3
	lwz		r4,40(r4)
	rlwinm		r0,r28,0,16,31		# Index=r28
	rlwinm		r5,r31,0,16,31		# NotifyIndex=r31
	se_add		r0,r5
	se_slwi		r0,1
	lhzx		r0,r4,r0
	lwz		r3,Com_Main@l(r3)		# SignalPointer=r3 SignalPointer=r3
	lwz		r3,36(r3)		# SignalPointer=r3 SignalPointer=r3
	rlwinm		r4,r0,6,0,25
	se_slwi		r0,3
	subf		r0,r0,r4
	se_add		r0,r3		# SignalPointer=r3
	mr		r3,r0		# SignalPointer=r3 SignalPointer=r0
# 
#         /* Notify only for Signals and SignalGroups */
#         if((SignalPointer->ComXf_Signal.Flags & COM_SIGNAL_GROUP_MEMBER) == 0)
	.d2line		279
.Llo37:
	lhz		r0,42(r3)		# SignalPointer=r3
	se_btsti		r0,29
	bc		0,2,.L197	# ne
#         {
#             /* as every signal in LT structure has 3 function pointers in sequence,
#              so we can Index them as an array starting from first function ptr and
#              simply define the different types of notifications as Indexes of
#              0, 1 and 2 */
#             /* PRQA S 2016++ *//* switch statement default clause is left intentionally empty */
#             switch (NotifyType)
	.d2line		286
.Llo38:
	rlwinm		r6,r29,0,24,31		# NotifyType=r29
	se_cmpi		r6,0
	bc		1,2,.L198	# eq
	se_cmpi		r6,2
	bc		1,2,.L201	# eq
	b		.L197
.L198:
#             {
#                 case 0U:
#                 {
#                     if(Com_NotifyFunction_Array[SignalPointer->NotifyFunctionIndex] != NULL_PTR)
	.d2line		290
	lis		r4,Com_NotifyFunction_Array@ha
	e_add16i		r4,r4,Com_NotifyFunction_Array@l
	lhz		r0,26(r3)		# SignalPointer=r3
	rlwinm		r0,r0,2,14,29
	lwzx		r0,r4,r0
	se_cmpi		r0,0
	bc		1,2,.L197	# eq
#                     {
#                         (Com_NotifyFunction_Array[SignalPointer->NotifyFunctionIndex])();
	.d2line		292
	lis		r4,Com_NotifyFunction_Array@ha
	e_add16i		r4,r4,Com_NotifyFunction_Array@l
	lhz		r0,26(r3)		# SignalPointer=r3
	rlwinm		r0,r0,2,14,29
	lwzx		r0,r4,r0
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.Llo39:
	b		.L197
.L201:
#                     }
#                     break;
#                 }
# #if COM_ERROR_NOTIFICATION == STD_ON
#                 case 1U:
#                 {
#                     if (Com_ErrorFunction_Array[SignalPointer->ErrorFunctionIndex] != NULL_PTR)
#                     {
#                         (Com_ErrorFunction_Array[SignalPointer->ErrorFunctionIndex])();
#                     }
#                     break;
#                 }
# #endif /* COM_ERROR_NOTIFICATION */
#                 case 2U:
#                 {
#                     if(Com_TimeOutFunction_Array[SignalPointer->TimeoutFunctionIndex] != NULL_PTR)
	.d2line		308
.Llo40:
	lis		r4,Com_TimeOutFunction_Array@ha
	e_add16i		r4,r4,Com_TimeOutFunction_Array@l
	lhz		r0,28(r3)		# SignalPointer=r3
	rlwinm		r0,r0,2,14,29
	lwzx		r0,r4,r0
	se_cmpi		r0,0
	bc		1,2,.L197	# eq
#                     {
#                         (Com_TimeOutFunction_Array[SignalPointer->TimeoutFunctionIndex])();
	.d2line		310
	lis		r4,Com_TimeOutFunction_Array@ha
	e_add16i		r4,r4,Com_TimeOutFunction_Array@l
	lhz		r0,28(r3)		# SignalPointer=r3
	rlwinm		r0,r0,2,14,29
	lwzx		r0,r4,r0
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L197:
#                     }
#                     break;
#                 }
#                 default:
#                 break;
#             }
#             /* PRQA S 2016-- */
#         }
#     }
	.d2line		319
	diab.addi		r0,r28,1		# Index=r28
	se_addi		r28,1		# Index=r28 Index=r28
	b		.L194
.L193:
# }
	.d2line		320
	.d2epilogue_begin
.Llo33:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo34:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo35:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L305:
	.type		Com_NotifySignals,@function
	.size		Com_NotifySignals,.-Com_NotifySignals
# Number of nodes = 99

# Allocations for Com_NotifySignals
#	?a4		NotifyIndex
#	?a5		NotifyLength
#	?a6		NotifyType
#	?a7		$$48
#	?a8		SignalPointer
#	?a9		Index
# static FUNC(void, COM_CODE) Com_TryConfirm(
	.align		1
	.section	.text_vle
        .d2line         787,29
#$$ld
.L320:

#$$bf	Com_TryConfirm,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Com_TryConfirm:
.Llo41:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# Ipdu=r4 Ipdu=r3
	.d2prologue_end
#         CONSTP2CONST(Com_TxIpdu, AUTOMATIC, COM_CONST_PB) Ipdu)
# {
#     /* REQ: [Com119_Conf] DEFERRED: signal indication / confirmations are deferred for example to a cyclic task */
#     /* check if IPDU deferred-confirmation bit is set */
#     if(*Ipdu->IsConfirmationDeferred_Ref != FALSE)
	.d2line		792
	lwz		r3,16(r4)		# Ipdu=r4
.Llo42:
	lbz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L222	# eq
#     {
#         /* clear IPDU confirmation-pending & Deferred-confirmation bits */
#         *Ipdu->IsConfirmationPending_Ref = FALSE;
	.d2line		795
.Llo43:
	diab.li		r5,0
	lwz		r3,12(r4)		# Ipdu=r4
	stb		r5,0(r3)
#         *Ipdu->IsConfirmationDeferred_Ref = FALSE;
	.d2line		796
	lwz		r3,16(r4)		# Ipdu=r4
	stb		r5,0(r3)
#         /* notify Ipdu signals */
#         Com_NotifySignals(Ipdu->Signals_Index,
	.d2line		798
	lhz		r3,38(r4)		# Ipdu=r4
	lhz		r4,40(r4)		# Ipdu=r4 Ipdu=r4
.Llo44:
	bl		Com_NotifySignals
.L222:
#         Ipdu->NumberOfSignals,
#         COM_NOTIFY_TX_ACK);
#     }
# }
	.d2line		802
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
.L321:
	.type		Com_TryConfirm,@function
	.size		Com_TryConfirm,.-Com_TryConfirm
# Number of nodes = 38

# Allocations for Com_TryConfirm
#	?a4		Ipdu
# FUNC(void, COM_CODE) Com_MainFunctionTx(void)
	.align		2
	.section	.text_vle
        .d2line         159,22
#$$ld
.L326:

#$$bf	Com_MainFunctionTx,interprocedural,rasave,nostackparams
	.globl		Com_MainFunctionTx
	.d2_cfa_start __cie
Com_MainFunctionTx:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(PduIdType, AUTOMATIC) TxIpduId;
#     P2CONST(Com_TxIpdu,AUTOMATIC,COM_CONST_PB) Ipdu;
#     VAR(uint8, AUTOMATIC) ActiveTM;
#     VAR(uint16, AUTOMATIC) TxModesIndex;
# #if COM_ENABLE_NTIMES_TM == STD_ON
#     VAR(Com_TxModeType, AUTOMATIC) TxModesType;
# #endif
# 
#     if (Com_Status == COM_UNINIT)
	.d2line		169
	lis		r3,Com_Status@ha
	lwz		r0,Com_Status@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L181	# eq
#     {
# #if COM_DEV_ERROR_DETECT == STD_ON
#         (void)Det_ReportError(COM_MODULE_ID,
#                 COM_INSTANCE_ID,
#                 COMServiceId_MainFunctionTx,
#                 COM_E_UNINIT);
# #endif /* COM_DEV_ERROR_DETECT */
#     }
#     else
# 
#     {
#         /* TX IPDUs handling */
#         for(TxIpduId = (PduIdType) 0; TxIpduId < (PduIdType)Com_Main->TxIpduIdArrayLength; TxIpduId++)
	.d2line		182
	diab.li		r31,0		# TxIpduId=r31
.L184:
.Llo45:
	rlwinm		r0,r31,0,16,31		# ActiveTM=r0 TxIpduId=r31
.Llo52:
	lis		r3,Com_Main@ha		# Ipdu=r3
.Llo47:
	lwz		r3,Com_Main@l(r3)		# Ipdu=r3 Ipdu=r3
	lhz		r3,86(r3)		# Ipdu=r3 Ipdu=r3
	se_cmp		r0,r3		# ActiveTM=r0 Ipdu=r3
	bc		0,0,.L181	# ge
#         {
#             Ipdu = &(Com_Main->TxIpdus_Ref[TxIpduId]);
	.d2line		184
.Llo48:
	rlwinm		r0,r31,0,16,31		# ActiveTM=r0 TxIpduId=r31
.Llo53:
	lis		r3,Com_Main@ha		# Ipdu=r3
.Llo49:
	lwz		r3,Com_Main@l(r3)		# Ipdu=r3 Ipdu=r3
	lwz		r30,32(r3)		# Ipdu=r30 Ipdu=r3
	rlwinm		r3,r0,6,0,25		# Ipdu=r3 ActiveTM=r0
	se_slwi		r0,2		# ActiveTM=r0 ActiveTM=r0
	subf		r0,r0,r3		# ActiveTM=r0 ActiveTM=r0 Ipdu=r3
	se_add		r0,r30		# ActiveTM=r0 ActiveTM=r0 Ipdu=r30
.Llo54:
	mr		r30,r0		# Ipdu=r30 Ipdu=r0
# #if COM_ENABLE_IMMEDIATE_PDU_TRANSMIT == STD_ON
#             if((Ipdu->IpduFlags & COM_TXIPDU_IMMEDIATE_TRANSFER) == 0)
# #endif
#             {
#                 /* check if Ipdu is active, Id Gaps should have never been
#                  activated */
#                 if(*Ipdu->IsIPduGroupEnabled_Ref != FALSE)
	.d2line		191
	lwz		r3,4(r30)		# Ipdu=r3 Ipdu=r30
.Llo50:
	lbz		r0,0(r3)		# ActiveTM=r0 Ipdu=r3
.Llo55:
	se_cmpi		r0,0		# ActiveTM=r0
	bc		1,2,.L187	# eq
#                 {
#     #if COM_ENABLE_TMS == STD_ON
#                     Com_ProcessFiltersForTM(Ipdu);
#                     Com_PerformTMSwitch(Ipdu);
#                     /* get currently active transmission mode */
#                     ActiveTM = (*Ipdu->CurrentTxMode_Ref != FALSE)? COM_TXMODETRUE_INDEX: COM_TXMODEFALSE_INDEX;
#     #else
#                     ActiveTM = COM_TXMODETRUE_INDEX;
	.d2line		199
.Llo51:
	diab.li		r0,0		# ActiveTM=r0
#     #endif /* COM_ENABLE_TMS */
#                     /* cache TM index  */
#                     TxModesIndex = Ipdu->TxMode[ActiveTM];
	.d2line		202
	lhz		r4,52(r30)		# TxModesIndex=r4 Ipdu=r30
.Llo60:
	mr		r4,r4		# TxModesIndex=r4 TxModesIndex=r4
#                     /* check if the active txmode is valid and check if Active TM for this IPDU has periodic counter*/
#                     if((TxModesIndex != COM_INVALID_TM_INDEX) && (Com_Main->TxModes_Ref[TxModesIndex].Period != (Com_Timer) 0))
	.d2line		204
	rlwinm		r0,r4,0,16,31		# ActiveTM=r0 TxModesIndex=r4
.Llo56:
	cmpli		0,0,r0,65535		# ActiveTM=r0
	bc		1,2,.L188	# eq
.Llo57:
	lis		r3,Com_Main@ha		# Ipdu=r3
	lwz		r3,Com_Main@l(r3)		# Ipdu=r3 Ipdu=r3
	lwz		r3,48(r3)		# Ipdu=r3 Ipdu=r3
	rlwinm		r0,r4,2,14,29		# ActiveTM=r0 TxModesIndex=r4
.Llo58:
	lhzx		r0,r3,r0		# ActiveTM=r0 Ipdu=r3
	se_cmpi		r0,0		# ActiveTM=r0
	bc		1,2,.L188	# eq
#                     {
#                         Com_ProcessCycle(TxIpduId, TxModesIndex);
	.d2line		206
.Llo59:
	mr		r3,r31		# TxIpduId=r3 TxIpduId=r31
.Llo61:
	mr		r4,r4		# TxModesIndex=r4 TxModesIndex=r4
.Llo62:
	bl		Com_ProcessCycle
.L188:
#                     }
#     #if COM_ENABLE_TX_DM == STD_ON
#                     Com_ProcessTxDmCounters(Ipdu,ActiveTM);
#     #endif /* COM_ENABLE_TX_DM */
#     #if COM_ENABLE_NTIMES_TM == STD_ON
# 
#                     if((TxModesIndex != COM_INVALID_TM_INDEX) )
#                     {
#                         TxModesType = Com_Main->TxModes_Ref[TxModesIndex];
#                         /* check if Ipdu has Ntimes transmission mode and check if Ntimes timer is running */
#                         if((TxModesType.NtimesRepetitions != (uint8)0) && ((Com_Main->NtimesTimers_Ref[Ipdu->NtimesRepetitions_Index]) != (uint16)0))
#                         {
#                             Com_ProcessNtimesCounters(TxIpduId,Ipdu->NtimesRepetitions_Index,TxModesType);
#                         }
#                     }
#     #endif /* COM_ENABLE_NTIMES_TM */
#     #if COM_ENABLE_MDT == STD_ON
#                    /*REQ: [COM469]*/
#                    /* Reload timer if a TxConfirmation is received from the
#                     * last call of this mainfunction */
# 
#                    if((Ipdu->MDT != 0) && (Com_Main->MdtRestartRequest_Ref[Ipdu->MDT_Index] == TRUE))
#                    {
#                        Com_Main->MdtTimers_Ref[Ipdu->MDT_Index] = (Com_Timer)(Ipdu->MDT + 1);
#                        Com_Main->MdtRestartRequest_Ref[Ipdu->MDT_Index] = FALSE;
#                    }
#     #endif
#                    Com_TryConfirm(Ipdu);
	.d2line		234
	mr		r3,r30		# Ipdu=r3 Ipdu=r30
	bl		Com_TryConfirm
#                    Com_TrySend(
	.d2line		235
	mr		r3,r30		# Ipdu=r3 Ipdu=r30
	bl		Com_TrySend
.L187:
#     #if COM_ENABLE_IPDU_CALLOUT == STD_ON
#                             TxIpduId,
#     #endif
#                             Ipdu
#     #if COM_ENABLE_TX_DM == STD_ON
#                                 ,TxModesIndex
#     #endif
#                                 );
#                 }
#             }
#         }
	.d2line		246
	diab.addi		r0,r31,1		# ActiveTM=r0 TxIpduId=r31
	se_addi		r31,1		# TxIpduId=r31 TxIpduId=r31
	b		.L184
.L181:
#     }
# }
	.d2line		248
	.d2epilogue_begin
.Llo46:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# ActiveTM=r0
	mtspr		lr,r0		# ActiveTM=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L327:
	.type		Com_MainFunctionTx,@function
	.size		Com_MainFunctionTx,.-Com_MainFunctionTx
# Number of nodes = 78

# Allocations for Com_MainFunctionTx
#	?a4		$$49
#	?a5		TxIpduId
#	?a6		Ipdu
#	?a7		ActiveTM
#	?a8		TxModesIndex
# static FUNC(boolean,COM_CODE) Com_TxModeIsNone(
	.align		1
	.section	.text_vle
        .d2line         1648,31
#$$ld
.L339:

#$$bf	Com_TxModeIsNone,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.d2_cfa_start __cie
Com_TxModeIsNone:
.Llo63:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Ipdu=r3 Ipdu=r3
	mr		r0,r4		# ActiveTM=r0 ActiveTM=r4
	.d2prologue_end
#         CONSTP2CONST(Com_TxIpdu, AUTOMATIC, COM_CONST_PB) Ipdu,
#         CONST(uint8, AUTOMATIC) ActiveTM)
# {
#     VAR(boolean, AUTOMATIC) IsModeNone;
# 
#     /* Note: transmission mode "none" is identified by an invalid index to
#      TM array plus a cleared "Direct" IPDU bit */
#     /* MISRA 20.3: False positive message: all callers pass ActiveTM==0 if COM_ENABLE_TMS is OFF. */
#     if((Ipdu->TxMode[ActiveTM] == COM_INVALID_TM_INDEX)) /* PRQA S 2842 */
	.d2line		1657
	rlwinm		r4,r4,1,23,30		# ActiveTM=r4 ActiveTM=r4
	se_add		r4,r3		# ActiveTM=r4 ActiveTM=r4 Ipdu=r3
	lhz		r4,52(r4)		# ActiveTM=r4 ActiveTM=r4
.Llo71:
	cmpli		0,0,r4,65535		# ActiveTM=r4
	bc		0,2,.L250	# ne
#     {
#         if(ActiveTM == COM_TXMODEFALSE_INDEX)
	.d2line		1659
	rlwinm		r0,r0,0,24,31		# ActiveTM=r0 ActiveTM=r0
	se_cmpi		r0,1		# ActiveTM=r0
	bc		0,2,.L251	# ne
#         {
#             if((uint16)(Ipdu->IpduFlags & COM_TXIPDU_DIRECT_TM_FALSE) == (uint16)0)
	.d2line		1661
	lhz		r0,56(r3)		# ActiveTM=r0 Ipdu=r3
	se_btsti		r0,25		# ActiveTM=r0
#             {
#                 /* Active mode "false" and its direct flag is not set */
#                 IsModeNone = TRUE;
	.d2line		1664
	diab.li		r3,1		# Ipdu=r3
	isel		r3,r3,r4,2		# IsModeNone=r3 Ipdu=r3 IsModeNone=r4
.L252:
#             }
#             else
#             {
#                 /* Active mode "false" and its direct flag is set */
#                 IsModeNone = FALSE;
	.d2line		1669
.Llo64:
	diab.li		r0,0		# ActiveTM=r0
.Llo67:
	isel		r3,r3,r0,2		# IsModeNone=r3 IsModeNone=r3 ActiveTM=r0
	b		.L257
.L251:
#             }
#         }
#         else
#         {
#             if((uint16)(Ipdu->IpduFlags & COM_TXIPDU_DIRECT_TM_TRUE) == (uint16)0)
	.d2line		1674
.Llo65:
	lhz		r0,56(r3)		# ActiveTM=r0 Ipdu=r3
.Llo68:
	se_btsti		r0,24		# ActiveTM=r0
#             {
#                 /* Active mode "true" and its direct flag is not set */
#                 IsModeNone = TRUE;
	.d2line		1677
	diab.li		r3,1		# Ipdu=r3
	isel		r3,r3,r4,2		# IsModeNone=r3 Ipdu=r3 IsModeNone=r4
.L255:
#             }
#             else
#             {
#                 /* Active mode "true" and its direct flag is set */
#                 IsModeNone = FALSE;
	.d2line		1682
.Llo66:
	diab.li		r0,0		# ActiveTM=r0
.Llo69:
	isel		r3,r3,r0,2		# IsModeNone=r3 IsModeNone=r3 ActiveTM=r0
	b		.L257
.L250:
#             }
#         }
#     }
#     else
#     {
#         /* this is a valid TM index, return FALSE */
#         IsModeNone = FALSE;
	.d2line		1689
.Llo70:
	diab.li		r3,0		# IsModeNone=r3
.L257:
#     }
#     return IsModeNone;
	.d2line		1691
.Llo72:
	rlwinm		r3,r3,0,24,31		# IsModeNone=r3 IsModeNone=r3
# }
	.d2line		1692
	.d2epilogue_begin
.Llo73:
	lwz		r0,20(r1)		# ActiveTM=r0
	mtspr		lr,r0		# ActiveTM=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L340:
	.type		Com_TxModeIsNone,@function
	.size		Com_TxModeIsNone,.-Com_TxModeIsNone
# Number of nodes = 55

# Allocations for Com_TxModeIsNone
#	?a4		Ipdu
#	?a5		ActiveTM
#	?a6		IsModeNone
# static FUNC(void, COM_CODE) Com_Confirmation(
	.align		1
	.section	.text_vle
        .d2line         818,29
#$$ld
.L350:

#$$bf	Com_Confirmation,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Com_Confirmation:
.Llo74:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Ipdu=r31 Ipdu=r3
	.d2prologue_end
#         CONSTP2CONST(Com_TxIpdu, AUTOMATIC, COM_CONST_PB) Ipdu)
# {
# #if COM_ENABLE_TMS == STD_ON
#     CONST (uint8,AUTOMATIC) ActiveTM = (*Ipdu->CurrentTxMode_Ref != FALSE)? COM_TXMODETRUE_INDEX: COM_TXMODEFALSE_INDEX;
# #else
#     CONST (uint8,AUTOMATIC) ActiveTM = COM_TXMODETRUE_INDEX;
# #endif /* COM_ENABLE_TMS */
# 
# #if COM_ENABLE_NTIMES_TM == STD_ON
#     VAR(boolean, AUTOMATIC) DoNotConfirm = FALSE;
# #endif /* COM_ENABLE_NTIMES_TM */
# 
# 
# 
# #if COM_ENABLE_MDT == STD_ON
#     /*REQ: [COM469]*/
#     /* check if IPDU has a MDT, and minimum delay time counter started
#      * at PduR_ComTransmit of that I-PDU is not already elapsed,
#      * always restart it, also see bugzilla entry #12913
#      * Restart will be handled by MainFunctionTx */
#     if(Ipdu->MDT != (uint16) 0)
#     {
#         Com_Main->MdtRestartRequest_Ref[Ipdu->MDT_Index] = TRUE;
#     }
# #endif /* COM_ENABLE_MDT */
# 
#     /* check if Ipdu is pending for confirmation, or if its Tx mode is
#      configured as None */
#     if((Com_TxModeIsNone(Ipdu,ActiveTM) == TRUE)
	.d2line		847
	mr		r3,r31		# Ipdu=r3 Ipdu=r31
.Llo75:
	diab.li		r4,0
	bl		Com_TxModeIsNone
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		1,2,.L230	# eq
.Llo76:
	lwz		r3,12(r31)		# Ipdu=r31
	lbz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L225	# eq
.L230:
#     || (*Ipdu->IsConfirmationPending_Ref != FALSE))
#     {
# #if COM_ENABLE_NTIMES_TM == STD_ON
#         CONST (uint16, AUTOMATIC) txModesIndex = Ipdu->TxMode[ActiveTM];
#         P2CONST(Com_TxModeType, AUTOMATIC, COM_CONST_PB) CurrentTM = &((Com_Main->TxModes_Ref)[txModesIndex]);
#         /* check if the active txmode is valid */
#         if(txModesIndex != COM_INVALID_TM_INDEX)
#         {
#             /* check if IPDU N-Times repetitions counter is running */
#             if((CurrentTM->NtimesRepetitions != (uint8)0) &&
#                (Com_Main->NtimesCounters_Ref[Ipdu->NtimesRepetitions_Index] != (uint16)0))
#             {
#                 /* decrement N-times repetitions counter */
#                 Com_Main->NtimesCounters_Ref[Ipdu->NtimesRepetitions_Index]--;
# 
#                 /* REQ: [COM305] Whenever a TX confirmation is received and the counter is greater than 0,
#                  * ... the AUTOSAR COM module shall ignore transmission confirmations for that I-PDU
#                  * ... When the counter reaches 0 the AUTOSAR COM module shall send
#                  * the transmission confirmation to the RTE*/
# 
#                 /* check if N-times repetitions counter not expired yet */
#                 if(Com_Main->NtimesCounters_Ref[Ipdu->NtimesRepetitions_Index] != (Com_Timer)0)
#                 {
#                     DoNotConfirm = TRUE;
#                 }
#                 /*
#                  * N-times repetitions counter expired, restart cyclic transmission timer if txmode is MIXED_RESYNC
#                  */
#                 else
#                 {
#                     if(CurrentTM->MixedResync == TRUE)
#                     {
#                         Com_Main->CycleTimers_Ref[txModesIndex] = CurrentTM->Period;
#                     }
#                 }
#             }
#         }
#         if (DoNotConfirm == FALSE)
# #endif /* COM_ENABLE_NTIMES_TM */
#         {
#             /* Clear IPDU confirmation-pending bit */
#             *Ipdu->IsConfirmationPending_Ref = FALSE;
	.d2line		889
	diab.li		r0,0
	lwz		r3,12(r31)		# Ipdu=r31
	stb		r0,0(r3)
# 
#             /*clear update bits*/
#             if((Ipdu->IpduFlags & COM_IPDU_CLEAR_ON_CONFIRMATION) != 0)
	.d2line		892
	lhz		r0,56(r31)		# Ipdu=r31
	se_btsti		r0,26
	bc		1,2,.L227	# eq
#             {
#                 SchM_Enter_Com_COM_TXCONF_TXIPDU();
	.d2line		894
	bl		SchM_Enter_Com_COM_TXCONF_TXIPDU
#                 Com_ClearIpduUpdateBits(Ipdu);
	.d2line		895
	mr		r3,r31		# Ipdu=r3 Ipdu=r31
	bl		Com_ClearIpduUpdateBits
#                 SchM_Exit_Com_COM_TXCONF_TXIPDU();
	.d2line		896
	bl		SchM_Exit_Com_COM_TXCONF_TXIPDU
.L227:
#             }
# #if COM_ENABLE_TX_DM == STD_ON
#             /*REQ: [COM697]*/
#             Com_RestartTxDm(Ipdu);
# #endif /* COM_ENABLE_TX_DM */
# 
#             /* Check if IPDU processing is IMMEDIATE */
#             /* REQ: [Com119_Conf] IMMEDIATE: the signal confirmations are performed in Com_TxConfirmation */
#             if((uint16)(Ipdu->IpduFlags & COM_TXIPDU_IMMEDIATE) != (uint16)0)
	.d2line		905
	lhz		r0,56(r31)		# Ipdu=r31
	se_btsti		r0,31
	bc		1,2,.L228	# eq
#             {
#                 /* either a non Ntimes or a Ntimes with expired counter */
#                 /* notify Ipdu signals */
#                 Com_NotifySignals(Ipdu->Signals_Index,
	.d2line		909
	lhz		r3,38(r31)		# Ipdu=r3 Ipdu=r31
	lhz		r4,40(r31)		# Ipdu=r31
	diab.li		r5,0
	bl		Com_NotifySignals
	b		.L225
.L228:
#                     Ipdu->NumberOfSignals,
#                     COM_NOTIFY_TX_ACK);
#             }
#             else
#             {
#                 /* REQ: [Com119_Conf] DEFERRED: signal indication / confirmations are deferred for example to a cyclic task */
#                 /* Mark IPDU Deferred-confirmation bit */
#                 *Ipdu->IsConfirmationDeferred_Ref = TRUE;
	.d2line		917
	diab.li		r0,1
	lwz		r3,16(r31)		# Ipdu=r3 Ipdu=r31
	stb		r0,0(r3)		# Ipdu=r3
.L225:
#             }
#         }
#     }
# }
	.d2line		921
	.d2epilogue_begin
.Llo77:
	lwz		r31,28(r1)		# offset r1+28  0x1c
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
.L351:
	.type		Com_Confirmation,@function
	.size		Com_Confirmation,.-Com_Confirmation
# Number of nodes = 74

# Allocations for Com_Confirmation
#	?a4		Ipdu
#	not allocated	ActiveTM
# FUNC(void, COM_CODE) Com_TxConfirmation(
	.align		2
	.section	.text_vle
        .d2line         936,22
#$$ld
.L356:

#$$bf	Com_TxConfirmation,interprocedural,rasave,nostackparams
	.globl		Com_TxConfirmation
	.d2_cfa_start __cie
Com_TxConfirmation:
.Llo78:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# TxPduId=r0
	stw		r0,20(r1)		# TxPduId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# TxPduId=r0 TxPduId=r3
	.d2prologue_end
#         VAR(PduIdType, AUTOMATIC) TxPduId)
# {
#     /* variable to store Com_TxIpdu information */
#     P2CONST(Com_TxIpdu,AUTOMATIC,COM_CONST_PB) Ipdu;
# 
# #if COM_DEV_ERROR_DETECT == STD_ON
# 
#     /* check if module is initialized */
#     if (Com_Status == COM_UNINIT)
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                 COM_INSTANCE_ID,
#                 COMServiceId_TxConfirmation,
#                 COM_E_UNINIT);
#     }
#     /* Check that ipdu is in configured range for TX ipdus */
#     else if(TxPduId >= (Com_Main->TxIpduIdArrayLength))
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                 COM_INSTANCE_ID,
#                 COMServiceId_TxConfirmation,
#                 COM_E_PARAM);
#     }
#     else
# #endif
#     {
#         /*get Tx ipdu information from ipdu id  */
#         Ipdu = &(Com_Main->TxIpdus_Ref[TxPduId]);
	.d2line		964
	rlwinm		r0,r0,0,16,31		# TxPduId=r0 TxPduId=r0
.Llo79:
	lis		r3,Com_Main@ha		# TxPduId=r3
.Llo80:
	lwz		r3,Com_Main@l(r3)		# TxPduId=r3 TxPduId=r3
	lwz		r4,32(r3)		# TxPduId=r3
	rlwinm		r3,r0,6,0,25		# TxPduId=r3 TxPduId=r0
	se_slwi		r0,2		# TxPduId=r0 TxPduId=r0
	subf		r0,r0,r3		# TxPduId=r0 TxPduId=r0 TxPduId=r3
	se_add		r0,r4		# TxPduId=r0 TxPduId=r0
.Llo81:
	mr		r3,r0		# Ipdu=r3 Ipdu=r0
# 
# #if COM_DEV_ERROR_DETECT == STD_ON
#         /* Check that ipdu is in configured range for TX ipdus
#          *  1- is not gap
#          *  2- has ComIPduHandleId(confirimation is supported for this ipdu)
#          *  3- is not Tp ipdu */
#         if(((Ipdu->IpduFlags & COM_TXIPDU_IS_IPDU) == 0 )
#                 ||((Ipdu->IpduFlags & COM_TXIPDU_HAS_COMIPDUHANDLEID) == 0 )
# #if COM_ENABLE_LARGE_DATA_TYPES == STD_ON
#                 ||((Ipdu->IpduFlags & COM_TXIPDU_TP) != 0 )
# #endif /*COM_ENABLE_LARGE_DATA_TYPES */
#         )
#         {
#             (void)Det_ReportError(COM_MODULE_ID,
#                     COM_INSTANCE_ID,
#                     COMServiceId_TxConfirmation,
#                     COM_E_PARAM);
#         }
#         else
# #endif
#         {
#             Com_Confirmation(Ipdu);
	.d2line		986
	mr		r3,r3		# Ipdu=r3 Ipdu=r3
	bl		Com_Confirmation
#         }
#     }
# }
	.d2line		989
	.d2epilogue_begin
.Llo82:
	lwz		r0,20(r1)		# TxPduId=r0
	mtspr		lr,r0		# TxPduId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L357:
	.type		Com_TxConfirmation,@function
	.size		Com_TxConfirmation,.-Com_TxConfirmation
# Number of nodes = 15

# Allocations for Com_TxConfirmation
#	?a4		TxPduId
#	?a5		$$50
#	?a6		Ipdu
# FUNC(void, COM_CODE) Com_TriggerIPDUSend(
	.align		2
	.section	.text_vle
        .d2line         1196,22
#$$ld
.L364:

#$$bf	Com_TriggerIPDUSend,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Com_TriggerIPDUSend
	.d2_cfa_start __cie
Com_TriggerIPDUSend:
.Llo83:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# PduId=r4 PduId=r3
	.d2prologue_end
#         VAR(PduIdType, AUTOMATIC) PduId)
# {
# #if COM_DEV_ERROR_DETECT == STD_ON
#     /* check if module is initialized */
#     if (Com_Status == COM_UNINIT)
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                 COM_INSTANCE_ID,
#                 COMServiceId_TriggerIPDUSend,
#                 COM_E_UNINIT);
#     }
#     else
#     {
# #endif /* COM_DEV_ERROR_DETECT */
#         CONSTP2CONST(Com_TxIpdu,AUTOMATIC,COM_CONST_PB) TxIpdu = &(Com_Main->TxIpdus_Ref[PduId]);
	.d2line		1211
	rlwinm		r4,r4,0,16,31		# PduId=r4 PduId=r4
.Llo84:
	lis		r3,Com_Main@ha
.Llo85:
	lwz		r3,Com_Main@l(r3)
	lwz		r5,32(r3)		# TxIpdu=r5
.Llo89:
	rlwinm		r3,r4,6,0,25		# PduId=r4
	se_slwi		r4,2		# PduId=r4 PduId=r4
	subf		r4,r4,r3		# PduId=r4 PduId=r4
	se_add		r4,r5		# PduId=r4 PduId=r4 TxIpdu=r5
.Llo86:
	mr		r5,r4		# TxIpdu=r5 TxIpdu=r4
# #if COM_DEV_ERROR_DETECT == STD_ON
#         /* check if IPDU Id is in configured range and if Id is for a valid Tx IPDU
#          */
#         if((PduId >= Com_Main->TxIpduIdArrayLength)
#                     ||((TxIpdu->IpduFlags & COM_TXIPDU_IS_IPDU) ==0 ) )
#         {
#             (void)Det_ReportError(COM_MODULE_ID,
#                     COM_INSTANCE_ID,
#                     COMServiceId_TriggerIPDUSend,
#                     COM_E_PARAM);
#         }
#         else
# #endif /* COM_DEV_ERROR_DETECT */
#         {
#             /* Set IPDU pending-for-transmission bit */
#             *TxIpdu->IsTxPending_Ref = TRUE;
	.d2line		1227
.Llo90:
	diab.li		r3,1
.Llo91:
	lwz		r4,8(r5)		# PduId=r4 TxIpdu=r5
.Llo87:
	stb		r3,0(r4)		# PduId=r4
#         }
# #if COM_DEV_ERROR_DETECT == STD_ON
#     }
# #endif /* COM_DEV_ERROR_DETECT */
# }
	.d2line		1232
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo88:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L365:
	.type		Com_TriggerIPDUSend,@function
	.size		Com_TriggerIPDUSend,.-Com_TriggerIPDUSend
# Number of nodes = 18

# Allocations for Com_TriggerIPDUSend
#	?a4		PduId
#	?a5		$$51
#	?a6		TxIpdu
# FUNC(Std_ReturnType,COM_CODE) Com_TriggerTransmit(
	.align		2
	.section	.text_vle
        .d2line         1249,31
#$$ld
.L372:

#$$bf	Com_TriggerTransmit,interprocedural,rasave,nostackparams
	.globl		Com_TriggerTransmit
	.d2_cfa_start __cie
Com_TriggerTransmit:
.Llo92:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# TxPduId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# TxPduId=r0 TxPduId=r3
	mr		r31,r4		# PduInfoPtr=r31 PduInfoPtr=r4
	.d2prologue_end
#         VAR(PduIdType, AUTOMATIC) TxPduId,
#         P2VAR(PduInfoType, AUTOMATIC, COM_APPL_DATA) PduInfoPtr)
# {
#     P2VAR(uint8, AUTOMATIC, COM_APPL_DATA) SourceData;
#     P2CONST(Com_TxIpdu, AUTOMATIC, COM_CONST_PB) Ipdu;
#     VAR(PduLengthType, AUTOMATIC) CopyLength;
#     VAR(uint16, AUTOMATIC) Index;
# 
#     /* PRQA S 1 2981 */ /*Misra 21.1 initialization is redundant. Needed for some pre-compile variant */
#     VAR(Std_ReturnType,AUTOMATIC) ReturnValue = E_OK;
	.d2line		1259
	diab.li		r29,0		# ReturnValue=r29
# #if COM_ENABLE_IPDU_CALLOUT == STD_ON
#     VAR(uint8, AUTOMATIC)  ActiveTM;
# #endif
# 
# #if COM_DEV_ERROR_DETECT == STD_ON
#     /* check if module is initialized */
#     if (Com_Status == COM_UNINIT)
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                 COM_INSTANCE_ID,
#                 COMServiceId_TriggerTransmit,
#                 COM_E_UNINIT);
#         ReturnValue = E_NOT_OK;
#     }
#     /* check for any NULL ptr in PduInfo parameter */
#     else if((PduInfoPtr == NULL_PTR) ||(PduInfoPtr->SduDataPtr == NULL_PTR))
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                 COM_INSTANCE_ID,
#                 COMServiceId_TriggerTransmit,
#                 COM_E_PARAM_POINTER);
#         ReturnValue = E_NOT_OK;
#     }
#     /* check if IPDU Id is in configured range  */
#     else if(TxPduId >= Com_Main->TxIpduIdArrayLength)
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                 COM_INSTANCE_ID,
#                 COMServiceId_TriggerTransmit,
#                 COM_E_PARAM);
#         ReturnValue = E_NOT_OK;
#     }
#     else
#     {
# #endif /* COM_DEV_ERROR_DETECT */
#         Ipdu = &(Com_Main->TxIpdus_Ref[TxPduId]);
	.d2line		1295
	rlwinm		r0,r0,0,16,31		# TxPduId=r0 TxPduId=r0
.Llo93:
	lis		r3,Com_Main@ha
.Llo94:
	lwz		r3,Com_Main@l(r3)
	lwz		r30,32(r3)		# Ipdu=r30
.Llo105:
	rlwinm		r3,r0,6,0,25		# TxPduId=r0
	se_slwi		r0,2		# TxPduId=r0 TxPduId=r0
	subf		r0,r0,r3		# TxPduId=r0 TxPduId=r0
	se_add		r0,r30		# TxPduId=r0 TxPduId=r0 Ipdu=r30
.Llo95:
	mr		r30,r0		# Ipdu=r30 Ipdu=r0
# #if COM_DEV_ERROR_DETECT == STD_ON
#         /*check if Id is for a valid Tx IPDU and Noraml IPDU  */
#         if(((Ipdu->IpduFlags & COM_TXIPDU_IS_IPDU) == 0 )
# #if COM_ENABLE_LARGE_DATA_TYPES == STD_ON
#         ||((Ipdu->IpduFlags & COM_TXIPDU_TP)!=0)
# #endif /* COM_ENABLE_LARGE_DATA_TYPES */
#         )
#         {
#             (void)Det_ReportError(COM_MODULE_ID,
#                     COM_INSTANCE_ID,
#                     COMServiceId_TriggerTransmit,
#                     COM_E_PARAM);
#             ReturnValue = E_NOT_OK;
#         }
#         else
#         {
# #endif /* COM_DEV_ERROR_DETECT */
# 
#             /*
#              * [ADD_COM_20005], AUTOSAR BZ50941 implemented
#              * No data is provided and return with E_NOT_OK if PDU is not started.
#              */
#             if (*Ipdu->IsIPduGroupEnabled_Ref == FALSE)
	.d2line		1318
.Llo106:
	lwz		r3,4(r30)		# Ipdu=r30
.Llo107:
	lbz		r0,0(r3)		# TxPduId=r0
.Llo96:
	se_cmpi		r0,0		# TxPduId=r0
	bc		0,2,.L238	# ne
#             {
#                ReturnValue = E_NOT_OK;
	.d2line		1320
.Llo97:
	diab.li		r29,1		# ReturnValue=r29
.Llo100:
	b		.L239
.L238:
#             }
#             else
#             {
#                 /* Enter transmission buffer protection critical section */
#                 SchM_Enter_Com_COM_TRIGGER_TXIPDU();
	.d2line		1325
	bl		SchM_Enter_Com_COM_TRIGGER_TXIPDU
# 
#                 SourceData = Ipdu->Pdu.SduDataPtr;
	.d2line		1327
	lwz		r0,28(r30)		# TxPduId=r0 Ipdu=r30
.Llo103:
	mr		r0,r0		# SourceData=r0 SourceData=r0
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#                 /*Check if Ipdu contains dynamic signal to be added for SduLength*/
#                 if(Ipdu->DynIndex != COM_INVALID_DYN_INDEX)
#                 {
#                     P2VAR(uint16,AUTOMATIC, COM_VAR_PB) DynSignalLength = &(Com_Main->DynLength_Ref[Ipdu->DynIndex]);
#                     CopyLength = (Ipdu->Pdu).SduLength + *DynSignalLength;
#                 }
#                 else
# #endif /* COM_ENABLE_DYNAMIC_SIGNALS */
#                 {
#                     CopyLength = (Ipdu->Pdu).SduLength;
	.d2line		1338
.Llo104:
	lhz		r5,32(r30)		# Ipdu=r30
.Llo108:
	mr		r5,r5		# CopyLength=r5 CopyLength=r5
#                 }
# #if COM_ENABLE_IPDU_CALLOUT == STD_ON
#                 {
#                     PduInfoType pduInfo;
#                     pduInfo.SduDataPtr = Ipdu->Pdu.SduDataPtr;
#                     pduInfo.SduLength = CopyLength;
#                     if(Com_IpduTriggerCallOut_Array[Ipdu->IpduTriggerCalloutIndex] != NULL_PTR)
#                     {
#                         COM_CALLOUT(Com_IpduTriggerCallOut_Array, Ipdu->IpduTriggerCalloutIndex, TxPduId, &pduInfo);
# #if COM_AR_VERSION != 403
#                         CopyLength = pduInfo.SduLength;
# #endif
#                     }
#                     /* Only for transmission mode none, call the IPDU callout, for other
#                      TMs, it should have been already called in main function */
# #if COM_ENABLE_TMS == STD_ON
#                     ActiveTM = (*Ipdu->CurrentTxMode_Ref != FALSE)? COM_TXMODETRUE_INDEX: COM_TXMODEFALSE_INDEX;
# #else
#                     ActiveTM = COM_TXMODETRUE_INDEX;
# #endif
#                     if((Com_TxModeIsNone(Ipdu, ActiveTM ) == TRUE)
#                             && (Com_TxIpduCallOut_Array[Ipdu->TxIpduCalloutIndex] != NULL_PTR))
#                     {
#                         /* call IPDU callout */
#                         COM_CALLOUT(Com_TxIpduCallOut_Array, Ipdu->TxIpduCalloutIndex, TxPduId, &pduInfo);
# #if COM_AR_VERSION != 403
#                         CopyLength = pduInfo.SduLength;
# #endif
#                     }
#                 }
# #endif /* COM_ENABLE_IPDU_CALLOUT */
#                 /* copy Ipdu data to passed pointer */
#                 for(Index = (uint16)0; Index < CopyLength; Index++)
	.d2line		1371
	diab.li		r3,0		# Index=r3
.L240:
.Llo109:
	rlwinm		r6,r3,0,16,31		# Index=r3
	rlwinm		r4,r5,0,16,31		# CopyLength=r5
	se_cmp		r6,r4
	bc		0,0,.L242	# ge
#                 {
#                     PduInfoPtr->SduDataPtr[Index] = SourceData[Index];
	.d2line		1373
	rlwinm		r6,r3,0,16,31		# Index=r3
	lbzux		r7,r6,r0
	lwz		r4,0(r31)		# PduInfoPtr=r31
	rlwinm		r6,r3,0,16,31		# Index=r3
	stbx		r7,r4,r6
#                 }
	.d2line		1374
	diab.addi		r6,r3,1		# Index=r3
	se_addi		r3,1		# Index=r3 Index=r3
	b		.L240
.L242:
# 
#                 /* set the length in the given IpduInfo ptr */
#                 PduInfoPtr->SduLength = CopyLength;
	.d2line		1377
	sth		r5,4(r31)		# PduInfoPtr=r31 CopyLength=r5
# 
#                 if((Ipdu->IpduFlags & COM_IPDU_CLEAR_ON_TRIGGER) != 0)
	.d2line		1379
	lhz		r0,56(r30)		# TxPduId=r0 Ipdu=r30
.Llo98:
	se_btsti		r0,22		# TxPduId=r0
	bc		1,2,.L243	# eq
#                 {
#                     Com_ClearIpduUpdateBits(Ipdu);
	.d2line		1381
.Llo99:
	mr		r3,r30		# Ipdu=r3 Ipdu=r30
	bl		Com_ClearIpduUpdateBits
.L243:
#                 }
# 
#                 /* Exit transmission buffer protection critical section */
#                 SchM_Exit_Com_COM_TRIGGER_TXIPDU();
	.d2line		1385
	bl		SchM_Exit_Com_COM_TRIGGER_TXIPDU
.L239:
#             }
# #if COM_DEV_ERROR_DETECT == STD_ON
#         }
#     }
# #endif
#     return ReturnValue;
	.d2line		1391
.Llo101:
	rlwinm		r3,r29,0,24,31		# Index=r3 ReturnValue=r29
# }
	.d2line		1392
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo110:
	lwz		r0,36(r1)		# TxPduId=r0
	mtspr		lr,r0		# TxPduId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo102:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L373:
	.type		Com_TriggerTransmit,@function
	.size		Com_TriggerTransmit,.-Com_TriggerTransmit
# Number of nodes = 86

# Allocations for Com_TriggerTransmit
#	?a4		TxPduId
#	?a5		PduInfoPtr
#	?a6		$$52
#	?a7		SourceData
#	?a8		Ipdu
#	?a9		CopyLength
#	?a10		Index
#	?a11		ReturnValue

# Allocations for module
	.section	.text_vle
	.0byte		.L399
	.section	.text_vle
#$$ld
.L5:
.L476:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L472:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\ComXf_CommonTypes.h"
.L415:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\Com_Types.h"
.L391:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\Com_i.h"
.L267:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_TxHandler.c"
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
	.uleb128	8
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
	.uleb128	13
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
	.uleb128	14
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
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
	.uleb128	16
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	33
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_TxHandler.c"
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
.L268:
	.sleb128	2
	.4byte		.L264-.L2
	.byte		"Com_ProcessCycle"
	.byte		0
	.4byte		.L267
	.uleb128	379
	.uleb128	29
	.byte		0x1
	.4byte		.L265
	.4byte		.L266
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L267
	.uleb128	379
	.uleb128	29
	.byte		"IpduIndex"
	.byte		0
	.4byte		.L269
	.4byte		.L273
	.sleb128	3
	.4byte		.L267
	.uleb128	379
	.uleb128	29
	.byte		"TxModesIndex"
	.byte		0
	.4byte		.L274
	.4byte		.L275
	.section	.debug_info,,n
.L276:
	.sleb128	4
	.4byte		.L267
	.uleb128	383
	.uleb128	48
	.byte		"CurrentTimer"
	.byte		0
	.4byte		.L277
	.4byte		.L280
.L281:
	.sleb128	4
	.4byte		.L267
	.uleb128	384
	.uleb128	53
	.byte		"TxIpdu"
	.byte		0
	.4byte		.L282
	.4byte		.L287
	.section	.debug_info,,n
	.sleb128	0
.L264:
	.section	.debug_info,,n
.L292:
	.sleb128	2
	.4byte		.L289-.L2
	.byte		"Com_TrySend"
	.byte		0
	.4byte		.L267
	.uleb128	575
	.uleb128	29
	.byte		0x1
	.4byte		.L290
	.4byte		.L291
	.sleb128	3
	.4byte		.L267
	.uleb128	575
	.uleb128	29
	.byte		"Ipdu"
	.byte		0
	.4byte		.L282
	.4byte		.L293
.L294:
	.sleb128	4
	.4byte		.L267
	.uleb128	589
	.uleb128	36
	.byte		"TargetReturn"
	.byte		0
	.4byte		.L295
	.4byte		.L298
	.section	.debug_info,,n
.L299:
	.sleb128	5
	.4byte		.L267
	.uleb128	590
	.uleb128	33
	.byte		"TransmitPdu"
	.byte		0
	.4byte		.L300
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L289:
	.section	.debug_info,,n
.L306:
	.sleb128	6
	.4byte		.L303-.L2
	.byte		"Com_NotifySignals"
	.byte		0
	.4byte		.L267
	.uleb128	266
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L304
	.4byte		.L305
	.sleb128	3
	.4byte		.L267
	.uleb128	266
	.uleb128	22
	.byte		"NotifyIndex"
	.byte		0
	.4byte		.L271
	.4byte		.L307
	.sleb128	3
	.4byte		.L267
	.uleb128	266
	.uleb128	22
	.byte		"NotifyLength"
	.byte		0
	.4byte		.L271
	.4byte		.L308
	.sleb128	3
	.4byte		.L267
	.uleb128	266
	.uleb128	22
	.byte		"NotifyType"
	.byte		0
	.4byte		.L296
	.4byte		.L309
.L310:
	.sleb128	4
	.4byte		.L267
	.uleb128	271
	.uleb128	53
	.byte		"SignalPointer"
	.byte		0
	.4byte		.L311
	.4byte		.L315
.L316:
	.sleb128	4
	.4byte		.L267
	.uleb128	272
	.uleb128	27
	.byte		"Index"
	.byte		0
	.4byte		.L271
	.4byte		.L317
	.section	.debug_info,,n
	.sleb128	0
.L303:
	.section	.debug_info,,n
.L322:
	.sleb128	2
	.4byte		.L319-.L2
	.byte		"Com_TryConfirm"
	.byte		0
	.4byte		.L267
	.uleb128	787
	.uleb128	29
	.byte		0x1
	.4byte		.L320
	.4byte		.L321
	.sleb128	3
	.4byte		.L267
	.uleb128	787
	.uleb128	29
	.byte		"Ipdu"
	.byte		0
	.4byte		.L282
	.4byte		.L323
	.section	.debug_info,,n
	.sleb128	0
.L319:
	.section	.debug_info,,n
.L328:
	.sleb128	6
	.4byte		.L325-.L2
	.byte		"Com_MainFunctionTx"
	.byte		0
	.4byte		.L267
	.uleb128	159
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L326
	.4byte		.L327
.L329:
	.sleb128	4
	.4byte		.L267
	.uleb128	161
	.uleb128	31
	.byte		"TxIpduId"
	.byte		0
	.4byte		.L270
	.4byte		.L330
.L331:
	.sleb128	4
	.4byte		.L267
	.uleb128	162
	.uleb128	48
	.byte		"Ipdu"
	.byte		0
	.4byte		.L283
	.4byte		.L332
.L333:
	.sleb128	4
	.4byte		.L267
	.uleb128	163
	.uleb128	27
	.byte		"ActiveTM"
	.byte		0
	.4byte		.L296
	.4byte		.L334
.L335:
	.sleb128	4
	.4byte		.L267
	.uleb128	164
	.uleb128	28
	.byte		"TxModesIndex"
	.byte		0
	.4byte		.L271
	.4byte		.L336
	.section	.debug_info,,n
	.sleb128	0
.L325:
	.section	.debug_info,,n
.L342:
	.sleb128	7
	.4byte		.L338-.L2
	.byte		"Com_TxModeIsNone"
	.byte		0
	.4byte		.L267
	.uleb128	1648
	.uleb128	31
	.4byte		.L341
	.byte		0x1
	.4byte		.L339
	.4byte		.L340
	.sleb128	3
	.4byte		.L267
	.uleb128	1648
	.uleb128	31
	.byte		"Ipdu"
	.byte		0
	.4byte		.L282
	.4byte		.L343
	.sleb128	3
	.4byte		.L267
	.uleb128	1648
	.uleb128	31
	.byte		"ActiveTM"
	.byte		0
	.4byte		.L344
	.4byte		.L345
.L346:
	.sleb128	4
	.4byte		.L267
	.uleb128	1652
	.uleb128	29
	.byte		"IsModeNone"
	.byte		0
	.4byte		.L341
	.4byte		.L347
	.section	.debug_info,,n
	.sleb128	0
.L338:
	.section	.debug_info,,n
.L352:
	.sleb128	2
	.4byte		.L349-.L2
	.byte		"Com_Confirmation"
	.byte		0
	.4byte		.L267
	.uleb128	818
	.uleb128	29
	.byte		0x1
	.4byte		.L350
	.4byte		.L351
	.sleb128	3
	.4byte		.L267
	.uleb128	818
	.uleb128	29
	.byte		"Ipdu"
	.byte		0
	.4byte		.L282
	.4byte		.L353
	.section	.debug_info,,n
	.sleb128	0
.L349:
	.section	.debug_info,,n
.L358:
	.sleb128	6
	.4byte		.L355-.L2
	.byte		"Com_TxConfirmation"
	.byte		0
	.4byte		.L267
	.uleb128	936
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L356
	.4byte		.L357
	.sleb128	3
	.4byte		.L267
	.uleb128	936
	.uleb128	22
	.byte		"TxPduId"
	.byte		0
	.4byte		.L270
	.4byte		.L359
.L360:
	.sleb128	4
	.4byte		.L267
	.uleb128	940
	.uleb128	48
	.byte		"Ipdu"
	.byte		0
	.4byte		.L283
	.4byte		.L361
	.section	.debug_info,,n
	.sleb128	0
.L355:
	.section	.debug_info,,n
.L366:
	.sleb128	6
	.4byte		.L363-.L2
	.byte		"Com_TriggerIPDUSend"
	.byte		0
	.4byte		.L267
	.uleb128	1196
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L364
	.4byte		.L365
	.sleb128	3
	.4byte		.L267
	.uleb128	1196
	.uleb128	22
	.byte		"PduId"
	.byte		0
	.4byte		.L270
	.4byte		.L367
.L368:
	.sleb128	4
	.4byte		.L267
	.uleb128	1211
	.uleb128	57
	.byte		"TxIpdu"
	.byte		0
	.4byte		.L282
	.4byte		.L369
	.section	.debug_info,,n
	.sleb128	0
.L363:
	.section	.debug_info,,n
.L374:
	.sleb128	8
	.4byte		.L371-.L2
	.byte		"Com_TriggerTransmit"
	.byte		0
	.4byte		.L267
	.uleb128	1249
	.uleb128	31
	.4byte		.L295
	.byte		0x1
	.byte		0x1
	.4byte		.L372
	.4byte		.L373
	.sleb128	3
	.4byte		.L267
	.uleb128	1249
	.uleb128	31
	.byte		"TxPduId"
	.byte		0
	.4byte		.L270
	.4byte		.L375
	.sleb128	3
	.4byte		.L267
	.uleb128	1249
	.uleb128	31
	.byte		"PduInfoPtr"
	.byte		0
	.4byte		.L376
	.4byte		.L377
.L378:
	.sleb128	4
	.4byte		.L267
	.uleb128	1253
	.uleb128	44
	.byte		"SourceData"
	.byte		0
	.4byte		.L379
	.4byte		.L380
.L381:
	.sleb128	4
	.4byte		.L267
	.uleb128	1254
	.uleb128	50
	.byte		"Ipdu"
	.byte		0
	.4byte		.L283
	.4byte		.L382
.L383:
	.sleb128	4
	.4byte		.L267
	.uleb128	1255
	.uleb128	35
	.byte		"CopyLength"
	.byte		0
	.4byte		.L384
	.4byte		.L385
.L386:
	.sleb128	4
	.4byte		.L267
	.uleb128	1256
	.uleb128	28
	.byte		"Index"
	.byte		0
	.4byte		.L271
	.4byte		.L387
.L388:
	.sleb128	4
	.4byte		.L267
	.uleb128	1259
	.uleb128	35
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L295
	.4byte		.L389
	.section	.debug_info,,n
	.sleb128	0
.L371:
	.section	.debug_info,,n
.L390:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L391
	.uleb128	511
	.uleb128	36
	.byte		"Com_Status"
	.byte		0
	.4byte		.L392
	.0byte		.L390
.L394:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L391
	.uleb128	513
	.uleb128	55
	.byte		"Com_Main"
	.byte		0
	.4byte		.L395
.L399:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L391
	.uleb128	548
	.uleb128	48
	.byte		"Com_NotifyFunction_Array"
	.byte		0
	.4byte		.L400
	.section	.debug_info,,n
.L407:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L391
	.uleb128	549
	.uleb128	49
	.byte		"Com_TimeOutFunction_Array"
	.byte		0
	.4byte		.L408
	.section	.debug_info,,n
.L398:
	.sleb128	10
	.4byte		.L415
	.uleb128	82
	.uleb128	1
	.4byte		.L416-.L2
	.uleb128	100
	.section	.debug_info,,n
.L126:
	.sleb128	11
	.byte		"ConfigurationId"
	.byte		0
	.4byte		.L417
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L127:
	.sleb128	11
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L419
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L128:
	.sleb128	11
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L419
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L129:
	.sleb128	11
	.byte		"IpduGroups_Ref"
	.byte		0
	.4byte		.L421
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L130:
	.sleb128	11
	.byte		"RxIpdus_Ref"
	.byte		0
	.4byte		.L426
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L131:
	.sleb128	11
	.byte		"RxIpdusDeferred_Ref"
	.byte		0
	.4byte		.L431
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L132:
	.sleb128	11
	.byte		"RxIpdusImmediate_Ref"
	.byte		0
	.4byte		.L431
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L133:
	.sleb128	11
	.byte		"RxIpdusRxDM_Ref"
	.byte		0
	.4byte		.L431
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L134:
	.sleb128	11
	.byte		"TxIpdus_Ref"
	.byte		0
	.4byte		.L282
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L135:
	.sleb128	11
	.byte		"Signals_Ref"
	.byte		0
	.4byte		.L433
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L136:
	.sleb128	11
	.byte		"IpduToSignal_Ref"
	.byte		0
	.4byte		.L434
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L137:
	.sleb128	11
	.byte		"GroupSignalToIPdu_Ref"
	.byte		0
	.4byte		.L434
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L138:
	.sleb128	11
	.byte		"TxModes_Ref"
	.byte		0
	.4byte		.L438
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L139:
	.sleb128	11
	.byte		"CycleTimers_Ref"
	.byte		0
	.4byte		.L277
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L140:
	.sleb128	11
	.byte		"DeferredLength_Ref"
	.byte		0
	.4byte		.L443
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L141:
	.sleb128	11
	.byte		"DeferredReceivedIPdu_Ref"
	.byte		0
	.4byte		.L445
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L142:
	.sleb128	11
	.byte		"DeferredReceivedIPduArrayLength"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L143:
	.sleb128	11
	.byte		"RxIpdusFlags"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L144:
	.sleb128	11
	.byte		"Com_ZeroMask"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L145:
	.sleb128	11
	.byte		"SignalGroup_base"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L146:
	.sleb128	11
	.byte		"MemberSignal_base"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	78
	.byte		0x1
.L147:
	.sleb128	11
	.byte		"SignalArrayLength"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L148:
	.sleb128	11
	.byte		"SignalGroupArrayLength"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	82
	.byte		0x1
.L149:
	.sleb128	11
	.byte		"MemberSignalArrayLength"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L150:
	.sleb128	11
	.byte		"TxIpduIdArrayLength"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	86
	.byte		0x1
.L151:
	.sleb128	11
	.byte		"RxIpduIdArrayLength"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L152:
	.sleb128	11
	.byte		"RxIPduDeferredArrayLength"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	90
	.byte		0x1
.L153:
	.sleb128	11
	.byte		"RxIPduImmediateArralLength"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L154:
	.sleb128	11
	.byte		"RxIPduRxDMArralLength"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	94
	.byte		0x1
.L155:
	.sleb128	11
	.byte		"IpduGroupArrayLength"
	.byte		0
	.4byte		.L296
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
	.sleb128	0
.L416:
.L425:
	.sleb128	10
	.4byte		.L415
	.uleb128	82
	.uleb128	1
	.4byte		.L447-.L2
	.uleb128	24
.L115:
	.sleb128	11
	.byte		"DescendentGroupList_Ref"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L116:
	.sleb128	11
	.byte		"ChildGroupList_Ref"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L117:
	.sleb128	11
	.byte		"AncestorGroupList_Ref"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L118:
	.sleb128	11
	.byte		"DescendentListLength"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L119:
	.sleb128	11
	.byte		"ChildListLength"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L120:
	.sleb128	11
	.byte		"AncestorListLength"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L121:
	.sleb128	11
	.byte		"ParentListLength"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L122:
	.sleb128	11
	.byte		"Flags"
	.byte		0
	.4byte		.L296
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L447:
.L430:
	.sleb128	10
	.4byte		.L415
	.uleb128	82
	.uleb128	1
	.4byte		.L450-.L2
	.uleb128	40
.L103:
	.sleb128	11
	.byte		"RxIPduId"
	.byte		0
	.4byte		.L270
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L104:
	.sleb128	11
	.byte		"RxGroupList_Ref"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L105:
	.sleb128	11
	.byte		"SignalIndex_Ref"
	.byte		0
	.4byte		.L434
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L106:
	.sleb128	11
	.byte		"ForeGroundBuffer_Ref"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L107:
	.sleb128	11
	.byte		"BackGroundBuffer_Ref"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L108:
	.sleb128	11
	.byte		"RxIpduFlags_Ref"
	.byte		0
	.4byte		.L451
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L109:
	.sleb128	11
	.byte		"IsBackGroundBufferUpdated_Ref"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L110:
	.sleb128	11
	.byte		"RxGroupListLength"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L111:
	.sleb128	11
	.byte		"NumberOfSignals"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L112:
	.sleb128	11
	.byte		"IpduLength"
	.byte		0
	.4byte		.L384
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L113:
	.sleb128	11
	.byte		"IPduFlags"
	.byte		0
	.4byte		.L296
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L114:
	.sleb128	11
	.byte		"Com_DeferredNotificationCall_Ref"
	.byte		0
	.4byte		.L457
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L450:
.L459:
	.sleb128	10
	.4byte		.L415
	.uleb128	82
	.uleb128	1
	.4byte		.L460-.L2
	.uleb128	4
.L101:
	.sleb128	11
	.byte		"Com_DeferredNotificationIndex"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L102:
	.sleb128	11
	.byte		"Com_DeferredNotificationIndexType"
	.byte		0
	.4byte		.L296
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L460:
.L454:
	.sleb128	10
	.4byte		.L415
	.uleb128	82
	.uleb128	1
	.4byte		.L461-.L2
	.uleb128	2
.L99:
	.sleb128	11
	.byte		"DeferredIPduReceived"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L100:
	.sleb128	11
	.byte		"IsBackGroundBufferUpdated"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L461:
.L286:
	.sleb128	10
	.4byte		.L415
	.uleb128	82
	.uleb128	1
	.4byte		.L462-.L2
	.uleb128	60
.L81:
	.sleb128	11
	.byte		"TxGroupList_Ref"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L82:
	.sleb128	11
	.byte		"IsIPduGroupEnabled_Ref"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L83:
	.sleb128	11
	.byte		"IsTxPending_Ref"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L84:
	.sleb128	11
	.byte		"IsConfirmationPending_Ref"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L85:
	.sleb128	11
	.byte		"IsConfirmationDeferred_Ref"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L86:
	.sleb128	11
	.byte		"CurrentTxMode_Ref"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L87:
	.sleb128	11
	.byte		"IsTransmissionFailed_Ref"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L88:
	.sleb128	11
	.byte		"Pdu"
	.byte		0
	.4byte		.L300
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L89:
	.sleb128	11
	.byte		"TxGroupListLength"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L90:
	.sleb128	11
	.byte		"Signals_Index"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L91:
	.sleb128	11
	.byte		"NumberOfSignals"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L92:
	.sleb128	11
	.byte		"SignalsWithUpdateBit_Ref"
	.byte		0
	.4byte		.L463
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L93:
	.sleb128	11
	.byte		"NumberOfSignalsWithUpdateBit"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L94:
	.sleb128	11
	.byte		"InitializeLength"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
.L95:
	.sleb128	11
	.byte		"TxMode"
	.byte		0
	.4byte		.L464
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L96:
	.sleb128	11
	.byte		"TargetId"
	.byte		0
	.4byte		.L270
	.sleb128	2
	.byte		0x23
	.uleb128	54
	.byte		0x1
.L97:
	.sleb128	11
	.byte		"IpduFlags"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L98:
	.sleb128	11
	.byte		"UnusedValue"
	.byte		0
	.4byte		.L296
	.sleb128	2
	.byte		0x23
	.uleb128	58
	.byte		0x1
	.sleb128	0
.L462:
.L314:
	.sleb128	10
	.4byte		.L415
	.uleb128	82
	.uleb128	1
	.4byte		.L466-.L2
	.uleb128	56
.L60:
	.sleb128	11
	.byte		"ForeGroundBuffer_Ref"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L61:
	.sleb128	11
	.byte		"BackGroundBuffer_Ref"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L62:
	.sleb128	11
	.byte		"ShadowBuffer_Ref"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L63:
	.sleb128	11
	.byte		"UpdateBit_Ref"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L64:
	.sleb128	11
	.byte		"InitValue_Ref"
	.byte		0
	.4byte		.L467
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L65:
	.sleb128	11
	.byte		"IPDU"
	.byte		0
	.4byte		.L270
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L66:
	.sleb128	11
	.byte		"InvalidIndex"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L67:
	.sleb128	11
	.byte		"BytePosition"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L68:
	.sleb128	11
	.byte		"NotifyFunctionIndex"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L69:
	.sleb128	11
	.byte		"TimeoutFunctionIndex"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L70:
	.sleb128	11
	.byte		"SignalFlagsLT"
	.byte		0
	.4byte		.L296
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L71:
	.sleb128	11
	.byte		"UpdateBitMask"
	.byte		0
	.4byte		.L296
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L72:
	.sleb128	11
	.byte		"NotifyLength"
	.byte		0
	.4byte		.L296
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L73:
	.sleb128	11
	.byte		"MinimumReceiveLength"
	.byte		0
	.4byte		.L384
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L74:
	.sleb128	11
	.byte		"ComXf_Signal"
	.byte		0
	.4byte		.L469
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L466:
.L442:
	.sleb128	10
	.4byte		.L415
	.uleb128	82
	.uleb128	1
	.4byte		.L471-.L2
	.uleb128	4
.L58:
	.sleb128	11
	.byte		"Period"
	.byte		0
	.4byte		.L279
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L59:
	.sleb128	11
	.byte		"Offset"
	.byte		0
	.4byte		.L279
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L471:
.L470:
	.sleb128	10
	.4byte		.L472
	.uleb128	44
	.uleb128	1
	.4byte		.L473-.L2
	.uleb128	20
.L49:
	.sleb128	11
	.byte		"SignBitMask"
	.byte		0
	.4byte		.L417
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L50:
	.sleb128	11
	.byte		"BufferLength"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L51:
	.sleb128	11
	.byte		"Flags"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L52:
	.sleb128	11
	.byte		"Type"
	.byte		0
	.4byte		.L474
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L53:
	.sleb128	11
	.byte		"TransferProperty"
	.byte		0
	.4byte		.L296
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L54:
	.sleb128	11
	.byte		"PackingType"
	.byte		0
	.4byte		.L296
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L55:
	.sleb128	11
	.byte		"Mask1"
	.byte		0
	.4byte		.L296
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L56:
	.sleb128	11
	.byte		"Mask2"
	.byte		0
	.4byte		.L296
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L57:
	.sleb128	11
	.byte		"shift"
	.byte		0
	.4byte		.L296
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L473:
	.section	.debug_info,,n
.L301:
	.sleb128	12
	.4byte		.L476
	.uleb128	69
	.uleb128	1
	.4byte		.L477-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L45:
	.sleb128	11
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L379
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L46:
	.sleb128	11
	.byte		"SduLength"
	.byte		0
	.4byte		.L384
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L477:
	.section	.debug_info,,n
.L393:
	.sleb128	13
	.4byte		.L415
	.uleb128	82
	.uleb128	1
	.4byte		.L478-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	14
	.byte		"COM_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"COM_INIT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L478:
.L475:
	.sleb128	13
	.4byte		.L472
	.uleb128	44
	.uleb128	1
	.4byte		.L479-.L2
	.uleb128	4
	.sleb128	14
	.byte		"COM_BOOLEAN"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"COM_UINT8"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"COM_UINT16"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"COM_UINT32"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"COM_SINT8"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"COM_SINT16"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"COM_SINT32"
	.byte		0
	.sleb128	6
	.sleb128	14
	.byte		"COM_BYTES"
	.byte		0
	.sleb128	7
	.sleb128	14
	.byte		"COM_UINT8_DYN"
	.byte		0
	.sleb128	8
	.sleb128	14
	.byte		"COM_FLOAT32"
	.byte		0
	.sleb128	9
	.sleb128	14
	.byte		"COM_FLOAT64"
	.byte		0
	.sleb128	10
	.sleb128	0
.L479:
	.section	.debug_info,,n
.L272:
	.sleb128	15
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L271:
	.sleb128	16
	.byte		"uint16"
	.byte		0
	.4byte		.L272
.L270:
	.sleb128	16
	.byte		"PduIdType"
	.byte		0
	.4byte		.L271
	.section	.debug_info,,n
.L269:
	.sleb128	17
	.4byte		.L270
.L274:
	.sleb128	17
	.4byte		.L271
.L279:
	.sleb128	16
	.byte		"Com_Timer"
	.byte		0
	.4byte		.L271
	.section	.debug_info,,n
.L278:
	.sleb128	18
	.4byte		.L279
.L277:
	.sleb128	17
	.4byte		.L278
.L285:
	.sleb128	16
	.byte		"Com_TxIpdu"
	.byte		0
	.4byte		.L286
.L284:
	.sleb128	17
	.4byte		.L285
.L283:
	.sleb128	18
	.4byte		.L284
.L282:
	.sleb128	17
	.4byte		.L283
.L297:
	.sleb128	15
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L296:
	.sleb128	16
	.byte		"uint8"
	.byte		0
	.4byte		.L297
.L295:
	.sleb128	16
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L296
.L300:
	.sleb128	16
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L301
.L313:
	.sleb128	16
	.byte		"Com_SignalsPB"
	.byte		0
	.4byte		.L314
.L312:
	.sleb128	17
	.4byte		.L313
.L311:
	.sleb128	18
	.4byte		.L312
.L341:
	.sleb128	16
	.byte		"boolean"
	.byte		0
	.4byte		.L297
.L344:
	.sleb128	17
	.4byte		.L296
.L376:
	.sleb128	18
	.4byte		.L300
.L379:
	.sleb128	18
	.4byte		.L296
.L384:
	.sleb128	16
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L271
.L392:
	.sleb128	16
	.byte		"Com_StatusType"
	.byte		0
	.4byte		.L393
.L397:
	.sleb128	16
	.byte		"Com_ConfigType"
	.byte		0
	.4byte		.L398
.L396:
	.sleb128	17
	.4byte		.L397
.L395:
	.sleb128	18
	.4byte		.L396
	.section	.debug_info,,n
.L405:
	.sleb128	19
	.4byte		.L406-.L2
	.byte		0x1
	.sleb128	0
.L406:
.L404:
	.sleb128	18
	.4byte		.L405
.L403:
	.sleb128	16
	.byte		"Com_NotifyFunction"
	.byte		0
	.4byte		.L404
.L402:
	.sleb128	17
	.4byte		.L403
	.section	.debug_info,,n
.L400:
	.sleb128	20
	.4byte		.L401-.L2
	.4byte		.L402
	.section	.debug_info,,n
	.sleb128	21
	.sleb128	0
.L401:
.L413:
	.sleb128	19
	.4byte		.L414-.L2
	.byte		0x1
	.sleb128	0
.L414:
.L412:
	.sleb128	18
	.4byte		.L413
.L411:
	.sleb128	16
	.byte		"Com_TimeOutFunction"
	.byte		0
	.4byte		.L412
.L410:
	.sleb128	17
	.4byte		.L411
.L408:
	.sleb128	20
	.4byte		.L409-.L2
	.4byte		.L410
	.sleb128	21
	.sleb128	0
.L409:
.L418:
	.sleb128	15
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L417:
	.sleb128	16
	.byte		"uint32"
	.byte		0
	.4byte		.L418
.L420:
	.sleb128	17
	.4byte		.L417
.L419:
	.sleb128	18
	.4byte		.L420
.L424:
	.sleb128	16
	.byte		"Com_IpduGroup"
	.byte		0
	.4byte		.L425
.L423:
	.sleb128	17
	.4byte		.L424
.L422:
	.sleb128	18
	.4byte		.L423
.L421:
	.sleb128	17
	.4byte		.L422
.L429:
	.sleb128	16
	.byte		"Com_RxIpdu"
	.byte		0
	.4byte		.L430
.L428:
	.sleb128	17
	.4byte		.L429
.L427:
	.sleb128	18
	.4byte		.L428
.L426:
	.sleb128	17
	.4byte		.L427
.L432:
	.sleb128	18
	.4byte		.L426
.L431:
	.sleb128	17
	.4byte		.L432
.L433:
	.sleb128	17
	.4byte		.L311
.L437:
	.sleb128	16
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L271
.L436:
	.sleb128	17
	.4byte		.L437
.L435:
	.sleb128	18
	.4byte		.L436
.L434:
	.sleb128	17
	.4byte		.L435
.L441:
	.sleb128	16
	.byte		"Com_TxModeType"
	.byte		0
	.4byte		.L442
.L440:
	.sleb128	17
	.4byte		.L441
.L439:
	.sleb128	18
	.4byte		.L440
.L438:
	.sleb128	17
	.4byte		.L439
.L444:
	.sleb128	18
	.4byte		.L384
.L443:
	.sleb128	17
	.4byte		.L444
.L445:
	.sleb128	18
	.4byte		.L270
.L446:
	.sleb128	17
	.4byte		.L379
.L449:
	.sleb128	18
	.4byte		.L269
.L448:
	.sleb128	17
	.4byte		.L449
.L453:
	.sleb128	16
	.byte		"Com_RxIPduFlag"
	.byte		0
	.4byte		.L454
.L452:
	.sleb128	18
	.4byte		.L453
.L451:
	.sleb128	17
	.4byte		.L452
.L456:
	.sleb128	18
	.4byte		.L341
.L455:
	.sleb128	17
	.4byte		.L456
.L458:
	.sleb128	16
	.byte		"Com_DeferredNotificationCall"
	.byte		0
	.4byte		.L459
.L457:
	.sleb128	18
	.4byte		.L458
.L463:
	.sleb128	18
	.4byte		.L274
.L464:
	.sleb128	20
	.4byte		.L465-.L2
	.4byte		.L271
	.section	.debug_info,,n
	.sleb128	22
	.uleb128	0
	.sleb128	0
.L465:
.L468:
	.sleb128	18
	.4byte		.L344
.L467:
	.sleb128	17
	.4byte		.L468
.L469:
	.sleb128	16
	.byte		"ComXf_SignalsPB"
	.byte		0
	.4byte		.L470
.L474:
	.sleb128	16
	.byte		"Com_SignalType"
	.byte		0
	.4byte		.L475
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L273:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),5
	.d2locend
.L275:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),0
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),0
	.d2locend
.L280:
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo9),3
	.d2locend
.L287:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),4
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo9),5
	.d2locend
.L293:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),31
	.d2locend
.L298:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),0
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),0
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo15),0
	.d2locend
.L307:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),3
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),31
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locend
.L308:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),4
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),30
	.d2locend
.L309:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),5
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),29
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),5
	.d2locend
.L315:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),3
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),3
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo33),3
	.d2locend
.L317:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo33),28
	.d2locend
.L323:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),3
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),4
	.d2locend
.L330:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),31
	.d2locend
.L332:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),3
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),3
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo46),30
	.d2locend
.L334:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo48),0
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),0
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo51),0
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),0
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),0
	.d2locend
.L336:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo59),4
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),4
	.d2locend
.L343:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),3
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locend
.L345:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),4
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo65),0
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo66),4
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),0
	.d2locend
.L347:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo64),4
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo65),3
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo66),4
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),3
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),3
	.d2locend
.L353:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),3
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),31
	.d2locend
.L359:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),3
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),0
	.d2locend
.L361:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),0
	.d2locend
.L367:
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),3
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),4
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),4
	.d2locend
.L369:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),5
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo87),4
	.d2locend
.L375:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),3
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),0
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),0
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),0
	.d2locend
.L377:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo97),4
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo99),31
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),4
	.d2locend
.L380:
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),0
	.d2locend
.L382:
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo106),30
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo96),0
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo101),30
	.d2locend
.L385:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo99),5
	.d2locend
.L387:
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo99),3
	.d2locend
.L389:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo110),29
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Com_TriggerTransmit"
	.wrcm.nstrlist "calls", "Com_ClearIpduUpdateBits","SchM_Enter_Com_COM_TRIGGER_TXIPDU","SchM_Exit_Com_COM_TRIGGER_TXIPDU"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Com_TriggerIPDUSend"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Com_TxConfirmation"
	.wrcm.nstrlist "calls", "Com_Confirmation"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Com_Confirmation"
	.wrcm.nstrlist "calls", "Com_ClearIpduUpdateBits","Com_NotifySignals","Com_TxModeIsNone","SchM_Enter_Com_COM_TXCONF_TXIPDU","SchM_Exit_Com_COM_TXCONF_TXIPDU"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Com_TxModeIsNone"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Com_MainFunctionTx"
	.wrcm.nstrlist "calls", "Com_ProcessCycle","Com_TryConfirm","Com_TrySend"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Com_TryConfirm"
	.wrcm.nstrlist "calls", "Com_NotifySignals"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Com_NotifySignals"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Com_TrySend"
	.wrcm.nstrlist "calls", "Com_ClearIpduUpdateBits","PduR_ComTransmit","SchM_Enter_Com_COM_MAIN_TXIPDU","SchM_Exit_Com_COM_MAIN_TXIPDU"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Com_ProcessCycle"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Com_TxHandler.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Com_TxHandler.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Com_TxHandler.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Com_TxHandler.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Com_TxHandler.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Com_TxHandler.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\Com\ssc\make\..\src\Com_TxHandler.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
