#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"PduR_LoIfNonGw.c"
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
# FUNC(void, PDUR_CODE) PduR_LoIfRxIndication(
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\src\\PduR_LoIfNonGw.c"
        .d2line         66,23
#$$ld
.L49:

#$$bf	PduR_LoIfRxIndication,interprocedural,rasave,nostackparams
	.globl		PduR_LoIfRxIndication
	.d2_cfa_start __cie
PduR_LoIfRxIndication:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# IfRxRoutingArray=r0
	.d2_cfa_offset    108,-1
	mr		r5,r3		# id=r5 id=r3
	mr		r0,r7		# IfRxRoutingArray=r0 IfRxRoutingArray=r7
	.d2prologue_end
#                      CONST(PduIdType,AUTOMATIC) id,
#                      CONSTP2VAR(PduInfoType, AUTOMATIC,PDUR_APPL_DATA) SduPtr,
#                      CONST(uint8,AUTOMATIC) ApiId,
#                      CONST(uint16,AUTOMATIC) MaxId,
#                      CONST(PduR_MainRtA,AUTOMATIC) IfRxRoutingArray[] )
# {
# #if(PDUR_DEV_ERROR_DETECT == STD_ON)
#     VAR(boolean,AUTOMATIC) DetError = FALSE;
# #endif
# 
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#     VAR(boolean,AUTOMATIC) GoOn = TRUE;
# #endif
# 
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     if((NULL_PTR == SduPtr))
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         ApiId,
#                         PDUR_E_NULL_POINTER);
#         DetError = TRUE;
#     }
#     if((id >= MaxId)||
#        (IfRxRoutingArray[id].TargetFunction_Index ==NULL_INDEX))
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         ApiId,
#                         PDUR_E_PDU_ID_INVALID);
#         DetError = TRUE;
#     }
#     if(FALSE==DetError)
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
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#             if(IfRxRoutingArray[id].TargetFunction_Index<=PDUR_MAX_APIS_OFFSET)
#             {
#                 /* MISRA RULE 11.1 VIOLATION:
#                 This violation is for better execution time*/
#                 /* PRQA S 0313 L1 */
#                 ((IfRxIndicationFunctionWithDet)PduR_TargetFunctionsRef
#                 [IfRxRoutingArray[id].TargetFunction_Index])
#                 (IfRxRoutingArray[id].TargetId,SduPtr,ApiId);
#                 /* PRQA L:L1 */
#             }
#             else
#             {
#                 /* MISRA RULE 11.1 VIOLATION:
#                 This violation is for better execution time*/
#                 /* PRQA S 0313 L1 */
#                 ((IfRxIndicationFunction)PduR_TargetFunctionsRef
#                 [IfRxRoutingArray[id].TargetFunction_Index])
#                 (IfRxRoutingArray[id].TargetId,SduPtr);
#                 /* PRQA L:L1 */
#             }
# #else
#             /* MISRA RULE 11.1 VIOLATION:
#             This violation is for better execution time*/
#             /* PRQA S 0313 L1 */
#             ((IfRxIndicationFunction)PduR_TargetFunctionsRef
	.d2line		135
.Llo5:
	lis		r3,PduR_TargetFunctionsRef@ha
.Llo2:
	lwz		r3,PduR_TargetFunctionsRef@l(r3)
.Llo3:
	rlwinm		r5,r5,2,14,29		# id=r5 id=r5
	add		r7,r5,r0		# id=r5 IfRxRoutingArray=r0
	lbz		r6,2(r7)
	rlwinm		r6,r6,2,22,29
	lwzx		r3,r3,r6
	mtspr		ctr,r3
	lhzx		r3,r5,r0		# id=r5 IfRxRoutingArray=r0
	mr		r0,r4		# SduPtr=r0 SduPtr=r4
.Llo6:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
#             [IfRxRoutingArray[id].TargetFunction_Index])
#             (IfRxRoutingArray[id].TargetId,SduPtr);
#             /* PRQA L:L1 */
# #endif
#         }
#     }
#     return;
# 
# }
	.d2line		144
	.d2epilogue_begin
.Llo4:
	lwz		r0,20(r1)		# IfRxRoutingArray=r0
	mtspr		lr,r0		# IfRxRoutingArray=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L50:
	.type		PduR_LoIfRxIndication,@function
	.size		PduR_LoIfRxIndication,.-PduR_LoIfRxIndication
# Number of nodes = 28

# Allocations for PduR_LoIfRxIndication
#	?a4		id
#	?a5		SduPtr
#	not allocated	ApiId
#	not allocated	MaxId
#	?a6		IfRxRoutingArray
# FUNC(void, PDUR_CODE) PduR_LoIfDirectTxConfirmation(CONST(PduIdType,AUTOMATIC) id,
	.align		2
	.section	.text_vle
        .d2line         161,23
#$$ld
.L74:

#$$bf	PduR_LoIfDirectTxConfirmation,interprocedural,rasave,nostackparams
	.globl		PduR_LoIfDirectTxConfirmation
	.d2_cfa_start __cie
PduR_LoIfDirectTxConfirmation:
.Llo7:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# IfTxRoutingArray=r0
	.d2_cfa_offset    108,-1
	mr		r4,r3		# id=r4 id=r3
	mr		r0,r6		# IfTxRoutingArray=r0 IfTxRoutingArray=r6
	.d2prologue_end
#         CONST(uint8,AUTOMATIC) ApiId,
#         CONST(uint16,AUTOMATIC) MaxId,
#         CONST(PduR_MainRtA,AUTOMATIC) IfTxRoutingArray[]
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#         ,CONST(uint8,AUTOMATIC) SourceTargetFunction
# #endif /* PDUR_ENABLE_ROUTING_GROUPS */
# )
# {
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#     VAR(boolean,AUTOMATIC) GoOn = TRUE;
# #endif
# 
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     if((id >= MaxId)||
#        (IfTxRoutingArray[id].TargetFunction_Index ==NULL_INDEX))
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
# 
#             /* MISRA RULE 11.1 VIOLATION:
#             This violation is for better execution time*/
#             /* PRQA S 0313 L1 */
#             ((IfTxConfirmationFunction)PduR_TargetFunctionsRef
	.d2line		198
.Llo11:
	lis		r3,PduR_TargetFunctionsRef@ha
.Llo8:
	lwz		r3,PduR_TargetFunctionsRef@l(r3)
.Llo9:
	rlwinm		r4,r4,2,14,29		# id=r4 id=r4
	add		r6,r4,r0		# id=r4 IfTxRoutingArray=r0
	lbz		r5,2(r6)
	rlwinm		r5,r5,2,22,29
	lwzx		r3,r3,r5
	mtspr		ctr,r3
	lhzx		r3,r4,r0		# id=r4 IfTxRoutingArray=r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
#             [IfTxRoutingArray[id].TargetFunction_Index])
#              (IfTxRoutingArray[id].TargetId);
#             /* PRQA L:L1 */
#         }
#     }
#     return;
# }
	.d2line		205
	.d2epilogue_begin
.Llo10:
	lwz		r0,20(r1)		# IfTxRoutingArray=r0
	mtspr		lr,r0		# IfTxRoutingArray=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L75:
	.type		PduR_LoIfDirectTxConfirmation,@function
	.size		PduR_LoIfDirectTxConfirmation,.-PduR_LoIfDirectTxConfirmation
# Number of nodes = 26

# Allocations for PduR_LoIfDirectTxConfirmation
#	?a4		id
#	not allocated	ApiId
#	not allocated	MaxId
#	?a5		IfTxRoutingArray
# FUNC(void, PDUR_CODE) PduR_LoIfTriggeredTxConfirmation(CONST(PduIdType,AUTOMATIC) id,
	.align		2
	.section	.text_vle
        .d2line         223,23
#$$ld
.L81:

#$$bf	PduR_LoIfTriggeredTxConfirmation,interprocedural,rasave,nostackparams
	.globl		PduR_LoIfTriggeredTxConfirmation
	.d2_cfa_start __cie
PduR_LoIfTriggeredTxConfirmation:
.Llo12:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# id=r3 id=r3
	mr		r6,r6		# IfTxRoutingArray=r6 IfTxRoutingArray=r6
	.d2prologue_end
#         CONST(uint8,AUTOMATIC) ApiId,
#         CONST(uint16,AUTOMATIC) MaxId,
#         CONST(PduR_MainRtA,AUTOMATIC) IfTxRoutingArray[]
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#         ,CONST(uint8,AUTOMATIC) SourceTargetFunction
# #endif /* PDUR_ENABLE_ROUTING_GROUPS */
# )
# {
# 
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#     VAR(boolean,AUTOMATIC) GoOn = TRUE;
# #endif
# 
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     if((id >= MaxId)||
#        (IfTxRoutingArray[id].TargetFunction_Index ==NULL_INDEX)||
#        ((PduR_TargetFunctionsRef[IfTxRoutingArray[id].TargetFunction_Index + PDUR_UPIF_TXCONFIRMATION_OFFSET]) ==
#         NULL_FUNCT_PTR_PDUR))
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
# 
#             /* MISRA RULE 11.1 VIOLATION:
#             This violation is for better execution time*/
#             /* PRQA S 0313 L1 */
#             ((IfTxConfirmationFunction)PduR_TargetFunctionsRef
	.d2line		263
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
#$$rs 0 s
	bcctrl		20,0
#             [IfTxRoutingArray[id].TargetFunction_Index+PDUR_UPIF_TXCONFIRMATION_OFFSET])
#             (IfTxRoutingArray[id].TargetId);
#             /* PRQA L:L1 */
#         }
#     }
#     return;
# }
	.d2line		270
	.d2epilogue_begin
.Llo14:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L82:
	.type		PduR_LoIfTriggeredTxConfirmation,@function
	.size		PduR_LoIfTriggeredTxConfirmation,.-PduR_LoIfTriggeredTxConfirmation
# Number of nodes = 28

# Allocations for PduR_LoIfTriggeredTxConfirmation
#	?a4		id
#	not allocated	ApiId
#	not allocated	MaxId
#	?a5		IfTxRoutingArray
# FUNC(Std_ReturnType, PDUR_CODE)PduR_LoIfTriggerTransmit(
	.align		2
	.section	.text_vle
        .d2line         291,32
#$$ld
.L88:

#$$bf	PduR_LoIfTriggerTransmit,interprocedural,rasave,nostackparams
	.globl		PduR_LoIfTriggerTransmit
	.d2_cfa_start __cie
PduR_LoIfTriggerTransmit:
.Llo15:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# IfTxRoutingArray=r0
	.d2_cfa_offset    108,-1
	mr		r5,r3		# id=r5 id=r3
	mr		r0,r7		# IfTxRoutingArray=r0 IfTxRoutingArray=r7
	.d2prologue_end
#                           CONST(PduIdType,AUTOMATIC) id,
#                           CONSTP2VAR(PduInfoType, AUTOMATIC,PDUR_APPL_DATA) SduPtr,
#                           CONST(uint8,AUTOMATIC) ApiId,
#                           CONST(uint16,AUTOMATIC) MaxId,
#                           CONST(PduR_MainRtA,AUTOMATIC) IfTxRoutingArray[]
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#                           ,CONST(uint8,AUTOMATIC) SourceTargetFunction
# #endif /* PDUR_ENABLE_ROUTING_GROUPS */
# )
# {
#     /* PRQA S 2981 1 *//* ReturnValue is used if pre-compile parameters are switched on */
#     VAR(Std_ReturnType,AUTOMATIC) ReturnValue = E_OK;
	.d2line		303
.Llo19:
	diab.li		r3,0		# ReturnValue=r3
# 
# #if(PDUR_ENABLE_ROUTING_GROUPS == STD_ON)
#     VAR(boolean,AUTOMATIC) GoOn = TRUE;
# #endif
# 
# #if PDUR_DEV_ERROR_DETECT == STD_ON
#     if((NULL_PTR == SduPtr))
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         ApiId,
#                         PDUR_E_NULL_POINTER);
#         ReturnValue = E_NOT_OK;
#     }
#     if((id >= MaxId)||
#        (IfTxRoutingArray[id].TargetFunction_Index ==NULL_INDEX) ||
#        ((PduR_TargetFunctionsRef[IfTxRoutingArray[id].TargetFunction_Index ]) ==
#         NULL_FUNCT_PTR_PDUR))
#     {
#         (void)Det_ReportError(PDUR_MODULE_ID,
#                         PDUR_INSTANCE_ID,
#                         ApiId,
#                         PDUR_E_PDU_ID_INVALID);
#         ReturnValue = E_NOT_OK;
#     }
#     if(E_OK==ReturnValue)
# #endif /* PDUR_DEV_ERROR_DETECT = ON */
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
#             This violation is for better execution time*/
#             /* PRQA S 0313 L1 */
#             ReturnValue = ((IfTriggerTransmitFunction)PduR_TargetFunctionsRef
	.d2line		348
.Llo16:
	lis		r3,PduR_TargetFunctionsRef@ha		# ReturnValue=r3
.Llo21:
	lwz		r3,PduR_TargetFunctionsRef@l(r3)		# ReturnValue=r3 ReturnValue=r3
.Llo17:
	rlwinm		r5,r5,2,14,29		# id=r5 id=r5
	add		r7,r5,r0		# id=r5 IfTxRoutingArray=r0
	lbz		r6,2(r7)
	rlwinm		r6,r6,2,22,29
	lwzx		r3,r3,r6		# ReturnValue=r3 ReturnValue=r3
.Llo22:
	mtspr		ctr,r3		# ReturnValue=ctr
	lhzx		r3,r5,r0		# ReturnValue=r3 id=r5 IfTxRoutingArray=r0
	mr		r0,r4		# SduPtr=r0 SduPtr=r4
.Llo20:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
#             [IfTxRoutingArray[id].TargetFunction_Index])
#             (IfTxRoutingArray[id].TargetId,SduPtr);
#             /* PRQA L:L1 */
#         }
#     }
#     return ReturnValue;
	.d2line		354
.Llo18:
	rlwinm		r3,r3,0,24,31		# ReturnValue=r3 ReturnValue=r3
# }
	.d2line		355
	.d2epilogue_begin
.Llo23:
	lwz		r0,20(r1)		# IfTxRoutingArray=r0
	mtspr		lr,r0		# IfTxRoutingArray=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L89:
	.type		PduR_LoIfTriggerTransmit,@function
	.size		PduR_LoIfTriggerTransmit,.-PduR_LoIfTriggerTransmit
# Number of nodes = 35

# Allocations for PduR_LoIfTriggerTransmit
#	?a4		id
#	?a5		SduPtr
#	not allocated	ApiId
#	not allocated	MaxId
#	?a6		IfTxRoutingArray
#	?a7		ReturnValue

# Allocations for module
	.section	.text_vle
	.0byte		.L97
	.section	.text_vle
#$$ld
.L5:
.L108:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L106:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_Types.h"
.L98:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_i.h"
.L51:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\src\\PduR_LoIfNonGw.c"
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
	.uleb128	12
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	38
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\src\\PduR_LoIfNonGw.c"
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
.L52:
	.sleb128	2
	.4byte		.L48-.L2
	.byte		"PduR_LoIfRxIndication"
	.byte		0
	.4byte		.L51
	.uleb128	66
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L49
	.4byte		.L50
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L51
	.uleb128	66
	.uleb128	23
	.byte		"id"
	.byte		0
	.4byte		.L53
	.4byte		.L57
	.sleb128	3
	.4byte		.L51
	.uleb128	66
	.uleb128	23
	.byte		"SduPtr"
	.byte		0
	.4byte		.L58
	.4byte		.L62
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L51
	.uleb128	66
	.uleb128	23
	.byte		"ApiId"
	.byte		0
	.4byte		.L63
	.sleb128	2
	.byte		0x90
	.uleb128	5
	.sleb128	4
	.4byte		.L51
	.uleb128	66
	.uleb128	23
	.byte		"MaxId"
	.byte		0
	.4byte		.L66
	.sleb128	2
	.byte		0x90
	.uleb128	6
	.sleb128	3
	.4byte		.L51
	.uleb128	66
	.uleb128	23
	.byte		"IfRxRoutingArray"
	.byte		0
	.4byte		.L67
	.4byte		.L71
	.section	.debug_info,,n
	.sleb128	0
.L48:
	.section	.debug_info,,n
.L76:
	.sleb128	2
	.4byte		.L73-.L2
	.byte		"PduR_LoIfDirectTxConfirmation"
	.byte		0
	.4byte		.L51
	.uleb128	161
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L74
	.4byte		.L75
	.sleb128	3
	.4byte		.L51
	.uleb128	161
	.uleb128	23
	.byte		"id"
	.byte		0
	.4byte		.L53
	.4byte		.L77
	.sleb128	4
	.4byte		.L51
	.uleb128	161
	.uleb128	23
	.byte		"ApiId"
	.byte		0
	.4byte		.L63
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	4
	.4byte		.L51
	.uleb128	161
	.uleb128	23
	.byte		"MaxId"
	.byte		0
	.4byte		.L66
	.sleb128	2
	.byte		0x90
	.uleb128	5
	.sleb128	3
	.4byte		.L51
	.uleb128	161
	.uleb128	23
	.byte		"IfTxRoutingArray"
	.byte		0
	.4byte		.L67
	.4byte		.L78
	.section	.debug_info,,n
	.sleb128	0
.L73:
	.section	.debug_info,,n
.L83:
	.sleb128	2
	.4byte		.L80-.L2
	.byte		"PduR_LoIfTriggeredTxConfirmation"
	.byte		0
	.4byte		.L51
	.uleb128	223
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L81
	.4byte		.L82
	.sleb128	3
	.4byte		.L51
	.uleb128	223
	.uleb128	23
	.byte		"id"
	.byte		0
	.4byte		.L53
	.4byte		.L84
	.sleb128	4
	.4byte		.L51
	.uleb128	223
	.uleb128	23
	.byte		"ApiId"
	.byte		0
	.4byte		.L63
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	4
	.4byte		.L51
	.uleb128	223
	.uleb128	23
	.byte		"MaxId"
	.byte		0
	.4byte		.L66
	.sleb128	2
	.byte		0x90
	.uleb128	5
	.sleb128	3
	.4byte		.L51
	.uleb128	223
	.uleb128	23
	.byte		"IfTxRoutingArray"
	.byte		0
	.4byte		.L67
	.4byte		.L85
	.section	.debug_info,,n
	.sleb128	0
.L80:
	.section	.debug_info,,n
.L91:
	.sleb128	5
	.4byte		.L87-.L2
	.byte		"PduR_LoIfTriggerTransmit"
	.byte		0
	.4byte		.L51
	.uleb128	291
	.uleb128	32
	.4byte		.L90
	.byte		0x1
	.byte		0x1
	.4byte		.L88
	.4byte		.L89
	.sleb128	3
	.4byte		.L51
	.uleb128	291
	.uleb128	32
	.byte		"id"
	.byte		0
	.4byte		.L53
	.4byte		.L92
	.sleb128	3
	.4byte		.L51
	.uleb128	291
	.uleb128	32
	.byte		"SduPtr"
	.byte		0
	.4byte		.L58
	.4byte		.L93
	.sleb128	4
	.4byte		.L51
	.uleb128	291
	.uleb128	32
	.byte		"ApiId"
	.byte		0
	.4byte		.L63
	.sleb128	2
	.byte		0x90
	.uleb128	5
	.sleb128	4
	.4byte		.L51
	.uleb128	291
	.uleb128	32
	.byte		"MaxId"
	.byte		0
	.4byte		.L66
	.sleb128	2
	.byte		0x90
	.uleb128	6
	.sleb128	3
	.4byte		.L51
	.uleb128	291
	.uleb128	32
	.byte		"IfTxRoutingArray"
	.byte		0
	.4byte		.L67
	.4byte		.L94
	.section	.debug_info,,n
.L95:
	.sleb128	6
	.4byte		.L51
	.uleb128	303
	.uleb128	35
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L90
	.4byte		.L96
	.section	.debug_info,,n
	.sleb128	0
.L87:
	.section	.debug_info,,n
.L97:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L98
	.uleb128	509
	.uleb128	60
	.byte		"PduR_TargetFunctionsRef"
	.byte		0
	.4byte		.L99
	.section	.debug_info,,n
	.section	.debug_info,,n
.L70:
	.sleb128	8
	.4byte		.L106
	.uleb128	53
	.uleb128	1
	.4byte		.L107-.L2
	.uleb128	4
	.section	.debug_info,,n
.L36:
	.sleb128	9
	.byte		"TargetId"
	.byte		0
	.4byte		.L54
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L37:
	.sleb128	9
	.byte		"TargetFunction_Index"
	.byte		0
	.4byte		.L64
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L107:
	.section	.debug_info,,n
.L61:
	.sleb128	10
	.4byte		.L108
	.uleb128	69
	.uleb128	1
	.4byte		.L109-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L32:
	.sleb128	9
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L110
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L33:
	.sleb128	9
	.byte		"SduLength"
	.byte		0
	.4byte		.L111
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L109:
	.section	.debug_info,,n
.L56:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L55:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L56
.L54:
	.sleb128	12
	.byte		"PduIdType"
	.byte		0
	.4byte		.L55
	.section	.debug_info,,n
.L53:
	.sleb128	13
	.4byte		.L54
.L60:
	.sleb128	12
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L61
	.section	.debug_info,,n
.L59:
	.sleb128	14
	.4byte		.L60
.L58:
	.sleb128	13
	.4byte		.L59
.L65:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L64:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L65
.L63:
	.sleb128	13
	.4byte		.L64
.L66:
	.sleb128	13
	.4byte		.L55
.L69:
	.sleb128	12
	.byte		"PduR_MainRtA"
	.byte		0
	.4byte		.L70
.L68:
	.sleb128	13
	.4byte		.L69
.L67:
	.sleb128	14
	.4byte		.L68
.L90:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L64
	.section	.debug_info,,n
.L104:
	.sleb128	15
	.4byte		.L105-.L2
	.byte		0x1
	.sleb128	0
.L105:
.L103:
	.sleb128	14
	.4byte		.L104
.L102:
	.sleb128	12
	.byte		"TargetFunction"
	.byte		0
	.4byte		.L103
.L101:
	.sleb128	13
	.4byte		.L102
.L100:
	.sleb128	14
	.4byte		.L101
.L99:
	.sleb128	13
	.4byte		.L100
.L110:
	.sleb128	14
	.4byte		.L64
.L111:
	.sleb128	12
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L55
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L57:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),5
	.d2locend
.L62:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo4),4
	.d2locend
.L71:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),7
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo6),0
	.d2locend
.L77:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),4
	.d2locend
.L78:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo11),6
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo10),0
	.d2locend
.L84:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locend
.L85:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo14),6
	.d2locend
.L92:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),5
	.d2locend
.L93:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo18),4
	.d2locend
.L94:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo19),7
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo20),0
	.d2locend
.L96:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo23),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "PduR_LoIfTriggerTransmit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.end
	.wrcm.nelem "PduR_LoIfTriggeredTxConfirmation"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.end
	.wrcm.nelem "PduR_LoIfDirectTxConfirmation"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.end
	.wrcm.nelem "PduR_LoIfRxIndication"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\PduR_LoIfNonGw.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\PduR_LoIfNonGw.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\PduR_LoIfNonGw.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\PduR_LoIfNonGw.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\PduR_LoIfNonGw.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\PduR_LoIfNonGw.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\PduR\ssc\make\..\src\PduR_LoIfNonGw.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
