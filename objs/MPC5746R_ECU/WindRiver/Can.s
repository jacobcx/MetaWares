#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Can.c"
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
# FUNC(void, CAN_CODE) Can_GetVersionInfo( P2VAR(Std_VersionInfoType, AUTOMATIC, CAN_APPL_DATA) versioninfo)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Can.c"
        .d2line         301,22
#$$ld
.L680:

#$$bf	Can_GetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Can_GetVersionInfo
	.d2_cfa_start __cie
Can_GetVersionInfo:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# versioninfo=r4 versioninfo=r3
	.d2prologue_end
# {
# 
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     /*
#     (CAN177) If development error detection for the Can module is enabled: The function Can_GetVersionInfo shall
#                  raise the error CAN_E_PARAM_POINTER if the parameter versionInfo is a null pointer.
#     */
#     if ( NULL_PTR == versioninfo )
#     {
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_GET_VERSION_INFO, (uint8)CAN_E_PARAM_POINTER);
#     }
#     else
#     {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#         /*
#         (CAN105) The function Can_GetVersionInfo shall return the version information of this module. The version information
#                      includes: Module Id, Vendor Id, Vendor specific version numbers.
#         */
#         versioninfo->vendorID         = (uint16)CAN_VENDOR_ID;
	.d2line		321
.Llo2:
	diab.li		r3,43
.Llo3:
	sth		r3,0(r4)		# versioninfo=r4
#         versioninfo->moduleID         = (uint16)CAN_MODULE_ID;
	.d2line		322
	diab.li		r3,80
	sth		r3,2(r4)		# versioninfo=r4
#         versioninfo->sw_major_version = (uint8)CAN_SW_MAJOR_VERSION;
	.d2line		323
	diab.li		r3,1
	stb		r3,4(r4)		# versioninfo=r4
#         versioninfo->sw_minor_version = (uint8)CAN_SW_MINOR_VERSION;
	.d2line		324
	diab.li		r3,0
	stb		r3,5(r4)		# versioninfo=r4
#         versioninfo->sw_patch_version = (uint8)CAN_SW_PATCH_VERSION;
	.d2line		325
	diab.li		r3,2
	stb		r3,6(r4)		# versioninfo=r4
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# }
	.d2line		329
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
.L681:
	.type		Can_GetVersionInfo,@function
	.size		Can_GetVersionInfo,.-Can_GetVersionInfo
# Number of nodes = 28

# Allocations for Can_GetVersionInfo
#	?a4		versioninfo
# FUNC(void, CAN_CODE) Can_Init( P2CONST(Can_ConfigType, AUTOMATIC, CAN_APPL_CONST) Config)
	.align		2
	.section	.text_vle
        .d2line         352,22
#$$ld
.L690:

#$$bf	Can_Init,interprocedural,rasave,nostackparams
	.globl		Can_Init
	.d2_cfa_start __cie
Can_Init:
.Llo5:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Config=r3 Config=r3
	.d2prologue_end
# {
#     /* Variable for indexing the controllers. */
#     VAR(uint8, AUTOMATIC) can_controller = 0U;
	.d2line		355
	diab.li		r31,0		# can_controller=r31
# 
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     /*
#        (CAN027) Detected development errors shall be reported to the Det_ReportError service of the Development Error Tracer (DET)
#                if the pre-processor switch CanDevErrorDetection is set.
#        (CAN083) If the CanDevErrorDetection switch is enabled API parameter checking is enabled.
#        (CAN028)Development Errors call the Development Error Tracer when DET is switched on and the Can module detects an error.
# 
#     */
#     if ( CAN_READY == Can_eDriverStatus )
#     {
#         /*
#         (CAN247) The Can module environment shall call Can_Init at most once during runtime.
#         (CAN091) After return of the DET the Can module function that raised the development error shall return immediately.
#         (CAN174) If development error detection for the Can module is enabled: The function Can_Init shall raise the
#                    error CAN_E_TRANSITION if the driver is not in 'uninitialized' state.
#         (CAN248) The function Can_Init shall report the error CAN_E_UNINIT, if Can_Init was called prior to any Can module function.
#         */
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_INIT, (uint8)CAN_E_TRANSITION);
#     }
#     else
#     {
# #if (CAN_PRECOMPILE_SUPPORT == STD_ON)
# 
#         /* Update config pointer with default configuration if precompile support on. */
#         Can_pCurrentConfig = (NULL_PTR == Config) ? &Can_ConfigSet_PC : Config;
#         Can_pControlerDescriptors = Can_pCurrentConfig->ControlerDescriptors;
# 
# #endif /* #if (CAN_PRECOMPILE_SUPPORT == STD_ON) */
# #if (CAN_PRECOMPILE_SUPPORT == STD_OFF)
#         if (NULL_PTR == Config)
#         {
#             /*
#             (CAN175) If development error detection for the Can module is enabled: The function Can_Init shall raise the
#                        error CAN_E_PARAM_POINTER if a NULL pointer was given as config parameter.
#             */
#             (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_INIT, (uint8)CAN_E_PARAM_POINTER);
#         }
#         else
#         {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# #endif /* CAN_PRECOMPILE_SUPPORT */
# 
# #if (CAN_PRECOMPILE_SUPPORT == STD_OFF)
#             /* Copy pointer to current Can Driver configuration. */
#             Can_pCurrentConfig = Config;
	.d2line		402
	lis		r4,Can_pCurrentConfig@ha
	e_add16i		r4,r4,Can_pCurrentConfig@l
	stw		r3,0(r4)		# Config=r3
#             Can_pControlerDescriptors = Config->ControlerDescriptors;
	.d2line		403
	lwz		r0,12(r3)		# Config=r3
	lis		r3,Can_pControlerDescriptors@ha		# Config=r3
	e_add16i		r3,r3,Can_pControlerDescriptors@l		# Config=r3 Config=r3
	stw		r0,0(r3)		# Config=r3
# #else
#             /* Update config pointer with default configuration if precompile support on. */
#             Can_pCurrentConfig = (NULL_PTR == Config) ? &Can_ConfigSet_PC : Config;
#             Can_pControlerDescriptors = Can_pCurrentConfig->ControlerDescriptors;
#         
# #endif /* CAN_PRECOMPILE_SUPPORT */
#             CanStatic_pCurrentConfig = &CanStatic_ConfigSet;
	.d2line		410
	lis		r3,CanStatic_ConfigSet@ha		# Config=r3
	e_add16i		r3,r3,CanStatic_ConfigSet@l		# Config=r3 Config=r3
	lis		r4,CanStatic_pCurrentConfig@ha
	e_add16i		r4,r4,CanStatic_pCurrentConfig@l
	stw		r3,0(r4)		# Config=r3
#             CanStatic_pControlerDescriptors = CanStatic_pCurrentConfig->StaticControlerDescriptors;
	.d2line		411
	lis		r3,(CanStatic_ConfigSet+4)@ha		# Config=r3
	lwz		r0,(CanStatic_ConfigSet+4)@l(r3)		# Config=r3
	lis		r3,CanStatic_pControlerDescriptors@ha		# Config=r3
	e_add16i		r3,r3,CanStatic_pControlerDescriptors@l		# Config=r3 Config=r3
	stw		r0,0(r3)		# Config=r3
# 
#             /* Initialisation of usefull indicators. */
#             Can_IPW_InitVariables();
	.d2line		414
	bl		Can_FlexCan_InitVariables
# 
# #if (STD_ON == CAN_ENABLE_USER_MODE_SUPPORT)
#     #ifdef CAN_HAS_CONTROLLER_UNDER_REG_PROT
#             Can_IPW_SetUserAccessAllowed();
#     #endif
# #endif
# 
#             /* Loop through all Can controllers configured based CanControllerId parameter. */
#             for ( can_controller = 0U; can_controller < (uint8)CanStatic_pCurrentConfig->u8ControllersConfigured; can_controller++)
.L630:
	.d2line		423
.Llo6:
	rlwinm		r0,r31,0,24,31		# can_controller=r31
	lis		r3,CanStatic_pCurrentConfig@ha		# Config=r3
.Llo7:
	lwz		r3,CanStatic_pCurrentConfig@l(r3)		# Config=r3 Config=r3
	lbz		r3,0(r3)		# Config=r3 Config=r3
	se_cmp		r0,r3		# Config=r3
	bc		0,0,.L629	# ge
#             {
#                 /* The initialization is skipped for the controllers that are not enabled. */
#                 /* @violates @ref Can_c_REF_4 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                 if ( CAN_NULL_OFFSET != (CanStatic_pControlerDescriptors[can_controller].u8ControllerOffset))
	.d2line		427
.Llo8:
	lis		r3,CanStatic_pControlerDescriptors@ha		# Config=r3
.Llo9:
	lwz		r3,CanStatic_pControlerDescriptors@l(r3)		# Config=r3 Config=r3
	rlwinm		r0,r31,0,24,31		# can_controller=r31
	e_mulli		r0,r0,20
	lbzx		r0,r3,r0		# Config=r3
	cmpi		0,0,r0,255
	bc		1,2,.L633	# eq
#                 {
#                     /* Init - ControllerState, uFirstHrhIndex, HthOffset, DefaultConfigIndex, u8MaxMBCount, Freeze controller and more ... */
#                     /*
#                        (CAN239) The function Can_Init shall initialize all on-chip hardware resources that are used by the CAN controller.
#                     */
#                     Can_IPW_Init( can_controller);
	.d2line		433
.Llo10:
	rlwinm		r3,r31,0,24,31		# Config=r3 can_controller=r31
	bl		Can_FlexCan_Init
# 
#                     /*
#                         (CAN250) The function Can_Init shall initialize: static variables, including flags, Common setting for the
#                                complete CAN HW unit, CAN controller specific settings for each CAN controller.
#                        (CAN245) The function Can_Init shall initialize all CAN controllers according to their configuration.
#                        (CAN053) Can module/controller initalization - registers of CAN controller hardware resources that are not used.
#                     */
#                     (void)Can_IPW_ChangeBaudrate( can_controller);
	.d2line		441
	rlwinm		r3,r31,0,24,31		# Config=r3 can_controller=r31
	bl		Can_FlexCan_ChangeBaudrate
.L633:
#                 }
#             }
	.d2line		443
	diab.addi		r0,r31,1		# can_controller=r31
	se_addi		r31,1		# can_controller=r31 can_controller=r31
	b		.L630
.L629:
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#             /*
#               (CAN246) After initializing all controllers inside the HW Unit, the function Can_Init shall change the module state to CAN_READY.
#             */
#             Can_eDriverStatus = CAN_READY;
# #if (CAN_PRECOMPILE_SUPPORT == STD_OFF)
#     #if (CAN_DEV_ERROR_DETECT == STD_ON)
#         }
#     #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# #endif /* # CAN_PRECOMPILE_SUPPORT */
#     }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# }
	.d2line		456
	.d2epilogue_begin
.Llo11:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L691:
	.type		Can_Init,@function
	.size		Can_Init,.-Can_Init
# Number of nodes = 57

# Allocations for Can_Init
#	?a4		Config
#	?a5		can_controller
# FUNC(Std_ReturnType, CAN_CODE) Can_ChangeBaudrate( VAR(uint8, AUTOMATIC) Controller, CONST(uint16, AUTOMATIC) Baudrate)
	.align		2
	.section	.text_vle
        .d2line         481,32
#$$ld
.L704:

#$$bf	Can_ChangeBaudrate,interprocedural,rasave,nostackparams
	.globl		Can_ChangeBaudrate
	.d2_cfa_start __cie
Can_ChangeBaudrate:
.Llo12:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Controller=r3 Controller=r3
	mr		r0,r4		# Baudrate=r0 Baudrate=r4
	.d2prologue_end
# {
#     /* Returns the result of change baudrate*/
#     VAR(Std_ReturnType, AUTOMATIC) eReturnValue = (uint8)E_NOT_OK;
	.d2line		484
	diab.li		r4,1		# eReturnValue=r4
#     VAR(uint8, AUTOMATIC) u8BaudrateIndex = 0U;
	.d2line		485
.Llo14:
	diab.li		r5,0		# u8BaudrateIndex=r5
# 
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     /* If Can_eDriverStatus is CAN_UNINIT then the driver was not initialised yet. */
#     if ( CAN_UNINIT == Can_eDriverStatus )
#     {
#         /*
#            (CAN450) If development error detection for the Can module is enabled: The function Can_ChangeBaudrate shall raise the
#                    error CAN_E_UNINIT if the driver is not yet initialized.
#         */
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_CHANGE_BAUDRATE, (uint8)CAN_E_UNINIT);
#     }
#     else
#     {
#         /* The Controller ID must be within range and the selected controller must be configured for use in the config tool. */
# 
#         if ( (Controller >= (uint8)CanStatic_pCurrentConfig->u8ControllersConfigured) ||
#         /* @violates @ref Can_c_REF_4 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#              (CAN_NULL_OFFSET == (CanStatic_pControlerDescriptors[Controller].u8ControllerOffset)) 
#            )
#         {
#             /*
#                (CAN452) If development error detection for the Can module is enabled: The function Can_ChangeBaudrate shall raise the
#                        error CAN_E_PARAM_CONTROLLER if the parameter Controller is out of range.
#             */
#             
#             (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_CHANGE_BAUDRATE, (uint8)CAN_E_PARAM_CONTROLLER);
#         }
#         else
#         {
#             if ( CAN_STOPPED != Can_ControllerStatuses[Controller].ControllerState )
#             {
#                 /*
#                   (CAN453) If development error detection for the Can module is enabled: if the controller is not in state CANIF_CS_STOPPED,
#                            the function Can_ChangeBaudrate shall raise the error CAN_E_TRANSITION.
#                   (CAN256) The Can module environment shall only call Can_ChangeBaudrate when the CAN controller is in state CANIF_CS_STOPPED.
#                 */
#                     
#                 (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_CHANGE_BAUDRATE, (uint8)CAN_E_TRANSITION);
#             }
#             else
#             {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# 
#                 /* Check the Baudrate */
#                 /* @violates @ref Can_c_REF_4 Violates MISRA 2004 Advisory Rule 17.4 */
#                 for ( u8BaudrateIndex = 0U; u8BaudrateIndex < Can_pControlerDescriptors[Controller].u8MaxBaudRateCount; u8BaudrateIndex++)
.L638:
	.d2line		532
.Llo15:
	rlwinm		r7,r3,0,24,31		# Controller=r3
	rlwinm		r31,r5,0,24,31		# u8BaudrateIndex=r5
	lis		r6,Can_pControlerDescriptors@ha
	lwz		r6,Can_pControlerDescriptors@l(r6)
	rlwinm		r30,r7,4,0,27
	se_slwi		r7,2
	subf		r7,r7,r30
	se_add		r6,r7
	lbz		r6,1(r6)
	se_cmp		r31,r6
	bc		0,0,.L642	# ge
#                 {
#                     /* @violates @ref Can_c_REF_4 Violates MISRA 2004 Advisory Rule 17.4 */
#                     if (Baudrate == (uint16)(Can_pControlerDescriptors[Controller].pControllerBaudrateConfigsPtr[u8BaudrateIndex].u16ControllerBaudRate))
	.d2line		535
	rlwinm		r7,r3,0,24,31		# Controller=r3
	rlwinm		r31,r0,0,16,31		# Baudrate=r0
	lis		r6,Can_pControlerDescriptors@ha
	lwz		r6,Can_pControlerDescriptors@l(r6)
	rlwinm		r30,r7,4,0,27
	se_slwi		r7,2
	subf		r7,r7,r30
	se_add		r6,r7
	lwz		r7,4(r6)
	rlwinm		r6,r5,3,21,28		# u8BaudrateIndex=r5
	se_add		r6,r7
	lhz		r6,6(r6)
	se_cmp		r31,r6
	bc		0,2,.L641	# ne
#                     {
#                         /* Baudrate is Valid */                                        
#                         /* Copy the index of Valid Baudrate into the Can_ControllerStatuses as u8CurrentBaudRateIndex */
#                         Can_ControllerStatuses[Controller].u8CurrentBaudRateIndex = u8BaudrateIndex;
	.d2line		539
	lis		r4,(Can_ControllerStatuses+228)@ha		# eReturnValue=r4
	e_add16i		r4,r4,(Can_ControllerStatuses+228)@l		# eReturnValue=r4 eReturnValue=r4
	rlwinm		r7,r3,0,24,31		# Controller=r3
	e_mulli		r7,r7,232
	stbx		r5,r4,r7		# eReturnValue=r4 u8BaudrateIndex=r5
# 
#                         eReturnValue = (uint8)E_OK;
	.d2line		541
	diab.li		r4,0		# eReturnValue=r4
	b		.L642
.L641:
#                         break;
#                     }
#                 }
	.d2line		544
	diab.addi		r6,r5,1		# u8BaudrateIndex=r5
	se_addi		r5,1		# u8BaudrateIndex=r5 u8BaudrateIndex=r5
	b		.L638
.L642:
#                 
#                 if ( (uint8)E_OK != eReturnValue )
	.d2line		546
.Llo16:
	rlwinm		r0,r4,0,24,31		# Baudrate=r0 eReturnValue=r4
.Llo17:
	se_cmpi		r0,0		# Baudrate=r0
	bc		0,2,.L644	# ne
#                 {
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#                     /*
#                     (CAN451) If development error detection for the Can module is enabled: The function Can_ChangeBaudrate shall raise
#                            the error CAN_E_PARAM_BAUDRATE if the parameter Baudrate has an invalid value.
#                     */
#                             
#                     (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_CHANGE_BAUDRATE, (uint8)CAN_E_PARAM_BAUDRATE);
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#                 }
#                 else
#                 {
#                     /*
#                       (CAN062) The function Can_ChangeBaudrate shall re-initialize the CAN controller and the controller specific settings.
#                       (CAN255) The function Can_ChangeBaudrate shall only affect register areas that contain specific configuration for a single CAN controller.
#                         */                        
#                     eReturnValue = (Std_ReturnType)Can_IPW_ChangeBaudrate(Controller);
	.d2line		563
.Llo18:
	rlwinm		r3,r3,0,24,31		# Controller=r3 Controller=r3
.Llo13:
	bl		Can_FlexCan_ChangeBaudrate
	mr		r4,r3		# eReturnValue=r4 eReturnValue=r3
.L644:
#                 }
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#             }
#         }
#     }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#     return (eReturnValue);
	.d2line		570
	rlwinm		r3,r4,0,24,31		# Controller=r3 eReturnValue=r4
# }
	.d2line		571
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# Baudrate=r0
	mtspr		lr,r0		# Baudrate=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo19:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L705:
	.type		Can_ChangeBaudrate,@function
	.size		Can_ChangeBaudrate,.-Can_ChangeBaudrate
# Number of nodes = 75

# Allocations for Can_ChangeBaudrate
#	?a4		Controller
#	?a5		Baudrate
#	?a6		$$180
#	?a7		$$179
#	?a8		eReturnValue
#	?a9		u8BaudrateIndex
# FUNC(Std_ReturnType, CAN_CODE) Can_CheckBaudrate( VAR(uint8, AUTOMATIC) Controller, CONST(uint16, AUTOMATIC) Baudrate )
	.align		2
	.section	.text_vle
        .d2line         595,32
#$$ld
.L719:

#$$bf	Can_CheckBaudrate,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,cr0,lr
	.globl		Can_CheckBaudrate
	.d2_cfa_start __cie
Can_CheckBaudrate:
.Llo20:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Controller=r3 Controller=r3
	mr		r0,r4		# Baudrate=r0 Baudrate=r4
	.d2prologue_end
# {
#     /* Returns the result of check baudrate*/
#     VAR(Std_ReturnType, AUTOMATIC) eReturnValue = (uint8)E_NOT_OK;
	.d2line		598
	diab.li		r4,1		# eReturnValue=r4
#     VAR(uint8, AUTOMATIC) u8BaudrateIndex = 0U;
	.d2line		599
.Llo22:
	diab.li		r5,0		# u8BaudrateIndex=r5
# 
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     /* If Can_eDriverStatus is CAN_UNINIT then the driver was not initialised yet. */
#     if ( CAN_UNINIT == Can_eDriverStatus )
#     {
#         /*
#            (CAN456) If development error detection for the Can module is enabled: The function Can_CheckBaudrate shall raise the
#                    error CAN_E_UNINIT if the driver is not yet initialized.
#         */
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_CHECK_BAUDRATE, (uint8)CAN_E_UNINIT);
#     }
#     else
#     {
#         /* The Controller ID must be within range and the selected controller must be configured for use in the config tool. */
# 
#         if ( (Controller >= (uint8)CanStatic_pCurrentConfig->u8ControllersConfigured) ||
#         /* @violates @ref Can_c_REF_4 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#              (CAN_NULL_OFFSET == (CanStatic_pControlerDescriptors[Controller].u8ControllerOffset)) 
#            )
#         {
#             /*
#                (CAN457) If development error detection for the Can module is enabled: The function Can_CheckBaudrate shall raise the
#                        error CAN_E_PARAM_CONTROLLER if the parameter Controller is out of range.
#             */
#             
#             (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_CHECK_BAUDRATE, (uint8)CAN_E_PARAM_CONTROLLER);
#         }
#         else
#         {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# 
#             /* Check the Baudrate */
#             /* @violates @ref Can_c_REF_4 Violates MISRA 2004 Advisory Rule 17.4 */
#             for ( u8BaudrateIndex = 0U; u8BaudrateIndex < Can_pControlerDescriptors[Controller].u8MaxBaudRateCount; u8BaudrateIndex++)
.L650:
	.d2line		634
.Llo23:
	rlwinm		r7,r3,0,24,31		# Controller=r3
	rlwinm		r31,r5,0,24,31		# u8BaudrateIndex=r5
	lis		r6,Can_pControlerDescriptors@ha
	lwz		r6,Can_pControlerDescriptors@l(r6)
	rlwinm		r30,r7,4,0,27
	se_slwi		r7,2
	subf		r7,r7,r30
	se_add		r6,r7
	lbz		r6,1(r6)
	se_cmp		r31,r6
	bc		0,0,.L654	# ge
#             {
#                 /* @violates @ref Can_c_REF_4 Violates MISRA 2004 Advisory Rule 17.4 */
#                 if (Baudrate == (uint16)(Can_pControlerDescriptors[Controller].pControllerBaudrateConfigsPtr[u8BaudrateIndex].u16ControllerBaudRate))
	.d2line		637
	rlwinm		r7,r3,0,24,31		# Controller=r3
	rlwinm		r31,r0,0,16,31		# Baudrate=r0
	lis		r6,Can_pControlerDescriptors@ha
	lwz		r30,Can_pControlerDescriptors@l(r6)
	rlwinm		r6,r7,4,0,27
	se_slwi		r7,2
	subf		r7,r7,r6
	se_add		r30,r7
	lwz		r7,4(r30)
	rlwinm		r6,r5,3,21,28		# u8BaudrateIndex=r5
	se_add		r6,r7
	lhz		r6,6(r6)
	se_cmp		r31,r6
	bc		0,2,.L653	# ne
#                 {
#                     eReturnValue = (uint8)E_OK;
	.d2line		639
	diab.li		r4,0		# eReturnValue=r4
	b		.L654
.L653:
#                     break;
#                 }
#             }
	.d2line		642
	diab.addi		r6,r5,1		# u8BaudrateIndex=r5
	se_addi		r5,1		# u8BaudrateIndex=r5 u8BaudrateIndex=r5
	b		.L650
.L654:
#                     
#             if ( (uint8)E_OK != eReturnValue )                
#             {
# /* Invalid Baudrate */
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#                 /*
#                    (CAN458) If development error detection for the Can module is enabled: The function Can_CheckBaudrate shall raise
#                            the error CAN_E_PARAM_BAUDRATE if the parameter Baudrate has an invalid value.
#                 */
#                 
#                 (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_CHECK_BAUDRATE, (uint8)CAN_E_PARAM_BAUDRATE);
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#             }
# 
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#         }
#     }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#     return (eReturnValue);
	.d2line		661
.Llo21:
	rlwinm		r3,r4,0,24,31		# Controller=r3 eReturnValue=r4
# }
	.d2line		662
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# Baudrate=r0
	mtspr		lr,r0		# Baudrate=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo24:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L720:
	.type		Can_CheckBaudrate,@function
	.size		Can_CheckBaudrate,.-Can_CheckBaudrate
# Number of nodes = 52

# Allocations for Can_CheckBaudrate
#	?a4		Controller
#	?a5		Baudrate
#	?a6		$$182
#	?a7		$$181
#	?a8		eReturnValue
#	?a9		u8BaudrateIndex
# FUNC(Can_ReturnType, CAN_CODE) Can_SetControllerMode( VAR(uint8, AUTOMATIC) Controller,
	.align		2
	.section	.text_vle
        .d2line         687,32
#$$ld
.L730:

#$$bf	Can_SetControllerMode,interprocedural,rasave,nostackparams
	.globl		Can_SetControllerMode
	.d2_cfa_start __cie
Can_SetControllerMode:
.Llo25:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# Controller=r7 Controller=r3
	mr		r5,r4		# Transition=r5 Transition=r4
	.d2prologue_end
#                                                       VAR(Can_StateTransitionType, AUTOMATIC) Transition 
#                                                     )
# {
#     /* Returns the result of transition mode. */
#     VAR(Can_ReturnType, AUTOMATIC)  eReturnValue = CAN_NOT_OK;
	.d2line		692
	diab.li		r6,1		# eReturnValue=r6
# 
#     /*
#        (CAN089) The Can module environment shall indicate development errors only in the return values of a function of the Can module when DET
#                is switched on and the function provides a return value. The returned value is CAN_NOT_OK.
#     */
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     /* If Can_pCurrentConfig is NULL_PTR then the Driver was not initialised yet. */
#     if ( CAN_UNINIT == Can_eDriverStatus )
#     {
#         /*
#            (CAN198) If development error detection for the Can module is enabled: if the module is not yet initialized, the
#                    function Can_SetControllerMode shall raise development error CAN_E_UNINIT and return CAN_NOT_OK.
#         */
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_SET_CONTROLLER_MODE, (uint8)CAN_E_UNINIT);
#     }
#     else
#     {
#         /* Controller ID must be within range and the selected Controller must be configured for use in the config tool. */
#         if ( (Controller >= (uint8)CanStatic_pCurrentConfig->u8ControllersConfigured) ||
#         /* @violates @ref Can_c_REF_4 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#              (CAN_NULL_OFFSET == (CanStatic_pControlerDescriptors[Controller].u8ControllerOffset)) 
#            )
#         {
#             /*
#                (CAN199) If development error detection for the Can module is enabled: if the parameter Controller is out of range,
#                        the function Can_SetControllerMode shall raise development error CAN_E_PARAM_CONTROLLER and return CAN_NOT_OK.
#             */
#             
#             (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_SET_CONTROLLER_MODE, (uint8)CAN_E_PARAM_CONTROLLER);
#         }
#         else
#         {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#             /* Call the IPW function for transition execution. */
#             /* @violates @ref Can_c_REF_4 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             eReturnValue = (VAR(Can_ReturnType, AUTOMATIC))Can_IPW_SetControllerMode( Controller, &(Can_pCurrentConfig->ControlerDescriptors[Controller]), Transition,(boolean)TRUE);
	.d2line		729
	rlwinm		r7,r7,0,24,31		# Controller=r7 Controller=r7
	lis		r3,Can_pCurrentConfig@ha		# Controller=r3
	lwz		r3,Can_pCurrentConfig@l(r3)		# Controller=r3 Controller=r3
	lwz		r4,12(r3)		# Controller=r4 Controller=r3
.Llo27:
	rlwinm		r3,r7,4,0,27		# Controller=r3 Controller=r7
	rlwinm		r0,r7,2,0,29		# Controller=r7
	subf		r0,r0,r3		# Controller=r3
	se_add		r4,r0		# Controller=r4 Controller=r4
	mr		r3,r7		# Controller=r3
.Llo26:
	mr		r5,r5		# Transition=r5 Transition=r5
.Llo28:
	bl		Can_FlexCan_SetControllerMode
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#         }
#     }
# #endif /* (CAN_DEV_ERROR_DETECT==STD_ON)  */
# 
#     return (eReturnValue);
	.d2line		735
.Llo29:
	mr		r4,r3		# eReturnValue=r4 eReturnValue=r3
# }
	.d2line		736
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo30:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L731:
	.type		Can_SetControllerMode,@function
	.size		Can_SetControllerMode,.-Can_SetControllerMode
# Number of nodes = 26

# Allocations for Can_SetControllerMode
#	?a4		Controller
#	?a5		Transition
#	?a6		$$183
#	?a7		eReturnValue
# FUNC(void, CAN_CODE) Can_DisableControllerInterrupts( VAR(uint8, AUTOMATIC) Controller)
	.align		2
	.section	.text_vle
        .d2line         759,22
#$$ld
.L743:

#$$bf	Can_DisableControllerInterrupts,interprocedural,rasave,nostackparams
	.globl		Can_DisableControllerInterrupts
	.d2_cfa_start __cie
Can_DisableControllerInterrupts:
.Llo31:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     /* If Can_pCurrentConfig is NULL_PTR then the driver was not initialised yet. */
#     if ( CAN_UNINIT == Can_eDriverStatus )
#     {
#         /*
#            (CAN205) If development error detection for the Can module is enabled: The function Can_DisableControllerInterrupts shall
#                    raise the error CAN_E_UNINIT if the driver not yet initialized.
#         */
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_DISABLE_CONTROLLER_INTERRUPTS, (uint8)CAN_E_UNINIT);
#     }
#     else
#     {
#         /* The Controller ID must be within range and the selected Controller must be configured for use in the config tool. */
#         if ( (Controller >= (uint8)CanStatic_pCurrentConfig->u8ControllersConfigured) ||
#         /* @violates @ref Can_c_REF_4 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#              (CAN_NULL_OFFSET == (CanStatic_pControlerDescriptors[Controller].u8ControllerOffset)) 
#            )
#         {
#             /*
#                (CAN206) If development error detection for the Can module is enabled: The function Can_DisableControllerInterrupts shall
#                        raise the error CAN_E_PARAM_CONTROLLER if the parameter Controller is out of range.
#             */
#             
#             (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_DISABLE_CONTROLLER_INTERRUPTS, (uint8)CAN_E_PARAM_CONTROLLER);
#         }
#         else
#         {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#             /* Call the IPW function for disabling interrupts. */
#             /* @violates @ref Can_c_REF_4 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             Can_IPW_DisableControllerInterrupts( Controller);
	.d2line		792
	rlwinm		r3,r3,0,24,31		# Controller=r3 Controller=r3
.Llo32:
	bl		Can_FlexCan_DisableControllerInterrupts
# #if (CAN_DEV_ERROR_DETECT == STD_ON)        
#         }
#     }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# }
	.d2line		797
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L744:
	.type		Can_DisableControllerInterrupts,@function
	.size		Can_DisableControllerInterrupts,.-Can_DisableControllerInterrupts
# Number of nodes = 5

# Allocations for Can_DisableControllerInterrupts
#	?a4		Controller
# FUNC(void, CAN_CODE) Can_EnableControllerInterrupts( VAR(uint8, AUTOMATIC) Controller)
	.align		2
	.section	.text_vle
        .d2line         819,22
#$$ld
.L749:

#$$bf	Can_EnableControllerInterrupts,interprocedural,rasave,nostackparams
	.globl		Can_EnableControllerInterrupts
	.d2_cfa_start __cie
Can_EnableControllerInterrupts:
.Llo33:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# Controller=r5 Controller=r3
	.d2prologue_end
# {
# 
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     /* If Can_pCurrentConfig is NULL_PTR then the driver was not initialised yet. */
#     if ( CAN_UNINIT == Can_eDriverStatus )
#     {
#         /*
#            (CAN209) If development error detection for the Can module is enabled: The function Can_EnableControllerInterrupts shall raise
#                    the error CAN_E_UNINIT if the driver not yet initialized.
#         */
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_ENABLE_CONTROLLER_INTERRUPTS, (uint8)CAN_E_UNINIT);
#     }
#     else
#     {
#         /* Controller ID must be within range and the selected Controller must be configured for use in the config tool. */
#         if ( (Controller >= (uint8)CanStatic_pCurrentConfig->u8ControllersConfigured) ||
#          /* @violates @ref Can_c_REF_4 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#              (CAN_NULL_OFFSET == (CanStatic_pControlerDescriptors[Controller].u8ControllerOffset)) 
#            )
#         {
#             /*
#                (CAN210) If development error detection for the Can module is enabled: The function Can_EnableControllerInterrupts shall
#                        raise the error CAN_E_PARAM_CONTROLLER if the parameter Controller is out of range.
#             */
#             
#             (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_ENABLE_CONTROLLER_INTERRUPTS, (uint8)CAN_E_PARAM_CONTROLLER);
#         }
#         else
#         {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#             /* Call the IPW function for enabling interrupts. */
#             /* @violates @ref Can_c_REF_4 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used  */
#             Can_IPW_EnableControllerInterrupts( Controller, &(Can_pCurrentConfig->ControlerDescriptors[Controller]));
	.d2line		853
	rlwinm		r5,r5,0,24,31		# Controller=r5 Controller=r5
	lis		r3,Can_pCurrentConfig@ha		# Controller=r3
	lwz		r3,Can_pCurrentConfig@l(r3)		# Controller=r3 Controller=r3
	lwz		r4,12(r3)		# Controller=r3
	rlwinm		r3,r5,4,0,27		# Controller=r3 Controller=r5
	rlwinm		r0,r5,2,0,29		# Controller=r5
	subf		r0,r0,r3		# Controller=r3
	se_add		r4,r0
	mr		r3,r5		# Controller=r3
.Llo34:
	bl		Can_FlexCan_EnableControllerInterrupts
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#         }
#     }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# }
	.d2line		858
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L750:
	.type		Can_EnableControllerInterrupts,@function
	.size		Can_EnableControllerInterrupts,.-Can_EnableControllerInterrupts
# Number of nodes = 15

# Allocations for Can_EnableControllerInterrupts
#	?a4		Controller
#	?a5		$$184
# FUNC(Can_ReturnType, CAN_CODE) Can_Write( VAR(Can_HwHandleType, AUTOMATIC) Hth,
	.align		2
	.section	.text_vle
        .d2line         898,32
#$$ld
.L755:

#$$bf	Can_Write,interprocedural,rasave,nostackparams
	.globl		Can_Write
	.d2_cfa_start __cie
Can_Write:
.Llo35:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# eReturnValue=r0
.Llo38:
	stw		r0,20(r1)		# eReturnValue=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                                           P2CONST(Can_PduType, AUTOMATIC, CAN_APPL_CONST) PduInfo 
#                                         )
# {
#     /* Variable for return status */
#     VAR(Can_ReturnType, AUTOMATIC)  eReturnValue = CAN_NOT_OK;
	.d2line		903
	diab.li		r0,1		# eReturnValue=r0
# 
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     /* If Can_pCurrentConfig is NULL_PTR then the driver was not initialised yet. */
#     if ( CAN_UNINIT == Can_eDriverStatus )
#     {
#         /*
#            (CAN216) If development error detection for the Can module is enabled: The function Can_Write shall raise the error CAN_E_UNINIT if
#                    the driver not yet initialized.
#         */
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_WRITE, (uint8)CAN_E_UNINIT);
#         eReturnValue = CAN_NOT_OK;
#     }
#     else
#     {
#         /* Hth must be below uMessageBufferConfigCount and should be a Tx MB type. */
#         if ( (Hth >= Can_pCurrentConfig->u32CanMaxObjectId) ||
#               (CAN_TRANSMIT != (Can_ObjType)Can_pCurrentConfig->eObjectTypeMapping[Hth]) 
#             )
# 
#         {
#             /*
#                (CAN217) If development error detection for the Can module is enabled: The function Can_Write shall raise the error CAN_E_PARAM_HANDLE
#                        if the parameter Hth is not a configured Hardware Transmit Handle.
#             */
#             
#             (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_WRITE, (uint8)CAN_E_PARAM_HANDLE);
#             eReturnValue = CAN_NOT_OK;
#         }
#         else
#         {
#             if ( (NULL_PTR == PduInfo) || (NULL_PTR == PduInfo->sdu) )
#             {
#                 /*
#                 (CAN219) If development error detection for the Can module is enabled: The function Can_Write shall raise the
#                         error CAN_E_PARAM_POINTER if the parameter PduInfo or the SDU pointer inside PduInfo is a null-pointer.
#                 */
#                 
#                 (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_WRITE, CAN_E_PARAM_POINTER);
#                 eReturnValue = CAN_NOT_OK;
#             }
#             else
#             {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# 
#                             /* Call the IPW function for transmitting data. */
#                             eReturnValue = (Can_ReturnType)Can_IPW_Write(Hth,PduInfo);
	.d2line		950
.Llo39:
	rlwinm		r3,r3,0,24,31		# Hth=r3 Hth=r3
.Llo36:
	mr		r0,r4		# PduInfo=r0 PduInfo=r4
	bl		Can_FlexCan_Write
# 
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#             }
#         }
#     }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#     return (eReturnValue);
	.d2line		957
.Llo37:
	mr		r4,r3		# eReturnValue=r4 eReturnValue=r3
# }
	.d2line		958
	.d2epilogue_begin
	lwz		r0,20(r1)		# eReturnValue=r0
	mtspr		lr,r0		# eReturnValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo40:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L756:
	.type		Can_Write,@function
	.size		Can_Write,.-Can_Write
# Number of nodes = 14

# Allocations for Can_Write
#	?a4		Hth
#	?a5		PduInfo
#	?a6		eReturnValue
# FUNC(void, CAN_CODE) Can_MainFunction_Write( void)
	.align		2
	.section	.text_vle
        .d2line         980,22
#$$ld
.L769:

#$$bf	Can_MainFunction_Write,interprocedural,rasave,nostackparams
	.globl		Can_MainFunction_Write
	.d2_cfa_start __cie
Can_MainFunction_Write:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
# /* Test whether the driver is already initialised. */
#     if ( CAN_UNINIT == Can_eDriverStatus )
#     {       
#         /*
#         (CAN179) If development error detection for the module Can is enabled: The function Can_MainFunction_Write shall raise
#                 the error CAN_E_UNINIT if the driver is not yet initialized.
#         */
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_MAIN_FUNCTION_WRITE, (uint8)CAN_E_UNINIT);
#     }
#     else
#     {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */ 
#         /* Poll all controllers for Tx MB statuses. */
#         Can_IPW_MainFunctionWrite();
	.d2line		997
	bl		Can_FlexCan_MainFunctionWrite
# #if (CAN_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */     
# }
	.d2line		1001
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L770:
	.type		Can_MainFunction_Write,@function
	.size		Can_MainFunction_Write,.-Can_MainFunction_Write
# Number of nodes = 2

# Allocations for Can_MainFunction_Write
# FUNC(void, CAN_CODE) Can_MainFunction_Read( void)
	.align		2
	.section	.text_vle
        .d2line         1466,22
#$$ld
.L774:

#$$bf	Can_MainFunction_Read,interprocedural,rasave,nostackparams
	.globl		Can_MainFunction_Read
	.d2_cfa_start __cie
Can_MainFunction_Read:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     /* Test whether the driver is already initialised. */
#     if ( CAN_UNINIT == Can_eDriverStatus )
#     {    
#         /*
#            (CAN181) If development error detection for the Can module is enabled: The function Can_MainFunction_Read shall raise the
#                    error CAN_E_UNINIT if the driver not yet initialized.
#         */
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_MAIN_FUNCTION_READ, (uint8)CAN_E_UNINIT);
#     }
#     else
#     {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */    
#         /* Poll all controllers for Rx MB statuses. */
#         Can_IPW_MainFunctionRead();
	.d2line		1483
	bl		Can_FlexCan_MainFunctionRead
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */    
# }
	.d2line		1487
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L775:
	.type		Can_MainFunction_Read,@function
	.size		Can_MainFunction_Read,.-Can_MainFunction_Read
# Number of nodes = 2

# Allocations for Can_MainFunction_Read
# FUNC(void, CAN_CODE) Can_MainFunction_BusOff( void)
	.align		2
	.section	.text_vle
        .d2line         1951,22
#$$ld
.L779:

#$$bf	Can_MainFunction_BusOff,interprocedural,rasave,nostackparams
	.globl		Can_MainFunction_BusOff
	.d2_cfa_start __cie
Can_MainFunction_BusOff:
.Llo41:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* Variable for indexing the controllers */
#     VAR(uint8, AUTOMATIC) can_controller = 0U;
	.d2line		1954
	diab.li		r31,0		# can_controller=r31
# 
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     /* Test whether the driver is already initialised. */
#     if ( CAN_UNINIT == Can_eDriverStatus )
#     {
#         /*
#            (CAN184) If development error detection for the Can module is enabled: The function Can_MainFunction_BusOff shall raise
#                    the error CAN_E_UNINIT if the driver not yet initialized.
#         */
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_MAIN_FUNCTION_BUS_OFF, (uint8)CAN_E_UNINIT);
#     }
#     else
#     {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#         /* Loop through all Can controllers configured based CanControllerId parameter. */
#         for ( can_controller = (uint8)0U; can_controller < (uint8)CanStatic_pCurrentConfig->u8ControllersConfigured; can_controller++)
.L666:
	.d2line		1971
	rlwinm		r5,r31,0,24,31		# can_controller=r31
	lis		r3,CanStatic_pCurrentConfig@ha
	lwz		r3,CanStatic_pCurrentConfig@l(r3)
	lbz		r0,0(r3)
	se_cmp		r5,r0
	bc		0,0,.L665	# ge
#         {
#             /*
#                (CAN109) The function Can_MainFunction_BusOff shall perform the polling of bus-off events that are configured statically as 'to be polled'.
#             */
# /* @violates @ref Can_c_REF_4 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#             if ( (CAN_NULL_OFFSET !=(CanStatic_pControlerDescriptors[can_controller].u8ControllerOffset))  &&
	.d2line		1977
	lis		r3,CanStatic_pControlerDescriptors@ha
	lwz		r3,CanStatic_pControlerDescriptors@l(r3)
	rlwinm		r5,r31,0,24,31		# can_controller=r31
	e_mulli		r5,r5,20
	lbzx		r0,r3,r5
	cmpi		0,0,r0,255
	bc		1,2,.L669	# eq
	lis		r3,CanStatic_pControlerDescriptors@ha
	lwz		r0,CanStatic_pControlerDescriptors@l(r3)
	rlwinm		r3,r31,0,24,31		# can_controller=r31
	e_mulli		r3,r3,20
	se_add		r3,r0
	lwz		r0,16(r3)
	se_btsti		r0,19
	bc		1,2,.L669	# eq
#             /* @violates @ref Can_c_REF_4 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                  ((CAN_CONTROLLERCONFIG_BOPOL_EN_U32 & (uint32)(CanStatic_pControlerDescriptors[can_controller].u32Options)) != (uint32)0x0U)
#                )
#             {
#                 /* Check for BusOff status. */
#                 if ( (uint8)E_OK == Can_IPW_CheckBusOff(can_controller) )
	.d2line		1983
	rlwinm		r3,r31,0,24,31		# can_controller=r31
	bl		Can_FlexCan_CheckBusOff
	e_andi.		r3,r3,255
	bc		0,2,.L669	# ne
#                 {
#                     /* Process BusOff event. */
#                     /* @violates @ref Can_c_REF_4 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#                     if ( CAN_OK == (VAR(Can_ReturnType, AUTOMATIC))Can_IPW_SetControllerMode( can_controller,  &(Can_pCurrentConfig->ControlerDescriptors[can_controller]), CAN_T_STOP,(boolean)FALSE) )
	.d2line		1987
	rlwinm		r5,r31,0,24,31		# can_controller=r31
	lis		r3,Can_pCurrentConfig@ha
	lwz		r3,Can_pCurrentConfig@l(r3)
	lwz		r4,12(r3)
	rlwinm		r3,r5,4,0,27
	rlwinm		r0,r5,2,0,29
	subf		r0,r0,r3
	se_add		r4,r0
	mr		r3,r5
	diab.li		r5,1
	diab.li		r6,0
	bl		Can_FlexCan_SetControllerMode
	se_cmpi		r3,0
	bc		0,2,.L669	# ne
#                     {
#                         Can_IPW_ProcessBusOff(can_controller);
	.d2line		1989
	rlwinm		r3,r31,0,24,31		# can_controller=r31
	bl		Can_FlexCan_ProcessBusOff
#                         CanIf_ControllerBusOff(can_controller);
	.d2line		1990
	rlwinm		r3,r31,0,24,31		# can_controller=r31
	bl		CanIf_ControllerBusOff
.L669:
#                     }
# 
#                 }
#             }
#         }
	.d2line		1995
	diab.addi		r3,r31,1		# can_controller=r31
	se_addi		r31,1		# can_controller=r31 can_controller=r31
	b		.L666
.L665:
# #if (CAN_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */    
# }
	.d2line		1999
	.d2epilogue_begin
.Llo42:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L780:
	.type		Can_MainFunction_BusOff,@function
	.size		Can_MainFunction_BusOff,.-Can_MainFunction_BusOff
# Number of nodes = 77

# Allocations for Can_MainFunction_BusOff
#	?a4		$$185
#	?a5		can_controller
# FUNC(void, CAN_CODE) Can_MainFunction_Mode( void)
	.align		2
	.section	.text_vle
        .d2line         2019,22
#$$ld
.L786:

#$$bf	Can_MainFunction_Mode,interprocedural,rasave,nostackparams
	.globl		Can_MainFunction_Mode
	.d2_cfa_start __cie
Can_MainFunction_Mode:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     /* Test whether the driver is already initialised. */
#     if ( CAN_UNINIT == Can_eDriverStatus )
#     {            
#         /*
#            (CAN379) If development error detection for the Can module is enabled: The function Can_MainFunction_Mode shall raise the error CAN_E_UNINIT if the driver is not yet initialized.
#         */
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_MAIN_FUNCTION_MODE, (uint8)CAN_E_UNINIT);             
#     }
#     else
#     {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */       
#         /* Check for main function mode. */
#         Can_IPW_MainFunctionMode();
	.d2line		2035
	bl		Can_FlexCan_MainFunctionMode
# #if (CAN_DEV_ERROR_DETECT == STD_ON)        
#     }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */    
# }
	.d2line		2039
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L787:
	.type		Can_MainFunction_Mode,@function
	.size		Can_MainFunction_Mode,.-Can_MainFunction_Mode
# Number of nodes = 2

# Allocations for Can_MainFunction_Mode
# FUNC(Can_ReturnType, CAN_CODE) Can_CheckWakeup( VAR(uint8, AUTOMATIC) controller)
	.align		2
	.section	.text_vle
        .d2line         2065,32
#$$ld
.L791:

#$$bf	Can_CheckWakeup,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		Can_CheckWakeup
	.d2_cfa_start __cie
Can_CheckWakeup:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* E_NOT_OK is defined as (uint8)0x01 */
#     VAR(Can_ReturnType, AUTOMATIC) eReturnValue = CAN_NOT_OK;
	.d2line		2068
.Llo43:
	diab.li		r3,1		# eReturnValue=r3
# 
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     /* Test whether the driver is already initialised. */
#     if ( CAN_UNINIT == Can_eDriverStatus )
#     {
#         /*
#            (CAN362) If development error detection for the Can module is enabled: The function Can_CheckWakeup shall raise
#                    the error CAN_E_UNINIT if the driver is not yet initialized.
#         */
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_CBK_CHECK_WAKEUP, (uint8)CAN_E_UNINIT);
#     }
#     else
#     {
#         /*
#            (CAN363) If development error detection for the Can module is enabled: The function Can_CheckWakeup shall raise the
#                    error CAN_E_PARAM_CONTROLLER if the parameter Controller is out of range.
#         */
#         if ( (controller >= (uint8)CanStatic_pCurrentConfig->u8ControllersConfigured) ||
#         /* @violates @ref Can_c_REF_4 Violates MISRA 2004 Required Rule 17.4, pointer arithmetic other than array indexing used */
#              (CAN_NULL_OFFSET == (CanStatic_pControlerDescriptors[controller].u8ControllerOffset))
#            )
#         {
#             
#             (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_CBK_CHECK_WAKEUP, (uint8)CAN_E_PARAM_CONTROLLER);
#         }
#         else
#         {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# 
#             eReturnValue = CAN_NOT_OK;    
#                 
#     #if (CAN_DEV_ERROR_DETECT == STD_ON)
#         }
#     }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# 
#     return (eReturnValue);
# }
	.d2line		2107
	.d2epilogue_begin
.Llo44:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L792:
	.type		Can_CheckWakeup,@function
	.size		Can_CheckWakeup,.-Can_CheckWakeup
# Number of nodes = 8

# Allocations for Can_CheckWakeup
#	not allocated	controller
#	?a4		eReturnValue
# FUNC(void, CAN_CODE) Can_AbortMb( VAR(Can_HwHandleType, AUTOMATIC) Hth )
	.align		2
	.section	.text_vle
        .d2line         2132,22
#$$ld
.L798:

#$$bf	Can_AbortMb,interprocedural,rasave,nostackparams
	.globl		Can_AbortMb
	.d2_cfa_start __cie
Can_AbortMb:
.Llo45:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# 
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#     /* Test if the driver is already initialised. */
#     if ( CAN_UNINIT == Can_eDriverStatus )
#     {
#         
#         (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_ABORT_MB, (uint8)CAN_E_UNINIT);
#     }
#     else
#     {
#         if ( (Hth >= Can_pCurrentConfig->u32CanMaxObjectId) ||
#              (CAN_TRANSMIT != (Can_ObjType)Can_pCurrentConfig->eObjectTypeMapping[Hth])
#            )
# 
#         {
#             /*
#             (CAN217) If development error detection for the Can module is enabled: The function Can_Write shall raise the error CAN_E_PARAM_HANDLE
#                     if the parameter Hth is not a configured Hardware Transmit Handle.
#             */
#             
#             (void)Det_ReportError( (uint16)CAN_MODULE_ID, (uint8)CAN_INSTANCE, (uint8)CAN_SID_ABORT_MB, (uint8)CAN_E_PARAM_HANDLE);
#         }
#         else
#         {
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
#         
#             Can_IPW_AbortMb(Hth);
	.d2line		2160
	rlwinm		r3,r3,0,24,31		# Hth=r3 Hth=r3
.Llo46:
	bl		Can_FlexCan_AbortMb
#             
# #if (CAN_DEV_ERROR_DETECT == STD_ON)
#         }
#     }
# #endif /* (CAN_DEV_ERROR_DETECT == STD_ON) */
# }
	.d2line		2166
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L799:
	.type		Can_AbortMb,@function
	.size		Can_AbortMb,.-Can_AbortMb
# Number of nodes = 5

# Allocations for Can_AbortMb
#	?a4		Hth

# Allocations for module
	.section	.text_vle
	.0byte		.L802
	.section	.mcal_bss,,b
	.0byte		.L807
	.section	.mcal_data,,d
	.0byte		.L813
	.section	.mcal_data,,d
	.type		Can_pCurrentConfig,@object
	.size		Can_pCurrentConfig,4
	.align		2
	.globl		Can_pCurrentConfig
Can_pCurrentConfig:
	.long		0
	.section	.mcal_data,,d
	.type		Can_pControlerDescriptors,@object
	.size		Can_pControlerDescriptors,4
	.align		2
	.globl		Can_pControlerDescriptors
Can_pControlerDescriptors:
	.long		0
	.section	.mcal_data,,d
	.type		CanStatic_pControlerDescriptors,@object
	.size		CanStatic_pControlerDescriptors,4
	.align		2
	.globl		CanStatic_pControlerDescriptors
CanStatic_pControlerDescriptors:
	.long		0
	.section	.mcal_data,,d
	.type		CanStatic_pCurrentConfig,@object
	.size		CanStatic_pCurrentConfig,4
	.align		2
	.globl		CanStatic_pCurrentConfig
CanStatic_pCurrentConfig:
	.long		0
	.section	.text_vle
#$$ld
.L5:
.L896:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L893:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L808:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Can_Flexcan.h"
.L803:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Can.h"
.L682:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Can.c"
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
	.uleb128	6
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
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
	.uleb128	13
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
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
	.uleb128	18
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	53
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Can.c"
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
.L683:
	.sleb128	2
	.4byte		.L679-.L2
	.byte		"Can_GetVersionInfo"
	.byte		0
	.4byte		.L682
	.uleb128	301
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L680
	.4byte		.L681
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L682
	.uleb128	301
	.uleb128	22
	.byte		"versioninfo"
	.byte		0
	.4byte		.L684
	.4byte		.L687
	.section	.debug_info,,n
	.sleb128	0
.L679:
	.section	.debug_info,,n
.L692:
	.sleb128	2
	.4byte		.L689-.L2
	.byte		"Can_Init"
	.byte		0
	.4byte		.L682
	.uleb128	352
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L690
	.4byte		.L691
	.sleb128	3
	.4byte		.L682
	.uleb128	352
	.uleb128	22
	.byte		"Config"
	.byte		0
	.4byte		.L693
	.4byte		.L697
	.section	.debug_info,,n
.L698:
	.sleb128	4
	.4byte		.L682
	.uleb128	355
	.uleb128	27
	.byte		"can_controller"
	.byte		0
	.4byte		.L699
	.4byte		.L701
	.section	.debug_info,,n
	.sleb128	0
.L689:
	.section	.debug_info,,n
.L707:
	.sleb128	5
	.4byte		.L703-.L2
	.byte		"Can_ChangeBaudrate"
	.byte		0
	.4byte		.L682
	.uleb128	481
	.uleb128	32
	.4byte		.L706
	.byte		0x1
	.byte		0x1
	.4byte		.L704
	.4byte		.L705
	.sleb128	3
	.4byte		.L682
	.uleb128	481
	.uleb128	32
	.byte		"Controller"
	.byte		0
	.4byte		.L699
	.4byte		.L708
	.sleb128	3
	.4byte		.L682
	.uleb128	481
	.uleb128	32
	.byte		"Baudrate"
	.byte		0
	.4byte		.L709
	.4byte		.L712
.L713:
	.sleb128	4
	.4byte		.L682
	.uleb128	484
	.uleb128	36
	.byte		"eReturnValue"
	.byte		0
	.4byte		.L706
	.4byte		.L714
.L715:
	.sleb128	4
	.4byte		.L682
	.uleb128	485
	.uleb128	27
	.byte		"u8BaudrateIndex"
	.byte		0
	.4byte		.L699
	.4byte		.L716
	.section	.debug_info,,n
	.sleb128	0
.L703:
	.section	.debug_info,,n
.L721:
	.sleb128	5
	.4byte		.L718-.L2
	.byte		"Can_CheckBaudrate"
	.byte		0
	.4byte		.L682
	.uleb128	595
	.uleb128	32
	.4byte		.L706
	.byte		0x1
	.byte		0x1
	.4byte		.L719
	.4byte		.L720
	.sleb128	3
	.4byte		.L682
	.uleb128	595
	.uleb128	32
	.byte		"Controller"
	.byte		0
	.4byte		.L699
	.4byte		.L722
	.sleb128	3
	.4byte		.L682
	.uleb128	595
	.uleb128	32
	.byte		"Baudrate"
	.byte		0
	.4byte		.L709
	.4byte		.L723
.L724:
	.sleb128	4
	.4byte		.L682
	.uleb128	598
	.uleb128	36
	.byte		"eReturnValue"
	.byte		0
	.4byte		.L706
	.4byte		.L725
.L726:
	.sleb128	4
	.4byte		.L682
	.uleb128	599
	.uleb128	27
	.byte		"u8BaudrateIndex"
	.byte		0
	.4byte		.L699
	.4byte		.L727
	.section	.debug_info,,n
	.sleb128	0
.L718:
	.section	.debug_info,,n
.L734:
	.sleb128	5
	.4byte		.L729-.L2
	.byte		"Can_SetControllerMode"
	.byte		0
	.4byte		.L682
	.uleb128	687
	.uleb128	32
	.4byte		.L732
	.byte		0x1
	.byte		0x1
	.4byte		.L730
	.4byte		.L731
	.sleb128	3
	.4byte		.L682
	.uleb128	687
	.uleb128	32
	.byte		"Controller"
	.byte		0
	.4byte		.L699
	.4byte		.L735
	.sleb128	3
	.4byte		.L682
	.uleb128	687
	.uleb128	32
	.byte		"Transition"
	.byte		0
	.4byte		.L736
	.4byte		.L738
.L739:
	.sleb128	4
	.4byte		.L682
	.uleb128	692
	.uleb128	37
	.byte		"eReturnValue"
	.byte		0
	.4byte		.L732
	.4byte		.L740
	.section	.debug_info,,n
	.sleb128	0
.L729:
	.section	.debug_info,,n
.L745:
	.sleb128	2
	.4byte		.L742-.L2
	.byte		"Can_DisableControllerInterrupts"
	.byte		0
	.4byte		.L682
	.uleb128	759
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L743
	.4byte		.L744
	.sleb128	3
	.4byte		.L682
	.uleb128	759
	.uleb128	22
	.byte		"Controller"
	.byte		0
	.4byte		.L699
	.4byte		.L746
	.section	.debug_info,,n
	.sleb128	0
.L742:
	.section	.debug_info,,n
.L751:
	.sleb128	2
	.4byte		.L748-.L2
	.byte		"Can_EnableControllerInterrupts"
	.byte		0
	.4byte		.L682
	.uleb128	819
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L749
	.4byte		.L750
	.sleb128	3
	.4byte		.L682
	.uleb128	819
	.uleb128	22
	.byte		"Controller"
	.byte		0
	.4byte		.L699
	.4byte		.L752
	.section	.debug_info,,n
	.sleb128	0
.L748:
	.section	.debug_info,,n
.L757:
	.sleb128	5
	.4byte		.L754-.L2
	.byte		"Can_Write"
	.byte		0
	.4byte		.L682
	.uleb128	898
	.uleb128	32
	.4byte		.L732
	.byte		0x1
	.byte		0x1
	.4byte		.L755
	.4byte		.L756
	.sleb128	3
	.4byte		.L682
	.uleb128	898
	.uleb128	32
	.byte		"Hth"
	.byte		0
	.4byte		.L758
	.4byte		.L759
	.sleb128	3
	.4byte		.L682
	.uleb128	898
	.uleb128	32
	.byte		"PduInfo"
	.byte		0
	.4byte		.L760
	.4byte		.L764
.L765:
	.sleb128	4
	.4byte		.L682
	.uleb128	903
	.uleb128	37
	.byte		"eReturnValue"
	.byte		0
	.4byte		.L732
	.4byte		.L766
	.section	.debug_info,,n
	.sleb128	0
.L754:
	.section	.debug_info,,n
.L771:
	.sleb128	2
	.4byte		.L768-.L2
	.byte		"Can_MainFunction_Write"
	.byte		0
	.4byte		.L682
	.uleb128	980
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L769
	.4byte		.L770
	.section	.debug_info,,n
	.sleb128	0
.L768:
	.section	.debug_info,,n
.L776:
	.sleb128	2
	.4byte		.L773-.L2
	.byte		"Can_MainFunction_Read"
	.byte		0
	.4byte		.L682
	.uleb128	1466
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L774
	.4byte		.L775
	.section	.debug_info,,n
	.sleb128	0
.L773:
	.section	.debug_info,,n
.L781:
	.sleb128	2
	.4byte		.L778-.L2
	.byte		"Can_MainFunction_BusOff"
	.byte		0
	.4byte		.L682
	.uleb128	1951
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L779
	.4byte		.L780
.L782:
	.sleb128	4
	.4byte		.L682
	.uleb128	1954
	.uleb128	27
	.byte		"can_controller"
	.byte		0
	.4byte		.L699
	.4byte		.L783
	.section	.debug_info,,n
	.sleb128	0
.L778:
	.section	.debug_info,,n
.L788:
	.sleb128	2
	.4byte		.L785-.L2
	.byte		"Can_MainFunction_Mode"
	.byte		0
	.4byte		.L682
	.uleb128	2019
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L786
	.4byte		.L787
	.section	.debug_info,,n
	.sleb128	0
.L785:
	.section	.debug_info,,n
.L793:
	.sleb128	5
	.4byte		.L790-.L2
	.byte		"Can_CheckWakeup"
	.byte		0
	.4byte		.L682
	.uleb128	2065
	.uleb128	32
	.4byte		.L732
	.byte		0x1
	.byte		0x1
	.4byte		.L791
	.4byte		.L792
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L682
	.uleb128	2065
	.uleb128	32
	.byte		"controller"
	.byte		0
	.4byte		.L699
	.sleb128	2
	.byte		0x90
	.uleb128	3
.L794:
	.sleb128	4
	.4byte		.L682
	.uleb128	2068
	.uleb128	36
	.byte		"eReturnValue"
	.byte		0
	.4byte		.L732
	.4byte		.L795
	.section	.debug_info,,n
	.sleb128	0
.L790:
	.section	.debug_info,,n
.L800:
	.sleb128	2
	.4byte		.L797-.L2
	.byte		"Can_AbortMb"
	.byte		0
	.4byte		.L682
	.uleb128	2132
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L798
	.4byte		.L799
	.sleb128	3
	.4byte		.L682
	.uleb128	2132
	.uleb128	22
	.byte		"Hth"
	.byte		0
	.4byte		.L758
	.4byte		.L801
	.section	.debug_info,,n
	.sleb128	0
.L797:
	.section	.debug_info,,n
.L802:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L803
	.uleb128	846
	.uleb128	47
	.byte		"CanStatic_ConfigSet"
	.byte		0
	.4byte		.L804
	.section	.debug_info,,n
.L807:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L808
	.uleb128	284
	.uleb128	47
	.byte		"Can_ControllerStatuses"
	.byte		0
	.4byte		.L809
	.section	.debug_info,,n
	.section	.debug_info,,n
.L813:
	.sleb128	8
	.byte		0x1
	.4byte		.L682
	.uleb128	239
	.uleb128	50
	.byte		"Can_pCurrentConfig"
	.byte		0
	.4byte		.L693
	.sleb128	5
	.byte		0x3
	.4byte		Can_pCurrentConfig
	.section	.debug_info,,n
	.section	.debug_info,,n
.L814:
	.sleb128	8
	.byte		0x1
	.4byte		.L682
	.uleb128	240
	.uleb128	63
	.byte		"Can_pControlerDescriptors"
	.byte		0
	.4byte		.L815
	.sleb128	5
	.byte		0x3
	.4byte		Can_pControlerDescriptors
	.section	.debug_info,,n
.L819:
	.sleb128	8
	.byte		0x1
	.4byte		.L682
	.uleb128	241
	.uleb128	69
	.byte		"CanStatic_pControlerDescriptors"
	.byte		0
	.4byte		.L820
	.sleb128	5
	.byte		0x3
	.4byte		CanStatic_pControlerDescriptors
	.section	.debug_info,,n
.L824:
	.sleb128	8
	.byte		0x1
	.4byte		.L682
	.uleb128	242
	.uleb128	56
	.byte		"CanStatic_pCurrentConfig"
	.byte		0
	.4byte		.L825
	.sleb128	5
	.byte		0x3
	.4byte		CanStatic_pCurrentConfig
	.section	.debug_info,,n
.L812:
	.sleb128	9
	.4byte		.L808
	.uleb128	174
	.uleb128	5
	.4byte		.L826-.L2
	.uleb128	232
	.section	.debug_info,,n
.L617:
	.sleb128	10
	.byte		"u32TxGuard"
	.byte		0
	.4byte		.L827
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L618:
	.sleb128	10
	.byte		"u32MBInterruptMask"
	.byte		0
	.4byte		.L831
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L619:
	.sleb128	10
	.byte		"u32TxPduId"
	.byte		0
	.4byte		.L833
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L620:
	.sleb128	10
	.byte		"s8IntDisableLevel"
	.byte		0
	.4byte		.L836
	.sleb128	3
	.byte		0x23
	.uleb128	216
	.byte		0x1
.L621:
	.sleb128	10
	.byte		"u32CancelMBIndex"
	.byte		0
	.4byte		.L839
	.sleb128	3
	.byte		0x23
	.uleb128	217
	.byte		0x1
.L622:
	.sleb128	10
	.byte		"u8FirstTxMBIndex"
	.byte		0
	.4byte		.L840
	.sleb128	3
	.byte		0x23
	.uleb128	218
	.byte		0x1
.L623:
	.sleb128	10
	.byte		"eInterruptMode"
	.byte		0
	.4byte		.L841
	.sleb128	3
	.byte		0x23
	.uleb128	220
	.byte		0x1
.L624:
	.sleb128	10
	.byte		"ControllerState"
	.byte		0
	.4byte		.L843
	.sleb128	3
	.byte		0x23
	.uleb128	224
	.byte		0x1
.L625:
	.sleb128	10
	.byte		"u8CurrentBaudRateIndex"
	.byte		0
	.4byte		.L699
	.sleb128	3
	.byte		0x23
	.uleb128	228
	.byte		0x1
	.sleb128	0
.L826:
.L696:
	.sleb128	9
	.4byte		.L803
	.uleb128	288
	.uleb128	5
	.4byte		.L845-.L2
	.uleb128	368
.L341:
	.sleb128	10
	.byte		"pFilterMasks"
	.byte		0
	.4byte		.L846
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L342:
	.sleb128	10
	.byte		"MBConfigContainer"
	.byte		0
	.4byte		.L851
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L343:
	.sleb128	10
	.byte		"ControlerDescriptors"
	.byte		0
	.4byte		.L815
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L344:
	.sleb128	10
	.byte		"u32CanMaxObjectId"
	.byte		0
	.4byte		.L829
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L345:
	.sleb128	10
	.byte		"uCanFirstHTHIndex"
	.byte		0
	.4byte		.L854
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L346:
	.sleb128	10
	.byte		"u8ControllerIdMapping"
	.byte		0
	.4byte		.L855
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L347:
	.sleb128	10
	.byte		"eObjectTypeMapping"
	.byte		0
	.4byte		.L858
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
	.sleb128	0
.L845:
.L806:
	.sleb128	9
	.4byte		.L803
	.uleb128	288
	.uleb128	5
	.4byte		.L863-.L2
	.uleb128	8
.L339:
	.sleb128	10
	.byte		"u8ControllersConfigured"
	.byte		0
	.4byte		.L699
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L340:
	.sleb128	10
	.byte		"StaticControlerDescriptors"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L863:
.L823:
	.sleb128	9
	.4byte		.L803
	.uleb128	288
	.uleb128	5
	.4byte		.L864-.L2
	.uleb128	20
.L334:
	.sleb128	10
	.byte		"u8ControllerOffset"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L335:
	.sleb128	10
	.byte		"pStaticControllerBaudrateConfigsPtr"
	.byte		0
	.4byte		.L865
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L336:
	.sleb128	10
	.byte		"Can_ErrorNotification"
	.byte		0
	.4byte		.L870
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L337:
	.sleb128	10
	.byte		"u8NumberOfMB"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L338:
	.sleb128	10
	.byte		"u32Options"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L864:
.L818:
	.sleb128	9
	.4byte		.L803
	.uleb128	288
	.uleb128	5
	.4byte		.L876-.L2
	.uleb128	12
.L329:
	.sleb128	10
	.byte		"u8MaxMBCount"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L330:
	.sleb128	10
	.byte		"u8MaxBaudRateCount"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L331:
	.sleb128	10
	.byte		"u8DefaultBaudRateIndex"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L332:
	.sleb128	10
	.byte		"pControllerBaudrateConfigsPtr"
	.byte		0
	.4byte		.L877
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L333:
	.sleb128	10
	.byte		"u32Options"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L876:
.L853:
	.sleb128	9
	.4byte		.L803
	.uleb128	288
	.uleb128	5
	.4byte		.L882-.L2
	.uleb128	8
.L327:
	.sleb128	10
	.byte		"pMessageBufferConfigsPtr"
	.byte		0
	.4byte		.L883
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L328:
	.sleb128	10
	.byte		"uMessageBufferConfigCount"
	.byte		0
	.4byte		.L854
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L882:
.L887:
	.sleb128	9
	.4byte		.L803
	.uleb128	288
	.uleb128	5
	.4byte		.L888-.L2
	.uleb128	32
.L316:
	.sleb128	10
	.byte		"uIdMaskIndex"
	.byte		0
	.4byte		.L758
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L317:
	.sleb128	10
	.byte		"u8ControllerId"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L318:
	.sleb128	10
	.byte		"uIdType"
	.byte		0
	.4byte		.L889
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L319:
	.sleb128	10
	.byte		"eMBType"
	.byte		0
	.4byte		.L861
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L320:
	.sleb128	10
	.byte		"uMessageId"
	.byte		0
	.4byte		.L850
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L321:
	.sleb128	10
	.byte		"u8LocalPriority"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L322:
	.sleb128	10
	.byte		"u32HWObjID"
	.byte		0
	.4byte		.L829
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L323:
	.sleb128	10
	.byte		"u32CanMainFuncRWPeriodRef"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L324:
	.sleb128	10
	.byte		"u16MBOffsetAddr"
	.byte		0
	.4byte		.L709
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L325:
	.sleb128	10
	.byte		"u8MBPayloadLength"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L326:
	.sleb128	10
	.byte		"u8HWMBIndex"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
	.sleb128	0
.L888:
.L869:
	.sleb128	9
	.4byte		.L803
	.uleb128	288
	.uleb128	5
	.4byte		.L891-.L2
	.uleb128	4
.L315:
	.sleb128	10
	.byte		"u32ControlRegister"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L891:
.L881:
	.sleb128	9
	.4byte		.L803
	.uleb128	288
	.uleb128	5
	.4byte		.L892-.L2
	.uleb128	8
.L312:
	.sleb128	10
	.byte		"u32ControlRegister"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L313:
	.sleb128	10
	.byte		"u8TxArbitrationStartDelay"
	.byte		0
	.4byte		.L857
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L314:
	.sleb128	10
	.byte		"u16ControllerBaudRate"
	.byte		0
	.4byte		.L709
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L892:
	.section	.debug_info,,n
.L763:
	.sleb128	11
	.4byte		.L893
	.uleb128	63
	.uleb128	1
	.4byte		.L894-.L2
	.byte		"Can_PduType_s"
	.byte		0
	.uleb128	12
.L308:
	.sleb128	10
	.byte		"sdu"
	.byte		0
	.4byte		.L895
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L309:
	.sleb128	10
	.byte		"id"
	.byte		0
	.4byte		.L850
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L310:
	.sleb128	10
	.byte		"swPduHandle"
	.byte		0
	.4byte		.L835
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L311:
	.sleb128	10
	.byte		"length"
	.byte		0
	.4byte		.L699
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L894:
.L686:
	.sleb128	9
	.4byte		.L896
	.uleb128	7366
	.uleb128	5
	.4byte		.L897-.L2
	.uleb128	8
.L299:
	.sleb128	10
	.byte		"vendorID"
	.byte		0
	.4byte		.L710
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L300:
	.sleb128	10
	.byte		"moduleID"
	.byte		0
	.4byte		.L710
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L301:
	.sleb128	10
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L699
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L302:
	.sleb128	10
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L699
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L303:
	.sleb128	10
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L699
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L897:
	.section	.debug_info,,n
.L842:
	.sleb128	12
	.4byte		.L808
	.uleb128	174
	.uleb128	5
	.4byte		.L898-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"CAN_INTERRUPT_DISABLED"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CAN_INTERRUPT_ENABLED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L898:
.L844:
	.sleb128	12
	.4byte		.L803
	.uleb128	264
	.uleb128	5
	.4byte		.L899-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CAN_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CAN_STARTED"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"CAN_SLEEPED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L899:
.L890:
	.sleb128	12
	.4byte		.L803
	.uleb128	236
	.uleb128	5
	.4byte		.L900-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CAN_EXTENDED"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CAN_STANDARD"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"CAN_MIXED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L900:
.L862:
	.sleb128	12
	.4byte		.L803
	.uleb128	223
	.uleb128	5
	.4byte		.L901-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CAN_RECEIVE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CAN_TRANSMIT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L901:
.L737:
	.sleb128	12
	.4byte		.L893
	.uleb128	63
	.uleb128	1
	.4byte		.L902-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CAN_T_START"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CAN_T_STOP"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"CAN_T_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"CAN_T_WAKEUP"
	.byte		0
	.sleb128	3
	.sleb128	0
.L902:
.L733:
	.sleb128	12
	.4byte		.L893
	.uleb128	57
	.uleb128	1
	.4byte		.L903-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CAN_OK"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CAN_NOT_OK"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"CAN_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L903:
	.section	.debug_info,,n
.L685:
	.sleb128	14
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L686
	.section	.debug_info,,n
.L684:
	.sleb128	15
	.4byte		.L685
.L695:
	.sleb128	14
	.byte		"Can_ConfigType"
	.byte		0
	.4byte		.L696
	.section	.debug_info,,n
.L694:
	.sleb128	16
	.4byte		.L695
.L693:
	.sleb128	15
	.4byte		.L694
	.section	.debug_info,,n
.L700:
	.sleb128	17
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L699:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L700
.L706:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L699
.L711:
	.sleb128	17
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L710:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L711
.L709:
	.sleb128	16
	.4byte		.L710
.L732:
	.sleb128	14
	.byte		"Can_ReturnType"
	.byte		0
	.4byte		.L733
.L736:
	.sleb128	14
	.byte		"Can_StateTransitionType"
	.byte		0
	.4byte		.L737
.L758:
	.sleb128	14
	.byte		"Can_HwHandleType"
	.byte		0
	.4byte		.L699
.L762:
	.sleb128	14
	.byte		"Can_PduType"
	.byte		0
	.4byte		.L763
.L761:
	.sleb128	16
	.4byte		.L762
.L760:
	.sleb128	15
	.4byte		.L761
.L805:
	.sleb128	14
	.byte		"CanStatic_ConfigType"
	.byte		0
	.4byte		.L806
.L804:
	.sleb128	16
	.4byte		.L805
.L811:
	.sleb128	14
	.byte		"Can_ControllerStatusType"
	.byte		0
	.4byte		.L812
	.section	.debug_info,,n
.L809:
	.sleb128	18
	.4byte		.L810-.L2
	.4byte		.L811
	.section	.debug_info,,n
	.sleb128	19
	.uleb128	1
	.sleb128	0
.L810:
.L817:
	.sleb128	14
	.byte		"Can_ControlerDescriptorType"
	.byte		0
	.4byte		.L818
.L816:
	.sleb128	16
	.4byte		.L817
.L815:
	.sleb128	15
	.4byte		.L816
.L822:
	.sleb128	14
	.byte		"CanStatic_ControlerDescriptorType"
	.byte		0
	.4byte		.L823
.L821:
	.sleb128	16
	.4byte		.L822
.L820:
	.sleb128	15
	.4byte		.L821
.L825:
	.sleb128	15
	.4byte		.L804
.L830:
	.sleb128	17
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L829:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L830
.L827:
	.sleb128	18
	.4byte		.L828-.L2
	.4byte		.L829
	.sleb128	19
	.uleb128	2
	.sleb128	0
.L828:
.L831:
	.sleb128	18
	.4byte		.L832-.L2
	.4byte		.L829
	.sleb128	19
	.uleb128	2
	.sleb128	0
.L832:
.L835:
	.sleb128	14
	.byte		"PduIdType"
	.byte		0
	.4byte		.L710
.L833:
	.sleb128	18
	.4byte		.L834-.L2
	.4byte		.L835
	.sleb128	19
	.uleb128	95
	.sleb128	0
.L834:
.L838:
	.sleb128	17
	.byte		"signed char"
	.byte		0
	.byte		0x6
	.byte		0x1
.L837:
	.sleb128	14
	.byte		"sint8"
	.byte		0
	.4byte		.L838
	.section	.debug_info,,n
.L836:
	.sleb128	20
	.4byte		.L837
.L839:
	.sleb128	20
	.4byte		.L758
.L840:
	.sleb128	20
	.4byte		.L699
.L841:
	.sleb128	14
	.byte		"Can_InterruptStateType"
	.byte		0
	.4byte		.L842
.L843:
	.sleb128	14
	.byte		"Can_ControllerStateType"
	.byte		0
	.4byte		.L844
.L850:
	.sleb128	14
	.byte		"Can_IdType"
	.byte		0
	.4byte		.L829
.L849:
	.sleb128	16
	.4byte		.L850
.L848:
	.sleb128	15
	.4byte		.L849
.L847:
	.sleb128	16
	.4byte		.L848
.L846:
	.sleb128	14
	.byte		"Can_IdPtrType"
	.byte		0
	.4byte		.L847
.L852:
	.sleb128	14
	.byte		"Can_MBConfigContainerType"
	.byte		0
	.4byte		.L853
.L851:
	.sleb128	16
	.4byte		.L852
.L854:
	.sleb128	16
	.4byte		.L758
.L857:
	.sleb128	16
	.4byte		.L699
.L855:
	.sleb128	18
	.4byte		.L856-.L2
	.4byte		.L857
	.sleb128	19
	.uleb128	68
	.sleb128	0
.L856:
.L861:
	.sleb128	14
	.byte		"Can_ObjType"
	.byte		0
	.4byte		.L862
.L860:
	.sleb128	16
	.4byte		.L861
.L858:
	.sleb128	18
	.4byte		.L859-.L2
	.4byte		.L860
	.sleb128	19
	.uleb128	68
	.sleb128	0
.L859:
.L868:
	.sleb128	14
	.byte		"CanStatic_ControllerBaudrateConfigType"
	.byte		0
	.4byte		.L869
.L867:
	.sleb128	16
	.4byte		.L868
.L866:
	.sleb128	15
	.4byte		.L867
.L865:
	.sleb128	16
	.4byte		.L866
	.section	.debug_info,,n
.L873:
	.sleb128	21
	.4byte		.L874-.L2
	.byte		0x1
	.sleb128	0
.L874:
.L872:
	.sleb128	15
	.4byte		.L873
.L871:
	.sleb128	14
	.byte		"Can_PCallBackType"
	.byte		0
	.4byte		.L872
.L870:
	.sleb128	16
	.4byte		.L871
.L875:
	.sleb128	16
	.4byte		.L829
.L880:
	.sleb128	14
	.byte		"Can_ControllerBaudrateConfigType"
	.byte		0
	.4byte		.L881
.L879:
	.sleb128	16
	.4byte		.L880
.L878:
	.sleb128	15
	.4byte		.L879
.L877:
	.sleb128	16
	.4byte		.L878
.L886:
	.sleb128	14
	.byte		"Can_MBConfigObjectType"
	.byte		0
	.4byte		.L887
.L885:
	.sleb128	16
	.4byte		.L886
.L884:
	.sleb128	15
	.4byte		.L885
.L883:
	.sleb128	16
	.4byte		.L884
.L889:
	.sleb128	14
	.byte		"CanIdType"
	.byte		0
	.4byte		.L890
.L895:
	.sleb128	15
	.4byte		.L699
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L687:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),4
	.d2locend
.L697:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locend
.L701:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo11),31
	.d2locend
.L708:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locend
.L712:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo14),4
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locend
.L714:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo19),4
	.d2locend
.L716:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo18),5
	.d2locend
.L722:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locend
.L723:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo22),4
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo21),0
	.d2locend
.L725:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo24),4
	.d2locend
.L727:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo21),5
	.d2locend
.L735:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locend
.L738:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo27),4
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo28),5
	.d2locend
.L740:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locend
.L746:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locend
.L752:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),3
	.d2locend
.L759:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),3
	.d2locend
.L764:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo37),4
	.d2locend
.L766:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),0
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo40),3
	.d2locend
.L783:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),31
	.d2locend
.L795:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),3
	.d2locend
.L801:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Can_AbortMb"
	.wrcm.nstrlist "calls", "Can_FlexCan_AbortMb"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Can_CheckWakeup"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Can_MainFunction_Mode"
	.wrcm.nstrlist "calls", "Can_FlexCan_MainFunctionMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Can_MainFunction_BusOff"
	.wrcm.nstrlist "calls", "CanIf_ControllerBusOff","Can_FlexCan_CheckBusOff","Can_FlexCan_ProcessBusOff","Can_FlexCan_SetControllerMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Can_MainFunction_Read"
	.wrcm.nstrlist "calls", "Can_FlexCan_MainFunctionRead"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Can_MainFunction_Write"
	.wrcm.nstrlist "calls", "Can_FlexCan_MainFunctionWrite"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Can_Write"
	.wrcm.nstrlist "calls", "Can_FlexCan_Write"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Can_EnableControllerInterrupts"
	.wrcm.nstrlist "calls", "Can_FlexCan_EnableControllerInterrupts"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Can_DisableControllerInterrupts"
	.wrcm.nstrlist "calls", "Can_FlexCan_DisableControllerInterrupts"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Can_SetControllerMode"
	.wrcm.nstrlist "calls", "Can_FlexCan_SetControllerMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Can_CheckBaudrate"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Can_ChangeBaudrate"
	.wrcm.nstrlist "calls", "Can_FlexCan_ChangeBaudrate"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Can_Init"
	.wrcm.nstrlist "calls", "Can_FlexCan_ChangeBaudrate","Can_FlexCan_Init","Can_FlexCan_InitVariables"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Can_GetVersionInfo"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Can.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Can.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Can.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Can.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Can.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Can.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Can\ssc\make\..\..\generator\integration_package\src\Can.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
