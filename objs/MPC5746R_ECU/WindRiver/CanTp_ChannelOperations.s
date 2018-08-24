#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTp_ChannelOperations.c"
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
# FUNC(void, CANTP_CODE) CanTp_StopChannel
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_ChannelOperations.c"
        .d2line         85,24
#$$ld
.L348:

#$$bf	CanTp_StopChannel,interprocedural,rasave,nostackparams
	.globl		CanTp_StopChannel
	.d2_cfa_start __cie
CanTp_StopChannel:
.Llo1:
	stwu		r1,-80(r1)		
	.d2_cfa_def_cfa_offset	80
	mfspr		r0,lr
	stmw		r29,68(r1)		# offset r1+68  0x44
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,84(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CanTpChannel_p=r31 CanTpChannel_p=r3
	mr		r0,r4		# CallDemDet=r0 CallDemDet=r4
	mr		r30,r5		# PdurResult=r30 PdurResult=r5
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p,
#     CONST(boolean, AUTOMATIC) CallDemDet,
#     CONST(NotifResultType, AUTOMATIC) PdurResult
# )
# {
#     /* Copy Channel informations to local scoped structure.
#      Reading the data is done from this local structure,
#      so the global data can be set to default in exclusive area*/
#     CONST(CanTp_Channel_t, AUTOMATIC) CanTpChannel_results = *CanTpChannel_p;
	.d2line		95
	mr		r7,r31		# CanTpChannel_p=r7 CanTpChannel_p=r31
	diab.addi		r7,r7,-2
	diab.addi		r6,r1,6
	diab.li		r5,13
.Llo24:
	mtspr		ctr,r5
.L367:
.Llo2:
	lhzu		r4,2(r7)
.Llo3:
	lhzu		r5,2(r7)
	sthu		r4,2(r6)
	sthu		r5,2(r6)
	bc		2,0,.L367
# 
#     /* set Channel to initial state*/
#     CanTpChannel_p->ProcessedLength = 0U;
	.d2line		98
	diab.li		r4,0
	sth		r4,10(r31)		# CanTpChannel_p=r31
#     CanTpChannel_p->SequenceNumber_u8 = CANTP_SEQUENCE_START_ONE;
	.d2line		99
	diab.li		r3,1
	stb		r3,20(r31)		# CanTpChannel_p=r31
#     CanTpChannel_p->ProvidedBufferSize = 0U;
	.d2line		100
	sth		r4,12(r31)		# CanTpChannel_p=r31
#     CanTpChannel_p->BlockSize_u16 = 0U;
	.d2line		101
	sth		r4,16(r31)		# CanTpChannel_p=r31
#     CanTpChannel_p->TempLength_u8 = 0U;
	.d2line		102
	stb		r4,29(r31)		# CanTpChannel_p=r31
#     CanTpChannel_p->CanIfDLC_u8 = 0U;
	.d2line		103
	stb		r4,30(r31)		# CanTpChannel_p=r31
#     CanTpChannel_p->WftCounter_u16 = 0U;
	.d2line		104
	sth		r4,18(r31)		# CanTpChannel_p=r31
#     CanTpChannel_p->ULayerIndFlag_b = CANTP_TRUE;
	.d2line		105
	stb		r3,39(r31)		# CanTpChannel_p=r31
#     CanTpChannel_p->TimeoutTicks_u16 = 0U;
	.d2line		106
	sth		r4,4(r31)		# CanTpChannel_p=r31
#     CanTpChannel_p->StMin_u8 = CANTP_STMIN_MAX_MS;
	.d2line		107
	diab.li		r3,127
	stb		r3,21(r31)		# CanTpChannel_p=r31
#     CanTpChannel_p->ShutdownFlag_b = CANTP_FALSE;
	.d2line		108
	stb		r4,40(r31)		# CanTpChannel_p=r31
#     CanTpChannel_p->State_u8 = CANTP_CH_IDLE;
	.d2line		109
	stb		r4,14(r31)		# CanTpChannel_p=r31
#     CanTpChannel_p->StMinTicks_u16 = 0U;
	.d2line		110
	sth		r4,6(r31)		# CanTpChannel_p=r31
#     CanTpChannel_p->RequiredBufferSize = 0U;
	.d2line		111
	sth		r4,46(r31)		# CanTpChannel_p=r31
#     CanTpChannel_p->LastCFofNSduFlag_b = CANTP_FALSE;
	.d2line		112
	stb		r4,44(r31)		# CanTpChannel_p=r31
# 
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#     CanTpChannel_p->CallerApiId = 0U;
	.d2line		115
	stb		r4,48(r31)		# CanTpChannel_p=r31
# #endif
# 
#     /*If the Channel is in IDLE State*/
#     if(CANTP_CH_IDLE != CanTpChannel_results.State_u8)
	.d2line		119
	lbz		r3,22(r1)
	se_cmpi		r3,0
	bc		1,2,.L299	# eq
#     {
#         /* Check notification to upper layer */
#         if(CANTP_TRUE == CanTpChannel_results.ULayerIndFlag_b)
	.d2line		122
	lbz		r3,47(r1)
	se_cmpi		r3,1
	bc		0,2,.L299	# ne
#         {
#             if(TRUE == CallDemDet)
	.d2line		124
	rlwinm		r0,r0,0,24,31		# CallDemDet=r0 CallDemDet=r0
	se_cmpi		r0,1		# CallDemDet=r0
	bc		0,2,.L303	# ne
#             {
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#                 /*Inform DET with the appropriate value*/
#                 (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		128
.Llo7:
	lbz		r5,56(r1)
	diab.li		r3,35
	diab.li		r4,0
	diab.li		r6,176
	bl		Det_ReportError
.L303:
#                         CanTpChannel_results.CallerApiId, CANTP_E_COM);
# #endif
#             }
#             else
#             {
#                 /* Do nothing */
#             }
# 
#             /*Check if the state is in RX mode*/
#             if(CANTP_CH_RX_PROCESSING == (uint8) (CanTpChannel_results.State_u8 & CANTP_STATE_MASK))
	.d2line		138
	lbz		r0,22(r1)		# CallDemDet=r0
.Llo8:
	rlwinm		r0,r0,0,24,25		# CallDemDet=r0 CallDemDet=r0
	cmpi		0,0,r0,64		# CallDemDet=r0
	bc		0,2,.L304	# ne
	.section	.text_vle
.L368:
#             {
#                 VAR(PduIdType, AUTOMATIC) CurrentIPduId = CanTpChannel_results.IPduId;
	.d2line		140
.Llo9:
	lhz		r29,10(r1)
.Llo25:
	mr		r29,r29		# CurrentIPduId=r29 CurrentIPduId=r29
# 
#                 if((NULL_PTR != CanTp_ConfirmationPending_p) && (CANTP_PHYSICAL == CanTp_RxNSdu_p[CurrentIPduId].CanTpRxTaType))
	.d2line		142
	lis		r3,CanTp_ConfirmationPending_p@ha
	lwz		r0,CanTp_ConfirmationPending_p@l(r3)		# CallDemDet=r0
.Llo10:
	se_cmpi		r0,0		# CallDemDet=r0
	bc		1,2,.L305	# eq
.Llo11:
	rlwinm		r5,r29,0,16,31		# CurrentIPduId=r29
	lis		r3,CanTp_RxNSdu_p@ha
	lwz		r0,CanTp_RxNSdu_p@l(r3)		# CallDemDet=r0
.Llo12:
	rlwinm		r3,r5,5,0,26
	se_slwi		r5,3
	subf		r5,r5,r3
	se_add		r5,r0		# CallDemDet=r0
	lwz		r0,12(r5)		# CallDemDet=r0
	se_cmpi		r0,1		# CallDemDet=r0
	bc		0,2,.L305	# ne
#                 {
#                     /* Remove the flag for checking that the CanIf Confirmation for this Pdu
#                      is received or not */
#                     CanTp_ConfirmationPending_p[CanTp_RxNSduConfig_p[CurrentIPduId].CanTpTxFcNPduIdConf] = CANTP_FALSE;
	.d2line		146
.Llo13:
	diab.li		r0,0		# CallDemDet=r0
.Llo14:
	lis		r3,CanTp_ConfirmationPending_p@ha
	lwz		r4,CanTp_ConfirmationPending_p@l(r3)
	lis		r3,CanTp_RxNSduConfig_p@ha
	lwz		r3,CanTp_RxNSduConfig_p@l(r3)
	rlwinm		r5,r29,4,12,27		# CurrentIPduId=r29
	se_add		r3,r5
	lhz		r3,12(r3)
	stbx		r0,r4,r3		# CallDemDet=r0
.L305:
#                 }
# 
#                 /*If it is needed to quit critical section before notifying PduR, do it and set parameter accordingly */
#                 if((NTFRSLT_OK == PdurResult) && (CANTP_TRUE == CanTpChannel_p->CriticalSectionStatus_b))
	.d2line		150
.Llo15:
	rlwinm		r4,r30,0,24,31		# PdurResult=r30
	se_cmpi		r4,0
	bc		0,2,.L306	# ne
	lbz		r0,50(r31)		# CallDemDet=r0 CanTpChannel_p=r31
.Llo16:
	se_cmpi		r0,1		# CallDemDet=r0
	bc		0,2,.L306	# ne
	.section	.text_vle
.L377:
#                 {
#                     VAR(uint8, AUTOMATIC) Channel_u8 = CanTp_RxNSdu_p[CurrentIPduId].CanTpRxChannel_u8;
	.d2line		152
.Llo17:
	rlwinm		r5,r29,0,16,31		# CurrentIPduId=r29
	lis		r3,CanTp_RxNSdu_p@ha		# Channel_u8=r3
.Llo26:
	lwz		r0,CanTp_RxNSdu_p@l(r3)		# CallDemDet=r0 Channel_u8=r3
.Llo18:
	rlwinm		r3,r5,5,0,26		# Channel_u8=r3
	se_slwi		r5,3
	subf		r5,r5,r3		# Channel_u8=r3
	se_add		r5,r0		# CallDemDet=r0
	lbz		r3,4(r5)		# Channel_u8=r3
	mr		r3,r3		# Channel_u8=r3 Channel_u8=r3
# 
#                     /* The channel processing is leaving critical section */
#                     CanTpChannel_p->CriticalSectionStatus_b = CANTP_FALSE;
	.d2line		155
	diab.li		r0,0		# CallDemDet=r0
	stb		r0,50(r31)		# CanTpChannel_p=r31 CallDemDet=r0
# 
#                     CanTp_Exit_Area(Channel_u8);
	.d2line		157
	rlwinm		r3,r3,0,24,31		# Channel_u8=r3 Channel_u8=r3
.Llo27:
	bl		CanTp_Exit_Area
	.section	.text_vle
.L378:
.L306:
#                 }
#                 /*Call PDU router with appropriate PduId and result*/
#                 PduR_CanTpRxIndication(CanTp_RxNSdu_p[CurrentIPduId].CanTpRxNSduId, PdurResult);
	.d2line		160
.Llo19:
	rlwinm		r29,r29,0,16,31		# CurrentIPduId=r29 CurrentIPduId=r29
	lis		r3,CanTp_RxNSdu_p@ha		# Channel_u8=r3
.Llo28:
	lwz		r0,CanTp_RxNSdu_p@l(r3)		# CallDemDet=r0 Channel_u8=r3
.Llo20:
	rlwinm		r3,r29,5,0,26		# Channel_u8=r3 CurrentIPduId=r29
	se_slwi		r29,3		# CurrentIPduId=r29 CurrentIPduId=r29
	subf		r29,r29,r3		# CurrentIPduId=r29 CurrentIPduId=r29 Channel_u8=r3
	se_add		r29,r0		# CurrentIPduId=r29 CurrentIPduId=r29 CallDemDet=r0
	lhz		r3,18(r29)		# Channel_u8=r3 CurrentIPduId=r29
.Llo29:
	rlwinm		r4,r30,0,24,31		# PdurResult=r30
	bl		PduR_CanTpRxIndication
	.section	.text_vle
.L369:
.Llo4:
	b		.L299
.L304:
#             }
#             else
#             {
#                 /* Remove the flag for checking that the CanIf Confirmation for this Pdu
#                  is received or not */
#                 CanTp_ConfirmationPending_p[CanTp_TxNSduConfig_p[CanTpChannel_results.IPduId].CanTpTxConfirmationId] = CANTP_FALSE;
	.d2line		166
.Llo5:
	lhz		r6,10(r1)
	diab.li		r5,0
	lis		r3,CanTp_ConfirmationPending_p@ha
	lwz		r4,CanTp_ConfirmationPending_p@l(r3)
	lis		r3,CanTp_TxNSduConfig_p@ha
	lwz		r7,CanTp_TxNSduConfig_p@l(r3)
	rlwinm		r0,r6,4,0,27		# CallDemDet=r0
.Llo21:
	se_slwi		r6,2
	subf		r6,r6,r0		# CallDemDet=r0
	se_add		r6,r7
	lhz		r0,8(r6)		# CallDemDet=r0
.Llo22:
	stbx		r5,r4,r0
# 
#                 /*Call PDU router with appropriate PduId and result*/
#                 PduR_CanTpTxConfirmation(CanTp_TxNSduConfig_p[CanTpChannel_results.IPduId].CanTpPduRConfId, PdurResult);
	.d2line		169
	lhz		r0,10(r1)		# CallDemDet=r0
.Llo23:
	lwz		r4,CanTp_TxNSduConfig_p@l(r3)
	rlwinm		r3,r0,4,0,27		# CallDemDet=r0
	se_slwi		r0,2		# CallDemDet=r0 CallDemDet=r0
	subf		r0,r0,r3		# CallDemDet=r0 CallDemDet=r0
	se_add		r4,r0		# CallDemDet=r0
	lhz		r3,10(r4)
	rlwinm		r4,r30,0,24,31		# PdurResult=r30
	bl		PduR_CanTpTxConfirmation
.L299:
#             }
#         }
#         else
#         {
#             /*Do nothing*/
#         }
#     }
#     else
#     {
#         /*Do Nothing*/
#     }
# 
# }/* End of CanTp_StopChannel() */
	.d2line		182
	.d2epilogue_begin
.Llo6:
	lmw		r29,68(r1)		# offset r1+68  0x44
	.d2_cfa_restore_list	3,10
	lwz		r0,84(r1)		# CallDemDet=r0
	mtspr		lr,r0		# CallDemDet=lr
	diab.addi		r1,r1,80		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L349:
	.type		CanTp_StopChannel,@function
	.size		CanTp_StopChannel,.-CanTp_StopChannel
# Number of nodes = 271

# Allocations for CanTp_StopChannel
#	?a4		CanTpChannel_p
#	?a5		CallDemDet
#	?a6		PdurResult
#	?a7		$$107
#	?a8		$$106
#	?a9		$$105
#	?a10		$$104
#	?a11		$$103
#	SP,8		CanTpChannel_results
#	?a12		CurrentIPduId
#	?a13		Channel_u8
# FUNC(void, CANTP_CODE) CanTp_CanIfTransmitChannel
	.align		2
	.section	.text_vle
        .d2line         196,24
#$$ld
.L386:

#$$bf	CanTp_CanIfTransmitChannel,interprocedural,rasave,nostackparams
	.globl		CanTp_CanIfTransmitChannel
	.d2_cfa_start __cie
CanTp_CanIfTransmitChannel:
.Llo30:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CanTpChannel_p=r31 CanTpChannel_p=r3
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p
# )
# {
#     /* return value of CanIf      */
#     VAR(Std_ReturnType, AUTOMATIC) CanIfRet;
# 
#     /* data to be transmitted     */
#     VAR(PduInfoType, AUTOMATIC) PduInfo;
# 
#     /* Handling I-Pdu ID       */
#     VAR(PduIdType, AUTOMATIC) PduId;
# 
#     /* ID to be passed to CanIf via CanIf_Transmit */
#     VAR(PduIdType, AUTOMATIC) NPduId;
# 
#     /* Variable to Store old Timeout ticks */
#     VAR(uint16, AUTOMATIC) TimeoutTicksNax_u16;
# 
#     /* Confirmation Id   */
#     VAR(PduIdType, AUTOMATIC) ConfId;
# 
#     /* Load the values locally */
#     PduId = CanTpChannel_p->IPduId;
	.d2line		220
	lhz		r5,2(r31)		# CanTpChannel_p=r31
.Llo38:
	mr		r5,r5		# PduId=r5 PduId=r5
#     PduInfo.SduLength = (PduLengthType) CanTpChannel_p->CanIfDLC_u8;
	.d2line		221
	lbz		r0,30(r31)		# CanTpChannel_p=r31
	sth		r0,12(r1)
#     PduInfo.SduDataPtr = &CanTpChannel_p->CanIfData_au8[0];
	.d2line		222
	se_addi		r3,31		# CanTpChannel_p=r3 CanTpChannel_p=r3
	stw		r3,8(r1)		# CanTpChannel_p=r3
# 
#     if(CANTP_CH_RX_PROCESSING == (uint8) (CanTpChannel_p->State_u8 & CANTP_STATE_MASK))
	.d2line		224
	lbz		r0,14(r31)		# CanTpChannel_p=r31
	rlwinm		r0,r0,0,24,25
	cmpi		0,0,r0,64
	bc		0,2,.L316	# ne
#     {
#         /* Set the flow control id to the Pdu to be transmitted */
#         NPduId = CanTp_RxNSduConfig_p[PduId].CanTpTxFcNPduCanIf;
	.d2line		227
.Llo31:
	lis		r3,CanTp_RxNSduConfig_p@ha		# CanTpChannel_p=r3
.Llo32:
	lwz		r4,CanTp_RxNSduConfig_p@l(r3)		# CanTpChannel_p=r3
.Llo39:
	rlwinm		r5,r5,4,12,27		# PduId=r5 PduId=r5
	se_add		r4,r5		# PduId=r5
	lhz		r0,14(r4)
.Llo41:
	mr		r0,r0		# NPduId=r0 NPduId=r0
# 
#         /* Get confirmation Id */
#         ConfId = CanTp_RxNSduConfig_p[PduId].CanTpTxFcNPduIdConf;
	.d2line		230
	lwz		r4,CanTp_RxNSduConfig_p@l(r3)		# CanTpChannel_p=r3
	se_add		r4,r5		# PduId=r5
	lhz		r29,12(r4)
.Llo58:
	mr		r29,r29		# ConfId=r29 ConfId=r29
# 
#         /* Store the timeout value of N_Ar timeout */
#         TimeoutTicksNax_u16 = CanTp_RxNSduConfig_p[PduId].CanTpNar_u16;
	.d2line		233
	lwz		r3,CanTp_RxNSduConfig_p@l(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	se_add		r5,r3		# PduId=r5 PduId=r5 CanTpChannel_p=r3
	lhz		r30,2(r5)		# PduId=r5
.Llo56:
	mr		r30,r30		# TimeoutTicksNax_u16=r30 TimeoutTicksNax_u16=r30
	b		.L317
.L316:
#     }
#     else
#     {
#         /* Set the Transmit pdu Id */
#         NPduId = CanTp_TxNSduConfig_p[PduId].CanTpTxCanIfNPduId;
	.d2line		238
.Llo42:
	rlwinm		r4,r5,0,16,31		# PduId=r5
	lis		r3,CanTp_TxNSduConfig_p@ha		# CanTpChannel_p=r3
	lwz		r5,CanTp_TxNSduConfig_p@l(r3)		# PduId=r5 CanTpChannel_p=r3
	rlwinm		r0,r4,4,0,27
	se_slwi		r4,2
	subf		r4,r4,r0
	se_add		r5,r4		# PduId=r5 PduId=r5
	lhz		r0,6(r5)		# PduId=r5
.Llo43:
	mr		r0,r0		# NPduId=r0 NPduId=r0
# 
#         /* Get confirmation Id */
#         ConfId = CanTp_TxNSduConfig_p[PduId].CanTpTxConfirmationId;
	.d2line		241
	lwz		r5,CanTp_TxNSduConfig_p@l(r3)		# PduId=r5 CanTpChannel_p=r3
	se_add		r5,r4		# PduId=r5 PduId=r5
	lhz		r29,8(r5)		# PduId=r5
.Llo59:
	mr		r29,r29		# ConfId=r29 ConfId=r29
# 
#         /* Store the timeout value of N_As timeout */
#         TimeoutTicksNax_u16 = CanTp_TxNSduConfig_p[PduId].CanTpNas_u16;
	.d2line		244
	lwz		r3,CanTp_TxNSduConfig_p@l(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	lhzx		r30,r3,r4		# CanTpChannel_p=r3
.Llo57:
	mr		r30,r30		# TimeoutTicksNax_u16=r30 TimeoutTicksNax_u16=r30
.L317:
#     }
# 
#     /* If no confirmation is pending for this NPdu then CanIf is clear to send,
#      * else retry the transmission in the next main function and do not modify
#      * the TimeoutTicks_u16 in the channel structure */
# 
#     /* PRQA S 2822 *//*Arithmetic operation on NULL pointer. MISRA-C:2004 Rule 21.1 */
#     /* Reasoning: it is set in the CanTp_Init() */
#     if(CANTP_FALSE == CanTp_ConfirmationPending_p[ConfId])
	.d2line		253
.Llo40:
	lis		r3,CanTp_ConfirmationPending_p@ha		# CanTpChannel_p=r3
	lwz		r3,CanTp_ConfirmationPending_p@l(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	rlwinm		r4,r29,0,16,31		# ConfId=r29
	lbzx		r3,r3,r4		# CanTpChannel_p=r3 CanTpChannel_p=r3
	se_cmpi		r3,0		# CanTpChannel_p=r3
	bc		0,2,.L315	# ne
#     {
#         /* now transmit data to CanIf */
#         CanIfRet = CanIf_Transmit(NPduId, &PduInfo);
	.d2line		256
	rlwinm		r3,r0,0,16,31		# CanTpChannel_p=r3 NPduId=r0
	diab.addi		r4,r1,8
	bl		CanIf_Transmit
.Llo34:
	mr		r3,r3		# CanIfRet=r3 CanIfRet=r3
# 
#         if(E_OK == CanIfRet)
	.d2line		258
	rlwinm		r3,r3,0,24,31		# CanIfRet=r3 CanIfRet=r3
	se_cmpi		r3,0		# CanIfRet=r3
	bc		0,2,.L315	# ne
#         {
#             CanTp_ConfirmationPending_p[ConfId] = CANTP_TRUE;
	.d2line		260
.Llo35:
	diab.li		r0,1		# NPduId=r0
.Llo44:
	lis		r3,CanTp_ConfirmationPending_p@ha		# CanIfRet=r3
.Llo36:
	lwz		r3,CanTp_ConfirmationPending_p@l(r3)		# CanIfRet=r3 CanIfRet=r3
.Llo60:
	rlwinm		r29,r29,0,16,31		# ConfId=r29 ConfId=r29
.Llo61:
	stbx		r0,r3,r29		# CanIfRet=r3 NPduId=r0
# 
#             /* The CanIfDLC_u8 is set to zero because it indicates how many bytes are added to the frame but
#              * because the recently created frame is transmitted it means no byte of the next frame is added */
#             CanTpChannel_p->CanIfDLC_u8 = CANTP_GENERAL_ZERO;
	.d2line		264
	diab.li		r0,0		# NPduId=r0
	stb		r0,30(r31)		# CanTpChannel_p=r31 NPduId=r0
# 
#             /* The transmission request was successful (CanIf_Transmit has returned E_OK) so
#              * N_Ax (N_As or N_Ar) should be loaded into the timeout timer */
#             CanTpChannel_p->TimeoutTicks_u16 = TimeoutTicksNax_u16;
	.d2line		268
	sth		r30,4(r31)		# CanTpChannel_p=r31 TimeoutTicksNax_u16=r30
# 
#             /* Change the States to next Possible states */
#             /* PRQA S 2016 ++ *//* 'switch' statement 'default' clause is empty */
#             switch(CanTpChannel_p->State_u8)
	.d2line		272
	lbz		r6,14(r31)		# CanTpChannel_p=r31
	cmpi		0,0,r6,129
	bc		1,1,.L404	# gt
.Llo37:
	bc		1,2,.L320	# eq
	cmpi		0,0,r6,70
	bc		1,2,.L324	# eq
	cmpi		0,0,r6,71
	bc		1,2,.L325	# eq
	cmpi		0,0,r6,72
	bc		1,2,.L326	# eq
	b		.L315
.L404:
	cmpi		0,0,r6,130
	bc		1,2,.L322	# eq
	cmpi		0,0,r6,131
	bc		1,2,.L323	# eq
	b		.L315
.L320:
#             {
#                 case CANTP_CH_TX_TRANSMIT_SF:
#                 {
#                     CanTpChannel_p->State_u8 = CANTP_CH_TX_CONFIRM_SF;
	.d2line		276
	diab.li		r0,133		# NPduId=r0
.Llo45:
	stb		r0,14(r31)		# CanTpChannel_p=r31 NPduId=r0
	b		.L315
.L322:
#                     break;
#                 }
# 
#                 case CANTP_CH_TX_TRANSMIT_FF:
#                 {
#                     CanTpChannel_p->State_u8 = CANTP_CH_TX_CONFIRM_FF;
	.d2line		282
.Llo46:
	diab.li		r0,134		# NPduId=r0
.Llo47:
	stb		r0,14(r31)		# CanTpChannel_p=r31 NPduId=r0
	b		.L315
.L323:
#                     break;
#                 }
# 
#                 case CANTP_CH_TX_TRANSMIT_CF:
#                 {
#                     CanTpChannel_p->State_u8 = CANTP_CH_TX_CONFIRM_CF;
	.d2line		288
.Llo48:
	diab.li		r0,135		# NPduId=r0
.Llo49:
	stb		r0,14(r31)		# CanTpChannel_p=r31 NPduId=r0
	b		.L315
.L324:
#                     break;
#                 }
# 
#                 case CANTP_CH_RX_SEGMENTED_TRANSMIT_FC_CTS:
#                 {
#                     CanTpChannel_p->State_u8 = CANTP_CH_RX_SEGMENTED_CONFIRM_FC_CTS;
	.d2line		294
.Llo50:
	diab.li		r0,73		# NPduId=r0
.Llo51:
	stb		r0,14(r31)		# CanTpChannel_p=r31 NPduId=r0
	b		.L315
.L325:
#                     break;
#                 }
# 
#                 case CANTP_CH_RX_SEGMENTED_TRANSMIT_FC_WAIT:
#                 {
#                     CanTpChannel_p->State_u8 = CANTP_CH_RX_SEGMENTED_CONFIRM_FC_WAIT;
	.d2line		300
.Llo52:
	diab.li		r0,74		# NPduId=r0
.Llo53:
	stb		r0,14(r31)		# CanTpChannel_p=r31 NPduId=r0
	b		.L315
.L326:
#                     break;
#                 }
# 
#                 case CANTP_CH_RX_SEGMENTED_TRANSMIT_FC_OVFLW:
#                 {
#                     CanTpChannel_p->State_u8 = CANTP_CH_RX_SEGMENTED_CONFIRM_FC_OVFLW;
	.d2line		306
.Llo54:
	diab.li		r0,75		# NPduId=r0
.Llo55:
	stb		r0,14(r31)		# CanTpChannel_p=r31 NPduId=r0
.L315:
#                     break;
#                 }
# 
#                 default:
#                 {
#                     /* will never be reached */
#                     break;
#                 }
#             }
#             /* PRQA S 2016 -- */
#         }
#         /* if E_NOT_OK - CanIf unable to transmit the Pdu so it will be retried in
#          * the next CanTp_MainFunction */
#     }
# 
# }/* End of CanTp_CanIfTransmitChannel() */
	.d2line		322
	.d2epilogue_begin
.Llo33:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# NPduId=r0
	mtspr		lr,r0		# NPduId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L387:
	.type		CanTp_CanIfTransmitChannel,@function
	.size		CanTp_CanIfTransmitChannel,.-CanTp_CanIfTransmitChannel
# Number of nodes = 187

# Allocations for CanTp_CanIfTransmitChannel
#	?a4		CanTpChannel_p
#	?a5		$$110
#	?a6		$$109
#	?a7		$$108
#	?a8		CanIfRet
#	SP,8		PduInfo
#	?a9		PduId
#	?a10		NPduId
#	?a11		TimeoutTicksNax_u16
#	?a12		ConfId
# FUNC(void, CANTP_CODE) CanTp_FreeChannel
	.align		2
	.section	.text_vle
        .d2line         335,24
#$$ld
.L407:

#$$bf	CanTp_FreeChannel,interprocedural,rasave,nostackparams
	.globl		CanTp_FreeChannel
	.d2_cfa_start __cie
CanTp_FreeChannel:
.Llo62:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p
# )
# {
#     /*Check if shutdown request is there if yes process*/
#     /*It might be due to other Cancel transmit request or Init call*/
#     if(CANTP_TRUE == CanTpChannel_p->ShutdownFlag_b)
	.d2line		342
	lbz		r0,40(r3)		# CanTpChannel_p=r3
	se_cmpi		r0,1
	bc		0,2,.L337	# ne
#     {
#         /* Don't inform upper layer about stopping this Channel
#          * Because request is made from sources which doesn't need to report
#          * to upper layer*/
#         CanTpChannel_p->ULayerIndFlag_b = CANTP_FALSE;
	.d2line		347
	diab.li		r4,0
	stb		r4,39(r3)		# CanTpChannel_p=r3
#         /* caller paramter is passed as any value as it will not be used in this case */
#         CanTp_StopChannel(CanTpChannel_p, FALSE, NTFRSLT_OK);
	.d2line		349
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo63:
	diab.li		r5,0
	bl		CanTp_StopChannel
.L337:
#     }
# 
# }/* End of CanTp_FreeChannel() */
	.d2line		352
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
.L408:
	.type		CanTp_FreeChannel,@function
	.size		CanTp_FreeChannel,.-CanTp_FreeChannel
# Number of nodes = 21

# Allocations for CanTp_FreeChannel
#	?a4		CanTpChannel_p
# FUNC(void, CANTP_CODE) CanTp_ResetChannels
	.align		2
	.section	.text_vle
        .d2line         368,24
#$$ld
.L413:

#$$bf	CanTp_ResetChannels,interprocedural,rasave,nostackparams
	.globl		CanTp_ResetChannels
	.d2_cfa_start __cie
CanTp_ResetChannels:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#     CONST(uint8, CANTP_APPL_CONST) CallerID /* PRQA S 3206 *//* CallerID is only used in case of CANTP_DEV_ERROR_DETECT == STD_ON */
# #else
#     void
# #endif
# )
# {
#     /* Channel counter */
#     VAR(uint8, AUTOMATIC) Channel_u8;
# 
#     /*Pointer to hold the Channel Structure address*/
#     P2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p;
# 
#     /* Reset all channels except those which are
#      * all being processed */
#     for(Channel_u8 = CANTP_CHANNEL_INDEX_START_ZERO;
	.d2line		385
	diab.li		r31,0		# Channel_u8=r31
.L341:
.Llo64:
	rlwinm		r0,r31,0,24,31		# Channel_u8=r31
	lis		r3,CanTp_GeneralConfig_p@ha		# CanTpChannel_p=r3
.Llo66:
	lwz		r3,CanTp_GeneralConfig_p@l(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	lbz		r3,6(r3)		# CanTpChannel_p=r3 CanTpChannel_p=r3
	se_cmp		r0,r3		# CanTpChannel_p=r3
	bc		0,0,.L340	# ge
#             Channel_u8 < CanTp_GeneralConfig_p->Channel_Max_u8;
#             Channel_u8++)
#     {
#         /*Copy the Channel address*/
#         CanTpChannel_p = &CanTp_ChannelList_p[Channel_u8];
	.d2line		390
.Llo67:
	lis		r3,CanTp_ChannelList_p@ha		# CanTpChannel_p=r3
.Llo68:
	lwz		r0,CanTp_ChannelList_p@l(r3)		# CanTpChannel_p=r3
	rlwinm		r3,r31,0,24,31		# CanTpChannel_p=r3 Channel_u8=r31
	e_mulli		r30,r3,52		# CanTpChannel_p=r30 CanTpChannel_p=r3
	se_add		r0,r30		# CanTpChannel_p=r30
	mr		r30,r0		# CanTpChannel_p=r30 CanTpChannel_p=r0
# 
#         /*Enter critical section */
#         CanTp_Enter_Area(Channel_u8);
	.d2line		393
.Llo69:
	bl		CanTp_Enter_Area
# 
#         /* The channel processing entered critical section */
#         CanTpChannel_p->CriticalSectionStatus_b = CANTP_TRUE;
	.d2line		396
.Llo70:
	diab.li		r0,1
	stb		r0,50(r30)		# CanTpChannel_p=r30
# 
#         /*Raise shutdown request*/
#         CanTpChannel_p->ShutdownFlag_b = CANTP_TRUE;
	.d2line		399
	stb		r0,40(r30)		# CanTpChannel_p=r30
# 
#         /*Release the Channel from lock*/
#         CanTp_FreeChannel(CanTpChannel_p);
	.d2line		402
	mr		r3,r30		# CanTpChannel_p=r3 CanTpChannel_p=r30
	bl		CanTp_FreeChannel
# 
#         /* The channel processing is leaving critical section */
#         CanTpChannel_p->CriticalSectionStatus_b = CANTP_FALSE;
	.d2line		405
	diab.li		r0,0
	stb		r0,50(r30)		# CanTpChannel_p=r30
# 
#         /*Exit critical section*/
#         CanTp_Exit_Area(Channel_u8);
	.d2line		408
	rlwinm		r3,r31,0,24,31		# CanTpChannel_p=r3 Channel_u8=r31
	bl		CanTp_Exit_Area
#     }
	.d2line		409
	diab.addi		r0,r31,1		# Channel_u8=r31
	se_addi		r31,1		# Channel_u8=r31 Channel_u8=r31
	b		.L341
.L340:
# }/* End of CanTp_ResetChannels() */
	.d2line		410
	.d2epilogue_begin
.Llo65:
	lmw		r30,24(r1)		# offset r1+24  0x18
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
.L414:
	.type		CanTp_ResetChannels,@function
	.size		CanTp_ResetChannels,.-CanTp_ResetChannels
# Number of nodes = 54

# Allocations for CanTp_ResetChannels
#	not allocated	CallerID
#	?a4		Channel_u8
#	?a5		CanTpChannel_p

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L470:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L445:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Types.h"
.L422:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Private.h"
.L350:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_ChannelOperations.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_ChannelOperations.c"
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
.L351:
	.sleb128	2
	.4byte		.L347-.L2
	.byte		"CanTp_StopChannel"
	.byte		0
	.4byte		.L350
	.uleb128	85
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L348
	.4byte		.L349
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L350
	.uleb128	85
	.uleb128	24
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L352
	.4byte		.L356
	.sleb128	3
	.4byte		.L350
	.uleb128	85
	.uleb128	24
	.byte		"CallDemDet"
	.byte		0
	.4byte		.L357
	.4byte		.L360
	.sleb128	3
	.4byte		.L350
	.uleb128	85
	.uleb128	24
	.byte		"PdurResult"
	.byte		0
	.4byte		.L361
	.4byte		.L364
	.section	.debug_info,,n
.L365:
	.sleb128	4
	.4byte		.L350
	.uleb128	95
	.uleb128	39
	.byte		"CanTpChannel_results"
	.byte		0
	.4byte		.L366
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L371
	.4byte		.L368
	.4byte		.L369
	.section	.debug_info,,n
.L372:
	.sleb128	6
	.4byte		.L350
	.uleb128	140
	.uleb128	43
	.byte		"CurrentIPduId"
	.byte		0
	.4byte		.L373
	.4byte		.L376
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L380
	.4byte		.L377
	.4byte		.L378
.L381:
	.sleb128	6
	.4byte		.L350
	.uleb128	152
	.uleb128	43
	.byte		"Channel_u8"
	.byte		0
	.4byte		.L363
	.4byte		.L382
	.section	.debug_info,,n
	.sleb128	0
.L380:
	.section	.debug_info,,n
	.sleb128	0
.L371:
	.section	.debug_info,,n
	.sleb128	0
.L347:
	.section	.debug_info,,n
.L388:
	.sleb128	2
	.4byte		.L385-.L2
	.byte		"CanTp_CanIfTransmitChannel"
	.byte		0
	.4byte		.L350
	.uleb128	196
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L386
	.4byte		.L387
	.sleb128	3
	.4byte		.L350
	.uleb128	196
	.uleb128	24
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L352
	.4byte		.L389
.L390:
	.sleb128	6
	.4byte		.L350
	.uleb128	202
	.uleb128	36
	.byte		"CanIfRet"
	.byte		0
	.4byte		.L391
	.4byte		.L392
.L393:
	.sleb128	4
	.4byte		.L350
	.uleb128	205
	.uleb128	33
	.byte		"PduInfo"
	.byte		0
	.4byte		.L394
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L396:
	.sleb128	6
	.4byte		.L350
	.uleb128	208
	.uleb128	31
	.byte		"PduId"
	.byte		0
	.4byte		.L373
	.4byte		.L397
.L398:
	.sleb128	6
	.4byte		.L350
	.uleb128	211
	.uleb128	31
	.byte		"NPduId"
	.byte		0
	.4byte		.L373
	.4byte		.L399
.L400:
	.sleb128	6
	.4byte		.L350
	.uleb128	214
	.uleb128	28
	.byte		"TimeoutTicksNax_u16"
	.byte		0
	.4byte		.L374
	.4byte		.L401
.L402:
	.sleb128	6
	.4byte		.L350
	.uleb128	217
	.uleb128	31
	.byte		"ConfId"
	.byte		0
	.4byte		.L373
	.4byte		.L403
	.section	.debug_info,,n
	.sleb128	0
.L385:
	.section	.debug_info,,n
.L409:
	.sleb128	2
	.4byte		.L406-.L2
	.byte		"CanTp_FreeChannel"
	.byte		0
	.4byte		.L350
	.uleb128	335
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L407
	.4byte		.L408
	.sleb128	3
	.4byte		.L350
	.uleb128	335
	.uleb128	24
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L352
	.4byte		.L410
	.section	.debug_info,,n
	.sleb128	0
.L406:
	.section	.debug_info,,n
.L415:
	.sleb128	2
	.4byte		.L412-.L2
	.byte		"CanTp_ResetChannels"
	.byte		0
	.4byte		.L350
	.uleb128	368
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L413
	.4byte		.L414
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L350
	.uleb128	368
	.uleb128	24
	.byte		"CallerID"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x90
	.uleb128	3
.L417:
	.sleb128	6
	.4byte		.L350
	.uleb128	378
	.uleb128	27
	.byte		"Channel_u8"
	.byte		0
	.4byte		.L363
	.4byte		.L418
.L419:
	.sleb128	6
	.4byte		.L350
	.uleb128	381
	.uleb128	56
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L353
	.4byte		.L420
	.section	.debug_info,,n
	.sleb128	0
.L412:
	.section	.debug_info,,n
.L421:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L422
	.uleb128	487
	.uleb128	61
	.byte		"CanTp_RxNSdu_p"
	.byte		0
	.4byte		.L423
	.0byte		.L421
.L427:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L422
	.uleb128	493
	.uleb128	67
	.byte		"CanTp_RxNSduConfig_p"
	.byte		0
	.4byte		.L428
.L432:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L422
	.uleb128	504
	.uleb128	67
	.byte		"CanTp_TxNSduConfig_p"
	.byte		0
	.4byte		.L433
.L437:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L422
	.uleb128	522
	.uleb128	68
	.byte		"CanTp_GeneralConfig_p"
	.byte		0
	.4byte		.L438
.L442:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L422
	.uleb128	528
	.uleb128	59
	.byte		"CanTp_ChannelList_p"
	.byte		0
	.4byte		.L353
.L443:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L422
	.uleb128	535
	.uleb128	51
	.byte		"CanTp_ConfirmationPending_p"
	.byte		0
	.4byte		.L444
	.section	.debug_info,,n
.L441:
	.sleb128	9
	.4byte		.L445
	.uleb128	117
	.uleb128	1
	.4byte		.L446-.L2
	.uleb128	16
	.section	.debug_info,,n
.L160:
	.sleb128	10
	.byte		"TxNSduId_Max"
	.byte		0
	.4byte		.L447
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L161:
	.sleb128	10
	.byte		"RxNPduId_Max"
	.byte		0
	.4byte		.L447
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L162:
	.sleb128	10
	.byte		"RxNSduId_Count"
	.byte		0
	.4byte		.L447
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L163:
	.sleb128	10
	.byte		"Channel_Max_u8"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L164:
	.sleb128	10
	.byte		"CanTp_Mf_Resolution_u16"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L165:
	.sleb128	10
	.byte		"CanTp_Cfg_PaddingByte_u8"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L166:
	.sleb128	10
	.byte		"RxNsduId_Max_u16"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L167:
	.sleb128	10
	.byte		"ConfirmationLength"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L446:
.L436:
	.sleb128	9
	.4byte		.L445
	.uleb128	117
	.uleb128	1
	.4byte		.L449-.L2
	.uleb128	12
.L149:
	.sleb128	10
	.byte		"CanTpNas_u16"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L150:
	.sleb128	10
	.byte		"CanTpNbs_u16"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L151:
	.sleb128	10
	.byte		"CanTpNcs_u16"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L152:
	.sleb128	10
	.byte		"CanTpTxCanIfNPduId"
	.byte		0
	.4byte		.L447
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L153:
	.sleb128	10
	.byte		"CanTpTxConfirmationId"
	.byte		0
	.4byte		.L447
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L154:
	.sleb128	10
	.byte		"CanTpPduRConfId"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L449:
.L431:
	.sleb128	9
	.4byte		.L445
	.uleb128	117
	.uleb128	1
	.4byte		.L450-.L2
	.uleb128	16
.L134:
	.sleb128	10
	.byte		"CanTpBsConf_u8"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L135:
	.sleb128	10
	.byte		"CanTpNar_u16"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L136:
	.sleb128	10
	.byte		"CanTpNbr_u16"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L137:
	.sleb128	10
	.byte		"CanTpNcr_u16"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L138:
	.sleb128	10
	.byte		"CanTpRxWftMax_u16"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L139:
	.sleb128	10
	.byte		"CanTpSTminConf_u8"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L140:
	.sleb128	10
	.byte		"CanTpTxFcNPduIdConf"
	.byte		0
	.4byte		.L447
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L141:
	.sleb128	10
	.byte		"CanTpTxFcNPduCanIf"
	.byte		0
	.4byte		.L447
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L450:
.L426:
	.sleb128	9
	.4byte		.L445
	.uleb128	117
	.uleb128	1
	.4byte		.L451-.L2
	.uleb128	24
.L127:
	.sleb128	10
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L452
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L128:
	.sleb128	10
	.byte		"CanTpRxChannel_u8"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L129:
	.sleb128	10
	.byte		"CanTpRxPaddingActivation"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L130:
	.sleb128	10
	.byte		"CanTpRxTaType"
	.byte		0
	.4byte		.L458
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L131:
	.sleb128	10
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L132:
	.sleb128	10
	.byte		"CanTpRxNSduId"
	.byte		0
	.4byte		.L447
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L133:
	.sleb128	10
	.byte		"FrameType"
	.byte		0
	.4byte		.L461
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L451:
.L355:
	.sleb128	9
	.4byte		.L445
	.uleb128	117
	.uleb128	1
	.4byte		.L464-.L2
	.uleb128	52
.L102:
	.sleb128	10
	.byte		"ChannelIdx_u8"
	.byte		0
	.4byte		.L363
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L103:
	.sleb128	10
	.byte		"IPduId"
	.byte		0
	.4byte		.L373
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L104:
	.sleb128	10
	.byte		"TimeoutTicks_u16"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L105:
	.sleb128	10
	.byte		"StMinTicks_u16"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L106:
	.sleb128	10
	.byte		"TotalLength"
	.byte		0
	.4byte		.L465
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L107:
	.sleb128	10
	.byte		"ProcessedLength"
	.byte		0
	.4byte		.L465
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L108:
	.sleb128	10
	.byte		"ProvidedBufferSize"
	.byte		0
	.4byte		.L465
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L109:
	.sleb128	10
	.byte		"State_u8"
	.byte		0
	.4byte		.L363
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L110:
	.sleb128	10
	.byte		"NextState_u8"
	.byte		0
	.4byte		.L363
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L111:
	.sleb128	10
	.byte		"BlockSize_u16"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L112:
	.sleb128	10
	.byte		"WftCounter_u16"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L113:
	.sleb128	10
	.byte		"SequenceNumber_u8"
	.byte		0
	.4byte		.L363
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L114:
	.sleb128	10
	.byte		"StMin_u8"
	.byte		0
	.4byte		.L363
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L115:
	.sleb128	10
	.byte		"TempBuffer_au8"
	.byte		0
	.4byte		.L466
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L116:
	.sleb128	10
	.byte		"TempLength_u8"
	.byte		0
	.4byte		.L363
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L117:
	.sleb128	10
	.byte		"CanIfDLC_u8"
	.byte		0
	.4byte		.L363
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L118:
	.sleb128	10
	.byte		"CanIfData_au8"
	.byte		0
	.4byte		.L468
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L119:
	.sleb128	10
	.byte		"ULayerIndFlag_b"
	.byte		0
	.4byte		.L358
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L120:
	.sleb128	10
	.byte		"ShutdownFlag_b"
	.byte		0
	.4byte		.L358
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L121:
	.sleb128	10
	.byte		"RemainingCFInBlock_u16"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	42
	.byte		0x1
.L122:
	.sleb128	10
	.byte		"LastCFofNSduFlag_b"
	.byte		0
	.4byte		.L358
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L123:
	.sleb128	10
	.byte		"RequiredBufferSize"
	.byte		0
	.4byte		.L465
	.sleb128	2
	.byte		0x23
	.uleb128	46
	.byte		0x1
.L124:
	.sleb128	10
	.byte		"CallerApiId"
	.byte		0
	.4byte		.L363
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L125:
	.sleb128	10
	.byte		"FrameSize"
	.byte		0
	.4byte		.L363
	.sleb128	2
	.byte		0x23
	.uleb128	49
	.byte		0x1
.L126:
	.sleb128	10
	.byte		"CriticalSectionStatus_b"
	.byte		0
	.4byte		.L358
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
	.sleb128	0
.L464:
	.section	.debug_info,,n
.L395:
	.sleb128	11
	.4byte		.L470
	.uleb128	69
	.uleb128	1
	.4byte		.L471-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L98:
	.sleb128	10
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L472
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L99:
	.sleb128	10
	.byte		"SduLength"
	.byte		0
	.4byte		.L465
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L471:
	.section	.debug_info,,n
.L463:
	.sleb128	12
	.4byte		.L445
	.uleb128	117
	.uleb128	1
	.4byte		.L473-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"CANTP_FRAME_TYPE_CAN20"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CANTP_FRAME_TYPE_CANFD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L473:
.L460:
	.sleb128	12
	.4byte		.L445
	.uleb128	108
	.uleb128	1
	.4byte		.L474-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CANTP_FUNCTIONAL"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CANTP_PHYSICAL"
	.byte		0
	.sleb128	1
	.sleb128	0
.L474:
.L457:
	.sleb128	12
	.4byte		.L445
	.uleb128	98
	.uleb128	1
	.4byte		.L475-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CANTP_OFF"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CANTP_ON"
	.byte		0
	.sleb128	1
	.sleb128	0
.L475:
.L454:
	.sleb128	12
	.4byte		.L445
	.uleb128	87
	.uleb128	1
	.4byte		.L476-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CANTP_STANDARD"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CANTP_EXTENDED"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"CANTP_MIXED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L476:
	.section	.debug_info,,n
.L354:
	.sleb128	14
	.byte		"CanTp_Channel_t"
	.byte		0
	.4byte		.L355
	.section	.debug_info,,n
.L353:
	.sleb128	15
	.4byte		.L354
	.section	.debug_info,,n
.L352:
	.sleb128	16
	.4byte		.L353
	.section	.debug_info,,n
.L359:
	.sleb128	17
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L358:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L359
.L357:
	.sleb128	16
	.4byte		.L358
.L363:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L359
.L362:
	.sleb128	14
	.byte		"NotifResultType"
	.byte		0
	.4byte		.L363
.L361:
	.sleb128	16
	.4byte		.L362
.L366:
	.sleb128	16
	.4byte		.L354
.L375:
	.sleb128	17
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L374:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L375
.L373:
	.sleb128	14
	.byte		"PduIdType"
	.byte		0
	.4byte		.L374
.L391:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L363
.L394:
	.sleb128	14
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L395
.L416:
	.sleb128	16
	.4byte		.L363
.L425:
	.sleb128	14
	.byte		"CanTp_RxNSdu_t"
	.byte		0
	.4byte		.L426
.L424:
	.sleb128	16
	.4byte		.L425
.L423:
	.sleb128	15
	.4byte		.L424
.L430:
	.sleb128	14
	.byte		"CanTp_RxNSduConfig_t"
	.byte		0
	.4byte		.L431
.L429:
	.sleb128	16
	.4byte		.L430
.L428:
	.sleb128	15
	.4byte		.L429
.L435:
	.sleb128	14
	.byte		"CanTp_TxNSduConfig_t"
	.byte		0
	.4byte		.L436
.L434:
	.sleb128	16
	.4byte		.L435
.L433:
	.sleb128	15
	.4byte		.L434
.L440:
	.sleb128	14
	.byte		"CanTp_GeneralConfig_t"
	.byte		0
	.4byte		.L441
.L439:
	.sleb128	16
	.4byte		.L440
.L438:
	.sleb128	15
	.4byte		.L439
.L444:
	.sleb128	15
	.4byte		.L358
.L447:
	.sleb128	16
	.4byte		.L373
.L448:
	.sleb128	16
	.4byte		.L374
.L453:
	.sleb128	14
	.byte		"CanTp_AddressingMode_t"
	.byte		0
	.4byte		.L454
.L452:
	.sleb128	16
	.4byte		.L453
.L456:
	.sleb128	14
	.byte		"CanTp_Status_t"
	.byte		0
	.4byte		.L457
.L455:
	.sleb128	16
	.4byte		.L456
.L459:
	.sleb128	14
	.byte		"CanTp_TaType_t"
	.byte		0
	.4byte		.L460
.L458:
	.sleb128	16
	.4byte		.L459
.L462:
	.sleb128	14
	.byte		"CanTp_FrameType_t"
	.byte		0
	.4byte		.L463
.L461:
	.sleb128	16
	.4byte		.L462
.L465:
	.sleb128	14
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L374
	.section	.debug_info,,n
.L466:
	.sleb128	18
	.4byte		.L467-.L2
	.4byte		.L363
	.section	.debug_info,,n
	.sleb128	19
	.uleb128	6
	.sleb128	0
.L467:
.L468:
	.sleb128	18
	.4byte		.L469-.L2
	.4byte		.L363
	.sleb128	19
	.uleb128	7
	.sleb128	0
.L469:
.L472:
	.sleb128	15
	.4byte		.L363
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L356:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),31
	.d2locend
.L360:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),4
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo7),0
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),0
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),0
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),0
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),0
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo6),0
	.d2locend
.L364:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo24),5
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo4),30
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),30
	.d2locend
.L376:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo4),29
	.d2locend
.L382:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locend
.L389:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),3
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),31
	.d2locend
.L392:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),3
	.d2locend
.L397:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo31),5
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),5
	.d2locend
.L399:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),0
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo34),0
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo37),0
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),0
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),0
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),0
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),0
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),0
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo33),0
	.d2locend
.L401:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo42),30
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo37),30
	.d2locend
.L403:
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo42),29
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo35),29
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),29
	.d2locend
.L410:
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),3
	.d2locend
.L418:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),31
	.d2locend
.L420:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),3
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),3
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo65),30
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTp_ResetChannels"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanTp_Enter_Area","CanTp_Exit_Area","CanTp_FreeChannel"
	.wrcm.end
	.wrcm.nelem "CanTp_FreeChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "CanTp_StopChannel"
	.wrcm.end
	.wrcm.nelem "CanTp_CanIfTransmitChannel"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanIf_Transmit"
	.wrcm.end
	.wrcm.nelem "CanTp_StopChannel"
	.wrcm.nint32 "frameSize", 80
	.wrcm.nstrlist "calls", "CanTp_Exit_Area","Det_ReportError","PduR_CanTpRxIndication","PduR_CanTpTxConfirmation"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_ChannelOperations.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_ChannelOperations.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_ChannelOperations.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_ChannelOperations.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_ChannelOperations.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_ChannelOperations.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTp\ssc\make\..\src\CanTp_ChannelOperations.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
