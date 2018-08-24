#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTp_GetVersionInfo.c"
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
# FUNC(void, CANTP_CODE) CanTp_GetVersionInfo
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_GetVersionInfo.c"
        .d2line         52,24
#$$ld
.L130:

#$$bf	CanTp_GetVersionInfo,interprocedural,rasave,nostackparams
	.globl		CanTp_GetVersionInfo
	.d2_cfa_start __cie
CanTp_GetVersionInfo:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr.		r3,r3		# VersionInfo=?a4 VersionInfo=r3
	.d2prologue_end
# (
#     /* PRQA S 3227 1 *//* API is defined as the standard specified (no const)*/
#     P2VAR(Std_VersionInfoType, AUTOMATIC, CANTP_APPL_CONST) VersionInfo
# )
# {
# #if (CANTP_DEV_ERROR_DETECT == STD_ON)
# 
#     /*Check for null pointer reception*/
#     if(NULL_PTR == VersionInfo)
	.d2line		61
	bc		0,2,.L124	# ne
#     {
#         (void)Det_ReportError(CANTP_MODULE_ID, CANTP_INSTANCE_ID,
	.d2line		63
.Llo2:
	diab.li		r3,35		# VersionInfo=r3
	diab.li		r4,0
	diab.li		r5,7
	diab.li		r6,3
	bl		Det_ReportError
	b		.L123
.L124:
#                 CANTP_ID_GETVERSIONINFO, CANTP_E_PARAM_POINTER);
#     }
# 
#     /*development error not occurred and continue with the normal operation*/
#     else
# #endif
#     {
#         /* Provide version info of this module */
#         VersionInfo->vendorID = CANTP_VENDOR_ID;
	.d2line		72
.Llo3:
	diab.li		r0,31
	sth		r0,0(r3)		# VersionInfo=r3
#         VersionInfo->moduleID = CANTP_MODULE_ID;
	.d2line		73
	diab.li		r0,35
	sth		r0,2(r3)		# VersionInfo=r3
#         VersionInfo->sw_major_version = CANTP_SW_MAJOR_VERSION;
	.d2line		74
	diab.li		r0,5
	stb		r0,4(r3)		# VersionInfo=r3
#         VersionInfo->sw_minor_version = CANTP_SW_MINOR_VERSION;
	.d2line		75
	diab.li		r0,1
	stb		r0,5(r3)		# VersionInfo=r3
#         VersionInfo->sw_patch_version = CANTP_SW_PATCH_VERSION;
	.d2line		76
	diab.li		r0,0
	stb		r0,6(r3)		# VersionInfo=r3
.L123:
#     }
# }/* End of CanTp_GetVersionInfo() */
	.d2line		78
	.d2epilogue_begin
.Llo4:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L131:
	.type		CanTp_GetVersionInfo,@function
	.size		CanTp_GetVersionInfo,.-CanTp_GetVersionInfo
# Number of nodes = 42

# Allocations for CanTp_GetVersionInfo
#	?a4		VersionInfo

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L138:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L132:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_GetVersionInfo.c"
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
	.uleb128	5
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
	.uleb128	6
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\src\\CanTp_GetVersionInfo.c"
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
.L133:
	.sleb128	2
	.4byte		.L129-.L2
	.byte		"CanTp_GetVersionInfo"
	.byte		0
	.4byte		.L132
	.uleb128	52
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L130
	.4byte		.L131
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L132
	.uleb128	52
	.uleb128	24
	.byte		"VersionInfo"
	.byte		0
	.4byte		.L134
	.4byte		.L137
	.section	.debug_info,,n
	.sleb128	0
.L129:
	.section	.debug_info,,n
.L136:
	.sleb128	4
	.4byte		.L138
	.uleb128	69
	.uleb128	1
	.4byte		.L139-.L2
	.uleb128	8
	.section	.debug_info,,n
.L30:
	.sleb128	5
	.byte		"vendorID"
	.byte		0
	.4byte		.L140
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L31:
	.sleb128	5
	.byte		"moduleID"
	.byte		0
	.4byte		.L140
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L32:
	.sleb128	5
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L142
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L33:
	.sleb128	5
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L142
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L34:
	.sleb128	5
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L142
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L139:
	.section	.debug_info,,n
.L135:
	.sleb128	6
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L136
	.section	.debug_info,,n
.L134:
	.sleb128	7
	.4byte		.L135
	.section	.debug_info,,n
.L141:
	.sleb128	8
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L140:
	.sleb128	6
	.byte		"uint16"
	.byte		0
	.4byte		.L141
.L143:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L142:
	.sleb128	6
	.byte		"uint8"
	.byte		0
	.4byte		.L143
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L137:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTp_GetVersionInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Det_ReportError"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_GetVersionInfo.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_GetVersionInfo.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_GetVersionInfo.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_GetVersionInfo.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_GetVersionInfo.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_GetVersionInfo.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTp\ssc\make\..\src\CanTp_GetVersionInfo.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
