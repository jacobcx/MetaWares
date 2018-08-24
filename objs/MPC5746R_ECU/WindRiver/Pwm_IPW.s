#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Pwm_IPW.c"
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
# FUNC (void, PWM_CODE) Pwm_Ipw_Init
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Pwm_IPW.c"
        .d2line         208,23
#$$ld
.L435:

#$$bf	Pwm_Ipw_Init,interprocedural,rasave,nostackparams
	.globl		Pwm_Ipw_Init
	.d2_cfa_start __cie
Pwm_Ipw_Init:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pIpConfig=r3 pIpConfig=r3
	.d2prologue_end
# (   
#     CONSTP2CONST(Pwm_IpConfigType, AUTOMATIC, PWM_APPL_CONST) pIpConfig
# )
# {
#     if (NULL_PTR != pIpConfig->peMiosIpConfig)
	.d2line		213
	lwz		r0,0(r3)		# pIpConfig=r3
	se_cmpi		r0,0
	bc		1,2,.L417	# eq
#     {
#         /* Call EMIOS IP init function */
#         Pwm_eMios_Init(pIpConfig->peMiosIpConfig);
	.d2line		216
	lwz		r3,0(r3)		# pIpConfig=r3 pIpConfig=r3
.Llo2:
	bl		Pwm_eMios_Init
.L417:
#     }
# }
	.d2line		218
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
.L436:
	.type		Pwm_Ipw_Init,@function
	.size		Pwm_Ipw_Init,.-Pwm_Ipw_Init
# Number of nodes = 9

# Allocations for Pwm_Ipw_Init
#	?a4		pIpConfig
# FUNC (void, PWM_CODE) Pwm_Ipw_DeInit
	.align		2
	.section	.text_vle
        .d2line         233,23
#$$ld
.L447:

#$$bf	Pwm_Ipw_DeInit,interprocedural,rasave,nostackparams
	.globl		Pwm_Ipw_DeInit
	.d2_cfa_start __cie
Pwm_Ipw_DeInit:
.Llo3:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pIpConfig=r3 pIpConfig=r3
	.d2prologue_end
# (
#     CONSTP2CONST(Pwm_IpConfigType, AUTOMATIC, PWM_APPL_CONST) pIpConfig
# )
# {
#     if (NULL_PTR != pIpConfig->peMiosIpConfig)
	.d2line		238
	lwz		r0,0(r3)		# pIpConfig=r3
	se_cmpi		r0,0
	bc		1,2,.L420	# eq
#     {
#         /* Call EMIOS IP deinit function */
#         Pwm_eMios_DeInit(pIpConfig->peMiosIpConfig);
	.d2line		241
	lwz		r3,0(r3)		# pIpConfig=r3 pIpConfig=r3
.Llo4:
	bl		Pwm_eMios_DeInit
.L420:
#     }
# }
	.d2line		243
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
.L448:
	.type		Pwm_Ipw_DeInit,@function
	.size		Pwm_Ipw_DeInit,.-Pwm_Ipw_DeInit
# Number of nodes = 9

# Allocations for Pwm_Ipw_DeInit
#	?a4		pIpConfig
# FUNC (void, PWM_CODE) Pwm_Ipw_SetDutyCycle
	.align		2
	.section	.text_vle
        .d2line         261,23
#$$ld
.L453:

#$$bf	Pwm_Ipw_SetDutyCycle,interprocedural,rasave,nostackparams
	.globl		Pwm_Ipw_SetDutyCycle
	.d2_cfa_start __cie
Pwm_Ipw_SetDutyCycle:
.Llo5:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r5,r5		# pIpConfig=r5 pIpConfig=r5
	.d2prologue_end
# (
#     VAR         (Pwm_ChannelType,  AUTOMATIC)                 nChannelNumber,
#     VAR         (uint16,           AUTOMATIC)                 u16DutyCycle,
#     CONSTP2CONST(Pwm_IpConfigType, AUTOMATIC, PWM_APPL_CONST) pIpConfig
# )
# {
#     Pwm_eMios_SetDutyCycle((*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig,
	.d2line		268
	lwz		r6,4(r5)		# pIpConfig=r5
	rlwinm		r3,r3,0,24,31		# nChannelNumber=r3 nChannelNumber=r3
	lbzx		r3,r6,r3		# nChannelNumber=r3
.Llo6:
	rlwinm		r4,r4,0,16,31		# u16DutyCycle=r4 u16DutyCycle=r4
.Llo7:
	lwz		r5,0(r5)		# pIpConfig=r5 pIpConfig=r5
.Llo8:
	bl		Pwm_eMios_SetDutyCycle
#                              u16DutyCycle,
#                              pIpConfig->peMiosIpConfig);
# }
	.d2line		271
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
.L454:
	.type		Pwm_Ipw_SetDutyCycle,@function
	.size		Pwm_Ipw_SetDutyCycle,.-Pwm_Ipw_SetDutyCycle
# Number of nodes = 18

# Allocations for Pwm_Ipw_SetDutyCycle
#	?a4		nChannelNumber
#	?a5		u16DutyCycle
#	?a6		pIpConfig
# FUNC (void, PWM_CODE) Pwm_Ipw_SetPeriodAndDuty
	.align		2
	.section	.text_vle
        .d2line         290,23
#$$ld
.L466:

#$$bf	Pwm_Ipw_SetPeriodAndDuty,interprocedural,rasave,nostackparams
	.globl		Pwm_Ipw_SetPeriodAndDuty
	.d2_cfa_start __cie
Pwm_Ipw_SetPeriodAndDuty:
.Llo9:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r6,r6		# pIpConfig=r6 pIpConfig=r6
	.d2prologue_end
# (
#     VAR         (Pwm_ChannelType,  AUTOMATIC)                 nChannelNumber,
#     VAR         (Pwm_PeriodType,   AUTOMATIC)                 nPeriod,
#     VAR         (uint16,           AUTOMATIC)                 u16DutyCycle,
#     CONSTP2CONST(Pwm_IpConfigType, AUTOMATIC, PWM_APPL_CONST) pIpConfig
# )
# {
#     Pwm_eMios_SetPeriodAndDuty((*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig,
	.d2line		298
	lwz		r7,4(r6)		# pIpConfig=r6
	rlwinm		r3,r3,0,24,31		# nChannelNumber=r3 nChannelNumber=r3
	lbzx		r3,r7,r3		# nChannelNumber=r3
.Llo10:
	rlwinm		r4,r4,0,16,31		# nPeriod=r4 nPeriod=r4
.Llo11:
	rlwinm		r5,r5,0,16,31		# u16DutyCycle=r5 u16DutyCycle=r5
.Llo12:
	lwz		r6,0(r6)		# pIpConfig=r6 pIpConfig=r6
.Llo13:
	bl		Pwm_eMios_SetPeriodAndDuty
#                                  nPeriod,
#                                  u16DutyCycle,
#                                  pIpConfig->peMiosIpConfig);
# }
	.d2line		302
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
.L467:
	.type		Pwm_Ipw_SetPeriodAndDuty,@function
	.size		Pwm_Ipw_SetPeriodAndDuty,.-Pwm_Ipw_SetPeriodAndDuty
# Number of nodes = 21

# Allocations for Pwm_Ipw_SetPeriodAndDuty
#	?a4		nChannelNumber
#	?a5		nPeriod
#	?a6		u16DutyCycle
#	?a7		pIpConfig
# FUNC (void, PWM_CODE) Pwm_Ipw_SetOutputToIdle
	.align		2
	.section	.text_vle
        .d2line         319,23
#$$ld
.L476:

#$$bf	Pwm_Ipw_SetOutputToIdle,interprocedural,rasave,nostackparams
	.globl		Pwm_Ipw_SetOutputToIdle
	.d2_cfa_start __cie
Pwm_Ipw_SetOutputToIdle:
.Llo14:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	.d2prologue_end
# (
#     VAR         (Pwm_ChannelType,  AUTOMATIC)                 nChannelNumber,
#     CONSTP2CONST(Pwm_IpConfigType, AUTOMATIC, PWM_APPL_CONST) pIpConfig
# )
# {
#     Pwm_eMios_SetOutputToIdle((*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig,
	.d2line		325
	lwz		r5,4(r4)		# pIpConfig=r4
	rlwinm		r3,r3,0,24,31		# nChannelNumber=r3 nChannelNumber=r3
	lbzx		r3,r5,r3		# nChannelNumber=r3
.Llo15:
	lwz		r4,0(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo16:
	bl		Pwm_eMios_SetOutputToIdle
#                                     pIpConfig->peMiosIpConfig);
# }
	.d2line		327
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
.L477:
	.type		Pwm_Ipw_SetOutputToIdle,@function
	.size		Pwm_Ipw_SetOutputToIdle,.-Pwm_Ipw_SetOutputToIdle
# Number of nodes = 15

# Allocations for Pwm_Ipw_SetOutputToIdle
#	?a4		nChannelNumber
#	?a5		pIpConfig
# FUNC(Pwm_OutputStateType,PWM_CODE) Pwm_Ipw_GetOutputState
	.align		2
	.section	.text_vle
        .d2line         342,36
#$$ld
.L483:

#$$bf	Pwm_Ipw_GetOutputState,interprocedural,rasave,nostackparams
	.globl		Pwm_Ipw_GetOutputState
	.d2_cfa_start __cie
Pwm_Ipw_GetOutputState:
.Llo17:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# nRetVal=r0
.Llo20:
	stw		r0,20(r1)		# nRetVal=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	.d2prologue_end
# (
#     VAR         (Pwm_ChannelType,  AUTOMATIC)                 nChannelNumber,
#     CONSTP2CONST(Pwm_IpConfigType, AUTOMATIC, PWM_APPL_CONST) pIpConfig
# )
# {
#     VAR(Pwm_OutputStateType, AUTOMATIC) nRetVal = PWM_LOW;
	.d2line		348
	diab.li		r0,0		# nRetVal=r0
# 
#     nRetVal = Pwm_eMios_GetOutputState((*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig,
	.d2line		350
.Llo21:
	lwz		r5,4(r4)		# pIpConfig=r4
	rlwinm		r3,r3,0,24,31		# nChannelNumber=r3 nChannelNumber=r3
	lbzx		r3,r5,r3		# nChannelNumber=r3
.Llo18:
	lwz		r4,0(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo19:
	bl		Pwm_eMios_GetOutputState
#                                         pIpConfig->peMiosIpConfig);
#     return nRetVal;
	.d2line		352
.Llo22:
	mr		r4,r3		# nRetVal=r4 nRetVal=r3
# }
	.d2line		353
	.d2epilogue_begin
	lwz		r0,20(r1)		# nRetVal=r0
	mtspr		lr,r0		# nRetVal=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo23:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L484:
	.type		Pwm_Ipw_GetOutputState,@function
	.size		Pwm_Ipw_GetOutputState,.-Pwm_Ipw_GetOutputState
# Number of nodes = 22

# Allocations for Pwm_Ipw_GetOutputState
#	?a4		nChannelNumber
#	?a5		pIpConfig
#	?a6		nRetVal
# FUNC(void,PWM_CODE) Pwm_Ipw_DisableNotification
	.align		2
	.section	.text_vle
        .d2line         368,21
#$$ld
.L494:

#$$bf	Pwm_Ipw_DisableNotification,interprocedural,rasave,nostackparams
	.globl		Pwm_Ipw_DisableNotification
	.d2_cfa_start __cie
Pwm_Ipw_DisableNotification:
.Llo24:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	.d2prologue_end
# (
#     VAR         (Pwm_ChannelType,  AUTOMATIC)                 nChannelNumber,
#     CONSTP2CONST(Pwm_IpConfigType, AUTOMATIC, PWM_APPL_CONST) pIpConfig
# )
# {
#     Pwm_eMios_DisableNotification((*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig,
	.d2line		374
	lwz		r5,4(r4)		# pIpConfig=r4
	rlwinm		r3,r3,0,24,31		# nChannelNumber=r3 nChannelNumber=r3
	lbzx		r3,r5,r3		# nChannelNumber=r3
.Llo25:
	lwz		r4,0(r4)		# pIpConfig=r4 pIpConfig=r4
.Llo26:
	bl		Pwm_eMios_DisableNotification
#                                     pIpConfig->peMiosIpConfig);
# }
	.d2line		376
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
.L495:
	.type		Pwm_Ipw_DisableNotification,@function
	.size		Pwm_Ipw_DisableNotification,.-Pwm_Ipw_DisableNotification
# Number of nodes = 15

# Allocations for Pwm_Ipw_DisableNotification
#	?a4		nChannelNumber
#	?a5		pIpConfig
# FUNC (void, PWM_CODE) Pwm_Ipw_EnableNotification
	.align		2
	.section	.text_vle
        .d2line         390,23
#$$ld
.L501:

#$$bf	Pwm_Ipw_EnableNotification,interprocedural,rasave,nostackparams
	.globl		Pwm_Ipw_EnableNotification
	.d2_cfa_start __cie
Pwm_Ipw_EnableNotification:
.Llo27:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r5,r5		# pIpConfig=r5 pIpConfig=r5
	.d2prologue_end
# (
#     VAR         (Pwm_ChannelType,           AUTOMATIC)                 nChannelNumber,
#     VAR         (Pwm_EdgeNotificationType,  AUTOMATIC)                 eNotification,
#     CONSTP2CONST(Pwm_IpConfigType,          AUTOMATIC, PWM_APPL_CONST) pIpConfig
# )
# {
#     Pwm_eMios_EnableNotification((*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig,
	.d2line		397
	lwz		r6,4(r5)		# pIpConfig=r5
	rlwinm		r3,r3,0,24,31		# nChannelNumber=r3 nChannelNumber=r3
	lbzx		r3,r6,r3		# nChannelNumber=r3
.Llo28:
	lwz		r5,0(r5)		# pIpConfig=r5 pIpConfig=r5
.Llo30:
	mr		r0,r4		# eNotification=r0 eNotification=r4
	bl		Pwm_eMios_EnableNotification
#                                        eNotification,
#                                        pIpConfig->peMiosIpConfig);
# }
	.d2line		400
	.d2epilogue_begin
.Llo29:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L502:
	.type		Pwm_Ipw_EnableNotification,@function
	.size		Pwm_Ipw_EnableNotification,.-Pwm_Ipw_EnableNotification
# Number of nodes = 17

# Allocations for Pwm_Ipw_EnableNotification
#	?a4		nChannelNumber
#	?a5		eNotification
#	?a6		pIpConfig
# FUNC (uint16, PWM_CODE) Pwm_Ipw_GetChannelState
	.align		2
	.section	.text_vle
        .d2line         416,25
#$$ld
.L511:

#$$bf	Pwm_Ipw_GetChannelState,interprocedural,rasave,nostackparams
	.globl		Pwm_Ipw_GetChannelState
	.d2_cfa_start __cie
Pwm_Ipw_GetChannelState:
.Llo31:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# dutyCycle=r0
.Llo34:
	stw		r0,20(r1)		# dutyCycle=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r4,r4		# pIpConfig=r4 pIpConfig=r4
	.d2prologue_end
# (
#     VAR         (Pwm_ChannelType,           AUTOMATIC)                 nChannelNumber,
#     CONSTP2CONST(Pwm_IpConfigType,          AUTOMATIC, PWM_APPL_CONST) pIpConfig
# )
# {
#     VAR(uint16, AUTOMATIC) dutyCycle = (uint16)0x00;
	.d2line		422
	diab.li		r0,0		# dutyCycle=r0
#     
#     dutyCycle = Pwm_eMios_GetChannelState((*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig);
	.d2line		424
.Llo35:
	lwz		r4,4(r4)		# pIpConfig=r4 pIpConfig=r4
	rlwinm		r3,r3,0,24,31		# nChannelNumber=r3 nChannelNumber=r3
	lbzx		r3,r4,r3		# nChannelNumber=r3 pIpConfig=r4
.Llo32:
	bl		Pwm_eMios_GetChannelState
#     return dutyCycle;
	.d2line		425
.Llo33:
	rlwinm		r3,r3,0,16,31		# dutyCycle=r3 dutyCycle=r3
# }
	.d2line		426
	.d2epilogue_begin
.Llo36:
	lwz		r0,20(r1)		# dutyCycle=r0
	mtspr		lr,r0		# dutyCycle=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L512:
	.type		Pwm_Ipw_GetChannelState,@function
	.size		Pwm_Ipw_GetChannelState,.-Pwm_Ipw_GetChannelState
# Number of nodes = 19

# Allocations for Pwm_Ipw_GetChannelState
#	?a4		nChannelNumber
#	?a5		pIpConfig
#	?a6		dutyCycle
# FUNC (void, PWM_CODE) Pwm_Ipw_SetCounterBus
	.align		2
	.section	.text_vle
        .d2line         634,23
#$$ld
.L520:

#$$bf	Pwm_Ipw_SetCounterBus,interprocedural,rasave,nostackparams
	.globl		Pwm_Ipw_SetCounterBus
	.d2_cfa_start __cie
Pwm_Ipw_SetCounterBus:
.Llo37:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r0,r4		# u32Bus=r0 u32Bus=r4
.Llo39:
	mr		r5,r5		# pIpConfig=r5 pIpConfig=r5
	.d2prologue_end
# (
#     VAR         (Pwm_ChannelType,  AUTOMATIC)                 nChannelNumber,
#     VAR         (uint32,           AUTOMATIC)                 u32Bus,
#     CONSTP2CONST(Pwm_IpConfigType, AUTOMATIC, PWM_APPL_CONST) pIpConfig
# )
# {
#     Pwm_eMios_SetCounterBus((*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig,
	.d2line		641
.Llo40:
	lwz		r4,4(r5)		# pIpConfig=r5
	rlwinm		r3,r3,0,24,31		# nChannelNumber=r3 nChannelNumber=r3
	lbzx		r3,r4,r3		# nChannelNumber=r3
.Llo38:
	lwz		r4,0(r5)		# pIpConfig=r5
	mr		r5,r0		# u32Bus=r5 u32Bus=r0
.Llo42:
	bl		Pwm_eMios_SetCounterBus
#                               pIpConfig->peMiosIpConfig,
#                               u32Bus);
# }
	.d2line		644
	.d2epilogue_begin
.Llo41:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L521:
	.type		Pwm_Ipw_SetCounterBus,@function
	.size		Pwm_Ipw_SetCounterBus,.-Pwm_Ipw_SetCounterBus
# Number of nodes = 17

# Allocations for Pwm_Ipw_SetCounterBus
#	?a4		nChannelNumber
#	?a5		u32Bus
#	?a6		pIpConfig
# FUNC (void, PWM_CODE) Pwm_Ipw_SetChannelOutput
	.align		2
	.section	.text_vle
        .d2line         657,23
#$$ld
.L530:

#$$bf	Pwm_Ipw_SetChannelOutput,interprocedural,rasave,nostackparams
	.globl		Pwm_Ipw_SetChannelOutput
	.d2_cfa_start __cie
Pwm_Ipw_SetChannelOutput:
.Llo43:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nChannelNumber=r3 nChannelNumber=r3
	mr		r0,r4		# eState=r0 eState=r4
.Llo45:
	mr		r5,r5		# pIpConfig=r5 pIpConfig=r5
	.d2prologue_end
# (
#     VAR         (Pwm_ChannelType,  AUTOMATIC)                 nChannelNumber,
#     VAR         (Pwm_StateType,    AUTOMATIC)                 eState,
#     CONSTP2CONST(Pwm_IpConfigType, AUTOMATIC, PWM_APPL_CONST) pIpConfig
# )
# {
#     Pwm_eMios_SetChannelOutput((*pIpConfig->pIpChannelsConfig)[nChannelNumber].u8IdxChannelConfig,
	.d2line		664
.Llo46:
	lwz		r4,4(r5)		# pIpConfig=r5
	rlwinm		r3,r3,0,24,31		# nChannelNumber=r3 nChannelNumber=r3
	lbzx		r3,r4,r3		# nChannelNumber=r3
.Llo44:
	lwz		r4,0(r5)		# pIpConfig=r5
	mr		r5,r0		# eState=r5 eState=r0
.Llo48:
	bl		Pwm_eMios_SetChannelOutput
#                               pIpConfig->peMiosIpConfig, eState);
# }
	.d2line		666
	.d2epilogue_begin
.Llo47:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L531:
	.type		Pwm_Ipw_SetChannelOutput,@function
	.size		Pwm_Ipw_SetChannelOutput,.-Pwm_Ipw_SetChannelOutput
# Number of nodes = 17

# Allocations for Pwm_Ipw_SetChannelOutput
#	?a4		nChannelNumber
#	?a5		eState
#	?a6		pIpConfig
# FUNC (void, PWM_CODE) Pwm_Ipw_BufferTransferEnableDisable
	.align		2
	.section	.text_vle
        .d2line         711,23
#$$ld
.L540:

#$$bf	Pwm_Ipw_BufferTransferEnableDisable,interprocedural,rasave,nostackparams
	.globl		Pwm_Ipw_BufferTransferEnableDisable
	.d2_cfa_start __cie
Pwm_Ipw_BufferTransferEnableDisable:
.Llo49:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# /** @violates @ref Pwm_IPW_C_REF_5 Identifier exceeds 31 chars. */
# (
#     VAR         (uint8,            AUTOMATIC)                 u8ModuleIndex,
#     VAR         (uint32,           AUTOMATIC)                 u32ChannelMasks
# )
# {
#     Pwm_eMios_BufferTransferEnableDisable(u8ModuleIndex, u32ChannelMasks);
	.d2line		718
	rlwinm		r3,r3,0,24,31		# u8ModuleIndex=r3 u8ModuleIndex=r3
.Llo50:
	mr		r0,r4		# u32ChannelMasks=r0 u32ChannelMasks=r4
	bl		Pwm_eMios_BufferTransferEnableDisable
# }
	.d2line		719
	.d2epilogue_begin
.Llo51:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L541:
	.type		Pwm_Ipw_BufferTransferEnableDisable,@function
	.size		Pwm_Ipw_BufferTransferEnableDisable,.-Pwm_Ipw_BufferTransferEnableDisable
# Number of nodes = 7

# Allocations for Pwm_Ipw_BufferTransferEnableDisable
#	?a4		u8ModuleIndex
#	?a5		u32ChannelMasks

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L560:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Pwm_Types.h"
.L545:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Pwm_Ipw_Types.h"
.L437:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Pwm_IPW.c"
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
	.uleb128	9
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
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
	.uleb128	14
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	33
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Pwm_IPW.c"
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
.L438:
	.sleb128	2
	.4byte		.L434-.L2
	.byte		"Pwm_Ipw_Init"
	.byte		0
	.4byte		.L437
	.uleb128	208
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L435
	.4byte		.L436
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L437
	.uleb128	208
	.uleb128	23
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L439
	.4byte		.L444
	.section	.debug_info,,n
	.sleb128	0
.L434:
	.section	.debug_info,,n
.L449:
	.sleb128	2
	.4byte		.L446-.L2
	.byte		"Pwm_Ipw_DeInit"
	.byte		0
	.4byte		.L437
	.uleb128	233
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L447
	.4byte		.L448
	.sleb128	3
	.4byte		.L437
	.uleb128	233
	.uleb128	23
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L439
	.4byte		.L450
	.section	.debug_info,,n
	.sleb128	0
.L446:
	.section	.debug_info,,n
.L455:
	.sleb128	2
	.4byte		.L452-.L2
	.byte		"Pwm_Ipw_SetDutyCycle"
	.byte		0
	.4byte		.L437
	.uleb128	261
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L453
	.4byte		.L454
	.sleb128	3
	.4byte		.L437
	.uleb128	261
	.uleb128	23
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L456
	.4byte		.L459
	.sleb128	3
	.4byte		.L437
	.uleb128	261
	.uleb128	23
	.byte		"u16DutyCycle"
	.byte		0
	.4byte		.L460
	.4byte		.L462
	.sleb128	3
	.4byte		.L437
	.uleb128	261
	.uleb128	23
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L439
	.4byte		.L463
	.section	.debug_info,,n
	.sleb128	0
.L452:
	.section	.debug_info,,n
.L468:
	.sleb128	2
	.4byte		.L465-.L2
	.byte		"Pwm_Ipw_SetPeriodAndDuty"
	.byte		0
	.4byte		.L437
	.uleb128	290
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L466
	.4byte		.L467
	.sleb128	3
	.4byte		.L437
	.uleb128	290
	.uleb128	23
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L456
	.4byte		.L469
	.sleb128	3
	.4byte		.L437
	.uleb128	290
	.uleb128	23
	.byte		"nPeriod"
	.byte		0
	.4byte		.L470
	.4byte		.L471
	.sleb128	3
	.4byte		.L437
	.uleb128	290
	.uleb128	23
	.byte		"u16DutyCycle"
	.byte		0
	.4byte		.L460
	.4byte		.L472
	.sleb128	3
	.4byte		.L437
	.uleb128	290
	.uleb128	23
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L439
	.4byte		.L473
	.section	.debug_info,,n
	.sleb128	0
.L465:
	.section	.debug_info,,n
.L478:
	.sleb128	2
	.4byte		.L475-.L2
	.byte		"Pwm_Ipw_SetOutputToIdle"
	.byte		0
	.4byte		.L437
	.uleb128	319
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L476
	.4byte		.L477
	.sleb128	3
	.4byte		.L437
	.uleb128	319
	.uleb128	23
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L456
	.4byte		.L479
	.sleb128	3
	.4byte		.L437
	.uleb128	319
	.uleb128	23
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L439
	.4byte		.L480
	.section	.debug_info,,n
	.sleb128	0
.L475:
	.section	.debug_info,,n
.L487:
	.sleb128	4
	.4byte		.L482-.L2
	.byte		"Pwm_Ipw_GetOutputState"
	.byte		0
	.4byte		.L437
	.uleb128	342
	.uleb128	36
	.4byte		.L485
	.byte		0x1
	.byte		0x1
	.4byte		.L483
	.4byte		.L484
	.sleb128	3
	.4byte		.L437
	.uleb128	342
	.uleb128	36
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L456
	.4byte		.L488
	.sleb128	3
	.4byte		.L437
	.uleb128	342
	.uleb128	36
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L439
	.4byte		.L489
	.section	.debug_info,,n
.L490:
	.sleb128	5
	.4byte		.L437
	.uleb128	348
	.uleb128	41
	.byte		"nRetVal"
	.byte		0
	.4byte		.L485
	.4byte		.L491
	.section	.debug_info,,n
	.sleb128	0
.L482:
	.section	.debug_info,,n
.L496:
	.sleb128	2
	.4byte		.L493-.L2
	.byte		"Pwm_Ipw_DisableNotification"
	.byte		0
	.4byte		.L437
	.uleb128	368
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L494
	.4byte		.L495
	.sleb128	3
	.4byte		.L437
	.uleb128	368
	.uleb128	21
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L456
	.4byte		.L497
	.sleb128	3
	.4byte		.L437
	.uleb128	368
	.uleb128	21
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L439
	.4byte		.L498
	.section	.debug_info,,n
	.sleb128	0
.L493:
	.section	.debug_info,,n
.L503:
	.sleb128	2
	.4byte		.L500-.L2
	.byte		"Pwm_Ipw_EnableNotification"
	.byte		0
	.4byte		.L437
	.uleb128	390
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L501
	.4byte		.L502
	.sleb128	3
	.4byte		.L437
	.uleb128	390
	.uleb128	23
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L456
	.4byte		.L504
	.sleb128	3
	.4byte		.L437
	.uleb128	390
	.uleb128	23
	.byte		"eNotification"
	.byte		0
	.4byte		.L505
	.4byte		.L507
	.sleb128	3
	.4byte		.L437
	.uleb128	390
	.uleb128	23
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L439
	.4byte		.L508
	.section	.debug_info,,n
	.sleb128	0
.L500:
	.section	.debug_info,,n
.L513:
	.sleb128	4
	.4byte		.L510-.L2
	.byte		"Pwm_Ipw_GetChannelState"
	.byte		0
	.4byte		.L437
	.uleb128	416
	.uleb128	25
	.4byte		.L460
	.byte		0x1
	.byte		0x1
	.4byte		.L511
	.4byte		.L512
	.sleb128	3
	.4byte		.L437
	.uleb128	416
	.uleb128	25
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L456
	.4byte		.L514
	.sleb128	3
	.4byte		.L437
	.uleb128	416
	.uleb128	25
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L439
	.4byte		.L515
.L516:
	.sleb128	5
	.4byte		.L437
	.uleb128	422
	.uleb128	28
	.byte		"dutyCycle"
	.byte		0
	.4byte		.L460
	.4byte		.L517
	.section	.debug_info,,n
	.sleb128	0
.L510:
	.section	.debug_info,,n
.L522:
	.sleb128	2
	.4byte		.L519-.L2
	.byte		"Pwm_Ipw_SetCounterBus"
	.byte		0
	.4byte		.L437
	.uleb128	634
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L520
	.4byte		.L521
	.sleb128	3
	.4byte		.L437
	.uleb128	634
	.uleb128	23
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L456
	.4byte		.L523
	.sleb128	3
	.4byte		.L437
	.uleb128	634
	.uleb128	23
	.byte		"u32Bus"
	.byte		0
	.4byte		.L524
	.4byte		.L526
	.sleb128	3
	.4byte		.L437
	.uleb128	634
	.uleb128	23
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L439
	.4byte		.L527
	.section	.debug_info,,n
	.sleb128	0
.L519:
	.section	.debug_info,,n
.L532:
	.sleb128	2
	.4byte		.L529-.L2
	.byte		"Pwm_Ipw_SetChannelOutput"
	.byte		0
	.4byte		.L437
	.uleb128	657
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L530
	.4byte		.L531
	.sleb128	3
	.4byte		.L437
	.uleb128	657
	.uleb128	23
	.byte		"nChannelNumber"
	.byte		0
	.4byte		.L456
	.4byte		.L533
	.sleb128	3
	.4byte		.L437
	.uleb128	657
	.uleb128	23
	.byte		"eState"
	.byte		0
	.4byte		.L534
	.4byte		.L536
	.sleb128	3
	.4byte		.L437
	.uleb128	657
	.uleb128	23
	.byte		"pIpConfig"
	.byte		0
	.4byte		.L439
	.4byte		.L537
	.section	.debug_info,,n
	.sleb128	0
.L529:
	.section	.debug_info,,n
.L542:
	.sleb128	2
	.4byte		.L539-.L2
	.byte		"Pwm_Ipw_BufferTransferEnableDisable"
	.byte		0
	.4byte		.L437
	.uleb128	711
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L540
	.4byte		.L541
	.sleb128	3
	.4byte		.L437
	.uleb128	711
	.uleb128	23
	.byte		"u8ModuleIndex"
	.byte		0
	.4byte		.L457
	.4byte		.L543
	.sleb128	3
	.4byte		.L437
	.uleb128	711
	.uleb128	23
	.byte		"u32ChannelMasks"
	.byte		0
	.4byte		.L524
	.4byte		.L544
	.section	.debug_info,,n
	.sleb128	0
.L539:
	.section	.debug_info,,n
.L443:
	.sleb128	6
	.4byte		.L545
	.uleb128	149
	.uleb128	1
	.4byte		.L546-.L2
	.uleb128	8
	.section	.debug_info,,n
.L240:
	.sleb128	7
	.byte		"peMiosIpConfig"
	.byte		0
	.4byte		.L547
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L241:
	.sleb128	7
	.byte		"pIpChannelsConfig"
	.byte		0
	.4byte		.L552
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L546:
.L557:
	.sleb128	6
	.4byte		.L545
	.uleb128	149
	.uleb128	1
	.4byte		.L558-.L2
	.uleb128	1
.L239:
	.sleb128	7
	.byte		"u8IdxChannelConfig"
	.byte		0
	.4byte		.L559
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L558:
.L551:
	.sleb128	6
	.4byte		.L560
	.uleb128	148
	.uleb128	1
	.4byte		.L561-.L2
	.uleb128	8
.L237:
	.sleb128	7
	.byte		"u8NumChannels"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L238:
	.sleb128	7
	.byte		"pChannelsConfig"
	.byte		0
	.4byte		.L564
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L561:
.L569:
	.sleb128	6
	.4byte		.L560
	.uleb128	148
	.uleb128	1
	.4byte		.L570-.L2
	.uleb128	24
.L228:
	.sleb128	7
	.byte		"ePwmPolarity"
	.byte		0
	.4byte		.L571
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L229:
	.sleb128	7
	.byte		"ePwmIdleState"
	.byte		0
	.4byte		.L571
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L230:
	.sleb128	7
	.byte		"u16PwmDefaultDutyCycle"
	.byte		0
	.4byte		.L572
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L231:
	.sleb128	7
	.byte		"nPwmDefaultPeriod"
	.byte		0
	.4byte		.L573
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L232:
	.sleb128	7
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L233:
	.sleb128	7
	.byte		"u32ControlValue"
	.byte		0
	.4byte		.L574
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L234:
	.sleb128	7
	.byte		"nPwmOffset"
	.byte		0
	.4byte		.L573
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L235:
	.sleb128	7
	.byte		"u8MasterMode"
	.byte		0
	.4byte		.L559
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L236:
	.sleb128	7
	.byte		"bPwmOffsetTriggerDelay"
	.byte		0
	.4byte		.L576
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
	.sleb128	0
.L570:
	.section	.debug_info,,n
.L535:
	.sleb128	8
	.4byte		.L545
	.uleb128	149
	.uleb128	1
	.4byte		.L578-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	9
	.byte		"PWM_ACTIVE"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"PWM_INACTIVE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L578:
.L506:
	.sleb128	8
	.4byte		.L560
	.uleb128	148
	.uleb128	1
	.4byte		.L579-.L2
	.uleb128	4
	.sleb128	9
	.byte		"PWM_RISING_EDGE"
	.byte		0
	.sleb128	1
	.sleb128	9
	.byte		"PWM_FALLING_EDGE"
	.byte		0
	.sleb128	2
	.sleb128	9
	.byte		"PWM_BOTH_EDGES"
	.byte		0
	.sleb128	3
	.sleb128	0
.L579:
.L486:
	.sleb128	8
	.4byte		.L560
	.uleb128	120
	.uleb128	1
	.4byte		.L580-.L2
	.uleb128	4
	.sleb128	9
	.byte		"PWM_LOW"
	.byte		0
	.sleb128	0
	.sleb128	9
	.byte		"PWM_HIGH"
	.byte		0
	.sleb128	1
	.sleb128	0
.L580:
	.section	.debug_info,,n
.L442:
	.sleb128	10
	.byte		"Pwm_IpConfigType"
	.byte		0
	.4byte		.L443
	.section	.debug_info,,n
.L441:
	.sleb128	11
	.4byte		.L442
	.section	.debug_info,,n
.L440:
	.sleb128	12
	.4byte		.L441
.L439:
	.sleb128	11
	.4byte		.L440
	.section	.debug_info,,n
.L458:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L457:
	.sleb128	10
	.byte		"uint8"
	.byte		0
	.4byte		.L458
.L456:
	.sleb128	10
	.byte		"Pwm_ChannelType"
	.byte		0
	.4byte		.L457
.L461:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L460:
	.sleb128	10
	.byte		"uint16"
	.byte		0
	.4byte		.L461
.L470:
	.sleb128	10
	.byte		"Pwm_PeriodType"
	.byte		0
	.4byte		.L460
.L485:
	.sleb128	10
	.byte		"Pwm_OutputStateType"
	.byte		0
	.4byte		.L486
.L505:
	.sleb128	10
	.byte		"Pwm_EdgeNotificationType"
	.byte		0
	.4byte		.L506
.L525:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L524:
	.sleb128	10
	.byte		"uint32"
	.byte		0
	.4byte		.L525
.L534:
	.sleb128	10
	.byte		"Pwm_StateType"
	.byte		0
	.4byte		.L535
.L550:
	.sleb128	10
	.byte		"Pwm_eMios_IpConfigType"
	.byte		0
	.4byte		.L551
.L549:
	.sleb128	11
	.4byte		.L550
.L548:
	.sleb128	12
	.4byte		.L549
.L547:
	.sleb128	11
	.4byte		.L548
.L556:
	.sleb128	10
	.byte		"Pwm_IpChannelConfigType"
	.byte		0
	.4byte		.L557
.L555:
	.sleb128	11
	.4byte		.L556
	.section	.debug_info,,n
.L553:
	.sleb128	14
	.4byte		.L554-.L2
	.4byte		.L555
	.section	.debug_info,,n
	.sleb128	15
	.sleb128	0
.L554:
.L552:
	.sleb128	12
	.4byte		.L553
.L559:
	.sleb128	11
	.4byte		.L457
.L563:
	.sleb128	10
	.byte		"Pwm_eMios_ChannelType"
	.byte		0
	.4byte		.L457
.L562:
	.sleb128	11
	.4byte		.L563
.L568:
	.sleb128	10
	.byte		"Pwm_eMios_ChannelConfigType"
	.byte		0
	.4byte		.L569
.L567:
	.sleb128	11
	.4byte		.L568
.L565:
	.sleb128	14
	.4byte		.L566-.L2
	.4byte		.L567
	.sleb128	15
	.sleb128	0
.L566:
.L564:
	.sleb128	12
	.4byte		.L565
.L571:
	.sleb128	11
	.4byte		.L485
.L572:
	.sleb128	11
	.4byte		.L460
.L573:
	.sleb128	11
	.4byte		.L470
.L575:
	.sleb128	10
	.byte		"Pwm_eMios_ControlType"
	.byte		0
	.4byte		.L524
.L574:
	.sleb128	11
	.4byte		.L575
.L577:
	.sleb128	10
	.byte		"boolean"
	.byte		0
	.4byte		.L458
.L576:
	.sleb128	11
	.4byte		.L577
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L444:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L450:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L459:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L462:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo7),4
	.d2locend
.L463:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo8),5
	.d2locend
.L469:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locend
.L471:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo11),4
	.d2locend
.L472:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo12),5
	.d2locend
.L473:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo13),6
	.d2locend
.L479:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locend
.L480:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo16),4
	.d2locend
.L488:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locend
.L489:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo19),4
	.d2locend
.L491:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locend
.L497:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locend
.L498:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo26),4
	.d2locend
.L504:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locend
.L507:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo29),4
	.d2locend
.L508:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo30),5
	.d2locend
.L514:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locend
.L515:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo33),4
	.d2locend
.L517:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),0
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo36),3
	.d2locend
.L523:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locend
.L526:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo39),4
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),0
	.d2locend
.L527:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo42),5
	.d2locend
.L533:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),3
	.d2locend
.L536:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo45),4
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),0
	.d2locend
.L537:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo48),5
	.d2locend
.L543:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),3
	.d2locend
.L544:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo51),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Pwm_Ipw_BufferTransferEnableDisable"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_eMios_BufferTransferEnableDisable"
	.wrcm.end
	.wrcm.nelem "Pwm_Ipw_SetChannelOutput"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_eMios_SetChannelOutput"
	.wrcm.end
	.wrcm.nelem "Pwm_Ipw_SetCounterBus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_eMios_SetCounterBus"
	.wrcm.end
	.wrcm.nelem "Pwm_Ipw_GetChannelState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_eMios_GetChannelState"
	.wrcm.end
	.wrcm.nelem "Pwm_Ipw_EnableNotification"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_eMios_EnableNotification"
	.wrcm.end
	.wrcm.nelem "Pwm_Ipw_DisableNotification"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_eMios_DisableNotification"
	.wrcm.end
	.wrcm.nelem "Pwm_Ipw_GetOutputState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_eMios_GetOutputState"
	.wrcm.end
	.wrcm.nelem "Pwm_Ipw_SetOutputToIdle"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_eMios_SetOutputToIdle"
	.wrcm.end
	.wrcm.nelem "Pwm_Ipw_SetPeriodAndDuty"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_eMios_SetPeriodAndDuty"
	.wrcm.end
	.wrcm.nelem "Pwm_Ipw_SetDutyCycle"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_eMios_SetDutyCycle"
	.wrcm.end
	.wrcm.nelem "Pwm_Ipw_DeInit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_eMios_DeInit"
	.wrcm.end
	.wrcm.nelem "Pwm_Ipw_Init"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Pwm_eMios_Init"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Pwm_IPW.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Pwm_IPW.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Pwm_IPW.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Pwm_IPW.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Pwm_IPW.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Pwm_IPW.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Pwm\ssc\make\..\..\generator\integration_package\src\Pwm_IPW.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
