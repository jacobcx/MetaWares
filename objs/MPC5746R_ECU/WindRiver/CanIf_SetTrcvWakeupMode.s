#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_SetTrcvWakeupMode.c"
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
# FUNC(Std_ReturnType, CANIF_CODE)CanIf_SetTrcvWakeupMode
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_SetTrcvWakeupMode.c"
        .d2line         55,33
#$$ld
.L196:

#$$bf	CanIf_SetTrcvWakeupMode,interprocedural,rasave,nostackparams
	.globl		CanIf_SetTrcvWakeupMode
	.d2_cfa_start __cie
CanIf_SetTrcvWakeupMode:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# TransceiverId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# TransceiverId=r0 TransceiverId=r3
	.d2prologue_end
# (
#     VAR(uint8,AUTOMATIC)TransceiverId,
#     VAR(CanTrcv_TrcvWakeupModeType,AUTOMATIC) TrcvWakeupMode
# )
# {
#     /* REQ: [CANIF290] */
# 
#     /* Variable holding the TransceiverId Id */
#     VAR( uint8, AUTOMATIC )TransceiverId_u8;
# 
# /* if DET is enabled REQ: [DEV_CANIF14000] */
# #if( CANIF_DEV_ERROR_DETECT == STD_ON )
#     /* Initialise the Return value to E_OK */
#     VAR( Std_ReturnType, AUTOMATIC )CanIfRet = E_OK;
# 
#     /* Check if the CanIf module has been initialized */
#     if( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 )
#     {
#         /* Report DET error */
#         (void)Det_ReportError( CANIF_MODULE_ID,
#                          CANIF_INSTANCE_ID,
#                          CANIF_SID_SET_TRCVR_WKUP_MODE,
#                          CANIF_E_UNINIT );
#         CanIfRet = E_NOT_OK;
#     }
#     else
#     {
#         /* REQ: [CANIF535] */
#         /* Check if the 'TransceiverId Id received is valid */
#         if( TransceiverId >= CanIf_NumberOfCanTrcvUnits_u8 )
#         {
#             /* Report DET error */
#             (void)Det_ReportError( CANIF_MODULE_ID,
#                              CANIF_INSTANCE_ID,
#                              CANIF_SID_SET_TRCVR_WKUP_MODE,
#                              CANIF_E_PARAM_TRCV );
#             CanIfRet = E_NOT_OK;
# 
#         }
#         else
#         {
#             /* REQ: [CANIF536] */
#             /* if transceiver wakeup mode is not valid */
#             if ((TrcvWakeupMode != CANTRCV_WUMODE_ENABLE) &&
#                     (TrcvWakeupMode != CANTRCV_WUMODE_DISABLE) &&
#                     (TrcvWakeupMode != CANTRCV_WUMODE_CLEAR))
#             {
# 
#                 /* Report error to DET */
#                 (void)Det_ReportError( CANIF_MODULE_ID,
#                                  CANIF_INSTANCE_ID,
#                                  CANIF_SID_SET_TRCVR_WKUP_MODE,
#                                  CANIF_E_PARAM_TRCVWAKEUPMODE);
# 
#                 /* set return value to not ok */
#                 CanIfRet = E_NOT_OK;
#             } /* End if transceiver wakeup mode is not valid */
#         } /* End if( TransceiverId >= CanIf_NumberOfCanTrcvUnits_u8 ) */
#         
#     }/* End if( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 ) */
# 
#     /* If no DET errors present */
#     if( E_OK == CanIfRet )
# #else
# 
#     VAR( Std_ReturnType, AUTOMATIC )CanIfRet;
# 
# #endif/* CANIF_DEV_ERROR_DETECT == STD_ON */
# 
#     {
#         /* Get the actual ID of the underlying transceiver */
#         TransceiverId_u8 = 
	.d2line		127
	rlwinm		r0,r0,0,24,31		# TransceiverId=r0 TransceiverId=r0
.Llo2:
	lis		r3,(CanIf_TransceiverDrvConfig_a+26)@ha		# TransceiverId_u8=r3
.Llo3:
	e_add16i		r3,r3,(CanIf_TransceiverDrvConfig_a+26)@l		# TransceiverId_u8=r3 TransceiverId_u8=r3
	rlwinm		r5,r0,5,0,26		# TransceiverId=r0
	se_slwi		r0,2		# TransceiverId=r0 TransceiverId=r0
	subf		r0,r0,r5		# TransceiverId=r0 TransceiverId=r0
	lbzx		r3,r3,r0		# TransceiverId_u8=r3 TransceiverId_u8=r3
	mr		r3,r3		# TransceiverId_u8=r3 TransceiverId_u8=r3
#                 CanIf_TransceiverDrvConfig_a[ TransceiverId ].CanIfTrcvIdRef_u8;
#         /* REQ: [CANIF372] */
#         /* Call the corresponding TransceiverId driver API */
#         CanIfRet = CanIf_TransceiverDrvConfig_a[ TransceiverId ].
	.d2line		131
	lis		r5,(CanIf_TransceiverDrvConfig_a+16)@ha
	e_add16i		r5,r5,(CanIf_TransceiverDrvConfig_a+16)@l
	lwzx		r0,r5,r0		# TransceiverId=r0
.Llo4:
	mtspr		ctr,r0		# TransceiverId=ctr
	rlwinm		r3,r3,0,24,31		# TransceiverId_u8=r3 TransceiverId_u8=r3
.Llo6:
	mr		r0,r4		# TrcvWakeupMode=r0 TrcvWakeupMode=r4
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
#         CanIfCanTrcvSetWakeupMode( TransceiverId_u8, TrcvWakeupMode );
#         
#     }/* End if( E_OK == CanIfRet ) */
# 
# 
#     return CanIfRet;
	.d2line		137
.Llo5:
	rlwinm		r3,r3,0,24,31		# CanIfRet=r3 CanIfRet=r3
# 
# }/* End of CanIf_SetTrcvWakeupMode() */
	.d2line		139
	.d2epilogue_begin
.Llo7:
	lwz		r0,20(r1)		# TransceiverId=r0
	mtspr		lr,r0		# TransceiverId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L197:
	.type		CanIf_SetTrcvWakeupMode,@function
	.size		CanIf_SetTrcvWakeupMode,.-CanIf_SetTrcvWakeupMode
# Number of nodes = 33

# Allocations for CanIf_SetTrcvWakeupMode
#	?a4		TransceiverId
#	?a5		TrcvWakeupMode
#	?a6		$$70
#	?a7		$$69
#	?a8		TransceiverId_u8
#	?a9		CanIfRet

# Allocations for module
	.section	.text_vle
	.0byte		.L211
	.section	.text_vle
#$$ld
.L5:
.L250:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L218:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L212:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\internal\\CanIf_Private.h"
.L198:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_SetTrcvWakeupMode.c"
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
	.uleb128	6
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
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
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
	.uleb128	11
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	38
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
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	5
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_SetTrcvWakeupMode.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info,,n
.L202:
	.sleb128	2
	.4byte		.L195-.L2
	.byte		"CanIf_SetTrcvWakeupMode"
	.byte		0
	.4byte		.L198
	.uleb128	55
	.uleb128	33
	.4byte		.L199
	.byte		0x1
	.byte		0x1
	.4byte		.L196
	.4byte		.L197
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L198
	.uleb128	55
	.uleb128	33
	.byte		"TransceiverId"
	.byte		0
	.4byte		.L200
	.4byte		.L203
	.sleb128	3
	.4byte		.L198
	.uleb128	55
	.uleb128	33
	.byte		"TrcvWakeupMode"
	.byte		0
	.4byte		.L204
	.4byte		.L206
	.section	.debug_info,,n
.L207:
	.sleb128	4
	.4byte		.L198
	.uleb128	64
	.uleb128	28
	.byte		"TransceiverId_u8"
	.byte		0
	.4byte		.L200
	.4byte		.L208
.L209:
	.sleb128	4
	.4byte		.L198
	.uleb128	121
	.uleb128	37
	.byte		"CanIfRet"
	.byte		0
	.4byte		.L199
	.4byte		.L210
	.section	.debug_info,,n
	.sleb128	0
.L195:
	.section	.debug_info,,n
.L211:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L212
	.uleb128	561
	.uleb128	1
	.byte		"CanIf_TransceiverDrvConfig_a"
	.byte		0
	.4byte		.L213
	.section	.debug_info,,n
	.section	.debug_info,,n
.L217:
	.sleb128	6
	.4byte		.L218
	.uleb128	266
	.uleb128	1
	.4byte		.L219-.L2
	.uleb128	28
	.section	.debug_info,,n
.L161:
	.sleb128	7
	.byte		"CanIfTrcvEcuMWakeupSource"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L162:
	.sleb128	7
	.byte		"CanIfCanTrcvSetOpMode"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L163:
	.sleb128	7
	.byte		"CanIfCanTrcvGetOpMode"
	.byte		0
	.4byte		.L229
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L164:
	.sleb128	7
	.byte		"CanIfCanTrcvGetBusWuReason"
	.byte		0
	.4byte		.L234
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L165:
	.sleb128	7
	.byte		"CanIfCanTrcvSetWakeupMode"
	.byte		0
	.4byte		.L241
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L166:
	.sleb128	7
	.byte		"CanIfCanTrcvCheckWakeup"
	.byte		0
	.4byte		.L245
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L167:
	.sleb128	7
	.byte		"CanIfTrcvWakeupSourceIntIdx"
	.byte		0
	.4byte		.L200
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L168:
	.sleb128	7
	.byte		"CanIfTrcvWakeupSupport_b"
	.byte		0
	.4byte		.L249
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
.L169:
	.sleb128	7
	.byte		"CanIfTrcvIdRef_u8"
	.byte		0
	.4byte		.L200
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L170:
	.sleb128	7
	.byte		"CanIfTrcvDriverNameRef_u8"
	.byte		0
	.4byte		.L200
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
	.sleb128	0
.L219:
	.section	.debug_info,,n
.L240:
	.sleb128	8
	.4byte		.L250
	.uleb128	41
	.uleb128	15
	.4byte		.L251-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	9
	.byte		"CANTRCV_WU_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"CANTRCV_WU_BY_PIN"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"CANTRCV_WU_BY_BUS"
	.byte		0
	.sleb128	2
	.sleb128	9
	.byte		"CANTRCV_WU_INTERNALLY"
	.byte		0
	.sleb128	3
	.sleb128	9
	.byte		"CANTRCV_WU_NOT_SUPPORTED"
	.byte		0
	.sleb128	4
	.sleb128	9
	.byte		"CANTRCV_WU_POWER_ON"
	.byte		0
	.sleb128	5
	.sleb128	9
	.byte		"CANTRCV_WU_RESET"
	.byte		0
	.sleb128	6
	.sleb128	9
	.byte		"CANTRCV_WU_BY_SYSERR"
	.byte		0
	.sleb128	7
	.sleb128	0
.L251:
.L205:
	.sleb128	8
	.4byte		.L250
	.uleb128	32
	.uleb128	15
	.4byte		.L252-.L2
	.uleb128	4
	.sleb128	9
	.byte		"CANTRCV_WUMODE_ENABLE"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"CANTRCV_WUMODE_DISABLE"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"CANTRCV_WUMODE_CLEAR"
	.byte		0
	.sleb128	2
	.sleb128	0
.L252:
.L228:
	.sleb128	8
	.4byte		.L250
	.uleb128	23
	.uleb128	15
	.4byte		.L253-.L2
	.uleb128	4
	.sleb128	9
	.byte		"CANTRCV_TRCVMODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"CANTRCV_TRCVMODE_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"CANTRCV_TRCVMODE_STANDBY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L253:
	.section	.debug_info,,n
.L201:
	.sleb128	10
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L200:
	.sleb128	11
	.byte		"uint8"
	.byte		0
	.4byte		.L201
.L199:
	.sleb128	11
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L200
.L204:
	.sleb128	11
	.byte		"CanTrcv_TrcvWakeupModeType"
	.byte		0
	.4byte		.L205
.L216:
	.sleb128	11
	.byte		"CanIfTransceiverDrvConfig_t"
	.byte		0
	.4byte		.L217
	.section	.debug_info,,n
.L215:
	.sleb128	12
	.4byte		.L216
	.section	.debug_info,,n
.L213:
	.sleb128	13
	.4byte		.L214-.L2
	.4byte		.L215
	.section	.debug_info,,n
	.sleb128	14
	.sleb128	0
.L214:
.L222:
	.sleb128	10
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L221:
	.sleb128	11
	.byte		"uint32"
	.byte		0
	.4byte		.L222
.L220:
	.sleb128	11
	.byte		"EcuM_WakeupSourceType"
	.byte		0
	.4byte		.L221
	.section	.debug_info,,n
.L225:
	.sleb128	15
	.4byte		.L226-.L2
	.4byte		.L199
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	16
	.4byte		.L200
.L227:
	.sleb128	11
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L228
	.sleb128	16
	.4byte		.L227
	.sleb128	0
.L226:
	.section	.debug_info,,n
.L224:
	.sleb128	17
	.4byte		.L225
.L223:
	.sleb128	11
	.byte		"CanIfCanTrcvSetOpMode_t"
	.byte		0
	.4byte		.L224
.L231:
	.sleb128	15
	.4byte		.L232-.L2
	.4byte		.L199
	.byte		0x1
	.sleb128	16
	.4byte		.L200
.L233:
	.sleb128	17
	.4byte		.L227
	.sleb128	16
	.4byte		.L233
	.sleb128	0
.L232:
.L230:
	.sleb128	17
	.4byte		.L231
.L229:
	.sleb128	11
	.byte		"CanIfCanTrcvGetOpMode_t"
	.byte		0
	.4byte		.L230
.L236:
	.sleb128	15
	.4byte		.L237-.L2
	.4byte		.L199
	.byte		0x1
	.sleb128	16
	.4byte		.L200
.L239:
	.sleb128	11
	.byte		"CanTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L240
.L238:
	.sleb128	17
	.4byte		.L239
	.sleb128	16
	.4byte		.L238
	.sleb128	0
.L237:
.L235:
	.sleb128	17
	.4byte		.L236
.L234:
	.sleb128	11
	.byte		"CanIfCanTrcvGetBusWuReason_t"
	.byte		0
	.4byte		.L235
.L243:
	.sleb128	15
	.4byte		.L244-.L2
	.4byte		.L199
	.byte		0x1
	.sleb128	16
	.4byte		.L200
	.sleb128	16
	.4byte		.L204
	.sleb128	0
.L244:
.L242:
	.sleb128	17
	.4byte		.L243
.L241:
	.sleb128	11
	.byte		"CanIfCanTrcvSetWakeupMode_t"
	.byte		0
	.4byte		.L242
.L247:
	.sleb128	15
	.4byte		.L248-.L2
	.4byte		.L199
	.byte		0x1
	.sleb128	16
	.4byte		.L200
	.sleb128	0
.L248:
.L246:
	.sleb128	17
	.4byte		.L247
.L245:
	.sleb128	11
	.byte		"CanIfCanTrcvCheckWakeup_t"
	.byte		0
	.4byte		.L246
.L249:
	.sleb128	11
	.byte		"boolean"
	.byte		0
	.4byte		.L201
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L203:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locend
.L206:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locend
.L208:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo6),3
	.d2locend
.L210:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo7),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanIf_SetTrcvWakeupMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "indirectCalls", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_SetTrcvWakeupMode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_SetTrcvWakeupMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_SetTrcvWakeupMode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_SetTrcvWakeupMode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_SetTrcvWakeupMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_SetTrcvWakeupMode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanIf\ssc\make\..\src\CanIf_SetTrcvWakeupMode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
