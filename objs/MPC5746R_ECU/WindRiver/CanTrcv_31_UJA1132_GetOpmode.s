#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTrcv_31_UJA1132_GetOpmode.c"
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
# FUNC(Std_ReturnType, CANTRCV_31_UJA1132_CODE)CANTRCV_31_UJA1132_GETOPMODE
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L757:
	.section	.invalid_TEXT,,c
#$$ld
.L753:
	.0byte		.L751
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_GetOpmode.c"
        .d2line         84,46
#$$ld
.L760:

#$$bf	CanTrcv_31_UJA1132_GetOpMode,interprocedural,rasave,nostackparams
	.globl		CanTrcv_31_UJA1132_GetOpMode
	.d2_cfa_start __cie
CanTrcv_31_UJA1132_GetOpMode:
.Llo1:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
.Llo21:
	stmw		r27,44(r1)		# offset r1+44  0x2c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,68(r1)		# TransmissionStatusCanControl=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Transceiver=r0 Transceiver=r3
.Llo2:
	mr		r31,r4		# OpMode=r31 OpMode=r4
	.d2prologue_end
# (VAR (uint8, AUTOMATIC)Transceiver,
#          P2VAR(CanTrcv_TrcvModeType, AUTOMATIC, CANTRCV_31_UJA1132_APPL_DATA)OpMode )
# {
# 
#     VAR (CanTrcv_TrcvModeType, AUTOMATIC) TmpCanTrcvCurrentState = CANTRCV_TRCVMODE_NORMAL;
	.d2line		89
.Llo3:
	diab.li		r30,0		# TmpCanTrcvCurrentState=r30
# 
#     VAR (Std_ReturnType, AUTOMATIC)ReturnValue;
# 
# #if (STD_ON == CANTRCV_SBCSI_SUPPORT)
# 	/* Variable to hold the CanTrcv Can Operating Mode Control */
# 	VAR(SBCSI_InTrcvMode_T, AUTOMATIC) CanOpMode;
# #else
#     /* Variable holds the data to be sent. The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeSent[CANTRCV_31_UJA1132_OPMODE_DATA_TX_LEN];
# 
#     /* Variable holds the data to be received from CanTrcv via SPI.
#        The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeReceived[CANTRCV_31_UJA1132_OPMODE_DATA_RX_LEN];
#     
# 	/* Variable to hold the number or SPI data elements to be sent/received*/
#     VAR (uint8, AUTOMATIC) DataIndex_u8;
# 
#     /* Variable to hold the CanTrcv Can Operating Mode Control */
#     VAR (uint8, AUTOMATIC) CanOpMode;
#     
#     /* Variable to hold the CanTrcv-Spi communication status*/
#     VAR(CanTrcv_SpiTransStatus,AUTOMATIC)  TransmissionStatusCanControl;
#     
#     /* Pointer to index the constand Precompile Congiguration Array. */
#     P2CONST(CanTrcv_31_UJA1132_LtCfgType, CANTRCV_31_UJA1132_VAR_FAST, CANTRCV_31_UJA1132_APPL_CONST) LtConfig_p;
#     
# #endif /* #if (STD_ON == CANTRCV_SBCSI_SUPPORT) */
# 
#     /* Pointer to the Status array for each Channel. */
#     P2VAR(CanTrcv_31_UJA1132_StatusType, CANTRCV_31_UJA1132_VAR_FAST, CANTRCV_31_UJA1132_APPL_DATA) Status_p;
# 
# #if (STD_ON == CANTRCV_31_UJA1132_DEV_ERROR_DETECT)
# 
#     ReturnValue = CanTrcv_31_UJA1132_GetOpModeDECheck (Transceiver, OpMode );
# 	if (E_OK == ReturnValue )
#     {
# 
# #else
# 
#     ReturnValue = E_OK;
	.d2line		129
.Llo11:
	diab.li		r29,0
# 
# #endif /*   #if(CANTRCV_31_UJA1132_DEV_ERROR_DETECT == STD_ON) */
# 
#         Status_p = &(CANTRCV_31_UJA1132_STATUS_P[Transceiver]);
	.d2line		133
.Llo12:
	lis		r3,CanTrcv_31_UJA1132_Status_p@ha		# Transceiver=r3
	lwz		r27,CanTrcv_31_UJA1132_Status_p@l(r3)		# Transceiver=r27 Transceiver=r3
	rlwinm		r3,r0,3,21,28		# Transceiver=r3 Transceiver=r0
	se_add		r3,r27		# Transceiver=r3 Transceiver=r3 Transceiver=r27
.Llo24:
	mr		r27,r3		# Status_p=r27 Status_p=r3
# 
# #if (STD_ON == CANTRCV_SBCSI_SUPPORT)
# 
# 		SBCSI_GetInTrcvState(SBCSI_INT_CAN_TRCV, &CanOpMode);
# #else
#         LtConfig_p  =   &(CANTRCV_31_UJA1132_LT_CONFIG_P[Transceiver]);
	.d2line		139
	rlwinm		r0,r0,0,24,31		# Transceiver=r0 Transceiver=r0
	lis		r3,CanTrcv_31_UJA1132_LtConfig_p@ha		# Transceiver=r3
.Llo25:
	lwz		r28,CanTrcv_31_UJA1132_LtConfig_p@l(r3)		# Transceiver=r28 Transceiver=r3
	rlwinm		r3,r0,5,0,26		# Transceiver=r3 Transceiver=r0
	se_slwi		r0,3		# Transceiver=r0 Transceiver=r0
	subf		r0,r0,r3		# Transceiver=r0 Transceiver=r0 Transceiver=r3
	se_add		r0,r28		# Transceiver=r0 Transceiver=r0 Transceiver=r28
.Llo4:
	mr		r28,r0		# LtConfig_p=r28 LtConfig_p=r0
#     
#         /* Prepare the CanTrcv operating Mode Read command */
#         DataIndex_u8 = 0;
	.d2line		142
.Llo22:
	diab.li		r5,0
.Llo23:
	stb		r5,8(r1)
# 		
#         CanTrcv_31_UJA1132_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_UJA1132_CAN_CONTROL_REGADDR, 0x00, &DataIndex_u8, TRUE);
	.d2line		144
	diab.addi		r3,r1,12		# Transceiver=r3
	diab.addi		r6,r1,8
	diab.li		r4,32
.Llo9:
	diab.li		r7,1
	bl		CanTrcv_31_UJA1132_PrepareSpiData
# 
#         TransmissionStatusCanControl = CanTrcv_31_UJA1132_SpiTransmit ( LtConfig_p, DataToBeSent, &DataToBeReceived[0], DataIndex_u8 );
	.d2line		146
	lbz		r6,8(r1)
	diab.addi		r4,r1,12
	diab.addi		r5,r1,16
	mr		r3,r28		# LtConfig_p=r3 LtConfig_p=r28
	bl		CanTrcv_31_UJA1132_SpiTransmit
	.d2line		148
.Llo5:
	mr.		r0,r3		# TransmissionStatusCanControl=?a10 TransmissionStatusCanControl=r3
# 
#         if (TransmissionStatusCanControl != CANTRCV_TX_SUCCEEDED)
	bc		1,2,.L733	# eq
#         {
# 
#     #if( STD_ON == CANTRCV_31_UJA1132_DEV_ERROR_DETECT )
#             /* Report DET Error */
#             Det_ReportError( CANTRCV_31_UJA1132_MODULE_ID,
#                              CANTRCV_31_UJA1132_INSTANCE_ID,
#                              CANTRCV_31_UJA1132_GET_OPMODE_SID,
#                              CANTRCV_31_UJA1132_E_NO_TRCV_CONTROL );
#     #endif
# 
#             ReturnValue = E_NOT_OK;
	.d2line		159
.Llo6:
	diab.li		r29,1		# ReturnValue=r29
	b		.L734
.L733:
# 
#         }
#         else
# #endif /* #if (STD_ON == CANTRCV_SBCSI_SUPPORT) */
#         {
# 			
# #if (STD_OFF == CANTRCV_SBCSI_SUPPORT)
#             CanOpMode = ((uint8) DataToBeReceived[0] ) & CANTRCV_31_UJA1132_OPMODE_MASK ;
	.d2line		167
	lhz		r6,16(r1)		# CanOpMode=r6
.Llo16:
	rlwinm		r6,r6,0,30,31		# CanOpMode=r6 CanOpMode=r6
	mr		r6,r6		# CanOpMode=r6 CanOpMode=r6
# #endif /* #if (STD_OFF == CANTRCV_SBCSI_SUPPORT) */
# 
# 			switch ( CanOpMode )
	.d2line		170
	rlwinm		r6,r6,0,24,31		# CanOpMode=r6 CanOpMode=r6
	se_cmpi		r6,0		# CanOpMode=r6
	bc		1,2,.L739	# eq
	se_cmpi		r6,1		# CanOpMode=r6
	bc		1,2,.L736	# eq
	se_cmpi		r6,2		# CanOpMode=r6
	bc		1,2,.L736	# eq
	se_cmpi		r6,3		# CanOpMode=r6
	bc		1,2,.L738	# eq
.Llo17:
	b		.L740
.L736:
# 			{
# #if (STD_ON == CANTRCV_SBCSI_SUPPORT)
#                 case SBCSI_INT_TRCV_MODE_CAN_ACTIVE_NORMAL_LIN_ACTIVE_NORMAL :
#                 case SBCSI_INT_TRCV_MODE_CAN_ACTIVE_NORMAL_LIN_ACTIVE_NORMAL_STANDBY :
# #else
# 				case CANTRCV_31_UJA1132_ACTIVE_01 :
# 				case CANTRCV_31_UJA1132_ACTIVE_10 :
# #endif /* #if (STD_ON == CANTRCV_SBCSI_SUPPORT) */
# 					/* Can operation is active. This case is considered as CanTrcv Driver Normal Mode */
# 
# 					TmpCanTrcvCurrentState = CANTRCV_TRCVMODE_NORMAL;
	.d2line		181
.Llo18:
	diab.li		r30,0		# TmpCanTrcvCurrentState=r30
	b		.L734
.L738:
# 
# 					break;
# 					
# #if (STD_ON == CANTRCV_SBCSI_SUPPORT)
#                 case SBCSI_INT_TRCV_MODE_CAN_LISTENONLY_LIN_LISTENONLY :
# #else
# 				case CANTRCV_31_UJA1132_LISTEN :
# #endif /* #if (STD_ON == CANTRCV_SBCSI_SUPPORT) */
# 					/* Can operation is Listen-Only. This case is considered as CanTrcv Driver Standby Mode */
# 
# 					TmpCanTrcvCurrentState = CANTRCV_TRCVMODE_STANDBY;
	.d2line		192
.Llo19:
	diab.li		r30,2		# TmpCanTrcvCurrentState=r30
	b		.L734
.L739:
# 
# 					break;
# 					
# #if (STD_ON == CANTRCV_SBCSI_SUPPORT)
#                 case SBCSI_INT_TRCV_MODE_CAN_OFF_LIN_OFF :
# #else
# 				case 0x00u :
# #endif /* #if (STD_ON == CANTRCV_SBCSI_SUPPORT) */
# 					/* Can operation is Offline. This case is considered as CanTrcv Driver Sleep Mode */
# 
# 					TmpCanTrcvCurrentState = CANTRCV_TRCVMODE_SLEEP;
	.d2line		203
.Llo20:
	diab.li		r30,1		# TmpCanTrcvCurrentState=r30
	b		.L734
.L740:
# 
# 					break;
# 
# 				default :
# 					
# 					ReturnValue = E_NOT_OK;
	.d2line		209
.Llo13:
	diab.li		r29,1		# ReturnValue=r29
.L734:
# 					
# 					break;
# 			}
#         }
# 
#         /* Protect the shared resourse - CanTrcvCurrentState */
#         SchM_Enter_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
	.d2line		216
.Llo14:
	bl		SchM_Enter_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1
# 
#         Status_p->CanTrcvCurrentState = TmpCanTrcvCurrentState;
	.d2line		218
	stw		r30,0(r27)		# Status_p=r27 TmpCanTrcvCurrentState=r30
# 
#         SchM_Exit_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1();
	.d2line		220
	bl		SchM_Exit_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1
# 
#         if (E_OK == ReturnValue)
	.d2line		222
	rlwinm		r3,r29,0,24,31		# Transceiver=r3 ReturnValue=r29
.Llo7:
	se_cmpi		r3,0		# Transceiver=r3
	bc		0,2,.L742	# ne
#         {
# 
#             *OpMode = TmpCanTrcvCurrentState;
	.d2line		225
.Llo8:
	stw		r30,0(r31)		# OpMode=r31 TmpCanTrcvCurrentState=r30
.L742:
# 
#         }
#         else
#         {
# 
#            /* Do Nothing */
# 
#         }
# #if (STD_ON == CANTRCV_31_UJA1132_DEV_ERROR_DETECT)		
#     }
#     else
#     {
# 
#         /* Do Nothing */
# 
#     }
# #endif /*   #if(CANTRCV_31_UJA1132_DEV_ERROR_DETECT == STD_ON) */
#     return (ReturnValue);
	.d2line		243
.Llo10:
	rlwinm		r3,r29,0,24,31		# Transceiver=r3 ReturnValue=r29
# 
# }/* End of CanTrcv_31_UJA1132_GetOpMode () */
	.d2line		245
	.d2epilogue_begin
	lmw		r27,44(r1)		# offset r1+44  0x2c
	.d2_cfa_restore_list	3,10
.Llo15:
	lwz		r0,68(r1)		# TransmissionStatusCanControl=r0
	mtspr		lr,r0		# TransmissionStatusCanControl=lr
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L761:
	.type		CanTrcv_31_UJA1132_GetOpMode,@function
	.size		CanTrcv_31_UJA1132_GetOpMode,.-CanTrcv_31_UJA1132_GetOpMode
# Number of nodes = 106

# Allocations for CanTrcv_31_UJA1132_GetOpMode
#	?a4		Transceiver
#	?a5		OpMode
#	?a6		$$237
#	?a7		TmpCanTrcvCurrentState
#	?a8		ReturnValue
#	SP,12		DataToBeSent
#	SP,16		DataToBeReceived
#	SP,8		DataIndex_u8
#	?a9		CanOpMode
#	?a10		TransmissionStatusCanControl
#	?a11		LtConfig_p
#	?a12		Status_p

# Allocations for module
	.section	.text_vle
	.0byte		.L804
	.section	.text_vle
#$$ld
.L5:
.L824:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L822:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\inc\\internal\\CanTrcv_31_UJA1132_Private.h"
.L806:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\..\\..\\inc\\CanTrcv_Types.h"
.L803:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\inc\\CanTrcv_31_UJA1132.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L754:
.L762:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_GetOpmode.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_GetOpmode.c"
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
.L751:
	.4byte		.L752-.L750
.L750:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L756-.L751
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_GetOpmode.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L753
	.4byte		.L754
	.4byte		.L757
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L766:
	.sleb128	2
	.4byte		.L759-.L751
	.byte		"CanTrcv_31_UJA1132_GetOpMode"
	.byte		0
	.4byte		.L762
	.uleb128	84
	.uleb128	46
	.4byte		.L763
	.byte		0x1
	.byte		0x1
	.4byte		.L760
	.4byte		.L761
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L762
	.uleb128	84
	.uleb128	46
	.byte		"Transceiver"
	.byte		0
	.4byte		.L764
	.4byte		.L767
	.sleb128	3
	.4byte		.L762
	.uleb128	84
	.uleb128	46
	.byte		"OpMode"
	.byte		0
	.4byte		.L768
	.4byte		.L771
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L772:
	.sleb128	4
	.4byte		.L762
	.uleb128	89
	.uleb128	43
	.byte		"TmpCanTrcvCurrentState"
	.byte		0
	.4byte		.L769
	.4byte		.L773
.L774:
	.sleb128	4
	.4byte		.L762
	.uleb128	91
	.uleb128	36
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L763
	.4byte		.L775
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L776:
	.sleb128	5
	.4byte		.L762
	.uleb128	98
	.uleb128	28
	.byte		"DataToBeSent"
	.byte		0
	.4byte		.L777
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L781:
	.sleb128	5
	.4byte		.L762
	.uleb128	102
	.uleb128	28
	.byte		"DataToBeReceived"
	.byte		0
	.4byte		.L782
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	16
.L784:
	.sleb128	5
	.4byte		.L762
	.uleb128	105
	.uleb128	28
	.byte		"DataIndex_u8"
	.byte		0
	.4byte		.L764
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L785:
	.sleb128	4
	.4byte		.L762
	.uleb128	108
	.uleb128	28
	.byte		"CanOpMode"
	.byte		0
	.4byte		.L764
	.4byte		.L786
.L787:
	.sleb128	4
	.4byte		.L762
	.uleb128	111
	.uleb128	44
	.byte		"TransmissionStatusCanControl"
	.byte		0
	.4byte		.L788
	.4byte		.L790
.L791:
	.sleb128	4
	.4byte		.L762
	.uleb128	114
	.uleb128	103
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L792
	.4byte		.L796
.L797:
	.sleb128	4
	.4byte		.L762
	.uleb128	119
	.uleb128	101
	.byte		"Status_p"
	.byte		0
	.4byte		.L798
	.4byte		.L801
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L759:
	.section	.debug_info,,n
.L802:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L803
	.uleb128	641
	.uleb128	88
	.byte		"CanTrcv_31_UJA1132_Status_p"
	.byte		0
	.4byte		.L798
	.0byte		.L802
.L804:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L803
	.uleb128	654
	.uleb128	88
	.byte		"CanTrcv_31_UJA1132_LtConfig_p"
	.byte		0
	.4byte		.L805
	.section	.debug_info,,n
	.section	.debug_info,,n
.L800:
	.sleb128	7
	.4byte		.L806
	.uleb128	61
	.uleb128	13
	.4byte		.L807-.L2
	.uleb128	8
	.section	.debug_info,,n
.L630:
	.sleb128	8
	.byte		"CanTrcvCurrentState"
	.byte		0
	.4byte		.L769
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L631:
	.sleb128	8
	.byte		"CanTrcvInitialised_bt"
	.byte		0
	.4byte		.L808
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L632:
	.sleb128	8
	.byte		"CanTrcvSpiRetriesCounter"
	.byte		0
	.4byte		.L764
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L633:
	.sleb128	8
	.byte		"CanTrcvSpiTimeCounter"
	.byte		0
	.4byte		.L764
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L807:
.L795:
	.sleb128	7
	.4byte		.L806
	.uleb128	61
	.uleb128	13
	.4byte		.L809-.L2
	.uleb128	24
.L615:
	.sleb128	8
	.byte		"CanTrcvInitState"
	.byte		0
	.4byte		.L810
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L616:
	.sleb128	8
	.byte		"CanTrcvMaxBaudrate"
	.byte		0
	.4byte		.L811
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L617:
	.sleb128	8
	.byte		"CanTrcvControlsPowerSupply"
	.byte		0
	.4byte		.L812
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L618:
	.sleb128	8
	.byte		"CanTrcvChannelUsed"
	.byte		0
	.4byte		.L812
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L619:
	.sleb128	8
	.byte		"CanTrcvWakeupByBusUsed"
	.byte		0
	.4byte		.L812
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L620:
	.sleb128	8
	.byte		"CanTrcvChannelId"
	.byte		0
	.4byte		.L813
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L621:
	.sleb128	8
	.byte		"CanTrcvWakeupSourceId"
	.byte		0
	.4byte		.L813
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L622:
	.sleb128	8
	.byte		"CanTrcvIcuChannelId"
	.byte		0
	.4byte		.L814
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L623:
	.sleb128	8
	.byte		"CanTrcvSpiAccessSynchronous"
	.byte		0
	.4byte		.L812
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L624:
	.sleb128	8
	.byte		"CanTrcvSpiCommRetries"
	.byte		0
	.4byte		.L813
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L625:
	.sleb128	8
	.byte		"CanTrcvSpiCommTimeout"
	.byte		0
	.4byte		.L813
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L626:
	.sleb128	8
	.byte		"CanTrcvSpiChannelId"
	.byte		0
	.4byte		.L816
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L627:
	.sleb128	8
	.byte		"CanTrcvSpiSequenceId"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L628:
	.sleb128	8
	.byte		"CanTrcvRxDioChannelId"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L629:
	.sleb128	8
	.byte		"CanIfTrcvID"
	.byte		0
	.4byte		.L813
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
	.sleb128	0
.L809:
	.section	.debug_info,,n
.L789:
	.sleb128	9
	.4byte		.L822
	.uleb128	175
	.uleb128	14
	.4byte		.L823-.L2
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
.L823:
.L770:
	.sleb128	9
	.4byte		.L824
	.uleb128	23
	.uleb128	15
	.4byte		.L825-.L2
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
.L825:
	.section	.debug_info,,n
.L765:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L764:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L765
.L763:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L764
.L769:
	.sleb128	12
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L770
	.section	.debug_info,,n
.L768:
	.sleb128	13
	.4byte		.L769
.L780:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L779:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L780
	.section	.debug_info,,n
.L777:
	.sleb128	14
	.4byte		.L778
	.4byte		.L779
	.section	.debug_info,,n
	.sleb128	15
	.uleb128	1
	.sleb128	0
.L778:
.L782:
	.sleb128	14
	.4byte		.L783
	.4byte		.L779
	.sleb128	15
	.uleb128	1
	.sleb128	0
.L783:
.L788:
	.sleb128	12
	.byte		"CanTrcv_SpiTransStatus"
	.byte		0
	.4byte		.L789
.L794:
	.sleb128	12
	.byte		"CanTrcv_31_UJA1132_LtCfgType"
	.byte		0
	.4byte		.L795
	.section	.debug_info,,n
.L793:
	.sleb128	16
	.4byte		.L794
.L792:
	.sleb128	13
	.4byte		.L793
.L799:
	.sleb128	12
	.byte		"CanTrcv_31_UJA1132_StatusType"
	.byte		0
	.4byte		.L800
.L798:
	.sleb128	13
	.4byte		.L799
.L805:
	.sleb128	16
	.4byte		.L792
.L808:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L765
.L810:
	.sleb128	16
	.4byte		.L769
.L811:
	.sleb128	16
	.4byte		.L779
.L812:
	.sleb128	16
	.4byte		.L808
.L813:
	.sleb128	16
	.4byte		.L764
.L815:
	.sleb128	12
	.byte		"Icu_ChannelType"
	.byte		0
	.4byte		.L779
.L814:
	.sleb128	16
	.4byte		.L815
.L817:
	.sleb128	12
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L764
.L816:
	.sleb128	16
	.4byte		.L817
.L819:
	.sleb128	12
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L764
.L818:
	.sleb128	16
	.4byte		.L819
.L821:
	.sleb128	12
	.byte		"Dio_ChannelType"
	.byte		0
	.4byte		.L779
.L820:
	.sleb128	16
	.4byte		.L821
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L756:
	.sleb128	0
.L752:

	.section	.debug_loc,,n
	.align	0
.L767:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L771:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo9),4
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo10),31
	.d2locend
.L773:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo10),30
	.d2locend
.L775:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),29
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),29
	.d2locend
.L786:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),6
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),6
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo13),6
	.d2locend
.L790:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo2),0
	.d2locend
.L796:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo6),28
	.d2locend
.L801:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo8),27
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTrcv_31_UJA1132_GetOpMode"
	.wrcm.nint32 "frameSize", 64
	.wrcm.nstrlist "calls", "CanTrcv_31_UJA1132_PrepareSpiData","CanTrcv_31_UJA1132_SpiTransmit","SchM_Enter_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1","SchM_Exit_CanTrcv_31_UJA1132_SCHM_CANTRCV_EXCLUSIVE_AREA_1"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_GetOpmode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_GetOpmode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_GetOpmode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_GetOpmode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_GetOpmode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_GetOpmode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTrcv\ssc\target\UJA1132\make\..\src\CanTrcv_31_UJA1132_GetOpmode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
