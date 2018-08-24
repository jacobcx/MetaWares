#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_RxIndication.c"
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
# static FUNC(void, CANIF_CODE)CanIf_StoreRxPduToDecoupleBuffer
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_RxIndication.c"
        .d2line         629,30
#$$ld
.L319:

#$$bf	CanIf_StoreRxPduToDecoupleBuffer,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanIf_StoreRxPduToDecoupleBuffer:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CanRxPduId=r31 CanRxPduId=r3
	mr		r28,r4		# BytesToStore=r28 BytesToStore=r4
.Llo5:
	mr		r5,r5		# CanSduPtr_pu8=r5 CanSduPtr_pu8=r5
	.d2prologue_end
# (
#     CONST(CanIfLpduId_t, AUTOMATIC) CanRxPduId,
#     CONST(uint8, AUTOMATIC) BytesToStore,
#     CONSTP2CONST(uint8, AUTOMATIC, CANIF_APPL_CONST) CanSduPtr_pu8
# )
# {
#     /* variable for holding the buffer index */
#     VAR(uint32, AUTOMATIC) BufferInd;
# 
#     /* variable for holding the bit index */
#     VAR(uint8, AUTOMATIC) BitInd_u8;
# 
#     CONSTP2CONST(uint8, AUTOMATIC, CANIF_APPL_CONST) SrcSduPtr_pu8 = CanSduPtr_pu8;
	.d2line		642
.Llo6:
	mr		r30,r5		# SrcSduPtr_pu8=r30 SrcSduPtr_pu8=r5
# 
#     /* Get the configured start index of the RxPdu in interrupt
#        decoupling buffer */
#     BufferInd = CanIf_RxPduConfigInfo_p[CanRxPduId].CanIfRxPduIntDecBufferInd;
	.d2line		646
.Llo32:
	rlwinm		r0,r31,0,16,31		# CanRxPduId=r31
	lis		r3,CanIf_RxPduConfigInfo_p@ha
.Llo2:
	lwz		r3,CanIf_RxPduConfigInfo_p@l(r3)
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r4
	se_add		r3,r0
	lwz		r29,8(r3)
.Llo8:
	mr		r29,r29		# BufferInd=r29 BufferInd=r29
# 
#     /* Enter Critical Section*/
#     SchM_Enter_CanIf( SCHM_CANIF_EXCLUSIVE_AREA_0 );
	.d2line		649
.Llo9:
	diab.li		r3,0
	bl		SchM_Enter_CanIf
# 
#     /* DLC is stored as first element in interrupt decouple data
#        buffer */
#     CanIf_RxPduIntDecDataBuf_pu8[BufferInd] = BytesToStore;
	.d2line		653
.Llo30:
	lis		r3,CanIf_RxPduIntDecDataBuf_pu8@ha
	lwz		r3,CanIf_RxPduIntDecDataBuf_pu8@l(r3)
	stbux		r28,r3,r29		# BytesToStore=r28
	.section	.text_vle
.L344:
# 
#     /* Store the received data into the Rx Buffer */
#     /* PRQA S 3440++ */ /* ++ used for the most optimal assembly code */
#     /* PRQA S 2003++ */ /* fall-through in switch is intentional loop unrolling */
#     /* PRQA S 489++ */  /* pointer increment for optimization */
#     /* PRQA S 2016++ */ /* default statement is intentionally empty */
#     VSTAR_COPY8(&CanIf_RxPduIntDecDataBuf_pu8[BufferInd + 1U], SrcSduPtr_pu8, BytesToStore);
	.d2line		660
.Llo3:
	lis		r3,CanIf_RxPduIntDecDataBuf_pu8@ha
	lwz		r0,CanIf_RxPduIntDecDataBuf_pu8@l(r3)		# BufferInd=r0
.Llo10:
	se_add		r29,r0		# BufferInd=r0
.Llo31:
	mr		r30,r30		# vstar_copy8_src=r30 vstar_copy8_src=r30
	diab.addi		r30,r30,-1		# vstar_copy8_src=r30 vstar_copy8_src=r30
	rlwinm		r6,r28,0,24,31		# BytesToStore=r28
	se_cmpli	r6,8
	se_slwi		r6,2
	e_add2is		r6,.L353@ha
	bc		1,1,.L229	# gt
.Llo7:
	lwz		r7,.L353@l(r6)
	mtspr		ctr,r7
	bcctr		20,0
.L353:
#$$sl
	.long		.L229
	.long		.L227
	.long		.L226
	.long		.L225
	.long		.L224
	.long		.L223
	.long		.L222
	.long		.L221
	.long		.L220
#$$se
.L220:
	lbzu		r0,1(r30)		# BufferInd=r0 vstar_copy8_src=r30
.Llo11:
	stbu		r0,1(r29)		# vstar_copy8_dst=r29 BufferInd=r0
.L221:
.Llo12:
	lbzu		r0,1(r30)		# BufferInd=r0 vstar_copy8_src=r30
.Llo13:
	stbu		r0,1(r29)		# vstar_copy8_dst=r29 BufferInd=r0
.L222:
.Llo14:
	lbzu		r0,1(r30)		# BufferInd=r0 vstar_copy8_src=r30
.Llo15:
	stbu		r0,1(r29)		# vstar_copy8_dst=r29 BufferInd=r0
.L223:
.Llo16:
	lbzu		r0,1(r30)		# BufferInd=r0 vstar_copy8_src=r30
.Llo17:
	stbu		r0,1(r29)		# vstar_copy8_dst=r29 BufferInd=r0
.L224:
.Llo18:
	lbzu		r0,1(r30)		# BufferInd=r0 vstar_copy8_src=r30
.Llo19:
	stbu		r0,1(r29)		# vstar_copy8_dst=r29 BufferInd=r0
.L225:
.Llo20:
	lbzu		r0,1(r30)		# BufferInd=r0 vstar_copy8_src=r30
.Llo21:
	stbu		r0,1(r29)		# vstar_copy8_dst=r29 BufferInd=r0
.L226:
.Llo22:
	lbzu		r0,1(r30)		# BufferInd=r0 vstar_copy8_src=r30
.Llo23:
	stbu		r0,1(r29)		# vstar_copy8_dst=r29 BufferInd=r0
.L227:
.Llo24:
	lbz		r0,1(r30)		# BufferInd=r0 vstar_copy8_src=r30
.Llo25:
	stb		r0,1(r29)		# vstar_copy8_dst=r29 BufferInd=r0
.L229:
	.section	.text_vle
.L345:
#     /* PRQA S 2016-- */ /* default statement is intentionally empty */
#     /* PRQA S 489-- */  /* pointer increment for optimization */
#     /* PRQA S 2003-- */ /* fall-through in switch is intentional loop unrolling */
#     /* PRQA S 3440-- */ /* ++ used for the most optimal assembly code */
# 
#     /* Get the configured bit index of the IntDecouple Indication */
#     BitInd_u8 = (uint8)(CanRxPduId & CANIF_BIT_IND_MASK);
	.d2line		667
.Llo26:
	rlwinm		r0,r31,0,29,31		# BufferInd=r0 CanRxPduId=r31
.Llo28:
	mr		r0,r0		# BitInd_u8=r0 BitInd_u8=r0
# 
#     /*  calculate the corresponding buffer index */
#     BufferInd = (uint32)(CanRxPduId >> CANIF_BYTE_IND);
	.d2line		670
	rlwinm		r31,r31,29,19,31		# CanRxPduId=r31 CanRxPduId=r31
.Llo4:
	mr		r31,r31		# BufferInd=r31 BufferInd=r31
# 
#     /* Set the indication bit corresponding to BufferInd in
#        CanIf_RxPduIntDecNotifySt_pu8 */
#     CANIF_SET_BIT(CanIf_RxPduIntDecNotifySt_pu8[BufferInd], BitInd_u8);
	.d2line		674
	lis		r3,CanIf_RxPduIntDecNotifySt_pu8@ha
	lwz		r3,CanIf_RxPduIntDecNotifySt_pu8@l(r3)
	add		r4,r3,r31		# BufferInd=r31
	lbzx		r4,r3,r31		# BufferInd=r31
	diab.li		r5,1
	slw		r5,r5,r0		# BitInd_u8=r0
	or		r4,r4,r5
	stbx		r4,r3,r31		# BufferInd=r31
#     /* Leave Critical Section*/
#     SchM_Exit_CanIf( SCHM_CANIF_EXCLUSIVE_AREA_0 );
	.d2line		676
	diab.li		r3,0
	bl		SchM_Exit_CanIf
# 
# } /* End of CanIf_BufferRxMessage() */
	.d2line		678
	.d2epilogue_begin
.Llo29:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo27:
	lwz		r0,36(r1)		# BitInd_u8=r0
	mtspr		lr,r0		# BitInd_u8=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L320:
	.type		CanIf_StoreRxPduToDecoupleBuffer,@function
	.size		CanIf_StoreRxPduToDecoupleBuffer,.-CanIf_StoreRxPduToDecoupleBuffer
# Number of nodes = 121

# Allocations for CanIf_StoreRxPduToDecoupleBuffer
#	?a4		CanRxPduId
#	?a5		BytesToStore
#	?a6		CanSduPtr_pu8
#	?a7		$$71
#	?a8		$$69
#	?a9		BufferInd
#	?a10		BitInd_u8
#	?a11		SrcSduPtr_pu8
#	?a12		vstar_copy8_dst
#	?a13		vstar_copy8_src
# static FUNC(void,CANIF_CODE) CanIf_ProcessRxData
	.align		1
	.section	.text_vle
        .d2line         412,30
#$$ld
.L356:

#$$bf	CanIf_ProcessRxData,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanIf_ProcessRxData:
.Llo33:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo44:
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# ConfiguredDlc=r0
	.d2_cfa_offset    108,-1
	mr		r31,r4		# CanRxPduId=r31 CanRxPduId=r4
	mr		r30,r5		# CanDlc_u8=r30 CanDlc_u8=r5
.Llo37:
	mr		r29,r6		# CanSduPtr_pu8=r29 CanSduPtr_pu8=r6
	.d2prologue_end
# (
#     VAR(CanIfCanId_t, AUTOMATIC) CanId,
#     CONST(CanIfLpduId_t, AUTOMATIC) CanRxPduId,
#     CONST(uint8, AUTOMATIC) CanDlc_u8,
#     CONSTP2CONST(uint8, AUTOMATIC, CANIF_APPL_CONST) CanSduPtr_pu8
# )
# {
#     CONSTP2CONST(CanIfRxPduConfigInfo_t, AUTOMATIC, CANIF_APPL_CONST) RxPdu = &CanIf_RxPduConfigInfo_p[CanRxPduId];
#     CONST(uint8,AUTOMATIC) ConfiguredDlc = RxPdu->CanIfCanRxPduIdDlc_u8;
# 
# #if (CANIF_READRXPDU_NOTIF_STATUS_API == STD_ON)
#     VAR(uint8, AUTOMATIC) BytesToStoreToReadBuffer;
# #endif /* #if (CANIF_READRXPDU_NOTIF_STATUS_API == STD_ON) */
# 
# #if (CANIF_RX_INT_DECOUPLING == STD_ON)
#     VAR(uint8, AUTOMATIC) BytesToStoreToDecoupleBuffer;
# #endif /* #if (CANIF_RX_INT_DECOUPLING == STD_ON) */
# 
# #if (CANIF_CHECKSUM_RX_CALLOUT_SUPPORT == STD_ON)
#     VAR(boolean, AUTOMATIC) ChecksumValid = TRUE;
# #endif /* #if (CANIF_CHECKSUM_RX_CALLOUT_SUPPORT == STD_ON) */
# 
#             /* REQ: [CANIF390] */
# /* if DLC check is enabled */
# #if (CANIF_DLC_CHECK == STD_ON)
#     /* variable for holding return value */
#     VAR(Std_ReturnType, AUTOMATIC) RetVal = E_OK;
	.d2line		439
.Llo38:
	diab.li		r5,0		# RetVal=r5
	.d2line		420
.Llo53:
	rlwinm		r0,r31,0,16,31		# ConfiguredDlc=r0 CanRxPduId=r31
	lis		r3,CanIf_RxPduConfigInfo_p@ha		# RetVal=r3
	lwz		r28,CanIf_RxPduConfigInfo_p@l(r3)		# RxPdu=r28 RetVal=r3
	rlwinm		r3,r0,5,0,26		# RetVal=r3 ConfiguredDlc=r0
	se_slwi		r0,3		# ConfiguredDlc=r0 ConfiguredDlc=r0
	subf		r0,r0,r3		# ConfiguredDlc=r0 ConfiguredDlc=r0 RetVal=r3
	se_add		r0,r28		# ConfiguredDlc=r0 ConfiguredDlc=r0 RxPdu=r28
.Llo45:
	mr		r28,r0		# RxPdu=r28 RxPdu=r0
	.d2line		421
.Llo42:
	lbz		r0,16(r28)		# ConfiguredDlc=r0 RxPdu=r28
.Llo46:
	mr		r0,r0		# ConfiguredDlc=r0 ConfiguredDlc=r0
# 
#     /* REQ: [CANIF026] */
#     /* if Dlc of received message is less than configured DLC */
#     if (CanDlc_u8 < ConfiguredDlc)
	.d2line		443
	rlwinm		r4,r30,0,24,31		# CanDlc_u8=r30
.Llo34:
	rlwinm		r3,r0,0,24,31		# RetVal=r3 ConfiguredDlc=r0
	se_cmp		r4,r3		# RetVal=r3
#     {
#         /* REQ: [CANIF168] */
# #if ( CANIF_DEV_ERROR_DETECT == STD_ON )
#         /* Report error to DET */
#         (void)Det_ReportError(  CANIF_MODULE_ID,
#                                 CANIF_INSTANCE_ID,
#                                 CANIF_SID_RX_INDICATION,
#                                 CANIF_E_INVALID_DLC );
# #endif /* CANIF_DEV_ERROR_DETECT == STD_ON */
# 
#         /* Set return value to E_NOT_OK */
#         RetVal = E_NOT_OK;
	.d2line		455
	diab.li		r3,1		# RetVal=r3
	.d2line		439
	isel		r3,r3,r5,0		# RetVal=r3 RetVal=r3 RetVal=r5
.L209:
#     }
#     else
#     {
# 
# #if (CANIF_READRXPDU_NOTIF_STATUS_API == STD_ON)
#         BytesToStoreToReadBuffer = ConfiguredDlc;
# #endif /* #if (CANIF_READRXPDU_NOTIF_STATUS_API == STD_ON) */
# 
# #if (CANIF_RX_INT_DECOUPLING == STD_ON)
#         BytesToStoreToDecoupleBuffer = ConfiguredDlc;
	.d2line		465
.Llo35:
	isel		r4,r4,r0,0		# BytesToStoreToDecoupleBuffer=r4 BytesToStoreToDecoupleBuffer=r4 ConfiguredDlc=r0
.L210:
# #endif /* #if (CANIF_RX_INT_DECOUPLING == STD_ON) */
#     }
# 
#     /* if return value is OK */
#     if (E_OK == RetVal)
	.d2line		470
.Llo39:
	rlwinm		r3,r3,0,24,31		# RetVal=r3 RetVal=r3
	se_cmpi		r3,0		# RetVal=r3
	bc		0,2,.L208	# ne
# #else /* else #if (CANIF_DLC_CHECK == STD_ON) */
#     if (CanDlc_u8 < ConfiguredDlc)
#     {
# 
# #if (CANIF_READRXPDU_NOTIF_STATUS_API == STD_ON)
#         BytesToStoreToReadBuffer = CanDlc_u8;
# #endif /* #if (CANIF_READRXPDU_NOTIF_STATUS_API == STD_ON) */
# 
# #if (CANIF_RX_INT_DECOUPLING == STD_ON)
#         BytesToStoreToDecoupleBuffer = CanDlc_u8;
# #endif /* #if (CANIF_RX_INT_DECOUPLING == STD_ON) */
# 
#     }
#     else
#     {
# 
# #if (CANIF_READRXPDU_NOTIF_STATUS_API == STD_ON)
#         BytesToStoreToReadBuffer = ConfiguredDlc;
# #endif /* #if (CANIF_READRXPDU_NOTIF_STATUS_API == STD_ON) */
# 
# #if (CANIF_RX_INT_DECOUPLING == STD_ON)
#         BytesToStoreToDecoupleBuffer = ConfiguredDlc;
# #endif /* #if (CANIF_RX_INT_DECOUPLING == STD_ON) */
# 
#     }
# #endif /* End #if (CANIF_DLC_CHECK == STD_ON) */
#     {
#         /* REQ: [DEV_CANIF12016] */
# #if (CANIF_CHECKSUM_RX_CALLOUT_SUPPORT == STD_ON)
#         /* Calculate checksum for incoming frame */
#         if (STD_ON == RxPdu->CanIfRxPduChecksumEnabled_b)
#         {
#             CanId &= ~(CANIF_EXTENDED_CANID_BIT_MASK | CANIF_FD_CANID_BIT_MASK);
#             ChecksumValid = CanIf_DispatchConfig.CanIfChecksumRxCallout(CanId, CanDlc_u8, CanSduPtr_pu8);
#         }
# 
#         if (FALSE == ChecksumValid)
#         {
#             /* Invalid checksum: no buffering or RxIndication */
#         }
#         else
#         /* Valid checksum: continue processing */
# #endif /* #if (CANIF_CHECKSUM_RX_CALLOUT_SUPPORT == STD_ON) */
#         {
# #if (CANIF_READRXPDU_NOTIF_STATUS_API == STD_ON)
# 
#             /* REQ: [CANIF198] */
#             /* if ReadRxPduData is enabled for the RxPdu */
#             if (STD_OFF != CanIf_RxPduConfigInfo_p[CanRxPduId].CanIfReadRxPduData_b)
#             {
#                 /* REQ: [CANIF198], [CANIF297] */
#                 CanIf_StoreRxPduToReadBuffer (CanRxPduId, BytesToStoreToReadBuffer, CanSduPtr_pu8);
#             }
# 
#             /* if ReadRxPduNotifyStatus is enabled for the RxPdu */
#             if (STD_OFF != CanIf_RxPduConfigInfo_p[CanRxPduId].CanIfReadRxPduNotifyStatus_b)
#             {
#                 /* REQ: [CANIF392], [CANIF473] */
#                 /* buffer Rx message notification status */
#                 CanIf_BufferRxNotificationSt (CanRxPduId);
#             }
# 
# #endif /* #if (CANIF_READRXPDU_NOTIF_STATUS_API == STD_ON) */
# 
# #if (CANIF_RX_INT_DECOUPLING == STD_ON)
# 
#             /* if Interrupt Decoupling is enabled for the RxPdu */
#             if (STD_OFF != CanIf_RxPduConfigInfo_p[CanRxPduId].CanIfRxPduIntDecoupling_b)
	.d2line		538
.Llo54:
	rlwinm		r0,r31,0,16,31		# ConfiguredDlc=r0 CanRxPduId=r31
.Llo47:
	lis		r3,CanIf_RxPduConfigInfo_p@ha		# RetVal=r3
.Llo55:
	lwz		r5,CanIf_RxPduConfigInfo_p@l(r3)		# RetVal=r5 RetVal=r3
	rlwinm		r3,r0,5,0,26		# RetVal=r3 ConfiguredDlc=r0
	se_slwi		r0,3		# ConfiguredDlc=r0 ConfiguredDlc=r0
	subf		r0,r0,r3		# ConfiguredDlc=r0 ConfiguredDlc=r0 RetVal=r3
	se_add		r5,r0		# RetVal=r5 RetVal=r5 ConfiguredDlc=r0
	lbz		r0,21(r5)		# ConfiguredDlc=r0 RetVal=r5
	se_cmpi		r0,0		# ConfiguredDlc=r0
	bc		1,2,.L212	# eq
#             {
#                 /* Store PDU to Rx interrupt decoupling buffer. */
#                 CanIf_StoreRxPduToDecoupleBuffer (CanRxPduId, BytesToStoreToDecoupleBuffer, CanSduPtr_pu8);
	.d2line		541
.Llo48:
	mr		r3,r31		# CanRxPduId=r3 CanRxPduId=r31
.Llo50:
	mr		r4,r4		# BytesToStoreToDecoupleBuffer=r4 BytesToStoreToDecoupleBuffer=r4
.Llo51:
	mr		r5,r29		# CanSduPtr_pu8=r5 CanSduPtr_pu8=r29
	bl		CanIf_StoreRxPduToDecoupleBuffer
.L212:
#             }
# #endif /* #if (CANIF_RX_INT_DECOUPLING == STD_ON) */
# 
#             /* if Interrupt Decoupling is disabled for the RxPdu */
#             if (STD_OFF == RxPdu->CanIfRxPduIntDecoupling_b)
	.d2line		546
.Llo52:
	lbz		r0,21(r28)		# ConfiguredDlc=r0 RxPdu=r28
.Llo49:
	se_cmpi		r0,0		# ConfiguredDlc=r0
	bc		0,2,.L208	# ne
#             {
#                 /* REQ: [CANIF056], [CANIF297] , [CANIF829], [CANIF830],[CANIF423] */
#                 /* Report to upper layer about reception of message */
#                 CanIf_ReportRxIndication((PduIdType)CanRxPduId, CanDlc_u8, CanSduPtr_pu8);
	.d2line		550
.Llo43:
	rlwinm		r3,r31,0,16,31		# RetVal=r3 CanRxPduId=r31
	rlwinm		r4,r30,0,24,31		# BytesToStoreToDecoupleBuffer=r4 CanDlc_u8=r30
	mr		r5,r29		# CanSduPtr_pu8=r5 CanSduPtr_pu8=r29
	bl		CanIf_ReportRxIndication
.L208:
#             }
#         }
# 
#     } /* End if (E_OK == RetVal) */
# 
# } /* End of CanIf_ProcessRxData() */
	.d2line		556
	.d2epilogue_begin
.Llo36:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo40:
	lwz		r0,36(r1)		# ConfiguredDlc=r0
	mtspr		lr,r0		# ConfiguredDlc=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo41:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L357:
	.type		CanIf_ProcessRxData,@function
	.size		CanIf_ProcessRxData,.-CanIf_ProcessRxData
# Number of nodes = 72

# Allocations for CanIf_ProcessRxData
#	not allocated	CanId
#	?a4		CanRxPduId
#	?a5		CanDlc_u8
#	?a6		CanSduPtr_pu8
#	?a7		$$73
#	?a8		$$72
#	?a9		RxPdu
#	?a10		ConfiguredDlc
#	?a11		BytesToStoreToDecoupleBuffer
#	?a12		RetVal
# static FUNC(Std_ReturnType, CANIF_CODE) CanIf_BinarySearchRxPduId
	.align		1
	.section	.text_vle
        .d2line         1040,41
#$$ld
.L380:

#$$bf	CanIf_BinarySearchRxPduId,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r28,r29,r30,r31,cr0,xer,lr
	.d2_cfa_start __cie
CanIf_BinarySearchRxPduId:
.Llo56:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CanId=r3 CanId=r3
	mr		r4,r4		# RxPduIdList_p=r4 RxPduIdList_p=r4
	mr		r30,r5		# NoOfRxPduId=r30 NoOfRxPduId=r5
.Llo59:
	mr		r6,r6		# CanRxPduId_p=r6 CanRxPduId_p=r6
	.d2prologue_end
# (
#     CONST(CanIfCanId_t, AUTOMATIC) CanId,
#     CONSTP2CONST(CanIfLpduId_t, AUTOMATIC, CANIF_APPL_CONST) RxPduIdList_p,
#     CONST(CanIfLpduId_t, AUTOMATIC) NoOfRxPduId,
#     CONSTP2VAR(CanIfLpduId_t, AUTOMATIC, CANIF_APPL_DATA) CanRxPduId_p
# )
# {
# 
#     /* Initialize return value to not ok */
#     VAR(Std_ReturnType, AUTOMATIC)CanIfRet = E_NOT_OK;
	.d2line		1050
.Llo60:
	diab.li		r5,1		# CanIfRet=r5
# 
#     /* Variables for holding the index in binary search */
#     VAR(CanIfLpduIdFast, AUTOMATIC) MinInd = 0;
	.d2line		1053
.Llo63:
	diab.li		r31,0		# MinInd=r31
#     VAR(CanIfLpduIdFast, AUTOMATIC) MaxInd = NoOfRxPduId - 1U;
	.d2line		1054
.Llo65:
	diab.li		r0,65535
	se_add		r0,r30		# NoOfRxPduId=r30
.Llo66:
	mr		r30,r0		# MaxInd=r30 MaxInd=r0
.L269:
#     VAR(CanIfLpduIdFast, AUTOMATIC) MidInd;
# 
#     /* variable for holding the RxPduId */
#     VAR(CanIfLpduIdFast, AUTOMATIC) RxPduId;
# 
#     /* while end of searching for RxPdus is not reached */
#     while (MinInd < MaxInd)
	.d2line		1061
.Llo61:
	rlwinm		r0,r31,0,16,31		# MinInd=r31
.Llo67:
	rlwinm		r7,r30,0,16,31		# MidInd=r7 MaxInd=r30
.Llo69:
	se_cmp		r0,r7		# MidInd=r7
	bc		0,0,.L275	# ge
#     {
# 
#         /* Get the RxPduId in the middle of RxPduList */
#         MidInd = MinInd + (CanIfLpduIdFast)((MaxInd - MinInd) >> 1);
	.d2line		1065
.Llo70:
	rlwinm		r7,r30,0,16,31		# MidInd=r7 MaxInd=r30
.Llo71:
	rlwinm		r0,r31,0,16,31		# MinInd=r31
	subf		r0,r0,r7		# MidInd=r7
	srawi		r7,r0,1		# MidInd=r7
	se_add		r7,r31		# MidInd=r7 MidInd=r7 MinInd=r31
	mr		r7,r7		# MidInd=r7 MidInd=r7
#         /* PRQA S 492 1 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type. */
#         RxPduId = (CanIfLpduIdFast)RxPduIdList_p[MidInd];
	.d2line		1067
	rlwinm		r29,r7,1,15,30		# RxPduId=r29 MidInd=r7
.Llo75:
	lhzux		r0,r29,r4		# RxPduId=r29
.Llo76:
	mr		r29,r0		# RxPduId=r29 RxPduId=r0
# 
#         /* if received CanId is less than the corresponding RxPdu's CanId*/
#         if (LT(CanId, CanIf_RxPduConfigInfo_p[RxPduId]))
	.d2line		1070
.Llo77:
	lis		r8,CanIf_RxPduConfigInfo_p@ha
	lwz		r8,CanIf_RxPduConfigInfo_p@l(r8)
	rlwinm		r28,r0,5,0,26
	se_slwi		r0,3
.Llo78:
	subf		r0,r0,r28
	lwzx		r0,r8,r0
	se_cmpl		r0,r3		# CanId=r3
	bc		0,1,.L271	# le
#         {
#             /* update max index to (mid index) */
#             MaxInd = MidInd;
	.d2line		1073
.Llo79:
	mr		r30,r7		# MaxInd=r30 MaxInd=r7
	b		.L269
.L271:
#         }
#         /* if received CanId is greater than the corresponding RxPdu's CanId*/
#         else if (GT(CanId, CanIf_RxPduConfigInfo_p[RxPduId]))
	.d2line		1076
	rlwinm		r0,r29,0,16,31		# RxPduId=r29
	lis		r8,CanIf_RxPduConfigInfo_p@ha
	lwz		r8,CanIf_RxPduConfigInfo_p@l(r8)
	rlwinm		r28,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r28
	lwzx		r0,r8,r0
	se_cmpl		r0,r3		# CanId=r3
	bc		0,0,.L273	# ge
#         {
#             /* update min index to (mid index + 1) */
#             MinInd = MidInd + 1U;
	.d2line		1079
	se_addi		r7,1		# MidInd=r7 MidInd=r7
.Llo72:
	mr		r31,r7		# MinInd=r31 MinInd=r7
	b		.L269
.L273:
#         }
#         /* if received CanId is equal to the corresponding
#            RxPdu's CanId */
#         else
#         {
#             /* Update the RxPduId */
#             *CanRxPduId_p = (CanIfLpduId_t)RxPduId;
	.d2line		1086
.Llo73:
	sth		r29,0(r6)		# CanRxPduId_p=r6 RxPduId=r29
#             CanIfRet = E_OK;
	.d2line		1087
	diab.li		r5,0		# CanIfRet=r5
.L275:
#             break;
#         } /* End else */
#     } /* End while (MinInd < MaxInd) */
# 
#     /* if RxPduId corresponding to CanId was not found until
#        (MaxInd = MinInd) */
#     if (E_OK != CanIfRet)
	.d2line		1094
.Llo74:
	rlwinm		r0,r5,0,24,31		# CanIfRet=r5
	se_cmpi		r0,0
	bc		1,2,.L276	# eq
#     {
#         /* If the CanId of the RxPduId corresponsding to MinInd
#            (which is now equal to MaxInd) is equal to required CanId */
#         /* PRQA S 492 1 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type. */
#         RxPduId = (CanIfLpduIdFast)RxPduIdList_p[MinInd];
	.d2line		1099
.Llo68:
	rlwinm		r31,r31,1,15,30		# MinInd=r31 MinInd=r31
	lhzx		r7,r31,r4		# MidInd=r7 MinInd=r31 RxPduIdList_p=r4
.Llo80:
	mr		r7,r7		# RxPduId=r7 RxPduId=r7
#         if (EQ(CanId, CanIf_RxPduConfigInfo_p[RxPduId]))
	.d2line		1100
	rlwinm		r0,r7,0,16,31		# RxPduId=r7
	lis		r4,CanIf_RxPduConfigInfo_p@ha
.Llo58:
	lwz		r4,CanIf_RxPduConfigInfo_p@l(r4)
	rlwinm		r31,r0,5,0,26		# MinInd=r31
	se_slwi		r0,3
	subf		r0,r0,r31		# MinInd=r31
	lwzx		r0,r4,r0
	se_cmpl		r0,r3		# CanId=r3
	bc		0,2,.L276	# ne
#         {
# 
#             /* Update the RxPduId */
#             *CanRxPduId_p = (CanIfLpduId_t)RxPduId;
	.d2line		1104
.Llo57:
	sth		r7,0(r6)		# CanRxPduId_p=r6 RxPduId=r7
#             CanIfRet = E_OK;
	.d2line		1105
	diab.li		r5,0		# CanIfRet=r5
.L276:
# 
#         } /* End if */
# 
#     } /* End if (E_OK != CanIfRet) */
# 
#     return CanIfRet;
	.d2line		1111
.Llo62:
	rlwinm		r3,r5,0,24,31		# CanId=r3 CanIfRet=r5
# 
# } /* End of CanIf_BinarySearchRxPduId () */
	.d2line		1113
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo64:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L381:
	.type		CanIf_BinarySearchRxPduId,@function
	.size		CanIf_BinarySearchRxPduId,.-CanIf_BinarySearchRxPduId
# Number of nodes = 103

# Allocations for CanIf_BinarySearchRxPduId
#	?a4		CanId
#	?a5		RxPduIdList_p
#	?a6		NoOfRxPduId
#	?a7		CanRxPduId_p
#	?a8		$$76
#	?a9		$$75
#	?a10		$$74
#	?a11		CanIfRet
#	?a12		MinInd
#	?a13		MaxInd
#	?a14		MidInd
#	?a15		RxPduId
# static FUNC(Std_ReturnType, CANIF_CODE) CanIf_FilterBasicCanRxPduId
	.align		1
	.section	.text_vle
        .d2line         959,41
#$$ld
.L405:

#$$bf	CanIf_FilterBasicCanRxPduId,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r9,r29,r30,r31,cr0,xer,lr
	.d2_cfa_start __cie
CanIf_FilterBasicCanRxPduId:
.Llo81:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CanId=r31 CanId=r3
	mr		r30,r4		# HrhConfigInfo_p=r30 HrhConfigInfo_p=r4
.Llo85:
	mr		r9,r5		# CanRxPduId_p=r9 CanRxPduId_p=r5
	.d2prologue_end
# (
#     CONST(CanIfCanId_t, AUTOMATIC) CanId,
#     CONSTP2CONST(CanIfHrhConfigInfo_t, AUTOMATIC, CANIF_APPL_CONST) HrhConfigInfo_p,
#     CONSTP2VAR(CanIfLpduId_t, AUTOMATIC, CANIF_APPL_DATA) CanRxPduId_p
# )
# {
#     /* Initialize return value to not ok */
#     VAR(Std_ReturnType, AUTOMATIC)CanIfRet = E_NOT_OK;
	.d2line		967
.Llo86:
	diab.li		r4,1		# CanIfRet=r4
# 
#     /* Loop index for RxPdu range */
#     VAR(CanIfLpduIdFast, AUTOMATIC) LpduRangeInd;
# 
#     /* Pointer for holding range configuration */
#     P2CONST(CanIfHrhRangeConfig_t, AUTOMATIC, CANIF_APPL_CONST)
#     HrhRangeConfig_p;
# 
#     /* if number of HRH ranges configured is > 0 */
#     if (0 < HrhConfigInfo_p->CanIfNoOfHrhRange_u8)
	.d2line		977
.Llo89:
	lbz		r0,17(r30)		# HrhConfigInfo_p=r30
	se_cmpi		r0,0
	bc		0,1,.L256	# le
#     {
#         /* check for all the RxPdu ranges configured for HRH */
#         for (LpduRangeInd = (CanIfLpduIdFast)HrhConfigInfo_p->CanIfNoOfHrhRange_u8;
	.d2line		980
.Llo82:
	lbz		r29,17(r30)		# HrhConfigInfo_p=r30
.Llo83:
	mr		r29,r29		# LpduRangeInd=r29 LpduRangeInd=r29
.L257:
.Llo94:
	diab.addi		r29,r29,-1		# LpduRangeInd=r29 LpduRangeInd=r29
	diab.addi		r0,r29,1		# LpduRangeInd=r29
	e_and2i.		r0,65535
	bc		0,1,.L261	# le
.Llo95:
	rlwinm		r3,r4,0,24,31		# HrhRangeConfig_p=r3 CanIfRet=r4
.Llo96:
	se_cmpi		r3,0		# HrhRangeConfig_p=r3
	bc		1,2,.L261	# eq
#                 (LpduRangeInd-- > 0) && (E_OK != CanIfRet); /* PRQA S 3440 */ /* Syntax used to decrement an unsigned type from range-1 to 0. Downcounting is a performance optimization. */
#             )
#         {
#             /* Get the corresponding range configuration */
#             HrhRangeConfig_p = &(HrhConfigInfo_p->
	.d2line		985
.Llo97:
	lwz		r3,4(r30)		# HrhRangeConfig_p=r3 HrhConfigInfo_p=r30
.Llo98:
	rlwinm		r0,r29,0,16,31		# LpduRangeInd=r29
	e_mulli		r0,r0,20
	se_add		r0,r3		# HrhRangeConfig_p=r3
	mr		r3,r0		# HrhRangeConfig_p=r3 HrhRangeConfig_p=r0
#                                 CanIfHrhRangeConfig_p[LpduRangeInd]);
#             /* If CanId is in the configured range */
#             if ((CanId >= HrhRangeConfig_p->CanIfRxPduLowerCanId) &&
	.d2line		988
.Llo99:
	lwz		r0,0(r3)		# HrhRangeConfig_p=r3
	se_cmpl		r0,r31		# CanId=r31
	bc		1,1,.L257	# gt
.Llo100:
	lwz		r0,4(r3)		# HrhRangeConfig_p=r3
	se_cmpl		r0,r31		# CanId=r31
	bc		1,0,.L257	# lt
	lhz		r0,16(r3)		# HrhRangeConfig_p=r3
	se_cmpi		r0,0
	bc		0,1,.L257	# le
#                 (CanId <= HrhRangeConfig_p->CanIfRxPduUpperCanId) &&
#                 (0 < HrhRangeConfig_p->CanIfHrhRangeNoOfRxPduId))
#             {
#                 /* Call CanIf_BinarySearchRxPduId to check the CanId in Pdu
#                       range and get the PduId if it is matching */
#                 CanIfRet = CanIf_BinarySearchRxPduId (CanId,
	.d2line		994
	lwz		r4,12(r3)		# CanIfRet=r4 HrhRangeConfig_p=r3
	lhz		r5,16(r3)		# HrhRangeConfig_p=r3
	mr		r3,r31		# CanId=r3 CanId=r31
.Llo101:
	mr		r6,r9		# CanRxPduId_p=r6 CanRxPduId_p=r9
	bl		CanIf_BinarySearchRxPduId
	mr		r4,r3		# CanIfRet=r4 CanIfRet=r3
	b		.L257
.L256:
#                        HrhRangeConfig_p->CanIfHrhRangeRxPduIdList_p,
#                        HrhRangeConfig_p->CanIfHrhRangeNoOfRxPduId,
#                        CanRxPduId_p);
#             } /* if */
# 
#         } /* for */
#     }
#     /* if number of RXPDUs configured is > 0 */
#     else if (0 < HrhConfigInfo_p->CanIfHrhNoOfRxPduIds)
	.d2line		1003
.Llo93:
	lhz		r0,12(r30)		# HrhConfigInfo_p=r30
	se_cmpi		r0,0
	bc		0,1,.L262	# le
#     {
#         /* Call CanIf_BinarySearchRxPduId to check the CanId and get the
#            PduId if it is matching */
#         CanIfRet = CanIf_BinarySearchRxPduId (CanId,
	.d2line		1007
.Llo90:
	lwz		r4,8(r30)		# CanIfRet=r4 HrhConfigInfo_p=r30
	lhz		r5,12(r30)		# HrhConfigInfo_p=r30
	mr		r3,r31		# CanId=r3 CanId=r31
	mr		r6,r9		# CanRxPduId_p=r6 CanRxPduId_p=r9
	bl		CanIf_BinarySearchRxPduId
.Llo91:
	mr		r4,r3		# CanIfRet=r4 CanIfRet=r3
	b		.L261
.L262:
#                                               HrhConfigInfo_p->
#                                               CanIfHrhRxPduIdList_p,
#                                               HrhConfigInfo_p->
#                                               CanIfHrhNoOfRxPduIds,
#                                               CanRxPduId_p);
#     }
#     else
#     {
# 
#         /* Set return value to E_NOT_OK */
#         CanIfRet = E_NOT_OK;
	.d2line		1018
.Llo92:
	diab.li		r4,1		# CanIfRet=r4
.L261:
# 
#     }
# 
#     return CanIfRet;
	.d2line		1022
.Llo84:
	rlwinm		r3,r4,0,24,31		# HrhRangeConfig_p=r3 CanIfRet=r4
# 
# } /* End of CanIf_FilterBasicCanRxPduId () */
	.d2line		1024
	.d2epilogue_begin
.Llo87:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo88:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L406:
	.type		CanIf_FilterBasicCanRxPduId,@function
	.size		CanIf_FilterBasicCanRxPduId,.-CanIf_FilterBasicCanRxPduId
# Number of nodes = 106

# Allocations for CanIf_FilterBasicCanRxPduId
#	?a4		CanId
#	?a5		HrhConfigInfo_p
#	?a6		CanRxPduId_p
#	?a7		CanIfRet
#	?a8		LpduRangeInd
#	?a9		HrhRangeConfig_p
# static FUNC(Std_ReturnType, CANIF_CODE) CanIf_CheckRxPduCanIdFlags
	.align		1
	.section	.text_vle
        .d2line         1198,41
#$$ld
.L428:

#$$bf	CanIf_CheckRxPduCanIdFlags,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.d2_cfa_start __cie
CanIf_CheckRxPduCanIdFlags:
.Llo102:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# RxPduId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# RxPduId=r0 RxPduId=r3
	mr		r5,r5		# IsCanIdEXTType=r5 IsCanIdEXTType=r5
	mr		r6,r6		# IsCanIdFDType=r6 IsCanIdFDType=r6
	.d2prologue_end
# (
#     CONST(CanIfLpduId_t, AUTOMATIC) RxPduId,
#     CONST(CanIfCanId_t, AUTOMATIC) CanId,
#     CONST(boolean, AUTOMATIC) IsCanIdEXTType,
#     CONST(boolean, AUTOMATIC) IsCanIdFDType
# )
# {
# 
#     /* Initialize return value to not ok */
#     VAR(Std_ReturnType, AUTOMATIC)CanIfRet = E_NOT_OK;
	.d2line		1208
	diab.li		r3,1		# CanIfRet=r3
# 
# 
#     VAR(CanIfRxPduCanIdType_t, AUTOMATIC) CfgCanIdType = CanIf_RxPduConfigInfo_p[RxPduId].CanIfRxPduIdCanIdType;
#     VAR(boolean, AUTOMATIC) IsEXTMatch = CANIF_FALSE;
	.d2line		1212
.Llo103:
	diab.li		r4,0		# IsEXTMatch=r4
#     VAR(boolean, AUTOMATIC) IsFDMatch = CANIF_FALSE;
	.d2line		1213
.Llo114:
	diab.li		r7,0
	.d2line		1211
.Llo104:
	rlwinm		r0,r0,0,16,31		# RxPduId=r0 RxPduId=r0
	lis		r3,CanIf_RxPduConfigInfo_p@ha		# CanIfRet=r3
.Llo108:
	lwz		r31,CanIf_RxPduConfigInfo_p@l(r3)		# CanIfRet=r3
	rlwinm		r3,r0,5,0,26		# CanIfRet=r3 RxPduId=r0
	se_slwi		r0,3		# RxPduId=r0 RxPduId=r0
	subf		r0,r0,r3		# RxPduId=r0 RxPduId=r0 CanIfRet=r3
	se_add		r31,r0		# RxPduId=r0
	lwz		r0,4(r31)		# RxPduId=r0
.Llo105:
	mr		r0,r0		# CfgCanIdType=r0 CfgCanIdType=r0
# 
#     if (IsCanIdEXTType != CANIF_FALSE)
	.d2line		1215
	rlwinm		r5,r5,0,24,31		# IsCanIdEXTType=r5 IsCanIdEXTType=r5
	se_cmpi		r5,0		# IsCanIdEXTType=r5
	bc		1,2,.L284	# eq
#     {
#         if ( (CfgCanIdType == CANIF_RX_CANID_EXTENDED) ||
	.d2line		1217
.Llo106:
	se_cmpi		r0,0		# CfgCanIdType=r0
	bc		1,2,.L292	# eq
	se_cmpi		r0,2		# CfgCanIdType=r0
	bc		1,2,.L292	# eq
	se_cmpi		r0,4		# CfgCanIdType=r0
	bc		0,2,.L286	# ne
.L292:
#              (CfgCanIdType == CANIF_RX_CANID_EXTENDED_FD) ||
#              (CfgCanIdType == CANIF_RX_CANID_EXTENDED_NO_FD) )
#         {
#             IsEXTMatch = CANIF_TRUE;
	.d2line		1221
	diab.li		r4,1		# IsEXTMatch=r4
	b		.L286
.L284:
#         }
#     }
#     else
#     {
#         if ( (CfgCanIdType == CANIF_RX_CANID_STANDARD) ||
	.d2line		1226
	se_cmpi		r0,1		# CfgCanIdType=r0
	bc		1,2,.L293	# eq
	se_cmpi		r0,3		# CfgCanIdType=r0
	bc		1,2,.L293	# eq
	se_cmpi		r0,5		# CfgCanIdType=r0
	bc		0,2,.L286	# ne
.L293:
#              (CfgCanIdType == CANIF_RX_CANID_STANDARD_FD) ||
#              (CfgCanIdType == CANIF_RX_CANID_STANDARD_NO_FD) )
#         {
#             IsEXTMatch = CANIF_TRUE;
	.d2line		1230
	diab.li		r4,1		# IsEXTMatch=r4
.L286:
#         }
#     }
# 
#     if (IsCanIdFDType != CANIF_FALSE)
	.d2line		1234
	rlwinm		r6,r6,0,24,31		# IsCanIdFDType=r6 IsCanIdFDType=r6
	se_cmpi		r6,0		# IsCanIdFDType=r6
	bc		1,2,.L288	# eq
#     {
#         if ( (CfgCanIdType == CANIF_RX_CANID_EXTENDED) ||
	.d2line		1236
.Llo107:
	se_cmpi		r0,0		# CfgCanIdType=r0
	bc		1,2,.L294	# eq
	se_cmpi		r0,1		# CfgCanIdType=r0
	bc		1,2,.L294	# eq
	se_cmpi		r0,2		# CfgCanIdType=r0
	bc		1,2,.L294	# eq
	se_cmpi		r0,3		# CfgCanIdType=r0
	bc		0,2,.L290	# ne
.L294:
#              (CfgCanIdType == CANIF_RX_CANID_STANDARD) ||
#              (CfgCanIdType == CANIF_RX_CANID_EXTENDED_FD) ||
#              (CfgCanIdType == CANIF_RX_CANID_STANDARD_FD) )
#         {
#             IsFDMatch = CANIF_TRUE;
	.d2line		1241
	diab.li		r7,1		# IsFDMatch=r7
	b		.L290
.L288:
#         }
#     }
#     else
#     {
#         if ( (CfgCanIdType == CANIF_RX_CANID_EXTENDED) ||
	.d2line		1246
	se_cmpi		r0,0		# CfgCanIdType=r0
	bc		1,2,.L295	# eq
	se_cmpi		r0,1		# CfgCanIdType=r0
	bc		1,2,.L295	# eq
	se_cmpi		r0,4		# CfgCanIdType=r0
	bc		1,2,.L295	# eq
	se_cmpi		r0,5		# CfgCanIdType=r0
	bc		0,2,.L290	# ne
.L295:
#              (CfgCanIdType == CANIF_RX_CANID_STANDARD) ||
#              (CfgCanIdType == CANIF_RX_CANID_EXTENDED_NO_FD) ||
#              (CfgCanIdType == CANIF_RX_CANID_STANDARD_NO_FD) )
#         {
#             IsFDMatch = CANIF_TRUE;
	.d2line		1251
	diab.li		r7,1		# IsFDMatch=r7
.L290:
#         }
#     }
# 
#     CanIfRet = ((IsEXTMatch != CANIF_FALSE) && (IsFDMatch != CANIF_FALSE)) ? E_OK : E_NOT_OK;
	.d2line		1255
.Llo113:
	rlwinm		r4,r4,0,24,31		# IsEXTMatch=r4 IsEXTMatch=r4
	se_cmpi		r4,0		# IsEXTMatch=r4
	bc		1,2,.L296	# eq
.Llo115:
	rlwinm		r7,r7,0,24,31		# IsFDMatch=r7 IsFDMatch=r7
	se_cmpi		r7,0		# IsFDMatch=r7
	bc		1,2,.L296	# eq
.Llo116:
	diab.li		r3,0		# CanIfRet=r3
.Llo109:
	b		.L297
.L296:
.Llo110:
	diab.li		r3,1		# CanIfRet=r3
.L297:
.Llo111:
	mr		r3,r3		# CanIfRet=r3 CanIfRet=r3
# 
# #if 0
#     /* if CanId of the configured RxPduId is same as CanId of the
#        received message and CanId type is same as that of RxPdu */
#     if (EQ(CanId, CanIf_RxPduConfigInfo_p[RxPduId]) &&
#         (PduCanIdType == CanIf_RxPduConfigInfo_p[RxPduId].
#          CanIfRxPduIdCanIdType))
#     {
#         /* RxPduId corresponding to CanId is found */
#         *CanRxPduId_p = RxPduId;
# 
#         /* Set return value to E_OK */
#         CanIfRet = E_OK;
# 
#     } /* End if */
# 
#     return CanIfRet;
# #endif
# 
#     return CanIfRet;
	.d2line		1275
	rlwinm		r3,r3,0,24,31		# CanIfRet=r3 CanIfRet=r3
# 
# } /* End of CanIf_CheckRxPduCanIdFlags () */
	.d2line		1277
	.d2epilogue_begin
.Llo112:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# CfgCanIdType=r0
	mtspr		lr,r0		# CfgCanIdType=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L429:
	.type		CanIf_CheckRxPduCanIdFlags,@function
	.size		CanIf_CheckRxPduCanIdFlags,.-CanIf_CheckRxPduCanIdFlags
# Number of nodes = 104

# Allocations for CanIf_CheckRxPduCanIdFlags
#	?a4		RxPduId
#	not allocated	CanId
#	?a5		IsCanIdEXTType
#	?a6		IsCanIdFDType
#	?a7		$$77
#	?a8		$$70
#	?a9		CanIfRet
#	?a10		CfgCanIdType
#	?a11		IsEXTMatch
#	?a12		IsFDMatch
# static FUNC(Std_ReturnType, CANIF_CODE)CanIf_SearchRxPDUId
	.align		1
	.section	.text_vle
        .d2line         824,40
#$$ld
.L448:

#$$bf	CanIf_SearchRxPDUId,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r9,r10,r29,r30,r31,cr0,xer,lr
	.d2_cfa_start __cie
CanIf_SearchRxPDUId:
.Llo117:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# CanDriver_u8=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# CanDriver_u8=r0 CanDriver_u8=r3
	mr		r4,r4		# CanIfHrh=r4 CanIfHrh=r4
	mr		r5,r5		# CanId=r5 CanId=r5
	mr		r30,r6		# CanRxPduId_p=r30 CanRxPduId_p=r6
	.d2prologue_end
# (
#     CONST( uint8, AUTOMATIC ) CanDriver_u8,
#     CONST( CanIf_HrhIndexType, AUTOMATIC ) CanIfHrh,
#     VAR( CanIfCanId_t, AUTOMATIC ) CanId,
#     CONSTP2VAR( CanIfLpduId_t, AUTOMATIC, CANIF_APPL_DATA ) CanRxPduId_p
# )
# {
#     /* REQ: [CANIF665], [CANIF664]*/
# 
#     /* Initialize return value to ok */
#     VAR(Std_ReturnType, AUTOMATIC)CanIfRet = E_NOT_OK;
	.d2line		835
	diab.li		r3,1		# CanIfRet=r3
# 
#     /* Get the Hrh configuration */
#     CONSTP2CONST(CanIfHrhConfigInfo_t, AUTOMATIC, CANIF_APPL_DATA)
#         HrhConfInfo_p = &CanIf_HrhConfigInfo_pp[CanDriver_u8][CanIfHrh];
	.d2line		839
.Llo118:
	lis		r6,CanIf_HrhConfigInfo_pp@ha
.Llo142:
	lwz		r6,CanIf_HrhConfigInfo_pp@l(r6)
.Llo119:
	rlwinm		r0,r0,2,22,29		# CanDriver_u8=r0 CanDriver_u8=r0
	lwzx		r0,r6,r0		# CanDriver_u8=r0
	rlwinm		r4,r4,0,16,31		# CanIfHrh=r4 CanIfHrh=r4
	e_mulli		r4,r4,20		# CanIfHrh=r4 CanIfHrh=r4
	se_add		r0,r4		# CanDriver_u8=r0 CanDriver_u8=r0 CanIfHrh=r4
.Llo120:
	mr		r4,r0		# HrhConfInfo_p=r4 HrhConfInfo_p=r0
# 
#     VAR(boolean, AUTOMATIC) IsCanIdEXTType;
#     VAR(boolean, AUTOMATIC) IsCanIdFDType;
# 
#     /* The CanId Type of the message received from Can driver */
# #if (CANIF_EXTENDED_ID_SUPPORT == STD_ON)
# 
#     IsCanIdEXTType = (boolean)((CanId & CANIF_EXTENDED_CANID_BIT_MASK) != 0);
	.d2line		847
.Llo139:
	rlwinm		r10,r5,1,31,31		# CanId=r5
.Llo148:
	mr		r10,r10		# IsCanIdEXTType=r10 IsCanIdEXTType=r10
# 
#     /* Clear Extended CANID bit */
#     CanId &= ~CANIF_EXTENDED_CANID_BIT_MASK;
	.d2line		850
	rlwinm		r31,r5,0,1,31		# CanId=r31 CanId=r5
	mr		r5,r31		# CanId=r5 CanId=r31
# #else
#     IsCanIdEXTType = CANIF_FALSE;
# #endif
# 
# #if (CANIF_CAN_FD_SUPPORT == STD_ON)
#     /* Determine the FD nature of the received frame */
# 
#     IsCanIdFDType = (boolean)((CanId & CANIF_FD_CANID_BIT_MASK) != 0);
# 
#     /* Clear FD CANID bit */
#     CanId = CANIF_STRIP_FD_INFO(CanId);
# #else
#     IsCanIdFDType = CANIF_FALSE;
	.d2line		863
.Llo140:
	diab.li		r29,0		# IsCanIdFDType=r29
# #endif
# 
#         /* if HRH type is basic CAN */
#     if (CANIF_HOH_BASIC_CAN == HrhConfInfo_p->CanIfHrhType)
	.d2line		867
.Llo150:
	lwz		r0,0(r4)		# CanDriver_u8=r0 HrhConfInfo_p=r4
.Llo121:
	se_cmpi		r0,0		# CanDriver_u8=r0
	bc		0,2,.L241	# ne
#     {
# 
#         /* REQ: [CANIF389] */
#         /* if software filtering is configured for basic CAN HRH */
#         if (STD_OFF != HrhConfInfo_p->CanIfSoftwareFilterHrh_b)
	.d2line		872
.Llo122:
	lbz		r0,16(r4)		# CanDriver_u8=r0 HrhConfInfo_p=r4
.Llo123:
	se_cmpi		r0,0		# CanDriver_u8=r0
	bc		1,2,.L246	# eq
	.section	.text_vle
.L465:
#         {
#             VAR( CanIfLpduId_t, AUTOMATIC) RxPduId;
# /* if binary search filter enabled */
# #if (CANIF_SOFTWARE_FILTER_TYPE == CANIF_ALG_BINARY)
# 
#             /* Call CanIf_FilterBasicCanRxPduId for finding out corresponding
#                basic CAN RxPduId */
#             /* REQ: [CANIF211] */
#             CanIfRet = CanIf_FilterBasicCanRxPduId(CanId,
	.d2line		881
.Llo124:
	diab.addi		r5,r1,8		# CanId=r5
	mr		r3,r31		# CanId=r3 CanId=r31
.Llo146:
	mr		r4,r4		# HrhConfInfo_p=r4 HrhConfInfo_p=r4
.Llo147:
	bl		CanIf_FilterBasicCanRxPduId
.Llo144:
	mr		r3,r3		# CanIfRet=r3 CanIfRet=r3
#                                                  HrhConfInfo_p,
#                                                  &RxPduId);
# 
#             if (CanIfRet == E_OK)
	.d2line		885
	rlwinm		r0,r3,0,24,31		# CanDriver_u8=r0 CanIfRet=r3
.Llo125:
	se_cmpi		r0,0		# CanDriver_u8=r0
	bc		0,2,.L246	# ne
#             {
#                 CanIfRet = CanIf_CheckRxPduCanIdFlags(RxPduId, CanId, IsCanIdEXTType, IsCanIdFDType);
	.d2line		887
.Llo126:
	lhz		r3,8(r1)		# CanIfRet=r3
	mr		r4,r31		# CanId=r4 CanId=r31
	mr		r5,r10		# IsCanIdEXTType=r5 IsCanIdEXTType=r10
	mr		r6,r29		# IsCanIdFDType=r6 IsCanIdFDType=r29
	bl		CanIf_CheckRxPduCanIdFlags
	mr		r3,r3		# CanIfRet=r3 CanIfRet=r3
#                 if (CanIfRet == E_OK)
	.d2line		888
	rlwinm		r0,r3,0,24,31		# CanDriver_u8=r0 CanIfRet=r3
.Llo127:
	se_cmpi		r0,0		# CanDriver_u8=r0
	bc		0,2,.L246	# ne
#                 {
#                     /* RxPduId corresponding to CanId is found */
#                     *CanRxPduId_p = RxPduId;
	.d2line		891
.Llo128:
	lhz		r0,8(r1)		# CanDriver_u8=r0
.Llo129:
	sth		r0,0(r30)		# CanRxPduId_p=r30 CanDriver_u8=r0
	.section	.text_vle
.L466:
.Llo130:
	b		.L246
.L241:
#                 }
#             }
# 
# #endif /* End #if (CANIF_SOFTWARE_FILTER_TYPE == CANIF_ALG_BINARY) */
# 
#         }
#         else
#         {
#             /* Do nothing */
# 
#         } /* End if (STD_OFF != HrhConfInfo_p->CanIfSoftwareFilterHrh_b) */
# 
#     }
# 
#     /* if HTH type is FULL CAN */
#     else if (CANIF_HOH_FULL_CAN == HrhConfInfo_p->CanIfHrhType)
	.d2line		907
.Llo141:
	lwz		r0,0(r4)		# CanDriver_u8=r0 HrhConfInfo_p=r4
.Llo131:
	se_cmpi		r0,1		# CanDriver_u8=r0
	bc		0,2,.L246	# ne
#     {
# 
#         /* if only a single rx pdu is configured */
#         if (1 == HrhConfInfo_p->CanIfHrhNoOfRxPduIds)
	.d2line		911
.Llo132:
	lhz		r0,12(r4)		# CanDriver_u8=r0 HrhConfInfo_p=r4
.Llo133:
	se_cmpi		r0,1		# CanDriver_u8=r0
	bc		0,2,.L246	# ne
	.section	.text_vle
.L470:
#         {
#             CONST(CanIfLpduId_t, AUTOMATIC) RxPduId = *(HrhConfInfo_p->CanIfHrhRxPduIdList_p);
	.d2line		913
.Llo134:
	lwz		r4,8(r4)		# HrhConfInfo_p=r4 HrhConfInfo_p=r4
	lhz		r29,0(r4)		# IsCanIdFDType=r29 HrhConfInfo_p=r4
.Llo151:
	mr		r29,r29		# RxPduId=r29 RxPduId=r29
# 
#             /* If the CanId of the configured RxPduId is same as CanId of the received Pdu */
#             if (EQ(CanId, CanIf_RxPduConfigInfo_p[RxPduId]))
	.d2line		916
.Llo149:
	rlwinm		r0,r29,0,16,31		# CanDriver_u8=r0 RxPduId=r29
.Llo135:
	lis		r4,CanIf_RxPduConfigInfo_p@ha		# HrhConfInfo_p=r4
	lwz		r4,CanIf_RxPduConfigInfo_p@l(r4)		# HrhConfInfo_p=r4 HrhConfInfo_p=r4
	rlwinm		r5,r0,5,0,26		# CanId=r5 CanDriver_u8=r0
	se_slwi		r0,3		# CanDriver_u8=r0 CanDriver_u8=r0
	subf		r0,r0,r5		# CanDriver_u8=r0 CanDriver_u8=r0 CanId=r5
	lwzx		r0,r4,r0		# CanDriver_u8=r0 HrhConfInfo_p=r4
	se_cmpl		r0,r31		# CanDriver_u8=r0 CanId=r31
	bc		0,2,.L246	# ne
#             {
#                 CanIfRet = CanIf_CheckRxPduCanIdFlags(RxPduId, CanId, IsCanIdEXTType, IsCanIdFDType);
	.d2line		918
.Llo136:
	mr		r3,r29		# RxPduId=r3 RxPduId=r29
	mr		r4,r31		# CanId=r4 CanId=r31
	mr		r5,r10		# IsCanIdEXTType=r5 IsCanIdEXTType=r10
	diab.li		r6,0
	bl		CanIf_CheckRxPduCanIdFlags
	mr		r3,r3		# CanIfRet=r3 CanIfRet=r3
# 
#                 if (CanIfRet == E_OK)
	.d2line		920
	rlwinm		r0,r3,0,24,31		# CanDriver_u8=r0 CanIfRet=r3
.Llo137:
	se_cmpi		r0,0		# CanDriver_u8=r0
	bc		0,2,.L246	# ne
#                 {
#                     /* RxPduId corresponding to CanId is found */
#                     *CanRxPduId_p = RxPduId;
	.d2line		923
.Llo138:
	sth		r29,0(r30)		# CanRxPduId_p=r30 RxPduId=r29
	.section	.text_vle
.L471:
.L246:
#                 }
#             }
#         }
#         else
#         {
#             /* do nothing */
#         }/* End if (1 == HrhConfInfo_p->CanIfHrhNoOfRxPduIds) */
# 
#     }
# 
#     /* if invalid HTH type */
#     else
#     {
#         /* do nothing */
#     } /* End if (CANIF_HOH_BASIC_CAN == HrhConfInfo_p->CanIfHrhType) */
# 
#     return CanIfRet;
	.d2line		940
.Llo143:
	rlwinm		r3,r3,0,24,31		# CanIfRet=r3 CanIfRet=r3
# 
# } /* End of CanIf_SearchRxPDUId () */
	.d2line		942
	.d2epilogue_begin
.Llo145:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# CanDriver_u8=r0
	mtspr		lr,r0		# CanDriver_u8=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L449:
	.type		CanIf_SearchRxPDUId,@function
	.size		CanIf_SearchRxPDUId,.-CanIf_SearchRxPDUId
# Number of nodes = 133

# Allocations for CanIf_SearchRxPDUId
#	?a4		CanDriver_u8
#	?a5		CanIfHrh
#	?a6		CanId
#	?a7		CanRxPduId_p
#	?a8		$$78
#	?a9		CanIfRet
#	?a10		HrhConfInfo_p
#	?a11		IsCanIdEXTType
#	?a12		IsCanIdFDType
#	SP,8		RxPduId
#	?a13		RxPduId
# static FUNC(Std_ReturnType, CANIF_CODE) CanIf_GetCanIfHrhId
	.align		1
	.section	.text_vle
        .d2line         1294,41
#$$ld
.L478:

#$$bf	CanIf_GetCanIfHrhId,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.d2_cfa_start __cie
CanIf_GetCanIfHrhId:
.Llo152:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r6,r3		# CanDriver_u8=r6 CanDriver_u8=r3
.Llo153:
	mr		r4,r4		# DrvHrh=r4 DrvHrh=r4
.Llo154:
	mr		r5,r5		# CanIfHrh_p=r5 CanIfHrh_p=r5
	.d2prologue_end
# (
#     CONST( uint8, AUTOMATIC ) CanDriver_u8,
#     CONST( Can_HwHandleType, AUTOMATIC ) DrvHrh,
#     CONSTP2VAR( CanIf_HrhIndexType, AUTOMATIC, CANIF_APPL_DATA ) CanIfHrh_p
# )
# {
#     /* Initialize return value to ok */
#     VAR( Std_ReturnType, AUTOMATIC ) CanIfRet = E_NOT_OK;
	.d2line		1302
	diab.li		r3,1		# CanIfRet=r3
# 
#     /* Variable for holding loop index */
#     VAR( CanIf_HrhIndexType, AUTOMATIC ) LoopInd;
# 
#     /* Variable for holding Hrh configuration */
#     /* Copy the Hrh configuration informations */
#     CONSTP2CONST( CanIfHrhConfigInfo_t, AUTOMATIC, CANIF_APPL_CONST )
#     HrhConfigInfo_p = CanIf_HrhConfigInfo_pp[CanDriver_u8];
	.d2line		1310
.Llo157:
	lis		r7,CanIf_HrhConfigInfo_pp@ha
	lwz		r7,CanIf_HrhConfigInfo_pp@l(r7)
	rlwinm		r0,r6,2,22,29		# CanDriver_u8=r6
	lwzx		r0,r7,r0
.Llo160:
	mr		r0,r0		# HrhConfigInfo_p=r0 HrhConfigInfo_p=r0
# 
#     /* Variable for holding number of HRHs */
#     CONST( Can_HwHandleType, AUTOMATIC ) NumberOfHrh =
	.d2line		1313
	lis		r7,CanIf_NumberOfHrh_p@ha
	lwz		r7,CanIf_NumberOfHrh_p@l(r7)
	rlwinm		r6,r6,1,23,30		# CanDriver_u8=r6 CanDriver_u8=r6
	lhzx		r6,r7,r6		# CanDriver_u8=r6
.Llo155:
	mr		r6,r6		# NumberOfHrh=r6 NumberOfHrh=r6
#         CanIf_NumberOfHrh_p[CanDriver_u8];
# 
#     /* loop through all the Hrhs of corresponding driver configured
#        in CanIf module */
#     for ( LoopInd = (CanIf_HrhIndexType)NumberOfHrh;
	.d2line		1318
.Llo159:
	mr		r6,r6		# LoopInd=r6 LoopInd=r6
.L309:
	diab.addi		r6,r6,-1		# LoopInd=r6 LoopInd=r6
	diab.addi		r7,r6,1		# LoopInd=r6
	e_and2i.		r7,65535
	bc		0,1,.L313	# le
#           LoopInd-- > 0; /* PRQA S 3440,2911,2913 */ /* Syntax used to decrement an unsigned type from range-1 to 0. Downcounting is a performance optimization. */
#         )
#     {
# 
#         /* if HrhId configured in HrhConfiguration is same as HrhId
#            received from driver */
#         if (HrhConfigInfo_p[LoopInd].CanIfHrhIdSymRef == DrvHrh)
	.d2line		1325
	rlwinm		r7,r6,0,16,31		# LoopInd=r6
	e_mulli		r7,r7,20
	se_add		r7,r0		# HrhConfigInfo_p=r0
	lhz		r7,14(r7)
	rlwinm		r31,r4,0,16,31		# DrvHrh=r4
	se_cmp		r7,r31
	bc		0,2,.L309	# ne
#         {
# 
#             /* Copy the Hrh index and set return value to ok */
#             *CanIfHrh_p = LoopInd;
	.d2line		1329
	sth		r6,0(r5)		# CanIfHrh_p=r5 LoopInd=r6
#             CanIfRet = E_OK;
	.d2line		1330
	diab.li		r3,0		# CanIfRet=r3
.L313:
#             break;
# 
#         } /* if */
#     } /* for */
# 
#     return CanIfRet;
	.d2line		1336
.Llo156:
	rlwinm		r3,r3,0,24,31		# CanIfRet=r3 CanIfRet=r3
# 
# } /* End of CanIf_GetCanIfHrhId () */
	.d2line		1338
	.d2epilogue_begin
.Llo158:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# HrhConfigInfo_p=r0
	mtspr		lr,r0		# HrhConfigInfo_p=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L479:
	.type		CanIf_GetCanIfHrhId,@function
	.size		CanIf_GetCanIfHrhId,.-CanIf_GetCanIfHrhId
# Number of nodes = 51

# Allocations for CanIf_GetCanIfHrhId
#	?a4		CanDriver_u8
#	?a5		DrvHrh
#	?a6		CanIfHrh_p
#	?a7		CanIfRet
#	?a8		LoopInd
#	?a9		HrhConfigInfo_p
#	?a10		NumberOfHrh
# FUNC(void,CANIF_CODE) CanIf_ProcessRxIndication
	.align		2
	.section	.text_vle
        .d2line         253,23
#$$ld
.L498:

#$$bf	CanIf_ProcessRxIndication,interprocedural,rasave,nostackparams
	.globl		CanIf_ProcessRxIndication
	.d2_cfa_start __cie
CanIf_ProcessRxIndication:
.Llo161:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
.Llo172:
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)		# RetVal=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CanDriver_u8=r31 CanDriver_u8=r3
	mr		r4,r4		# Hrh=r4 Hrh=r4
	mr		r30,r5		# CanId=r30 CanId=r5
	mr		r29,r6		# CanDlc_u8=r29 CanDlc_u8=r6
	mr		r26,r7		# CanSduPtr_pu8=r26 CanSduPtr_pu8=r7
	.d2prologue_end
# (
#     CONST(uint8,AUTOMATIC)            CanDriver_u8,
#     CONST(Can_HwHandleType,AUTOMATIC) Hrh,
#     CONST(CanIfCanId_t,AUTOMATIC)     CanId,
#     CONST(uint8,AUTOMATIC)            CanDlc_u8,
#     CONSTP2CONST( uint8, AUTOMATIC, CANIF_APPL_CONST )CanSduPtr_pu8
# )
# {
#     /* REQ: [CANIF415] */
# 
#     /* variable for holding return value */
#     VAR(Std_ReturnType, AUTOMATIC) RetVal;
# 
#     /* variable for holding controller id */
#     VAR(uint8, AUTOMATIC) Controller_u8;
# 
#     /* variable for holding the PduId of the received message */
#     VAR(CanIfLpduId_t, AUTOMATIC) CanRxPduId;
# 
#     /* variable for holding CanIf specific Hrh id */
#     VAR(CanIf_HrhIndexType, AUTOMATIC) CanIfHrh;
# 
#     /* REQ: [CANIF421], [CANIF422] */
#     if ( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 )
	.d2line		277
	lis		r3,CanIf_InitStatus_u8@ha		# RetVal=r3
.Llo162:
	lbz		r0,CanIf_InitStatus_u8@l(r3)		# RetVal=r0 RetVal=r3
	se_cmpi		r0,0		# RetVal=r0
#     {
# /* if DET is enabled REQ: [DEV_CANIF14000] */
# #if (CANIF_DEV_ERROR_DETECT == STD_ON)
#         /* Report error to DET if CanIf module is not initialized */
#         (void)Det_ReportError( CANIF_MODULE_ID,
#                           CANIF_INSTANCE_ID,
#                           CANIF_SID_RX_INDICATION,
#                           CANIF_E_UNINIT );
# #endif
#          /* set return value to not ok */
#          RetVal = E_NOT_OK;
	.d2line		288
	diab.li		r3,1		# RetVal=r3
	isel		r3,r3,r0,2		# RetVal=r3 RetVal=r3 RetVal=r0
.L195:
#     }
#     else
#     {
# /* if DET is enabled */
# #if (CANIF_DEV_ERROR_DETECT == STD_ON)
# 
#         /* call CanIf_RxIndicationDETCheck () for checking DET errors */
#         RetVal = CanIf_RxIndicationDETCheck ( CanId, CanSduPtr_pu8 );
# #else
#         RetVal = E_OK;
	.d2line		298
.Llo163:
	diab.li		r0,0		# RetVal=r0
.Llo168:
	isel		r0,r3,r0,2		# RetVal=r0 RetVal=r3 RetVal=r0
.L196:
# #endif
#     }
#     /* REQ: [DEV_CANIF12020] [DEV_CANIF12021]
#      * If CanIfDlcMaxLengthCheckSupport is enabled and DLC is bigger than defined maximum
#      * the CanIf will discard the reception of PDU. */
# #if (CANIF_DLC_MAX_LENGTH_CHECK_SUPPORT == STD_ON)
#     if ( CANIF_MAX_DLC < CanDlc_u8 )
#     {
#         RetVal = E_NOT_OK;
#     }
# #endif
# 
# 
#     /* if return value is OK */
#     if ( E_OK == RetVal )
	.d2line		313
.Llo173:
	rlwinm		r0,r0,0,24,31		# RetVal=r0 RetVal=r0
.Llo174:
	se_cmpi		r0,0		# RetVal=r0
	bc		0,2,.L194	# ne
#     {
#         /* Get the CanIf module specific HrhId */
#         /* Note: The rest of the processing (CanIf_GetCanIfHrhId) can use Hrh on 8 bit only, BZ14682. */
#         RetVal = CanIf_GetCanIfHrhId (CanDriver_u8, Hrh, &CanIfHrh);
	.d2line		317
.Llo165:
	diab.addi		r5,r1,8
	mr		r3,r31		# CanDriver_u8=r3 CanDriver_u8=r31
.Llo166:
	mr		r4,r4		# Hrh=r4 Hrh=r4
.Llo167:
	bl		CanIf_GetCanIfHrhId
.Llo175:
	mr		r3,r3		# RetVal=r3 RetVal=r3
# 
#         /* if return value is OK */
#         if ( E_OK == RetVal )
	.d2line		320
	rlwinm		r3,r3,0,24,31		# RetVal=r3 RetVal=r3
	se_cmpi		r3,0		# RetVal=r3
	bc		0,2,.L194	# ne
	.section	.text_vle
.L512:
#         {
#             VAR(CanIf_ControllerModeType, AUTOMATIC) cmode;
#             VAR(CanIf_PduModeType, AUTOMATIC) CanIf_PduMode_loc;
# 
#             /* Get the controller index of Hrh */
#             Controller_u8 = CanIf_HrhControllerConfig_ppcu8[CanDriver_u8][CanIfHrh];
	.d2line		326
.Llo176:
	lis		r3,CanIf_HrhControllerConfig_ppcu8@ha		# RetVal=r3
.Llo177:
	lwz		r3,CanIf_HrhControllerConfig_ppcu8@l(r3)		# RetVal=r3 RetVal=r3
	rlwinm		r0,r31,2,22,29		# RetVal=r0 CanDriver_u8=r31
	lwzx		r3,r3,r0		# RetVal=r3 RetVal=r3
	lhz		r0,8(r1)		# RetVal=r0
	lbzx		r28,r3,r0		# cmode=r28 RetVal=r3
.Llo182:
	mr		r28,r28		# Controller_u8=r28 Controller_u8=r28
# 
#             /* Enter Critical Section */
#             SchM_Enter_CanIf(  SCHM_CANIF_EXCLUSIVE_AREA_0 );
	.d2line		329
	diab.li		r3,0		# RetVal=r3
.Llo178:
	bl		SchM_Enter_CanIf
# 
#             /* Current controller mode */
#             cmode = CanIf_ControllerMode_a[Controller_u8];
	.d2line		332
	lis		r3,CanIf_ControllerMode_a@ha		# RetVal=r3
.Llo179:
	e_add16i		r3,r3,CanIf_ControllerMode_a@l		# RetVal=r3 RetVal=r3
	rlwinm		r0,r28,2,22,29		# RetVal=r0 Controller_u8=r28
	lwzux		r28,r3,r0		# Controller_u8=r28 RetVal=r3
.Llo183:
	mr		r28,r28		# cmode=r28 cmode=r28
#             CanIf_PduMode_loc = CanIf_PduMode_a[ Controller_u8 ];
	.d2line		333
	lis		r3,CanIf_PduMode_a@ha		# RetVal=r3
	e_add16i		r3,r3,CanIf_PduMode_a@l		# RetVal=r3 RetVal=r3
	lwzx		r27,r3,r0		# RetVal=r3
.Llo185:
	mr		r27,r27		# CanIf_PduMode_loc=r27 CanIf_PduMode_loc=r27
# 
#             /* Leave Critical Section */
#             SchM_Exit_CanIf(  SCHM_CANIF_EXCLUSIVE_AREA_0 );
	.d2line		336
	diab.li		r3,0		# RetVal=r3
.Llo180:
	bl		SchM_Exit_CanIf
# 
#             /* REQ: [CANIF075] */
#             /* if controller mode is started and Pdu mode Rx path is online */
#             if ((cmode == CANIF_CS_STARTED) &&
	.d2line		340
	se_cmpi		r28,1		# cmode=r28
	bc		0,2,.L194	# ne
.Llo184:
	se_cmpi		r27,3		# CanIf_PduMode_loc=r27
	bc		1,2,.L203	# eq
	se_cmpi		r27,1		# CanIf_PduMode_loc=r27
	bc		0,2,.L194	# ne
.L203:
#                 ((CanIf_PduMode_loc == CANIF_ONLINE) || (CanIf_PduMode_loc == CANIF_TX_OFFLINE)))
#             {
# 
#                 /* REQ: [CANIF030] */
#                 /* Search the PduId corresponding to CanId */
#                 RetVal = CanIf_SearchRxPDUId (CanDriver_u8, CanIfHrh,
	.d2line		346
	lhz		r4,8(r1)
	diab.addi		r6,r1,10
	mr		r3,r31		# CanDriver_u8=r3 CanDriver_u8=r31
	mr		r5,r30		# CanId=r5 CanId=r30
	bl		CanIf_SearchRxPDUId
.Llo181:
	mr		r3,r3		# RetVal=r3 RetVal=r3
#                                               CanId, &CanRxPduId);
#                 /* if RxPduId is found */
#                 if (E_OK == RetVal)
	.d2line		349
	rlwinm		r3,r3,0,24,31		# RetVal=r3 RetVal=r3
	se_cmpi		r3,0		# RetVal=r3
	bc		0,2,.L194	# ne
#                 {
#                     /* Call CanIf_ProcessRxData ot perform DLC check,
#                        buffering data, indication status etc */
#                     CanIf_ProcessRxData(CanId, CanRxPduId, CanDlc_u8,
	.d2line		353
.Llo164:
	lhz		r4,10(r1)
	mr		r3,r30		# CanId=r3 CanId=r30
	mr		r5,r29		# CanDlc_u8=r5 CanDlc_u8=r29
	mr		r6,r26		# CanSduPtr_pu8=r6 CanSduPtr_pu8=r26
	bl		CanIf_ProcessRxData
	.section	.text_vle
.L513:
.L194:
#                                         CanSduPtr_pu8);
# 
#                 } /* End if (E_OK == RetVal) */
#             }
#             else
#             {
#                 /* REQ: [CANIF073] No further processing if Rx path if OFFLINE. */
#                 /* do nothing */
#             }
# 
#             /* REQ: [DEV_CANIF286] */
# /* check if check validation supported */
# #if (CANIF_PUBLIC_WAKEUP_CHECK_VALIDATION_API == STD_ON)
#             if(((cmode == CANIF_CS_STARTED)||(cmode == CANIF_CS_STOPPED))&&
#                 (CanIf_ControllerConfig_a[Controller_u8].CanIfControllerConfigRAM->WasInSleep == CANIF_TRUE))
#             {
#                 /* Set up maximum number of notifications what can be called at wakeup validation */
#                 CanIf_ControllerConfig_a[Controller_u8].CanIfControllerConfigRAM->RemainingWakeupValidNotification =
#                         CanIf_ControllerConfig_a[Controller_u8].MaxWakeupValidNotification;
#                 /* Clear Was in Sleep Flag*/
#                 CanIf_ControllerConfig_a[Controller_u8].CanIfControllerConfigRAM->WasInSleep = CANIF_FALSE;
#             }
# #endif
# /*delete part to set wake up flag for controller when it is either
# in sleep mode or wakeup event stored for controller where it is in
# CS_STATRTED or STOPPED mode as REQ CANIF403 and REQ CANIF680 delted*/
# 
#         } /* End if (E_OK == RetVal) */
#         else
#         {
# /* REQ: [CANIF416] */
# /* if DET is enabled */
# #if (CANIF_DEV_ERROR_DETECT == STD_ON)
#             /* Hrh is not found */
#             (void)Det_ReportError( CANIF_MODULE_ID,
#                           CANIF_INSTANCE_ID,
#                           CANIF_SID_RX_INDICATION,
#                           CANIF_E_PARAM_HRH );
# #endif
#         }
# 
# 
#     } /* End if (E_OK == RetVal) */
# 
# } /* End of CanIf_ProcessRxIndication() */
	.d2line		398
	.d2epilogue_begin
.Llo169:
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
.Llo170:
	lwz		r0,52(r1)		# RetVal=r0
	mtspr		lr,r0		# RetVal=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo171:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L499:
	.type		CanIf_ProcessRxIndication,@function
	.size		CanIf_ProcessRxIndication,.-CanIf_ProcessRxIndication
# Number of nodes = 114

# Allocations for CanIf_ProcessRxIndication
#	?a4		CanDriver_u8
#	?a5		Hrh
#	?a6		CanId
#	?a7		CanDlc_u8
#	?a8		CanSduPtr_pu8
#	?a9		RetVal
#	?a10		Controller_u8
#	SP,10		CanRxPduId
#	SP,8		CanIfHrh
#	?a11		cmode
#	?a12		CanIf_PduMode_loc
# FUNC(void,CANIF_CODE)CanIf_RxIndication
	.align		2
	.section	.text_vle
        .d2line         209,22
#$$ld
.L526:

#$$bf	CanIf_RxIndication,interprocedural,rasave,nostackparams
	.globl		CanIf_RxIndication
	.d2_cfa_start __cie
CanIf_RxIndication:
.Llo186:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Hrh=r3 Hrh=r3
	mr		r4,r4		# CanId=r4 CanId=r4
	mr		r5,r5		# CanDlc=r5 CanDlc=r5
	mr		r6,r6		# CanSduPtr=r6 CanSduPtr=r6
	.d2prologue_end
# (
#     VAR(Can_HwHandleType,AUTOMATIC)             Hrh,
#     VAR(CanIfCanId_t,AUTOMATIC)                 CanId,
#     VAR(uint8,AUTOMATIC)                        CanDlc,
#     P2CONST(uint8, AUTOMATIC, CANIF_APPL_CONST) CanSduPtr
# )
# {
#     /* REQ: [CANIF006], [CANIF662], [CANIF291], [DEV_CANIF115], [DEV_CANIF12002], [CANIF224] */
#     /* Call CanIf_ProcessRxIndication with index of CAN driver as zero to
#        process the message from driver zero */
# #if (CANIF_MULTIPLE_DRIVER_SUPPORT == STD_OFF)
#     CanIf_ProcessRxIndication(CANIF_SINGLE_DRIVER_IND, Hrh, CanId,
	.d2line		221
	mr		r7,r6		# CanSduPtr=r7 CanSduPtr=r6
	mr		r6,r5		# CanDlc=r6 CanDlc=r5
.Llo190:
	mr		r5,r4		# CanId=r5 CanId=r4
.Llo189:
	mr		r4,r3		# Hrh=r4 Hrh=r3
.Llo188:
	diab.li		r3,0
.Llo187:
	bl		CanIf_ProcessRxIndication
#                               CanDlc, CanSduPtr);
# #else
#     VAR(uint8, AUTOMATIC) DriverCount;
# 
#     for(DriverCount = 0; DriverCount < CanIf_InitConfiguration_p->CanIfNumberOfCanDrivers; DriverCount++)
#     {
#         CanIf_ProcessRxIndication(DriverCount, Hrh, CanId,
#                                   CanDlc, CanSduPtr);
#     }
# #endif
# 
# } /* End of CanIf_RxIndication () */
	.d2line		233
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
.L527:
	.type		CanIf_RxIndication,@function
	.size		CanIf_RxIndication,.-CanIf_RxIndication
# Number of nodes = 14

# Allocations for CanIf_RxIndication
#	?a4		Hrh
#	?a5		CanId
#	?a6		CanDlc
#	?a7		CanSduPtr

# Allocations for module
	.section	.text_vle
	.0byte		.L546
	.section	.text_vle
#$$ld
.L5:
.L554:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L534:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\internal\\CanIf_Private.h"
.L321:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_RxIndication.c"
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
	.uleb128	10
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
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_RxIndication.c"
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
.L322:
	.sleb128	2
	.4byte		.L318-.L2
	.byte		"CanIf_StoreRxPduToDecoupleBuffer"
	.byte		0
	.4byte		.L321
	.uleb128	629
	.uleb128	30
	.byte		0x1
	.4byte		.L319
	.4byte		.L320
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L321
	.uleb128	629
	.uleb128	30
	.byte		"CanRxPduId"
	.byte		0
	.4byte		.L323
	.4byte		.L328
	.sleb128	3
	.4byte		.L321
	.uleb128	629
	.uleb128	30
	.byte		"BytesToStore"
	.byte		0
	.4byte		.L329
	.4byte		.L332
	.sleb128	3
	.4byte		.L321
	.uleb128	629
	.uleb128	30
	.byte		"CanSduPtr_pu8"
	.byte		0
	.4byte		.L333
	.4byte		.L335
	.section	.debug_info,,n
.L336:
	.sleb128	4
	.4byte		.L321
	.uleb128	637
	.uleb128	28
	.byte		"BufferInd"
	.byte		0
	.4byte		.L337
	.4byte		.L339
.L340:
	.sleb128	4
	.4byte		.L321
	.uleb128	640
	.uleb128	27
	.byte		"BitInd_u8"
	.byte		0
	.4byte		.L330
	.4byte		.L341
.L342:
	.sleb128	4
	.4byte		.L321
	.uleb128	642
	.uleb128	54
	.byte		"SrcSduPtr_pu8"
	.byte		0
	.4byte		.L333
	.4byte		.L343
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L347
	.4byte		.L344
	.4byte		.L345
.L348:
	.sleb128	4
	.4byte		.L321
	.uleb128	660
	.uleb128	5
	.byte		"vstar_copy8_dst"
	.byte		0
	.4byte		.L349
	.4byte		.L350
.L351:
	.sleb128	4
	.4byte		.L321
	.uleb128	660
	.uleb128	5
	.byte		"vstar_copy8_src"
	.byte		0
	.4byte		.L334
	.4byte		.L352
	.section	.debug_info,,n
	.sleb128	0
.L347:
	.section	.debug_info,,n
	.sleb128	0
.L318:
	.section	.debug_info,,n
.L358:
	.sleb128	2
	.4byte		.L355-.L2
	.byte		"CanIf_ProcessRxData"
	.byte		0
	.4byte		.L321
	.uleb128	412
	.uleb128	30
	.byte		0x1
	.4byte		.L356
	.4byte		.L357
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L321
	.uleb128	412
	.uleb128	30
	.byte		"CanId"
	.byte		0
	.4byte		.L359
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	3
	.4byte		.L321
	.uleb128	412
	.uleb128	30
	.byte		"CanRxPduId"
	.byte		0
	.4byte		.L323
	.4byte		.L361
	.sleb128	3
	.4byte		.L321
	.uleb128	412
	.uleb128	30
	.byte		"CanDlc_u8"
	.byte		0
	.4byte		.L329
	.4byte		.L362
	.sleb128	3
	.4byte		.L321
	.uleb128	412
	.uleb128	30
	.byte		"CanSduPtr_pu8"
	.byte		0
	.4byte		.L333
	.4byte		.L363
.L364:
	.sleb128	4
	.4byte		.L321
	.uleb128	420
	.uleb128	71
	.byte		"RxPdu"
	.byte		0
	.4byte		.L365
	.4byte		.L370
.L371:
	.sleb128	4
	.4byte		.L321
	.uleb128	421
	.uleb128	28
	.byte		"ConfiguredDlc"
	.byte		0
	.4byte		.L329
	.4byte		.L372
.L373:
	.sleb128	4
	.4byte		.L321
	.uleb128	428
	.uleb128	27
	.byte		"BytesToStoreToDecoupleBuffer"
	.byte		0
	.4byte		.L330
	.4byte		.L374
.L375:
	.sleb128	4
	.4byte		.L321
	.uleb128	439
	.uleb128	36
	.byte		"RetVal"
	.byte		0
	.4byte		.L376
	.4byte		.L377
	.section	.debug_info,,n
	.sleb128	0
.L355:
	.section	.debug_info,,n
.L382:
	.sleb128	7
	.4byte		.L379-.L2
	.byte		"CanIf_BinarySearchRxPduId"
	.byte		0
	.4byte		.L321
	.uleb128	1040
	.uleb128	41
	.4byte		.L376
	.byte		0x1
	.4byte		.L380
	.4byte		.L381
	.sleb128	3
	.4byte		.L321
	.uleb128	1040
	.uleb128	41
	.byte		"CanId"
	.byte		0
	.4byte		.L383
	.4byte		.L384
	.sleb128	3
	.4byte		.L321
	.uleb128	1040
	.uleb128	41
	.byte		"RxPduIdList_p"
	.byte		0
	.4byte		.L385
	.4byte		.L387
	.sleb128	3
	.4byte		.L321
	.uleb128	1040
	.uleb128	41
	.byte		"NoOfRxPduId"
	.byte		0
	.4byte		.L323
	.4byte		.L388
	.sleb128	3
	.4byte		.L321
	.uleb128	1040
	.uleb128	41
	.byte		"CanRxPduId_p"
	.byte		0
	.4byte		.L389
	.4byte		.L391
.L392:
	.sleb128	4
	.4byte		.L321
	.uleb128	1050
	.uleb128	35
	.byte		"CanIfRet"
	.byte		0
	.4byte		.L376
	.4byte		.L393
.L394:
	.sleb128	4
	.4byte		.L321
	.uleb128	1053
	.uleb128	37
	.byte		"MinInd"
	.byte		0
	.4byte		.L395
	.4byte		.L396
.L397:
	.sleb128	4
	.4byte		.L321
	.uleb128	1054
	.uleb128	37
	.byte		"MaxInd"
	.byte		0
	.4byte		.L395
	.4byte		.L398
.L399:
	.sleb128	4
	.4byte		.L321
	.uleb128	1055
	.uleb128	37
	.byte		"MidInd"
	.byte		0
	.4byte		.L395
	.4byte		.L400
.L401:
	.sleb128	4
	.4byte		.L321
	.uleb128	1058
	.uleb128	37
	.byte		"RxPduId"
	.byte		0
	.4byte		.L395
	.4byte		.L402
	.section	.debug_info,,n
	.sleb128	0
.L379:
	.section	.debug_info,,n
.L407:
	.sleb128	7
	.4byte		.L404-.L2
	.byte		"CanIf_FilterBasicCanRxPduId"
	.byte		0
	.4byte		.L321
	.uleb128	959
	.uleb128	41
	.4byte		.L376
	.byte		0x1
	.4byte		.L405
	.4byte		.L406
	.sleb128	3
	.4byte		.L321
	.uleb128	959
	.uleb128	41
	.byte		"CanId"
	.byte		0
	.4byte		.L383
	.4byte		.L408
	.sleb128	3
	.4byte		.L321
	.uleb128	959
	.uleb128	41
	.byte		"HrhConfigInfo_p"
	.byte		0
	.4byte		.L409
	.4byte		.L414
	.sleb128	3
	.4byte		.L321
	.uleb128	959
	.uleb128	41
	.byte		"CanRxPduId_p"
	.byte		0
	.4byte		.L389
	.4byte		.L415
.L416:
	.sleb128	4
	.4byte		.L321
	.uleb128	967
	.uleb128	35
	.byte		"CanIfRet"
	.byte		0
	.4byte		.L376
	.4byte		.L417
.L418:
	.sleb128	4
	.4byte		.L321
	.uleb128	970
	.uleb128	37
	.byte		"LpduRangeInd"
	.byte		0
	.4byte		.L395
	.4byte		.L419
.L420:
	.sleb128	4
	.4byte		.L321
	.uleb128	974
	.uleb128	5
	.byte		"HrhRangeConfig_p"
	.byte		0
	.4byte		.L421
	.4byte		.L425
	.section	.debug_info,,n
	.sleb128	0
.L404:
	.section	.debug_info,,n
.L430:
	.sleb128	7
	.4byte		.L427-.L2
	.byte		"CanIf_CheckRxPduCanIdFlags"
	.byte		0
	.4byte		.L321
	.uleb128	1198
	.uleb128	41
	.4byte		.L376
	.byte		0x1
	.4byte		.L428
	.4byte		.L429
	.sleb128	3
	.4byte		.L321
	.uleb128	1198
	.uleb128	41
	.byte		"RxPduId"
	.byte		0
	.4byte		.L323
	.4byte		.L431
	.sleb128	6
	.4byte		.L321
	.uleb128	1198
	.uleb128	41
	.byte		"CanId"
	.byte		0
	.4byte		.L383
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	3
	.4byte		.L321
	.uleb128	1198
	.uleb128	41
	.byte		"IsCanIdEXTType"
	.byte		0
	.4byte		.L432
	.4byte		.L434
	.sleb128	3
	.4byte		.L321
	.uleb128	1198
	.uleb128	41
	.byte		"IsCanIdFDType"
	.byte		0
	.4byte		.L432
	.4byte		.L435
.L436:
	.sleb128	4
	.4byte		.L321
	.uleb128	1208
	.uleb128	35
	.byte		"CanIfRet"
	.byte		0
	.4byte		.L376
	.4byte		.L437
.L438:
	.sleb128	4
	.4byte		.L321
	.uleb128	1211
	.uleb128	43
	.byte		"CfgCanIdType"
	.byte		0
	.4byte		.L439
	.4byte		.L441
.L442:
	.sleb128	4
	.4byte		.L321
	.uleb128	1212
	.uleb128	29
	.byte		"IsEXTMatch"
	.byte		0
	.4byte		.L433
	.4byte		.L443
.L444:
	.sleb128	4
	.4byte		.L321
	.uleb128	1213
	.uleb128	29
	.byte		"IsFDMatch"
	.byte		0
	.4byte		.L433
	.4byte		.L445
	.section	.debug_info,,n
	.sleb128	0
.L427:
	.section	.debug_info,,n
.L450:
	.sleb128	7
	.4byte		.L447-.L2
	.byte		"CanIf_SearchRxPDUId"
	.byte		0
	.4byte		.L321
	.uleb128	824
	.uleb128	40
	.4byte		.L376
	.byte		0x1
	.4byte		.L448
	.4byte		.L449
	.sleb128	3
	.4byte		.L321
	.uleb128	824
	.uleb128	40
	.byte		"CanDriver_u8"
	.byte		0
	.4byte		.L329
	.4byte		.L451
	.sleb128	3
	.4byte		.L321
	.uleb128	824
	.uleb128	40
	.byte		"CanIfHrh"
	.byte		0
	.4byte		.L452
	.4byte		.L454
	.sleb128	3
	.4byte		.L321
	.uleb128	824
	.uleb128	40
	.byte		"CanId"
	.byte		0
	.4byte		.L359
	.4byte		.L455
	.sleb128	3
	.4byte		.L321
	.uleb128	824
	.uleb128	40
	.byte		"CanRxPduId_p"
	.byte		0
	.4byte		.L389
	.4byte		.L456
.L457:
	.sleb128	4
	.4byte		.L321
	.uleb128	835
	.uleb128	35
	.byte		"CanIfRet"
	.byte		0
	.4byte		.L376
	.4byte		.L458
.L459:
	.sleb128	4
	.4byte		.L321
	.uleb128	839
	.uleb128	9
	.byte		"HrhConfInfo_p"
	.byte		0
	.4byte		.L409
	.4byte		.L460
.L461:
	.sleb128	4
	.4byte		.L321
	.uleb128	841
	.uleb128	29
	.byte		"IsCanIdEXTType"
	.byte		0
	.4byte		.L433
	.4byte		.L462
.L463:
	.sleb128	4
	.4byte		.L321
	.uleb128	842
	.uleb128	29
	.byte		"IsCanIdFDType"
	.byte		0
	.4byte		.L433
	.4byte		.L464
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L468
	.4byte		.L465
	.4byte		.L466
	.section	.debug_info,,n
.L469:
	.sleb128	8
	.4byte		.L321
	.uleb128	874
	.uleb128	44
	.byte		"RxPduId"
	.byte		0
	.4byte		.L324
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L468:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L473
	.4byte		.L470
	.4byte		.L471
.L474:
	.sleb128	4
	.4byte		.L321
	.uleb128	913
	.uleb128	45
	.byte		"RxPduId"
	.byte		0
	.4byte		.L323
	.4byte		.L475
	.section	.debug_info,,n
	.sleb128	0
.L473:
	.section	.debug_info,,n
	.sleb128	0
.L447:
	.section	.debug_info,,n
.L480:
	.sleb128	7
	.4byte		.L477-.L2
	.byte		"CanIf_GetCanIfHrhId"
	.byte		0
	.4byte		.L321
	.uleb128	1294
	.uleb128	41
	.4byte		.L376
	.byte		0x1
	.4byte		.L478
	.4byte		.L479
	.sleb128	3
	.4byte		.L321
	.uleb128	1294
	.uleb128	41
	.byte		"CanDriver_u8"
	.byte		0
	.4byte		.L329
	.4byte		.L481
	.sleb128	3
	.4byte		.L321
	.uleb128	1294
	.uleb128	41
	.byte		"DrvHrh"
	.byte		0
	.4byte		.L482
	.4byte		.L484
	.sleb128	3
	.4byte		.L321
	.uleb128	1294
	.uleb128	41
	.byte		"CanIfHrh_p"
	.byte		0
	.4byte		.L485
	.4byte		.L487
.L488:
	.sleb128	4
	.4byte		.L321
	.uleb128	1302
	.uleb128	38
	.byte		"CanIfRet"
	.byte		0
	.4byte		.L376
	.4byte		.L489
.L490:
	.sleb128	4
	.4byte		.L321
	.uleb128	1305
	.uleb128	42
	.byte		"LoopInd"
	.byte		0
	.4byte		.L453
	.4byte		.L491
.L492:
	.sleb128	4
	.4byte		.L321
	.uleb128	1310
	.uleb128	5
	.byte		"HrhConfigInfo_p"
	.byte		0
	.4byte		.L409
	.4byte		.L493
.L494:
	.sleb128	4
	.4byte		.L321
	.uleb128	1313
	.uleb128	42
	.byte		"NumberOfHrh"
	.byte		0
	.4byte		.L482
	.4byte		.L495
	.section	.debug_info,,n
	.sleb128	0
.L477:
	.section	.debug_info,,n
.L500:
	.sleb128	9
	.4byte		.L497-.L2
	.byte		"CanIf_ProcessRxIndication"
	.byte		0
	.4byte		.L321
	.uleb128	253
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L498
	.4byte		.L499
	.sleb128	3
	.4byte		.L321
	.uleb128	253
	.uleb128	23
	.byte		"CanDriver_u8"
	.byte		0
	.4byte		.L329
	.4byte		.L501
	.sleb128	3
	.4byte		.L321
	.uleb128	253
	.uleb128	23
	.byte		"Hrh"
	.byte		0
	.4byte		.L482
	.4byte		.L502
	.sleb128	3
	.4byte		.L321
	.uleb128	253
	.uleb128	23
	.byte		"CanId"
	.byte		0
	.4byte		.L383
	.4byte		.L503
	.sleb128	3
	.4byte		.L321
	.uleb128	253
	.uleb128	23
	.byte		"CanDlc_u8"
	.byte		0
	.4byte		.L329
	.4byte		.L504
	.sleb128	3
	.4byte		.L321
	.uleb128	253
	.uleb128	23
	.byte		"CanSduPtr_pu8"
	.byte		0
	.4byte		.L333
	.4byte		.L505
.L506:
	.sleb128	4
	.4byte		.L321
	.uleb128	265
	.uleb128	36
	.byte		"RetVal"
	.byte		0
	.4byte		.L376
	.4byte		.L507
.L508:
	.sleb128	4
	.4byte		.L321
	.uleb128	268
	.uleb128	27
	.byte		"Controller_u8"
	.byte		0
	.4byte		.L330
	.4byte		.L509
.L510:
	.sleb128	8
	.4byte		.L321
	.uleb128	271
	.uleb128	35
	.byte		"CanRxPduId"
	.byte		0
	.4byte		.L324
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	10
.L511:
	.sleb128	8
	.4byte		.L321
	.uleb128	274
	.uleb128	40
	.byte		"CanIfHrh"
	.byte		0
	.4byte		.L453
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L515
	.4byte		.L512
	.4byte		.L513
.L516:
	.sleb128	4
	.4byte		.L321
	.uleb128	322
	.uleb128	54
	.byte		"cmode"
	.byte		0
	.4byte		.L517
	.4byte		.L519
.L520:
	.sleb128	4
	.4byte		.L321
	.uleb128	323
	.uleb128	47
	.byte		"CanIf_PduMode_loc"
	.byte		0
	.4byte		.L521
	.4byte		.L523
	.section	.debug_info,,n
	.sleb128	0
.L515:
	.section	.debug_info,,n
	.sleb128	0
.L497:
	.section	.debug_info,,n
.L528:
	.sleb128	9
	.4byte		.L525-.L2
	.byte		"CanIf_RxIndication"
	.byte		0
	.4byte		.L321
	.uleb128	209
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L526
	.4byte		.L527
	.sleb128	3
	.4byte		.L321
	.uleb128	209
	.uleb128	22
	.byte		"Hrh"
	.byte		0
	.4byte		.L483
	.4byte		.L529
	.sleb128	3
	.4byte		.L321
	.uleb128	209
	.uleb128	22
	.byte		"CanId"
	.byte		0
	.4byte		.L359
	.4byte		.L530
	.sleb128	3
	.4byte		.L321
	.uleb128	209
	.uleb128	22
	.byte		"CanDlc"
	.byte		0
	.4byte		.L330
	.4byte		.L531
	.sleb128	3
	.4byte		.L321
	.uleb128	209
	.uleb128	22
	.byte		"CanSduPtr"
	.byte		0
	.4byte		.L334
	.4byte		.L532
	.section	.debug_info,,n
	.sleb128	0
.L525:
	.section	.debug_info,,n
.L533:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L534
	.uleb128	323
	.uleb128	29
	.byte		"CanIf_InitStatus_u8"
	.byte		0
	.4byte		.L330
	.0byte		.L533
.L535:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L534
	.uleb128	336
	.uleb128	1
	.byte		"CanIf_ControllerMode_a"
	.byte		0
	.4byte		.L536
.L538:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L534
	.uleb128	342
	.uleb128	42
	.byte		"CanIf_PduMode_a"
	.byte		0
	.4byte		.L539
.L541:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L534
	.uleb128	379
	.uleb128	49
	.byte		"CanIf_RxPduIntDecDataBuf_pu8"
	.byte		0
	.4byte		.L349
.L542:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L534
	.uleb128	385
	.uleb128	49
	.byte		"CanIf_RxPduIntDecNotifySt_pu8"
	.byte		0
	.4byte		.L349
.L543:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L534
	.uleb128	436
	.uleb128	1
	.byte		"CanIf_RxPduConfigInfo_p"
	.byte		0
	.4byte		.L366
.L544:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L534
	.uleb128	472
	.uleb128	1
	.byte		"CanIf_HrhConfigInfo_pp"
	.byte		0
	.4byte		.L545
.L546:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L534
	.uleb128	530
	.uleb128	1
	.byte		"CanIf_NumberOfHrh_p"
	.byte		0
	.4byte		.L547
	.section	.debug_info,,n
.L549:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L534
	.uleb128	583
	.uleb128	1
	.byte		"CanIf_HrhControllerConfig_ppcu8"
	.byte		0
	.4byte		.L550
	.section	.debug_info,,n
.L413:
	.sleb128	11
	.4byte		.L554
	.uleb128	266
	.uleb128	1
	.4byte		.L555-.L2
	.uleb128	20
	.section	.debug_info,,n
.L138:
	.sleb128	12
	.byte		"CanIfHrhType"
	.byte		0
	.4byte		.L556
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L139:
	.sleb128	12
	.byte		"CanIfHrhRangeConfig_p"
	.byte		0
	.4byte		.L421
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L140:
	.sleb128	12
	.byte		"CanIfHrhRxPduIdList_p"
	.byte		0
	.4byte		.L386
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L141:
	.sleb128	12
	.byte		"CanIfHrhNoOfRxPduIds"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L142:
	.sleb128	12
	.byte		"CanIfHrhIdSymRef"
	.byte		0
	.4byte		.L483
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L143:
	.sleb128	12
	.byte		"CanIfSoftwareFilterHrh_b"
	.byte		0
	.4byte		.L433
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L144:
	.sleb128	12
	.byte		"CanIfNoOfHrhRange_u8"
	.byte		0
	.4byte		.L330
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
	.sleb128	0
.L555:
.L424:
	.sleb128	11
	.4byte		.L554
	.uleb128	266
	.uleb128	1
	.4byte		.L558-.L2
	.uleb128	20
.L133:
	.sleb128	12
	.byte		"CanIfRxPduLowerCanId"
	.byte		0
	.4byte		.L359
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L134:
	.sleb128	12
	.byte		"CanIfRxPduUpperCanId"
	.byte		0
	.4byte		.L359
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L135:
	.sleb128	12
	.byte		"CanIfRxPduRangeCanIdType"
	.byte		0
	.4byte		.L439
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L136:
	.sleb128	12
	.byte		"CanIfHrhRangeRxPduIdList_p"
	.byte		0
	.4byte		.L386
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L137:
	.sleb128	12
	.byte		"CanIfHrhRangeNoOfRxPduId"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L558:
.L369:
	.sleb128	11
	.4byte		.L554
	.uleb128	266
	.uleb128	1
	.4byte		.L559-.L2
	.uleb128	24
.L122:
	.sleb128	12
	.byte		"CanIfCanRxPduCanId"
	.byte		0
	.4byte		.L359
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L123:
	.sleb128	12
	.byte		"CanIfRxPduIdCanIdType"
	.byte		0
	.4byte		.L439
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L124:
	.sleb128	12
	.byte		"CanIfRxPduIntDecBufferInd"
	.byte		0
	.4byte		.L337
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L125:
	.sleb128	12
	.byte		"PduIdRef"
	.byte		0
	.4byte		.L325
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L126:
	.sleb128	12
	.byte		"CanIfCanRxPduHrhRef"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L127:
	.sleb128	12
	.byte		"CanIfCanRxPduIdDlc_u8"
	.byte		0
	.4byte		.L330
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L128:
	.sleb128	12
	.byte		"CanIfRxPduCallBackInd_u8"
	.byte		0
	.4byte		.L330
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L129:
	.sleb128	12
	.byte		"CanIfReadRxPduData_b"
	.byte		0
	.4byte		.L433
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L130:
	.sleb128	12
	.byte		"CanIfReadRxPduNotifyStatus_b"
	.byte		0
	.4byte		.L433
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L131:
	.sleb128	12
	.byte		"CanIfCanDriverRef_u8"
	.byte		0
	.4byte		.L330
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L132:
	.sleb128	12
	.byte		"CanIfRxPduIntDecoupling_b"
	.byte		0
	.4byte		.L433
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L559:
	.section	.debug_info,,n
.L557:
	.sleb128	13
	.4byte		.L554
	.uleb128	266
	.uleb128	1
	.4byte		.L560-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	14
	.byte		"CANIF_HOH_BASIC_CAN"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"CANIF_HOH_FULL_CAN"
	.byte		0
	.sleb128	1
	.sleb128	0
.L560:
.L440:
	.sleb128	13
	.4byte		.L554
	.uleb128	185
	.uleb128	1
	.4byte		.L561-.L2
	.uleb128	4
	.sleb128	14
	.byte		"CANIF_RX_CANID_EXTENDED"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"CANIF_RX_CANID_STANDARD"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"CANIF_RX_CANID_EXTENDED_FD"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"CANIF_RX_CANID_STANDARD_FD"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"CANIF_RX_CANID_EXTENDED_NO_FD"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"CANIF_RX_CANID_STANDARD_NO_FD"
	.byte		0
	.sleb128	5
	.sleb128	0
.L561:
.L522:
	.sleb128	13
	.4byte		.L554
	.uleb128	103
	.uleb128	1
	.4byte		.L562-.L2
	.uleb128	4
	.sleb128	14
	.byte		"CANIF_OFFLINE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"CANIF_TX_OFFLINE"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"CANIF_TX_OFFLINE_ACTIVE"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"CANIF_ONLINE"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"CANIF_PDU_MODE_MAX"
	.byte		0
	.sleb128	4
	.sleb128	0
.L562:
.L518:
	.sleb128	13
	.4byte		.L554
	.uleb128	74
	.uleb128	1
	.4byte		.L563-.L2
	.uleb128	4
	.sleb128	14
	.byte		"CANIF_CS_SLEEP"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"CANIF_CS_STARTED"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"CANIF_CS_STOPPED"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"CANIF_CS_UNINIT"
	.byte		0
	.sleb128	3
	.sleb128	0
.L563:
	.section	.debug_info,,n
.L327:
	.sleb128	15
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L326:
	.sleb128	16
	.byte		"uint16"
	.byte		0
	.4byte		.L327
.L325:
	.sleb128	16
	.byte		"PduIdType"
	.byte		0
	.4byte		.L326
.L324:
	.sleb128	16
	.byte		"CanIfLpduId_t"
	.byte		0
	.4byte		.L325
	.section	.debug_info,,n
.L323:
	.sleb128	17
	.4byte		.L324
.L331:
	.sleb128	15
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L330:
	.sleb128	16
	.byte		"uint8"
	.byte		0
	.4byte		.L331
.L329:
	.sleb128	17
	.4byte		.L330
	.section	.debug_info,,n
.L334:
	.sleb128	18
	.4byte		.L329
.L333:
	.sleb128	17
	.4byte		.L334
.L338:
	.sleb128	15
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L337:
	.sleb128	16
	.byte		"uint32"
	.byte		0
	.4byte		.L338
.L349:
	.sleb128	18
	.4byte		.L330
.L360:
	.sleb128	16
	.byte		"Can_IdType"
	.byte		0
	.4byte		.L337
.L359:
	.sleb128	16
	.byte		"CanIfCanId_t"
	.byte		0
	.4byte		.L360
.L368:
	.sleb128	16
	.byte		"CanIfRxPduConfigInfo_t"
	.byte		0
	.4byte		.L369
.L367:
	.sleb128	17
	.4byte		.L368
.L366:
	.sleb128	18
	.4byte		.L367
.L365:
	.sleb128	17
	.4byte		.L366
.L376:
	.sleb128	16
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L330
.L383:
	.sleb128	17
	.4byte		.L359
.L386:
	.sleb128	18
	.4byte		.L323
.L385:
	.sleb128	17
	.4byte		.L386
.L390:
	.sleb128	18
	.4byte		.L324
.L389:
	.sleb128	17
	.4byte		.L390
.L395:
	.sleb128	16
	.byte		"CanIfLpduIdFast"
	.byte		0
	.4byte		.L326
.L412:
	.sleb128	16
	.byte		"CanIfHrhConfigInfo_t"
	.byte		0
	.4byte		.L413
.L411:
	.sleb128	17
	.4byte		.L412
.L410:
	.sleb128	18
	.4byte		.L411
.L409:
	.sleb128	17
	.4byte		.L410
.L423:
	.sleb128	16
	.byte		"CanIfHrhRangeConfig_t"
	.byte		0
	.4byte		.L424
.L422:
	.sleb128	17
	.4byte		.L423
.L421:
	.sleb128	18
	.4byte		.L422
.L433:
	.sleb128	16
	.byte		"boolean"
	.byte		0
	.4byte		.L331
.L432:
	.sleb128	17
	.4byte		.L433
.L439:
	.sleb128	16
	.byte		"CanIfRxPduCanIdType_t"
	.byte		0
	.4byte		.L440
.L453:
	.sleb128	16
	.byte		"CanIf_HrhIndexType"
	.byte		0
	.4byte		.L326
.L452:
	.sleb128	17
	.4byte		.L453
.L483:
	.sleb128	16
	.byte		"Can_HwHandleType"
	.byte		0
	.4byte		.L326
.L482:
	.sleb128	17
	.4byte		.L483
.L486:
	.sleb128	18
	.4byte		.L453
.L485:
	.sleb128	17
	.4byte		.L486
.L517:
	.sleb128	16
	.byte		"CanIf_ControllerModeType"
	.byte		0
	.4byte		.L518
.L521:
	.sleb128	16
	.byte		"CanIf_PduModeType"
	.byte		0
	.4byte		.L522
	.section	.debug_info,,n
.L536:
	.sleb128	19
	.4byte		.L537-.L2
	.4byte		.L517
	.section	.debug_info,,n
	.sleb128	20
	.sleb128	0
.L537:
.L539:
	.sleb128	19
	.4byte		.L540-.L2
	.4byte		.L521
	.sleb128	20
	.sleb128	0
.L540:
.L545:
	.sleb128	18
	.4byte		.L409
.L548:
	.sleb128	18
	.4byte		.L482
.L547:
	.sleb128	17
	.4byte		.L548
.L553:
	.sleb128	16
	.byte		"CanIf_CanControllerHrhIdRefType"
	.byte		0
	.4byte		.L334
.L552:
	.sleb128	17
	.4byte		.L553
.L551:
	.sleb128	18
	.4byte		.L552
.L550:
	.sleb128	17
	.4byte		.L551
.L556:
	.sleb128	16
	.byte		"CanIfHohType_t"
	.byte		0
	.4byte		.L557
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L328:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L332:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),28
	.d2locend
.L335:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo6),5
	.d2locend
.L339:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),29
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo7),0
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),0
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),0
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),0
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo27),31
	.d2locend
.L341:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),0
	.d2locend
.L343:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo30),5
	.d2locend
.L350:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo26),29
	.d2locend
.L352:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo3),30
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo26),30
	.d2locend
.L361:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),4
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),31
	.d2locend
.L362:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo37),5
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo36),30
	.d2locend
.L363:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo35),6
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo36),29
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),6
	.d2locend
.L370:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo42),28
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo43),28
	.d2locend
.L372:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),0
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo39),0
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),0
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo43),0
	.d2locend
.L374:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo48),4
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),4
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo43),4
	.d2locend
.L377:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo35),5
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo54),3
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo48),3
	.d2locend
.L384:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),3
	.d2locend
.L387:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo58),4
	.d2locend
.L388:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo59),5
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),30
	.d2locend
.L391:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo62),6
	.d2locend
.L393:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),5
	.d2locend
.L396:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo57),31
	.d2locend
.L398:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo61),0
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),30
	.d2locend
.L400:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),7
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),7
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),7
	.d2locend
.L402:
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),29
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),0
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo74),29
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo62),7
	.d2locend
.L408:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),3
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),31
	.d2locend
.L414:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo85),4
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo84),30
	.d2locend
.L415:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),5
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),9
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),5
	.d2locend
.L417:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),4
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),3
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo88),4
	.d2locend
.L419:
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo93),29
	.d2locend
.L425:
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),3
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),3
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),3
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),3
	.d2locend
.L431:
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),3
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),0
	.d2locend
.L434:
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo106),5
	.d2locend
.L435:
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo107),6
	.d2locend
.L437:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo106),3
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),3
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),3
	.d2locend
.L441:
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo113),0
	.d2locend
.L443:
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo115),4
	.d2locend
.L445:
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo116),7
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),7
	.d2locend
.L451:
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),3
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),0
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),0
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),0
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),0
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),0
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),0
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),0
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),0
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),0
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),0
	.d2locend
.L454:
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo139),4
	.d2locend
.L455:
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo140),5
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo128),31
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo138),31
	.d2locend
.L456:
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo142),6
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo130),30
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo143),30
	.d2locend
.L458:
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo124),3
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),3
	.d2locend
.L460:
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),0
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo124),4
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),4
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo136),4
	.d2locend
.L462:
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo128),10
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo138),10
	.d2locend
.L464:
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo128),29
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo132),29
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo143),29
	.d2locend
.L475:
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo128),29
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo132),29
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo143),29
	.d2locend
.L481:
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo153),3
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo155),6
	.d2locend
.L484:
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo156),4
	.d2locend
.L487:
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo156),5
	.d2locend
.L489:
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),3
	.d2locend
.L491:
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo156),6
	.d2locend
.L493:
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo156),0
	.d2locend
.L495:
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo159),6
	.d2locend
.L501:
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo162),3
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo164),31
	.d2locend
.L502:
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo165),4
	.d2locreg	%offsetof(.Llo166), %offsetof(.Llo167),4
	.d2locend
.L503:
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo163),5
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo169),30
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo171),5
	.d2locend
.L504:
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo163),6
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo169),29
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo171),6
	.d2locend
.L505:
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo163),7
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo169),26
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo171),7
	.d2locend
.L507:
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo163),0
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo173),3
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo165),0
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo176),3
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo178),3
	.d2locreg	%offsetof(.Llo179), %offsetof(.Llo180),3
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo164),3
	.d2locend
.L509:
	.d2locreg	%offsetof(.Llo182), %offsetof(.Llo183),28
	.d2locend
.L519:
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo184),28
	.d2locend
.L523:
	.d2locreg	%offsetof(.Llo185), %offsetof(.Llo164),27
	.d2locend
.L529:
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo187),3
	.d2locend
.L530:
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo188),4
	.d2locend
.L531:
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo189),5
	.d2locend
.L532:
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo190),6
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanIf_RxIndication"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "CanIf_ProcessRxIndication"
	.wrcm.end
	.wrcm.nelem "CanIf_ProcessRxIndication"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "CanIf_GetCanIfHrhId","CanIf_ProcessRxData","CanIf_SearchRxPDUId","SchM_Enter_CanIf","SchM_Exit_CanIf"
	.wrcm.end
	.wrcm.nelem "CanIf_GetCanIfHrhId"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "CanIf_SearchRxPDUId"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanIf_CheckRxPduCanIdFlags","CanIf_FilterBasicCanRxPduId"
	.wrcm.end
	.wrcm.nelem "CanIf_CheckRxPduCanIdFlags"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "CanIf_FilterBasicCanRxPduId"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanIf_BinarySearchRxPduId"
	.wrcm.end
	.wrcm.nelem "CanIf_BinarySearchRxPduId"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "CanIf_ProcessRxData"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanIf_ReportRxIndication","CanIf_StoreRxPduToDecoupleBuffer"
	.wrcm.end
	.wrcm.nelem "CanIf_StoreRxPduToDecoupleBuffer"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SchM_Enter_CanIf","SchM_Exit_CanIf"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_RxIndication.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_RxIndication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_RxIndication.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_RxIndication.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_RxIndication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_RxIndication.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanIf\ssc\make\..\src\CanIf_RxIndication.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
