#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTrcv_31_UJA1132_Init.c"
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
# static FUNC (Std_ReturnType, CANTRCV_31_UJA1132_CODE) CanTrcv_31_UJA1132_Configure_HW
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L781:
	.section	.invalid_TEXT,,c
#$$ld
.L777:
	.0byte		.L775
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_Init.c"
        .d2line         431,55
#$$ld
.L784:

#$$bf	CanTrcv_31_UJA1132_Configure_HW,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTrcv_31_UJA1132_Configure_HW:
.Llo1:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
	stmw		r26,40(r1)		# offset r1+40  0x28
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,68(r1)		# CanNetwork_u8=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# CanNetwork_u8=r0 CanNetwork_u8=r3
	mr		r31,r4		# DataToBeSent=r31 DataToBeSent=r4
.Llo7:
	mr		r30,r5		# DataLength_p=r30 DataLength_p=r5
	.d2prologue_end
# (
#     CONST(uint8, AUTOMATIC) CanNetwork_u8,
#     VAR(uint16, AUTOMATIC) DataToBeSent[],
#     CONSTP2VAR(uint8, AUTOMATIC, CANTRCV_31_UJA1132_APPL_DATA) DataLength_p
# )
# {
# 
#     VAR(Std_ReturnType, AUTOMATIC) ReturnValue ;
# 
#     /* Operation mode. */
#     VAR (CanTrcv_TrcvModeType, AUTOMATIC)InitOpMode;
# 
# #if (STD_OFF == CANTRCV_SBCSI_SUPPORT)
#     /* Variable to hold the data of any register to be written*/
#     VAR (uint8, AUTOMATIC)RegData_u8;
#     
#     /* Variable to hold the number or SPI data elements to be sent/received*/
#     VAR (uint8, AUTOMATIC)DataIndex_u8;
#     
#     /* Variable to hold the SPI data elements to be received*/
#     VAR (uint16, AUTOMATIC) DataToBeReceived[CANTRCV_31_UJA1132_INIT_DATA_RX_LEN];
#     
#     /* Variable to hold the CanTrcv-Spi communication status*/
#     VAR(CanTrcv_SpiTransStatus,AUTOMATIC)  TransmissionStatusCanControl[CANTRCV_31_UJA1132_TX_CNTRL_LEN];
# #endif /* #if (STD_OFF == CANTRCV_SBCSI_SUPPORT) */
# 
#     /* Pointer to index the constant LinkTime Congiguration Array. */
#     P2CONST (CanTrcv_31_UJA1132_LtCfgType, CANTRCV_31_UJA1132_VAR_FAST, CANTRCV_31_UJA1132_APPL_CONST)LtConfig_p ;
# 
#     /* Get the pointer to the structure of the Network. */
#     LtConfig_p = &(CANTRCV_31_UJA1132_LT_CONFIG_P[CanNetwork_u8]);
	.d2line		462
.Llo8:
	rlwinm		r0,r0,0,24,31		# CanNetwork_u8=r0 CanNetwork_u8=r0
.Llo2:
	lis		r3,CanTrcv_31_UJA1132_LtConfig_p@ha		# LtConfig_p=r3
.Llo3:
	lwz		r26,CanTrcv_31_UJA1132_LtConfig_p@l(r3)		# LtConfig_p=r26 LtConfig_p=r3
.Llo22:
	rlwinm		r3,r0,5,0,26		# LtConfig_p=r3 CanNetwork_u8=r0
.Llo23:
	se_slwi		r0,3		# CanNetwork_u8=r0 CanNetwork_u8=r0
	subf		r0,r0,r3		# CanNetwork_u8=r0 CanNetwork_u8=r0 LtConfig_p=r3
	se_add		r0,r26		# CanNetwork_u8=r0 CanNetwork_u8=r0 LtConfig_p=r26
.Llo4:
	mr		r26,r0		# LtConfig_p=r26 LtConfig_p=r0
# 
#     /* Copy the configured init state of Transceiver. */
#     InitOpMode = LtConfig_p->CanTrcvInitState;
	.d2line		465
.Llo24:
	lwz		r27,0(r26)		# LtConfig_p=r26
.Llo15:
	mr		r27,r27		# InitOpMode=r27 InitOpMode=r27
# 
#     ReturnValue = E_OK;
	.d2line		467
	diab.li		r28,0		# ReturnValue=r28
# 
# #if (STD_OFF == CANTRCV_SBCSI_SUPPORT)
#     /*********************** Reading the interrupt enable register and the mode register ******************/
#     /* Initialization */
#     DataIndex_u8 = 0;
	.d2line		472
.Llo11:
	diab.li		r5,0
.Llo9:
	stb		r5,8(r1)
#     
#     /* Reading the value of the interrupt enable register */
#     CanTrcv_31_UJA1132_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_UJA1132_TRCV_INT_ENABLE_REGADDR, 0x00 , &DataIndex_u8, TRUE);
	.d2line		475
	diab.addi		r6,r1,8
	mr		r3,r31		# DataToBeSent=r3 DataToBeSent=r31
	diab.li		r4,35
	diab.li		r7,1
	bl		CanTrcv_31_UJA1132_PrepareSpiData
#     
#     /* Reading the registers via SPI */
#     TransmissionStatusCanControl[0] = CanTrcv_31_UJA1132_SpiTransmit ( LtConfig_p, DataToBeSent, &DataToBeReceived[0], DataIndex_u8 );
	.d2line		478
	lbz		r6,8(r1)
	diab.addi		r5,r1,12
	mr		r3,r26		# LtConfig_p=r3 LtConfig_p=r26
	mr		r4,r31		# DataToBeSent=r4 DataToBeSent=r31
	bl		CanTrcv_31_UJA1132_SpiTransmit
	mr		r29,r3		# LtConfig_p=r29
#     
#     /* Re initialize */
#     DataIndex_u8 = 0;
	.d2line		481
	diab.li		r5,0
	stb		r5,8(r1)
#     
#     /* Reading the value of the can control register */
#     CanTrcv_31_UJA1132_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_UJA1132_CAN_CONTROL_REGADDR, 0x00 , &DataIndex_u8, TRUE);
	.d2line		484
	diab.addi		r6,r1,8
	mr		r3,r31		# DataToBeSent=r3 DataToBeSent=r31
	diab.li		r4,32
	diab.li		r7,1
	bl		CanTrcv_31_UJA1132_PrepareSpiData
#     
#     /* Reading the registers via SPI */
#     TransmissionStatusCanControl[1] = CanTrcv_31_UJA1132_SpiTransmit ( LtConfig_p, DataToBeSent, &DataToBeReceived[1], DataIndex_u8 );
	.d2line		487
	lbz		r6,8(r1)
	diab.addi		r5,r1,14
	mr		r3,r26		# LtConfig_p=r3 LtConfig_p=r26
	mr		r4,r31		# DataToBeSent=r4 DataToBeSent=r31
	bl		CanTrcv_31_UJA1132_SpiTransmit
	mr		r3,r3		# LtConfig_p=r3
#     
#     if ((TransmissionStatusCanControl[0] != CANTRCV_TX_SUCCEEDED) || (TransmissionStatusCanControl[1] != CANTRCV_TX_SUCCEEDED))
	.d2line		489
	se_cmpi		r29,0		# LtConfig_p=r29
	bc		0,2,.L765	# ne
.Llo10:
	se_cmpi		r3,0		# LtConfig_p=r3
.Llo25:
	bc		1,2,.L758	# eq
.L765:
#     {
# #if( STD_ON == CANTRCV_31_UJA1132_DEV_ERROR_DETECT )        
#         /* Report DET Error */
#         Det_ReportError( CANTRCV_31_UJA1132_MODULE_ID,
#                          CANTRCV_31_UJA1132_INSTANCE_ID,
#                          CANTRCV_31_UJA1132_INIT_SID,
#                          CANTRCV_31_UJA1132_E_NO_TRCV_CONTROL );
# #endif
# 
#         ReturnValue = E_NOT_OK;
	.d2line		499
	diab.li		r28,1		# ReturnValue=r28
	b		.L759
.L758:
#     }
#     else
#     {
# #endif /* #if (STD_OFF == CANTRCV_SBCSI_SUPPORT) */
#     
#         /******************************************************************************************************/
#     
#         /************************************** CONFIGURING  CAN DETECTIONS ***********************************/
# #if (STD_ON == CANTRCV_SBCSI_SUPPORT)
#         /* Enable the CAN wakeup detection */
#         SBCSI_EnableInterruptSource(SBCSI_TRXIS_CAN_WAKE_ENINT);
#         
#         /* Enable the CAN failure detection */
#         SBCSI_EnableInterruptSource(SBCSI_TRXIS_CAN_FAIL_ENINT);
#         
#         /* Disable the CAN Bus silence detection */
#         SBCSI_DisableInterruptSource(SBCSI_TRXIS_CAN_SILENT_ENINT);
# #else
#         /* Initialization */
#         DataIndex_u8 = 0;
	.d2line		519
.Llo26:
	diab.li		r7,0
	stb		r7,8(r1)
#         
#         /* Initialization */
#         RegData_u8 = (uint8) DataToBeReceived[0];
	.d2line		522
	lhz		r5,12(r1)		# RegData_u8=r5
.Llo17:
	mr		r5,r5		# RegData_u8=r5 RegData_u8=r5
#         
#         /* Enabling the CAN wake-up detection */
#         RegData_u8 |= CANTRCV_31_UJA1132_MASK_BITN(CANTRCV_31_UJA1132_CWIE_BIT);
	.d2line		525
	.diab.bseti		r5,31		# RegData_u8=r5
	mr		r5,r5		# RegData_u8=r5 RegData_u8=r5
#         
#         /* Enabling the CAN Failure detection */
#         RegData_u8 |= CANTRCV_31_UJA1132_MASK_BITN(CANTRCV_31_UJA1132_CFIE_BIT);
	.d2line		528
	.diab.bseti		r5,30		# RegData_u8=r5
	mr		r5,r5		# RegData_u8=r5 RegData_u8=r5
#         
#         /* Disabling the Can Bus Silence detection */
#         RegData_u8 &= ((uint8)CANTRCV_31_UJA1132_ONES_MASK)^((uint8)(CANTRCV_31_UJA1132_MASK_BITN(CANTRCV_31_UJA1132_CBSIE_BIT)));
	.d2line		531
	rlwinm		r5,r5,0,28,26		# RegData_u8=r5 RegData_u8=r5
	mr		r5,r5		# RegData_u8=r5 RegData_u8=r5
#         
#         /* Preparing the SPI message */
#         /* PRQA S 492 1 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type. */
#         CanTrcv_31_UJA1132_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_UJA1132_TRCV_INT_ENABLE_REGADDR, RegData_u8 , &DataIndex_u8, FALSE);
	.d2line		535
	rlwinm		r5,r5,0,24,31		# RegData_u8=r5 RegData_u8=r5
.Llo18:
	diab.addi		r6,r1,8
	mr		r3,r31		# DataToBeSent=r3 DataToBeSent=r31
	diab.li		r4,35
	bl		CanTrcv_31_UJA1132_PrepareSpiData
# #endif /* #if (STD_ON == CANTRCV_SBCSI_SUPPORT) */
#     
#         /******************************************************************************************************/
#     
#         /************************************** CONFIGURING CANTRCV MODE **************************************/
#         
# #if (STD_OFF == CANTRCV_SBCSI_SUPPORT)
#         /* Clear the mode bits */
#         RegData_u8 = ((uint8) DataToBeReceived[1]) & ((uint8) CANTRCV_31_UJA1132_CLR_MODE_MASK);
	.d2line		544
	lhz		r5,14(r1)		# RegData_u8=r5
.Llo19:
	rlwinm		r5,r5,0,24,29		# RegData_u8=r5 RegData_u8=r5
	mr		r5,r5		# RegData_u8=r5 RegData_u8=r5
# #endif /* #if (STD_OFF == CANTRCV_SBCSI_SUPPORT) */
#         
#     
#         /* Initialize the CanTrcv with the given CanTrcv state*/
#         switch (InitOpMode)
	.d2line		549
	mr.		r6,r27		# InitOpMode=r6 InitOpMode=?a11
	bc		1,2,.L760	# eq
.Llo16:
	se_cmpi		r6,1
	bc		1,2,.L761	# eq
	se_cmpi		r6,2
	bc		1,2,.L762	# eq
	b		.L764
.L760:
#         {
#             case CANTRCV_TRCVMODE_NORMAL:
# #if (STD_ON == CANTRCV_SBCSI_SUPPORT)
#                 /* Setting to Normal mode */
#                 SBCSI_ConfigureCanTrcv(SBCSI_CMC_ACTIVE_NRM_MODE, SBCSI_CSC_NO_SHUTDOWN);
# #else
#                 /* Setting to Normal mode */
#                 RegData_u8 = RegData_u8 | CANTRCV_31_UJA1132_MODE_NORMAL_COMMAND;
	.d2line		557
	.diab.bseti		r5,31		# RegData_u8=r5
	mr		r0,r5		# RegData_u8=r0 RegData_u8=r5
	b		.L761
.L762:
# #endif /* #if (STD_ON == CANTRCV_SBCSI_SUPPORT) */
#     
#                 break;
#     
#             case CANTRCV_TRCVMODE_STANDBY:
# #if (STD_ON == CANTRCV_SBCSI_SUPPORT)
#                 /* Setting to Standby mode */
#                 SBCSI_ConfigureCanTrcv(SBCSI_CMC_LISTEN_ONLY, SBCSI_CSC_NO_SHUTDOWN);
# #else
#                 /* Setting to Standby mode */
#                 RegData_u8 = RegData_u8 | CANTRCV_31_UJA1132_MODE_STANDBY_COMMAND;
	.d2line		568
	e_ori		r5,r5,3		# RegData_u8=r5 RegData_u8=r5
	mr		r0,r5		# RegData_u8=r0 RegData_u8=r5
	b		.L761
.L764:
# #endif /* #if (STD_ON == CANTRCV_SBCSI_SUPPORT) */    
#                 break;
#     
#             case CANTRCV_TRCVMODE_SLEEP:
# #if (STD_ON == CANTRCV_SBCSI_SUPPORT)
#                 /* Setting to Sleep mode */
#                 SBCSI_ConfigureCanTrcv(SBCSI_CMC_OFF, SBCSI_CSC_NO_SHUTDOWN);
# #else
#                 /* Setting to Sleep mode */
#                 RegData_u8 = RegData_u8 | CANTRCV_31_UJA1132_MODE_SLEEP_COMMAND;
# #endif /* #if (STD_ON == CANTRCV_SBCSI_SUPPORT) */
#                 break;
#     
#             /* PRQA S 2018 3 */ /* The "default" branch will be reached if value outside of enum is passed to the function */
#             default :
#                 ReturnValue = E_NOT_OK;
	.d2line		584
.Llo12:
	diab.li		r28,1		# ReturnValue=r28
.L761:
#                 break;
#     
#         }
# #if (STD_OFF == CANTRCV_SBCSI_SUPPORT)
#         /* Convert the control commands (to be sent to the CanTrcv) into the appropriate SPI format */
#         /* PRQA S 492 1 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type. */
#         CanTrcv_31_UJA1132_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_UJA1132_CAN_CONTROL_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
	.d2line		591
.Llo13:
	lbz		r3,8(r1)		# LtConfig_p=r3
.Llo27:
	rlwinm		r3,r3,1,23,30		# LtConfig_p=r3 LtConfig_p=r3
	se_add		r3,r31		# LtConfig_p=r3 LtConfig_p=r3 DataToBeSent=r31
.Llo20:
	rlwinm		r5,r5,0,24,31		# RegData_u8=r5 RegData_u8=r5
.Llo21:
	diab.addi		r6,r1,8
	diab.li		r4,32
	diab.li		r7,0
	bl		CanTrcv_31_UJA1132_PrepareSpiData
#     
#         (*DataLength_p) = DataIndex_u8;
	.d2line		593
	lbz		r0,8(r1)		# CanNetwork_u8=r0
.Llo5:
	stb		r0,0(r30)		# DataLength_p=r30 CanNetwork_u8=r0
.L759:
#     }
# #endif /* #if (STD_ON == CANTRCV_SBCSI_SUPPORT) */
#     return (ReturnValue);
	.d2line		596
.Llo6:
	rlwinm		r3,r28,0,24,31		# LtConfig_p=r3 ReturnValue=r28
# 
#  }
	.d2line		598
	.d2epilogue_begin
	lmw		r26,40(r1)		# offset r1+40  0x28
	.d2_cfa_restore_list	2,10
.Llo14:
	lwz		r0,68(r1)		# CanNetwork_u8=r0
	mtspr		lr,r0		# CanNetwork_u8=lr
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L785:
	.type		CanTrcv_31_UJA1132_Configure_HW,@function
	.size		CanTrcv_31_UJA1132_Configure_HW,.-CanTrcv_31_UJA1132_Configure_HW
# Number of nodes = 187

# Allocations for CanTrcv_31_UJA1132_Configure_HW
#	?a4		CanNetwork_u8
#	?a5		DataToBeSent
#	?a6		DataLength_p
#	?a7		$$239
#	?a8		$$238
#	?a9		$$237
#	?a10		ReturnValue
#	?a11		InitOpMode
#	?a12		RegData_u8
#	SP,8		DataIndex_u8
#	SP,12		DataToBeReceived
#	SP,16		TransmissionStatusCanControl
#	?a13		LtConfig_p
# static FUNC (void , CANTRCV_31_UJA1132_CODE)CanTrcv_31_UJA1132_Initialize_HW 
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         265,45
#$$ld
.L825:

#$$bf	CanTrcv_31_UJA1132_Initialize_HW,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTrcv_31_UJA1132_Initialize_HW:
.Llo28:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CanNetwork_u8=r31 CanNetwork_u8=r3
	.d2prologue_end
#                     ( CONST(uint8, AUTOMATIC) CanNetwork_u8, 
#                       CONSTP2VAR (boolean, CANTRCV_31_UJA1132_VAR_FAST, CANTRCV_31_UJA1132_APPL_DATA) WakeUpOcurredFlag)
# {
#    
#     /* Pointer to the Status array for each Channel. */
#     P2VAR (CanTrcv_31_UJA1132_StatusType, CANTRCV_31_UJA1132_VAR_FAST, CANTRCV_31_UJA1132_APPL_DATA )Status_p ;
#     
#     /* Pointer to index the constant LinkTime Congiguration Array. */
#     P2CONST (CanTrcv_31_UJA1132_LtCfgType, CANTRCV_31_UJA1132_VAR_FAST, CANTRCV_31_UJA1132_APPL_CONST)LtConfig_p ;
#     
# #if(STD_ON == CANTRCV_31_UJA1132_GENERAL_WAKE_UP_SUPPORT)
# 
#  
#     /* Variable holds the Can wake-up status*/
#     VAR (Dio_LevelType, AUTOMATIC) CanWakeUpFlag;
#     
# #endif
# 
# #if (STD_OFF == CANTRCV_SBCSI_SUPPORT)
#     /* Variable holds the data to be sent. The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeSent[CANTRCV_31_UJA1132_INIT_DATA_TX_LEN];
#     
#     /* Variable to hold the number or SPI data elements to be sent/received*/
#     VAR (uint8, AUTOMATIC)DataIndex_u8;
# 
#     /* Variable to hold the number of actual bytes transmitted */
#     VAR (uint8, AUTOMATIC)TransmitIndex_u8;
#     
#     /* Variable to hold the CanTrcv-Spi communication status*/
#     VAR(CanTrcv_SpiTransStatus,AUTOMATIC)  TransmissionStatus;
#     
# #endif /* #if (STD_OFF == CANTRCV_SBCSI_SUPPORT) */
# 
#     VAR (uint8, AUTOMATIC)ReturnValue;
#     
#     /* Get the pointer to the structure of the Network. */
#     LtConfig_p = &(CANTRCV_31_UJA1132_LT_CONFIG_P[CanNetwork_u8]);
	.d2line		302
.Llo29:
	rlwinm		r0,r31,0,24,31		# CanNetwork_u8=r31
.Llo30:
	lis		r3,CanTrcv_31_UJA1132_LtConfig_p@ha		# CanNetwork_u8=r3
	lwz		r29,CanTrcv_31_UJA1132_LtConfig_p@l(r3)		# CanNetwork_u8=r3
	rlwinm		r3,r0,5,0,26		# CanNetwork_u8=r3
	se_slwi		r0,3
	subf		r0,r0,r3		# CanNetwork_u8=r3
	se_add		r0,r29
.Llo35:
	mr		r29,r0		# LtConfig_p=r29 LtConfig_p=r0
# 
#     Status_p = &(CANTRCV_31_UJA1132_STATUS_P[CanNetwork_u8]);
	.d2line		304
	lis		r3,CanTrcv_31_UJA1132_Status_p@ha		# CanNetwork_u8=r3
	lwz		r30,CanTrcv_31_UJA1132_Status_p@l(r3)		# CanNetwork_u8=r30 CanNetwork_u8=r3
	rlwinm		r3,r31,3,21,28		# CanNetwork_u8=r3 CanNetwork_u8=r31
	se_add		r3,r30		# CanNetwork_u8=r3 CanNetwork_u8=r3 CanNetwork_u8=r30
.Llo32:
	mr		r30,r3		# Status_p=r30 Status_p=r3
#     
#     /**************** Determining the wake-up reason and reporting to the Ecum ****************************/
#     
# 
# #if(STD_ON == CANTRCV_31_UJA1132_GENERAL_WAKE_UP_SUPPORT)
#     
#     /* Reading the Can Wake-up status bit */
#     CanWakeUpFlag = Dio_ReadChannel(LtConfig_p->CanTrcvRxDioChannelId);
# 
#     if ( CanWakeUpFlag == STD_LOW )
#     {
#     
#         /* CAN Wakeup event occured */
#         (*WakeUpOcurredFlag) = TRUE;
#         
#     }
# 
# #endif
# 
#     /******************************************************************************************************/
# #if (STD_ON == CANTRCV_SBCSI_SUPPORT)
#     ReturnValue = CanTrcv_31_UJA1132_Configure_HW( CanNetwork_u8, 
#                                         NULL_PTR,
#                                         NULL_PTR);
# #else
#     DataIndex_u8 = 0;
	.d2line		330
	diab.li		r0,0
.Llo36:
	stb		r0,8(r1)
# 
#     /* Configure the HW */
#     ReturnValue = CanTrcv_31_UJA1132_Configure_HW( CanNetwork_u8, 
	.d2line		333
	diab.addi		r4,r1,12		# TransmissionStatus=r4
	diab.addi		r5,r1,8
	mr		r3,r31		# CanNetwork_u8=r3 CanNetwork_u8=r31
.Llo33:
	bl		CanTrcv_31_UJA1132_Configure_HW
.Llo39:
	mr		r27,r3		# ReturnValue=r27 ReturnValue=r3
#                                         DataToBeSent,
#                                         &DataIndex_u8);
#                                         
#     TransmissionStatus = CANTRCV_TX_SUCCEEDED;
	.d2line		337
	diab.li		r4,0		# TransmissionStatus=r4
#     
#     /* Send control commands to the CanTrcv via SPI, byte by byte*/
#      for(TransmitIndex_u8=0; TransmitIndex_u8<DataIndex_u8; TransmitIndex_u8++) {
	.d2line		340
.Llo38:
	diab.li		r28,0
.L744:
.Llo34:
	rlwinm		r0,r28,0,24,31		# TransmitIndex_u8=r28
.Llo40:
	lbz		r3,8(r1)		# CanNetwork_u8=r3
	se_cmp		r0,r3		# CanNetwork_u8=r3
	bc		0,0,.L748	# ge
# 
#          TransmissionStatus = CanTrcv_31_UJA1132_SpiTransmit (LtConfig_p, &DataToBeSent[TransmitIndex_u8], NULL_PTR, 1 );
	.d2line		342
	diab.addi		r4,r1,12		# TransmissionStatus=r4
	rlwinm		r0,r28,1,23,30		# TransmitIndex_u8=r28
	se_add		r4,r0		# TransmissionStatus=r4 TransmissionStatus=r4
	mr		r3,r29		# LtConfig_p=r3 LtConfig_p=r29
	diab.li		r5,0
	diab.li		r6,1
	bl		CanTrcv_31_UJA1132_SpiTransmit
	.d2line		344
	mr.		r4,r3		# TransmissionStatus=?a9 TransmissionStatus=r3
# 
#          if(TransmissionStatus != CANTRCV_TX_SUCCEEDED)
	bc		0,2,.L748	# ne
#          {
# 
#              break;
# 
#          }
# 
#      }
	.d2line		351
	diab.addi		r0,r28,1		# TransmitIndex_u8=r28
	se_addi		r28,1		# TransmitIndex_u8=r28 TransmitIndex_u8=r28
	b		.L744
.L748:
# 
#     if ( TransmissionStatus != CANTRCV_TX_SUCCEEDED )
	.d2line		353
	se_cmpi		r4,0		# TransmissionStatus=r4
	bc		0,2,.L743	# ne
#     {
#     
# #if( STD_ON == CANTRCV_31_UJA1132_DEV_ERROR_DETECT )        
#         /* Report DET Error */
#         Det_ReportError( CANTRCV_31_UJA1132_MODULE_ID,
#                          CANTRCV_31_UJA1132_INSTANCE_ID,
#                          CANTRCV_31_UJA1132_INIT_SID,
#                          CANTRCV_31_UJA1132_E_NO_TRCV_CONTROL );
# #endif
#         
#     }
#     else
# #endif /* #if (STD_ON == CANTRCV_SBCSI_SUPPORT) */
#     {
#     
#         if (E_OK == ReturnValue)
	.d2line		369
.Llo37:
	rlwinm		r27,r27,0,24,31		# ReturnValue=r27 ReturnValue=r27
	se_cmpi		r27,0		# ReturnValue=r27
	bc		0,2,.L751	# ne
#         {
#     
#             SchM_Enter_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
	.d2line		372
.Llo41:
	bl		SchM_Enter_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1
# 
#             /* If Successful, update current state with the opmode */
#             Status_p->CanTrcvCurrentState = LtConfig_p->CanTrcvInitState;
	.d2line		375
	lwz		r0,0(r29)		# LtConfig_p=r29
	stw		r0,0(r30)		# Status_p=r30
# 
#             SchM_Exit_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
	.d2line		377
	bl		SchM_Exit_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1
#               
#             /* Initialization has been Successful. */
#             Status_p->CanTrcvInitialised_bt = TRUE;
	.d2line		380
	diab.li		r0,1
	stb		r0,4(r30)		# Status_p=r30
#             
#             /*Enable/Disable the wakeup events through ICU */
#             CanTrcv_31_UJA1132_IcuSetNotification(CanNetwork_u8, LtConfig_p->CanTrcvInitState);
	.d2line		383
	rlwinm		r3,r31,0,24,31		# CanNetwork_u8=r3 CanNetwork_u8=r31
	lwz		r4,0(r29)		# TransmissionStatus=r4 LtConfig_p=r29
	bl		CanTrcv_31_UJA1132_IcuSetNotification
	b		.L743
.L751:
#             
#         } 
#         else
#         {
#               
#             /* Initialization has been Successful. */
#             Status_p->CanTrcvInitialised_bt = FALSE;
	.d2line		390
	diab.li		r0,0
	stb		r0,4(r30)		# Status_p=r30
.L743:
# 
#         }
#         
#     }
#         
# }/* End of CanTrcv_31_UJA1132_Initialize_HW() */
	.d2line		396
	.d2epilogue_begin
.Llo31:
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L826:
	.type		CanTrcv_31_UJA1132_Initialize_HW,@function
	.size		CanTrcv_31_UJA1132_Initialize_HW,.-CanTrcv_31_UJA1132_Initialize_HW
# Number of nodes = 104

# Allocations for CanTrcv_31_UJA1132_Initialize_HW
#	?a4		CanNetwork_u8
#	not allocated	WakeUpOcurredFlag
#	?a5		$$240
#	?a6		Status_p
#	?a7		LtConfig_p
#	SP,12		DataToBeSent
#	SP,8		DataIndex_u8
#	?a8		TransmitIndex_u8
#	?a9		TransmissionStatus
#	?a10		ReturnValue
# FUNC (void, CANTRCV_31_UJA1132_CODE)CANTRCV_31_UJA1132_INIT ( P2CONST (CanTrcv_31_UJA1132_ConfigType, CANTRCV_31_UJA1132_VAR_FAST, CANTRCV_31_UJA1132_APPL_CONST) ConfigPtr )
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         99,37
#$$ld
.L851:

#$$bf	CanTrcv_31_UJA1132_Init,interprocedural,rasave,nostackparams
	.globl		CanTrcv_31_UJA1132_Init
	.d2_cfa_start __cie
CanTrcv_31_UJA1132_Init:
.Llo42:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# ConfigPtr=r0
	.d2_cfa_offset    108,-1
	mr.		r0,r3		# ConfigPtr=?a4 ConfigPtr=r3
	.d2prologue_end
# {
# 
#     /* Index used CAN Channel number. */
#     VAR (uint16, AUTOMATIC)CanNetwork_u16;
#     
# #if(STD_ON == CANTRCV_31_UJA1132_GENERAL_WAKE_UP_SUPPORT)
# 
#     VAR (CanTrcv_TrcvModeType, AUTOMATIC) TmpCanTrcvCurrentState;
#     
#     VAR (CanTrcv_TrcvWakeupModeType, AUTOMATIC) TmpCanTrcvWakeupMode ;
#     
#     VAR (EcuM_WakeupSourceType, AUTOMATIC) TmpEcuMWakupSrcType;
# 
#     VAR (boolean, AUTOMATIC) WakeUpOcurredFlag;
#   
#     /* Pointer to the Status array for each Channel. */
#     P2VAR (CanTrcv_31_UJA1132_StatusType, CANTRCV_31_UJA1132_VAR_FAST, CANTRCV_31_UJA1132_APPL_DATA )Status_p ;
# 
# #endif
#    
#     /* Pointer to index the link-time Configuration Array. */
#     P2CONST (CanTrcv_31_UJA1132_LtCfgType, CANTRCV_31_UJA1132_VAR_FAST, CANTRCV_31_UJA1132_APPL_CONST)LtConfig_p ;
# 
#     if ( NULL_PTR != ConfigPtr )
	.d2line		123
	bc		0,2,.L732	# ne
#     {
# #if( STD_ON == CANTRCV_31_UJA1132_DEV_ERROR_DETECT )
#         /* Report DET Error */
#         Det_ReportError( CANTRCV_31_UJA1132_MODULE_ID,
#                          CANTRCV_31_UJA1132_INSTANCE_ID,
#                          CANTRCV_31_UJA1132_INIT_SID,
#                          CANTRCV_31_UJA1132_E_PARAM_POINTER );
# #endif/* #if( CANTRCV_31_UJA1132_DEV_ERROR_DETECT == STD_ON) */
#     }
#     else    
#     {
#         
#         /* Set the network value to Zero. */
#         CanNetwork_u16 = CANTRCV_31_UJA1132_ZERO;           
	.d2line		137
	diab.li		r31,0		# CanNetwork_u16=r31
#         
#         /* Proceed with initialisation only if the Hash Keys are matched. */
#         if( CANTRCV_31_UJA1132_PC_HASH_VALUE == CanTrcv_31_UJA1132_LTtoPCHashValue )
	.d2line		140
.Llo48:
	lis		r3,CanTrcv_31_UJA1132_LTtoPCHashValue@ha
.Llo43:
	lwz		r0,CanTrcv_31_UJA1132_LTtoPCHashValue@l(r3)		# ConfigPtr=r0
.Llo44:
	e_lis		r3,54386
	e_or2i		r3,28977
	se_cmpl		r0,r3		# ConfigPtr=r0
	bc		0,2,.L732	# ne
.L736:
#         {
#             /* Initialisation of all configured CAN Transceiver Driver Channels. */
#             do
#             {     
#                 /* Get the pointer to the structure of the Network. */
#                 LtConfig_p = &(CANTRCV_31_UJA1132_LT_CONFIG_P[(uint8)CanNetwork_u16]);
	.d2line		146
.Llo45:
	mr		r0,r31		# CanNetwork_u16=r0 CanNetwork_u16=r31
	rlwinm		r0,r0,0,24,31		# CanNetwork_u16=r0 CanNetwork_u16=r0
	mr		r0,r0		# CanNetwork_u16=r0
	lis		r3,CanTrcv_31_UJA1132_LtConfig_p@ha		# CanNetwork_u16=r3
	lwz		r3,CanTrcv_31_UJA1132_LtConfig_p@l(r3)		# CanNetwork_u16=r3 CanNetwork_u16=r3
	rlwinm		r4,r0,5,0,26		# CanNetwork_u16=r0
	se_slwi		r0,3		# CanNetwork_u16=r0 CanNetwork_u16=r0
	subf		r0,r0,r4		# CanNetwork_u16=r0 CanNetwork_u16=r0
	se_add		r0,r3		# CanNetwork_u16=r0 CanNetwork_u16=r0 CanNetwork_u16=r3
.Llo49:
	mr		r3,r0		# LtConfig_p=r3 LtConfig_p=r0
#                     
#                 
# 
#     #if(STD_ON == CANTRCV_31_UJA1132_GENERAL_WAKE_UP_SUPPORT)
# 
#                     Status_p = &(CANTRCV_31_UJA1132_STATUS_P[(uint8)CanNetwork_u16]);
#                     
#                     WakeUpOcurredFlag = FALSE;
# 
#     #endif    
# 
#                     /* Check for CAN Transceiver Channel is used. */
#                     if( TRUE == LtConfig_p->CanTrcvChannelUsed)
	.d2line		159
	lbz		r0,7(r3)		# CanNetwork_u16=r0 LtConfig_p=r3
.Llo50:
	se_cmpi		r0,1		# CanNetwork_u16=r0
	bc		0,2,.L738	# ne
#                     {
#          
# #if(STD_ON == CANTRCV_31_UJA1132_GENERAL_WAKE_UP_SUPPORT)
# 
#                         CanTrcv_31_UJA1132_Initialize_HW ( (uint8)CanNetwork_u16, &WakeUpOcurredFlag );
#               
# 
#                         /* Protect the shared resourse - CanTrcvCurrentState */
#                         SchM_Enter_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
#              
#                         TmpCanTrcvCurrentState = Status_p->CanTrcvCurrentState;
#                     
#                         SchM_Exit_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
# 
# 
#                         if (  ( WakeUpOcurredFlag == TRUE  ) &&
#                              ( (CANTRCV_TRCVMODE_STANDBY == TmpCanTrcvCurrentState) 
#                              || (CANTRCV_TRCVMODE_SLEEP == TmpCanTrcvCurrentState))
#                             )
#                         {
# 
#                             /* Protect the shared resource - CanTrcvWakeupMode */
#                             SchM_Enter_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_0();
#                             TmpCanTrcvWakeupMode = Status_p->CanTrcvWakeupMode;
#                             SchM_Exit_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_0();
#                             
#                             if (CANTRCV_WUMODE_ENABLE == TmpCanTrcvWakeupMode)
#                             {
#                                 Status_p->CanTrcvStoredWakeup_bt = FALSE;
#                                 
#                                 /* Initialization */
#                                 TmpEcuMWakupSrcType = 0;
#             
#                                 /* Get the EcuM wake-up bus source */
#                                 CANTRCV_31_UJA1132_SET_BITN( TmpEcuMWakupSrcType, LtConfig_p->CanTrcvWakeupSourceId );
#                             
#                                 /* Report Wake-up reason to EcuM */
#                                 EcuM_SetWakeupEvent (TmpEcuMWakupSrcType);
#                             }
#                             else
#                             {
#                                 Status_p->CanTrcvStoredWakeup_bt = TRUE;
#                             }
# 
#                         }
#                         
# #else 
# 
#                         CanTrcv_31_UJA1132_Initialize_HW ( (uint8)CanNetwork_u16, NULL_PTR );
	.d2line		208
	mr		r3,r31		# CanNetwork_u16=r3 CanNetwork_u16=r31
	diab.li		r4,0
	bl		CanTrcv_31_UJA1132_Initialize_HW
.L738:
# 
# #endif 
#                 
#                     }
#                     else
#                     {
# 
#                         /* Do Nothing. */
# 
#                     }                      
#                     
#                 
#             
#                 CanNetwork_u16++;
	.d2line		222
	diab.addi		r3,r31,1		# CanNetwork_u16=r3 CanNetwork_u16=r31
	se_addi		r31,1		# CanNetwork_u16=r31 CanNetwork_u16=r31
# 
#             }while (CANTRCV_31_UJA1132_MAXCHANNELS_U16 > CanNetwork_u16) ;
	.d2line		224
	lis		r3,CanTrcv_31_UJA1132_MaxChannels_u16@ha		# CanNetwork_u16=r3
	lhz		r0,CanTrcv_31_UJA1132_MaxChannels_u16@l(r3)		# CanNetwork_u16=r0 CanNetwork_u16=r3
	rlwinm		r3,r31,0,16,31		# CanNetwork_u16=r3 CanNetwork_u16=r31
	se_cmp		r0,r3		# CanNetwork_u16=r0 CanNetwork_u16=r3
	bc		1,1,.L736	# gt
.L732:
#         
#         }
#         else
#         {   
# 
#             /* Do Nothing. */
# 
#         }
# 
#     } /* End if ( NULL_PTR == ConfigPtr ) */
#     
# }/* End of CanTrcv_31_UJA1132_Init () */
	.d2line		236
	.d2epilogue_begin
.Llo46:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# ConfigPtr=r0
	mtspr		lr,r0		# ConfigPtr=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo47:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L852:
	.type		CanTrcv_31_UJA1132_Init,@function
	.size		CanTrcv_31_UJA1132_Init,.-CanTrcv_31_UJA1132_Init
# Number of nodes = 41

# Allocations for CanTrcv_31_UJA1132_Init
#	?a4		ConfigPtr
#	?a5		$$241
#	?a6		CanNetwork_u16
#	?a7		LtConfig_p

# Allocations for module
	.section	.text_vle
	.0byte		.L863
	.section	.text_vle
#$$ld
.L5:
.L895:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L893:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\inc\\internal\\CanTrcv_31_UJA1132_Private.h"
.L873:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\..\\..\\inc\\CanTrcv_Types.h"
.L864:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\inc\\CanTrcv_31_UJA1132.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L778:
.L786:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_Init.c"
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
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	16
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_Init.c"
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
.L775:
	.4byte		.L776-.L774
.L774:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L780-.L775
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_Init.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L777
	.4byte		.L778
	.4byte		.L781
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L790:
	.sleb128	2
	.4byte		.L783-.L775
	.byte		"CanTrcv_31_UJA1132_Configure_HW"
	.byte		0
	.4byte		.L786
	.uleb128	431
	.uleb128	55
	.4byte		.L787
	.byte		0x1
	.4byte		.L784
	.4byte		.L785
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L786
	.uleb128	431
	.uleb128	55
	.byte		"CanNetwork_u8"
	.byte		0
	.4byte		.L791
	.4byte		.L792
	.sleb128	3
	.4byte		.L786
	.uleb128	431
	.uleb128	55
	.byte		"DataToBeSent"
	.byte		0
	.4byte		.L793
	.4byte		.L796
	.sleb128	3
	.4byte		.L786
	.uleb128	431
	.uleb128	55
	.byte		"DataLength_p"
	.byte		0
	.4byte		.L797
	.4byte		.L799
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L800:
	.sleb128	4
	.4byte		.L786
	.uleb128	439
	.uleb128	36
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L787
	.4byte		.L801
.L802:
	.sleb128	4
	.4byte		.L786
	.uleb128	442
	.uleb128	42
	.byte		"InitOpMode"
	.byte		0
	.4byte		.L803
	.4byte		.L805
.L806:
	.sleb128	4
	.4byte		.L786
	.uleb128	446
	.uleb128	27
	.byte		"RegData_u8"
	.byte		0
	.4byte		.L788
	.4byte		.L807
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L808:
	.sleb128	5
	.4byte		.L786
	.uleb128	449
	.uleb128	27
	.byte		"DataIndex_u8"
	.byte		0
	.4byte		.L788
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L809:
	.sleb128	5
	.4byte		.L786
	.uleb128	452
	.uleb128	29
	.byte		"DataToBeReceived"
	.byte		0
	.4byte		.L810
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L812:
	.sleb128	5
	.4byte		.L786
	.uleb128	455
	.uleb128	44
	.byte		"TransmissionStatusCanControl"
	.byte		0
	.4byte		.L813
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	16
.L817:
	.sleb128	4
	.4byte		.L786
	.uleb128	459
	.uleb128	103
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L818
	.4byte		.L822
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L783:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L827:
	.sleb128	6
	.4byte		.L824-.L775
	.byte		"CanTrcv_31_UJA1132_Initialize_HW"
	.byte		0
	.4byte		.L786
	.uleb128	265
	.uleb128	45
	.byte		0x1
	.4byte		.L825
	.4byte		.L826
	.sleb128	3
	.4byte		.L786
	.uleb128	265
	.uleb128	45
	.byte		"CanNetwork_u8"
	.byte		0
	.4byte		.L791
	.4byte		.L828
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L786
	.uleb128	265
	.uleb128	45
	.byte		"WakeUpOcurredFlag"
	.byte		0
	.4byte		.L829
	.sleb128	2
	.byte		0x90
	.uleb128	4
.L832:
	.sleb128	4
	.4byte		.L786
	.uleb128	271
	.uleb128	102
	.byte		"Status_p"
	.byte		0
	.4byte		.L833
	.4byte		.L836
.L837:
	.sleb128	4
	.4byte		.L786
	.uleb128	274
	.uleb128	103
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L818
	.4byte		.L838
.L839:
	.sleb128	5
	.4byte		.L786
	.uleb128	286
	.uleb128	28
	.byte		"DataToBeSent"
	.byte		0
	.4byte		.L840
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L842:
	.sleb128	5
	.4byte		.L786
	.uleb128	289
	.uleb128	27
	.byte		"DataIndex_u8"
	.byte		0
	.4byte		.L788
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L843:
	.sleb128	4
	.4byte		.L786
	.uleb128	292
	.uleb128	27
	.byte		"TransmitIndex_u8"
	.byte		0
	.4byte		.L788
	.4byte		.L844
.L845:
	.sleb128	4
	.4byte		.L786
	.uleb128	295
	.uleb128	44
	.byte		"TransmissionStatus"
	.byte		0
	.4byte		.L815
	.4byte		.L846
.L847:
	.sleb128	4
	.4byte		.L786
	.uleb128	299
	.uleb128	27
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L788
	.4byte		.L848
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L824:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L853:
	.sleb128	8
	.4byte		.L850-.L775
	.byte		"CanTrcv_31_UJA1132_Init"
	.byte		0
	.4byte		.L786
	.uleb128	99
	.uleb128	37
	.byte		0x1
	.byte		0x1
	.4byte		.L851
	.4byte		.L852
	.sleb128	3
	.4byte		.L786
	.uleb128	99
	.uleb128	37
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L854
	.4byte		.L858
.L859:
	.sleb128	4
	.4byte		.L786
	.uleb128	103
	.uleb128	28
	.byte		"CanNetwork_u16"
	.byte		0
	.4byte		.L794
	.4byte		.L860
.L861:
	.sleb128	4
	.4byte		.L786
	.uleb128	121
	.uleb128	103
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L818
	.4byte		.L862
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L850:
	.section	.debug_info,,n
.L863:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L864
	.uleb128	627
	.uleb128	48
	.byte		"CanTrcv_31_UJA1132_LTtoPCHashValue"
	.byte		0
	.4byte		.L865
	.section	.debug_info,,n
.L868:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L864
	.uleb128	641
	.uleb128	88
	.byte		"CanTrcv_31_UJA1132_Status_p"
	.byte		0
	.4byte		.L833
	.0byte		.L868
.L869:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L864
	.uleb128	654
	.uleb128	88
	.byte		"CanTrcv_31_UJA1132_LtConfig_p"
	.byte		0
	.4byte		.L870
.L871:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L864
	.uleb128	661
	.uleb128	48
	.byte		"CanTrcv_31_UJA1132_MaxChannels_u16"
	.byte		0
	.4byte		.L872
	.section	.debug_info,,n
.L835:
	.sleb128	10
	.4byte		.L873
	.uleb128	61
	.uleb128	13
	.4byte		.L874-.L2
	.uleb128	8
	.section	.debug_info,,n
.L630:
	.sleb128	11
	.byte		"CanTrcvCurrentState"
	.byte		0
	.4byte		.L803
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L631:
	.sleb128	11
	.byte		"CanTrcvInitialised_bt"
	.byte		0
	.4byte		.L831
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L632:
	.sleb128	11
	.byte		"CanTrcvSpiRetriesCounter"
	.byte		0
	.4byte		.L788
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L633:
	.sleb128	11
	.byte		"CanTrcvSpiTimeCounter"
	.byte		0
	.4byte		.L788
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L874:
.L821:
	.sleb128	10
	.4byte		.L873
	.uleb128	61
	.uleb128	13
	.4byte		.L875-.L2
	.uleb128	24
.L615:
	.sleb128	11
	.byte		"CanTrcvInitState"
	.byte		0
	.4byte		.L876
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L616:
	.sleb128	11
	.byte		"CanTrcvMaxBaudrate"
	.byte		0
	.4byte		.L872
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L617:
	.sleb128	11
	.byte		"CanTrcvControlsPowerSupply"
	.byte		0
	.4byte		.L877
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L618:
	.sleb128	11
	.byte		"CanTrcvChannelUsed"
	.byte		0
	.4byte		.L877
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L619:
	.sleb128	11
	.byte		"CanTrcvWakeupByBusUsed"
	.byte		0
	.4byte		.L877
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L620:
	.sleb128	11
	.byte		"CanTrcvChannelId"
	.byte		0
	.4byte		.L791
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L621:
	.sleb128	11
	.byte		"CanTrcvWakeupSourceId"
	.byte		0
	.4byte		.L791
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L622:
	.sleb128	11
	.byte		"CanTrcvIcuChannelId"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L623:
	.sleb128	11
	.byte		"CanTrcvSpiAccessSynchronous"
	.byte		0
	.4byte		.L877
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L624:
	.sleb128	11
	.byte		"CanTrcvSpiCommRetries"
	.byte		0
	.4byte		.L791
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L625:
	.sleb128	11
	.byte		"CanTrcvSpiCommTimeout"
	.byte		0
	.4byte		.L791
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L626:
	.sleb128	11
	.byte		"CanTrcvSpiChannelId"
	.byte		0
	.4byte		.L880
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L627:
	.sleb128	11
	.byte		"CanTrcvSpiSequenceId"
	.byte		0
	.4byte		.L882
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L628:
	.sleb128	11
	.byte		"CanTrcvRxDioChannelId"
	.byte		0
	.4byte		.L884
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L629:
	.sleb128	11
	.byte		"CanIfTrcvID"
	.byte		0
	.4byte		.L791
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
	.sleb128	0
.L875:
.L857:
	.sleb128	10
	.4byte		.L873
	.uleb128	61
	.uleb128	13
	.4byte		.L886-.L2
	.uleb128	4
.L614:
	.sleb128	11
	.byte		"PbConfig_pc"
	.byte		0
	.4byte		.L887
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L886:
.L890:
	.sleb128	10
	.4byte		.L873
	.uleb128	61
	.uleb128	13
	.4byte		.L891-.L2
	.uleb128	8
.L612:
	.sleb128	11
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L892
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L613:
	.sleb128	11
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L892
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L891:
	.section	.debug_info,,n
.L816:
	.sleb128	12
	.4byte		.L893
	.uleb128	175
	.uleb128	14
	.4byte		.L894-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"CANTRCV_TX_SUCCEEDED"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CANTRCV_LAST_TX_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"CANTRCV_EBSETUP_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"CANTRCV_TX_FAILED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L894:
.L804:
	.sleb128	12
	.4byte		.L895
	.uleb128	23
	.uleb128	15
	.4byte		.L896-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CANTRCV_TRCVMODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CANTRCV_TRCVMODE_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"CANTRCV_TRCVMODE_STANDBY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L896:
	.section	.debug_info,,n
.L789:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L788:
	.sleb128	15
	.byte		"uint8"
	.byte		0
	.4byte		.L789
.L787:
	.sleb128	15
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L788
	.section	.debug_info,,n
.L791:
	.sleb128	16
	.4byte		.L788
.L795:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L794:
	.sleb128	15
	.byte		"uint16"
	.byte		0
	.4byte		.L795
	.section	.debug_info,,n
.L793:
	.sleb128	17
	.4byte		.L794
.L798:
	.sleb128	17
	.4byte		.L788
.L797:
	.sleb128	16
	.4byte		.L798
.L803:
	.sleb128	15
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L804
	.section	.debug_info,,n
.L810:
	.sleb128	18
	.4byte		.L811
	.4byte		.L794
	.section	.debug_info,,n
	.sleb128	19
	.uleb128	1
	.sleb128	0
.L811:
.L815:
	.sleb128	15
	.byte		"CanTrcv_SpiTransStatus"
	.byte		0
	.4byte		.L816
.L813:
	.sleb128	18
	.4byte		.L814
	.4byte		.L815
	.sleb128	19
	.uleb128	1
	.sleb128	0
.L814:
.L820:
	.sleb128	15
	.byte		"CanTrcv_31_UJA1132_LtCfgType"
	.byte		0
	.4byte		.L821
.L819:
	.sleb128	16
	.4byte		.L820
.L818:
	.sleb128	17
	.4byte		.L819
.L831:
	.sleb128	15
	.byte		"boolean"
	.byte		0
	.4byte		.L789
.L830:
	.sleb128	17
	.4byte		.L831
.L829:
	.sleb128	16
	.4byte		.L830
.L834:
	.sleb128	15
	.byte		"CanTrcv_31_UJA1132_StatusType"
	.byte		0
	.4byte		.L835
.L833:
	.sleb128	17
	.4byte		.L834
.L840:
	.sleb128	18
	.4byte		.L841
	.4byte		.L794
	.sleb128	19
	.uleb128	1
	.sleb128	0
.L841:
.L856:
	.sleb128	15
	.byte		"CanTrcv_31_UJA1132_ConfigType"
	.byte		0
	.4byte		.L857
.L855:
	.sleb128	16
	.4byte		.L856
.L854:
	.sleb128	17
	.4byte		.L855
.L867:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L866:
	.sleb128	15
	.byte		"uint32"
	.byte		0
	.4byte		.L867
.L865:
	.sleb128	16
	.4byte		.L866
.L870:
	.sleb128	16
	.4byte		.L818
.L872:
	.sleb128	16
	.4byte		.L794
.L876:
	.sleb128	16
	.4byte		.L803
.L877:
	.sleb128	16
	.4byte		.L831
.L879:
	.sleb128	15
	.byte		"Icu_ChannelType"
	.byte		0
	.4byte		.L794
.L878:
	.sleb128	16
	.4byte		.L879
.L881:
	.sleb128	15
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L788
.L880:
	.sleb128	16
	.4byte		.L881
.L883:
	.sleb128	15
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L788
.L882:
	.sleb128	16
	.4byte		.L883
.L885:
	.sleb128	15
	.byte		"Dio_ChannelType"
	.byte		0
	.4byte		.L794
.L884:
	.sleb128	16
	.4byte		.L885
.L889:
	.sleb128	15
	.byte		"CanTrcv_31_UJA1132_PbConfigType"
	.byte		0
	.4byte		.L890
.L888:
	.sleb128	16
	.4byte		.L889
.L887:
	.sleb128	17
	.4byte		.L888
.L892:
	.sleb128	17
	.4byte		.L865
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L780:
	.sleb128	0
.L776:

	.section	.debug_loc,,n
	.align	0
.L792:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locend
.L796:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo6),31
	.d2locend
.L799:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo9),5
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo6),30
	.d2locend
.L801:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),28
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),28
	.d2locend
.L805:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),27
	.d2locend
.L807:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),5
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo13),5
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),5
	.d2locend
.L822:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo22),26
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo10),26
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo20),3
	.d2locend
.L828:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),31
	.d2locend
.L836:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),3
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo31),30
	.d2locend
.L838:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),0
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo31),29
	.d2locend
.L844:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo37),28
	.d2locend
.L846:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo37),4
	.d2locend
.L848:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo34),3
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),27
	.d2locend
.L858:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),3
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),0
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locend
.L860:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo46),31
	.d2locend
.L862:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTrcv_31_UJA1132_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanTrcv_31_UJA1132_Initialize_HW"
	.wrcm.end
	.wrcm.nelem "CanTrcv_31_UJA1132_Initialize_HW"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTrcv_31_UJA1132_Configure_HW","CanTrcv_31_UJA1132_IcuSetNotification","CanTrcv_31_UJA1132_SpiTransmit","SchM_Enter_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1","SchM_Exit_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1"
	.wrcm.end
	.wrcm.nelem "CanTrcv_31_UJA1132_Configure_HW"
	.wrcm.nint32 "frameSize", 64
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTrcv_31_UJA1132_PrepareSpiData","CanTrcv_31_UJA1132_SpiTransmit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Init.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Init.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Init.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_Init.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTrcv\ssc\target\UJA1132\make\..\src\CanTrcv_31_UJA1132_Init.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
