#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinSM_WakeUpConfirmation.c"
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
# FUNC(void, LINSM_CODE) LinSM_WakeupConfirmation
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_WakeUpConfirmation.c"
        .d2line         50,24
#$$ld
.L515:

#$$bf	LinSM_WakeupConfirmation,interprocedural,rasave,nostackparams
	.globl		LinSM_WakeupConfirmation
	.d2_cfa_start __cie
LinSM_WakeupConfirmation:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r4		# Success=r31 Success=r4
	.d2prologue_end
# (
#   VAR(NetworkHandleType, AUTOMATIC) Network,
#   VAR(boolean, AUTOMATIC) Success
# )
# {
#     /* Map the correct channel from LinSM configuration */
#     CONST(NetworkHandleType, AUTOMATIC) channelIndex = LinSM_GetChannelIndex(Network);
	.d2line		57
.Llo11:
	rlwinm		r3,r3,0,24,31		# Network=r3 Network=r3
.Llo2:
	bl		LinSM_GetChannelIndex
	mr		r30,r3		# channelIndex=r30 channelIndex=r3
# 
#     /* Detect the Development Error Tracer */
# #if( STD_ON == LINSM_DEV_ERROR_DETECT )
#     if( channelIndex >= LinSM_NoOfChannel ) /* Check whether Channel is valid */
#     {
#         (void) Det_ReportError(LINSM_MODULE_ID,
#                 LINSM_INSTANCE_ID,
#                 LINSM_SID_WAKEUP_CONF,
#                 LINSM_E_NONEXISTENT_NETWORK);
#     }
#     else if( LINSM_UNINIT == LinSM_InitState ) /* Check whether module is initialized */
#     {
#         (void) Det_ReportError(LINSM_MODULE_ID,
#                 LINSM_INSTANCE_ID,
#                 LINSM_SID_WAKEUP_CONF,
#                 LINSM_E_UNINIT);
#     }
#     else
# #endif
#     {
#         /* Enter into the critical area */
#         SchM_Enter_LinSM_ExclusiveArea0();
	.d2line		79
	bl		SchM_Enter_LinSM_ExclusiveArea0
# 
#         /* BZ20278 */
#         /* LinIf has already changed to NULL schedule during sleep, we have to track it */
#         LinSM_Interface_p[channelIndex].LinSM_CrntScheduleRef = NULL_SCHEDULE;
	.d2line		83
	diab.li		r0,0
	lis		r3,LinSM_Interface_p@ha		# Network=r3
.Llo3:
	lwz		r4,LinSM_Interface_p@l(r3)		# Network=r3
	rlwinm		r5,r30,3,21,28		# channelIndex=r30
	se_add		r4,r5
	stb		r0,4(r4)
#         LinSM_Interface_p[channelIndex].LinSM_ReqScheduleRef = NULL_SCHEDULE;
	.d2line		84
	lwz		r3,LinSM_Interface_p@l(r3)		# Network=r3 Network=r3
	se_add		r5,r3		# Network=r3
	stb		r0,3(r5)
# 
#         /* Exit from the critical area */
#         SchM_Exit_LinSM_ExclusiveArea0();
	.d2line		87
	bl		SchM_Exit_LinSM_ExclusiveArea0
# 
#         /*[LINSM0202]*/
#         if((FALSE == Success) && (LINSM_NO_COM == LinSM_Interface_p[channelIndex].LinSM_CrntMode))
	.d2line		90
.Llo4:
	rlwinm		r4,r31,0,24,31		# Success=r31
	se_cmpi		r4,0
	bc		0,2,.L506	# ne
	lis		r3,LinSM_Interface_p@ha		# Network=r3
.Llo5:
	lwz		r3,LinSM_Interface_p@l(r3)		# Network=r3 Network=r3
	rlwinm		r5,r30,3,21,28		# channelIndex=r30
	se_add		r3,r5		# Network=r3 Network=r3
	lbz		r0,5(r3)		# Network=r3
	se_cmpi		r0,2
	bc		0,2,.L506	# ne
#         {
#             /* Notify ComM, BswM about the state change. Set Trcv mode. */
#             (void) LinSM_SetLinMode(channelIndex, LINSM_NO_COM, TRUE);
	.d2line		93
.Llo6:
	rlwinm		r3,r30,0,24,31		# Network=r3 channelIndex=r30
	diab.li		r4,2
	diab.li		r5,1
	bl		LinSM_SetLinMode
	b		.L505
.L506:
#         }
#         else if((FALSE == Success) && (LINSM_FULL_COM == LinSM_Interface_p[channelIndex].LinSM_CrntMode))
	.d2line		95
	rlwinm		r31,r31,0,24,31		# Success=r31 Success=r31
	se_cmpi		r31,0		# Success=r31
	bc		0,2,.L508	# ne
.Llo12:
	lis		r3,LinSM_Interface_p@ha		# Network=r3
.Llo7:
	lwz		r3,LinSM_Interface_p@l(r3)		# Network=r3 Network=r3
	rlwinm		r5,r30,3,21,28		# channelIndex=r30
	se_add		r3,r5		# Network=r3 Network=r3
	lbz		r0,5(r3)		# Network=r3
	se_cmpi		r0,1
	bc		0,2,.L508	# ne
#         {
#             /* Notify ComM, BswM about the state change. Set Trcv mode. */
#             (void) LinSM_SetLinMode(channelIndex, LINSM_FULL_COM, TRUE);
	.d2line		98
.Llo8:
	rlwinm		r3,r30,0,24,31		# Network=r3 channelIndex=r30
	diab.li		r4,1
	diab.li		r5,1
	bl		LinSM_SetLinMode
	b		.L505
.L508:
#         }
#         else
#         {
#             /* Enter into the critical area */
#             SchM_Enter_LinSM_ExclusiveArea0();
	.d2line		103
	bl		SchM_Enter_LinSM_ExclusiveArea0
# 
#             /* Re-set the timer settings */
#             LinSM_Interface_p[channelIndex].LinSM_TimerVal_u16 = 0U;
	.d2line		106
	diab.li		r0,0
	lis		r3,LinSM_Interface_p@ha		# Network=r3
.Llo9:
	lwz		r4,LinSM_Interface_p@l(r3)		# Network=r3
	rlwinm		r5,r30,3,21,28		# channelIndex=r30
	se_add		r4,r5
	sth		r0,6(r4)
#             LinSM_Interface_p[channelIndex].LinSM_StartTimer_b = FALSE;
	.d2line		107
	lwz		r4,LinSM_Interface_p@l(r3)		# Network=r3
	se_add		r4,r5
	stb		r0,2(r4)
# 
#             /* Set the state of Lin State Manager */
#             LinSM_Interface_p[channelIndex].LinSM_CrntMode = LINSM_FULL_COM;
	.d2line		110
	diab.li		r0,1
	lwz		r3,LinSM_Interface_p@l(r3)		# Network=r3 Network=r3
	se_add		r5,r3		# Network=r3
	stb		r0,5(r5)
# 
#             /* Exit from the critical area */
#             SchM_Exit_LinSM_ExclusiveArea0();
	.d2line		113
	bl		SchM_Exit_LinSM_ExclusiveArea0
# 
#             /* Notify the upper layer about the state change, DO NOT set Trcv, it is already set  */
#             (void) LinSM_SetLinMode(channelIndex, LINSM_FULL_COM, FALSE);
	.d2line		116
.Llo10:
	rlwinm		r3,r30,0,24,31		# Network=r3 channelIndex=r30
	diab.li		r4,1
	diab.li		r5,0
	bl		LinSM_SetLinMode
.L505:
#         }
#     }
# }/* End of LinSM_WakeupConfirmation() */
	.d2line		119
	.d2epilogue_begin
.Llo13:
	lmw		r30,24(r1)		# offset r1+24  0x18
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
.L516:
	.type		LinSM_WakeupConfirmation,@function
	.size		LinSM_WakeupConfirmation,.-LinSM_WakeupConfirmation
# Number of nodes = 131

# Allocations for LinSM_WakeupConfirmation
#	?a4		Network
#	?a5		Success
#	?a6		channelIndex

# Allocations for module
	.section	.text_vle
	.0byte		.L528
	.section	.text_vle
#$$ld
.L5:
.L534:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_Types.h"
.L529:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\inc\\LinSM_Private.h"
.L517:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_WakeUpConfirmation.c"
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
	.uleb128	9
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_WakeUpConfirmation.c"
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
.L518:
	.sleb128	2
	.4byte		.L514-.L2
	.byte		"LinSM_WakeupConfirmation"
	.byte		0
	.4byte		.L517
	.uleb128	50
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L515
	.4byte		.L516
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L517
	.uleb128	50
	.uleb128	24
	.byte		"Network"
	.byte		0
	.4byte		.L519
	.4byte		.L522
	.sleb128	3
	.4byte		.L517
	.uleb128	50
	.uleb128	24
	.byte		"Success"
	.byte		0
	.4byte		.L523
	.4byte		.L524
	.section	.debug_info,,n
.L525:
	.sleb128	4
	.4byte		.L517
	.uleb128	57
	.uleb128	41
	.byte		"channelIndex"
	.byte		0
	.4byte		.L526
	.4byte		.L527
	.section	.debug_info,,n
	.sleb128	0
.L514:
	.section	.debug_info,,n
.L528:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L529
	.uleb128	195
	.uleb128	71
	.byte		"LinSM_Interface_p"
	.byte		0
	.4byte		.L530
	.section	.debug_info,,n
	.section	.debug_info,,n
.L533:
	.sleb128	6
	.4byte		.L534
	.uleb128	248
	.uleb128	1
	.4byte		.L535-.L2
	.uleb128	8
	.section	.debug_info,,n
.L306:
	.sleb128	7
	.byte		"LinSM_RqConfrmState"
	.byte		0
	.4byte		.L520
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L307:
	.sleb128	7
	.byte		"LinSM_RequestType_u8"
	.byte		0
	.4byte		.L520
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L308:
	.sleb128	7
	.byte		"LinSM_StartTimer_b"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L309:
	.sleb128	7
	.byte		"LinSM_ReqScheduleRef"
	.byte		0
	.4byte		.L536
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L310:
	.sleb128	7
	.byte		"LinSM_CrntScheduleRef"
	.byte		0
	.4byte		.L536
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L311:
	.sleb128	7
	.byte		"LinSM_CrntMode"
	.byte		0
	.4byte		.L537
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L312:
	.sleb128	7
	.byte		"LinSM_TimerVal_u16"
	.byte		0
	.4byte		.L538
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L535:
	.section	.debug_info,,n
.L521:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L520:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L521
.L519:
	.sleb128	9
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L520
.L523:
	.sleb128	9
	.byte		"boolean"
	.byte		0
	.4byte		.L521
	.section	.debug_info,,n
.L526:
	.sleb128	10
	.4byte		.L519
.L532:
	.sleb128	9
	.byte		"LinSMInterfaceType_t"
	.byte		0
	.4byte		.L533
	.section	.debug_info,,n
.L531:
	.sleb128	11
	.4byte		.L532
.L530:
	.sleb128	10
	.4byte		.L531
.L536:
	.sleb128	9
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L520
.L537:
	.sleb128	9
	.byte		"LinSM_ModeType"
	.byte		0
	.4byte		.L520
.L539:
	.sleb128	8
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L538:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L539
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L522:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locend
.L524:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo11),4
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo12),31
	.d2locend
.L527:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo13),30
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinSM_WakeupConfirmation"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "LinSM_GetChannelIndex","LinSM_SetLinMode","SchM_Enter_LinSM_ExclusiveArea0","SchM_Exit_LinSM_ExclusiveArea0"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM_WakeUpConfirmation.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM_WakeUpConfirmation.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM_WakeUpConfirmation.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM_WakeUpConfirmation.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM_WakeUpConfirmation.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM_WakeUpConfirmation.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinSM\ssc\make\..\src\LinSM_WakeUpConfirmation.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
