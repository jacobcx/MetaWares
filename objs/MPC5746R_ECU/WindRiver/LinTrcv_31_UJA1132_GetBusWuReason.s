#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinTrcv_31_UJA1132_GetBusWuReason.c"
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
# FUNC(Std_ReturnType, LINTRCV_CODE) LINTRCV_31_UJA1132_GET_BUS_WU_REASON
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L510:
	.section	.invalid_TEXT,,c
#$$ld
.L506:
	.0byte		.L504
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132_GetBusWuReason.c"
        .d2line         64,36
#$$ld
.L513:

#$$bf	LinTrcv_31_UJA1132_GetBusWuReason,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		LinTrcv_31_UJA1132_GetBusWuReason
	.d2_cfa_start __cie
LinTrcv_31_UJA1132_GetBusWuReason:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r4		# Reason=r4 Reason=r4
	.d2prologue_end
# (
#  VAR(uint8, AUTOMATIC) LinNetwork,
#  P2VAR(LinTrcv_TrcvWakeupReasonType, AUTOMATIC, LINTRCV_APPL_DATA)Reason
# )
# {
#    VAR (Std_ReturnType, AUTOMATIC) ReturnValue;   /* PRQA S 3204*/ 
# #if(STD_ON == LINTRCV_31_UJA1132_WU_SUPPORT)
# 
#     CONST (uint8, AUTOMATIC) LinNetworkIndex = LINTRCV_GET_CHANNEL_INDEX(LinNetwork); 
#     
#     P2CONST(LinTrcv_31_UJA1132_ChannelConfig, AUTOMATIC, LINTRCV_VAR_FAST)ChannelConfigPtr ;
# 
# #if (STD_ON == LINTRCV_31_UJA1132_DEV_ERROR_DETECT)
# 
#     /* Check for any Development Errors */
#     ReturnValue = LinTrcv_31_UJA1132_GetBusWuReasonDECheck (LinNetworkIndex, Reason);
#     if (E_OK == ReturnValue)
#     {
# #endif /* end  #if (STD_ON == LINTRCV_31_UJA1132_DEV_ERROR_DETECT ) */
# 
#     
#         ChannelConfigPtr = &(LINTRCV_31_UJA1132_CONFIG_P[LinNetworkIndex]); /* PRQA S 2824 */ /* Typically caused by our current pattern for PB structures */ 
#      
#         if(STD_LOW == Dio_ReadChannel(ChannelConfigPtr -> RxDioPin))/* PRQA S 2814 */ /* Typically caused by our current pattern for PB structures */
#          {
#            if (TRUE == ChannelConfigPtr->IsWuSupported )
#             {
#             /* Set the Wakeup Reason to LINTRCV_WU_BY_BUS */
#                 *Reason = LINTRCV_WU_BY_BUS; /* PRQA S 2814  */ /* Typically caused by our current pattern for PB structures */
#                  ReturnValue = E_OK;              
#                 
#             }
#             else /* If wakeup is not supported */
#             {
#                 /* Set the Wakeup Reason to LINTRCV_WU_NOT_SUPPORTED */
#                 *Reason = LINTRCV_WU_NOT_SUPPORTED; /* PRQA S 2814  */ /* Typically caused by our current pattern for PB structures */
#                  ReturnValue = E_NOT_OK;
#             }
#          }
#         else
#          {
#             *Reason = LINTRCV_WU_INTERNALLY; /* PRQA S 2814  */ /* Typically caused by our current pattern for PB structures */
#             ReturnValue = E_OK;
#          }
#                 
#        
# #if (STD_ON == LINTRCV_31_UJA1132_DEV_ERROR_DETECT )
#     }
#     else
#     {
#         /* Do Nothing */
#     }
# #endif    
# #else    
#     
#     /* Set the value as wakeup is not supported */
#     *Reason = LINTRCV_WU_NOT_SUPPORTED;  /* PRQA S 2814  */ /* Typically caused by our current pattern for PB structures */
	.d2line		121
	diab.li		r3,1
	stw		r3,0(r4)		# Reason=r4
#     ReturnValue = E_OK;
	.d2line		122
.Llo3:
	diab.li		r3,0		# ReturnValue=r3
# 
# #endif /*end #if(LINTRCV_WAKEUP_BY_POLLING== LINTRCV_31_UJA1132_WU_SUPPORT)*/
#  
#     return (ReturnValue);
# }
	.d2line		127
	.d2epilogue_begin
.Llo4:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo2:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L514:
	.type		LinTrcv_31_UJA1132_GetBusWuReason,@function
	.size		LinTrcv_31_UJA1132_GetBusWuReason,.-LinTrcv_31_UJA1132_GetBusWuReason
# Number of nodes = 9

# Allocations for LinTrcv_31_UJA1132_GetBusWuReason
#	not allocated	LinNetwork
#	?a4		Reason
#	?a5		ReturnValue

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L526:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L507:
.L515:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132_GetBusWuReason.c"
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
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	4
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
	.uleb128	5
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
	.uleb128	6
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
	.uleb128	7
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132_GetBusWuReason.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L504:
	.4byte		.L505-.L503
.L503:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L509-.L504
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132_GetBusWuReason.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L506
	.4byte		.L507
	.4byte		.L510
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L519:
	.sleb128	2
	.4byte		.L512-.L504
	.byte		"LinTrcv_31_UJA1132_GetBusWuReason"
	.byte		0
	.4byte		.L515
	.uleb128	64
	.uleb128	36
	.4byte		.L516
	.byte		0x1
	.byte		0x1
	.4byte		.L513
	.4byte		.L514
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L515
	.uleb128	64
	.uleb128	36
	.byte		"LinNetwork"
	.byte		0
	.4byte		.L517
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	4
	.4byte		.L515
	.uleb128	64
	.uleb128	36
	.byte		"Reason"
	.byte		0
	.4byte		.L520
	.4byte		.L523
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L524:
	.sleb128	5
	.4byte		.L515
	.uleb128	70
	.uleb128	36
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L516
	.4byte		.L525
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L512:
	.section	.debug_info,,n
.L522:
	.sleb128	6
	.4byte		.L526
	.uleb128	49
	.uleb128	13
	.4byte		.L527-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"LINTRCV_WU_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"LINTRCV_WU_NOT_SUPPORTED"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"LINTRCV_WU_BY_BUS"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"LINTRCV_WU_BY_PIN"
	.byte		0
	.sleb128	3
	.sleb128	7
	.byte		"LINTRCV_WU_INTERNALLY"
	.byte		0
	.sleb128	4
	.sleb128	7
	.byte		"LINTRCV_WU_RESET"
	.byte		0
	.sleb128	5
	.sleb128	7
	.byte		"LINTRCV_WU_POWER_ON"
	.byte		0
	.sleb128	6
	.sleb128	0
.L527:
	.section	.debug_info,,n
.L518:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L517:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L518
.L516:
	.sleb128	9
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L517
.L521:
	.sleb128	9
	.byte		"LinTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L522
	.section	.debug_info,,n
.L520:
	.sleb128	10
	.4byte		.L521
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L509:
	.sleb128	0
.L505:

	.section	.debug_loc,,n
	.align	0
.L523:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),4
	.d2locend
.L525:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinTrcv_31_UJA1132_GetBusWuReason"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_GetBusWuReason.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_GetBusWuReason.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_GetBusWuReason.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_GetBusWuReason.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_GetBusWuReason.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_GetBusWuReason.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinTrcv\ssc\target\UJA1132\make\..\src\LinTrcv_31_UJA1132_GetBusWuReason.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
