#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Gpt_Ipw.c"
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
# FUNC(void, GPT_CODE) Gpt_Ipw_Init
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L468:
	.section	.invalid_TEXT,,c
#$$ld
.L464:
	.0byte		.L462
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_Ipw.c"
        .d2line         224,22
#$$ld
.L471:

#$$bf	Gpt_Ipw_Init,interprocedural,rasave,nostackparams
	.globl		Gpt_Ipw_Init
	.d2_cfa_start __cie
Gpt_Ipw_Init:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pHwChannelConfig=r3 pHwChannelConfig=r3
	.d2prologue_end
# (
#     P2CONST(Gpt_HwChannelConfigType, AUTOMATIC,GPT_APPL_CONST) pHwChannelConfig
# )
# {
#     switch(pHwChannelConfig->Gpt_u8HwModule)
	.d2line		229
	lbz		r6,1(r3)		# pHwChannelConfig=r3
	se_cmpi		r6,8
	bc		1,2,.L408	# eq
	cmpi		0,0,r6,72
	bc		1,2,.L406	# eq
	b		.L405
.L406:
#     {
# #if (GPT_EMIOS_USED == STD_ON)
#         case GPT_EMIOS_MODULE:
#         {
#             Gpt_eMios_Init(pHwChannelConfig->Gpt_u8HwChannel,pHwChannelConfig->Gpt_uPrescaler,pHwChannelConfig->Gpt_bFreezeEnable);
	.d2line		234
	lbz		r4,3(r3)		# pHwChannelConfig=r3
	lbz		r5,2(r3)		# pHwChannelConfig=r3
	lbz		r3,0(r3)		# pHwChannelConfig=r3 pHwChannelConfig=r3
.Llo2:
	bl		Gpt_eMios_Init
	b		.L405
.L408:
#         }
#         break;
# #endif
# 
# #if (GPT_PIT_USED == STD_ON)
#         case GPT_PIT_MODULE:
#         {
#             Gpt_Pit_Init(pHwChannelConfig->Gpt_u8HwChannel,pHwChannelConfig->Gpt_bFreezeEnable);
	.d2line		242
.Llo3:
	lbz		r4,2(r3)		# pHwChannelConfig=r3
	lbz		r3,0(r3)		# pHwChannelConfig=r3 pHwChannelConfig=r3
.Llo4:
	bl		Gpt_Pit_Init
.L405:
#         }
#         break;
# #endif
# 
# #if (GPT_STM_USED == STD_ON)
#         case GPT_STM_MODULE:
#         {
#             Gpt_Stm_Init
#             (
#                 pHwChannelConfig->Gpt_u8HwChannel,
#                 pHwChannelConfig->Gpt_uPrescaler,
# #if (GPT_STM_ENABLECLOCKSWITCH == STD_ON)
#             pHwChannelConfig->Gpt_uStmClockSource,
# #endif
#                 pHwChannelConfig->Gpt_bFreezeEnable
#       
#          );
#         }
#         break;
# #endif
#         default:
#             /*This switch branch is empty because it shall not be executed for normal behaviour*/
#             break;
#     }
# 
#     return;
# }
	.d2line		269
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
.L472:
	.type		Gpt_Ipw_Init,@function
	.size		Gpt_Ipw_Init,.-Gpt_Ipw_Init
# Number of nodes = 38

# Allocations for Gpt_Ipw_Init
#	?a4		pHwChannelConfig
# FUNC(Gpt_ValueType, GPT_CODE) Gpt_Ipw_GetTimeElapsed
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         330,31
#$$ld
.L482:

#$$bf	Gpt_Ipw_GetTimeElapsed,interprocedural,rasave,nostackparams
	.globl		Gpt_Ipw_GetTimeElapsed
	.d2_cfa_start __cie
Gpt_Ipw_GetTimeElapsed:
.Llo5:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pHwChannelConfig=r3 pHwChannelConfig=r3
	mr		r4,r4		# pReturnHwChannelInfo=r4 pReturnHwChannelInfo=r4
	.d2prologue_end
# (
#     P2CONST(Gpt_HwChannelConfigType, AUTOMATIC,GPT_APPL_CONST) pHwChannelConfig,
#     P2VAR(Gpt_HwChannelInfoType, AUTOMATIC,GPT_APPL_DATA) pReturnHwChannelInfo
# )
# {
#     VAR(uint32, AUTOMATIC) u32ReturnValue = 0U;
	.d2line		336
	diab.li		r5,0		# u32ReturnValue=r5
# 
#     switch(pHwChannelConfig->Gpt_u8HwModule)
	.d2line		338
.Llo11:
	lbz		r6,1(r3)		# pHwChannelConfig=r3
	se_cmpi		r6,8
	bc		1,2,.L416	# eq
	cmpi		0,0,r6,72
	bc		1,2,.L414	# eq
	b		.L415
.L414:
#     {
# #if (GPT_EMIOS_USED == STD_ON)
#         case GPT_EMIOS_MODULE:
#         {
#             u32ReturnValue=Gpt_eMios_GetTimeElapsed(pHwChannelConfig->Gpt_u8HwChannel, &(pReturnHwChannelInfo->bChannelRollover), &(pReturnHwChannelInfo->uTargetTime));
	.d2line		343
	lbz		r3,0(r3)		# pHwChannelConfig=r3 pHwChannelConfig=r3
.Llo6:
	diab.addi		r5,r4,4		# u32ReturnValue=r5 pReturnHwChannelInfo=r4
	mr		r4,r4		# pReturnHwChannelInfo=r4 pReturnHwChannelInfo=r4
.Llo9:
	bl		Gpt_eMios_GetTimeElapsed
	mr		r5,r3		# u32ReturnValue=r5 u32ReturnValue=r3
	b		.L415
.L416:
#         }
#         break;
# #endif
# 
# #if (GPT_PIT_USED == STD_ON)
#         case GPT_PIT_MODULE:
#         {
#             u32ReturnValue=Gpt_Pit_GetTimeElapsed(pHwChannelConfig->Gpt_u8HwChannel, &(pReturnHwChannelInfo->bChannelRollover), &(pReturnHwChannelInfo->uTargetTime));
	.d2line		351
.Llo7:
	lbz		r3,0(r3)		# pHwChannelConfig=r3 pHwChannelConfig=r3
.Llo8:
	diab.addi		r5,r4,4		# u32ReturnValue=r5 pReturnHwChannelInfo=r4
	mr		r4,r4		# pReturnHwChannelInfo=r4 pReturnHwChannelInfo=r4
.Llo10:
	bl		Gpt_Pit_GetTimeElapsed
	mr		r5,r3		# u32ReturnValue=r5 u32ReturnValue=r3
.L415:
#         }
#         break;
# #endif
# 
# #if (GPT_STM_USED == STD_ON)
#         case GPT_STM_MODULE:
#         {
#             u32ReturnValue=Gpt_Stm_GetTimeElapsed(pHwChannelConfig->Gpt_u8HwChannel, &(pReturnHwChannelInfo->bChannelRollover),&(pReturnHwChannelInfo->uTargetTime));
#         }
#         break;
# #endif
#         default:
#             /*This switch branch is empty because it shall not be executed for normal behaviour*/
#         break;
#     }
# 
#     return((Gpt_ValueType)u32ReturnValue);
	.d2line		368
	mr		r3,r5		# u32ReturnValue=r3 u32ReturnValue=r5
# }
	.d2line		369
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo12:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L483:
	.type		Gpt_Ipw_GetTimeElapsed,@function
	.size		Gpt_Ipw_GetTimeElapsed,.-Gpt_Ipw_GetTimeElapsed
# Number of nodes = 40

# Allocations for Gpt_Ipw_GetTimeElapsed
#	?a4		pHwChannelConfig
#	?a5		pReturnHwChannelInfo
#	?a6		u32ReturnValue
# FUNC(void, GPT_CODE) Gpt_Ipw_StartTimer(P2CONST(Gpt_HwChannelConfigType, AUTOMATIC,GPT_APPL_CONST) pHwChannelConfig,
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         381,22
#$$ld
.L497:

#$$bf	Gpt_Ipw_StartTimer,interprocedural,rasave,nostackparams
	.globl		Gpt_Ipw_StartTimer
	.d2_cfa_start __cie
Gpt_Ipw_StartTimer:
.Llo13:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pHwChannelConfig=r3 pHwChannelConfig=r3
	mr		r4,r4		# uValue=r4 uValue=r4
	.d2prologue_end
#                                                    VAR(Gpt_ValueType, AUTOMATIC) uValue
#                                                    )
# {
#     switch(pHwChannelConfig->Gpt_u8HwModule)
	.d2line		385
	lbz		r6,1(r3)		# pHwChannelConfig=r3
	se_cmpi		r6,8
	bc		1,2,.L424	# eq
	cmpi		0,0,r6,72
	bc		1,2,.L422	# eq
	b		.L421
.L422:
#     {
# #if (GPT_EMIOS_USED == STD_ON)
#         case GPT_EMIOS_MODULE:
#         {
#             Gpt_eMios_StartTimer(pHwChannelConfig->Gpt_u8HwChannel, (uint32)uValue);
	.d2line		390
.Llo17:
	lbz		r3,0(r3)		# pHwChannelConfig=r3 pHwChannelConfig=r3
.Llo14:
	mr		r4,r4		# uValue=r4 uValue=r4
.Llo18:
	bl		Gpt_eMios_StartTimer
	b		.L421
.L424:
#         }
#         break;
# #endif
# 
# #if (GPT_PIT_USED == STD_ON)
#         case GPT_PIT_MODULE:
#         {
#             Gpt_Pit_StartTimer(pHwChannelConfig->Gpt_u8HwChannel, (uint32)uValue);
	.d2line		398
.Llo15:
	lbz		r3,0(r3)		# pHwChannelConfig=r3 pHwChannelConfig=r3
.Llo16:
	mr		r4,r4		# uValue=r4 uValue=r4
.Llo19:
	bl		Gpt_Pit_StartTimer
.L421:
#         }
#         break;
# #endif
# 
# #if (GPT_STM_USED == STD_ON)
#         case GPT_STM_MODULE:
#         {
#             Gpt_Stm_StartTimer(pHwChannelConfig->Gpt_u8HwChannel, (uint32)uValue);
#         }
#         break;
# #endif
#         default:
#             /*This switch branch is empty because it shall not be executed for normal behaviour*/
#         break;
#     }
# 
#     return;
# }
	.d2line		416
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
.L498:
	.type		Gpt_Ipw_StartTimer,@function
	.size		Gpt_Ipw_StartTimer,.-Gpt_Ipw_StartTimer
# Number of nodes = 24

# Allocations for Gpt_Ipw_StartTimer
#	?a4		pHwChannelConfig
#	?a5		uValue
# FUNC(void, GPT_CODE) Gpt_Ipw_StopTimer
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         427,22
#$$ld
.L504:

#$$bf	Gpt_Ipw_StopTimer,interprocedural,rasave,nostackparams
	.globl		Gpt_Ipw_StopTimer
	.d2_cfa_start __cie
Gpt_Ipw_StopTimer:
.Llo20:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pHwChannelConfig=r3 pHwChannelConfig=r3
	.d2prologue_end
# (
#     P2CONST(Gpt_HwChannelConfigType, AUTOMATIC,GPT_APPL_CONST) pHwChannelConfig
# )
# {
#     switch(pHwChannelConfig->Gpt_u8HwModule)
	.d2line		432
	lbz		r6,1(r3)		# pHwChannelConfig=r3
	se_cmpi		r6,8
	bc		1,2,.L432	# eq
	cmpi		0,0,r6,72
	bc		1,2,.L430	# eq
	b		.L429
.L430:
#     {
# #if (GPT_EMIOS_USED == STD_ON)
#         case GPT_EMIOS_MODULE:
#         {
#             Gpt_eMios_StopTimer(pHwChannelConfig->Gpt_u8HwChannel);
	.d2line		437
	lbz		r3,0(r3)		# pHwChannelConfig=r3 pHwChannelConfig=r3
.Llo21:
	bl		Gpt_eMios_StopTimer
	b		.L429
.L432:
#         }
#         break;
# #endif
# 
# #if (GPT_PIT_USED == STD_ON)
#         case GPT_PIT_MODULE:
#         {
#             Gpt_Pit_StopTimer(pHwChannelConfig->Gpt_u8HwChannel);
	.d2line		445
.Llo22:
	lbz		r3,0(r3)		# pHwChannelConfig=r3 pHwChannelConfig=r3
.Llo23:
	bl		Gpt_Pit_StopTimer
.L429:
#         }
#         break;
# #endif
# 
# #if (GPT_STM_USED == STD_ON)
#         case GPT_STM_MODULE:
#         {
#             Gpt_Stm_StopTimer(pHwChannelConfig->Gpt_u8HwChannel);
#         }
#         break;
# #endif
#         default:
#             /*This switch branch is empty because it shall not be executed for normal behaviour*/
#         break;
#     }
# 
#     return;
# }
	.d2line		463
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
.L505:
	.type		Gpt_Ipw_StopTimer,@function
	.size		Gpt_Ipw_StopTimer,.-Gpt_Ipw_StopTimer
# Number of nodes = 20

# Allocations for Gpt_Ipw_StopTimer
#	?a4		pHwChannelConfig
# FUNC(void, GPT_CODE) Gpt_Ipw_EnableInterrupt
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         475,22
#$$ld
.L510:

#$$bf	Gpt_Ipw_EnableInterrupt,interprocedural,rasave,nostackparams
	.globl		Gpt_Ipw_EnableInterrupt
	.d2_cfa_start __cie
Gpt_Ipw_EnableInterrupt:
.Llo24:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pHwChannelConfig=r3 pHwChannelConfig=r3
	.d2prologue_end
# (
#     P2CONST(Gpt_HwChannelConfigType, AUTOMATIC,GPT_APPL_CONST) pHwChannelConfig
# )
# {
#     switch(pHwChannelConfig->Gpt_u8HwModule)
	.d2line		480
	lbz		r6,1(r3)		# pHwChannelConfig=r3
	se_cmpi		r6,8
	bc		1,2,.L440	# eq
	cmpi		0,0,r6,72
	bc		1,2,.L438	# eq
	b		.L437
.L438:
#     {
# #if (GPT_EMIOS_USED == STD_ON)
#         case GPT_EMIOS_MODULE:
#         {
#             Gpt_eMios_EnableInterrupt(pHwChannelConfig->Gpt_u8HwChannel);
	.d2line		485
	lbz		r3,0(r3)		# pHwChannelConfig=r3 pHwChannelConfig=r3
.Llo25:
	bl		Gpt_eMios_EnableInterrupt
	b		.L437
.L440:
#         }
#         break;
# #endif
# 
# #if (GPT_PIT_USED == STD_ON)
#         case GPT_PIT_MODULE:
#         {
#             Gpt_Pit_EnableInterrupt(pHwChannelConfig->Gpt_u8HwChannel);
	.d2line		493
.Llo26:
	lbz		r3,0(r3)		# pHwChannelConfig=r3 pHwChannelConfig=r3
.Llo27:
	bl		Gpt_Pit_EnableInterrupt
.L437:
#         }
#         break;
# #endif
# 
# #if (GPT_STM_USED == STD_ON)
#         case GPT_STM_MODULE:
#             /*For a STM enabled channel the interrupts are allways activated*/
#         break;
# #endif
# 
#         default:
#             /*This switch branch is empty because it shall not be executed for normal behaviour */
#         break;
#     }
# 
#     return;
# }
	.d2line		510
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
.L511:
	.type		Gpt_Ipw_EnableInterrupt,@function
	.size		Gpt_Ipw_EnableInterrupt,.-Gpt_Ipw_EnableInterrupt
# Number of nodes = 20

# Allocations for Gpt_Ipw_EnableInterrupt
#	?a4		pHwChannelConfig
# FUNC(void, GPT_CODE) Gpt_Ipw_DeInit
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         524,22
#$$ld
.L516:

#$$bf	Gpt_Ipw_DeInit,interprocedural,rasave,nostackparams
	.globl		Gpt_Ipw_DeInit
	.d2_cfa_start __cie
Gpt_Ipw_DeInit:
.Llo28:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pHwChannelConfig=r3 pHwChannelConfig=r3
	.d2prologue_end
# (
#     P2CONST(Gpt_HwChannelConfigType, AUTOMATIC,GPT_APPL_CONST) pHwChannelConfig
# )
# {
#     switch(pHwChannelConfig->Gpt_u8HwModule)
	.d2line		529
	lbz		r6,1(r3)		# pHwChannelConfig=r3
	se_cmpi		r6,8
	bc		1,2,.L448	# eq
	cmpi		0,0,r6,72
	bc		1,2,.L446	# eq
	b		.L445
.L446:
#     {
# #if (GPT_EMIOS_USED == STD_ON)
#         case GPT_EMIOS_MODULE:
#         {
#             Gpt_eMios_DeInit(pHwChannelConfig->Gpt_u8HwChannel);
	.d2line		534
	lbz		r3,0(r3)		# pHwChannelConfig=r3 pHwChannelConfig=r3
.Llo29:
	bl		Gpt_eMios_DeInit
	b		.L445
.L448:
#         }
#         break;
# #endif
# 
# #if (GPT_PIT_USED == STD_ON)
#         case GPT_PIT_MODULE:
#         {
#             Gpt_Pit_DeInit(pHwChannelConfig->Gpt_u8HwChannel);
	.d2line		542
.Llo30:
	lbz		r3,0(r3)		# pHwChannelConfig=r3 pHwChannelConfig=r3
.Llo31:
	bl		Gpt_Pit_DeInit
.L445:
#         }
#         break;
# #endif
# 
# #if (GPT_STM_USED == STD_ON)
#         case GPT_STM_MODULE:
#         {
#             Gpt_Stm_DeInit(pHwChannelConfig->Gpt_u8HwChannel);
#         }
#         break;
# #endif
#         default:
#             /*This switch branch is empty because it shall not be executed for normal behaviour */
#         break;
#     }
# 
#     return;
# }
	.d2line		560
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
.L517:
	.type		Gpt_Ipw_DeInit,@function
	.size		Gpt_Ipw_DeInit,.-Gpt_Ipw_DeInit
# Number of nodes = 20

# Allocations for Gpt_Ipw_DeInit
#	?a4		pHwChannelConfig
# FUNC(void, GPT_CODE) Gpt_Ipw_DisableInterrupt
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         577,22
#$$ld
.L522:

#$$bf	Gpt_Ipw_DisableInterrupt,interprocedural,rasave,nostackparams
	.globl		Gpt_Ipw_DisableInterrupt
	.d2_cfa_start __cie
Gpt_Ipw_DisableInterrupt:
.Llo32:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pHwChannelConfig=r3 pHwChannelConfig=r3
	.d2prologue_end
# (
#     P2CONST(Gpt_HwChannelConfigType, AUTOMATIC,GPT_APPL_CONST) pHwChannelConfig
# )
# {
#     switch(pHwChannelConfig->Gpt_u8HwModule)
	.d2line		582
	lbz		r6,1(r3)		# pHwChannelConfig=r3
	se_cmpi		r6,8
	bc		1,2,.L456	# eq
	cmpi		0,0,r6,72
	bc		1,2,.L454	# eq
	b		.L453
.L454:
#     {
# #if (GPT_EMIOS_USED == STD_ON)
#         case GPT_EMIOS_MODULE:
#         {
#             Gpt_eMios_DisableInterrupt(pHwChannelConfig->Gpt_u8HwChannel);
	.d2line		587
	lbz		r3,0(r3)		# pHwChannelConfig=r3 pHwChannelConfig=r3
.Llo33:
	bl		Gpt_eMios_DisableInterrupt
	b		.L453
.L456:
#         }
#         break;
# #endif
# 
# #if (GPT_PIT_USED == STD_ON)
#         case GPT_PIT_MODULE:
#         {
#             Gpt_Pit_DisableInterrupt(pHwChannelConfig->Gpt_u8HwChannel);
	.d2line		595
.Llo34:
	lbz		r3,0(r3)		# pHwChannelConfig=r3 pHwChannelConfig=r3
.Llo35:
	bl		Gpt_Pit_DisableInterrupt
.L453:
#         }
#         break;
# #endif
# #if (GPT_STM_USED == STD_ON)
#         case GPT_STM_MODULE:
#             /*For a STM enabled channel the interrupts are allways activated*/
#         break;
# #endif
#         default:
#             /*This switch branch is empty because it shall not be executed for normal behaviour */
#         break;
#     }
# 
#     return;
# }
	.d2line		610
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
.L523:
	.type		Gpt_Ipw_DisableInterrupt,@function
	.size		Gpt_Ipw_DisableInterrupt,.-Gpt_Ipw_DisableInterrupt
# Number of nodes = 20

# Allocations for Gpt_Ipw_DisableInterrupt
#	?a4		pHwChannelConfig

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L530:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L526:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Gpt.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L465:
.L473:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_Ipw.c"
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
	.uleb128	7
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
	.uleb128	8
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
	.uleb128	38
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_Ipw.c"
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
.L462:
	.4byte		.L463-.L461
.L461:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L467-.L462
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_Ipw.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L464
	.4byte		.L465
	.4byte		.L468
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L474:
	.sleb128	2
	.4byte		.L470-.L462
	.byte		"Gpt_Ipw_Init"
	.byte		0
	.4byte		.L473
	.uleb128	224
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L471
	.4byte		.L472
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L473
	.uleb128	224
	.uleb128	22
	.byte		"pHwChannelConfig"
	.byte		0
	.4byte		.L475
	.4byte		.L479
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L470:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L487:
	.sleb128	4
	.4byte		.L481-.L462
	.byte		"Gpt_Ipw_GetTimeElapsed"
	.byte		0
	.4byte		.L473
	.uleb128	330
	.uleb128	31
	.4byte		.L484
	.byte		0x1
	.byte		0x1
	.4byte		.L482
	.4byte		.L483
	.sleb128	3
	.4byte		.L473
	.uleb128	330
	.uleb128	31
	.byte		"pHwChannelConfig"
	.byte		0
	.4byte		.L475
	.4byte		.L488
	.sleb128	3
	.4byte		.L473
	.uleb128	330
	.uleb128	31
	.byte		"pReturnHwChannelInfo"
	.byte		0
	.4byte		.L489
	.4byte		.L492
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L493:
	.sleb128	5
	.4byte		.L473
	.uleb128	336
	.uleb128	28
	.byte		"u32ReturnValue"
	.byte		0
	.4byte		.L485
	.4byte		.L494
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L481:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L499:
	.sleb128	2
	.4byte		.L496-.L462
	.byte		"Gpt_Ipw_StartTimer"
	.byte		0
	.4byte		.L473
	.uleb128	381
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L497
	.4byte		.L498
	.sleb128	3
	.4byte		.L473
	.uleb128	381
	.uleb128	22
	.byte		"pHwChannelConfig"
	.byte		0
	.4byte		.L475
	.4byte		.L500
	.sleb128	3
	.4byte		.L473
	.uleb128	381
	.uleb128	22
	.byte		"uValue"
	.byte		0
	.4byte		.L484
	.4byte		.L501
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L496:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L506:
	.sleb128	2
	.4byte		.L503-.L462
	.byte		"Gpt_Ipw_StopTimer"
	.byte		0
	.4byte		.L473
	.uleb128	427
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L504
	.4byte		.L505
	.sleb128	3
	.4byte		.L473
	.uleb128	427
	.uleb128	22
	.byte		"pHwChannelConfig"
	.byte		0
	.4byte		.L475
	.4byte		.L507
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L503:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L512:
	.sleb128	2
	.4byte		.L509-.L462
	.byte		"Gpt_Ipw_EnableInterrupt"
	.byte		0
	.4byte		.L473
	.uleb128	475
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L510
	.4byte		.L511
	.sleb128	3
	.4byte		.L473
	.uleb128	475
	.uleb128	22
	.byte		"pHwChannelConfig"
	.byte		0
	.4byte		.L475
	.4byte		.L513
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L509:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L518:
	.sleb128	2
	.4byte		.L515-.L462
	.byte		"Gpt_Ipw_DeInit"
	.byte		0
	.4byte		.L473
	.uleb128	524
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L516
	.4byte		.L517
	.sleb128	3
	.4byte		.L473
	.uleb128	524
	.uleb128	22
	.byte		"pHwChannelConfig"
	.byte		0
	.4byte		.L475
	.4byte		.L519
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L515:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L524:
	.sleb128	2
	.4byte		.L521-.L462
	.byte		"Gpt_Ipw_DisableInterrupt"
	.byte		0
	.4byte		.L473
	.uleb128	577
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L522
	.4byte		.L523
	.sleb128	3
	.4byte		.L473
	.uleb128	577
	.uleb128	22
	.byte		"pHwChannelConfig"
	.byte		0
	.4byte		.L475
	.4byte		.L525
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L521:
	.section	.debug_info,,n
.L491:
	.sleb128	6
	.4byte		.L526
	.uleb128	336
	.uleb128	1
	.4byte		.L527-.L2
	.uleb128	8
	.section	.debug_info,,n
.L403:
	.sleb128	7
	.byte		"bChannelRollover"
	.byte		0
	.4byte		.L528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L404:
	.sleb128	7
	.byte		"uTargetTime"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L527:
.L478:
	.sleb128	6
	.4byte		.L530
	.uleb128	34
	.uleb128	14
	.4byte		.L531-.L2
	.uleb128	5
.L389:
	.sleb128	7
	.byte		"Gpt_u8HwChannel"
	.byte		0
	.4byte		.L532
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L390:
	.sleb128	7
	.byte		"Gpt_u8HwModule"
	.byte		0
	.4byte		.L532
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L391:
	.sleb128	7
	.byte		"Gpt_bFreezeEnable"
	.byte		0
	.4byte		.L528
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L392:
	.sleb128	7
	.byte		"Gpt_uPrescaler"
	.byte		0
	.4byte		.L533
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L393:
	.sleb128	7
	.byte		"Gpt_uStmClockSource"
	.byte		0
	.4byte		.L533
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L531:
	.section	.debug_info,,n
.L477:
	.sleb128	8
	.byte		"Gpt_HwChannelConfigType"
	.byte		0
	.4byte		.L478
	.section	.debug_info,,n
.L476:
	.sleb128	9
	.4byte		.L477
	.section	.debug_info,,n
.L475:
	.sleb128	10
	.4byte		.L476
	.section	.debug_info,,n
.L486:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L485:
	.sleb128	8
	.byte		"uint32"
	.byte		0
	.4byte		.L486
.L484:
	.sleb128	8
	.byte		"Gpt_ValueType"
	.byte		0
	.4byte		.L485
.L490:
	.sleb128	8
	.byte		"Gpt_HwChannelInfoType"
	.byte		0
	.4byte		.L491
.L489:
	.sleb128	10
	.4byte		.L490
.L529:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L528:
	.sleb128	8
	.byte		"boolean"
	.byte		0
	.4byte		.L529
.L532:
	.sleb128	8
	.byte		"uint8"
	.byte		0
	.4byte		.L529
.L533:
	.sleb128	8
	.byte		"Gpt_PrescalerType"
	.byte		0
	.4byte		.L532
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L467:
	.sleb128	0
.L463:

	.section	.debug_loc,,n
	.align	0
.L479:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L488:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L492:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo9),4
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo10),4
	.d2locend
.L494:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),5
	.d2locend
.L500:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locend
.L501:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo17),4
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo18),4
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo19),4
	.d2locend
.L507:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locend
.L513:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locend
.L519:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),3
	.d2locend
.L525:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),3
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Gpt_Ipw_DisableInterrupt"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Gpt_Pit_DisableInterrupt","Gpt_eMios_DisableInterrupt"
	.wrcm.end
	.wrcm.nelem "Gpt_Ipw_DeInit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Gpt_Pit_DeInit","Gpt_eMios_DeInit"
	.wrcm.end
	.wrcm.nelem "Gpt_Ipw_EnableInterrupt"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Gpt_Pit_EnableInterrupt","Gpt_eMios_EnableInterrupt"
	.wrcm.end
	.wrcm.nelem "Gpt_Ipw_StopTimer"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Gpt_Pit_StopTimer","Gpt_eMios_StopTimer"
	.wrcm.end
	.wrcm.nelem "Gpt_Ipw_StartTimer"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Gpt_Pit_StartTimer","Gpt_eMios_StartTimer"
	.wrcm.end
	.wrcm.nelem "Gpt_Ipw_GetTimeElapsed"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Gpt_Pit_GetTimeElapsed","Gpt_eMios_GetTimeElapsed"
	.wrcm.end
	.wrcm.nelem "Gpt_Ipw_Init"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Gpt_Pit_Init","Gpt_eMios_Init"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Gpt_Ipw.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Gpt_Ipw.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Gpt_Ipw.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Gpt_Ipw.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Gpt_Ipw.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Gpt_Ipw.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Gpt\ssc\make\..\..\generator\integration_package\src\Gpt_Ipw.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
