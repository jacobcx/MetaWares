#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTrcv_31_UJA1132_GetBusWuReason.c"
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
# FUNC (Std_ReturnType, CANTRCV_31_UJA1132_CODE) CANTRCV_31_UJA1132_GETBUSWUREASON 
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L740:
	.section	.invalid_TEXT,,c
#$$ld
.L736:
	.0byte		.L734
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_GetBusWuReason.c"
        .d2line         91,48
#$$ld
.L743:

#$$bf	CanTrcv_31_UJA1132_GetBusWuReason,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		CanTrcv_31_UJA1132_GetBusWuReason
	.d2_cfa_start __cie
CanTrcv_31_UJA1132_GetBusWuReason:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r4		# Reason=r4 Reason=r4
	.d2prologue_end
# (VAR (uint8, AUTOMATIC)Transceiver , 
#         P2VAR (CanTrcv_TrcvWakeupReasonType, AUTOMATIC, CANTRCV_31_UJA1132_APPL_DATA)Reason)
# {
# 
# #if(STD_ON == CANTRCV_31_UJA1132_GENERAL_WAKE_UP_SUPPORT)
# 
#     VAR (Std_ReturnType, AUTOMATIC) ReturnValue;
# 
#     /* Variable holds the Can wake-up status*/
#     VAR (Dio_LevelType, AUTOMATIC) CanWakeUpFlag;
# 
#     P2CONST(CanTrcv_31_UJA1132_LtCfgType, CANTRCV_31_UJA1132_VAR_FAST, CANTRCV_31_UJA1132_APPL_CONST)LtConfig_p;
# 
# #if (STD_ON == CANTRCV_31_UJA1132_DEV_ERROR_DETECT )
#     /* Check for any Development Errors */
#     ReturnValue = CanTrcv_31_UJA1132_GetBusWuReasonDECheck (Transceiver, Reason);
# 	if (E_OK == ReturnValue)
#     {
# #endif /* end  #if (STD_ON == CANTRCV_31_UJA1132_DEV_ERROR_DETECT ) */
# 
#         LtConfig_p = &(CANTRCV_31_UJA1132_LT_CONFIG_P[Transceiver]);
# 
#         /* If CanTrcvWakeupByBusUsed is True for this Channel */
#         if (TRUE == LtConfig_p->CanTrcvWakeupByBusUsed )
#         {
#             /* Reading the Can Wake-up status bit */
#             CanWakeUpFlag = Dio_ReadChannel(LtConfig_p->CanTrcvRxDioChannelId);
#             
#             /* Check if the Dio return value is STD_LOW */
#             if ( STD_LOW == CanWakeUpFlag )
#             {
#                 /* Set the Wakeup Reason to CANTRCV_WU_BY_BUS */
#                 *Reason = CANTRCV_WU_BY_BUS;  
#                 
#                 ReturnValue = E_OK;
#             }
#             else
#             {
#                 *Reason = CANTRCV_WU_INTERNALLY;
#                 
#                 ReturnValue = E_OK;
#             }
#         }
#         else /* If wakeup is not supported */
#         {
#             /* Set the Wakeup Reason to CANTRCV_WU_NOT_SUPPORTED */
#             *Reason = CANTRCV_WU_NOT_SUPPORTED;
#             
#              ReturnValue = E_NOT_OK;
#              
#         }
# #if (STD_ON == CANTRCV_31_UJA1132_DEV_ERROR_DETECT )
#     }
#     else
#     {
#         /* Do Nothing */
#     }
# #endif	
# #else
# 
#     VAR (Std_ReturnType, AUTOMATIC) ReturnValue = E_NOT_OK;
	.d2line		152
.Llo3:
	diab.li		r3,1		# ReturnValue=r3
#     
#     /* Set the value as wakeup is not supported */
#     *Reason = CANTRCV_WU_NOT_SUPPORTED;
	.d2line		155
.Llo4:
	diab.li		r5,4
	stw		r5,0(r4)		# Reason=r4
# 
# #endif /*end #if(CANTRCV_WAKEUP_BY_POLLING== CANTRCV_31_UJA1132_GENERAL_WAKE_UP_SUPPORT)*/
#  
#     return (ReturnValue);
#     
# }/* End of CanTrcv_31_UJA1132_GetBusWuReason () */
	.d2line		161
	.d2epilogue_begin
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
.L744:
	.type		CanTrcv_31_UJA1132_GetBusWuReason,@function
	.size		CanTrcv_31_UJA1132_GetBusWuReason,.-CanTrcv_31_UJA1132_GetBusWuReason
# Number of nodes = 9

# Allocations for CanTrcv_31_UJA1132_GetBusWuReason
#	not allocated	Transceiver
#	?a4		Reason
#	?a5		ReturnValue

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L756:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L737:
.L745:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_GetBusWuReason.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_GetBusWuReason.c"
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
.L734:
	.4byte		.L735-.L733
.L733:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L739-.L734
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132_GetBusWuReason.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L736
	.4byte		.L737
	.4byte		.L740
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L749:
	.sleb128	2
	.4byte		.L742-.L734
	.byte		"CanTrcv_31_UJA1132_GetBusWuReason"
	.byte		0
	.4byte		.L745
	.uleb128	91
	.uleb128	48
	.4byte		.L746
	.byte		0x1
	.byte		0x1
	.4byte		.L743
	.4byte		.L744
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L745
	.uleb128	91
	.uleb128	48
	.byte		"Transceiver"
	.byte		0
	.4byte		.L747
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	4
	.4byte		.L745
	.uleb128	91
	.uleb128	48
	.byte		"Reason"
	.byte		0
	.4byte		.L750
	.4byte		.L753
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L754:
	.sleb128	5
	.4byte		.L745
	.uleb128	152
	.uleb128	37
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L746
	.4byte		.L755
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L742:
	.section	.debug_info,,n
.L752:
	.sleb128	6
	.4byte		.L756
	.uleb128	41
	.uleb128	15
	.4byte		.L757-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"CANTRCV_WU_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"CANTRCV_WU_BY_PIN"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"CANTRCV_WU_BY_BUS"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"CANTRCV_WU_INTERNALLY"
	.byte		0
	.sleb128	3
	.sleb128	7
	.byte		"CANTRCV_WU_NOT_SUPPORTED"
	.byte		0
	.sleb128	4
	.sleb128	7
	.byte		"CANTRCV_WU_POWER_ON"
	.byte		0
	.sleb128	5
	.sleb128	7
	.byte		"CANTRCV_WU_RESET"
	.byte		0
	.sleb128	6
	.sleb128	7
	.byte		"CANTRCV_WU_BY_SYSERR"
	.byte		0
	.sleb128	7
	.sleb128	0
.L757:
	.section	.debug_info,,n
.L748:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L747:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L748
.L746:
	.sleb128	9
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L747
.L751:
	.sleb128	9
	.byte		"CanTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L752
	.section	.debug_info,,n
.L750:
	.sleb128	10
	.4byte		.L751
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L739:
	.sleb128	0
.L735:

	.section	.debug_loc,,n
	.align	0
.L753:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),4
	.d2locend
.L755:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTrcv_31_UJA1132_GetBusWuReason"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_GetBusWuReason.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_GetBusWuReason.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_GetBusWuReason.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_GetBusWuReason.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_GetBusWuReason.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132_GetBusWuReason.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTrcv\ssc\target\UJA1132\make\..\src\CanTrcv_31_UJA1132_GetBusWuReason.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end