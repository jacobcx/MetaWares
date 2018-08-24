#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_SetControllerMode.c"
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
# FUNC( Std_ReturnType, CANIF_CODE )CanIf_SetControllerMode
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_SetControllerMode.c"
        .d2line         57,35
#$$ld
.L227:

#$$bf	CanIf_SetControllerMode,interprocedural,rasave,nostackparams
	.globl		CanIf_SetControllerMode
	.d2_cfa_start __cie
CanIf_SetControllerMode:
.Llo1:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# ControllerId=r31 ControllerId=r3
	mr		r26,r4		# ControllerMode=r26 ControllerMode=r4
	.d2prologue_end
# (
# VAR( uint8, AUTOMATIC) ControllerId,
# VAR( CanIf_ControllerModeType, AUTOMATIC ) ControllerMode
# )
# {
#     /* REQ: [CANIF003] */
#     /* Initialize return value to E_OK */
#     VAR( Std_ReturnType, AUTOMATIC ) CanIfRet = E_OK;
	.d2line		65
	diab.li		r27,0		# CanIfRet=r27
# 
#     /* Initialize Can return value to E_OK */
#     VAR( Can_ReturnType, AUTOMATIC ) CanRet = CAN_OK;
	.d2line		68
.Llo6:
	diab.li		r3,0
	.section	.text_vle
.L262:
# 
#     /* variable for holding the controller id  */
#     VAR( uint8, AUTOMATIC ) CanControllerId_u8;
# 
#     /* variable for holding controller configuration */
#     P2CONST( CanIfControllerConfig_t, AUTOMATIC, CANIF_APPL_DATA )
#     ControllerConfig_p;
# 
#     /* variable for holding current controller mode */
#     P2VAR( CanIf_ControllerModeType, AUTOMATIC, CANIF_APPL_DATA )
#     ControllerMode_p;
# 
#     /* variable for holding the SetControllerMode function */
#     P2FUNC(Can_ReturnType, AUTOMATIC, CanSetControllerMode_p)
#         (uint8 Controller, Can_StateTransitionType Transition);
# 
# /* if DET is enabled REQ: [DEV_CANIF14000] */
# #if ( CANIF_DEV_ERROR_DETECT == STD_ON )
# 
#     /* REQ: [CANIF312] */
#     /* Check if the CanIf module has been initialized */
#     if ( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 )
#     {
# 
#         (void)Det_ReportError( CANIF_MODULE_ID,
#                          CANIF_INSTANCE_ID,
#                          CANIF_SID_SET_CNTRLR_MODE,
#                          CANIF_E_UNINIT );
#         CanIfRet = E_NOT_OK;
#     }
#     else
#     {
#         /* REQ: [CANIF311] */
#         /* Check if controller id is valid */
#         if ( ControllerId >= (uint8)CanIf_NumberOfCanCtrlUnits_u8 )
#         {
# 
#             (void)Det_ReportError( CANIF_MODULE_ID,
#                              CANIF_INSTANCE_ID,
#                              CANIF_SID_SET_CNTRLR_MODE,
#                              CANIF_E_PARAM_CONTROLLERID );
#             CanIfRet = E_NOT_OK;
# 
#         }/* End if ( ControllerId >= CanIf_NumberOfCanCtrlUnits_u8 ) */
#         
#     }/* End if ( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 ) */
# 
#     /* if no DET is reported */
#     if (E_OK == CanIfRet)
# #endif /* End #if ( CANIF_DEV_ERROR_DETECT == STD_ON ) */
#     {
#         /* variable for holding local controller mode */
#         VAR( CanIf_ControllerModeType, AUTOMATIC )  ControllerModeLocal;
# 
#         /* Get the controller mode pointer */
#         ControllerMode_p = &CanIf_ControllerMode_a[ControllerId];
	.d2line		124
.Llo2:
	lis		r4,CanIf_ControllerMode_a@ha		# ControllerMode_p=r4
.Llo3:
	e_add16i		r4,r4,CanIf_ControllerMode_a@l		# ControllerMode_p=r4 ControllerMode_p=r4
	rlwinm		r0,r31,2,22,29		# ControllerId=r31
	se_add		r0,r4		# ControllerMode_p=r4
	mr		r4,r0		# ControllerMode_p=r4 ControllerMode_p=r0
# 
#         /* Get the controller configuration */
#         ControllerConfig_p = &CanIf_ControllerConfig_a[ControllerId];
	.d2line		127
	lis		r5,CanIf_ControllerConfig_a@ha		# ControllerConfig_p=r5
.Llo28:
	e_add16i		r5,r5,CanIf_ControllerConfig_a@l		# ControllerConfig_p=r5 ControllerConfig_p=r5
	rlwinm		r0,r31,4,20,27		# ControllerId=r31
	se_add		r0,r5		# ControllerConfig_p=r5
	mr		r5,r0		# ControllerConfig_p=r5 ControllerConfig_p=r0
# 
#         /* Get the controller id */
#         CanControllerId_u8 = ControllerConfig_p->CanIfControllerIdRef_u8;
	.d2line		130
.Llo29:
	lbz		r30,10(r5)		# ControllerConfig_p=r5
.Llo26:
	mr		r30,r30		# CanControllerId_u8=r30 CanControllerId_u8=r30
# 
#         /* Get the SetControllerMode function of corresponding driver */
#         CanSetControllerMode_p = CanIf_DriverConfig_a
	.d2line		133
	lis		r6,CanIf_DriverConfig_a@ha
	e_add16i		r6,r6,CanIf_DriverConfig_a@l
	lbz		r0,11(r5)		# ControllerConfig_p=r5
.Llo30:
	rlwinm		r0,r0,4,20,27
	lwzx		r29,r6,r0
.Llo32:
	mr		r29,r29		# CanSetControllerMode_p=r29 CanSetControllerMode_p=r29
#                                [ControllerConfig_p->CanIfDriverNameRef_u8].
#                                CanIfCanSetControllerMode_p;
# 
#         /* Store variable for consistency */
#         ControllerModeLocal = *ControllerMode_p;
	.d2line		138
	lwz		r28,0(r4)		# ControllerModeLocal=r28 ControllerMode_p=r4
.Llo33:
	mr		r28,r28		# ControllerModeLocal=r28 ControllerModeLocal=r28
# 
#         /* if the current mode is started and the requested mode is
#            sleep, or the other way around */
#         if ((( CANIF_CS_STARTED == ControllerModeLocal ) &&
	.d2line		142
	se_cmpi		r28,1		# ControllerModeLocal=r28
	bc		0,2,.L209	# ne
.Llo31:
	se_cmpi		r26,0		# ControllerMode=r26
	bc		1,2,.L208	# eq
.L209:
	se_cmpi		r28,0		# ControllerModeLocal=r28
	bc		0,2,.L194	# ne
	se_cmpi		r26,1		# ControllerMode=r26
	bc		0,2,.L194	# ne
.L208:
#              ( CANIF_CS_SLEEP == ControllerMode)) ||
#             (( CANIF_CS_SLEEP == ControllerModeLocal ) &&
#              ( CANIF_CS_STARTED == ControllerMode)) )
#          {
#             /* Call the set controller mode function of corresponding
#                driver */
#             /* REQ: [CANIF308], [CANIF040] */
#             CanRet =
	.d2line		150
.Llo12:
	mtspr		ctr,r29		# CanSetControllerMode_p=ctr CanSetControllerMode_p=r29
	rlwinm		r3,r30,0,24,31		# CanControllerId_u8=r30
	diab.li		r4,1		# ControllerMode_p=r4
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo13:
	mr		r3,r3		# CanRet=r3 CanRet=r3
.L194:
#             CanSetControllerMode_p ( CanControllerId_u8, CAN_T_STOP );
# 
#             /* TBD: In this intermediate state should the
#                     Tx buffers be cleared?
#             */
# 
#             /* Note: controller mode is not set in this call, only in
#                CanIf_ControllerModeIndication().
#             */
#         } /* End if */
# 
#         /*  select the requested controller mode */
#         switch(ControllerMode)
	.d2line		163
	mr.		r6,r26		# ControllerMode=r6 ControllerMode=?a5
	bc		1,2,.L199	# eq
	se_cmpi		r6,1		# ControllerMode=r6
	bc		1,2,.L195	# eq
	se_cmpi		r6,2		# ControllerMode=r6
	bc		1,2,.L200	# eq
	b		.L203
.L195:
#         {
# 
#             /* if requested mode is started */
#             case CANIF_CS_STARTED:
#             {
#                 /* If currently in SLEEP mode*/
#                 if(CANIF_CS_SLEEP == ControllerModeLocal)
	.d2line		170
	se_cmpi		r28,0		# ControllerModeLocal=r28
	bc		1,2,.L198	# eq
#                 {
#                     /* This is an invalid transition: do nothing. */
#                 }
#                 else
#                 {
#                     /* REQ: [CANIF481],[CANIF584] */
#                     /* Call the set controller mode function of corresponding
#                        driver */
#                     CanRet =
	.d2line		179
.Llo14:
	mtspr		ctr,r29		# CanSetControllerMode_p=ctr CanSetControllerMode_p=r29
	rlwinm		r3,r30,0,24,31		# CanControllerId_u8=r30
	diab.li		r4,0		# ControllerMode_p=r4
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo15:
	mr		r3,r3		# CanRet=r3 CanRet=r3
	b		.L198
.L199:
#                     CanSetControllerMode_p ( CanControllerId_u8, CAN_T_START );
# 
#                     /* Note: controller mode is not set in this call, only in
#                        CanIf_ControllerModeIndication().
#                     */
#                 }
#                 break;
# 
#             } /* End case CANIF_CS_STARTED */
# 
#             /* if requested mode is sleep */
#             case CANIF_CS_SLEEP:
#             {
#                 /* REQ: [CANIF482], [CANIF486] */
#                 /* Call the set controller mode function of corresponding
#                    driver */
#                 CanRet =
	.d2line		196
.Llo16:
	mtspr		ctr,r29		# CanSetControllerMode_p=ctr CanSetControllerMode_p=r29
	rlwinm		r3,r30,0,24,31		# CanControllerId_u8=r30
	diab.li		r4,2		# ControllerMode_p=r4
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo17:
	mr		r3,r3		# CanRet=r3 CanRet=r3
	b		.L198
.L200:
#                 CanSetControllerMode_p ( CanControllerId_u8, CAN_T_SLEEP );
# 
#                 /* Note: controller mode is not set in this call, only in
#                    CanIf_ControllerModeIndication().
#                 */
# 
#                 break;
# 
#             } /* End case CANIF_CS_SLEEP */
# 
#             /* if requested mode is stopped */
#             case CANIF_CS_STOPPED:
#             {
#                 /* If currently in SLEEP mode*/
#                 if(CANIF_CS_SLEEP == ControllerModeLocal)
	.d2line		211
.Llo27:
	se_cmpi		r28,0		# ControllerModeLocal=r28
	bc		0,2,.L201	# ne
#                 {
#                     /* REQ: [CANIF487] go to CAN_T_WAKEUP*/
#                     CanRet = CanSetControllerMode_p ( CanControllerId_u8, CAN_T_WAKEUP );
	.d2line		214
.Llo18:
	mtspr		ctr,r29		# CanSetControllerMode_p=ctr CanSetControllerMode_p=r29
	rlwinm		r3,r30,0,24,31		# CanControllerId_u8=r30
	diab.li		r4,3		# ControllerMode_p=r4
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo19:
	mr		r3,r3		# CanRet=r3 CanRet=r3
	b		.L198
.L201:
#                 }
#                 else
#                 {
#                     /* REQ: [CANIF480], [CANIF585] */
#                     /* Call the set controller mode function of corresponding
#                        driver */
#                     CanRet =
	.d2line		221
.Llo20:
	mtspr		ctr,r29		# CanSetControllerMode_p=ctr CanSetControllerMode_p=r29
	rlwinm		r3,r30,0,24,31		# CanControllerId_u8=r30
	diab.li		r4,1		# ControllerMode_p=r4
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo21:
	mr		r3,r3		# CanRet=r3 CanRet=r3
	b		.L198
.L203:
#                     CanSetControllerMode_p ( CanControllerId_u8, CAN_T_STOP );
# 
#                 }
#                 break;
# 
#             }
# 
#             default:
#             {
# /* if DET is enabled */
# /* REQ: [CANIF774]*/
# #if ( CANIF_DEV_ERROR_DETECT == STD_ON )
# 
#                 (void)Det_ReportError( CANIF_MODULE_ID,
#                                  CANIF_INSTANCE_ID,
#                                  CANIF_SID_SET_CNTRLR_MODE,
#                                  CANIF_E_PARAM_CTRLMODE );
# 
# #endif          
#                 
#                 CanIfRet = E_NOT_OK;
	.d2line		242
.Llo7:
	diab.li		r27,1		# CanIfRet=r27
.L198:
#                 break;
#             } /* End default */
# 
#         } /* End switch(ControllerMode) */
# 
#         /* REQ: [CANIF475] */
#         if ( CAN_OK != CanRet )
	.d2line		249
.Llo8:
	se_cmpi		r3,0		# CanRet=r3
#         {
#             /*  Update the return value if Controller Mode
#                 change is not successful */
#             CanIfRet = E_NOT_OK;
	.d2line		253
	diab.li		r0,1
	isel		r30,r27,r0,2		# CanIfRet=r30 CanIfRet=r27
.L204:
# 
#         }/* End if ( CAN_OK != CanRet ) */
# 
#         /* Optimization issues:
#             1) Internal controller mode only changes in CanIf_ControllerModeIndication(),
#                so it could be a better overall place for controller mode -> Pdu mode control.
#             2) By this time CanIf_ControllerModeIndication() may have already been called,
#                which already cleared Tx buffers.
#         */
#         /* REQ: [SWS_CANIF_00865] Calling CanIf_SetControllerMode(CANIF_CS_SLEEP) turns Pdu mode to CANIF_OFFLINE */
#         /* REQ: [SWS_CANIF_00866] Calling CanIf_SetControllerMode(CANIF_CS_STOPPED) turns Pdu mode to CANIF_TX_OFFLINE */
#         if ((CANIF_CS_SLEEP == ControllerMode) || (CANIF_CS_STOPPED == ControllerMode))
	.d2line		265
.Llo9:
	se_cmpi		r26,0		# ControllerMode=r26
.Llo10:
	bc		1,2,.L210	# eq
	se_cmpi		r26,2		# ControllerMode=r26
	bc		0,2,.L205	# ne
.L210:
#         {
#             if(CANIF_CS_SLEEP == ControllerMode)
	.d2line		267
	se_cmpi		r26,0		# ControllerMode=r26
	bc		0,2,.L206	# ne
#             {
#                 CanIf_PduMode_a[ControllerId] = CANIF_OFFLINE;
	.d2line		269
.Llo5:
	diab.li		r0,0
	lis		r3,CanIf_PduMode_a@ha		# CanRet=r3
.Llo22:
	e_add16i		r3,r3,CanIf_PduMode_a@l		# CanRet=r3 CanRet=r3
	rlwinm		r4,r31,2,22,29		# ControllerMode_p=r4 ControllerId=r31
	stwx		r0,r3,r4		# CanRet=r3
	b		.L207
.L206:
#             }
#             else
#             {
#                 /* CANIF_CS_STOPPED */
#                 CanIf_PduMode_a[ControllerId] = CANIF_TX_OFFLINE;
	.d2line		274
.Llo23:
	diab.li		r0,1
	lis		r3,CanIf_PduMode_a@ha		# CanRet=r3
.Llo24:
	e_add16i		r3,r3,CanIf_PduMode_a@l		# CanRet=r3 CanRet=r3
	rlwinm		r4,r31,2,22,29		# ControllerMode_p=r4 ControllerId=r31
	stwx		r0,r3,r4		# CanRet=r3
.L207:
#             }
#             /* REQ: [CANIF073], [CANIF489] */
#             SchM_Enter_CanIf(  SCHM_CANIF_EXCLUSIVE_AREA_0 );
	.d2line		277
.Llo25:
	diab.li		r3,0		# CanRet=r3
	bl		SchM_Enter_CanIf
#             CanIf_ClearTxBuffers((ControllerType)ControllerId);
	.d2line		278
	rlwinm		r3,r31,0,24,31		# CanRet=r3 ControllerId=r31
	bl		CanIf_ClearTxBuffers
#             SchM_Exit_CanIf(SCHM_CANIF_EXCLUSIVE_AREA_0);
	.d2line		279
	diab.li		r3,0		# CanRet=r3
	bl		SchM_Exit_CanIf
.L205:
	.section	.text_vle
.L263:
#         }
# 
#     } /* End if (( E_OK == CanIfRet ) &&
#                  ( ControllerMode != CanIf_ControllerMode_a[ControllerId] )) */
# 
#     return CanIfRet;
	.d2line		285
.Llo4:
	rlwinm		r3,r30,0,24,31		# CanRet=r3 CanIfRet=r30
# 
# } /* End of CanIf_SetControllerMode() */
	.d2line		287
	.d2epilogue_begin
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
.Llo11:
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L228:
	.type		CanIf_SetControllerMode,@function
	.size		CanIf_SetControllerMode,.-CanIf_SetControllerMode
# Number of nodes = 175

# Allocations for CanIf_SetControllerMode
#	?a4		ControllerId
#	?a5		ControllerMode
#	?a6		CanIfRet
#	?a7		CanRet
#	?a8		CanControllerId_u8
#	?a9		ControllerConfig_p
#	?a10		ControllerMode_p
#	?a11		CanSetControllerMode_p
#	?a12		ControllerModeLocal

# Allocations for module
	.section	.text_vle
	.0byte		.L277
	.section	.text_vle
#$$ld
.L5:
.L309:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L286:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L269:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\internal\\CanIf_Private.h"
.L229:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_SetControllerMode.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_SetControllerMode.c"
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
.L233:
	.sleb128	2
	.4byte		.L226-.L2
	.byte		"CanIf_SetControllerMode"
	.byte		0
	.4byte		.L229
	.uleb128	57
	.uleb128	35
	.4byte		.L230
	.byte		0x1
	.byte		0x1
	.4byte		.L227
	.4byte		.L228
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L229
	.uleb128	57
	.uleb128	35
	.byte		"ControllerId"
	.byte		0
	.4byte		.L231
	.4byte		.L234
	.sleb128	3
	.4byte		.L229
	.uleb128	57
	.uleb128	35
	.byte		"ControllerMode"
	.byte		0
	.4byte		.L235
	.4byte		.L237
	.section	.debug_info,,n
.L238:
	.sleb128	4
	.4byte		.L229
	.uleb128	65
	.uleb128	38
	.byte		"CanIfRet"
	.byte		0
	.4byte		.L230
	.4byte		.L239
.L240:
	.sleb128	4
	.4byte		.L229
	.uleb128	68
	.uleb128	38
	.byte		"CanRet"
	.byte		0
	.4byte		.L241
	.4byte		.L243
.L244:
	.sleb128	4
	.4byte		.L229
	.uleb128	71
	.uleb128	29
	.byte		"CanControllerId_u8"
	.byte		0
	.4byte		.L231
	.4byte		.L245
.L246:
	.sleb128	4
	.4byte		.L229
	.uleb128	75
	.uleb128	5
	.byte		"ControllerConfig_p"
	.byte		0
	.4byte		.L247
	.4byte		.L251
.L252:
	.sleb128	4
	.4byte		.L229
	.uleb128	79
	.uleb128	5
	.byte		"ControllerMode_p"
	.byte		0
	.4byte		.L253
	.4byte		.L254
.L255:
	.sleb128	4
	.4byte		.L229
	.uleb128	82
	.uleb128	5
	.byte		"CanSetControllerMode_p"
	.byte		0
	.4byte		.L256
	.4byte		.L261
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L265
	.4byte		.L262
	.4byte		.L263
.L266:
	.sleb128	4
	.4byte		.L229
	.uleb128	121
	.uleb128	53
	.byte		"ControllerModeLocal"
	.byte		0
	.4byte		.L235
	.4byte		.L267
	.section	.debug_info,,n
	.sleb128	0
.L265:
	.section	.debug_info,,n
	.sleb128	0
.L226:
	.section	.debug_info,,n
.L268:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L269
	.uleb128	336
	.uleb128	1
	.byte		"CanIf_ControllerMode_a"
	.byte		0
	.4byte		.L270
	.0byte		.L268
.L272:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L269
	.uleb128	342
	.uleb128	42
	.byte		"CanIf_PduMode_a"
	.byte		0
	.4byte		.L273
.L277:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L269
	.uleb128	544
	.uleb128	1
	.byte		"CanIf_ControllerConfig_a"
	.byte		0
	.4byte		.L278
	.section	.debug_info,,n
.L280:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L269
	.uleb128	552
	.uleb128	1
	.byte		"CanIf_DriverConfig_a"
	.byte		0
	.4byte		.L281
	.section	.debug_info,,n
.L285:
	.sleb128	7
	.4byte		.L286
	.uleb128	266
	.uleb128	1
	.4byte		.L287-.L2
	.uleb128	16
	.section	.debug_info,,n
.L157:
	.sleb128	8
	.byte		"CanIfCanSetControllerMode_p"
	.byte		0
	.4byte		.L288
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L158:
	.sleb128	8
	.byte		"CanIfCanWrite_p"
	.byte		0
	.4byte		.L291
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L159:
	.sleb128	8
	.byte		"CanIfCanCheckWakeup_p"
	.byte		0
	.4byte		.L301
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L160:
	.sleb128	8
	.byte		"CanIfInitHohConfigRef_u8"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L287:
.L250:
	.sleb128	7
	.4byte		.L286
	.uleb128	266
	.uleb128	1
	.4byte		.L304-.L2
	.uleb128	16
.L149:
	.sleb128	8
	.byte		"CanIfCtrlrEcuMWakeupSource"
	.byte		0
	.4byte		.L305
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L150:
	.sleb128	8
	.byte		"CanIfTrcvrEcuMWakeupSource"
	.byte		0
	.4byte		.L305
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L151:
	.sleb128	8
	.byte		"CanIfWakeupSupport_b"
	.byte		0
	.4byte		.L308
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L152:
	.sleb128	8
	.byte		"CanIfWakeupValidationSupport_b"
	.byte		0
	.4byte		.L308
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L153:
	.sleb128	8
	.byte		"CanIfControllerIdRef_u8"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L154:
	.sleb128	8
	.byte		"CanIfDriverNameRef_u8"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L155:
	.sleb128	8
	.byte		"CanIfTrcvMapped_b"
	.byte		0
	.4byte		.L308
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L156:
	.sleb128	8
	.byte		"CanIfTransceiverId_u8"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L304:
	.section	.debug_info,,n
.L300:
	.sleb128	9
	.4byte		.L309
	.uleb128	63
	.uleb128	1
	.4byte		.L310-.L2
	.byte		"Can_PduType_s"
	.byte		0
	.uleb128	12
.L87:
	.sleb128	8
	.byte		"sdu"
	.byte		0
	.4byte		.L311
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L88:
	.sleb128	8
	.byte		"id"
	.byte		0
	.4byte		.L312
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L89:
	.sleb128	8
	.byte		"swPduHandle"
	.byte		0
	.4byte		.L313
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L90:
	.sleb128	8
	.byte		"length"
	.byte		0
	.4byte		.L231
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L310:
	.section	.debug_info,,n
.L276:
	.sleb128	10
	.4byte		.L286
	.uleb128	103
	.uleb128	1
	.4byte		.L314-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"CANIF_OFFLINE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"CANIF_TX_OFFLINE"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"CANIF_TX_OFFLINE_ACTIVE"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"CANIF_ONLINE"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"CANIF_PDU_MODE_MAX"
	.byte		0
	.sleb128	4
	.sleb128	0
.L314:
.L236:
	.sleb128	10
	.4byte		.L286
	.uleb128	74
	.uleb128	1
	.4byte		.L315-.L2
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
.L315:
.L260:
	.sleb128	10
	.4byte		.L309
	.uleb128	63
	.uleb128	1
	.4byte		.L316-.L2
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
.L316:
.L242:
	.sleb128	10
	.4byte		.L309
	.uleb128	57
	.uleb128	1
	.4byte		.L317-.L2
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
.L317:
	.section	.debug_info,,n
.L232:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L231:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L232
.L230:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L231
.L235:
	.sleb128	13
	.byte		"CanIf_ControllerModeType"
	.byte		0
	.4byte		.L236
.L241:
	.sleb128	13
	.byte		"Can_ReturnType"
	.byte		0
	.4byte		.L242
.L249:
	.sleb128	13
	.byte		"CanIfControllerConfig_t"
	.byte		0
	.4byte		.L250
	.section	.debug_info,,n
.L248:
	.sleb128	14
	.4byte		.L249
	.section	.debug_info,,n
.L247:
	.sleb128	15
	.4byte		.L248
.L253:
	.sleb128	15
	.4byte		.L235
	.section	.debug_info,,n
.L257:
	.sleb128	16
	.4byte		.L258-.L2
	.4byte		.L241
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	17
	.4byte		.L231
.L259:
	.sleb128	13
	.byte		"Can_StateTransitionType"
	.byte		0
	.4byte		.L260
	.sleb128	17
	.4byte		.L259
	.sleb128	0
.L258:
.L256:
	.sleb128	15
	.4byte		.L257
	.section	.debug_info,,n
.L270:
	.sleb128	18
	.4byte		.L271-.L2
	.4byte		.L235
	.section	.debug_info,,n
	.sleb128	19
	.sleb128	0
.L271:
.L275:
	.sleb128	13
	.byte		"CanIf_PduModeType"
	.byte		0
	.4byte		.L276
.L273:
	.sleb128	18
	.4byte		.L274-.L2
	.4byte		.L275
	.sleb128	19
	.sleb128	0
.L274:
.L278:
	.sleb128	18
	.4byte		.L279-.L2
	.4byte		.L248
	.sleb128	19
	.sleb128	0
.L279:
.L284:
	.sleb128	13
	.byte		"CanIfDriverConfig_t"
	.byte		0
	.4byte		.L285
.L283:
	.sleb128	14
	.4byte		.L284
.L281:
	.sleb128	18
	.4byte		.L282-.L2
	.4byte		.L283
	.sleb128	19
	.sleb128	0
.L282:
.L289:
	.sleb128	16
	.4byte		.L290-.L2
	.4byte		.L241
	.byte		0x1
	.sleb128	17
	.4byte		.L231
	.sleb128	17
	.4byte		.L259
	.sleb128	0
.L290:
.L288:
	.sleb128	15
	.4byte		.L289
.L292:
	.sleb128	16
	.4byte		.L293-.L2
	.4byte		.L241
	.byte		0x1
.L296:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L295:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L296
.L294:
	.sleb128	13
	.byte		"Can_HwHandleType"
	.byte		0
	.4byte		.L295
	.sleb128	17
	.4byte		.L294
.L299:
	.sleb128	13
	.byte		"Can_PduType"
	.byte		0
	.4byte		.L300
.L298:
	.sleb128	14
	.4byte		.L299
.L297:
	.sleb128	15
	.4byte		.L298
	.sleb128	17
	.4byte		.L297
	.sleb128	0
.L293:
.L291:
	.sleb128	15
	.4byte		.L292
.L302:
	.sleb128	16
	.4byte		.L303-.L2
	.4byte		.L241
	.byte		0x1
	.sleb128	17
	.4byte		.L231
	.sleb128	0
.L303:
.L301:
	.sleb128	15
	.4byte		.L302
.L307:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L306:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L307
.L305:
	.sleb128	13
	.byte		"EcuM_WakeupSourceType"
	.byte		0
	.4byte		.L306
.L308:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L232
.L311:
	.sleb128	15
	.4byte		.L231
.L312:
	.sleb128	13
	.byte		"Can_IdType"
	.byte		0
	.4byte		.L306
.L313:
	.sleb128	13
	.byte		"PduIdType"
	.byte		0
	.4byte		.L295
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L234:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L237:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),4
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo5),26
	.d2locend
.L239:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),27
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),27
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),30
	.d2locend
.L243:
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),3
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locend
.L245:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo15),30
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),30
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo19),30
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),30
	.d2locend
.L251:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),5
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo30),0
	.d2locend
.L254:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo31),4
	.d2locend
.L261:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo15),29
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),29
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo19),29
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),29
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),29
	.d2locend
.L267:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo14),28
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),28
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo18),28
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanIf_SetControllerMode"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "CanIf_ClearTxBuffers","SchM_Enter_CanIf","SchM_Exit_CanIf"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_SetControllerMode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_SetControllerMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_SetControllerMode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_SetControllerMode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_SetControllerMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_SetControllerMode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanIf\ssc\make\..\src\CanIf_SetControllerMode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
