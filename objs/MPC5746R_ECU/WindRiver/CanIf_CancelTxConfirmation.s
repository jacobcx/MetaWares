#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_CancelTxConfirmation.c"
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
# FUNC( void, CANIF_CODE )CanIf_ProcessCancelTxConf
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_CancelTxConfirmation.c"
        .d2line         158,25
#$$ld
.L199:

#$$bf	CanIf_ProcessCancelTxConf,interprocedural,nostackparams

# Regs written: r0,r1
	.globl		CanIf_ProcessCancelTxConf
	.d2_cfa_start __cie
CanIf_ProcessCancelTxConf:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     /* PRQA S 3206 2 */ /* Usage is configuration dependent */
#     CONST( uint8, AUTOMATIC )CanDriver_u8,
#     CONSTP2CONST( Can_PduType, AUTOMATIC, CANIF_APPL_CONST)PduInfoPtr
# )
# {
# #if ( CANIF_TX_BUFFERING == STD_ON )
#     /* Error Status */
#     VAR( uint8, AUTOMATIC )CanIfStatus_u8;
# 
#     /* Buffer Index where Pdu is to be buffered */
#     VAR( uint8, AUTOMATIC )BufferIndx_u8;
# 
#     /* Pdu Id of the TxPdu to be buffered */
#     VAR( PduIdType, AUTOMATIC )CanTxPduId;
# 
#     /* Logical Hth Id the TxPDU belongs to */
#     VAR( CanIf_HthIndexType, AUTOMATIC )HthIdx;
# 
#     /* Controller Id */
#     VAR( uint8, AUTOMATIC )ContrllrId_u8;
# 
#     /* Holds the status whther the Pdu is buffered or not */
#     VAR( boolean, AUTOMATIC )PduBuffered_b = CANIF_FALSE;
# 
#     /* Pointer to hold handle to buffer Configuration */
#     P2CONST(CanIfBufferConfig_t, AUTOMATIC, CANIF_APPL_DATA)TxBufferLoc_p;
# 
#     /* Pointer to hold the Tx buffer location */
#     P2VAR(CanIfTxBufferRAM_t, AUTOMATIC, CANIF_APPL_DATA)TxBufferRAM_p;
# 
# #endif /* (CANIF_TX_BUFFERING == STD_ON) */
# 
#     /* Check if the CanIf module has been initialized */
#     if( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 )
#     {
# 
# /* If Development Error Detection is enabled */
# #if( CANIF_DEV_ERROR_DETECT == STD_ON )
#         /* REQ: [CANIF427] */
#         /* Report DET Error */
#         (void)Det_ReportError( CANIF_MODULE_ID,
#                          CANIF_INSTANCE_ID,
#                          CANIF_SID_CANCEL_TX_CONFIRMATION,
#                          CANIF_E_UNINIT );
# #endif /* CANIF_DEV_ERROR_DETECT == STD_ON */
#         /* REQ: [CANIF426] */
#         /* If CanIf was not initialized the function shall not execute Tx cancellation */
# #if ( CANIF_TX_BUFFERING == STD_ON )
#         CanIfStatus_u8 = E_NOT_OK;
# #endif
#     }
# 
# /* If Development Error Detection is enabled */
# #if( CANIF_DEV_ERROR_DETECT == STD_ON )
#     else
#     {
#         /* Get the DET Error status */
# #if (CANIF_TX_BUFFERING == STD_ON)
#             CanIfStatus_u8 = CanIf_CancelTxConfDETCheck(PduInfoPtr);
# #else
#             (void)CanIf_CancelTxConfDETCheck(PduInfoPtr);
# #endif /* CANIF_TX_BUFFERING == STD_ON */
# 
#     }
# #endif /* CANIF_DEV_ERROR_DETECT == STD_ON */
# 
# /* REQ: [DEV_CANIF20075] Optimize for small footprint */
# /* The remaining activity in this function is to store canceled Tx PDU,
#    if possible.
#    Only do this if Tx buffering is enabled.
#    REQ: [CANIF054]
# */
# #if (CANIF_TX_BUFFERING == STD_ON)
# 
#     /* No DET Error present */
#     if ( E_OK == CanIfStatus_u8 )
#     {
#         /* REQ: [CANIF033] */
#         /* Enter Critical Section */
#         SchM_Enter_CanIf(  SCHM_CANIF_EXCLUSIVE_AREA_0 );
# 
#         /* Get the CanTxPduId */
#         CanTxPduId = PduInfoPtr->swPduHandle;
# 
#         /* Logical Hth for the Tx L-PDU */
#         HthIdx = CanIf_TxPduConfigInfo_p[CanTxPduId].CanIfBufferCfg->HthIndex;
# 
#         /* Get Handle to buffer Config*/
#         TxBufferLoc_p = CanIf_TxPduConfigInfo_p[CanTxPduId].CanIfBufferCfg;
# 
#         /* The controller to which the Hth belongs */
#         ContrllrId_u8 = CanIf_HthControllerConfig_p[ HthIdx ].CanIfCanControllerIdRef_u8;
# 
#         /* Transmit cancellation is permitted only if controller mode
#         is CANIF_CS_STARTED and Pdu mode is CANIF_ONLINE */
#         if( (CANIF_CS_STARTED == CanIf_ControllerMode_a[ContrllrId_u8]) &&
#             (CANIF_ONLINE == CanIf_PduMode_a[ContrllrId_u8])
#           )
#         {
#             VAR( uint8, AUTOMATIC )CanIfCount_u8;
#             VAR( boolean, AUTOMATIC ) CanIfEmptyBufferFound = CANIF_FALSE;
#             VAR( uint8, AUTOMATIC ) CanIfEmptyBufferIndex = TxBufferLoc_p->CanIfBufferSize;
# 
#             TxBufferRAM_p = TxBufferLoc_p->CanIfBufferInfo;
#             /* Check whether the PduInfoPtr is already buffered */
#             for (CanIfCount_u8 = 0; CanIfCount_u8 < TxBufferLoc_p->CanIfBufferSize; CanIfCount_u8++ )
#             {
#                 if ( (TxBufferRAM_p[ CanIfCount_u8 ].SwLPduHandle == CanTxPduId) && (TxBufferRAM_p[ CanIfCount_u8 ].DataLength_u8 > 0 ) )
#                 {
#                     /* The PDU is already buffered for transmission*/
#                     PduBuffered_b = CANIF_TRUE;
#                 }/* End if ( TxBufferRAM_p[ CanIfCount_u8 ].SwLPduHandle == CanTxPduId ) */
# 
#                 if ( (CanIfEmptyBufferFound == CANIF_FALSE) && (TxBufferRAM_p[ CanIfCount_u8 ].DataLength_u8 == 0))
#                 {
#                     CanIfEmptyBufferFound = CANIF_TRUE;
#                     CanIfEmptyBufferIndex = CanIfCount_u8;
#                 }
# 
#                 if ((PduBuffered_b == CANIF_TRUE) && (CanIfEmptyBufferFound == CANIF_TRUE))
#                 {
#                     break;
#                 }
# 
#             }
# 
#             /* REQ: [CANIF176] Check whether PDU is already buffered, only store if not. */
#             if ( STD_OFF == PduBuffered_b )
#             {
#                 /* PDU is not buffered */
#                 /* Get the buffer status to see if new Pdu can be buffered */
#                 CanIfCount_u8 = CanIfEmptyBufferIndex;
# 
#                 /* REQ: [CANIF054] */
#                 /*if Available free space buffer Data*/
#                 if ( CanIfCount_u8 < TxBufferLoc_p->CanIfBufferSize )
#                 {
#                     VAR(uint8, AUTOMATIC) BufSize;
#                     VAR(uint8, AUTOMATIC) CopyCount;
#                     VAR(CanIf_P2VarUint8Type, AUTOMATIC) TxBufferDataPtr;
# 
#                     BufferIndx_u8 = CanIfCount_u8;
#                     /* Get the location where the message is to be buffered,
#                      * if not already done: Buffer according to Can ID
#                      */
# 
#                     /* Update the number of pending requests */
#                     CanIf_NoOfPendingRequests_pu8[ HthIdx ]++;
# 
#                     /* Free buffer available: Get the buffer index */
#                     CanIf_GetBufferIndex( CanIfCount_u8, &BufferIndx_u8, TxBufferRAM_p, PduInfoPtr->id );
# 
#                     if ((CANIF_FALSE != TxBufferLoc_p->IsDedicated))
#                     {
#                         BufSize = CanIf_TxPduConfigInfo_p[CanTxPduId].TxBufferDataSize;
#                         TxBufferDataPtr = *CanIf_TxPduConfigInfo_p[CanTxPduId].DataPtrPtr;
#                     }
#                     else
#                     {
#                         BufSize = TxBufferLoc_p->MaxDataSize;
#                         TxBufferDataPtr = TxBufferRAM_p[BufferIndx_u8].Data;
#                     }
# 
#                     CopyCount = (BufSize < PduInfoPtr->length) ? BufSize : PduInfoPtr->length;
# 
#                     /* Copy the Length, PduHandle and CanId to the buffer */
#                     TxBufferRAM_p[BufferIndx_u8].DataLength_u8 = CopyCount;
# 
#                     TxBufferRAM_p[BufferIndx_u8].SwLPduHandle = CanTxPduId;
# 
#                     TxBufferRAM_p[BufferIndx_u8].BufferedCanId = PduInfoPtr->id;
# 
#                     TxBufferRAM_p[BufferIndx_u8].HthIndex = HthIdx;
# 
#                     for( CanIfCount_u8 = 0; CanIfCount_u8 < CopyCount; CanIfCount_u8++ )
#                     {
#                         /* Buffer the CAN Data */
#                         TxBufferDataPtr[CanIfCount_u8] = PduInfoPtr->sdu[CanIfCount_u8];
# 
#                     }
# 
#                 }/* End if ( CanIfCount_u8 < TxBufferLoc_p->CanIfBufferSize ) */
#             }
# 
#             else
#             {
#                 /* L-PDU with same PduId has already been buffered.
#                 The cancelled L-PDU will be lost */
#                 /* Do Nothing */
# 
#             }/* End if ( STD_OFF == PduBuffered_b ) */
# 
#             /*Transmit the pending requests in priority order for each Hth */
#             CanIf_TxPendingRequests(CanDriver_u8, HthIdx);
# 
#         }/* if */
#         /* Leave Critical Section */
#         SchM_Exit_CanIf(  SCHM_CANIF_EXCLUSIVE_AREA_0 );
#     }
# 
# #endif /* (CANIF_TX_BUFFERING == STD_ON) */
# 
# }/* End of CanIf_ProcessCancelTxConf() */
	.d2line		362
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L200:
	.type		CanIf_ProcessCancelTxConf,@function
	.size		CanIf_ProcessCancelTxConf,.-CanIf_ProcessCancelTxConf
# Number of nodes = 4

# Allocations for CanIf_ProcessCancelTxConf
#	not allocated	CanDriver_u8
#	not allocated	PduInfoPtr
# FUNC( void, CANIF_CODE )CanIf_CancelTxConfirmation
	.align		2
	.section	.text_vle
        .d2line         72,25
#$$ld
.L213:

#$$bf	CanIf_CancelTxConfirmation,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		CanIf_CancelTxConfirmation
	.d2_cfa_start __cie
CanIf_CancelTxConfirmation:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# CanTxPduId=r0 CanTxPduId=r3
	mr		r4,r4		# PduInfoPtr=r4 PduInfoPtr=r4
	.d2prologue_end
	.section	.text_vle
.L225:
# (
# #if ( CANIF_TX_CANCELLATION_CBK_FORCE_403_API == STD_ON )
#     VAR(PduIdType,AUTOMATIC)                            CanTxPduId,
#     P2CONST( PduInfoType, AUTOMATIC, CANIF_APPL_CONST)  PduInfoPtr
# #else
#     P2CONST( Can_PduType, AUTOMATIC, CANIF_APPL_CONST)  PduInfoPtr
# #endif
# )
# {
# #if ( CANIF_TX_CANCELLATION_CBK_FORCE_403_API == STD_ON )
#     #if ( CANIF_SETDYNAMICTXID_API == STD_ON )
#     if(CanIf_TxPduConfigInfo_p[CanTxPduId].CanIfCanTxPduType == CANIF_TXPDU_DYNAMIC)
#     {
#         VAR( CanIf_HthIndexType, AUTOMATIC ) HthIdx;
# 
#         #if( CANIF_DEV_ERROR_DETECT == STD_ON )
#         (void)Det_ReportError(
#                 CANIF_MODULE_ID,
#                 CANIF_INSTANCE_ID,
#                 CANIF_SID_CANCEL_TX_CONFIRMATION,
#                 CANIF_E_PARAM_CANCEL_TX_CONFIRMATION_WITH_DYNAMIC_PDU_IN_AR403_API_MODE
#         );
#         #endif /*CANIF_DEV_ERROR_DETECT == STD_ON*/
# 
#         #if (CANIF_TX_BUFFERING == STD_ON)
#         HthIdx = CanIf_TxPduConfigInfo_p[CanTxPduId].CanIfBufferCfg->HthIndex;
# 
#         /* Enter Critical Section */
#         SchM_Enter_CanIf(  SCHM_CANIF_EXCLUSIVE_AREA_0 );
# 
#         CanIf_TxPendingRequests( CANIF_SINGLE_DRIVER_IND, HthIdx );
# 
#         /* Leave Critical Section */
#         SchM_Exit_CanIf(  SCHM_CANIF_EXCLUSIVE_AREA_0 );
#         /*Because of CanIf event driven control strategy it is important to */
#         #endif
#     }
#     else
#     #endif /* End #if (CANIF_SETDYNAMICTXID_API == STD_ON) */
#     {
#         VAR( Can_PduType, AUTOMATIC)  CanPduInfo;
# 
#         CanPduInfo.swPduHandle = CanTxPduId;
	.d2line		115
	sth		r0,16(r1)		# CanTxPduId=r0
#         CanPduInfo.sdu     =   PduInfoPtr->SduDataPtr;
	.d2line		116
	lwz		r3,0(r4)		# PduInfoPtr=r4
.Llo2:
	stw		r3,8(r1)
#         /* PRQA S 3746 2 */ /* Misra 10.1 Implicitly converting to a this underlying type has no information loss due to other AUTOSAR requirements.  */
#         /* Pdu on Can cannot be larger than 255 bytes, therefore casting to uint8 is safe */
#         CanPduInfo.length  =   (uint8)PduInfoPtr->SduLength;
	.d2line		119
	lhz		r3,4(r4)		# PduInfoPtr=r4
	stb		r3,18(r1)
#         CanPduInfo.id      =  (Can_IdType)CanIf_TxPduConfigInfo_p[CanTxPduId].CanIfCanTxPduIdCanId;
	.d2line		120
	lis		r3,CanIf_TxPduConfigInfo_p@ha
	lwz		r3,CanIf_TxPduConfigInfo_p@l(r3)
.Llo3:
	rlwinm		r0,r0,0,16,31		# CanTxPduId=r0 CanTxPduId=r0
	e_mulli		r0,r0,36		# CanTxPduId=r0 CanTxPduId=r0
	lwzx		r0,r3,r0		# CanTxPduId=r0
	stw		r0,12(r1)		# CanTxPduId=r0
# 
#         CanIf_ProcessCancelTxConf(
	.d2line		122
	diab.addi		r4,r1,8		# PduInfoPtr=r4
.Llo5:
	diab.li		r3,0
	bl		CanIf_ProcessCancelTxConf
	.section	.text_vle
.L226:
#                 CANIF_SINGLE_DRIVER_IND,
#                 &CanPduInfo
#         );
#     }
# #else /*Else branch of #if (CANIF_TX_CANCELLATION_CBK_FORCE_403_API == STD_ON)*/
#     CanIf_ProcessCancelTxConf(
#             CANIF_SINGLE_DRIVER_IND,
#             PduInfoPtr
#     );
# #endif  /*End #if (CANIF_TX_CANCELLATION_CBK_FORCE_403_API == STD_ON)*/
# 
# 
# 
# }/* End CanIf_CancelTxConfirmation() */
	.d2line		136
	.d2epilogue_begin
.Llo4:
	lwz		r0,36(r1)		# CanTxPduId=r0
	mtspr		lr,r0		# CanTxPduId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L214:
	.type		CanIf_CancelTxConfirmation,@function
	.size		CanIf_CancelTxConfirmation,.-CanIf_CancelTxConfirmation
# Number of nodes = 44

# Allocations for CanIf_CancelTxConfirmation
#	?a4		CanTxPduId
#	?a5		PduInfoPtr
#	SP,8		CanPduInfo

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L267:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L265:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L237:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L231:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\internal\\CanIf_Private.h"
.L201:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_CancelTxConfirmation.c"
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
	.uleb128	9
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_CancelTxConfirmation.c"
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
.L202:
	.sleb128	2
	.4byte		.L198-.L2
	.byte		"CanIf_ProcessCancelTxConf"
	.byte		0
	.4byte		.L201
	.uleb128	158
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L199
	.4byte		.L200
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L201
	.uleb128	158
	.uleb128	25
	.byte		"CanDriver_u8"
	.byte		0
	.4byte		.L203
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	3
	.4byte		.L201
	.uleb128	158
	.uleb128	25
	.byte		"PduInfoPtr"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L198:
	.section	.debug_info,,n
.L215:
	.sleb128	2
	.4byte		.L212-.L2
	.byte		"CanIf_CancelTxConfirmation"
	.byte		0
	.4byte		.L201
	.uleb128	72
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L213
	.4byte		.L214
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L201
	.uleb128	72
	.uleb128	25
	.byte		"CanTxPduId"
	.byte		0
	.4byte		.L216
	.4byte		.L219
	.sleb128	4
	.4byte		.L201
	.uleb128	72
	.uleb128	25
	.byte		"PduInfoPtr"
	.byte		0
	.4byte		.L220
	.4byte		.L224
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L228
	.4byte		.L225
	.4byte		.L226
	.section	.debug_info,,n
.L229:
	.sleb128	6
	.4byte		.L201
	.uleb128	113
	.uleb128	39
	.byte		"CanPduInfo"
	.byte		0
	.4byte		.L209
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L228:
	.section	.debug_info,,n
	.sleb128	0
.L212:
	.section	.debug_info,,n
.L230:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L231
	.uleb128	323
	.uleb128	29
	.byte		"CanIf_InitStatus_u8"
	.byte		0
	.4byte		.L204
	.0byte		.L230
.L232:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L231
	.uleb128	428
	.uleb128	1
	.byte		"CanIf_TxPduConfigInfo_p"
	.byte		0
	.4byte		.L233
	.section	.debug_info,,n
.L236:
	.sleb128	8
	.4byte		.L237
	.uleb128	266
	.uleb128	1
	.4byte		.L238-.L2
	.uleb128	36
	.section	.debug_info,,n
.L106:
	.sleb128	9
	.byte		"CanIfCanTxPduIdCanId"
	.byte		0
	.4byte		.L239
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L107:
	.sleb128	9
	.byte		"CanIfCanTxPduType"
	.byte		0
	.4byte		.L243
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L108:
	.sleb128	9
	.byte		"CanIfTxPduIdCanIdType"
	.byte		0
	.4byte		.L245
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L109:
	.sleb128	9
	.byte		"CanIfTxBufferType"
	.byte		0
	.4byte		.L247
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L110:
	.sleb128	9
	.byte		"CanIfBufferCfg"
	.byte		0
	.4byte		.L249
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L111:
	.sleb128	9
	.byte		"PduIdRef"
	.byte		0
	.4byte		.L216
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L112:
	.sleb128	9
	.byte		"CanIfCanTxPduIdDlc_u8"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L113:
	.sleb128	9
	.byte		"CanIfTxPduCallBackInd_u8"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L114:
	.sleb128	9
	.byte		"CanIfReadTxPduNotifyStatus_b"
	.byte		0
	.4byte		.L253
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L115:
	.sleb128	9
	.byte		"DataPtrPtr"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L116:
	.sleb128	9
	.byte		"TxBufferDataSize"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L117:
	.sleb128	9
	.byte		"IsDedicated"
	.byte		0
	.4byte		.L253
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
	.sleb128	0
.L238:
.L252:
	.sleb128	8
	.4byte		.L237
	.uleb128	266
	.uleb128	1
	.4byte		.L258-.L2
	.uleb128	16
.L98:
	.sleb128	9
	.byte		"CanIfBufferInfo"
	.byte		0
	.4byte		.L259
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L99:
	.sleb128	9
	.byte		"HthIndex"
	.byte		0
	.4byte		.L262
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L100:
	.sleb128	9
	.byte		"CanIfBufferSize"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L101:
	.sleb128	9
	.byte		"DataPtrList"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L102:
	.sleb128	9
	.byte		"MaxDataSize"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L103:
	.sleb128	9
	.byte		"IsDedicated"
	.byte		0
	.4byte		.L253
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L258:
.L261:
	.sleb128	8
	.4byte		.L237
	.uleb128	266
	.uleb128	1
	.4byte		.L263-.L2
	.uleb128	16
.L93:
	.sleb128	9
	.byte		"BufferedCanId"
	.byte		0
	.4byte		.L239
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L94:
	.sleb128	9
	.byte		"SwLPduHandle"
	.byte		0
	.4byte		.L264
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L95:
	.sleb128	9
	.byte		"HthIndex"
	.byte		0
	.4byte		.L262
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L96:
	.sleb128	9
	.byte		"Data"
	.byte		0
	.4byte		.L256
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L97:
	.sleb128	9
	.byte		"DataLength_u8"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L263:
	.section	.debug_info,,n
.L210:
	.sleb128	10
	.4byte		.L265
	.uleb128	63
	.uleb128	1
	.4byte		.L266-.L2
	.byte		"Can_PduType_s"
	.byte		0
	.uleb128	12
.L87:
	.sleb128	9
	.byte		"sdu"
	.byte		0
	.4byte		.L257
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L88:
	.sleb128	9
	.byte		"id"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L89:
	.sleb128	9
	.byte		"swPduHandle"
	.byte		0
	.4byte		.L216
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L90:
	.sleb128	9
	.byte		"length"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L266:
.L223:
	.sleb128	10
	.4byte		.L267
	.uleb128	69
	.uleb128	1
	.4byte		.L268-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L83:
	.sleb128	9
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L257
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L84:
	.sleb128	9
	.byte		"SduLength"
	.byte		0
	.4byte		.L269
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L268:
	.section	.debug_info,,n
.L248:
	.sleb128	11
	.4byte		.L237
	.uleb128	248
	.uleb128	1
	.4byte		.L270-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"CANIF_NO_BUFFER"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANIF_BUFFER"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"CANIF_BUFFER_POOL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L270:
.L246:
	.sleb128	11
	.4byte		.L237
	.uleb128	163
	.uleb128	1
	.4byte		.L271-.L2
	.uleb128	4
	.sleb128	12
	.byte		"CANIF_TX_CANID_EXTENDED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANIF_TX_CANID_STANDARD"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"CANIF_TX_CANID_EXTENDED_FD"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"CANIF_TX_CANID_STANDARD_FD"
	.byte		0
	.sleb128	3
	.sleb128	0
.L271:
.L244:
	.sleb128	11
	.4byte		.L237
	.uleb128	147
	.uleb128	1
	.4byte		.L272-.L2
	.uleb128	4
	.sleb128	12
	.byte		"CANIF_TXPDU_DYNAMIC"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANIF_TXPDU_STATIC"
	.byte		0
	.sleb128	1
	.sleb128	0
.L272:
	.section	.debug_info,,n
.L205:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L204:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L205
	.section	.debug_info,,n
.L203:
	.sleb128	15
	.4byte		.L204
.L209:
	.sleb128	14
	.byte		"Can_PduType"
	.byte		0
	.4byte		.L210
.L208:
	.sleb128	15
	.4byte		.L209
	.section	.debug_info,,n
.L207:
	.sleb128	16
	.4byte		.L208
.L206:
	.sleb128	15
	.4byte		.L207
.L218:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L217:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L218
.L216:
	.sleb128	14
	.byte		"PduIdType"
	.byte		0
	.4byte		.L217
.L222:
	.sleb128	14
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L223
.L221:
	.sleb128	15
	.4byte		.L222
.L220:
	.sleb128	16
	.4byte		.L221
.L235:
	.sleb128	14
	.byte		"CanIfTxPduConfigInfo_t"
	.byte		0
	.4byte		.L236
.L234:
	.sleb128	15
	.4byte		.L235
.L233:
	.sleb128	16
	.4byte		.L234
.L242:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L241:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L242
.L240:
	.sleb128	14
	.byte		"Can_IdType"
	.byte		0
	.4byte		.L241
.L239:
	.sleb128	14
	.byte		"CanIfCanId_t"
	.byte		0
	.4byte		.L240
.L243:
	.sleb128	14
	.byte		"CanIfCanTxPduType_t"
	.byte		0
	.4byte		.L244
.L245:
	.sleb128	14
	.byte		"CanIfTxPduCanIdType_t"
	.byte		0
	.4byte		.L246
.L247:
	.sleb128	14
	.byte		"CanIfTxBufferType_t"
	.byte		0
	.4byte		.L248
.L251:
	.sleb128	14
	.byte		"CanIfBufferConfig_t"
	.byte		0
	.4byte		.L252
.L250:
	.sleb128	15
	.4byte		.L251
.L249:
	.sleb128	16
	.4byte		.L250
.L253:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L205
.L257:
	.sleb128	16
	.4byte		.L204
.L256:
	.sleb128	14
	.byte		"CanIf_P2VarUint8Type"
	.byte		0
	.4byte		.L257
.L255:
	.sleb128	15
	.4byte		.L256
.L254:
	.sleb128	16
	.4byte		.L255
.L260:
	.sleb128	14
	.byte		"CanIfTxBufferRAM_t"
	.byte		0
	.4byte		.L261
.L259:
	.sleb128	16
	.4byte		.L260
.L262:
	.sleb128	14
	.byte		"CanIf_HthIndexType"
	.byte		0
	.4byte		.L217
.L264:
	.sleb128	14
	.byte		"CanIfLpduId_t"
	.byte		0
	.4byte		.L216
.L269:
	.sleb128	14
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L217
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L219:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locend
.L224:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanIf_CancelTxConfirmation"
	.wrcm.nstrlist "calls", "CanIf_ProcessCancelTxConf"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanIf_ProcessCancelTxConf"
	.wrcm.nint32 "frameSize", 16
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_CancelTxConfirmation.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_CancelTxConfirmation.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_CancelTxConfirmation.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_CancelTxConfirmation.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_CancelTxConfirmation.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_CancelTxConfirmation.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanIf\ssc\make\..\src\CanIf_CancelTxConfirmation.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
