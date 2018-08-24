#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Wdg_Channel.c"
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
# LOCAL_INLINE FUNC(void, WDG_CODE) Wdg_ChannelTrigger(CONST(Wdg_IPW_InstanceType, WDG_CONST) Wdg_Instance)
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L482:
	.section	.invalid_TEXT,,c
#$$ld
.L478:
	.0byte		.L476
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Wdg_Channel.c"
        .d2line         969,35
#$$ld
.L485:

#$$bf	Wdg_ChannelTrigger,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Wdg_ChannelTrigger:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Wdg_Instance=r31 Wdg_Instance=r3
	.d2prologue_end
# {
# #if (WDG_VALIDATE_GLOBAL_CALL == STD_ON)
#     VAR(Std_ReturnType, AUTOMATIC)valid;
#     
#     valid = Wdg_ChannelValidateGlobalCall(WDG_TRIGGER_ID, Wdg_Instance);
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif /* (WDG_VALIDATE_GLOBAL_CALL == STD_ON */
#         SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_00();
	.d2line		978
.Llo2:
	bl		SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_00
#         
#         if( Wdg_au16Timeout[Wdg_Instance] < Wdg_au16GptPeriod[Wdg_Instance])
	.d2line		980
.Llo3:
	lis		r3,Wdg_au16Timeout@ha
	e_add16i		r3,r3,Wdg_au16Timeout@l
	rlwinm		r0,r31,1,0,30		# Wdg_Instance=r31
	lhzux		r4,r3,r0
	lis		r3,Wdg_au16GptPeriod@ha
	e_add16i		r3,r3,Wdg_au16GptPeriod@l
	lhzx		r0,r3,r0
	se_cmp		r4,r0
	bc		0,0,.L447	# ge
#         {
#             MCAL_FAULT_INJECTION_POINT(T_WDG_INJ_TG_0);
#             SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_00();
	.d2line		983
.Llo4:
	bl		SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_00
#             Gpt_StopTimer(Wdg_apConfigPtr[Wdg_Instance]->Wdg_TimerChannel);
	.d2line		984
	lis		r3,Wdg_apConfigPtr@ha
	e_add16i		r3,r3,Wdg_apConfigPtr@l
.Llo5:
	se_slwi		r31,2		# Wdg_Instance=r31 Wdg_Instance=r31
.Llo6:
	lwzx		r3,r3,r31
	lbz		r3,8(r3)
	bl		Gpt_StopTimer
	b		.L446
.L447:
	.section	.invalid_TEXT,,c
.L493:
#         }
#         else
#         {
#             VAR(uint16, AUTOMATIC) u16TempTimeout = Wdg_au16Timeout[Wdg_Instance] - Wdg_au16GptPeriod[Wdg_Instance];
	.d2line		988
.Llo7:
	lis		r3,Wdg_au16Timeout@ha		# Wdg_Instance=r3
	e_add16i		r3,r3,Wdg_au16Timeout@l		# Wdg_Instance=r3 Wdg_Instance=r3
	rlwinm		r0,r31,1,0,30		# Wdg_Instance=r31
	lhzux		r4,r3,r0		# Wdg_Instance=r3
	lis		r3,Wdg_au16GptPeriod@ha		# Wdg_Instance=r3
	e_add16i		r3,r3,Wdg_au16GptPeriod@l		# Wdg_Instance=r3 Wdg_Instance=r3
	lhzux		r5,r3,r0		# u16TempTimeout=r5 Wdg_Instance=r3
.Llo9:
	subf		r5,r5,r4		# u16TempTimeout=r5 u16TempTimeout=r5
	mr		r3,r5		# u16TempTimeout=r3 u16TempTimeout=r5
#             
#             Wdg_au16Timeout[Wdg_Instance] = u16TempTimeout;
	.d2line		990
	lis		r3,Wdg_au16Timeout@ha		# u16TempTimeout=r3
	e_add16i		r3,r3,Wdg_au16Timeout@l		# u16TempTimeout=r3 u16TempTimeout=r3
	sthx		r5,r3,r0		# u16TempTimeout=r3 u16TempTimeout=r5
#             SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_00();          
	.d2line		991
	bl		SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_00
#             Wdg_IPW_Trigger(Wdg_Instance);
	.d2line		992
.Llo10:
	mr		r3,r31		# Wdg_Instance=r3 Wdg_Instance=r31
	bl		Wdg_Swt_Trigger
	.section	.invalid_TEXT,,c
.L494:
.L446:
#         }
# #if (WDG_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
#     Wdg_ChannelEndValidateGlobalCall(valid, Wdg_Instance);
# #endif /* (WDG_VALIDATE_GLOBAL_CALL == STD_ON */
# }
	.d2line		998
	.d2epilogue_begin
.Llo8:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L486:
	.type		Wdg_ChannelTrigger,@function
	.size		Wdg_ChannelTrigger,.-Wdg_ChannelTrigger
# Number of nodes = 68

# Allocations for Wdg_ChannelTrigger
#	?a4		Wdg_Instance
#	?a5		u16TempTimeout
# FUNC(void, WDG_CODE) Wdg_Cbk_GptNotification1(void)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         546,22
#$$ld
.L503:

#$$bf	Wdg_Cbk_GptNotification1,interprocedural,rasave,nostackparams
	.globl		Wdg_Cbk_GptNotification1
	.d2_cfa_start __cie
Wdg_Cbk_GptNotification1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     Wdg_ChannelTrigger(WDG_IPW_INSTANCE1);
	.d2line		548
	diab.li		r3,1
	bl		Wdg_ChannelTrigger
# }
	.d2line		549
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
.L504:
	.type		Wdg_Cbk_GptNotification1,@function
	.size		Wdg_Cbk_GptNotification1,.-Wdg_Cbk_GptNotification1
# Number of nodes = 4

# Allocations for Wdg_Cbk_GptNotification1
# LOCAL_INLINE FUNC(Std_ReturnType, WDG_CODE) Wdg_ChannelValidateMode(VAR(WdgIf_ModeType, AUTOMATIC) Wdg_Mode,
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         807,45
#$$ld
.L508:

#$$bf	Wdg_ChannelValidateMode,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Wdg_ChannelValidateMode:
.Llo11:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# Wdg_Mode=r0
	.d2_cfa_offset    108,-1
	mr.		r0,r3		# Wdg_Mode=?a4 Wdg_Mode=r3
	mr		r4,r6		# Wdg_Instance=r4 Wdg_Instance=r6
	.d2prologue_end
#                                                                     VAR(Wdg_ServiceIdType, AUTOMATIC)uServiceId,
#                                                                     VAR(Wdg_ErrorIdType, AUTOMATIC)uErrorId,
#                                                                     CONST(Wdg_IPW_InstanceType, WDG_CONST) Wdg_Instance
#                                                                     )
# {
#     VAR(Std_ReturnType, AUTOMATIC) valid = (Std_ReturnType)E_OK;
	.d2line		813
	diab.li		r31,0		# valid=r31
# 
# #if (WDG_DISABLE_ALLOWED == STD_OFF)
#     if (WDGIF_OFF_MODE == Wdg_Mode)
#     {
# #if (WDG_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
#             if((uint32)STD_ON == Wdg_E_Disable_Rejected.state)
#             {
#                 /* Report production error */
#                 Dem_ReportErrorStatus((Dem_EventIdType)Wdg_E_Disable_Rejected.id, DEM_EVENT_STATUS_FAILED);
#             }
# #endif /* (WDG_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF) */  
#  
#         valid = (Std_ReturnType)E_NOT_OK;
#     }
# #endif  /* (WDG_DISABLE_ALLOWED == STD_OFF) */
# 
# 
# if (FALSE == ((WDGIF_OFF_MODE  == Wdg_Mode)||(WDGIF_FAST_MODE == Wdg_Mode)||(WDGIF_SLOW_MODE == Wdg_Mode)))
	.d2line		831
	bc		1,2,.L440	# eq
.Llo12:
	se_cmpi		r0,2		# Wdg_Mode=r0
.Llo13:
	bc		1,2,.L440	# eq
	se_cmpi		r0,1		# Wdg_Mode=r0
	bc		1,2,.L440	# eq
	diab.li		r3,0
	b		.L441
.L440:
	diab.li		r3,1
.L441:
	se_cmpi		r3,0
	bc		0,2,.L437	# ne
#         {
# #if (WDG_VALIDATE_PARAMS == STD_ON)
# 
#             (void)Det_ReportError((uint16)WDG_CHANNEL_MODULE_ID, (uint8)Wdg_au8Index[Wdg_Instance], (uint8)uServiceId, (uint8)uErrorId);
# #else 
#                 (void)uServiceId;
#                 (void)uErrorId;
# #endif
# 
# #if (WDG_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
#             if((uint32)STD_ON == Wdg_E_Mode_Failed.state)
#             {
#                 /* Report production error */
#                 Dem_ReportErrorStatus((Dem_EventIdType)Wdg_E_Mode_Failed.id, DEM_EVENT_STATUS_FAILED);
#             }
# #endif /* (WDG_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF) */  
# 
#             valid = (Std_ReturnType)E_NOT_OK;
	.d2line		849
	diab.li		r3,1		# valid=r3
	b		.L438
.L437:
#         }
#         else
#         {
#             if ((Std_ReturnType)E_NOT_OK == Wdg_IPW_CheckHwSettings(Wdg_apConfigPtr[Wdg_Instance]->Wdg_ModeSettings[Wdg_Mode], Wdg_Instance))
	.d2line		853
.Llo14:
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
.Llo17:
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	rlwinm		r6,r4,2,0,29		# Wdg_Instance=r4
.Llo18:
	lwzx		r3,r3,r6		# valid=r3 valid=r3
.Llo15:
	se_slwi		r0,2		# Wdg_Mode=r0 Wdg_Mode=r0
	se_add		r3,r0		# valid=r3 valid=r3 Wdg_Mode=r0
	lwz		r3,16(r3)		# valid=r3 valid=r3
.Llo19:
	mr		r4,r4		# Wdg_Instance=r4 Wdg_Instance=r4
.Llo20:
	bl		Wdg_Swt_CheckHwSettings
.Llo16:
	rlwinm		r3,r3,0,24,31		# valid=r3 valid=r3
	se_cmpi		r3,1		# valid=r3
#             {
# 
# #if (WDG_VALIDATE_PARAMS == STD_ON)
# 
#                 (void)Det_ReportError((uint16)WDG_CHANNEL_MODULE_ID, (uint8)Wdg_au8Index[Wdg_Instance], (uint8)uServiceId, (uint8)uErrorId);
# #endif
# 
# #if (WDG_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
#                 if((uint32)STD_ON == Wdg_E_Mode_Failed.state)
#                 {
#                     /* Report production error */
#                     Dem_ReportErrorStatus((Dem_EventIdType)Wdg_E_Mode_Failed.id, DEM_EVENT_STATUS_FAILED);
#                 }
# #endif /* (WDG_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF) */
#                 valid = (Std_ReturnType)E_NOT_OK;
	.d2line		868
	diab.li		r3,1		# valid=r3
	isel		r3,r3,r31,2		# valid=r3 valid=r3 valid=r31
.L438:
#             }
#         }
# 
#     return valid;
	.d2line		872
.Llo21:
	rlwinm		r3,r3,0,24,31		# valid=r3 valid=r3
# }
	.d2line		873
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# Wdg_Mode=r0
	mtspr		lr,r0		# Wdg_Mode=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo22:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L509:
	.type		Wdg_ChannelValidateMode,@function
	.size		Wdg_ChannelValidateMode,.-Wdg_ChannelValidateMode
# Number of nodes = 53

# Allocations for Wdg_ChannelValidateMode
#	?a4		Wdg_Mode
#	not allocated	uServiceId
#	not allocated	uErrorId
#	?a5		Wdg_Instance
#	?a6		$$93
#	?a7		valid
# FUNC(void, WDG_CODE) Wdg_ProcessInterrupt(CONST(Wdg_IPW_InstanceType, WDG_CONST) Wdg_Instance)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1014,22
#$$ld
.L526:

#$$bf	Wdg_ProcessInterrupt,interprocedural,rasave,nostackparams
	.globl		Wdg_ProcessInterrupt
	.d2_cfa_start __cie
Wdg_ProcessInterrupt:
.Llo23:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# Wdg_Instance=r4 Wdg_Instance=r3
	.d2prologue_end
# {
#     if (NULL_PTR != Wdg_apConfigPtr[Wdg_Instance])
	.d2line		1016
.Llo24:
	lis		r3,Wdg_apConfigPtr@ha
.Llo25:
	e_add16i		r3,r3,Wdg_apConfigPtr@l
	rlwinm		r0,r4,2,0,29		# Wdg_Instance=r4
	lwzx		r0,r3,r0
	se_cmpi		r0,0
	bc		1,2,.L451	# eq
#     {
#         if  (NULL_PTR != Wdg_apConfigPtr[Wdg_Instance]->Wdg_CallbackPtr)
	.d2line		1018
	lis		r3,Wdg_apConfigPtr@ha
	e_add16i		r3,r3,Wdg_apConfigPtr@l
	rlwinm		r0,r4,2,0,29		# Wdg_Instance=r4
	lwzx		r3,r3,r0
	lwz		r0,28(r3)
	se_cmpi		r0,0
	bc		1,2,.L451	# eq
#         {
#             Wdg_apConfigPtr[Wdg_Instance]->Wdg_CallbackPtr();
	.d2line		1020
.Llo26:
	lis		r3,Wdg_apConfigPtr@ha
	e_add16i		r3,r3,Wdg_apConfigPtr@l
.Llo27:
	se_slwi		r4,2		# Wdg_Instance=r4 Wdg_Instance=r4
.Llo28:
	lwzx		r3,r3,r4
	lwz		r0,28(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L451:
#         }
#     }
# }
	.d2line		1023
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
.L527:
	.type		Wdg_ProcessInterrupt,@function
	.size		Wdg_ProcessInterrupt,.-Wdg_ProcessInterrupt
# Number of nodes = 33

# Allocations for Wdg_ProcessInterrupt
#	?a4		Wdg_Instance
# FUNC(void, WDG_CODE) Wdg_ChannelInit(P2CONST(Wdg_ConfigType, AUTOMATIC, WDG_APPL_CONST) pConfigPtr,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1040,22
#$$ld
.L532:

#$$bf	Wdg_ChannelInit,interprocedural,rasave,nostackparams
	.globl		Wdg_ChannelInit
	.d2_cfa_start __cie
Wdg_ChannelInit:
.Llo29:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pConfigPtr=r3 pConfigPtr=r3
	mr		r30,r4		# Wdg_Instance=r30 Wdg_Instance=r4
	.d2prologue_end
#                                      CONST(Wdg_IPW_InstanceType, WDG_CONST) Wdg_Instance
#                                     )
# {
#     VAR(uint32 , AUTOMATIC) u32TimerValue;
#     VAR(Std_ReturnType, AUTOMATIC)valid;
#     
# #if (WDG_VALIDATE_GLOBAL_CALL == STD_ON)
#     valid = Wdg_ChannelValidateGlobalCall(WDG_INIT_ID,Wdg_Instance);
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif /* (WDG_VALIDATE_GLOBAL_CALL == STD_ON */
# 
# #if (WDG_VALIDATE_PARAMS == STD_ON)
#         valid = Wdg_ValidatePtrInit(pConfigPtr, Wdg_Instance);
#         if ((Std_ReturnType)E_OK == valid)
#         {
# #else
# 
#         (void)pConfigPtr;
# #endif
# #if (WDG_PRECOMPILE_SUPPORT == STD_ON)
#             /** @violates @ref Wdg_c_REF_4 Violates MISRA 2004 Rule 11.1, Cast from pointer to unsigned long.*/
#             Wdg_apConfigPtr[Wdg_Instance] = Wdg_pConfigPC[Wdg_Instance];
#             (void)pConfigPtr;
# #else
#             Wdg_apConfigPtr[Wdg_Instance] = pConfigPtr;
	.d2line		1066
.Llo31:
	lis		r4,Wdg_apConfigPtr@ha
.Llo32:
	e_add16i		r4,r4,Wdg_apConfigPtr@l
	rlwinm		r6,r30,2,0,29		# Wdg_Instance=r6 Wdg_Instance=r30
	stwux		r3,r4,r6		# pConfigPtr=r3
# #endif /*(WDG_PRECOMPILE_SUPPORT == STD_ON)*/
# 
#             valid = Wdg_ChannelValidateMode(Wdg_apConfigPtr[Wdg_Instance]->Wdg_DefaultMode, WDG_INIT_ID, WDG_E_PARAM_CONFIG, Wdg_Instance);
	.d2line		1069
	lis		r3,Wdg_apConfigPtr@ha		# pConfigPtr=r3
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# pConfigPtr=r3 pConfigPtr=r3
	lwzx		r3,r3,r6		# pConfigPtr=r3 pConfigPtr=r3
	lwz		r3,0(r3)		# pConfigPtr=r3 pConfigPtr=r3
.Llo30:
	mr		r6,r30		# Wdg_Instance=r6 Wdg_Instance=r30
	diab.li		r4,0
	diab.li		r5,18
	bl		Wdg_ChannelValidateMode
.Llo42:
	mr		r3,r3		# valid=r3 valid=r3
#             if ((Std_ReturnType)E_OK == valid)
	.d2line		1070
	rlwinm		r3,r3,0,24,31		# valid=r3 valid=r3
	se_cmpi		r3,0		# valid=r3
	bc		0,2,.L456	# ne
#             {
#                 Gpt_StopTimer(Wdg_apConfigPtr[Wdg_Instance]->Wdg_TimerChannel);
	.d2line		1072
.Llo43:
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
.Llo44:
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	rlwinm		r4,r30,2,0,29		# Wdg_Instance=r4 Wdg_Instance=r30
	lwzx		r3,r3,r4		# valid=r3 valid=r3
	lbz		r3,8(r3)		# valid=r3 valid=r3
.Llo45:
	bl		Gpt_StopTimer
#                 u32TimerValue = Wdg_IPW_Init(Wdg_apConfigPtr[Wdg_Instance]->Wdg_ModeSettings[Wdg_apConfigPtr[Wdg_Instance]->Wdg_DefaultMode], Wdg_Instance);
	.d2line		1073
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
.Llo46:
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	rlwinm		r4,r30,2,0,29		# Wdg_Instance=r4 Wdg_Instance=r30
	lwzux		r0,r3,r4		# valid=r3
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	lwzx		r3,r3,r4		# valid=r3 valid=r3
	lwz		r3,0(r3)		# valid=r3 valid=r3
	se_slwi		r3,2		# valid=r3 valid=r3
	se_add		r3,r0		# valid=r3 valid=r3
	lwz		r3,16(r3)		# valid=r3 valid=r3
.Llo47:
	mr		r4,r30		# Wdg_Instance=r4 Wdg_Instance=r30
	bl		Wdg_Swt_Init
.Llo38:
	mr		r31,r3		# u32TimerValue=r31 u32TimerValue=r3
#                 Wdg_au16GptPeriod[Wdg_Instance] = (uint16)(u32TimerValue/ (Wdg_apConfigPtr[Wdg_Instance]->Wdg_ModeSettings[Wdg_apConfigPtr[Wdg_Instance]->Wdg_DefaultMode])->Wdg_u32InternalTimerClock);
	.d2line		1074
.Llo39:
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
.Llo40:
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	rlwinm		r6,r30,2,0,29		# Wdg_Instance=r6 Wdg_Instance=r30
	lwzux		r0,r3,r6		# valid=r3
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	lwzux		r4,r3,r6		# Wdg_Instance=r4 valid=r3
	lwz		r3,0(r4)		# valid=r3 Wdg_Instance=r4
	se_slwi		r3,2		# valid=r3 valid=r3
	se_add		r3,r0		# valid=r3 valid=r3
	lwz		r3,16(r3)		# valid=r3 valid=r3
	lwz		r0,16(r3)		# valid=r3
	divwu		r0,r31,r0		# u32TimerValue=r31
	lis		r3,Wdg_au16GptPeriod@ha		# valid=r3
	e_add16i		r3,r3,Wdg_au16GptPeriod@l		# valid=r3 valid=r3
	rlwinm		r4,r30,1,0,30		# Wdg_Instance=r4 Wdg_Instance=r30
	sthx		r0,r3,r4		# valid=r3
#                 Gpt_EnableNotification(Wdg_apConfigPtr[Wdg_Instance]->Wdg_TimerChannel);
	.d2line		1075
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	lwzx		r3,r3,r6		# valid=r3 valid=r3
	lbz		r3,8(r3)		# valid=r3 valid=r3
.Llo48:
	bl		Gpt_EnableNotification
#                 /* start the timer channel only if the mode is not off mode */
#                 if (WDGIF_OFF_MODE != Wdg_apConfigPtr[Wdg_Instance]->Wdg_DefaultMode)
	.d2line		1077
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
.Llo49:
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	rlwinm		r4,r30,2,0,29		# Wdg_Instance=r4 Wdg_Instance=r30
	lwzx		r3,r3,r4		# valid=r3 valid=r3
	lwz		r0,0(r3)		# valid=r3
	se_cmpi		r0,0
	bc		1,2,.L457	# eq
#                 {
#                     Gpt_StartTimer(Wdg_apConfigPtr[Wdg_Instance]->Wdg_TimerChannel, \
	.d2line		1079
.Llo50:
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
.Llo51:
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	rlwinm		r6,r30,2,0,29		# Wdg_Instance=r6 Wdg_Instance=r30
	lwzux		r0,r3,r6		# valid=r3
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	lwzux		r4,r3,r6		# Wdg_Instance=r4 valid=r3
	lwz		r3,0(r4)		# valid=r3 Wdg_Instance=r4
	se_slwi		r3,2		# valid=r3 valid=r3
	se_add		r3,r0		# valid=r3 valid=r3
	lwz		r3,16(r3)		# valid=r3 valid=r3
	lwz		r0,16(r3)		# valid=r3
	divwu		r4,r31,r0		# Wdg_Instance=r4 u32TimerValue=r31
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	lwzux		r5,r3,r6		# valid=r3
	lwz		r0,12(r5)
	mullw		r4,r4,r0		# Wdg_Instance=r4 Wdg_Instance=r4
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	lwzx		r3,r3,r6		# valid=r3 valid=r3
	lbz		r3,8(r3)		# valid=r3 valid=r3
.Llo52:
	bl		Gpt_StartTimer
.L457:
#                     (u32TimerValue / Wdg_apConfigPtr[Wdg_Instance]->Wdg_ModeSettings[Wdg_apConfigPtr[Wdg_Instance]->Wdg_DefaultMode]->Wdg_u32InternalTimerClock) * Wdg_apConfigPtr[Wdg_Instance]->Wdg_u32TriggerSourceClock);
#                 }
#                 SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_01();
	.d2line		1082
.Llo33:
	bl		SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_01
#                 Wdg_au16Timeout[Wdg_Instance] = WDG_INITIAL_TIMEOUT_U16;
	.d2line		1083
	diab.li		r0,5000
	lis		r3,Wdg_au16Timeout@ha		# valid=r3
.Llo53:
	e_add16i		r3,r3,Wdg_au16Timeout@l		# valid=r3 valid=r3
.Llo34:
	se_slwi		r30,1		# Wdg_Instance=r30 Wdg_Instance=r30
.Llo35:
	sthx		r0,r3,r30		# valid=r3
#                 SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_01();
	.d2line		1084
	bl		SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_01
.Llo54:
	b		.L455
.L456:
#             }
#             else
#             {
#                 Wdg_apConfigPtr[Wdg_Instance] = NULL_PTR;
	.d2line		1088
.Llo41:
	diab.li		r0,0
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
.Llo55:
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
.Llo36:
	se_slwi		r30,2		# Wdg_Instance=r30 Wdg_Instance=r30
.Llo37:
	stwx		r0,r3,r30		# valid=r3
.L455:
#             }
# #if (WDG_VALIDATE_PARAMS == STD_ON)
#         }
# #endif
# #if (WDG_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
#     Wdg_ChannelEndValidateGlobalCall(valid, Wdg_Instance);
# #endif
# }
	.d2line		1097
	.d2epilogue_begin
.Llo56:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L533:
	.type		Wdg_ChannelInit,@function
	.size		Wdg_ChannelInit,.-Wdg_ChannelInit
# Number of nodes = 208

# Allocations for Wdg_ChannelInit
#	?a4		pConfigPtr
#	?a5		Wdg_Instance
#	?a6		u32TimerValue
#	?a7		valid
# FUNC(Std_ReturnType, WDG_CODE) Wdg_ChannelSetMode(WdgIf_ModeType Mode,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1128,32
#$$ld
.L549:

#$$bf	Wdg_ChannelSetMode,interprocedural,rasave,nostackparams
	.globl		Wdg_ChannelSetMode
	.d2_cfa_start __cie
Wdg_ChannelSetMode:
.Llo57:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Mode=r31 Mode=r3
	mr		r28,r4		# Wdg_Instance=r28 Wdg_Instance=r4
	.d2prologue_end
#                                                   CONST(Wdg_IPW_InstanceType, WDG_CONST) Wdg_Instance
#                                                   )
# {
#     VAR(Std_ReturnType, AUTOMATIC) ret = (Std_ReturnType)E_NOT_OK;
	.d2line		1132
	diab.li		r30,1		# ret=r30
#     VAR(Std_ReturnType, AUTOMATIC)valid;
# 
# #if (WDG_VALIDATE_GLOBAL_CALL == STD_ON)
#     valid = Wdg_ChannelValidateGlobalCall(WDG_SETMODE_ID, Wdg_Instance);
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif /* (WDG_VALIDATE_GLOBAL_CALL == STD_ON */
#         MCAL_FAULT_INJECTION_POINT(T_WDG_INJ_START);
#         valid = Wdg_ChannelValidateMode(Mode, WDG_SETMODE_ID, WDG_E_PARAM_MODE, Wdg_Instance);
	.d2line		1141
.Llo67:
	mr		r3,r31		# Mode=r3 Mode=r31
.Llo58:
	mr		r6,r28		# Wdg_Instance=r6 Wdg_Instance=r28
	diab.li		r4,1
.Llo61:
	diab.li		r5,17
	bl		Wdg_ChannelValidateMode
.Llo69:
	mr		r3,r3		# valid=r3 valid=r3
#         if ((Std_ReturnType)E_OK == valid)
	.d2line		1142
	rlwinm		r3,r3,0,24,31		# valid=r3 valid=r3
	se_cmpi		r3,0		# valid=r3
	bc		0,2,.L463	# ne
	.section	.invalid_TEXT,,c
.L558:
#         {
#             #ifdef WDG_VALIDATE_CONFIG_UPDATE        
#             #if (WDG_VALIDATE_CONFIG_UPDATE == STD_ON)
#             valid = Wdg_ChannelValidateConfigUpdate(Wdg_Instance);
#             if ((Std_ReturnType)E_OK == valid)
#             {
#             #endif
#             #endif
#                 VAR(uint32, AUTOMATIC) u32TimerValue = Wdg_IPW_SetMode(Wdg_apConfigPtr[Wdg_Instance]->Wdg_ModeSettings[Mode], Wdg_Instance);
	.d2line		1151
.Llo59:
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
.Llo70:
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	rlwinm		r4,r28,2,0,29		# Wdg_Instance=r4 Wdg_Instance=r28
	lwzx		r3,r3,r4		# valid=r3 valid=r3
	rlwinm		r0,r31,2,0,29		# u16Temp=r0 Mode=r31
.Llo88:
	se_add		r3,r0		# valid=r3 valid=r3 u16Temp=r0
	lwz		r3,16(r3)		# valid=r3 valid=r3
.Llo71:
	mr		r4,r28		# Wdg_Instance=r4 Wdg_Instance=r28
	bl		Wdg_Swt_Init
.Llo83:
	mr		r30,r3		# u32TimerValue=r30 u32TimerValue=r3
#                 VAR(Gpt_ValueType, AUTOMATIC) uElapsedTime;
#                 VAR(uint16, AUTOMATIC) u16Temp;  
#                 
#                 Gpt_StopTimer(Wdg_apConfigPtr[Wdg_Instance]->Wdg_TimerChannel);
	.d2line		1155
.Llo84:
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
.Llo72:
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	rlwinm		r4,r28,2,0,29		# Wdg_Instance=r4 Wdg_Instance=r28
	lwzx		r3,r3,r4		# valid=r3 valid=r3
	lbz		r3,8(r3)		# valid=r3 valid=r3
.Llo73:
	bl		Gpt_StopTimer
#                 uElapsedTime =  Gpt_GetTimeElapsed(Wdg_apConfigPtr[Wdg_Instance]->Wdg_TimerChannel);
	.d2line		1156
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
.Llo74:
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	rlwinm		r4,r28,2,0,29		# Wdg_Instance=r4 Wdg_Instance=r28
	lwzx		r3,r3,r4		# valid=r3 valid=r3
	lbz		r3,8(r3)		# valid=r3 valid=r3
.Llo75:
	bl		Gpt_GetTimeElapsed
.Llo85:
	mr		r29,r3		# uElapsedTime=r29 uElapsedTime=r3
#                 /* update timeout */
#                 SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_02();
	.d2line		1158
.Llo86:
	bl		SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_02
#                 u16Temp = Wdg_au16Timeout[Wdg_Instance] - (uint16)(uElapsedTime/Wdg_apConfigPtr[Wdg_Instance]->Wdg_u32TriggerSourceClock);
	.d2line		1159
.Llo87:
	lis		r3,Wdg_au16Timeout@ha		# valid=r3
.Llo76:
	e_add16i		r3,r3,Wdg_au16Timeout@l		# valid=r3 valid=r3
	rlwinm		r4,r28,1,0,30		# Wdg_Instance=r4 Wdg_Instance=r28
	lhzux		r0,r3,r4		# u16Temp=r0 valid=r3
.Llo89:
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	rlwinm		r6,r28,2,0,29		# Wdg_Instance=r28
	lwzx		r3,r3,r6		# valid=r3 valid=r3
	lwz		r3,12(r3)		# valid=r3 valid=r3
	divwu		r3,r29,r3		# valid=r3 uElapsedTime=r29 valid=r3
	subf		r0,r3,r0		# u16Temp=r0 valid=r3 u16Temp=r0
	mr		r3,r0		# u16Temp=r3 u16Temp=r0
#                 Wdg_au16Timeout[Wdg_Instance] =  u16Temp;
	.d2line		1160
.Llo77:
	lis		r3,Wdg_au16Timeout@ha		# valid=r3
.Llo78:
	e_add16i		r3,r3,Wdg_au16Timeout@l		# valid=r3 valid=r3
	sthx		r0,r3,r4		# valid=r3 u16Temp=r0
#                 SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_02();
	.d2line		1161
	bl		SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_02
#                 Wdg_au16GptPeriod[Wdg_Instance] = (uint16)(u32TimerValue / (Wdg_apConfigPtr[Wdg_Instance]->Wdg_ModeSettings[Mode])->Wdg_u32InternalTimerClock);
	.d2line		1162
.Llo79:
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
.Llo80:
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	rlwinm		r4,r28,2,0,29		# Wdg_Instance=r4 Wdg_Instance=r28
	lwzx		r3,r3,r4		# valid=r3 valid=r3
	rlwinm		r0,r31,2,0,29		# u16Temp=r0 Mode=r31
.Llo90:
	se_add		r3,r0		# valid=r3 valid=r3 u16Temp=r0
	lwz		r3,16(r3)		# valid=r3 valid=r3
	lwz		r0,16(r3)		# u16Temp=r0 valid=r3
	divwu		r0,r30,r0		# u16Temp=r0 u32TimerValue=r30 u16Temp=r0
	lis		r3,Wdg_au16GptPeriod@ha		# valid=r3
	e_add16i		r3,r3,Wdg_au16GptPeriod@l		# valid=r3 valid=r3
	rlwinm		r4,r28,1,0,30		# Wdg_Instance=r4 Wdg_Instance=r28
	sthx		r0,r3,r4		# valid=r3 u16Temp=r0
# 
#                 /* Start the timer only if the mode is not off mode*/
#                 if (WDGIF_OFF_MODE != Mode)
	.d2line		1165
	se_cmpi		r31,0		# Mode=r31
	bc		1,2,.L464	# eq
#                 {
#                     Gpt_StartTimer(Wdg_apConfigPtr[Wdg_Instance]->Wdg_TimerChannel,Wdg_au16GptPeriod[Wdg_Instance]* Wdg_apConfigPtr[Wdg_Instance]->Wdg_u32TriggerSourceClock);
	.d2line		1167
.Llo60:
	lis		r3,Wdg_au16GptPeriod@ha		# valid=r3
.Llo81:
	e_add16i		r3,r3,Wdg_au16GptPeriod@l		# valid=r3 valid=r3
	rlwinm		r4,r28,1,0,30		# Wdg_Instance=r4 Wdg_Instance=r28
	lhzx		r4,r3,r4		# Wdg_Instance=r4 valid=r3
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	se_slwi		r28,2		# Wdg_Instance=r28 Wdg_Instance=r28
.Llo62:
	lwzux		r5,r3,r28		# valid=r3
.Llo63:
	lwz		r0,12(r5)		# u16Temp=r0
.Llo91:
	mullw		r4,r4,r0		# Wdg_Instance=r4 Wdg_Instance=r4 u16Temp=r0
.Llo64:
	lis		r3,Wdg_apConfigPtr@ha		# valid=r3
	e_add16i		r3,r3,Wdg_apConfigPtr@l		# valid=r3 valid=r3
	lwzx		r3,r3,r28		# valid=r3 valid=r3
	lbz		r3,8(r3)		# valid=r3 valid=r3
.Llo82:
	bl		Gpt_StartTimer
.L464:
#                 }
#                 ret = (Std_ReturnType)E_OK;
	.d2line		1169
.Llo65:
	diab.li		r30,0		# ret=r30
	.section	.invalid_TEXT,,c
.L559:
.L463:
#                 
#             #ifdef WDG_VALIDATE_CONFIG_UPDATE        
#             #if (WDG_VALIDATE_CONFIG_UPDATE == STD_ON)
#             }
#             #endif
#             #endif
#         }
# #if (WDG_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
#     Wdg_ChannelEndValidateGlobalCall(valid, Wdg_Instance);
# #endif
#     MCAL_FAULT_INJECTION_POINT(T_WDG_INJ_STOP);
#     return ret;
	.d2line		1182
.Llo66:
	rlwinm		r3,r30,0,24,31		# valid=r3 ret=r30
# }
	.d2line		1183
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo68:
	lwz		r0,36(r1)		# u16Temp=r0
	mtspr		lr,r0		# u16Temp=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L550:
	.type		Wdg_ChannelSetMode,@function
	.size		Wdg_ChannelSetMode,.-Wdg_ChannelSetMode
# Number of nodes = 176

# Allocations for Wdg_ChannelSetMode
#	?a4		Mode
#	?a5		Wdg_Instance
#	?a6		ret
#	?a7		valid
#	?a8		u32TimerValue
#	?a9		uElapsedTime
#	?a10		u16Temp
# FUNC(void, WDG_CODE) Wdg_ChannelSetTriggerCondition(uint16 u16Timeout,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1198,22
#$$ld
.L571:

#$$bf	Wdg_ChannelSetTriggerCondition,interprocedural,rasave,nostackparams
	.globl		Wdg_ChannelSetTriggerCondition
	.d2_cfa_start __cie
Wdg_ChannelSetTriggerCondition:
.Llo92:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u16Timeout=r31 u16Timeout=r3
	mr		r30,r4		# Wdg_Instance=r30 Wdg_Instance=r4
	.d2prologue_end
#                                                     CONST(Wdg_IPW_InstanceType, WDG_CONST) Wdg_Instance
#                                                    )
# {
# #if ((WDG_VALIDATE_GLOBAL_CALL == STD_ON) || (WDG_VALIDATE_PARAMS == STD_ON))
#     VAR(Std_ReturnType, AUTOMATIC)valid;
# #endif
# 
# #if (WDG_VALIDATE_GLOBAL_CALL == STD_ON)
#     valid = Wdg_ChannelValidateTrigerCondition(Wdg_Instance);
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif /* (WDG_VALIDATE_GLOBAL_CALL == STD_ON */
# #if ((WDG_VALIDATE_PARAMS == STD_ON) && (WDG_MAX_TIMEOUT_VALUE != WDG_MAX_VALUE_TYPE16))
#         valid = Wdg_ValidateTimeout(u16Timeout, Wdg_Instance);
#         if ((Std_ReturnType)E_OK == valid)
#         {
# #endif
#             VAR(Gpt_ValueType, AUTOMATIC) uElapsedTime =  Gpt_GetTimeElapsed(Wdg_apConfigPtr[Wdg_Instance]->Wdg_TimerChannel);
	.d2line		1216
.Llo98:
	lis		r3,Wdg_apConfigPtr@ha
.Llo93:
	e_add16i		r3,r3,Wdg_apConfigPtr@l
	se_slwi		r4,2		# Wdg_Instance=r4 Wdg_Instance=r4
	lwzx		r3,r3,r4
	lbz		r3,8(r3)
	bl		Gpt_GetTimeElapsed
	mr		r29,r3		# uElapsedTime=r29 uElapsedTime=r3
#             SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_03();
	.d2line		1217
	bl		SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_03
#             if (((uint16)(uElapsedTime/Wdg_apConfigPtr[Wdg_Instance]->Wdg_u32TriggerSourceClock) > Wdg_au16Timeout[Wdg_Instance]) || ((uint16)0 == u16Timeout))
	.d2line		1218
	lis		r3,Wdg_apConfigPtr@ha
	e_add16i		r3,r3,Wdg_apConfigPtr@l
	rlwinm		r4,r30,2,0,29		# Wdg_Instance=r4 Wdg_Instance=r30
	lwzx		r3,r3,r4
	lwz		r0,12(r3)
	divwu		r0,r29,r0		# uElapsedTime=r29
	rlwinm		r0,r0,0,16,31
	lis		r3,Wdg_au16Timeout@ha
	e_add16i		r3,r3,Wdg_au16Timeout@l
	rlwinm		r4,r30,1,0,30		# Wdg_Instance=r4 Wdg_Instance=r30
	lhzx		r3,r3,r4
	se_cmp		r0,r3
	bc		1,1,.L470	# gt
.Llo94:
	rlwinm		r3,r31,0,16,31		# u16Timeout=r31
	se_cmpi		r3,0
	bc		0,2,.L468	# ne
.L470:
#             {
#                 Wdg_au16Timeout[Wdg_Instance] = (uint16)0;
	.d2line		1220
	diab.li		r0,0
	lis		r3,Wdg_au16Timeout@ha
	e_add16i		r3,r3,Wdg_au16Timeout@l
	rlwinm		r4,r30,1,0,30		# Wdg_Instance=r4 Wdg_Instance=r30
	sthx		r0,r3,r4
#                 SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_03();
	.d2line		1221
	bl		SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_03
#                 Gpt_StopTimer(Wdg_apConfigPtr[Wdg_Instance]->Wdg_TimerChannel);
	.d2line		1222
	lis		r3,Wdg_apConfigPtr@ha
	e_add16i		r3,r3,Wdg_apConfigPtr@l
	se_slwi		r30,2		# Wdg_Instance=r30 Wdg_Instance=r30
.Llo99:
	lwzx		r3,r3,r30
	lbz		r3,8(r3)
	bl		Gpt_StopTimer
	b		.L467
.L468:
#             }
#             else
#             {
#                 Wdg_au16Timeout[Wdg_Instance] = u16Timeout + (uint16)(uElapsedTime / Wdg_apConfigPtr[Wdg_Instance]->Wdg_u32TriggerSourceClock);
	.d2line		1226
.Llo95:
	lis		r3,Wdg_apConfigPtr@ha
	e_add16i		r3,r3,Wdg_apConfigPtr@l
	rlwinm		r4,r30,2,0,29		# Wdg_Instance=r4 Wdg_Instance=r30
	lwzx		r3,r3,r4
	lwz		r0,12(r3)		# u16Timeout=r0
.Llo96:
	divwu		r0,r29,r0		# u16Timeout=r0 uElapsedTime=r29 u16Timeout=r0
	se_add		r31,r0		# u16Timeout=r31 u16Timeout=r31 u16Timeout=r0
	lis		r3,Wdg_au16Timeout@ha
	e_add16i		r3,r3,Wdg_au16Timeout@l
	se_slwi		r30,1		# Wdg_Instance=r30 Wdg_Instance=r30
.Llo100:
	sthx		r31,r3,r30		# u16Timeout=r31
#                 SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_03();
	.d2line		1227
	bl		SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_03
.L467:
#             }
# #if ((WDG_VALIDATE_PARAMS == STD_ON) && (WDG_MAX_TIMEOUT_VALUE != WDG_MAX_VALUE_TYPE16))
#         }
# #endif
# #if (WDG_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
# #endif /* (WDG_VALIDATE_GLOBAL_CALL == STD_ON */
# }
	.d2line		1235
	.d2epilogue_begin
.Llo97:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u16Timeout=r0
	mtspr		lr,r0		# u16Timeout=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L572:
	.type		Wdg_ChannelSetTriggerCondition,@function
	.size		Wdg_ChannelSetTriggerCondition,.-Wdg_ChannelSetTriggerCondition
# Number of nodes = 96

# Allocations for Wdg_ChannelSetTriggerCondition
#	?a4		u16Timeout
#	?a5		Wdg_Instance
#	?a6		uElapsedTime
# FUNC(void, WDG_CODE) Wdg_ChannelGetVersionInfo
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1261,22
#$$ld
.L580:

#$$bf	Wdg_ChannelGetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Wdg_ChannelGetVersionInfo
	.d2_cfa_start __cie
Wdg_ChannelGetVersionInfo:
.Llo101:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# pVersioninfo=r4 pVersioninfo=r3
	.d2prologue_end
#                     (P2VAR(Std_VersionInfoType, AUTOMATIC, WDG_APPL_DATA) pVersioninfo,
#                      CONST(Wdg_IPW_InstanceType, WDG_CONST) Wdg_Instance
#                     )
# {
# #if (WDG_VALIDATE_PARAMS == STD_ON)
#     VAR(Std_ReturnType, AUTOMATIC)valid=(Std_ReturnType)E_NOT_OK;
# #endif
# 
#     (void)Wdg_Instance;
# #if (WDG_VALIDATE_PARAMS == STD_ON)
#     valid = Wdg_ValidatePtrVersion(pVersioninfo, Wdg_Instance);
#     
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif /*(WDG_VALIDATE_PARAMS == STD_ON)*/
#         (pVersioninfo)->vendorID         = (uint16)WDG_CHANNEL_VENDOR_ID;
	.d2line		1277
.Llo102:
	diab.li		r3,43
.Llo103:
	sth		r3,0(r4)		# pVersioninfo=r4
#         (pVersioninfo)->moduleID         = (uint8)WDG_CHANNEL_MODULE_ID;
	.d2line		1278
	diab.li		r3,102
	sth		r3,2(r4)		# pVersioninfo=r4
#         (pVersioninfo)->sw_major_version = (uint8)WDG_CHANNEL_SW_MAJOR_VERSION;
	.d2line		1279
	diab.li		r3,1
	stb		r3,4(r4)		# pVersioninfo=r4
#         (pVersioninfo)->sw_minor_version = (uint8)WDG_CHANNEL_SW_MINOR_VERSION;
	.d2line		1280
	diab.li		r3,0
	stb		r3,5(r4)		# pVersioninfo=r4
#         (pVersioninfo)->sw_patch_version = (uint8)WDG_CHANNEL_SW_PATCH_VERSION;
	.d2line		1281
	diab.li		r3,2
	stb		r3,6(r4)		# pVersioninfo=r4
# #if (WDG_VALIDATE_PARAMS == STD_ON)
#     }
# #endif /*(WDG_VALIDATE_PARAMS == STD_ON)*/
# 
# }
	.d2line		1286
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo104:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L581:
	.type		Wdg_ChannelGetVersionInfo,@function
	.size		Wdg_ChannelGetVersionInfo,.-Wdg_ChannelGetVersionInfo
# Number of nodes = 28

# Allocations for Wdg_ChannelGetVersionInfo
#	?a4		pVersioninfo
#	not allocated	Wdg_Instance

# Allocations for module
	.section	.mcal_bss,,b
	.0byte		.L587
	.section	.mcal_bss,,b
	.type		Wdg_apConfigPtr,@object
	.size		Wdg_apConfigPtr,16
	.align		2
Wdg_apConfigPtr:
	.space		16
	.section	.mcal_data,,d
	.0byte		.L591
	.section	.mcal_data,,d
	.type		Wdg_au16Timeout,@object
	.size		Wdg_au16Timeout,8
	.align		1
Wdg_au16Timeout:
	.short		0
	.space		6
	.section	.mcal_data,,d
	.type		Wdg_au16GptPeriod,@object
	.size		Wdg_au16GptPeriod,8
	.align		1
Wdg_au16GptPeriod:
	.short		0
	.space		6
	.section	.text_vle
#$$ld
.L5:
.L621:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgIf\\ssc\\make\\..\\inc\\WdgIf_Types.h"
.L619:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Wdg_IPW_Types.h"
.L615:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L613:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Gpt.h"
.L597:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Wdg_Channel.h"
.L588:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Wdg_Channel.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L479:
.L487:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Wdg_Channel.c"
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
	.uleb128	11
	.byte		0x1
	.uleb128	1
	.uleb128	16
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
	.uleb128	39
	.uleb128	12
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
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
	.uleb128	13
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
	.uleb128	14
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Wdg_Channel.c"
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
.L476:
	.4byte		.L477-.L475
.L475:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L481-.L476
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Wdg_Channel.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L478
	.4byte		.L479
	.4byte		.L482
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L488:
	.sleb128	2
	.4byte		.L484-.L476
	.byte		"Wdg_ChannelTrigger"
	.byte		0
	.4byte		.L487
	.uleb128	969
	.uleb128	35
	.byte		0x1
	.4byte		.L485
	.4byte		.L486
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L487
	.uleb128	969
	.uleb128	35
	.byte		"Wdg_Instance"
	.byte		0
	.4byte		.L489
	.4byte		.L492
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	4
	.4byte		.L496
	.4byte		.L493
	.4byte		.L494
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L497:
	.sleb128	5
	.4byte		.L487
	.uleb128	988
	.uleb128	36
	.byte		"u16TempTimeout"
	.byte		0
	.4byte		.L498
	.4byte		.L500
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L496:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L484:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L505:
	.sleb128	6
	.4byte		.L502-.L476
	.byte		"Wdg_Cbk_GptNotification1"
	.byte		0
	.4byte		.L487
	.uleb128	546
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L503
	.4byte		.L504
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L502:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L513:
	.sleb128	7
	.4byte		.L507-.L476
	.byte		"Wdg_ChannelValidateMode"
	.byte		0
	.4byte		.L487
	.uleb128	807
	.uleb128	45
	.4byte		.L510
	.byte		0x1
	.4byte		.L508
	.4byte		.L509
	.sleb128	3
	.4byte		.L487
	.uleb128	807
	.uleb128	45
	.byte		"Wdg_Mode"
	.byte		0
	.4byte		.L514
	.4byte		.L516
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L487
	.uleb128	807
	.uleb128	45
	.byte		"uServiceId"
	.byte		0
	.4byte		.L517
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	8
	.4byte		.L487
	.uleb128	807
	.uleb128	45
	.byte		"uErrorId"
	.byte		0
	.4byte		.L519
	.sleb128	2
	.byte		0x90
	.uleb128	5
	.sleb128	3
	.4byte		.L487
	.uleb128	807
	.uleb128	45
	.byte		"Wdg_Instance"
	.byte		0
	.4byte		.L489
	.4byte		.L521
.L522:
	.sleb128	5
	.4byte		.L487
	.uleb128	813
	.uleb128	36
	.byte		"valid"
	.byte		0
	.4byte		.L510
	.4byte		.L523
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L507:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L528:
	.sleb128	6
	.4byte		.L525-.L476
	.byte		"Wdg_ProcessInterrupt"
	.byte		0
	.4byte		.L487
	.uleb128	1014
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L526
	.4byte		.L527
	.sleb128	3
	.4byte		.L487
	.uleb128	1014
	.uleb128	22
	.byte		"Wdg_Instance"
	.byte		0
	.4byte		.L489
	.4byte		.L529
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L525:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L534:
	.sleb128	6
	.4byte		.L531-.L476
	.byte		"Wdg_ChannelInit"
	.byte		0
	.4byte		.L487
	.uleb128	1040
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L532
	.4byte		.L533
	.sleb128	3
	.4byte		.L487
	.uleb128	1040
	.uleb128	22
	.byte		"pConfigPtr"
	.byte		0
	.4byte		.L535
	.4byte		.L539
	.sleb128	3
	.4byte		.L487
	.uleb128	1040
	.uleb128	22
	.byte		"Wdg_Instance"
	.byte		0
	.4byte		.L489
	.4byte		.L540
.L541:
	.sleb128	5
	.4byte		.L487
	.uleb128	1044
	.uleb128	29
	.byte		"u32TimerValue"
	.byte		0
	.4byte		.L542
	.4byte		.L544
.L545:
	.sleb128	5
	.4byte		.L487
	.uleb128	1045
	.uleb128	35
	.byte		"valid"
	.byte		0
	.4byte		.L510
	.4byte		.L546
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L531:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L551:
	.sleb128	9
	.4byte		.L548-.L476
	.byte		"Wdg_ChannelSetMode"
	.byte		0
	.4byte		.L487
	.uleb128	1128
	.uleb128	32
	.4byte		.L510
	.byte		0x1
	.byte		0x1
	.4byte		.L549
	.4byte		.L550
	.sleb128	3
	.4byte		.L487
	.uleb128	1128
	.uleb128	32
	.byte		"Mode"
	.byte		0
	.4byte		.L514
	.4byte		.L552
	.sleb128	3
	.4byte		.L487
	.uleb128	1128
	.uleb128	32
	.byte		"Wdg_Instance"
	.byte		0
	.4byte		.L489
	.4byte		.L553
.L554:
	.sleb128	5
	.4byte		.L487
	.uleb128	1132
	.uleb128	36
	.byte		"ret"
	.byte		0
	.4byte		.L510
	.4byte		.L555
.L556:
	.sleb128	5
	.4byte		.L487
	.uleb128	1133
	.uleb128	35
	.byte		"valid"
	.byte		0
	.4byte		.L510
	.4byte		.L557
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	4
	.4byte		.L561
	.4byte		.L558
	.4byte		.L559
.L562:
	.sleb128	5
	.4byte		.L487
	.uleb128	1151
	.uleb128	40
	.byte		"u32TimerValue"
	.byte		0
	.4byte		.L542
	.4byte		.L563
.L564:
	.sleb128	5
	.4byte		.L487
	.uleb128	1152
	.uleb128	47
	.byte		"uElapsedTime"
	.byte		0
	.4byte		.L565
	.4byte		.L566
.L567:
	.sleb128	5
	.4byte		.L487
	.uleb128	1153
	.uleb128	40
	.byte		"u16Temp"
	.byte		0
	.4byte		.L498
	.4byte		.L568
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L561:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L548:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L573:
	.sleb128	6
	.4byte		.L570-.L476
	.byte		"Wdg_ChannelSetTriggerCondition"
	.byte		0
	.4byte		.L487
	.uleb128	1198
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L571
	.4byte		.L572
	.sleb128	3
	.4byte		.L487
	.uleb128	1198
	.uleb128	22
	.byte		"u16Timeout"
	.byte		0
	.4byte		.L498
	.4byte		.L574
	.sleb128	3
	.4byte		.L487
	.uleb128	1198
	.uleb128	22
	.byte		"Wdg_Instance"
	.byte		0
	.4byte		.L489
	.4byte		.L575
.L576:
	.sleb128	5
	.4byte		.L487
	.uleb128	1216
	.uleb128	43
	.byte		"uElapsedTime"
	.byte		0
	.4byte		.L565
	.4byte		.L577
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L570:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L582:
	.sleb128	6
	.4byte		.L579-.L476
	.byte		"Wdg_ChannelGetVersionInfo"
	.byte		0
	.4byte		.L487
	.uleb128	1261
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L580
	.4byte		.L581
	.sleb128	3
	.4byte		.L487
	.uleb128	1261
	.uleb128	22
	.byte		"pVersioninfo"
	.byte		0
	.4byte		.L583
	.4byte		.L586
	.sleb128	8
	.4byte		.L487
	.uleb128	1261
	.uleb128	22
	.byte		"Wdg_Instance"
	.byte		0
	.4byte		.L489
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L579:
	.section	.debug_info,,n
.L587:
	.sleb128	10
	.4byte		.L588
	.uleb128	270
	.uleb128	57
	.byte		"Wdg_apConfigPtr"
	.byte		0
	.4byte		.L589
	.sleb128	5
	.byte		0x3
	.4byte		Wdg_apConfigPtr
	.section	.debug_info,,n
	.section	.debug_info,,n
.L591:
	.sleb128	10
	.4byte		.L588
	.uleb128	326
	.uleb128	29
	.byte		"Wdg_au16Timeout"
	.byte		0
	.4byte		.L592
	.sleb128	5
	.byte		0x3
	.4byte		Wdg_au16Timeout
	.section	.debug_info,,n
	.section	.debug_info,,n
.L594:
	.sleb128	10
	.4byte		.L588
	.uleb128	331
	.uleb128	29
	.byte		"Wdg_au16GptPeriod"
	.byte		0
	.4byte		.L595
	.sleb128	5
	.byte		0x3
	.4byte		Wdg_au16GptPeriod
	.section	.debug_info,,n
.L538:
	.sleb128	11
	.4byte		.L597
	.uleb128	197
	.uleb128	14
	.4byte		.L598-.L2
	.uleb128	32
	.section	.debug_info,,n
.L429:
	.sleb128	12
	.byte		"Wdg_DefaultMode"
	.byte		0
	.4byte		.L599
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	12
	.byte		"Wdg_Instance"
	.byte		0
	.4byte		.L489
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	12
	.byte		"Wdg_TimerChannel"
	.byte		0
	.4byte		.L600
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L432:
	.sleb128	12
	.byte		"Wdg_u32TriggerSourceClock"
	.byte		0
	.4byte		.L602
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L433:
	.sleb128	12
	.byte		"Wdg_ModeSettings"
	.byte		0
	.4byte		.L603
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L434:
	.sleb128	12
	.byte		"Wdg_CallbackPtr"
	.byte		0
	.4byte		.L609
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L598:
.L608:
	.sleb128	11
	.4byte		.L613
	.uleb128	336
	.uleb128	1
	.4byte		.L614-.L2
	.uleb128	20
.L424:
	.sleb128	12
	.byte		"Swt_u32Config"
	.byte		0
	.4byte		.L542
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L425:
	.sleb128	12
	.byte		"Swt_u32Timeout"
	.byte		0
	.4byte		.L542
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L426:
	.sleb128	12
	.byte		"Swt_u32Window"
	.byte		0
	.4byte		.L542
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L427:
	.sleb128	12
	.byte		"Swt_u32InitialKey"
	.byte		0
	.4byte		.L542
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L428:
	.sleb128	12
	.byte		"Wdg_u32InternalTimerClock"
	.byte		0
	.4byte		.L542
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L614:
.L585:
	.sleb128	11
	.4byte		.L615
	.uleb128	9570
	.uleb128	5
	.4byte		.L616-.L2
	.uleb128	8
.L236:
	.sleb128	12
	.byte		"vendorID"
	.byte		0
	.4byte		.L498
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L237:
	.sleb128	12
	.byte		"moduleID"
	.byte		0
	.4byte		.L498
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L238:
	.sleb128	12
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L511
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L239:
	.sleb128	12
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L511
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L240:
	.sleb128	12
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L511
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L616:
	.section	.debug_info,,n
.L520:
	.sleb128	13
	.4byte		.L597
	.uleb128	197
	.uleb128	14
	.4byte		.L617-.L2
	.byte		"Wdg_ErrorIdType"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	14
	.byte		"WDG_E_DRIVER_STATE"
	.byte		0
	.sleb128	16
	.sleb128	14
	.byte		"WDG_E_PARAM_MODE"
	.byte		0
	.sleb128	17
	.sleb128	14
	.byte		"WDG_E_PARAM_CONFIG"
	.byte		0
	.sleb128	18
	.sleb128	14
	.byte		"WDG_E_PARAM_TIMEOUT"
	.byte		0
	.sleb128	19
	.sleb128	14
	.byte		"WDG_E_PARAM_POINTER"
	.byte		0
	.sleb128	20
	.sleb128	0
.L617:
.L518:
	.sleb128	13
	.4byte		.L597
	.uleb128	177
	.uleb128	14
	.4byte		.L618-.L2
	.byte		"Wdg_ServiceIdType"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"WDG_GETVERSION_ID"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"WDG_INIT_ID"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"WDG_SETMODE_ID"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"WDG_SETTRIGGERCONDITION_ID"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"WDG_TRIGGER_ID"
	.byte		0
	.sleb128	3
	.sleb128	0
.L618:
.L491:
	.sleb128	13
	.4byte		.L619
	.uleb128	118
	.uleb128	14
	.4byte		.L620-.L2
	.byte		"Wdg_IPW_InstanceType"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"WDG_IPW_INSTANCE0"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"WDG_IPW_INSTANCE1"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"WDG_IPW_INSTANCE2"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"WDG_IPW_INSTANCE3"
	.byte		0
	.sleb128	3
	.sleb128	0
.L620:
.L515:
	.sleb128	13
	.4byte		.L621
	.uleb128	66
	.uleb128	14
	.4byte		.L622-.L2
	.byte		"WdgIf_Mode_Tag"
	.byte		0
	.uleb128	4
	.sleb128	14
	.byte		"WDGIF_OFF_MODE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"WDGIF_SLOW_MODE"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"WDGIF_FAST_MODE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L622:
	.section	.debug_info,,n
.L490:
	.sleb128	15
	.byte		"Wdg_IPW_InstanceType"
	.byte		0
	.4byte		.L491
	.section	.debug_info,,n
.L489:
	.sleb128	16
	.4byte		.L490
	.section	.debug_info,,n
.L499:
	.sleb128	17
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L498:
	.sleb128	15
	.byte		"uint16"
	.byte		0
	.4byte		.L499
.L512:
	.sleb128	17
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L511:
	.sleb128	15
	.byte		"uint8"
	.byte		0
	.4byte		.L512
.L510:
	.sleb128	15
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L511
.L514:
	.sleb128	15
	.byte		"WdgIf_ModeType"
	.byte		0
	.4byte		.L515
.L517:
	.sleb128	15
	.byte		"Wdg_ServiceIdType"
	.byte		0
	.4byte		.L518
.L519:
	.sleb128	15
	.byte		"Wdg_ErrorIdType"
	.byte		0
	.4byte		.L520
.L537:
	.sleb128	15
	.byte		"Wdg_ConfigType"
	.byte		0
	.4byte		.L538
.L536:
	.sleb128	16
	.4byte		.L537
	.section	.debug_info,,n
.L535:
	.sleb128	18
	.4byte		.L536
.L543:
	.sleb128	17
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L542:
	.sleb128	15
	.byte		"uint32"
	.byte		0
	.4byte		.L543
.L565:
	.sleb128	15
	.byte		"Gpt_ValueType"
	.byte		0
	.4byte		.L542
.L584:
	.sleb128	15
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L585
.L583:
	.sleb128	18
	.4byte		.L584
	.section	.debug_info,,n
.L589:
	.sleb128	19
	.4byte		.L590-.L2
	.4byte		.L535
	.section	.debug_info,,n
	.sleb128	20
	.uleb128	3
	.sleb128	0
.L590:
.L592:
	.sleb128	19
	.4byte		.L593-.L2
	.4byte		.L498
	.sleb128	20
	.uleb128	3
	.sleb128	0
.L593:
.L595:
	.sleb128	19
	.4byte		.L596-.L2
	.4byte		.L498
	.sleb128	20
	.uleb128	3
	.sleb128	0
.L596:
.L599:
	.sleb128	16
	.4byte		.L514
.L601:
	.sleb128	15
	.byte		"Gpt_ChannelType"
	.byte		0
	.4byte		.L511
.L600:
	.sleb128	16
	.4byte		.L601
.L602:
	.sleb128	16
	.4byte		.L542
.L607:
	.sleb128	15
	.byte		"Wdg_Swt_ConfigType"
	.byte		0
	.4byte		.L608
.L606:
	.sleb128	16
	.4byte		.L607
.L605:
	.sleb128	18
	.4byte		.L606
.L603:
	.sleb128	19
	.4byte		.L604-.L2
	.4byte		.L605
	.sleb128	20
	.uleb128	2
	.sleb128	0
.L604:
	.section	.debug_info,,n
.L611:
	.sleb128	21
	.4byte		.L612-.L2
	.byte		0x1
	.sleb128	0
.L612:
.L610:
	.sleb128	18
	.4byte		.L611
.L609:
	.sleb128	15
	.byte		"Wdg_CallbackPtrType"
	.byte		0
	.4byte		.L610
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L481:
	.sleb128	0
.L477:

	.section	.debug_loc,,n
	.align	0
.L492:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),31
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),31
	.d2locend
.L500:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),5
	.d2locend
.L516:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locend
.L521:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),6
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),4
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),6
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),4
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),6
	.d2locend
.L523:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo21),31
	.d2locend
.L529:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),4
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),4
	.d2locend
.L539:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locend
.L540:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo31),4
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),30
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),30
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),30
	.d2locend
.L544:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),3
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),31
	.d2locend
.L546:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),3
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),3
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo48),3
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),3
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),3
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),3
	.d2locend
.L552:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),31
	.d2locend
.L553:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo61),4
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo62),28
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),4
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),28
	.d2locend
.L555:
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo59),30
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo68),30
	.d2locend
.L557:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo59),3
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),3
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),3
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),3
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),3
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),3
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo60),3
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),3
	.d2locend
.L563:
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),3
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo60),30
	.d2locend
.L566:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),3
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo60),29
	.d2locend
.L568:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo83),0
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo79),0
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo60),0
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo65),0
	.d2locend
.L574:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),3
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),31
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),0
	.d2locend
.L575:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo98),4
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo99),30
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo100),30
	.d2locend
.L577:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo97),29
	.d2locend
.L586:
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),3
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Wdg_ChannelGetVersionInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Wdg_ChannelSetTriggerCondition"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Gpt_GetTimeElapsed","Gpt_StopTimer","SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_03","SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_03"
	.wrcm.end
	.wrcm.nelem "Wdg_ChannelSetMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Gpt_GetTimeElapsed","Gpt_StartTimer","Gpt_StopTimer","SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_02","SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_02","Wdg_ChannelValidateMode","Wdg_Swt_Init"
	.wrcm.end
	.wrcm.nelem "Wdg_ChannelInit"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Gpt_EnableNotification","Gpt_StartTimer","Gpt_StopTimer","SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_01","SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_01","Wdg_ChannelValidateMode","Wdg_Swt_Init"
	.wrcm.end
	.wrcm.nelem "Wdg_ProcessInterrupt"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Wdg_ChannelValidateMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Wdg_Swt_CheckHwSettings"
	.wrcm.end
	.wrcm.nelem "Wdg_Cbk_GptNotification1"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Wdg_ChannelTrigger"
	.wrcm.end
	.wrcm.nelem "Wdg_ChannelTrigger"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Gpt_StopTimer","SchM_Enter_Wdg_WDG_EXCLUSIVE_AREA_00","SchM_Exit_Wdg_WDG_EXCLUSIVE_AREA_00","Wdg_Swt_Trigger"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Wdg_Channel.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Wdg_Channel.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Wdg_Channel.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Wdg_Channel.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Wdg_Channel.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Wdg_Channel.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Wdg\ssc\make\..\..\generator\integration_package\src\Wdg_Channel.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
