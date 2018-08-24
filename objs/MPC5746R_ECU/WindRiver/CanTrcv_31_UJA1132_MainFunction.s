#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTrcv_31_UJA1132_MainFunction.c"
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
# FUNC(void, CANTRCV_31_UJA1132_CODE)CANTRCV_31_UJA1132_MAINFUNCTION(void)
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L751:
	.section	.invalid_TEXT,,c
#$$ld
.L747:
	.0byte		.L745
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_MainFunction.c"
        .d2line         76,36
#$$ld
.L754:

#$$bf	CanTrcv_31_UJA1132_MainFunction,interprocedural,rasave,nostackparams
	.globl		CanTrcv_31_UJA1132_MainFunction
	.d2_cfa_start __cie
CanTrcv_31_UJA1132_MainFunction:
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
# #if(STD_ON == CANTRCV_31_UJA1132_GENERAL_WAKE_UP_SUPPORT)
# 
#     VAR (CanTrcv_TrcvModeType, AUTOMATIC) TmpCanTrcvCurrentState;
# 
#     /* Variable holds the Can wake-up status*/
#     VAR (Dio_LevelType, AUTOMATIC) CanWakeUpFlag;
#    
# #endif /*end #if(STD_ON==CANTRCV_31_UJA1132_GENERAL_WAKE_UP_SUPPORT) */
#     
#     /* Temporary variable.*/
#     VAR(uint8 , AUTOMATIC) Count_u8;
#     
# #if (STD_OFF == CANTRCV_SBCSI_SUPPORT)
# 	/* Variable holds the status of the last transmssion of this sequence 
# 	   (pending, transmitted or failed)*/
# 	VAR(Spi_SeqResultType,AUTOMATIC)  SpiTxStatus;
# #endif /* #if (STD_OFF == CANTRCV_SBCSI_SUPPORT) */
#     
#     /* Pointer to the Configuration structure. */
#     P2CONST(CanTrcv_31_UJA1132_LtCfgType, CANTRCV_31_UJA1132_VAR_FAST, CANTRCV_31_UJA1132_APPL_CONST)LtConfig_p;
#     
#     /* Pointer to the status of each Channel. */
#     P2VAR(CanTrcv_31_UJA1132_StatusType, CANTRCV_31_UJA1132_VAR_FAST, CANTRCV_31_UJA1132_APPL_DATA) Status_p;
# 	
# 	/* Variable holds the WakeupSource */
# 	VAR (EcuM_WakeupSourceType, AUTOMATIC) TmpEcuMWakupSrcType;
# 	
#     for(Count_u8 = 0; Count_u8 < CANTRCV_31_UJA1132_MAXCHANNELS_U16; Count_u8++)     
	.d2line		105
	diab.li		r31,0		# Count_u8=r31
.L733:
	rlwinm		r4,r31,0,24,31		# Status_p=r4 Count_u8=r31
.Llo9:
	lis		r3,CanTrcv_31_UJA1132_MaxChannels_u16@ha		# LtConfig_p=r3
.Llo5:
	lhz		r0,CanTrcv_31_UJA1132_MaxChannels_u16@l(r3)		# LtConfig_p=r3
	se_cmp		r4,r0		# Status_p=r4
	bc		0,0,.L732	# ge
#     {
#     
#         LtConfig_p = &(CANTRCV_31_UJA1132_LT_CONFIG_P[Count_u8]);
	.d2line		108
.Llo6:
	rlwinm		r4,r31,0,24,31		# Status_p=r4 Count_u8=r31
.Llo10:
	lis		r3,CanTrcv_31_UJA1132_LtConfig_p@ha		# LtConfig_p=r3
.Llo7:
	lwz		r3,CanTrcv_31_UJA1132_LtConfig_p@l(r3)		# LtConfig_p=r3 LtConfig_p=r3
	rlwinm		r0,r4,5,0,26		# Status_p=r4
	se_slwi		r4,3		# Status_p=r4 Status_p=r4
	subf		r4,r4,r0		# Status_p=r4 Status_p=r4
	se_add		r3,r4		# LtConfig_p=r3 LtConfig_p=r3 Status_p=r4
	mr		r3,r3		# LtConfig_p=r3 LtConfig_p=r3
#         
#         Status_p = &(CANTRCV_31_UJA1132_STATUS_P[Count_u8]);
	.d2line		110
	lis		r4,CanTrcv_31_UJA1132_Status_p@ha		# Status_p=r4
	lwz		r0,CanTrcv_31_UJA1132_Status_p@l(r4)		# Status_p=r4
	rlwinm		r4,r31,3,21,28		# Status_p=r4 Count_u8=r31
	se_add		r0,r4		# Status_p=r4
	mr		r4,r0		# Status_p=r4 Status_p=r0
# 
#         if (TRUE == LtConfig_p->CanTrcvChannelUsed)
	.d2line		112
.Llo11:
	lbz		r0,7(r3)		# LtConfig_p=r3
	se_cmpi		r0,1
	bc		0,2,.L740	# ne
#         {
#             /* Check whether the module is initialized. */
#             if ( TRUE != Status_p->CanTrcvInitialised_bt)
	.d2line		115
.Llo12:
	lbz		r0,4(r4)		# Status_p=r4
	se_cmpi		r0,1
	bc		0,2,.L740	# ne
#             {
# /* Check whether DEV  error detection enabled. */
# #if(STD_ON == CANTRCV_31_UJA1132_DEV_ERROR_DETECT)            
#                 /* Report to DET. */
#                 Det_ReportError (CANTRCV_31_UJA1132_MODULE_ID, CANTRCV_31_UJA1132_INSTANCE_ID,
#                                   CANTRCV_31_UJA1132_MAIN_FUNCTION_SID, CANTRCV_31_UJA1132_E_UNINIT);
# #endif /* end if(CANTRCV_31_UJA1132_DEV_ERROR_DETECT == STD_ON) */
#             }
#             else
#             {
# 
# #if (STD_OFF == CANTRCV_SBCSI_SUPPORT)
#                 /* Get the status of the last transmission (if any) */
#                 SpiTxStatus = Spi_GetSequenceResult( LtConfig_p->CanTrcvSpiSequenceId ); 
	.d2line		129
.Llo13:
	lbz		r3,18(r3)		# LtConfig_p=r3 LtConfig_p=r3
.Llo8:
	bl		Spi_GetSequenceResult
.Llo3:
	mr		r3,r3		# SpiTxStatus=r3 SpiTxStatus=r3
.L740:
#               
#                 /* Check if last asynchronous Transmission succeeded */
#                 if ( SpiTxStatus == SPI_SEQ_OK )
#                 {
# #endif /* #if (STD_OFF == CANTRCV_SBCSI_SUPPORT) */
# 
# #if(STD_ON == CANTRCV_31_UJA1132_GENERAL_WAKE_UP_SUPPORT)
# 
# #if (STD_OFF == CANTRCV_SBCSI_SUPPORT)
# 
#                     /* Reset the SPI communication trials counter */
#                     Status_p->CanTrcvSpiRetriesCounter = 0;
#                     
#                     /* Reset the SPI timeout counter */
#                     Status_p->CanTrcvSpiTimeCounter = 0;
# 
# #endif /* #if (STD_OFF == CANTRCV_SBCSI_SUPPORT) */
#                     /* Protect the shared resourse - CanTrcvCurrentState */
#                     SchM_Enter_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
#                  
#                     TmpCanTrcvCurrentState = Status_p->CanTrcvCurrentState;
#                     
#                     /* Reading the Can Wake-up status bit */
#                     CanWakeUpFlag = Dio_ReadChannel(LtConfig_p->CanTrcvRxDioChannelId);
#                     
#                     SchM_Exit_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
#             
#                     /* Check if there is a current Wake-up from HW */
#                     if(
#                         ((CANTRCV_TRCVMODE_STANDBY == TmpCanTrcvCurrentState) ||
#                         (CANTRCV_TRCVMODE_SLEEP == TmpCanTrcvCurrentState)) &&
#                         (STD_LOW == CanWakeUpFlag)
#                       )
#                     {
#                         SchM_Enter_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_0();
#                         if(CANTRCV_WUMODE_ENABLE == Status_p->CanTrcvWakeupMode)
#                         {
#                             SchM_Exit_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_0();
#                             
#                             Status_p->CanTrcvStoredWakeup_bt = FALSE;
#                             
#                             TmpEcuMWakupSrcType = CANTRCV_31_UJA1132_ZERO;
#                             
#                             /* Get wakeup Source ID */
#                             CANTRCV_31_UJA1132_SET_BITN(TmpEcuMWakupSrcType,LtConfig_p->CanTrcvWakeupSourceId);
#                             
#                             /* Call EcuM_CheckWakeup */
#                             EcuM_CheckWakeup (TmpEcuMWakupSrcType);
#                         }
#                         else
#                         {
#                             SchM_Exit_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_0();
#                             
#                             Status_p->CanTrcvStoredWakeup_bt = TRUE;
#                         }
#                     
#                     }
#                                        
# #endif /*end #if(STD_ON==CANTRCV_31_UJA1132_GENERAL_WAKE_UP_SUPPORT) */
# 
# #if (STD_OFF == CANTRCV_SBCSI_SUPPORT)
#                 }
# #endif /* #if (STD_OFF == CANTRCV_SBCSI_SUPPORT) */
#                 
# #if(STD_ON == CANTRCV_31_UJA1132_GENERAL_WAKE_UP_SUPPORT)
# #if (STD_OFF == CANTRCV_SBCSI_SUPPORT)
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
# #if(STD_ON == CANTRCV_31_UJA1132_DEV_ERROR_DETECT)                
#                     /* Maximum number of trials acheived. Report SPI Communication error */
#                     Det_ReportError (CANTRCV_31_UJA1132_MODULE_ID, 
#                                      CANTRCV_31_UJA1132_INSTANCE_ID,
#                                      CANTRCV_31_UJA1132_MAIN_FUNCTION_SID, 
#                                      CANTRCV_31_UJA1132_E_NO_TRCV_CONTROL);
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
# #if(STD_ON == CANTRCV_31_UJA1132_DEV_ERROR_DETECT)                 
#                     /* Timout occured. Report SPI Communication error */
#                     Det_ReportError (CANTRCV_31_UJA1132_MODULE_ID, 
#                                      CANTRCV_31_UJA1132_INSTANCE_ID,
#                                      CANTRCV_31_UJA1132_MAIN_FUNCTION_SID, 
#                                      CANTRCV_31_UJA1132_E_NO_TRCV_CONTROL);
# #endif
# 
#                     Status_p->CanTrcvSpiTimeCounter = 0;
#                                      
#                 }
# #endif /* #if (STD_OFF == CANTRCV_SBCSI_SUPPORT) */
# #endif /* #if(STD_ON==CANTRCV_31_UJA1132_GENERAL_WAKE_UP_SUPPORT) */
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
	.d2line		261
.Llo4:
	diab.addi		r4,r31,1		# Status_p=r4 Count_u8=r31
	se_addi		r31,1		# Count_u8=r31 Count_u8=r31
	b		.L733
.L732:
# 
# }/* End of CanTrcv_31_UJA1132_MainFunction () */
	.d2line		263
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
.L755:
	.type		CanTrcv_31_UJA1132_MainFunction,@function
	.size		CanTrcv_31_UJA1132_MainFunction,.-CanTrcv_31_UJA1132_MainFunction
# Number of nodes = 54

# Allocations for CanTrcv_31_UJA1132_MainFunction
#	?a4		$$237
#	?a5		Count_u8
#	?a6		SpiTxStatus
#	?a7		LtConfig_p
#	?a8		Status_p

# Allocations for module
	.section	.text_vle
	.0byte		.L779
	.section	.text_vle
#$$ld
.L5:
.L804:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Spi.h"
.L802:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L785:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\..\\..\\inc\\CanTrcv_Types.h"
.L778:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\inc\\CanTrcv_31_UJA1132.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L748:
.L756:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_MainFunction.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_MainFunction.c"
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
.L745:
	.4byte		.L746-.L744
.L744:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L750-.L745
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_MainFunction.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L747
	.4byte		.L748
	.4byte		.L751
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L757:
	.sleb128	2
	.4byte		.L753-.L745
	.byte		"CanTrcv_31_UJA1132_MainFunction"
	.byte		0
	.4byte		.L756
	.uleb128	76
	.uleb128	36
	.byte		0x1
	.byte		0x1
	.4byte		.L754
	.4byte		.L755
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L758:
	.sleb128	3
	.4byte		.L756
	.uleb128	88
	.uleb128	28
	.byte		"Count_u8"
	.byte		0
	.4byte		.L759
	.4byte		.L761
.L762:
	.sleb128	3
	.4byte		.L756
	.uleb128	93
	.uleb128	36
	.byte		"SpiTxStatus"
	.byte		0
	.4byte		.L763
	.4byte		.L765
.L766:
	.sleb128	3
	.4byte		.L756
	.uleb128	97
	.uleb128	102
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L767
	.4byte		.L771
.L772:
	.sleb128	3
	.4byte		.L756
	.uleb128	100
	.uleb128	101
	.byte		"Status_p"
	.byte		0
	.4byte		.L773
	.4byte		.L776
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L753:
	.section	.debug_info,,n
.L777:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L778
	.uleb128	641
	.uleb128	88
	.byte		"CanTrcv_31_UJA1132_Status_p"
	.byte		0
	.4byte		.L773
	.0byte		.L777
.L779:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L778
	.uleb128	654
	.uleb128	88
	.byte		"CanTrcv_31_UJA1132_LtConfig_p"
	.byte		0
	.4byte		.L780
	.section	.debug_info,,n
.L781:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L778
	.uleb128	661
	.uleb128	48
	.byte		"CanTrcv_31_UJA1132_MaxChannels_u16"
	.byte		0
	.4byte		.L782
	.section	.debug_info,,n
.L775:
	.sleb128	5
	.4byte		.L785
	.uleb128	61
	.uleb128	13
	.4byte		.L786-.L2
	.uleb128	8
	.section	.debug_info,,n
.L630:
	.sleb128	6
	.byte		"CanTrcvCurrentState"
	.byte		0
	.4byte		.L787
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L631:
	.sleb128	6
	.byte		"CanTrcvInitialised_bt"
	.byte		0
	.4byte		.L789
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L632:
	.sleb128	6
	.byte		"CanTrcvSpiRetriesCounter"
	.byte		0
	.4byte		.L759
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L633:
	.sleb128	6
	.byte		"CanTrcvSpiTimeCounter"
	.byte		0
	.4byte		.L759
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L786:
.L770:
	.sleb128	5
	.4byte		.L785
	.uleb128	61
	.uleb128	13
	.4byte		.L790-.L2
	.uleb128	24
.L615:
	.sleb128	6
	.byte		"CanTrcvInitState"
	.byte		0
	.4byte		.L791
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L616:
	.sleb128	6
	.byte		"CanTrcvMaxBaudrate"
	.byte		0
	.4byte		.L782
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L617:
	.sleb128	6
	.byte		"CanTrcvControlsPowerSupply"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L618:
	.sleb128	6
	.byte		"CanTrcvChannelUsed"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L619:
	.sleb128	6
	.byte		"CanTrcvWakeupByBusUsed"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L620:
	.sleb128	6
	.byte		"CanTrcvChannelId"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L621:
	.sleb128	6
	.byte		"CanTrcvWakeupSourceId"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L622:
	.sleb128	6
	.byte		"CanTrcvIcuChannelId"
	.byte		0
	.4byte		.L794
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L623:
	.sleb128	6
	.byte		"CanTrcvSpiAccessSynchronous"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L624:
	.sleb128	6
	.byte		"CanTrcvSpiCommRetries"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L625:
	.sleb128	6
	.byte		"CanTrcvSpiCommTimeout"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L626:
	.sleb128	6
	.byte		"CanTrcvSpiChannelId"
	.byte		0
	.4byte		.L796
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L627:
	.sleb128	6
	.byte		"CanTrcvSpiSequenceId"
	.byte		0
	.4byte		.L798
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L628:
	.sleb128	6
	.byte		"CanTrcvRxDioChannelId"
	.byte		0
	.4byte		.L800
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L629:
	.sleb128	6
	.byte		"CanIfTrcvID"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
	.sleb128	0
.L790:
	.section	.debug_info,,n
.L788:
	.sleb128	7
	.4byte		.L802
	.uleb128	23
	.uleb128	15
	.4byte		.L803-.L2
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
.L803:
.L764:
	.sleb128	7
	.4byte		.L804
	.uleb128	439
	.uleb128	1
	.4byte		.L805-.L2
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
.L805:
	.section	.debug_info,,n
.L760:
	.sleb128	9
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L759:
	.sleb128	10
	.byte		"uint8"
	.byte		0
	.4byte		.L760
.L763:
	.sleb128	10
	.byte		"Spi_SeqResultType"
	.byte		0
	.4byte		.L764
.L769:
	.sleb128	10
	.byte		"CanTrcv_31_UJA1132_LtCfgType"
	.byte		0
	.4byte		.L770
	.section	.debug_info,,n
.L768:
	.sleb128	11
	.4byte		.L769
	.section	.debug_info,,n
.L767:
	.sleb128	12
	.4byte		.L768
.L774:
	.sleb128	10
	.byte		"CanTrcv_31_UJA1132_StatusType"
	.byte		0
	.4byte		.L775
.L773:
	.sleb128	12
	.4byte		.L774
.L780:
	.sleb128	11
	.4byte		.L767
.L784:
	.sleb128	9
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L783:
	.sleb128	10
	.byte		"uint16"
	.byte		0
	.4byte		.L784
.L782:
	.sleb128	11
	.4byte		.L783
.L787:
	.sleb128	10
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L788
.L789:
	.sleb128	10
	.byte		"boolean"
	.byte		0
	.4byte		.L760
.L791:
	.sleb128	11
	.4byte		.L787
.L792:
	.sleb128	11
	.4byte		.L789
.L793:
	.sleb128	11
	.4byte		.L759
.L795:
	.sleb128	10
	.byte		"Icu_ChannelType"
	.byte		0
	.4byte		.L783
.L794:
	.sleb128	11
	.4byte		.L795
.L797:
	.sleb128	10
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L759
.L796:
	.sleb128	11
	.4byte		.L797
.L799:
	.sleb128	10
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L759
.L798:
	.sleb128	11
	.4byte		.L799
.L801:
	.sleb128	10
	.byte		"Dio_ChannelType"
	.byte		0
	.4byte		.L783
.L800:
	.sleb128	11
	.4byte		.L801
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L750:
	.sleb128	0
.L746:

	.section	.debug_loc,,n
	.align	0
.L761:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),31
	.d2locend
.L765:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L771:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo2),3
	.d2locend
.L776:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo6),4
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),4
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTrcv_31_UJA1132_MainFunction"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_MainFunction.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_MainFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_MainFunction.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_MainFunction.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_MainFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_MainFunction.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTrcv\ssc\target\UJA1132\make\..\src\CanTrcv_31_UJA1132_MainFunction.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
