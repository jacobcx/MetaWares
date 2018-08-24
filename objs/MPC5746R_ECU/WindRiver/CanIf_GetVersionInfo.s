#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_GetVersionInfo.c"
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
# FUNC(void,CANIF_CODE)CanIf_GetVersionInfo
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_GetVersionInfo.c"
        .d2line         51,22
#$$ld
.L196:

#$$bf	CanIf_GetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		CanIf_GetVersionInfo
	.d2_cfa_start __cie
CanIf_GetVersionInfo:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# VersionInfo=r4 VersionInfo=r3
	.d2prologue_end
# (
#     P2VAR( Std_VersionInfoType, AUTOMATIC, CANIF_APPL_DATA )VersionInfo
# )
# {
# 
# /* if DET is enabled REQ: [DEV_CANIF14000] */
# #if(CANIF_DEV_ERROR_DETECT == STD_ON )
#     /* REQ: [CANIF658] */
#     /* Validate the VersionInfo pointer received */
#     if( NULL_PTR == VersionInfo )
#     {
#         (void)Det_ReportError( CANIF_MODULE_ID,
#                          CANIF_INSTANCE_ID,
#                          CANIF_SID_GET_VERSIONINFO,
#                          CANIF_E_PARAM_POINTER );
#     }
#     
#     else
# #endif /* CANIF_DEV_ERROR_DETECT == STD_ON */
#     {
#         /* REQ: [CANIF350] */
#         /* Update the Module ID */
#         VersionInfo->moduleID = CANIF_MODULE_ID;
	.d2line		74
.Llo2:
	diab.li		r3,60
.Llo3:
	sth		r3,2(r4)		# VersionInfo=r4
# 
#         /* Update the Vendor ID */
#         VersionInfo->vendorID = CANIF_VENDOR_ID;
	.d2line		77
	diab.li		r3,31
	sth		r3,0(r4)		# VersionInfo=r4
# 
#         /* Update the Software Major Version */
#         VersionInfo->sw_major_version = (uint8)CANIF_SW_MAJOR_VERSION;
	.d2line		80
	diab.li		r3,5
	stb		r3,4(r4)		# VersionInfo=r4
# 
#         /* Update the Software Minor Version */
#         VersionInfo->sw_minor_version = (uint8)CANIF_SW_MINOR_VERSION;
	.d2line		83
	diab.li		r3,1
	stb		r3,5(r4)		# VersionInfo=r4
# 
#         /* Update the Software Patch Version */
#         VersionInfo->sw_patch_version = (uint8)CANIF_SW_PATCH_VERSION;
	.d2line		86
	diab.li		r3,0
	stb		r3,6(r4)		# VersionInfo=r4
#         
#     }/* End if( NULL_PTR == VersionInfo ) */
# 
#     
# }/* End of CanIf_GetVersionInfo() */
	.d2line		91
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
.L197:
	.type		CanIf_GetVersionInfo,@function
	.size		CanIf_GetVersionInfo,.-CanIf_GetVersionInfo
# Number of nodes = 28

# Allocations for CanIf_GetVersionInfo
#	?a4		VersionInfo

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L204:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L198:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_GetVersionInfo.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_GetVersionInfo.c"
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
.L199:
	.sleb128	2
	.4byte		.L195-.L2
	.byte		"CanIf_GetVersionInfo"
	.byte		0
	.4byte		.L198
	.uleb128	51
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L196
	.4byte		.L197
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L198
	.uleb128	51
	.uleb128	22
	.byte		"VersionInfo"
	.byte		0
	.4byte		.L200
	.4byte		.L203
	.section	.debug_info,,n
	.sleb128	0
.L195:
	.section	.debug_info,,n
.L202:
	.sleb128	4
	.4byte		.L204
	.uleb128	69
	.uleb128	1
	.4byte		.L205-.L2
	.uleb128	8
	.section	.debug_info,,n
.L78:
	.sleb128	5
	.byte		"vendorID"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L79:
	.sleb128	5
	.byte		"moduleID"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L80:
	.sleb128	5
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L208
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L81:
	.sleb128	5
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L208
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L82:
	.sleb128	5
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L208
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L205:
	.section	.debug_info,,n
.L201:
	.sleb128	6
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L202
	.section	.debug_info,,n
.L200:
	.sleb128	7
	.4byte		.L201
	.section	.debug_info,,n
.L207:
	.sleb128	8
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L206:
	.sleb128	6
	.byte		"uint16"
	.byte		0
	.4byte		.L207
.L209:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L208:
	.sleb128	6
	.byte		"uint8"
	.byte		0
	.4byte		.L209
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L203:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanIf_GetVersionInfo"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_GetVersionInfo.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_GetVersionInfo.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_GetVersionInfo.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_GetVersionInfo.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_GetVersionInfo.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_GetVersionInfo.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanIf\ssc\make\..\src\CanIf_GetVersionInfo.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
