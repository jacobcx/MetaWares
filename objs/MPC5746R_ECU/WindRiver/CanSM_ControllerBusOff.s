#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanSM_ControllerBusOff.c"
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
# static FUNC(void, CANSM_CODE) CanSM_GetControllerBusOffTransition(
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_ControllerBusOff.c"
        .d2line         149,31
#$$ld
.L603:

#$$bf	CanSM_GetControllerBusOffTransition,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.d2_cfa_start __cie
CanSM_GetControllerBusOffTransition:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo4:
	stw		r0,20(r1)		# state=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# net=r3 net=r3
	mr		r4,r4		# Transition=r4 Transition=r4
	.d2prologue_end
#                 CONSTP2CONST(CanSM_NetworkType, AUTOMATIC,CANSM_APPL_CONST)net,
#                 CONSTP2VAR(uint8,AUTOMATIC, CANSM_APPL_DATA) Transition)
# {
#     VAR(uint16, AUTOMATIC) state;
# 
#     *Transition = CANSM_NO_TRANSITION;
	.d2line		155
	diab.li		r0,0		# state=r0
	stb		r0,0(r4)		# Transition=r4 state=r0
#     state = net->RAM->State;
	.d2line		156
	lwz		r3,0(r3)		# net=r3 net=r3
	lhz		r0,2(r3)		# state=r0 net=r3
	mr		r0,r0		# state=r0 state=r0
#     /* Determine transition based on the current state */
#     if(state == CANSM_ST_FC_BO_NOBO)
	.d2line		158
	rlwinm		r3,r0,0,16,31		# net=r3 state=r0
	se_cmpi		r3,8		# net=r3
	bc		0,2,.L595	# ne
#     {
#         *Transition = CANSM_FC_BO_NOBO_TO_FC_CC_RSTRT;
	.d2line		160
.Llo2:
	diab.li		r0,9		# state=r0
.Llo5:
	stb		r0,0(r4)		# Transition=r4 state=r0
	b		.L594
.L595:
#     }
#     else if(state == CANSM_ST_FC_BO_CHECK)
	.d2line		162
	rlwinm		r0,r0,0,16,31		# state=r0 state=r0
	se_cmpi		r0,9		# state=r0
	bc		0,2,.L594	# ne
#     {
#         *Transition = CANSM_FC_BO_CHECK_TO_FC_CC_RSTRT;
	.d2line		164
.Llo6:
	diab.li		r0,8		# state=r0
.Llo7:
	stb		r0,0(r4)		# Transition=r4 state=r0
.L594:
#     }
#     /* If the controller was already restarted or it is ongoing then we have to restart the
#        transition otherwise the controller may remain stopped.
#        (When BusOff happens the controller is stopped by the driver without CanSM intervention.) */
#     /* <Requirements> ADD_CANSM900100 ADD_CANSM900101 ADD_CANSM900102 <EndRequirements> */
#     else
#     {
#         /* Concluding else - nothing to do. */
#     }
# }
	.d2line		174
	.d2epilogue_begin
.Llo3:
	lwz		r0,20(r1)		# state=r0
	mtspr		lr,r0		# state=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L604:
	.type		CanSM_GetControllerBusOffTransition,@function
	.size		CanSM_GetControllerBusOffTransition,.-CanSM_GetControllerBusOffTransition
# Number of nodes = 29

# Allocations for CanSM_GetControllerBusOffTransition
#	?a4		net
#	?a5		Transition
#	?a6		state
# FUNC(void,CANSM_CODE)CanSM_ControllerBusOff(VAR(uint8,AUTOMATIC) ControllerId)
	.align		2
	.section	.text_vle
        .d2line         60,22
#$$ld
.L624:

#$$bf	CanSM_ControllerBusOff,interprocedural,rasave,nostackparams
	.globl		CanSM_ControllerBusOff
	.d2_cfa_start __cie
CanSM_ControllerBusOff:
.Llo8:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# ControllerId=r0 ControllerId=r3
	.d2prologue_end
# {
#     /* <Requirements> CANSM064 CANSM189 ADD_CANSM064_1 CANSM190 CANSM377 CANSM235 CANSM500 <EndRequirements> */
# 
#     if(CanSM_LTConfig.RAM->initState == CANSM_UNINITED)
	.d2line		64
	lis		r3,CanSM_LTConfig@ha
.Llo9:
	lwz		r3,CanSM_LTConfig@l(r3)
	lwz		r3,0(r3)
	se_cmpi		r3,1
	bc		1,2,.L575	# eq
	.section	.text_vle
.L628:
#     {
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#         (void)Det_ReportError(CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_CONTROLLER_BUSOFF, CANSM_E_UNINIT);
# #endif
#     }
#     else
#     {
#         P2CONST(CanSM_ControllerType, AUTOMATIC, CANSM_APPL_CONST) controller;
#         P2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST) net;
#         /* Find internal network descriptor */
#         net = CanSM_FindNetworkByController(ControllerId, &controller);
	.d2line		75
.Llo10:
	rlwinm		r3,r0,0,24,31		# ControllerId=r0
	diab.addi		r4,r1,12
	bl		CanSM_FindNetworkByController
	.d2line		76
.Llo11:
	mr.		r31,r3		# net=?a5 net=r3
#         if(net != NULL_PTR)
.Llo26:
	bc		1,2,.L575	# eq
	.section	.text_vle
.L639:
#         {
#             VAR(uint16, AUTOMATIC) state;
# 
#             state = net->RAM->State;
	.d2line		80
	lwz		r3,0(r31)		# net=r3 net=r31
	lhz		r30,2(r3)		# net=r3
.Llo29:
	mr		r30,r30		# state=r30 state=r30
# 
#             /* Try to get a network lock */
#             if(CanSM_Lock(net) == TRUE)
	.d2line		83
	mr		r3,r31		# net=r3 net=r31
	bl		CanSM_Lock
	rlwinm		r3,r3,0,24,31		# net=r3 net=r3
	se_cmpi		r3,1		# net=r3
	bc		0,2,.L579	# ne
	.section	.text_vle
.L645:
#             {
#                 VAR(uint8,AUTOMATIC) Transition;
# 
#                 CanSM_GetControllerBusOffTransition(net, &Transition);
	.d2line		87
	diab.addi		r4,r1,8
	mr		r3,r31		# net=r3 net=r31
	bl		CanSM_GetControllerBusOffTransition
# 
#                 net->RAM->CanSMBorTimer_u16 = (uint16)0;
	.d2line		89
	diab.li		r0,0		# ControllerId=r0
.Llo12:
	lwz		r3,0(r31)		# net=r3 net=r31
	sth		r0,4(r3)		# net=r3 ControllerId=r0
# 
#                 /* Check whether the recovery from the previous bus-off is still ongoing */
#                 if((state == CANSM_ST_FC_CC_RSTRT) ||  (state == CANSM_ST_FC_TX_OFF))
	.d2line		92
	rlwinm		r0,r30,0,16,31		# ControllerId=r0 state=r30
	se_cmpi		r0,10		# ControllerId=r0
	bc		1,2,.L585	# eq
.Llo13:
	rlwinm		r30,r30,0,16,31		# state=r30 state=r30
	se_cmpi		r30,12		# state=r30
	bc		0,2,.L580	# ne
.L585:
#                 {
#                     net->RAM->BusOffDuringRecovery = TRUE;
	.d2line		94
	diab.li		r0,1		# ControllerId=r0
.Llo14:
	lwz		r3,0(r31)		# net=r3 net=r31
	stb		r0,39(r3)		# net=r3 ControllerId=r0
.L580:
#                 }
# 
#                 if(Transition != CANSM_NO_TRANSITION)
	.d2line		97
.Llo15:
	lbz		r0,8(r1)		# ControllerId=r0
.Llo16:
	se_cmpi		r0,0		# ControllerId=r0
	bc		1,2,.L581	# eq
#                 {
#                     /* Trigger state machine with the determined transition */
#                     (void)CanSM_ProcessSM(net->CanSMNetworkIndex, Transition, FALSE);
	.d2line		100
.Llo17:
	lbz		r3,4(r31)		# net=r3 net=r31
	lbz		r4,8(r1)
	diab.li		r5,0
	bl		CanSM_ProcessSM
.L581:
#                 }
# 
#                 /* Release network lock */
#                 CanSM_UnLock(net);
	.d2line		104
	mr		r3,r31		# net=r3 net=r31
	bl		CanSM_UnLock
	.section	.text_vle
.L646:
.Llo27:
	b		.L575
.L579:
	.section	.text_vle
.L650:
#             }
#             else
#             {
#                 /* If lock was not granted */
#                 VAR(uint8,AUTOMATIC) Transition;
# 
#                 CanSM_GetControllerBusOffTransition(net, &Transition);
	.d2line		111
.Llo28:
	diab.addi		r4,r1,9
	mr		r3,r31		# net=r3 net=r31
	bl		CanSM_GetControllerBusOffTransition
# 
#                 net->RAM->CanSMBorTimer_u16 = (uint16)0;
	.d2line		113
	diab.li		r0,0		# ControllerId=r0
.Llo18:
	lwz		r3,0(r31)		# net=r3 net=r31
	sth		r0,4(r3)		# net=r3 ControllerId=r0
# 
#                 /* Check whether the recovery from the previous bus-off is still ongoing */
#                 if((state == CANSM_ST_FC_CC_RSTRT) ||  (state == CANSM_ST_FC_TX_OFF))
	.d2line		116
	rlwinm		r0,r30,0,16,31		# ControllerId=r0 state=r30
	se_cmpi		r0,10		# ControllerId=r0
	bc		1,2,.L586	# eq
.Llo19:
	rlwinm		r30,r30,0,16,31		# state=r30 state=r30
	se_cmpi		r30,12		# state=r30
	bc		0,2,.L583	# ne
.L586:
#                 {
#                     net->RAM->BusOffDuringRecovery = TRUE;
	.d2line		118
	diab.li		r0,1		# ControllerId=r0
.Llo20:
	lwz		r3,0(r31)		# net=r3 net=r31
	stb		r0,39(r3)		# net=r3 ControllerId=r0
.L583:
#                 }
# 
#                 /* If transition is determined, but lock is not granted, then just register the call of this API. */
#                 if(Transition != CANSM_NO_TRANSITION)
	.d2line		122
.Llo21:
	lbz		r0,9(r1)		# ControllerId=r0
.Llo22:
	se_cmpi		r0,0		# ControllerId=r0
	bc		1,2,.L575	# eq
#                 {
#                     net->RAM->CanSM_CtrlBusOffIndication = TRUE;
	.d2line		124
.Llo23:
	diab.li		r0,1		# ControllerId=r0
.Llo24:
	lwz		r3,0(r31)		# net=r3 net=r31
	stb		r0,32(r3)		# net=r3 ControllerId=r0
	.section	.text_vle
.L651:
	.section	.text_vle
.L640:
	.section	.text_vle
.L629:
.L575:
#                 }
#             }
#         }
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#         else
#         {
#             /* If network was not found */
#             (void)Det_ReportError(CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_CONTROLLER_BUSOFF, CANSM_E_PARAM_CONTROLLER);
#         }
# #endif
#     }
# }
	.d2line		136
	.d2epilogue_begin
.Llo25:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# ControllerId=r0
	mtspr		lr,r0		# ControllerId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L625:
	.type		CanSM_ControllerBusOff,@function
	.size		CanSM_ControllerBusOff,.-CanSM_ControllerBusOff
# Number of nodes = 124

# Allocations for CanSM_ControllerBusOff
#	?a4		ControllerId
#	SP,12		controller
#	?a5		net
#	?a6		state
#	SP,8		Transition
#	SP,9		Transition

# Allocations for module
	.section	.text_vle
	.0byte		.L655
	.section	.text_vle
#$$ld
.L5:
.L656:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\inc\\CanSM_Types.h"
.L605:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_ControllerBusOff.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_ControllerBusOff.c"
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
.L606:
	.sleb128	2
	.4byte		.L602-.L2
	.byte		"CanSM_GetControllerBusOffTransition"
	.byte		0
	.4byte		.L605
	.uleb128	149
	.uleb128	31
	.byte		0x1
	.4byte		.L603
	.4byte		.L604
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L605
	.uleb128	149
	.uleb128	31
	.byte		"net"
	.byte		0
	.4byte		.L607
	.4byte		.L612
	.sleb128	3
	.4byte		.L605
	.uleb128	149
	.uleb128	31
	.byte		"Transition"
	.byte		0
	.4byte		.L613
	.4byte		.L617
	.section	.debug_info,,n
.L618:
	.sleb128	4
	.4byte		.L605
	.uleb128	153
	.uleb128	28
	.byte		"state"
	.byte		0
	.4byte		.L619
	.4byte		.L621
	.section	.debug_info,,n
	.sleb128	0
.L602:
	.section	.debug_info,,n
.L626:
	.sleb128	5
	.4byte		.L623-.L2
	.byte		"CanSM_ControllerBusOff"
	.byte		0
	.4byte		.L605
	.uleb128	60
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L624
	.4byte		.L625
	.sleb128	3
	.4byte		.L605
	.uleb128	60
	.uleb128	22
	.byte		"ControllerId"
	.byte		0
	.4byte		.L615
	.4byte		.L627
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L631
	.4byte		.L628
	.4byte		.L629
	.section	.debug_info,,n
.L632:
	.sleb128	7
	.4byte		.L605
	.uleb128	72
	.uleb128	68
	.byte		"controller"
	.byte		0
	.4byte		.L633
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L637:
	.sleb128	4
	.4byte		.L605
	.uleb128	73
	.uleb128	63
	.byte		"net"
	.byte		0
	.4byte		.L608
	.4byte		.L638
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L642
	.4byte		.L639
	.4byte		.L640
.L643:
	.sleb128	4
	.4byte		.L605
	.uleb128	78
	.uleb128	36
	.byte		"state"
	.byte		0
	.4byte		.L619
	.4byte		.L644
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L648
	.4byte		.L645
	.4byte		.L646
.L649:
	.sleb128	7
	.4byte		.L605
	.uleb128	85
	.uleb128	38
	.byte		"Transition"
	.byte		0
	.4byte		.L615
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L648:
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L653
	.4byte		.L650
	.4byte		.L651
.L654:
	.sleb128	7
	.4byte		.L605
	.uleb128	109
	.uleb128	38
	.byte		"Transition"
	.byte		0
	.4byte		.L615
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	9
	.section	.debug_info,,n
	.sleb128	0
.L653:
	.section	.debug_info,,n
	.sleb128	0
.L642:
	.section	.debug_info,,n
	.sleb128	0
.L631:
	.section	.debug_info,,n
	.sleb128	0
.L623:
	.section	.debug_info,,n
.L655:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L656
	.uleb128	500
	.uleb128	48
	.byte		"CanSM_LTConfig"
	.byte		0
	.4byte		.L657
	.section	.debug_info,,n
	.section	.debug_info,,n
.L611:
	.sleb128	9
	.4byte		.L656
	.uleb128	341
	.uleb128	14
	.4byte		.L660-.L2
	.uleb128	24
	.section	.debug_info,,n
.L552:
	.sleb128	10
	.byte		"RAM"
	.byte		0
	.4byte		.L661
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L553:
	.sleb128	10
	.byte		"CanSMNetworkIndex"
	.byte		0
	.4byte		.L664
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L554:
	.sleb128	10
	.byte		"CanSMNetworkHandle"
	.byte		0
	.4byte		.L665
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L555:
	.sleb128	10
	.byte		"CanSMTransceiverId_u8"
	.byte		0
	.4byte		.L664
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L556:
	.sleb128	10
	.byte		"CanSMPartialNetworkSupport"
	.byte		0
	.4byte		.L667
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L557:
	.sleb128	10
	.byte		"CanSMBorTxConfirmationPolling"
	.byte		0
	.4byte		.L667
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L558:
	.sleb128	10
	.byte		"ControllerType_R16_Size"
	.byte		0
	.4byte		.L664
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L559:
	.sleb128	10
	.byte		"CanSMBorCounterL1ToL2_u8"
	.byte		0
	.4byte		.L664
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L560:
	.sleb128	10
	.byte		"CanSMBorTimeL1_u16"
	.byte		0
	.4byte		.L669
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L561:
	.sleb128	10
	.byte		"CanSMBorTimeL2_u16"
	.byte		0
	.4byte		.L669
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L562:
	.sleb128	10
	.byte		"CanSMBorTimeTxEnsured_u16"
	.byte		0
	.4byte		.L669
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L563:
	.sleb128	10
	.byte		"CanSMBorErrEvent"
	.byte		0
	.4byte		.L670
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L564:
	.sleb128	10
	.byte		"ControllerType_R16"
	.byte		0
	.4byte		.L633
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L660:
.L663:
	.sleb128	9
	.4byte		.L656
	.uleb128	341
	.uleb128	14
	.4byte		.L672-.L2
	.uleb128	42
.L518:
	.sleb128	10
	.byte		"current_state"
	.byte		0
	.4byte		.L673
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L519:
	.sleb128	10
	.byte		"State"
	.byte		0
	.4byte		.L619
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L520:
	.sleb128	10
	.byte		"CanSMBorTimer_u16"
	.byte		0
	.4byte		.L619
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L521:
	.sleb128	10
	.byte		"CanSMBorTimerTxEnsured_u16"
	.byte		0
	.4byte		.L619
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L522:
	.sleb128	10
	.byte		"ChannelTimer_u16"
	.byte		0
	.4byte		.L619
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L523:
	.sleb128	10
	.byte		"RetryTimerEnabled"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L524:
	.sleb128	10
	.byte		"CanSMNetworkMode"
	.byte		0
	.4byte		.L674
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L525:
	.sleb128	10
	.byte		"CanSMBorCounter_u8"
	.byte		0
	.4byte		.L615
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L526:
	.sleb128	10
	.byte		"RequestModeTransition"
	.byte		0
	.4byte		.L615
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L527:
	.sleb128	10
	.byte		"RetryCounter_u8"
	.byte		0
	.4byte		.L615
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L528:
	.sleb128	10
	.byte		"RequestMode"
	.byte		0
	.4byte		.L674
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L529:
	.sleb128	10
	.byte		"CanSM_InitFlag"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L530:
	.sleb128	10
	.byte		"CanSMCheckedBaudrateStatus"
	.byte		0
	.4byte		.L615
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L531:
	.sleb128	10
	.byte		"CanSMCheckedBaudrate"
	.byte		0
	.4byte		.L619
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L532:
	.sleb128	10
	.byte		"CanSMChangedBaudrate"
	.byte		0
	.4byte		.L619
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L533:
	.sleb128	10
	.byte		"CurrentStateNoCom_b"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L534:
	.sleb128	10
	.byte		"TxTimeoutstate_b"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L535:
	.sleb128	10
	.byte		"T_REPEAT_MAX_HAPPENED"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L536:
	.sleb128	10
	.byte		"BufferedRequestMode"
	.byte		0
	.4byte		.L674
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
.L537:
	.sleb128	10
	.byte		"CalledFromMainfunction"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L538:
	.sleb128	10
	.byte		"Lock"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L539:
	.sleb128	10
	.byte		"CanSM_ChangeBaudrateRequest"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L540:
	.sleb128	10
	.byte		"CanSM_ComModeRequest"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L541:
	.sleb128	10
	.byte		"CanSM_TransceiverWakeFlagIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L542:
	.sleb128	10
	.byte		"CanSM_TrcvWuFlagIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L543:
	.sleb128	10
	.byte		"CanSM_CtrlBusOffIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L544:
	.sleb128	10
	.byte		"CanSM_CtrlSleepIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L545:
	.sleb128	10
	.byte		"CanSM_CtrlStoppedIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L546:
	.sleb128	10
	.byte		"CanSM_CtrlStartedIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L547:
	.sleb128	10
	.byte		"CanSM_TransceiverModeNormalIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L548:
	.sleb128	10
	.byte		"CanSM_TransceiverModeStandbyIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	37
	.byte		0x1
.L549:
	.sleb128	10
	.byte		"CanSM_TxTimeoutIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L550:
	.sleb128	10
	.byte		"BusOffDuringRecovery"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L551:
	.sleb128	10
	.byte		"BorFailTRepeatMax"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L672:
.L659:
	.sleb128	9
	.4byte		.L656
	.uleb128	341
	.uleb128	14
	.4byte		.L675-.L2
	.uleb128	4
.L517:
	.sleb128	10
	.byte		"RAM"
	.byte		0
	.4byte		.L676
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L675:
.L678:
	.sleb128	9
	.4byte		.L656
	.uleb128	341
	.uleb128	14
	.4byte		.L679-.L2
	.uleb128	4
.L516:
	.sleb128	10
	.byte		"initState"
	.byte		0
	.4byte		.L680
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L679:
.L636:
	.sleb128	9
	.4byte		.L656
	.uleb128	341
	.uleb128	14
	.4byte		.L682-.L2
	.uleb128	8
.L514:
	.sleb128	10
	.byte		"RAM"
	.byte		0
	.4byte		.L683
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L515:
	.sleb128	10
	.byte		"ControllerId_pu8"
	.byte		0
	.4byte		.L664
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L682:
.L685:
	.sleb128	9
	.4byte		.L656
	.uleb128	341
	.uleb128	14
	.4byte		.L686-.L2
	.uleb128	3
.L511:
	.sleb128	10
	.byte		"ControllerSleepIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	10
	.byte		"ControllerStoppedIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L513:
	.sleb128	10
	.byte		"ControllerStartedIndication"
	.byte		0
	.4byte		.L668
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L686:
	.section	.debug_info,,n
.L681:
	.sleb128	11
	.4byte		.L656
	.uleb128	322
	.uleb128	14
	.4byte		.L687-.L2
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
.L687:
	.section	.debug_info,,n
.L610:
	.sleb128	13
	.byte		"CanSM_NetworkType"
	.byte		0
	.4byte		.L611
	.section	.debug_info,,n
.L609:
	.sleb128	14
	.4byte		.L610
	.section	.debug_info,,n
.L608:
	.sleb128	15
	.4byte		.L609
.L607:
	.sleb128	14
	.4byte		.L608
	.section	.debug_info,,n
.L616:
	.sleb128	16
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L615:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L616
.L614:
	.sleb128	15
	.4byte		.L615
.L613:
	.sleb128	14
	.4byte		.L614
.L620:
	.sleb128	16
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L619:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L620
.L635:
	.sleb128	13
	.byte		"CanSM_ControllerType"
	.byte		0
	.4byte		.L636
.L634:
	.sleb128	14
	.4byte		.L635
.L633:
	.sleb128	15
	.4byte		.L634
.L658:
	.sleb128	13
	.byte		"CanSM_LTConfigType"
	.byte		0
	.4byte		.L659
.L657:
	.sleb128	14
	.4byte		.L658
.L662:
	.sleb128	13
	.byte		"CanSM_NetworkType_RAM"
	.byte		0
	.4byte		.L663
.L661:
	.sleb128	15
	.4byte		.L662
.L664:
	.sleb128	14
	.4byte		.L615
.L666:
	.sleb128	13
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L615
.L665:
	.sleb128	14
	.4byte		.L666
.L668:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L616
.L667:
	.sleb128	14
	.4byte		.L668
.L669:
	.sleb128	14
	.4byte		.L619
.L671:
	.sleb128	13
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L619
.L670:
	.sleb128	14
	.4byte		.L671
.L673:
	.sleb128	13
	.byte		"CANSM_Escher_StateNumber_t"
	.byte		0
	.4byte		.L615
.L674:
	.sleb128	13
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L615
.L677:
	.sleb128	13
	.byte		"CanSM_LTConfigType_RAM"
	.byte		0
	.4byte		.L678
.L676:
	.sleb128	15
	.4byte		.L677
.L680:
	.sleb128	13
	.byte		"CanSM_StateType"
	.byte		0
	.4byte		.L681
.L684:
	.sleb128	13
	.byte		"CanSM_ControllerType_RAM"
	.byte		0
	.4byte		.L685
.L683:
	.sleb128	15
	.4byte		.L684
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L612:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L617:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locend
.L621:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo2),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo3),0
	.d2locend
.L627:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),0
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),0
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),0
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),0
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),0
	.d2locend
.L638:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),31
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo25),31
	.d2locend
.L644:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo15),30
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo21),30
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanSM_ControllerBusOff"
	.wrcm.nstrlist "calls", "CanSM_FindNetworkByController","CanSM_GetControllerBusOffTransition","CanSM_Lock","CanSM_ProcessSM","CanSM_UnLock"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_GetControllerBusOffTransition"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_ControllerBusOff.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_ControllerBusOff.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_ControllerBusOff.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_ControllerBusOff.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_ControllerBusOff.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_ControllerBusOff.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanSM\ssc\make\..\src\CanSM_ControllerBusOff.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
