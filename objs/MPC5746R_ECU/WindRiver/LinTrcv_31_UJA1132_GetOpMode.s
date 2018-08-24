#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinTrcv_31_UJA1132_GetOpMode.c"
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
# FUNC(Std_ReturnType, LINTRCV_CODE) LINTRCV_31_UJA1132_GET_OP_MODE
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L533:
	.section	.invalid_TEXT,,c
#$$ld
.L529:
	.0byte		.L527
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132_GetOpMode.c"
        .d2line         59,36
#$$ld
.L536:

#$$bf	LinTrcv_31_UJA1132_GetOpMode,interprocedural,rasave,nostackparams
	.globl		LinTrcv_31_UJA1132_GetOpMode
	.d2_cfa_start __cie
LinTrcv_31_UJA1132_GetOpMode:
.Llo1:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
.Llo30:
	stmw		r28,32(r1)		# offset r1+32  0x20
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,52(r1)		# TransmissionStatusLinControl=r0
	.d2_cfa_offset    108,-1
	mr		r31,r4		# OpMode=r31 OpMode=r4
	.d2prologue_end
# (
#  VAR(uint8, AUTOMATIC) LinNetwork,
#  P2VAR(LinTrcv_TrcvModeType, AUTOMATIC,LINTRCV_APPL_DATA)OpMode
# )
# {
# 
#     VAR (LinTrcv_TrcvModeType, AUTOMATIC) TmpLinTrcvCurrentState; 
#     VAR (Std_ReturnType, AUTOMATIC)ReturnValue;
# 
#     /* Pointer to the Status array for each Channel. */
#     /* PRQA S 491 2 */ /* MISRA rule 17.4 violation; Typically caused by our current pattern for PB structures (huge number of variable length arrays) */
#     P2VAR(LinTrcv_31_UJA1132_ChannelStatus, LINTRCV_VAR_FAST, LINTRCV_APPL_DATA) Status_p;
#     /* Pointer to index the constant Precompile Configuration Array. */
#     P2CONST(LinTrcv_31_UJA1132_ChannelConfig, LINTRCV_VAR_FAST, LINTRCV_31_UJA1132_APPL_CONST) ChannelConfig_p;    
#      /* Get index of configuration from the Network ID */
#     CONST (uint8, AUTOMATIC) LinNetworkIndex = LINTRCV_GET_CHANNEL_INDEX(LinNetwork);
	.d2line		75
	rlwinm		r3,r3,0,24,31		# LinNetwork=r3 LinNetwork=r3
.Llo2:
	bl		LinTrcv_31_UJA1132_GetChannelIndex
.Llo11:
	mr		r0,r3		# LinNetworkIndex=r0 LinNetworkIndex=r3
# #if(STD_ON == LINTRCV_31_UJA1132_SBCSI_USAGE)
#     VAR(SBCSI_InTrcvMode_T,AUTOMATIC) mode;
# #else
#  /* Variable holds the data to be sent. The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeSent[LINTRCV_31_UJA1132_GET_OPMODE_DATA_TO_BE_SENT_LENGTH];
#     /* Variable holds the data to be received from LinTrcv via SPI.
#        The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeReceived[LINTRCV_31_UJA1132_GET_OPMODE_DATA_TO_BE_RECEIVED_LENGTH];
#     /* Var8iable to hold the number or SPI data elements to be sent/received*/
#     VAR (uint8, AUTOMATIC)DataIndex_u8;    
#     VAR(LinTrcv_SpiTransStatus,AUTOMATIC)  TransmissionStatusLinControl;
#     TmpLinTrcvCurrentState = LINTRCV_TRCV_MODE_NORMAL;
	.d2line		87
	diab.li		r28,0		# TmpLinTrcvCurrentState=r28
# #endif    
#    
# #if (STD_ON == LINTRCV_31_UJA1132_DEV_ERROR_DETECT)
# 
#     ReturnValue = LinTrcv_31_UJA1132_GetOpModeDECheck (LinNetworkIndex, OpMode );
#     if (E_OK == ReturnValue )
#     {
# 
# #else
# 
#         
# 
# #endif /* #if(LINTRCV_31_UJA1132_DEV_ERROR_DETECT == STD_ON) */
# 
#         ChannelConfig_p  =   &(LINTRCV_31_UJA1132_CONFIG_P[LinNetworkIndex]); /* PRQA S 2824 */ /* Typically caused by our current pattern for PB structures */     
	.d2line		102
	rlwinm		r4,r0,0,24,31		# LinNetworkIndex=r0
	lis		r3,LinTrcv_31_UJA1132_ConfigPtr@ha		# LinNetwork=r3
.Llo3:
	lwz		r29,LinTrcv_31_UJA1132_ConfigPtr@l(r3)		# LinNetwork=r3
.Llo29:
	rlwinm		r3,r4,4,0,27		# LinNetwork=r3
	se_slwi		r4,2
	subf		r4,r4,r3		# LinNetwork=r3
	se_add		r4,r29
.Llo25:
	mr		r29,r4		# ChannelConfig_p=r29 ChannelConfig_p=r4
# 
#         Status_p = &(LINTRCV_31_UJA1132_STATUS_P[LinNetworkIndex]); /* PRQA S 2824 */ /* Typically caused by our current pattern for PB structures */     
	.d2line		104
.Llo26:
	lis		r3,LinTrcv_31_UJA1132_Status_p@ha		# LinNetwork=r3
.Llo27:
	lwz		r30,LinTrcv_31_UJA1132_Status_p@l(r3)		# LinNetworkIndex=r30 LinNetwork=r3
	rlwinm		r0,r0,3,21,28		# LinNetworkIndex=r0 LinNetworkIndex=r0
	se_add		r0,r30		# LinNetworkIndex=r0 LinNetworkIndex=r0 LinNetworkIndex=r30
.Llo22:
	mr		r30,r0		# Status_p=r30 Status_p=r0
#         
# #if(STD_ON == LINTRCV_31_UJA1132_SBCSI_USAGE)
# 
#     if(ChannelConfig_p->LinTrcvName == LIN1) /* PRQA S 2814 2 */ /* Typically caused by our current pattern for PB structures */
#     {
#      SBCSI_GetInTrcvState(SBCSI_INT_LIN_TRCV_1,&mode);
#     }       
#     else
#     {
#      SBCSI_GetInTrcvState(SBCSI_INT_LIN_TRCV_2,&mode);
#     } 
#     if(( mode == SBCSI_INT_TRCV_MODE_CAN_ACTIVE_NORMAL_LIN_ACTIVE_NORMAL) || (mode == SBCSI_INT_TRCV_MODE_CAN_ACTIVE_NORMAL_LIN_ACTIVE_NORMAL_STANDBY))
#     {
#      TmpLinTrcvCurrentState = LINTRCV_TRCV_MODE_NORMAL;  
#     }
#     else if(mode == SBCSI_INT_TRCV_MODE_CAN_OFF_LIN_OFF)
#     {
#      TmpLinTrcvCurrentState = LINTRCV_TRCV_MODE_SLEEP;
#     }
#     else
#     {
#      TmpLinTrcvCurrentState = LINTRCV_TRCV_MODE_STANDBY;
#     }
#     
# #else     
#         /* Prepare the LinTrcv Mode Read command */
#         DataIndex_u8 = 0;
	.d2line		131
	diab.li		r5,0
	stb		r5,8(r1)
#         LinTrcv_31_UJA1132_PrepareSpiData(&DataToBeSent[DataIndex_u8], LINTRCV_31_UJA1132_TRCV_CONTROL_REGADDR, 0x00, &DataIndex_u8, TRUE);
	.d2line		132
	diab.addi		r3,r1,16		# LinNetwork=r3
.Llo4:
	diab.addi		r6,r1,8
	diab.li		r4,33
	diab.li		r7,1
	bl		LinTrcv_31_UJA1132_PrepareSpiData
# 
#         TransmissionStatusLinControl = LinTrcv_31_UJA1132_SpiTransmit ( ChannelConfig_p, DataToBeSent, &DataToBeReceived[0], DataIndex_u8 );
	.d2line		134
.Llo23:
	lbz		r6,8(r1)
	diab.addi		r4,r1,16
	diab.addi		r5,r1,12
	mr		r3,r29		# ChannelConfig_p=r3 ChannelConfig_p=r29
	bl		LinTrcv_31_UJA1132_SpiTransmit
	.d2line		136
.Llo5:
	mr.		r0,r3		# TransmissionStatusLinControl=?a12 TransmissionStatusLinControl=r3
# 
#         if ( (TransmissionStatusLinControl != LINTRCV_TX_SUCCEEDED) )
	bc		1,2,.L503	# eq
#         {
#           ReturnValue = E_NOT_OK;
	.d2line		138
.Llo6:
	diab.li		r3,1		# ReturnValue=r3
.Llo19:
	b		.L504
.L503:
#         }
#         else
#         {         
#             
#             if(ChannelConfig_p->LinTrcvName == LIN1) /* PRQA S 2814*/ /* Typically caused by our current pattern for PB structures */     
	.d2line		143
.Llo20:
	lbz		r0,1(r29)		# TransmissionStatusLinControl=r0 ChannelConfig_p=r29
.Llo31:
	se_cmpi		r0,0		# TransmissionStatusLinControl=r0
	bc		0,2,.L505	# ne
#             {
#               if((DataToBeReceived[0]  & LINTRCV_31_UJA1132_LIN1_OPMODE_U8MASK_BIT) == 0x0000)
	.d2line		145
.Llo28:
	lhz		r0,12(r1)		# TransmissionStatusLinControl=r0
.Llo32:
	e_andi.		r0,r0,3		# TransmissionStatusLinControl=r0 TransmissionStatusLinControl=r0
.Llo33:
	bc		0,2,.L506	# ne
#               {
#                 TmpLinTrcvCurrentState = LINTRCV_TRCV_MODE_SLEEP;
	.d2line		147
	diab.li		r28,2		# TmpLinTrcvCurrentState=r28
	b		.L510
.L506:
#               }
#               else if((DataToBeReceived[0]  & LINTRCV_31_UJA1132_LIN1_OPMODE_U8MASK_BIT) == LINTRCV_31_UJA1132_LIN1_STANDBY)
	.d2line		149
	lhz		r0,12(r1)		# TransmissionStatusLinControl=r0
.Llo34:
	rlwinm		r0,r0,0,30,31		# TransmissionStatusLinControl=r0 TransmissionStatusLinControl=r0
	se_cmpi		r0,3		# TransmissionStatusLinControl=r0
#               {
#                TmpLinTrcvCurrentState = LINTRCV_TRCV_MODE_STANDBY;
	.d2line		151
	diab.li		r3,1		# LinNetwork=r3
.Llo7:
	isel		r3,r3,r28,2		# TmpLinTrcvCurrentState=r3 LinNetwork=r3 TmpLinTrcvCurrentState=r28
.L508:
#               }
#               else
#               {
#                 TmpLinTrcvCurrentState = LINTRCV_TRCV_MODE_NORMAL;  
	.d2line		155
.Llo8:
	diab.li		r0,0		# TransmissionStatusLinControl=r0
.Llo13:
	isel		r28,r3,r0,2		# TmpLinTrcvCurrentState=r28 TmpLinTrcvCurrentState=r3 TransmissionStatusLinControl=r0
	b		.L510
.L505:
#               }
#             }
#             else
#             {
#              if((DataToBeReceived[0]  & LINTRCV_31_UJA1132_LIN2_OPMODE_U8MASK_BIT) == 0x0000)
	.d2line		160
.Llo14:
	lhz		r0,12(r1)		# TransmissionStatusLinControl=r0
.Llo15:
	e_andi.		r0,r0,48		# TransmissionStatusLinControl=r0 TransmissionStatusLinControl=r0
.Llo35:
	bc		0,2,.L511	# ne
#               {
#                 TmpLinTrcvCurrentState = LINTRCV_TRCV_MODE_SLEEP;
	.d2line		162
	diab.li		r28,2		# TmpLinTrcvCurrentState=r28
	b		.L510
.L511:
#               }
#               else if((DataToBeReceived[0]  & LINTRCV_31_UJA1132_LIN2_OPMODE_U8MASK_BIT) == LINTRCV_31_UJA1132_LIN2_STANDBY)
	.d2line		164
	lhz		r0,12(r1)		# TransmissionStatusLinControl=r0
.Llo36:
	rlwinm		r0,r0,0,26,27		# TransmissionStatusLinControl=r0 TransmissionStatusLinControl=r0
	cmpi		0,0,r0,48		# TransmissionStatusLinControl=r0
#               {
#                TmpLinTrcvCurrentState = LINTRCV_TRCV_MODE_STANDBY;
	.d2line		166
	diab.li		r3,1		# LinNetwork=r3
.Llo9:
	isel		r3,r3,r28,2		# TmpLinTrcvCurrentState=r3 LinNetwork=r3 TmpLinTrcvCurrentState=r28
.L513:
#               }
#               else
#               {
#                 TmpLinTrcvCurrentState = LINTRCV_TRCV_MODE_NORMAL;  
	.d2line		170
.Llo10:
	diab.li		r0,0		# TransmissionStatusLinControl=r0
.Llo16:
	isel		r28,r3,r0,2		# TmpLinTrcvCurrentState=r28 TmpLinTrcvCurrentState=r3 TransmissionStatusLinControl=r0
.L510:
#               }
#             }            
# 
#            ReturnValue = E_OK ;
	.d2line		174
.Llo17:
	diab.li		r3,0		# ReturnValue=r3
.L504:
#         }
# 
# #endif       
#         Status_p->CurrentState = TmpLinTrcvCurrentState; /* PRQA S 2814 */ /* Typically caused by our current pattern for PB structures */     
	.d2line		178
.Llo18:
	stw		r28,0(r30)		# Status_p=r30 TmpLinTrcvCurrentState=r28
# #if(STD_OFF == LINTRCV_31_UJA1132_SBCSI_USAGE)
#         if (E_OK == ReturnValue)
	.d2line		180
	rlwinm		r0,r3,0,24,31		# TransmissionStatusLinControl=r0 ReturnValue=r3
.Llo37:
	se_cmpi		r0,0		# TransmissionStatusLinControl=r0
	bc		0,2,.L516	# ne
#         {
# #endif
#             *OpMode = TmpLinTrcvCurrentState; /* PRQA S 2814 */ /* Typically caused by our current pattern for PB structures */
	.d2line		183
.Llo24:
	stw		r28,0(r31)		# OpMode=r31 TmpLinTrcvCurrentState=r28
.L516:
# #if(STD_OFF == LINTRCV_31_UJA1132_SBCSI_USAGE)
#         }
#         else
#         {
# 
#            /* Do Nothing */
# 
#         }
# #endif        
# #if (STD_ON == LINTRCV_31_UJA1132_DEV_ERROR_DETECT)        
#     }
#     else
#     {
# 
#         /* Do Nothing */
# 
#     }
# #endif /*   #if(LINTRCV_31_UJA1132_DEV_ERROR_DETECT == STD_ON) */
#     return (ReturnValue);
	.d2line		202
.Llo12:
	rlwinm		r3,r3,0,24,31		# ReturnValue=r3 ReturnValue=r3
# 
# }/* End of LinTrcv_31_UJA1132_GetOpMode () */
	.d2line		204
	.d2epilogue_begin
.Llo21:
	lmw		r28,32(r1)		# offset r1+32  0x20
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)		# TransmissionStatusLinControl=r0
	mtspr		lr,r0		# TransmissionStatusLinControl=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L537:
	.type		LinTrcv_31_UJA1132_GetOpMode,@function
	.size		LinTrcv_31_UJA1132_GetOpMode,.-LinTrcv_31_UJA1132_GetOpMode
# Number of nodes = 145

# Allocations for LinTrcv_31_UJA1132_GetOpMode
#	?a4		LinNetwork
#	?a5		OpMode
#	?a6		$$133
#	?a7		TmpLinTrcvCurrentState
#	?a8		ReturnValue
#	?a9		Status_p
#	?a10		ChannelConfig_p
#	?a11		LinNetworkIndex
#	SP,16		DataToBeSent
#	SP,12		DataToBeReceived
#	SP,8		DataIndex_u8
#	?a12		TransmissionStatusLinControl

# Allocations for module
	.section	.text_vle
	.0byte		.L579
	.section	.text_vle
#$$ld
.L5:
.L591:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\inc\\internal\\LinTrcv_31_UJA1132_Private.h"
.L584:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L580:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\inc\\LinTrcv_31_UJA1132.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L530:
.L538:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132_GetOpMode.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132_GetOpMode.c"
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
.L527:
	.4byte		.L528-.L526
.L526:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L532-.L527
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132_GetOpMode.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L529
	.4byte		.L530
	.4byte		.L533
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L542:
	.sleb128	2
	.4byte		.L535-.L527
	.byte		"LinTrcv_31_UJA1132_GetOpMode"
	.byte		0
	.4byte		.L538
	.uleb128	59
	.uleb128	36
	.4byte		.L539
	.byte		0x1
	.byte		0x1
	.4byte		.L536
	.4byte		.L537
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L538
	.uleb128	59
	.uleb128	36
	.byte		"LinNetwork"
	.byte		0
	.4byte		.L540
	.4byte		.L543
	.sleb128	3
	.4byte		.L538
	.uleb128	59
	.uleb128	36
	.byte		"OpMode"
	.byte		0
	.4byte		.L544
	.4byte		.L547
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L548:
	.sleb128	4
	.4byte		.L538
	.uleb128	66
	.uleb128	43
	.byte		"TmpLinTrcvCurrentState"
	.byte		0
	.4byte		.L545
	.4byte		.L549
.L550:
	.sleb128	4
	.4byte		.L538
	.uleb128	67
	.uleb128	36
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L539
	.4byte		.L551
.L552:
	.sleb128	4
	.4byte		.L538
	.uleb128	71
	.uleb128	82
	.byte		"Status_p"
	.byte		0
	.4byte		.L553
	.4byte		.L556
.L557:
	.sleb128	4
	.4byte		.L538
	.uleb128	73
	.uleb128	96
	.byte		"ChannelConfig_p"
	.byte		0
	.4byte		.L558
	.4byte		.L562
.L563:
	.sleb128	4
	.4byte		.L538
	.uleb128	75
	.uleb128	30
	.byte		"LinNetworkIndex"
	.byte		0
	.4byte		.L564
	.4byte		.L565
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L566:
	.sleb128	5
	.4byte		.L538
	.uleb128	80
	.uleb128	28
	.byte		"DataToBeSent"
	.byte		0
	.4byte		.L567
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	16
.L571:
	.sleb128	5
	.4byte		.L538
	.uleb128	83
	.uleb128	28
	.byte		"DataToBeReceived"
	.byte		0
	.4byte		.L572
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L574:
	.sleb128	5
	.4byte		.L538
	.uleb128	85
	.uleb128	27
	.byte		"DataIndex_u8"
	.byte		0
	.4byte		.L540
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L575:
	.sleb128	4
	.4byte		.L538
	.uleb128	86
	.uleb128	44
	.byte		"TransmissionStatusLinControl"
	.byte		0
	.4byte		.L576
	.4byte		.L578
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L535:
	.section	.debug_info,,n
.L579:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L580
	.uleb128	315
	.uleb128	86
	.byte		"LinTrcv_31_UJA1132_Status_p"
	.byte		0
	.4byte		.L581
	.section	.debug_info,,n
.L582:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L580
	.uleb128	319
	.uleb128	85
	.byte		"LinTrcv_31_UJA1132_ConfigPtr"
	.byte		0
	.4byte		.L583
	.section	.debug_info,,n
.L555:
	.sleb128	7
	.4byte		.L584
	.uleb128	59
	.uleb128	13
	.4byte		.L585-.L2
	.uleb128	8
	.section	.debug_info,,n
.L500:
	.sleb128	8
	.byte		"CurrentState"
	.byte		0
	.4byte		.L545
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L501:
	.sleb128	8
	.byte		"isInitialised"
	.byte		0
	.4byte		.L586
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L585:
.L561:
	.sleb128	7
	.4byte		.L584
	.uleb128	59
	.uleb128	13
	.4byte		.L587-.L2
	.uleb128	12
.L494:
	.sleb128	8
	.byte		"ChannelId"
	.byte		0
	.4byte		.L564
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L495:
	.sleb128	8
	.byte		"LinTrcvName"
	.byte		0
	.4byte		.L564
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L496:
	.sleb128	8
	.byte		"InitState"
	.byte		0
	.4byte		.L588
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L497:
	.sleb128	8
	.byte		"SpiSeqId"
	.byte		0
	.4byte		.L564
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L498:
	.sleb128	8
	.byte		"LinTrcvSpiChannelId"
	.byte		0
	.4byte		.L564
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L499:
	.sleb128	8
	.byte		"RxDioPin"
	.byte		0
	.4byte		.L589
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L587:
	.section	.debug_info,,n
.L577:
	.sleb128	9
	.4byte		.L591
	.uleb128	161
	.uleb128	14
	.4byte		.L592-.L2
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
.L592:
.L546:
	.sleb128	9
	.4byte		.L584
	.uleb128	59
	.uleb128	13
	.4byte		.L593-.L2
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
.L593:
	.section	.debug_info,,n
.L541:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L540:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L541
.L539:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L540
.L545:
	.sleb128	12
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L546
	.section	.debug_info,,n
.L544:
	.sleb128	13
	.4byte		.L545
.L554:
	.sleb128	12
	.byte		"LinTrcv_31_UJA1132_ChannelStatus"
	.byte		0
	.4byte		.L555
.L553:
	.sleb128	13
	.4byte		.L554
.L560:
	.sleb128	12
	.byte		"LinTrcv_31_UJA1132_ChannelConfig"
	.byte		0
	.4byte		.L561
	.section	.debug_info,,n
.L559:
	.sleb128	14
	.4byte		.L560
.L558:
	.sleb128	13
	.4byte		.L559
.L564:
	.sleb128	14
	.4byte		.L540
.L570:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L569:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L570
	.section	.debug_info,,n
.L567:
	.sleb128	15
	.4byte		.L568
	.4byte		.L569
	.section	.debug_info,,n
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L568:
.L572:
	.sleb128	15
	.4byte		.L573
	.4byte		.L569
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L573:
.L576:
	.sleb128	12
	.byte		"LinTrcv_SpiTransStatus"
	.byte		0
	.4byte		.L577
.L581:
	.sleb128	14
	.4byte		.L553
.L583:
	.sleb128	14
	.4byte		.L558
.L586:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L541
.L588:
	.sleb128	14
	.4byte		.L545
.L590:
	.sleb128	12
	.byte		"Dio_ChannelType"
	.byte		0
	.4byte		.L569
.L589:
	.sleb128	14
	.4byte		.L590
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L532:
	.sleb128	0
.L528:

	.section	.debug_loc,,n
	.align	0
.L543:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locend
.L547:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo11),4
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo12),31
	.d2locend
.L549:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo8),28
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo10),28
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo12),28
	.d2locend
.L551:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo21),3
	.d2locend
.L556:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),0
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo24),30
	.d2locend
.L562:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),4
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),29
	.d2locend
.L565:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo3),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo22),0
	.d2locend
.L578:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo11),0
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo28),0
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),0
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo35),0
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo10),0
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo24),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinTrcv_31_UJA1132_GetOpMode"
	.wrcm.nint32 "frameSize", 48
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_GetOpMode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_GetOpMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_GetOpMode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_GetOpMode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_GetOpMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_GetOpMode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinTrcv\ssc\target\UJA1132\make\..\src\LinTrcv_31_UJA1132_GetOpMode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
