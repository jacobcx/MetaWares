#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanSM_RequestComMode.c"
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
# static FUNC(uint8, CANSM_CODE) CanSM_GetModeRequestTransition(
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_RequestComMode.c"
        .d2line         167,32
#$$ld
.L635:

#$$bf	CanSM_GetModeRequestTransition,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.d2_cfa_start __cie
CanSM_GetModeRequestTransition:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo12:
	stw		r0,20(r1)		# state=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# net=r3 net=r3
	mr		r4,r4		# ComM_Mode=r4 ComM_Mode=r4
	mr		r5,r5		# Transition=r5 Transition=r5
	.d2prologue_end
#         CONSTP2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST)net,
#         CONST(ComM_ModeType,AUTOMATIC) ComM_Mode,
#         CONSTP2VAR(uint8,AUTOMATIC, CANSM_APPL_DATA) Transition
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#         ,CONSTP2VAR(uint8,AUTOMATIC, CANSM_APPL_DATA) RequestErrorId
# #endif
# )
# {
#     VAR(uint8, AUTOMATIC) CanSMRetVal;
#     VAR(uint16,AUTOMATIC) state;
#     CanSMRetVal = E_OK;
	.d2line		178
	diab.li		r6,0		# CanSMRetVal=r6
# 
#     *Transition = CANSM_NO_TRANSITION;
	.d2line		180
.Llo10:
	diab.li		r0,0		# state=r0
	stb		r0,0(r5)		# Transition=r5 state=r0
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#     *RequestErrorId = 0;
# #endif
#     state = net->RAM->State;
	.d2line		184
	lwz		r7,0(r3)		# net=r3
	lhz		r0,2(r7)		# state=r0
	mr		r0,r0		# state=r0 state=r0
#     if((state == CANSM_ST_NOCOM) && (ComM_Mode == COMM_FULL_COMMUNICATION))
	.d2line		185
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,2
	bc		0,2,.L592	# ne
	rlwinm		r7,r4,0,24,31		# ComM_Mode=r4
	se_cmpi		r7,2
	bc		0,2,.L592	# ne
#     {
#         *Transition = CANSM_NOCO_TO_PFC_TRCV_NOR;
	.d2line		187
	diab.li		r7,2
	stb		r7,0(r5)		# Transition=r5
	b		.L593
.L592:
#     }
#     else if((state == CANSM_ST_SILENTCOM) && (ComM_Mode == COMM_FULL_COMMUNICATION))
	.d2line		189
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,6
	bc		0,2,.L594	# ne
	rlwinm		r7,r4,0,24,31		# ComM_Mode=r4
	se_cmpi		r7,2
	bc		0,2,.L594	# ne
#     {
#         *Transition = CANSM_SICO_TO_FC_BO_CHECK;
	.d2line		191
	diab.li		r7,20
	stb		r7,0(r5)		# Transition=r5
	b		.L593
.L594:
#     }
#     else if((state == CANSM_ST_SILENTCOM) && (ComM_Mode == COMM_NO_COMMUNICATION))
	.d2line		193
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,6
	bc		0,2,.L596	# ne
	rlwinm		r7,r4,0,24,31		# ComM_Mode=r4
	se_cmpi		r7,0
	bc		0,2,.L596	# ne
#     {
#         *Transition = CANSM_SICO_TO_PNC;
	.d2line		195
	diab.li		r7,21
	stb		r7,0(r5)		# Transition=r5
	b		.L593
.L596:
#     }
#     else if((state == CANSM_ST_FC_BO_NOBO) && (ComM_Mode == COMM_SILENT_COMMUNICATION))
	.d2line		197
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,8
	bc		0,2,.L598	# ne
	rlwinm		r7,r4,0,24,31		# ComM_Mode=r4
	se_cmpi		r7,1
	bc		0,2,.L598	# ne
#     {
#         *Transition = CANSM_FC_BO_NOBO_TO_SICO;
	.d2line		199
	diab.li		r7,11
	stb		r7,0(r5)		# Transition=r5
	b		.L593
.L598:
#     }
#     else if((state == CANSM_ST_FC_BO_NOBO) && (ComM_Mode == COMM_NO_COMMUNICATION))
	.d2line		201
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,8
	bc		0,2,.L600	# ne
	rlwinm		r7,r4,0,24,31		# ComM_Mode=r4
	se_cmpi		r7,0
	bc		0,2,.L600	# ne
#     {
#         *Transition = CANSM_FC_BO_NOBO_TO_SICO;
	.d2line		203
	diab.li		r7,11
	stb		r7,0(r5)		# Transition=r5
	b		.L593
.L600:
#     }
#     else if((state == CANSM_ST_NOCOM) && (ComM_Mode == COMM_NO_COMMUNICATION) && (net->RAM->BorFailTRepeatMax != FALSE))
	.d2line		205
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,2
	bc		0,2,.L593	# ne
	rlwinm		r7,r4,0,24,31		# ComM_Mode=r4
	se_cmpi		r7,0
	bc		0,2,.L593	# ne
	lwz		r7,0(r3)		# net=r3
	lbz		r7,40(r7)
	se_cmpi		r7,0
	bc		1,2,.L593	# eq
#     {
#         /* <Requirements> ADD_CANSM900400 <EndRequirements> */
#         *Transition = CANSM_NOCO_BOR_FAIL_T_REPEAT_MAX_TO_NOCO;
	.d2line		208
	diab.li		r7,44
	stb		r7,0(r5)		# Transition=r5
.L593:
#     }
#     else
#     {
#         /* Concluding else - nothing to do. */
#     }
#     if((COMM_SILENT_COMMUNICATION == ComM_Mode) && (net->RAM->CanSMNetworkMode == COMM_NO_COMMUNICATION))
	.d2line		214
	rlwinm		r7,r4,0,24,31		# ComM_Mode=r4
	se_cmpi		r7,1
	bc		0,2,.L604	# ne
.Llo7:
	lwz		r5,0(r3)		# Transition=r5 net=r3
.Llo8:
	lbz		r5,11(r5)		# Transition=r5 Transition=r5
	se_cmpi		r5,0		# Transition=r5
	bc		0,2,.L604	# ne
#     {
#         CanSMRetVal = E_NOT_OK;
	.d2line		216
.Llo9:
	diab.li		r6,1		# CanSMRetVal=r6
	b		.L605
.L604:
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#         *RequestErrorId = CANSM_E_INVALID_COMM_REQUEST;
# #endif
#     }
#     else if(CANSM_ST_FC_BO_CHECK == state)
	.d2line		221
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,9
	bc		0,2,.L606	# ne
#     {
#         /* Store request */
#         if((ComM_Mode == COMM_NO_COMMUNICATION) ||
	.d2line		224
	rlwinm		r7,r4,0,24,31		# ComM_Mode=r4
	se_cmpi		r7,0
	bc		1,2,.L615	# eq
.Llo13:
	rlwinm		r7,r4,0,24,31		# ComM_Mode=r4
	se_cmpi		r7,1
	bc		0,2,.L607	# ne
.L615:
#            (ComM_Mode == COMM_SILENT_COMMUNICATION))
#         {
#             net->RAM->BufferedRequestMode = ComM_Mode;
	.d2line		227
	lwz		r3,0(r3)		# net=r3 net=r3
	stb		r4,25(r3)		# net=r3 ComM_Mode=r4
	b		.L605
.L607:
#         }
#         else
#         {
#             CanSMRetVal = E_NOT_OK;
	.d2line		231
	diab.li		r6,1		# CanSMRetVal=r6
	b		.L605
.L606:
#         }
#     }
#     else if((CANSM_ST_FC_TX_OFF == state) || (CANSM_ST_FC_CC_RSTRT == state))
	.d2line		234
.Llo14:
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,12
	bc		1,2,.L616	# eq
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,10
	bc		0,2,.L610	# ne
.L616:
#     {
#         CanSMRetVal = E_NOT_OK;
	.d2line		236
	diab.li		r6,1		# CanSMRetVal=r6
	b		.L605
.L610:
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#         *RequestErrorId = CANSM_E_BUSOFF_RECOVERY_ACTIVE;
# #endif
#     }
#     else if((CANSM_ST_PNC_CC_STOP == state) ||
	.d2line		241
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,13
	bc		1,2,.L617	# eq
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,28
	bc		1,2,.L617	# eq
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,14
	bc		1,2,.L617	# eq
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,26
	bc		1,2,.L617	# eq
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,15
	bc		1,2,.L617	# eq
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,16
	bc		1,2,.L617	# eq
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,17
	bc		1,2,.L617	# eq
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,18
	bc		1,2,.L617	# eq
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,19
	bc		1,2,.L617	# eq
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,20
	bc		1,2,.L617	# eq
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,21
	bc		1,2,.L617	# eq
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,22
	bc		1,2,.L617	# eq
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,23
	bc		1,2,.L617	# eq
	rlwinm		r7,r0,0,16,31		# state=r0
	se_cmpi		r7,24
	bc		1,2,.L617	# eq
	rlwinm		r0,r0,0,16,31		# state=r0 state=r0
	se_cmpi		r0,27		# state=r0
	bc		0,2,.L612	# ne
.L617:
#             (CANSM_ST_TXTIMEOUT_CC_START == state) ||
#             (CANSM_ST_PNC_CC_SLEEP == state) ||
#             (CANSM_ST_PNC_CC_SLEEP_WAIT == state) ||
#             (CANSM_ST_PNC_TRCV_NOR == state) ||
#             (CANSM_ST_PNC_TRCV_STB == state) ||
#             (CANSM_ST_PNC_PN_CLR_WF == state) ||
#             (CANSM_ST_PNC_PN_WF_CC_SLEEP == state) ||
#             (CANSM_ST_PNC_PN_WF_CC_NO_SLEEP == state) ||
#             (CANSM_ST_PFC_CC_STOP == state) ||
#             (CANSM_ST_PFC_CC_START == state) ||
#             (CANSM_ST_PFC_TRCV_NOR == state) ||
#             (CANSM_ST_CB_CC_STOP == state) ||
#             (CANSM_ST_CB_CC_START == state) ||
#             (CANSM_ST_TXTIMEOUT_CC_STOP == state))
#     {
#         if(ComM_Mode != net->RAM->RequestMode)
	.d2line		257
.Llo2:
	rlwinm		r4,r4,0,24,31		# ComM_Mode=r4 ComM_Mode=r4
.Llo3:
	lwz		r3,0(r3)		# net=r3 net=r3
	lbz		r0,15(r3)		# state=r0 net=r3
.Llo15:
	se_cmp		r4,r0		# ComM_Mode=r4 state=r0
	bc		1,2,.L605	# eq
#         {
#             CanSMRetVal = E_NOT_OK;
	.d2line		259
.Llo4:
	diab.li		r6,1		# CanSMRetVal=r6
	b		.L605
.L612:
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#             *RequestErrorId = CANSM_E_WAIT_MODE_INDICATION;
# #endif
#         }
#     }
#     else
#     {
#         CanSMRetVal = E_OK;
	.d2line		267
.Llo5:
	diab.li		r6,0		# CanSMRetVal=r6
.L605:
#     }
#     return CanSMRetVal;
	.d2line		269
.Llo6:
	rlwinm		r3,r6,0,24,31		# net=r3 CanSMRetVal=r6
# }
	.d2line		270
	.d2epilogue_begin
	lwz		r0,20(r1)		# state=r0
	mtspr		lr,r0		# state=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo11:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L636:
	.type		CanSM_GetModeRequestTransition,@function
	.size		CanSM_GetModeRequestTransition,.-CanSM_GetModeRequestTransition
# Number of nodes = 229

# Allocations for CanSM_GetModeRequestTransition
#	?a4		net
#	?a5		ComM_Mode
#	?a6		Transition
#	?a7		CanSMRetVal
#	?a8		state
# FUNC(Std_ReturnType,CANSM_CODE)CanSM_RequestComMode(VAR(NetworkHandleType, AUTOMATIC) network, VAR(ComM_ModeType, AUTOMATIC) ComM_Mode)
	.align		2
	.section	.text_vle
        .d2line         65,32
#$$ld
.L661:

#$$bf	CanSM_RequestComMode,interprocedural,rasave,nostackparams
	.globl		CanSM_RequestComMode
	.d2_cfa_start __cie
CanSM_RequestComMode:
.Llo16:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# network=r0 network=r3
	mr		r31,r4		# ComM_Mode=r31 ComM_Mode=r4
	.d2prologue_end
# {
#     /* <Requirements> CANSM062 CANSM369 CANSM370 CANSM555 CANSM183 CANSM402 CANSM403 CANSM182 ADD_CANSM182_1
#      *                ADD_CANSM182_2 CANSM184 CANSM395 CANSM425 CANSM426 CANSM499 CANSM554 ADD_CANSM499_1 ADD_CANSM554_1
#      *                CANSM375 CANSM376 CANSM377 CANSM278 <EndRequirements> */
# 
#     P2CONST(CanSM_LTConfigType,AUTOMATIC,CANSM_APPL_CONST)ltConfig;
#     VAR(uint8,AUTOMATIC) CanSMRetVal;
# 
#     CanSMRetVal = E_NOT_OK;
	.d2line		74
	diab.li		r30,1		# CanSMRetVal=r30
# 
#     ltConfig = (P2CONST(CanSM_LTConfigType,AUTOMATIC,CANSM_APPL_CONST)) (&CanSM_LTConfig);
	.d2line		76
.Llo34:
	diab.li		r3,0		# ltConfig=r3
#     if(ltConfig->RAM->initState == CANSM_UNINITED)
	.d2line		77
.Llo17:
	lis		r3,CanSM_LTConfig@ha		# ltConfig=r3
.Llo31:
	lwz		r3,CanSM_LTConfig@l(r3)		# ltConfig=r3 ltConfig=r3
	lwz		r3,0(r3)		# ltConfig=r3 ltConfig=r3
	se_cmpi		r3,1		# ltConfig=r3
	bc		1,2,.L577	# eq
#     {
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#             (void)Det_ReportError(CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_REQUEST_COM_MODE, CANSM_E_UNINIT);
# #endif
#     }
#     else if(ltConfig->RAM->initState != CANSM_INITIALIZING)
	.d2line		83
.Llo18:
	lis		r3,CanSM_LTConfig@ha		# ltConfig=r3
.Llo26:
	lwz		r3,CanSM_LTConfig@l(r3)		# ltConfig=r3 ltConfig=r3
	lwz		r3,0(r3)		# ltConfig=r3 ltConfig=r3
	se_cmpi		r3,2		# ltConfig=r3
	bc		1,2,.L577	# eq
	.section	.text_vle
.L676:
#     {
#         P2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST)net;
#         net = CanSM_FindNetwork(network);
	.d2line		86
.Llo32:
	rlwinm		r3,r0,0,24,31		# ltConfig=r3 network=r0
	bl		CanSM_FindNetwork
	.d2line		87
.Llo19:
	mr.		r29,r3		# net=?a8 net=r3
#         if(net != NULL_PTR)
.Llo43:
	bc		1,2,.L577	# eq
#         {
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#             VAR(uint8,AUTOMATIC) RequestErrorId;
#             RequestErrorId = 0;
# #endif
# 
#             if(CanSM_Lock(net) == TRUE)
	.d2line		94
.Llo33:
	mr		r3,r29		# net=r3 net=r29
	bl		CanSM_Lock
	rlwinm		r3,r3,0,24,31		# net=r3 net=r3
	se_cmpi		r3,1		# net=r3
	bc		0,2,.L580	# ne
	.section	.text_vle
.L682:
#             {
#                 VAR(uint8,AUTOMATIC) Transition;
# 
#                 CanSMRetVal = CanSM_GetModeRequestTransition(net, ComM_Mode, &Transition
	.d2line		98
.Llo35:
	diab.addi		r5,r1,8
	mr		r3,r29		# net=r3 net=r29
	mr		r4,r31		# ComM_Mode=r4 ComM_Mode=r31
	bl		CanSM_GetModeRequestTransition
.Llo36:
	mr		r30,r3		# CanSMRetVal=r30 CanSMRetVal=r3
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#                     ,&RequestErrorId
# #endif
#                     );
# 
#                 if(CanSMRetVal == E_OK)
	.d2line		104
	rlwinm		r3,r3,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r3
	se_cmpi		r3,0		# CanSMRetVal=r3
	bc		0,2,.L581	# ne
#                 {
#                     net->RAM->RequestMode = ComM_Mode;
	.d2line		106
.Llo37:
	lwz		r3,0(r29)		# CanSMRetVal=r3 net=r29
.Llo38:
	stb		r31,15(r3)		# CanSMRetVal=r3 ComM_Mode=r31
#                     if(Transition != CANSM_NO_TRANSITION)
	.d2line		107
	lbz		r0,8(r1)		# network=r0
.Llo20:
	se_cmpi		r0,0		# network=r0
	bc		1,2,.L581	# eq
#                     {
#                         CanSMRetVal = (uint8)CanSM_ProcessSM(net->CanSMNetworkIndex, Transition, FALSE);
	.d2line		109
.Llo21:
	lbz		r3,4(r29)		# CanSMRetVal=r3 net=r29
	lbz		r4,8(r1)
	diab.li		r5,0
	bl		CanSM_ProcessSM
	mr		r30,r3		# CanSMRetVal=r30 CanSMRetVal=r3
.L581:
#                     }
#                 }
#                 CanSM_UnLock(net);
	.d2line		112
.Llo27:
	mr		r3,r29		# net=r3 net=r29
	bl		CanSM_UnLock
	.section	.text_vle
.L683:
.Llo28:
	b		.L577
.L580:
	.section	.text_vle
.L687:
#             }
#             else
#             {
#                 VAR(uint8,AUTOMATIC) Transition;
# 
#                 CanSMRetVal = CanSM_GetModeRequestTransition(net, ComM_Mode, &Transition
	.d2line		118
.Llo29:
	diab.addi		r5,r1,9
	mr		r3,r29		# net=r3 net=r29
	mr		r4,r31		# ComM_Mode=r4 ComM_Mode=r31
	bl		CanSM_GetModeRequestTransition
.Llo39:
	mr		r30,r3		# CanSMRetVal=r30 CanSMRetVal=r3
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#                     ,&RequestErrorId
# #endif
#                     );
#                 if(CanSMRetVal == E_OK)
	.d2line		123
	rlwinm		r3,r3,0,24,31		# CanSMRetVal=r3 CanSMRetVal=r3
	se_cmpi		r3,0		# CanSMRetVal=r3
	bc		0,2,.L577	# ne
#                 {
#                     net->RAM->RequestMode = ComM_Mode;
	.d2line		125
.Llo40:
	lwz		r3,0(r29)		# CanSMRetVal=r3 net=r29
.Llo41:
	stb		r31,15(r3)		# CanSMRetVal=r3 ComM_Mode=r31
#                     if(Transition != CANSM_NO_TRANSITION)
	.d2line		126
	lbz		r0,9(r1)		# network=r0
.Llo22:
	se_cmpi		r0,0		# network=r0
	bc		1,2,.L577	# eq
#                     {
#                         net->RAM->CanSM_ComModeRequest = TRUE;
	.d2line		128
.Llo23:
	diab.li		r0,1		# network=r0
.Llo24:
	lwz		r3,0(r29)		# CanSMRetVal=r3 net=r29
	stb		r0,29(r3)		# CanSMRetVal=r3 network=r0
	.section	.text_vle
.L688:
	.section	.text_vle
.L677:
.L577:
#                     }
#                 }
#             }
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#             if(RequestErrorId != 0)
#             {
#                 (void)Det_ReportError( CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_REQUEST_COM_MODE, RequestErrorId );
#             }
# #endif
#         }
#         else
#         {
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#                 (void)Det_ReportError( CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_REQUEST_COM_MODE, CANSM_E_INVALID_NETWORK_HANDLE );
# #endif
#         }
#     }
#     else
#     {
#         /* Concluding else - nothing to do. */
#     }
#     return CanSMRetVal;
	.d2line		150
.Llo25:
	rlwinm		r3,r30,0,24,31		# ltConfig=r3 CanSMRetVal=r30
# }
	.d2line		151
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo42:
	lwz		r0,36(r1)		# network=r0
	mtspr		lr,r0		# network=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo30:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L662:
	.type		CanSM_RequestComMode,@function
	.size		CanSM_RequestComMode,.-CanSM_RequestComMode
# Number of nodes = 120

# Allocations for CanSM_RequestComMode
#	?a4		network
#	?a5		ComM_Mode
#	?a6		ltConfig
#	?a7		CanSMRetVal
#	?a8		net
#	SP,8		Transition
#	SP,9		Transition

# Allocations for module
	.section	.text_vle
	.0byte		.L692
	.section	.text_vle
#$$ld
.L5:
.L693:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\inc\\CanSM_Types.h"
.L637:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_RequestComMode.c"
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
	.uleb128	6
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_RequestComMode.c"
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
.L640:
	.sleb128	2
	.4byte		.L634-.L2
	.byte		"CanSM_GetModeRequestTransition"
	.byte		0
	.4byte		.L637
	.uleb128	167
	.uleb128	32
	.4byte		.L638
	.byte		0x1
	.4byte		.L635
	.4byte		.L636
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L637
	.uleb128	167
	.uleb128	32
	.byte		"net"
	.byte		0
	.4byte		.L641
	.4byte		.L646
	.sleb128	3
	.4byte		.L637
	.uleb128	167
	.uleb128	32
	.byte		"ComM_Mode"
	.byte		0
	.4byte		.L647
	.4byte		.L649
	.sleb128	3
	.4byte		.L637
	.uleb128	167
	.uleb128	32
	.byte		"Transition"
	.byte		0
	.4byte		.L650
	.4byte		.L652
	.section	.debug_info,,n
.L653:
	.sleb128	4
	.4byte		.L637
	.uleb128	176
	.uleb128	27
	.byte		"CanSMRetVal"
	.byte		0
	.4byte		.L638
	.4byte		.L654
.L655:
	.sleb128	4
	.4byte		.L637
	.uleb128	177
	.uleb128	27
	.byte		"state"
	.byte		0
	.4byte		.L656
	.4byte		.L658
	.section	.debug_info,,n
	.sleb128	0
.L634:
	.section	.debug_info,,n
.L664:
	.sleb128	5
	.4byte		.L660-.L2
	.byte		"CanSM_RequestComMode"
	.byte		0
	.4byte		.L637
	.uleb128	65
	.uleb128	32
	.4byte		.L663
	.byte		0x1
	.byte		0x1
	.4byte		.L661
	.4byte		.L662
	.sleb128	3
	.4byte		.L637
	.uleb128	65
	.uleb128	32
	.byte		"network"
	.byte		0
	.4byte		.L665
	.4byte		.L666
	.sleb128	3
	.4byte		.L637
	.uleb128	65
	.uleb128	32
	.byte		"ComM_Mode"
	.byte		0
	.4byte		.L648
	.4byte		.L667
.L668:
	.sleb128	4
	.4byte		.L637
	.uleb128	71
	.uleb128	59
	.byte		"ltConfig"
	.byte		0
	.4byte		.L669
	.4byte		.L673
.L674:
	.sleb128	4
	.4byte		.L637
	.uleb128	72
	.uleb128	26
	.byte		"CanSMRetVal"
	.byte		0
	.4byte		.L638
	.4byte		.L675
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L679
	.4byte		.L676
	.4byte		.L677
.L680:
	.sleb128	4
	.4byte		.L637
	.uleb128	85
	.uleb128	62
	.byte		"net"
	.byte		0
	.4byte		.L642
	.4byte		.L681
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L685
	.4byte		.L682
	.4byte		.L683
	.section	.debug_info,,n
.L686:
	.sleb128	7
	.4byte		.L637
	.uleb128	96
	.uleb128	38
	.byte		"Transition"
	.byte		0
	.4byte		.L638
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L685:
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L690
	.4byte		.L687
	.4byte		.L688
.L691:
	.sleb128	7
	.4byte		.L637
	.uleb128	116
	.uleb128	38
	.byte		"Transition"
	.byte		0
	.4byte		.L638
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	9
	.section	.debug_info,,n
	.sleb128	0
.L690:
	.section	.debug_info,,n
	.sleb128	0
.L679:
	.section	.debug_info,,n
	.sleb128	0
.L660:
	.section	.debug_info,,n
.L692:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L693
	.uleb128	500
	.uleb128	48
	.byte		"CanSM_LTConfig"
	.byte		0
	.4byte		.L670
	.section	.debug_info,,n
	.section	.debug_info,,n
.L645:
	.sleb128	9
	.4byte		.L693
	.uleb128	341
	.uleb128	14
	.4byte		.L694-.L2
	.uleb128	24
	.section	.debug_info,,n
.L552:
	.sleb128	10
	.byte		"RAM"
	.byte		0
	.4byte		.L695
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L553:
	.sleb128	10
	.byte		"CanSMNetworkIndex"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L554:
	.sleb128	10
	.byte		"CanSMNetworkHandle"
	.byte		0
	.4byte		.L699
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L555:
	.sleb128	10
	.byte		"CanSMTransceiverId_u8"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L556:
	.sleb128	10
	.byte		"CanSMPartialNetworkSupport"
	.byte		0
	.4byte		.L700
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L557:
	.sleb128	10
	.byte		"CanSMBorTxConfirmationPolling"
	.byte		0
	.4byte		.L700
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L558:
	.sleb128	10
	.byte		"ControllerType_R16_Size"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L559:
	.sleb128	10
	.byte		"CanSMBorCounterL1ToL2_u8"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L560:
	.sleb128	10
	.byte		"CanSMBorTimeL1_u16"
	.byte		0
	.4byte		.L702
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L561:
	.sleb128	10
	.byte		"CanSMBorTimeL2_u16"
	.byte		0
	.4byte		.L702
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L562:
	.sleb128	10
	.byte		"CanSMBorTimeTxEnsured_u16"
	.byte		0
	.4byte		.L702
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L563:
	.sleb128	10
	.byte		"CanSMBorErrEvent"
	.byte		0
	.4byte		.L703
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L564:
	.sleb128	10
	.byte		"ControllerType_R16"
	.byte		0
	.4byte		.L705
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L694:
.L697:
	.sleb128	9
	.4byte		.L693
	.uleb128	341
	.uleb128	14
	.4byte		.L709-.L2
	.uleb128	42
.L518:
	.sleb128	10
	.byte		"current_state"
	.byte		0
	.4byte		.L710
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L519:
	.sleb128	10
	.byte		"State"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L520:
	.sleb128	10
	.byte		"CanSMBorTimer_u16"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L521:
	.sleb128	10
	.byte		"CanSMBorTimerTxEnsured_u16"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L522:
	.sleb128	10
	.byte		"ChannelTimer_u16"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L523:
	.sleb128	10
	.byte		"RetryTimerEnabled"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L524:
	.sleb128	10
	.byte		"CanSMNetworkMode"
	.byte		0
	.4byte		.L648
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L525:
	.sleb128	10
	.byte		"CanSMBorCounter_u8"
	.byte		0
	.4byte		.L638
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L526:
	.sleb128	10
	.byte		"RequestModeTransition"
	.byte		0
	.4byte		.L638
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L527:
	.sleb128	10
	.byte		"RetryCounter_u8"
	.byte		0
	.4byte		.L638
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L528:
	.sleb128	10
	.byte		"RequestMode"
	.byte		0
	.4byte		.L648
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L529:
	.sleb128	10
	.byte		"CanSM_InitFlag"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L530:
	.sleb128	10
	.byte		"CanSMCheckedBaudrateStatus"
	.byte		0
	.4byte		.L638
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L531:
	.sleb128	10
	.byte		"CanSMCheckedBaudrate"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L532:
	.sleb128	10
	.byte		"CanSMChangedBaudrate"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L533:
	.sleb128	10
	.byte		"CurrentStateNoCom_b"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L534:
	.sleb128	10
	.byte		"TxTimeoutstate_b"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L535:
	.sleb128	10
	.byte		"T_REPEAT_MAX_HAPPENED"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L536:
	.sleb128	10
	.byte		"BufferedRequestMode"
	.byte		0
	.4byte		.L648
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
.L537:
	.sleb128	10
	.byte		"CalledFromMainfunction"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L538:
	.sleb128	10
	.byte		"Lock"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L539:
	.sleb128	10
	.byte		"CanSM_ChangeBaudrateRequest"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L540:
	.sleb128	10
	.byte		"CanSM_ComModeRequest"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L541:
	.sleb128	10
	.byte		"CanSM_TransceiverWakeFlagIndication"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L542:
	.sleb128	10
	.byte		"CanSM_TrcvWuFlagIndication"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L543:
	.sleb128	10
	.byte		"CanSM_CtrlBusOffIndication"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L544:
	.sleb128	10
	.byte		"CanSM_CtrlSleepIndication"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L545:
	.sleb128	10
	.byte		"CanSM_CtrlStoppedIndication"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L546:
	.sleb128	10
	.byte		"CanSM_CtrlStartedIndication"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L547:
	.sleb128	10
	.byte		"CanSM_TransceiverModeNormalIndication"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L548:
	.sleb128	10
	.byte		"CanSM_TransceiverModeStandbyIndication"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	37
	.byte		0x1
.L549:
	.sleb128	10
	.byte		"CanSM_TxTimeoutIndication"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L550:
	.sleb128	10
	.byte		"BusOffDuringRecovery"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L551:
	.sleb128	10
	.byte		"BorFailTRepeatMax"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L709:
.L672:
	.sleb128	9
	.4byte		.L693
	.uleb128	341
	.uleb128	14
	.4byte		.L711-.L2
	.uleb128	4
.L517:
	.sleb128	10
	.byte		"RAM"
	.byte		0
	.4byte		.L712
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L711:
.L714:
	.sleb128	9
	.4byte		.L693
	.uleb128	341
	.uleb128	14
	.4byte		.L715-.L2
	.uleb128	4
.L516:
	.sleb128	10
	.byte		"initState"
	.byte		0
	.4byte		.L716
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L715:
.L708:
	.sleb128	9
	.4byte		.L693
	.uleb128	341
	.uleb128	14
	.4byte		.L718-.L2
	.uleb128	8
.L514:
	.sleb128	10
	.byte		"RAM"
	.byte		0
	.4byte		.L719
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L515:
	.sleb128	10
	.byte		"ControllerId_pu8"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L718:
.L721:
	.sleb128	9
	.4byte		.L693
	.uleb128	341
	.uleb128	14
	.4byte		.L722-.L2
	.uleb128	3
.L511:
	.sleb128	10
	.byte		"ControllerSleepIndication"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	10
	.byte		"ControllerStoppedIndication"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L513:
	.sleb128	10
	.byte		"ControllerStartedIndication"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L722:
	.section	.debug_info,,n
.L717:
	.sleb128	11
	.4byte		.L693
	.uleb128	322
	.uleb128	14
	.4byte		.L723-.L2
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
.L723:
	.section	.debug_info,,n
.L639:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L638:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L639
.L644:
	.sleb128	14
	.byte		"CanSM_NetworkType"
	.byte		0
	.4byte		.L645
	.section	.debug_info,,n
.L643:
	.sleb128	15
	.4byte		.L644
	.section	.debug_info,,n
.L642:
	.sleb128	16
	.4byte		.L643
.L641:
	.sleb128	15
	.4byte		.L642
.L648:
	.sleb128	14
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L638
.L647:
	.sleb128	15
	.4byte		.L648
.L651:
	.sleb128	16
	.4byte		.L638
.L650:
	.sleb128	15
	.4byte		.L651
.L657:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L656:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L657
.L663:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L638
.L665:
	.sleb128	14
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L638
.L671:
	.sleb128	14
	.byte		"CanSM_LTConfigType"
	.byte		0
	.4byte		.L672
.L670:
	.sleb128	15
	.4byte		.L671
.L669:
	.sleb128	16
	.4byte		.L670
.L696:
	.sleb128	14
	.byte		"CanSM_NetworkType_RAM"
	.byte		0
	.4byte		.L697
.L695:
	.sleb128	16
	.4byte		.L696
.L698:
	.sleb128	15
	.4byte		.L638
.L699:
	.sleb128	15
	.4byte		.L665
.L701:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L639
.L700:
	.sleb128	15
	.4byte		.L701
.L702:
	.sleb128	15
	.4byte		.L656
.L704:
	.sleb128	14
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L656
.L703:
	.sleb128	15
	.4byte		.L704
.L707:
	.sleb128	14
	.byte		"CanSM_ControllerType"
	.byte		0
	.4byte		.L708
.L706:
	.sleb128	15
	.4byte		.L707
.L705:
	.sleb128	16
	.4byte		.L706
.L710:
	.sleb128	14
	.byte		"CANSM_Escher_StateNumber_t"
	.byte		0
	.4byte		.L638
.L713:
	.sleb128	14
	.byte		"CanSM_LTConfigType_RAM"
	.byte		0
	.4byte		.L714
.L712:
	.sleb128	16
	.4byte		.L713
.L716:
	.sleb128	14
	.byte		"CanSM_StateType"
	.byte		0
	.4byte		.L717
.L720:
	.sleb128	14
	.byte		"CanSM_ControllerType_RAM"
	.byte		0
	.4byte		.L721
.L719:
	.sleb128	16
	.4byte		.L720
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L646:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L649:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo4),4
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),4
	.d2locend
.L652:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo7),5
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),5
	.d2locend
.L654:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),6
	.d2locend
.L658:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),0
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo2),0
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo4),0
	.d2locend
.L666:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),0
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),0
	.d2locend
.L667:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo18),4
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo21),31
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),31
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo23),31
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo30),4
	.d2locend
.L673:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo32),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo33),3
	.d2locend
.L675:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),30
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),3
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo29),30
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),3
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),30
	.d2locend
.L681:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo28),29
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo25),29
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanSM_RequestComMode"
	.wrcm.nstrlist "calls", "CanSM_FindNetwork","CanSM_GetModeRequestTransition","CanSM_Lock","CanSM_ProcessSM","CanSM_UnLock"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_GetModeRequestTransition"
	.wrcm.nint32 "frameSize", 16
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_RequestComMode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_RequestComMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_RequestComMode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_RequestComMode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_RequestComMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_RequestComMode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanSM\ssc\make\..\src\CanSM_RequestComMode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
