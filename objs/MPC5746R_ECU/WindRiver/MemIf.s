#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"MemIf.c"
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
# FUNC(void, MEMIF_CODE) MemIf_GetVersionInfo /* [MemIf045] */
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\MemIf\\ssc\\make\\..\\src\\MemIf.c"
        .d2line         173,24
#$$ld
.L140:

#$$bf	MemIf_GetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		MemIf_GetVersionInfo
	.d2_cfa_start __cie
MemIf_GetVersionInfo:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr.		r3,r3		# VersionInfoPtr=?a4 VersionInfoPtr=r3
	.d2prologue_end
# (
#    P2VAR(Std_VersionInfoType, AUTOMATIC, MEMIF_VAR) VersionInfoPtr
# )
# {
#    if(NULL_PTR == VersionInfoPtr)
	.d2line		178
	bc		1,2,.L129	# eq
#    {
#       /* [MemIf063] */
#       MEMIF_ASSERT_DET(MEMIF_API_ID_GET_VERSION_INFO, MEMIF_E_PARAM_POINTER);
#    }
#    else
#    {
#       /* PRQA S 0505 ++
#        * logical operation will check for the null pointer
#        */
#       VersionInfoPtr->moduleID = MEMIF_MODULE_ID;
	.d2line		188
	diab.li		r0,22
	sth		r0,2(r3)		# VersionInfoPtr=r3
#       VersionInfoPtr->sw_major_version = MEMIF_SW_MAJOR_VERSION;
	.d2line		189
	diab.li		r0,8
	stb		r0,4(r3)		# VersionInfoPtr=r3
#       VersionInfoPtr->sw_minor_version = MEMIF_SW_MINOR_VERSION;
	.d2line		190
	diab.li		r0,2
	stb		r0,5(r3)		# VersionInfoPtr=r3
#       VersionInfoPtr->sw_patch_version = MEMIF_SW_PATCH_VERSION;
	.d2line		191
	diab.li		r0,1
	stb		r0,6(r3)		# VersionInfoPtr=r3
#       VersionInfoPtr->vendorID = MEMIF_VENDOR_ID;
	.d2line		192
	diab.li		r0,31
	sth		r0,0(r3)		# VersionInfoPtr=r3
.L129:
#       /* PRQA S 0505 -- */
#    }
# }
	.d2line		195
	.d2epilogue_begin
.Llo2:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L141:
	.type		MemIf_GetVersionInfo,@function
	.size		MemIf_GetVersionInfo,.-MemIf_GetVersionInfo
# Number of nodes = 31

# Allocations for MemIf_GetVersionInfo
#	?a4		VersionInfoPtr
# FUNC(Std_ReturnType, MEMIF_CODE) MemIf_ConsistencyCheck(void)
	.align		2
	.section	.text_vle
        .d2line         535,34
#$$ld
.L150:

#$$bf	MemIf_ConsistencyCheck,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		MemIf_ConsistencyCheck
	.d2_cfa_start __cie
MemIf_ConsistencyCheck:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo3:
	stw		r0,20(r1)		# retVal=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(Std_ReturnType, AUTOMATIC) retVal;
# 
#    if (MEMIF_PC_HASH_VALUE == MemIf_LTtoPCHashValue)
	.d2line		539
	lis		r3,MemIf_LTtoPCHashValue@ha		# retVal=r3
	lwz		r0,MemIf_LTtoPCHashValue@l(r3)		# retVal=r0 retVal=r3
	e_lis		r3,65396		# retVal=r3
	e_or2i		r3,792		# retVal=r3
	se_cmpl		r0,r3		# retVal=r0 retVal=r3
#    {
#       retVal = E_OK;
	.d2line		541
	isel		r3,0,r0,2		# retVal=r3 retVal=r0
.L134:
#    }
#    else
#    {
#       retVal = E_NOT_OK;
	.d2line		545
.Llo4:
	diab.li		r0,1		# retVal=r0
.Llo5:
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3 retVal=r0
.L135:
#    }
# 
#    return retVal;
	.d2line		548
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		549
	.d2epilogue_begin
.Llo6:
	lwz		r0,20(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L151:
	.type		MemIf_ConsistencyCheck,@function
	.size		MemIf_ConsistencyCheck,.-MemIf_ConsistencyCheck
# Number of nodes = 12

# Allocations for MemIf_ConsistencyCheck
#	?a4		retVal

# Allocations for module
	.section	.text_vle
	.0byte		.L158
	.section	.text_vle
#$$ld
.L5:
.L163:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L159:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\MemIf\\ssc\\make\\..\\inc\\MemIf.h"
.L142:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\MemIf\\ssc\\make\\..\\src\\MemIf.c"
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
	.uleb128	8
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
	.uleb128	12
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\MemIf\\ssc\\make\\..\\src\\MemIf.c"
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
.L143:
	.sleb128	2
	.4byte		.L139-.L2
	.byte		"MemIf_GetVersionInfo"
	.byte		0
	.4byte		.L142
	.uleb128	173
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L140
	.4byte		.L141
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L142
	.uleb128	173
	.uleb128	24
	.byte		"VersionInfoPtr"
	.byte		0
	.4byte		.L144
	.4byte		.L147
	.section	.debug_info,,n
	.sleb128	0
.L139:
	.section	.debug_info,,n
.L155:
	.sleb128	4
	.4byte		.L149-.L2
	.byte		"MemIf_ConsistencyCheck"
	.byte		0
	.4byte		.L142
	.uleb128	535
	.uleb128	34
	.4byte		.L152
	.byte		0x1
	.byte		0x1
	.4byte		.L150
	.4byte		.L151
	.section	.debug_info,,n
.L156:
	.sleb128	5
	.4byte		.L142
	.uleb128	537
	.uleb128	35
	.byte		"retVal"
	.byte		0
	.4byte		.L152
	.4byte		.L157
	.section	.debug_info,,n
	.sleb128	0
.L149:
	.section	.debug_info,,n
.L158:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L159
	.uleb128	478
	.uleb128	35
	.byte		"MemIf_LTtoPCHashValue"
	.byte		0
	.4byte		.L160
	.section	.debug_info,,n
	.section	.debug_info,,n
.L146:
	.sleb128	7
	.4byte		.L163
	.uleb128	69
	.uleb128	1
	.4byte		.L164-.L2
	.uleb128	8
	.section	.debug_info,,n
.L22:
	.sleb128	8
	.byte		"vendorID"
	.byte		0
	.4byte		.L165
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L23:
	.sleb128	8
	.byte		"moduleID"
	.byte		0
	.4byte		.L165
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L24:
	.sleb128	8
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L153
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L25:
	.sleb128	8
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L153
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L26:
	.sleb128	8
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L153
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L164:
	.section	.debug_info,,n
.L145:
	.sleb128	9
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L146
	.section	.debug_info,,n
.L144:
	.sleb128	10
	.4byte		.L145
	.section	.debug_info,,n
.L154:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L153:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L154
.L152:
	.sleb128	9
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L153
.L162:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L161:
	.sleb128	9
	.byte		"uint32"
	.byte		0
	.4byte		.L162
	.section	.debug_info,,n
.L160:
	.sleb128	12
	.4byte		.L161
.L166:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L165:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L166
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L147:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L157:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "MemIf_ConsistencyCheck"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "MemIf_GetVersionInfo"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\MemIf.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\MemIf.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\MemIf.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\MemIf.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\MemIf.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\MemIf.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MEM\MemIf\ssc\make\..\src\MemIf.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
