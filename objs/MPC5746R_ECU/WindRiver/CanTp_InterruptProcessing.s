#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTp_InterruptProcessing.c"
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
# static FUNC(void, CANTP_CODE) CanTp_ConfProcessCF
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_InterruptProcessing.c"
        .d2line         306,31
#$$ld
.L247:

#$$bf	CanTp_ConfProcessCF,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_ConfProcessCF:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
	mr		r5,r4		# TxIPduId=r5 TxIPduId=r4
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p,
#     CONST(PduIdType, AUTOMATIC) TxIPduId
# )
# {
#     /*Variable to hold StMin Ticks*/
#     VAR(uint16, AUTOMATIC) StMinLocalTicks_u16;
# 
#     /*Check whether whole frame is transmitted*/
#     if(CanTpChannel_p->TotalLength <= CanTpChannel_p->ProcessedLength)
	.d2line		316
	lhz		r0,8(r3)		# CanTpChannel_p=r3
	lhz		r4,10(r3)		# CanTpChannel_p=r3
.Llo7:
	se_cmp		r0,r4
	bc		1,1,.L164	# gt
#     {
#         /*Total Frame is transmitted.. Stop the Channel and share
#          *this information with UpperLayer*/
#         CanTp_StopChannel(CanTpChannel_p, FALSE, NTFRSLT_OK);
	.d2line		320
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo2:
	diab.li		r4,0
	diab.li		r5,0
	bl		CanTp_StopChannel
	b		.L163
.L164:
#     }
#     /*Still data is there to transmit*/
#     else
#     {
#         /*Check if Blocks are available to process else wait for FC*/
#         if(((uint16) CANTP_GENERAL_ZERO != CanTpChannel_p->BlockSize_u16) &&
	.d2line		326
.Llo3:
	lhz		r0,16(r3)		# CanTpChannel_p=r3
	se_cmpi		r0,0
	bc		1,2,.L166	# eq
	lhz		r0,42(r3)		# CanTpChannel_p=r3
	se_cmpi		r0,0
	bc		0,2,.L166	# ne
#                 ((uint16) CANTP_GENERAL_ZERO == CanTpChannel_p->RemainingCFInBlock_u16))
#         {
#             /*Set the State to Receive flow control and wait for the same*/
#             CanTpChannel_p->State_u8 = CANTP_CH_TX_RECEIVE_FC;
	.d2line		330
	diab.li		r0,139
	stb		r0,14(r3)		# CanTpChannel_p=r3
# 
#             /*Start timer for N_Bs Timeout*/
#             CanTpChannel_p->TimeoutTicks_u16 = CanTp_TxNSduConfig_p[TxIPduId].CanTpNbs_u16;
	.d2line		333
	rlwinm		r0,r5,0,16,31		# TxIPduId=r5
	lis		r4,CanTp_TxNSduConfig_p@ha
	lwz		r4,CanTp_TxNSduConfig_p@l(r4)
	rlwinm		r5,r0,4,0,27		# TxIPduId=r5
	se_slwi		r0,2
	subf		r0,r0,r5		# TxIPduId=r5
	se_add		r4,r0
	lhz		r0,2(r4)
	sth		r0,4(r3)		# CanTpChannel_p=r3
	b		.L163
.L166:
# 
#         }
#         else
#         {
#             /*We are not waiting for FC frame*/
#             CanTpChannel_p->TimeoutTicks_u16 = CanTp_TxNSduConfig_p[TxIPduId].CanTpNcs_u16;
	.d2line		339
	rlwinm		r0,r5,0,16,31		# TxIPduId=r5
	lis		r4,CanTp_TxNSduConfig_p@ha
	lwz		r4,CanTp_TxNSduConfig_p@l(r4)
	rlwinm		r5,r0,4,0,27		# TxIPduId=r5
	se_slwi		r0,2
	subf		r0,r0,r5		# TxIPduId=r5
	se_add		r4,r0
	lhz		r0,4(r4)
	sth		r0,4(r3)		# CanTpChannel_p=r3
# 
#             /* Then Check for St_Min values */
#             /* If St_Min configured is zero then continue transmission else wait for St_Min timeout */
#             if(CANTP_GENERAL_ZERO == CanTpChannel_p->StMin_u8)
	.d2line		343
	lbz		r0,21(r3)		# CanTpChannel_p=r3
	se_cmpi		r0,0
	bc		0,2,.L168	# ne
#             {
#                 /* first we have to request for a new buffer */
#                 CanTpChannel_p->State_u8 = CANTP_CH_TX_REQBUF_CF;
	.d2line		346
.Llo8:
	diab.li		r0,138
	stb		r0,14(r3)		# CanTpChannel_p=r3
# 
#                 /* Request New TX buffer */
#                 CanTp_PrepareTxDataFrame(CanTpChannel_p);
	.d2line		349
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo4:
	bl		CanTp_PrepareTxDataFrame
	b		.L163
.L168:
#             }
#             /* The configured STmin is non zero */
#             else
#             {
#                 /*Calculate the St_Min Time and Start a main function timer for that.*/
#                 if(CanTpChannel_p->StMin_u8 < CANTP_STMIN_MS_RANGE)
	.d2line		355
.Llo5:
	lbz		r0,21(r3)		# CanTpChannel_p=r3
	cmpi		0,0,r0,128
	bc		0,0,.L170	# ge
#                 {
#                     /* Calculate StMin Ticks Value, StMinLocalTicks_u16 is in 100us */
#                     StMinLocalTicks_u16 = (uint16) CanTpChannel_p->StMin_u8 * 10U;
	.d2line		358
	lbz		r0,21(r3)		# CanTpChannel_p=r3
	e_mulli		r0,r0,10
.Llo9:
	mr		r0,r0		# StMinLocalTicks_u16=r0 StMinLocalTicks_u16=r0
	b		.L171
.L170:
#                 }
#                 /* STMin is in micro second range */
#                 else if((CanTpChannel_p->StMin_u8 > CANTP_STMIN_US_RANGE) &&
	.d2line		361
.Llo10:
	lbz		r4,21(r3)		# CanTpChannel_p=r3
	diab.addi		r4,r4,-241
	se_cmpli	r4,8
	bc		1,1,.L172	# gt
#                         (CanTpChannel_p->StMin_u8 <= CANTP_STMIN_MAX_US))
#                 {
#                     /* Calculate StMin Ticks Value, the STMin value is in 100us to 900us range (F1-F9) so convert
#                      * main function period to be in 100us resolution and subtract the offset (F0) from ST min */
#                     StMinLocalTicks_u16 = (uint16) (CanTpChannel_p->StMin_u8 - CANTP_STMIN_US_RANGE);
	.d2line		366
	lbz		r0,21(r3)		# CanTpChannel_p=r3
	diab.li		r4,65296
	se_add		r0,r4
.Llo11:
	mr		r0,r0		# StMinLocalTicks_u16=r0 StMinLocalTicks_u16=r0
	b		.L171
.L172:
#                 }
#                 else
#                 {
#                     /* This is a reserved value according to ISO15765-2 so in this case a default value is loaded */
#                     StMinLocalTicks_u16 = CanTp_GeneralConfig_p->CanTp_Mf_Resolution_u16;
	.d2line		371
.Llo12:
	lis		r4,CanTp_GeneralConfig_p@ha
	lwz		r4,CanTp_GeneralConfig_p@l(r4)
	lhz		r0,8(r4)
.Llo13:
	mr		r0,r0		# StMinLocalTicks_u16=r0 StMinLocalTicks_u16=r0
.L171:
#                 }
#                 /*Set the State to Transmit CF WAIT and Start N_Cs Timeout*/
#                 CanTpChannel_p->State_u8 = CANTP_CH_TX_TRANSMIT_CF_WAIT;
	.d2line		374
	diab.li		r4,132
	stb		r4,14(r3)		# CanTpChannel_p=r3
# 
#                 /*Start St_Min Timeout*/
#                 CanTpChannel_p->StMinTicks_u16 = StMinLocalTicks_u16;
	.d2line		377
	sth		r0,6(r3)		# CanTpChannel_p=r3 StMinLocalTicks_u16=r0
.L163:
#             }
#         }
#     }
# }/* End of CanTp_ConfProcessCF() */
	.d2line		381
	.d2epilogue_begin
.Llo6:
	lwz		r0,20(r1)		# StMinLocalTicks_u16=r0
	mtspr		lr,r0		# StMinLocalTicks_u16=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L248:
	.type		CanTp_ConfProcessCF,@function
	.size		CanTp_ConfProcessCF,.-CanTp_ConfProcessCF
# Number of nodes = 141

# Allocations for CanTp_ConfProcessCF
#	?a4		CanTpChannel_p
#	?a5		TxIPduId
#	?a6		$$33
#	?a7		$$32
#	?a8		StMinLocalTicks_u16
# static FUNC(boolean, CANTP_CODE) CanTp_ProcessRxFC
	.align		1
	.section	.text_vle
        .d2line         633,34
#$$ld
.L265:

#$$bf	CanTp_ProcessRxFC,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.d2_cfa_start __cie
CanTp_ProcessRxFC:
.Llo14:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# CanTpTxPduId=r7 CanTpTxPduId=r3
	mr		r4,r4		# CanTpChannel_p=r4 CanTpChannel_p=r4
	mr		r5,r5		# TimerVal_u16=r5 TimerVal_u16=r5
	mr		r0,r6		# NewState_u8=r0 NewState_u8=r6
	.d2prologue_end
# (
#     CONST(PduIdType, AUTOMATIC) CanTpTxPduId,
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p,
#     CONST(uint16, AUTOMATIC) TimerVal_u16,
#     CONST(uint8, AUTOMATIC) NewState_u8
# )
# {
#     /* Return Value */
#     VAR(boolean, AUTOMATIC) RetVal_b = CANTP_FALSE;
	.d2line		642
	diab.li		r6,0		# RetVal_b=r6
# 
#     /* Check for channel whether ID is matching with the RX FC Pdu*/
#     if(CanTpTxPduId == CanTp_RxNSduConfig_p[CanTpChannel_p->IPduId].CanTpTxFcNPduIdConf)
	.d2line		645
.Llo19:
	rlwinm		r7,r7,0,16,31		# CanTpTxPduId=r7 CanTpTxPduId=r7
.Llo15:
	lis		r3,CanTp_RxNSduConfig_p@ha
.Llo16:
	lwz		r31,CanTp_RxNSduConfig_p@l(r3)
	lhz		r3,2(r4)		# CanTpChannel_p=r4
	rlwinm		r3,r3,4,12,27
	se_add		r3,r31
	lhz		r3,12(r3)
	se_cmp		r7,r3		# CanTpTxPduId=r7
	bc		0,2,.L239	# ne
#     {
#         /* Change to next State */
#         CanTpChannel_p->State_u8 = NewState_u8;
	.d2line		648
.Llo17:
	stb		r0,14(r4)		# CanTpChannel_p=r4 NewState_u8=r0
# 
#         /* Load the received timer value */
#         CanTpChannel_p->TimeoutTicks_u16 = TimerVal_u16;
	.d2line		651
	sth		r5,4(r4)		# CanTpChannel_p=r4 TimerVal_u16=r5
# 
#         /* Mark the Executed Flag */
#         RetVal_b = CANTP_TRUE;
	.d2line		654
	diab.li		r6,1		# RetVal_b=r6
.L239:
#     }
#     else
#     {
#         /* This is not the Channel associated with the Received PduId */
#     }
# 
#     return RetVal_b;
	.d2line		661
.Llo18:
	rlwinm		r3,r6,0,24,31		# RetVal_b=r6
# }/* End of CanTp_ProcessRxFC() */
	.d2line		662
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# NewState_u8=r0
	mtspr		lr,r0		# NewState_u8=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo20:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L266:
	.type		CanTp_ProcessRxFC,@function
	.size		CanTp_ProcessRxFC,.-CanTp_ProcessRxFC
# Number of nodes = 36

# Allocations for CanTp_ProcessRxFC
#	?a4		CanTpTxPduId
#	?a5		CanTpChannel_p
#	?a6		TimerVal_u16
#	?a7		NewState_u8
#	?a8		RetVal_b
# static FUNC(boolean, CANTP_CODE) CanTp_RxStopPdu
	.align		1
	.section	.text_vle
        .d2line         679,34
#$$ld
.L281:

#$$bf	CanTp_RxStopPdu,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_RxStopPdu:
.Llo21:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
	mr		r4,r4		# CanTpTxPduId=r4 CanTpTxPduId=r4
	mr		r5,r5		# LocalPduId=r5 LocalPduId=r5
	mr		r6,r6		# CallDemDet=r6 CallDemDet=r6
	mr		r7,r7		# PdurResult=r7 PdurResult=r7
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p,
#     CONST(PduIdType, AUTOMATIC) CanTpTxPduId,
#     CONST(PduIdType, AUTOMATIC) LocalPduId,
#     CONST(boolean, AUTOMATIC) CallDemDet,
#     CONST(NotifResultType, AUTOMATIC) PdurResult
# )
# {
#     /* Return Value */
#     VAR(boolean, AUTOMATIC) RetVal_b = CANTP_FALSE;
	.d2line		689
	diab.li		r31,0		# RetVal_b=r31
# 
#     /* Check for channel whether ID is Matching with the RX FC Pdu */
#     if(CanTpTxPduId == LocalPduId)
	.d2line		692
	rlwinm		r4,r4,0,16,31		# CanTpTxPduId=r4 CanTpTxPduId=r4
	rlwinm		r5,r5,0,16,31		# LocalPduId=r5 LocalPduId=r5
	se_cmp		r4,r5		# CanTpTxPduId=r4 LocalPduId=r5
	bc		0,2,.L243	# ne
#     {
#         /* Overflow sent successfully now stop the Channel and inform upper layer */
#         CanTp_StopChannel(CanTpChannel_p, CallDemDet, PdurResult);
	.d2line		695
.Llo22:
	rlwinm		r4,r6,0,24,31		# CanTpTxPduId=r4 CallDemDet=r6
	rlwinm		r5,r7,0,24,31		# LocalPduId=r5 PdurResult=r7
.Llo23:
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo24:
	bl		CanTp_StopChannel
# 
#         /* Mark the Executed Flag */
#         RetVal_b = CANTP_TRUE;
	.d2line		698
.Llo25:
	diab.li		r31,1		# RetVal_b=r31
.L243:
#     }
#     else
#     {
#         /* This is not the Channel associated with the Received PduId */
#     }
# 
#     return RetVal_b;
	.d2line		705
	rlwinm		r3,r31,0,24,31		# RetVal_b=r31
# }/* End of CanTp_RxStopPdu() */
	.d2line		706
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo26:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L282:
	.type		CanTp_RxStopPdu,@function
	.size		CanTp_RxStopPdu,.-CanTp_RxStopPdu
# Number of nodes = 23

# Allocations for CanTp_RxStopPdu
#	?a4		CanTpChannel_p
#	?a5		CanTpTxPduId
#	?a6		LocalPduId
#	?a7		CallDemDet
#	?a8		PdurResult
#	?a9		RetVal_b
# FUNC(boolean, CANTP_CODE) CanTp_IntTxConf
	.align		2
	.section	.text_vle
        .d2line         88,27
#$$ld
.L297:

#$$bf	CanTp_IntTxConf,interprocedural,rasave,nostackparams
	.globl		CanTp_IntTxConf
	.d2_cfa_start __cie
CanTp_IntTxConf:
.Llo27:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
	mr		r0,r4		# CanTpTxPduId=r0 CanTpTxPduId=r4
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p,
#     CONST(PduIdType, AUTOMATIC) CanTpTxPduId
# )
# {
#     /*Flag to detect whether the PDUID is found or not*/
#     VAR(boolean, AUTOMATIC) PduExecutedFlag_b = CANTP_FALSE;
	.d2line		95
	diab.li		r4,0		# PduExecutedFlag_b=r4
# 
#     /* PRQA S 2016 ++ *//* 'switch' statement 'default' clause is empty */
#     switch (CanTpChannel_p->State_u8)
	.d2line		98
.Llo37:
	lbz		r6,14(r3)		# CanTpChannel_p=r3
	cmpi		0,0,r6,133
	bc		1,1,.L304	# gt
.Llo38:
	bc		1,2,.L128	# eq
	cmpi		0,0,r6,73
	bc		1,2,.L124	# eq
	cmpi		0,0,r6,74
	bc		1,2,.L126	# eq
	cmpi		0,0,r6,75
	bc		1,2,.L127	# eq
	b		.L125
.L304:
	cmpi		0,0,r6,134
	bc		1,2,.L129	# eq
	cmpi		0,0,r6,135
	bc		1,2,.L132	# eq
	b		.L125
.L124:
#     {
#         case CANTP_CH_RX_SEGMENTED_CONFIRM_FC_CTS:
#         {
#             /* Check for the pduId and Change the State and timer */
#             PduExecutedFlag_b = CanTp_ProcessRxFC(
	.d2line		103
	lis		r4,CanTp_RxNSduConfig_p@ha		# PduExecutedFlag_b=r4
	lwz		r5,CanTp_RxNSduConfig_p@l(r4)		# PduExecutedFlag_b=r4
	lhz		r4,2(r3)		# PduExecutedFlag_b=r4 CanTpChannel_p=r3
	rlwinm		r4,r4,4,12,27		# PduExecutedFlag_b=r4 PduExecutedFlag_b=r4
	se_add		r4,r5		# PduExecutedFlag_b=r4 PduExecutedFlag_b=r4
	lhz		r5,6(r4)		# PduExecutedFlag_b=r4
	mr		r4,r3		# CanTpChannel_p=r4 CanTpChannel_p=r3
	mr		r3,r0		# CanTpTxPduId=r3 CanTpTxPduId=r0
.Llo28:
	diab.li		r6,68
	bl		CanTp_ProcessRxFC
.Llo39:
	mr		r4,r3		# PduExecutedFlag_b=r4 PduExecutedFlag_b=r3
	b		.L125
.L126:
#                     CanTpTxPduId,
#                     CanTpChannel_p,
#                     CanTp_RxNSduConfig_p[CanTpChannel_p->IPduId].CanTpNcr_u16,
#                     CANTP_CH_RX_SEGMENTED_CF_WAIT
#             );
#             break;
#         }
# 
#         case CANTP_CH_RX_SEGMENTED_CONFIRM_FC_WAIT:
#         {
#             PduExecutedFlag_b = CanTp_ProcessRxFC(
	.d2line		114
.Llo29:
	lis		r4,CanTp_RxNSduConfig_p@ha		# PduExecutedFlag_b=r4
	lwz		r5,CanTp_RxNSduConfig_p@l(r4)		# PduExecutedFlag_b=r4
	lhz		r4,2(r3)		# PduExecutedFlag_b=r4 CanTpChannel_p=r3
	rlwinm		r4,r4,4,12,27		# PduExecutedFlag_b=r4 PduExecutedFlag_b=r4
	se_add		r4,r5		# PduExecutedFlag_b=r4 PduExecutedFlag_b=r4
	lhz		r5,4(r4)		# PduExecutedFlag_b=r4
	lbz		r6,15(r3)		# CanTpChannel_p=r3
	mr		r4,r3		# CanTpChannel_p=r4 CanTpChannel_p=r3
	mr		r3,r0		# CanTpTxPduId=r3 CanTpTxPduId=r0
.Llo30:
	bl		CanTp_ProcessRxFC
.Llo40:
	mr		r4,r3		# PduExecutedFlag_b=r4 PduExecutedFlag_b=r3
	b		.L125
.L127:
#                     CanTpTxPduId,
#                     CanTpChannel_p,
#                     CanTp_RxNSduConfig_p[CanTpChannel_p->IPduId].CanTpNbr_u16,
#                     CanTpChannel_p->NextState_u8
#             );
#             break;
#         }
# 
#         case CANTP_CH_RX_SEGMENTED_CONFIRM_FC_OVFLW:
#         {
#             /* Check for the pduId & stop the Channel accordingly */
#             PduExecutedFlag_b = CanTp_RxStopPdu(
	.d2line		126
.Llo31:
	lis		r4,CanTp_RxNSduConfig_p@ha		# PduExecutedFlag_b=r4
	lwz		r5,CanTp_RxNSduConfig_p@l(r4)		# PduExecutedFlag_b=r4
	lhz		r4,2(r3)		# PduExecutedFlag_b=r4 CanTpChannel_p=r3
	rlwinm		r4,r4,4,12,27		# PduExecutedFlag_b=r4 PduExecutedFlag_b=r4
	se_add		r4,r5		# PduExecutedFlag_b=r4 PduExecutedFlag_b=r4
	lhz		r5,12(r4)		# PduExecutedFlag_b=r4
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo32:
	mr		r4,r0		# CanTpTxPduId=r4 CanTpTxPduId=r0
	diab.li		r6,1
	diab.li		r7,10
	bl		CanTp_RxStopPdu
.Llo41:
	mr		r4,r3		# PduExecutedFlag_b=r4 PduExecutedFlag_b=r3
	b		.L125
.L128:
#                     CanTpChannel_p,
#                     CanTpTxPduId,
#                     CanTp_RxNSduConfig_p[CanTpChannel_p->IPduId].CanTpTxFcNPduIdConf,
#                     TRUE,
#                     NTFRSLT_E_NO_BUFFER
#             );
#             break;
#         }
# 
#         case CANTP_CH_TX_CONFIRM_SF:
#         {
#             /* Check for the pduId & stop the Channel accordingly */
#             PduExecutedFlag_b = CanTp_RxStopPdu(
	.d2line		139
.Llo33:
	lhz		r5,2(r3)		# CanTpChannel_p=r3
	lis		r4,CanTp_TxNSduConfig_p@ha		# PduExecutedFlag_b=r4
	lwz		r4,CanTp_TxNSduConfig_p@l(r4)		# PduExecutedFlag_b=r4 PduExecutedFlag_b=r4
	rlwinm		r6,r5,4,0,27
	se_slwi		r5,2
	subf		r5,r5,r6
	se_add		r4,r5		# PduExecutedFlag_b=r4 PduExecutedFlag_b=r4
	lhz		r5,8(r4)		# PduExecutedFlag_b=r4
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo34:
	mr		r4,r0		# CanTpTxPduId=r4 CanTpTxPduId=r0
	diab.li		r6,0
	diab.li		r7,0
	bl		CanTp_RxStopPdu
.Llo42:
	mr		r4,r3		# PduExecutedFlag_b=r4 PduExecutedFlag_b=r3
	b		.L125
.L129:
#                     CanTpChannel_p,
#                     CanTpTxPduId,
#                     CanTp_TxNSduConfig_p[CanTpChannel_p->IPduId].CanTpTxConfirmationId,
#                     FALSE,
#                     NTFRSLT_OK
#             );
#             break;
#         }
# 
#         case CANTP_CH_TX_CONFIRM_FF:
#         {
#             /* Check for channel whether ID is Matching
#              * with the TX Pdu*/
#             if (CanTpTxPduId == CanTp_TxNSduConfig_p[CanTpChannel_p->IPduId].CanTpTxConfirmationId)
	.d2line		153
.Llo35:
	lhz		r5,2(r3)		# CanTpChannel_p=r3
.Llo43:
	rlwinm		r0,r0,0,16,31		# CanTpTxPduId=r0 CanTpTxPduId=r0
	lis		r6,CanTp_TxNSduConfig_p@ha
	lwz		r6,CanTp_TxNSduConfig_p@l(r6)
	rlwinm		r7,r5,4,0,27
	se_slwi		r5,2
	subf		r5,r5,r7
	se_add		r6,r5
	lhz		r5,8(r6)
	se_cmp		r0,r5		# CanTpTxPduId=r0
	bc		0,2,.L125	# ne
#             {
#                 /* FF Transmitted Successfully. Now we have to
#                  * wait for FC from the receiver */
#                 CanTpChannel_p->State_u8 = CANTP_CH_TX_RECEIVE_FC;
	.d2line		157
.Llo44:
	diab.li		r0,139		# CanTpTxPduId=r0
.Llo45:
	stb		r0,14(r3)		# CanTpChannel_p=r3 CanTpTxPduId=r0
# 
#                 /*Start the N_Bs timer*/
#                 CanTpChannel_p->TimeoutTicks_u16 = CanTp_TxNSduConfig_p[CanTpChannel_p->IPduId].CanTpNbs_u16;
	.d2line		160
	lhz		r0,2(r3)		# CanTpTxPduId=r0 CanTpChannel_p=r3
	lis		r4,CanTp_TxNSduConfig_p@ha		# PduExecutedFlag_b=r4
	lwz		r5,CanTp_TxNSduConfig_p@l(r4)		# PduExecutedFlag_b=r4
	rlwinm		r4,r0,4,0,27		# PduExecutedFlag_b=r4 CanTpTxPduId=r0
	se_slwi		r0,2		# CanTpTxPduId=r0 CanTpTxPduId=r0
	subf		r0,r0,r4		# CanTpTxPduId=r0 CanTpTxPduId=r0 PduExecutedFlag_b=r4
	se_add		r5,r0		# CanTpTxPduId=r0
	lhz		r0,2(r5)		# CanTpTxPduId=r0
	sth		r0,4(r3)		# CanTpChannel_p=r3 CanTpTxPduId=r0
# 
#                 /*Mark the Executed Flag*/
#                 PduExecutedFlag_b = CANTP_TRUE;
	.d2line		163
	diab.li		r4,1		# PduExecutedFlag_b=r4
	b		.L125
.L132:
#             }
#             else
#             {
#                 /*This is not the Channel associated
#                  *with the Received PduId*/
#             }
#             break;
#         }
# 
#         case CANTP_CH_TX_CONFIRM_CF:
#         {
#             /* Check for channel whether ID is Matching with the TX Pdu*/
#             if (CanTpTxPduId == CanTp_TxNSduConfig_p[CanTpChannel_p->IPduId].CanTpTxConfirmationId)
	.d2line		176
.Llo46:
	lhz		r5,2(r3)		# CanTpChannel_p=r3
.Llo47:
	rlwinm		r0,r0,0,16,31		# CanTpTxPduId=r0 CanTpTxPduId=r0
	lis		r6,CanTp_TxNSduConfig_p@ha
	lwz		r6,CanTp_TxNSduConfig_p@l(r6)
	rlwinm		r7,r5,4,0,27
	se_slwi		r5,2
	subf		r5,r5,r7
	se_add		r6,r5
	lhz		r5,8(r6)
	se_cmp		r0,r5		# CanTpTxPduId=r0
	bc		0,2,.L125	# ne
#             {
#                 CanTp_ConfProcessCF(CanTpChannel_p, CanTpChannel_p->IPduId);
	.d2line		178
.Llo48:
	lhz		r4,2(r3)		# PduExecutedFlag_b=r4 CanTpChannel_p=r3
	mr		r3,r3		# CanTpChannel_p=r3 CanTpChannel_p=r3
.Llo36:
	bl		CanTp_ConfProcessCF
# 
#                 /*Mark the Executed Flag*/
#                 PduExecutedFlag_b = CANTP_TRUE;
	.d2line		181
	diab.li		r4,1		# PduExecutedFlag_b=r4
.L125:
#             }
#             else
#             {
#                 /*This is not the Channel associated
#                  *with the Received PduId*/
#             }
#             break;
#         }
#         default:
#         {
#             /*This Channel doesn't have any confirmation awaited*/
#             break;
#         }
#     }
#     /* PRQA S 2016 -- */
# 
#     return PduExecutedFlag_b;
	.d2line		198
	rlwinm		r3,r4,0,24,31		# CanTpChannel_p=r3 PduExecutedFlag_b=r4
# }/* End of CanTp_IntTxConf() */
	.d2line		199
	.d2epilogue_begin
	lwz		r0,20(r1)		# CanTpTxPduId=r0
	mtspr		lr,r0		# CanTpTxPduId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo49:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L298:
	.type		CanTp_IntTxConf,@function
	.size		CanTp_IntTxConf,.-CanTp_IntTxConf
# Number of nodes = 196

# Allocations for CanTp_IntTxConf
#	?a4		CanTpChannel_p
#	?a5		CanTpTxPduId
#	?a6		$$37
#	?a7		$$36
#	?a8		$$35
#	?a9		$$34
#	?a10		PduExecutedFlag_b
# static FUNC(void, CANTP_CODE) CanTp_IndProcessxF
	.align		1
	.section	.text_vle
        .d2line         398,31
#$$ld
.L307:

#$$bf	CanTp_IndProcessxF,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_IndProcessxF:
.Llo50:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CanTpChannel_p=r31 CanTpChannel_p=r3
	mr		r30,r4		# RxIPduId=r30 RxIPduId=r4
	mr		r29,r5		# PduData=r29 PduData=r5
	mr		r28,r6		# PduLength_u8=r28 PduLength_u8=r6
	.d2prologue_end
# (
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p,
#     CONST(PduIdType, AUTOMATIC) RxIPduId,
#     CONST(uint8, AUTOMATIC) PduData[],
#     CONST(uint8, AUTOMATIC) PduLength_u8
# )
# {
#     /*variable to Handle Received Length*/
#     VAR(PduLengthType, AUTOMATIC) NSduLength;
# 
#     /*variable to Handle Received Length*/
#     VAR(uint8, AUTOMATIC) MaxSfLength;
# 
#     /*Variable for handling error conditions*/
#     VAR(boolean, AUTOMATIC) AllOkFlag_b = CANTP_TRUE;
	.d2line		413
	diab.li		r3,1		# AllOkFlag_b=r3
# 
#     /*Copy the Frame information to Local variable*/
#     /* PRQA S 492 1 *//* Misra rule 17.4, Array indexing shall be the only allowed form of pointer arithmetic */
#     CONST(uint8, AUTOMATIC) pciType_u8 = (uint8) (PduData[0] & CANTP_UPPER_NIBBLE_MASK);
	.d2line		417
.Llo51:
	lbz		r0,0(r29)		# PduData=r29
	rlwinm		r0,r0,0,24,27
.Llo68:
	mr		r0,r0		# pciType_u8=r0 pciType_u8=r0
# 
#     /* Variable which is contains the frame data length correction because of the addressing*/
#     CONST(uint8, AUTOMATIC) addrInfoLength =
	.d2line		420
	rlwinm		r5,r30,0,16,31		# RxIPduId=r30
.Llo55:
	lis		r4,CanTp_RxNSdu_p@ha		# addrInfoLength=r4
.Llo54:
	lwz		r4,CanTp_RxNSdu_p@l(r4)		# addrInfoLength=r4 addrInfoLength=r4
	rlwinm		r6,r5,5,0,26
.Llo56:
	se_slwi		r5,3
	subf		r5,r5,r6
	lwzx		r4,r4,r5		# addrInfoLength=r4 addrInfoLength=r4
	se_cmpi		r4,0		# addrInfoLength=r4
	isel		r4,0,r4,2		# addrInfoLength=r4 addrInfoLength=r4
.L198:
.Llo52:
	diab.li		r5,1
.Llo64:
	isel		r6,r4,r5,2		# addrInfoLength=r6 addrInfoLength=r4
.L199:
#     (uint8) (CANTP_STANDARD == CanTp_RxNSdu_p[RxIPduId].CanTpAddressingMode) ? 0U : 1U;
# 
#     if(CANTP_FRAME_SF == pciType_u8)
	.d2line		423
.Llo82:
	rlwinm		r0,r0,0,24,31		# pciType_u8=r0 pciType_u8=r0
.Llo83:
	se_cmpi		r0,0		# pciType_u8=r0
	bc		0,2,.L182	# ne
#     {
#         /* PRQA S 492 1 *//* Misra rule 17.4, Array indexing shall be the only allowed form of pointer arithmetic */
#         if(CANTP_GENERAL_ZERO != (uint8) (PduData[0] & CANTP_LOWER_NIBBLE_MASK))
	.d2line		426
.Llo69:
	lbz		r0,0(r29)		# pciType_u8=r0 PduData=r29
.Llo70:
	e_andi.		r0,r0,15		# pciType_u8=r0 pciType_u8=r0
.Llo71:
	bc		1,2,.L183	# eq
#         {
#             /* If in the first PCI byte the lower four bits are NOT zero of an SF then the these four bit determines
#              * the length of the NSdu (payload)  */
#             NSduLength = (PduLengthType) (PduData[0] & CANTP_LOWER_NIBBLE_MASK);
	.d2line		430
	lbz		r27,0(r29)		# PduData=r29
	rlwinm		r27,r27,0,28,31
.Llo57:
	mr		r27,r27		# NSduLength=r27 NSduLength=r27
# 
#             /* The maximum length of the payload in the SF */
#             MaxSfLength = CANTP_SF_SHORT_MAX_DATA(addrInfoLength);
	.d2line		433
	subfic		r5,r6,7		# addrInfoLength=r6
	mr		r5,r5		# MaxSfLength=r5 MaxSfLength=r5
	b		.L184
.L183:
#         }
#         else
#         {
#             /* If in the first PCI byte the lower four bits are zero of an SF then the second bytes determines
#              * the length of the NSdu (payload) however this is possible for NSdus with CANFD support.
#              * The length of these SFs is minimum 8 but this was checked in CanTp_PaddingCheckRx */
#             if(CanTp_RxNSdu_p[RxIPduId].FrameType == CANTP_FRAME_TYPE_CAN20)
	.d2line		440
.Llo58:
	rlwinm		r0,r30,0,16,31		# pciType_u8=r0 RxIPduId=r30
.Llo72:
	lis		r4,CanTp_RxNSdu_p@ha		# addrInfoLength=r4
	lwz		r4,CanTp_RxNSdu_p@l(r4)		# addrInfoLength=r4 addrInfoLength=r4
	rlwinm		r7,r0,5,0,26		# pciType_u8=r0
	se_slwi		r0,3		# pciType_u8=r0 pciType_u8=r0
	subf		r0,r0,r7		# pciType_u8=r0 pciType_u8=r0
	se_add		r4,r0		# addrInfoLength=r4 addrInfoLength=r4 pciType_u8=r0
	lwz		r0,20(r4)		# pciType_u8=r0 addrInfoLength=r4
	se_cmpi		r0,0		# pciType_u8=r0
	bc		0,2,.L185	# ne
#             {
#                 /* This SF format (long) is valid for CANFD frames only */
#                 AllOkFlag_b = CANTP_FALSE;
	.d2line		443
.Llo73:
	diab.li		r3,0		# AllOkFlag_b=r3
	b		.L184
.L185:
#             }
#             else
#             {
#                 /* In case of long SFs the length is the second byte (after addressing if there is any) */
#                 NSduLength = (PduLengthType) PduData[1];
	.d2line		448
	lbz		r27,1(r29)		# NSduLength=r27 PduData=r29
.Llo59:
	mr		r27,r27		# NSduLength=r27 NSduLength=r27
# 
#                 if(NSduLength < (PduLengthType) CANTP_SF_LONG_MIN_DATA(addrInfoLength))
	.d2line		450
	rlwinm		r0,r27,0,16,31		# pciType_u8=r0 NSduLength=r27
.Llo74:
	subfic		r4,r6,7		# addrInfoLength=r4 addrInfoLength=r6
	rlwinm		r4,r4,0,24,31		# addrInfoLength=r4 addrInfoLength=r4
	se_addi		r4,1		# addrInfoLength=r4 addrInfoLength=r4
	rlwinm		r4,r4,0,16,31		# addrInfoLength=r4 addrInfoLength=r4
	se_cmp		r0,r4		# pciType_u8=r0 addrInfoLength=r4
	bc		0,0,.L187	# ge
#                 {
#                     /* The total SF with long format must be longer than one CAN 2.0 frame */
#                     AllOkFlag_b = CANTP_FALSE;
	.d2line		453
.Llo75:
	diab.li		r3,0		# AllOkFlag_b=r3
	b		.L184
.L187:
#                 }
#                 else
#                 {
#                     /* The maximum length of the payload in the SF */
#                     MaxSfLength = CANTP_SF_LONG_MAX_DATA(CANTP_MAX_CANFD_LENGTH, addrInfoLength);
	.d2line		458
	subfic		r5,r6,62		# addrInfoLength=r6
	mr		r5,r5		# MaxSfLength=r5 MaxSfLength=r5
.L184:
#                 }
#             }
#         }
# 
#         /* PRQA S 492 2 *//* Misra rule 17.4, Array indexing shall be the only allowed form of pointer arithmetic */
#         if((CANTP_FALSE == AllOkFlag_b) || (NSduLength > (PduLengthType) MaxSfLength))
	.d2line		464
.Llo84:
	rlwinm		r0,r3,0,24,31		# pciType_u8=r0 AllOkFlag_b=r3
.Llo76:
	se_cmpi		r0,0		# pciType_u8=r0
	bc		1,2,.L200	# eq
.Llo65:
	rlwinm		r0,r27,0,16,31		# pciType_u8=r0 NSduLength=r27
.Llo66:
	rlwinm		r5,r5,0,24,31		# MaxSfLength=r5 MaxSfLength=r5
	se_cmp		r0,r5		# pciType_u8=r0 MaxSfLength=r5
	bc		0,1,.L190	# le
.L200:
#         {
#             /*return from the call as the provided data is corrupted*/
#             AllOkFlag_b = CANTP_FALSE;
	.d2line		467
.Llo77:
	diab.li		r3,0		# AllOkFlag_b=r3
	b		.L190
.L182:
#         }
#     }
#     else
#     {
#         /*If frame is not SF then check for functional or physical,
#          *if functional abort transmission*/
#         if(CANTP_FUNCTIONAL == CanTp_RxNSdu_p[RxIPduId].CanTpRxTaType)
	.d2line		474
.Llo60:
	rlwinm		r0,r30,0,16,31		# pciType_u8=r0 RxIPduId=r30
.Llo78:
	lis		r4,CanTp_RxNSdu_p@ha		# addrInfoLength=r4
	lwz		r4,CanTp_RxNSdu_p@l(r4)		# addrInfoLength=r4 addrInfoLength=r4
	rlwinm		r5,r0,5,0,26		# pciType_u8=r0
	se_slwi		r0,3		# pciType_u8=r0 pciType_u8=r0
	subf		r0,r0,r5		# pciType_u8=r0 pciType_u8=r0
	se_add		r4,r0		# addrInfoLength=r4 addrInfoLength=r4 pciType_u8=r0
	lwz		r0,12(r4)		# pciType_u8=r0 addrInfoLength=r4
	se_cmpi		r0,0		# pciType_u8=r0
	bc		0,2,.L191	# ne
#         {
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
#             (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		477
.Llo79:
	diab.li		r3,35		# AllOkFlag_b=r3
	diab.li		r4,0		# addrInfoLength=r4
	diab.li		r5,66
	diab.li		r6,144		# addrInfoLength=r6
	bl		Det_ReportError
#                     CANTP_ID_RXINDICATION, CANTP_E_INVALID_TATYPE);
# #endif
#             AllOkFlag_b = CANTP_FALSE;
	.d2line		480
	diab.li		r3,0		# AllOkFlag_b=r3
	b		.L190
.L191:
#         }
#         else /*CANTP_FRAME_FF == pciType_u8*/
#         {
#             /* [SWS_CanTp_00350] - Calculate the received data length */
#             NSduLength = (PduLengthType) PduData[CANTP_BUFFER_INDEX_ZERO];
	.d2line		485
.Llo85:
	lbz		r0,0(r29)		# pciType_u8=r0 PduData=r29
.Llo61:
	mr		r0,r0		# NSduLength=r0 NSduLength=r0
# 
#             NSduLength = (PduLengthType) (NSduLength << CANTP_SHIFT_REQD_EIGHT);
	.d2line		487
	se_slwi		r0,8		# NSduLength=r0 NSduLength=r0
	mr		r0,r0		# NSduLength=r0 NSduLength=r0
# 
#             NSduLength = (PduLengthType) (NSduLength & CANTP_TOTAL_LENGTH_MASK_UN);
	.d2line		489
	rlwinm		r0,r0,0,20,23		# NSduLength=r0 NSduLength=r0
	mr		r0,r0		# NSduLength=r0 NSduLength=r0
# 
#             NSduLength += (PduLengthType) ((PduLengthType) PduData[CANTP_BUFFER_OFFSET_ONE] & CANTP_TOTAL_LENGTH_MASK_LN);
	.d2line		491
	lbz		r27,1(r29)		# NSduLength=r27 PduData=r29
	se_add		r0,r27		# NSduLength=r0 NSduLength=r0 NSduLength=r27
	mr		r27,r0		# NSduLength=r27 NSduLength=r0
# 
#             /* If the lower nibble of the first byte and the second byte is zero then the long FF format is used */
#             if(NSduLength == 0U)
	.d2line		494
	e_cmphl16i	r27,0		# NSduLength=r27
	bc		0,2,.L193	# ne
#             {
#                 NSduLength = (PduLengthType) ((PduLengthType) PduData[2] << 24U);
	.d2line		496
.Llo62:
	diab.li		r4,0		# NSduLength=r4
#                 NSduLength |= (PduLengthType) ((PduLengthType) PduData[3] << 16U);
#                 NSduLength |= (PduLengthType) ((PduLengthType) PduData[4] << 8U);
	.d2line		498
.Llo63:
	lbz		r27,4(r29)		# NSduLength=r27 PduData=r29
	se_slwi		r27,8		# NSduLength=r27 NSduLength=r27
	mr		r27,r27		# NSduLength=r27 NSduLength=r27
#                 NSduLength |= (PduLengthType) PduData[5];
	.d2line		499
	lbz		r0,5(r29)		# NSduLength=r0 PduData=r29
	or		r0,r0,r27		# NSduLength=r0 NSduLength=r0 NSduLength=r27
	mr		r27,r0		# NSduLength=r27 NSduLength=r0
# 
#                 /* The long FF format can't be used when the length of the NSdu is less than 4096*/
#                 if(NSduLength <= CANTP_FF_SHORT_PCI_MAX_NSDU_LENGTH)
	.d2line		502
	rlwinm		r0,r0,0,16,31		# NSduLength=r0 NSduLength=r0
	cmpi		0,0,r0,4095		# NSduLength=r0
#                 {
#                     AllOkFlag_b = CANTP_FALSE;
	isel		r3,r3,r4,1		# AllOkFlag_b=r3 AllOkFlag_b=r3 NSduLength=r4
.L193:
#                 }
#             }
# 
#             /* Store the expected frame size in this connection.
#              * It is necessary to add the addressing info length because it was removed before the channel
#              * was found so the correction is necessary. */
#             CanTpChannel_p->FrameSize = PduLength_u8 + addrInfoLength;
	.d2line		511
	add		r5,r28,r6		# PduLength_u8=r28 addrInfoLength=r6
	stb		r5,49(r31)		# CanTpChannel_p=r31
# 
#             /* PRQA S 492 -- */
#             /* Check if received length information is not up to FF range so which can be sent in SF
#              * should be sent in Single Frame */
#             if((CANTP_FALSE == AllOkFlag_b) ||
	.d2line		516
	rlwinm		r0,r3,0,24,31		# NSduLength=r0 AllOkFlag_b=r3
	se_cmpi		r0,0		# NSduLength=r0
	bc		1,2,.L201	# eq
	lbz		r0,49(r31)		# NSduLength=r0 CanTpChannel_p=r31
	se_cmpi		r0,8		# NSduLength=r0
	diab.li		r4,2		# addrInfoLength=r4
	isel		r4,r4,r0,1		# addrInfoLength=r4 addrInfoLength=r4 NSduLength=r0
.L202:
	diab.li		r0,1		# NSduLength=r0
	isel		r0,r4,r0,1		# NSduLength=r0 addrInfoLength=r4 NSduLength=r0
.L203:
.Llo86:
	rlwinm		r5,r27,0,16,31		# NSduLength=r27
	lbz		r4,49(r31)		# addrInfoLength=r4 CanTpChannel_p=r31
.Llo87:
	subf		r6,r6,r4		# addrInfoLength=r6 addrInfoLength=r6 addrInfoLength=r4
	rlwinm		r6,r6,0,24,31		# addrInfoLength=r6 addrInfoLength=r6
	subf		r0,r0,r6		# NSduLength=r0 NSduLength=r0 addrInfoLength=r6
	rlwinm		r0,r0,0,16,31		# NSduLength=r0 NSduLength=r0
	se_cmp		r5,r0		# NSduLength=r0
	bc		1,1,.L190	# gt
.L201:
#                     (NSduLength <= CANTP_SF_MAX_DATA(CanTpChannel_p->FrameSize,addrInfoLength)))
#             {
#                 /* return from the call as the provided data is corrupted */
#                 AllOkFlag_b = CANTP_FALSE;
	.d2line		520
.Llo88:
	diab.li		r3,0		# AllOkFlag_b=r3
.L190:
#             }
#         }
#     }
#     if(CANTP_FALSE != AllOkFlag_b)
	.d2line		524
	rlwinm		r3,r3,0,24,31		# AllOkFlag_b=r3 AllOkFlag_b=r3
	se_cmpi		r3,0		# AllOkFlag_b=r3
	bc		1,2,.L181	# eq
#     {
#         /*Check if the Channel is in IDLE state else stop the ongoing process*/
#         if(CANTP_CH_IDLE != CanTpChannel_p->State_u8)
	.d2line		527
.Llo67:
	lbz		r0,14(r31)		# pciType_u8=r0 CanTpChannel_p=r31
.Llo80:
	se_cmpi		r0,0		# pciType_u8=r0
	bc		1,2,.L197	# eq
#         {
#             /*Initialize the Channel by stopping current service*/
#             CanTp_StopChannel(CanTpChannel_p, TRUE, NTFRSLT_E_NOT_OK);
	.d2line		530
.Llo81:
	mr		r3,r31		# CanTpChannel_p=r3 CanTpChannel_p=r31
	diab.li		r4,1		# addrInfoLength=r4
	diab.li		r5,1		# MaxSfLength=r5
	bl		CanTp_StopChannel
.L197:
#         }
# 
#         /*Call Function to process SF/FF*/
#         /*Parameters - PduId, Data pointer, Sdu Length, Channel*/
#         /* PRQA S 492 2 *//* Misra rule 17.4, Array indexing shall be the only allowed form of pointer arithmetic */
#         CanTp_ProcessRxInitFrame(RxIPduId, &PduData[CANTP_BUFFER_INDEX_ZERO], PduLength_u8, NSduLength, CanTpChannel_p);
	.d2line		536
	rlwinm		r3,r30,0,16,31		# AllOkFlag_b=r3 RxIPduId=r30
	rlwinm		r5,r28,0,24,31		# MaxSfLength=r5 PduLength_u8=r28
	rlwinm		r6,r27,0,16,31		# addrInfoLength=r6 NSduLength=r27
	mr		r4,r29		# PduData=r4 PduData=r29
	mr		r7,r31		# CanTpChannel_p=r7 CanTpChannel_p=r31
	bl		CanTp_ProcessRxInitFrame
.L181:
#     }
# }/* End of CanTp_IndProcessxF() */
	.d2line		538
	.d2epilogue_begin
.Llo53:
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)		# pciType_u8=r0
	mtspr		lr,r0		# pciType_u8=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L308:
	.type		CanTp_IndProcessxF,@function
	.size		CanTp_IndProcessxF,.-CanTp_IndProcessxF
# Number of nodes = 259

# Allocations for CanTp_IndProcessxF
#	?a4		CanTpChannel_p
#	?a5		RxIPduId
#	?a6		PduData
#	?a7		PduLength_u8
#	?a8		$$40
#	?a9		$$39
#	?a10		$$38
#	?a11		$$31
#	?a12		NSduLength
#	?a13		MaxSfLength
#	?a14		AllOkFlag_b
#	?a15		pciType_u8
#	?a16		addrInfoLength
# static FUNC(void, CANTP_CODE) CanTp_ProcessFCCTS
	.align		1
	.section	.text_vle
        .d2line         553,31
#$$ld
.L328:

#$$bf	CanTp_ProcessFCCTS,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTp_ProcessFCCTS:
.Llo89:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# SduData=r3 SduData=r3
	mr		r4,r4		# CanTpChannel_p=r4 CanTpChannel_p=r4
	.d2prologue_end
# (
#     CONST(uint8, AUTOMATIC) SduData[],
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p
# )
# {
#     /*Check whether received is FC CTS*/
#     /* PRQA S 492 1 *//* Misra rule 17.4, Array indexing shall be the only allowed form of pointer arithmetic */
#     switch (SduData[CANTP_BUFFER_INDEX_ZERO])
	.d2line		561
	lbz		r6,0(r3)		# SduData=r3
	cmpi		0,0,r6,48
	bc		1,2,.L221	# eq
	cmpi		0,0,r6,49
	bc		1,2,.L225	# eq
.Llo90:
	cmpi		0,0,r6,50
	bc		1,2,.L226	# eq
	b		.L227
.L221:
#     {
#         case CANTP_FRAME_FC_CTS:
#         {
#             /* Change the Status to Request CF buffer */
#             CanTpChannel_p->State_u8 = CANTP_CH_TX_REQBUF_CF;
	.d2line		566
.Llo91:
	diab.li		r0,138
	stb		r0,14(r4)		# CanTpChannel_p=r4
# 
#             /* Store the block size in local structure */
#             /* PRQA S 492 1 *//* Misra rule 17.4, Array indexing shall be the only allowed form of pointer arithmetic */
#             CanTpChannel_p->BlockSize_u16 = (uint16) SduData[CANTP_BUFFER_OFFSET_ONE];
	.d2line		570
	lbz		r0,1(r3)		# SduData=r3
	sth		r0,16(r4)		# CanTpChannel_p=r4
# 
#             /* Reset the max remaining CF in block */
#             /* PRQA S 492 1 *//* Misra rule 17.4, Array indexing shall be the only allowed form of pointer arithmetic */
#             CanTpChannel_p->RemainingCFInBlock_u16 = (uint16) SduData[CANTP_BUFFER_OFFSET_ONE];
	.d2line		574
	lbz		r0,1(r3)		# SduData=r3
	sth		r0,42(r4)		# CanTpChannel_p=r4
# 
#             /* Check whether the received STmin is within the allowed value */
#             /* PRQA S 492 3 *//* Misra rule 17.4, Array indexing shall be the only allowed form of pointer arithmetic */
#             if((CANTP_STMIN_MAX_MS >= SduData[CANTP_BUFFER_INDEX_TWO]) ||
	.d2line		578
	lbz		r0,2(r3)		# SduData=r3
	cmpi		0,0,r0,127
	bc		0,1,.L228	# le
	lbz		r5,2(r3)		# SduData=r3
	diab.addi		r5,r5,-241
	se_cmpli	r5,8
	bc		1,1,.L222	# gt
.L228:
#                     ((CANTP_STMIN_MIN_US <= SduData[CANTP_BUFFER_INDEX_TWO]) &&
#                             (CANTP_STMIN_MAX_US >= SduData[CANTP_BUFFER_INDEX_TWO])))
#             {
#                 /*Store the Stmin value in local structure*/
#                 /* PRQA S 492 1 *//* Misra rule 17.4, Array indexing shall be the only allowed form of pointer arithmetic */
#                 CanTpChannel_p->StMin_u8 = SduData[CANTP_BUFFER_INDEX_TWO];
	.d2line		584
	lbz		r0,2(r3)		# SduData=r3
	stb		r0,21(r4)		# CanTpChannel_p=r4
	b		.L223
.L222:
#             }
#             /*Received StMin is out of range*/
#             else
#             {
#                 /*Assign Max Value to StMin*/
#                 CanTpChannel_p->StMin_u8 = CANTP_STMIN_MAX_MS;
	.d2line		590
	diab.li		r0,127
	stb		r0,21(r4)		# CanTpChannel_p=r4
.L223:
#             }
# 
#             /*Restart Timer*/
#             CanTpChannel_p->TimeoutTicks_u16 = CanTp_TxNSduConfig_p[CanTpChannel_p->IPduId].CanTpNcs_u16;
	.d2line		594
.Llo92:
	lhz		r0,2(r4)		# CanTpChannel_p=r4
	lis		r3,CanTp_TxNSduConfig_p@ha		# SduData=r3
.Llo93:
	lwz		r5,CanTp_TxNSduConfig_p@l(r3)		# SduData=r3
	rlwinm		r3,r0,4,0,27		# SduData=r3
	se_slwi		r0,2
	subf		r0,r0,r3		# SduData=r3
	se_add		r5,r0
	lhz		r0,4(r5)
	sth		r0,4(r4)		# CanTpChannel_p=r4
	b		.L220
.L225:
#             break;
#         }
# 
#         case CANTP_FRAME_FC_WAIT:
#         {
#             /*No change in state - Restart N_Bs Timer*/
#             CanTpChannel_p->TimeoutTicks_u16 = CanTp_TxNSduConfig_p[CanTpChannel_p->IPduId].CanTpNbs_u16;
	.d2line		601
.Llo94:
	lhz		r0,2(r4)		# CanTpChannel_p=r4
	lis		r3,CanTp_TxNSduConfig_p@ha		# SduData=r3
.Llo95:
	lwz		r3,CanTp_TxNSduConfig_p@l(r3)		# SduData=r3 SduData=r3
	rlwinm		r5,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r5
	se_add		r3,r0		# SduData=r3 SduData=r3
	lhz		r0,2(r3)		# SduData=r3
	sth		r0,4(r4)		# CanTpChannel_p=r4
	b		.L220
.L226:
#             break;
#         }
# 
#         case CANTP_FRAME_FC_OVFLW:
#         {
#             /*Stop the Channel with appropriate feed back*/
#             CanTp_StopChannel(CanTpChannel_p, TRUE, NTFRSLT_E_NO_BUFFER);
	.d2line		608
.Llo96:
	mr		r3,r4		# CanTpChannel_p=r3 CanTpChannel_p=r4
	diab.li		r4,1
.Llo97:
	diab.li		r5,10
	bl		CanTp_StopChannel
	b		.L220
.L227:
#             break;
#         }
# 
#         default:
#         {
#             /*Invalid Flow Status Stop the Channel*/
#             CanTp_StopChannel(CanTpChannel_p, TRUE, NTFRSLT_E_INVALID_FS);
	.d2line		615
.Llo98:
	mr		r3,r4		# CanTpChannel_p=r3 CanTpChannel_p=r4
	diab.li		r4,1
.Llo99:
	diab.li		r5,6
	bl		CanTp_StopChannel
.L220:
#             break;
#         }
#     }
# }/* End of CanTp_ProcessFCCTS() */
	.d2line		619
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
.L329:
	.type		CanTp_ProcessFCCTS,@function
	.size		CanTp_ProcessFCCTS,.-CanTp_ProcessFCCTS
# Number of nodes = 121

# Allocations for CanTp_ProcessFCCTS
#	?a4		SduData
#	?a5		CanTpChannel_p
#	?a6		$$42
#	?a7		$$41
# FUNC(void, CANTP_CODE) CanTp_IntRxInd
	.align		2
	.section	.text_vle
        .d2line         216,24
#$$ld
.L335:

#$$bf	CanTp_IntRxInd,interprocedural,rasave,nostackparams
	.globl		CanTp_IntRxInd
	.d2_cfa_start __cie
CanTp_IntRxInd:
.Llo100:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# RxIPduId=r3 RxIPduId=r3
	mr		r4,r4		# PduData=r4 PduData=r4
	mr		r5,r5		# PduLength_u8=r5 PduLength_u8=r5
	mr		r7,r6		# CanTpChannel_p=r7 CanTpChannel_p=r6
	.d2prologue_end
# (
#     CONST(PduIdType, AUTOMATIC) RxIPduId,
#     CONST(uint8, AUTOMATIC) PduData[],
#     CONST(uint8, AUTOMATIC) PduLength_u8,
#     CONSTP2VAR(CanTp_Channel_t, AUTOMATIC, CANTP_APPL_DATA) CanTpChannel_p
# )
# {
#     /*variable to memorize the frame received*/
#     VAR(uint8, AUTOMATIC) ReceivedFrame_u8;
# 
#     /*Copy the Frame information to Local variable*/
#     /* PRQA S 492 2 *//* Misra rule 17.4, Array indexing shall be the only allowed form of pointer arithmetic */
#     ReceivedFrame_u8 = (uint8) (PduData[CANTP_BUFFER_INDEX_ZERO] & CANTP_UPPER_NIBBLE_MASK);
	.d2line		229
.Llo113:
	lbz		r6,0(r4)		# PduData=r4
.Llo114:
	rlwinm		r6,r6,0,24,27
.Llo120:
	mr		r6,r6		# ReceivedFrame_u8=r6 ReceivedFrame_u8=r6
# 
#     if(CANTP_CH_TX_PROCESSING != (uint8) (CanTpChannel_p->State_u8 & CANTP_UPPER_NIBBLE_MASK))
	.d2line		231
	lbz		r0,14(r7)		# CanTpChannel_p=r7
	rlwinm		r0,r0,0,24,27
	cmpi		0,0,r0,128
	bc		1,2,.L144	# eq
#     {
#         /* PRQA S 2016 ++ *//* 'switch' statement 'default' clause is empty */
#         switch (ReceivedFrame_u8)
	.d2line		234
	rlwinm		r6,r6,0,24,31		# ReceivedFrame_u8=r6 ReceivedFrame_u8=r6
	se_cmpi		r6,0		# ReceivedFrame_u8=r6
	bc		1,2,.L146	# eq
	se_cmpi		r6,16		# ReceivedFrame_u8=r6
	bc		1,2,.L146	# eq
	cmpi		0,0,r6,32		# ReceivedFrame_u8=r6
	bc		1,2,.L148	# eq
.Llo101:
	b		.L143
.L146:
#         {
#             case CANTP_FRAME_SF:
#             case CANTP_FRAME_FF:
#             {
#                 CanTp_IndProcessxF(CanTpChannel_p, RxIPduId, PduData, PduLength_u8);
	.d2line		239
.Llo102:
	mr		r6,r5		# PduLength_u8=r6 PduLength_u8=r5
	mr		r5,r4		# PduData=r5 PduData=r4
.Llo110:
	mr		r4,r3		# RxIPduId=r4 RxIPduId=r3
.Llo106:
	mr		r3,r7		# CanTpChannel_p=r3 CanTpChannel_p=r7
.Llo103:
	bl		CanTp_IndProcessxF
.Llo115:
	b		.L143
.L148:
#                 break;
#             }
# 
#             case CANTP_FRAME_CF:
#             {
#                 /* Check if the Channel state is waiting for a CF*/
#                 if(CANTP_CH_RX_SEGMENTED_CF_WAIT == CanTpChannel_p->State_u8)
	.d2line		246
.Llo107:
	lbz		r0,14(r7)		# CanTpChannel_p=r7
	cmpi		0,0,r0,68
	bc		0,2,.L143	# ne
#                 {
#                     /*Check if the Sequence number is correct*/
#                     /* PRQA S 492 1 *//* Misra rule 17.4, Array indexing shall be the only allowed form of pointer arithmetic */
#                     if((PduData[CANTP_BUFFER_INDEX_ZERO] & CANTP_LOWER_NIBBLE_MASK) ==
	.d2line		250
	lbz		r3,0(r4)		# PduData=r4
	rlwinm		r3,r3,0,28,31
	lbz		r0,20(r7)		# CanTpChannel_p=r7
	rlwinm		r0,r0,0,28,31
	se_cmp		r3,r0
	bc		0,2,.L150	# ne
#                             (CanTpChannel_p->SequenceNumber_u8 & CANTP_LOWER_NIBBLE_MASK))
#                     {
#                         /* Don't Change the State and call the function to process Rx Frame */
#                         /* PRQA S 492 1 *//* Misra rule 17.4, Array indexing shall be the only allowed form of pointer arithmetic */
#                         CanTp_ProcessRxCFrame(CanTpChannel_p, &PduData[CANTP_BUFFER_OFFSET_ONE], PduLength_u8);
	.d2line		255
.Llo111:
	se_addi		r4,1		# PduData=r4 PduData=r4
.Llo108:
	rlwinm		r5,r5,0,24,31		# PduLength_u8=r5 PduLength_u8=r5
.Llo112:
	mr		r3,r7		# CanTpChannel_p=r3 CanTpChannel_p=r7
	bl		CanTp_ProcessRxCFrame
.Llo116:
	b		.L143
.L150:
#                     }
#                     else
#                     {
#                         /*Wrong serial number Stop Channel*/
#                         CanTp_StopChannel(CanTpChannel_p, TRUE, NTFRSLT_E_WRONG_SN);
	.d2line		260
.Llo117:
	mr		r3,r7		# CanTpChannel_p=r3 CanTpChannel_p=r7
	diab.li		r4,1		# PduData=r4
	diab.li		r5,5
	bl		CanTp_StopChannel
.Llo118:
	b		.L143
.L144:
#                     }
#                 }
#                 break;
#             }
# 
#             default:
#             {
#                 break;
#             }
#         }
#         /* PRQA S 2016 -- */
#     }
#     else if(CANTP_CH_TX_RECEIVE_FC == CanTpChannel_p->State_u8)
	.d2line		273
.Llo104:
	lbz		r0,14(r7)		# CanTpChannel_p=r7
	cmpi		0,0,r0,139
	bc		0,2,.L143	# ne
#     {
#         if(CANTP_FRAME_FC == ReceivedFrame_u8)
	.d2line		275
.Llo105:
	rlwinm		r6,r6,0,24,31		# ReceivedFrame_u8=r6 ReceivedFrame_u8=r6
	cmpi		0,0,r6,48		# ReceivedFrame_u8=r6
	bc		0,2,.L143	# ne
#         {
#             CanTp_ProcessFCCTS(PduData, CanTpChannel_p);
	.d2line		277
.Llo121:
	mr		r3,r4		# PduData=r3 PduData=r4
	mr		r4,r7		# CanTpChannel_p=r4 CanTpChannel_p=r7
.Llo109:
	bl		CanTp_ProcessFCCTS
.L143:
#         }
#         else
#         {
#             /* Do Nothing */
#         }
#     }
#     else
#     {
#         /*Do nothing*/
#     }
# 
# }/* End of CanTp_IntRxInd() */
	.d2line		289
	.d2epilogue_begin
.Llo119:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L336:
	.type		CanTp_IntRxInd,@function
	.size		CanTp_IntRxInd,.-CanTp_IntRxInd
# Number of nodes = 90

# Allocations for CanTp_IntRxInd
#	?a4		RxIPduId
#	?a5		PduData
#	?a6		PduLength_u8
#	?a7		CanTpChannel_p
#	?a8		ReceivedFrame_u8

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L365:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Types.h"
.L345:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Private.h"
.L249:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_InterruptProcessing.c"
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
	.uleb128	15
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_InterruptProcessing.c"
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
.L250:
	.sleb128	2
	.4byte		.L246-.L2
	.byte		"CanTp_ConfProcessCF"
	.byte		0
	.4byte		.L249
	.uleb128	306
	.uleb128	31
	.byte		0x1
	.4byte		.L247
	.4byte		.L248
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L249
	.uleb128	306
	.uleb128	31
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L251
	.4byte		.L255
	.sleb128	3
	.4byte		.L249
	.uleb128	306
	.uleb128	31
	.byte		"TxIPduId"
	.byte		0
	.4byte		.L256
	.4byte		.L260
	.section	.debug_info,,n
.L261:
	.sleb128	4
	.4byte		.L249
	.uleb128	313
	.uleb128	28
	.byte		"StMinLocalTicks_u16"
	.byte		0
	.4byte		.L258
	.4byte		.L262
	.section	.debug_info,,n
	.sleb128	0
.L246:
	.section	.debug_info,,n
.L269:
	.sleb128	5
	.4byte		.L264-.L2
	.byte		"CanTp_ProcessRxFC"
	.byte		0
	.4byte		.L249
	.uleb128	633
	.uleb128	34
	.4byte		.L267
	.byte		0x1
	.4byte		.L265
	.4byte		.L266
	.sleb128	3
	.4byte		.L249
	.uleb128	633
	.uleb128	34
	.byte		"CanTpTxPduId"
	.byte		0
	.4byte		.L256
	.4byte		.L270
	.sleb128	3
	.4byte		.L249
	.uleb128	633
	.uleb128	34
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L251
	.4byte		.L271
	.sleb128	3
	.4byte		.L249
	.uleb128	633
	.uleb128	34
	.byte		"TimerVal_u16"
	.byte		0
	.4byte		.L272
	.4byte		.L273
	.sleb128	3
	.4byte		.L249
	.uleb128	633
	.uleb128	34
	.byte		"NewState_u8"
	.byte		0
	.4byte		.L274
	.4byte		.L276
.L277:
	.sleb128	4
	.4byte		.L249
	.uleb128	642
	.uleb128	29
	.byte		"RetVal_b"
	.byte		0
	.4byte		.L267
	.4byte		.L278
	.section	.debug_info,,n
	.sleb128	0
.L264:
	.section	.debug_info,,n
.L283:
	.sleb128	5
	.4byte		.L280-.L2
	.byte		"CanTp_RxStopPdu"
	.byte		0
	.4byte		.L249
	.uleb128	679
	.uleb128	34
	.4byte		.L267
	.byte		0x1
	.4byte		.L281
	.4byte		.L282
	.sleb128	3
	.4byte		.L249
	.uleb128	679
	.uleb128	34
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L251
	.4byte		.L284
	.sleb128	3
	.4byte		.L249
	.uleb128	679
	.uleb128	34
	.byte		"CanTpTxPduId"
	.byte		0
	.4byte		.L256
	.4byte		.L285
	.sleb128	3
	.4byte		.L249
	.uleb128	679
	.uleb128	34
	.byte		"LocalPduId"
	.byte		0
	.4byte		.L256
	.4byte		.L286
	.sleb128	3
	.4byte		.L249
	.uleb128	679
	.uleb128	34
	.byte		"CallDemDet"
	.byte		0
	.4byte		.L287
	.4byte		.L288
	.sleb128	3
	.4byte		.L249
	.uleb128	679
	.uleb128	34
	.byte		"PdurResult"
	.byte		0
	.4byte		.L289
	.4byte		.L291
.L292:
	.sleb128	4
	.4byte		.L249
	.uleb128	689
	.uleb128	29
	.byte		"RetVal_b"
	.byte		0
	.4byte		.L267
	.4byte		.L293
	.section	.debug_info,,n
	.sleb128	0
.L280:
	.section	.debug_info,,n
.L299:
	.sleb128	6
	.4byte		.L296-.L2
	.byte		"CanTp_IntTxConf"
	.byte		0
	.4byte		.L249
	.uleb128	88
	.uleb128	27
	.4byte		.L267
	.byte		0x1
	.byte		0x1
	.4byte		.L297
	.4byte		.L298
	.sleb128	3
	.4byte		.L249
	.uleb128	88
	.uleb128	27
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L251
	.4byte		.L300
	.sleb128	3
	.4byte		.L249
	.uleb128	88
	.uleb128	27
	.byte		"CanTpTxPduId"
	.byte		0
	.4byte		.L256
	.4byte		.L301
.L302:
	.sleb128	4
	.4byte		.L249
	.uleb128	95
	.uleb128	29
	.byte		"PduExecutedFlag_b"
	.byte		0
	.4byte		.L267
	.4byte		.L303
	.section	.debug_info,,n
	.sleb128	0
.L296:
	.section	.debug_info,,n
.L309:
	.sleb128	2
	.4byte		.L306-.L2
	.byte		"CanTp_IndProcessxF"
	.byte		0
	.4byte		.L249
	.uleb128	398
	.uleb128	31
	.byte		0x1
	.4byte		.L307
	.4byte		.L308
	.sleb128	3
	.4byte		.L249
	.uleb128	398
	.uleb128	31
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L251
	.4byte		.L310
	.sleb128	3
	.4byte		.L249
	.uleb128	398
	.uleb128	31
	.byte		"RxIPduId"
	.byte		0
	.4byte		.L256
	.4byte		.L311
	.sleb128	3
	.4byte		.L249
	.uleb128	398
	.uleb128	31
	.byte		"PduData"
	.byte		0
	.4byte		.L312
	.4byte		.L313
	.sleb128	3
	.4byte		.L249
	.uleb128	398
	.uleb128	31
	.byte		"PduLength_u8"
	.byte		0
	.4byte		.L274
	.4byte		.L314
.L315:
	.sleb128	4
	.4byte		.L249
	.uleb128	407
	.uleb128	35
	.byte		"NSduLength"
	.byte		0
	.4byte		.L316
	.4byte		.L317
.L318:
	.sleb128	4
	.4byte		.L249
	.uleb128	410
	.uleb128	27
	.byte		"MaxSfLength"
	.byte		0
	.4byte		.L275
	.4byte		.L319
.L320:
	.sleb128	4
	.4byte		.L249
	.uleb128	413
	.uleb128	29
	.byte		"AllOkFlag_b"
	.byte		0
	.4byte		.L267
	.4byte		.L321
.L322:
	.sleb128	4
	.4byte		.L249
	.uleb128	417
	.uleb128	29
	.byte		"pciType_u8"
	.byte		0
	.4byte		.L274
	.4byte		.L323
.L324:
	.sleb128	4
	.4byte		.L249
	.uleb128	420
	.uleb128	29
	.byte		"addrInfoLength"
	.byte		0
	.4byte		.L274
	.4byte		.L325
	.section	.debug_info,,n
	.sleb128	0
.L306:
	.section	.debug_info,,n
.L330:
	.sleb128	2
	.4byte		.L327-.L2
	.byte		"CanTp_ProcessFCCTS"
	.byte		0
	.4byte		.L249
	.uleb128	553
	.uleb128	31
	.byte		0x1
	.4byte		.L328
	.4byte		.L329
	.sleb128	3
	.4byte		.L249
	.uleb128	553
	.uleb128	31
	.byte		"SduData"
	.byte		0
	.4byte		.L312
	.4byte		.L331
	.sleb128	3
	.4byte		.L249
	.uleb128	553
	.uleb128	31
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L251
	.4byte		.L332
	.section	.debug_info,,n
	.sleb128	0
.L327:
	.section	.debug_info,,n
.L337:
	.sleb128	7
	.4byte		.L334-.L2
	.byte		"CanTp_IntRxInd"
	.byte		0
	.4byte		.L249
	.uleb128	216
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L335
	.4byte		.L336
	.sleb128	3
	.4byte		.L249
	.uleb128	216
	.uleb128	24
	.byte		"RxIPduId"
	.byte		0
	.4byte		.L256
	.4byte		.L338
	.sleb128	3
	.4byte		.L249
	.uleb128	216
	.uleb128	24
	.byte		"PduData"
	.byte		0
	.4byte		.L312
	.4byte		.L339
	.sleb128	3
	.4byte		.L249
	.uleb128	216
	.uleb128	24
	.byte		"PduLength_u8"
	.byte		0
	.4byte		.L274
	.4byte		.L340
	.sleb128	3
	.4byte		.L249
	.uleb128	216
	.uleb128	24
	.byte		"CanTpChannel_p"
	.byte		0
	.4byte		.L251
	.4byte		.L341
.L342:
	.sleb128	4
	.4byte		.L249
	.uleb128	225
	.uleb128	27
	.byte		"ReceivedFrame_u8"
	.byte		0
	.4byte		.L275
	.4byte		.L343
	.section	.debug_info,,n
	.sleb128	0
.L334:
	.section	.debug_info,,n
.L344:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L345
	.uleb128	487
	.uleb128	61
	.byte		"CanTp_RxNSdu_p"
	.byte		0
	.4byte		.L346
	.0byte		.L344
.L350:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L345
	.uleb128	493
	.uleb128	67
	.byte		"CanTp_RxNSduConfig_p"
	.byte		0
	.4byte		.L351
.L355:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L345
	.uleb128	504
	.uleb128	67
	.byte		"CanTp_TxNSduConfig_p"
	.byte		0
	.4byte		.L356
.L360:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L345
	.uleb128	522
	.uleb128	68
	.byte		"CanTp_GeneralConfig_p"
	.byte		0
	.4byte		.L361
	.section	.debug_info,,n
.L364:
	.sleb128	9
	.4byte		.L365
	.uleb128	117
	.uleb128	1
	.4byte		.L366-.L2
	.uleb128	16
	.section	.debug_info,,n
.L97:
	.sleb128	10
	.byte		"TxNSduId_Max"
	.byte		0
	.4byte		.L256
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L98:
	.sleb128	10
	.byte		"RxNPduId_Max"
	.byte		0
	.4byte		.L256
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L99:
	.sleb128	10
	.byte		"RxNSduId_Count"
	.byte		0
	.4byte		.L256
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L100:
	.sleb128	10
	.byte		"Channel_Max_u8"
	.byte		0
	.4byte		.L274
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L101:
	.sleb128	10
	.byte		"CanTp_Mf_Resolution_u16"
	.byte		0
	.4byte		.L272
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L102:
	.sleb128	10
	.byte		"CanTp_Cfg_PaddingByte_u8"
	.byte		0
	.4byte		.L274
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L103:
	.sleb128	10
	.byte		"RxNsduId_Max_u16"
	.byte		0
	.4byte		.L272
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L104:
	.sleb128	10
	.byte		"ConfirmationLength"
	.byte		0
	.4byte		.L272
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L366:
.L359:
	.sleb128	9
	.4byte		.L365
	.uleb128	117
	.uleb128	1
	.4byte		.L367-.L2
	.uleb128	12
.L86:
	.sleb128	10
	.byte		"CanTpNas_u16"
	.byte		0
	.4byte		.L272
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L87:
	.sleb128	10
	.byte		"CanTpNbs_u16"
	.byte		0
	.4byte		.L272
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L88:
	.sleb128	10
	.byte		"CanTpNcs_u16"
	.byte		0
	.4byte		.L272
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L89:
	.sleb128	10
	.byte		"CanTpTxCanIfNPduId"
	.byte		0
	.4byte		.L256
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L90:
	.sleb128	10
	.byte		"CanTpTxConfirmationId"
	.byte		0
	.4byte		.L256
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L91:
	.sleb128	10
	.byte		"CanTpPduRConfId"
	.byte		0
	.4byte		.L272
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L367:
.L354:
	.sleb128	9
	.4byte		.L365
	.uleb128	117
	.uleb128	1
	.4byte		.L368-.L2
	.uleb128	16
.L71:
	.sleb128	10
	.byte		"CanTpBsConf_u8"
	.byte		0
	.4byte		.L274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L72:
	.sleb128	10
	.byte		"CanTpNar_u16"
	.byte		0
	.4byte		.L272
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L73:
	.sleb128	10
	.byte		"CanTpNbr_u16"
	.byte		0
	.4byte		.L272
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L74:
	.sleb128	10
	.byte		"CanTpNcr_u16"
	.byte		0
	.4byte		.L272
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L75:
	.sleb128	10
	.byte		"CanTpRxWftMax_u16"
	.byte		0
	.4byte		.L272
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L76:
	.sleb128	10
	.byte		"CanTpSTminConf_u8"
	.byte		0
	.4byte		.L274
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L77:
	.sleb128	10
	.byte		"CanTpTxFcNPduIdConf"
	.byte		0
	.4byte		.L256
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L78:
	.sleb128	10
	.byte		"CanTpTxFcNPduCanIf"
	.byte		0
	.4byte		.L256
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L368:
.L349:
	.sleb128	9
	.4byte		.L365
	.uleb128	117
	.uleb128	1
	.4byte		.L369-.L2
	.uleb128	24
.L64:
	.sleb128	10
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L65:
	.sleb128	10
	.byte		"CanTpRxChannel_u8"
	.byte		0
	.4byte		.L274
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L66:
	.sleb128	10
	.byte		"CanTpRxPaddingActivation"
	.byte		0
	.4byte		.L373
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L67:
	.sleb128	10
	.byte		"CanTpRxTaType"
	.byte		0
	.4byte		.L376
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L68:
	.sleb128	10
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L274
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L69:
	.sleb128	10
	.byte		"CanTpRxNSduId"
	.byte		0
	.4byte		.L256
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L70:
	.sleb128	10
	.byte		"FrameType"
	.byte		0
	.4byte		.L379
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L369:
.L254:
	.sleb128	9
	.4byte		.L365
	.uleb128	117
	.uleb128	1
	.4byte		.L382-.L2
	.uleb128	52
.L39:
	.sleb128	10
	.byte		"ChannelIdx_u8"
	.byte		0
	.4byte		.L275
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L40:
	.sleb128	10
	.byte		"IPduId"
	.byte		0
	.4byte		.L257
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L41:
	.sleb128	10
	.byte		"TimeoutTicks_u16"
	.byte		0
	.4byte		.L258
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L42:
	.sleb128	10
	.byte		"StMinTicks_u16"
	.byte		0
	.4byte		.L258
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L43:
	.sleb128	10
	.byte		"TotalLength"
	.byte		0
	.4byte		.L316
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L44:
	.sleb128	10
	.byte		"ProcessedLength"
	.byte		0
	.4byte		.L316
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L45:
	.sleb128	10
	.byte		"ProvidedBufferSize"
	.byte		0
	.4byte		.L316
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L46:
	.sleb128	10
	.byte		"State_u8"
	.byte		0
	.4byte		.L275
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L47:
	.sleb128	10
	.byte		"NextState_u8"
	.byte		0
	.4byte		.L275
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L48:
	.sleb128	10
	.byte		"BlockSize_u16"
	.byte		0
	.4byte		.L258
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L49:
	.sleb128	10
	.byte		"WftCounter_u16"
	.byte		0
	.4byte		.L258
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L50:
	.sleb128	10
	.byte		"SequenceNumber_u8"
	.byte		0
	.4byte		.L275
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L51:
	.sleb128	10
	.byte		"StMin_u8"
	.byte		0
	.4byte		.L275
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L52:
	.sleb128	10
	.byte		"TempBuffer_au8"
	.byte		0
	.4byte		.L383
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L53:
	.sleb128	10
	.byte		"TempLength_u8"
	.byte		0
	.4byte		.L275
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L54:
	.sleb128	10
	.byte		"CanIfDLC_u8"
	.byte		0
	.4byte		.L275
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L55:
	.sleb128	10
	.byte		"CanIfData_au8"
	.byte		0
	.4byte		.L385
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L56:
	.sleb128	10
	.byte		"ULayerIndFlag_b"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L57:
	.sleb128	10
	.byte		"ShutdownFlag_b"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L58:
	.sleb128	10
	.byte		"RemainingCFInBlock_u16"
	.byte		0
	.4byte		.L258
	.sleb128	2
	.byte		0x23
	.uleb128	42
	.byte		0x1
.L59:
	.sleb128	10
	.byte		"LastCFofNSduFlag_b"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L60:
	.sleb128	10
	.byte		"RequiredBufferSize"
	.byte		0
	.4byte		.L316
	.sleb128	2
	.byte		0x23
	.uleb128	46
	.byte		0x1
.L61:
	.sleb128	10
	.byte		"CallerApiId"
	.byte		0
	.4byte		.L275
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L62:
	.sleb128	10
	.byte		"FrameSize"
	.byte		0
	.4byte		.L275
	.sleb128	2
	.byte		0x23
	.uleb128	49
	.byte		0x1
.L63:
	.sleb128	10
	.byte		"CriticalSectionStatus_b"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
	.sleb128	0
.L382:
	.section	.debug_info,,n
.L381:
	.sleb128	11
	.4byte		.L365
	.uleb128	117
	.uleb128	1
	.4byte		.L387-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"CANTP_FRAME_TYPE_CAN20"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANTP_FRAME_TYPE_CANFD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L387:
.L378:
	.sleb128	11
	.4byte		.L365
	.uleb128	108
	.uleb128	1
	.4byte		.L388-.L2
	.uleb128	4
	.sleb128	12
	.byte		"CANTP_FUNCTIONAL"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANTP_PHYSICAL"
	.byte		0
	.sleb128	1
	.sleb128	0
.L388:
.L375:
	.sleb128	11
	.4byte		.L365
	.uleb128	98
	.uleb128	1
	.4byte		.L389-.L2
	.uleb128	4
	.sleb128	12
	.byte		"CANTP_OFF"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANTP_ON"
	.byte		0
	.sleb128	1
	.sleb128	0
.L389:
.L372:
	.sleb128	11
	.4byte		.L365
	.uleb128	87
	.uleb128	1
	.4byte		.L390-.L2
	.uleb128	4
	.sleb128	12
	.byte		"CANTP_STANDARD"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANTP_EXTENDED"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"CANTP_MIXED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L390:
	.section	.debug_info,,n
.L253:
	.sleb128	13
	.byte		"CanTp_Channel_t"
	.byte		0
	.4byte		.L254
	.section	.debug_info,,n
.L252:
	.sleb128	14
	.4byte		.L253
	.section	.debug_info,,n
.L251:
	.sleb128	15
	.4byte		.L252
	.section	.debug_info,,n
.L259:
	.sleb128	16
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L258:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L259
.L257:
	.sleb128	13
	.byte		"PduIdType"
	.byte		0
	.4byte		.L258
.L256:
	.sleb128	15
	.4byte		.L257
.L268:
	.sleb128	16
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L267:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L268
.L272:
	.sleb128	15
	.4byte		.L258
.L275:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L268
.L274:
	.sleb128	15
	.4byte		.L275
.L287:
	.sleb128	15
	.4byte		.L267
.L290:
	.sleb128	13
	.byte		"NotifResultType"
	.byte		0
	.4byte		.L275
.L289:
	.sleb128	15
	.4byte		.L290
.L312:
	.sleb128	14
	.4byte		.L274
.L316:
	.sleb128	13
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L258
.L348:
	.sleb128	13
	.byte		"CanTp_RxNSdu_t"
	.byte		0
	.4byte		.L349
.L347:
	.sleb128	15
	.4byte		.L348
.L346:
	.sleb128	14
	.4byte		.L347
.L353:
	.sleb128	13
	.byte		"CanTp_RxNSduConfig_t"
	.byte		0
	.4byte		.L354
.L352:
	.sleb128	15
	.4byte		.L353
.L351:
	.sleb128	14
	.4byte		.L352
.L358:
	.sleb128	13
	.byte		"CanTp_TxNSduConfig_t"
	.byte		0
	.4byte		.L359
.L357:
	.sleb128	15
	.4byte		.L358
.L356:
	.sleb128	14
	.4byte		.L357
.L363:
	.sleb128	13
	.byte		"CanTp_GeneralConfig_t"
	.byte		0
	.4byte		.L364
.L362:
	.sleb128	15
	.4byte		.L363
.L361:
	.sleb128	14
	.4byte		.L362
.L371:
	.sleb128	13
	.byte		"CanTp_AddressingMode_t"
	.byte		0
	.4byte		.L372
.L370:
	.sleb128	15
	.4byte		.L371
.L374:
	.sleb128	13
	.byte		"CanTp_Status_t"
	.byte		0
	.4byte		.L375
.L373:
	.sleb128	15
	.4byte		.L374
.L377:
	.sleb128	13
	.byte		"CanTp_TaType_t"
	.byte		0
	.4byte		.L378
.L376:
	.sleb128	15
	.4byte		.L377
.L380:
	.sleb128	13
	.byte		"CanTp_FrameType_t"
	.byte		0
	.4byte		.L381
.L379:
	.sleb128	15
	.4byte		.L380
	.section	.debug_info,,n
.L383:
	.sleb128	17
	.4byte		.L384-.L2
	.4byte		.L275
	.section	.debug_info,,n
	.sleb128	18
	.uleb128	6
	.sleb128	0
.L384:
.L385:
	.sleb128	17
	.4byte		.L386-.L2
	.4byte		.L275
	.sleb128	18
	.uleb128	7
	.sleb128	0
.L386:
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L255:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L260:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo8),5
	.d2locend
.L262:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),0
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo6),0
	.d2locend
.L270:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),7
	.d2locend
.L271:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo18),4
	.d2locend
.L273:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo18),5
	.d2locend
.L276:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo19),6
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locend
.L278:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),6
	.d2locend
.L284:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locend
.L285:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),4
	.d2locend
.L286:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),5
	.d2locend
.L288:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo25),6
	.d2locend
.L291:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo25),7
	.d2locend
.L293:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo26),31
	.d2locend
.L300:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),3
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),3
	.d2locend
.L301:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo37),4
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),0
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo40),0
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo41),0
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo42),0
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),0
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),0
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),0
	.d2locend
.L303:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo49),4
	.d2locend
.L310:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),3
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),31
	.d2locend
.L311:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo54),4
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),30
	.d2locend
.L313:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo55),5
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),29
	.d2locend
.L314:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo56),6
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),28
	.d2locend
.L317:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),27
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),27
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),0
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo53),27
	.d2locend
.L319:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),5
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo60),5
	.d2locend
.L321:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo67),3
	.d2locend
.L323:
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),0
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),0
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),0
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),0
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo65),0
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo77),0
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),0
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),0
	.d2locend
.L325:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo82),4
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),6
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo79),6
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),6
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),4
	.d2locend
.L331:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),3
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),3
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),3
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),3
	.d2locend
.L332:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo97),4
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),4
	.d2locend
.L338:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),3
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),3
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),3
	.d2locend
.L339:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo106),4
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo108),4
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo109),4
	.d2locend
.L340:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo110),5
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo111),5
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo112),5
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),5
	.d2locend
.L341:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo113),6
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo115),7
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo116),7
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),7
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo119),7
	.d2locend
.L343:
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo101),6
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo121),6
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTp_IntRxInd"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "CanTp_IndProcessxF","CanTp_ProcessFCCTS","CanTp_ProcessRxCFrame","CanTp_StopChannel"
	.wrcm.end
	.wrcm.nelem "CanTp_ProcessFCCTS"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTp_StopChannel"
	.wrcm.end
	.wrcm.nelem "CanTp_IndProcessxF"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTp_ProcessRxInitFrame","CanTp_StopChannel","Det_ReportError"
	.wrcm.end
	.wrcm.nelem "CanTp_IntTxConf"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "CanTp_ConfProcessCF","CanTp_ProcessRxFC","CanTp_RxStopPdu"
	.wrcm.end
	.wrcm.nelem "CanTp_RxStopPdu"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTp_StopChannel"
	.wrcm.end
	.wrcm.nelem "CanTp_ProcessRxFC"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "CanTp_ConfProcessCF"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTp_PrepareTxDataFrame","CanTp_StopChannel"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_InterruptProcessing.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_InterruptProcessing.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_InterruptProcessing.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_InterruptProcessing.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_InterruptProcessing.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_InterruptProcessing.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTp\ssc\make\..\src\CanTp_InterruptProcessing.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
