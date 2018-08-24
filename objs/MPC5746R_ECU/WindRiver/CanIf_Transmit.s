#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_Transmit.c"
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
# FUNC( Std_ReturnType, CANIF_CODE )CanIf_Transmit
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_Transmit.c"
        .d2line         76,35
#$$ld
.L226:

#$$bf	CanIf_Transmit,interprocedural,rasave,nostackparams
	.globl		CanIf_Transmit
	.d2_cfa_start __cie
CanIf_Transmit:
.Llo1:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
.Llo24:
	stmw		r25,36(r1)		# offset r1+36  0x24
	.d2_cfa_offset_list	25,31,1,1
	stw		r0,68(r1)		# CanIfRet=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CanTxPduId=r31 CanTxPduId=r3
	mr		r30,r4		# PduInfoPtr=r30 PduInfoPtr=r4
	.d2prologue_end
# (
#     VAR(CanIfLpduId_t, AUTOMATIC) CanTxPduId,
#     P2CONST(PduInfoType, AUTOMATIC, CANIF_APPL_CONST) PduInfoPtr
# )
# {
#     /* REQ: [CANIF005], [CANIF662], [CANIF292], [DEV_CANIF115], [CANIF058] */
# 
#     /* Structure to hold the Pdu to be transmitted */
#     VAR( Can_PduType, AUTOMATIC )CanPdu;
# 
#     /* Variable holding the return value of Driver */
#     VAR( Can_ReturnType, AUTOMATIC )CanRet;
# 
#     /* Variable to hold the Controller Id */
#     VAR( uint8, AUTOMATIC )ContrllrId_u8;
# 
#     /* Holds the actual Hth Id */
#     VAR( Can_HwHandleType, AUTOMATIC )HthId;
# 
#     /* Holds the Logical Hth Id */
#     VAR( CanIf_HthIndexType, AUTOMATIC )HthIdx;
# 
#     /* Holds the Driver Id to be referred */
#     VAR( uint8, AUTOMATIC )CanDrv_u8;
# 
# /* REQ: [CANIF018], [CANIF661] */
# /* If Development error detection is enabled */
# #if( CANIF_DEV_ERROR_DETECT == STD_ON )
# 
#     /* Get the error status */
#     VAR( Std_ReturnType, AUTOMATIC )CanIfRet = CanIf_TransmitDETCheck( CanTxPduId, PduInfoPtr );
# 
# #else
#     /* Initialise Return value to E_OK */
#     VAR( Std_ReturnType, AUTOMATIC )CanIfRet = E_OK;
	.d2line		111
	diab.li		r0,0		# CanIfRet=r0
# 
#     /* Even if DET is switched off CanIf_Transmit shall return E_NOT_OK if
#      * CanIf is not initialized */
#     if ( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 )
	.d2line		115
	lis		r3,CanIf_InitStatus_u8@ha
.Llo2:
	lbz		r3,CanIf_InitStatus_u8@l(r3)
	se_cmpi		r3,0
#     {
#         CanIfRet = E_NOT_OK;
	.d2line		117
	diab.li		r27,1		# CanIfRet=r27
	isel		r27,r27,r0,2		# CanIfRet=r27 CanIfRet=r27 CanIfRet=r0
.L194:
#     }
# #endif  /* CANIF_DEV_ERROR_DETECT == STD_ON */
# 
#     if ( CanIfRet == E_OK )
	.d2line		121
.Llo3:
	rlwinm		r3,r27,0,24,31		# CanIfRet=r27
.Llo9:
	se_cmpi		r3,0
	bc		0,2,.L195	# ne
	.section	.text_vle
.L262:
#     {
#         /* Local variables to store global variables. So, protections are not needed */
#         VAR(CanIf_PduModeType, AUTOMATIC)           CanIf_PduMode_ContrllrId;
#         VAR(CanIf_ControllerModeType, AUTOMATIC)    CanIf_ControllerMode_ContrllrId;
# 
#         /* The configured logical Hth for this CanTxPduId */
#         /* REQ: [CANIF466] */
#         HthIdx = CanIf_TxPduConfigInfo_p[CanTxPduId].CanIfBufferCfg->HthIndex;
	.d2line		129
	lis		r3,CanIf_TxPduConfigInfo_p@ha
	lwz		r0,CanIf_TxPduConfigInfo_p@l(r3)		# CanIfRet=r0
	rlwinm		r3,r31,0,16,31		# CanTxPduId=r31
	e_mulli		r3,r3,36
	se_add		r3,r0		# CanIfRet=r0
	lwz		r3,16(r3)
	lhz		r0,4(r3)		# CanIfRet=r0
.Llo18:
	mr		r0,r0		# HthIdx=r0 HthIdx=r0
# 
#         /* The actual Hth Id obtained from CAN driver */
#         HthId  = CanIf_HthControllerConfig_p[HthIdx].CanIfHthIdSymRef;
	.d2line		132
	lis		r3,CanIf_HthControllerConfig_p@ha
	lwz		r4,CanIf_HthControllerConfig_p@l(r3)
	rlwinm		r0,r0,2,14,29		# HthIdx=r0 HthIdx=r0
	lhzux		r28,r4,r0
.Llo17:
	mr		r28,r28		# HthId=r28 HthId=r28
# 
#         /* The controller to which the Hth belongs */
#         ContrllrId_u8 =
	.d2line		135
	lwz		r3,CanIf_HthControllerConfig_p@l(r3)
	se_add		r3,r0		# HthIdx=r0
	lbz		r29,2(r3)		# ContrllrId_u8=r29
.Llo15:
	mr		r29,r29		# ContrllrId_u8=r29 ContrllrId_u8=r29
#         CanIf_HthControllerConfig_p[HthIdx].CanIfCanControllerIdRef_u8;
# 
#         /* Enter Critical Section */
#         SchM_Enter_CanIf(  SCHM_CANIF_EXCLUSIVE_AREA_0 );
	.d2line		139
	diab.li		r3,0
	bl		SchM_Enter_CanIf
# 
#         /* storing two global variable in local - protection is not needed from here */
#         CanIf_PduMode_ContrllrId = CanIf_PduMode_a[ ContrllrId_u8 ];
	.d2line		142
.Llo19:
	lis		r3,CanIf_PduMode_a@ha
	e_add16i		r3,r3,CanIf_PduMode_a@l
	rlwinm		r0,r29,2,22,29		# HthIdx=r0 ContrllrId_u8=r29
	lwzux		r26,r3,r0		# CanIf_PduMode_ContrllrId=r26
.Llo28:
	mr		r26,r26		# CanIf_PduMode_ContrllrId=r26 CanIf_PduMode_ContrllrId=r26
#         CanIf_ControllerMode_ContrllrId = CanIf_ControllerMode_a[ ContrllrId_u8 ];
	.d2line		143
	lis		r3,CanIf_ControllerMode_a@ha
	e_add16i		r3,r3,CanIf_ControllerMode_a@l
	lwzx		r25,r3,r0
.Llo29:
	mr		r25,r25		# CanIf_ControllerMode_ContrllrId=r25 CanIf_ControllerMode_ContrllrId=r25
# 
#         /* Leave Critical Section */
#         SchM_Exit_CanIf(  SCHM_CANIF_EXCLUSIVE_AREA_0 );
	.d2line		146
	diab.li		r3,0
	bl		SchM_Exit_CanIf
# 
#         /* The underlying driver for the corresponding controller */
#         CanDrv_u8 =
	.d2line		149
	lis		r3,(CanIf_ControllerConfig_a+11)@ha
	e_add16i		r3,r3,(CanIf_ControllerConfig_a+11)@l
	rlwinm		r29,r29,4,20,27		# ContrllrId_u8=r29 ContrllrId_u8=r29
.Llo16:
	lbzx		r0,r3,r29		# HthIdx=r0
.Llo20:
	mr		r0,r0		# CanDrv_u8=r0 CanDrv_u8=r0
#         CanIf_ControllerConfig_a[ ContrllrId_u8 ].CanIfDriverNameRef_u8;
# 
#         /* REQ: [CANIF382] */
#         /* If Pdu channel mode is CANIF_OFFLINE */
#         if(CANIF_OFFLINE ==  CanIf_PduMode_ContrllrId)
	.d2line		154
	se_cmpi		r26,0		# CanIf_PduMode_ContrllrId=r26
	bc		0,2,.L196	# ne
#         {
# /* if DET is enabled REQ: [DEV_CANIF14000] */
# #if ( CANIF_DEV_ERROR_DETECT == STD_ON )
#             /* Report error to DET */
#             (void)Det_ReportError( CANIF_MODULE_ID,
#                              CANIF_INSTANCE_ID,
#                              CANIF_SID_TRANSMIT,
#                              CANIF_E_STOPPED );
# #endif /* CANIF_DEV_ERROR_DETECT == STD_ON */
# 
#             CanIfRet = E_NOT_OK;
	.d2line		165
	diab.li		r27,1		# CanIfRet=r27
	b		.L195
.L196:
#         }
#         else
#         {
# 
# 
#             /* REQ: [CANIF317] */
#             /* Transmit possible only if the Controller mode is STARTED and
#             the channel mode (Pdu mode) for Tx path is online or offline active */
#             switch(CanIf_ControllerMode_ContrllrId)
	.d2line		174
	mr.		r6,r25		# CanIf_ControllerMode_ContrllrId=r6 CanIf_ControllerMode_ContrllrId=?a13
	bc		1,2,.L210	# eq
.Llo30:
	se_cmpi		r6,1
	bc		1,2,.L198	# eq
	se_cmpi		r6,2
	bc		1,2,.L211	# eq
.Llo4:
	b		.L212
.L198:
#             {
#                 case CANIF_CS_STARTED:
#                 {
# 
#                     /* REQ: [CANIF075] */
#                     if (CANIF_ONLINE == CanIf_PduMode_ContrllrId)
	.d2line		180
.Llo5:
	se_cmpi		r26,3		# CanIf_PduMode_ContrllrId=r26
	bc		0,2,.L199	# ne
#                     {
# 
#     /* if Pn Support is configured */
#     #if (CANIF_PN_SUPPORT == STD_ON)
#                         /*if TxPdu is not Pass PnFilter and controller has filter set return E_NOT_OK*/
#                         /* REQ: [CANIF750] ,[CANIF752] */
#                         if( (CanIf_ControllerConfig_a[ContrllrId_u8].CanIfControllerConfigRAM->CanIfPnTxFilter == CANIF_TRUE) &&
#                             (CanIf_TxPduConfigInfo_p[ CanTxPduId ].CanIfPnFilterPdu == CANIF_FALSE))
#                         {
#                             CanIfRet = E_NOT_OK;
#                         }
#                         else
#     #endif  /* END #if(CANIF_PN_SUPPORT == STD_ON) */
# 
#                         {
#         /* if SetDynamicTxId API is enabled  */
#         #if (CANIF_SETDYNAMICTXID_API == STD_ON)
#                             /* Check if Can Id type is DYNAMIC */
#                             if ( CANIF_TXPDU_DYNAMIC ==
#                                 CanIf_TxPduConfigInfo_p[ CanTxPduId ].CanIfCanTxPduType )
#                             {
#                                 /* Get the CanId corresponding to the CanTxPduId from dynamic CanId array */
#                                 /* REW: [CANIF243] It's assumed that the store CAN ID already contains the EXT ID information */
#                                 CanPdu.id = CanIf_DynTxPduId_p[CanIf_TxPduConfigInfo_p
#                                                     [ CanTxPduId ].CanIfDynamicIdIndex];
#                             }
#                             else
#         #endif /* End #if (CANIF_SETDYNAMICTXID_API == STD_ON) */
#                             {
#                                 /* Get the configured static CanId */
#                                 /* REW: [CANIF243] It's assumed that the stored CAN ID already contains the EXT ID information */
#                                 CanPdu.id =
	.d2line		212
.Llo21:
	lis		r3,CanIf_TxPduConfigInfo_p@ha
	lwz		r3,CanIf_TxPduConfigInfo_p@l(r3)
	rlwinm		r4,r31,0,16,31		# CanTxPduId=r31
	e_mulli		r4,r4,36
	lwzx		r3,r3,r4
	stw		r3,12(r1)
#                                 CanIf_TxPduConfigInfo_p[ CanTxPduId ].CanIfCanTxPduIdCanId;
#                             }/* End if( CANIF_TXPDU_DYNAMIC ==
#                                 CanIf_TxPduConfigInfo_p[ CanTxPduId ].CanIfCanTxPduType )*/
# 
#                              /* Copy the length of the upper layer PDU */
#                             CanPdu.length = (uint8)PduInfoPtr->SduLength;
	.d2line		218
	lhz		r3,4(r30)		# PduInfoPtr=r30
	stb		r3,18(r1)
# 
#                             /* Copy the pointer to the buffer where data is present in the
#                             upper layer */
#                             CanPdu.sdu = PduInfoPtr->SduDataPtr;
	.d2line		222
	lwz		r3,0(r30)		# PduInfoPtr=r30
	stw		r3,8(r1)
# 
#                             /* Copy the CanTxPdu Handle */
#                             CanPdu.swPduHandle = CanTxPduId;
	.d2line		225
	sth		r31,16(r1)		# CanTxPduId=r31
# 
#                             /* REQ: [DEV_CANIF12017] */
#         #if (CANIF_CHECKSUM_TX_CALLOUT_SUPPORT == STD_ON)
#                             if (STD_ON == CanIf_TxPduConfigInfo_p[CanTxPduId].CanIfTxPduChecksumEnabled_b)
#                             {
#                                 /* Calculate checksum and copy it to the first byte of the frame */
#                                 CanPdu.sdu[0] = CanIf_DispatchConfig.CanIfChecksumTxCallout(
#                                         CanPdu.id & ~(CANIF_EXTENDED_CANID_BIT_MASK | CANIF_FD_CANID_BIT_MASK),
#                                         CanPdu.length,
#                                         CanPdu.sdu);
#                             }
#         #endif /* End #if (CANIF_CHECKSUM_TX_CALLOUT_SUPPORT == STD_ON) */
# 
#                             /* Call CanWrite() corresponding to the driver
#                             to execute the Write */
#                             /* REQ: [CANIF023], [CANIF318], [CANIF040] */
#                             CanRet =
	.d2line		242
	lis		r3,(CanIf_DriverConfig_a+4)@ha
	e_add16i		r3,r3,(CanIf_DriverConfig_a+4)@l
.Llo22:
	rlwinm		r0,r0,4,20,27		# CanDrv_u8=r0 CanDrv_u8=r0
	lwzx		r0,r3,r0		# CanDrv_u8=r0
.Llo23:
	mtspr		ctr,r0		# CanDrv_u8=ctr
	rlwinm		r3,r28,0,16,31		# HthId=r28
	diab.addi		r4,r1,8
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo6:
	mr		r3,r3		# CanRet=r3 CanRet=r3
#                             CanIf_DriverConfig_a[CanDrv_u8].CanIfCanWrite_p( HthId ,
#                             (const Can_PduType*) &CanPdu );
# 
#                             /* REQ: [CANIF162], [CANIF381] */
#                             if ( CanRet == CAN_BUSY)
	.d2line		247
	se_cmpi		r3,2		# CanRet=r3
	bc		0,2,.L200	# ne
#                             {
#     #if (CANIF_TX_BUFFERING == STD_ON)
#                                 /* Buffer CAN message if the CAN driver is busy  */
#                                 CanIfRet = CanIf_BufferTransmitMessage( HthIdx, &CanPdu );
#     #else
#                                 /* No Tx buffer support, so Tx call fails */
#                                 CanIfRet = E_NOT_OK;
	.d2line		254
	diab.li		r27,1		# CanIfRet=r27
	b		.L195
.L200:
#     #endif /* (CANIF_TX_BUFFERING == STD_ON) */
#                             }
#                             else if (CanRet == CAN_NOT_OK)
	.d2line		257
	se_cmpi		r3,1		# CanRet=r3
	bc		0,2,.L202	# ne
#                             {
#                                 CanIfRet = E_NOT_OK;
	.d2line		259
	diab.li		r27,1		# CanIfRet=r27
	b		.L195
.L202:
#                             }
#                             else if (CanRet == CAN_OK)
	.d2line		261
	se_cmpi		r3,0		# CanRet=r3
	bc		0,2,.L195	# ne
#                             {
#                                 CanIfRet = E_OK;
	.d2line		263
.Llo14:
	diab.li		r27,0		# CanIfRet=r27
	b		.L195
.L199:
#                             }
#                             else
#                             {
#                                 /* concluding else */
# 
#                             }
#                         }
#                     }
#                     /* REQ: [CANIF072] */
#                      /* Check if transmit simulation is enabled  */
#                     else if (CANIF_TX_OFFLINE_ACTIVE == CanIf_PduMode_ContrllrId)
	.d2line		274
.Llo7:
	se_cmpi		r26,2		# CanIf_PduMode_ContrllrId=r26
	bc		0,2,.L207	# ne
#                     {
# 
#                         /* Call upper layer call back function for Confirmation */
#                         CanIf_ReportTxConfirmation( CanTxPduId );
	.d2line		278
.Llo10:
	rlwinm		r3,r31,0,16,31		# CanTxPduId=r31
	bl		CanIf_ReportTxConfirmation
	b		.L195
.L207:
# 
#                     }
#                     else
#                     {
#                         /* set return value as NOT_OK */
#                         CanIfRet = E_NOT_OK;
	.d2line		284
	diab.li		r27,1		# CanIfRet=r27
	b		.L195
.L210:
# 
#                     }
#                     break;
#                 }
#                 /* REQ: [CANIF317] */
#                 case CANIF_CS_SLEEP:
#                 {
#                     CanIfRet = E_NOT_OK;
	.d2line		292
.Llo11:
	diab.li		r27,1		# CanIfRet=r27
	b		.L195
.L211:
#                     break;
#                 }
#                 /* REQ: [CANIF723], [CANIF677] */
#                 case CANIF_CS_STOPPED:
#                 {
# 
# #if ( CANIF_DEV_ERROR_DETECT == STD_ON )
#                     /* Report error to DET */
#                     (void)Det_ReportError( CANIF_MODULE_ID,
#                                      CANIF_INSTANCE_ID,
#                                      CANIF_SID_TRANSMIT,
#                                      CANIF_E_STOPPED );
# #endif /* CANIF_DEV_ERROR_DETECT == STD_ON */
# 
#                     CanIfRet = E_NOT_OK;
	.d2line		307
.Llo8:
	diab.li		r27,1		# CanIfRet=r27
.Llo25:
	b		.L195
.L212:
#                     break;
#                 }
#                 /* REQ: [CANIF317] */
#                 default:
#                 {
#                     CanIfRet = E_NOT_OK;
	.d2line		313
.Llo26:
	diab.li		r27,1		# CanIfRet=r27
	.section	.text_vle
.L263:
.L195:
#                     break;
#                 } /* default */
# 
#             }/* switch */
#         }/* else */
#     }
# 
#     return CanIfRet;
	.d2line		321
.Llo12:
	rlwinm		r3,r27,0,24,31		# CanRet=r3 CanIfRet=r27
# 
# }/* End of CanIf_Transmit() */
	.d2line		323
	.d2epilogue_begin
	lmw		r25,36(r1)		# offset r1+36  0x24
	.d2_cfa_restore_list	2,10
.Llo27:
	lwz		r0,68(r1)		# CanIfRet=r0
	mtspr		lr,r0		# CanIfRet=lr
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo13:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L227:
	.type		CanIf_Transmit,@function
	.size		CanIf_Transmit,.-CanIf_Transmit
# Number of nodes = 204

# Allocations for CanIf_Transmit
#	?a4		CanTxPduId
#	?a5		PduInfoPtr
#	SP,8		CanPdu
#	?a6		CanRet
#	?a7		ContrllrId_u8
#	?a8		HthId
#	?a9		HthIdx
#	?a10		CanDrv_u8
#	?a11		CanIfRet
#	?a12		CanIf_PduMode_ContrllrId
#	?a13		CanIf_ControllerMode_ContrllrId

# Allocations for module
	.section	.text_vle
	.0byte		.L287
	.section	.text_vle
#$$ld
.L5:
.L350:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L348:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L305:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L275:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\internal\\CanIf_Private.h"
.L228:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_Transmit.c"
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
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	5
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_Transmit.c"
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
.L232:
	.sleb128	2
	.4byte		.L225-.L2
	.byte		"CanIf_Transmit"
	.byte		0
	.4byte		.L228
	.uleb128	76
	.uleb128	35
	.4byte		.L229
	.byte		0x1
	.byte		0x1
	.4byte		.L226
	.4byte		.L227
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L228
	.uleb128	76
	.uleb128	35
	.byte		"CanTxPduId"
	.byte		0
	.4byte		.L233
	.4byte		.L237
	.sleb128	3
	.4byte		.L228
	.uleb128	76
	.uleb128	35
	.byte		"PduInfoPtr"
	.byte		0
	.4byte		.L238
	.4byte		.L242
	.section	.debug_info,,n
.L243:
	.sleb128	4
	.4byte		.L228
	.uleb128	85
	.uleb128	34
	.byte		"CanPdu"
	.byte		0
	.4byte		.L244
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
.L246:
	.sleb128	5
	.4byte		.L228
	.uleb128	88
	.uleb128	37
	.byte		"CanRet"
	.byte		0
	.4byte		.L247
	.4byte		.L249
.L250:
	.sleb128	5
	.4byte		.L228
	.uleb128	91
	.uleb128	28
	.byte		"ContrllrId_u8"
	.byte		0
	.4byte		.L230
	.4byte		.L251
.L252:
	.sleb128	5
	.4byte		.L228
	.uleb128	94
	.uleb128	39
	.byte		"HthId"
	.byte		0
	.4byte		.L253
	.4byte		.L254
.L255:
	.sleb128	5
	.4byte		.L228
	.uleb128	97
	.uleb128	41
	.byte		"HthIdx"
	.byte		0
	.4byte		.L256
	.4byte		.L257
.L258:
	.sleb128	5
	.4byte		.L228
	.uleb128	100
	.uleb128	28
	.byte		"CanDrv_u8"
	.byte		0
	.4byte		.L230
	.4byte		.L259
.L260:
	.sleb128	5
	.4byte		.L228
	.uleb128	111
	.uleb128	37
	.byte		"CanIfRet"
	.byte		0
	.4byte		.L229
	.4byte		.L261
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L265
	.4byte		.L262
	.4byte		.L263
.L266:
	.sleb128	5
	.4byte		.L228
	.uleb128	124
	.uleb128	53
	.byte		"CanIf_PduMode_ContrllrId"
	.byte		0
	.4byte		.L267
	.4byte		.L269
.L270:
	.sleb128	5
	.4byte		.L228
	.uleb128	125
	.uleb128	53
	.byte		"CanIf_ControllerMode_ContrllrId"
	.byte		0
	.4byte		.L271
	.4byte		.L273
	.section	.debug_info,,n
	.sleb128	0
.L265:
	.section	.debug_info,,n
	.sleb128	0
.L225:
	.section	.debug_info,,n
.L274:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L275
	.uleb128	323
	.uleb128	29
	.byte		"CanIf_InitStatus_u8"
	.byte		0
	.4byte		.L230
	.0byte		.L274
.L276:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L275
	.uleb128	336
	.uleb128	1
	.byte		"CanIf_ControllerMode_a"
	.byte		0
	.4byte		.L277
.L279:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L275
	.uleb128	342
	.uleb128	42
	.byte		"CanIf_PduMode_a"
	.byte		0
	.4byte		.L280
.L282:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L275
	.uleb128	428
	.uleb128	1
	.byte		"CanIf_TxPduConfigInfo_p"
	.byte		0
	.4byte		.L283
.L287:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L275
	.uleb128	518
	.uleb128	1
	.byte		"CanIf_HthControllerConfig_p"
	.byte		0
	.4byte		.L288
	.section	.debug_info,,n
.L293:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L275
	.uleb128	544
	.uleb128	1
	.byte		"CanIf_ControllerConfig_a"
	.byte		0
	.4byte		.L294
.L299:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L275
	.uleb128	552
	.uleb128	1
	.byte		"CanIf_DriverConfig_a"
	.byte		0
	.4byte		.L300
	.section	.debug_info,,n
.L304:
	.sleb128	8
	.4byte		.L305
	.uleb128	266
	.uleb128	1
	.4byte		.L306-.L2
	.uleb128	16
	.section	.debug_info,,n
.L157:
	.sleb128	9
	.byte		"CanIfCanSetControllerMode_p"
	.byte		0
	.4byte		.L307
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L158:
	.sleb128	9
	.byte		"CanIfCanWrite_p"
	.byte		0
	.4byte		.L312
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L159:
	.sleb128	9
	.byte		"CanIfCanCheckWakeup_p"
	.byte		0
	.4byte		.L317
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L160:
	.sleb128	9
	.byte		"CanIfInitHohConfigRef_u8"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L306:
.L298:
	.sleb128	8
	.4byte		.L305
	.uleb128	266
	.uleb128	1
	.4byte		.L320-.L2
	.uleb128	16
.L149:
	.sleb128	9
	.byte		"CanIfCtrlrEcuMWakeupSource"
	.byte		0
	.4byte		.L321
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L150:
	.sleb128	9
	.byte		"CanIfTrcvrEcuMWakeupSource"
	.byte		0
	.4byte		.L321
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L151:
	.sleb128	9
	.byte		"CanIfWakeupSupport_b"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L152:
	.sleb128	9
	.byte		"CanIfWakeupValidationSupport_b"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L153:
	.sleb128	9
	.byte		"CanIfControllerIdRef_u8"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L154:
	.sleb128	9
	.byte		"CanIfDriverNameRef_u8"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L155:
	.sleb128	9
	.byte		"CanIfTrcvMapped_b"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L156:
	.sleb128	9
	.byte		"CanIfTransceiverId_u8"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L320:
.L286:
	.sleb128	8
	.4byte		.L305
	.uleb128	266
	.uleb128	1
	.4byte		.L325-.L2
	.uleb128	36
.L106:
	.sleb128	9
	.byte		"CanIfCanTxPduIdCanId"
	.byte		0
	.4byte		.L326
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L107:
	.sleb128	9
	.byte		"CanIfCanTxPduType"
	.byte		0
	.4byte		.L328
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L108:
	.sleb128	9
	.byte		"CanIfTxPduIdCanIdType"
	.byte		0
	.4byte		.L330
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L109:
	.sleb128	9
	.byte		"CanIfTxBufferType"
	.byte		0
	.4byte		.L332
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L110:
	.sleb128	9
	.byte		"CanIfBufferCfg"
	.byte		0
	.4byte		.L334
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L111:
	.sleb128	9
	.byte		"PduIdRef"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L112:
	.sleb128	9
	.byte		"CanIfCanTxPduIdDlc_u8"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L113:
	.sleb128	9
	.byte		"CanIfTxPduCallBackInd_u8"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L114:
	.sleb128	9
	.byte		"CanIfReadTxPduNotifyStatus_b"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L115:
	.sleb128	9
	.byte		"DataPtrPtr"
	.byte		0
	.4byte		.L338
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L116:
	.sleb128	9
	.byte		"TxBufferDataSize"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L117:
	.sleb128	9
	.byte		"IsDedicated"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
	.sleb128	0
.L325:
.L337:
	.sleb128	8
	.4byte		.L305
	.uleb128	266
	.uleb128	1
	.4byte		.L342-.L2
	.uleb128	16
.L98:
	.sleb128	9
	.byte		"CanIfBufferInfo"
	.byte		0
	.4byte		.L343
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L99:
	.sleb128	9
	.byte		"HthIndex"
	.byte		0
	.4byte		.L256
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L100:
	.sleb128	9
	.byte		"CanIfBufferSize"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L101:
	.sleb128	9
	.byte		"DataPtrList"
	.byte		0
	.4byte		.L338
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L102:
	.sleb128	9
	.byte		"MaxDataSize"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L103:
	.sleb128	9
	.byte		"IsDedicated"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L342:
.L345:
	.sleb128	8
	.4byte		.L305
	.uleb128	266
	.uleb128	1
	.4byte		.L346-.L2
	.uleb128	16
.L93:
	.sleb128	9
	.byte		"BufferedCanId"
	.byte		0
	.4byte		.L326
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L94:
	.sleb128	9
	.byte		"SwLPduHandle"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L95:
	.sleb128	9
	.byte		"HthIndex"
	.byte		0
	.4byte		.L256
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L96:
	.sleb128	9
	.byte		"Data"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L97:
	.sleb128	9
	.byte		"DataLength_u8"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L346:
.L292:
	.sleb128	8
	.4byte		.L305
	.uleb128	266
	.uleb128	1
	.4byte		.L347-.L2
	.uleb128	4
.L91:
	.sleb128	9
	.byte		"CanIfHthIdSymRef"
	.byte		0
	.4byte		.L253
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L92:
	.sleb128	9
	.byte		"CanIfCanControllerIdRef_u8"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L347:
	.section	.debug_info,,n
.L245:
	.sleb128	10
	.4byte		.L348
	.uleb128	63
	.uleb128	1
	.4byte		.L349-.L2
	.byte		"Can_PduType_s"
	.byte		0
	.uleb128	12
.L87:
	.sleb128	9
	.byte		"sdu"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L88:
	.sleb128	9
	.byte		"id"
	.byte		0
	.4byte		.L327
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L89:
	.sleb128	9
	.byte		"swPduHandle"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L90:
	.sleb128	9
	.byte		"length"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L349:
.L241:
	.sleb128	10
	.4byte		.L350
	.uleb128	69
	.uleb128	1
	.4byte		.L351-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L83:
	.sleb128	9
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L84:
	.sleb128	9
	.byte		"SduLength"
	.byte		0
	.4byte		.L352
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L351:
	.section	.debug_info,,n
.L333:
	.sleb128	11
	.4byte		.L305
	.uleb128	248
	.uleb128	1
	.4byte		.L353-.L2
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
.L353:
.L331:
	.sleb128	11
	.4byte		.L305
	.uleb128	163
	.uleb128	1
	.4byte		.L354-.L2
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
.L354:
.L329:
	.sleb128	11
	.4byte		.L305
	.uleb128	147
	.uleb128	1
	.4byte		.L355-.L2
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
.L355:
.L268:
	.sleb128	11
	.4byte		.L305
	.uleb128	103
	.uleb128	1
	.4byte		.L356-.L2
	.uleb128	4
	.sleb128	12
	.byte		"CANIF_OFFLINE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANIF_TX_OFFLINE"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"CANIF_TX_OFFLINE_ACTIVE"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"CANIF_ONLINE"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"CANIF_PDU_MODE_MAX"
	.byte		0
	.sleb128	4
	.sleb128	0
.L356:
.L272:
	.sleb128	11
	.4byte		.L305
	.uleb128	74
	.uleb128	1
	.4byte		.L357-.L2
	.uleb128	4
	.sleb128	12
	.byte		"CANIF_CS_SLEEP"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANIF_CS_STARTED"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"CANIF_CS_STOPPED"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"CANIF_CS_UNINIT"
	.byte		0
	.sleb128	3
	.sleb128	0
.L357:
.L311:
	.sleb128	11
	.4byte		.L348
	.uleb128	63
	.uleb128	1
	.4byte		.L358-.L2
	.uleb128	4
	.sleb128	12
	.byte		"CAN_T_START"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CAN_T_STOP"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"CAN_T_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"CAN_T_WAKEUP"
	.byte		0
	.sleb128	3
	.sleb128	0
.L358:
.L248:
	.sleb128	11
	.4byte		.L348
	.uleb128	57
	.uleb128	1
	.4byte		.L359-.L2
	.uleb128	4
	.sleb128	12
	.byte		"CAN_OK"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CAN_NOT_OK"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"CAN_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L359:
	.section	.debug_info,,n
.L231:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L230:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L231
.L229:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L230
.L236:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L235:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L236
.L234:
	.sleb128	14
	.byte		"PduIdType"
	.byte		0
	.4byte		.L235
.L233:
	.sleb128	14
	.byte		"CanIfLpduId_t"
	.byte		0
	.4byte		.L234
.L240:
	.sleb128	14
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L241
	.section	.debug_info,,n
.L239:
	.sleb128	15
	.4byte		.L240
	.section	.debug_info,,n
.L238:
	.sleb128	16
	.4byte		.L239
.L244:
	.sleb128	14
	.byte		"Can_PduType"
	.byte		0
	.4byte		.L245
.L247:
	.sleb128	14
	.byte		"Can_ReturnType"
	.byte		0
	.4byte		.L248
.L253:
	.sleb128	14
	.byte		"Can_HwHandleType"
	.byte		0
	.4byte		.L235
.L256:
	.sleb128	14
	.byte		"CanIf_HthIndexType"
	.byte		0
	.4byte		.L235
.L267:
	.sleb128	14
	.byte		"CanIf_PduModeType"
	.byte		0
	.4byte		.L268
.L271:
	.sleb128	14
	.byte		"CanIf_ControllerModeType"
	.byte		0
	.4byte		.L272
	.section	.debug_info,,n
.L277:
	.sleb128	17
	.4byte		.L278-.L2
	.4byte		.L271
	.section	.debug_info,,n
	.sleb128	18
	.sleb128	0
.L278:
.L280:
	.sleb128	17
	.4byte		.L281-.L2
	.4byte		.L267
	.sleb128	18
	.sleb128	0
.L281:
.L285:
	.sleb128	14
	.byte		"CanIfTxPduConfigInfo_t"
	.byte		0
	.4byte		.L286
.L284:
	.sleb128	15
	.4byte		.L285
.L283:
	.sleb128	16
	.4byte		.L284
.L291:
	.sleb128	14
	.byte		"CanIfHthControllerConfig_t"
	.byte		0
	.4byte		.L292
.L290:
	.sleb128	15
	.4byte		.L291
.L289:
	.sleb128	16
	.4byte		.L290
.L288:
	.sleb128	15
	.4byte		.L289
.L297:
	.sleb128	14
	.byte		"CanIfControllerConfig_t"
	.byte		0
	.4byte		.L298
.L296:
	.sleb128	15
	.4byte		.L297
.L294:
	.sleb128	17
	.4byte		.L295-.L2
	.4byte		.L296
	.sleb128	18
	.sleb128	0
.L295:
.L303:
	.sleb128	14
	.byte		"CanIfDriverConfig_t"
	.byte		0
	.4byte		.L304
.L302:
	.sleb128	15
	.4byte		.L303
.L300:
	.sleb128	17
	.4byte		.L301-.L2
	.4byte		.L302
	.sleb128	18
	.sleb128	0
.L301:
	.section	.debug_info,,n
.L308:
	.sleb128	19
	.4byte		.L309-.L2
	.4byte		.L247
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	20
	.4byte		.L230
.L310:
	.sleb128	14
	.byte		"Can_StateTransitionType"
	.byte		0
	.4byte		.L311
	.sleb128	20
	.4byte		.L310
	.sleb128	0
.L309:
.L307:
	.sleb128	16
	.4byte		.L308
.L313:
	.sleb128	19
	.4byte		.L314-.L2
	.4byte		.L247
	.byte		0x1
	.sleb128	20
	.4byte		.L253
.L316:
	.sleb128	15
	.4byte		.L244
.L315:
	.sleb128	16
	.4byte		.L316
	.sleb128	20
	.4byte		.L315
	.sleb128	0
.L314:
.L312:
	.sleb128	16
	.4byte		.L313
.L318:
	.sleb128	19
	.4byte		.L319-.L2
	.4byte		.L247
	.byte		0x1
	.sleb128	20
	.4byte		.L230
	.sleb128	0
.L319:
.L317:
	.sleb128	16
	.4byte		.L318
.L323:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L322:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L323
.L321:
	.sleb128	14
	.byte		"EcuM_WakeupSourceType"
	.byte		0
	.4byte		.L322
.L324:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L231
.L327:
	.sleb128	14
	.byte		"Can_IdType"
	.byte		0
	.4byte		.L322
.L326:
	.sleb128	14
	.byte		"CanIfCanId_t"
	.byte		0
	.4byte		.L327
.L328:
	.sleb128	14
	.byte		"CanIfCanTxPduType_t"
	.byte		0
	.4byte		.L329
.L330:
	.sleb128	14
	.byte		"CanIfTxPduCanIdType_t"
	.byte		0
	.4byte		.L331
.L332:
	.sleb128	14
	.byte		"CanIfTxBufferType_t"
	.byte		0
	.4byte		.L333
.L336:
	.sleb128	14
	.byte		"CanIfBufferConfig_t"
	.byte		0
	.4byte		.L337
.L335:
	.sleb128	15
	.4byte		.L336
.L334:
	.sleb128	16
	.4byte		.L335
.L341:
	.sleb128	16
	.4byte		.L230
.L340:
	.sleb128	14
	.byte		"CanIf_P2VarUint8Type"
	.byte		0
	.4byte		.L341
.L339:
	.sleb128	15
	.4byte		.L340
.L338:
	.sleb128	16
	.4byte		.L339
.L344:
	.sleb128	14
	.byte		"CanIfTxBufferRAM_t"
	.byte		0
	.4byte		.L345
.L343:
	.sleb128	16
	.4byte		.L344
.L352:
	.sleb128	14
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L235
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L237:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),31
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),31
	.d2locend
.L242:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo4),30
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),30
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo10),30
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo8),30
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),4
	.d2locend
.L249:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo14),3
	.d2locend
.L251:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),29
	.d2locend
.L254:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo4),28
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),28
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo10),28
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo8),28
	.d2locend
.L257:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locend
.L259:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo10),0
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo8),0
	.d2locend
.L261:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo3),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo4),27
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo8),27
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),27
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo27),27
	.d2locend
.L269:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo4),26
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),26
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo10),26
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo8),26
	.d2locend
.L273:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),25
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanIf_Transmit"
	.wrcm.nint32 "frameSize", 64
	.wrcm.nint32 "indirectCalls", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_Transmit.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_Transmit.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_Transmit.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_Transmit.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_Transmit.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_Transmit.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanIf\ssc\make\..\src\CanIf_Transmit.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
