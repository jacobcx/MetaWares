#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_GetInhibitionStatus.c"
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
# FUNC(Std_ReturnType, COMM_CODE) ComM_GetInhibitionStatus(VAR(NetworkHandleType, AUTOMATIC)                           Channel,
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_GetInhibitionStatus.c"
        .d2line         51,33
#$$ld
.L764:

#$$bf	ComM_GetInhibitionStatus,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		ComM_GetInhibitionStatus
	.d2_cfa_start __cie
ComM_GetInhibitionStatus:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r4		# Status=r4 Status=r4
	.d2prologue_end
#                                                          P2VAR(ComM_InhibitionStatusType, AUTOMATIC, COMM_APPL_DATA) Status)
# {
#     VAR(Std_ReturnType, AUTOMATIC) retVal = E_OK;
	.d2line		54
	diab.li		r5,0		# retVal=r5
# 
#     /* [ComM612] Check whether the module has been initialized */
#     if(ComM_InitStatus != COMM_INIT)
	.d2line		57
.Llo3:
	lis		r3,ComM_InitStatus@ha
	lwz		r0,ComM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L758	# eq
#     {
#         COMM_DET_REPORT_ERROR(COMM_GETINHIBITONSTATUS_API_ID, COMM_E_NOT_INITED);
#         retVal = COMM_UNINIT_RETVAL;
	.d2line		60
	diab.li		r5,1		# retVal=r5
	b		.L759
.L758:
#     }
# #if(COMM_DEV_ERROR_DETECT == STD_ON)
#     /* Check if arguments passed are invalid */
#     else if( (Status == NULL_PTR) || (Channel >= ComM_ChannelsNum) )
#     {
#         COMM_DET_REPORT_ERROR(COMM_GETINHIBITONSTATUS_API_ID, COMM_E_WRONG_PARAMETERS);
#         retVal = E_NOT_OK;
#     }
# #endif
#     else
#     {
#         /* Reset status */
#         *Status = 0U;
	.d2line		73
	diab.li		r0,0
	stb		r0,0(r4)		# Status=r4
.L759:
# 
# #if(COMM_MODE_LIMITATION_ENABLED == STD_ON || COMM_WAKEUP_INHIBITION_ENABLED == STD_ON)
#         /* [ComM182] The communication inhibition shall get temporarily inactive
#          * during an active diagnostic session. */
#         if(ComM_ChannelStates[Channel].ActiveDiagnostic == FALSE)
#         {
# #if(COMM_MODE_LIMITATION_ENABLED == STD_ON)
#             /* Checking whether NoCom inhibition is active */
#             if(ComM_ChannelStates[Channel].ComMNoCom == TRUE)
#             {
#                 /* Set Bit 1 for LimitedToNoCom */
#                 COMM_SET_BITX(*Status, COMM_LIMIT_TO_NO_COMMN_BIT);
#             }
# #endif
# 
# #if(COMM_WAKEUP_INHIBITION_ENABLED == STD_ON)
#             /* Checking whether NoWakeUp inhibition is active */
#             if(ComM_ChannelStates[Channel].ComMNoWakeup == TRUE)
#             {
#                 /* Set Bit 0 (LSB) for WakeupInhibitionActive */
#                 COMM_SET_BITX(*Status, COMM_WAKE_UP_INHIBITION_BIT);
#             }
# #endif
#         }
# #endif
#     }
# 
#     return retVal;
	.d2line		101
.Llo2:
	rlwinm		r3,r5,0,24,31		# retVal=r5
# }
	.d2line		102
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo4:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L765:
	.type		ComM_GetInhibitionStatus,@function
	.size		ComM_GetInhibitionStatus,.-ComM_GetInhibitionStatus
# Number of nodes = 17

# Allocations for ComM_GetInhibitionStatus
#	not allocated	Channel
#	?a4		Status
#	?a5		retVal

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L781:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L778:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Private.h"
.L766:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_GetInhibitionStatus.c"
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
	.uleb128	7
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
	.uleb128	8
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
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
	.uleb128	10
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_GetInhibitionStatus.c"
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
.L770:
	.sleb128	2
	.4byte		.L763-.L2
	.byte		"ComM_GetInhibitionStatus"
	.byte		0
	.4byte		.L766
	.uleb128	51
	.uleb128	33
	.4byte		.L767
	.byte		0x1
	.byte		0x1
	.4byte		.L764
	.4byte		.L765
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L766
	.uleb128	51
	.uleb128	33
	.byte		"Channel"
	.byte		0
	.4byte		.L771
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L766
	.uleb128	51
	.uleb128	33
	.byte		"Status"
	.byte		0
	.4byte		.L772
	.4byte		.L774
	.section	.debug_info,,n
.L775:
	.sleb128	5
	.4byte		.L766
	.uleb128	54
	.uleb128	36
	.byte		"retVal"
	.byte		0
	.4byte		.L767
	.4byte		.L776
	.section	.debug_info,,n
	.sleb128	0
.L763:
	.section	.debug_info,,n
.L777:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L778
	.uleb128	374
	.uleb128	55
	.byte		"ComM_InitStatus"
	.byte		0
	.4byte		.L779
	.0byte		.L777
	.section	.debug_info,,n
.L780:
	.sleb128	7
	.4byte		.L781
	.uleb128	50
	.uleb128	1
	.4byte		.L782-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	8
	.byte		"COMM_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"COMM_INIT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L782:
	.section	.debug_info,,n
.L769:
	.sleb128	9
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L768:
	.sleb128	10
	.byte		"uint8"
	.byte		0
	.4byte		.L769
.L767:
	.sleb128	10
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L768
.L771:
	.sleb128	10
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L768
.L773:
	.sleb128	10
	.byte		"ComM_InhibitionStatusType"
	.byte		0
	.4byte		.L768
	.section	.debug_info,,n
.L772:
	.sleb128	11
	.4byte		.L773
.L779:
	.sleb128	10
	.byte		"ComM_InitStatusType"
	.byte		0
	.4byte		.L780
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L774:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),4
	.d2locend
.L776:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),5
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_GetInhibitionStatus"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_GetInhibitionStatus.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_GetInhibitionStatus.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_GetInhibitionStatus.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_GetInhibitionStatus.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_GetInhibitionStatus.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_GetInhibitionStatus.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_GetInhibitionStatus.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
