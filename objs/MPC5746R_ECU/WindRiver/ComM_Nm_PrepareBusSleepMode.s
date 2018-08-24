#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_Nm_PrepareBusSleepMode.c"
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
# FUNC(void, COMM_CODE) ComM_Nm_PrepareBusSleepMode(VAR(NetworkHandleType, AUTOMATIC) Channel)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_Nm_PrepareBusSleepMode.c"
        .d2line         51,23
#$$ld
.L763:

#$$bf	ComM_Nm_PrepareBusSleepMode,interprocedural,nostackparams

# Regs written: r0,r1
	.globl		ComM_Nm_PrepareBusSleepMode
	.d2_cfa_start __cie
ComM_Nm_PrepareBusSleepMode:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* [ComM612] Check whether the module has been initialized */
#     if(ComM_InitStatus != COMM_INIT)
#     {
#         COMM_DET_REPORT_ERROR(COMM_NM_PREPBUSSLEEPMODE_API_ID, COMM_E_NOT_INITED);
#     }
#     /* Check if DET is enabled */
# #if(COMM_DEV_ERROR_DETECT == STD_ON)
#     /* Check if Channel is invalid */
#     else if(Channel >= ComM_ChannelsNum)
#     {
#         COMM_DET_REPORT_ERROR(COMM_NM_PREPBUSSLEEPMODE_API_ID, COMM_E_WRONG_PARAMETERS);
#     }
# #endif
#     else
#     {
# #if(COMM_NM_VARIANT_FULL == STD_ON || COMM_NM_VARIANT_PASSIVE == STD_ON)
#         CONST(ComM_NmVariantType, AUTOMATIC) nmVariant = ComM_ConfigPtr->ChannelsPtr[Channel].NmVariant;
#         CONSTP2VAR(ComM_ChannelStateType, AUTOMATIC, COMM_APPL_DATA) statePtr = &ComM_ChannelStates[Channel];
# 
#         /* [ADD_ComM3001] ComM_Nm_PrepareBusSleepMode shall be called only on FULL and PASSIVE channels */
#         if( (nmVariant != COMM_FULL) && (nmVariant != COMM_PASSIVE) )
#         {
#             COMM_DET_REPORT_ERROR(COMM_NM_PREPBUSSLEEPMODE_API_ID, COMM_E_WRONG_NM_VARIANT);
#         }
#         /* [ADD_ComM3004] ComM_Nm_PrepareBusSleepMode has shall be called only in FULL_COM_READY_SLEEP sub-state */
#         else if( statePtr->ChannelSubState != COMM_FULL_COM_READY_SLEEP )
#         {
#             COMM_DET_REPORT_ERROR(COMM_NM_PREPBUSSLEEPMODE_API_ID, COMM_E_WRONG_STATE);
#         }
#         else
#         {
#             COMM_SET_NM_EVENT(statePtr, COMM_NM_MODE_PREPARE_BUS_SLEEP);
#         }
# #endif
#     }
# }
	.d2line		88
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L764:
	.type		ComM_Nm_PrepareBusSleepMode,@function
	.size		ComM_Nm_PrepareBusSleepMode,.-ComM_Nm_PrepareBusSleepMode
# Number of nodes = 5

# Allocations for ComM_Nm_PrepareBusSleepMode
#	not allocated	Channel

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L774:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L771:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Private.h"
.L765:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_Nm_PrepareBusSleepMode.c"
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
	.uleb128	9
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
	.uleb128	6
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_Nm_PrepareBusSleepMode.c"
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
.L766:
	.sleb128	2
	.4byte		.L762-.L2
	.byte		"ComM_Nm_PrepareBusSleepMode"
	.byte		0
	.4byte		.L765
	.uleb128	51
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L763
	.4byte		.L764
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L765
	.uleb128	51
	.uleb128	23
	.byte		"Channel"
	.byte		0
	.4byte		.L767
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info,,n
	.sleb128	0
.L762:
	.section	.debug_info,,n
.L770:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L771
	.uleb128	374
	.uleb128	55
	.byte		"ComM_InitStatus"
	.byte		0
	.4byte		.L772
	.0byte		.L770
	.section	.debug_info,,n
.L773:
	.sleb128	5
	.4byte		.L774
	.uleb128	50
	.uleb128	1
	.4byte		.L775-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	6
	.byte		"COMM_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	6
	.byte		"COMM_INIT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L775:
	.section	.debug_info,,n
.L769:
	.sleb128	7
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L768:
	.sleb128	8
	.byte		"uint8"
	.byte		0
	.4byte		.L769
.L767:
	.sleb128	8
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L768
.L772:
	.sleb128	8
	.byte		"ComM_InitStatusType"
	.byte		0
	.4byte		.L773
.L7:
	.sleb128	0
.L3:
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_Nm_PrepareBusSleepMode"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_Nm_PrepareBusSleepMode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_Nm_PrepareBusSleepMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_Nm_PrepareBusSleepMode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_Nm_PrepareBusSleepMode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_Nm_PrepareBusSleepMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_Nm_PrepareBusSleepMode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_Nm_PrepareBusSleepMode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
