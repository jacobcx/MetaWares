#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Icu.c"
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
# LOCAL_INLINE FUNC(void, ICU_CODE) Icu_SetBitChState(VAR(Icu_ChannelType, AUTOMATIC) Channel,
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L574:
	.section	.invalid_TEXT,,c
#$$ld
.L570:
	.0byte		.L568
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu.c"
        .d2line         638,35
#$$ld
.L577:

#$$bf	Icu_SetBitChState,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Icu_SetBitChState:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	mr		r30,r4		# mask=r30 mask=r4
	.d2prologue_end
#                                                     VAR(Icu_ChannelStateType, AUTOMATIC) mask
#                                                    )
# {
#     SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_00();
	.d2line		642
.Llo5:
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_00
#     {
#         Icu_aChannelState[Channel] |= mask;
	.d2line		644
.Llo2:
	lis		r3,Icu_aChannelState@ha
	e_add16i		r3,r3,Icu_aChannelState@l
.Llo3:
	rlwinm		r31,r31,0,16,31		# Channel=r31 Channel=r31
.Llo4:
	lbzux		r0,r3,r31
	or		r0,r0,r30		# mask=r30
	stb		r0,0(r3)
#     }
#     SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_00();
	.d2line		646
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_00
# }
	.d2line		647
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo6:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L578:
	.type		Icu_SetBitChState,@function
	.size		Icu_SetBitChState,.-Icu_SetBitChState
# Number of nodes = 12

# Allocations for Icu_SetBitChState
#	?a4		Channel
#	?a5		mask
#	?a6		$$115
# LOCAL_INLINE FUNC(Icu_ChannelStateType, ICU_CODE) Icu_GetBitChState(VAR(Icu_ChannelType, AUTOMATIC) Channel,
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         663,51
#$$ld
.L591:

#$$bf	Icu_GetBitChState,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5
	.d2_cfa_start __cie
Icu_GetBitChState:
.Llo7:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Channel=r3 Channel=r3
	mr		r4,r4		# mask=r4 mask=r4
	.d2prologue_end
#                                                                     VAR(Icu_ChannelStateType, AUTOMATIC) mask
#                                                                    )
# {
#     VAR(Icu_ChannelStateType, AUTOMATIC) value;
# 
#     value = Icu_aChannelState[Channel] & mask;
	.d2line		669
	lis		r5,Icu_aChannelState@ha
	e_add16i		r5,r5,Icu_aChannelState@l
	rlwinm		r3,r3,0,16,31		# Channel=r3 Channel=r3
	se_add		r3,r5		# Channel=r3 Channel=r3
	lbzx		r3,r0,r3		# Channel=r3
	and		r3,r3,r4		# Channel=r3 Channel=r3 mask=r4
.Llo8:
	mr		r3,r3		# value=r3 value=r3
# 
#     return value;
	.d2line		671
	rlwinm		r3,r3,0,24,31		# value=r3 value=r3
# }
	.d2line		672
	.d2epilogue_begin
.Llo10:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo9:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L592:
	.type		Icu_GetBitChState,@function
	.size		Icu_GetBitChState,.-Icu_GetBitChState
# Number of nodes = 12

# Allocations for Icu_GetBitChState
#	?a4		Channel
#	?a5		mask
#	?a6		value
# LOCAL_INLINE FUNC(void, ICU_CODE) Icu_ClearBitChState(VAR(Icu_ChannelType, AUTOMATIC) Channel,
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         685,35
#$$ld
.L600:

#$$bf	Icu_ClearBitChState,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Icu_ClearBitChState:
.Llo11:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	mr		r30,r4		# mask=r30 mask=r4
	.d2prologue_end
#                                                       VAR(Icu_ChannelStateType, AUTOMATIC) mask
#                                                      )
# {
#     SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_01();
	.d2line		689
.Llo15:
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_01
#     {
#         Icu_aChannelState[Channel] &= ((Icu_ChannelStateType)(~mask));
	.d2line		691
.Llo12:
	lis		r3,Icu_aChannelState@ha
	e_add16i		r3,r3,Icu_aChannelState@l
.Llo13:
	rlwinm		r31,r31,0,16,31		# Channel=r31 Channel=r31
.Llo14:
	lbzux		r0,r3,r31
	andc		r0,r0,r30		# mask=r30
	stb		r0,0(r3)
#     }
#     SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_01();
	.d2line		693
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_01
# }
	.d2line		694
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo16:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L601:
	.type		Icu_ClearBitChState,@function
	.size		Icu_ClearBitChState,.-Icu_ClearBitChState
# Number of nodes = 13

# Allocations for Icu_ClearBitChState
#	?a4		Channel
#	?a5		mask
#	?a6		$$116
# LOCAL_INLINE FUNC(void, ICU_CODE) Icu_CallNotification(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1357,35
#$$ld
.L607:

#$$bf	Icu_CallNotification,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Icu_CallNotification:
.Llo17:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r6,r3		# Channel=r6 Channel=r3
	.d2prologue_end
# {
#     if ((ICU_CHANNEL_STATE_NOTIFICATION == Icu_GetBitChState(Channel, ICU_CHANNEL_STATE_NOTIFICATION)) \
	.d2line		1359
	mr		r3,r6		# Channel=r3 Channel=r6
.Llo18:
	diab.li		r4,4
	bl		Icu_GetBitChState
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,4
	bc		0,2,.L453	# ne
.Llo19:
	lis		r3,Icu_pCfgPtr@ha
	lwz		r3,Icu_pCfgPtr@l(r3)
	lwz		r0,4(r3)
	rlwinm		r3,r6,0,16,31		# Channel=r6
	e_mulli		r3,r3,20
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,0
	bc		1,2,.L453	# eq
#         && (NULL_PTR != (*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Icu_Channel_Notification)
#        )
#     {
#         (*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Icu_Channel_Notification();
	.d2line		1363
.Llo20:
	lis		r3,Icu_pCfgPtr@ha
	lwz		r3,Icu_pCfgPtr@l(r3)
	lwz		r3,4(r3)
.Llo21:
	rlwinm		r6,r6,0,16,31		# Channel=r6 Channel=r6
	e_mulli		r6,r6,20		# Channel=r6 Channel=r6
	se_add		r3,r6		# Channel=r6
	lwz		r0,12(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L453:
#     }
# }
	.d2line		1365
	.d2epilogue_begin
.Llo22:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L608:
	.type		Icu_CallNotification,@function
	.size		Icu_CallNotification,.-Icu_CallNotification
# Number of nodes = 38

# Allocations for Icu_CallNotification
#	?a4		Channel
# FUNC(void, ICU_CODE) Icu_Init(P2CONST(Icu_ConfigType, AUTOMATIC, ICU_APPL_CONST) ConfigPtr)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1392,22
#$$ld
.L613:

#$$bf	Icu_Init,interprocedural,rasave,nostackparams
	.globl		Icu_Init
	.d2_cfa_start __cie
Icu_Init:
.Llo23:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# ConfigPtr=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# ConfigPtr=r0 ConfigPtr=r3
	.d2prologue_end
# {
#     VAR(Icu_ChannelType, AUTOMATIC) numChl;
# #if (ICU_TIMESTAMP_API == STD_ON)
#     P2CONST(Icu_ChannelConfigType, AUTOMATIC, ICU_APPL_CONST) ChannelConfig;
# #endif /* ICU_TIMESTAMP_API */
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON) || (ICU_VALIDATE_PARAMS == STD_ON)
#     VAR(Std_ReturnType, AUTOMATIC)valid;
# 
# #endif
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON)
#     valid = Icu_ValidateGlobalCall(ICU_INIT_ID);
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif /* (ICU_VALIDATE_GLOBAL_CALL == STD_ON */
# #if (ICU_VALIDATE_PARAMS == STD_ON)
#         valid = Icu_ValidatePtrInit(ConfigPtr);
#         if ((Std_ReturnType)E_OK == valid)
#         {
# #endif /* (ICU_VALIDATE_PARAMS == STD_ON) */
# 
# #ifdef ICU_PRECOMPILE_SUPPORT
#             Icu_pCfgPtr = &Icu_Configs_PC;
#             (void)ConfigPtr;
# #else
#             Icu_pCfgPtr = ConfigPtr;
	.d2line		1417
	lis		r4,Icu_pCfgPtr@ha
	e_add16i		r4,r4,Icu_pCfgPtr@l
	stw		r0,0(r4)		# ConfigPtr=r0
# #endif /* ICU_PRECOMPILE_SUPPORT */
# 
# #ifdef ICU_NONBONDED_WAKEUP_PULLUP
#             Icu_Ipw_PullUpNonBondedWakeupPin();
# #endif
#             Icu_Ipw_Init(&Icu_pCfgPtr->IpConfig);
	.d2line		1423
	se_addi		r3,8		# ConfigPtr=r3 ConfigPtr=r3
.Llo24:
	bl		Icu_Ipw_Init
#             
#             for (numChl = 0U; numChl < Icu_pCfgPtr->nNumChannels; numChl++)
	.d2line		1425
	diab.li		r3,0		# numChl=r3
.L457:
.Llo31:
	rlwinm		r0,r3,0,16,31		# ConfigPtr=r0 numChl=r3
.Llo25:
	lis		r4,Icu_pCfgPtr@ha		# ChannelConfig=r4
.Llo35:
	lwz		r4,Icu_pCfgPtr@l(r4)		# ChannelConfig=r4 ChannelConfig=r4
	lhz		r4,0(r4)		# ChannelConfig=r4 ChannelConfig=r4
	se_cmp		r0,r4		# ConfigPtr=r0 ChannelConfig=r4
	bc		0,0,.L459	# ge
#             {
#                 /* Clear channel internal state */
#                 Icu_aChannelState[numChl] =  0x00U;
	.d2line		1428
.Llo26:
	diab.li		r5,0
	lis		r4,Icu_aChannelState@ha		# ChannelConfig=r4
.Llo36:
	e_add16i		r4,r4,Icu_aChannelState@l		# ChannelConfig=r4 ChannelConfig=r4
	rlwinm		r0,r3,0,16,31		# ConfigPtr=r0 numChl=r3
.Llo27:
	stbux		r5,r4,r0		# ChannelConfig=r4
# #if (ICU_TIMESTAMP_API == STD_ON)
#                 ChannelConfig = &(*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[numChl];
	.d2line		1430
	lis		r4,Icu_pCfgPtr@ha		# ChannelConfig=r4
	lwz		r4,Icu_pCfgPtr@l(r4)		# ChannelConfig=r4 ChannelConfig=r4
	lwz		r4,4(r4)		# ChannelConfig=r4 ChannelConfig=r4
	e_mulli		r0,r0,20		# ConfigPtr=r0 ConfigPtr=r0
	se_add		r0,r4		# ConfigPtr=r0 ConfigPtr=r0 ChannelConfig=r4
.Llo28:
	mr		r4,r0		# ChannelConfig=r4 ChannelConfig=r0
#                 if (ICU_MODE_TIMESTAMP == ChannelConfig->Icu_Channel_Mode)
	.d2line		1431
.Llo37:
	lwz		r0,4(r4)		# ConfigPtr=r0 ChannelConfig=r4
.Llo29:
	se_cmpi		r0,4		# ConfigPtr=r0
	bc		0,2,.L460	# ne
#                 {
#                     Icu_aBuffer[numChl] = NULL_PTR;
	.d2line		1433
.Llo30:
	diab.li		r5,0
	lis		r4,Icu_aBuffer@ha		# ChannelConfig=r4
.Llo38:
	e_add16i		r4,r4,Icu_aBuffer@l		# ChannelConfig=r4 ChannelConfig=r4
	rlwinm		r0,r3,2,14,29		# ConfigPtr=r0 numChl=r3
	stwx		r5,r4,r0		# ChannelConfig=r4
.L460:
#                 }
# #endif /* ICU_TIMESTAMP_API */
#             }
	.d2line		1436
.Llo39:
	diab.addi		r0,r3,1		# ConfigPtr=r0 numChl=r3
	se_addi		r3,1		# numChl=r3 numChl=r3
	b		.L457
.L459:
# 
#             Icu_CurrentMode = ICU_MODE_NORMAL;
	.d2line		1438
.Llo32:
	diab.li		r3,0		# numChl=r3
.Llo33:
	lis		r4,Icu_CurrentMode@ha		# ChannelConfig=r4
.Llo40:
	e_add16i		r4,r4,Icu_CurrentMode@l		# ChannelConfig=r4 ChannelConfig=r4
	stw		r3,0(r4)		# ChannelConfig=r4 numChl=r3
# #if ( ICU_VALIDATE_PARAMS == STD_ON)
#         }
# #endif
# #if (STD_ON == ICU_VALIDATE_GLOBAL_CALL)
#     }
#     Icu_EndValidateGlobalCall(valid, ICU_INIT_ID);
# #endif
# }
	.d2line		1446
	.d2epilogue_begin
	lwz		r0,20(r1)		# ConfigPtr=r0
	mtspr		lr,r0		# ConfigPtr=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo34:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L614:
	.type		Icu_Init,@function
	.size		Icu_Init,.-Icu_Init
# Number of nodes = 59

# Allocations for Icu_Init
#	?a4		ConfigPtr
#	?a5		numChl
#	?a6		ChannelConfig
# FUNC(void, ICU_CODE) Icu_DeInit(void)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1467,22
#$$ld
.L631:

#$$bf	Icu_DeInit,interprocedural,rasave,nostackparams
	.globl		Icu_DeInit
	.d2_cfa_start __cie
Icu_DeInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(Icu_ChannelType, AUTOMATIC) numChl;
# 
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON)
#     VAR(Std_ReturnType, AUTOMATIC)valid = Icu_ValidateGlobalCall(ICU_DEINIT_ID);
# 
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif /* ICU_VALIDATE_GLOBAL_CALL == STD_ON*/
# 
#         Icu_Ipw_DeInit(&Icu_pCfgPtr->IpConfig);
	.d2line		1478
	lis		r3,Icu_pCfgPtr@ha		# numChl=r3
.Llo41:
	lwz		r3,Icu_pCfgPtr@l(r3)		# numChl=r3 numChl=r3
	se_addi		r3,8		# numChl=r3 numChl=r3
.Llo42:
	bl		Icu_Ipw_DeInit
# 
#         for (numChl = 0U; numChl < Icu_pCfgPtr->nNumChannels; numChl++)
	.d2line		1480
	diab.li		r3,0		# numChl=r3
.L465:
.Llo43:
	rlwinm		r0,r3,0,16,31		# numChl=r3
	lis		r4,Icu_pCfgPtr@ha
	lwz		r4,Icu_pCfgPtr@l(r4)
	lhz		r4,0(r4)
	se_cmp		r0,r4
	bc		0,0,.L467	# ge
#         {
#             /* Clear channel internal state */
#             Icu_aChannelState[numChl] =  0x00U;
	.d2line		1483
	diab.li		r5,0
	lis		r4,Icu_aChannelState@ha
	e_add16i		r4,r4,Icu_aChannelState@l
	rlwinm		r0,r3,0,16,31		# numChl=r3
	stbux		r5,r4,r0
#         }
	.d2line		1484
	diab.addi		r0,r3,1		# numChl=r3
	se_addi		r3,1		# numChl=r3 numChl=r3
	b		.L465
.L467:
# 
#         Icu_pCfgPtr = NULL_PTR;
	.d2line		1486
.Llo44:
	diab.li		r4,0
	lis		r3,Icu_pCfgPtr@ha		# numChl=r3
.Llo45:
	e_add16i		r3,r3,Icu_pCfgPtr@l		# numChl=r3 numChl=r3
	stw		r4,0(r3)		# numChl=r3
#         Icu_CurrentMode = ICU_MODE_NORMAL;
	.d2line		1487
	lis		r3,Icu_CurrentMode@ha		# numChl=r3
	e_add16i		r3,r3,Icu_CurrentMode@l		# numChl=r3 numChl=r3
	stw		r4,0(r3)		# numChl=r3
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
#     Icu_EndValidateGlobalCall(valid, ICU_DEINIT_ID);
# #endif /* ICU_VALIDATE_GLOBAL_CALL == STD_ON*/
# }
	.d2line		1492
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo46:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L632:
	.type		Icu_DeInit,@function
	.size		Icu_DeInit,.-Icu_DeInit
# Number of nodes = 32

# Allocations for Icu_DeInit
#	?a4		numChl
# FUNC(void, ICU_CODE) Icu_SetMode(VAR(Icu_ModeType, AUTOMATIC) Mode)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1515,22
#$$ld
.L638:

#$$bf	Icu_SetMode,interprocedural,rasave,nostackparams
	.globl		Icu_SetMode
	.d2_cfa_start __cie
Icu_SetMode:
.Llo47:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Mode=r31 Mode=r3
	.d2prologue_end
# {
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON) || (ICU_VALIDATE_PARAMS == STD_ON)
#     VAR(Std_ReturnType, AUTOMATIC)valid;
# 
# #endif
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON)
# 
#     valid = Icu_ValidateGlobalCall(ICU_SETMODE_ID);
#     if ((Std_ReturnType)E_OK == valid)
#     {
#         valid = Icu_ValidateCallSetMode(Mode);
#         if ((Std_ReturnType)E_OK == valid)
#         {
# #endif /* ICU_VALIDATE_GLOBAL_CALL == STD_ON */
# #if (ICU_VALIDATE_PARAMS == STD_ON)
#             valid = Icu_ValidateMode(Mode);
#             if ((Std_ReturnType)E_OK == valid)
#             {
# #endif /* ICU_VALIDATE_PARAMS == STD_ON */
# 
#                 if (Icu_CurrentMode != Mode)
	.d2line		1536
.Llo48:
	lis		r3,Icu_CurrentMode@ha
.Llo49:
	lwz		r0,Icu_CurrentMode@l(r3)
	se_cmp		r0,r31		# Mode=r31
	bc		1,2,.L470	# eq
	.section	.invalid_TEXT,,c
.L644:
#                 {
#                     VAR(Icu_ChannelType, AUTOMATIC) numChl;
# 
#                     for (numChl = 0U; numChl < Icu_pCfgPtr->nNumChannels; numChl++)
	.d2line		1540
	diab.li		r30,0		# numChl=r30
.L472:
.Llo51:
	rlwinm		r0,r30,0,16,31		# bActive=r0 numChl=r30
	lis		r3,Icu_pCfgPtr@ha		# numChl=r3
	lwz		r3,Icu_pCfgPtr@l(r3)		# numChl=r3 numChl=r3
	lhz		r3,0(r3)		# numChl=r3 numChl=r3
	se_cmp		r0,r3		# bActive=r0 numChl=r3
	bc		0,0,.L474	# ge
	.section	.invalid_TEXT,,c
.L650:
#                     {
#                         VAR(boolean, AUTOMATIC) bActive;
# 
#                         if (ICU_MODE_SLEEP == Mode)
	.d2line		1544
	se_cmpi		r31,1		# Mode=r31
	bc		0,2,.L475	# ne
#                         {
#                             bActive = (boolean)((Icu_GetBitChState(numChl,ICU_CHANNEL_STATE_WKUP)==\
	.d2line		1546
	mr		r3,r30		# numChl=r3 numChl=r30
	diab.li		r4,1
	bl		Icu_GetBitChState
	rlwinm		r3,r3,0,24,31		# numChl=r3 numChl=r3
	se_cmpi		r3,1		# numChl=r3
	diab.li		r3,1		# numChl=r3
	isel		r3,r3,r28,2		# numChl=r3 numChl=r3
.L479:
	diab.li		r0,0		# bActive=r0
	isel		r28,r3,r0,2		# numChl=r3 bActive=r0
.L480:
	mr		r0,r28		# bActive=r0 bActive=r28
#                                                 ICU_CHANNEL_STATE_WKUP)? TRUE : FALSE
#                                                );
# 
#                             if ((boolean)FALSE == bActive)
	.d2line		1550
	e_andi.		r0,r28,255		# bActive=r0
	bc		0,2,.L477	# ne
#                             {
#                                 Icu_Ipw_SetSleepMode(numChl, &Icu_pCfgPtr->IpConfig);
	.d2line		1552
	rlwinm		r3,r30,0,16,31		# numChl=r3 numChl=r30
	lis		r4,Icu_pCfgPtr@ha
	lwz		r4,Icu_pCfgPtr@l(r4)
	se_addi		r4,8
	bl		Icu_Ipw_SetSleepMode
	b		.L477
.L475:
#                             }
#                         }
#                         else
#                         {
#                             bActive = (boolean) ((Icu_GetBitChState(numChl,ICU_CHANNEL_STATE_RUNNING)==\
	.d2line		1557
	mr		r3,r30		# numChl=r3 numChl=r30
	diab.li		r4,8
	bl		Icu_GetBitChState
	rlwinm		r3,r3,0,24,31		# numChl=r3 numChl=r3
	se_cmpi		r3,8		# numChl=r3
	diab.li		r3,1		# numChl=r3
	isel		r3,r3,r29,2		# numChl=r3 numChl=r3
.L481:
.Llo52:
	diab.li		r0,0		# bActive=r0
.Llo53:
	isel		r29,r3,r0,2		# numChl=r3 bActive=r0
.L482:
.Llo54:
	mr		r0,r29		# bActive=r0 bActive=r29
#                                                  ICU_CHANNEL_STATE_RUNNING) ? TRUE : FALSE
#                                                 );
#                             if ((boolean)TRUE == bActive)
	.d2line		1560
.Llo55:
	rlwinm		r0,r0,0,24,31		# bActive=r0 bActive=r0
	se_cmpi		r0,1		# bActive=r0
	bc		0,2,.L477	# ne
#                             {
#                                 Icu_Ipw_SetNormalMode(numChl, &Icu_pCfgPtr->IpConfig);
	.d2line		1562
	rlwinm		r3,r30,0,16,31		# numChl=r3 numChl=r30
	lis		r4,Icu_pCfgPtr@ha
	lwz		r4,Icu_pCfgPtr@l(r4)
	se_addi		r4,8
	bl		Icu_Ipw_SetNormalMode
.L477:
	.section	.invalid_TEXT,,c
.L651:
#                             }
#                         }
#                     }
	.d2line		1565
	diab.addi		r0,r30,1		# bActive=r0 numChl=r30
	se_addi		r30,1		# numChl=r30 numChl=r30
	b		.L472
.L474:
#                     Icu_CurrentMode = Mode;
	.d2line		1566
	lis		r3,Icu_CurrentMode@ha		# numChl=r3
	e_add16i		r3,r3,Icu_CurrentMode@l		# numChl=r3 numChl=r3
	stw		r31,0(r3)		# numChl=r3 Mode=r31
	.section	.invalid_TEXT,,c
.L645:
.L470:
#                 }
# #if (ICU_VALIDATE_PARAMS == STD_ON)
#             }
# #endif /* (ICU_VALIDATE_PARAMS == STD_ON) */
# 
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON)
#         }
#     }
#     Icu_EndValidateGlobalCall(valid, ICU_SETMODE_ID);
# #endif /* (ICU_VALIDATE_GLOBAL_CALL == STD_ON)*/
# }
	.d2line		1577
	.d2epilogue_begin
.Llo50:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# bActive=r0
	mtspr		lr,r0		# bActive=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L639:
	.type		Icu_SetMode,@function
	.size		Icu_SetMode,.-Icu_SetMode
# Number of nodes = 88

# Allocations for Icu_SetMode
#	?a4		Mode
#	?a5		$$118
#	?a6		$$117
#	?a7		numChl
#	?a8		bActive
# FUNC(void, ICU_CODE) Icu_DisableWakeup(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1599,22
#$$ld
.L659:

#$$bf	Icu_DisableWakeup,interprocedural,rasave,nostackparams
	.globl		Icu_DisableWakeup
	.d2_cfa_start __cie
Icu_DisableWakeup:
.Llo56:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     VAR(Std_ReturnType,AUTOMATIC) valid = Icu_ValidateCallAndChannel \
#                                           (Channel,\
#                                            ((uint8)ICU_MODE_EDGE_COUNTER | (uint8)ICU_MODE_SIGNAL_EDGE_DETECT |\
#                                            (uint8)ICU_MODE_SIGNAL_MEASUREMENT | (uint8)ICU_MODE_TIMESTAMP), ICU_DISABLEWAKEUP_ID
#                                           );
# 
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif /* (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON) */
# #if (ICU_VALIDATE_PARAMS == STD_ON)
#         if ((Std_ReturnType)E_OK == Icu_ValidateWakeupChannel(Channel, ICU_DISABLEWAKEUP_ID))
#         {
# #endif /* (ICU_VALIDATE_PARAMS == STD_ON) */
#             Icu_ClearBitChState(Channel, ICU_CHANNEL_STATE_WKUP);
	.d2line		1615
	mr		r0,r3		# Channel=r0 Channel=r3
	diab.li		r4,1
	bl		Icu_ClearBitChState
# #if (ICU_VALIDATE_PARAMS == STD_ON)
#         }
# #endif /*(ICU_VALIDATE_PARAMS == STD_ON)*/
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     Icu_EndValidateCallAndChannel(valid);
# #endif /* (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON) */
# }
	.d2line		1623
	.d2epilogue_begin
.Llo57:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L660:
	.type		Icu_DisableWakeup,@function
	.size		Icu_DisableWakeup,.-Icu_DisableWakeup
# Number of nodes = 7

# Allocations for Icu_DisableWakeup
#	?a4		Channel
# FUNC(void, ICU_CODE) Icu_EnableWakeup(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1641,22
#$$ld
.L665:

#$$bf	Icu_EnableWakeup,interprocedural,rasave,nostackparams
	.globl		Icu_EnableWakeup
	.d2_cfa_start __cie
Icu_EnableWakeup:
.Llo58:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Icu_ValidateModeForSetUpFeature(ICU_ENABLEWAKEUP_ID))
#     {
# #endif
# #if ( ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     VAR(Std_ReturnType,AUTOMATIC) valid = Icu_ValidateCallAndChannel \
#                                           (Channel,\
#                                            (uint8)ICU_MODE_EDGE_COUNTER | (uint8)ICU_MODE_SIGNAL_EDGE_DETECT |\
#                                            (uint8)ICU_MODE_SIGNAL_MEASUREMENT | (uint8)ICU_MODE_TIMESTAMP, ICU_ENABLEWAKEUP_ID
#                                           );
# 
#     if((Std_ReturnType)E_OK == valid)
#     {
# #endif
# #if ( ICU_VALIDATE_PARAMS == STD_ON)
#         if((Std_ReturnType)E_OK == Icu_ValidateWakeupChannel(Channel, ICU_ENABLEWAKEUP_ID))
#         {
# #endif
#             Icu_SetBitChState(Channel, ICU_CHANNEL_STATE_WKUP);
	.d2line		1661
	mr		r0,r3		# Channel=r0 Channel=r3
	diab.li		r4,1
	bl		Icu_SetBitChState
# #if ( ICU_VALIDATE_PARAMS == STD_ON)
#         }
# #endif
# #if ( ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     Icu_EndValidateCallAndChannel(valid);
# #endif
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
# #endif
# }
	.d2line		1672
	.d2epilogue_begin
.Llo59:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L666:
	.type		Icu_EnableWakeup,@function
	.size		Icu_EnableWakeup,.-Icu_EnableWakeup
# Number of nodes = 7

# Allocations for Icu_EnableWakeup
#	?a4		Channel
# FUNC(void, ICU_CODE) Icu_CheckWakeup(VAR(EcuM_WakeupSourceType, AUTOMATIC) WakeupSource)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1694,22
#$$ld
.L671:

#$$bf	Icu_CheckWakeup,interprocedural,rasave,nostackparams
	.globl		Icu_CheckWakeup
	.d2_cfa_start __cie
Icu_CheckWakeup:
.Llo60:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# WakeupSource=r7 WakeupSource=r3
	.d2prologue_end
# {
# #if ( ICU_VALIDATE_GLOBAL_CALL == STD_ON)
#     VAR(Std_ReturnType,AUTOMATIC) valid = Icu_ValidateGlobalCall(ICU_CHECKWAKEUP_ID);
# 
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif /* ICU_VALIDATE_GLOBAL_CALL == STD_ON*/
#         VAR(Icu_ChannelType, AUTOMATIC) numChl;
#         P2CONST(Icu_ChannelConfigType, AUTOMATIC, ICU_APPL_CONST) pTempPtr;
#         
#         for (numChl = 0U; numChl < Icu_pCfgPtr->nNumChannels; numChl++)
	.d2line		1705
	diab.li		r31,0		# numChl=r31
.L495:
.Llo61:
	rlwinm		r0,r31,0,16,31		# numChl=r31
.Llo62:
	lis		r3,Icu_pCfgPtr@ha		# numChl=r3
	lwz		r3,Icu_pCfgPtr@l(r3)		# numChl=r3 numChl=r3
	lhz		r3,0(r3)		# numChl=r3 numChl=r3
	se_cmp		r0,r3		# numChl=r3
	bc		0,0,.L494	# ge
#         {
#             pTempPtr = &(*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[numChl];
	.d2line		1707
	lis		r3,Icu_pCfgPtr@ha		# numChl=r3
	lwz		r3,Icu_pCfgPtr@l(r3)		# numChl=r3 numChl=r3
	lwz		r6,4(r3)		# pTempPtr=r6 numChl=r3
.Llo66:
	rlwinm		r0,r31,0,16,31		# numChl=r31
	e_mulli		r0,r0,20
	se_add		r0,r6		# pTempPtr=r6
	mr		r6,r0		# pTempPtr=r6 pTempPtr=r0
#             if (((ICU_CHANNEL_IS_WAKEUP_SOURCE | ICU_CHANNEL_STATE_WKUP) ==  \
	.d2line		1708
.Llo67:
	mr		r3,r31		# numChl=r3 numChl=r31
.Llo68:
	diab.li		r4,129
	bl		Icu_GetBitChState
.Llo69:
	rlwinm		r3,r3,0,24,31		# numChl=r3 numChl=r3
	cmpi		0,0,r3,129		# numChl=r3
	bc		0,2,.L498	# ne
.Llo70:
	lwz		r0,16(r6)		# pTempPtr=r6
	se_cmpl		r0,r7		# WakeupSource=r7
	bc		0,2,.L498	# ne
#                  Icu_GetBitChState(numChl, ICU_CHANNEL_IS_WAKEUP_SOURCE | ICU_CHANNEL_STATE_WKUP) \
#                 ) && (WakeupSource == (EcuM_WakeupSourceType)pTempPtr->Icu_Channel_WakeupValue)
#                )
#             {
#                 EcuM_SetWakeupEvent(WakeupSource);
	.d2line		1713
.Llo71:
	mr		r3,r7		# WakeupSource=r3 WakeupSource=r7
	bl		EcuM_SetWakeupEvent
#                 Icu_ClearBitChState(numChl, ICU_CHANNEL_IS_WAKEUP_SOURCE);
	.d2line		1714
.Llo63:
	mr		r3,r31		# numChl=r3 numChl=r31
	diab.li		r4,128
	bl		Icu_ClearBitChState
	b		.L494
.L498:
#                 break;
#             }
#         }
	.d2line		1717
.Llo64:
	diab.addi		r0,r31,1		# numChl=r31
	se_addi		r31,1		# numChl=r31 numChl=r31
	b		.L495
.L494:
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
#     Icu_EndValidateGlobalCall(valid, ICU_CHECKWAKEUP_ID);
# #endif /* ICU_VALIDATE_GLOBAL_CALL == STD_ON*/
# }
	.d2line		1722
	.d2epilogue_begin
.Llo65:
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
.L672:
	.type		Icu_CheckWakeup,@function
	.size		Icu_CheckWakeup,.-Icu_CheckWakeup
# Number of nodes = 51

# Allocations for Icu_CheckWakeup
#	?a4		WakeupSource
#	?a5		numChl
#	?a6		pTempPtr
# FUNC(void, ICU_CODE) Icu_SetActivationCondition(VAR(Icu_ChannelType, AUTOMATIC) Channel,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1750,22
#$$ld
.L684:

#$$bf	Icu_SetActivationCondition,interprocedural,rasave,nostackparams
	.globl		Icu_SetActivationCondition
	.d2_cfa_start __cie
Icu_SetActivationCondition:
.Llo72:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	mr		r30,r4		# Activation=r30 Activation=r4
	.d2prologue_end
#                                                 VAR(Icu_ActivationType, AUTOMATIC) Activation
#                                                )
# {
# #if ( ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     VAR(Std_ReturnType,AUTOMATIC) valid = Icu_ValidateCallAndChannel
#                                          (Channel,\
#                                           (uint8)ICU_MODE_EDGE_COUNTER | (uint8)ICU_MODE_SIGNAL_EDGE_DETECT | \
#                                           (uint8)ICU_MODE_TIMESTAMP, ICU_SETACTIVATIONCONDITION_ID
#                                          );
# 
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif
# #if ( ICU_VALIDATE_PARAMS == STD_ON)
#         if ((Std_ReturnType)E_OK == Icu_ValidateActivation(Activation))
#         {
# #endif
#             /* Clear IDLE status */
#             Icu_ClearBitChState(Channel, ICU_CHANNEL_STATE_IDLE);
	.d2line		1769
.Llo76:
	mr		r3,r31		# Channel=r3 Channel=r31
.Llo73:
	diab.li		r4,2
	bl		Icu_ClearBitChState
# 
#             Icu_Ipw_SetActivationCondition(Channel, Activation,
	.d2line		1771
	lis		r4,Icu_pCfgPtr@ha
	lwz		r3,Icu_pCfgPtr@l(r4)		# Channel=r3
.Llo74:
	lwz		r3,4(r3)		# Channel=r3 Channel=r3
	rlwinm		r31,r31,0,16,31		# Channel=r31 Channel=r31
	e_mulli		r0,r31,20		# Channel=r31
	se_add		r3,r0		# Channel=r3 Channel=r3
	lwz		r5,4(r3)		# Channel=r3
	mr		r3,r31		# Channel=r3
.Llo75:
	lwz		r6,Icu_pCfgPtr@l(r4)
	se_addi		r6,8
	mr		r4,r30		# Activation=r4 Activation=r30
	bl		Icu_Ipw_SetActivationCondition
#                                            (*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Icu_Channel_Mode,
#                                            &Icu_pCfgPtr->IpConfig
#                                            );
# #if ( ICU_VALIDATE_PARAMS == STD_ON)
#         }
# #endif
# #if ( ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     Icu_EndValidateCallAndChannel(valid);
# #endif
# }
	.d2line		1782
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo77:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L685:
	.type		Icu_SetActivationCondition,@function
	.size		Icu_SetActivationCondition,.-Icu_SetActivationCondition
# Number of nodes = 31

# Allocations for Icu_SetActivationCondition
#	?a4		Channel
#	?a5		Activation
# FUNC(void, ICU_CODE) Icu_DisableNotification(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1801,22
#$$ld
.L693:

#$$bf	Icu_DisableNotification,interprocedural,rasave,nostackparams
	.globl		Icu_DisableNotification
	.d2_cfa_start __cie
Icu_DisableNotification:
.Llo78:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if ( ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     VAR(Std_ReturnType,AUTOMATIC) valid = \
#                 Icu_ValidateCallAndChannel(Channel, \
#                                            (uint8)ICU_MODE_SIGNAL_EDGE_DETECT | (uint8)ICU_MODE_TIMESTAMP, \
#                                            ICU_DISABLENOTIFICATION_ID
#                                           );
# 
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif
#         /* Clear notification enable status */
#         Icu_ClearBitChState(Channel, ICU_CHANNEL_STATE_NOTIFICATION);
	.d2line		1814
	mr		r0,r3		# Channel=r0 Channel=r3
	diab.li		r4,4
	bl		Icu_ClearBitChState
# 
# #if ( ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     Icu_EndValidateGlobalCall(valid, ICU_DISABLENOTIFICATION_ID);
# #endif
# }
	.d2line		1820
	.d2epilogue_begin
.Llo79:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L694:
	.type		Icu_DisableNotification,@function
	.size		Icu_DisableNotification,.-Icu_DisableNotification
# Number of nodes = 7

# Allocations for Icu_DisableNotification
#	?a4		Channel
# FUNC(void, ICU_CODE) Icu_EnableNotification(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1841,22
#$$ld
.L699:

#$$bf	Icu_EnableNotification,interprocedural,rasave,nostackparams
	.globl		Icu_EnableNotification
	.d2_cfa_start __cie
Icu_EnableNotification:
.Llo80:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     VAR(Std_ReturnType,AUTOMATIC) valid = \
#                     Icu_ValidateCallAndChannel(Channel,
#                                                (uint8)ICU_MODE_SIGNAL_EDGE_DETECT |(uint8)ICU_MODE_TIMESTAMP,\
#                                                ICU_ENABLENOTIFICATION_ID
#                                               );
# 
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif
#         /* Set notification enable status */
#         Icu_SetBitChState(Channel, ICU_CHANNEL_STATE_NOTIFICATION);
	.d2line		1854
	mr		r0,r3		# Channel=r0 Channel=r3
	diab.li		r4,4
	bl		Icu_SetBitChState
# 
# #if ( ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     Icu_EndValidateGlobalCall(valid, ICU_ENABLENOTIFICATION_ID);
# #endif
# }
	.d2line		1860
	.d2epilogue_begin
.Llo81:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L700:
	.type		Icu_EnableNotification,@function
	.size		Icu_EnableNotification,.-Icu_EnableNotification
# Number of nodes = 7

# Allocations for Icu_EnableNotification
#	?a4		Channel
# FUNC(Icu_InputStateType, ICU_CODE) Icu_GetInputState(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1887,36
#$$ld
.L705:

#$$bf	Icu_GetInputState,interprocedural,rasave,nostackparams
	.globl		Icu_GetInputState
	.d2_cfa_start __cie
Icu_GetInputState:
.Llo82:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r6,r3		# Channel=r6 Channel=r3
	.d2prologue_end
# {
#     VAR(Icu_InputStateType, AUTOMATIC) tempState = ICU_IDLE;
	.d2line		1889
	diab.li		r31,1		# tempState=r31
# #if ( ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     VAR(Std_ReturnType,AUTOMATIC) valid = \
#                 Icu_ValidateCallAndChannel(Channel,
#                                            (uint8)ICU_MODE_SIGNAL_EDGE_DETECT | (uint8)ICU_MODE_SIGNAL_MEASUREMENT, \
#                                            ICU_GETINPUTSTATE_ID
#                                           );
# 
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif
#         if (ICU_CHANNEL_STATE_IDLE == Icu_GetBitChState(Channel, ICU_CHANNEL_STATE_IDLE))
	.d2line		1900
	mr		r3,r6		# Channel=r3 Channel=r6
.Llo83:
	diab.li		r4,2
	bl		Icu_GetBitChState
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,2
	bc		0,2,.L507	# ne
#         {
#             tempState = ICU_ACTIVE;
	.d2line		1902
.Llo84:
	diab.li		r31,0		# tempState=r31
# 
#             /* Clear IDLE status */
#             Icu_ClearBitChState(Channel, ICU_CHANNEL_STATE_IDLE);
	.d2line		1905
	mr		r3,r6		# Channel=r3 Channel=r6
	diab.li		r4,2
	bl		Icu_ClearBitChState
.Llo85:
	b		.L508
.L507:
#         }
#         else if  (ICU_MODE_SIGNAL_EDGE_DETECT ==
	.d2line		1907
.Llo86:
	lis		r3,Icu_pCfgPtr@ha
	lwz		r3,Icu_pCfgPtr@l(r3)
	lwz		r0,4(r3)
	rlwinm		r3,r6,0,16,31		# Channel=r6
	e_mulli		r3,r3,20
	se_add		r3,r0
	lwz		r0,4(r3)
	se_cmpi		r0,1
	bc		0,2,.L508	# ne
#                   (*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Icu_Channel_Mode
#                  )
# 
#         {
#             tempState = Icu_Ipw_GetInputState(Channel, &Icu_pCfgPtr->IpConfig);
	.d2line		1912
	rlwinm		r3,r6,0,16,31		# Channel=r6
	lis		r4,Icu_pCfgPtr@ha
	lwz		r4,Icu_pCfgPtr@l(r4)
	se_addi		r4,8
	bl		Icu_Ipw_GetInputState
.Llo87:
	mr		r31,r3		# tempState=r31 tempState=r3
.L508:
#         }
#         else
#         {
#             /* does nothing*/
#         }
# 
# #if ( ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     Icu_EndValidateGlobalCall(valid, ICU_GETINPUTSTATE_ID);
# #endif
#     return (tempState);
	.d2line		1923
	mr		r3,r31		# tempState=r3 tempState=r31
# }
	.d2line		1924
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo88:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L706:
	.type		Icu_GetInputState,@function
	.size		Icu_GetInputState,.-Icu_GetInputState
# Number of nodes = 51

# Allocations for Icu_GetInputState
#	?a4		Channel
#	?a5		tempState
# FUNC(void, ICU_CODE) Icu_StartTimestamp(VAR(Icu_ChannelType, AUTOMATIC) Channel,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1950,22
#$$ld
.L715:

#$$bf	Icu_StartTimestamp,interprocedural,rasave,nostackparams
	.globl		Icu_StartTimestamp
	.d2_cfa_start __cie
Icu_StartTimestamp:
.Llo89:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr		# bDmaSupport=r0
.Llo96:
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# bDmaSupport=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
.Llo90:
	mr		r30,r4		# BufferPtr=r30 BufferPtr=r4
.Llo91:
	mr		r29,r5		# BufferSize=r29 BufferSize=r5
.Llo93:
	mr		r28,r6		# NotifyInterval=r28 NotifyInterval=r6
	.d2prologue_end
#                                         P2VAR(Icu_ValueType, AUTOMATIC, ICU_APPL_DATA) BufferPtr,
#                                         VAR(uint16, AUTOMATIC) BufferSize,
#                                         VAR(uint16, AUTOMATIC) NotifyInterval
#                                        )
# {
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Icu_ValidateModeForSetUpFeature(ICU_STARTTIMESTAMP_ID))
#     {
# #endif
# #if (ICU_TIMESTAMP_USES_DMA == STD_ON)
#         static VAR(Mcl_DmaTcdAttributesType, AUTOMATIC) tcd_config[ICU_MAX_CHANNEL];
# #endif
# 
# #if ( ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         VAR(Std_ReturnType,AUTOMATIC) valid = Icu_ValidateCallAndChannel \
#             (Channel, (uint8)ICU_MODE_TIMESTAMP, ICU_STARTTIMESTAMP_ID);
# 
#         if ((Std_ReturnType)E_OK == valid)
#         {
# #endif
# #if ( ICU_VALIDATE_PARAMS == STD_ON)
#             if ((Std_ReturnType)E_OK == Icu_ValidateTimestamp(Channel, BufferPtr, BufferSize,\
#                 NotifyInterval)
#                )
#             {
# #endif
#                 VAR(boolean, AUTOMATIC) bDmaSupport =  (boolean)FALSE;
	.d2line		1977
.Llo94:
	diab.li		r0,0		# bDmaSupport=r0
#                 SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_02();
	.d2line		1978
.Llo95:
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_02
#                 {
#                     /* Time stamp is running */
#                     Icu_SetBitChState(Channel, ICU_CHANNEL_STATE_RUNNING);
	.d2line		1981
	mr		r3,r31		# Channel=r3 Channel=r31
	diab.li		r4,8
	bl		Icu_SetBitChState
#                     Icu_aBuffer[Channel]       = BufferPtr;
	.d2line		1982
	lis		r3,Icu_aBuffer@ha		# Channel=r3
	e_add16i		r3,r3,Icu_aBuffer@l		# Channel=r3 Channel=r3
	rlwinm		r0,r31,2,14,29		# bDmaSupport=r0 Channel=r31
	stwx		r30,r3,r0		# Channel=r3 BufferPtr=r30
#                     Icu_aBufferSize[Channel]   = BufferSize;
	.d2line		1983
	lis		r3,Icu_aBufferSize@ha		# Channel=r3
	e_add16i		r3,r3,Icu_aBufferSize@l		# Channel=r3 Channel=r3
	rlwinm		r0,r31,1,15,30		# bDmaSupport=r0 Channel=r31
	sthux		r29,r3,r0		# Channel=r3 BufferSize=r29
#                     Icu_aBufferNotify[Channel] = NotifyInterval;
	.d2line		1984
	lis		r3,Icu_aBufferNotify@ha		# Channel=r3
	e_add16i		r3,r3,Icu_aBufferNotify@l		# Channel=r3 Channel=r3
	sthx		r28,r3,r0		# Channel=r3 NotifyInterval=r28
#                     Icu_aNotifyCount[Channel]  = 0U;
	.d2line		1985
	diab.li		r4,0
	lis		r3,Icu_aNotifyCount@ha		# Channel=r3
	e_add16i		r3,r3,Icu_aNotifyCount@l		# Channel=r3 Channel=r3
	sthux		r4,r3,r0		# Channel=r3
#                     Icu_aBufferIndex[Channel]  = 0U;
	.d2line		1986
	lis		r3,Icu_aBufferIndex@ha		# Channel=r3
	e_add16i		r3,r3,Icu_aBufferIndex@l		# Channel=r3 Channel=r3
	sthux		r4,r3,r0		# Channel=r3
#                 }
#                 SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_02();
	.d2line		1988
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_02
#                 
#                 /*Clear the previous overflow status flag (if was the case) */
#                 Icu_ClearBitChState(Channel, ICU_CHANNEL_STATE_OVERFLOW);
	.d2line		1991
	mr		r3,r31		# Channel=r3 Channel=r31
	diab.li		r4,16
	bl		Icu_ClearBitChState
#                 
# #if (ICU_TIMESTAMP_USES_DMA == STD_ON)
#                 if(NoMclDmaChannel != (*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Mcl_DmaChannel)
#                 {
#                     /* initialize the members of the structure */
#                     tcd_config[Channel].u32saddr = Icu_Ipw_GetStartAddress (Channel, &Icu_pCfgPtr->IpConfig);
#                     /* @violates @ref Icu_c_REF_7 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#                     /* @violates @ref Icu_c_REF_11 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#                     /* Compiler_Warning: This warning is thrown because of a conversion between a Icu_ValyeType pointer and a uint32 */
#                     tcd_config[Channel].u32daddr = (uint32)BufferPtr;
#                     tcd_config[Channel].u32ssize = (uint32)ICU_DMA_SIZE;
#                     tcd_config[Channel].u32dsize = (uint32)ICU_DMA_SIZE;
#                     tcd_config[Channel].u32soff  = (uint32)0;
#                     tcd_config[Channel].u32doff  = (uint32)ICU_DMA_OFFSET;
#                     tcd_config[Channel].u32smod  = (uint32)0;
#                     tcd_config[Channel].u32dmod  = (uint32)0;
#                     if ((NotifyInterval >= BufferSize) || (NotifyInterval == (uint16)0))
#                     {
#                         tcd_config[Channel].u32num_bytes = ICU_DMA_NUM_BYTES;
#                         tcd_config[Channel].u32iter = BufferSize;
#                     }
#                     else if (NotifyInterval < BufferSize)
#                     {
#                         tcd_config[Channel].u32num_bytes = ICU_DMA_NUM_BYTES;
#                         tcd_config[Channel].u32iter = NotifyInterval;
#                     }
#                     else
#                     {
#                         /* does nothing*/
#                     }
#                     Mcl_DmaConfigChannel((*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Mcl_DmaChannel, &tcd_config[Channel]);
#                     Mcl_DmaStartChannel((*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Mcl_DmaChannel);
#                     
#                     Mcl_DmaConfigChannel((*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Mcl_DmaChannel,&tcd_config[Channel]);
#                     
#                     Mcl_DmaEnableHwRequest((*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Mcl_DmaChannel);
#                     Mcl_DmaEnableNotification((*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Mcl_DmaChannel, MCL_DMA_TRANSFER_COMPLETE);
#                     bDmaSupport = (boolean) TRUE;
#                 }
# #endif
#                 Icu_Ipw_StartTimestamp(Channel, &Icu_pCfgPtr->IpConfig, bDmaSupport);
	.d2line		2032
	rlwinm		r3,r31,0,16,31		# Channel=r3 Channel=r31
	lis		r4,Icu_pCfgPtr@ha
	lwz		r4,Icu_pCfgPtr@l(r4)
	se_addi		r4,8
	diab.li		r5,0
	bl		Icu_Ipw_StartTimestamp
# #if ( ICU_VALIDATE_PARAMS == STD_ON)
#             }
# #endif
# #if ( ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         }
#     Icu_EndValidateGlobalCall(valid, ICU_STARTTIMESTAMP_ID);
# #endif
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
# #endif
# }
	.d2line		2043
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo92:
	lwz		r0,36(r1)		# bDmaSupport=r0
	mtspr		lr,r0		# bDmaSupport=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L716:
	.type		Icu_StartTimestamp,@function
	.size		Icu_StartTimestamp,.-Icu_StartTimestamp
# Number of nodes = 83

# Allocations for Icu_StartTimestamp
#	?a4		Channel
#	?a5		BufferPtr
#	?a6		BufferSize
#	?a7		NotifyInterval
#	?a8		bDmaSupport
# FUNC(void, ICU_CODE) Icu_StopTimestamp(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2063,22
#$$ld
.L729:

#$$bf	Icu_StopTimestamp,interprocedural,rasave,nostackparams
	.globl		Icu_StopTimestamp
	.d2_cfa_start __cie
Icu_StopTimestamp:
.Llo97:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	.d2prologue_end
# {
# #if ( ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     VAR(Std_ReturnType,AUTOMATIC) valid = Icu_ValidateCallAndChannel(Channel,(uint8)ICU_MODE_TIMESTAMP, ICU_STOPTIMESTAMP_ID);
# 
#     if ((Std_ReturnType)E_OK == valid)
#     {
#         if ((Std_ReturnType)E_OK == Icu_ValidateChannelStartState(Channel))
#         {
# #endif
# #if (ICU_TIMESTAMP_USES_DMA == STD_ON)
#             if(NoMclDmaChannel != (*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Mcl_DmaChannel)
#             {
#                 Mcl_DmaDisableHwRequest((*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Mcl_DmaChannel);
#             }
# #endif
#             Icu_Ipw_StopTimestamp(Channel, &Icu_pCfgPtr->IpConfig);
	.d2line		2079
.Llo98:
	rlwinm		r3,r3,0,16,31		# Channel=r3 Channel=r3
.Llo99:
	lis		r4,Icu_pCfgPtr@ha
	lwz		r4,Icu_pCfgPtr@l(r4)
	se_addi		r4,8
	bl		Icu_Ipw_StopTimestamp
#             Icu_ClearBitChState(Channel, ICU_CHANNEL_STATE_RUNNING);
	.d2line		2080
	mr		r3,r31		# Channel=r3 Channel=r31
	diab.li		r4,8
	bl		Icu_ClearBitChState
# 
# #if ( ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         }
#     }
#     Icu_EndValidateCallAndChannel(valid);
# #endif
# }
	.d2line		2087
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo100:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L730:
	.type		Icu_StopTimestamp,@function
	.size		Icu_StopTimestamp,.-Icu_StopTimestamp
# Number of nodes = 16

# Allocations for Icu_StopTimestamp
#	?a4		Channel
# FUNC(Icu_IndexType, ICU_CODE) Icu_GetTimestampIndex(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2108,31
#$$ld
.L735:

#$$bf	Icu_GetTimestampIndex,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		Icu_GetTimestampIndex
	.d2_cfa_start __cie
Icu_GetTimestampIndex:
.Llo101:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# Channel=r4 Channel=r3
	.d2prologue_end
# {
#     VAR(Icu_IndexType, AUTOMATIC) timestampIndex = 0U;
	.d2line		2110
	diab.li		r3,0		# timestampIndex=r3
# 
# #if ( ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     VAR(Std_ReturnType,AUTOMATIC) valid = Icu_ValidateCallAndChannel(Channel, (uint8)ICU_MODE_TIMESTAMP, ICU_GETTIMESTAMPINDEX_ID);
# 
#     if ((Std_ReturnType)E_OK == valid)
#     {
# 
# #endif
# #if (ICU_VALIDATE_PARAMS == STD_ON)
# #if (ICU_OVERFLOW_NOTIFICATION_API == STD_OFF)
#         if ((boolean)FALSE == Icu_GetOverflow(Channel, ICU_GETTIMESTAMPINDEX_ID, ICU_E_TIMESTAMP_OVERFLOW))
#         {
# #endif
#             if (NULL_PTR == Icu_aBuffer[Channel])
#             {
#                 timestampIndex = 0U;
#             }
#             else
#             {
# #endif
# #if (ICU_TIMESTAMP_USES_DMA == STD_ON)
#                 if(NoMclDmaChannel != (*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Mcl_DmaChannel)
#                 {
#                     VAR(uint16, AUTOMATIC) u16crtIter = \
#                             Mcl_DmaGetStartIterCount((*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Mcl_DmaChannel);
# 
#                     u16crtIter = u16crtIter - \
#                             Mcl_DmaGetCrtIterCount((*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Mcl_DmaChannel);
#                     timestampIndex =  Icu_aBufferIndex[Channel] + (Icu_IndexType)u16crtIter;
#                 }
#                 else
#                 {
# #endif
#                     timestampIndex = Icu_aBufferIndex[Channel];
	.d2line		2144
.Llo102:
	lis		r3,Icu_aBufferIndex@ha		# timestampIndex=r3
.Llo105:
	e_add16i		r3,r3,Icu_aBufferIndex@l		# timestampIndex=r3 timestampIndex=r3
.Llo103:
	rlwinm		r4,r4,1,15,30		# Channel=r4 Channel=r4
	se_add		r3,r4		# timestampIndex=r3 timestampIndex=r3 Channel=r4
	lhzx		r3,r0,r3		# timestampIndex=r3
	mr		r3,r3		# timestampIndex=r3 timestampIndex=r3
# #if (ICU_TIMESTAMP_USES_DMA == STD_ON)
#                 }
# #endif
# 
# #if (ICU_VALIDATE_PARAMS == STD_ON)
#             }
# #if (ICU_OVERFLOW_NOTIFICATION_API == STD_OFF)
#         }
# #endif
# #endif
# #if ( ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     Icu_EndValidateCallAndChannel(valid);
# #endif
#     return timestampIndex;
	.d2line		2159
	rlwinm		r3,r3,0,16,31		# timestampIndex=r3 timestampIndex=r3
# }
	.d2line		2160
	.d2epilogue_begin
.Llo106:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo104:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L736:
	.type		Icu_GetTimestampIndex,@function
	.size		Icu_GetTimestampIndex,.-Icu_GetTimestampIndex
# Number of nodes = 15

# Allocations for Icu_GetTimestampIndex
#	?a4		Channel
#	?a5		timestampIndex
# FUNC(void, ICU_CODE) Icu_ResetEdgeCount(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2181,22
#$$ld
.L745:

#$$bf	Icu_ResetEdgeCount,interprocedural,rasave,nostackparams
	.globl		Icu_ResetEdgeCount
	.d2_cfa_start __cie
Icu_ResetEdgeCount:
.Llo107:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	.d2prologue_end
# {
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     VAR(Std_ReturnType,AUTOMATIC) valid = Icu_ValidateCallAndChannel \
#                 (Channel, (uint8)ICU_MODE_EDGE_COUNTER, ICU_RESETEDGECOUNT_ID);
# 
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif
#         /* Clear overflow flag */
#         Icu_ClearBitChState(Channel, ICU_CHANNEL_STATE_OVERFLOW);
	.d2line		2191
.Llo108:
	mr		r3,r31		# Channel=r3 Channel=r31
.Llo109:
	diab.li		r4,16
	bl		Icu_ClearBitChState
#         Icu_Ipw_ResetEdgeCount(Channel, &Icu_pCfgPtr->IpConfig);
	.d2line		2192
	rlwinm		r3,r31,0,16,31		# Channel=r3 Channel=r31
	lis		r4,Icu_pCfgPtr@ha
	lwz		r4,Icu_pCfgPtr@l(r4)
	se_addi		r4,8
	bl		Icu_Ipw_ResetEdgeCount
# 
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     Icu_EndValidateCallAndChannel(valid);
#     }
# #endif
# }
	.d2line		2198
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo110:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L746:
	.type		Icu_ResetEdgeCount,@function
	.size		Icu_ResetEdgeCount,.-Icu_ResetEdgeCount
# Number of nodes = 16

# Allocations for Icu_ResetEdgeCount
#	?a4		Channel
# FUNC(void, ICU_CODE) Icu_EnableEdgeCount(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2226,22
#$$ld
.L751:

#$$bf	Icu_EnableEdgeCount,interprocedural,rasave,nostackparams
	.globl		Icu_EnableEdgeCount
	.d2_cfa_start __cie
Icu_EnableEdgeCount:
.Llo111:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	.d2prologue_end
# {
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Icu_ValidateModeForSetUpFeature(ICU_ENABLEEDGECOUNT_ID))
#     {
# #endif
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         VAR(Std_ReturnType,AUTOMATIC) valid = Icu_ValidateCallAndChannel \
#             (Channel,(uint8)ICU_MODE_EDGE_COUNTER, ICU_ENABLEEDGECOUNT_ID);
# 
#         if ((Std_ReturnType)E_OK == valid)
#         {
# #endif
#             /*Clear the previous overflow status flag (if was the case) */
#             Icu_ClearBitChState(Channel, ICU_CHANNEL_STATE_OVERFLOW);
	.d2line		2240
.Llo112:
	mr		r3,r31		# Channel=r3 Channel=r31
.Llo113:
	diab.li		r4,16
	bl		Icu_ClearBitChState
#             /* Clear overflow flag */
#             Icu_SetBitChState(Channel, ICU_CHANNEL_STATE_RUNNING);
	.d2line		2242
	mr		r3,r31		# Channel=r3 Channel=r31
	diab.li		r4,8
	bl		Icu_SetBitChState
#             Icu_Ipw_EnableEdgeCount(Channel, &Icu_pCfgPtr->IpConfig);
	.d2line		2243
	rlwinm		r3,r31,0,16,31		# Channel=r3 Channel=r31
	lis		r4,Icu_pCfgPtr@ha
	lwz		r4,Icu_pCfgPtr@l(r4)
	se_addi		r4,8
	bl		Icu_Ipw_EnableEdgeCount
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         }
#     Icu_EndValidateCallAndChannel(valid);
# #endif
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
# #endif
# }
	.d2line		2251
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo114:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L752:
	.type		Icu_EnableEdgeCount,@function
	.size		Icu_EnableEdgeCount,.-Icu_EnableEdgeCount
# Number of nodes = 23

# Allocations for Icu_EnableEdgeCount
#	?a4		Channel
# FUNC(void, ICU_CODE) Icu_DisableEdgeCount(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2271,22
#$$ld
.L757:

#$$bf	Icu_DisableEdgeCount,interprocedural,rasave,nostackparams
	.globl		Icu_DisableEdgeCount
	.d2_cfa_start __cie
Icu_DisableEdgeCount:
.Llo115:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	.d2prologue_end
# {
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     VAR(Std_ReturnType,AUTOMATIC) valid = Icu_ValidateCallAndChannel \
#         (Channel,(uint8)ICU_MODE_EDGE_COUNTER, ICU_DISABLEEDGECOUNT_ID);
# 
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif
#         Icu_Ipw_DisableEdgeCount(Channel, &Icu_pCfgPtr->IpConfig);
	.d2line		2280
.Llo116:
	rlwinm		r3,r3,0,16,31		# Channel=r3 Channel=r3
.Llo117:
	lis		r4,Icu_pCfgPtr@ha
	lwz		r4,Icu_pCfgPtr@l(r4)
	se_addi		r4,8
	bl		Icu_Ipw_DisableEdgeCount
#         Icu_ClearBitChState(Channel, ICU_CHANNEL_STATE_RUNNING);
	.d2line		2281
	mr		r3,r31		# Channel=r3 Channel=r31
	diab.li		r4,8
	bl		Icu_ClearBitChState
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     Icu_EndValidateCallAndChannel(valid);
# #endif
# }
	.d2line		2286
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo118:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L758:
	.type		Icu_DisableEdgeCount,@function
	.size		Icu_DisableEdgeCount,.-Icu_DisableEdgeCount
# Number of nodes = 16

# Allocations for Icu_DisableEdgeCount
#	?a4		Channel
# FUNC(Icu_EdgeNumberType, ICU_CODE) Icu_GetEdgeNumbers(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2308,36
#$$ld
.L763:

#$$bf	Icu_GetEdgeNumbers,interprocedural,rasave,nostackparams
	.globl		Icu_GetEdgeNumbers
	.d2_cfa_start __cie
Icu_GetEdgeNumbers:
.Llo119:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# edgeNumbers=r0
.Llo123:
	stw		r0,20(r1)		# edgeNumbers=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(Icu_EdgeNumberType, AUTOMATIC) edgeNumbers = 0U;
	.d2line		2310
	diab.li		r0,0		# edgeNumbers=r0
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     VAR(Std_ReturnType,AUTOMATIC) valid = Icu_ValidateCallAndChannel \
#         (Channel,(uint8)ICU_MODE_EDGE_COUNTER, ICU_GETEDGENUMBERS_ID);
# 
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif
# #if (ICU_VALIDATE_PARAMS == STD_ON)
# #if (ICU_OVERFLOW_NOTIFICATION_API == STD_OFF)
#         if ((boolean)FALSE == Icu_GetOverflow(Channel, ICU_GETEDGENUMBERS_ID, ICU_E_EDGECOUNTING_OVERFLOW))
#         {
# #endif
# #endif
#             edgeNumbers = Icu_Ipw_GetEdgeNumbers(Channel, &Icu_pCfgPtr->IpConfig);
	.d2line		2324
.Llo124:
	rlwinm		r3,r3,0,16,31		# Channel=r3 Channel=r3
.Llo120:
	lis		r4,Icu_pCfgPtr@ha		# Channel=r4
.Llo121:
	lwz		r4,Icu_pCfgPtr@l(r4)		# Channel=r4 Channel=r4
	se_addi		r4,8		# Channel=r4 Channel=r4
.Llo122:
	bl		Icu_Ipw_GetEdgeNumbers
# #if (ICU_VALIDATE_PARAMS == STD_ON)
# #if (ICU_OVERFLOW_NOTIFICATION_API == STD_OFF)
#         }
# #endif
# #endif
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     Icu_EndValidateCallAndChannel(valid);
# #endif
#     return edgeNumbers;
	.d2line		2334
.Llo125:
	mr		r4,r3		# edgeNumbers=r4 edgeNumbers=r3
# }
	.d2line		2335
	.d2epilogue_begin
	lwz		r0,20(r1)		# edgeNumbers=r0
	mtspr		lr,r0		# edgeNumbers=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo126:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L764:
	.type		Icu_GetEdgeNumbers,@function
	.size		Icu_GetEdgeNumbers,.-Icu_GetEdgeNumbers
# Number of nodes = 16

# Allocations for Icu_GetEdgeNumbers
#	?a4		Channel
#	?a5		edgeNumbers
# FUNC(void, ICU_CODE) Icu_EnableEdgeDetection(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2357,22
#$$ld
.L773:

#$$bf	Icu_EnableEdgeDetection,interprocedural,rasave,nostackparams
	.globl		Icu_EnableEdgeDetection
	.d2_cfa_start __cie
Icu_EnableEdgeDetection:
.Llo127:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	.d2prologue_end
# {
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Icu_ValidateModeForSetUpFeature(ICU_ENABLEEDGEDETECTION_ID))
#     {
# #endif
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         VAR(Std_ReturnType,AUTOMATIC) valid = Icu_ValidateCallAndChannel \
#             (Channel,(uint8)ICU_MODE_SIGNAL_EDGE_DETECT, ICU_ENABLEEDGEDETECTION_ID);
# 
#         if ((Std_ReturnType)E_OK == valid)
#         {
# #endif
#             Icu_SetBitChState(Channel, ICU_CHANNEL_STATE_RUNNING);
	.d2line		2370
.Llo128:
	mr		r3,r31		# Channel=r3 Channel=r31
.Llo129:
	diab.li		r4,8
	bl		Icu_SetBitChState
#             Icu_Ipw_EnableEdgeDetection(Channel, &Icu_pCfgPtr->IpConfig);
	.d2line		2371
	rlwinm		r3,r31,0,16,31		# Channel=r3 Channel=r31
	lis		r4,Icu_pCfgPtr@ha
	lwz		r4,Icu_pCfgPtr@l(r4)
	se_addi		r4,8
	bl		Icu_Ipw_EnableEdgeDetection
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         }
#         Icu_EndValidateCallAndChannel(valid);
# #endif
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
# #endif
# }
	.d2line		2379
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo130:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L774:
	.type		Icu_EnableEdgeDetection,@function
	.size		Icu_EnableEdgeDetection,.-Icu_EnableEdgeDetection
# Number of nodes = 16

# Allocations for Icu_EnableEdgeDetection
#	?a4		Channel
# FUNC(void, ICU_CODE) Icu_DisableEdgeDetection(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2400,22
#$$ld
.L779:

#$$bf	Icu_DisableEdgeDetection,interprocedural,rasave,nostackparams
	.globl		Icu_DisableEdgeDetection
	.d2_cfa_start __cie
Icu_DisableEdgeDetection:
.Llo131:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	.d2prologue_end
# {
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     VAR(Std_ReturnType,AUTOMATIC) valid = Icu_ValidateCallAndChannel \
#         (Channel,(uint8)ICU_MODE_SIGNAL_EDGE_DETECT, ICU_DISABLEEDGEDETECTION_ID);
# 
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif
#         Icu_Ipw_DisableEdgeDetection(Channel, &Icu_pCfgPtr->IpConfig);
	.d2line		2409
.Llo132:
	rlwinm		r3,r3,0,16,31		# Channel=r3 Channel=r3
.Llo133:
	lis		r4,Icu_pCfgPtr@ha
	lwz		r4,Icu_pCfgPtr@l(r4)
	se_addi		r4,8
	bl		Icu_Ipw_DisableEdgeDetection
#         Icu_ClearBitChState(Channel, ICU_CHANNEL_STATE_RUNNING);
	.d2line		2410
	mr		r3,r31		# Channel=r3 Channel=r31
	diab.li		r4,8
	bl		Icu_ClearBitChState
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     Icu_EndValidateCallAndChannel(valid);
# #endif
# }
	.d2line		2415
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo134:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L780:
	.type		Icu_DisableEdgeDetection,@function
	.size		Icu_DisableEdgeDetection,.-Icu_DisableEdgeDetection
# Number of nodes = 16

# Allocations for Icu_DisableEdgeDetection
#	?a4		Channel
# FUNC(void, ICU_CODE) Icu_StartSignalMeasurement(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2439,22
#$$ld
.L785:

#$$bf	Icu_StartSignalMeasurement,interprocedural,rasave,nostackparams
	.globl		Icu_StartSignalMeasurement
	.d2_cfa_start __cie
Icu_StartSignalMeasurement:
.Llo135:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr		# bDmaSupport=r0
.Llo139:
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# bDmaSupport=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	.d2prologue_end
# {
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON)
#     if((Std_ReturnType)E_OK == Icu_ValidateModeForSetUpFeature(ICU_STARTSIGNALMEASUREMENT_ID))
#     {
# #endif
# #if (ICU_SIGNALMEASUREMENT_USES_DMA == STD_ON)
#         static VAR(Mcl_DmaTcdAttributesType, AUTOMATIC) tcd_config[ICU_MAX_CHANNEL];
# #endif
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         VAR(Std_ReturnType,AUTOMATIC) valid = Icu_ValidateCallAndChannel \
#             (Channel,(uint8)ICU_MODE_SIGNAL_MEASUREMENT, ICU_STARTSIGNALMEASUREMENT_ID);
# 
#         if ((Std_ReturnType)E_OK == valid)
#         {
# #endif
# #if (ICU_SIGNALMEASUREMENT_USES_DMA == STD_ON)
#             VAR(uint8, AUTOMATIC) u8index = 0U;
# #endif
#             VAR(boolean, AUTOMATIC) bDmaSupport =  (boolean)FALSE;
	.d2line		2458
.Llo136:
	diab.li		r0,0		# bDmaSupport=r0
# 
#             P2CONST(Icu_ChannelConfigType, AUTOMATIC, ICU_APPL_CONST) Icu_pTempPtr = \
	.d2line		2460
.Llo137:
	lis		r3,Icu_pCfgPtr@ha		# Channel=r3
	lwz		r3,Icu_pCfgPtr@l(r3)		# Channel=r3 Channel=r3
	lwz		r0,4(r3)		# bDmaSupport=r0 Channel=r3
.Llo140:
	rlwinm		r30,r31,0,16,31		# Icu_pTempPtr=r30 Channel=r31
.Llo144:
	e_mulli		r30,r30,20		# Icu_pTempPtr=r30 Icu_pTempPtr=r30
	se_add		r0,r30		# bDmaSupport=r0 bDmaSupport=r0 Icu_pTempPtr=r30
.Llo141:
	mr		r30,r0		# Icu_pTempPtr=r30 Icu_pTempPtr=r0
#                                                 &(*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel];
#             VAR(Icu_ActivationType, AUTOMATIC) Activation = \
	.d2line		2462
	lwz		r29,0(r30)		# Icu_pTempPtr=r30
	se_srwi		r29,29
.Llo145:
	mr		r29,r29		# Activation=r29 Activation=r29
#                         (Icu_ActivationType)((Icu_pTempPtr->Icu_ParamValue) >> ICU_EDGE_PARAM_SHIFT);
#             SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_08();
	.d2line		2464
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_08
#             {
#                 Icu_SetBitChState(Channel, ICU_CHANNEL_STATE_RUNNING);
	.d2line		2466
	mr		r3,r31		# Channel=r3 Channel=r31
	diab.li		r4,8
	bl		Icu_SetBitChState
#                 /*Clear the previous overflow status flag (if was the case) */
#                 Icu_ClearBitChState(Channel, ICU_CHANNEL_STATE_OVERFLOW);
	.d2line		2468
	mr		r3,r31		# Channel=r3 Channel=r31
	diab.li		r4,16
	bl		Icu_ClearBitChState
# 
# #if (ICU_SIGNALMEASUREMENT_USES_DMA == STD_ON)
#                 if(NoMclDmaChannel != (*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Mcl_DmaChannel)
#                 {
#                     /* initialize the members of the structure */
#                     tcd_config[Channel].u32saddr = Icu_Ipw_GetStartAddress (Channel, &Icu_pCfgPtr->IpConfig);
#                     /* @violates @ref Icu_c_REF_7 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#                     /* @violates @ref Icu_c_REF_11 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#                     /* Compiler_Warning: This warning is thrown because of a conversion between a Icu_ValyeType pointer and a uint32 */
#                     tcd_config[Channel].u32daddr = (uint32)&Icu_aDmaBuffer[Channel][0];
#                     tcd_config[Channel].u32ssize = (uint32)ICU_DMA_SIZE;
#                     tcd_config[Channel].u32dsize = (uint32)ICU_DMA_SIZE;
#                     tcd_config[Channel].u32soff  = (uint32)0;
#                     tcd_config[Channel].u32doff  = (uint32)ICU_DMA_OFFSET;
#                     tcd_config[Channel].u32smod  = (uint32)0;
#                     tcd_config[Channel].u32dmod  = (uint32)ICU_DMA_MAJORLOOP_COUNT;
#                     tcd_config[Channel].u32num_bytes = ICU_DMA_NUM_BYTES;
#                     tcd_config[Channel].u32iter = ICU_DMA_MAJORLOOP_FIRST_COUNT;
#                     Mcl_DmaConfigChannel((*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Mcl_DmaChannel, &tcd_config[Channel]);
#                     Mcl_DmaEnableHwRequest((*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Mcl_DmaChannel);
#                     Mcl_DmaEnableNotification((*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Mcl_DmaChannel, MCL_DMA_TRANSFER_COMPLETE);
# 
#                      /*Clear the DMA result buffer for configured DMA channel*/
#                     for(u8index = 0U; u8index < ICU_DMA_MAJORLOOP_COUNT; u8index++)
#                     {
#                         Icu_aDmaBuffer[Channel][u8index] = (uint16)0;
#                     }
#                     bDmaSupport = (boolean) TRUE;
#                 }
# #endif
# 
# #if ((ICU_GET_TIME_ELAPSED_API == STD_ON) || (ICU_GET_DUTY_CYCLE_VALUES_API == STD_ON))
#                 Icu_aActivePulseWidth[Channel] = 0U;
	.d2line		2501
	diab.li		r0,0		# bDmaSupport=r0
.Llo142:
	lis		r3,Icu_aActivePulseWidth@ha		# Channel=r3
	e_add16i		r3,r3,Icu_aActivePulseWidth@l		# Channel=r3 Channel=r3
	rlwinm		r4,r31,2,14,29		# Channel=r31
	stwx		r0,r3,r4		# Channel=r3 bDmaSupport=r0
#                 Icu_aPeriod[Channel] = 0U;
	.d2line		2502
	lis		r3,Icu_aPeriod@ha		# Channel=r3
	e_add16i		r3,r3,Icu_aPeriod@l		# Channel=r3 Channel=r3
	stwx		r0,r3,r4		# Channel=r3 bDmaSupport=r0
# #endif  /* ICU_GET_TIME_ELAPSED_API || ICU_GET_DUTY_CYCLE_VALUES_API */
#             }
#             SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_08();
	.d2line		2505
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_08
#             Icu_Ipw_StartSignalMeasurement(Channel,
	.d2line		2506
.Llo143:
	lhz		r6,8(r30)		# Icu_pTempPtr=r30
	rlwinm		r3,r31,0,16,31		# Channel=r3 Channel=r31
	lis		r4,Icu_pCfgPtr@ha
	lwz		r4,Icu_pCfgPtr@l(r4)
	se_addi		r4,8
	diab.li		r7,0
	mr		r5,r29		# Activation=r5 Activation=r29
	bl		Icu_Ipw_StartSignalMeasurement
#                                            &Icu_pCfgPtr->IpConfig,
#                                            (Icu_ActivationType)Activation,
#                                            (Icu_SignalMeasurementPropertyType)Icu_pTempPtr->Icu_Channel_Property,
#                                            (boolean)bDmaSupport
#                                           );
#             Icu_ClearBitChState(Channel, ICU_CHANNEL_STATE_IDLE);
	.d2line		2512
	mr		r3,r31		# Channel=r3 Channel=r31
	diab.li		r4,2
	bl		Icu_ClearBitChState
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         }
#     Icu_EndValidateCallAndChannel(valid);
# #endif
# #if (ICU_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
# #endif
# }
	.d2line		2520
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo138:
	lwz		r0,36(r1)		# bDmaSupport=r0
	mtspr		lr,r0		# bDmaSupport=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L786:
	.type		Icu_StartSignalMeasurement,@function
	.size		Icu_StartSignalMeasurement,.-Icu_StartSignalMeasurement
# Number of nodes = 85

# Allocations for Icu_StartSignalMeasurement
#	?a4		Channel
#	?a5		bDmaSupport
#	?a6		Icu_pTempPtr
#	?a7		Activation
# FUNC(void, ICU_CODE) Icu_StopSignalMeasurement(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2540,22
#$$ld
.L797:

#$$bf	Icu_StopSignalMeasurement,interprocedural,rasave,nostackparams
	.globl		Icu_StopSignalMeasurement
	.d2_cfa_start __cie
Icu_StopSignalMeasurement:
.Llo146:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	.d2prologue_end
# {
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     VAR(Std_ReturnType,AUTOMATIC) valid = Icu_ValidateCallAndChannel \
#         (Channel, (uint8)ICU_MODE_SIGNAL_MEASUREMENT, ICU_STOPSIGNALMEASUREMENT_ID);
# 
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif
#         Icu_Ipw_StopSignalMeasurement(Channel, &Icu_pCfgPtr->IpConfig);
	.d2line		2549
.Llo147:
	rlwinm		r3,r3,0,16,31		# Channel=r3 Channel=r3
.Llo148:
	lis		r4,Icu_pCfgPtr@ha
	lwz		r4,Icu_pCfgPtr@l(r4)
	se_addi		r4,8
	bl		Icu_Ipw_StopSignalMeasurement
#         Icu_ClearBitChState(Channel, ICU_CHANNEL_STATE_RUNNING);
	.d2line		2550
	mr		r3,r31		# Channel=r3 Channel=r31
	diab.li		r4,8
	bl		Icu_ClearBitChState
# 
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     Icu_EndValidateCallAndChannel(valid);
# #endif
# }
	.d2line		2556
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo149:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L798:
	.type		Icu_StopSignalMeasurement,@function
	.size		Icu_StopSignalMeasurement,.-Icu_StopSignalMeasurement
# Number of nodes = 16

# Allocations for Icu_StopSignalMeasurement
#	?a4		Channel
# FUNC(Icu_ValueType, ICU_CODE) Icu_GetTimeElapsed(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2589,31
#$$ld
.L803:

#$$bf	Icu_GetTimeElapsed,interprocedural,rasave,nostackparams
	.globl		Icu_GetTimeElapsed
	.d2_cfa_start __cie
Icu_GetTimeElapsed:
.Llo150:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo154:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# timeElapsed=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
	.d2prologue_end
# {
#     VAR(Icu_ValueType, AUTOMATIC) timeElapsed = (Icu_ValueType)0U;
	.d2line		2591
	diab.li		r0,0		# timeElapsed=r0
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     VAR(Std_ReturnType, AUTOMATIC) valid = Icu_ValidateCallAndChannel(Channel,\
#             (uint8)ICU_MODE_SIGNAL_MEASUREMENT, ICU_GETTIMEELAPSED_ID);
# 
#     if ((Std_ReturnType)E_OK == valid)
#     {
# 
# #endif
# #if (ICU_VALIDATE_PARAMS == STD_ON)
# #if (ICU_OVERFLOW_NOTIFICATION_API == STD_OFF)
#         if ((boolean)FALSE == Icu_GetOverflow(Channel, ICU_GETTIMEELAPSED_ID, ICU_E_MEASUREMENT_OVERFLOW))
#         {
# #endif
#             if ((Std_ReturnType)E_OK == Icu_ValidateSignalMeasurementProperty
#                     (Channel,\
#                      (uint16)ICU_LOW_TIME | (uint16)ICU_HIGH_TIME |\
#                      (uint16)ICU_PERIOD_TIME \
#                      | (uint16)ICU_ACTIVE_TIME
#                      , ICU_GETTIMEELAPSED_ID
#                     )
#                )
#             {
# #endif
#                 SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_05();
	.d2line		2615
.Llo155:
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_05
	.section	.invalid_TEXT,,c
.L809:
#                 {
#                     P2CONST(Icu_ChannelConfigType, AUTOMATIC, ICU_APPL_CONST)Icu_TempPtr = \
	.d2line		2617
.Llo151:
	lis		r3,Icu_pCfgPtr@ha		# Icu_TempPtr=r3
.Llo152:
	lwz		r3,Icu_pCfgPtr@l(r3)		# Icu_TempPtr=r3 Icu_TempPtr=r3
	lwz		r0,4(r3)		# timeElapsed=r0 Icu_TempPtr=r3
.Llo156:
	rlwinm		r3,r31,0,16,31		# Icu_TempPtr=r3 Channel=r31
	e_mulli		r3,r3,20		# Icu_TempPtr=r3 Icu_TempPtr=r3
	se_add		r0,r3		# timeElapsed=r0 timeElapsed=r0 Icu_TempPtr=r3
.Llo157:
	mr		r3,r0		# Icu_TempPtr=r3 Icu_TempPtr=r0
#                                                     &(*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel];
# 
#                     if (ICU_PERIOD_TIME == (Icu_SignalMeasurementPropertyType)(Icu_TempPtr->Icu_Channel_Property))
	.d2line		2620
.Llo165:
	lhz		r0,8(r3)		# timeElapsed=r0 Icu_TempPtr=r3
.Llo158:
	se_cmpi		r0,4		# timeElapsed=r0
	bc		0,2,.L525	# ne
#                     {
#                         timeElapsed = Icu_aPeriod[Channel];
	.d2line		2622
.Llo159:
	lis		r3,Icu_aPeriod@ha		# Icu_TempPtr=r3
.Llo166:
	e_add16i		r3,r3,Icu_aPeriod@l		# Icu_TempPtr=r3 Icu_TempPtr=r3
	rlwinm		r4,r31,2,14,29		# Channel=r31
	add		r0,r3,r4		# timeElapsed=r0 Icu_TempPtr=r3
.Llo160:
	lwzx		r30,r0,r0		# timeElapsed=r0
	mr		r30,r30		# timeElapsed=r30 timeElapsed=r30
#                         Icu_aPeriod[Channel] = (Icu_ValueType)0U;
	.d2line		2623
	diab.li		r0,0		# timeElapsed=r0
	stwx		r0,r3,r4		# Icu_TempPtr=r3 timeElapsed=r0
#                         Icu_ClearBitChState(Channel,ICU_CHANNEL_STATE_IDLE);
	.d2line		2624
	mr		r3,r31		# Channel=r3 Channel=r31
.Llo167:
	diab.li		r4,2
	bl		Icu_ClearBitChState
.Llo161:
	b		.L526
.L525:
#                     }
#                     else
#                     {
#                         timeElapsed = Icu_aActivePulseWidth[Channel];
	.d2line		2628
	lis		r3,Icu_aActivePulseWidth@ha		# Icu_TempPtr=r3
.Llo168:
	e_add16i		r3,r3,Icu_aActivePulseWidth@l		# Icu_TempPtr=r3 Icu_TempPtr=r3
	rlwinm		r4,r31,2,14,29		# Channel=r31
	add		r0,r3,r4		# timeElapsed=r0 Icu_TempPtr=r3
.Llo162:
	lwzx		r30,r0,r0		# timeElapsed=r0
	mr		r30,r30		# timeElapsed=r30 timeElapsed=r30
#                         Icu_aActivePulseWidth[Channel] = (Icu_ValueType)0U;
	.d2line		2629
	diab.li		r0,0		# timeElapsed=r0
	stwx		r0,r3,r4		# Icu_TempPtr=r3 timeElapsed=r0
#                         Icu_ClearBitChState(Channel,ICU_CHANNEL_STATE_IDLE);
	.d2line		2630
	mr		r3,r31		# Channel=r3 Channel=r31
.Llo169:
	diab.li		r4,2
	bl		Icu_ClearBitChState
.L526:
	.section	.invalid_TEXT,,c
.L810:
#                     }
#                 }
#                 SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_05();
	.d2line		2633
.Llo153:
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_05
# 
# #if (ICU_VALIDATE_PARAMS == STD_ON)
#             }
# #if (ICU_OVERFLOW_NOTIFICATION_API == STD_OFF)
#         }
# #endif
# #endif
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     Icu_EndValidateCallAndChannel(valid);
# #endif
#     return timeElapsed;
	.d2line		2645
.Llo163:
	mr		r3,r30		# timeElapsed=r3 timeElapsed=r30
# 
# }
	.d2line		2647
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo164:
	lwz		r0,36(r1)		# timeElapsed=r0
	mtspr		lr,r0		# timeElapsed=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L804:
	.type		Icu_GetTimeElapsed,@function
	.size		Icu_GetTimeElapsed,.-Icu_GetTimeElapsed
# Number of nodes = 82

# Allocations for Icu_GetTimeElapsed
#	?a4		Channel
#	?a5		timeElapsed
#	?a6		Icu_TempPtr
# FUNC(void, ICU_CODE) Icu_GetDutyCycleValues(VAR(Icu_ChannelType, AUTOMATIC) Channel,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2671,22
#$$ld
.L817:

#$$bf	Icu_GetDutyCycleValues,interprocedural,rasave,nostackparams
	.globl		Icu_GetDutyCycleValues
	.d2_cfa_start __cie
Icu_GetDutyCycleValues:
.Llo170:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Channel=r31 Channel=r3
.Llo171:
	mr		r30,r4		# DutyCycleValues=r30 DutyCycleValues=r4
	.d2prologue_end
#                                             P2VAR(Icu_DutyCycleType, AUTOMATIC, ICU_APPL_DATA) DutyCycleValues
#                                            )
# {
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     VAR(Std_ReturnType,AUTOMATIC) valid = Icu_ValidateCallAndChannel \
#         (Channel, (uint8)ICU_MODE_SIGNAL_MEASUREMENT, ICU_GETDUTYCYCLEVALUES_ID);
# 
#     if ((Std_ReturnType)E_OK == valid)
#     {
# #endif
# #if (ICU_VALIDATE_PARAMS == STD_ON)
# #if (ICU_OVERFLOW_NOTIFICATION_API == STD_OFF)
#         if ((boolean)FALSE == Icu_GetOverflow(Channel, ICU_GETDUTYCYCLEVALUES_ID, ICU_E_MEASUREMENT_OVERFLOW))
#         {
# #endif
#             if ((Std_ReturnType)E_OK == Icu_ValidateSignalMeasurementProperty
#                         (Channel,\
#                          (uint16)ICU_DUTY_CYCLE ,\
#                          ICU_GETDUTYCYCLEVALUES_ID
#                         )
#                )
#             {
# 
#                 if ((Std_ReturnType)E_OK == Icu_ValidatePtrDutyCycle(DutyCycleValues))
#                 {
# #endif
#                     SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_06();
	.d2line		2698
.Llo172:
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_06
#                     {
#                         if ((Icu_ValueType)0U != Icu_aPeriod[Channel])
	.d2line		2700
.Llo176:
	lis		r3,Icu_aPeriod@ha
	e_add16i		r3,r3,Icu_aPeriod@l
	rlwinm		r0,r31,2,14,29		# Channel=r31
	se_add		r0,r3
	lwzx		r0,r0,r0
	se_cmpi		r0,0
	bc		1,2,.L530	# eq
#                         {
#                             DutyCycleValues->ActiveTime = (Icu_ValueType)\
	.d2line		2702
.Llo177:
	lis		r3,Icu_aActivePulseWidth@ha
	e_add16i		r3,r3,Icu_aActivePulseWidth@l
	rlwinm		r0,r31,2,14,29		# Channel=r31
	add		r31,r3,r0		# Channel=r31
.Llo173:
	lwzx		r4,r0,r31
	stw		r4,0(r30)		# DutyCycleValues=r30
#                                                             Icu_aActivePulseWidth[Channel];
#                             DutyCycleValues->PeriodTime = (Icu_ValueType)Icu_aPeriod[Channel];
	.d2line		2704
	lis		r4,Icu_aPeriod@ha
	e_add16i		r4,r4,Icu_aPeriod@l
	add		r31,r4,r0		# Channel=r31
	lwzx		r5,r0,r31
	stw		r5,4(r30)		# DutyCycleValues=r30
#                             Icu_aActivePulseWidth[Channel] = (Icu_ValueType)0U;
	.d2line		2705
	diab.li		r5,0
	stwx		r5,r3,r0
#                             Icu_aPeriod[Channel]           = (Icu_ValueType)0U;
	.d2line		2706
	stwx		r5,r4,r0
	b		.L531
.L530:
#                         }
#                         else
#                         {
#                             DutyCycleValues->ActiveTime = (Icu_ValueType)0U;
	.d2line		2710
.Llo174:
	diab.li		r0,0
	stw		r0,0(r30)		# DutyCycleValues=r30
#                             DutyCycleValues->PeriodTime = (Icu_ValueType)0U;
	.d2line		2711
	stw		r0,4(r30)		# DutyCycleValues=r30
.L531:
#                         }
#                     }
#                     SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_06();
	.d2line		2714
.Llo175:
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_06
# 
# #if (ICU_VALIDATE_PARAMS == STD_ON)
#                 }
#             }
# #if (ICU_OVERFLOW_NOTIFICATION_API == STD_OFF)
#         }
# #endif
# #endif
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     }
#     Icu_EndValidateCallAndChannel(valid);
# #endif
# }
	.d2line		2727
	.d2epilogue_begin
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
.L818:
	.type		Icu_GetDutyCycleValues,@function
	.size		Icu_GetDutyCycleValues,.-Icu_GetDutyCycleValues
# Number of nodes = 69

# Allocations for Icu_GetDutyCycleValues
#	?a4		Channel
#	?a5		DutyCycleValues
# FUNC(void, ICU_CODE) Icu_GetVersionInfo \
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2751,22
#$$ld
.L827:

#$$bf	Icu_GetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Icu_GetVersionInfo
	.d2_cfa_start __cie
Icu_GetVersionInfo:
.Llo178:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# versioninfo=r4 versioninfo=r3
	.d2prologue_end
#                                    (P2VAR(Std_VersionInfoType, AUTOMATIC, ICU_APPL_DATA)versioninfo)
# {
# #if (ICU_VALIDATE_PARAMS == STD_ON)
#     if ((Std_ReturnType)E_OK == Icu_ValidateVersionInfoCall(versioninfo))
#     {
# #endif
#         (versioninfo)->vendorID         = (uint16)ICU_VENDOR_ID;
	.d2line		2758
.Llo179:
	diab.li		r3,43
.Llo180:
	sth		r3,0(r4)		# versioninfo=r4
#         (versioninfo)->moduleID         = (uint8)ICU_MODULE_ID;
	.d2line		2759
	diab.li		r3,122
	sth		r3,2(r4)		# versioninfo=r4
#         (versioninfo)->sw_major_version = (uint8)ICU_SW_MAJOR_VERSION;
	.d2line		2760
	diab.li		r3,1
	stb		r3,4(r4)		# versioninfo=r4
#         (versioninfo)->sw_minor_version = (uint8)ICU_SW_MINOR_VERSION;
	.d2line		2761
	diab.li		r3,0
	stb		r3,5(r4)		# versioninfo=r4
#         (versioninfo)->sw_patch_version = (uint8)ICU_SW_PATCH_VERSION;
	.d2line		2762
	diab.li		r3,2
	stb		r3,6(r4)		# versioninfo=r4
# #if (ICU_VALIDATE_PARAMS == STD_ON)
#     }
# #endif
# }
	.d2line		2766
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo181:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L828:
	.type		Icu_GetVersionInfo,@function
	.size		Icu_GetVersionInfo,.-Icu_GetVersionInfo
# Number of nodes = 28

# Allocations for Icu_GetVersionInfo
#	?a4		versioninfo
# FUNC(void, ICU_CODE) Icu_ReportWakeupAndOverflow(VAR(Icu_ChannelType, AUTOMATIC) hwChannel,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2862,22
#$$ld
.L836:

#$$bf	Icu_ReportWakeupAndOverflow,interprocedural,rasave,nostackparams
	.globl		Icu_ReportWakeupAndOverflow
	.d2_cfa_start __cie
Icu_ReportWakeupAndOverflow:
.Llo182:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# hwChannel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# hwChannel=r0 hwChannel=r3
	mr		r31,r4		# bOverflow=r31 bOverflow=r4
	.d2prologue_end
#                                                  VAR(boolean, AUTOMATIC) bOverflow
#                                                 )
# {
#     VAR(Icu_ChannelType, AUTOMATIC) Channel = (*(Icu_pCfgPtr->Icu_HwMap))[hwChannel];
	.d2line		2866
	lis		r3,Icu_pCfgPtr@ha
.Llo183:
	lwz		r3,Icu_pCfgPtr@l(r3)
	lwz		r3,20(r3)
.Llo184:
	rlwinm		r0,r0,1,15,30		# hwChannel=r0 hwChannel=r0
.Llo185:
	lhzx		r30,r3,r0
.Llo192:
	mr		r30,r30		# Channel=r30 Channel=r30
# #if (ICU_REPORT_WAKEUP_SOURCE == STD_ON)
#     VAR(boolean, AUTOMATIC) bChWakeupCapable;
#     VAR(boolean, AUTOMATIC) bCrtModeSleep;
#     
#     bChWakeupCapable = (ICU_CHANNEL_STATE_WKUP == Icu_GetBitChState (Channel, ICU_CHANNEL_STATE_WKUP)) ? \
	.d2line		2871
	mr		r3,r30		# Channel=r3 Channel=r30
	diab.li		r4,1
.Llo190:
	bl		Icu_GetBitChState
.Llo186:
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	diab.li		r3,1
	isel		r3,r3,r0,2		# hwChannel=r0
.L538:
.Llo187:
	diab.li		r0,0		# hwChannel=r0
.Llo188:
	isel		r0,r3,r0,2		# hwChannel=r0 hwChannel=r0
.L539:
.Llo189:
	mr		r0,r0		# bChWakeupCapable=r0 bChWakeupCapable=r0
#                        (boolean)TRUE : (boolean)FALSE ;
#     bCrtModeSleep    = (ICU_MODE_SLEEP == Icu_CurrentMode)? (boolean)TRUE : (boolean)FALSE ;
	.d2line		2873
	lis		r3,Icu_CurrentMode@ha
	lwz		r3,Icu_CurrentMode@l(r3)
	se_cmpi		r3,1
	diab.li		r3,1
	isel		r3,r3,r4,2
.L540:
	diab.li		r4,0
	isel		r4,r3,r4,2
.L541:
.Llo194:
	mr		r3,r4		# bCrtModeSleep=r3 bCrtModeSleep=r4
# 
#     if (((boolean)TRUE == bChWakeupCapable) && ((boolean)TRUE == bCrtModeSleep))
	.d2line		2875
.Llo195:
	rlwinm		r0,r0,0,24,31		# bChWakeupCapable=r0 bChWakeupCapable=r0
	se_cmpi		r0,1		# bChWakeupCapable=r0
	bc		0,2,.L536	# ne
.Llo196:
	rlwinm		r4,r4,0,24,31
.Llo199:
	se_cmpi		r4,1
	bc		0,2,.L536	# ne
#     {
#         Icu_SetBitChState(Channel, ICU_CHANNEL_IS_WAKEUP_SOURCE);
	.d2line		2877
	mr		r3,r30		# Channel=r3 Channel=r30
	diab.li		r4,128
	bl		Icu_SetBitChState
#         EcuM_CheckWakeup((EcuM_WakeupSourceType)\
	.d2line		2878
	lis		r3,Icu_pCfgPtr@ha		# Channel=r3
	lwz		r3,Icu_pCfgPtr@l(r3)		# Channel=r3 Channel=r3
	lwz		r0,4(r3)		# bChWakeupCapable=r0 Channel=r3
.Llo197:
	rlwinm		r3,r30,0,16,31		# Channel=r3 Channel=r30
	e_mulli		r3,r3,20		# Channel=r3 Channel=r3
	se_add		r3,r0		# Channel=r3 Channel=r3 bChWakeupCapable=r0
	lwz		r3,16(r3)		# Channel=r3 Channel=r3
	bl		EcuM_CheckWakeup
.L536:
#                          (*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Icu_Channel_WakeupValue
#                         );
#     }
# #endif /* ICU_REPORT_WAKEUP_SOURCE == STD_ON */
#     if ((boolean)TRUE == bOverflow)
	.d2line		2883
.Llo198:
	rlwinm		r31,r31,0,24,31		# bOverflow=r31 bOverflow=r31
	se_cmpi		r31,1		# bOverflow=r31
	bc		0,2,.L535	# ne
#     {
#         Icu_SetBitChState(Channel, ICU_CHANNEL_STATE_OVERFLOW);
	.d2line		2885
.Llo191:
	mr		r3,r30		# Channel=r3 Channel=r30
	diab.li		r4,16
	bl		Icu_SetBitChState
.L535:
# #if defined(ICU_OVERFLOW_NOTIFICATION_API) && (ICU_OVERFLOW_NOTIFICATION_API == STD_ON)
#         if (NULL_PTR != (*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Icu_Channel_OverflowNotification)
#         {
#             (*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Icu_Channel_OverflowNotification();
#         }
# #endif  /* ICU_OVERFLOW_NOTIFICATION_API */
#     }
# }
	.d2line		2893
	.d2epilogue_begin
.Llo193:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# bChWakeupCapable=r0
	mtspr		lr,r0		# bChWakeupCapable=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L837:
	.type		Icu_ReportWakeupAndOverflow,@function
	.size		Icu_ReportWakeupAndOverflow,.-Icu_ReportWakeupAndOverflow
# Number of nodes = 86

# Allocations for Icu_ReportWakeupAndOverflow
#	?a4		hwChannel
#	?a5		bOverflow
#	?a6		$$120
#	?a7		$$119
#	?a8		Channel
#	?a9		bChWakeupCapable
#	?a10		bCrtModeSleep
# FUNC(void, ICU_CODE) Icu_ReportEvents(VAR(Icu_ChannelType, AUTOMATIC) hwChannel,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2908,22
#$$ld
.L849:

#$$bf	Icu_ReportEvents,interprocedural,rasave,nostackparams
	.globl		Icu_ReportEvents
	.d2_cfa_start __cie
Icu_ReportEvents:
.Llo200:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# hwChannel=r31 hwChannel=r3
.Llo201:
	mr		r29,r4		# bOverflow=r29 bOverflow=r4
	.d2prologue_end
#                                       VAR(boolean, AUTOMATIC) bOverflow
#                                      )
# {
#     VAR(Icu_ChannelType, AUTOMATIC) Channel = (*(Icu_pCfgPtr->Icu_HwMap))[hwChannel];
	.d2line		2912
.Llo202:
	lis		r3,Icu_pCfgPtr@ha
.Llo204:
	lwz		r3,Icu_pCfgPtr@l(r3)
	lwz		r3,20(r3)
	rlwinm		r0,r31,1,15,30		# hwChannel=r31
	lhzx		r30,r3,r0
.Llo205:
	mr		r30,r30		# Channel=r30 Channel=r30
#     
#     Icu_SetBitChState(Channel, ICU_CHANNEL_STATE_IDLE);
	.d2line		2914
	mr		r3,r30		# Channel=r3 Channel=r30
	diab.li		r4,2
	bl		Icu_SetBitChState
#     Icu_ReportWakeupAndOverflow(hwChannel, bOverflow);
	.d2line		2915
	mr		r3,r31		# hwChannel=r3 hwChannel=r31
	mr		r4,r29		# bOverflow=r4 bOverflow=r29
	bl		Icu_ReportWakeupAndOverflow
#     Icu_CallNotification(Channel);
	.d2line		2916
	mr		r3,r30		# Channel=r3 Channel=r30
	bl		Icu_CallNotification
# }
	.d2line		2917
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo203:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L850:
	.type		Icu_ReportEvents,@function
	.size		Icu_ReportEvents,.-Icu_ReportEvents
# Number of nodes = 32

# Allocations for Icu_ReportEvents
#	?a4		hwChannel
#	?a5		bOverflow
#	?a6		Channel
# FUNC(void,ICU_CODE) Icu_Timestamp(VAR(Icu_ChannelType, AUTOMATIC)hwChannel,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3077,21
#$$ld
.L858:

#$$bf	Icu_Timestamp,interprocedural,rasave,nostackparams
	.globl		Icu_Timestamp
	.d2_cfa_start __cie
Icu_Timestamp:
.Llo206:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	25,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# hwChannel=r3 hwChannel=r3
	mr		r31,r4		# u8CapturedWords=r31 u8CapturedWords=r4
	mr		r30,r5		# pBufferPtr=r30 pBufferPtr=r5
	mr		r4,r6		# bOverflow=r4 bOverflow=r6
	.d2prologue_end
#                                   VAR(uint8, AUTOMATIC) u8CapturedWords,
#                                   P2CONST(Icu_ValueType, AUTOMATIC, ICU_APPL_CONST)pBufferPtr,
#                                   VAR(boolean, AUTOMATIC) bOverflow
#                                  )
# {
#     VAR(Icu_ChannelType, AUTOMATIC) Channel = (*(Icu_pCfgPtr->Icu_HwMap))[hwChannel];
	.d2line		3083
.Llo222:
	lis		r5,Icu_pCfgPtr@ha
.Llo225:
	lwz		r5,Icu_pCfgPtr@l(r5)
	lwz		r5,20(r5)
	rlwinm		r0,r3,1,15,30		# hwChannel=r3
	lhzx		r29,r5,r0
.Llo227:
	mr		r29,r29		# Channel=r29 Channel=r29
#     VAR(uint8, AUTOMATIC) u8Word;
# 
#     Icu_ReportWakeupAndOverflow(hwChannel, bOverflow);
	.d2line		3086
	mr		r3,r3		# hwChannel=r3 hwChannel=r3
.Llo207:
	mr		r4,r4		# bOverflow=r4 bOverflow=r4
	bl		Icu_ReportWakeupAndOverflow
#     SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_04();
	.d2line		3087
.Llo226:
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_04
	.section	.invalid_TEXT,,c
.L871:
#     {
#         CONST(Icu_IndexType, ICU_CONST) chBufferSize   = Icu_aBufferSize[Channel] ;
#         CONST(Icu_IndexType, ICU_CONST) chBufferNotify = Icu_aBufferNotify[Channel] ;
# 
#         VAR(boolean, AUTOMATIC) bReturnValue = (boolean)TRUE;
	.d2line		3092
.Llo223:
	diab.li		r25,1		# bReturnValue=r25
	.d2line		3089
.Llo230:
	lis		r3,Icu_aBufferSize@ha		# hwChannel=r3
.Llo208:
	e_add16i		r3,r3,Icu_aBufferSize@l		# hwChannel=r3 hwChannel=r3
	rlwinm		r0,r29,1,15,30		# Channel=r29
	lhzux		r27,r3,r0		# hwChannel=r3
.Llo228:
	mr		r27,r27		# chBufferSize=r27 chBufferSize=r27
	.d2line		3090
	lis		r3,Icu_aBufferNotify@ha		# hwChannel=r3
	e_add16i		r3,r3,Icu_aBufferNotify@l		# hwChannel=r3 hwChannel=r3
	lhzx		r26,r3,r0		# hwChannel=r3
.Llo229:
	mr		r26,r26		# chBufferNotify=r26 chBufferNotify=r26
# 
#         for (u8Word = 0U; u8Word < u8CapturedWords; u8Word++)
	.d2line		3094
	diab.li		r28,0		# u8Word=r28
.L550:
.Llo209:
	rlwinm		r3,r28,0,24,31		# hwChannel=r3 u8Word=r28
.Llo210:
	rlwinm		r4,r31,0,24,31		# u8CapturedWords=r31
	se_cmp		r3,r4		# hwChannel=r3
	bc		0,0,.L559	# ge
#         {
#             /*
#             * @violates @ref Icu_c_REF_4 Array indexing shall be the only allowed form of
#             *                 pointer arithmetic.
#             */
#             Icu_aBuffer[Channel][Icu_aBufferIndex[Channel]] = *(pBufferPtr + u8Word);
	.d2line		3100
.Llo211:
	rlwinm		r3,r28,2,22,29		# hwChannel=r3 u8Word=r28
.Llo212:
	lwzux		r5,r3,r30		# hwChannel=r3
	lis		r3,Icu_aBuffer@ha		# hwChannel=r3
	e_add16i		r3,r3,Icu_aBuffer@l		# hwChannel=r3 hwChannel=r3
	rlwinm		r0,r29,2,14,29		# Channel=r29
	lwzx		r4,r3,r0		# hwChannel=r3
	lis		r3,Icu_aBufferIndex@ha		# hwChannel=r3
	e_add16i		r3,r3,Icu_aBufferIndex@l		# hwChannel=r3 hwChannel=r3
	rlwinm		r0,r29,1,15,30		# Channel=r29
	se_add		r3,r0		# hwChannel=r3 hwChannel=r3
	lhzx		r0,r0,r3
	rlwinm		r0,r0,2,14,29
	stwx		r5,r4,r0
#             Icu_aBufferIndex[Channel]++;
	.d2line		3101
	lhz		r4,0(r3)		# hwChannel=r3
	se_addi		r4,1
	sth		r4,0(r3)		# hwChannel=r3
# 
#             if (Icu_aBufferIndex[Channel] >= chBufferSize)
	.d2line		3103
	lhzx		r0,r0,r3
	rlwinm		r3,r27,0,16,31		# hwChannel=r3 chBufferSize=r27
	se_cmp		r0,r3		# hwChannel=r3
	bc		1,0,.L553	# lt
#             {
#                 /* If circular buffer, loop; if linear buffer, terminate. */
#                 if ((uint8) ICU_CIRCULAR_BUFFER ==  \
	.d2line		3106
.Llo213:
	lis		r3,Icu_pCfgPtr@ha		# hwChannel=r3
.Llo214:
	lwz		r3,Icu_pCfgPtr@l(r3)		# hwChannel=r3 hwChannel=r3
	lwz		r3,4(r3)		# hwChannel=r3 hwChannel=r3
	rlwinm		r0,r29,0,16,31		# Channel=r29
	e_mulli		r0,r0,20
	se_add		r3,r0		# hwChannel=r3 hwChannel=r3
	lhz		r0,8(r3)		# hwChannel=r3
	se_cmpi		r0,1
	bc		0,2,.L554	# ne
#                     (*(Icu_pCfgPtr->Icu_ChannelConfigPtr))[Channel].Icu_Channel_Property
#                    )
#                 {
#                     Icu_aBufferIndex[Channel] = 0U;
	.d2line		3110
.Llo215:
	diab.li		r0,0
	lis		r3,Icu_aBufferIndex@ha		# hwChannel=r3
.Llo216:
	e_add16i		r3,r3,Icu_aBufferIndex@l		# hwChannel=r3 hwChannel=r3
	rlwinm		r4,r29,1,15,30		# Channel=r29
	sthux		r0,r3,r4		# hwChannel=r3
	b		.L553
.L554:
#                 }
#                 else
#                 {
#                     /* Linear buffer is full, stop the channel */
#                     Icu_Ipw_StopTimestamp(Channel, &Icu_pCfgPtr->IpConfig);
	.d2line		3115
.Llo217:
	rlwinm		r3,r29,0,16,31		# hwChannel=r3 Channel=r29
	lis		r4,Icu_pCfgPtr@ha
	lwz		r4,Icu_pCfgPtr@l(r4)
	se_addi		r4,8
	bl		Icu_Ipw_StopTimestamp
#                     Icu_ClearBitChState(Channel, ICU_CHANNEL_STATE_RUNNING);
	.d2line		3116
	mr		r3,r29		# Channel=r3 Channel=r29
	diab.li		r4,8
	bl		Icu_ClearBitChState
# 
#                     /* Don't process the rest of the captured time stamps */
#                     bReturnValue = (boolean)FALSE;
	.d2line		3119
	diab.li		r25,0		# bReturnValue=r25
.L553:
#                 }
#             }
# 
#             if (0U != chBufferNotify)
	.d2line		3123
	e_cmphl16i	r26,0		# chBufferNotify=r26
	bc		1,2,.L556	# eq
#             {
#                 Icu_aNotifyCount[Channel]++;
	.d2line		3125
	lis		r4,Icu_aNotifyCount@ha
	e_add16i		r4,r4,Icu_aNotifyCount@l
	rlwinm		r0,r29,1,15,30		# Channel=r29
	lhzux		r3,r4,r0		# hwChannel=r3
.Llo218:
	se_addi		r3,1		# hwChannel=r3 hwChannel=r3
	sth		r3,0(r4)		# hwChannel=r3
#                 if (Icu_aNotifyCount[Channel] >= chBufferNotify)
	.d2line		3126
	lhzx		r3,r0,r4		# hwChannel=r3
	rlwinm		r0,r26,0,16,31		# chBufferNotify=r26
	se_cmp		r3,r0		# hwChannel=r3
	bc		1,0,.L556	# lt
#                 {
#                     Icu_aNotifyCount[Channel] = 0U;
	.d2line		3128
.Llo219:
	diab.li		r4,0
	lis		r3,Icu_aNotifyCount@ha		# hwChannel=r3
.Llo220:
	e_add16i		r3,r3,Icu_aNotifyCount@l		# hwChannel=r3 hwChannel=r3
	rlwinm		r0,r29,1,15,30		# Channel=r29
	sthux		r4,r3,r0		# hwChannel=r3
#                     /* Call User Notification Function and/or Wakeup Function */
#                     Icu_CallNotification(Channel);
	.d2line		3130
	mr		r3,r29		# Channel=r3 Channel=r29
.Llo221:
	bl		Icu_CallNotification
.L556:
#                 }
#             }
# 
#             /* Don't process the rest of the captured time stamps */
#             if ((boolean)FALSE == bReturnValue)
	.d2line		3135
	rlwinm		r0,r25,0,24,31		# bReturnValue=r25
	se_cmpi		r0,0
	bc		1,2,.L559	# eq
#             {
#                 break;
#             }
#         }
	.d2line		3139
	diab.addi		r3,r28,1		# hwChannel=r3 u8Word=r28
	se_addi		r28,1		# u8Word=r28 u8Word=r28
	b		.L550
.L559:
	.section	.invalid_TEXT,,c
.L872:
#     }
#     SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_04();
	.d2line		3141
.Llo224:
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_04
# }
	.d2line		3142
	.d2epilogue_begin
	lmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L859:
	.type		Icu_Timestamp,@function
	.size		Icu_Timestamp,.-Icu_Timestamp
# Number of nodes = 197

# Allocations for Icu_Timestamp
#	?a4		hwChannel
#	?a5		u8CapturedWords
#	?a6		pBufferPtr
#	?a7		bOverflow
#	?a8		$$122
#	?a9		$$121
#	?a10		Channel
#	?a11		u8Word
#	?a12		chBufferSize
#	?a13		chBufferNotify
#	?a14		bReturnValue
# FUNC(void,ICU_CODE) Icu_SignalMeasurement(VAR(Icu_ChannelType, AUTOMATIC)hwChannel,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3160,21
#$$ld
.L884:

#$$bf	Icu_SignalMeasurement,interprocedural,rasave,nostackparams
	.globl		Icu_SignalMeasurement
	.d2_cfa_start __cie
Icu_SignalMeasurement:
.Llo231:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# hwChannel=r31 hwChannel=r3
.Llo232:
	mr		r30,r4		# activePulseWidth=r30 activePulseWidth=r4
.Llo233:
	mr		r29,r5		# period=r29 period=r5
.Llo235:
	mr		r28,r6		# bOverflow=r28 bOverflow=r6
	.d2prologue_end
#                                           VAR(Icu_ValueType, AUTOMATIC)activePulseWidth,
#                                           VAR(Icu_ValueType, AUTOMATIC)period,
#                                           VAR(boolean, AUTOMATIC) bOverflow
#                                          )
# {
#     VAR(Icu_ChannelType, AUTOMATIC) Channel = (*(Icu_pCfgPtr->Icu_HwMap))[hwChannel];
	.d2line		3166
.Llo236:
	lis		r3,Icu_pCfgPtr@ha		# hwChannel=r3
.Llo237:
	lwz		r3,Icu_pCfgPtr@l(r3)		# hwChannel=r3 hwChannel=r3
	lwz		r3,20(r3)		# hwChannel=r3 hwChannel=r3
	rlwinm		r0,r31,1,15,30		# hwChannel=r31
	lhzx		r27,r3,r0		# msChannel=r27 hwChannel=r3
.Llo238:
	mr		r27,r27		# Channel=r27 Channel=r27
#     CONST(Icu_ChannelType, ICU_CONST) msChannel = Channel;
	.d2line		3167
.Llo239:
	mr		r27,r27		# msChannel=r27 msChannel=r27
# 
#     SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_07();
	.d2line		3169
.Llo240:
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_07
#     {
#         Icu_aActivePulseWidth[msChannel] = activePulseWidth;
	.d2line		3171
	lis		r3,Icu_aActivePulseWidth@ha		# hwChannel=r3
	e_add16i		r3,r3,Icu_aActivePulseWidth@l		# hwChannel=r3 hwChannel=r3
	rlwinm		r0,r27,2,14,29		# msChannel=r27
	se_add		r3,r0		# hwChannel=r3 hwChannel=r3
	stwx		r30,r0,r3		# activePulseWidth=r30
#         Icu_aPeriod[msChannel] = period;
	.d2line		3172
	lis		r3,Icu_aPeriod@ha		# hwChannel=r3
	e_add16i		r3,r3,Icu_aPeriod@l		# hwChannel=r3 hwChannel=r3
	se_add		r0,r3		# hwChannel=r3
	stwx		r29,r0,r0		# period=r29
#         Icu_SetBitChState(Channel, ICU_CHANNEL_STATE_IDLE);
	.d2line		3173
	mr		r3,r27		# Channel=r3 Channel=r27
	diab.li		r4,2
	bl		Icu_SetBitChState
#         Icu_ReportWakeupAndOverflow(hwChannel, bOverflow);
	.d2line		3174
	mr		r3,r31		# hwChannel=r3 hwChannel=r31
	mr		r4,r28		# bOverflow=r4 bOverflow=r28
	bl		Icu_ReportWakeupAndOverflow
#     }
#     SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_07();
	.d2line		3176
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_07
# }
	.d2line		3177
	.d2epilogue_begin
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo234:
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L885:
	.type		Icu_SignalMeasurement,@function
	.size		Icu_SignalMeasurement,.-Icu_SignalMeasurement
# Number of nodes = 54

# Allocations for Icu_SignalMeasurement
#	?a4		hwChannel
#	?a5		activePulseWidth
#	?a6		period
#	?a7		bOverflow
#	?a8		Channel
#	?a9		msChannel
# FUNC (void, ICU_CODE) Icu_GetPulseWidth(VAR(Icu_ChannelType, AUTOMATIC) Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3226,23
#$$ld
.L898:

#$$bf	Icu_GetPulseWidth,interprocedural,rasave,nostackparams
	.globl		Icu_GetPulseWidth
	.d2_cfa_start __cie
Icu_GetPulseWidth:
.Llo241:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#     VAR(Std_ReturnType,AUTOMATIC) validchannel1 = Icu_ValidateCallAndChannel \
#                 (Channel,(uint8)ICU_MODE_SIGNAL_MEASUREMENT, ICU_GET_PULSE_WIDTH_ID);
# 
#     if ((Std_ReturnType)E_OK == validchannel1)
#     {
#         if((Std_ReturnType)E_OK == Icu_ValidateSignalMeasureWithoutInterrupt(Channel, ICU_GET_PULSE_WIDTH_ID))
#         {
# #endif
#             Icu_Ipw_GetPulseWidth(Channel, &Icu_pCfgPtr->IpConfig);
	.d2line		3237
	rlwinm		r3,r3,0,16,31		# Channel=r3 Channel=r3
.Llo242:
	lis		r4,Icu_pCfgPtr@ha
	lwz		r4,Icu_pCfgPtr@l(r4)
	se_addi		r4,8
	bl		Icu_Ipw_GetPulseWidth
# #if (ICU_VALIDATE_CALL_AND_CHANNEL == STD_ON)
#         }
#     }
# #endif
# }
	.d2line		3242
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
.L899:
	.type		Icu_GetPulseWidth,@function
	.size		Icu_GetPulseWidth,.-Icu_GetPulseWidth
# Number of nodes = 9

# Allocations for Icu_GetPulseWidth
#	?a4		Channel

# Allocations for module
	.section	.invalid_DATA,,d
	.0byte		.L902
	.section	.invalid_DATA,,d
	.type		Icu_pCfgPtr,@object
	.size		Icu_pCfgPtr,4
	.align		2
	.globl		Icu_pCfgPtr
Icu_pCfgPtr:
	.long		0
	.section	.invalid_BSS,,b
	.type		Icu_CurrentMode,@object
	.size		Icu_CurrentMode,4
	.align		2
	.globl		Icu_CurrentMode
Icu_CurrentMode:
	.space		4
	.section	.invalid_BSS,,b
	.type		Icu_aChannelState,@object
	.size		Icu_aChannelState,1
	.align		2
	.globl		Icu_aChannelState
Icu_aChannelState:
	.space		1
	.section	.invalid_BSS,,b
	.type		Icu_aBuffer,@object
	.size		Icu_aBuffer,4
	.align		2
	.globl		Icu_aBuffer
Icu_aBuffer:
	.space		4
	.section	.invalid_BSS,,b
	.type		Icu_aBufferSize,@object
	.size		Icu_aBufferSize,2
	.align		1
	.globl		Icu_aBufferSize
Icu_aBufferSize:
	.space		2
	.section	.invalid_BSS,,b
	.type		Icu_aBufferNotify,@object
	.size		Icu_aBufferNotify,2
	.align		1
	.globl		Icu_aBufferNotify
Icu_aBufferNotify:
	.space		2
	.section	.invalid_BSS,,b
	.type		Icu_aNotifyCount,@object
	.size		Icu_aNotifyCount,2
	.align		1
	.globl		Icu_aNotifyCount
Icu_aNotifyCount:
	.space		2
	.section	.invalid_BSS,,b
	.type		Icu_aBufferIndex,@object
	.size		Icu_aBufferIndex,2
	.align		1
	.globl		Icu_aBufferIndex
Icu_aBufferIndex:
	.space		2
	.section	.invalid_BSS,,b
	.type		Icu_aPeriod,@object
	.size		Icu_aPeriod,4
	.align		2
Icu_aPeriod:
	.space		4
	.section	.invalid_BSS,,b
	.type		Icu_aActivePulseWidth,@object
	.size		Icu_aActivePulseWidth,4
	.align		2
Icu_aActivePulseWidth:
	.space		4
	.section	.text_vle
#$$ld
.L5:
.L1004:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L1002:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Icu_Types.h"
.L953:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Icu_eMios_Types.h"
.L932:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Icu.h"
.L903:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L571:
.L579:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu.c"
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	16
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.uleb128	53
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	33
	.byte		0x0
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu.c"
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
.L568:
	.4byte		.L569-.L567
.L567:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L573-.L568
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L570
	.4byte		.L571
	.4byte		.L574
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L580:
	.sleb128	2
	.4byte		.L576-.L568
	.byte		"Icu_SetBitChState"
	.byte		0
	.4byte		.L579
	.uleb128	638
	.uleb128	35
	.byte		0x1
	.4byte		.L577
	.4byte		.L578
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L579
	.uleb128	638
	.uleb128	35
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L584
	.sleb128	3
	.4byte		.L579
	.uleb128	638
	.uleb128	35
	.byte		"mask"
	.byte		0
	.4byte		.L585
	.4byte		.L588
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L576:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L593:
	.sleb128	4
	.4byte		.L590-.L568
	.byte		"Icu_GetBitChState"
	.byte		0
	.4byte		.L579
	.uleb128	663
	.uleb128	51
	.4byte		.L585
	.byte		0x1
	.4byte		.L591
	.4byte		.L592
	.sleb128	3
	.4byte		.L579
	.uleb128	663
	.uleb128	51
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L594
	.sleb128	3
	.4byte		.L579
	.uleb128	663
	.uleb128	51
	.byte		"mask"
	.byte		0
	.4byte		.L585
	.4byte		.L595
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L596:
	.sleb128	5
	.4byte		.L579
	.uleb128	667
	.uleb128	42
	.byte		"value"
	.byte		0
	.4byte		.L585
	.4byte		.L597
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L590:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L602:
	.sleb128	2
	.4byte		.L599-.L568
	.byte		"Icu_ClearBitChState"
	.byte		0
	.4byte		.L579
	.uleb128	685
	.uleb128	35
	.byte		0x1
	.4byte		.L600
	.4byte		.L601
	.sleb128	3
	.4byte		.L579
	.uleb128	685
	.uleb128	35
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L603
	.sleb128	3
	.4byte		.L579
	.uleb128	685
	.uleb128	35
	.byte		"mask"
	.byte		0
	.4byte		.L585
	.4byte		.L604
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L599:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L609:
	.sleb128	2
	.4byte		.L606-.L568
	.byte		"Icu_CallNotification"
	.byte		0
	.4byte		.L579
	.uleb128	1357
	.uleb128	35
	.byte		0x1
	.4byte		.L607
	.4byte		.L608
	.sleb128	3
	.4byte		.L579
	.uleb128	1357
	.uleb128	35
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L610
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L606:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L615:
	.sleb128	6
	.4byte		.L612-.L568
	.byte		"Icu_Init"
	.byte		0
	.4byte		.L579
	.uleb128	1392
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L613
	.4byte		.L614
	.sleb128	3
	.4byte		.L579
	.uleb128	1392
	.uleb128	22
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L616
	.4byte		.L620
.L621:
	.sleb128	5
	.4byte		.L579
	.uleb128	1394
	.uleb128	37
	.byte		"numChl"
	.byte		0
	.4byte		.L581
	.4byte		.L622
.L623:
	.sleb128	5
	.4byte		.L579
	.uleb128	1396
	.uleb128	63
	.byte		"ChannelConfig"
	.byte		0
	.4byte		.L624
	.4byte		.L628
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L612:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L633:
	.sleb128	6
	.4byte		.L630-.L568
	.byte		"Icu_DeInit"
	.byte		0
	.4byte		.L579
	.uleb128	1467
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L631
	.4byte		.L632
.L634:
	.sleb128	5
	.4byte		.L579
	.uleb128	1469
	.uleb128	37
	.byte		"numChl"
	.byte		0
	.4byte		.L581
	.4byte		.L635
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L630:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L640:
	.sleb128	6
	.4byte		.L637-.L568
	.byte		"Icu_SetMode"
	.byte		0
	.4byte		.L579
	.uleb128	1515
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L638
	.4byte		.L639
	.sleb128	3
	.4byte		.L579
	.uleb128	1515
	.uleb128	22
	.byte		"Mode"
	.byte		0
	.4byte		.L641
	.4byte		.L643
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L647
	.4byte		.L644
	.4byte		.L645
.L648:
	.sleb128	5
	.4byte		.L579
	.uleb128	1538
	.uleb128	53
	.byte		"numChl"
	.byte		0
	.4byte		.L581
	.4byte		.L649
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L653
	.4byte		.L650
	.4byte		.L651
.L654:
	.sleb128	5
	.4byte		.L579
	.uleb128	1542
	.uleb128	49
	.byte		"bActive"
	.byte		0
	.4byte		.L655
	.4byte		.L656
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L653:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L647:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L637:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L661:
	.sleb128	6
	.4byte		.L658-.L568
	.byte		"Icu_DisableWakeup"
	.byte		0
	.4byte		.L579
	.uleb128	1599
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L659
	.4byte		.L660
	.sleb128	3
	.4byte		.L579
	.uleb128	1599
	.uleb128	22
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L662
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L658:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L667:
	.sleb128	6
	.4byte		.L664-.L568
	.byte		"Icu_EnableWakeup"
	.byte		0
	.4byte		.L579
	.uleb128	1641
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L665
	.4byte		.L666
	.sleb128	3
	.4byte		.L579
	.uleb128	1641
	.uleb128	22
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L668
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L664:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L673:
	.sleb128	6
	.4byte		.L670-.L568
	.byte		"Icu_CheckWakeup"
	.byte		0
	.4byte		.L579
	.uleb128	1694
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L671
	.4byte		.L672
	.sleb128	3
	.4byte		.L579
	.uleb128	1694
	.uleb128	22
	.byte		"WakeupSource"
	.byte		0
	.4byte		.L674
	.4byte		.L677
.L678:
	.sleb128	5
	.4byte		.L579
	.uleb128	1702
	.uleb128	41
	.byte		"numChl"
	.byte		0
	.4byte		.L581
	.4byte		.L679
.L680:
	.sleb128	5
	.4byte		.L579
	.uleb128	1703
	.uleb128	67
	.byte		"pTempPtr"
	.byte		0
	.4byte		.L624
	.4byte		.L681
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L670:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L686:
	.sleb128	6
	.4byte		.L683-.L568
	.byte		"Icu_SetActivationCondition"
	.byte		0
	.4byte		.L579
	.uleb128	1750
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L684
	.4byte		.L685
	.sleb128	3
	.4byte		.L579
	.uleb128	1750
	.uleb128	22
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L687
	.sleb128	3
	.4byte		.L579
	.uleb128	1750
	.uleb128	22
	.byte		"Activation"
	.byte		0
	.4byte		.L688
	.4byte		.L690
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L683:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L695:
	.sleb128	6
	.4byte		.L692-.L568
	.byte		"Icu_DisableNotification"
	.byte		0
	.4byte		.L579
	.uleb128	1801
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L693
	.4byte		.L694
	.sleb128	3
	.4byte		.L579
	.uleb128	1801
	.uleb128	22
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L696
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L692:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L701:
	.sleb128	6
	.4byte		.L698-.L568
	.byte		"Icu_EnableNotification"
	.byte		0
	.4byte		.L579
	.uleb128	1841
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L699
	.4byte		.L700
	.sleb128	3
	.4byte		.L579
	.uleb128	1841
	.uleb128	22
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L702
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L698:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L709:
	.sleb128	8
	.4byte		.L704-.L568
	.byte		"Icu_GetInputState"
	.byte		0
	.4byte		.L579
	.uleb128	1887
	.uleb128	36
	.4byte		.L707
	.byte		0x1
	.byte		0x1
	.4byte		.L705
	.4byte		.L706
	.sleb128	3
	.4byte		.L579
	.uleb128	1887
	.uleb128	36
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L710
.L711:
	.sleb128	5
	.4byte		.L579
	.uleb128	1889
	.uleb128	40
	.byte		"tempState"
	.byte		0
	.4byte		.L707
	.4byte		.L712
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L704:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L717:
	.sleb128	6
	.4byte		.L714-.L568
	.byte		"Icu_StartTimestamp"
	.byte		0
	.4byte		.L579
	.uleb128	1950
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L715
	.4byte		.L716
	.sleb128	3
	.4byte		.L579
	.uleb128	1950
	.uleb128	22
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L718
	.sleb128	3
	.4byte		.L579
	.uleb128	1950
	.uleb128	22
	.byte		"BufferPtr"
	.byte		0
	.4byte		.L719
	.4byte		.L722
	.sleb128	3
	.4byte		.L579
	.uleb128	1950
	.uleb128	22
	.byte		"BufferSize"
	.byte		0
	.4byte		.L582
	.4byte		.L723
	.sleb128	3
	.4byte		.L579
	.uleb128	1950
	.uleb128	22
	.byte		"NotifyInterval"
	.byte		0
	.4byte		.L582
	.4byte		.L724
.L725:
	.sleb128	5
	.4byte		.L579
	.uleb128	1977
	.uleb128	41
	.byte		"bDmaSupport"
	.byte		0
	.4byte		.L655
	.4byte		.L726
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L714:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L731:
	.sleb128	6
	.4byte		.L728-.L568
	.byte		"Icu_StopTimestamp"
	.byte		0
	.4byte		.L579
	.uleb128	2063
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L729
	.4byte		.L730
	.sleb128	3
	.4byte		.L579
	.uleb128	2063
	.uleb128	22
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L732
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L728:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L739:
	.sleb128	8
	.4byte		.L734-.L568
	.byte		"Icu_GetTimestampIndex"
	.byte		0
	.4byte		.L579
	.uleb128	2108
	.uleb128	31
	.4byte		.L737
	.byte		0x1
	.byte		0x1
	.4byte		.L735
	.4byte		.L736
	.sleb128	3
	.4byte		.L579
	.uleb128	2108
	.uleb128	31
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L740
.L741:
	.sleb128	5
	.4byte		.L579
	.uleb128	2110
	.uleb128	35
	.byte		"timestampIndex"
	.byte		0
	.4byte		.L737
	.4byte		.L742
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L734:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L747:
	.sleb128	6
	.4byte		.L744-.L568
	.byte		"Icu_ResetEdgeCount"
	.byte		0
	.4byte		.L579
	.uleb128	2181
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L745
	.4byte		.L746
	.sleb128	3
	.4byte		.L579
	.uleb128	2181
	.uleb128	22
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L748
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L744:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L753:
	.sleb128	6
	.4byte		.L750-.L568
	.byte		"Icu_EnableEdgeCount"
	.byte		0
	.4byte		.L579
	.uleb128	2226
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L751
	.4byte		.L752
	.sleb128	3
	.4byte		.L579
	.uleb128	2226
	.uleb128	22
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L754
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L750:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L759:
	.sleb128	6
	.4byte		.L756-.L568
	.byte		"Icu_DisableEdgeCount"
	.byte		0
	.4byte		.L579
	.uleb128	2271
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L757
	.4byte		.L758
	.sleb128	3
	.4byte		.L579
	.uleb128	2271
	.uleb128	22
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L760
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L756:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L767:
	.sleb128	8
	.4byte		.L762-.L568
	.byte		"Icu_GetEdgeNumbers"
	.byte		0
	.4byte		.L579
	.uleb128	2308
	.uleb128	36
	.4byte		.L765
	.byte		0x1
	.byte		0x1
	.4byte		.L763
	.4byte		.L764
	.sleb128	3
	.4byte		.L579
	.uleb128	2308
	.uleb128	36
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L768
.L769:
	.sleb128	5
	.4byte		.L579
	.uleb128	2310
	.uleb128	40
	.byte		"edgeNumbers"
	.byte		0
	.4byte		.L765
	.4byte		.L770
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L762:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L775:
	.sleb128	6
	.4byte		.L772-.L568
	.byte		"Icu_EnableEdgeDetection"
	.byte		0
	.4byte		.L579
	.uleb128	2357
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L773
	.4byte		.L774
	.sleb128	3
	.4byte		.L579
	.uleb128	2357
	.uleb128	22
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L776
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L772:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L781:
	.sleb128	6
	.4byte		.L778-.L568
	.byte		"Icu_DisableEdgeDetection"
	.byte		0
	.4byte		.L579
	.uleb128	2400
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L779
	.4byte		.L780
	.sleb128	3
	.4byte		.L579
	.uleb128	2400
	.uleb128	22
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L782
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L778:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L787:
	.sleb128	6
	.4byte		.L784-.L568
	.byte		"Icu_StartSignalMeasurement"
	.byte		0
	.4byte		.L579
	.uleb128	2439
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L785
	.4byte		.L786
	.sleb128	3
	.4byte		.L579
	.uleb128	2439
	.uleb128	22
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L788
.L789:
	.sleb128	5
	.4byte		.L579
	.uleb128	2458
	.uleb128	37
	.byte		"bDmaSupport"
	.byte		0
	.4byte		.L655
	.4byte		.L790
.L791:
	.sleb128	5
	.4byte		.L579
	.uleb128	2460
	.uleb128	71
	.byte		"Icu_pTempPtr"
	.byte		0
	.4byte		.L624
	.4byte		.L792
.L793:
	.sleb128	5
	.4byte		.L579
	.uleb128	2462
	.uleb128	48
	.byte		"Activation"
	.byte		0
	.4byte		.L688
	.4byte		.L794
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L784:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L799:
	.sleb128	6
	.4byte		.L796-.L568
	.byte		"Icu_StopSignalMeasurement"
	.byte		0
	.4byte		.L579
	.uleb128	2540
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L797
	.4byte		.L798
	.sleb128	3
	.4byte		.L579
	.uleb128	2540
	.uleb128	22
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L800
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L796:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L805:
	.sleb128	8
	.4byte		.L802-.L568
	.byte		"Icu_GetTimeElapsed"
	.byte		0
	.4byte		.L579
	.uleb128	2589
	.uleb128	31
	.4byte		.L720
	.byte		0x1
	.byte		0x1
	.4byte		.L803
	.4byte		.L804
	.sleb128	3
	.4byte		.L579
	.uleb128	2589
	.uleb128	31
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L806
.L807:
	.sleb128	5
	.4byte		.L579
	.uleb128	2591
	.uleb128	35
	.byte		"timeElapsed"
	.byte		0
	.4byte		.L720
	.4byte		.L808
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L812
	.4byte		.L809
	.4byte		.L810
.L813:
	.sleb128	5
	.4byte		.L579
	.uleb128	2617
	.uleb128	78
	.byte		"Icu_TempPtr"
	.byte		0
	.4byte		.L624
	.4byte		.L814
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L812:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L802:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L819:
	.sleb128	6
	.4byte		.L816-.L568
	.byte		"Icu_GetDutyCycleValues"
	.byte		0
	.4byte		.L579
	.uleb128	2671
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L817
	.4byte		.L818
	.sleb128	3
	.4byte		.L579
	.uleb128	2671
	.uleb128	22
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L820
	.sleb128	3
	.4byte		.L579
	.uleb128	2671
	.uleb128	22
	.byte		"DutyCycleValues"
	.byte		0
	.4byte		.L821
	.4byte		.L824
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L816:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L829:
	.sleb128	6
	.4byte		.L826-.L568
	.byte		"Icu_GetVersionInfo"
	.byte		0
	.4byte		.L579
	.uleb128	2751
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L827
	.4byte		.L828
	.sleb128	3
	.4byte		.L579
	.uleb128	2751
	.uleb128	22
	.byte		"versioninfo"
	.byte		0
	.4byte		.L830
	.4byte		.L833
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L826:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L838:
	.sleb128	6
	.4byte		.L835-.L568
	.byte		"Icu_ReportWakeupAndOverflow"
	.byte		0
	.4byte		.L579
	.uleb128	2862
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L836
	.4byte		.L837
	.sleb128	3
	.4byte		.L579
	.uleb128	2862
	.uleb128	22
	.byte		"hwChannel"
	.byte		0
	.4byte		.L581
	.4byte		.L839
	.sleb128	3
	.4byte		.L579
	.uleb128	2862
	.uleb128	22
	.byte		"bOverflow"
	.byte		0
	.4byte		.L655
	.4byte		.L840
.L841:
	.sleb128	5
	.4byte		.L579
	.uleb128	2866
	.uleb128	37
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L842
.L843:
	.sleb128	5
	.4byte		.L579
	.uleb128	2868
	.uleb128	29
	.byte		"bChWakeupCapable"
	.byte		0
	.4byte		.L655
	.4byte		.L844
.L845:
	.sleb128	5
	.4byte		.L579
	.uleb128	2869
	.uleb128	29
	.byte		"bCrtModeSleep"
	.byte		0
	.4byte		.L655
	.4byte		.L846
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L835:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L851:
	.sleb128	6
	.4byte		.L848-.L568
	.byte		"Icu_ReportEvents"
	.byte		0
	.4byte		.L579
	.uleb128	2908
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L849
	.4byte		.L850
	.sleb128	3
	.4byte		.L579
	.uleb128	2908
	.uleb128	22
	.byte		"hwChannel"
	.byte		0
	.4byte		.L581
	.4byte		.L852
	.sleb128	3
	.4byte		.L579
	.uleb128	2908
	.uleb128	22
	.byte		"bOverflow"
	.byte		0
	.4byte		.L655
	.4byte		.L853
.L854:
	.sleb128	5
	.4byte		.L579
	.uleb128	2912
	.uleb128	37
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L855
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L848:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L860:
	.sleb128	6
	.4byte		.L857-.L568
	.byte		"Icu_Timestamp"
	.byte		0
	.4byte		.L579
	.uleb128	3077
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L858
	.4byte		.L859
	.sleb128	3
	.4byte		.L579
	.uleb128	3077
	.uleb128	21
	.byte		"hwChannel"
	.byte		0
	.4byte		.L581
	.4byte		.L861
	.sleb128	3
	.4byte		.L579
	.uleb128	3077
	.uleb128	21
	.byte		"u8CapturedWords"
	.byte		0
	.4byte		.L586
	.4byte		.L862
	.sleb128	3
	.4byte		.L579
	.uleb128	3077
	.uleb128	21
	.byte		"pBufferPtr"
	.byte		0
	.4byte		.L863
	.4byte		.L865
	.sleb128	3
	.4byte		.L579
	.uleb128	3077
	.uleb128	21
	.byte		"bOverflow"
	.byte		0
	.4byte		.L655
	.4byte		.L866
.L867:
	.sleb128	5
	.4byte		.L579
	.uleb128	3083
	.uleb128	37
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L868
.L869:
	.sleb128	5
	.4byte		.L579
	.uleb128	3084
	.uleb128	27
	.byte		"u8Word"
	.byte		0
	.4byte		.L586
	.4byte		.L870
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	7
	.4byte		.L874
	.4byte		.L871
	.4byte		.L872
.L875:
	.sleb128	5
	.4byte		.L579
	.uleb128	3089
	.uleb128	41
	.byte		"chBufferSize"
	.byte		0
	.4byte		.L876
	.4byte		.L877
.L878:
	.sleb128	5
	.4byte		.L579
	.uleb128	3090
	.uleb128	41
	.byte		"chBufferNotify"
	.byte		0
	.4byte		.L876
	.4byte		.L879
.L880:
	.sleb128	5
	.4byte		.L579
	.uleb128	3092
	.uleb128	33
	.byte		"bReturnValue"
	.byte		0
	.4byte		.L655
	.4byte		.L881
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L874:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L857:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L886:
	.sleb128	6
	.4byte		.L883-.L568
	.byte		"Icu_SignalMeasurement"
	.byte		0
	.4byte		.L579
	.uleb128	3160
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L884
	.4byte		.L885
	.sleb128	3
	.4byte		.L579
	.uleb128	3160
	.uleb128	21
	.byte		"hwChannel"
	.byte		0
	.4byte		.L581
	.4byte		.L887
	.sleb128	3
	.4byte		.L579
	.uleb128	3160
	.uleb128	21
	.byte		"activePulseWidth"
	.byte		0
	.4byte		.L720
	.4byte		.L888
	.sleb128	3
	.4byte		.L579
	.uleb128	3160
	.uleb128	21
	.byte		"period"
	.byte		0
	.4byte		.L720
	.4byte		.L889
	.sleb128	3
	.4byte		.L579
	.uleb128	3160
	.uleb128	21
	.byte		"bOverflow"
	.byte		0
	.4byte		.L655
	.4byte		.L890
.L891:
	.sleb128	5
	.4byte		.L579
	.uleb128	3166
	.uleb128	37
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L892
.L893:
	.sleb128	5
	.4byte		.L579
	.uleb128	3167
	.uleb128	39
	.byte		"msChannel"
	.byte		0
	.4byte		.L894
	.4byte		.L895
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L883:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L900:
	.sleb128	6
	.4byte		.L897-.L568
	.byte		"Icu_GetPulseWidth"
	.byte		0
	.4byte		.L579
	.uleb128	3226
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L898
	.4byte		.L899
	.sleb128	3
	.4byte		.L579
	.uleb128	3226
	.uleb128	23
	.byte		"Channel"
	.byte		0
	.4byte		.L581
	.4byte		.L901
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L897:
	.section	.debug_info,,n
.L902:
	.sleb128	9
	.byte		0x1
	.4byte		.L903
	.uleb128	339
	.uleb128	50
	.byte		"Icu_pCfgPtr"
	.byte		0
	.4byte		.L616
	.sleb128	5
	.byte		0x3
	.4byte		Icu_pCfgPtr
	.section	.debug_info,,n
	.section	.debug_info,,n
.L904:
	.sleb128	9
	.byte		0x1
	.4byte		.L903
	.uleb128	369
	.uleb128	28
	.byte		"Icu_CurrentMode"
	.byte		0
	.4byte		.L641
	.sleb128	5
	.byte		0x3
	.4byte		Icu_CurrentMode
	.section	.debug_info,,n
.L905:
	.sleb128	9
	.byte		0x1
	.4byte		.L903
	.uleb128	376
	.uleb128	45
	.byte		"Icu_aChannelState"
	.byte		0
	.4byte		.L906
	.sleb128	5
	.byte		0x3
	.4byte		Icu_aChannelState
	.section	.debug_info,,n
.L909:
	.sleb128	9
	.byte		0x1
	.4byte		.L903
	.uleb128	384
	.uleb128	47
	.byte		"Icu_aBuffer"
	.byte		0
	.4byte		.L910
	.sleb128	5
	.byte		0x3
	.4byte		Icu_aBuffer
	.section	.debug_info,,n
.L912:
	.sleb128	9
	.byte		0x1
	.4byte		.L903
	.uleb128	391
	.uleb128	30
	.byte		"Icu_aBufferSize"
	.byte		0
	.4byte		.L913
	.sleb128	5
	.byte		0x3
	.4byte		Icu_aBufferSize
	.section	.debug_info,,n
.L915:
	.sleb128	9
	.byte		0x1
	.4byte		.L903
	.uleb128	398
	.uleb128	30
	.byte		"Icu_aBufferNotify"
	.byte		0
	.4byte		.L916
	.sleb128	5
	.byte		0x3
	.4byte		Icu_aBufferNotify
	.section	.debug_info,,n
.L918:
	.sleb128	9
	.byte		0x1
	.4byte		.L903
	.uleb128	405
	.uleb128	39
	.byte		"Icu_aNotifyCount"
	.byte		0
	.4byte		.L919
	.sleb128	5
	.byte		0x3
	.4byte		Icu_aNotifyCount
	.section	.debug_info,,n
.L922:
	.sleb128	9
	.byte		0x1
	.4byte		.L903
	.uleb128	412
	.uleb128	39
	.byte		"Icu_aBufferIndex"
	.byte		0
	.4byte		.L923
	.sleb128	5
	.byte		0x3
	.4byte		Icu_aBufferIndex
	.section	.debug_info,,n
.L925:
	.sleb128	10
	.4byte		.L903
	.uleb128	423
	.uleb128	45
	.byte		"Icu_aPeriod"
	.byte		0
	.4byte		.L926
	.sleb128	5
	.byte		0x3
	.4byte		Icu_aPeriod
	.section	.debug_info,,n
.L929:
	.sleb128	10
	.4byte		.L903
	.uleb128	431
	.uleb128	45
	.byte		"Icu_aActivePulseWidth"
	.byte		0
	.4byte		.L930
	.sleb128	5
	.byte		0x3
	.4byte		Icu_aActivePulseWidth
	.section	.debug_info,,n
.L619:
	.sleb128	11
	.4byte		.L932
	.uleb128	493
	.uleb128	1
	.4byte		.L933-.L2
	.uleb128	24
	.section	.debug_info,,n
.L446:
	.sleb128	12
	.byte		"nNumChannels"
	.byte		0
	.4byte		.L894
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L447:
	.sleb128	12
	.byte		"Icu_ChannelConfigPtr"
	.byte		0
	.4byte		.L934
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L448:
	.sleb128	12
	.byte		"IpConfig"
	.byte		0
	.4byte		.L937
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L449:
	.sleb128	12
	.byte		"Icu_HwMap"
	.byte		0
	.4byte		.L940
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L933:
.L627:
	.sleb128	11
	.4byte		.L932
	.uleb128	493
	.uleb128	1
	.4byte		.L943-.L2
	.uleb128	20
.L441:
	.sleb128	12
	.byte		"Icu_ParamValue"
	.byte		0
	.4byte		.L944
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L442:
	.sleb128	12
	.byte		"Icu_Channel_Mode"
	.byte		0
	.4byte		.L945
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L443:
	.sleb128	12
	.byte		"Icu_Channel_Property"
	.byte		0
	.4byte		.L947
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L444:
	.sleb128	12
	.byte		"Icu_Channel_Notification"
	.byte		0
	.4byte		.L948
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L445:
	.sleb128	12
	.byte		"Icu_Channel_WakeupValue"
	.byte		0
	.4byte		.L952
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L943:
.L939:
	.sleb128	11
	.4byte		.L953
	.uleb128	288
	.uleb128	1
	.4byte		.L954-.L2
	.uleb128	12
.L438:
	.sleb128	12
	.byte		"peMiosIpConfig"
	.byte		0
	.4byte		.L955
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L439:
	.sleb128	12
	.byte		"pSiul2IpConfig"
	.byte		0
	.4byte		.L960
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L440:
	.sleb128	12
	.byte		"pIpChannelsConfig"
	.byte		0
	.4byte		.L965
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L954:
.L970:
	.sleb128	11
	.4byte		.L953
	.uleb128	288
	.uleb128	1
	.4byte		.L971-.L2
	.uleb128	2
.L436:
	.sleb128	12
	.byte		"nChannelIp"
	.byte		0
	.4byte		.L972
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L437:
	.sleb128	12
	.byte		"u8IdxChannelConfig"
	.byte		0
	.4byte		.L974
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L971:
.L964:
	.sleb128	11
	.4byte		.L953
	.uleb128	288
	.uleb128	1
	.4byte		.L975-.L2
	.uleb128	8
.L433:
	.sleb128	12
	.byte		"nNumChannels"
	.byte		0
	.4byte		.L976
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	12
	.byte		"Icu_GlobalConfiguration"
	.byte		0
	.4byte		.L978
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L435:
	.sleb128	12
	.byte		"pChannelsConfig"
	.byte		0
	.4byte		.L980
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L975:
.L985:
	.sleb128	11
	.4byte		.L953
	.uleb128	288
	.uleb128	1
	.4byte		.L986-.L2
	.uleb128	6
.L430:
	.sleb128	12
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L976
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L431:
	.sleb128	12
	.byte		"nControlValue"
	.byte		0
	.4byte		.L987
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L432:
	.sleb128	12
	.byte		"nDefaultStartEdge"
	.byte		0
	.4byte		.L974
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L986:
.L959:
	.sleb128	11
	.4byte		.L953
	.uleb128	288
	.uleb128	1
	.4byte		.L989-.L2
	.uleb128	8
.L428:
	.sleb128	12
	.byte		"nNumChannels"
	.byte		0
	.4byte		.L990
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L429:
	.sleb128	12
	.byte		"pChannelsConfig"
	.byte		0
	.4byte		.L992
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L989:
.L997:
	.sleb128	11
	.4byte		.L953
	.uleb128	288
	.uleb128	1
	.4byte		.L998-.L2
	.uleb128	12
.L424:
	.sleb128	12
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L990
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L425:
	.sleb128	12
	.byte		"nControlValue"
	.byte		0
	.4byte		.L999
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L426:
	.sleb128	12
	.byte		"nDefaultStartEdge"
	.byte		0
	.4byte		.L974
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L427:
	.sleb128	12
	.byte		"bSignalMeasure_WithoutInterrupt"
	.byte		0
	.4byte		.L1001
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
	.sleb128	0
.L998:
.L823:
	.sleb128	11
	.4byte		.L1002
	.uleb128	180
	.uleb128	1
	.4byte		.L1003-.L2
	.uleb128	8
.L418:
	.sleb128	12
	.byte		"ActiveTime"
	.byte		0
	.4byte		.L720
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L419:
	.sleb128	12
	.byte		"PeriodTime"
	.byte		0
	.4byte		.L720
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1003:
.L832:
	.sleb128	11
	.4byte		.L1004
	.uleb128	111
	.uleb128	7
	.4byte		.L1005-.L2
	.uleb128	8
.L244:
	.sleb128	12
	.byte		"vendorID"
	.byte		0
	.4byte		.L582
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L245:
	.sleb128	12
	.byte		"moduleID"
	.byte		0
	.4byte		.L582
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L246:
	.sleb128	12
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L586
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L247:
	.sleb128	12
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L586
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L248:
	.sleb128	12
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L586
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L1005:
	.section	.debug_info,,n
.L689:
	.sleb128	13
	.4byte		.L1002
	.uleb128	180
	.uleb128	1
	.4byte		.L1006-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	14
	.byte		"ICU_FALLING_EDGE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"ICU_RISING_EDGE"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"ICU_BOTH_EDGES"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1006:
.L946:
	.sleb128	13
	.4byte		.L1002
	.uleb128	132
	.uleb128	1
	.4byte		.L1007-.L2
	.uleb128	4
	.sleb128	14
	.byte		"ICU_MODE_SIGNAL_EDGE_DETECT"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"ICU_MODE_SIGNAL_MEASUREMENT"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"ICU_MODE_TIMESTAMP"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"ICU_MODE_EDGE_COUNTER"
	.byte		0
	.sleb128	8
	.sleb128	0
.L1007:
.L708:
	.sleb128	13
	.4byte		.L1002
	.uleb128	120
	.uleb128	1
	.4byte		.L1008-.L2
	.uleb128	4
	.sleb128	14
	.byte		"ICU_ACTIVE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"ICU_IDLE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1008:
.L642:
	.sleb128	13
	.4byte		.L1002
	.uleb128	106
	.uleb128	1
	.4byte		.L1009-.L2
	.uleb128	4
	.sleb128	14
	.byte		"ICU_MODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"ICU_MODE_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1009:
	.section	.debug_info,,n
.L583:
	.sleb128	15
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L582:
	.sleb128	16
	.byte		"uint16"
	.byte		0
	.4byte		.L583
.L581:
	.sleb128	16
	.byte		"Icu_ChannelType"
	.byte		0
	.4byte		.L582
.L587:
	.sleb128	15
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L586:
	.sleb128	16
	.byte		"uint8"
	.byte		0
	.4byte		.L587
.L585:
	.sleb128	16
	.byte		"Icu_ChannelStateType"
	.byte		0
	.4byte		.L586
.L618:
	.sleb128	16
	.byte		"Icu_ConfigType"
	.byte		0
	.4byte		.L619
	.section	.debug_info,,n
.L617:
	.sleb128	17
	.4byte		.L618
	.section	.debug_info,,n
.L616:
	.sleb128	18
	.4byte		.L617
.L626:
	.sleb128	16
	.byte		"Icu_ChannelConfigType"
	.byte		0
	.4byte		.L627
.L625:
	.sleb128	17
	.4byte		.L626
.L624:
	.sleb128	18
	.4byte		.L625
.L641:
	.sleb128	16
	.byte		"Icu_ModeType"
	.byte		0
	.4byte		.L642
.L655:
	.sleb128	16
	.byte		"boolean"
	.byte		0
	.4byte		.L587
.L676:
	.sleb128	15
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L675:
	.sleb128	16
	.byte		"uint32"
	.byte		0
	.4byte		.L676
.L674:
	.sleb128	16
	.byte		"EcuM_WakeupSourceType"
	.byte		0
	.4byte		.L675
.L688:
	.sleb128	16
	.byte		"Icu_ActivationType"
	.byte		0
	.4byte		.L689
.L707:
	.sleb128	16
	.byte		"Icu_InputStateType"
	.byte		0
	.4byte		.L708
.L721:
	.sleb128	16
	.byte		"Icu_TimerRegisterWidthType"
	.byte		0
	.4byte		.L675
.L720:
	.sleb128	16
	.byte		"Icu_ValueType"
	.byte		0
	.4byte		.L721
.L719:
	.sleb128	18
	.4byte		.L720
.L738:
	.sleb128	16
	.byte		"Icu_HwSpecificIndexType"
	.byte		0
	.4byte		.L582
.L737:
	.sleb128	16
	.byte		"Icu_IndexType"
	.byte		0
	.4byte		.L738
.L766:
	.sleb128	16
	.byte		"Icu_HwSpecificEdgeNumberType"
	.byte		0
	.4byte		.L675
.L765:
	.sleb128	16
	.byte		"Icu_EdgeNumberType"
	.byte		0
	.4byte		.L766
.L822:
	.sleb128	16
	.byte		"Icu_DutyCycleType"
	.byte		0
	.4byte		.L823
.L821:
	.sleb128	18
	.4byte		.L822
.L831:
	.sleb128	16
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L832
.L830:
	.sleb128	18
	.4byte		.L831
.L864:
	.sleb128	17
	.4byte		.L720
.L863:
	.sleb128	18
	.4byte		.L864
.L876:
	.sleb128	17
	.4byte		.L737
.L894:
	.sleb128	17
	.4byte		.L581
	.section	.debug_info,,n
.L908:
	.sleb128	19
	.4byte		.L585
	.section	.debug_info,,n
.L906:
	.sleb128	20
	.4byte		.L907-.L2
	.4byte		.L908
	.section	.debug_info,,n
	.sleb128	21
	.uleb128	0
	.sleb128	0
.L907:
.L910:
	.sleb128	20
	.4byte		.L911-.L2
	.4byte		.L719
	.sleb128	21
	.uleb128	0
	.sleb128	0
.L911:
.L913:
	.sleb128	20
	.4byte		.L914-.L2
	.4byte		.L737
	.sleb128	21
	.uleb128	0
	.sleb128	0
.L914:
.L916:
	.sleb128	20
	.4byte		.L917-.L2
	.4byte		.L737
	.sleb128	21
	.uleb128	0
	.sleb128	0
.L917:
.L921:
	.sleb128	19
	.4byte		.L737
.L919:
	.sleb128	20
	.4byte		.L920-.L2
	.4byte		.L921
	.sleb128	21
	.uleb128	0
	.sleb128	0
.L920:
.L923:
	.sleb128	20
	.4byte		.L924-.L2
	.4byte		.L921
	.sleb128	21
	.uleb128	0
	.sleb128	0
.L924:
.L928:
	.sleb128	19
	.4byte		.L720
.L926:
	.sleb128	20
	.4byte		.L927-.L2
	.4byte		.L928
	.sleb128	21
	.uleb128	0
	.sleb128	0
.L927:
.L930:
	.sleb128	20
	.4byte		.L931-.L2
	.4byte		.L928
	.sleb128	21
	.uleb128	0
	.sleb128	0
.L931:
.L935:
	.sleb128	20
	.4byte		.L936-.L2
	.4byte		.L625
	.section	.debug_info,,n
	.sleb128	22
	.sleb128	0
.L936:
.L934:
	.sleb128	18
	.4byte		.L935
.L938:
	.sleb128	16
	.byte		"Icu_IpConfigType"
	.byte		0
	.4byte		.L939
.L937:
	.sleb128	17
	.4byte		.L938
.L941:
	.sleb128	20
	.4byte		.L942-.L2
	.4byte		.L894
	.sleb128	22
	.sleb128	0
.L942:
.L940:
	.sleb128	18
	.4byte		.L941
.L944:
	.sleb128	16
	.byte		"Icu_ParamType"
	.byte		0
	.4byte		.L675
.L945:
	.sleb128	16
	.byte		"Icu_MeasurementModeType"
	.byte		0
	.4byte		.L946
.L947:
	.sleb128	16
	.byte		"Icu_MeasurementSubModeType"
	.byte		0
	.4byte		.L582
	.section	.debug_info,,n
.L950:
	.sleb128	23
	.4byte		.L951-.L2
	.byte		0x1
	.sleb128	0
.L951:
.L949:
	.sleb128	18
	.4byte		.L950
.L948:
	.sleb128	16
	.byte		"Icu_NotifyType"
	.byte		0
	.4byte		.L949
.L952:
	.sleb128	16
	.byte		"Icu_WakeupValueType"
	.byte		0
	.4byte		.L675
.L958:
	.sleb128	16
	.byte		"Icu_eMios_IpConfigType"
	.byte		0
	.4byte		.L959
.L957:
	.sleb128	17
	.4byte		.L958
.L956:
	.sleb128	18
	.4byte		.L957
.L955:
	.sleb128	17
	.4byte		.L956
.L963:
	.sleb128	16
	.byte		"Icu_Siul2_IpConfigType"
	.byte		0
	.4byte		.L964
.L962:
	.sleb128	17
	.4byte		.L963
.L961:
	.sleb128	18
	.4byte		.L962
.L960:
	.sleb128	17
	.4byte		.L961
.L969:
	.sleb128	16
	.byte		"Icu_IpChannelConfigType"
	.byte		0
	.4byte		.L970
.L968:
	.sleb128	17
	.4byte		.L969
.L966:
	.sleb128	20
	.4byte		.L967-.L2
	.4byte		.L968
	.sleb128	22
	.sleb128	0
.L967:
.L965:
	.sleb128	18
	.4byte		.L966
.L973:
	.sleb128	16
	.byte		"Icu_ChannelIpType"
	.byte		0
	.4byte		.L586
.L972:
	.sleb128	17
	.4byte		.L973
.L974:
	.sleb128	17
	.4byte		.L586
.L977:
	.sleb128	16
	.byte		"Icu_Siul2_ChannelType"
	.byte		0
	.4byte		.L586
.L976:
	.sleb128	17
	.4byte		.L977
.L979:
	.sleb128	16
	.byte		"Icu_Siul2_GlobalConfigurationType"
	.byte		0
	.4byte		.L582
.L978:
	.sleb128	17
	.4byte		.L979
.L984:
	.sleb128	16
	.byte		"Icu_Siul2_ChannelConfigType"
	.byte		0
	.4byte		.L985
.L983:
	.sleb128	17
	.4byte		.L984
.L981:
	.sleb128	20
	.4byte		.L982-.L2
	.4byte		.L983
	.sleb128	22
	.sleb128	0
.L982:
.L980:
	.sleb128	18
	.4byte		.L981
.L988:
	.sleb128	16
	.byte		"Icu_Siul2_ControlType"
	.byte		0
	.4byte		.L582
.L987:
	.sleb128	17
	.4byte		.L988
.L991:
	.sleb128	16
	.byte		"Icu_eMios_ChannelType"
	.byte		0
	.4byte		.L586
.L990:
	.sleb128	17
	.4byte		.L991
.L996:
	.sleb128	16
	.byte		"Icu_eMios_ChannelConfigType"
	.byte		0
	.4byte		.L997
.L995:
	.sleb128	17
	.4byte		.L996
.L993:
	.sleb128	20
	.4byte		.L994-.L2
	.4byte		.L995
	.sleb128	22
	.sleb128	0
.L994:
.L992:
	.sleb128	18
	.4byte		.L993
.L1000:
	.sleb128	16
	.byte		"Icu_eMios_ControlType"
	.byte		0
	.4byte		.L675
.L999:
	.sleb128	17
	.4byte		.L1000
.L1001:
	.sleb128	17
	.4byte		.L655
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L573:
	.sleb128	0
.L569:

	.section	.debug_loc,,n
	.align	0
.L584:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L588:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo6),30
	.d2locend
.L594:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L595:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo9),4
	.d2locend
.L597:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo10),3
	.d2locend
.L603:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),31
	.d2locend
.L604:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo15),4
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo16),30
	.d2locend
.L610:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),6
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),6
	.d2locend
.L620:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),0
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),0
	.d2locend
.L622:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),3
	.d2locend
.L628:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo26),4
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),4
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),4
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo34),4
	.d2locend
.L635:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),3
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),3
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),3
	.d2locend
.L643:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),3
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),31
	.d2locend
.L649:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo50),30
	.d2locend
.L656:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),29
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),28
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo50),29
	.d2locend
.L662:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),3
	.d2locend
.L668:
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),3
	.d2locend
.L677:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),3
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),7
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),7
	.d2locend
.L679:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo65),31
	.d2locend
.L681:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),6
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),0
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),6
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),6
	.d2locend
.L687:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),3
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),3
	.d2locend
.L690:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo76),4
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo77),30
	.d2locend
.L696:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),3
	.d2locend
.L702:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),3
	.d2locend
.L710:
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),3
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),6
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),6
	.d2locend
.L712:
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo88),31
	.d2locend
.L718:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),3
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),31
	.d2locend
.L722:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo91),4
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo92),30
	.d2locend
.L723:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo93),5
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo92),29
	.d2locend
.L724:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo94),6
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo92),28
	.d2locend
.L726:
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo95),0
	.d2locend
.L732:
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo98),3
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo100),31
	.d2locend
.L740:
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),3
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),4
	.d2locend
.L742:
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo106),3
	.d2locend
.L748:
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo108),3
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),31
	.d2locend
.L754:
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),3
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),31
	.d2locend
.L760:
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),3
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),31
	.d2locend
.L768:
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),3
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),4
	.d2locend
.L770:
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),0
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),3
	.d2locend
.L776:
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),3
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),31
	.d2locend
.L782:
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),3
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),31
	.d2locend
.L788:
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),3
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),31
	.d2locend
.L790:
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo137),0
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo141),0
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo143),0
	.d2locend
.L792:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo138),30
	.d2locend
.L794:
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo138),29
	.d2locend
.L800:
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),3
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),31
	.d2locend
.L806:
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo151),3
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo153),31
	.d2locend
.L808:
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo155),0
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo157),0
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo159),0
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo161),0
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo153),0
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo164),30
	.d2locend
.L814:
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo165),3
	.d2locreg	%offsetof(.Llo166), %offsetof(.Llo167),3
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo169),3
	.d2locend
.L820:
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo171),3
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo173),31
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo175),31
	.d2locend
.L824:
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo176),4
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo175),30
	.d2locend
.L833:
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo179),3
	.d2locreg	%offsetof(.Llo180), %offsetof(.Llo181),4
	.d2locend
.L839:
	.d2locreg	%offsetof(.Llo182), %offsetof(.Llo183),3
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo185),0
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo187),0
	.d2locreg	%offsetof(.Llo188), %offsetof(.Llo189),0
	.d2locend
.L840:
	.d2locreg	%offsetof(.Llo182), %offsetof(.Llo190),4
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo191),31
	.d2locend
.L842:
	.d2locreg	%offsetof(.Llo192), %offsetof(.Llo193),30
	.d2locend
.L844:
	.d2locreg	%offsetof(.Llo189), %offsetof(.Llo194),0
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo196),0
	.d2locreg	%offsetof(.Llo197), %offsetof(.Llo198),0
	.d2locend
.L846:
	.d2locreg	%offsetof(.Llo194), %offsetof(.Llo199),4
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo191),4
	.d2locend
.L852:
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo201),3
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo203),31
	.d2locend
.L853:
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo202),4
	.d2locreg	%offsetof(.Llo204), %offsetof(.Llo203),29
	.d2locend
.L855:
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo203),30
	.d2locend
.L861:
	.d2locreg	%offsetof(.Llo206), %offsetof(.Llo207),3
	.d2locreg	%offsetof(.Llo208), %offsetof(.Llo209),3
	.d2locreg	%offsetof(.Llo210), %offsetof(.Llo211),3
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo213),3
	.d2locreg	%offsetof(.Llo214), %offsetof(.Llo215),3
	.d2locreg	%offsetof(.Llo216), %offsetof(.Llo217),3
	.d2locreg	%offsetof(.Llo218), %offsetof(.Llo219),3
	.d2locreg	%offsetof(.Llo220), %offsetof(.Llo221),3
	.d2locend
.L862:
	.d2locreg	%offsetof(.Llo206), %offsetof(.Llo222),4
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo224),31
	.d2locend
.L865:
	.d2locreg	%offsetof(.Llo206), %offsetof(.Llo225),5
	.d2locend
.L866:
	.d2locreg	%offsetof(.Llo206), %offsetof(.Llo226),6
	.d2locend
.L868:
	.d2locreg	%offsetof(.Llo227), %offsetof(.Llo224),29
	.d2locend
.L870:
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo224),28
	.d2locend
.L877:
	.d2locreg	%offsetof(.Llo228), %offsetof(.Llo224),27
	.d2locend
.L879:
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo224),26
	.d2locend
.L881:
	.d2locreg	%offsetof(.Llo230), %offsetof(.Llo224),25
	.d2locend
.L887:
	.d2locreg	%offsetof(.Llo231), %offsetof(.Llo232),3
	.d2locreg	%offsetof(.Llo233), %offsetof(.Llo234),31
	.d2locend
.L888:
	.d2locreg	%offsetof(.Llo231), %offsetof(.Llo233),4
	.d2locreg	%offsetof(.Llo235), %offsetof(.Llo234),30
	.d2locend
.L889:
	.d2locreg	%offsetof(.Llo231), %offsetof(.Llo235),5
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo234),29
	.d2locend
.L890:
	.d2locreg	%offsetof(.Llo231), %offsetof(.Llo236),6
	.d2locreg	%offsetof(.Llo237), %offsetof(.Llo234),28
	.d2locend
.L892:
	.d2locreg	%offsetof(.Llo238), %offsetof(.Llo239),27
	.d2locreg	%offsetof(.Llo240), %offsetof(.Llo234),27
	.d2locend
.L895:
	.d2locreg	%offsetof(.Llo231), %offsetof(.Llo238),27
	.d2locreg	%offsetof(.Llo239), %offsetof(.Llo234),27
	.d2locend
.L901:
	.d2locreg	%offsetof(.Llo241), %offsetof(.Llo242),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Icu_GetPulseWidth"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_Ipw_GetPulseWidth"
	.wrcm.end
	.wrcm.nelem "Icu_SignalMeasurement"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "Icu_ReportWakeupAndOverflow","Icu_SetBitChState","SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_07","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_07"
	.wrcm.end
	.wrcm.nelem "Icu_Timestamp"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "Icu_CallNotification","Icu_ClearBitChState","Icu_Ipw_StopTimestamp","Icu_ReportWakeupAndOverflow","SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_04","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_04"
	.wrcm.end
	.wrcm.nelem "Icu_ReportEvents"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_CallNotification","Icu_ReportWakeupAndOverflow","Icu_SetBitChState"
	.wrcm.end
	.wrcm.nelem "Icu_ReportWakeupAndOverflow"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "EcuM_CheckWakeup","Icu_GetBitChState","Icu_SetBitChState"
	.wrcm.end
	.wrcm.nelem "Icu_GetVersionInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Icu_GetDutyCycleValues"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_06","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_06"
	.wrcm.end
	.wrcm.nelem "Icu_GetTimeElapsed"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_ClearBitChState","SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_05","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_05"
	.wrcm.end
	.wrcm.nelem "Icu_StopSignalMeasurement"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_ClearBitChState","Icu_Ipw_StopSignalMeasurement"
	.wrcm.end
	.wrcm.nelem "Icu_StartSignalMeasurement"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_ClearBitChState","Icu_Ipw_StartSignalMeasurement","Icu_SetBitChState","SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_08","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_08"
	.wrcm.end
	.wrcm.nelem "Icu_DisableEdgeDetection"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_ClearBitChState","Icu_Ipw_DisableEdgeDetection"
	.wrcm.end
	.wrcm.nelem "Icu_EnableEdgeDetection"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_Ipw_EnableEdgeDetection","Icu_SetBitChState"
	.wrcm.end
	.wrcm.nelem "Icu_GetEdgeNumbers"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_Ipw_GetEdgeNumbers"
	.wrcm.end
	.wrcm.nelem "Icu_DisableEdgeCount"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_ClearBitChState","Icu_Ipw_DisableEdgeCount"
	.wrcm.end
	.wrcm.nelem "Icu_EnableEdgeCount"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_ClearBitChState","Icu_Ipw_EnableEdgeCount","Icu_SetBitChState"
	.wrcm.end
	.wrcm.nelem "Icu_ResetEdgeCount"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_ClearBitChState","Icu_Ipw_ResetEdgeCount"
	.wrcm.end
	.wrcm.nelem "Icu_GetTimestampIndex"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Icu_StopTimestamp"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_ClearBitChState","Icu_Ipw_StopTimestamp"
	.wrcm.end
	.wrcm.nelem "Icu_StartTimestamp"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_ClearBitChState","Icu_Ipw_StartTimestamp","Icu_SetBitChState","SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_02","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_02"
	.wrcm.end
	.wrcm.nelem "Icu_GetInputState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_ClearBitChState","Icu_GetBitChState","Icu_Ipw_GetInputState"
	.wrcm.end
	.wrcm.nelem "Icu_EnableNotification"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_SetBitChState"
	.wrcm.end
	.wrcm.nelem "Icu_DisableNotification"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_ClearBitChState"
	.wrcm.end
	.wrcm.nelem "Icu_SetActivationCondition"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_ClearBitChState","Icu_Ipw_SetActivationCondition"
	.wrcm.end
	.wrcm.nelem "Icu_CheckWakeup"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "EcuM_SetWakeupEvent","Icu_ClearBitChState","Icu_GetBitChState"
	.wrcm.end
	.wrcm.nelem "Icu_EnableWakeup"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_SetBitChState"
	.wrcm.end
	.wrcm.nelem "Icu_DisableWakeup"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_ClearBitChState"
	.wrcm.end
	.wrcm.nelem "Icu_SetMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_GetBitChState","Icu_Ipw_SetNormalMode","Icu_Ipw_SetSleepMode"
	.wrcm.end
	.wrcm.nelem "Icu_DeInit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_Ipw_DeInit"
	.wrcm.end
	.wrcm.nelem "Icu_Init"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_Ipw_Init"
	.wrcm.end
	.wrcm.nelem "Icu_CallNotification"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Icu_GetBitChState"
	.wrcm.end
	.wrcm.nelem "Icu_ClearBitChState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_01","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_01"
	.wrcm.end
	.wrcm.nelem "Icu_GetBitChState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Icu_SetBitChState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_00","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_00"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Icu.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Icu.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Icu.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Icu.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Icu.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Icu.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Icu\ssc\make\..\..\generator\integration_package\src\Icu.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
