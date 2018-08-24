#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTrcv_31_TJA1145_Init.c"
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
# static FUNC (void , CANTRCV_31_TJA1145_CODE)CanTrcv_31_TJA1145_Initialize_HW 
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L699:
	.section	.invalid_TEXT,,c
#$$ld
.L695:
	.0byte		.L693
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_Init.c"
        .d2line         245,45
#$$ld
.L702:

#$$bf	CanTrcv_31_TJA1145_Initialize_HW,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanTrcv_31_TJA1145_Initialize_HW:
.Llo1:
	stwu		r1,-112(r1)		
	.d2_cfa_def_cfa_offset	112
	mfspr		r0,lr
.Llo14:
	stmw		r28,96(r1)		# offset r1+96  0x60
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,116(r1)		# TmpEcuMWakupSrcType=r0
	.d2_cfa_offset    108,-1
	mr		r5,r3		# CanNetwork_u8=r5 CanNetwork_u8=r3
	.d2prologue_end
#                     ( CONST(uint8, AUTOMATIC) CanNetwork_u8, 
#                       CONSTP2CONST (CanTrcv_31_TJA1145_PbConfigType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_CONST) ConfigHw_p, /* PRQA S 3206 */ /* Not used in case of Wakeup Not supported*/
#                       CONSTP2VAR (boolean, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_DATA) WakeUpOcurredFlag) /* PRQA S 3206 */ /* Not used in case of Wakeup Not supported*/
# {
#    
#     /* Pointer to the Status array for each Channel. */
#     P2VAR (CanTrcv_31_TJA1145_StatusType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_DATA )Status_p ;
#     
#     /* Pointer to index the constant LinkTime Congiguration Array. */
#     P2CONST (CanTrcv_31_TJA1145_LtCfgType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_CONST)LtConfig_p ;
#     
#     /* Variable to hold the CanTrcv-Spi communication status*/
#     VAR(CanTrcv_SpiTransStatus,AUTOMATIC)  TransmissionStatus;
#     
#     /* Variable holds the data to be sent. The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeSent[InitDataToBeSentLength];
#     
#     VAR(boolean, AUTOMATIC) UnSupportedBaudRate;
#     
# #if(CANTRCV_31_TJA1145_WAKEUP_NOT_SUPPORTED != CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT)
# 
#     /* Variable holds the data to be received from CanTrcv via SPI. 
#        The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeReceived[InitDataToBeReceivedLength]={0};
#     
#     VAR (uint8, AUTOMATIC) WakePinREDetectedFlag_u8;
#     
#     VAR (uint8, AUTOMATIC) WakePinFEDetectedFlag_u8;
#  
#     /* Variable holds the Can wake-up status*/
#     VAR (uint8, AUTOMATIC) CanWakeUpFlag_u8;
#     
# #endif /* CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT */
# 
#     /* Variable to hold the number or SPI data elements to be sent/received*/
#     VAR (uint8, AUTOMATIC)DataIndex_u8;
# 
#     /* Variable to hold the number of actual bytes transmitted */
#     VAR (uint8, AUTOMATIC)TransmitIndex_u8;
# 
#     /* Variable to hold the EcuM wakeup source type */
#     VAR (EcuM_WakeupSourceType, AUTOMATIC) TmpEcuMWakupSrcType = 0;
	.d2line		287
.Llo2:
	diab.li		r0,0		# TmpEcuMWakupSrcType=r0
# 
#     VAR (uint8, AUTOMATIC)ReturnValue;
#     
#     /* Variable holds the overtempertaure status*/
#     VAR (uint8, AUTOMATIC) OverTempFlag_u8; /* PRQA S 3204 */ /* used and initialized only once in case of Wakeup Not supported*/
# 
#     /* Variable holds the Can Failure status*/
#     VAR (uint8, AUTOMATIC) CanFailureFlag_u8; /* PRQA S 3204 */ /* used and initialized only once in case of Wakeup Not supported*/
# 
#     /* Variable holds the PowerOn status*/
#     VAR (uint8, AUTOMATIC) PowerOnFlag_u8; /* PRQA S 3204 */ /* used and initialized only once in case of Wakeup Not supported*/
#     
#     /* Get the pointer to the structure of the Network. */
#     LtConfig_p = &(CANTRCV_31_TJA1145_LT_CONFIG_P[CanNetwork_u8]);
	.d2line		301
.Llo3:
	lis		r3,CanTrcv_31_TJA1145_LtConfig_p@ha
	lwz		r4,CanTrcv_31_TJA1145_LtConfig_p@l(r3)		# TransmissionStatus=r4
	rlwinm		r3,r5,0,24,31		# CanNetwork_u8=r5
	e_mulli		r28,r3,20		# TransmissionStatus=r28
.Llo10:
	se_add		r4,r28		# TransmissionStatus=r4 TransmissionStatus=r4 TransmissionStatus=r28
.Llo8:
	mr		r28,r4		# LtConfig_p=r28 LtConfig_p=r4
# 
#     Status_p = &(CANTRCV_31_TJA1145_STATUS_P[CanNetwork_u8]);
	.d2line		303
	lis		r4,CanTrcv_31_TJA1145_Status_p@ha		# TransmissionStatus=r4
.Llo9:
	lwz		r31,CanTrcv_31_TJA1145_Status_p@l(r4)		# CanNetwork_u8=r31 TransmissionStatus=r4
	rlwinm		r5,r5,5,19,26		# CanNetwork_u8=r5 CanNetwork_u8=r5
	se_add		r5,r31		# CanNetwork_u8=r5 CanNetwork_u8=r5 CanNetwork_u8=r31
.Llo4:
	mr		r31,r5		# Status_p=r31 Status_p=r5
#     
#     /**************** Determining the wake-up reason and reporting to the Ecum ****************************/
#     OverTempFlag_u8 = 0;
#     
#     CanFailureFlag_u8 = 0;
#     
#     PowerOnFlag_u8 = 0; 
# 
# #if(CANTRCV_31_TJA1145_WAKEUP_NOT_SUPPORTED != CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT)
#     
#     DataIndex_u8 = 0;
# 
#     /* Reading the corresponding registers */    
#     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_CAN_EVENT_STATUS_REGADDR, (uint8) 0x00 , &DataIndex_u8, TRUE);
#     
#     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_WAKE_PIN_STATUS_REGADDR, (uint8) 0x00 , &DataIndex_u8, TRUE);
# 
# #if (STD_ON == CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT)
#     if ( ConfigHw_p->CanTrcvPnEnabled == TRUE )
#     {
#     
#         CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_SYS_EVENT_STATUS_REGADDR, (uint8) 0x00 , &DataIndex_u8, TRUE);
#     
#     }
# #endif /* CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT */
#     TransmissionStatus = CANTRCV_TX_SUCCEEDED;
#     for(TransmitIndex_u8=0; TransmitIndex_u8<DataIndex_u8; TransmitIndex_u8++) 
#     {
#         /* Spi access is Synchronous */
#         TransmissionStatus = CanTrcv_31_TJA1145_SpiTransmit (LtConfig_p, &DataToBeSent[TransmitIndex_u8], &DataToBeReceived[TransmitIndex_u8], 1 );
#         if(TransmissionStatus != CANTRCV_TX_SUCCEEDED)
#         {
#             break;
#         }
#     }
#     if ( TransmissionStatus != CANTRCV_TX_SUCCEEDED )
#     {
#     
# #if( STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT )        
#         /* Report DET Error */
#         Det_ReportError( CANTRCV_31_TJA1145_MODULE_ID,
#                          CANTRCV_31_TJA1145_INSTANCE_ID,
#                          CANTRCV_31_TJA1145_INIT_SID,
#                          CANTRCV_31_TJA1145_E_NO_TRCV_CONTROL );
# #endif
#     
#     }
#     else
#     {
#     
#         /* Reading the Can Failure status bit */
#         CanFailureFlag_u8 = CANTRCV_31_TJA1145_READ_BITN(DataToBeReceived[0], CANTRCV_31_TJA1145_CF_BIT); 
#         
#         /* Reading the Can Wake-up status bit */
#         CanWakeUpFlag_u8 = CANTRCV_31_TJA1145_READ_BITN(DataToBeReceived[0], CANTRCV_31_TJA1145_CW_BIT);      
# 
#         /* Reading the WPR (rising edge detected on WAKE pin) status bit */
#         WakePinREDetectedFlag_u8 = CANTRCV_31_TJA1145_READ_BITN(DataToBeReceived[1], CANTRCV_31_TJA1145_WPR_BIT);  
# 
#         /* Reading the WPF (falling edge detected on WAKE pin) status bit */
#         WakePinFEDetectedFlag_u8 = CANTRCV_31_TJA1145_READ_BITN(DataToBeReceived[1], CANTRCV_31_TJA1145_WPF_BIT);  
# 
# #if (STD_ON == CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT)
#         if ( ConfigHw_p->CanTrcvPnEnabled == TRUE )
#         {
#         
#             /* Reading the overtemperature status bit */
#             OverTempFlag_u8 = CANTRCV_31_TJA1145_READ_BITN(DataToBeReceived[OverTempFlag_u8Index], CANTRCV_31_TJA1145_OTW_BIT);
#             
#             /* Reading the PowerOn status bit*/
#             PowerOnFlag_u8 = CANTRCV_31_TJA1145_READ_BITN(DataToBeReceived[PowerOnFlag_u8Index], CANTRCV_31_TJA1145_PO_BIT);
# 
#             if ( ( OverTempFlag_u8 != 0 ) || ( CanFailureFlag_u8 != 0 ) )
#             {
#             
#                 /* OverTemperature and Can Failure are considered as SYSERR wake-up */
#                 CANTRCV_31_TJA1145_SET_BITN( TmpEcuMWakupSrcType, LtConfig_p->CanTrcvSyserrWakeupSourceId );
#                 
#                 /* Report Wake-up reason to EcuM */
#                 EcuM_SetWakeupEvent (TmpEcuMWakupSrcType);
#                 
#             }
#             else if ( PowerOnFlag_u8 != 0 )
#             {
#             
#                 /* Wakeup due to PowerOn */
#                 CANTRCV_31_TJA1145_SET_BITN( TmpEcuMWakupSrcType, LtConfig_p->CanTrcvPorWakeupSourceId );
#                 
#                 /* Report Wake-up reason to EcuM */
#                 EcuM_SetWakeupEvent (TmpEcuMWakupSrcType);            
#                 
#             }
#             else
#             {
#             
#                 /* Do Nothing */
#             
#             }
#             
#         }            
# #endif /* CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT */
# 
#         if ( CanWakeUpFlag_u8 != 0 )
#         {
#         
#             /* CAN Wakeup event occured */
#             (*WakeUpOcurredFlag) = TRUE;
#              /* Wakeup by bus */
#              CANTRCV_31_TJA1145_SET_BITN( TmpEcuMWakupSrcType, LtConfig_p->CanTrcvWakeupSourceId );
#                  
#              /* Report Wake-up reason to EcuM */
#              EcuM_SetWakeupEvent (TmpEcuMWakupSrcType);              
#             /* Inform the CheckWakeup function with the wakeup source */
#             Status_p->CanTrcvWakeupSource = CANTRCV_WU_BY_BUS;
#             
#         }
#         else if ( ( WakePinFEDetectedFlag_u8 != 0 ) || ( WakePinREDetectedFlag_u8 != 0 ) )
#         {
# 			/* Wakeup by pin */
#             CANTRCV_31_TJA1145_SET_BITN( TmpEcuMWakupSrcType, LtConfig_p->CanTrcvPinWakeupSourceId );
#                 
#             /* Report Wake-up reason to EcuM */
#             EcuM_SetWakeupEvent (TmpEcuMWakupSrcType);  
# 			
# 			/* Inform the CheckWakeup function with the wakeup source */
#             Status_p->CanTrcvWakeupSource = CANTRCV_WU_BY_PIN;
#         
#             /* WAKE pin event occured */
#             (*WakeUpOcurredFlag) = TRUE;
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
# 
# #endif /* CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT */
# 
#     /******************************************************************************************************/
#     DataIndex_u8 = 0;
	.d2line		447
	diab.li		r4,0		# TransmissionStatus=r4
	stb		r4,8(r1)		# TransmissionStatus=r4
# 
#     /* Configure the HW */
#     ReturnValue = CanTrcv_31_TJA1145_Configure_HW( CanNetwork_u8, 
	.d2line		450
	diab.addi		r7,r1,12
	diab.addi		r8,r1,8
	diab.addi		r9,r1,9
	diab.li		r5,0		# CanNetwork_u8=r5
.Llo5:
	diab.li		r6,0
	bl		CanTrcv_31_TJA1145_Configure_HW
.Llo11:
	mr		r29,r3		# ReturnValue=r29 ReturnValue=r3
#                                         OverTempFlag_u8, 
#                                         CanFailureFlag_u8, 
#                                         PowerOnFlag_u8, 
#                                         DataToBeSent,
#                                         &DataIndex_u8,
#                                         &UnSupportedBaudRate );
#   
# #if( STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT )
# 
#      if (TRUE == UnSupportedBaudRate)
#      {
#      
#         /* Report DET Error */
#         Det_ReportError( CANTRCV_31_TJA1145_MODULE_ID,
#                          CANTRCV_31_TJA1145_INSTANCE_ID,
#                          CANTRCV_31_TJA1145_INIT_SID,
#                          CANTRCV_31_TJA1145_E_BAUDRATE_NOT_SUPPORTED );
#                          
#     }
#     
# #endif/* #if( CANTRCV_31_TJA1145_DEV_ERROR_DETECT == STD_ON) */
# 
#     /* Initialize the variable before using because of Misra Rules. "Rule #2963" */
#     TransmissionStatus = CANTRCV_TX_FAILED;
	.d2line		474
	diab.li		r4,3		# TransmissionStatus=r4
# 
#     /* Send control commands to the CanTrcv via SPI, byte by byte*/
#      for(TransmitIndex_u8=0; TransmitIndex_u8<DataIndex_u8; TransmitIndex_u8++) {
	.d2line		477
.Llo12:
	diab.li		r30,0		# TransmitIndex_u8=r30
.L679:
.Llo6:
	rlwinm		r0,r30,0,24,31		# TmpEcuMWakupSrcType=r0 TransmitIndex_u8=r30
.Llo15:
	lbz		r3,8(r1)		# TransmissionStatus=r3
	se_cmp		r0,r3		# TmpEcuMWakupSrcType=r0 TransmissionStatus=r3
	bc		0,0,.L683	# ge
# 
#          TransmissionStatus = CanTrcv_31_TJA1145_SpiTransmit (LtConfig_p, &DataToBeSent[TransmitIndex_u8], NULL_PTR, 1 );
	.d2line		479
.Llo16:
	diab.addi		r4,r1,12		# TransmissionStatus=r4
	rlwinm		r0,r30,1,23,30		# TmpEcuMWakupSrcType=r0 TransmitIndex_u8=r30
.Llo17:
	se_add		r4,r0		# TransmissionStatus=r4 TransmissionStatus=r4 TmpEcuMWakupSrcType=r0
	mr		r3,r28		# LtConfig_p=r3 LtConfig_p=r28
	diab.li		r5,0		# CanNetwork_u8=r5
	diab.li		r6,1
	bl		CanTrcv_31_TJA1145_SpiTransmit
	.d2line		481
.Llo18:
	mr.		r4,r3		# TransmissionStatus=?a7 TransmissionStatus=r3
# 
#          if(TransmissionStatus != CANTRCV_TX_SUCCEEDED)
	bc		0,2,.L683	# ne
#          {
# 
#              break;
# 
#          }
# 
#      }
	.d2line		488
	diab.addi		r0,r30,1		# TmpEcuMWakupSrcType=r0 TransmitIndex_u8=r30
	se_addi		r30,1		# TransmitIndex_u8=r30 TransmitIndex_u8=r30
	b		.L679
.L683:
# 
#     if ( TransmissionStatus != CANTRCV_TX_SUCCEEDED )
	.d2line		490
	se_cmpi		r4,0		# TransmissionStatus=r4
	bc		0,2,.L678	# ne
#     {
#     
# #if( STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT )        
#         /* Report DET Error */
#         Det_ReportError( CANTRCV_31_TJA1145_MODULE_ID,
#                          CANTRCV_31_TJA1145_INSTANCE_ID,
#                          CANTRCV_31_TJA1145_INIT_SID,
#                          CANTRCV_31_TJA1145_E_NO_TRCV_CONTROL );
# #endif
#         
#     }
#     else
#     {
#     
#         if (E_OK == ReturnValue)
	.d2line		505
.Llo13:
	rlwinm		r29,r29,0,24,31		# ReturnValue=r29 ReturnValue=r29
	se_cmpi		r29,0		# ReturnValue=r29
	bc		0,2,.L686	# ne
#         {
#     
#             SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
	.d2line		508
.Llo24:
	bl		SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1
# 
#             /* If Successful, update current state with the opmode */
#             Status_p->CanTrcvCurrentState = LtConfig_p->CanTrcvInitState;
	.d2line		511
	lwz		r0,0(r28)		# TmpEcuMWakupSrcType=r0 LtConfig_p=r28
.Llo19:
	stw		r0,0(r31)		# Status_p=r31 TmpEcuMWakupSrcType=r0
# 
#             SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
	.d2line		513
	bl		SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1
#               
#             /* Initialization has been Successful. */
#             Status_p->CanTrcvInitialised_bt = TRUE;
	.d2line		516
.Llo20:
	diab.li		r0,1		# TmpEcuMWakupSrcType=r0
.Llo21:
	stb		r0,28(r31)		# Status_p=r31 TmpEcuMWakupSrcType=r0
	b		.L678
.L686:
#  
# #if (CANTRCV_31_TJA1145_WAKEUP_BY_ICU == CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT) 
#             /*Enable/Disable the wakeup events through ICU */
#             CanTrcv_31_TJA1145_IcuSetNotification(CanNetwork_u8, LtConfig_p->CanTrcvInitState);
# #endif /* CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT */
#             
#         } 
#         else
#         /* PRQA S 3201 1 */ /* Misra 13.7 The condition won't be always true if value outside of enum is passed to the function */
#         {
#               
#             /* Initialization has been Successful. */
#             Status_p->CanTrcvInitialised_bt = FALSE;
	.d2line		529
.Llo22:
	diab.li		r0,0		# TmpEcuMWakupSrcType=r0
.Llo23:
	stb		r0,28(r31)		# Status_p=r31 TmpEcuMWakupSrcType=r0
.L678:
# 
#         }
#         
#     }
#         
# }/* End of CanTrcv_31_TJA1145_Initialize_HW() */
	.d2line		535
	.d2epilogue_begin
.Llo7:
	lmw		r28,96(r1)		# offset r1+96  0x60
	.d2_cfa_restore_list	3,10
	lwz		r0,116(r1)		# TmpEcuMWakupSrcType=r0
	mtspr		lr,r0		# TmpEcuMWakupSrcType=lr
	diab.addi		r1,r1,112		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L703:
	.type		CanTrcv_31_TJA1145_Initialize_HW,@function
	.size		CanTrcv_31_TJA1145_Initialize_HW,.-CanTrcv_31_TJA1145_Initialize_HW
# Number of nodes = 117

# Allocations for CanTrcv_31_TJA1145_Initialize_HW
#	?a4		CanNetwork_u8
#	not allocated	ConfigHw_p
#	not allocated	WakeUpOcurredFlag
#	?a5		Status_p
#	?a6		LtConfig_p
#	?a7		TransmissionStatus
#	SP,12		DataToBeSent
#	SP,9		UnSupportedBaudRate
#	SP,8		DataIndex_u8
#	?a8		TransmitIndex_u8
#	?a9		TmpEcuMWakupSrcType
#	?a10		ReturnValue
#	?a11		OverTempFlag_u8
#	?a12		CanFailureFlag_u8
#	?a13		PowerOnFlag_u8
# FUNC (void, CANTRCV_31_TJA1145_CODE)CANTRCV_31_TJA1145_INIT ( CONSTP2CONST (CanTrcv_31_TJA1145_ConfigType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_CONST) ConfigPtr )
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         89,37
#$$ld
.L757:

#$$bf	CanTrcv_31_TJA1145_Init,interprocedural,rasave,nostackparams
	.globl		CanTrcv_31_TJA1145_Init
	.d2_cfa_start __cie
CanTrcv_31_TJA1145_Init:
.Llo25:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ConfigPtr=r3 ConfigPtr=r3
	.d2prologue_end
# {
# 
#     /* Index used CAN Channel number. */
#     VAR (uint16, AUTOMATIC)CanNetwork_u16;
#     
# #if(CANTRCV_31_TJA1145_WAKEUP_BY_POLLING == CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT)
# 
#     VAR (CanTrcv_TrcvModeType, AUTOMATIC) TmpCanTrcvCurrentState;
# 
# #endif /* CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT */
# 
#     VAR (boolean, AUTOMATIC) WakeUpOcurredFlag;
# 
# #if(CANTRCV_31_TJA1145_WAKEUP_BY_POLLING == CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT)    
#     /* Pointer to the Status array for each Channel. */
#     P2VAR (CanTrcv_31_TJA1145_StatusType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_DATA )Status_p ;
# #endif /* CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT */
#    
#     /* Pointer to index the link-time Configuration Array. */
#     P2CONST (CanTrcv_31_TJA1145_LtCfgType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_CONST)LtConfig_p ;
#   
#     /* Pointer to index the post-build Configuration Array. */
#     P2CONST (CanTrcv_31_TJA1145_PbConfigType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_CONST) PbConfig_p;
# 
# #if( STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT )
#     if ( NULL_PTR == ConfigPtr )
#     {
#         /* Report DET Error */
#         Det_ReportError( CANTRCV_31_TJA1145_MODULE_ID,
#                          CANTRCV_31_TJA1145_INSTANCE_ID,
#                          CANTRCV_31_TJA1145_INIT_SID,
#                          CANTRCV_31_TJA1145_E_PARAM_POINTER );
#     }
#     else    
# #endif/* #if( CANTRCV_31_TJA1145_DEV_ERROR_DETECT == STD_ON) */
# 
#     {
#         /* Assigning to the post-build global variable */
#         CanTrcv_31_TJA1145_PbConfig_p = ConfigPtr->PbConfig_pc;
	.d2line		128
	lwz		r0,0(r3)		# ConfigPtr=r3
	lis		r4,CanTrcv_31_TJA1145_PbConfig_p@ha
	e_add16i		r4,r4,CanTrcv_31_TJA1145_PbConfig_p@l
	stw		r0,0(r4)
# 
#         /* Set the network value to Zero. */
#         CanNetwork_u16 = CANTRCV_31_TJA1145_ZERO;           
	.d2line		131
	diab.li		r31,0		# CanNetwork_u16=r31
#         
#         /* Proceed with initialisation only if the Hash Keys are matched. */
#         if (E_OK == CanTrcv_31_TJA1145_ConsistencyCheck(ConfigPtr))
	.d2line		134
	mr		r3,r3		# ConfigPtr=r3 ConfigPtr=r3
.Llo26:
	bl		CanTrcv_31_TJA1145_ConsistencyCheck
.Llo27:
	rlwinm		r3,r3,0,24,31		# ConfigPtr=r3 ConfigPtr=r3
	se_cmpi		r3,0		# ConfigPtr=r3
	bc		0,2,.L669	# ne
.L671:
#         {
#             /* Initialisation of all configured CAN Transceiver Driver Channels. */
#             do
#             {       
#                 PbConfig_p = &(CanTrcv_31_TJA1145_PbConfig_p[(uint8)CanNetwork_u16]);
	.d2line		139
.Llo28:
	lis		r3,CanTrcv_31_TJA1145_PbConfig_p@ha		# ConfigPtr=r3
.Llo29:
	lwz		r4,CanTrcv_31_TJA1145_PbConfig_p@l(r3)		# CanNetwork_u16=r4 ConfigPtr=r3
	rlwinm		r3,r31,1,23,30		# CanNetwork_u16=r3 CanNetwork_u16=r31
.Llo30:
	se_add		r3,r4		# CanNetwork_u16=r3 CanNetwork_u16=r3 CanNetwork_u16=r4
.Llo38:
	mr		r4,r3		# PbConfig_p=r4 PbConfig_p=r3
# 
#                 /* Get the pointer to the structure of the Network. */
#                 LtConfig_p = &(CANTRCV_31_TJA1145_LT_CONFIG_P[(uint8)CanNetwork_u16]);
	.d2line		142
	lis		r3,CanTrcv_31_TJA1145_LtConfig_p@ha		# CanNetwork_u16=r3
.Llo39:
	lwz		r0,CanTrcv_31_TJA1145_LtConfig_p@l(r3)		# CanNetwork_u16=r3
	mr		r3,r31		# CanNetwork_u16=r3 CanNetwork_u16=r31
	rlwinm		r3,r3,0,24,31		# CanNetwork_u16=r3 CanNetwork_u16=r3
	e_mulli		r3,r3,20		# CanNetwork_u16=r3 CanNetwork_u16=r3
	se_add		r0,r3		# CanNetwork_u16=r3
.Llo32:
	mr		r3,r0		# LtConfig_p=r3 LtConfig_p=r0
# 
# #if(CANTRCV_31_TJA1145_WAKEUP_BY_POLLING == CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT) 
#                 Status_p = &(CANTRCV_31_TJA1145_STATUS_P[(uint8)CanNetwork_u16]);
# #endif /* CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT */
#                     
#                 WakeUpOcurredFlag = FALSE; 
	.d2line		148
.Llo33:
	diab.li		r0,0
.Llo34:
	stb		r0,8(r1)
# 
#                     /* Check for CAN Transceiver Channel is used. */
#                     if( TRUE == LtConfig_p->CanTrcvChannelUsed)
	.d2line		151
	lbz		r0,7(r3)		# LtConfig_p=r3
	se_cmpi		r0,1
	bc		0,2,.L673	# ne
#                     {
#          
#                         {
# 
#                             CanTrcv_31_TJA1145_Initialize_HW ( (uint8)CanNetwork_u16, 
	.d2line		156
.Llo35:
	mr		r3,r31		# CanNetwork_u16=r3 CanNetwork_u16=r31
	diab.addi		r5,r1,8
.Llo40:
	mr		r4,r4		# PbConfig_p=r4 PbConfig_p=r4
.Llo41:
	bl		CanTrcv_31_TJA1145_Initialize_HW
.L673:
#                                                                       PbConfig_p, 
#                                                                       &WakeUpOcurredFlag ); 
# 
# #if(CANTRCV_31_TJA1145_WAKEUP_BY_POLLING == CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT)              
# 
#                             /* Protect the shared resourse - CanTrcvCurrentState */
#                             SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
#                  
#                             TmpCanTrcvCurrentState = Status_p->CanTrcvCurrentState;
#                         
#                             SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
# 
# 
#                             if (  ( WakeUpOcurredFlag == TRUE  ) &&
#                                  ( (CANTRCV_TRCVMODE_STANDBY == TmpCanTrcvCurrentState) 
#                                  || (CANTRCV_TRCVMODE_SLEEP == TmpCanTrcvCurrentState))
#                                 )
#                             {
#                             
#                                 /* Set a Flag to TRUE about which upper layers will get    
#                                              information via CanTrcv_31_TJA1145_Checkwakeup */                 
#                                 Status_p->CanTrcvWakeUpOccured_bt = TRUE;
#                             
#                             }
#                             else
#                             {
# 
#                                 /* Do Nothing. */
# 
#                             }
#                         
# #endif /* CANTRCV_31_TJA1145_GENERAL_WAKE_UP_SUPPORT */
# 
#                         }
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
	.d2line		202
.Llo42:
	diab.addi		r3,r31,1		# LtConfig_p=r3 CanNetwork_u16=r31
	se_addi		r31,1		# CanNetwork_u16=r31 CanNetwork_u16=r31
# 
#             }while (CANTRCV_31_TJA1145_MAXCHANNELS_U16 > CanNetwork_u16) ;
	.d2line		204
	lis		r3,CanTrcv_31_TJA1145_MaxChannels_u16@ha		# LtConfig_p=r3
.Llo36:
	lhz		r0,CanTrcv_31_TJA1145_MaxChannels_u16@l(r3)		# LtConfig_p=r3
	rlwinm		r3,r31,0,16,31		# CanNetwork_u16=r3 CanNetwork_u16=r31
.Llo37:
	se_cmp		r0,r3		# CanNetwork_u16=r3
	bc		1,1,.L671	# gt
.L669:
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
# }/* End of CanTrcv_31_TJA1145_Init () */
	.d2line		216
	.d2epilogue_begin
.Llo31:
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
.L758:
	.type		CanTrcv_31_TJA1145_Init,@function
	.size		CanTrcv_31_TJA1145_Init,.-CanTrcv_31_TJA1145_Init
# Number of nodes = 61

# Allocations for CanTrcv_31_TJA1145_Init
#	?a4		ConfigPtr
#	?a5		CanNetwork_u16
#	SP,8		WakeUpOcurredFlag
#	?a6		LtConfig_p
#	?a7		PbConfig_p

# Allocations for module
	.section	.text_vle
	.0byte		.L775
	.section	.text_vle
#$$ld
.L5:
.L800:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\inc\\internal\\CanTrcv_31_TJA1145_Private.h"
.L795:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L780:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\..\\..\\inc\\CanTrcv_Types.h"
.L774:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\inc\\CanTrcv_31_TJA1145.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L696:
.L704:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_Init.c"
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
	.uleb128	10
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
	.uleb128	16
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_Init.c"
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
.L693:
	.4byte		.L694-.L692
.L692:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L698-.L693
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_Init.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L695
	.4byte		.L696
	.4byte		.L699
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L705:
	.sleb128	2
	.4byte		.L701-.L693
	.byte		"CanTrcv_31_TJA1145_Initialize_HW"
	.byte		0
	.4byte		.L704
	.uleb128	245
	.uleb128	45
	.byte		0x1
	.4byte		.L702
	.4byte		.L703
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L704
	.uleb128	245
	.uleb128	45
	.byte		"CanNetwork_u8"
	.byte		0
	.4byte		.L706
	.4byte		.L709
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	4
	.4byte		.L704
	.uleb128	245
	.uleb128	45
	.byte		"ConfigHw_p"
	.byte		0
	.4byte		.L710
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	4
	.4byte		.L704
	.uleb128	245
	.uleb128	45
	.byte		"WakeUpOcurredFlag"
	.byte		0
	.4byte		.L715
	.sleb128	2
	.byte		0x90
	.uleb128	5
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L718:
	.sleb128	5
	.4byte		.L704
	.uleb128	252
	.uleb128	102
	.byte		"Status_p"
	.byte		0
	.4byte		.L719
	.4byte		.L722
.L723:
	.sleb128	5
	.4byte		.L704
	.uleb128	255
	.uleb128	103
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L724
	.4byte		.L728
.L729:
	.sleb128	5
	.4byte		.L704
	.uleb128	258
	.uleb128	44
	.byte		"TransmissionStatus"
	.byte		0
	.4byte		.L730
	.4byte		.L732
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L733:
	.sleb128	6
	.4byte		.L704
	.uleb128	261
	.uleb128	28
	.byte		"DataToBeSent"
	.byte		0
	.4byte		.L734
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L738:
	.sleb128	6
	.4byte		.L704
	.uleb128	263
	.uleb128	29
	.byte		"UnSupportedBaudRate"
	.byte		0
	.4byte		.L717
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	9
.L739:
	.sleb128	6
	.4byte		.L704
	.uleb128	281
	.uleb128	27
	.byte		"DataIndex_u8"
	.byte		0
	.4byte		.L707
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L740:
	.sleb128	5
	.4byte		.L704
	.uleb128	284
	.uleb128	27
	.byte		"TransmitIndex_u8"
	.byte		0
	.4byte		.L707
	.4byte		.L741
.L742:
	.sleb128	5
	.4byte		.L704
	.uleb128	287
	.uleb128	44
	.byte		"TmpEcuMWakupSrcType"
	.byte		0
	.4byte		.L743
	.4byte		.L746
.L747:
	.sleb128	5
	.4byte		.L704
	.uleb128	289
	.uleb128	27
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L707
	.4byte		.L748
.L749:
	.sleb128	5
	.4byte		.L704
	.uleb128	292
	.uleb128	28
	.byte		"OverTempFlag_u8"
	.byte		0
	.4byte		.L707
	.4byte		.L750
.L751:
	.sleb128	5
	.4byte		.L704
	.uleb128	295
	.uleb128	28
	.byte		"CanFailureFlag_u8"
	.byte		0
	.4byte		.L707
	.4byte		.L752
.L753:
	.sleb128	5
	.4byte		.L704
	.uleb128	298
	.uleb128	28
	.byte		"PowerOnFlag_u8"
	.byte		0
	.4byte		.L707
	.4byte		.L754
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L701:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L759:
	.sleb128	7
	.4byte		.L756-.L693
	.byte		"CanTrcv_31_TJA1145_Init"
	.byte		0
	.4byte		.L704
	.uleb128	89
	.uleb128	37
	.byte		0x1
	.byte		0x1
	.4byte		.L757
	.4byte		.L758
	.sleb128	3
	.4byte		.L704
	.uleb128	89
	.uleb128	37
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L760
	.4byte		.L765
.L766:
	.sleb128	5
	.4byte		.L704
	.uleb128	93
	.uleb128	28
	.byte		"CanNetwork_u16"
	.byte		0
	.4byte		.L736
	.4byte		.L767
.L768:
	.sleb128	6
	.4byte		.L704
	.uleb128	101
	.uleb128	30
	.byte		"WakeUpOcurredFlag"
	.byte		0
	.4byte		.L717
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L769:
	.sleb128	5
	.4byte		.L704
	.uleb128	109
	.uleb128	103
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L724
	.4byte		.L770
.L771:
	.sleb128	5
	.4byte		.L704
	.uleb128	112
	.uleb128	107
	.byte		"PbConfig_p"
	.byte		0
	.4byte		.L711
	.4byte		.L772
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L756:
	.section	.debug_info,,n
.L773:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L774
	.uleb128	749
	.uleb128	88
	.byte		"CanTrcv_31_TJA1145_Status_p"
	.byte		0
	.4byte		.L719
	.0byte		.L773
.L775:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L774
	.uleb128	762
	.uleb128	88
	.byte		"CanTrcv_31_TJA1145_LtConfig_p"
	.byte		0
	.4byte		.L776
	.section	.debug_info,,n
.L777:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L774
	.uleb128	769
	.uleb128	48
	.byte		"CanTrcv_31_TJA1145_MaxChannels_u16"
	.byte		0
	.4byte		.L778
.L779:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L774
	.uleb128	790
	.uleb128	84
	.byte		"CanTrcv_31_TJA1145_PbConfig_p"
	.byte		0
	.4byte		.L711
	.section	.debug_info,,n
.L721:
	.sleb128	9
	.4byte		.L780
	.uleb128	61
	.uleb128	13
	.4byte		.L781-.L2
	.uleb128	32
	.section	.debug_info,,n
.L563:
	.sleb128	10
	.byte		"CanTrcvCurrentState"
	.byte		0
	.4byte		.L782
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L564:
	.sleb128	10
	.byte		"CanTrcvSetOpModeRxBuf"
	.byte		0
	.4byte		.L784
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L565:
	.sleb128	10
	.byte		"CanTrcvMainFuncRxBuf"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L566:
	.sleb128	10
	.byte		"CanTrcvMainFuncRxFlag"
	.byte		0
	.4byte		.L717
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L567:
	.sleb128	10
	.byte		"CanTrcvMainDiagnosticRxFlag"
	.byte		0
	.4byte		.L717
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L568:
	.sleb128	10
	.byte		"CanTrcvInitialised_bt"
	.byte		0
	.4byte		.L717
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L569:
	.sleb128	10
	.byte		"CanTrcvSpiRetriesCounter"
	.byte		0
	.4byte		.L707
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L570:
	.sleb128	10
	.byte		"CanTrcvSpiTimeCounter"
	.byte		0
	.4byte		.L707
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L781:
.L727:
	.sleb128	9
	.4byte		.L780
	.uleb128	61
	.uleb128	13
	.4byte		.L788-.L2
	.uleb128	20
.L547:
	.sleb128	10
	.byte		"CanTrcvInitState"
	.byte		0
	.4byte		.L789
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L548:
	.sleb128	10
	.byte		"CanTrcvMaxBaudrate"
	.byte		0
	.4byte		.L778
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L549:
	.sleb128	10
	.byte		"CanTrcvControlsPowerSupply"
	.byte		0
	.4byte		.L790
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L550:
	.sleb128	10
	.byte		"CanTrcvChannelUsed"
	.byte		0
	.4byte		.L790
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L551:
	.sleb128	10
	.byte		"CanTrcvWakeupByBusUsed"
	.byte		0
	.4byte		.L790
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L552:
	.sleb128	10
	.byte		"CanTrcvChannelId"
	.byte		0
	.4byte		.L706
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L553:
	.sleb128	10
	.byte		"CanTrcvPorWakeupSourceId"
	.byte		0
	.4byte		.L706
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L554:
	.sleb128	10
	.byte		"CanTrcvSyserrWakeupSourceId"
	.byte		0
	.4byte		.L706
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L555:
	.sleb128	10
	.byte		"CanTrcvWakeupSourceId"
	.byte		0
	.4byte		.L706
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L556:
	.sleb128	10
	.byte		"CanTrcvPinWakeupSourceId"
	.byte		0
	.4byte		.L706
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L557:
	.sleb128	10
	.byte		"CanTrcvSpiAccessSynchronous"
	.byte		0
	.4byte		.L790
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L558:
	.sleb128	10
	.byte		"CanTrcvSpiCommRetries"
	.byte		0
	.4byte		.L706
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L559:
	.sleb128	10
	.byte		"CanTrcvSpiCommTimeout"
	.byte		0
	.4byte		.L706
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L560:
	.sleb128	10
	.byte		"CanTrcvSpiChannelId"
	.byte		0
	.4byte		.L791
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L561:
	.sleb128	10
	.byte		"CanTrcvSpiSequenceId"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L562:
	.sleb128	10
	.byte		"CanIfTrcvID"
	.byte		0
	.4byte		.L706
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
	.sleb128	0
.L788:
.L764:
	.sleb128	9
	.4byte		.L795
	.uleb128	63
	.uleb128	1
	.4byte		.L796-.L2
	.uleb128	12
.L544:
	.sleb128	10
	.byte		"PbConfig_pc"
	.byte		0
	.4byte		.L711
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L545:
	.sleb128	10
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L797
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L546:
	.sleb128	10
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L797
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L796:
.L714:
	.sleb128	9
	.4byte		.L795
	.uleb128	63
	.uleb128	1
	.4byte		.L799-.L2
	.uleb128	2
.L542:
	.sleb128	10
	.byte		"CanTrcvWakeOnRisingEdge"
	.byte		0
	.4byte		.L790
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L543:
	.sleb128	10
	.byte		"CanTrcvWakeOnFallingEdge"
	.byte		0
	.4byte		.L790
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L799:
	.section	.debug_info,,n
.L731:
	.sleb128	11
	.4byte		.L800
	.uleb128	229
	.uleb128	14
	.4byte		.L801-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"CANTRCV_TX_SUCCEEDED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANTRCV_LAST_TX_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"CANTRCV_EBSETUP_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"CANTRCV_TX_FAILED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L801:
.L783:
	.sleb128	11
	.4byte		.L795
	.uleb128	23
	.uleb128	15
	.4byte		.L802-.L2
	.uleb128	4
	.sleb128	12
	.byte		"CANTRCV_TRCVMODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANTRCV_TRCVMODE_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"CANTRCV_TRCVMODE_STANDBY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L802:
	.section	.debug_info,,n
.L708:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L707:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L708
	.section	.debug_info,,n
.L706:
	.sleb128	15
	.4byte		.L707
.L713:
	.sleb128	14
	.byte		"CanTrcv_31_TJA1145_PbConfigType"
	.byte		0
	.4byte		.L714
.L712:
	.sleb128	15
	.4byte		.L713
	.section	.debug_info,,n
.L711:
	.sleb128	16
	.4byte		.L712
.L710:
	.sleb128	15
	.4byte		.L711
.L717:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L708
.L716:
	.sleb128	16
	.4byte		.L717
.L715:
	.sleb128	15
	.4byte		.L716
.L720:
	.sleb128	14
	.byte		"CanTrcv_31_TJA1145_StatusType"
	.byte		0
	.4byte		.L721
.L719:
	.sleb128	16
	.4byte		.L720
.L726:
	.sleb128	14
	.byte		"CanTrcv_31_TJA1145_LtCfgType"
	.byte		0
	.4byte		.L727
.L725:
	.sleb128	15
	.4byte		.L726
.L724:
	.sleb128	16
	.4byte		.L725
.L730:
	.sleb128	14
	.byte		"CanTrcv_SpiTransStatus"
	.byte		0
	.4byte		.L731
.L737:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L736:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L737
	.section	.debug_info,,n
.L734:
	.sleb128	17
	.4byte		.L735
	.4byte		.L736
	.section	.debug_info,,n
	.sleb128	18
	.uleb128	39
	.sleb128	0
.L735:
.L745:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L744:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L745
.L743:
	.sleb128	14
	.byte		"EcuM_WakeupSourceType"
	.byte		0
	.4byte		.L744
.L763:
	.sleb128	14
	.byte		"CanTrcv_31_TJA1145_ConfigType"
	.byte		0
	.4byte		.L764
.L762:
	.sleb128	15
	.4byte		.L763
.L761:
	.sleb128	16
	.4byte		.L762
.L760:
	.sleb128	15
	.4byte		.L761
.L776:
	.sleb128	15
	.4byte		.L724
.L778:
	.sleb128	15
	.4byte		.L736
.L782:
	.sleb128	14
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L783
	.section	.debug_info,,n
.L784:
	.sleb128	19
	.4byte		.L785-.L2
	.4byte		.L736
	.sleb128	18
	.uleb128	6
	.sleb128	0
.L785:
.L786:
	.sleb128	19
	.4byte		.L787-.L2
	.4byte		.L736
	.sleb128	18
	.uleb128	3
	.sleb128	0
.L787:
.L789:
	.sleb128	15
	.4byte		.L782
.L790:
	.sleb128	15
	.4byte		.L717
.L792:
	.sleb128	14
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L707
.L791:
	.sleb128	15
	.4byte		.L792
.L794:
	.sleb128	14
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L707
.L793:
	.sleb128	15
	.4byte		.L794
.L798:
	.sleb128	15
	.4byte		.L744
.L797:
	.sleb128	16
	.4byte		.L798
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L698:
	.sleb128	0
.L694:

	.section	.debug_loc,,n
	.align	0
.L709:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),5
	.d2locend
.L722:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),5
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),31
	.d2locend
.L728:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),4
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),28
	.d2locend
.L732:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo10),28
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo11),4
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),4
	.d2locend
.L741:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo13),30
	.d2locend
.L746:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo3),0
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),0
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo7),0
	.d2locend
.L748:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo24),29
	.d2locend
.L750:
.L752:
.L754:
	.d2locend
.L765:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locend
.L767:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo31),31
	.d2locend
.L770:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),0
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),3
	.d2locend
.L772:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),3
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),4
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo31),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTrcv_31_TJA1145_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanTrcv_31_TJA1145_ConsistencyCheck","CanTrcv_31_TJA1145_Initialize_HW"
	.wrcm.end
	.wrcm.nelem "CanTrcv_31_TJA1145_Initialize_HW"
	.wrcm.nint32 "frameSize", 112
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanTrcv_31_TJA1145_Configure_HW","CanTrcv_31_TJA1145_SpiTransmit","SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1","SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Init.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Init.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Init.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_Init.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTrcv\ssc\target\TJA1145\make\..\src\CanTrcv_31_TJA1145_Init.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
