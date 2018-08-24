#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_Init.c"
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
# FUNC( Std_ReturnType, CANIF_CODE ) CanIf_ConsistencyCheck
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_Init.c"
        .d2line         84,36
#$$ld
.L230:

#$$bf	CanIf_ConsistencyCheck,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		CanIf_ConsistencyCheck
	.d2_cfa_start __cie
CanIf_ConsistencyCheck:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ConfigPtr=r3 ConfigPtr=r3
	.d2prologue_end
# (
#     P2CONST( CanIf_ConfigType, AUTOMATIC, AUTOMATIC ) ConfigPtr
# )
# {
#     /* CanIf Status variable */
#     VAR( Std_ReturnType, AUTOMATIC ) CanIfRet = E_NOT_OK;
	.d2line		90
	diab.li		r5,1		# CanIfRet=r5
# 
#     if ((CANIF_PC_HASH_VALUE == CanIf_LTtoPCHashValue)
	.d2line		92
.Llo3:
	lis		r4,CanIf_LTtoPCHashValue@ha
	lwz		r0,CanIf_LTtoPCHashValue@l(r4)
	e_lis		r4,13921
	e_or2i		r4,7892
	se_cmpl		r0,r4
	bc		0,2,.L194	# ne
	se_cmpi		r3,0		# ConfigPtr=r3
	bc		1,2,.L194	# eq
	lwz		r4,32(r3)		# ConfigPtr=r3
	lwz		r0,0(r4)
	e_lis		r4,13921
	e_or2i		r4,7892
	se_cmpl		r0,r4
	bc		0,2,.L194	# ne
	lwz		r3,36(r3)		# ConfigPtr=r3 ConfigPtr=r3
	lwz		r0,0(r3)		# ConfigPtr=r3
	lis		r3,CanIf_LTHashValue@ha		# ConfigPtr=r3
	lwz		r3,CanIf_LTHashValue@l(r3)		# ConfigPtr=r3 ConfigPtr=r3
	se_cmpl		r0,r3		# ConfigPtr=r3
# #if( CANIF_VARIANT == CANIF_VARIANT_POST_BUILD)
#         && ( NULL_PTR != ConfigPtr )
#         && (CANIF_PC_HASH_VALUE == *ConfigPtr->PBtoPCHashValue_P)
#         && (CanIf_LTHashValue == *ConfigPtr->PBtoLTHashValue_P)
# #endif /* End #if( CANIF_VARIANT == CANIF_VARIANT_POST_BUILD) */
#     )
#     {
#         CanIfRet = E_OK;
	.d2line		100
	isel		r5,0,r5,2		# CanIfRet=r5 CanIfRet=r5
.L194:
#     }
# 
#     return CanIfRet;
	.d2line		103
.Llo2:
	rlwinm		r3,r5,0,24,31		# ConfigPtr=r3 CanIfRet=r5
# }
	.d2line		104
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo4:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L231:
	.type		CanIf_ConsistencyCheck,@function
	.size		CanIf_ConsistencyCheck,.-CanIf_ConsistencyCheck
# Number of nodes = 28

# Allocations for CanIf_ConsistencyCheck
#	?a4		ConfigPtr
#	?a5		CanIfRet
# static FUNC( void, CANIF_CODE ) CanIf_InitRxTxLPduStatus ( void )
	.align		1
	.section	.text_vle
        .d2line         390,33
#$$ld
.L246:

#$$bf	CanIf_InitRxTxLPduStatus,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
CanIf_InitRxTxLPduStatus:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* Loop index variable */
#     VAR( uint16, AUTOMATIC ) Count_u16;
# 
# /* If READRXPDU_NOTIFY_STATUS_API is enabled */
# #if( CANIF_READRXPDU_NOTIF_STATUS_API == STD_ON )
# 
#     for( Count_u16 = 0; Count_u16 < CanIf_BufferInfo_p->CanIfRxIndStBufferSize_u16; Count_u16++ )
#     {
#         /* Clear the RxPdu notification flags */
#         CanIf_ReadRxPduNotifySt_pu8[ Count_u16 ] = 0;
# 
#     }
# 
# #endif/* #if( CANIF_READRXPDU_NOTIFY_STATUS_API == STD_ON ) */
# 
# /* If READTXPDU_NOTIFY_STATUS_API is enabled */
# #if( CANIF_READTXPDU_NOTIF_STATUS_API == STD_ON )
#     {
#         VAR(CanIfLpduId_t, AUTOMATIC) UpLimit = 0;
#         CONST(CanIfLpduId_t, AUTOMATIC) TxPduCount = CanIf_InitConfiguration_p->CanIfNumberOfCanTxPduIds;
# 
#         if (TxPduCount > 0)
#         {
#             UpLimit = (CanIfLpduId_t)((CanIfLpduId_t)(TxPduCount - 1U) >> 3);
#         }
# 
#         for( Count_u16 = 0; Count_u16 <= UpLimit; Count_u16++ )
#         {
#             /* Clear the TxPdu notification flags */
#             CanIf_ReadTxPduNotifySt_pu8[ Count_u16 ] = 0;
#         }
#     }
# #endif/* #if( CANIF_READTXPDU_NOTIFY_STATUS_API == STD_ON ) */
# 
#     /* Initialize the transmit buffers to prevent transmission of
#     old data */
#     for( Count_u16 = 0;
	.d2line		428
	diab.li		r3,0		# Count_u16=r3
.L223:
.Llo5:
	rlwinm		r0,r3,0,16,31		# Count_u16=r3
	lis		r4,CanIf_NumberOfHth@ha
	lhz		r4,CanIf_NumberOfHth@l(r4)
	se_cmp		r0,r4
	bc		0,0,.L222	# ge
#          Count_u16 < (uint16)CanIf_NumberOfHth; Count_u16++ )
#     {
#         /* Clear the pending requests count */
#         CanIf_NoOfPendingRequests_pu8[ Count_u16 ]  = 0;
	.d2line		432
	diab.li		r5,0
	lis		r4,CanIf_NoOfPendingRequests_pu8@ha
	lwz		r4,CanIf_NoOfPendingRequests_pu8@l(r4)
	rlwinm		r0,r3,0,16,31		# Count_u16=r3
	stbx		r5,r4,r0
# 
#     }
	.d2line		434
	diab.addi		r0,r3,1		# Count_u16=r3
	se_addi		r3,1		# Count_u16=r3 Count_u16=r3
	b		.L223
.L222:
# 
# /* If SETDYNAMICTXID_API is enabled */
# #if( CANIF_SETDYNAMICTXID_API == STD_ON )
# 
#     /* Initialise the Dynamic TxPduId array */
#     for( Count_u16 = 0 ;
#          Count_u16 < (uint16)(CanIf_InitConfiguration_p->CanIfNumberOfCanTxPduIds);
#          Count_u16++ )
#     {
#         /* If the TxPdu type is Dynamic */
#         if( CANIF_TXPDU_DYNAMIC ==
#             CanIf_TxPduConfigInfo_p[ Count_u16 ].CanIfCanTxPduType )
#         {
#             /* Update the corresponding Dynamic TxPdu Id in array */
#             CanIf_DynTxPduId_p[ CanIf_TxPduConfigInfo_p[ Count_u16 ].CanIfDynamicIdIndex ] =
#             CanIf_TxPduConfigInfo_p[ Count_u16 ].CanIfCanTxPduIdCanId;
# 
#         }/* End if( CANIF_DYNAMIC_CANID ==
#             CanIf_TxPduConfigInfo_p[ Count_u16 ].CanIfCanTxPduType ) */
# 
#     }
# 
# #endif /* #if( CANIF_SETDYNAMICTXID_API == STD_ON ) */
# 
# } /* End of CanIf_InitRxTxLPduStatus () */
	.d2line		459
	.d2epilogue_begin
.Llo6:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L247:
	.type		CanIf_InitRxTxLPduStatus,@function
	.size		CanIf_InitRxTxLPduStatus,.-CanIf_InitRxTxLPduStatus
# Number of nodes = 18

# Allocations for CanIf_InitRxTxLPduStatus
#	?a4		Count_u16
# FUNC( void, CANIF_CODE ) CanIf_Init
	.align		2
	.section	.text_vle
        .d2line         126,26
#$$ld
.L255:

#$$bf	CanIf_Init,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		CanIf_Init
	.d2_cfa_start __cie
CanIf_Init:
.Llo7:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr.		r6,r3		# ConfigPtr=?a4 ConfigPtr=r3
	.d2prologue_end
# (
#     P2CONST( CanIf_ConfigType, AUTOMATIC, AUTOMATIC ) ConfigPtr
# )
# {
#     /* REQ: [CANIF001], [CANIF085] */
#     /* Counter variable */
#     VAR( uint16, AUTOMATIC ) Count;
# 
#     /* CanIf Status variable */
#     VAR( Std_ReturnType, AUTOMATIC ) CanIfRet = E_OK;
	.d2line		136
	diab.li		r4,0		# CanIfRet=r4
# 
#     /* disable CanIf in case of re-init */
#     CanIf_InitStatus_u8 = CANIF_UNINITIALIZED;
	.d2line		139
.Llo20:
	diab.li		r0,0
	.d2line		146
	lis		r3,CanIf_InitStatus_u8@ha
.Llo8:
	e_add16i		r3,r3,CanIf_InitStatus_u8@l
	stb		r0,0(r3)
# 
# #if (CANIF_PUBLIC_WAKEUP_CHECK_VALIDATION_API == STD_ON)
#     /* This variable (as bit field) stores for which CanIfCtrlrEcuMWakeupSource the CanIf_DispatchConfig.CanIfWakeupValidNotification(...) was already called */
#     WakeupSource_BitField = 0;
# #endif /* #if (CANIF_PUBLIC_WAKEUP_CHECK_VALIDATION_API == STD_ON) */
# 
#     if ( NULL_PTR == ConfigPtr )
#     {
#     /* REQ: [CANIF302] */
# #if( CANIF_VARIANT == CANIF_VARIANT_POST_BUILD)
#         /* REQ: [CANIF018] */
# /* if DET is enabled REQ: [DEV_CANIF14000] */
# #if( CANIF_DEV_ERROR_DETECT == STD_ON)
# 
#         /* Report DET Error */
#         (void)Det_ReportError( CANIF_MODULE_ID,
#                          CANIF_INSTANCE_ID,
#                          CANIF_SID_INIT,
#                          CANIF_E_PARAM_POINTER );
# 
# #endif/* #if( CANIF_DEV_ERROR_DETECT == STD_ON) */
#         CanIfRet = E_NOT_OK;
	.d2line		161
.Llo9:
	diab.li		r3,1
	isel		r0,r3,r4,2		# CanIfRet=r0 CanIfRet=r4
.L197:
# #else /* CANIF_VARIANT == CANIF_VARIANT_LINK_TIME */
#     /* In the link time variant ConfigPtr is not used and default configuration is used.
#      * Init should be called with NULL_PTR */
# #endif/* #if( CANIF_VARIANT == CANIF_VARIANT_POST_BUILD) */
#     }/* End if ( NULL_PTR == ConfigPtr ) */
# 
# 
#     /* MISRA-C: 2004 Rule 1.2 VIOLATION:
#        Reason: If the ConfigPtr is NULL, execution will never
#        reach this line, since the NULL checking already done above.
#        So this warning cannot be removed
#     */
#     /* Verify the hash keys */
#     /* PRQA S 3355 2 */ /* Misra 13.7 Message is invalid because the condition depends on pre-compile parameters */
#     /* PRQA S 3415 1 */ /* Misra 12.4 Message is suppressed because the condition evaluation has no side effect */
#     if (( E_OK == CanIfRet ) && (E_OK == CanIf_ConsistencyCheck(ConfigPtr)))
	.d2line		177
.Llo21:
	rlwinm		r0,r0,0,24,31		# CanIfRet=r0 CanIfRet=r0
.Llo22:
	se_cmpi		r0,0		# CanIfRet=r0
	bc		0,2,.L196	# ne
.Llo23:
	mr		r3,r6		# ConfigPtr=r3 ConfigPtr=r6
	bl		CanIf_ConsistencyCheck
	rlwinm		r3,r3,0,24,31		# ConfigPtr=r3 ConfigPtr=r3
	se_cmpi		r3,0		# ConfigPtr=r3
	bc		0,2,.L196	# ne
#     {
# 
# /* If the POST BUILD variant is enabled */
# #if( CANIF_VARIANT == CANIF_VARIANT_POST_BUILD )
# 
#         /* Initialize the Init configuration structure */
#         CanIf_InitConfiguration_p = ConfigPtr->InitConfiguration_pc;
	.d2line		184
	lwz		r0,0(r6)		# CanIfRet=r0 ConfigPtr=r6
.Llo24:
	lis		r3,CanIf_InitConfiguration_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanIf_InitConfiguration_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3 CanIfRet=r0
# 
#         /* Stores the pointer to PB Config of Tx-PDU structure */
#         CanIf_TxPduConfigInfo_p = ConfigPtr->TxPduConfigInfo_pc;
	.d2line		187
	lwz		r0,4(r6)		# CanIfRet=r0 ConfigPtr=r6
	lis		r3,CanIf_TxPduConfigInfo_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanIf_TxPduConfigInfo_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3 CanIfRet=r0
# 
#         /* Stores the pointer to PB Config of Rx-PDU structure */
#         CanIf_RxPduConfigInfo_p = ConfigPtr->RxPduConfigInfo_pc;
	.d2line		190
	lwz		r0,8(r6)		# CanIfRet=r0 ConfigPtr=r6
	lis		r3,CanIf_RxPduConfigInfo_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanIf_RxPduConfigInfo_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3 CanIfRet=r0
# 
#         /* Stores the pointer to PB Config of Hrh Config structure */
#         CanIf_HrhConfigInfo_pp = ConfigPtr->HrhConfigInfo_pc;
	.d2line		193
	lwz		r0,12(r6)		# CanIfRet=r0 ConfigPtr=r6
	lis		r3,CanIf_HrhConfigInfo_pp@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanIf_HrhConfigInfo_pp@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3 CanIfRet=r0
# 
#         /* Stores the pointer to PB Config of Buffer info structure */
#         CanIf_BufferInfo_p = ConfigPtr->CanIfBufferInfo_pc;
	.d2line		196
	lwz		r0,16(r6)		# CanIfRet=r0 ConfigPtr=r6
	lis		r3,CanIf_BufferInfo_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanIf_BufferInfo_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3 CanIfRet=r0
# 
#         /* Stores the pointer to the transmission data buffer array */
#         CanIf_TxBuffer_p = ConfigPtr->TxBuffer_p;
	.d2line		199
	lwz		r0,28(r6)		# CanIfRet=r0 ConfigPtr=r6
	lis		r3,CanIf_TxBuffer_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanIf_TxBuffer_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3 CanIfRet=r0
# 
# /* if RxInterruptDecoupling is enabled */
# #if (CANIF_RX_INT_DECOUPLING == STD_ON)
# 
#         /* Points to inetrrupt decoupling data RAM buffer  */
#         CanIf_RxPduIntDecDataBuf_pu8 = ConfigPtr->RxPduIntDecDataBuf_pu8;
	.d2line		205
	lwz		r0,20(r6)		# CanIfRet=r0 ConfigPtr=r6
	lis		r3,CanIf_RxPduIntDecDataBuf_pu8@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanIf_RxPduIntDecDataBuf_pu8@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3 CanIfRet=r0
# 
#         /* Points to RxPdu inetrrupt decoupling indication
#         status RAM buffer */
#         CanIf_RxPduIntDecNotifySt_pu8 = ConfigPtr->RxPduIntDecNotifySt_pu8;
	.d2line		209
	lwz		r0,24(r6)		# CanIfRet=r0 ConfigPtr=r6
	lis		r3,CanIf_RxPduIntDecNotifySt_pu8@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanIf_RxPduIntDecNotifySt_pu8@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3 CanIfRet=r0
# 
#         /* REQ: [DEV_CANIF20080]
#            Initialize area (CanIf_RxPduIntDecNotifySt_pu8)
#            size: CanIf_BufferInfo_p->CanIfRxIndStBufferSize_u16,
#            "CanIfRxIndStBufferSize_u16" is always at least 1,
#         */
#         for (Count = 0; Count < CanIf_BufferInfo_p->CanIfRxIndStBufferSize_u16; Count++)
	.d2line		216
	diab.li		r3,0		# Count=r3
.L199:
.Llo10:
	rlwinm		r5,r3,0,16,31		# Count=r3
	lis		r4,CanIf_BufferInfo_p@ha		# CanIfRet=r4
.Llo25:
	lwz		r4,CanIf_BufferInfo_p@l(r4)		# CanIfRet=r4 CanIfRet=r4
	lhz		r0,6(r4)		# CanIfRet=r0 CanIfRet=r4
	se_cmp		r5,r0		# CanIfRet=r0
	bc		0,0,.L201	# ge
#         {
#             CanIf_RxPduIntDecNotifySt_pu8[Count] = 0;
	.d2line		218
.Llo26:
	diab.li		r0,0		# CanIfRet=r0
.Llo27:
	lis		r4,CanIf_RxPduIntDecNotifySt_pu8@ha		# CanIfRet=r4
	lwz		r4,CanIf_RxPduIntDecNotifySt_pu8@l(r4)		# CanIfRet=r4 CanIfRet=r4
	rlwinm		r5,r3,0,16,31		# Count=r3
	stbx		r0,r4,r5		# CanIfRet=r4 CanIfRet=r0
#         }
	.d2line		219
	diab.addi		r5,r3,1		# Count=r3
	se_addi		r3,1		# Count=r3 Count=r3
	b		.L199
.L201:
# 
# #endif /* End #if (CANIF_RX_INT_DECOUPLING == STD_ON) */
# 
# /* if ReadRxPduData API is enabled */
# #if (CANIF_READRXPDU_DATA_API == STD_ON)
# 
#         /* Points to RxPdu data RAM buffer  */
#         CanIf_RxPduDataBuffer_pu8 = ConfigPtr->RxPduDataBuffer_pu8;
# 
# #endif /* End #if (CANIF_READRXPDU_DATA_API == STD_ON) */
# 
# /* if ReadRxPduNotifyStatus API is enabled  */
# #if (CANIF_READRXPDU_NOTIF_STATUS_API == STD_ON)
# 
#         /* Points to RxPdu notify status RAM buffer  */
#         CanIf_ReadRxPduNotifySt_pu8 = ConfigPtr->ReadRxPduNotifySt_pu8;
# 
#         /* REQ: [DEV_CANIF20080]
#            Initialization of this area (CanIf_ReadRxPduNotifySt_pu8)
#            is performed by CanIf_InitRxTxLPduStatus().
#         */
# 
# #endif /* End #if (CANIF_READRXPDU_NOTIF_STATUS_API == STD_ON) */
# 
#         /* REQ: [DEV_CANIF20080], [CANIF387] */
#         /* Initialize area (CanIf_TxBuffer_p)
#            size: CanIf_BufferInfo_p->CanIfNumberOfTxBuffers_u16
#         */
#         if (CanIf_BufferInfo_p->CanIfNumberOfTxBuffers_u16 != 0)
	.d2line		248
.Llo11:
	lis		r3,CanIf_BufferInfo_p@ha		# Count=r3
.Llo12:
	lwz		r3,CanIf_BufferInfo_p@l(r3)		# Count=r3 Count=r3
	lhz		r0,0(r3)		# CanIfRet=r0 Count=r3
.Llo28:
	se_cmpi		r0,0		# CanIfRet=r0
	bc		1,2,.L202	# eq
#         {
#             for (Count = 0; Count < CanIf_BufferInfo_p->CanIfNumberOfTxBuffers_u16; Count++)
	.d2line		250
.Llo13:
	diab.li		r6,0		# Count=r6
.L203:
.Llo14:
	rlwinm		r0,r6,0,16,31		# CanIfRet=r0 Count=r6
.Llo29:
	lis		r3,CanIf_BufferInfo_p@ha		# Count=r3
	lwz		r3,CanIf_BufferInfo_p@l(r3)		# Count=r3 Count=r3
	lhz		r3,0(r3)		# Count=r3 Count=r3
	se_cmp		r0,r3		# CanIfRet=r0 Count=r3
	bc		0,0,.L202	# ge
	.section	.text_vle
.L263:
#             {
#                 VAR(uint8, AUTOMATIC) Count3_u8;
#                 P2CONST(CanIfBufferConfig_t, AUTOMATIC, CANIF_APPL_DATA) TxBufferLoc_p =
	.d2line		253
.Llo30:
	lis		r3,CanIf_TxBuffer_p@ha		# Count=r3
	lwz		r4,CanIf_TxBuffer_p@l(r3)		# CanIfRet=r4 Count=r3
.Llo31:
	rlwinm		r0,r6,4,12,27		# CanIfRet=r0 Count=r6
	se_add		r0,r4		# CanIfRet=r0 CanIfRet=r0 CanIfRet=r4
.Llo45:
	mr		r4,r0		# TxBufferLoc_p=r4 TxBufferLoc_p=r0
#                     &CanIf_TxBuffer_p[Count];
# 
#                 P2VAR(CanIfTxBufferRAM_t, AUTOMATIC, CANIF_APPL_DATA) TxBufferRamLoc_p;
# 
#                 for(Count3_u8 = 0; Count3_u8 < TxBufferLoc_p->CanIfBufferSize;Count3_u8++)
	.d2line		258
.Llo32:
	diab.li		r3,0		# Count3_u8=r3
.L206:
.Llo43:
	rlwinm		r0,r3,0,24,31		# CanIfRet=r0 Count3_u8=r3
.Llo33:
	lbz		r5,6(r4)		# TxBufferRamLoc_p=r5 TxBufferLoc_p=r4
.Llo46:
	se_cmp		r0,r5		# CanIfRet=r0 TxBufferRamLoc_p=r5
	bc		0,0,.L208	# ge
#                 {
#                     TxBufferRamLoc_p = &TxBufferLoc_p->CanIfBufferInfo[Count3_u8];
	.d2line		260
.Llo34:
	lwz		r5,0(r4)		# TxBufferRamLoc_p=r5 TxBufferLoc_p=r4
.Llo47:
	rlwinm		r0,r3,4,20,27		# CanIfRet=r0 Count3_u8=r3
.Llo35:
	se_add		r0,r5		# CanIfRet=r0 CanIfRet=r0 TxBufferRamLoc_p=r5
.Llo36:
	mr		r5,r0		# TxBufferRamLoc_p=r5 TxBufferRamLoc_p=r0
#                     TxBufferRamLoc_p->DataLength_u8 = (uint8)0;
	.d2line		261
	diab.li		r0,0		# CanIfRet=r0
.Llo37:
	stb		r0,12(r5)		# TxBufferRamLoc_p=r5 CanIfRet=r0
#                     TxBufferRamLoc_p->BufferedCanId = (CanIfCanId_t)0;
	.d2line		262
	stw		r0,0(r5)		# TxBufferRamLoc_p=r5 CanIfRet=r0
#                     TxBufferRamLoc_p->SwLPduHandle = (CanIfLpduId_t)0;
	.d2line		263
	sth		r0,4(r5)		# TxBufferRamLoc_p=r5 CanIfRet=r0
#                     TxBufferRamLoc_p->HthIndex = CANIF_INVALID_HTHIDX;
	.d2line		264
	diab.li		r0,65535		# CanIfRet=r0
	sth		r0,6(r5)		# TxBufferRamLoc_p=r5 CanIfRet=r0
#                     TxBufferRamLoc_p->Data = TxBufferLoc_p->DataPtrList[Count3_u8];
	.d2line		265
	lwz		r7,8(r4)		# TxBufferLoc_p=r4
	rlwinm		r0,r3,2,22,29		# CanIfRet=r0 Count3_u8=r3
	lwzx		r0,r7,r0		# CanIfRet=r0
	stw		r0,8(r5)		# TxBufferRamLoc_p=r5 CanIfRet=r0
# 
#                     /* TBD: Filling buffer data with zeros does not seem necessary. */
#                 }
	.d2line		268
	diab.addi		r0,r3,1		# CanIfRet=r0 Count3_u8=r3
.Llo38:
	se_addi		r3,1		# Count3_u8=r3 Count3_u8=r3
	b		.L206
.L208:
	.section	.text_vle
.L264:
#             }
	.d2line		269
.Llo44:
	diab.addi		r0,r6,1		# CanIfRet=r0 Count=r6
	se_addi		r6,1		# Count=r6 Count=r6
	b		.L203
.L202:
#         }
# /* if ReadTxPduNotifyStatus API is enabled  */
# #if (CANIF_READTXPDU_NOTIF_STATUS_API == STD_ON)
# 
#         /* Points to TxPdu notify status RAM buffer */
#         CanIf_ReadTxPduNotifySt_pu8 = ConfigPtr->ReadTxPduNotifySt_pu8;
# 
#         /* REQ: [DEV_CANIF20080]
#            Initialization of this area (CanIf_ReadTxPduNotifySt_pu8)
#            is performed by CanIf_InitRxTxLPduStatus().
#         */
# 
# #endif /* End #if (CANIF_READTXPDU_NOTIF_STATUS_API == STD_ON) */
# 
# /* if CanIf_SetDynamicTxId API is enabled  */
# #if (CANIF_SETDYNAMICTXID_API == STD_ON)
# 
#         /* Points to to the Dynamic TxPdu array */
#         CanIf_DynTxPduId_p = ConfigPtr->DynTxPduId_p;
# 
#         /* REQ: [DEV_CANIF20080]
#            Initialize area (CanIf_DynTxPduId_p)
#            size: CanIf_InitConfiguration_p->CanIfNoOfDynamicCanTxPduIds
#         */
#         if (CanIf_InitConfiguration_p->CanIfNoOfDynamicCanTxPduIds != 0U)
#         {
#             VAR(CanIfLpduId_t, AUTOMATIC) countPduId;
# 
#             for (countPduId = 0; countPduId < CanIf_InitConfiguration_p->CanIfNoOfDynamicCanTxPduIds; countPduId++)
#             {
#                 CanIf_DynTxPduId_p[countPduId] = 0;
#             }
#         }
# 
# #endif/* #if (CANIF_SETDYNAMICTXID_API == STD_ON) */
# 
# /* if PN communication support is enabled */
# #if (CANIF_PN_SUPPORT == STD_ON)
# 
#         /* Stores the pointer to the total number of Pn Filter Pdus array */
#         CanIf_NoOfPnFilterPduIds_p = ConfigPtr->CanIfNoOfPnFilterPduIds;
# 
# #endif /* #if (CANIF_PN_SUPPORT == STD_ON) */
# 
# #endif/* End #if( CANIF_VARIANT == CANIF_VARIANT_POST_BUILD) */
# 
#         /* Initialize Controller and PDU mode arrays */
#         for( Count = 0;
	.d2line		317
	diab.li		r3,0		# Count=r3
.L209:
.Llo15:
	rlwinm		r5,r3,0,16,31		# TxBufferRamLoc_p=r5 Count=r3
.Llo16:
	lis		r4,CanIf_NumberOfCanCtrlUnits_u8@ha		# CanIfRet=r4
.Llo39:
	lbz		r0,CanIf_NumberOfCanCtrlUnits_u8@l(r4)		# CanIfRet=r0 CanIfRet=r4
	se_cmp		r5,r0		# TxBufferRamLoc_p=r5 CanIfRet=r0
	bc		0,0,.L211	# ge
#              Count < (uint16)CanIf_NumberOfCanCtrlUnits_u8;
#              Count++ )
#         {
#             /* REQ: [CANIF476], [CANIF477], [CANIF478] */
#             /* Set Controller modes to STOPPED */
#             CanIf_ControllerMode_a[ Count ] = CANIF_CS_STOPPED;
	.d2line		323
.Llo40:
	diab.li		r0,2		# CanIfRet=r0
.Llo41:
	lis		r4,CanIf_ControllerMode_a@ha		# CanIfRet=r4
	e_add16i		r4,r4,CanIf_ControllerMode_a@l		# CanIfRet=r4 CanIfRet=r4
	rlwinm		r5,r3,2,14,29		# TxBufferRamLoc_p=r5 Count=r3
	stwx		r0,r4,r5		# CanIfRet=r4 CanIfRet=r0
#             /*TODO: CANIF479, CANIF485: clear all stored wake-up event, clear tx buffer, clear pending tx*/
# 
#             /* Set Pdu modes to OFFLINE */
#             CanIf_PduMode_a[ Count ] = CANIF_OFFLINE;
	.d2line		327
	diab.li		r0,0		# CanIfRet=r0
	lis		r4,CanIf_PduMode_a@ha		# CanIfRet=r4
	e_add16i		r4,r4,CanIf_PduMode_a@l		# CanIfRet=r4 CanIfRet=r4
	stwx		r0,r4,r5		# CanIfRet=r4 CanIfRet=r0
# 
# /*Clear Flag deleted as REQ CANIF676 deleted*/
# 
# #if( CANIF_PUBLIC_TXCONFIRM_POLLING_SUPPORT == STD_ON )
# 
#             /* Set Tx confirmation state to CANIF_NO_NOTIFICATION,
#                i.e. clear it.
#             */
#             CanIf_TxConfirmationState_a[ Count ] = CANIF_NO_NOTIFICATION;
	.d2line		336
	lis		r4,CanIf_TxConfirmationState_a@ha		# CanIfRet=r4
	e_add16i		r4,r4,CanIf_TxConfirmationState_a@l		# CanIfRet=r4 CanIfRet=r4
	stwx		r0,r4,r5		# CanIfRet=r4 CanIfRet=r0
# 
# #endif/* #if( CANIF_PUBLIC_TXCONFIRM_POLLING_SUPPORT == STD_ON )*/
# 
#             /*Intilaize RAM Structure*/
#             /* REQ:[CANIF479]*/
# #if (CANIF_PUBLIC_WAKEUP_CHECK_VALIDATION_API == STD_ON)
#             CanIf_ControllerConfig_a[Count].CanIfControllerConfigRAM->WasInSleep = CANIF_FALSE;
#             CanIf_ControllerConfig_a[Count].CanIfControllerConfigRAM->RemainingWakeupValidNotification = 0;
# #endif
# #if (CANIF_PN_SUPPORT == STD_ON)
#             CanIf_ControllerConfig_a[Count].CanIfControllerConfigRAM->CanIfPnTxFilter = CANIF_FALSE;
# #endif
# 
#         }/* End for( Count = 0;
	.d2line		350
	diab.addi		r5,r3,1		# TxBufferRamLoc_p=r5 Count=r3
	se_addi		r3,1		# Count=r3 Count=r3
	b		.L209
.L211:
#              Count < CanIf_NumberOfCanCtrlUnits_u8;
#              Count++ ) */
# 
# /*Clear Flag delted as REQ CANIF676 deleted*/
# 
# 
#         /* Call CanIf_InitRxTxLPduStatus() to initialize the buffers
#            related to Tx and Rx LPDUs */
#         CanIf_InitRxTxLPduStatus();
	.d2line		359
.Llo17:
	bl		CanIf_InitRxTxLPduStatus
# 
#         /* Set CanIf modeule status to "initialized" */
#         CanIf_InitStatus_u8 = CANIF_INITIALIZED;
	.d2line		362
	diab.li		r0,1		# CanIfRet=r0
.Llo42:
	lis		r3,CanIf_InitStatus_u8@ha		# Count=r3
.Llo18:
	e_add16i		r3,r3,CanIf_InitStatus_u8@l		# Count=r3 Count=r3
	stb		r0,0(r3)		# Count=r3 CanIfRet=r0
.L196:
# 
# 
#     }/* End if (( E_OK == CanIfRet ) &&
#         (CANIF_PC_HASH_VALUE == CanIf_LTtoPCHashValue)
# #if( CANIF_VARIANT == CANIF_VARIANT_POST_BUILD)
#         && (CANIF_PC_HASH_VALUE == *ConfigPtr->PBtoPCHashValue_P)
#         && (CanIf_LTHashValue == *ConfigPtr->PBtoLTHashValue_P)
# #endif */
# 
# }/* End of CanIf_Init() */
	.d2line		372
	.d2epilogue_begin
.Llo19:
	lwz		r0,20(r1)		# CanIfRet=r0
	mtspr		lr,r0		# CanIfRet=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L256:
	.type		CanIf_Init,@function
	.size		CanIf_Init,.-CanIf_Init
# Number of nodes = 222

# Allocations for CanIf_Init
#	?a4		ConfigPtr
#	?a5		Count
#	?a6		CanIfRet
#	?a7		Count3_u8
#	?a8		TxBufferLoc_p
#	?a9		TxBufferRamLoc_p

# Allocations for module
	.section	.text_vle
	.0byte		.L280
	.section	.text_vle
#$$ld
.L5:
.L340:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L287:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\internal\\CanIf_Private.h"
.L281:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf.h"
.L232:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_Init.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_Init.c"
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
.L236:
	.sleb128	2
	.4byte		.L229-.L2
	.byte		"CanIf_ConsistencyCheck"
	.byte		0
	.4byte		.L232
	.uleb128	84
	.uleb128	36
	.4byte		.L233
	.byte		0x1
	.byte		0x1
	.4byte		.L230
	.4byte		.L231
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L232
	.uleb128	84
	.uleb128	36
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L237
	.4byte		.L241
	.section	.debug_info,,n
.L242:
	.sleb128	4
	.4byte		.L232
	.uleb128	90
	.uleb128	38
	.byte		"CanIfRet"
	.byte		0
	.4byte		.L233
	.4byte		.L243
	.section	.debug_info,,n
	.sleb128	0
.L229:
	.section	.debug_info,,n
.L248:
	.sleb128	5
	.4byte		.L245-.L2
	.byte		"CanIf_InitRxTxLPduStatus"
	.byte		0
	.4byte		.L232
	.uleb128	390
	.uleb128	33
	.byte		0x1
	.4byte		.L246
	.4byte		.L247
.L249:
	.sleb128	4
	.4byte		.L232
	.uleb128	393
	.uleb128	30
	.byte		"Count_u16"
	.byte		0
	.4byte		.L250
	.4byte		.L252
	.section	.debug_info,,n
	.sleb128	0
.L245:
	.section	.debug_info,,n
.L257:
	.sleb128	6
	.4byte		.L254-.L2
	.byte		"CanIf_Init"
	.byte		0
	.4byte		.L232
	.uleb128	126
	.uleb128	26
	.byte		0x1
	.byte		0x1
	.4byte		.L255
	.4byte		.L256
	.sleb128	3
	.4byte		.L232
	.uleb128	126
	.uleb128	26
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L237
	.4byte		.L258
.L259:
	.sleb128	4
	.4byte		.L232
	.uleb128	133
	.uleb128	30
	.byte		"Count"
	.byte		0
	.4byte		.L250
	.4byte		.L260
.L261:
	.sleb128	4
	.4byte		.L232
	.uleb128	136
	.uleb128	38
	.byte		"CanIfRet"
	.byte		0
	.4byte		.L233
	.4byte		.L262
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L266
	.4byte		.L263
	.4byte		.L264
.L267:
	.sleb128	4
	.4byte		.L232
	.uleb128	252
	.uleb128	39
	.byte		"Count3_u8"
	.byte		0
	.4byte		.L234
	.4byte		.L268
.L269:
	.sleb128	4
	.4byte		.L232
	.uleb128	253
	.uleb128	74
	.byte		"TxBufferLoc_p"
	.byte		0
	.4byte		.L270
	.4byte		.L274
.L275:
	.sleb128	4
	.4byte		.L232
	.uleb128	256
	.uleb128	71
	.byte		"TxBufferRamLoc_p"
	.byte		0
	.4byte		.L276
	.4byte		.L279
	.section	.debug_info,,n
	.sleb128	0
.L266:
	.section	.debug_info,,n
	.sleb128	0
.L254:
	.section	.debug_info,,n
.L280:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L281
	.uleb128	286
	.uleb128	35
	.byte		"CanIf_LTHashValue"
	.byte		0
	.4byte		.L282
	.section	.debug_info,,n
.L285:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L281
	.uleb128	292
	.uleb128	35
	.byte		"CanIf_LTtoPCHashValue"
	.byte		0
	.4byte		.L282
.L286:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L287
	.uleb128	336
	.uleb128	1
	.byte		"CanIf_ControllerMode_a"
	.byte		0
	.4byte		.L288
	.0byte		.L286
.L292:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L287
	.uleb128	342
	.uleb128	42
	.byte		"CanIf_PduMode_a"
	.byte		0
	.4byte		.L293
.L297:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L287
	.uleb128	353
	.uleb128	46
	.byte		"CanIf_TxConfirmationState_a"
	.byte		0
	.4byte		.L298
.L302:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L287
	.uleb128	369
	.uleb128	1
	.byte		"CanIf_NoOfPendingRequests_pu8"
	.byte		0
	.4byte		.L303
.L304:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L287
	.uleb128	379
	.uleb128	49
	.byte		"CanIf_RxPduIntDecDataBuf_pu8"
	.byte		0
	.4byte		.L303
.L305:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L287
	.uleb128	385
	.uleb128	49
	.byte		"CanIf_RxPduIntDecNotifySt_pu8"
	.byte		0
	.4byte		.L303
.L306:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L287
	.uleb128	412
	.uleb128	1
	.byte		"CanIf_TxBuffer_p"
	.byte		0
	.4byte		.L270
.L307:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L287
	.uleb128	420
	.uleb128	1
	.byte		"CanIf_InitConfiguration_p"
	.byte		0
	.4byte		.L308
.L312:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L287
	.uleb128	428
	.uleb128	1
	.byte		"CanIf_TxPduConfigInfo_p"
	.byte		0
	.4byte		.L313
.L317:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L287
	.uleb128	436
	.uleb128	1
	.byte		"CanIf_RxPduConfigInfo_p"
	.byte		0
	.4byte		.L318
.L322:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L287
	.uleb128	444
	.uleb128	1
	.byte		"CanIf_BufferInfo_p"
	.byte		0
	.4byte		.L323
.L327:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L287
	.uleb128	472
	.uleb128	1
	.byte		"CanIf_HrhConfigInfo_pp"
	.byte		0
	.4byte		.L328
.L334:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L287
	.uleb128	504
	.uleb128	38
	.byte		"CanIf_NumberOfCanCtrlUnits_u8"
	.byte		0
	.4byte		.L335
.L336:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L287
	.uleb128	522
	.uleb128	47
	.byte		"CanIf_NumberOfHth"
	.byte		0
	.4byte		.L337
	.section	.debug_info,,n
.L339:
	.sleb128	9
	.byte		0x1
	.4byte		.L232
	.uleb128	58
	.uleb128	22
	.byte		"CanIf_InitStatus_u8"
	.byte		0
	.4byte		.L234
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_InitStatus_u8
	.comm		CanIf_InitStatus_u8,1,0
	.section	.debug_info,,n
.L240:
	.sleb128	10
	.4byte		.L340
	.uleb128	266
	.uleb128	1
	.4byte		.L341-.L2
	.uleb128	40
	.section	.debug_info,,n
.L179:
	.sleb128	11
	.byte		"InitConfiguration_pc"
	.byte		0
	.4byte		.L308
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L180:
	.sleb128	11
	.byte		"TxPduConfigInfo_pc"
	.byte		0
	.4byte		.L313
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L181:
	.sleb128	11
	.byte		"RxPduConfigInfo_pc"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L182:
	.sleb128	11
	.byte		"HrhConfigInfo_pc"
	.byte		0
	.4byte		.L328
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L183:
	.sleb128	11
	.byte		"CanIfBufferInfo_pc"
	.byte		0
	.4byte		.L323
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L184:
	.sleb128	11
	.byte		"RxPduIntDecDataBuf_pu8"
	.byte		0
	.4byte		.L303
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L185:
	.sleb128	11
	.byte		"RxPduIntDecNotifySt_pu8"
	.byte		0
	.4byte		.L303
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L186:
	.sleb128	11
	.byte		"TxBuffer_p"
	.byte		0
	.4byte		.L270
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L187:
	.sleb128	11
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L342
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L188:
	.sleb128	11
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L342
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L341:
.L326:
	.sleb128	10
	.4byte		.L340
	.uleb128	266
	.uleb128	1
	.4byte		.L343-.L2
	.uleb128	8
.L175:
	.sleb128	11
	.byte		"CanIfNumberOfTxBuffers_u16"
	.byte		0
	.4byte		.L250
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L176:
	.sleb128	11
	.byte		"RxPduDataBufferSize_u16"
	.byte		0
	.4byte		.L250
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L177:
	.sleb128	11
	.byte		"RxPduIntDecDataBufferSize_u16"
	.byte		0
	.4byte		.L250
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L178:
	.sleb128	11
	.byte		"CanIfRxIndStBufferSize_u16"
	.byte		0
	.4byte		.L250
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L343:
.L311:
	.sleb128	10
	.4byte		.L340
	.uleb128	266
	.uleb128	1
	.4byte		.L344-.L2
	.uleb128	8
.L171:
	.sleb128	11
	.byte		"CanIfNumberOfCanRxPduIds"
	.byte		0
	.4byte		.L345
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L172:
	.sleb128	11
	.byte		"CanIfNumberOfCanTxPduIds"
	.byte		0
	.4byte		.L345
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L173:
	.sleb128	11
	.byte		"CanIfNoOfDynamicCanTxPduIds"
	.byte		0
	.4byte		.L345
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L174:
	.sleb128	11
	.byte		"CanIfNumberOfCanDrivers"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L344:
.L333:
	.sleb128	10
	.4byte		.L340
	.uleb128	266
	.uleb128	1
	.4byte		.L347-.L2
	.uleb128	20
.L138:
	.sleb128	11
	.byte		"CanIfHrhType"
	.byte		0
	.4byte		.L348
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L139:
	.sleb128	11
	.byte		"CanIfHrhRangeConfig_p"
	.byte		0
	.4byte		.L350
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L140:
	.sleb128	11
	.byte		"CanIfHrhRxPduIdList_p"
	.byte		0
	.4byte		.L354
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L141:
	.sleb128	11
	.byte		"CanIfHrhNoOfRxPduIds"
	.byte		0
	.4byte		.L345
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L142:
	.sleb128	11
	.byte		"CanIfHrhIdSymRef"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L143:
	.sleb128	11
	.byte		"CanIfSoftwareFilterHrh_b"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L144:
	.sleb128	11
	.byte		"CanIfNoOfHrhRange_u8"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
	.sleb128	0
.L347:
.L353:
	.sleb128	10
	.4byte		.L340
	.uleb128	266
	.uleb128	1
	.4byte		.L358-.L2
	.uleb128	20
.L133:
	.sleb128	11
	.byte		"CanIfRxPduLowerCanId"
	.byte		0
	.4byte		.L359
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L134:
	.sleb128	11
	.byte		"CanIfRxPduUpperCanId"
	.byte		0
	.4byte		.L359
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L135:
	.sleb128	11
	.byte		"CanIfRxPduRangeCanIdType"
	.byte		0
	.4byte		.L361
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L136:
	.sleb128	11
	.byte		"CanIfHrhRangeRxPduIdList_p"
	.byte		0
	.4byte		.L354
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L137:
	.sleb128	11
	.byte		"CanIfHrhRangeNoOfRxPduId"
	.byte		0
	.4byte		.L345
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L358:
.L321:
	.sleb128	10
	.4byte		.L340
	.uleb128	266
	.uleb128	1
	.4byte		.L363-.L2
	.uleb128	24
.L122:
	.sleb128	11
	.byte		"CanIfCanRxPduCanId"
	.byte		0
	.4byte		.L359
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L123:
	.sleb128	11
	.byte		"CanIfRxPduIdCanIdType"
	.byte		0
	.4byte		.L361
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L124:
	.sleb128	11
	.byte		"CanIfRxPduIntDecBufferInd"
	.byte		0
	.4byte		.L283
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L125:
	.sleb128	11
	.byte		"PduIdRef"
	.byte		0
	.4byte		.L346
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L126:
	.sleb128	11
	.byte		"CanIfCanRxPduHrhRef"
	.byte		0
	.4byte		.L364
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L127:
	.sleb128	11
	.byte		"CanIfCanRxPduIdDlc_u8"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L128:
	.sleb128	11
	.byte		"CanIfRxPduCallBackInd_u8"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L129:
	.sleb128	11
	.byte		"CanIfReadRxPduData_b"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L130:
	.sleb128	11
	.byte		"CanIfReadRxPduNotifyStatus_b"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L131:
	.sleb128	11
	.byte		"CanIfCanDriverRef_u8"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L132:
	.sleb128	11
	.byte		"CanIfRxPduIntDecoupling_b"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L363:
.L316:
	.sleb128	10
	.4byte		.L340
	.uleb128	266
	.uleb128	1
	.4byte		.L365-.L2
	.uleb128	36
.L106:
	.sleb128	11
	.byte		"CanIfCanTxPduIdCanId"
	.byte		0
	.4byte		.L359
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L107:
	.sleb128	11
	.byte		"CanIfCanTxPduType"
	.byte		0
	.4byte		.L366
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L108:
	.sleb128	11
	.byte		"CanIfTxPduIdCanIdType"
	.byte		0
	.4byte		.L368
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L109:
	.sleb128	11
	.byte		"CanIfTxBufferType"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L110:
	.sleb128	11
	.byte		"CanIfBufferCfg"
	.byte		0
	.4byte		.L270
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L111:
	.sleb128	11
	.byte		"PduIdRef"
	.byte		0
	.4byte		.L346
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L112:
	.sleb128	11
	.byte		"CanIfCanTxPduIdDlc_u8"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L113:
	.sleb128	11
	.byte		"CanIfTxPduCallBackInd_u8"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L114:
	.sleb128	11
	.byte		"CanIfReadTxPduNotifyStatus_b"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L115:
	.sleb128	11
	.byte		"DataPtrPtr"
	.byte		0
	.4byte		.L372
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L116:
	.sleb128	11
	.byte		"TxBufferDataSize"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L117:
	.sleb128	11
	.byte		"IsDedicated"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
	.sleb128	0
.L365:
.L273:
	.sleb128	10
	.4byte		.L340
	.uleb128	266
	.uleb128	1
	.4byte		.L375-.L2
	.uleb128	16
.L98:
	.sleb128	11
	.byte		"CanIfBufferInfo"
	.byte		0
	.4byte		.L276
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L99:
	.sleb128	11
	.byte		"HthIndex"
	.byte		0
	.4byte		.L338
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L100:
	.sleb128	11
	.byte		"CanIfBufferSize"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L101:
	.sleb128	11
	.byte		"DataPtrList"
	.byte		0
	.4byte		.L372
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L102:
	.sleb128	11
	.byte		"MaxDataSize"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L103:
	.sleb128	11
	.byte		"IsDedicated"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L375:
.L278:
	.sleb128	10
	.4byte		.L340
	.uleb128	266
	.uleb128	1
	.4byte		.L376-.L2
	.uleb128	16
.L93:
	.sleb128	11
	.byte		"BufferedCanId"
	.byte		0
	.4byte		.L359
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L94:
	.sleb128	11
	.byte		"SwLPduHandle"
	.byte		0
	.4byte		.L345
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L95:
	.sleb128	11
	.byte		"HthIndex"
	.byte		0
	.4byte		.L338
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L96:
	.sleb128	11
	.byte		"Data"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L97:
	.sleb128	11
	.byte		"DataLength_u8"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L376:
	.section	.debug_info,,n
.L349:
	.sleb128	12
	.4byte		.L340
	.uleb128	266
	.uleb128	1
	.4byte		.L377-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"CANIF_HOH_BASIC_CAN"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CANIF_HOH_FULL_CAN"
	.byte		0
	.sleb128	1
	.sleb128	0
.L377:
.L371:
	.sleb128	12
	.4byte		.L340
	.uleb128	248
	.uleb128	1
	.4byte		.L378-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CANIF_NO_BUFFER"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CANIF_BUFFER"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"CANIF_BUFFER_POOL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L378:
.L362:
	.sleb128	12
	.4byte		.L340
	.uleb128	185
	.uleb128	1
	.4byte		.L379-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CANIF_RX_CANID_EXTENDED"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CANIF_RX_CANID_STANDARD"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"CANIF_RX_CANID_EXTENDED_FD"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"CANIF_RX_CANID_STANDARD_FD"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"CANIF_RX_CANID_EXTENDED_NO_FD"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"CANIF_RX_CANID_STANDARD_NO_FD"
	.byte		0
	.sleb128	5
	.sleb128	0
.L379:
.L369:
	.sleb128	12
	.4byte		.L340
	.uleb128	163
	.uleb128	1
	.4byte		.L380-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CANIF_TX_CANID_EXTENDED"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CANIF_TX_CANID_STANDARD"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"CANIF_TX_CANID_EXTENDED_FD"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"CANIF_TX_CANID_STANDARD_FD"
	.byte		0
	.sleb128	3
	.sleb128	0
.L380:
.L367:
	.sleb128	12
	.4byte		.L340
	.uleb128	147
	.uleb128	1
	.4byte		.L381-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CANIF_TXPDU_DYNAMIC"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CANIF_TXPDU_STATIC"
	.byte		0
	.sleb128	1
	.sleb128	0
.L381:
.L301:
	.sleb128	12
	.4byte		.L340
	.uleb128	129
	.uleb128	1
	.4byte		.L382-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CANIF_NO_NOTIFICATION"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CANIF_TX_RX_NOTIFICATION"
	.byte		0
	.sleb128	1
	.sleb128	0
.L382:
.L296:
	.sleb128	12
	.4byte		.L340
	.uleb128	103
	.uleb128	1
	.4byte		.L383-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CANIF_OFFLINE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CANIF_TX_OFFLINE"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"CANIF_TX_OFFLINE_ACTIVE"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"CANIF_ONLINE"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"CANIF_PDU_MODE_MAX"
	.byte		0
	.sleb128	4
	.sleb128	0
.L383:
.L291:
	.sleb128	12
	.4byte		.L340
	.uleb128	74
	.uleb128	1
	.4byte		.L384-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CANIF_CS_SLEEP"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CANIF_CS_STARTED"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"CANIF_CS_STOPPED"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"CANIF_CS_UNINIT"
	.byte		0
	.sleb128	3
	.sleb128	0
.L384:
	.section	.debug_info,,n
.L235:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L234:
	.sleb128	15
	.byte		"uint8"
	.byte		0
	.4byte		.L235
.L233:
	.sleb128	15
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L234
.L239:
	.sleb128	15
	.byte		"CanIf_ConfigType"
	.byte		0
	.4byte		.L240
	.section	.debug_info,,n
.L238:
	.sleb128	16
	.4byte		.L239
	.section	.debug_info,,n
.L237:
	.sleb128	17
	.4byte		.L238
.L251:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L250:
	.sleb128	15
	.byte		"uint16"
	.byte		0
	.4byte		.L251
.L272:
	.sleb128	15
	.byte		"CanIfBufferConfig_t"
	.byte		0
	.4byte		.L273
.L271:
	.sleb128	16
	.4byte		.L272
.L270:
	.sleb128	17
	.4byte		.L271
.L277:
	.sleb128	15
	.byte		"CanIfTxBufferRAM_t"
	.byte		0
	.4byte		.L278
.L276:
	.sleb128	17
	.4byte		.L277
.L284:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L283:
	.sleb128	15
	.byte		"uint32"
	.byte		0
	.4byte		.L284
.L282:
	.sleb128	16
	.4byte		.L283
.L290:
	.sleb128	15
	.byte		"CanIf_ControllerModeType"
	.byte		0
	.4byte		.L291
	.section	.debug_info,,n
.L288:
	.sleb128	18
	.4byte		.L289-.L2
	.4byte		.L290
	.section	.debug_info,,n
	.sleb128	19
	.sleb128	0
.L289:
.L295:
	.sleb128	15
	.byte		"CanIf_PduModeType"
	.byte		0
	.4byte		.L296
.L293:
	.sleb128	18
	.4byte		.L294-.L2
	.4byte		.L295
	.sleb128	19
	.sleb128	0
.L294:
.L300:
	.sleb128	15
	.byte		"CanIf_NotifStatusType"
	.byte		0
	.4byte		.L301
.L298:
	.sleb128	18
	.4byte		.L299-.L2
	.4byte		.L300
	.sleb128	19
	.sleb128	0
.L299:
.L303:
	.sleb128	17
	.4byte		.L234
.L310:
	.sleb128	15
	.byte		"CanIfInitConfiguration_t"
	.byte		0
	.4byte		.L311
.L309:
	.sleb128	16
	.4byte		.L310
.L308:
	.sleb128	17
	.4byte		.L309
.L315:
	.sleb128	15
	.byte		"CanIfTxPduConfigInfo_t"
	.byte		0
	.4byte		.L316
.L314:
	.sleb128	16
	.4byte		.L315
.L313:
	.sleb128	17
	.4byte		.L314
.L320:
	.sleb128	15
	.byte		"CanIfRxPduConfigInfo_t"
	.byte		0
	.4byte		.L321
.L319:
	.sleb128	16
	.4byte		.L320
.L318:
	.sleb128	17
	.4byte		.L319
.L325:
	.sleb128	15
	.byte		"CanIfBufferInfo_t"
	.byte		0
	.4byte		.L326
.L324:
	.sleb128	16
	.4byte		.L325
.L323:
	.sleb128	17
	.4byte		.L324
.L332:
	.sleb128	15
	.byte		"CanIfHrhConfigInfo_t"
	.byte		0
	.4byte		.L333
.L331:
	.sleb128	16
	.4byte		.L332
.L330:
	.sleb128	17
	.4byte		.L331
.L329:
	.sleb128	16
	.4byte		.L330
.L328:
	.sleb128	17
	.4byte		.L329
.L335:
	.sleb128	16
	.4byte		.L234
.L338:
	.sleb128	15
	.byte		"CanIf_HthIndexType"
	.byte		0
	.4byte		.L250
.L337:
	.sleb128	16
	.4byte		.L338
.L342:
	.sleb128	17
	.4byte		.L282
.L346:
	.sleb128	15
	.byte		"PduIdType"
	.byte		0
	.4byte		.L250
.L345:
	.sleb128	15
	.byte		"CanIfLpduId_t"
	.byte		0
	.4byte		.L346
.L348:
	.sleb128	15
	.byte		"CanIfHohType_t"
	.byte		0
	.4byte		.L349
.L352:
	.sleb128	15
	.byte		"CanIfHrhRangeConfig_t"
	.byte		0
	.4byte		.L353
.L351:
	.sleb128	16
	.4byte		.L352
.L350:
	.sleb128	17
	.4byte		.L351
.L355:
	.sleb128	16
	.4byte		.L345
.L354:
	.sleb128	17
	.4byte		.L355
.L356:
	.sleb128	15
	.byte		"Can_HwHandleType"
	.byte		0
	.4byte		.L250
.L357:
	.sleb128	15
	.byte		"boolean"
	.byte		0
	.4byte		.L235
.L360:
	.sleb128	15
	.byte		"Can_IdType"
	.byte		0
	.4byte		.L283
.L359:
	.sleb128	15
	.byte		"CanIfCanId_t"
	.byte		0
	.4byte		.L360
.L361:
	.sleb128	15
	.byte		"CanIfRxPduCanIdType_t"
	.byte		0
	.4byte		.L362
.L364:
	.sleb128	15
	.byte		"CanIf_HrhIndexType"
	.byte		0
	.4byte		.L250
.L366:
	.sleb128	15
	.byte		"CanIfCanTxPduType_t"
	.byte		0
	.4byte		.L367
.L368:
	.sleb128	15
	.byte		"CanIfTxPduCanIdType_t"
	.byte		0
	.4byte		.L369
.L370:
	.sleb128	15
	.byte		"CanIfTxBufferType_t"
	.byte		0
	.4byte		.L371
.L374:
	.sleb128	15
	.byte		"CanIf_P2VarUint8Type"
	.byte		0
	.4byte		.L303
.L373:
	.sleb128	16
	.4byte		.L374
.L372:
	.sleb128	17
	.4byte		.L373
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L241:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L243:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),5
	.d2locend
.L252:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L258:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),6
	.d2locend
.L260:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),6
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locend
.L262:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),4
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),0
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo10),0
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),4
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo11),0
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo13),0
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),0
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),4
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),0
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),0
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),0
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),4
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo19),0
	.d2locend
.L268:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),3
	.d2locend
.L274:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo43),0
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo44),4
	.d2locend
.L279:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo34),5
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo44),5
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo40),5
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanIf_Init"
	.wrcm.nstrlist "calls", "CanIf_ConsistencyCheck","CanIf_InitRxTxLPduStatus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanIf_InitRxTxLPduStatus"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanIf_ConsistencyCheck"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_Init.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_Init.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_Init.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_Init.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanIf\ssc\make\..\src\CanIf_Init.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
