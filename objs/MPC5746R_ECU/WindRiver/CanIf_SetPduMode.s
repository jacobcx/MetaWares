#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_SetPduMode.c"
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
# FUNC(Std_ReturnType, CANIF_CODE)CanIf_SetPduMode
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_SetPduMode.c"
        .d2line         54,33
#$$ld
.L211:

#$$bf	CanIf_SetPduMode,interprocedural,rasave,nostackparams
	.globl		CanIf_SetPduMode
	.d2_cfa_start __cie
CanIf_SetPduMode:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo7:
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# CanIfRet=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# ControllerId=r31 ControllerId=r3
	mr		r30,r4		# PduModeRequest=r30 PduModeRequest=r4
	.d2prologue_end
# (
#     VAR(uint8, AUTOMATIC) ControllerId,
#     VAR(CanIf_PduModeType, AUTOMATIC) PduModeRequest
# )
# {
#     /*REQ: [CANIF008] */
#     /* Initialise the Return value to E_OK */
#     VAR( Std_ReturnType, AUTOMATIC )CanIfRet = E_OK;
	.d2line		62
	diab.li		r0,0		# CanIfRet=r0
# 
# /* if DET is enabled REQ: [DEV_CANIF14000] */
# #if( CANIF_DEV_ERROR_DETECT == STD_ON )
# 
#     /* REQ:  [CANIF344] */
#     /* Check if the CanIf module has been initialized */
#     if( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 )
#     {
#         /* Report DET error */
#         (void)Det_ReportError( CANIF_MODULE_ID,
#                          CANIF_INSTANCE_ID,
#                          CANIF_SID_SET_PDU_MODE,
#                          CANIF_E_UNINIT );
# 
#         CanIfRet = E_NOT_OK;
#     }
#     else
#     {
#         /* REQ: [CANIF341] */
#         /* Check if Controller Id received is valid */
#         if( ControllerId >= CanIf_NumberOfCanCtrlUnits_u8 )
#         {
#             /* Report DET error */
#             (void)Det_ReportError( CANIF_MODULE_ID,
#                              CANIF_INSTANCE_ID,
#                              CANIF_SID_SET_PDU_MODE,
#                              CANIF_E_PARAM_CONTROLLERID );
# 
#             CanIfRet = E_NOT_OK;
#         }
#         else
#         {
#             /* REQ: [SWS_CANIF_00860] */
#             /* Check if Pdu Mode requested is valid */
#             if( PduModeRequest >= CANIF_PDU_MODE_MAX )
#             {
#                 /* Report DET error */
#                 (void)Det_ReportError( CANIF_MODULE_ID,
#                                  CANIF_INSTANCE_ID,
#                                  CANIF_SID_SET_PDU_MODE,
#                                  CANIF_E_PARAM_PDU_MODE );
# 
#                 CanIfRet = E_NOT_OK;
#             } /* if */
# 
#         }/* End if( Controller >= CanIf_NumberOfCanCtrlUnits_u8 ) */
# 
#     }/* End if( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 ) */
# 
#     /* Check if no DET errors present */
#     if( E_OK == CanIfRet )
# 
# #endif/* CANIF_DEV_ERROR_DETECT == STD_ON */
#     {
#         /* REQ: [] If CANIF_TX_OFFLINE_ACTIVE_SUPPORT is off,
#          * then CANIF_TX_OFFLINE_ACTIVE mode is not allowed. */
# #if (CANIF_TX_OFFLINE_ACTIVE_SUPPORT == STD_OFF)
#         if(CANIF_TX_OFFLINE_ACTIVE == PduModeRequest)
	.d2line		120
	se_cmpi		r30,2		# PduModeRequest=r30
#         {
#             CanIfRet = E_NOT_OK;
	.d2line		122
	diab.li		r29,1		# CanIfRet=r29
	isel		r29,r29,r0,2		# CanIfRet=r29 CanIfRet=r29 CanIfRet=r0
.L194:
# /* If Development Error Detection enabled */
# #if( CANIF_DEV_ERROR_DETECT == STD_ON )
#             /* Report DET error */
#             (void)Det_ReportError( CANIF_MODULE_ID,
#                              CANIF_INSTANCE_ID,
#                              CANIF_SID_SET_PDU_MODE,
#                              CANIF_E_PARAM_PDU_MODE );
# #endif/* CANIF_DEV_ERROR_DETECT == STD_ON */
#         }
# #endif /* CANIF_TX_OFFLINE_ACTIVE_SUPPORT == STD_OFF */
#     }
# 
#     if( E_OK == CanIfRet )
	.d2line		135
.Llo2:
	rlwinm		r3,r29,0,24,31		# CanIfRet=r29
.Llo3:
	se_cmpi		r3,0
	bc		0,2,.L195	# ne
#     {
#         /* REQ: [SWS_CANIF_00874] Only accept any request if controller mode is started. */
#         if(CANIF_CS_STARTED != CanIf_ControllerMode_a[ControllerId])
	.d2line		138
	lis		r3,CanIf_ControllerMode_a@ha
	e_add16i		r3,r3,CanIf_ControllerMode_a@l
	rlwinm		r0,r31,2,22,29		# CanIfRet=r0 ControllerId=r31
	lwzx		r0,r3,r0		# CanIfRet=r0
	se_cmpi		r0,1		# CanIfRet=r0
#         {
#             CanIfRet = E_NOT_OK;
	.d2line		140
	diab.li		r0,1		# CanIfRet=r0
	isel		r29,r29,r0,2		# CanIfRet=r29 CanIfRet=r29 CanIfRet=r0
.L195:
#         }
#     }
# 
#     if( E_OK == CanIfRet )
	.d2line		144
	rlwinm		r3,r29,0,24,31		# CanIfRet=r29
	se_cmpi		r3,0
	bc		0,2,.L197	# ne
#     {
#         /* Enter Critical Section */
#         SchM_Enter_CanIf(  SCHM_CANIF_EXCLUSIVE_AREA_0 );
	.d2line		147
	diab.li		r3,0
	bl		SchM_Enter_CanIf
# 
#         /* Update with the new PDU mode */
#         CanIf_PduMode_a[ ControllerId ] = PduModeRequest;
	.d2line		150
	lis		r3,CanIf_PduMode_a@ha
	e_add16i		r3,r3,CanIf_PduMode_a@l
	rlwinm		r0,r31,2,22,29		# CanIfRet=r0 ControllerId=r31
	stwx		r30,r3,r0		# PduModeRequest=r30
# 
#         /* Check if the requested mode sets TX path OFFLINE */
#         if( ( CANIF_OFFLINE == PduModeRequest ) ||
	.d2line		153
	se_cmpi		r30,0		# PduModeRequest=r30
	bc		1,2,.L200	# eq
	se_cmpi		r30,1		# PduModeRequest=r30
	bc		1,2,.L200	# eq
	se_cmpi		r30,2		# PduModeRequest=r30
	bc		0,2,.L198	# ne
.L200:
#             ( CANIF_TX_OFFLINE == PduModeRequest ) ||
#             ( CANIF_TX_OFFLINE_ACTIVE == PduModeRequest ) )
#         {
#             /* REQ: [CANIF073], [CANIF489] */
#             /* Clear all Tx Buffers */
#             CanIf_ClearTxBuffers( (ControllerType)ControllerId );
	.d2line		159
	rlwinm		r3,r31,0,24,31		# ControllerId=r31
	bl		CanIf_ClearTxBuffers
.L198:
#         } /* if */
# 
#         /* REQ: [CANIF748], [CANIF749], [CANIF747] */
#         /* As per AR 4.2.2, this part of PN filtering should be performed in CanIf_SetControllerMode(), see SWS_CANIF_00749. */
# #if (CANIF_PN_SUPPORT == STD_ON)
#         /* Check if requested mode equal CANIF_SET_ONLINE or CANIF_SET_TX_ONLINE
#             and ther is Pdu configured as PnFilterPdu*/
#         if((CANIF_ONLINE == PduModeRequest) && (CanIf_NoOfPnFilterPduIds_p[ControllerId] > 0))
#         {
#             CanIf_ControllerConfig_a[ControllerId].CanIfControllerConfigRAM->CanIfPnTxFilter = CANIF_TRUE;
#         }
# 
# #endif /* END #if (CANIF_PN_SUPPORT == STD_ON)*/ 
# 
# #if (CANIF_RX_INT_DECOUPLING == STD_ON)
#         /* Check if the requested mode sets RX path OFFLINE */
#         if((CANIF_OFFLINE == PduModeRequest) || (CANIF_TX_OFFLINE_ACTIVE == PduModeRequest))
	.d2line		176
	se_cmpi		r30,0		# PduModeRequest=r30
	bc		1,2,.L201	# eq
	se_cmpi		r30,2		# PduModeRequest=r30
	bc		0,2,.L199	# ne
.L201:
#         {
#             /* Clear pending Rx indications, REQ: [CANIF073] */
#             CanIf_ClearRxIntDecoupleStatus((ControllerType)ControllerId);
	.d2line		179
	rlwinm		r3,r31,0,24,31		# ControllerId=r31
	bl		CanIf_ClearRxIntDecoupleStatus
.L199:
# 
#         } /* if */
# #endif /* (CANIF_RX_INT_DECOUPLING == STD_ON) */
# 
#         /* Leave Critical Section */
#         SchM_Exit_CanIf(SCHM_CANIF_EXCLUSIVE_AREA_0);
	.d2line		185
.Llo5:
	diab.li		r3,0
	bl		SchM_Exit_CanIf
.L197:
#     }
# 
#     return CanIfRet;
	.d2line		188
.Llo4:
	rlwinm		r3,r29,0,24,31		# CanIfRet=r29
# 
# }/* End of CanIf_SetPduMode() */
	.d2line		190
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo8:
	lwz		r0,36(r1)		# CanIfRet=r0
	mtspr		lr,r0		# CanIfRet=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo6:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L212:
	.type		CanIf_SetPduMode,@function
	.size		CanIf_SetPduMode,.-CanIf_SetPduMode
# Number of nodes = 75

# Allocations for CanIf_SetPduMode
#	?a4		ControllerId
#	?a5		PduModeRequest
#	?a6		CanIfRet

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L233:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L225:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\internal\\CanIf_Private.h"
.L213:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_SetPduMode.c"
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
	.uleb128	7
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	8
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
	.uleb128	9
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	33
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_SetPduMode.c"
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
.L217:
	.sleb128	2
	.4byte		.L210-.L2
	.byte		"CanIf_SetPduMode"
	.byte		0
	.4byte		.L213
	.uleb128	54
	.uleb128	33
	.4byte		.L214
	.byte		0x1
	.byte		0x1
	.4byte		.L211
	.4byte		.L212
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L213
	.uleb128	54
	.uleb128	33
	.byte		"ControllerId"
	.byte		0
	.4byte		.L215
	.4byte		.L218
	.sleb128	3
	.4byte		.L213
	.uleb128	54
	.uleb128	33
	.byte		"PduModeRequest"
	.byte		0
	.4byte		.L219
	.4byte		.L221
	.section	.debug_info,,n
.L222:
	.sleb128	4
	.4byte		.L213
	.uleb128	62
	.uleb128	37
	.byte		"CanIfRet"
	.byte		0
	.4byte		.L214
	.4byte		.L223
	.section	.debug_info,,n
	.sleb128	0
.L210:
	.section	.debug_info,,n
.L224:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L225
	.uleb128	336
	.uleb128	1
	.byte		"CanIf_ControllerMode_a"
	.byte		0
	.4byte		.L226
	.0byte		.L224
.L230:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L225
	.uleb128	342
	.uleb128	42
	.byte		"CanIf_PduMode_a"
	.byte		0
	.4byte		.L231
	.section	.debug_info,,n
.L220:
	.sleb128	6
	.4byte		.L233
	.uleb128	103
	.uleb128	1
	.4byte		.L234-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"CANIF_OFFLINE"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"CANIF_TX_OFFLINE"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"CANIF_TX_OFFLINE_ACTIVE"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"CANIF_ONLINE"
	.byte		0
	.sleb128	3
	.sleb128	7
	.byte		"CANIF_PDU_MODE_MAX"
	.byte		0
	.sleb128	4
	.sleb128	0
.L234:
.L229:
	.sleb128	6
	.4byte		.L233
	.uleb128	74
	.uleb128	1
	.4byte		.L235-.L2
	.uleb128	4
	.sleb128	7
	.byte		"CANIF_CS_SLEEP"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"CANIF_CS_STARTED"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"CANIF_CS_STOPPED"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"CANIF_CS_UNINIT"
	.byte		0
	.sleb128	3
	.sleb128	0
.L235:
	.section	.debug_info,,n
.L216:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L215:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L216
.L214:
	.sleb128	9
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L215
.L219:
	.sleb128	9
	.byte		"CanIf_PduModeType"
	.byte		0
	.4byte		.L220
.L228:
	.sleb128	9
	.byte		"CanIf_ControllerModeType"
	.byte		0
	.4byte		.L229
	.section	.debug_info,,n
.L226:
	.sleb128	10
	.4byte		.L227-.L2
	.4byte		.L228
	.section	.debug_info,,n
	.sleb128	11
	.sleb128	0
.L227:
.L231:
	.sleb128	10
	.4byte		.L232-.L2
	.4byte		.L219
	.sleb128	11
	.sleb128	0
.L232:
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L218:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L221:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),4
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo5),30
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo6),4
	.d2locend
.L223:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo2),0
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo8),29
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanIf_SetPduMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanIf_ClearRxIntDecoupleStatus","CanIf_ClearTxBuffers","SchM_Enter_CanIf","SchM_Exit_CanIf"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_SetPduMode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_SetPduMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_SetPduMode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_SetPduMode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_SetPduMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_SetPduMode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanIf\ssc\make\..\src\CanIf_SetPduMode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
