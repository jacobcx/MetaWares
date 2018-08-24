#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_GetRequestedComMode.c"
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
# FUNC(Std_ReturnType, COMM_CODE) ComM_GetRequestedComMode(VAR(ComM_UserHandleType, AUTOMATIC)             User,
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_GetRequestedComMode.c"
        .d2line         53,33
#$$ld
.L764:

#$$bf	ComM_GetRequestedComMode,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.globl		ComM_GetRequestedComMode
	.d2_cfa_start __cie
ComM_GetRequestedComMode:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# User=r3 User=r3
	mr		r4,r4		# ComMode=r4 ComMode=r4
	.d2prologue_end
#                                                          P2VAR(ComM_ModeType, AUTOMATIC, COMM_APPL_DATA) ComMode)
# {
#     VAR(Std_ReturnType, AUTOMATIC) retVal = E_OK;
	.d2line		56
	diab.li		r6,0		# retVal=r6
# 
#     /* [ComM612] Check whether the module has been initialized */
#     if(ComM_InitStatus != COMM_INIT)
	.d2line		59
.Llo6:
	lis		r5,ComM_InitStatus@ha
	lwz		r0,ComM_InitStatus@l(r5)
	se_cmpi		r0,1
	bc		1,2,.L758	# eq
#     {
#         COMM_DET_REPORT_ERROR(COMM_GETREQUESTCOMMODE_API_ID, COMM_E_NOT_INITED);
#         retVal = COMM_UNINIT_RETVAL;
	.d2line		62
	diab.li		r6,1		# retVal=r6
	b		.L759
.L758:
#     }
# #if(COMM_DEV_ERROR_DETECT == STD_ON)
#     /* Check if passed arguments are invalid */
#     else if( (User >= ComM_ConfigPtr->UsersNum) || (ComMode == NULL_PTR) )
#     {
#         COMM_DET_REPORT_ERROR(COMM_GETREQUESTCOMMODE_API_ID, COMM_E_WRONG_PARAMETERS);
#         retVal = E_NOT_OK;
#     }
# #endif
#     else
#     {
#         *ComMode = ComM_UserRequests[User];
	.d2line		74
.Llo2:
	lis		r5,ComM_UserRequests@ha
	e_add16i		r5,r5,ComM_UserRequests@l
.Llo3:
	rlwinm		r3,r3,0,24,31		# User=r3 User=r3
.Llo4:
	lbzx		r0,r5,r3
	stb		r0,0(r4)		# ComMode=r4
.L759:
#     }
# 
#     return retVal;
	.d2line		77
.Llo5:
	rlwinm		r3,r6,0,24,31		# User=r3 retVal=r6
# }
	.d2line		78
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo7:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L765:
	.type		ComM_GetRequestedComMode,@function
	.size		ComM_GetRequestedComMode,.-ComM_GetRequestedComMode
# Number of nodes = 22

# Allocations for ComM_GetRequestedComMode
#	?a4		User
#	?a5		ComMode
#	?a6		retVal

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L785:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L779:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Private.h"
.L766:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_GetRequestedComMode.c"
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
	.uleb128	11
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	33
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_GetRequestedComMode.c"
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
	.byte		"ComM_GetRequestedComMode"
	.byte		0
	.4byte		.L766
	.uleb128	53
	.uleb128	33
	.4byte		.L767
	.byte		0x1
	.byte		0x1
	.4byte		.L764
	.4byte		.L765
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L766
	.uleb128	53
	.uleb128	33
	.byte		"User"
	.byte		0
	.4byte		.L771
	.4byte		.L772
	.sleb128	3
	.4byte		.L766
	.uleb128	53
	.uleb128	33
	.byte		"ComMode"
	.byte		0
	.4byte		.L773
	.4byte		.L775
	.section	.debug_info,,n
.L776:
	.sleb128	4
	.4byte		.L766
	.uleb128	56
	.uleb128	36
	.byte		"retVal"
	.byte		0
	.4byte		.L767
	.4byte		.L777
	.section	.debug_info,,n
	.sleb128	0
.L763:
	.section	.debug_info,,n
.L778:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L779
	.uleb128	374
	.uleb128	55
	.byte		"ComM_InitStatus"
	.byte		0
	.4byte		.L780
	.0byte		.L778
.L782:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L779
	.uleb128	443
	.uleb128	52
	.byte		"ComM_UserRequests"
	.byte		0
	.4byte		.L783
	.section	.debug_info,,n
.L781:
	.sleb128	6
	.4byte		.L785
	.uleb128	50
	.uleb128	1
	.4byte		.L786-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"COMM_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"COMM_INIT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L786:
	.section	.debug_info,,n
.L769:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L768:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L769
.L767:
	.sleb128	9
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L768
.L771:
	.sleb128	9
	.byte		"ComM_UserHandleType"
	.byte		0
	.4byte		.L768
.L774:
	.sleb128	9
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L768
	.section	.debug_info,,n
.L773:
	.sleb128	10
	.4byte		.L774
.L780:
	.sleb128	9
	.byte		"ComM_InitStatusType"
	.byte		0
	.4byte		.L781
	.section	.debug_info,,n
.L783:
	.sleb128	11
	.4byte		.L784-.L2
	.4byte		.L774
	.section	.debug_info,,n
	.sleb128	12
	.sleb128	0
.L784:
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L772:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L775:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locend
.L777:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),6
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_GetRequestedComMode"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_GetRequestedComMode.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_GetRequestedComMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_GetRequestedComMode.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_GetRequestedComMode.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_GetRequestedComMode.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_GetRequestedComMode.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_GetRequestedComMode.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
