#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Pwm.c"
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
# FUNC(void, PWM_CODE) Pwm_Init
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L443:
	.section	.invalid_TEXT,,c
#$$ld
.L439:
	.0byte		.L437
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Pwm.c"
        .d2line         1522,22
#$$ld
.L446:

#$$bf	Pwm_Init,interprocedural,rasave,nostackparams
	.globl		Pwm_Init
	.d2_cfa_start __cie
Pwm_Init:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# ConfigPtr=r0
	stw		r0,20(r1)		# ConfigPtr=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# ConfigPtr=r0 ConfigPtr=r3
	.d2prologue_end
# (
#     P2CONST(Pwm_ConfigType, AUTOMATIC, PWM_APPL_CONST) ConfigPtr
# )
# {
# #if (PWM_VALIDATE_GLOBAL_CONFIG_CALL == STD_ON) || (PWM_PARAM_CHECK == STD_ON)
#     VAR(Std_ReturnType, AUTOMATIC)  CallIsValid;
# #endif
# #if (PWM_PRECOMPILE_SUPPORT == STD_ON)
#     (void)ConfigPtr;
# #endif
# #if (PWM_VALIDATE_GLOBAL_CONFIG_CALL == STD_ON)
#     CallIsValid = Pwm_ValidateGlobalConfigCall(PWM_INIT_ID);
#     if((Std_ReturnType)E_OK == CallIsValid)
#     {
# #endif /* PWM_VALIDATE_GLOBAL_CONFIG_CALL */
# 
# #if (PWM_PARAM_CHECK == STD_ON)
#         CallIsValid = Pwm_ValidateParamPtrInit(ConfigPtr);
#         if((Std_ReturnType)E_OK == CallIsValid)
#         {
#         
# #if (PWM_OFFSET_PLAUSABILITY == STD_ON)
#     #if (PWM_PRECOMPILE_SUPPORT == STD_ON)
#             CallIsValid = Pwm_ValidateParamsOffset(&Pwm_InitConfigPc.IpConfig);
#     #else
#             CallIsValid = Pwm_ValidateParamsOffset(&ConfigPtr->IpConfig);
#     #endif
# 
#             if((Std_ReturnType)E_OK == CallIsValid)
#             {
# #endif
# #endif /* PWM_PARAM_CHECK */          
# 
#                 /* All validations passed. Here starts the actual
#                 functional code of the function */
#     
#                 /* Save configuration pointer in global variable */
# #if (PWM_PRECOMPILE_SUPPORT == STD_ON)
#                 Pwm_pConfig = &Pwm_InitConfigPc;
# #else
#                 Pwm_pConfig = ConfigPtr;
	.d2line		1563
	lis		r4,Pwm_pConfig@ha
	e_add16i		r4,r4,Pwm_pConfig@l
	stw		r0,0(r4)		# ConfigPtr=r0
# #endif /* PWM_PRECOMPILE_SUPPORT */
#                 Pwm_Ipw_Init(&Pwm_pConfig->IpConfig);
	.d2line		1565
	se_addi		r3,8		# ConfigPtr=r3 ConfigPtr=r3
.Llo2:
	bl		Pwm_Ipw_Init
# 
# 
# #if (PWM_PARAM_CHECK == STD_ON)
# #if (PWM_OFFSET_PLAUSABILITY == STD_ON)   
#             }
# #endif            
#         }
# #endif /* PWM_PARAM_CHECK */             
# 
# #if (PWM_VALIDATE_GLOBAL_CONFIG_CALL == STD_ON)
#     }
#     /*
#     * @violates @ref Pwm_C_REF_5 All non-null statements shall either a)have at least
#     * one side efect however executed, or b)cause control flow to change.
#     */
#     Pwm_EndValidateGlobalConfigCall(CallIsValid, PWM_INIT_ID);
# #endif /* PWM_VALIDATE_GLOBAL_CONFIG_CALL */
# }
	.d2line		1583
	.d2epilogue_begin
	lwz		r0,20(r1)		# ConfigPtr=r0
	mtspr		lr,r0		# ConfigPtr=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L447:
	.type		Pwm_Init,@function
	.size		Pwm_Init,.-Pwm_Init
# Number of nodes = 9

# Allocations for Pwm_Init
#	?a4		ConfigPtr
# FUNC(void, PWM_CODE) Pwm_DeInit
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1618,22
#$$ld
.L457:

#$$bf	Pwm_DeInit,interprocedural,rasave,nostackparams
	.globl		Pwm_DeInit
	.d2_cfa_start __cie
Pwm_DeInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     void
# )
# {
# 
# #if (PWM_VALIDATE_GLOBAL_CONFIG_CALL == STD_ON)
#     VAR(Std_ReturnType, AUTOMATIC) CallIsValid = Pwm_ValidateGlobalConfigCall(PWM_DEINIT_ID);
#     if((Std_ReturnType)E_OK == CallIsValid)
#     {
#  #endif /* PWM_VALIDATE_GLOBAL_CONFIG_CALL */
# 
#         /* All validations passed. Here starts the actual
#         functional code of the function */
#         Pwm_Ipw_DeInit(&Pwm_pConfig->IpConfig);
	.d2line		1632
	lis		r3,Pwm_pConfig@ha
	lwz		r3,Pwm_pConfig@l(r3)
	se_addi		r3,8
	bl		Pwm_Ipw_DeInit
#         /* Set global configuration pointer back to NULL, flagging that
#         the driver is deinitialized */
#         Pwm_pConfig = NULL_PTR;
	.d2line		1635
	diab.li		r3,0
	lis		r4,Pwm_pConfig@ha
	e_add16i		r4,r4,Pwm_pConfig@l
	stw		r3,0(r4)
# 
# #if (PWM_VALIDATE_GLOBAL_CONFIG_CALL == STD_ON)
#     }
#     /*
#     * @violates @ref Pwm_C_REF_5 All non-null statements shall either a)have at least
#     * one side efect however executed, or b)cause control flow to change.
#     */
#     Pwm_EndValidateGlobalConfigCall(CallIsValid, PWM_DEINIT_ID);   
# #endif /* PWM_VALIDATE_GLOBAL_CONFIG_CALL */
# }
	.d2line		1645
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
.L458:
	.type		Pwm_DeInit,@function
	.size		Pwm_DeInit,.-Pwm_DeInit
# Number of nodes = 9

# Allocations for Pwm_DeInit
# FUNC(void, PWM_CODE) Pwm_SetDutyCycle
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1698,22
#$$ld
.L462:

#$$bf	Pwm_SetDutyCycle,interprocedural,rasave,nostackparams
	.globl		Pwm_SetDutyCycle
	.d2_cfa_start __cie
Pwm_SetDutyCycle:
.Llo3:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(Pwm_ChannelType, AUTOMATIC) ChannelNumber,
#     VAR(uint16,          AUTOMATIC) u16DutyCycle
# )
# {
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Pwm_ValidateChannelConfigCall(ChannelNumber, PWM_SETDUTYCYCLE_ID))
#     {
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */
# 
# #if (PWM_PARAM_CHECK == STD_ON)
#         if((Std_ReturnType)E_OK == Pwm_ValidateParamDuty(u16DutyCycle, PWM_SETDUTYCYCLE_ID))
#         {
# #if (PWM_OFFSET_PLAUSABILITY == STD_ON)
#             if((Std_ReturnType)E_OK == Pwm_ValidateParamOffsetDuty(ChannelNumber, u16DutyCycle, &Pwm_pConfig->IpConfig))
#             {
# #endif
# #endif /* PWM_PARAM_CHECK */             
# 
#                 /* All validations passed. Here starts the actual
#                 functional code of the function */
#                 Pwm_Ipw_SetDutyCycle(ChannelNumber, u16DutyCycle, &Pwm_pConfig->IpConfig);
	.d2line		1720
	rlwinm		r3,r3,0,24,31		# ChannelNumber=r3 ChannelNumber=r3
.Llo4:
	rlwinm		r4,r4,0,16,31		# u16DutyCycle=r4 u16DutyCycle=r4
.Llo5:
	lis		r5,Pwm_pConfig@ha
	lwz		r5,Pwm_pConfig@l(r5)
	se_addi		r5,8
	bl		Pwm_Ipw_SetDutyCycle
# 
# #if (PWM_PARAM_CHECK == STD_ON)
# #if (PWM_OFFSET_PLAUSABILITY == STD_ON)
#             }
# #endif            
#         }
# #endif /* PWM_PARAM_CHECK */             
#         
# 
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     }
#     /*
#     * @violates @ref Pwm_C_REF_5 All non-null statements shall either a)have at least
#     * one side efect however executed, or b)cause control flow to change.
#     */
#     Pwm_EndValidateChannelConfigCall(ChannelNumber);   
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */   
# }
	.d2line		1738
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
.L463:
	.type		Pwm_SetDutyCycle,@function
	.size		Pwm_SetDutyCycle,.-Pwm_SetDutyCycle
# Number of nodes = 12

# Allocations for Pwm_SetDutyCycle
#	?a4		ChannelNumber
#	?a5		u16DutyCycle
# FUNC(void, PWM_CODE) Pwm_SetPeriodAndDuty
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1795,22
#$$ld
.L474:

#$$bf	Pwm_SetPeriodAndDuty,interprocedural,rasave,nostackparams
	.globl		Pwm_SetPeriodAndDuty
	.d2_cfa_start __cie
Pwm_SetPeriodAndDuty:
.Llo6:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(Pwm_ChannelType, AUTOMATIC) ChannelNumber,
#     VAR(Pwm_PeriodType,  AUTOMATIC) Period,
#     VAR(uint16,          AUTOMATIC) u16DutyCycle
# )
# {
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Pwm_ValidateChannelConfigCall(ChannelNumber, PWM_SETPERIODANDDUTY_ID))
#     {
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */
# 
# #if (PWM_PARAM_CHECK == STD_ON)
#         if((Std_ReturnType)E_OK == Pwm_ValidateParamsPeriodDuty(ChannelNumber,(*Pwm_pConfig->pPwmChannelsConfig)[ChannelNumber].ePwmChannelClass, Period, u16DutyCycle, PWM_SETPERIODANDDUTY_ID))
#         {
# #endif /* PWM_PARAM_CHECK */             
# 
#             /* All validations passed. Here starts the actual
#             functional code of the function */
#             Pwm_Ipw_SetPeriodAndDuty(ChannelNumber, Period, u16DutyCycle, &Pwm_pConfig->IpConfig);
	.d2line		1814
	rlwinm		r3,r3,0,24,31		# ChannelNumber=r3 ChannelNumber=r3
.Llo7:
	rlwinm		r4,r4,0,16,31		# Period=r4 Period=r4
.Llo8:
	rlwinm		r5,r5,0,16,31		# u16DutyCycle=r5 u16DutyCycle=r5
.Llo9:
	lis		r6,Pwm_pConfig@ha
	lwz		r6,Pwm_pConfig@l(r6)
	se_addi		r6,8
	bl		Pwm_Ipw_SetPeriodAndDuty
#         
# #if (PWM_PARAM_CHECK == STD_ON)
#         }
# #endif /* PWM_PARAM_CHECK */             
#         
# 
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     }
#     /*
#     * @violates @ref Pwm_C_REF_5 All non-null statements shall either a)have at least
#     * one side efect however executed, or b)cause control flow to change.
#     */
#     Pwm_EndValidateChannelConfigCall(ChannelNumber);   
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */       
# }
	.d2line		1829
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
.L475:
	.type		Pwm_SetPeriodAndDuty,@function
	.size		Pwm_SetPeriodAndDuty,.-Pwm_SetPeriodAndDuty
# Number of nodes = 15

# Allocations for Pwm_SetPeriodAndDuty
#	?a4		ChannelNumber
#	?a5		Period
#	?a6		u16DutyCycle
# FUNC(void, PWM_CODE) Pwm_SetOutputToIdle
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1879,22
#$$ld
.L483:

#$$bf	Pwm_SetOutputToIdle,interprocedural,rasave,nostackparams
	.globl		Pwm_SetOutputToIdle
	.d2_cfa_start __cie
Pwm_SetOutputToIdle:
.Llo10:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(Pwm_ChannelType, AUTOMATIC) ChannelNumber
# )
# {
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Pwm_ValidateChannelConfigCall(ChannelNumber, PWM_SETOUTPUTTOIDLE_ID))
#     {
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */
# 
#         /* All validations passed. Here starts the actual
#         functional code of the function */
#         Pwm_Ipw_SetOutputToIdle(ChannelNumber, &Pwm_pConfig->IpConfig);
	.d2line		1891
	rlwinm		r3,r3,0,24,31		# ChannelNumber=r3 ChannelNumber=r3
.Llo11:
	lis		r4,Pwm_pConfig@ha
	lwz		r4,Pwm_pConfig@l(r4)
	se_addi		r4,8
	bl		Pwm_Ipw_SetOutputToIdle
#         
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     }
#     /*
#     * @violates @ref Pwm_C_REF_5 All non-null statements shall either a)have at least
#     * one side efect however executed, or b)cause control flow to change.
#     */
#     Pwm_EndValidateChannelConfigCall(ChannelNumber);   
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */       
# }
	.d2line		1901
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
.L484:
	.type		Pwm_SetOutputToIdle,@function
	.size		Pwm_SetOutputToIdle,.-Pwm_SetOutputToIdle
# Number of nodes = 9

# Allocations for Pwm_SetOutputToIdle
#	?a4		ChannelNumber
# FUNC(Pwm_OutputStateType, PWM_CODE) Pwm_GetOutputState
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1951,37
#$$ld
.L489:

#$$bf	Pwm_GetOutputState,interprocedural,rasave,nostackparams
	.globl		Pwm_GetOutputState
	.d2_cfa_start __cie
Pwm_GetOutputState:
.Llo12:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# retVal=r0
.Llo16:
	stw		r0,20(r1)		# retVal=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(Pwm_ChannelType, AUTOMATIC) ChannelNumber
# )
# {
#     VAR(Pwm_OutputStateType, AUTOMATIC) retVal = (Pwm_OutputStateType)PWM_LOW;
	.d2line		1956
	diab.li		r0,0		# retVal=r0
# 
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Pwm_ValidateChannelConfigCall(ChannelNumber, PWM_GETOUTPUTSTATE_ID))
#     {
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */
# 
#         /* All validations passed. Here starts the actual
#         functional code of the function */
#         retVal = Pwm_Ipw_GetOutputState(ChannelNumber, &Pwm_pConfig->IpConfig);
	.d2line		1965
.Llo17:
	rlwinm		r3,r3,0,24,31		# ChannelNumber=r3 ChannelNumber=r3
.Llo13:
	lis		r4,Pwm_pConfig@ha		# ChannelNumber=r4
.Llo14:
	lwz		r4,Pwm_pConfig@l(r4)		# ChannelNumber=r4 ChannelNumber=r4
	se_addi		r4,8		# ChannelNumber=r4 ChannelNumber=r4
.Llo15:
	bl		Pwm_Ipw_GetOutputState
#         
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     }
#     /*
#     * @violates @ref Pwm_C_REF_5 All non-null statements shall either a)have at least
#     * one side efect however executed, or b)cause control flow to change.
#     */
#     Pwm_EndValidateChannelConfigCall(ChannelNumber);   
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */       
# 
#     return (Pwm_OutputStateType)retVal;
	.d2line		1976
.Llo18:
	mr		r4,r3		# retVal=r4 retVal=r3
# }
	.d2line		1977
	.d2epilogue_begin
	lwz		r0,20(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo19:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L490:
	.type		Pwm_GetOutputState,@function
	.size		Pwm_GetOutputState,.-Pwm_GetOutputState
# Number of nodes = 16

# Allocations for Pwm_GetOutputState
#	?a4		ChannelNumber
#	?a5		retVal
# FUNC(void, PWM_CODE) Pwm_DisableNotification
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2023,22
#$$ld
.L499:

#$$bf	Pwm_DisableNotification,interprocedural,rasave,nostackparams
	.globl		Pwm_DisableNotification
	.d2_cfa_start __cie
Pwm_DisableNotification:
.Llo20:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(Pwm_ChannelType, AUTOMATIC) ChannelNumber
# )
# {
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Pwm_ValidateChannelConfigCall(ChannelNumber, PWM_DISABLENOTIFICATION_ID))
#     {
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */
# 
#         /* All validations passed. Here starts the actual
#         functional code of the function */
#         Pwm_Ipw_DisableNotification(ChannelNumber, &Pwm_pConfig->IpConfig);
	.d2line		2035
	rlwinm		r3,r3,0,24,31		# ChannelNumber=r3 ChannelNumber=r3
.Llo21:
	lis		r4,Pwm_pConfig@ha
	lwz		r4,Pwm_pConfig@l(r4)
	se_addi		r4,8
	bl		Pwm_Ipw_DisableNotification
#         
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     }
#     /*
#     * @violates @ref Pwm_C_REF_5 All non-null statements shall either a)have at least
#     * one side efect however executed, or b)cause control flow to change.
#     */
#     Pwm_EndValidateChannelConfigCall(ChannelNumber);   
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */       
# }
	.d2line		2045
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
.L500:
	.type		Pwm_DisableNotification,@function
	.size		Pwm_DisableNotification,.-Pwm_DisableNotification
# Number of nodes = 9

# Allocations for Pwm_DisableNotification
#	?a4		ChannelNumber
# FUNC(void, PWM_CODE) Pwm_EnableNotification
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2089,22
#$$ld
.L505:

#$$bf	Pwm_EnableNotification,interprocedural,rasave,nostackparams
	.globl		Pwm_EnableNotification
	.d2_cfa_start __cie
Pwm_EnableNotification:
.Llo22:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(Pwm_ChannelType,          AUTOMATIC) ChannelNumber,
#     VAR(Pwm_EdgeNotificationType, AUTOMATIC) Notification
# )
# {
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Pwm_ValidateChannelConfigCall(ChannelNumber, PWM_ENABLENOTIFICATION_ID))
#     {
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */
# 
# #if (PWM_PARAM_CHECK == STD_ON)
#         if((Std_ReturnType)E_OK == Pwm_ValidateParamNotification(ChannelNumber, Notification))
#         {
# #endif /* (PWM_PARAM_CHECK == STD_ON) */
# 
#             /* All validations passed. Here starts the actual
#             functional code of the function */
#             Pwm_Ipw_EnableNotification(ChannelNumber, Notification, &Pwm_pConfig->IpConfig);
	.d2line		2107
	rlwinm		r3,r3,0,24,31		# ChannelNumber=r3 ChannelNumber=r3
.Llo23:
	lis		r5,Pwm_pConfig@ha
	lwz		r5,Pwm_pConfig@l(r5)
	se_addi		r5,8
	mr		r0,r4		# Notification=r0 Notification=r4
	bl		Pwm_Ipw_EnableNotification
# #if (PWM_PARAM_CHECK == STD_ON)
#         }
# #endif /* (PWM_PARAM_CHECK == STD_ON) */
#         
# 
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     }
#     /*
#     * @violates @ref Pwm_C_REF_5 All non-null statements shall either a)have at least
#     * one side efect however executed, or b)cause control flow to change.
#     */
#     Pwm_EndValidateChannelConfigCall(ChannelNumber);   
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */  
# }
	.d2line		2121
	.d2epilogue_begin
.Llo24:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L506:
	.type		Pwm_EnableNotification,@function
	.size		Pwm_EnableNotification,.-Pwm_EnableNotification
# Number of nodes = 11

# Allocations for Pwm_EnableNotification
#	?a4		ChannelNumber
#	?a5		Notification
# FUNC(void, PWM_CODE) Pwm_GetVersionInfo
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2144,22
#$$ld
.L514:

#$$bf	Pwm_GetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Pwm_GetVersionInfo
	.d2_cfa_start __cie
Pwm_GetVersionInfo:
.Llo25:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# pVersioninfo=r4 pVersioninfo=r3
	.d2prologue_end
# (
#     P2VAR(Std_VersionInfoType , AUTOMATIC, PWM_APPL_DATA) pVersioninfo
# )
# {
# #if (PWM_DEV_ERROR_DETECT == STD_ON)
#     if (NULL_PTR != pVersioninfo)
#     {
# #endif /* PWM_DEV_ERROR_DETECT */
# 
#         (pVersioninfo)->vendorID         = (uint16)PWM_VENDOR_ID;
	.d2line		2154
.Llo26:
	diab.li		r3,43
.Llo27:
	sth		r3,0(r4)		# pVersioninfo=r4
#         (pVersioninfo)->moduleID         = (uint16)PWM_MODULE_ID;
	.d2line		2155
	diab.li		r3,121
	sth		r3,2(r4)		# pVersioninfo=r4
# 
#         (pVersioninfo)->sw_major_version = (uint8)PWM_SW_MAJOR_VERSION;
	.d2line		2157
	diab.li		r3,1
	stb		r3,4(r4)		# pVersioninfo=r4
#         (pVersioninfo)->sw_minor_version = (uint8)PWM_SW_MINOR_VERSION;
	.d2line		2158
	diab.li		r3,0
	stb		r3,5(r4)		# pVersioninfo=r4
#         (pVersioninfo)->sw_patch_version = (uint8)PWM_SW_PATCH_VERSION;
	.d2line		2159
	diab.li		r3,2
	stb		r3,6(r4)		# pVersioninfo=r4
# 
# #if (PWM_DEV_ERROR_DETECT == STD_ON)
#     }
#     else
#     {
#         /* if the parameter pVersioninfo is NULL_PTR then report the error */
# 
#         Det_ReportError
#         (
#             (uint16) PWM_MODULE_ID,
#             (uint8)  PWM_INDEX,
#             (uint8)  PWM_GETVERSIONINFO_ID,
#             (uint8)  PWM_E_PARAM_POINTER
#       /*
#              * @violates @ref Pwm_C_REF_9 Ignore value is ignored as return value is always 
#              * the same and the value itself is not needed
#              */
#         );
#     }
# #endif /* PWM_DEV_ERROR_DETECT */
# }
	.d2line		2180
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo28:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L515:
	.type		Pwm_GetVersionInfo,@function
	.size		Pwm_GetVersionInfo,.-Pwm_GetVersionInfo
# Number of nodes = 28

# Allocations for Pwm_GetVersionInfo
#	?a4		pVersioninfo
# FUNC(uint16, PWM_CODE) Pwm_GetChannelState
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2203,24
#$$ld
.L523:

#$$bf	Pwm_GetChannelState,interprocedural,rasave,nostackparams
	.globl		Pwm_GetChannelState
	.d2_cfa_start __cie
Pwm_GetChannelState:
.Llo29:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# u16DutyCycle=r0
.Llo31:
	stw		r0,20(r1)		# u16DutyCycle=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(Pwm_ChannelType,          AUTOMATIC) ChannelNumber
# )
# {
#     VAR(uint16, AUTOMATIC) u16DutyCycle = (uint16)0U;
	.d2line		2208
	diab.li		r0,0		# u16DutyCycle=r0
# 
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Pwm_ValidateChannelConfigCall(ChannelNumber, PWM_GETCHANNELSTATE_ID))
#     {
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */
# 
#         /* All validations passed. Here starts the actual
#         functional code of the function */
#         u16DutyCycle = Pwm_Ipw_GetChannelState(ChannelNumber,  &Pwm_pConfig->IpConfig);
	.d2line		2217
.Llo32:
	rlwinm		r3,r3,0,24,31		# ChannelNumber=r3 ChannelNumber=r3
.Llo30:
	lis		r4,Pwm_pConfig@ha
	lwz		r4,Pwm_pConfig@l(r4)
	se_addi		r4,8
	bl		Pwm_Ipw_GetChannelState
# 
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     }
#     /*
#     * @violates @ref Pwm_C_REF_5 All non-null statements shall either a)have at least
#     * one side efect however executed, or b)cause control flow to change.
#     */
#     Pwm_EndValidateChannelConfigCall(ChannelNumber);   
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */
# 
#     return u16DutyCycle;
	.d2line		2228
.Llo33:
	rlwinm		r3,r3,0,16,31		# u16DutyCycle=r3 u16DutyCycle=r3
# }
	.d2line		2229
	.d2epilogue_begin
.Llo34:
	lwz		r0,20(r1)		# u16DutyCycle=r0
	mtspr		lr,r0		# u16DutyCycle=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L524:
	.type		Pwm_GetChannelState,@function
	.size		Pwm_GetChannelState,.-Pwm_GetChannelState
# Number of nodes = 16

# Allocations for Pwm_GetChannelState
#	?a4		ChannelNumber
#	?a5		u16DutyCycle
# FUNC(void, PWM_CODE) Pwm_Notification
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2249,22
#$$ld
.L531:

#$$bf	Pwm_Notification,interprocedural,rasave,nostackparams
	.globl		Pwm_Notification
	.d2_cfa_start __cie
Pwm_Notification:
.Llo35:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Channel=r0 Channel=r3
	.d2prologue_end
# (
#     VAR(Pwm_ChannelType, AUTOMATIC) Channel
# )
# {
#     VAR(uint8,          AUTOMATIC) u8LogicChannel;
#     VAR(Pwm_NotifyType, AUTOMATIC) pfNotify;
#     
#     if(NULL_PTR != Pwm_pConfig)
	.d2line		2257
.Llo41:
	lis		r3,Pwm_pConfig@ha
.Llo36:
	lwz		r3,Pwm_pConfig@l(r3)
	se_cmpi		r3,0
	bc		1,2,.L429	# eq
#     {
#         u8LogicChannel = Pwm_pConfig->HwToLogicChannelMap[Channel];
	.d2line		2259
.Llo37:
	lis		r4,Pwm_pConfig@ha
	lwz		r3,Pwm_pConfig@l(r4)
	rlwinm		r0,r0,0,24,31		# Channel=r0 Channel=r0
	se_add		r3,r0		# Channel=r0
	lbz		r0,16(r3)		# Channel=r0
.Llo39:
	mr		r0,r0		# u8LogicChannel=r0 u8LogicChannel=r0
#         /* Check that there is a logic channel associated with the Hw one */
#         pfNotify = (*Pwm_pConfig->pPwmChannelsConfig)[u8LogicChannel].pfPwmChannelNotification;
	.d2line		2261
	lwz		r3,Pwm_pConfig@l(r4)
	lwz		r3,4(r3)
	rlwinm		r0,r0,3,21,28		# u8LogicChannel=r0 u8LogicChannel=r0
	se_add		r3,r0		# u8LogicChannel=r0
	lwz		r0,4(r3)		# u8LogicChannel=r0
	.d2line		2267
	mr.		r0,r0		# pfNotify=?a6 pfNotify=?a10
#         /* Check that a notification is defined for the associated 
#         logic channel. This is a double check not necessarily needed because if notification were
#         enabled in IP layer for the channel that generated the interrupt causing this notify to
#         be called, it means that this channel cannot have a null notification, otherwise notification
#         could not have been enabled  */
#         if(NULL_PTR != pfNotify)
.Llo40:
	bc		1,2,.L429	# eq
#         {
#             pfNotify();   
	.d2line		2269
	mtspr		ctr,r0		# pfNotify=ctr pfNotify=r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L429:
#         }
#     }
# }
	.d2line		2272
	.d2epilogue_begin
.Llo38:
	lwz		r0,20(r1)		# pfNotify=r0
	mtspr		lr,r0		# pfNotify=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L532:
	.type		Pwm_Notification,@function
	.size		Pwm_Notification,.-Pwm_Notification
# Number of nodes = 32

# Allocations for Pwm_Notification
#	?a4		Channel
#	?a5		u8LogicChannel
#	?a6		pfNotify
# FUNC(void, PWM_CODE) Pwm_SetCounterBus
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2371,22
#$$ld
.L545:

#$$bf	Pwm_SetCounterBus,interprocedural,rasave,nostackparams
	.globl		Pwm_SetCounterBus
	.d2_cfa_start __cie
Pwm_SetCounterBus:
.Llo42:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(Pwm_ChannelType,    AUTOMATIC) ChannelNumber,
#     VAR(uint32,             AUTOMATIC) u32Bus
# )
# {
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Pwm_ValidateChannelConfigCall(ChannelNumber, PWM_SETCOUNTERBUS_ID))
#     {
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */
# #if (PWM_PARAM_CHECK == STD_ON)
#         if((Std_ReturnType)E_OK == Pwm_ValidateCounterBus(u32Bus))
#         {
# #endif /* (PWM_PARAM_CHECK == STD_ON) */
#             Pwm_Ipw_SetCounterBus( ChannelNumber, u32Bus, &Pwm_pConfig->IpConfig);
	.d2line		2385
	rlwinm		r3,r3,0,24,31		# ChannelNumber=r3 ChannelNumber=r3
.Llo43:
	lis		r5,Pwm_pConfig@ha
	lwz		r5,Pwm_pConfig@l(r5)
	se_addi		r5,8
	mr		r0,r4		# u32Bus=r0 u32Bus=r4
	bl		Pwm_Ipw_SetCounterBus
# 
# #if (PWM_PARAM_CHECK == STD_ON)
#         }
# #endif /* (PWM_PARAM_CHECK == STD_ON) */
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     }
#     /*
#     * @violates @ref Pwm_C_REF_5 All non-null statements shall either a)have at least
#     * one side efect however executed, or b)cause control flow to change.
#     */
#     Pwm_EndValidateChannelConfigCall(ChannelNumber);   
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */
# }
	.d2line		2398
	.d2epilogue_begin
.Llo44:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L546:
	.type		Pwm_SetCounterBus,@function
	.size		Pwm_SetCounterBus,.-Pwm_SetCounterBus
# Number of nodes = 11

# Allocations for Pwm_SetCounterBus
#	?a4		ChannelNumber
#	?a5		u32Bus
# FUNC(void, PWM_CODE) Pwm_SetChannelOutput
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2420,22
#$$ld
.L554:

#$$bf	Pwm_SetChannelOutput,interprocedural,rasave,nostackparams
	.globl		Pwm_SetChannelOutput
	.d2_cfa_start __cie
Pwm_SetChannelOutput:
.Llo45:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(Pwm_ChannelType,        AUTOMATIC) ChannelNumber,
#     VAR(Pwm_StateType,          AUTOMATIC) nState
# )
# {
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Pwm_ValidateChannelConfigCall(ChannelNumber, PWM_SETCHANNELOUTPUT_ID))
#     {
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */
# #if (PWM_PARAM_CHECK == STD_ON)
#         if((Std_ReturnType)E_OK == Pwm_ValidateOutputState(ChannelNumber, nState))
#         {
# #endif /* (PWM_PARAM_CHECK == STD_ON) */
#             Pwm_Ipw_SetChannelOutput( ChannelNumber, nState, &Pwm_pConfig->IpConfig);
	.d2line		2434
	rlwinm		r3,r3,0,24,31		# ChannelNumber=r3 ChannelNumber=r3
.Llo46:
	lis		r5,Pwm_pConfig@ha
	lwz		r5,Pwm_pConfig@l(r5)
	se_addi		r5,8
	mr		r0,r4		# nState=r0 nState=r4
	bl		Pwm_Ipw_SetChannelOutput
# #if (PWM_PARAM_CHECK == STD_ON)
#         }
# #endif /* (PWM_PARAM_CHECK == STD_ON) */
# #if (PWM_VALIDATE_CHANNEL_CONFIG_CALL == STD_ON)
#     }
#     /*
#     * @violates @ref Pwm_C_REF_5 All non-null statements shall either a)have at least
#     * one side efect however executed, or b)cause control flow to change.
#     */
#     Pwm_EndValidateChannelConfigCall(ChannelNumber);   
# #endif /* PWM_VALIDATE_CHANNEL_CONFIG_CALL */
# }
	.d2line		2446
	.d2epilogue_begin
.Llo47:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L555:
	.type		Pwm_SetChannelOutput,@function
	.size		Pwm_SetChannelOutput,.-Pwm_SetChannelOutput
# Number of nodes = 11

# Allocations for Pwm_SetChannelOutput
#	?a4		ChannelNumber
#	?a5		nState
# FUNC(void, PWM_CODE) Pwm_BufferTransferEnableDisable
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2524,22
#$$ld
.L563:

#$$bf	Pwm_BufferTransferEnableDisable,interprocedural,rasave,nostackparams
	.globl		Pwm_BufferTransferEnableDisable
	.d2_cfa_start __cie
Pwm_BufferTransferEnableDisable:
.Llo48:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(uint8,          AUTOMATIC) u8ModuleIndex,
#     VAR(uint32,         AUTOMATIC) u32ChannelMasks
# )
# {
# #if (PWM_VALIDATE_GLOBAL_CONFIG_CALL == STD_ON)
#     VAR(Std_ReturnType, AUTOMATIC)  CallIsValid;
# #endif
# 
# #if (PWM_VALIDATE_GLOBAL_CONFIG_CALL == STD_ON)
#     CallIsValid = Pwm_ValidateGlobalConfigCall(PWM_BUFFERTRANSFERENDIS_ID);
#     if((Std_ReturnType)E_OK == CallIsValid)
#     {
# #endif /* PWM_VALIDATE_GLOBAL_CONFIG_CALL */
# 
# #if (PWM_PARAM_CHECK == STD_ON)
#         if((Std_ReturnType)E_OK == Pwm_ValidateModuleId(u8ModuleIndex, PWM_BUFFERTRANSFERENDIS_ID))
#         {
# #endif /* (PWM_PARAM_CHECK == STD_ON) */
#             Pwm_Ipw_BufferTransferEnableDisable(u8ModuleIndex, u32ChannelMasks);
	.d2line		2544
	rlwinm		r3,r3,0,24,31		# u8ModuleIndex=r3 u8ModuleIndex=r3
.Llo49:
	mr		r0,r4		# u32ChannelMasks=r0 u32ChannelMasks=r4
	bl		Pwm_Ipw_BufferTransferEnableDisable
# 
# #if (PWM_PARAM_CHECK == STD_ON)
#         }
# #endif /* (PWM_PARAM_CHECK == STD_ON) */
# 
# #if (PWM_VALIDATE_GLOBAL_CONFIG_CALL == STD_ON)
#     }
#     /*
#     * @violates @ref Pwm_C_REF_5 All non-null statements shall either a)have at least
#     * one side efect however executed, or b)cause control flow to change.
#     */
#     Pwm_EndValidateGlobalConfigCall(CallIsValid, PWM_BUFFERTRANSFERENDIS_ID);
# #endif /* PWM_VALIDATE_GLOBAL_CONFIG_CALL */
# }
	.d2line		2558
	.d2epilogue_begin
.Llo50:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L564:
	.type		Pwm_BufferTransferEnableDisable,@function
	.size		Pwm_BufferTransferEnableDisable,.-Pwm_BufferTransferEnableDisable
# Number of nodes = 7

# Allocations for Pwm_BufferTransferEnableDisable
#	?a4		u8ModuleIndex
#	?a5		u32ChannelMasks

# Allocations for module
	.section	.mcal_data,,d
	.0byte		.L568
	.section	.mcal_data,,d
	.type		Pwm_pConfig,@object
	.size		Pwm_pConfig,4
	.align		2
Pwm_pConfig:
	.long		0
	.section	.text_vle
#$$ld
.L5:
.L622:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L604:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Pwm_Types.h"
.L589:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Pwm_Ipw_Types.h"
.L570:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Pwm.h"
.L569:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Pwm.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L440:
.L448:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Pwm.c"
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
	.uleb128	10
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
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
	.uleb128	13
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
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
	.uleb128	15
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	16
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	33
	.byte		0x0
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Pwm.c"
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
.L437:
	.4byte		.L438-.L436
.L436:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L442-.L437
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Pwm.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L439
	.4byte		.L440
	.4byte		.L443
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L449:
	.sleb128	2
	.4byte		.L445-.L437
	.byte		"Pwm_Init"
	.byte		0
	.4byte		.L448
	.uleb128	1522
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L446
	.4byte		.L447
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L448
	.uleb128	1522
	.uleb128	22
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L450
	.4byte		.L454
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L445:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L459:
	.sleb128	2
	.4byte		.L456-.L437
	.byte		"Pwm_DeInit"
	.byte		0
	.4byte		.L448
	.uleb128	1618
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L457
	.4byte		.L458
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L456:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L464:
	.sleb128	2
	.4byte		.L461-.L437
	.byte		"Pwm_SetDutyCycle"
	.byte		0
	.4byte		.L448
	.uleb128	1698
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L462
	.4byte		.L463
	.sleb128	3
	.4byte		.L448
	.uleb128	1698
	.uleb128	22
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L465
	.4byte		.L468
	.sleb128	3
	.4byte		.L448
	.uleb128	1698
	.uleb128	22
	.byte		"u16DutyCycle"
	.byte		0
	.4byte		.L469
	.4byte		.L471
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L461:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L476:
	.sleb128	2
	.4byte		.L473-.L437
	.byte		"Pwm_SetPeriodAndDuty"
	.byte		0
	.4byte		.L448
	.uleb128	1795
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L474
	.4byte		.L475
	.sleb128	3
	.4byte		.L448
	.uleb128	1795
	.uleb128	22
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L465
	.4byte		.L477
	.sleb128	3
	.4byte		.L448
	.uleb128	1795
	.uleb128	22
	.byte		"Period"
	.byte		0
	.4byte		.L478
	.4byte		.L479
	.sleb128	3
	.4byte		.L448
	.uleb128	1795
	.uleb128	22
	.byte		"u16DutyCycle"
	.byte		0
	.4byte		.L469
	.4byte		.L480
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L473:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L485:
	.sleb128	2
	.4byte		.L482-.L437
	.byte		"Pwm_SetOutputToIdle"
	.byte		0
	.4byte		.L448
	.uleb128	1879
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L483
	.4byte		.L484
	.sleb128	3
	.4byte		.L448
	.uleb128	1879
	.uleb128	22
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L465
	.4byte		.L486
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L482:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L493:
	.sleb128	4
	.4byte		.L488-.L437
	.byte		"Pwm_GetOutputState"
	.byte		0
	.4byte		.L448
	.uleb128	1951
	.uleb128	37
	.4byte		.L491
	.byte		0x1
	.byte		0x1
	.4byte		.L489
	.4byte		.L490
	.sleb128	3
	.4byte		.L448
	.uleb128	1951
	.uleb128	37
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L465
	.4byte		.L494
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L495:
	.sleb128	5
	.4byte		.L448
	.uleb128	1956
	.uleb128	41
	.byte		"retVal"
	.byte		0
	.4byte		.L491
	.4byte		.L496
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L488:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L501:
	.sleb128	2
	.4byte		.L498-.L437
	.byte		"Pwm_DisableNotification"
	.byte		0
	.4byte		.L448
	.uleb128	2023
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L499
	.4byte		.L500
	.sleb128	3
	.4byte		.L448
	.uleb128	2023
	.uleb128	22
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L465
	.4byte		.L502
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L498:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L507:
	.sleb128	2
	.4byte		.L504-.L437
	.byte		"Pwm_EnableNotification"
	.byte		0
	.4byte		.L448
	.uleb128	2089
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L505
	.4byte		.L506
	.sleb128	3
	.4byte		.L448
	.uleb128	2089
	.uleb128	22
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L465
	.4byte		.L508
	.sleb128	3
	.4byte		.L448
	.uleb128	2089
	.uleb128	22
	.byte		"Notification"
	.byte		0
	.4byte		.L509
	.4byte		.L511
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L504:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L516:
	.sleb128	2
	.4byte		.L513-.L437
	.byte		"Pwm_GetVersionInfo"
	.byte		0
	.4byte		.L448
	.uleb128	2144
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L514
	.4byte		.L515
	.sleb128	3
	.4byte		.L448
	.uleb128	2144
	.uleb128	22
	.byte		"pVersioninfo"
	.byte		0
	.4byte		.L517
	.4byte		.L520
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L513:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L525:
	.sleb128	4
	.4byte		.L522-.L437
	.byte		"Pwm_GetChannelState"
	.byte		0
	.4byte		.L448
	.uleb128	2203
	.uleb128	24
	.4byte		.L469
	.byte		0x1
	.byte		0x1
	.4byte		.L523
	.4byte		.L524
	.sleb128	3
	.4byte		.L448
	.uleb128	2203
	.uleb128	24
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L465
	.4byte		.L526
.L527:
	.sleb128	5
	.4byte		.L448
	.uleb128	2208
	.uleb128	28
	.byte		"u16DutyCycle"
	.byte		0
	.4byte		.L469
	.4byte		.L528
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L522:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L533:
	.sleb128	2
	.4byte		.L530-.L437
	.byte		"Pwm_Notification"
	.byte		0
	.4byte		.L448
	.uleb128	2249
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L531
	.4byte		.L532
	.sleb128	3
	.4byte		.L448
	.uleb128	2249
	.uleb128	22
	.byte		"Channel"
	.byte		0
	.4byte		.L465
	.4byte		.L534
.L535:
	.sleb128	5
	.4byte		.L448
	.uleb128	2254
	.uleb128	36
	.byte		"u8LogicChannel"
	.byte		0
	.4byte		.L466
	.4byte		.L536
.L537:
	.sleb128	5
	.4byte		.L448
	.uleb128	2255
	.uleb128	36
	.byte		"pfNotify"
	.byte		0
	.4byte		.L538
	.4byte		.L542
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L530:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L547:
	.sleb128	2
	.4byte		.L544-.L437
	.byte		"Pwm_SetCounterBus"
	.byte		0
	.4byte		.L448
	.uleb128	2371
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L545
	.4byte		.L546
	.sleb128	3
	.4byte		.L448
	.uleb128	2371
	.uleb128	22
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L465
	.4byte		.L548
	.sleb128	3
	.4byte		.L448
	.uleb128	2371
	.uleb128	22
	.byte		"u32Bus"
	.byte		0
	.4byte		.L549
	.4byte		.L551
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L544:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L556:
	.sleb128	2
	.4byte		.L553-.L437
	.byte		"Pwm_SetChannelOutput"
	.byte		0
	.4byte		.L448
	.uleb128	2420
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L554
	.4byte		.L555
	.sleb128	3
	.4byte		.L448
	.uleb128	2420
	.uleb128	22
	.byte		"ChannelNumber"
	.byte		0
	.4byte		.L465
	.4byte		.L557
	.sleb128	3
	.4byte		.L448
	.uleb128	2420
	.uleb128	22
	.byte		"nState"
	.byte		0
	.4byte		.L558
	.4byte		.L560
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L553:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L565:
	.sleb128	2
	.4byte		.L562-.L437
	.byte		"Pwm_BufferTransferEnableDisable"
	.byte		0
	.4byte		.L448
	.uleb128	2524
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L563
	.4byte		.L564
	.sleb128	3
	.4byte		.L448
	.uleb128	2524
	.uleb128	22
	.byte		"u8ModuleIndex"
	.byte		0
	.4byte		.L466
	.4byte		.L566
	.sleb128	3
	.4byte		.L448
	.uleb128	2524
	.uleb128	22
	.byte		"u32ChannelMasks"
	.byte		0
	.4byte		.L549
	.4byte		.L567
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L562:
	.section	.debug_info,,n
.L568:
	.sleb128	6
	.4byte		.L569
	.uleb128	225
	.uleb128	57
	.byte		"Pwm_pConfig"
	.byte		0
	.4byte		.L450
	.sleb128	5
	.byte		0x3
	.4byte		Pwm_pConfig
	.section	.debug_info,,n
	.section	.debug_info,,n
.L453:
	.sleb128	7
	.4byte		.L570
	.uleb128	500
	.uleb128	1
	.4byte		.L571-.L2
	.uleb128	80
	.section	.debug_info,,n
.L415:
	.sleb128	8
	.byte		"nNumChannels"
	.byte		0
	.4byte		.L572
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L416:
	.sleb128	8
	.byte		"pPwmChannelsConfig"
	.byte		0
	.4byte		.L573
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L417:
	.sleb128	8
	.byte		"IpConfig"
	.byte		0
	.4byte		.L579
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L418:
	.sleb128	8
	.byte		"HwToLogicChannelMap"
	.byte		0
	.4byte		.L582
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L571:
.L578:
	.sleb128	7
	.4byte		.L570
	.uleb128	500
	.uleb128	1
	.4byte		.L584-.L2
	.uleb128	8
.L413:
	.sleb128	8
	.byte		"ePwmChannelClass"
	.byte		0
	.4byte		.L585
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L414:
	.sleb128	8
	.byte		"pfPwmChannelNotification"
	.byte		0
	.4byte		.L588
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L584:
.L581:
	.sleb128	7
	.4byte		.L589
	.uleb128	149
	.uleb128	1
	.4byte		.L590-.L2
	.uleb128	8
.L242:
	.sleb128	8
	.byte		"peMiosIpConfig"
	.byte		0
	.4byte		.L591
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L243:
	.sleb128	8
	.byte		"pIpChannelsConfig"
	.byte		0
	.4byte		.L596
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L590:
.L601:
	.sleb128	7
	.4byte		.L589
	.uleb128	149
	.uleb128	1
	.4byte		.L602-.L2
	.uleb128	1
.L241:
	.sleb128	8
	.byte		"u8IdxChannelConfig"
	.byte		0
	.4byte		.L603
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L602:
.L595:
	.sleb128	7
	.4byte		.L604
	.uleb128	148
	.uleb128	1
	.4byte		.L605-.L2
	.uleb128	8
.L239:
	.sleb128	8
	.byte		"u8NumChannels"
	.byte		0
	.4byte		.L606
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L240:
	.sleb128	8
	.byte		"pChannelsConfig"
	.byte		0
	.4byte		.L608
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L605:
.L613:
	.sleb128	7
	.4byte		.L604
	.uleb128	148
	.uleb128	1
	.4byte		.L614-.L2
	.uleb128	24
.L230:
	.sleb128	8
	.byte		"ePwmPolarity"
	.byte		0
	.4byte		.L615
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L231:
	.sleb128	8
	.byte		"ePwmIdleState"
	.byte		0
	.4byte		.L615
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L232:
	.sleb128	8
	.byte		"u16PwmDefaultDutyCycle"
	.byte		0
	.4byte		.L616
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L233:
	.sleb128	8
	.byte		"nPwmDefaultPeriod"
	.byte		0
	.4byte		.L617
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L234:
	.sleb128	8
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L606
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L235:
	.sleb128	8
	.byte		"u32ControlValue"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L236:
	.sleb128	8
	.byte		"nPwmOffset"
	.byte		0
	.4byte		.L617
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L237:
	.sleb128	8
	.byte		"u8MasterMode"
	.byte		0
	.4byte		.L603
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L238:
	.sleb128	8
	.byte		"bPwmOffsetTriggerDelay"
	.byte		0
	.4byte		.L620
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
	.sleb128	0
.L614:
.L519:
	.sleb128	7
	.4byte		.L622
	.uleb128	5953
	.uleb128	5
	.4byte		.L623-.L2
	.uleb128	8
.L225:
	.sleb128	8
	.byte		"vendorID"
	.byte		0
	.4byte		.L469
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L226:
	.sleb128	8
	.byte		"moduleID"
	.byte		0
	.4byte		.L469
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L227:
	.sleb128	8
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L466
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L228:
	.sleb128	8
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L466
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L229:
	.sleb128	8
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L466
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L623:
	.section	.debug_info,,n
.L587:
	.sleb128	9
	.4byte		.L570
	.uleb128	500
	.uleb128	1
	.4byte		.L624-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"PWM_VARIABLE_PERIOD"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"PWM_FIXED_PERIOD"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"PWM_FIXED_PERIOD_SHIFTED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L624:
.L559:
	.sleb128	9
	.4byte		.L589
	.uleb128	149
	.uleb128	1
	.4byte		.L625-.L2
	.uleb128	4
	.sleb128	10
	.byte		"PWM_ACTIVE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"PWM_INACTIVE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L625:
.L510:
	.sleb128	9
	.4byte		.L604
	.uleb128	148
	.uleb128	1
	.4byte		.L626-.L2
	.uleb128	4
	.sleb128	10
	.byte		"PWM_RISING_EDGE"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"PWM_FALLING_EDGE"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"PWM_BOTH_EDGES"
	.byte		0
	.sleb128	3
	.sleb128	0
.L626:
.L492:
	.sleb128	9
	.4byte		.L604
	.uleb128	120
	.uleb128	1
	.4byte		.L627-.L2
	.uleb128	4
	.sleb128	10
	.byte		"PWM_LOW"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"PWM_HIGH"
	.byte		0
	.sleb128	1
	.sleb128	0
.L627:
	.section	.debug_info,,n
.L452:
	.sleb128	11
	.byte		"Pwm_ConfigType"
	.byte		0
	.4byte		.L453
	.section	.debug_info,,n
.L451:
	.sleb128	12
	.4byte		.L452
	.section	.debug_info,,n
.L450:
	.sleb128	13
	.4byte		.L451
	.section	.debug_info,,n
.L467:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L466:
	.sleb128	11
	.byte		"uint8"
	.byte		0
	.4byte		.L467
.L465:
	.sleb128	11
	.byte		"Pwm_ChannelType"
	.byte		0
	.4byte		.L466
.L470:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L469:
	.sleb128	11
	.byte		"uint16"
	.byte		0
	.4byte		.L470
.L478:
	.sleb128	11
	.byte		"Pwm_PeriodType"
	.byte		0
	.4byte		.L469
.L491:
	.sleb128	11
	.byte		"Pwm_OutputStateType"
	.byte		0
	.4byte		.L492
.L509:
	.sleb128	11
	.byte		"Pwm_EdgeNotificationType"
	.byte		0
	.4byte		.L510
.L518:
	.sleb128	11
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L519
.L517:
	.sleb128	13
	.4byte		.L518
	.section	.debug_info,,n
.L540:
	.sleb128	15
	.4byte		.L541
	.byte		0x1
	.sleb128	0
.L541:
.L539:
	.sleb128	13
	.4byte		.L540
.L538:
	.sleb128	11
	.byte		"Pwm_NotifyType"
	.byte		0
	.4byte		.L539
.L550:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L549:
	.sleb128	11
	.byte		"uint32"
	.byte		0
	.4byte		.L550
.L558:
	.sleb128	11
	.byte		"Pwm_StateType"
	.byte		0
	.4byte		.L559
.L572:
	.sleb128	12
	.4byte		.L465
.L577:
	.sleb128	11
	.byte		"Pwm_ChannelConfigType"
	.byte		0
	.4byte		.L578
.L576:
	.sleb128	12
	.4byte		.L577
	.section	.debug_info,,n
.L574:
	.sleb128	16
	.4byte		.L575-.L2
	.4byte		.L576
	.section	.debug_info,,n
	.sleb128	17
	.sleb128	0
.L575:
.L573:
	.sleb128	13
	.4byte		.L574
.L580:
	.sleb128	11
	.byte		"Pwm_IpConfigType"
	.byte		0
	.4byte		.L581
.L579:
	.sleb128	12
	.4byte		.L580
.L582:
	.sleb128	16
	.4byte		.L583-.L2
	.4byte		.L572
	.section	.debug_info,,n
	.sleb128	18
	.uleb128	63
	.sleb128	0
.L583:
.L586:
	.sleb128	11
	.byte		"Pwm_ChannelClassType"
	.byte		0
	.4byte		.L587
.L585:
	.sleb128	12
	.4byte		.L586
.L588:
	.sleb128	12
	.4byte		.L538
.L594:
	.sleb128	11
	.byte		"Pwm_eMios_IpConfigType"
	.byte		0
	.4byte		.L595
.L593:
	.sleb128	12
	.4byte		.L594
.L592:
	.sleb128	13
	.4byte		.L593
.L591:
	.sleb128	12
	.4byte		.L592
.L600:
	.sleb128	11
	.byte		"Pwm_IpChannelConfigType"
	.byte		0
	.4byte		.L601
.L599:
	.sleb128	12
	.4byte		.L600
.L597:
	.sleb128	16
	.4byte		.L598-.L2
	.4byte		.L599
	.sleb128	17
	.sleb128	0
.L598:
.L596:
	.sleb128	13
	.4byte		.L597
.L603:
	.sleb128	12
	.4byte		.L466
.L607:
	.sleb128	11
	.byte		"Pwm_eMios_ChannelType"
	.byte		0
	.4byte		.L466
.L606:
	.sleb128	12
	.4byte		.L607
.L612:
	.sleb128	11
	.byte		"Pwm_eMios_ChannelConfigType"
	.byte		0
	.4byte		.L613
.L611:
	.sleb128	12
	.4byte		.L612
.L609:
	.sleb128	16
	.4byte		.L610-.L2
	.4byte		.L611
	.sleb128	17
	.sleb128	0
.L610:
.L608:
	.sleb128	13
	.4byte		.L609
.L615:
	.sleb128	12
	.4byte		.L491
.L616:
	.sleb128	12
	.4byte		.L469
.L617:
	.sleb128	12
	.4byte		.L478
.L619:
	.sleb128	11
	.byte		"Pwm_eMios_ControlType"
	.byte		0
	.4byte		.L549
.L618:
	.sleb128	12
	.4byte		.L619
.L621:
	.sleb128	11
	.byte		"boolean"
	.byte		0
	.4byte		.L467
.L620:
	.sleb128	12
	.4byte		.L621
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L442:
	.sleb128	0
.L438:

	.section	.debug_loc,,n
	.align	0
.L454:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L468:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L471:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo5),4
	.d2locend
.L477:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),3
	.d2locend
.L479:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo8),4
	.d2locend
.L480:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo9),5
	.d2locend
.L486:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locend
.L494:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),4
	.d2locend
.L496:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locend
.L502:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locend
.L508:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locend
.L511:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo24),4
	.d2locend
.L520:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),4
	.d2locend
.L526:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locend
.L528:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),0
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),3
	.d2locend
.L534:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),3
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),0
	.d2locend
.L536:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),0
	.d2locend
.L542:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo38),0
	.d2locend
.L548:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),3
	.d2locend
.L551:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo44),4
	.d2locend
.L557:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),3
	.d2locend
.L560:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo47),4
	.d2locend
.L566:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),3
	.d2locend
.L567:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo50),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Pwm_BufferTransferEnableDisable"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_Ipw_BufferTransferEnableDisable"
	.wrcm.end
	.wrcm.nelem "Pwm_SetChannelOutput"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_Ipw_SetChannelOutput"
	.wrcm.end
	.wrcm.nelem "Pwm_SetCounterBus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_Ipw_SetCounterBus"
	.wrcm.end
	.wrcm.nelem "Pwm_Notification"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Pwm_GetChannelState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_Ipw_GetChannelState"
	.wrcm.end
	.wrcm.nelem "Pwm_GetVersionInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Pwm_EnableNotification"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_Ipw_EnableNotification"
	.wrcm.end
	.wrcm.nelem "Pwm_DisableNotification"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_Ipw_DisableNotification"
	.wrcm.end
	.wrcm.nelem "Pwm_GetOutputState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_Ipw_GetOutputState"
	.wrcm.end
	.wrcm.nelem "Pwm_SetOutputToIdle"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_Ipw_SetOutputToIdle"
	.wrcm.end
	.wrcm.nelem "Pwm_SetPeriodAndDuty"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_Ipw_SetPeriodAndDuty"
	.wrcm.end
	.wrcm.nelem "Pwm_SetDutyCycle"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_Ipw_SetDutyCycle"
	.wrcm.end
	.wrcm.nelem "Pwm_DeInit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_Ipw_DeInit"
	.wrcm.end
	.wrcm.nelem "Pwm_Init"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_Ipw_Init"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Pwm.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Pwm.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Pwm.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Pwm.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Pwm.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Pwm.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Pwm\ssc\make\..\..\generator\integration_package\src\Pwm.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
