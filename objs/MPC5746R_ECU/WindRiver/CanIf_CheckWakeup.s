#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_CheckWakeup.c"
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
# FUNC( Std_ReturnType, CANIF_CODE )CanIf_CheckWakeup
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_CheckWakeup.c"
        .d2line         59,35
#$$ld
.L221:

#$$bf	CanIf_CheckWakeup,interprocedural,rasave,nostackparams
	.globl		CanIf_CheckWakeup
	.d2_cfa_start __cie
CanIf_CheckWakeup:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# WakeupSource=r31 WakeupSource=r3
	.d2prologue_end
# (
#     VAR(EcuM_WakeupSourceType, AUTOMATIC)WakeupSource
# )
# {
#     /* REQ: [CANIF219] */
#     VAR( Std_ReturnType, AUTOMATIC)CanIfRet = E_NOT_OK;
	.d2line		65
	diab.li		r28,1		# CanIfRet=r28
	.section	.text_vle
.L234:
# 
# 
# /* if DET is enabled REQ: [DEV_CANIF14000] */
# #if ( CANIF_DEV_ERROR_DETECT == STD_ON )
#     /* REQ: [CANIF401] */
#     /* Check if the CanIf module has been initialized */
#     if ( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 )
#     {
#         /* Report DET Error */
#         (void)Det_ReportError( CANIF_MODULE_ID,
#                          CANIF_INSTANCE_ID,
#                          CANIF_SID_CHK_WAKEUP,
#                          CANIF_E_UNINIT );
#         CanIfRet = E_NOT_OK;
#     }
# 
#     else
#     
# #endif/* CANIF_DEV_ERROR_DETECT == STD_ON */
# 
#     {
# 
#         VAR(uint8, AUTOMATIC) CtrlId;
#         VAR(boolean, AUTOMATIC) IsError = CANIF_FALSE;
	.d2line		89
.Llo2:
	diab.li		r29,0		# IsError=r29
# #if ( CANIF_DEV_ERROR_DETECT == STD_ON )
#         VAR(boolean, AUTOMATIC) IsWakeupSourceFound = CANIF_FALSE;
# #endif
# 
#         /* Identify the WakeupSource:
#            Find all controllers and transceivers whose WakeupSource matches.
#            REQ: [CANIF678] If no matching WakeupSource report pending wakeup,
#            return value will remain E_NOT_OK.
#         */
# 
#         for (CtrlId = 0; CtrlId < CanIf_NumberOfCanCtrlUnits_u8; CtrlId++)
	.d2line		100
.Llo3:
	diab.li		r30,0
.L194:
.Llo5:
	rlwinm		r0,r30,0,24,31		# CanIfCanCheckWakeup_fp=r0 CtrlId=r30
.Llo24:
	lis		r3,CanIf_NumberOfCanCtrlUnits_u8@ha		# ControllerConfig=r3
.Llo8:
	lbz		r3,CanIf_NumberOfCanCtrlUnits_u8@l(r3)		# ControllerConfig=r3 ControllerConfig=r3
	se_cmp		r0,r3		# CanIfCanCheckWakeup_fp=r0 ControllerConfig=r3
	bc		0,0,.L196	# ge
	.section	.text_vle
.L243:
#         {
#             CONSTP2CONST(CanIfControllerConfig_t, CANIF_CONST, CANIF_APPL_CONST)
#             ControllerConfig = &CanIf_ControllerConfig_a[CtrlId];
	.d2line		103
.Llo9:
	lis		r3,CanIf_ControllerConfig_a@ha		# ControllerConfig=r3
.Llo10:
	e_add16i		r3,r3,CanIf_ControllerConfig_a@l		# ControllerConfig=r3 ControllerConfig=r3
	rlwinm		r0,r30,4,20,27		# CanIfCanCheckWakeup_fp=r0 CtrlId=r30
.Llo25:
	se_add		r0,r3		# CanIfCanCheckWakeup_fp=r0 CanIfCanCheckWakeup_fp=r0 ControllerConfig=r3
.Llo26:
	mr		r3,r0		# ControllerConfig=r3 ControllerConfig=r0
# 
#             if ((STD_OFF != ControllerConfig->CanIfWakeupSupport_b) &&
	.d2line		105
.Llo11:
	lbz		r0,8(r3)		# CanIfCanCheckWakeup_fp=r0 ControllerConfig=r3
.Llo27:
	se_cmpi		r0,0		# CanIfCanCheckWakeup_fp=r0
	bc		1,2,.L197	# eq
.Llo12:
	lwz		r0,0(r3)		# CanIfCanCheckWakeup_fp=r0 ControllerConfig=r3
.Llo28:
	se_cmpl		r0,r31		# CanIfCanCheckWakeup_fp=r0 WakeupSource=r31
	bc		0,2,.L197	# ne
#                 (WakeupSource == ControllerConfig->CanIfCtrlrEcuMWakeupSource))
#             {
# #if ( CANIF_DEV_ERROR_DETECT == STD_ON )
#                 IsWakeupSourceFound = CANIF_TRUE;
# #endif
# 
#                 if(CanIf_ControllerMode_a[CtrlId] == CANIF_CS_SLEEP)
	.d2line		112
.Llo29:
	lis		r4,CanIf_ControllerMode_a@ha
	e_add16i		r4,r4,CanIf_ControllerMode_a@l
	rlwinm		r0,r30,2,22,29		# CanIfCanCheckWakeup_fp=r0 CtrlId=r30
.Llo30:
	lwzx		r0,r4,r0		# CanIfCanCheckWakeup_fp=r0
	se_cmpi		r0,0		# CanIfCanCheckWakeup_fp=r0
	bc		0,2,.L198	# ne
	.section	.text_vle
.L254:
#                 {
#                     /* Get the driver Id for the controller */
#                     VAR(uint8, AUTOMATIC) DrvId = ControllerConfig->CanIfDriverNameRef_u8;
	.d2line		115
.Llo31:
	lbz		r0,11(r3)		# CanIfCanCheckWakeup_fp=r0 ControllerConfig=r3
.Llo22:
	mr		r0,r0		# DrvId=r0 DrvId=r0
#                     P2FUNC(Can_ReturnType, AUTOMATIC, CanIfCanCheckWakeup_fp)(VAR(uint8,AUTOMATIC) Controller) =
	.d2line		116
	lis		r4,(CanIf_DriverConfig_a+8)@ha
	e_add16i		r4,r4,(CanIf_DriverConfig_a+8)@l
	rlwinm		r0,r0,4,20,27		# DrvId=r0 DrvId=r0
	lwzx		r0,r4,r0		# DrvId=r0
	.d2line		121
.Llo32:
	mr.		r0,r0		# CanIfCanCheckWakeup_fp=?a11 CanIfCanCheckWakeup_fp=?a15
#                             CanIf_DriverConfig_a[DrvId].CanIfCanCheckWakeup_p;
# 
#                     /* REQ: [CANIF395] */
#                     /* Call the CAN Driver API to check the wakeup */
#                     if (NULL_PTR != CanIfCanCheckWakeup_fp)
.Llo23:
	bc		1,2,.L197	# eq
#                     {
#                         if (CAN_OK == CanIfCanCheckWakeup_fp(ControllerConfig->CanIfControllerIdRef_u8))
	.d2line		123
.Llo13:
	mtspr		ctr,r0		# CanIfCanCheckWakeup_fp=ctr CanIfCanCheckWakeup_fp=r0
.Llo14:
	lbz		r3,10(r3)		# ControllerConfig=r3 ControllerConfig=r3
.Llo15:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo16:
	se_cmpi		r3,0		# ControllerConfig=r3
	bc		0,2,.L197	# ne
#                         {
#                             /*No store for Wake up detection for every Controller REQ 722,458 deleted*/
#                             /* REQ: [CANIF720] */
#                             CanIfRet = E_OK;
	.d2line		127
.Llo17:
	diab.li		r28,0		# CanIfRet=r28
	b		.L197
	.section	.text_vle
.L255:
.L198:
#                         }
#                         else
#                         {
#                             /* Do Nothing */
#                         }/* End if (NULL_PTR != CanIfCanCheckWakeup_fp) */
#                     }
#                     else
#                     {
#                         /* Do Nothing */
#                     }/* End if(E_OK == CanIfRet) */
#                 }/*if(CanIf_ControllerMode_a[CtrlId] == CANIF_CS_SLEEP)*/
#                 else
#                 {
#                     /* REQ: [CANIF679] */
#                     /* If CAN controller is not in mode CANIF_CS_SLEEP, the CanIf shall
#                        raise the production error code CANIF_E_NOT_SLEEP
#                     */
# #if ( CANIF_DEV_ERROR_DETECT == STD_ON )
#                     /* Report error to DET */
#                     (void)Det_ReportError( CANIF_MODULE_ID,
#                                      CANIF_INSTANCE_ID,
#                                      CANIF_SID_CHK_WAKEUP,
#                                      CANIF_E_NOT_SLEEP );
# #endif /* CANIF_DEV_ERROR_DETECT == STD_ON */
# 
#                     IsError = CANIF_TRUE;
	.d2line		153
.Llo18:
	diab.li		r29,1		# IsError=r29
.L197:
	.section	.text_vle
.L244:
#                 }
#             } /* if */
#         } /* for */
	.d2line		156
.Llo19:
	diab.addi		r0,r30,1		# CanIfCanCheckWakeup_fp=r0 CtrlId=r30
	se_addi		r30,1		# CtrlId=r30 CtrlId=r30
	b		.L194
.L196:
# 
# /* If any transceiver is configured */
# #if ( CANIF_TRANSCEIVER_SUPPORT == STD_ON )
# 
#         for (CtrlId = 0; CtrlId < CanIf_NumberOfCanTrcvUnits_u8; CtrlId++)
	.d2line		161
.Llo6:
	diab.li		r30,0		# CtrlId=r30
.L204:
.Llo7:
	rlwinm		r0,r30,0,24,31		# CanIfCanCheckWakeup_fp=r0 CtrlId=r30
.Llo33:
	lis		r3,CanIf_NumberOfCanTrcvUnits_u8@ha		# ControllerConfig=r3
.Llo20:
	lbz		r3,CanIf_NumberOfCanTrcvUnits_u8@l(r3)		# ControllerConfig=r3 ControllerConfig=r3
	se_cmp		r0,r3		# CanIfCanCheckWakeup_fp=r0 ControllerConfig=r3
	bc		0,0,.L206	# ge
	.section	.text_vle
.L267:
#         {
#             CONSTP2CONST(CanIfTransceiverDrvConfig_t, CANIF_CONST, CANIF_APPL_CONST)
#             TransceiverDrvConfig = &CanIf_TransceiverDrvConfig_a[CtrlId];
	.d2line		164
.Llo21:
	rlwinm		r0,r30,0,24,31		# CanIfCanCheckWakeup_fp=r0 CtrlId=r30
.Llo34:
	lis		r3,CanIf_TransceiverDrvConfig_a@ha		# TransceiverDrvConfig=r3
.Llo41:
	e_add16i		r3,r3,CanIf_TransceiverDrvConfig_a@l		# TransceiverDrvConfig=r3 TransceiverDrvConfig=r3
	rlwinm		r4,r0,5,0,26		# CanIfCanCheckWakeup_fp=r0
	se_slwi		r0,2		# CanIfCanCheckWakeup_fp=r0 CanIfCanCheckWakeup_fp=r0
	subf		r0,r0,r4		# CanIfCanCheckWakeup_fp=r0 CanIfCanCheckWakeup_fp=r0
	se_add		r0,r3		# CanIfCanCheckWakeup_fp=r0 CanIfCanCheckWakeup_fp=r0 TransceiverDrvConfig=r3
.Llo35:
	mr		r3,r0		# TransceiverDrvConfig=r3 TransceiverDrvConfig=r0
# 
#             if ((STD_OFF != TransceiverDrvConfig->CanIfTrcvWakeupSupport_b) &&
	.d2line		166
.Llo42:
	lbz		r0,25(r3)		# CanIfCanCheckWakeup_fp=r0 TransceiverDrvConfig=r3
.Llo36:
	se_cmpi		r0,0		# CanIfCanCheckWakeup_fp=r0
	bc		1,2,.L207	# eq
.Llo37:
	lwz		r0,0(r3)		# CanIfCanCheckWakeup_fp=r0 TransceiverDrvConfig=r3
.Llo38:
	se_cmpl		r0,r31		# CanIfCanCheckWakeup_fp=r0 WakeupSource=r31
	bc		0,2,.L207	# ne
#                 (WakeupSource == TransceiverDrvConfig->CanIfTrcvEcuMWakeupSource))
#             {
# #if ( CANIF_DEV_ERROR_DETECT == STD_ON )
#                 IsWakeupSourceFound = CANIF_TRUE;
# #endif
# 
#                 /* REQ: [CANIF395] */
#                 /* Call the CAN Transceiver API to check the wake up */
#                 if (E_OK == TransceiverDrvConfig->CanIfCanTrcvCheckWakeup(TransceiverDrvConfig->CanIfTrcvIdRef_u8))
	.d2line		175
.Llo39:
	lwz		r0,20(r3)		# CanIfCanCheckWakeup_fp=r0 TransceiverDrvConfig=r3
	mtspr		ctr,r0		# CanIfCanCheckWakeup_fp=ctr
	lbz		r3,26(r3)		# TransceiverDrvConfig=r3 TransceiverDrvConfig=r3
.Llo43:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo44:
	e_andi.		r3,r3,255		# TransceiverDrvConfig=r3 TransceiverDrvConfig=r3
#                 {
#                     /*No store for Wake up detection for every Controller REQ 722,458 deleted*/
#                     /* REQ: [CANIF720] */
#                     CanIfRet = E_OK;
	.d2line		179
.Llo45:
	isel		r28,0,r28,2		# CanIfRet=r28 CanIfRet=r28
.L207:
	.section	.text_vle
.L268:
#                 }
#                 else
#                 {
#                     /* Do Nothing */
# 
#                 }/* End if( E_OK == CanIfRet ) */
#             } /* if */
#         } /* for */
	.d2line		187
	diab.addi		r0,r30,1		# CanIfCanCheckWakeup_fp=r0 CtrlId=r30
	se_addi		r30,1		# CtrlId=r30 CtrlId=r30
	b		.L204
.L206:
# 
# #endif/* CANIF_TRANSCEIVER_SUPPORT == STD_ON */      
# 
# 
# /* If Development Error Detection enabled */            
# #if ( CANIF_DEV_ERROR_DETECT == STD_ON )
#         if (CANIF_FALSE == IsWakeupSourceFound)
#         {
#             /* REQ: [CANIF398] */
#             /* Report Invalid Wakeupsource to DET */
#             (void)Det_ReportError( CANIF_MODULE_ID,
#                              CANIF_INSTANCE_ID,
#                              CANIF_SID_CHK_WAKEUP,
#                              CANIF_E_PARAM_WAKEUPSOURCE );
# 
#             IsError = CANIF_TRUE;
#         }
# #endif/* CANIF_DEV_ERROR_DETECT == STD_ON */
# 
#         /* If errors found we return E_NOT_OK
#            This is based on the assumption that even if a source indicates wakeup,
#            an error will delete that information.
#            [CANIF679] vs. CANIF720 ambiguity.
#         */
#         if (CANIF_FALSE != IsError)
	.d2line		212
	rlwinm		r29,r29,0,24,31		# IsError=r29 IsError=r29
	se_cmpi		r29,0		# IsError=r29
#         {
#             CanIfRet = E_NOT_OK;
	.d2line		214
	diab.li		r0,1		# CanIfCanCheckWakeup_fp=r0
.Llo40:
	isel		r3,r28,r0,2		# CanIfRet=r3 CanIfRet=r28 CanIfCanCheckWakeup_fp=r0
.L210:
	.section	.text_vle
.L235:
#         }
#     }/* End if ( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 ) */
# 
# 
#     return CanIfRet;
	.d2line		219
.Llo4:
	rlwinm		r3,r3,0,24,31		# CanIfRet=r3 CanIfRet=r3
# 
# }/* End of CanIf_CheckWakeup() */
	.d2line		221
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# CanIfCanCheckWakeup_fp=r0
	mtspr		lr,r0		# CanIfCanCheckWakeup_fp=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L222:
	.type		CanIf_CheckWakeup,@function
	.size		CanIf_CheckWakeup,.-CanIf_CheckWakeup
# Number of nodes = 144

# Allocations for CanIf_CheckWakeup
#	?a4		WakeupSource
#	?a5		$$69
#	?a6		CanIfRet
#	?a7		CtrlId
#	?a8		IsError
#	?a9		ControllerConfig
#	?a10		DrvId
#	?a11		CanIfCanCheckWakeup_fp
#	?a12		TransceiverDrvConfig

# Allocations for module
	.section	.text_vle
	.0byte		.L284
	.section	.text_vle
#$$ld
.L5:
.L349:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L299:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L279:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\internal\\CanIf_Private.h"
.L223:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_CheckWakeup.c"
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
	.uleb128	11
	.byte		0x1
	.uleb128	1
	.uleb128	16
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
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
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
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
	.uleb128	11
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
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
	.uleb128	13
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
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
	.uleb128	17
	.uleb128	5
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
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_CheckWakeup.c"
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
.L227:
	.sleb128	2
	.4byte		.L220-.L2
	.byte		"CanIf_CheckWakeup"
	.byte		0
	.4byte		.L223
	.uleb128	59
	.uleb128	35
	.4byte		.L224
	.byte		0x1
	.byte		0x1
	.4byte		.L221
	.4byte		.L222
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L223
	.uleb128	59
	.uleb128	35
	.byte		"WakeupSource"
	.byte		0
	.4byte		.L228
	.4byte		.L231
	.section	.debug_info,,n
.L232:
	.sleb128	4
	.4byte		.L223
	.uleb128	65
	.uleb128	36
	.byte		"CanIfRet"
	.byte		0
	.4byte		.L224
	.4byte		.L233
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L237
	.4byte		.L234
	.4byte		.L235
.L238:
	.sleb128	4
	.4byte		.L223
	.uleb128	88
	.uleb128	31
	.byte		"CtrlId"
	.byte		0
	.4byte		.L225
	.4byte		.L239
.L240:
	.sleb128	4
	.4byte		.L223
	.uleb128	89
	.uleb128	33
	.byte		"IsError"
	.byte		0
	.4byte		.L241
	.4byte		.L242
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L246
	.4byte		.L243
	.4byte		.L244
.L247:
	.sleb128	4
	.4byte		.L223
	.uleb128	103
	.uleb128	13
	.byte		"ControllerConfig"
	.byte		0
	.4byte		.L248
	.4byte		.L253
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L257
	.4byte		.L254
	.4byte		.L255
.L258:
	.sleb128	4
	.4byte		.L223
	.uleb128	115
	.uleb128	43
	.byte		"DrvId"
	.byte		0
	.4byte		.L225
	.4byte		.L259
.L260:
	.sleb128	4
	.4byte		.L223
	.uleb128	116
	.uleb128	21
	.byte		"CanIfCanCheckWakeup_fp"
	.byte		0
	.4byte		.L261
	.4byte		.L266
	.section	.debug_info,,n
	.sleb128	0
.L257:
	.section	.debug_info,,n
	.sleb128	0
.L246:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L270
	.4byte		.L267
	.4byte		.L268
.L271:
	.sleb128	4
	.4byte		.L223
	.uleb128	164
	.uleb128	13
	.byte		"TransceiverDrvConfig"
	.byte		0
	.4byte		.L272
	.4byte		.L277
	.section	.debug_info,,n
	.sleb128	0
.L270:
	.section	.debug_info,,n
	.sleb128	0
.L237:
	.section	.debug_info,,n
	.sleb128	0
.L220:
	.section	.debug_info,,n
.L278:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L279
	.uleb128	336
	.uleb128	1
	.byte		"CanIf_ControllerMode_a"
	.byte		0
	.4byte		.L280
	.0byte		.L278
.L284:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L279
	.uleb128	498
	.uleb128	38
	.byte		"CanIf_NumberOfCanTrcvUnits_u8"
	.byte		0
	.4byte		.L285
	.section	.debug_info,,n
.L286:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L279
	.uleb128	504
	.uleb128	38
	.byte		"CanIf_NumberOfCanCtrlUnits_u8"
	.byte		0
	.4byte		.L285
.L287:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L279
	.uleb128	544
	.uleb128	1
	.byte		"CanIf_ControllerConfig_a"
	.byte		0
	.4byte		.L288
.L290:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L279
	.uleb128	552
	.uleb128	1
	.byte		"CanIf_DriverConfig_a"
	.byte		0
	.4byte		.L291
.L296:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L279
	.uleb128	561
	.uleb128	1
	.byte		"CanIf_TransceiverDrvConfig_a"
	.byte		0
	.4byte		.L297
	.section	.debug_info,,n
.L276:
	.sleb128	7
	.4byte		.L299
	.uleb128	266
	.uleb128	1
	.4byte		.L300-.L2
	.uleb128	28
	.section	.debug_info,,n
.L161:
	.sleb128	8
	.byte		"CanIfTrcvEcuMWakeupSource"
	.byte		0
	.4byte		.L228
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L162:
	.sleb128	8
	.byte		"CanIfCanTrcvSetOpMode"
	.byte		0
	.4byte		.L301
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L163:
	.sleb128	8
	.byte		"CanIfCanTrcvGetOpMode"
	.byte		0
	.4byte		.L307
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L164:
	.sleb128	8
	.byte		"CanIfCanTrcvGetBusWuReason"
	.byte		0
	.4byte		.L312
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L165:
	.sleb128	8
	.byte		"CanIfCanTrcvSetWakeupMode"
	.byte		0
	.4byte		.L319
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L166:
	.sleb128	8
	.byte		"CanIfCanTrcvCheckWakeup"
	.byte		0
	.4byte		.L325
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L167:
	.sleb128	8
	.byte		"CanIfTrcvWakeupSourceIntIdx"
	.byte		0
	.4byte		.L225
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L168:
	.sleb128	8
	.byte		"CanIfTrcvWakeupSupport_b"
	.byte		0
	.4byte		.L241
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
.L169:
	.sleb128	8
	.byte		"CanIfTrcvIdRef_u8"
	.byte		0
	.4byte		.L225
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L170:
	.sleb128	8
	.byte		"CanIfTrcvDriverNameRef_u8"
	.byte		0
	.4byte		.L225
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
	.sleb128	0
.L300:
.L295:
	.sleb128	7
	.4byte		.L299
	.uleb128	266
	.uleb128	1
	.4byte		.L329-.L2
	.uleb128	16
.L157:
	.sleb128	8
	.byte		"CanIfCanSetControllerMode_p"
	.byte		0
	.4byte		.L330
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L158:
	.sleb128	8
	.byte		"CanIfCanWrite_p"
	.byte		0
	.4byte		.L335
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L159:
	.sleb128	8
	.byte		"CanIfCanCheckWakeup_p"
	.byte		0
	.4byte		.L345
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L160:
	.sleb128	8
	.byte		"CanIfInitHohConfigRef_u8"
	.byte		0
	.4byte		.L225
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L329:
.L252:
	.sleb128	7
	.4byte		.L299
	.uleb128	266
	.uleb128	1
	.4byte		.L348-.L2
	.uleb128	16
.L149:
	.sleb128	8
	.byte		"CanIfCtrlrEcuMWakeupSource"
	.byte		0
	.4byte		.L228
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L150:
	.sleb128	8
	.byte		"CanIfTrcvrEcuMWakeupSource"
	.byte		0
	.4byte		.L228
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L151:
	.sleb128	8
	.byte		"CanIfWakeupSupport_b"
	.byte		0
	.4byte		.L241
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L152:
	.sleb128	8
	.byte		"CanIfWakeupValidationSupport_b"
	.byte		0
	.4byte		.L241
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L153:
	.sleb128	8
	.byte		"CanIfControllerIdRef_u8"
	.byte		0
	.4byte		.L225
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L154:
	.sleb128	8
	.byte		"CanIfDriverNameRef_u8"
	.byte		0
	.4byte		.L225
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L155:
	.sleb128	8
	.byte		"CanIfTrcvMapped_b"
	.byte		0
	.4byte		.L241
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L156:
	.sleb128	8
	.byte		"CanIfTransceiverId_u8"
	.byte		0
	.4byte		.L225
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L348:
	.section	.debug_info,,n
.L344:
	.sleb128	9
	.4byte		.L349
	.uleb128	63
	.uleb128	1
	.4byte		.L350-.L2
	.byte		"Can_PduType_s"
	.byte		0
	.uleb128	12
.L87:
	.sleb128	8
	.byte		"sdu"
	.byte		0
	.4byte		.L351
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L88:
	.sleb128	8
	.byte		"id"
	.byte		0
	.4byte		.L352
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L89:
	.sleb128	8
	.byte		"swPduHandle"
	.byte		0
	.4byte		.L353
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L90:
	.sleb128	8
	.byte		"length"
	.byte		0
	.4byte		.L225
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L350:
	.section	.debug_info,,n
.L283:
	.sleb128	10
	.4byte		.L299
	.uleb128	74
	.uleb128	1
	.4byte		.L354-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"CANIF_CS_SLEEP"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"CANIF_CS_STARTED"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"CANIF_CS_STOPPED"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"CANIF_CS_UNINIT"
	.byte		0
	.sleb128	3
	.sleb128	0
.L354:
.L334:
	.sleb128	10
	.4byte		.L349
	.uleb128	63
	.uleb128	1
	.4byte		.L355-.L2
	.uleb128	4
	.sleb128	11
	.byte		"CAN_T_START"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"CAN_T_STOP"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"CAN_T_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"CAN_T_WAKEUP"
	.byte		0
	.sleb128	3
	.sleb128	0
.L355:
.L265:
	.sleb128	10
	.4byte		.L349
	.uleb128	57
	.uleb128	1
	.4byte		.L356-.L2
	.uleb128	4
	.sleb128	11
	.byte		"CAN_OK"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"CAN_NOT_OK"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"CAN_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L356:
.L318:
	.sleb128	10
	.4byte		.L349
	.uleb128	41
	.uleb128	15
	.4byte		.L357-.L2
	.uleb128	4
	.sleb128	11
	.byte		"CANTRCV_WU_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"CANTRCV_WU_BY_PIN"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"CANTRCV_WU_BY_BUS"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"CANTRCV_WU_INTERNALLY"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"CANTRCV_WU_NOT_SUPPORTED"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"CANTRCV_WU_POWER_ON"
	.byte		0
	.sleb128	5
	.sleb128	11
	.byte		"CANTRCV_WU_RESET"
	.byte		0
	.sleb128	6
	.sleb128	11
	.byte		"CANTRCV_WU_BY_SYSERR"
	.byte		0
	.sleb128	7
	.sleb128	0
.L357:
.L324:
	.sleb128	10
	.4byte		.L349
	.uleb128	32
	.uleb128	15
	.4byte		.L358-.L2
	.uleb128	4
	.sleb128	11
	.byte		"CANTRCV_WUMODE_ENABLE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"CANTRCV_WUMODE_DISABLE"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"CANTRCV_WUMODE_CLEAR"
	.byte		0
	.sleb128	2
	.sleb128	0
.L358:
.L306:
	.sleb128	10
	.4byte		.L349
	.uleb128	23
	.uleb128	15
	.4byte		.L359-.L2
	.uleb128	4
	.sleb128	11
	.byte		"CANTRCV_TRCVMODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"CANTRCV_TRCVMODE_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"CANTRCV_TRCVMODE_STANDBY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L359:
	.section	.debug_info,,n
.L226:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L225:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L226
.L224:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L225
.L230:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L229:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L230
.L228:
	.sleb128	13
	.byte		"EcuM_WakeupSourceType"
	.byte		0
	.4byte		.L229
.L241:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L226
.L251:
	.sleb128	13
	.byte		"CanIfControllerConfig_t"
	.byte		0
	.4byte		.L252
	.section	.debug_info,,n
.L250:
	.sleb128	14
	.4byte		.L251
	.section	.debug_info,,n
.L249:
	.sleb128	15
	.4byte		.L250
.L248:
	.sleb128	14
	.4byte		.L249
.L264:
	.sleb128	13
	.byte		"Can_ReturnType"
	.byte		0
	.4byte		.L265
	.section	.debug_info,,n
.L262:
	.sleb128	16
	.4byte		.L263-.L2
	.4byte		.L264
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	17
	.4byte		.L225
	.sleb128	0
.L263:
.L261:
	.sleb128	15
	.4byte		.L262
.L275:
	.sleb128	13
	.byte		"CanIfTransceiverDrvConfig_t"
	.byte		0
	.4byte		.L276
.L274:
	.sleb128	14
	.4byte		.L275
.L273:
	.sleb128	15
	.4byte		.L274
.L272:
	.sleb128	14
	.4byte		.L273
.L282:
	.sleb128	13
	.byte		"CanIf_ControllerModeType"
	.byte		0
	.4byte		.L283
	.section	.debug_info,,n
.L280:
	.sleb128	18
	.4byte		.L281-.L2
	.4byte		.L282
	.section	.debug_info,,n
	.sleb128	19
	.sleb128	0
.L281:
.L285:
	.sleb128	14
	.4byte		.L225
.L288:
	.sleb128	18
	.4byte		.L289-.L2
	.4byte		.L250
	.sleb128	19
	.sleb128	0
.L289:
.L294:
	.sleb128	13
	.byte		"CanIfDriverConfig_t"
	.byte		0
	.4byte		.L295
.L293:
	.sleb128	14
	.4byte		.L294
.L291:
	.sleb128	18
	.4byte		.L292-.L2
	.4byte		.L293
	.sleb128	19
	.sleb128	0
.L292:
.L297:
	.sleb128	18
	.4byte		.L298-.L2
	.4byte		.L274
	.sleb128	19
	.sleb128	0
.L298:
.L303:
	.sleb128	16
	.4byte		.L304-.L2
	.4byte		.L224
	.byte		0x1
	.sleb128	17
	.4byte		.L225
.L305:
	.sleb128	13
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L306
	.sleb128	17
	.4byte		.L305
	.sleb128	0
.L304:
.L302:
	.sleb128	15
	.4byte		.L303
.L301:
	.sleb128	13
	.byte		"CanIfCanTrcvSetOpMode_t"
	.byte		0
	.4byte		.L302
.L309:
	.sleb128	16
	.4byte		.L310-.L2
	.4byte		.L224
	.byte		0x1
	.sleb128	17
	.4byte		.L225
.L311:
	.sleb128	15
	.4byte		.L305
	.sleb128	17
	.4byte		.L311
	.sleb128	0
.L310:
.L308:
	.sleb128	15
	.4byte		.L309
.L307:
	.sleb128	13
	.byte		"CanIfCanTrcvGetOpMode_t"
	.byte		0
	.4byte		.L308
.L314:
	.sleb128	16
	.4byte		.L315-.L2
	.4byte		.L224
	.byte		0x1
	.sleb128	17
	.4byte		.L225
.L317:
	.sleb128	13
	.byte		"CanTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L318
.L316:
	.sleb128	15
	.4byte		.L317
	.sleb128	17
	.4byte		.L316
	.sleb128	0
.L315:
.L313:
	.sleb128	15
	.4byte		.L314
.L312:
	.sleb128	13
	.byte		"CanIfCanTrcvGetBusWuReason_t"
	.byte		0
	.4byte		.L313
.L321:
	.sleb128	16
	.4byte		.L322-.L2
	.4byte		.L224
	.byte		0x1
	.sleb128	17
	.4byte		.L225
.L323:
	.sleb128	13
	.byte		"CanTrcv_TrcvWakeupModeType"
	.byte		0
	.4byte		.L324
	.sleb128	17
	.4byte		.L323
	.sleb128	0
.L322:
.L320:
	.sleb128	15
	.4byte		.L321
.L319:
	.sleb128	13
	.byte		"CanIfCanTrcvSetWakeupMode_t"
	.byte		0
	.4byte		.L320
.L327:
	.sleb128	16
	.4byte		.L328-.L2
	.4byte		.L224
	.byte		0x1
	.sleb128	17
	.4byte		.L225
	.sleb128	0
.L328:
.L326:
	.sleb128	15
	.4byte		.L327
.L325:
	.sleb128	13
	.byte		"CanIfCanTrcvCheckWakeup_t"
	.byte		0
	.4byte		.L326
.L331:
	.sleb128	16
	.4byte		.L332-.L2
	.4byte		.L264
	.byte		0x1
	.sleb128	17
	.4byte		.L225
.L333:
	.sleb128	13
	.byte		"Can_StateTransitionType"
	.byte		0
	.4byte		.L334
	.sleb128	17
	.4byte		.L333
	.sleb128	0
.L332:
.L330:
	.sleb128	15
	.4byte		.L331
.L336:
	.sleb128	16
	.4byte		.L337-.L2
	.4byte		.L264
	.byte		0x1
.L340:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L339:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L340
.L338:
	.sleb128	13
	.byte		"Can_HwHandleType"
	.byte		0
	.4byte		.L339
	.sleb128	17
	.4byte		.L338
.L343:
	.sleb128	13
	.byte		"Can_PduType"
	.byte		0
	.4byte		.L344
.L342:
	.sleb128	14
	.4byte		.L343
.L341:
	.sleb128	15
	.4byte		.L342
	.sleb128	17
	.4byte		.L341
	.sleb128	0
.L337:
.L335:
	.sleb128	15
	.4byte		.L336
.L346:
	.sleb128	16
	.4byte		.L347-.L2
	.4byte		.L264
	.byte		0x1
	.sleb128	17
	.4byte		.L225
	.sleb128	0
.L347:
.L345:
	.sleb128	15
	.4byte		.L346
.L351:
	.sleb128	15
	.4byte		.L225
.L352:
	.sleb128	13
	.byte		"Can_IdType"
	.byte		0
	.4byte		.L229
.L353:
	.sleb128	13
	.byte		"PduIdType"
	.byte		0
	.4byte		.L339
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L231:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L233:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo4),28
	.d2locend
.L239:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),30
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo4),30
	.d2locend
.L242:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),29
	.d2locend
.L253:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locend
.L259:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),0
	.d2locend
.L266:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo9),0
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo12),0
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),0
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),0
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo16),0
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),0
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),0
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),0
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo4),0
	.d2locend
.L277:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),3
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo43),3
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanIf_CheckWakeup"
	.wrcm.nint32 "frameSize", 32
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_CheckWakeup.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_CheckWakeup.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_CheckWakeup.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_CheckWakeup.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_CheckWakeup.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_CheckWakeup.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanIf\ssc\make\..\src\CanIf_CheckWakeup.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
