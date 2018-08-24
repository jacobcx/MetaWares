#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"PduR_LoTpNonGw.c"
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
# FUNC(void, PDUR_CODE)PduR_LoTpRxIndication(CONST(PduIdType,AUTOMATIC) id,
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\src\\PduR_LoTpNonGw.c"
        .d2line         65,22
#$$ld
.L79:

#$$bf	PduR_LoTpRxIndication,interprocedural,rasave,nostackparams
	.globl		PduR_LoTpRxIndication
	.d2_cfa_start __cie
PduR_LoTpRxIndication:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# id=r3 id=r3
	mr		r4,r4		# Result=r4 Result=r4
	mr		r5,r5		# ApiId=r5 ApiId=r5
	mr		r7,r7		# IfRxRoutingArray=r7 IfRxRoutingArray=r7
	.d2prologue_end
#                                            CONST(NotifResultType,AUTOMATIC) Result,
#                                            CONST(uint8,AUTOMATIC) ApiId,
#                                            CONST(uint16,AUTOMATIC) MaxId,
#                                            CONST(PduR_MainRtA,AUTOMATIC) IfRxRoutingArray[])
# {
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#     VAR(boolean,AUTOMATIC) GoOn = TRUE;
# #endif
# 
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     if((id >= MaxId)||
#        (IfRxRoutingArray[id].TargetFunction_Index ==NULL_INDEX)||
#         ((PduR_TargetFunctionsRef[IfRxRoutingArray[id].TargetFunction_Index + PDUR_UPTP_RXINDICATION_OFFSET]) ==
#          NULL_FUNCT_PTR_PDUR ) )
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         ApiId,
#                         PDUR_E_PDU_ID_INVALID);
#     }
#     else
# #endif /* PDUR_DEV_ERROR_DETECT = ON */
#     {
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#         if(PduR_Status != PDUR_REDUCED)
#         {
#             GoOn = PduR_IsRoutingPathEnabled(IfRxRoutingArray[id].TargetFunction_Index, IfRxRoutingArray[id].TargetId);
#         }
#         if(TRUE==GoOn)
# #endif  /* PDUR_ENABLE_ROUTING_GROUPS = ON */
#         {
#             if(IfRxRoutingArray[id].TargetFunction_Index>PDUR_MAX_APIS_OFFSET)
	.d2line		97
	rlwinm		r6,r3,2,14,29		# id=r3
	se_add		r6,r7		# IfRxRoutingArray=r7
	lbz		r0,2(r6)
	se_cmpi		r0,22
	bc		0,1,.L44	# le
#             {
#             /* MISRA RULE 11.1 VIOLATION:
#              This violation is for better execution time*/
#             /* PRQA S 0313 L1 */
#             ((TpRxIndicationFunction)PduR_TargetFunctionsRef
	.d2line		102
.Llo5:
	lis		r5,PduR_TargetFunctionsRef@ha
	lwz		r0,PduR_TargetFunctionsRef@l(r5)
	rlwinm		r6,r3,2,14,29		# id=r3
	add		r3,r6,r7		# id=r3 IfRxRoutingArray=r7
	lbz		r3,2(r3)		# id=r3 id=r3
	rlwinm		r3,r3,2,22,29		# id=r3 id=r3
	se_add		r3,r0		# id=r3 id=r3
	lwz		r0,8(r3)		# id=r3
	mtspr		ctr,r0
	lhzx		r3,r6,r7		# id=r3 IfRxRoutingArray=r7
.Llo2:
	rlwinm		r4,r4,0,24,31		# Result=r4 Result=r4
.Llo6:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.Llo9:
	b		.L43
.L44:
#              [IfRxRoutingArray[id].TargetFunction_Index
#               + PDUR_UPTP_RXINDICATION_OFFSET])
#              (IfRxRoutingArray[id].TargetId,Result);
#             /* PRQA L:L1 */
#             }
#             else
#             {
#             /*here we will ALL the Tp function we will send The ApiId to be used in Det ERROR*/
#             /* MISRA RULE 11.1 VIOLATION:
#              This violation is for better execution time*/
#             /* PRQA S 0313 L1 */
#             ((TpRxIndicationFunctionWithDet)PduR_TargetFunctionsRef
	.d2line		114
.Llo3:
	lis		r6,PduR_TargetFunctionsRef@ha
	lwz		r0,PduR_TargetFunctionsRef@l(r6)
	rlwinm		r6,r3,2,14,29		# id=r3
	add		r3,r6,r7		# id=r3 IfRxRoutingArray=r7
	lbz		r3,2(r3)		# id=r3 id=r3
	rlwinm		r3,r3,2,22,29		# id=r3 id=r3
	se_add		r3,r0		# id=r3 id=r3
	lwz		r0,8(r3)		# id=r3
	mtspr		ctr,r0
	lhzx		r3,r6,r7		# id=r3 IfRxRoutingArray=r7
.Llo4:
	rlwinm		r4,r4,0,24,31		# Result=r4 Result=r4
.Llo7:
	rlwinm		r5,r5,0,24,31		# ApiId=r5 ApiId=r5
.Llo8:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L43:
#              [IfRxRoutingArray[id].TargetFunction_Index
#               + PDUR_UPTP_RXINDICATION_OFFSET])
#              (IfRxRoutingArray[id].TargetId,Result,ApiId);
#             /* PRQA L:L1 */
#             }
#         }
#     }
#     return;
# }
	.d2line		123
	.d2epilogue_begin
.Llo10:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L80:
	.type		PduR_LoTpRxIndication,@function
	.size		PduR_LoTpRxIndication,.-PduR_LoTpRxIndication
# Number of nodes = 78

# Allocations for PduR_LoTpRxIndication
#	?a4		id
#	?a5		Result
#	?a6		ApiId
#	not allocated	MaxId
#	?a7		IfRxRoutingArray
# FUNC(BufReq_ReturnType, PDUR_CODE) PduR_LoTpStartOfReception(
	.align		2
	.section	.text_vle
        .d2line         137,36
#$$ld
.L103:

#$$bf	PduR_LoTpStartOfReception,interprocedural,rasave,nostackparams
	.globl		PduR_LoTpStartOfReception
	.d2_cfa_start __cie
PduR_LoTpStartOfReception:
.Llo11:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# RoutingArray=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# id=r3 id=r3
	mr		r4,r4		# TpSduLength=r4 TpSduLength=r4
	mr		r5,r5		# bufferSizePtr=r5 bufferSizePtr=r5
	mr		r7,r6		# ApiId=r7 ApiId=r6
	mr		r0,r8		# RoutingArray=r0 RoutingArray=r8
	.d2prologue_end
#         CONST(PduIdType,AUTOMATIC) id,
#         CONST(PduLengthType,AUTOMATIC) TpSduLength,
#         CONSTP2VAR(PduLengthType,AUTOMATIC, PDUR_VAR_PB) bufferSizePtr,
#         CONST(uint8,AUTOMATIC) ApiId,
#         CONST(uint16,AUTOMATIC) MaxId,
#         CONST(PduR_MainRtA,AUTOMATIC) RoutingArray[])
# {
#     VAR(boolean,AUTOMATIC) GwMulti = FALSE;
	.d2line		145
.Llo26:
	diab.li		r6,0		# GwMulti=r6
#     VAR(BufReq_ReturnType,AUTOMATIC) ReturnValue;
# 
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#         VAR(boolean,AUTOMATIC) GoOn = TRUE;
# #endif
# 
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     if((id >= MaxId)||
#        (RoutingArray[id].TargetFunction_Index == NULL_INDEX))
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         ApiId,
#                         PDUR_E_PDU_ID_INVALID);
#         ReturnValue =   BUFREQ_E_NOT_OK ;
#     }
#     else
# #endif /* PDUR_DEV_ERROR_DETECT = ON */
#     {
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#         if(PduR_Status != PDUR_REDUCED)
#         {
#             GoOn = PduR_IsRoutingPathEnabled(RoutingArray[id].TargetFunction_Index, RoutingArray[id].TargetId);
#             if(GoOn == FALSE)
#             {
#                 ReturnValue = BUFREQ_E_NOT_OK;
#             }
#         }
#         if(TRUE==GoOn)
# #endif  /* PDUR_ENABLE_ROUTING_GROUPS = ON */
#         {
#             if(RoutingArray[id].TargetFunction_Index > PDUR_MAX_APIS_OFFSET)
	.d2line		177
.Llo24:
	rlwinm		r8,r3,2,14,29		# id=r3
	add		r8,r8,r0		# RoutingArray=r0
	lbz		r31,2(r8)
	se_cmpi		r31,22
	bc		0,1,.L49	# le
#             {
#             /* MISRA RULE 11.1 VIOLATION:
#              This violation is for better execution time*/
#             /* PRQA S 0313 L1 */
#             ReturnValue =
	.d2line		182
.Llo15:
	lis		r6,PduR_TargetFunctionsRef@ha		# GwMulti=r6
.Llo29:
	lwz		r6,PduR_TargetFunctionsRef@l(r6)		# GwMulti=r6 GwMulti=r6
	rlwinm		r31,r3,2,14,29		# id=r3
	add		r3,r31,r0		# id=r3 RoutingArray=r0
	lbz		r3,2(r3)		# id=r3 id=r3
	rlwinm		r3,r3,2,22,29		# id=r3 id=r3
	lwzx		r3,r6,r3		# id=r3 GwMulti=r6
.Llo12:
	mtspr		ctr,r3		# id=ctr
	lhzx		r3,r31,r0		# id=r3 RoutingArray=r0
.Llo16:
	rlwinm		r4,r4,0,16,31		# TpSduLength=r4 TpSduLength=r4
.Llo17:
	mr		r5,r5		# bufferSizePtr=r5 bufferSizePtr=r5
.Llo21:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo27:
	mr		r3,r3		# ReturnValue=r3 ReturnValue=r3
	b		.L50
.L49:
#                 ((TpStartOfReceptionFunction)PduR_TargetFunctionsRef
#                  [RoutingArray[id].TargetFunction_Index])
#                  (RoutingArray[id].TargetId,
#                  TpSduLength,bufferSizePtr);
#             /* PRQA L:L1 */
#             }
#             else
#             {
#                 if(RoutingArray[id].TargetFunction_Index == MULTIGW_TP_RX_BASE_INDEX)
	.d2line		191
.Llo13:
	rlwinm		r8,r3,2,14,29		# id=r3
	add		r8,r8,r0		# RoutingArray=r0
	lbz		r31,2(r8)
	se_cmpi		r31,5
#                 {
#                     GwMulti = TRUE;
	.d2line		193
	diab.li		r31,1
.Llo30:
	isel		r6,r31,r6,2		# GwMulti=r6 GwMulti=r6
.L51:
#                 }
#                 /* MISRA RULE 11.1 VIOLATION:
#                 This violation is for better execution time*/
#                 /* PRQA S 0313 L1 */
#                 ReturnValue =
	.d2line		198
.Llo18:
	lis		r8,PduR_TargetFunctionsRef@ha
	lwz		r8,PduR_TargetFunctionsRef@l(r8)
	rlwinm		r31,r3,2,14,29		# id=r3
	add		r3,r31,r0		# id=r3 RoutingArray=r0
	lbz		r3,2(r3)		# id=r3 id=r3
	rlwinm		r3,r3,2,22,29		# id=r3 id=r3
	lwzx		r3,r8,r3		# id=r3
.Llo14:
	mtspr		ctr,r3		# id=ctr
	lhzx		r3,r31,r0		# id=r3 RoutingArray=r0
.Llo19:
	rlwinm		r4,r4,0,16,31		# TpSduLength=r4 TpSduLength=r4
.Llo20:
	rlwinm		r6,r6,0,24,31		# GwMulti=r6 GwMulti=r6
.Llo25:
	rlwinm		r7,r7,0,24,31		# ApiId=r7 ApiId=r7
.Llo22:
	mr		r5,r5		# bufferSizePtr=r5 bufferSizePtr=r5
.Llo23:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0xf8 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo28:
	mr		r3,r3		# ReturnValue=r3 ReturnValue=r3
.L50:
#                     (((TpGwStartOfReceptionFunction)PduR_TargetFunctionsRef
#                     [RoutingArray[id].TargetFunction_Index]))
#                     (RoutingArray[id].TargetId,
#                     TpSduLength,bufferSizePtr,GwMulti,ApiId);
#                 /* PRQA L:L1 */
#             }
#         }
#     }
#     return ReturnValue;
	.d2line		207
	mr		r3,r3		# ReturnValue=r3 ReturnValue=r3
# }
	.d2line		208
	.d2epilogue_begin
.Llo31:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# RoutingArray=r0
	mtspr		lr,r0		# RoutingArray=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L104:
	.type		PduR_LoTpStartOfReception,@function
	.size		PduR_LoTpStartOfReception,.-PduR_LoTpStartOfReception
# Number of nodes = 105

# Allocations for PduR_LoTpStartOfReception
#	?a4		id
#	?a5		TpSduLength
#	?a6		bufferSizePtr
#	?a7		ApiId
#	not allocated	MaxId
#	?a8		RoutingArray
#	?a9		GwMulti
#	?a10		ReturnValue
# FUNC(BufReq_ReturnType, PDUR_CODE) PduR_LoTpCopyTxData(
	.align		2
	.section	.text_vle
        .d2line         223,36
#$$ld
.L124:

#$$bf	PduR_LoTpCopyTxData,interprocedural,rasave,nostackparams
	.globl		PduR_LoTpCopyTxData
	.d2_cfa_start __cie
PduR_LoTpCopyTxData:
.Llo32:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# id=r3 id=r3
	mr		r4,r4		# info=r4 info=r4
	mr		r5,r5		# retry=r5 retry=r5
	mr		r6,r6		# availableDataPtr=r6 availableDataPtr=r6
	mr		r0,r7		# ApiId=r0 ApiId=r7
	mr		r9,r9		# RoutingArray=r9 RoutingArray=r9
	.d2prologue_end
#            CONST(PduIdType,AUTOMATIC) id,
#            CONSTP2VAR(PduInfoType,AUTOMATIC, PDUR_VAR_PB) info,
#            CONSTP2VAR(RetryInfoType,AUTOMATIC, PDUR_VAR_PB) retry,
#            CONSTP2VAR(PduLengthType,AUTOMATIC, PDUR_VAR_PB) availableDataPtr,
#            CONST(uint8,AUTOMATIC) ApiId,
#            CONST(uint16,AUTOMATIC) MaxId,
#            CONST(PduR_MainRtA,AUTOMATIC) RoutingArray[]
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#            ,CONST(uint8,AUTOMATIC) SourceTargetFunction
# #endif /* PDUR_ENABLE_ROUTING_GROUPS */
# )
# {
#     /* PRQA S 2981 1 *//* ReturnValue is used if pre-compile parameters are switched on */
#     VAR(BufReq_ReturnType,AUTOMATIC) ReturnValue = BUFREQ_OK;
	.d2line		237
	diab.li		r8,0		# ReturnValue=r8
#     VAR(boolean,AUTOMATIC) GwMulti = FALSE;
	.d2line		238
.Llo57:
	mr		r8,r8		# GwMulti=r8 GwMulti=r8
# 
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#     VAR(boolean,AUTOMATIC) GoOn = TRUE;
# #endif
# 
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     if(info     == NULL_PTR)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         ApiId,
#                         PDUR_E_NULL_POINTER);
#         ReturnValue = BUFREQ_E_NOT_OK;
#     }
#     if(((id >= MaxId) ||
#        (RoutingArray[id].TargetFunction_Index == NULL_INDEX)))
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         ApiId,
#                         PDUR_E_PDU_ID_INVALID);
#         ReturnValue = BUFREQ_E_NOT_OK;
#     }
#     if(BUFREQ_OK == ReturnValue)
# #endif /*PDUR_DEV_ERROR_DETECT*/
#     {
# 
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#         if(PduR_Status != PDUR_REDUCED)
#         {
#             GoOn = PduR_IsDestinationCallbackEnabled(SourceTargetFunction, id);
#             if(GoOn == FALSE)
#             {
#                 ReturnValue = BUFREQ_E_NOT_OK;
#             }
#         }
#         if(TRUE==GoOn)
# #endif  /* PDUR_ENABLE_ROUTING_GROUPS = ON */
#         {
#             if(RoutingArray[id].TargetFunction_Index == UPMC_COPYTXDATA_INDEX)
	.d2line		278
	rlwinm		r7,r3,2,14,29		# id=r3
.Llo52:
	add		r7,r7,r9		# RoutingArray=r9
	lbz		r7,2(r7)
	se_cmpi		r7,19
	bc		0,2,.L56	# ne
#             {
#                 /* MISRA RULE 11.1 VIOLATION:
#                  This violation is for better execution time*/
#                 /* PRQA S 0313 L1 */
#                 ReturnValue =
	.d2line		283
.Llo38:
	lis		r7,PduR_TargetFunctionsRef@ha
	lwz		r7,PduR_TargetFunctionsRef@l(r7)
	rlwinm		r31,r3,2,14,29		# id=r3
	add		r3,r31,r9		# id=r3 RoutingArray=r9
	lbz		r3,2(r3)		# id=r3 id=r3
	rlwinm		r3,r3,2,22,29		# id=r3 id=r3
	lwzx		r3,r7,r3		# id=r3
.Llo33:
	mtspr		ctr,r3		# id=ctr
	lhzx		r3,r31,r9		# id=r3 RoutingArray=r9
	rlwinm		r7,r0,0,24,31		# ApiId=r0
.Llo39:
	mr		r4,r4		# info=r4 info=r4
.Llo40:
	mr		r5,r5		# retry=r5 retry=r5
.Llo46:
	mr		r6,r6		# availableDataPtr=r6 availableDataPtr=r6
.Llo49:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0xf8 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo53:
	mr		r3,r3		# ReturnValue=r3 ReturnValue=r3
	b		.L57
.L56:
#                     ((TpCopyTxDataFunctionMultiCast)PduR_TargetFunctionsRef
#                      [RoutingArray[id].TargetFunction_Index])
#                      (RoutingArray[id].TargetId,
#                      info,retry,availableDataPtr,ApiId);
#                 /* PRQA L:L1 */
#             }
#             else if(RoutingArray[id].TargetFunction_Index > PDUR_MAX_APIS_OFFSET)
	.d2line		290
.Llo34:
	rlwinm		r7,r3,2,14,29		# id=r3
	add		r7,r7,r9		# RoutingArray=r9
	lbz		r7,2(r7)
	se_cmpi		r7,22
	bc		0,1,.L58	# le
#             {
#                 /* MISRA RULE 11.1 VIOLATION:
#                  This violation is for better execution time*/
#                 /* PRQA S 0313 L1 */
#                 ReturnValue =
	.d2line		295
.Llo41:
	lis		r7,PduR_TargetFunctionsRef@ha
	lwz		r7,PduR_TargetFunctionsRef@l(r7)
	rlwinm		r31,r3,2,14,29		# id=r3
	add		r3,r31,r9		# id=r3 RoutingArray=r9
	lbz		r0,2(r3)		# id=r3
	rlwinm		r0,r0,2,22,29
	lwzx		r0,r7,r0
	mtspr		ctr,r0
	lhzx		r3,r31,r9		# id=r3 RoutingArray=r9
.Llo35:
	mr		r4,r4		# info=r4 info=r4
.Llo42:
	mr		r5,r5		# retry=r5 retry=r5
.Llo47:
	mr		r6,r6		# availableDataPtr=r6 availableDataPtr=r6
.Llo50:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x78 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo55:
	mr		r3,r3		# ReturnValue=r3 ReturnValue=r3
	b		.L57
.L58:
#                     ((TpCopyTxDataFunction)PduR_TargetFunctionsRef
#                      [RoutingArray[id].TargetFunction_Index])
#                      (RoutingArray[id].TargetId,
#                      info,retry,availableDataPtr);
#                 /* PRQA L:L1 */
#             }
#             else
#             {
#                 if (RoutingArray[id].TargetFunction_Index == MULTIGW_TP_TX_BASE_INDEX)
	.d2line		304
.Llo36:
	rlwinm		r7,r3,2,14,29		# GwMulti=r7 id=r3
	add		r7,r7,r9		# GwMulti=r7 GwMulti=r7 RoutingArray=r9
	lbz		r7,2(r7)		# GwMulti=r7 GwMulti=r7
	se_cmpi		r7,8		# GwMulti=r7
#                 {
#                     GwMulti = TRUE;
	.d2line		306
	diab.li		r7,1		# GwMulti=r7
	isel		r7,r7,r8,2		# GwMulti=r7 GwMulti=r7 GwMulti=r8
.L60:
#                 }
#                     /* MISRA RULE 11.1 VIOLATION:
#                     This violation is for better execution time*/
#                     /* PRQA S 0313 L1 */
#                     ReturnValue =
	.d2line		311
.Llo43:
	lis		r8,PduR_TargetFunctionsRef@ha		# GwMulti=r8
.Llo58:
	lwz		r8,PduR_TargetFunctionsRef@l(r8)		# GwMulti=r8 GwMulti=r8
	rlwinm		r31,r3,2,14,29		# id=r3
	add		r3,r31,r9		# id=r3 RoutingArray=r9
	lbz		r3,2(r3)		# id=r3 id=r3
	rlwinm		r3,r3,2,22,29		# id=r3 id=r3
	lwzx		r3,r8,r3		# id=r3 GwMulti=r8
.Llo37:
	mtspr		ctr,r3		# id=ctr
	lhzx		r3,r31,r9		# id=r3 RoutingArray=r9
	rlwinm		r7,r7,0,24,31		# GwMulti=r7 GwMulti=r7
.Llo59:
	rlwinm		r8,r0,0,24,31		# GwMulti=r8 ApiId=r0
.Llo44:
	mr		r4,r4		# info=r4 info=r4
.Llo45:
	mr		r5,r5		# retry=r5 retry=r5
.Llo48:
	mr		r6,r6		# availableDataPtr=r6 availableDataPtr=r6
.Llo51:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x1f8 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo54:
	mr		r3,r3		# ReturnValue=r3 ReturnValue=r3
.L57:
#                         ((TpGwCopyTxDataFunction)PduR_TargetFunctionsRef
#                         [RoutingArray[id].TargetFunction_Index])
#                         (RoutingArray[id].TargetId,
#                         info,retry,availableDataPtr,GwMulti,ApiId);
#                     /* PRQA L:L1 */
#             }
#         }
# 
#     }
#     return ReturnValue;
	.d2line		321
	mr		r3,r3		# ReturnValue=r3 ReturnValue=r3
# }
	.d2line		322
	.d2epilogue_begin
.Llo56:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# ApiId=r0
	mtspr		lr,r0		# ApiId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L125:
	.type		PduR_LoTpCopyTxData,@function
	.size		PduR_LoTpCopyTxData,.-PduR_LoTpCopyTxData
# Number of nodes = 160

# Allocations for PduR_LoTpCopyTxData
#	?a4		id
#	?a5		info
#	?a6		retry
#	?a7		availableDataPtr
#	?a8		ApiId
#	not allocated	MaxId
#	?a9		RoutingArray
#	?a10		ReturnValue
#	?a11		GwMulti
# FUNC(BufReq_ReturnType, PDUR_CODE) PduR_LoTpCopyRxData(
	.align		2
	.section	.text_vle
        .d2line         348,36
#$$ld
.L147:

#$$bf	PduR_LoTpCopyRxData,interprocedural,rasave,nostackparams
	.globl		PduR_LoTpCopyRxData
	.d2_cfa_start __cie
PduR_LoTpCopyRxData:
.Llo60:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo75:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# GwMulti=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# id=r3 id=r3
	mr		r4,r4		# info=r4 info=r4
	mr		r5,r5		# bufferSizePtr=r5 bufferSizePtr=r5
	mr		r7,r6		# ApiId=r7 ApiId=r6
	mr		r8,r8		# RoutingArray=r8 RoutingArray=r8
	.d2prologue_end
#        CONST(PduIdType,AUTOMATIC) id,
#        CONSTP2VAR(PduInfoType,AUTOMATIC, PDUR_VAR_PB) info,
#        CONSTP2VAR(PduLengthType,AUTOMATIC, PDUR_VAR_PB) bufferSizePtr,
#        CONST(uint8,AUTOMATIC) ApiId,
#        CONST(uint16,AUTOMATIC) MaxId,
#        CONST(PduR_MainRtA,AUTOMATIC) RoutingArray[])
# {
#     VAR(boolean,AUTOMATIC) GwMulti = FALSE;
	.d2line		356
	diab.li		r0,0		# GwMulti=r0
#     /* PRQA S 2981 1 *//* ReturnValue is used if pre-compile parameters are switched on */
#     VAR(BufReq_ReturnType,AUTOMATIC) ReturnValue = BUFREQ_OK;
# 
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#     VAR(boolean,AUTOMATIC) GoOn = TRUE;
# #endif
# 
# 
# #if PDUR_DEV_ERROR_DETECT == STD_ON
# 
#     if(info == NULL_PTR)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         ApiId,
#                         PDUR_E_NULL_POINTER);
#         ReturnValue =   BUFREQ_E_NOT_OK;
#     }
# 
#     if((id >= MaxId) ||
#        (RoutingArray[id].TargetFunction_Index == NULL_INDEX) ||
#        ((PduR_TargetFunctionsRef[RoutingArray[id].TargetFunction_Index + PDUR_UPTP_COPYRXDATA_OFFSET]) == NULL_FUNCT_PTR_PDUR) )
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         ApiId,
#                         PDUR_E_PDU_ID_INVALID);
#         ReturnValue =   BUFREQ_E_NOT_OK;
#     }
#     if(BUFREQ_OK==ReturnValue)
# #endif /*PDUR_DEV_ERROR_DETECT*/
#     {
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#         if(PduR_Status != PDUR_REDUCED)
#         {
#             GoOn = PduR_IsRoutingPathEnabled(RoutingArray[id].TargetFunction_Index, RoutingArray[id].TargetId);
#             if (GoOn == FALSE)
#             {
#                 ReturnValue = BUFREQ_E_NOT_OK;
#             }
#         }
#         if(TRUE==GoOn)
# #endif  /* PDUR_ENABLE_ROUTING_GROUPS = ON */
#         {
#             if(RoutingArray[id].TargetFunction_Index > PDUR_MAX_APIS_OFFSET)
	.d2line		401
	rlwinm		r6,r3,2,14,29		# id=r3
.Llo71:
	add		r6,r6,r8		# RoutingArray=r8
	lbz		r6,2(r6)
	se_cmpi		r6,22
	bc		0,1,.L66	# le
#             {
#                 /* MISRA RULE 11.1 VIOLATION:
#                  This violation is for better execution time*/
#                 /* PRQA S 0313 L1 */
#                 ReturnValue =
	.d2line		406
.Llo64:
	lis		r6,PduR_TargetFunctionsRef@ha
	lwz		r0,PduR_TargetFunctionsRef@l(r6)		# GwMulti=r0
.Llo76:
	rlwinm		r6,r3,2,14,29		# id=r3
	add		r3,r6,r8		# id=r3 RoutingArray=r8
	lbz		r3,2(r3)		# id=r3 id=r3
	rlwinm		r3,r3,2,22,29		# id=r3 id=r3
	se_add		r3,r0		# id=r3 id=r3 GwMulti=r0
	lwz		r0,4(r3)		# GwMulti=r0 id=r3
.Llo77:
	mtspr		ctr,r0		# GwMulti=ctr
	lhzx		r3,r6,r8		# id=r3 RoutingArray=r8
.Llo61:
	mr		r4,r4		# info=r4 info=r4
.Llo65:
	mr		r5,r5		# bufferSizePtr=r5 bufferSizePtr=r5
.Llo69:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo73:
	mr		r3,r3		# ReturnValue=r3 ReturnValue=r3
	b		.L67
.L66:
#                     ((TpCopyRxDataFunction)PduR_TargetFunctionsRef
#                      [RoutingArray[id].TargetFunction_Index +
#                       PDUR_UPTP_COPYRXDATA_OFFSET])
#                      (RoutingArray[id].TargetId,
#                       info,bufferSizePtr);
#                 /* PRQA L:L1 */
#             }
#             else
#             {
#                 if(RoutingArray[id].TargetFunction_Index == MULTIGW_TP_RX_BASE_INDEX)
	.d2line		416
.Llo62:
	rlwinm		r6,r3,2,14,29		# GwMulti=r6 id=r3
	add		r6,r6,r8		# GwMulti=r6 GwMulti=r6 RoutingArray=r8
	lbz		r6,2(r6)		# GwMulti=r6 GwMulti=r6
	se_cmpi		r6,5		# GwMulti=r6
#                 {
#                     GwMulti = TRUE;
	.d2line		418
	diab.li		r6,1		# GwMulti=r6
	isel		r6,r6,r0,2		# GwMulti=r6 GwMulti=r6 GwMulti=r0
.L68:
#                 }
#                 /* MISRA RULE 11.1 VIOLATION:
#                  This violation is for better execution time*/
#                 /* PRQA S 0313 L1 */
#                 ReturnValue =
	.d2line		423
.Llo66:
	lis		r9,PduR_TargetFunctionsRef@ha
.Llo78:
	lwz		r0,PduR_TargetFunctionsRef@l(r9)		# GwMulti=r0
	rlwinm		r31,r3,2,14,29		# id=r3
	add		r3,r31,r8		# id=r3 RoutingArray=r8
	lbz		r3,2(r3)		# id=r3 id=r3
	rlwinm		r3,r3,2,22,29		# id=r3 id=r3
	se_add		r3,r0		# id=r3 id=r3 GwMulti=r0
	lwz		r0,4(r3)		# GwMulti=r0 id=r3
	mtspr		ctr,r0		# GwMulti=ctr
	lhzx		r3,r31,r8		# id=r3 RoutingArray=r8
.Llo63:
	rlwinm		r6,r6,0,24,31		# GwMulti=r6 GwMulti=r6
.Llo72:
	rlwinm		r7,r7,0,24,31		# ApiId=r7 ApiId=r7
.Llo67:
	mr		r4,r4		# info=r4 info=r4
.Llo68:
	mr		r5,r5		# bufferSizePtr=r5 bufferSizePtr=r5
.Llo70:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0xf8 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo74:
	mr		r3,r3		# ReturnValue=r3 ReturnValue=r3
.L67:
#                     (((TpGwCopyRxDataFunction)PduR_TargetFunctionsRef
#                      [RoutingArray[id].TargetFunction_Index +
#                       PDUR_UPTP_COPYRXDATA_OFFSET]))
#                      (RoutingArray[id].TargetId,
#                           info,bufferSizePtr,GwMulti,ApiId);
#                 /* PRQA L:L1 */
#             }
#         }
#     }
#     return ReturnValue;
	.d2line		433
	mr		r3,r3		# ReturnValue=r3 ReturnValue=r3
# }
	.d2line		434
	.d2epilogue_begin
.Llo79:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# GwMulti=r0
	mtspr		lr,r0		# GwMulti=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L148:
	.type		PduR_LoTpCopyRxData,@function
	.size		PduR_LoTpCopyRxData,.-PduR_LoTpCopyRxData
# Number of nodes = 110

# Allocations for PduR_LoTpCopyRxData
#	?a4		id
#	?a5		info
#	?a6		bufferSizePtr
#	?a7		ApiId
#	not allocated	MaxId
#	?a8		RoutingArray
#	?a9		GwMulti
#	?a10		ReturnValue
# FUNC(void,PDUR_CODE)PduR_LoTpTxConfirmation( CONST(PduIdType,AUTOMATIC) id,
	.align		2
	.section	.text_vle
        .d2line         450,21
#$$ld
.L161:

#$$bf	PduR_LoTpTxConfirmation,interprocedural,rasave,nostackparams
	.globl		PduR_LoTpTxConfirmation
	.d2_cfa_start __cie
PduR_LoTpTxConfirmation:
.Llo80:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# id=r3 id=r3
	mr		r4,r4		# Result=r4 Result=r4
	mr		r5,r5		# ApiId=r5 ApiId=r5
	mr		r7,r7		# IfTxRoutingArray=r7 IfTxRoutingArray=r7
	.d2prologue_end
#                                              CONST(NotifResultType,AUTOMATIC) Result,
#                                              CONST(uint8,AUTOMATIC) ApiId,
#                                              CONST(uint16,AUTOMATIC) MaxId,
#                                              CONST(PduR_MainRtA,AUTOMATIC) IfTxRoutingArray[]
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#                                              ,CONST(uint8,AUTOMATIC) SourceTargetFunction
# #endif /* PDUR_ENABLE_ROUTING_GROUPS */
# )
# {
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#     VAR(boolean,AUTOMATIC) GoOn = TRUE;
# #endif
# 
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     if((id >= MaxId)||
#        (IfTxRoutingArray[id].TargetFunction_Index ==NULL_INDEX)||
#         ((PduR_TargetFunctionsRef[IfTxRoutingArray[id].TargetFunction_Index + PDUR_UPTP_TXCONFIRMATION_OFFSET]) ==
#          NULL_FUNCT_PTR_PDUR ) )
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         ApiId,
#                         PDUR_E_PDU_ID_INVALID);
#     }
#     else
# #endif /* PDUR_DEV_ERROR_DETECT = ON */
#     {
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#         if(PduR_Status != PDUR_REDUCED)
#         {
#             GoOn = PduR_IsDestinationCallbackEnabled(SourceTargetFunction, id);
#         }
#         if(TRUE==GoOn)
# #endif  /* PDUR_ENABLE_ROUTING_GROUPS = ON */
#         {
#             if(IfTxRoutingArray[id].TargetFunction_Index>PDUR_MAX_APIS_OFFSET)
	.d2line		486
	rlwinm		r6,r3,2,14,29		# id=r3
	se_add		r6,r7		# IfTxRoutingArray=r7
	lbz		r0,2(r6)
	se_cmpi		r0,22
	bc		0,1,.L73	# le
#             {
#                 /* MISRA RULE 11.1 VIOLATION:
#                  This violation is for better execution time*/
#                 /* PRQA S 0313 L1 */
#                 ((TpTxConfirmationFunction)PduR_TargetFunctionsRef
	.d2line		491
.Llo84:
	lis		r5,PduR_TargetFunctionsRef@ha
	lwz		r0,PduR_TargetFunctionsRef@l(r5)
	rlwinm		r6,r3,2,14,29		# id=r3
	add		r3,r6,r7		# id=r3 IfTxRoutingArray=r7
	lbz		r3,2(r3)		# id=r3 id=r3
	rlwinm		r3,r3,2,22,29		# id=r3 id=r3
	se_add		r3,r0		# id=r3 id=r3
	lwz		r0,4(r3)		# id=r3
	mtspr		ctr,r0
	lhzx		r3,r6,r7		# id=r3 IfTxRoutingArray=r7
.Llo81:
	rlwinm		r4,r4,0,24,31		# Result=r4 Result=r4
.Llo85:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.Llo88:
	b		.L72
.L73:
#                  [IfTxRoutingArray[id].TargetFunction_Index
#                   + PDUR_UPTP_TXCONFIRMATION_OFFSET])
#                  (IfTxRoutingArray[id].TargetId,Result);
#                 /* PRQA L:L1 */
#             }
#             else
#             {
#                 /* MISRA RULE 11.1 VIOLATION:
#                  This violation is for better execution time*/
#                 /* PRQA S 0313 L1 */
#                 ((TpTxConfirmationFunctionWithDet)PduR_TargetFunctionsRef
	.d2line		502
.Llo82:
	lis		r6,PduR_TargetFunctionsRef@ha
	lwz		r0,PduR_TargetFunctionsRef@l(r6)
	rlwinm		r6,r3,2,14,29		# id=r3
	add		r3,r6,r7		# id=r3 IfTxRoutingArray=r7
	lbz		r3,2(r3)		# id=r3 id=r3
	rlwinm		r3,r3,2,22,29		# id=r3 id=r3
	se_add		r3,r0		# id=r3 id=r3
	lwz		r0,4(r3)		# id=r3
	mtspr		ctr,r0
	lhzx		r3,r6,r7		# id=r3 IfTxRoutingArray=r7
.Llo83:
	rlwinm		r4,r4,0,24,31		# Result=r4 Result=r4
.Llo86:
	rlwinm		r5,r5,0,24,31		# ApiId=r5 ApiId=r5
.Llo87:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L72:
#                  [IfTxRoutingArray[id].TargetFunction_Index
#                   + PDUR_UPTP_TXCONFIRMATION_OFFSET])
#                  (IfTxRoutingArray[id].TargetId,Result,ApiId);
#                 /* PRQA L:L1 */
#             }
#         }
#     }
#     return;
# }
	.d2line		511
	.d2epilogue_begin
.Llo89:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L162:
	.type		PduR_LoTpTxConfirmation,@function
	.size		PduR_LoTpTxConfirmation,.-PduR_LoTpTxConfirmation
# Number of nodes = 78

# Allocations for PduR_LoTpTxConfirmation
#	?a4		id
#	?a5		Result
#	?a6		ApiId
#	not allocated	MaxId
#	?a7		IfTxRoutingArray

# Allocations for module
	.section	.text_vle
	.0byte		.L168
	.section	.text_vle
#$$ld
.L5:
.L183:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L179:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\ComStack_Types.h"
.L177:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_Types.h"
.L169:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_i.h"
.L81:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\src\\PduR_LoTpNonGw.c"
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
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\src\\PduR_LoTpNonGw.c"
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
.L82:
	.sleb128	2
	.4byte		.L78-.L2
	.byte		"PduR_LoTpRxIndication"
	.byte		0
	.4byte		.L81
	.uleb128	65
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L79
	.4byte		.L80
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L81
	.uleb128	65
	.uleb128	22
	.byte		"id"
	.byte		0
	.4byte		.L83
	.4byte		.L87
	.sleb128	3
	.4byte		.L81
	.uleb128	65
	.uleb128	22
	.byte		"Result"
	.byte		0
	.4byte		.L88
	.4byte		.L92
	.sleb128	3
	.4byte		.L81
	.uleb128	65
	.uleb128	22
	.byte		"ApiId"
	.byte		0
	.4byte		.L93
	.4byte		.L94
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L81
	.uleb128	65
	.uleb128	22
	.byte		"MaxId"
	.byte		0
	.4byte		.L95
	.sleb128	2
	.byte		0x90
	.uleb128	6
	.sleb128	3
	.4byte		.L81
	.uleb128	65
	.uleb128	22
	.byte		"IfRxRoutingArray"
	.byte		0
	.4byte		.L96
	.4byte		.L100
	.section	.debug_info,,n
	.sleb128	0
.L78:
	.section	.debug_info,,n
.L107:
	.sleb128	5
	.4byte		.L102-.L2
	.byte		"PduR_LoTpStartOfReception"
	.byte		0
	.4byte		.L81
	.uleb128	137
	.uleb128	36
	.4byte		.L105
	.byte		0x1
	.byte		0x1
	.4byte		.L103
	.4byte		.L104
	.sleb128	3
	.4byte		.L81
	.uleb128	137
	.uleb128	36
	.byte		"id"
	.byte		0
	.4byte		.L83
	.4byte		.L108
	.sleb128	3
	.4byte		.L81
	.uleb128	137
	.uleb128	36
	.byte		"TpSduLength"
	.byte		0
	.4byte		.L109
	.4byte		.L111
	.sleb128	3
	.4byte		.L81
	.uleb128	137
	.uleb128	36
	.byte		"bufferSizePtr"
	.byte		0
	.4byte		.L112
	.4byte		.L114
	.sleb128	3
	.4byte		.L81
	.uleb128	137
	.uleb128	36
	.byte		"ApiId"
	.byte		0
	.4byte		.L93
	.4byte		.L115
	.sleb128	4
	.4byte		.L81
	.uleb128	137
	.uleb128	36
	.byte		"MaxId"
	.byte		0
	.4byte		.L95
	.sleb128	2
	.byte		0x90
	.uleb128	7
	.sleb128	3
	.4byte		.L81
	.uleb128	137
	.uleb128	36
	.byte		"RoutingArray"
	.byte		0
	.4byte		.L96
	.4byte		.L116
	.section	.debug_info,,n
.L117:
	.sleb128	6
	.4byte		.L81
	.uleb128	145
	.uleb128	28
	.byte		"GwMulti"
	.byte		0
	.4byte		.L118
	.4byte		.L119
.L120:
	.sleb128	6
	.4byte		.L81
	.uleb128	146
	.uleb128	38
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L105
	.4byte		.L121
	.section	.debug_info,,n
	.sleb128	0
.L102:
	.section	.debug_info,,n
.L126:
	.sleb128	5
	.4byte		.L123-.L2
	.byte		"PduR_LoTpCopyTxData"
	.byte		0
	.4byte		.L81
	.uleb128	223
	.uleb128	36
	.4byte		.L105
	.byte		0x1
	.byte		0x1
	.4byte		.L124
	.4byte		.L125
	.sleb128	3
	.4byte		.L81
	.uleb128	223
	.uleb128	36
	.byte		"id"
	.byte		0
	.4byte		.L83
	.4byte		.L127
	.sleb128	3
	.4byte		.L81
	.uleb128	223
	.uleb128	36
	.byte		"info"
	.byte		0
	.4byte		.L128
	.4byte		.L132
	.sleb128	3
	.4byte		.L81
	.uleb128	223
	.uleb128	36
	.byte		"retry"
	.byte		0
	.4byte		.L133
	.4byte		.L137
	.sleb128	3
	.4byte		.L81
	.uleb128	223
	.uleb128	36
	.byte		"availableDataPtr"
	.byte		0
	.4byte		.L112
	.4byte		.L138
	.sleb128	3
	.4byte		.L81
	.uleb128	223
	.uleb128	36
	.byte		"ApiId"
	.byte		0
	.4byte		.L93
	.4byte		.L139
	.sleb128	4
	.4byte		.L81
	.uleb128	223
	.uleb128	36
	.byte		"MaxId"
	.byte		0
	.4byte		.L95
	.sleb128	2
	.byte		0x90
	.uleb128	8
	.sleb128	3
	.4byte		.L81
	.uleb128	223
	.uleb128	36
	.byte		"RoutingArray"
	.byte		0
	.4byte		.L96
	.4byte		.L140
.L141:
	.sleb128	6
	.4byte		.L81
	.uleb128	237
	.uleb128	38
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L105
	.4byte		.L142
.L143:
	.sleb128	6
	.4byte		.L81
	.uleb128	238
	.uleb128	28
	.byte		"GwMulti"
	.byte		0
	.4byte		.L118
	.4byte		.L144
	.section	.debug_info,,n
	.sleb128	0
.L123:
	.section	.debug_info,,n
.L149:
	.sleb128	5
	.4byte		.L146-.L2
	.byte		"PduR_LoTpCopyRxData"
	.byte		0
	.4byte		.L81
	.uleb128	348
	.uleb128	36
	.4byte		.L105
	.byte		0x1
	.byte		0x1
	.4byte		.L147
	.4byte		.L148
	.sleb128	3
	.4byte		.L81
	.uleb128	348
	.uleb128	36
	.byte		"id"
	.byte		0
	.4byte		.L83
	.4byte		.L150
	.sleb128	3
	.4byte		.L81
	.uleb128	348
	.uleb128	36
	.byte		"info"
	.byte		0
	.4byte		.L128
	.4byte		.L151
	.sleb128	3
	.4byte		.L81
	.uleb128	348
	.uleb128	36
	.byte		"bufferSizePtr"
	.byte		0
	.4byte		.L112
	.4byte		.L152
	.sleb128	3
	.4byte		.L81
	.uleb128	348
	.uleb128	36
	.byte		"ApiId"
	.byte		0
	.4byte		.L93
	.4byte		.L153
	.sleb128	4
	.4byte		.L81
	.uleb128	348
	.uleb128	36
	.byte		"MaxId"
	.byte		0
	.4byte		.L95
	.sleb128	2
	.byte		0x90
	.uleb128	7
	.sleb128	3
	.4byte		.L81
	.uleb128	348
	.uleb128	36
	.byte		"RoutingArray"
	.byte		0
	.4byte		.L96
	.4byte		.L154
.L155:
	.sleb128	6
	.4byte		.L81
	.uleb128	356
	.uleb128	28
	.byte		"GwMulti"
	.byte		0
	.4byte		.L118
	.4byte		.L156
.L157:
	.sleb128	6
	.4byte		.L81
	.uleb128	358
	.uleb128	38
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L105
	.4byte		.L158
	.section	.debug_info,,n
	.sleb128	0
.L146:
	.section	.debug_info,,n
.L163:
	.sleb128	2
	.4byte		.L160-.L2
	.byte		"PduR_LoTpTxConfirmation"
	.byte		0
	.4byte		.L81
	.uleb128	450
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L161
	.4byte		.L162
	.sleb128	3
	.4byte		.L81
	.uleb128	450
	.uleb128	21
	.byte		"id"
	.byte		0
	.4byte		.L83
	.4byte		.L164
	.sleb128	3
	.4byte		.L81
	.uleb128	450
	.uleb128	21
	.byte		"Result"
	.byte		0
	.4byte		.L88
	.4byte		.L165
	.sleb128	3
	.4byte		.L81
	.uleb128	450
	.uleb128	21
	.byte		"ApiId"
	.byte		0
	.4byte		.L93
	.4byte		.L166
	.sleb128	4
	.4byte		.L81
	.uleb128	450
	.uleb128	21
	.byte		"MaxId"
	.byte		0
	.4byte		.L95
	.sleb128	2
	.byte		0x90
	.uleb128	6
	.sleb128	3
	.4byte		.L81
	.uleb128	450
	.uleb128	21
	.byte		"IfTxRoutingArray"
	.byte		0
	.4byte		.L96
	.4byte		.L167
	.section	.debug_info,,n
	.sleb128	0
.L160:
	.section	.debug_info,,n
.L168:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L169
	.uleb128	509
	.uleb128	60
	.byte		"PduR_TargetFunctionsRef"
	.byte		0
	.4byte		.L170
	.section	.debug_info,,n
	.section	.debug_info,,n
.L99:
	.sleb128	8
	.4byte		.L177
	.uleb128	53
	.uleb128	1
	.4byte		.L178-.L2
	.uleb128	4
	.section	.debug_info,,n
.L36:
	.sleb128	9
	.byte		"TargetId"
	.byte		0
	.4byte		.L84
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L37:
	.sleb128	9
	.byte		"TargetFunction_Index"
	.byte		0
	.4byte		.L90
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L178:
	.section	.debug_info,,n
.L136:
	.sleb128	10
	.4byte		.L179
	.uleb128	65
	.uleb128	14
	.4byte		.L180-.L2
	.byte		"VSTAR_RetryInfoType"
	.byte		0
	.uleb128	8
.L34:
	.sleb128	9
	.byte		"TpDataState"
	.byte		0
	.4byte		.L181
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L35:
	.sleb128	9
	.byte		"TxTpDataCnt"
	.byte		0
	.4byte		.L110
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L180:
.L131:
	.sleb128	10
	.4byte		.L183
	.uleb128	69
	.uleb128	1
	.4byte		.L184-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L32:
	.sleb128	9
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L185
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L33:
	.sleb128	9
	.byte		"SduLength"
	.byte		0
	.4byte		.L110
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L184:
	.section	.debug_info,,n
.L182:
	.sleb128	11
	.4byte		.L179
	.uleb128	65
	.uleb128	14
	.4byte		.L186-.L2
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
.L186:
.L106:
	.sleb128	11
	.4byte		.L179
	.uleb128	50
	.uleb128	14
	.4byte		.L187-.L2
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
.L187:
	.section	.debug_info,,n
.L86:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L85:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L86
.L84:
	.sleb128	14
	.byte		"PduIdType"
	.byte		0
	.4byte		.L85
	.section	.debug_info,,n
.L83:
	.sleb128	15
	.4byte		.L84
.L91:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L90:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L91
.L89:
	.sleb128	14
	.byte		"NotifResultType"
	.byte		0
	.4byte		.L90
.L88:
	.sleb128	15
	.4byte		.L89
.L93:
	.sleb128	15
	.4byte		.L90
.L95:
	.sleb128	15
	.4byte		.L85
.L98:
	.sleb128	14
	.byte		"PduR_MainRtA"
	.byte		0
	.4byte		.L99
.L97:
	.sleb128	15
	.4byte		.L98
	.section	.debug_info,,n
.L96:
	.sleb128	16
	.4byte		.L97
.L105:
	.sleb128	14
	.byte		"BufReq_ReturnType"
	.byte		0
	.4byte		.L106
.L110:
	.sleb128	14
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L85
.L109:
	.sleb128	15
	.4byte		.L110
.L113:
	.sleb128	16
	.4byte		.L110
.L112:
	.sleb128	15
	.4byte		.L113
.L118:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L91
.L130:
	.sleb128	14
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L131
.L129:
	.sleb128	16
	.4byte		.L130
.L128:
	.sleb128	15
	.4byte		.L129
.L135:
	.sleb128	14
	.byte		"RetryInfoType"
	.byte		0
	.4byte		.L136
.L134:
	.sleb128	16
	.4byte		.L135
.L133:
	.sleb128	15
	.4byte		.L134
	.section	.debug_info,,n
.L175:
	.sleb128	17
	.4byte		.L176-.L2
	.byte		0x1
	.sleb128	0
.L176:
.L174:
	.sleb128	16
	.4byte		.L175
.L173:
	.sleb128	14
	.byte		"TargetFunction"
	.byte		0
	.4byte		.L174
.L172:
	.sleb128	15
	.4byte		.L173
.L171:
	.sleb128	16
	.4byte		.L172
.L170:
	.sleb128	15
	.4byte		.L171
.L181:
	.sleb128	14
	.byte		"TpDataStateType"
	.byte		0
	.4byte		.L182
.L185:
	.sleb128	16
	.4byte		.L90
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L87:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L92:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo6),4
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo7),4
	.d2locend
.L94:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),5
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),5
	.d2locend
.L100:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo9),7
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo10),7
	.d2locend
.L108:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locend
.L111:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo15),4
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),4
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo18),4
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),4
	.d2locend
.L114:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo15),5
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo21),5
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo18),5
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),5
	.d2locend
.L115:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo24),6
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo18),7
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo22),7
	.d2locend
.L116:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo26),8
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo27),0
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo28),0
	.d2locend
.L119:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo15),6
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo27),6
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo25),6
	.d2locend
.L121:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo31),3
	.d2locend
.L127:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),3
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),3
	.d2locend
.L132:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo38),4
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),4
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo41),4
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo42),4
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo43),4
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),4
	.d2locend
.L137:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo38),5
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo46),5
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo41),5
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo47),5
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo43),5
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo48),5
	.d2locend
.L138:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo38),6
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo49),6
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo41),6
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo50),6
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo43),6
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo51),6
	.d2locend
.L139:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo52),7
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo53),0
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo41),0
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo54),0
	.d2locend
.L140:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo53),9
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo55),9
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo54),9
	.d2locend
.L142:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo34),3
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo36),3
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo56),3
	.d2locend
.L144:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo38),8
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo41),8
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo43),8
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),7
	.d2locend
.L150:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),3
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),3
	.d2locend
.L151:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo64),4
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo65),4
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo66),4
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),4
	.d2locend
.L152:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo64),5
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo69),5
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo66),5
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo70),5
	.d2locend
.L153:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo71),6
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo66),7
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo67),7
	.d2locend
.L154:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo73),8
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo74),8
	.d2locend
.L156:
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo64),0
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),0
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo66),0
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo72),6
	.d2locend
.L158:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo62),3
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo79),3
	.d2locend
.L164:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),3
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),3
	.d2locend
.L165:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo84),4
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo85),4
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo86),4
	.d2locend
.L166:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo84),5
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),5
	.d2locend
.L167:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo88),7
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo89),7
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "PduR_LoTpTxConfirmation"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.end
	.wrcm.nelem "PduR_LoTpCopyRxData"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.end
	.wrcm.nelem "PduR_LoTpCopyTxData"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.end
	.wrcm.nelem "PduR_LoTpStartOfReception"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.end
	.wrcm.nelem "PduR_LoTpRxIndication"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "indirectCalls", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\PduR_LoTpNonGw.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\PduR_LoTpNonGw.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\PduR_LoTpNonGw.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\PduR_LoTpNonGw.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\PduR_LoTpNonGw.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\PduR_LoTpNonGw.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\PduR\ssc\make\..\src\PduR_LoTpNonGw.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
