#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinTrcv_31_UJA1132_SetOpMode.c"
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
# FUNC(Std_ReturnType, LINTRCV_CODE) LINTRCV_31_UJA1132_SETOPMODE
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L569:
	.section	.invalid_TEXT,,c
#$$ld
.L565:
	.0byte		.L563
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132_SetOpMode.c"
        .d2line         65,36
#$$ld
.L572:

#$$bf	LinTrcv_31_UJA1132_SetOpMode,interprocedural,rasave,nostackparams
	.globl		LinTrcv_31_UJA1132_SetOpMode
	.d2_cfa_start __cie
LinTrcv_31_UJA1132_SetOpMode:
.Llo1:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
.Llo25:
	stmw		r26,40(r1)		# offset r1+40  0x28
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,68(r1)		# LinNetworkIndex=r0
	.d2_cfa_offset    108,-1
	mr		r31,r4		# OpMode=r31 OpMode=r4
	.d2prologue_end
# (
#   VAR(uint8, AUTOMATIC) LinNetwork,
#   VAR(LinTrcv_TrcvModeType, AUTOMATIC) OpMode
# )
# {
#     VAR(Std_ReturnType, AUTOMATIC) ReturnValue; 
#  /* Pointer to the Status array for each Channel. */
#     P2VAR(LinTrcv_31_UJA1132_ChannelStatus, AUTOMATIC, LINTRCV_VAR_FAST)Status_p;
#     /* Variable works as decrement counter to allow hardware changes mode */
#     VAR (uint32, AUTOMATIC) DelayCount_u32;   
#     /* Pointer to index the constant Congiguration Array. */
#     P2CONST (LinTrcv_31_UJA1132_ChannelConfig, AUTOMATIC, LINTRCV_VAR_FAST)ChannelConfigPtr ;    
#     /* Get index of configuration from the Network ID */
#     CONST (uint8, AUTOMATIC) LinNetworkIndex = LINTRCV_GET_CHANNEL_INDEX(LinNetwork);
	.d2line		79
.Llo7:
	rlwinm		r3,r3,0,24,31		# LinNetwork=r3 LinNetwork=r3
.Llo2:
	bl		LinTrcv_31_UJA1132_GetChannelIndex
.Llo26:
	mr		r0,r3		# LinNetworkIndex=r0 LinNetworkIndex=r3
# #if(STD_OFF == LINTRCV_31_UJA1132_SBCSI_USAGE) 
#     VAR (LinTrcv_TrcvModeType, AUTOMATIC) TmpLinTrcvCurrentState;  
#      /* Variable holds the data to be sent. The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeSent[LINTRCV_31_UJA1132_SET_OPMODE_DATA_TO_BE_SENT_LENGTH];
#     /* Variable holds the data to be received from LinTrcv via SPI.
#        The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeReceived[LINTRCV_31_UJA1132_SET_OPMODE_DATA_TO_BE_RECEIVED_LENGTH];
#     /* Variable to hold the data of any register to be written*/
#     VAR (uint16, AUTOMATIC)RegData_u16;
#     /* Variable to hold the number or SPI data elements to be sent/received*/
#     VAR (uint8, AUTOMATIC)DataIndex_u8;
#     /* Variable to hold the LinTrcv-Spi communication status*/
#     VAR(LinTrcv_SpiTransStatus,AUTOMATIC)  TransmissionStatus;
#     RegData_u16 = 0x0000;
	.d2line		93
.Llo27:
	diab.li		r30,0		# RegData_u16=r30
#     DataIndex_u8 = 0;
	.d2line		94
.Llo41:
	diab.li		r29,0
.Llo9:
	stb		r29,8(r1)
# #endif   
#     
#     
# 
# #if (STD_ON == LINTRCV_31_UJA1132_DEV_ERROR_DETECT)
# 
#      /* Check for any Development errors. */
#     ReturnValue = LinTrcv_31_UJA1132_SetOpModeDECheck(LinNetworkIndex, OpMode);
#     if (E_OK == ReturnValue)
#     {
# #else
# 
#     ReturnValue = E_OK;
# 
# #endif /* end #if(LINTRCV_31_UJA1132_DEV_ERROR_DETECT == STD_ON) */
#         Status_p = &(LINTRCV_31_UJA1132_STATUS_P[LinNetworkIndex]) ; /* PRQA S 2824 */ /* Typically caused by our current pattern for PB structures */
	.d2line		110
	lis		r3,LinTrcv_31_UJA1132_Status_p@ha		# LinNetwork=r3
.Llo3:
	lwz		r28,LinTrcv_31_UJA1132_Status_p@l(r3)		# Status_p=r28 LinNetwork=r3
.Llo17:
	rlwinm		r3,r0,3,21,28		# LinNetwork=r3 LinNetworkIndex=r0
	se_add		r3,r28		# LinNetwork=r3 LinNetwork=r3 Status_p=r28
.Llo4:
	mr		r28,r3		# Status_p=r28 Status_p=r3
#         ChannelConfigPtr = &(LINTRCV_31_UJA1132_CONFIG_P[LinNetworkIndex]); /* PRQA S 2824 */ /* Typically caused by our current pattern for PB structures */        
	.d2line		111
	rlwinm		r0,r0,0,24,31		# LinNetworkIndex=r0 LinNetworkIndex=r0
	lis		r3,LinTrcv_31_UJA1132_ConfigPtr@ha		# LinNetwork=r3
.Llo5:
	lwz		r27,LinTrcv_31_UJA1132_ConfigPtr@l(r3)		# LinNetworkIndex=r27 LinNetwork=r3
	rlwinm		r3,r0,4,0,27		# LinNetwork=r3 LinNetworkIndex=r0
	se_slwi		r0,2		# LinNetworkIndex=r0 LinNetworkIndex=r0
	subf		r0,r0,r3		# LinNetworkIndex=r0 LinNetworkIndex=r0 LinNetwork=r3
	se_add		r0,r27		# LinNetworkIndex=r0 LinNetworkIndex=r0 LinNetworkIndex=r27
.Llo20:
	mr		r27,r0		# ChannelConfigPtr=r27 ChannelConfigPtr=r0
# #if(STD_OFF == LINTRCV_31_UJA1132_SBCSI_USAGE) 
#         TmpLinTrcvCurrentState = Status_p->CurrentState; /* PRQA S 2814 */ /* Typically caused by our current pattern for PB structures */
	.d2line		113
.Llo21:
	lwz		r26,0(r28)		# Status_p=r28
.Llo22:
	mr		r26,r26		# TmpLinTrcvCurrentState=r26 TmpLinTrcvCurrentState=r26
#         /*reading main control register of SBC */
#         LinTrcv_31_UJA1132_PrepareSpiData(&DataToBeSent[DataIndex_u8], LINTRCV_31_UJA1132_MODE_CONTROL_REGADDR, 0x00, &DataIndex_u8, TRUE);            
	.d2line		115
	diab.addi		r3,r1,12		# LinNetwork=r3
.Llo6:
	diab.addi		r6,r1,8
	diab.li		r4,1
	diab.li		r5,0
	diab.li		r7,1
	bl		LinTrcv_31_UJA1132_PrepareSpiData
#         TransmissionStatus = LinTrcv_31_UJA1132_SpiTransmit (ChannelConfigPtr, DataToBeSent, DataToBeReceived, DataIndex_u8 );
	.d2line		116
	lbz		r6,8(r1)
	diab.addi		r4,r1,12
	diab.addi		r5,r1,16
	mr		r3,r27		# ChannelConfigPtr=r3 ChannelConfigPtr=r27
	bl		LinTrcv_31_UJA1132_SpiTransmit
.Llo46:
	mr		r3,r3		# TransmissionStatus=r3 TransmissionStatus=r3
# #endif        
# switch (OpMode)
	.d2line		118
	mr.		r6,r31		# OpMode=r6 OpMode=?a5
	bc		1,2,.L507	# eq
	se_cmpi		r6,1
	bc		1,2,.L518	# eq
.Llo47:
	se_cmpi		r6,2
	bc		1,2,.L503	# eq
	b		.L521
.L503:
#         {
# 
#             case LINTRCV_TRCV_MODE_SLEEP:
# #if(STD_ON == LINTRCV_31_UJA1132_SBCSI_USAGE) 
#              if(ChannelConfigPtr->LinTrcvName == LIN1)/* PRQA S 2814 */ /* Typically caused by our current pattern for PB structures */
#                 {
#                   ReturnValue =  SBCSI_SetInTrcvState(SBCSI_INT_LIN_TRCV_1,SBCSI_INT_TRCV_MODE_CAN_OFF_LIN_OFF);
#                 }
#             else 
#                 {
#                  ReturnValue =  SBCSI_SetInTrcvState(SBCSI_INT_LIN_TRCV_2,SBCSI_INT_TRCV_MODE_CAN_OFF_LIN_OFF);   
#                 } 
# #else
#                    RegData_u16 = LINTRCV_31_UJA1132_ALL_ONES_U16VAL;
	.d2line		132
	diab.li		r0,65535		# RegData_u16=r0
#                    if(ChannelConfigPtr->LinTrcvName == LIN1) /* PRQA S 2814 */ /* Typically caused by our current pattern for PB structures */
	.d2line		133
	lbz		r0,1(r27)		# RegData_u16=r0 ChannelConfigPtr=r27
	se_cmpi		r0,0		# RegData_u16=r0
#                    {
#                     /* Setting to sleep mode */
#                    
#                     RegData_u16 = RegData_u16 & (uint16)LINTRCV_31_UJA1132_LIN1_SLEEP;  /*in LINTRCV_31_UJA1132_TRCV_CONTROL_REGADDR*/                  
	.d2line		137
	diab.li		r3,65532		# LinNetworkIndex=r3
.Llo28:
	isel		r3,r3,r30,2		# RegData_u16=r3 LinNetworkIndex=r3 RegData_u16=r30
.L504:
#                    }
#                    else
#                    {
#                    /* Setting to sleep mode */
#                     RegData_u16 = RegData_u16 & (uint16)LINTRCV_31_UJA1132_LIN2_SLEEP;                    
	.d2line		142
.Llo29:
	diab.li		r0,65487		# RegData_u16=r0
.Llo42:
	isel		r30,r3,r0,2		# RegData_u16=r30 RegData_u16=r3 RegData_u16=r0
	b		.L506
.L507:
#                    } 
# #endif   /*LINTRCV_31_UJA1132_SBCSI_USAGE*/                
# #if(STD_ON == LINTRCV_31_UJA1132_WU_SUPPORT)
#                 /* Clear any stored wakeup reason */
#                 /* PRQA S 2814 2 */ /* Typically caused by our current pattern for PB structures */
#                 Status_p->WakeupReason = LINTRCV_WU_ERROR;
# #endif /* LINTRCV_31_UJA1132_WU_SUPPORT */
# #if(STD_ON == LINTRCV_31_UJA1132_ICU_ENABLE)
#                 /*Disable the notification on the channel*/
#                 /* PRQA S 3344 2 */ /* Not a MISRA 13.2 violation; operand is boolean */
#                 if (ChannelConfigPtr->IsIcuRefExist  == TRUE)
#                 {                
#                     Icu_EnableNotification(ChannelConfigPtr->IcuChannelRef);
#                 }
# #endif /*  LINTRCV_31_UJA1132_ICU_ENABLE */
#                 break;
#                 
#             case LINTRCV_TRCV_MODE_NORMAL :
# #if(STD_ON == LINTRCV_31_UJA1132_WU_SUPPORT)                
#                 Status_p->WakeupReason = LINTRCV_WU_INTERNALLY;
# #endif /* LINTRCV_31_UJA1132_WU_SUPPORT */ 
# #if(STD_ON == LINTRCV_31_UJA1132_SBCSI_USAGE) 
#             if(ChannelConfigPtr->LinTrcvName == LIN1)
#                 {
#                   ReturnValue =  SBCSI_SetInTrcvState(SBCSI_INT_LIN_TRCV_1,SBCSI_INT_TRCV_MODE_CAN_ACTIVE_NORMAL_LIN_ACTIVE_NORMAL);
#                 }
#             else 
#                 {
#                  ReturnValue =  SBCSI_SetInTrcvState(SBCSI_INT_LIN_TRCV_2,SBCSI_INT_TRCV_MODE_CAN_ACTIVE_NORMAL_LIN_ACTIVE_NORMAL);   
#                 } 
# #else
#            if ( TransmissionStatus != LINTRCV_TX_SUCCEEDED )
	.d2line		174
.Llo43:
	se_cmpi		r3,0		# TransmissionStatus=r3
.Llo44:
	bc		1,2,.L508	# eq
#             {            
#                 ReturnValue = E_NOT_OK;
	.d2line		176
.Llo48:
	diab.li		r29,1		# ReturnValue=r29
	b		.L506
.L508:
#             }
#             else
#             {
#               if((DataToBeReceived[0] & LINTRCV_31_UJA1132_SBC_MODE_NORMAL) == LINTRCV_31_UJA1132_SBC_MODE_NORMAL)
	.d2line		180
	lhz		r0,16(r1)		# LinNetworkIndex=r0
.Llo30:
	rlwinm		r0,r0,0,29,31		# LinNetworkIndex=r0 LinNetworkIndex=r0
	se_cmpi		r0,7		# LinNetworkIndex=r0
	bc		0,2,.L510	# ne
#                 {
#                  /* Setting to Normal mode */
#                 
#                  if(ChannelConfigPtr->LinTrcvName == LIN1)
	.d2line		184
.Llo31:
	lbz		r0,1(r27)		# LinNetworkIndex=r0 ChannelConfigPtr=r27
.Llo32:
	se_cmpi		r0,0		# LinNetworkIndex=r0
	bc		0,2,.L511	# ne
#                    {
#                    /* PRQA S 4130 1 */
#                     RegData_u16 = RegData_u16 | (uint16)LINTRCV_31_UJA1132_LIN1_NORMAL_SBC_NORMAL;    
	.d2line		187
.Llo33:
	.diab.bseti		r30,31		# RegData_u16=r30
	mr		r0,r30		# RegData_u16=r0 RegData_u16=r30
	b		.L506
.L511:
#                    }
#                    else
#                    {
#                    /* PRQA S 4130 1 */
#                      RegData_u16 = RegData_u16 | (uint16)LINTRCV_31_UJA1132_LIN2_NORMAL_SBC_NORMAL; 
	.d2line		192
	.diab.bseti		r30,27		# RegData_u16=r30
	mr		r0,r30		# RegData_u16=r0 RegData_u16=r30
	b		.L506
.L510:
#                    }
#                 }
#                else if((DataToBeReceived[0] & LINTRCV_31_UJA1132_SBC_MODE_STANDBY) == LINTRCV_31_UJA1132_SBC_MODE_STANDBY)
	.d2line		195
	lhz		r0,16(r1)		# LinNetworkIndex=r0
.Llo34:
	se_btsti		r0,29		# LinNetworkIndex=r0
	bc		1,2,.L514	# eq
#                 {
#                    /* Setting to Normal mode */
#                 
#                  if(ChannelConfigPtr->LinTrcvName == LIN1)
	.d2line		199
.Llo35:
	lbz		r0,1(r27)		# LinNetworkIndex=r0 ChannelConfigPtr=r27
.Llo36:
	se_cmpi		r0,0		# LinNetworkIndex=r0
	bc		0,2,.L515	# ne
#                    {
#                    /* PRQA S 4130 1 */
#                     RegData_u16 = RegData_u16 | (uint16)LINTRCV_31_UJA1132_LIN1_NORMAL_SBC_STANDBY;    
	.d2line		202
.Llo37:
	.diab.bseti		r30,30		# RegData_u16=r30
	mr		r0,r30		# RegData_u16=r0 RegData_u16=r30
	b		.L506
.L515:
#                    }
#                    else
#                    {
#                    /* PRQA S 4130 1 */
#                      RegData_u16 = RegData_u16 | (uint16)LINTRCV_31_UJA1132_LIN2_NORMAL_SBC_STANDBY; 
	.d2line		207
	.diab.bseti		r30,26		# RegData_u16=r30
	mr		r0,r30		# RegData_u16=r0 RegData_u16=r30
	b		.L506
.L514:
#                    }
#                 }
#                 
#                 else
#                 {
#                   ReturnValue = E_NOT_OK; /*SBC is in sleep mode*/
	.d2line		213
	diab.li		r29,1		# ReturnValue=r29
	b		.L506
.L518:
#                 }         
#             }
# #endif            
# #if(STD_ON == LINTRCV_31_UJA1132_ICU_ENABLE)
#                 /*Disable the notification on the channel*/
#                 /* PRQA S 3344 2 */ /* Not a MISRA 13.2 violation; operand is boolean */
#                 if (ChannelConfigPtr->IsIcuRefExist == TRUE)
#                 {                
#                     Icu_DisableNotification(ChannelConfigPtr->IcuChannelRef);
#                 }
# #endif /* LINTRCV_31_UJA1132_ICU_ENABLE */       
#                 
#                 break;            
#             case LINTRCV_TRCV_MODE_STANDBY:
# #if(STD_ON == LINTRCV_31_UJA1132_SBCSI_USAGE) 
#                if(ChannelConfigPtr->LinTrcvName == LIN1)
#                 {
#                   ReturnValue =  SBCSI_SetInTrcvState(SBCSI_INT_LIN_TRCV_1,SBCSI_INT_TRCV_MODE_CAN_LISTENONLY_LIN_LISTENONLY);
#                 }
#                 else 
#                 {
#                  ReturnValue =  SBCSI_SetInTrcvState(SBCSI_INT_LIN_TRCV_2,SBCSI_INT_TRCV_MODE_CAN_LISTENONLY_LIN_LISTENONLY);   
#                 }
#               
# #else
#               if(ChannelConfigPtr->LinTrcvName == LIN1)
	.d2line		239
	lbz		r0,1(r27)		# LinNetworkIndex=r0 ChannelConfigPtr=r27
.Llo38:
	se_cmpi		r0,0		# LinNetworkIndex=r0
	bc		0,2,.L519	# ne
#                    {
#                    /* PRQA S 4130 1 */
#                     RegData_u16 = RegData_u16 | (uint16)LINTRCV_31_UJA1132_LIN1_STANDBY;    
	.d2line		242
.Llo39:
	e_ori		r30,r30,3		# RegData_u16=r30 RegData_u16=r30
	mr		r0,r30		# RegData_u16=r0 RegData_u16=r30
	b		.L506
.L519:
#                    }
#                    else
#                    {
#                    /* PRQA S 4130 1 */
#                      RegData_u16 = RegData_u16 | (uint16)LINTRCV_31_UJA1132_LIN2_STANDBY; 
	.d2line		247
	e_ori		r30,r30,48		# RegData_u16=r30 RegData_u16=r30
	mr		r0,r30		# RegData_u16=r0 RegData_u16=r30
	b		.L506
.L521:
#                    }
#             
# #endif            
#                 break;
#             /* PRQA S 2018 1 */ /* The "default" branch will be reached if value outside of enum is passed to the function */
#             default:
# 
#                 ReturnValue = E_NOT_OK;
	.d2line		255
.Llo10:
	diab.li		r29,1		# ReturnValue=r29
.L506:
#                 break;
#         }
#         if(E_NOT_OK != ReturnValue)
	.d2line		258
.Llo11:
	rlwinm		r3,r29,0,24,31		# RegData_u16=r3 ReturnValue=r29
	se_cmpi		r3,1		# RegData_u16=r3
	bc		1,2,.L539	# eq
#         {
# #if(STD_OFF == LINTRCV_31_UJA1132_SBCSI_USAGE)           
#            /* Read LinTrcv Control register via SPI */
#             DataIndex_u8 = 0;
	.d2line		262
	diab.li		r5,0
	stb		r5,8(r1)
#             LinTrcv_31_UJA1132_PrepareSpiData(&DataToBeSent[DataIndex_u8], LINTRCV_31_UJA1132_TRCV_CONTROL_REGADDR, 0x00, &DataIndex_u8, TRUE);            
	.d2line		263
	diab.addi		r3,r1,12		# RegData_u16=r3
	diab.addi		r6,r1,8
	diab.li		r4,33
	diab.li		r7,1
	bl		LinTrcv_31_UJA1132_PrepareSpiData
#             TransmissionStatus = LinTrcv_31_UJA1132_SpiTransmit (ChannelConfigPtr, DataToBeSent, DataToBeReceived, DataIndex_u8 );
	.d2line		264
	lbz		r6,8(r1)
	diab.addi		r4,r1,12
	diab.addi		r5,r1,16
	mr		r3,r27		# ChannelConfigPtr=r3 ChannelConfigPtr=r27
	bl		LinTrcv_31_UJA1132_SpiTransmit
	.d2line		265
	mr.		r0,r3		# TransmissionStatus=?a15 TransmissionStatus=r3
#             if ( TransmissionStatus != LINTRCV_TX_SUCCEEDED )
	bc		1,2,.L523	# eq
#             {            
#                 ReturnValue = E_NOT_OK;
	.d2line		267
.Llo12:
	diab.li		r29,1		# ReturnValue=r29
.Llo13:
	b		.L539
.L523:
#             }
#             else
#             {
#                 ReturnValue = E_OK;
	.d2line		271
.Llo14:
	diab.li		r29,0		# ReturnValue=r29
#                 /* Initialization */
#                 DataIndex_u8 = 0;
	.d2line		273
.Llo15:
	diab.li		r3,0		# ChannelConfigPtr=r3
	stb		r3,8(r1)		# ChannelConfigPtr=r3
#                 /* Adjust Data to be sent to LinTrcv to be masked by the need requested opmode via SPI */
#                 DataToBeSent[DataIndex_u8] = DataToBeReceived[DataIndex_u8];
	.d2line		275
	lhz		r0,16(r1)		# TransmissionStatus=r0
.Llo49:
	sth		r0,12(r1)		# TransmissionStatus=r0
#                 /* Prepare the command to be written to the LinTrcv Mode register via SPI*/
#                 if(TmpLinTrcvCurrentState == LINTRCV_TRCV_MODE_SLEEP)
	.d2line		277
	se_cmpi		r26,2		# TmpLinTrcvCurrentState=r26
	bc		0,2,.L525	# ne
#                 {
#                  DataToBeSent[DataIndex_u8] = DataToBeSent[DataIndex_u8]|RegData_u16;
	.d2line		279
.Llo50:
	diab.addi		r3,r1,12		# ChannelConfigPtr=r3
	lbz		r4,8(r1)
	rlwinm		r4,r4,1,23,30
	lhzux		r0,r3,r4		# TransmissionStatus=r0 ChannelConfigPtr=r3
.Llo51:
	or		r0,r0,r30		# TransmissionStatus=r0 TransmissionStatus=r0 RegData_u16=r30
	diab.addi		r3,r1,12		# ChannelConfigPtr=r3
	sthx		r0,r3,r4		# ChannelConfigPtr=r3 TransmissionStatus=r0
	b		.L526
.L525:
#                 }
#                 else if(TmpLinTrcvCurrentState == LINTRCV_TRCV_MODE_STANDBY)
	.d2line		281
.Llo52:
	se_cmpi		r26,1		# TmpLinTrcvCurrentState=r26
	bc		0,2,.L527	# ne
#                 {
#                   if(ChannelConfigPtr->LinTrcvName == LIN1)
	.d2line		283
.Llo40:
	lbz		r0,1(r27)		# TransmissionStatus=r0 ChannelConfigPtr=r27
.Llo53:
	se_cmpi		r0,0		# TransmissionStatus=r0
	bc		0,2,.L528	# ne
#                   {
#                    DataToBeSent[DataIndex_u8] = DataToBeSent[DataIndex_u8]& (RegData_u16 | REG_MASK_LIN1);
	.d2line		285
.Llo54:
	diab.addi		r3,r1,12		# ChannelConfigPtr=r3
	lbz		r0,8(r1)		# TransmissionStatus=r0
.Llo55:
	rlwinm		r0,r0,1,23,30		# TransmissionStatus=r0 TransmissionStatus=r0
.Llo56:
	lhzux		r4,r3,r0		# ChannelConfigPtr=r3
	diab.li		r3,65520		# ChannelConfigPtr=r3
	or		r3,r3,r30		# ChannelConfigPtr=r3 ChannelConfigPtr=r3 RegData_u16=r30
	and		r4,r4,r3		# ChannelConfigPtr=r3
	diab.addi		r3,r1,12		# ChannelConfigPtr=r3
	sthx		r4,r3,r0		# ChannelConfigPtr=r3
	b		.L526
.L528:
#                   }
#                   else
#                   {
#                     DataToBeSent[DataIndex_u8] = DataToBeSent[DataIndex_u8]& (RegData_u16 | REG_MASK_LIN2);
	.d2line		289
	diab.addi		r3,r1,12		# ChannelConfigPtr=r3
	lbz		r0,8(r1)		# TransmissionStatus=r0
.Llo57:
	rlwinm		r0,r0,1,23,30		# TransmissionStatus=r0 TransmissionStatus=r0
.Llo58:
	lhzux		r4,r3,r0		# ChannelConfigPtr=r3
	diab.li		r3,65295		# ChannelConfigPtr=r3
	or		r3,r3,r30		# ChannelConfigPtr=r3 ChannelConfigPtr=r3 RegData_u16=r30
	and		r4,r4,r3		# ChannelConfigPtr=r3
	diab.addi		r3,r1,12		# ChannelConfigPtr=r3
	sthx		r4,r3,r0		# ChannelConfigPtr=r3
	b		.L526
.L527:
#                   }
#                   
#                 }
#                 else
#                 {
#                   /*current is normal mode*/
#                   if(LINTRCV_TRCV_MODE_SLEEP == OpMode)
	.d2line		296
	se_cmpi		r31,2		# OpMode=r31
	bc		0,2,.L531	# ne
#                  {
#                   if(ChannelConfigPtr->LinTrcvName == LIN1)
	.d2line		298
	lbz		r0,1(r27)		# TransmissionStatus=r0 ChannelConfigPtr=r27
.Llo59:
	se_cmpi		r0,0		# TransmissionStatus=r0
	bc		0,2,.L532	# ne
#                   {
#                    DataToBeSent[DataIndex_u8] = DataToBeSent[DataIndex_u8]& (RegData_u16 | REG_MASK_LIN1);
	.d2line		300
.Llo60:
	diab.addi		r3,r1,12		# ChannelConfigPtr=r3
	lbz		r0,8(r1)		# TransmissionStatus=r0
.Llo61:
	rlwinm		r0,r0,1,23,30		# TransmissionStatus=r0 TransmissionStatus=r0
.Llo62:
	lhzux		r4,r3,r0		# ChannelConfigPtr=r3
	diab.li		r3,65520		# ChannelConfigPtr=r3
	or		r3,r3,r30		# ChannelConfigPtr=r3 ChannelConfigPtr=r3 RegData_u16=r30
	and		r4,r4,r3		# ChannelConfigPtr=r3
	diab.addi		r3,r1,12		# ChannelConfigPtr=r3
	sthx		r4,r3,r0		# ChannelConfigPtr=r3
	b		.L526
.L532:
#                   }
#                   else
#                   {
#                    DataToBeSent[DataIndex_u8] = DataToBeSent[DataIndex_u8]& (RegData_u16 | REG_MASK_LIN2); 
	.d2line		304
	diab.addi		r3,r1,12		# ChannelConfigPtr=r3
	lbz		r0,8(r1)		# TransmissionStatus=r0
.Llo63:
	rlwinm		r0,r0,1,23,30		# TransmissionStatus=r0 TransmissionStatus=r0
.Llo64:
	lhzux		r4,r3,r0		# ChannelConfigPtr=r3
	diab.li		r3,65295		# ChannelConfigPtr=r3
	or		r3,r3,r30		# ChannelConfigPtr=r3 ChannelConfigPtr=r3 RegData_u16=r30
	and		r4,r4,r3		# ChannelConfigPtr=r3
	diab.addi		r3,r1,12		# ChannelConfigPtr=r3
	sthx		r4,r3,r0		# ChannelConfigPtr=r3
	b		.L526
.L531:
#                   }
#                   
#                  }
#                  else
#                  {
#                  /*new state is standby*/
#                   DataToBeSent[DataIndex_u8] = DataToBeSent[DataIndex_u8]|RegData_u16;
	.d2line		311
	diab.addi		r3,r1,12		# ChannelConfigPtr=r3
	lbz		r4,8(r1)
	rlwinm		r4,r4,1,23,30
	lhzux		r0,r3,r4		# TransmissionStatus=r0 ChannelConfigPtr=r3
.Llo65:
	or		r0,r0,r30		# TransmissionStatus=r0 TransmissionStatus=r0 RegData_u16=r30
	diab.addi		r3,r1,12		# ChannelConfigPtr=r3
	sthx		r0,r3,r4		# ChannelConfigPtr=r3 TransmissionStatus=r0
.L526:
#                  }
#                   
#                 }
#                  /* PRQA S 4130 1 */
#                 LINTRCV_31_UJA1132_CLEAR_BITN(DataToBeSent[DataIndex_u8],LINTRCV_31_UJA1132_SET_OPMODE_REGISTER_WRITE_BIT); /*register set to write*/    
	.d2line		316
.Llo45:
	diab.addi		r4,r1,12
	lbz		r3,8(r1)		# ChannelConfigPtr=r3
	rlwinm		r3,r3,1,23,30		# ChannelConfigPtr=r3 ChannelConfigPtr=r3
	lhzx		r0,r4,r3		# TransmissionStatus=r0
.Llo66:
	.diab.bclri		r0,23		# TransmissionStatus=r0
	sthx		r0,r4,r3		# TransmissionStatus=r0
#                 
#                 DataIndex_u8 = DataIndex_u8 + 1;
	.d2line		318
	lbz		r6,8(r1)
	se_addi		r6,1
	stb		r6,8(r1)
#                 TransmissionStatus = LinTrcv_31_UJA1132_SpiTransmit (ChannelConfigPtr, DataToBeSent, NULL_PTR, DataIndex_u8 );
	.d2line		319
	rlwinm		r6,r6,0,24,31
	mr		r3,r27		# ChannelConfigPtr=r3 ChannelConfigPtr=r27
	diab.li		r5,0
	bl		LinTrcv_31_UJA1132_SpiTransmit
	.d2line		321
.Llo67:
	mr.		r0,r3		# TransmissionStatus=?a15 TransmissionStatus=r3
#                 
#                 if ( TransmissionStatus != LINTRCV_TX_SUCCEEDED )
	bc		1,2,.L535	# eq
#                 {               
#                   ReturnValue = E_NOT_OK;
	.d2line		323
.Llo23:
	diab.li		r29,1		# ReturnValue=r29
	b		.L539
.L535:
#                 }
#                 else
#                 {
# 
#                    /* Should we make another transmission to check that there is no SPI error & the mode changed successfully? */                
# #endif
#                    Status_p->CurrentState = OpMode;
	.d2line		330
	stw		r31,0(r28)		# Status_p=r28 OpMode=r31
#                    /* Wait until the TRcv operation mode changes. */
#                    DelayCount_u32 = LINTRCV_31_UJA1132_WAIT_COUNT;
	.d2line		332
	lis		r3,LinTrcv_31_UJA1132_WaitCount@ha		# ChannelConfigPtr=r3
.Llo24:
	lwz		r3,LinTrcv_31_UJA1132_WaitCount@l(r3)		# ChannelConfigPtr=r3 ChannelConfigPtr=r3
.Llo18:
	mr		r3,r3		# DelayCount_u32=r3 DelayCount_u32=r3
.L537:
# 
#                    /* Timeout for allowing the hardware to settle down */
#                    while(0 != DelayCount_u32)
	.d2line		335
.Llo8:
	se_cmpi		r3,0		# DelayCount_u32=r3
	bc		1,2,.L539	# eq
#                    {
#                        /* Decrement the timeout */
#                        DelayCount_u32--;
	.d2line		338
	diab.addi		r0,r3,-1		# TransmissionStatus=r0 DelayCount_u32=r3
	diab.addi		r3,r3,-1		# DelayCount_u32=r3 DelayCount_u32=r3
	b		.L537
.L539:
#                    }
# 
#                    
# 
# #if(STD_OFF == LINTRCV_31_UJA1132_SBCSI_USAGE)                     
#                 }
#             }
# #endif
#         }
#         else
#         {
#             /* Do Nothing */
#         }
# #if (STD_ON == LINTRCV_31_UJA1132_DEV_ERROR_DETECT)
#     }
#     else
#     {
#        /* Do Nothing */
#     }
# #endif
#     return (ReturnValue);
	.d2line		359
.Llo19:
	rlwinm		r3,r29,0,24,31		# RegData_u16=r3 ReturnValue=r29
# }/* End of LinTrcv_SetOpMode () */
	.d2line		360
	.d2epilogue_begin
	lmw		r26,40(r1)		# offset r1+40  0x28
	.d2_cfa_restore_list	2,10
.Llo16:
	lwz		r0,68(r1)		# RegData_u16=r0
	mtspr		lr,r0		# RegData_u16=lr
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L573:
	.type		LinTrcv_31_UJA1132_SetOpMode,@function
	.size		LinTrcv_31_UJA1132_SetOpMode,.-LinTrcv_31_UJA1132_SetOpMode
# Number of nodes = 432

# Allocations for LinTrcv_31_UJA1132_SetOpMode
#	?a4		LinNetwork
#	?a5		OpMode
#	?a6		$$134
#	?a7		$$133
#	?a8		ReturnValue
#	?a9		Status_p
#	?a10		DelayCount_u32
#	?a11		ChannelConfigPtr
#	?a12		LinNetworkIndex
#	?a13		TmpLinTrcvCurrentState
#	SP,12		DataToBeSent
#	SP,16		DataToBeReceived
#	?a14		RegData_u16
#	SP,8		DataIndex_u8
#	?a15		TransmissionStatus

# Allocations for module
	.section	.text_vle
	.0byte		.L620
	.section	.text_vle
#$$ld
.L5:
.L634:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\inc\\internal\\LinTrcv_31_UJA1132_Private.h"
.L627:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L621:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\inc\\LinTrcv_31_UJA1132.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L566:
.L574:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132_SetOpMode.c"
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
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	16
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132_SetOpMode.c"
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
.L563:
	.4byte		.L564-.L562
.L562:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L568-.L563
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132_SetOpMode.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L565
	.4byte		.L566
	.4byte		.L569
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L578:
	.sleb128	2
	.4byte		.L571-.L563
	.byte		"LinTrcv_31_UJA1132_SetOpMode"
	.byte		0
	.4byte		.L574
	.uleb128	65
	.uleb128	36
	.4byte		.L575
	.byte		0x1
	.byte		0x1
	.4byte		.L572
	.4byte		.L573
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L574
	.uleb128	65
	.uleb128	36
	.byte		"LinNetwork"
	.byte		0
	.4byte		.L576
	.4byte		.L579
	.sleb128	3
	.4byte		.L574
	.uleb128	65
	.uleb128	36
	.byte		"OpMode"
	.byte		0
	.4byte		.L580
	.4byte		.L582
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L583:
	.sleb128	4
	.4byte		.L574
	.uleb128	71
	.uleb128	36
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L575
	.4byte		.L584
.L585:
	.sleb128	4
	.4byte		.L574
	.uleb128	73
	.uleb128	73
	.byte		"Status_p"
	.byte		0
	.4byte		.L586
	.4byte		.L589
.L590:
	.sleb128	4
	.4byte		.L574
	.uleb128	75
	.uleb128	29
	.byte		"DelayCount_u32"
	.byte		0
	.4byte		.L591
	.4byte		.L593
.L594:
	.sleb128	4
	.4byte		.L574
	.uleb128	77
	.uleb128	76
	.byte		"ChannelConfigPtr"
	.byte		0
	.4byte		.L595
	.4byte		.L599
.L600:
	.sleb128	4
	.4byte		.L574
	.uleb128	79
	.uleb128	30
	.byte		"LinNetworkIndex"
	.byte		0
	.4byte		.L601
	.4byte		.L602
.L603:
	.sleb128	4
	.4byte		.L574
	.uleb128	81
	.uleb128	43
	.byte		"TmpLinTrcvCurrentState"
	.byte		0
	.4byte		.L580
	.4byte		.L604
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L605:
	.sleb128	5
	.4byte		.L574
	.uleb128	83
	.uleb128	28
	.byte		"DataToBeSent"
	.byte		0
	.4byte		.L606
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L610:
	.sleb128	5
	.4byte		.L574
	.uleb128	86
	.uleb128	28
	.byte		"DataToBeReceived"
	.byte		0
	.4byte		.L611
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	16
.L613:
	.sleb128	4
	.4byte		.L574
	.uleb128	88
	.uleb128	28
	.byte		"RegData_u16"
	.byte		0
	.4byte		.L608
	.4byte		.L614
.L615:
	.sleb128	5
	.4byte		.L574
	.uleb128	90
	.uleb128	27
	.byte		"DataIndex_u8"
	.byte		0
	.4byte		.L576
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L616:
	.sleb128	4
	.4byte		.L574
	.uleb128	92
	.uleb128	44
	.byte		"TransmissionStatus"
	.byte		0
	.4byte		.L617
	.4byte		.L619
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L571:
	.section	.debug_info,,n
.L620:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L621
	.uleb128	315
	.uleb128	86
	.byte		"LinTrcv_31_UJA1132_Status_p"
	.byte		0
	.4byte		.L622
	.section	.debug_info,,n
.L623:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L621
	.uleb128	319
	.uleb128	85
	.byte		"LinTrcv_31_UJA1132_ConfigPtr"
	.byte		0
	.4byte		.L624
.L625:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L621
	.uleb128	323
	.uleb128	37
	.byte		"LinTrcv_31_UJA1132_WaitCount"
	.byte		0
	.4byte		.L626
	.section	.debug_info,,n
.L588:
	.sleb128	7
	.4byte		.L627
	.uleb128	59
	.uleb128	13
	.4byte		.L628-.L2
	.uleb128	8
	.section	.debug_info,,n
.L500:
	.sleb128	8
	.byte		"CurrentState"
	.byte		0
	.4byte		.L580
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L501:
	.sleb128	8
	.byte		"isInitialised"
	.byte		0
	.4byte		.L629
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L628:
.L598:
	.sleb128	7
	.4byte		.L627
	.uleb128	59
	.uleb128	13
	.4byte		.L630-.L2
	.uleb128	12
.L494:
	.sleb128	8
	.byte		"ChannelId"
	.byte		0
	.4byte		.L601
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L495:
	.sleb128	8
	.byte		"LinTrcvName"
	.byte		0
	.4byte		.L601
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L496:
	.sleb128	8
	.byte		"InitState"
	.byte		0
	.4byte		.L631
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L497:
	.sleb128	8
	.byte		"SpiSeqId"
	.byte		0
	.4byte		.L601
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L498:
	.sleb128	8
	.byte		"LinTrcvSpiChannelId"
	.byte		0
	.4byte		.L601
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L499:
	.sleb128	8
	.byte		"RxDioPin"
	.byte		0
	.4byte		.L632
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L630:
	.section	.debug_info,,n
.L618:
	.sleb128	9
	.4byte		.L634
	.uleb128	161
	.uleb128	14
	.4byte		.L635-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"LINTRCV_TX_SUCCEEDED"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"LINTRCV_LAST_TX_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"LINTRCV_EBSETUP_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"LINTRCV_TX_FAILED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L635:
.L581:
	.sleb128	9
	.4byte		.L627
	.uleb128	59
	.uleb128	13
	.4byte		.L636-.L2
	.uleb128	4
	.sleb128	10
	.byte		"LINTRCV_TRCV_MODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"LINTRCV_TRCV_MODE_STANDBY"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"LINTRCV_TRCV_MODE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L636:
	.section	.debug_info,,n
.L577:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L576:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L577
.L575:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L576
.L580:
	.sleb128	12
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L581
.L587:
	.sleb128	12
	.byte		"LinTrcv_31_UJA1132_ChannelStatus"
	.byte		0
	.4byte		.L588
	.section	.debug_info,,n
.L586:
	.sleb128	13
	.4byte		.L587
.L592:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L591:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L592
.L597:
	.sleb128	12
	.byte		"LinTrcv_31_UJA1132_ChannelConfig"
	.byte		0
	.4byte		.L598
	.section	.debug_info,,n
.L596:
	.sleb128	14
	.4byte		.L597
.L595:
	.sleb128	13
	.4byte		.L596
.L601:
	.sleb128	14
	.4byte		.L576
.L609:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L608:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L609
	.section	.debug_info,,n
.L606:
	.sleb128	15
	.4byte		.L607
	.4byte		.L608
	.section	.debug_info,,n
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L607:
.L611:
	.sleb128	15
	.4byte		.L612
	.4byte		.L608
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L612:
.L617:
	.sleb128	12
	.byte		"LinTrcv_SpiTransStatus"
	.byte		0
	.4byte		.L618
.L622:
	.sleb128	14
	.4byte		.L586
.L624:
	.sleb128	14
	.4byte		.L595
.L626:
	.sleb128	14
	.4byte		.L591
.L629:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L577
.L631:
	.sleb128	14
	.4byte		.L580
.L633:
	.sleb128	12
	.byte		"Dio_ChannelType"
	.byte		0
	.4byte		.L608
.L632:
	.sleb128	14
	.4byte		.L633
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L568:
	.sleb128	0
.L564:

	.section	.debug_loc,,n
	.align	0
.L579:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L582:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo8),31
	.d2locend
.L584:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),29
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),29
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),29
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),29
	.d2locend
.L589:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo8),28
	.d2locend
.L593:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locend
.L599:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),27
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo18),3
	.d2locend
.L602:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo3),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo20),0
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),0
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),0
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),0
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),0
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),0
	.d2locend
.L604:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo40),26
	.d2locend
.L614:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo29),30
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),3
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),30
	.d2locend
.L619:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo48),3
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),0
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),0
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),0
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),0
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),0
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),0
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),0
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),0
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo45),0
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinTrcv_31_UJA1132_SetOpMode"
	.wrcm.nint32 "frameSize", 64
	.wrcm.nstrlist "calls", "LinTrcv_31_UJA1132_GetChannelIndex","LinTrcv_31_UJA1132_PrepareSpiData","LinTrcv_31_UJA1132_SpiTransmit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_SetOpMode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_SetOpMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_SetOpMode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_SetOpMode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_SetOpMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_SetOpMode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinTrcv\ssc\target\UJA1132\make\..\src\LinTrcv_31_UJA1132_SetOpMode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
