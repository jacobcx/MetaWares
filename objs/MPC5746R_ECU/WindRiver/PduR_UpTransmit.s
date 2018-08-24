#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"PduR_UpTransmit.c"
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
# FUNC(Std_ReturnType,PDUR_CODE) PduR_UpTransmit(CONST(PduIdType,AUTOMATIC) TxPduId,
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\src\\PduR_UpTransmit.c"
        .d2line         140,32
#$$ld
.L55:

#$$bf	PduR_UpTransmit,interprocedural,rasave,nostackparams
	.globl		PduR_UpTransmit
	.d2_cfa_start __cie
PduR_UpTransmit:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# IfTxRoutingArray=r0
	.d2_cfa_offset    108,-1
	mr		r5,r3		# TxPduId=r5 TxPduId=r3
	mr		r0,r7		# IfTxRoutingArray=r0 IfTxRoutingArray=r7
	.d2prologue_end
#        CONSTP2VAR(PduInfoType, AUTOMATIC,PDUR_APPL_DATA)PduInfoPtr,
#        CONST(uint8,AUTOMATIC) ApiId,
#        CONST(uint16,AUTOMATIC) MaxId,
#        CONST(PduR_MainRtA,AUTOMATIC) IfTxRoutingArray[])
# {
#     /* PRQA S 2981 1 *//* ReturnValue is used if pre-compile parameters are switched on */
#     VAR(Std_ReturnType,AUTOMATIC) ReturnValue = E_OK;
	.d2line		147
.Llo5:
	diab.li		r3,0		# ReturnValue=r3
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#     VAR(boolean,AUTOMATIC) GoOn = TRUE;
# #endif /* PDUR_ENABLE_ROUTING_GROUPS == STD_ON */
# 
# #if(PDUR_DEV_ERROR_DETECT == STD_ON)
#     VAR(boolean,AUTOMATIC) IsTpModule;
# #endif /* PDUR_DEV_ERROR_DETECT == STD_ON */
# #if (PDUR_DEV_ERROR_DETECT == STD_ON)
#     if(PduInfoPtr == NULL_PTR)
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         ApiId,
#                         PDUR_E_NULL_POINTER);
#         ReturnValue = E_NOT_OK;
#     }
#     /* the previous condition is not related to the current condition so we removed the else */
#    if(((TxPduId >= MaxId)||
#           (IfTxRoutingArray[TxPduId].TargetFunction_Index ==
#             NULL_INDEX)))
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         ApiId,
#                         PDUR_E_PDU_ID_INVALID);
#         ReturnValue = E_NOT_OK;
#     }
#     if(E_OK==ReturnValue)
# #endif /*PDUR_DEV_ERROR_DETECT*/
#     {
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#         if(PduR_Status != PDUR_REDUCED)
#         {
#             GoOn = PduR_IsRoutingPathEnabled(IfTxRoutingArray[TxPduId].TargetFunction_Index, IfTxRoutingArray[TxPduId].TargetId);
#             if(GoOn == FALSE)
#             {
#                 ReturnValue = E_NOT_OK;
# #if (PDUR_DEV_ERROR_DETECT == STD_ON)
#                 /*Check if the module is trasnport protocol module or not */
#                 PduR_IsTpModule(
#                     IfTxRoutingArray[TxPduId].TargetFunction_Index,
#                     &IsTpModule);
# 
#                 if(TRUE==IsTpModule)
#                 {
#                     (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         ApiId,
#                         PDUR_E_TP_TX_REQ_REJECTED);
#                 }
# #endif /*PDUR_DEV_ERROR_DETECT*/
#             }
#         }
#         if(TRUE == GoOn)
# #endif /*PDUR_ENABLE_ROUTING_GROUPS*/
#         {
#             /* MISRA RULE 11.1 VIOLATION:
#             This violation for better execution time*/
#             /* PRQA S 0313 L1 */
#             ReturnValue =
	.d2line		207
.Llo2:
	lis		r3,PduR_TargetFunctionsRef@ha		# ReturnValue=r3
.Llo7:
	lwz		r3,PduR_TargetFunctionsRef@l(r3)		# ReturnValue=r3 ReturnValue=r3
.Llo3:
	rlwinm		r5,r5,2,14,29		# TxPduId=r5 TxPduId=r5
	add		r7,r5,r0		# TxPduId=r5 IfTxRoutingArray=r0
	lbz		r6,2(r7)
	rlwinm		r6,r6,2,22,29
	lwzx		r3,r3,r6		# ReturnValue=r3 ReturnValue=r3
.Llo8:
	mtspr		ctr,r3		# ReturnValue=ctr
	lhzx		r3,r5,r0		# ReturnValue=r3 TxPduId=r5 IfTxRoutingArray=r0
	mr		r0,r4		# PduInfoPtr=r0 PduInfoPtr=r4
.Llo6:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
#                 ((TransmitFunction)PduR_TargetFunctionsRef
#                  [IfTxRoutingArray[TxPduId].TargetFunction_Index])
#                  (IfTxRoutingArray[TxPduId].TargetId,
#                    PduInfoPtr);
#             /* PRQA L:L1 */
# 
# #if (PDUR_DEV_ERROR_DETECT == STD_ON)
#             if(ReturnValue == E_NOT_OK)
#             {
#                 /*Check if the module is trasnport protocol module or not */
#                 PduR_IsTpModule(
#                     IfTxRoutingArray[TxPduId].TargetFunction_Index,
#                     &IsTpModule);
# 
#                 if(TRUE==IsTpModule)
#                 {
#                     (void)Det_ReportError(PDUR_MODULE_ID,
#                                     PDUR_INSTANCE_ID,
#                                     ApiId,
#                                     PDUR_E_TP_TX_REQ_REJECTED);
#                 }
#             }
# #endif /*PDUR_DEV_ERROR_DETECT*/
#         }
#     }
#     return ReturnValue;
	.d2line		233
.Llo4:
	rlwinm		r3,r3,0,24,31		# ReturnValue=r3 ReturnValue=r3
# }
	.d2line		234
	.d2epilogue_begin
.Llo9:
	lwz		r0,20(r1)		# IfTxRoutingArray=r0
	mtspr		lr,r0		# IfTxRoutingArray=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L56:
	.type		PduR_UpTransmit,@function
	.size		PduR_UpTransmit,.-PduR_UpTransmit
# Number of nodes = 35

# Allocations for PduR_UpTransmit
#	?a4		TxPduId
#	?a5		PduInfoPtr
#	not allocated	ApiId
#	not allocated	MaxId
#	?a6		IfTxRoutingArray
#	?a7		ReturnValue
# FUNC(Std_ReturnType, PDUR_CODE) PduR_UpCancelTransmit
	.align		2
	.section	.text_vle
        .d2line         253,33
#$$ld
.L83:

#$$bf	PduR_UpCancelTransmit,interprocedural,rasave,nostackparams
	.globl		PduR_UpCancelTransmit
	.d2_cfa_start __cie
PduR_UpCancelTransmit:
.Llo10:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# id=r3 id=r3
	mr		r5,r5		# MaxId=r5 MaxId=r5
	mr		r6,r6		# IfTxRoutingArray=r6 IfTxRoutingArray=r6
	.d2prologue_end
#  (CONST(PduIdType,AUTOMATIC) id,
#   CONST(uint8,AUTOMATIC) ApiId,
#   CONST(uint16,AUTOMATIC) MaxId,
#   CONST(PduR_MainRtA,AUTOMATIC) IfTxRoutingArray[])
# {
# 
#     VAR(Std_ReturnType,AUTOMATIC) ReturnValue;
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#     VAR(boolean,AUTOMATIC) GoOn = TRUE;
# #endif
# 
#     /* we check for the transmit API only since if the Trasnmit is not available */
#     /* the Cancel Tasnmit Also is not available */
#     /* but if the Trasnmit is available we must also check the Cancel Trasnmit */
#     if((id >= MaxId)||
	.d2line		268
	rlwinm		r4,r3,0,16,31		# id=r3
	rlwinm		r5,r5,0,16,31		# MaxId=r5 MaxId=r5
	se_cmp		r4,r5		# MaxId=r5
	bc		0,0,.L47	# ge
.Llo14:
	rlwinm		r4,r3,2,14,29		# id=r3
	se_add		r4,r6		# IfTxRoutingArray=r6
	lbz		r0,2(r4)
	se_cmpi		r0,0
	bc		1,2,.L47	# eq
	lis		r4,PduR_TargetFunctionsRef@ha
	lwz		r0,PduR_TargetFunctionsRef@l(r4)
	rlwinm		r4,r3,2,14,29		# id=r3
	se_add		r4,r6		# IfTxRoutingArray=r6
	lbz		r4,2(r4)
	rlwinm		r4,r4,2,22,29
	se_add		r4,r0
	lwz		r0,4(r4)
	se_cmpi		r0,0
	bc		0,2,.L45	# ne
.L47:
#        (IfTxRoutingArray[id].TargetFunction_Index == NULL_INDEX)||
#        ((PduR_TargetFunctionsRef[IfTxRoutingArray[id].TargetFunction_Index + CANCELTRANSMITREQUEST_OFFSET]) ==
#         NULL_FUNCT_PTR_PDUR ) )
#     {
# #if (PDUR_DEV_ERROR_DETECT == STD_ON)
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         ApiId,
#                         PDUR_E_PDU_ID_INVALID);
# #endif /* PDUR_DEV_ERROR_DETECT */
#         ReturnValue = E_NOT_OK;
	.d2line		279
.Llo11:
	diab.li		r3,1		# ReturnValue=r3
.Llo16:
	b		.L46
.L45:
#     }
#     else
# 
#     {
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#         if(PduR_Status != PDUR_REDUCED)
#         {
#             GoOn = PduR_IsRoutingPathEnabled(IfTxRoutingArray[id].TargetFunction_Index + CANCELTRANSMITREQUEST_OFFSET, IfTxRoutingArray[id].TargetId);
#             if(GoOn == FALSE)
#             {
#                 ReturnValue = E_NOT_OK;
#             }
#         }
#         if(TRUE==GoOn)
# #endif  /* PDUR_ENABLE_ROUTING_GROUPS = ON */
#         {
# 
#             /* MISRA RULE 11.1 VIOLATION:
#             This violation for better execution time*/
#           /* PRQA S 0313 L1 */
#             ReturnValue = ((CancelTransmitReceive)PduR_TargetFunctionsRef[IfTxRoutingArray[id].TargetFunction_Index + CANCELTRANSMITREQUEST_OFFSET])
	.d2line		300
.Llo12:
	lis		r4,PduR_TargetFunctionsRef@ha
	lwz		r0,PduR_TargetFunctionsRef@l(r4)
	rlwinm		r4,r3,2,14,29		# id=r3
	add		r3,r4,r6		# id=r3 IfTxRoutingArray=r6
	lbz		r3,2(r3)		# id=r3 id=r3
	rlwinm		r3,r3,2,22,29		# id=r3 id=r3
	se_add		r3,r0		# id=r3 id=r3
	lwz		r0,4(r3)		# id=r3
	mtspr		ctr,r0
	lhzx		r3,r4,r6		# id=r3 IfTxRoutingArray=r6
.Llo13:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo15:
	mr		r3,r3		# ReturnValue=r3 ReturnValue=r3
.L46:
#                                                   (IfTxRoutingArray[id].TargetId);
#           /* PRQA L:L1 */
#         }
#     }
#     return ReturnValue;
	.d2line		305
	rlwinm		r3,r3,0,24,31		# ReturnValue=r3 ReturnValue=r3
# }
	.d2line		306
	.d2epilogue_begin
.Llo17:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L84:
	.type		PduR_UpCancelTransmit,@function
	.size		PduR_UpCancelTransmit,.-PduR_UpCancelTransmit
# Number of nodes = 72

# Allocations for PduR_UpCancelTransmit
#	?a4		id
#	not allocated	ApiId
#	?a5		MaxId
#	?a6		IfTxRoutingArray
#	?a7		ReturnValue
# FUNC(Std_ReturnType, PDUR_CODE) PduR_UpChangeParameter(
	.align		2
	.section	.text_vle
        .d2line         329,33
#$$ld
.L93:

#$$bf	PduR_UpChangeParameter,interprocedural,rasave,nostackparams
	.globl		PduR_UpChangeParameter
	.d2_cfa_start __cie
PduR_UpChangeParameter:
.Llo18:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# id=r3 id=r3
	mr		r8,r8		# IfRxRoutingArray=r8 IfRxRoutingArray=r8
	.d2prologue_end
#         CONST(PduIdType,AUTOMATIC) id,
#         CONST(TPParameterType,AUTOMATIC) parameter,
#         CONST(uint16,AUTOMATIC) value,
#         CONST(uint8,AUTOMATIC) ApiId,
#         CONST(uint16,AUTOMATIC) MaxId,
#         CONST(PduR_MainRtA,AUTOMATIC) IfRxRoutingArray[]
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#         ,CONST(uint8,AUTOMATIC) SourceTargetFunction
# #endif /* PDUR_ENABLE_ROUTING_GROUPS */
# )
# {
# /* this function we will check on the DestHandleId */
#     VAR(Std_ReturnType,AUTOMATIC) ReturnValue;
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#     VAR(boolean,AUTOMATIC) GoOn = TRUE;
# #endif
# 
# #if (PDUR_DEV_ERROR_DETECT == STD_ON)
#     /* we check for the transmit API only since if the Trasnmit is not available */
#     /* the Cancel Tasnmit Also is not available */
#     /* but if the Trasnmit is available we must also check the Change Parameter*/
#     if((id >= MaxId)||
#        (IfRxRoutingArray[id].TargetFunction_Index == NULL_INDEX)||
#        ((PduR_TargetFunctionsRef[IfRxRoutingArray[id].TargetFunction_Index + PDUR_LOTP_CHANGEPARAMETERREQUEST_OFFSET]) ==
#         NULL_FUNCT_PTR_PDUR))
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         ApiId,
#                         PDUR_E_PDU_ID_INVALID);
#         ReturnValue = E_NOT_OK;
#     }
#     else
# #endif /* PDUR_DEV_ERROR_DETECT*/
#     {
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#         if(PduR_Status != PDUR_REDUCED)
#         {
#             GoOn = PduR_IsDestinationCallbackEnabled(SourceTargetFunction, id);
#             if(GoOn == FALSE)
#             {
#                 ReturnValue = E_NOT_OK;
#             }
#         }
#         if(TRUE==GoOn)
# #endif  /* PDUR_ENABLE_ROUTING_GROUPS = ON */
#         {
# 
#             /* MISRA RULE 11.1 VIOLATION:
#             This violation for better execution time*/
#           /* PRQA S 0313 L1 */
#             ReturnValue = ((ChangeParamter)
	.d2line		381
	lis		r6,PduR_TargetFunctionsRef@ha
	lwz		r0,PduR_TargetFunctionsRef@l(r6)
	rlwinm		r6,r3,2,14,29		# id=r3
	add		r3,r6,r8		# id=r3 IfRxRoutingArray=r8
	lbz		r3,2(r3)		# id=r3 id=r3
	rlwinm		r3,r3,2,22,29		# id=r3 id=r3
	se_add		r3,r0		# id=r3 id=r3
	lwz		r0,12(r3)		# id=r3
	mtspr		ctr,r0
	lhzx		r3,r6,r8		# id=r3 IfRxRoutingArray=r8
.Llo19:
	rlwinm		r5,r5,0,16,31		# value=r5 value=r5
.Llo21:
	mr		r0,r4		# parameter=r0 parameter=r4
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
#                     PduR_TargetFunctionsRef
#                 [IfRxRoutingArray[id].TargetFunction_Index +
#                  PDUR_LOTP_CHANGEPARAMETERREQUEST_OFFSET])
#                 (IfRxRoutingArray[id].TargetId,parameter,value);
#           /* PRQA L:L1 */
#         }
#     }
#     return ReturnValue;
	.d2line		389
.Llo20:
	rlwinm		r3,r3,0,24,31		# ReturnValue=r3 ReturnValue=r3
# }
	.d2line		390
	.d2epilogue_begin
.Llo22:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L94:
	.type		PduR_UpChangeParameter,@function
	.size		PduR_UpChangeParameter,.-PduR_UpChangeParameter
# Number of nodes = 37

# Allocations for PduR_UpChangeParameter
#	?a4		id
#	?a5		parameter
#	?a6		value
#	not allocated	ApiId
#	not allocated	MaxId
#	?a7		IfRxRoutingArray
#	?a8		ReturnValue
# FUNC(Std_ReturnType, PDUR_CODE) PduR_UpCancelReceive (
	.align		2
	.section	.text_vle
        .d2line         408,33
#$$ld
.L107:

#$$bf	PduR_UpCancelReceive,interprocedural,rasave,nostackparams
	.globl		PduR_UpCancelReceive
	.d2_cfa_start __cie
PduR_UpCancelReceive:
.Llo23:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# id=r3 id=r3
	mr		r6,r6		# IfRxRoutingArray=r6 IfRxRoutingArray=r6
	.d2prologue_end
#         CONST(PduIdType,AUTOMATIC) id,
#         CONST(uint8,AUTOMATIC) ApiId,
#         CONST(uint16,AUTOMATIC) MaxId,
#         CONST(PduR_MainRtA,AUTOMATIC) IfRxRoutingArray[]
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#         ,CONST(uint8,AUTOMATIC) SourceTargetFunction
# #endif /* PDUR_ENABLE_ROUTING_GROUPS */
# )
# {
# /* this function we will check on the DestHandleId */
#     VAR(Std_ReturnType,AUTOMATIC) ReturnValue;
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#     VAR(boolean,AUTOMATIC) GoOn = TRUE;
# #endif
# 
# #if (PDUR_DEV_ERROR_DETECT == STD_ON)
#     /* we check for the transmit API only since if the Trasnmit is not available */
#     /* the Cancel Tasnmit Also is not available */
#     /* but if the Trasnmit is available we must also check the Cancel Receive */
#     if((id >= MaxId)||
#        (IfRxRoutingArray[id].TargetFunction_Index == NULL_INDEX)||
#        ((PduR_TargetFunctionsRef[IfRxRoutingArray[id].TargetFunction_Index + PDUR_LOTP_CANCELRECEIVEREQUEST_OFFSET]) ==
#         NULL_FUNCT_PTR_PDUR))
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         ApiId,
#                         PDUR_E_PDU_ID_INVALID);
#         ReturnValue = E_NOT_OK;
#     }
#     else
# #endif /* PDUR_DEV_ERROR_DETECT*/
#     {
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#         if(PduR_Status != PDUR_REDUCED)
#         {
#             GoOn = PduR_IsDestinationCallbackEnabled(SourceTargetFunction, id);
#             if(GoOn == FALSE)
#             {
#                 ReturnValue = E_NOT_OK;
#             }
#         }
#         if(TRUE==GoOn)
# #endif  /* PDUR_ENABLE_ROUTING_GROUPS = ON */
#         {
# 
#             /* MISRA RULE 11.1 VIOLATION:
#             This violation for better execution time*/
#           /* PRQA S 0313 L1 */
#             ReturnValue = ((CancelReceive)
	.d2line		458
	lis		r4,PduR_TargetFunctionsRef@ha
	lwz		r0,PduR_TargetFunctionsRef@l(r4)
	rlwinm		r4,r3,2,14,29		# id=r3
	add		r3,r4,r6		# id=r3 IfRxRoutingArray=r6
	lbz		r3,2(r3)		# id=r3 id=r3
	rlwinm		r3,r3,2,22,29		# id=r3 id=r3
	se_add		r3,r0		# id=r3 id=r3
	lwz		r0,8(r3)		# id=r3
	mtspr		ctr,r0
	lhzx		r3,r4,r6		# id=r3 IfRxRoutingArray=r6
.Llo24:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
#                     PduR_TargetFunctionsRef
#                 [IfRxRoutingArray[id].TargetFunction_Index +
#                  PDUR_LOTP_CANCELRECEIVEREQUEST_OFFSET])
#                 (IfRxRoutingArray[id].TargetId);
#           /* PRQA L:L1 */
#         }
#     }
#     return ReturnValue;
	.d2line		466
.Llo25:
	rlwinm		r3,r3,0,24,31		# ReturnValue=r3 ReturnValue=r3
# }
	.d2line		467
	.d2epilogue_begin
.Llo26:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L108:
	.type		PduR_UpCancelReceive,@function
	.size		PduR_UpCancelReceive,.-PduR_UpCancelReceive
# Number of nodes = 32

# Allocations for PduR_UpCancelReceive
#	?a4		id
#	not allocated	ApiId
#	not allocated	MaxId
#	?a5		IfRxRoutingArray
#	?a6		ReturnValue

# Allocations for module
	.section	.text_vle
	.0byte		.L114
	.section	.text_vle
#$$ld
.L5:
.L129:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\ComStack_Types.h"
.L125:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L123:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_Types.h"
.L115:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_i.h"
.L57:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\src\\PduR_UpTransmit.c"
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
	.uleb128	8
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
	.uleb128	11
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
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
	.uleb128	38
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\src\\PduR_UpTransmit.c"
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
.L61:
	.sleb128	2
	.4byte		.L54-.L2
	.byte		"PduR_UpTransmit"
	.byte		0
	.4byte		.L57
	.uleb128	140
	.uleb128	32
	.4byte		.L58
	.byte		0x1
	.byte		0x1
	.4byte		.L55
	.4byte		.L56
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L57
	.uleb128	140
	.uleb128	32
	.byte		"TxPduId"
	.byte		0
	.4byte		.L62
	.4byte		.L66
	.sleb128	3
	.4byte		.L57
	.uleb128	140
	.uleb128	32
	.byte		"PduInfoPtr"
	.byte		0
	.4byte		.L67
	.4byte		.L71
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L57
	.uleb128	140
	.uleb128	32
	.byte		"ApiId"
	.byte		0
	.4byte		.L72
	.sleb128	2
	.byte		0x90
	.uleb128	5
	.sleb128	4
	.4byte		.L57
	.uleb128	140
	.uleb128	32
	.byte		"MaxId"
	.byte		0
	.4byte		.L73
	.sleb128	2
	.byte		0x90
	.uleb128	6
	.sleb128	3
	.4byte		.L57
	.uleb128	140
	.uleb128	32
	.byte		"IfTxRoutingArray"
	.byte		0
	.4byte		.L74
	.4byte		.L78
	.section	.debug_info,,n
.L79:
	.sleb128	5
	.4byte		.L57
	.uleb128	147
	.uleb128	35
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L58
	.4byte		.L80
	.section	.debug_info,,n
	.sleb128	0
.L54:
	.section	.debug_info,,n
.L85:
	.sleb128	2
	.4byte		.L82-.L2
	.byte		"PduR_UpCancelTransmit"
	.byte		0
	.4byte		.L57
	.uleb128	253
	.uleb128	33
	.4byte		.L58
	.byte		0x1
	.byte		0x1
	.4byte		.L83
	.4byte		.L84
	.sleb128	3
	.4byte		.L57
	.uleb128	253
	.uleb128	33
	.byte		"id"
	.byte		0
	.4byte		.L62
	.4byte		.L86
	.sleb128	4
	.4byte		.L57
	.uleb128	253
	.uleb128	33
	.byte		"ApiId"
	.byte		0
	.4byte		.L72
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	3
	.4byte		.L57
	.uleb128	253
	.uleb128	33
	.byte		"MaxId"
	.byte		0
	.4byte		.L73
	.4byte		.L87
	.sleb128	3
	.4byte		.L57
	.uleb128	253
	.uleb128	33
	.byte		"IfTxRoutingArray"
	.byte		0
	.4byte		.L74
	.4byte		.L88
.L89:
	.sleb128	5
	.4byte		.L57
	.uleb128	260
	.uleb128	35
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L58
	.4byte		.L90
	.section	.debug_info,,n
	.sleb128	0
.L82:
	.section	.debug_info,,n
.L95:
	.sleb128	2
	.4byte		.L92-.L2
	.byte		"PduR_UpChangeParameter"
	.byte		0
	.4byte		.L57
	.uleb128	329
	.uleb128	33
	.4byte		.L58
	.byte		0x1
	.byte		0x1
	.4byte		.L93
	.4byte		.L94
	.sleb128	3
	.4byte		.L57
	.uleb128	329
	.uleb128	33
	.byte		"id"
	.byte		0
	.4byte		.L62
	.4byte		.L96
	.sleb128	3
	.4byte		.L57
	.uleb128	329
	.uleb128	33
	.byte		"parameter"
	.byte		0
	.4byte		.L97
	.4byte		.L100
	.sleb128	3
	.4byte		.L57
	.uleb128	329
	.uleb128	33
	.byte		"value"
	.byte		0
	.4byte		.L73
	.4byte		.L101
	.sleb128	4
	.4byte		.L57
	.uleb128	329
	.uleb128	33
	.byte		"ApiId"
	.byte		0
	.4byte		.L72
	.sleb128	2
	.byte		0x90
	.uleb128	6
	.sleb128	4
	.4byte		.L57
	.uleb128	329
	.uleb128	33
	.byte		"MaxId"
	.byte		0
	.4byte		.L73
	.sleb128	2
	.byte		0x90
	.uleb128	7
	.sleb128	3
	.4byte		.L57
	.uleb128	329
	.uleb128	33
	.byte		"IfRxRoutingArray"
	.byte		0
	.4byte		.L74
	.4byte		.L102
.L103:
	.sleb128	5
	.4byte		.L57
	.uleb128	342
	.uleb128	35
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L58
	.4byte		.L104
	.section	.debug_info,,n
	.sleb128	0
.L92:
	.section	.debug_info,,n
.L109:
	.sleb128	2
	.4byte		.L106-.L2
	.byte		"PduR_UpCancelReceive"
	.byte		0
	.4byte		.L57
	.uleb128	408
	.uleb128	33
	.4byte		.L58
	.byte		0x1
	.byte		0x1
	.4byte		.L107
	.4byte		.L108
	.sleb128	3
	.4byte		.L57
	.uleb128	408
	.uleb128	33
	.byte		"id"
	.byte		0
	.4byte		.L62
	.4byte		.L110
	.sleb128	4
	.4byte		.L57
	.uleb128	408
	.uleb128	33
	.byte		"ApiId"
	.byte		0
	.4byte		.L72
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	4
	.4byte		.L57
	.uleb128	408
	.uleb128	33
	.byte		"MaxId"
	.byte		0
	.4byte		.L73
	.sleb128	2
	.byte		0x90
	.uleb128	5
	.sleb128	3
	.4byte		.L57
	.uleb128	408
	.uleb128	33
	.byte		"IfRxRoutingArray"
	.byte		0
	.4byte		.L74
	.4byte		.L111
.L112:
	.sleb128	5
	.4byte		.L57
	.uleb128	419
	.uleb128	35
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L58
	.4byte		.L113
	.section	.debug_info,,n
	.sleb128	0
.L106:
	.section	.debug_info,,n
.L114:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L115
	.uleb128	509
	.uleb128	60
	.byte		"PduR_TargetFunctionsRef"
	.byte		0
	.4byte		.L116
	.section	.debug_info,,n
	.section	.debug_info,,n
.L77:
	.sleb128	7
	.4byte		.L123
	.uleb128	53
	.uleb128	1
	.4byte		.L124-.L2
	.uleb128	4
	.section	.debug_info,,n
.L36:
	.sleb128	8
	.byte		"TargetId"
	.byte		0
	.4byte		.L63
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L37:
	.sleb128	8
	.byte		"TargetFunction_Index"
	.byte		0
	.4byte		.L59
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L124:
	.section	.debug_info,,n
.L70:
	.sleb128	9
	.4byte		.L125
	.uleb128	69
	.uleb128	1
	.4byte		.L126-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L32:
	.sleb128	8
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L127
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L33:
	.sleb128	8
	.byte		"SduLength"
	.byte		0
	.4byte		.L128
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L126:
	.section	.debug_info,,n
.L99:
	.sleb128	10
	.4byte		.L129
	.uleb128	59
	.uleb128	1
	.4byte		.L130-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"TP_STMIN"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"TP_BS"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"TP_BC"
	.byte		0
	.sleb128	2
	.sleb128	0
.L130:
	.section	.debug_info,,n
.L60:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L59:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L60
.L58:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L59
.L65:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L64:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L65
.L63:
	.sleb128	13
	.byte		"PduIdType"
	.byte		0
	.4byte		.L64
	.section	.debug_info,,n
.L62:
	.sleb128	14
	.4byte		.L63
.L69:
	.sleb128	13
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L70
	.section	.debug_info,,n
.L68:
	.sleb128	15
	.4byte		.L69
.L67:
	.sleb128	14
	.4byte		.L68
.L72:
	.sleb128	14
	.4byte		.L59
.L73:
	.sleb128	14
	.4byte		.L64
.L76:
	.sleb128	13
	.byte		"PduR_MainRtA"
	.byte		0
	.4byte		.L77
.L75:
	.sleb128	14
	.4byte		.L76
.L74:
	.sleb128	15
	.4byte		.L75
.L98:
	.sleb128	13
	.byte		"TPParameterType"
	.byte		0
	.4byte		.L99
.L97:
	.sleb128	14
	.4byte		.L98
	.section	.debug_info,,n
.L121:
	.sleb128	16
	.4byte		.L122-.L2
	.byte		0x1
	.sleb128	0
.L122:
.L120:
	.sleb128	15
	.4byte		.L121
.L119:
	.sleb128	13
	.byte		"TargetFunction"
	.byte		0
	.4byte		.L120
.L118:
	.sleb128	14
	.4byte		.L119
.L117:
	.sleb128	15
	.4byte		.L118
.L116:
	.sleb128	14
	.4byte		.L117
.L127:
	.sleb128	15
	.4byte		.L59
.L128:
	.sleb128	13
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L64
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L66:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),5
	.d2locend
.L71:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo4),4
	.d2locend
.L78:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),7
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo6),0
	.d2locend
.L80:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo9),3
	.d2locend
.L86:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locend
.L87:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo14),5
	.d2locend
.L88:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo15),6
	.d2locend
.L90:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo17),3
	.d2locend
.L96:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locend
.L100:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo20),4
	.d2locend
.L101:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo21),5
	.d2locend
.L102:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo20),8
	.d2locend
.L104:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo22),3
	.d2locend
.L110:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locend
.L111:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo25),6
	.d2locend
.L113:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "PduR_UpCancelReceive"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.end
	.wrcm.nelem "PduR_UpChangeParameter"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.end
	.wrcm.nelem "PduR_UpCancelTransmit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.end
	.wrcm.nelem "PduR_UpTransmit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\PduR_UpTransmit.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\PduR_UpTransmit.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\PduR_UpTransmit.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\PduR_UpTransmit.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\PduR_UpTransmit.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\PduR_UpTransmit.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\PduR\ssc\make\..\src\PduR_UpTransmit.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
