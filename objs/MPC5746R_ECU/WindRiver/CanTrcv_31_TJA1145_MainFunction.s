#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTrcv_31_TJA1145_MainFunction.c"
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
# FUNC(void, CANTRCV_31_TJA1145_CODE)CANTRCV_31_TJA1145_MAINFUNCTION(void)
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L688:
	.section	.invalid_TEXT,,c
#$$ld
.L684:
	.0byte		.L682
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_MainFunction.c"
        .d2line         76,36
#$$ld
.L691:

#$$bf	CanTrcv_31_TJA1145_MainFunction,interprocedural,rasave,nostackparams
	.globl		CanTrcv_31_TJA1145_MainFunction
	.d2_cfa_start __cie
CanTrcv_31_TJA1145_MainFunction:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if(CANTRCV_31_TJA1145_WAKEUP_BY_POLLING == CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT)
# 
#     VAR (CanTrcv_TrcvModeType, AUTOMATIC) TmpCanTrcvCurrentState;
# 
#     /* Temporary variable.*/
#     VAR(uint8 , AUTOMATIC) DataIndex_u8;
# 
#     /* Variable holds the data to be sent. The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeSent[MainFunctionDataToBeSentLength];
# 
# 	/* Variable to hold the CanTrcv-Spi communication status*/
# 	VAR(CanTrcv_SpiTransStatus,AUTOMATIC)  TransmissionStatus = CANTRCV_TX_SUCCEEDED;
# 
#     /* Variable holds the Can wake-up status*/
#     VAR (uint8, AUTOMATIC) CanWakeUpFlag_u8;
#     
#     VAR (uint8, AUTOMATIC) WakePinREDetectedFlag_u8;
#     
#     VAR (uint8, AUTOMATIC) WakePinFEDetectedFlag_u8;
# 
#     VAR (uint8, AUTOMATIC)TransmitIndex_u8;
# #endif /* CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT */
#     
#     /* Temporary variable.*/
#     VAR(uint8 , AUTOMATIC) Count_u8;
#     
# 	/* Variable holds the status of the last transmssion of this sequence 
# 	   (pending, transmitted or failed)*/
# 	VAR(Spi_SeqResultType,AUTOMATIC)  SpiTxStatus;
#     
#     /* Pointer to the Configuration structure. */
#     P2CONST(CanTrcv_31_TJA1145_LtCfgType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_CONST)LtConfig_p;
#     
#     /* Pointer to the status of each Channel. */
#     P2VAR(CanTrcv_31_TJA1145_StatusType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_DATA) Status_p;
# 
# #if(CANTRCV_31_TJA1145_WAKEUP_BY_POLLING == CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT)
# 	/* Variable holds the WakeupSource */
# 	VAR (EcuM_WakeupSourceType, AUTOMATIC) TmpEcuMWakupSrcType;
# #endif /* CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT */
# 
#     for(Count_u8 = 0; Count_u8 < CANTRCV_31_TJA1145_MAXCHANNELS_U16; Count_u8++)     
	.d2line		119
	diab.li		r31,0		# Count_u8=r31
.L670:
	rlwinm		r4,r31,0,24,31		# Status_p=r4 Count_u8=r31
.Llo9:
	lis		r3,CanTrcv_31_TJA1145_MaxChannels_u16@ha		# LtConfig_p=r3
.Llo5:
	lhz		r0,CanTrcv_31_TJA1145_MaxChannels_u16@l(r3)		# LtConfig_p=r3
	se_cmp		r4,r0		# Status_p=r4
	bc		0,0,.L669	# ge
#     {
#     
#         LtConfig_p = &(CANTRCV_31_TJA1145_LT_CONFIG_P[Count_u8]);
	.d2line		122
.Llo6:
	lis		r3,CanTrcv_31_TJA1145_LtConfig_p@ha		# LtConfig_p=r3
.Llo7:
	lwz		r0,CanTrcv_31_TJA1145_LtConfig_p@l(r3)		# LtConfig_p=r3
	rlwinm		r3,r31,0,24,31		# LtConfig_p=r3 Count_u8=r31
	e_mulli		r3,r3,20		# LtConfig_p=r3 LtConfig_p=r3
	se_add		r0,r3		# LtConfig_p=r3
	mr		r3,r0		# LtConfig_p=r3 LtConfig_p=r0
#         
#         Status_p = &(CANTRCV_31_TJA1145_STATUS_P[Count_u8]);
	.d2line		124
	lis		r4,CanTrcv_31_TJA1145_Status_p@ha		# Status_p=r4
.Llo10:
	lwz		r0,CanTrcv_31_TJA1145_Status_p@l(r4)		# Status_p=r4
	rlwinm		r4,r31,5,19,26		# Status_p=r4 Count_u8=r31
	se_add		r0,r4		# Status_p=r4
	mr		r4,r0		# Status_p=r4 Status_p=r0
# 
#         if (TRUE == LtConfig_p->CanTrcvChannelUsed)
	.d2line		126
.Llo11:
	lbz		r0,7(r3)		# LtConfig_p=r3
	se_cmpi		r0,1
	bc		0,2,.L677	# ne
#         {
#             /* Check whether the module is initialized. */
#             if ( TRUE != Status_p->CanTrcvInitialised_bt)
	.d2line		129
.Llo12:
	lbz		r0,28(r4)		# Status_p=r4
	se_cmpi		r0,1
	bc		0,2,.L677	# ne
#             {
# /* Check whether DEV  error detection enabled. */
# #if(STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT)            
#                 /* Report to DET. */
#                 Det_ReportError (CANTRCV_31_TJA1145_MODULE_ID, CANTRCV_31_TJA1145_INSTANCE_ID,
#                                   CANTRCV_31_TJA1145_MAIN_FUNCTION_SID, CANTRCV_31_TJA1145_E_UNINIT);
# #endif /* end if(CANTRCV_31_TJA1145_DEV_ERROR_DETECT == STD_ON) */
#             }
#             else
#             {
# 
# #if(CANTRCV_31_TJA1145_WAKEUP_BY_POLLING == CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT)
#             
#                 /* Making the wakeup which was stored during Enable/Disable 
#                 phase, if any to FALSE*/
#                 Status_p->CanTrcvStoredWakeup_bt = FALSE;
#                 
#                 /* Making the wakeup which was occured during Init  
#                 phase, if any to FALSE*/
#                 Status_p->CanTrcvWakeUpOccured_bt = FALSE;
# 
# #endif /* CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT */
#                 
#                 /* Get the status of the last transmission (if any) */
#                 SpiTxStatus = Spi_GetSequenceResult( LtConfig_p->CanTrcvSpiSequenceId ); 
	.d2line		154
.Llo13:
	lbz		r3,18(r3)		# LtConfig_p=r3 LtConfig_p=r3
.Llo8:
	bl		Spi_GetSequenceResult
.Llo3:
	mr		r3,r3		# SpiTxStatus=r3 SpiTxStatus=r3
.L677:
#               
#                 /* Check if last asynchronous Transmission succeeded */
#                 if ( SpiTxStatus == SPI_SEQ_OK )
#                 {
#                     
# #if(CANTRCV_31_TJA1145_WAKEUP_BY_POLLING == CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT)
#                     /* Reset the SPI communication trials counter */
#                     Status_p->CanTrcvSpiRetriesCounter = 0;
#                     
#                     /* Reset the SPI timeout counter */
#                     Status_p->CanTrcvSpiTimeCounter = 0;
# 
#                     /* Re-Initialization */
#                     DataIndex_u8 = 0;
#                     
#                     /* Prepare the commands that are sent to CanTrcv via SPI  */
#                     /* First command: check if there is a wake-up using the CAN bus */
#                     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_CAN_EVENT_STATUS_REGADDR, (uint8) 0x00 , &DataIndex_u8, TRUE);
# 
#                     /* Second command: check if there is a wake-up using the WAKE pin */
#                     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_WAKE_PIN_STATUS_REGADDR, (uint8) 0x00 , &DataIndex_u8, TRUE);
# 
#                     /* Third command: check if there is a wake-up using the WAKE pin */
#                     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_TRCV_STATUS_REGADDR, (uint8) 0x00 , &DataIndex_u8, TRUE);
# 
#                     /* Fourth command: Read Transceiver Contol Register */
#                     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_CAN_CONTROL_REGADDR, (uint8) 0x00 , &DataIndex_u8, TRUE);
# 
#                     for(TransmitIndex_u8=0; TransmitIndex_u8<DataIndex_u8; TransmitIndex_u8++) 
#                     {
#                         /* Send control commands to the CanTrcv via SPI, byte by byte*/
#                         TransmissionStatus = CanTrcv_31_TJA1145_SpiTransmit (LtConfig_p, &DataToBeSent[TransmitIndex_u8], &Status_p->CanTrcvMainFuncRxBuf[TransmitIndex_u8], 1 );
#                         if(TransmissionStatus != CANTRCV_TX_SUCCEEDED)
#                         {
#                             break;
#                         }
#                     }
#                     if ( TransmissionStatus != CANTRCV_TX_SUCCEEDED )
#                     {
#                     
#                         /* Increase the number of SPI communication trials*/
#                         Status_p->CanTrcvSpiRetriesCounter += 1;
#                         
#                     }
#                     else
#                     {
#                     
#                         Status_p->CanTrcvMainFuncRxFlag = TRUE;
# 
#                         /* Inform the CanTrcv_31_TJA1145_MainDiagnosticFunction that data is received from the CanTrcv */
#                         SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_6();
#                         
#                         Status_p->CanTrcvMainDiagnosticRxFlag = TRUE;
#                         
#                         SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_6();
#                         
#                     }
# 					
#                     if (TRUE == Status_p->CanTrcvMainFuncRxFlag)
#                     {
#                         /* Reading the Can Wake-up status bit */
#                         CanWakeUpFlag_u8 = CANTRCV_31_TJA1145_READ_BITN(Status_p->CanTrcvMainFuncRxBuf[0], CANTRCV_31_TJA1145_CW_BIT);      
#                  
#                         /* Reading the WPR (rising edge detected on WAKE pin) status bit */
#                         WakePinREDetectedFlag_u8 = CANTRCV_31_TJA1145_READ_BITN(Status_p->CanTrcvMainFuncRxBuf[1], CANTRCV_31_TJA1145_WPR_BIT);  
# 
#                         /* Reading the WPF (falling edge detected on WAKE pin) status bit */
#                         WakePinFEDetectedFlag_u8 = CANTRCV_31_TJA1145_READ_BITN(Status_p->CanTrcvMainFuncRxBuf[1], CANTRCV_31_TJA1145_WPF_BIT);
# 
#                         /* Protect the shared resourse - CanTrcvCurrentState */
#                         SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
#                      
#                         TmpCanTrcvCurrentState = Status_p->CanTrcvCurrentState;
#                                                                    
#                         SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
#                 
#                         /* Check if there is a current Wake-up from HW */
#                         if(
#                             ((CANTRCV_TRCVMODE_STANDBY == TmpCanTrcvCurrentState) ||
#                             (CANTRCV_TRCVMODE_SLEEP == TmpCanTrcvCurrentState)) &&
#                             ((0 != WakePinREDetectedFlag_u8)  || 
#                               (0 != WakePinFEDetectedFlag_u8) ||
#                               (0 != CanWakeUpFlag_u8)) 
#                           )                
#                         {  
#                         
#                             SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_2();
#                             
#                             /* Assign the value that the wakeup is present. */
#                             Status_p->CanTrcvWakeupevent = CANTRCV_WAKEUP_PRESENT; 
# 							
# 							TmpEcuMWakupSrcType = CANTRCV_31_TJA1145_ZERO;
# 							
# 							 /* Get wakeup Source ID */
# 							CANTRCV_31_TJA1145_SET_BITN(TmpEcuMWakupSrcType,LtConfig_p->CanTrcvWakeupSourceId);
# 							
#                             if (0 != CanWakeUpFlag_u8)
#                             {
#                             
#                                 /* Inform the CheckWakeup function with the wakeup source */
#                                 Status_p->CanTrcvWakeupSource = CANTRCV_WU_BY_BUS;
#                                 
#                             }
#                             else
#                             {
#                             
#                                 /* Inform the CheckWakeup function with the wakeup source */
#                                 Status_p->CanTrcvWakeupSource = CANTRCV_WU_BY_PIN;
#                                 
#                             }
# 
#                             SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_2();
# 							
# 							/* Call EcuM_CheckWakeup */
# 							EcuM_CheckWakeup (TmpEcuMWakupSrcType);
#                         
#                         }
#                         else
#                         {
#                                         
#                             SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_2();
#                             
#                             Status_p->CanTrcvWakeupSource = CANTRCV_WU_NOT_SUPPORTED;
#                             
#                             /* Assign the value that the wakeup is not present. */
#                             Status_p->CanTrcvWakeupevent = CANTRCV_WAKEUP_NOTPRESENT; 
# 
#                             SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_2();
#                             
#                         }
#                         
#                         Status_p->CanTrcvMainFuncRxFlag = FALSE;
# 
#                     }
#                                        
# #endif /* CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT */
#                     
#                 }
#                 
# #if(CANTRCV_31_TJA1145_WAKEUP_BY_POLLING == CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT)
#                 
#                 else if ( SpiTxStatus == SPI_SEQ_PENDING )
#                 {
#                     /* Increase the SPI timeout counter */
#                     Status_p->CanTrcvSpiTimeCounter += 1;
#                     
#                     /* Increase the number of SPI communication trials */
#                     Status_p->CanTrcvSpiRetriesCounter += 1;
#                     
#                 }
#                 else
#                 {
#                 
#                     /* Increase the number of SPI communication trials */
#                     Status_p->CanTrcvSpiRetriesCounter += 1;
#                     
#                 }
#                 
#                 /* Check if the  number of SPI communication trials doesn't exceed the limit */
#                 if (   ((LtConfig_p->CanTrcvSpiCommRetries == 0) && (Status_p->CanTrcvSpiRetriesCounter > 0)) ||
#                        ((LtConfig_p->CanTrcvSpiCommRetries > 0) && (Status_p->CanTrcvSpiRetriesCounter >=  LtConfig_p->CanTrcvSpiCommRetries))
#                    )
#                 {
# 
# /* Check whether DEV  error detection enabled. */
# #if(STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT)                
#                     /* Maximum number of trials acheived. Report SPI Communication error */
#                     Det_ReportError (CANTRCV_31_TJA1145_MODULE_ID, 
#                                      CANTRCV_31_TJA1145_INSTANCE_ID,
#                                      CANTRCV_31_TJA1145_MAIN_FUNCTION_SID, 
#                                      CANTRCV_31_TJA1145_E_NO_TRCV_CONTROL);
# #endif
# 
#                     Status_p->CanTrcvSpiRetriesCounter = 0;
#                                      
#                 }
#                 
#                 /* check if there is an SPI communication timeout */
#                 if ( (LtConfig_p->CanTrcvSpiCommTimeout != 0) && (Status_p->CanTrcvSpiTimeCounter >=  LtConfig_p->CanTrcvSpiCommTimeout) )
#                 {
# 
# /* Check whether DEV  error detection enabled. */
# #if(STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT)                 
#                     /* Timout occured. Report SPI Communication error */
#                     Det_ReportError (CANTRCV_31_TJA1145_MODULE_ID, 
#                                      CANTRCV_31_TJA1145_INSTANCE_ID,
#                                      CANTRCV_31_TJA1145_MAIN_FUNCTION_SID, 
#                                      CANTRCV_31_TJA1145_E_NO_TRCV_CONTROL);
# #endif
# 
#                     Status_p->CanTrcvSpiTimeCounter = 0;
#                                      
#                 }
#                 
# #endif /* CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT */
# 
#             }
# 
#         }
#         else
#         {
# 
#             /* Do Nothing */
# 
#         }
# 
#     }
	.d2line		361
.Llo4:
	diab.addi		r3,r31,1		# LtConfig_p=r3 Count_u8=r31
	se_addi		r31,1		# Count_u8=r31 Count_u8=r31
	b		.L670
.L669:
# 
# }/* End of CanTrcv_31_TJA1145_MainFunction () */
	.d2line		363
	.d2epilogue_begin
.Llo2:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L692:
	.type		CanTrcv_31_TJA1145_MainFunction,@function
	.size		CanTrcv_31_TJA1145_MainFunction,.-CanTrcv_31_TJA1145_MainFunction
# Number of nodes = 54

# Allocations for CanTrcv_31_TJA1145_MainFunction
#	?a4		Count_u8
#	?a5		SpiTxStatus
#	?a6		LtConfig_p
#	?a7		Status_p

# Allocations for module
	.section	.text_vle
	.0byte		.L716
	.section	.text_vle
#$$ld
.L5:
.L741:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Spi.h"
.L739:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L722:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\..\\..\\inc\\CanTrcv_Types.h"
.L715:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\inc\\CanTrcv_31_TJA1145.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L685:
.L693:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_MainFunction.c"
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
	.uleb128	4
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
	.uleb128	5
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
	.uleb128	6
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
	.uleb128	7
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
	.uleb128	8
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
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
	.uleb128	10
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	15
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_MainFunction.c"
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
.L682:
	.4byte		.L683-.L681
.L681:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L687-.L682
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_MainFunction.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L684
	.4byte		.L685
	.4byte		.L688
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L694:
	.sleb128	2
	.4byte		.L690-.L682
	.byte		"CanTrcv_31_TJA1145_MainFunction"
	.byte		0
	.4byte		.L693
	.uleb128	76
	.uleb128	36
	.byte		0x1
	.byte		0x1
	.4byte		.L691
	.4byte		.L692
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L695:
	.sleb128	3
	.4byte		.L693
	.uleb128	102
	.uleb128	28
	.byte		"Count_u8"
	.byte		0
	.4byte		.L696
	.4byte		.L698
.L699:
	.sleb128	3
	.4byte		.L693
	.uleb128	106
	.uleb128	36
	.byte		"SpiTxStatus"
	.byte		0
	.4byte		.L700
	.4byte		.L702
.L703:
	.sleb128	3
	.4byte		.L693
	.uleb128	109
	.uleb128	102
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L704
	.4byte		.L708
.L709:
	.sleb128	3
	.4byte		.L693
	.uleb128	112
	.uleb128	101
	.byte		"Status_p"
	.byte		0
	.4byte		.L710
	.4byte		.L713
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L690:
	.section	.debug_info,,n
.L714:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L715
	.uleb128	749
	.uleb128	88
	.byte		"CanTrcv_31_TJA1145_Status_p"
	.byte		0
	.4byte		.L710
	.0byte		.L714
.L716:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L715
	.uleb128	762
	.uleb128	88
	.byte		"CanTrcv_31_TJA1145_LtConfig_p"
	.byte		0
	.4byte		.L717
	.section	.debug_info,,n
.L718:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L715
	.uleb128	769
	.uleb128	48
	.byte		"CanTrcv_31_TJA1145_MaxChannels_u16"
	.byte		0
	.4byte		.L719
	.section	.debug_info,,n
.L712:
	.sleb128	5
	.4byte		.L722
	.uleb128	61
	.uleb128	13
	.4byte		.L723-.L2
	.uleb128	32
	.section	.debug_info,,n
.L563:
	.sleb128	6
	.byte		"CanTrcvCurrentState"
	.byte		0
	.4byte		.L724
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L564:
	.sleb128	6
	.byte		"CanTrcvSetOpModeRxBuf"
	.byte		0
	.4byte		.L726
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L565:
	.sleb128	6
	.byte		"CanTrcvMainFuncRxBuf"
	.byte		0
	.4byte		.L728
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L566:
	.sleb128	6
	.byte		"CanTrcvMainFuncRxFlag"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L567:
	.sleb128	6
	.byte		"CanTrcvMainDiagnosticRxFlag"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L568:
	.sleb128	6
	.byte		"CanTrcvInitialised_bt"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L569:
	.sleb128	6
	.byte		"CanTrcvSpiRetriesCounter"
	.byte		0
	.4byte		.L696
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L570:
	.sleb128	6
	.byte		"CanTrcvSpiTimeCounter"
	.byte		0
	.4byte		.L696
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L723:
.L707:
	.sleb128	5
	.4byte		.L722
	.uleb128	61
	.uleb128	13
	.4byte		.L731-.L2
	.uleb128	20
.L547:
	.sleb128	6
	.byte		"CanTrcvInitState"
	.byte		0
	.4byte		.L732
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L548:
	.sleb128	6
	.byte		"CanTrcvMaxBaudrate"
	.byte		0
	.4byte		.L719
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L549:
	.sleb128	6
	.byte		"CanTrcvControlsPowerSupply"
	.byte		0
	.4byte		.L733
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L550:
	.sleb128	6
	.byte		"CanTrcvChannelUsed"
	.byte		0
	.4byte		.L733
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L551:
	.sleb128	6
	.byte		"CanTrcvWakeupByBusUsed"
	.byte		0
	.4byte		.L733
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L552:
	.sleb128	6
	.byte		"CanTrcvChannelId"
	.byte		0
	.4byte		.L734
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L553:
	.sleb128	6
	.byte		"CanTrcvPorWakeupSourceId"
	.byte		0
	.4byte		.L734
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L554:
	.sleb128	6
	.byte		"CanTrcvSyserrWakeupSourceId"
	.byte		0
	.4byte		.L734
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L555:
	.sleb128	6
	.byte		"CanTrcvWakeupSourceId"
	.byte		0
	.4byte		.L734
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L556:
	.sleb128	6
	.byte		"CanTrcvPinWakeupSourceId"
	.byte		0
	.4byte		.L734
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L557:
	.sleb128	6
	.byte		"CanTrcvSpiAccessSynchronous"
	.byte		0
	.4byte		.L733
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L558:
	.sleb128	6
	.byte		"CanTrcvSpiCommRetries"
	.byte		0
	.4byte		.L734
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L559:
	.sleb128	6
	.byte		"CanTrcvSpiCommTimeout"
	.byte		0
	.4byte		.L734
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L560:
	.sleb128	6
	.byte		"CanTrcvSpiChannelId"
	.byte		0
	.4byte		.L735
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L561:
	.sleb128	6
	.byte		"CanTrcvSpiSequenceId"
	.byte		0
	.4byte		.L737
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L562:
	.sleb128	6
	.byte		"CanIfTrcvID"
	.byte		0
	.4byte		.L734
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
	.sleb128	0
.L731:
	.section	.debug_info,,n
.L725:
	.sleb128	7
	.4byte		.L739
	.uleb128	23
	.uleb128	15
	.4byte		.L740-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	8
	.byte		"CANTRCV_TRCVMODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"CANTRCV_TRCVMODE_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"CANTRCV_TRCVMODE_STANDBY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L740:
.L701:
	.sleb128	7
	.4byte		.L741
	.uleb128	439
	.uleb128	1
	.4byte		.L742-.L2
	.uleb128	4
	.sleb128	8
	.byte		"SPI_SEQ_OK"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"SPI_SEQ_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"SPI_SEQ_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"SPI_SEQ_CANCELLED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L742:
	.section	.debug_info,,n
.L697:
	.sleb128	9
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L696:
	.sleb128	10
	.byte		"uint8"
	.byte		0
	.4byte		.L697
.L700:
	.sleb128	10
	.byte		"Spi_SeqResultType"
	.byte		0
	.4byte		.L701
.L706:
	.sleb128	10
	.byte		"CanTrcv_31_TJA1145_LtCfgType"
	.byte		0
	.4byte		.L707
	.section	.debug_info,,n
.L705:
	.sleb128	11
	.4byte		.L706
	.section	.debug_info,,n
.L704:
	.sleb128	12
	.4byte		.L705
.L711:
	.sleb128	10
	.byte		"CanTrcv_31_TJA1145_StatusType"
	.byte		0
	.4byte		.L712
.L710:
	.sleb128	12
	.4byte		.L711
.L717:
	.sleb128	11
	.4byte		.L704
.L721:
	.sleb128	9
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L720:
	.sleb128	10
	.byte		"uint16"
	.byte		0
	.4byte		.L721
.L719:
	.sleb128	11
	.4byte		.L720
.L724:
	.sleb128	10
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L725
	.section	.debug_info,,n
.L726:
	.sleb128	13
	.4byte		.L727-.L2
	.4byte		.L720
	.section	.debug_info,,n
	.sleb128	14
	.uleb128	6
	.sleb128	0
.L727:
.L728:
	.sleb128	13
	.4byte		.L729-.L2
	.4byte		.L720
	.sleb128	14
	.uleb128	3
	.sleb128	0
.L729:
.L730:
	.sleb128	10
	.byte		"boolean"
	.byte		0
	.4byte		.L697
.L732:
	.sleb128	11
	.4byte		.L724
.L733:
	.sleb128	11
	.4byte		.L730
.L734:
	.sleb128	11
	.4byte		.L696
.L736:
	.sleb128	10
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L696
.L735:
	.sleb128	11
	.4byte		.L736
.L738:
	.sleb128	10
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L696
.L737:
	.sleb128	11
	.4byte		.L738
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L687:
	.sleb128	0
.L683:

	.section	.debug_loc,,n
	.align	0
.L698:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),31
	.d2locend
.L702:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L708:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L713:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo6),4
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),4
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),4
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo2),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTrcv_31_TJA1145_MainFunction"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Spi_GetSequenceResult"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_MainFunction.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_MainFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_MainFunction.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_MainFunction.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_MainFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_MainFunction.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTrcv\ssc\target\TJA1145\make\..\src\CanTrcv_31_TJA1145_MainFunction.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
