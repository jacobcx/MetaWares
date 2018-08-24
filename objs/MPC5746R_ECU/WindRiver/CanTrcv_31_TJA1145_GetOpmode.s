#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTrcv_31_TJA1145_GetOpmode.c"
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
# FUNC(Std_ReturnType, CANTRCV_31_TJA1145_CODE)CANTRCV_31_TJA1145_GETOPMODE
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L702:
	.section	.invalid_TEXT,,c
#$$ld
.L698:
	.0byte		.L696
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_GetOpmode.c"
        .d2line         85,46
#$$ld
.L705:

#$$bf	CanTrcv_31_TJA1145_GetOpMode,interprocedural,rasave,nostackparams
	.globl		CanTrcv_31_TJA1145_GetOpMode
	.d2_cfa_start __cie
CanTrcv_31_TJA1145_GetOpMode:
.Llo1:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
	stmw		r26,40(r1)		# offset r1+40  0x28
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,68(r1)		# Transceiver=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Transceiver=r0 Transceiver=r3
.Llo2:
	mr		r31,r4		# OpMode=r31 OpMode=r4
	.d2prologue_end
# (VAR (uint8, AUTOMATIC)Transceiver,
#          P2VAR(CanTrcv_TrcvModeType, AUTOMATIC, CANTRCV_31_TJA1145_APPL_DATA)OpMode )
# {
# 
#     VAR (CanTrcv_TrcvModeType, AUTOMATIC) TmpCanTrcvCurrentState = CANTRCV_TRCVMODE_NORMAL;
	.d2line		90
.Llo3:
	diab.li		r30,0		# TmpCanTrcvCurrentState=r30
# 
#     VAR (Std_ReturnType, AUTOMATIC)ReturnValue;
# 
#     /* Variable holds the data to be sent. The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeSent[GetOpmodeDataToBeSentLength];
# 
#     /* Variable holds the data to be received from CanTrcv via SPI.
#        The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeReceived[GetOpmodeDataToBeReceivedLength];
# 
#     /* Variable to hold the number or SPI data elements to be sent/received*/
#     VAR (uint8, AUTOMATIC)DataIndex_u8;
# 
#     /* Variable to hold the CanTrcv Mode Control */
#     VAR (uint8, AUTOMATIC)ModeControl_u8;
# 
#     /* Variable to hold the CanTrcv Can Operating Mode Control */
#     VAR (uint8, AUTOMATIC)CanOpMode_u8;
# 
#     /* Variable to hold the CanTrcv-Spi communication status*/
#     VAR(CanTrcv_SpiTransStatus,AUTOMATIC)  TransmissionStatusModeControl;
#     VAR(CanTrcv_SpiTransStatus,AUTOMATIC)  TransmissionStatusCanControl;
# 
#     /* Pointer to the Status array for each Channel. */
#     P2VAR(CanTrcv_31_TJA1145_StatusType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_DATA) Status_p;
# 
#     /* Pointer to index the constand Precompile Congiguration Array. */
#     P2CONST(CanTrcv_31_TJA1145_LtCfgType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_CONST) LtConfig_p;
# 
# 
# #if (STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT)
# 
#     ReturnValue = CanTrcv_31_TJA1145_GetOpModeDECheck (Transceiver, OpMode );
#     
# 	if (E_OK == ReturnValue )
#     {
# 
# #else
# 
#     ReturnValue = E_OK;
	.d2line		130
.Llo10:
	diab.li		r29,0
# 
# #endif /*   #if(CANTRCV_31_TJA1145_DEV_ERROR_DETECT == STD_ON) */
# 
#     
#         LtConfig_p  =   &(CANTRCV_31_TJA1145_LT_CONFIG_P[Transceiver]);
	.d2line		135
.Llo11:
	lis		r3,CanTrcv_31_TJA1145_LtConfig_p@ha
	lwz		r3,CanTrcv_31_TJA1145_LtConfig_p@l(r3)
	rlwinm		r26,r0,0,24,31		# Transceiver=r0
	e_mulli		r26,r26,20
	se_add		r3,r26
.Llo34:
	mr		r26,r3		# LtConfig_p=r26 LtConfig_p=r3
# 
#         Status_p = &(CANTRCV_31_TJA1145_STATUS_P[Transceiver]);
	.d2line		137
.Llo35:
	lis		r3,CanTrcv_31_TJA1145_Status_p@ha
.Llo36:
	lwz		r27,CanTrcv_31_TJA1145_Status_p@l(r3)		# Transceiver=r27
	rlwinm		r0,r0,5,19,26		# Transceiver=r0 Transceiver=r0
	se_add		r0,r27		# Transceiver=r0 Transceiver=r0 Transceiver=r27
.Llo4:
	mr		r27,r0		# Status_p=r27 Status_p=r0
# 
#         /* Initialization */
#         DataIndex_u8 = 0;
	.d2line		140
	diab.li		r5,0
	stb		r5,8(r1)
# 
#         /* Prepare the CanTrcv Mode Read command */
#         CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_MODE_CONTROL_REGADDR, 0x00, &DataIndex_u8, TRUE);
	.d2line		143
	diab.addi		r3,r1,12
	diab.addi		r6,r1,8
	diab.li		r4,1
.Llo7:
	diab.li		r7,1
	bl		CanTrcv_31_TJA1145_PrepareSpiData
# 
#         TransmissionStatusModeControl = CanTrcv_31_TJA1145_SpiTransmit ( LtConfig_p, DataToBeSent, &DataToBeReceived[0], DataIndex_u8 );
	.d2line		145
.Llo33:
	lbz		r6,8(r1)
	diab.addi		r4,r1,12
	diab.addi		r5,r1,16
	mr		r3,r26		# LtConfig_p=r3 LtConfig_p=r26
	bl		CanTrcv_31_TJA1145_SpiTransmit
.Llo24:
	mr		r28,r3		# TransmissionStatusModeControl=r28 TransmissionStatusModeControl=r3
# 
#         /* Prepare the CanTrcv operating Mode Read command */
#         DataIndex_u8 = 0;
	.d2line		148
.Llo25:
	diab.li		r5,0
.Llo26:
	stb		r5,8(r1)
#         CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_CAN_CONTROL_REGADDR, 0x00, &DataIndex_u8, TRUE);
	.d2line		149
	diab.addi		r3,r1,12
	diab.addi		r6,r1,8
	diab.li		r4,32
	diab.li		r7,1
	bl		CanTrcv_31_TJA1145_PrepareSpiData
# 
#         TransmissionStatusCanControl = CanTrcv_31_TJA1145_SpiTransmit ( LtConfig_p, DataToBeSent, &DataToBeReceived[1], DataIndex_u8 );
	.d2line		151
	lbz		r6,8(r1)
	diab.addi		r4,r1,12
	diab.addi		r5,r1,18
	mr		r3,r26		# LtConfig_p=r3 LtConfig_p=r26
	bl		CanTrcv_31_TJA1145_SpiTransmit
.Llo27:
	mr		r3,r3		# TransmissionStatusCanControl=r3 TransmissionStatusCanControl=r3
# 
#         if ( (TransmissionStatusModeControl != CANTRCV_TX_SUCCEEDED)  && (TransmissionStatusCanControl != CANTRCV_TX_SUCCEEDED) )
	.d2line		153
	se_cmpi		r28,0		# TransmissionStatusModeControl=r28
	bc		1,2,.L670	# eq
.Llo8:
	se_cmpi		r3,0		# TransmissionStatusCanControl=r3
	bc		1,2,.L670	# eq
#         {
# 
#     #if( STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT )
#             /* Report DET Error */
#             Det_ReportError( CANTRCV_31_TJA1145_MODULE_ID,
#                              CANTRCV_31_TJA1145_INSTANCE_ID,
#                              CANTRCV_31_TJA1145_GET_OPMODE_SID,
#                              CANTRCV_31_TJA1145_E_NO_TRCV_CONTROL );
#     #endif
# 
#             ReturnValue = E_NOT_OK;
	.d2line		164
.Llo28:
	diab.li		r29,1		# ReturnValue=r29
	b		.L671
.L670:
# 
#         }
#         else
#         {
# 
#             ModeControl_u8 = ((uint8) DataToBeReceived[0] ) & ModeControl_u8Mask ;
	.d2line		170
.Llo29:
	lhz		r6,16(r1)		# ModeControl_u8=r6
.Llo15:
	rlwinm		r6,r6,0,29,31		# ModeControl_u8=r6 ModeControl_u8=r6
	mr		r6,r6		# ModeControl_u8=r6 ModeControl_u8=r6
# 
#             CanOpMode_u8 = ((uint8) DataToBeReceived[1] ) & CanOpMode_u8Mask ;
	.d2line		172
	lhz		r0,18(r1)		# Transceiver=r0
.Llo5:
	rlwinm		r0,r0,0,30,31		# Transceiver=r0 Transceiver=r0
.Llo6:
	mr		r0,r0		# CanOpMode_u8=r0 CanOpMode_u8=r0
# 
#             switch ( ModeControl_u8 )
	.d2line		174
	rlwinm		r6,r6,0,24,31		# ModeControl_u8=r6 ModeControl_u8=r6
	se_cmpi		r6,1		# ModeControl_u8=r6
	bc		1,2,.L681	# eq
.Llo30:
	se_cmpi		r6,4		# ModeControl_u8=r6
	bc		1,2,.L680	# eq
	se_cmpi		r6,7		# ModeControl_u8=r6
	bc		1,2,.L672	# eq
.Llo16:
	b		.L682
.L672:
#             {
# 
#                 case CANTRCV_31_TJA1145_MODE_NORMAL_COMMAND :
# 
#                     /* PRQA S 2016++ */ /* Switch statement default clause is empty */
#                     switch ( CanOpMode_u8 )
	.d2line		180
	rlwinm		r6,r0,0,24,31		# ModeControl_u8=r6 CanOpMode_u8=r0
.Llo17:
	se_cmpi		r6,0		# ModeControl_u8=r6
	bc		1,2,.L677	# eq
.Llo22:
	se_cmpi		r6,1		# ModeControl_u8=r6
	bc		1,2,.L674	# eq
	se_cmpi		r6,2		# ModeControl_u8=r6
	bc		1,2,.L674	# eq
	se_cmpi		r6,3		# ModeControl_u8=r6
	bc		1,2,.L676	# eq
.Llo18:
	b		.L671
.L674:
#                     {
# 
#                         case 0x01u :
#                         case CanTrcv_31_TJA1145_Active :
#                             /* Can operation is active. This case is considered as CanTrcv Driver Normal Mode */
# 
#                             TmpCanTrcvCurrentState = CANTRCV_TRCVMODE_NORMAL;
	.d2line		187
.Llo19:
	diab.li		r30,0		# TmpCanTrcvCurrentState=r30
	b		.L671
.L676:
# 
#                             break;
# 
#                         case CanTrcv_31_TJA1145_Listen :
#                             /* Can operation is Listen-Only. This case is considered as CanTrcv Driver Standby Mode */
# 
#                             TmpCanTrcvCurrentState = CANTRCV_TRCVMODE_STANDBY;
	.d2line		194
.Llo20:
	diab.li		r30,2		# TmpCanTrcvCurrentState=r30
	b		.L671
.L677:
# 
#                             break;
# 
#                         case 0x00u :
#                             /* Can operation is Offline. This case is considered as CanTrcv Driver Sleep Mode */
# 
#                             TmpCanTrcvCurrentState = CANTRCV_TRCVMODE_SLEEP;
	.d2line		201
.Llo21:
	diab.li		r30,1		# TmpCanTrcvCurrentState=r30
	b		.L671
.L680:
# 
#                             break;
# 
#                         default :
#                             /* Do Nothing */
# 
#                             break;
#                     }
#                     /* PRQA S 2016-- */
#                     break;
# 
#                 case CANTRCV_31_TJA1145_MODE_STANDBY_COMMAND :
# 
#                     TmpCanTrcvCurrentState = CANTRCV_TRCVMODE_STANDBY;
	.d2line		215
.Llo23:
	diab.li		r30,2		# TmpCanTrcvCurrentState=r30
	b		.L671
.L681:
# 
#                     break;
# 
#                 case CANTRCV_31_TJA1145_MODE_SLEEP_COMMAND :
# 
#                      TmpCanTrcvCurrentState = CANTRCV_TRCVMODE_SLEEP;
	.d2line		221
	diab.li		r30,1		# TmpCanTrcvCurrentState=r30
	b		.L671
.L682:
# 
#                     break;
# 
#                 default :
# 
#                     ReturnValue = E_NOT_OK;
	.d2line		227
.Llo12:
	diab.li		r29,1		# ReturnValue=r29
.L671:
# 
#                     break;
# 
#             }
#         }
# 
#         /* Protect the shared resourse - CanTrcvCurrentState */
#         SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
	.d2line		235
.Llo13:
	bl		SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1
# 
#         Status_p->CanTrcvCurrentState = TmpCanTrcvCurrentState;
	.d2line		237
	stw		r30,0(r27)		# Status_p=r27 TmpCanTrcvCurrentState=r30
# 
#         SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
	.d2line		239
	bl		SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1
# 
#         if (E_OK == ReturnValue)
	.d2line		241
	rlwinm		r3,r29,0,24,31		# TransmissionStatusCanControl=r3 ReturnValue=r29
.Llo31:
	se_cmpi		r3,0		# TransmissionStatusCanControl=r3
	bc		0,2,.L684	# ne
#         {
# 
#             *OpMode = TmpCanTrcvCurrentState;
	.d2line		244
.Llo32:
	stw		r30,0(r31)		# OpMode=r31 TmpCanTrcvCurrentState=r30
.L684:
# 
#         }
#         else
#         {
# 
#            /* Do Nothing */
# 
#         }
# #if (STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT)		
#     }
#     else
#     {
# 
#         /* Do Nothing */
# 
#     }
# #endif /*   #if(CANTRCV_31_TJA1145_DEV_ERROR_DETECT == STD_ON) */
#     return (ReturnValue);
	.d2line		262
.Llo9:
	rlwinm		r3,r29,0,24,31		# TransmissionStatusCanControl=r3 ReturnValue=r29
# 
# }/* End of CanTrcv_31_TJA1145_GetOpMode () */
	.d2line		264
	.d2epilogue_begin
	lmw		r26,40(r1)		# offset r1+40  0x28
	.d2_cfa_restore_list	2,10
.Llo14:
	lwz		r0,68(r1)		# Transceiver=r0
	mtspr		lr,r0		# Transceiver=lr
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L706:
	.type		CanTrcv_31_TJA1145_GetOpMode,@function
	.size		CanTrcv_31_TJA1145_GetOpMode,.-CanTrcv_31_TJA1145_GetOpMode
# Number of nodes = 165

# Allocations for CanTrcv_31_TJA1145_GetOpMode
#	?a4		Transceiver
#	?a5		OpMode
#	?a6		TmpCanTrcvCurrentState
#	?a7		ReturnValue
#	SP,12		DataToBeSent
#	SP,16		DataToBeReceived
#	SP,8		DataIndex_u8
#	?a8		ModeControl_u8
#	?a9		CanOpMode_u8
#	?a10		TransmissionStatusModeControl
#	?a11		TransmissionStatusCanControl
#	?a12		Status_p
#	?a13		LtConfig_p

# Allocations for module
	.section	.text_vle
	.0byte		.L753
	.section	.text_vle
#$$ld
.L5:
.L773:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L771:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\inc\\internal\\CanTrcv_31_TJA1145_Private.h"
.L755:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\..\\..\\inc\\CanTrcv_Types.h"
.L752:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\inc\\CanTrcv_31_TJA1145.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L699:
.L707:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_GetOpmode.c"
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	16
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_GetOpmode.c"
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
.L696:
	.4byte		.L697-.L695
.L695:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L701-.L696
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_GetOpmode.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L698
	.4byte		.L699
	.4byte		.L702
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L711:
	.sleb128	2
	.4byte		.L704-.L696
	.byte		"CanTrcv_31_TJA1145_GetOpMode"
	.byte		0
	.4byte		.L707
	.uleb128	85
	.uleb128	46
	.4byte		.L708
	.byte		0x1
	.byte		0x1
	.4byte		.L705
	.4byte		.L706
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L707
	.uleb128	85
	.uleb128	46
	.byte		"Transceiver"
	.byte		0
	.4byte		.L709
	.4byte		.L712
	.sleb128	3
	.4byte		.L707
	.uleb128	85
	.uleb128	46
	.byte		"OpMode"
	.byte		0
	.4byte		.L713
	.4byte		.L716
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L717:
	.sleb128	4
	.4byte		.L707
	.uleb128	90
	.uleb128	43
	.byte		"TmpCanTrcvCurrentState"
	.byte		0
	.4byte		.L714
	.4byte		.L718
.L719:
	.sleb128	4
	.4byte		.L707
	.uleb128	92
	.uleb128	36
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L708
	.4byte		.L720
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L721:
	.sleb128	5
	.4byte		.L707
	.uleb128	95
	.uleb128	28
	.byte		"DataToBeSent"
	.byte		0
	.4byte		.L722
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L726:
	.sleb128	5
	.4byte		.L707
	.uleb128	99
	.uleb128	28
	.byte		"DataToBeReceived"
	.byte		0
	.4byte		.L727
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	16
.L729:
	.sleb128	5
	.4byte		.L707
	.uleb128	102
	.uleb128	27
	.byte		"DataIndex_u8"
	.byte		0
	.4byte		.L709
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L730:
	.sleb128	4
	.4byte		.L707
	.uleb128	105
	.uleb128	27
	.byte		"ModeControl_u8"
	.byte		0
	.4byte		.L709
	.4byte		.L731
.L732:
	.sleb128	4
	.4byte		.L707
	.uleb128	108
	.uleb128	27
	.byte		"CanOpMode_u8"
	.byte		0
	.4byte		.L709
	.4byte		.L733
.L734:
	.sleb128	4
	.4byte		.L707
	.uleb128	111
	.uleb128	44
	.byte		"TransmissionStatusModeControl"
	.byte		0
	.4byte		.L735
	.4byte		.L737
.L738:
	.sleb128	4
	.4byte		.L707
	.uleb128	112
	.uleb128	44
	.byte		"TransmissionStatusCanControl"
	.byte		0
	.4byte		.L735
	.4byte		.L739
.L740:
	.sleb128	4
	.4byte		.L707
	.uleb128	115
	.uleb128	101
	.byte		"Status_p"
	.byte		0
	.4byte		.L741
	.4byte		.L744
.L745:
	.sleb128	4
	.4byte		.L707
	.uleb128	118
	.uleb128	103
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L746
	.4byte		.L750
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L704:
	.section	.debug_info,,n
.L751:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L752
	.uleb128	749
	.uleb128	88
	.byte		"CanTrcv_31_TJA1145_Status_p"
	.byte		0
	.4byte		.L741
	.0byte		.L751
.L753:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L752
	.uleb128	762
	.uleb128	88
	.byte		"CanTrcv_31_TJA1145_LtConfig_p"
	.byte		0
	.4byte		.L754
	.section	.debug_info,,n
	.section	.debug_info,,n
.L743:
	.sleb128	7
	.4byte		.L755
	.uleb128	61
	.uleb128	13
	.4byte		.L756-.L2
	.uleb128	32
	.section	.debug_info,,n
.L563:
	.sleb128	8
	.byte		"CanTrcvCurrentState"
	.byte		0
	.4byte		.L714
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L564:
	.sleb128	8
	.byte		"CanTrcvSetOpModeRxBuf"
	.byte		0
	.4byte		.L757
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L565:
	.sleb128	8
	.byte		"CanTrcvMainFuncRxBuf"
	.byte		0
	.4byte		.L759
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L566:
	.sleb128	8
	.byte		"CanTrcvMainFuncRxFlag"
	.byte		0
	.4byte		.L761
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L567:
	.sleb128	8
	.byte		"CanTrcvMainDiagnosticRxFlag"
	.byte		0
	.4byte		.L761
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L568:
	.sleb128	8
	.byte		"CanTrcvInitialised_bt"
	.byte		0
	.4byte		.L761
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L569:
	.sleb128	8
	.byte		"CanTrcvSpiRetriesCounter"
	.byte		0
	.4byte		.L709
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L570:
	.sleb128	8
	.byte		"CanTrcvSpiTimeCounter"
	.byte		0
	.4byte		.L709
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L756:
.L749:
	.sleb128	7
	.4byte		.L755
	.uleb128	61
	.uleb128	13
	.4byte		.L762-.L2
	.uleb128	20
.L547:
	.sleb128	8
	.byte		"CanTrcvInitState"
	.byte		0
	.4byte		.L763
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L548:
	.sleb128	8
	.byte		"CanTrcvMaxBaudrate"
	.byte		0
	.4byte		.L764
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L549:
	.sleb128	8
	.byte		"CanTrcvControlsPowerSupply"
	.byte		0
	.4byte		.L765
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L550:
	.sleb128	8
	.byte		"CanTrcvChannelUsed"
	.byte		0
	.4byte		.L765
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L551:
	.sleb128	8
	.byte		"CanTrcvWakeupByBusUsed"
	.byte		0
	.4byte		.L765
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L552:
	.sleb128	8
	.byte		"CanTrcvChannelId"
	.byte		0
	.4byte		.L766
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L553:
	.sleb128	8
	.byte		"CanTrcvPorWakeupSourceId"
	.byte		0
	.4byte		.L766
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L554:
	.sleb128	8
	.byte		"CanTrcvSyserrWakeupSourceId"
	.byte		0
	.4byte		.L766
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L555:
	.sleb128	8
	.byte		"CanTrcvWakeupSourceId"
	.byte		0
	.4byte		.L766
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L556:
	.sleb128	8
	.byte		"CanTrcvPinWakeupSourceId"
	.byte		0
	.4byte		.L766
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L557:
	.sleb128	8
	.byte		"CanTrcvSpiAccessSynchronous"
	.byte		0
	.4byte		.L765
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L558:
	.sleb128	8
	.byte		"CanTrcvSpiCommRetries"
	.byte		0
	.4byte		.L766
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L559:
	.sleb128	8
	.byte		"CanTrcvSpiCommTimeout"
	.byte		0
	.4byte		.L766
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L560:
	.sleb128	8
	.byte		"CanTrcvSpiChannelId"
	.byte		0
	.4byte		.L767
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L561:
	.sleb128	8
	.byte		"CanTrcvSpiSequenceId"
	.byte		0
	.4byte		.L769
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L562:
	.sleb128	8
	.byte		"CanIfTrcvID"
	.byte		0
	.4byte		.L766
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
	.sleb128	0
.L762:
	.section	.debug_info,,n
.L736:
	.sleb128	9
	.4byte		.L771
	.uleb128	229
	.uleb128	14
	.4byte		.L772-.L2
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
.L772:
.L715:
	.sleb128	9
	.4byte		.L773
	.uleb128	23
	.uleb128	15
	.4byte		.L774-.L2
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
.L774:
	.section	.debug_info,,n
.L710:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L709:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L710
.L708:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L709
.L714:
	.sleb128	12
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L715
	.section	.debug_info,,n
.L713:
	.sleb128	13
	.4byte		.L714
.L725:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L724:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L725
	.section	.debug_info,,n
.L722:
	.sleb128	14
	.4byte		.L723
	.4byte		.L724
	.section	.debug_info,,n
	.sleb128	15
	.uleb128	1
	.sleb128	0
.L723:
.L727:
	.sleb128	14
	.4byte		.L728
	.4byte		.L724
	.sleb128	15
	.uleb128	1
	.sleb128	0
.L728:
.L735:
	.sleb128	12
	.byte		"CanTrcv_SpiTransStatus"
	.byte		0
	.4byte		.L736
.L742:
	.sleb128	12
	.byte		"CanTrcv_31_TJA1145_StatusType"
	.byte		0
	.4byte		.L743
.L741:
	.sleb128	13
	.4byte		.L742
.L748:
	.sleb128	12
	.byte		"CanTrcv_31_TJA1145_LtCfgType"
	.byte		0
	.4byte		.L749
	.section	.debug_info,,n
.L747:
	.sleb128	16
	.4byte		.L748
.L746:
	.sleb128	13
	.4byte		.L747
.L754:
	.sleb128	16
	.4byte		.L746
	.section	.debug_info,,n
.L757:
	.sleb128	17
	.4byte		.L758-.L2
	.4byte		.L724
	.sleb128	15
	.uleb128	6
	.sleb128	0
.L758:
.L759:
	.sleb128	17
	.4byte		.L760-.L2
	.4byte		.L724
	.sleb128	15
	.uleb128	3
	.sleb128	0
.L760:
.L761:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L710
.L763:
	.sleb128	16
	.4byte		.L714
.L764:
	.sleb128	16
	.4byte		.L724
.L765:
	.sleb128	16
	.4byte		.L761
.L766:
	.sleb128	16
	.4byte		.L709
.L768:
	.sleb128	12
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L709
.L767:
	.sleb128	16
	.4byte		.L768
.L770:
	.sleb128	12
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L709
.L769:
	.sleb128	16
	.4byte		.L770
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L701:
	.sleb128	0
.L697:

	.section	.debug_loc,,n
	.align	0
.L712:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locend
.L716:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),31
	.d2locend
.L718:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo9),30
	.d2locend
.L720:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),29
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),29
	.d2locend
.L731:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),6
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),6
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),6
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo12),6
	.d2locend
.L733:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo12),0
	.d2locend
.L737:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo8),28
	.d2locend
.L739:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locend
.L744:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo33),0
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo32),27
	.d2locend
.L750:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo8),26
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTrcv_31_TJA1145_GetOpMode"
	.wrcm.nint32 "frameSize", 64
	.wrcm.nstrlist "calls", "CanTrcv_31_TJA1145_PrepareSpiData","CanTrcv_31_TJA1145_SpiTransmit","SchM_Enter_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1","SchM_Exit_CanTrcv_31_TJA1145_SCHM_CANTRCV_EXCLUSIVE_AREA_1"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_GetOpmode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_GetOpmode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_GetOpmode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_GetOpmode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_GetOpmode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_GetOpmode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTrcv\ssc\target\TJA1145\make\..\src\CanTrcv_31_TJA1145_GetOpmode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
