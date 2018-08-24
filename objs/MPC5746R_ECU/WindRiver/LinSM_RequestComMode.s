#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinSM_RequestComMode.c"
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
# FUNC(Std_ReturnType, LINSM_CODE) LinSM_RequestComMode
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_RequestComMode.c"
        .d2line         49,34
#$$ld
.L523:

#$$bf	LinSM_RequestComMode,interprocedural,rasave,nostackparams
	.globl		LinSM_RequestComMode
	.d2_cfa_start __cie
LinSM_RequestComMode:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# Network=r0
	.d2_cfa_offset    108,-1
	mr		r31,r4		# Mode=r31 Mode=r4
	.d2prologue_end
# (
#   VAR(NetworkHandleType, AUTOMATIC) Network,
#   VAR(ComM_ModeType, AUTOMATIC) Mode
# )
# {
#     /* Variable for return value of the function */
#     VAR(Std_ReturnType, AUTOMATIC) Return = E_NOT_OK;
	.d2line		56
.Llo9:
	diab.li		r30,1		# Return=r30
# 
#     /* Map the correct channel from LinSM configuration */
#     CONST(NetworkHandleType, AUTOMATIC) NetworkIndex = LinSM_GetChannelIndex(Network);
	.d2line		59
.Llo10:
	rlwinm		r3,r3,0,24,31		# Network=r3 Network=r3
.Llo2:
	bl		LinSM_GetChannelIndex
.Llo20:
	mr		r0,r3		# NetworkIndex=r0 NetworkIndex=r3
# 
#     /* Detect the Development Error Tracer */
# #if( STD_ON == LINSM_DEV_ERROR_DETECT )
#     /* Check whether the module is initialized */
#     if(LINSM_UNINIT == LinSM_InitState)
#     {
#        (void)Det_ReportError(LINSM_MODULE_ID,
#                LINSM_INSTANCE_ID,
#                LINSM_SID_REQ_COM_MODE,
#                LINSM_E_UNINIT );
#     }
#     /* Check whether the Channel is valid */
#     else if(NetworkIndex >= LinSM_NoOfChannel)
#     {
#         (void)Det_ReportError(LINSM_MODULE_ID,
#                 LINSM_INSTANCE_ID,
#                 LINSM_SID_REQ_COM_MODE,
#                 LINSM_E_NONEXISTENT_NETWORK );
#     }
#     else
# #endif
#     {
#         /*if current mode is same as requested mode
#          or requested mode is COMM_SILENT_COMMUNICATION
#          or another request is in process on the same network
#          function shall return directly with E_NOT_OK */
#         if((COMM_SILENT_COMMUNICATION == Mode)
	.d2line		86
	rlwinm		r4,r31,0,24,31		# Mode=r31
	se_cmpi		r4,1
	bc		1,2,.L507	# eq
.Llo21:
	lis		r3,LinSM_Interface_p@ha		# Network=r3
.Llo3:
	lwz		r3,LinSM_Interface_p@l(r3)		# Network=r3 Network=r3
	rlwinm		r4,r0,3,21,28		# NetworkIndex=r0
	se_add		r3,r4		# Network=r3 Network=r3
	lbz		r3,2(r3)		# Network=r3 Network=r3
	se_cmpi		r3,1		# Network=r3
	bc		1,2,.L507	# eq
# #if( STD_ON == LINSM_ENABLE_CONFIRMATIONS )
#                 || (TRUE == LinSM_Interface_p[NetworkIndex].LinSM_StartTimer_b)
# #endif
#                 )
#         {
#             /* Leave Return as E_NOT_OK */
#         }
#         else
#         {
#             if(COMM_FULL_COMMUNICATION == Mode) /* requested mode */
	.d2line		96
.Llo4:
	rlwinm		r4,r31,0,24,31		# Mode=r31
	se_cmpi		r4,2
	bc		0,2,.L508	# ne
#             {
#                 if(LINSM_FULL_COM != LinSM_Interface_p[NetworkIndex].LinSM_CrntMode)
	.d2line		98
	lis		r3,LinSM_Interface_p@ha		# Network=r3
.Llo5:
	lwz		r3,LinSM_Interface_p@l(r3)		# Network=r3 Network=r3
	rlwinm		r4,r0,3,21,28		# NetworkIndex=r0
	se_add		r3,r4		# Network=r3 Network=r3
	lbz		r3,5(r3)		# Network=r3 Network=r3
	se_cmpi		r3,1		# Network=r3
	bc		1,2,.L509	# eq
#                 {
#                     /* Execute the LinIf interface */
#                     Return = LinSM_InterfaceLinIf(NetworkIndex, LINSM_WAKEUP_REQ);
	.d2line		101
.Llo6:
	rlwinm		r3,r0,0,24,31		# Network=r3 NetworkIndex=r0
	diab.li		r4,1
	bl		LinSM_InterfaceLinIf
.Llo13:
	mr		r30,r3		# Return=r30 Return=r3
	b		.L507
.L509:
#                 }
#                 else
#                 {
#                     Return = E_OK; /* Dev_LINSM0210 */
	.d2line		105
.Llo14:
	diab.li		r30,0		# Return=r30
.Llo15:
	b		.L507
.L508:
#                 }
#             }
#             else if(COMM_NO_COMMUNICATION == Mode)
	.d2line		108
.Llo11:
	rlwinm		r31,r31,0,24,31		# Mode=r31 Mode=r31
	se_cmpi		r31,0		# Mode=r31
	bc		0,2,.L507	# ne
#             {
#                 if(LINSM_NO_COM != LinSM_Interface_p[NetworkIndex].LinSM_CrntMode)
	.d2line		110
.Llo12:
	lis		r3,LinSM_Interface_p@ha		# Network=r3
.Llo7:
	lwz		r4,LinSM_Interface_p@l(r3)		# Network=r3
	rlwinm		r3,r0,3,21,28		# Network=r3 NetworkIndex=r0
	se_add		r3,r4		# Network=r3 Network=r3
	lbz		r3,5(r3)		# Network=r3 Network=r3
	se_cmpi		r3,2		# Network=r3
	bc		1,2,.L513	# eq
#                 {
#                     /* Execute the LinIf interface */
#                     Return = LinSM_InterfaceLinIf(NetworkIndex, LINSM_SLEEP_REQ);
	.d2line		113
.Llo8:
	rlwinm		r3,r0,0,24,31		# Network=r3 NetworkIndex=r0
	diab.li		r4,0
	bl		LinSM_InterfaceLinIf
.Llo16:
	mr		r30,r3		# Return=r30 Return=r3
	b		.L507
.L513:
#                 }
#                 else
#                 {
#                     Return = E_OK; /* Dev_LINSM0210 */
	.d2line		117
.Llo17:
	diab.li		r30,0		# Return=r30
.L507:
#                 }
#             }
#             else
#             {
# #if( STD_ON == LINSM_DEV_ERROR_DETECT )
#                (void)Det_ReportError(LINSM_MODULE_ID,
#                        LINSM_INSTANCE_ID,
#                        LINSM_SID_REQ_COM_MODE,
#                        LINSM_E_PARAMETER );
# #endif
#             }
#         }
#     }
# 
#     /* Return the function state */
#     return Return;
	.d2line		133
.Llo18:
	rlwinm		r3,r30,0,24,31		# Network=r3 Return=r30
# }/* End of LinSM_RequestComMode() */
	.d2line		134
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo19:
	lwz		r0,36(r1)		# Network=r0
	mtspr		lr,r0		# Network=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L524:
	.type		LinSM_RequestComMode,@function
	.size		LinSM_RequestComMode,.-LinSM_RequestComMode
# Number of nodes = 87

# Allocations for LinSM_RequestComMode
#	?a4		Network
#	?a5		Mode
#	?a6		Return
#	?a7		NetworkIndex

# Allocations for module
	.section	.text_vle
	.0byte		.L539
	.section	.text_vle
#$$ld
.L5:
.L545:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_Types.h"
.L540:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\inc\\LinSM_Private.h"
.L525:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_RequestComMode.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinSM\\ssc\\make\\..\\src\\LinSM_RequestComMode.c"
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
.L529:
	.sleb128	2
	.4byte		.L522-.L2
	.byte		"LinSM_RequestComMode"
	.byte		0
	.4byte		.L525
	.uleb128	49
	.uleb128	34
	.4byte		.L526
	.byte		0x1
	.byte		0x1
	.4byte		.L523
	.4byte		.L524
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L525
	.uleb128	49
	.uleb128	34
	.byte		"Network"
	.byte		0
	.4byte		.L530
	.4byte		.L531
	.sleb128	3
	.4byte		.L525
	.uleb128	49
	.uleb128	34
	.byte		"Mode"
	.byte		0
	.4byte		.L532
	.4byte		.L533
	.section	.debug_info,,n
.L534:
	.sleb128	4
	.4byte		.L525
	.uleb128	56
	.uleb128	36
	.byte		"Return"
	.byte		0
	.4byte		.L526
	.4byte		.L535
.L536:
	.sleb128	4
	.4byte		.L525
	.uleb128	59
	.uleb128	41
	.byte		"NetworkIndex"
	.byte		0
	.4byte		.L537
	.4byte		.L538
	.section	.debug_info,,n
	.sleb128	0
.L522:
	.section	.debug_info,,n
.L539:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L540
	.uleb128	195
	.uleb128	71
	.byte		"LinSM_Interface_p"
	.byte		0
	.4byte		.L541
	.section	.debug_info,,n
	.section	.debug_info,,n
.L544:
	.sleb128	6
	.4byte		.L545
	.uleb128	248
	.uleb128	1
	.4byte		.L546-.L2
	.uleb128	8
	.section	.debug_info,,n
.L306:
	.sleb128	7
	.byte		"LinSM_RqConfrmState"
	.byte		0
	.4byte		.L527
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L307:
	.sleb128	7
	.byte		"LinSM_RequestType_u8"
	.byte		0
	.4byte		.L527
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L308:
	.sleb128	7
	.byte		"LinSM_StartTimer_b"
	.byte		0
	.4byte		.L547
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L309:
	.sleb128	7
	.byte		"LinSM_ReqScheduleRef"
	.byte		0
	.4byte		.L548
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L310:
	.sleb128	7
	.byte		"LinSM_CrntScheduleRef"
	.byte		0
	.4byte		.L548
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L311:
	.sleb128	7
	.byte		"LinSM_CrntMode"
	.byte		0
	.4byte		.L549
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L312:
	.sleb128	7
	.byte		"LinSM_TimerVal_u16"
	.byte		0
	.4byte		.L550
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L546:
	.section	.debug_info,,n
.L528:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L527:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L528
.L526:
	.sleb128	9
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L527
.L530:
	.sleb128	9
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L527
.L532:
	.sleb128	9
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L527
	.section	.debug_info,,n
.L537:
	.sleb128	10
	.4byte		.L530
.L543:
	.sleb128	9
	.byte		"LinSMInterfaceType_t"
	.byte		0
	.4byte		.L544
	.section	.debug_info,,n
.L542:
	.sleb128	11
	.4byte		.L543
.L541:
	.sleb128	10
	.4byte		.L542
.L547:
	.sleb128	9
	.byte		"boolean"
	.byte		0
	.4byte		.L528
.L548:
	.sleb128	9
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L527
.L549:
	.sleb128	9
	.byte		"LinSM_ModeType"
	.byte		0
	.4byte		.L527
.L551:
	.sleb128	8
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L550:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L551
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L531:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L533:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo9),4
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo6),31
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),31
	.d2locend
.L535:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo6),30
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo8),30
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),30
	.d2locend
.L538:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo13),0
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo16),0
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinSM_RequestComMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "LinSM_GetChannelIndex","LinSM_InterfaceLinIf"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM_RequestComMode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM_RequestComMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM_RequestComMode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinSM_RequestComMode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinSM_RequestComMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinSM_RequestComMode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinSM\ssc\make\..\src\LinSM_RequestComMode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
