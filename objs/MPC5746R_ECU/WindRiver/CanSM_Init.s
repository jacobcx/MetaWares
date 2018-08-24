#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanSM_Init.c"
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
# static FUNC(void,CANSM_CODE)CanSM_InitializeNetwork(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_Init.c"
        .d2line         151,29
#$$ld
.L595:

#$$bf	CanSM_InitializeNetwork,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_InitializeNetwork:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     VAR(uint8, AUTOMATIC)CanSM_ControllerTypeiter;
#     P2CONST(CanSM_NetworkType, AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr;
#     P2VAR(CanSM_NetworkType_RAM, AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr_RAM;
#     P2CONST(CanSM_ControllerType ,AUTOMATIC,CANSM_APPL_CONST )controllers;
#     VAR(uint8, AUTOMATIC)controllers_Size;
# 
#     CanSM_NetworkType_ptr = &(CanSM_NetworkType_p[HandleIndex]);
	.d2line		159
	rlwinm		r4,r0,0,24,31		# CanSM_ControllerTypeiter=r4 HandleIndex=r0
.Llo5:
	lis		r3,CanSM_NetworkType_p@ha		# CanSM_NetworkType_ptr_RAM=r3
.Llo2:
	lwz		r3,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr_RAM=r3 CanSM_NetworkType_ptr_RAM=r3
	rlwinm		r5,r4,5,0,26		# CanSM_ControllerTypeiter=r4
	se_slwi		r4,3		# CanSM_ControllerTypeiter=r4 CanSM_ControllerTypeiter=r4
	subf		r4,r4,r5		# CanSM_ControllerTypeiter=r4 CanSM_ControllerTypeiter=r4
	se_add		r3,r4		# CanSM_NetworkType_ptr_RAM=r3 CanSM_NetworkType_ptr_RAM=r3 CanSM_ControllerTypeiter=r4
.Llo9:
	mr		r4,r3		# CanSM_NetworkType_ptr=r4 CanSM_NetworkType_ptr=r3
#     CanSM_NetworkType_ptr_RAM = CanSM_NetworkType_ptr->RAM;
	.d2line		160
.Llo6:
	lwz		r3,0(r4)		# CanSM_NetworkType_ptr_RAM=r3 CanSM_NetworkType_ptr=r4
.Llo10:
	mr		r3,r3		# CanSM_NetworkType_ptr_RAM=r3 CanSM_NetworkType_ptr_RAM=r3
#     controllers = CanSM_NetworkType_ptr->ControllerType_R16;
	.d2line		161
	lwz		r6,20(r4)		# CanSM_NetworkType_ptr=r4
.Llo12:
	mr		r6,r6		# controllers=r6 controllers=r6
#     controllers_Size = CanSM_NetworkType_ptr->ControllerType_R16_Size;
	.d2line		162
.Llo13:
	lbz		r31,9(r4)		# CanSM_NetworkType_ptr=r4
.Llo14:
	mr		r31,r31		# controllers_Size=r31 controllers_Size=r31
# 
#     CanSM_NetworkType_ptr_RAM->current_state = (CANSM_Escher_StateNumber_t)CanSM_NetworkType_STATE_0;
	.d2line		164
	diab.li		r4,1		# CanSM_NetworkType_ptr=r4
	stb		r4,0(r3)		# CanSM_NetworkType_ptr_RAM=r3 CanSM_NetworkType_ptr=r4
# 
#     /* Initialize variables for all controllers of this network */
#     for(CanSM_ControllerTypeiter = 0; CanSM_ControllerTypeiter < controllers_Size; CanSM_ControllerTypeiter++)
	.d2line		167
	diab.li		r4,0		# CanSM_ControllerTypeiter=r4
.L588:
.Llo3:
	rlwinm		r5,r4,0,24,31		# CanSM_ControllerTypeiter=r4
	rlwinm		r7,r31,0,24,31		# controller_RAM=r7 controllers_Size=r31
.Llo15:
	se_cmp		r5,r7		# controller_RAM=r7
	bc		0,0,.L590	# ge
	.section	.text_vle
.L624:
#     {
#         P2VAR(CanSM_ControllerType_RAM, AUTOMATIC, CANSM_APPL_CONST)controller_RAM = controllers[CanSM_ControllerTypeiter].RAM;
	.d2line		169
.Llo16:
	rlwinm		r5,r4,3,21,28		# CanSM_ControllerTypeiter=r4
	lwzux		r7,r5,r6		# controller_RAM=r7
.Llo17:
	mr		r7,r7		# controller_RAM=r7 controller_RAM=r7
#         controller_RAM->ControllerSleepIndication = FALSE;
	.d2line		170
	diab.li		r5,0
	stb		r5,0(r7)		# controller_RAM=r7
#         controller_RAM->ControllerStoppedIndication = FALSE;
	.d2line		171
	stb		r5,1(r7)		# controller_RAM=r7
#         controller_RAM->ControllerStartedIndication = FALSE;
	.d2line		172
	stb		r5,2(r7)		# controller_RAM=r7
	.section	.text_vle
.L625:
#     }
	.d2line		173
.Llo18:
	diab.addi		r5,r4,1		# CanSM_ControllerTypeiter=r4
	se_addi		r4,1		# CanSM_ControllerTypeiter=r4 CanSM_ControllerTypeiter=r4
	b		.L588
.L590:
#     CanSM_NetworkType_ptr_RAM->CanSM_InitFlag = TRUE;
	.d2line		174
.Llo7:
	diab.li		r4,1		# CanSM_ControllerTypeiter=r4
.Llo8:
	stb		r4,16(r3)		# CanSM_NetworkType_ptr_RAM=r3 CanSM_ControllerTypeiter=r4
#     CanSM_NetworkType_ptr_RAM->State = (uint16)CANSM_ST_NOCOM;
	.d2line		175
	diab.li		r5,2
	sth		r5,2(r3)		# CanSM_NetworkType_ptr_RAM=r3
#     /* Trigger state machine transition no-init to no-communication */
#     (void)CanSM_ProcessSM(HandleIndex, CANSM_NOIN_TO_NC, FALSE);
	.d2line		177
	rlwinm		r3,r0,0,24,31		# CanSM_NetworkType_ptr_RAM=r3 HandleIndex=r0
.Llo11:
	diab.li		r5,0
	bl		CanSM_ProcessSM
# }
	.d2line		178
	.d2epilogue_begin
.Llo4:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L596:
	.type		CanSM_InitializeNetwork,@function
	.size		CanSM_InitializeNetwork,.-CanSM_InitializeNetwork
# Number of nodes = 85

# Allocations for CanSM_InitializeNetwork
#	?a4		HandleIndex
#	?a5		$$161
#	?a6		CanSM_ControllerTypeiter
#	?a7		CanSM_NetworkType_ptr
#	?a8		CanSM_NetworkType_ptr_RAM
#	?a9		controllers
#	?a10		controllers_Size
#	?a11		controller_RAM
# FUNC(void, CANSM_CODE) CanSM_Init(P2CONST(CanSM_ConfigType, AUTOMATIC,CANSM_APPL_DATA) ConfigPtr)
	.align		2
	.section	.text_vle
        .d2line         55,24
#$$ld
.L635:

#$$bf	CanSM_Init,interprocedural,rasave,nostackparams
	.globl		CanSM_Init
	.d2_cfa_start __cie
CanSM_Init:
.Llo19:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr.		r31,r3		# ConfigPtr=?a4 ConfigPtr=r3
	.d2prologue_end
# {
#   /* <Requirements> CANSM023 CANSM179 CANSM424 DEV_CANSM423 AR40_GR_080.1 <EndRequirements> */
# 
#   /* Check if the input is a NULL pointer */
#     if(NULL_PTR == ConfigPtr)
	.d2line		60
	bc		1,2,.L575	# eq
#     {
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#         /* Report to DET */
#          (void)Det_ReportError(CANSM_MODULE_ID,
#                          CANSM_INSTANCE_ID,
#                          (uint8)0,  /*API ID */
#                          CANSM_E_PARAM_POINTER );
# #endif
#     }
#     else
#     {
#         /* Check configuration consistency */
#         if(E_OK == CanSM_ConsistencyCheck(ConfigPtr))
	.d2line		73
.Llo20:
	mr		r3,r31		# ConfigPtr=r3 ConfigPtr=r31
.Llo21:
	bl		CanSM_ConsistencyCheck
	rlwinm		r3,r3,0,24,31		# ConfigPtr=r3 ConfigPtr=r3
	se_cmpi		r3,0		# ConfigPtr=r3
	bc		0,2,.L578	# ne
	.section	.text_vle
.L643:
#         {
#             P2CONST(CanSM_NetworkType ,AUTOMATIC,CANSM_APPL_CONST )networks;
#             VAR(uint8 ,AUTOMATIC)networks_Size;
#             VAR( uint8,AUTOMATIC)CanSM_NetworkTypeiter;
# 
#             CanSM_Cfg_p = ConfigPtr;
	.d2line		79
.Llo22:
	lis		r3,CanSM_Cfg_p@ha		# ConfigPtr=r3
.Llo23:
	e_add16i		r3,r3,CanSM_Cfg_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r31,0(r3)		# ConfigPtr=r3 ConfigPtr=r31
#             CanSM_NetworkType_p = ConfigPtr->NetworkType_R14;
	.d2line		80
	lwz		r0,16(r31)		# ConfigPtr=r31
	lis		r3,CanSM_NetworkType_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanSM_NetworkType_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3
#             CanSM_NoLock = FALSE;
	.d2line		81
	diab.li		r30,0
.Llo35:
	lis		r3,CanSM_NoLock@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanSM_NoLock@l		# ConfigPtr=r3 ConfigPtr=r3
	stb		r30,0(r3)		# ConfigPtr=r3
#             CanSM_EcuPassive = FALSE;
	.d2line		82
	lis		r3,CanSM_EcuPassive@ha		# ConfigPtr=r3
	e_add16i		r3,r3,CanSM_EcuPassive@l		# ConfigPtr=r3 ConfigPtr=r3
	stb		r30,0(r3)		# ConfigPtr=r3
#             networks = CanSM_Cfg_p->NetworkType_R14;
	.d2line		83
	lwz		r29,16(r31)		# ConfigPtr=r31
.Llo33:
	mr		r29,r29		# networks=r29 networks=r29
#             networks_Size = CanSM_Cfg_p->NetworkType_R14_Size;
	.d2line		84
	lbz		r31,0(r31)		# ConfigPtr=r31 ConfigPtr=r31
.Llo34:
	mr		r31,r31		# networks_Size=r31 networks_Size=r31
# 
#             /* Initialize per-network variables */
#             for(CanSM_NetworkTypeiter = 0; CanSM_NetworkTypeiter < networks_Size; CanSM_NetworkTypeiter++)
.L579:
	.d2line		87
.Llo24:
	rlwinm		r7,r30,0,24,31		# CanSM_NetworkTypeiter=r30
	rlwinm		r0,r31,0,24,31		# networks_Size=r31
	se_cmp		r7,r0
	bc		0,0,.L581	# ge
	.section	.text_vle
.L653:
#             {
#                 P2VAR(CanSM_NetworkType_RAM, AUTOMATIC, CANSM_APPL_CONST)networkRAM;
#                 networkRAM = networks[CanSM_NetworkTypeiter].RAM;
	.d2line		90
	rlwinm		r7,r30,0,24,31		# CanSM_NetworkTypeiter=r30
	rlwinm		r6,r7,5,0,26
	se_slwi		r7,3
	subf		r3,r7,r6		# ConfigPtr=r3
.Llo25:
	lwzux		r0,r3,r29		# ConfigPtr=r3
.Llo36:
	mr		r3,r0		# networkRAM=r3 networkRAM=r0
# 
#                 networkRAM->State = (uint16)CANSM_ST_NOINIT;
	.d2line		92
.Llo26:
	diab.li		r5,1
.Llo37:
	sth		r5,2(r3)		# networkRAM=r3
#                 networkRAM->CanSMBorTimer_u16 = 0;
	.d2line		93
	diab.li		r4,0
	sth		r4,4(r3)		# networkRAM=r3
#                 networkRAM->CanSMBorTimerTxEnsured_u16 = 0;
	.d2line		94
	sth		r4,6(r3)		# networkRAM=r3
#                 networkRAM->ChannelTimer_u16 = 0;
	.d2line		95
	sth		r4,8(r3)		# networkRAM=r3
#                 networkRAM->RetryTimerEnabled = FALSE;
	.d2line		96
	stb		r4,10(r3)		# networkRAM=r3
#                 networkRAM->CanSMNetworkMode = COMM_NO_COMMUNICATION;
	.d2line		97
	stb		r4,11(r3)		# networkRAM=r3
#                 networkRAM->RequestMode = COMM_NO_COMMUNICATION;
	.d2line		98
	stb		r4,15(r3)		# networkRAM=r3
#                 networkRAM->CanSMBorCounter_u8 = (uint8)0;
	.d2line		99
	stb		r4,12(r3)		# networkRAM=r3
#                 networkRAM->RetryCounter_u8 = (uint8)0;
	.d2line		100
	stb		r4,14(r3)		# networkRAM=r3
#                 networkRAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		101
	stb		r4,13(r3)		# networkRAM=r3
#                 networkRAM->CanSM_InitFlag = FALSE;
	.d2line		102
	stb		r4,16(r3)		# networkRAM=r3
#                 networkRAM->CanSMCheckedBaudrateStatus = (uint8)E_NOT_OK;
	.d2line		103
	stb		r5,17(r3)		# networkRAM=r3
#                 networkRAM->CanSMCheckedBaudrate = (uint16)0;
	.d2line		104
	sth		r4,18(r3)		# networkRAM=r3
#                 networkRAM->CurrentStateNoCom_b = FALSE;
	.d2line		105
	stb		r4,22(r3)		# networkRAM=r3
#                 networkRAM->TxTimeoutstate_b = FALSE;
	.d2line		106
	stb		r4,23(r3)		# networkRAM=r3
#                 networkRAM->T_REPEAT_MAX_HAPPENED = FALSE;
	.d2line		107
	stb		r4,24(r3)		# networkRAM=r3
#                 networkRAM->BufferedRequestMode = CANSM_NO_MODE_REQUESTED;
	.d2line		108
	diab.li		r0,255
	stb		r0,25(r3)		# networkRAM=r3
#                 networkRAM->Lock = TRUE;
	.d2line		109
	stb		r5,27(r3)		# networkRAM=r3
#                 networkRAM->CanSM_ChangeBaudrateRequest = FALSE;
	.d2line		110
	stb		r4,28(r3)		# networkRAM=r3
#                 networkRAM->CanSM_ComModeRequest = FALSE;
	.d2line		111
	stb		r4,29(r3)		# networkRAM=r3
#                 networkRAM->CanSM_TransceiverWakeFlagIndication = FALSE;
	.d2line		112
	stb		r4,30(r3)		# networkRAM=r3
#                 networkRAM->CanSM_TrcvWuFlagIndication = FALSE;
	.d2line		113
	stb		r4,31(r3)		# networkRAM=r3
#                 networkRAM->CanSM_CtrlBusOffIndication = FALSE;
	.d2line		114
	stb		r4,32(r3)		# networkRAM=r3
#                 networkRAM->CanSM_CtrlSleepIndication = FALSE;
	.d2line		115
	stb		r4,33(r3)		# networkRAM=r3
#                 networkRAM->CanSM_CtrlStoppedIndication = FALSE;
	.d2line		116
	stb		r4,34(r3)		# networkRAM=r3
#                 networkRAM->CanSM_CtrlStartedIndication = FALSE;
	.d2line		117
	stb		r4,35(r3)		# networkRAM=r3
#                 networkRAM->CanSM_TransceiverModeNormalIndication = FALSE;
	.d2line		118
	stb		r4,36(r3)		# networkRAM=r3
#                 networkRAM->CanSM_TransceiverModeStandbyIndication = FALSE;
	.d2line		119
	stb		r4,37(r3)		# networkRAM=r3
#                 networkRAM->CanSM_TxTimeoutIndication = FALSE;
	.d2line		120
	stb		r4,38(r3)		# networkRAM=r3
#                 networkRAM->BusOffDuringRecovery = FALSE;
	.d2line		121
	stb		r4,39(r3)		# networkRAM=r3
#                 /* <Requirements> ADD_CANSM900400 <EndRequirements> */
#                 networkRAM->BorFailTRepeatMax = FALSE;
	.d2line		123
	stb		r4,40(r3)		# networkRAM=r3
# 
#                 CanSM_InitializeNetwork(networks[CanSM_NetworkTypeiter].CanSMNetworkIndex);
	.d2line		125
	subf		r7,r7,r6
	se_add		r7,r29		# networks=r29
	lbz		r3,4(r7)		# networkRAM=r3
.Llo38:
	bl		CanSM_InitializeNetwork
	.section	.text_vle
.L654:
#             }
	.d2line		126
	diab.addi		r7,r30,1		# CanSM_NetworkTypeiter=r30
	se_addi		r30,1		# CanSM_NetworkTypeiter=r30 CanSM_NetworkTypeiter=r30
	b		.L579
.L581:
#             /* Mark the beginning of the initialization process.
#              * From this point forward CanSM is no longer uninitialized.
#              */
#             CanSM_LTConfig.RAM->initState = CANSM_INITIALIZING;
	.d2line		130
	diab.li		r0,2
	lis		r3,CanSM_LTConfig@ha		# ConfigPtr=r3
.Llo27:
	lwz		r3,CanSM_LTConfig@l(r3)		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3
	.section	.text_vle
.L644:
.Llo28:
	b		.L575
.L578:
#         }
#         else
#         {
#             /* If consistency check fails, set status back to uninitialized */
#             CanSM_LTConfig.RAM->initState = CANSM_UNINITED;
	.d2line		135
.Llo29:
	diab.li		r0,1
	lis		r3,CanSM_LTConfig@ha		# ConfigPtr=r3
	lwz		r3,CanSM_LTConfig@l(r3)		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3
.L575:
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#             (void)Det_ReportError( CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_INIT, CANSM_E_PARAM_POINTER );
# #endif
#         }
#     }
# }
	.d2line		141
	.d2epilogue_begin
.Llo30:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo31:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo32:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L636:
	.type		CanSM_Init,@function
	.size		CanSM_Init,.-CanSM_Init
# Number of nodes = 267

# Allocations for CanSM_Init
#	?a4		ConfigPtr
#	?a5		$$163
#	?a6		$$162
#	?a7		networks
#	?a8		networks_Size
#	?a9		CanSM_NetworkTypeiter
#	?a10		networkRAM

# Allocations for module
	.section	.text_vle
	.0byte		.L662
	.section	.text_vle
#$$ld
.L5:
.L667:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\inc\\CanSM_Common.h"
.L660:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\inc\\CanSM_Types.h"
.L597:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_Init.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_Init.c"
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
.L598:
	.sleb128	2
	.4byte		.L594-.L2
	.byte		"CanSM_InitializeNetwork"
	.byte		0
	.4byte		.L597
	.uleb128	151
	.uleb128	29
	.byte		0x1
	.4byte		.L595
	.4byte		.L596
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L597
	.uleb128	151
	.uleb128	29
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L599
	.4byte		.L602
	.section	.debug_info,,n
.L603:
	.sleb128	4
	.4byte		.L597
	.uleb128	153
	.uleb128	26
	.byte		"CanSM_ControllerTypeiter"
	.byte		0
	.4byte		.L600
	.4byte		.L604
.L605:
	.sleb128	4
	.4byte		.L597
	.uleb128	154
	.uleb128	60
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L606
	.4byte		.L610
.L611:
	.sleb128	4
	.4byte		.L597
	.uleb128	155
	.uleb128	62
	.byte		"CanSM_NetworkType_ptr_RAM"
	.byte		0
	.4byte		.L612
	.4byte		.L615
.L616:
	.sleb128	4
	.4byte		.L597
	.uleb128	156
	.uleb128	63
	.byte		"controllers"
	.byte		0
	.4byte		.L617
	.4byte		.L621
.L622:
	.sleb128	4
	.4byte		.L597
	.uleb128	157
	.uleb128	26
	.byte		"controllers_Size"
	.byte		0
	.4byte		.L600
	.4byte		.L623
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L627
	.4byte		.L624
	.4byte		.L625
.L628:
	.sleb128	4
	.4byte		.L597
	.uleb128	169
	.uleb128	69
	.byte		"controller_RAM"
	.byte		0
	.4byte		.L629
	.4byte		.L632
	.section	.debug_info,,n
	.sleb128	0
.L627:
	.section	.debug_info,,n
	.sleb128	0
.L594:
	.section	.debug_info,,n
.L637:
	.sleb128	6
	.4byte		.L634-.L2
	.byte		"CanSM_Init"
	.byte		0
	.4byte		.L597
	.uleb128	55
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L635
	.4byte		.L636
	.sleb128	3
	.4byte		.L597
	.uleb128	55
	.uleb128	24
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L638
	.4byte		.L642
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L646
	.4byte		.L643
	.4byte		.L644
.L647:
	.sleb128	4
	.4byte		.L597
	.uleb128	75
	.uleb128	68
	.byte		"networks"
	.byte		0
	.4byte		.L606
	.4byte		.L648
.L649:
	.sleb128	4
	.4byte		.L597
	.uleb128	76
	.uleb128	34
	.byte		"networks_Size"
	.byte		0
	.4byte		.L600
	.4byte		.L650
.L651:
	.sleb128	4
	.4byte		.L597
	.uleb128	77
	.uleb128	34
	.byte		"CanSM_NetworkTypeiter"
	.byte		0
	.4byte		.L600
	.4byte		.L652
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L656
	.4byte		.L653
	.4byte		.L654
.L657:
	.sleb128	4
	.4byte		.L597
	.uleb128	89
	.uleb128	74
	.byte		"networkRAM"
	.byte		0
	.4byte		.L612
	.4byte		.L658
	.section	.debug_info,,n
	.sleb128	0
.L656:
	.section	.debug_info,,n
	.sleb128	0
.L646:
	.section	.debug_info,,n
	.sleb128	0
.L634:
	.section	.debug_info,,n
.L659:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L660
	.uleb128	490
	.uleb128	61
	.byte		"CanSM_Cfg_p"
	.byte		0
	.4byte		.L638
	.0byte		.L659
.L661:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L660
	.uleb128	491
	.uleb128	62
	.byte		"CanSM_NetworkType_p"
	.byte		0
	.4byte		.L606
.L662:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L660
	.uleb128	500
	.uleb128	48
	.byte		"CanSM_LTConfig"
	.byte		0
	.4byte		.L663
	.section	.debug_info,,n
.L666:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L667
	.uleb128	33
	.uleb128	32
	.byte		"CanSM_NoLock"
	.byte		0
	.4byte		.L668
.L669:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L667
	.uleb128	41
	.uleb128	32
	.byte		"CanSM_EcuPassive"
	.byte		0
	.4byte		.L668
	.section	.debug_info,,n
.L641:
	.sleb128	8
	.4byte		.L660
	.uleb128	341
	.uleb128	14
	.4byte		.L670-.L2
	.uleb128	20
	.section	.debug_info,,n
.L565:
	.sleb128	9
	.byte		"NetworkType_R14_Size"
	.byte		0
	.4byte		.L599
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L566:
	.sleb128	9
	.byte		"RepetitionTime_u16"
	.byte		0
	.4byte		.L671
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L567:
	.sleb128	9
	.byte		"RepetitionMax_u8"
	.byte		0
	.4byte		.L599
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L568:
	.sleb128	9
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L674
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L569:
	.sleb128	9
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L674
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L570:
	.sleb128	9
	.byte		"NetworkType_R14"
	.byte		0
	.4byte		.L606
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L670:
.L609:
	.sleb128	8
	.4byte		.L660
	.uleb128	341
	.uleb128	14
	.4byte		.L678-.L2
	.uleb128	24
.L552:
	.sleb128	9
	.byte		"RAM"
	.byte		0
	.4byte		.L612
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L553:
	.sleb128	9
	.byte		"CanSMNetworkIndex"
	.byte		0
	.4byte		.L599
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L554:
	.sleb128	9
	.byte		"CanSMNetworkHandle"
	.byte		0
	.4byte		.L679
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L555:
	.sleb128	9
	.byte		"CanSMTransceiverId_u8"
	.byte		0
	.4byte		.L599
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L556:
	.sleb128	9
	.byte		"CanSMPartialNetworkSupport"
	.byte		0
	.4byte		.L681
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L557:
	.sleb128	9
	.byte		"CanSMBorTxConfirmationPolling"
	.byte		0
	.4byte		.L681
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L558:
	.sleb128	9
	.byte		"ControllerType_R16_Size"
	.byte		0
	.4byte		.L599
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L559:
	.sleb128	9
	.byte		"CanSMBorCounterL1ToL2_u8"
	.byte		0
	.4byte		.L599
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L560:
	.sleb128	9
	.byte		"CanSMBorTimeL1_u16"
	.byte		0
	.4byte		.L671
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L561:
	.sleb128	9
	.byte		"CanSMBorTimeL2_u16"
	.byte		0
	.4byte		.L671
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L562:
	.sleb128	9
	.byte		"CanSMBorTimeTxEnsured_u16"
	.byte		0
	.4byte		.L671
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L563:
	.sleb128	9
	.byte		"CanSMBorErrEvent"
	.byte		0
	.4byte		.L682
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L564:
	.sleb128	9
	.byte		"ControllerType_R16"
	.byte		0
	.4byte		.L617
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L678:
.L614:
	.sleb128	8
	.4byte		.L660
	.uleb128	341
	.uleb128	14
	.4byte		.L684-.L2
	.uleb128	42
.L518:
	.sleb128	9
	.byte		"current_state"
	.byte		0
	.4byte		.L685
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L519:
	.sleb128	9
	.byte		"State"
	.byte		0
	.4byte		.L672
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L520:
	.sleb128	9
	.byte		"CanSMBorTimer_u16"
	.byte		0
	.4byte		.L672
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L521:
	.sleb128	9
	.byte		"CanSMBorTimerTxEnsured_u16"
	.byte		0
	.4byte		.L672
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L522:
	.sleb128	9
	.byte		"ChannelTimer_u16"
	.byte		0
	.4byte		.L672
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L523:
	.sleb128	9
	.byte		"RetryTimerEnabled"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L524:
	.sleb128	9
	.byte		"CanSMNetworkMode"
	.byte		0
	.4byte		.L686
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L525:
	.sleb128	9
	.byte		"CanSMBorCounter_u8"
	.byte		0
	.4byte		.L600
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L526:
	.sleb128	9
	.byte		"RequestModeTransition"
	.byte		0
	.4byte		.L600
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L527:
	.sleb128	9
	.byte		"RetryCounter_u8"
	.byte		0
	.4byte		.L600
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L528:
	.sleb128	9
	.byte		"RequestMode"
	.byte		0
	.4byte		.L686
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L529:
	.sleb128	9
	.byte		"CanSM_InitFlag"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L530:
	.sleb128	9
	.byte		"CanSMCheckedBaudrateStatus"
	.byte		0
	.4byte		.L600
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L531:
	.sleb128	9
	.byte		"CanSMCheckedBaudrate"
	.byte		0
	.4byte		.L672
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L532:
	.sleb128	9
	.byte		"CanSMChangedBaudrate"
	.byte		0
	.4byte		.L672
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L533:
	.sleb128	9
	.byte		"CurrentStateNoCom_b"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L534:
	.sleb128	9
	.byte		"TxTimeoutstate_b"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L535:
	.sleb128	9
	.byte		"T_REPEAT_MAX_HAPPENED"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L536:
	.sleb128	9
	.byte		"BufferedRequestMode"
	.byte		0
	.4byte		.L686
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
.L537:
	.sleb128	9
	.byte		"CalledFromMainfunction"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L538:
	.sleb128	9
	.byte		"Lock"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L539:
	.sleb128	9
	.byte		"CanSM_ChangeBaudrateRequest"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L540:
	.sleb128	9
	.byte		"CanSM_ComModeRequest"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L541:
	.sleb128	9
	.byte		"CanSM_TransceiverWakeFlagIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L542:
	.sleb128	9
	.byte		"CanSM_TrcvWuFlagIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L543:
	.sleb128	9
	.byte		"CanSM_CtrlBusOffIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L544:
	.sleb128	9
	.byte		"CanSM_CtrlSleepIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L545:
	.sleb128	9
	.byte		"CanSM_CtrlStoppedIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L546:
	.sleb128	9
	.byte		"CanSM_CtrlStartedIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L547:
	.sleb128	9
	.byte		"CanSM_TransceiverModeNormalIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L548:
	.sleb128	9
	.byte		"CanSM_TransceiverModeStandbyIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	37
	.byte		0x1
.L549:
	.sleb128	9
	.byte		"CanSM_TxTimeoutIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L550:
	.sleb128	9
	.byte		"BusOffDuringRecovery"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L551:
	.sleb128	9
	.byte		"BorFailTRepeatMax"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L684:
.L665:
	.sleb128	8
	.4byte		.L660
	.uleb128	341
	.uleb128	14
	.4byte		.L687-.L2
	.uleb128	4
.L517:
	.sleb128	9
	.byte		"RAM"
	.byte		0
	.4byte		.L688
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L687:
.L690:
	.sleb128	8
	.4byte		.L660
	.uleb128	341
	.uleb128	14
	.4byte		.L691-.L2
	.uleb128	4
.L516:
	.sleb128	9
	.byte		"initState"
	.byte		0
	.4byte		.L692
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L691:
.L620:
	.sleb128	8
	.4byte		.L660
	.uleb128	341
	.uleb128	14
	.4byte		.L694-.L2
	.uleb128	8
.L514:
	.sleb128	9
	.byte		"RAM"
	.byte		0
	.4byte		.L629
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L515:
	.sleb128	9
	.byte		"ControllerId_pu8"
	.byte		0
	.4byte		.L599
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L694:
.L631:
	.sleb128	8
	.4byte		.L660
	.uleb128	341
	.uleb128	14
	.4byte		.L695-.L2
	.uleb128	3
.L511:
	.sleb128	9
	.byte		"ControllerSleepIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	9
	.byte		"ControllerStoppedIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L513:
	.sleb128	9
	.byte		"ControllerStartedIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L695:
	.section	.debug_info,,n
.L693:
	.sleb128	10
	.4byte		.L660
	.uleb128	322
	.uleb128	14
	.4byte		.L696-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"CANSM_INITED"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"CANSM_UNINITED"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"CANSM_INITIALIZING"
	.byte		0
	.sleb128	2
	.sleb128	0
.L696:
	.section	.debug_info,,n
.L601:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L600:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L601
	.section	.debug_info,,n
.L599:
	.sleb128	14
	.4byte		.L600
.L608:
	.sleb128	13
	.byte		"CanSM_NetworkType"
	.byte		0
	.4byte		.L609
.L607:
	.sleb128	14
	.4byte		.L608
	.section	.debug_info,,n
.L606:
	.sleb128	15
	.4byte		.L607
.L613:
	.sleb128	13
	.byte		"CanSM_NetworkType_RAM"
	.byte		0
	.4byte		.L614
.L612:
	.sleb128	15
	.4byte		.L613
.L619:
	.sleb128	13
	.byte		"CanSM_ControllerType"
	.byte		0
	.4byte		.L620
.L618:
	.sleb128	14
	.4byte		.L619
.L617:
	.sleb128	15
	.4byte		.L618
.L630:
	.sleb128	13
	.byte		"CanSM_ControllerType_RAM"
	.byte		0
	.4byte		.L631
.L629:
	.sleb128	15
	.4byte		.L630
.L640:
	.sleb128	13
	.byte		"CanSM_ConfigType"
	.byte		0
	.4byte		.L641
.L639:
	.sleb128	14
	.4byte		.L640
.L638:
	.sleb128	15
	.4byte		.L639
.L664:
	.sleb128	13
	.byte		"CanSM_LTConfigType"
	.byte		0
	.4byte		.L665
.L663:
	.sleb128	14
	.4byte		.L664
.L668:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L601
.L673:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L672:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L673
.L671:
	.sleb128	14
	.4byte		.L672
.L677:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L676:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L677
.L675:
	.sleb128	14
	.4byte		.L676
.L674:
	.sleb128	15
	.4byte		.L675
.L680:
	.sleb128	13
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L600
.L679:
	.sleb128	14
	.4byte		.L680
.L681:
	.sleb128	14
	.4byte		.L668
.L683:
	.sleb128	13
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L672
.L682:
	.sleb128	14
	.4byte		.L683
.L685:
	.sleb128	13
	.byte		"CANSM_Escher_StateNumber_t"
	.byte		0
	.4byte		.L600
.L686:
	.sleb128	13
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L600
.L689:
	.sleb128	13
	.byte		"CanSM_LTConfigType_RAM"
	.byte		0
	.4byte		.L690
.L688:
	.sleb128	15
	.4byte		.L689
.L692:
	.sleb128	13
	.byte		"CanSM_StateType"
	.byte		0
	.4byte		.L693
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L602:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locend
.L604:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),4
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo4),4
	.d2locend
.L610:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo3),4
	.d2locend
.L615:
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locend
.L621:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),6
	.d2locend
.L623:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo7),31
	.d2locend
.L632:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),7
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),7
	.d2locend
.L642:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),3
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),31
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),31
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locend
.L648:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo28),29
	.d2locend
.L650:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo28),31
	.d2locend
.L652:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo28),30
	.d2locend
.L658:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanSM_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanSM_ConsistencyCheck","CanSM_InitializeNetwork"
	.wrcm.end
	.wrcm.nelem "CanSM_InitializeNetwork"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanSM_ProcessSM"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_Init.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_Init.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_Init.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_Init.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanSM\ssc\make\..\src\CanSM_Init.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
