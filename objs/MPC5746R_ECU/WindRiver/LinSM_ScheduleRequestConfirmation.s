#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinSM_ScheduleRequestConfirmation.c"
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
# FUNC(void, LINSM_CODE) LinSM_ScheduleRequestConfirmation
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_ScheduleRequestConfirmation.c"
        .d2line         47,24
#$$ld
.L508:

#$$bf	LinSM_ScheduleRequestConfirmation,interprocedural,rasave,nostackparams
	.globl		LinSM_ScheduleRequestConfirmation
	.d2_cfa_start __cie
LinSM_ScheduleRequestConfirmation:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r4		# Schedule=r31 Schedule=r4
	.d2prologue_end
# (
#     VAR(NetworkHandleType, AUTOMATIC) Network,
#     VAR(LinIf_SchHandleType, AUTOMATIC)  Schedule
# )
# {
#     /* Map the correct channel from LinSM configuration */
#     CONST(NetworkHandleType, AUTOMATIC) NetworkIndex = LinSM_GetChannelIndex(Network);
	.d2line		54
.Llo7:
	rlwinm		r3,r3,0,24,31		# Network=r3 Network=r3
.Llo2:
	bl		LinSM_GetChannelIndex
	mr		r30,r3		# NetworkIndex=r30 NetworkIndex=r3
# 
#     /* Detect the Development Error Tracer */
# #if( STD_ON == LINSM_DEV_ERROR_DETECT )
#     /* Check whether module is initialized */
#     if( LINSM_UNINIT == LinSM_InitState )
#     {
#         (void)Det_ReportError(LINSM_MODULE_ID,
#                 LINSM_INSTANCE_ID,
#                 LINSM_SID_SCH_RQ_CONF,
#                 LINSM_E_UNINIT );
#     }
#     /* Check whether Channel is valid */
#     else if( NetworkIndex >= LinSM_NoOfChannel )
#     {
#         (void)Det_ReportError(LINSM_MODULE_ID,
#                 LINSM_INSTANCE_ID,
#                 LINSM_SID_SCH_RQ_CONF,
#                 LINSM_E_NONEXISTENT_NETWORK );
#     }
#     else
# #endif
#     {
#         BswM_LinSM_CurrentSchedule(LinSM_ChannelMap_p[NetworkIndex], Schedule);
	.d2line		77
	lis		r3,LinSM_ChannelMap_p@ha		# Network=r3
.Llo3:
	lwz		r3,LinSM_ChannelMap_p@l(r3)		# Network=r3 Network=r3
	rlwinm		r0,r30,0,24,31		# NetworkIndex=r30
	lbzx		r3,r3,r0		# Network=r3 Network=r3
.Llo4:
	rlwinm		r4,r31,0,24,31		# Schedule=r31
	bl		BswM_LinSM_CurrentSchedule
# 
#         /* Enter into the critical area */
#         SchM_Enter_LinSM_ExclusiveArea0();
	.d2line		80
	bl		SchM_Enter_LinSM_ExclusiveArea0
# 
#         /* Set the current Schedule to Schedule*/
#         LinSM_Interface_p[NetworkIndex].LinSM_CrntScheduleRef = Schedule;
	.d2line		83
	lis		r3,LinSM_Interface_p@ha		# Network=r3
.Llo5:
	lwz		r4,LinSM_Interface_p@l(r3)		# Network=r3
	rlwinm		r0,r30,3,21,28		# NetworkIndex=r30
	add		r30,r4,r0		# NetworkIndex=r30
	stb		r31,4(r30)		# NetworkIndex=r30 Schedule=r31
# 
#         /* Set the requested schedule table index */
#         LinSM_Interface_p[NetworkIndex].LinSM_ReqScheduleRef = Schedule;
	.d2line		86
	lwz		r30,LinSM_Interface_p@l(r3)		# NetworkIndex=r30 Network=r3
	se_add		r30,r0		# NetworkIndex=r30 NetworkIndex=r30
	stb		r31,3(r30)		# NetworkIndex=r30 Schedule=r31
# 
#         /* Re-set the timer settings */
#         LinSM_Interface_p[NetworkIndex].LinSM_TimerVal_u16 = 0U;
	.d2line		89
	diab.li		r5,0
	lwz		r30,LinSM_Interface_p@l(r3)		# NetworkIndex=r30 Network=r3
	se_add		r30,r0		# NetworkIndex=r30 NetworkIndex=r30
	sth		r5,6(r30)		# NetworkIndex=r30
#         LinSM_Interface_p[NetworkIndex].LinSM_StartTimer_b = FALSE;
	.d2line		90
	lwz		r30,LinSM_Interface_p@l(r3)		# NetworkIndex=r30 Network=r3
	se_add		r30,r0		# NetworkIndex=r30 NetworkIndex=r30
	stb		r5,2(r30)		# NetworkIndex=r30
# 
#         /* Exit from the critical area */
#         SchM_Exit_LinSM_ExclusiveArea0();
	.d2line		93
	bl		SchM_Exit_LinSM_ExclusiveArea0
#     }
# }/* End of LinSM_ScheduleRequestConfirmation() */
	.d2line		95
	.d2epilogue_begin
.Llo6:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo8:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L509:
	.type		LinSM_ScheduleRequestConfirmation,@function
	.size		LinSM_ScheduleRequestConfirmation,.-LinSM_ScheduleRequestConfirmation
# Number of nodes = 67

# Allocations for LinSM_ScheduleRequestConfirmation
#	?a4		Network
#	?a5		Schedule
#	?a6		NetworkIndex

# Allocations for module
	.section	.text_vle
	.0byte		.L521
	.section	.text_vle
#$$ld
.L5:
.L530:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_Types.h"
.L522:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\inc\\LinSM_Private.h"
.L510:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_ScheduleRequestConfirmation.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_ScheduleRequestConfirmation.c"
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
.L511:
	.sleb128	2
	.4byte		.L507-.L2
	.byte		"LinSM_ScheduleRequestConfirmation"
	.byte		0
	.4byte		.L510
	.uleb128	47
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L508
	.4byte		.L509
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L510
	.uleb128	47
	.uleb128	24
	.byte		"Network"
	.byte		0
	.4byte		.L512
	.4byte		.L515
	.sleb128	3
	.4byte		.L510
	.uleb128	47
	.uleb128	24
	.byte		"Schedule"
	.byte		0
	.4byte		.L516
	.4byte		.L517
	.section	.debug_info,,n
.L518:
	.sleb128	4
	.4byte		.L510
	.uleb128	54
	.uleb128	41
	.byte		"NetworkIndex"
	.byte		0
	.4byte		.L519
	.4byte		.L520
	.section	.debug_info,,n
	.sleb128	0
.L507:
	.section	.debug_info,,n
.L521:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L522
	.uleb128	195
	.uleb128	71
	.byte		"LinSM_Interface_p"
	.byte		0
	.4byte		.L523
	.section	.debug_info,,n
.L527:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L522
	.uleb128	200
	.uleb128	71
	.byte		"LinSM_ChannelMap_p"
	.byte		0
	.4byte		.L528
	.section	.debug_info,,n
.L526:
	.sleb128	6
	.4byte		.L530
	.uleb128	248
	.uleb128	1
	.4byte		.L531-.L2
	.uleb128	8
	.section	.debug_info,,n
.L306:
	.sleb128	7
	.byte		"LinSM_RqConfrmState"
	.byte		0
	.4byte		.L513
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L307:
	.sleb128	7
	.byte		"LinSM_RequestType_u8"
	.byte		0
	.4byte		.L513
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L308:
	.sleb128	7
	.byte		"LinSM_StartTimer_b"
	.byte		0
	.4byte		.L532
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L309:
	.sleb128	7
	.byte		"LinSM_ReqScheduleRef"
	.byte		0
	.4byte		.L516
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L310:
	.sleb128	7
	.byte		"LinSM_CrntScheduleRef"
	.byte		0
	.4byte		.L516
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L311:
	.sleb128	7
	.byte		"LinSM_CrntMode"
	.byte		0
	.4byte		.L533
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L312:
	.sleb128	7
	.byte		"LinSM_TimerVal_u16"
	.byte		0
	.4byte		.L534
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L531:
	.section	.debug_info,,n
.L514:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L513:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L514
.L512:
	.sleb128	9
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L513
.L516:
	.sleb128	9
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L513
	.section	.debug_info,,n
.L519:
	.sleb128	10
	.4byte		.L512
.L525:
	.sleb128	9
	.byte		"LinSMInterfaceType_t"
	.byte		0
	.4byte		.L526
	.section	.debug_info,,n
.L524:
	.sleb128	11
	.4byte		.L525
.L523:
	.sleb128	10
	.4byte		.L524
.L529:
	.sleb128	11
	.4byte		.L519
.L528:
	.sleb128	10
	.4byte		.L529
.L532:
	.sleb128	9
	.byte		"boolean"
	.byte		0
	.4byte		.L514
.L533:
	.sleb128	9
	.byte		"LinSM_ModeType"
	.byte		0
	.4byte		.L513
.L535:
	.sleb128	8
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L534:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L535
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L515:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L517:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo8),31
	.d2locend
.L520:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo8),30
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinSM_ScheduleRequestConfirmation"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "BswM_LinSM_CurrentSchedule","LinSM_GetChannelIndex","SchM_Enter_LinSM_ExclusiveArea0","SchM_Exit_LinSM_ExclusiveArea0"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM_ScheduleRequestConfirmation.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM_ScheduleRequestConfirmation.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM_ScheduleRequestConfirmation.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM_ScheduleRequestConfirmation.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM_ScheduleRequestConfirmation.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM_ScheduleRequestConfirmation.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinSM\ssc\make\..\src\LinSM_ScheduleRequestConfirmation.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
