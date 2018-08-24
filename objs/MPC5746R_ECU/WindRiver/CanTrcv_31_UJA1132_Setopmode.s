#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTrcv_31_UJA1132_Setopmode.c"
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
# FUNC (Std_ReturnType, CANTRCV_31_UJA1132_CODE)CANTRCV_31_UJA1132_SETOPMODE
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L773:
	.section	.invalid_TEXT,,c
#$$ld
.L769:
	.0byte		.L767
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_Setopmode.c"
        .d2line         84,47
#$$ld
.L776:

#$$bf	CanTrcv_31_UJA1132_SetOpMode,interprocedural,rasave,nostackparams
	.globl		CanTrcv_31_UJA1132_SetOpMode
	.d2_cfa_start __cie
CanTrcv_31_UJA1132_SetOpMode:
.Llo1:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
.Llo20:
	stmw		r26,40(r1)		# offset r1+40  0x28
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,68(r1)		# TransmissionStatus=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Transceiver=r31 Transceiver=r3
.Llo2:
	mr		r30,r4		# OpMode=r30 OpMode=r4
	.d2prologue_end
# ( VAR(uint8, AUTOMATIC) Transceiver,
#                             VAR(CanTrcv_TrcvModeType, AUTOMATIC)OpMode)
# {
# 
#     VAR (CanTrcv_TrcvModeType, AUTOMATIC) TmpCanTrcvCurrentState;
# 
#     VAR(Std_ReturnType, AUTOMATIC) ReturnValue ;
# 
# #if (STD_OFF == CANTRCV_SBCSI_SUPPORT)
#     /* Variable holds the data to be sent. The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeSent[1];
# 
#     /* Variable holds the data to be received from CanTrcv via SPI.
#        The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeReceived[1];
# 
#     /* Variable to hold the data of any register to be written*/
#     VAR (uint8, AUTOMATIC)RegData_u8;
# 
#     /* Variable to hold the number or SPI data elements to be sent/received*/
#     VAR (uint8, AUTOMATIC)DataIndex_u8;
# 
#     /* Variable to hold the CanTrcv-Spi communication status*/
#     VAR(CanTrcv_SpiTransStatus,AUTOMATIC)  TransmissionStatus;
#     
# #else
#     
#     VAR(Std_ReturnType, AUTOMATIC) SbcsiReturnStatus = E_OK;
#     
# #endif /* #if (STD_OFF == CANTRCV_SBCSI_SUPPORT) */
# 
#     /* Variable works as decrement counter to allow hardware changes mode */
#     VAR (uint32, AUTOMATIC) DelayCount_u32;
# 
#     /* Pointer to the Status array for each Channel. */
#     P2VAR(CanTrcv_31_UJA1132_StatusType,CANTRCV_31_UJA1132_VAR_FAST, CANTRCV_31_UJA1132_APPL_DATA)Status_p;
# 
#     /* Pointer to index the constant link-time Configuration Array. */
#     P2CONST(CanTrcv_31_UJA1132_LtCfgType, CANTRCV_31_UJA1132_VAR_FAST, CANTRCV_31_UJA1132_APPL_CONST)LtConfig_p;
# 
# 
# #if (STD_ON == CANTRCV_31_UJA1132_DEV_ERROR_DETECT)
# 
#     /* Check for any Development errors. */
#     ReturnValue = CanTrcv_31_UJA1132_SetOpModeDECheck(Transceiver, OpMode);
#     if (E_OK == ReturnValue)
#     {
# #else
# 
#     ReturnValue = E_OK;
	.d2line		134
.Llo3:
	diab.li		r28,0		# ReturnValue=r28
# 
# #endif/* end #if(CANTRCV_31_UJA1132_DEV_ERROR_DETECT == STD_ON) */
# 
# 
#         Status_p = &(CANTRCV_31_UJA1132_STATUS_P[Transceiver]) ;
	.d2line		139
.Llo15:
	lis		r3,CanTrcv_31_UJA1132_Status_p@ha		# TransmissionStatus=r3
	lwz		r27,CanTrcv_31_UJA1132_Status_p@l(r3)		# Status_p=r27 TransmissionStatus=r3
.Llo31:
	rlwinm		r0,r31,3,21,28		# TransmissionStatus=r0 Transceiver=r31
	se_add		r0,r27		# TransmissionStatus=r0 TransmissionStatus=r0 Status_p=r27
.Llo21:
	mr		r27,r0		# Status_p=r27 Status_p=r0
# 
#         LtConfig_p = &(CANTRCV_31_UJA1132_LT_CONFIG_P[Transceiver]);
	.d2line		141
	rlwinm		r0,r31,0,24,31		# TransmissionStatus=r0 Transceiver=r31
.Llo22:
	lis		r3,CanTrcv_31_UJA1132_LtConfig_p@ha		# TransmissionStatus=r3
	lwz		r26,CanTrcv_31_UJA1132_LtConfig_p@l(r3)		# TransmissionStatus=r26 TransmissionStatus=r3
	rlwinm		r3,r0,5,0,26		# TransmissionStatus=r3 TransmissionStatus=r0
	se_slwi		r0,3		# TransmissionStatus=r0 TransmissionStatus=r0
	subf		r0,r0,r3		# TransmissionStatus=r0 TransmissionStatus=r0 TransmissionStatus=r3
	se_add		r0,r26		# TransmissionStatus=r0 TransmissionStatus=r0 TransmissionStatus=r26
.Llo23:
	mr		r26,r0		# LtConfig_p=r26 LtConfig_p=r0
# 
#         /* Protect the shared resourse - CanTrcvCurrentState */
#         SchM_Enter_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
	.d2line		144
.Llo33:
	bl		SchM_Enter_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1
# 
#         TmpCanTrcvCurrentState = Status_p->CanTrcvCurrentState;
	.d2line		146
.Llo5:
	lwz		r29,0(r27)		# Status_p=r27
.Llo7:
	mr		r29,r29		# TmpCanTrcvCurrentState=r29 TmpCanTrcvCurrentState=r29
# 
#         SchM_Exit_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
	.d2line		148
	bl		SchM_Exit_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1
# 
# #if (STD_OFF == CANTRCV_SBCSI_SUPPORT)
#         DataIndex_u8 = 0;
	.d2line		151
	diab.li		r5,0
	stb		r5,8(r1)
# 	
#         /* Read the value of the Can Control Register */
#         CanTrcv_31_UJA1132_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_UJA1132_CAN_CONTROL_REGADDR, 0x00, &DataIndex_u8, TRUE);
	.d2line		154
	diab.addi		r3,r1,12		# TransmissionStatus=r3
	diab.addi		r6,r1,8
	diab.li		r4,32
	diab.li		r7,1
	bl		CanTrcv_31_UJA1132_PrepareSpiData
#         TransmissionStatus = CanTrcv_31_UJA1132_SpiTransmit ( LtConfig_p, DataToBeSent, &DataToBeReceived[0], DataIndex_u8 );
	.d2line		155
	lbz		r6,8(r1)
	diab.addi		r4,r1,12
	diab.addi		r5,r1,16
	mr		r3,r26		# LtConfig_p=r3 LtConfig_p=r26
	bl		CanTrcv_31_UJA1132_SpiTransmit
	.d2line		156
.Llo24:
	mr.		r0,r3		# TransmissionStatus=?a10 TransmissionStatus=r3
#         if ( TransmissionStatus != CANTRCV_TX_SUCCEEDED )
	bc		1,2,.L733	# eq
#         {
# 
# #if( STD_ON == CANTRCV_31_UJA1132_DEV_ERROR_DETECT )
#             /* Report DET Error */
#             Det_ReportError( CANTRCV_31_UJA1132_MODULE_ID,
#                     CANTRCV_31_UJA1132_INSTANCE_ID,
#                     CANTRCV_31_UJA1132_SET_OPMODE_SID,
#                     CANTRCV_31_UJA1132_E_NO_TRCV_CONTROL );
# #endif
# 
#             ReturnValue = E_NOT_OK;
	.d2line		167
.Llo6:
	diab.li		r28,1		# ReturnValue=r28
	b		.L734
.L733:
# 
#         }
#         else
#         {
#             /* Clear the mode bits */
#             RegData_u8 = ((uint8) DataToBeReceived[0]) & ((uint8)CANTRCV_31_UJA1132_CLR_MODE_MASK);
	.d2line		173
	lhz		r5,16(r1)
	rlwinm		r5,r5,0,24,29
.Llo17:
	mr		r5,r5		# RegData_u8=r5 RegData_u8=r5
# #endif /* #if (STD_OFF == CANTRCV_SBCSI_SUPPORT) */
# 
#             switch (OpMode)
	.d2line		176
	mr.		r6,r30		# OpMode=r6 OpMode=?a5
	bc		1,2,.L742	# eq
	se_cmpi		r6,1
	bc		1,2,.L739	# eq
	se_cmpi		r6,2
	bc		1,2,.L735	# eq
	b		.L743
.L735:
#             {
# 
#                 case CANTRCV_TRCVMODE_STANDBY:
# 
#                     if ((CANTRCV_TRCVMODE_NORMAL  ==  TmpCanTrcvCurrentState) ||
	.d2line		181
	se_cmpi		r29,0		# TmpCanTrcvCurrentState=r29
	bc		1,2,.L750	# eq
	se_cmpi		r29,2		# TmpCanTrcvCurrentState=r29
	bc		0,2,.L736	# ne
.L750:
#                         (CANTRCV_TRCVMODE_STANDBY == TmpCanTrcvCurrentState ))
# 
#                     {
# #if (STD_ON == CANTRCV_SBCSI_SUPPORT)
#                         /* Setting to Standby mode */
#                         SbcsiReturnStatus = SBCSI_SetInTrcvState(SBCSI_INT_CAN_TRCV, SBCSI_INT_TRCV_MODE_CAN_LISTENONLY_LIN_LISTENONLY);
# #else
#                         /* Setting to Standby mode */
#                         RegData_u8 = RegData_u8 | CANTRCV_31_UJA1132_MODE_STANDBY_COMMAND;
	.d2line		190
	e_ori		r5,r5,3		# RegData_u8=r5 RegData_u8=r5
	mr		r0,r5		# RegData_u8=r0 RegData_u8=r5
	b		.L738
.L736:
# #endif /* #if (STD_ON == CANTRCV_SBCSI_SUPPORT) */
# 
#                     }
#                     else
#                     {
# 
# #if (CANTRCV_31_UJA1132_DEV_ERROR_DETECT == STD_ON)
#                         /* Report to DET */
#                         (void)Det_ReportError (CANTRCV_31_UJA1132_MODULE_ID, 
#                                        CANTRCV_31_UJA1132_INSTANCE_ID, CANTRCV_31_UJA1132_SET_OPMODE_SID,
#                                                         CANTRCV_31_UJA1132_E_TRCV_NOT_NORMAL);
# #endif/* end #if(CANTRCV_31_UJA1132_DEV_ERROR_DETECT == STD_ON) */
# 
#                         /* Set the return value to E_NOT_OK  */
#                         ReturnValue = E_NOT_OK;
	.d2line		205
.Llo8:
	diab.li		r28,1		# ReturnValue=r28
	b		.L738
.L739:
# 
#                     }
# 
#                     break;
# 
#                 case CANTRCV_TRCVMODE_SLEEP:
# 
#                     if ((CANTRCV_TRCVMODE_STANDBY == TmpCanTrcvCurrentState ) ||
	.d2line		213
.Llo9:
	se_cmpi		r29,2		# TmpCanTrcvCurrentState=r29
	bc		1,2,.L738	# eq
	se_cmpi		r29,1		# TmpCanTrcvCurrentState=r29
	bc		1,2,.L738	# eq
#                          (CANTRCV_TRCVMODE_SLEEP == TmpCanTrcvCurrentState ))
#                     {
# 
# #if (STD_ON == CANTRCV_SBCSI_SUPPORT)
#                         /* Setting to Sleep mode */
#                         SbcsiReturnStatus = SBCSI_SetInTrcvState(SBCSI_INT_CAN_TRCV, SBCSI_INT_TRCV_MODE_CAN_OFF_LIN_OFF);
# #else
#                         /* Setting to Sleep mode */
#                         RegData_u8 = RegData_u8 | CANTRCV_31_UJA1132_MODE_SLEEP_COMMAND;
# #endif /* #if (STD_ON == CANTRCV_SBCSI_SUPPORT) */
#                     }
#                     else
#                     {
# 
# #if (CANTRCV_31_UJA1132_DEV_ERROR_DETECT == STD_ON)
#                         /* Report to DET */
#                         Det_ReportError (CANTRCV_31_UJA1132_MODULE_ID, CANTRCV_31_UJA1132_INSTANCE_ID,
#                                CANTRCV_31_UJA1132_SET_OPMODE_SID, CANTRCV_31_UJA1132_E_TRCV_NOT_STANDBY);
# #endif/* end #if(CANTRCV_31_UJA1132_DEV_ERROR_DETECT == STD_ON) */
# 
#                         /* Set the return value to E_NOT_OK  */
#                         ReturnValue = E_NOT_OK;
	.d2line		235
.Llo10:
	diab.li		r28,1		# ReturnValue=r28
	b		.L738
.L742:
#                     }
#                     break;
# 
#                 case CANTRCV_TRCVMODE_NORMAL :
# 
# #if (STD_ON == CANTRCV_SBCSI_SUPPORT)
#                     /* Setting to Normal mode */
#                     SbcsiReturnStatus = SBCSI_SetInTrcvState(SBCSI_INT_CAN_TRCV, SBCSI_INT_TRCV_MODE_CAN_ACTIVE_NORMAL_LIN_ACTIVE_NORMAL);
# #else
#                     /* Setting to Normal mode */
#                     RegData_u8 = RegData_u8 | CANTRCV_31_UJA1132_MODE_NORMAL_COMMAND;
	.d2line		246
.Llo11:
	.diab.bseti		r5,31
	mr		r0,r5		# RegData_u8=r0 RegData_u8=r5
	b		.L738
.L743:
# #endif /* #if (STD_ON == CANTRCV_SBCSI_SUPPORT) */
# 
#                     break;
# 
#                 /* PRQA S 2018 1 */ /* The "default" branch will be reached if value outside of enum is passed to the function */
#                 default:
# 
#                     ReturnValue = E_NOT_OK;
	.d2line		254
.Llo12:
	diab.li		r28,1		# ReturnValue=r28
.L738:
# 
#                     break;
# 
#             }
# 
#             if(E_NOT_OK != ReturnValue)
	.d2line		260
.Llo13:
	rlwinm		r3,r28,0,24,31		# TransmissionStatus=r3 ReturnValue=r28
.Llo25:
	se_cmpi		r3,1		# TransmissionStatus=r3
	bc		1,2,.L734	# eq
#             {
# #if (STD_OFF == CANTRCV_SBCSI_SUPPORT)
#                 DataIndex_u8 = 0;
	.d2line		263
.Llo14:
	diab.li		r7,0
	stb		r7,8(r1)
#     
#                 /* Prepare the command to be written to the CanTrcv Mode register via SPI*/
#                 CanTrcv_31_UJA1132_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_UJA1132_CAN_CONTROL_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
	.d2line		266
	diab.addi		r3,r1,12		# TransmissionStatus=r3
.Llo18:
	rlwinm		r5,r5,0,24,31		# RegData_u8=r5 RegData_u8=r5
.Llo19:
	diab.addi		r6,r1,8
	diab.li		r4,32
	bl		CanTrcv_31_UJA1132_PrepareSpiData
#                 TransmissionStatus = CanTrcv_31_UJA1132_SpiTransmit (LtConfig_p, DataToBeSent, NULL_PTR, DataIndex_u8 );
	.d2line		267
	lbz		r6,8(r1)
	diab.addi		r4,r1,12
	mr		r3,r26		# LtConfig_p=r3 LtConfig_p=r26
	diab.li		r5,0		# RegData_u8=r5
	bl		CanTrcv_31_UJA1132_SpiTransmit
	.d2line		269
.Llo26:
	mr.		r0,r3		# TransmissionStatus=?a10 TransmissionStatus=r3
#     
#                 if ( TransmissionStatus != CANTRCV_TX_SUCCEEDED )
	bc		1,2,.L745	# eq
# #else
#                 if ( SbcsiReturnStatus != E_OK)
# #endif /* #if (STD_OFF == CANTRCV_SBCSI_SUPPORT) */
#                 {
#     
# #if( STD_ON == CANTRCV_31_UJA1132_DEV_ERROR_DETECT )
#                     /* Report DET Error */
#                     Det_ReportError( CANTRCV_31_UJA1132_MODULE_ID,
#                             CANTRCV_31_UJA1132_INSTANCE_ID,
#                             CANTRCV_31_UJA1132_SET_OPMODE_SID,
#                             CANTRCV_31_UJA1132_E_NO_TRCV_CONTROL );
# #endif
#     
#                 ReturnValue = E_NOT_OK;
	.d2line		283
.Llo27:
	diab.li		r28,1		# ReturnValue=r28
	b		.L734
.L745:
#     
#                 }
#                 else
#                 {
#     
#                     /* Should we make another transmission to check that there is no SPI error & the mode changed successfully? */
#                     SchM_Enter_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
	.d2line		290
	bl		SchM_Enter_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1
#     
#                     Status_p->CanTrcvCurrentState = OpMode;
	.d2line		292
	stw		r30,0(r27)		# Status_p=r27 OpMode=r30
#     
#                     SchM_Exit_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
	.d2line		294
	bl		SchM_Exit_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1
#     
#                     /* Wait until the TRcv operation mode changes. */
#                     DelayCount_u32 = CANTRCV_31_UJA1132_WAITCOUNT_U32;
	.d2line		297
	lis		r3,CANTRCV_31_UJA1132_WAITCOUNT_U32@ha		# TransmissionStatus=r3
.Llo28:
	lwz		r3,CANTRCV_31_UJA1132_WAITCOUNT_U32@l(r3)		# TransmissionStatus=r3 TransmissionStatus=r3
.Llo29:
	mr		r3,r3		# DelayCount_u32=r3 DelayCount_u32=r3
.L747:
#     
#                     /* Timeout for allowing the hardware to settle down */
#                     while(0 != DelayCount_u32)
	.d2line		300
.Llo32:
	se_cmpi		r3,0		# DelayCount_u32=r3
	bc		1,2,.L748	# eq
#                     {
#                         /* Decrement the timeout */
#                         DelayCount_u32--;
	.d2line		303
	diab.addi		r0,r3,-1		# TransmissionStatus=r0 DelayCount_u32=r3
	diab.addi		r3,r3,-1		# DelayCount_u32=r3 DelayCount_u32=r3
	b		.L747
.L748:
#                     }
#     
#                     /* Inform CanIf with mode switch */
#                     CanIf_TrcvModeIndication(LtConfig_p->CanIfTrcvID,OpMode);
	.d2line		307
.Llo30:
	lbz		r3,22(r26)		# DelayCount_u32=r3 LtConfig_p=r26
	mr		r4,r30		# OpMode=r4 OpMode=r30
	bl		CanIf_TrcvModeIndication
#     
#                     /*Enable/Disable the wakeup events through ICU */
#                     CanTrcv_31_UJA1132_IcuSetNotification(Transceiver, OpMode);
	.d2line		310
	rlwinm		r3,r31,0,24,31		# DelayCount_u32=r3 Transceiver=r31
	mr		r4,r30		# OpMode=r4 OpMode=r30
	bl		CanTrcv_31_UJA1132_IcuSetNotification
.L734:
#     
#     
#                 }
#     
#             }
#             else
#             {
#                 
#                 /* Do nothing */
#     
#             }
# 		
# #if (STD_OFF == CANTRCV_SBCSI_SUPPORT)
# 	
#         }
# 		
# #endif /* #if (STD_OFF == CANTRCV_SBCSI_SUPPORT) */
# #if (STD_ON == CANTRCV_31_UJA1132_DEV_ERROR_DETECT)
#     }
#     else
#     {
# 
#        /* Do Nothing */
# 
#     }
# #endif
#     return (ReturnValue);
	.d2line		337
.Llo4:
	rlwinm		r3,r28,0,24,31		# DelayCount_u32=r3 ReturnValue=r28
# }/* End of CanTrcv_31_UJA1132_SetOpMode () */
	.d2line		338
	.d2epilogue_begin
	lmw		r26,40(r1)		# offset r1+40  0x28
	.d2_cfa_restore_list	2,10
.Llo16:
	lwz		r0,68(r1)		# TransmissionStatus=r0
	mtspr		lr,r0		# TransmissionStatus=lr
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L777:
	.type		CanTrcv_31_UJA1132_SetOpMode,@function
	.size		CanTrcv_31_UJA1132_SetOpMode,.-CanTrcv_31_UJA1132_SetOpMode
# Number of nodes = 194

# Allocations for CanTrcv_31_UJA1132_SetOpMode
#	?a4		Transceiver
#	?a5		OpMode
#	?a6		$$237
#	?a7		TmpCanTrcvCurrentState
#	?a8		ReturnValue
#	SP,12		DataToBeSent
#	SP,16		DataToBeReceived
#	?a9		RegData_u8
#	SP,8		DataIndex_u8
#	?a10		TransmissionStatus
#	?a11		DelayCount_u32
#	?a12		Status_p
#	?a13		LtConfig_p

# Allocations for module
	.section	.text_vle
	.0byte		.L823
	.section	.text_vle
#$$ld
.L5:
.L845:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L843:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\inc\\internal\\CanTrcv_31_UJA1132_Private.h"
.L827:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\..\\..\\inc\\CanTrcv_Types.h"
.L822:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\inc\\CanTrcv_31_UJA1132.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L770:
.L778:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_Setopmode.c"
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
	.uleb128	16
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
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
	.uleb128	38
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_Setopmode.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L767:
	.4byte		.L768-.L766
.L766:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L772-.L767
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_Setopmode.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L769
	.4byte		.L770
	.4byte		.L773
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L782:
	.sleb128	2
	.4byte		.L775-.L767
	.byte		"CanTrcv_31_UJA1132_SetOpMode"
	.byte		0
	.4byte		.L778
	.uleb128	84
	.uleb128	47
	.4byte		.L779
	.byte		0x1
	.byte		0x1
	.4byte		.L776
	.4byte		.L777
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L778
	.uleb128	84
	.uleb128	47
	.byte		"Transceiver"
	.byte		0
	.4byte		.L780
	.4byte		.L783
	.sleb128	3
	.4byte		.L778
	.uleb128	84
	.uleb128	47
	.byte		"OpMode"
	.byte		0
	.4byte		.L784
	.4byte		.L786
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L787:
	.sleb128	4
	.4byte		.L778
	.uleb128	89
	.uleb128	43
	.byte		"TmpCanTrcvCurrentState"
	.byte		0
	.4byte		.L784
	.4byte		.L788
.L789:
	.sleb128	4
	.4byte		.L778
	.uleb128	91
	.uleb128	36
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L779
	.4byte		.L790
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L791:
	.sleb128	5
	.4byte		.L778
	.uleb128	95
	.uleb128	28
	.byte		"DataToBeSent"
	.byte		0
	.4byte		.L792
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L796:
	.sleb128	5
	.4byte		.L778
	.uleb128	99
	.uleb128	28
	.byte		"DataToBeReceived"
	.byte		0
	.4byte		.L797
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	16
.L799:
	.sleb128	4
	.4byte		.L778
	.uleb128	102
	.uleb128	27
	.byte		"RegData_u8"
	.byte		0
	.4byte		.L780
	.4byte		.L800
.L801:
	.sleb128	5
	.4byte		.L778
	.uleb128	105
	.uleb128	27
	.byte		"DataIndex_u8"
	.byte		0
	.4byte		.L780
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L802:
	.sleb128	4
	.4byte		.L778
	.uleb128	108
	.uleb128	44
	.byte		"TransmissionStatus"
	.byte		0
	.4byte		.L803
	.4byte		.L805
.L806:
	.sleb128	4
	.4byte		.L778
	.uleb128	117
	.uleb128	29
	.byte		"DelayCount_u32"
	.byte		0
	.4byte		.L807
	.4byte		.L809
.L810:
	.sleb128	4
	.4byte		.L778
	.uleb128	120
	.uleb128	99
	.byte		"Status_p"
	.byte		0
	.4byte		.L811
	.4byte		.L814
.L815:
	.sleb128	4
	.4byte		.L778
	.uleb128	123
	.uleb128	102
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L816
	.4byte		.L820
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L775:
	.section	.debug_info,,n
.L821:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L822
	.uleb128	641
	.uleb128	88
	.byte		"CanTrcv_31_UJA1132_Status_p"
	.byte		0
	.4byte		.L811
	.0byte		.L821
.L823:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L822
	.uleb128	654
	.uleb128	88
	.byte		"CanTrcv_31_UJA1132_LtConfig_p"
	.byte		0
	.4byte		.L824
	.section	.debug_info,,n
.L825:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L822
	.uleb128	668
	.uleb128	48
	.byte		"CANTRCV_31_UJA1132_WAITCOUNT_U32"
	.byte		0
	.4byte		.L826
	.section	.debug_info,,n
.L813:
	.sleb128	7
	.4byte		.L827
	.uleb128	61
	.uleb128	13
	.4byte		.L828-.L2
	.uleb128	8
	.section	.debug_info,,n
.L630:
	.sleb128	8
	.byte		"CanTrcvCurrentState"
	.byte		0
	.4byte		.L784
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L631:
	.sleb128	8
	.byte		"CanTrcvInitialised_bt"
	.byte		0
	.4byte		.L829
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L632:
	.sleb128	8
	.byte		"CanTrcvSpiRetriesCounter"
	.byte		0
	.4byte		.L780
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L633:
	.sleb128	8
	.byte		"CanTrcvSpiTimeCounter"
	.byte		0
	.4byte		.L780
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L828:
.L819:
	.sleb128	7
	.4byte		.L827
	.uleb128	61
	.uleb128	13
	.4byte		.L830-.L2
	.uleb128	24
.L615:
	.sleb128	8
	.byte		"CanTrcvInitState"
	.byte		0
	.4byte		.L831
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L616:
	.sleb128	8
	.byte		"CanTrcvMaxBaudrate"
	.byte		0
	.4byte		.L832
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L617:
	.sleb128	8
	.byte		"CanTrcvControlsPowerSupply"
	.byte		0
	.4byte		.L833
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L618:
	.sleb128	8
	.byte		"CanTrcvChannelUsed"
	.byte		0
	.4byte		.L833
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L619:
	.sleb128	8
	.byte		"CanTrcvWakeupByBusUsed"
	.byte		0
	.4byte		.L833
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L620:
	.sleb128	8
	.byte		"CanTrcvChannelId"
	.byte		0
	.4byte		.L834
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L621:
	.sleb128	8
	.byte		"CanTrcvWakeupSourceId"
	.byte		0
	.4byte		.L834
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L622:
	.sleb128	8
	.byte		"CanTrcvIcuChannelId"
	.byte		0
	.4byte		.L835
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L623:
	.sleb128	8
	.byte		"CanTrcvSpiAccessSynchronous"
	.byte		0
	.4byte		.L833
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L624:
	.sleb128	8
	.byte		"CanTrcvSpiCommRetries"
	.byte		0
	.4byte		.L834
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L625:
	.sleb128	8
	.byte		"CanTrcvSpiCommTimeout"
	.byte		0
	.4byte		.L834
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L626:
	.sleb128	8
	.byte		"CanTrcvSpiChannelId"
	.byte		0
	.4byte		.L837
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L627:
	.sleb128	8
	.byte		"CanTrcvSpiSequenceId"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L628:
	.sleb128	8
	.byte		"CanTrcvRxDioChannelId"
	.byte		0
	.4byte		.L841
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L629:
	.sleb128	8
	.byte		"CanIfTrcvID"
	.byte		0
	.4byte		.L834
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
	.sleb128	0
.L830:
	.section	.debug_info,,n
.L804:
	.sleb128	9
	.4byte		.L843
	.uleb128	175
	.uleb128	14
	.4byte		.L844-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"CANTRCV_TX_SUCCEEDED"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANTRCV_LAST_TX_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANTRCV_EBSETUP_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"CANTRCV_TX_FAILED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L844:
.L785:
	.sleb128	9
	.4byte		.L845
	.uleb128	23
	.uleb128	15
	.4byte		.L846-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANTRCV_TRCVMODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANTRCV_TRCVMODE_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANTRCV_TRCVMODE_STANDBY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L846:
	.section	.debug_info,,n
.L781:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L780:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L781
.L779:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L780
.L784:
	.sleb128	12
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L785
.L795:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L794:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L795
	.section	.debug_info,,n
.L792:
	.sleb128	13
	.4byte		.L793
	.4byte		.L794
	.section	.debug_info,,n
	.sleb128	14
	.uleb128	0
	.sleb128	0
.L793:
.L797:
	.sleb128	13
	.4byte		.L798
	.4byte		.L794
	.sleb128	14
	.uleb128	0
	.sleb128	0
.L798:
.L803:
	.sleb128	12
	.byte		"CanTrcv_SpiTransStatus"
	.byte		0
	.4byte		.L804
.L808:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L807:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L808
.L812:
	.sleb128	12
	.byte		"CanTrcv_31_UJA1132_StatusType"
	.byte		0
	.4byte		.L813
	.section	.debug_info,,n
.L811:
	.sleb128	15
	.4byte		.L812
.L818:
	.sleb128	12
	.byte		"CanTrcv_31_UJA1132_LtCfgType"
	.byte		0
	.4byte		.L819
	.section	.debug_info,,n
.L817:
	.sleb128	16
	.4byte		.L818
.L816:
	.sleb128	15
	.4byte		.L817
.L824:
	.sleb128	16
	.4byte		.L816
.L826:
	.sleb128	16
	.4byte		.L807
.L829:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L781
.L831:
	.sleb128	16
	.4byte		.L784
.L832:
	.sleb128	16
	.4byte		.L794
.L833:
	.sleb128	16
	.4byte		.L829
.L834:
	.sleb128	16
	.4byte		.L780
.L836:
	.sleb128	12
	.byte		"Icu_ChannelType"
	.byte		0
	.4byte		.L794
.L835:
	.sleb128	16
	.4byte		.L836
.L838:
	.sleb128	12
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L780
.L837:
	.sleb128	16
	.4byte		.L838
.L840:
	.sleb128	12
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L780
.L839:
	.sleb128	16
	.4byte		.L840
.L842:
	.sleb128	12
	.byte		"Dio_ChannelType"
	.byte		0
	.4byte		.L794
.L841:
	.sleb128	16
	.4byte		.L842
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L772:
	.sleb128	0
.L768:

	.section	.debug_loc,,n
	.align	0
.L783:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L786:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo4),30
	.d2locend
.L788:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),29
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),29
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),29
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),29
	.d2locend
.L790:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo12),28
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo16),28
	.d2locend
.L800:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo14),5
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),5
	.d2locend
.L805:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),0
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locend
.L809:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locend
.L814:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),27
	.d2locend
.L820:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo33),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo4),26
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTrcv_31_UJA1132_SetOpMode"
	.wrcm.nint32 "frameSize", 64
	.wrcm.nstrlist "calls", "CanIf_TrcvModeIndication","CanTrcv_31_UJA1132_IcuSetNotification","CanTrcv_31_UJA1132_PrepareSpiData","CanTrcv_31_UJA1132_SpiTransmit","SchM_Enter_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1","SchM_Exit_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Setopmode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Setopmode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Setopmode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Setopmode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Setopmode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Setopmode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTrcv\ssc\target\UJA1132\make\..\src\CanTrcv_31_UJA1132_Setopmode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
