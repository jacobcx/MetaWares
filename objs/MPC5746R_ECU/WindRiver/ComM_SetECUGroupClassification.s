#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_SetECUGroupClassification.c"
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
# FUNC(Std_ReturnType, COMM_CODE) ComM_SetECUGroupClassification(VAR(ComM_InhibitionStatusType, AUTOMATIC) Status)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_SetECUGroupClassification.c"
        .d2line         50,33
#$$ld
.L764:

#$$bf	ComM_SetECUGroupClassification,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		ComM_SetECUGroupClassification
	.d2_cfa_start __cie
ComM_SetECUGroupClassification:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo1:
	stw		r0,20(r1)		# retVal=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(Std_ReturnType, AUTOMATIC) retVal = E_OK;
	.d2line		52
	diab.li		r0,0		# retVal=r0
# 
#     /* [ComM612] Check whether ComM has been initialized */
#     if(ComM_InitStatus != COMM_INIT)
	.d2line		55
.Llo2:
	lis		r3,ComM_InitStatus@ha		# retVal=r3
.Llo3:
	lwz		r0,ComM_InitStatus@l(r3)		# retVal=r0 retVal=r3
	se_cmpi		r0,1		# retVal=r0
#     {
#         COMM_DET_REPORT_ERROR(COMM_SETECUGRPCLASSIFICATION_API_ID, COMM_E_NOT_INITED);
#         retVal = COMM_UNINIT_RETVAL;
	.d2line		58
	diab.li		r0,1		# retVal=r0
	isel		r0,r3,r0,2		# retVal=r0 retVal=r3 retVal=r0
.L758:
#     }
# #if(COMM_DEV_ERROR_DETECT == STD_ON)
#     /* Check if Status is out of range */
#     else if(Status > COMM_INHIBITIONSTATUS_MAXVALUE)
#     {
#         COMM_DET_REPORT_ERROR(COMM_SETECUGRPCLASSIFICATION_API_ID, COMM_E_WRONG_PARAMETERS);
#         retVal = E_NOT_OK;
#     }
# #endif
#     else
#     {
# #if(COMM_MODE_LIMITATION_ENABLED != STD_ON && COMM_WAKEUP_INHIBITION_ENABLED != STD_ON)
#         COMM_DET_REPORT_ERROR(COMM_SETECUGRPCLASSIFICATION_API_ID, COMM_E_FEATURE_DISABLED);
#         retVal = E_NOT_OK;
	.d2line		72
.Llo4:
	diab.li		r3,1		# retVal=r3
.Llo5:
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3 retVal=r0
.L759:
# #else
#         /* Change ECU Group Classification status */
#         ComM_EcuGroupClassification = Status;
# #endif
#     }
# 
#     return retVal;
	.d2line		79
.Llo6:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		80
	.d2epilogue_begin
	lwz		r0,20(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L765:
	.type		ComM_SetECUGroupClassification,@function
	.size		ComM_SetECUGroupClassification,.-ComM_SetECUGroupClassification
# Number of nodes = 17

# Allocations for ComM_SetECUGroupClassification
#	not allocated	Status
#	?a4		retVal

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L778:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L775:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Private.h"
.L766:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_SetECUGroupClassification.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\src\\ComM_SetECUGroupClassification.c"
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
	.byte		"ComM_SetECUGroupClassification"
	.byte		0
	.4byte		.L766
	.uleb128	50
	.uleb128	33
	.4byte		.L767
	.byte		0x1
	.byte		0x1
	.4byte		.L764
	.4byte		.L765
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L766
	.uleb128	50
	.uleb128	33
	.byte		"Status"
	.byte		0
	.4byte		.L771
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info,,n
.L772:
	.sleb128	4
	.4byte		.L766
	.uleb128	52
	.uleb128	36
	.byte		"retVal"
	.byte		0
	.4byte		.L767
	.4byte		.L773
	.section	.debug_info,,n
	.sleb128	0
.L763:
	.section	.debug_info,,n
.L774:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L775
	.uleb128	374
	.uleb128	55
	.byte		"ComM_InitStatus"
	.byte		0
	.4byte		.L776
	.0byte		.L774
	.section	.debug_info,,n
.L777:
	.sleb128	6
	.4byte		.L778
	.uleb128	50
	.uleb128	1
	.4byte		.L779-.L2
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
.L779:
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
	.byte		"ComM_InhibitionStatusType"
	.byte		0
	.4byte		.L768
.L776:
	.sleb128	9
	.byte		"ComM_InitStatusType"
	.byte		0
	.4byte		.L777
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L773:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),0
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComM_SetECUGroupClassification"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_SetECUGroupClassification.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_SetECUGroupClassification.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_SetECUGroupClassification.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_SetECUGroupClassification.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_SetECUGroupClassification.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_SetECUGroupClassification.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\ComM\ssc\make\..\src\ComM_SetECUGroupClassification.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
