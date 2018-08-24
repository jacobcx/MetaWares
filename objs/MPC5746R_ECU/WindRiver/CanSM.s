#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanSM.c"
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
# FUNC( Std_ReturnType,CANSM_CODE) CanSM_ConsistencyCheck(P2CONST(CanSM_ConfigType,AUTOMATIC,CANSM_APPL_DATA) ConfigPtr)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM.c"
        .d2line         201,34
#$$ld
.L1068:

#$$bf	CanSM_ConsistencyCheck,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		CanSM_ConsistencyCheck
	.d2_cfa_start __cie
CanSM_ConsistencyCheck:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ConfigPtr=r3 ConfigPtr=r3
	.d2prologue_end
# {
#     VAR(Std_ReturnType, AUTOMATIC) Retval = E_NOT_OK;
	.d2line		203
	diab.li		r5,1		# Retval=r5
# 
#     if((CANSM_PC_HASH_VALUE == CanSM_LTtoPCHashValue)
	.d2line		205
.Llo3:
	lis		r4,CanSM_LTtoPCHashValue@ha
	lwz		r0,CanSM_LTtoPCHashValue@l(r4)
	e_lis		r4,14971
	e_or2i		r4,60033
	se_cmpl		r0,r4
	bc		0,2,.L576	# ne
	se_cmpi		r3,0		# ConfigPtr=r3
	bc		1,2,.L576	# eq
	lwz		r4,8(r3)		# ConfigPtr=r3
	lwz		r0,0(r4)
	e_lis		r4,14971
	e_or2i		r4,60033
	se_cmpl		r0,r4
	bc		0,2,.L576	# ne
	lwz		r3,12(r3)		# ConfigPtr=r3 ConfigPtr=r3
	lwz		r0,0(r3)		# ConfigPtr=r3
	lis		r3,CanSM_LTHashValue@ha		# ConfigPtr=r3
	lwz		r3,CanSM_LTHashValue@l(r3)		# ConfigPtr=r3 ConfigPtr=r3
	se_cmpl		r0,r3		# ConfigPtr=r3
#     && (NULL_PTR != ConfigPtr)
#     && (CANSM_PC_HASH_VALUE == *(ConfigPtr->PBtoPCHashValue_P))
#     && (CanSM_LTHashValue == *(ConfigPtr->PBtoLTHashValue_P))
#     )
#     {
#         Retval = E_OK;
	.d2line		211
	isel		r5,0,r5,2		# Retval=r5 Retval=r5
.L576:
#     }
# 
#     return Retval;
	.d2line		214
.Llo2:
	rlwinm		r3,r5,0,24,31		# ConfigPtr=r3 Retval=r5
# }
	.d2line		215
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo4:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1069:
	.type		CanSM_ConsistencyCheck,@function
	.size		CanSM_ConsistencyCheck,.-CanSM_ConsistencyCheck
# Number of nodes = 28

# Allocations for CanSM_ConsistencyCheck
#	?a4		ConfigPtr
#	?a5		Retval
# FUNC(Std_ReturnType,CANSM_CODE) CanSM_EntryTrcv(
	.align		2
	.section	.text_vle
        .d2line         395,33
#$$ld
.L1084:

#$$bf	CanSM_EntryTrcv,interprocedural,rasave,nostackparams
	.globl		CanSM_EntryTrcv
	.d2_cfa_start __cie
CanSM_EntryTrcv:
.Llo5:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# CONST(uint8,AUTOMATIC) HandleIndex,
# CONST(CanTrcv_TrcvModeType,AUTOMATIC) TrcvMode)
# {
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		399
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo6:
	lis		r3,CanSM_NetworkType_p@ha		# CanSMRetVal=r3
.Llo7:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31 CanSMRetVal=r3
	rlwinm		r3,r0,5,0,26		# CanSMRetVal=r3 HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0 CanSMRetVal=r3
	se_add		r0,r31		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r31
.Llo8:
	mr		r31,r0		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r0
#     VAR(uint8,AUTOMATIC) CanSMRetVal;
# 
#     CanSM_NetworkType_ptr->RAM->RetryCounter_u8 = CanSM_Cfg_p->RepetitionMax_u8;
	.d2line		402
	lis		r3,CanSM_Cfg_p@ha		# CanSMRetVal=r3
	lwz		r3,CanSM_Cfg_p@l(r3)		# CanSMRetVal=r3 CanSMRetVal=r3
	lbz		r0,4(r3)		# HandleIndex=r0 CanSMRetVal=r3
.Llo9:
	lwz		r3,0(r31)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r31
	stb		r0,14(r3)		# CanSMRetVal=r3 HandleIndex=r0
#     CanSMRetVal = (uint8)CanIf_SetTrcvMode(CanSM_NetworkType_ptr->CanSMTransceiverId_u8, TrcvMode);
	.d2line		403
	lbz		r3,6(r31)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r31
.Llo22:
	mr		r0,r4		# TrcvMode=r0 TrcvMode=r4
.Llo10:
	bl		CanIf_SetTrcvMode
.Llo21:
	mr		r3,r3		# CanSMRetVal=r3 CanSMRetVal=r3
#     if(CanSMRetVal == E_OK)
	.d2line		404
	rlwinm		r0,r3,0,24,31		# HandleIndex=r0 CanSMRetVal=r3
.Llo11:
	se_cmpi		r0,0		# HandleIndex=r0
	bc		0,2,.L618	# ne
#     {
#         if( CanSM_NetworkType_ptr->RAM->CalledFromMainfunction == TRUE)
	.d2line		406
.Llo12:
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	lbz		r0,26(r4)		# HandleIndex=r0
.Llo13:
	se_cmpi		r0,1		# HandleIndex=r0
	bc		0,2,.L619	# ne
#         {
#             CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, CanSM_Cfg_p->RepetitionTime_u16);
	.d2line		408
.Llo14:
	diab.li		r0,1		# HandleIndex=r0
.Llo15:
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r0,10(r4)		# HandleIndex=r0
	lis		r4,CanSM_Cfg_p@ha
	lwz		r4,CanSM_Cfg_p@l(r4)
	lhz		r0,2(r4)		# HandleIndex=r0
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r0,8(r4)		# HandleIndex=r0
	b		.L623
.L619:
#         }
#         else
#         {
#             /* Called directly from API, 1 additional mainfunction period is needed */
#             CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, CanSM_Cfg_p->RepetitionTime_u16 + 1);
	.d2line		413
.Llo16:
	diab.li		r0,1		# HandleIndex=r0
.Llo17:
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r0,10(r4)		# HandleIndex=r0
	lis		r4,CanSM_Cfg_p@ha
	lwz		r4,CanSM_Cfg_p@l(r4)
	lhz		r4,2(r4)
	diab.addi		r0,r4,1		# HandleIndex=r0
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r0,8(r4)		# HandleIndex=r0
	b		.L623
.L618:
#         }
#     }
#     else
#     {
#         /*
#          * As the transceiver returned E_NOT_OK, the CanIf_SetTrcvMode() shall be repeated in the next Main Function
#          */
#         CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, 1);
	.d2line		421
.Llo18:
	diab.li		r0,1		# HandleIndex=r0
.Llo19:
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r0,10(r4)		# HandleIndex=r0
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r0,8(r4)		# HandleIndex=r0
.L623:
#     }
#     return CanSMRetVal;
	.d2line		423
.Llo20:
	rlwinm		r3,r3,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r3
# 
# }
	.d2line		425
	.d2epilogue_begin
.Llo23:
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
.L1085:
	.type		CanSM_EntryTrcv,@function
	.size		CanSM_EntryTrcv,.-CanSM_EntryTrcv
# Number of nodes = 96

# Allocations for CanSM_EntryTrcv
#	?a4		HandleIndex
#	?a5		TrcvMode
#	?a6		$$167
#	?a7		CanSM_NetworkType_ptr
#	?a8		CanSMRetVal
# FUNC(Std_ReturnType,CANSM_CODE) CanSM_EntryController(
	.align		2
	.section	.text_vle
        .d2line         441,33
#$$ld
.L1104:

#$$bf	CanSM_EntryController,interprocedural,rasave,nostackparams
	.globl		CanSM_EntryController
	.d2_cfa_start __cie
CanSM_EntryController:
.Llo24:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	mr		r31,r4		# Mode=r31 Mode=r4
	.d2prologue_end
# CONST(uint8,AUTOMATIC) HandleIndex,
# CONST(CanIf_ControllerModeType,AUTOMATIC) Mode)
# {
#     CONSTP2CONST(CanSM_NetworkType, AUTOMATIC, CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		445
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo25:
	lis		r3,CanSM_NetworkType_p@ha
.Llo26:
	lwz		r30,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r30
.Llo47:
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r30		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r30
.Llo27:
	mr		r30,r0		# CanSM_NetworkType_ptr=r30 CanSM_NetworkType_ptr=r0
#     VAR(uint8, AUTOMATIC) CanSMRetVal;
#     VAR(uint8, AUTOMATIC) CanIfRetVal;
#     P2CONST(CanSM_ControllerType, AUTOMATIC,CANSM_APPL_CONST) controllers; /* controllers (ControllerType) */
#     VAR(uint8, AUTOMATIC) controllers_Size;
#     P2CONST(CanSM_ControllerType, AUTOMATIC,CANSM_APPL_CONST) controller;
#     VAR(uint8, AUTOMATIC) CanSM_ControllerTypeiter;
# 
#     CanSMRetVal = E_OK;
	.d2line		453
	diab.li		r29,0		# CanSMRetVal=r29
#     CanSM_NetworkType_ptr->RAM->RetryCounter_u8 = CanSM_Cfg_p->RepetitionMax_u8;
	.d2line		454
.Llo48:
	lis		r3,CanSM_Cfg_p@ha
	lwz		r3,CanSM_Cfg_p@l(r3)
	lbz		r0,4(r3)		# HandleIndex=r0
.Llo28:
	lwz		r3,0(r30)		# CanSM_NetworkType_ptr=r30
	stb		r0,14(r3)		# HandleIndex=r0
#     controllers = CanSM_NetworkType_ptr->ControllerType_R16;
	.d2line		455
	lwz		r28,20(r30)		# CanSM_NetworkType_ptr=r30
.Llo54:
	mr		r28,r28		# controllers=r28 controllers=r28
#     controllers_Size = CanSM_NetworkType_ptr->ControllerType_R16_Size;
	.d2line		456
	lbz		r26,9(r30)		# CanSM_NetworkType_ptr=r30
.Llo55:
	mr		r26,r26		# controllers_Size=r26 controllers_Size=r26
# 
#     /* Clear indications */
#     CanSM_NetworkType_ptr->RAM->CanSM_CtrlSleepIndication = FALSE;
	.d2line		459
	diab.li		r5,0
.Llo65:
	lwz		r3,0(r30)		# CanSM_NetworkType_ptr=r30
	stb		r5,33(r3)
#     CanSM_NetworkType_ptr->RAM->CanSM_CtrlStartedIndication = FALSE;
	.d2line		460
	lwz		r3,0(r30)		# CanSM_NetworkType_ptr=r30
	stb		r5,35(r3)
#     CanSM_NetworkType_ptr->RAM->CanSM_CtrlStoppedIndication = FALSE;
	.d2line		461
	lwz		r3,0(r30)		# CanSM_NetworkType_ptr=r30
	stb		r5,34(r3)
# 
#     for(CanSM_ControllerTypeiter = 0; CanSM_ControllerTypeiter < controllers_Size; CanSM_ControllerTypeiter++)
.L629:
	.d2line		463
.Llo29:
	rlwinm		r0,r5,0,24,31		# HandleIndex=r0 CanSM_ControllerTypeiter=r5
.Llo30:
	rlwinm		r3,r26,0,24,31		# controller=r3 controllers_Size=r26
.Llo56:
	se_cmp		r0,r3		# HandleIndex=r0 controller=r3
	bc		0,0,.L631	# ge
#     {
#         controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		465
.Llo31:
	rlwinm		r3,r5,3,21,28		# controller=r3 CanSM_ControllerTypeiter=r5
.Llo57:
	se_add		r3,r28		# controller=r3 controller=r3 controllers=r28
	mr		r3,r3		# controller=r3 controller=r3
#         controller->RAM->ControllerSleepIndication = FALSE;
	.d2line		466
	diab.li		r0,0		# HandleIndex=r0
.Llo32:
	lwz		r4,0(r3)		# controller=r3
	stb		r0,0(r4)		# HandleIndex=r0
#         controller->RAM->ControllerStartedIndication = FALSE;
	.d2line		467
	lwz		r4,0(r3)		# controller=r3
	stb		r0,2(r4)		# HandleIndex=r0
#         controller->RAM->ControllerStoppedIndication = FALSE;
	.d2line		468
	lwz		r3,0(r3)		# controller=r3 controller=r3
	stb		r0,1(r3)		# controller=r3 HandleIndex=r0
#     }
	.d2line		469
	diab.addi		r0,r5,1		# HandleIndex=r0 CanSM_ControllerTypeiter=r5
.Llo33:
	se_addi		r5,1		# CanSM_ControllerTypeiter=r5 CanSM_ControllerTypeiter=r5
	b		.L629
.L631:
# 
#     for(CanSM_ControllerTypeiter = 0; CanSM_ControllerTypeiter < controllers_Size; CanSM_ControllerTypeiter++)
	.d2line		471
.Llo58:
	diab.li		r27,0		# CanSM_ControllerTypeiter=r27
.L632:
.Llo66:
	rlwinm		r0,r27,0,24,31		# HandleIndex=r0 CanSM_ControllerTypeiter=r27
.Llo34:
	rlwinm		r3,r26,0,24,31		# controller=r3 controllers_Size=r26
.Llo59:
	se_cmp		r0,r3		# HandleIndex=r0 controller=r3
	bc		0,0,.L634	# ge
#     {
#         controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		473
.Llo35:
	rlwinm		r3,r27,3,21,28		# CanIfRetVal=r3 CanSM_ControllerTypeiter=r27
.Llo50:
	se_add		r3,r28		# CanIfRetVal=r3 CanIfRetVal=r3 controllers=r28
.Llo51:
	mr		r3,r3		# controller=r3 controller=r3
#         CanIfRetVal = (uint8)CanIf_SetControllerMode(controller->ControllerId_pu8, Mode);
	.d2line		474
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo60:
	mr		r4,r31		# Mode=r4 Mode=r31
	bl		CanIf_SetControllerMode
.Llo52:
	mr		r3,r3		# CanIfRetVal=r3 CanIfRetVal=r3
#         if(CanIfRetVal == E_NOT_OK)
	.d2line		475
	rlwinm		r3,r3,0,24,31		# CanIfRetVal=r3 CanIfRetVal=r3
	se_cmpi		r3,1		# CanIfRetVal=r3
#         {
#             CanSMRetVal = E_NOT_OK;
	.d2line		477
	diab.li		r3,1		# CanIfRetVal=r3
	isel		r29,r3,r29,2		# CanSMRetVal=r29 CanIfRetVal=r3 CanSMRetVal=r29
.L635:
#         }
#     }
	.d2line		479
.Llo53:
	diab.addi		r0,r27,1		# HandleIndex=r0 CanSM_ControllerTypeiter=r27
	se_addi		r27,1		# CanSM_ControllerTypeiter=r27 CanSM_ControllerTypeiter=r27
	b		.L632
.L634:
#     if((CanSMRetVal == E_OK))
	.d2line		480
	rlwinm		r3,r29,0,24,31		# controller=r3 CanSMRetVal=r29
.Llo61:
	se_cmpi		r3,0		# controller=r3
	bc		0,2,.L636	# ne
#     {
#         if( CanSM_NetworkType_ptr->RAM->CalledFromMainfunction == TRUE)
	.d2line		482
.Llo44:
	lwz		r3,0(r30)		# controller=r3 CanSM_NetworkType_ptr=r30
.Llo45:
	lbz		r0,26(r3)		# HandleIndex=r0 controller=r3
.Llo36:
	se_cmpi		r0,1		# HandleIndex=r0
	bc		0,2,.L637	# ne
#         {
#             CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, CanSM_Cfg_p->RepetitionTime_u16);
	.d2line		484
.Llo37:
	diab.li		r0,1		# HandleIndex=r0
.Llo38:
	lwz		r3,0(r30)		# controller=r3 CanSM_NetworkType_ptr=r30
.Llo62:
	stb		r0,10(r3)		# controller=r3 HandleIndex=r0
	lis		r3,CanSM_Cfg_p@ha		# controller=r3
	lwz		r3,CanSM_Cfg_p@l(r3)		# controller=r3 controller=r3
	lhz		r0,2(r3)		# HandleIndex=r0 controller=r3
	lwz		r3,0(r30)		# controller=r3 CanSM_NetworkType_ptr=r30
	sth		r0,8(r3)		# controller=r3 HandleIndex=r0
	b		.L641
.L637:
#         }
#         else
#         {
#             /* Called directly from API, 1 additional main function period is needed */
#             CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, CanSM_Cfg_p->RepetitionTime_u16 + 1);
	.d2line		489
.Llo39:
	diab.li		r0,1		# HandleIndex=r0
.Llo40:
	lwz		r3,0(r30)		# controller=r3 CanSM_NetworkType_ptr=r30
.Llo63:
	stb		r0,10(r3)		# controller=r3 HandleIndex=r0
	lis		r3,CanSM_Cfg_p@ha		# controller=r3
	lwz		r3,CanSM_Cfg_p@l(r3)		# controller=r3 controller=r3
	lhz		r3,2(r3)		# controller=r3 controller=r3
	diab.addi		r0,r3,1		# HandleIndex=r0 controller=r3
	lwz		r3,0(r30)		# controller=r3 CanSM_NetworkType_ptr=r30
	sth		r0,8(r3)		# controller=r3 HandleIndex=r0
	b		.L641
.L636:
#         }
#     }
#     else
#     {
#         /*
#          * As at least one of the controllers returned E_NOT_OK, the CanIf_SetControllerMode() shall be repeated in the next Main Function
#          */
#         CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, 1);
	.d2line		497
.Llo41:
	diab.li		r0,1		# HandleIndex=r0
.Llo42:
	lwz		r3,0(r30)		# controller=r3 CanSM_NetworkType_ptr=r30
.Llo64:
	stb		r0,10(r3)		# controller=r3 HandleIndex=r0
	lwz		r3,0(r30)		# controller=r3 CanSM_NetworkType_ptr=r30
	sth		r0,8(r3)		# controller=r3 HandleIndex=r0
.L641:
#     }
#     return CanSMRetVal;
	.d2line		499
.Llo43:
	rlwinm		r3,r29,0,24,31		# controller=r3 CanSMRetVal=r29
# 
# }
	.d2line		501
	.d2epilogue_begin
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
.Llo49:
	lwz		r0,52(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo46:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1105:
	.type		CanSM_EntryController,@function
	.size		CanSM_EntryController,.-CanSM_EntryController
# Number of nodes = 196

# Allocations for CanSM_EntryController
#	?a4		HandleIndex
#	?a5		Mode
#	?a6		$$168
#	?a7		CanSM_NetworkType_ptr
#	?a8		CanSMRetVal
#	?a9		CanIfRetVal
#	?a10		controllers
#	?a11		controllers_Size
#	?a12		controller
#	?a13		CanSM_ControllerTypeiter
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_Dispatch( CONST(uint8,AUTOMATIC) HandleIndex,
	.align		1
	.section	.text_vle
        .d2line         2279,30
#$$ld
.L1132:

#$$bf	CanSM_NetworkType_Dispatch,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_Dispatch:
.Llo67:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# HandleIndex=r31 HandleIndex=r3
	mr		r0,r4		# event_number=r0 event_number=r4
	.d2prologue_end
#         CONST(CANSM_Escher_EventNumber_t,AUTOMATIC) event_number)
# {
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST)instance = &CanSM_NetworkType_p[HandleIndex];
	.d2line		2282
	rlwinm		r4,r31,0,24,31		# HandleIndex=r31
.Llo73:
	lis		r3,CanSM_NetworkType_p@ha
.Llo68:
	lwz		r3,CanSM_NetworkType_p@l(r3)
	rlwinm		r5,r4,5,0,26
	se_slwi		r4,3
	subf		r4,r4,r5
	se_add		r3,r4
	.d2line		2285
	mr.		r29,r3		# instance=?a7 instance=?a9
#     VAR(CANSM_Escher_SEMcell_t,AUTOMATIC) next_state;
# 
#     if(0 != instance)
	bc		1,2,.L1054	# eq
#     {
#         if(instance->RAM->current_state > 12)
	.d2line		2287
.Llo69:
	lwz		r3,0(r29)		# instance=r29
	lbz		r3,0(r3)
	se_cmpi		r3,12
	bc		1,1,.L1054	# gt
#         {
#             /* instance validation failure (object deleted while event in flight) */
#         }
#         else
#         {
#             next_state = CanSM_NetworkType_StateEventMatrix[ instance->RAM->current_state ][ event_number ];
	.d2line		2293
.Llo74:
	lis		r3,CanSM_NetworkType_StateEventMatrix@ha
	e_add16i		r3,r3,CanSM_NetworkType_StateEventMatrix@l
	lwz		r4,0(r29)		# instance=r29
	lbz		r4,0(r4)
	e_mulli		r4,r4,44
	se_add		r3,r4
.Llo75:
	rlwinm		r0,r0,1,23,30		# event_number=r0 event_number=r0
.Llo76:
	lhzx		r30,r3,r0		# next_state=r30
.Llo87:
	mr		r30,r30		# next_state=r30 next_state=r30
#             if(next_state <= 12U)
	.d2line		2294
	rlwinm		r0,r30,0,16,31		# event_number=r0 next_state=r30
.Llo77:
	se_cmpli	r0,12		# event_number=r0
	bc		1,1,.L1058	# gt
#             {
#                 /* Execute the state action and update the current state.  */
#                 (*CanSM_NetworkType_acts[ next_state ])(HandleIndex);
	.d2line		2297
.Llo78:
	lis		r3,CanSM_NetworkType_acts@ha
	e_add16i		r3,r3,CanSM_NetworkType_acts@l
	rlwinm		r0,r30,2,14,29		# event_number=r0 next_state=r30
.Llo79:
	lwzx		r0,r3,r0		# event_number=r0
.Llo80:
	mtspr		ctr,r0		# event_number=ctr
	rlwinm		r3,r31,0,24,31		# HandleIndex=r31
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
#                 instance->RAM->current_state = (CANSM_Escher_StateNumber_t) next_state;
	.d2line		2298
.Llo70:
	lwz		r3,0(r29)		# instance=r29
	stb		r30,0(r3)		# next_state=r30
	b		.L1054
.L1058:
#             }
#             else if ( next_state == CANSM_EVENT_CANT_HAPPEN )
	.d2line		2300
.Llo71:
	rlwinm		r0,r30,0,16,31		# event_number=r0 next_state=r30
.Llo81:
	cmpi		0,0,r0,255		# event_number=r0
	bc		1,2,.L1054	# eq
#             {
#                 /* event cant happen */
#             }
#             else if ( next_state == CANSM_EVENT_IS_IGNORED )
	.d2line		2304
.Llo82:
	rlwinm		r0,r30,0,16,31		# event_number=r0 next_state=r30
.Llo83:
	cmpi		0,0,r0,254		# event_number=r0
	bc		1,2,.L1054	# eq
#             {
#                 /* event ignored */
#             }
#             else
#             {
#                 (*CanSM_NetworkType_xacts[(next_state>>8) - 1U])(HandleIndex);
	.d2line		2310
.Llo84:
	lis		r3,(CanSM_NetworkType_xacts-4)@ha
	e_add16i		r3,r3,(CanSM_NetworkType_xacts-4)@l
	rlwinm		r0,r30,26,22,29		# event_number=r0 next_state=r30
.Llo85:
	lwzx		r0,r3,r0		# event_number=r0
.Llo86:
	mtspr		ctr,r0		# event_number=ctr
	rlwinm		r3,r31,0,24,31		# HandleIndex=r31
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
#                 next_state = next_state & 0x00ffU;
	.d2line		2311
	rlwinm		r0,r30,0,24,31		# next_state=r0 next_state=r30
	mr		r0,r0		# next_state=r0 next_state=r0
#                 instance->RAM->current_state = (CANSM_Escher_StateNumber_t) next_state;
	.d2line		2312
	lwz		r3,0(r29)		# instance=r29
	stb		r30,0(r3)		# next_state=r30
#                 (*CanSM_NetworkType_acts[next_state])(HandleIndex);
	.d2line		2313
	lis		r3,CanSM_NetworkType_acts@ha
	e_add16i		r3,r3,CanSM_NetworkType_acts@l
	rlwinm		r0,r0,2,14,29		# next_state=r0 next_state=r0
	lwzx		r0,r3,r0		# next_state=r0
	mtspr		ctr,r0		# next_state=ctr
	rlwinm		r3,r31,0,24,31		# HandleIndex=r31
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L1054:
#             }
#         }
#     }
# }
	.d2line		2317
	.d2epilogue_begin
.Llo72:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# event_number=r0
	mtspr		lr,r0		# event_number=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1133:
	.type		CanSM_NetworkType_Dispatch,@function
	.size		CanSM_NetworkType_Dispatch,.-CanSM_NetworkType_Dispatch
# Number of nodes = 107

# Allocations for CanSM_NetworkType_Dispatch
#	?a4		HandleIndex
#	?a5		event_number
#	?a6		$$169
#	?a7		instance
#	?a8		next_state
# static FUNC(Std_ReturnType,CANSM_CODE) CanSM_ProcessStateMachine
	.align		1
	.section	.text_vle
        .d2line         616,40
#$$ld
.L1150:

#$$bf	CanSM_ProcessStateMachine,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_ProcessStateMachine:
.Llo88:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r24,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	24,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# HandleIndex=r31 HandleIndex=r3
	mr		r30,r4		# transition=r30 transition=r4
	mr		r5,r5		# StateIncluded=r5 StateIncluded=r5
	.d2prologue_end
# (
#     CONST(uint8,AUTOMATIC) HandleIndex,
#     VAR(uint8,AUTOMATIC) transition,
#     CONST(boolean,AUTOMATIC) StateIncluded
# )
# {
#     CONSTP2CONST(CanSM_NetworkType, AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		623
	rlwinm		r0,r31,0,24,31		# HandleIndex=r31
	lis		r3,CanSM_NetworkType_p@ha
.Llo89:
	lwz		r29,CanSM_NetworkType_p@l(r3)
	rlwinm		r3,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r3
	se_add		r0,r29
.Llo112:
	mr		r29,r0		# CanSM_NetworkType_ptr=r29 CanSM_NetworkType_ptr=r0
#     VAR(uint8, AUTOMATIC) CanSMRetVal;
# 
#     VAR(CanIf_NotifStatusType, AUTOMATIC) RetVal;
# 
#     VAR(boolean,AUTOMATIC) TransitionFound;
# 
#     P2CONST(CanSM_ControllerType ,AUTOMATIC,CANSM_APPL_CONST) controllers; /* controllers (ControllerType) */
#     VAR(uint8, AUTOMATIC) controllers_Size;
# 
#     P2CONST(CanSM_ControllerType,AUTOMATIC,CANSM_APPL_CONST) controller;
# 
#     VAR(uint8, AUTOMATIC) CanSM_ControllerTypeiter;
# 
#     CanSMRetVal = E_OK;
	.d2line		637
	diab.li		r28,0		# CanSMRetVal=r28
#     RetVal = CANIF_NO_NOTIFICATION;
	.d2line		638
.Llo113:
	diab.li		r24,0
#     TransitionFound = TRUE;
	.d2line		639
.Llo123:
	diab.li		r26,1		# TransitionFound=r26
#     if(StateIncluded == TRUE)
	.d2line		640
.Llo133:
	rlwinm		r5,r5,0,24,31		# StateIncluded=r5 StateIncluded=r5
	se_cmpi		r5,1		# StateIncluded=r5
	bc		0,2,.L667	# ne
#     {
#         if(transition != CANSM_NO_TRANSITION)
	.d2line		642
.Llo90:
	rlwinm		r4,r30,0,24,31		# transition=r30
.Llo108:
	se_cmpi		r4,0
	bc		1,2,.L668	# eq
#         {
#             if((transition == CANSM_PFC_TRCV_NOR_TO_PNC) ||
	.d2line		644
	rlwinm		r4,r30,0,24,31		# transition=r30
	cmpi		0,0,r4,37
	bc		1,2,.L805	# eq
	rlwinm		r4,r30,0,24,31		# transition=r30
	cmpi		0,0,r4,38
	bc		1,2,.L805	# eq
	rlwinm		r4,r30,0,24,31		# transition=r30
	se_cmpi		r4,6
	bc		1,2,.L805	# eq
	rlwinm		r4,r30,0,24,31		# transition=r30
	cmpi		0,0,r4,39
	bc		1,2,.L805	# eq
	rlwinm		r4,r30,0,24,31		# transition=r30
	cmpi		0,0,r4,40
	bc		1,2,.L805	# eq
	rlwinm		r4,r30,0,24,31		# transition=r30
	cmpi		0,0,r4,41
	bc		1,2,.L805	# eq
	rlwinm		r4,r30,0,24,31		# transition=r30
	cmpi		0,0,r4,42
	bc		0,2,.L669	# ne
.L805:
#                (transition == CANSM_PFC_CC_STOPPED_TO_PNC) ||
#                (transition == CANSM_PFC_CC_START_TO_PNC) ||
#                (transition == CANSM_FC_CC_RESTART_TO_PNC) ||
#                (transition == CANSM_CB_TO_PNC) ||
#                (transition == CANSM_TXTIMEOUT_TO_PNC) ||
#                (transition == CANSM_PNC_TRCV_STB_TO_PNC))
#             {
#                 CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT19NUM);
	.d2line		652
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,15
	bl		CanSM_NetworkType_Dispatch
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		653
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L670
.L669:
#             }
#             else if(transition == CANSM_NOIN_TO_NC)
	.d2line		655
	rlwinm		r4,r30,0,24,31		# transition=r30
	se_cmpi		r4,1
	bc		0,2,.L671	# ne
#             {
#                 CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT10NUM);
	.d2line		657
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,8
	bl		CanSM_NetworkType_Dispatch
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		658
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L670
.L671:
#             }
#             else if((transition == CANSM_PNC_TRCV_STB_TO_NOCO) || (transition == CANSM_PNC_PN_WF_CC_SLEEP_TO_NOCO))
	.d2line		660
	rlwinm		r4,r30,0,24,31		# transition=r30
	se_cmpi		r4,19
	bc		1,2,.L806	# eq
	rlwinm		r4,r30,0,24,31		# transition=r30
	se_cmpi		r4,30
	bc		0,2,.L673	# ne
.L806:
#             {
#                 CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT10NUM);
	.d2line		662
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,8
	bl		CanSM_NetworkType_Dispatch
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		663
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L670
.L673:
#             }
#             else if(transition == CANSM_PFC_CC_START_TO_FC_BO_CHECK)
	.d2line		665
	rlwinm		r4,r30,0,24,31		# transition=r30
	se_cmpi		r4,5
	bc		0,2,.L675	# ne
#             {
#                 CANSM_STOP_TIMER(CanSM_NetworkType_ptr->RAM->RetryTimerEnabled);
	.d2line		667
	diab.li		r0,0
	lwz		r3,0(r29)		# CanSM_NetworkType_ptr=r29
	stb		r0,10(r3)
#                 if(CanSM_NetworkType_ptr->RAM->CurrentStateNoCom_b == FALSE)
	.d2line		668
	lwz		r3,0(r29)		# CanSM_NetworkType_ptr=r29
	lbz		r0,22(r3)
	se_cmpi		r0,0
	bc		0,2,.L677	# ne
#                 {
#                     CanSM_NetworkType_ptr->RAM->current_state = (CANSM_Escher_StateNumber_t)CanSM_NetworkType_STATE_3;
	.d2line		670
	diab.li		r0,4
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,0(r3)		# HandleIndex=r3
#                     CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT3NUM);
	.d2line		671
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,1
	bl		CanSM_NetworkType_Dispatch
#                     CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		672
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L670
.L677:
#                 }
#                 else
#                 {
#                     CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT24NUM);
	.d2line		676
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,20
	bl		CanSM_NetworkType_Dispatch
#                     CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		677
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L670
.L675:
#                 }
#             }
#             else if((transition == CANSM_SICO_TO_PNC) || (transition == CANSM_CB_CC_START_TO_PNC))
	.d2line		680
	rlwinm		r4,r30,0,24,31		# transition=r30
	se_cmpi		r4,21
	bc		1,2,.L807	# eq
	rlwinm		r6,r30,0,24,31		# transition=r30
	se_cmpli	r6,23
	bc		1,1,.L1176	# gt
	bc		1,2,.L807	# eq
	se_cmpi		r6,10
	bc		1,2,.L680	# eq
	se_cmpi		r6,11
	bc		1,2,.L689	# eq
	se_cmpi		r6,20
	bc		1,2,.L692	# eq
	b		.L698
.L1176:
	se_cmpi		r6,24
	bc		1,2,.L684	# eq
	se_cmpi		r6,25
	bc		1,2,.L686	# eq
	cmpi		0,0,r6,44
	bc		1,2,.L695	# eq
	b		.L698
.L807:
#             {
#                 CANSM_STOP_TIMER(CanSM_NetworkType_ptr->RAM->RetryTimerEnabled);
	.d2line		682
	diab.li		r4,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r4,10(r3)		# HandleIndex=r3
#                 CanSM_NetworkType_Dispatch (HandleIndex, CANSM_NETWORKTYPEEVENT2NUM);
	.d2line		683
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	bl		CanSM_NetworkType_Dispatch
# 
#                 if((CanSM_NetworkType_ptr->RAM->RequestModeTransition != CANSM_PNC_TRCV_STB_TO_NOCO) && (CanSM_NetworkType_ptr->RAM->RequestModeTransition != CANSM_PNC_PN_WF_CC_SLEEP_TO_NOCO))
	.d2line		685
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lbz		r0,13(r3)		# HandleIndex=r3
	se_cmpi		r0,19
	bc		1,2,.L670	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lbz		r0,13(r3)		# HandleIndex=r3
	se_cmpi		r0,30
	bc		1,2,.L670	# eq
#                 {
#                     CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		687
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L670
.L680:
#                 }
#             }
#             else if(transition == CANSM_FC_BO_NOBO_TO_CB_CC_STOP)
#             {
#                 CanSMRetVal = (uint8)CanSM_EntryController(HandleIndex, CANIF_CS_STOPPED);
	.d2line		692
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,2
	bl		CanSM_EntryController
	mr		r28,r3		# CanSMRetVal=r28 CanSMRetVal=r3
#                 CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT5NUM);
	.d2line		693
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,3
	bl		CanSM_NetworkType_Dispatch
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		694
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L670
.L684:
#             }
#             else if(transition == CANSM_CB_CC_START_TO_FC_BO_CHECK)
#             {
#                 CANSM_STOP_TIMER(CanSM_NetworkType_ptr->RAM->RetryTimerEnabled);
	.d2line		698
	diab.li		r27,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r27,10(r3)		# HandleIndex=r3
#                 CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT6NUM);
	.d2line		699
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,4
	bl		CanSM_NetworkType_Dispatch
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		700
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r27,13(r3)		# HandleIndex=r3
	b		.L670
.L686:
#             }
#             else if(transition == CANSM_CB_CC_START_TO_SICO)
#             {
#                 CANSM_STOP_TIMER(CanSM_NetworkType_ptr->RAM->RetryTimerEnabled);
	.d2line		704
	diab.li		r27,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r27,10(r3)		# HandleIndex=r3
#                 CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT7NUM);
	.d2line		705
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,5
	bl		CanSM_NetworkType_Dispatch
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		706
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r27,13(r3)		# HandleIndex=r3
	b		.L670
.L689:
#             }
#             else if(transition == CANSM_FC_BO_NOBO_TO_SICO)
#             {
#                 CANSM_STOP_TIMER(CanSM_NetworkType_ptr->RAM->RetryTimerEnabled);
	.d2line		710
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,10(r3)		# HandleIndex=r3
#                 CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT8NUM);
	.d2line		711
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,6
	bl		CanSM_NetworkType_Dispatch
	b		.L670
.L692:
#             }
#             else if(transition == CANSM_SICO_TO_FC_BO_CHECK)
#             {
#                 CANSM_STOP_TIMER(CanSM_NetworkType_ptr->RAM->RetryTimerEnabled);
	.d2line		715
	diab.li		r27,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r27,10(r3)		# HandleIndex=r3
#                 CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT9NUM);
	.d2line		716
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,7
	bl		CanSM_NetworkType_Dispatch
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		717
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r27,13(r3)		# HandleIndex=r3
	b		.L670
.L695:
#             }
#             else if(transition == CANSM_NOCO_BOR_FAIL_T_REPEAT_MAX_TO_NOCO)
#             {
#                 /* <Requirements> ADD_CANSM900400 <EndRequirements> */
#                 CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT25NUM);
	.d2line		722
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,21
	bl		CanSM_NetworkType_Dispatch
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		723
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L670
.L698:
#             }
#             else
#             {
#                 TransitionFound = FALSE;
	.d2line		727
.Llo134:
	diab.li		r26,0		# TransitionFound=r26
.L670:
#             }
#             if((transition == CANSM_FC_BO_NOBO_TO_FC_CC_RSTRT) || (transition == CANSM_FC_BO_CHECK_TO_FC_CC_RSTRT))
	.d2line		729
.Llo135:
	rlwinm		r4,r30,0,24,31		# transition=r30
	se_cmpi		r4,9
	bc		1,2,.L808	# eq
	rlwinm		r4,r30,0,24,31		# transition=r30
	se_cmpi		r4,8
	bc		0,2,.L700	# ne
.L808:
#             {
#                 CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, CanSM_Cfg_p->RepetitionTime_u16);
	.d2line		731
	diab.li		r0,1
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,10(r3)		# HandleIndex=r3
	lis		r4,CanSM_Cfg_p@ha
	lwz		r3,CanSM_Cfg_p@l(r4)		# HandleIndex=r3
	lhz		r0,2(r3)		# HandleIndex=r3
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,8(r3)		# HandleIndex=r3
#                 CanSM_NetworkType_ptr->RAM->RetryCounter_u8 = CanSM_Cfg_p->RepetitionMax_u8;
	.d2line		732
	lwz		r3,CanSM_Cfg_p@l(r4)		# HandleIndex=r3
	lbz		r0,4(r3)		# HandleIndex=r3
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,14(r3)		# HandleIndex=r3
# 
#                 CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT12NUM);
	.d2line		734
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,10
	bl		CanSM_NetworkType_Dispatch
#                 CanSMRetVal = (uint8)CanSM_EntryController(HandleIndex, CANIF_CS_STARTED);
	.d2line		735
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,1
	bl		CanSM_EntryController
	mr		r28,r3		# CanSMRetVal=r28 CanSMRetVal=r3
# 
#                 if(CANSM_FC_CC_RSTRT_TO_FC_BO_TXOFF != CanSM_NetworkType_ptr->RAM->RequestModeTransition)
	.d2line		737
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lbz		r0,13(r3)		# HandleIndex=r3
	se_cmpi		r0,13
	bc		1,2,.L702	# eq
#                 {
#                     CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		739
.Llo136:
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
.L702:
#                 }
#                 TransitionFound = TRUE;
	.d2line		741
	diab.li		r26,1		# TransitionFound=r26
.Llo137:
	b		.L715
.L700:
#             }
#             else if(transition == CANSM_FC_CC_RSTRT_TO_FC_BO_TXOFF)
	.d2line		743
	rlwinm		r4,r30,0,24,31		# transition=r30
	se_cmpi		r4,13
	bc		0,2,.L704	# ne
#             {
#                 CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT13NUM);
	.d2line		745
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,11
	bl		CanSM_NetworkType_Dispatch
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		746
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
#                 TransitionFound = TRUE;
	.d2line		747
	diab.li		r26,1		# TransitionFound=r26
	b		.L715
.L704:
#             }
#             else if(transition == CANSM_FC_BO_TXOFF_TO_FC_BO_CHECK)
	.d2line		749
	rlwinm		r4,r30,0,24,31		# transition=r30
	se_cmpi		r4,14
	bc		0,2,.L706	# ne
#             {
#                 /* Execute state transition and E_TX_ON. */
#                 CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT14NUM);
	.d2line		752
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,12
	bl		CanSM_NetworkType_Dispatch
# 
#                 /* Check if there was a new bus-off during the bus-off recovery. */
#                 if (CanSM_NetworkType_ptr->RAM->BusOffDuringRecovery != FALSE)
	.d2line		755
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lbz		r0,39(r3)		# HandleIndex=r3
	se_cmpi		r0,0
	bc		1,2,.L707	# eq
#                 {
#                     /* Trigger a new bus-off recovery. */
#                     CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_FC_BO_CHECK_TO_FC_CC_RSTRT;
	.d2line		758
.Llo138:
	diab.li		r0,8
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
#                     CanSM_NetworkType_ptr->RAM->BusOffDuringRecovery = FALSE;
	.d2line		759
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,39(r3)		# HandleIndex=r3
	b		.L708
.L707:
#                 }
#                 else
#                 {
#                     CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		763
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
.L708:
#                 }
#                 TransitionFound = TRUE;
	.d2line		765
	diab.li		r26,1		# TransitionFound=r26
.Llo139:
	b		.L715
.L706:
#             }
#             else if(transition == CANSM_CB_CC_STOP_TO_CB_CC_START)
	.d2line		767
	rlwinm		r4,r30,0,24,31		# transition=r30
	se_cmpi		r4,22
	bc		0,2,.L710	# ne
#             {
#                 CanSMRetVal = (uint8)CanSM_EntryController(HandleIndex, CANIF_CS_STARTED);
	.d2line		769
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,1
	bl		CanSM_EntryController
	mr		r28,r3		# CanSMRetVal=r28 CanSMRetVal=r3
#                 CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_CB_CC_START;
	.d2line		770
	diab.li		r0,24
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# HandleIndex=r3
#                 CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT18NUM);
	.d2line		771
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,14
	bl		CanSM_NetworkType_Dispatch
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		772
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
#                 TransitionFound = TRUE;
	.d2line		773
	diab.li		r26,1		# TransitionFound=r26
	b		.L715
.L710:
#             }
#             else
#             {
#                 if(transition == CANSM_FC_BO_CHECK_TO_FC_BO_NOBO)
	.d2line		777
	rlwinm		r4,r30,0,24,31		# transition=r30
	se_cmpi		r4,7
	bc		0,2,.L715	# ne
#                 {
#                     CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT11NUM);
	.d2line		779
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,9
	bl		CanSM_NetworkType_Dispatch
#                     /* Check Buffered requested comm mode */
#                     if((CanSM_NetworkType_ptr->RAM->BufferedRequestMode == COMM_SILENT_COMMUNICATION) ||
	.d2line		781
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lbz		r0,25(r3)		# HandleIndex=r3
	se_cmpi		r0,1
	bc		1,2,.L809	# eq
.Llo140:
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lbz		r0,25(r3)		# HandleIndex=r3
	se_cmpi		r0,0
	bc		0,2,.L713	# ne
.L809:
#                             (CanSM_NetworkType_ptr->RAM->BufferedRequestMode == COMM_NO_COMMUNICATION))
#                     {
#                         CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_FC_BO_NOBO_TO_SICO;
	.d2line		784
	diab.li		r0,11
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L714
.L713:
#                     }
#                     else
#                     {
#                         CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		788
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
.L714:
#                     }
#                     TransitionFound = TRUE;
	.d2line		790
	diab.li		r26,1		# TransitionFound=r26
.Llo141:
	b		.L715
.L668:
#                 }
#             }
#         }
#         else
#         {
#             TransitionFound = FALSE;
	.d2line		796
	diab.li		r26,0		# TransitionFound=r26
.L715:
#         }
#         if(TransitionFound == FALSE)
	.d2line		798
	rlwinm		r26,r26,0,24,31		# TransitionFound=r26 TransitionFound=r26
	se_cmpi		r26,0		# TransitionFound=r26
	bc		0,2,.L730	# ne
#         {
#             if((CanSM_NetworkType_ptr->RAM->State == CANSM_ST_FC_CC_RSTRT) ||
	.d2line		800
.Llo142:
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,10
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,12
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,4
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,22
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,20
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,21
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,7
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,23
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,24
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,27
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,28
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,3
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,13
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,14
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,26
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,15
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,16
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,17
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,18
	bc		1,2,.L810	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,19
	bc		0,2,.L717	# ne
.L810:
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_FC_TX_OFF) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PRE_FULLCOM) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PFC_TRCV_NOR) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PFC_CC_STOP) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PFC_CC_START) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_CHANGE_BAUDRATE) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_CB_CC_STOP) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_CB_CC_START) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_TXTIMEOUT_CC_STOP) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_TXTIMEOUT_CC_START) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PRE_NOCOM ) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_CC_STOP) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_CC_SLEEP) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_CC_SLEEP_WAIT) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_TRCV_NOR) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_TRCV_STB) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_PN_CLR_WF) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_PN_WF_CC_SLEEP) ||
#                     (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_PN_WF_CC_NO_SLEEP))
#             {
#                 CanSM_NetworkType_Dispatch (HandleIndex, CANSM_NETWORKTYPEEVENT17NUM);
	.d2line		821
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,13
	bl		CanSM_NetworkType_Dispatch
#                 if(transition == CANSM_NO_TRANSITION)
	.d2line		822
	rlwinm		r4,r30,0,24,31		# transition=r30
	se_cmpi		r4,0
	bc		0,2,.L717	# ne
#                 {
#                     transition = CanSM_NetworkType_ptr->RAM->RequestModeTransition;
	.d2line		824
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lbz		r30,13(r3)		# transition=r30 HandleIndex=r3
	mr		r30,r30		# transition=r30 transition=r30
.L717:
#                 }
#             }
#             if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_FC_BO_CHECK)
	.d2line		827
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,9
	bc		0,2,.L719	# ne
#             {
#                 if(CanSM_NetworkType_ptr->CanSMBorTxConfirmationPolling == FALSE)
	.d2line		829
	lbz		r0,8(r29)		# CanSM_NetworkType_ptr=r29
	se_cmpi		r0,0
	bc		0,2,.L720	# ne
#                 {
#                     /* TODO: purpose: TX Ensured */
#                     if(CanSM_NetworkType_ptr->RAM->CanSMBorTimerTxEnsured_u16 > CanSM_NetworkType_ptr->CanSMBorTimeTxEnsured_u16)
	.d2line		832
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,6(r3)		# HandleIndex=r3
	lhz		r3,16(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	se_cmp		r0,r3		# HandleIndex=r3
	bc		0,1,.L730	# le
#                     {
#                         CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_FC_BO_CHECK_TO_FC_BO_NOBO;
	.d2line		834
.Llo124:
	diab.li		r0,7
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
#                         CanSMRetVal = E_NOT_OK;
	.d2line		835
	diab.li		r28,1		# CanSMRetVal=r28
	b		.L730
.L720:
#                     }
#                 }
#                 else
#                 {
#                     controllers = CanSM_NetworkType_ptr->ControllerType_R16;
	.d2line		840
.Llo125:
	lwz		r27,20(r29)		# CanSM_NetworkType_ptr=r29
.Llo143:
	mr		r27,r27		# controllers=r27 controllers=r27
#                     controllers_Size = CanSM_NetworkType_ptr->ControllerType_R16_Size;
	.d2line		841
	lbz		r26,9(r29)		# TransitionFound=r26 CanSM_NetworkType_ptr=r29
.Llo146:
	mr		r26,r26		# controllers_Size=r26 controllers_Size=r26
#                     CanSM_ControllerTypeiter = 0;
	.d2line		842
	diab.li		r25,0		# CanSM_ControllerTypeiter=r25
.L723:
#                     while(CanSM_ControllerTypeiter < controllers_Size )
	.d2line		843
.Llo157:
	rlwinm		r0,r25,0,24,31		# CanSM_ControllerTypeiter=r25
	rlwinm		r3,r26,0,24,31		# HandleIndex=r3 controllers_Size=r26
	se_cmp		r0,r3		# HandleIndex=r3
	bc		0,0,.L726	# ge
#                     {
#                         controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		845
	rlwinm		r3,r25,3,21,28		# HandleIndex=r3 CanSM_ControllerTypeiter=r25
	se_add		r3,r27		# HandleIndex=r3 HandleIndex=r3 controllers=r27
.Llo148:
	mr		r3,r3		# controller=r3 controller=r3
#                         RetVal = CanIf_GetTxConfirmationState( controller->ControllerId_pu8);
	.d2line		846
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo149:
	bl		CanIf_GetTxConfirmationState
	mr		r24,r3		# RetVal=r24 RetVal=r3
#                         if(CANIF_TX_RX_NOTIFICATION != RetVal)
	.d2line		847
	se_cmpi		r24,1		# RetVal=r24
	bc		0,2,.L726	# ne
#                         {
#                             break;
#                         }
#                         CanSM_ControllerTypeiter++;
	.d2line		851
	diab.addi		r0,r25,1		# CanSM_ControllerTypeiter=r25
	se_addi		r25,1		# CanSM_ControllerTypeiter=r25 CanSM_ControllerTypeiter=r25
	b		.L723
.L726:
# 
#                     }
#                     if(CANIF_TX_RX_NOTIFICATION == RetVal)
	.d2line		854
	se_cmpi		r24,1		# RetVal=r24
	bc		0,2,.L730	# ne
#                     {
#                         CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_FC_BO_CHECK_TO_FC_BO_NOBO;
	.d2line		856
.Llo126:
	diab.li		r0,7
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
#                         CanSMRetVal = E_NOT_OK;
	.d2line		857
	diab.li		r28,1		# CanSMRetVal=r28
	b		.L730
.L719:
#                     }
#                 }
#             }
#             else
#             {
#                 if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_REPEAT_MAX_WAIT)
	.d2line		863
.Llo127:
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,25
	bc		0,2,.L730	# ne
#                 {
#                     CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT2NUM);
	.d2line		865
.Llo128:
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,0
	bl		CanSM_NetworkType_Dispatch
#                     CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		866
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L730
.L667:
#                 }
#             }
#         }
#     }
#     else
#     {
#         CanSM_NetworkType_ptr->RAM->RequestModeTransition = transition;
	.d2line		873
.Llo129:
	lwz		r3,0(r29)		# CanSM_NetworkType_ptr=r29
	stb		r30,13(r3)		# transition=r30
#         if(transition == CANSM_TXTIMEOUT_CC_START_TO_PNC)
	.d2line		874
	rlwinm		r4,r30,0,24,31		# transition=r30
	cmpi		0,0,r4,33
	bc		0,2,.L731	# ne
#         {
#             CANSM_STOP_TIMER(CanSM_NetworkType_ptr->RAM->RetryTimerEnabled);
	.d2line		876
.Llo130:
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,10(r3)		# HandleIndex=r3
#             CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT21NUM);
	.d2line		877
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,17
	bl		CanSM_NetworkType_Dispatch
	b		.L730
.L731:
#         }
#         else if(transition == CANSM_TXTIMEOUT_CC_START_TO_FC_BO_CHECK)
	.d2line		879
	rlwinm		r4,r30,0,24,31		# transition=r30
	cmpi		0,0,r4,34
	bc		0,2,.L734	# ne
#         {
#             CANSM_STOP_TIMER(CanSM_NetworkType_ptr->RAM->RetryTimerEnabled);
	.d2line		881
	diab.li		r25,0
.Llo158:
	lwz		r3,0(r29)		# CanSM_NetworkType_ptr=r29
	stb		r25,10(r3)
# 
#             /* BZ22900: Put controllers to CANIF_ONLINE */
#             controllers = CanSM_NetworkType_ptr->ControllerType_R16;
	.d2line		884
	lwz		r27,20(r29)		# CanSM_NetworkType_ptr=r29
.Llo144:
	mr		r27,r27		# controllers=r27 controllers=r27
#             controllers_Size = CanSM_NetworkType_ptr->ControllerType_R16_Size;
	.d2line		885
	lbz		r26,9(r29)		# TransitionFound=r26 CanSM_NetworkType_ptr=r29
.Llo147:
	mr		r26,r26		# controllers_Size=r26 controllers_Size=r26
#             CanSM_ControllerTypeiter = 0;
.L736:
#             while(CanSM_ControllerTypeiter < controllers_Size)
	.d2line		887
	rlwinm		r0,r25,0,24,31		# CanSM_ControllerTypeiter=r25
	rlwinm		r3,r26,0,24,31		# controller=r3 controllers_Size=r26
.Llo150:
	se_cmp		r0,r3		# controller=r3
	bc		0,0,.L737	# ge
#             {
#                 controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		889
.Llo151:
	rlwinm		r3,r25,3,21,28		# controller=r3 CanSM_ControllerTypeiter=r25
.Llo152:
	se_add		r3,r27		# controller=r3 controller=r3 controllers=r27
	mr		r3,r3		# controller=r3 controller=r3
#                 (void)CanIf_SetPduMode(controller->ControllerId_pu8, CANIF_ONLINE);
	.d2line		890
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo153:
	diab.li		r4,3
	bl		CanIf_SetPduMode
#                 CanSM_ControllerTypeiter++;
	.d2line		891
	diab.addi		r0,r25,1		# CanSM_ControllerTypeiter=r25
	se_addi		r25,1		# CanSM_ControllerTypeiter=r25 CanSM_ControllerTypeiter=r25
	b		.L736
.L737:
#             }
# 
#             if(CanSM_NetworkType_ptr->RAM->TxTimeoutstate_b == TRUE)
	.d2line		894
	lwz		r3,0(r29)		# controller=r3 CanSM_NetworkType_ptr=r29
.Llo154:
	lbz		r0,23(r3)		# controller=r3
	se_cmpi		r0,1
	bc		0,2,.L738	# ne
#             {
#                 CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT4NUM);
	.d2line		896
.Llo145:
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,2
	bl		CanSM_NetworkType_Dispatch
	b		.L730
.L738:
#             }
#             else
#             {
#                 CanSM_NetworkType_ptr->RAM->TxTimeoutstate_b = FALSE;
	.d2line		900
	diab.li		r0,0
	lwz		r3,0(r29)		# controller=r3 CanSM_NetworkType_ptr=r29
.Llo155:
	stb		r0,23(r3)		# controller=r3
#                 CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_FC_BO_CHECK;
	.d2line		901
	diab.li		r0,9
	lwz		r3,0(r29)		# controller=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# controller=r3
	b		.L730
.L734:
#             }
#         }
#         else
#         {
#             if(transition == CANSM_TXTIMEOUT_CC_START_TO_SICO)
	.d2line		906
.Llo156:
	rlwinm		r4,r30,0,24,31		# transition=r30
	cmpi		0,0,r4,35
	bc		0,2,.L730	# ne
#             {
#                 CANSM_STOP_TIMER(CanSM_NetworkType_ptr->RAM->RetryTimerEnabled);
	.d2line		908
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,10(r3)		# HandleIndex=r3
#                 CanSM_NetworkType_Dispatch (HandleIndex, CANSM_NETWORKTYPEEVENT22NUM);
	.d2line		909
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,18
	bl		CanSM_NetworkType_Dispatch
.L730:
#             }
#         }
#     }
#     if(transition == CANSM_NOCO_TO_PFC_TRCV_NOR)
	.d2line		913
.Llo131:
	rlwinm		r6,r30,0,24,31		# transition=r30
	se_cmpli	r6,29
	se_slwi		r6,2
	e_add2is		r6,.L1177@ha
	bc		1,1,.L754	# gt
.Llo132:
	lwz		r7,.L1177@l(r6)
	mtspr		ctr,r7
	bcctr		20,0
.L1177:
#$$sl
	.long		.L754
	.long		.L754
	.long		.L817
	.long		.L743
	.long		.L755
	.long		.L754
	.long		.L754
	.long		.L754
	.long		.L754
	.long		.L754
	.long		.L754
	.long		.L754
	.long		.L754
	.long		.L754
	.long		.L754
	.long		.L754
	.long		.L761
	.long		.L766
	.long		.L769
	.long		.L754
	.long		.L754
	.long		.L754
	.long		.L754
	.long		.L754
	.long		.L754
	.long		.L754
	.long		.L776
	.long		.L779
	.long		.L754
	.long		.L773
#$$se
.L817:
#     {
#         /* <Requirements> ADD_CANSM900400 <EndRequirements> */
#         CanSM_NetworkType_ptr->RAM->BorFailTRepeatMax = FALSE;
	.d2line		916
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,40(r3)		# HandleIndex=r3
#         if(CanSM_NetworkType_ptr->CanSMTransceiverId_u8 != 255)
	.d2line		917
	lbz		r0,6(r29)		# CanSM_NetworkType_ptr=r29
	cmpi		0,0,r0,255
	bc		1,2,.L744	# eq
#         {
#             CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PFC_TRCV_NOR;
	.d2line		919
.Llo114:
	diab.li		r0,22
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# HandleIndex=r3
# #if (CANSM_TRCV_SUPPORT == STD_ON)
#             CanSMRetVal = (uint8)CanSM_EntryTrcv(HandleIndex, CANTRCV_TRCVMODE_NORMAL);
	.d2line		921
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,0
	bl		CanSM_EntryTrcv
.Llo115:
	mr		r28,r3		# CanSMRetVal=r28 CanSMRetVal=r3
# #endif
#             if(CanSMRetVal == E_OK)
	.d2line		923
	rlwinm		r3,r3,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r3
	se_cmpi		r3,0		# CanSMRetVal=r3
	bc		0,2,.L745	# ne
#             {
#                 if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PFC_CC_START)
	.d2line		925
.Llo116:
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
.Llo117:
	lhz		r0,2(r3)		# CanSMRetVal=r3
	se_cmpi		r0,21
	bc		0,2,.L746	# ne
#                 {
#                     CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT24NUM);
	.d2line		927
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,20
	bl		CanSM_NetworkType_Dispatch
#                     CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		928
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L754
.L746:
#                 }
#                 else
#                 {
#                     CanSM_NetworkType_Dispatch (HandleIndex, CANSM_NETWORKTYPEEVENT23NUM);
	.d2line		932
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,19
	bl		CanSM_NetworkType_Dispatch
#                     CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		933
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L754
.L745:
#                 }
#             }
#             else
#             {
#                 CanSM_NetworkType_Dispatch(HandleIndex, CANSM_NETWORKTYPEEVENT23NUM);
	.d2line		938
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,19
	bl		CanSM_NetworkType_Dispatch
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		939
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L754
.L744:
#             }
#         }
#         else
#         {
#             CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PFC_CC_STOP;
	.d2line		944
.Llo118:
	diab.li		r0,20
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# HandleIndex=r3
#             CanSMRetVal = (uint8)CanSM_EntryController(HandleIndex, CANIF_CS_STOPPED);
	.d2line		945
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,2
	bl		CanSM_EntryController
.Llo119:
	mr		r28,r3		# CanSMRetVal=r28 CanSMRetVal=r3
#             if(CanSMRetVal == E_OK)
	.d2line		946
	rlwinm		r3,r3,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r3
	se_cmpi		r3,0		# CanSMRetVal=r3
	bc		0,2,.L750	# ne
#             {
#                 if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PFC_CC_START)
	.d2line		948
.Llo120:
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
.Llo121:
	lhz		r0,2(r3)		# CanSMRetVal=r3
	se_cmpi		r0,21
	bc		0,2,.L751	# ne
#                 {
#                     CanSM_NetworkType_Dispatch (HandleIndex, CANSM_NETWORKTYPEEVENT24NUM);
	.d2line		950
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,20
	bl		CanSM_NetworkType_Dispatch
#                     CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		951
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L754
.L751:
#                 }
#                 else
#                 {
#                     CanSM_NetworkType_Dispatch (HandleIndex, CANSM_NETWORKTYPEEVENT23NUM);
	.d2line		955
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,19
	bl		CanSM_NetworkType_Dispatch
#                     CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		956
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L754
.L750:
#                 }
#             }
#             else
#             {
#                 CanSM_NetworkType_Dispatch (HandleIndex, CANSM_NETWORKTYPEEVENT23NUM);
	.d2line		961
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,19
	bl		CanSM_NetworkType_Dispatch
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		962
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L754
.L743:
#             }
#         }
#     }
#     else if(transition == CANSM_PFC_TRCV_NOR_TO_PFC_CC_STOP)
#     {
#         CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PFC_CC_STOP;
	.d2line		968
	diab.li		r0,20
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# HandleIndex=r3
#         CanSMRetVal = (uint8)CanSM_EntryController(HandleIndex, CANIF_CS_STOPPED);
	.d2line		969
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,2
	bl		CanSM_EntryController
	mr		r28,r3		# CanSMRetVal=r28 CanSMRetVal=r3
#         if(CanSMRetVal == E_OK)
	.d2line		970
	rlwinm		r3,r3,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r3
	se_cmpi		r3,0		# CanSMRetVal=r3
	bc		0,2,.L756	# ne
#         {
#             if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PFC_CC_START)
	.d2line		972
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# CanSMRetVal=r3
	se_cmpi		r0,21
	bc		0,2,.L757	# ne
#             {
#                 CanSM_NetworkType_Dispatch (HandleIndex, CANSM_NETWORKTYPEEVENT3NUM);
	.d2line		974
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,1
	bl		CanSM_NetworkType_Dispatch
.L757:
#             }
#             if(CanSM_NetworkType_ptr->RAM->RequestModeTransition != CANSM_PFC_CC_START_TO_FC_BO_CHECK)
	.d2line		976
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	lbz		r0,13(r3)		# CanSMRetVal=r3
	se_cmpi		r0,5
	bc		1,2,.L754	# eq
#             {
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		978
	diab.li		r0,0
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# CanSMRetVal=r3
	b		.L754
.L756:
#             }
#         }
#         else
#         {
#             CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		983
	diab.li		r0,0
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# CanSMRetVal=r3
	b		.L754
.L755:
#         }
#     }
#     else if(transition == CANSM_PFC_CC_STOP_TO_PFC_CC_START)
#     {
#         CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PFC_CC_START;
	.d2line		988
	diab.li		r0,21
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# HandleIndex=r3
#         CanSMRetVal = (uint8)CanSM_EntryController(HandleIndex, CANIF_CS_STARTED);
	.d2line		989
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,1
	bl		CanSM_EntryController
	mr		r28,r3		# CanSMRetVal=r28 CanSMRetVal=r3
#         if(CanSMRetVal == E_OK)
	.d2line		990
	rlwinm		r3,r3,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r3
	se_cmpi		r3,0		# CanSMRetVal=r3
	bc		0,2,.L762	# ne
#         {
#             if(CanSM_NetworkType_ptr->RAM->RequestModeTransition != CANSM_PFC_CC_START_TO_FC_BO_CHECK)
	.d2line		992
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	lbz		r0,13(r3)		# CanSMRetVal=r3
	se_cmpi		r0,5
	bc		1,2,.L754	# eq
#             {
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		994
	diab.li		r0,0
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# CanSMRetVal=r3
	b		.L754
.L762:
#             }
#         }
#         else
#         {
#             CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		999
	diab.li		r0,0
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# CanSMRetVal=r3
	b		.L754
.L761:
#         }
#     }
#     else if(transition == CANSM_PNC_CC_STOP_TO_PNC_CC_SLEEP)
#     {
#         CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PNC_CC_SLEEP;
	.d2line		1004
	diab.li		r0,14
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# HandleIndex=r3
#         CanSMRetVal = (uint8)CanSM_EntryController(HandleIndex, CANIF_CS_SLEEP);
	.d2line		1005
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,0
	bl		CanSM_EntryController
	mr		r28,r3		# CanSMRetVal=r28 CanSMRetVal=r3
#         if((CanSMRetVal != E_OK) ||
	.d2line		1006
	rlwinm		r3,r3,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r3
	se_cmpi		r3,0		# CanSMRetVal=r3
	bc		0,2,.L811	# ne
	rlwinm		r3,r28,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r28
	se_cmpi		r3,0		# CanSMRetVal=r3
	bc		0,2,.L754	# ne
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	lbz		r0,13(r3)		# CanSMRetVal=r3
	se_cmpi		r0,19
	bc		1,2,.L754	# eq
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	lbz		r0,13(r3)		# CanSMRetVal=r3
	se_cmpi		r0,30
	bc		1,2,.L754	# eq
.L811:
#            ((CanSMRetVal == E_OK) &&
#            ((CanSM_NetworkType_ptr->RAM->RequestModeTransition != CANSM_PNC_TRCV_STB_TO_NOCO) && (CanSM_NetworkType_ptr->RAM->RequestModeTransition != CANSM_PNC_PN_WF_CC_SLEEP_TO_NOCO))))
#         {
#             CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		1010
	diab.li		r0,0
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# CanSMRetVal=r3
	b		.L754
.L766:
#         }
#     }
#     else if(transition == CANSM_PNC_CC_SLEEP_TO_PNC_TRCV_NOR)
#     {
#         if(CanSM_NetworkType_ptr->CanSMTransceiverId_u8 != 255)
	.d2line		1015
	lbz		r0,6(r29)		# CanSM_NetworkType_ptr=r29
	cmpi		0,0,r0,255
	bc		1,2,.L770	# eq
#         {
#             CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PNC_TRCV_NOR;
	.d2line		1017
	diab.li		r0,15
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# HandleIndex=r3
# #if (CANSM_TRCV_SUPPORT == STD_ON)
#             CanSMRetVal = (uint8)CanSM_EntryTrcv(HandleIndex, CANTRCV_TRCVMODE_NORMAL);
	.d2line		1019
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,0
	bl		CanSM_EntryTrcv
	mr		r28,r3		# CanSMRetVal=r28 CanSMRetVal=r3
# #endif
#             CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		1021
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L754
.L770:
#         }
#         else
#         {
#             CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_PNC_TRCV_STB_TO_NOCO;
	.d2line		1025
	diab.li		r0,19
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
#             CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_NOCOM;
	.d2line		1026
	diab.li		r0,2
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# HandleIndex=r3
	b		.L754
.L769:
#         }
#     }
#     else if(transition == CANSM_PNC_TRCV_NOR_TO_PNC_TRCV_STB)
#     {
#         CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PNC_TRCV_STB;
	.d2line		1031
	diab.li		r0,16
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# HandleIndex=r3
# #if (CANSM_TRCV_SUPPORT == STD_ON)
#         CanSMRetVal = (uint8)CanSM_EntryTrcv(HandleIndex, CANTRCV_TRCVMODE_STANDBY);
	.d2line		1033
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,2
	bl		CanSM_EntryTrcv
	mr		r28,r3		# CanSMRetVal=r28 CanSMRetVal=r3
# #endif
#         if((CanSMRetVal != E_OK) ||
	.d2line		1035
	rlwinm		r3,r3,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r3
	se_cmpi		r3,0		# CanSMRetVal=r3
	bc		0,2,.L812	# ne
	rlwinm		r3,r28,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r28
	se_cmpi		r3,0		# CanSMRetVal=r3
	bc		0,2,.L754	# ne
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	lbz		r0,13(r3)		# CanSMRetVal=r3
	se_cmpi		r0,30
	bc		1,2,.L754	# eq
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	lbz		r0,13(r3)		# CanSMRetVal=r3
	se_cmpi		r0,19
	bc		1,2,.L754	# eq
.L812:
#            ((CanSMRetVal == E_OK) &&
#             ((CanSM_NetworkType_ptr->RAM->RequestModeTransition != CANSM_PNC_PN_WF_CC_SLEEP_TO_NOCO) && (CanSM_NetworkType_ptr->RAM->RequestModeTransition != CANSM_PNC_TRCV_STB_TO_NOCO))))
#         {
#             CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		1039
	diab.li		r0,0
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# CanSMRetVal=r3
	b		.L754
.L773:
#         }
#     }
#     else if(transition == CANSM_PNC_PN_CLR_WF_TO_PNC_CC_STOP)
#     {
#         CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PNC_CC_STOP;
	.d2line		1044
	diab.li		r0,13
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# HandleIndex=r3
#         CanSMRetVal = (uint8)CanSM_EntryController(HandleIndex, CANIF_CS_STOPPED);
	.d2line		1045
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,2
	bl		CanSM_EntryController
	mr		r28,r3		# CanSMRetVal=r28 CanSMRetVal=r3
#         if((CanSMRetVal != E_OK) ||
	.d2line		1046
	rlwinm		r3,r3,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r3
	se_cmpi		r3,0		# CanSMRetVal=r3
	bc		0,2,.L813	# ne
	rlwinm		r3,r28,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r28
	se_cmpi		r3,0		# CanSMRetVal=r3
	bc		0,2,.L754	# ne
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	lbz		r0,13(r3)		# CanSMRetVal=r3
	se_cmpi		r0,30
	bc		1,2,.L754	# eq
.L813:
#            ((CanSMRetVal == E_OK) && (CanSM_NetworkType_ptr->RAM->RequestModeTransition != CANSM_PNC_PN_WF_CC_SLEEP_TO_NOCO)))
#         {
#             CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		1049
	diab.li		r0,0
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# CanSMRetVal=r3
	b		.L754
.L776:
#         }
#     }
#     else if(transition == CANSM_PNC_CC_STOP_TO_PNC_TRCV_NOR)
#     {
#         /*
#          * This transition can occur only if CanSMPartialNetworkSupport = TRUE,
#          * so the CanSMTransceiverId_u8 can't be 0x255, don't have to be checked.
#          */
#         CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PNC_TRCV_NOR;
	.d2line		1058
	diab.li		r0,15
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# HandleIndex=r3
# #if (CANSM_TRCV_SUPPORT == STD_ON)
#         CanSMRetVal = (uint8)CanSM_EntryTrcv(HandleIndex, CANTRCV_TRCVMODE_NORMAL);
	.d2line		1060
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,0
	bl		CanSM_EntryTrcv
	mr		r28,r3		# CanSMRetVal=r28 CanSMRetVal=r3
# #endif
#         if((CanSMRetVal != E_OK) ||
	.d2line		1062
	rlwinm		r3,r3,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r3
	se_cmpi		r3,0		# CanSMRetVal=r3
	bc		0,2,.L814	# ne
	rlwinm		r3,r28,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r28
	se_cmpi		r3,0		# CanSMRetVal=r3
	bc		0,2,.L754	# ne
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	lbz		r0,13(r3)		# CanSMRetVal=r3
	se_cmpi		r0,30
	bc		1,2,.L754	# eq
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	lbz		r0,13(r3)		# CanSMRetVal=r3
	se_cmpi		r0,19
	bc		1,2,.L754	# eq
.L814:
#           ((CanSMRetVal == E_OK) &&
#           ((CanSM_NetworkType_ptr->RAM->RequestModeTransition != CANSM_PNC_PN_WF_CC_SLEEP_TO_NOCO ) && (CanSM_NetworkType_ptr->RAM->RequestModeTransition != CANSM_PNC_TRCV_STB_TO_NOCO))))
#         {
#             CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		1066
	diab.li		r0,0
	lwz		r3,0(r29)		# CanSMRetVal=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# CanSMRetVal=r3
	b		.L754
.L779:
#         }
#     }
#     else
#     {
#         if(transition == CANSM_PNC_CC_SLEEP_TO_PN_WF_CC_SLEEP)
#         {
#             CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PNC_PN_WF_CC_SLEEP;
	.d2line		1073
	diab.li		r0,18
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# HandleIndex=r3
# #if (CANSM_PN_SUPPORT == STD_ON)
#             CanSMRetVal = (uint8)CanIf_CheckTrcvWakeFlag(CanSM_NetworkType_ptr->CanSMTransceiverId_u8);
# #endif
#             if(CanSMRetVal != E_OK)
	.d2line		1077
	rlwinm		r3,r28,0,24,31		# HandleIndex=r3 CanSMRetVal=r28
	se_cmpi		r3,0		# HandleIndex=r3
	bc		1,2,.L783	# eq
#             {
#                 CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, 1);
	.d2line		1079
	diab.li		r0,1
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,10(r3)		# HandleIndex=r3
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,8(r3)		# HandleIndex=r3
#                 CanSM_NetworkType_ptr->RAM->RetryCounter_u8 = CanSM_Cfg_p->RepetitionMax_u8;
	.d2line		1080
	lis		r3,CanSM_Cfg_p@ha		# HandleIndex=r3
	lwz		r3,CanSM_Cfg_p@l(r3)		# HandleIndex=r3 HandleIndex=r3
	lbz		r0,4(r3)		# HandleIndex=r3
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,14(r3)		# HandleIndex=r3
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		1081
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L754
.L783:
#             }
#             else if((CanSM_NetworkType_ptr->RAM->RequestModeTransition != CANSM_PNC_PN_WF_CC_SLEEP_TO_NOCO) && (CanSM_NetworkType_ptr->RAM->RequestModeTransition != CANSM_PNC_TRCV_STB_TO_NOCO))
	.d2line		1083
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lbz		r0,13(r3)		# HandleIndex=r3
	se_cmpi		r0,30
	bc		1,2,.L754	# eq
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lbz		r0,13(r3)		# HandleIndex=r3
	se_cmpi		r0,19
	bc		1,2,.L754	# eq
#             {
#                 /*
#                  * Bug fix BZ#16184 (CANSM_BSM_DeinitPnSupported/S_CHECK_WFLAG_IN_CC_SLEEP state is skipped) is removed.
#                  * This fix is reverted because of BZ#17696 (S_CHECK_WFLAG_IN_CC_SLEEP state shall be skipped).
#                  */
#                 /* <Requirements> ADD_CANSM900200 <EndRequirements> */
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_PNC_PN_WF_CC_SLEEP_TO_NOCO;
	.d2line		1090
	diab.li		r0,30
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
.L754:
#             }
#             else
#             {
#                 /* concluding empty else */
#             }
#         }
#     }
#     if(transition == CANSM_PNC_CC_SLEEP_TO_PN_WF_CC_NO_SLEEP)
	.d2line		1098
	rlwinm		r4,r30,0,24,31		# transition=r30
	cmpi		0,0,r4,36
	bc		0,2,.L788	# ne
#     {
#         CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PNC_PN_WF_CC_NO_SLEEP;
	.d2line		1100
	diab.li		r0,19
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# HandleIndex=r3
# #if (CANSM_PN_SUPPORT == STD_ON)
#         CanSMRetVal = (uint8)CanIf_CheckTrcvWakeFlag(CanSM_NetworkType_ptr->CanSMTransceiverId_u8);
# #endif
#         CanSM_NetworkType_ptr->RAM->RetryCounter_u8 = CanSM_Cfg_p->RepetitionMax_u8;
	.d2line		1104
	lis		r3,CanSM_Cfg_p@ha		# HandleIndex=r3
	lwz		r3,CanSM_Cfg_p@l(r3)		# HandleIndex=r3 HandleIndex=r3
	lbz		r0,4(r3)		# HandleIndex=r3
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,14(r3)		# HandleIndex=r3
#         CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		1105
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
#         if(CanSMRetVal == E_OK)
	.d2line		1106
	rlwinm		r3,r28,0,24,31		# HandleIndex=r3 CanSMRetVal=r28
	se_cmpi		r3,0		# HandleIndex=r3
	bc		0,2,.L789	# ne
#         {
#             CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, CanSM_Cfg_p->RepetitionTime_u16);
	.d2line		1108
.Llo91:
	diab.li		r0,1
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
.Llo92:
	stb		r0,10(r3)		# HandleIndex=r3
	lis		r3,CanSM_Cfg_p@ha		# HandleIndex=r3
	lwz		r3,CanSM_Cfg_p@l(r3)		# HandleIndex=r3 HandleIndex=r3
	lhz		r0,2(r3)		# HandleIndex=r3
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,8(r3)		# HandleIndex=r3
	b		.L793
.L789:
#         }
#         else
#         {
#             CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, 1);
	.d2line		1112
.Llo93:
	diab.li		r0,1
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
.Llo94:
	stb		r0,10(r3)		# HandleIndex=r3
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,8(r3)		# HandleIndex=r3
	b		.L793
.L788:
#         }
#     }
#     else if((transition == CANSM_PNC_PN_WF_CC_NO_SLEEP_TO_CANSM_ST_PNC_PN_CLR_WF) ||
	.d2line		1115
.Llo95:
	rlwinm		r4,r30,0,24,31		# transition=r30
.Llo96:
	se_cmpi		r4,31
	bc		1,2,.L815	# eq
	rlwinm		r4,r30,0,24,31		# transition=r30
	cmpi		0,0,r4,43
	bc		0,2,.L794	# ne
.L815:
#             (transition == CANSM_TXTIMEOUT_TO_PNC_PN_CLR_WF))
#     {
#         /*
#          * This transition can occur only if CanSMPartialNetworkSupport = TRUE,
#          * so the CanSMTransceiverId_u8 can't be 0x255, don't have to be checked.
#          */
# 
#         CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PNC_PN_CLR_WF;
	.d2line		1123
	diab.li		r0,17
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# HandleIndex=r3
# #if (CANSM_PN_SUPPORT == STD_ON)
#         CanSMRetVal = (uint8)CanIf_ClearTrcvWufFlag(CanSM_NetworkType_ptr->CanSMTransceiverId_u8);
#         if(CanSMRetVal != E_OK)
#         {
#             CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, 1);/* 1 !!! intended to cause timeout in next main function !!! */
#             CanSM_NetworkType_ptr->RAM->RetryCounter_u8 = CanSM_Cfg_p->RepetitionMax_u8;
#             CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
#         }
# #endif
#         if((CanSMRetVal == E_OK) && (CanSM_NetworkType_ptr->RAM->RequestModeTransition != CANSM_PNC_PN_WF_CC_SLEEP_TO_NOCO))
	.d2line		1133
	rlwinm		r3,r28,0,24,31		# HandleIndex=r3 CanSMRetVal=r28
	se_cmpi		r3,0		# HandleIndex=r3
	bc		0,2,.L793	# ne
.Llo97:
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
.Llo98:
	lbz		r0,13(r3)		# HandleIndex=r3
	se_cmpi		r0,30
	bc		1,2,.L793	# eq
#         {
#             CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, CanSM_Cfg_p->RepetitionTime_u16);
	.d2line		1135
.Llo99:
	diab.li		r0,1
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
.Llo100:
	stb		r0,10(r3)		# HandleIndex=r3
	lis		r4,CanSM_Cfg_p@ha
	lwz		r3,CanSM_Cfg_p@l(r4)		# HandleIndex=r3
	lhz		r0,2(r3)		# HandleIndex=r3
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,8(r3)		# HandleIndex=r3
#             CanSM_NetworkType_ptr->RAM->RetryCounter_u8 = CanSM_Cfg_p->RepetitionMax_u8;
	.d2line		1136
	lwz		r3,CanSM_Cfg_p@l(r4)		# HandleIndex=r3
	lbz		r0,4(r3)		# HandleIndex=r3
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,14(r3)		# HandleIndex=r3
#             CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		1137
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L793
.L794:
#         }
#     }
#     else if(transition == CANSM_PNC_TRCV_STB_TO_PNC_CC_SLEEP)
	.d2line		1140
.Llo101:
	rlwinm		r4,r30,0,24,31		# transition=r30
.Llo102:
	se_cmpi		r4,28
	bc		0,2,.L798	# ne
#     {
#         CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PNC_CC_SLEEP_WAIT;
	.d2line		1142
	diab.li		r0,26
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# HandleIndex=r3
#         CanSMRetVal = (uint8)CanSM_EntryController(HandleIndex, CANIF_CS_SLEEP);
	.d2line		1143
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,0
	bl		CanSM_EntryController
	mr		r28,r3		# CanSMRetVal=r28 CanSMRetVal=r3
#         CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		1144
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
#         if(CanSMRetVal != E_OK)
	.d2line		1145
	rlwinm		r3,r28,0,24,31		# HandleIndex=r3 CanSMRetVal=r28
	se_cmpi		r3,0		# HandleIndex=r3
	bc		1,2,.L793	# eq
#         {
#             CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PNC_CC_SLEEP;
	.d2line		1147
.Llo103:
	diab.li		r0,14
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
.Llo104:
	sth		r0,2(r3)		# HandleIndex=r3
	b		.L793
.L798:
#         }
#     }
#     else
#     {
#         if(transition == CANSM_FC_BO_NOBO_TO_NC_TO_FC)
	.d2line		1152
.Llo105:
	rlwinm		r4,r30,0,24,31		# transition=r30
.Llo106:
	se_cmpi		r4,15
	bc		0,2,.L801	# ne
#         {
#             CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_TXTIMEOUT_CC_STOP;
	.d2line		1154
	diab.li		r0,27
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# HandleIndex=r3
#             CanSMRetVal = (uint8)CanSM_EntryController(HandleIndex, CANIF_CS_STOPPED);
	.d2line		1155
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,2
	bl		CanSM_EntryController
	mr		r28,r3		# CanSMRetVal=r28 CanSMRetVal=r3
#             if(CanSM_NetworkType_ptr->RAM->State != CANSM_ST_FC_BO_CHECK)
	.d2line		1156
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	lhz		r0,2(r3)		# HandleIndex=r3
	se_cmpi		r0,9
	bc		1,2,.L802	# eq
#             {
#                 CanSM_NetworkType_Dispatch (HandleIndex, CANSM_NETWORKTYPEEVENT20NUM);
	.d2line		1158
.Llo109:
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,16
	bl		CanSM_NetworkType_Dispatch
.L802:
#             }
#             CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		1160
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
	b		.L793
.L801:
#         }
#         else
#         {
#             if(transition == CANSM_TXTIMEOUT_CC_STOP_TO_CANSM_TXTIMEOUT_CC_START)
	.d2line		1164
.Llo110:
	rlwinm		r30,r30,0,24,31		# transition=r30 transition=r30
	cmpi		0,0,r30,32		# transition=r30
	bc		0,2,.L793	# ne
#             {
#                 CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_TXTIMEOUT_CC_START;
	.d2line		1166
.Llo111:
	diab.li		r0,28
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	sth		r0,2(r3)		# HandleIndex=r3
#                 CanSMRetVal = (uint8)CanSM_EntryController(HandleIndex, CANIF_CS_STARTED);
	.d2line		1167
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	diab.li		r4,1
	bl		CanSM_EntryController
	mr		r28,r3		# CanSMRetVal=r28 CanSMRetVal=r3
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_NO_TRANSITION;
	.d2line		1168
	diab.li		r0,0
	lwz		r3,0(r29)		# HandleIndex=r3 CanSM_NetworkType_ptr=r29
	stb		r0,13(r3)		# HandleIndex=r3
.L793:
#             }
#         }
#     }
#     return CanSMRetVal;
	.d2line		1172
.Llo107:
	rlwinm		r3,r28,0,24,31		# HandleIndex=r3 CanSMRetVal=r28
# 
# }
	.d2line		1174
	.d2epilogue_begin
	lmw		r24,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	2,10
.Llo122:
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1151:
	.type		CanSM_ProcessStateMachine,@function
	.size		CanSM_ProcessStateMachine,.-CanSM_ProcessStateMachine
# Number of nodes = 1784

# Allocations for CanSM_ProcessStateMachine
#	?a4		HandleIndex
#	?a5		transition
#	?a6		StateIncluded
#	?a7		$$170
#	?a8		CanSM_NetworkType_ptr
#	?a9		CanSMRetVal
#	?a10		RetVal
#	?a11		TransitionFound
#	?a12		controllers
#	?a13		controllers_Size
#	?a14		controller
#	?a15		CanSM_ControllerTypeiter
# FUNC(Std_ReturnType,CANSM_CODE) CanSM_ProcessSM(CONST(uint8,AUTOMATIC) HandleIndex, CONST(uint8,AUTOMATIC) transition, CONST(boolean,AUTOMATIC) StateIncluded)
	.align		2
	.section	.text_vle
        .d2line         230,33
#$$ld
.L1180:

#$$bf	CanSM_ProcessSM,interprocedural,rasave,nostackparams
	.globl		CanSM_ProcessSM
	.d2_cfa_start __cie
CanSM_ProcessSM:
.Llo159:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# StateIncluded=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# HandleIndex=r31 HandleIndex=r3
.Llo160:
	mr		r0,r5		# StateIncluded=r0 StateIncluded=r5
	.d2prologue_end
# {
#     /* <Requirements> CANSM496 CANSM497 CANSM560 CANSM266 CANSM428 <EndRequirements> */
# 
#     VAR(uint8, AUTOMATIC) CanSMRetVal;
#     VAR(uint8, AUTOMATIC) Transition;
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) network = &CanSM_NetworkType_p[HandleIndex];
	.d2line		236
.Llo161:
	rlwinm		r6,r31,0,24,31		# HandleIndex=r31
.Llo164:
	lis		r3,CanSM_NetworkType_p@ha		# CanSMRetVal=r3
.Llo165:
	lwz		r29,CanSM_NetworkType_p@l(r3)		# network=r29 CanSMRetVal=r3
	rlwinm		r3,r6,5,0,26		# CanSMRetVal=r3
	se_slwi		r6,3
	subf		r6,r6,r3		# CanSMRetVal=r3
	se_add		r6,r29		# network=r29
	mr		r29,r6		# network=r29 network=r6
# 
#     network->RAM->CalledFromMainfunction = StateIncluded;
	.d2line		238
.Llo173:
	lwz		r3,0(r29)		# CanSMRetVal=r3 network=r29
.Llo174:
	stb		r5,26(r3)		# CanSMRetVal=r3 StateIncluded=r5
#     CanSMRetVal = CanSM_ProcessStateMachine(HandleIndex, transition, StateIncluded);
	.d2line		239
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
.Llo166:
	mr		r5,r4		# transition=r5 transition=r4
	mr		r5,r0		# StateIncluded=r5 StateIncluded=r0
	bl		CanSM_ProcessStateMachine
.Llo163:
	mr		r30,r3		# CanSMRetVal=r30 CanSMRetVal=r3
# 
#     /* Process synchron indications */
#     if(CanSMRetVal == E_OK)
	.d2line		242
	rlwinm		r3,r3,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r3
	se_cmpi		r3,0		# CanSMRetVal=r3
	bc		0,2,.L579	# ne
#     {
#         Transition = CanSM_GetApiTransition(network);
	.d2line		244
.Llo167:
	mr		r3,r29		# network=r3 network=r29
.Llo168:
	bl		CanSM_GetApiTransition
.Llo170:
	mr		r4,r3		# Transition=r4 Transition=r3
.L580:
#         while(Transition != CANSM_NO_TRANSITION)
	.d2line		245
.Llo171:
	rlwinm		r3,r4,0,24,31		# network=r3 Transition=r4
.Llo172:
	se_cmpi		r3,0		# network=r3
	bc		1,2,.L579	# eq
#         {
#             (void)CanSM_ProcessStateMachine(HandleIndex, Transition, FALSE);
	.d2line		247
	mr		r3,r31		# HandleIndex=r3 HandleIndex=r31
	mr		r4,r4		# Transition=r4 Transition=r4
	diab.li		r5,0		# StateIncluded=r5
	bl		CanSM_ProcessStateMachine
#             Transition = CanSM_GetApiTransition(network);
	.d2line		248
	mr		r3,r29		# network=r3 network=r29
	bl		CanSM_GetApiTransition
	mr		r4,r3		# Transition=r4 Transition=r3
	b		.L580
.L579:
#         }
#     }
#     return CanSMRetVal;
	.d2line		251
.Llo162:
	rlwinm		r3,r30,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r30
# }
	.d2line		252
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo169:
	lwz		r0,36(r1)		# StateIncluded=r0
	mtspr		lr,r0		# StateIncluded=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1181:
	.type		CanSM_ProcessSM,@function
	.size		CanSM_ProcessSM,.-CanSM_ProcessSM
# Number of nodes = 61

# Allocations for CanSM_ProcessSM
#	?a4		HandleIndex
#	?a5		transition
#	?a6		StateIncluded
#	?a7		$$171
#	?a8		CanSMRetVal
#	?a9		Transition
#	?a10		network
# FUNC(Std_ReturnType,CANSM_CODE) CanSM_ProcessTrcv(
	.align		2
	.section	.text_vle
        .d2line         267,33
#$$ld
.L1194:

#$$bf	CanSM_ProcessTrcv,interprocedural,rasave,nostackparams
	.globl		CanSM_ProcessTrcv
	.d2_cfa_start __cie
CanSM_ProcessTrcv:
.Llo175:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	mr		r4,r4		# TrcvMode=r4 TrcvMode=r4
	.d2prologue_end
# CONST(uint8,AUTOMATIC) HandleIndex,
# CONST(CanTrcv_TrcvModeType,AUTOMATIC) TrcvMode)
# {
#     /* <Requirements> CANSM484 CANSM486 CANSM495 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		273
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo176:
	lis		r3,CanSM_NetworkType_p@ha
.Llo177:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r31		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r31
.Llo178:
	mr		r31,r0		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r0
#     VAR(uint8,AUTOMATIC) CanSMRetVal;
# 
#     CanSMRetVal = E_OK;
	.d2line		276
	diab.li		r5,0		# CanSMRetVal=r5
#     CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED = FALSE;
	.d2line		277
.Llo194:
	diab.li		r0,0		# HandleIndex=r0
.Llo179:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r0,24(r3)		# HandleIndex=r0
#     if (CANSM_EXPIRED_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16))
	.d2line		278
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	lhz		r0,8(r3)		# HandleIndex=r0
	se_cmpi		r0,0		# HandleIndex=r0
	bc		0,2,.L585	# ne
#     {
#         if(CanSM_NetworkType_ptr->RAM->RetryCounter_u8 > 0)
	.d2line		280
.Llo180:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	lbz		r0,14(r3)		# HandleIndex=r0
.Llo181:
	se_cmpi		r0,0		# HandleIndex=r0
	bc		0,1,.L586	# le
#         {
#             CanSM_NetworkType_ptr->RAM->RetryCounter_u8--;
	.d2line		282
.Llo182:
	lwz		r5,0(r31)		# CanSMRetVal=r5 CanSM_NetworkType_ptr=r31
.Llo195:
	lbz		r3,14(r5)		# CanSMRetVal=r5
	diab.addi		r3,r3,255
	stb		r3,14(r5)		# CanSMRetVal=r5
.L586:
#         }
#         if(CanSM_NetworkType_ptr->RAM->RetryCounter_u8 == 0)
	.d2line		284
.Llo196:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	lbz		r0,14(r3)		# HandleIndex=r0
.Llo183:
	se_cmpi		r0,0		# HandleIndex=r0
	bc		0,2,.L587	# ne
#         {
#             CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED = TRUE;
	.d2line		286
.Llo184:
	diab.li		r5,1		# CanSMRetVal=r5
.Llo197:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r5,24(r3)		# CanSMRetVal=r5
#             CanSMRetVal = E_NOT_OK;
	.d2line		287
	b		.L585
.L587:
#         }
#         else
#         {
#             CanSMRetVal = (uint8)CanIf_SetTrcvMode(CanSM_NetworkType_ptr->CanSMTransceiverId_u8, TrcvMode);
	.d2line		291
.Llo191:
	lbz		r3,6(r31)		# CanSM_NetworkType_ptr=r31
.Llo192:
	mr		r4,r4		# TrcvMode=r4 TrcvMode=r4
.Llo193:
	bl		CanIf_SetTrcvMode
.Llo198:
	mr		r5,r3		# CanSMRetVal=r5 CanSMRetVal=r3
#             if(CanSMRetVal == E_OK)
	.d2line		292
	rlwinm		r0,r5,0,24,31		# HandleIndex=r0 CanSMRetVal=r5
.Llo185:
	se_cmpi		r0,0		# HandleIndex=r0
	bc		0,2,.L589	# ne
#             {
#                 CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, CanSM_Cfg_p->RepetitionTime_u16);
	.d2line		294
.Llo186:
	diab.li		r0,1		# HandleIndex=r0
.Llo187:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r0,10(r3)		# HandleIndex=r0
	lis		r3,CanSM_Cfg_p@ha
	lwz		r3,CanSM_Cfg_p@l(r3)
	lhz		r0,2(r3)		# HandleIndex=r0
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r0,8(r3)		# HandleIndex=r0
	b		.L585
.L589:
#             }
#             else
#             {
#                 CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, 1);
	.d2line		298
.Llo188:
	diab.li		r0,1		# HandleIndex=r0
.Llo189:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r0,10(r3)		# HandleIndex=r0
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r0,8(r3)		# HandleIndex=r0
.L585:
#             }
#         }
#     }
#     return CanSMRetVal;
	.d2line		302
.Llo190:
	rlwinm		r3,r5,0,24,31		# CanSMRetVal=r5
# 
# }
	.d2line		304
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo199:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1195:
	.type		CanSM_ProcessTrcv,@function
	.size		CanSM_ProcessTrcv,.-CanSM_ProcessTrcv
# Number of nodes = 109

# Allocations for CanSM_ProcessTrcv
#	?a4		HandleIndex
#	?a5		TrcvMode
#	?a6		$$172
#	?a7		$$161
#	?a8		CanSM_NetworkType_ptr
#	?a9		CanSMRetVal
# FUNC(Std_ReturnType,CANSM_CODE) CanSM_ProcessController(
	.align		2
	.section	.text_vle
        .d2line         319,33
#$$ld
.L1205:

#$$bf	CanSM_ProcessController,interprocedural,rasave,nostackparams
	.globl		CanSM_ProcessController
	.d2_cfa_start __cie
CanSM_ProcessController:
.Llo200:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	mr		r31,r4		# Mode=r31 Mode=r4
	.d2prologue_end
# CONST(uint8,AUTOMATIC) HandleIndex,
# CONST(CanIf_ControllerModeType,AUTOMATIC) Mode)
# {
#     /* <Requirements> CANSM488 CANSM490 CANSM492 CANSM494 CANSM495 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		325
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo201:
	lis		r3,CanSM_NetworkType_p@ha		# CanSMRetVal=r3
.Llo202:
	lwz		r30,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r30 CanSMRetVal=r3
.Llo220:
	rlwinm		r3,r0,5,0,26		# CanSMRetVal=r3 HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0 CanSMRetVal=r3
	se_add		r0,r30		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r30
.Llo203:
	mr		r30,r0		# CanSM_NetworkType_ptr=r30 CanSM_NetworkType_ptr=r0
#     VAR(uint8,AUTOMATIC) CanSMRetVal;
# 
#     VAR(uint8,AUTOMATIC) ControllersStates;
# 
#     P2CONST(CanSM_ControllerType ,AUTOMATIC,CANSM_APPL_CONST )controllers; /* controllers (ControllerType) */
#     VAR(uint8 ,AUTOMATIC)controllers_Size;
# 
#     P2CONST(CanSM_ControllerType,AUTOMATIC,CANSM_APPL_CONST)controller;
# 
#     VAR( uint8,AUTOMATIC)CanSM_ControllerTypeiter;
# 
#     CanSMRetVal = E_OK;
	.d2line		337
	diab.li		r3,0		# CanSMRetVal=r3
#     ControllersStates = 0;
	.d2line		338
	diab.li		r29,0
#     CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED = FALSE;
	.d2line		339
.Llo222:
	diab.li		r0,0		# HandleIndex=r0
.Llo204:
	lwz		r4,0(r30)		# CanSM_NetworkType_ptr=r30
.Llo218:
	stb		r0,24(r4)		# HandleIndex=r0
# 
#     if (CANSM_EXPIRED_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16))
	.d2line		341
	lwz		r4,0(r30)		# CanSM_NetworkType_ptr=r30
	lhz		r0,8(r4)		# HandleIndex=r0
	se_cmpi		r0,0		# HandleIndex=r0
	bc		0,2,.L598	# ne
#     {
#         if(CanSM_NetworkType_ptr->RAM->RetryCounter_u8 > 0)
	.d2line		343
.Llo205:
	lwz		r4,0(r30)		# CanSM_NetworkType_ptr=r30
	lbz		r0,14(r4)		# HandleIndex=r0
.Llo206:
	se_cmpi		r0,0		# HandleIndex=r0
	bc		0,1,.L599	# le
#         {
#             CanSM_NetworkType_ptr->RAM->RetryCounter_u8--;
	.d2line		345
.Llo207:
	lwz		r5,0(r30)		# CanSM_NetworkType_ptr=r30
	lbz		r4,14(r5)
	diab.addi		r4,r4,255
	stb		r4,14(r5)
.L599:
#         }
#         if(CanSM_NetworkType_ptr->RAM->RetryCounter_u8 == 0)
	.d2line		347
	lwz		r4,0(r30)		# CanSM_NetworkType_ptr=r30
	lbz		r0,14(r4)		# HandleIndex=r0
.Llo208:
	se_cmpi		r0,0		# HandleIndex=r0
	bc		0,2,.L600	# ne
#         {
#             CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED = TRUE;
	.d2line		349
.Llo209:
	diab.li		r3,1		# CanSMRetVal=r3
	lwz		r4,0(r30)		# CanSM_NetworkType_ptr=r30
	stb		r3,24(r4)		# CanSMRetVal=r3
#             CanSMRetVal = E_NOT_OK;
	.d2line		350
	b		.L598
.L600:
#         }
#         else
#         {
#             controllers = CanSM_NetworkType_ptr->ControllerType_R16;
	.d2line		354
	lwz		r28,20(r30)		# CanSM_NetworkType_ptr=r30
.Llo223:
	mr		r28,r28		# controllers=r28 controllers=r28
#             controllers_Size = CanSM_NetworkType_ptr->ControllerType_R16_Size;
	.d2line		355
	lbz		r27,9(r30)		# CanSM_NetworkType_ptr=r30
.Llo224:
	mr		r27,r27		# controllers_Size=r27 controllers_Size=r27
# 
#             for(CanSM_ControllerTypeiter = 0; CanSM_ControllerTypeiter < controllers_Size; CanSM_ControllerTypeiter++)
	.d2line		357
	diab.li		r26,0		# CanSM_ControllerTypeiter=r26
.L602:
.Llo227:
	rlwinm		r0,r26,0,24,31		# HandleIndex=r0 CanSM_ControllerTypeiter=r26
.Llo210:
	rlwinm		r4,r27,0,24,31		# controllers_Size=r27
	se_cmp		r0,r4		# HandleIndex=r0
	bc		0,0,.L604	# ge
#             {
#                 controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		359
.Llo211:
	rlwinm		r3,r26,3,21,28		# CanSMRetVal=r3 CanSM_ControllerTypeiter=r26
	se_add		r3,r28		# CanSMRetVal=r3 CanSMRetVal=r3 controllers=r28
.Llo225:
	mr		r3,r3		# controller=r3 controller=r3
#                 CanSMRetVal = (uint8)CanIf_SetControllerMode(controller->ControllerId_pu8, Mode);
	.d2line		360
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo226:
	mr		r4,r31		# Mode=r4 Mode=r31
	bl		CanIf_SetControllerMode
	mr		r3,r3		# CanSMRetVal=r3 CanSMRetVal=r3
#                 if(CanSMRetVal != E_OK)
	.d2line		361
	rlwinm		r0,r3,0,24,31		# HandleIndex=r0 CanSMRetVal=r3
.Llo212:
	se_cmpi		r0,0		# HandleIndex=r0
	bc		1,2,.L605	# eq
#                 {
#                     ControllersStates++;
	.d2line		363
.Llo213:
	diab.addi		r0,r29,1		# HandleIndex=r0 ControllersStates=r29
	se_addi		r29,1		# ControllersStates=r29 ControllersStates=r29
.L605:
#                 }
#             }
	.d2line		365
	diab.addi		r0,r26,1		# HandleIndex=r0 CanSM_ControllerTypeiter=r26
	se_addi		r26,1		# CanSM_ControllerTypeiter=r26 CanSM_ControllerTypeiter=r26
	b		.L602
.L604:
#             if(ControllersStates != 0)
	.d2line		366
	rlwinm		r29,r29,0,24,31		# ControllersStates=r29 ControllersStates=r29
	se_cmpi		r29,0		# ControllersStates=r29
	bc		1,2,.L606	# eq
#             {
#                 CanSMRetVal = E_NOT_OK;
	.d2line		368
.Llo219:
	diab.li		r3,1		# CanSMRetVal=r3
#                 CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, 1);
	.d2line		369
	diab.li		r0,1		# HandleIndex=r0
.Llo214:
	lwz		r4,0(r30)		# CanSM_NetworkType_ptr=r30
	stb		r0,10(r4)		# HandleIndex=r0
	lwz		r4,0(r30)		# CanSM_NetworkType_ptr=r30
	sth		r0,8(r4)		# HandleIndex=r0
	b		.L598
.L606:
#             }
#             else
#             {
#                 CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, CanSM_Cfg_p->RepetitionTime_u16);
	.d2line		373
.Llo215:
	diab.li		r0,1		# HandleIndex=r0
.Llo216:
	lwz		r4,0(r30)		# CanSM_NetworkType_ptr=r30
	stb		r0,10(r4)		# HandleIndex=r0
	lis		r4,CanSM_Cfg_p@ha
	lwz		r4,CanSM_Cfg_p@l(r4)
	lhz		r0,2(r4)		# HandleIndex=r0
	lwz		r4,0(r30)		# CanSM_NetworkType_ptr=r30
	sth		r0,8(r4)		# HandleIndex=r0
.L598:
#             }
#         }
#     }
#     return CanSMRetVal;
	.d2line		377
.Llo217:
	rlwinm		r3,r3,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r3
# 
# }
	.d2line		379
	.d2epilogue_begin
.Llo221:
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1206:
	.type		CanSM_ProcessController,@function
	.size		CanSM_ProcessController,.-CanSM_ProcessController
# Number of nodes = 152

# Allocations for CanSM_ProcessController
#	?a4		HandleIndex
#	?a5		Mode
#	?a6		$$173
#	?a7		$$162
#	?a8		CanSM_NetworkType_ptr
#	?a9		CanSMRetVal
#	?a10		ControllersStates
#	?a11		controllers
#	?a12		controllers_Size
#	?a13		controller
#	?a14		CanSM_ControllerTypeiter
# FUNC(Std_ReturnType,CANSM_CODE) CanSM_ProcessTrcvClrWUFlag(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		2
	.section	.text_vle
        .d2line         516,33
#$$ld
.L1226:

#$$bf	CanSM_ProcessTrcvClrWUFlag,interprocedural,rasave,nostackparams
	.globl		CanSM_ProcessTrcvClrWUFlag
	.d2_cfa_start __cie
CanSM_ProcessTrcvClrWUFlag:
.Llo228:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		518
	rlwinm		r4,r0,0,24,31		# CanSMRetVal=r4 HandleIndex=r0
.Llo233:
	lis		r3,CanSM_NetworkType_p@ha		# CanSM_NetworkType_ptr=r3
.Llo229:
	lwz		r3,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	rlwinm		r5,r4,5,0,26		# CanSMRetVal=r4
	se_slwi		r4,3		# CanSMRetVal=r4 CanSMRetVal=r4
	subf		r4,r4,r5		# CanSMRetVal=r4 CanSMRetVal=r4
	se_add		r3,r4		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3 CanSMRetVal=r4
	mr		r3,r3		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
#     VAR(uint8,AUTOMATIC) CanSMRetVal;
# 
#     CanSMRetVal = E_OK;
	.d2line		521
	diab.li		r4,0		# CanSMRetVal=r4
# 
#     if (CANSM_EXPIRED_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16))
	.d2line		523
	lwz		r5,0(r3)		# CanSM_NetworkType_ptr=r3
	lhz		r5,8(r5)
	se_cmpi		r5,0
	bc		0,2,.L652	# ne
#     {
#         CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, CanSM_Cfg_p->RepetitionTime_u16);
	.d2line		525
.Llo230:
	diab.li		r6,1
	lwz		r5,0(r3)		# CanSM_NetworkType_ptr=r3
	stb		r6,10(r5)
	lis		r5,CanSM_Cfg_p@ha
	lwz		r5,CanSM_Cfg_p@l(r5)
	lhz		r6,2(r5)
	lwz		r5,0(r3)		# CanSM_NetworkType_ptr=r3
	sth		r6,8(r5)
#         if(CanSM_NetworkType_ptr->RAM->RetryCounter_u8 > 0)
	.d2line		526
	lwz		r5,0(r3)		# CanSM_NetworkType_ptr=r3
	lbz		r5,14(r5)
	se_cmpi		r5,0
	bc		0,1,.L654	# le
#         {
#             CanSM_NetworkType_ptr->RAM->RetryCounter_u8--;
	.d2line		528
	lwz		r6,0(r3)		# CanSM_NetworkType_ptr=r3
	lbz		r5,14(r6)
	diab.addi		r5,r5,255
	stb		r5,14(r6)
.L654:
#         }
#         if(CanSM_NetworkType_ptr->RAM->RetryCounter_u8 == 0)
	.d2line		530
	lwz		r3,0(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	lbz		r3,14(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	se_cmpi		r3,0		# CanSM_NetworkType_ptr=r3
	bc		0,2,.L652	# ne
#         {
#             CanSM_NetworkType_Dispatch (HandleIndex, CANSM_NETWORKTYPEEVENT19NUM);
	.d2line		532
.Llo232:
	mr		r3,r0		# HandleIndex=r3 HandleIndex=r0
	diab.li		r4,15		# CanSMRetVal=r4
	bl		CanSM_NetworkType_Dispatch
#             CanSMRetVal = E_NOT_OK;
	.d2line		533
.Llo231:
	diab.li		r4,1		# CanSMRetVal=r4
.L652:
#         }
#         else
#         {
# #if (CANSM_PN_SUPPORT == STD_ON)
#             CanSMRetVal = (uint8)CanIf_ClearTrcvWufFlag(CanSM_NetworkType_ptr->CanSMTransceiverId_u8);
#             if(CanSMRetVal == E_NOT_OK)
#             {
#                 CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, 1); /* 1 !!! intended to cause timeout in next main function !!! */
#             }
# #endif
#         }
#     }
#     return CanSMRetVal;
	.d2line		546
	rlwinm		r3,r4,0,24,31		# CanSM_NetworkType_ptr=r3 CanSMRetVal=r4
# 
# }
	.d2line		548
	.d2epilogue_begin
	lwz		r0,20(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo234:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1227:
	.type		CanSM_ProcessTrcvClrWUFlag,@function
	.size		CanSM_ProcessTrcvClrWUFlag,.-CanSM_ProcessTrcvClrWUFlag
# Number of nodes = 70

# Allocations for CanSM_ProcessTrcvClrWUFlag
#	?a4		HandleIndex
#	?a5		$$174
#	?a6		$$163
#	?a7		CanSM_NetworkType_ptr
#	?a8		CanSMRetVal
# FUNC(Std_ReturnType,CANSM_CODE) CanSM_ProcessTrcvChckWUFlag(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		2
	.section	.text_vle
        .d2line         564,33
#$$ld
.L1236:

#$$bf	CanSM_ProcessTrcvChckWUFlag,interprocedural,rasave,nostackparams
	.globl		CanSM_ProcessTrcvChckWUFlag
	.d2_cfa_start __cie
CanSM_ProcessTrcvChckWUFlag:
.Llo235:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		566
	rlwinm		r4,r0,0,24,31		# CanSMRetVal=r4 HandleIndex=r0
.Llo240:
	lis		r3,CanSM_NetworkType_p@ha		# CanSM_NetworkType_ptr=r3
.Llo236:
	lwz		r3,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	rlwinm		r5,r4,5,0,26		# CanSMRetVal=r4
	se_slwi		r4,3		# CanSMRetVal=r4 CanSMRetVal=r4
	subf		r4,r4,r5		# CanSMRetVal=r4 CanSMRetVal=r4
	se_add		r3,r4		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3 CanSMRetVal=r4
	mr		r3,r3		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
#     VAR(uint8,AUTOMATIC) CanSMRetVal;
# 
#     CanSMRetVal = E_OK;
	.d2line		569
	diab.li		r4,0		# CanSMRetVal=r4
#     if (CANSM_EXPIRED_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16))
	.d2line		570
	lwz		r5,0(r3)		# CanSM_NetworkType_ptr=r3
	lhz		r5,8(r5)
	se_cmpi		r5,0
	bc		0,2,.L660	# ne
#     {
#         if(CanSM_NetworkType_ptr->RAM->RetryCounter_u8 > 0)
	.d2line		572
.Llo237:
	lwz		r5,0(r3)		# CanSM_NetworkType_ptr=r3
	lbz		r5,14(r5)
	se_cmpi		r5,0
	bc		0,1,.L661	# le
#         {
#             CanSM_NetworkType_ptr->RAM->RetryCounter_u8--;
	.d2line		574
	lwz		r6,0(r3)		# CanSM_NetworkType_ptr=r3
	lbz		r5,14(r6)
	diab.addi		r5,r5,255
	stb		r5,14(r6)
.L661:
#         }
#         if(CanSM_NetworkType_ptr->RAM->RetryCounter_u8 == 0)
	.d2line		576
	lwz		r3,0(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	lbz		r3,14(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	se_cmpi		r3,0		# CanSM_NetworkType_ptr=r3
	bc		0,2,.L660	# ne
#         {
#             CanSM_NetworkType_Dispatch (HandleIndex, CANSM_NETWORKTYPEEVENT19NUM);
	.d2line		578
.Llo239:
	mr		r3,r0		# HandleIndex=r3 HandleIndex=r0
	diab.li		r4,15		# CanSMRetVal=r4
	bl		CanSM_NetworkType_Dispatch
#             CanSMRetVal = E_NOT_OK;
	.d2line		579
.Llo238:
	diab.li		r4,1		# CanSMRetVal=r4
.L660:
#         }
#         else
#         {
# #if (CANSM_PN_SUPPORT == STD_ON)
#             CanSMRetVal = (uint8)CanIf_CheckTrcvWakeFlag(CanSM_NetworkType_ptr->CanSMTransceiverId_u8);
#             if(CanSMRetVal != E_OK)
#             {
#                 CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, 1);
#             }
#             else
#             {
#                 CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, CanSM_Cfg_p->RepetitionTime_u16);
#             }
# #endif
#         }
#     }
#     return CanSMRetVal;
	.d2line		596
	rlwinm		r3,r4,0,24,31		# CanSM_NetworkType_ptr=r3 CanSMRetVal=r4
# 
# }
	.d2line		598
	.d2epilogue_begin
	lwz		r0,20(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo241:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1237:
	.type		CanSM_ProcessTrcvChckWUFlag,@function
	.size		CanSM_ProcessTrcvChckWUFlag,.-CanSM_ProcessTrcvChckWUFlag
# Number of nodes = 53

# Allocations for CanSM_ProcessTrcvChckWUFlag
#	?a4		HandleIndex
#	?a5		$$175
#	?a6		$$164
#	?a7		CanSM_NetworkType_ptr
#	?a8		CanSMRetVal
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_act0(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1187,30
#$$ld
.L1246:

#$$bf	CanSM_NetworkType_act0,interprocedural,nostackparams

# Regs written: r0,r1
	.d2_cfa_start __cie
CanSM_NetworkType_act0:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# }
	.d2line		1189
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1247:
	.type		CanSM_NetworkType_act0,@function
	.size		CanSM_NetworkType_act0,.-CanSM_NetworkType_act0
# Number of nodes = 0

# Allocations for CanSM_NetworkType_act0
#	not allocated	HandleIndex
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_act1(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1199,30
#$$ld
.L1251:

#$$bf	CanSM_NetworkType_act1,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
CanSM_NetworkType_act1:
.Llo242:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# HandleIndex=r4 HandleIndex=r3
	.d2prologue_end
# {
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1201
	rlwinm		r4,r4,0,24,31		# HandleIndex=r4 HandleIndex=r4
.Llo243:
	lis		r3,CanSM_NetworkType_p@ha
.Llo244:
	lwz		r3,CanSM_NetworkType_p@l(r3)
	rlwinm		r5,r4,5,0,26		# CanSM_NetworkType_ptr=r5 HandleIndex=r4
.Llo246:
	se_slwi		r4,3		# HandleIndex=r4 HandleIndex=r4
	subf		r4,r4,r5		# HandleIndex=r4 HandleIndex=r4 CanSM_NetworkType_ptr=r5
	se_add		r3,r4		# HandleIndex=r4
	mr		r5,r3		# CanSM_NetworkType_ptr=r5 CanSM_NetworkType_ptr=r3
# 
#     CanSM_NetworkType_ptr->RAM->CurrentStateNoCom_b = TRUE;
	.d2line		1203
	diab.li		r3,1
	lwz		r4,0(r5)		# HandleIndex=r4 CanSM_NetworkType_ptr=r5
	stb		r3,22(r4)		# HandleIndex=r4
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_NOCOM;
	.d2line		1204
	diab.li		r3,2
	lwz		r4,0(r5)		# HandleIndex=r4 CanSM_NetworkType_ptr=r5
	sth		r3,2(r4)		# HandleIndex=r4
# }
	.d2line		1205
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo245:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1252:
	.type		CanSM_NetworkType_act1,@function
	.size		CanSM_NetworkType_act1,.-CanSM_NetworkType_act1
# Number of nodes = 22

# Allocations for CanSM_NetworkType_act1
#	?a4		HandleIndex
#	?a5		$$176
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_act2(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1215,30
#$$ld
.L1259:

#$$bf	CanSM_NetworkType_act2,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_act2:
.Llo247:
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
#     /* <Requirements> DEV_CanSM_00436 DEV_CanSM_00437 CANSM438 CANSM439 CANSM440 DEV_CanSM_00441 CANSM442 CANSM443 CANSM444
#      *                CANSM445 CANSM446 CANSM447 CANSM448 CANSM449 CANSM450 CANSM451 CANSM452 DEV_CanSM_00453
#      *                CANSM454 CANSM455 CANSM456 CANSM457 CANSM458 CANSM459 CANSM460 CANSM461 CANSM462
#      *                DEV_CanSM_00464 CANSM465 CANSM466 CANSM467 DEV_CanSM_00468 CANSM469 CANSM470 CANSM471 CANSM472
#      *                CANSM473 CANSM474 CANSM556 CANSM475 CANSM476 CANSM477 CANSM478 CANSM557 CANSM479
#      * <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1224
	rlwinm		r4,r0,0,24,31		# HandleIndex=r0
	lis		r3,CanSM_NetworkType_p@ha
.Llo248:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31
	rlwinm		r3,r4,5,0,26
	se_slwi		r4,3
	subf		r4,r4,r3
	se_add		r4,r31		# CanSM_NetworkType_ptr=r31
	mr		r31,r4		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r4
# 
#     CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED = FALSE;
	.d2line		1226
	diab.li		r4,0
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r4,24(r3)
# #if (CANSM_PN_SUPPORT == STD_ON)
#     if(CanSM_NetworkType_ptr->CanSMPartialNetworkSupport == TRUE)
#     {
#         if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PRE_NOCOM)
#         {
#             /*
#              * As CanSMPartialNetworkSupport = TRUE,
#              * the CanSMTransceiverId_u8 can't be 0x255, don't have to be checked.
#              */
# 
#             CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PNC_PN_CLR_WF;
#             if(CanIf_ClearTrcvWufFlag(CanSM_NetworkType_ptr->CanSMTransceiverId_u8) == E_NOT_OK)
#             {
#                 CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, 1); /* !!! 1 intended to cause timeout in next mainfunction() !!! */
#                 CanSM_NetworkType_ptr->RAM->RetryCounter_u8 = CanSM_Cfg_p->RepetitionMax_u8;
#             }
#             else
#             {
#                 if (CanSM_NetworkType_ptr->RAM->RequestModeTransition != CANSM_PNC_PN_WF_CC_SLEEP_TO_NOCO)
#                 {
#                     CANSM_START_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16, CanSM_NetworkType_ptr->RAM->RetryTimerEnabled, CanSM_Cfg_p->RepetitionTime_u16);
#                     CanSM_NetworkType_ptr->RAM->RetryCounter_u8 = CanSM_Cfg_p->RepetitionMax_u8;
#                 }
#             }
#         }
#         else if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_PN_CLR_WF)
#         {
# #if (CANSM_TRCV_SUPPORT == STD_ON)
#            (void)CanSM_ProcessTrcvClrWUFlag(HandleIndex);
# #endif
#         }
#         else if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_CC_STOP)
#         {
#             (void)CanSM_ProcessController(HandleIndex, CANIF_CS_STOPPED);
#             if(CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED == TRUE)
#             {
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_TXTIMEOUT_TO_PNC_PN_CLR_WF;
#             }
#         }
#         else if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_TRCV_NOR)
#         {
#             (void)CanSM_ProcessTrcv(HandleIndex, CANTRCV_TRCVMODE_NORMAL);
#             if(CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED == TRUE)
#             {
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_TXTIMEOUT_TO_PNC_PN_CLR_WF;
#             }
#         }
#         else if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_TRCV_STB)
#         {
#             (void)CanSM_ProcessTrcv(HandleIndex, CANTRCV_TRCVMODE_STANDBY);
#             if(CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED == TRUE)
#             {
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_TXTIMEOUT_TO_PNC_PN_CLR_WF;
#             }
#         }
#         else if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_CC_SLEEP)
#         {
#             (void)CanSM_ProcessController(HandleIndex, CANIF_CS_SLEEP);
#             if(CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED == TRUE)
#             {
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_TXTIMEOUT_TO_PNC_PN_CLR_WF;
#             }
#         }
#         else if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_CC_SLEEP_WAIT)
#         {
#             if(CANSM_EXPIRED_TIMER(CanSM_NetworkType_ptr->RAM->ChannelTimer_u16))
#             {
#                 (void)CanSM_ProcessStateMachine(HandleIndex, CANSM_PNC_CC_SLEEP_TO_PN_WF_CC_NO_SLEEP, FALSE);
#             }
#         }
#         else
#         {
#             if((CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_PN_WF_CC_SLEEP) || (CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_PN_WF_CC_NO_SLEEP))
#             {
# #if (CANSM_TRCV_SUPPORT == STD_ON)
#                 (void)CanSM_ProcessTrcvChckWUFlag(HandleIndex);
# #endif
#             }
#         }
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#         if(CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED == TRUE)
#         {
#             (void)Det_ReportError(CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_MAIN_FUNCTION, CANSM_E_MODE_REQUEST_TIMEOUT);
#             CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED = FALSE;
#         }
# #endif
# 
#     }
#     else
# #endif
#     {
#         if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PRE_NOCOM)
	.d2line		1318
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	lhz		r3,2(r3)
	se_cmpi		r3,3
	bc		0,2,.L897	# ne
#         {
#             CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PNC_CC_STOP;
	.d2line		1320
.Llo249:
	diab.li		r3,13		# HandleIndex=r3
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r3,2(r4)		# HandleIndex=r3
#             (void)CanSM_EntryController(HandleIndex, CANIF_CS_STOPPED);
	.d2line		1321
	mr		r3,r0		# HandleIndex=r3 HandleIndex=r0
	diab.li		r4,2
	bl		CanSM_EntryController
.Llo250:
	b		.L896
.L897:
#         }
#         else if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_CC_STOP)
	.d2line		1323
.Llo251:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	lhz		r3,2(r3)
	se_cmpi		r3,13
	bc		0,2,.L899	# ne
#         {
#             (void)CanSM_ProcessController(HandleIndex, CANIF_CS_STOPPED);
	.d2line		1325
	mr		r3,r0		# HandleIndex=r3 HandleIndex=r0
	diab.li		r4,2
	bl		CanSM_ProcessController
#             if(CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED == TRUE)
	.d2line		1326
.Llo252:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
.Llo253:
	lbz		r0,24(r3)		# HandleIndex=r0 HandleIndex=r3
	se_cmpi		r0,1		# HandleIndex=r0
	bc		0,2,.L896	# ne
#             {
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_TXTIMEOUT_TO_PNC;
	.d2line		1328
.Llo254:
	diab.li		r0,41		# HandleIndex=r0
.Llo255:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
	stb		r0,13(r3)		# HandleIndex=r3 HandleIndex=r0
	b		.L896
.L899:
#             }
#         }
#         else if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_CC_SLEEP)
	.d2line		1331
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	lhz		r3,2(r3)
	se_cmpi		r3,14
	bc		0,2,.L902	# ne
#         {
#             (void)CanSM_ProcessController(HandleIndex, CANIF_CS_SLEEP);
	.d2line		1333
	mr		r3,r0		# HandleIndex=r3 HandleIndex=r0
	diab.li		r4,0
	bl		CanSM_ProcessController
#             if(CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED == TRUE)
	.d2line		1334
.Llo256:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
.Llo257:
	lbz		r0,24(r3)		# HandleIndex=r0 HandleIndex=r3
	se_cmpi		r0,1		# HandleIndex=r0
	bc		0,2,.L896	# ne
#             {
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_TXTIMEOUT_TO_PNC;
	.d2line		1336
.Llo258:
	diab.li		r0,41		# HandleIndex=r0
.Llo259:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
	stb		r0,13(r3)		# HandleIndex=r3 HandleIndex=r0
	b		.L896
.L902:
#             }
#         }
#         else if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_TRCV_NOR)
	.d2line		1339
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	lhz		r3,2(r3)
	se_cmpi		r3,15
	bc		0,2,.L905	# ne
#         {
# #if (CANSM_TRCV_SUPPORT == STD_ON)
#             (void)CanSM_ProcessTrcv(HandleIndex, CANTRCV_TRCVMODE_NORMAL);
	.d2line		1342
	mr		r3,r0		# HandleIndex=r3 HandleIndex=r0
	diab.li		r4,0
	bl		CanSM_ProcessTrcv
#             if(CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED == TRUE)
	.d2line		1343
.Llo260:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
.Llo261:
	lbz		r0,24(r3)		# HandleIndex=r0 HandleIndex=r3
	se_cmpi		r0,1		# HandleIndex=r0
	bc		0,2,.L896	# ne
#             {
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_TXTIMEOUT_TO_PNC;
	.d2line		1345
.Llo262:
	diab.li		r0,41		# HandleIndex=r0
.Llo263:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
	stb		r0,13(r3)		# HandleIndex=r3 HandleIndex=r0
	b		.L896
.L905:
#             }
# #endif
#         }
#         else
#         {
#             if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PNC_TRCV_STB)
	.d2line		1351
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	lhz		r3,2(r3)
	se_cmpi		r3,16
	bc		0,2,.L896	# ne
#             {
# #if (CANSM_TRCV_SUPPORT == STD_ON)
#                 (void)CanSM_ProcessTrcv(HandleIndex, CANTRCV_TRCVMODE_STANDBY);
	.d2line		1354
	mr		r3,r0		# HandleIndex=r3 HandleIndex=r0
	diab.li		r4,2
	bl		CanSM_ProcessTrcv
#                 if(CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED == TRUE)
	.d2line		1355
.Llo264:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
.Llo265:
	lbz		r0,24(r3)		# HandleIndex=r0 HandleIndex=r3
	se_cmpi		r0,1		# HandleIndex=r0
	bc		0,2,.L896	# ne
#                 {
#                     CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_PNC_TRCV_STB_TO_PNC;
	.d2line		1357
.Llo266:
	diab.li		r0,42		# HandleIndex=r0
.Llo267:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
	stb		r0,13(r3)		# HandleIndex=r3 HandleIndex=r0
.L896:
#                 }
# #endif
#             }
#         }
#     }
# }
	.d2line		1363
	.d2epilogue_begin
.Llo268:
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
.L1260:
	.type		CanSM_NetworkType_act2,@function
	.size		CanSM_NetworkType_act2,.-CanSM_NetworkType_act2
# Number of nodes = 161

# Allocations for CanSM_NetworkType_act2
#	?a4		HandleIndex
#	?a5		$$177
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_act3(CONST(uint8, AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1373,30
#$$ld
.L1267:

#$$bf	CanSM_NetworkType_act3,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_act3:
.Llo269:
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
#     /* <Requirements> CANSM483 DEV_CanSM_00487 CANSM558 DEV_CanSM_00491 CANSM560 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1377
	rlwinm		r4,r0,0,24,31		# HandleIndex=r0
	lis		r3,CanSM_NetworkType_p@ha
.Llo270:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31
	rlwinm		r3,r4,5,0,26
	se_slwi		r4,3
	subf		r4,r4,r3
	se_add		r4,r31		# CanSM_NetworkType_ptr=r31
	mr		r31,r4		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r4
# 
#     CanSM_NetworkType_ptr->RAM->CurrentStateNoCom_b = FALSE;
	.d2line		1379
	diab.li		r4,0
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r4,22(r3)
#     if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PFC_TRCV_NOR)
	.d2line		1380
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	lhz		r3,2(r3)
	se_cmpi		r3,22
	bc		0,2,.L916	# ne
#     {
#         if(CanSM_NetworkType_ptr->CanSMTransceiverId_u8 != 255)
	.d2line		1382
.Llo271:
	lbz		r3,6(r31)		# CanSM_NetworkType_ptr=r31
	cmpi		0,0,r3,255
	bc		1,2,.L917	# eq
#         {
# #if (CANSM_TRCV_SUPPORT == STD_ON)
#             (void)CanSM_ProcessTrcv(HandleIndex, CANTRCV_TRCVMODE_NORMAL);
	.d2line		1385
	mr		r3,r0		# HandleIndex=r3 HandleIndex=r0
	diab.li		r4,0
	bl		CanSM_ProcessTrcv
#             if(CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED == TRUE)
	.d2line		1386
.Llo272:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
.Llo273:
	lbz		r0,24(r3)		# HandleIndex=r0 HandleIndex=r3
	se_cmpi		r0,1		# HandleIndex=r0
	bc		0,2,.L915	# ne
#             {
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_PFC_TRCV_NOR_TO_PNC;
	.d2line		1388
.Llo274:
	diab.li		r0,37		# HandleIndex=r0
.Llo275:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
	stb		r0,13(r3)		# HandleIndex=r3 HandleIndex=r0
	b		.L915
.L917:
#             }
# #endif
#         }
#         else
#         {
#             CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PFC_CC_STOP;
	.d2line		1394
.Llo276:
	diab.li		r0,20		# HandleIndex=r0
.Llo277:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r0,2(r3)		# HandleIndex=r0
	b		.L915
.L916:
#         }
#     }
#     else
#     {
#         if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_PFC_CC_STOP)
	.d2line		1399
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	lhz		r3,2(r3)
	se_cmpi		r3,20
	bc		0,2,.L921	# ne
#         {
#             (void)CanSM_ProcessController(HandleIndex, CANIF_CS_STOPPED);
	.d2line		1401
	mr		r3,r0		# HandleIndex=r3 HandleIndex=r0
	diab.li		r4,2
	bl		CanSM_ProcessController
#             if(CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED == TRUE)
	.d2line		1402
.Llo278:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
.Llo279:
	lbz		r0,24(r3)		# HandleIndex=r0 HandleIndex=r3
	se_cmpi		r0,1		# HandleIndex=r0
	bc		0,2,.L915	# ne
#             {
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_PFC_CC_STOPPED_TO_PNC;
	.d2line		1404
.Llo280:
	diab.li		r0,38		# HandleIndex=r0
.Llo281:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
	stb		r0,13(r3)		# HandleIndex=r3 HandleIndex=r0
	b		.L915
.L921:
#             }
#         }
#         else
#         {
#             (void)CanSM_ProcessController(HandleIndex, CANIF_CS_STARTED);
	.d2line		1409
	mr		r3,r0		# HandleIndex=r3 HandleIndex=r0
	diab.li		r4,1
	bl		CanSM_ProcessController
#             if(CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED == TRUE)
	.d2line		1410
.Llo282:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
.Llo283:
	lbz		r0,24(r3)		# HandleIndex=r0 HandleIndex=r3
	se_cmpi		r0,1		# HandleIndex=r0
	bc		0,2,.L915	# ne
#             {
#                 CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_PFC_CC_START_TO_PNC;
	.d2line		1412
.Llo284:
	diab.li		r0,6		# HandleIndex=r0
.Llo285:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
	stb		r0,13(r3)		# HandleIndex=r3 HandleIndex=r0
.L915:
#             }
#         }
#     }
# }
	.d2line		1416
	.d2epilogue_begin
.Llo286:
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
.L1268:
	.type		CanSM_NetworkType_act3,@function
	.size		CanSM_NetworkType_act3,.-CanSM_NetworkType_act3
# Number of nodes = 114

# Allocations for CanSM_NetworkType_act3
#	?a4		HandleIndex
#	?a5		$$178
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_act4(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1426,30
#$$ld
.L1275:

#$$bf	CanSM_NetworkType_act4,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_act4:
.Llo287:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> CANSM483 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1430
	rlwinm		r4,r0,0,24,31		# HandleIndex=r0
	lis		r3,CanSM_NetworkType_p@ha		# CanSM_NetworkType_ptr=r3
.Llo288:
	lwz		r3,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	rlwinm		r5,r4,5,0,26		# Transition=r5
.Llo294:
	se_slwi		r4,3
	subf		r4,r4,r5		# Transition=r5
	se_add		r3,r4		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	mr		r3,r3		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
#     VAR(uint8,AUTOMATIC) Transition;
# 
#     Transition = CANSM_NO_TRANSITION;
	.d2line		1433
	diab.li		r5,0		# Transition=r5
#     if(CanSM_NetworkType_ptr->RAM->RequestMode == COMM_FULL_COMMUNICATION)
	.d2line		1434
	lwz		r4,0(r3)		# CanSM_NetworkType_ptr=r3
	lbz		r4,15(r4)
	se_cmpi		r4,2
	bc		0,2,.L930	# ne
#     {
#         Transition = CANSM_SICO_TO_FC_BO_CHECK;
	.d2line		1436
.Llo289:
	diab.li		r4,20		# Transition=r4
	b		.L931
.L930:
#     }
#     else
#     {
#         if(CanSM_NetworkType_ptr->RAM->RequestMode == COMM_NO_COMMUNICATION)
	.d2line		1440
	lwz		r3,0(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	lbz		r3,15(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	se_cmpi		r3,0		# CanSM_NetworkType_ptr=r3
#         {
#             Transition = CANSM_SICO_TO_PNC;
	.d2line		1442
	diab.li		r4,21		# Transition=r4
	isel		r4,r4,r5,2		# Transition=r4 Transition=r4 Transition=r5
.L931:
#         }
#     }
#     if(Transition != CANSM_NO_TRANSITION)
	.d2line		1445
.Llo291:
	rlwinm		r3,r4,0,24,31		# CanSM_NetworkType_ptr=r3 Transition=r4
.Llo292:
	se_cmpi		r3,0		# CanSM_NetworkType_ptr=r3
	bc		1,2,.L929	# eq
#     {
#         (void)CanSM_ProcessStateMachine(HandleIndex, Transition, FALSE);
	.d2line		1447
.Llo293:
	mr		r3,r0		# HandleIndex=r3 HandleIndex=r0
.Llo295:
	mr		r4,r4		# Transition=r4 Transition=r4
.Llo296:
	diab.li		r5,0		# Transition=r5
	bl		CanSM_ProcessStateMachine
.L929:
#     }
# }
	.d2line		1449
	.d2epilogue_begin
.Llo290:
	lwz		r0,20(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1276:
	.type		CanSM_NetworkType_act4,@function
	.size		CanSM_NetworkType_act4,.-CanSM_NetworkType_act4
# Number of nodes = 48

# Allocations for CanSM_NetworkType_act4
#	?a4		HandleIndex
#	?a5		$$179
#	?a6		CanSM_NetworkType_ptr
#	?a7		Transition
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_act5(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1459,30
#$$ld
.L1285:

#$$bf	CanSM_NetworkType_act5,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_act5:
.Llo297:
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
#     /* <Requirements> DEV_CanSM_00524 CANSM525 CANSM526 CANSM527 CANSM542 CANSM543 DEV_CanSM_00532 CANSM533 CANSM534
#      *                CANSM535 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1464
	rlwinm		r4,r0,0,24,31		# HandleIndex=r0
	lis		r3,CanSM_NetworkType_p@ha
.Llo298:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31
	rlwinm		r3,r4,5,0,26
	se_slwi		r4,3
	subf		r4,r4,r3
	se_add		r4,r31		# CanSM_NetworkType_ptr=r31
	mr		r31,r4		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r4
# 
#     if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_CB_CC_STOP)
	.d2line		1466
.Llo309:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
.Llo310:
	lhz		r3,2(r3)
	se_cmpi		r3,23
	bc		0,2,.L938	# ne
#     {
#         (void)CanSM_ProcessController(HandleIndex, CANIF_CS_STOPPED);
	.d2line		1468
.Llo299:
	mr		r3,r0		# HandleIndex=r3 HandleIndex=r0
.Llo311:
	diab.li		r4,2
	bl		CanSM_ProcessController
#         if(CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED == TRUE)
	.d2line		1469
.Llo300:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
.Llo301:
	lbz		r0,24(r3)		# HandleIndex=r0 HandleIndex=r3
	se_cmpi		r0,1		# HandleIndex=r0
	bc		0,2,.L937	# ne
#         {
#             CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_CB_TO_PNC;
	.d2line		1471
.Llo302:
	diab.li		r0,40		# HandleIndex=r0
.Llo303:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
	stb		r0,13(r3)		# HandleIndex=r3 HandleIndex=r0
	b		.L937
.L938:
#         }
#     }
#     else
#     {
#         (void)CanSM_ProcessController(HandleIndex, CANIF_CS_STARTED);
	.d2line		1476
	mr		r3,r0		# HandleIndex=r3 HandleIndex=r0
	diab.li		r4,1
	bl		CanSM_ProcessController
#         if(CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED == TRUE)
	.d2line		1477
.Llo304:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
.Llo305:
	lbz		r0,24(r3)		# HandleIndex=r0 HandleIndex=r3
	se_cmpi		r0,1		# HandleIndex=r0
	bc		0,2,.L937	# ne
#         {
#             CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_CB_TO_PNC;
	.d2line		1479
.Llo306:
	diab.li		r0,40		# HandleIndex=r0
.Llo307:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
	stb		r0,13(r3)		# HandleIndex=r3 HandleIndex=r0
.L937:
#         }
#     }
# }
	.d2line		1482
	.d2epilogue_begin
.Llo308:
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
.L1286:
	.type		CanSM_NetworkType_act5,@function
	.size		CanSM_NetworkType_act5,.-CanSM_NetworkType_act5
# Number of nodes = 61

# Allocations for CanSM_NetworkType_act5
#	?a4		HandleIndex
#	?a5		$$180
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_act6(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1492,30
#$$ld
.L1293:

#$$bf	CanSM_NetworkType_act6,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
CanSM_NetworkType_act6:
.Llo312:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# HandleIndex=r4 HandleIndex=r3
	.d2prologue_end
# {
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1494
	rlwinm		r4,r4,0,24,31		# HandleIndex=r4 HandleIndex=r4
.Llo313:
	lis		r3,CanSM_NetworkType_p@ha		# CanSM_NetworkType_ptr=r3
.Llo314:
	lwz		r3,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	rlwinm		r5,r4,5,0,26		# HandleIndex=r4
	se_slwi		r4,3		# HandleIndex=r4 HandleIndex=r4
	subf		r4,r4,r5		# HandleIndex=r4 HandleIndex=r4
	se_add		r3,r4		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3 HandleIndex=r4
	mr		r3,r3		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
# 
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_FC_BO_CHECK;
	.d2line		1496
	diab.li		r4,9		# HandleIndex=r4
	lwz		r5,0(r3)		# CanSM_NetworkType_ptr=r3
	sth		r4,2(r5)		# HandleIndex=r4
#     CanSM_NetworkType_ptr->RAM->TxTimeoutstate_b = FALSE;
	.d2line		1497
	diab.li		r5,0
	lwz		r4,0(r3)		# HandleIndex=r4 CanSM_NetworkType_ptr=r3
	stb		r5,23(r4)		# HandleIndex=r4
#     CANSM_STOP_TIMER(CanSM_NetworkType_ptr->RAM->RetryTimerEnabled);
	.d2line		1498
	lwz		r4,0(r3)		# HandleIndex=r4 CanSM_NetworkType_ptr=r3
	stb		r5,10(r4)		# HandleIndex=r4
#     CanSM_NetworkType_ptr->RAM->BufferedRequestMode = CANSM_NO_MODE_REQUESTED;
	.d2line		1499
	diab.li		r4,255		# HandleIndex=r4
	lwz		r3,0(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	stb		r4,25(r3)		# CanSM_NetworkType_ptr=r3 HandleIndex=r4
# }
	.d2line		1500
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo315:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1294:
	.type		CanSM_NetworkType_act6,@function
	.size		CanSM_NetworkType_act6,.-CanSM_NetworkType_act6
# Number of nodes = 36

# Allocations for CanSM_NetworkType_act6
#	?a4		HandleIndex
#	?a5		$$181
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_act7(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1510,30
#$$ld
.L1301:

#$$bf	CanSM_NetworkType_act7,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_act7:
.Llo316:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# HandleIndex=r4 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> DEV_CanSM_00509 CANSM510 <EndRequirements> */
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1513
	rlwinm		r0,r4,0,24,31		# HandleIndex=r4
	lis		r3,CanSM_NetworkType_p@ha		# HandleIndex=r3
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31 HandleIndex=r3
	rlwinm		r3,r0,5,0,26		# HandleIndex=r3
	se_slwi		r0,3
	subf		r0,r0,r3		# HandleIndex=r3
	se_add		r0,r31		# CanSM_NetworkType_ptr=r31
	mr		r31,r0		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r0
# 
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_FC_CC_RSTRT;
	.d2line		1515
	diab.li		r0,10
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
	sth		r0,2(r3)		# HandleIndex=r3
#     (void)CanSM_ProcessController(HandleIndex, CANIF_CS_STARTED);
	.d2line		1516
	mr		r3,r4		# HandleIndex=r3 HandleIndex=r4
.Llo317:
	diab.li		r4,1		# HandleIndex=r4
	bl		CanSM_ProcessController
#     if(CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED == TRUE)
	.d2line		1517
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
.Llo318:
	lbz		r0,24(r3)		# HandleIndex=r3
	se_cmpi		r0,1
	bc		0,2,.L946	# ne
#     {
#         CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_FC_CC_RESTART_TO_PNC;
	.d2line		1519
.Llo319:
	diab.li		r0,39
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
.Llo320:
	stb		r0,13(r3)		# HandleIndex=r3
#         /* <Requirements> ADD_CANSM900400 <EndRequirements> */
#         CanSM_NetworkType_ptr->RAM->BorFailTRepeatMax = TRUE;
	.d2line		1521
	diab.li		r0,1
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
	stb		r0,40(r3)		# HandleIndex=r3
.L946:
#     }
# }
	.d2line		1523
	.d2epilogue_begin
.Llo321:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1302:
	.type		CanSM_NetworkType_act7,@function
	.size		CanSM_NetworkType_act7,.-CanSM_NetworkType_act7
# Number of nodes = 44

# Allocations for CanSM_NetworkType_act7
#	?a4		HandleIndex
#	?a5		$$182
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_act8(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1533,30
#$$ld
.L1309:

#$$bf	CanSM_NetworkType_act8,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
CanSM_NetworkType_act8:
.Llo322:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# HandleIndex=r4 HandleIndex=r3
	.d2prologue_end
# {
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1535
	rlwinm		r4,r4,0,24,31		# HandleIndex=r4 HandleIndex=r4
.Llo323:
	lis		r3,CanSM_NetworkType_p@ha
.Llo324:
	lwz		r3,CanSM_NetworkType_p@l(r3)
	rlwinm		r5,r4,5,0,26		# CanSM_NetworkType_ptr=r5 HandleIndex=r4
.Llo326:
	se_slwi		r4,3		# HandleIndex=r4 HandleIndex=r4
	subf		r4,r4,r5		# HandleIndex=r4 HandleIndex=r4 CanSM_NetworkType_ptr=r5
	se_add		r3,r4		# HandleIndex=r4
	mr		r5,r3		# CanSM_NetworkType_ptr=r5 CanSM_NetworkType_ptr=r3
# 
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_FC_BO_NOBO;
	.d2line		1537
	diab.li		r3,8
	lwz		r4,0(r5)		# HandleIndex=r4 CanSM_NetworkType_ptr=r5
	sth		r3,2(r4)		# HandleIndex=r4
#     CanSM_NetworkType_ptr->RAM->TxTimeoutstate_b = FALSE;
	.d2line		1538
	diab.li		r3,0
	lwz		r4,0(r5)		# HandleIndex=r4 CanSM_NetworkType_ptr=r5
	stb		r3,23(r4)		# HandleIndex=r4
# }
	.d2line		1539
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo325:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1310:
	.type		CanSM_NetworkType_act8,@function
	.size		CanSM_NetworkType_act8,.-CanSM_NetworkType_act8
# Number of nodes = 22

# Allocations for CanSM_NetworkType_act8
#	?a4		HandleIndex
#	?a5		$$183
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_act9(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1549,30
#$$ld
.L1317:

#$$bf	CanSM_NetworkType_act9,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_act9:
.Llo327:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> DEV_CanSM_00514 DEV_CanSM_00515 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1553
	rlwinm		r4,r0,0,24,31		# HandleIndex=r0
	lis		r3,CanSM_NetworkType_p@ha		# CanSM_NetworkType_ptr=r3
.Llo328:
	lwz		r3,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	rlwinm		r5,r4,5,0,26
	se_slwi		r4,3
	subf		r4,r4,r5
	se_add		r3,r4		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	mr		r3,r3		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
#     VAR(uint16,AUTOMATIC) RecoveryTime;
# 
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_FC_TX_OFF;
	.d2line		1556
	diab.li		r5,12
	lwz		r4,0(r3)		# CanSM_NetworkType_ptr=r3
	sth		r5,2(r4)
#     RecoveryTime = CanSM_NetworkType_ptr->CanSMBorTimeL1_u16;
	.d2line		1557
	lhz		r5,12(r3)		# CanSM_NetworkType_ptr=r3
.Llo332:
	mr		r5,r5		# RecoveryTime=r5 RecoveryTime=r5
#     if(CanSM_NetworkType_ptr->RAM->CanSMBorCounter_u8 >= CanSM_NetworkType_ptr->CanSMBorCounterL1ToL2_u8)
	.d2line		1558
	lwz		r4,0(r3)		# CanSM_NetworkType_ptr=r3
	lbz		r4,12(r4)
	lbz		r6,10(r3)		# CanSM_NetworkType_ptr=r3
	se_cmp		r4,r6
	bc		1,0,.L951	# lt
#     {
#         RecoveryTime = CanSM_NetworkType_ptr->CanSMBorTimeL2_u16;
	.d2line		1560
.Llo329:
	lhz		r5,14(r3)		# CanSM_NetworkType_ptr=r3
	mr		r5,r5		# RecoveryTime=r5 RecoveryTime=r5
.L951:
#     }
#     /* TODO: purpose: BOR */
#     if(CanSM_NetworkType_ptr->RAM->CanSMBorTimer_u16 > RecoveryTime)
	.d2line		1563
	lwz		r3,0(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	lhz		r3,4(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	rlwinm		r5,r5,0,16,31		# RecoveryTime=r5 RecoveryTime=r5
	se_cmp		r3,r5		# CanSM_NetworkType_ptr=r3 RecoveryTime=r5
	bc		0,1,.L950	# le
#     {
#         (void)CanSM_ProcessStateMachine(HandleIndex, CANSM_FC_BO_TXOFF_TO_FC_BO_CHECK, FALSE);
	.d2line		1565
.Llo331:
	mr		r3,r0		# HandleIndex=r3 HandleIndex=r0
	diab.li		r4,14
	diab.li		r5,0		# RecoveryTime=r5
	bl		CanSM_ProcessStateMachine
.L950:
#     }
# }
	.d2line		1567
	.d2epilogue_begin
.Llo330:
	lwz		r0,20(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1318:
	.type		CanSM_NetworkType_act9,@function
	.size		CanSM_NetworkType_act9,.-CanSM_NetworkType_act9
# Number of nodes = 57

# Allocations for CanSM_NetworkType_act9
#	?a4		HandleIndex
#	?a5		$$184
#	?a6		CanSM_NetworkType_ptr
#	?a7		RecoveryTime
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_act11(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1577,30
#$$ld
.L1327:

#$$bf	CanSM_NetworkType_act11,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_act11:
.Llo333:
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
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1579
	rlwinm		r4,r0,0,24,31		# HandleIndex=r0
	lis		r3,CanSM_NetworkType_p@ha
.Llo334:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31
	rlwinm		r3,r4,5,0,26
	se_slwi		r4,3
	subf		r4,r4,r3
	se_add		r4,r31		# CanSM_NetworkType_ptr=r31
	mr		r31,r4		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r4
# 
#     CanSM_NetworkType_ptr->RAM->TxTimeoutstate_b = TRUE;
	.d2line		1581
	diab.li		r4,1
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r4,23(r3)
#     if(CanSM_NetworkType_ptr->RAM->State == CANSM_ST_TXTIMEOUT_CC_STOP)
	.d2line		1582
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	lhz		r3,2(r3)
	se_cmpi		r3,27
	bc		0,2,.L956	# ne
#     {
#          (void)CanSM_ProcessController(HandleIndex, CANIF_CS_STOPPED);
	.d2line		1584
.Llo335:
	mr		r3,r0		# HandleIndex=r3 HandleIndex=r0
	diab.li		r4,2
	bl		CanSM_ProcessController
#         if(CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED == TRUE)
	.d2line		1585
.Llo336:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
.Llo337:
	lbz		r0,24(r3)		# HandleIndex=r0 HandleIndex=r3
	se_cmpi		r0,1		# HandleIndex=r0
	bc		0,2,.L955	# ne
#         {
#             CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_TXTIMEOUT_TO_PNC;
	.d2line		1587
.Llo338:
	diab.li		r0,41		# HandleIndex=r0
.Llo339:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
	stb		r0,13(r3)		# HandleIndex=r3 HandleIndex=r0
	b		.L955
.L956:
#         }
#     }
#     else
#     {
#         (void)CanSM_ProcessController(HandleIndex, CANIF_CS_STARTED);
	.d2line		1592
	mr		r3,r0		# HandleIndex=r3 HandleIndex=r0
	diab.li		r4,1
	bl		CanSM_ProcessController
#         if(CanSM_NetworkType_ptr->RAM->T_REPEAT_MAX_HAPPENED == TRUE)
	.d2line		1593
.Llo340:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
.Llo341:
	lbz		r0,24(r3)		# HandleIndex=r0 HandleIndex=r3
	se_cmpi		r0,1		# HandleIndex=r0
	bc		0,2,.L955	# ne
#         {
#             CanSM_NetworkType_ptr->RAM->RequestModeTransition = CANSM_TXTIMEOUT_TO_PNC;
	.d2line		1595
.Llo342:
	diab.li		r0,41		# HandleIndex=r0
.Llo343:
	lwz		r3,0(r31)		# HandleIndex=r3 CanSM_NetworkType_ptr=r31
	stb		r0,13(r3)		# HandleIndex=r3 HandleIndex=r0
.L955:
#         }
#     }
# }
	.d2line		1598
	.d2epilogue_begin
.Llo344:
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
.L1328:
	.type		CanSM_NetworkType_act11,@function
	.size		CanSM_NetworkType_act11,.-CanSM_NetworkType_act11
# Number of nodes = 68

# Allocations for CanSM_NetworkType_act11
#	?a4		HandleIndex
#	?a5		$$185
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_act12(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1608,30
#$$ld
.L1335:

#$$bf	CanSM_NetworkType_act12,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
CanSM_NetworkType_act12:
.Llo345:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# HandleIndex=r4 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> DEV_CanSM_00523 ADD_CANSM335_Conf_1 CANSM536 CANSM385 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1612
	rlwinm		r4,r4,0,24,31		# HandleIndex=r4 HandleIndex=r4
.Llo346:
	lis		r3,CanSM_NetworkType_p@ha		# CanSM_NetworkType_ptr=r3
.Llo347:
	lwz		r3,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	rlwinm		r5,r4,5,0,26		# HandleIndex=r4
	se_slwi		r4,3		# HandleIndex=r4 HandleIndex=r4
	subf		r4,r4,r5		# HandleIndex=r4 HandleIndex=r4
	se_add		r3,r4		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3 HandleIndex=r4
	mr		r3,r3		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
# 
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#     (void)Det_ReportError(CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_MAIN_FUNCTION, CANSM_E_MODE_REQUEST_TIMEOUT);
# #endif
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_REPEAT_MAX_WAIT;
	.d2line		1617
	diab.li		r4,25		# HandleIndex=r4
	lwz		r3,0(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	sth		r4,2(r3)		# CanSM_NetworkType_ptr=r3 HandleIndex=r4
# }
	.d2line		1618
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo348:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1336:
	.type		CanSM_NetworkType_act12,@function
	.size		CanSM_NetworkType_act12,.-CanSM_NetworkType_act12
# Number of nodes = 15

# Allocations for CanSM_NetworkType_act12
#	?a4		HandleIndex
#	?a5		$$186
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact1(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1628,30
#$$ld
.L1343:

#$$bf	CanSM_NetworkType_xact1,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact1:
.Llo349:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# HandleIndex=r0
	stw		r0,20(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> DEV_CanSM_00430 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1632
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo350:
	lis		r3,CanSM_NetworkType_p@ha
.Llo351:
	lwz		r4,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r4
.Llo355:
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r4		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r4
.Llo352:
	mr		r4,r0		# CanSM_NetworkType_ptr=r4 CanSM_NetworkType_ptr=r0
# 
#     CanSM_NetworkType_ptr->RAM->CanSMNetworkMode = COMM_NO_COMMUNICATION;
	.d2line		1634
	diab.li		r0,0		# HandleIndex=r0
.Llo353:
	lwz		r3,0(r4)		# CanSM_NetworkType_ptr=r4
	stb		r0,11(r3)		# HandleIndex=r0
#     ComM_BusSM_ModeIndication(CanSM_NetworkType_ptr->CanSMNetworkHandle, &(CanSM_NetworkType_ptr->RAM->CanSMNetworkMode));
	.d2line		1635
	lbz		r3,5(r4)		# CanSM_NetworkType_ptr=r4
	lwz		r4,0(r4)		# CanSM_NetworkType_ptr=r4 CanSM_NetworkType_ptr=r4
	se_addi		r4,11		# CanSM_NetworkType_ptr=r4 CanSM_NetworkType_ptr=r4
.Llo356:
	bl		ComM_BusSM_ModeIndication
# }
	.d2line		1636
	.d2epilogue_begin
.Llo354:
	lwz		r0,20(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1344:
	.type		CanSM_NetworkType_xact1,@function
	.size		CanSM_NetworkType_xact1,.-CanSM_NetworkType_xact1
# Number of nodes = 28

# Allocations for CanSM_NetworkType_xact1
#	?a4		HandleIndex
#	?a5		$$187
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact2(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1646,30
#$$ld
.L1351:

#$$bf	CanSM_NetworkType_xact2,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
CanSM_NetworkType_xact2:
.Llo357:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# HandleIndex=r4 HandleIndex=r3
	.d2prologue_end
# {
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1648
	rlwinm		r4,r4,0,24,31		# HandleIndex=r4 HandleIndex=r4
.Llo358:
	lis		r3,CanSM_NetworkType_p@ha		# CanSM_NetworkType_ptr=r3
.Llo359:
	lwz		r3,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	rlwinm		r5,r4,5,0,26		# HandleIndex=r4
	se_slwi		r4,3		# HandleIndex=r4 HandleIndex=r4
	subf		r4,r4,r5		# HandleIndex=r4 HandleIndex=r4
	se_add		r3,r4		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3 HandleIndex=r4
	mr		r3,r3		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
# 
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PFC_TRCV_NOR;
	.d2line		1650
	diab.li		r4,22		# HandleIndex=r4
	lwz		r3,0(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	sth		r4,2(r3)		# CanSM_NetworkType_ptr=r3 HandleIndex=r4
# }
	.d2line		1651
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo360:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1352:
	.type		CanSM_NetworkType_xact2,@function
	.size		CanSM_NetworkType_xact2,.-CanSM_NetworkType_xact2
# Number of nodes = 15

# Allocations for CanSM_NetworkType_xact2
#	?a4		HandleIndex
#	?a5		$$188
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact3(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1661,30
#$$ld
.L1359:

#$$bf	CanSM_NetworkType_xact3,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
CanSM_NetworkType_xact3:
.Llo361:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# HandleIndex=r4 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> CANSM495 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1665
	rlwinm		r4,r4,0,24,31		# HandleIndex=r4 HandleIndex=r4
.Llo362:
	lis		r3,CanSM_NetworkType_p@ha		# CanSM_NetworkType_ptr=r3
.Llo363:
	lwz		r3,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	rlwinm		r5,r4,5,0,26		# HandleIndex=r4
	se_slwi		r4,3		# HandleIndex=r4 HandleIndex=r4
	subf		r4,r4,r5		# HandleIndex=r4 HandleIndex=r4
	se_add		r3,r4		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3 HandleIndex=r4
	mr		r3,r3		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
# 
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#     (void)Det_ReportError(CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_MAIN_FUNCTION, CANSM_E_MODE_REQUEST_TIMEOUT);
# #endif
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PRE_NOCOM;
	.d2line		1670
	diab.li		r4,3		# HandleIndex=r4
	lwz		r3,0(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	sth		r4,2(r3)		# CanSM_NetworkType_ptr=r3 HandleIndex=r4
# }
	.d2line		1671
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo364:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1360:
	.type		CanSM_NetworkType_xact3,@function
	.size		CanSM_NetworkType_xact3,.-CanSM_NetworkType_xact3
# Number of nodes = 15

# Allocations for CanSM_NetworkType_xact3
#	?a4		HandleIndex
#	?a5		$$189
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact4(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1681,30
#$$ld
.L1367:

#$$bf	CanSM_NetworkType_xact4,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact4:
.Llo365:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> SWS_CanSM_00539 SWS_CanSM_00647 DEV_CanSM_00435 DEV_CanSM_00540 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType, AUTOMATIC, CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1685
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo366:
	lis		r3,CanSM_NetworkType_p@ha
.Llo367:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31
.Llo375:
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r31		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r31
.Llo368:
	mr		r31,r0		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r0
#     P2CONST(CanSM_ControllerType, AUTOMATIC, CANSM_APPL_CONST) controllers; /* controllers (ControllerType) */
#     VAR(uint8, AUTOMATIC)controllers_Size;
#     P2CONST(CanSM_ControllerType, AUTOMATIC,CANSM_APPL_CONST) controller;
#     VAR(uint8, AUTOMATIC) CanSM_ControllerTypeiter;
# 
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_FULLCOM;
	.d2line		1691
	diab.li		r0,5		# HandleIndex=r0
.Llo369:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r0,2(r3)		# HandleIndex=r0
#     CanSM_NetworkType_ptr->RAM->CanSMNetworkMode = COMM_FULL_COMMUNICATION;
	.d2line		1692
	diab.li		r0,2		# HandleIndex=r0
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r0,11(r3)		# HandleIndex=r0
#     CanSM_NetworkType_ptr->RAM->CanSMBorTimerTxEnsured_u16 = (uint16)0;
	.d2line		1693
	diab.li		r28,0
.Llo386:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r28,6(r3)
#     CanSM_NetworkType_ptr->RAM->CanSMBorCounter_u8 = (uint8)0;
	.d2line		1694
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r28,12(r3)
#     controllers = CanSM_NetworkType_ptr->ControllerType_R16;
	.d2line		1695
	lwz		r30,20(r31)		# CanSM_NetworkType_ptr=r31
.Llo377:
	mr		r30,r30		# controllers=r30 controllers=r30
#     controllers_Size = CanSM_NetworkType_ptr->ControllerType_R16_Size;
	.d2line		1696
	lbz		r29,9(r31)		# CanSM_NetworkType_ptr=r31
.Llo379:
	mr		r29,r29		# controllers_Size=r29 controllers_Size=r29
#     CanSM_ControllerTypeiter = 0;
# 
#     /* Consider ECU passive state */
#     if(CanSM_EcuPassive == FALSE)
	.d2line		1700
	lis		r3,CanSM_EcuPassive@ha
	lbz		r0,CanSM_EcuPassive@l(r3)		# HandleIndex=r0
	se_cmpi		r0,0		# HandleIndex=r0
	bc		0,2,.L971	# ne
.L968:
#     {
#         while(CanSM_ControllerTypeiter < controllers_Size)
	.d2line		1702
.Llo370:
	rlwinm		r3,r28,0,24,31		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo380:
	rlwinm		r0,r29,0,24,31		# HandleIndex=r0 controllers_Size=r29
.Llo371:
	se_cmp		r3,r0		# controller=r3 HandleIndex=r0
	bc		0,0,.L970	# ge
#         {
#             controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		1704
.Llo372:
	rlwinm		r3,r28,3,21,28		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo381:
	se_add		r3,r30		# controller=r3 controller=r3 controllers=r30
	mr		r3,r3		# controller=r3 controller=r3
#             (void)CanIf_SetPduMode( controller->ControllerId_pu8, CANIF_ONLINE );
	.d2line		1705
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo382:
	diab.li		r4,3
	bl		CanIf_SetPduMode
#             CanSM_ControllerTypeiter++;
	.d2line		1706
	diab.addi		r3,r28,1		# controller=r3 CanSM_ControllerTypeiter=r28
	se_addi		r28,1		# CanSM_ControllerTypeiter=r28 CanSM_ControllerTypeiter=r28
	b		.L968
.L971:
#         }
#     }
#     else
#     {
#         while(CanSM_ControllerTypeiter < controllers_Size)
	.d2line		1711
	rlwinm		r3,r28,0,24,31		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo383:
	rlwinm		r0,r29,0,24,31		# HandleIndex=r0 controllers_Size=r29
.Llo373:
	se_cmp		r3,r0		# controller=r3 HandleIndex=r0
	bc		0,0,.L970	# ge
#         {
#             controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		1713
.Llo374:
	rlwinm		r3,r28,3,21,28		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo384:
	se_add		r3,r30		# controller=r3 controller=r3 controllers=r30
	mr		r3,r3		# controller=r3 controller=r3
#             (void)CanIf_SetPduMode( controller->ControllerId_pu8, CANIF_TX_OFFLINE_ACTIVE );
	.d2line		1714
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo385:
	diab.li		r4,2
	bl		CanIf_SetPduMode
#             CanSM_ControllerTypeiter++;
	.d2line		1715
	diab.addi		r3,r28,1		# controller=r3 CanSM_ControllerTypeiter=r28
	se_addi		r28,1		# CanSM_ControllerTypeiter=r28 CanSM_ControllerTypeiter=r28
	b		.L971
.L970:
#         }
#     }
# 
#     ComM_BusSM_ModeIndication(CanSM_NetworkType_ptr->CanSMNetworkHandle, &(CanSM_NetworkType_ptr->RAM->CanSMNetworkMode));
	.d2line		1719
.Llo378:
	lbz		r3,5(r31)		# controller=r3 CanSM_NetworkType_ptr=r31
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	se_addi		r4,11
	bl		ComM_BusSM_ModeIndication
#     BswM_CanSM_CurrentState(CanSM_NetworkType_ptr->CanSMNetworkHandle, CANSM_BSWM_FULL_COMMUNICATION);
	.d2line		1720
	lbz		r3,5(r31)		# controller=r3 CanSM_NetworkType_ptr=r31
	diab.li		r4,2
	bl		BswM_CanSM_CurrentState
# }
	.d2line		1721
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo376:
	lwz		r0,36(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1368:
	.type		CanSM_NetworkType_xact4,@function
	.size		CanSM_NetworkType_xact4,.-CanSM_NetworkType_xact4
# Number of nodes = 130

# Allocations for CanSM_NetworkType_xact4
#	?a4		HandleIndex
#	?a5		$$190
#	?a6		CanSM_NetworkType_ptr
#	?a7		controllers
#	?a8		controllers_Size
#	?a9		controller
#	?a10		CanSM_ControllerTypeiter
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact5(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1733,30
#$$ld
.L1383:

#$$bf	CanSM_NetworkType_xact5,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact5:
.Llo387:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> SWS_CanSM_00539 SWS_CanSM_00647 CANSM432 DEV_CanSM_00435 DEV_CanSM_00540 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType, AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1737
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo388:
	lis		r3,CanSM_NetworkType_p@ha
.Llo389:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31
.Llo397:
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r31		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r31
.Llo390:
	mr		r31,r0		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r0
#     P2CONST(CanSM_ControllerType, AUTOMATIC,CANSM_APPL_CONST) controllers; /* controllers (ControllerType) */
#     VAR(uint8, AUTOMATIC) controllers_Size;
#     P2CONST(CanSM_ControllerType, AUTOMATIC, CANSM_APPL_CONST) controller;
#     VAR(uint8, AUTOMATIC) CanSM_ControllerTypeiter;
# 
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_FULLCOM;
	.d2line		1743
	diab.li		r0,5		# HandleIndex=r0
.Llo391:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r0,2(r3)		# HandleIndex=r0
#     CanSM_NetworkType_ptr->RAM->CanSMNetworkMode = COMM_FULL_COMMUNICATION;
	.d2line		1744
	diab.li		r0,2		# HandleIndex=r0
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r0,11(r3)		# HandleIndex=r0
#     CanSM_NetworkType_ptr->RAM->CanSMBorTimerTxEnsured_u16 = (uint16)0;
	.d2line		1745
	diab.li		r28,0
.Llo408:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r28,6(r3)
#     CanSM_NetworkType_ptr->RAM->CanSMBorCounter_u8 = (uint8)0;
	.d2line		1746
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r28,12(r3)
#     controllers = CanSM_NetworkType_ptr->ControllerType_R16;
	.d2line		1747
	lwz		r30,20(r31)		# CanSM_NetworkType_ptr=r31
.Llo399:
	mr		r30,r30		# controllers=r30 controllers=r30
#     controllers_Size = CanSM_NetworkType_ptr->ControllerType_R16_Size;
	.d2line		1748
	lbz		r29,9(r31)		# CanSM_NetworkType_ptr=r31
.Llo401:
	mr		r29,r29		# controllers_Size=r29 controllers_Size=r29
#     CanSM_ControllerTypeiter = 0;
# 
#     /* Consider ECU passive state */
#     if(CanSM_EcuPassive == FALSE)
	.d2line		1752
	lis		r3,CanSM_EcuPassive@ha
	lbz		r0,CanSM_EcuPassive@l(r3)		# HandleIndex=r0
	se_cmpi		r0,0		# HandleIndex=r0
	bc		0,2,.L981	# ne
.L978:
#     {
#         while(CanSM_ControllerTypeiter < controllers_Size)
	.d2line		1754
.Llo392:
	rlwinm		r3,r28,0,24,31		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo402:
	rlwinm		r0,r29,0,24,31		# HandleIndex=r0 controllers_Size=r29
.Llo393:
	se_cmp		r3,r0		# controller=r3 HandleIndex=r0
	bc		0,0,.L980	# ge
#         {
#             controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		1756
.Llo394:
	rlwinm		r3,r28,3,21,28		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo403:
	se_add		r3,r30		# controller=r3 controller=r3 controllers=r30
	mr		r3,r3		# controller=r3 controller=r3
#             (void)CanIf_SetPduMode( controller->ControllerId_pu8, CANIF_ONLINE );
	.d2line		1757
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo404:
	diab.li		r4,3
	bl		CanIf_SetPduMode
#             CanSM_ControllerTypeiter++;
	.d2line		1758
	diab.addi		r3,r28,1		# controller=r3 CanSM_ControllerTypeiter=r28
	se_addi		r28,1		# CanSM_ControllerTypeiter=r28 CanSM_ControllerTypeiter=r28
	b		.L978
.L981:
#         }
#     }
#     else
#     {
#         while(CanSM_ControllerTypeiter < controllers_Size)
	.d2line		1763
	rlwinm		r3,r28,0,24,31		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo405:
	rlwinm		r0,r29,0,24,31		# HandleIndex=r0 controllers_Size=r29
.Llo395:
	se_cmp		r3,r0		# controller=r3 HandleIndex=r0
	bc		0,0,.L980	# ge
#         {
#             controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		1765
.Llo396:
	rlwinm		r3,r28,3,21,28		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo406:
	se_add		r3,r30		# controller=r3 controller=r3 controllers=r30
	mr		r3,r3		# controller=r3 controller=r3
#             (void)CanIf_SetPduMode( controller->ControllerId_pu8, CANIF_TX_OFFLINE_ACTIVE );
	.d2line		1766
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo407:
	diab.li		r4,2
	bl		CanIf_SetPduMode
#             CanSM_ControllerTypeiter++;
	.d2line		1767
	diab.addi		r3,r28,1		# controller=r3 CanSM_ControllerTypeiter=r28
	se_addi		r28,1		# CanSM_ControllerTypeiter=r28 CanSM_ControllerTypeiter=r28
	b		.L981
.L980:
#         }
#     }
# 
#     ComM_BusSM_ModeIndication(CanSM_NetworkType_ptr->CanSMNetworkHandle, &(CanSM_NetworkType_ptr->RAM->CanSMNetworkMode));
	.d2line		1771
.Llo400:
	lbz		r3,5(r31)		# controller=r3 CanSM_NetworkType_ptr=r31
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	se_addi		r4,11
	bl		ComM_BusSM_ModeIndication
#     BswM_CanSM_CurrentState(CanSM_NetworkType_ptr->CanSMNetworkHandle, CANSM_BSWM_FULL_COMMUNICATION);
	.d2line		1772
	lbz		r3,5(r31)		# controller=r3 CanSM_NetworkType_ptr=r31
	diab.li		r4,2
	bl		BswM_CanSM_CurrentState
# }
	.d2line		1773
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo398:
	lwz		r0,36(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1384:
	.type		CanSM_NetworkType_xact5,@function
	.size		CanSM_NetworkType_xact5,.-CanSM_NetworkType_xact5
# Number of nodes = 130

# Allocations for CanSM_NetworkType_xact5
#	?a4		HandleIndex
#	?a5		$$191
#	?a6		CanSM_NetworkType_ptr
#	?a7		controllers
#	?a8		controllers_Size
#	?a9		controller
#	?a10		CanSM_ControllerTypeiter
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact6(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1783,30
#$$ld
.L1399:

#$$bf	CanSM_NetworkType_xact6,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact6:
.Llo409:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> CANSM434 CANSM541 CANSM537 CANSM538 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType, AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1787
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo410:
	lis		r3,CanSM_NetworkType_p@ha
.Llo411:
	lwz		r28,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r28
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r28		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r28
.Llo412:
	mr		r28,r0		# CanSM_NetworkType_ptr=r28 CanSM_NetworkType_ptr=r0
#     P2CONST(CanSM_ControllerType, AUTOMATIC,CANSM_APPL_CONST) controllers; /* controllers (ControllerType) */
#     VAR(uint8, AUTOMATIC) controllers_Size;
#     P2CONST(CanSM_ControllerType, AUTOMATIC,CANSM_APPL_CONST) controller;
#     VAR( uint8,AUTOMATIC)CanSM_ControllerTypeiter;
# 
#     CanSM_NetworkType_ptr->RAM->CanSMNetworkMode = COMM_SILENT_COMMUNICATION;
	.d2line		1793
	diab.li		r4,1
	lwz		r3,0(r28)		# CanSM_NetworkType_ptr=r28
	stb		r4,11(r3)
#     BswM_CanSM_CurrentState(CanSM_NetworkType_ptr->CanSMNetworkHandle, CANSM_BSWM_SILENT_COMMUNICATION);
	.d2line		1794
	lbz		r3,5(r28)		# CanSM_NetworkType_ptr=r28
	bl		BswM_CanSM_CurrentState
#     controllers = CanSM_NetworkType_ptr->ControllerType_R16;
	.d2line		1795
	lwz		r31,20(r28)		# CanSM_NetworkType_ptr=r28
.Llo418:
	mr		r31,r31		# controllers=r31 controllers=r31
#     controllers_Size = CanSM_NetworkType_ptr->ControllerType_R16_Size;
	.d2line		1796
	lbz		r30,9(r28)		# CanSM_NetworkType_ptr=r28
.Llo422:
	mr		r30,r30		# controllers_Size=r30 controllers_Size=r30
#     CanSM_ControllerTypeiter = 0;
	.d2line		1797
	diab.li		r29,0		# CanSM_ControllerTypeiter=r29
.L987:
#     while(CanSM_ControllerTypeiter < controllers_Size)
	.d2line		1798
.Llo432:
	rlwinm		r0,r29,0,24,31		# HandleIndex=r0 CanSM_ControllerTypeiter=r29
.Llo413:
	rlwinm		r3,r30,0,24,31		# controller=r3 controllers_Size=r30
.Llo424:
	se_cmp		r0,r3		# HandleIndex=r0 controller=r3
	bc		0,0,.L988	# ge
#     {
#         controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		1800
.Llo414:
	rlwinm		r3,r29,3,21,28		# controller=r3 CanSM_ControllerTypeiter=r29
.Llo425:
	se_add		r3,r31		# controller=r3 controller=r3 controllers=r31
	mr		r3,r3		# controller=r3 controller=r3
#         (void)CanIf_SetPduMode(controller->ControllerId_pu8, CANIF_ONLINE);
	.d2line		1801
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo426:
	diab.li		r4,3
	bl		CanIf_SetPduMode
#         CanSM_ControllerTypeiter++;
	.d2line		1802
	diab.addi		r0,r29,1		# HandleIndex=r0 CanSM_ControllerTypeiter=r29
	se_addi		r29,1		# CanSM_ControllerTypeiter=r29 CanSM_ControllerTypeiter=r29
	b		.L987
.L988:
#     }
#     controllers = CanSM_NetworkType_ptr->ControllerType_R16;
	.d2line		1804
.Llo419:
	lwz		r31,20(r28)		# controllers=r31 CanSM_NetworkType_ptr=r28
.Llo420:
	mr		r31,r31		# controllers=r31 controllers=r31
#     controllers_Size = CanSM_NetworkType_ptr->ControllerType_R16_Size;
	.d2line		1805
	lbz		r30,9(r28)		# controllers_Size=r30 CanSM_NetworkType_ptr=r28
.Llo423:
	mr		r30,r30		# controllers_Size=r30 controllers_Size=r30
#     CanSM_ControllerTypeiter = 0;
	.d2line		1806
	diab.li		r29,0		# CanSM_ControllerTypeiter=r29
.L989:
#     while(CanSM_ControllerTypeiter < controllers_Size)
	.d2line		1807
.Llo433:
	rlwinm		r0,r29,0,24,31		# HandleIndex=r0 CanSM_ControllerTypeiter=r29
.Llo415:
	rlwinm		r3,r30,0,24,31		# controller=r3 controllers_Size=r30
.Llo427:
	se_cmp		r0,r3		# HandleIndex=r0 controller=r3
	bc		0,0,.L990	# ge
#     {
#         controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		1809
.Llo416:
	rlwinm		r3,r29,3,21,28		# controller=r3 CanSM_ControllerTypeiter=r29
.Llo428:
	se_add		r3,r31		# controller=r3 controller=r3 controllers=r31
	mr		r3,r3		# controller=r3 controller=r3
#         (void)CanIf_SetPduMode(controller->ControllerId_pu8, CANIF_TX_OFFLINE);
	.d2line		1810
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo429:
	diab.li		r4,1
	bl		CanIf_SetPduMode
#         CanSM_ControllerTypeiter++;
	.d2line		1811
	diab.addi		r0,r29,1		# HandleIndex=r0 CanSM_ControllerTypeiter=r29
	se_addi		r29,1		# CanSM_ControllerTypeiter=r29 CanSM_ControllerTypeiter=r29
	b		.L989
.L990:
#     }
#     ComM_BusSM_ModeIndication(CanSM_NetworkType_ptr->CanSMNetworkHandle, &(CanSM_NetworkType_ptr->RAM->CanSMNetworkMode));
	.d2line		1813
.Llo421:
	lbz		r3,5(r28)		# controller=r3 CanSM_NetworkType_ptr=r28
	lwz		r4,0(r28)		# CanSM_NetworkType_ptr=r28
	se_addi		r4,11
	bl		ComM_BusSM_ModeIndication
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_SILENTCOM;
	.d2line		1814
	diab.li		r3,6		# controller=r3
.Llo430:
	lwz		r4,0(r28)		# CanSM_NetworkType_ptr=r28
	sth		r3,2(r4)		# controller=r3
# }
	.d2line		1815
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo417:
	lwz		r0,36(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo431:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1400:
	.type		CanSM_NetworkType_xact6,@function
	.size		CanSM_NetworkType_xact6,.-CanSM_NetworkType_xact6
# Number of nodes = 127

# Allocations for CanSM_NetworkType_xact6
#	?a4		HandleIndex
#	?a5		$$192
#	?a6		CanSM_NetworkType_ptr
#	?a7		controllers
#	?a8		controllers_Size
#	?a9		controller
#	?a10		CanSM_ControllerTypeiter
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact7(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1826,30
#$$ld
.L1415:

#$$bf	CanSM_NetworkType_xact7,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact7:
.Llo434:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> SWS_CanSM_00539 SWS_CanSM_00647 CANSM550 DEV_CanSM_00435 DEV_CanSM_00540 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType, AUTOMATIC, CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1830
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo435:
	lis		r3,CanSM_NetworkType_p@ha
.Llo436:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31
.Llo444:
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r31		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r31
.Llo437:
	mr		r31,r0		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r0
#     P2CONST(CanSM_ControllerType, AUTOMATIC,CANSM_APPL_CONST) controllers; /* controllers (ControllerType) */
#     VAR(uint8, AUTOMATIC)controllers_Size;
#     P2CONST(CanSM_ControllerType, AUTOMATIC, CANSM_APPL_CONST) controller;
#     VAR(uint8, AUTOMATIC) CanSM_ControllerTypeiter;
# 
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_FULLCOM;
	.d2line		1836
	diab.li		r0,5		# HandleIndex=r0
.Llo438:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r0,2(r3)		# HandleIndex=r0
#     CanSM_NetworkType_ptr->RAM->CanSMNetworkMode = COMM_FULL_COMMUNICATION;
	.d2line		1837
	diab.li		r0,2		# HandleIndex=r0
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r0,11(r3)		# HandleIndex=r0
#     CanSM_NetworkType_ptr->RAM->CanSMBorTimerTxEnsured_u16 = (uint16)0;
	.d2line		1838
	diab.li		r28,0
.Llo455:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r28,6(r3)
#     controllers = CanSM_NetworkType_ptr->ControllerType_R16;
	.d2line		1839
	lwz		r30,20(r31)		# CanSM_NetworkType_ptr=r31
.Llo446:
	mr		r30,r30		# controllers=r30 controllers=r30
#     controllers_Size = CanSM_NetworkType_ptr->ControllerType_R16_Size;
	.d2line		1840
	lbz		r29,9(r31)		# CanSM_NetworkType_ptr=r31
.Llo448:
	mr		r29,r29		# controllers_Size=r29 controllers_Size=r29
#     CanSM_ControllerTypeiter = 0;
# 
#     /* Consider ECU passive state */
#     if(CanSM_EcuPassive == FALSE)
	.d2line		1844
	lis		r3,CanSM_EcuPassive@ha
	lbz		r0,CanSM_EcuPassive@l(r3)		# HandleIndex=r0
	se_cmpi		r0,0		# HandleIndex=r0
	bc		0,2,.L1000	# ne
.L997:
#     {
#         while(CanSM_ControllerTypeiter < controllers_Size)
	.d2line		1846
.Llo439:
	rlwinm		r3,r28,0,24,31		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo449:
	rlwinm		r0,r29,0,24,31		# HandleIndex=r0 controllers_Size=r29
.Llo440:
	se_cmp		r3,r0		# controller=r3 HandleIndex=r0
	bc		0,0,.L999	# ge
#         {
#             controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		1848
.Llo441:
	rlwinm		r3,r28,3,21,28		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo450:
	se_add		r3,r30		# controller=r3 controller=r3 controllers=r30
	mr		r3,r3		# controller=r3 controller=r3
#             (void)CanIf_SetPduMode( controller->ControllerId_pu8, CANIF_ONLINE );
	.d2line		1849
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo451:
	diab.li		r4,3
	bl		CanIf_SetPduMode
#             CanSM_ControllerTypeiter++;
	.d2line		1850
	diab.addi		r3,r28,1		# controller=r3 CanSM_ControllerTypeiter=r28
	se_addi		r28,1		# CanSM_ControllerTypeiter=r28 CanSM_ControllerTypeiter=r28
	b		.L997
.L1000:
#         }
#     }
#     else
#     {
#         while(CanSM_ControllerTypeiter < controllers_Size)
	.d2line		1855
	rlwinm		r3,r28,0,24,31		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo452:
	rlwinm		r0,r29,0,24,31		# HandleIndex=r0 controllers_Size=r29
.Llo442:
	se_cmp		r3,r0		# controller=r3 HandleIndex=r0
	bc		0,0,.L999	# ge
#         {
#             controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		1857
.Llo443:
	rlwinm		r3,r28,3,21,28		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo453:
	se_add		r3,r30		# controller=r3 controller=r3 controllers=r30
	mr		r3,r3		# controller=r3 controller=r3
#             (void)CanIf_SetPduMode( controller->ControllerId_pu8, CANIF_TX_OFFLINE_ACTIVE );
	.d2line		1858
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo454:
	diab.li		r4,2
	bl		CanIf_SetPduMode
#             CanSM_ControllerTypeiter++;
	.d2line		1859
	diab.addi		r3,r28,1		# controller=r3 CanSM_ControllerTypeiter=r28
	se_addi		r28,1		# CanSM_ControllerTypeiter=r28 CanSM_ControllerTypeiter=r28
	b		.L1000
.L999:
#         }
#     }
# 
#     ComM_BusSM_ModeIndication(CanSM_NetworkType_ptr->CanSMNetworkHandle, &(CanSM_NetworkType_ptr->RAM->CanSMNetworkMode));
	.d2line		1863
.Llo447:
	lbz		r3,5(r31)		# controller=r3 CanSM_NetworkType_ptr=r31
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	se_addi		r4,11
	bl		ComM_BusSM_ModeIndication
#     BswM_CanSM_CurrentState(CanSM_NetworkType_ptr->CanSMNetworkHandle, CANSM_BSWM_FULL_COMMUNICATION);
	.d2line		1864
	lbz		r3,5(r31)		# controller=r3 CanSM_NetworkType_ptr=r31
	diab.li		r4,2
	bl		BswM_CanSM_CurrentState
# }
	.d2line		1865
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo445:
	lwz		r0,36(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1416:
	.type		CanSM_NetworkType_xact7,@function
	.size		CanSM_NetworkType_xact7,.-CanSM_NetworkType_xact7
# Number of nodes = 123

# Allocations for CanSM_NetworkType_xact7
#	?a4		HandleIndex
#	?a5		$$193
#	?a6		CanSM_NetworkType_ptr
#	?a7		controllers
#	?a8		controllers_Size
#	?a9		controller
#	?a10		CanSM_ControllerTypeiter
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact8(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1875,30
#$$ld
.L1431:

#$$bf	CanSM_NetworkType_xact8,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact8:
.Llo456:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr		# HandleIndex=r0
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> CANSM431 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType, AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1879
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo457:
	lis		r3,CanSM_NetworkType_p@ha
.Llo458:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r31		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r31
.Llo459:
	mr		r31,r0		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r0
# 
#     BswM_CanSM_CurrentState(CanSM_NetworkType_ptr->CanSMNetworkHandle, CANSM_BSWM_NO_COMMUNICATION);
	.d2line		1881
	lbz		r3,5(r31)		# CanSM_NetworkType_ptr=r31
	diab.li		r4,0
	bl		BswM_CanSM_CurrentState
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PRE_NOCOM;
	.d2line		1882
	diab.li		r3,3
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r3,2(r4)
# }
	.d2line		1883
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo460:
	lwz		r0,36(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1432:
	.type		CanSM_NetworkType_xact8,@function
	.size		CanSM_NetworkType_xact8,.-CanSM_NetworkType_xact8
# Number of nodes = 25

# Allocations for CanSM_NetworkType_xact8
#	?a4		HandleIndex
#	?a5		$$194
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact9(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1893,30
#$$ld
.L1439:

#$$bf	CanSM_NetworkType_xact9,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact9:
.Llo461:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# HandleIndex=r0
	stw		r0,20(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     CONSTP2CONST(CanSM_NetworkType, AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1895
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo462:
	lis		r3,CanSM_NetworkType_p@ha
.Llo463:
	lwz		r4,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r4
.Llo467:
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r4		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r4
.Llo464:
	mr		r4,r0		# CanSM_NetworkType_ptr=r4 CanSM_NetworkType_ptr=r0
# 
#     CanSM_NetworkType_ptr->RAM->CanSMNetworkMode = COMM_NO_COMMUNICATION;
	.d2line		1897
	diab.li		r0,0		# HandleIndex=r0
.Llo465:
	lwz		r3,0(r4)		# CanSM_NetworkType_ptr=r4
	stb		r0,11(r3)		# HandleIndex=r0
#     ComM_BusSM_ModeIndication(CanSM_NetworkType_ptr->CanSMNetworkHandle, &(CanSM_NetworkType_ptr->RAM->CanSMNetworkMode));
	.d2line		1898
	lbz		r3,5(r4)		# CanSM_NetworkType_ptr=r4
	lwz		r4,0(r4)		# CanSM_NetworkType_ptr=r4 CanSM_NetworkType_ptr=r4
	se_addi		r4,11		# CanSM_NetworkType_ptr=r4 CanSM_NetworkType_ptr=r4
.Llo468:
	bl		ComM_BusSM_ModeIndication
# }
	.d2line		1899
	.d2epilogue_begin
.Llo466:
	lwz		r0,20(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1440:
	.type		CanSM_NetworkType_xact9,@function
	.size		CanSM_NetworkType_xact9,.-CanSM_NetworkType_xact9
# Number of nodes = 28

# Allocations for CanSM_NetworkType_xact9
#	?a4		HandleIndex
#	?a5		$$195
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact10(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1909,30
#$$ld
.L1447:

#$$bf	CanSM_NetworkType_xact10,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact10:
.Llo469:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> CANSM433 CANSM434 CANSM541 CANSM537 CANSM538 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1913
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo470:
	lis		r3,CanSM_NetworkType_p@ha
.Llo471:
	lwz		r28,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r28
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r28		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r28
.Llo472:
	mr		r28,r0		# CanSM_NetworkType_ptr=r28 CanSM_NetworkType_ptr=r0
#     P2CONST(CanSM_ControllerType, AUTOMATIC,CANSM_APPL_CONST ) controllers; /* controllers (ControllerType) */
#     VAR(uint8, AUTOMATIC)controllers_Size;
#     P2CONST(CanSM_ControllerType, AUTOMATIC,CANSM_APPL_CONST) controller;
#     VAR(uint8, AUTOMATIC) CanSM_ControllerTypeiter;
# 
#     CanSM_NetworkType_ptr->RAM->CanSMNetworkMode = COMM_SILENT_COMMUNICATION;
	.d2line		1919
	diab.li		r4,1
	lwz		r3,0(r28)		# CanSM_NetworkType_ptr=r28
	stb		r4,11(r3)
#     BswM_CanSM_CurrentState( CanSM_NetworkType_ptr->CanSMNetworkHandle, CANSM_BSWM_SILENT_COMMUNICATION );
	.d2line		1920
	lbz		r3,5(r28)		# CanSM_NetworkType_ptr=r28
	bl		BswM_CanSM_CurrentState
#     controllers = CanSM_NetworkType_ptr->ControllerType_R16;
	.d2line		1921
	lwz		r31,20(r28)		# CanSM_NetworkType_ptr=r28
.Llo478:
	mr		r31,r31		# controllers=r31 controllers=r31
#     controllers_Size = CanSM_NetworkType_ptr->ControllerType_R16_Size;
	.d2line		1922
	lbz		r30,9(r28)		# CanSM_NetworkType_ptr=r28
.Llo482:
	mr		r30,r30		# controllers_Size=r30 controllers_Size=r30
#     CanSM_ControllerTypeiter = 0;
	.d2line		1923
	diab.li		r29,0		# CanSM_ControllerTypeiter=r29
.L1008:
#     while(CanSM_ControllerTypeiter < controllers_Size)
	.d2line		1924
.Llo492:
	rlwinm		r0,r29,0,24,31		# HandleIndex=r0 CanSM_ControllerTypeiter=r29
.Llo473:
	rlwinm		r3,r30,0,24,31		# controller=r3 controllers_Size=r30
.Llo484:
	se_cmp		r0,r3		# HandleIndex=r0 controller=r3
	bc		0,0,.L1009	# ge
#     {
#         controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		1926
.Llo474:
	rlwinm		r3,r29,3,21,28		# controller=r3 CanSM_ControllerTypeiter=r29
.Llo485:
	se_add		r3,r31		# controller=r3 controller=r3 controllers=r31
	mr		r3,r3		# controller=r3 controller=r3
#         (void)CanIf_SetPduMode(controller->ControllerId_pu8, CANIF_ONLINE);
	.d2line		1927
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo486:
	diab.li		r4,3
	bl		CanIf_SetPduMode
#         CanSM_ControllerTypeiter++;
	.d2line		1928
	diab.addi		r0,r29,1		# HandleIndex=r0 CanSM_ControllerTypeiter=r29
	se_addi		r29,1		# CanSM_ControllerTypeiter=r29 CanSM_ControllerTypeiter=r29
	b		.L1008
.L1009:
#     }
#     controllers = CanSM_NetworkType_ptr->ControllerType_R16;
	.d2line		1930
.Llo479:
	lwz		r31,20(r28)		# controllers=r31 CanSM_NetworkType_ptr=r28
.Llo480:
	mr		r31,r31		# controllers=r31 controllers=r31
#     controllers_Size = CanSM_NetworkType_ptr->ControllerType_R16_Size;
	.d2line		1931
	lbz		r30,9(r28)		# controllers_Size=r30 CanSM_NetworkType_ptr=r28
.Llo483:
	mr		r30,r30		# controllers_Size=r30 controllers_Size=r30
#     CanSM_ControllerTypeiter = 0;
	.d2line		1932
	diab.li		r29,0		# CanSM_ControllerTypeiter=r29
.L1010:
#     while(CanSM_ControllerTypeiter < controllers_Size)
	.d2line		1933
.Llo493:
	rlwinm		r0,r29,0,24,31		# HandleIndex=r0 CanSM_ControllerTypeiter=r29
.Llo475:
	rlwinm		r3,r30,0,24,31		# controller=r3 controllers_Size=r30
.Llo487:
	se_cmp		r0,r3		# HandleIndex=r0 controller=r3
	bc		0,0,.L1011	# ge
#     {
#         controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		1935
.Llo476:
	rlwinm		r3,r29,3,21,28		# controller=r3 CanSM_ControllerTypeiter=r29
.Llo488:
	se_add		r3,r31		# controller=r3 controller=r3 controllers=r31
	mr		r3,r3		# controller=r3 controller=r3
#         (void)CanIf_SetPduMode( controller->ControllerId_pu8, CANIF_TX_OFFLINE );
	.d2line		1936
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo489:
	diab.li		r4,1
	bl		CanIf_SetPduMode
#         CanSM_ControllerTypeiter++;
	.d2line		1937
	diab.addi		r0,r29,1		# HandleIndex=r0 CanSM_ControllerTypeiter=r29
	se_addi		r29,1		# CanSM_ControllerTypeiter=r29 CanSM_ControllerTypeiter=r29
	b		.L1010
.L1011:
# 
#     }
#     ComM_BusSM_ModeIndication(CanSM_NetworkType_ptr->CanSMNetworkHandle, &(CanSM_NetworkType_ptr->RAM->CanSMNetworkMode));
	.d2line		1940
.Llo481:
	lbz		r3,5(r28)		# controller=r3 CanSM_NetworkType_ptr=r28
	lwz		r4,0(r28)		# CanSM_NetworkType_ptr=r28
	se_addi		r4,11
	bl		ComM_BusSM_ModeIndication
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_SILENTCOM;
	.d2line		1941
	diab.li		r3,6		# controller=r3
.Llo490:
	lwz		r4,0(r28)		# CanSM_NetworkType_ptr=r28
	sth		r3,2(r4)		# controller=r3
# }
	.d2line		1942
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo477:
	lwz		r0,36(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo491:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1448:
	.type		CanSM_NetworkType_xact10,@function
	.size		CanSM_NetworkType_xact10,.-CanSM_NetworkType_xact10
# Number of nodes = 127

# Allocations for CanSM_NetworkType_xact10
#	?a4		HandleIndex
#	?a5		$$196
#	?a6		CanSM_NetworkType_ptr
#	?a7		controllers
#	?a8		controllers_Size
#	?a9		controller
#	?a10		CanSM_ControllerTypeiter
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact11(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1952,30
#$$ld
.L1463:

#$$bf	CanSM_NetworkType_xact11,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact11:
.Llo494:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# HandleIndex=r0
	stw		r0,20(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> CANSM528 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1956
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo495:
	lis		r3,CanSM_NetworkType_p@ha		# CanSM_NetworkType_ptr=r3
.Llo496:
	lwz		r3,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	rlwinm		r4,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r4		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r3		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r3
.Llo497:
	mr		r3,r0		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r0
# 
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_CB_CC_STOP;
	.d2line		1958
	diab.li		r0,23		# HandleIndex=r0
.Llo498:
	lwz		r4,0(r3)		# CanSM_NetworkType_ptr=r3
	sth		r0,2(r4)		# HandleIndex=r0
#     BswM_CanSM_CurrentState(CanSM_NetworkType_ptr->CanSMNetworkHandle, CANSM_BSWM_CHANGE_BAUDRATE);
	.d2line		1959
	lbz		r3,5(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
.Llo500:
	diab.li		r4,4
	bl		BswM_CanSM_CurrentState
# }
	.d2line		1960
	.d2epilogue_begin
.Llo499:
	lwz		r0,20(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1464:
	.type		CanSM_NetworkType_xact11,@function
	.size		CanSM_NetworkType_xact11,.-CanSM_NetworkType_xact11
# Number of nodes = 25

# Allocations for CanSM_NetworkType_xact11
#	?a4		HandleIndex
#	?a5		$$197
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact12(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1970,30
#$$ld
.L1471:

#$$bf	CanSM_NetworkType_xact12,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact12:
.Llo501:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr		# HandleIndex=r0
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> CANSM072 CANSM074 CANSM498 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1974
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo502:
	lis		r3,CanSM_NetworkType_p@ha
.Llo503:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r31		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r31
.Llo504:
	mr		r31,r0		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r0
# 
#     Dem_ReportErrorStatus(CanSM_NetworkType_ptr->CanSMBorErrEvent, DEM_EVENT_STATUS_PASSED);
	.d2line		1976
	lhz		r3,18(r31)		# CanSM_NetworkType_ptr=r31
	diab.li		r4,0
	bl		Dem_ReportErrorStatus
#     CanSM_NetworkType_ptr->RAM->CanSMBorCounter_u8 = (uint8)0;
	.d2line		1977
	diab.li		r3,0
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r3,12(r4)
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_FC_BO_NOBO;
	.d2line		1978
	diab.li		r3,8
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r3,2(r4)
# }
	.d2line		1979
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo505:
	lwz		r0,36(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1472:
	.type		CanSM_NetworkType_xact12,@function
	.size		CanSM_NetworkType_xact12,.-CanSM_NetworkType_xact12
# Number of nodes = 32

# Allocations for CanSM_NetworkType_xact12
#	?a4		HandleIndex
#	?a5		$$198
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact13(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         1989,30
#$$ld
.L1479:

#$$bf	CanSM_NetworkType_xact13,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact13:
.Llo506:
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
#     /* <Requirements> CANSM072 CANSM074 CANSM508 CANSM521 CANSM522 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType, AUTOMATIC, CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		1993
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo507:
	lis		r3,CanSM_NetworkType_p@ha
.Llo508:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r31		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r31
.Llo509:
	mr		r31,r0		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r0
# 
#     /* Bus-off counting stops at 255. */
#     if (CanSM_NetworkType_ptr->RAM->CanSMBorCounter_u8 < 255U)
	.d2line		1996
.Llo514:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
.Llo515:
	lbz		r0,12(r3)		# HandleIndex=r0
.Llo510:
	cmpli		0,0,r0,255		# HandleIndex=r0
	bc		0,0,.L1019	# ge
#     {
#         CanSM_NetworkType_ptr->RAM->CanSMBorCounter_u8++;
	.d2line		1998
.Llo511:
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	lbz		r3,12(r4)
	se_addi		r3,1
	stb		r3,12(r4)
.L1019:
#     }
#     CanSM_NetworkType_ptr->RAM->CanSMNetworkMode = COMM_SILENT_COMMUNICATION;
	.d2line		2000
	diab.li		r0,1		# HandleIndex=r0
.Llo512:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r0,11(r3)		# HandleIndex=r0
#     BswM_CanSM_CurrentState(CanSM_NetworkType_ptr->CanSMNetworkHandle, CANSM_BSWM_BUS_OFF);
	.d2line		2001
	lbz		r3,5(r31)		# CanSM_NetworkType_ptr=r31
	diab.li		r4,3
	bl		BswM_CanSM_CurrentState
#     ComM_BusSM_ModeIndication(CanSM_NetworkType_ptr->CanSMNetworkHandle, &(CanSM_NetworkType_ptr->RAM->CanSMNetworkMode));
	.d2line		2002
.Llo513:
	lbz		r3,5(r31)		# CanSM_NetworkType_ptr=r31
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	se_addi		r4,11
	bl		ComM_BusSM_ModeIndication
#     Dem_ReportErrorStatus( CanSM_NetworkType_ptr->CanSMBorErrEvent, DEM_EVENT_STATUS_PREFAILED );
	.d2line		2003
	lhz		r3,18(r31)		# CanSM_NetworkType_ptr=r31
	diab.li		r4,3
	bl		Dem_ReportErrorStatus
# }
	.d2line		2004
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo516:
	lwz		r0,36(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1480:
	.type		CanSM_NetworkType_xact13,@function
	.size		CanSM_NetworkType_xact13,.-CanSM_NetworkType_xact13
# Number of nodes = 62

# Allocations for CanSM_NetworkType_xact13
#	?a4		HandleIndex
#	?a5		$$199
#	?a6		$$165
#	?a7		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact14(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         2014,30
#$$ld
.L1487:

#$$bf	CanSM_NetworkType_xact14,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact14:
.Llo517:
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
#     /* <Requirements> CANSM072 CANSM074 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		2018
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo518:
	lis		r3,CanSM_NetworkType_p@ha
.Llo519:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r31		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r31
.Llo520:
	mr		r31,r0		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r0
# 
#     /* Bus-off counting stops at 255. */
#     if (CanSM_NetworkType_ptr->RAM->CanSMBorCounter_u8 < 255U)
	.d2line		2021
.Llo525:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
.Llo526:
	lbz		r0,12(r3)		# HandleIndex=r0
.Llo521:
	cmpli		0,0,r0,255		# HandleIndex=r0
	bc		0,0,.L1022	# ge
#     {
#         CanSM_NetworkType_ptr->RAM->CanSMBorCounter_u8++;
	.d2line		2023
.Llo522:
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	lbz		r3,12(r4)
	se_addi		r3,1
	stb		r3,12(r4)
.L1022:
#     }
#     CanSM_NetworkType_ptr->RAM->CanSMNetworkMode = COMM_SILENT_COMMUNICATION;
	.d2line		2025
	diab.li		r0,1		# HandleIndex=r0
.Llo523:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r0,11(r3)		# HandleIndex=r0
#     BswM_CanSM_CurrentState( CanSM_NetworkType_ptr->CanSMNetworkHandle, CANSM_BSWM_BUS_OFF );
	.d2line		2026
	lbz		r3,5(r31)		# CanSM_NetworkType_ptr=r31
	diab.li		r4,3
	bl		BswM_CanSM_CurrentState
#     ComM_BusSM_ModeIndication(CanSM_NetworkType_ptr->CanSMNetworkHandle, &(CanSM_NetworkType_ptr->RAM->CanSMNetworkMode));
	.d2line		2027
.Llo524:
	lbz		r3,5(r31)		# CanSM_NetworkType_ptr=r31
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	se_addi		r4,11
	bl		ComM_BusSM_ModeIndication
#     Dem_ReportErrorStatus(CanSM_NetworkType_ptr->CanSMBorErrEvent, DEM_EVENT_STATUS_PREFAILED);
	.d2line		2028
	lhz		r3,18(r31)		# CanSM_NetworkType_ptr=r31
	diab.li		r4,3
	bl		Dem_ReportErrorStatus
# }
	.d2line		2029
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo527:
	lwz		r0,36(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1488:
	.type		CanSM_NetworkType_xact14,@function
	.size		CanSM_NetworkType_xact14,.-CanSM_NetworkType_xact14
# Number of nodes = 62

# Allocations for CanSM_NetworkType_xact14
#	?a4		HandleIndex
#	?a5		$$200
#	?a6		$$166
#	?a7		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact15(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         2039,30
#$$ld
.L1495:

#$$bf	CanSM_NetworkType_xact15,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact15:
.Llo528:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> CANSM513 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType, AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		2043
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo529:
	lis		r3,CanSM_NetworkType_p@ha		# CanSM_NetworkType_ptr=r3
.Llo530:
	lwz		r3,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	rlwinm		r4,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r4		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r3		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r3
.Llo531:
	mr		r3,r0		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r0
#     P2CONST(CanSM_ControllerType, AUTOMATIC,CANSM_APPL_CONST) controllers; /* controllers (ControllerType) */
#     VAR(uint8, AUTOMATIC) controllers_Size;
#     P2CONST(CanSM_ControllerType, AUTOMATIC,CANSM_APPL_CONST) controller;
#     VAR(uint8, AUTOMATIC) CanSM_ControllerTypeiter;
# 
#     controllers = CanSM_NetworkType_ptr->ControllerType_R16;
	.d2line		2049
.Llo534:
	lwz		r31,20(r3)		# CanSM_NetworkType_ptr=r3
.Llo535:
	mr		r31,r31		# controllers=r31 controllers=r31
#     controllers_Size = CanSM_NetworkType_ptr->ControllerType_R16_Size;
	.d2line		2050
	lbz		r30,9(r3)		# CanSM_NetworkType_ptr=r3
.Llo541:
	mr		r30,r30		# controllers_Size=r30 controllers_Size=r30
#     CanSM_ControllerTypeiter = 0;
	.d2line		2051
	diab.li		r29,0		# CanSM_ControllerTypeiter=r29
.L1025:
#     while(CanSM_ControllerTypeiter < controllers_Size)
	.d2line		2052
.Llo536:
	rlwinm		r3,r29,0,24,31		# CanSM_NetworkType_ptr=r3 CanSM_ControllerTypeiter=r29
.Llo537:
	rlwinm		r0,r30,0,24,31		# HandleIndex=r0 controllers_Size=r30
.Llo532:
	se_cmp		r3,r0		# CanSM_NetworkType_ptr=r3 HandleIndex=r0
	bc		0,0,.L1024	# ge
#     {
#         controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		2054
.Llo533:
	rlwinm		r3,r29,3,21,28		# CanSM_NetworkType_ptr=r3 CanSM_ControllerTypeiter=r29
.Llo538:
	se_add		r3,r31		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3 controllers=r31
.Llo539:
	mr		r3,r3		# controller=r3 controller=r3
#         (void)CanIf_SetPduMode( controller->ControllerId_pu8, CANIF_TX_OFFLINE );
	.d2line		2055
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo542:
	diab.li		r4,1
	bl		CanIf_SetPduMode
#         CanSM_ControllerTypeiter++;
	.d2line		2056
	diab.addi		r3,r29,1		# controller=r3 CanSM_ControllerTypeiter=r29
	se_addi		r29,1		# CanSM_ControllerTypeiter=r29 CanSM_ControllerTypeiter=r29
	b		.L1025
.L1024:
#     }
# }
	.d2line		2058
	.d2epilogue_begin
.Llo540:
	lmw		r29,20(r1)		# offset r1+20  0x14
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
.L1496:
	.type		CanSM_NetworkType_xact15,@function
	.size		CanSM_NetworkType_xact15,.-CanSM_NetworkType_xact15
# Number of nodes = 49

# Allocations for CanSM_NetworkType_xact15
#	?a4		HandleIndex
#	?a5		$$201
#	?a6		CanSM_NetworkType_ptr
#	?a7		controllers
#	?a8		controllers_Size
#	?a9		controller
#	?a10		CanSM_ControllerTypeiter
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact16(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         2068,30
#$$ld
.L1511:

#$$bf	CanSM_NetworkType_xact16,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact16:
.Llo543:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> SWS_CanSM_00516 SWS_CanSM_00648 CANSM517 CANSM518 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType, AUTOMATIC, CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		2072
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo544:
	lis		r3,CanSM_NetworkType_p@ha
.Llo545:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31
.Llo553:
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r31		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r31
.Llo546:
	mr		r31,r0		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r0
#     P2CONST(CanSM_ControllerType, AUTOMATIC,CANSM_APPL_CONST) controllers; /* controllers (ControllerType) */
#     VAR(uint8, AUTOMATIC) controllers_Size;
#     P2CONST(CanSM_ControllerType,AUTOMATIC,CANSM_APPL_CONST)controller;
#     VAR(uint8, AUTOMATIC) CanSM_ControllerTypeiter;
# 
#     CanSM_NetworkType_ptr->RAM->CanSMNetworkMode = COMM_FULL_COMMUNICATION;
	.d2line		2078
	diab.li		r0,2		# HandleIndex=r0
.Llo547:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r0,11(r3)		# HandleIndex=r0
#     CanSM_NetworkType_ptr->RAM->CanSMBorTimerTxEnsured_u16 = (uint16)0;
	.d2line		2079
	diab.li		r28,0
.Llo564:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r28,6(r3)
#     controllers = CanSM_NetworkType_ptr->ControllerType_R16;
	.d2line		2080
	lwz		r30,20(r31)		# CanSM_NetworkType_ptr=r31
.Llo555:
	mr		r30,r30		# controllers=r30 controllers=r30
#     controllers_Size = CanSM_NetworkType_ptr->ControllerType_R16_Size;
	.d2line		2081
	lbz		r29,9(r31)		# CanSM_NetworkType_ptr=r31
.Llo557:
	mr		r29,r29		# controllers_Size=r29 controllers_Size=r29
#     CanSM_ControllerTypeiter = 0;
# 
# 
#     /* Consider ECU passive state */
#     if(CanSM_EcuPassive == FALSE)
	.d2line		2086
	lis		r3,CanSM_EcuPassive@ha
	lbz		r0,CanSM_EcuPassive@l(r3)		# HandleIndex=r0
	se_cmpi		r0,0		# HandleIndex=r0
	bc		0,2,.L1034	# ne
.L1031:
#     {
#         while(CanSM_ControllerTypeiter < controllers_Size)
	.d2line		2088
.Llo548:
	rlwinm		r3,r28,0,24,31		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo558:
	rlwinm		r0,r29,0,24,31		# HandleIndex=r0 controllers_Size=r29
.Llo549:
	se_cmp		r3,r0		# controller=r3 HandleIndex=r0
	bc		0,0,.L1033	# ge
#         {
#             controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		2090
.Llo550:
	rlwinm		r3,r28,3,21,28		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo559:
	se_add		r3,r30		# controller=r3 controller=r3 controllers=r30
	mr		r3,r3		# controller=r3 controller=r3
#             (void)CanIf_SetPduMode( controller->ControllerId_pu8, CANIF_ONLINE );
	.d2line		2091
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo560:
	diab.li		r4,3
	bl		CanIf_SetPduMode
#             CanSM_ControllerTypeiter++;
	.d2line		2092
	diab.addi		r3,r28,1		# controller=r3 CanSM_ControllerTypeiter=r28
	se_addi		r28,1		# CanSM_ControllerTypeiter=r28 CanSM_ControllerTypeiter=r28
	b		.L1031
.L1034:
#         }
#     }
#     else
#     {
#         while(CanSM_ControllerTypeiter < controllers_Size)
	.d2line		2097
	rlwinm		r3,r28,0,24,31		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo561:
	rlwinm		r0,r29,0,24,31		# HandleIndex=r0 controllers_Size=r29
.Llo551:
	se_cmp		r3,r0		# controller=r3 HandleIndex=r0
	bc		0,0,.L1033	# ge
#         {
#             controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		2099
.Llo552:
	rlwinm		r3,r28,3,21,28		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo562:
	se_add		r3,r30		# controller=r3 controller=r3 controllers=r30
	mr		r3,r3		# controller=r3 controller=r3
#             (void)CanIf_SetPduMode( controller->ControllerId_pu8, CANIF_TX_OFFLINE_ACTIVE );
	.d2line		2100
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo563:
	diab.li		r4,2
	bl		CanIf_SetPduMode
#             CanSM_ControllerTypeiter++;
	.d2line		2101
	diab.addi		r3,r28,1		# controller=r3 CanSM_ControllerTypeiter=r28
	se_addi		r28,1		# CanSM_ControllerTypeiter=r28 CanSM_ControllerTypeiter=r28
	b		.L1034
.L1033:
#         }
#     }
# 
#     BswM_CanSM_CurrentState(CanSM_NetworkType_ptr->CanSMNetworkHandle, CANSM_BSWM_FULL_COMMUNICATION);
	.d2line		2105
.Llo556:
	lbz		r3,5(r31)		# controller=r3 CanSM_NetworkType_ptr=r31
	diab.li		r4,2
	bl		BswM_CanSM_CurrentState
#     ComM_BusSM_ModeIndication(CanSM_NetworkType_ptr->CanSMNetworkHandle, &(CanSM_NetworkType_ptr->RAM->CanSMNetworkMode));
	.d2line		2106
	lbz		r3,5(r31)		# controller=r3 CanSM_NetworkType_ptr=r31
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	se_addi		r4,11
	bl		ComM_BusSM_ModeIndication
# }
	.d2line		2107
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo554:
	lwz		r0,36(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1512:
	.type		CanSM_NetworkType_xact16,@function
	.size		CanSM_NetworkType_xact16,.-CanSM_NetworkType_xact16
# Number of nodes = 116

# Allocations for CanSM_NetworkType_xact16
#	?a4		HandleIndex
#	?a5		$$202
#	?a6		CanSM_NetworkType_ptr
#	?a7		controllers
#	?a8		controllers_Size
#	?a9		controller
#	?a10		CanSM_ControllerTypeiter
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact17(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         2117,30
#$$ld
.L1527:

#$$bf	CanSM_NetworkType_xact17,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact17:
.Llo565:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# HandleIndex=r0
	stw		r0,20(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> CANSM529 DEV_CanSM_00531 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		2121
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo566:
	lis		r3,CanSM_NetworkType_p@ha
.Llo567:
	lwz		r4,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r4
.Llo571:
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r4		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r4
.Llo568:
	mr		r4,r0		# CanSM_NetworkType_ptr=r4 CanSM_NetworkType_ptr=r0
# #if (CANSM_SET_BAUDRATE_API == STD_ON)
#     P2CONST(CanSM_ControllerType, AUTOMATIC,CANSM_APPL_CONST ) controllers; /* controllers (ControllerType) */
#     VAR(uint8, AUTOMATIC) controllers_Size;
#     P2CONST(CanSM_ControllerType, AUTOMATIC,CANSM_APPL_CONST) controller;
#     VAR(uint8, AUTOMATIC) CanSM_ControllerTypeiter;
# #endif
# 
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_CB_CC_START;
	.d2line		2129
	diab.li		r0,24		# HandleIndex=r0
.Llo569:
	lwz		r3,0(r4)		# CanSM_NetworkType_ptr=r4
	sth		r0,2(r3)		# HandleIndex=r0
#     CanSM_NetworkType_ptr->RAM->CanSMNetworkMode = COMM_NO_COMMUNICATION;
	.d2line		2130
	diab.li		r0,0		# HandleIndex=r0
	lwz		r3,0(r4)		# CanSM_NetworkType_ptr=r4
	stb		r0,11(r3)		# HandleIndex=r0
#     ComM_BusSM_ModeIndication(CanSM_NetworkType_ptr->CanSMNetworkHandle, &(CanSM_NetworkType_ptr->RAM->CanSMNetworkMode));
	.d2line		2131
	lbz		r3,5(r4)		# CanSM_NetworkType_ptr=r4
	lwz		r4,0(r4)		# CanSM_NetworkType_ptr=r4 CanSM_NetworkType_ptr=r4
	se_addi		r4,11		# CanSM_NetworkType_ptr=r4 CanSM_NetworkType_ptr=r4
.Llo572:
	bl		ComM_BusSM_ModeIndication
# #if (CANSM_SET_BAUDRATE_API == STD_ON)
#     controllers = CanSM_NetworkType_ptr->ControllerType_R16;
#     controllers_Size = CanSM_NetworkType_ptr->ControllerType_R16_Size;
#     CanSM_ControllerTypeiter = 0;
#     while(CanSM_ControllerTypeiter < controllers_Size)
#     {
#         controller = &controllers[CanSM_ControllerTypeiter];
#         (void)CanIf_ChangeBaudrate(controller->ControllerId_pu8, CanSM_NetworkType_ptr->RAM->CanSMChangedBaudrate);
#         CanSM_ControllerTypeiter++;
#     }
# #endif
# }
	.d2line		2143
	.d2epilogue_begin
.Llo570:
	lwz		r0,20(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1528:
	.type		CanSM_NetworkType_xact17,@function
	.size		CanSM_NetworkType_xact17,.-CanSM_NetworkType_xact17
# Number of nodes = 35

# Allocations for CanSM_NetworkType_xact17
#	?a4		HandleIndex
#	?a5		$$203
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact18(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         2153,30
#$$ld
.L1535:

#$$bf	CanSM_NetworkType_xact18,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact18:
.Llo573:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr		# HandleIndex=r0
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		2155
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo574:
	lis		r3,CanSM_NetworkType_p@ha
.Llo575:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r31		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r31
.Llo576:
	mr		r31,r0		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r0
# 
#     CanSM_NetworkType_ptr->RAM->CanSMNetworkMode = COMM_SILENT_COMMUNICATION;
	.d2line		2157
	diab.li		r4,1
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r4,11(r3)
#     BswM_CanSM_CurrentState(CanSM_NetworkType_ptr->CanSMNetworkHandle, CANSM_BSWM_SILENT_COMMUNICATION);
	.d2line		2158
	lbz		r3,5(r31)		# CanSM_NetworkType_ptr=r31
	bl		BswM_CanSM_CurrentState
#     ComM_BusSM_ModeIndication(CanSM_NetworkType_ptr->CanSMNetworkHandle, &(CanSM_NetworkType_ptr->RAM->CanSMNetworkMode));
	.d2line		2159
	lbz		r3,5(r31)		# CanSM_NetworkType_ptr=r31
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	se_addi		r4,11
	bl		ComM_BusSM_ModeIndication
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_SILENTCOM;
	.d2line		2160
	diab.li		r3,6
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r3,2(r4)
# }
	.d2line		2161
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo577:
	lwz		r0,36(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1536:
	.type		CanSM_NetworkType_xact18,@function
	.size		CanSM_NetworkType_xact18,.-CanSM_NetworkType_xact18
# Number of nodes = 45

# Allocations for CanSM_NetworkType_xact18
#	?a4		HandleIndex
#	?a5		$$204
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact19(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         2172,30
#$$ld
.L1543:

#$$bf	CanSM_NetworkType_xact19,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact19:
.Llo578:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr		# HandleIndex=r0
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		2174
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo579:
	lis		r3,CanSM_NetworkType_p@ha
.Llo580:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r31		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r31
.Llo581:
	mr		r31,r0		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r0
# 
#     BswM_CanSM_CurrentState(CanSM_NetworkType_ptr->CanSMNetworkHandle, CANSM_BSWM_NO_COMMUNICATION);
	.d2line		2176
	lbz		r3,5(r31)		# CanSM_NetworkType_ptr=r31
	diab.li		r4,0
	bl		BswM_CanSM_CurrentState
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PRE_NOCOM;
	.d2line		2177
	diab.li		r3,3
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r3,2(r4)
# }
	.d2line		2178
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo582:
	lwz		r0,36(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1544:
	.type		CanSM_NetworkType_xact19,@function
	.size		CanSM_NetworkType_xact19,.-CanSM_NetworkType_xact19
# Number of nodes = 25

# Allocations for CanSM_NetworkType_xact19
#	?a4		HandleIndex
#	?a5		$$205
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact20(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         2189,30
#$$ld
.L1551:

#$$bf	CanSM_NetworkType_xact20,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact20:
.Llo583:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr		# HandleIndex=r0
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     CONSTP2CONST(CanSM_NetworkType, AUTOMATIC, CANSM_APPL_CONST) CanSM_NetworkType_ptr = &(CanSM_NetworkType_p[HandleIndex]);
	.d2line		2191
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo584:
	lis		r3,CanSM_NetworkType_p@ha
.Llo585:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r31		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r31
.Llo586:
	mr		r31,r0		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r0
# 
#     BswM_CanSM_CurrentState(CanSM_NetworkType_ptr->CanSMNetworkHandle, CANSM_BSWM_NO_COMMUNICATION);
	.d2line		2193
	lbz		r3,5(r31)		# CanSM_NetworkType_ptr=r31
	diab.li		r4,0
	bl		BswM_CanSM_CurrentState
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PRE_NOCOM;
	.d2line		2194
	diab.li		r3,3
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r3,2(r4)
# }
	.d2line		2195
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo587:
	lwz		r0,36(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1552:
	.type		CanSM_NetworkType_xact20,@function
	.size		CanSM_NetworkType_xact20,.-CanSM_NetworkType_xact20
# Number of nodes = 25

# Allocations for CanSM_NetworkType_xact20
#	?a4		HandleIndex
#	?a5		$$206
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact21(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         2205,30
#$$ld
.L1559:

#$$bf	CanSM_NetworkType_xact21,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
CanSM_NetworkType_xact21:
.Llo588:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# HandleIndex=r4 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> CANSM480 CANSM463 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		2209
	rlwinm		r4,r4,0,24,31		# HandleIndex=r4 HandleIndex=r4
.Llo589:
	lis		r3,CanSM_NetworkType_p@ha		# CanSM_NetworkType_ptr=r3
.Llo590:
	lwz		r3,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	rlwinm		r5,r4,5,0,26		# HandleIndex=r4
	se_slwi		r4,3		# HandleIndex=r4 HandleIndex=r4
	subf		r4,r4,r5		# HandleIndex=r4 HandleIndex=r4
	se_add		r3,r4		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3 HandleIndex=r4
	mr		r3,r3		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
# 
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#     (void)Det_ReportError(CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_MAIN_FUNCTION, CANSM_E_MODE_REQUEST_TIMEOUT);
# #endif
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_PRE_NOCOM;
	.d2line		2214
	diab.li		r4,3		# HandleIndex=r4
	lwz		r3,0(r3)		# CanSM_NetworkType_ptr=r3 CanSM_NetworkType_ptr=r3
	sth		r4,2(r3)		# CanSM_NetworkType_ptr=r3 HandleIndex=r4
# }
	.d2line		2215
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo591:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1560:
	.type		CanSM_NetworkType_xact21,@function
	.size		CanSM_NetworkType_xact21,.-CanSM_NetworkType_xact21
# Number of nodes = 15

# Allocations for CanSM_NetworkType_xact21
#	?a4		HandleIndex
#	?a5		$$207
#	?a6		CanSM_NetworkType_ptr
# static FUNC(void,CANSM_CODE) CanSM_NetworkType_xact22(CONST(uint8,AUTOMATIC) HandleIndex)
	.align		1
	.section	.text_vle
        .d2line         2227,30
#$$ld
.L1567:

#$$bf	CanSM_NetworkType_xact22,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CanSM_NetworkType_xact22:
.Llo592:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# HandleIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# HandleIndex=r0 HandleIndex=r3
	.d2prologue_end
# {
#     /* <Requirements> SWS_CanSM_00539 SWS_CanSM_00647 <EndRequirements> */
# 
#     CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) CanSM_NetworkType_ptr = &CanSM_NetworkType_p[HandleIndex];
	.d2line		2231
	rlwinm		r0,r0,0,24,31		# HandleIndex=r0 HandleIndex=r0
.Llo593:
	lis		r3,CanSM_NetworkType_p@ha
.Llo594:
	lwz		r31,CanSM_NetworkType_p@l(r3)		# CanSM_NetworkType_ptr=r31
.Llo602:
	rlwinm		r3,r0,5,0,26		# HandleIndex=r0
	se_slwi		r0,3		# HandleIndex=r0 HandleIndex=r0
	subf		r0,r0,r3		# HandleIndex=r0 HandleIndex=r0
	se_add		r0,r31		# HandleIndex=r0 HandleIndex=r0 CanSM_NetworkType_ptr=r31
.Llo595:
	mr		r31,r0		# CanSM_NetworkType_ptr=r31 CanSM_NetworkType_ptr=r0
#     P2CONST(CanSM_ControllerType, AUTOMATIC,CANSM_APPL_CONST) controllers; /* controllers (ControllerType) */
#     VAR(uint8, AUTOMATIC) controllers_Size;
#     P2CONST(CanSM_ControllerType, AUTOMATIC,CANSM_APPL_CONST) controller;
#     VAR(uint8, AUTOMATIC) CanSM_ControllerTypeiter;
# 
#     CanSM_NetworkType_ptr->RAM->State = (uint16)CANSM_ST_FULLCOM;
	.d2line		2237
	diab.li		r0,5		# HandleIndex=r0
.Llo596:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r0,2(r3)		# HandleIndex=r0
#     CanSM_NetworkType_ptr->RAM->CanSMNetworkMode = COMM_FULL_COMMUNICATION;
	.d2line		2238
	diab.li		r0,2		# HandleIndex=r0
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r0,11(r3)		# HandleIndex=r0
#     CanSM_NetworkType_ptr->RAM->CanSMBorTimerTxEnsured_u16 = (uint16)0;
	.d2line		2239
	diab.li		r28,0
.Llo613:
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	sth		r28,6(r3)
#     CanSM_NetworkType_ptr->RAM->CanSMBorCounter_u8 = (uint8)0;
	.d2line		2240
	lwz		r3,0(r31)		# CanSM_NetworkType_ptr=r31
	stb		r28,12(r3)
#     controllers = CanSM_NetworkType_ptr->ControllerType_R16;
	.d2line		2241
	lwz		r30,20(r31)		# CanSM_NetworkType_ptr=r31
.Llo604:
	mr		r30,r30		# controllers=r30 controllers=r30
#     controllers_Size = CanSM_NetworkType_ptr->ControllerType_R16_Size;
	.d2line		2242
	lbz		r29,9(r31)		# CanSM_NetworkType_ptr=r31
.Llo606:
	mr		r29,r29		# controllers_Size=r29 controllers_Size=r29
#     CanSM_ControllerTypeiter = 0;
# 
#     /* Consider ECU passive state */
#     if(CanSM_EcuPassive == FALSE)
	.d2line		2246
	lis		r3,CanSM_EcuPassive@ha
	lbz		r0,CanSM_EcuPassive@l(r3)		# HandleIndex=r0
	se_cmpi		r0,0		# HandleIndex=r0
	bc		0,2,.L1049	# ne
.L1046:
#     {
#         while(CanSM_ControllerTypeiter < controllers_Size)
	.d2line		2248
.Llo597:
	rlwinm		r3,r28,0,24,31		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo607:
	rlwinm		r0,r29,0,24,31		# HandleIndex=r0 controllers_Size=r29
.Llo598:
	se_cmp		r3,r0		# controller=r3 HandleIndex=r0
	bc		0,0,.L1048	# ge
#         {
#             controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		2250
.Llo599:
	rlwinm		r3,r28,3,21,28		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo608:
	se_add		r3,r30		# controller=r3 controller=r3 controllers=r30
	mr		r3,r3		# controller=r3 controller=r3
#             (void)CanIf_SetPduMode( controller->ControllerId_pu8, CANIF_ONLINE );
	.d2line		2251
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo609:
	diab.li		r4,3
	bl		CanIf_SetPduMode
#             CanSM_ControllerTypeiter++;
	.d2line		2252
	diab.addi		r3,r28,1		# controller=r3 CanSM_ControllerTypeiter=r28
	se_addi		r28,1		# CanSM_ControllerTypeiter=r28 CanSM_ControllerTypeiter=r28
	b		.L1046
.L1049:
#         }
#     }
#     else
#     {
#         while(CanSM_ControllerTypeiter < controllers_Size)
	.d2line		2257
	rlwinm		r3,r28,0,24,31		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo610:
	rlwinm		r0,r29,0,24,31		# HandleIndex=r0 controllers_Size=r29
.Llo600:
	se_cmp		r3,r0		# controller=r3 HandleIndex=r0
	bc		0,0,.L1048	# ge
#         {
#             controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		2259
.Llo601:
	rlwinm		r3,r28,3,21,28		# controller=r3 CanSM_ControllerTypeiter=r28
.Llo611:
	se_add		r3,r30		# controller=r3 controller=r3 controllers=r30
	mr		r3,r3		# controller=r3 controller=r3
#             (void)CanIf_SetPduMode( controller->ControllerId_pu8, CANIF_TX_OFFLINE_ACTIVE );
	.d2line		2260
	lbz		r3,4(r3)		# controller=r3 controller=r3
.Llo612:
	diab.li		r4,2
	bl		CanIf_SetPduMode
#             CanSM_ControllerTypeiter++;
	.d2line		2261
	diab.addi		r3,r28,1		# controller=r3 CanSM_ControllerTypeiter=r28
	se_addi		r28,1		# CanSM_ControllerTypeiter=r28 CanSM_ControllerTypeiter=r28
	b		.L1049
.L1048:
#         }
#     }
# 
#     ComM_BusSM_ModeIndication(CanSM_NetworkType_ptr->CanSMNetworkHandle, &(CanSM_NetworkType_ptr->RAM->CanSMNetworkMode));
	.d2line		2265
.Llo605:
	lbz		r3,5(r31)		# controller=r3 CanSM_NetworkType_ptr=r31
	lwz		r4,0(r31)		# CanSM_NetworkType_ptr=r31
	se_addi		r4,11
	bl		ComM_BusSM_ModeIndication
#     BswM_CanSM_CurrentState(CanSM_NetworkType_ptr->CanSMNetworkHandle, CANSM_BSWM_FULL_COMMUNICATION);
	.d2line		2266
	lbz		r3,5(r31)		# controller=r3 CanSM_NetworkType_ptr=r31
	diab.li		r4,2
	bl		BswM_CanSM_CurrentState
# }
	.d2line		2267
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo603:
	lwz		r0,36(r1)		# HandleIndex=r0
	mtspr		lr,r0		# HandleIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1568:
	.type		CanSM_NetworkType_xact22,@function
	.size		CanSM_NetworkType_xact22,.-CanSM_NetworkType_xact22
# Number of nodes = 130

# Allocations for CanSM_NetworkType_xact22
#	?a4		HandleIndex
#	?a5		$$208
#	?a6		CanSM_NetworkType_ptr
#	?a7		controllers
#	?a8		controllers_Size
#	?a9		controller
#	?a10		CanSM_ControllerTypeiter

# Allocations for module
	.section	.text_vle
	.0byte		.L1584
	.section	.text_vle
	.type		CanSM_NetworkType_StateEventMatrix,@object
	.size		CanSM_NetworkType_StateEventMatrix,572
	.align		1
CanSM_NetworkType_StateEventMatrix:
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		2306
	.short		255
	.short		255
	.short		255
	.short		255
	.short		254
	.short		255
	.short		254
	.short		254
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		254
	.short		255
	.short		516
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		2
	.short		255
	.short		254
	.short		254
	.short		255
	.short		255
	.short		4
	.short		5639
	.short		258
	.short		254
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		258
	.short		255
	.short		255
	.short		255
	.short		255
	.short		3
	.short		255
	.short		5379
	.short		254
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		1031
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		4
	.short		255
	.short		771
	.short		254
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		2051
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		1799
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		254
	.short		255
	.short		254
	.short		254
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		1287
	.short		1541
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		6
	.short		4358
	.short		12
	.short		254
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		254
	.short		255
	.short		255
	.short		255
	.short		255
	.short		3081
	.short		3336
	.short		255
	.short		255
	.short		254
	.short		255
	.short		254
	.short		11
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		254
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		3850
	.short		255
	.short		8
	.short		255
	.short		12
	.short		254
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		2822
	.short		254
	.short		255
	.short		2565
	.short		255
	.short		255
	.short		255
	.short		3592
	.short		255
	.short		255
	.short		254
	.short		255
	.short		254
	.short		11
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		254
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		4103
	.short		10
	.short		255
	.short		254
	.short		254
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		7
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		11
	.short		255
	.short		12
	.short		254
	.short		4867
	.short		4613
	.short		255
	.short		255
	.short		255
	.short		5123
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.short		254
	.short		255
	.short		254
	.short		254
	.short		255
	.short		255
	.short		255
	.short		255
	.short		255
	.section	.text_vle
	.type		CanSM_NetworkType_acts,@object
	.size		CanSM_NetworkType_acts,52
	.align		2
CanSM_NetworkType_acts:
	.long		0
	.long		CanSM_NetworkType_act0
	.long		CanSM_NetworkType_act1
	.long		CanSM_NetworkType_act2
	.long		CanSM_NetworkType_act3
	.long		CanSM_NetworkType_act4
	.long		CanSM_NetworkType_act5
	.long		CanSM_NetworkType_act6
	.long		CanSM_NetworkType_act7
	.long		CanSM_NetworkType_act8
	.long		CanSM_NetworkType_act9
	.long		CanSM_NetworkType_act11
	.long		CanSM_NetworkType_act12
	.section	.text_vle
	.type		CanSM_NetworkType_xacts,@object
	.size		CanSM_NetworkType_xacts,88
	.align		2
CanSM_NetworkType_xacts:
	.long		CanSM_NetworkType_xact1
	.long		CanSM_NetworkType_xact2
	.long		CanSM_NetworkType_xact3
	.long		CanSM_NetworkType_xact4
	.long		CanSM_NetworkType_xact5
	.long		CanSM_NetworkType_xact6
	.long		CanSM_NetworkType_xact7
	.long		CanSM_NetworkType_xact8
	.long		CanSM_NetworkType_xact9
	.long		CanSM_NetworkType_xact10
	.long		CanSM_NetworkType_xact11
	.long		CanSM_NetworkType_xact12
	.long		CanSM_NetworkType_xact13
	.long		CanSM_NetworkType_xact14
	.long		CanSM_NetworkType_xact15
	.long		CanSM_NetworkType_xact16
	.long		CanSM_NetworkType_xact17
	.long		CanSM_NetworkType_xact18
	.long		CanSM_NetworkType_xact19
	.long		CanSM_NetworkType_xact20
	.long		CanSM_NetworkType_xact21
	.long		CanSM_NetworkType_xact22
	.section	.text_vle
#$$ld
.L5:
.L1628:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L1625:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L1590:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\inc\\CanSM_Common.h"
.L1582:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\inc\\CanSM_Types.h"
.L1070:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM.c"
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
	.uleb128	73
	.uleb128	16
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	12
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
	.uleb128	13
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
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
	.uleb128	15
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
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
	.uleb128	15
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
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	5
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM.c"
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
.L1074:
	.sleb128	2
	.4byte		.L1067-.L2
	.byte		"CanSM_ConsistencyCheck"
	.byte		0
	.4byte		.L1070
	.uleb128	201
	.uleb128	34
	.4byte		.L1071
	.byte		0x1
	.byte		0x1
	.4byte		.L1068
	.4byte		.L1069
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L1070
	.uleb128	201
	.uleb128	34
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L1075
	.4byte		.L1079
	.section	.debug_info,,n
.L1080:
	.sleb128	4
	.4byte		.L1070
	.uleb128	203
	.uleb128	36
	.byte		"Retval"
	.byte		0
	.4byte		.L1071
	.4byte		.L1081
	.section	.debug_info,,n
	.sleb128	0
.L1067:
	.section	.debug_info,,n
.L1086:
	.sleb128	2
	.4byte		.L1083-.L2
	.byte		"CanSM_EntryTrcv"
	.byte		0
	.4byte		.L1070
	.uleb128	395
	.uleb128	33
	.4byte		.L1071
	.byte		0x1
	.byte		0x1
	.4byte		.L1084
	.4byte		.L1085
	.sleb128	3
	.4byte		.L1070
	.uleb128	395
	.uleb128	33
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1088
	.sleb128	3
	.4byte		.L1070
	.uleb128	395
	.uleb128	33
	.byte		"TrcvMode"
	.byte		0
	.4byte		.L1089
	.4byte		.L1092
.L1093:
	.sleb128	4
	.4byte		.L1070
	.uleb128	399
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1099
.L1100:
	.sleb128	4
	.4byte		.L1070
	.uleb128	400
	.uleb128	26
	.byte		"CanSMRetVal"
	.byte		0
	.4byte		.L1072
	.4byte		.L1101
	.section	.debug_info,,n
	.sleb128	0
.L1083:
	.section	.debug_info,,n
.L1106:
	.sleb128	2
	.4byte		.L1103-.L2
	.byte		"CanSM_EntryController"
	.byte		0
	.4byte		.L1070
	.uleb128	441
	.uleb128	33
	.4byte		.L1071
	.byte		0x1
	.byte		0x1
	.4byte		.L1104
	.4byte		.L1105
	.sleb128	3
	.4byte		.L1070
	.uleb128	441
	.uleb128	33
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1107
	.sleb128	3
	.4byte		.L1070
	.uleb128	441
	.uleb128	33
	.byte		"Mode"
	.byte		0
	.4byte		.L1108
	.4byte		.L1111
.L1112:
	.sleb128	4
	.4byte		.L1070
	.uleb128	445
	.uleb128	66
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1113
.L1114:
	.sleb128	4
	.4byte		.L1070
	.uleb128	446
	.uleb128	27
	.byte		"CanSMRetVal"
	.byte		0
	.4byte		.L1072
	.4byte		.L1115
.L1116:
	.sleb128	4
	.4byte		.L1070
	.uleb128	447
	.uleb128	27
	.byte		"CanIfRetVal"
	.byte		0
	.4byte		.L1072
	.4byte		.L1117
.L1118:
	.sleb128	4
	.4byte		.L1070
	.uleb128	448
	.uleb128	63
	.byte		"controllers"
	.byte		0
	.4byte		.L1119
	.4byte		.L1123
.L1124:
	.sleb128	4
	.4byte		.L1070
	.uleb128	449
	.uleb128	27
	.byte		"controllers_Size"
	.byte		0
	.4byte		.L1072
	.4byte		.L1125
.L1126:
	.sleb128	4
	.4byte		.L1070
	.uleb128	450
	.uleb128	63
	.byte		"controller"
	.byte		0
	.4byte		.L1119
	.4byte		.L1127
.L1128:
	.sleb128	4
	.4byte		.L1070
	.uleb128	451
	.uleb128	27
	.byte		"CanSM_ControllerTypeiter"
	.byte		0
	.4byte		.L1072
	.4byte		.L1129
	.section	.debug_info,,n
	.sleb128	0
.L1103:
	.section	.debug_info,,n
.L1134:
	.sleb128	5
	.4byte		.L1131-.L2
	.byte		"CanSM_NetworkType_Dispatch"
	.byte		0
	.4byte		.L1070
	.uleb128	2279
	.uleb128	30
	.byte		0x1
	.4byte		.L1132
	.4byte		.L1133
	.sleb128	3
	.4byte		.L1070
	.uleb128	2279
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1135
	.sleb128	3
	.4byte		.L1070
	.uleb128	2279
	.uleb128	30
	.byte		"event_number"
	.byte		0
	.4byte		.L1136
	.4byte		.L1138
.L1139:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2282
	.uleb128	63
	.byte		"instance"
	.byte		0
	.4byte		.L1094
	.4byte		.L1140
.L1141:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2283
	.uleb128	43
	.byte		"next_state"
	.byte		0
	.4byte		.L1142
	.4byte		.L1145
	.section	.debug_info,,n
	.sleb128	0
.L1131:
	.section	.debug_info,,n
.L1152:
	.sleb128	6
	.4byte		.L1149-.L2
	.byte		"CanSM_ProcessStateMachine"
	.byte		0
	.4byte		.L1070
	.uleb128	616
	.uleb128	40
	.4byte		.L1071
	.byte		0x1
	.4byte		.L1150
	.4byte		.L1151
	.sleb128	3
	.4byte		.L1070
	.uleb128	616
	.uleb128	40
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1153
	.sleb128	3
	.4byte		.L1070
	.uleb128	616
	.uleb128	40
	.byte		"transition"
	.byte		0
	.4byte		.L1072
	.4byte		.L1154
	.sleb128	3
	.4byte		.L1070
	.uleb128	616
	.uleb128	40
	.byte		"StateIncluded"
	.byte		0
	.4byte		.L1155
	.4byte		.L1157
.L1158:
	.sleb128	4
	.4byte		.L1070
	.uleb128	623
	.uleb128	65
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1159
.L1160:
	.sleb128	4
	.4byte		.L1070
	.uleb128	624
	.uleb128	27
	.byte		"CanSMRetVal"
	.byte		0
	.4byte		.L1072
	.4byte		.L1161
.L1162:
	.sleb128	4
	.4byte		.L1070
	.uleb128	626
	.uleb128	43
	.byte		"RetVal"
	.byte		0
	.4byte		.L1163
	.4byte		.L1165
.L1166:
	.sleb128	4
	.4byte		.L1070
	.uleb128	628
	.uleb128	28
	.byte		"TransitionFound"
	.byte		0
	.4byte		.L1156
	.4byte		.L1167
.L1168:
	.sleb128	4
	.4byte		.L1070
	.uleb128	630
	.uleb128	63
	.byte		"controllers"
	.byte		0
	.4byte		.L1119
	.4byte		.L1169
.L1170:
	.sleb128	4
	.4byte		.L1070
	.uleb128	631
	.uleb128	27
	.byte		"controllers_Size"
	.byte		0
	.4byte		.L1072
	.4byte		.L1171
.L1172:
	.sleb128	4
	.4byte		.L1070
	.uleb128	633
	.uleb128	62
	.byte		"controller"
	.byte		0
	.4byte		.L1119
	.4byte		.L1173
.L1174:
	.sleb128	4
	.4byte		.L1070
	.uleb128	635
	.uleb128	27
	.byte		"CanSM_ControllerTypeiter"
	.byte		0
	.4byte		.L1072
	.4byte		.L1175
	.section	.debug_info,,n
	.sleb128	0
.L1149:
	.section	.debug_info,,n
.L1182:
	.sleb128	2
	.4byte		.L1179-.L2
	.byte		"CanSM_ProcessSM"
	.byte		0
	.4byte		.L1070
	.uleb128	230
	.uleb128	33
	.4byte		.L1071
	.byte		0x1
	.byte		0x1
	.4byte		.L1180
	.4byte		.L1181
	.sleb128	3
	.4byte		.L1070
	.uleb128	230
	.uleb128	33
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1183
	.sleb128	3
	.4byte		.L1070
	.uleb128	230
	.uleb128	33
	.byte		"transition"
	.byte		0
	.4byte		.L1087
	.4byte		.L1184
	.sleb128	3
	.4byte		.L1070
	.uleb128	230
	.uleb128	33
	.byte		"StateIncluded"
	.byte		0
	.4byte		.L1155
	.4byte		.L1185
.L1186:
	.sleb128	4
	.4byte		.L1070
	.uleb128	234
	.uleb128	27
	.byte		"CanSMRetVal"
	.byte		0
	.4byte		.L1072
	.4byte		.L1187
.L1188:
	.sleb128	4
	.4byte		.L1070
	.uleb128	235
	.uleb128	27
	.byte		"Transition"
	.byte		0
	.4byte		.L1072
	.4byte		.L1189
.L1190:
	.sleb128	4
	.4byte		.L1070
	.uleb128	236
	.uleb128	64
	.byte		"network"
	.byte		0
	.4byte		.L1094
	.4byte		.L1191
	.section	.debug_info,,n
	.sleb128	0
.L1179:
	.section	.debug_info,,n
.L1196:
	.sleb128	2
	.4byte		.L1193-.L2
	.byte		"CanSM_ProcessTrcv"
	.byte		0
	.4byte		.L1070
	.uleb128	267
	.uleb128	33
	.4byte		.L1071
	.byte		0x1
	.byte		0x1
	.4byte		.L1194
	.4byte		.L1195
	.sleb128	3
	.4byte		.L1070
	.uleb128	267
	.uleb128	33
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1197
	.sleb128	3
	.4byte		.L1070
	.uleb128	267
	.uleb128	33
	.byte		"TrcvMode"
	.byte		0
	.4byte		.L1089
	.4byte		.L1198
.L1199:
	.sleb128	4
	.4byte		.L1070
	.uleb128	273
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1200
.L1201:
	.sleb128	4
	.4byte		.L1070
	.uleb128	274
	.uleb128	26
	.byte		"CanSMRetVal"
	.byte		0
	.4byte		.L1072
	.4byte		.L1202
	.section	.debug_info,,n
	.sleb128	0
.L1193:
	.section	.debug_info,,n
.L1207:
	.sleb128	2
	.4byte		.L1204-.L2
	.byte		"CanSM_ProcessController"
	.byte		0
	.4byte		.L1070
	.uleb128	319
	.uleb128	33
	.4byte		.L1071
	.byte		0x1
	.byte		0x1
	.4byte		.L1205
	.4byte		.L1206
	.sleb128	3
	.4byte		.L1070
	.uleb128	319
	.uleb128	33
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1208
	.sleb128	3
	.4byte		.L1070
	.uleb128	319
	.uleb128	33
	.byte		"Mode"
	.byte		0
	.4byte		.L1108
	.4byte		.L1209
.L1210:
	.sleb128	4
	.4byte		.L1070
	.uleb128	325
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1211
.L1212:
	.sleb128	4
	.4byte		.L1070
	.uleb128	326
	.uleb128	26
	.byte		"CanSMRetVal"
	.byte		0
	.4byte		.L1072
	.4byte		.L1213
.L1214:
	.sleb128	4
	.4byte		.L1070
	.uleb128	328
	.uleb128	26
	.byte		"ControllersStates"
	.byte		0
	.4byte		.L1072
	.4byte		.L1215
.L1216:
	.sleb128	4
	.4byte		.L1070
	.uleb128	330
	.uleb128	63
	.byte		"controllers"
	.byte		0
	.4byte		.L1119
	.4byte		.L1217
.L1218:
	.sleb128	4
	.4byte		.L1070
	.uleb128	331
	.uleb128	26
	.byte		"controllers_Size"
	.byte		0
	.4byte		.L1072
	.4byte		.L1219
.L1220:
	.sleb128	4
	.4byte		.L1070
	.uleb128	333
	.uleb128	61
	.byte		"controller"
	.byte		0
	.4byte		.L1119
	.4byte		.L1221
.L1222:
	.sleb128	4
	.4byte		.L1070
	.uleb128	335
	.uleb128	26
	.byte		"CanSM_ControllerTypeiter"
	.byte		0
	.4byte		.L1072
	.4byte		.L1223
	.section	.debug_info,,n
	.sleb128	0
.L1204:
	.section	.debug_info,,n
.L1228:
	.sleb128	2
	.4byte		.L1225-.L2
	.byte		"CanSM_ProcessTrcvClrWUFlag"
	.byte		0
	.4byte		.L1070
	.uleb128	516
	.uleb128	33
	.4byte		.L1071
	.byte		0x1
	.byte		0x1
	.4byte		.L1226
	.4byte		.L1227
	.sleb128	3
	.4byte		.L1070
	.uleb128	516
	.uleb128	33
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1229
.L1230:
	.sleb128	4
	.4byte		.L1070
	.uleb128	518
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1231
.L1232:
	.sleb128	4
	.4byte		.L1070
	.uleb128	519
	.uleb128	26
	.byte		"CanSMRetVal"
	.byte		0
	.4byte		.L1072
	.4byte		.L1233
	.section	.debug_info,,n
	.sleb128	0
.L1225:
	.section	.debug_info,,n
.L1238:
	.sleb128	2
	.4byte		.L1235-.L2
	.byte		"CanSM_ProcessTrcvChckWUFlag"
	.byte		0
	.4byte		.L1070
	.uleb128	564
	.uleb128	33
	.4byte		.L1071
	.byte		0x1
	.byte		0x1
	.4byte		.L1236
	.4byte		.L1237
	.sleb128	3
	.4byte		.L1070
	.uleb128	564
	.uleb128	33
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1239
.L1240:
	.sleb128	4
	.4byte		.L1070
	.uleb128	566
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1241
.L1242:
	.sleb128	4
	.4byte		.L1070
	.uleb128	567
	.uleb128	26
	.byte		"CanSMRetVal"
	.byte		0
	.4byte		.L1072
	.4byte		.L1243
	.section	.debug_info,,n
	.sleb128	0
.L1235:
	.section	.debug_info,,n
.L1248:
	.sleb128	5
	.4byte		.L1245-.L2
	.byte		"CanSM_NetworkType_act0"
	.byte		0
	.4byte		.L1070
	.uleb128	1187
	.uleb128	30
	.byte		0x1
	.4byte		.L1246
	.4byte		.L1247
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L1070
	.uleb128	1187
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info,,n
	.sleb128	0
.L1245:
	.section	.debug_info,,n
.L1253:
	.sleb128	5
	.4byte		.L1250-.L2
	.byte		"CanSM_NetworkType_act1"
	.byte		0
	.4byte		.L1070
	.uleb128	1199
	.uleb128	30
	.byte		0x1
	.4byte		.L1251
	.4byte		.L1252
	.sleb128	3
	.4byte		.L1070
	.uleb128	1199
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1254
.L1255:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1201
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1256
	.section	.debug_info,,n
	.sleb128	0
.L1250:
	.section	.debug_info,,n
.L1261:
	.sleb128	5
	.4byte		.L1258-.L2
	.byte		"CanSM_NetworkType_act2"
	.byte		0
	.4byte		.L1070
	.uleb128	1215
	.uleb128	30
	.byte		0x1
	.4byte		.L1259
	.4byte		.L1260
	.sleb128	3
	.4byte		.L1070
	.uleb128	1215
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1262
.L1263:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1224
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1264
	.section	.debug_info,,n
	.sleb128	0
.L1258:
	.section	.debug_info,,n
.L1269:
	.sleb128	5
	.4byte		.L1266-.L2
	.byte		"CanSM_NetworkType_act3"
	.byte		0
	.4byte		.L1070
	.uleb128	1373
	.uleb128	30
	.byte		0x1
	.4byte		.L1267
	.4byte		.L1268
	.sleb128	3
	.4byte		.L1070
	.uleb128	1373
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1270
.L1271:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1377
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1272
	.section	.debug_info,,n
	.sleb128	0
.L1266:
	.section	.debug_info,,n
.L1277:
	.sleb128	5
	.4byte		.L1274-.L2
	.byte		"CanSM_NetworkType_act4"
	.byte		0
	.4byte		.L1070
	.uleb128	1426
	.uleb128	30
	.byte		0x1
	.4byte		.L1275
	.4byte		.L1276
	.sleb128	3
	.4byte		.L1070
	.uleb128	1426
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1278
.L1279:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1430
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1280
.L1281:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1431
	.uleb128	26
	.byte		"Transition"
	.byte		0
	.4byte		.L1072
	.4byte		.L1282
	.section	.debug_info,,n
	.sleb128	0
.L1274:
	.section	.debug_info,,n
.L1287:
	.sleb128	5
	.4byte		.L1284-.L2
	.byte		"CanSM_NetworkType_act5"
	.byte		0
	.4byte		.L1070
	.uleb128	1459
	.uleb128	30
	.byte		0x1
	.4byte		.L1285
	.4byte		.L1286
	.sleb128	3
	.4byte		.L1070
	.uleb128	1459
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1288
.L1289:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1464
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1290
	.section	.debug_info,,n
	.sleb128	0
.L1284:
	.section	.debug_info,,n
.L1295:
	.sleb128	5
	.4byte		.L1292-.L2
	.byte		"CanSM_NetworkType_act6"
	.byte		0
	.4byte		.L1070
	.uleb128	1492
	.uleb128	30
	.byte		0x1
	.4byte		.L1293
	.4byte		.L1294
	.sleb128	3
	.4byte		.L1070
	.uleb128	1492
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1296
.L1297:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1494
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1298
	.section	.debug_info,,n
	.sleb128	0
.L1292:
	.section	.debug_info,,n
.L1303:
	.sleb128	5
	.4byte		.L1300-.L2
	.byte		"CanSM_NetworkType_act7"
	.byte		0
	.4byte		.L1070
	.uleb128	1510
	.uleb128	30
	.byte		0x1
	.4byte		.L1301
	.4byte		.L1302
	.sleb128	3
	.4byte		.L1070
	.uleb128	1510
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1304
.L1305:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1513
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1306
	.section	.debug_info,,n
	.sleb128	0
.L1300:
	.section	.debug_info,,n
.L1311:
	.sleb128	5
	.4byte		.L1308-.L2
	.byte		"CanSM_NetworkType_act8"
	.byte		0
	.4byte		.L1070
	.uleb128	1533
	.uleb128	30
	.byte		0x1
	.4byte		.L1309
	.4byte		.L1310
	.sleb128	3
	.4byte		.L1070
	.uleb128	1533
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1312
.L1313:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1535
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1314
	.section	.debug_info,,n
	.sleb128	0
.L1308:
	.section	.debug_info,,n
.L1319:
	.sleb128	5
	.4byte		.L1316-.L2
	.byte		"CanSM_NetworkType_act9"
	.byte		0
	.4byte		.L1070
	.uleb128	1549
	.uleb128	30
	.byte		0x1
	.4byte		.L1317
	.4byte		.L1318
	.sleb128	3
	.4byte		.L1070
	.uleb128	1549
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1320
.L1321:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1553
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1322
.L1323:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1554
	.uleb128	27
	.byte		"RecoveryTime"
	.byte		0
	.4byte		.L1143
	.4byte		.L1324
	.section	.debug_info,,n
	.sleb128	0
.L1316:
	.section	.debug_info,,n
.L1329:
	.sleb128	5
	.4byte		.L1326-.L2
	.byte		"CanSM_NetworkType_act11"
	.byte		0
	.4byte		.L1070
	.uleb128	1577
	.uleb128	30
	.byte		0x1
	.4byte		.L1327
	.4byte		.L1328
	.sleb128	3
	.4byte		.L1070
	.uleb128	1577
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1330
.L1331:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1579
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1332
	.section	.debug_info,,n
	.sleb128	0
.L1326:
	.section	.debug_info,,n
.L1337:
	.sleb128	5
	.4byte		.L1334-.L2
	.byte		"CanSM_NetworkType_act12"
	.byte		0
	.4byte		.L1070
	.uleb128	1608
	.uleb128	30
	.byte		0x1
	.4byte		.L1335
	.4byte		.L1336
	.sleb128	3
	.4byte		.L1070
	.uleb128	1608
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1338
.L1339:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1612
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1340
	.section	.debug_info,,n
	.sleb128	0
.L1334:
	.section	.debug_info,,n
.L1345:
	.sleb128	5
	.4byte		.L1342-.L2
	.byte		"CanSM_NetworkType_xact1"
	.byte		0
	.4byte		.L1070
	.uleb128	1628
	.uleb128	30
	.byte		0x1
	.4byte		.L1343
	.4byte		.L1344
	.sleb128	3
	.4byte		.L1070
	.uleb128	1628
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1346
.L1347:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1632
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1348
	.section	.debug_info,,n
	.sleb128	0
.L1342:
	.section	.debug_info,,n
.L1353:
	.sleb128	5
	.4byte		.L1350-.L2
	.byte		"CanSM_NetworkType_xact2"
	.byte		0
	.4byte		.L1070
	.uleb128	1646
	.uleb128	30
	.byte		0x1
	.4byte		.L1351
	.4byte		.L1352
	.sleb128	3
	.4byte		.L1070
	.uleb128	1646
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1354
.L1355:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1648
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1356
	.section	.debug_info,,n
	.sleb128	0
.L1350:
	.section	.debug_info,,n
.L1361:
	.sleb128	5
	.4byte		.L1358-.L2
	.byte		"CanSM_NetworkType_xact3"
	.byte		0
	.4byte		.L1070
	.uleb128	1661
	.uleb128	30
	.byte		0x1
	.4byte		.L1359
	.4byte		.L1360
	.sleb128	3
	.4byte		.L1070
	.uleb128	1661
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1362
.L1363:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1665
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1364
	.section	.debug_info,,n
	.sleb128	0
.L1358:
	.section	.debug_info,,n
.L1369:
	.sleb128	5
	.4byte		.L1366-.L2
	.byte		"CanSM_NetworkType_xact4"
	.byte		0
	.4byte		.L1070
	.uleb128	1681
	.uleb128	30
	.byte		0x1
	.4byte		.L1367
	.4byte		.L1368
	.sleb128	3
	.4byte		.L1070
	.uleb128	1681
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1370
.L1371:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1685
	.uleb128	66
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1372
.L1373:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1686
	.uleb128	64
	.byte		"controllers"
	.byte		0
	.4byte		.L1119
	.4byte		.L1374
.L1375:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1687
	.uleb128	26
	.byte		"controllers_Size"
	.byte		0
	.4byte		.L1072
	.4byte		.L1376
.L1377:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1688
	.uleb128	63
	.byte		"controller"
	.byte		0
	.4byte		.L1119
	.4byte		.L1378
.L1379:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1689
	.uleb128	27
	.byte		"CanSM_ControllerTypeiter"
	.byte		0
	.4byte		.L1072
	.4byte		.L1380
	.section	.debug_info,,n
	.sleb128	0
.L1366:
	.section	.debug_info,,n
.L1385:
	.sleb128	5
	.4byte		.L1382-.L2
	.byte		"CanSM_NetworkType_xact5"
	.byte		0
	.4byte		.L1070
	.uleb128	1733
	.uleb128	30
	.byte		0x1
	.4byte		.L1383
	.4byte		.L1384
	.sleb128	3
	.4byte		.L1070
	.uleb128	1733
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1386
.L1387:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1737
	.uleb128	65
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1388
.L1389:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1738
	.uleb128	63
	.byte		"controllers"
	.byte		0
	.4byte		.L1119
	.4byte		.L1390
.L1391:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1739
	.uleb128	27
	.byte		"controllers_Size"
	.byte		0
	.4byte		.L1072
	.4byte		.L1392
.L1393:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1740
	.uleb128	64
	.byte		"controller"
	.byte		0
	.4byte		.L1119
	.4byte		.L1394
.L1395:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1741
	.uleb128	27
	.byte		"CanSM_ControllerTypeiter"
	.byte		0
	.4byte		.L1072
	.4byte		.L1396
	.section	.debug_info,,n
	.sleb128	0
.L1382:
	.section	.debug_info,,n
.L1401:
	.sleb128	5
	.4byte		.L1398-.L2
	.byte		"CanSM_NetworkType_xact6"
	.byte		0
	.4byte		.L1070
	.uleb128	1783
	.uleb128	30
	.byte		0x1
	.4byte		.L1399
	.4byte		.L1400
	.sleb128	3
	.4byte		.L1070
	.uleb128	1783
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1402
.L1403:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1787
	.uleb128	65
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1404
.L1405:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1788
	.uleb128	63
	.byte		"controllers"
	.byte		0
	.4byte		.L1119
	.4byte		.L1406
.L1407:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1789
	.uleb128	27
	.byte		"controllers_Size"
	.byte		0
	.4byte		.L1072
	.4byte		.L1408
.L1409:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1790
	.uleb128	63
	.byte		"controller"
	.byte		0
	.4byte		.L1119
	.4byte		.L1410
.L1411:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1791
	.uleb128	26
	.byte		"CanSM_ControllerTypeiter"
	.byte		0
	.4byte		.L1072
	.4byte		.L1412
	.section	.debug_info,,n
	.sleb128	0
.L1398:
	.section	.debug_info,,n
.L1417:
	.sleb128	5
	.4byte		.L1414-.L2
	.byte		"CanSM_NetworkType_xact7"
	.byte		0
	.4byte		.L1070
	.uleb128	1826
	.uleb128	30
	.byte		0x1
	.4byte		.L1415
	.4byte		.L1416
	.sleb128	3
	.4byte		.L1070
	.uleb128	1826
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1418
.L1419:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1830
	.uleb128	66
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1420
.L1421:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1831
	.uleb128	63
	.byte		"controllers"
	.byte		0
	.4byte		.L1119
	.4byte		.L1422
.L1423:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1832
	.uleb128	26
	.byte		"controllers_Size"
	.byte		0
	.4byte		.L1072
	.4byte		.L1424
.L1425:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1833
	.uleb128	64
	.byte		"controller"
	.byte		0
	.4byte		.L1119
	.4byte		.L1426
.L1427:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1834
	.uleb128	27
	.byte		"CanSM_ControllerTypeiter"
	.byte		0
	.4byte		.L1072
	.4byte		.L1428
	.section	.debug_info,,n
	.sleb128	0
.L1414:
	.section	.debug_info,,n
.L1433:
	.sleb128	5
	.4byte		.L1430-.L2
	.byte		"CanSM_NetworkType_xact8"
	.byte		0
	.4byte		.L1070
	.uleb128	1875
	.uleb128	30
	.byte		0x1
	.4byte		.L1431
	.4byte		.L1432
	.sleb128	3
	.4byte		.L1070
	.uleb128	1875
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1434
.L1435:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1879
	.uleb128	65
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1436
	.section	.debug_info,,n
	.sleb128	0
.L1430:
	.section	.debug_info,,n
.L1441:
	.sleb128	5
	.4byte		.L1438-.L2
	.byte		"CanSM_NetworkType_xact9"
	.byte		0
	.4byte		.L1070
	.uleb128	1893
	.uleb128	30
	.byte		0x1
	.4byte		.L1439
	.4byte		.L1440
	.sleb128	3
	.4byte		.L1070
	.uleb128	1893
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1442
.L1443:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1895
	.uleb128	65
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1444
	.section	.debug_info,,n
	.sleb128	0
.L1438:
	.section	.debug_info,,n
.L1449:
	.sleb128	5
	.4byte		.L1446-.L2
	.byte		"CanSM_NetworkType_xact10"
	.byte		0
	.4byte		.L1070
	.uleb128	1909
	.uleb128	30
	.byte		0x1
	.4byte		.L1447
	.4byte		.L1448
	.sleb128	3
	.4byte		.L1070
	.uleb128	1909
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1450
.L1451:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1913
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1452
.L1453:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1914
	.uleb128	64
	.byte		"controllers"
	.byte		0
	.4byte		.L1119
	.4byte		.L1454
.L1455:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1915
	.uleb128	26
	.byte		"controllers_Size"
	.byte		0
	.4byte		.L1072
	.4byte		.L1456
.L1457:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1916
	.uleb128	63
	.byte		"controller"
	.byte		0
	.4byte		.L1119
	.4byte		.L1458
.L1459:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1917
	.uleb128	27
	.byte		"CanSM_ControllerTypeiter"
	.byte		0
	.4byte		.L1072
	.4byte		.L1460
	.section	.debug_info,,n
	.sleb128	0
.L1446:
	.section	.debug_info,,n
.L1465:
	.sleb128	5
	.4byte		.L1462-.L2
	.byte		"CanSM_NetworkType_xact11"
	.byte		0
	.4byte		.L1070
	.uleb128	1952
	.uleb128	30
	.byte		0x1
	.4byte		.L1463
	.4byte		.L1464
	.sleb128	3
	.4byte		.L1070
	.uleb128	1952
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1466
.L1467:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1956
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1468
	.section	.debug_info,,n
	.sleb128	0
.L1462:
	.section	.debug_info,,n
.L1473:
	.sleb128	5
	.4byte		.L1470-.L2
	.byte		"CanSM_NetworkType_xact12"
	.byte		0
	.4byte		.L1070
	.uleb128	1970
	.uleb128	30
	.byte		0x1
	.4byte		.L1471
	.4byte		.L1472
	.sleb128	3
	.4byte		.L1070
	.uleb128	1970
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1474
.L1475:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1974
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1476
	.section	.debug_info,,n
	.sleb128	0
.L1470:
	.section	.debug_info,,n
.L1481:
	.sleb128	5
	.4byte		.L1478-.L2
	.byte		"CanSM_NetworkType_xact13"
	.byte		0
	.4byte		.L1070
	.uleb128	1989
	.uleb128	30
	.byte		0x1
	.4byte		.L1479
	.4byte		.L1480
	.sleb128	3
	.4byte		.L1070
	.uleb128	1989
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1482
.L1483:
	.sleb128	4
	.4byte		.L1070
	.uleb128	1993
	.uleb128	66
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1484
	.section	.debug_info,,n
	.sleb128	0
.L1478:
	.section	.debug_info,,n
.L1489:
	.sleb128	5
	.4byte		.L1486-.L2
	.byte		"CanSM_NetworkType_xact14"
	.byte		0
	.4byte		.L1070
	.uleb128	2014
	.uleb128	30
	.byte		0x1
	.4byte		.L1487
	.4byte		.L1488
	.sleb128	3
	.4byte		.L1070
	.uleb128	2014
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1490
.L1491:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2018
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1492
	.section	.debug_info,,n
	.sleb128	0
.L1486:
	.section	.debug_info,,n
.L1497:
	.sleb128	5
	.4byte		.L1494-.L2
	.byte		"CanSM_NetworkType_xact15"
	.byte		0
	.4byte		.L1070
	.uleb128	2039
	.uleb128	30
	.byte		0x1
	.4byte		.L1495
	.4byte		.L1496
	.sleb128	3
	.4byte		.L1070
	.uleb128	2039
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1498
.L1499:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2043
	.uleb128	65
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1500
.L1501:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2044
	.uleb128	63
	.byte		"controllers"
	.byte		0
	.4byte		.L1119
	.4byte		.L1502
.L1503:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2045
	.uleb128	27
	.byte		"controllers_Size"
	.byte		0
	.4byte		.L1072
	.4byte		.L1504
.L1505:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2046
	.uleb128	63
	.byte		"controller"
	.byte		0
	.4byte		.L1119
	.4byte		.L1506
.L1507:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2047
	.uleb128	27
	.byte		"CanSM_ControllerTypeiter"
	.byte		0
	.4byte		.L1072
	.4byte		.L1508
	.section	.debug_info,,n
	.sleb128	0
.L1494:
	.section	.debug_info,,n
.L1513:
	.sleb128	5
	.4byte		.L1510-.L2
	.byte		"CanSM_NetworkType_xact16"
	.byte		0
	.4byte		.L1070
	.uleb128	2068
	.uleb128	30
	.byte		0x1
	.4byte		.L1511
	.4byte		.L1512
	.sleb128	3
	.4byte		.L1070
	.uleb128	2068
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1514
.L1515:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2072
	.uleb128	66
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1516
.L1517:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2073
	.uleb128	63
	.byte		"controllers"
	.byte		0
	.4byte		.L1119
	.4byte		.L1518
.L1519:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2074
	.uleb128	27
	.byte		"controllers_Size"
	.byte		0
	.4byte		.L1072
	.4byte		.L1520
.L1521:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2075
	.uleb128	61
	.byte		"controller"
	.byte		0
	.4byte		.L1119
	.4byte		.L1522
.L1523:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2076
	.uleb128	27
	.byte		"CanSM_ControllerTypeiter"
	.byte		0
	.4byte		.L1072
	.4byte		.L1524
	.section	.debug_info,,n
	.sleb128	0
.L1510:
	.section	.debug_info,,n
.L1529:
	.sleb128	5
	.4byte		.L1526-.L2
	.byte		"CanSM_NetworkType_xact17"
	.byte		0
	.4byte		.L1070
	.uleb128	2117
	.uleb128	30
	.byte		0x1
	.4byte		.L1527
	.4byte		.L1528
	.sleb128	3
	.4byte		.L1070
	.uleb128	2117
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1530
.L1531:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2121
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1532
	.section	.debug_info,,n
	.sleb128	0
.L1526:
	.section	.debug_info,,n
.L1537:
	.sleb128	5
	.4byte		.L1534-.L2
	.byte		"CanSM_NetworkType_xact18"
	.byte		0
	.4byte		.L1070
	.uleb128	2153
	.uleb128	30
	.byte		0x1
	.4byte		.L1535
	.4byte		.L1536
	.sleb128	3
	.4byte		.L1070
	.uleb128	2153
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1538
.L1539:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2155
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1540
	.section	.debug_info,,n
	.sleb128	0
.L1534:
	.section	.debug_info,,n
.L1545:
	.sleb128	5
	.4byte		.L1542-.L2
	.byte		"CanSM_NetworkType_xact19"
	.byte		0
	.4byte		.L1070
	.uleb128	2172
	.uleb128	30
	.byte		0x1
	.4byte		.L1543
	.4byte		.L1544
	.sleb128	3
	.4byte		.L1070
	.uleb128	2172
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1546
.L1547:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2174
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1548
	.section	.debug_info,,n
	.sleb128	0
.L1542:
	.section	.debug_info,,n
.L1553:
	.sleb128	5
	.4byte		.L1550-.L2
	.byte		"CanSM_NetworkType_xact20"
	.byte		0
	.4byte		.L1070
	.uleb128	2189
	.uleb128	30
	.byte		0x1
	.4byte		.L1551
	.4byte		.L1552
	.sleb128	3
	.4byte		.L1070
	.uleb128	2189
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1554
.L1555:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2191
	.uleb128	66
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1556
	.section	.debug_info,,n
	.sleb128	0
.L1550:
	.section	.debug_info,,n
.L1561:
	.sleb128	5
	.4byte		.L1558-.L2
	.byte		"CanSM_NetworkType_xact21"
	.byte		0
	.4byte		.L1070
	.uleb128	2205
	.uleb128	30
	.byte		0x1
	.4byte		.L1559
	.4byte		.L1560
	.sleb128	3
	.4byte		.L1070
	.uleb128	2205
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1562
.L1563:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2209
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1564
	.section	.debug_info,,n
	.sleb128	0
.L1558:
	.section	.debug_info,,n
.L1569:
	.sleb128	5
	.4byte		.L1566-.L2
	.byte		"CanSM_NetworkType_xact22"
	.byte		0
	.4byte		.L1070
	.uleb128	2227
	.uleb128	30
	.byte		0x1
	.4byte		.L1567
	.4byte		.L1568
	.sleb128	3
	.4byte		.L1070
	.uleb128	2227
	.uleb128	30
	.byte		"HandleIndex"
	.byte		0
	.4byte		.L1087
	.4byte		.L1570
.L1571:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2231
	.uleb128	64
	.byte		"CanSM_NetworkType_ptr"
	.byte		0
	.4byte		.L1094
	.4byte		.L1572
.L1573:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2232
	.uleb128	63
	.byte		"controllers"
	.byte		0
	.4byte		.L1119
	.4byte		.L1574
.L1575:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2233
	.uleb128	27
	.byte		"controllers_Size"
	.byte		0
	.4byte		.L1072
	.4byte		.L1576
.L1577:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2234
	.uleb128	63
	.byte		"controller"
	.byte		0
	.4byte		.L1119
	.4byte		.L1578
.L1579:
	.sleb128	4
	.4byte		.L1070
	.uleb128	2235
	.uleb128	27
	.byte		"CanSM_ControllerTypeiter"
	.byte		0
	.4byte		.L1072
	.4byte		.L1580
	.section	.debug_info,,n
	.sleb128	0
.L1566:
	.section	.debug_info,,n
.L1581:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L1582
	.uleb128	490
	.uleb128	61
	.byte		"CanSM_Cfg_p"
	.byte		0
	.4byte		.L1075
	.0byte		.L1581
.L1583:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L1582
	.uleb128	491
	.uleb128	62
	.byte		"CanSM_NetworkType_p"
	.byte		0
	.4byte		.L1095
.L1584:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L1582
	.uleb128	509
	.uleb128	35
	.byte		"CanSM_LTtoPCHashValue"
	.byte		0
	.4byte		.L1585
	.section	.debug_info,,n
.L1588:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L1582
	.uleb128	512
	.uleb128	35
	.byte		"CanSM_LTHashValue"
	.byte		0
	.4byte		.L1585
.L1589:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L1590
	.uleb128	41
	.uleb128	32
	.byte		"CanSM_EcuPassive"
	.byte		0
	.4byte		.L1156
	.section	.debug_info,,n
.L1591:
	.sleb128	9
	.4byte		.L1070
	.uleb128	104
	.uleb128	37
	.byte		"CanSM_NetworkType_StateEventMatrix"
	.byte		0
	.4byte		.L1592
	.sleb128	5
	.byte		0x3
	.4byte		CanSM_NetworkType_StateEventMatrix
	.section	.debug_info,,n
.L1595:
	.sleb128	9
	.4byte		.L1070
	.uleb128	137
	.uleb128	28
	.byte		"CanSM_NetworkType_acts"
	.byte		0
	.4byte		.L1596
	.sleb128	5
	.byte		0x3
	.4byte		CanSM_NetworkType_acts
	.section	.debug_info,,n
.L1603:
	.sleb128	9
	.4byte		.L1070
	.uleb128	157
	.uleb128	28
	.byte		"CanSM_NetworkType_xacts"
	.byte		0
	.4byte		.L1604
	.sleb128	5
	.byte		0x3
	.4byte		CanSM_NetworkType_xacts
	.section	.debug_info,,n
.L1078:
	.sleb128	10
	.4byte		.L1582
	.uleb128	341
	.uleb128	14
	.4byte		.L1606-.L2
	.uleb128	20
	.section	.debug_info,,n
.L565:
	.sleb128	11
	.byte		"NetworkType_R14_Size"
	.byte		0
	.4byte		.L1087
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L566:
	.sleb128	11
	.byte		"RepetitionTime_u16"
	.byte		0
	.4byte		.L1607
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L567:
	.sleb128	11
	.byte		"RepetitionMax_u8"
	.byte		0
	.4byte		.L1087
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L568:
	.sleb128	11
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L1608
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L569:
	.sleb128	11
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L1608
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L570:
	.sleb128	11
	.byte		"NetworkType_R14"
	.byte		0
	.4byte		.L1095
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L1606:
.L1098:
	.sleb128	10
	.4byte		.L1582
	.uleb128	341
	.uleb128	14
	.4byte		.L1609-.L2
	.uleb128	24
.L552:
	.sleb128	11
	.byte		"RAM"
	.byte		0
	.4byte		.L1610
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L553:
	.sleb128	11
	.byte		"CanSMNetworkIndex"
	.byte		0
	.4byte		.L1087
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L554:
	.sleb128	11
	.byte		"CanSMNetworkHandle"
	.byte		0
	.4byte		.L1613
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L555:
	.sleb128	11
	.byte		"CanSMTransceiverId_u8"
	.byte		0
	.4byte		.L1087
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L556:
	.sleb128	11
	.byte		"CanSMPartialNetworkSupport"
	.byte		0
	.4byte		.L1155
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L557:
	.sleb128	11
	.byte		"CanSMBorTxConfirmationPolling"
	.byte		0
	.4byte		.L1155
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L558:
	.sleb128	11
	.byte		"ControllerType_R16_Size"
	.byte		0
	.4byte		.L1087
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L559:
	.sleb128	11
	.byte		"CanSMBorCounterL1ToL2_u8"
	.byte		0
	.4byte		.L1087
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L560:
	.sleb128	11
	.byte		"CanSMBorTimeL1_u16"
	.byte		0
	.4byte		.L1607
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L561:
	.sleb128	11
	.byte		"CanSMBorTimeL2_u16"
	.byte		0
	.4byte		.L1607
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L562:
	.sleb128	11
	.byte		"CanSMBorTimeTxEnsured_u16"
	.byte		0
	.4byte		.L1607
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L563:
	.sleb128	11
	.byte		"CanSMBorErrEvent"
	.byte		0
	.4byte		.L1615
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L564:
	.sleb128	11
	.byte		"ControllerType_R16"
	.byte		0
	.4byte		.L1119
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L1609:
.L1612:
	.sleb128	10
	.4byte		.L1582
	.uleb128	341
	.uleb128	14
	.4byte		.L1617-.L2
	.uleb128	42
.L518:
	.sleb128	11
	.byte		"current_state"
	.byte		0
	.4byte		.L1618
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L519:
	.sleb128	11
	.byte		"State"
	.byte		0
	.4byte		.L1143
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L520:
	.sleb128	11
	.byte		"CanSMBorTimer_u16"
	.byte		0
	.4byte		.L1143
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L521:
	.sleb128	11
	.byte		"CanSMBorTimerTxEnsured_u16"
	.byte		0
	.4byte		.L1143
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L522:
	.sleb128	11
	.byte		"ChannelTimer_u16"
	.byte		0
	.4byte		.L1143
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L523:
	.sleb128	11
	.byte		"RetryTimerEnabled"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L524:
	.sleb128	11
	.byte		"CanSMNetworkMode"
	.byte		0
	.4byte		.L1619
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L525:
	.sleb128	11
	.byte		"CanSMBorCounter_u8"
	.byte		0
	.4byte		.L1072
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L526:
	.sleb128	11
	.byte		"RequestModeTransition"
	.byte		0
	.4byte		.L1072
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L527:
	.sleb128	11
	.byte		"RetryCounter_u8"
	.byte		0
	.4byte		.L1072
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L528:
	.sleb128	11
	.byte		"RequestMode"
	.byte		0
	.4byte		.L1619
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L529:
	.sleb128	11
	.byte		"CanSM_InitFlag"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L530:
	.sleb128	11
	.byte		"CanSMCheckedBaudrateStatus"
	.byte		0
	.4byte		.L1072
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L531:
	.sleb128	11
	.byte		"CanSMCheckedBaudrate"
	.byte		0
	.4byte		.L1143
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L532:
	.sleb128	11
	.byte		"CanSMChangedBaudrate"
	.byte		0
	.4byte		.L1143
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L533:
	.sleb128	11
	.byte		"CurrentStateNoCom_b"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L534:
	.sleb128	11
	.byte		"TxTimeoutstate_b"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L535:
	.sleb128	11
	.byte		"T_REPEAT_MAX_HAPPENED"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L536:
	.sleb128	11
	.byte		"BufferedRequestMode"
	.byte		0
	.4byte		.L1619
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
.L537:
	.sleb128	11
	.byte		"CalledFromMainfunction"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L538:
	.sleb128	11
	.byte		"Lock"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L539:
	.sleb128	11
	.byte		"CanSM_ChangeBaudrateRequest"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L540:
	.sleb128	11
	.byte		"CanSM_ComModeRequest"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L541:
	.sleb128	11
	.byte		"CanSM_TransceiverWakeFlagIndication"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L542:
	.sleb128	11
	.byte		"CanSM_TrcvWuFlagIndication"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L543:
	.sleb128	11
	.byte		"CanSM_CtrlBusOffIndication"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L544:
	.sleb128	11
	.byte		"CanSM_CtrlSleepIndication"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L545:
	.sleb128	11
	.byte		"CanSM_CtrlStoppedIndication"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L546:
	.sleb128	11
	.byte		"CanSM_CtrlStartedIndication"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L547:
	.sleb128	11
	.byte		"CanSM_TransceiverModeNormalIndication"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L548:
	.sleb128	11
	.byte		"CanSM_TransceiverModeStandbyIndication"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	37
	.byte		0x1
.L549:
	.sleb128	11
	.byte		"CanSM_TxTimeoutIndication"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L550:
	.sleb128	11
	.byte		"BusOffDuringRecovery"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L551:
	.sleb128	11
	.byte		"BorFailTRepeatMax"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L1617:
.L1122:
	.sleb128	10
	.4byte		.L1582
	.uleb128	341
	.uleb128	14
	.4byte		.L1620-.L2
	.uleb128	8
.L514:
	.sleb128	11
	.byte		"RAM"
	.byte		0
	.4byte		.L1621
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L515:
	.sleb128	11
	.byte		"ControllerId_pu8"
	.byte		0
	.4byte		.L1087
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1620:
.L1623:
	.sleb128	10
	.4byte		.L1582
	.uleb128	341
	.uleb128	14
	.4byte		.L1624-.L2
	.uleb128	3
.L511:
	.sleb128	11
	.byte		"ControllerSleepIndication"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	11
	.byte		"ControllerStoppedIndication"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L513:
	.sleb128	11
	.byte		"ControllerStartedIndication"
	.byte		0
	.4byte		.L1156
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L1624:
	.section	.debug_info,,n
.L1164:
	.sleb128	12
	.4byte		.L1625
	.uleb128	129
	.uleb128	1
	.4byte		.L1626-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"CANIF_NO_NOTIFICATION"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CANIF_TX_RX_NOTIFICATION"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1626:
.L1110:
	.sleb128	12
	.4byte		.L1625
	.uleb128	74
	.uleb128	1
	.4byte		.L1627-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CANIF_CS_SLEEP"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CANIF_CS_STARTED"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"CANIF_CS_STOPPED"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"CANIF_CS_UNINIT"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1627:
.L1091:
	.sleb128	12
	.4byte		.L1628
	.uleb128	23
	.uleb128	15
	.4byte		.L1629-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CANTRCV_TRCVMODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CANTRCV_TRCVMODE_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"CANTRCV_TRCVMODE_STANDBY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1629:
	.section	.debug_info,,n
.L1073:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L1072:
	.sleb128	15
	.byte		"uint8"
	.byte		0
	.4byte		.L1073
.L1071:
	.sleb128	15
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L1072
.L1077:
	.sleb128	15
	.byte		"CanSM_ConfigType"
	.byte		0
	.4byte		.L1078
	.section	.debug_info,,n
.L1076:
	.sleb128	16
	.4byte		.L1077
	.section	.debug_info,,n
.L1075:
	.sleb128	17
	.4byte		.L1076
.L1087:
	.sleb128	16
	.4byte		.L1072
.L1090:
	.sleb128	15
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L1091
.L1089:
	.sleb128	16
	.4byte		.L1090
.L1097:
	.sleb128	15
	.byte		"CanSM_NetworkType"
	.byte		0
	.4byte		.L1098
.L1096:
	.sleb128	16
	.4byte		.L1097
.L1095:
	.sleb128	17
	.4byte		.L1096
.L1094:
	.sleb128	16
	.4byte		.L1095
.L1109:
	.sleb128	15
	.byte		"CanIf_ControllerModeType"
	.byte		0
	.4byte		.L1110
.L1108:
	.sleb128	16
	.4byte		.L1109
.L1121:
	.sleb128	15
	.byte		"CanSM_ControllerType"
	.byte		0
	.4byte		.L1122
.L1120:
	.sleb128	16
	.4byte		.L1121
.L1119:
	.sleb128	17
	.4byte		.L1120
.L1137:
	.sleb128	15
	.byte		"CANSM_Escher_EventNumber_t"
	.byte		0
	.4byte		.L1072
.L1136:
	.sleb128	16
	.4byte		.L1137
.L1144:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L1143:
	.sleb128	15
	.byte		"uint16"
	.byte		0
	.4byte		.L1144
.L1142:
	.sleb128	15
	.byte		"CANSM_Escher_SEMcell_t"
	.byte		0
	.4byte		.L1143
.L1156:
	.sleb128	15
	.byte		"boolean"
	.byte		0
	.4byte		.L1073
.L1155:
	.sleb128	16
	.4byte		.L1156
.L1163:
	.sleb128	15
	.byte		"CanIf_NotifStatusType"
	.byte		0
	.4byte		.L1164
.L1587:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L1586:
	.sleb128	15
	.byte		"uint32"
	.byte		0
	.4byte		.L1587
.L1585:
	.sleb128	16
	.4byte		.L1586
.L1594:
	.sleb128	16
	.4byte		.L1142
	.section	.debug_info,,n
.L1592:
	.sleb128	18
	.4byte		.L1593-.L2
	.4byte		.L1594
	.section	.debug_info,,n
	.sleb128	19
	.uleb128	12
	.sleb128	19
	.uleb128	21
	.sleb128	0
.L1593:
	.section	.debug_info,,n
.L1601:
	.sleb128	20
	.4byte		.L1602-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	21
	.4byte		.L1087
	.sleb128	0
.L1602:
.L1600:
	.sleb128	17
	.4byte		.L1601
.L1599:
	.sleb128	15
	.byte		"StateAction_t"
	.byte		0
	.4byte		.L1600
.L1598:
	.sleb128	16
	.4byte		.L1599
.L1596:
	.sleb128	18
	.4byte		.L1597-.L2
	.4byte		.L1598
	.sleb128	19
	.uleb128	12
	.sleb128	0
.L1597:
.L1604:
	.sleb128	18
	.4byte		.L1605-.L2
	.4byte		.L1598
	.sleb128	19
	.uleb128	21
	.sleb128	0
.L1605:
.L1607:
	.sleb128	16
	.4byte		.L1143
.L1608:
	.sleb128	17
	.4byte		.L1585
.L1611:
	.sleb128	15
	.byte		"CanSM_NetworkType_RAM"
	.byte		0
	.4byte		.L1612
.L1610:
	.sleb128	17
	.4byte		.L1611
.L1614:
	.sleb128	15
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L1072
.L1613:
	.sleb128	16
	.4byte		.L1614
.L1616:
	.sleb128	15
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L1143
.L1615:
	.sleb128	16
	.4byte		.L1616
.L1618:
	.sleb128	15
	.byte		"CANSM_Escher_StateNumber_t"
	.byte		0
	.4byte		.L1072
.L1619:
	.sleb128	15
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L1072
.L1622:
	.sleb128	15
	.byte		"CanSM_ControllerType_RAM"
	.byte		0
	.4byte		.L1623
.L1621:
	.sleb128	17
	.4byte		.L1622
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L1079:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L1081:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),5
	.d2locend
.L1088:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),0
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),0
	.d2locend
.L1092:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo21),4
	.d2locend
.L1099:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo20),31
	.d2locend
.L1101:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo23),3
	.d2locend
.L1107:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),0
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),0
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),0
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),0
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),0
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),0
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),0
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),0
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),0
	.d2locend
.L1111:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo29),4
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo44),31
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),4
	.d2locend
.L1113:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo43),30
	.d2locend
.L1115:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),29
	.d2locend
.L1117:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),3
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),3
	.d2locend
.L1123:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo44),28
	.d2locend
.L1125:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo44),26
	.d2locend
.L1127:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo31),3
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo35),3
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo60),3
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo44),3
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo37),3
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo39),3
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo41),3
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo43),3
	.d2locend
.L1129:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),5
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo44),27
	.d2locend
.L1135:
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),3
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),31
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),31
	.d2locend
.L1138:
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo73),4
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo74),0
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),0
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),0
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),0
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),0
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),0
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),0
	.d2locend
.L1140:
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo72),29
	.d2locend
.L1145:
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo72),30
	.d2locend
.L1153:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),3
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),31
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),3
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),3
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),31
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),3
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),3
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),31
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),3
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),31
	.d2locend
.L1154:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo90),4
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo91),30
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo97),30
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo103),30
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo109),30
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),30
	.d2locend
.L1157:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo90),5
	.d2locend
.L1159:
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo90),0
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo107),29
	.d2locend
.L1161:
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),28
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),3
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),28
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),3
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),28
	.d2locend
.L1165:
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),24
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),24
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),24
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),24
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),24
	.d2locend
.L1167:
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),26
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),26
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),26
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo140),26
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),26
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),26
	.d2locend
.L1169:
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo126),27
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),27
	.d2locend
.L1171:
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo126),26
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo145),26
	.d2locend
.L1173:
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),3
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo151),3
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo153),3
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo145),3
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo156),3
	.d2locend
.L1175:
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo126),25
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo145),25
	.d2locend
.L1183:
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo160),3
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo162),31
	.d2locend
.L1184:
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo163),4
	.d2locend
.L1185:
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo161),5
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo163),0
	.d2locend
.L1187:
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo166),3
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo167),3
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo169),30
	.d2locend
.L1189:
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo171),3
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo162),4
	.d2locend
.L1191:
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo173),29
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo163),6
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo162),29
	.d2locend
.L1197:
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo176),3
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo178),0
	.d2locreg	%offsetof(.Llo179), %offsetof(.Llo180),0
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo182),0
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo184),0
	.d2locreg	%offsetof(.Llo185), %offsetof(.Llo186),0
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo188),0
	.d2locreg	%offsetof(.Llo189), %offsetof(.Llo190),0
	.d2locend
.L1198:
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo191),4
	.d2locreg	%offsetof(.Llo192), %offsetof(.Llo193),4
	.d2locend
.L1200:
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo190),31
	.d2locend
.L1202:
	.d2locreg	%offsetof(.Llo194), %offsetof(.Llo182),5
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo196),5
	.d2locreg	%offsetof(.Llo197), %offsetof(.Llo191),5
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo186),3
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo199),5
	.d2locend
.L1208:
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo201),3
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo203),0
	.d2locreg	%offsetof(.Llo204), %offsetof(.Llo205),0
	.d2locreg	%offsetof(.Llo206), %offsetof(.Llo207),0
	.d2locreg	%offsetof(.Llo208), %offsetof(.Llo209),0
	.d2locreg	%offsetof(.Llo210), %offsetof(.Llo211),0
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo213),0
	.d2locreg	%offsetof(.Llo214), %offsetof(.Llo215),0
	.d2locreg	%offsetof(.Llo216), %offsetof(.Llo217),0
	.d2locend
.L1209:
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo218),4
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo219),31
	.d2locend
.L1211:
	.d2locreg	%offsetof(.Llo220), %offsetof(.Llo217),30
	.d2locend
.L1213:
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo221),3
	.d2locend
.L1215:
	.d2locreg	%offsetof(.Llo222), %offsetof(.Llo219),29
	.d2locend
.L1217:
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo219),28
	.d2locend
.L1219:
	.d2locreg	%offsetof(.Llo224), %offsetof(.Llo219),27
	.d2locend
.L1221:
	.d2locreg	%offsetof(.Llo225), %offsetof(.Llo226),3
	.d2locend
.L1223:
	.d2locreg	%offsetof(.Llo227), %offsetof(.Llo219),26
	.d2locend
.L1229:
	.d2locreg	%offsetof(.Llo228), %offsetof(.Llo229),3
	.d2locreg	%offsetof(.Llo230), %offsetof(.Llo231),0
	.d2locend
.L1231:
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo232),3
	.d2locend
.L1233:
	.d2locreg	%offsetof(.Llo233), %offsetof(.Llo234),4
	.d2locend
.L1239:
	.d2locreg	%offsetof(.Llo235), %offsetof(.Llo236),3
	.d2locreg	%offsetof(.Llo237), %offsetof(.Llo238),0
	.d2locend
.L1241:
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo239),3
	.d2locend
.L1243:
	.d2locreg	%offsetof(.Llo240), %offsetof(.Llo241),4
	.d2locend
.L1254:
	.d2locreg	%offsetof(.Llo242), %offsetof(.Llo243),3
	.d2locreg	%offsetof(.Llo244), %offsetof(.Llo245),4
	.d2locend
.L1256:
	.d2locreg	%offsetof(.Llo246), %offsetof(.Llo245),5
	.d2locend
.L1262:
	.d2locreg	%offsetof(.Llo247), %offsetof(.Llo248),3
	.d2locreg	%offsetof(.Llo249), %offsetof(.Llo250),0
	.d2locreg	%offsetof(.Llo251), %offsetof(.Llo252),0
	.d2locreg	%offsetof(.Llo253), %offsetof(.Llo254),3
	.d2locreg	%offsetof(.Llo255), %offsetof(.Llo256),0
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo258),3
	.d2locreg	%offsetof(.Llo259), %offsetof(.Llo260),0
	.d2locreg	%offsetof(.Llo261), %offsetof(.Llo262),3
	.d2locreg	%offsetof(.Llo263), %offsetof(.Llo264),0
	.d2locreg	%offsetof(.Llo265), %offsetof(.Llo266),3
	.d2locreg	%offsetof(.Llo267), %offsetof(.Llo268),0
	.d2locend
.L1264:
	.d2locreg	%offsetof(.Llo247), %offsetof(.Llo268),31
	.d2locend
.L1270:
	.d2locreg	%offsetof(.Llo269), %offsetof(.Llo270),3
	.d2locreg	%offsetof(.Llo271), %offsetof(.Llo272),0
	.d2locreg	%offsetof(.Llo273), %offsetof(.Llo274),3
	.d2locreg	%offsetof(.Llo275), %offsetof(.Llo276),0
	.d2locreg	%offsetof(.Llo277), %offsetof(.Llo278),0
	.d2locreg	%offsetof(.Llo279), %offsetof(.Llo280),3
	.d2locreg	%offsetof(.Llo281), %offsetof(.Llo282),0
	.d2locreg	%offsetof(.Llo283), %offsetof(.Llo284),3
	.d2locreg	%offsetof(.Llo285), %offsetof(.Llo286),0
	.d2locend
.L1272:
	.d2locreg	%offsetof(.Llo269), %offsetof(.Llo286),31
	.d2locend
.L1278:
	.d2locreg	%offsetof(.Llo287), %offsetof(.Llo288),3
	.d2locreg	%offsetof(.Llo289), %offsetof(.Llo290),0
	.d2locend
.L1280:
	.d2locreg	%offsetof(.Llo288), %offsetof(.Llo291),3
	.d2locreg	%offsetof(.Llo292), %offsetof(.Llo293),3
	.d2locend
.L1282:
	.d2locreg	%offsetof(.Llo294), %offsetof(.Llo291),5
	.d2locreg	%offsetof(.Llo292), %offsetof(.Llo293),4
	.d2locreg	%offsetof(.Llo295), %offsetof(.Llo296),4
	.d2locend
.L1288:
	.d2locreg	%offsetof(.Llo297), %offsetof(.Llo298),3
	.d2locreg	%offsetof(.Llo299), %offsetof(.Llo300),0
	.d2locreg	%offsetof(.Llo301), %offsetof(.Llo302),3
	.d2locreg	%offsetof(.Llo303), %offsetof(.Llo304),0
	.d2locreg	%offsetof(.Llo305), %offsetof(.Llo306),3
	.d2locreg	%offsetof(.Llo307), %offsetof(.Llo308),0
	.d2locend
.L1290:
	.d2locreg	%offsetof(.Llo297), %offsetof(.Llo309),31
	.d2locreg	%offsetof(.Llo310), %offsetof(.Llo299),4
	.d2locreg	%offsetof(.Llo311), %offsetof(.Llo308),31
	.d2locend
.L1296:
	.d2locreg	%offsetof(.Llo312), %offsetof(.Llo313),3
	.d2locreg	%offsetof(.Llo314), %offsetof(.Llo315),4
	.d2locend
.L1298:
	.d2locreg	%offsetof(.Llo314), %offsetof(.Llo315),3
	.d2locend
.L1304:
	.d2locreg	%offsetof(.Llo316), %offsetof(.Llo317),3
	.d2locreg	%offsetof(.Llo318), %offsetof(.Llo319),3
	.d2locreg	%offsetof(.Llo320), %offsetof(.Llo321),3
	.d2locend
.L1306:
	.d2locreg	%offsetof(.Llo316), %offsetof(.Llo321),31
	.d2locend
.L1312:
	.d2locreg	%offsetof(.Llo322), %offsetof(.Llo323),3
	.d2locreg	%offsetof(.Llo324), %offsetof(.Llo325),4
	.d2locend
.L1314:
	.d2locreg	%offsetof(.Llo326), %offsetof(.Llo325),5
	.d2locend
.L1320:
	.d2locreg	%offsetof(.Llo327), %offsetof(.Llo328),3
	.d2locreg	%offsetof(.Llo329), %offsetof(.Llo330),0
	.d2locend
.L1322:
	.d2locreg	%offsetof(.Llo328), %offsetof(.Llo331),3
	.d2locend
.L1324:
	.d2locreg	%offsetof(.Llo332), %offsetof(.Llo331),5
	.d2locend
.L1330:
	.d2locreg	%offsetof(.Llo333), %offsetof(.Llo334),3
	.d2locreg	%offsetof(.Llo335), %offsetof(.Llo336),0
	.d2locreg	%offsetof(.Llo337), %offsetof(.Llo338),3
	.d2locreg	%offsetof(.Llo339), %offsetof(.Llo340),0
	.d2locreg	%offsetof(.Llo341), %offsetof(.Llo342),3
	.d2locreg	%offsetof(.Llo343), %offsetof(.Llo344),0
	.d2locend
.L1332:
	.d2locreg	%offsetof(.Llo333), %offsetof(.Llo344),31
	.d2locend
.L1338:
	.d2locreg	%offsetof(.Llo345), %offsetof(.Llo346),3
	.d2locreg	%offsetof(.Llo347), %offsetof(.Llo348),4
	.d2locend
.L1340:
	.d2locreg	%offsetof(.Llo347), %offsetof(.Llo348),3
	.d2locend
.L1346:
	.d2locreg	%offsetof(.Llo349), %offsetof(.Llo350),3
	.d2locreg	%offsetof(.Llo351), %offsetof(.Llo352),0
	.d2locreg	%offsetof(.Llo353), %offsetof(.Llo354),0
	.d2locend
.L1348:
	.d2locreg	%offsetof(.Llo355), %offsetof(.Llo356),4
	.d2locend
.L1354:
	.d2locreg	%offsetof(.Llo357), %offsetof(.Llo358),3
	.d2locreg	%offsetof(.Llo359), %offsetof(.Llo360),4
	.d2locend
.L1356:
	.d2locreg	%offsetof(.Llo359), %offsetof(.Llo360),3
	.d2locend
.L1362:
	.d2locreg	%offsetof(.Llo361), %offsetof(.Llo362),3
	.d2locreg	%offsetof(.Llo363), %offsetof(.Llo364),4
	.d2locend
.L1364:
	.d2locreg	%offsetof(.Llo363), %offsetof(.Llo364),3
	.d2locend
.L1370:
	.d2locreg	%offsetof(.Llo365), %offsetof(.Llo366),3
	.d2locreg	%offsetof(.Llo367), %offsetof(.Llo368),0
	.d2locreg	%offsetof(.Llo369), %offsetof(.Llo370),0
	.d2locreg	%offsetof(.Llo371), %offsetof(.Llo372),0
	.d2locreg	%offsetof(.Llo373), %offsetof(.Llo374),0
	.d2locend
.L1372:
	.d2locreg	%offsetof(.Llo375), %offsetof(.Llo376),31
	.d2locend
.L1374:
	.d2locreg	%offsetof(.Llo377), %offsetof(.Llo378),30
	.d2locend
.L1376:
	.d2locreg	%offsetof(.Llo379), %offsetof(.Llo378),29
	.d2locend
.L1378:
	.d2locreg	%offsetof(.Llo380), %offsetof(.Llo372),3
	.d2locreg	%offsetof(.Llo381), %offsetof(.Llo382),3
	.d2locreg	%offsetof(.Llo383), %offsetof(.Llo374),3
	.d2locreg	%offsetof(.Llo384), %offsetof(.Llo385),3
	.d2locend
.L1380:
	.d2locreg	%offsetof(.Llo386), %offsetof(.Llo378),28
	.d2locend
.L1386:
	.d2locreg	%offsetof(.Llo387), %offsetof(.Llo388),3
	.d2locreg	%offsetof(.Llo389), %offsetof(.Llo390),0
	.d2locreg	%offsetof(.Llo391), %offsetof(.Llo392),0
	.d2locreg	%offsetof(.Llo393), %offsetof(.Llo394),0
	.d2locreg	%offsetof(.Llo395), %offsetof(.Llo396),0
	.d2locend
.L1388:
	.d2locreg	%offsetof(.Llo397), %offsetof(.Llo398),31
	.d2locend
.L1390:
	.d2locreg	%offsetof(.Llo399), %offsetof(.Llo400),30
	.d2locend
.L1392:
	.d2locreg	%offsetof(.Llo401), %offsetof(.Llo400),29
	.d2locend
.L1394:
	.d2locreg	%offsetof(.Llo402), %offsetof(.Llo394),3
	.d2locreg	%offsetof(.Llo403), %offsetof(.Llo404),3
	.d2locreg	%offsetof(.Llo405), %offsetof(.Llo396),3
	.d2locreg	%offsetof(.Llo406), %offsetof(.Llo407),3
	.d2locend
.L1396:
	.d2locreg	%offsetof(.Llo408), %offsetof(.Llo400),28
	.d2locend
.L1402:
	.d2locreg	%offsetof(.Llo409), %offsetof(.Llo410),3
	.d2locreg	%offsetof(.Llo411), %offsetof(.Llo412),0
	.d2locreg	%offsetof(.Llo413), %offsetof(.Llo414),0
	.d2locreg	%offsetof(.Llo415), %offsetof(.Llo416),0
	.d2locend
.L1404:
	.d2locreg	%offsetof(.Llo409), %offsetof(.Llo417),28
	.d2locend
.L1406:
	.d2locreg	%offsetof(.Llo418), %offsetof(.Llo419),31
	.d2locreg	%offsetof(.Llo420), %offsetof(.Llo421),31
	.d2locend
.L1408:
	.d2locreg	%offsetof(.Llo422), %offsetof(.Llo419),30
	.d2locreg	%offsetof(.Llo423), %offsetof(.Llo421),30
	.d2locend
.L1410:
	.d2locreg	%offsetof(.Llo424), %offsetof(.Llo414),3
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo426),3
	.d2locreg	%offsetof(.Llo427), %offsetof(.Llo416),3
	.d2locreg	%offsetof(.Llo428), %offsetof(.Llo429),3
	.d2locreg	%offsetof(.Llo430), %offsetof(.Llo431),3
	.d2locend
.L1412:
	.d2locreg	%offsetof(.Llo432), %offsetof(.Llo419),29
	.d2locreg	%offsetof(.Llo433), %offsetof(.Llo421),29
	.d2locend
.L1418:
	.d2locreg	%offsetof(.Llo434), %offsetof(.Llo435),3
	.d2locreg	%offsetof(.Llo436), %offsetof(.Llo437),0
	.d2locreg	%offsetof(.Llo438), %offsetof(.Llo439),0
	.d2locreg	%offsetof(.Llo440), %offsetof(.Llo441),0
	.d2locreg	%offsetof(.Llo442), %offsetof(.Llo443),0
	.d2locend
.L1420:
	.d2locreg	%offsetof(.Llo444), %offsetof(.Llo445),31
	.d2locend
.L1422:
	.d2locreg	%offsetof(.Llo446), %offsetof(.Llo447),30
	.d2locend
.L1424:
	.d2locreg	%offsetof(.Llo448), %offsetof(.Llo447),29
	.d2locend
.L1426:
	.d2locreg	%offsetof(.Llo449), %offsetof(.Llo441),3
	.d2locreg	%offsetof(.Llo450), %offsetof(.Llo451),3
	.d2locreg	%offsetof(.Llo452), %offsetof(.Llo443),3
	.d2locreg	%offsetof(.Llo453), %offsetof(.Llo454),3
	.d2locend
.L1428:
	.d2locreg	%offsetof(.Llo455), %offsetof(.Llo447),28
	.d2locend
.L1434:
	.d2locreg	%offsetof(.Llo456), %offsetof(.Llo457),3
	.d2locreg	%offsetof(.Llo458), %offsetof(.Llo459),0
	.d2locend
.L1436:
	.d2locreg	%offsetof(.Llo456), %offsetof(.Llo460),31
	.d2locend
.L1442:
	.d2locreg	%offsetof(.Llo461), %offsetof(.Llo462),3
	.d2locreg	%offsetof(.Llo463), %offsetof(.Llo464),0
	.d2locreg	%offsetof(.Llo465), %offsetof(.Llo466),0
	.d2locend
.L1444:
	.d2locreg	%offsetof(.Llo467), %offsetof(.Llo468),4
	.d2locend
.L1450:
	.d2locreg	%offsetof(.Llo469), %offsetof(.Llo470),3
	.d2locreg	%offsetof(.Llo471), %offsetof(.Llo472),0
	.d2locreg	%offsetof(.Llo473), %offsetof(.Llo474),0
	.d2locreg	%offsetof(.Llo475), %offsetof(.Llo476),0
	.d2locend
.L1452:
	.d2locreg	%offsetof(.Llo469), %offsetof(.Llo477),28
	.d2locend
.L1454:
	.d2locreg	%offsetof(.Llo478), %offsetof(.Llo479),31
	.d2locreg	%offsetof(.Llo480), %offsetof(.Llo481),31
	.d2locend
.L1456:
	.d2locreg	%offsetof(.Llo482), %offsetof(.Llo479),30
	.d2locreg	%offsetof(.Llo483), %offsetof(.Llo481),30
	.d2locend
.L1458:
	.d2locreg	%offsetof(.Llo484), %offsetof(.Llo474),3
	.d2locreg	%offsetof(.Llo485), %offsetof(.Llo486),3
	.d2locreg	%offsetof(.Llo487), %offsetof(.Llo476),3
	.d2locreg	%offsetof(.Llo488), %offsetof(.Llo489),3
	.d2locreg	%offsetof(.Llo490), %offsetof(.Llo491),3
	.d2locend
.L1460:
	.d2locreg	%offsetof(.Llo492), %offsetof(.Llo479),29
	.d2locreg	%offsetof(.Llo493), %offsetof(.Llo481),29
	.d2locend
.L1466:
	.d2locreg	%offsetof(.Llo494), %offsetof(.Llo495),3
	.d2locreg	%offsetof(.Llo496), %offsetof(.Llo497),0
	.d2locreg	%offsetof(.Llo498), %offsetof(.Llo499),0
	.d2locend
.L1468:
	.d2locreg	%offsetof(.Llo496), %offsetof(.Llo500),3
	.d2locend
.L1474:
	.d2locreg	%offsetof(.Llo501), %offsetof(.Llo502),3
	.d2locreg	%offsetof(.Llo503), %offsetof(.Llo504),0
	.d2locend
.L1476:
	.d2locreg	%offsetof(.Llo501), %offsetof(.Llo505),31
	.d2locend
.L1482:
	.d2locreg	%offsetof(.Llo506), %offsetof(.Llo507),3
	.d2locreg	%offsetof(.Llo508), %offsetof(.Llo509),0
	.d2locreg	%offsetof(.Llo510), %offsetof(.Llo511),0
	.d2locreg	%offsetof(.Llo512), %offsetof(.Llo513),0
	.d2locend
.L1484:
	.d2locreg	%offsetof(.Llo506), %offsetof(.Llo514),31
	.d2locreg	%offsetof(.Llo515), %offsetof(.Llo510),0
	.d2locreg	%offsetof(.Llo511), %offsetof(.Llo516),31
	.d2locend
.L1490:
	.d2locreg	%offsetof(.Llo517), %offsetof(.Llo518),3
	.d2locreg	%offsetof(.Llo519), %offsetof(.Llo520),0
	.d2locreg	%offsetof(.Llo521), %offsetof(.Llo522),0
	.d2locreg	%offsetof(.Llo523), %offsetof(.Llo524),0
	.d2locend
.L1492:
	.d2locreg	%offsetof(.Llo517), %offsetof(.Llo525),31
	.d2locreg	%offsetof(.Llo526), %offsetof(.Llo521),0
	.d2locreg	%offsetof(.Llo522), %offsetof(.Llo527),31
	.d2locend
.L1498:
	.d2locreg	%offsetof(.Llo528), %offsetof(.Llo529),3
	.d2locreg	%offsetof(.Llo530), %offsetof(.Llo531),0
	.d2locreg	%offsetof(.Llo532), %offsetof(.Llo533),0
	.d2locend
.L1500:
	.d2locreg	%offsetof(.Llo530), %offsetof(.Llo534),3
	.d2locreg	%offsetof(.Llo535), %offsetof(.Llo536),0
	.d2locreg	%offsetof(.Llo537), %offsetof(.Llo533),3
	.d2locreg	%offsetof(.Llo538), %offsetof(.Llo539),3
	.d2locend
.L1502:
	.d2locreg	%offsetof(.Llo535), %offsetof(.Llo540),31
	.d2locend
.L1504:
	.d2locreg	%offsetof(.Llo541), %offsetof(.Llo540),30
	.d2locend
.L1506:
	.d2locreg	%offsetof(.Llo539), %offsetof(.Llo542),3
	.d2locend
.L1508:
	.d2locreg	%offsetof(.Llo528), %offsetof(.Llo540),29
	.d2locend
.L1514:
	.d2locreg	%offsetof(.Llo543), %offsetof(.Llo544),3
	.d2locreg	%offsetof(.Llo545), %offsetof(.Llo546),0
	.d2locreg	%offsetof(.Llo547), %offsetof(.Llo548),0
	.d2locreg	%offsetof(.Llo549), %offsetof(.Llo550),0
	.d2locreg	%offsetof(.Llo551), %offsetof(.Llo552),0
	.d2locend
.L1516:
	.d2locreg	%offsetof(.Llo553), %offsetof(.Llo554),31
	.d2locend
.L1518:
	.d2locreg	%offsetof(.Llo555), %offsetof(.Llo556),30
	.d2locend
.L1520:
	.d2locreg	%offsetof(.Llo557), %offsetof(.Llo556),29
	.d2locend
.L1522:
	.d2locreg	%offsetof(.Llo558), %offsetof(.Llo550),3
	.d2locreg	%offsetof(.Llo559), %offsetof(.Llo560),3
	.d2locreg	%offsetof(.Llo561), %offsetof(.Llo552),3
	.d2locreg	%offsetof(.Llo562), %offsetof(.Llo563),3
	.d2locend
.L1524:
	.d2locreg	%offsetof(.Llo564), %offsetof(.Llo556),28
	.d2locend
.L1530:
	.d2locreg	%offsetof(.Llo565), %offsetof(.Llo566),3
	.d2locreg	%offsetof(.Llo567), %offsetof(.Llo568),0
	.d2locreg	%offsetof(.Llo569), %offsetof(.Llo570),0
	.d2locend
.L1532:
	.d2locreg	%offsetof(.Llo571), %offsetof(.Llo572),4
	.d2locend
.L1538:
	.d2locreg	%offsetof(.Llo573), %offsetof(.Llo574),3
	.d2locreg	%offsetof(.Llo575), %offsetof(.Llo576),0
	.d2locend
.L1540:
	.d2locreg	%offsetof(.Llo573), %offsetof(.Llo577),31
	.d2locend
.L1546:
	.d2locreg	%offsetof(.Llo578), %offsetof(.Llo579),3
	.d2locreg	%offsetof(.Llo580), %offsetof(.Llo581),0
	.d2locend
.L1548:
	.d2locreg	%offsetof(.Llo578), %offsetof(.Llo582),31
	.d2locend
.L1554:
	.d2locreg	%offsetof(.Llo583), %offsetof(.Llo584),3
	.d2locreg	%offsetof(.Llo585), %offsetof(.Llo586),0
	.d2locend
.L1556:
	.d2locreg	%offsetof(.Llo583), %offsetof(.Llo587),31
	.d2locend
.L1562:
	.d2locreg	%offsetof(.Llo588), %offsetof(.Llo589),3
	.d2locreg	%offsetof(.Llo590), %offsetof(.Llo591),4
	.d2locend
.L1564:
	.d2locreg	%offsetof(.Llo590), %offsetof(.Llo591),3
	.d2locend
.L1570:
	.d2locreg	%offsetof(.Llo592), %offsetof(.Llo593),3
	.d2locreg	%offsetof(.Llo594), %offsetof(.Llo595),0
	.d2locreg	%offsetof(.Llo596), %offsetof(.Llo597),0
	.d2locreg	%offsetof(.Llo598), %offsetof(.Llo599),0
	.d2locreg	%offsetof(.Llo600), %offsetof(.Llo601),0
	.d2locend
.L1572:
	.d2locreg	%offsetof(.Llo602), %offsetof(.Llo603),31
	.d2locend
.L1574:
	.d2locreg	%offsetof(.Llo604), %offsetof(.Llo605),30
	.d2locend
.L1576:
	.d2locreg	%offsetof(.Llo606), %offsetof(.Llo605),29
	.d2locend
.L1578:
	.d2locreg	%offsetof(.Llo607), %offsetof(.Llo599),3
	.d2locreg	%offsetof(.Llo608), %offsetof(.Llo609),3
	.d2locreg	%offsetof(.Llo610), %offsetof(.Llo601),3
	.d2locreg	%offsetof(.Llo611), %offsetof(.Llo612),3
	.d2locend
.L1580:
	.d2locreg	%offsetof(.Llo613), %offsetof(.Llo605),28
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanSM_NetworkType_xact22"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "BswM_CanSM_CurrentState","CanIf_SetPduMode","ComM_BusSM_ModeIndication"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact21"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact20"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "BswM_CanSM_CurrentState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact19"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "BswM_CanSM_CurrentState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact18"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "BswM_CanSM_CurrentState","ComM_BusSM_ModeIndication"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact17"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "ComM_BusSM_ModeIndication"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact16"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "BswM_CanSM_CurrentState","CanIf_SetPduMode","ComM_BusSM_ModeIndication"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact15"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanIf_SetPduMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact14"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "BswM_CanSM_CurrentState","ComM_BusSM_ModeIndication","Dem_ReportErrorStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact13"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "BswM_CanSM_CurrentState","ComM_BusSM_ModeIndication","Dem_ReportErrorStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact12"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dem_ReportErrorStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact11"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "BswM_CanSM_CurrentState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact10"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "BswM_CanSM_CurrentState","CanIf_SetPduMode","ComM_BusSM_ModeIndication"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact9"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "ComM_BusSM_ModeIndication"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact8"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "BswM_CanSM_CurrentState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact7"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "BswM_CanSM_CurrentState","CanIf_SetPduMode","ComM_BusSM_ModeIndication"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact6"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "BswM_CanSM_CurrentState","CanIf_SetPduMode","ComM_BusSM_ModeIndication"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact5"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "BswM_CanSM_CurrentState","CanIf_SetPduMode","ComM_BusSM_ModeIndication"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact4"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "BswM_CanSM_CurrentState","CanIf_SetPduMode","ComM_BusSM_ModeIndication"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact3"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact2"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_xact1"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "ComM_BusSM_ModeIndication"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_act12"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_act11"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanSM_ProcessController"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_act9"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanSM_ProcessStateMachine"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_act8"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_act7"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanSM_ProcessController"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_act6"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_act5"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanSM_ProcessController"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_act4"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanSM_ProcessStateMachine"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_act3"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanSM_ProcessController","CanSM_ProcessTrcv"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_act2"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanSM_EntryController","CanSM_ProcessController","CanSM_ProcessTrcv"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_act1"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_act0"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_ProcessTrcvChckWUFlag"
	.wrcm.nstrlist "calls", "CanSM_NetworkType_Dispatch"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_ProcessTrcvClrWUFlag"
	.wrcm.nstrlist "calls", "CanSM_NetworkType_Dispatch"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_ProcessController"
	.wrcm.nstrlist "calls", "CanIf_SetControllerMode"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "CanSM_ProcessTrcv"
	.wrcm.nstrlist "calls", "CanIf_SetTrcvMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_ProcessSM"
	.wrcm.nstrlist "calls", "CanSM_GetApiTransition","CanSM_ProcessStateMachine"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_ProcessStateMachine"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CanIf_GetTxConfirmationState","CanIf_SetPduMode","CanSM_EntryController","CanSM_EntryTrcv","CanSM_NetworkType_Dispatch"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "CanSM_NetworkType_Dispatch"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_EntryController"
	.wrcm.nstrlist "calls", "CanIf_SetControllerMode"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "CanSM_EntryTrcv"
	.wrcm.nstrlist "calls", "CanIf_SetTrcvMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_ConsistencyCheck"
	.wrcm.nint32 "frameSize", 16
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanSM\ssc\make\..\src\CanSM.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
