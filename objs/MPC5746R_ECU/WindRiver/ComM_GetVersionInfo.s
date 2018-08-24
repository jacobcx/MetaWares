#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_GetVersionInfo.c"
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
# FUNC(void, COMM_CODE) ComM_GetVersionInfo(P2VAR(Std_VersionInfoType, AUTOMATIC, COMM_APPL_DATA) Versioninfo)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_GetVersionInfo.c"
        .d2line         50,23
#$$ld
.L760:

#$$bf	ComM_GetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		ComM_GetVersionInfo
	.d2_cfa_start __cie
ComM_GetVersionInfo:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# Versioninfo=r4 Versioninfo=r3
	.d2prologue_end
# {
# #if(COMM_DEV_ERROR_DETECT == STD_ON)
#     /* Check if versioninfo is NULL pointer */
#     if(Versioninfo == NULL_PTR)
#     {
#         COMM_DET_REPORT_ERROR(COMM_GETVERSIONINFO_API_ID, COMM_E_WRONG_PARAMETERS);
#     }
#     else
# #endif
#     {
#         /* Return the published information */
#         Versioninfo->vendorID = COMM_VENDOR_ID;
	.d2line		62
.Llo2:
	diab.li		r3,31
.Llo3:
	sth		r3,0(r4)		# Versioninfo=r4
#         Versioninfo->moduleID = COMM_MODULE_ID;
	.d2line		63
	diab.li		r3,12
	sth		r3,2(r4)		# Versioninfo=r4
#         Versioninfo->sw_major_version = COMM_SW_MAJOR_VERSION;
	.d2line		64
	diab.li		r3,5
	stb		r3,4(r4)		# Versioninfo=r4
#         Versioninfo->sw_minor_version = COMM_SW_MINOR_VERSION;
	.d2line		65
	diab.li		r3,1
	stb		r3,5(r4)		# Versioninfo=r4
#         Versioninfo->sw_patch_version = COMM_SW_PATCH_VERSION;
	.d2line		66
	stb		r3,6(r4)		# Versioninfo=r4
#     }
# }
	.d2line		68
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
.L761:
	.type		ComM_GetVersionInfo,@function
	.size		ComM_GetVersionInfo,.-ComM_GetVersionInfo
# Number of nodes = 28

# Allocations for ComM_GetVersionInfo
#	?a4		Versioninfo

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L768:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L762:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_GetVersionInfo.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_GetVersionInfo.c"
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
.L763:
	.sleb128	2
	.4byte		.L759-.L2
	.byte		"ComM_GetVersionInfo"
	.byte		0
	.4byte		.L762
	.uleb128	50
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L760
	.4byte		.L761
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L762
	.uleb128	50
	.uleb128	23
	.byte		"Versioninfo"
	.byte		0
	.4byte		.L764
	.4byte		.L767
	.section	.debug_info,,n
	.sleb128	0
.L759:
	.section	.debug_info,,n
.L766:
	.sleb128	4
	.4byte		.L768
	.uleb128	69
	.uleb128	1
	.4byte		.L769-.L2
	.uleb128	8
	.section	.debug_info,,n
.L194:
	.sleb128	5
	.byte		"vendorID"
	.byte		0
	.4byte		.L770
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L195:
	.sleb128	5
	.byte		"moduleID"
	.byte		0
	.4byte		.L770
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L196:
	.sleb128	5
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L772
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L197:
	.sleb128	5
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L772
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L198:
	.sleb128	5
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L772
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L769:
	.section	.debug_info,,n
.L765:
	.sleb128	6
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L766
	.section	.debug_info,,n
.L764:
	.sleb128	7
	.4byte		.L765
	.section	.debug_info,,n
.L771:
	.sleb128	8
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L770:
	.sleb128	6
	.byte		"uint16"
	.byte		0
	.4byte		.L771
.L773:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L772:
	.sleb128	6
	.byte		"uint8"
	.byte		0
	.4byte		.L773
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L767:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_GetVersionInfo"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_GetVersionInfo.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_GetVersionInfo.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_GetVersionInfo.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_GetVersionInfo.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_GetVersionInfo.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_GetVersionInfo.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_GetVersionInfo.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
