#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_TxConfirmation.c"
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
# FUNC( void, CANIF_CODE )CanIf_TxConfirmation
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_TxConfirmation.c"
        .d2line         58,25
#$$ld
.L205:

#$$bf	CanIf_TxConfirmation,interprocedural,rasave,nostackparams
	.globl		CanIf_TxConfirmation
	.d2_cfa_start __cie
CanIf_TxConfirmation:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo5:
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# CanIfErrStatus=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CanTxPduId=r31 CanTxPduId=r3
	.d2prologue_end
# (
#         VAR(PduIdType,AUTOMATIC) CanTxPduId
# )
# {
#     /* REQ: [CANIF007], [DEV_CANIF12002], [CANIF224] */
#     /* REQ: [[CANIF058]] */
#     /* Hold the DET Error status */
#     VAR( Std_ReturnType, AUTOMATIC)CanIfErrStatus = E_OK;
	.d2line		66
	diab.li		r0,0		# CanIfErrStatus=r0
# 
#     /* Hth to which the CanTxPduId belongs */
#     VAR( CanIf_HthIndexType, AUTOMATIC )HthIdx;
# 
#     /* Check if the CanIf module has been initialized */
#     if ( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 )
	.d2line		72
	lis		r3,CanIf_InitStatus_u8@ha
.Llo2:
	lbz		r3,CanIf_InitStatus_u8@l(r3)
	se_cmpi		r3,0
#     {
# /* if DET is enabled REQ: [DEV_CANIF14000] */
# #if ( CANIF_DEV_ERROR_DETECT == STD_ON )
#         /* REQ: [CANIF413] */
#         /* Report error to DET */
#         (void)Det_ReportError( CANIF_MODULE_ID,
#                 CANIF_INSTANCE_ID,
#                 CANIF_SID_TX_CONFIRMATION,
#                 CANIF_E_UNINIT );
# #endif /* CANIF_DEV_ERROR_DETECT == STD_ON */
#         /* REQ: [CANIF412] */
#         CanIfErrStatus = E_NOT_OK;
	.d2line		84
	diab.li		r3,1
	isel		r0,r3,r0,2		# CanIfErrStatus=r0 CanIfErrStatus=r0
.L194:
#     }
#     /* If Development Error Detection is enabled */
# #if ( CANIF_DEV_ERROR_DETECT == STD_ON )
#     else
#     {
# 
#         /* REQ: [CANIF410] */
#         /* Check if CanTxPduId received is valid */
#         if ( CanTxPduId >= ( CanIf_InitConfiguration_p->CanIfNumberOfCanTxPduIds ))
#         {
#             /* Report error to DET */
#             (void)Det_ReportError( CANIF_MODULE_ID,
#                     CANIF_INSTANCE_ID,
#                     CANIF_SID_TX_CONFIRMATION,
#                     CANIF_E_PARAM_LPDU  );
#             CanIfErrStatus = E_NOT_OK;
# 
#         }
# 
#     }/* End if( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 ) */
# #endif /* CANIF_DEV_ERROR_DETECT == STD_ON */
#     /* If no DET errors present */
#     if ( E_OK == CanIfErrStatus )
	.d2line		107
.Llo3:
	rlwinm		r0,r0,0,24,31		# CanIfErrStatus=r0 CanIfErrStatus=r0
	se_cmpi		r0,0		# CanIfErrStatus=r0
	bc		0,2,.L193	# ne
	.section	.text_vle
.L221:
#     {
#         VAR(CanIf_PduModeType, AUTOMATIC) pduMode;
#         VAR( uint8, AUTOMATIC ) ControllerId_u8;
# #if (CANIF_TX_BUFFERING == STD_ON)
#         VAR(uint8, AUTOMATIC) CanDriver_u8;
# #endif /* (CANIF_TX_BUFFERING == STD_ON) */
# 
#         /* Get the Hth to which the L-PDU belongs to */
#         /* REQ: [CANIF667] */
#         HthIdx = CanIf_TxPduConfigInfo_p[CanTxPduId].CanIfBufferCfg->HthIndex;
	.d2line		117
.Llo6:
	lis		r3,CanIf_TxPduConfigInfo_p@ha
	lwz		r0,CanIf_TxPduConfigInfo_p@l(r3)		# CanIfErrStatus=r0
.Llo7:
	rlwinm		r3,r31,0,16,31		# CanTxPduId=r31
	e_mulli		r3,r3,36
	se_add		r3,r0		# CanIfErrStatus=r0
	lwz		r3,16(r3)
	lhz		r0,4(r3)		# CanIfErrStatus=r0
.Llo8:
	mr		r0,r0		# HthIdx=r0 HthIdx=r0
# 
#         ControllerId_u8 = CanIf_HthControllerConfig_p[HthIdx].CanIfCanControllerIdRef_u8;
	.d2line		119
	lis		r3,CanIf_HthControllerConfig_p@ha
	lwz		r3,CanIf_HthControllerConfig_p@l(r3)
	rlwinm		r0,r0,2,14,29		# HthIdx=r0 HthIdx=r0
	se_add		r3,r0		# HthIdx=r0
	lbz		r29,2(r3)		# ControllerId_u8=r29
.Llo15:
	mr		r29,r29		# ControllerId_u8=r29 ControllerId_u8=r29
#         pduMode = CanIf_PduMode_a[ControllerId_u8];
	.d2line		120
	lis		r3,CanIf_PduMode_a@ha
	e_add16i		r3,r3,CanIf_PduMode_a@l
	rlwinm		r0,r29,2,22,29		# HthIdx=r0 ControllerId_u8=r29
.Llo9:
	lwzx		r30,r3,r0
.Llo14:
	mr		r30,r30		# pduMode=r30 pduMode=r30
# 
#         /* Enter Critical Section */
#         SchM_Enter_CanIf(  SCHM_CANIF_EXCLUSIVE_AREA_0 );
	.d2line		123
	diab.li		r3,0
	bl		SchM_Enter_CanIf
# 
# #if( CANIF_PUBLIC_TXCONFIRM_POLLING_SUPPORT == STD_ON )
#         {
#             /* Only register Tx confirmation in CANIF_CS_STARTED mode. */
#             if (CanIf_ControllerMode_a[ControllerId_u8] == CANIF_CS_STARTED)
	.d2line		128
	lis		r3,CanIf_ControllerMode_a@ha
	e_add16i		r3,r3,CanIf_ControllerMode_a@l
	rlwinm		r0,r29,2,22,29		# HthIdx=r0 ControllerId_u8=r29
.Llo10:
	lwzx		r0,r3,r0		# HthIdx=r0
	se_cmpi		r0,1		# HthIdx=r0
	bc		0,2,.L196	# ne
#             {
#                 /* REQ: [CANIF740] */
#                 /* Set Tx confirmation state of the controller to CANIF_TX_RX_NOTIFICATION,
#                    i.e. indicate a received Tx confirmation.
#                    Note: This is not influenced by PDU mode.
#                  */
#                 CanIf_TxConfirmationState_a[ControllerId_u8] = CANIF_TX_RX_NOTIFICATION;
	.d2line		135
.Llo11:
	diab.li		r0,1		# HthIdx=r0
.Llo12:
	lis		r3,CanIf_TxConfirmationState_a@ha
	e_add16i		r3,r3,CanIf_TxConfirmationState_a@l
.Llo16:
	rlwinm		r29,r29,2,22,29		# ControllerId_u8=r29 ControllerId_u8=r29
.Llo17:
	stwx		r0,r3,r29		# HthIdx=r0
.L196:
#             }
#         }
# #endif/* #if( CANIF_PUBLIC_TXCONFIRM_POLLING_SUPPORT == STD_ON )*/
# 
#         /* REQ: [CANIF472] */
#         /* If Read Notification enabled */
# #if( CANIF_READTXPDU_NOTIF_STATUS_API == STD_ON )
# 
#         /* Note:  The SWS does specify whether storing the Tx confirmation status is influenced
#            by the controller mode or by the PDU mode.
#            Assumption: they do not influence.
#          */
# 
#         /* If Notification is enabled for the CanTxPduId received */
#         if( STD_OFF != CanIf_TxPduConfigInfo_p[ CanTxPduId ].CanIfReadTxPduNotifyStatus_b )
#         {
#             /* REQ: [CANIF391] */
#             /* Set the transmit notification flag */
#             CANIF_SET_BIT( CanIf_ReadTxPduNotifySt_pu8[CanTxPduId>>CANIF_BYTE_IND], (CanTxPduId & CANIF_BIT_IND_MASK) );
#         }/* End if( STD_OFF != CanIf_TxPduConfigInfo_p[ CanTxPduId ].CanIfReadTxPduNotifyStatus_b )*/
# 
# #endif/* (CANIF_READTXPDU_NOTIFY_STATUS_API == STD_ON )*/
# 
#         /* Only process pending Tx requests if Tx buffering enabled.
#            Without Tx buffering there cannot be pending Tx requests.
#          */
# #if (CANIF_TX_BUFFERING == STD_ON)
# 
#         /* The underlying driver for the corresponding controller */
#         CanDriver_u8 = CanIf_ControllerConfig_a[ControllerId_u8].CanIfDriverNameRef_u8;
# 
#         /* Transmit pending requests */
#         CanIf_TxPendingRequests(CanDriver_u8, HthIdx);
# 
# #endif /* (CANIF_TX_BUFFERING == STD_ON) */
# 
#         /* Leave Critical Section */
#         SchM_Exit_CanIf( SCHM_CANIF_EXCLUSIVE_AREA_0 );
	.d2line		173
.Llo13:
	diab.li		r3,0
	bl		SchM_Exit_CanIf
# 
#         /* REQ: [CANIF073], [CANIF489]
#            If PDU mode is CANIF_OFFLINE or CANIF_TX_OFFLINE, then Tx confirmation
#            should be blocked.
#            REQ: [CANIF075] PDU mode:
#             + CANIF_ONLINE
#            is OK.
#            Vaguely specified, but it's assumed that PDU mode:
#             + CANIF_TX_OFFLINE_ACTIVE
#            is OK.
#          */
#         if( (CANIF_ONLINE == pduMode) || (CANIF_TX_OFFLINE_ACTIVE == pduMode) )
	.d2line		185
	se_cmpi		r30,3		# pduMode=r30
	bc		1,2,.L198	# eq
.Llo18:
	se_cmpi		r30,2		# pduMode=r30
	bc		0,2,.L193	# ne
.L198:
#         {
#             /* REQ: [CANIF414] */
#             /* Call upper layer call back function for Tx-confirmation */
#             CanIf_ReportTxConfirmation( CanTxPduId );
	.d2line		189
	rlwinm		r3,r31,0,16,31		# CanTxPduId=r31
	bl		CanIf_ReportTxConfirmation
	.section	.text_vle
.L222:
.L193:
# #if (CANIF_PN_SUPPORT == STD_ON)
#             /* REQ: [CANIF751] */
#             /* Reset PnTxFilter */
#             CanIf_ControllerConfig_a[ControllerId_u8].CanIfControllerConfigRAM->CanIfPnTxFilter = CANIF_FALSE;
# #endif
#         }
# 
#     }/* End if ( E_OK == CanIfErrStatus ) */
# 
# }/* End of CanIf_TxConfirmation */
	.d2line		199
	.d2epilogue_begin
.Llo4:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# CanIfErrStatus=r0
	mtspr		lr,r0		# CanIfErrStatus=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L206:
	.type		CanIf_TxConfirmation,@function
	.size		CanIf_TxConfirmation,.-CanIf_TxConfirmation
# Number of nodes = 88

# Allocations for CanIf_TxConfirmation
#	?a4		CanTxPduId
#	?a5		CanIfErrStatus
#	?a6		HthIdx
#	?a7		pduMode
#	?a8		ControllerId_u8

# Allocations for module
	.section	.text_vle
	.0byte		.L251
	.section	.text_vle
#$$ld
.L5:
.L257:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L232:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\internal\\CanIf_Private.h"
.L207:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_TxConfirmation.c"
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
	.uleb128	10
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	33
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_TxConfirmation.c"
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
.L208:
	.sleb128	2
	.4byte		.L204-.L2
	.byte		"CanIf_TxConfirmation"
	.byte		0
	.4byte		.L207
	.uleb128	58
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L205
	.4byte		.L206
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L207
	.uleb128	58
	.uleb128	25
	.byte		"CanTxPduId"
	.byte		0
	.4byte		.L209
	.4byte		.L212
	.section	.debug_info,,n
.L213:
	.sleb128	4
	.4byte		.L207
	.uleb128	66
	.uleb128	36
	.byte		"CanIfErrStatus"
	.byte		0
	.4byte		.L214
	.4byte		.L217
.L218:
	.sleb128	4
	.4byte		.L207
	.uleb128	69
	.uleb128	41
	.byte		"HthIdx"
	.byte		0
	.4byte		.L219
	.4byte		.L220
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L224
	.4byte		.L221
	.4byte		.L222
.L225:
	.sleb128	4
	.4byte		.L207
	.uleb128	109
	.uleb128	43
	.byte		"pduMode"
	.byte		0
	.4byte		.L226
	.4byte		.L228
.L229:
	.sleb128	4
	.4byte		.L207
	.uleb128	110
	.uleb128	33
	.byte		"ControllerId_u8"
	.byte		0
	.4byte		.L215
	.4byte		.L230
	.section	.debug_info,,n
	.sleb128	0
.L224:
	.section	.debug_info,,n
	.sleb128	0
.L204:
	.section	.debug_info,,n
.L231:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L232
	.uleb128	323
	.uleb128	29
	.byte		"CanIf_InitStatus_u8"
	.byte		0
	.4byte		.L215
	.0byte		.L231
.L233:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L232
	.uleb128	336
	.uleb128	1
	.byte		"CanIf_ControllerMode_a"
	.byte		0
	.4byte		.L234
.L238:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L232
	.uleb128	342
	.uleb128	42
	.byte		"CanIf_PduMode_a"
	.byte		0
	.4byte		.L239
.L241:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L232
	.uleb128	353
	.uleb128	46
	.byte		"CanIf_TxConfirmationState_a"
	.byte		0
	.4byte		.L242
.L246:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L232
	.uleb128	428
	.uleb128	1
	.byte		"CanIf_TxPduConfigInfo_p"
	.byte		0
	.4byte		.L247
.L251:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L232
	.uleb128	518
	.uleb128	1
	.byte		"CanIf_HthControllerConfig_p"
	.byte		0
	.4byte		.L252
	.section	.debug_info,,n
	.section	.debug_info,,n
.L250:
	.sleb128	7
	.4byte		.L257
	.uleb128	266
	.uleb128	1
	.4byte		.L258-.L2
	.uleb128	36
	.section	.debug_info,,n
.L106:
	.sleb128	8
	.byte		"CanIfCanTxPduIdCanId"
	.byte		0
	.4byte		.L259
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L107:
	.sleb128	8
	.byte		"CanIfCanTxPduType"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L108:
	.sleb128	8
	.byte		"CanIfTxPduIdCanIdType"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L109:
	.sleb128	8
	.byte		"CanIfTxBufferType"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L110:
	.sleb128	8
	.byte		"CanIfBufferCfg"
	.byte		0
	.4byte		.L269
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L111:
	.sleb128	8
	.byte		"PduIdRef"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L112:
	.sleb128	8
	.byte		"CanIfCanTxPduIdDlc_u8"
	.byte		0
	.4byte		.L215
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L113:
	.sleb128	8
	.byte		"CanIfTxPduCallBackInd_u8"
	.byte		0
	.4byte		.L215
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L114:
	.sleb128	8
	.byte		"CanIfReadTxPduNotifyStatus_b"
	.byte		0
	.4byte		.L273
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L115:
	.sleb128	8
	.byte		"DataPtrPtr"
	.byte		0
	.4byte		.L274
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L116:
	.sleb128	8
	.byte		"TxBufferDataSize"
	.byte		0
	.4byte		.L215
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L117:
	.sleb128	8
	.byte		"IsDedicated"
	.byte		0
	.4byte		.L273
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
	.sleb128	0
.L258:
.L272:
	.sleb128	7
	.4byte		.L257
	.uleb128	266
	.uleb128	1
	.4byte		.L278-.L2
	.uleb128	16
.L98:
	.sleb128	8
	.byte		"CanIfBufferInfo"
	.byte		0
	.4byte		.L279
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L99:
	.sleb128	8
	.byte		"HthIndex"
	.byte		0
	.4byte		.L219
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L100:
	.sleb128	8
	.byte		"CanIfBufferSize"
	.byte		0
	.4byte		.L215
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L101:
	.sleb128	8
	.byte		"DataPtrList"
	.byte		0
	.4byte		.L274
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L102:
	.sleb128	8
	.byte		"MaxDataSize"
	.byte		0
	.4byte		.L215
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L103:
	.sleb128	8
	.byte		"IsDedicated"
	.byte		0
	.4byte		.L273
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L278:
.L281:
	.sleb128	7
	.4byte		.L257
	.uleb128	266
	.uleb128	1
	.4byte		.L282-.L2
	.uleb128	16
.L93:
	.sleb128	8
	.byte		"BufferedCanId"
	.byte		0
	.4byte		.L259
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L94:
	.sleb128	8
	.byte		"SwLPduHandle"
	.byte		0
	.4byte		.L283
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L95:
	.sleb128	8
	.byte		"HthIndex"
	.byte		0
	.4byte		.L219
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L96:
	.sleb128	8
	.byte		"Data"
	.byte		0
	.4byte		.L276
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L97:
	.sleb128	8
	.byte		"DataLength_u8"
	.byte		0
	.4byte		.L215
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L282:
.L256:
	.sleb128	7
	.4byte		.L257
	.uleb128	266
	.uleb128	1
	.4byte		.L284-.L2
	.uleb128	4
.L91:
	.sleb128	8
	.byte		"CanIfHthIdSymRef"
	.byte		0
	.4byte		.L285
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L92:
	.sleb128	8
	.byte		"CanIfCanControllerIdRef_u8"
	.byte		0
	.4byte		.L215
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L284:
	.section	.debug_info,,n
.L268:
	.sleb128	9
	.4byte		.L257
	.uleb128	248
	.uleb128	1
	.4byte		.L286-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"CANIF_NO_BUFFER"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANIF_BUFFER"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANIF_BUFFER_POOL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L286:
.L266:
	.sleb128	9
	.4byte		.L257
	.uleb128	163
	.uleb128	1
	.4byte		.L287-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANIF_TX_CANID_EXTENDED"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANIF_TX_CANID_STANDARD"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANIF_TX_CANID_EXTENDED_FD"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"CANIF_TX_CANID_STANDARD_FD"
	.byte		0
	.sleb128	3
	.sleb128	0
.L287:
.L264:
	.sleb128	9
	.4byte		.L257
	.uleb128	147
	.uleb128	1
	.4byte		.L288-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANIF_TXPDU_DYNAMIC"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANIF_TXPDU_STATIC"
	.byte		0
	.sleb128	1
	.sleb128	0
.L288:
.L245:
	.sleb128	9
	.4byte		.L257
	.uleb128	129
	.uleb128	1
	.4byte		.L289-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANIF_NO_NOTIFICATION"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANIF_TX_RX_NOTIFICATION"
	.byte		0
	.sleb128	1
	.sleb128	0
.L289:
.L227:
	.sleb128	9
	.4byte		.L257
	.uleb128	103
	.uleb128	1
	.4byte		.L290-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANIF_OFFLINE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANIF_TX_OFFLINE"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANIF_TX_OFFLINE_ACTIVE"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"CANIF_ONLINE"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"CANIF_PDU_MODE_MAX"
	.byte		0
	.sleb128	4
	.sleb128	0
.L290:
.L237:
	.sleb128	9
	.4byte		.L257
	.uleb128	74
	.uleb128	1
	.4byte		.L291-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANIF_CS_SLEEP"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANIF_CS_STARTED"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANIF_CS_STOPPED"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"CANIF_CS_UNINIT"
	.byte		0
	.sleb128	3
	.sleb128	0
.L291:
	.section	.debug_info,,n
.L211:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L210:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L211
.L209:
	.sleb128	12
	.byte		"PduIdType"
	.byte		0
	.4byte		.L210
.L216:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L215:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L216
.L214:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L215
.L219:
	.sleb128	12
	.byte		"CanIf_HthIndexType"
	.byte		0
	.4byte		.L210
.L226:
	.sleb128	12
	.byte		"CanIf_PduModeType"
	.byte		0
	.4byte		.L227
.L236:
	.sleb128	12
	.byte		"CanIf_ControllerModeType"
	.byte		0
	.4byte		.L237
	.section	.debug_info,,n
.L234:
	.sleb128	13
	.4byte		.L235-.L2
	.4byte		.L236
	.section	.debug_info,,n
	.sleb128	14
	.sleb128	0
.L235:
.L239:
	.sleb128	13
	.4byte		.L240-.L2
	.4byte		.L226
	.sleb128	14
	.sleb128	0
.L240:
.L244:
	.sleb128	12
	.byte		"CanIf_NotifStatusType"
	.byte		0
	.4byte		.L245
.L242:
	.sleb128	13
	.4byte		.L243-.L2
	.4byte		.L244
	.sleb128	14
	.sleb128	0
.L243:
.L249:
	.sleb128	12
	.byte		"CanIfTxPduConfigInfo_t"
	.byte		0
	.4byte		.L250
	.section	.debug_info,,n
.L248:
	.sleb128	15
	.4byte		.L249
	.section	.debug_info,,n
.L247:
	.sleb128	16
	.4byte		.L248
.L255:
	.sleb128	12
	.byte		"CanIfHthControllerConfig_t"
	.byte		0
	.4byte		.L256
.L254:
	.sleb128	15
	.4byte		.L255
.L253:
	.sleb128	16
	.4byte		.L254
.L252:
	.sleb128	15
	.4byte		.L253
.L262:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L261:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L262
.L260:
	.sleb128	12
	.byte		"Can_IdType"
	.byte		0
	.4byte		.L261
.L259:
	.sleb128	12
	.byte		"CanIfCanId_t"
	.byte		0
	.4byte		.L260
.L263:
	.sleb128	12
	.byte		"CanIfCanTxPduType_t"
	.byte		0
	.4byte		.L264
.L265:
	.sleb128	12
	.byte		"CanIfTxPduCanIdType_t"
	.byte		0
	.4byte		.L266
.L267:
	.sleb128	12
	.byte		"CanIfTxBufferType_t"
	.byte		0
	.4byte		.L268
.L271:
	.sleb128	12
	.byte		"CanIfBufferConfig_t"
	.byte		0
	.4byte		.L272
.L270:
	.sleb128	15
	.4byte		.L271
.L269:
	.sleb128	16
	.4byte		.L270
.L273:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L216
.L277:
	.sleb128	16
	.4byte		.L215
.L276:
	.sleb128	12
	.byte		"CanIf_P2VarUint8Type"
	.byte		0
	.4byte		.L277
.L275:
	.sleb128	15
	.4byte		.L276
.L274:
	.sleb128	16
	.4byte		.L275
.L280:
	.sleb128	12
	.byte		"CanIfTxBufferRAM_t"
	.byte		0
	.4byte		.L281
.L279:
	.sleb128	16
	.4byte		.L280
.L283:
	.sleb128	12
	.byte		"CanIfLpduId_t"
	.byte		0
	.4byte		.L209
.L285:
	.sleb128	12
	.byte		"Can_HwHandleType"
	.byte		0
	.4byte		.L210
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L212:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L217:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locend
.L220:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),0
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),0
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),0
	.d2locend
.L228:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo4),30
	.d2locend
.L230:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo11),29
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),29
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo18),29
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanIf_TxConfirmation"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanIf_ReportTxConfirmation","SchM_Enter_CanIf","SchM_Exit_CanIf"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_TxConfirmation.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_TxConfirmation.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_TxConfirmation.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_TxConfirmation.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_TxConfirmation.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_TxConfirmation.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanIf\ssc\make\..\src\CanIf_TxConfirmation.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
