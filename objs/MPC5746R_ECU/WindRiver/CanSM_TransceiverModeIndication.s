#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanSM_TransceiverModeIndication.c"
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
# static FUNC(uint8, CANSM_CODE) CanSM_GetTransceiverModeIndicationTransition(
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_TransceiverModeIndication.c"
        .d2line         138,32
#$$ld
.L602:

#$$bf	CanSM_GetTransceiverModeIndicationTransition,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.d2_cfa_start __cie
CanSM_GetTransceiverModeIndicationTransition:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# TransceiverMode=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# net=r3 net=r3
	mr.		r0,r4		# TransceiverMode=?a5 TransceiverMode=r4
	.d2prologue_end
#         CONSTP2CONST(CanSM_NetworkType, AUTOMATIC, CANSM_APPL_CONST) net,
#         CONST(CanTrcv_TrcvModeType, AUTOMATIC) TransceiverMode)
# {
#     VAR(uint8, AUTOMATIC) Transition;
#     CONST(uint16, AUTOMATIC) state = net->RAM->State;
	.d2line		143
	lwz		r4,0(r3)		# Transition=r4 net=r3
	.d2line		146
.Llo7:
	lhz		r6,2(r4)		# Transition=r4
.Llo11:
	mr		r6,r6		# state=r6 state=r6
# 
#     Transition = CANSM_NO_TRANSITION;
	.d2line		145
	diab.li		r4,0		# Transition=r4
#     if((TransceiverMode == CANTRCV_TRCVMODE_NORMAL) && (state == CANSM_ST_PNC_TRCV_NOR))
	bc		0,2,.L590	# ne
	.d2line		146
.Llo8:
	rlwinm		r5,r6,0,16,31		# state=r6
	se_cmpi		r5,15
#     {
#         Transition = CANSM_PNC_TRCV_NOR_TO_PNC_TRCV_STB;
	.d2line		148
	diab.li		r5,18
	isel		r4,r5,r4,2		# Transition=r4 Transition=r4
.L590:
#     }
#     if(net->CanSMPartialNetworkSupport == TRUE)
	.d2line		150
	lbz		r3,7(r3)		# net=r3 net=r3
	se_cmpi		r3,1		# net=r3
	bc		0,2,.L591	# ne
#     {
#         if((TransceiverMode == CANTRCV_TRCVMODE_STANDBY) && (state == CANSM_ST_PNC_TRCV_STB))
	.d2line		152
.Llo2:
	se_cmpi		r0,2		# TransceiverMode=r0
	bc		0,2,.L593	# ne
	rlwinm		r5,r6,0,16,31		# state=r6
	se_cmpi		r5,16
	bc		0,2,.L593	# ne
#         {
#             Transition = CANSM_PNC_TRCV_STB_TO_PNC_CC_SLEEP;
	.d2line		154
	diab.li		r4,28		# Transition=r4
	b		.L593
.L591:
#         }
#     }
#     else
#     {
#         if((TransceiverMode == CANTRCV_TRCVMODE_STANDBY) && (state == CANSM_ST_PNC_TRCV_STB))
	.d2line		159
	se_cmpi		r0,2		# TransceiverMode=r0
	bc		0,2,.L593	# ne
	rlwinm		r5,r6,0,16,31		# state=r6
	se_cmpi		r5,16
#         {
#             Transition = CANSM_PNC_TRCV_STB_TO_NOCO;
	.d2line		161
	diab.li		r3,19		# net=r3
.Llo3:
	isel		r4,r3,r4,2		# Transition=r4 net=r3 Transition=r4
.L593:
#         }
#     }
#     if((TransceiverMode == CANTRCV_TRCVMODE_NORMAL) && (state == CANSM_ST_PFC_TRCV_NOR))
	.d2line		164
.Llo4:
	se_cmpi		r0,0		# TransceiverMode=r0
	bc		0,2,.L595	# ne
.Llo9:
	rlwinm		r6,r6,0,16,31		# state=r6 state=r6
	se_cmpi		r6,22		# state=r6
#     {
#         Transition = CANSM_PFC_TRCV_NOR_TO_PFC_CC_STOP;
	.d2line		166
	diab.li		r3,3		# net=r3
.Llo5:
	isel		r4,r3,r4,2		# Transition=r4 net=r3 Transition=r4
.L595:
#     }
#     return Transition;
	.d2line		168
.Llo6:
	rlwinm		r3,r4,0,24,31		# net=r3 Transition=r4
# }
	.d2line		169
	.d2epilogue_begin
	lwz		r0,20(r1)		# TransceiverMode=r0
	mtspr		lr,r0		# TransceiverMode=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo10:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L603:
	.type		CanSM_GetTransceiverModeIndicationTransition,@function
	.size		CanSM_GetTransceiverModeIndicationTransition,.-CanSM_GetTransceiverModeIndicationTransition
# Number of nodes = 60

# Allocations for CanSM_GetTransceiverModeIndicationTransition
#	?a4		net
#	?a5		TransceiverMode
#	?a6		Transition
#	?a7		state
# FUNC(void,CANSM_CODE) CanSM_TransceiverModeIndication(VAR(uint8, AUTOMATIC) TransceiverId, VAR(CanTrcv_TrcvModeType, AUTOMATIC) TransceiverMode)
	.align		2
	.section	.text_vle
        .d2line         62,23
#$$ld
.L627:

#$$bf	CanSM_TransceiverModeIndication,interprocedural,rasave,nostackparams
	.globl		CanSM_TransceiverModeIndication
	.d2_cfa_start __cie
CanSM_TransceiverModeIndication:
.Llo12:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# TransceiverId=r0 TransceiverId=r3
	mr		r31,r4		# TransceiverMode=r31 TransceiverMode=r4
	.d2prologue_end
# {
#     /* <Requirements> CANSM399 CANSM400 CANSM401 CANSM485 <EndRequirements> */
# 
#     if(CanSM_LTConfig.RAM->initState == CANSM_UNINITED)
	.d2line		66
	lis		r3,CanSM_LTConfig@ha
.Llo13:
	lwz		r3,CanSM_LTConfig@l(r3)
	lwz		r3,0(r3)
	se_cmpi		r3,1
	bc		1,2,.L575	# eq
	.section	.text_vle
.L632:
#     {
# #if (CANSM_DEV_ERROR_DETECT == STD_ON)
#         /* Report not-initialized error to Det */
#         (void)Det_ReportError(CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_TRANSCEIVER_MODE_INDICATION, CANSM_E_UNINIT);
# #endif
#     }
#     else
#     {
#         P2CONST(CanSM_NetworkType, AUTOMATIC,CANSM_APPL_CONST) net;
#         /* Find internal network descriptor */
#         net = CanSM_FindNetworkByTransceiver(TransceiverId);
	.d2line		77
.Llo14:
	rlwinm		r3,r0,0,24,31		# TransceiverId=r0
.Llo20:
	bl		CanSM_FindNetworkByTransceiver
	.d2line		78
.Llo15:
	mr.		r30,r3		# net=?a6 net=r3
#         if(net != NULL_PTR)
.Llo25:
	bc		1,2,.L575	# eq
#         {
#             /* Try to get a network lock */
#             if(CanSM_Lock(net) == TRUE)
	.d2line		81
	mr		r3,r30		# net=r3 net=r30
	bl		CanSM_Lock
	rlwinm		r3,r3,0,24,31		# net=r3 net=r3
	se_cmpi		r3,1		# net=r3
	bc		0,2,.L579	# ne
	.section	.text_vle
.L638:
#             {
#                 VAR(uint8, AUTOMATIC) Transition;
#                 Transition = CanSM_GetTransceiverModeIndicationTransition(net, TransceiverMode);
	.d2line		84
	mr		r3,r30		# net=r3 net=r30
	mr		r4,r31		# TransceiverMode=r4 TransceiverMode=r31
	bl		CanSM_GetTransceiverModeIndicationTransition
.Llo27:
	mr		r4,r3		# Transition=r4 Transition=r3
# 
#                 if(Transition != CANSM_NO_TRANSITION)
	.d2line		86
	rlwinm		r3,r3,0,24,31		# Transition=r3 Transition=r3
	se_cmpi		r3,0		# Transition=r3
	bc		1,2,.L580	# eq
#                 {
#                     /* Trigger state machine with the determined transition */
#                     (void)CanSM_ProcessSM(net->CanSMNetworkIndex, Transition, FALSE);
	.d2line		89
.Llo21:
	lbz		r3,4(r30)		# Transition=r3 net=r30
.Llo28:
	rlwinm		r4,r4,0,24,31		# Transition=r4 Transition=r4
.Llo29:
	diab.li		r5,0
	bl		CanSM_ProcessSM
.L580:
#                 }
# 
#                 /* Release network lock */
#                 CanSM_UnLock(net);
	.d2line		93
	mr		r3,r30		# net=r3 net=r30
	bl		CanSM_UnLock
	.section	.text_vle
.L639:
.Llo26:
	b		.L575
.L579:
	.section	.text_vle
.L644:
#             }
#             else
#             {
#                 /* If lock was not granted */
#                 VAR(uint8,AUTOMATIC) Transition;
#                 Transition = CanSM_GetTransceiverModeIndicationTransition(net, TransceiverMode);
	.d2line		99
.Llo22:
	mr		r3,r30		# net=r3 net=r30
	mr		r4,r31		# TransceiverMode=r4 TransceiverMode=r31
	bl		CanSM_GetTransceiverModeIndicationTransition
.Llo30:
	mr		r3,r3		# Transition=r3 Transition=r3
# 
#                 /* If transition is determined, but lock is not granted,
#                  * then just register the call of this API
#                  * showing the mode indicated.
#                  */
#                 if(Transition != CANSM_NO_TRANSITION)
	.d2line		105
	rlwinm		r3,r3,0,24,31		# Transition=r3 Transition=r3
	se_cmpi		r3,0		# Transition=r3
	bc		1,2,.L575	# eq
#                 {
#                     if(TransceiverMode == CANTRCV_TRCVMODE_NORMAL)
	.d2line		107
.Llo31:
	se_cmpi		r31,0		# TransceiverMode=r31
	bc		0,2,.L583	# ne
#                     {
#                         net->RAM->CanSM_TransceiverModeNormalIndication = TRUE;
	.d2line		109
	diab.li		r0,1		# TransceiverId=r0
.Llo16:
	lwz		r3,0(r30)		# Transition=r3 net=r30
.Llo32:
	stb		r0,36(r3)		# Transition=r3 TransceiverId=r0
.L583:
#                     }
#                     if(TransceiverMode == CANTRCV_TRCVMODE_STANDBY)
	.d2line		111
.Llo17:
	se_cmpi		r31,2		# TransceiverMode=r31
	bc		0,2,.L575	# ne
#                     {
#                         net->RAM->CanSM_TransceiverModeStandbyIndication = TRUE;
	.d2line		113
.Llo23:
	diab.li		r0,1		# TransceiverId=r0
.Llo18:
	lwz		r3,0(r30)		# Transition=r3 net=r30
.Llo33:
	stb		r0,37(r3)		# Transition=r3 TransceiverId=r0
	.section	.text_vle
.L645:
	.section	.text_vle
.L633:
.L575:
#                     }
#                 }
#             }
#         }
# #if(CANSM_DEV_ERROR_DETECT == STD_ON)
#         else
#         {
#             /* If network was not found */
#             (void)Det_ReportError(CANSM_MODULE_ID, CANSM_INSTANCE_ID, CANSM_SID_TRANSCEIVER_MODE_INDICATION, CANSM_E_PARAM_TRANSCEIVER);
#         }
# #endif
#     }
# }
	.d2line		126
	.d2epilogue_begin
.Llo19:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# TransceiverId=r0
	mtspr		lr,r0		# TransceiverId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo24:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L628:
	.type		CanSM_TransceiverModeIndication,@function
	.size		CanSM_TransceiverModeIndication,.-CanSM_TransceiverModeIndication
# Number of nodes = 85

# Allocations for CanSM_TransceiverModeIndication
#	?a4		TransceiverId
#	?a5		TransceiverMode
#	?a6		net
#	?a7		Transition
#	?a8		Transition

# Allocations for module
	.section	.text_vle
	.0byte		.L650
	.section	.text_vle
#$$ld
.L5:
.L686:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L651:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\inc\\CanSM_Types.h"
.L604:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_TransceiverModeIndication.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_TransceiverModeIndication.c"
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
.L607:
	.sleb128	2
	.4byte		.L601-.L2
	.byte		"CanSM_GetTransceiverModeIndicationTransition"
	.byte		0
	.4byte		.L604
	.uleb128	138
	.uleb128	32
	.4byte		.L605
	.byte		0x1
	.4byte		.L602
	.4byte		.L603
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L604
	.uleb128	138
	.uleb128	32
	.byte		"net"
	.byte		0
	.4byte		.L608
	.4byte		.L613
	.sleb128	3
	.4byte		.L604
	.uleb128	138
	.uleb128	32
	.byte		"TransceiverMode"
	.byte		0
	.4byte		.L614
	.4byte		.L617
	.section	.debug_info,,n
.L618:
	.sleb128	4
	.4byte		.L604
	.uleb128	142
	.uleb128	27
	.byte		"Transition"
	.byte		0
	.4byte		.L605
	.4byte		.L619
.L620:
	.sleb128	4
	.4byte		.L604
	.uleb128	143
	.uleb128	30
	.byte		"state"
	.byte		0
	.4byte		.L621
	.4byte		.L624
	.section	.debug_info,,n
	.sleb128	0
.L601:
	.section	.debug_info,,n
.L629:
	.sleb128	5
	.4byte		.L626-.L2
	.byte		"CanSM_TransceiverModeIndication"
	.byte		0
	.4byte		.L604
	.uleb128	62
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L627
	.4byte		.L628
	.sleb128	3
	.4byte		.L604
	.uleb128	62
	.uleb128	23
	.byte		"TransceiverId"
	.byte		0
	.4byte		.L605
	.4byte		.L630
	.sleb128	3
	.4byte		.L604
	.uleb128	62
	.uleb128	23
	.byte		"TransceiverMode"
	.byte		0
	.4byte		.L615
	.4byte		.L631
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L635
	.4byte		.L632
	.4byte		.L633
.L636:
	.sleb128	4
	.4byte		.L604
	.uleb128	75
	.uleb128	64
	.byte		"net"
	.byte		0
	.4byte		.L609
	.4byte		.L637
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L641
	.4byte		.L638
	.4byte		.L639
.L642:
	.sleb128	4
	.4byte		.L604
	.uleb128	83
	.uleb128	39
	.byte		"Transition"
	.byte		0
	.4byte		.L605
	.4byte		.L643
	.section	.debug_info,,n
	.sleb128	0
.L641:
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L647
	.4byte		.L644
	.4byte		.L645
.L648:
	.sleb128	4
	.4byte		.L604
	.uleb128	98
	.uleb128	38
	.byte		"Transition"
	.byte		0
	.4byte		.L605
	.4byte		.L649
	.section	.debug_info,,n
	.sleb128	0
.L647:
	.section	.debug_info,,n
	.sleb128	0
.L635:
	.section	.debug_info,,n
	.sleb128	0
.L626:
	.section	.debug_info,,n
.L650:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L651
	.uleb128	500
	.uleb128	48
	.byte		"CanSM_LTConfig"
	.byte		0
	.4byte		.L652
	.section	.debug_info,,n
	.section	.debug_info,,n
.L612:
	.sleb128	8
	.4byte		.L651
	.uleb128	341
	.uleb128	14
	.4byte		.L655-.L2
	.uleb128	24
	.section	.debug_info,,n
.L552:
	.sleb128	9
	.byte		"RAM"
	.byte		0
	.4byte		.L656
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L553:
	.sleb128	9
	.byte		"CanSMNetworkIndex"
	.byte		0
	.4byte		.L659
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L554:
	.sleb128	9
	.byte		"CanSMNetworkHandle"
	.byte		0
	.4byte		.L660
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L555:
	.sleb128	9
	.byte		"CanSMTransceiverId_u8"
	.byte		0
	.4byte		.L659
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L556:
	.sleb128	9
	.byte		"CanSMPartialNetworkSupport"
	.byte		0
	.4byte		.L662
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L557:
	.sleb128	9
	.byte		"CanSMBorTxConfirmationPolling"
	.byte		0
	.4byte		.L662
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L558:
	.sleb128	9
	.byte		"ControllerType_R16_Size"
	.byte		0
	.4byte		.L659
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L559:
	.sleb128	9
	.byte		"CanSMBorCounterL1ToL2_u8"
	.byte		0
	.4byte		.L659
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L560:
	.sleb128	9
	.byte		"CanSMBorTimeL1_u16"
	.byte		0
	.4byte		.L621
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L561:
	.sleb128	9
	.byte		"CanSMBorTimeL2_u16"
	.byte		0
	.4byte		.L621
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L562:
	.sleb128	9
	.byte		"CanSMBorTimeTxEnsured_u16"
	.byte		0
	.4byte		.L621
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L563:
	.sleb128	9
	.byte		"CanSMBorErrEvent"
	.byte		0
	.4byte		.L664
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L564:
	.sleb128	9
	.byte		"ControllerType_R16"
	.byte		0
	.4byte		.L666
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L655:
.L658:
	.sleb128	8
	.4byte		.L651
	.uleb128	341
	.uleb128	14
	.4byte		.L670-.L2
	.uleb128	42
.L518:
	.sleb128	9
	.byte		"current_state"
	.byte		0
	.4byte		.L671
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L519:
	.sleb128	9
	.byte		"State"
	.byte		0
	.4byte		.L622
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L520:
	.sleb128	9
	.byte		"CanSMBorTimer_u16"
	.byte		0
	.4byte		.L622
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L521:
	.sleb128	9
	.byte		"CanSMBorTimerTxEnsured_u16"
	.byte		0
	.4byte		.L622
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L522:
	.sleb128	9
	.byte		"ChannelTimer_u16"
	.byte		0
	.4byte		.L622
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L523:
	.sleb128	9
	.byte		"RetryTimerEnabled"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L524:
	.sleb128	9
	.byte		"CanSMNetworkMode"
	.byte		0
	.4byte		.L672
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L525:
	.sleb128	9
	.byte		"CanSMBorCounter_u8"
	.byte		0
	.4byte		.L605
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L526:
	.sleb128	9
	.byte		"RequestModeTransition"
	.byte		0
	.4byte		.L605
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L527:
	.sleb128	9
	.byte		"RetryCounter_u8"
	.byte		0
	.4byte		.L605
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L528:
	.sleb128	9
	.byte		"RequestMode"
	.byte		0
	.4byte		.L672
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L529:
	.sleb128	9
	.byte		"CanSM_InitFlag"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L530:
	.sleb128	9
	.byte		"CanSMCheckedBaudrateStatus"
	.byte		0
	.4byte		.L605
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L531:
	.sleb128	9
	.byte		"CanSMCheckedBaudrate"
	.byte		0
	.4byte		.L622
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L532:
	.sleb128	9
	.byte		"CanSMChangedBaudrate"
	.byte		0
	.4byte		.L622
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L533:
	.sleb128	9
	.byte		"CurrentStateNoCom_b"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L534:
	.sleb128	9
	.byte		"TxTimeoutstate_b"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L535:
	.sleb128	9
	.byte		"T_REPEAT_MAX_HAPPENED"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L536:
	.sleb128	9
	.byte		"BufferedRequestMode"
	.byte		0
	.4byte		.L672
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
.L537:
	.sleb128	9
	.byte		"CalledFromMainfunction"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L538:
	.sleb128	9
	.byte		"Lock"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L539:
	.sleb128	9
	.byte		"CanSM_ChangeBaudrateRequest"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L540:
	.sleb128	9
	.byte		"CanSM_ComModeRequest"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L541:
	.sleb128	9
	.byte		"CanSM_TransceiverWakeFlagIndication"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L542:
	.sleb128	9
	.byte		"CanSM_TrcvWuFlagIndication"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L543:
	.sleb128	9
	.byte		"CanSM_CtrlBusOffIndication"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L544:
	.sleb128	9
	.byte		"CanSM_CtrlSleepIndication"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L545:
	.sleb128	9
	.byte		"CanSM_CtrlStoppedIndication"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L546:
	.sleb128	9
	.byte		"CanSM_CtrlStartedIndication"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L547:
	.sleb128	9
	.byte		"CanSM_TransceiverModeNormalIndication"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L548:
	.sleb128	9
	.byte		"CanSM_TransceiverModeStandbyIndication"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	37
	.byte		0x1
.L549:
	.sleb128	9
	.byte		"CanSM_TxTimeoutIndication"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L550:
	.sleb128	9
	.byte		"BusOffDuringRecovery"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L551:
	.sleb128	9
	.byte		"BorFailTRepeatMax"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L670:
.L654:
	.sleb128	8
	.4byte		.L651
	.uleb128	341
	.uleb128	14
	.4byte		.L673-.L2
	.uleb128	4
.L517:
	.sleb128	9
	.byte		"RAM"
	.byte		0
	.4byte		.L674
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L673:
.L676:
	.sleb128	8
	.4byte		.L651
	.uleb128	341
	.uleb128	14
	.4byte		.L677-.L2
	.uleb128	4
.L516:
	.sleb128	9
	.byte		"initState"
	.byte		0
	.4byte		.L678
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L677:
.L669:
	.sleb128	8
	.4byte		.L651
	.uleb128	341
	.uleb128	14
	.4byte		.L680-.L2
	.uleb128	8
.L514:
	.sleb128	9
	.byte		"RAM"
	.byte		0
	.4byte		.L681
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L515:
	.sleb128	9
	.byte		"ControllerId_pu8"
	.byte		0
	.4byte		.L659
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L680:
.L683:
	.sleb128	8
	.4byte		.L651
	.uleb128	341
	.uleb128	14
	.4byte		.L684-.L2
	.uleb128	3
.L511:
	.sleb128	9
	.byte		"ControllerSleepIndication"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	9
	.byte		"ControllerStoppedIndication"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L513:
	.sleb128	9
	.byte		"ControllerStartedIndication"
	.byte		0
	.4byte		.L663
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L684:
	.section	.debug_info,,n
.L679:
	.sleb128	10
	.4byte		.L651
	.uleb128	322
	.uleb128	14
	.4byte		.L685-.L2
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
.L685:
.L616:
	.sleb128	10
	.4byte		.L686
	.uleb128	23
	.uleb128	15
	.4byte		.L687-.L2
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
.L687:
	.section	.debug_info,,n
.L606:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L605:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L606
.L611:
	.sleb128	13
	.byte		"CanSM_NetworkType"
	.byte		0
	.4byte		.L612
	.section	.debug_info,,n
.L610:
	.sleb128	14
	.4byte		.L611
	.section	.debug_info,,n
.L609:
	.sleb128	15
	.4byte		.L610
.L608:
	.sleb128	14
	.4byte		.L609
.L615:
	.sleb128	13
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L616
.L614:
	.sleb128	14
	.4byte		.L615
.L623:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L622:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L623
.L621:
	.sleb128	14
	.4byte		.L622
.L653:
	.sleb128	13
	.byte		"CanSM_LTConfigType"
	.byte		0
	.4byte		.L654
.L652:
	.sleb128	14
	.4byte		.L653
.L657:
	.sleb128	13
	.byte		"CanSM_NetworkType_RAM"
	.byte		0
	.4byte		.L658
.L656:
	.sleb128	15
	.4byte		.L657
.L659:
	.sleb128	14
	.4byte		.L605
.L661:
	.sleb128	13
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L605
.L660:
	.sleb128	14
	.4byte		.L661
.L663:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L606
.L662:
	.sleb128	14
	.4byte		.L663
.L665:
	.sleb128	13
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L622
.L664:
	.sleb128	14
	.4byte		.L665
.L668:
	.sleb128	13
	.byte		"CanSM_ControllerType"
	.byte		0
	.4byte		.L669
.L667:
	.sleb128	14
	.4byte		.L668
.L666:
	.sleb128	15
	.4byte		.L667
.L671:
	.sleb128	13
	.byte		"CANSM_Escher_StateNumber_t"
	.byte		0
	.4byte		.L605
.L672:
	.sleb128	13
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L605
.L675:
	.sleb128	13
	.byte		"CanSM_LTConfigType_RAM"
	.byte		0
	.4byte		.L676
.L674:
	.sleb128	15
	.4byte		.L675
.L678:
	.sleb128	13
	.byte		"CanSM_StateType"
	.byte		0
	.4byte		.L679
.L682:
	.sleb128	13
	.byte		"CanSM_ControllerType_RAM"
	.byte		0
	.4byte		.L683
.L681:
	.sleb128	15
	.4byte		.L682
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L613:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L617:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),0
	.d2locend
.L619:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo10),4
	.d2locend
.L624:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo6),6
	.d2locend
.L630:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),0
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locend
.L631:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo14),4
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),31
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),31
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo24),4
	.d2locend
.L637:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),30
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo19),30
	.d2locend
.L643:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),4
	.d2locend
.L649:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),3
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo17),3
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo19),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanSM_TransceiverModeIndication"
	.wrcm.nstrlist "calls", "CanSM_FindNetworkByTransceiver","CanSM_GetTransceiverModeIndicationTransition","CanSM_Lock","CanSM_ProcessSM","CanSM_UnLock"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_GetTransceiverModeIndicationTransition"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_TransceiverModeIndication.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_TransceiverModeIndication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_TransceiverModeIndication.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_TransceiverModeIndication.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_TransceiverModeIndication.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_TransceiverModeIndication.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanSM\ssc\make\..\src\CanSM_TransceiverModeIndication.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
