#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanSM_ControllerModeIndication.c"
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
# static FUNC(uint8, CANSM_CODE) CanSM_GetControllerModeIndicationTransition(
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_ControllerModeIndication.c"
        .d2line         141,32
#$$ld
.L673:

#$$bf	CanSM_GetControllerModeIndicationTransition,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r28,r29,r30,r31,cr0,lr
	.d2_cfa_start __cie
CanSM_GetControllerModeIndicationTransition:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# net=r3 net=r3
	mr		r31,r4		# controller=r31 controller=r4
.Llo74:
	mr		r30,r5		# ControllerMode=r30 ControllerMode=r5
	.d2prologue_end
#         CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST)net,
#         CONSTP2CONST(CanSM_ControllerType,AUTOMATIC,CANSM_APPL_CONST)controller,
#         CONST(CanIf_ControllerModeType,AUTOMATIC) ControllerMode)
# {
#     VAR(uint8,AUTOMATIC) SleepIndCount;
#     VAR(uint8,AUTOMATIC) StopIndCount;
#     VAR(uint8,AUTOMATIC) StartIndCount;
#     VAR(uint16,AUTOMATIC) state;
#     VAR(uint8, AUTOMATIC)controllers_Size;
#     VAR(uint8, AUTOMATIC) Transition;
#     SleepIndCount = 0;
	.d2line		152
.Llo6:
	diab.li		r4,0		# SleepIndCount=r4
#     StopIndCount = 0;
	.d2line		153
.Llo3:
	diab.li		r5,0
#     StartIndCount = 0;
	.d2line		154
.Llo50:
	diab.li		r6,0
#     state = net->RAM->State;
	.d2line		155
.Llo55:
	lwz		r7,0(r3)		# net=r3
	lhz		r0,2(r7)
.Llo57:
	mr		r0,r0		# state=r0 state=r0
#     controllers_Size = net->ControllerType_R16_Size;
	.d2line		156
	lbz		r28,9(r3)		# net=r3
.Llo58:
	mr		r28,r28		# controllers_Size=r28 controllers_Size=r28
# 
#     Transition = CANSM_NO_TRANSITION;
	.d2line		158
	diab.li		r7,0
# 
#     if(ControllerMode == CANIF_CS_STOPPED)
	.d2line		160
.Llo60:
	se_cmpi		r30,2		# ControllerMode=r30
	bc		0,2,.L595	# ne
	.section	.text_vle
.L709:
#     {
#         P2CONST(CanSM_ControllerType, AUTOMATIC,CANSM_APPL_CONST)controllers;
#         VAR(uint8,AUTOMATIC) Ctrl;
# 
#         controllers = net->ControllerType_R16;
	.d2line		165
.Llo4:
	lwz		r8,20(r3)		# net=r3
.Llo72:
	mr		r8,r8		# controllers=r8 controllers=r8
#         controller->RAM->ControllerStoppedIndication = TRUE;
	.d2line		166
.Llo73:
	diab.li		r30,1		# ControllerMode=r30
.Llo7:
	lwz		r31,0(r31)		# controller=r31 controller=r31
	stb		r30,1(r31)		# controller=r31 ControllerMode=r30
#         for(Ctrl = 0; Ctrl < controllers_Size; Ctrl++)
	.d2line		167
	diab.li		r31,0		# Ctrl=r31
.L596:
.Llo8:
	rlwinm		r30,r31,0,24,31		# ControllerMode=r30 Ctrl=r31
.Llo9:
	rlwinm		r29,r28,0,24,31		# controllers_Size=r28
	se_cmp		r30,r29		# ControllerMode=r30
	bc		0,0,.L600	# ge
#         {
#             if(controllers[Ctrl].RAM->ControllerStoppedIndication == TRUE)
	.d2line		169
.Llo10:
	rlwinm		r30,r31,3,21,28		# ControllerMode=r30 Ctrl=r31
.Llo11:
	lwzux		r29,r30,r8		# ControllerMode=r30
	lbz		r30,1(r29)		# ControllerMode=r30
	se_cmpi		r30,1		# ControllerMode=r30
	bc		0,2,.L599	# ne
#             {
#                 StopIndCount++;
	.d2line		171
.Llo12:
	diab.addi		r30,r5,1		# ControllerMode=r30 StopIndCount=r5
	se_addi		r5,1		# StopIndCount=r5 StopIndCount=r5
.L599:
#             }
#         }
	.d2line		173
	diab.addi		r30,r31,1		# ControllerMode=r30 Ctrl=r31
	se_addi		r31,1		# Ctrl=r31 Ctrl=r31
	b		.L596
	.section	.text_vle
.L710:
.L595:
#     }
#     else if(ControllerMode == CANIF_CS_SLEEP)
	.d2line		175
.Llo13:
	se_cmpi		r30,0		# ControllerMode=r30
	bc		0,2,.L601	# ne
	.section	.text_vle
.L717:
#     {
#         P2CONST(CanSM_ControllerType ,AUTOMATIC,CANSM_APPL_CONST)controllers;
#         VAR(uint8,AUTOMATIC) Ctrl;
# 
#         controller->RAM->ControllerSleepIndication = TRUE;
	.d2line		180
.Llo14:
	diab.li		r30,1		# ControllerMode=r30
.Llo15:
	lwz		r31,0(r31)		# controller=r31 controller=r31
	stb		r30,0(r31)		# controller=r31 ControllerMode=r30
#         controllers = net->ControllerType_R16;
	.d2line		181
	lwz		r8,20(r3)		# net=r3
.Llo98:
	mr		r8,r8		# controllers=r8 controllers=r8
#         for(Ctrl = 0; Ctrl < controllers_Size; Ctrl++)
	.d2line		182
.Llo99:
	diab.li		r31,0		# Ctrl=r31
.L602:
.Llo16:
	rlwinm		r30,r31,0,24,31		# ControllerMode=r30 Ctrl=r31
.Llo17:
	rlwinm		r29,r28,0,24,31		# controllers_Size=r28
	se_cmp		r30,r29		# ControllerMode=r30
	bc		0,0,.L600	# ge
#         {
#             if(controllers[Ctrl].RAM->ControllerSleepIndication == TRUE)
	.d2line		184
.Llo18:
	rlwinm		r30,r31,3,21,28		# ControllerMode=r30 Ctrl=r31
.Llo19:
	lwzux		r29,r30,r8		# ControllerMode=r30
	lbz		r30,0(r29)		# ControllerMode=r30
	se_cmpi		r30,1		# ControllerMode=r30
	bc		0,2,.L605	# ne
#             {
#                 SleepIndCount++;
	.d2line		186
.Llo20:
	diab.addi		r30,r4,1		# ControllerMode=r30 SleepIndCount=r4
	se_addi		r4,1		# SleepIndCount=r4 SleepIndCount=r4
.L605:
#             }
#         }
	.d2line		188
	diab.addi		r30,r31,1		# ControllerMode=r30 Ctrl=r31
	se_addi		r31,1		# Ctrl=r31 Ctrl=r31
	b		.L602
	.section	.text_vle
.L718:
.L601:
#     }
#     else if(ControllerMode == CANIF_CS_STARTED)
	.d2line		190
.Llo21:
	se_cmpi		r30,1		# ControllerMode=r30
	bc		0,2,.L600	# ne
	.section	.text_vle
.L725:
#     {
#         P2CONST(CanSM_ControllerType ,AUTOMATIC,CANSM_APPL_CONST) controllers;
#         VAR(uint8,AUTOMATIC) Ctrl;
# 
#         controller->RAM->ControllerStartedIndication = TRUE;
	.d2line		195
.Llo22:
	diab.li		r30,1		# ControllerMode=r30
.Llo23:
	lwz		r31,0(r31)		# controller=r31 controller=r31
	stb		r30,2(r31)		# controller=r31 ControllerMode=r30
#         controllers = net->ControllerType_R16;
	.d2line		196
	lwz		r8,20(r3)		# net=r3
.Llo100:
	mr		r8,r8		# controllers=r8 controllers=r8
#         for(Ctrl = 0; Ctrl < controllers_Size; Ctrl++)
	.d2line		197
.Llo101:
	diab.li		r31,0		# Ctrl=r31
.L608:
.Llo24:
	rlwinm		r30,r31,0,24,31		# ControllerMode=r30 Ctrl=r31
.Llo25:
	rlwinm		r29,r28,0,24,31		# controllers_Size=r28
	se_cmp		r30,r29		# ControllerMode=r30
	bc		0,0,.L600	# ge
#         {
#             if(controllers[Ctrl].RAM->ControllerStartedIndication == TRUE)
	.d2line		199
.Llo26:
	rlwinm		r30,r31,3,21,28		# ControllerMode=r30 Ctrl=r31
.Llo27:
	lwzux		r29,r30,r8		# ControllerMode=r30
	lbz		r30,2(r29)		# ControllerMode=r30
	se_cmpi		r30,1		# ControllerMode=r30
	bc		0,2,.L611	# ne
#             {
#                 StartIndCount++;
	.d2line		201
.Llo28:
	diab.addi		r30,r6,1		# ControllerMode=r30 StartIndCount=r6
	se_addi		r6,1		# StartIndCount=r6 StartIndCount=r6
.L611:
#             }
#         }
	.d2line		203
	diab.addi		r30,r31,1		# ControllerMode=r30 Ctrl=r31
	se_addi		r31,1		# Ctrl=r31 Ctrl=r31
	b		.L608
	.section	.text_vle
.L726:
.L600:
#     }
#     else
#     {
#         /* Concluding else - nothing to do. */
#     }
# 
#     if(net->CanSMPartialNetworkSupport == TRUE)
	.d2line		210
.Llo5:
	lbz		r31,7(r3)		# Ctrl=r31 net=r3
.Llo75:
	se_cmpi		r31,1		# Ctrl=r31
	bc		0,2,.L613	# ne
#     {
#         if((state == CANSM_ST_PNC_CC_STOP) && (StopIndCount == controllers_Size))
	.d2line		212
.Llo76:
	rlwinm		r31,r0,0,16,31		# Ctrl=r31 state=r0
.Llo77:
	se_cmpi		r31,13		# Ctrl=r31
	bc		0,2,.L614	# ne
.Llo78:
	rlwinm		r30,r5,0,24,31		# ControllerMode=r30 StopIndCount=r5
.Llo29:
	rlwinm		r29,r28,0,24,31		# controllers_Size=r28
	se_cmp		r30,r29		# ControllerMode=r30
	bc		0,2,.L614	# ne
#         {
#             Transition = CANSM_PNC_CC_STOP_TO_PNC_TRCV_NOR;
	.d2line		214
.Llo30:
	diab.li		r7,26		# Transition=r7
	b		.L618
.L614:
#         }
#         else if(((state == CANSM_ST_PNC_CC_SLEEP) || (state == CANSM_ST_PNC_CC_SLEEP_WAIT)) && (SleepIndCount == controllers_Size))
	.d2line		216
	rlwinm		r31,r0,0,16,31		# Ctrl=r31 state=r0
.Llo79:
	se_cmpi		r31,14		# Ctrl=r31
	bc		1,2,.L645	# eq
.Llo80:
	rlwinm		r31,r0,0,16,31		# Ctrl=r31 state=r0
.Llo81:
	se_cmpi		r31,26		# Ctrl=r31
	bc		0,2,.L618	# ne
.L645:
.Llo82:
	rlwinm		r4,r4,0,24,31		# SleepIndCount=r4 SleepIndCount=r4
	rlwinm		r29,r28,0,24,31		# controllers_Size=r28
	se_cmp		r4,r29		# SleepIndCount=r4
	bc		0,2,.L618	# ne
#         {
#             Transition = CANSM_PNC_CC_SLEEP_TO_PN_WF_CC_SLEEP;
	.d2line		218
.Llo39:
	diab.li		r7,27		# Transition=r7
	b		.L618
.L613:
#         }
#         else
#         {
#             /* Concluding else - nothing to do. */
#         }
#     }
#     else
#     {
#         if((state == CANSM_ST_PNC_CC_STOP) && (StopIndCount == controllers_Size))
	.d2line		227
.Llo40:
	rlwinm		r31,r0,0,16,31		# Ctrl=r31 state=r0
.Llo83:
	se_cmpi		r31,13		# Ctrl=r31
	bc		0,2,.L619	# ne
.Llo84:
	rlwinm		r30,r5,0,24,31		# ControllerMode=r30 StopIndCount=r5
.Llo31:
	rlwinm		r29,r28,0,24,31		# controllers_Size=r28
	se_cmp		r30,r29		# ControllerMode=r30
	bc		0,2,.L619	# ne
#         {
#             Transition = CANSM_PNC_CC_STOP_TO_PNC_CC_SLEEP;
	.d2line		229
.Llo32:
	diab.li		r7,16		# Transition=r7
	b		.L618
.L619:
#         }
#         else if((state == CANSM_ST_PNC_CC_SLEEP) && (SleepIndCount == controllers_Size))
	.d2line		231
	rlwinm		r31,r0,0,16,31		# Ctrl=r31 state=r0
.Llo85:
	se_cmpi		r31,14		# Ctrl=r31
	bc		0,2,.L618	# ne
.Llo86:
	rlwinm		r4,r4,0,24,31		# SleepIndCount=r4 SleepIndCount=r4
	rlwinm		r29,r28,0,24,31		# controllers_Size=r28
	se_cmp		r4,r29		# SleepIndCount=r4
#         {
#             Transition = CANSM_PNC_CC_SLEEP_TO_PNC_TRCV_NOR;
	.d2line		233
	diab.li		r4,17		# SleepIndCount=r4
	isel		r7,r4,r7,2		# Transition=r7 SleepIndCount=r4 Transition=r7
.L618:
#         }
#         else
#         {
#             /* Concluding else - nothing to do. */
#         }
#     }
#     if((state == CANSM_ST_PFC_CC_STOP) && (StopIndCount == controllers_Size))
	.d2line		240
	rlwinm		r31,r0,0,16,31		# Ctrl=r31 state=r0
.Llo87:
	se_cmpi		r31,20		# Ctrl=r31
	bc		0,2,.L623	# ne
.Llo41:
	rlwinm		r4,r5,0,24,31		# SleepIndCount=r4 StopIndCount=r5
.Llo42:
	rlwinm		r29,r28,0,24,31		# controllers_Size=r28
	se_cmp		r4,r29		# SleepIndCount=r4
	bc		0,2,.L623	# ne
#     {
#         Transition = CANSM_PFC_CC_STOP_TO_PFC_CC_START;
	.d2line		242
.Llo43:
	diab.li		r7,4		# Transition=r7
	b		.L624
.L623:
#     }
#     else if((state == CANSM_ST_PFC_CC_START) && (StartIndCount == controllers_Size))
	.d2line		244
	rlwinm		r31,r0,0,16,31		# Ctrl=r31 state=r0
.Llo88:
	se_cmpi		r31,21		# Ctrl=r31
	bc		0,2,.L625	# ne
.Llo89:
	rlwinm		r30,r6,0,24,31		# ControllerMode=r30 StartIndCount=r6
.Llo33:
	rlwinm		r29,r28,0,24,31		# controllers_Size=r28
	se_cmp		r30,r29		# ControllerMode=r30
	bc		0,2,.L625	# ne
#     {
#         Transition = CANSM_PFC_CC_START_TO_FC_BO_CHECK;
	.d2line		246
.Llo34:
	diab.li		r7,5		# Transition=r7
	b		.L624
.L625:
#     }
#     else if((state == CANSM_ST_FC_CC_RSTRT) && (StartIndCount == controllers_Size))
	.d2line		248
	rlwinm		r31,r0,0,16,31		# Ctrl=r31 state=r0
.Llo90:
	se_cmpi		r31,10		# Ctrl=r31
	bc		0,2,.L627	# ne
.Llo91:
	rlwinm		r30,r6,0,24,31		# ControllerMode=r30 StartIndCount=r6
.Llo35:
	rlwinm		r29,r28,0,24,31		# controllers_Size=r28
	se_cmp		r30,r29		# ControllerMode=r30
	bc		0,2,.L627	# ne
#     {
#         Transition = CANSM_FC_CC_RSTRT_TO_FC_BO_TXOFF;
	.d2line		250
.Llo36:
	diab.li		r7,13		# Transition=r7
	b		.L624
.L627:
#     }
#     else if((state == CANSM_ST_CB_CC_STOP) && (StopIndCount == controllers_Size))
	.d2line		252
	rlwinm		r31,r0,0,16,31		# Ctrl=r31 state=r0
.Llo92:
	se_cmpi		r31,23		# Ctrl=r31
	bc		0,2,.L624	# ne
.Llo93:
	rlwinm		r4,r5,0,24,31		# SleepIndCount=r4 StopIndCount=r5
.Llo44:
	rlwinm		r29,r28,0,24,31		# controllers_Size=r28
	se_cmp		r4,r29		# SleepIndCount=r4
#     {
#         Transition = CANSM_CB_CC_STOP_TO_CB_CC_START;
	.d2line		254
	diab.li		r4,22		# SleepIndCount=r4
	isel		r7,r4,r7,2		# Transition=r7 SleepIndCount=r4 Transition=r7
.L624:
#     }
#     else
#     {
#         /* Concluding else - nothing to do. */
#     }
#     if((state == CANSM_ST_CB_CC_START) && (StartIndCount == controllers_Size))
	.d2line		260
.Llo45:
	rlwinm		r31,r0,0,16,31		# Ctrl=r31 state=r0
.Llo94:
	se_cmpi		r31,24		# Ctrl=r31
	bc		0,2,.L631	# ne
.Llo95:
	rlwinm		r30,r6,0,24,31		# ControllerMode=r30 StartIndCount=r6
.Llo37:
	rlwinm		r29,r28,0,24,31		# controllers_Size=r28
	se_cmp		r30,r29		# ControllerMode=r30
	bc		0,2,.L631	# ne
	.section	.text_vle
.L733:
#     {
#         CONST(ComM_ModeType, AUTOMATIC) requestMode = net->RAM->RequestMode;
	.d2line		262
.Llo38:
	lwz		r4,0(r3)		# SleepIndCount=r4 net=r3
.Llo46:
	lbz		r4,15(r4)		# SleepIndCount=r4 SleepIndCount=r4
.Llo47:
	mr		r4,r4		# requestMode=r4 requestMode=r4
#         if(requestMode == COMM_FULL_COMMUNICATION)
	.d2line		263
	rlwinm		r5,r4,0,24,31		# StopIndCount=r5 requestMode=r4
.Llo51:
	se_cmpi		r5,2		# StopIndCount=r5
	bc		0,2,.L632	# ne
#         {
#             Transition = CANSM_CB_CC_START_TO_FC_BO_CHECK;
	.d2line		265
.Llo52:
	diab.li		r7,24		# Transition=r7
.Llo61:
	b		.L636
.L632:
#         }
#         else if(requestMode == COMM_SILENT_COMMUNICATION)
	.d2line		267
.Llo62:
	rlwinm		r4,r4,0,24,31		# requestMode=r4 requestMode=r4
	se_cmpi		r4,1		# requestMode=r4
	bc		0,2,.L634	# ne
#         {
#             Transition = CANSM_CB_CC_START_TO_SICO;
	.d2line		269
.Llo102:
	diab.li		r7,25		# Transition=r7
.Llo63:
	b		.L636
.L634:
#         }
#         else
#         {
#             Transition = CANSM_CB_CC_START_TO_PNC;
	.d2line		273
.Llo64:
	diab.li		r7,23		# Transition=r7
	.section	.text_vle
.L734:
.Llo65:
	b		.L636
.L631:
#         }
#     }
#     else if((state == CANSM_ST_TXTIMEOUT_CC_STOP) && (StopIndCount == controllers_Size))
	.d2line		276
.Llo53:
	rlwinm		r31,r0,0,16,31		# Ctrl=r31 state=r0
.Llo96:
	se_cmpi		r31,27		# Ctrl=r31
	bc		0,2,.L636	# ne
.Llo97:
	rlwinm		r5,r5,0,24,31		# StopIndCount=r5 StopIndCount=r5
	rlwinm		r29,r28,0,24,31		# controllers_Size=r28
	se_cmp		r5,r29		# StopIndCount=r5
#     {
#         Transition = CANSM_TXTIMEOUT_CC_STOP_TO_CANSM_TXTIMEOUT_CC_START;
	.d2line		278
	diab.li		r4,32		# SleepIndCount=r4
.Llo48:
	isel		r7,r4,r7,2		# Transition=r7 SleepIndCount=r4 Transition=r7
.L636:
#     }
#     else
#     {
#         /* Concluding else - nothing to do. */
#     }
#     if((state == CANSM_ST_TXTIMEOUT_CC_START) && (StartIndCount == controllers_Size))
	.d2line		284
.Llo49:
	rlwinm		r0,r0,0,16,31		# state=r0 state=r0
	se_cmpi		r0,28		# state=r0
	bc		0,2,.L644	# ne
.Llo54:
	rlwinm		r6,r6,0,24,31		# StartIndCount=r6 StartIndCount=r6
.Llo59:
	rlwinm		r28,r28,0,24,31		# controllers_Size=r28 controllers_Size=r28
	se_cmp		r6,r28		# StartIndCount=r6 controllers_Size=r28
	bc		0,2,.L644	# ne
	.section	.text_vle
.L741:
#     {
#         CONST(ComM_ModeType, AUTOMATIC) requestMode = net->RAM->RequestMode;
	.d2line		286
.Llo56:
	lwz		r3,0(r3)		# net=r3 net=r3
	lbz		r0,15(r3)		# state=r0 net=r3
.Llo103:
	mr		r0,r0		# requestMode=r0 requestMode=r0
#         if(requestMode == COMM_NO_COMMUNICATION)
	.d2line		287
	rlwinm		r3,r0,0,24,31		# net=r3 requestMode=r0
	se_cmpi		r3,0		# net=r3
	bc		0,2,.L640	# ne
#         {
#             Transition = CANSM_TXTIMEOUT_CC_START_TO_PNC;
	.d2line		289
.Llo2:
	diab.li		r7,33		# Transition=r7
.Llo66:
	b		.L644
.L640:
#         }
#         else if(requestMode == COMM_FULL_COMMUNICATION)
	.d2line		291
.Llo67:
	rlwinm		r0,r0,0,24,31		# requestMode=r0 requestMode=r0
	se_cmpi		r0,2		# requestMode=r0
	bc		0,2,.L642	# ne
#         {
#             Transition = CANSM_TXTIMEOUT_CC_START_TO_FC_BO_CHECK;
	.d2line		293
.Llo104:
	diab.li		r7,34		# Transition=r7
.Llo68:
	b		.L644
.L642:
#         }
#         else
#         {
#             Transition = CANSM_TXTIMEOUT_CC_START_TO_SICO;
	.d2line		297
.Llo69:
	diab.li		r7,35		# Transition=r7
	.section	.text_vle
.L742:
.L644:
#         }
#     }
#     else
#     {
#         /* Concluding else - nothing to do. */
#     }
#     return Transition;
	.d2line		304
.Llo70:
	rlwinm		r3,r7,0,24,31		# net=r3 Transition=r7
# }
	.d2line		305
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# state=r0
	mtspr		lr,r0		# state=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo71:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L674:
	.type		CanSM_GetControllerModeIndicationTransition,@function
	.size		CanSM_GetControllerModeIndicationTransition,.-CanSM_GetControllerModeIndicationTransition
# Number of nodes = 345

# Allocations for CanSM_GetControllerModeIndicationTransition
#	?a4		net
#	?a5		controller
#	?a6		ControllerMode
#	?a7		SleepIndCount
#	?a8		StopIndCount
#	?a9		StartIndCount
#	?a10		state
#	?a11		controllers_Size
#	?a12		Transition
#	?a13		controllers
#	?a14		Ctrl
#	?a15		controllers
#	?a16		Ctrl
#	?a17		controllers
#	?a18		Ctrl
#	?a19		requestMode
#	?a20		requestMode
# FUNC(void,CANSM_CODE)CanSM_ControllerModeIndication(VAR(uint8, AUTOMATIC) ControllerId, VAR(CanIf_ControllerModeType, AUTOMATIC) ControllerMode)
	.align		2
	.section	.text_vle
        .d2line         61,22
#$$ld
.L749:

#$$bf	CanSM_ControllerModeIndication,interprocedural,rasave,nostackparams
	.globl		CanSM_ControllerModeIndication
	.d2_cfa_start __cie
CanSM_ControllerModeIndication:
.Llo105:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# ControllerId=r0 ControllerId=r3
	mr		r30,r4		# ControllerMode=r30 ControllerMode=r4
	.d2prologue_end
# {
#     /* <Requirements> CANSM396 CANSM397 CANSM398 CANSM427 CANSM429 CANSM489 CANSM493 CANSM511 CANSM512 <EndRequirements> */
# 
#     if(CanSM_LTConfig.RAM->initState == CANSM_UNINITED)
	.d2line		65
	lis		r3,CanSM_LTConfig@ha
.Llo106:
	lwz		r3,CanSM_LTConfig@l(r3)
	lwz		r3,0(r3)
	se_cmpi		r3,1
	bc		1,2,.L575	# eq
	.section	.text_vle
.L754:
#     {
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#             (void)Det_ReportError(CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_CONTROLLER_MODE_INDICATION, CANSM_E_UNINIT);
# #endif
#     }
#     else
#     {
#         P2CONST(CanSM_ControllerType, AUTOMATIC, CANSM_APPL_CONST) controller;
#         P2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) net;
#         /* Find internal network descriptor */
#         net = CanSM_FindNetworkByController(ControllerId, &controller);
	.d2line		76
.Llo107:
	rlwinm		r3,r0,0,24,31		# ControllerId=r0
.Llo115:
	diab.addi		r4,r1,8
	bl		CanSM_FindNetworkByController
	.d2line		77
.Llo108:
	mr.		r31,r3		# net=?a6 net=r3
#         if(net != NULL_PTR)
.Llo120:
	bc		1,2,.L575	# eq
#         {
#             /* Try to get a network lock */
#             if(CanSM_Lock(net) == TRUE)
	.d2line		80
	mr		r3,r31		# net=r3 net=r31
	bl		CanSM_Lock
	rlwinm		r3,r3,0,24,31		# net=r3 net=r3
	se_cmpi		r3,1		# net=r3
	bc		0,2,.L579	# ne
	.section	.text_vle
.L761:
#             {
#                 VAR(uint8,AUTOMATIC) Transition;
#                 Transition = CanSM_GetControllerModeIndicationTransition(net, controller, ControllerMode);
	.d2line		83
	lwz		r4,8(r1)		# net=r4
	mr		r3,r31		# net=r3 net=r31
	mr		r5,r30		# ControllerMode=r5 ControllerMode=r30
	bl		CanSM_GetControllerModeIndicationTransition
.Llo122:
	mr		r4,r3		# Transition=r4 Transition=r3
#                 if(Transition != CANSM_NO_TRANSITION)
	.d2line		84
	rlwinm		r3,r3,0,24,31		# Transition=r3 Transition=r3
	se_cmpi		r3,0		# Transition=r3
	bc		1,2,.L580	# eq
#                 {
#                     /* Trigger state machine with the determined transition */
#                     (void)CanSM_ProcessSM(net->CanSMNetworkIndex, Transition, FALSE);
	.d2line		87
.Llo116:
	lbz		r3,4(r31)		# Transition=r3 net=r31
.Llo123:
	rlwinm		r4,r4,0,24,31		# Transition=r4 Transition=r4
.Llo124:
	diab.li		r5,0
	bl		CanSM_ProcessSM
.L580:
#                 }
#                 /* Release network lock */
#                 CanSM_UnLock(net);
	.d2line		90
	mr		r3,r31		# net=r3 net=r31
	bl		CanSM_UnLock
	.section	.text_vle
.L762:
.Llo121:
	b		.L575
.L579:
	.section	.text_vle
.L767:
#             }
#             else
#             {
#                 /* If lock was not granted */
# 
#                 VAR(uint8,AUTOMATIC) Transition;
#                 Transition = CanSM_GetControllerModeIndicationTransition(net, controller, ControllerMode);
	.d2line		97
.Llo117:
	lwz		r4,8(r1)
	mr		r3,r31		# net=r3 net=r31
	mr		r5,r30		# ControllerMode=r5 ControllerMode=r30
	bl		CanSM_GetControllerModeIndicationTransition
.Llo125:
	mr		r3,r3		# Transition=r3 Transition=r3
#                 if(Transition != CANSM_NO_TRANSITION)
	.d2line		98
	rlwinm		r3,r3,0,24,31		# Transition=r3 Transition=r3
	se_cmpi		r3,0		# Transition=r3
	bc		1,2,.L575	# eq
#                 {
#                     /* If transition is determined, but lock is not granted, then just register the call of this API. */
#                     if(ControllerMode == CANIF_CS_STARTED)
	.d2line		101
.Llo126:
	se_cmpi		r30,1		# ControllerMode=r30
	bc		0,2,.L583	# ne
#                     {
#                         net->RAM->CanSM_CtrlStartedIndication = TRUE;
	.d2line		103
	diab.li		r0,1		# ControllerId=r0
.Llo109:
	lwz		r3,0(r31)		# Transition=r3 net=r31
.Llo127:
	stb		r0,35(r3)		# Transition=r3 ControllerId=r0
	b		.L575
.L583:
#                     }
#                     else if(ControllerMode == CANIF_CS_STOPPED)
	.d2line		105
.Llo110:
	se_cmpi		r30,2		# ControllerMode=r30
	bc		0,2,.L585	# ne
#                     {
#                         net->RAM->CanSM_CtrlStoppedIndication = TRUE;
	.d2line		107
	diab.li		r0,1		# ControllerId=r0
.Llo111:
	lwz		r3,0(r31)		# Transition=r3 net=r31
.Llo128:
	stb		r0,34(r3)		# Transition=r3 ControllerId=r0
	b		.L575
.L585:
#                     }
#                     else if(ControllerMode == CANIF_CS_SLEEP)
	.d2line		109
.Llo112:
	se_cmpi		r30,0		# ControllerMode=r30
	bc		0,2,.L575	# ne
#                     {
#                         net->RAM->CanSM_CtrlSleepIndication = TRUE;
	.d2line		111
.Llo118:
	diab.li		r0,1		# ControllerId=r0
.Llo113:
	lwz		r3,0(r31)		# Transition=r3 net=r31
.Llo129:
	stb		r0,33(r3)		# Transition=r3 ControllerId=r0
	.section	.text_vle
.L768:
	.section	.text_vle
.L755:
.L575:
#                     }
#                     else
#                     {
#                         /* Concluding else - nothing to do. */
#                     }
#                 }
#             }
#         }
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#         else
#         {
#             /* If network was not found */
#             (void)Det_ReportError(CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_CONTROLLER_MODE_INDICATION, CANSM_E_PARAM_CONTROLLER);
#         }
# #endif
#     }
# }
	.d2line		128
	.d2epilogue_begin
.Llo114:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# ControllerId=r0
	mtspr		lr,r0		# ControllerId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo119:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L750:
	.type		CanSM_ControllerModeIndication,@function
	.size		CanSM_ControllerModeIndication,.-CanSM_ControllerModeIndication
# Number of nodes = 105

# Allocations for CanSM_ControllerModeIndication
#	?a4		ControllerId
#	?a5		ControllerMode
#	SP,8		controller
#	?a6		net
#	?a7		Transition
#	?a8		Transition

# Allocations for module
	.section	.text_vle
	.0byte		.L773
	.section	.text_vle
#$$ld
.L5:
.L805:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L774:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\inc\\CanSM_Types.h"
.L675:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_ControllerModeIndication.c"
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
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	12
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
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
	.uleb128	14
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_ControllerModeIndication.c"
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
.L678:
	.sleb128	2
	.4byte		.L672-.L2
	.byte		"CanSM_GetControllerModeIndicationTransition"
	.byte		0
	.4byte		.L675
	.uleb128	141
	.uleb128	32
	.4byte		.L676
	.byte		0x1
	.4byte		.L673
	.4byte		.L674
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L675
	.uleb128	141
	.uleb128	32
	.byte		"net"
	.byte		0
	.4byte		.L679
	.4byte		.L684
	.sleb128	3
	.4byte		.L675
	.uleb128	141
	.uleb128	32
	.byte		"controller"
	.byte		0
	.4byte		.L685
	.4byte		.L690
	.sleb128	3
	.4byte		.L675
	.uleb128	141
	.uleb128	32
	.byte		"ControllerMode"
	.byte		0
	.4byte		.L691
	.4byte		.L694
	.section	.debug_info,,n
.L695:
	.sleb128	4
	.4byte		.L675
	.uleb128	146
	.uleb128	26
	.byte		"SleepIndCount"
	.byte		0
	.4byte		.L676
	.4byte		.L696
.L697:
	.sleb128	4
	.4byte		.L675
	.uleb128	147
	.uleb128	26
	.byte		"StopIndCount"
	.byte		0
	.4byte		.L676
	.4byte		.L698
.L699:
	.sleb128	4
	.4byte		.L675
	.uleb128	148
	.uleb128	26
	.byte		"StartIndCount"
	.byte		0
	.4byte		.L676
	.4byte		.L700
.L701:
	.sleb128	4
	.4byte		.L675
	.uleb128	149
	.uleb128	27
	.byte		"state"
	.byte		0
	.4byte		.L702
	.4byte		.L704
.L705:
	.sleb128	4
	.4byte		.L675
	.uleb128	150
	.uleb128	26
	.byte		"controllers_Size"
	.byte		0
	.4byte		.L676
	.4byte		.L706
.L707:
	.sleb128	4
	.4byte		.L675
	.uleb128	151
	.uleb128	27
	.byte		"Transition"
	.byte		0
	.4byte		.L676
	.4byte		.L708
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L712
	.4byte		.L709
	.4byte		.L710
.L713:
	.sleb128	4
	.4byte		.L675
	.uleb128	162
	.uleb128	66
	.byte		"controllers"
	.byte		0
	.4byte		.L686
	.4byte		.L714
.L715:
	.sleb128	4
	.4byte		.L675
	.uleb128	163
	.uleb128	30
	.byte		"Ctrl"
	.byte		0
	.4byte		.L676
	.4byte		.L716
	.section	.debug_info,,n
	.sleb128	0
.L712:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L720
	.4byte		.L717
	.4byte		.L718
.L721:
	.sleb128	4
	.4byte		.L675
	.uleb128	177
	.uleb128	66
	.byte		"controllers"
	.byte		0
	.4byte		.L686
	.4byte		.L722
.L723:
	.sleb128	4
	.4byte		.L675
	.uleb128	178
	.uleb128	30
	.byte		"Ctrl"
	.byte		0
	.4byte		.L676
	.4byte		.L724
	.section	.debug_info,,n
	.sleb128	0
.L720:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L728
	.4byte		.L725
	.4byte		.L726
.L729:
	.sleb128	4
	.4byte		.L675
	.uleb128	192
	.uleb128	67
	.byte		"controllers"
	.byte		0
	.4byte		.L686
	.4byte		.L730
.L731:
	.sleb128	4
	.4byte		.L675
	.uleb128	193
	.uleb128	30
	.byte		"Ctrl"
	.byte		0
	.4byte		.L676
	.4byte		.L732
	.section	.debug_info,,n
	.sleb128	0
.L728:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L736
	.4byte		.L733
	.4byte		.L734
.L737:
	.sleb128	4
	.4byte		.L675
	.uleb128	262
	.uleb128	41
	.byte		"requestMode"
	.byte		0
	.4byte		.L738
	.4byte		.L740
	.section	.debug_info,,n
	.sleb128	0
.L736:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L744
	.4byte		.L741
	.4byte		.L742
.L745:
	.sleb128	4
	.4byte		.L675
	.uleb128	286
	.uleb128	41
	.byte		"requestMode"
	.byte		0
	.4byte		.L738
	.4byte		.L746
	.section	.debug_info,,n
	.sleb128	0
.L744:
	.section	.debug_info,,n
	.sleb128	0
.L672:
	.section	.debug_info,,n
.L751:
	.sleb128	6
	.4byte		.L748-.L2
	.byte		"CanSM_ControllerModeIndication"
	.byte		0
	.4byte		.L675
	.uleb128	61
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L749
	.4byte		.L750
	.sleb128	3
	.4byte		.L675
	.uleb128	61
	.uleb128	22
	.byte		"ControllerId"
	.byte		0
	.4byte		.L676
	.4byte		.L752
	.sleb128	3
	.4byte		.L675
	.uleb128	61
	.uleb128	22
	.byte		"ControllerMode"
	.byte		0
	.4byte		.L692
	.4byte		.L753
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L757
	.4byte		.L754
	.4byte		.L755
	.section	.debug_info,,n
.L758:
	.sleb128	7
	.4byte		.L675
	.uleb128	73
	.uleb128	68
	.byte		"controller"
	.byte		0
	.4byte		.L686
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L759:
	.sleb128	4
	.4byte		.L675
	.uleb128	74
	.uleb128	63
	.byte		"net"
	.byte		0
	.4byte		.L680
	.4byte		.L760
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L764
	.4byte		.L761
	.4byte		.L762
.L765:
	.sleb128	4
	.4byte		.L675
	.uleb128	82
	.uleb128	38
	.byte		"Transition"
	.byte		0
	.4byte		.L676
	.4byte		.L766
	.section	.debug_info,,n
	.sleb128	0
.L764:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L770
	.4byte		.L767
	.4byte		.L768
.L771:
	.sleb128	4
	.4byte		.L675
	.uleb128	96
	.uleb128	38
	.byte		"Transition"
	.byte		0
	.4byte		.L676
	.4byte		.L772
	.section	.debug_info,,n
	.sleb128	0
.L770:
	.section	.debug_info,,n
	.sleb128	0
.L757:
	.section	.debug_info,,n
	.sleb128	0
.L748:
	.section	.debug_info,,n
.L773:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L774
	.uleb128	500
	.uleb128	48
	.byte		"CanSM_LTConfig"
	.byte		0
	.4byte		.L775
	.section	.debug_info,,n
	.section	.debug_info,,n
.L683:
	.sleb128	9
	.4byte		.L774
	.uleb128	341
	.uleb128	14
	.4byte		.L778-.L2
	.uleb128	24
	.section	.debug_info,,n
.L552:
	.sleb128	10
	.byte		"RAM"
	.byte		0
	.4byte		.L779
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L553:
	.sleb128	10
	.byte		"CanSMNetworkIndex"
	.byte		0
	.4byte		.L782
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L554:
	.sleb128	10
	.byte		"CanSMNetworkHandle"
	.byte		0
	.4byte		.L783
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L555:
	.sleb128	10
	.byte		"CanSMTransceiverId_u8"
	.byte		0
	.4byte		.L782
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L556:
	.sleb128	10
	.byte		"CanSMPartialNetworkSupport"
	.byte		0
	.4byte		.L785
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L557:
	.sleb128	10
	.byte		"CanSMBorTxConfirmationPolling"
	.byte		0
	.4byte		.L785
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L558:
	.sleb128	10
	.byte		"ControllerType_R16_Size"
	.byte		0
	.4byte		.L782
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L559:
	.sleb128	10
	.byte		"CanSMBorCounterL1ToL2_u8"
	.byte		0
	.4byte		.L782
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L560:
	.sleb128	10
	.byte		"CanSMBorTimeL1_u16"
	.byte		0
	.4byte		.L787
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L561:
	.sleb128	10
	.byte		"CanSMBorTimeL2_u16"
	.byte		0
	.4byte		.L787
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L562:
	.sleb128	10
	.byte		"CanSMBorTimeTxEnsured_u16"
	.byte		0
	.4byte		.L787
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L563:
	.sleb128	10
	.byte		"CanSMBorErrEvent"
	.byte		0
	.4byte		.L788
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L564:
	.sleb128	10
	.byte		"ControllerType_R16"
	.byte		0
	.4byte		.L686
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L778:
.L781:
	.sleb128	9
	.4byte		.L774
	.uleb128	341
	.uleb128	14
	.4byte		.L790-.L2
	.uleb128	42
.L518:
	.sleb128	10
	.byte		"current_state"
	.byte		0
	.4byte		.L791
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L519:
	.sleb128	10
	.byte		"State"
	.byte		0
	.4byte		.L702
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L520:
	.sleb128	10
	.byte		"CanSMBorTimer_u16"
	.byte		0
	.4byte		.L702
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L521:
	.sleb128	10
	.byte		"CanSMBorTimerTxEnsured_u16"
	.byte		0
	.4byte		.L702
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L522:
	.sleb128	10
	.byte		"ChannelTimer_u16"
	.byte		0
	.4byte		.L702
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L523:
	.sleb128	10
	.byte		"RetryTimerEnabled"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L524:
	.sleb128	10
	.byte		"CanSMNetworkMode"
	.byte		0
	.4byte		.L739
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L525:
	.sleb128	10
	.byte		"CanSMBorCounter_u8"
	.byte		0
	.4byte		.L676
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L526:
	.sleb128	10
	.byte		"RequestModeTransition"
	.byte		0
	.4byte		.L676
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L527:
	.sleb128	10
	.byte		"RetryCounter_u8"
	.byte		0
	.4byte		.L676
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L528:
	.sleb128	10
	.byte		"RequestMode"
	.byte		0
	.4byte		.L739
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L529:
	.sleb128	10
	.byte		"CanSM_InitFlag"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L530:
	.sleb128	10
	.byte		"CanSMCheckedBaudrateStatus"
	.byte		0
	.4byte		.L676
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L531:
	.sleb128	10
	.byte		"CanSMCheckedBaudrate"
	.byte		0
	.4byte		.L702
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L532:
	.sleb128	10
	.byte		"CanSMChangedBaudrate"
	.byte		0
	.4byte		.L702
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L533:
	.sleb128	10
	.byte		"CurrentStateNoCom_b"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L534:
	.sleb128	10
	.byte		"TxTimeoutstate_b"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L535:
	.sleb128	10
	.byte		"T_REPEAT_MAX_HAPPENED"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L536:
	.sleb128	10
	.byte		"BufferedRequestMode"
	.byte		0
	.4byte		.L739
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
.L537:
	.sleb128	10
	.byte		"CalledFromMainfunction"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L538:
	.sleb128	10
	.byte		"Lock"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L539:
	.sleb128	10
	.byte		"CanSM_ChangeBaudrateRequest"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L540:
	.sleb128	10
	.byte		"CanSM_ComModeRequest"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L541:
	.sleb128	10
	.byte		"CanSM_TransceiverWakeFlagIndication"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L542:
	.sleb128	10
	.byte		"CanSM_TrcvWuFlagIndication"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L543:
	.sleb128	10
	.byte		"CanSM_CtrlBusOffIndication"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L544:
	.sleb128	10
	.byte		"CanSM_CtrlSleepIndication"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L545:
	.sleb128	10
	.byte		"CanSM_CtrlStoppedIndication"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L546:
	.sleb128	10
	.byte		"CanSM_CtrlStartedIndication"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L547:
	.sleb128	10
	.byte		"CanSM_TransceiverModeNormalIndication"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L548:
	.sleb128	10
	.byte		"CanSM_TransceiverModeStandbyIndication"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	37
	.byte		0x1
.L549:
	.sleb128	10
	.byte		"CanSM_TxTimeoutIndication"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L550:
	.sleb128	10
	.byte		"BusOffDuringRecovery"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L551:
	.sleb128	10
	.byte		"BorFailTRepeatMax"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L790:
.L777:
	.sleb128	9
	.4byte		.L774
	.uleb128	341
	.uleb128	14
	.4byte		.L792-.L2
	.uleb128	4
.L517:
	.sleb128	10
	.byte		"RAM"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L792:
.L795:
	.sleb128	9
	.4byte		.L774
	.uleb128	341
	.uleb128	14
	.4byte		.L796-.L2
	.uleb128	4
.L516:
	.sleb128	10
	.byte		"initState"
	.byte		0
	.4byte		.L797
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L796:
.L689:
	.sleb128	9
	.4byte		.L774
	.uleb128	341
	.uleb128	14
	.4byte		.L799-.L2
	.uleb128	8
.L514:
	.sleb128	10
	.byte		"RAM"
	.byte		0
	.4byte		.L800
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L515:
	.sleb128	10
	.byte		"ControllerId_pu8"
	.byte		0
	.4byte		.L782
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L799:
.L802:
	.sleb128	9
	.4byte		.L774
	.uleb128	341
	.uleb128	14
	.4byte		.L803-.L2
	.uleb128	3
.L511:
	.sleb128	10
	.byte		"ControllerSleepIndication"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	10
	.byte		"ControllerStoppedIndication"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L513:
	.sleb128	10
	.byte		"ControllerStartedIndication"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L803:
	.section	.debug_info,,n
.L798:
	.sleb128	11
	.4byte		.L774
	.uleb128	322
	.uleb128	14
	.4byte		.L804-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"CANSM_INITED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANSM_UNINITED"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"CANSM_INITIALIZING"
	.byte		0
	.sleb128	2
	.sleb128	0
.L804:
.L693:
	.sleb128	11
	.4byte		.L805
	.uleb128	74
	.uleb128	1
	.4byte		.L806-.L2
	.uleb128	4
	.sleb128	12
	.byte		"CANIF_CS_SLEEP"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANIF_CS_STARTED"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"CANIF_CS_STOPPED"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"CANIF_CS_UNINIT"
	.byte		0
	.sleb128	3
	.sleb128	0
.L806:
	.section	.debug_info,,n
.L677:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L676:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L677
.L682:
	.sleb128	14
	.byte		"CanSM_NetworkType"
	.byte		0
	.4byte		.L683
	.section	.debug_info,,n
.L681:
	.sleb128	15
	.4byte		.L682
	.section	.debug_info,,n
.L680:
	.sleb128	16
	.4byte		.L681
.L679:
	.sleb128	15
	.4byte		.L680
.L688:
	.sleb128	14
	.byte		"CanSM_ControllerType"
	.byte		0
	.4byte		.L689
.L687:
	.sleb128	15
	.4byte		.L688
.L686:
	.sleb128	16
	.4byte		.L687
.L685:
	.sleb128	15
	.4byte		.L686
.L692:
	.sleb128	14
	.byte		"CanIf_ControllerModeType"
	.byte		0
	.4byte		.L693
.L691:
	.sleb128	15
	.4byte		.L692
.L703:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L702:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L703
.L739:
	.sleb128	14
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L676
.L738:
	.sleb128	15
	.4byte		.L739
.L776:
	.sleb128	14
	.byte		"CanSM_LTConfigType"
	.byte		0
	.4byte		.L777
.L775:
	.sleb128	15
	.4byte		.L776
.L780:
	.sleb128	14
	.byte		"CanSM_NetworkType_RAM"
	.byte		0
	.4byte		.L781
.L779:
	.sleb128	16
	.4byte		.L780
.L782:
	.sleb128	15
	.4byte		.L676
.L784:
	.sleb128	14
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L676
.L783:
	.sleb128	15
	.4byte		.L784
.L786:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L677
.L785:
	.sleb128	15
	.4byte		.L786
.L787:
	.sleb128	15
	.4byte		.L702
.L789:
	.sleb128	14
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L702
.L788:
	.sleb128	15
	.4byte		.L789
.L791:
	.sleb128	14
	.byte		"CANSM_Escher_StateNumber_t"
	.byte		0
	.4byte		.L676
.L794:
	.sleb128	14
	.byte		"CanSM_LTConfigType_RAM"
	.byte		0
	.4byte		.L795
.L793:
	.sleb128	16
	.4byte		.L794
.L797:
	.sleb128	14
	.byte		"CanSM_StateType"
	.byte		0
	.4byte		.L798
.L801:
	.sleb128	14
	.byte		"CanSM_ControllerType_RAM"
	.byte		0
	.4byte		.L802
.L800:
	.sleb128	16
	.4byte		.L801
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L684:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L690:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),31
	.d2locend
.L694:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo6),5
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),30
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),30
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),30
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),30
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),30
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),30
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),30
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),30
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),30
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),30
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),30
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),30
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),30
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),30
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),30
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),30
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),30
	.d2locend
.L696:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo39),4
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),4
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),4
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),4
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),4
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),4
	.d2locend
.L698:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo38),5
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),5
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),5
	.d2locend
.L700:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),6
	.d2locend
.L704:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo54),0
	.d2locend
.L706:
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo54),28
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo56),28
	.d2locend
.L708:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo38),7
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),7
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),7
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo56),7
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),7
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),7
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),7
	.d2locend
.L714:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),8
	.d2locend
.L716:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo5),31
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),31
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),31
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),31
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),31
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),31
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),31
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo41),31
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),31
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),31
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),31
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),31
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),31
	.d2locend
.L722:
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),8
	.d2locend
.L724:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo5),31
	.d2locend
.L730:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),8
	.d2locend
.L732:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo5),31
	.d2locend
.L740:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo102),4
	.d2locend
.L746:
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),0
	.d2locend
.L752:
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo106),3
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo108),0
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),0
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),0
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),0
	.d2locend
.L753:
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo107),4
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),30
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),30
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo119),4
	.d2locend
.L760:
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),31
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo114),31
	.d2locend
.L766:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo116),3
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),4
	.d2locend
.L772:
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),3
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo110),3
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo112),3
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo114),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanSM_ControllerModeIndication"
	.wrcm.nstrlist "calls", "CanSM_FindNetworkByController","CanSM_GetControllerModeIndicationTransition","CanSM_Lock","CanSM_ProcessSM","CanSM_UnLock"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_GetControllerModeIndicationTransition"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_ControllerModeIndication.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_ControllerModeIndication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_ControllerModeIndication.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_ControllerModeIndication.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_ControllerModeIndication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_ControllerModeIndication.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanSM\ssc\make\..\src\CanSM_ControllerModeIndication.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
