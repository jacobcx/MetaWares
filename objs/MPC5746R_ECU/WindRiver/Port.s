#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Port.c"
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
# FUNC(void, PORT_CODE) Port_Init
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L422:
	.section	.invalid_TEXT,,c
#$$ld
.L418:
	.0byte		.L416
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Port.c"
        .d2line         271,23
#$$ld
.L425:

#$$bf	Port_Init,interprocedural,rasave,nostackparams
	.globl		Port_Init
	.d2_cfa_start __cie
Port_Init:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# ConfigPtr=r31 ConfigPtr=r3
	.d2prologue_end
# (
#     P2CONST(Port_ConfigType, AUTOMATIC, PORT_APPL_CONST) ConfigPtr 
# )
# {
# #if (STD_ON == PORT_DEV_ERROR_DETECT)
# #if (STD_OFF == PORT_PRECOMPILE_SUPPORT)
#     if (NULL_PTR == ConfigPtr)
# #else /*(STD_ON == PORT_PRECOMPILE_SUPPORT) */
#     if (NULL_PTR != ConfigPtr)
# #endif /* (STD_ON == PORT_PRECOMPILE_SUPPORT) */
#     {
#         (void)Det_ReportError((uint16)PORT_MODULE_ID, PORT_INSTANCE_ID, (uint8)PORT_INIT_ID, (uint8)PORT_E_PARAM_CONFIG);
#     }
#     else
# #endif /* (STD_ON == PORT_DEV_ERROR_DETECT) */
#     {
# 
# #if (STD_ON == PORT_PRECOMPILE_SUPPORT)
#         ConfigPtr = &Port_ConfigPC;
# #endif
# 
#         Port_Ipw_Init(ConfigPtr);
	.d2line		293
	mr		r3,r31		# ConfigPtr=r3 ConfigPtr=r31
.Llo2:
	bl		Port_Siul2_Init
# 
#         /*  Save configuration pointer in global variable */
#         Port_pConfig = ConfigPtr;
	.d2line		296
	lis		r3,Port_pConfig@ha		# ConfigPtr=r3
.Llo3:
	e_add16i		r3,r3,Port_pConfig@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r31,0(r3)		# ConfigPtr=r3 ConfigPtr=r31
#     }
# }
	.d2line		298
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo4:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L426:
	.type		Port_Init,@function
	.size		Port_Init,.-Port_Init
# Number of nodes = 7

# Allocations for Port_Init
#	?a4		ConfigPtr
# FUNC(void, PORT_CODE) Port_SetPinDirection
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         318,23
#$$ld
.L436:

#$$bf	Port_SetPinDirection,interprocedural,rasave,nostackparams
	.globl		Port_SetPinDirection
	.d2_cfa_start __cie
Port_SetPinDirection:
.Llo5:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(Port_PinType,           AUTOMATIC) Pin,
#     VAR(Port_PinDirectionType,  AUTOMATIC) Direction
# )
# {
# #if (STD_ON == PORT_DEV_ERROR_DETECT)
#     /* Variable used to store current error status */
#     VAR(Std_ReturnType, AUTOMATIC) ErrStatus = (Std_ReturnType)E_NOT_OK;
# 
#     /* Check if Port module is initialized */
#     if (NULL_PTR == Port_pConfig)
#     {
#         (void)Det_ReportError((uint16)PORT_MODULE_ID, (uint8)PORT_INSTANCE_ID, (uint8)PORT_SETPINDIRECTION_ID, (uint8)PORT_E_UNINIT);
#     }
#     /* Check port pin validity */
#     else if (Pin >= (Port_PinType)Port_pConfig->u16NumPins)
#     {
#         (void)Det_ReportError((uint16)PORT_MODULE_ID, (uint8)PORT_INSTANCE_ID, (uint8)PORT_SETPINDIRECTION_ID, (uint8)PORT_E_PARAM_PIN);
#     }
#     else
# #endif /* PORT_DEV_ERROR_DETECT */
#     {
# #if (STD_ON == PORT_DEV_ERROR_DETECT)
#         ErrStatus = Port_Ipw_SetPinDirection(Pin, (Port_PinDirectionType)Direction, Port_pConfig);
# #else
#         (void)Port_Ipw_SetPinDirection(Pin, (Port_PinDirectionType)Direction, Port_pConfig);
	.d2line		344
	mr		r0,r3		# Pin=r0 Pin=r3
	mr		r0,r4		# Direction=r0 Direction=r4
	lis		r5,Port_pConfig@ha
	lwz		r5,Port_pConfig@l(r5)
	bl		Port_Siul2_SetPinDirection
# #endif
#                         
# #if (STD_ON == PORT_DEV_ERROR_DETECT)
#         if ((Std_ReturnType)E_NOT_OK == ErrStatus)
#         {
#             (void)Det_ReportError((uint16)PORT_MODULE_ID, (uint8)PORT_INSTANCE_ID, (uint8)PORT_SETPINDIRECTION_ID, (uint8)PORT_E_DIRECTION_UNCHANGEABLE);
#         }
# #endif /* (STD_ON == PORT_DEV_ERROR_DETECT) */
#     }
# }
	.d2line		354
	.d2epilogue_begin
.Llo6:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L437:
	.type		Port_SetPinDirection,@function
	.size		Port_SetPinDirection,.-Port_SetPinDirection
# Number of nodes = 8

# Allocations for Port_SetPinDirection
#	?a4		Pin
#	?a5		Direction
# FUNC(void, PORT_CODE) Port_SetPinMode
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         373,23
#$$ld
.L448:

#$$bf	Port_SetPinMode,interprocedural,rasave,nostackparams
	.globl		Port_SetPinMode
	.d2_cfa_start __cie
Port_SetPinMode:
.Llo7:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# ( 
#     VAR(Port_PinType,     AUTOMATIC) Pin,
#     VAR(Port_PinModeType, AUTOMATIC) Mode
# )
# {
# #if (STD_ON == PORT_DEV_ERROR_DETECT)
#     VAR(uint8, AUTOMATIC) u8PinModeError = (uint8)0U;
# 
#     /* Check if port is initialized */
#     if (NULL_PTR == Port_pConfig)
#     {
#         (void)Det_ReportError((uint16)PORT_MODULE_ID, (uint8)PORT_INSTANCE_ID, (uint8)PORT_SETPINMODE_ID, (uint8)PORT_E_UNINIT);
#     }
#     /* Check port pin validity */
#     else if (Pin >= (Port_PinType)Port_pConfig->u16NumPins)
#     {
#         (void)Det_ReportError((uint16)PORT_MODULE_ID, (uint8)PORT_INSTANCE_ID, (uint8)PORT_SETPINMODE_ID, (uint8)PORT_E_PARAM_PIN);
#     }
#     /* Check port pin mode Unchangeable */
#     /** @violates @ref PORT_C_REF_5 MISRA 2004 Required Rule 17.4, Array indexing shall be the only allowed form of pointer */
#     else if((boolean)FALSE == (boolean) Port_pConfig->pUsedPadConfig[Pin].bMC)
#     {
#         (void)Det_ReportError((uint16)PORT_MODULE_ID, (uint8)PORT_INSTANCE_ID, (uint8)PORT_SETPINMODE_ID, (uint8)PORT_E_MODE_UNCHANGEABLE);
#     }
#     else
# #endif /* (STD_ON == PORT_DEV_ERROR_DETECT) */
#     {
#         /* Sets the port pin direction */
# #if (STD_ON == PORT_DEV_ERROR_DETECT)
#         u8PinModeError = (uint8)Port_Ipw_SetPinMode(Pin, Mode, Port_pConfig);
# #else
#         (void)Port_Ipw_SetPinMode(Pin, Mode, Port_pConfig);
	.d2line		405
	rlwinm		r4,r4,0,24,31		# Mode=r4 Mode=r4
.Llo9:
	mr		r0,r3		# Pin=r0 Pin=r3
	lis		r5,Port_pConfig@ha
	lwz		r5,Port_pConfig@l(r5)
	bl		Port_Ipw_SetPinMode
# #endif
# 
# #if (STD_ON == PORT_DEV_ERROR_DETECT)
#         if (PORT_E_PARAM_INVALID_MODE == u8PinModeError)
#         {
#             (void)Det_ReportError((uint16)PORT_MODULE_ID, (uint8)PORT_INSTANCE_ID, (uint8)PORT_SETPINMODE_ID, (uint8)PORT_E_PARAM_INVALID_MODE);
#         }
# #endif /* (STD_ON == PORT_DEV_ERROR_DETECT) */
#     }
# }
	.d2line		415
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
.L449:
	.type		Port_SetPinMode,@function
	.size		Port_SetPinMode,.-Port_SetPinMode
# Number of nodes = 9

# Allocations for Port_SetPinMode
#	?a4		Pin
#	?a5		Mode
# FUNC(void, PORT_CODE) Port_RefreshPortDirection( void )
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         433,23
#$$ld
.L458:

#$$bf	Port_RefreshPortDirection,interprocedural,rasave,nostackparams
	.globl		Port_RefreshPortDirection
	.d2_cfa_start __cie
Port_RefreshPortDirection:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if (STD_ON == PORT_DEV_ERROR_DETECT)
#     /* Check if Port module is initialized */
#     if (NULL_PTR == Port_pConfig)
#     {
#         (void)Det_ReportError((uint16)PORT_MODULE_ID, (uint8)PORT_INSTANCE_ID, (uint8)PORT_REFRESHPINDIRECTION_ID, (uint8)PORT_E_UNINIT);
#     }
#     else
# #endif /* (STD_ON == PORT_DEV_ERROR_DETECT) */
#     {
#         Port_Ipw_RefreshPortDirection(Port_pConfig);
	.d2line		444
	lis		r3,Port_pConfig@ha
	lwz		r3,Port_pConfig@l(r3)
	bl		Port_Siul2_RefreshPortDirection
#     }
# }
	.d2line		446
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
.L459:
	.type		Port_RefreshPortDirection,@function
	.size		Port_RefreshPortDirection,.-Port_RefreshPortDirection
# Number of nodes = 4

# Allocations for Port_RefreshPortDirection
# FUNC(void, PORT_CODE) Port_GetVersionInfo
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         468,23
#$$ld
.L463:

#$$bf	Port_GetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Port_GetVersionInfo
	.d2_cfa_start __cie
Port_GetVersionInfo:
.Llo10:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# versioninfo=r4 versioninfo=r3
	.d2prologue_end
# (
#     P2VAR(Std_VersionInfoType, AUTOMATIC, PORT_APPL_DATA) versioninfo
# )
# {
# #if (STD_ON == PORT_DEV_ERROR_DETECT)
#     if (NULL_PTR == versioninfo)
#     {
#         (void)Det_ReportError((uint16)PORT_MODULE_ID, (uint8)PORT_INSTANCE_ID, (uint8)PORT_GETVERSIONINFO_ID, (uint8)PORT_E_PARAM_POINTER);
#     }
#     else
# #endif /* (STD_ON == PORT_DEV_ERROR_DETECT) */
#     {
#         (versioninfo)->vendorID         = (uint16)PORT_VENDOR_ID;
	.d2line		481
.Llo11:
	diab.li		r3,43
.Llo12:
	sth		r3,0(r4)		# versioninfo=r4
#         (versioninfo)->moduleID         = (uint16)PORT_MODULE_ID;
	.d2line		482
	diab.li		r3,124
	sth		r3,2(r4)		# versioninfo=r4
#         (versioninfo)->sw_major_version = (uint8)PORT_SW_MAJOR_VERSION;
	.d2line		483
	diab.li		r3,1
	stb		r3,4(r4)		# versioninfo=r4
#         (versioninfo)->sw_minor_version = (uint8)PORT_SW_MINOR_VERSION;
	.d2line		484
	diab.li		r3,0
	stb		r3,5(r4)		# versioninfo=r4
#         (versioninfo)->sw_patch_version = (uint8)PORT_SW_PATCH_VERSION;
	.d2line		485
	diab.li		r3,2
	stb		r3,6(r4)		# versioninfo=r4
#     }
# }
	.d2line		487
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo13:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L464:
	.type		Port_GetVersionInfo,@function
	.size		Port_GetVersionInfo,.-Port_GetVersionInfo
# Number of nodes = 28

# Allocations for Port_GetVersionInfo
#	?a4		versioninfo

# Allocations for module
	.section	.mcal_data,,d
	.0byte		.L470
	.section	.mcal_data,,d
	.type		Port_pConfig,@object
	.size		Port_pConfig,4
	.align		2
	.globl		Port_pConfig
Port_pConfig:
	.long		0
	.section	.text_vle
#$$ld
.L5:
.L493:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L472:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Port_Siul2_Types.h"
.L471:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Port.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L419:
.L427:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Port.c"
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
	.uleb128	52
	.byte		0x0
	.uleb128	63
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
	.uleb128	2
	.uleb128	9
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Port.c"
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
.L416:
	.4byte		.L417-.L415
.L415:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L421-.L416
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Port\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Port.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L418
	.4byte		.L419
	.4byte		.L422
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L428:
	.sleb128	2
	.4byte		.L424-.L416
	.byte		"Port_Init"
	.byte		0
	.4byte		.L427
	.uleb128	271
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L425
	.4byte		.L426
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L427
	.uleb128	271
	.uleb128	23
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L429
	.4byte		.L433
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L424:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L438:
	.sleb128	2
	.4byte		.L435-.L416
	.byte		"Port_SetPinDirection"
	.byte		0
	.4byte		.L427
	.uleb128	318
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L436
	.4byte		.L437
	.sleb128	3
	.4byte		.L427
	.uleb128	318
	.uleb128	23
	.byte		"Pin"
	.byte		0
	.4byte		.L439
	.4byte		.L442
	.sleb128	3
	.4byte		.L427
	.uleb128	318
	.uleb128	23
	.byte		"Direction"
	.byte		0
	.4byte		.L443
	.4byte		.L445
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L435:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L450:
	.sleb128	2
	.4byte		.L447-.L416
	.byte		"Port_SetPinMode"
	.byte		0
	.4byte		.L427
	.uleb128	373
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L448
	.4byte		.L449
	.sleb128	3
	.4byte		.L427
	.uleb128	373
	.uleb128	23
	.byte		"Pin"
	.byte		0
	.4byte		.L439
	.4byte		.L451
	.sleb128	3
	.4byte		.L427
	.uleb128	373
	.uleb128	23
	.byte		"Mode"
	.byte		0
	.4byte		.L452
	.4byte		.L455
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L447:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L460:
	.sleb128	2
	.4byte		.L457-.L416
	.byte		"Port_RefreshPortDirection"
	.byte		0
	.4byte		.L427
	.uleb128	433
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L458
	.4byte		.L459
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L457:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L465:
	.sleb128	2
	.4byte		.L462-.L416
	.byte		"Port_GetVersionInfo"
	.byte		0
	.4byte		.L427
	.uleb128	468
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L463
	.4byte		.L464
	.sleb128	3
	.4byte		.L427
	.uleb128	468
	.uleb128	23
	.byte		"versioninfo"
	.byte		0
	.4byte		.L466
	.4byte		.L469
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L462:
	.section	.debug_info,,n
.L470:
	.sleb128	4
	.byte		0x1
	.4byte		.L471
	.uleb128	221
	.uleb128	53
	.byte		"Port_pConfig"
	.byte		0
	.4byte		.L429
	.sleb128	5
	.byte		0x3
	.4byte		Port_pConfig
	.section	.debug_info,,n
	.section	.debug_info,,n
.L432:
	.sleb128	5
	.4byte		.L472
	.uleb128	129
	.uleb128	1
	.4byte		.L473-.L2
	.uleb128	20
	.section	.debug_info,,n
.L229:
	.sleb128	6
	.byte		"u16NumPins"
	.byte		0
	.4byte		.L474
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L230:
	.sleb128	6
	.byte		"u16NumUnusedPins"
	.byte		0
	.4byte		.L474
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L231:
	.sleb128	6
	.byte		"au16UnusedPads"
	.byte		0
	.4byte		.L476
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L232:
	.sleb128	6
	.byte		"pUnusedPadConfig"
	.byte		0
	.4byte		.L478
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L233:
	.sleb128	6
	.byte		"pUsedPadConfig"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L234:
	.sleb128	6
	.byte		"pPadSelConfig"
	.byte		0
	.4byte		.L486
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L473:
.L481:
	.sleb128	5
	.4byte		.L472
	.uleb128	129
	.uleb128	1
	.4byte		.L489-.L2
	.uleb128	8
.L227:
	.sleb128	6
	.byte		"u32MSCR"
	.byte		0
	.4byte		.L440
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L228:
	.sleb128	6
	.byte		"u8PDO"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L489:
.L485:
	.sleb128	5
	.4byte		.L472
	.uleb128	129
	.uleb128	1
	.4byte		.L490-.L2
	.uleb128	20
.L219:
	.sleb128	6
	.byte		"u16SIUPin"
	.byte		0
	.4byte		.L491
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L220:
	.sleb128	6
	.byte		"u32MSCR"
	.byte		0
	.4byte		.L440
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L221:
	.sleb128	6
	.byte		"u32ODC"
	.byte		0
	.4byte		.L440
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L222:
	.sleb128	6
	.byte		"u8PDO"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L223:
	.sleb128	6
	.byte		"u8PDDir"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L224:
	.sleb128	6
	.byte		"bGPIO"
	.byte		0
	.4byte		.L492
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L225:
	.sleb128	6
	.byte		"bDC"
	.byte		0
	.4byte		.L492
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L226:
	.sleb128	6
	.byte		"bMC"
	.byte		0
	.4byte		.L492
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L490:
.L468:
	.sleb128	5
	.4byte		.L493
	.uleb128	1936
	.uleb128	5
	.4byte		.L494-.L2
	.uleb128	8
.L214:
	.sleb128	6
	.byte		"vendorID"
	.byte		0
	.4byte		.L474
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L215:
	.sleb128	6
	.byte		"moduleID"
	.byte		0
	.4byte		.L474
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L216:
	.sleb128	6
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L217:
	.sleb128	6
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L218:
	.sleb128	6
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L494:
	.section	.debug_info,,n
.L444:
	.sleb128	7
	.4byte		.L472
	.uleb128	129
	.uleb128	1
	.4byte		.L495-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	8
	.byte		"PORT_PIN_IN"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"PORT_PIN_OUT"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"PORT_PIN_INOUT"
	.byte		0
	.sleb128	2
	.sleb128	0
.L495:
	.section	.debug_info,,n
.L431:
	.sleb128	9
	.byte		"Port_ConfigType"
	.byte		0
	.4byte		.L432
	.section	.debug_info,,n
.L430:
	.sleb128	10
	.4byte		.L431
	.section	.debug_info,,n
.L429:
	.sleb128	11
	.4byte		.L430
	.section	.debug_info,,n
.L441:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L440:
	.sleb128	9
	.byte		"uint32"
	.byte		0
	.4byte		.L441
.L439:
	.sleb128	9
	.byte		"Port_PinType"
	.byte		0
	.4byte		.L440
.L443:
	.sleb128	9
	.byte		"Port_PinDirectionType"
	.byte		0
	.4byte		.L444
.L454:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L453:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L454
.L452:
	.sleb128	9
	.byte		"Port_PinModeType"
	.byte		0
	.4byte		.L453
.L467:
	.sleb128	9
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L468
.L466:
	.sleb128	11
	.4byte		.L467
.L475:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L474:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L475
.L477:
	.sleb128	10
	.4byte		.L474
.L476:
	.sleb128	11
	.4byte		.L477
.L480:
	.sleb128	9
	.byte		"Port_Siul2_UnUsedPinConfigType"
	.byte		0
	.4byte		.L481
.L479:
	.sleb128	10
	.4byte		.L480
.L478:
	.sleb128	11
	.4byte		.L479
.L484:
	.sleb128	9
	.byte		"Port_Siul2_PinConfigType"
	.byte		0
	.4byte		.L485
.L483:
	.sleb128	10
	.4byte		.L484
.L482:
	.sleb128	11
	.4byte		.L483
.L488:
	.sleb128	9
	.byte		"Port_Siul2_PadSelConfigType"
	.byte		0
	.4byte		.L440
.L487:
	.sleb128	10
	.4byte		.L488
.L486:
	.sleb128	11
	.4byte		.L487
.L491:
	.sleb128	9
	.byte		"Port_InternalPinIdType"
	.byte		0
	.4byte		.L474
.L492:
	.sleb128	9
	.byte		"boolean"
	.byte		0
	.4byte		.L454
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L421:
	.sleb128	0
.L417:

	.section	.debug_loc,,n
	.align	0
.L433:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L442:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L445:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),4
	.d2locend
.L451:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L455:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo9),4
	.d2locend
.L469:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Port_GetVersionInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Port_RefreshPortDirection"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Port_Siul2_RefreshPortDirection"
	.wrcm.end
	.wrcm.nelem "Port_SetPinMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Port_Ipw_SetPinMode"
	.wrcm.end
	.wrcm.nelem "Port_SetPinDirection"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Port_Siul2_SetPinDirection"
	.wrcm.end
	.wrcm.nelem "Port_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Port_Siul2_Init"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Port.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Port.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Port.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Port.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Port.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Port.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Port\ssc\make\..\..\generator\integration_package\src\Port.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
