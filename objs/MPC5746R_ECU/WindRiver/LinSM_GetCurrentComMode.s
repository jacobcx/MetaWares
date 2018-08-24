#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinSM_GetCurrentComMode.c"
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
# FUNC(Std_ReturnType, LINSM_CODE) LinSM_GetCurrentComMode
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_GetCurrentComMode.c"
        .d2line         46,34
#$$ld
.L517:

#$$bf	LinSM_GetCurrentComMode,interprocedural,rasave,nostackparams
	.globl		LinSM_GetCurrentComMode
	.d2_cfa_start __cie
LinSM_GetCurrentComMode:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# Network=r0
	.d2_cfa_offset    108,-1
	mr		r31,r4		# Mode=r31 Mode=r4
	.d2prologue_end
# (
#    VAR(NetworkHandleType, AUTOMATIC) Network,
#    P2VAR(ComM_ModeType, AUTOMATIC, LINSM_APPL_CONST)Mode
# )
# {
# #if( STD_ON == LINSM_DEV_ERROR_DETECT )
#     /* Return value of the function */
#     VAR (Std_ReturnType, AUTOMATIC) Return = E_OK;
# #endif
# 
#     /* reuse function paramter to store channel index */
#     Network = LinSM_GetChannelIndex(Network);
	.d2line		58
	rlwinm		r3,r3,0,24,31		# Network=r3 Network=r3
.Llo2:
	bl		LinSM_GetChannelIndex
.Llo3:
	mr		r0,r3		# Network=r0 Network=r3
# 
#     if( LINSM_UNINIT == LinSM_InitState )
	.d2line		60
	lis		r3,LinSM_InitState@ha		# Network=r3
.Llo4:
	lbz		r3,LinSM_InitState@l(r3)		# Network=r3 Network=r3
.Llo5:
	se_cmpi		r3,0		# Network=r3
	bc		0,2,.L506	# ne
#     {
# #if( STD_ON == LINSM_DEV_ERROR_DETECT )
#         (void)Det_ReportError( (uint16)LINSM_MODULE_ID,
#                 (uint8)LINSM_INSTANCE_ID,
#                 (uint8)LINSM_SID_GET_CUR_MODE,
#                 (uint8)LINSM_E_UNINIT );
# 
#         Return = E_NOT_OK;
# #endif
# 
#         *Mode = COMM_NO_COMMUNICATION;
	.d2line		71
.Llo15:
	diab.li		r3,0		# Network=r3
	stb		r3,0(r31)		# Mode=r31 Network=r3
.L506:
# 
#     }
# #if( STD_ON == LINSM_DEV_ERROR_DETECT )
#     else if( Network >= LinSM_NoOfChannel )
#     {
#         (void)Det_ReportError( (uint16)LINSM_MODULE_ID,
#                 (uint8)LINSM_INSTANCE_ID,
#                 (uint8)LINSM_SID_GET_CUR_MODE,
#                 (uint8)LINSM_E_NONEXISTENT_NETWORK );
# 
#         Return = E_NOT_OK;
#     }
#     else if( NULL_PTR == Mode )
#     {
#         (void)Det_ReportError( (uint16)LINSM_MODULE_ID,
#                 (uint8)LINSM_INSTANCE_ID,
#                 (uint8)LINSM_SID_GET_CUR_MODE,
#                 (uint8)LINSM_E_PARAMETER_POINTER );
# 
#         Return = E_NOT_OK;
#     }
#     else
#     {
#         /* Do nothing */
#     }
# 
#     if( E_OK == Return )
# #endif
#     {
#         /* Get the mode of Lin State Manager */
#         switch(LinSM_Interface_p[Network].LinSM_CrntMode)
	.d2line		102
.Llo6:
	lis		r3,LinSM_Interface_p@ha		# Network=r3
.Llo7:
	lwz		r3,LinSM_Interface_p@l(r3)		# Network=r3 Network=r3
.Llo8:
	rlwinm		r0,r0,3,21,28		# Network=r0 Network=r0
.Llo9:
	se_add		r3,r0		# Network=r3 Network=r3 Network=r0
	lbz		r6,5(r3)		# Network=r3
	se_cmpi		r6,1
	bc		1,2,.L509	# eq
.Llo10:
	se_cmpi		r6,2
	bc		1,2,.L507	# eq
	b		.L508
.L507:
#         {
#             case LINSM_NO_COM:
#                 *Mode = COMM_NO_COMMUNICATION;
	.d2line		105
	diab.li		r0,0		# Network=r0
.Llo11:
	stb		r0,0(r31)		# Mode=r31 Network=r0
	b		.L508
.L509:
#             break;
#             case LINSM_FULL_COM:
#                 /* Get the mode of ComM_ModeType */
#                 *Mode = COMM_FULL_COMMUNICATION;
	.d2line		109
.Llo12:
	diab.li		r0,2		# Network=r0
.Llo13:
	stb		r0,0(r31)		# Mode=r31 Network=r0
.L508:
#                 break;
#             default:
#             break;
#         } /* PRQA S 2016*/ /* switch statement default clause is left intentionally empty */
#     }
# #if( STD_ON == LINSM_DEV_ERROR_DETECT )
#     return Return;
# #else
#     return E_OK;
	.d2line		118
.Llo14:
	diab.li		r3,0		# Network=r3
# #endif
# }/* End of LinSM_GetCurrentComMode() */
	.d2line		120
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# Network=r0
	mtspr		lr,r0		# Network=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L518:
	.type		LinSM_GetCurrentComMode,@function
	.size		LinSM_GetCurrentComMode,.-LinSM_GetCurrentComMode
# Number of nodes = 37

# Allocations for LinSM_GetCurrentComMode
#	?a4		Network
#	?a5		Mode

# Allocations for module
	.section	.text_vle
	.0byte		.L529
	.section	.text_vle
#$$ld
.L5:
.L537:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_Types.h"
.L530:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\inc\\LinSM_Private.h"
.L519:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_GetCurrentComMode.c"
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
	.uleb128	5
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
	.uleb128	6
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
	.uleb128	7
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
	.uleb128	8
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
	.uleb128	15
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_GetCurrentComMode.c"
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
.L523:
	.sleb128	2
	.4byte		.L516-.L2
	.byte		"LinSM_GetCurrentComMode"
	.byte		0
	.4byte		.L519
	.uleb128	46
	.uleb128	34
	.4byte		.L520
	.byte		0x1
	.byte		0x1
	.4byte		.L517
	.4byte		.L518
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L519
	.uleb128	46
	.uleb128	34
	.byte		"Network"
	.byte		0
	.4byte		.L524
	.4byte		.L525
	.sleb128	3
	.4byte		.L519
	.uleb128	46
	.uleb128	34
	.byte		"Mode"
	.byte		0
	.4byte		.L526
	.4byte		.L528
	.section	.debug_info,,n
	.sleb128	0
.L516:
	.section	.debug_info,,n
.L529:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L530
	.uleb128	195
	.uleb128	71
	.byte		"LinSM_Interface_p"
	.byte		0
	.4byte		.L531
	.section	.debug_info,,n
.L535:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L530
	.uleb128	243
	.uleb128	39
	.byte		"LinSM_InitState"
	.byte		0
	.4byte		.L536
	.0byte		.L535
	.section	.debug_info,,n
.L534:
	.sleb128	5
	.4byte		.L537
	.uleb128	248
	.uleb128	1
	.4byte		.L538-.L2
	.uleb128	8
	.section	.debug_info,,n
.L306:
	.sleb128	6
	.byte		"LinSM_RqConfrmState"
	.byte		0
	.4byte		.L521
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L307:
	.sleb128	6
	.byte		"LinSM_RequestType_u8"
	.byte		0
	.4byte		.L521
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L308:
	.sleb128	6
	.byte		"LinSM_StartTimer_b"
	.byte		0
	.4byte		.L539
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L309:
	.sleb128	6
	.byte		"LinSM_ReqScheduleRef"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L310:
	.sleb128	6
	.byte		"LinSM_CrntScheduleRef"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L311:
	.sleb128	6
	.byte		"LinSM_CrntMode"
	.byte		0
	.4byte		.L536
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L312:
	.sleb128	6
	.byte		"LinSM_TimerVal_u16"
	.byte		0
	.4byte		.L541
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L538:
	.section	.debug_info,,n
.L522:
	.sleb128	7
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L521:
	.sleb128	8
	.byte		"uint8"
	.byte		0
	.4byte		.L522
.L520:
	.sleb128	8
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L521
.L524:
	.sleb128	8
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L521
.L527:
	.sleb128	8
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L521
	.section	.debug_info,,n
.L526:
	.sleb128	9
	.4byte		.L527
.L533:
	.sleb128	8
	.byte		"LinSMInterfaceType_t"
	.byte		0
	.4byte		.L534
.L532:
	.sleb128	9
	.4byte		.L533
	.section	.debug_info,,n
.L531:
	.sleb128	10
	.4byte		.L532
.L536:
	.sleb128	8
	.byte		"LinSM_ModeType"
	.byte		0
	.4byte		.L521
.L539:
	.sleb128	8
	.byte		"boolean"
	.byte		0
	.4byte		.L522
.L540:
	.sleb128	8
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L521
.L542:
	.sleb128	7
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L541:
	.sleb128	8
	.byte		"uint16"
	.byte		0
	.4byte		.L542
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L525:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),0
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),0
	.d2locend
.L528:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo14),31
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinSM_GetCurrentComMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "LinSM_GetChannelIndex"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM_GetCurrentComMode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM_GetCurrentComMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM_GetCurrentComMode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM_GetCurrentComMode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM_GetCurrentComMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM_GetCurrentComMode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinSM\ssc\make\..\src\LinSM_GetCurrentComMode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
