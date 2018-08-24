#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Wdg_43_Instance1.c"
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
# FUNC(void, WDG_CODE) Wdg_43_Instance1_Init(P2CONST(Wdg_ConfigType, AUTOMATIC, WDG_APPL_CONST) pConfigPtr)
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L442:
	.section	.invalid_TEXT,,c
#$$ld
.L438:
	.0byte		.L436
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Wdg_43_Instance1.c"
        .d2line         184,22
#$$ld
.L445:

#$$bf	Wdg_43_Instance1_Init,interprocedural,rasave,nostackparams
	.globl		Wdg_43_Instance1_Init
	.d2_cfa_start __cie
Wdg_43_Instance1_Init:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     Wdg_ChannelInit(pConfigPtr, WDG_IPW_INSTANCE1);
	.d2line		186
	mr		r0,r3		# pConfigPtr=r0 pConfigPtr=r3
	diab.li		r4,1
	bl		Wdg_ChannelInit
# }
	.d2line		187
	.d2epilogue_begin
.Llo2:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L446:
	.type		Wdg_43_Instance1_Init,@function
	.size		Wdg_43_Instance1_Init,.-Wdg_43_Instance1_Init
# Number of nodes = 6

# Allocations for Wdg_43_Instance1_Init
#	?a4		pConfigPtr
# FUNC(Std_ReturnType, WDG_CODE) Wdg_43_Instance1_SetMode(WdgIf_ModeType Mode)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         218,32
#$$ld
.L456:

#$$bf	Wdg_43_Instance1_SetMode,interprocedural,rasave,nostackparams
	.globl		Wdg_43_Instance1_SetMode
	.d2_cfa_start __cie
Wdg_43_Instance1_SetMode:
.Llo3:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     return Wdg_ChannelSetMode(Mode, WDG_IPW_INSTANCE1);
	.d2line		220
	mr		r0,r3		# Mode=r0 Mode=r3
	diab.li		r4,1
	bl		Wdg_ChannelSetMode
.Llo4:
	rlwinm		r3,r3,0,24,31
# }
	.d2line		221
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L457:
	.type		Wdg_43_Instance1_SetMode,@function
	.size		Wdg_43_Instance1_SetMode,.-Wdg_43_Instance1_SetMode
# Number of nodes = 7

# Allocations for Wdg_43_Instance1_SetMode
#	?a4		Mode
# FUNC(void, WDG_CODE) Wdg_43_Instance1_SetTriggerCondition(uint16 u16Timeout)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         238,22
#$$ld
.L467:

#$$bf	Wdg_43_Instance1_SetTriggerCondition,interprocedural,rasave,nostackparams
	.globl		Wdg_43_Instance1_SetTriggerCondition
	.d2_cfa_start __cie
Wdg_43_Instance1_SetTriggerCondition:
.Llo5:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     Wdg_ChannelSetTriggerCondition(u16Timeout, WDG_IPW_INSTANCE1);
	.d2line		240
	rlwinm		r3,r3,0,16,31		# u16Timeout=r3 u16Timeout=r3
.Llo6:
	diab.li		r4,1
	bl		Wdg_ChannelSetTriggerCondition
# }
	.d2line		241
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L468:
	.type		Wdg_43_Instance1_SetTriggerCondition,@function
	.size		Wdg_43_Instance1_SetTriggerCondition,.-Wdg_43_Instance1_SetTriggerCondition
# Number of nodes = 7

# Allocations for Wdg_43_Instance1_SetTriggerCondition
#	?a4		u16Timeout
# FUNC(void, WDG_CODE) Wdg_43_Instance1_GetVersionInfo(P2VAR(Std_VersionInfoType, AUTOMATIC, WDG_APPL_DATA) pVersioninfo)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         266,22
#$$ld
.L475:

#$$bf	Wdg_43_Instance1_GetVersionInfo,interprocedural,rasave,nostackparams
	.globl		Wdg_43_Instance1_GetVersionInfo
	.d2_cfa_start __cie
Wdg_43_Instance1_GetVersionInfo:
.Llo7:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     Wdg_ChannelGetVersionInfo(pVersioninfo, WDG_IPW_INSTANCE1);
	.d2line		268
	mr		r0,r3		# pVersioninfo=r0 pVersioninfo=r3
	diab.li		r4,1
	bl		Wdg_ChannelGetVersionInfo
# }
	.d2line		269
	.d2epilogue_begin
.Llo8:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L476:
	.type		Wdg_43_Instance1_GetVersionInfo,@function
	.size		Wdg_43_Instance1_GetVersionInfo,.-Wdg_43_Instance1_GetVersionInfo
# Number of nodes = 6

# Allocations for Wdg_43_Instance1_GetVersionInfo
#	?a4		pVersioninfo

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L509:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgIf\\ssc\\make\\..\\inc\\WdgIf_Types.h"
.L507:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Wdg_IPW_Types.h"
.L505:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L503:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Gpt.h"
.L482:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Wdg_Channel.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L439:
.L447:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Wdg_43_Instance1.c"
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
	.uleb128	6
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	38
	.byte		0x0
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Wdg_43_Instance1.c"
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
.L436:
	.4byte		.L437-.L435
.L435:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L441-.L436
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Wdg_43_Instance1.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L438
	.4byte		.L439
	.4byte		.L442
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L448:
	.sleb128	2
	.4byte		.L444-.L436
	.byte		"Wdg_43_Instance1_Init"
	.byte		0
	.4byte		.L447
	.uleb128	184
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L445
	.4byte		.L446
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L447
	.uleb128	184
	.uleb128	22
	.byte		"pConfigPtr"
	.byte		0
	.4byte		.L449
	.4byte		.L453
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L444:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L461:
	.sleb128	4
	.4byte		.L455-.L436
	.byte		"Wdg_43_Instance1_SetMode"
	.byte		0
	.4byte		.L447
	.uleb128	218
	.uleb128	32
	.4byte		.L458
	.byte		0x1
	.byte		0x1
	.4byte		.L456
	.4byte		.L457
	.sleb128	3
	.4byte		.L447
	.uleb128	218
	.uleb128	32
	.byte		"Mode"
	.byte		0
	.4byte		.L462
	.4byte		.L464
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L455:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L469:
	.sleb128	2
	.4byte		.L466-.L436
	.byte		"Wdg_43_Instance1_SetTriggerCondition"
	.byte		0
	.4byte		.L447
	.uleb128	238
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L467
	.4byte		.L468
	.sleb128	3
	.4byte		.L447
	.uleb128	238
	.uleb128	22
	.byte		"u16Timeout"
	.byte		0
	.4byte		.L470
	.4byte		.L472
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L466:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L477:
	.sleb128	2
	.4byte		.L474-.L436
	.byte		"Wdg_43_Instance1_GetVersionInfo"
	.byte		0
	.4byte		.L447
	.uleb128	266
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L475
	.4byte		.L476
	.sleb128	3
	.4byte		.L447
	.uleb128	266
	.uleb128	22
	.byte		"pVersioninfo"
	.byte		0
	.4byte		.L478
	.4byte		.L481
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L474:
	.section	.debug_info,,n
.L452:
	.sleb128	5
	.4byte		.L482
	.uleb128	197
	.uleb128	14
	.4byte		.L483-.L2
	.uleb128	32
	.section	.debug_info,,n
.L425:
	.sleb128	6
	.byte		"Wdg_DefaultMode"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L426:
	.sleb128	6
	.byte		"Wdg_Instance"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L427:
	.sleb128	6
	.byte		"Wdg_TimerChannel"
	.byte		0
	.4byte		.L488
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L428:
	.sleb128	6
	.byte		"Wdg_u32TriggerSourceClock"
	.byte		0
	.4byte		.L490
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L429:
	.sleb128	6
	.byte		"Wdg_ModeSettings"
	.byte		0
	.4byte		.L493
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L430:
	.sleb128	6
	.byte		"Wdg_CallbackPtr"
	.byte		0
	.4byte		.L499
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L483:
.L498:
	.sleb128	5
	.4byte		.L503
	.uleb128	336
	.uleb128	1
	.4byte		.L504-.L2
	.uleb128	20
.L420:
	.sleb128	6
	.byte		"Swt_u32Config"
	.byte		0
	.4byte		.L491
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L421:
	.sleb128	6
	.byte		"Swt_u32Timeout"
	.byte		0
	.4byte		.L491
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L422:
	.sleb128	6
	.byte		"Swt_u32Window"
	.byte		0
	.4byte		.L491
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L423:
	.sleb128	6
	.byte		"Swt_u32InitialKey"
	.byte		0
	.4byte		.L491
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L424:
	.sleb128	6
	.byte		"Wdg_u32InternalTimerClock"
	.byte		0
	.4byte		.L491
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L504:
.L480:
	.sleb128	5
	.4byte		.L505
	.uleb128	9570
	.uleb128	5
	.4byte		.L506-.L2
	.uleb128	8
.L232:
	.sleb128	6
	.byte		"vendorID"
	.byte		0
	.4byte		.L470
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L233:
	.sleb128	6
	.byte		"moduleID"
	.byte		0
	.4byte		.L470
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L234:
	.sleb128	6
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L459
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L235:
	.sleb128	6
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L459
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L236:
	.sleb128	6
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L459
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L506:
	.section	.debug_info,,n
.L487:
	.sleb128	7
	.4byte		.L507
	.uleb128	118
	.uleb128	14
	.4byte		.L508-.L2
	.byte		"Wdg_IPW_InstanceType"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	8
	.byte		"WDG_IPW_INSTANCE0"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"WDG_IPW_INSTANCE1"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"WDG_IPW_INSTANCE2"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"WDG_IPW_INSTANCE3"
	.byte		0
	.sleb128	3
	.sleb128	0
.L508:
.L463:
	.sleb128	7
	.4byte		.L509
	.uleb128	66
	.uleb128	14
	.4byte		.L510-.L2
	.byte		"WdgIf_Mode_Tag"
	.byte		0
	.uleb128	4
	.sleb128	8
	.byte		"WDGIF_OFF_MODE"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"WDGIF_SLOW_MODE"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"WDGIF_FAST_MODE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L510:
	.section	.debug_info,,n
.L451:
	.sleb128	9
	.byte		"Wdg_ConfigType"
	.byte		0
	.4byte		.L452
	.section	.debug_info,,n
.L450:
	.sleb128	10
	.4byte		.L451
	.section	.debug_info,,n
.L449:
	.sleb128	11
	.4byte		.L450
	.section	.debug_info,,n
.L460:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L459:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L460
.L458:
	.sleb128	9
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L459
.L462:
	.sleb128	9
	.byte		"WdgIf_ModeType"
	.byte		0
	.4byte		.L463
.L471:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L470:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L471
.L479:
	.sleb128	9
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L480
.L478:
	.sleb128	11
	.4byte		.L479
.L484:
	.sleb128	10
	.4byte		.L462
.L486:
	.sleb128	9
	.byte		"Wdg_IPW_InstanceType"
	.byte		0
	.4byte		.L487
.L485:
	.sleb128	10
	.4byte		.L486
.L489:
	.sleb128	9
	.byte		"Gpt_ChannelType"
	.byte		0
	.4byte		.L459
.L488:
	.sleb128	10
	.4byte		.L489
.L492:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L491:
	.sleb128	9
	.byte		"uint32"
	.byte		0
	.4byte		.L492
.L490:
	.sleb128	10
	.4byte		.L491
.L497:
	.sleb128	9
	.byte		"Wdg_Swt_ConfigType"
	.byte		0
	.4byte		.L498
.L496:
	.sleb128	10
	.4byte		.L497
.L495:
	.sleb128	11
	.4byte		.L496
	.section	.debug_info,,n
.L493:
	.sleb128	13
	.4byte		.L494-.L2
	.4byte		.L495
	.section	.debug_info,,n
	.sleb128	14
	.uleb128	2
	.sleb128	0
.L494:
	.section	.debug_info,,n
.L501:
	.sleb128	15
	.4byte		.L502-.L2
	.byte		0x1
	.sleb128	0
.L502:
.L500:
	.sleb128	11
	.4byte		.L501
.L499:
	.sleb128	9
	.byte		"Wdg_CallbackPtrType"
	.byte		0
	.4byte		.L500
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L441:
	.sleb128	0
.L437:

	.section	.debug_loc,,n
	.align	0
.L453:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L464:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L472:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L481:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Wdg_43_Instance1_GetVersionInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Wdg_ChannelGetVersionInfo"
	.wrcm.end
	.wrcm.nelem "Wdg_43_Instance1_SetTriggerCondition"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Wdg_ChannelSetTriggerCondition"
	.wrcm.end
	.wrcm.nelem "Wdg_43_Instance1_SetMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Wdg_ChannelSetMode"
	.wrcm.end
	.wrcm.nelem "Wdg_43_Instance1_Init"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Wdg_ChannelInit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Wdg_43_Instance1.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Wdg_43_Instance1.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Wdg_43_Instance1.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Wdg_43_Instance1.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Wdg_43_Instance1.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Wdg_43_Instance1.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Wdg\ssc\make\..\..\generator\integration_package\src\Wdg_43_Instance1.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
