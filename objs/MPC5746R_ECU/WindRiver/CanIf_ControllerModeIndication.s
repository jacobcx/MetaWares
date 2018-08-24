#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_ControllerModeIndication.c"
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
# FUNC(void, CANIF_CODE)CanIf_ProcessControllerModeIndication
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_ControllerModeIndication.c"
        .d2line         76,23
#$$ld
.L587:

#$$bf	CanIf_ProcessControllerModeIndication,interprocedural,rasave,nostackparams
	.globl		CanIf_ProcessControllerModeIndication
	.d2_cfa_start __cie
CanIf_ProcessControllerModeIndication:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Controller_u8=r3 Controller_u8=r3
	mr		r31,r4		# ControllerMode=r31 ControllerMode=r4
	.d2prologue_end
# (
#     CONST(uint8,AUTOMATIC) Controller_u8,
#     CONST(CanIf_ControllerModeType,AUTOMATIC) ControllerMode,
#     CONST(uint8,AUTOMATIC)Driver_u8
# )
# {
#     /* REQ: [CANIF702], [CANIF703] */
#     /* Check if the CanIf module has been initialized */
#     if ( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 )
	.d2line		85
	lis		r4,CanIf_InitStatus_u8@ha
.Llo7:
	lbz		r0,CanIf_InitStatus_u8@l(r4)
	se_cmpi		r0,0
	bc		1,2,.L572	# eq
	.section	.text_vle
.L599:
#     {
# /* if DET is enabled REQ: [DEV_CANIF14000] */
# #if ( CANIF_DEV_ERROR_DETECT == STD_ON )
# 
#         /* Report error to DET */
#         (void)Det_ReportError( CANIF_MODULE_ID,
#                          CANIF_INSTANCE_ID,
#                          CANIF_SID_CONTROLLER_MODE_IND,
#                          CANIF_E_UNINIT );
# #endif
#     }
#     else
#     /* if CanIf was initialized */
#     {
#         /* variable for holding controller index */
#         VAR(ControllerTypeFast, AUTOMATIC) ControllerInd = 0;
	.d2line		101
.Llo8:
	diab.li		r29,0		# ControllerInd=r29
.L575:
# 
#         /* REQ: [DEV_CANIF704] */
#         /* Get the CanIf specific controller id corresponding to
#            received controller of corresponding driver */
#         while ((ControllerInd < (ControllerTypeFast)CanIf_NumberOfCanCtrlUnits_u8) &&
	.d2line		106
.Llo10:
	rlwinm		r30,r29,0,16,31		# ControllerInd=r29
	lis		r4,CanIf_NumberOfCanCtrlUnits_u8@ha
	lbz		r0,CanIf_NumberOfCanCtrlUnits_u8@l(r4)
	se_cmp		r30,r0
	bc		0,0,.L576	# ge
	lis		r4,(CanIf_ControllerConfig_a+10)@ha
	e_add16i		r4,r4,(CanIf_ControllerConfig_a+10)@l
	rlwinm		r30,r29,4,12,27		# ControllerInd=r29
	lbzx		r4,r4,r30
	rlwinm		r0,r3,0,24,31		# Controller_u8=r3
	se_cmp		r4,r0
	bc		1,2,.L576	# eq
#                ((CanIf_ControllerConfig_a[ControllerInd].
#                  CanIfControllerIdRef_u8 != Controller_u8)))
#         {
#             /* Increment controller id */
#             ControllerInd++;
	.d2line		111
	diab.addi		r30,r29,1		# ControllerInd=r29
	se_addi		r29,1		# ControllerInd=r29 ControllerInd=r29
	b		.L575
.L576:
#         } /* while */
# 
#         /* if DET is enabled */
# #if( CANIF_DEV_ERROR_DETECT == STD_ON )
#         /* if corresponding controller id is not found */
#         if (ControllerInd >= (ControllerTypeFast)CanIf_NumberOfCanCtrlUnits_u8)
#         {
#             /* REQ: [CANIF700] */
#             /* Report error to DET */
#             (void)Det_ReportError( CANIF_MODULE_ID,
#                              CANIF_INSTANCE_ID,
#                              CANIF_SID_CONTROLLER_MODE_IND,
#                              CANIF_E_PARAM_CONTROLLER );
#         } /* if */
#         else
# #endif /* CANIF_DEV_ERROR_DETECT == STD_ON */
#         {
#             /* Enter Critical Section */
#             SchM_Enter_CanIf(  SCHM_CANIF_EXCLUSIVE_AREA_0 );
	.d2line		130
.Llo2:
	diab.li		r3,0		# Controller_u8=r3
	bl		SchM_Enter_CanIf
# 
#             /* Set the current (stored) mode to what is reported.*/
#             /* REQ: [CANIF713], [CANIF714], [CANIF715], [CANIF716], [CANIF717], [CANIF718], [CANIF719]*/
#             CanIf_ControllerMode_a[ControllerInd] = ControllerMode;
	.d2line		134
	lis		r3,CanIf_ControllerMode_a@ha		# Controller_u8=r3
.Llo3:
	e_add16i		r3,r3,CanIf_ControllerMode_a@l		# Controller_u8=r3 Controller_u8=r3
	rlwinm		r30,r29,2,14,29		# ControllerInd=r29
	stwx		r31,r3,r30		# Controller_u8=r3 ControllerMode=r31
# 
#             /* If the indicated mode is CANIF_CS_STOPPED, then for this controller clear
#                 * all Tx buffers
#                 * all pending Tx requests
#                The old mode (from where the transition happens) is not checked.
#             */
#             if (ControllerMode == CANIF_CS_STOPPED)
	.d2line		141
	se_cmpi		r31,2		# ControllerMode=r31
	bc		0,2,.L577	# ne
#             {
#                 /* REQ: [CANIF485] */
#                 CanIf_ClearTxBuffers((ControllerType)ControllerInd);
	.d2line		144
.Llo4:
	mr		r30,r29		# ControllerInd=r30 ControllerInd=r29
	rlwinm		r3,r30,0,24,31		# ControllerInd=r3 ControllerInd=r30
	mr		r3,r3		# ControllerInd=r3
	bl		CanIf_ClearTxBuffers
# 
# #if (CANIF_RX_INT_DECOUPLING == STD_ON)
#                 /* Clear pending Rx indications, REQ: [] */
#                 CanIf_ClearRxIntDecoupleStatus((ControllerType)ControllerInd);
	.d2line		148
	mr		r3,r30		# ControllerInd=r3 ControllerInd=r30
	rlwinm		r3,r3,0,24,31		# ControllerInd=r3 ControllerInd=r3
	mr		r3,r3		# ControllerInd=r3
	bl		CanIf_ClearRxIntDecoupleStatus
.L577:
# #endif /* (CANIF_RX_INT_DECOUPLING == STD_ON) */
# 
#                 /* Note: Clearing of all stored wake-up events (CANIF479) relates to
#                    CANIF_CS_INIT not to CANIF_CS_STOPPED, so they are not cleared.
#                 */
#             }
#             /* If the indicated mode is CANIF_CS_STOPPED, then for this controller clear
#                 * Event of first call flag
#                The old mode (from where the transition happens) is not checked.
#             */
#     #if (CANIF_PUBLIC_WAKEUP_CHECK_VALIDATION_API == STD_ON)
#             if(ControllerMode == CANIF_CS_SLEEP)
#             {
#                 
#                 CanIf_ControllerConfig_a[ControllerInd].CanIfControllerConfigRAM->WasInSleep = CANIF_TRUE;
#                 /* If a wake-up source goes sleep, then that field shall be set to 0 */
#                 WakeupSource_BitField &= ~CanIf_ControllerConfig_a[ControllerInd].CanIfCtrlrEcuMWakeupSource;
#                 WakeupSource_BitField &= ~CanIf_ControllerConfig_a[ControllerInd].CanIfTrcvrEcuMWakeupSource;
#                 /* REQ: [CANIF756]*/
#                 CanIf_ControllerConfig_a[ControllerInd].CanIfControllerConfigRAM->RemainingWakeupValidNotification = 0;
#             }
#             
#     #endif      
# 
#     #if( CANIF_PUBLIC_TXCONFIRM_POLLING_SUPPORT == STD_ON )
# 
#             /* If the indicated mode is CANIF_CS_STARTED, then this controller
#                is started.
#                REQ: [CANIF734]
#                The old mode (from where the transition happens)
#                is not checked.
#             */
#             if (ControllerMode == CANIF_CS_STARTED)
	.d2line		181
	se_cmpi		r31,1		# ControllerMode=r31
	bc		0,2,.L578	# ne
#             {
#                 /* Set Tx confirmation state to CANIF_NO_NOTIFICATION,
#                    i.e. clear it.
#                 */
#                 CanIf_TxConfirmationState_a[ControllerInd] = CANIF_NO_NOTIFICATION;
	.d2line		186
	diab.li		r0,0		# ControllerInd=r0
	lis		r3,CanIf_TxConfirmationState_a@ha		# Controller_u8=r3
.Llo5:
	e_add16i		r3,r3,CanIf_TxConfirmationState_a@l		# Controller_u8=r3 Controller_u8=r3
	rlwinm		r30,r29,2,14,29		# ControllerInd=r30 ControllerInd=r29
	stwx		r0,r3,r30		# Controller_u8=r3 ControllerInd=r0
.L578:
#             }
#     #endif/* #if( CANIF_PUBLIC_TXCONFIRM_POLLING_SUPPORT == STD_ON )*/
# 
#             /* Leave Critical Section */
#             SchM_Exit_CanIf(SCHM_CANIF_EXCLUSIVE_AREA_0);
	.d2line		191
.Llo6:
	diab.li		r3,0		# ControllerInd=r3
	bl		SchM_Exit_CanIf
# 
#             /* if notification is configured */
#             if (NULL_PTR != CanIf_DispatchConfig.CanIfControllerModeIndication)
	.d2line		194
	lis		r3,(CanIf_DispatchConfig+8)@ha		# ControllerInd=r3
	lwz		r0,(CanIf_DispatchConfig+8)@l(r3)		# ControllerInd=r0 ControllerInd=r3
	se_cmpi		r0,0		# ControllerInd=r0
	bc		1,2,.L572	# eq
#             {
#                 /* Call target module.
#                    REQ: [CANIF711]
#                    It is assumed that the called module (CanSM or CDD) uses
#                    CANIF's numbering.
#                    REQ: [CANIF688] No assumptions made regarding calling context.
#                 */
#                 CanIf_DispatchConfig.CanIfControllerModeIndication((ControllerType)ControllerInd, ControllerMode); /* PRQA S 3746 */ /* Cast to smaller type is on purpose. ControllerInd is wider for better performance, but specification & implementation guarantees it will never exceed 255. */
	.d2line		202
	lis		r3,(CanIf_DispatchConfig+8)@ha		# ControllerInd=r3
	lwz		r0,(CanIf_DispatchConfig+8)@l(r3)		# ControllerInd=r0 ControllerInd=r3
	mtspr		ctr,r0		# ControllerInd=ctr
	mr		r3,r29		# ControllerInd=r3 ControllerInd=r29
	rlwinm		r3,r3,0,24,31		# ControllerInd=r3 ControllerInd=r3
	mr		r3,r3		# ControllerInd=r3
	mr		r4,r31		# ControllerMode=r4 ControllerMode=r31
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
	.section	.text_vle
.L600:
.L572:
#             } /* if */
# 
#         } /* else */
#     } /* else */
# 
# }/* End of CanIf_ProcessControllerModeIndication() */
	.d2line		208
	.d2epilogue_begin
.Llo9:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# ControllerInd=r0
	mtspr		lr,r0		# ControllerInd=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L588:
	.type		CanIf_ProcessControllerModeIndication,@function
	.size		CanIf_ProcessControllerModeIndication,.-CanIf_ProcessControllerModeIndication
# Number of nodes = 96

# Allocations for CanIf_ProcessControllerModeIndication
#	?a4		Controller_u8
#	?a5		ControllerMode
#	not allocated	Driver_u8
#	?a6		ControllerInd
# FUNC(void, CANIF_CODE)CanIf_ControllerModeIndication
	.align		2
	.section	.text_vle
        .d2line         49,23
#$$ld
.L610:

#$$bf	CanIf_ControllerModeIndication,interprocedural,rasave,nostackparams
	.globl		CanIf_ControllerModeIndication
	.d2_cfa_start __cie
CanIf_ControllerModeIndication:
.Llo11:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(uint8,AUTOMATIC) Controller,
#     VAR(CanIf_ControllerModeType,AUTOMATIC) ControllerMode
# )
# {
#     /* REQ: [CANIF699], [CANIF224] */
#     CanIf_ProcessControllerModeIndication(Controller, ControllerMode, CANIF_SINGLE_DRIVER_IND);
	.d2line		56
	mr		r0,r3		# Controller=r0 Controller=r3
	mr		r0,r4		# ControllerMode=r0 ControllerMode=r4
	diab.li		r5,0
	bl		CanIf_ProcessControllerModeIndication
# 
# }/* End of CanIf_ControllerModeIndication() */
	.d2line		58
	.d2epilogue_begin
.Llo12:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L611:
	.type		CanIf_ControllerModeIndication,@function
	.size		CanIf_ControllerModeIndication,.-CanIf_ControllerModeIndication
# Number of nodes = 9

# Allocations for CanIf_ControllerModeIndication
#	?a4		Controller
#	?a5		ControllerMode

# Allocations for module
	.section	.text_vle
	.0byte		.L625
	.section	.text_vle
#$$ld
.L5:
.L663:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L636:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L616:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\internal\\CanIf_Private.h"
.L589:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_ControllerModeIndication.c"
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
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	33
	.byte		0x0
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_ControllerModeIndication.c"
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
.L590:
	.sleb128	2
	.4byte		.L586-.L2
	.byte		"CanIf_ProcessControllerModeIndication"
	.byte		0
	.4byte		.L589
	.uleb128	76
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L587
	.4byte		.L588
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L589
	.uleb128	76
	.uleb128	23
	.byte		"Controller_u8"
	.byte		0
	.4byte		.L591
	.4byte		.L594
	.sleb128	3
	.4byte		.L589
	.uleb128	76
	.uleb128	23
	.byte		"ControllerMode"
	.byte		0
	.4byte		.L595
	.4byte		.L598
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L589
	.uleb128	76
	.uleb128	23
	.byte		"Driver_u8"
	.byte		0
	.4byte		.L591
	.sleb128	2
	.byte		0x90
	.uleb128	5
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L602
	.4byte		.L599
	.4byte		.L600
	.section	.debug_info,,n
.L603:
	.sleb128	6
	.4byte		.L589
	.uleb128	101
	.uleb128	44
	.byte		"ControllerInd"
	.byte		0
	.4byte		.L604
	.4byte		.L607
	.section	.debug_info,,n
	.sleb128	0
.L602:
	.section	.debug_info,,n
	.sleb128	0
.L586:
	.section	.debug_info,,n
.L612:
	.sleb128	2
	.4byte		.L609-.L2
	.byte		"CanIf_ControllerModeIndication"
	.byte		0
	.4byte		.L589
	.uleb128	49
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L610
	.4byte		.L611
	.sleb128	3
	.4byte		.L589
	.uleb128	49
	.uleb128	23
	.byte		"Controller"
	.byte		0
	.4byte		.L592
	.4byte		.L613
	.sleb128	3
	.4byte		.L589
	.uleb128	49
	.uleb128	23
	.byte		"ControllerMode"
	.byte		0
	.4byte		.L596
	.4byte		.L614
	.section	.debug_info,,n
	.sleb128	0
.L609:
	.section	.debug_info,,n
.L615:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L616
	.uleb128	323
	.uleb128	29
	.byte		"CanIf_InitStatus_u8"
	.byte		0
	.4byte		.L592
	.0byte		.L615
.L617:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L616
	.uleb128	336
	.uleb128	1
	.byte		"CanIf_ControllerMode_a"
	.byte		0
	.4byte		.L618
.L620:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L616
	.uleb128	353
	.uleb128	46
	.byte		"CanIf_TxConfirmationState_a"
	.byte		0
	.4byte		.L621
.L625:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L616
	.uleb128	504
	.uleb128	38
	.byte		"CanIf_NumberOfCanCtrlUnits_u8"
	.byte		0
	.4byte		.L591
	.section	.debug_info,,n
.L626:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L616
	.uleb128	544
	.uleb128	1
	.byte		"CanIf_ControllerConfig_a"
	.byte		0
	.4byte		.L627
.L632:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L616
	.uleb128	568
	.uleb128	55
	.byte		"CanIf_DispatchConfig"
	.byte		0
	.4byte		.L633
	.section	.debug_info,,n
.L631:
	.sleb128	8
	.4byte		.L636
	.uleb128	266
	.uleb128	1
	.4byte		.L637-.L2
	.uleb128	16
	.section	.debug_info,,n
.L203:
	.sleb128	9
	.byte		"CanIfCtrlrEcuMWakeupSource"
	.byte		0
	.4byte		.L638
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L204:
	.sleb128	9
	.byte		"CanIfTrcvrEcuMWakeupSource"
	.byte		0
	.4byte		.L638
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L205:
	.sleb128	9
	.byte		"CanIfWakeupSupport_b"
	.byte		0
	.4byte		.L641
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L206:
	.sleb128	9
	.byte		"CanIfWakeupValidationSupport_b"
	.byte		0
	.4byte		.L641
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L207:
	.sleb128	9
	.byte		"CanIfControllerIdRef_u8"
	.byte		0
	.4byte		.L592
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L208:
	.sleb128	9
	.byte		"CanIfDriverNameRef_u8"
	.byte		0
	.4byte		.L592
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L209:
	.sleb128	9
	.byte		"CanIfTrcvMapped_b"
	.byte		0
	.4byte		.L641
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L210:
	.sleb128	9
	.byte		"CanIfTransceiverId_u8"
	.byte		0
	.4byte		.L592
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L637:
.L635:
	.sleb128	8
	.4byte		.L636
	.uleb128	266
	.uleb128	1
	.4byte		.L642-.L2
	.uleb128	16
.L199:
	.sleb128	9
	.byte		"CanIfBusOffNotification"
	.byte		0
	.4byte		.L643
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L200:
	.sleb128	9
	.byte		"CanIfWakeupValidNotification"
	.byte		0
	.4byte		.L647
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L201:
	.sleb128	9
	.byte		"CanIfControllerModeIndication"
	.byte		0
	.4byte		.L651
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L202:
	.sleb128	9
	.byte		"CanIfTrcvModeIndication"
	.byte		0
	.4byte		.L655
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L642:
	.section	.debug_info,,n
.L624:
	.sleb128	10
	.4byte		.L636
	.uleb128	129
	.uleb128	1
	.4byte		.L661-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"CANIF_NO_NOTIFICATION"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"CANIF_TX_RX_NOTIFICATION"
	.byte		0
	.sleb128	1
	.sleb128	0
.L661:
.L597:
	.sleb128	10
	.4byte		.L636
	.uleb128	74
	.uleb128	1
	.4byte		.L662-.L2
	.uleb128	4
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
.L662:
.L660:
	.sleb128	10
	.4byte		.L663
	.uleb128	23
	.uleb128	15
	.4byte		.L664-.L2
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
.L664:
	.section	.debug_info,,n
.L593:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L592:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L593
	.section	.debug_info,,n
.L591:
	.sleb128	14
	.4byte		.L592
.L596:
	.sleb128	13
	.byte		"CanIf_ControllerModeType"
	.byte		0
	.4byte		.L597
.L595:
	.sleb128	14
	.4byte		.L596
.L606:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L605:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L606
.L604:
	.sleb128	13
	.byte		"ControllerTypeFast"
	.byte		0
	.4byte		.L605
	.section	.debug_info,,n
.L618:
	.sleb128	15
	.4byte		.L619-.L2
	.4byte		.L596
	.section	.debug_info,,n
	.sleb128	16
	.sleb128	0
.L619:
.L623:
	.sleb128	13
	.byte		"CanIf_NotifStatusType"
	.byte		0
	.4byte		.L624
.L621:
	.sleb128	15
	.4byte		.L622-.L2
	.4byte		.L623
	.sleb128	16
	.sleb128	0
.L622:
.L630:
	.sleb128	13
	.byte		"CanIfControllerConfig_t"
	.byte		0
	.4byte		.L631
.L629:
	.sleb128	14
	.4byte		.L630
.L627:
	.sleb128	15
	.4byte		.L628-.L2
	.4byte		.L629
	.sleb128	16
	.sleb128	0
.L628:
.L634:
	.sleb128	13
	.byte		"CanIfDispatchConfig_t"
	.byte		0
	.4byte		.L635
.L633:
	.sleb128	14
	.4byte		.L634
.L640:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L639:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L640
.L638:
	.sleb128	13
	.byte		"EcuM_WakeupSourceType"
	.byte		0
	.4byte		.L639
.L641:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L593
	.section	.debug_info,,n
.L645:
	.sleb128	17
	.4byte		.L646-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	18
	.4byte		.L592
	.sleb128	0
.L646:
	.section	.debug_info,,n
.L644:
	.sleb128	19
	.4byte		.L645
.L643:
	.sleb128	13
	.byte		"CanIfControllerBusOff_t"
	.byte		0
	.4byte		.L644
.L649:
	.sleb128	17
	.4byte		.L650-.L2
	.byte		0x1
	.sleb128	18
	.4byte		.L638
	.sleb128	0
.L650:
.L648:
	.sleb128	19
	.4byte		.L649
.L647:
	.sleb128	13
	.byte		"CanIfValidationWakeupEvent_t"
	.byte		0
	.4byte		.L648
.L653:
	.sleb128	17
	.4byte		.L654-.L2
	.byte		0x1
	.sleb128	18
	.4byte		.L592
	.sleb128	18
	.4byte		.L596
	.sleb128	0
.L654:
.L652:
	.sleb128	19
	.4byte		.L653
.L651:
	.sleb128	13
	.byte		"CanIfControllerModeIndication_t"
	.byte		0
	.4byte		.L652
.L657:
	.sleb128	17
	.4byte		.L658-.L2
	.byte		0x1
	.sleb128	18
	.4byte		.L592
.L659:
	.sleb128	13
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L660
	.sleb128	18
	.4byte		.L659
	.sleb128	0
.L658:
.L656:
	.sleb128	19
	.4byte		.L657
.L655:
	.sleb128	13
	.byte		"CanIfTrcvModeIndication_t"
	.byte		0
	.4byte		.L656
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L594:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L598:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),31
	.d2locend
.L607:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo9),29
	.d2locend
.L613:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locend
.L614:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanIf_ControllerModeIndication"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "CanIf_ProcessControllerModeIndication"
	.wrcm.end
	.wrcm.nelem "CanIf_ProcessControllerModeIndication"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "indirectCalls", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_ControllerModeIndication.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_ControllerModeIndication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_ControllerModeIndication.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_ControllerModeIndication.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_ControllerModeIndication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_ControllerModeIndication.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanIf\ssc\make\..\src\CanIf_ControllerModeIndication.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
