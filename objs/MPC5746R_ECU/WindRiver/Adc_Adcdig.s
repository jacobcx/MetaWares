#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Adc_Adcdig.c"
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
# LOCAL_INLINE FUNC(void, ADC_CODE) Adc_Adcdig_SetCtrRegisters
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L675:
	.section	.invalid_TEXT,,c
#$$ld
.L671:
	.0byte		.L669
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Adcdig.c"
        .d2line         539,35
#$$ld
.L678:

#$$bf	Adc_Adcdig_SetCtrRegisters,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.d2_cfa_start __cie
Adc_Adcdig_SetCtrRegisters:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Unit=r3 Unit=r3
	mr		r4,r4		# ConvTime=r4 ConvTime=r4
	mr		r5,r5		# ConvTime1=r5 ConvTime1=r5
	mr		r7,r6		# ConvTime2=r7 ConvTime2=r6
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit,
#     VAR(Adc_ConversionTimeType, AUTOMATIC) ConvTime,
#     VAR(Adc_ConversionTimeType, AUTOMATIC) ConvTime1,
#     VAR(Adc_ConversionTimeType, AUTOMATIC) ConvTime2
# )
# {
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_CtrPresent[Unit][ADC_CTR0_INDEX])
	.d2line		547
	lis		r6,(Adc_RegistersAvailable+36)@ha
.Llo12:
	e_add16i		r6,r6,(Adc_RegistersAvailable+36)@l
	rlwinm		r0,r3,0,24,31		# Unit=r3
	e_mulli		r0,r0,3
	lbzx		r0,r6,r0
	se_cmpi		r0,1
	bc		0,2,.L518	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_CTR0_REG_ADDR32(Unit),ConvTime);
	.d2line		551
.Llo13:
	rlwinm		r6,r4,0,16,31		# ConvTime=r4
	lis		r4,ADCDIG_BASE_ADDR32@ha		# ConvTime=r4
	e_add16i		r4,r4,ADCDIG_BASE_ADDR32@l		# ConvTime=r4 ConvTime=r4
	rlwinm		r0,r3,2,22,29		# Unit=r3
	lwzx		r4,r4,r0		# ConvTime=r4 ConvTime=r4
	stw		r6,148(r4)		# ConvTime=r4
.L518:
#     }
# #if (ADC_CTR1_AVAILABLE == STD_ON)
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_CtrPresent[Unit][ADC_CTR1_INDEX])
	.d2line		554
.Llo5:
	lis		r4,(Adc_RegistersAvailable+37)@ha		# ConvTime=r4
.Llo6:
	e_add16i		r4,r4,(Adc_RegistersAvailable+37)@l		# ConvTime=r4 ConvTime=r4
	rlwinm		r0,r3,0,24,31		# Unit=r3
	e_mulli		r0,r0,3
	lbzx		r0,r4,r0		# ConvTime=r4
	se_cmpi		r0,1
	bc		0,2,.L519	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_CTR1_REG_ADDR32(Unit),ConvTime1);
	.d2line		558
.Llo7:
	rlwinm		r5,r5,0,16,31		# ConvTime1=r5 ConvTime1=r5
	lis		r4,ADCDIG_BASE_ADDR32@ha		# ConvTime=r4
.Llo8:
	e_add16i		r4,r4,ADCDIG_BASE_ADDR32@l		# ConvTime=r4 ConvTime=r4
	rlwinm		r0,r3,2,22,29		# Unit=r3
	lwzx		r4,r4,r0		# ConvTime=r4 ConvTime=r4
	stw		r5,152(r4)		# ConvTime=r4 ConvTime1=r5
.L519:
#     }
# #else
#     (void)ConvTime1;
# #endif
# #if (ADC_CTR2_AVAILABLE == STD_ON)
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_CtrPresent[Unit][ADC_CTR2_INDEX])
	.d2line		564
.Llo9:
	lis		r4,(Adc_RegistersAvailable+38)@ha		# ConvTime=r4
.Llo10:
	e_add16i		r4,r4,(Adc_RegistersAvailable+38)@l		# ConvTime=r4 ConvTime=r4
	rlwinm		r0,r3,0,24,31		# Unit=r3
	e_mulli		r0,r0,3
	lbzx		r0,r4,r0		# ConvTime=r4
	se_cmpi		r0,1
	bc		0,2,.L517	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_CTR2_REG_ADDR32(Unit),ConvTime2);
	.d2line		568
.Llo2:
	rlwinm		r7,r7,0,16,31		# ConvTime2=r7 ConvTime2=r7
	lis		r4,ADCDIG_BASE_ADDR32@ha		# ConvTime=r4
.Llo11:
	e_add16i		r4,r4,ADCDIG_BASE_ADDR32@l		# ConvTime=r4 ConvTime=r4
.Llo3:
	rlwinm		r3,r3,2,22,29		# Unit=r3 Unit=r3
	lwzx		r3,r4,r3		# Unit=r3 ConvTime=r4
	stw		r7,156(r3)		# Unit=r3 ConvTime2=r7
.L517:
#     }
# #else
#     (void)ConvTime2;
# #endif
# }
	.d2line		573
	.d2epilogue_begin
.Llo4:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L679:
	.type		Adc_Adcdig_SetCtrRegisters,@function
	.size		Adc_Adcdig_SetCtrRegisters,.-Adc_Adcdig_SetCtrRegisters
# Number of nodes = 81

# Allocations for Adc_Adcdig_SetCtrRegisters
#	?a4		Unit
#	?a5		ConvTime
#	?a6		ConvTime1
#	?a7		ConvTime2
# LOCAL_INLINE FUNC(void, ADC_CODE) Adc_Adcdig_SetPsrRegisters
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         586,35
#$$ld
.L694:

#$$bf	Adc_Adcdig_SetPsrRegisters,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.d2_cfa_start __cie
Adc_Adcdig_SetPsrRegisters:
.Llo14:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Unit=r3 Unit=r3
	mr		r4,r4		# u32Precision=r4 u32Precision=r4
	mr		r5,r5		# u32Extended=r5 u32Extended=r5
	mr		r7,r6		# u32External=r7 u32External=r6
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit,
#     VAR(uint32, AUTOMATIC) u32Precision,
#     VAR(uint32, AUTOMATIC) u32Extended,
#     VAR(uint32, AUTOMATIC) u32External
# )
# {
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_PsrPresent[Unit][ADC_PSR0_INDEX])
	.d2line		594
	lis		r6,(Adc_RegistersAvailable+24)@ha
.Llo25:
	e_add16i		r6,r6,(Adc_RegistersAvailable+24)@l
	rlwinm		r0,r3,0,24,31		# Unit=r3
	e_mulli		r0,r0,3
	lbzx		r0,r6,r0
	se_cmpi		r0,1
	bc		0,2,.L525	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_PSR0_REG_ADDR32(Unit), u32Precision);
	.d2line		598
.Llo26:
	lis		r6,ADCDIG_BASE_ADDR32@ha
	e_add16i		r6,r6,ADCDIG_BASE_ADDR32@l
	rlwinm		r0,r3,2,22,29		# Unit=r3
	lwzx		r6,r6,r0
	stw		r4,132(r6)		# u32Precision=r4
.L525:
#     }
# 
# #if (ADC_PSR1_AVAILABLE == STD_ON)
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_PsrPresent[Unit][ADC_PSR1_INDEX])
	.d2line		602
.Llo18:
	lis		r4,(Adc_RegistersAvailable+25)@ha		# u32Precision=r4
.Llo19:
	e_add16i		r4,r4,(Adc_RegistersAvailable+25)@l		# u32Precision=r4 u32Precision=r4
	rlwinm		r0,r3,0,24,31		# Unit=r3
	e_mulli		r0,r0,3
	lbzx		r0,r4,r0		# u32Precision=r4
	se_cmpi		r0,1
	bc		0,2,.L526	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_PSR1_REG_ADDR32(Unit), u32Extended);
	.d2line		606
.Llo20:
	lis		r4,ADCDIG_BASE_ADDR32@ha		# u32Precision=r4
.Llo21:
	e_add16i		r4,r4,ADCDIG_BASE_ADDR32@l		# u32Precision=r4 u32Precision=r4
	rlwinm		r0,r3,2,22,29		# Unit=r3
	lwzx		r4,r4,r0		# u32Precision=r4 u32Precision=r4
	stw		r5,136(r4)		# u32Precision=r4 u32Extended=r5
.L526:
#     }
# #else
#     (void)u32Extended;
# #endif /* (ADC_PSR1_AVAILABLE == STD_ON) */
# 
# #if (ADC_PSR2_AVAILABLE == STD_ON)
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_PsrPresent[Unit][ADC_PSR2_INDEX])
	.d2line		613
.Llo22:
	lis		r4,(Adc_RegistersAvailable+26)@ha		# u32Precision=r4
.Llo23:
	e_add16i		r4,r4,(Adc_RegistersAvailable+26)@l		# u32Precision=r4 u32Precision=r4
	rlwinm		r0,r3,0,24,31		# Unit=r3
	e_mulli		r0,r0,3
	lbzx		r0,r4,r0		# u32Precision=r4
	se_cmpi		r0,1
	bc		0,2,.L524	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_PSR2_REG_ADDR32(Unit), u32External);
	.d2line		617
.Llo15:
	lis		r4,ADCDIG_BASE_ADDR32@ha		# u32Precision=r4
.Llo24:
	e_add16i		r4,r4,ADCDIG_BASE_ADDR32@l		# u32Precision=r4 u32Precision=r4
.Llo16:
	rlwinm		r3,r3,2,22,29		# Unit=r3 Unit=r3
	lwzx		r3,r4,r3		# Unit=r3 u32Precision=r4
	stw		r7,140(r3)		# Unit=r3 u32External=r7
.L524:
#     }
# #else
#     (void)u32External;
# #endif /* (ADC_PSR2_AVAILABLE == STD_ON) */
# }
	.d2line		622
	.d2epilogue_begin
.Llo17:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L695:
	.type		Adc_Adcdig_SetPsrRegisters,@function
	.size		Adc_Adcdig_SetPsrRegisters,.-Adc_Adcdig_SetPsrRegisters
# Number of nodes = 78

# Allocations for Adc_Adcdig_SetPsrRegisters
#	?a4		Unit
#	?a5		u32Precision
#	?a6		u32Extended
#	?a7		u32External
# FUNC(void, ADC_CODE) Adc_Adcdig_SetNcmrRegisters
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         639,22
#$$ld
.L705:

#$$bf	Adc_Adcdig_SetNcmrRegisters,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		Adc_Adcdig_SetNcmrRegisters
	.d2_cfa_start __cie
Adc_Adcdig_SetNcmrRegisters:
.Llo27:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Unit=r3 Unit=r3
	mr		r4,r4		# u32Precision=r4 u32Precision=r4
	mr		r5,r5		# u32Extended=r5 u32Extended=r5
	mr		r7,r6		# u32External=r7 u32External=r6
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit,
#     VAR(uint32, AUTOMATIC) u32Precision,
#     VAR(uint32, AUTOMATIC) u32Extended,
#     VAR(uint32, AUTOMATIC) u32External
# )
# {
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_NcmrPresent[Unit][ADC_NCMR0_INDEX])
	.d2line		647
	lis		r6,(Adc_RegistersAvailable+48)@ha
.Llo38:
	e_add16i		r6,r6,(Adc_RegistersAvailable+48)@l
	rlwinm		r0,r3,0,24,31		# Unit=r3
	e_mulli		r0,r0,3
	lbzx		r0,r6,r0
	se_cmpi		r0,1
	bc		0,2,.L532	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_NCMR0_REG_ADDR32(Unit), u32Precision);
	.d2line		651
.Llo39:
	lis		r6,ADCDIG_BASE_ADDR32@ha
	e_add16i		r6,r6,ADCDIG_BASE_ADDR32@l
	rlwinm		r0,r3,2,22,29		# Unit=r3
	lwzx		r6,r6,r0
	stw		r4,164(r6)		# u32Precision=r4
.L532:
#     }
# #if (ADC_NCMR1_AVAILABLE == STD_ON)
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_NcmrPresent[Unit][ADC_NCMR1_INDEX])
	.d2line		654
.Llo31:
	lis		r4,(Adc_RegistersAvailable+49)@ha		# u32Precision=r4
.Llo32:
	e_add16i		r4,r4,(Adc_RegistersAvailable+49)@l		# u32Precision=r4 u32Precision=r4
	rlwinm		r0,r3,0,24,31		# Unit=r3
	e_mulli		r0,r0,3
	lbzx		r0,r4,r0		# u32Precision=r4
	se_cmpi		r0,1
	bc		0,2,.L533	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_NCMR1_REG_ADDR32(Unit), u32Extended);
	.d2line		658
.Llo33:
	lis		r4,ADCDIG_BASE_ADDR32@ha		# u32Precision=r4
.Llo34:
	e_add16i		r4,r4,ADCDIG_BASE_ADDR32@l		# u32Precision=r4 u32Precision=r4
	rlwinm		r0,r3,2,22,29		# Unit=r3
	lwzx		r4,r4,r0		# u32Precision=r4 u32Precision=r4
	stw		r5,168(r4)		# u32Precision=r4 u32Extended=r5
.L533:
#     }
# #else
#     (void)u32Extended;
# #endif /* (ADC_NCMR1_AVAILABLE == STD_ON) */
# 
# #if (ADC_NCMR2_AVAILABLE == STD_ON)
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_NcmrPresent[Unit][ADC_NCMR2_INDEX])
	.d2line		665
.Llo35:
	lis		r4,(Adc_RegistersAvailable+50)@ha		# u32Precision=r4
.Llo36:
	e_add16i		r4,r4,(Adc_RegistersAvailable+50)@l		# u32Precision=r4 u32Precision=r4
	rlwinm		r0,r3,0,24,31		# Unit=r3
	e_mulli		r0,r0,3
	lbzx		r0,r4,r0		# u32Precision=r4
	se_cmpi		r0,1
	bc		0,2,.L531	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_NCMR2_REG_ADDR32(Unit), u32External);
	.d2line		669
.Llo28:
	lis		r4,ADCDIG_BASE_ADDR32@ha		# u32Precision=r4
.Llo37:
	e_add16i		r4,r4,ADCDIG_BASE_ADDR32@l		# u32Precision=r4 u32Precision=r4
.Llo29:
	rlwinm		r3,r3,2,22,29		# Unit=r3 Unit=r3
	lwzx		r3,r4,r3		# Unit=r3 u32Precision=r4
	stw		r7,172(r3)		# Unit=r3 u32External=r7
.L531:
#     }
# #else
#     (void)u32External;
# #endif /* (ADC_NCMR2_AVAILABLE == STD_ON) */
# }
	.d2line		674
	.d2epilogue_begin
.Llo30:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L706:
	.type		Adc_Adcdig_SetNcmrRegisters,@function
	.size		Adc_Adcdig_SetNcmrRegisters,.-Adc_Adcdig_SetNcmrRegisters
# Number of nodes = 78

# Allocations for Adc_Adcdig_SetNcmrRegisters
#	?a4		Unit
#	?a5		u32Precision
#	?a6		u32Extended
#	?a7		u32External
# FUNC(void, ADC_CODE) Adc_Adcdig_SetJcmrRegisters
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         692,22
#$$ld
.L714:

#$$bf	Adc_Adcdig_SetJcmrRegisters,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		Adc_Adcdig_SetJcmrRegisters
	.d2_cfa_start __cie
Adc_Adcdig_SetJcmrRegisters:
.Llo40:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Unit=r3 Unit=r3
	mr		r4,r4		# u32Precision=r4 u32Precision=r4
	mr		r5,r5		# u32Extended=r5 u32Extended=r5
	mr		r7,r6		# u32External=r7 u32External=r6
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit,
#     VAR(uint32, AUTOMATIC) u32Precision,
#     VAR(uint32, AUTOMATIC) u32Extended,
#     VAR(uint32, AUTOMATIC) u32External
# )
# {
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_JcmrPresent[Unit][ADC_JCMR0_INDEX])
	.d2line		700
	lis		r6,(Adc_RegistersAvailable+60)@ha
.Llo51:
	e_add16i		r6,r6,(Adc_RegistersAvailable+60)@l
	rlwinm		r0,r3,0,24,31		# Unit=r3
	e_mulli		r0,r0,3
	lbzx		r0,r6,r0
	se_cmpi		r0,1
	bc		0,2,.L539	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_JCMR0_REG_ADDR32(Unit), u32Precision);
	.d2line		704
.Llo52:
	lis		r6,ADCDIG_BASE_ADDR32@ha
	e_add16i		r6,r6,ADCDIG_BASE_ADDR32@l
	rlwinm		r0,r3,2,22,29		# Unit=r3
	lwzx		r6,r6,r0
	stw		r4,180(r6)		# u32Precision=r4
.L539:
#     }
# #if (ADC_JCMR1_AVAILABLE == STD_ON)
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_JcmrPresent[Unit][ADC_JCMR1_INDEX])
	.d2line		707
.Llo44:
	lis		r4,(Adc_RegistersAvailable+61)@ha		# u32Precision=r4
.Llo45:
	e_add16i		r4,r4,(Adc_RegistersAvailable+61)@l		# u32Precision=r4 u32Precision=r4
	rlwinm		r0,r3,0,24,31		# Unit=r3
	e_mulli		r0,r0,3
	lbzx		r0,r4,r0		# u32Precision=r4
	se_cmpi		r0,1
	bc		0,2,.L540	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_JCMR1_REG_ADDR32(Unit), u32Extended);
	.d2line		711
.Llo46:
	lis		r4,ADCDIG_BASE_ADDR32@ha		# u32Precision=r4
.Llo47:
	e_add16i		r4,r4,ADCDIG_BASE_ADDR32@l		# u32Precision=r4 u32Precision=r4
	rlwinm		r0,r3,2,22,29		# Unit=r3
	lwzx		r4,r4,r0		# u32Precision=r4 u32Precision=r4
	stw		r5,184(r4)		# u32Precision=r4 u32Extended=r5
.L540:
#     }
# #else
#     (void)u32Extended;
# #endif /* (ADC_NCMR1_AVAILABLE == STD_ON) */
# 
# #if (ADC_JCMR2_AVAILABLE == STD_ON)
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_JcmrPresent[Unit][ADC_JCMR2_INDEX])
	.d2line		718
.Llo48:
	lis		r4,(Adc_RegistersAvailable+62)@ha		# u32Precision=r4
.Llo49:
	e_add16i		r4,r4,(Adc_RegistersAvailable+62)@l		# u32Precision=r4 u32Precision=r4
	rlwinm		r0,r3,0,24,31		# Unit=r3
	e_mulli		r0,r0,3
	lbzx		r0,r4,r0		# u32Precision=r4
	se_cmpi		r0,1
	bc		0,2,.L538	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_JCMR2_REG_ADDR32(Unit), u32External);
	.d2line		722
.Llo41:
	lis		r4,ADCDIG_BASE_ADDR32@ha		# u32Precision=r4
.Llo50:
	e_add16i		r4,r4,ADCDIG_BASE_ADDR32@l		# u32Precision=r4 u32Precision=r4
.Llo42:
	rlwinm		r3,r3,2,22,29		# Unit=r3 Unit=r3
	lwzx		r3,r4,r3		# Unit=r3 u32Precision=r4
	stw		r7,188(r3)		# Unit=r3 u32External=r7
.L538:
#     }
# #else
#     (void)u32External;
# #endif /* (ADC_NCMR2_AVAILABLE == STD_ON) */
# }
	.d2line		727
	.d2epilogue_begin
.Llo43:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L715:
	.type		Adc_Adcdig_SetJcmrRegisters,@function
	.size		Adc_Adcdig_SetJcmrRegisters,.-Adc_Adcdig_SetJcmrRegisters
# Number of nodes = 78

# Allocations for Adc_Adcdig_SetJcmrRegisters
#	?a4		Unit
#	?a5		u32Precision
#	?a6		u32Extended
#	?a7		u32External
# static FUNC(Std_ReturnType, ADC_CODE)  Adc_Adcdig_WritePowerDownBit
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1161,40
#$$ld
.L723:

#$$bf	Adc_Adcdig_WritePowerDownBit,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Adc_Adcdig_WritePowerDownBit:
.Llo53:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo64:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# u32ExpectedMsrStatus=r0
	.d2_cfa_offset    108,-1
	mr		r30,r3		# Unit=r30 Unit=r3
	mr		r31,r4		# bSetPowerDown=r31 bSetPowerDown=r4
	.d2prologue_end
# (
#  VAR(Adc_HwUnitType,AUTOMATIC)Unit, 
#  VAR(boolean, AUTOMATIC) bSetPowerDown
# )
# {
#     VAR(uint32, AUTOMATIC)  u32MsrStatus;
#     VAR(volatile uint32, AUTOMATIC) u32Timeout = ADC_TIMEOUT_COUNTER;
	.d2line		1168
	diab.li		r0,65535		# u32ExpectedMsrStatus=r0
	stw		r0,8(r1)		# u32ExpectedMsrStatus=r0
#     VAR(uint32, AUTOMATIC)  u32ExpectedMsrStatus = ADCDIG_IDLE_OFFSET_STATUS_U32;
	.d2line		1169
	diab.li		r0,0		# u32ExpectedMsrStatus=r0
#         
#     SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_31();
	.d2line		1171
.Llo65:
	bl		SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_31
#     if((boolean)FALSE == bSetPowerDown)
	.d2line		1172
.Llo54:
	rlwinm		r31,r31,0,24,31		# bSetPowerDown=r31 bSetPowerDown=r31
.Llo57:
	se_cmpi		r31,0		# bSetPowerDown=r31
	bc		0,2,.L554	# ne
#     {
#         /* comes out from PowerDown */
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_BIT_CLEAR32(ADCDIG_MCR_REG_ADDR32(Unit), ADCDIG_POWER_DOWN_U32);
	.d2line		1177
.Llo55:
	lis		r3,ADCDIG_BASE_ADDR32@ha
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l
	rlwinm		r0,r30,2,22,29		# u32ExpectedMsrStatus=r0 Unit=r30
	lwzx		r3,r3,r0
	lwz		r0,0(r3)		# u32ExpectedMsrStatus=r0
.Llo66:
	.diab.bclri		r0,31		# u32ExpectedMsrStatus=r0
	stw		r0,0(r3)		# u32ExpectedMsrStatus=r0
#         u32ExpectedMsrStatus = ADCDIG_IDLE_OFFSET_STATUS_U32;
	.d2line		1178
	diab.li		r31,0		# u32ExpectedMsrStatus=r31
	b		.L555
.L554:
#     }
#     else
#     {
#         /* enter into power-down mode */
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_BIT_SET32(ADCDIG_MCR_REG_ADDR32(Unit), ADCDIG_POWER_DOWN_U32);
	.d2line		1185
.Llo67:
	lis		r3,ADCDIG_BASE_ADDR32@ha
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l
	rlwinm		r0,r30,2,22,29		# u32ExpectedMsrStatus=r0 Unit=r30
	lwzx		r3,r3,r0
	lwz		r0,0(r3)		# u32ExpectedMsrStatus=r0
.Llo68:
	.diab.bseti		r0,31		# u32ExpectedMsrStatus=r0
	stw		r0,0(r3)		# u32ExpectedMsrStatus=r0
#         u32ExpectedMsrStatus = ADCDIG_POWERDOWN_STATUS_U32;
	.d2line		1186
	diab.li		r31,1		# u32ExpectedMsrStatus=r31
.L555:
#     }
#     SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_31();
	.d2line		1188
.Llo69:
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_31
# 
#     /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#     /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#     u32MsrStatus = (REG_READ32(ADCDIG_MSR_REG_ADDR32(Unit))) & ADCDIG_STATUS_U32;
	.d2line		1192
.Llo70:
	lis		r3,ADCDIG_BASE_ADDR32@ha
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l
	rlwinm		r0,r30,2,22,29		# u32ExpectedMsrStatus=r0 Unit=r30
	lwzx		r3,r3,r0
	lwz		r0,4(r3)		# u32ExpectedMsrStatus=r0
	rlwinm		r0,r0,0,29,31		# u32ExpectedMsrStatus=r0 u32ExpectedMsrStatus=r0
.Llo58:
	mr		r0,r0		# u32MsrStatus=r0 u32MsrStatus=r0
.L556:
#     while(u32MsrStatus != u32ExpectedMsrStatus)
	.d2line		1193
	se_cmpl		r0,r31		# u32MsrStatus=r0 u32ExpectedMsrStatus=r31
	bc		1,2,.L557	# eq
#     {
#         if (u32Timeout > 0UL)
	.d2line		1195
.Llo59:
	lwz		r0,8(r1)		# u32MsrStatus=r0
.Llo60:
	se_cmpi		r0,0		# u32MsrStatus=r0
	bc		1,2,.L558	# eq
#         {
#             u32Timeout--;
	.d2line		1197
.Llo61:
	lwz		r3,8(r1)
	diab.addi		r3,r3,-1
	stw		r3,8(r1)
	b		.L559
.L558:
#         }
#         else
#         {
# #if (ADC_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
#             if((uint32)STD_ON == Adc_E_TimeoutCfg.state)
#             {
#                 /* Report production error and return from function. */
#                 Dem_ReportErrorStatus((Dem_EventIdType)Adc_E_TimeoutCfg.id, DEM_EVENT_STATUS_FAILED);
#             }
# #endif /* (ADC_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF) */
#             /** @violates @ref Adc_Adcdig_c_REF_4 Return statement before end of function. */
#             return (Std_ReturnType)E_NOT_OK;
	.d2line		1209
	diab.li		r3,1
	b		.L553
.L559:
#         }
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         u32MsrStatus = (REG_READ32(ADCDIG_MSR_REG_ADDR32(Unit))) & ADCDIG_STATUS_U32;
	.d2line		1213
	lis		r3,ADCDIG_BASE_ADDR32@ha
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l
	rlwinm		r0,r30,2,22,29		# u32MsrStatus=r0 Unit=r30
	lwzx		r3,r3,r0
	lwz		r0,4(r3)		# u32MsrStatus=r0
.Llo62:
	rlwinm		r0,r0,0,29,31		# u32MsrStatus=r0 u32MsrStatus=r0
	mr		r0,r0		# u32MsrStatus=r0 u32MsrStatus=r0
	b		.L556
.L557:
#     }
#     
#     
#     return(Std_ReturnType)E_OK;
	.d2line		1217
.Llo63:
	diab.li		r3,0
.L553:
# }
	.d2line		1218
	.d2epilogue_begin
.Llo56:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u32MsrStatus=r0
	mtspr		lr,r0		# u32MsrStatus=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L724:
	.type		Adc_Adcdig_WritePowerDownBit,@function
	.size		Adc_Adcdig_WritePowerDownBit,.-Adc_Adcdig_WritePowerDownBit
# Number of nodes = 88

# Allocations for Adc_Adcdig_WritePowerDownBit
#	?a4		Unit
#	?a5		bSetPowerDown
#	?a6		$$129
#	?a7		$$128
#	?a8		u32MsrStatus
#	SP,8		u32Timeout
#	?a9		u32ExpectedMsrStatus
# LOCAL_INLINE FUNC(Std_ReturnType, ADC_CODE) Adc_Adcdig_InitUnitHardware
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         842,45
#$$ld
.L738:

#$$bf	Adc_Adcdig_InitUnitHardware,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Adc_Adcdig_InitUnitHardware:
.Llo71:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Unit=r31 Unit=r3
	mr		r30,r4		# pConfigPtr=r30 pConfigPtr=r4
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType,AUTOMATIC)Unit,
#     P2CONST(Adc_Adcdig_HwUnitConfigurationType, AUTOMATIC, ADC_APPL_CONST) pConfigPtr
# )
# {
#     VAR(Adc_HwUnitType, AUTOMATIC) HwIndex; /* Hardware index in the structure*/
#     VAR(uint32, AUTOMATIC) u32PscrVal;
# #ifdef ADC_WDG_SUPPORTED
#     VAR(uint32, AUTOMATIC) u32WtimrValue = 0UL; /* watchdog timer temp variable */
# #endif /* ADC_WDG_SUPPORTED */
#     VAR(volatile uint32, AUTOMATIC) u32Timeout = ADC_TIMEOUT_COUNTER;
	.d2line		853
	diab.li		r0,65535
	stw		r0,8(r1)
# #if (ADC_SET_ADC_CONV_TIME_ONCE == STD_ON)
#     VAR(Adc_ConversionTimeType, AUTOMATIC) ConvTime1 = 0U;
#     VAR(Adc_ConversionTimeType, AUTOMATIC) ConvTime2 = 0U;
# #endif /* ADC_SET_ADC_CONV_TIME_ONCE == STD_ON */
# #if (ADC_SET_ADC_PRESAMPLE_ONCE == STD_ON)
#     VAR(Adc_GroupType,AUTOMATIC) Group = 0U; /* Group Index */
#     VAR(uint32, AUTOMATIC)  u32Precision = 0U;
#     VAR(uint32, AUTOMATIC)  u32Extended = 0U;
#     VAR(uint32, AUTOMATIC)  u32External = 0U;
# #endif /*ADC_SET_ADC_PRESAMPLE_ONCE == STD_ON) */
#     /* enter into power-down mode */
#     if((Std_ReturnType)E_NOT_OK == Adc_Adcdig_WritePowerDownBit(Unit, (boolean)TRUE))
	.d2line		865
	mr		r3,r31		# Unit=r3 Unit=r31
.Llo72:
	diab.li		r4,1
.Llo77:
	bl		Adc_Adcdig_WritePowerDownBit
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L546	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_4 Return statement before end of function. */
#         return (Std_ReturnType)E_NOT_OK;
	.d2line		868
.Llo73:
	diab.li		r3,1
	b		.L545
.L546:
#     }        
# 
#     /* Get the index of hardware Unit*/
#     HwIndex = Adc_pCfgPtr->Misc.aHwLogicalId[Unit];
	.d2line		872
	lis		r3,Adc_pCfgPtr@ha		# Unit=r3
	lwz		r3,Adc_pCfgPtr@l(r3)		# Unit=r3 Unit=r3
	rlwinm		r7,r31,0,24,31		# Unit=r31
	se_add		r3,r7		# Unit=r3 Unit=r3
	lbz		r29,40(r3)		# HwIndex=r29 Unit=r3
.Llo80:
	mr		r29,r29		# HwIndex=r29 HwIndex=r29
# 
#     /*ClkPrescaler, Auto Clock Off , Offset Refresh, Right align and overwrite */
#     /**
#     * @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic
#     * @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer.
#     * @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type.
#     */
#     REG_BIT_SET32(ADCDIG_MCR_REG_ADDR32(Unit), (pConfigPtr[HwIndex].u32AdcMainConfig | pConfigPtr[HwIndex].u32AdcPrescale));
	.d2line		880
	lis		r5,ADCDIG_BASE_ADDR32@ha
	e_add16i		r5,r5,ADCDIG_BASE_ADDR32@l
	rlwinm		r7,r31,2,22,29		# Unit=r31
	lwzx		r3,r5,r7		# Unit=r3
	lwz		r6,0(r3)		# Unit=r3
	rlwinm		r4,r29,0,24,31		# HwIndex=r29
	e_mulli		r4,r4,36
	se_add		r4,r30		# pConfigPtr=r30
	lwz		r0,4(r4)
	or		r0,r0,r6
	lwz		r6,8(r4)
	or		r0,r0,r6
	stw		r0,0(r3)		# Unit=r3
# 
#     /* Write the configured power down exit delay value into PDEDR register */
#     /**
#     * @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic
#     * @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer.
#     * @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type.
#     */
#     REG_WRITE32(ADCDIG_PDEDR_REG_ADDR32(Unit),pConfigPtr[HwIndex].u8AdcPwrDownDelay);
	.d2line		888
	lbz		r0,12(r4)
	lwzx		r3,r5,r7		# Unit=r3
	stw		r0,200(r3)		# Unit=r3
# 
#     /* comes out from PowerDown */
#     if((Std_ReturnType)E_NOT_OK == Adc_Adcdig_WritePowerDownBit(Unit, (boolean)FALSE))
	.d2line		891
	mr		r3,r31		# Unit=r3 Unit=r31
	diab.li		r4,0
	bl		Adc_Adcdig_WritePowerDownBit
	rlwinm		r3,r3,0,24,31		# Unit=r3 Unit=r3
	se_cmpi		r3,1		# Unit=r3
	bc		0,2,.L547	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_4 Return statement before end of function. */
#         return (Std_ReturnType)E_NOT_OK;
	.d2line		894
	diab.li		r3,1		# Unit=r3
	b		.L545
.L547:
#     }        
# 
# #if (ADC_DSDR_AVAILABLE == STD_ON)
#     /* Write the configured mux delay value into DSDR register */
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_DsdrPresent[Unit])
	.d2line		899
	lis		r3,(Adc_RegistersAvailable+72)@ha		# Unit=r3
	e_add16i		r3,r3,(Adc_RegistersAvailable+72)@l		# Unit=r3 Unit=r3
	rlwinm		r7,r31,0,24,31		# Unit=r31
	lbzx		r0,r3,r7		# Unit=r3
	se_cmpi		r0,1
	bc		0,2,.L548	# ne
#     {
#         /**
#         * @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic
#         * @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer
#         * @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type.
#         */
#         REG_WRITE32(ADCDIG_DSDR_REG_ADDR32(Unit),pConfigPtr[HwIndex].u16AdcMuxDelay);
	.d2line		906
.Llo78:
	rlwinm		r4,r29,0,24,31		# pConfigPtr=r4 HwIndex=r29
.Llo79:
	e_mulli		r4,r4,36		# pConfigPtr=r4 pConfigPtr=r4
	se_add		r30,r4		# pConfigPtr=r30 pConfigPtr=r30 pConfigPtr=r4
	lhz		r0,14(r30)		# pConfigPtr=r30
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	rlwinm		r7,r31,2,22,29		# Unit=r31
	lwzx		r3,r3,r7		# Unit=r3 Unit=r3
	stw		r0,196(r3)		# Unit=r3
.L548:
#     }
# #endif /* (ADC_DSDR_AVAILABLE == STD_ON) */
# 
# #ifdef ADC_WDG_SUPPORTED
#     /* Enable WatchDog Threshold Interrupt*/
#     u32WtimrValue = ADCDIG_WTH0_LOW_ISR_EN_U32 | ADCDIG_WTH1_LOW_ISR_EN_U32 | ADCDIG_WTH2_LOW_ISR_EN_U32 |
#                     ADCDIG_WTH3_LOW_ISR_EN_U32 | ADCDIG_WTH4_LOW_ISR_EN_U32 | ADCDIG_WTH5_LOW_ISR_EN_U32 |
#                     ADCDIG_WTH6_LOW_ISR_EN_U32 | ADCDIG_WTH7_LOW_ISR_EN_U32 | ADCDIG_WTH8_LOW_ISR_EN_U32 |
#                     ADCDIG_WTH9_LOW_ISR_EN_U32 | ADCDIG_WTH10_LOW_ISR_EN_U32 | ADCDIG_WTH11_LOW_ISR_EN_U32 |
#                     ADCDIG_WTH12_LOW_ISR_EN_U32 | ADCDIG_WTH13_LOW_ISR_EN_U32 | ADCDIG_WTH14_LOW_ISR_EN_U32 |
#                     ADCDIG_WTH15_LOW_ISR_EN_U32 | ADCDIG_WTH0_HIGH_ISR_EN_U32 | ADCDIG_WTH1_HIGH_ISR_EN_U32 |
#                     ADCDIG_WTH2_HIGH_ISR_EN_U32 | ADCDIG_WTH3_HIGH_ISR_EN_U32 | ADCDIG_WTH4_HIGH_ISR_EN_U32 |
#                     ADCDIG_WTH5_HIGH_ISR_EN_U32 | ADCDIG_WTH6_HIGH_ISR_EN_U32 | ADCDIG_WTH7_HIGH_ISR_EN_U32 |
#                     ADCDIG_WTH8_HIGH_ISR_EN_U32 | ADCDIG_WTH9_HIGH_ISR_EN_U32 | ADCDIG_WTH10_HIGH_ISR_EN_U32 |
#                     ADCDIG_WTH11_HIGH_ISR_EN_U32 | ADCDIG_WTH12_HIGH_ISR_EN_U32 | ADCDIG_WTH13_HIGH_ISR_EN_U32 |
#                     ADCDIG_WTH14_HIGH_ISR_EN_U32 | ADCDIG_WTH15_HIGH_ISR_EN_U32;
# 
#     /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#     /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#     REG_BIT_SET32(ADCDIG_WTIMR_REG_ADDR32(Unit), u32WtimrValue);
# #endif /* ADC_WDG_SUPPORTED */
# 
#     /* Presampling related configurations/initializations */
#     /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     u32PscrVal = (uint32)(((uint32)(Adc_pCfgPtr->pAdc[HwIndex].u8PreVal0) << 1U) | \
	.d2line		931
.Llo74:
	lis		r3,Adc_pCfgPtr@ha		# Unit=r3
.Llo75:
	lwz		r4,Adc_pCfgPtr@l(r3)		# pConfigPtr=r4 Unit=r3
	lwz		r4,0(r4)		# pConfigPtr=r4 pConfigPtr=r4
.Llo81:
	rlwinm		r29,r29,0,24,31		# HwIndex=r29 HwIndex=r29
	e_mulli		r29,r29,36		# HwIndex=r29 HwIndex=r29
	se_add		r4,r29		# pConfigPtr=r4 pConfigPtr=r4 HwIndex=r29
	lbz		r0,16(r4)		# u32PscrVal=r0 pConfigPtr=r4
.Llo82:
	rlwinm		r0,r0,1,23,30		# u32PscrVal=r0 u32PscrVal=r0
	lwz		r4,Adc_pCfgPtr@l(r3)		# pConfigPtr=r4 Unit=r3
	lwz		r4,0(r4)		# pConfigPtr=r4 pConfigPtr=r4
	se_add		r4,r29		# pConfigPtr=r4 pConfigPtr=r4 HwIndex=r29
	lbz		r4,17(r4)		# pConfigPtr=r4 pConfigPtr=r4
	rlwinm		r4,r4,3,21,28		# pConfigPtr=r4 pConfigPtr=r4
	or		r0,r0,r4		# u32PscrVal=r0 u32PscrVal=r0 pConfigPtr=r4
	lwz		r4,Adc_pCfgPtr@l(r3)		# pConfigPtr=r4 Unit=r3
	lwz		r4,0(r4)		# pConfigPtr=r4 pConfigPtr=r4
	se_add		r4,r29		# pConfigPtr=r4 pConfigPtr=r4 HwIndex=r29
	lbz		r4,18(r4)		# pConfigPtr=r4 pConfigPtr=r4
	rlwinm		r4,r4,5,19,26		# pConfigPtr=r4 pConfigPtr=r4
	or		r0,r0,r4		# u32PscrVal=r0 u32PscrVal=r0 pConfigPtr=r4
	lwz		r3,Adc_pCfgPtr@l(r3)		# Unit=r3 Unit=r3
	lwz		r3,0(r3)		# Unit=r3 Unit=r3
	se_add		r29,r3		# HwIndex=r29 HwIndex=r29 Unit=r3
	lbz		r3,19(r29)		# Unit=r3 HwIndex=r29
	or		r0,r0,r3		# u32PscrVal=r0 u32PscrVal=r0 Unit=r3
	mr		r0,r0		# u32PscrVal=r0 u32PscrVal=r0
#                           ((uint32)(Adc_pCfgPtr->pAdc[HwIndex].u8PreVal1) << 3U) |
# #if (ADC_EXTERNAL_CH_AVAILABLE == STD_ON)
#     /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#                           ((uint32)(Adc_pCfgPtr->pAdc[HwIndex].u8PreVal2) << 5U) |
# #endif
#     /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#                           (uint32)Adc_pCfgPtr->pAdc[HwIndex].u8PreConv
#                          );
#     /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#     /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#     REG_WRITE32(ADCDIG_PSCR_REG_ADDR32(Unit), u32PscrVal);
	.d2line		942
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	rlwinm		r31,r31,2,22,29		# Unit=r31 Unit=r31
	lwzx		r3,r3,r31		# Unit=r3 Unit=r3
	stw		r0,128(r3)		# Unit=r3 u32PscrVal=r0
# 
#     #if (ADC_SET_ADC_PRESAMPLE_ONCE == STD_ON)
#     for (Group = 0U; Group < Adc_pCfgPtr->GroupCount; Group++)  /* GroupCount = total number of groups */
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         if (Unit == Adc_pCfgPtr->pGroups[Group].HwUnit)
#         {
#             /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#             u32Precision |= Adc_pCfgPtr->pGroups[Group].u32PrecisionPsr;
#     #if (ADC_PSR1_AVAILABLE == STD_ON)
#             /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#             u32Extended |= Adc_pCfgPtr->pGroups[Group].u32ExtendedPsr;
#     #endif /* (ADC_PSR1_AVAILABLE == STD_ON) */
#     #if (ADC_PSR2_AVAILABLE == STD_ON)
#             /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#             u32External |= Adc_pCfgPtr->pGroups[Group].u32ExternalPsr;
#     #endif /* (ADC_PSR2_AVAILABLE == STD_ON) */
#         }
#     }
#     /* set once presampling for every ADC HW Unit using setting of the all groups belonging to the Unit */
#     Adc_Adcdig_SetPsrRegisters(Unit, u32Precision, u32Extended, u32External);
#     #endif /* ADC_SET_ADC_PRESAMPLE_ONCE == STD_ON */
# 
# #if (ADC_SET_ADC_CONV_TIME_ONCE == STD_ON)
#     #if (ADC_CTR1_AVAILABLE == STD_ON)
#     /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     ConvTime1 = Adc_pCfgPtr->pAdc[HwIndex].ConvTimeNormal1;
#     #endif /* (ADC_CTR1_AVAILABLE == STD_ON) */
#     #if (ADC_CTR2_AVAILABLE == STD_ON)
#     /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     ConvTime2 = Adc_pCfgPtr->pAdc[HwIndex].ConvTimeNormal2;
#     #endif /* ADC_CTR2_AVAILABLE == STD_ON */
#     /*  Program Conversion Time*/
#     /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     Adc_Adcdig_SetCtrRegisters(Unit, Adc_pCfgPtr->pAdc[HwIndex].ConvTimeNormal, ConvTime1, ConvTime2);
# #endif /* ADC_SET_ADC_CONV_TIME_ONCE == STD_ON */
# 
#     return (Std_ReturnType)E_OK;
	.d2line		980
	diab.li		r3,0		# Unit=r3
.L545:
# }
	.d2line		981
	.d2epilogue_begin
.Llo76:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u32PscrVal=r0
	mtspr		lr,r0		# u32PscrVal=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L739:
	.type		Adc_Adcdig_InitUnitHardware,@function
	.size		Adc_Adcdig_InitUnitHardware,.-Adc_Adcdig_InitUnitHardware
# Number of nodes = 192

# Allocations for Adc_Adcdig_InitUnitHardware
#	?a4		Unit
#	?a5		pConfigPtr
#	?a6		$$127
#	?a7		HwIndex
#	?a8		u32PscrVal
#	SP,8		u32Timeout
# FUNC(void, ADC_CODE) Adc_Adcdig_Init
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1229,22
#$$ld
.L754:

#$$bf	Adc_Adcdig_Init,interprocedural,rasave,nostackparams
	.globl		Adc_Adcdig_Init
	.d2_cfa_start __cie
Adc_Adcdig_Init:
.Llo83:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pCfgPtr=r3 pCfgPtr=r3
	.d2prologue_end
# (
#     P2CONST(Adc_ConfigType, AUTOMATIC, ADC_APPL_CONST) pCfgPtr
# )
# {
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit = 0U;
	.d2line		1234
	diab.li		r31,0		# Unit=r31
#     VAR(Std_ReturnType, AUTOMATIC) DemTest = (Std_ReturnType)E_OK;
#     P2CONST(Adc_Adcdig_HwUnitConfigurationType, AUTOMATIC, ADC_APPL_CONST) pConfigPtr = pCfgPtr->pAdc;
	.d2line		1236
.Llo87:
	lwz		r30,0(r3)		# pCfgPtr=r3
.Llo91:
	mr		r30,r30		# pConfigPtr=r30 pConfigPtr=r30
# 
#     /* Enter critical region to avoid ISRs during register reset */
#     SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_03();
	.d2line		1239
	bl		SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_03
# #if (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON)
#     Adc_Adcdig_InitNcmrMask(pCfgPtr);
# #endif /* (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON) */
# 
#     /* Initialize Unit Status structures */
#     for(Unit = 0U; Unit < (Adc_HwUnitType)ADC_MAX_HW_UNITS; Unit++)
.L568:
	.d2line		1245
.Llo84:
	rlwinm		r0,r31,0,24,31		# Unit=r31
	se_cmpi		r0,4
	bc		0,0,.L570	# ge
#     {
#         if((uint8)STD_ON == ADC_HW_UNITS(Unit))
	.d2line		1247
	lis		r3,Adc_pCfgPtr@ha		# pCfgPtr=r3
.Llo85:
	lwz		r0,Adc_pCfgPtr@l(r3)		# pCfgPtr=r3
	rlwinm		r3,r31,0,24,31		# pCfgPtr=r3 Unit=r31
	se_add		r3,r0		# pCfgPtr=r3 pCfgPtr=r3
	lbz		r0,36(r3)		# pCfgPtr=r3
	se_cmpi		r0,1
	bc		0,2,.L571	# ne
#         {
#             DemTest = Adc_Adcdig_InitUnitHardware(Unit, pConfigPtr);
	.d2line		1249
.Llo86:
	mr		r3,r31		# Unit=r3 Unit=r31
	mr		r4,r30		# pConfigPtr=r4 pConfigPtr=r30
	bl		Adc_Adcdig_InitUnitHardware
.Llo89:
	mr		r3,r3		# DemTest=r3 DemTest=r3
.L571:
#         }
#     }
	.d2line		1251
.Llo90:
	diab.addi		r3,r31,1		# pCfgPtr=r3 Unit=r31
	se_addi		r31,1		# Unit=r31 Unit=r31
	b		.L568
.L570:
# 
# #ifdef ADC_WDG_SUPPORTED
#     Adc_Adcdig_InitUnitLimitChecking(pCfgPtr);
# #endif /* ADC_WDG_SUPPORTED */
# 
#  /* If there are MHT then setup the relation between the physical channels and groups  */
# #if (ADC_MULTIPLE_HARDWARE_TRIGGERS == STD_ON)
#     Adc_Adcdig_InitUnitMht(pCfgPtr);
# #endif /* (ADC_MULTIPLE_HARDWARE_TRIGGERS == STD_ON) */
# 
# #if (ADC_ENABLE_CTU_CONTROL_MODE_API == STD_ON)
#   #if (ADC_BCTU_AVAILABLE == STD_ON)
#     Adc_Adcdig_InitBctu(pCfgPtr);
#   #elif (ADC_CTUV2_AVAILABLE == STD_ON)
#     Adc_Adcdig_InitCtu2(pCfgPtr);
#   #endif /* (ADC_BCTU_AVAILABLE == STD_ON) */
# #endif /* ADC_ENABLE_CTU_CONTROL_MODE_API == STD_ON */
# 
#     SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_03();
	.d2line		1270
.Llo88:
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_03
# 
#     (void)DemTest;
# }
	.d2line		1273
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
.L755:
	.type		Adc_Adcdig_Init,@function
	.size		Adc_Adcdig_Init,.-Adc_Adcdig_Init
# Number of nodes = 43

# Allocations for Adc_Adcdig_Init
#	?a4		pCfgPtr
#	?a5		Unit
#	?a6		DemTest
#	?a7		pConfigPtr
# FUNC(void, ADC_CODE) Adc_Adcdig_ClearDmarRegisters
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3910,22
#$$ld
.L770:

#$$bf	Adc_Adcdig_ClearDmarRegisters,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Adc_Adcdig_ClearDmarRegisters
	.d2_cfa_start __cie
Adc_Adcdig_ClearDmarRegisters:
.Llo92:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# Unit=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Unit=r0 Unit=r3
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit
# )
# {
#     /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#     /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#     REG_WRITE32(ADCDIG_DMAE_REG_ADDR32(Unit), ADCDIG_DMAE_RESET_VALUE_U32);
	.d2line		3917
.Llo93:
	diab.li		r5,0
.Llo94:
	lis		r3,ADCDIG_BASE_ADDR32@ha
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l
	rlwinm		r4,r0,2,22,29		# Unit=r0
	lwzx		r3,r3,r4
	stw		r5,64(r3)
# 
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_DmarPresent[Unit][ADC_DMAR0_INDEX])
	.d2line		3919
	lis		r3,(Adc_RegistersAvailable+12)@ha
	e_add16i		r3,r3,(Adc_RegistersAvailable+12)@l
	rlwinm		r4,r0,0,24,31		# Unit=r0
	e_mulli		r4,r4,3
	lbzx		r3,r3,r4
	se_cmpi		r3,1
	bc		0,2,.L662	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_DMAR0_REG_ADDR32(Unit),ADCDIG_DMAR_RESET_VALUE_U32);
	.d2line		3923
	diab.li		r5,0
	lis		r3,ADCDIG_BASE_ADDR32@ha
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l
	rlwinm		r4,r0,2,22,29		# Unit=r0
	lwzx		r3,r3,r4
	stw		r5,68(r3)
.L662:
#     }
# #if (ADC_DMAR1_AVAILABLE == STD_ON)
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_DmarPresent[Unit][ADC_DMAR1_INDEX])
	.d2line		3926
	lis		r3,(Adc_RegistersAvailable+13)@ha
	e_add16i		r3,r3,(Adc_RegistersAvailable+13)@l
	rlwinm		r4,r0,0,24,31		# Unit=r0
	e_mulli		r4,r4,3
	lbzx		r3,r3,r4
	se_cmpi		r3,1
	bc		0,2,.L663	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_DMAR1_REG_ADDR32(Unit),ADCDIG_DMAR_RESET_VALUE_U32);
	.d2line		3930
	diab.li		r5,0
	lis		r3,ADCDIG_BASE_ADDR32@ha
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l
	rlwinm		r4,r0,2,22,29		# Unit=r0
	lwzx		r3,r3,r4
	stw		r5,72(r3)
.L663:
#     }
# #endif /* (ADC_DMAR1_AVAILABLE == STD_ON) */
# 
# #if (ADC_DMAR2_AVAILABLE == STD_ON)
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_DmarPresent[Unit][ADC_DMAR2_INDEX])
	.d2line		3935
	lis		r3,(Adc_RegistersAvailable+14)@ha
	e_add16i		r3,r3,(Adc_RegistersAvailable+14)@l
	rlwinm		r4,r0,0,24,31		# Unit=r0
	e_mulli		r4,r4,3
	lbzx		r3,r3,r4
	se_cmpi		r3,1
	bc		0,2,.L661	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_DMAR2_REG_ADDR32(Unit),ADCDIG_DMAR_RESET_VALUE_U32);
	.d2line		3939
.Llo95:
	diab.li		r4,0
	lis		r3,ADCDIG_BASE_ADDR32@ha
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l
.Llo96:
	rlwinm		r0,r0,2,22,29		# Unit=r0 Unit=r0
.Llo97:
	lwzx		r3,r3,r0
	stw		r4,76(r3)
.L661:
#     }
# #endif /* (ADC_DMAR2_AVAILABLE == STD_ON) */
# 
# }
	.d2line		3943
	.d2epilogue_begin
	lwz		r0,20(r1)		# Unit=r0
	mtspr		lr,r0		# Unit=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L771:
	.type		Adc_Adcdig_ClearDmarRegisters,@function
	.size		Adc_Adcdig_ClearDmarRegisters,.-Adc_Adcdig_ClearDmarRegisters
# Number of nodes = 91

# Allocations for Adc_Adcdig_ClearDmarRegisters
#	?a4		Unit
# LOCAL_INLINE FUNC(void, ADC_CODE) Adc_Adcdig_DeInitHardware
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1284,35
#$$ld
.L776:

#$$bf	Adc_Adcdig_DeInitHardware,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Adc_Adcdig_DeInitHardware:
.Llo98:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Unit=r31 Unit=r3
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit
# )
# {
# #ifdef ADC_WDG_SUPPORTED
#     VAR(uint8,AUTOMATIC) u8WdgIndex = 0U;
# #endif
# 
#     /* Enter ADC Unit to power down mode */
#     (void)Adc_Adcdig_WritePowerDownBit(Unit, (boolean)TRUE);
	.d2line		1294
	mr		r3,r31		# Unit=r3 Unit=r31
.Llo99:
	diab.li		r4,1
	bl		Adc_Adcdig_WritePowerDownBit
#     /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#     /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#     REG_WRITE32(ADCDIG_MCR_REG_ADDR32(Unit), ADCDIG_MCR_RESET_VALUE_U32);
	.d2line		1297
	diab.li		r0,257
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
.Llo100:
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	rlwinm		r5,r31,2,22,29		# Unit=r31
	lwzux		r4,r3,r5		# Unit=r3
	stw		r0,0(r4)
#     /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#     /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#     REG_WRITE32(ADCDIG_ISR_REG_ADDR32(Unit), ADCDIG_ISR_CLEAR_VALUE_U32);
	.d2line		1300
	diab.li		r0,31
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	lwzux		r4,r3,r5		# Unit=r3
	stw		r0,16(r4)
#     /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#     /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#     REG_WRITE32(ADCDIG_IMR_REG_ADDR32(Unit), ADCDIG_IMR_RESET_VALUE_U32);
	.d2line		1303
	diab.li		r0,0
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	lwzux		r4,r3,r5		# Unit=r3
	stw		r0,32(r4)
#     /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#     /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#     REG_WRITE32(ADCDIG_WTISR_REG_ADDR32(Unit), ADCDIG_WTISR_RESET_VALUE_U32);
	.d2line		1306
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	lwzux		r4,r3,r5		# Unit=r3
	stw		r0,48(r4)
#     /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#     /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#     REG_WRITE32(ADCDIG_WTIMR_REG_ADDR32(Unit), ADCDIG_WTIMR_RESET_VALUE_U32);
	.d2line		1309
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	lwzx		r3,r3,r5		# Unit=r3 Unit=r3
	stw		r0,52(r3)		# Unit=r3
# 
# #ifdef ADC_DMA_SUPPORTED
#     if (ADC_DMA == Adc_pCfgPtr->Misc.u8Adc_DmaInterruptSoftware[Unit])
#     {
#         /* Disable DMA interrupt */
#         Mcl_DmaDisableHwRequest((Mcl_ChannelType)Adc_pCfgPtr->Misc.au8Adc_DmaChannel[Unit]);
#         #if (MCL_DMA_NOTIFICATION_SUPPORTED == STD_ON)
#         Mcl_DmaDisableNotification((Mcl_ChannelType)Adc_pCfgPtr->Misc.au8Adc_DmaChannel[Unit]);
#         #endif /* MCL_DMA_NOTIFICATION_SUPPORTED == STD_ON */
#     }
# #endif /* ifdef ADC_DMA_SUPPORTED */
# 
#     Adc_Adcdig_ClearDmarRegisters(Unit);
	.d2line		1322
	mr		r3,r31		# Unit=r3 Unit=r31
.Llo101:
	bl		Adc_Adcdig_ClearDmarRegisters
# 
# #ifdef ADC_WDG_SUPPORTED
#     for (u8WdgIndex = 0U; u8WdgIndex < (uint8)ADC_THRHLR_REGS; u8WdgIndex++)
#     {
#         if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_ThrhlrPresent[Unit][u8WdgIndex])
#         {
#             /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#             /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#             REG_WRITE32(ADCDIG_THRHLRx_REG_ADDR32(Unit, u8WdgIndex), ADCDIG_THRHLRx_RESET_VALUE_U32(Unit));
#         }
#     }
# #endif /* ADC_WDG_SUPPORTED */
# 
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_CeocfrPresent[Unit][ADC_CEOCFR0_INDEX])
	.d2line		1336
	lis		r3,Adc_RegistersAvailable@ha		# Unit=r3
.Llo102:
	e_add16i		r3,r3,Adc_RegistersAvailable@l		# Unit=r3 Unit=r3
	rlwinm		r5,r31,0,24,31		# Unit=r31
	e_mulli		r5,r5,3
	lbzx		r0,r3,r5		# Unit=r3
	se_cmpi		r0,1
	bc		0,2,.L576	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_CEOCFR0_REG_ADDR32(Unit),0xFFFFFFFFUL);
	.d2line		1340
.Llo103:
	diab.li		r0,-1
.Llo104:
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	rlwinm		r5,r31,2,22,29		# Unit=r31
	lwzx		r3,r3,r5		# Unit=r3 Unit=r3
	stw		r0,20(r3)		# Unit=r3
.L576:
#     }
# #if (ADC_CEOCFR1_AVAILABLE == STD_ON)
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_CeocfrPresent[Unit][ADC_CEOCFR1_INDEX])
	.d2line		1343
	lis		r3,(Adc_RegistersAvailable+1)@ha		# Unit=r3
	e_add16i		r3,r3,(Adc_RegistersAvailable+1)@l		# Unit=r3 Unit=r3
	rlwinm		r5,r31,0,24,31		# Unit=r31
	e_mulli		r5,r5,3
	lbzx		r0,r3,r5		# Unit=r3
	se_cmpi		r0,1
	bc		0,2,.L577	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_CEOCFR1_REG_ADDR32(Unit),0xFFFFFFFFUL);
	.d2line		1347
	diab.li		r0,-1
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	rlwinm		r5,r31,2,22,29		# Unit=r31
	lwzx		r3,r3,r5		# Unit=r3 Unit=r3
	stw		r0,24(r3)		# Unit=r3
.L577:
#     }
# #endif
# #if (ADC_CEOCFR2_AVAILABLE == STD_ON)
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_CeocfrPresent[Unit][ADC_CEOCFR2_INDEX])
	.d2line		1351
	lis		r3,(Adc_RegistersAvailable+2)@ha		# Unit=r3
	e_add16i		r3,r3,(Adc_RegistersAvailable+2)@l		# Unit=r3 Unit=r3
	rlwinm		r5,r31,0,24,31		# Unit=r31
	e_mulli		r5,r5,3
	lbzx		r0,r3,r5		# Unit=r3
	se_cmpi		r0,1
	bc		0,2,.L578	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_CEOCFR2_REG_ADDR32(Unit),0xFFFFFFFFUL);
	.d2line		1355
	diab.li		r0,-1
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	rlwinm		r5,r31,2,22,29		# Unit=r31
	lwzx		r3,r3,r5		# Unit=r3 Unit=r3
	stw		r0,28(r3)		# Unit=r3
.L578:
#     }
# #endif
#     /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#     /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#     REG_WRITE32(ADCDIG_PSCR_REG_ADDR32(Unit), 0x0UL);
	.d2line		1360
	diab.li		r4,0
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	rlwinm		r5,r31,2,22,29		# Unit=r31
	lwzx		r3,r3,r5		# Unit=r3 Unit=r3
	stw		r4,128(r3)		# Unit=r3
# 
#     Adc_Adcdig_SetPsrRegisters(Unit, 0x0UL, 0x0UL, 0x0UL);
	.d2line		1362
	mr		r3,r31		# Unit=r3 Unit=r31
	diab.li		r5,0
	diab.li		r6,0
	bl		Adc_Adcdig_SetPsrRegisters
# 
#     Adc_Adcdig_SetCtrRegisters(Unit, ADCDIG_CTR0_RESET_VALUE_U32, ADCDIG_CTR1_RESET_VALUE_U32, ADCDIG_CTR2_RESET_VALUE_U32);
	.d2line		1364
	mr		r3,r31		# Unit=r3 Unit=r31
	diab.li		r4,22
	diab.li		r5,22
	diab.li		r6,22
	bl		Adc_Adcdig_SetCtrRegisters
# 
#     Adc_Adcdig_SetNcmrRegisters(Unit, ADCDIG_NCMR_RESET_VALUE_U32, ADCDIG_NCMR_RESET_VALUE_U32, ADCDIG_NCMR_RESET_VALUE_U32);
	.d2line		1366
	mr		r3,r31		# Unit=r3 Unit=r31
	diab.li		r4,0
	diab.li		r5,0
	diab.li		r6,0
	bl		Adc_Adcdig_SetNcmrRegisters
# 
#     Adc_Adcdig_SetJcmrRegisters(Unit, ADCDIG_JCMR_RESET_VALUE_U32, ADCDIG_JCMR_RESET_VALUE_U32, ADCDIG_JCMR_RESET_VALUE_U32);
	.d2line		1368
	mr		r3,r31		# Unit=r3 Unit=r31
	diab.li		r4,0
	diab.li		r5,0
	diab.li		r6,0
	bl		Adc_Adcdig_SetJcmrRegisters
# 
# #ifdef ADC_WDG_SUPPORTED
#     /* Watchdog registers */
#     for (u8WdgIndex = 0U; u8WdgIndex < (uint8)ADC_CWENR_REGS; u8WdgIndex++)
#     {
#         if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_CwenrPresent[Unit][u8WdgIndex])
#         {
#             /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#             /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#             REG_WRITE32(ADCDIG_CWENRx_REG_ADDR32(Unit, (uint32)u8WdgIndex), ADCDIG_CWENR_RESET_VALUE_U32);
#         }
#     }
# 
#     for (u8WdgIndex = 0U; u8WdgIndex < (uint8)ADC_CWSELR_REGS; u8WdgIndex++)
#     {
#         if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_CwselrPresent[Unit][u8WdgIndex])
#         {
#             /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#             /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#             REG_WRITE32(ADCDIG_CWSELRx_REG_ADDR32(Unit, (uint32)u8WdgIndex), ADCDIG_CWSEL_RESET_VALUE_U32);
#         }
#     }
# #endif /* ADC_WDG_SUPPORTED */
# 
# #if (ADC_DSDR_AVAILABLE == STD_ON)
#     if ((uint8)STD_ON == Adc_RegistersAvailable.au8Adc_DsdrPresent[Unit])
	.d2line		1394
	lis		r3,(Adc_RegistersAvailable+72)@ha		# Unit=r3
	e_add16i		r3,r3,(Adc_RegistersAvailable+72)@l		# Unit=r3 Unit=r3
	rlwinm		r5,r31,0,24,31		# Unit=r31
	lbzx		r0,r3,r5		# Unit=r3
	se_cmpi		r0,1
	bc		0,2,.L579	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_WRITE32(ADCDIG_DSDR_REG_ADDR32(Unit), ADCDIG_DSDR_RESET_VALUE_U32);
	.d2line		1398
	diab.li		r0,0
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	rlwinm		r5,r31,2,22,29		# Unit=r31
	lwzx		r3,r3,r5		# Unit=r3 Unit=r3
	stw		r0,196(r3)		# Unit=r3
.L579:
#     }
# #endif /* (ADC_DSDR_AVAILABLE == STD_ON) */
# 
#     /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#     /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#     REG_WRITE32(ADCDIG_PDEDR_REG_ADDR32(Unit), ADCDIG_PDEDR_RESET_VALUE_U32);
	.d2line		1404
.Llo105:
	diab.li		r3,0		# Unit=r3
.Llo106:
	lis		r4,ADCDIG_BASE_ADDR32@ha
	e_add16i		r4,r4,ADCDIG_BASE_ADDR32@l
	rlwinm		r31,r31,2,22,29		# Unit=r31 Unit=r31
	lwzx		r4,r4,r31
	stw		r3,200(r4)		# Unit=r3
# #if (STD_ON == ADC_HW_TRIGGER_API)
# #if (ADC_HARDWARE_NORMAL_CONVERSIONS_USED == STD_ON)
# 
#     /* Disable Hardware Trigger Selection */
# #ifdef ADC_ENABLE_USER_MODE_SUPPORT
# #if (STD_ON == ADC_ENABLE_USER_MODE_SUPPORT)
#     Mcal_Trusted_Call(Adc_Siul2_DisableHwTrigger,(Unit));
# #else
#     Adc_Siul2_DisableHwTrigger(Unit);
# #endif /* STD_ON == MCL_ENABLE_USER_MODE_SUPPORT */
# #else
#     Adc_Siul2_DisableHwTrigger(Unit);
# #endif /* MCL_ENABLE_USER_MODE_SUPPORT */   
# 
# #endif /* (ADC_HARDWARE_NORMAL_CONVERSIONS_USED == STD_ON) */
# #endif /* (STD_ON == ADC_HW_TRIGGER_API) */
# }
	.d2line		1421
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo107:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L777:
	.type		Adc_Adcdig_DeInitHardware,@function
	.size		Adc_Adcdig_DeInitHardware,.-Adc_Adcdig_DeInitHardware
# Number of nodes = 245

# Allocations for Adc_Adcdig_DeInitHardware
#	?a4		Unit
# FUNC(void, ADC_CODE) Adc_Adcdig_DeInit(void)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1433,22
#$$ld
.L782:

#$$bf	Adc_Adcdig_DeInit,interprocedural,rasave,nostackparams
	.globl		Adc_Adcdig_DeInit
	.d2_cfa_start __cie
Adc_Adcdig_DeInit:
.Llo108:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit = 0U;
	.d2line		1435
	diab.li		r31,0		# Unit=r31
# #if ((ADC_GRP_NOTIF_CAPABILITY == STD_ON) || (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON))
#     VAR(Adc_GroupType,AUTOMATIC) GroupIdx = 0U;
#   #if (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON)
#     VAR(Adc_GroupType, AUTOMATIC) GroupIndex = 0U;
#   #endif /* (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON) */
# #endif /* (ADC_GRP_NOTIF_CAPABILITY == STD_ON) */
# 
#     /* Enter critical region to avoid ISRs during register reset */
#     SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_06();
	.d2line		1444
	bl		SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_06
.L585:
# 
#     for(;Unit<(Adc_HwUnitType)ADC_MAX_HW_UNITS;Unit++)
	.d2line		1446
	rlwinm		r0,r31,0,24,31		# Unit=r31
	se_cmpi		r0,4
	bc		0,0,.L587	# ge
#     {
#         /* ADC111-- ADC110*/
#         if((uint8)STD_ON == ADC_HW_UNITS(Unit))
	.d2line		1449
	lis		r3,Adc_pCfgPtr@ha		# Unit=r3
	lwz		r3,Adc_pCfgPtr@l(r3)		# Unit=r3 Unit=r3
	rlwinm		r0,r31,0,24,31		# Unit=r31
	se_add		r3,r0		# Unit=r3 Unit=r3
	lbz		r0,36(r3)		# Unit=r3
	se_cmpi		r0,1
	bc		0,2,.L588	# ne
#         {
#             Adc_Adcdig_DeInitHardware(Unit);
	.d2line		1451
	mr		r3,r31		# Unit=r3 Unit=r31
	bl		Adc_Adcdig_DeInitHardware
.L588:
#         }
#     }
	.d2line		1453
	diab.addi		r0,r31,1		# Unit=r31
	se_addi		r31,1		# Unit=r31 Unit=r31
	b		.L585
.L587:
# 
# #if (ADC_ENABLE_CTU_CONTROL_MODE_API == STD_ON)
#   #if (ADC_BCTU_AVAILABLE == STD_ON)
#     Adc_Bctu_DeInit();
#   #elif (ADC_CTUV2_AVAILABLE == STD_ON)
#     Adc_Ctu2_DeInit();
#   #endif /* (ADC_BCTU_AVAILABLE == STD_ON) */
# #endif /* (ADC_ENABLE_CTU_CONTROL_MODE_API == STD_ON) */
# 
# #if ((ADC_GRP_NOTIF_CAPABILITY == STD_ON) || (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON))
#     for(GroupIdx = 0U; GroupIdx < (Adc_GroupType)ADC_MAX_GROUPS; GroupIdx++)
	.d2line		1464
	diab.li		r3,0		# GroupIdx=r3
.L589:
.Llo109:
	rlwinm		r0,r3,0,16,31		# GroupIdx=r3
	se_cmpi		r0,0
	bc		1,1,.L591	# gt
#     {
#     #if (ADC_GRP_NOTIF_CAPABILITY == STD_ON)
#         Adc_aGroupStatus[GroupIdx].eNotification = ADC_NOTIFICATION_DISABLED;
	.d2line		1467
	diab.li		r5,0
	lis		r4,(Adc_aGroupStatus+8)@ha
	e_add16i		r4,r4,(Adc_aGroupStatus+8)@l
	rlwinm		r0,r3,4,12,27		# GroupIdx=r3
	stwx		r5,r4,r0
#     #endif  /* (ADC_GRP_NOTIF_CAPABILITY == STD_ON) */
# 
#     #if (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON)
#         /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing */
#         GroupIndex = (Adc_GroupType)Adc_pCfgPtr->pGroups[GroupIdx].EnableChDisableChGroupIndex;
#         if(ADC_ENABLE_CH_DISABLE_CH_INVALID_GROUP_INDEX != GroupIndex)
#         {
#             Adc_aNCMRxMask[GroupIndex].Adc_u32NCMR0 = (uint32)ADCDIG_NCMR_RESET_VALUE_U32;
#         #if (ADC_NCMR1_AVAILABLE == STD_ON)
#             Adc_aNCMRxMask[GroupIndex].Adc_u32NCMR1 = (uint32)ADCDIG_NCMR_RESET_VALUE_U32;
#         #endif
#         #if (ADC_NCMR2_AVAILABLE == STD_ON)
#             Adc_aNCMRxMask[GroupIndex].Adc_u32NCMR2 = (uint32)ADCDIG_NCMR_RESET_VALUE_U32;
#         #endif
#         }
#     #endif  /* (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON) */
#     }
	.d2line		1484
	diab.addi		r0,r3,1		# GroupIdx=r3
	se_addi		r3,1		# GroupIdx=r3 GroupIdx=r3
	b		.L589
.L591:
# #endif /* ((ADC_GRP_NOTIF_CAPABILITY == STD_ON) || (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON))*/
# 
#     /* Exit critical region */
#     SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_06();
	.d2line		1488
.Llo110:
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_06
# }
	.d2line		1489
	.d2epilogue_begin
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
.L783:
	.type		Adc_Adcdig_DeInit,@function
	.size		Adc_Adcdig_DeInit,.-Adc_Adcdig_DeInit
# Number of nodes = 54

# Allocations for Adc_Adcdig_DeInit
#	?a4		Unit
#	?a5		GroupIdx
# LOCAL_INLINE FUNC(Std_ReturnType, ADC_CODE) Adc_Adcdig_StopConversionCheckTimeout
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1504,45
#$$ld
.L792:

#$$bf	Adc_Adcdig_StopConversionCheckTimeout,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Adc_Adcdig_StopConversionCheckTimeout:
.Llo111:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Unit=r3 Unit=r3
	mr		r31,r4		# bStartApi=r31 bStartApi=r4
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit,
#     VAR(boolean, AUTOMATIC) bStartApi
# )
# {
#     VAR(uint32, AUTOMATIC) u32Timeout = ADC_TIMEOUT_COUNTER;
	.d2line		1510
.Llo119:
	diab.li		r4,65535		# u32Timeout=r4
.L598:
#     VAR(uint32, AUTOMATIC) u32MsrStatus;
# 
#     do
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_RMW32(ADCDIG_MCR_REG_ADDR32(Unit), ADCDIG_NORMAL_CONV_MASK_U32 | ADCDIG_ABORT_CHAIN_U32, ADCDIG_ABORT_CHAIN_U32);
	.d2line		1517
.Llo115:
	lis		r5,ADCDIG_BASE_ADDR32@ha		# u32MsrStatus=r5
.Llo116:
	e_add16i		r5,r5,ADCDIG_BASE_ADDR32@l		# u32MsrStatus=r5 u32MsrStatus=r5
	rlwinm		r7,r3,2,22,29		# Unit=r3
	lwzux		r6,r5,r7		# u32MsrStatus=r5
	lwz		r0,0(r6)
	e_lis		r5,65279		# u32MsrStatus=r5
	e_or2i		r5,65407		# u32MsrStatus=r5
	and		r0,r0,r5		# u32MsrStatus=r5
	.diab.bseti		r0,24
	lis		r5,ADCDIG_BASE_ADDR32@ha		# u32MsrStatus=r5
	e_add16i		r5,r5,ADCDIG_BASE_ADDR32@l		# u32MsrStatus=r5 u32MsrStatus=r5
	lwzux		r6,r5,r7		# u32MsrStatus=r5
	stw		r0,0(r6)
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         u32MsrStatus = (REG_READ32(ADCDIG_MSR_REG_ADDR32(Unit))) & ADCDIG_STATUS_U32;
	.d2line		1520
	lis		r5,ADCDIG_BASE_ADDR32@ha		# u32MsrStatus=r5
	e_add16i		r5,r5,ADCDIG_BASE_ADDR32@l		# u32MsrStatus=r5 u32MsrStatus=r5
	lwzx		r5,r5,r7		# u32MsrStatus=r5 u32MsrStatus=r5
	lwz		r5,4(r5)		# u32MsrStatus=r5 u32MsrStatus=r5
	rlwinm		r5,r5,0,29,31		# u32MsrStatus=r5 u32MsrStatus=r5
	mr		r5,r5		# u32MsrStatus=r5 u32MsrStatus=r5
#         if (u32Timeout > 0UL)
	.d2line		1521
	se_cmpi		r4,0		# u32Timeout=r4
	bc		1,2,.L599	# eq
#         {
#             u32Timeout--;
	.d2line		1523
	diab.addi		r0,r4,-1		# u32Timeout=r4
	diab.addi		r4,r4,-1		# u32Timeout=r4 u32Timeout=r4
	b		.L600
.L599:
#         }
#         else
#         {
#             if ((boolean)TRUE == bStartApi)
	.d2line		1527
.Llo120:
	rlwinm		r4,r31,0,24,31		# u32Timeout=r4 bStartApi=r31
.Llo121:
	se_cmpi		r4,1		# u32Timeout=r4
	bc		0,2,.L601	# ne
#             {
#                 SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_07();
	.d2line		1529
.Llo112:
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_07
	b		.L602
.L601:
#             }
#             else
#             {
#                 SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_08();
	.d2line		1533
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_08
.L602:
#             }
# #if (ADC_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF)
#             if((uint32)STD_ON == Adc_E_TimeoutCfg.state)
#             {
#                 /* Report production error and return from function. */
#                 Dem_ReportErrorStatus((Dem_EventIdType)Adc_E_TimeoutCfg.id, DEM_EVENT_STATUS_FAILED);
#             }
# #endif /* (ADC_DISABLE_DEM_REPORT_ERROR_STATUS == STD_OFF) */
#             if ((boolean)TRUE == bStartApi)
	.d2line		1542
	rlwinm		r31,r31,0,24,31		# bStartApi=r31 bStartApi=r31
	se_cmpi		r31,1		# bStartApi=r31
	bc		0,2,.L603	# ne
#             {
#                 SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_07();
	.d2line		1544
.Llo117:
	bl		SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_07
	b		.L604
.L603:
#             }
#             else
#             {
#                 SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_08();
	.d2line		1548
	bl		SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_08
.L604:
#             }
#             /** @violates @ref Adc_Adcdig_c_REF_4 Return statement before end of function. */
#             return (Std_ReturnType) E_NOT_OK;
	.d2line		1551
	diab.li		r3,1		# Unit=r3
	b		.L597
.L600:
#         }
#     }
	.d2line		1553
.Llo113:
	diab.li		r0,16777216
	se_cmpl		r5,r0		# u32MsrStatus=r5
	bc		1,2,.L598	# eq
#     while(ADCDIG_NORMAL_CONV_ONGOING_U32 == u32MsrStatus);
#     return (Std_ReturnType) E_OK;
	.d2line		1555
.Llo114:
	diab.li		r3,0		# Unit=r3
.L597:
# }
	.d2line		1556
	.d2epilogue_begin
.Llo118:
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
.L793:
	.type		Adc_Adcdig_StopConversionCheckTimeout,@function
	.size		Adc_Adcdig_StopConversionCheckTimeout,.-Adc_Adcdig_StopConversionCheckTimeout
# Number of nodes = 73

# Allocations for Adc_Adcdig_StopConversionCheckTimeout
#	?a4		Unit
#	?a5		bStartApi
#	?a6		u32Timeout
#	?a7		u32MsrStatus
# FUNC(Std_ReturnType, ADC_CODE) Adc_Adcdig_StopCurrentConversion
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1572,32
#$$ld
.L803:

#$$bf	Adc_Adcdig_StopCurrentConversion,interprocedural,rasave,nostackparams
	.globl		Adc_Adcdig_StopCurrentConversion
	.d2_cfa_start __cie
Adc_Adcdig_StopCurrentConversion:
.Llo122:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo129:
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# Test=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Unit=r31 Unit=r3
.Llo123:
	mr		r30,r4		# Group=r30 Group=r4
.Llo124:
	mr		r4,r5		# bStartApi=r4 bStartApi=r5
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit,
#     VAR(Adc_GroupType, AUTOMATIC) Group,
#     VAR(boolean, AUTOMATIC) bStartApi
# )
# {
#     VAR(Std_ReturnType, AUTOMATIC) Test = (Std_ReturnType)E_OK;
	.d2line		1579
.Llo126:
	diab.li		r0,0		# Test=r0
#     VAR(Adc_ChannelIndexType, AUTOMATIC) ChTemp;
#     VAR(Adc_ChannelType, AUTOMATIC) ChIndexTemp;
#     VAR(Adc_ChannelIndexType, AUTOMATIC) ChannelCount;
# 
# #ifdef ADC_DMA_SUPPORTED
#     if (ADC_DMA == Adc_pCfgPtr->Misc.u8Adc_DmaInterruptSoftware[Unit])
#     {
#         Adc_Adcdig_ClearDmarRegisters(Unit);
#         if ((uint8)STD_ON == Adc_pCfgPtr->Misc.au8Adc_HwUnit[Unit])
#         {
#             Mcl_DmaDisableHwRequest((Mcl_ChannelType)Adc_pCfgPtr->Misc.au8Adc_DmaChannel[Unit]);
#             #if (MCL_DMA_NOTIFICATION_SUPPORTED == STD_ON)
#             Mcl_DmaDisableNotification((Mcl_ChannelType)Adc_pCfgPtr->Misc.au8Adc_DmaChannel[Unit]);
#             #endif /* MCL_DMA_NOTIFICATION_SUPPORTED == STD_ON */
#         }
#     }
#     else
# #endif /* ADC_DMA_SUPPORTED */
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_BIT_CLEAR32(ADCDIG_IMR_REG_ADDR32(Unit), ADCDIG_ISR_END_CHAIN_NORM_CONV_MASK_U32);
	.d2line		1601
.Llo130:
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	rlwinm		r29,r31,2,22,29		# Unit=r31
	lwzx		r3,r3,r29		# Unit=r3 Unit=r3
	lwz		r0,32(r3)		# Test=r0 Unit=r3
.Llo131:
	.diab.bclri		r0,31		# Test=r0
	stw		r0,32(r3)		# Unit=r3 Test=r0
#     }
#     
#     /*  stop the conversion and abort the current group conversion */
# #if (ADC_BYPASS_CONSISTENCY_LOOP == STD_ON)
#     /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     if((uint8)STD_ON == Adc_pCfgPtr->pGroups[Group].u8AdcWithoutInterrupt)
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_RMW32(ADCDIG_MCR_REG_ADDR32(Unit), ADCDIG_NORMAL_CONV_MASK_U32 | ADCDIG_ABORT_CHAIN_U32, ADCDIG_ABORT_CHAIN_U32);
#     }
#     else
#     {
#         Test = Adc_Adcdig_StopConversionCheckTimeout(Unit, bStartApi);
#     }
# #else /* (ADC_BYPASS_CONSISTENCY_LOOP == STD_ON) */
#         Test = Adc_Adcdig_StopConversionCheckTimeout(Unit, bStartApi);
	.d2line		1618
	mr		r3,r31		# Unit=r3 Unit=r31
	mr		r4,r4		# bStartApi=r4 bStartApi=r4
	bl		Adc_Adcdig_StopConversionCheckTimeout
.Llo128:
	mr		r3,r3		# Test=r3 Test=r3
# #endif /* (ADC_BYPASS_CONSISTENCY_LOOP == STD_OFF) */
#     /* Clear the ABORT_CHAIN bit if set, otherwise the next chain will be ABORTED without any End of Chain Interrupt */
#     /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer. */
#     /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#     if (REG_READ32(ADCDIG_MCR_REG_ADDR32(Unit))&ADCDIG_ABORT_CHAIN_U32)
	.d2line		1623
.Llo132:
	lis		r4,ADCDIG_BASE_ADDR32@ha
	e_add16i		r4,r4,ADCDIG_BASE_ADDR32@l
	rlwinm		r29,r31,2,22,29		# Unit=r31
	lwzx		r4,r4,r29
	lwz		r0,0(r4)		# Test=r0
	se_btsti		r0,24		# Test=r0
	bc		1,2,.L614	# eq
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer. */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_BIT_CLEAR32(ADCDIG_MCR_REG_ADDR32(Unit), ADCDIG_ABORT_CHAIN_U32);
	.d2line		1627
.Llo127:
	lis		r4,ADCDIG_BASE_ADDR32@ha
	e_add16i		r4,r4,ADCDIG_BASE_ADDR32@l
	rlwinm		r29,r31,2,22,29		# Unit=r31
	lwzx		r4,r4,r29
	lwz		r0,0(r4)		# Test=r0
	.diab.bclri		r0,24		# Test=r0
	stw		r0,0(r4)		# Test=r0
.L614:
#     }
#     
#     /* Clear interrupt status after hardware disabled */
#     /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#     /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#     REG_WRITE32(ADCDIG_ISR_REG_ADDR32(Unit), ADCDIG_ISR_END_CHAIN_NORM_CONV_CLEAN_U32);
	.d2line		1633
	diab.li		r0,1		# Test=r0
	lis		r4,ADCDIG_BASE_ADDR32@ha
	e_add16i		r4,r4,ADCDIG_BASE_ADDR32@l
	rlwinm		r29,r31,2,22,29		# Unit=r31
	lwzx		r4,r4,r29
	stw		r0,16(r4)		# Test=r0
#     
#     if ((Std_ReturnType)E_NOT_OK == Test)
	.d2line		1635
	rlwinm		r0,r3,0,24,31		# Test=r0 Test=r3
	se_cmpi		r0,1		# Test=r0
	bc		0,2,.L615	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_4 Return statement before end of function. */
#         return Test;
	.d2line		1638
	rlwinm		r3,r3,0,24,31		# Test=r3 Test=r3
.Llo133:
	b		.L613
.L615:
#     }
# #if (ADC_SETCHANNEL_API == STD_ON)
#     /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     ChannelCount = Adc_aRuntimeGroupChannel[Group].ChannelCount;
# #else
#     /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     ChannelCount = Adc_pCfgPtr->pGroups[Group].AssignedChannelCount;
	.d2line		1645
.Llo134:
	lis		r4,Adc_pCfgPtr@ha		# ChTemp=r4
.Llo135:
	lwz		r4,Adc_pCfgPtr@l(r4)		# ChTemp=r4 ChTemp=r4
	lwz		r0,4(r4)		# Test=r0 ChTemp=r4
	rlwinm		r4,r30,0,16,31		# ChTemp=r4 Group=r30
	e_mulli		r4,r4,92		# ChTemp=r4 ChTemp=r4
	se_add		r4,r0		# ChTemp=r4 ChTemp=r4 Test=r0
	lhz		r7,80(r4)		# ChTemp=r4
.Llo138:
	mr		r7,r7		# ChannelCount=r7 ChannelCount=r7
# #endif
#     /* clear VALID bit from ADC result registers for all channels assigned to the group when conversion is aborted */
#     /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     for(ChTemp = 0U; ChTemp < ChannelCount; ChTemp++)
	.d2line		1649
	diab.li		r4,0		# ChTemp=r4
.L616:
	rlwinm		r0,r4,0,16,31		# Test=r0 ChTemp=r4
	rlwinm		r5,r7,0,16,31		# ChannelCount=r7
	se_cmp		r0,r5		# Test=r0
	bc		0,0,.L618	# ge
#     {
# #if (ADC_SETCHANNEL_API == STD_ON)
#         /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         ChIndexTemp = Adc_aRuntimeGroupChannel[Group].pChannel[ChTemp];
# #else
#         /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         ChIndexTemp = Adc_pCfgPtr->pGroups[Group].pAssignment[ChTemp];
	.d2line		1656
	lis		r6,Adc_pCfgPtr@ha
	lwz		r5,Adc_pCfgPtr@l(r6)
	lwz		r0,4(r5)		# Test=r0
	rlwinm		r5,r30,0,16,31		# Group=r30
	e_mulli		r5,r5,92
	se_add		r5,r0		# Test=r0
	lwz		r5,76(r5)
	rlwinm		r0,r4,0,16,31		# Test=r0 ChTemp=r4
	lbzx		r0,r5,r0		# Test=r0
.Llo136:
	mr		r0,r0		# ChIndexTemp=r0 ChIndexTemp=r0
# #endif
# 
#         /**
#         * @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic
#         * @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer
#         * @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type.
#         */
#         REG_READ32(ADCDIG_CH_DATA_REG_ADDR32(Unit, (uint32)Adc_pCfgPtr->pChannels[Unit][ChIndexTemp].ChId));
	.d2line		1664
	lis		r5,ADCDIG_BASE_ADDR32@ha
	e_add16i		r5,r5,ADCDIG_BASE_ADDR32@l
	rlwinm		r29,r31,2,22,29		# Unit=r31
	lwzux		r28,r5,r29
	lwz		r5,Adc_pCfgPtr@l(r6)
	lwz		r5,8(r5)
	lwzx		r5,r5,r29
	rlwinm		r0,r0,1,23,30		# ChIndexTemp=r0 ChIndexTemp=r0
	lbzx		r0,r5,r0		# ChIndexTemp=r0
	rlwinm		r0,r0,2,22,29		# ChIndexTemp=r0 ChIndexTemp=r0
	se_add		r28,r0		# ChIndexTemp=r0
	lwz		r0,256(r28)		# ChIndexTemp=r0
#     }
	.d2line		1665
.Llo137:
	diab.addi		r0,r4,1		# ChIndexTemp=r0 ChTemp=r4
	se_addi		r4,1		# ChTemp=r4 ChTemp=r4
	b		.L616
.L618:
# 
#     return Test;
	.d2line		1667
	rlwinm		r3,r3,0,24,31		# Test=r3 Test=r3
.L613:
# }
	.d2line		1668
	.d2epilogue_begin
.Llo125:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# Test=r0
	mtspr		lr,r0		# Test=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L804:
	.type		Adc_Adcdig_StopCurrentConversion,@function
	.size		Adc_Adcdig_StopCurrentConversion,.-Adc_Adcdig_StopCurrentConversion
# Number of nodes = 146

# Allocations for Adc_Adcdig_StopCurrentConversion
#	?a4		Unit
#	?a5		Group
#	?a6		bStartApi
#	?a7		$$131
#	?a8		$$130
#	?a9		Test
#	?a10		ChTemp
#	?a11		ChIndexTemp
#	?a12		ChannelCount
# FUNC(Std_ReturnType, ADC_CODE) Adc_Adcdig_ReadGroup
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1727,32
#$$ld
.L821:

#$$bf	Adc_Adcdig_ReadGroup,interprocedural,rasave,nostackparams
	.globl		Adc_Adcdig_ReadGroup
	.d2_cfa_start __cie
Adc_Adcdig_ReadGroup:
.Llo139:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
	stmw		r22,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	22,31,1,1
	stw		r0,68(r1)
	.d2_cfa_offset    108,-1
	mr		r26,r3		# Group=r26 Group=r3
.Llo140:
	mr		r31,r4		# pDataPtr=r31 pDataPtr=r4
.Llo141:
	mr		r30,r5		# pFlag=r30 pFlag=r5
	.d2prologue_end
# (
#     CONST(Adc_GroupType, AUTOMATIC) Group,
#     P2VAR(Adc_ValueGroupType, AUTOMATIC, ADC_APPL_DATA) pDataPtr,
#     P2VAR(boolean, AUTOMATIC, ADC_APPL_DATA) pFlag
# )
# {
#     VAR(Std_ReturnType, AUTOMATIC) ReadGroupRet = (Std_ReturnType)E_OK;
	.d2line		1734
	diab.li		r29,0		# ReadGroupRet=r29
#     VAR(Adc_ChannelIndexType, AUTOMATIC) ChannelCount;
#     /* Pointer to AdcGroup */
#     P2CONST(Adc_GroupConfigurationType, AUTOMATIC, ADC_APPL_CONST) pGroupPtr = NULL_PTR;
# 
#     /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     pGroupPtr = &(Adc_pCfgPtr->pGroups[Group]);
	.d2line		1740
.Llo152:
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r27,4(r3)		# pGroupPtr=r27
.Llo154:
	rlwinm		r0,r26,0,16,31		# Group=r26
	e_mulli		r0,r0,92
	se_add		r0,r27		# pGroupPtr=r27
	mr		r27,r0		# pGroupPtr=r27 pGroupPtr=r0
# #if (ADC_SETCHANNEL_API == STD_ON)
#     /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     ChannelCount = Adc_aRuntimeGroupChannel[Group].ChannelCount;
# #else
#     /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     ChannelCount = pGroupPtr->AssignedChannelCount;
	.d2line		1746
.Llo155:
	lhz		r28,80(r27)		# pGroupPtr=r27
.Llo153:
	mr		r28,r28		# ChannelCount=r28 ChannelCount=r28
# #endif
# 
#     /* If the group is configured for without interrupts*/
#     if((uint8)STD_ON == pGroupPtr->u8AdcWithoutInterrupt)
	.d2line		1750
	lbz		r0,90(r27)		# pGroupPtr=r27
.Llo156:
	se_cmpi		r0,1
	bc		0,2,.L625	# ne
	.section	.invalid_TEXT,,c
.L841:
#     {
#         VAR(uint32, AUTOMATIC) u32CdrValue;
#         VAR(uint32, AUTOMATIC) u32CdrMask = ADCDIG_CDR_DATA_MASK_U32;
	.d2line		1753
.Llo142:
	diab.li		r25,4095		# u32CdrMask=r25
#         VAR(Adc_ChannelIndexType, AUTOMATIC) Channel;
#         VAR(Adc_ChannelType, AUTOMATIC) ChIndex;
#         VAR(Adc_ChannelType, AUTOMATIC) LastCh;
# #if (ADC_SETCHANNEL_API == STD_ON)
#         VAR(Adc_ChannelType, AUTOMATIC) CrtChannel;
# #endif
#         /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         VAR(Adc_HwUnitType, AUTOMATIC) Unit = pGroupPtr->HwUnit;
# #if (ADC_RESULT_ALIGNMENT == ADC_ALIGN_LEFT)
#         P2CONST(Adc_Adcdig_HwUnitConfigurationType, AUTOMATIC, ADC_APPL_CONST) pConfigPtr = Adc_pCfgPtr->pAdc;
#         VAR(Adc_ChannelType, AUTOMATIC) Shift = 0U;
#         VAR(Adc_HwUnitType, AUTOMATIC) HwIndex;
# #endif /* (ADC_RESULT_ALIGNMENT == ADC_ALIGN_LEFT) */
# #if (ADC_ENABLE_LIMIT_CHECK == STD_ON)
#         /* Flag to set if ADC results are in the selected range */
#         VAR(boolean, AUTOMATIC) bWriteFlag = (boolean)TRUE;
	.d2line		1769
.Llo147:
	diab.li		r22,1		# bWriteFlag=r22
#         VAR(uint16, AUTOMATIC) u16CdrValueTemp = 0U;
	.d2line		1770
.Llo177:
	diab.li		r0,0		# u16CdrValueTemp=r0
	.d2line		1761
	lbz		r23,0(r27)		# Unit=r23 pGroupPtr=r27
.Llo176:
	mr		r23,r23		# Unit=r23 Unit=r23
# #endif /* (ADC_ENABLE_LIMIT_CHECK == STD_ON) */
#    
# #if (ADC_SETCHANNEL_API == STD_ON)
#         /** @violates @ref Adc_Adcdig_c_REF_8 only Array indexing shall be allowed */
#         LastCh = Adc_pCfgPtr->pChannels[Unit][Adc_aRuntimeGroupChannel[Group].pChannel[0]].ChId;
#         for(ChIndex = 0U; ChIndex < ChannelCount; ChIndex++)
#         {
#             /** @violates @ref Adc_Adcdig_c_REF_8 only Array indexing shall be allowed */
#             CrtChannel = Adc_pCfgPtr->pChannels[Unit][Adc_aRuntimeGroupChannel[Group].pChannel[ChIndex]].ChId;
#             if(CrtChannel > LastCh)
#             {
#                 /* Calculate the last channel to configure DMA when SetChannel function is invoked */
#                 LastCh = CrtChannel;
#             }
#         }
# #else
#         /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         LastCh = (Adc_ChannelType)pGroupPtr->LastCh;
	.d2line		1788
	lbz		r26,88(r27)		# Group=r26 pGroupPtr=r27
.Llo174:
	mr		r26,r26		# LastCh=r26 LastCh=r26
# #endif
#         /* Enter critical region */
#         SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_09();
	.d2line		1791
	bl		SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_09
# 
#         /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         u32CdrValue = REG_READ32(ADCDIG_CH_DATA_REG_ADDR32(Unit, (uint32)LastCh));
	.d2line		1796
	lis		r3,ADCDIG_BASE_ADDR32@ha
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l
	rlwinm		r4,r23,2,22,29		# Unit=r23
	lwzx		r0,r3,r4		# u16CdrValueTemp=r0
.Llo178:
	rlwinm		r26,r26,2,22,29		# LastCh=r26 LastCh=r26
	se_add		r26,r0		# LastCh=r26 LastCh=r26 u16CdrValueTemp=r0
	lwz		r0,256(r26)		# u16CdrValueTemp=r0 LastCh=r26
.Llo158:
	mr		r0,r0		# u32CdrValue=r0 u32CdrValue=r0
#         if(0UL == (u32CdrValue & ADCDIG_VALID_DATA_MASK_U32))
	.d2line		1797
.Llo159:
	se_btsti		r0,12		# u16CdrValueTemp=r0
	bc		0,2,.L626	# ne
#         {
#             SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_09();
	.d2line		1799
.Llo175:
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_09
#             /** @violates @ref Adc_Adcdig_c_REF_4 Return statement before end of function. */
#             return (Std_ReturnType)E_NOT_OK;
	.d2line		1801
	diab.li		r3,1
	b		.L624
.L626:
#         }
# #if (ADC_RESULT_ALIGNMENT == ADC_ALIGN_LEFT)
#         /* Get the index of hardware Unit*/
#         HwIndex = Adc_pCfgPtr->Misc.aHwLogicalId[Unit];
#         /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         Shift = (16U - (pConfigPtr[HwIndex].Res));
#         u32CdrMask = (uint32)(ADCDIG_CDR_DATA_MASK_U32 << Shift);
# #endif /* (ADC_RESULT_ALIGNMENT == ADC_ALIGN_LEFT) */
# 
#         /* Copy result direct from ADC result registers to output data array */
#         /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         for(Channel = 0U; Channel < ChannelCount; Channel++)
	.d2line		1813
	diab.li		r24,0		# Channel=r24
.L627:
.Llo168:
	rlwinm		r0,r24,0,16,31		# u32CdrValue=r0 Channel=r24
.Llo160:
	rlwinm		r3,r28,0,16,31		# u32CdrValue=r3 ChannelCount=r28
	se_cmp		r0,r3		# u32CdrValue=r0 u32CdrValue=r3
	bc		0,0,.L633	# ge
#         {
#             /* there is only one channel in the group - the first channel */
# #if (ADC_SETCHANNEL_API == STD_ON)
#             /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#             ChIndex = Adc_aRuntimeGroupChannel[Group].pChannel[Channel];
# #else
#             /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#             ChIndex = pGroupPtr->pAssignment[Channel];
	.d2line		1821
.Llo161:
	lwz		r3,76(r27)		# u32CdrValue=r3 pGroupPtr=r27
.Llo162:
	rlwinm		r0,r24,0,16,31		# u32CdrValue=r0 Channel=r24
	lbzx		r5,r3,r0		# ChIndex=r5 u32CdrValue=r3
.Llo169:
	mr		r5,r5		# ChIndex=r5 ChIndex=r5
# #endif
#             /**
#             * @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic
#             * @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer
#             * @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type.
#             */
#             u32CdrValue = REG_READ32(ADCDIG_CH_DATA_REG_ADDR32(Unit, (uint32)Adc_pCfgPtr->pChannels[Unit][ChIndex].ChId));
	.d2line		1828
	lis		r3,ADCDIG_BASE_ADDR32@ha		# u32CdrValue=r3
	diab.addi		r3,r3,ADCDIG_BASE_ADDR32@l		# u32CdrValue=r3 u32CdrValue=r3
	rlwinm		r4,r23,2,22,29		# Unit=r23
	lwzux		r0,r3,r4		# u32CdrValue=r0 u32CdrValue=r3
.Llo163:
	lis		r3,Adc_pCfgPtr@ha		# u32CdrValue=r3
.Llo164:
	lwz		r3,Adc_pCfgPtr@l(r3)		# u32CdrValue=r3 u32CdrValue=r3
	lwz		r6,8(r3)		# u32CdrValue=r3
	lwzux		r3,r6,r4		# u32CdrValue=r3
	rlwinm		r6,r5,1,23,30		# ChIndex=r5
	lbzx		r3,r3,r6		# u32CdrValue=r3 u32CdrValue=r3
	rlwinm		r3,r3,2,22,29		# u32CdrValue=r3 u32CdrValue=r3
	se_add		r3,r0		# u32CdrValue=r3 u32CdrValue=r3 u32CdrValue=r0
	lwz		r26,256(r3)		# LastCh=r26 u32CdrValue=r3
	mr		r26,r26		# u32CdrValue=r26 u32CdrValue=r26
# #if (ADC_ENABLE_LIMIT_CHECK == STD_ON)
#             /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#             if ((boolean)TRUE == Adc_ChannelsLimitCheckingCfg[Unit][ChIndex].bChannelLimitCheck)
	.d2line		1831
	rlwinm		r0,r5,0,24,31		# u32CdrValue=r0 ChIndex=r5
	mr		r0,r0		# u32CdrValue=r0
	lis		r3,Adc_ChannelsLimitCheckingCfg@ha		# u32CdrValue=r3
	diab.addi		r3,r3,Adc_ChannelsLimitCheckingCfg@l		# u32CdrValue=r3 u32CdrValue=r3
	lwzx		r3,r3,r4		# u32CdrValue=r3 u32CdrValue=r3
	rlwinm		r4,r0,4,0,27		# u32CdrValue=r0
	se_slwi		r0,2		# u32CdrValue=r0 u32CdrValue=r0
	subf		r0,r0,r4		# u32CdrValue=r0 u32CdrValue=r0
	lbzx		r0,r3,r0		# u32CdrValue=r0 u32CdrValue=r3
	se_cmpi		r0,1		# u32CdrValue=r0
	bc		0,2,.L630	# ne
#             {
#     #if (ADC_RESULT_ALIGNMENT == ADC_ALIGN_LEFT)
#                 u16CdrValueTemp = (uint16)((u32CdrValue & ADCDIG_SHIFT_MASK_U32) >> Shift);
#     #else
#                 u16CdrValueTemp = (uint16)(u32CdrValue & u32CdrMask);
	.d2line		1836
.Llo165:
	mr		r3,r26		# u32CdrValue=r3 u32CdrValue=r26
.Llo166:
	and		r3,r3,r25		# u32CdrValue=r3 u32CdrValue=r3 u32CdrMask=r25
.Llo179:
	mr		r3,r3		# u16CdrValueTemp=r3 u16CdrValueTemp=r3
#     #endif /* (ADC_RESULT_ALIGNMENT == ADC_ALIGN_LEFT) */
#                 (*pFlag) = (boolean)Adc_CheckConversionValuesInRange(u16CdrValueTemp, Unit, ChIndex);
	.d2line		1838
	rlwinm		r3,r3,0,16,31		# u32CdrValue=r3 u16CdrValueTemp=r3
.Llo180:
	mr		r3,r3		# u32CdrValue=r3
	rlwinm		r4,r23,0,24,31		# Unit=r23
.Llo170:
	rlwinm		r5,r5,0,24,31		# ChIndex=r5 ChIndex=r5
.Llo171:
	bl		Adc_CheckConversionValuesInRange
	stb		r3,0(r30)		# pFlag=r30 u32CdrValue=r3
#                 if ((boolean)FALSE == (*pFlag))
	.d2line		1839
	e_andi.		r0,r3,255		# u32CdrValue=r0 u32CdrValue=r3
#                 {
#                     /* ADC448, ADC449, ADC450 */
#                     ReadGroupRet = (Std_ReturnType)E_NOT_OK;
	.d2line		1842
	diab.li		r3,1		# u32CdrValue=r3
	isel		r29,r3,r29,2		# ReadGroupRet=r29 u32CdrValue=r3 ReadGroupRet=r29
#                     bWriteFlag = (boolean)FALSE;
	.d2line		1843
	isel		r22,0,r22,2		# bWriteFlag=r22 bWriteFlag=r22
.L630:
#                 }
#             }
#             if((boolean)TRUE == bWriteFlag)
	.d2line		1846
.Llo172:
	rlwinm		r0,r22,0,24,31		# u32CdrValue=r0 bWriteFlag=r22
	se_cmpi		r0,1		# u32CdrValue=r0
	bc		0,2,.L632	# ne
# #else
#             (*pFlag) = (boolean)TRUE;
# #endif /* ADC_ENABLE_LIMIT_CHECK == STD_ON */
#             {
#                 /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#                 *(pDataPtr + (Channel)) = (uint16)(u32CdrValue & u32CdrMask);
	.d2line		1852
.Llo173:
	mr		r3,r26		# u32CdrValue=r3 u32CdrValue=r26
	and		r3,r3,r25		# u32CdrValue=r3 u32CdrValue=r3 u32CdrMask=r25
	rlwinm		r0,r24,1,15,30		# u32CdrValue=r0 Channel=r24
	sthx		r3,r31,r0		# pDataPtr=r31 u32CdrValue=r3
.L632:
#             }
#         }
	.d2line		1854
	diab.addi		r0,r24,1		# u32CdrValue=r0 Channel=r24
	se_addi		r24,1		# Channel=r24 Channel=r24
	b		.L627
	.section	.invalid_TEXT,,c
.L842:
.L625:
	.section	.invalid_TEXT,,c
.L861:
#     }
#     else  /* If the group is configured with interrupts*/
#     {
#         VAR(Adc_ChannelIndexType, AUTOMATIC) u8Count = 0U;
	.d2line		1858
.Llo143:
	diab.li		r0,0		# u8Count=r0
#         P2VAR(Adc_ValueGroupType, AUTOMATIC, ADC_APPL_DATA) pResultPtr = NULL_PTR;
#         VAR(uint32, AUTOMATIC) u32DestOffset = 0UL;
#         VAR(Adc_StreamNumSampleType, AUTOMATIC) ResultIndex = 0U;
# 
#         /* Enter critical region */
#         SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_09();
	.d2line		1864
.Llo149:
	bl		SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_09
#         if (ADC_BUSY == Adc_aGroupStatus[Group].eConversion)
	.d2line		1865
.Llo150:
	lis		r3,Adc_aGroupStatus@ha
	e_add16i		r3,r3,Adc_aGroupStatus@l
	rlwinm		r0,r26,4,12,27		# u8Count=r0 Group=r26
.Llo181:
	se_add		r0,r3		# u8Count=r0 u8Count=r0
	lwzx		r0,r0,r0		# u8Count=r0 u8Count=r0
	se_cmpi		r0,1		# u8Count=r0
	bc		0,2,.L634	# ne
#         {
#             SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_09();
	.d2line		1867
.Llo182:
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_09
#             /** @violates @ref Adc_Adcdig_c_REF_4 Return statement before end of function. */
#             return (Std_ReturnType)E_NOT_OK;
	.d2line		1869
	diab.li		r3,1
	b		.L624
.L634:
#         }
#         /* Get index of last completed sample */
#         /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         ResultIndex = Adc_aGroupStatus[Group].ResultIndex - (Adc_StreamNumSampleType)1;
	.d2line		1873
	lis		r4,(Adc_aGroupStatus+12)@ha
	e_add16i		r4,r4,(Adc_aGroupStatus+12)@l
	rlwinm		r3,r26,4,12,27		# Group=r26
	se_add		r4,r3
	lhzx		r0,r0,r4		# u8Count=r0 u8Count=r0
.Llo183:
	diab.li		r3,65535
	se_add		r0,r3		# u8Count=r0 u8Count=r0
.Llo184:
	mr		r0,r0		# ResultIndex=r0 ResultIndex=r0
#         if ((Adc_StreamNumSampleType)0 == Adc_aGroupStatus[Group].ResultIndex)
	.d2line		1874
	lhzx		r3,r0,r4		# u8Count=r0
	se_cmpi		r3,0
	bc		0,2,.L635	# ne
#         {
#             /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#             ResultIndex = pGroupPtr->NumSamples - (Adc_StreamNumSampleType)1;
	.d2line		1877
	lhz		r0,72(r27)		# u8Count=r0 pGroupPtr=r27
.Llo185:
	diab.li		r3,65535
	se_add		r0,r3		# u8Count=r0 u8Count=r0
.Llo186:
	mr		r0,r0		# ResultIndex=r0 ResultIndex=r0
.L635:
#         }
# 
#         /**
#         * @violates @ref Adc_Adcdig_c_REF_5 Cast from pointer to pointer.
#         * @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic
#         */
#         pResultPtr=(Adc_ValueGroupType *)(pGroupPtr->pResultsBufferPtr[Group]+ResultIndex);
	.d2line		1884
.Llo144:
	lwz		r3,64(r27)		# ResultIndex=r3 pGroupPtr=r27
.Llo145:
	rlwinm		r26,r26,2,14,29		# Group=r26 Group=r26
.Llo146:
	lwzx		r3,r3,r26		# ResultIndex=r3 ResultIndex=r3
	rlwinm		r0,r0,1,15,30		# ResultIndex=r0 ResultIndex=r0
	se_add		r0,r3		# ResultIndex=r0 ResultIndex=r0 ResultIndex=r3
.Llo187:
	mr		r3,r0		# pResultPtr=r3 pResultPtr=r0
#         /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         u32DestOffset = pGroupPtr->NumSamples;
	.d2line		1886
	lhz		r6,72(r27)		# pGroupPtr=r27
.Llo189:
	mr		r6,r6		# u32DestOffset=r6 u32DestOffset=r6
# 
#         /* Copy results of last conversion from streaming buffer to internal buffer */
#         /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#         for(u8Count = 0U; u8Count < ChannelCount; u8Count++)
	.d2line		1890
	diab.li		r4,0		# u8Count=r4
.L636:
.Llo157:
	rlwinm		r0,r4,0,16,31		# ResultIndex=r0 u8Count=r4
.Llo188:
	rlwinm		r5,r28,0,16,31		# ChannelCount=r28
	se_cmp		r0,r5		# ResultIndex=r0
	bc		0,0,.L633	# ge
#         {
#             /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#             pDataPtr[u8Count] = (*pResultPtr);
	.d2line		1893
.Llo190:
	lhz		r5,0(r3)		# pResultPtr=r3
	rlwinm		r0,r4,1,15,30		# ResultIndex=r0 u8Count=r4
	sthx		r5,r31,r0		# pDataPtr=r31
#             /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#             pResultPtr += u32DestOffset;
	.d2line		1895
	rlwinm		r0,r6,1,0,30		# ResultIndex=r0 u32DestOffset=r6
.Llo191:
	se_add		r0,r3		# ResultIndex=r0 ResultIndex=r0 pResultPtr=r3
.Llo192:
	mr		r3,r0		# pResultPtr=r3 pResultPtr=r0
#         }
	.d2line		1896
	diab.addi		r0,r4,1		# ResultIndex=r0 u8Count=r4
	se_addi		r4,1		# u8Count=r4 u8Count=r4
	b		.L636
	.section	.invalid_TEXT,,c
.L862:
.L633:
#     }
#     /* Exit critical region */
#     SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_09();
	.d2line		1899
.Llo151:
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_09
# 
#     return(ReadGroupRet);
	.d2line		1901
	rlwinm		r3,r29,0,24,31		# u32CdrValue=r3 ReadGroupRet=r29
.Llo167:
	mr		r3,r3		# u32CdrValue=r3
.L624:
# }
	.d2line		1902
	.d2epilogue_begin
.Llo148:
	lmw		r22,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	lwz		r0,68(r1)		# u16CdrValueTemp=r0
	mtspr		lr,r0		# u16CdrValueTemp=lr
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L822:
	.type		Adc_Adcdig_ReadGroup,@function
	.size		Adc_Adcdig_ReadGroup,.-Adc_Adcdig_ReadGroup
# Number of nodes = 317

# Allocations for Adc_Adcdig_ReadGroup
#	?a4		Group
#	?a5		pDataPtr
#	?a6		pFlag
#	?a7		$$136
#	?a8		ReadGroupRet
#	?a9		ChannelCount
#	?a10		pGroupPtr
#	?a11		u32CdrValue
#	?a12		u32CdrMask
#	?a13		Channel
#	?a14		ChIndex
#	?a15		LastCh
#	?a16		Unit
#	?a17		bWriteFlag
#	?a18		u16CdrValueTemp
#	?a19		u8Count
#	?a20		pResultPtr
#	?a21		u32DestOffset
#	?a22		ResultIndex
# LOCAL_INLINE FUNC(void, ADC_CODE) Adc_Adcdig_PrepareGroupStart
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1916,35
#$$ld
.L876:

#$$bf	Adc_Adcdig_PrepareGroupStart,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r31,cr0,lr
	.d2_cfa_start __cie
Adc_Adcdig_PrepareGroupStart:
.Llo193:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr		# u32Extended=r0
.Llo199:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# u32Extended=r0
	.d2_cfa_offset    108,-1
	mr		r8,r3		# Unit=r8 Unit=r3
.Llo194:
	mr		r31,r4		# pGroupPtr=r31 pGroupPtr=r4
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit,
#     P2CONST(Adc_GroupConfigurationType, AUTOMATIC, ADC_APPL_CONST) pGroupPtr
# )
# {
# #if (ADC_SET_ADC_PRESAMPLE_ONCE == STD_OFF)
#     VAR(uint32, AUTOMATIC) u32Extended = 0UL;
	.d2line		1923
.Llo195:
	diab.li		r0,0		# u32Extended=r0
#     VAR(uint32, AUTOMATIC) u32External = 0UL;
# #endif /* #if ADC_SET_ADC_PRESAMPLE_ONCE == STD_OFF */
# 
# #if (ADC_SET_ADC_CONV_TIME_ONCE == STD_OFF)
#     VAR(Adc_ConversionTimeType, AUTOMATIC) ConvTime = 0U;
#     VAR(Adc_ConversionTimeType, AUTOMATIC) ConvTime1 = 0U;
#     VAR(Adc_ConversionTimeType, AUTOMATIC) ConvTime2 = 0U;
# #endif /* ADC_SET_ADC_CONV_TIME_ONCE == STD_OFF */
# 
# #ifdef ADC_WDG_SUPPORTED
#     Adc_Adcdig_ConfigureCwenrRegiters(Unit, pGroupPtr);
# #endif /* ADC_WDG_SUPPORTED */
# 
# #if (ADC_SET_ADC_PRESAMPLE_ONCE == STD_OFF)
# #if (ADC_PSR1_AVAILABLE == STD_ON)
#     u32Extended = pGroupPtr->u32ExtendedPsr;
	.d2line		1939
.Llo197:
	lwz		r5,44(r31)		# pGroupPtr=r31
.Llo200:
	mr		r5,r5		# u32Extended=r5 u32Extended=r5
# #endif
# #if (ADC_PSR2_AVAILABLE == STD_ON)
#     u32External = pGroupPtr->u32ExternalPsr;
	.d2line		1942
	lwz		r6,48(r31)		# pGroupPtr=r31
.Llo202:
	mr		r6,r6		# u32External=r6 u32External=r6
# #endif
#     /* presampling related configurations/initializations */
#     Adc_Adcdig_SetPsrRegisters(Unit, pGroupPtr->u32PrecisionPsr, u32Extended, u32External);
	.d2line		1945
	lwz		r4,40(r31)		# pGroupPtr=r31
	mr		r3,r8		# Unit=r3 Unit=r8
	mr		r5,r5		# u32Extended=r5 u32Extended=r5
.Llo201:
	mr		r6,r6		# u32External=r6 u32External=r6
.Llo203:
	bl		Adc_Adcdig_SetPsrRegisters
# #endif /* #if ADC_SET_ADC_PRESAMPLE_ONCE == STD_OFF */
# 
# #if (ADC_SET_ADC_CONV_TIME_ONCE == STD_OFF)
#     #if (ADC_DUAL_CLOCK_MODE == STD_ON)
#     ConvTime = (ADC_NORMAL == Adc_eClockMode)?pGroupPtr->ConvTime:pGroupPtr->AltConvTime;
#     #if (ADC_CTR1_AVAILABLE == STD_ON)
#         ConvTime1 = (ADC_NORMAL == Adc_eClockMode)?pGroupPtr->ConvTime1:pGroupPtr->AltConvTime1;
#     #endif
#     #if (ADC_CTR2_AVAILABLE == STD_ON)
#         ConvTime2 = (ADC_NORMAL == Adc_eClockMode)?pGroupPtr->ConvTime2:pGroupPtr->AltConvTime2;
#     #endif
#     #else
#     ConvTime = pGroupPtr->ConvTime;
	.d2line		1958
	lhz		r4,82(r31)		# pGroupPtr=r31
.Llo204:
	mr		r4,r4		# ConvTime=r4 ConvTime=r4
#     #if (ADC_CTR1_AVAILABLE == STD_ON)
#         ConvTime1 = pGroupPtr->ConvTime1;
	.d2line		1960
	lhz		r5,84(r31)		# pGroupPtr=r31
.Llo206:
	mr		r5,r5		# ConvTime1=r5 ConvTime1=r5
#     #endif
#     #if (ADC_CTR2_AVAILABLE == STD_ON)
#         ConvTime2 = pGroupPtr->ConvTime2;
	.d2line		1963
	lhz		r6,86(r31)		# pGroupPtr=r31
.Llo208:
	mr		r6,r6		# ConvTime2=r6 ConvTime2=r6
#     #endif
#     #endif
#     /*  Program Conversion Time*/
#     Adc_Adcdig_SetCtrRegisters(Unit, ConvTime, ConvTime1, ConvTime2);
	.d2line		1967
	mr		r3,r8		# Unit=r3 Unit=r8
	mr		r4,r4		# ConvTime=r4 ConvTime=r4
.Llo205:
	mr		r5,r5		# ConvTime1=r5 ConvTime1=r5
.Llo207:
	mr		r6,r6		# ConvTime2=r6 ConvTime2=r6
.Llo209:
	bl		Adc_Adcdig_SetCtrRegisters
# #endif /* ADC_SET_ADC_CONV_TIME_ONCE == STD_OFF */
# }
	.d2line		1969
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo198:
	lwz		r0,36(r1)		# u32Extended=r0
	mtspr		lr,r0		# u32Extended=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo196:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L877:
	.type		Adc_Adcdig_PrepareGroupStart,@function
	.size		Adc_Adcdig_PrepareGroupStart,.-Adc_Adcdig_PrepareGroupStart
# Number of nodes = 73

# Allocations for Adc_Adcdig_PrepareGroupStart
#	?a4		Unit
#	?a5		pGroupPtr
#	?a6		u32Extended
#	?a7		u32External
#	?a8		ConvTime
#	?a9		ConvTime1
#	?a10		ConvTime2
# FUNC(void, ADC_CODE) Adc_Adcdig_StartNormalConversion
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2692,22
#$$ld
.L893:

#$$bf	Adc_Adcdig_StartNormalConversion,interprocedural,rasave,nostackparams
	.globl		Adc_Adcdig_StartNormalConversion
	.d2_cfa_start __cie
Adc_Adcdig_StartNormalConversion:
.Llo210:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
.Llo220:
	stmw		r29,36(r1)		# offset r1+36  0x24
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,52(r1)		# Group=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Unit=r31 Unit=r3
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit
# )
# {
#     P2CONST(Adc_GroupConfigurationType, AUTOMATIC, ADC_APPL_CONST) pGroupPtr; /* Pointer to AdcGroup */
#     VAR(Adc_GroupType, AUTOMATIC) Group = 0U; /* Active group in the Queue */
	.d2line		2698
.Llo211:
	diab.li		r0,0		# Group=r0
#     VAR(Adc_NCMRType, AUTOMATIC) CMRMask;
# 
#     if ((Adc_QueueIndexType)0 == Adc_aUnitStatus[Unit].SwNormalQueueIndex)
	.d2line		2701
.Llo212:
	lis		r3,Adc_aUnitStatus@ha
	e_add16i		r3,r3,Adc_aUnitStatus@l
	rlwinm		r4,r31,3,21,28		# Unit=r31
	se_add		r3,r4
	lhzx		r0,r0,r3		# Group=r0 Group=r0
.Llo221:
	se_cmpi		r0,0		# Group=r0
	bc		1,2,.L650	# eq
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_4 Return statement before end of function. */
#         return;
#     }
# 
#     /* Get the Group ID of the current active group */
#     /* Load the first group in the queue (Adc_aUnitStatus[Unit].SwNormalQueue[0])*/
#     Group = Adc_aUnitStatus[Unit].SwNormalQueue[0];
	.d2line		2709
.Llo222:
	lis		r3,(Adc_aUnitStatus+2)@ha
	e_add16i		r3,r3,(Adc_aUnitStatus+2)@l
	rlwinm		r4,r31,3,21,28		# Unit=r31
	se_add		r3,r4
	lhzx		r29,r0,r3		# Group=r29 Group=r0
.Llo223:
	mr		r29,r29		# Group=r29 Group=r29
#     
#     /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     pGroupPtr = &(Adc_pCfgPtr->pGroups[Group]);
	.d2line		2712
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r30,4(r3)
	rlwinm		r4,r29,0,16,31		# Group=r29
	e_mulli		r4,r4,92
	se_add		r4,r30
.Llo216:
	mr		r30,r4		# pGroupPtr=r30 pGroupPtr=r4
# #if (ADC_ENABLE_LIMIT_CHECK == STD_ON)
#     /** @violates @ref Adc_Adcdig_c_REF_8 Array indexing shall be the only allowed form of pointer arithmetic */
#     if(((boolean)TRUE == Adc_aGroupStatus[Group].bLimitCheckFailed) && (ADC_CONV_MODE_ONESHOT == pGroupPtr->eMode))
	.d2line		2715
	lis		r3,(Adc_aGroupStatus+14)@ha
	e_add16i		r3,r3,(Adc_aGroupStatus+14)@l
	rlwinm		r4,r29,4,12,27		# Group=r29
.Llo217:
	se_add		r3,r4
	lbzx		r0,r0,r3		# Group=r0 Group=r0
	se_cmpi		r0,1		# Group=r0
	bc		0,2,.L652	# ne
.Llo218:
	lwz		r0,8(r30)		# Group=r0 pGroupPtr=r30
	se_cmpi		r0,0		# Group=r0
	bc		1,2,.L650	# eq
.L652:
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_4 Return statement before end of function. */
#         return;
#     }
# #endif /* ADC_ENABLE_LIMIT_CHECK == STD_ON */
# 
# #if ((defined(ADC_WDG_SUPPORTED)) || (ADC_SET_ADC_PRESAMPLE_ONCE == STD_OFF) || (ADC_SET_ADC_CONV_TIME_ONCE == STD_OFF))
#     Adc_Adcdig_PrepareGroupStart(Unit, pGroupPtr);
	.d2line		2723
	mr		r3,r31		# Unit=r3 Unit=r31
	mr		r4,r30		# pGroupPtr=r4 pGroupPtr=r30
	bl		Adc_Adcdig_PrepareGroupStart
# #endif /* ((defined(ADC_WDG_SUPPORTED)) || (ADC_SET_ADC_PRESAMPLE_ONCE == STD_OFF) || (ADC_SET_ADC_CONV_TIME_ONCE == STD_OFF)) */
# 
#     /** @violates @ref Adc_Adcdig_c_REF_12 It is needed for calculation value of go back space for source address.*/
#     Adc_GetCmrRegister(Unit, Group, &CMRMask);
	.d2line		2727
	rlwinm		r3,r31,0,24,31		# Unit=r3 Unit=r31
	rlwinm		r4,r29,0,16,31		# pGroupPtr=r4 Group=r29
	diab.addi		r5,r1,8
	bl		Adc_GetCmrRegister
# 
#     /* Program the Normal Conversion Mask register */
#     Adc_Adcdig_SetNcmrRegisters(Unit, CMRMask.Adc_u32NCMR0, CMRMask.Adc_u32NCMR1, CMRMask.Adc_u32NCMR2);
	.d2line		2730
	lwz		r4,8(r1)		# pGroupPtr=r4
	lwz		r5,12(r1)
	lwz		r6,16(r1)
	mr		r3,r31		# Unit=r3 Unit=r31
	bl		Adc_Adcdig_SetNcmrRegisters
# 
#     /* Program the Mode */
#     if(ADC_CONV_MODE_ONESHOT == pGroupPtr->eMode)
	.d2line		2733
	lwz		r0,8(r30)		# Group=r0 pGroupPtr=r30
	se_cmpi		r0,0		# Group=r0
	bc		0,2,.L653	# ne
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_BIT_CLEAR32(ADCDIG_MCR_REG_ADDR32(Unit),ADCDIG_CONVERSION_MODE_U32);
	.d2line		2737
.Llo224:
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	rlwinm		r4,r31,2,22,29		# pGroupPtr=r4 Unit=r31
	lwzx		r3,r3,r4		# Unit=r3 Unit=r3
	lwz		r0,0(r3)		# Group=r0 Unit=r3
.Llo225:
	.diab.bclri		r0,2		# Group=r0
	stw		r0,0(r3)		# Unit=r3 Group=r0
	b		.L654
.L653:
#     }
#     else
#     {
#         /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#         /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#         REG_BIT_SET32(ADCDIG_MCR_REG_ADDR32(Unit),ADCDIG_CONVERSION_MODE_U32);
	.d2line		2743
.Llo226:
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	rlwinm		r4,r31,2,22,29		# pGroupPtr=r4 Unit=r31
	lwzx		r3,r3,r4		# Unit=r3 Unit=r3
	lwz		r0,0(r3)		# Group=r0 Unit=r3
.Llo227:
	.diab.bseti		r0,2		# Group=r0
	stw		r0,0(r3)		# Unit=r3 Group=r0
.L654:
#     }
# 
#     /* Clear Interrupt status flag*/
#     /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#     /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#     REG_WRITE32(ADCDIG_ISR_REG_ADDR32(Unit), ADCDIG_ISR_END_CHAIN_NORM_CONV_CLEAN_U32);
	.d2line		2749
.Llo228:
	diab.li		r0,1		# Group=r0
.Llo229:
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	rlwinm		r4,r31,2,22,29		# pGroupPtr=r4 Unit=r31
	lwzx		r3,r3,r4		# Unit=r3 Unit=r3
	stw		r0,16(r3)		# Unit=r3 Group=r0
# 
# #ifdef ADC_DMA_SUPPORTED
#     if (ADC_DMA == Adc_pCfgPtr->Misc.u8Adc_DmaInterruptSoftware[Unit])
#     {
#         /* If the group is configured for with interrupts*/
#         if((uint8)STD_OFF == pGroupPtr->u8AdcWithoutInterrupt)
#         {
# #ifdef ADC_DMA_NOT_SUPPORT_CLEAR_SEQUENCE            
#             /** @violates @ref Adc_Adcdig_c_REF_9 */
#             /** @violates @ref Adc_Adcdig_c_REF_3 */
#             /** @violates @ref Adc_Adcdig_c_REF_13 */
#             /** @violates @ref Adc_Adcdig_c_REF_17 */
#             if (ADC_DMA_NOT_SUPPORT_CLEAR_SEQUENCE)
#             {
#                 /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#                 /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#                 REG_WRITE32(ADCDIG_DMAE_REG_ADDR32(Unit), ADCDIG_DMA_GLOBAL_EN_U32);
#             } 
#             else
# #endif                
#             {
#                 /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned long to pointer */
#                 /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#                 REG_WRITE32(ADCDIG_DMAE_REG_ADDR32(Unit), ADCDIG_DMA_GLOBAL_EN_U32 | ADCDIG_DMA_CLEAR_ON_READ_U32);
#             }
#             Adc_Adcdig_StartDmaOperation(Unit, Group);
#         }
#     }
#     else
# #endif /* ADC_DMA_SUPPORTED */
#     {
#         /* If the group is configured for with interrupts*/
#         if((uint8)STD_OFF == pGroupPtr->u8AdcWithoutInterrupt)
	.d2line		2782
	lbz		r0,90(r30)		# Group=r0 pGroupPtr=r30
	se_cmpi		r0,0		# Group=r0
	bc		0,2,.L655	# ne
#         {
#             /* Enable Interrupt */
#             /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#             /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#             REG_BIT_SET32(ADCDIG_IMR_REG_ADDR32(Unit), ADCDIG_ISR_END_CHAIN_NORM_CONV_EN_U32);
	.d2line		2787
.Llo219:
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	rlwinm		r4,r31,2,22,29		# pGroupPtr=r4 Unit=r31
	lwzx		r3,r3,r4		# Unit=r3 Unit=r3
	lwz		r0,32(r3)		# Group=r0 Unit=r3
.Llo230:
	.diab.bseti		r0,31		# Group=r0
	stw		r0,32(r3)		# Unit=r3 Group=r0
.L655:
#         }
#     }
# 
#     /* Start Normal Conversion */
#     /** @violates @ref Adc_Adcdig_c_REF_9 cast from unsigned int to pointer */
#     /** @violates @ref Adc_Adcdig_c_REF_3 A cast should not be performed between a pointer type and an integral type. */
#     REG_BIT_SET32(ADCDIG_MCR_REG_ADDR32(Unit), ADCDIG_NORMAL_START_CONV_EN_U32);
	.d2line		2794
.Llo213:
	lis		r3,ADCDIG_BASE_ADDR32@ha		# Unit=r3
.Llo214:
	e_add16i		r3,r3,ADCDIG_BASE_ADDR32@l		# Unit=r3 Unit=r3
	rlwinm		r31,r31,2,22,29		# Unit=r31 Unit=r31
	lwzx		r3,r3,r31		# Unit=r3 Unit=r3
	lwz		r0,0(r3)		# Group=r0 Unit=r3
.Llo231:
	.diab.bseti		r0,7		# Group=r0
	stw		r0,0(r3)		# Unit=r3 Group=r0
.L650:
# }
	.d2line		2795
	.d2epilogue_begin
.Llo215:
	lmw		r29,36(r1)		# offset r1+36  0x24
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)		# Group=r0
	mtspr		lr,r0		# Group=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L894:
	.type		Adc_Adcdig_StartNormalConversion,@function
	.size		Adc_Adcdig_StartNormalConversion,.-Adc_Adcdig_StartNormalConversion
# Number of nodes = 168

# Allocations for Adc_Adcdig_StartNormalConversion
#	?a4		Unit
#	?a5		$$135
#	?a6		$$134
#	?a7		$$133
#	?a8		$$132
#	?a9		pGroupPtr
#	?a10		Group
#	SP,8		CMRMask

# Allocations for module
	.section	.text_vle
	.0byte		.L904
	.section	.mcal_bss,,b
	.0byte		.L909
	.section	.text_vle
	.0byte		.L916
	.section	.mcal_bss,,b
	.0byte		.L921
	.section	.mcal_bss,,b
	.0byte		.L923
	.section	.text_vle
#$$ld
.L5:
.L1024:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Adc_Types.h"
.L933:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L922:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Adcdig.c"
.L917:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Adc_Reg_eSys_Adcdig.h"
.L905:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\include\\Adc_Cfg.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L672:
.L680:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Adcdig.c"
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
	.uleb128	6
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
	.uleb128	10
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
	.uleb128	53
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	15
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
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Adcdig.c"
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
.L669:
	.4byte		.L670-.L668
.L668:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L674-.L669
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Adcdig.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L671
	.4byte		.L672
	.4byte		.L675
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L681:
	.sleb128	2
	.4byte		.L677-.L669
	.byte		"Adc_Adcdig_SetCtrRegisters"
	.byte		0
	.4byte		.L680
	.uleb128	539
	.uleb128	35
	.byte		0x1
	.4byte		.L678
	.4byte		.L679
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L680
	.uleb128	539
	.uleb128	35
	.byte		"Unit"
	.byte		0
	.4byte		.L682
	.4byte		.L685
	.sleb128	3
	.4byte		.L680
	.uleb128	539
	.uleb128	35
	.byte		"ConvTime"
	.byte		0
	.4byte		.L686
	.4byte		.L689
	.sleb128	3
	.4byte		.L680
	.uleb128	539
	.uleb128	35
	.byte		"ConvTime1"
	.byte		0
	.4byte		.L686
	.4byte		.L690
	.sleb128	3
	.4byte		.L680
	.uleb128	539
	.uleb128	35
	.byte		"ConvTime2"
	.byte		0
	.4byte		.L686
	.4byte		.L691
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L677:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L696:
	.sleb128	2
	.4byte		.L693-.L669
	.byte		"Adc_Adcdig_SetPsrRegisters"
	.byte		0
	.4byte		.L680
	.uleb128	586
	.uleb128	35
	.byte		0x1
	.4byte		.L694
	.4byte		.L695
	.sleb128	3
	.4byte		.L680
	.uleb128	586
	.uleb128	35
	.byte		"Unit"
	.byte		0
	.4byte		.L682
	.4byte		.L697
	.sleb128	3
	.4byte		.L680
	.uleb128	586
	.uleb128	35
	.byte		"u32Precision"
	.byte		0
	.4byte		.L698
	.4byte		.L700
	.sleb128	3
	.4byte		.L680
	.uleb128	586
	.uleb128	35
	.byte		"u32Extended"
	.byte		0
	.4byte		.L698
	.4byte		.L701
	.sleb128	3
	.4byte		.L680
	.uleb128	586
	.uleb128	35
	.byte		"u32External"
	.byte		0
	.4byte		.L698
	.4byte		.L702
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L693:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L707:
	.sleb128	4
	.4byte		.L704-.L669
	.byte		"Adc_Adcdig_SetNcmrRegisters"
	.byte		0
	.4byte		.L680
	.uleb128	639
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L705
	.4byte		.L706
	.sleb128	3
	.4byte		.L680
	.uleb128	639
	.uleb128	22
	.byte		"Unit"
	.byte		0
	.4byte		.L682
	.4byte		.L708
	.sleb128	3
	.4byte		.L680
	.uleb128	639
	.uleb128	22
	.byte		"u32Precision"
	.byte		0
	.4byte		.L698
	.4byte		.L709
	.sleb128	3
	.4byte		.L680
	.uleb128	639
	.uleb128	22
	.byte		"u32Extended"
	.byte		0
	.4byte		.L698
	.4byte		.L710
	.sleb128	3
	.4byte		.L680
	.uleb128	639
	.uleb128	22
	.byte		"u32External"
	.byte		0
	.4byte		.L698
	.4byte		.L711
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L704:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L716:
	.sleb128	4
	.4byte		.L713-.L669
	.byte		"Adc_Adcdig_SetJcmrRegisters"
	.byte		0
	.4byte		.L680
	.uleb128	692
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L714
	.4byte		.L715
	.sleb128	3
	.4byte		.L680
	.uleb128	692
	.uleb128	22
	.byte		"Unit"
	.byte		0
	.4byte		.L682
	.4byte		.L717
	.sleb128	3
	.4byte		.L680
	.uleb128	692
	.uleb128	22
	.byte		"u32Precision"
	.byte		0
	.4byte		.L698
	.4byte		.L718
	.sleb128	3
	.4byte		.L680
	.uleb128	692
	.uleb128	22
	.byte		"u32Extended"
	.byte		0
	.4byte		.L698
	.4byte		.L719
	.sleb128	3
	.4byte		.L680
	.uleb128	692
	.uleb128	22
	.byte		"u32External"
	.byte		0
	.4byte		.L698
	.4byte		.L720
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L713:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L726:
	.sleb128	5
	.4byte		.L722-.L669
	.byte		"Adc_Adcdig_WritePowerDownBit"
	.byte		0
	.4byte		.L680
	.uleb128	1161
	.uleb128	40
	.4byte		.L725
	.byte		0x1
	.4byte		.L723
	.4byte		.L724
	.sleb128	3
	.4byte		.L680
	.uleb128	1161
	.uleb128	40
	.byte		"Unit"
	.byte		0
	.4byte		.L682
	.4byte		.L727
	.sleb128	3
	.4byte		.L680
	.uleb128	1161
	.uleb128	40
	.byte		"bSetPowerDown"
	.byte		0
	.4byte		.L728
	.4byte		.L729
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L730:
	.sleb128	6
	.4byte		.L680
	.uleb128	1167
	.uleb128	29
	.byte		"u32MsrStatus"
	.byte		0
	.4byte		.L698
	.4byte		.L731
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L732:
	.sleb128	7
	.4byte		.L680
	.uleb128	1168
	.uleb128	37
	.byte		"u32Timeout"
	.byte		0
	.4byte		.L733
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L734:
	.sleb128	6
	.4byte		.L680
	.uleb128	1169
	.uleb128	29
	.byte		"u32ExpectedMsrStatus"
	.byte		0
	.4byte		.L698
	.4byte		.L735
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L722:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L740:
	.sleb128	5
	.4byte		.L737-.L669
	.byte		"Adc_Adcdig_InitUnitHardware"
	.byte		0
	.4byte		.L680
	.uleb128	842
	.uleb128	45
	.4byte		.L725
	.byte		0x1
	.4byte		.L738
	.4byte		.L739
	.sleb128	3
	.4byte		.L680
	.uleb128	842
	.uleb128	45
	.byte		"Unit"
	.byte		0
	.4byte		.L682
	.4byte		.L741
	.sleb128	3
	.4byte		.L680
	.uleb128	842
	.uleb128	45
	.byte		"pConfigPtr"
	.byte		0
	.4byte		.L742
	.4byte		.L746
.L747:
	.sleb128	6
	.4byte		.L680
	.uleb128	848
	.uleb128	36
	.byte		"HwIndex"
	.byte		0
	.4byte		.L682
	.4byte		.L748
.L749:
	.sleb128	6
	.4byte		.L680
	.uleb128	849
	.uleb128	28
	.byte		"u32PscrVal"
	.byte		0
	.4byte		.L698
	.4byte		.L750
.L751:
	.sleb128	7
	.4byte		.L680
	.uleb128	853
	.uleb128	37
	.byte		"u32Timeout"
	.byte		0
	.4byte		.L733
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L737:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L756:
	.sleb128	4
	.4byte		.L753-.L669
	.byte		"Adc_Adcdig_Init"
	.byte		0
	.4byte		.L680
	.uleb128	1229
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L754
	.4byte		.L755
	.sleb128	3
	.4byte		.L680
	.uleb128	1229
	.uleb128	22
	.byte		"pCfgPtr"
	.byte		0
	.4byte		.L757
	.4byte		.L761
.L762:
	.sleb128	6
	.4byte		.L680
	.uleb128	1234
	.uleb128	36
	.byte		"Unit"
	.byte		0
	.4byte		.L682
	.4byte		.L763
.L764:
	.sleb128	6
	.4byte		.L680
	.uleb128	1235
	.uleb128	36
	.byte		"DemTest"
	.byte		0
	.4byte		.L725
	.4byte		.L765
.L766:
	.sleb128	6
	.4byte		.L680
	.uleb128	1236
	.uleb128	76
	.byte		"pConfigPtr"
	.byte		0
	.4byte		.L742
	.4byte		.L767
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L753:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L772:
	.sleb128	4
	.4byte		.L769-.L669
	.byte		"Adc_Adcdig_ClearDmarRegisters"
	.byte		0
	.4byte		.L680
	.uleb128	3910
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L770
	.4byte		.L771
	.sleb128	3
	.4byte		.L680
	.uleb128	3910
	.uleb128	22
	.byte		"Unit"
	.byte		0
	.4byte		.L682
	.4byte		.L773
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L769:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L778:
	.sleb128	2
	.4byte		.L775-.L669
	.byte		"Adc_Adcdig_DeInitHardware"
	.byte		0
	.4byte		.L680
	.uleb128	1284
	.uleb128	35
	.byte		0x1
	.4byte		.L776
	.4byte		.L777
	.sleb128	3
	.4byte		.L680
	.uleb128	1284
	.uleb128	35
	.byte		"Unit"
	.byte		0
	.4byte		.L682
	.4byte		.L779
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L775:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L784:
	.sleb128	4
	.4byte		.L781-.L669
	.byte		"Adc_Adcdig_DeInit"
	.byte		0
	.4byte		.L680
	.uleb128	1433
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L782
	.4byte		.L783
.L785:
	.sleb128	6
	.4byte		.L680
	.uleb128	1435
	.uleb128	36
	.byte		"Unit"
	.byte		0
	.4byte		.L682
	.4byte		.L786
.L787:
	.sleb128	6
	.4byte		.L680
	.uleb128	1437
	.uleb128	34
	.byte		"GroupIdx"
	.byte		0
	.4byte		.L788
	.4byte		.L789
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L781:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L794:
	.sleb128	5
	.4byte		.L791-.L669
	.byte		"Adc_Adcdig_StopConversionCheckTimeout"
	.byte		0
	.4byte		.L680
	.uleb128	1504
	.uleb128	45
	.4byte		.L725
	.byte		0x1
	.4byte		.L792
	.4byte		.L793
	.sleb128	3
	.4byte		.L680
	.uleb128	1504
	.uleb128	45
	.byte		"Unit"
	.byte		0
	.4byte		.L682
	.4byte		.L795
	.sleb128	3
	.4byte		.L680
	.uleb128	1504
	.uleb128	45
	.byte		"bStartApi"
	.byte		0
	.4byte		.L728
	.4byte		.L796
.L797:
	.sleb128	6
	.4byte		.L680
	.uleb128	1510
	.uleb128	28
	.byte		"u32Timeout"
	.byte		0
	.4byte		.L698
	.4byte		.L798
.L799:
	.sleb128	6
	.4byte		.L680
	.uleb128	1511
	.uleb128	28
	.byte		"u32MsrStatus"
	.byte		0
	.4byte		.L698
	.4byte		.L800
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L791:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L805:
	.sleb128	8
	.4byte		.L802-.L669
	.byte		"Adc_Adcdig_StopCurrentConversion"
	.byte		0
	.4byte		.L680
	.uleb128	1572
	.uleb128	32
	.4byte		.L725
	.byte		0x1
	.byte		0x1
	.4byte		.L803
	.4byte		.L804
	.sleb128	3
	.4byte		.L680
	.uleb128	1572
	.uleb128	32
	.byte		"Unit"
	.byte		0
	.4byte		.L682
	.4byte		.L806
	.sleb128	3
	.4byte		.L680
	.uleb128	1572
	.uleb128	32
	.byte		"Group"
	.byte		0
	.4byte		.L788
	.4byte		.L807
	.sleb128	3
	.4byte		.L680
	.uleb128	1572
	.uleb128	32
	.byte		"bStartApi"
	.byte		0
	.4byte		.L728
	.4byte		.L808
.L809:
	.sleb128	6
	.4byte		.L680
	.uleb128	1579
	.uleb128	36
	.byte		"Test"
	.byte		0
	.4byte		.L725
	.4byte		.L810
.L811:
	.sleb128	6
	.4byte		.L680
	.uleb128	1580
	.uleb128	42
	.byte		"ChTemp"
	.byte		0
	.4byte		.L812
	.4byte		.L813
.L814:
	.sleb128	6
	.4byte		.L680
	.uleb128	1581
	.uleb128	37
	.byte		"ChIndexTemp"
	.byte		0
	.4byte		.L815
	.4byte		.L816
.L817:
	.sleb128	6
	.4byte		.L680
	.uleb128	1582
	.uleb128	42
	.byte		"ChannelCount"
	.byte		0
	.4byte		.L812
	.4byte		.L818
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L802:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L823:
	.sleb128	8
	.4byte		.L820-.L669
	.byte		"Adc_Adcdig_ReadGroup"
	.byte		0
	.4byte		.L680
	.uleb128	1727
	.uleb128	32
	.4byte		.L725
	.byte		0x1
	.byte		0x1
	.4byte		.L821
	.4byte		.L822
	.sleb128	3
	.4byte		.L680
	.uleb128	1727
	.uleb128	32
	.byte		"Group"
	.byte		0
	.4byte		.L824
	.4byte		.L825
	.sleb128	3
	.4byte		.L680
	.uleb128	1727
	.uleb128	32
	.byte		"pDataPtr"
	.byte		0
	.4byte		.L826
	.4byte		.L828
	.sleb128	3
	.4byte		.L680
	.uleb128	1727
	.uleb128	32
	.byte		"pFlag"
	.byte		0
	.4byte		.L829
	.4byte		.L830
.L831:
	.sleb128	6
	.4byte		.L680
	.uleb128	1734
	.uleb128	36
	.byte		"ReadGroupRet"
	.byte		0
	.4byte		.L725
	.4byte		.L832
.L833:
	.sleb128	6
	.4byte		.L680
	.uleb128	1735
	.uleb128	42
	.byte		"ChannelCount"
	.byte		0
	.4byte		.L812
	.4byte		.L834
.L835:
	.sleb128	6
	.4byte		.L680
	.uleb128	1737
	.uleb128	68
	.byte		"pGroupPtr"
	.byte		0
	.4byte		.L836
	.4byte		.L840
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	9
	.4byte		.L844
	.4byte		.L841
	.4byte		.L842
.L845:
	.sleb128	6
	.4byte		.L680
	.uleb128	1752
	.uleb128	32
	.byte		"u32CdrValue"
	.byte		0
	.4byte		.L698
	.4byte		.L846
.L847:
	.sleb128	6
	.4byte		.L680
	.uleb128	1753
	.uleb128	32
	.byte		"u32CdrMask"
	.byte		0
	.4byte		.L698
	.4byte		.L848
.L849:
	.sleb128	6
	.4byte		.L680
	.uleb128	1754
	.uleb128	46
	.byte		"Channel"
	.byte		0
	.4byte		.L812
	.4byte		.L850
.L851:
	.sleb128	6
	.4byte		.L680
	.uleb128	1755
	.uleb128	41
	.byte		"ChIndex"
	.byte		0
	.4byte		.L815
	.4byte		.L852
.L853:
	.sleb128	6
	.4byte		.L680
	.uleb128	1756
	.uleb128	41
	.byte		"LastCh"
	.byte		0
	.4byte		.L815
	.4byte		.L854
.L855:
	.sleb128	6
	.4byte		.L680
	.uleb128	1761
	.uleb128	40
	.byte		"Unit"
	.byte		0
	.4byte		.L682
	.4byte		.L856
.L857:
	.sleb128	6
	.4byte		.L680
	.uleb128	1769
	.uleb128	33
	.byte		"bWriteFlag"
	.byte		0
	.4byte		.L728
	.4byte		.L858
.L859:
	.sleb128	6
	.4byte		.L680
	.uleb128	1770
	.uleb128	32
	.byte		"u16CdrValueTemp"
	.byte		0
	.4byte		.L687
	.4byte		.L860
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L844:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	9
	.4byte		.L864
	.4byte		.L861
	.4byte		.L862
.L865:
	.sleb128	6
	.4byte		.L680
	.uleb128	1858
	.uleb128	46
	.byte		"u8Count"
	.byte		0
	.4byte		.L812
	.4byte		.L866
.L867:
	.sleb128	6
	.4byte		.L680
	.uleb128	1859
	.uleb128	61
	.byte		"pResultPtr"
	.byte		0
	.4byte		.L826
	.4byte		.L868
.L869:
	.sleb128	6
	.4byte		.L680
	.uleb128	1860
	.uleb128	32
	.byte		"u32DestOffset"
	.byte		0
	.4byte		.L698
	.4byte		.L870
.L871:
	.sleb128	6
	.4byte		.L680
	.uleb128	1861
	.uleb128	49
	.byte		"ResultIndex"
	.byte		0
	.4byte		.L872
	.4byte		.L873
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L864:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L820:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L878:
	.sleb128	2
	.4byte		.L875-.L669
	.byte		"Adc_Adcdig_PrepareGroupStart"
	.byte		0
	.4byte		.L680
	.uleb128	1916
	.uleb128	35
	.byte		0x1
	.4byte		.L876
	.4byte		.L877
	.sleb128	3
	.4byte		.L680
	.uleb128	1916
	.uleb128	35
	.byte		"Unit"
	.byte		0
	.4byte		.L682
	.4byte		.L879
	.sleb128	3
	.4byte		.L680
	.uleb128	1916
	.uleb128	35
	.byte		"pGroupPtr"
	.byte		0
	.4byte		.L836
	.4byte		.L880
.L881:
	.sleb128	6
	.4byte		.L680
	.uleb128	1923
	.uleb128	28
	.byte		"u32Extended"
	.byte		0
	.4byte		.L698
	.4byte		.L882
.L883:
	.sleb128	6
	.4byte		.L680
	.uleb128	1924
	.uleb128	28
	.byte		"u32External"
	.byte		0
	.4byte		.L698
	.4byte		.L884
.L885:
	.sleb128	6
	.4byte		.L680
	.uleb128	1928
	.uleb128	44
	.byte		"ConvTime"
	.byte		0
	.4byte		.L686
	.4byte		.L886
.L887:
	.sleb128	6
	.4byte		.L680
	.uleb128	1929
	.uleb128	44
	.byte		"ConvTime1"
	.byte		0
	.4byte		.L686
	.4byte		.L888
.L889:
	.sleb128	6
	.4byte		.L680
	.uleb128	1930
	.uleb128	44
	.byte		"ConvTime2"
	.byte		0
	.4byte		.L686
	.4byte		.L890
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L875:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L895:
	.sleb128	4
	.4byte		.L892-.L669
	.byte		"Adc_Adcdig_StartNormalConversion"
	.byte		0
	.4byte		.L680
	.uleb128	2692
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L893
	.4byte		.L894
	.sleb128	3
	.4byte		.L680
	.uleb128	2692
	.uleb128	22
	.byte		"Unit"
	.byte		0
	.4byte		.L682
	.4byte		.L896
.L897:
	.sleb128	6
	.4byte		.L680
	.uleb128	2697
	.uleb128	68
	.byte		"pGroupPtr"
	.byte		0
	.4byte		.L836
	.4byte		.L898
.L899:
	.sleb128	6
	.4byte		.L680
	.uleb128	2698
	.uleb128	35
	.byte		"Group"
	.byte		0
	.4byte		.L788
	.4byte		.L900
.L901:
	.sleb128	7
	.4byte		.L680
	.uleb128	2699
	.uleb128	34
	.byte		"CMRMask"
	.byte		0
	.4byte		.L902
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L892:
	.section	.debug_info,,n
.L904:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L905
	.uleb128	244
	.uleb128	62
	.byte		"Adc_RegistersAvailable"
	.byte		0
	.4byte		.L906
	.section	.debug_info,,n
.L909:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L905
	.uleb128	256
	.uleb128	78
	.byte		"Adc_ChannelsLimitCheckingCfg"
	.byte		0
	.4byte		.L910
	.section	.debug_info,,n
.L916:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L917
	.uleb128	136
	.uleb128	33
	.byte		"ADCDIG_BASE_ADDR32"
	.byte		0
	.4byte		.L918
	.section	.debug_info,,n
.L921:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L922
	.uleb128	449
	.uleb128	57
	.byte		"Adc_pCfgPtr"
	.byte		0
	.4byte		.L757
	.section	.debug_info,,n
.L923:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L922
	.uleb128	474
	.uleb128	42
	.byte		"Adc_aGroupStatus"
	.byte		0
	.4byte		.L924
	.section	.debug_info,,n
.L928:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L922
	.uleb128	476
	.uleb128	42
	.byte		"Adc_aUnitStatus"
	.byte		0
	.4byte		.L929
	.section	.debug_info,,n
.L760:
	.sleb128	11
	.4byte		.L933
	.uleb128	34
	.uleb128	14
	.4byte		.L934-.L2
	.uleb128	44
	.section	.debug_info,,n
.L512:
	.sleb128	12
	.byte		"pAdc"
	.byte		0
	.4byte		.L742
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L513:
	.sleb128	12
	.byte		"pGroups"
	.byte		0
	.4byte		.L836
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L514:
	.sleb128	12
	.byte		"pChannels"
	.byte		0
	.4byte		.L935
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L515:
	.sleb128	12
	.byte		"GroupCount"
	.byte		0
	.4byte		.L788
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L516:
	.sleb128	12
	.byte		"Misc"
	.byte		0
	.4byte		.L940
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L934:
.L908:
	.sleb128	11
	.4byte		.L933
	.uleb128	34
	.uleb128	14
	.4byte		.L943-.L2
	.uleb128	164
.L487:
	.sleb128	12
	.byte		"au8Adc_CeocfrPresent"
	.byte		0
	.4byte		.L944
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L488:
	.sleb128	12
	.byte		"au8Adc_DmarPresent"
	.byte		0
	.4byte		.L947
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L489:
	.sleb128	12
	.byte		"au8Adc_PsrPresent"
	.byte		0
	.4byte		.L949
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L490:
	.sleb128	12
	.byte		"au8Adc_CtrPresent"
	.byte		0
	.4byte		.L951
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L491:
	.sleb128	12
	.byte		"au8Adc_NcmrPresent"
	.byte		0
	.4byte		.L953
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L492:
	.sleb128	12
	.byte		"au8Adc_JcmrPresent"
	.byte		0
	.4byte		.L955
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L493:
	.sleb128	12
	.byte		"au8Adc_DsdrPresent"
	.byte		0
	.4byte		.L957
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L494:
	.sleb128	12
	.byte		"au8Adc_CwselrPresent"
	.byte		0
	.4byte		.L959
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L495:
	.sleb128	12
	.byte		"au8Adc_CwenrPresent"
	.byte		0
	.4byte		.L961
	.sleb128	2
	.byte		0x23
	.uleb128	124
	.byte		0x1
.L496:
	.sleb128	12
	.byte		"au8Adc_AworrPresent"
	.byte		0
	.4byte		.L963
	.sleb128	3
	.byte		0x23
	.uleb128	136
	.byte		0x1
.L497:
	.sleb128	12
	.byte		"au8Adc_ThrhlrPresent"
	.byte		0
	.4byte		.L965
	.sleb128	3
	.byte		0x23
	.uleb128	148
	.byte		0x1
	.sleb128	0
.L943:
.L942:
	.sleb128	11
	.4byte		.L933
	.uleb128	34
	.uleb128	14
	.4byte		.L967-.L2
	.uleb128	30
.L480:
	.sleb128	12
	.byte		"u8Adc_DmaInterruptSoftware"
	.byte		0
	.4byte		.L968
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L481:
	.sleb128	12
	.byte		"Adc_MaxHwCfg"
	.byte		0
	.4byte		.L970
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L482:
	.sleb128	12
	.byte		"aAdc_Groups"
	.byte		0
	.4byte		.L971
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L483:
	.sleb128	12
	.byte		"aAdc_Channels"
	.byte		0
	.4byte		.L973
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L484:
	.sleb128	12
	.byte		"au8Adc_DmaChannel"
	.byte		0
	.4byte		.L976
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L485:
	.sleb128	12
	.byte		"au8Adc_HwUnit"
	.byte		0
	.4byte		.L978
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L486:
	.sleb128	12
	.byte		"aHwLogicalId"
	.byte		0
	.4byte		.L980
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
	.sleb128	0
.L967:
.L839:
	.sleb128	11
	.4byte		.L933
	.uleb128	34
	.uleb128	14
	.4byte		.L982-.L2
	.uleb128	92
.L453:
	.sleb128	12
	.byte		"HwUnit"
	.byte		0
	.4byte		.L970
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L454:
	.sleb128	12
	.byte		"eAccessMode"
	.byte		0
	.4byte		.L983
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L455:
	.sleb128	12
	.byte		"eMode"
	.byte		0
	.4byte		.L986
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L456:
	.sleb128	12
	.byte		"eType"
	.byte		0
	.4byte		.L989
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L457:
	.sleb128	12
	.byte		"eReplecementMode"
	.byte		0
	.4byte		.L992
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L458:
	.sleb128	12
	.byte		"eTriggerSource"
	.byte		0
	.4byte		.L995
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L459:
	.sleb128	12
	.byte		"Notification"
	.byte		0
	.4byte		.L998
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L460:
	.sleb128	12
	.byte		"u32PrecisionChannel"
	.byte		0
	.4byte		.L920
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L461:
	.sleb128	12
	.byte		"u32ExtendedChannel"
	.byte		0
	.4byte		.L920
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L462:
	.sleb128	12
	.byte		"u32ExternalChannel"
	.byte		0
	.4byte		.L920
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L463:
	.sleb128	12
	.byte		"u32PrecisionPsr"
	.byte		0
	.4byte		.L920
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L464:
	.sleb128	12
	.byte		"u32ExtendedPsr"
	.byte		0
	.4byte		.L920
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L465:
	.sleb128	12
	.byte		"u32ExternalPsr"
	.byte		0
	.4byte		.L920
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L466:
	.sleb128	12
	.byte		"u32Wer0"
	.byte		0
	.4byte		.L920
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L467:
	.sleb128	12
	.byte		"u32Wer1"
	.byte		0
	.4byte		.L920
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L468:
	.sleb128	12
	.byte		"u32Wer2"
	.byte		0
	.4byte		.L920
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L469:
	.sleb128	12
	.byte		"pResultsBufferPtr"
	.byte		0
	.4byte		.L1003
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L470:
	.sleb128	12
	.byte		"eBufferMode"
	.byte		0
	.4byte		.L1004
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L471:
	.sleb128	12
	.byte		"NumSamples"
	.byte		0
	.4byte		.L1007
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L472:
	.sleb128	12
	.byte		"pAssignment"
	.byte		0
	.4byte		.L1008
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L473:
	.sleb128	12
	.byte		"AssignedChannelCount"
	.byte		0
	.4byte		.L1011
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L474:
	.sleb128	12
	.byte		"ConvTime"
	.byte		0
	.4byte		.L1012
	.sleb128	2
	.byte		0x23
	.uleb128	82
	.byte		0x1
.L475:
	.sleb128	12
	.byte		"ConvTime1"
	.byte		0
	.4byte		.L1012
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L476:
	.sleb128	12
	.byte		"ConvTime2"
	.byte		0
	.4byte		.L1012
	.sleb128	2
	.byte		0x23
	.uleb128	86
	.byte		0x1
.L477:
	.sleb128	12
	.byte		"LastCh"
	.byte		0
	.4byte		.L975
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L478:
	.sleb128	12
	.byte		"FirstCh"
	.byte		0
	.4byte		.L975
	.sleb128	2
	.byte		0x23
	.uleb128	89
	.byte		0x1
.L479:
	.sleb128	12
	.byte		"u8AdcWithoutInterrupt"
	.byte		0
	.4byte		.L946
	.sleb128	2
	.byte		0x23
	.uleb128	90
	.byte		0x1
	.sleb128	0
.L982:
.L745:
	.sleb128	11
	.4byte		.L933
	.uleb128	34
	.uleb128	14
	.4byte		.L1013-.L2
	.uleb128	36
.L437:
	.sleb128	12
	.byte		"AdcHardwareUnitId"
	.byte		0
	.4byte		.L970
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L438:
	.sleb128	12
	.byte		"u32AdcMainConfig"
	.byte		0
	.4byte		.L920
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L439:
	.sleb128	12
	.byte		"u32AdcPrescale"
	.byte		0
	.4byte		.L920
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L440:
	.sleb128	12
	.byte		"u8AdcPwrDownDelay"
	.byte		0
	.4byte		.L946
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L441:
	.sleb128	12
	.byte		"u16AdcMuxDelay"
	.byte		0
	.4byte		.L1014
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L442:
	.sleb128	12
	.byte		"u8PreVal0"
	.byte		0
	.4byte		.L946
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L443:
	.sleb128	12
	.byte		"u8PreVal1"
	.byte		0
	.4byte		.L946
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L444:
	.sleb128	12
	.byte		"u8PreVal2"
	.byte		0
	.4byte		.L946
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L445:
	.sleb128	12
	.byte		"u8PreConv"
	.byte		0
	.4byte		.L946
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L446:
	.sleb128	12
	.byte		"ConvTimeNormal"
	.byte		0
	.4byte		.L1012
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L447:
	.sleb128	12
	.byte		"ConvTimeAlternate"
	.byte		0
	.4byte		.L1012
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L448:
	.sleb128	12
	.byte		"ConvTimeNormal1"
	.byte		0
	.4byte		.L1012
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L449:
	.sleb128	12
	.byte		"ConvTimeAlternate1"
	.byte		0
	.4byte		.L1012
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L450:
	.sleb128	12
	.byte		"ConvTimeNormal2"
	.byte		0
	.4byte		.L1012
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L451:
	.sleb128	12
	.byte		"ConvTimeAlternate2"
	.byte		0
	.4byte		.L1012
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L452:
	.sleb128	12
	.byte		"Res"
	.byte		0
	.4byte		.L1015
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L1013:
.L915:
	.sleb128	11
	.4byte		.L933
	.uleb128	34
	.uleb128	14
	.4byte		.L1017-.L2
	.uleb128	12
.L433:
	.sleb128	12
	.byte		"bChannelLimitCheck"
	.byte		0
	.4byte		.L1018
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	12
	.byte		"eChannelRange"
	.byte		0
	.4byte		.L1019
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	12
	.byte		"ChannelHighLimit"
	.byte		0
	.4byte		.L1022
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	12
	.byte		"ChannelLowLimit"
	.byte		0
	.4byte		.L1022
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L1017:
.L939:
	.sleb128	11
	.4byte		.L933
	.uleb128	34
	.uleb128	14
	.4byte		.L1023-.L2
	.uleb128	2
.L431:
	.sleb128	12
	.byte		"ChId"
	.byte		0
	.4byte		.L975
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L432:
	.sleb128	12
	.byte		"u8EnablePresampling"
	.byte		0
	.4byte		.L946
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L1023:
.L903:
	.sleb128	11
	.4byte		.L1024
	.uleb128	369
	.uleb128	1
	.4byte		.L1025-.L2
	.uleb128	12
.L259:
	.sleb128	12
	.byte		"Adc_u32NCMR0"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L260:
	.sleb128	12
	.byte		"Adc_u32NCMR1"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L261:
	.sleb128	12
	.byte		"Adc_u32NCMR2"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L1025:
.L932:
	.sleb128	11
	.4byte		.L1024
	.uleb128	369
	.uleb128	1
	.4byte		.L1026-.L2
	.uleb128	8
.L255:
	.sleb128	12
	.byte		"SwNormalQueueIndex"
	.byte		0
	.4byte		.L1027
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L256:
	.sleb128	12
	.byte		"SwNormalQueue"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L257:
	.sleb128	12
	.byte		"SwInjectedQueue"
	.byte		0
	.4byte		.L1032
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L258:
	.sleb128	12
	.byte		"SwInjectedQueueIndex"
	.byte		0
	.4byte		.L1027
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L1026:
.L927:
	.sleb128	11
	.4byte		.L1024
	.uleb128	369
	.uleb128	1
	.4byte		.L1034-.L2
	.uleb128	16
.L250:
	.sleb128	12
	.byte		"eConversion"
	.byte		0
	.4byte		.L1035
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L251:
	.sleb128	12
	.byte		"eAlreadyConverted"
	.byte		0
	.4byte		.L1038
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L252:
	.sleb128	12
	.byte		"eNotification"
	.byte		0
	.4byte		.L1041
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L253:
	.sleb128	12
	.byte		"ResultIndex"
	.byte		0
	.4byte		.L1043
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L254:
	.sleb128	12
	.byte		"bLimitCheckFailed"
	.byte		0
	.4byte		.L1044
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L1034:
	.section	.debug_info,,n
.L1021:
	.sleb128	13
	.4byte		.L1024
	.uleb128	369
	.uleb128	1
	.4byte		.L1045-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	14
	.byte		"ADC_RANGE_ALWAYS"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"ADC_RANGE_BETWEEN"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"ADC_RANGE_NOT_BETWEEN"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"ADC_RANGE_NOT_OVER_HIGH"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"ADC_RANGE_NOT_UNDER_LOW"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"ADC_RANGE_OVER_HIGH"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"ADC_RANGE_UNDER_LOW"
	.byte		0
	.sleb128	6
	.sleb128	0
.L1045:
.L997:
	.sleb128	13
	.4byte		.L1024
	.uleb128	315
	.uleb128	1
	.4byte		.L1046-.L2
	.uleb128	4
	.sleb128	14
	.byte		"ADC_TRIGG_SRC_SW"
	.byte		0
	.sleb128	0
	.sleb128	0
.L1046:
.L1042:
	.sleb128	13
	.4byte		.L1024
	.uleb128	292
	.uleb128	1
	.4byte		.L1047-.L2
	.uleb128	4
	.sleb128	14
	.byte		"ADC_NOTIFICATION_DISABLED"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"ADC_NOTIFICATION_ENABLED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1047:
.L1037:
	.sleb128	13
	.4byte		.L1024
	.uleb128	279
	.uleb128	1
	.4byte		.L1048-.L2
	.uleb128	4
	.sleb128	14
	.byte		"ADC_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"ADC_BUSY"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"ADC_COMPLETED"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"ADC_STREAM_COMPLETED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1048:
.L1006:
	.sleb128	13
	.4byte		.L1024
	.uleb128	268
	.uleb128	1
	.4byte		.L1049-.L2
	.uleb128	4
	.sleb128	14
	.byte		"ADC_STREAM_BUFFER_LINEAR"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"ADC_STREAM_BUFFER_CIRCULAR"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1049:
.L994:
	.sleb128	13
	.4byte		.L1024
	.uleb128	257
	.uleb128	1
	.4byte		.L1050-.L2
	.uleb128	4
	.sleb128	14
	.byte		"ADC_GROUP_REPL_ABORT_RESTART"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"ADC_GROUP_REPL_SUSPEND_RESUME"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1050:
.L988:
	.sleb128	13
	.4byte		.L1024
	.uleb128	246
	.uleb128	1
	.4byte		.L1051-.L2
	.uleb128	4
	.sleb128	14
	.byte		"ADC_CONV_MODE_ONESHOT"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"ADC_CONV_MODE_CONTINUOUS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1051:
.L991:
	.sleb128	13
	.4byte		.L1024
	.uleb128	235
	.uleb128	1
	.4byte		.L1052-.L2
	.uleb128	4
	.sleb128	14
	.byte		"ADC_CONV_TYPE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"ADC_CONV_TYPE_INJECTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1052:
.L985:
	.sleb128	13
	.4byte		.L1024
	.uleb128	224
	.uleb128	1
	.4byte		.L1053-.L2
	.uleb128	4
	.sleb128	14
	.byte		"ADC_ACCESS_MODE_SINGLE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"ADC_ACCESS_MODE_STREAMING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1053:
.L1040:
	.sleb128	13
	.4byte		.L1024
	.uleb128	213
	.uleb128	1
	.4byte		.L1054-.L2
	.uleb128	4
	.sleb128	14
	.byte		"ADC_NOT_YET_CONVERTED"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"ADC_ALREADY_CONVERTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1054:
	.section	.debug_info,,n
.L684:
	.sleb128	15
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L683:
	.sleb128	16
	.byte		"uint8"
	.byte		0
	.4byte		.L684
.L682:
	.sleb128	16
	.byte		"Adc_HwUnitType"
	.byte		0
	.4byte		.L683
.L688:
	.sleb128	15
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L687:
	.sleb128	16
	.byte		"uint16"
	.byte		0
	.4byte		.L688
.L686:
	.sleb128	16
	.byte		"Adc_ConversionTimeType"
	.byte		0
	.4byte		.L687
.L699:
	.sleb128	15
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L698:
	.sleb128	16
	.byte		"uint32"
	.byte		0
	.4byte		.L699
.L725:
	.sleb128	16
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L683
.L728:
	.sleb128	16
	.byte		"boolean"
	.byte		0
	.4byte		.L684
	.section	.debug_info,,n
.L733:
	.sleb128	17
	.4byte		.L698
.L744:
	.sleb128	16
	.byte		"Adc_Adcdig_HwUnitConfigurationType"
	.byte		0
	.4byte		.L745
	.section	.debug_info,,n
.L743:
	.sleb128	18
	.4byte		.L744
	.section	.debug_info,,n
.L742:
	.sleb128	19
	.4byte		.L743
.L759:
	.sleb128	16
	.byte		"Adc_ConfigType"
	.byte		0
	.4byte		.L760
.L758:
	.sleb128	18
	.4byte		.L759
.L757:
	.sleb128	19
	.4byte		.L758
.L788:
	.sleb128	16
	.byte		"Adc_GroupType"
	.byte		0
	.4byte		.L687
.L812:
	.sleb128	16
	.byte		"Adc_ChannelIndexType"
	.byte		0
	.4byte		.L687
.L815:
	.sleb128	16
	.byte		"Adc_ChannelType"
	.byte		0
	.4byte		.L683
.L824:
	.sleb128	18
	.4byte		.L788
.L827:
	.sleb128	16
	.byte		"Adc_ValueGroupType"
	.byte		0
	.4byte		.L687
.L826:
	.sleb128	19
	.4byte		.L827
.L829:
	.sleb128	19
	.4byte		.L728
.L838:
	.sleb128	16
	.byte		"Adc_GroupConfigurationType"
	.byte		0
	.4byte		.L839
.L837:
	.sleb128	18
	.4byte		.L838
.L836:
	.sleb128	19
	.4byte		.L837
.L872:
	.sleb128	16
	.byte		"Adc_StreamNumSampleType"
	.byte		0
	.4byte		.L687
.L902:
	.sleb128	16
	.byte		"Adc_NCMRType"
	.byte		0
	.4byte		.L903
.L907:
	.sleb128	16
	.byte		"Adc_Adcdig_RegisterAvailabilityType"
	.byte		0
	.4byte		.L908
.L906:
	.sleb128	18
	.4byte		.L907
.L914:
	.sleb128	16
	.byte		"Adc_Adcdig_ChannelLimitCheckingType"
	.byte		0
	.4byte		.L915
.L913:
	.sleb128	18
	.4byte		.L914
.L912:
	.sleb128	19
	.4byte		.L913
	.section	.debug_info,,n
.L910:
	.sleb128	20
	.4byte		.L911-.L2
	.4byte		.L912
	.section	.debug_info,,n
	.sleb128	21
	.sleb128	0
.L911:
.L920:
	.sleb128	18
	.4byte		.L698
.L918:
	.sleb128	20
	.4byte		.L919-.L2
	.4byte		.L920
	.section	.debug_info,,n
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L919:
.L926:
	.sleb128	16
	.byte		"Adc_GroupStatusType"
	.byte		0
	.4byte		.L927
.L924:
	.sleb128	20
	.4byte		.L925-.L2
	.4byte		.L926
	.sleb128	22
	.uleb128	0
	.sleb128	0
.L925:
.L931:
	.sleb128	16
	.byte		"Adc_UnitStatusType"
	.byte		0
	.4byte		.L932
.L929:
	.sleb128	20
	.4byte		.L930-.L2
	.4byte		.L931
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L930:
.L938:
	.sleb128	16
	.byte		"Adc_Adcdig_ChannelConfigurationType"
	.byte		0
	.4byte		.L939
.L937:
	.sleb128	18
	.4byte		.L938
.L936:
	.sleb128	19
	.4byte		.L937
.L935:
	.sleb128	19
	.4byte		.L936
.L941:
	.sleb128	16
	.byte		"Adc_Adcdig_MultiConfigType"
	.byte		0
	.4byte		.L942
.L940:
	.sleb128	18
	.4byte		.L941
.L946:
	.sleb128	18
	.4byte		.L683
.L944:
	.sleb128	20
	.4byte		.L945-.L2
	.4byte		.L946
	.sleb128	22
	.uleb128	3
	.sleb128	22
	.uleb128	2
	.sleb128	0
.L945:
.L947:
	.sleb128	20
	.4byte		.L948-.L2
	.4byte		.L946
	.sleb128	22
	.uleb128	3
	.sleb128	22
	.uleb128	2
	.sleb128	0
.L948:
.L949:
	.sleb128	20
	.4byte		.L950-.L2
	.4byte		.L946
	.sleb128	22
	.uleb128	3
	.sleb128	22
	.uleb128	2
	.sleb128	0
.L950:
.L951:
	.sleb128	20
	.4byte		.L952-.L2
	.4byte		.L946
	.sleb128	22
	.uleb128	3
	.sleb128	22
	.uleb128	2
	.sleb128	0
.L952:
.L953:
	.sleb128	20
	.4byte		.L954-.L2
	.4byte		.L946
	.sleb128	22
	.uleb128	3
	.sleb128	22
	.uleb128	2
	.sleb128	0
.L954:
.L955:
	.sleb128	20
	.4byte		.L956-.L2
	.4byte		.L946
	.sleb128	22
	.uleb128	3
	.sleb128	22
	.uleb128	2
	.sleb128	0
.L956:
.L957:
	.sleb128	20
	.4byte		.L958-.L2
	.4byte		.L946
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L958:
.L959:
	.sleb128	20
	.4byte		.L960-.L2
	.4byte		.L946
	.sleb128	22
	.uleb128	3
	.sleb128	22
	.uleb128	11
	.sleb128	0
.L960:
.L961:
	.sleb128	20
	.4byte		.L962-.L2
	.4byte		.L946
	.sleb128	22
	.uleb128	3
	.sleb128	22
	.uleb128	2
	.sleb128	0
.L962:
.L963:
	.sleb128	20
	.4byte		.L964-.L2
	.4byte		.L946
	.sleb128	22
	.uleb128	3
	.sleb128	22
	.uleb128	2
	.sleb128	0
.L964:
.L965:
	.sleb128	20
	.4byte		.L966-.L2
	.4byte		.L946
	.sleb128	22
	.uleb128	3
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L966:
.L968:
	.sleb128	20
	.4byte		.L969-.L2
	.4byte		.L946
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L969:
.L970:
	.sleb128	18
	.4byte		.L682
.L971:
	.sleb128	20
	.4byte		.L972-.L2
	.4byte		.L824
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L972:
.L975:
	.sleb128	18
	.4byte		.L815
.L973:
	.sleb128	20
	.4byte		.L974-.L2
	.4byte		.L975
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L974:
.L976:
	.sleb128	20
	.4byte		.L977-.L2
	.4byte		.L946
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L977:
.L978:
	.sleb128	20
	.4byte		.L979-.L2
	.4byte		.L946
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L979:
.L980:
	.sleb128	20
	.4byte		.L981-.L2
	.4byte		.L970
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L981:
.L984:
	.sleb128	16
	.byte		"Adc_GroupAccessModeType"
	.byte		0
	.4byte		.L985
.L983:
	.sleb128	18
	.4byte		.L984
.L987:
	.sleb128	16
	.byte		"Adc_GroupConvModeType"
	.byte		0
	.4byte		.L988
.L986:
	.sleb128	18
	.4byte		.L987
.L990:
	.sleb128	16
	.byte		"Adc_GroupConvType"
	.byte		0
	.4byte		.L991
.L989:
	.sleb128	18
	.4byte		.L990
.L993:
	.sleb128	16
	.byte		"Adc_GroupReplacementType"
	.byte		0
	.4byte		.L994
.L992:
	.sleb128	18
	.4byte		.L993
.L996:
	.sleb128	16
	.byte		"Adc_TriggerSourceType"
	.byte		0
	.4byte		.L997
.L995:
	.sleb128	18
	.4byte		.L996
	.section	.debug_info,,n
.L1001:
	.sleb128	23
	.4byte		.L1002-.L2
	.byte		0x1
	.sleb128	0
.L1002:
.L1000:
	.sleb128	19
	.4byte		.L1001
.L999:
	.sleb128	16
	.byte		"Adc_NotifyType"
	.byte		0
	.4byte		.L1000
.L998:
	.sleb128	18
	.4byte		.L999
.L1003:
	.sleb128	19
	.4byte		.L826
.L1005:
	.sleb128	16
	.byte		"Adc_StreamBufferModeType"
	.byte		0
	.4byte		.L1006
.L1004:
	.sleb128	18
	.4byte		.L1005
.L1007:
	.sleb128	18
	.4byte		.L872
.L1010:
	.sleb128	16
	.byte		"Adc_GroupDefType"
	.byte		0
	.4byte		.L815
.L1009:
	.sleb128	18
	.4byte		.L1010
.L1008:
	.sleb128	19
	.4byte		.L1009
.L1011:
	.sleb128	18
	.4byte		.L812
.L1012:
	.sleb128	18
	.4byte		.L686
.L1014:
	.sleb128	18
	.4byte		.L687
.L1016:
	.sleb128	16
	.byte		"Adc_ResolutionType"
	.byte		0
	.4byte		.L683
.L1015:
	.sleb128	18
	.4byte		.L1016
.L1018:
	.sleb128	18
	.4byte		.L728
.L1020:
	.sleb128	16
	.byte		"Adc_ChannelRangeSelectType"
	.byte		0
	.4byte		.L1021
.L1019:
	.sleb128	18
	.4byte		.L1020
.L1022:
	.sleb128	18
	.4byte		.L827
.L1028:
	.sleb128	16
	.byte		"Adc_QueueIndexType"
	.byte		0
	.4byte		.L687
.L1027:
	.sleb128	17
	.4byte		.L1028
.L1031:
	.sleb128	17
	.4byte		.L788
.L1029:
	.sleb128	20
	.4byte		.L1030-.L2
	.4byte		.L1031
	.sleb128	22
	.uleb128	0
	.sleb128	0
.L1030:
.L1032:
	.sleb128	20
	.4byte		.L1033-.L2
	.4byte		.L1031
	.sleb128	22
	.uleb128	0
	.sleb128	0
.L1033:
.L1036:
	.sleb128	16
	.byte		"Adc_StatusType"
	.byte		0
	.4byte		.L1037
.L1035:
	.sleb128	17
	.4byte		.L1036
.L1039:
	.sleb128	16
	.byte		"Adc_GroupConversionStateType"
	.byte		0
	.4byte		.L1040
.L1038:
	.sleb128	17
	.4byte		.L1039
.L1041:
	.sleb128	16
	.byte		"Adc_NotificationType"
	.byte		0
	.4byte		.L1042
.L1043:
	.sleb128	17
	.4byte		.L872
.L1044:
	.sleb128	17
	.4byte		.L728
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L674:
	.sleb128	0
.L670:

	.section	.debug_loc,,n
	.align	0
.L685:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L689:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),4
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo2),4
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo4),4
	.d2locend
.L690:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),5
	.d2locend
.L691:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo12),6
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo4),7
	.d2locend
.L697:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locend
.L700:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo18),4
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),4
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),4
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo15),4
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo17),4
	.d2locend
.L701:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),5
	.d2locend
.L702:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo25),6
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo17),7
	.d2locend
.L708:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locend
.L709:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo31),4
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),4
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),4
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo28),4
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo30),4
	.d2locend
.L710:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),5
	.d2locend
.L711:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo38),6
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo30),7
	.d2locend
.L717:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),3
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),3
	.d2locend
.L718:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo44),4
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),4
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),4
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo41),4
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo43),4
	.d2locend
.L719:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),5
	.d2locend
.L720:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo51),6
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo43),7
	.d2locend
.L727:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),30
	.d2locend
.L729:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),4
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo55),31
	.d2locend
.L731:
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),0
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),0
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),0
	.d2locend
.L735:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),0
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),0
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),0
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo56),31
	.d2locend
.L741:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),3
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),31
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),3
	.d2locend
.L746:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo77),4
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo78),30
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo74),4
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),30
	.d2locend
.L748:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo74),29
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo76),29
	.d2locend
.L750:
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo76),0
	.d2locend
.L761:
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),3
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),3
	.d2locend
.L763:
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),31
	.d2locend
.L765:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),3
	.d2locend
.L767:
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo88),30
	.d2locend
.L773:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),3
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),0
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),0
	.d2locend
.L779:
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),3
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),3
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),3
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),31
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),3
	.d2locend
.L786:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),31
	.d2locend
.L789:
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),3
	.d2locend
.L795:
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),3
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),3
	.d2locend
.L796:
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo115),4
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),31
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo118),31
	.d2locend
.L798:
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo119),31
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo120),4
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo112),4
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo118),4
	.d2locend
.L800:
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo112),5
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),5
	.d2locend
.L806:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),3
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),31
	.d2locend
.L807:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo126),4
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo125),30
	.d2locend
.L808:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo128),5
	.d2locend
.L810:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),0
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo128),0
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo133),3
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo125),3
	.d2locend
.L813:
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo125),4
	.d2locend
.L816:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),0
	.d2locend
.L818:
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo125),7
	.d2locend
.L825:
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo140),3
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),26
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo144),26
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),26
	.d2locend
.L828:
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo142),4
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo148),31
	.d2locend
.L830:
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo142),5
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo143),30
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo150),5
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo148),30
	.d2locend
.L832:
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo148),29
	.d2locend
.L834:
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo148),28
	.d2locend
.L840:
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo155),27
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo156),0
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo157),27
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo148),27
	.d2locend
.L846:
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo159),0
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo161),0
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo163),3
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo165),0
	.d2locreg	%offsetof(.Llo166), %offsetof(.Llo143),26
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo148),3
	.d2locend
.L848:
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo143),25
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo148),25
	.d2locend
.L850:
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo143),24
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo148),24
	.d2locend
.L852:
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo165),5
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo171),5
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo173),5
	.d2locend
.L854:
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo175),26
	.d2locend
.L856:
	.d2locreg	%offsetof(.Llo176), %offsetof(.Llo143),23
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo148),23
	.d2locend
.L858:
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo143),22
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo148),22
	.d2locend
.L860:
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo158),0
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo175),0
	.d2locreg	%offsetof(.Llo179), %offsetof(.Llo180),3
	.d2locend
.L866:
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo182),0
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo184),0
	.d2locreg	%offsetof(.Llo185), %offsetof(.Llo186),0
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo151),4
	.d2locend
.L868:
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo157),0
	.d2locreg	%offsetof(.Llo188), %offsetof(.Llo151),3
	.d2locend
.L870:
	.d2locreg	%offsetof(.Llo189), %offsetof(.Llo151),6
	.d2locend
.L873:
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo187),0
	.d2locreg	%offsetof(.Llo188), %offsetof(.Llo190),0
	.d2locreg	%offsetof(.Llo191), %offsetof(.Llo192),0
	.d2locend
.L879:
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo194),3
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo196),8
	.d2locend
.L880:
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo195),4
	.d2locreg	%offsetof(.Llo197), %offsetof(.Llo198),31
	.d2locend
.L882:
	.d2locreg	%offsetof(.Llo199), %offsetof(.Llo197),0
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo201),5
	.d2locend
.L884:
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo203),6
	.d2locend
.L886:
	.d2locreg	%offsetof(.Llo204), %offsetof(.Llo205),4
	.d2locend
.L888:
	.d2locreg	%offsetof(.Llo206), %offsetof(.Llo207),5
	.d2locend
.L890:
	.d2locreg	%offsetof(.Llo208), %offsetof(.Llo209),6
	.d2locend
.L896:
	.d2locreg	%offsetof(.Llo210), %offsetof(.Llo211),3
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo213),31
	.d2locreg	%offsetof(.Llo214), %offsetof(.Llo215),3
	.d2locend
.L898:
	.d2locreg	%offsetof(.Llo216), %offsetof(.Llo217),4
	.d2locreg	%offsetof(.Llo218), %offsetof(.Llo219),30
	.d2locend
.L900:
	.d2locreg	%offsetof(.Llo220), %offsetof(.Llo212),0
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),0
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo224),29
	.d2locreg	%offsetof(.Llo225), %offsetof(.Llo226),0
	.d2locreg	%offsetof(.Llo227), %offsetof(.Llo228),0
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo219),0
	.d2locreg	%offsetof(.Llo230), %offsetof(.Llo213),0
	.d2locreg	%offsetof(.Llo231), %offsetof(.Llo215),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Adc_Adcdig_StartNormalConversion"
	.wrcm.nstrlist "calls", "Adc_Adcdig_PrepareGroupStart","Adc_Adcdig_SetNcmrRegisters","Adc_GetCmrRegister"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_PrepareGroupStart"
	.wrcm.nstrlist "calls", "Adc_Adcdig_SetCtrRegisters","Adc_Adcdig_SetPsrRegisters"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_ReadGroup"
	.wrcm.nstrlist "calls", "Adc_CheckConversionValuesInRange","SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_09","SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_09"
	.wrcm.nint32 "frameSize", 64
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_StopCurrentConversion"
	.wrcm.nstrlist "calls", "Adc_Adcdig_StopConversionCheckTimeout"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_StopConversionCheckTimeout"
	.wrcm.nstrlist "calls", "SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_07","SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_08","SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_07","SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_08"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_DeInit"
	.wrcm.nstrlist "calls", "Adc_Adcdig_DeInitHardware","SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_06","SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_06"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_DeInitHardware"
	.wrcm.nstrlist "calls", "Adc_Adcdig_ClearDmarRegisters","Adc_Adcdig_SetCtrRegisters","Adc_Adcdig_SetJcmrRegisters","Adc_Adcdig_SetNcmrRegisters","Adc_Adcdig_SetPsrRegisters","Adc_Adcdig_WritePowerDownBit"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_ClearDmarRegisters"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_Init"
	.wrcm.nstrlist "calls", "Adc_Adcdig_InitUnitHardware","SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_03","SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_03"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_InitUnitHardware"
	.wrcm.nstrlist "calls", "Adc_Adcdig_WritePowerDownBit"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_WritePowerDownBit"
	.wrcm.nstrlist "calls", "SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_31","SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_31"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_SetJcmrRegisters"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_SetNcmrRegisters"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_SetPsrRegisters"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Adc_Adcdig_SetCtrRegisters"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Adc_Adcdig.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Adc_Adcdig.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Adc_Adcdig.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Adc_Adcdig.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Adc_Adcdig.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Adc_Adcdig.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Adc\ssc\make\..\..\generator\integration_package\src\Adc_Adcdig.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
