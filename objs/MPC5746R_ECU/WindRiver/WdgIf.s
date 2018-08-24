#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"WdgIf.c"
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
# FUNC(Std_ReturnType,WDGIF_CODE) WdgIf_SetMode
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L449:
	.section	.invalid_TEXT,,c
#$$ld
.L445:
	.0byte		.L443
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgIf\\ssc\\make\\..\\src\\WdgIf.c"
        .d2line         144,33
#$$ld
.L452:

#$$bf	WdgIf_SetMode,interprocedural,rasave,nostackparams
	.globl		WdgIf_SetMode
	.d2_cfa_start __cie
WdgIf_SetMode:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r4		# WdgMode=r3 WdgMode=r4
	.d2prologue_end
# (
#    VAR(uint8,AUTOMATIC) DeviceIndex,  /* \Requirements{DD-WDGIF013-MGC01-V2} */
#    VAR(WdgIf_ModeType,AUTOMATIC) WdgMode /* \Requirements{DD-WDGIF016-MGC01-V1} */
# )
# {
#    Std_ReturnType status;
#    /*If only one watchdog driver is configured, the parameter DeviceIndex shall be ignored as per WDGIF018*/
# #if (1 == WDGIF_NUMBER_OF_DEVICES)
#    status = WdgIf_CallSetMode(WdgMode);  /** \Requirements{DD-WDGIF017-MGC01-V1 DD-WDGIF018-MGC01-V1 DD-WDGIF019-MGC01-V1 DD-WDGIF042-MGC01-V1 DD-WDGIF057-MGC01-V1} */
	.d2line		153
	mr		r3,r3		# WdgMode=r3 WdgMode=r3
	bl		Wdg_43_Instance1_SetMode
# #else
#    if (DeviceIndex < (uint8)WDGIF_NUMBER_OF_DEVICES)  /** \Requirements{DD-WDGIF028-MGC01-V1} */
#    {
#       /*
#        * Range of DeviceIndex is checked in the condition above
#        */
#       status = (*WdgIf_ModeFctPtr[DeviceIndex])(WdgMode);  /** \Requirements{DD-WDGIF017-MGC01-V1 DD-WDGIF020-MGC01-V1 DD-WDGIF042-MGC01-V1 DD-WDGIF057-MGC01-V1} */
#    }
#    else
#    {
#       WDGIF_ASSERT_DET(WDGIF_SETMODE_SID, WDGIF_E_PARAM_DEVICE); /** \Requirements{DD-WDGIF028-MGC01-V1 DD-BSW049-MGC01-V1} */
#       status = E_NOT_OK;
#    }
# #endif
#    return status;
	.d2line		168
.Llo2:
	rlwinm		r3,r3,0,24,31		# status=r3 status=r3
# }
	.d2line		169
	.d2epilogue_begin
.Llo3:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L453:
	.type		WdgIf_SetMode,@function
	.size		WdgIf_SetMode,.-WdgIf_SetMode
# Number of nodes = 8

# Allocations for WdgIf_SetMode
#	not allocated	DeviceIndex
#	?a4		WdgMode
#	?a5		status
# FUNC(void,WDGIF_CODE) WdgIf_SetTriggerCondition
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         175,23
#$$ld
.L466:

#$$bf	WdgIf_SetTriggerCondition,interprocedural,rasave,nostackparams
	.globl		WdgIf_SetTriggerCondition
	.d2_cfa_start __cie
WdgIf_SetTriggerCondition:
.Llo4:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r4		# Timeout=r3 Timeout=r4
	.d2prologue_end
# (
#    VAR(uint8,AUTOMATIC) DeviceIndex,  /* \Requirements{DD-WDGIF013-MGC01-V1} */
#    VAR(uint16,AUTOMATIC) Timeout
# )
# {
#     /*If only one watchdog driver is configured, the parameter DeviceIndex shall be ignored as per WDGIF018*/
# #if (1 == WDGIF_NUMBER_OF_DEVICES )
#     WdgIf_CallTrigger(Timeout); /** \Requirements{DD-WDGIF017-MGC01-V1 DD-WDGIF018-MGC01-V1 DD-WDGIF019-MGC01-V1 DD-WDGIF044-MGC01-V1} */
	.d2line		183
	rlwinm		r3,r3,0,16,31		# Timeout=r3 Timeout=r3
	bl		Wdg_43_Instance1_SetTriggerCondition
# #else
#    if(DeviceIndex < (uint8)WDGIF_NUMBER_OF_DEVICES)
#    {
#       /*
#        * Range of DeviceIndex is checked in the condition above
#        */
#       (*WdgIf_TriggerFctPtr[DeviceIndex])(Timeout); /** \Requirements{DD-WDGIF017-MGC01-V1 DD-WDGIF020-MGC01-V1 DD-WDGIF044-MGC01-V1} */
#    }
#    else
#    {
#        WDGIF_ASSERT_DET(WDGIF_TRIGGER_SID, WDGIF_E_PARAM_DEVICE); /** \Requirements{DD-WDGIF028-MGC01-V1 DD-BSW049-MGC01-V1} */
#    }
# #endif
# }
	.d2line		197
	.d2epilogue_begin
.Llo5:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L467:
	.type		WdgIf_SetTriggerCondition,@function
	.size		WdgIf_SetTriggerCondition,.-WdgIf_SetTriggerCondition
# Number of nodes = 5

# Allocations for WdgIf_SetTriggerCondition
#	not allocated	DeviceIndex
#	?a4		Timeout
# FUNC(void,WDGIF_CODE) WdgIf_GetVersionInfo
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         204,23
#$$ld
.L474:

#$$bf	WdgIf_GetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		WdgIf_GetVersionInfo
	.d2_cfa_start __cie
WdgIf_GetVersionInfo:
.Llo6:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr.		r3,r3		# VersionInfoPtr=?a4 VersionInfoPtr=r3
	.d2prologue_end
# (
#    P2VAR(Std_VersionInfoType,AUTOMATIC,WDGIF_APPL_DATA) VersionInfoPtr
# )
# {
#    if (NULL_PTR == VersionInfoPtr)
	.d2line		209
	bc		1,2,.L433	# eq
#    {
#        WDGIF_ASSERT_DET(WDGIF_GETVERSIONINFO_SID, WDGIF_E_INV_POINTER); /** \Requirements{DD-WDGIF058-MGC01-V1 DD-BSW049-MGC01-V1 DD-BSW212-MGC01-V1} */
#    }
#    else
#    {
#        /** \Requirements{DD-BSW052-MGC01-V1} */
#        VersionInfoPtr->vendorID = WDGIF_VENDOR_ID;
	.d2line		216
	diab.li		r0,31
	sth		r0,0(r3)		# VersionInfoPtr=r3
#        VersionInfoPtr->moduleID = WDGIF_MODULE_ID;
	.d2line		217
	diab.li		r0,43
	sth		r0,2(r3)		# VersionInfoPtr=r3
#        VersionInfoPtr->sw_major_version = WDGIF_SW_MAJOR_VERSION;
	.d2line		218
	diab.li		r0,6
	stb		r0,4(r3)		# VersionInfoPtr=r3
#        VersionInfoPtr->sw_minor_version = WDGIF_SW_MINOR_VERSION;
	.d2line		219
	diab.li		r0,2
	stb		r0,5(r3)		# VersionInfoPtr=r3
#        VersionInfoPtr->sw_patch_version = WDGIF_SW_PATCH_VERSION;
	.d2line		220
	diab.li		r0,0
	stb		r0,6(r3)		# VersionInfoPtr=r3
.L433:
#    }
# }
	.d2line		222
	.d2epilogue_begin
.Llo7:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L475:
	.type		WdgIf_GetVersionInfo,@function
	.size		WdgIf_GetVersionInfo,.-WdgIf_GetVersionInfo
# Number of nodes = 31

# Allocations for WdgIf_GetVersionInfo
#	?a4		VersionInfoPtr
# FUNC(Std_ReturnType, WDGIF_CODE) WdgIf_ConsistencyCheck(void)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         228,34
#$$ld
.L483:

#$$bf	WdgIf_ConsistencyCheck,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		WdgIf_ConsistencyCheck
	.d2_cfa_start __cie
WdgIf_ConsistencyCheck:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo8:
	stw		r0,20(r1)		# retVal=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Std_ReturnType retVal;
# 
#    if ((WDGIF_PC_HASH_VALUE == WdgIf_LTtoPCHashValue))
	.d2line		232
	lis		r3,WdgIf_LTtoPCHashValue@ha		# retVal=r3
	lwz		r0,WdgIf_LTtoPCHashValue@l(r3)		# retVal=r0 retVal=r3
	e_lis		r3,59785		# retVal=r3
	e_or2i		r3,6720		# retVal=r3
	se_cmpl		r0,r3		# retVal=r0 retVal=r3
#    {
#       retVal = E_OK;
	.d2line		234
	isel		r3,0,r0,2		# retVal=r3 retVal=r0
.L438:
#    }
#    else
#    {
#       retVal = E_NOT_OK;
	.d2line		238
.Llo9:
	diab.li		r0,1		# retVal=r0
.Llo10:
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3 retVal=r0
.L439:
#    }
# 
#    return retVal;
	.d2line		241
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		242
	.d2epilogue_begin
.Llo11:
	lwz		r0,20(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L484:
	.type		WdgIf_ConsistencyCheck,@function
	.size		WdgIf_ConsistencyCheck,.-WdgIf_ConsistencyCheck
# Number of nodes = 12

# Allocations for WdgIf_ConsistencyCheck
#	?a4		retVal

# Allocations for module
	.section	.text_vle
	.0byte		.L488
	.section	.text_vle
#$$ld
.L5:
.L495:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgIf\\ssc\\make\\..\\inc\\WdgIf_Types.h"
.L493:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L489:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgIf\\ssc\\make\\..\\inc\\WdgIf.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L446:
.L454:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgIf\\ssc\\make\\..\\src\\WdgIf.c"
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
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
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
	.uleb128	13
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgIf\\ssc\\make\\..\\src\\WdgIf.c"
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
.L443:
	.4byte		.L444-.L442
.L442:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L448-.L443
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgIf\\ssc\\make\\..\\src\\WdgIf.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L445
	.4byte		.L446
	.4byte		.L449
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L458:
	.sleb128	2
	.4byte		.L451-.L443
	.byte		"WdgIf_SetMode"
	.byte		0
	.4byte		.L454
	.uleb128	144
	.uleb128	33
	.4byte		.L455
	.byte		0x1
	.byte		0x1
	.4byte		.L452
	.4byte		.L453
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L454
	.uleb128	144
	.uleb128	33
	.byte		"DeviceIndex"
	.byte		0
	.4byte		.L456
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	4
	.4byte		.L454
	.uleb128	144
	.uleb128	33
	.byte		"WdgMode"
	.byte		0
	.4byte		.L459
	.4byte		.L461
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L462:
	.sleb128	5
	.4byte		.L454
	.uleb128	150
	.uleb128	19
	.byte		"status"
	.byte		0
	.4byte		.L455
	.4byte		.L463
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L451:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L468:
	.sleb128	6
	.4byte		.L465-.L443
	.byte		"WdgIf_SetTriggerCondition"
	.byte		0
	.4byte		.L454
	.uleb128	175
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L466
	.4byte		.L467
	.sleb128	3
	.4byte		.L454
	.uleb128	175
	.uleb128	23
	.byte		"DeviceIndex"
	.byte		0
	.4byte		.L456
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	4
	.4byte		.L454
	.uleb128	175
	.uleb128	23
	.byte		"Timeout"
	.byte		0
	.4byte		.L469
	.4byte		.L471
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L465:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L476:
	.sleb128	6
	.4byte		.L473-.L443
	.byte		"WdgIf_GetVersionInfo"
	.byte		0
	.4byte		.L454
	.uleb128	204
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L474
	.4byte		.L475
	.sleb128	4
	.4byte		.L454
	.uleb128	204
	.uleb128	23
	.byte		"VersionInfoPtr"
	.byte		0
	.4byte		.L477
	.4byte		.L480
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L473:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L485:
	.sleb128	2
	.4byte		.L482-.L443
	.byte		"WdgIf_ConsistencyCheck"
	.byte		0
	.4byte		.L454
	.uleb128	228
	.uleb128	34
	.4byte		.L455
	.byte		0x1
	.byte		0x1
	.4byte		.L483
	.4byte		.L484
.L486:
	.sleb128	5
	.4byte		.L454
	.uleb128	230
	.uleb128	19
	.byte		"retVal"
	.byte		0
	.4byte		.L455
	.4byte		.L487
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L482:
	.section	.debug_info,,n
.L488:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L489
	.uleb128	172
	.uleb128	35
	.byte		"WdgIf_LTtoPCHashValue"
	.byte		0
	.4byte		.L490
	.section	.debug_info,,n
	.section	.debug_info,,n
.L479:
	.sleb128	8
	.4byte		.L493
	.uleb128	9570
	.uleb128	5
	.4byte		.L494-.L2
	.uleb128	8
	.section	.debug_info,,n
.L232:
	.sleb128	9
	.byte		"vendorID"
	.byte		0
	.4byte		.L469
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L233:
	.sleb128	9
	.byte		"moduleID"
	.byte		0
	.4byte		.L469
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L234:
	.sleb128	9
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L456
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L235:
	.sleb128	9
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L456
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L236:
	.sleb128	9
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L456
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L494:
	.section	.debug_info,,n
.L460:
	.sleb128	10
	.4byte		.L495
	.uleb128	66
	.uleb128	14
	.4byte		.L496-.L2
	.byte		"WdgIf_Mode_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"WDGIF_OFF_MODE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"WDGIF_SLOW_MODE"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"WDGIF_FAST_MODE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L496:
	.section	.debug_info,,n
.L457:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L456:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L457
.L455:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L456
.L459:
	.sleb128	13
	.byte		"WdgIf_ModeType"
	.byte		0
	.4byte		.L460
.L470:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L469:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L470
.L478:
	.sleb128	13
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L479
	.section	.debug_info,,n
.L477:
	.sleb128	14
	.4byte		.L478
.L492:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L491:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L492
	.section	.debug_info,,n
.L490:
	.sleb128	15
	.4byte		.L491
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L448:
	.sleb128	0
.L444:

	.section	.debug_loc,,n
	.align	0
.L461:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),4
	.d2locend
.L463:
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo3),3
	.d2locend
.L471:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),4
	.d2locend
.L480:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),3
	.d2locend
.L487:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),0
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "WdgIf_ConsistencyCheck"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "WdgIf_GetVersionInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "WdgIf_SetTriggerCondition"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Wdg_43_Instance1_SetTriggerCondition"
	.wrcm.end
	.wrcm.nelem "WdgIf_SetMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Wdg_43_Instance1_SetMode"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\WdgIf.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\WdgIf.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\WdgIf.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\WdgIf.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\WdgIf.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\WdgIf.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\WDG\WdgIf\ssc\make\..\src\WdgIf.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
