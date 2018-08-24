#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"PduR_Cfg.c"
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
# FUNC(void, PDUR_CODE)  PduR_CanIfRxIndication(
	.align		2
	.section	.text_vle
	.d2file		"gen\\MPC5746R_ECU\\WindRiver\\PduR_Cfg.c"
        .d2line         164,24
#$$ld
.L681:

#$$bf	PduR_CanIfRxIndication,interprocedural,rasave,nostackparams
	.globl		PduR_CanIfRxIndication
	.d2_cfa_start __cie
PduR_CanIfRxIndication:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                      VAR(PduIdType,AUTOMATIC) RxPduId,
#                      P2VAR(PduInfoType, AUTOMATIC,PDUR_APPL_DATA) PduInfoPtr)
# {
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     /* Reduced or UnInit*/
#     if (PduR_Status != PDUR_ONLINE)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         0x1U,
#                         PDUR_E_INVALID_REQUEST);
#     }
#     else
# #endif /*PDUR_DEV_ERROR_DETECT*/
#         {
#             PduR_LoIfRxIndication(RxPduId,
	.d2line		180
	lis		r5,RoutingArraysSizeRef@ha
	lwz		r5,RoutingArraysSizeRef@l(r5)
	lhz		r6,0(r5)
	rlwinm		r3,r3,0,16,31		# RxPduId=r3 RxPduId=r3
.Llo2:
	lis		r5,RoutingArraysRef@ha
	lwz		r5,RoutingArraysRef@l(r5)
	lwz		r7,0(r5)
	mr		r0,r4		# PduInfoPtr=r0 PduInfoPtr=r4
	diab.li		r5,1
	bl		PduR_LoIfRxIndication
#                 PduInfoPtr,
#                 0x1U,
#                 RoutingArraysSizeRef[PDUR_CANIF_RX_ARRAY_INDEX], /* KW MISRA.PTR.ARITH */
#                 RoutingArraysRef[PDUR_CANIF_RX_ARRAY_INDEX]); /* KW MISRA.PTR.ARITH */
#         }
# }
	.d2line		186
	.d2epilogue_begin
.Llo3:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L682:
	.type		PduR_CanIfRxIndication,@function
	.size		PduR_CanIfRxIndication,.-PduR_CanIfRxIndication
# Number of nodes = 16

# Allocations for PduR_CanIfRxIndication
#	?a4		RxPduId
#	?a5		PduInfoPtr
# FUNC(void, PDUR_CODE) PduR_CanIfTxConfirmation(VAR(PduIdType,AUTOMATIC) TxPduId)
	.align		2
	.section	.text_vle
        .d2line         190,23
#$$ld
.L695:

#$$bf	PduR_CanIfTxConfirmation,interprocedural,rasave,nostackparams
	.globl		PduR_CanIfTxConfirmation
	.d2_cfa_start __cie
PduR_CanIfTxConfirmation:
.Llo4:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     /* Reduced or UnInit*/
#     if (PduR_Status != PDUR_ONLINE)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         0x2U,
#                         PDUR_E_INVALID_REQUEST);
#     }
#     else
# #endif /*PDUR_DEV_ERROR_DETECT*/
#         {
#             PduR_LoIfDirectTxConfirmation(
	.d2line		204
	lis		r4,RoutingArraysSizeRef@ha
	lwz		r4,RoutingArraysSizeRef@l(r4)
	lhz		r5,2(r4)
	lis		r4,RoutingArraysRef@ha
	lwz		r4,RoutingArraysRef@l(r4)
	lwz		r6,4(r4)
	rlwinm		r3,r3,0,16,31		# TxPduId=r3 TxPduId=r3
.Llo5:
	diab.li		r4,2
	bl		PduR_LoIfDirectTxConfirmation
#                 TxPduId,
#                 0x2U,
#                 RoutingArraysSizeRef[PDUR_CANIF_TX_ARRAY_INDEX], /* KW MISRA.PTR.ARITH */
#                 RoutingArraysRef[PDUR_CANIF_TX_ARRAY_INDEX] /* KW MISRA.PTR.ARITH */
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#                 ,CANIF_LOWER_IF_BASE
# #endif
#              );
#         }
# }
	.d2line		214
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
.L696:
	.type		PduR_CanIfTxConfirmation,@function
	.size		PduR_CanIfTxConfirmation,.-PduR_CanIfTxConfirmation
# Number of nodes = 18

# Allocations for PduR_CanIfTxConfirmation
#	?a4		TxPduId
# FUNC(void, PDUR_CODE)  PduR_CanTpRxIndication(
	.align		2
	.section	.text_vle
        .d2line         228,24
#$$ld
.L701:

#$$bf	PduR_CanTpRxIndication,interprocedural,rasave,nostackparams
	.globl		PduR_CanTpRxIndication
	.d2_cfa_start __cie
PduR_CanTpRxIndication:
.Llo6:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                      VAR(PduIdType,AUTOMATIC) id,
#                      VAR(NotifResultType,AUTOMATIC) result)
# {
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     /* Reduced or UnInit*/
#     if (PduR_Status != PDUR_ONLINE)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         0x5U,
#                         PDUR_E_INVALID_REQUEST);
#     }
#     else
# #endif /*PDUR_DEV_ERROR_DETECT*/
#         {
#             PduR_LoTpRxIndication(id,
	.d2line		244
	lis		r5,RoutingArraysSizeRef@ha
	lwz		r5,RoutingArraysSizeRef@l(r5)
	lhz		r6,8(r5)
	lis		r5,RoutingArraysRef@ha
	lwz		r5,RoutingArraysRef@l(r5)
	lwz		r7,16(r5)
	rlwinm		r3,r3,0,16,31		# id=r3 id=r3
.Llo7:
	rlwinm		r4,r4,0,24,31		# result=r4 result=r4
.Llo8:
	diab.li		r5,5
	bl		PduR_LoTpRxIndication
#                 result,
#                 0x5U,
#                 RoutingArraysSizeRef[PDUR_CANTP_RX_ARRAY_INDEX], /* KW MISRA.PTR.ARITH */
#                 RoutingArraysRef[PDUR_CANTP_RX_ARRAY_INDEX]); /* KW MISRA.PTR.ARITH */
#         }
# }
	.d2line		250
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
.L702:
	.type		PduR_CanTpRxIndication,@function
	.size		PduR_CanTpRxIndication,.-PduR_CanTpRxIndication
# Number of nodes = 21

# Allocations for PduR_CanTpRxIndication
#	?a4		id
#	?a5		result
# FUNC(void, PDUR_CODE) PduR_CanTpTxConfirmation(VAR(PduIdType,AUTOMATIC) id,
	.align		2
	.section	.text_vle
        .d2line         254,23
#$$ld
.L711:

#$$bf	PduR_CanTpTxConfirmation,interprocedural,rasave,nostackparams
	.globl		PduR_CanTpTxConfirmation
	.d2_cfa_start __cie
PduR_CanTpTxConfirmation:
.Llo9:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# VAR(NotifResultType,AUTOMATIC) result )
# {
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     /* Reduced or UnInit*/
#     if (PduR_Status != PDUR_ONLINE)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         0x8U,
#                         PDUR_E_INVALID_REQUEST);
#     }
#     else
# #endif /*PDUR_DEV_ERROR_DETECT*/
#         {
#             PduR_LoTpTxConfirmation(id,
	.d2line		269
	lis		r5,RoutingArraysSizeRef@ha
	lwz		r5,RoutingArraysSizeRef@l(r5)
	lhz		r6,10(r5)
	lis		r5,RoutingArraysRef@ha
	lwz		r5,RoutingArraysRef@l(r5)
	lwz		r7,20(r5)
	rlwinm		r3,r3,0,16,31		# id=r3 id=r3
.Llo10:
	rlwinm		r4,r4,0,24,31		# result=r4 result=r4
.Llo11:
	diab.li		r5,8
	bl		PduR_LoTpTxConfirmation
#                 result,
#                 0x8U,
#                 RoutingArraysSizeRef[PDUR_CANTP_TX_ARRAY_INDEX], /* KW MISRA.PTR.ARITH */
#                 RoutingArraysRef[PDUR_CANTP_TX_ARRAY_INDEX] /* KW MISRA.PTR.ARITH */
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#                 ,CANTP_LOWER_TP_BASE
# #endif /* PDUR_ENABLE_ROUTING_GROUPS */
#             );
#         }
# }
	.d2line		279
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
.L712:
	.type		PduR_CanTpTxConfirmation,@function
	.size		PduR_CanTpTxConfirmation,.-PduR_CanTpTxConfirmation
# Number of nodes = 21

# Allocations for PduR_CanTpTxConfirmation
#	?a4		id
#	?a5		result
# FUNC(BufReq_ReturnType, PDUR_CODE) PduR_CanTpCopyRxData(
	.align		2
	.section	.text_vle
        .d2line         283,36
#$$ld
.L718:

#$$bf	PduR_CanTpCopyRxData,interprocedural,rasave,nostackparams
	.globl		PduR_CanTpCopyRxData
	.d2_cfa_start __cie
PduR_CanTpCopyRxData:
.Llo12:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# id=r0
	stw		r0,20(r1)		# id=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
#            VAR(PduIdType,AUTOMATIC) id,
#            P2VAR(PduInfoType,AUTOMATIC, PDUR_VAR_PB) info,
#            P2VAR(PduLengthType,AUTOMATIC, PDUR_VAR_PB) bufferSizePtr)
# {
# VAR(BufReq_ReturnType,AUTOMATIC) ReturnValue;
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     /* Reduced or UnInit*/
#     if (PduR_Status != PDUR_ONLINE)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         0x4U,
#                         PDUR_E_INVALID_REQUEST);
#         ReturnValue = BUFREQ_E_NOT_OK;
#     }
#     else
# #endif /*PDUR_DEV_ERROR_DETECT*/
#         {
#             ReturnValue = PduR_LoTpCopyRxData(id,
	.d2line		302
	lis		r6,RoutingArraysSizeRef@ha
	lwz		r6,RoutingArraysSizeRef@l(r6)
	lhz		r7,8(r6)
	lis		r6,RoutingArraysRef@ha
	lwz		r6,RoutingArraysRef@l(r6)
	lwz		r8,16(r6)
	rlwinm		r3,r3,0,16,31		# id=r3 id=r3
.Llo13:
	mr		r0,r4		# info=r0 info=r4
	mr		r0,r5		# bufferSizePtr=r0 bufferSizePtr=r5
	diab.li		r6,4
	bl		PduR_LoTpCopyRxData
#                 info,
#                 bufferSizePtr,
#                 0x4U,
#                 RoutingArraysSizeRef[PDUR_CANTP_RX_ARRAY_INDEX], /* KW MISRA.PTR.ARITH */
#                 RoutingArraysRef[PDUR_CANTP_RX_ARRAY_INDEX]); /* KW MISRA.PTR.ARITH */
#         }
#     return ReturnValue;
	.d2line		309
.Llo14:
	mr		r4,r3		# ReturnValue=r4 ReturnValue=r3
# }
	.d2line		310
	.d2epilogue_begin
	lwz		r0,20(r1)		# id=r0
	mtspr		lr,r0		# id=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo15:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L719:
	.type		PduR_CanTpCopyRxData,@function
	.size		PduR_CanTpCopyRxData,.-PduR_CanTpCopyRxData
# Number of nodes = 26

# Allocations for PduR_CanTpCopyRxData
#	?a4		id
#	?a5		info
#	?a6		bufferSizePtr
#	?a7		ReturnValue
# FUNC(BufReq_ReturnType, PDUR_CODE) PduR_CanTpCopyTxData(
	.align		2
	.section	.text_vle
        .d2line         314,36
#$$ld
.L732:

#$$bf	PduR_CanTpCopyTxData,interprocedural,rasave,nostackparams
	.globl		PduR_CanTpCopyTxData
	.d2_cfa_start __cie
PduR_CanTpCopyTxData:
.Llo16:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# id=r0
	stw		r0,20(r1)		# id=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
#            VAR(PduIdType,AUTOMATIC) id,
#            P2VAR(PduInfoType,AUTOMATIC, PDUR_VAR_PB) info,
#            P2VAR(RetryInfoType,AUTOMATIC, PDUR_VAR_PB) retry,
#            P2VAR(PduLengthType,AUTOMATIC, PDUR_VAR_PB) availableDataPtr)
# {
# VAR(BufReq_ReturnType,AUTOMATIC) ReturnValue;
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     /* Reduced or UnInit*/
#     if (PduR_Status != PDUR_ONLINE)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         0x7U,
#                         PDUR_E_INVALID_REQUEST);
#         ReturnValue = BUFREQ_E_NOT_OK;
#     }
#     else
# #endif /*PDUR_DEV_ERROR_DETECT*/
#         {
#             ReturnValue = PduR_LoTpCopyTxData(id,
	.d2line		334
	lis		r7,RoutingArraysSizeRef@ha
	lwz		r7,RoutingArraysSizeRef@l(r7)
	lhz		r8,10(r7)
	lis		r7,RoutingArraysRef@ha
	lwz		r7,RoutingArraysRef@l(r7)
	lwz		r9,20(r7)
	rlwinm		r3,r3,0,16,31		# id=r3 id=r3
.Llo17:
	mr		r0,r4		# info=r0 info=r4
	mr		r0,r5		# retry=r0 retry=r5
	mr		r0,r6		# availableDataPtr=r0 availableDataPtr=r6
	diab.li		r7,7
	bl		PduR_LoTpCopyTxData
#                 info,
#                 retry,
#                 availableDataPtr,
#                 0x7U,
#                 RoutingArraysSizeRef[PDUR_CANTP_TX_ARRAY_INDEX], /* KW MISRA.PTR.ARITH */
#                 RoutingArraysRef[PDUR_CANTP_TX_ARRAY_INDEX] /* KW MISRA.PTR.ARITH */
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#                 ,CANTP_LOWER_TP_BASE
# #endif
#             );
#         }
#     return ReturnValue;
	.d2line		346
.Llo18:
	mr		r4,r3		# ReturnValue=r4 ReturnValue=r3
# }
	.d2line		347
	.d2epilogue_begin
	lwz		r0,20(r1)		# id=r0
	mtspr		lr,r0		# id=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo19:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L733:
	.type		PduR_CanTpCopyTxData,@function
	.size		PduR_CanTpCopyTxData,.-PduR_CanTpCopyTxData
# Number of nodes = 28

# Allocations for PduR_CanTpCopyTxData
#	?a4		id
#	?a5		info
#	?a6		retry
#	?a7		availableDataPtr
#	?a8		ReturnValue
# FUNC(BufReq_ReturnType, PDUR_CODE) PduR_CanTpStartOfReception(
	.align		2
	.section	.text_vle
        .d2line         351,36
#$$ld
.L746:

#$$bf	PduR_CanTpStartOfReception,interprocedural,rasave,nostackparams
	.globl		PduR_CanTpStartOfReception
	.d2_cfa_start __cie
PduR_CanTpStartOfReception:
.Llo20:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#        VAR(PduIdType,AUTOMATIC) id,
#        VAR(PduLengthType,AUTOMATIC) TpSduLength,
#        P2VAR(PduLengthType,AUTOMATIC, PDUR_VAR_PB) bufferSizePtr)
# {
# VAR(BufReq_ReturnType,AUTOMATIC) ReturnValue;
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     /* Reduced or UnInit*/
#     if (PduR_Status != PDUR_ONLINE)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         0x6U,
#                         PDUR_E_INVALID_REQUEST);
#         ReturnValue = BUFREQ_E_NOT_OK;
#     }
#     else
# #endif /*PDUR_DEV_ERROR_DETECT*/
#         {
#             ReturnValue = PduR_LoTpStartOfReception(id,
	.d2line		370
	lis		r6,RoutingArraysSizeRef@ha
	lwz		r6,RoutingArraysSizeRef@l(r6)
	lhz		r7,8(r6)
	lis		r6,RoutingArraysRef@ha
	lwz		r6,RoutingArraysRef@l(r6)
	lwz		r8,16(r6)
	rlwinm		r3,r3,0,16,31		# id=r3 id=r3
.Llo21:
	rlwinm		r4,r4,0,16,31		# TpSduLength=r4 TpSduLength=r4
.Llo22:
	mr		r0,r5		# bufferSizePtr=r0 bufferSizePtr=r5
	diab.li		r6,6
	bl		PduR_LoTpStartOfReception
#                 TpSduLength,
#                 bufferSizePtr,
#                 0x6U,
#                 RoutingArraysSizeRef[PDUR_CANTP_RX_ARRAY_INDEX], /* KW MISRA.PTR.ARITH */
#                 RoutingArraysRef[PDUR_CANTP_RX_ARRAY_INDEX]); /* KW MISRA.PTR.ARITH */
#         }
#     return ReturnValue;
	.d2line		377
.Llo23:
	mr		r4,r3		# ReturnValue=r4 ReturnValue=r3
# }
	.d2line		378
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo24:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L747:
	.type		PduR_CanTpStartOfReception,@function
	.size		PduR_CanTpStartOfReception,.-PduR_CanTpStartOfReception
# Number of nodes = 27

# Allocations for PduR_CanTpStartOfReception
#	?a4		id
#	?a5		TpSduLength
#	?a6		bufferSizePtr
#	?a7		ReturnValue
# FUNC(Std_ReturnType,PDUR_CODE) PduR_ComTransmit(VAR(PduIdType,AUTOMATIC) id,
	.align		2
	.section	.text_vle
        .d2line         391,32
#$$ld
.L756:

#$$bf	PduR_ComTransmit,interprocedural,rasave,nostackparams
	.globl		PduR_ComTransmit
	.d2_cfa_start __cie
PduR_ComTransmit:
.Llo25:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#        P2VAR(PduInfoType, AUTOMATIC,PDUR_APPL_DATA)info)
# {
# VAR(Std_ReturnType,AUTOMATIC) ReturnValue;
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     /* Reduced or UnInit*/
#     if (PduR_Status != PDUR_ONLINE)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         0x89U,
#                         PDUR_E_INVALID_REQUEST);
#         ReturnValue = E_NOT_OK;
#     }
#     else
# #endif /*PDUR_DEV_ERROR_DETECT*/
#         {
#             ReturnValue = PduR_UpTransmit(id,
	.d2line		408
	lis		r5,RoutingArraysSizeRef@ha
	lwz		r5,RoutingArraysSizeRef@l(r5)
	lhz		r6,12(r5)
	lis		r5,RoutingArraysRef@ha
	lwz		r5,RoutingArraysRef@l(r5)
	lwz		r7,24(r5)
	rlwinm		r3,r3,0,16,31		# id=r3 id=r3
.Llo26:
	mr		r0,r4		# info=r0 info=r4
	diab.li		r5,137
	bl		PduR_UpTransmit
#                 info,
#                 0x89U,
#                 RoutingArraysSizeRef[PDUR_COM_TX_ARRAY_INDEX], /* KW MISRA.PTR.ARITH */
#                 RoutingArraysRef[PDUR_COM_TX_ARRAY_INDEX]); /* KW MISRA.PTR.ARITH */
#         }
#     return ReturnValue;
	.d2line		414
.Llo27:
	rlwinm		r3,r3,0,24,31		# ReturnValue=r3 ReturnValue=r3
# }
	.d2line		415
	.d2epilogue_begin
.Llo28:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L757:
	.type		PduR_ComTransmit,@function
	.size		PduR_ComTransmit,.-PduR_ComTransmit
# Number of nodes = 24

# Allocations for PduR_ComTransmit
#	?a4		id
#	?a5		info
#	?a6		ReturnValue
# FUNC(Std_ReturnType,PDUR_CODE) PduR_DcmTransmit(VAR(PduIdType,AUTOMATIC) id,
	.align		2
	.section	.text_vle
        .d2line         428,32
#$$ld
.L766:

#$$bf	PduR_DcmTransmit,interprocedural,rasave,nostackparams
	.globl		PduR_DcmTransmit
	.d2_cfa_start __cie
PduR_DcmTransmit:
.Llo29:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#        P2VAR(PduInfoType, AUTOMATIC,PDUR_APPL_DATA)info)
# {
# VAR(Std_ReturnType,AUTOMATIC) ReturnValue;
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     /* Reduced or UnInit*/
#     if (PduR_Status != PDUR_ONLINE)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         0x99U,
#                         PDUR_E_INVALID_REQUEST);
#         ReturnValue = E_NOT_OK;
#     }
#     else
# #endif /*PDUR_DEV_ERROR_DETECT*/
#         {
#             ReturnValue = PduR_UpTransmit(id,
	.d2line		445
	lis		r5,RoutingArraysSizeRef@ha
	lwz		r5,RoutingArraysSizeRef@l(r5)
	lhz		r6,14(r5)
	lis		r5,RoutingArraysRef@ha
	lwz		r5,RoutingArraysRef@l(r5)
	lwz		r7,28(r5)
	rlwinm		r3,r3,0,16,31		# id=r3 id=r3
.Llo30:
	mr		r0,r4		# info=r0 info=r4
	diab.li		r5,153
	bl		PduR_UpTransmit
#                 info,
#                 0x99U,
#                 RoutingArraysSizeRef[PDUR_DCM_TX_ARRAY_INDEX], /* KW MISRA.PTR.ARITH */
#                 RoutingArraysRef[PDUR_DCM_TX_ARRAY_INDEX]); /* KW MISRA.PTR.ARITH */
#         }
#     return ReturnValue;
	.d2line		451
.Llo31:
	rlwinm		r3,r3,0,24,31		# ReturnValue=r3 ReturnValue=r3
# }
	.d2line		452
	.d2epilogue_begin
.Llo32:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L767:
	.type		PduR_DcmTransmit,@function
	.size		PduR_DcmTransmit,.-PduR_DcmTransmit
# Number of nodes = 24

# Allocations for PduR_DcmTransmit
#	?a4		id
#	?a5		info
#	?a6		ReturnValue
# FUNC(Std_ReturnType,PDUR_CODE) PduR_DcmCancelTransmit(VAR(PduIdType,AUTOMATIC) id)
	.align		2
	.section	.text_vle
        .d2line         456,32
#$$ld
.L775:

#$$bf	PduR_DcmCancelTransmit,interprocedural,rasave,nostackparams
	.globl		PduR_DcmCancelTransmit
	.d2_cfa_start __cie
PduR_DcmCancelTransmit:
.Llo33:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# VAR(Std_ReturnType,AUTOMATIC) ReturnValue;
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     /* Reduced or UnInit*/
#     if (PduR_Status != PDUR_ONLINE)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         0x9aU,
#                         PDUR_E_INVALID_REQUEST);
#         ReturnValue = E_NOT_OK;
#     }
#     else
# #endif /*PDUR_DEV_ERROR_DETECT*/
#         {
#             ReturnValue = PduR_UpCancelTransmit(id,
	.d2line		472
	lis		r4,RoutingArraysSizeRef@ha
	lwz		r4,RoutingArraysSizeRef@l(r4)
	lhz		r5,14(r4)
	lis		r4,RoutingArraysRef@ha
	lwz		r4,RoutingArraysRef@l(r4)
	lwz		r6,28(r4)
	rlwinm		r3,r3,0,16,31		# id=r3 id=r3
.Llo34:
	diab.li		r4,154
	bl		PduR_UpCancelTransmit
#                 0x9aU,
#                 RoutingArraysSizeRef[PDUR_DCM_TX_ARRAY_INDEX], /* KW MISRA.PTR.ARITH */
#                 RoutingArraysRef[PDUR_DCM_TX_ARRAY_INDEX]); /* KW MISRA.PTR.ARITH */
#         }
#     return ReturnValue;
	.d2line		477
.Llo35:
	rlwinm		r3,r3,0,24,31		# ReturnValue=r3 ReturnValue=r3
# }
	.d2line		478
	.d2epilogue_begin
.Llo36:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L776:
	.type		PduR_DcmCancelTransmit,@function
	.size		PduR_DcmCancelTransmit,.-PduR_DcmCancelTransmit
# Number of nodes = 22

# Allocations for PduR_DcmCancelTransmit
#	?a4		id
#	?a5		ReturnValue
# FUNC(Std_ReturnType,PDUR_CODE) PduR_DcmCancelReceive(VAR(PduIdType,AUTOMATIC) id)
	.align		2
	.section	.text_vle
        .d2line         482,32
#$$ld
.L783:

#$$bf	PduR_DcmCancelReceive,interprocedural,rasave,nostackparams
	.globl		PduR_DcmCancelReceive
	.d2_cfa_start __cie
PduR_DcmCancelReceive:
.Llo37:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# VAR(Std_ReturnType,AUTOMATIC) ReturnValue;
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     /* Reduced or UnInit*/
#     if (PduR_Status != PDUR_ONLINE)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         0x9cU,
#                         PDUR_E_INVALID_REQUEST);
#         ReturnValue = E_NOT_OK;
#     }
#     else
# #endif /*PDUR_DEV_ERROR_DETECT*/
#         {
#             ReturnValue = PduR_UpCancelReceive(id,
	.d2line		498
	lis		r4,RoutingArraysSizeRef@ha
	lwz		r4,RoutingArraysSizeRef@l(r4)
	lhz		r5,16(r4)
	lis		r4,RoutingArraysRef@ha
	lwz		r4,RoutingArraysRef@l(r4)
	lwz		r6,32(r4)
	rlwinm		r3,r3,0,16,31		# id=r3 id=r3
.Llo38:
	diab.li		r4,156
	bl		PduR_UpCancelReceive
#                 0x9cU,
#                 RoutingArraysSizeRef[PDUR_DCM_RX_UP_ARRAY_INDEX], /* KW MISRA.PTR.ARITH */
#                 RoutingArraysRef[PDUR_DCM_RX_UP_ARRAY_INDEX] /* KW MISRA.PTR.ARITH */
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#                 ,DCM_UPPER_TP_TX_BASE
# #endif /* PDUR_ENABLE_ROUTING_GROUPS */
#                 );
#         }
#     return ReturnValue;
	.d2line		507
.Llo39:
	rlwinm		r3,r3,0,24,31		# ReturnValue=r3 ReturnValue=r3
# }
	.d2line		508
	.d2epilogue_begin
.Llo40:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L784:
	.type		PduR_DcmCancelReceive,@function
	.size		PduR_DcmCancelReceive,.-PduR_DcmCancelReceive
# Number of nodes = 22

# Allocations for PduR_DcmCancelReceive
#	?a4		id
#	?a5		ReturnValue
# FUNC(void, PDUR_CODE)  PduR_LinIfRxIndication(
	.align		2
	.section	.text_vle
        .d2line         521,24
#$$ld
.L791:

#$$bf	PduR_LinIfRxIndication,interprocedural,rasave,nostackparams
	.globl		PduR_LinIfRxIndication
	.d2_cfa_start __cie
PduR_LinIfRxIndication:
.Llo41:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                      VAR(PduIdType,AUTOMATIC) RxPduId,
#                      P2VAR(PduInfoType, AUTOMATIC,PDUR_APPL_DATA) PduInfoPtr)
# {
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     /* Reduced or UnInit*/
#     if (PduR_Status != PDUR_ONLINE)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         0x51U,
#                         PDUR_E_INVALID_REQUEST);
#     }
#     else
# #endif /*PDUR_DEV_ERROR_DETECT*/
#         {
#             PduR_LoIfRxIndication(RxPduId,
	.d2line		537
	lis		r5,RoutingArraysSizeRef@ha
	lwz		r5,RoutingArraysSizeRef@l(r5)
	lhz		r6,4(r5)
	lis		r5,RoutingArraysRef@ha
	lwz		r5,RoutingArraysRef@l(r5)
	lwz		r7,8(r5)
	rlwinm		r3,r3,0,16,31		# RxPduId=r3 RxPduId=r3
.Llo42:
	mr		r0,r4		# PduInfoPtr=r0 PduInfoPtr=r4
	diab.li		r5,81
	bl		PduR_LoIfRxIndication
#                 PduInfoPtr,
#                 0x51U,
#                 RoutingArraysSizeRef[PDUR_LINIF_RX_ARRAY_INDEX], /* KW MISRA.PTR.ARITH */
#                 RoutingArraysRef[PDUR_LINIF_RX_ARRAY_INDEX]); /* KW MISRA.PTR.ARITH */
#         }
# }
	.d2line		543
	.d2epilogue_begin
.Llo43:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L792:
	.type		PduR_LinIfRxIndication,@function
	.size		PduR_LinIfRxIndication,.-PduR_LinIfRxIndication
# Number of nodes = 20

# Allocations for PduR_LinIfRxIndication
#	?a4		RxPduId
#	?a5		PduInfoPtr
# FUNC(void, PDUR_CODE) PduR_LinIfTxConfirmation(VAR(PduIdType,AUTOMATIC) TxPduId)
	.align		2
	.section	.text_vle
        .d2line         547,23
#$$ld
.L798:

#$$bf	PduR_LinIfTxConfirmation,interprocedural,rasave,nostackparams
	.globl		PduR_LinIfTxConfirmation
	.d2_cfa_start __cie
PduR_LinIfTxConfirmation:
.Llo44:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     /* Reduced or UnInit*/
#     if (PduR_Status != PDUR_ONLINE)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         0x52U,
#                         PDUR_E_INVALID_REQUEST);
#     }
#     else
# #endif /*PDUR_DEV_ERROR_DETECT*/
#         {
#             PduR_LoIfTriggeredTxConfirmation(
	.d2line		561
	lis		r4,RoutingArraysSizeRef@ha
	lwz		r4,RoutingArraysSizeRef@l(r4)
	lhz		r5,6(r4)
	lis		r4,RoutingArraysRef@ha
	lwz		r4,RoutingArraysRef@l(r4)
	lwz		r6,12(r4)
	rlwinm		r3,r3,0,16,31		# TxPduId=r3 TxPduId=r3
.Llo45:
	diab.li		r4,82
	bl		PduR_LoIfTriggeredTxConfirmation
#                 TxPduId,
#                 0x52U,
#                 RoutingArraysSizeRef[PDUR_LINIF_TX_ARRAY_INDEX], /* KW MISRA.PTR.ARITH */
#                 RoutingArraysRef[PDUR_LINIF_TX_ARRAY_INDEX] /* KW MISRA.PTR.ARITH */
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#                 ,LINIF_LOWER_IF_BASE
# #endif
#              );
#         }
# }
	.d2line		571
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
.L799:
	.type		PduR_LinIfTxConfirmation,@function
	.size		PduR_LinIfTxConfirmation,.-PduR_LinIfTxConfirmation
# Number of nodes = 18

# Allocations for PduR_LinIfTxConfirmation
#	?a4		TxPduId
# FUNC(Std_ReturnType, PDUR_CODE) PduR_LinIfTriggerTransmit(
	.align		2
	.section	.text_vle
        .d2line         575,33
#$$ld
.L804:

#$$bf	PduR_LinIfTriggerTransmit,interprocedural,rasave,nostackparams
	.globl		PduR_LinIfTriggerTransmit
	.d2_cfa_start __cie
PduR_LinIfTriggerTransmit:
.Llo46:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#     VAR(PduIdType,AUTOMATIC) TxPduId,
#     P2VAR(PduInfoType, AUTOMATIC,PDUR_APPL_DATA) PduInfoPtr
# )
# {
# VAR(Std_ReturnType,AUTOMATIC) ReturnValue;
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     /* Reduced or UnInit*/
#     if (PduR_Status != PDUR_ONLINE)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         0x53U,
#                         PDUR_E_INVALID_REQUEST);
#         ReturnValue = E_NOT_OK;
#     }
#     else
# #endif /*PDUR_DEV_ERROR_DETECT*/
#         {
#             ReturnValue = PduR_LoIfTriggerTransmit(TxPduId,
	.d2line		594
	lis		r5,RoutingArraysSizeRef@ha
	lwz		r5,RoutingArraysSizeRef@l(r5)
	lhz		r6,6(r5)
	lis		r5,RoutingArraysRef@ha
	lwz		r5,RoutingArraysRef@l(r5)
	lwz		r7,12(r5)
	rlwinm		r3,r3,0,16,31		# TxPduId=r3 TxPduId=r3
.Llo47:
	mr		r0,r4		# PduInfoPtr=r0 PduInfoPtr=r4
	diab.li		r5,83
	bl		PduR_LoIfTriggerTransmit
#                 PduInfoPtr,
#                 0x53U,
#                 RoutingArraysSizeRef[PDUR_LINIF_TX_ARRAY_INDEX], /* KW MISRA.PTR.ARITH */
#                 RoutingArraysRef[PDUR_LINIF_TX_ARRAY_INDEX] /* KW MISRA.PTR.ARITH */
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#                 ,LINIF_LOWER_IF_BASE
# #endif /* PDUR_ENABLE_ROUTING_GROUPS */
#             );
#         }
#     return ReturnValue;
	.d2line		604
.Llo48:
	rlwinm		r3,r3,0,24,31		# ReturnValue=r3 ReturnValue=r3
# }
	.d2line		605
	.d2epilogue_begin
.Llo49:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L805:
	.type		PduR_LinIfTriggerTransmit,@function
	.size		PduR_LinIfTriggerTransmit,.-PduR_LinIfTriggerTransmit
# Number of nodes = 24

# Allocations for PduR_LinIfTriggerTransmit
#	?a4		TxPduId
#	?a5		PduInfoPtr
#	?a6		ReturnValue

# Allocations for module
	.section	.text_vle
	.0byte		.L821
	.section	.text_vle
	.type		PduR_TargetFunctions,@object
	.size		PduR_TargetFunctions,156
	.align		2
PduR_TargetFunctions:
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		CanIf_Transmit
	.long		0
	.long		CanTp_Transmit
	.long		CanTp_CancelTransmit
	.long		CanTp_CancelReceive
	.long		0
	.long		Com_TriggerTransmit
	.long		Com_TxConfirmation
	.long		Com_RxIndication
	.long		Dcm_StartOfReception
	.long		Dcm_CopyRxData
	.long		Dcm_TpRxIndication
	.long		Dcm_CopyTxData
	.long		Dcm_TpTxConfirmation
	.long		LinIf_Transmit
	.long		0
	.section	.text_vle
	.type		PduR_TargetFunctionsRef,@object
	.size		PduR_TargetFunctionsRef,4
	.align		2
	.globl		PduR_TargetFunctionsRef
PduR_TargetFunctionsRef:
	.long		PduR_TargetFunctions
	.section	.text_vle
#$$ld
.L5:
.L836:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L832:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\ComStack_Types.h"
.L812:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_i.h"
.L683:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\PduR_Cfg.c"
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	15
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
	.uleb128	11
	.uleb128	11
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\PduR_Cfg.c"
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
.L684:
	.sleb128	2
	.4byte		.L680-.L2
	.byte		"PduR_CanIfRxIndication"
	.byte		0
	.4byte		.L683
	.uleb128	164
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L681
	.4byte		.L682
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L683
	.uleb128	164
	.uleb128	24
	.byte		"RxPduId"
	.byte		0
	.4byte		.L685
	.4byte		.L688
	.sleb128	3
	.4byte		.L683
	.uleb128	164
	.uleb128	24
	.byte		"PduInfoPtr"
	.byte		0
	.4byte		.L689
	.4byte		.L692
	.section	.debug_info,,n
	.sleb128	0
.L680:
	.section	.debug_info,,n
.L697:
	.sleb128	2
	.4byte		.L694-.L2
	.byte		"PduR_CanIfTxConfirmation"
	.byte		0
	.4byte		.L683
	.uleb128	190
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L695
	.4byte		.L696
	.sleb128	3
	.4byte		.L683
	.uleb128	190
	.uleb128	23
	.byte		"TxPduId"
	.byte		0
	.4byte		.L685
	.4byte		.L698
	.section	.debug_info,,n
	.sleb128	0
.L694:
	.section	.debug_info,,n
.L703:
	.sleb128	2
	.4byte		.L700-.L2
	.byte		"PduR_CanTpRxIndication"
	.byte		0
	.4byte		.L683
	.uleb128	228
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L701
	.4byte		.L702
	.sleb128	3
	.4byte		.L683
	.uleb128	228
	.uleb128	24
	.byte		"id"
	.byte		0
	.4byte		.L685
	.4byte		.L704
	.sleb128	3
	.4byte		.L683
	.uleb128	228
	.uleb128	24
	.byte		"result"
	.byte		0
	.4byte		.L705
	.4byte		.L708
	.section	.debug_info,,n
	.sleb128	0
.L700:
	.section	.debug_info,,n
.L713:
	.sleb128	2
	.4byte		.L710-.L2
	.byte		"PduR_CanTpTxConfirmation"
	.byte		0
	.4byte		.L683
	.uleb128	254
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L711
	.4byte		.L712
	.sleb128	3
	.4byte		.L683
	.uleb128	254
	.uleb128	23
	.byte		"id"
	.byte		0
	.4byte		.L685
	.4byte		.L714
	.sleb128	3
	.4byte		.L683
	.uleb128	254
	.uleb128	23
	.byte		"result"
	.byte		0
	.4byte		.L705
	.4byte		.L715
	.section	.debug_info,,n
	.sleb128	0
.L710:
	.section	.debug_info,,n
.L722:
	.sleb128	4
	.4byte		.L717-.L2
	.byte		"PduR_CanTpCopyRxData"
	.byte		0
	.4byte		.L683
	.uleb128	283
	.uleb128	36
	.4byte		.L720
	.byte		0x1
	.byte		0x1
	.4byte		.L718
	.4byte		.L719
	.sleb128	3
	.4byte		.L683
	.uleb128	283
	.uleb128	36
	.byte		"id"
	.byte		0
	.4byte		.L685
	.4byte		.L723
	.sleb128	3
	.4byte		.L683
	.uleb128	283
	.uleb128	36
	.byte		"info"
	.byte		0
	.4byte		.L689
	.4byte		.L724
	.sleb128	3
	.4byte		.L683
	.uleb128	283
	.uleb128	36
	.byte		"bufferSizePtr"
	.byte		0
	.4byte		.L725
	.4byte		.L727
	.section	.debug_info,,n
.L728:
	.sleb128	5
	.4byte		.L683
	.uleb128	288
	.uleb128	34
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L720
	.4byte		.L729
	.section	.debug_info,,n
	.sleb128	0
.L717:
	.section	.debug_info,,n
.L734:
	.sleb128	4
	.4byte		.L731-.L2
	.byte		"PduR_CanTpCopyTxData"
	.byte		0
	.4byte		.L683
	.uleb128	314
	.uleb128	36
	.4byte		.L720
	.byte		0x1
	.byte		0x1
	.4byte		.L732
	.4byte		.L733
	.sleb128	3
	.4byte		.L683
	.uleb128	314
	.uleb128	36
	.byte		"id"
	.byte		0
	.4byte		.L685
	.4byte		.L735
	.sleb128	3
	.4byte		.L683
	.uleb128	314
	.uleb128	36
	.byte		"info"
	.byte		0
	.4byte		.L689
	.4byte		.L736
	.sleb128	3
	.4byte		.L683
	.uleb128	314
	.uleb128	36
	.byte		"retry"
	.byte		0
	.4byte		.L737
	.4byte		.L740
	.sleb128	3
	.4byte		.L683
	.uleb128	314
	.uleb128	36
	.byte		"availableDataPtr"
	.byte		0
	.4byte		.L725
	.4byte		.L741
.L742:
	.sleb128	5
	.4byte		.L683
	.uleb128	320
	.uleb128	34
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L720
	.4byte		.L743
	.section	.debug_info,,n
	.sleb128	0
.L731:
	.section	.debug_info,,n
.L748:
	.sleb128	4
	.4byte		.L745-.L2
	.byte		"PduR_CanTpStartOfReception"
	.byte		0
	.4byte		.L683
	.uleb128	351
	.uleb128	36
	.4byte		.L720
	.byte		0x1
	.byte		0x1
	.4byte		.L746
	.4byte		.L747
	.sleb128	3
	.4byte		.L683
	.uleb128	351
	.uleb128	36
	.byte		"id"
	.byte		0
	.4byte		.L685
	.4byte		.L749
	.sleb128	3
	.4byte		.L683
	.uleb128	351
	.uleb128	36
	.byte		"TpSduLength"
	.byte		0
	.4byte		.L726
	.4byte		.L750
	.sleb128	3
	.4byte		.L683
	.uleb128	351
	.uleb128	36
	.byte		"bufferSizePtr"
	.byte		0
	.4byte		.L725
	.4byte		.L751
.L752:
	.sleb128	5
	.4byte		.L683
	.uleb128	356
	.uleb128	34
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L720
	.4byte		.L753
	.section	.debug_info,,n
	.sleb128	0
.L745:
	.section	.debug_info,,n
.L759:
	.sleb128	4
	.4byte		.L755-.L2
	.byte		"PduR_ComTransmit"
	.byte		0
	.4byte		.L683
	.uleb128	391
	.uleb128	32
	.4byte		.L758
	.byte		0x1
	.byte		0x1
	.4byte		.L756
	.4byte		.L757
	.sleb128	3
	.4byte		.L683
	.uleb128	391
	.uleb128	32
	.byte		"id"
	.byte		0
	.4byte		.L685
	.4byte		.L760
	.sleb128	3
	.4byte		.L683
	.uleb128	391
	.uleb128	32
	.byte		"info"
	.byte		0
	.4byte		.L689
	.4byte		.L761
.L762:
	.sleb128	5
	.4byte		.L683
	.uleb128	394
	.uleb128	31
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L758
	.4byte		.L763
	.section	.debug_info,,n
	.sleb128	0
.L755:
	.section	.debug_info,,n
.L768:
	.sleb128	4
	.4byte		.L765-.L2
	.byte		"PduR_DcmTransmit"
	.byte		0
	.4byte		.L683
	.uleb128	428
	.uleb128	32
	.4byte		.L758
	.byte		0x1
	.byte		0x1
	.4byte		.L766
	.4byte		.L767
	.sleb128	3
	.4byte		.L683
	.uleb128	428
	.uleb128	32
	.byte		"id"
	.byte		0
	.4byte		.L685
	.4byte		.L769
	.sleb128	3
	.4byte		.L683
	.uleb128	428
	.uleb128	32
	.byte		"info"
	.byte		0
	.4byte		.L689
	.4byte		.L770
.L771:
	.sleb128	5
	.4byte		.L683
	.uleb128	431
	.uleb128	31
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L758
	.4byte		.L772
	.section	.debug_info,,n
	.sleb128	0
.L765:
	.section	.debug_info,,n
.L777:
	.sleb128	4
	.4byte		.L774-.L2
	.byte		"PduR_DcmCancelTransmit"
	.byte		0
	.4byte		.L683
	.uleb128	456
	.uleb128	32
	.4byte		.L758
	.byte		0x1
	.byte		0x1
	.4byte		.L775
	.4byte		.L776
	.sleb128	3
	.4byte		.L683
	.uleb128	456
	.uleb128	32
	.byte		"id"
	.byte		0
	.4byte		.L685
	.4byte		.L778
.L779:
	.sleb128	5
	.4byte		.L683
	.uleb128	458
	.uleb128	31
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L758
	.4byte		.L780
	.section	.debug_info,,n
	.sleb128	0
.L774:
	.section	.debug_info,,n
.L785:
	.sleb128	4
	.4byte		.L782-.L2
	.byte		"PduR_DcmCancelReceive"
	.byte		0
	.4byte		.L683
	.uleb128	482
	.uleb128	32
	.4byte		.L758
	.byte		0x1
	.byte		0x1
	.4byte		.L783
	.4byte		.L784
	.sleb128	3
	.4byte		.L683
	.uleb128	482
	.uleb128	32
	.byte		"id"
	.byte		0
	.4byte		.L685
	.4byte		.L786
.L787:
	.sleb128	5
	.4byte		.L683
	.uleb128	484
	.uleb128	31
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L758
	.4byte		.L788
	.section	.debug_info,,n
	.sleb128	0
.L782:
	.section	.debug_info,,n
.L793:
	.sleb128	2
	.4byte		.L790-.L2
	.byte		"PduR_LinIfRxIndication"
	.byte		0
	.4byte		.L683
	.uleb128	521
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L791
	.4byte		.L792
	.sleb128	3
	.4byte		.L683
	.uleb128	521
	.uleb128	24
	.byte		"RxPduId"
	.byte		0
	.4byte		.L685
	.4byte		.L794
	.sleb128	3
	.4byte		.L683
	.uleb128	521
	.uleb128	24
	.byte		"PduInfoPtr"
	.byte		0
	.4byte		.L689
	.4byte		.L795
	.section	.debug_info,,n
	.sleb128	0
.L790:
	.section	.debug_info,,n
.L800:
	.sleb128	2
	.4byte		.L797-.L2
	.byte		"PduR_LinIfTxConfirmation"
	.byte		0
	.4byte		.L683
	.uleb128	547
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L798
	.4byte		.L799
	.sleb128	3
	.4byte		.L683
	.uleb128	547
	.uleb128	23
	.byte		"TxPduId"
	.byte		0
	.4byte		.L685
	.4byte		.L801
	.section	.debug_info,,n
	.sleb128	0
.L797:
	.section	.debug_info,,n
.L806:
	.sleb128	4
	.4byte		.L803-.L2
	.byte		"PduR_LinIfTriggerTransmit"
	.byte		0
	.4byte		.L683
	.uleb128	575
	.uleb128	33
	.4byte		.L758
	.byte		0x1
	.byte		0x1
	.4byte		.L804
	.4byte		.L805
	.sleb128	3
	.4byte		.L683
	.uleb128	575
	.uleb128	33
	.byte		"TxPduId"
	.byte		0
	.4byte		.L685
	.4byte		.L807
	.sleb128	3
	.4byte		.L683
	.uleb128	575
	.uleb128	33
	.byte		"PduInfoPtr"
	.byte		0
	.4byte		.L689
	.4byte		.L808
.L809:
	.sleb128	5
	.4byte		.L683
	.uleb128	580
	.uleb128	31
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L758
	.4byte		.L810
	.section	.debug_info,,n
	.sleb128	0
.L803:
	.section	.debug_info,,n
.L811:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L812
	.uleb128	518
	.uleb128	83
	.byte		"RoutingArraysRef"
	.byte		0
	.4byte		.L813
	.0byte		.L811
.L818:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L812
	.uleb128	519
	.uleb128	49
	.byte		"RoutingArraysSizeRef"
	.byte		0
	.4byte		.L819
	.section	.debug_info,,n
.L821:
	.sleb128	7
	.4byte		.L683
	.uleb128	95
	.uleb128	42
	.byte		"PduR_TargetFunctions"
	.byte		0
	.4byte		.L822
	.sleb128	5
	.byte		0x3
	.4byte		PduR_TargetFunctions
	.section	.debug_info,,n
	.section	.debug_info,,n
.L829:
	.sleb128	8
	.byte		0x1
	.4byte		.L683
	.uleb128	139
	.uleb128	52
	.byte		"PduR_TargetFunctionsRef"
	.byte		0
	.4byte		.L830
	.sleb128	5
	.byte		0x3
	.4byte		PduR_TargetFunctionsRef
	.section	.debug_info,,n
.L739:
	.sleb128	9
	.4byte		.L832
	.uleb128	65
	.uleb128	14
	.4byte		.L833-.L2
	.byte		"VSTAR_RetryInfoType"
	.byte		0
	.uleb128	8
	.section	.debug_info,,n
.L166:
	.sleb128	10
	.byte		"TpDataState"
	.byte		0
	.4byte		.L834
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L167:
	.sleb128	10
	.byte		"TxTpDataCnt"
	.byte		0
	.4byte		.L726
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L833:
.L691:
	.sleb128	9
	.4byte		.L836
	.uleb128	69
	.uleb128	1
	.4byte		.L837-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L164:
	.sleb128	10
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L838
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L165:
	.sleb128	10
	.byte		"SduLength"
	.byte		0
	.4byte		.L726
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L837:
	.section	.debug_info,,n
.L835:
	.sleb128	11
	.4byte		.L832
	.uleb128	65
	.uleb128	14
	.4byte		.L839-.L2
	.byte		"VSTAR_TpDataStateType"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"TP_DATACONF"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"TP_DATARETRY"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"TP_CONFPENDING"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"TP_NORETRY"
	.byte		0
	.sleb128	3
	.sleb128	0
.L839:
.L721:
	.sleb128	11
	.4byte		.L832
	.uleb128	50
	.uleb128	14
	.4byte		.L840-.L2
	.byte		"VSTAR_BufReq_ReturnType"
	.byte		0
	.uleb128	4
	.sleb128	12
	.byte		"BUFREQ_OK"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"BUFREQ_E_NOT_OK"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"BUFREQ_E_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"BUFREQ_E_OVFL"
	.byte		0
	.sleb128	3
	.sleb128	0
.L840:
	.section	.debug_info,,n
.L687:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L686:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L687
.L685:
	.sleb128	14
	.byte		"PduIdType"
	.byte		0
	.4byte		.L686
.L690:
	.sleb128	14
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L691
	.section	.debug_info,,n
.L689:
	.sleb128	15
	.4byte		.L690
.L707:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L706:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L707
.L705:
	.sleb128	14
	.byte		"NotifResultType"
	.byte		0
	.4byte		.L706
.L720:
	.sleb128	14
	.byte		"BufReq_ReturnType"
	.byte		0
	.4byte		.L721
.L726:
	.sleb128	14
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L686
.L725:
	.sleb128	15
	.4byte		.L726
.L738:
	.sleb128	14
	.byte		"RetryInfoType"
	.byte		0
	.4byte		.L739
.L737:
	.sleb128	15
	.4byte		.L738
.L758:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L706
	.section	.debug_info,,n
.L817:
	.sleb128	16
	.byte		"void"
	.byte		0
	.byte		0x0
	.section	.debug_info,,n
.L816:
	.sleb128	17
	.4byte		.L817
.L815:
	.sleb128	15
	.4byte		.L816
.L814:
	.sleb128	17
	.4byte		.L815
.L813:
	.sleb128	15
	.4byte		.L814
.L820:
	.sleb128	17
	.4byte		.L686
.L819:
	.sleb128	15
	.4byte		.L820
	.section	.debug_info,,n
.L827:
	.sleb128	18
	.4byte		.L828-.L2
	.byte		0x1
	.sleb128	0
.L828:
.L826:
	.sleb128	15
	.4byte		.L827
.L825:
	.sleb128	14
	.byte		"TargetFunction"
	.byte		0
	.4byte		.L826
.L824:
	.sleb128	17
	.4byte		.L825
	.section	.debug_info,,n
.L822:
	.sleb128	19
	.4byte		.L823-.L2
	.4byte		.L824
	.section	.debug_info,,n
	.sleb128	20
	.uleb128	38
	.sleb128	0
.L823:
.L831:
	.sleb128	15
	.4byte		.L824
.L830:
	.sleb128	17
	.4byte		.L831
.L834:
	.sleb128	14
	.byte		"TpDataStateType"
	.byte		0
	.4byte		.L835
.L838:
	.sleb128	15
	.4byte		.L706
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L688:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L692:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locend
.L698:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),3
	.d2locend
.L704:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),3
	.d2locend
.L708:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo8),4
	.d2locend
.L714:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locend
.L715:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo11),4
	.d2locend
.L723:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locend
.L724:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo14),4
	.d2locend
.L727:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo14),5
	.d2locend
.L729:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locend
.L735:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locend
.L736:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo18),4
	.d2locend
.L740:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo18),5
	.d2locend
.L741:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo18),6
	.d2locend
.L743:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locend
.L749:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locend
.L750:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo22),4
	.d2locend
.L751:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo23),5
	.d2locend
.L753:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locend
.L760:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locend
.L761:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo27),4
	.d2locend
.L763:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locend
.L769:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locend
.L770:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo31),4
	.d2locend
.L772:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locend
.L778:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),3
	.d2locend
.L780:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),3
	.d2locend
.L786:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locend
.L788:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),3
	.d2locend
.L794:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),3
	.d2locend
.L795:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo43),4
	.d2locend
.L801:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),3
	.d2locend
.L807:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locend
.L808:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo48),4
	.d2locend
.L810:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "PduR_LinIfTriggerTransmit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "PduR_LoIfTriggerTransmit"
	.wrcm.end
	.wrcm.nelem "PduR_LinIfTxConfirmation"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "PduR_LoIfTriggeredTxConfirmation"
	.wrcm.end
	.wrcm.nelem "PduR_LinIfRxIndication"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "PduR_LoIfRxIndication"
	.wrcm.end
	.wrcm.nelem "PduR_DcmCancelReceive"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "PduR_UpCancelReceive"
	.wrcm.end
	.wrcm.nelem "PduR_DcmCancelTransmit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "PduR_UpCancelTransmit"
	.wrcm.end
	.wrcm.nelem "PduR_DcmTransmit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "PduR_UpTransmit"
	.wrcm.end
	.wrcm.nelem "PduR_ComTransmit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "PduR_UpTransmit"
	.wrcm.end
	.wrcm.nelem "PduR_CanTpStartOfReception"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "PduR_LoTpStartOfReception"
	.wrcm.end
	.wrcm.nelem "PduR_CanTpCopyTxData"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "PduR_LoTpCopyTxData"
	.wrcm.end
	.wrcm.nelem "PduR_CanTpCopyRxData"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "PduR_LoTpCopyRxData"
	.wrcm.end
	.wrcm.nelem "PduR_CanTpTxConfirmation"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "PduR_LoTpTxConfirmation"
	.wrcm.end
	.wrcm.nelem "PduR_CanTpRxIndication"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "PduR_LoTpRxIndication"
	.wrcm.end
	.wrcm.nelem "PduR_CanIfTxConfirmation"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "PduR_LoIfDirectTxConfirmation"
	.wrcm.end
	.wrcm.nelem "PduR_CanIfRxIndication"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "PduR_LoIfRxIndication"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\PduR_Cfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\PduR_Cfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\PduR_Cfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\PduR_Cfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\PduR_Cfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\PduR_Cfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\PduR_Cfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
