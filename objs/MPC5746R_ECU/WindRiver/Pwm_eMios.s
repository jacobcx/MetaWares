#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Pwm_eMios.c"
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
# LOCAL_INLINE FUNC(Pwm_eMios_ChannelType, PWM_CODE) Pwm_eMios_GetMasterBus
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L660:
	.section	.invalid_TEXT,,c
#$$ld
.L656:
	.0byte		.L654
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Pwm_eMios.c"
        .d2line         580,52
#$$ld
.L663:

#$$bf	Pwm_eMios_GetMasterBus,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
Pwm_eMios_GetMasterBus:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# u32Bus=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8mIdx=r3 u8mIdx=r3
	mr		r4,r4		# u8chIdx=r4 u8chIdx=r4
	mr		r0,r5		# u32Bus=r0 u32Bus=r5
	.d2prologue_end
# (
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC) u8mIdx,
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC) u8chIdx,
#     VAR(Pwm_eMios_ControlType, AUTOMATIC) u32Bus
# )
# {
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC) n8MasterBusIdx = (Pwm_eMios_ChannelType)0;
	.d2line		587
.Llo15:
	diab.li		r5,0		# n8MasterBusIdx=r5
#     
#     if (PWM_BUS_DIVERSE_U32 == u32Bus)
	.d2line		589
.Llo16:
	cmpi		0,0,r0,512		# u32Bus=r0
	bc		0,2,.L418	# ne
#     {
#         if (EMIOS_CHANNEL_7 >= u8chIdx) /* bus B */
	.d2line		591
.Llo17:
	rlwinm		r0,r4,0,24,31		# u32Bus=r0 u8chIdx=r4
.Llo18:
	se_cmpi		r0,7		# u32Bus=r0
	bc		1,1,.L419	# gt
#         {
#             n8MasterBusIdx = (Pwm_eMios_ChannelType)(((uint32)u8mIdx<<EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_0);
	.d2line		593
.Llo19:
	se_slwi		r3,5		# u8mIdx=r3 u8mIdx=r3
.Llo2:
	mr		r5,r3		# n8MasterBusIdx=r5 n8MasterBusIdx=r3
	b		.L425
.L419:
#         }
#         else if (EMIOS_CHANNEL_15 >= u8chIdx) /* Bus C */
	.d2line		595
.Llo3:
	rlwinm		r0,r4,0,24,31		# u32Bus=r0 u8chIdx=r4
.Llo20:
	se_cmpi		r0,15		# u32Bus=r0
	bc		1,1,.L421	# gt
#         {
#             n8MasterBusIdx = (Pwm_eMios_ChannelType)(((uint32)u8mIdx<<EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_8);
	.d2line		597
.Llo21:
	se_slwi		r3,5		# u8mIdx=r3 u8mIdx=r3
	se_addi		r3,8		# u8mIdx=r3 u8mIdx=r3
.Llo4:
	mr		r5,r3		# n8MasterBusIdx=r5 n8MasterBusIdx=r3
	b		.L425
.L421:
#         }
#         else if (EMIOS_CHANNEL_23 >= u8chIdx) /* bus D */
	.d2line		599
.Llo5:
	rlwinm		r4,r4,0,24,31		# u8chIdx=r4 u8chIdx=r4
	se_cmpi		r4,23		# u8chIdx=r4
	bc		1,1,.L423	# gt
#         {
#             n8MasterBusIdx = (Pwm_eMios_ChannelType)(((uint32)u8mIdx<<EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_16);
	.d2line		601
.Llo13:
	se_slwi		r3,5		# u8mIdx=r3 u8mIdx=r3
	se_addi		r3,16		# u8mIdx=r3 u8mIdx=r3
.Llo6:
	mr		r5,r3		# n8MasterBusIdx=r5 n8MasterBusIdx=r3
	b		.L425
.L423:
#         }
#         else /* Bus E remaining */
#         {
#             n8MasterBusIdx = (Pwm_eMios_ChannelType)(((uint32)u8mIdx<<EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_24);
	.d2line		605
.Llo7:
	se_slwi		r3,5		# u8mIdx=r3 u8mIdx=r3
	se_addi		r3,24		# u8mIdx=r3 u8mIdx=r3
.Llo8:
	mr		r5,r3		# n8MasterBusIdx=r5 n8MasterBusIdx=r3
	b		.L425
.L418:
#         }
#     }
#     else if (PWM_BUS_A_U32 == u32Bus) /* bus A */
	.d2line		608
.Llo9:
	se_cmpi		r0,0		# u32Bus=r0
.Llo23:
	bc		0,2,.L426	# ne
#     {
#         n8MasterBusIdx = (Pwm_eMios_ChannelType)(((uint32)u8mIdx<<EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_23);
	.d2line		610
.Llo14:
	se_slwi		r3,5		# u8mIdx=r3 u8mIdx=r3
	se_addi		r3,23		# u8mIdx=r3 u8mIdx=r3
.Llo10:
	mr		r5,r3		# n8MasterBusIdx=r5 n8MasterBusIdx=r3
	b		.L425
.L426:
#     } 
#     else if (PWM_BUS_F_U32 == u32Bus) /* bus F remaining */
	.d2line		612
.Llo11:
	cmpi		0,0,r0,1024		# u32Bus=r0
	bc		0,2,.L425	# ne
#     {
#         n8MasterBusIdx = (Pwm_eMios_ChannelType)(((uint32)u8mIdx<<EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_22);
	.d2line		614
.Llo22:
	se_slwi		r3,5		# u8mIdx=r3 u8mIdx=r3
	se_addi		r3,22		# u8mIdx=r3 u8mIdx=r3
.Llo12:
	mr		r5,r3		# n8MasterBusIdx=r5 n8MasterBusIdx=r3
.L425:
#     }
#     else
#     {
#         /*Empty else to fix misra*/
#     }
#     return n8MasterBusIdx;
	.d2line		620
	rlwinm		r3,r5,0,24,31		# u8mIdx=r3 n8MasterBusIdx=r5
# }
	.d2line		621
	.d2epilogue_begin
	lwz		r0,20(r1)		# u32Bus=r0
	mtspr		lr,r0		# u32Bus=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo24:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L664:
	.type		Pwm_eMios_GetMasterBus,@function
	.size		Pwm_eMios_GetMasterBus,.-Pwm_eMios_GetMasterBus
# Number of nodes = 71

# Allocations for Pwm_eMios_GetMasterBus
#	?a4		u8mIdx
#	?a5		u8chIdx
#	?a6		u32Bus
#	?a7		n8MasterBusIdx
# LOCAL_INLINE FUNC(void, PWM_CODE) Pwm_eMios_UpdateChannelAB
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         633,35
#$$ld
.L680:

#$$bf	Pwm_eMios_UpdateChannelAB,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,lr
	.d2_cfa_start __cie
Pwm_eMios_UpdateChannelAB:
.Llo25:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8mIdx=r3 u8mIdx=r3
	mr		r4,r4		# u8chIdx=r4 u8chIdx=r4
	mr		r5,r5		# u32ValA=r5 u32ValA=r5
	mr		r6,r6		# u32ValB=r6 u32ValB=r6
	.d2prologue_end
# (
#     VAR(Pwm_eMios_ChannelType,  AUTOMATIC) u8mIdx,
#     VAR(Pwm_eMios_ChannelType,  AUTOMATIC) u8chIdx,
#     VAR(uint32,                 AUTOMATIC) u32ValA,
#     VAR(uint32,                 AUTOMATIC) u32ValB
# )
# {
# #if (PWM_BUFFER_TRANSFER_EN_DIS_API == STD_OFF)     
#     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#     REG_BIT_SET32(EMIOS_OUDR_ADDR32(u8mIdx), (uint32)((uint32)1<<(u8chIdx)));
# #endif    
#     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#     REG_WRITE32(EMIOS_CADR_ADDR32(u8mIdx, (uint32)u8chIdx), (u32ValA));
	.d2line		648
	lis		r7,EMIOS_BASE_ADDR32@ha
	e_add16i		r7,r7,EMIOS_BASE_ADDR32@l
	rlwinm		r3,r3,2,22,29		# u8mIdx=r3 u8mIdx=r3
	lwzux		r31,r7,r3
	rlwinm		r4,r4,5,19,26		# u8chIdx=r4 u8chIdx=r4
	se_add		r31,r4		# u8chIdx=r4
	stw		r5,32(r31)		# u32ValA=r5
#     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#     REG_WRITE32(EMIOS_CBDR_ADDR32(u8mIdx, (uint32)u8chIdx), (u32ValB));
	.d2line		651
	lis		r5,EMIOS_BASE_ADDR32@ha		# u32ValA=r5
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# u32ValA=r5 u32ValA=r5
	lwzx		r3,r5,r3		# u8mIdx=r3 u32ValA=r5
	se_add		r3,r4		# u8mIdx=r3 u8mIdx=r3 u8chIdx=r4
	stw		r6,36(r3)		# u8mIdx=r3 u32ValB=r6
# 
# #if (PWM_BUFFER_TRANSFER_EN_DIS_API == STD_OFF)   
#     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#     REG_BIT_CLEAR32(EMIOS_OUDR_ADDR32(u8mIdx), (uint32)((uint32)1<<(u8chIdx)));
# #endif    
# }
	.d2line		658
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo26:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L681:
	.type		Pwm_eMios_UpdateChannelAB,@function
	.size		Pwm_eMios_UpdateChannelAB,.-Pwm_eMios_UpdateChannelAB
# Number of nodes = 36

# Allocations for Pwm_eMios_UpdateChannelAB
#	?a4		u8mIdx
#	?a5		u8chIdx
#	?a6		u32ValA
#	?a7		u32ValB
# LOCAL_INLINE FUNC(Pwm_PeriodType, PWM_CODE) Pwm_eMios_ComputeDutycycle_16bits
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         708,45
#$$ld
.L689:

#$$bf	Pwm_eMios_ComputeDutycycle_16bits,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.d2_cfa_start __cie
Pwm_eMios_ComputeDutycycle_16bits:
.Llo27:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nPeriod=r3 nPeriod=r3
	mr		r4,r4		# u16Duty=r4 u16Duty=r4
	.d2prologue_end
# (
#     VAR(Pwm_PeriodType, AUTOMATIC) nPeriod,
#     VAR(uint16,         AUTOMATIC) u16Duty
# )
# {
#     VAR(Pwm_PeriodType, AUTOMATIC) nDutycycle;
#     VAR(uint32,         AUTOMATIC) u32Calc_rounding;
# 
#     u32Calc_rounding = (uint32)((uint32)nPeriod * (uint32)u16Duty);
	.d2line		717
	rlwinm		r3,r3,0,16,31		# nPeriod=r3 nPeriod=r3
	rlwinm		r4,r4,0,16,31		# u16Duty=r4 u16Duty=r4
	mullw		r3,r3,r4		# nPeriod=r3 nPeriod=r3 u16Duty=r4
.Llo28:
	mr		r3,r3		# u32Calc_rounding=r3 u32Calc_rounding=r3
#     nDutycycle       = (Pwm_PeriodType)((uint32)u32Calc_rounding>>(Pwm_PeriodType)15);
	.d2line		718
	se_srwi		r3,15		# u32Calc_rounding=r3 u32Calc_rounding=r3
.Llo30:
	mr		r3,r3		# nDutycycle=r3 nDutycycle=r3
# 
#     return nDutycycle;
	.d2line		720
	rlwinm		r3,r3,0,16,31		# nDutycycle=r3 nDutycycle=r3
# }
	.d2line		721
	.d2epilogue_begin
.Llo31:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo29:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L690:
	.type		Pwm_eMios_ComputeDutycycle_16bits,@function
	.size		Pwm_eMios_ComputeDutycycle_16bits,.-Pwm_eMios_ComputeDutycycle_16bits
# Number of nodes = 15

# Allocations for Pwm_eMios_ComputeDutycycle_16bits
#	?a4		nPeriod
#	?a5		u16Duty
#	?a6		nDutycycle
#	?a7		u32Calc_rounding
# LOCAL_INLINE FUNC(void, PWM_CODE) Pwm_eMios_SetRegs_OPWMB_mode
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1361,35
#$$ld
.L703:

#$$bf	Pwm_eMios_SetRegs_OPWMB_mode,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r25,r26,r27,r28,r29,r30,r31,cr0,lr
	.d2_cfa_start __cie
Pwm_eMios_SetRegs_OPWMB_mode:
.Llo32:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	25,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u8eMiosChannelIdx=r31 u8eMiosChannelIdx=r3
.Llo33:
	mr		r7,r4		# nPeriod=r7 nPeriod=r4
.Llo34:
	mr		r30,r5		# u16DutyCycle=r30 u16DutyCycle=r5
.Llo38:
	mr		r3,r6		# peMiosChannelConfig=r3 peMiosChannelConfig=r6
	.d2prologue_end
# (
#     VAR(Pwm_eMios_ChannelType,              AUTOMATIC)                   u8eMiosChannelIdx,
#     VAR(Pwm_PeriodType,                     AUTOMATIC)                   nPeriod,
#     VAR(uint16,                             AUTOMATIC)                   u16DutyCycle,
#     P2CONST(Pwm_eMios_ChannelConfigType,    AUTOMATIC,  PWM_APPL_CONST)  peMiosChannelConfig
# )
# {
#     VAR(Pwm_eMios_ControlType,      AUTOMATIC) u32CtrlRegVal;
#     VAR(Pwm_PeriodType,             AUTOMATIC) nTempDuty;
#     VAR(Pwm_PeriodType,             AUTOMATIC) nOffset;
#     VAR(Pwm_eMios_ChannelType,      AUTOMATIC) u8mIdx;
#     VAR(Pwm_eMios_ChannelType,      AUTOMATIC) u8chIdx;
#     VAR(uint32,                     AUTOMATIC) u32PolarityBit;
#     VAR(uint32,                     AUTOMATIC) u32TempDutyOffset;
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#     VAR(uint8,   AUTOMATIC) u8Notification;
# #endif
#     VAR(uint8 ,                     AUTOMATIC) u8HwChannel;
# 
#     u8HwChannel = (uint8)peMiosChannelConfig->u8HwChannel;
	.d2line		1381
.Llo44:
	lbz		r6,12(r3)		# u8HwChannel=r6 peMiosChannelConfig=r3
.Llo48:
	mr		r6,r6		# u8HwChannel=r6 u8HwChannel=r6
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#     u8Notification =  Pwm_eMios_aChannelNotifType[(Pwm_eMios_ChannelType)u8HwChannel];
	.d2line		1383
	lis		r4,Pwm_eMios_aChannelNotifType@ha		# u16DutyCycle=r4
	e_add16i		r4,r4,Pwm_eMios_aChannelNotifType@l		# u16DutyCycle=r4 u16DutyCycle=r4
	rlwinm		r27,r6,0,24,31		# u8HwChannel=r6
	lbzux		r25,r4,r27		# u16DutyCycle=r4
.Llo90:
	mr		r25,r25		# u8Notification=r25 u8Notification=r25
# #endif
# 
#     u8mIdx      = (uint8)EMIOS_MODULE_INDEX_U8(u8HwChannel);
	.d2line		1386
	rlwinm		r27,r27,27,29,31
.Llo73:
	mr		r27,r27		# u8mIdx=r27 u8mIdx=r27
#     u8chIdx     = (uint8)EMIOS_CHANNEL_INDEX_U8(u8HwChannel);
	.d2line		1387
	rlwinm		r26,r6,0,27,31		# u8HwChannel=r6
.Llo78:
	mr		r26,r26		# u8chIdx=r26 u8chIdx=r26
#     u32CtrlRegVal = peMiosChannelConfig->u32ControlValue;
	.d2line		1388
	lwz		r29,16(r3)		# peMiosChannelConfig=r3
.Llo62:
	mr		r29,r29		# u32CtrlRegVal=r29 u32CtrlRegVal=r29
#     nOffset     = Pwm_eMios_aChannelOffset[u8eMiosChannelIdx];
	.d2line		1389
	lis		r3,Pwm_eMios_aChannelOffset@ha		# peMiosChannelConfig=r3
	e_add16i		r3,r3,Pwm_eMios_aChannelOffset@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	rlwinm		r0,r31,1,23,30		# u8eMiosChannelIdx=r31
	lhzx		r5,r3,r0		# peMiosChannelConfig=r3
.Llo69:
	mr		r5,r5		# nOffset=r5 nOffset=r5
# 
# #if  (PWM_EMIOS_16_BITS_VARIANT == STD_ON)
#     nTempDuty   = Pwm_eMios_ComputeDutycycle_16bits(nPeriod, u16DutyCycle);
	.d2line		1392
	mr		r3,r7		# nPeriod=r3 nPeriod=r7
.Llo49:
	mr		r4,r30		# u16DutyCycle=r4 u16DutyCycle=r30
	bl		Pwm_eMios_ComputeDutycycle_16bits
.Llo64:
	mr		r28,r3		# nTempDuty=r28 nTempDuty=r3
# #else
#     nTempDuty   = Pwm_eMios_ComputeDutycycle_32bits(nPeriod, u16DutyCycle);
# #endif
# 
#     if (((uint16)0x0U == u16DutyCycle) || ((uint16)0x0U == nTempDuty))
	.d2line		1397
	rlwinm		r4,r30,0,16,31		# u16DutyCycle=r4 u16DutyCycle=r30
	se_cmpi		r4,0		# u16DutyCycle=r4
	bc		1,2,.L453	# eq
.Llo65:
	rlwinm		r3,r28,0,16,31		# peMiosChannelConfig=r3 nTempDuty=r28
.Llo50:
	se_cmpi		r3,0		# peMiosChannelConfig=r3
	bc		0,2,.L439	# ne
.L453:
#     {
#         /* disable and clear interrupt flag */
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FEN_MASK_U32 );
	.d2line		1402
.Llo39:
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
.Llo51:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	rlwinm		r6,r27,2,22,29		# u8HwChannel=r6 u8mIdx=r27
	lwzx		r4,r3,r6		# u8chIdx=r4 peMiosChannelConfig=r3
	rlwinm		r5,r26,5,19,26		# u8chIdx=r26
	se_add		r4,r5		# u8chIdx=r4 u8chIdx=r4
	lwz		r0,44(r4)		# u8chIdx=r4
	.diab.bclri		r0,14
	stw		r0,44(r4)		# u8chIdx=r4
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_WRITE32(EMIOS_CSR_ADDR32(u8mIdx, u8chIdx) , CSR_FLAG_BIT_U32 );
	.d2line		1405
	diab.li		r0,1
	lwzx		r3,r3,r6		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	se_add		r5,r3		# peMiosChannelConfig=r3
	stw		r0,48(r5)
#         /* write 0 to regA and regB to generate 0% duty */
#         /** @violates @ref Pwm_eMIOS_C_REF_3 Non-constant argument to function */
#         Pwm_eMios_UpdateChannelAB(u8mIdx, u8chIdx, (uint32)0U, (uint32)0U);
	.d2line		1408
	mr		r3,r27		# u8mIdx=r3 u8mIdx=r27
.Llo52:
	mr		r4,r26		# u8chIdx=r4 u8chIdx=r26
	diab.li		r5,0
	diab.li		r6,0		# u8HwChannel=r6
	bl		Pwm_eMios_UpdateChannelAB
	b		.L440
.L439:
#     }
#     else if (PWM_DUTY_CYCLE_100 == u16DutyCycle)
	.d2line		1410
.Llo40:
	rlwinm		r4,r30,0,16,31		# u16DutyCycle=r4 u16DutyCycle=r30
	cmpli		0,0,r4,32768		# u16DutyCycle=r4
	bc		0,2,.L441	# ne
#     {
#         /* disable and clear interrupt flag */
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FEN_MASK_U32 );
	.d2line		1415
.Llo70:
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
.Llo53:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	rlwinm		r6,r27,2,22,29		# u8HwChannel=r6 u8mIdx=r27
	lwzx		r4,r3,r6		# u8chIdx=r4 peMiosChannelConfig=r3
	rlwinm		r5,r26,5,19,26		# u8chIdx=r26
	se_add		r4,r5		# u8chIdx=r4 u8chIdx=r4
	lwz		r0,44(r4)		# u8chIdx=r4
	.diab.bclri		r0,14
	stw		r0,44(r4)		# u8chIdx=r4
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_WRITE32(EMIOS_CSR_ADDR32(u8mIdx, u8chIdx) , CSR_FLAG_BIT_U32 );
	.d2line		1418
	diab.li		r0,1
	lwzx		r3,r3,r6		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	se_add		r5,r3		# peMiosChannelConfig=r3
	stw		r0,48(r5)
#         /* write regA with 0 and regB with nPeriod to achieve 100% duty */
#         /** @violates @ref Pwm_eMIOS_C_REF_3 Non-constant argument to function */
#         Pwm_eMios_UpdateChannelAB(u8mIdx, u8chIdx, (uint32)0U, (uint32)nPeriod);
	.d2line		1421
	rlwinm		r6,r7,0,16,31		# u8HwChannel=r6 nPeriod=r7
	mr		r3,r27		# u8mIdx=r3 u8mIdx=r27
.Llo54:
	mr		r4,r26		# u8chIdx=r4 u8chIdx=r26
	diab.li		r5,0
	bl		Pwm_eMios_UpdateChannelAB
.Llo41:
	b		.L440
.L441:
#     }
#     else
#     {
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#         u8Notification =  Pwm_eMios_aChannelNotifType[u8HwChannel];
	.d2line		1426
.Llo42:
	lis		r3,Pwm_eMios_aChannelNotifType@ha		# peMiosChannelConfig=r3
.Llo55:
	e_add16i		r3,r3,Pwm_eMios_aChannelNotifType@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
.Llo93:
	rlwinm		r6,r6,0,24,31		# u8HwChannel=r6 u8HwChannel=r6
.Llo94:
	lbzx		r25,r3,r6		# u8Notification=r25 peMiosChannelConfig=r3
	mr		r25,r25		# u8Notification=r25 u8Notification=r25
#         if ((uint8)0U != u8Notification ) /* if notifications enabled */
	.d2line		1427
	rlwinm		r0,r25,0,24,31		# u8Notification=r25
	se_cmpi		r0,0
	bc		1,2,.L443	# eq
#         {
#             /* FLAG event enabled */
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_SET32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FEN_MASK_U32 );
	.d2line		1432
.Llo43:
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
.Llo56:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	rlwinm		r6,r27,2,22,29		# u8HwChannel=r6 u8mIdx=r27
	lwzx		r3,r3,r6		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	rlwinm		r4,r26,5,19,26		# u16DutyCycle=r4 u8chIdx=r26
	se_add		r3,r4		# peMiosChannelConfig=r3 peMiosChannelConfig=r3 u16DutyCycle=r4
	lwz		r0,44(r3)		# peMiosChannelConfig=r3
	.diab.bseti		r0,14
	stw		r0,44(r3)		# peMiosChannelConfig=r3
	b		.L444
.L443:
#         }
#         else
#         {
# #endif
#             /* disable and clear interrupt flag */
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FEN_MASK_U32 );
	.d2line		1440
.Llo57:
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
.Llo58:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	rlwinm		r6,r27,2,22,29		# u8HwChannel=r6 u8mIdx=r27
	lwzx		r4,r3,r6		# u16DutyCycle=r4 peMiosChannelConfig=r3
	rlwinm		r7,r26,5,19,26		# u16DutyCycle=r7 u8chIdx=r26
	se_add		r4,r7		# u16DutyCycle=r4 u16DutyCycle=r4 u16DutyCycle=r7
	lwz		r0,44(r4)		# u16DutyCycle=r4
	.diab.bclri		r0,14
	stw		r0,44(r4)		# u16DutyCycle=r4
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_WRITE32(EMIOS_CSR_ADDR32(u8mIdx, u8chIdx) , CSR_FLAG_BIT_U32 );
	.d2line		1443
	diab.li		r0,1
	lwzx		r3,r3,r6		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	se_add		r7,r3		# u16DutyCycle=r7 u16DutyCycle=r7 peMiosChannelConfig=r3
	stw		r0,48(r7)		# u16DutyCycle=r7
.L444:
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#         }
# #endif
#         u32TempDutyOffset = (uint32)nTempDuty + nOffset;
	.d2line		1447
.Llo59:
	rlwinm		r3,r28,0,16,31		# peMiosChannelConfig=r3 nTempDuty=r28
.Llo60:
	rlwinm		r5,r5,0,16,31		# nOffset=r5 nOffset=r5
	se_add		r3,r5		# peMiosChannelConfig=r3 peMiosChannelConfig=r3 nOffset=r5
.Llo61:
	mr		r6,r3		# u32TempDutyOffset=r6 u32TempDutyOffset=r3
#         /* write regA with offset and regB with dutyoffset has been calculated */
#         /** @violates @ref Pwm_eMIOS_C_REF_3 Non-constant argument to function */
#         Pwm_eMios_UpdateChannelAB(u8mIdx, u8chIdx, (uint32)nOffset, (uint32)u32TempDutyOffset);
	.d2line		1450
	mr		r3,r27		# u8mIdx=r3 u8mIdx=r27
.Llo87:
	mr		r4,r26		# u8chIdx=r4 u8chIdx=r26
.Llo88:
	mr		r6,r6		# u32TempDutyOffset=r6 u32TempDutyOffset=r6
.Llo89:
	bl		Pwm_eMios_UpdateChannelAB
.L440:
#     }
#     
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#     if ((uint8)0U != u8Notification ) /* if notifications enabled */
	.d2line		1454
.Llo71:
	rlwinm		r0,r25,0,24,31		# u8Notification=r25
	se_cmpi		r0,0
	bc		1,2,.L445	# eq
#     {
#         /* set notification edge in u32CtrlRegVal */
#         if(PWM_BOTH_EDGES == (Pwm_EdgeNotificationType)u8Notification)
	.d2line		1457
	rlwinm		r25,r25,0,24,31		# u8Notification=r25 u8Notification=r25
	se_cmpi		r25,3		# u8Notification=r25
	bc		0,2,.L446	# ne
#         {
#             /** @violates @ref Pwm_eMIOS_C_REF_10 Cast from pointer to pointer.*/
#             REG_BIT_SET32(&u32CtrlRegVal, CCR_MODE_EDGE_SELECT_MASK_U32 );
	.d2line		1460
.Llo91:
	.diab.bseti		r29,30
	mr		r0,r29		# u32CtrlRegVal=r0 u32CtrlRegVal=r29
	b		.L445
.L446:
#         }
#         else
#         {
#             /** @violates @ref Pwm_eMIOS_C_REF_10 Cast from pointer to pointer.*/
#             REG_BIT_CLEAR32(&u32CtrlRegVal, CCR_MODE_EDGE_SELECT_MASK_U32 );
	.d2line		1465
	rlwinm		r29,r29,0,31,29		# u32CtrlRegVal=r29 u32CtrlRegVal=r29
	mr		r0,r29		# u32CtrlRegVal=r0 u32CtrlRegVal=r29
.L445:
#         }
#     }
# #endif /* PWM_NOTIFICATION_SUPPORTED */
#     
#     /* come from Idle or Uninit state */
#     /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#     if (CCR_MODE_GPO_U32 == (REG_READ32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx)) & CCR_MODE_MASK_U32))
	.d2line		1473
.Llo92:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8mIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8mIdx=r3 u8mIdx=r3
	rlwinm		r6,r27,2,22,29		# u8HwChannel=r6 u8mIdx=r27
	lwzx		r3,r3,r6		# u8mIdx=r3 u8mIdx=r3
	rlwinm		r4,r26,5,19,26		# u8chIdx=r4 u8chIdx=r26
	se_add		r3,r4		# u8mIdx=r3 u8mIdx=r3 u8chIdx=r4
	lwz		r0,44(r3)		# u32CtrlRegVal=r0 u8mIdx=r3
	rlwinm		r0,r0,0,25,31		# u32CtrlRegVal=r0 u32CtrlRegVal=r0
	se_cmpi		r0,1		# u32CtrlRegVal=r0
	bc		0,2,.L438	# ne
#     {
#         if (PWM_HIGH == Pwm_eMios_aChannelPolarity[u8eMiosChannelIdx])
	.d2line		1475
.Llo35:
	lis		r3,Pwm_eMios_aChannelPolarity@ha		# u8mIdx=r3
	e_add16i		r3,r3,Pwm_eMios_aChannelPolarity@l		# u8mIdx=r3 u8mIdx=r3
.Llo36:
	rlwinm		r31,r31,2,22,29		# u8eMiosChannelIdx=r31 u8eMiosChannelIdx=r31
.Llo37:
	lwzx		r0,r3,r31		# u32CtrlRegVal=r0 u8mIdx=r3
.Llo81:
	se_cmpi		r0,1		# u32CtrlRegVal=r0
#         {
#             u32PolarityBit = (uint32)0x80;
	.d2line		1477
	diab.li		r3,128		# u8mIdx=r3
	isel		r3,r3,r0,2		# u32PolarityBit=r3 u8mIdx=r3 u32PolarityBit=r0
.L449:
#         } 
#         else
#         {
#             u32PolarityBit = (uint32)0;
	.d2line		1481
.Llo82:
	diab.li		r0,0		# u32PolarityBit=r0
.Llo83:
	isel		r0,r3,r0,2		# u32PolarityBit=r0 u32PolarityBit=r3 u32PolarityBit=r0
.L450:
#         }
#         REG_RMW32
	.d2line		1483
.Llo45:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u32PolarityBit=r3
.Llo84:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u32PolarityBit=r3 u32PolarityBit=r3
	rlwinm		r6,r27,2,22,29		# u8HwChannel=r6 u8mIdx=r27
	lwzux		r4,r3,r6		# u8chIdx=r4 u32PolarityBit=r3
	rlwinm		r5,r26,5,19,26		# nOffset=r5 u8chIdx=r26
.Llo72:
	add		r3,r4,r5		# u32PolarityBit=r3 u8chIdx=r4 nOffset=r5
	lwz		r3,44(r3)		# u32PolarityBit=r3 u32PolarityBit=r3
	rlwinm		r3,r3,0,0,23		# u32PolarityBit=r3 u32PolarityBit=r3
.Llo63:
	rlwinm		r29,r29,0,25,31		# u32CtrlRegVal=r29 u32CtrlRegVal=r29
	or		r3,r3,r29		# u32PolarityBit=r3 u32PolarityBit=r3 u32CtrlRegVal=r29
	rlwinm		r0,r0,0,24,24		# u32PolarityBit=r0 u32PolarityBit=r0
	or		r0,r0,r3		# u32PolarityBit=r0 u32PolarityBit=r0 u32PolarityBit=r3
	lis		r3,EMIOS_BASE_ADDR32@ha		# u32PolarityBit=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u32PolarityBit=r3 u32PolarityBit=r3
	lwzx		r3,r3,r6		# u32PolarityBit=r3 u32PolarityBit=r3
	se_add		r5,r3		# nOffset=r5 nOffset=r5 u32PolarityBit=r3
	stw		r0,44(r5)		# nOffset=r5 u32PolarityBit=r0
#         (
#             EMIOS_CCR_ADDR32(u8mIdx, u8chIdx),
#             (CCR_MODE_MASK_U32 | CCR_EDPOL_MASK_U32),
#             ((u32CtrlRegVal & CCR_MODE_MASK_U32) | (u32PolarityBit & CCR_EDPOL_MASK_U32 ))
#         /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         );
#         /* force match on the first edge - this also sets the signal level */
#         /* do not force event A for OPWMB/OPWMT and 0% duty */
#         if (((uint16)0x0000 != u16DutyCycle) && (0x0U != nTempDuty))
	.d2line		1493
.Llo46:
	rlwinm		r30,r30,0,16,31		# u16DutyCycle=r30 u16DutyCycle=r30
	se_cmpi		r30,0		# u16DutyCycle=r30
	bc		1,2,.L451	# eq
.Llo47:
	e_cmphl16i	r28,0		# nTempDuty=r28
	bc		1,2,.L451	# eq
#         {
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_SET32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FORCMA_MASK_U32); /* force match A */
	.d2line		1497
.Llo66:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u32PolarityBit=r3
.Llo85:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u32PolarityBit=r3 u32PolarityBit=r3
.Llo74:
	rlwinm		r27,r27,2,22,29		# u8mIdx=r27 u8mIdx=r27
.Llo75:
	lwzx		r0,r3,r27		# u32PolarityBit=r0 u32PolarityBit=r3
.Llo79:
	rlwinm		r26,r26,5,19,26		# u8chIdx=r26 u8chIdx=r26
	se_add		r26,r0		# u8chIdx=r26 u8chIdx=r26 u32PolarityBit=r0
	lwz		r0,44(r26)		# u32PolarityBit=r0 u8chIdx=r26
	.diab.bseti		r0,18		# u32PolarityBit=r0
	stw		r0,44(r26)		# u8chIdx=r26 u32PolarityBit=r0
	b		.L438
.L451:
#         }
#         else
#         {
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_SET32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FORCMB_MASK_U32 ); /* force match B */
	.d2line		1503
.Llo67:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u32PolarityBit=r3
.Llo86:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u32PolarityBit=r3 u32PolarityBit=r3
.Llo76:
	rlwinm		r27,r27,2,22,29		# u8mIdx=r27 u8mIdx=r27
.Llo77:
	lwzx		r0,r3,r27		# u32PolarityBit=r0 u32PolarityBit=r3
.Llo80:
	rlwinm		r26,r26,5,19,26		# u8chIdx=r26 u8chIdx=r26
	se_add		r26,r0		# u8chIdx=r26 u8chIdx=r26 u32PolarityBit=r0
	lwz		r0,44(r26)		# u32PolarityBit=r0 u8chIdx=r26
	.diab.bseti		r0,19		# u32PolarityBit=r0
	stw		r0,44(r26)		# u8chIdx=r26 u32PolarityBit=r0
.L438:
#         }
#     }
# }
	.d2line		1506
	.d2epilogue_begin
.Llo68:
	lmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)		# u32CtrlRegVal=r0
	mtspr		lr,r0		# u32CtrlRegVal=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L704:
	.type		Pwm_eMios_SetRegs_OPWMB_mode,@function
	.size		Pwm_eMios_SetRegs_OPWMB_mode,.-Pwm_eMios_SetRegs_OPWMB_mode
# Number of nodes = 394

# Allocations for Pwm_eMios_SetRegs_OPWMB_mode
#	?a4		u8eMiosChannelIdx
#	?a5		nPeriod
#	?a6		u16DutyCycle
#	?a7		peMiosChannelConfig
#	?a8		$$104
#	?a9		$$103
#	?a10		$$102
#	?a11		$$101
#	?a12		$$100
#	?a13		$$99
#	?a14		u32CtrlRegVal
#	?a15		nTempDuty
#	?a16		nOffset
#	?a17		u8mIdx
#	?a18		u8chIdx
#	?a19		u32PolarityBit
#	?a20		u32TempDutyOffset
#	?a21		u8Notification
#	?a22		u8HwChannel
# LOCAL_INLINE FUNC(void, PWM_CODE) Pwm_eMios_SetRegs_OPWMFMB_mode
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1701,35
#$$ld
.L734:

#$$bf	Pwm_eMios_SetRegs_OPWMFMB_mode,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r26,r27,r28,r29,r30,r31,cr0,lr
	.d2_cfa_start __cie
Pwm_eMios_SetRegs_OPWMFMB_mode:
.Llo95:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u8eMiosChannelIdx=r31 u8eMiosChannelIdx=r3
	mr		r7,r4		# nPeriod=r7 nPeriod=r4
.Llo101:
	mr		r26,r5		# u16DutyCycle=r26 u16DutyCycle=r5
.Llo102:
	mr		r3,r6		# peMiosChannelConfig=r3 peMiosChannelConfig=r6
	.d2prologue_end
# (
#     VAR(Pwm_eMios_ChannelType,              AUTOMATIC)                   u8eMiosChannelIdx,
#     VAR(Pwm_PeriodType,                     AUTOMATIC)                   nPeriod,
#     VAR(uint16,                             AUTOMATIC)                   u16DutyCycle,
#     P2CONST(Pwm_eMios_ChannelConfigType,    AUTOMATIC,  PWM_APPL_CONST)  peMiosChannelConfig
# )
# {
#     VAR(Pwm_eMios_ControlType,      AUTOMATIC) u32CtrlRegVal;
#     VAR(Pwm_PeriodType,             AUTOMATIC) nTempDuty;
#     VAR(Pwm_eMios_ChannelType,      AUTOMATIC) u8mIdx; /*  assigned eMIOS HW channel index */
#     VAR(Pwm_eMios_ChannelType,      AUTOMATIC) u8chIdx; /*  assigned eMIOS HW channel index */
#     VAR(uint32,                     AUTOMATIC) u32PolarityBit;  /*status of polarity bit */
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#     VAR(uint8,   AUTOMATIC) u8Notification;
# #endif
#     VAR(uint8 ,                     AUTOMATIC) u8HwChannel;
# 
#     u8HwChannel = (uint8)peMiosChannelConfig->u8HwChannel;
	.d2line		1719
.Llo96:
	lbz		r6,12(r3)		# u8HwChannel=r6 peMiosChannelConfig=r3
.Llo114:
	mr		r6,r6		# u8HwChannel=r6 u8HwChannel=r6
# 
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#     u8Notification =  Pwm_eMios_aChannelNotifType[(Pwm_eMios_ChannelType)u8HwChannel];
	.d2line		1722
	lis		r4,Pwm_eMios_aChannelNotifType@ha		# peMiosChannelConfig=r4
	e_add16i		r4,r4,Pwm_eMios_aChannelNotifType@l		# peMiosChannelConfig=r4 peMiosChannelConfig=r4
	rlwinm		r29,r6,0,24,31		# u8HwChannel=r6
	lbzux		r27,r4,r29		# peMiosChannelConfig=r4
.Llo143:
	mr		r27,r27		# u8Notification=r27 u8Notification=r27
# #endif
# 
#     u8mIdx      = (uint8)EMIOS_MODULE_INDEX_U8(u8HwChannel);
	.d2line		1725
	rlwinm		r29,r29,27,29,31
.Llo131:
	mr		r29,r29		# u8mIdx=r29 u8mIdx=r29
#     u8chIdx     = (uint8)EMIOS_CHANNEL_INDEX_U8(u8HwChannel);
	.d2line		1726
	rlwinm		r28,r6,0,27,31		# u8HwChannel=r6
.Llo135:
	mr		r28,r28		# u8chIdx=r28 u8chIdx=r28
#     u32CtrlRegVal = peMiosChannelConfig->u32ControlValue;
	.d2line		1727
	lwz		r30,16(r3)		# peMiosChannelConfig=r3
.Llo127:
	mr		r30,r30		# u32CtrlRegVal=r30 u32CtrlRegVal=r30
# 
# #if  (PWM_EMIOS_16_BITS_VARIANT == STD_ON)
#     nTempDuty   = Pwm_eMios_ComputeDutycycle_16bits(nPeriod, u16DutyCycle);
	.d2line		1730
	mr		r3,r7		# nPeriod=r3 nPeriod=r7
.Llo115:
	mr		r4,r26		# u16DutyCycle=r4 u16DutyCycle=r26
	bl		Pwm_eMios_ComputeDutycycle_16bits
.Llo129:
	mr		r5,r3		# nTempDuty=r5 nTempDuty=r3
# #else
#     nTempDuty   = Pwm_eMios_ComputeDutycycle_32bits(nPeriod, u16DutyCycle);
# #endif
# 
#     if (((uint16)0x0U == u16DutyCycle) || ((uint16)0x0U == nTempDuty))
	.d2line		1735
	rlwinm		r4,r26,0,16,31		# peMiosChannelConfig=r4 u16DutyCycle=r26
.Llo116:
	se_cmpi		r4,0		# peMiosChannelConfig=r4
	bc		1,2,.L479	# eq
.Llo97:
	rlwinm		r3,r5,0,16,31		# peMiosChannelConfig=r3 nTempDuty=r5
.Llo117:
	se_cmpi		r3,0		# peMiosChannelConfig=r3
	bc		0,2,.L467	# ne
.L479:
#     {
#         /* clear interrupt flag */
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FEN_MASK_U32 );
	.d2line		1740
.Llo108:
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
.Llo118:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	rlwinm		r6,r29,2,22,29		# u8HwChannel=r6 u8mIdx=r29
	lwzx		r4,r3,r6		# u8chIdx=r4 peMiosChannelConfig=r3
	rlwinm		r26,r28,5,19,26		# u16DutyCycle=r26 u8chIdx=r28
.Llo109:
	se_add		r4,r26		# u8chIdx=r4 u8chIdx=r4 u16DutyCycle=r26
	lwz		r0,44(r4)		# u8chIdx=r4
	.diab.bclri		r0,14
	stw		r0,44(r4)		# u8chIdx=r4
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_WRITE32(EMIOS_CSR_ADDR32(u8mIdx, u8chIdx) , CSR_FLAG_BIT_U32 );
	.d2line		1743
	diab.li		r0,1
	lwzx		r3,r3,r6		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	se_add		r26,r3		# u16DutyCycle=r26 u16DutyCycle=r26 peMiosChannelConfig=r3
	stw		r0,48(r26)		# u16DutyCycle=r26
#         /* write regA and regB with nPeriod to achieve 0% duty*/
#         /** @violates @ref Pwm_eMIOS_C_REF_3 Non-constant argument to function */
#         Pwm_eMios_UpdateChannelAB(u8mIdx, u8chIdx, (uint32)nPeriod, (uint32)nPeriod);
	.d2line		1746
	rlwinm		r5,r7,0,16,31		# peMiosChannelConfig=r5 nPeriod=r7
	mr		r6,r5		# peMiosChannelConfig=r6
	mr		r3,r29		# u8mIdx=r3 u8mIdx=r29
.Llo119:
	mr		r4,r28		# u8chIdx=r4 u8chIdx=r28
	bl		Pwm_eMios_UpdateChannelAB
.Llo103:
	b		.L468
.L467:
#     }
#     else if (PWM_DUTY_CYCLE_100 == u16DutyCycle)
	.d2line		1748
.Llo104:
	rlwinm		r26,r26,0,16,31		# u16DutyCycle=r26 u16DutyCycle=r26
	cmpli		0,0,r26,32768		# u16DutyCycle=r26
	bc		0,2,.L469	# ne
#     {
#         /* clear interrupt flag */
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FEN_MASK_U32 );
	.d2line		1753
.Llo110:
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
.Llo120:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	rlwinm		r6,r29,2,22,29		# u8HwChannel=r6 u8mIdx=r29
	lwzx		r4,r3,r6		# u8chIdx=r4 peMiosChannelConfig=r3
	rlwinm		r26,r28,5,19,26		# u16DutyCycle=r26 u8chIdx=r28
.Llo111:
	se_add		r4,r26		# u8chIdx=r4 u8chIdx=r4 u16DutyCycle=r26
	lwz		r0,44(r4)		# u8chIdx=r4
	.diab.bclri		r0,14
	stw		r0,44(r4)		# u8chIdx=r4
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_WRITE32(EMIOS_CSR_ADDR32(u8mIdx, u8chIdx) , CSR_FLAG_BIT_U32 );
	.d2line		1756
	diab.li		r0,1
	lwzx		r3,r3,r6		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	se_add		r26,r3		# u16DutyCycle=r26 u16DutyCycle=r26 peMiosChannelConfig=r3
	stw		r0,48(r26)		# u16DutyCycle=r26
#         /* write regA with 0 and regB with nPeriod to achieve 100% duty */
#         /** @violates @ref Pwm_eMIOS_C_REF_3 Non-constant argument to function */
#         Pwm_eMios_UpdateChannelAB(u8mIdx, u8chIdx, (uint32)0U, (uint32)nPeriod);
	.d2line		1759
	rlwinm		r6,r7,0,16,31		# u8HwChannel=r6 nPeriod=r7
	mr		r3,r29		# u8mIdx=r3 u8mIdx=r29
.Llo121:
	mr		r4,r28		# u8chIdx=r4 u8chIdx=r28
	diab.li		r5,0		# nTempDuty=r5
	bl		Pwm_eMios_UpdateChannelAB
.Llo105:
	b		.L468
.L469:
#     }
#     else
#     {
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#         u8Notification =  Pwm_eMios_aChannelNotifType[u8HwChannel];
	.d2line		1764
.Llo106:
	lis		r3,Pwm_eMios_aChannelNotifType@ha		# peMiosChannelConfig=r3
.Llo122:
	e_add16i		r3,r3,Pwm_eMios_aChannelNotifType@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
.Llo146:
	rlwinm		r6,r6,0,24,31		# u8HwChannel=r6 u8HwChannel=r6
.Llo147:
	lbzx		r27,r3,r6		# u8Notification=r27 peMiosChannelConfig=r3
	mr		r27,r27		# u8Notification=r27 u8Notification=r27
#         if ((uint8)0U != u8Notification ) /* if notifications enabled */
	.d2line		1765
	rlwinm		r0,r27,0,24,31		# u8Notification=r27
	se_cmpi		r0,0
	bc		1,2,.L471	# eq
#         {
#             /* FLAG event enabled */
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_SET32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FEN_MASK_U32 );
	.d2line		1770
.Llo123:
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
.Llo124:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	rlwinm		r6,r29,2,22,29		# u8HwChannel=r6 u8mIdx=r29
	lwzx		r3,r3,r6		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	rlwinm		r4,r28,5,19,26		# peMiosChannelConfig=r4 u8chIdx=r28
	se_add		r3,r4		# peMiosChannelConfig=r3 peMiosChannelConfig=r3 peMiosChannelConfig=r4
	lwz		r0,44(r3)		# peMiosChannelConfig=r3
	.diab.bseti		r0,14
	stw		r0,44(r3)		# peMiosChannelConfig=r3
	b		.L472
.L471:
#         }
#         else
#         {
# #endif /* PWM_NOTIFICATION_SUPPORTED */
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FEN_MASK_U32 );
	.d2line		1777
.Llo125:
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
.Llo126:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	rlwinm		r6,r29,2,22,29		# u8HwChannel=r6 u8mIdx=r29
	lwzx		r4,r3,r6		# peMiosChannelConfig=r4 peMiosChannelConfig=r3
	rlwinm		r26,r28,5,19,26		# u16DutyCycle=r26 u8chIdx=r28
.Llo112:
	se_add		r4,r26		# peMiosChannelConfig=r4 peMiosChannelConfig=r4 u16DutyCycle=r26
	lwz		r0,44(r4)		# peMiosChannelConfig=r4
	.diab.bclri		r0,14
	stw		r0,44(r4)		# peMiosChannelConfig=r4
#             /* clear interrupt flag */
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_WRITE32(EMIOS_CSR_ADDR32(u8mIdx, u8chIdx) , CSR_FLAG_BIT_U32 );
	.d2line		1781
	diab.li		r0,1
	lwzx		r3,r3,r6		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	se_add		r26,r3		# u16DutyCycle=r26 u16DutyCycle=r26 peMiosChannelConfig=r3
	stw		r0,48(r26)		# u16DutyCycle=r26
.L472:
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#         }
# #endif
#         /** @violates @ref Pwm_eMIOS_C_REF_4 Implicit conversion changes signedness */
#         nTempDuty = nPeriod - nTempDuty;
	.d2line		1786
.Llo113:
	subf		r5,r5,r7		# nTempDuty=r5 nTempDuty=r5 nPeriod=r7
	mr		r5,r5		# nTempDuty=r5 nTempDuty=r5
#         /* write regA with calculated value of duty and regB with period */
#         /** @violates @ref Pwm_eMIOS_C_REF_3 Non-constant argument to function */
#         Pwm_eMios_UpdateChannelAB(u8mIdx, u8chIdx, (uint32)nTempDuty, (uint32)nPeriod);
	.d2line		1789
	rlwinm		r5,r5,0,16,31		# nTempDuty=r5 nTempDuty=r5
.Llo130:
	rlwinm		r6,r7,0,16,31		# u8HwChannel=r6 nPeriod=r7
	mr		r3,r29		# u8mIdx=r3 u8mIdx=r29
	mr		r4,r28		# u8chIdx=r4 u8chIdx=r28
	bl		Pwm_eMios_UpdateChannelAB
.L468:
#     }
#     
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#     if ((uint8)0U != u8Notification ) /* if notifications enabled */
	.d2line		1793
.Llo107:
	rlwinm		r0,r27,0,24,31		# u8Notification=r27
	se_cmpi		r0,0
	bc		1,2,.L473	# eq
#     {
#         /* set notification edge in u32CtrlRegVal */
#         if(PWM_BOTH_EDGES == (Pwm_EdgeNotificationType)u8Notification)
	.d2line		1796
	rlwinm		r27,r27,0,24,31		# u8Notification=r27 u8Notification=r27
	se_cmpi		r27,3		# u8Notification=r27
	bc		0,2,.L474	# ne
#         {
#             /* notification on both edges */
#             /** @violates @ref Pwm_eMIOS_C_REF_10 Cast from pointer to pointer.*/
#             REG_BIT_SET32(&u32CtrlRegVal, CCR_MODE_EDGE_SELECT_MASK_U32 );
	.d2line		1800
.Llo144:
	.diab.bseti		r30,30
	mr		r4,r30		# u32CtrlRegVal=r4 u32CtrlRegVal=r30
	b		.L473
.L474:
#         }
#         else
#         {
#             /** @violates @ref Pwm_eMIOS_C_REF_10 Cast from pointer to pointer.*/
#             REG_BIT_CLEAR32(&u32CtrlRegVal, CCR_MODE_EDGE_SELECT_MASK_U32 );
	.d2line		1805
	rlwinm		r30,r30,0,31,29		# u32CtrlRegVal=r30 u32CtrlRegVal=r30
	mr		r4,r30		# u32CtrlRegVal=r4 u32CtrlRegVal=r30
.L473:
#         }
#     }
# #endif /* PWM_NOTIFICATION_SUPPORTED */
#     
#     /* come from Idle or Uninit State */
#     /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#     if (CCR_MODE_GPO_U32 == (REG_READ32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx)) & CCR_MODE_MASK_U32))
	.d2line		1813
.Llo145:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8mIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8mIdx=r3 u8mIdx=r3
	rlwinm		r6,r29,2,22,29		# peMiosChannelConfig=r6 u8mIdx=r29
	lwzx		r3,r3,r6		# u8mIdx=r3 u8mIdx=r3
	rlwinm		r4,r28,5,19,26		# u8chIdx=r4 u8chIdx=r28
	se_add		r3,r4		# u8mIdx=r3 u8mIdx=r3 u8chIdx=r4
	lwz		r0,44(r3)		# u8mIdx=r3
	rlwinm		r0,r0,0,25,31
	se_cmpi		r0,1
	bc		0,2,.L466	# ne
#     {
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_WRITE32(EMIOS_CCNTR_ADDR32(u8mIdx, (uint32)u8chIdx) , 1U);
	.d2line		1817
.Llo98:
	diab.li		r0,1		# u32PolarityBit=r0
.Llo139:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8mIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8mIdx=r3 u8mIdx=r3
	rlwinm		r6,r29,2,22,29		# peMiosChannelConfig=r6 u8mIdx=r29
	lwzx		r3,r3,r6		# u8mIdx=r3 u8mIdx=r3
	rlwinm		r4,r28,5,19,26		# u8chIdx=r4 u8chIdx=r28
	se_add		r3,r4		# u8mIdx=r3 u8mIdx=r3 u8chIdx=r4
	stw		r0,40(r3)		# u8mIdx=r3 u32PolarityBit=r0
# 
#         if (PWM_HIGH == Pwm_eMios_aChannelPolarity[u8eMiosChannelIdx])
	.d2line		1819
	lis		r3,Pwm_eMios_aChannelPolarity@ha		# u8mIdx=r3
	e_add16i		r3,r3,Pwm_eMios_aChannelPolarity@l		# u8mIdx=r3 u8mIdx=r3
.Llo99:
	rlwinm		r31,r31,2,22,29		# u8eMiosChannelIdx=r31 u8eMiosChannelIdx=r31
.Llo100:
	lwzx		r0,r3,r31		# u32PolarityBit=r0 u8mIdx=r3
	se_cmpi		r0,1		# u32PolarityBit=r0
#         {
#             u32PolarityBit = (uint32)0x80;
	.d2line		1821
	diab.li		r3,128		# u8mIdx=r3
	isel		r3,r3,r0,2		# u32PolarityBit=r3 u8mIdx=r3 u32PolarityBit=r0
.L477:
#         } 
#         else
#         {
#             u32PolarityBit = (uint32)0;
	.d2line		1825
.Llo140:
	diab.li		r0,0		# u32PolarityBit=r0
.Llo141:
	isel		r0,r3,r0,2		# u32PolarityBit=r0 u32PolarityBit=r3 u32PolarityBit=r0
.L478:
#         }
# 
#         
#         REG_RMW32
	.d2line		1829
.Llo132:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u32PolarityBit=r3
.Llo142:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u32PolarityBit=r3 u32PolarityBit=r3
.Llo133:
	rlwinm		r29,r29,2,22,29		# u8mIdx=r29 u8mIdx=r29
.Llo134:
	lwzux		r4,r3,r29		# u8chIdx=r4 u32PolarityBit=r3
.Llo136:
	rlwinm		r28,r28,5,19,26		# u8chIdx=r28 u8chIdx=r28
.Llo137:
	se_add		r4,r28		# u8chIdx=r4 u8chIdx=r4 u8chIdx=r28
.Llo138:
	lwz		r3,44(r4)		# u32PolarityBit=r3 u8chIdx=r4
	rlwinm		r3,r3,0,0,23		# u32PolarityBit=r3 u32PolarityBit=r3
	rlwinm		r4,r30,0,25,31		# u8chIdx=r4 u32CtrlRegVal=r30
	or		r3,r3,r4		# u32PolarityBit=r3 u32PolarityBit=r3 u8chIdx=r4
	rlwinm		r0,r0,0,24,24		# u32PolarityBit=r0 u32PolarityBit=r0
	or		r0,r0,r3		# u32PolarityBit=r0 u32PolarityBit=r0 u32PolarityBit=r3
	lis		r3,EMIOS_BASE_ADDR32@ha		# u32PolarityBit=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u32PolarityBit=r3 u32PolarityBit=r3
	lwzux		r4,r3,r29		# u8chIdx=r4 u32PolarityBit=r3
	se_add		r4,r28		# u8chIdx=r4 u8chIdx=r4 u8chIdx=r28
	stw		r0,44(r4)		# u8chIdx=r4 u32PolarityBit=r0
#         (
#             EMIOS_CCR_ADDR32(u8mIdx, u8chIdx),
#             (CCR_MODE_MASK_U32 | CCR_EDPOL_MASK_U32),
#             ((u32CtrlRegVal & CCR_MODE_MASK_U32) | ((u32PolarityBit) & CCR_EDPOL_MASK_U32 ))
#             /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         );
#         
#         /* force match on the first edge - this also sets the signal level */
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_BIT_SET32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FORCMB_MASK_U32);
	.d2line		1841
	lis		r3,EMIOS_BASE_ADDR32@ha		# u32PolarityBit=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u32PolarityBit=r3 u32PolarityBit=r3
	lwzx		r4,r3,r29		# u8chIdx=r4 u32PolarityBit=r3
	se_add		r4,r28		# u8chIdx=r4 u8chIdx=r4 u8chIdx=r28
	lwz		r0,44(r4)		# u32PolarityBit=r0 u8chIdx=r4
	.diab.bseti		r0,19		# u32PolarityBit=r0
	stw		r0,44(r4)		# u8chIdx=r4 u32PolarityBit=r0
#         
#         /* set the prescaler divide value */
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_RMW32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_UCPRE_MASK_U32, u32CtrlRegVal & CCR_UCPRE_MASK_U32);
	.d2line		1846
	mr		r4,r3		# u32PolarityBit=r4
	lwzux		r0,r4,r29		# u32PolarityBit=r0 u32PolarityBit=r4
	add		r4,r0,r28		# u32PolarityBit=r4 u32PolarityBit=r0 u8chIdx=r28
	lwz		r0,44(r4)		# u32PolarityBit=r0 u32PolarityBit=r4
	rlwinm		r0,r0,0,6,3		# u32PolarityBit=r0 u32PolarityBit=r0
	rlwinm		r30,r30,0,4,5		# u32CtrlRegVal=r30 u32CtrlRegVal=r30
	or		r30,r30,r0		# u32CtrlRegVal=r30 u32CtrlRegVal=r30 u32PolarityBit=r0
	mr		r4,r3		# u32PolarityBit=r4
	lwzux		r0,r4,r29		# u32PolarityBit=r0 u32PolarityBit=r4
	add		r4,r0,r28		# u32PolarityBit=r4 u32PolarityBit=r0 u8chIdx=r28
	stw		r30,44(r4)		# u32PolarityBit=r4 u32CtrlRegVal=r30
#         /* enable prescaler - this will start the internal counter */
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_BIT_SET32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_UCPREN_MASK_U32 );
	.d2line		1850
	lwzx		r0,r3,r29		# u32PolarityBit=r0 u32PolarityBit=r3
	se_add		r28,r0		# u8chIdx=r28 u8chIdx=r28 u32PolarityBit=r0
	lwz		r0,44(r28)		# u32PolarityBit=r0 u8chIdx=r28
	.diab.bseti		r0,6		# u32PolarityBit=r0
	stw		r0,44(r28)		# u8chIdx=r28 u32PolarityBit=r0
.L466:
#     }
# }
	.d2line		1852
	.d2epilogue_begin
.Llo128:
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)		# u32PolarityBit=r0
	mtspr		lr,r0		# u32PolarityBit=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L735:
	.type		Pwm_eMios_SetRegs_OPWMFMB_mode,@function
	.size		Pwm_eMios_SetRegs_OPWMFMB_mode,.-Pwm_eMios_SetRegs_OPWMFMB_mode
# Number of nodes = 433

# Allocations for Pwm_eMios_SetRegs_OPWMFMB_mode
#	?a4		u8eMiosChannelIdx
#	?a5		nPeriod
#	?a6		u16DutyCycle
#	?a7		peMiosChannelConfig
#	?a8		$$110
#	?a9		$$109
#	?a10		$$108
#	?a11		$$107
#	?a12		$$106
#	?a13		$$105
#	?a14		u32CtrlRegVal
#	?a15		nTempDuty
#	?a16		u8mIdx
#	?a17		u8chIdx
#	?a18		u32PolarityBit
#	?a19		u8Notification
#	?a20		u8HwChannel
# FUNC(void, PWM_CODE) Pwm_eMios_Init
	.section	.text_vle
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Pwm_eMios.c"
        .d2line         2246,22
#$$ld
.L757:

#$$bf	Pwm_eMios_Init,interprocedural,rasave,nostackparams
	.globl		Pwm_eMios_Init
	.d2_cfa_start __cie
Pwm_eMios_Init:
.Llo148:
	diab.li		r0,-384
	stwux		r1,r1,r0		
	.d2_cfa_def_cfa_offset	384
	mfspr		r0,lr
	diab.addi		r12,r1,348
	stmw		r23,0(r12)		# offset r1+348  0x15c
	.d2_cfa_offset_list	23,31,1,1
	stw		r0,388(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# peMiosIpConfig=r31 peMiosIpConfig=r3
	.d2prologue_end
# (
#     P2CONST(Pwm_eMios_IpConfigType,      AUTOMATIC, PWM_APPL_CONST) peMiosIpConfig
# )
# {
#     /* @brief Pointer to eMIOS channel specific configuration */
#     P2CONST(Pwm_eMios_ChannelConfigType,AUTOMATIC,PWM_APPL_CONST) peMiosChannelConfig;
# 
#     VAR(Pwm_eMios_ControlType, AUTOMATIC)   u32CtrlRegVal;
#     
#     VAR(Pwm_PeriodType,        AUTOMATIC)   nPeriod;
#     VAR(uint16,                AUTOMATIC)   u16DutyCycle;
# 
#     /* logical channel */
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC)   u8Counter;
# 
#     /* assigned eMIOS HW module index and channel index */
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC)   u8mIdx;
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC)   u8chIdx;
# 
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC)   u8MasterModule;
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC)   u8MasterChannel;
# 
#     VAR(uint8,                 AUTOMATIC)   u8MasterBusIdx;
#     VAR(uint8,                 AUTOMATIC)   aMasterBusMode[PWM_EMIOS_HW_CHANNELS_U8];
#     VAR(uint32,                AUTOMATIC)   aPrescaler[PWM_EMIOS_HW_CHANNELS_U8];
# 
#     for (u8Counter=0U; u8Counter < (Pwm_eMios_ChannelType)PWM_EMIOS_HW_CHANNELS_U8; u8Counter++)
	.d2line		2273
	diab.li		r3,0		# u8Counter=r3
.L492:
.Llo149:
	rlwinm		r5,r3,0,24,31		# u8Counter=r3
.Llo150:
	cmpi		0,0,r5,64
	bc		0,0,.L494	# ge
#     {
#         aMasterBusMode[u8Counter] = (uint8)0xFFU;
	.d2line		2275
	diab.li		r0,255
	diab.addi		r4,r1,8
	rlwinm		r5,r3,0,24,31		# u8Counter=r3
	stbx		r0,r4,r5
#         
#         aPrescaler[u8Counter] = (uint32)0;
	.d2line		2277
	diab.li		r0,0
	diab.addi		r4,r1,72
	rlwinm		r5,r3,2,22,29		# u8Counter=r3
	stwx		r0,r4,r5
#     }
	.d2line		2278
	diab.addi		r5,r3,1		# u8Counter=r3
	se_addi		r3,1		# u8Counter=r3 u8Counter=r3
	b		.L492
.L494:
# 
#     for (u8Counter=0U; u8Counter < peMiosIpConfig->u8NumChannels; u8Counter++)
	.d2line		2280
	diab.li		r29,0		# u8Counter=r29
.L495:
.Llo199:
	rlwinm		r0,r29,0,24,31		# u8Counter=r29
.Llo200:
	lbz		r3,0(r31)		# u8Counter=r3 peMiosIpConfig=r31
	se_cmp		r0,r3		# u8Counter=r3
	bc		0,0,.L497	# ge
#     {
#         /* only handle EMIOS channels */
#         /** @violates @ref Pwm_eMIOS_C_REF_11 Array indexing shall be the only allowed form of pointer arithmetic.*/
#         peMiosChannelConfig = &(*peMiosIpConfig->pChannelsConfig)[u8Counter];
	.d2line		2284
	rlwinm		r0,r29,0,24,31		# u8Counter=r29
	lwz		r28,4(r31)		# peMiosChannelConfig=r28 peMiosIpConfig=r31
.Llo160:
	rlwinm		r3,r0,5,0,26		# u8Counter=r3
	se_slwi		r0,3
	subf		r0,r0,r3		# u8Counter=r3
	se_add		r0,r28		# peMiosChannelConfig=r28
	mr		r28,r0		# peMiosChannelConfig=r28 peMiosChannelConfig=r0
# 
#         u8mIdx = (uint8)EMIOS_MODULE_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		2286
	lbz		r24,12(r28)		# u8chIdx=r24 peMiosChannelConfig=r28
.Llo208:
	rlwinm		r25,r24,27,29,31		# u8mIdx=r25 u8chIdx=r24
.Llo202:
	mr		r25,r25		# u8mIdx=r25 u8mIdx=r25
#         u8chIdx = (uint8)EMIOS_CHANNEL_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		2287
	rlwinm		r24,r24,0,27,31		# u8chIdx=r24 u8chIdx=r24
	mr		r24,r24		# u8chIdx=r24 u8chIdx=r24
# 
#         Pwm_eMios_aChannelPolarity[u8Counter] = peMiosChannelConfig->ePwmPolarity;
	.d2line		2289
	lwz		r0,0(r28)		# peMiosChannelConfig=r28
	lis		r3,Pwm_eMios_aChannelPolarity@ha		# u8Counter=r3
	e_add16i		r3,r3,Pwm_eMios_aChannelPolarity@l		# u8Counter=r3 u8Counter=r3
	rlwinm		r4,r29,2,22,29		# nPeriod=r4 u8Counter=r29
	stwx		r0,r3,r4		# u8Counter=r3
# 
# #if ((PWM_DE_INIT_API == STD_ON)||\
#      (PWM_SET_OUTPUT_TO_IDLE_API == STD_ON)||\
#     (PWM_FEATURE_DAOC == STD_ON))
#         Pwm_eMios_aChannelIdleState[u8Counter] = peMiosChannelConfig->ePwmIdleState;
	.d2line		2294
	lwz		r0,4(r28)		# peMiosChannelConfig=r28
	lis		r3,Pwm_eMios_aChannelIdleState@ha		# u8Counter=r3
	e_add16i		r3,r3,Pwm_eMios_aChannelIdleState@l		# u8Counter=r3 u8Counter=r3
	stwx		r0,r3,r4		# u8Counter=r3
# #endif
#         u32CtrlRegVal  = peMiosChannelConfig->u32ControlValue;
	.d2line		2296
	lwz		r27,16(r28)		# u32CtrlRegVal=r27 peMiosChannelConfig=r28
.Llo174:
	mr		r27,r27		# u32CtrlRegVal=r27 u32CtrlRegVal=r27
#         nPeriod      = peMiosChannelConfig->nPwmDefaultPeriod;
	.d2line		2297
	lhz		r30,10(r28)		# nPeriod=r30 peMiosChannelConfig=r28
.Llo180:
	mr		r30,r30		# nPeriod=r30 nPeriod=r30
#         u16DutyCycle = peMiosChannelConfig->u16PwmDefaultDutyCycle;
	.d2line		2298
	lhz		r26,8(r28)		# u16DutyCycle=r26 peMiosChannelConfig=r28
.Llo196:
	mr		r26,r26		# u16DutyCycle=r26 u16DutyCycle=r26
# 
#         u8MasterBusIdx = (uint8)Pwm_eMios_GetMasterBus(u8mIdx, u8chIdx, ((uint32)u32CtrlRegVal & CCR_BSL_MASK_U32));
	.d2line		2300
	rlwinm		r5,r27,0,21,22		# u16DutyCycle=r5 u32CtrlRegVal=r27
	mr		r3,r25		# u8mIdx=r3 u8mIdx=r25
	mr		r4,r24		# u8chIdx=r4 u8chIdx=r24
	bl		Pwm_eMios_GetMasterBus
.Llo214:
	mr		r23,r3		# u8MasterBusIdx=r23 u8MasterBusIdx=r3
# 
# #ifdef EMIOS_UCDIS_AVAILABLE
#     #if (EMIOS_UCDIS_AVAILABLE == STD_ON)
#         eMios_StartChannel((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		2304
	lbz		r3,12(r28)		# u8Counter=r3 peMiosChannelConfig=r28
.Llo215:
	bl		eMios_StartChannel
#     #endif  /* EMIOS_UCDIS_AVAILABLE */
# #endif
# 
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_RMW32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FREN_MASK_U32, CCR_FREN_MASK_U32 & u32CtrlRegVal);
	.d2line		2310
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8Counter=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8Counter=r3 u8Counter=r3
	rlwinm		r6,r25,2,22,29		# peMiosChannelConfig=r6 u8mIdx=r25
	lwzux		r0,r3,r6		# u8Counter=r3
	rlwinm		r4,r24,5,19,26		# u8chIdx=r4 u8chIdx=r24
	add		r3,r0,r4		# u8Counter=r3 u8chIdx=r4
	lwz		r0,44(r3)		# u8Counter=r3
	.diab.bclri		r0,0
	rlwinm		r3,r27,0,0,0		# u8Counter=r3 u32CtrlRegVal=r27
	or		r0,r0,r3		# u8Counter=r3
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8Counter=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8Counter=r3 u8Counter=r3
	lwzx		r3,r3,r6		# u8Counter=r3 u8Counter=r3
	se_add		r4,r3		# u8chIdx=r4 u8chIdx=r4 u8Counter=r3
	stw		r0,44(r4)		# u8chIdx=r4
#         
#         /* before entering GPIO mode set the EDPOL bit to the configured IDLE value */
#         if (PWM_HIGH == peMiosChannelConfig->ePwmIdleState)
	.d2line		2313
	lwz		r0,4(r28)		# peMiosChannelConfig=r28
	se_cmpi		r0,1
	bc		0,2,.L498	# ne
#         {
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_SET32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_EDPOL_MASK_U32);
	.d2line		2317
.Llo216:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8Counter=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8Counter=r3 u8Counter=r3
	rlwinm		r6,r25,2,22,29		# peMiosChannelConfig=r6 u8mIdx=r25
	lwzx		r3,r3,r6		# u8Counter=r3 u8Counter=r3
	rlwinm		r4,r24,5,19,26		# u8chIdx=r4 u8chIdx=r24
	se_add		r3,r4		# u8Counter=r3 u8Counter=r3 u8chIdx=r4
	lwz		r0,44(r3)		# u8Counter=r3
	.diab.bseti		r0,24
	stw		r0,44(r3)		# u8Counter=r3
	b		.L499
.L498:
#         }
#         else
#         {
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_EDPOL_MASK_U32 );
	.d2line		2323
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8Counter=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8Counter=r3 u8Counter=r3
	rlwinm		r6,r25,2,22,29		# peMiosChannelConfig=r6 u8mIdx=r25
	lwzx		r3,r3,r6		# u8Counter=r3 u8Counter=r3
	rlwinm		r4,r24,5,19,26		# u8chIdx=r4 u8chIdx=r24
	se_add		r3,r4		# u8Counter=r3 u8Counter=r3 u8chIdx=r4
	lwz		r0,44(r3)		# u8Counter=r3
	.diab.bclri		r0,24
	stw		r0,44(r3)		# u8Counter=r3
.L499:
#         }
#         
#         /* Enter GPIO output mode */
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_RMW32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_MODE_MASK_U32, CCR_MODE_GPO_U32);
	.d2line		2329
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8Counter=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8Counter=r3 u8Counter=r3
	rlwinm		r6,r25,2,22,29		# peMiosChannelConfig=r6 u8mIdx=r25
	lwzux		r0,r3,r6		# u8Counter=r3
	rlwinm		r7,r24,5,19,26		# u8chIdx=r24
	add		r3,r0,r7		# u8Counter=r3
	lwz		r0,44(r3)		# u8Counter=r3
	rlwinm		r0,r0,0,0,24
	.diab.bseti		r0,31
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8Counter=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8Counter=r3 u8Counter=r3
	lwzux		r4,r3,r6		# u8chIdx=r4 u8Counter=r3
	add		r3,r4,r7		# u8Counter=r3 u8chIdx=r4
	stw		r0,44(r3)		# u8Counter=r3
#         /* Disable channel interrupts  */
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FEN_MASK_U32);
	.d2line		2333
	lis		r5,EMIOS_BASE_ADDR32@ha		# u16DutyCycle=r5
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# u16DutyCycle=r5 u16DutyCycle=r5
	lwzx		r3,r5,r6		# u8Counter=r3 u16DutyCycle=r5
	se_add		r3,r7		# u8Counter=r3 u8Counter=r3
	lwz		r0,44(r3)		# u8Counter=r3
	.diab.bclri		r0,14
	stw		r0,44(r3)		# u8Counter=r3
#         /* Clear pending interrupt flag for the channel  */
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_WRITE32(EMIOS_CSR_ADDR32(u8mIdx, u8chIdx), CSR_FLAG_BIT_U32);
	.d2line		2337
	diab.li		r0,1
	mr		r4,r5		# u16DutyCycle=r4
	lwzx		r3,r5,r6		# u8Counter=r3 u16DutyCycle=r5
	se_add		r3,r7		# u8Counter=r3 u8Counter=r3
	stw		r0,48(r3)		# u8Counter=r3
# 
#         /* store the nPeriod that the current UC is using */
#         Pwm_eMios_aChannelPeriod[peMiosChannelConfig->u8HwChannel] = nPeriod;
	.d2line		2340
	lis		r3,Pwm_eMios_aChannelPeriod@ha		# u8Counter=r3
	e_add16i		r3,r3,Pwm_eMios_aChannelPeriod@l		# u8Counter=r3 u8Counter=r3
	lbz		r0,12(r28)		# peMiosChannelConfig=r28
	rlwinm		r0,r0,1,23,30
	sthx		r30,r3,r0		# u8Counter=r3 nPeriod=r30
#         
# #if (PWM_GET_CHANNEL_STATE_API == STD_ON)
#         /* store the dutycycle */
#         Pwm_eMios_aChannelDuty[u8Counter] = u16DutyCycle;
	.d2line		2344
	lis		r3,Pwm_eMios_aChannelDuty@ha		# u8Counter=r3
	e_add16i		r3,r3,Pwm_eMios_aChannelDuty@l		# u8Counter=r3 u8Counter=r3
	rlwinm		r0,r29,1,23,30		# u8Counter=r29
	sthx		r26,r3,r0		# u8Counter=r3 u16DutyCycle=r26
# #endif /*PWM_GET_CHANNEL_STATE_API */
# 
#         /* write selected bus to the control register */
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_RMW32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_BSL_MASK_U32, u32CtrlRegVal & CCR_BSL_MASK_U32);
	.d2line		2350
	lwzux		r3,r4,r6		# u8Counter=r3 u16DutyCycle=r4
	se_add		r3,r7		# u8Counter=r3 u8Counter=r3
	lwz		r0,44(r3)		# u8Counter=r3
	rlwinm		r0,r0,0,23,20
	rlwinm		r3,r27,0,21,22		# u8Counter=r3 u32CtrlRegVal=r27
	or		r0,r0,r3		# u8Counter=r3
	lwzx		r4,r5,r6		# u16DutyCycle=r4 u16DutyCycle=r5
	se_add		r7,r4		# u16DutyCycle=r4
	stw		r0,44(r7)
# 
#         if (PWM_BUS_INTERNAL_COUNTER_U32 == ((uint32)u32CtrlRegVal & CCR_BSL_MASK_U32))
	.d2line		2352
	cmpi		0,0,r3,1536		# u8Counter=r3
	bc		0,2,.L500	# ne
#         {
#             /* This will stop the internal counterl  */
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_UCPREN_MASK_U32 );
	.d2line		2357
.Llo175:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8Counter=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8Counter=r3 u8Counter=r3
	rlwinm		r6,r25,2,22,29		# peMiosChannelConfig=r6 u8mIdx=r25
	lwzx		r3,r3,r6		# u8Counter=r3 u8Counter=r3
	rlwinm		r4,r24,5,19,26		# u16DutyCycle=r4 u8chIdx=r24
	se_add		r3,r4		# u8Counter=r3 u8Counter=r3 u16DutyCycle=r4
	lwz		r0,44(r3)		# u8Counter=r3
	.diab.bclri		r0,6
	stw		r0,44(r3)		# u8Counter=r3
# 
#             switch((u32CtrlRegVal & CCR_MODE_MASK_U32))
	.d2line		2359
.Llo176:
	rlwinm		r27,r27,0,25,31		# u32CtrlRegVal=r27 u32CtrlRegVal=r27
	cmpi		0,0,r27,88		# u32CtrlRegVal=r27
	bc		0,2,.L504	# ne
#             {
#             case PWM_MODE_OPWFMB_U32:
#                 Pwm_eMios_SetRegs_OPWMFMB_mode(u8Counter, nPeriod, u16DutyCycle, peMiosChannelConfig);
	.d2line		2362
.Llo177:
	mr		r3,r29		# u8Counter=r3 u8Counter=r29
	mr		r4,r30		# nPeriod=r4 nPeriod=r30
	mr		r5,r26		# u16DutyCycle=r5 u16DutyCycle=r26
	mr		r6,r28		# peMiosChannelConfig=r6 peMiosChannelConfig=r28
	bl		Pwm_eMios_SetRegs_OPWMFMB_mode
	b		.L504
.L500:
#                 break;
# #if (PWM_FEATURE_OPWFM == STD_ON)
#             case PWM_MODE_OPWFM_U32:
#                 Pwm_eMios_SetRegs_OPWMFM_mode(u8Counter, nPeriod, u16DutyCycle, peMiosChannelConfig);
#                 break;
# #endif /*PWM_FEATURE_OPWFM*/
#             default:
#                 break;
#             }
#         }
#         else
#         { /* Bus A or Bus Diverse */
#             switch((u32CtrlRegVal & CCR_MODE_MASK_U32))
	.d2line		2375
.Llo178:
	rlwinm		r27,r27,0,25,31		# u32CtrlRegVal=r27 u32CtrlRegVal=r27
	cmpi		0,0,r27,96		# u32CtrlRegVal=r27
	bc		0,2,.L506	# ne
#             {
# #if (PWM_FEATURE_OPWMCB == STD_ON)   
#             case PWM_MODE_OPWMCB_LEAD_DEADTIME_U32:
#             case PWM_MODE_OPWMCB_TRAIL_DEADTIME_U32:
#                 /* store the nPeriod that the master UC is using */
#                 Pwm_eMios_aChannelPeriod[u8MasterBusIdx] = nPeriod;
#                 Pwm_eMios_SetRegs_OPWMCB_mode(u8Counter, nPeriod, u16DutyCycle, peMiosChannelConfig);
#                 break;
# #endif
# #if (PWM_FEATURE_DAOC == STD_ON)   
#             case PWM_MODE_DAOC_U32:
#                 /* store the nPeriod that the master UC is using */
#                 Pwm_eMios_aChannelPeriod[u8MasterBusIdx] = peMiosChannelConfig->nPwmDaocModulo;
#                 /* store the modulo of DAOC channel */
#                 Pwm_DAOC_aChannelModulo[peMiosChannelConfig->u8HwChannel] = peMiosChannelConfig->nPwmDaocModulo;
#                 Pwm_eMios_SetRegs_DAOC_mode(u8Counter, nPeriod, u16DutyCycle, peMiosChannelConfig);
#                 break;
# #endif
# #if (PWM_FEATURE_OPWMT == STD_ON)   
#             case PWM_MODE_OPWMT_U32:
#                 /* store the nPeriod that the master UC is using */
#                 Pwm_eMios_aChannelPeriod[u8MasterBusIdx] = nPeriod;
#                 /* store the Trigger Delay that the master UC is using */
#                 Pwm_eMios_aTriggerDelay[u8Counter] = peMiosChannelConfig->nPwmTriggerDelay;
#                 /* store the offset channel that the master UC is using */
#                 Pwm_eMios_aChannelOffset[u8Counter] = peMiosChannelConfig->nPwmOffset;
#                 Pwm_eMios_SetRegs_OPWMT_mode(u8Counter, nPeriod, u16DutyCycle, peMiosChannelConfig);
#                 break;
# #endif
#             case PWM_MODE_OPWMB_U32:
#                 /* store the nPeriod that the master UC is using */
#                 Pwm_eMios_aChannelPeriod[u8MasterBusIdx] = nPeriod;
	.d2line		2407
.Llo179:
	lis		r3,Pwm_eMios_aChannelPeriod@ha		# u8Counter=r3
	e_add16i		r3,r3,Pwm_eMios_aChannelPeriod@l		# u8Counter=r3 u8Counter=r3
	rlwinm		r0,r23,1,23,30		# u8MasterBusIdx=r23
	sthx		r30,r3,r0		# u8Counter=r3 nPeriod=r30
#                 /* store the offset channel that the master UC is using */
#                 Pwm_eMios_aChannelOffset[u8Counter] = peMiosChannelConfig->nPwmOffset;
	.d2line		2409
	lhz		r0,20(r28)		# peMiosChannelConfig=r28
	lis		r3,Pwm_eMios_aChannelOffset@ha		# u8Counter=r3
	e_add16i		r3,r3,Pwm_eMios_aChannelOffset@l		# u8Counter=r3 u8Counter=r3
	rlwinm		r4,r29,1,23,30		# nPeriod=r4 u8Counter=r29
	sthx		r0,r3,r4		# u8Counter=r3
#                 Pwm_eMios_SetRegs_OPWMB_mode(u8Counter, nPeriod, u16DutyCycle, peMiosChannelConfig);
	.d2line		2410
	mr		r3,r29		# u8Counter=r3 u8Counter=r29
	mr		r4,r30		# nPeriod=r4 nPeriod=r30
	mr		r5,r26		# u16DutyCycle=r5 u16DutyCycle=r26
	mr		r6,r28		# peMiosChannelConfig=r6 peMiosChannelConfig=r28
	bl		Pwm_eMios_SetRegs_OPWMB_mode
.L506:
#                 break;
# #if (PWM_FEATURE_OPWM == STD_ON) 
#             case PWM_MODE_OPWM_U32:
#                 /* store the nPeriod that the master UC is using */
#                 Pwm_eMios_aChannelPeriod[u8MasterBusIdx] = nPeriod;
#                 /* store the offset channel that the master UC is using */
#                 Pwm_eMios_aChannelOffset[u8Counter] = peMiosChannelConfig->nPwmOffset;
#                 Pwm_eMios_SetRegs_OPWM_mode(u8Counter, nPeriod, u16DutyCycle, peMiosChannelConfig);
#                 break;
# #endif /*PWM_FEATURE_OPWM*/
#             default:
#                 break;
#             }
#             /** @violates @ref Pwm_eMIOS_C_REF_11 pointer arithmetic other than array indexing used */
#             if((uint8)0xFFU == aMasterBusMode[u8MasterBusIdx]) /* This master bus have not been configed*/
	.d2line		2425
	diab.addi		r3,r1,8		# u8Counter=r3
	rlwinm		r0,r23,0,24,31		# u8MasterBusIdx=r23
	lbzx		r0,r3,r0		# u8Counter=r3
	cmpi		0,0,r0,255
	bc		0,2,.L504	# ne
#             {
#                 /* store master bus mode and master bus prescaler*/
#                 aMasterBusMode[u8MasterBusIdx] = peMiosChannelConfig->u8MasterMode;
	.d2line		2428
.Llo181:
	lbz		r0,22(r28)		# peMiosChannelConfig=r28
	diab.addi		r3,r1,8		# u8Counter=r3
	rlwinm		r4,r23,0,24,31		# nPeriod=r4 u8MasterBusIdx=r23
	stbx		r0,r3,r4		# u8Counter=r3
#                 aPrescaler[u8MasterBusIdx] = peMiosChannelConfig->u32ControlValue & CCR_UCPRE_MASK_U32;
	.d2line		2429
	lwz		r0,16(r28)		# peMiosChannelConfig=r28
	rlwinm		r0,r0,0,4,5
	diab.addi		r3,r1,72		# u8Counter=r3
	rlwinm		r23,r23,2,22,29		# u8MasterBusIdx=r23 u8MasterBusIdx=r23
.Llo217:
	stwx		r0,r3,r23		# u8Counter=r3
#                 /* enable unified channel to make registers writeable */
# #ifdef EMIOS_UCDIS_AVAILABLE
#     #if (EMIOS_UCDIS_AVAILABLE == STD_ON)
#                 eMios_StartChannel((uint8)u8MasterBusIdx);
	.d2line		2433
	mr		r3,r4		# nPeriod=r3
	bl		eMios_StartChannel
.L504:
#     #endif  /* EMIOS_UCDIS_AVAILABLE */
# #endif
#             }
#         }
#         
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#         if (((uint16)0x0000 == u16DutyCycle) || (PWM_DUTY_CYCLE_100 == u16DutyCycle))
	.d2line		2440
.Llo182:
	rlwinm		r5,r26,0,16,31		# u16DutyCycle=r5 u16DutyCycle=r26
	se_cmpi		r5,0		# u16DutyCycle=r5
	bc		1,2,.L520	# eq
.Llo161:
	rlwinm		r26,r26,0,16,31		# u16DutyCycle=r26 u16DutyCycle=r26
	cmpli		0,0,r26,32768		# u16DutyCycle=r26
	bc		0,2,.L509	# ne
.L520:
#         {
#             /* no transitions in the signal */
#             Pwm_eMios_aDutyState[u8mIdx] &= ~((uint32)1<< u8chIdx);
	.d2line		2443
.Llo203:
	lis		r3,Pwm_eMios_aDutyState@ha		# u8Counter=r3
	e_add16i		r3,r3,Pwm_eMios_aDutyState@l		# u8Counter=r3 u8Counter=r3
.Llo204:
	rlwinm		r25,r25,2,22,29		# u8mIdx=r25 u8mIdx=r25
.Llo205:
	lwzx		r0,r3,r25		# u8Counter=r3
	diab.li		r4,1		# nPeriod=r4
.Llo183:
	slw		r4,r4,r24		# nPeriod=r4 nPeriod=r4 u8chIdx=r24
	andc		r0,r0,r4		# nPeriod=r4
	stwx		r0,r3,r25		# u8Counter=r3
	b		.L510
.L509:
#         }
#         else
#         {
#             /* transitions available in the signal */
#             Pwm_eMios_aDutyState[u8mIdx] |= ((uint32)1U<< u8chIdx);
	.d2line		2448
.Llo184:
	lis		r3,Pwm_eMios_aDutyState@ha		# u8Counter=r3
	e_add16i		r3,r3,Pwm_eMios_aDutyState@l		# u8Counter=r3 u8Counter=r3
.Llo206:
	rlwinm		r25,r25,2,22,29		# u8mIdx=r25 u8mIdx=r25
.Llo207:
	lwzx		r0,r3,r25		# u8Counter=r3
	diab.li		r4,1		# nPeriod=r4
.Llo185:
	slw		r4,r4,r24		# nPeriod=r4 nPeriod=r4 u8chIdx=r24
	or		r0,r0,r4		# nPeriod=r4
	stwx		r0,r3,r25		# u8Counter=r3
.L510:
#         }
# #endif /* PWM_NOTIFICATION_SUPPORTED */
#     }
	.d2line		2451
.Llo186:
	diab.addi		r0,r29,1		# u8Counter=r29
	se_addi		r29,1		# u8Counter=r29 u8Counter=r29
	b		.L495
.L497:
# 
#     /* configuration for master bus */
#     for (u8Counter=0U; u8Counter < PWM_EMIOS_HW_CHANNELS_U8; u8Counter++)
	.d2line		2454
	diab.li		r3,0		# u8Counter=r3
.L511:
.Llo151:
	rlwinm		r4,r3,0,24,31		# nPeriod=r4 u8Counter=r3
.Llo187:
	cmpli		0,0,r4,64		# nPeriod=r4
	bc		0,0,.L491	# ge
#     {
#         /** @violates @ref Pwm_eMIOS_C_REF_11 pointer arithmetic other than array indexing used */
#         if((uint8)0xFFU != aMasterBusMode[u8Counter]) /* Master bus is used */
	.d2line		2457
.Llo188:
	diab.addi		r4,r1,8		# nPeriod=r4
.Llo189:
	rlwinm		r30,r3,0,24,31		# nPeriod=r30 u8Counter=r3
	lbzx		r0,r4,r30		# u8MasterModule=r0 nPeriod=r4
.Llo209:
	cmpi		0,0,r0,255		# u8MasterModule=r0
	bc		1,2,.L514	# eq
#         {
#             u8MasterModule  = EMIOS_MODULE_INDEX_U8(u8Counter);
	.d2line		2459
.Llo190:
	rlwinm		r0,r3,27,29,31		# u8MasterModule=r0 u8Counter=r3
.Llo210:
	mr		r0,r0		# u8MasterModule=r0 u8MasterModule=r0
#             u8MasterChannel = EMIOS_CHANNEL_INDEX_U8(u8Counter);
	.d2line		2460
	rlwinm		r4,r3,0,27,31		# u8MasterChannel=r4 u8Counter=r3
.Llo212:
	mr		r4,r4		# u8MasterChannel=r4 u8MasterChannel=r4
# 
#            /* enter GPIO output mode */
#             /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_RMW32(EMIOS_CCR_ADDR32(u8MasterModule, (uint32)u8MasterChannel), CCR_MODE_MASK_U32, CCR_MODE_GPO_U32);
	.d2line		2465
	lis		r5,EMIOS_BASE_ADDR32@ha		# u16DutyCycle=r5
.Llo197:
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# u16DutyCycle=r5 u16DutyCycle=r5
	rlwinm		r7,r0,2,22,29		# u8MasterModule=r0
	lwzux		r6,r5,r7		# peMiosChannelConfig=r6 u16DutyCycle=r5
.Llo162:
	rlwinm		r31,r4,5,19,26		# peMiosIpConfig=r31 u8MasterChannel=r4
.Llo152:
	add		r5,r6,r31		# u16DutyCycle=r5 peMiosChannelConfig=r6 peMiosIpConfig=r31
	lwz		r6,44(r5)		# peMiosChannelConfig=r6 u16DutyCycle=r5
	rlwinm		r6,r6,0,0,24		# peMiosChannelConfig=r6 peMiosChannelConfig=r6
	.diab.bseti		r6,31		# peMiosChannelConfig=r6
	lis		r5,EMIOS_BASE_ADDR32@ha		# u16DutyCycle=r5
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# u16DutyCycle=r5 u16DutyCycle=r5
	lwzux		r30,r5,r7		# nPeriod=r30 u16DutyCycle=r5
.Llo191:
	add		r5,r30,r31		# u16DutyCycle=r5 nPeriod=r30 peMiosIpConfig=r31
	stw		r6,44(r5)		# u16DutyCycle=r5 peMiosChannelConfig=r6
#             /* disable prescaler - this will stop the internal counter */
#             /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8MasterModule, (uint32)u8MasterChannel), CCR_UCPREN_MASK_U32);
	.d2line		2469
	lis		r6,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r6
	e_add16i		r6,r6,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r6 peMiosChannelConfig=r6
	lwzx		r5,r6,r7		# u16DutyCycle=r5 peMiosChannelConfig=r6
	se_add		r5,r31		# u16DutyCycle=r5 u16DutyCycle=r5 peMiosIpConfig=r31
	lwz		r30,44(r5)		# nPeriod=r30 u16DutyCycle=r5
	.diab.bclri		r30,6		# nPeriod=r30
	stw		r30,44(r5)		# u16DutyCycle=r5 nPeriod=r30
#             /* update prescaler values*/
#             /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_RMW32(EMIOS_CCR_ADDR32(u8MasterModule, (uint32)u8MasterChannel), CCR_UCPRE_MASK_U32, aPrescaler[u8Counter]);
	.d2line		2473
	mr		r5,r6		# peMiosChannelConfig=r5
.Llo198:
	lwzux		r30,r5,r7		# nPeriod=r30 peMiosChannelConfig=r5
	add		r5,r30,r31		# peMiosChannelConfig=r5 nPeriod=r30 peMiosIpConfig=r31
	lwz		r29,44(r5)		# u8Counter=r29 peMiosChannelConfig=r5
	rlwinm		r29,r29,0,6,3		# u8Counter=r29 u8Counter=r29
	diab.addi		r5,r1,72		# peMiosChannelConfig=r5
	rlwinm		r30,r3,2,22,29		# nPeriod=r30 u8Counter=r3
	lwzx		r30,r5,r30		# nPeriod=r30 peMiosChannelConfig=r5
	or		r30,r30,r29		# nPeriod=r30 nPeriod=r30 u8Counter=r29
	mr		r5,r6		# peMiosChannelConfig=r5
	lwzux		r29,r5,r7		# u8Counter=r29 peMiosChannelConfig=r5
	add		r5,r29,r31		# peMiosChannelConfig=r5 u8Counter=r29 peMiosIpConfig=r31
	stw		r30,44(r5)		# peMiosChannelConfig=r5 nPeriod=r30
# 
#             /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8MasterModule, (uint32)u8MasterChannel),CCR_FEN_MASK_U32);
	.d2line		2477
	lwzx		r5,r6,r7		# peMiosChannelConfig=r5 peMiosChannelConfig=r6
	se_add		r31,r5		# peMiosIpConfig=r31 peMiosIpConfig=r31 peMiosChannelConfig=r5
	lwz		r5,44(r31)		# peMiosChannelConfig=r5 peMiosIpConfig=r31
	.diab.bclri		r5,14		# peMiosChannelConfig=r5
	stw		r5,44(r31)		# peMiosIpConfig=r31 peMiosChannelConfig=r5
#             /** @violates @ref Pwm_eMIOS_C_REF_11 pointer arithmetic other than array indexing used */
#             switch(aMasterBusMode[u8Counter])
	.d2line		2479
	diab.addi		r5,r1,8		# peMiosChannelConfig=r5
	rlwinm		r30,r3,0,24,31		# nPeriod=r30 u8Counter=r3
.Llo192:
	lbzx		r6,r5,r30		# peMiosChannelConfig=r6 peMiosChannelConfig=r5
.Llo163:
	se_cmpi		r6,16		# peMiosChannelConfig=r6
.Llo164:
	bc		1,2,.L518	# eq
.Llo153:
	cmpi		0,0,r6,80		# peMiosChannelConfig=r6
.Llo165:
	bc		1,2,.L517	# eq
	cmpi		0,0,r6,84		# peMiosChannelConfig=r6
	bc		1,2,.L515	# eq
.Llo166:
	b		.L516
.L515:
#             {
#             case MASTER_MODE_UP_DOWN_BUFFERED_COUNTER_U32:
#                 /*Updated period value to EMIOSA register*/
#                 nPeriod = (Pwm_eMios_aChannelPeriod[u8Counter] >> (Pwm_PeriodType)1U) + 1U;
	.d2line		2483
	lis		r5,Pwm_eMios_aChannelPeriod@ha		# peMiosChannelConfig=r5
.Llo167:
	e_add16i		r5,r5,Pwm_eMios_aChannelPeriod@l		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	rlwinm		r30,r3,1,23,30		# nPeriod=r30 u8Counter=r3
	lhzx		r5,r5,r30		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	se_srwi		r5,1		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	se_addi		r5,1		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
.Llo168:
	mr		r6,r5		# nPeriod=r6 nPeriod=r5
#                 /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 REG_WRITE32(EMIOS_CADR_ADDR32(u8MasterModule, (uint32)u8MasterChannel), nPeriod);
	.d2line		2486
	rlwinm		r6,r6,0,16,31		# nPeriod=r6 nPeriod=r6
.Llo193:
	lis		r5,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r5
.Llo169:
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	rlwinm		r7,r0,2,22,29		# u8MasterModule=r0
	lwzux		r30,r5,r7		# nPeriod=r30 peMiosChannelConfig=r5
	rlwinm		r31,r4,5,19,26		# peMiosIpConfig=r31 u8MasterChannel=r4
.Llo154:
	add		r5,r30,r31		# peMiosChannelConfig=r5 nPeriod=r30 peMiosIpConfig=r31
	stw		r6,32(r5)		# peMiosChannelConfig=r5 nPeriod=r6
#                 /* set internal counter to 1 */
#                 /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 REG_WRITE32(EMIOS_CCNTR_ADDR32(u8MasterModule, (uint32)u8MasterChannel), (uint32)1U);
	.d2line		2490
	diab.li		r6,1		# nPeriod=r6
	lis		r5,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r5
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	lwzux		r30,r5,r7		# nPeriod=r30 peMiosChannelConfig=r5
	add		r5,r30,r31		# peMiosChannelConfig=r5 nPeriod=r30 peMiosIpConfig=r31
	stw		r6,40(r5)		# peMiosChannelConfig=r5 nPeriod=r6
#                 /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */        
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 REG_RMW32(EMIOS_CCR_ADDR32(u8MasterModule,(uint32)u8MasterChannel),CCR_MODE_MASK_U32,(MASTER_MODE_UP_DOWN_BUFFERED_COUNTER_U32 & CCR_MODE_MASK_U32));
	.d2line		2493
	lis		r6,EMIOS_BASE_ADDR32@ha		# nPeriod=r6
	e_add16i		r6,r6,EMIOS_BASE_ADDR32@l		# nPeriod=r6 nPeriod=r6
	lwzx		r5,r6,r7		# peMiosChannelConfig=r5 nPeriod=r6
	se_add		r5,r31		# peMiosChannelConfig=r5 peMiosChannelConfig=r5 peMiosIpConfig=r31
	lwz		r5,44(r5)		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	rlwinm		r5,r5,0,0,24		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	e_ori		r5,r5,84		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	lwzx		r6,r6,r7		# nPeriod=r6 nPeriod=r6
	se_add		r31,r6		# peMiosIpConfig=r31 peMiosIpConfig=r31 nPeriod=r6
	stw		r5,44(r31)		# peMiosIpConfig=r31 peMiosChannelConfig=r5
	b		.L516
.L517:
#                 break;
#             case MASTER_MODE_UP_BUFFERED_COUNTER_U32:
#                 /*Updated period value to EMIOSA register*/
#                 /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 REG_WRITE32(EMIOS_CADR_ADDR32(u8MasterModule, (uint32)u8MasterChannel), (Pwm_eMios_aChannelPeriod[u8Counter]));
	.d2line		2499
.Llo155:
	lis		r5,Pwm_eMios_aChannelPeriod@ha		# peMiosChannelConfig=r5
.Llo170:
	e_add16i		r5,r5,Pwm_eMios_aChannelPeriod@l		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	rlwinm		r30,r3,1,23,30		# nPeriod=r30 u8Counter=r3
	lhzx		r6,r5,r30		# peMiosChannelConfig=r6 peMiosChannelConfig=r5
	lis		r5,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r5
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	rlwinm		r7,r0,2,22,29		# u8MasterModule=r0
	lwzux		r30,r5,r7		# nPeriod=r30 peMiosChannelConfig=r5
.Llo194:
	rlwinm		r31,r4,5,19,26		# peMiosIpConfig=r31 u8MasterChannel=r4
.Llo156:
	add		r5,r30,r31		# peMiosChannelConfig=r5 nPeriod=r30 peMiosIpConfig=r31
	stw		r6,32(r5)		# peMiosChannelConfig=r5 peMiosChannelConfig=r6
#                 /* set internal counter to 1 */
#                 /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 REG_WRITE32(EMIOS_CCNTR_ADDR32(u8MasterModule, (uint32)u8MasterChannel), (uint32)1U);
	.d2line		2503
	diab.li		r6,1		# peMiosChannelConfig=r6
	lis		r5,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r5
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	lwzux		r30,r5,r7		# nPeriod=r30 peMiosChannelConfig=r5
	add		r5,r30,r31		# peMiosChannelConfig=r5 nPeriod=r30 peMiosIpConfig=r31
	stw		r6,40(r5)		# peMiosChannelConfig=r5 peMiosChannelConfig=r6
#                 /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */        
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 REG_RMW32(EMIOS_CCR_ADDR32(u8MasterModule, (uint32)u8MasterChannel), CCR_MODE_MASK_U32, (MASTER_MODE_UP_BUFFERED_COUNTER_U32 & CCR_MODE_MASK_U32));
	.d2line		2506
	lis		r5,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r5
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	lwzux		r6,r5,r7		# peMiosChannelConfig=r6 peMiosChannelConfig=r5
	add		r5,r6,r31		# peMiosChannelConfig=r5 peMiosChannelConfig=r6 peMiosIpConfig=r31
	lwz		r6,44(r5)		# peMiosChannelConfig=r6 peMiosChannelConfig=r5
	rlwinm		r6,r6,0,0,24		# peMiosChannelConfig=r6 peMiosChannelConfig=r6
	e_ori		r6,r6,80		# peMiosChannelConfig=r6 peMiosChannelConfig=r6
	lis		r5,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r5
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	lwzx		r5,r5,r7		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	se_add		r31,r5		# peMiosIpConfig=r31 peMiosIpConfig=r31 peMiosChannelConfig=r5
	stw		r6,44(r31)		# peMiosIpConfig=r31 peMiosChannelConfig=r6
	b		.L516
.L518:
#                 break;
#             case MASTER_MODE_UP_COUNTER_U32:
#                 /*Updated period value to EMIOSA register*/
#                 /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 REG_WRITE32(EMIOS_CADR_ADDR32(u8MasterModule, (uint32)u8MasterChannel), (Pwm_eMios_aChannelPeriod[u8Counter]) - (uint32)1U);
	.d2line		2512
.Llo157:
	lis		r5,Pwm_eMios_aChannelPeriod@ha		# peMiosChannelConfig=r5
.Llo171:
	e_add16i		r5,r5,Pwm_eMios_aChannelPeriod@l		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	rlwinm		r30,r3,1,23,30		# nPeriod=r30 u8Counter=r3
	lhzx		r6,r5,r30		# peMiosChannelConfig=r6 peMiosChannelConfig=r5
	diab.addi		r6,r6,-1		# peMiosChannelConfig=r6 peMiosChannelConfig=r6
	lis		r5,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r5
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	rlwinm		r7,r0,2,22,29		# u8MasterModule=r0
	lwzux		r30,r5,r7		# nPeriod=r30 peMiosChannelConfig=r5
.Llo195:
	rlwinm		r31,r4,5,19,26		# peMiosIpConfig=r31 u8MasterChannel=r4
.Llo158:
	add		r5,r30,r31		# peMiosChannelConfig=r5 nPeriod=r30 peMiosIpConfig=r31
	stw		r6,32(r5)		# peMiosChannelConfig=r5 peMiosChannelConfig=r6
#                 /* set internal counter to 1 */
#                 /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 REG_WRITE32(EMIOS_CCNTR_ADDR32(u8MasterModule, (uint32)u8MasterChannel), (uint32)0U);
	.d2line		2516
	diab.li		r6,0		# peMiosChannelConfig=r6
	lis		r5,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r5
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	lwzux		r30,r5,r7		# nPeriod=r30 peMiosChannelConfig=r5
	add		r5,r30,r31		# peMiosChannelConfig=r5 nPeriod=r30 peMiosIpConfig=r31
	stw		r6,40(r5)		# peMiosChannelConfig=r5 peMiosChannelConfig=r6
#                 /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */    
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 REG_RMW32(EMIOS_CCR_ADDR32(u8MasterModule, (uint32)u8MasterChannel), CCR_MODE_MASK_U32, (MASTER_MODE_UP_COUNTER_U32 & CCR_MODE_MASK_U32)); 
	.d2line		2519
	lis		r5,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r5
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	lwzux		r6,r5,r7		# peMiosChannelConfig=r6 peMiosChannelConfig=r5
	add		r5,r6,r31		# peMiosChannelConfig=r5 peMiosChannelConfig=r6 peMiosIpConfig=r31
	lwz		r6,44(r5)		# peMiosChannelConfig=r6 peMiosChannelConfig=r5
	rlwinm		r6,r6,0,0,24		# peMiosChannelConfig=r6 peMiosChannelConfig=r6
	.diab.bseti		r6,27		# peMiosChannelConfig=r6
	lis		r5,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r5
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	lwzx		r5,r5,r7		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
	se_add		r31,r5		# peMiosIpConfig=r31 peMiosIpConfig=r31 peMiosChannelConfig=r5
	stw		r6,44(r31)		# peMiosIpConfig=r31 peMiosChannelConfig=r6
.L516:
#                 break;
#             default:
#                 break;
#             }
#             /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_SET32(EMIOS_CCR_ADDR32(u8MasterModule, (uint32)u8MasterChannel),CCR_UCPREN_MASK_U32);
	.d2line		2526
.Llo159:
	lis		r5,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r5
.Llo172:
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r5 peMiosChannelConfig=r5
.Llo211:
	rlwinm		r0,r0,2,22,29		# u8MasterModule=r0 u8MasterModule=r0
	lwzx		r0,r5,r0		# u8MasterModule=r0 peMiosChannelConfig=r5
.Llo213:
	rlwinm		r4,r4,5,19,26		# u8MasterChannel=r4 u8MasterChannel=r4
	se_add		r4,r0		# u8MasterChannel=r4 u8MasterChannel=r4 u8MasterModule=r0
	lwz		r0,44(r4)		# u8MasterModule=r0 u8MasterChannel=r4
	.diab.bseti		r0,6		# u8MasterModule=r0
	stw		r0,44(r4)		# u8MasterChannel=r4 u8MasterModule=r0
.L514:
#         }
#     }
	.d2line		2528
.Llo173:
	diab.addi		r4,r3,1		# u8MasterChannel=r4 u8Counter=r3
	se_addi		r3,1		# u8Counter=r3 u8Counter=r3
	b		.L511
.L491:
# }
	.d2line		2529
	.d2epilogue_begin
.Llo201:
	diab.addi		r12,r1,348
	lmw		r23,0(r12)		# offset r1+348  0x15c
	.d2_cfa_restore_list	2,10
	lwz		r0,388(r1)		# u8MasterModule=r0
	mtspr		lr,r0		# u8MasterModule=lr
	diab.addi		r1,r1,384		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L758:
	.type		Pwm_eMios_Init,@function
	.size		Pwm_eMios_Init,.-Pwm_eMios_Init
# Number of nodes = 945

# Allocations for Pwm_eMios_Init
#	?a4		peMiosIpConfig
#	?a5		$$142
#	?a6		$$119
#	?a7		$$118
#	?a8		$$117
#	?a9		$$116
#	?a10		$$115
#	?a11		$$114
#	?a12		$$113
#	?a13		$$112
#	?a14		$$111
#	?a15		peMiosChannelConfig
#	?a16		u32CtrlRegVal
#	?a17		nPeriod
#	?a18		u16DutyCycle
#	?a19		u8Counter
#	?a20		u8mIdx
#	?a21		u8chIdx
#	?a22		u8MasterModule
#	?a23		u8MasterChannel
#	?a24		u8MasterBusIdx
#	SP,8		aMasterBusMode
#	SP,72		aPrescaler
# FUNC(void, PWM_CODE) Pwm_eMios_DeInit
	.align		2
	.section	.text_vle
        .d2line         2541,22
#$$ld
.L794:

#$$bf	Pwm_eMios_DeInit,interprocedural,rasave,nostackparams
	.globl		Pwm_eMios_DeInit
	.d2_cfa_start __cie
Pwm_eMios_DeInit:
.Llo218:
	stwu		r1,-112(r1)		
	.d2_cfa_def_cfa_offset	112
	mfspr		r0,lr
.Llo248:
	stmw		r26,88(r1)		# offset r1+88  0x58
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,116(r1)		# u8MasterBusIdx=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# peMiosIpConfig=r31 peMiosIpConfig=r3
	.d2prologue_end
# (
#     CONSTP2CONST(Pwm_eMios_IpConfigType, AUTOMATIC, PWM_APPL_CONST) peMiosIpConfig
# )
# {
#     /* @brief Pointer to EMIOS channel specific configuration */
#     P2CONST(Pwm_eMios_ChannelConfigType,AUTOMATIC,PWM_APPL_CONST) peMiosChannelConfig;
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC) u8Counter = (Pwm_eMios_ChannelType ) 0;
	.d2line		2548
	diab.li		r3,0		# u8Counter=r3
#     /*  assigned eMIOS HW module index and channel index */
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC) u8mIdx;
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC) u8chIdx;
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC) u8MasterChannel;
#     
#     /* assigned eMIOS HW module  index */
#     VAR(Pwm_eMios_ControlType, AUTOMATIC) u32CtrlRegVal;
#     VAR(uint8, AUTOMATIC) u8MasterBusIdx = 0xFFU;
	.d2line		2556
.Llo219:
	diab.li		r0,255		# u8MasterBusIdx=r0
#     VAR(uint8, AUTOMATIC) aMasterBusUse[PWM_EMIOS_HW_CHANNELS_U8];
#     
#     for (u8Counter=0U; u8Counter < (Pwm_eMios_ChannelType)PWM_EMIOS_HW_CHANNELS_U8; u8Counter++)
.L541:
	.d2line		2559
.Llo220:
	rlwinm		r5,r3,0,24,31		# u8Counter=r3
	cmpi		0,0,r5,64
	bc		0,0,.L543	# ge
#     {
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#         /* notifications disabled */
#         Pwm_eMios_aChannelNotifType[u8Counter] = (uint8)0;
	.d2line		2563
	diab.li		r0,0		# u8MasterBusIdx=r0
.Llo249:
	lis		r4,Pwm_eMios_aChannelNotifType@ha
	e_add16i		r4,r4,Pwm_eMios_aChannelNotifType@l
	rlwinm		r5,r3,0,24,31		# u8Counter=r3
	stbx		r0,r4,r5		# u8MasterBusIdx=r0
# #endif
# 
# #if (PWM_FEATURE_DAOC == STD_ON)
#         Pwm_eMios_aDaocChannelDuty[u8Counter] = (uint16)0x00;
#         /* @violates @ref Pwm_eMIOS_C_REF_4 Implicit conversion changes signedness */
#         Pwm_DAOC_aChannelModulo[u8Counter] = (Pwm_PeriodType)0x00;
# #endif
#          /*Set 0 for array used to store the current period for each pwm channel*/
#         Pwm_eMios_aChannelPeriod[u8Counter] = (Pwm_PeriodType)0x00;
	.d2line		2572
	lis		r4,Pwm_eMios_aChannelPeriod@ha
	e_add16i		r4,r4,Pwm_eMios_aChannelPeriod@l
	rlwinm		r6,r3,1,23,30		# u8Counter=r3
	sthx		r0,r4,r6		# u8MasterBusIdx=r0
# 
#         aMasterBusUse[u8Counter] = (uint8)0xFFU;
	.d2line		2574
	diab.li		r0,255		# u8MasterBusIdx=r0
	diab.addi		r4,r1,8
	stbx		r0,r4,r5		# u8MasterBusIdx=r0
#     }
	.d2line		2575
	diab.addi		r5,r3,1		# u8Counter=r3
	se_addi		r3,1		# u8Counter=r3 u8Counter=r3
	b		.L541
.L543:
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#     for(u8Counter=0U; u8Counter < PWM_EMIOS_HW_MODULES_CFG_U8; u8Counter++)
	.d2line		2577
.Llo228:
	diab.li		r3,0		# u8Counter=r3
.L544:
.Llo229:
	rlwinm		r5,r3,0,24,31		# u8Counter=r3
	se_cmpli	r5,2
	bc		0,0,.L546	# ge
#     {
#         /*Set 0 for array used to store the current dutycycle state*/
#         Pwm_eMios_aDutyState[u8Counter] = (uint32)0;
	.d2line		2580
	diab.li		r0,0		# u8MasterBusIdx=r0
.Llo250:
	lis		r4,Pwm_eMios_aDutyState@ha
	e_add16i		r4,r4,Pwm_eMios_aDutyState@l
	rlwinm		r5,r3,2,22,29		# u8Counter=r3
	stwx		r0,r4,r5		# u8MasterBusIdx=r0
#     }
	.d2line		2581
	diab.addi		r5,r3,1		# u8Counter=r3
	se_addi		r3,1		# u8Counter=r3 u8Counter=r3
	b		.L544
.L546:
# #endif
# 
#     for (u8Counter=0U; u8Counter < peMiosIpConfig->u8NumChannels; u8Counter++)
	.d2line		2584
.Llo251:
	diab.li		r30,0		# u8Counter=r30
.L547:
.Llo230:
	rlwinm		r0,r30,0,24,31		# u8MasterBusIdx=r0 u8Counter=r30
.Llo231:
	lbz		r3,0(r31)		# u8Counter=r3 peMiosIpConfig=r31
	se_cmp		r0,r3		# u8MasterBusIdx=r0 u8Counter=r3
	bc		0,0,.L540	# ge
#     {
# #if (PWM_GET_CHANNEL_STATE_API == STD_ON)
#         Pwm_eMios_aChannelDuty[u8Counter] = (uint16)0U;
	.d2line		2587
.Llo252:
	diab.li		r0,0		# u8MasterBusIdx=r0
.Llo253:
	lis		r3,Pwm_eMios_aChannelDuty@ha		# u8Counter=r3
	e_add16i		r3,r3,Pwm_eMios_aChannelDuty@l		# u8Counter=r3 u8Counter=r3
	rlwinm		r4,r30,1,23,30		# u8chIdx=r4 u8Counter=r30
	sthux		r0,r3,r4		# u8Counter=r3 u8MasterBusIdx=r0
# #endif /*PWM_GET_CHANNEL_STATE_API */
#         Pwm_eMios_aChannelOffset[u8Counter] = (Pwm_PeriodType)0x00;
	.d2line		2589
	lis		r3,Pwm_eMios_aChannelOffset@ha		# u8Counter=r3
	e_add16i		r3,r3,Pwm_eMios_aChannelOffset@l		# u8Counter=r3 u8Counter=r3
	sthx		r0,r3,r4		# u8Counter=r3 u8MasterBusIdx=r0
# #if (PWM_FEATURE_OPWMT == STD_ON)
#         /** @violates @ref Pwm_eMIOS_C_REF_4 Implicit conversion changes signedness */
#         Pwm_eMios_aTriggerDelay[u8Counter] = (Pwm_PeriodType)0x00;
# #endif
#         /** @violates @ref Pwm_eMIOS_C_REF_11 Array indexing shall be the only allowed form of pointer arithmetic.*/
#         peMiosChannelConfig = &(*peMiosIpConfig->pChannelsConfig)[u8Counter];
	.d2line		2595
	rlwinm		r0,r30,0,24,31		# u8MasterBusIdx=r0 u8Counter=r30
	lwz		r3,4(r31)		# u8Counter=r3 peMiosIpConfig=r31
	rlwinm		r4,r0,5,0,26		# u8chIdx=r4 u8MasterBusIdx=r0
.Llo237:
	se_slwi		r0,3		# u8MasterBusIdx=r0 u8MasterBusIdx=r0
	subf		r0,r0,r4		# u8MasterBusIdx=r0 u8MasterBusIdx=r0 u8chIdx=r4
	se_add		r0,r3		# u8MasterBusIdx=r0 u8MasterBusIdx=r0 u8Counter=r3
.Llo222:
	mr		r3,r0		# peMiosChannelConfig=r3 peMiosChannelConfig=r0
# 
#         u8mIdx  = (uint8)EMIOS_MODULE_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		2597
	lbz		r28,12(r3)		# u8chIdx=r28 peMiosChannelConfig=r3
	rlwinm		r29,r28,27,29,31		# u8mIdx=r29 u8chIdx=r28
.Llo232:
	mr		r29,r29		# u8mIdx=r29 u8mIdx=r29
#         u8chIdx = (uint8)EMIOS_CHANNEL_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		2598
	rlwinm		r28,r28,0,27,31		# u8chIdx=r28 u8chIdx=r28
	mr		r28,r28		# u8chIdx=r28 u8chIdx=r28
# 
#         u32CtrlRegVal = peMiosChannelConfig->u32ControlValue;
	.d2line		2600
	lwz		r27,16(r3)		# u32CtrlRegVal=r27 peMiosChannelConfig=r3
.Llo247:
	mr		r27,r27		# u32CtrlRegVal=r27 u32CtrlRegVal=r27
# 
#         /* set the channel output to the configured Idle state */
#         if (PWM_HIGH == Pwm_eMios_aChannelIdleState[u8Counter])
	.d2line		2603
	lis		r4,Pwm_eMios_aChannelIdleState@ha		# u8chIdx=r4
	e_add16i		r4,r4,Pwm_eMios_aChannelIdleState@l		# u8chIdx=r4 u8chIdx=r4
	rlwinm		r0,r30,2,22,29		# u8MasterBusIdx=r0 u8Counter=r30
.Llo223:
	lwzx		r0,r4,r0		# u8MasterBusIdx=r0 u8chIdx=r4
	se_cmpi		r0,1		# u8MasterBusIdx=r0
	bc		0,2,.L550	# ne
#         {
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_SET32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_EDPOL_MASK_U32 );
	.d2line		2607
.Llo224:
	lis		r4,EMIOS_BASE_ADDR32@ha		# u8chIdx=r4
.Llo238:
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l		# u8chIdx=r4 u8chIdx=r4
	rlwinm		r0,r29,2,22,29		# u8MasterBusIdx=r0 u8mIdx=r29
	lwzx		r4,r4,r0		# u8chIdx=r4 u8chIdx=r4
	rlwinm		r6,r28,5,19,26		# u8chIdx=r28
	se_add		r4,r6		# u8chIdx=r4 u8chIdx=r4
	lwz		r0,44(r4)		# u8MasterBusIdx=r0 u8chIdx=r4
.Llo254:
	.diab.bseti		r0,24		# u8MasterBusIdx=r0
	stw		r0,44(r4)		# u8chIdx=r4 u8MasterBusIdx=r0
	b		.L551
.L550:
#         }
#         else
#         {
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_EDPOL_MASK_U32 );
	.d2line		2613
.Llo255:
	lis		r4,EMIOS_BASE_ADDR32@ha		# u8chIdx=r4
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l		# u8chIdx=r4 u8chIdx=r4
	rlwinm		r0,r29,2,22,29		# u8MasterBusIdx=r0 u8mIdx=r29
	lwzx		r4,r4,r0		# u8chIdx=r4 u8chIdx=r4
	rlwinm		r6,r28,5,19,26		# u8chIdx=r28
	se_add		r4,r6		# u8chIdx=r4 u8chIdx=r4
	lwz		r0,44(r4)		# u8MasterBusIdx=r0 u8chIdx=r4
.Llo256:
	.diab.bclri		r0,24		# u8MasterBusIdx=r0
	stw		r0,44(r4)		# u8chIdx=r4 u8MasterBusIdx=r0
.L551:
#         }
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_WRITE32(EMIOS_CADR_ADDR32(u8mIdx, (uint32)u8chIdx) , 0U );
	.d2line		2617
.Llo225:
	diab.li		r4,0		# u8chIdx=r4
	lis		r5,EMIOS_BASE_ADDR32@ha		# u8MasterBusIdx=r5
.Llo257:
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# u8MasterBusIdx=r5 u8MasterBusIdx=r5
	rlwinm		r0,r29,2,22,29		# u8MasterBusIdx=r0 u8mIdx=r29
	lwzux		r7,r5,r0		# u8MasterChannel=r7 u8MasterBusIdx=r5
.Llo243:
	rlwinm		r6,r28,5,19,26		# u8chIdx=r28
.Llo258:
	add		r5,r7,r6		# u8MasterBusIdx=r5 u8MasterChannel=r7
	stw		r4,32(r5)		# u8MasterBusIdx=r5 u8chIdx=r4
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_WRITE32(EMIOS_CBDR_ADDR32(u8mIdx, (uint32)u8chIdx) , 0U );
	.d2line		2620
	lis		r5,EMIOS_BASE_ADDR32@ha		# u8MasterBusIdx=r5
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# u8MasterBusIdx=r5 u8MasterBusIdx=r5
	lwzux		r7,r5,r0		# u8MasterChannel=r7 u8MasterBusIdx=r5
	add		r5,r7,r6		# u8MasterBusIdx=r5 u8MasterChannel=r7
	stw		r4,36(r5)		# u8MasterBusIdx=r5 u8chIdx=r4
#         /* enter GPIO ouput mode - this will set the ouput pin to the EDPOL value */
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_RMW32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_MODE_MASK_U32, CCR_MODE_GPO_U32 );
	.d2line		2624
	lis		r4,EMIOS_BASE_ADDR32@ha		# u8chIdx=r4
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l		# u8chIdx=r4 u8chIdx=r4
	lwzx		r5,r4,r0		# u8MasterBusIdx=r5 u8chIdx=r4
	se_add		r5,r6		# u8MasterBusIdx=r5 u8MasterBusIdx=r5
	lwz		r7,44(r5)		# u8MasterChannel=r7 u8MasterBusIdx=r5
	rlwinm		r7,r7,0,0,24		# u8MasterChannel=r7 u8MasterChannel=r7
	.diab.bseti		r7,31		# u8MasterChannel=r7
	mr		r5,r4		# u8chIdx=r5
	lwzux		r26,r5,r0		# u8chIdx=r5
	add		r5,r26,r6		# u8chIdx=r5
	stw		r7,44(r5)		# u8chIdx=r5 u8MasterChannel=r7
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), (~(CCR_EDPOL_MASK_U32 | CCR_MODE_MASK_U32)) );
	.d2line		2627
	lwzux		r5,r4,r0		# u8chIdx=r5 u8chIdx=r4
	se_add		r5,r6		# u8chIdx=r5 u8chIdx=r5
	lwz		r4,44(r5)		# u8chIdx=r4 u8chIdx=r5
	rlwinm		r4,r4,0,24,31		# u8chIdx=r4 u8chIdx=r4
	stw		r4,44(r5)		# u8chIdx=r5 u8chIdx=r4
#         /* disable interrupt */
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FEN_MASK_U32 );
	.d2line		2631
	lis		r4,EMIOS_BASE_ADDR32@ha		# u8chIdx=r4
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l		# u8chIdx=r4 u8chIdx=r4
	lwzux		r5,r4,r0		# u8chIdx=r5 u8chIdx=r4
	se_add		r5,r6		# u8chIdx=r5 u8chIdx=r5
	lwz		r4,44(r5)		# u8chIdx=r4 u8chIdx=r5
	.diab.bclri		r4,14		# u8chIdx=r4
	stw		r4,44(r5)		# u8chIdx=r5 u8chIdx=r4
#         /* clear interrupt flag */
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_WRITE32(EMIOS_CSR_ADDR32(u8mIdx, u8chIdx), CSR_FLAG_BIT_U32 );
	.d2line		2635
	diab.li		r5,1		# u8chIdx=r5
	lis		r4,EMIOS_BASE_ADDR32@ha		# u8chIdx=r4
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l		# u8chIdx=r4 u8chIdx=r4
	lwzx		r0,r4,r0		# u8MasterBusIdx=r0 u8chIdx=r4
	se_add		r6,r0		# u8MasterBusIdx=r0
	stw		r5,48(r6)		# u8chIdx=r5
#         /* only write UCDIS register if it's available */
#         /* disable unified channel */
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
# #ifdef EMIOS_UCDIS_AVAILABLE
#     #if (EMIOS_UCDIS_AVAILABLE == STD_ON)
#         eMios_StopChannel((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		2642
.Llo226:
	lbz		r3,12(r3)		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
.Llo227:
	bl		eMios_StopChannel
#     #endif  /* EMIOS_UCDIS_AVAILABLE */
# #endif
# 
#         /* if channel using master bus, so de-init for master bus */
#         if (PWM_BUS_INTERNAL_COUNTER_U32 != ((uint32)u32CtrlRegVal & CCR_BSL_MASK_U32))
	.d2line		2647
.Llo244:
	rlwinm		r5,r27,0,21,22		# u8chIdx=r5 u32CtrlRegVal=r27
	cmpi		0,0,r5,1536		# u8chIdx=r5
	bc		1,2,.L552	# eq
#         {
#             u8MasterBusIdx = (uint8)Pwm_eMios_GetMasterBus(u8mIdx, u8chIdx, ((uint32)u32CtrlRegVal & CCR_BSL_MASK_U32));
	.d2line		2649
	rlwinm		r5,r27,0,21,22		# u8MasterBusIdx=r5 u32CtrlRegVal=r27
	mr		r3,r29		# u8mIdx=r3 u8mIdx=r29
	mr		r4,r28		# u8chIdx=r4 u8chIdx=r28
	bl		Pwm_eMios_GetMasterBus
.Llo259:
	mr		r5,r3		# u8MasterBusIdx=r5 u8MasterBusIdx=r3
#             u8MasterChannel = EMIOS_CHANNEL_INDEX_U8(u8MasterBusIdx);
	.d2line		2650
.Llo260:
	rlwinm		r7,r5,0,27,31		# u8MasterChannel=r7 u8MasterBusIdx=r5
.Llo245:
	mr		r7,r7		# u8MasterChannel=r7 u8MasterChannel=r7
#             if((uint8)0xFFU == aMasterBusUse[u8MasterBusIdx])
	.d2line		2651
	diab.addi		r3,r1,8		# u8mIdx=r3
	rlwinm		r0,r5,0,24,31		# u8MasterBusIdx=r0 u8MasterBusIdx=r5
	lbzx		r0,r3,r0		# u8MasterBusIdx=r0 u8mIdx=r3
	cmpi		0,0,r0,255		# u8MasterBusIdx=r0
	bc		0,2,.L552	# ne
#             {
#                 aMasterBusUse[u8MasterBusIdx] = (uint8)1U;
	.d2line		2653
.Llo233:
	diab.li		r0,1		# u8MasterBusIdx=r0
.Llo261:
	diab.addi		r3,r1,8		# u8mIdx=r3
.Llo234:
	rlwinm		r5,r5,0,24,31		# u8MasterBusIdx=r5 u8MasterBusIdx=r5
	stbx		r0,r3,r5		# u8mIdx=r3 u8MasterBusIdx=r0
#                 /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 REG_WRITE32(EMIOS_CADR_ADDR32(u8mIdx, (uint32)u8MasterChannel) , 0U );
	.d2line		2656
	diab.li		r3,0		# u8mIdx=r3
	lis		r4,EMIOS_BASE_ADDR32@ha		# u8chIdx=r4
.Llo239:
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l		# u8chIdx=r4 u8chIdx=r4
	rlwinm		r29,r29,2,22,29		# u8mIdx=r29 u8mIdx=r29
	lwzux		r6,r4,r29		# u8chIdx=r4
.Llo246:
	rlwinm		r7,r7,5,19,26		# u8MasterChannel=r7 u8MasterChannel=r7
	se_add		r6,r7		# u8MasterChannel=r7
	stw		r3,32(r6)		# u8mIdx=r3
#                 /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 REG_WRITE32(EMIOS_CBDR_ADDR32(u8mIdx, (uint32)u8MasterChannel) , 0U );
	.d2line		2659
	lis		r4,EMIOS_BASE_ADDR32@ha		# u8chIdx=r4
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l		# u8chIdx=r4 u8chIdx=r4
	lwzux		r6,r4,r29		# u8chIdx=r4
	add		r4,r6,r7		# u8chIdx=r4 u8MasterChannel=r7
	stw		r3,36(r4)		# u8chIdx=r4 u8mIdx=r3
#                 /* enter GPIO ouput mode - this will set the ouput pin to the EDPOL value */
#                 /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 REG_RMW32(EMIOS_CCR_ADDR32(u8mIdx, (uint32)u8MasterChannel), CCR_MODE_MASK_U32, CCR_MODE_GPO_U32 );
	.d2line		2663
	lis		r4,EMIOS_BASE_ADDR32@ha		# u8chIdx=r4
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l		# u8chIdx=r4 u8chIdx=r4
	lwzx		r3,r4,r29		# u8mIdx=r3 u8chIdx=r4
	se_add		r3,r7		# u8mIdx=r3 u8mIdx=r3 u8MasterChannel=r7
	lwz		r6,44(r3)		# u8mIdx=r3
	rlwinm		r6,r6,0,0,24
	.diab.bseti		r6,31
	mr		r3,r4		# u8chIdx=r3
.Llo235:
	lwzux		r28,r3,r29		# u8chIdx=r28 u8chIdx=r3
	add		r3,r28,r7		# u8chIdx=r3 u8chIdx=r28 u8MasterChannel=r7
	stw		r6,44(r3)		# u8chIdx=r3
#                 /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, (uint32)u8MasterChannel), (~(CCR_EDPOL_MASK_U32 | CCR_MODE_MASK_U32)));
	.d2line		2666
	lwzux		r3,r4,r29		# u8chIdx=r3 u8chIdx=r4
.Llo240:
	se_add		r3,r7		# u8chIdx=r3 u8chIdx=r3 u8MasterChannel=r7
.Llo241:
	lwz		r4,44(r3)		# u8chIdx=r4 u8chIdx=r3
	rlwinm		r4,r4,0,24,31		# u8chIdx=r4 u8chIdx=r4
	stw		r4,44(r3)		# u8chIdx=r3 u8chIdx=r4
#                 /* disable interrupt */
#                 /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, (uint32)u8MasterChannel), CCR_FEN_MASK_U32 );
	.d2line		2670
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8chIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8chIdx=r3 u8chIdx=r3
	lwzux		r4,r3,r29		# u8chIdx=r4 u8chIdx=r3
	add		r3,r4,r7		# u8chIdx=r3 u8chIdx=r4 u8MasterChannel=r7
	lwz		r4,44(r3)		# u8chIdx=r4 u8chIdx=r3
	.diab.bclri		r4,14		# u8chIdx=r4
	stw		r4,44(r3)		# u8chIdx=r3 u8chIdx=r4
#                 /* clear interrupt flag */
#                 /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 REG_WRITE32(EMIOS_CSR_ADDR32(u8mIdx, (uint32)u8MasterChannel), CSR_FLAG_BIT_U32 );
	.d2line		2674
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8chIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8chIdx=r3 u8chIdx=r3
	lwzx		r3,r3,r29		# u8chIdx=r3 u8chIdx=r3
	se_add		r7,r3		# u8MasterChannel=r7 u8MasterChannel=r7 u8chIdx=r3
	stw		r0,48(r7)		# u8MasterChannel=r7 u8MasterBusIdx=r0
# #ifdef EMIOS_UCDIS_AVAILABLE
#     #if (EMIOS_UCDIS_AVAILABLE == STD_ON)
#                 /* disable unified channel */
#                 eMios_StopChannel(u8MasterBusIdx);
	.d2line		2678
	mr		r3,r5		# u8MasterBusIdx=r3
.Llo242:
	bl		eMios_StopChannel
.L552:
#     #endif  /* EMIOS_UCDIS_AVAILABLE */
# #endif
#             }
#         }
#     }
	.d2line		2683
.Llo236:
	diab.addi		r0,r30,1		# u8MasterBusIdx=r0 u8Counter=r30
.Llo262:
	se_addi		r30,1		# u8Counter=r30 u8Counter=r30
	b		.L547
.L540:
# }
	.d2line		2684
	.d2epilogue_begin
.Llo221:
	lmw		r26,88(r1)		# offset r1+88  0x58
	.d2_cfa_restore_list	2,10
	lwz		r0,116(r1)		# u8MasterBusIdx=r0
	mtspr		lr,r0		# u8MasterBusIdx=lr
	diab.addi		r1,r1,112		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L795:
	.type		Pwm_eMios_DeInit,@function
	.size		Pwm_eMios_DeInit,.-Pwm_eMios_DeInit
# Number of nodes = 490

# Allocations for Pwm_eMios_DeInit
#	?a4		peMiosIpConfig
#	?a5		$$143
#	?a6		$$125
#	?a7		$$124
#	?a8		$$123
#	?a9		$$122
#	?a10		$$121
#	?a11		$$120
#	?a12		peMiosChannelConfig
#	?a13		u8Counter
#	?a14		u8mIdx
#	?a15		u8chIdx
#	?a16		u8MasterChannel
#	?a17		u32CtrlRegVal
#	?a18		u8MasterBusIdx
#	SP,8		aMasterBusUse
# FUNC(void, PWM_CODE) Pwm_eMios_SetDutyCycle
	.align		2
	.section	.text_vle
        .d2line         2714,22
#$$ld
.L818:

#$$bf	Pwm_eMios_SetDutyCycle,interprocedural,rasave,nostackparams
	.globl		Pwm_eMios_SetDutyCycle
	.d2_cfa_start __cie
Pwm_eMios_SetDutyCycle:
.Llo263:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
.Llo300:
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)		# u8MasterBusIdx=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u8IdxChannelConfig=r31 u8IdxChannelConfig=r3
.Llo264:
	mr		r30,r4		# u16DutyCycle=r30 u16DutyCycle=r4
.Llo265:
	mr		r5,r5		# peMiosIpConfig=r5 peMiosIpConfig=r5
	.d2prologue_end
# (
#     VAR(uint8,                           AUTOMATIC)                 u8IdxChannelConfig,
#     VAR(uint16,                          AUTOMATIC)                 u16DutyCycle,
#     CONSTP2CONST(Pwm_eMios_IpConfigType, AUTOMATIC, PWM_APPL_CONST) peMiosIpConfig
# )
# {
#     /* @brief Pointer to EMIOS channel specific configuration */
#     P2CONST(Pwm_eMios_ChannelConfigType,AUTOMATIC,PWM_APPL_CONST) peMiosChannelConfig;
#     VAR(Pwm_PeriodType,                 AUTOMATIC)                nPeriod;
#     VAR(Pwm_eMios_ControlType,          AUTOMATIC)                u32CtrlMode;
#     VAR(Pwm_eMios_ControlType,          AUTOMATIC)                u32CtrlBus;
#     VAR(Pwm_eMios_ChannelType,          AUTOMATIC)                u8mIdx;
#     VAR(Pwm_eMios_ChannelType,          AUTOMATIC)                u8chIdx;
#     VAR(uint8,                          AUTOMATIC)                u8MasterBusIdx = 0xFFU;
	.d2line		2728
.Llo267:
	diab.li		r0,255		# u8MasterBusIdx=r0
#     
#     /** @violates @ref Pwm_eMIOS_C_REF_11 Array indexing shall be the only allowed form of pointer arithmetic.*/
#     peMiosChannelConfig = &(*peMiosIpConfig->pChannelsConfig)[u8IdxChannelConfig];
	.d2line		2731
.Llo301:
	rlwinm		r0,r31,0,24,31		# u8MasterBusIdx=r0 u8IdxChannelConfig=r31
.Llo302:
	lwz		r29,4(r5)		# peMiosChannelConfig=r29 peMiosIpConfig=r5
.Llo279:
	rlwinm		r3,r0,5,0,26		# u8MasterBusIdx=r0
	se_slwi		r0,3		# u8MasterBusIdx=r0 u8MasterBusIdx=r0
	subf		r0,r0,r3		# u8MasterBusIdx=r0 u8MasterBusIdx=r0
	se_add		r0,r29		# u8MasterBusIdx=r0 u8MasterBusIdx=r0 peMiosChannelConfig=r29
.Llo303:
	mr		r29,r0		# peMiosChannelConfig=r29 peMiosChannelConfig=r0
#     
#     u8mIdx  = (uint8)EMIOS_MODULE_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		2733
.Llo280:
	lbz		r26,12(r29)		# peMiosChannelConfig=r29
.Llo281:
	rlwinm		r27,r26,27,29,31
.Llo296:
	mr		r27,r27		# u8mIdx=r27 u8mIdx=r27
#     u8chIdx = (uint8)EMIOS_CHANNEL_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		2734
	rlwinm		r26,r26,0,27,31
.Llo299:
	mr		r26,r26		# u8chIdx=r26 u8chIdx=r26
#     /* save current channel control register config value in local variable */
#     u32CtrlMode = (peMiosChannelConfig->u32ControlValue & CCR_MODE_MASK_U32);
	.d2line		2736
	lwz		r28,16(r29)		# u32CtrlMode=r28 peMiosChannelConfig=r29
.Llo291:
	rlwinm		r28,r28,0,25,31		# u32CtrlMode=r28 u32CtrlMode=r28
	mr		r28,r28		# u32CtrlMode=r28 u32CtrlMode=r28
#     
#     SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_00();
	.d2line		2738
	bl		SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_00
# #if (PWM_GET_CHANNEL_STATE_API == STD_ON)
#     Pwm_eMios_aChannelDuty[u8IdxChannelConfig] = u16DutyCycle;
	.d2line		2740
.Llo268:
	lis		r3,Pwm_eMios_aChannelDuty@ha
	e_add16i		r3,r3,Pwm_eMios_aChannelDuty@l
	rlwinm		r0,r31,1,23,30		# u8MasterBusIdx=r0 u8IdxChannelConfig=r31
	sthx		r30,r3,r0		# u16DutyCycle=r30
# #endif /*PWM_GET_CHANNEL_STATE_API */
#     
#     if((PWM_MODE_OPWFM_U32 == u32CtrlMode) || (PWM_MODE_OPWFMB_U32 == u32CtrlMode))
	.d2line		2743
	se_cmpi		r28,24		# u32CtrlMode=r28
	bc		1,2,.L572	# eq
.Llo282:
	cmpi		0,0,r28,88		# u32CtrlMode=r28
	bc		0,2,.L564	# ne
.L572:
#     {
#         nPeriod = Pwm_eMios_aChannelPeriod[peMiosChannelConfig->u8HwChannel];
	.d2line		2745
	lis		r3,Pwm_eMios_aChannelPeriod@ha
	e_add16i		r3,r3,Pwm_eMios_aChannelPeriod@l
	lbz		r0,12(r29)		# u8MasterBusIdx=r0 peMiosChannelConfig=r29
.Llo304:
	rlwinm		r0,r0,1,23,30		# u8MasterBusIdx=r0 u8MasterBusIdx=r0
.Llo305:
	lhzx		r4,r3,r0
.Llo283:
	mr		r4,r4		# nPeriod=r4 nPeriod=r4
	b		.L565
.L564:
#     }
#     else
#     {
#         /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         u32CtrlBus = (REG_READ32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx)) & CCR_BSL_MASK_U32);
	.d2line		2751
.Llo284:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8mIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8mIdx=r3 u8mIdx=r3
	rlwinm		r0,r27,2,22,29		# u8MasterBusIdx=r0 u8mIdx=r27
	lwzx		r3,r3,r0		# u8mIdx=r3 u8mIdx=r3
	rlwinm		r4,r26,5,19,26		# u8chIdx=r4 u8chIdx=r26
	se_add		r3,r4		# u8mIdx=r3 u8mIdx=r3 u8chIdx=r4
	lwz		r5,44(r3)		# peMiosIpConfig=r5 u8mIdx=r3
.Llo269:
	rlwinm		r5,r5,0,21,22		# peMiosIpConfig=r5 peMiosIpConfig=r5
.Llo270:
	mr		r5,r5		# u32CtrlBus=r5 u32CtrlBus=r5
#         u8MasterBusIdx = (uint8)Pwm_eMios_GetMasterBus(u8mIdx, u8chIdx, u32CtrlBus);
	.d2line		2752
	mr		r3,r27		# u8mIdx=r3 u8mIdx=r27
	mr		r4,r26		# u8chIdx=r4 u8chIdx=r26
	mr		r5,r5		# u32CtrlBus=r5 u32CtrlBus=r5
.Llo295:
	bl		Pwm_eMios_GetMasterBus
.Llo306:
	mr		r0,r3		# u8MasterBusIdx=r0 u8MasterBusIdx=r3
#         nPeriod = Pwm_eMios_aChannelPeriod[u8MasterBusIdx];
	.d2line		2753
	lis		r3,Pwm_eMios_aChannelPeriod@ha		# u8mIdx=r3
.Llo307:
	e_add16i		r3,r3,Pwm_eMios_aChannelPeriod@l		# u8mIdx=r3 u8mIdx=r3
.Llo308:
	rlwinm		r0,r0,1,23,30		# u8MasterBusIdx=r0 u8MasterBusIdx=r0
.Llo309:
	lhzx		r4,r3,r0		# u8chIdx=r4 u8mIdx=r3
.Llo285:
	mr		r4,r4		# nPeriod=r4 nPeriod=r4
.L565:
#     }
#     
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#     if (((uint16)0x0000 == u16DutyCycle) || (PWM_DUTY_CYCLE_100 == u16DutyCycle))
	.d2line		2757
	rlwinm		r5,r30,0,16,31		# peMiosIpConfig=r5 u16DutyCycle=r30
.Llo271:
	se_cmpi		r5,0		# peMiosIpConfig=r5
	bc		1,2,.L573	# eq
.Llo272:
	rlwinm		r5,r30,0,16,31		# peMiosIpConfig=r5 u16DutyCycle=r30
.Llo273:
	cmpli		0,0,r5,32768		# peMiosIpConfig=r5
	bc		0,2,.L566	# ne
.L573:
#     {
#         /* no transitions in the signal */
#         Pwm_eMios_aDutyState[u8mIdx] &= ~((uint32)1<< u8chIdx);
	.d2line		2760
.Llo274:
	lis		r3,Pwm_eMios_aDutyState@ha		# u8mIdx=r3
.Llo297:
	e_add16i		r3,r3,Pwm_eMios_aDutyState@l		# u8mIdx=r3 u8mIdx=r3
	rlwinm		r27,r27,2,22,29		# u8mIdx=r27 u8mIdx=r27
	lwzx		r0,r3,r27		# u8MasterBusIdx=r0 u8mIdx=r3
.Llo310:
	diab.li		r5,1		# peMiosIpConfig=r5
.Llo275:
	slw		r5,r5,r26		# peMiosIpConfig=r5 peMiosIpConfig=r5 u8chIdx=r26
	andc		r0,r0,r5		# u8MasterBusIdx=r0 u8MasterBusIdx=r0 peMiosIpConfig=r5
	stwx		r0,r3,r27		# u8mIdx=r3 u8MasterBusIdx=r0
	b		.L567
.L566:
#     }
#     else
#     {
#         /* transitions available in the signal */
#         Pwm_eMios_aDutyState[u8mIdx] |= ((uint32)1U<< u8chIdx);
	.d2line		2765
.Llo276:
	lis		r3,Pwm_eMios_aDutyState@ha		# u8mIdx=r3
.Llo298:
	e_add16i		r3,r3,Pwm_eMios_aDutyState@l		# u8mIdx=r3 u8mIdx=r3
	rlwinm		r27,r27,2,22,29		# u8mIdx=r27 u8mIdx=r27
	lwzx		r0,r3,r27		# u8MasterBusIdx=r0 u8mIdx=r3
.Llo311:
	diab.li		r5,1		# peMiosIpConfig=r5
.Llo277:
	slw		r5,r5,r26		# peMiosIpConfig=r5 peMiosIpConfig=r5 u8chIdx=r26
	or		r0,r0,r5		# u8MasterBusIdx=r0 u8MasterBusIdx=r0 peMiosIpConfig=r5
	stwx		r0,r3,r27		# u8mIdx=r3 u8MasterBusIdx=r0
.L567:
#     }
# #endif /* PWM_NOTIFICATION_SUPPORTED */
# 
#     switch(u32CtrlMode)
	.d2line		2769
.Llo278:
	mr		r6,r28		# u32CtrlMode=r6 u32CtrlMode=r28
	cmpi		0,0,r6,88		# u32CtrlMode=r6
	bc		1,2,.L570	# eq
.Llo292:
	cmpi		0,0,r6,96		# u32CtrlMode=r6
.Llo293:
	bc		1,2,.L568	# eq
.Llo294:
	b		.L569
.L568:
#     {
# #if (PWM_FEATURE_OPWMCB == STD_ON)   
#     case PWM_MODE_OPWMCB_LEAD_DEADTIME_U32:
#     case PWM_MODE_OPWMCB_TRAIL_DEADTIME_U32:
#         Pwm_eMios_SetRegs_OPWMCB_mode(u8IdxChannelConfig, nPeriod, u16DutyCycle, peMiosChannelConfig);
#         break;
# #endif
# #if (PWM_FEATURE_DAOC == STD_ON)   
#     case PWM_MODE_DAOC_U32: 
#         Pwm_eMios_SetRegs_DAOC_mode(u8IdxChannelConfig, nPeriod, u16DutyCycle, peMiosChannelConfig);
#         break;
# #endif
# #if (PWM_FEATURE_OPWMT == STD_ON)   
#     case PWM_MODE_OPWMT_U32:
#         Pwm_eMios_SetRegs_OPWMT_mode(u8IdxChannelConfig, nPeriod, u16DutyCycle, peMiosChannelConfig);
#         break;
# #endif
#     case PWM_MODE_OPWMB_U32:
#         Pwm_eMios_SetRegs_OPWMB_mode(u8IdxChannelConfig, nPeriod, u16DutyCycle, peMiosChannelConfig);
	.d2line		2788
.Llo286:
	mr		r3,r31		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r31
	mr		r5,r30		# u16DutyCycle=r5 u16DutyCycle=r30
.Llo287:
	mr		r4,r4		# nPeriod=r4 nPeriod=r4
.Llo288:
	mr		r6,r29		# peMiosChannelConfig=r6 peMiosChannelConfig=r29
	bl		Pwm_eMios_SetRegs_OPWMB_mode
	b		.L569
.L570:
#         break;
# #if (PWM_FEATURE_OPWM == STD_ON) 
#     case PWM_MODE_OPWM_U32:
#         Pwm_eMios_SetRegs_OPWM_mode(u8IdxChannelConfig, nPeriod, u16DutyCycle, peMiosChannelConfig);
#         break;
# #endif /*PWM_FEATURE_OPWM*/    
#     case PWM_MODE_OPWFMB_U32:
#         Pwm_eMios_SetRegs_OPWMFMB_mode(u8IdxChannelConfig, nPeriod, u16DutyCycle, peMiosChannelConfig);
	.d2line		2796
	mr		r3,r31		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r31
	mr		r5,r30		# u16DutyCycle=r5 u16DutyCycle=r30
.Llo289:
	mr		r4,r4		# nPeriod=r4 nPeriod=r4
.Llo290:
	mr		r6,r29		# peMiosChannelConfig=r6 peMiosChannelConfig=r29
	bl		Pwm_eMios_SetRegs_OPWMFMB_mode
.L569:
#         break;
# #if (PWM_FEATURE_OPWFM == STD_ON)
#     case PWM_MODE_OPWFM_U32:
#         Pwm_eMios_SetRegs_OPWMFM_mode(u8IdxChannelConfig, nPeriod, u16DutyCycle, peMiosChannelConfig);
#         break;
# #endif /*PWM_FEATURE_OPWFM*/    
#     default:
#         break;
#     }    
#     SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_00();
	.d2line		2806
.Llo266:
	bl		SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_00
# }
	.d2line		2807
	.d2epilogue_begin
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)		# u8MasterBusIdx=r0
	mtspr		lr,r0		# u8MasterBusIdx=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L819:
	.type		Pwm_eMios_SetDutyCycle,@function
	.size		Pwm_eMios_SetDutyCycle,.-Pwm_eMios_SetDutyCycle
# Number of nodes = 185

# Allocations for Pwm_eMios_SetDutyCycle
#	?a4		u8IdxChannelConfig
#	?a5		u16DutyCycle
#	?a6		peMiosIpConfig
#	?a7		$$144
#	?a8		$$127
#	?a9		$$126
#	?a10		peMiosChannelConfig
#	?a11		nPeriod
#	?a12		u32CtrlMode
#	?a13		u32CtrlBus
#	?a14		u8mIdx
#	?a15		u8chIdx
#	?a16		u8MasterBusIdx
# FUNC(void, PWM_CODE) Pwm_eMios_SetPeriodAndDuty
	.align		2
	.section	.text_vle
        .d2line         2827,22
#$$ld
.L840:

#$$bf	Pwm_eMios_SetPeriodAndDuty,interprocedural,rasave,nostackparams
	.globl		Pwm_eMios_SetPeriodAndDuty
	.d2_cfa_start __cie
Pwm_eMios_SetPeriodAndDuty:
.Llo312:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	25,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u8IdxChannelConfig=r31 u8IdxChannelConfig=r3
.Llo313:
	mr		r30,r4		# nPeriod=r30 nPeriod=r4
.Llo314:
	mr		r29,r5		# u16DutyCycle=r29 u16DutyCycle=r5
.Llo316:
	mr		r6,r6		# peMiosIpConfig=r6 peMiosIpConfig=r6
	.d2prologue_end
# (
#     VAR(uint8,                           AUTOMATIC)                 u8IdxChannelConfig,
#     VAR(Pwm_PeriodType,                  AUTOMATIC)                 nPeriod,
#     VAR(uint16,                          AUTOMATIC)                 u16DutyCycle,
#     CONSTP2CONST(Pwm_eMios_IpConfigType, AUTOMATIC, PWM_APPL_CONST) peMiosIpConfig
# )
# {
#     /* @brief Pointer to EMIOS channel specific configuration */
#     P2CONST(Pwm_eMios_ChannelConfigType,AUTOMATIC,PWM_APPL_CONST) peMiosChannelConfig;
# 
#     VAR(Pwm_eMios_ControlType, AUTOMATIC) u32CtrlMode;
#     VAR(Pwm_eMios_ControlType, AUTOMATIC) u32CtrlBus;
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC) u8mIdx;  /*  assigned eMIOS HW module index */
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC) u8chIdx;  /*  assigned eMIOS HW channel index */
#     VAR(uint8,                 AUTOMATIC) u8MasterBusIdx;
# 
#    /** @violates @ref Pwm_eMIOS_C_REF_11 Array indexing shall be the only allowed form of pointer arithmetic.*/
#     peMiosChannelConfig = &(*peMiosIpConfig->pChannelsConfig)[u8IdxChannelConfig];
	.d2line		2845
.Llo317:
	rlwinm		r0,r31,0,24,31		# u8IdxChannelConfig=r31
	lwz		r28,4(r6)		# peMiosChannelConfig=r28 peMiosIpConfig=r6
.Llo319:
	rlwinm		r3,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r3
	se_add		r0,r28		# peMiosChannelConfig=r28
	mr		r28,r0		# peMiosChannelConfig=r28 peMiosChannelConfig=r0
#     
#     u8mIdx  = (uint8)EMIOS_MODULE_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		2847
.Llo320:
	lbz		r25,12(r28)		# peMiosChannelConfig=r28
.Llo321:
	rlwinm		r26,r25,27,29,31
.Llo327:
	mr		r26,r26		# u8mIdx=r26 u8mIdx=r26
#     u8chIdx = (uint8)EMIOS_CHANNEL_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		2848
	rlwinm		r25,r25,0,27,31
.Llo333:
	mr		r25,r25		# u8chIdx=r25 u8chIdx=r25
#     /* save current mode in local variable */
#     u32CtrlMode = peMiosChannelConfig->u32ControlValue & CCR_MODE_MASK_U32;
	.d2line		2850
	lwz		r27,16(r28)		# peMiosChannelConfig=r28
	rlwinm		r27,r27,0,25,31
.Llo323:
	mr		r27,r27		# u32CtrlMode=r27 u32CtrlMode=r27
#     
#     SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_01();
	.d2line		2852
	bl		SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_01
# #if (PWM_GET_CHANNEL_STATE_API == STD_ON)
#     Pwm_eMios_aChannelDuty[u8IdxChannelConfig] = u16DutyCycle;
	.d2line		2854
.Llo318:
	lis		r3,Pwm_eMios_aChannelDuty@ha
	e_add16i		r3,r3,Pwm_eMios_aChannelDuty@l
	rlwinm		r0,r31,1,23,30		# u8IdxChannelConfig=r31
	sthx		r29,r3,r0		# u16DutyCycle=r29
# #endif /*PWM_GET_CHANNEL_STATE */
# 
#     /* if new period == 0, keep old period and put duty to 0 */
#     if( (Pwm_PeriodType)0x00 == nPeriod )
	.d2line		2858
	rlwinm		r4,r30,0,16,31		# nPeriod=r30
	se_cmpi		r4,0
	bc		0,2,.L584	# ne
#     {
#         nPeriod = Pwm_eMios_aChannelPeriod[peMiosChannelConfig->u8HwChannel]; /*keep the old period */
	.d2line		2860
.Llo322:
	lis		r3,Pwm_eMios_aChannelPeriod@ha
	e_add16i		r3,r3,Pwm_eMios_aChannelPeriod@l
	lbz		r0,12(r28)		# peMiosChannelConfig=r28
	rlwinm		r0,r0,1,23,30
	lhzx		r30,r3,r0		# nPeriod=r30
	mr		r30,r30		# nPeriod=r30 nPeriod=r30
#         u16DutyCycle = (uint16)0x00;
	.d2line		2861
	diab.li		r29,0		# u16DutyCycle=r29
.L584:
#     }
# 
#     /* store new period value */
#     Pwm_eMios_aChannelPeriod[peMiosChannelConfig->u8HwChannel] = nPeriod; /* for current channel */
	.d2line		2865
	lis		r3,Pwm_eMios_aChannelPeriod@ha
	e_add16i		r3,r3,Pwm_eMios_aChannelPeriod@l
	lbz		r0,12(r28)		# peMiosChannelConfig=r28
	rlwinm		r0,r0,1,23,30
	sthx		r30,r3,r0		# nPeriod=r30
#     if((PWM_MODE_DAOC_U32 != u32CtrlMode) && (PWM_MODE_OPWFMB_U32 != u32CtrlMode))
	.d2line		2866
	se_cmpi		r27,6		# u32CtrlMode=r27
	bc		1,2,.L585	# eq
	cmpi		0,0,r27,88		# u32CtrlMode=r27
	bc		1,2,.L585	# eq
#     {
#         /* @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         u32CtrlBus = (REG_READ32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx)) & CCR_BSL_MASK_U32);
	.d2line		2870
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8mIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8mIdx=r3 u8mIdx=r3
	rlwinm		r0,r26,2,22,29		# u8MasterBusIdx=r0 u8mIdx=r26
.Llo334:
	lwzx		r0,r3,r0		# u8MasterBusIdx=r0 u8mIdx=r3
	rlwinm		r3,r25,5,19,26		# u8mIdx=r3 u8chIdx=r25
	se_add		r3,r0		# u8mIdx=r3 u8mIdx=r3 u8MasterBusIdx=r0
	lwz		r5,44(r3)		# u8mIdx=r3
	rlwinm		r5,r5,0,21,22
.Llo325:
	mr		r5,r5		# u32CtrlBus=r5 u32CtrlBus=r5
#         u8MasterBusIdx = (uint8)Pwm_eMios_GetMasterBus(u8mIdx, u8chIdx, u32CtrlBus);
	.d2line		2871
	mr		r3,r26		# u8mIdx=r3 u8mIdx=r26
	mr		r4,r25		# u8chIdx=r4 u8chIdx=r25
	mr		r5,r5		# u32CtrlBus=r5 u32CtrlBus=r5
.Llo326:
	bl		Pwm_eMios_GetMasterBus
.Llo335:
	mr		r0,r3		# u8MasterBusIdx=r0 u8MasterBusIdx=r3
#         Pwm_eMios_aChannelPeriod[u8MasterBusIdx] = nPeriod; /* for master channel */
	.d2line		2872
.Llo336:
	lis		r3,Pwm_eMios_aChannelPeriod@ha		# u8mIdx=r3
.Llo337:
	e_add16i		r3,r3,Pwm_eMios_aChannelPeriod@l		# u8mIdx=r3 u8mIdx=r3
.Llo338:
	rlwinm		r0,r0,1,23,30		# u8MasterBusIdx=r0 u8MasterBusIdx=r0
.Llo339:
	sthx		r30,r3,r0		# u8mIdx=r3 nPeriod=r30
.L585:
#     }
#     
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#     if (((uint16)0x0000 == u16DutyCycle) || (PWM_DUTY_CYCLE_100 == u16DutyCycle))
	.d2line		2876
	rlwinm		r5,r29,0,16,31		# u16DutyCycle=r29
	se_cmpi		r5,0
	bc		1,2,.L591	# eq
	rlwinm		r5,r29,0,16,31		# u16DutyCycle=r29
	cmpli		0,0,r5,32768
	bc		0,2,.L586	# ne
.L591:
#     {
#         /* no transitions in the signal */
#         Pwm_eMios_aDutyState[u8mIdx] &= ~((uint32)1<< u8chIdx);
	.d2line		2879
.Llo328:
	lis		r3,Pwm_eMios_aDutyState@ha		# u8mIdx=r3
.Llo329:
	e_add16i		r3,r3,Pwm_eMios_aDutyState@l		# u8mIdx=r3 u8mIdx=r3
	rlwinm		r26,r26,2,22,29		# u8mIdx=r26 u8mIdx=r26
	lwzx		r0,r3,r26		# u8MasterBusIdx=r0 u8mIdx=r3
.Llo340:
	diab.li		r4,1		# u8chIdx=r4
	slw		r4,r4,r25		# u8chIdx=r4 u8chIdx=r4 u8chIdx=r25
	andc		r0,r0,r4		# u8MasterBusIdx=r0 u8MasterBusIdx=r0 u8chIdx=r4
	stwx		r0,r3,r26		# u8mIdx=r3 u8MasterBusIdx=r0
	b		.L587
.L586:
#     }
#     else
#     {
#         /* transitions available in the signal */
#         Pwm_eMios_aDutyState[u8mIdx] |= ((uint32)1U<< u8chIdx);
	.d2line		2884
.Llo330:
	lis		r3,Pwm_eMios_aDutyState@ha		# u8mIdx=r3
.Llo331:
	e_add16i		r3,r3,Pwm_eMios_aDutyState@l		# u8mIdx=r3 u8mIdx=r3
	rlwinm		r26,r26,2,22,29		# u8mIdx=r26 u8mIdx=r26
	lwzx		r0,r3,r26		# u8MasterBusIdx=r0 u8mIdx=r3
.Llo341:
	diab.li		r4,1		# u8chIdx=r4
	slw		r4,r4,r25		# u8chIdx=r4 u8chIdx=r4 u8chIdx=r25
	or		r0,r0,r4		# u8MasterBusIdx=r0 u8MasterBusIdx=r0 u8chIdx=r4
	stwx		r0,r3,r26		# u8mIdx=r3 u8MasterBusIdx=r0
.L587:
#     }
# #endif /* PWM_NOTIFICATION_SUPPORTED */
#     
#     switch(u32CtrlMode)
	.d2line		2888
.Llo332:
	cmpi		0,0,r27,88		# u32CtrlMode=r27
	bc		0,2,.L589	# ne
#     {
# #if (PWM_FEATURE_DAOC == STD_ON)   
#     case PWM_MODE_DAOC_U32:  
#         Pwm_eMios_SetRegs_DAOC_mode(u8IdxChannelConfig, nPeriod, u16DutyCycle, peMiosChannelConfig);
#         break;
# #endif
#     case PWM_MODE_OPWFMB_U32:
#         Pwm_eMios_SetRegs_OPWMFMB_mode(u8IdxChannelConfig, nPeriod, u16DutyCycle, peMiosChannelConfig);
	.d2line		2896
.Llo324:
	mr		r3,r31		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r31
	mr		r4,r30		# nPeriod=r4 nPeriod=r30
	mr		r5,r29		# u16DutyCycle=r5 u16DutyCycle=r29
	mr		r6,r28		# peMiosChannelConfig=r6 peMiosChannelConfig=r28
	bl		Pwm_eMios_SetRegs_OPWMFMB_mode
.L589:
#         break;
# #if (PWM_FEATURE_OPWFM == STD_ON)
#     case PWM_MODE_OPWFM_U32:
#         Pwm_eMios_SetRegs_OPWMFM_mode(u8IdxChannelConfig, nPeriod, u16DutyCycle, peMiosChannelConfig);
#         break;
# #endif /*PWM_FEATURE_OPWFM*/    
#     default:
#         break;
#     }
#     SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_01();
	.d2line		2906
.Llo315:
	bl		SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_01
# }
	.d2line		2907
	.d2epilogue_begin
	lmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)		# u8MasterBusIdx=r0
	mtspr		lr,r0		# u8MasterBusIdx=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L841:
	.type		Pwm_eMios_SetPeriodAndDuty,@function
	.size		Pwm_eMios_SetPeriodAndDuty,.-Pwm_eMios_SetPeriodAndDuty
# Number of nodes = 188

# Allocations for Pwm_eMios_SetPeriodAndDuty
#	?a4		u8IdxChannelConfig
#	?a5		nPeriod
#	?a6		u16DutyCycle
#	?a7		peMiosIpConfig
#	?a8		$$145
#	?a9		$$129
#	?a10		$$128
#	?a11		peMiosChannelConfig
#	?a12		u32CtrlMode
#	?a13		u32CtrlBus
#	?a14		u8mIdx
#	?a15		u8chIdx
#	?a16		u8MasterBusIdx
# FUNC(void, PWM_CODE) Pwm_eMios_SetOutputToIdle
	.align		2
	.section	.text_vle
        .d2line         2924,22
#$$ld
.L861:

#$$bf	Pwm_eMios_SetOutputToIdle,interprocedural,rasave,nostackparams
	.globl		Pwm_eMios_SetOutputToIdle
	.d2_cfa_start __cie
Pwm_eMios_SetOutputToIdle:
.Llo342:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u8IdxChannelConfig=r31 u8IdxChannelConfig=r3
.Llo343:
	mr		r4,r4		# peMiosIpConfig=r4 peMiosIpConfig=r4
	.d2prologue_end
# (
#     VAR(uint8,                           AUTOMATIC)                 u8IdxChannelConfig,
#     CONSTP2CONST(Pwm_eMios_IpConfigType, AUTOMATIC, PWM_APPL_CONST) peMiosIpConfig
# )
# {
# 
#     /* Pwm channel Emios specific parameters from config structure */
#     P2CONST(Pwm_eMios_ChannelConfigType,AUTOMATIC,PWM_APPL_CONST) peMiosChannelConfig;
# 
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC) u8mIdx;  /*  assigned eMIOS HW module index */
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC) u8chIdx;  /*  assigned eMIOS HW channel index */
# 
#     /** @violates @ref Pwm_eMIOS_C_REF_11 Array indexing shall be the only allowed form of pointer arithmetic.*/
#     peMiosChannelConfig = &(*peMiosIpConfig->pChannelsConfig)[u8IdxChannelConfig];
	.d2line		2938
.Llo344:
	rlwinm		r3,r3,0,24,31		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	lwz		r0,4(r4)		# peMiosIpConfig=r4
	rlwinm		r4,r3,5,0,26		# peMiosIpConfig=r4 u8IdxChannelConfig=r3
	se_slwi		r3,3		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	subf		r3,r3,r4		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3 peMiosIpConfig=r4
	se_add		r0,r3		# u8IdxChannelConfig=r3
.Llo353:
	mr		r3,r0		# peMiosChannelConfig=r3 peMiosChannelConfig=r0
#     
#     u8mIdx  = (uint8)EMIOS_MODULE_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		2940
	lbz		r29,12(r3)		# peMiosChannelConfig=r3
	rlwinm		r30,r29,27,29,31
.Llo359:
	mr		r30,r30		# u8mIdx=r30 u8mIdx=r30
#     u8chIdx = (uint8)EMIOS_CHANNEL_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		2941
	rlwinm		r29,r29,0,27,31
.Llo362:
	mr		r29,r29		# u8chIdx=r29 u8chIdx=r29
# 
#     SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_02();
	.d2line		2943
	bl		SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_02
# #if (PWM_GET_CHANNEL_STATE_API == STD_ON)
#     Pwm_eMios_aChannelDuty[u8IdxChannelConfig] = (uint16)0U;
	.d2line		2945
.Llo346:
	diab.li		r0,0
	lis		r3,Pwm_eMios_aChannelDuty@ha		# peMiosChannelConfig=r3
.Llo354:
	e_add16i		r3,r3,Pwm_eMios_aChannelDuty@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	rlwinm		r4,r31,1,23,30		# peMiosIpConfig=r4 u8IdxChannelConfig=r31
	sthx		r0,r3,r4		# peMiosChannelConfig=r3
# #endif /*PWM_GET_CHANNEL_STATE */
#     if (PWM_HIGH == Pwm_eMios_aChannelIdleState[u8IdxChannelConfig])
	.d2line		2947
	lis		r3,Pwm_eMios_aChannelIdleState@ha		# peMiosChannelConfig=r3
	e_add16i		r3,r3,Pwm_eMios_aChannelIdleState@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	rlwinm		r31,r31,2,22,29		# u8IdxChannelConfig=r31 u8IdxChannelConfig=r31
.Llo345:
	lwzx		r0,r3,r31		# peMiosChannelConfig=r3
	se_cmpi		r0,1
	bc		0,2,.L599	# ne
#     {
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_BIT_SET32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_EDPOL_MASK_U32);
	.d2line		2951
.Llo355:
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
.Llo356:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	rlwinm		r0,r30,2,22,29		# u8mIdx=r30
	lwzx		r3,r3,r0		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	rlwinm		r4,r29,5,19,26		# peMiosIpConfig=r4 u8chIdx=r29
.Llo347:
	se_add		r3,r4		# peMiosChannelConfig=r3 peMiosChannelConfig=r3 peMiosIpConfig=r4
	lwz		r0,44(r3)		# peMiosChannelConfig=r3
	.diab.bseti		r0,24
	stw		r0,44(r3)		# peMiosChannelConfig=r3
	b		.L600
.L599:
#     }
#     else
#     {
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_EDPOL_MASK_U32 );
	.d2line		2957
.Llo348:
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
.Llo357:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	rlwinm		r0,r30,2,22,29		# u8mIdx=r30
	lwzx		r3,r3,r0		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	rlwinm		r4,r29,5,19,26		# peMiosIpConfig=r4 u8chIdx=r29
.Llo349:
	se_add		r3,r4		# peMiosChannelConfig=r3 peMiosChannelConfig=r3 peMiosIpConfig=r4
	lwz		r0,44(r3)		# peMiosChannelConfig=r3
	.diab.bclri		r0,24
	stw		r0,44(r3)		# peMiosChannelConfig=r3
.L600:
#     }
#     
#     /* Enter GPIO output mode */
#     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#     REG_RMW32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_MODE_MASK_U32, CCR_MODE_GPO_U32);
	.d2line		2963
.Llo350:
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
.Llo358:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
.Llo360:
	rlwinm		r30,r30,2,22,29		# u8mIdx=r30 u8mIdx=r30
.Llo361:
	lwzux		r0,r3,r30		# peMiosChannelConfig=r3
	rlwinm		r4,r29,5,19,26		# peMiosIpConfig=r4 u8chIdx=r29
.Llo351:
	add		r29,r0,r4		# u8chIdx=r29 peMiosIpConfig=r4
	lwz		r0,44(r29)		# u8chIdx=r29
	rlwinm		r0,r0,0,0,24
	.diab.bseti		r0,31
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	lwzux		r29,r3,r30		# u8chIdx=r29 peMiosChannelConfig=r3
	se_add		r29,r4		# u8chIdx=r29 u8chIdx=r29 peMiosIpConfig=r4
	stw		r0,44(r29)		# u8chIdx=r29
#     /* Disable channel interrupts  */
#     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#     REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FEN_MASK_U32);
	.d2line		2967
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	lwzx		r29,r3,r30		# u8chIdx=r29 peMiosChannelConfig=r3
	se_add		r29,r4		# u8chIdx=r29 u8chIdx=r29 peMiosIpConfig=r4
	lwz		r0,44(r29)		# u8chIdx=r29
	.diab.bclri		r0,14
	stw		r0,44(r29)		# u8chIdx=r29
#     /* Clear pending interrupt flag for the channel  */
#     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#     REG_WRITE32(EMIOS_CSR_ADDR32(u8mIdx, u8chIdx), CSR_FLAG_BIT_U32);
	.d2line		2971
	diab.li		r0,1
	lwzx		r3,r3,r30		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
	se_add		r4,r3		# peMiosIpConfig=r4 peMiosIpConfig=r4 peMiosChannelConfig=r3
	stw		r0,48(r4)		# peMiosIpConfig=r4
#     SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_02();
	.d2line		2972
	bl		SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_02
# }
	.d2line		2973
	.d2epilogue_begin
.Llo352:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo363:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L862:
	.type		Pwm_eMios_SetOutputToIdle,@function
	.size		Pwm_eMios_SetOutputToIdle,.-Pwm_eMios_SetOutputToIdle
# Number of nodes = 167

# Allocations for Pwm_eMios_SetOutputToIdle
#	?a4		u8IdxChannelConfig
#	?a5		peMiosIpConfig
#	?a6		$$146
#	?a7		$$132
#	?a8		$$131
#	?a9		$$130
#	?a10		peMiosChannelConfig
#	?a11		u8mIdx
#	?a12		u8chIdx
# FUNC(Pwm_OutputStateType, PWM_CODE) Pwm_eMios_GetOutputState
	.align		2
	.section	.text_vle
        .d2line         2990,37
#$$ld
.L874:

#$$bf	Pwm_eMios_GetOutputState,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.globl		Pwm_eMios_GetOutputState
	.d2_cfa_start __cie
Pwm_eMios_GetOutputState:
.Llo364:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo371:
	stw		r0,20(r1)		# eOutputState=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	mr		r4,r4		# peMiosIpConfig=r4 peMiosIpConfig=r4
	.d2prologue_end
# (
#     VAR(uint8,                           AUTOMATIC)                 u8IdxChannelConfig,
#     CONSTP2CONST(Pwm_eMios_IpConfigType, AUTOMATIC, PWM_APPL_CONST) peMiosIpConfig
# )
# {
# 
#     /* Pwm channel Emios specific parameters from config structure */
#     P2CONST(Pwm_eMios_ChannelConfigType,AUTOMATIC,PWM_APPL_CONST) peMiosChannelConfig;
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC) u8mIdx;  /*  assigned eMIOS HW module index */
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC) u8chIdx;  /*  assigned eMIOS HW channel index */
# 
#     VAR(Pwm_OutputStateType, AUTOMATIC) eOutputState;
# 
#     /** @violates @ref Pwm_eMIOS_C_REF_11 Array indexing shall be the only allowed form of pointer arithmetic.*/
#     peMiosChannelConfig = &(*peMiosIpConfig->pChannelsConfig)[u8IdxChannelConfig];
	.d2line		3005
	rlwinm		r3,r3,0,24,31		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	lwz		r0,4(r4)		# eOutputState=r0 peMiosIpConfig=r4
	rlwinm		r4,r3,5,0,26		# peMiosIpConfig=r4 u8IdxChannelConfig=r3
	se_slwi		r3,3		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	subf		r3,r3,r4		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3 peMiosIpConfig=r4
	se_add		r0,r3		# eOutputState=r0 eOutputState=r0 u8IdxChannelConfig=r3
.Llo367:
	mr		r3,r0		# peMiosChannelConfig=r3 peMiosChannelConfig=r0
# 
#     u8mIdx  = (uint8)EMIOS_MODULE_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		3007
.Llo365:
	lbz		r4,12(r3)		# peMiosIpConfig=r4 peMiosChannelConfig=r3
	rlwinm		r0,r4,27,29,31		# eOutputState=r0 peMiosIpConfig=r4
.Llo368:
	mr		r0,r0		# u8mIdx=r0 u8mIdx=r0
#     u8chIdx = (uint8)EMIOS_CHANNEL_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		3008
	rlwinm		r4,r4,0,27,31		# peMiosIpConfig=r4 peMiosIpConfig=r4
.Llo366:
	mr		r4,r4		# u8chIdx=r4 u8chIdx=r4
# 
#     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#     if (0U != (REG_READ32(EMIOS_CSR_ADDR32(u8mIdx, u8chIdx)) & CSR_UCOUT_MASK_U32))
	.d2line		3012
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
.Llo369:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
.Llo372:
	rlwinm		r0,r0,2,22,29		# u8mIdx=r0 u8mIdx=r0
	lwzx		r0,r3,r0		# u8mIdx=r0 peMiosChannelConfig=r3
	rlwinm		r4,r4,5,19,26		# u8chIdx=r4 u8chIdx=r4
	se_add		r4,r0		# u8chIdx=r4 u8chIdx=r4 u8mIdx=r0
	lwz		r0,48(r4)		# u8mIdx=r0 u8chIdx=r4
	se_btsti		r0,30		# u8mIdx=r0
#     {
#         eOutputState = PWM_HIGH;
	.d2line		3014
	diab.li		r0,1		# u8mIdx=r0
	.d2line		3005
	isel		r0,r3,r0,2		# eOutputState=r0 eOutputState=r3 u8mIdx=r0
.L604:
#     }
#     else
#     {
#         eOutputState = PWM_LOW;
	.d2line		3018
.Llo370:
	isel		r3,0,r0,2		# eOutputState=r3 eOutputState=r0
.L605:
#     }
# 
#     return eOutputState;
	.d2line		3021
.Llo373:
	mr		r3,r3		# eOutputState=r3 eOutputState=r3
# }
	.d2line		3022
	.d2epilogue_begin
.Llo374:
	lwz		r0,20(r1)		# eOutputState=r0
	mtspr		lr,r0		# eOutputState=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L875:
	.type		Pwm_eMios_GetOutputState,@function
	.size		Pwm_eMios_GetOutputState,.-Pwm_eMios_GetOutputState
# Number of nodes = 62

# Allocations for Pwm_eMios_GetOutputState
#	?a4		u8IdxChannelConfig
#	?a5		peMiosIpConfig
#	?a6		$$147
#	?a7		peMiosChannelConfig
#	?a8		u8mIdx
#	?a9		u8chIdx
#	?a10		eOutputState
# FUNC(void, PWM_CODE) Pwm_eMios_EnableNotification
	.align		2
	.section	.text_vle
        .d2line         3044,22
#$$ld
.L891:

#$$bf	Pwm_eMios_EnableNotification,interprocedural,rasave,nostackparams
	.globl		Pwm_eMios_EnableNotification
	.d2_cfa_start __cie
Pwm_eMios_EnableNotification:
.Llo375:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	mr		r31,r4		# eNotification=r31 eNotification=r4
.Llo387:
	mr		r5,r5		# peMiosIpConfig=r5 peMiosIpConfig=r5
	.d2prologue_end
# (
#     VAR(uint8,                           AUTOMATIC)                 u8IdxChannelConfig,
#     VAR(Pwm_EdgeNotificationType,        AUTOMATIC)                 eNotification,
#     CONSTP2CONST(Pwm_eMios_IpConfigType, AUTOMATIC, PWM_APPL_CONST) peMiosIpConfig
# )
# {
# 
#     /* Pwm channel Emios specific parameters from config structure */
#     P2CONST(Pwm_eMios_ChannelConfigType,AUTOMATIC,PWM_APPL_CONST) peMiosChannelConfig;
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC) u8mIdx;  /*  assigned eMIOS HW module index */
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC) u8chIdx;  /*  assigned eMIOS HW channel index */
# #if ((PWM_FEATURE_OPWMT == STD_ON) || (PWM_FEATURE_DAOC == STD_ON))
#     VAR(Pwm_eMios_ControlType, AUTOMATIC) u32CtrlRegVal;
# #endif
# 
#     /** @violates @ref Pwm_eMIOS_C_REF_11 Array indexing shall be the only allowed form of pointer arithmetic.*/
#     peMiosChannelConfig = &(*peMiosIpConfig->pChannelsConfig)[u8IdxChannelConfig];
	.d2line		3061
.Llo388:
	rlwinm		r3,r3,0,24,31		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	lwz		r30,4(r5)		# peMiosChannelConfig=r30 peMiosIpConfig=r5
.Llo391:
	rlwinm		r0,r3,5,0,26		# u8IdxChannelConfig=r3
	se_slwi		r3,3		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	subf		r3,r3,r0		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	se_add		r3,r30		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3 peMiosChannelConfig=r30
.Llo376:
	mr		r30,r3		# peMiosChannelConfig=r30 peMiosChannelConfig=r3
# 
#     u8mIdx  = (uint8)EMIOS_MODULE_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		3063
	lbz		r28,12(r30)		# u8chIdx=r28 peMiosChannelConfig=r30
	rlwinm		r29,r28,27,29,31		# u8mIdx=r29 u8chIdx=r28
.Llo392:
	mr		r29,r29		# u8mIdx=r29 u8mIdx=r29
#     u8chIdx = (uint8)EMIOS_CHANNEL_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		3064
	rlwinm		r28,r28,0,27,31		# u8chIdx=r28 u8chIdx=r28
	mr		r28,r28		# u8chIdx=r28 u8chIdx=r28
# 
#     /* save current channel control register config value in local variable */
# #if ((PWM_FEATURE_OPWMT == STD_ON) || (PWM_FEATURE_DAOC == STD_ON))
#     u32CtrlRegVal = peMiosChannelConfig->u32ControlValue;
# #endif
#     
#     SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_03();
	.d2line		3071
	bl		SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_03
#     /* note that notifications are enabled for this channel */
#     Pwm_eMios_aChannelNotifType[(uint8)peMiosChannelConfig->u8HwChannel] = (uint8)eNotification;
	.d2line		3073
.Llo390:
	lis		r3,Pwm_eMios_aChannelNotifType@ha		# u8IdxChannelConfig=r3
.Llo377:
	e_add16i		r3,r3,Pwm_eMios_aChannelNotifType@l		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	lbz		r0,12(r30)		# peMiosChannelConfig=r30
	stbx		r31,r3,r0		# u8IdxChannelConfig=r3 eNotification=r31
#     /* only enable notifications if channel is not in idle state */
#     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#     if (CCR_MODE_GPO_U32 != (REG_READ32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx)) & CCR_MODE_MASK_U32))
	.d2line		3077
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8IdxChannelConfig=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	rlwinm		r0,r29,2,22,29		# u8mIdx=r29
	lwzx		r3,r3,r0		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	rlwinm		r0,r28,5,19,26		# u8chIdx=r28
	se_add		r3,r0		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	lwz		r0,44(r3)		# u8IdxChannelConfig=r3
	rlwinm		r0,r0,0,25,31
	se_cmpi		r0,1
	bc		1,2,.L609	# eq
#     {
# #if (PWM_FEATURE_OPWMT == STD_ON)
#         /* activation edge not available in OPWMT */
#         if (PWM_MODE_OPWMT_U32 != (u32CtrlRegVal & CCR_MODE_MASK_U32))
#         {
# #endif
#     /* transitions are present in the signal ( duty != 0%,100% )  u16DutyCycle doesn't affect trigger in OPWMT mode */
#             if (((uint32)1U << u8chIdx) & Pwm_eMios_aDutyState[u8mIdx])
	.d2line		3085
.Llo378:
	diab.li		r4,1
	slw		r4,r4,r28		# u8chIdx=r28
	lis		r3,Pwm_eMios_aDutyState@ha		# u8IdxChannelConfig=r3
.Llo379:
	e_add16i		r3,r3,Pwm_eMios_aDutyState@l		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	rlwinm		r0,r29,2,22,29		# u8mIdx=r29
	lwzx		r0,r3,r0		# u8IdxChannelConfig=r3
	and.		r0,r0,r4
	bc		1,2,.L609	# eq
#             {
#                 /* Change activation edge if required */
#                 if (PWM_BOTH_EDGES == eNotification)
	.d2line		3088
.Llo380:
	se_cmpi		r31,3		# eNotification=r31
	bc		0,2,.L611	# ne
#                 {
# #if (PWM_FEATURE_DAOC == STD_ON)
#                     if (PWM_MODE_DAOC_U32 == (u32CtrlRegVal & CCR_MODE_MASK_U32))
#                     {
#                         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                         REG_BIT_SET32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_DAOC_MODE_EDGE_SELECT_MASK_U32 );
#                     }
#                     else
#                     {
# #endif
#                     /* notification on both edges */
#                         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                         REG_BIT_SET32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_MODE_EDGE_SELECT_MASK_U32 );
	.d2line		3103
.Llo389:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8IdxChannelConfig=r3
.Llo381:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	rlwinm		r0,r29,2,22,29		# u8mIdx=r29
	lwzx		r3,r3,r0		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	rlwinm		r0,r28,5,19,26		# u8chIdx=r28
	se_add		r3,r0		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	lwz		r0,44(r3)		# u8IdxChannelConfig=r3
	.diab.bseti		r0,30
	stw		r0,44(r3)		# u8IdxChannelConfig=r3
	b		.L612
.L611:
# #if (PWM_FEATURE_DAOC == STD_ON)
#                     }
# #endif
#                 }
#                 else
#                 {
# #if (PWM_FEATURE_DAOC == STD_ON)
#                     if (PWM_MODE_DAOC_U32 == (u32CtrlRegVal & CCR_MODE_MASK_U32))
#                     {
#                         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                         REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_DAOC_MODE_EDGE_SELECT_MASK_U32);
#                     }
#                     else
#                     {
# #endif
#                         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                         REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_MODE_EDGE_SELECT_MASK_U32);
	.d2line		3122
.Llo382:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8IdxChannelConfig=r3
.Llo383:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	rlwinm		r0,r29,2,22,29		# u8mIdx=r29
	lwzx		r3,r3,r0		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	rlwinm		r0,r28,5,19,26		# u8chIdx=r28
	se_add		r3,r0		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	lwz		r0,44(r3)		# u8IdxChannelConfig=r3
	.diab.bclri		r0,30
	stw		r0,44(r3)		# u8IdxChannelConfig=r3
.L612:
# #if (PWM_FEATURE_DAOC == STD_ON)
#                     }
# #endif
#                 }
# #if (PWM_FEATURE_DAOC == STD_ON)
#                 if (PWM_MODE_DAOC_U32 != (u32CtrlRegVal & CCR_MODE_MASK_U32))
#                 {
# #endif
#                     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                     REG_WRITE32(EMIOS_CSR_ADDR32(u8mIdx, u8chIdx), CSR_FLAG_BIT_U32 );
	.d2line		3133
.Llo384:
	diab.li		r0,1
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8IdxChannelConfig=r3
.Llo385:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
.Llo393:
	rlwinm		r29,r29,2,22,29		# u8mIdx=r29 u8mIdx=r29
.Llo394:
	lwzux		r4,r3,r29		# u8IdxChannelConfig=r3
.Llo395:
	rlwinm		r28,r28,5,19,26		# u8chIdx=r28 u8chIdx=r28
	se_add		r4,r28		# u8chIdx=r28
	stw		r0,48(r4)
# #if (PWM_FEATURE_DAOC == STD_ON)
#                 }
# #endif
#                 /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 REG_BIT_SET32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FEN_MASK_U32 );
	.d2line		3139
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8IdxChannelConfig=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	lwzx		r0,r3,r29		# u8IdxChannelConfig=r3
	se_add		r28,r0		# u8chIdx=r28 u8chIdx=r28
	lwz		r0,44(r28)		# u8chIdx=r28
	.diab.bseti		r0,14
	stw		r0,44(r28)		# u8chIdx=r28
.L609:
#             }
#     
# #if (PWM_FEATURE_OPWMT == STD_ON)
#         }
#         else
#         { /* OPWMT */
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_WRITE32(EMIOS_CSR_ADDR32(u8mIdx, u8chIdx), CSR_FLAG_BIT_U32 );
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_DMA_MASK_U32 );
#         }
# #endif
#     }
#     SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_03();
	.d2line		3155
.Llo386:
	bl		SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_03
# }
	.d2line		3156
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
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
.L892:
	.type		Pwm_eMios_EnableNotification,@function
	.size		Pwm_eMios_EnableNotification,.-Pwm_eMios_EnableNotification
# Number of nodes = 160

# Allocations for Pwm_eMios_EnableNotification
#	?a4		u8IdxChannelConfig
#	?a5		eNotification
#	?a6		peMiosIpConfig
#	?a7		$$148
#	?a8		$$135
#	?a9		$$134
#	?a10		$$133
#	?a11		peMiosChannelConfig
#	?a12		u8mIdx
#	?a13		u8chIdx
# FUNC(void, PWM_CODE) Pwm_eMios_DisableNotification
	.align		2
	.section	.text_vle
        .d2line         3173,22
#$$ld
.L907:

#$$bf	Pwm_eMios_DisableNotification,interprocedural,rasave,nostackparams
	.globl		Pwm_eMios_DisableNotification
	.d2_cfa_start __cie
Pwm_eMios_DisableNotification:
.Llo396:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	mr		r4,r4		# peMiosIpConfig=r4 peMiosIpConfig=r4
	.d2prologue_end
# (
#     VAR         (uint8,                  AUTOMATIC)                 u8IdxChannelConfig,
#     CONSTP2CONST(Pwm_eMios_IpConfigType, AUTOMATIC, PWM_APPL_CONST) peMiosIpConfig
# )
# {
#     /* Pwm channel Emios specific parameters from config structure */
#     P2CONST(Pwm_eMios_ChannelConfigType, AUTOMATIC,PWM_APPL_CONST) peMiosChannelConfig;
#     VAR(Pwm_eMios_ChannelType,           AUTOMATIC)                u8mIdx;
#     VAR(Pwm_eMios_ChannelType,           AUTOMATIC)                u8chIdx;
# 
#     /* extract from conf structure the generic channel information */
#     /** @violates @ref Pwm_eMIOS_C_REF_11 Array indexing shall be the only allowed form of pointer arithmetic.*/
#     peMiosChannelConfig = &(*peMiosIpConfig->pChannelsConfig)[u8IdxChannelConfig];
	.d2line		3186
	rlwinm		r3,r3,0,24,31		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	lwz		r31,4(r4)		# peMiosChannelConfig=r31 peMiosIpConfig=r4
.Llo401:
	rlwinm		r0,r3,5,0,26		# u8IdxChannelConfig=r3
	se_slwi		r3,3		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	subf		r3,r3,r0		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	se_add		r3,r31		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3 peMiosChannelConfig=r31
.Llo397:
	mr		r31,r3		# peMiosChannelConfig=r31 peMiosChannelConfig=r3
# 
#     u8mIdx  = (uint8)EMIOS_MODULE_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		3188
	lbz		r29,12(r31)		# u8chIdx=r29 peMiosChannelConfig=r31
	rlwinm		r30,r29,27,29,31		# u8mIdx=r30 u8chIdx=r29
.Llo403:
	mr		r30,r30		# u8mIdx=r30 u8mIdx=r30
#     u8chIdx = (uint8)EMIOS_CHANNEL_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		3189
	rlwinm		r29,r29,0,27,31		# u8chIdx=r29 u8chIdx=r29
	mr		r29,r29		# u8chIdx=r29 u8chIdx=r29
# 
#     SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_04();
	.d2line		3191
	bl		SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_04
# #if (PWM_FEATURE_OPWMT == STD_ON)
#     if (PWM_MODE_OPWMT_U32 != (peMiosChannelConfig->u32ControlValue & CCR_MODE_MASK_U32))
#     {
# #endif /* PWM_FEATURE_OPWMT */
# #if (PWM_FEATURE_DAOC == STD_ON)
#         if (PWM_MODE_DAOC_U32 != (peMiosChannelConfig->u32ControlValue & CCR_MODE_MASK_U32))
#         {
# #endif
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FEN_MASK_U32 );
	.d2line		3202
.Llo400:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8IdxChannelConfig=r3
.Llo398:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	rlwinm		r30,r30,2,22,29		# u8mIdx=r30 u8mIdx=r30
.Llo404:
	lwzx		r0,r3,r30		# u8IdxChannelConfig=r3
	rlwinm		r29,r29,5,19,26		# u8chIdx=r29 u8chIdx=r29
	se_add		r29,r0		# u8chIdx=r29 u8chIdx=r29
	lwz		r0,44(r29)		# u8chIdx=r29
	.diab.bclri		r0,14
	stw		r0,44(r29)		# u8chIdx=r29
# #if (PWM_FEATURE_DAOC == STD_ON)
#         }
# #endif
#     /* no need to clear the flag as it will be cleared in EnableNotification before interrupts are enabled */
# #if (PWM_FEATURE_OPWMT == STD_ON)
#     }
#     else
#     {
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_WRITE32(EMIOS_CSR_ADDR32(u8mIdx, u8chIdx), CSR_FLAG_BIT_U32 );
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_BIT_SET32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_DMA_MASK_U32 );
#     }
# #endif /* PWM_FEATURE_OPWMT */
# 
#     /* note that notifications are disabled for this channel */
#     Pwm_eMios_aChannelNotifType[(uint8)peMiosChannelConfig->u8HwChannel] = (uint8)0U;
	.d2line		3221
	diab.li		r0,0
	lis		r3,Pwm_eMios_aChannelNotifType@ha		# u8IdxChannelConfig=r3
	e_add16i		r3,r3,Pwm_eMios_aChannelNotifType@l		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	lbz		r4,12(r31)		# peMiosIpConfig=r4 peMiosChannelConfig=r31
	stbx		r0,r3,r4		# u8IdxChannelConfig=r3
#     SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_04();
	.d2line		3222
	bl		SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_04
# }
	.d2line		3223
	.d2epilogue_begin
.Llo399:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo402:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L908:
	.type		Pwm_eMios_DisableNotification,@function
	.size		Pwm_eMios_DisableNotification,.-Pwm_eMios_DisableNotification
# Number of nodes = 66

# Allocations for Pwm_eMios_DisableNotification
#	?a4		u8IdxChannelConfig
#	?a5		peMiosIpConfig
#	?a6		$$149
#	?a7		$$136
#	?a8		peMiosChannelConfig
#	?a9		u8mIdx
#	?a10		u8chIdx
# FUNC(void, PWM_CODE) Pwm_eMios_SetCounterBus
	.align		2
	.section	.text_vle
        .d2line         3243,22
#$$ld
.L920:

#$$bf	Pwm_eMios_SetCounterBus,interprocedural,rasave,nostackparams
	.globl		Pwm_eMios_SetCounterBus
	.d2_cfa_start __cie
Pwm_eMios_SetCounterBus:
.Llo405:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
.Llo436:
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)		# u8MasterBusIdx=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u8IdxChannelConfig=r31 u8IdxChannelConfig=r3
	mr		r4,r4		# peMiosIpConfig=r4 peMiosIpConfig=r4
	mr		r30,r5		# u32Bus=r30 u32Bus=r5
	.d2prologue_end
# (
#     VAR(uint8,                           AUTOMATIC)                 u8IdxChannelConfig,
#     CONSTP2CONST(Pwm_eMios_IpConfigType, AUTOMATIC, PWM_APPL_CONST) peMiosIpConfig,
#     VAR(uint32,                          AUTOMATIC)                 u32Bus
# )
# {
#     /* Pwm channel Emios specific parameters from config structure */
#     P2CONST(Pwm_eMios_ChannelConfigType,    AUTOMATIC,PWM_APPL_CONST) peMiosChannelConfig;
#     VAR(Pwm_PeriodType,                     AUTOMATIC)                nPeriod;
#     VAR(Pwm_eMios_ChannelType,              AUTOMATIC)                u8mIdx;
#     VAR(Pwm_eMios_ChannelType,              AUTOMATIC)                u8chIdx;
#     VAR(Pwm_eMios_ControlType,              AUTOMATIC)                u32CtrlRegVal;
#     VAR(Pwm_PeriodType,                     AUTOMATIC)                nOffset;
# #if (PWM_FEATURE_OPWMT == STD_ON)
#     VAR(Pwm_PeriodType,                     AUTOMATIC)                nTrigger;
# #endif
#     VAR(uint8,                              AUTOMATIC)                u8MasterBusIdx = 0xFFU;
	.d2line		3260
.Llo410:
	diab.li		r0,255		# u8MasterBusIdx=r0
# #if  (PWM_EMIOS_16_BITS_VARIANT == STD_OFF)
#     VAR(Pwm_uint64,                         AUTOMATIC)                u64Temp = 0U;
# #endif
# 
#     /** @violates @ref Pwm_eMIOS_C_REF_11 Array indexing shall be the only allowed form of pointer arithmetic.*/
#     peMiosChannelConfig = &(*peMiosIpConfig->pChannelsConfig)[u8IdxChannelConfig];
	.d2line		3266
.Llo411:
	rlwinm		r0,r31,0,24,31		# u8MasterBusIdx=r0 u8IdxChannelConfig=r31
.Llo437:
	lwz		r29,4(r4)		# peMiosChannelConfig=r29 peMiosIpConfig=r4
.Llo413:
	rlwinm		r3,r0,5,0,26		# u8MasterBusIdx=r0
.Llo406:
	se_slwi		r0,3		# u8MasterBusIdx=r0 u8MasterBusIdx=r0
	subf		r0,r0,r3		# u8MasterBusIdx=r0 u8MasterBusIdx=r0
	se_add		r0,r29		# u8MasterBusIdx=r0 u8MasterBusIdx=r0 peMiosChannelConfig=r29
.Llo438:
	mr		r29,r0		# peMiosChannelConfig=r29 peMiosChannelConfig=r0
#     
#     u8mIdx  = (uint8)EMIOS_MODULE_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		3268
	lbz		r27,12(r29)		# peMiosChannelConfig=r29
	rlwinm		r28,r27,27,29,31
.Llo416:
	mr		r28,r28		# u8mIdx=r28 u8mIdx=r28
#     u8chIdx = (uint8)EMIOS_CHANNEL_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);    
	.d2line		3269
	rlwinm		r27,r27,0,27,31
.Llo429:
	mr		r27,r27		# u8chIdx=r27 u8chIdx=r27
#     u32CtrlRegVal = peMiosChannelConfig->u32ControlValue;
	.d2line		3270
	lwz		r26,16(r29)		# peMiosChannelConfig=r29
.Llo431:
	mr		r26,r26		# u32CtrlRegVal=r26 u32CtrlRegVal=r26
# 
#     SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_05();
	.d2line		3272
	bl		SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_05
#     /* Get new period from new master bus */
#     u8MasterBusIdx = (uint8)Pwm_eMios_GetMasterBus(u8mIdx, u8chIdx, u32Bus);
	.d2line		3274
.Llo409:
	mr		r3,r28		# u8mIdx=r3 u8mIdx=r28
	mr		r4,r27		# u8chIdx=r4 u8chIdx=r27
	mr		r5,r30		# u32Bus=r5 u32Bus=r30
	bl		Pwm_eMios_GetMasterBus
.Llo439:
	mr		r0,r3		# u8MasterBusIdx=r0 u8MasterBusIdx=r3
#     nPeriod = Pwm_eMios_aChannelPeriod[u8MasterBusIdx];
	.d2line		3275
	lis		r3,Pwm_eMios_aChannelPeriod@ha
.Llo440:
	e_add16i		r3,r3,Pwm_eMios_aChannelPeriod@l
.Llo441:
	rlwinm		r0,r0,1,23,30		# u8MasterBusIdx=r0 u8MasterBusIdx=r0
.Llo442:
	lhzx		r4,r3,r0		# peMiosIpConfig=r4
.Llo414:
	mr		r4,r4		# nPeriod=r4 nPeriod=r4
#     if((boolean)TRUE == (peMiosChannelConfig->bPwmOffsetTriggerDelay))
	.d2line		3276
	lbz		r0,23(r29)		# u8MasterBusIdx=r0 peMiosChannelConfig=r29
.Llo443:
	se_cmpi		r0,1		# u8MasterBusIdx=r0
	bc		0,2,.L618	# ne
#     {
# #if  (PWM_EMIOS_16_BITS_VARIANT == STD_ON)
#         nOffset = (((peMiosChannelConfig->nPwmOffset) * nPeriod) / Pwm_eMios_aChannelPeriod[peMiosChannelConfig->u8HwChannel]);
	.d2line		3279
.Llo407:
	lhz		r5,20(r29)		# nOffset=r5 peMiosChannelConfig=r29
.Llo432:
	rlwinm		r0,r4,0,16,31		# u8MasterBusIdx=r0 nPeriod=r4
.Llo444:
	mullw		r5,r5,r0		# nOffset=r5 nOffset=r5 u8MasterBusIdx=r0
	lis		r3,Pwm_eMios_aChannelPeriod@ha
	e_add16i		r3,r3,Pwm_eMios_aChannelPeriod@l
	lbz		r0,12(r29)		# u8MasterBusIdx=r0 peMiosChannelConfig=r29
	rlwinm		r0,r0,1,23,30		# u8MasterBusIdx=r0 u8MasterBusIdx=r0
	lhzx		r0,r3,r0		# u8MasterBusIdx=r0
	divw		r5,r5,r0		# nOffset=r5 nOffset=r5 u8MasterBusIdx=r0
	mr		r0,r5		# nOffset=r0 nOffset=r5
# #if (PWM_FEATURE_OPWMT == STD_ON)
#         nTrigger = Pwm_eMios_aTriggerDelay[u8IdxChannelConfig];
#         nTrigger = ((nTrigger * nPeriod) / Pwm_eMios_aChannelPeriod[peMiosChannelConfig->u8HwChannel]);
# #endif
# #else
#         u64Temp = ((Pwm_uint64)peMiosChannelConfig->nPwmOffset * (Pwm_uint64)nPeriod);
#         nOffset = (Pwm_PeriodType)Pwm_eMios_Div64((Pwm_uint64)u64Temp, (Pwm_uint64)Pwm_eMios_aChannelPeriod[peMiosChannelConfig->u8HwChannel]);
# #if (PWM_FEATURE_OPWMT == STD_ON)
#         nTrigger = Pwm_eMios_aTriggerDelay[u8IdxChannelConfig];
#         u64Temp = ((Pwm_uint64)nTrigger * (Pwm_uint64)nPeriod);
#         nTrigger = (Pwm_PeriodType)Pwm_eMios_Div64((Pwm_uint64)u64Temp, (Pwm_uint64)Pwm_eMios_aChannelPeriod[peMiosChannelConfig->u8HwChannel]);
# #endif
# #endif
#         /* update the channel period with the period of the new selected counter bus */
#         Pwm_eMios_aChannelOffset[u8IdxChannelConfig] = nOffset;
	.d2line		3294
.Llo445:
	lis		r3,Pwm_eMios_aChannelOffset@ha
	e_add16i		r3,r3,Pwm_eMios_aChannelOffset@l
	rlwinm		r0,r31,1,23,30		# u8MasterBusIdx=r0 u8IdxChannelConfig=r31
	sthx		r5,r3,r0		# nOffset=r5
.L618:
# #if (PWM_FEATURE_OPWMT == STD_ON)
#         /* Update new trigger delay */
#         Pwm_eMios_aTriggerDelay[u8IdxChannelConfig] = nTrigger;
# #endif
#     }
# 
#     /* set the new counter bus */
#     if (PWM_BUS_DIVERSE_U32 == u32Bus)
	.d2line		3302
.Llo433:
	cmpi		0,0,r30,512		# u32Bus=r30
	bc		0,2,.L619	# ne
#     {
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_RMW32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_BSL_MASK_U32, CCR_BSL_BUS_DIVERSE_U32 << CCR_BSL_SHIFT);
	.d2line		3306
.Llo417:
	lis		r3,EMIOS_BASE_ADDR32@ha
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l
.Llo418:
	rlwinm		r28,r28,2,22,29		# u8mIdx=r28 u8mIdx=r28
.Llo419:
	lwzux		r0,r3,r28		# u8MasterBusIdx=r0
.Llo446:
	rlwinm		r3,r27,5,19,26		# u8chIdx=r27
	add		r27,r0,r3		# u8chIdx=r27 u8MasterBusIdx=r0
	lwz		r0,44(r27)		# u8MasterBusIdx=r0 u8chIdx=r27
	rlwinm		r0,r0,0,23,20		# u8MasterBusIdx=r0 u8MasterBusIdx=r0
	.diab.bseti		r0,22		# u8MasterBusIdx=r0
	lis		r5,EMIOS_BASE_ADDR32@ha		# nOffset=r5
.Llo434:
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# nOffset=r5 nOffset=r5
	lwzx		r5,r5,r28		# nOffset=r5 nOffset=r5
	se_add		r3,r5		# nOffset=r5
	stw		r0,44(r3)		# u8MasterBusIdx=r0
	b		.L620
.L619:
#     }
#     else if (PWM_BUS_A_U32 == u32Bus)
	.d2line		3308
.Llo420:
	se_cmpi		r30,0		# u32Bus=r30
	bc		0,2,.L621	# ne
#     {
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_BSL_MASK_U32 );
	.d2line		3312
.Llo421:
	lis		r3,EMIOS_BASE_ADDR32@ha
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l
.Llo422:
	rlwinm		r28,r28,2,22,29		# u8mIdx=r28 u8mIdx=r28
.Llo423:
	lwzx		r0,r3,r28		# u8MasterBusIdx=r0
.Llo430:
	rlwinm		r27,r27,5,19,26		# u8chIdx=r27 u8chIdx=r27
	se_add		r27,r0		# u8chIdx=r27 u8chIdx=r27 u8MasterBusIdx=r0
	lwz		r0,44(r27)		# u8MasterBusIdx=r0 u8chIdx=r27
	rlwinm		r0,r0,0,23,20		# u8MasterBusIdx=r0 u8MasterBusIdx=r0
	stw		r0,44(r27)		# u8chIdx=r27 u8MasterBusIdx=r0
	b		.L620
.L621:
#     }
#     else if (PWM_BUS_F_U32 == u32Bus)
	.d2line		3314
.Llo424:
	cmpi		0,0,r30,1024		# u32Bus=r30
	bc		0,2,.L620	# ne
#     {
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#         REG_RMW32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_BSL_MASK_U32, CCR_BSL_BUS_F_U32 << CCR_BSL_SHIFT);
	.d2line		3318
.Llo412:
	lis		r3,EMIOS_BASE_ADDR32@ha
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l
.Llo425:
	rlwinm		r28,r28,2,22,29		# u8mIdx=r28 u8mIdx=r28
.Llo426:
	lwzux		r0,r3,r28		# u8MasterBusIdx=r0
.Llo447:
	rlwinm		r3,r27,5,19,26		# u8chIdx=r27
	add		r27,r0,r3		# u8chIdx=r27 u8MasterBusIdx=r0
	lwz		r0,44(r27)		# u8MasterBusIdx=r0 u8chIdx=r27
	rlwinm		r0,r0,0,23,20		# u8MasterBusIdx=r0 u8MasterBusIdx=r0
	.diab.bseti		r0,21		# u8MasterBusIdx=r0
	lis		r5,EMIOS_BASE_ADDR32@ha		# nOffset=r5
.Llo435:
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l		# nOffset=r5 nOffset=r5
	lwzx		r5,r5,r28		# nOffset=r5 nOffset=r5
	se_add		r3,r5		# nOffset=r5
	stw		r0,44(r3)		# u8MasterBusIdx=r0
.L620:
#     }
#     else
#     {
#         /* This for Misra complicated */
#     }
#     /** @violates @ref Pwm_eMIOS_C_REF_3 Non-constant argument to function */
#     /* update dutycycle to the configured default value */
#     switch((u32CtrlRegVal & CCR_MODE_MASK_U32))
	.d2line		3326
.Llo427:
	rlwinm		r26,r26,0,25,31		# u32CtrlRegVal=r26 u32CtrlRegVal=r26
	cmpi		0,0,r26,96		# u32CtrlRegVal=r26
	bc		0,2,.L626	# ne
#     {
# #if (PWM_FEATURE_OPWMCB == STD_ON)   
#     case PWM_MODE_OPWMCB_LEAD_DEADTIME_U32:
#     case PWM_MODE_OPWMCB_TRAIL_DEADTIME_U32:
#         /* Update new period */
#         Pwm_eMios_aChannelPeriod[peMiosChannelConfig->u8HwChannel] = nPeriod;
#         Pwm_eMios_SetRegs_OPWMCB_mode(u8IdxChannelConfig, nPeriod, peMiosChannelConfig->u16PwmDefaultDutyCycle, peMiosChannelConfig);
#         break;
# #endif
# #if (PWM_FEATURE_DAOC == STD_ON)   
#     case PWM_MODE_DAOC_U32:
#         /* Update new modulo */
#         Pwm_DAOC_aChannelModulo[peMiosChannelConfig->u8HwChannel] = nPeriod;
#         nPeriod = Pwm_eMios_aChannelPeriod[peMiosChannelConfig->u8HwChannel];
#         Pwm_eMios_SetRegs_DAOC_mode(u8IdxChannelConfig, nPeriod, peMiosChannelConfig->u16PwmDefaultDutyCycle, peMiosChannelConfig);
#         break;
# #endif
# #if (PWM_FEATURE_OPWMT == STD_ON)   
#     case PWM_MODE_OPWMT_U32:
#         /* Update new period */
#         Pwm_eMios_aChannelPeriod[peMiosChannelConfig->u8HwChannel] = nPeriod;
#         Pwm_eMios_SetRegs_OPWMT_mode(u8IdxChannelConfig, nPeriod, peMiosChannelConfig->u16PwmDefaultDutyCycle, peMiosChannelConfig);
#         break;
# #endif
#     case PWM_MODE_OPWMB_U32:
#         /* Update new period */
#         Pwm_eMios_aChannelPeriod[peMiosChannelConfig->u8HwChannel] = nPeriod;
	.d2line		3353
.Llo428:
	lis		r3,Pwm_eMios_aChannelPeriod@ha		# u8IdxChannelConfig=r3
	e_add16i		r3,r3,Pwm_eMios_aChannelPeriod@l		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	lbz		r0,12(r29)		# u8MasterBusIdx=r0 peMiosChannelConfig=r29
.Llo448:
	rlwinm		r0,r0,1,23,30		# u8MasterBusIdx=r0 u8MasterBusIdx=r0
.Llo449:
	sthx		r4,r3,r0		# u8IdxChannelConfig=r3 nPeriod=r4
#         Pwm_eMios_SetRegs_OPWMB_mode(u8IdxChannelConfig, nPeriod, peMiosChannelConfig->u16PwmDefaultDutyCycle, peMiosChannelConfig);
	.d2line		3354
	lhz		r5,8(r29)		# nOffset=r5 peMiosChannelConfig=r29
	mr		r3,r31		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r31
	mr		r4,r4		# nPeriod=r4 nPeriod=r4
.Llo415:
	mr		r6,r29		# peMiosChannelConfig=r6 peMiosChannelConfig=r29
	bl		Pwm_eMios_SetRegs_OPWMB_mode
.L626:
#         break;
# #if (PWM_FEATURE_OPWM == STD_ON) 
#     case PWM_MODE_OPWM_U32:
#         /* store the nPeriod that the master UC is using */
#         Pwm_eMios_aChannelPeriod[u8MasterBusIdx] = nPeriod;
#         /* store the offset channel that the master UC is using */
#         Pwm_eMios_aChannelOffset[u8IdxChannelConfig] = peMiosChannelConfig->nPwmOffset;
#         Pwm_eMios_SetRegs_OPWM_mode(u8IdxChannelConfig, nPeriod, peMiosChannelConfig->u16PwmDefaultDutyCycle, peMiosChannelConfig);
#         break;
# #endif /*PWM_FEATURE_OPWM*/    
#     default:
#         break;
#     }
#     SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_05();
	.d2line		3368
.Llo408:
	bl		SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_05
# }
	.d2line		3369
	.d2epilogue_begin
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)		# u8MasterBusIdx=r0
	mtspr		lr,r0		# u8MasterBusIdx=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L921:
	.type		Pwm_eMios_SetCounterBus,@function
	.size		Pwm_eMios_SetCounterBus,.-Pwm_eMios_SetCounterBus
# Number of nodes = 246

# Allocations for Pwm_eMios_SetCounterBus
#	?a4		u8IdxChannelConfig
#	?a5		peMiosIpConfig
#	?a6		u32Bus
#	?a7		$$150
#	?a8		$$137
#	?a9		peMiosChannelConfig
#	?a10		nPeriod
#	?a11		u8mIdx
#	?a12		u8chIdx
#	?a13		u32CtrlRegVal
#	?a14		nOffset
#	?a15		u8MasterBusIdx
# FUNC(void, PWM_CODE) Pwm_eMios_SetChannelOutput
	.align		2
	.section	.text_vle
        .d2line         3392,22
#$$ld
.L942:

#$$bf	Pwm_eMios_SetChannelOutput,interprocedural,rasave,nostackparams
	.globl		Pwm_eMios_SetChannelOutput
	.d2_cfa_start __cie
Pwm_eMios_SetChannelOutput:
.Llo450:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	mr		r4,r4		# peMiosIpConfig=r4 peMiosIpConfig=r4
	mr		r31,r5		# eState=r31 eState=r5
	.d2prologue_end
# (
#     VAR(uint8,                           AUTOMATIC)                 u8IdxChannelConfig,
#     CONSTP2CONST(Pwm_eMios_IpConfigType, AUTOMATIC, PWM_APPL_CONST) peMiosIpConfig,
#     VAR(Pwm_StateType,                   AUTOMATIC)                 eState
# )
# {
#     /* Pwm channel Emios specific parameters from config structure */
#     P2CONST(Pwm_eMios_ChannelConfigType,AUTOMATIC,PWM_APPL_CONST) peMiosChannelConfig;
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC) u8mIdx;  /*  assigned eMIOS HW module index */
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC) u8chIdx;  /*  assigned eMIOS HW channel index */
#     VAR(Pwm_eMios_ControlType, AUTOMATIC) u32CtrlRegVal;
#     
#     /** @violates @ref Pwm_eMIOS_C_REF_11 Array indexing shall be the only allowed form of pointer arithmetic.*/    
#     peMiosChannelConfig = &(*peMiosIpConfig->pChannelsConfig)[u8IdxChannelConfig];
	.d2line		3406
	rlwinm		r3,r3,0,24,31		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	lwz		r0,4(r4)		# peMiosIpConfig=r4
	rlwinm		r4,r3,5,0,26		# peMiosIpConfig=r4 u8IdxChannelConfig=r3
	se_slwi		r3,3		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	subf		r3,r3,r4		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3 peMiosIpConfig=r4
	se_add		r0,r3		# u8IdxChannelConfig=r3
.Llo457:
	mr		r3,r0		# peMiosChannelConfig=r3 peMiosChannelConfig=r0
#     
#     u8mIdx  = (uint8)EMIOS_MODULE_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		3408
.Llo451:
	lbz		r29,12(r3)		# peMiosChannelConfig=r3
	rlwinm		r30,r29,27,29,31
.Llo465:
	mr		r30,r30		# u8mIdx=r30 u8mIdx=r30
#     u8chIdx = (uint8)EMIOS_CHANNEL_INDEX_U8((uint8)peMiosChannelConfig->u8HwChannel);
	.d2line		3409
	rlwinm		r29,r29,0,27,31
.Llo474:
	mr		r29,r29		# u8chIdx=r29 u8chIdx=r29
#     /* save current channel control register config value in local variable */
#     u32CtrlRegVal = peMiosChannelConfig->u32ControlValue;
	.d2line		3411
	lwz		r28,16(r3)		# u32CtrlRegVal=r28 peMiosChannelConfig=r3
	mr		r28,r28		# u32CtrlRegVal=r28 u32CtrlRegVal=r28
# 
#     SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_06();
	.d2line		3413
	bl		SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_06
#     if ((PWM_MODE_OPWFMB_U32 == ((uint32)u32CtrlRegVal & CCR_MODE_MASK_U32))||
	.d2line		3414
.Llo452:
	rlwinm		r0,r28,0,25,31		# u32CtrlRegVal=r28
	cmpi		0,0,r0,88
	bc		1,2,.L640	# eq
.Llo453:
	rlwinm		r28,r28,0,25,31		# u32CtrlRegVal=r28 u32CtrlRegVal=r28
	se_cmpi		r28,24		# u32CtrlRegVal=r28
	bc		0,2,.L634	# ne
.L640:
#         (PWM_MODE_OPWFM_U32 == ((uint32)u32CtrlRegVal & CCR_MODE_MASK_U32)))
#     {
#         if (PWM_ACTIVE == eState) /* force match B */
	.d2line		3417
	se_cmpi		r31,0		# eState=r31
	bc		0,2,.L635	# ne
#         {
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_SET32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FORCMB_MASK_U32 );
	.d2line		3421
.Llo454:
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
.Llo458:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
.Llo466:
	rlwinm		r30,r30,2,22,29		# u8mIdx=r30 u8mIdx=r30
.Llo467:
	lwzx		r0,r3,r30		# peMiosChannelConfig=r3
.Llo475:
	rlwinm		r29,r29,5,19,26		# u8chIdx=r29 u8chIdx=r29
	se_add		r29,r0		# u8chIdx=r29 u8chIdx=r29
	lwz		r0,44(r29)		# u8chIdx=r29
	.diab.bseti		r0,19
	stw		r0,44(r29)		# u8chIdx=r29
	b		.L637
.L635:
#         }
#         else /* force match A */
#         {
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_SET32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FORCMA_MASK_U32 );
	.d2line		3427
.Llo459:
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
.Llo460:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
.Llo468:
	rlwinm		r30,r30,2,22,29		# u8mIdx=r30 u8mIdx=r30
.Llo469:
	lwzx		r0,r3,r30		# peMiosChannelConfig=r3
.Llo476:
	rlwinm		r29,r29,5,19,26		# u8chIdx=r29 u8chIdx=r29
	se_add		r29,r0		# u8chIdx=r29 u8chIdx=r29
	lwz		r0,44(r29)		# u8chIdx=r29
	.diab.bseti		r0,18
	stw		r0,44(r29)		# u8chIdx=r29
	b		.L637
.L634:
#         }
#     }
#     else /* OPWMB / OPWMT / OPWM */
#     {
#         if (PWM_ACTIVE == eState) /* force match A */
	.d2line		3432
.Llo455:
	se_cmpi		r31,0		# eState=r31
	bc		0,2,.L638	# ne
#         {
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_SET32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FORCMA_MASK_U32 );
	.d2line		3436
.Llo456:
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
.Llo461:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
.Llo470:
	rlwinm		r30,r30,2,22,29		# u8mIdx=r30 u8mIdx=r30
.Llo471:
	lwzx		r0,r3,r30		# peMiosChannelConfig=r3
.Llo477:
	rlwinm		r29,r29,5,19,26		# u8chIdx=r29 u8chIdx=r29
	se_add		r29,r0		# u8chIdx=r29 u8chIdx=r29
	lwz		r0,44(r29)		# u8chIdx=r29
	.diab.bseti		r0,18
	stw		r0,44(r29)		# u8chIdx=r29
	b		.L637
.L638:
#         }
#         else /* force match B */
#         {
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             REG_BIT_SET32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx), CCR_FORCMB_MASK_U32 );
	.d2line		3442
.Llo462:
	lis		r3,EMIOS_BASE_ADDR32@ha		# peMiosChannelConfig=r3
.Llo463:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# peMiosChannelConfig=r3 peMiosChannelConfig=r3
.Llo472:
	rlwinm		r30,r30,2,22,29		# u8mIdx=r30 u8mIdx=r30
.Llo473:
	lwzx		r0,r3,r30		# peMiosChannelConfig=r3
.Llo478:
	rlwinm		r29,r29,5,19,26		# u8chIdx=r29 u8chIdx=r29
	se_add		r29,r0		# u8chIdx=r29 u8chIdx=r29
	lwz		r0,44(r29)		# u8chIdx=r29
	.diab.bseti		r0,19
	stw		r0,44(r29)		# u8chIdx=r29
.L637:
#         }
#     }
#     SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_06();
	.d2line		3445
.Llo464:
	bl		SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_06
# }
	.d2line		3446
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
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
.L943:
	.type		Pwm_eMios_SetChannelOutput,@function
	.size		Pwm_eMios_SetChannelOutput,.-Pwm_eMios_SetChannelOutput
# Number of nodes = 134

# Allocations for Pwm_eMios_SetChannelOutput
#	?a4		u8IdxChannelConfig
#	?a5		peMiosIpConfig
#	?a6		eState
#	?a7		$$151
#	?a8		$$141
#	?a9		$$140
#	?a10		$$139
#	?a11		$$138
#	?a12		peMiosChannelConfig
#	?a13		u8mIdx
#	?a14		u8chIdx
#	?a15		u32CtrlRegVal
# FUNC(void, PWM_CODE) Pwm_eMios_ProcessCommonInterrupt
	.align		2
	.section	.text_vle
        .d2line         3465,22
#$$ld
.L960:

#$$bf	Pwm_eMios_ProcessCommonInterrupt,interprocedural,rasave,nostackparams
	.globl		Pwm_eMios_ProcessCommonInterrupt
	.d2_cfa_start __cie
Pwm_eMios_ProcessCommonInterrupt:
.Llo479:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# u8HwChannel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# u8HwChannel=r0 u8HwChannel=r3
	.d2prologue_end
# (
#     VAR(Pwm_ChannelType,                 AUTOMATIC)                 u8HwChannel
# )
# {
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC)    u8mIdx;  /*  assigned eMIOS HW module index */
#     VAR(Pwm_eMios_ChannelType, AUTOMATIC)    u8chIdx;  /*  assigned eMIOS HW channel index */
#     VAR (uint32, AUTOMATIC)                  u32TempStatus;
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#     VAR(uint8, AUTOMATIC) u8Notification;
# #endif      /* PWM_NOTIFICATION_SUPPORTED == STD_ON */
#     
# #if (PWM_FEATURE_DAOC == STD_ON)
#     VAR(uint32, AUTOMATIC) u32ChMode;   /* channel mode */
#     VAR(uint32, AUTOMATIC) u32EdpolValue;   /* edge polarity value */
#     VAR(uint32, AUTOMATIC) u32UcoutValue;   /* ucout bit value */
#     VAR(uint32, AUTOMATIC) u32RegAValue;   /* store the calculated register A value */
#     VAR(uint32, AUTOMATIC) u32RegBValue;   /* store the calculated register B value */
#     VAR(uint32, AUTOMATIC) u32RegDuty;   /* store the duty is apply to register */
# #endif      /* PWM_FEATURE_DAOC == STD_ON */
# 
#     /* store the associated hw channel ID */
#     u8mIdx  = (uint8)EMIOS_MODULE_INDEX_U8(u8HwChannel);
	.d2line		3487
.Llo480:
	rlwinm		r7,r0,27,29,31		# u8mIdx=r7 u8HwChannel=r0
.Llo481:
	mr		r7,r7		# u8mIdx=r7 u8mIdx=r7
#     u8chIdx = (uint8)EMIOS_CHANNEL_INDEX_U8(u8HwChannel);
	.d2line		3488
	rlwinm		r31,r0,0,27,31		# u8chIdx=r31 u8HwChannel=r0
	mr		r31,r31		# u8chIdx=r31 u8chIdx=r31
# 
#     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#     u32TempStatus = ((REG_READ32(EMIOS_CSR_ADDR32(u8mIdx, u8chIdx))) & CSR_FLAG_MASK_U32);
	.d2line		3492
	lis		r4,EMIOS_BASE_ADDR32@ha
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l
	rlwinm		r7,r7,2,22,29		# u8mIdx=r7 u8mIdx=r7
.Llo483:
	lwzx		r3,r4,r7
	rlwinm		r31,r31,5,19,26		# u8chIdx=r31 u8chIdx=r31
	se_add		r3,r31		# u8chIdx=r31
	lwz		r5,48(r3)
	rlwinm		r5,r5,0,31,31
.Llo485:
	mr		r5,r5		# u32TempStatus=r5 u32TempStatus=r5
# 
#     /* clear unified channel interrupt flag */
#     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#     REG_WRITE32( EMIOS_CSR_ADDR32(u8mIdx, u8chIdx), CSR_FLAG_BIT_U32 );
	.d2line		3497
	diab.li		r6,1
	lwzx		r3,r4,r7
	se_add		r3,r31		# u8chIdx=r31
	stw		r6,48(r3)
# 
#     /* get logical channel ID */
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#     u8Notification = Pwm_eMios_aChannelNotifType[u8HwChannel];
	.d2line		3501
	lis		r3,Pwm_eMios_aChannelNotifType@ha
	e_add16i		r3,r3,Pwm_eMios_aChannelNotifType@l
	rlwinm		r6,r0,0,24,31		# u8HwChannel=r0
	lbzx		r3,r3,r6
.Llo487:
	mr		r3,r3		# u8Notification=r3 u8Notification=r3
# #endif    /* PWM_NOTIFICATION_SUPPORTED == STD_ON */
#     /* Call Common Interrupt Routine */
#     if (
	.d2line		3504
	lwzx		r4,r4,r7
	se_add		r31,r4		# u8chIdx=r31 u8chIdx=r31
	lwz		r4,44(r31)		# u8chIdx=r31
	e_and2is.		r4,258
	diab.li		r6,131072
	se_cmpl		r4,r6
	bc		0,2,.L646	# ne
#         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */    
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#          (REG_READ32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx)) & (CCR_DMA_MASK_U32 | CCR_FEN_MASK_U32)) ==
#          ((CCR_DMA_ASSIGN_INT_U32 << CCR_DMA_SHIFT) | ( CCR_FEN_ENABLE_U32 << CCR_FEN_SHIFT ))
#        )
#     {
#         if(((uint32)0x0U) != u32TempStatus)
	.d2line		3511
.Llo484:
	se_cmpi		r5,0		# u32TempStatus=r5
	bc		1,2,.L646	# eq
#         {
# #if (PWM_FEATURE_DAOC == STD_ON)
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             u32ChMode = ( REG_READ32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx)) & CCR_MODE_MASK_U32 );
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             u32EdpolValue = ( REG_READ32(EMIOS_CCR_ADDR32(u8mIdx, u8chIdx)) & CCR_EDPOL_MASK_U32 );
#             /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#             /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#             u32UcoutValue = ( REG_READ32(EMIOS_CSR_ADDR32(u8mIdx, u8chIdx)) & CSR_UCOUT_MASK_U32 );
#             
#             if (PWM_MODE_DAOC_U32 == u32ChMode )
#             {
#                 /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 /* @violates @ref Pwm_eMIOS_C_REF_6 Cast of complex integer expression to larger type */
#                 u32RegDuty = (uint32)(Pwm_eMios_aChannelPeriod[u8HwChannel] - Pwm_eMios_aDaocChannelDuty[u8HwChannel]);
#                 /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 u32RegAValue = (((u32RegDuty) + REG_READ32(EMIOS_CBDR_ADDR32(u8mIdx, (uint32)u8chIdx))) % Pwm_DAOC_aChannelModulo[u8HwChannel]);
#                 if (u32RegAValue != (uint32)0U)
#                 {
#                     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                     REG_WRITE32( EMIOS_CADR_ADDR32(u8mIdx, (uint32)u8chIdx) ,  u32RegAValue);
#                 }
#                 else
#                 {
#                     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                     REG_WRITE32(EMIOS_CADR_ADDR32(u8mIdx, (uint32)u8chIdx),Pwm_DAOC_aChannelModulo[u8HwChannel]);
#                 }
#                 /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 u32RegDuty = REG_READ32(EMIOS_CBDR_ADDR32(u8mIdx, (uint32)u8chIdx));
#                 /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                 /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                 u32RegBValue = ((Pwm_eMios_aChannelPeriod[u8HwChannel]+u32RegDuty)%Pwm_DAOC_aChannelModulo[u8HwChannel]);
#                 if (u32RegBValue != (uint32)0U)
#                 {
#                     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                     REG_WRITE32( EMIOS_CBDR_ADDR32(u8mIdx, (uint32)u8chIdx) ,  u32RegBValue);
#                 }
#                 else
#                 {
#                     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer  */
#                     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                     REG_WRITE32(EMIOS_CBDR_ADDR32(u8mIdx, (uint32)u8chIdx),Pwm_DAOC_aChannelModulo[u8HwChannel]);
#                 }
#             }
#             else if(CCR_MODE_DAOC_BOTH_U32 == u32ChMode )
#             {
#                 if( u32EdpolValue != (u32UcoutValue<<6) )
#                 {
#                     u32RegAValue = ((Pwm_eMios_aChannelPeriod[u8HwChannel] + 
#                         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                     REG_READ32( EMIOS_CADR_ADDR32(u8mIdx, (uint32)u8chIdx)))% Pwm_DAOC_aChannelModulo[u8HwChannel]);
#                     if (u32RegAValue != (uint32)0U)
#                     {
#                         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                         REG_WRITE32( EMIOS_CADR_ADDR32(u8mIdx, (uint32)u8chIdx) , u32RegAValue);
#                     } else
#                     {
#                         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                         REG_WRITE32(EMIOS_CADR_ADDR32(u8mIdx, (uint32)u8chIdx), Pwm_DAOC_aChannelModulo[u8HwChannel]);
#                     }
#                 }
#                 else
#                 {
#                     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                     u32RegBValue = ((Pwm_eMios_aDaocChannelDuty[u8HwChannel] + \
#                                     REG_READ32(EMIOS_CADR_ADDR32(u8mIdx, (uint32)u8chIdx)))% Pwm_DAOC_aChannelModulo[u8HwChannel]);
#                     if (u32RegBValue != (uint32)0U)
#                     {
#                         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                         REG_WRITE32( EMIOS_CBDR_ADDR32(u8mIdx, (uint32)u8chIdx), u32RegBValue);
#                     }
#                     else
#                     {
#                         /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#                         /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#                         REG_WRITE32(EMIOS_CBDR_ADDR32(u8mIdx, (uint32)u8chIdx),Pwm_DAOC_aChannelModulo[u8HwChannel]);
#                     }
#                 }
#             }
#             else
#             {
#             /* For Misra Compliance */
#             }
# #endif
# #if ((PWM_NOTIFICATION_SUPPORTED == STD_ON) && (PWM_FEATURE_DAOC == STD_ON))
#             /* Call Ipw interrupt handler at valid edge match*/
#             if (CCR_MODE_DAOC_BOTH_U32 == u32ChMode) 
#             {
#                 if( Pwm_eMios_aDaocChannelDuty[u8HwChannel] != 0x0U )
#                 {
#                     if((uint8)0U != u8Notification)
#                     {
#                         /**  @violates @ref Pwm_eMIOS_C_REF_11 pointer arithmetic other than array indexing used  */
#                         Pwm_Ipw_eMiosChannelNotification(u8HwChannel);
#                     }
#                 }
#             }
#             else if (PWM_MODE_DAOC_U32 == u32ChMode)
#             {
#                 if( Pwm_eMios_aDaocChannelDuty[u8HwChannel] != 0x0U )
#                 {
#                     if((uint8)0U != u8Notification)
#                     {
#                         if( u32EdpolValue != (u32UcoutValue<<6) )
#                         {
#                             /**  @violates @ref Pwm_eMIOS_C_REF_11 pointer arithmetic other than array indexing used  */
#                             Pwm_Ipw_eMiosChannelNotification(u8HwChannel);
#                         }
#                     }
#                 }
#             }
#             else
#             {
# #endif  /* PWM_NOTIFICATION_SUPPORTED == STD_ON && PWM_FEATURE_DAOC == STD_ON */
# #if (PWM_NOTIFICATION_SUPPORTED == STD_ON)
#                 if ( (uint8)0U != u8Notification )
	.d2line		3640
.Llo486:
	rlwinm		r3,r3,0,24,31		# u8Notification=r3 u8Notification=r3
	se_cmpi		r3,0		# u8Notification=r3
	bc		1,2,.L646	# eq
#                 {
#             /* Note: For PWM, interrupts are not enabled if the u8Notification function is a NULL_PTR. 
#             * Therefore the code does not check for NULL_PTR before calling the u8Notification function */
#                     /** @violates @ref Pwm_eMIOS_C_REF_11 pointer arithmetic other than array indexing used */
#                     Pwm_Ipw_eMiosChannelNotification(u8HwChannel);
	.d2line		3645
.Llo488:
	rlwinm		r3,r0,0,24,31		# u8Notification=r3 u8HwChannel=r0
	bl		Pwm_Notification
.L646:
#                 }
# #endif /* PWM_NOTIFICATION_SUPPORTED == STD_ON */
# #if ((PWM_NOTIFICATION_SUPPORTED == STD_ON) && (PWM_FEATURE_DAOC == STD_ON))
#             }
# #endif /* PWM_NOTIFICATION_SUPPORTED == STD_ON && PWM_FEATURE_DAOC == STD_ON */
#         }
#     }
# }
	.d2line		3653
	.d2epilogue_begin
.Llo482:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u8HwChannel=r0
	mtspr		lr,r0		# u8HwChannel=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L961:
	.type		Pwm_eMios_ProcessCommonInterrupt,@function
	.size		Pwm_eMios_ProcessCommonInterrupt,.-Pwm_eMios_ProcessCommonInterrupt
# Number of nodes = 94

# Allocations for Pwm_eMios_ProcessCommonInterrupt
#	?a4		u8HwChannel
#	?a5		u8mIdx
#	?a6		u8chIdx
#	?a7		u32TempStatus
#	?a8		u8Notification
# FUNC(uint16, PWM_CODE)  Pwm_eMios_GetChannelState
	.align		2
	.section	.text_vle
        .d2line         3701,25
#$$ld
.L975:

#$$bf	Pwm_eMios_GetChannelState,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		Pwm_eMios_GetChannelState
	.d2_cfa_start __cie
Pwm_eMios_GetChannelState:
.Llo489:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	.d2prologue_end
# (
#     VAR(uint8,                           AUTOMATIC)                 u8IdxChannelConfig
# )
# {
#     
#     return Pwm_eMios_aChannelDuty[u8IdxChannelConfig];
	.d2line		3707
	lis		r4,Pwm_eMios_aChannelDuty@ha
	e_add16i		r4,r4,Pwm_eMios_aChannelDuty@l
	rlwinm		r3,r3,1,23,30		# u8IdxChannelConfig=r3 u8IdxChannelConfig=r3
	lhzx		r3,r4,r3		# u8IdxChannelConfig=r3
# }
	.d2line		3708
	.d2epilogue_begin
.Llo490:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L976:
	.type		Pwm_eMios_GetChannelState,@function
	.size		Pwm_eMios_GetChannelState,.-Pwm_eMios_GetChannelState
# Number of nodes = 9

# Allocations for Pwm_eMios_GetChannelState
#	?a4		u8IdxChannelConfig
# FUNC(void, PWM_CODE) Pwm_eMios_BufferTransferEnableDisable
	.align		2
	.section	.text_vle
        .d2line         3723,22
#$$ld
.L981:

#$$bf	Pwm_eMios_BufferTransferEnableDisable,interprocedural,rasave,nostackparams
	.globl		Pwm_eMios_BufferTransferEnableDisable
	.d2_cfa_start __cie
Pwm_eMios_BufferTransferEnableDisable:
.Llo491:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u8ModuleIndex=r31 u8ModuleIndex=r3
	mr		r30,r4		# u32ChannelMask=r30 u32ChannelMask=r4
	.d2prologue_end
# (
#     VAR(uint8,                           AUTOMATIC)                 u8ModuleIndex,
#     VAR(uint32,                          AUTOMATIC)                 u32ChannelMask
# )
# {
#     SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_08();
	.d2line		3729
	bl		SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_08
#     /** @violates @ref Pwm_eMIOS_C_REF_7 Cast from unsigned long to pointer */
#     /** @violates @ref Pwm_eMIOS_C_REF_16 Cast between a pointer type and an integral type */
#     REG_RMW32(EMIOS_OUDR_ADDR32(u8ModuleIndex),(uint32)(0xFFFFFFF),(uint32)(u32ChannelMask & (uint32)0xFFFFFFF));
	.d2line		3732
.Llo492:
	lis		r3,EMIOS_BASE_ADDR32@ha
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l
.Llo493:
	rlwinm		r31,r31,2,22,29		# u8ModuleIndex=r31 u8ModuleIndex=r31
.Llo494:
	lwzux		r4,r3,r31
	lwz		r0,8(r4)
	rlwinm		r0,r0,0,0,3
.Llo495:
	rlwinm		r30,r30,0,4,31		# u32ChannelMask=r30 u32ChannelMask=r30
	or		r0,r0,r30		# u32ChannelMask=r30
	lis		r3,EMIOS_BASE_ADDR32@ha
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l
	lwzx		r3,r3,r31
	stw		r0,8(r3)
#     SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_08();
	.d2line		3733
	bl		SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_08
# }
	.d2line		3734
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo496:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L982:
	.type		Pwm_eMios_BufferTransferEnableDisable,@function
	.size		Pwm_eMios_BufferTransferEnableDisable,.-Pwm_eMios_BufferTransferEnableDisable
# Number of nodes = 33

# Allocations for Pwm_eMios_BufferTransferEnableDisable
#	?a4		u8ModuleIndex
#	?a5		u32ChannelMask

# Allocations for module
	.section	.text_vle
	.0byte		.L986
	.section	.mcal_bss,,b
	.0byte		.L991
	.section	.mcal_bss,,b
	.type		Pwm_eMios_aChannelNotifType,@object
	.size		Pwm_eMios_aChannelNotifType,64
	.align		2
Pwm_eMios_aChannelNotifType:
	.space		64
	.section	.mcal_bss,,b
	.0byte		.L994
	.section	.mcal_bss,,b
	.type		Pwm_eMios_aChannelPolarity,@object
	.size		Pwm_eMios_aChannelPolarity,4
	.align		2
Pwm_eMios_aChannelPolarity:
	.space		4
	.section	.mcal_bss,,b
	.type		Pwm_eMios_aChannelIdleState,@object
	.size		Pwm_eMios_aChannelIdleState,4
	.align		2
Pwm_eMios_aChannelIdleState:
	.space		4
	.section	.mcal_bss,,b
	.type		Pwm_eMios_aChannelPeriod,@object
	.size		Pwm_eMios_aChannelPeriod,128
	.align		1
Pwm_eMios_aChannelPeriod:
	.space		128
	.section	.mcal_bss,,b
	.type		Pwm_eMios_aChannelOffset,@object
	.size		Pwm_eMios_aChannelOffset,2
	.align		1
Pwm_eMios_aChannelOffset:
	.space		2
	.section	.mcal_bss,,b
	.0byte		.L1006
	.section	.mcal_bss,,b
	.type		Pwm_eMios_aDutyState,@object
	.size		Pwm_eMios_aDutyState,8
	.align		2
Pwm_eMios_aDutyState:
	.space		8
	.section	.mcal_bss,,b
	.0byte		.L1009
	.section	.mcal_bss,,b
	.type		Pwm_eMios_aChannelDuty,@object
	.size		Pwm_eMios_aChannelDuty,2
	.align		1
Pwm_eMios_aChannelDuty:
	.space		2
	.section	.text_vle
#$$ld
.L5:
.L1026:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Pwm_Ipw_Types.h"
.L1012:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Pwm_Types.h"
.L987:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Reg_eSys_eMios.h"
.L759:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Pwm_eMios.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L657:
.L665:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Pwm_eMios.c"
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
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Pwm_eMios.c"
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
.L654:
	.4byte		.L655-.L653
.L653:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L659-.L654
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Pwm_eMios.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L656
	.4byte		.L657
	.4byte		.L660
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L669:
	.sleb128	2
	.4byte		.L662-.L654
	.byte		"Pwm_eMios_GetMasterBus"
	.byte		0
	.4byte		.L665
	.uleb128	580
	.uleb128	52
	.4byte		.L666
	.byte		0x1
	.4byte		.L663
	.4byte		.L664
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L665
	.uleb128	580
	.uleb128	52
	.byte		"u8mIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L670
	.sleb128	3
	.4byte		.L665
	.uleb128	580
	.uleb128	52
	.byte		"u8chIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L671
	.sleb128	3
	.4byte		.L665
	.uleb128	580
	.uleb128	52
	.byte		"u32Bus"
	.byte		0
	.4byte		.L672
	.4byte		.L675
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L676:
	.sleb128	4
	.4byte		.L665
	.uleb128	587
	.uleb128	43
	.byte		"n8MasterBusIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L677
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L662:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L682:
	.sleb128	5
	.4byte		.L679-.L654
	.byte		"Pwm_eMios_UpdateChannelAB"
	.byte		0
	.4byte		.L665
	.uleb128	633
	.uleb128	35
	.byte		0x1
	.4byte		.L680
	.4byte		.L681
	.sleb128	3
	.4byte		.L665
	.uleb128	633
	.uleb128	35
	.byte		"u8mIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L683
	.sleb128	3
	.4byte		.L665
	.uleb128	633
	.uleb128	35
	.byte		"u8chIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L684
	.sleb128	3
	.4byte		.L665
	.uleb128	633
	.uleb128	35
	.byte		"u32ValA"
	.byte		0
	.4byte		.L673
	.4byte		.L685
	.sleb128	3
	.4byte		.L665
	.uleb128	633
	.uleb128	35
	.byte		"u32ValB"
	.byte		0
	.4byte		.L673
	.4byte		.L686
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L679:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L694:
	.sleb128	2
	.4byte		.L688-.L654
	.byte		"Pwm_eMios_ComputeDutycycle_16bits"
	.byte		0
	.4byte		.L665
	.uleb128	708
	.uleb128	45
	.4byte		.L691
	.byte		0x1
	.4byte		.L689
	.4byte		.L690
	.sleb128	3
	.4byte		.L665
	.uleb128	708
	.uleb128	45
	.byte		"nPeriod"
	.byte		0
	.4byte		.L691
	.4byte		.L695
	.sleb128	3
	.4byte		.L665
	.uleb128	708
	.uleb128	45
	.byte		"u16Duty"
	.byte		0
	.4byte		.L692
	.4byte		.L696
.L697:
	.sleb128	4
	.4byte		.L665
	.uleb128	714
	.uleb128	36
	.byte		"nDutycycle"
	.byte		0
	.4byte		.L691
	.4byte		.L698
.L699:
	.sleb128	4
	.4byte		.L665
	.uleb128	715
	.uleb128	36
	.byte		"u32Calc_rounding"
	.byte		0
	.4byte		.L673
	.4byte		.L700
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L688:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L705:
	.sleb128	5
	.4byte		.L702-.L654
	.byte		"Pwm_eMios_SetRegs_OPWMB_mode"
	.byte		0
	.4byte		.L665
	.uleb128	1361
	.uleb128	35
	.byte		0x1
	.4byte		.L703
	.4byte		.L704
	.sleb128	3
	.4byte		.L665
	.uleb128	1361
	.uleb128	35
	.byte		"u8eMiosChannelIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L706
	.sleb128	3
	.4byte		.L665
	.uleb128	1361
	.uleb128	35
	.byte		"nPeriod"
	.byte		0
	.4byte		.L691
	.4byte		.L707
	.sleb128	3
	.4byte		.L665
	.uleb128	1361
	.uleb128	35
	.byte		"u16DutyCycle"
	.byte		0
	.4byte		.L692
	.4byte		.L708
	.sleb128	3
	.4byte		.L665
	.uleb128	1361
	.uleb128	35
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L709
	.4byte		.L713
.L714:
	.sleb128	4
	.4byte		.L665
	.uleb128	1369
	.uleb128	48
	.byte		"u32CtrlRegVal"
	.byte		0
	.4byte		.L672
	.4byte		.L715
.L716:
	.sleb128	4
	.4byte		.L665
	.uleb128	1370
	.uleb128	48
	.byte		"nTempDuty"
	.byte		0
	.4byte		.L691
	.4byte		.L717
.L718:
	.sleb128	4
	.4byte		.L665
	.uleb128	1371
	.uleb128	48
	.byte		"nOffset"
	.byte		0
	.4byte		.L691
	.4byte		.L719
.L720:
	.sleb128	4
	.4byte		.L665
	.uleb128	1372
	.uleb128	48
	.byte		"u8mIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L721
.L722:
	.sleb128	4
	.4byte		.L665
	.uleb128	1373
	.uleb128	48
	.byte		"u8chIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L723
.L724:
	.sleb128	4
	.4byte		.L665
	.uleb128	1374
	.uleb128	48
	.byte		"u32PolarityBit"
	.byte		0
	.4byte		.L673
	.4byte		.L725
.L726:
	.sleb128	4
	.4byte		.L665
	.uleb128	1375
	.uleb128	48
	.byte		"u32TempDutyOffset"
	.byte		0
	.4byte		.L673
	.4byte		.L727
.L728:
	.sleb128	4
	.4byte		.L665
	.uleb128	1377
	.uleb128	29
	.byte		"u8Notification"
	.byte		0
	.4byte		.L667
	.4byte		.L729
.L730:
	.sleb128	4
	.4byte		.L665
	.uleb128	1379
	.uleb128	48
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L667
	.4byte		.L731
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L702:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L736:
	.sleb128	5
	.4byte		.L733-.L654
	.byte		"Pwm_eMios_SetRegs_OPWMFMB_mode"
	.byte		0
	.4byte		.L665
	.uleb128	1701
	.uleb128	35
	.byte		0x1
	.4byte		.L734
	.4byte		.L735
	.sleb128	3
	.4byte		.L665
	.uleb128	1701
	.uleb128	35
	.byte		"u8eMiosChannelIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L737
	.sleb128	3
	.4byte		.L665
	.uleb128	1701
	.uleb128	35
	.byte		"nPeriod"
	.byte		0
	.4byte		.L691
	.4byte		.L738
	.sleb128	3
	.4byte		.L665
	.uleb128	1701
	.uleb128	35
	.byte		"u16DutyCycle"
	.byte		0
	.4byte		.L692
	.4byte		.L739
	.sleb128	3
	.4byte		.L665
	.uleb128	1701
	.uleb128	35
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L709
	.4byte		.L740
.L741:
	.sleb128	4
	.4byte		.L665
	.uleb128	1709
	.uleb128	48
	.byte		"u32CtrlRegVal"
	.byte		0
	.4byte		.L672
	.4byte		.L742
.L743:
	.sleb128	4
	.4byte		.L665
	.uleb128	1710
	.uleb128	48
	.byte		"nTempDuty"
	.byte		0
	.4byte		.L691
	.4byte		.L744
.L745:
	.sleb128	4
	.4byte		.L665
	.uleb128	1711
	.uleb128	48
	.byte		"u8mIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L746
.L747:
	.sleb128	4
	.4byte		.L665
	.uleb128	1712
	.uleb128	48
	.byte		"u8chIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L748
.L749:
	.sleb128	4
	.4byte		.L665
	.uleb128	1713
	.uleb128	48
	.byte		"u32PolarityBit"
	.byte		0
	.4byte		.L673
	.4byte		.L750
.L751:
	.sleb128	4
	.4byte		.L665
	.uleb128	1715
	.uleb128	29
	.byte		"u8Notification"
	.byte		0
	.4byte		.L667
	.4byte		.L752
.L753:
	.sleb128	4
	.4byte		.L665
	.uleb128	1717
	.uleb128	48
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L667
	.4byte		.L754
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L733:
	.section	.debug_info,,n
.L760:
	.sleb128	6
	.4byte		.L756-.L2
	.byte		"Pwm_eMios_Init"
	.byte		0
	.4byte		.L759
	.uleb128	2246
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L757
	.4byte		.L758
	.sleb128	3
	.4byte		.L759
	.uleb128	2246
	.uleb128	22
	.byte		"peMiosIpConfig"
	.byte		0
	.4byte		.L761
	.4byte		.L765
.L766:
	.sleb128	4
	.4byte		.L759
	.uleb128	2252
	.uleb128	67
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L709
	.4byte		.L767
.L768:
	.sleb128	4
	.4byte		.L759
	.uleb128	2254
	.uleb128	45
	.byte		"u32CtrlRegVal"
	.byte		0
	.4byte		.L672
	.4byte		.L769
.L770:
	.sleb128	4
	.4byte		.L759
	.uleb128	2256
	.uleb128	45
	.byte		"nPeriod"
	.byte		0
	.4byte		.L691
	.4byte		.L771
.L772:
	.sleb128	4
	.4byte		.L759
	.uleb128	2257
	.uleb128	45
	.byte		"u16DutyCycle"
	.byte		0
	.4byte		.L692
	.4byte		.L773
.L774:
	.sleb128	4
	.4byte		.L759
	.uleb128	2260
	.uleb128	45
	.byte		"u8Counter"
	.byte		0
	.4byte		.L666
	.4byte		.L775
.L776:
	.sleb128	4
	.4byte		.L759
	.uleb128	2263
	.uleb128	45
	.byte		"u8mIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L777
.L778:
	.sleb128	4
	.4byte		.L759
	.uleb128	2264
	.uleb128	45
	.byte		"u8chIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L779
.L780:
	.sleb128	4
	.4byte		.L759
	.uleb128	2266
	.uleb128	45
	.byte		"u8MasterModule"
	.byte		0
	.4byte		.L666
	.4byte		.L781
.L782:
	.sleb128	4
	.4byte		.L759
	.uleb128	2267
	.uleb128	45
	.byte		"u8MasterChannel"
	.byte		0
	.4byte		.L666
	.4byte		.L783
.L784:
	.sleb128	4
	.4byte		.L759
	.uleb128	2269
	.uleb128	45
	.byte		"u8MasterBusIdx"
	.byte		0
	.4byte		.L667
	.4byte		.L785
	.section	.debug_info,,n
.L786:
	.sleb128	7
	.4byte		.L759
	.uleb128	2270
	.uleb128	45
	.byte		"aMasterBusMode"
	.byte		0
	.4byte		.L787
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L789:
	.sleb128	7
	.4byte		.L759
	.uleb128	2271
	.uleb128	45
	.byte		"aPrescaler"
	.byte		0
	.4byte		.L790
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	72
	.section	.debug_info,,n
	.sleb128	0
.L756:
	.section	.debug_info,,n
.L796:
	.sleb128	6
	.4byte		.L793-.L2
	.byte		"Pwm_eMios_DeInit"
	.byte		0
	.4byte		.L759
	.uleb128	2541
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L794
	.4byte		.L795
	.sleb128	3
	.4byte		.L759
	.uleb128	2541
	.uleb128	22
	.byte		"peMiosIpConfig"
	.byte		0
	.4byte		.L797
	.4byte		.L798
.L799:
	.sleb128	4
	.4byte		.L759
	.uleb128	2547
	.uleb128	67
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L709
	.4byte		.L800
.L801:
	.sleb128	4
	.4byte		.L759
	.uleb128	2548
	.uleb128	43
	.byte		"u8Counter"
	.byte		0
	.4byte		.L666
	.4byte		.L802
.L803:
	.sleb128	4
	.4byte		.L759
	.uleb128	2550
	.uleb128	43
	.byte		"u8mIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L804
.L805:
	.sleb128	4
	.4byte		.L759
	.uleb128	2551
	.uleb128	43
	.byte		"u8chIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L806
.L807:
	.sleb128	4
	.4byte		.L759
	.uleb128	2552
	.uleb128	43
	.byte		"u8MasterChannel"
	.byte		0
	.4byte		.L666
	.4byte		.L808
.L809:
	.sleb128	4
	.4byte		.L759
	.uleb128	2555
	.uleb128	43
	.byte		"u32CtrlRegVal"
	.byte		0
	.4byte		.L672
	.4byte		.L810
.L811:
	.sleb128	4
	.4byte		.L759
	.uleb128	2556
	.uleb128	27
	.byte		"u8MasterBusIdx"
	.byte		0
	.4byte		.L667
	.4byte		.L812
.L813:
	.sleb128	7
	.4byte		.L759
	.uleb128	2557
	.uleb128	27
	.byte		"aMasterBusUse"
	.byte		0
	.4byte		.L814
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L793:
	.section	.debug_info,,n
.L820:
	.sleb128	6
	.4byte		.L817-.L2
	.byte		"Pwm_eMios_SetDutyCycle"
	.byte		0
	.4byte		.L759
	.uleb128	2714
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L818
	.4byte		.L819
	.sleb128	3
	.4byte		.L759
	.uleb128	2714
	.uleb128	22
	.byte		"u8IdxChannelConfig"
	.byte		0
	.4byte		.L667
	.4byte		.L821
	.sleb128	3
	.4byte		.L759
	.uleb128	2714
	.uleb128	22
	.byte		"u16DutyCycle"
	.byte		0
	.4byte		.L692
	.4byte		.L822
	.sleb128	3
	.4byte		.L759
	.uleb128	2714
	.uleb128	22
	.byte		"peMiosIpConfig"
	.byte		0
	.4byte		.L797
	.4byte		.L823
.L824:
	.sleb128	4
	.4byte		.L759
	.uleb128	2722
	.uleb128	67
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L709
	.4byte		.L825
.L826:
	.sleb128	4
	.4byte		.L759
	.uleb128	2723
	.uleb128	67
	.byte		"nPeriod"
	.byte		0
	.4byte		.L691
	.4byte		.L827
.L828:
	.sleb128	4
	.4byte		.L759
	.uleb128	2724
	.uleb128	67
	.byte		"u32CtrlMode"
	.byte		0
	.4byte		.L672
	.4byte		.L829
.L830:
	.sleb128	4
	.4byte		.L759
	.uleb128	2725
	.uleb128	67
	.byte		"u32CtrlBus"
	.byte		0
	.4byte		.L672
	.4byte		.L831
.L832:
	.sleb128	4
	.4byte		.L759
	.uleb128	2726
	.uleb128	67
	.byte		"u8mIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L833
.L834:
	.sleb128	4
	.4byte		.L759
	.uleb128	2727
	.uleb128	67
	.byte		"u8chIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L835
.L836:
	.sleb128	4
	.4byte		.L759
	.uleb128	2728
	.uleb128	67
	.byte		"u8MasterBusIdx"
	.byte		0
	.4byte		.L667
	.4byte		.L837
	.section	.debug_info,,n
	.sleb128	0
.L817:
	.section	.debug_info,,n
.L842:
	.sleb128	6
	.4byte		.L839-.L2
	.byte		"Pwm_eMios_SetPeriodAndDuty"
	.byte		0
	.4byte		.L759
	.uleb128	2827
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L840
	.4byte		.L841
	.sleb128	3
	.4byte		.L759
	.uleb128	2827
	.uleb128	22
	.byte		"u8IdxChannelConfig"
	.byte		0
	.4byte		.L667
	.4byte		.L843
	.sleb128	3
	.4byte		.L759
	.uleb128	2827
	.uleb128	22
	.byte		"nPeriod"
	.byte		0
	.4byte		.L691
	.4byte		.L844
	.sleb128	3
	.4byte		.L759
	.uleb128	2827
	.uleb128	22
	.byte		"u16DutyCycle"
	.byte		0
	.4byte		.L692
	.4byte		.L845
	.sleb128	3
	.4byte		.L759
	.uleb128	2827
	.uleb128	22
	.byte		"peMiosIpConfig"
	.byte		0
	.4byte		.L797
	.4byte		.L846
.L847:
	.sleb128	4
	.4byte		.L759
	.uleb128	2836
	.uleb128	67
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L709
	.4byte		.L848
.L849:
	.sleb128	4
	.4byte		.L759
	.uleb128	2838
	.uleb128	43
	.byte		"u32CtrlMode"
	.byte		0
	.4byte		.L672
	.4byte		.L850
.L851:
	.sleb128	4
	.4byte		.L759
	.uleb128	2839
	.uleb128	43
	.byte		"u32CtrlBus"
	.byte		0
	.4byte		.L672
	.4byte		.L852
.L853:
	.sleb128	4
	.4byte		.L759
	.uleb128	2840
	.uleb128	43
	.byte		"u8mIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L854
.L855:
	.sleb128	4
	.4byte		.L759
	.uleb128	2841
	.uleb128	43
	.byte		"u8chIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L856
.L857:
	.sleb128	4
	.4byte		.L759
	.uleb128	2842
	.uleb128	43
	.byte		"u8MasterBusIdx"
	.byte		0
	.4byte		.L667
	.4byte		.L858
	.section	.debug_info,,n
	.sleb128	0
.L839:
	.section	.debug_info,,n
.L863:
	.sleb128	6
	.4byte		.L860-.L2
	.byte		"Pwm_eMios_SetOutputToIdle"
	.byte		0
	.4byte		.L759
	.uleb128	2924
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L861
	.4byte		.L862
	.sleb128	3
	.4byte		.L759
	.uleb128	2924
	.uleb128	22
	.byte		"u8IdxChannelConfig"
	.byte		0
	.4byte		.L667
	.4byte		.L864
	.sleb128	3
	.4byte		.L759
	.uleb128	2924
	.uleb128	22
	.byte		"peMiosIpConfig"
	.byte		0
	.4byte		.L797
	.4byte		.L865
.L866:
	.sleb128	4
	.4byte		.L759
	.uleb128	2932
	.uleb128	67
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L709
	.4byte		.L867
.L868:
	.sleb128	4
	.4byte		.L759
	.uleb128	2934
	.uleb128	43
	.byte		"u8mIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L869
.L870:
	.sleb128	4
	.4byte		.L759
	.uleb128	2935
	.uleb128	43
	.byte		"u8chIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L871
	.section	.debug_info,,n
	.sleb128	0
.L860:
	.section	.debug_info,,n
.L878:
	.sleb128	8
	.4byte		.L873-.L2
	.byte		"Pwm_eMios_GetOutputState"
	.byte		0
	.4byte		.L759
	.uleb128	2990
	.uleb128	37
	.4byte		.L876
	.byte		0x1
	.byte		0x1
	.4byte		.L874
	.4byte		.L875
	.sleb128	3
	.4byte		.L759
	.uleb128	2990
	.uleb128	37
	.byte		"u8IdxChannelConfig"
	.byte		0
	.4byte		.L667
	.4byte		.L879
	.sleb128	3
	.4byte		.L759
	.uleb128	2990
	.uleb128	37
	.byte		"peMiosIpConfig"
	.byte		0
	.4byte		.L797
	.4byte		.L880
.L881:
	.sleb128	4
	.4byte		.L759
	.uleb128	2998
	.uleb128	67
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L709
	.4byte		.L882
.L883:
	.sleb128	4
	.4byte		.L759
	.uleb128	2999
	.uleb128	43
	.byte		"u8mIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L884
.L885:
	.sleb128	4
	.4byte		.L759
	.uleb128	3000
	.uleb128	43
	.byte		"u8chIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L886
.L887:
	.sleb128	4
	.4byte		.L759
	.uleb128	3002
	.uleb128	41
	.byte		"eOutputState"
	.byte		0
	.4byte		.L876
	.4byte		.L888
	.section	.debug_info,,n
	.sleb128	0
.L873:
	.section	.debug_info,,n
.L893:
	.sleb128	6
	.4byte		.L890-.L2
	.byte		"Pwm_eMios_EnableNotification"
	.byte		0
	.4byte		.L759
	.uleb128	3044
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L891
	.4byte		.L892
	.sleb128	3
	.4byte		.L759
	.uleb128	3044
	.uleb128	22
	.byte		"u8IdxChannelConfig"
	.byte		0
	.4byte		.L667
	.4byte		.L894
	.sleb128	3
	.4byte		.L759
	.uleb128	3044
	.uleb128	22
	.byte		"eNotification"
	.byte		0
	.4byte		.L895
	.4byte		.L897
	.sleb128	3
	.4byte		.L759
	.uleb128	3044
	.uleb128	22
	.byte		"peMiosIpConfig"
	.byte		0
	.4byte		.L797
	.4byte		.L898
.L899:
	.sleb128	4
	.4byte		.L759
	.uleb128	3053
	.uleb128	67
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L709
	.4byte		.L900
.L901:
	.sleb128	4
	.4byte		.L759
	.uleb128	3054
	.uleb128	43
	.byte		"u8mIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L902
.L903:
	.sleb128	4
	.4byte		.L759
	.uleb128	3055
	.uleb128	43
	.byte		"u8chIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L904
	.section	.debug_info,,n
	.sleb128	0
.L890:
	.section	.debug_info,,n
.L909:
	.sleb128	6
	.4byte		.L906-.L2
	.byte		"Pwm_eMios_DisableNotification"
	.byte		0
	.4byte		.L759
	.uleb128	3173
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L907
	.4byte		.L908
	.sleb128	3
	.4byte		.L759
	.uleb128	3173
	.uleb128	22
	.byte		"u8IdxChannelConfig"
	.byte		0
	.4byte		.L667
	.4byte		.L910
	.sleb128	3
	.4byte		.L759
	.uleb128	3173
	.uleb128	22
	.byte		"peMiosIpConfig"
	.byte		0
	.4byte		.L797
	.4byte		.L911
.L912:
	.sleb128	4
	.4byte		.L759
	.uleb128	3180
	.uleb128	68
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L709
	.4byte		.L913
.L914:
	.sleb128	4
	.4byte		.L759
	.uleb128	3181
	.uleb128	68
	.byte		"u8mIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L915
.L916:
	.sleb128	4
	.4byte		.L759
	.uleb128	3182
	.uleb128	68
	.byte		"u8chIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L917
	.section	.debug_info,,n
	.sleb128	0
.L906:
	.section	.debug_info,,n
.L922:
	.sleb128	6
	.4byte		.L919-.L2
	.byte		"Pwm_eMios_SetCounterBus"
	.byte		0
	.4byte		.L759
	.uleb128	3243
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L920
	.4byte		.L921
	.sleb128	3
	.4byte		.L759
	.uleb128	3243
	.uleb128	22
	.byte		"u8IdxChannelConfig"
	.byte		0
	.4byte		.L667
	.4byte		.L923
	.sleb128	3
	.4byte		.L759
	.uleb128	3243
	.uleb128	22
	.byte		"peMiosIpConfig"
	.byte		0
	.4byte		.L797
	.4byte		.L924
	.sleb128	3
	.4byte		.L759
	.uleb128	3243
	.uleb128	22
	.byte		"u32Bus"
	.byte		0
	.4byte		.L673
	.4byte		.L925
.L926:
	.sleb128	4
	.4byte		.L759
	.uleb128	3251
	.uleb128	71
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L709
	.4byte		.L927
.L928:
	.sleb128	4
	.4byte		.L759
	.uleb128	3252
	.uleb128	71
	.byte		"nPeriod"
	.byte		0
	.4byte		.L691
	.4byte		.L929
.L930:
	.sleb128	4
	.4byte		.L759
	.uleb128	3253
	.uleb128	71
	.byte		"u8mIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L931
.L932:
	.sleb128	4
	.4byte		.L759
	.uleb128	3254
	.uleb128	71
	.byte		"u8chIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L933
.L934:
	.sleb128	4
	.4byte		.L759
	.uleb128	3255
	.uleb128	71
	.byte		"u32CtrlRegVal"
	.byte		0
	.4byte		.L672
	.4byte		.L935
.L936:
	.sleb128	4
	.4byte		.L759
	.uleb128	3256
	.uleb128	71
	.byte		"nOffset"
	.byte		0
	.4byte		.L691
	.4byte		.L937
.L938:
	.sleb128	4
	.4byte		.L759
	.uleb128	3260
	.uleb128	71
	.byte		"u8MasterBusIdx"
	.byte		0
	.4byte		.L667
	.4byte		.L939
	.section	.debug_info,,n
	.sleb128	0
.L919:
	.section	.debug_info,,n
.L944:
	.sleb128	6
	.4byte		.L941-.L2
	.byte		"Pwm_eMios_SetChannelOutput"
	.byte		0
	.4byte		.L759
	.uleb128	3392
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L942
	.4byte		.L943
	.sleb128	3
	.4byte		.L759
	.uleb128	3392
	.uleb128	22
	.byte		"u8IdxChannelConfig"
	.byte		0
	.4byte		.L667
	.4byte		.L945
	.sleb128	3
	.4byte		.L759
	.uleb128	3392
	.uleb128	22
	.byte		"peMiosIpConfig"
	.byte		0
	.4byte		.L797
	.4byte		.L946
	.sleb128	3
	.4byte		.L759
	.uleb128	3392
	.uleb128	22
	.byte		"eState"
	.byte		0
	.4byte		.L947
	.4byte		.L949
.L950:
	.sleb128	4
	.4byte		.L759
	.uleb128	3400
	.uleb128	67
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L709
	.4byte		.L951
.L952:
	.sleb128	4
	.4byte		.L759
	.uleb128	3401
	.uleb128	43
	.byte		"u8mIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L953
.L954:
	.sleb128	4
	.4byte		.L759
	.uleb128	3402
	.uleb128	43
	.byte		"u8chIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L955
.L956:
	.sleb128	4
	.4byte		.L759
	.uleb128	3403
	.uleb128	43
	.byte		"u32CtrlRegVal"
	.byte		0
	.4byte		.L672
	.4byte		.L957
	.section	.debug_info,,n
	.sleb128	0
.L941:
	.section	.debug_info,,n
.L962:
	.sleb128	6
	.4byte		.L959-.L2
	.byte		"Pwm_eMios_ProcessCommonInterrupt"
	.byte		0
	.4byte		.L759
	.uleb128	3465
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L960
	.4byte		.L961
	.sleb128	3
	.4byte		.L759
	.uleb128	3465
	.uleb128	22
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L963
	.4byte		.L964
.L965:
	.sleb128	4
	.4byte		.L759
	.uleb128	3470
	.uleb128	46
	.byte		"u8mIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L966
.L967:
	.sleb128	4
	.4byte		.L759
	.uleb128	3471
	.uleb128	46
	.byte		"u8chIdx"
	.byte		0
	.4byte		.L666
	.4byte		.L968
.L969:
	.sleb128	4
	.4byte		.L759
	.uleb128	3472
	.uleb128	46
	.byte		"u32TempStatus"
	.byte		0
	.4byte		.L673
	.4byte		.L970
.L971:
	.sleb128	4
	.4byte		.L759
	.uleb128	3474
	.uleb128	27
	.byte		"u8Notification"
	.byte		0
	.4byte		.L667
	.4byte		.L972
	.section	.debug_info,,n
	.sleb128	0
.L959:
	.section	.debug_info,,n
.L977:
	.sleb128	8
	.4byte		.L974-.L2
	.byte		"Pwm_eMios_GetChannelState"
	.byte		0
	.4byte		.L759
	.uleb128	3701
	.uleb128	25
	.4byte		.L692
	.byte		0x1
	.byte		0x1
	.4byte		.L975
	.4byte		.L976
	.sleb128	3
	.4byte		.L759
	.uleb128	3701
	.uleb128	25
	.byte		"u8IdxChannelConfig"
	.byte		0
	.4byte		.L667
	.4byte		.L978
	.section	.debug_info,,n
	.sleb128	0
.L974:
	.section	.debug_info,,n
.L983:
	.sleb128	6
	.4byte		.L980-.L2
	.byte		"Pwm_eMios_BufferTransferEnableDisable"
	.byte		0
	.4byte		.L759
	.uleb128	3723
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L981
	.4byte		.L982
	.sleb128	3
	.4byte		.L759
	.uleb128	3723
	.uleb128	22
	.byte		"u8ModuleIndex"
	.byte		0
	.4byte		.L667
	.4byte		.L984
	.sleb128	3
	.4byte		.L759
	.uleb128	3723
	.uleb128	22
	.byte		"u32ChannelMask"
	.byte		0
	.4byte		.L673
	.4byte		.L985
	.section	.debug_info,,n
	.sleb128	0
.L980:
	.section	.debug_info,,n
.L986:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L987
	.uleb128	134
	.uleb128	33
	.byte		"EMIOS_BASE_ADDR32"
	.byte		0
	.4byte		.L988
	.section	.debug_info,,n
.L991:
	.sleb128	7
	.4byte		.L759
	.uleb128	316
	.uleb128	28
	.byte		"Pwm_eMios_aChannelNotifType"
	.byte		0
	.4byte		.L992
	.sleb128	5
	.byte		0x3
	.4byte		Pwm_eMios_aChannelNotifType
	.section	.debug_info,,n
	.section	.debug_info,,n
.L994:
	.sleb128	7
	.4byte		.L759
	.uleb128	347
	.uleb128	43
	.byte		"Pwm_eMios_aChannelPolarity"
	.byte		0
	.4byte		.L995
	.sleb128	5
	.byte		0x3
	.4byte		Pwm_eMios_aChannelPolarity
	.section	.debug_info,,n
	.section	.debug_info,,n
.L997:
	.sleb128	7
	.4byte		.L759
	.uleb128	355
	.uleb128	43
	.byte		"Pwm_eMios_aChannelIdleState"
	.byte		0
	.4byte		.L998
	.sleb128	5
	.byte		0x3
	.4byte		Pwm_eMios_aChannelIdleState
	.section	.debug_info,,n
.L1000:
	.sleb128	7
	.4byte		.L759
	.uleb128	362
	.uleb128	37
	.byte		"Pwm_eMios_aChannelPeriod"
	.byte		0
	.4byte		.L1001
	.sleb128	5
	.byte		0x3
	.4byte		Pwm_eMios_aChannelPeriod
	.section	.debug_info,,n
.L1003:
	.sleb128	7
	.4byte		.L759
	.uleb128	367
	.uleb128	37
	.byte		"Pwm_eMios_aChannelOffset"
	.byte		0
	.4byte		.L1004
	.sleb128	5
	.byte		0x3
	.4byte		Pwm_eMios_aChannelOffset
	.section	.debug_info,,n
.L1006:
	.sleb128	7
	.4byte		.L759
	.uleb128	402
	.uleb128	30
	.byte		"Pwm_eMios_aDutyState"
	.byte		0
	.4byte		.L1007
	.sleb128	5
	.byte		0x3
	.4byte		Pwm_eMios_aDutyState
	.section	.debug_info,,n
	.section	.debug_info,,n
.L1009:
	.sleb128	7
	.4byte		.L759
	.uleb128	419
	.uleb128	29
	.byte		"Pwm_eMios_aChannelDuty"
	.byte		0
	.4byte		.L1010
	.sleb128	5
	.byte		0x3
	.4byte		Pwm_eMios_aChannelDuty
	.section	.debug_info,,n
	.section	.debug_info,,n
.L764:
	.sleb128	10
	.4byte		.L1012
	.uleb128	148
	.uleb128	1
	.4byte		.L1013-.L2
	.uleb128	8
	.section	.debug_info,,n
.L237:
	.sleb128	11
	.byte		"u8NumChannels"
	.byte		0
	.4byte		.L1014
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L238:
	.sleb128	11
	.byte		"pChannelsConfig"
	.byte		0
	.4byte		.L1015
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1013:
.L712:
	.sleb128	10
	.4byte		.L1012
	.uleb128	148
	.uleb128	1
	.4byte		.L1018-.L2
	.uleb128	24
.L228:
	.sleb128	11
	.byte		"ePwmPolarity"
	.byte		0
	.4byte		.L1019
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L229:
	.sleb128	11
	.byte		"ePwmIdleState"
	.byte		0
	.4byte		.L1019
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L230:
	.sleb128	11
	.byte		"u16PwmDefaultDutyCycle"
	.byte		0
	.4byte		.L1020
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L231:
	.sleb128	11
	.byte		"nPwmDefaultPeriod"
	.byte		0
	.4byte		.L1021
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L232:
	.sleb128	11
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L1014
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L233:
	.sleb128	11
	.byte		"u32ControlValue"
	.byte		0
	.4byte		.L1022
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L234:
	.sleb128	11
	.byte		"nPwmOffset"
	.byte		0
	.4byte		.L1021
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L235:
	.sleb128	11
	.byte		"u8MasterMode"
	.byte		0
	.4byte		.L1023
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L236:
	.sleb128	11
	.byte		"bPwmOffsetTriggerDelay"
	.byte		0
	.4byte		.L1024
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
	.sleb128	0
.L1018:
	.section	.debug_info,,n
.L948:
	.sleb128	12
	.4byte		.L1026
	.uleb128	149
	.uleb128	1
	.4byte		.L1027-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"PWM_ACTIVE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"PWM_INACTIVE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1027:
.L896:
	.sleb128	12
	.4byte		.L1012
	.uleb128	148
	.uleb128	1
	.4byte		.L1028-.L2
	.uleb128	4
	.sleb128	13
	.byte		"PWM_RISING_EDGE"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"PWM_FALLING_EDGE"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"PWM_BOTH_EDGES"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1028:
.L877:
	.sleb128	12
	.4byte		.L1012
	.uleb128	120
	.uleb128	1
	.4byte		.L1029-.L2
	.uleb128	4
	.sleb128	13
	.byte		"PWM_LOW"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"PWM_HIGH"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1029:
	.section	.debug_info,,n
.L668:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L667:
	.sleb128	15
	.byte		"uint8"
	.byte		0
	.4byte		.L668
.L666:
	.sleb128	15
	.byte		"Pwm_eMios_ChannelType"
	.byte		0
	.4byte		.L667
.L674:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L673:
	.sleb128	15
	.byte		"uint32"
	.byte		0
	.4byte		.L674
.L672:
	.sleb128	15
	.byte		"Pwm_eMios_ControlType"
	.byte		0
	.4byte		.L673
.L693:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L692:
	.sleb128	15
	.byte		"uint16"
	.byte		0
	.4byte		.L693
.L691:
	.sleb128	15
	.byte		"Pwm_PeriodType"
	.byte		0
	.4byte		.L692
.L711:
	.sleb128	15
	.byte		"Pwm_eMios_ChannelConfigType"
	.byte		0
	.4byte		.L712
	.section	.debug_info,,n
.L710:
	.sleb128	16
	.4byte		.L711
	.section	.debug_info,,n
.L709:
	.sleb128	17
	.4byte		.L710
.L763:
	.sleb128	15
	.byte		"Pwm_eMios_IpConfigType"
	.byte		0
	.4byte		.L764
.L762:
	.sleb128	16
	.4byte		.L763
.L761:
	.sleb128	17
	.4byte		.L762
	.section	.debug_info,,n
.L787:
	.sleb128	18
	.4byte		.L788-.L2
	.4byte		.L667
	.section	.debug_info,,n
	.sleb128	19
	.uleb128	63
	.sleb128	0
.L788:
.L790:
	.sleb128	18
	.4byte		.L791-.L2
	.4byte		.L673
	.sleb128	19
	.uleb128	63
	.sleb128	0
.L791:
.L797:
	.sleb128	16
	.4byte		.L761
.L814:
	.sleb128	18
	.4byte		.L815-.L2
	.4byte		.L667
	.sleb128	19
	.uleb128	63
	.sleb128	0
.L815:
.L876:
	.sleb128	15
	.byte		"Pwm_OutputStateType"
	.byte		0
	.4byte		.L877
.L895:
	.sleb128	15
	.byte		"Pwm_EdgeNotificationType"
	.byte		0
	.4byte		.L896
.L947:
	.sleb128	15
	.byte		"Pwm_StateType"
	.byte		0
	.4byte		.L948
.L963:
	.sleb128	15
	.byte		"Pwm_ChannelType"
	.byte		0
	.4byte		.L667
.L990:
	.sleb128	16
	.4byte		.L673
.L988:
	.sleb128	18
	.4byte		.L989-.L2
	.4byte		.L990
	.section	.debug_info,,n
	.sleb128	20
	.sleb128	0
.L989:
.L992:
	.sleb128	18
	.4byte		.L993-.L2
	.4byte		.L667
	.sleb128	19
	.uleb128	63
	.sleb128	0
.L993:
.L995:
	.sleb128	18
	.4byte		.L996-.L2
	.4byte		.L876
	.sleb128	19
	.uleb128	0
	.sleb128	0
.L996:
.L998:
	.sleb128	18
	.4byte		.L999-.L2
	.4byte		.L876
	.sleb128	19
	.uleb128	0
	.sleb128	0
.L999:
.L1001:
	.sleb128	18
	.4byte		.L1002-.L2
	.4byte		.L691
	.sleb128	19
	.uleb128	63
	.sleb128	0
.L1002:
.L1004:
	.sleb128	18
	.4byte		.L1005-.L2
	.4byte		.L691
	.sleb128	19
	.uleb128	0
	.sleb128	0
.L1005:
.L1007:
	.sleb128	18
	.4byte		.L1008-.L2
	.4byte		.L673
	.sleb128	19
	.uleb128	1
	.sleb128	0
.L1008:
.L1010:
	.sleb128	18
	.4byte		.L1011-.L2
	.4byte		.L692
	.sleb128	19
	.uleb128	0
	.sleb128	0
.L1011:
.L1014:
	.sleb128	16
	.4byte		.L666
.L1016:
	.sleb128	18
	.4byte		.L1017-.L2
	.4byte		.L710
	.sleb128	20
	.sleb128	0
.L1017:
.L1015:
	.sleb128	17
	.4byte		.L1016
.L1019:
	.sleb128	16
	.4byte		.L876
.L1020:
	.sleb128	16
	.4byte		.L692
.L1021:
	.sleb128	16
	.4byte		.L691
.L1022:
	.sleb128	16
	.4byte		.L672
.L1023:
	.sleb128	16
	.4byte		.L667
.L1025:
	.sleb128	15
	.byte		"boolean"
	.byte		0
	.4byte		.L668
.L1024:
	.sleb128	16
	.4byte		.L1025
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L659:
	.sleb128	0
.L655:

	.section	.debug_loc,,n
	.align	0
.L670:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locend
.L671:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo13),4
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo14),4
	.d2locend
.L675:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo15),5
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo22),0
	.d2locend
.L677:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo19),5
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo3),3
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),3
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),3
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),5
	.d2locend
.L683:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locend
.L684:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),4
	.d2locend
.L685:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),5
	.d2locend
.L686:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),6
	.d2locend
.L695:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locend
.L696:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo29),4
	.d2locend
.L698:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),3
	.d2locend
.L700:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo30),3
	.d2locend
.L706:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),3
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),31
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),31
	.d2locend
.L707:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo34),4
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),7
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),7
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),7
	.d2locend
.L708:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo38),5
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),30
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),30
	.d2locend
.L713:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo44),6
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),3
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo39),3
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),3
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo43),3
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),3
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),3
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),3
	.d2locend
.L715:
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo45),29
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo47),29
	.d2locend
.L717:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),3
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo66),28
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),28
	.d2locend
.L719:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo39),5
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo70),5
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo59),5
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo71),5
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo47),5
	.d2locend
.L721:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo66),27
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),27
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),27
	.d2locend
.L723:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo66),26
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo67),26
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo68),26
	.d2locend
.L725:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),0
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo45),3
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo47),0
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo67),3
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo68),3
	.d2locend
.L727:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo87),3
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),6
	.d2locend
.L729:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),25
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo35),25
	.d2locend
.L731:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo39),6
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo70),6
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),6
	.d2locend
.L737:
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),3
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo98),31
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo100),31
	.d2locend
.L738:
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo101),4
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),7
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),7
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),7
	.d2locend
.L739:
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo102),5
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo108),26
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),26
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo106),26
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo113),26
	.d2locend
.L740:
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),6
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo115),3
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo97),4
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo108),3
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo119),3
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),3
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),3
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),3
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo113),3
	.d2locend
.L742:
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),30
	.d2locend
.L744:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo97),3
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo108),5
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo110),5
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo130),5
	.d2locend
.L746:
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),29
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),29
	.d2locend
.L748:
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo132),28
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),4
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo128),28
	.d2locend
.L750:
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo140),0
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo132),3
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo128),0
	.d2locend
.L752:
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo144),27
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo98),27
	.d2locend
.L754:
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo108),6
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo110),6
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),6
	.d2locend
.L765:
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),3
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo151),31
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo153),31
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo155),31
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo157),31
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo159),31
	.d2locend
.L767:
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo161),28
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo163),6
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo153),5
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo166),6
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo168),5
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo155),5
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo157),5
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo159),5
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo173),5
	.d2locend
.L769:
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo175),27
	.d2locreg	%offsetof(.Llo176), %offsetof(.Llo177),27
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo179),27
	.d2locend
.L771:
	.d2locreg	%offsetof(.Llo180), %offsetof(.Llo181),30
	.d2locreg	%offsetof(.Llo182), %offsetof(.Llo161),30
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo184),4
	.d2locreg	%offsetof(.Llo185), %offsetof(.Llo186),4
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo188),4
	.d2locreg	%offsetof(.Llo189), %offsetof(.Llo190),4
	.d2locreg	%offsetof(.Llo191), %offsetof(.Llo192),30
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo193),5
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo155),6
	.d2locreg	%offsetof(.Llo194), %offsetof(.Llo157),30
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo159),30
	.d2locend
.L773:
	.d2locreg	%offsetof(.Llo196), %offsetof(.Llo184),26
	.d2locreg	%offsetof(.Llo197), %offsetof(.Llo198),5
	.d2locend
.L775:
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo199),3
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo151),29
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo201),3
	.d2locend
.L777:
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo203),25
	.d2locreg	%offsetof(.Llo204), %offsetof(.Llo205),25
	.d2locreg	%offsetof(.Llo206), %offsetof(.Llo207),25
	.d2locend
.L779:
	.d2locreg	%offsetof(.Llo208), %offsetof(.Llo186),24
	.d2locend
.L781:
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo190),0
	.d2locreg	%offsetof(.Llo210), %offsetof(.Llo159),0
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo173),0
	.d2locend
.L783:
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo159),4
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo173),4
	.d2locend
.L785:
	.d2locreg	%offsetof(.Llo214), %offsetof(.Llo215),3
	.d2locreg	%offsetof(.Llo216), %offsetof(.Llo177),23
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo217),23
	.d2locreg	%offsetof(.Llo182), %offsetof(.Llo161),23
	.d2locend
.L798:
	.d2locreg	%offsetof(.Llo218), %offsetof(.Llo219),3
	.d2locreg	%offsetof(.Llo220), %offsetof(.Llo221),31
	.d2locend
.L800:
	.d2locreg	%offsetof(.Llo222), %offsetof(.Llo223),0
	.d2locreg	%offsetof(.Llo224), %offsetof(.Llo225),3
	.d2locreg	%offsetof(.Llo226), %offsetof(.Llo227),3
	.d2locend
.L802:
	.d2locreg	%offsetof(.Llo219), %offsetof(.Llo228),3
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo230),3
	.d2locreg	%offsetof(.Llo231), %offsetof(.Llo221),30
	.d2locend
.L804:
	.d2locreg	%offsetof(.Llo232), %offsetof(.Llo233),29
	.d2locreg	%offsetof(.Llo234), %offsetof(.Llo235),3
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo221),29
	.d2locend
.L806:
	.d2locreg	%offsetof(.Llo237), %offsetof(.Llo224),4
	.d2locreg	%offsetof(.Llo238), %offsetof(.Llo233),28
	.d2locreg	%offsetof(.Llo239), %offsetof(.Llo240),4
	.d2locreg	%offsetof(.Llo241), %offsetof(.Llo242),3
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo221),28
	.d2locend
.L808:
	.d2locreg	%offsetof(.Llo243), %offsetof(.Llo244),7
	.d2locreg	%offsetof(.Llo245), %offsetof(.Llo233),7
	.d2locreg	%offsetof(.Llo246), %offsetof(.Llo221),7
	.d2locend
.L810:
	.d2locreg	%offsetof(.Llo247), %offsetof(.Llo233),27
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo221),27
	.d2locend
.L812:
	.d2locreg	%offsetof(.Llo248), %offsetof(.Llo220),0
	.d2locreg	%offsetof(.Llo249), %offsetof(.Llo228),0
	.d2locreg	%offsetof(.Llo250), %offsetof(.Llo251),0
	.d2locreg	%offsetof(.Llo231), %offsetof(.Llo252),0
	.d2locreg	%offsetof(.Llo253), %offsetof(.Llo222),0
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo224),0
	.d2locreg	%offsetof(.Llo254), %offsetof(.Llo255),0
	.d2locreg	%offsetof(.Llo256), %offsetof(.Llo225),0
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo243),5
	.d2locreg	%offsetof(.Llo258), %offsetof(.Llo244),0
	.d2locreg	%offsetof(.Llo259), %offsetof(.Llo260),3
	.d2locreg	%offsetof(.Llo245), %offsetof(.Llo233),5
	.d2locreg	%offsetof(.Llo261), %offsetof(.Llo236),0
	.d2locreg	%offsetof(.Llo262), %offsetof(.Llo221),5
	.d2locend
.L821:
	.d2locreg	%offsetof(.Llo263), %offsetof(.Llo264),3
	.d2locreg	%offsetof(.Llo265), %offsetof(.Llo266),31
	.d2locend
.L822:
	.d2locreg	%offsetof(.Llo263), %offsetof(.Llo265),4
	.d2locreg	%offsetof(.Llo267), %offsetof(.Llo266),30
	.d2locend
.L823:
	.d2locreg	%offsetof(.Llo263), %offsetof(.Llo268),5
	.d2locreg	%offsetof(.Llo269), %offsetof(.Llo270),5
	.d2locreg	%offsetof(.Llo271), %offsetof(.Llo272),5
	.d2locreg	%offsetof(.Llo273), %offsetof(.Llo274),5
	.d2locreg	%offsetof(.Llo275), %offsetof(.Llo276),5
	.d2locreg	%offsetof(.Llo277), %offsetof(.Llo278),5
	.d2locend
.L825:
	.d2locreg	%offsetof(.Llo279), %offsetof(.Llo280),29
	.d2locreg	%offsetof(.Llo281), %offsetof(.Llo268),0
	.d2locreg	%offsetof(.Llo282), %offsetof(.Llo266),29
	.d2locend
.L827:
	.d2locreg	%offsetof(.Llo283), %offsetof(.Llo284),4
	.d2locreg	%offsetof(.Llo285), %offsetof(.Llo286),4
	.d2locreg	%offsetof(.Llo287), %offsetof(.Llo288),4
	.d2locreg	%offsetof(.Llo289), %offsetof(.Llo290),4
	.d2locend
.L829:
	.d2locreg	%offsetof(.Llo291), %offsetof(.Llo292),28
	.d2locreg	%offsetof(.Llo293), %offsetof(.Llo294),6
	.d2locend
.L831:
	.d2locreg	%offsetof(.Llo270), %offsetof(.Llo295),5
	.d2locend
.L833:
	.d2locreg	%offsetof(.Llo296), %offsetof(.Llo274),27
	.d2locreg	%offsetof(.Llo297), %offsetof(.Llo276),3
	.d2locreg	%offsetof(.Llo298), %offsetof(.Llo278),3
	.d2locend
.L835:
	.d2locreg	%offsetof(.Llo299), %offsetof(.Llo278),26
	.d2locend
.L837:
	.d2locreg	%offsetof(.Llo300), %offsetof(.Llo301),0
	.d2locreg	%offsetof(.Llo302), %offsetof(.Llo303),0
	.d2locreg	%offsetof(.Llo304), %offsetof(.Llo305),0
	.d2locreg	%offsetof(.Llo306), %offsetof(.Llo307),3
	.d2locreg	%offsetof(.Llo308), %offsetof(.Llo309),0
	.d2locreg	%offsetof(.Llo310), %offsetof(.Llo276),0
	.d2locreg	%offsetof(.Llo311), %offsetof(.Llo278),0
	.d2locend
.L843:
	.d2locreg	%offsetof(.Llo312), %offsetof(.Llo313),3
	.d2locreg	%offsetof(.Llo314), %offsetof(.Llo315),31
	.d2locend
.L844:
	.d2locreg	%offsetof(.Llo312), %offsetof(.Llo314),4
	.d2locreg	%offsetof(.Llo316), %offsetof(.Llo315),30
	.d2locend
.L845:
	.d2locreg	%offsetof(.Llo312), %offsetof(.Llo316),5
	.d2locreg	%offsetof(.Llo317), %offsetof(.Llo315),29
	.d2locend
.L846:
	.d2locreg	%offsetof(.Llo312), %offsetof(.Llo318),6
	.d2locend
.L848:
	.d2locreg	%offsetof(.Llo319), %offsetof(.Llo320),28
	.d2locreg	%offsetof(.Llo321), %offsetof(.Llo318),0
	.d2locreg	%offsetof(.Llo322), %offsetof(.Llo315),28
	.d2locend
.L850:
	.d2locreg	%offsetof(.Llo323), %offsetof(.Llo324),27
	.d2locend
.L852:
	.d2locreg	%offsetof(.Llo325), %offsetof(.Llo326),5
	.d2locend
.L854:
	.d2locreg	%offsetof(.Llo327), %offsetof(.Llo328),26
	.d2locreg	%offsetof(.Llo329), %offsetof(.Llo330),3
	.d2locreg	%offsetof(.Llo331), %offsetof(.Llo332),3
	.d2locend
.L856:
	.d2locreg	%offsetof(.Llo333), %offsetof(.Llo332),25
	.d2locend
.L858:
	.d2locreg	%offsetof(.Llo334), %offsetof(.Llo335),0
	.d2locreg	%offsetof(.Llo336), %offsetof(.Llo337),3
	.d2locreg	%offsetof(.Llo338), %offsetof(.Llo339),0
	.d2locreg	%offsetof(.Llo340), %offsetof(.Llo330),0
	.d2locreg	%offsetof(.Llo341), %offsetof(.Llo332),0
	.d2locend
.L864:
	.d2locreg	%offsetof(.Llo342), %offsetof(.Llo343),3
	.d2locreg	%offsetof(.Llo344), %offsetof(.Llo345),31
	.d2locend
.L865:
	.d2locreg	%offsetof(.Llo342), %offsetof(.Llo346),4
	.d2locreg	%offsetof(.Llo347), %offsetof(.Llo348),4
	.d2locreg	%offsetof(.Llo349), %offsetof(.Llo350),4
	.d2locreg	%offsetof(.Llo351), %offsetof(.Llo352),4
	.d2locend
.L867:
	.d2locreg	%offsetof(.Llo353), %offsetof(.Llo346),0
	.d2locreg	%offsetof(.Llo354), %offsetof(.Llo355),3
	.d2locreg	%offsetof(.Llo356), %offsetof(.Llo348),3
	.d2locreg	%offsetof(.Llo357), %offsetof(.Llo350),3
	.d2locreg	%offsetof(.Llo358), %offsetof(.Llo352),3
	.d2locend
.L869:
	.d2locreg	%offsetof(.Llo359), %offsetof(.Llo350),30
	.d2locreg	%offsetof(.Llo360), %offsetof(.Llo361),30
	.d2locend
.L871:
	.d2locreg	%offsetof(.Llo362), %offsetof(.Llo363),29
	.d2locend
.L879:
	.d2locreg	%offsetof(.Llo364), %offsetof(.Llo365),3
	.d2locend
.L880:
	.d2locreg	%offsetof(.Llo364), %offsetof(.Llo366),4
	.d2locend
.L882:
	.d2locreg	%offsetof(.Llo367), %offsetof(.Llo368),0
	.d2locreg	%offsetof(.Llo369), %offsetof(.Llo370),3
	.d2locend
.L884:
	.d2locreg	%offsetof(.Llo368), %offsetof(.Llo370),0
	.d2locend
.L886:
	.d2locreg	%offsetof(.Llo366), %offsetof(.Llo370),4
	.d2locend
.L888:
	.d2locreg	%offsetof(.Llo371), %offsetof(.Llo367),0
	.d2locreg	%offsetof(.Llo372), %offsetof(.Llo370),3
	.d2locreg	%offsetof(.Llo373), %offsetof(.Llo374),3
	.d2locend
.L894:
	.d2locreg	%offsetof(.Llo375), %offsetof(.Llo376),3
	.d2locreg	%offsetof(.Llo377), %offsetof(.Llo378),3
	.d2locreg	%offsetof(.Llo379), %offsetof(.Llo380),3
	.d2locreg	%offsetof(.Llo381), %offsetof(.Llo382),3
	.d2locreg	%offsetof(.Llo383), %offsetof(.Llo384),3
	.d2locreg	%offsetof(.Llo385), %offsetof(.Llo386),3
	.d2locend
.L897:
	.d2locreg	%offsetof(.Llo375), %offsetof(.Llo387),4
	.d2locreg	%offsetof(.Llo388), %offsetof(.Llo389),31
	.d2locend
.L898:
	.d2locreg	%offsetof(.Llo375), %offsetof(.Llo390),5
	.d2locend
.L900:
	.d2locreg	%offsetof(.Llo391), %offsetof(.Llo378),30
	.d2locend
.L902:
	.d2locreg	%offsetof(.Llo392), %offsetof(.Llo384),29
	.d2locreg	%offsetof(.Llo393), %offsetof(.Llo394),29
	.d2locend
.L904:
	.d2locreg	%offsetof(.Llo375), %offsetof(.Llo384),28
	.d2locreg	%offsetof(.Llo395), %offsetof(.Llo386),28
	.d2locend
.L910:
	.d2locreg	%offsetof(.Llo396), %offsetof(.Llo397),3
	.d2locreg	%offsetof(.Llo398), %offsetof(.Llo399),3
	.d2locend
.L911:
	.d2locreg	%offsetof(.Llo396), %offsetof(.Llo400),4
	.d2locend
.L913:
	.d2locreg	%offsetof(.Llo401), %offsetof(.Llo402),31
	.d2locend
.L915:
	.d2locreg	%offsetof(.Llo403), %offsetof(.Llo404),30
	.d2locend
.L917:
	.d2locreg	%offsetof(.Llo396), %offsetof(.Llo402),29
	.d2locend
.L923:
	.d2locreg	%offsetof(.Llo405), %offsetof(.Llo406),3
	.d2locreg	%offsetof(.Llo407), %offsetof(.Llo408),31
	.d2locend
.L924:
	.d2locreg	%offsetof(.Llo405), %offsetof(.Llo409),4
	.d2locend
.L925:
	.d2locreg	%offsetof(.Llo405), %offsetof(.Llo410),5
	.d2locreg	%offsetof(.Llo411), %offsetof(.Llo412),30
	.d2locend
.L927:
	.d2locreg	%offsetof(.Llo413), %offsetof(.Llo408),29
	.d2locend
.L929:
	.d2locreg	%offsetof(.Llo414), %offsetof(.Llo415),4
	.d2locend
.L931:
	.d2locreg	%offsetof(.Llo416), %offsetof(.Llo417),28
	.d2locreg	%offsetof(.Llo418), %offsetof(.Llo419),28
	.d2locreg	%offsetof(.Llo420), %offsetof(.Llo421),28
	.d2locreg	%offsetof(.Llo422), %offsetof(.Llo423),28
	.d2locreg	%offsetof(.Llo424), %offsetof(.Llo412),28
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo426),28
	.d2locreg	%offsetof(.Llo427), %offsetof(.Llo428),28
	.d2locend
.L933:
	.d2locreg	%offsetof(.Llo429), %offsetof(.Llo421),27
	.d2locreg	%offsetof(.Llo430), %offsetof(.Llo428),27
	.d2locend
.L935:
	.d2locreg	%offsetof(.Llo431), %offsetof(.Llo428),26
	.d2locend
.L937:
	.d2locreg	%offsetof(.Llo432), %offsetof(.Llo433),5
	.d2locreg	%offsetof(.Llo434), %offsetof(.Llo420),5
	.d2locreg	%offsetof(.Llo435), %offsetof(.Llo427),5
	.d2locend
.L939:
	.d2locreg	%offsetof(.Llo436), %offsetof(.Llo411),0
	.d2locreg	%offsetof(.Llo437), %offsetof(.Llo438),0
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo440),3
	.d2locreg	%offsetof(.Llo441), %offsetof(.Llo442),0
	.d2locreg	%offsetof(.Llo443), %offsetof(.Llo407),0
	.d2locreg	%offsetof(.Llo444), %offsetof(.Llo445),0
	.d2locreg	%offsetof(.Llo446), %offsetof(.Llo420),0
	.d2locreg	%offsetof(.Llo430), %offsetof(.Llo424),0
	.d2locreg	%offsetof(.Llo447), %offsetof(.Llo427),0
	.d2locreg	%offsetof(.Llo448), %offsetof(.Llo449),0
	.d2locend
.L945:
	.d2locreg	%offsetof(.Llo450), %offsetof(.Llo451),3
	.d2locend
.L946:
	.d2locreg	%offsetof(.Llo450), %offsetof(.Llo452),4
	.d2locend
.L949:
	.d2locreg	%offsetof(.Llo450), %offsetof(.Llo452),5
	.d2locreg	%offsetof(.Llo453), %offsetof(.Llo454),31
	.d2locreg	%offsetof(.Llo455), %offsetof(.Llo456),31
	.d2locend
.L951:
	.d2locreg	%offsetof(.Llo457), %offsetof(.Llo452),0
	.d2locreg	%offsetof(.Llo458), %offsetof(.Llo459),3
	.d2locreg	%offsetof(.Llo460), %offsetof(.Llo455),3
	.d2locreg	%offsetof(.Llo461), %offsetof(.Llo462),3
	.d2locreg	%offsetof(.Llo463), %offsetof(.Llo464),3
	.d2locend
.L953:
	.d2locreg	%offsetof(.Llo465), %offsetof(.Llo454),30
	.d2locreg	%offsetof(.Llo466), %offsetof(.Llo467),30
	.d2locreg	%offsetof(.Llo468), %offsetof(.Llo469),30
	.d2locreg	%offsetof(.Llo455), %offsetof(.Llo456),30
	.d2locreg	%offsetof(.Llo470), %offsetof(.Llo471),30
	.d2locreg	%offsetof(.Llo472), %offsetof(.Llo473),30
	.d2locend
.L955:
	.d2locreg	%offsetof(.Llo474), %offsetof(.Llo454),29
	.d2locreg	%offsetof(.Llo475), %offsetof(.Llo459),29
	.d2locreg	%offsetof(.Llo476), %offsetof(.Llo456),29
	.d2locreg	%offsetof(.Llo477), %offsetof(.Llo462),29
	.d2locreg	%offsetof(.Llo478), %offsetof(.Llo464),29
	.d2locend
.L957:
	.d2locreg	%offsetof(.Llo450), %offsetof(.Llo454),28
	.d2locend
.L964:
	.d2locreg	%offsetof(.Llo479), %offsetof(.Llo480),3
	.d2locreg	%offsetof(.Llo481), %offsetof(.Llo482),0
	.d2locend
.L966:
	.d2locreg	%offsetof(.Llo481), %offsetof(.Llo483),7
	.d2locend
.L968:
	.d2locreg	%offsetof(.Llo479), %offsetof(.Llo484),31
	.d2locend
.L970:
	.d2locreg	%offsetof(.Llo485), %offsetof(.Llo486),5
	.d2locend
.L972:
	.d2locreg	%offsetof(.Llo487), %offsetof(.Llo488),3
	.d2locend
.L978:
	.d2locreg	%offsetof(.Llo489), %offsetof(.Llo490),3
	.d2locend
.L984:
	.d2locreg	%offsetof(.Llo491), %offsetof(.Llo492),3
	.d2locreg	%offsetof(.Llo493), %offsetof(.Llo494),31
	.d2locend
.L985:
	.d2locreg	%offsetof(.Llo491), %offsetof(.Llo492),4
	.d2locreg	%offsetof(.Llo495), %offsetof(.Llo496),30
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Pwm_eMios_BufferTransferEnableDisable"
	.wrcm.nstrlist "calls", "SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_08","SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_08"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Pwm_eMios_GetChannelState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Pwm_eMios_ProcessCommonInterrupt"
	.wrcm.nstrlist "calls", "Pwm_Notification"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Pwm_eMios_SetChannelOutput"
	.wrcm.nstrlist "calls", "SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_06","SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_06"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Pwm_eMios_SetCounterBus"
	.wrcm.nstrlist "calls", "Pwm_eMios_GetMasterBus","Pwm_eMios_SetRegs_OPWMB_mode","SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_05","SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_05"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Pwm_eMios_DisableNotification"
	.wrcm.nstrlist "calls", "SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_04","SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_04"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Pwm_eMios_EnableNotification"
	.wrcm.nstrlist "calls", "SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_03","SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_03"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Pwm_eMios_GetOutputState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Pwm_eMios_SetOutputToIdle"
	.wrcm.nstrlist "calls", "SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_02","SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_02"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Pwm_eMios_SetPeriodAndDuty"
	.wrcm.nstrlist "calls", "Pwm_eMios_GetMasterBus","Pwm_eMios_SetRegs_OPWMFMB_mode","SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_01","SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_01"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Pwm_eMios_SetDutyCycle"
	.wrcm.nstrlist "calls", "Pwm_eMios_GetMasterBus","Pwm_eMios_SetRegs_OPWMB_mode","Pwm_eMios_SetRegs_OPWMFMB_mode","SchM_Enter_Pwm_PWM_EXCLUSIVE_AREA_00","SchM_Exit_Pwm_PWM_EXCLUSIVE_AREA_00"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Pwm_eMios_DeInit"
	.wrcm.nstrlist "calls", "Pwm_eMios_GetMasterBus","eMios_StopChannel"
	.wrcm.nint32 "frameSize", 112
	.wrcm.end
	.wrcm.nelem "Pwm_eMios_Init"
	.wrcm.nstrlist "calls", "Pwm_eMios_GetMasterBus","Pwm_eMios_SetRegs_OPWMB_mode","Pwm_eMios_SetRegs_OPWMFMB_mode","eMios_StartChannel"
	.wrcm.nint32 "frameSize", 384
	.wrcm.end
	.wrcm.nelem "Pwm_eMios_SetRegs_OPWMFMB_mode"
	.wrcm.nstrlist "calls", "Pwm_eMios_ComputeDutycycle_16bits","Pwm_eMios_UpdateChannelAB"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Pwm_eMios_SetRegs_OPWMB_mode"
	.wrcm.nstrlist "calls", "Pwm_eMios_ComputeDutycycle_16bits","Pwm_eMios_UpdateChannelAB"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Pwm_eMios_ComputeDutycycle_16bits"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Pwm_eMios_UpdateChannelAB"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Pwm_eMios_GetMasterBus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Pwm_eMios.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Pwm_eMios.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Pwm_eMios.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Pwm_eMios.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Pwm_eMios.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Pwm_eMios.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Pwm\ssc\make\..\..\generator\integration_package\src\Pwm_eMios.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
