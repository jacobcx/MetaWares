#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_ControllerBusOff.c"
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
# FUNC(void, CANIF_CODE)CanIf_ProcessControllerBusOff
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_ControllerBusOff.c"
        .d2line         88,23
#$$ld
.L207:

#$$bf	CanIf_ProcessControllerBusOff,interprocedural,rasave,nostackparams
	.globl		CanIf_ProcessControllerBusOff
	.d2_cfa_start __cie
CanIf_ProcessControllerBusOff:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Controller_u8=r3 Controller_u8=r3
	mr		r0,r4		# Driver_u8=r0 Driver_u8=r4
	.d2prologue_end
# (
#     CONST(uint8,AUTOMATIC)Controller_u8,
#     CONST(uint8,AUTOMATIC)Driver_u8
# )
# {
#     /* REQ: [CANIF118] */
#     /* variable for holding controller index */
#     VAR(uint8, AUTOMATIC) ControllerInd_u8 = 0;
	.d2line		96
	diab.li		r31,0		# ControllerInd_u8=r31
# 
#     /* REQ: [CANIF431], [CANIF432] */
#     /* If the CanIf module was not initialized */
#     if ( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 )
	.d2line		100
	lis		r4,CanIf_InitStatus_u8@ha
.Llo9:
	lbz		r4,CanIf_InitStatus_u8@l(r4)
	se_cmpi		r4,0
	bc		1,2,.L194	# eq
.L197:
#     {
# /* if DET is enabled REQ: [DEV_CANIF14000] */
# #if( CANIF_DEV_ERROR_DETECT == STD_ON )
# 
#         /* Report error to DET */
#         (void)Det_ReportError( CANIF_MODULE_ID,
#                          CANIF_INSTANCE_ID,
#                          CANIF_SID_CONTROLLER_BUS_OFF,
#                          CANIF_E_UNINIT );
# #endif /* CANIF_DEV_ERROR_DETECT == STD_ON */
#     }
#     /* if CanIf was initialized */
#     else
#     {
#         /* REQ: [DEV_CANIF433]*/
#         /* Get the CanIf specific controller id corresponding to
#            received controller of corresponding driver */
#         while ((ControllerInd_u8 < CanIf_NumberOfCanCtrlUnits_u8) &&
	.d2line		118
.Llo10:
	rlwinm		r5,r31,0,24,31		# ControllerInd_u8=r31
	lis		r4,CanIf_NumberOfCanCtrlUnits_u8@ha
	lbz		r4,CanIf_NumberOfCanCtrlUnits_u8@l(r4)
	se_cmp		r5,r4
	bc		0,0,.L198	# ge
	lis		r4,(CanIf_ControllerConfig_a+10)@ha
	e_add16i		r4,r4,(CanIf_ControllerConfig_a+10)@l
	rlwinm		r5,r31,4,20,27		# ControllerInd_u8=r31
	lbzx		r4,r4,r5
	rlwinm		r5,r3,0,24,31		# Controller_u8=r3
	se_cmp		r4,r5
	bc		0,2,.L200	# ne
	lis		r4,(CanIf_ControllerConfig_a+11)@ha
	e_add16i		r4,r4,(CanIf_ControllerConfig_a+11)@l
	rlwinm		r5,r31,4,20,27		# ControllerInd_u8=r31
	lbzx		r5,r4,r5
	rlwinm		r4,r0,0,24,31		# Driver_u8=r0
	se_cmp		r5,r4
	bc		1,2,.L198	# eq
.L200:
#                ((CanIf_ControllerConfig_a[ControllerInd_u8].
#                  CanIfControllerIdRef_u8 != Controller_u8) ||
#                 (CanIf_ControllerConfig_a[ControllerInd_u8].
#                  CanIfDriverNameRef_u8 != Driver_u8)))
#         {
#             /* Increment controller id */
#             ControllerInd_u8++;
	.d2line		125
	diab.addi		r5,r31,1		# ControllerInd_u8=r31
	se_addi		r31,1		# ControllerInd_u8=r31 ControllerInd_u8=r31
	b		.L197
.L198:
#         }
# 
#         /* REQ: [CANIF429] */
#         /* if DET is enabled */
# #if( CANIF_DEV_ERROR_DETECT == STD_ON )
#         /* if corresponding controller id is not found */
#         if (ControllerInd_u8 >= CanIf_NumberOfCanCtrlUnits_u8)
#         {
#             /* Report error to DET */
#             (void)Det_ReportError( CANIF_MODULE_ID,
#                              CANIF_INSTANCE_ID,
#                              CANIF_SID_CONTROLLER_BUS_OFF,
#                              CANIF_E_PARAM_CONTROLLER );
#         }
#         else
# #endif /* CANIF_DEV_ERROR_DETECT == STD_ON */
#         {
# 
#             /* Enter Critical Section */
#             SchM_Enter_CanIf(  SCHM_CANIF_EXCLUSIVE_AREA_0 );
	.d2line		145
.Llo2:
	diab.li		r3,0		# Controller_u8=r3
	bl		SchM_Enter_CanIf
# 
#             /* REQ: [CANIF298], [CANIF488] */
#             /* Set the controller mode to stopped.
#                Only change controller mode to CANIF_CS_STOPPED, if the current
#                mode is CANIF_INIT (CANIF_CS_STOPPED, CANIF_CS_STARTED, CANIF_CS_SLEEP).
#                If we are here CanIf has surely been initialized, so the
#                controller mode is surely CANIF_INIT.
#             */
#             CanIf_ControllerMode_a[ControllerInd_u8] = CANIF_CS_STOPPED;
	.d2line		154
	diab.li		r0,2		# Driver_u8=r0
.Llo11:
	lis		r3,CanIf_ControllerMode_a@ha		# Controller_u8=r3
.Llo3:
	e_add16i		r3,r3,CanIf_ControllerMode_a@l		# Controller_u8=r3 Controller_u8=r3
	rlwinm		r5,r31,2,22,29		# ControllerInd_u8=r31
	stwx		r0,r3,r5		# Controller_u8=r3 Driver_u8=r0
#             /*TODO: CANIF479, CANIF485: clear all stored wake-up event, clear tx buffer, clear pending tx*/
# /* REQ: [CANIF739] */
# #if( CANIF_PUBLIC_TXCONFIRM_POLLING_SUPPORT == STD_ON )
#         {
#             /* Set Tx confirmation state to CANIF_NO_NOTIFICATION,
#                i.e. clear it.
#             */
#             CanIf_TxConfirmationState_a[ControllerInd_u8] = CANIF_NO_NOTIFICATION;
	.d2line		162
	diab.li		r0,0		# Driver_u8=r0
	lis		r3,CanIf_TxConfirmationState_a@ha		# Controller_u8=r3
	e_add16i		r3,r3,CanIf_TxConfirmationState_a@l		# Controller_u8=r3 Controller_u8=r3
	stwx		r0,r3,r5		# Controller_u8=r3 Driver_u8=r0
#         }
# #endif/* #if( CANIF_PUBLIC_TXCONFIRM_POLLING_SUPPORT == STD_ON )*/
# 
#             /* REQ: [SWS_CANIF_00866] Calling CanIf_ControllerBusOff() turns Pdu mode to CANIF_TX_OFFLINE */
#             CanIf_PduMode_a[ControllerInd_u8] = CANIF_TX_OFFLINE;
	.d2line		167
	diab.li		r0,1		# Driver_u8=r0
	lis		r3,CanIf_PduMode_a@ha		# Controller_u8=r3
	e_add16i		r3,r3,CanIf_PduMode_a@l		# Controller_u8=r3 Controller_u8=r3
	stwx		r0,r3,r5		# Controller_u8=r3 Driver_u8=r0
# 
#             /* Transmit queues are cleared to avoid transmission of old LPDUs
#                after CAN controller restart */
#             CanIf_ClearTxBuffers((ControllerType)ControllerInd_u8);
	.d2line		171
	rlwinm		r3,r31,0,24,31		# Controller_u8=r3 ControllerInd_u8=r31
.Llo4:
	bl		CanIf_ClearTxBuffers
# 
# #if (CANIF_RX_INT_DECOUPLING == STD_ON)
#             /* Clear pending Rx indications, REQ: [] */
#             CanIf_ClearRxIntDecoupleStatus((ControllerType)ControllerInd_u8);
	.d2line		175
.Llo12:
	rlwinm		r3,r31,0,24,31		# Controller_u8=r3 ControllerInd_u8=r31
	bl		CanIf_ClearRxIntDecoupleStatus
# #endif /* (CANIF_RX_INT_DECOUPLING == STD_ON) */
# 
#             /* Leave Critical Section */
#             SchM_Exit_CanIf(SCHM_CANIF_EXCLUSIVE_AREA_0);
	.d2line		179
	diab.li		r3,0		# Controller_u8=r3
	bl		SchM_Exit_CanIf
# 
#             /* if busoff notification is configured */
#             if (NULL_PTR != CanIf_DispatchConfig.CanIfBusOffNotification)
	.d2line		182
	lis		r3,CanIf_DispatchConfig@ha		# Controller_u8=r3
.Llo5:
	lwz		r0,CanIf_DispatchConfig@l(r3)		# Driver_u8=r0 Controller_u8=r3
.Llo13:
	se_cmpi		r0,0		# Driver_u8=r0
	bc		1,2,.L194	# eq
#             {
#                 /* REQ: [CANIF724] */
#                 /* REQ: [CANIF449]
#                    - No assumptions made regarding calling context.
#                    - It is assumed that once bus off is reported,
#                      further transmission in the HW is blocked until
#                      reinitialization, so no further bus off is reported
#                      to CanIf until reinit.
#                 */
#                 /* Indicate bus off notification to upper layer. */
#                 CanIf_DispatchConfig.CanIfBusOffNotification(ControllerInd_u8);
	.d2line		193
.Llo6:
	lis		r3,CanIf_DispatchConfig@ha		# Controller_u8=r3
.Llo7:
	lwz		r0,CanIf_DispatchConfig@l(r3)		# Driver_u8=r0 Controller_u8=r3
	mtspr		ctr,r0		# Driver_u8=ctr
	rlwinm		r3,r31,0,24,31		# Controller_u8=r3 ControllerInd_u8=r31
.Llo8:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L194:
#             } /* End if (NULL_PTR != CanIf_DispatchConfig.CanIfBusOffNotification) */
# 
#         } /* End if (ControllerInd_u8 < CanIf_NumberOfCanCtrlUnits_u8) */
# 
#     }/* End if ( CANIF_UNINITIALIZED == CanIf_InitStatus_u8 ) */
# 
# } /* End of CanIf_ProcessControllerBusOff() */
	.d2line		200
	.d2epilogue_begin
.Llo14:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# Driver_u8=r0
	mtspr		lr,r0		# Driver_u8=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L208:
	.type		CanIf_ProcessControllerBusOff,@function
	.size		CanIf_ProcessControllerBusOff,.-CanIf_ProcessControllerBusOff
# Number of nodes = 104

# Allocations for CanIf_ProcessControllerBusOff
#	?a4		Controller_u8
#	?a5		Driver_u8
#	?a6		ControllerInd_u8
# FUNC(void, CANIF_CODE)CanIf_ControllerBusOff
	.align		2
	.section	.text_vle
        .d2line         57,23
#$$ld
.L220:

#$$bf	CanIf_ControllerBusOff,interprocedural,rasave,nostackparams
	.globl		CanIf_ControllerBusOff
	.d2_cfa_start __cie
CanIf_ControllerBusOff:
.Llo15:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(uint8,AUTOMATIC)Controller_u8
# )
# {
#     /* REQ: [CANIF218], [CANIF224] */
#     /* Call CanIf_ProcessControllerBusOff() to process the busoff event
#        for the driver */
#     CanIf_ProcessControllerBusOff(Controller_u8, CANIF_SINGLE_DRIVER_IND); 
	.d2line		65
	mr		r0,r3		# Controller_u8=r0 Controller_u8=r3
	diab.li		r4,0
	bl		CanIf_ProcessControllerBusOff
# 
# }/* End of CanIf_ControllerBusOff() */
	.d2line		67
	.d2epilogue_begin
.Llo16:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L221:
	.type		CanIf_ControllerBusOff,@function
	.size		CanIf_ControllerBusOff,.-CanIf_ControllerBusOff
# Number of nodes = 7

# Allocations for CanIf_ControllerBusOff
#	?a4		Controller_u8

# Allocations for module
	.section	.text_vle
	.0byte		.L241
	.section	.text_vle
#$$ld
.L5:
.L280:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L252:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L225:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\internal\\CanIf_Private.h"
.L209:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_ControllerBusOff.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_ControllerBusOff.c"
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
.L210:
	.sleb128	2
	.4byte		.L206-.L2
	.byte		"CanIf_ProcessControllerBusOff"
	.byte		0
	.4byte		.L209
	.uleb128	88
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L207
	.4byte		.L208
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L209
	.uleb128	88
	.uleb128	23
	.byte		"Controller_u8"
	.byte		0
	.4byte		.L211
	.4byte		.L214
	.sleb128	3
	.4byte		.L209
	.uleb128	88
	.uleb128	23
	.byte		"Driver_u8"
	.byte		0
	.4byte		.L211
	.4byte		.L215
	.section	.debug_info,,n
.L216:
	.sleb128	4
	.4byte		.L209
	.uleb128	96
	.uleb128	27
	.byte		"ControllerInd_u8"
	.byte		0
	.4byte		.L212
	.4byte		.L217
	.section	.debug_info,,n
	.sleb128	0
.L206:
	.section	.debug_info,,n
.L222:
	.sleb128	2
	.4byte		.L219-.L2
	.byte		"CanIf_ControllerBusOff"
	.byte		0
	.4byte		.L209
	.uleb128	57
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L220
	.4byte		.L221
	.sleb128	3
	.4byte		.L209
	.uleb128	57
	.uleb128	23
	.byte		"Controller_u8"
	.byte		0
	.4byte		.L212
	.4byte		.L223
	.section	.debug_info,,n
	.sleb128	0
.L219:
	.section	.debug_info,,n
.L224:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L225
	.uleb128	323
	.uleb128	29
	.byte		"CanIf_InitStatus_u8"
	.byte		0
	.4byte		.L212
	.0byte		.L224
.L226:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L225
	.uleb128	336
	.uleb128	1
	.byte		"CanIf_ControllerMode_a"
	.byte		0
	.4byte		.L227
.L231:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L225
	.uleb128	342
	.uleb128	42
	.byte		"CanIf_PduMode_a"
	.byte		0
	.4byte		.L232
.L236:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L225
	.uleb128	353
	.uleb128	46
	.byte		"CanIf_TxConfirmationState_a"
	.byte		0
	.4byte		.L237
.L241:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L225
	.uleb128	504
	.uleb128	38
	.byte		"CanIf_NumberOfCanCtrlUnits_u8"
	.byte		0
	.4byte		.L211
	.section	.debug_info,,n
.L242:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L225
	.uleb128	544
	.uleb128	1
	.byte		"CanIf_ControllerConfig_a"
	.byte		0
	.4byte		.L243
.L248:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L225
	.uleb128	568
	.uleb128	55
	.byte		"CanIf_DispatchConfig"
	.byte		0
	.4byte		.L249
	.section	.debug_info,,n
.L247:
	.sleb128	6
	.4byte		.L252
	.uleb128	266
	.uleb128	1
	.4byte		.L253-.L2
	.uleb128	16
	.section	.debug_info,,n
.L149:
	.sleb128	7
	.byte		"CanIfCtrlrEcuMWakeupSource"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L150:
	.sleb128	7
	.byte		"CanIfTrcvrEcuMWakeupSource"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L151:
	.sleb128	7
	.byte		"CanIfWakeupSupport_b"
	.byte		0
	.4byte		.L257
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L152:
	.sleb128	7
	.byte		"CanIfWakeupValidationSupport_b"
	.byte		0
	.4byte		.L257
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L153:
	.sleb128	7
	.byte		"CanIfControllerIdRef_u8"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L154:
	.sleb128	7
	.byte		"CanIfDriverNameRef_u8"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L155:
	.sleb128	7
	.byte		"CanIfTrcvMapped_b"
	.byte		0
	.4byte		.L257
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L156:
	.sleb128	7
	.byte		"CanIfTransceiverId_u8"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L253:
.L251:
	.sleb128	6
	.4byte		.L252
	.uleb128	266
	.uleb128	1
	.4byte		.L258-.L2
	.uleb128	16
.L145:
	.sleb128	7
	.byte		"CanIfBusOffNotification"
	.byte		0
	.4byte		.L259
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L146:
	.sleb128	7
	.byte		"CanIfWakeupValidNotification"
	.byte		0
	.4byte		.L263
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L147:
	.sleb128	7
	.byte		"CanIfControllerModeIndication"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L148:
	.sleb128	7
	.byte		"CanIfTrcvModeIndication"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L258:
	.section	.debug_info,,n
.L240:
	.sleb128	8
	.4byte		.L252
	.uleb128	129
	.uleb128	1
	.4byte		.L277-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	9
	.byte		"CANIF_NO_NOTIFICATION"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"CANIF_TX_RX_NOTIFICATION"
	.byte		0
	.sleb128	1
	.sleb128	0
.L277:
.L235:
	.sleb128	8
	.4byte		.L252
	.uleb128	103
	.uleb128	1
	.4byte		.L278-.L2
	.uleb128	4
	.sleb128	9
	.byte		"CANIF_OFFLINE"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"CANIF_TX_OFFLINE"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"CANIF_TX_OFFLINE_ACTIVE"
	.byte		0
	.sleb128	2
	.sleb128	9
	.byte		"CANIF_ONLINE"
	.byte		0
	.sleb128	3
	.sleb128	9
	.byte		"CANIF_PDU_MODE_MAX"
	.byte		0
	.sleb128	4
	.sleb128	0
.L278:
.L230:
	.sleb128	8
	.4byte		.L252
	.uleb128	74
	.uleb128	1
	.4byte		.L279-.L2
	.uleb128	4
	.sleb128	9
	.byte		"CANIF_CS_SLEEP"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"CANIF_CS_STARTED"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"CANIF_CS_STOPPED"
	.byte		0
	.sleb128	2
	.sleb128	9
	.byte		"CANIF_CS_UNINIT"
	.byte		0
	.sleb128	3
	.sleb128	0
.L279:
.L276:
	.sleb128	8
	.4byte		.L280
	.uleb128	23
	.uleb128	15
	.4byte		.L281-.L2
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
.L281:
	.section	.debug_info,,n
.L213:
	.sleb128	10
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L212:
	.sleb128	11
	.byte		"uint8"
	.byte		0
	.4byte		.L213
	.section	.debug_info,,n
.L211:
	.sleb128	12
	.4byte		.L212
.L229:
	.sleb128	11
	.byte		"CanIf_ControllerModeType"
	.byte		0
	.4byte		.L230
	.section	.debug_info,,n
.L227:
	.sleb128	13
	.4byte		.L228-.L2
	.4byte		.L229
	.section	.debug_info,,n
	.sleb128	14
	.sleb128	0
.L228:
.L234:
	.sleb128	11
	.byte		"CanIf_PduModeType"
	.byte		0
	.4byte		.L235
.L232:
	.sleb128	13
	.4byte		.L233-.L2
	.4byte		.L234
	.sleb128	14
	.sleb128	0
.L233:
.L239:
	.sleb128	11
	.byte		"CanIf_NotifStatusType"
	.byte		0
	.4byte		.L240
.L237:
	.sleb128	13
	.4byte		.L238-.L2
	.4byte		.L239
	.sleb128	14
	.sleb128	0
.L238:
.L246:
	.sleb128	11
	.byte		"CanIfControllerConfig_t"
	.byte		0
	.4byte		.L247
.L245:
	.sleb128	12
	.4byte		.L246
.L243:
	.sleb128	13
	.4byte		.L244-.L2
	.4byte		.L245
	.sleb128	14
	.sleb128	0
.L244:
.L250:
	.sleb128	11
	.byte		"CanIfDispatchConfig_t"
	.byte		0
	.4byte		.L251
.L249:
	.sleb128	12
	.4byte		.L250
.L256:
	.sleb128	10
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L255:
	.sleb128	11
	.byte		"uint32"
	.byte		0
	.4byte		.L256
.L254:
	.sleb128	11
	.byte		"EcuM_WakeupSourceType"
	.byte		0
	.4byte		.L255
.L257:
	.sleb128	11
	.byte		"boolean"
	.byte		0
	.4byte		.L213
	.section	.debug_info,,n
.L261:
	.sleb128	15
	.4byte		.L262-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	16
	.4byte		.L212
	.sleb128	0
.L262:
	.section	.debug_info,,n
.L260:
	.sleb128	17
	.4byte		.L261
.L259:
	.sleb128	11
	.byte		"CanIfControllerBusOff_t"
	.byte		0
	.4byte		.L260
.L265:
	.sleb128	15
	.4byte		.L266-.L2
	.byte		0x1
	.sleb128	16
	.4byte		.L254
	.sleb128	0
.L266:
.L264:
	.sleb128	17
	.4byte		.L265
.L263:
	.sleb128	11
	.byte		"CanIfValidationWakeupEvent_t"
	.byte		0
	.4byte		.L264
.L269:
	.sleb128	15
	.4byte		.L270-.L2
	.byte		0x1
	.sleb128	16
	.4byte		.L212
	.sleb128	16
	.4byte		.L229
	.sleb128	0
.L270:
.L268:
	.sleb128	17
	.4byte		.L269
.L267:
	.sleb128	11
	.byte		"CanIfControllerModeIndication_t"
	.byte		0
	.4byte		.L268
.L273:
	.sleb128	15
	.4byte		.L274-.L2
	.byte		0x1
	.sleb128	16
	.4byte		.L212
.L275:
	.sleb128	11
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L276
	.sleb128	16
	.4byte		.L275
	.sleb128	0
.L274:
.L272:
	.sleb128	17
	.4byte		.L273
.L271:
	.sleb128	11
	.byte		"CanIfTrcvModeIndication_t"
	.byte		0
	.4byte		.L272
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L214:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L215:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo9),4
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo2),0
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),0
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo6),0
	.d2locend
.L217:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo14),31
	.d2locend
.L223:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanIf_ControllerBusOff"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "CanIf_ProcessControllerBusOff"
	.wrcm.end
	.wrcm.nelem "CanIf_ProcessControllerBusOff"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_ControllerBusOff.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_ControllerBusOff.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_ControllerBusOff.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_ControllerBusOff.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_ControllerBusOff.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_ControllerBusOff.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanIf\ssc\make\..\src\CanIf_ControllerBusOff.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
