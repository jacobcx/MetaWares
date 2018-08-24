#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTrcv_31_TJA1145_Setopmode.c"
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
# FUNC (Std_ReturnType, CANTRCV_31_TJA1145_CODE)CANTRCV_31_TJA1145_SETOPMODE
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L712:
	.section	.invalid_TEXT,,c
#$$ld
.L708:
	.0byte		.L706
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_Setopmode.c"
        .d2line         84,47
#$$ld
.L715:

#$$bf	CanTrcv_31_TJA1145_SetOpMode,interprocedural,rasave,nostackparams
	.globl		CanTrcv_31_TJA1145_SetOpMode
	.d2_cfa_start __cie
CanTrcv_31_TJA1145_SetOpMode:
.Llo1:
	diab.li		r0,-144
	stwux		r1,r1,r0		
	.d2_cfa_def_cfa_offset	144
	mfspr		r0,lr
	stmw		r26,120(r1)		# offset r1+120  0x78
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,148(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Transceiver=r3 Transceiver=r3
	mr		r31,r4		# OpMode=r31 OpMode=r4
	.d2prologue_end
# ( VAR(uint8, AUTOMATIC) Transceiver,
#                             VAR(CanTrcv_TrcvModeType, AUTOMATIC)OpMode)
# {
# 
#     VAR (CanTrcv_TrcvModeType, AUTOMATIC) TmpCanTrcvCurrentState;
# 
#     VAR(Std_ReturnType, AUTOMATIC) ReturnValue ;
# 
#     /* Variable holds the data to be sent. The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeSent[SetopmodeDataToBeSentLength];
# 
#     /* Variable holds the data to be received from CanTrcv via SPI.
#        The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeReceived[SetopmodeDataToBeReceivedLength] = {0};
	.d2line		98
	lis		r7,.L670@ha
	e_add16i		r7,r7,.L670@l
	diab.addi		r7,r7,-2
	diab.addi		r6,r1,10
	diab.li		r5,3
	mtspr		ctr,r5
.L760:
.Llo9:
	lhzu		r4,2(r7)
.Llo10:
	lhzu		r5,2(r7)
	sthu		r4,2(r6)
	sthu		r5,2(r6)
	bc		2,0,.L760
	lhz		r5,2(r7)
	sth		r5,2(r6)
# 
#     /* Variable to hold the data of any register to be written*/
#     VAR (uint8, AUTOMATIC)RegData_u8;
# 
#     /* Variable to hold the number or SPI data elements to be sent/received*/
#     VAR (uint8, AUTOMATIC)DataIndex_u8;
# 
# #if (STD_ON == CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT)
#     VAR(boolean, AUTOMATIC) UnSupportedBaudRate;
# 
#     /* Variable holds the overtempertaure status*/
#     VAR (uint8, AUTOMATIC) OverTempFlag_u8;
# 
#     /* Variable holds the Can Failure status*/
#     VAR (uint8, AUTOMATIC) CanFailureFlag_u8;
# 
#     /* Variable holds the PowerOn status*/
#     VAR (uint8, AUTOMATIC) PowerOnFlag_u8;
# 
#     /* Variable holds the PN configuration status*/
#     VAR (uint8, AUTOMATIC) PnConfigFlag_u8;
# 
#     /* Pointer to index the post-build Configuration Array. */
#     P2CONST(CanTrcv_31_TJA1145_PbConfigType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_CONST)PbConfig_p;
#     /* Variable to hold the number of actual bytes transmitted */
#     VAR (uint8, AUTOMATIC) PNTransmitIndex_u8;
# #endif /* CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT */
# 
#     /* Variable to hold the CanTrcv-Spi communication status*/
#     VAR(CanTrcv_SpiTransStatus,AUTOMATIC)  TransmissionStatus;
# 
#     /* Variable works as decrement counter to allow hardware changes mode */
#     VAR (uint32, AUTOMATIC) DelayCount_u32;
# 
#     /* Pointer to the Status array for each Channel. */
#     P2VAR(CanTrcv_31_TJA1145_StatusType,CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_DATA)Status_p;
# 
#     /* Pointer to index the constant link-time Configuration Array. */
#     P2CONST(CanTrcv_31_TJA1145_LtCfgType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_CONST)LtConfig_p;
# #if(CANTRCV_31_TJA1145_WAKEUP_NOT_SUPPORTED != CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT)
#     /* Variable to hold the number of actual bytes transmitted */
#     VAR (uint8, AUTOMATIC) TransmitIndex_u8;
# 
# #endif
#     RegData_u8 = 0x00;
	.d2line		143
	diab.li		r28,0		# RegData_u8=r28
# 
#     DataIndex_u8 = 0;
	.d2line		145
.Llo21:
	diab.li		r29,0
.Llo18:
	stb		r29,8(r1)
# 
# #if (STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT)
# 
#     /* Check for any Development errors. */
#     ReturnValue = CanTrcv_31_TJA1145_SetOpModeDECheck(Transceiver, OpMode);
#     if (E_OK == ReturnValue)
#     {
# #else
# 
#     ReturnValue = E_OK;
# 
# #endif/* end #if(CANTRCV_31_TJA1145_DEV_ERROR_DETECT == STD_ON) */
# 
# 
#         Status_p = &(CANTRCV_31_TJA1145_STATUS_P[Transceiver]) ;
	.d2line		160
	lis		r4,CanTrcv_31_TJA1145_Status_p@ha
	lwz		r26,CanTrcv_31_TJA1145_Status_p@l(r4)		# Status_p=r26
.Llo30:
	rlwinm		r0,r3,5,19,26		# Transceiver=r3
	se_add		r0,r26		# Status_p=r26
	mr		r26,r0		# Status_p=r26 Status_p=r0
# 
#         LtConfig_p = &(CANTRCV_31_TJA1145_LT_CONFIG_P[Transceiver]);
	.d2line		162
	lis		r4,CanTrcv_31_TJA1145_LtConfig_p@ha
	lwz		r27,CanTrcv_31_TJA1145_LtConfig_p@l(r4)		# Transceiver=r27
	rlwinm		r3,r3,0,24,31		# Transceiver=r3 Transceiver=r3
	e_mulli		r3,r3,20		# Transceiver=r3 Transceiver=r3
	se_add		r3,r27		# Transceiver=r3 Transceiver=r3 Transceiver=r27
.Llo2:
	mr		r27,r3		# LtConfig_p=r27 LtConfig_p=r3
# 
#         /* Protect the shared resourse - CanTrcvCurrentState */
#         SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
	.d2line		165
	bl		SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1
# 
#         TmpCanTrcvCurrentState = Status_p->CanTrcvCurrentState;
	.d2line		167
.Llo32:
	lwz		r30,0(r26)		# Status_p=r26
.Llo12:
	mr		r30,r30		# TmpCanTrcvCurrentState=r30 TmpCanTrcvCurrentState=r30
# 
#         SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
	.d2line		169
	bl		SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1
# 
# #if (STD_ON == CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT)
#         /* Obtain the post-build configuration */
#         PbConfig_p = &(CanTrcv_31_TJA1145_PbConfig_p[Transceiver]);
# 
# #endif /* CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT */
# 
#         switch (OpMode)
	.d2line		177
	mr.		r6,r31		# OpMode=r6 OpMode=?a5
	bc		1,2,.L678	# eq
.Llo33:
	se_cmpi		r6,1
	bc		1,2,.L675	# eq
	se_cmpi		r6,2
	bc		1,2,.L671	# eq
	b		.L679
.L671:
#         {
# 
#             case CANTRCV_TRCVMODE_STANDBY:
# 
#                 if ((CANTRCV_TRCVMODE_NORMAL  ==  TmpCanTrcvCurrentState) ||
	.d2line		182
	se_cmpi		r30,0		# TmpCanTrcvCurrentState=r30
	bc		1,2,.L689	# eq
	se_cmpi		r30,2		# TmpCanTrcvCurrentState=r30
	bc		0,2,.L672	# ne
.L689:
#                     (CANTRCV_TRCVMODE_STANDBY == TmpCanTrcvCurrentState ))
# 
#                 {
# 
#                     /* Setting to Standby mode */
#                     RegData_u8 = RegData_u8 | CANTRCV_31_TJA1145_MODE_STANDBY_COMMAND;
	.d2line		188
	.diab.bseti		r28,29		# RegData_u8=r28
	mr		r5,r28		# RegData_u8=r5 RegData_u8=r28
	b		.L674
.L672:
# 
#                 }
#                 else
#                 {
# 
# #if (CANTRCV_31_TJA1145_DEV_ERROR_DETECT == STD_ON)
#                     /* Report to DET */
#                     (void)Det_ReportError (CANTRCV_31_TJA1145_MODULE_ID, 
#                                    CANTRCV_31_TJA1145_INSTANCE_ID, CANTRCV_31_TJA1145_SET_OPMODE_SID,
#                                                     CANTRCV_31_TJA1145_E_TRCV_NOT_NORMAL);
# #endif/* end #if(CANTRCV_31_TJA1145_DEV_ERROR_DETECT == STD_ON) */
# 
#                     /* Set the return value to E_NOT_OK  */
#                     ReturnValue = E_NOT_OK;
	.d2line		202
.Llo13:
	diab.li		r29,1		# ReturnValue=r29
	b		.L674
.L675:
# 
#                 }
# 
#                 break;
# 
#             case CANTRCV_TRCVMODE_SLEEP:
# 
#                 if ((CANTRCV_TRCVMODE_STANDBY == TmpCanTrcvCurrentState ) ||
	.d2line		210
.Llo14:
	se_cmpi		r30,2		# TmpCanTrcvCurrentState=r30
	bc		1,2,.L690	# eq
	se_cmpi		r30,1		# TmpCanTrcvCurrentState=r30
	bc		0,2,.L676	# ne
.L690:
#                      (CANTRCV_TRCVMODE_SLEEP == TmpCanTrcvCurrentState ))
#                 {
# 
#                     /* Setting to Sleep mode */
#                     RegData_u8 = RegData_u8 | CANTRCV_31_TJA1145_MODE_SLEEP_COMMAND;                                                    
	.d2line		215
	.diab.bseti		r28,31		# RegData_u8=r28
	mr		r5,r28		# RegData_u8=r5 RegData_u8=r28
	b		.L674
.L676:
#                 }
#                 else
#                 {
# 
# #if (CANTRCV_31_TJA1145_DEV_ERROR_DETECT == STD_ON)
#                     /* Report to DET */
#                     Det_ReportError (CANTRCV_31_TJA1145_MODULE_ID, CANTRCV_31_TJA1145_INSTANCE_ID,
#                            CANTRCV_31_TJA1145_SET_OPMODE_SID, CANTRCV_31_TJA1145_E_TRCV_NOT_STANDBY);
# #endif/* end #if(CANTRCV_31_TJA1145_DEV_ERROR_DETECT == STD_ON) */
# 
#                     /* Set the return value to E_NOT_OK  */
#                     ReturnValue = E_NOT_OK;
	.d2line		227
.Llo15:
	diab.li		r29,1		# ReturnValue=r29
	b		.L674
.L678:
#                 }
#                 break;
# 
#             case CANTRCV_TRCVMODE_NORMAL :
# 
#                 /* Setting to Normal mode */
#                 RegData_u8 = RegData_u8 | CANTRCV_31_TJA1145_MODE_NORMAL_COMMAND;
	.d2line		234
.Llo16:
	e_ori		r28,r28,7		# RegData_u8=r28 RegData_u8=r28
	mr		r5,r28		# RegData_u8=r5 RegData_u8=r28
	b		.L674
.L679:
# 
#                 break;
# 
#             /* PRQA S 2018 1 */ /* The "default" branch will be reached if value outside of enum is passed to the function */
#             default:
# 
#                 ReturnValue = E_NOT_OK;
	.d2line		241
.Llo17:
	diab.li		r29,1		# ReturnValue=r29
.L674:
# 
#                 break;
# 
#         }
# 
#         if(E_NOT_OK != ReturnValue)
	.d2line		247
.Llo19:
	rlwinm		r3,r29,0,24,31		# Transceiver=r3 ReturnValue=r29
.Llo3:
	se_cmpi		r3,1		# Transceiver=r3
	bc		1,2,.L688	# eq
#         {
# #if(CANTRCV_31_TJA1145_WAKEUP_NOT_SUPPORTED != CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT)
#             /* As stated in the CanTrcv (TJA1145) Datasheet section 6.6.2:
#             All the event capture status bits must be cleared before
#             TJA1145 switches to sleep mode */
#             if (OpMode == CANTRCV_TRCVMODE_SLEEP)
#             {
# 
#                 CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_GLOBAL_EVENT_STATUS_REGADDR, 
#                                        (uint8) CANTRCV_31_TJA1145_CLEAR_GLOBAL_EVENT_STATUS_REG , &DataIndex_u8, FALSE);
#                 CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_SYS_EVENT_STATUS_REGADDR, 
#                                        (uint8) CANTRCV_31_TJA1145_CLEAR_SYS_EVENT_STATUS_REG , &DataIndex_u8, FALSE);
#                 CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_CAN_EVENT_STATUS_REGADDR, 
#                                        (uint8) CANTRCV_31_TJA1145_CLEAR_CAN_EVENT_STATUS_REG , &DataIndex_u8, FALSE);
#                 CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_WAKE_PIN_STATUS_REGADDR, 
#                                        (uint8) CANTRCV_31_TJA1145_CLEAR_WAKE_PIN_STATUS_REG , &DataIndex_u8, FALSE);
# 
#                             /* Send control commands to the CanTrcv via SPI, byte by byte*/
#                 for(TransmitIndex_u8=0; TransmitIndex_u8<DataIndex_u8; TransmitIndex_u8++) {
# 
#                     (void)CanTrcv_31_TJA1145_SpiTransmit (LtConfig_p, &DataToBeSent[TransmitIndex_u8], NULL_PTR, 1 );
#                 }
#                 DataIndex_u8 = 0;
#             }
# #endif
#             /* Prepare the command to be written to the CanTrcv Mode register via SPI*/
#             CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_MODE_CONTROL_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
	.d2line		274
.Llo4:
	diab.addi		r3,r1,28		# Transceiver=r3
.Llo5:
	lbz		r0,8(r1)
	rlwinm		r0,r0,1,23,30
	se_add		r3,r0		# Transceiver=r3 Transceiver=r3
.Llo6:
	rlwinm		r5,r28,0,24,31		# RegData_u8=r5 RegData_u8=r28
	diab.addi		r6,r1,8
	diab.li		r4,1
	diab.li		r7,0
	bl		CanTrcv_31_TJA1145_PrepareSpiData
#             TransmissionStatus = CanTrcv_31_TJA1145_SpiTransmit (LtConfig_p, DataToBeSent, NULL_PTR, DataIndex_u8 );
	.d2line		275
	lbz		r6,8(r1)
	diab.addi		r4,r1,28
	mr		r3,r27		# LtConfig_p=r3 LtConfig_p=r27
	diab.li		r5,0		# RegData_u8=r5
	bl		CanTrcv_31_TJA1145_SpiTransmit
.Llo25:
	mr		r3,r3		# TransmissionStatus=r3 TransmissionStatus=r3
#             if ((OpMode == CANTRCV_TRCVMODE_NORMAL) && (TransmissionStatus == CANTRCV_TX_SUCCEEDED) )
	.d2line		276
	se_cmpi		r31,0		# OpMode=r31
	bc		0,2,.L681	# ne
.Llo22:
	se_cmpi		r3,0		# TransmissionStatus=r3
	bc		0,2,.L681	# ne
#             {
#                 DataIndex_u8=0;
	.d2line		278
	diab.li		r5,0		# RegData_u8=r5
.Llo23:
	stb		r5,8(r1)		# RegData_u8=r5
# 
#                 /* Prepare the command to be sent to the CanTrcv to read the control register */
#                 CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_CAN_CONTROL_REGADDR, 0x00, &DataIndex_u8, TRUE);
	.d2line		281
	diab.addi		r3,r1,28		# TransmissionStatus=r3
	diab.addi		r6,r1,8
	diab.li		r4,32
	diab.li		r7,1
	bl		CanTrcv_31_TJA1145_PrepareSpiData
# 
#                 /* Send command to CanTrcv using SPI to read the control register*/
#                 TransmissionStatus = CanTrcv_31_TJA1145_SpiTransmit( LtConfig_p, DataToBeSent, DataToBeReceived, DataIndex_u8 );
	.d2line		284
.Llo24:
	lbz		r6,8(r1)
	diab.addi		r4,r1,28
	diab.addi		r5,r1,12		# RegData_u8=r5
	mr		r3,r27		# LtConfig_p=r3 LtConfig_p=r27
	bl		CanTrcv_31_TJA1145_SpiTransmit
	.d2line		286
.Llo7:
	mr.		r3,r3		# TransmissionStatus=?a9 TransmissionStatus=r3
# 
#                 if(TransmissionStatus == CANTRCV_TX_SUCCEEDED)
.Llo8:
	bc		0,2,.L681	# ne
#                 {
#                     DataIndex_u8 = 0;
	.d2line		288
	diab.li		r7,0
	stb		r7,8(r1)
#                     /* Activate the CanTrcv (Normal Mode) */
#                     DataToBeReceived[0] = DataToBeReceived[0] | CANTRCV_31_TJA1145_OPMODE_ACTIVE_COMMAND ;
	.d2line		290
	lhz		r0,12(r1)
	.diab.bseti		r0,31
	sth		r0,12(r1)
#                     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_CAN_CONTROL_REGADDR, (uint8)DataToBeReceived[0], &DataIndex_u8, FALSE);
	.d2line		291
	diab.addi		r3,r1,28		# TransmissionStatus=r3
	li		r0,0
	rlwinm		r0,r0,1,23,30
	se_add		r3,r0		# TransmissionStatus=r3 TransmissionStatus=r3
	lbz		r5,13(r1)		# RegData_u8=r5
	diab.addi		r6,r1,8
	diab.li		r4,32
	bl		CanTrcv_31_TJA1145_PrepareSpiData
#                     TransmissionStatus = CanTrcv_31_TJA1145_SpiTransmit (LtConfig_p, DataToBeSent, NULL_PTR, DataIndex_u8 );
	.d2line		292
	lbz		r6,8(r1)
	diab.addi		r4,r1,28
	mr		r3,r27		# LtConfig_p=r3 LtConfig_p=r27
	diab.li		r5,0		# RegData_u8=r5
	bl		CanTrcv_31_TJA1145_SpiTransmit
	mr		r3,r3		# TransmissionStatus=r3 TransmissionStatus=r3
.L681:
#                 }
#                 else
#                 {
#                     /* Do Nothing */
#                 }
#             }
# 
#             if ( TransmissionStatus != CANTRCV_TX_SUCCEEDED )
	.d2line		300
	se_cmpi		r3,0		# TransmissionStatus=r3
	bc		1,2,.L684	# eq
#             {
# 
# #if( STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT )
#                 /* Report DET Error */
#                 Det_ReportError( CANTRCV_31_TJA1145_MODULE_ID,
#                         CANTRCV_31_TJA1145_INSTANCE_ID,
#                         CANTRCV_31_TJA1145_SET_OPMODE_SID,
#                         CANTRCV_31_TJA1145_E_NO_TRCV_CONTROL );
# #endif
# 
#             ReturnValue = E_NOT_OK;
	.d2line		311
.Llo26:
	diab.li		r29,1		# ReturnValue=r29
	b		.L688
.L684:
# 
#             }
#             else
#             {
#            
# #if (STD_ON == CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT)
# 
#                 /* If the selective wake-up functionality is enabled. check if there are SYSERR */
#                 if ( PbConfig_p->CanTrcvPnEnabled == TRUE )
#                 {
#                     DataIndex_u8 = 0;
#                     /* Prepare commands to read the status of the CanTrcv. (check if there are SYSERR) */
#                     /* Command to read overtemperature flag */
#                     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_SYS_EVENT_STATUS_REGADDR, (uint8) 0x00 , &DataIndex_u8, TRUE);
# 
#                     /* Command to read Can failure flag */
#                     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_CAN_EVENT_STATUS_REGADDR, (uint8) 0x00 , &DataIndex_u8, TRUE);
# 
#                     /* Command to read PN successful configuration flag */
#                     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_TRCV_STATUS_REGADDR, (uint8) 0x00 , &DataIndex_u8, TRUE);                
#                 }
# 
# 
#                 if(OpMode != CANTRCV_TRCVMODE_SLEEP)
#                 {
# 
#                     for(PNTransmitIndex_u8=0; PNTransmitIndex_u8<DataIndex_u8; PNTransmitIndex_u8++) 
#                     {
#                         /* Spi access is Synchronous */
#                         TransmissionStatus = CanTrcv_31_TJA1145_SpiTransmit (LtConfig_p, &DataToBeSent[PNTransmitIndex_u8], &DataToBeReceived[PNTransmitIndex_u8], 1 );
#                         if(TransmissionStatus != CANTRCV_TX_SUCCEEDED)
#                         {
#                             break;
#                         }
#                     }
#                 
#                     if((( TransmissionStatus == CANTRCV_TX_SUCCEEDED )) && (PbConfig_p->CanTrcvPnEnabled == TRUE ))
#                     {
#                         /* Reading the overtemperature status bit */
#                         OverTempFlag_u8 = CANTRCV_31_TJA1145_READ_BITN(DataToBeReceived[0], CANTRCV_31_TJA1145_OTW_BIT);            
# 
#                         /* Reading the Can Failure status bit */
#                         CanFailureFlag_u8 = CANTRCV_31_TJA1145_READ_BITN(DataToBeReceived[1], CANTRCV_31_TJA1145_CF_BIT);
# 
#                         /* Reading the PN configuration status flag */
#                         PnConfigFlag_u8 = CANTRCV_31_TJA1145_READ_BITN(DataToBeReceived[PnConfigFlagIndex], CANTRCV_31_TJA1145_CPNS_BIT);
# 
#                         /* If there is no system error
#                            SYSERR = overtemperature , PN configuation failure or Can failure (due to undervolatage or TX dominant) */
#                         if ( ( OverTempFlag_u8 == 0 ) && ( CanFailureFlag_u8 == 0 ) && ( PnConfigFlag_u8 == 1 ) )
#                         {
#                             CanIf_ConfirmPnAvailability( LtConfig_p->CanIfTrcvID );
#                         }
#                        /* Reading the PowerOn status bit*/
#                        PowerOnFlag_u8 = CANTRCV_31_TJA1145_READ_BITN(DataToBeReceived[0], CANTRCV_31_TJA1145_PO_BIT);
# 
#                        /* If the POR flag is set, then we need to re-initialize the transceiver (CanTrcv187) */
#                        if ( PowerOnFlag_u8 != 0 )
#                        {
#                            DataIndex_u8 = 0;
#                            ReturnValue = CanTrcv_31_TJA1145_Configure_HW( Transceiver, 
#                                                                           OverTempFlag_u8,
#                                                                           CanFailureFlag_u8,
#                                                                           PowerOnFlag_u8,
#                                                                           DataToBeSent,
#                                                                           &DataIndex_u8,
#                                                                           &UnSupportedBaudRate );
#  
#                             /* Send control commands to the CanTrcv via SPI, byte by byte*/
#                             for(PNTransmitIndex_u8=0; PNTransmitIndex_u8<DataIndex_u8; PNTransmitIndex_u8++) 
#                             {
#                                 TransmissionStatus = CanTrcv_31_TJA1145_SpiTransmit (LtConfig_p, &DataToBeSent[PNTransmitIndex_u8], NULL_PTR, 1 );
# 
#                             }
#                         }
#                      }
#                      else if ( TransmissionStatus != CANTRCV_TX_SUCCEEDED )
#                      {
# 
# #if( STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT )            
#                         /* Report DET Error */
#                         Det_ReportError( CANTRCV_31_TJA1145_MODULE_ID,
#                                          CANTRCV_31_TJA1145_INSTANCE_ID,
#                                          CANTRCV_31_TJA1145_SET_OPMODE_SID,
#                                          CANTRCV_31_TJA1145_E_NO_TRCV_CONTROL );
# #endif
#                         ReturnValue = E_NOT_OK;
#                     }
#                     else
#                     {
#                           /* Do nothing*/
#                     }
#                 }
#                     if ( TransmissionStatus != CANTRCV_TX_SUCCEEDED )
#                     {
# 
# #if( STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT )        
#                         /* Report DET Error */
#                         Det_ReportError( CANTRCV_31_TJA1145_MODULE_ID,
#                                          CANTRCV_31_TJA1145_INSTANCE_ID,
#                                          CANTRCV_31_TJA1145_SET_OPMODE_SID,
#                                          CANTRCV_31_TJA1145_E_NO_TRCV_CONTROL );
# #endif
# 
#                     }
#                     else
# #endif /* end of CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT */
#                     {
#                         /* Should we make another transmission to check that there is no SPI error & the mode changed successfully? */
#                         SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
	.d2line		421
	bl		SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1
# 
#                         Status_p->CanTrcvCurrentState = OpMode;
	.d2line		423
	stw		r31,0(r26)		# Status_p=r26 OpMode=r31
# 
#                         SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
	.d2line		425
	bl		SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1
# 
#                         /* Wait until the TRcv operation mode changes. */
#                         DelayCount_u32 = CANTRCV_31_TJA1145_WAITCOUNT_U32;
	.d2line		428
	lis		r3,CANTRCV_31_TJA1145_WAITCOUNT_U32@ha		# TransmissionStatus=r3
.Llo27:
	lwz		r3,CANTRCV_31_TJA1145_WAITCOUNT_U32@l(r3)		# TransmissionStatus=r3 TransmissionStatus=r3
.Llo28:
	mr		r3,r3		# DelayCount_u32=r3 DelayCount_u32=r3
.L686:
# 
#                         /* Timeout for allowing the hardware to settle down */
#                         while(0 != DelayCount_u32)
	.d2line		431
.Llo31:
	se_cmpi		r3,0		# DelayCount_u32=r3
	bc		1,2,.L687	# eq
#                         {
#                             /* Decrement the timeout */
#                             DelayCount_u32--;
	.d2line		434
	diab.addi		r0,r3,-1		# DelayCount_u32=r3
	diab.addi		r3,r3,-1		# DelayCount_u32=r3 DelayCount_u32=r3
	b		.L686
.L687:
#                         }
# 
#                         /* Inform CanIf with mode switch */
#                         CanIf_TrcvModeIndication(LtConfig_p->CanIfTrcvID,OpMode);
	.d2line		438
.Llo29:
	lbz		r3,19(r27)		# DelayCount_u32=r3 LtConfig_p=r27
	mr		r4,r31		# OpMode=r4 OpMode=r31
	bl		CanIf_TrcvModeIndication
.L688:
# 
#                         /*Enable/Disable the wakeup events through ICU */
# #if (CANTRCV_31_TJA1145_WAKEUP_BY_ICU == CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT)
#                         if ( CANTRCV_TRCVMODE_NORMAL == OpMode )
#                         {        
#                             CanTrcv_31_TJA1145_EnterNormal (Transceiver);
#                         }
#                         else 
#                         {       
#                             CanTrcv_31_TJA1145_EnterSTD (Transceiver);
#                         }                      
#                         CanTrcv_31_TJA1145_IcuSetNotification(Transceiver, OpMode);
# #endif /* CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT */
#                     }
#                }            
#         }
#         else
#         {
# 
#             /* Do Nothing */
# 
#         }
# #if (STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT)
#     }
#     else
#     {
# 
#        /* Do Nothing */
# 
#     }
# #endif
#     return (ReturnValue);
	.d2line		470
.Llo11:
	rlwinm		r3,r29,0,24,31		# Transceiver=r3 ReturnValue=r29
# }/* End of CanTrcv_31_TJA1145_SetOpMode () */
	.d2line		471
	.d2epilogue_begin
	lmw		r26,120(r1)		# offset r1+120  0x78
	.d2_cfa_restore_list	2,10
.Llo20:
	lwz		r0,148(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,144		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L716:
	.type		CanTrcv_31_TJA1145_SetOpMode,@function
	.size		CanTrcv_31_TJA1145_SetOpMode,.-CanTrcv_31_TJA1145_SetOpMode
# Number of nodes = 246

# Allocations for CanTrcv_31_TJA1145_SetOpMode
#	?a4		Transceiver
#	?a5		OpMode
#	?a6		TmpCanTrcvCurrentState
#	?a7		ReturnValue
#	SP,28		DataToBeSent
#	SP,12		DataToBeReceived
#	?a8		RegData_u8
#	SP,8		DataIndex_u8
#	?a9		TransmissionStatus
#	?a10		DelayCount_u32
#	?a11		Status_p
#	?a12		LtConfig_p

# Allocations for module
	.section	.text_vle
	.0byte		.L763
	.section	.text_vle
	.type		.L670,@object
	.size		.L670,14
	.align		1
#	static		__static_init1
.L670:
	.space		14
	.section	.text_vle
#$$ld
.L5:
.L785:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L783:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\inc\\internal\\CanTrcv_31_TJA1145_Private.h"
.L767:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\..\\..\\inc\\CanTrcv_Types.h"
.L762:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\inc\\CanTrcv_31_TJA1145.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L709:
.L717:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_Setopmode.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_Setopmode.c"
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
.L706:
	.4byte		.L707-.L705
.L705:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L711-.L706
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_Setopmode.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L708
	.4byte		.L709
	.4byte		.L712
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L721:
	.sleb128	2
	.4byte		.L714-.L706
	.byte		"CanTrcv_31_TJA1145_SetOpMode"
	.byte		0
	.4byte		.L717
	.uleb128	84
	.uleb128	47
	.4byte		.L718
	.byte		0x1
	.byte		0x1
	.4byte		.L715
	.4byte		.L716
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L717
	.uleb128	84
	.uleb128	47
	.byte		"Transceiver"
	.byte		0
	.4byte		.L719
	.4byte		.L722
	.sleb128	3
	.4byte		.L717
	.uleb128	84
	.uleb128	47
	.byte		"OpMode"
	.byte		0
	.4byte		.L723
	.4byte		.L725
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L726:
	.sleb128	4
	.4byte		.L717
	.uleb128	89
	.uleb128	43
	.byte		"TmpCanTrcvCurrentState"
	.byte		0
	.4byte		.L723
	.4byte		.L727
.L728:
	.sleb128	4
	.4byte		.L717
	.uleb128	91
	.uleb128	36
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L718
	.4byte		.L729
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L730:
	.sleb128	5
	.4byte		.L717
	.uleb128	94
	.uleb128	28
	.byte		"DataToBeSent"
	.byte		0
	.4byte		.L731
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	28
.L735:
	.sleb128	5
	.4byte		.L717
	.uleb128	98
	.uleb128	28
	.byte		"DataToBeReceived"
	.byte		0
	.4byte		.L736
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L738:
	.sleb128	4
	.4byte		.L717
	.uleb128	101
	.uleb128	27
	.byte		"RegData_u8"
	.byte		0
	.4byte		.L719
	.4byte		.L739
.L740:
	.sleb128	5
	.4byte		.L717
	.uleb128	104
	.uleb128	27
	.byte		"DataIndex_u8"
	.byte		0
	.4byte		.L719
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L741:
	.sleb128	4
	.4byte		.L717
	.uleb128	128
	.uleb128	44
	.byte		"TransmissionStatus"
	.byte		0
	.4byte		.L742
	.4byte		.L744
.L745:
	.sleb128	4
	.4byte		.L717
	.uleb128	131
	.uleb128	29
	.byte		"DelayCount_u32"
	.byte		0
	.4byte		.L746
	.4byte		.L748
.L749:
	.sleb128	4
	.4byte		.L717
	.uleb128	134
	.uleb128	99
	.byte		"Status_p"
	.byte		0
	.4byte		.L750
	.4byte		.L753
.L754:
	.sleb128	4
	.4byte		.L717
	.uleb128	137
	.uleb128	102
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L755
	.4byte		.L759
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L714:
	.section	.debug_info,,n
.L761:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L762
	.uleb128	749
	.uleb128	88
	.byte		"CanTrcv_31_TJA1145_Status_p"
	.byte		0
	.4byte		.L750
	.0byte		.L761
.L763:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L762
	.uleb128	762
	.uleb128	88
	.byte		"CanTrcv_31_TJA1145_LtConfig_p"
	.byte		0
	.4byte		.L764
	.section	.debug_info,,n
.L765:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L762
	.uleb128	776
	.uleb128	48
	.byte		"CANTRCV_31_TJA1145_WAITCOUNT_U32"
	.byte		0
	.4byte		.L766
	.section	.debug_info,,n
.L752:
	.sleb128	7
	.4byte		.L767
	.uleb128	61
	.uleb128	13
	.4byte		.L768-.L2
	.uleb128	32
	.section	.debug_info,,n
.L563:
	.sleb128	8
	.byte		"CanTrcvCurrentState"
	.byte		0
	.4byte		.L723
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L564:
	.sleb128	8
	.byte		"CanTrcvSetOpModeRxBuf"
	.byte		0
	.4byte		.L769
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L565:
	.sleb128	8
	.byte		"CanTrcvMainFuncRxBuf"
	.byte		0
	.4byte		.L771
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L566:
	.sleb128	8
	.byte		"CanTrcvMainFuncRxFlag"
	.byte		0
	.4byte		.L773
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L567:
	.sleb128	8
	.byte		"CanTrcvMainDiagnosticRxFlag"
	.byte		0
	.4byte		.L773
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L568:
	.sleb128	8
	.byte		"CanTrcvInitialised_bt"
	.byte		0
	.4byte		.L773
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L569:
	.sleb128	8
	.byte		"CanTrcvSpiRetriesCounter"
	.byte		0
	.4byte		.L719
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L570:
	.sleb128	8
	.byte		"CanTrcvSpiTimeCounter"
	.byte		0
	.4byte		.L719
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L768:
.L758:
	.sleb128	7
	.4byte		.L767
	.uleb128	61
	.uleb128	13
	.4byte		.L774-.L2
	.uleb128	20
.L547:
	.sleb128	8
	.byte		"CanTrcvInitState"
	.byte		0
	.4byte		.L775
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L548:
	.sleb128	8
	.byte		"CanTrcvMaxBaudrate"
	.byte		0
	.4byte		.L776
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L549:
	.sleb128	8
	.byte		"CanTrcvControlsPowerSupply"
	.byte		0
	.4byte		.L777
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L550:
	.sleb128	8
	.byte		"CanTrcvChannelUsed"
	.byte		0
	.4byte		.L777
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L551:
	.sleb128	8
	.byte		"CanTrcvWakeupByBusUsed"
	.byte		0
	.4byte		.L777
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L552:
	.sleb128	8
	.byte		"CanTrcvChannelId"
	.byte		0
	.4byte		.L778
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L553:
	.sleb128	8
	.byte		"CanTrcvPorWakeupSourceId"
	.byte		0
	.4byte		.L778
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L554:
	.sleb128	8
	.byte		"CanTrcvSyserrWakeupSourceId"
	.byte		0
	.4byte		.L778
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L555:
	.sleb128	8
	.byte		"CanTrcvWakeupSourceId"
	.byte		0
	.4byte		.L778
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L556:
	.sleb128	8
	.byte		"CanTrcvPinWakeupSourceId"
	.byte		0
	.4byte		.L778
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L557:
	.sleb128	8
	.byte		"CanTrcvSpiAccessSynchronous"
	.byte		0
	.4byte		.L777
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L558:
	.sleb128	8
	.byte		"CanTrcvSpiCommRetries"
	.byte		0
	.4byte		.L778
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L559:
	.sleb128	8
	.byte		"CanTrcvSpiCommTimeout"
	.byte		0
	.4byte		.L778
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L560:
	.sleb128	8
	.byte		"CanTrcvSpiChannelId"
	.byte		0
	.4byte		.L779
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L561:
	.sleb128	8
	.byte		"CanTrcvSpiSequenceId"
	.byte		0
	.4byte		.L781
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L562:
	.sleb128	8
	.byte		"CanIfTrcvID"
	.byte		0
	.4byte		.L778
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
	.sleb128	0
.L774:
	.section	.debug_info,,n
.L743:
	.sleb128	9
	.4byte		.L783
	.uleb128	229
	.uleb128	14
	.4byte		.L784-.L2
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
.L784:
.L724:
	.sleb128	9
	.4byte		.L785
	.uleb128	23
	.uleb128	15
	.4byte		.L786-.L2
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
.L786:
	.section	.debug_info,,n
.L720:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L719:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L720
.L718:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L719
.L723:
	.sleb128	12
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L724
.L734:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L733:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L734
	.section	.debug_info,,n
.L731:
	.sleb128	13
	.4byte		.L732
	.4byte		.L733
	.section	.debug_info,,n
	.sleb128	14
	.uleb128	39
	.sleb128	0
.L732:
.L736:
	.sleb128	13
	.4byte		.L737
	.4byte		.L733
	.sleb128	14
	.uleb128	6
	.sleb128	0
.L737:
.L742:
	.sleb128	12
	.byte		"CanTrcv_SpiTransStatus"
	.byte		0
	.4byte		.L743
.L747:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L746:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L747
.L751:
	.sleb128	12
	.byte		"CanTrcv_31_TJA1145_StatusType"
	.byte		0
	.4byte		.L752
	.section	.debug_info,,n
.L750:
	.sleb128	15
	.4byte		.L751
.L757:
	.sleb128	12
	.byte		"CanTrcv_31_TJA1145_LtCfgType"
	.byte		0
	.4byte		.L758
	.section	.debug_info,,n
.L756:
	.sleb128	16
	.4byte		.L757
.L755:
	.sleb128	15
	.4byte		.L756
.L764:
	.sleb128	16
	.4byte		.L755
.L766:
	.sleb128	16
	.4byte		.L746
	.section	.debug_info,,n
.L769:
	.sleb128	17
	.4byte		.L770-.L2
	.4byte		.L733
	.sleb128	14
	.uleb128	6
	.sleb128	0
.L770:
.L771:
	.sleb128	17
	.4byte		.L772-.L2
	.4byte		.L733
	.sleb128	14
	.uleb128	3
	.sleb128	0
.L772:
.L773:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L720
.L775:
	.sleb128	16
	.4byte		.L723
.L776:
	.sleb128	16
	.4byte		.L733
.L777:
	.sleb128	16
	.4byte		.L773
.L778:
	.sleb128	16
	.4byte		.L719
.L780:
	.sleb128	12
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L719
.L779:
	.sleb128	16
	.4byte		.L780
.L782:
	.sleb128	12
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L719
.L781:
	.sleb128	16
	.4byte		.L782
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L711:
	.sleb128	0
.L707:

	.section	.debug_loc,,n
	.align	0
.L722:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L725:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo9),4
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),31
	.d2locend
.L727:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),30
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),30
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),30
	.d2locend
.L729:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo17),29
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),29
	.d2locend
.L739:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),28
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),5
	.d2locend
.L744:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locend
.L748:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locend
.L753:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),26
	.d2locend
.L759:
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo32),3
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo11),27
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTrcv_31_TJA1145_SetOpMode"
	.wrcm.nint32 "frameSize", 144
	.wrcm.nstrlist "calls", "CanIf_TrcvModeIndication","CanTrcv_31_TJA1145_PrepareSpiData","CanTrcv_31_TJA1145_SpiTransmit","SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1","SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Setopmode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Setopmode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Setopmode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Setopmode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Setopmode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Setopmode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTrcv\ssc\target\TJA1145\make\..\src\CanTrcv_31_TJA1145_Setopmode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
