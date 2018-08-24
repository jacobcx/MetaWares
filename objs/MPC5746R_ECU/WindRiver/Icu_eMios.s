#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Icu_eMios.c"
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
# LOCAL_INLINE FUNC(void, ICU_CODE) Icu_eMios_SetChConfig
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L694:
	.section	.invalid_TEXT,,c
#$$ld
.L690:
	.0byte		.L688
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_eMios.c"
        .d2line         344,35
#$$ld
.L697:

#$$bf	Icu_eMios_SetChConfig,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Icu_eMios_SetChConfig:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# nHwChannel=r31 nHwChannel=r3
	mr		r30,r4		# nMask=r30 nMask=r4
	.d2prologue_end
# (
#     VAR(Icu_eMios_ChannelType,      AUTOMATIC) nHwChannel,
#     VAR(Icu_eMios_ChConfigType,     AUTOMATIC) nMask
# )
# {
#     SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_13();
	.d2line		350
.Llo5:
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_13
#     Icu_eMios_aChConfig[nHwChannel] |= nMask;
	.d2line		351
.Llo2:
	lis		r3,Icu_eMios_aChConfig@ha
	e_add16i		r3,r3,Icu_eMios_aChConfig@l
.Llo3:
	rlwinm		r31,r31,2,22,29		# nHwChannel=r31 nHwChannel=r31
.Llo4:
	lwzx		r0,r3,r31
	or		r0,r0,r30		# nMask=r30
	stwx		r0,r3,r31
#     SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_13();  
	.d2line		352
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_13
# }
	.d2line		353
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
.L698:
	.type		Icu_eMios_SetChConfig,@function
	.size		Icu_eMios_SetChConfig,.-Icu_eMios_SetChConfig
# Number of nodes = 14

# Allocations for Icu_eMios_SetChConfig
#	?a4		nHwChannel
#	?a5		nMask
#	?a6		$$117
# LOCAL_INLINE FUNC(void, ICU_CODE) Icu_eMios_ClearChConfig
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         366,35
#$$ld
.L711:

#$$bf	Icu_eMios_ClearChConfig,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Icu_eMios_ClearChConfig:
.Llo7:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# nHwChannel=r31 nHwChannel=r3
	mr		r30,r4		# nMask=r30 nMask=r4
	.d2prologue_end
# (
#     VAR(Icu_eMios_ChannelType,      AUTOMATIC) nHwChannel,
#     VAR(Icu_eMios_ChConfigType,     AUTOMATIC) nMask
# )
# {
#     SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_14();
	.d2line		372
.Llo11:
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_14
#     Icu_eMios_aChConfig[nHwChannel]  &= ((Icu_eMios_ChConfigType)(~nMask));
	.d2line		373
.Llo8:
	lis		r3,Icu_eMios_aChConfig@ha
	e_add16i		r3,r3,Icu_eMios_aChConfig@l
.Llo9:
	rlwinm		r31,r31,2,22,29		# nHwChannel=r31 nHwChannel=r31
.Llo10:
	lwzx		r0,r3,r31
	andc		r0,r0,r30		# nMask=r30
	stwx		r0,r3,r31
#     SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_14();
	.d2line		374
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_14
# }
	.d2line		375
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo12:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L712:
	.type		Icu_eMios_ClearChConfig,@function
	.size		Icu_eMios_ClearChConfig,.-Icu_eMios_ClearChConfig
# Number of nodes = 15

# Allocations for Icu_eMios_ClearChConfig
#	?a4		nHwChannel
#	?a5		nMask
#	?a6		$$118
# LOCAL_INLINE FUNC(Icu_eMios_ChConfigType, ICU_CODE) Icu_eMios_GetChConfig
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         386,53
#$$ld
.L718:

#$$bf	Icu_eMios_GetChConfig,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5
	.d2_cfa_start __cie
Icu_eMios_GetChConfig:
.Llo13:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nHwChannel=r3 nHwChannel=r3
	mr		r4,r4		# nMask=r4 nMask=r4
	.d2prologue_end
# (
#     VAR(Icu_eMios_ChannelType,      AUTOMATIC) nHwChannel,
#     VAR(Icu_eMios_ChConfigType,     AUTOMATIC) nMask
# )
# {
#     return (Icu_eMios_aChConfig[nHwChannel]  & nMask);
	.d2line		392
	lis		r5,Icu_eMios_aChConfig@ha
	e_add16i		r5,r5,Icu_eMios_aChConfig@l
	rlwinm		r3,r3,2,22,29		# nHwChannel=r3 nHwChannel=r3
	lwzx		r3,r5,r3		# nHwChannel=r3
	and		r3,r3,r4		# nHwChannel=r3 nHwChannel=r3 nMask=r4
# }
	.d2line		393
	.d2epilogue_begin
.Llo14:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo15:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L719:
	.type		Icu_eMios_GetChConfig,@function
	.size		Icu_eMios_GetChConfig,.-Icu_eMios_GetChConfig
# Number of nodes = 11

# Allocations for Icu_eMios_GetChConfig
#	?a4		nHwChannel
#	?a5		nMask
# LOCAL_INLINE FUNC(uint32, ICU_CODE) Icu_eMios_GetCaptureRegA
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         406,37
#$$ld
.L725:

#$$bf	Icu_eMios_GetCaptureRegA,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5
	.d2_cfa_start __cie
Icu_eMios_GetCaptureRegA:
.Llo16:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nHwChannel=r3 nHwChannel=r3
	.d2prologue_end
# (
#     VAR(Icu_eMios_ChannelType,      AUTOMATIC) nHwChannel
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
	.d2line		411
	rlwinm		r4,r3,27,29,31		# u8ModuleIdx=r4 nHwChannel=r3
.Llo18:
	mr		r4,r4		# u8ModuleIdx=r4 u8ModuleIdx=r4
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
	.d2line		412
	rlwinm		r3,r3,0,27,31		# nHwChannel=r3 nHwChannel=r3
.Llo17:
	mr		r3,r3		# u8ChannelIdx=r3 u8ChannelIdx=r3
# 
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     return REG_READ32(EMIOS_CADR_ADDR32(u8ModuleIdx, (uint32)u8ChannelIdx));
	.d2line		416
	lis		r5,EMIOS_BASE_ADDR32@ha
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l
	rlwinm		r4,r4,2,22,29		# u8ModuleIdx=r4 u8ModuleIdx=r4
	lwzx		r4,r5,r4		# u8ModuleIdx=r4
	rlwinm		r3,r3,5,19,26		# u8ChannelIdx=r3 u8ChannelIdx=r3
	se_add		r3,r4		# u8ChannelIdx=r3 u8ChannelIdx=r3 u8ModuleIdx=r4
	lwz		r3,32(r3)		# u8ChannelIdx=r3 u8ChannelIdx=r3
# }
	.d2line		417
	.d2epilogue_begin
.Llo20:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo19:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L726:
	.type		Icu_eMios_GetCaptureRegA,@function
	.size		Icu_eMios_GetCaptureRegA,.-Icu_eMios_GetCaptureRegA
# Number of nodes = 33

# Allocations for Icu_eMios_GetCaptureRegA
#	?a4		nHwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
# LOCAL_INLINE FUNC(uint32, ICU_CODE) Icu_eMios_GetCaptureRegB
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         431,37
#$$ld
.L736:

#$$bf	Icu_eMios_GetCaptureRegB,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5
	.d2_cfa_start __cie
Icu_eMios_GetCaptureRegB:
.Llo21:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nHwChannel=r3 nHwChannel=r3
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType,    AUTOMATIC) nHwChannel
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
	.d2line		436
	rlwinm		r4,r3,27,29,31		# u8ModuleIdx=r4 nHwChannel=r3
.Llo23:
	mr		r4,r4		# u8ModuleIdx=r4 u8ModuleIdx=r4
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
	.d2line		437
	rlwinm		r3,r3,0,27,31		# nHwChannel=r3 nHwChannel=r3
.Llo22:
	mr		r3,r3		# u8ChannelIdx=r3 u8ChannelIdx=r3
# 
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     return REG_READ32(EMIOS_CBDR_ADDR32(u8ModuleIdx, (uint32)u8ChannelIdx));
	.d2line		441
	lis		r5,EMIOS_BASE_ADDR32@ha
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l
	rlwinm		r4,r4,2,22,29		# u8ModuleIdx=r4 u8ModuleIdx=r4
	lwzx		r4,r5,r4		# u8ModuleIdx=r4
	rlwinm		r3,r3,5,19,26		# u8ChannelIdx=r3 u8ChannelIdx=r3
	se_add		r3,r4		# u8ChannelIdx=r3 u8ChannelIdx=r3 u8ModuleIdx=r4
	lwz		r3,36(r3)		# u8ChannelIdx=r3 u8ChannelIdx=r3
# }
	.d2line		442
	.d2epilogue_begin
.Llo25:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo24:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L737:
	.type		Icu_eMios_GetCaptureRegB,@function
	.size		Icu_eMios_GetCaptureRegB,.-Icu_eMios_GetCaptureRegB
# Number of nodes = 33

# Allocations for Icu_eMios_GetCaptureRegB
#	?a4		nHwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
# LOCAL_INLINE FUNC(uint32, ICU_CODE) Icu_eMios_GetStatusFlags
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         455,37
#$$ld
.L747:

#$$bf	Icu_eMios_GetStatusFlags,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5
	.d2_cfa_start __cie
Icu_eMios_GetStatusFlags:
.Llo26:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nHwChannel=r3 nHwChannel=r3
	.d2prologue_end
# (
#     VAR(Icu_eMios_ChannelType,      AUTOMATIC) nHwChannel
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)EMIOS_MODULE_INDEX_U8(nHwChannel);
	.d2line		460
	rlwinm		r4,r3,27,29,31		# u8ModuleIdx=r4 nHwChannel=r3
.Llo28:
	mr		r4,r4		# u8ModuleIdx=r4 u8ModuleIdx=r4
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)EMIOS_CHANNEL_INDEX_U8(nHwChannel);
	.d2line		461
	rlwinm		r3,r3,0,27,31		# nHwChannel=r3 nHwChannel=r3
.Llo27:
	mr		r3,r3		# u8ChannelIdx=r3 u8ChannelIdx=r3
#     VAR(uint32, ICU_CODE) u32Flags;
# 
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     u32Flags = REG_READ32(EMIOS_CSR_ADDR32(u8ModuleIdx, (uint32)u8ChannelIdx));
	.d2line		466
	lis		r5,EMIOS_BASE_ADDR32@ha
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l
	rlwinm		r4,r4,2,22,29		# u8ModuleIdx=r4 u8ModuleIdx=r4
	lwzx		r4,r5,r4		# u8ModuleIdx=r4
	rlwinm		r3,r3,5,19,26		# u8ChannelIdx=r3 u8ChannelIdx=r3
	se_add		r3,r4		# u8ChannelIdx=r3 u8ChannelIdx=r3 u8ModuleIdx=r4
	lwz		r3,48(r3)		# u8ChannelIdx=r3 u8ChannelIdx=r3
.Llo30:
	mr		r3,r3		# u32Flags=r3 u32Flags=r3
# 
#     return u32Flags;
	.d2line		468
	mr		r3,r3		# u32Flags=r3 u32Flags=r3
# }
	.d2line		469
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
.L748:
	.type		Icu_eMios_GetStatusFlags,@function
	.size		Icu_eMios_GetStatusFlags,.-Icu_eMios_GetStatusFlags
# Number of nodes = 36

# Allocations for Icu_eMios_GetStatusFlags
#	?a4		nHwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
#	?a7		u32Flags
# LOCAL_INLINE FUNC(void, ICU_CODE) Icu_eMios_ClearStatusFlags
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         482,35
#$$ld
.L759:

#$$bf	Icu_eMios_ClearStatusFlags,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,lr
	.d2_cfa_start __cie
Icu_eMios_ClearStatusFlags:
.Llo32:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nHwChannel=r3 nHwChannel=r3
	mr		r6,r4		# u32BitMask=r6 u32BitMask=r4
	.d2prologue_end
# (
#     VAR(Icu_eMios_ChannelType,      AUTOMATIC) nHwChannel,
#     VAR(uint32,                     AUTOMATIC) u32BitMask
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)EMIOS_MODULE_INDEX_U8(nHwChannel);
	.d2line		488
.Llo34:
	rlwinm		r5,r3,27,29,31		# u8ModuleIdx=r5 nHwChannel=r3
.Llo35:
	mr		r5,r5		# u8ModuleIdx=r5 u8ModuleIdx=r5
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)EMIOS_CHANNEL_INDEX_U8(nHwChannel);
	.d2line		489
	rlwinm		r3,r3,0,27,31		# nHwChannel=r3 nHwChannel=r3
.Llo33:
	mr		r3,r3		# u8ChannelIdx=r3 u8ChannelIdx=r3
# 
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer*/
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     /* Clear pending interrupt serviced */
#     REG_WRITE32\
	.d2line		494
	diab.li		r4,2147483648
	e_or2i		r4,32769
	and		r4,r4,r6		# u32BitMask=r6
	lis		r6,EMIOS_BASE_ADDR32@ha		# u32BitMask=r6
	e_add16i		r6,r6,EMIOS_BASE_ADDR32@l		# u32BitMask=r6 u32BitMask=r6
	rlwinm		r5,r5,2,22,29		# u8ModuleIdx=r5 u8ModuleIdx=r5
	lwzx		r5,r6,r5		# u8ModuleIdx=r5 u32BitMask=r6
	rlwinm		r3,r3,5,19,26		# u8ChannelIdx=r3 u8ChannelIdx=r3
	se_add		r3,r5		# u8ChannelIdx=r3 u8ChannelIdx=r3 u8ModuleIdx=r5
	stw		r4,48(r3)		# u8ChannelIdx=r3
#     (\
#         EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx),\
#         u32BitMask & (uint32)(CSR_OVR_BIT_U32 | CSR_OVFL_BIT_U32 | CSR_FLAG_BIT_U32)\
#     );
# }
	.d2line		499
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo36:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L760:
	.type		Icu_eMios_ClearStatusFlags,@function
	.size		Icu_eMios_ClearStatusFlags,.-Icu_eMios_ClearStatusFlags
# Number of nodes = 36

# Allocations for Icu_eMios_ClearStatusFlags
#	?a4		nHwChannel
#	?a5		u32BitMask
#	?a6		u8ModuleIdx
#	?a7		u8ChannelIdx
# LOCAL_INLINE FUNC(void, ICU_CODE) Icu_eMios_EnableInterrupt
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         510,35
#$$ld
.L770:

#$$bf	Icu_eMios_EnableInterrupt,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Icu_eMios_EnableInterrupt:
.Llo37:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u8ModuleIdx=r31 u8ModuleIdx=r3
.Llo38:
	mr		r30,r4		# u8ChannelIdx=r30 u8ChannelIdx=r4
	.d2prologue_end
# (
#     CONST(uint8,                    AUTOMATIC) u8ModuleIdx,
#     CONST(uint8,                    AUTOMATIC) u8ChannelIdx
# )
# {
#     /* Clear pending flag */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_WRITE32(EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), CSR_FLAG_MASK_U32);
	.d2line		519
.Llo39:
	diab.li		r4,1
.Llo41:
	lis		r3,EMIOS_BASE_ADDR32@ha
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l
	rlwinm		r0,r31,2,22,29		# u8ModuleIdx=r31
	lwzx		r0,r3,r0
	rlwinm		r3,r30,5,19,26		# u8ChannelIdx=r30
	se_add		r3,r0
	stw		r4,48(r3)
# 
#     SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_15();
	.d2line		521
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_15
#     /* Enable interrupt */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_BIT_SET32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), CCR_FEN_MASK_U32);
	.d2line		525
	lis		r3,EMIOS_BASE_ADDR32@ha
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l
	rlwinm		r31,r31,2,22,29		# u8ModuleIdx=r31 u8ModuleIdx=r31
.Llo40:
	lwzx		r0,r3,r31
	rlwinm		r30,r30,5,19,26		# u8ChannelIdx=r30 u8ChannelIdx=r30
	se_add		r30,r0		# u8ChannelIdx=r30 u8ChannelIdx=r30
	lwz		r0,44(r30)		# u8ChannelIdx=r30
	.diab.bseti		r0,14
	stw		r0,44(r30)		# u8ChannelIdx=r30
#     SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_15();
	.d2line		526
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_15
# }
	.d2line		527
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo42:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L771:
	.type		Icu_eMios_EnableInterrupt,@function
	.size		Icu_eMios_EnableInterrupt,.-Icu_eMios_EnableInterrupt
# Number of nodes = 40

# Allocations for Icu_eMios_EnableInterrupt
#	?a4		u8ModuleIdx
#	?a5		u8ChannelIdx
#	?a6		$$119
# LOCAL_INLINE FUNC(void, ICU_CODE) Icu_eMios_DisableInterrupt
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         539,35
#$$ld
.L777:

#$$bf	Icu_eMios_DisableInterrupt,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Icu_eMios_DisableInterrupt:
.Llo43:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u8ModuleIdx=r31 u8ModuleIdx=r3
	mr		r30,r4		# u8ChannelIdx=r30 u8ChannelIdx=r4
	.d2prologue_end
# (
#     CONST(uint8,                    AUTOMATIC) u8ModuleIdx,
#     CONST(uint8,                    AUTOMATIC) u8ChannelIdx
# )
# {
#     SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_16();
	.d2line		545
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_16
#     /* Disable interrupt */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), CCR_FEN_MASK_U32);
	.d2line		549
.Llo44:
	lis		r3,EMIOS_BASE_ADDR32@ha
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l
.Llo45:
	rlwinm		r31,r31,2,22,29		# u8ModuleIdx=r31 u8ModuleIdx=r31
.Llo46:
	lwzx		r0,r3,r31
.Llo47:
	rlwinm		r30,r30,5,19,26		# u8ChannelIdx=r30 u8ChannelIdx=r30
	se_add		r30,r0		# u8ChannelIdx=r30 u8ChannelIdx=r30
	lwz		r0,44(r30)		# u8ChannelIdx=r30
	.diab.bclri		r0,14
	stw		r0,44(r30)		# u8ChannelIdx=r30
#     SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_16();
	.d2line		550
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_16
# }
	.d2line		551
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo48:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L778:
	.type		Icu_eMios_DisableInterrupt,@function
	.size		Icu_eMios_DisableInterrupt,.-Icu_eMios_DisableInterrupt
# Number of nodes = 22

# Allocations for Icu_eMios_DisableInterrupt
#	?a4		u8ModuleIdx
#	?a5		u8ChannelIdx
#	?a6		$$120
# LOCAL_INLINE FUNC(void, ICU_CODE) Icu_eMios_UCSetMode
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         564,35
#$$ld
.L784:

#$$bf	Icu_eMios_UCSetMode,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Icu_eMios_UCSetMode:
.Llo49:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# u8ModuleIdx=r31 u8ModuleIdx=r3
	mr		r30,r4		# u8ChannelIdx=r30 u8ChannelIdx=r4
.Llo53:
	mr		r29,r5		# u32Mode=r29 u32Mode=r5
	.d2prologue_end
# (
#     CONST(uint8,                AUTOMATIC) u8ModuleIdx,
#     CONST(uint8,                AUTOMATIC) u8ChannelIdx,
#     CONST(uint32,               AUTOMATIC) u32Mode
# )
# {
#     SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_17();
	.d2line		571
.Llo54:
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_17
#     /* Clear MODE bitfield - GPIO mode */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), CCR_MODE_MASK_U32);
	.d2line		575
.Llo50:
	lis		r3,EMIOS_BASE_ADDR32@ha
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l
.Llo51:
	rlwinm		r31,r31,2,22,29		# u8ModuleIdx=r31 u8ModuleIdx=r31
.Llo52:
	lwzx		r0,r3,r31
	rlwinm		r4,r30,5,19,26		# u8ChannelIdx=r30
	add		r30,r0,r4		# u8ChannelIdx=r30
	lwz		r0,44(r30)		# u8ChannelIdx=r30
	rlwinm		r0,r0,0,0,24
	stw		r0,44(r30)		# u8ChannelIdx=r30
# 
#     /* Set desired mode */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_BIT_SET32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), u32Mode & CCR_MODE_MASK_U32);
	.d2line		580
	lwzx		r0,r3,r31
	se_add		r4,r0
	lwz		r0,44(r4)
.Llo56:
	rlwinm		r29,r29,0,25,31		# u32Mode=r29 u32Mode=r29
	or		r0,r0,r29		# u32Mode=r29
	stw		r0,44(r4)
#     SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_17();
	.d2line		581
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_17
# }
	.d2line		582
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo55:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L785:
	.type		Icu_eMios_UCSetMode,@function
	.size		Icu_eMios_UCSetMode,.-Icu_eMios_UCSetMode
# Number of nodes = 42

# Allocations for Icu_eMios_UCSetMode
#	?a4		u8ModuleIdx
#	?a5		u8ChannelIdx
#	?a6		u32Mode
#	?a7		$$122
#	?a8		$$121
# LOCAL_INLINE FUNC (boolean, ICU_CODE) Icu_eMios_CheckOverflowFlag
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         598,39
#$$ld
.L793:

#$$bf	Icu_eMios_CheckOverflowFlag,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.d2_cfa_start __cie
Icu_eMios_CheckOverflowFlag:
.Llo57:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u32Flags=r3 u32Flags=r3
	.d2prologue_end
# (
#     CONST(uint32,               AUTOMATIC) u32Flags
# )
# {
#     return ((CSR_OVFL_BIT_U32 == (u32Flags & CSR_OVFL_BIT_U32)) ? (boolean)TRUE : (boolean)FALSE);
	.d2line		603
.Llo58:
	se_btsti		r3,16
	diab.li		r0,1
	isel		r0,r3,r0,2
.L465:
	isel		r3,0,r0,2
.L466:
	rlwinm		r3,r3,0,24,31
# }
	.d2line		604
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
.L794:
	.type		Icu_eMios_CheckOverflowFlag,@function
	.size		Icu_eMios_CheckOverflowFlag,.-Icu_eMios_CheckOverflowFlag
# Number of nodes = 14

# Allocations for Icu_eMios_CheckOverflowFlag
#	?a4		u32Flags
#	?a5		$$123
# LOCAL_INLINE FUNC (uint32, ICU_CODE) Icu_eMios_GetChannelClockMode
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         618,38
#$$ld
.L800:

#$$bf	Icu_eMios_GetChannelClockMode,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5
	.d2_cfa_start __cie
Icu_eMios_GetChannelClockMode:
.Llo59:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nHwChannel=r3 nHwChannel=r3
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType,            AUTOMATIC) nHwChannel
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
	.d2line		623
	rlwinm		r4,r3,27,29,31		# u8ModuleIdx=r4 nHwChannel=r3
.Llo61:
	mr		r4,r4		# u8ModuleIdx=r4 u8ModuleIdx=r4
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
	.d2line		624
	rlwinm		r3,r3,0,27,31		# nHwChannel=r3 nHwChannel=r3
.Llo60:
	mr		r3,r3		# u8ChannelIdx=r3 u8ChannelIdx=r3
#     VAR(uint32, AUTOMATIC) u32ChannelClockMode;
# 
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     u32ChannelClockMode = \
	.d2line		629
	lis		r5,EMIOS_BASE_ADDR32@ha
	e_add16i		r5,r5,EMIOS_BASE_ADDR32@l
	rlwinm		r4,r4,2,22,29		# u8ModuleIdx=r4 u8ModuleIdx=r4
	lwzx		r4,r5,r4		# u8ModuleIdx=r4
	rlwinm		r3,r3,5,19,26		# u8ChannelIdx=r3 u8ChannelIdx=r3
	se_add		r3,r4		# u8ChannelIdx=r3 u8ChannelIdx=r3 u8ModuleIdx=r4
	lwz		r3,44(r3)		# u8ChannelIdx=r3 u8ChannelIdx=r3
	rlwinm		r3,r3,0,25,31		# u8ChannelIdx=r3 u8ChannelIdx=r3
.Llo63:
	mr		r3,r3		# u32ChannelClockMode=r3 u32ChannelClockMode=r3
#         REG_READ32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx)) & CCR_MODE_MASK_U32;
# 
#     return u32ChannelClockMode;
	.d2line		632
	mr		r3,r3		# u32ChannelClockMode=r3 u32ChannelClockMode=r3
# }
	.d2line		633
	.d2epilogue_begin
.Llo64:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo62:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L801:
	.type		Icu_eMios_GetChannelClockMode,@function
	.size		Icu_eMios_GetChannelClockMode,.-Icu_eMios_GetChannelClockMode
# Number of nodes = 38

# Allocations for Icu_eMios_GetChannelClockMode
#	?a4		nHwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
#	?a7		u32ChannelClockMode
# LOCAL_INLINE FUNC(Icu_eMios_ChannelType, ICU_CODE) Icu_eMios_GetMasterBus
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         644,52
#$$ld
.L812:

#$$bf	Icu_eMios_GetMasterBus,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
Icu_eMios_GetMasterBus:
.Llo65:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# u32Bus=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8ModuleIdx=r3 u8ModuleIdx=r3
	mr		r4,r4		# u8ChannelIdx=r4 u8ChannelIdx=r4
	mr		r0,r5		# u32Bus=r0 u32Bus=r5
	.d2prologue_end
# (
#     VAR(Icu_eMios_ChannelType, AUTOMATIC) u8ModuleIdx,
#     VAR(Icu_eMios_ChannelType, AUTOMATIC) u8ChannelIdx,
#     VAR(uint32 ,               AUTOMATIC) u32Bus
# )
# {
#     VAR(Icu_eMios_ChannelType, AUTOMATIC) n8MasterBusIdx = (Icu_eMios_ChannelType)0;
	.d2line		651
.Llo79:
	diab.li		r5,0		# n8MasterBusIdx=r5
#     if (EMIOS_BUS_DIVERSE == u32Bus)
	.d2line		652
.Llo80:
	se_cmpi		r0,1		# u32Bus=r0
	bc		0,2,.L471	# ne
#     {
#         if (EMIOS_CHANNEL_7 >= u8ChannelIdx) /* bus B */
	.d2line		654
.Llo81:
	rlwinm		r0,r4,0,24,31		# u32Bus=r0 u8ChannelIdx=r4
.Llo82:
	se_cmpi		r0,7		# u32Bus=r0
	bc		1,1,.L472	# gt
#         {
#             n8MasterBusIdx = (Icu_eMios_ChannelType)(((uint32)u8ModuleIdx<<EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_0);
	.d2line		656
.Llo83:
	se_slwi		r3,5		# u8ModuleIdx=r3 u8ModuleIdx=r3
.Llo66:
	mr		r5,r3		# n8MasterBusIdx=r5 n8MasterBusIdx=r3
	b		.L478
.L472:
#         }
#         else if (EMIOS_CHANNEL_15 >= u8ChannelIdx) /* Bus C */
	.d2line		658
.Llo67:
	rlwinm		r0,r4,0,24,31		# u32Bus=r0 u8ChannelIdx=r4
.Llo84:
	se_cmpi		r0,15		# u32Bus=r0
	bc		1,1,.L474	# gt
#         {
#             n8MasterBusIdx = (Icu_eMios_ChannelType)(((uint32)u8ModuleIdx<<EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_8);
	.d2line		660
.Llo85:
	se_slwi		r3,5		# u8ModuleIdx=r3 u8ModuleIdx=r3
	se_addi		r3,8		# u8ModuleIdx=r3 u8ModuleIdx=r3
.Llo68:
	mr		r5,r3		# n8MasterBusIdx=r5 n8MasterBusIdx=r3
	b		.L478
.L474:
#         }
#         else if (EMIOS_CHANNEL_23 >= u8ChannelIdx) /* bus D */
	.d2line		662
.Llo69:
	rlwinm		r4,r4,0,24,31		# u8ChannelIdx=r4 u8ChannelIdx=r4
	se_cmpi		r4,23		# u8ChannelIdx=r4
	bc		1,1,.L476	# gt
#         {
#             n8MasterBusIdx = (Icu_eMios_ChannelType)(((uint32)u8ModuleIdx<<EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_16);
	.d2line		664
.Llo77:
	se_slwi		r3,5		# u8ModuleIdx=r3 u8ModuleIdx=r3
	se_addi		r3,16		# u8ModuleIdx=r3 u8ModuleIdx=r3
.Llo70:
	mr		r5,r3		# n8MasterBusIdx=r5 n8MasterBusIdx=r3
	b		.L478
.L476:
#         }
#         else /* Bus E remaining */
#         {
#             n8MasterBusIdx = (Icu_eMios_ChannelType)(((uint32)u8ModuleIdx<<EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_24);
	.d2line		668
.Llo71:
	se_slwi		r3,5		# u8ModuleIdx=r3 u8ModuleIdx=r3
	se_addi		r3,24		# u8ModuleIdx=r3 u8ModuleIdx=r3
.Llo72:
	mr		r5,r3		# n8MasterBusIdx=r5 n8MasterBusIdx=r3
	b		.L478
.L471:
#         }
#     }
#     else if (EMIOS_BUS_A == u32Bus) /* bus A */
	.d2line		671
.Llo73:
	se_cmpi		r0,0		# u32Bus=r0
.Llo87:
	bc		0,2,.L479	# ne
#     {
#         n8MasterBusIdx = (Icu_eMios_ChannelType)(((uint32)u8ModuleIdx<<EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_23);
	.d2line		673
.Llo78:
	se_slwi		r3,5		# u8ModuleIdx=r3 u8ModuleIdx=r3
	se_addi		r3,23		# u8ModuleIdx=r3 u8ModuleIdx=r3
.Llo74:
	mr		r5,r3		# n8MasterBusIdx=r5 n8MasterBusIdx=r3
	b		.L478
.L479:
#     }
#     else if (EMIOS_BUS_F == u32Bus) /* bus F remaining */
	.d2line		675
.Llo75:
	se_cmpi		r0,2		# u32Bus=r0
	bc		0,2,.L478	# ne
#     {
#         n8MasterBusIdx = (Icu_eMios_ChannelType)(((uint32)u8ModuleIdx<<EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_22);
	.d2line		677
.Llo86:
	se_slwi		r3,5		# u8ModuleIdx=r3 u8ModuleIdx=r3
	se_addi		r3,22		# u8ModuleIdx=r3 u8ModuleIdx=r3
.Llo76:
	mr		r5,r3		# n8MasterBusIdx=r5 n8MasterBusIdx=r3
.L478:
#     }
#     else
#     {
#         /*Empty else to fix misra*/
#     }
#     return n8MasterBusIdx;
	.d2line		683
	rlwinm		r3,r5,0,24,31		# u8ModuleIdx=r3 n8MasterBusIdx=r5
# }
	.d2line		684
	.d2epilogue_begin
	lwz		r0,20(r1)		# u32Bus=r0
	mtspr		lr,r0		# u32Bus=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo88:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L813:
	.type		Icu_eMios_GetMasterBus,@function
	.size		Icu_eMios_GetMasterBus,.-Icu_eMios_GetMasterBus
# Number of nodes = 71

# Allocations for Icu_eMios_GetMasterBus
#	?a4		u8ModuleIdx
#	?a5		u8ChannelIdx
#	?a6		u32Bus
#	?a7		n8MasterBusIdx
# LOCAL_INLINE FUNC (uint32, ICU_CODE) Icu_eMios_ReadCounterBus
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         694,38
#$$ld
.L822:

#$$bf	Icu_eMios_ReadCounterBus,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,cr0,lr
	.d2_cfa_start __cie
Icu_eMios_ReadCounterBus:
.Llo89:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nHwChannel=r3 nHwChannel=r3
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType,        AUTOMATIC) nHwChannel
# )
# {
#     VAR(uint32,     AUTOMATIC) u32Period = (uint32)0u;
	.d2line		699
	diab.li		r7,0		# u32Period=r7
# 
#     CONST(uint8,    ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
#     CONST(uint8,    ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
#     VAR(uint32,     AUTOMATIC) u32BusChannelClockMode = (uint32)0u;
#     VAR(Icu_eMios_ChannelType, AUTOMATIC) nChGeneratingEmiosBusA = (Icu_eMios_ChannelType)0u;
#     VAR(uint32,                AUTOMATIC) u32ChGeneratingEmiosBusAClockMode = (uint32)0u;
#     VAR(Icu_eMios_ChannelType, AUTOMATIC) nChGeneratingEmiosBusF = (Icu_eMios_ChannelType)0u;
#     VAR(uint32,                AUTOMATIC) u32ChGeneratingEmiosBusFClockMode = (uint32)0u;
	.d2line		701
.Llo93:
	rlwinm		r31,r3,27,29,31		# nHwChannel=r3
.Llo131:
	mr		r31,r31		# u8ModuleIdx=r31 u8ModuleIdx=r31
	.d2line		702
	rlwinm		r30,r3,0,27,31		# nHwChannel=r3
.Llo134:
	mr		r30,r30		# u8ChannelIdx=r30 u8ChannelIdx=r30
# 
#     /* Get eMiosBus of hardware channel */
#     VAR(uint32, AUTOMATIC) u32ChannelEmiosBus = \
	.d2line		710
	mr		r3,r3		# nHwChannel=r3 nHwChannel=r3
.Llo90:
	diab.li		r4,49152
	bl		Icu_eMios_GetChConfig
.Llo91:
	se_srwi		r3,14		# nHwChannel=r3 nHwChannel=r3
.Llo92:
	mr		r3,r3		# u32ChannelEmiosBus=r3 u32ChannelEmiosBus=r3
#         (uint32)(Icu_eMios_GetChConfig
#                     (nHwChannel,ICU_EMIOS_BUS_CHANNEL_MASK) >> ICU_EMIOS_BUS_CHANNEL_SHIFT
#                 );
# 
#     switch (u32ChannelEmiosBus)
	.d2line		715
	mr.		r6,r3		# u32ChannelEmiosBus=r6 u32ChannelEmiosBus=?a13
	bc		1,2,.L509	# eq
.Llo163:
	se_cmpi		r6,1
	bc		1,2,.L492	# eq
	se_cmpi		r6,2
	bc		1,2,.L512	# eq
.Llo135:
	se_cmpi		r6,3
.L490:
#     {
#         case EMIOS_BUS_INTERNAL_COUNTER:
#         {
#             u32Period = EMIOS_COUNTER_MASK;
	.d2line		719
.Llo132:
	diab.li		r3,16777215		# u32ChannelEmiosBus=r3
.Llo164:
	isel		r7,r3,r7,2		# u32Period=r7 u32ChannelEmiosBus=r3 u32Period=r7
	b		.L491
.L492:
#         }
#         break;
# 
#         case EMIOS_BUS_DIVERSE:
#         {
#             if (EMIOS_CHANNEL_7 >= u8ChannelIdx  )
	.d2line		725
.Llo133:
	rlwinm		r3,r30,0,24,31		# u32ChannelEmiosBus=r3 u8ChannelIdx=r30
.Llo165:
	se_cmpi		r3,7		# u32ChannelEmiosBus=r3
	bc		1,1,.L493	# gt
#             {
#                 u32BusChannelClockMode = \
	.d2line		727
.Llo166:
	rlwinm		r3,r31,5,0,26		# u32ChannelEmiosBus=r3 u8ModuleIdx=r31
	bl		Icu_eMios_GetChannelClockMode
.Llo137:
	mr		r3,r3		# u32BusChannelClockMode=r3 u32BusChannelClockMode=r3
#                         Icu_eMios_GetChannelClockMode((uint8)(u8ModuleIdx << EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_0);
#                 /* eMIOS Counter Bus_B Channel (EMIOS_CHANNEL_0) is in Modulous counter buffer or
#                 Modulous counter mode */
#                 if ((CCR_MCB_MODE_U32 == u32BusChannelClockMode) || (CCR_MC_MODE_U32 == u32BusChannelClockMode))
	.d2line		731
	cmpi		0,0,r3,80		# u32BusChannelClockMode=r3
	bc		1,2,.L516	# eq
.Llo94:
	se_cmpi		r3,16		# u32BusChannelClockMode=r3
	bc		0,2,.L494	# ne
.L516:
#                 {
#                     u32Period= (uint32) \
	.d2line		733
.Llo138:
	rlwinm		r3,r31,5,0,26		# u32BusChannelClockMode=r3 u8ModuleIdx=r31
	bl		Icu_eMios_GetCaptureRegA
.Llo95:
	mr		r7,r3		# u32Period=r7 u32Period=r3
	b		.L491
.L494:
#                             Icu_eMios_GetCaptureRegA((uint8)(u8ModuleIdx << EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_0);
#                 }
#                 else
#                 {
#                     u32Period= (uint32) \
	.d2line		738
.Llo96:
	rlwinm		r3,r31,5,0,26		# u32BusChannelClockMode=r3 u8ModuleIdx=r31
	bl		Icu_eMios_GetCaptureRegB
.Llo97:
	mr		r7,r3		# u32Period=r7 u32Period=r3
	b		.L491
.L493:
#                             Icu_eMios_GetCaptureRegB((uint8)(u8ModuleIdx << EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_0);
#                 }
#             }
# 
#             /* eMIOS Channel configured is using Counter Bus_C */
#             else if ((EMIOS_CHANNEL_8 <= u8ChannelIdx  ) && (EMIOS_CHANNEL_15 >= u8ChannelIdx))
	.d2line		744
.Llo98:
	rlwinm		r3,r30,0,24,31		# u32ChannelEmiosBus=r3 u8ChannelIdx=r30
.Llo99:
	diab.addi		r3,r3,-8		# u32ChannelEmiosBus=r3 u32ChannelEmiosBus=r3
	se_cmpli	r3,7		# u32ChannelEmiosBus=r3
	bc		1,1,.L497	# gt
#             {
#                 u32BusChannelClockMode = \
	.d2line		746
.Llo167:
	rlwinm		r3,r31,5,0,26		# u32ChannelEmiosBus=r3 u8ModuleIdx=r31
.Llo168:
	se_addi		r3,8		# u32ChannelEmiosBus=r3 u32ChannelEmiosBus=r3
.Llo169:
	bl		Icu_eMios_GetChannelClockMode
.Llo139:
	mr		r3,r3		# u32BusChannelClockMode=r3 u32BusChannelClockMode=r3
#                         Icu_eMios_GetChannelClockMode((uint8)(u8ModuleIdx << EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_8);
#                 /* eMIOS Counter Bus_C Channel (EMIOS_CHANNEL_8) is in Modulous counter buffer or
#                  Modulous counter mode */
#                 if ((CCR_MCB_MODE_U32 == u32BusChannelClockMode) || (CCR_MC_MODE_U32 == u32BusChannelClockMode))
	.d2line		750
	cmpi		0,0,r3,80		# u32BusChannelClockMode=r3
	bc		1,2,.L517	# eq
.Llo100:
	se_cmpi		r3,16		# u32BusChannelClockMode=r3
	bc		0,2,.L498	# ne
.L517:
#                 {
#                     u32Period= (uint32) \
	.d2line		752
.Llo140:
	rlwinm		r3,r31,5,0,26		# u32BusChannelClockMode=r3 u8ModuleIdx=r31
.Llo141:
	se_addi		r3,8		# u32BusChannelClockMode=r3 u32BusChannelClockMode=r3
.Llo142:
	bl		Icu_eMios_GetCaptureRegA
.Llo101:
	mr		r7,r3		# u32Period=r7 u32Period=r3
	b		.L491
.L498:
#                             Icu_eMios_GetCaptureRegA((uint8)(u8ModuleIdx << EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_8);
#                 }
#                 else
#                 {
#                     u32Period= (uint32) \
	.d2line		757
.Llo102:
	rlwinm		r3,r31,5,0,26		# u32BusChannelClockMode=r3 u8ModuleIdx=r31
.Llo143:
	se_addi		r3,8		# u32BusChannelClockMode=r3 u32BusChannelClockMode=r3
.Llo144:
	bl		Icu_eMios_GetCaptureRegB
.Llo103:
	mr		r7,r3		# u32Period=r7 u32Period=r3
	b		.L491
.L497:
#                             Icu_eMios_GetCaptureRegB((uint8)(u8ModuleIdx << EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_8);
#                 }
#             }
# 
#             /* eMIOS Channel configured is using Counter Bus_D */
#             else if ((EMIOS_CHANNEL_16 <= u8ChannelIdx) && (EMIOS_CHANNEL_23 >= u8ChannelIdx ))
	.d2line		763
.Llo104:
	rlwinm		r3,r30,0,24,31		# u32ChannelEmiosBus=r3 u8ChannelIdx=r30
.Llo105:
	diab.addi		r3,r3,-16		# u32ChannelEmiosBus=r3 u32ChannelEmiosBus=r3
	se_cmpli	r3,7		# u32ChannelEmiosBus=r3
	bc		1,1,.L501	# gt
#             {
#                 u32BusChannelClockMode = \
	.d2line		765
.Llo170:
	rlwinm		r3,r31,5,0,26		# u32ChannelEmiosBus=r3 u8ModuleIdx=r31
.Llo171:
	se_addi		r3,16		# u32ChannelEmiosBus=r3 u32ChannelEmiosBus=r3
.Llo172:
	bl		Icu_eMios_GetChannelClockMode
.Llo145:
	mr		r3,r3		# u32BusChannelClockMode=r3 u32BusChannelClockMode=r3
#                         Icu_eMios_GetChannelClockMode((uint8)(u8ModuleIdx << EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_16);
#                 /* eMIOS Counter Bus_D Channel (EMIOS_CHANNEL_16) is in Modulous counter buffer or
#                  Modulous counter mode */
#                 if ((CCR_MCB_MODE_U32 == u32BusChannelClockMode) || (CCR_MC_MODE_U32 == u32BusChannelClockMode))
	.d2line		769
	cmpi		0,0,r3,80		# u32BusChannelClockMode=r3
	bc		1,2,.L518	# eq
.Llo106:
	se_cmpi		r3,16		# u32BusChannelClockMode=r3
	bc		0,2,.L502	# ne
.L518:
#                 {
#                     u32Period= (uint32) \
	.d2line		771
.Llo146:
	rlwinm		r3,r31,5,0,26		# u32BusChannelClockMode=r3 u8ModuleIdx=r31
.Llo147:
	se_addi		r3,16		# u32BusChannelClockMode=r3 u32BusChannelClockMode=r3
.Llo148:
	bl		Icu_eMios_GetCaptureRegA
.Llo107:
	mr		r7,r3		# u32Period=r7 u32Period=r3
	b		.L491
.L502:
#                         Icu_eMios_GetCaptureRegA((uint8)(u8ModuleIdx << EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_16);
#                 }
#                 else
#                 {
#                     u32Period= (uint32) \
	.d2line		776
.Llo108:
	rlwinm		r3,r31,5,0,26		# u32BusChannelClockMode=r3 u8ModuleIdx=r31
.Llo149:
	se_addi		r3,16		# u32BusChannelClockMode=r3 u32BusChannelClockMode=r3
.Llo150:
	bl		Icu_eMios_GetCaptureRegB
.Llo109:
	mr		r7,r3		# u32Period=r7 u32Period=r3
	b		.L491
.L501:
#                         Icu_eMios_GetCaptureRegB((uint8)(u8ModuleIdx << EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_16);
#                 }
#             }
# 
#             /* eMIOS Channel configured is using Counter Bus_E */
#             else if ((EMIOS_CHANNEL_24  <= u8ChannelIdx) && (EMIOS_CHANNEL_31  >= u8ChannelIdx))
	.d2line		782
.Llo110:
	rlwinm		r30,r30,0,24,31		# u8ChannelIdx=r30 u8ChannelIdx=r30
.Llo111:
	diab.addi		r30,r30,-24		# u8ChannelIdx=r30 u8ChannelIdx=r30
	se_cmpli	r30,7		# u8ChannelIdx=r30
	bc		1,1,.L491	# gt
#             {
#                 u32BusChannelClockMode = \
	.d2line		784
.Llo136:
	rlwinm		r3,r31,5,0,26		# u32ChannelEmiosBus=r3 u8ModuleIdx=r31
.Llo173:
	se_addi		r3,24		# u32ChannelEmiosBus=r3 u32ChannelEmiosBus=r3
.Llo174:
	bl		Icu_eMios_GetChannelClockMode
.Llo151:
	mr		r3,r3		# u32BusChannelClockMode=r3 u32BusChannelClockMode=r3
#                     Icu_eMios_GetChannelClockMode((uint8)(u8ModuleIdx << EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_24);
#                 /* eMIOS Counter Bus_E Channel (EMIOS_CHANNEL_24) is in Modulous counter buffer or
#                  Modulous counter mode */
#                 if ((CCR_MCB_MODE_U32 == u32BusChannelClockMode) || (CCR_MC_MODE_U32 == u32BusChannelClockMode))
	.d2line		788
	cmpi		0,0,r3,80		# u32BusChannelClockMode=r3
	bc		1,2,.L519	# eq
.Llo112:
	se_cmpi		r3,16		# u32BusChannelClockMode=r3
	bc		0,2,.L506	# ne
.L519:
#                 {
#                     u32Period= (uint32) \
	.d2line		790
.Llo152:
	rlwinm		r3,r31,5,0,26		# u32BusChannelClockMode=r3 u8ModuleIdx=r31
.Llo153:
	se_addi		r3,24		# u32BusChannelClockMode=r3 u32BusChannelClockMode=r3
.Llo154:
	bl		Icu_eMios_GetCaptureRegA
.Llo113:
	mr		r7,r3		# u32Period=r7 u32Period=r3
	b		.L491
.L506:
#                         Icu_eMios_GetCaptureRegA((uint8)(u8ModuleIdx << EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_24);
#                 }
#                 else
#                 {
#                     u32Period= (uint32) \
	.d2line		795
.Llo114:
	rlwinm		r3,r31,5,0,26		# u32BusChannelClockMode=r3 u8ModuleIdx=r31
.Llo155:
	se_addi		r3,24		# u32BusChannelClockMode=r3 u32BusChannelClockMode=r3
.Llo156:
	bl		Icu_eMios_GetCaptureRegB
.Llo115:
	mr		r7,r3		# u32Period=r7 u32Period=r3
	b		.L491
.L509:
#                         Icu_eMios_GetCaptureRegB((uint8)(u8ModuleIdx << EMIOS_MOD_SHIFT) + EMIOS_CHANNEL_24);
#                 }
#             }
#             else
#             {
#                 /* Do Nothing */
#             }
#         }
#         break;
# 
#         case EMIOS_BUS_A:
#         {
#             /* Get channel of bus A is used */
#             nChGeneratingEmiosBusA = (Icu_eMios_ChannelType)CH_GENERATING_EMIOS_BUS_A(u8ModuleIdx);
	.d2line		809
.Llo116:
	se_slwi		r31,5		# u8ModuleIdx=r31 u8ModuleIdx=r31
.Llo117:
	addi		r6,r31,23		# u8ModuleIdx=r31
#             /* Get clock mode */
#             u32ChGeneratingEmiosBusAClockMode = Icu_eMios_GetChannelClockMode(nChGeneratingEmiosBusA);
	.d2line		811
.Llo157:
	mr		r3,r6		# nChGeneratingEmiosBusA=r3 nChGeneratingEmiosBusA=r6
	bl		Icu_eMios_GetChannelClockMode
.Llo158:
	mr		r3,r3		# u32ChGeneratingEmiosBusAClockMode=r3 u32ChGeneratingEmiosBusAClockMode=r3
# 
#             if
	.d2line		813
	cmpi		0,0,r3,80		# u32ChGeneratingEmiosBusAClockMode=r3
	bc		1,2,.L520	# eq
.Llo118:
	se_cmpi		r3,16		# u32ChGeneratingEmiosBusAClockMode=r3
	bc		0,2,.L510	# ne
.L520:
#             (
#                 (u32ChGeneratingEmiosBusAClockMode == CCR_MCB_MODE_U32) || \
#                 (u32ChGeneratingEmiosBusAClockMode == CCR_MC_MODE_U32)
#             )
#             {
#                 u32Period  = (uint32) Icu_eMios_GetCaptureRegA(nChGeneratingEmiosBusA);
	.d2line		819
.Llo159:
	mr		r3,r6		# nChGeneratingEmiosBusA=r3 nChGeneratingEmiosBusA=r6
	bl		Icu_eMios_GetCaptureRegA
.Llo119:
	mr		r7,r3		# u32Period=r7 u32Period=r3
	b		.L491
.L510:
#             }
#             else
#             {
#                 u32Period  = (uint32) Icu_eMios_GetCaptureRegB(nChGeneratingEmiosBusA);
	.d2line		823
.Llo120:
	mr		r3,r6		# nChGeneratingEmiosBusA=r3 nChGeneratingEmiosBusA=r6
	bl		Icu_eMios_GetCaptureRegB
.Llo121:
	mr		r7,r3		# u32Period=r7 u32Period=r3
	b		.L491
.L512:
#             }
#         }
#         break;
# 
#         case EMIOS_BUS_F:
#         {
#             /* Get channel of bus F is used */
#             nChGeneratingEmiosBusF = (Icu_eMios_ChannelType)CH_GENERATING_EMIOS_BUS_F(u8ModuleIdx);
	.d2line		831
.Llo122:
	se_slwi		r31,5		# u8ModuleIdx=r31 u8ModuleIdx=r31
.Llo123:
	addi		r6,r31,22		# u8ModuleIdx=r31
#             /* Get clock mode of bus F */
#             u32ChGeneratingEmiosBusFClockMode = Icu_eMios_GetChannelClockMode(nChGeneratingEmiosBusF);
	.d2line		833
.Llo160:
	mr		r3,r6		# nChGeneratingEmiosBusF=r3 nChGeneratingEmiosBusF=r6
	bl		Icu_eMios_GetChannelClockMode
.Llo161:
	mr		r3,r3		# u32ChGeneratingEmiosBusFClockMode=r3 u32ChGeneratingEmiosBusFClockMode=r3
# 
#             if
	.d2line		835
	cmpi		0,0,r3,80		# u32ChGeneratingEmiosBusFClockMode=r3
	bc		1,2,.L521	# eq
.Llo124:
	se_cmpi		r3,16		# u32ChGeneratingEmiosBusFClockMode=r3
	bc		0,2,.L513	# ne
.L521:
#             (
#                 (u32ChGeneratingEmiosBusFClockMode == CCR_MCB_MODE_U32) || \
#                 (u32ChGeneratingEmiosBusFClockMode == CCR_MC_MODE_U32)
#             )
#             {
#                 u32Period  = (uint32) Icu_eMios_GetCaptureRegA(nChGeneratingEmiosBusF);
	.d2line		841
.Llo162:
	mr		r3,r6		# nChGeneratingEmiosBusF=r3 nChGeneratingEmiosBusF=r6
	bl		Icu_eMios_GetCaptureRegA
.Llo125:
	mr		r7,r3		# u32Period=r7 u32Period=r3
	b		.L491
.L513:
#             }
#             else
#             {
#                 u32Period  = (uint32) Icu_eMios_GetCaptureRegB(nChGeneratingEmiosBusF);
	.d2line		845
.Llo126:
	mr		r3,r6		# nChGeneratingEmiosBusF=r3 nChGeneratingEmiosBusF=r6
	bl		Icu_eMios_GetCaptureRegB
.Llo127:
	mr		r7,r3		# u32Period=r7 u32Period=r3
.L491:
#             }
#         }
#         break;
# 
#         default:
#             break;
#     }
# 
#     /* return u32Period */
#     return (u32Period);
	.d2line		855
.Llo128:
	mr		r3,r7		# u32Period=r3 u32Period=r7
# }
	.d2line		856
	.d2epilogue_begin
.Llo129:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo130:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L823:
	.type		Icu_eMios_ReadCounterBus,@function
	.size		Icu_eMios_ReadCounterBus,.-Icu_eMios_ReadCounterBus
# Number of nodes = 310

# Allocations for Icu_eMios_ReadCounterBus
#	?a4		nHwChannel
#	?a5		u32Period
#	?a6		u8ModuleIdx
#	?a7		u8ChannelIdx
#	?a8		u32BusChannelClockMode
#	?a9		nChGeneratingEmiosBusA
#	?a10		u32ChGeneratingEmiosBusAClockMode
#	?a11		nChGeneratingEmiosBusF
#	?a12		u32ChGeneratingEmiosBusFClockMode
#	?a13		u32ChannelEmiosBus
# LOCAL_INLINE FUNC(void, ICU_CODE) Icu_eMios_SignalMeasurement
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         873,35
#$$ld
.L846:

#$$bf	Icu_eMios_SignalMeasurement,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Icu_eMios_SignalMeasurement:
.Llo175:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# nHwChannel=r31 nHwChannel=r3
.Llo176:
	mr		r30,r4		# bOverflow=r30 bOverflow=r4
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType,            AUTOMATIC) nHwChannel,
#     VAR(boolean,                            AUTOMATIC) bOverflow
# )
# {
#     VAR(Icu_ValueType, AUTOMATIC) IcuActivePulseWidth;
#     VAR(Icu_ValueType, AUTOMATIC) IcuPeriod;
#     VAR(Icu_ValueType, AUTOMATIC) Bus_Period;
#     VAR(Icu_ValueType, AUTOMATIC) IcuTempA;
#     VAR(Icu_ValueType, AUTOMATIC) IcuTempB;
# 
# 
# #ifdef SIGNAL_MEASUREMENT_USES_SAIC_MODE
#     VAR(Icu_ValueType, AUTOMATIC) Previous_Value;
#     VAR(Icu_ValueType, AUTOMATIC) Pulse_Width;
# #endif /* SIGNAL_MEASUREMENT_USES_SAIC_MODE */
# 
#     VAR(Icu_eMios_SignalMeasurementPropertyType, AUTOMATIC) \
#         nMeasurement_property = (Icu_eMios_SignalMeasurementPropertyType)\
	.d2line		892
.Llo177:
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	diab.li		r4,15
.Llo183:
	bl		Icu_eMios_GetChConfig
.Llo228:
	mr		r27,r3		# nMeasurement_property=r27 nMeasurement_property=r3
#         (
#             Icu_eMios_GetChConfig(nHwChannel, ICU_EMIOS_MEAS_PROPERTY_MASK) >> ICU_EMIOS_MEAS_PROPERTY_SHIFT
#         );
# 
#     VAR(Icu_eMios_OperationMode, AUTOMATIC) \
#         eMios_OperationMode = (Icu_eMios_OperationMode)\
	.d2line		898
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
.Llo229:
	diab.li		r4,15360
	bl		Icu_eMios_GetChConfig
	se_srwi		r3,10
.Llo233:
	mr		r6,r3		# eMios_OperationMode=r6 eMios_OperationMode=r3
#         (
#             Icu_eMios_GetChConfig(nHwChannel,ICU_EMIOS_OPERATION_MODE_MASK) >> ICU_EMIOS_OPERATION_MODE_SHIFT
#         );
# 
#     /* Read captured values */
#     IcuTempA = (Icu_ValueType)Icu_eMios_GetCaptureRegA(nHwChannel);
	.d2line		904
.Llo234:
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
.Llo235:
	bl		Icu_eMios_GetCaptureRegA
.Llo222:
	mr		r29,r3		# IcuTempA=r29 IcuTempA=r3
#     IcuTempB = (Icu_ValueType)Icu_eMios_GetCaptureRegB(nHwChannel);
	.d2line		905
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
.Llo223:
	bl		Icu_eMios_GetCaptureRegB
.Llo225:
	mr		r28,r3		# IcuTempB=r28 IcuTempB=r3
# 
#     if (EMIOS_UC_IPWM_MODE == eMios_OperationMode)
	.d2line		907
	se_cmpi		r6,4		# eMios_OperationMode=r6
	bc		0,2,.L543	# ne
#     {
#         SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_23();
	.d2line		909
.Llo184:
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_23
#         if
	.d2line		910
.Llo226:
	se_cmpi		r27,2		# nMeasurement_property=r27
	bc		1,2,.L566	# eq
	se_cmpi		r27,1		# nMeasurement_property=r27
	bc		1,2,.L566	# eq
	se_cmpi		r27,3		# nMeasurement_property=r27
	bc		0,2,.L544	# ne
.L566:
#         (
#             (EMIOS_ICU_HIGH_TIME == nMeasurement_property) || \
#             (EMIOS_ICU_LOW_TIME == nMeasurement_property)
#             
#             || (EMIOS_ICU_ACTIVE_TIME == nMeasurement_property)
#         )
#         {
#             if (IcuTempA > IcuTempB)
	.d2line		918
	se_cmpl		r29,r28		# IcuTempA=r29 IcuTempB=r28
	bc		0,1,.L545	# le
#             {
#                 IcuActivePulseWidth = (Icu_ValueType)(IcuTempA - IcuTempB);
	.d2line		920
.Llo230:
	subf		r4,r28,r29		# IcuTempB=r28 IcuTempA=r29
.Llo186:
	mr		r4,r4		# IcuActivePulseWidth=r4 IcuActivePulseWidth=r4
	b		.L546
.L545:
#             }
#             else /*Counter overflow Case*/
#             {
#                 Bus_Period = Icu_eMios_ReadCounterBus(nHwChannel);
	.d2line		924
.Llo187:
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	bl		Icu_eMios_ReadCounterBus
.Llo211:
	mr		r3,r3		# Bus_Period=r3 Bus_Period=r3
#                 IcuActivePulseWidth = (Icu_ValueType)(IcuTempA + ((uint32)Bus_Period - IcuTempB) + 1U);
	.d2line		925
	subf		r3,r28,r3		# Bus_Period=r3 IcuTempB=r28 Bus_Period=r3
	se_add		r3,r29		# Bus_Period=r3 Bus_Period=r3 IcuTempA=r29
	se_addi		r3,1		# Bus_Period=r3 Bus_Period=r3
.Llo188:
	mr		r4,r3		# IcuActivePulseWidth=r4 IcuActivePulseWidth=r3
.L546:
#             }
#             Icu_Ipw_SignalMeasurement
	.d2line		927
.Llo189:
	rlwinm		r3,r31,0,24,31		# Bus_Period=r3 nHwChannel=r31
.Llo190:
	rlwinm		r6,r30,0,24,31		# eMios_OperationMode=r6 bOverflow=r30
	mr		r4,r4		# IcuActivePulseWidth=r4 IcuActivePulseWidth=r4
.Llo191:
	diab.li		r5,0
	bl		Icu_SignalMeasurement
	b		.L548
.L544:
#             (
#                 ICU_EMIOS_HW_CHANNEL(nHwChannel), IcuActivePulseWidth, (uint16)0, bOverflow
#             );
#         }
#         /* Duty cycle */
#         else
#         {
#             /* Check if a complete signal was acquired */
#             if (0U == Icu_aInt_Counter[nHwChannel])
	.d2line		936
.Llo231:
	lis		r3,Icu_aInt_Counter@ha
	e_add16i		r3,r3,Icu_aInt_Counter@l
	rlwinm		r0,r31,2,22,29		# nHwChannel=r31
	lwzx		r0,r3,r0
	se_cmpi		r0,0
	bc		0,2,.L549	# ne
#             {
#                 /* Mark that the complete signal was acquired */
#                 Icu_aInt_Counter[nHwChannel] = 1U;
	.d2line		939
	diab.li		r0,1
	lis		r3,Icu_aInt_Counter@ha
	e_add16i		r3,r3,Icu_aInt_Counter@l
	rlwinm		r4,r31,2,22,29		# nHwChannel=r31
	stwx		r0,r3,r4
#                 Icu_Ipw_ReportWakeupAndOverflow(ICU_EMIOS_HW_CHANNEL(nHwChannel), bOverflow);
	.d2line		940
	rlwinm		r3,r31,0,24,31		# nHwChannel=r31
	rlwinm		r4,r30,0,24,31		# bOverflow=r30
	bl		Icu_ReportWakeupAndOverflow
	b		.L548
.L549:
#             }
#             else
#             {
#                 /* Compute Period of the signal */
#                 if (IcuTempB > Icu_TimeStart[nHwChannel])
	.d2line		945
	lis		r3,Icu_TimeStart@ha
	e_add16i		r3,r3,Icu_TimeStart@l
	rlwinm		r0,r31,2,22,29		# nHwChannel=r31
	lwzx		r0,r3,r0
	se_cmpl		r0,r28		# IcuTempB=r28
	bc		0,0,.L552	# ge
#                 {
#                     IcuPeriod = IcuTempB - Icu_TimeStart[nHwChannel];
	.d2line		947
	lis		r3,Icu_TimeStart@ha
	e_add16i		r3,r3,Icu_TimeStart@l
	rlwinm		r0,r31,2,22,29		# nHwChannel=r31
	lwzx		r5,r3,r0
	subf		r5,r5,r28		# IcuTempB=r28
.Llo198:
	mr		r5,r5		# IcuPeriod=r5 IcuPeriod=r5
	b		.L553
.L552:
#                 }
#                 else     /*Counter overflow Case */
#                 {
#                     Bus_Period = Icu_eMios_ReadCounterBus(nHwChannel);
	.d2line		951
.Llo199:
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	bl		Icu_eMios_ReadCounterBus
.Llo212:
	mr		r4,r3		# Bus_Period=r4 Bus_Period=r3
#                     IcuPeriod = (Icu_ValueType)\
	.d2line		952
.Llo213:
	lis		r3,Icu_TimeStart@ha		# nHwChannel=r3
.Llo214:
	e_add16i		r3,r3,Icu_TimeStart@l		# nHwChannel=r3 nHwChannel=r3
	rlwinm		r0,r31,2,22,29		# nHwChannel=r31
	lwzx		r3,r3,r0		# nHwChannel=r3 nHwChannel=r3
	subf		r3,r3,r4		# nHwChannel=r3 nHwChannel=r3 Bus_Period=r4
	se_add		r3,r28		# nHwChannel=r3 nHwChannel=r3 IcuTempB=r28
	se_addi		r3,1		# nHwChannel=r3 nHwChannel=r3
.Llo200:
	mr		r5,r3		# IcuPeriod=r5 IcuPeriod=r3
.L553:
#                     (IcuTempB + ((uint32)Bus_Period - Icu_TimeStart[nHwChannel]) + 1U);
#                 }
#                 IcuActivePulseWidth = Icu_CapturedActivePulseWidth[nHwChannel];
	.d2line		955
.Llo201:
	lis		r3,Icu_CapturedActivePulseWidth@ha		# nHwChannel=r3
.Llo202:
	e_add16i		r3,r3,Icu_CapturedActivePulseWidth@l		# nHwChannel=r3 nHwChannel=r3
	rlwinm		r0,r31,2,22,29		# nHwChannel=r31
	lwzx		r4,r3,r0		# Bus_Period=r4 nHwChannel=r3
.Llo192:
	mr		r4,r4		# IcuActivePulseWidth=r4 IcuActivePulseWidth=r4
# 
#                 if (EMIOS_ICU_DUTY_CYCLE == nMeasurement_property)
	.d2line		957
	se_cmpi		r27,8		# nMeasurement_property=r27
	bc		0,2,.L554	# ne
#                 {
#                     Icu_Ipw_SignalMeasurement
	.d2line		959
.Llo193:
	rlwinm		r3,r31,0,24,31		# nHwChannel=r3 nHwChannel=r31
	rlwinm		r6,r30,0,24,31		# eMios_OperationMode=r6 bOverflow=r30
.Llo194:
	mr		r4,r4		# IcuActivePulseWidth=r4 IcuActivePulseWidth=r4
.Llo195:
	mr		r5,r5		# IcuPeriod=r5 IcuPeriod=r5
.Llo203:
	bl		Icu_SignalMeasurement
	b		.L548
.L554:
#                     (
#                         ICU_EMIOS_HW_CHANNEL(nHwChannel), IcuActivePulseWidth, IcuPeriod, bOverflow
#                     );
#                 }
#                 else if (EMIOS_ICU_PERIOD_TIME == nMeasurement_property)
	.d2line		964
.Llo196:
	se_cmpi		r27,4		# nMeasurement_property=r27
	bc		0,2,.L548	# ne
#                 {
#                     Icu_Ipw_SignalMeasurement
	.d2line		966
.Llo197:
	rlwinm		r3,r31,0,24,31		# nHwChannel=r3 nHwChannel=r31
	rlwinm		r6,r30,0,24,31		# eMios_OperationMode=r6 bOverflow=r30
	diab.li		r4,0		# Bus_Period=r4
.Llo204:
	mr		r5,r5		# IcuPeriod=r5 IcuPeriod=r5
.Llo205:
	bl		Icu_SignalMeasurement
.L548:
#                     (
#                         ICU_EMIOS_HW_CHANNEL(nHwChannel), (Icu_ValueType)0, IcuPeriod, bOverflow
#                     );
#                 }
#                 else
#                 {
#                     /* Nothing to do */
#                 }
#             }
#         }
# 
#         if (IcuTempA > IcuTempB)
	.d2line		978
.Llo206:
	se_cmpl		r29,r28		# IcuTempA=r29 IcuTempB=r28
	bc		0,1,.L560	# le
#         {
#             Icu_CapturedActivePulseWidth[nHwChannel] = IcuTempA - IcuTempB;
	.d2line		980
.Llo185:
	subf		r4,r28,r29		# Bus_Period=r4 IcuTempB=r28 IcuTempA=r29
.Llo215:
	lis		r3,Icu_CapturedActivePulseWidth@ha		# Bus_Period=r3
	e_add16i		r3,r3,Icu_CapturedActivePulseWidth@l		# Bus_Period=r3 Bus_Period=r3
	rlwinm		r0,r31,2,22,29		# nHwChannel=r31
	stwx		r4,r3,r0		# Bus_Period=r3 Bus_Period=r4
	b		.L561
.L560:
#         }
#         else /*Counter overflow Case */
#         {
#             Bus_Period = Icu_eMios_ReadCounterBus(nHwChannel);
	.d2line		984
.Llo216:
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	bl		Icu_eMios_ReadCounterBus
.Llo217:
	mr		r3,r3		# Bus_Period=r3 Bus_Period=r3
#             Icu_CapturedActivePulseWidth[nHwChannel] = (Icu_ValueType)(IcuTempA + ((uint32)Bus_Period - IcuTempB) + 1U);
	.d2line		985
	subf		r3,r28,r3		# Bus_Period=r3 IcuTempB=r28 Bus_Period=r3
.Llo218:
	se_add		r29,r3		# IcuTempA=r29 IcuTempA=r29 IcuTempA=r3
	se_addi		r29,1		# IcuTempA=r29 IcuTempA=r29
	lis		r3,Icu_CapturedActivePulseWidth@ha		# IcuTempA=r3
	e_add16i		r3,r3,Icu_CapturedActivePulseWidth@l		# IcuTempA=r3 IcuTempA=r3
	rlwinm		r0,r31,2,22,29		# nHwChannel=r31
	stwx		r29,r3,r0		# IcuTempA=r3 IcuTempA=r29
.L561:
#         }
#         Icu_TimeStart[nHwChannel] = (Icu_ValueType)IcuTempB;
	.d2line		987
.Llo178:
	lis		r3,Icu_TimeStart@ha		# Bus_Period=r3
.Llo219:
	e_add16i		r3,r3,Icu_TimeStart@l		# Bus_Period=r3 Bus_Period=r3
.Llo179:
	rlwinm		r31,r31,2,22,29		# nHwChannel=r31 nHwChannel=r31
.Llo180:
	stwx		r28,r3,r31		# Bus_Period=r3 IcuTempB=r28
#         SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_23();
	.d2line		988
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_23
.Llo220:
	b		.L542
.L543:
#     }
#     else
# #ifdef SIGNAL_MEASUREMENT_USES_SAIC_MODE
#         if (EMIOS_UC_IPM_MODE == eMios_OperationMode)
# #endif   /* SIGNAL_MEASUREMENT_USES_SAIC_MODE */
#     {
#         if (IcuTempA > IcuTempB)
	.d2line		995
.Llo181:
	se_cmpl		r29,r28		# IcuTempA=r29 IcuTempB=r28
	bc		0,1,.L563	# le
#         {
#             IcuPeriod = IcuTempA - IcuTempB;
	.d2line		997
.Llo232:
	subf		r5,r28,r29		# IcuTempB=r28 IcuTempA=r29
.Llo207:
	mr		r5,r5		# IcuPeriod=r5 IcuPeriod=r5
	b		.L564
.L563:
#         }
#         else     /*Counter overflow Case*/
#         {
#             Bus_Period = Icu_eMios_ReadCounterBus(nHwChannel);
	.d2line		1001
.Llo208:
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	bl		Icu_eMios_ReadCounterBus
.Llo221:
	mr		r3,r3		# Bus_Period=r3 Bus_Period=r3
#             IcuPeriod = (Icu_ValueType)(IcuTempA + ((uint32)Bus_Period - IcuTempB) + 1U);
	.d2line		1002
.Llo227:
	subf		r28,r28,r3		# IcuTempB=r28 IcuTempB=r28 Bus_Period=r3
.Llo224:
	se_add		r29,r28		# IcuTempA=r29 IcuTempA=r29 IcuTempA=r28
	addi		r5,r29,1		# IcuTempA=r29
.L564:
#         }
#         Icu_Ipw_SignalMeasurement
	.d2line		1004
.Llo209:
	rlwinm		r3,r31,0,24,31		# Bus_Period=r3 nHwChannel=r31
	rlwinm		r6,r30,0,24,31		# eMios_OperationMode=r6 bOverflow=r30
	diab.li		r4,0
	mr		r5,r5		# IcuPeriod=r5 IcuPeriod=r5
.Llo210:
	bl		Icu_SignalMeasurement
.L542:
#         (
#             ICU_EMIOS_HW_CHANNEL(nHwChannel), (Icu_ValueType)0, IcuPeriod, bOverflow
#         );
#     }
# #ifdef SIGNAL_MEASUREMENT_USES_SAIC_MODE
#     else
#     {
#         SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_24();
#         {
#             Icu_eMios_SetActivationCondition
#             (
#                 nHwChannel, EMIOS_OPPOSITE_EDGES
#             );
# 
#             if (0U == Icu_aInt_Counter[nHwChannel])   /* store the first value */
#             {
#                 Icu_TimeStart[nHwChannel] = IcuTempA;
#                 Icu_aInt_Counter[nHwChannel]++;
#             }
#             else
#             {
#                 Previous_Value = Icu_TimeStart[nHwChannel];
#                 /* if first value is greater than the second value */
#                 if (IcuTempA < Previous_Value)
#                 {
#                     Bus_Period = Icu_eMios_ReadCounterBus(nHwChannel);
#                     Pulse_Width = (Bus_Period - Previous_Value) + IcuTempA + 1U;
#                 }
#                 else
#                 {
#                     Pulse_Width = IcuTempA - Previous_Value;
#                 }
# 
#                 /* HIGH TIME or LOW TIME measurement */
#                 if ((EMIOS_ICU_HIGH_TIME == nMeasurement_property) ||   \
#                     (EMIOS_ICU_LOW_TIME == nMeasurement_property)
#                     || (EMIOS_ICU_ACTIVE_TIME == nMeasurement_property)
#                    )
#                 {
#                     IcuActivePulseWidth = Pulse_Width;
#                     /* clear to measure next LOW/HIGH pulse */
#                     Icu_aInt_Counter[nHwChannel] = 0U;
#                     Icu_Ipw_SignalMeasurement
#                     (
#                         ICU_EMIOS_HW_CHANNEL(nHwChannel), IcuActivePulseWidth, (Icu_ValueType)0, bOverflow
#                     );
#                 }
#                 /* Duty Cycle */
#                 else
#                 {
#                     /* DUTYCYCLE or PERIOD measurement */
#                     if (1U == Icu_aInt_Counter[nHwChannel])
#                     {
#                         Icu_CapturedActivePulseWidth[nHwChannel] = Pulse_Width;
#                         Icu_aInt_Counter[nHwChannel] = 2U;
#                         Icu_Ipw_ReportWakeupAndOverflow(ICU_EMIOS_HW_CHANNEL(nHwChannel), bOverflow);
#                     }
#                     else
#                     {
#                         /* counter = 2 */
#                         IcuPeriod = Icu_CapturedActivePulseWidth[nHwChannel] + Pulse_Width;
#                         IcuActivePulseWidth = Icu_CapturedActivePulseWidth[nHwChannel];
#                         /* set to 1 to find active pulse width next time */
#                         Icu_aInt_Counter[nHwChannel] = 1U;
#                         if (EMIOS_ICU_DUTY_CYCLE == nMeasurement_property)
#                         {
#                             Icu_Ipw_SignalMeasurement
#                             (
#                                 ICU_EMIOS_HW_CHANNEL(nHwChannel), IcuActivePulseWidth, IcuPeriod, bOverflow
#                             );
#                         }
#                         else if (EMIOS_ICU_PERIOD_TIME == nMeasurement_property)
#                         {
#                             Icu_Ipw_SignalMeasurement
#                             (
#                                 ICU_EMIOS_HW_CHANNEL(nHwChannel), (Icu_ValueType)0, IcuPeriod, bOverflow
#                             );
#                         }
#                         else
#                         {
#                             /**/
#                         }
#                     }
#                     /* store for next time */
#                     Icu_TimeStart[nHwChannel] = IcuTempA;
#                 }
#             }
#         }
#         SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_24();
#     }
# #endif /* SIGNAL_MEASUREMENT_USES_SAIC_MODE */
# }
	.d2line		1096
	.d2epilogue_begin
.Llo182:
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L847:
	.type		Icu_eMios_SignalMeasurement,@function
	.size		Icu_eMios_SignalMeasurement,.-Icu_eMios_SignalMeasurement
# Number of nodes = 296

# Allocations for Icu_eMios_SignalMeasurement
#	?a4		nHwChannel
#	?a5		bOverflow
#	?a6		IcuActivePulseWidth
#	?a7		IcuPeriod
#	?a8		Bus_Period
#	?a9		IcuTempA
#	?a10		IcuTempB
#	?a11		nMeasurement_property
#	?a12		eMios_OperationMode
# LOCAL_INLINE FUNC(void, ICU_CODE) Icu_eMios_Timestamp
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1111,35
#$$ld
.L873:

#$$bf	Icu_eMios_Timestamp,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Icu_eMios_Timestamp:
.Llo236:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# u8CapturedWords=r0
.Llo242:
	stw		r0,20(r1)		# u8CapturedWords=r0
	.d2_cfa_offset    108,-1
	mr		r7,r3		# nHwChannel=r7 nHwChannel=r3
	mr		r6,r4		# bOverflow=r6 bOverflow=r4
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType,            AUTOMATIC) nHwChannel,
#     VAR(boolean,                            AUTOMATIC) bOverflow
# )
# {
#     VAR(uint8, AUTOMATIC) u8CapturedWords = 1U;
	.d2line		1117
	diab.li		r0,1		# u8CapturedWords=r0
# 
#     /* Store timestamp */
#     /** @violates @ref Icu_eMios_c_3, Cast from unsigned long to pointer.*/
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     Icu_eMios_aBufferPtr[nHwChannel]= (Icu_ValueType)Icu_eMios_GetCaptureRegA(nHwChannel);
	.d2line		1122
.Llo243:
	mr		r3,r7		# nHwChannel=r3 nHwChannel=r7
.Llo237:
	bl		Icu_eMios_GetCaptureRegA
.Llo238:
	lis		r5,Icu_eMios_aBufferPtr@ha
	e_add16i		r5,r5,Icu_eMios_aBufferPtr@l
	rlwinm		r0,r7,2,22,29		# u8CapturedWords=r0 nHwChannel=r7
	stwux		r3,r5,r0		# nHwChannel=r3
# 
#     Icu_Ipw_Timestamp
	.d2line		1124
	rlwinm		r3,r7,0,24,31		# nHwChannel=r3 nHwChannel=r7
.Llo239:
	diab.li		r4,1
.Llo240:
	rlwinm		r6,r6,0,24,31		# bOverflow=r6 bOverflow=r6
.Llo241:
	bl		Icu_Timestamp
#     (
#         ICU_EMIOS_HW_CHANNEL(nHwChannel), u8CapturedWords, &Icu_eMios_aBufferPtr[nHwChannel], bOverflow
#     );
# }
	.d2line		1128
	.d2epilogue_begin
	lwz		r0,20(r1)		# u8CapturedWords=r0
	mtspr		lr,r0		# u8CapturedWords=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L874:
	.type		Icu_eMios_Timestamp,@function
	.size		Icu_eMios_Timestamp,.-Icu_eMios_Timestamp
# Number of nodes = 37

# Allocations for Icu_eMios_Timestamp
#	?a4		nHwChannel
#	?a5		bOverflow
#	?a6		u8CapturedWords
# FUNC(void, ICU_CODE) Icu_eMios_SetActivationCondition
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1526,22
#$$ld
.L882:

#$$bf	Icu_eMios_SetActivationCondition,interprocedural,rasave,nostackparams
	.globl		Icu_eMios_SetActivationCondition
	.d2_cfa_start __cie
Icu_eMios_SetActivationCondition:
.Llo244:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nHwChannel=r3 nHwChannel=r3
	mr		r31,r4		# Activation=r31 Activation=r4
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType,                        AUTOMATIC) nHwChannel,
#     CONST(Icu_eMios_ActivationType,                     AUTOMATIC) Activation
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
	.d2line		1532
.Llo252:
	rlwinm		r30,r3,27,29,31		# nHwChannel=r3
.Llo253:
	mr		r30,r30		# u8ModuleIdx=r30 u8ModuleIdx=r30
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
	.d2line		1533
	rlwinm		r3,r3,0,27,31		# nHwChannel=r3 nHwChannel=r3
.Llo245:
	mr		r29,r3		# u8ChannelIdx=r29 u8ChannelIdx=r3
# #ifdef SIGNAL_MEASUREMENT_USES_SAIC_MODE
#     VAR(uint32, AUTOMATIC) u32RegEmiosCCR;
# #endif  /* SIGNAL_MEASUREMENT_USES_SAIC_MODE */
#     
#     SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_19();
	.d2line		1538
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_19
#     switch (Activation)
	.d2line		1539
.Llo262:
	mr		r6,r31		# Activation=r6 Activation=r31
	se_cmpi		r6,1
	bc		1,2,.L632	# eq
.Llo254:
	se_cmpi		r6,2
	bc		1,2,.L630	# eq
	b		.L633
.L630:
#     {
# #ifdef SIGNAL_MEASUREMENT_USES_SAIC_MODE
#         case EMIOS_OPPOSITE_EDGES:
#         {
#             /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#             /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#             u32RegEmiosCCR = REG_READ32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx));
# 
#             /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#             /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#             REG_WRITE32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx),(u32RegEmiosCCR ^ CCR_EDPOL_MASK_U32));
#         }
#         break;
# #endif  /* SIGNAL_MEASUREMENT_USES_SAIC_MODE */
# 
#         case EMIOS_BOTH_EDGES:
#         {
#             /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#             /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#             REG_BIT_SET32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), CCR_EDSEL_MASK_U32);
	.d2line		1559
.Llo255:
	lis		r3,EMIOS_BASE_ADDR32@ha		# nHwChannel=r3
.Llo246:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# nHwChannel=r3 nHwChannel=r3
.Llo256:
	rlwinm		r30,r30,2,22,29		# u8ModuleIdx=r30 u8ModuleIdx=r30
.Llo257:
	lwzx		r0,r3,r30		# nHwChannel=r3
.Llo263:
	rlwinm		r29,r29,5,19,26		# u8ChannelIdx=r29 u8ChannelIdx=r29
	se_add		r29,r0		# u8ChannelIdx=r29 u8ChannelIdx=r29
	lwz		r0,44(r29)		# u8ChannelIdx=r29
	.diab.bseti		r0,23
	stw		r0,44(r29)		# u8ChannelIdx=r29
	b		.L631
.L632:
#         }
#         break;
# 
#         case EMIOS_RISING_EDGE:
#         {
#             /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#             /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#             REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), CCR_EDSEL_MASK_U32);
	.d2line		1567
.Llo247:
	lis		r3,EMIOS_BASE_ADDR32@ha		# nHwChannel=r3
.Llo248:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# nHwChannel=r3 nHwChannel=r3
.Llo258:
	rlwinm		r30,r30,2,22,29		# u8ModuleIdx=r30 u8ModuleIdx=r30
.Llo259:
	lwzx		r0,r3,r30		# nHwChannel=r3
	rlwinm		r4,r29,5,19,26		# u8ChannelIdx=r29
	add		r29,r0,r4		# u8ChannelIdx=r29
	lwz		r0,44(r29)		# u8ChannelIdx=r29
	.diab.bclri		r0,23
	stw		r0,44(r29)		# u8ChannelIdx=r29
# 
#             /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#             /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#             REG_BIT_SET32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), CCR_EDPOL_MASK_U32);
	.d2line		1571
	lwzx		r0,r3,r30		# nHwChannel=r3
	se_add		r4,r0
	lwz		r0,44(r4)
	.diab.bseti		r0,24
	stw		r0,44(r4)
	b		.L631
.L633:
#         }
#         break;
# 
#         default:
#         {
#             /* EMIOS_FALLING_EDGE */
#             /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#             /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#             REG_BIT_CLEAR32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), (CCR_EDSEL_MASK_U32 | CCR_EDPOL_MASK_U32));
	.d2line		1580
.Llo249:
	lis		r3,EMIOS_BASE_ADDR32@ha		# nHwChannel=r3
.Llo250:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# nHwChannel=r3 nHwChannel=r3
.Llo260:
	rlwinm		r30,r30,2,22,29		# u8ModuleIdx=r30 u8ModuleIdx=r30
.Llo261:
	lwzx		r0,r3,r30		# nHwChannel=r3
.Llo264:
	rlwinm		r29,r29,5,19,26		# u8ChannelIdx=r29 u8ChannelIdx=r29
	se_add		r29,r0		# u8ChannelIdx=r29 u8ChannelIdx=r29
	lwz		r0,44(r29)		# u8ChannelIdx=r29
	rlwinm		r0,r0,0,25,22
	stw		r0,44(r29)		# u8ChannelIdx=r29
.L631:
#         }
#         break;
#     }
#     SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_19();
	.d2line		1584
.Llo251:
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_19
# }
	.d2line		1585
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
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
.L883:
	.type		Icu_eMios_SetActivationCondition,@function
	.size		Icu_eMios_SetActivationCondition,.-Icu_eMios_SetActivationCondition
# Number of nodes = 96

# Allocations for Icu_eMios_SetActivationCondition
#	?a4		nHwChannel
#	?a5		Activation
#	?a6		$$128
#	?a7		$$127
#	?a8		$$126
#	?a9		$$125
#	?a10		u8ModuleIdx
#	?a11		u8ChannelIdx
# FUNC(void, ICU_CODE) Icu_eMios_Init
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1151,22
#$$ld
.L896:

#$$bf	Icu_eMios_Init,interprocedural,rasave,nostackparams
	.globl		Icu_eMios_Init
	.d2_cfa_start __cie
Icu_eMios_Init:
.Llo265:
	diab.li		r0,-384		# u8MasterBusIdx=r0
	stwux		r1,r1,r0		
	.d2_cfa_def_cfa_offset	384
	mfspr		r0,lr
.Llo295:
	diab.addi		r12,r1,348
	stmw		r23,0(r12)		# offset r1+348  0x15c
	.d2_cfa_offset_list	23,31,1,1
	stw		r0,388(r1)		# u8MasterBusIdx=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# peMiosIpConfig=r31 peMiosIpConfig=r3
	.d2prologue_end
# (
#     P2CONST(Icu_eMios_IpConfigType, AUTOMATIC, ICU_APPL_CONST) peMiosIpConfig
# )
# {
#     /* @brief Pointer to eMIOS channel specific configuration */
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST) peMiosChannelConfig;
# 
#     VAR(Icu_eMios_ControlType, AUTOMATIC)   nCtrlRegVal;
#     /* logical channel */
#     VAR(Icu_eMios_ChannelType, AUTOMATIC)   nCounter;
# 
#     VAR(uint8,                 AUTOMATIC)   u8ModuleIdx;
#     VAR(uint8,                 AUTOMATIC)   u8ChannelIdx;
#     VAR(uint8,                 AUTOMATIC)   u8MasterModule;
#     VAR(uint8,                 AUTOMATIC)   u8MasterChannel;
#     VAR(uint8,                 AUTOMATIC)   u8MasterBusIdx = 0xFFU;
	.d2line		1167
	diab.li		r0,255		# u8MasterBusIdx=r0
#     VAR(uint8,                 AUTOMATIC)   u8MasterBusMode[ICU_MAX_EMIOS_CHANNELS];
#     VAR(uint32,                AUTOMATIC)   u32prescaler[ICU_MAX_EMIOS_CHANNELS];
#     VAR(uint32,                AUTOMATIC)   u32RegCCR;
#     VAR(Icu_eMios_OperationMode, AUTOMATIC) ChannelOperationMode;
#     VAR(uint32,                AUTOMATIC)   u32ChannelEmiosBus;
#     
#     for (nCounter=0U; nCounter < (Icu_eMios_ChannelType)ICU_MAX_EMIOS_CHANNELS; nCounter++)
	.d2line		1174
.Llo296:
	diab.li		r3,0		# nCounter=r3
.L585:
.Llo266:
	rlwinm		r5,r3,0,24,31		# nCounter=r3
.Llo267:
	cmpi		0,0,r5,64
	bc		0,0,.L587	# ge
#     {
#         u8MasterBusMode[nCounter] = (uint8)0xFFU;
	.d2line		1176
	diab.li		r0,255		# u8MasterBusIdx=r0
.Llo297:
	diab.addi		r4,r1,8
	rlwinm		r5,r3,0,24,31		# nCounter=r3
	stbx		r0,r4,r5		# u8MasterBusIdx=r0
#         
#         u32prescaler[nCounter] = (uint32)0;
	.d2line		1178
	diab.li		r0,0		# u8MasterBusIdx=r0
	diab.addi		r4,r1,72
	rlwinm		r5,r3,2,22,29		# nCounter=r3
	stwx		r0,r4,r5		# u8MasterBusIdx=r0
#     }
	.d2line		1179
	diab.addi		r5,r3,1		# nCounter=r3
	se_addi		r3,1		# nCounter=r3 nCounter=r3
	b		.L585
.L587:
#     
#     for (nCounter=0U; nCounter < peMiosIpConfig->nNumChannels; nCounter++)
	.d2line		1181
.Llo298:
	diab.li		r30,0		# nCounter=r30
.L588:
.Llo277:
	rlwinm		r0,r30,0,24,31		# u8MasterBusIdx=r0 nCounter=r30
.Llo278:
	lbz		r3,0(r31)		# nCounter=r3 peMiosIpConfig=r31
	se_cmp		r0,r3		# u8MasterBusIdx=r0 nCounter=r3
	bc		0,0,.L590	# ge
#     {
#         /* only handle EMIOS channels */
#         peMiosChannelConfig = &(*peMiosIpConfig->pChannelsConfig)[nCounter];
	.d2line		1184
.Llo299:
	rlwinm		r0,r30,0,24,31		# u8MasterBusIdx=r0 nCounter=r30
.Llo300:
	lwz		r29,4(r31)		# peMiosChannelConfig=r29 peMiosIpConfig=r31
.Llo271:
	rlwinm		r3,r0,4,0,27		# nCounter=r3 u8MasterBusIdx=r0
	se_slwi		r0,2		# u8MasterBusIdx=r0 u8MasterBusIdx=r0
	subf		r0,r0,r3		# u8MasterBusIdx=r0 u8MasterBusIdx=r0 nCounter=r3
	se_add		r0,r29		# u8MasterBusIdx=r0 u8MasterBusIdx=r0 peMiosChannelConfig=r29
.Llo301:
	mr		r29,r0		# peMiosChannelConfig=r29 peMiosChannelConfig=r0
#         nCtrlRegVal  = peMiosChannelConfig->nControlValue;
	.d2line		1185
	lwz		r28,4(r29)		# nCtrlRegVal=r28 peMiosChannelConfig=r29
.Llo273:
	mr		r28,r28		# nCtrlRegVal=r28 nCtrlRegVal=r28
#         
#         u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8((uint8)peMiosChannelConfig->nHwChannel));
	.d2line		1187
	lbz		r26,0(r29)		# u8ChannelIdx=r26 peMiosChannelConfig=r29
.Llo288:
	rlwinm		r27,r26,27,29,31		# u8ModuleIdx=r27 u8ChannelIdx=r26
.Llo281:
	mr		r27,r27		# u8ModuleIdx=r27 u8ModuleIdx=r27
#         u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8((uint8)peMiosChannelConfig->nHwChannel));
	.d2line		1188
	rlwinm		r26,r26,0,27,31		# u8ChannelIdx=r26 u8ChannelIdx=r26
	mr		r26,r26		# u8ChannelIdx=r26 u8ChannelIdx=r26
#         
#         u8MasterBusIdx = (uint8)Icu_eMios_GetMasterBus(u8ModuleIdx, u8ChannelIdx, (uint32)((nCtrlRegVal & ICU_EMIOS_BUS_SELECT_PARAM_MASK) 
	.d2line		1190
	rlwinm		r5,r28,0,30,31		# u32RegCCR=r5 nCtrlRegVal=r28
	mr		r3,r27		# u8ModuleIdx=r3 u8ModuleIdx=r27
	mr		r4,r26		# u8ChannelIdx=r4 u8ChannelIdx=r26
	bl		Icu_eMios_GetMasterBus
.Llo302:
	mr		r25,r3		# u8MasterBusIdx=r25 u8MasterBusIdx=r3
#                                                                                                         >> ICU_EMIOS_BUS_SELECT_PARAM_SHIFT));
# 
#         /** @violates @ref Icu_eMios_c_4 MISRA 2004 Required Rule,Invariant results for Boolean Ops */
#         u32RegCCR = CCR_UCPREN_MASK_U32 | (CCR_FCK_PRESCALED_U32 << CCR_FCK_SHIFT);
	.d2line		1194
	diab.li		r0,33554432		# u32RegCCR=r0
#         /* Store Operateion Mode for Hardware channel */
#         ChannelOperationMode = (Icu_eMios_OperationMode) \
	.d2line		1196
	rlwinm		r24,r28,23,28,31		# ChannelOperationMode=r24 nCtrlRegVal=r28
.Llo322:
	mr		r24,r24		# ChannelOperationMode=r24 ChannelOperationMode=r24
#                             ((nCtrlRegVal & ICU_EMIOS_UC_MODE_PARAM_MASK) >> ICU_EMIOS_UC_MODE_PARAM_SHIFT);
# 
#         /* Store bus select of nHwChannel */
#         u32ChannelEmiosBus = (uint32)(nCtrlRegVal & (ICU_EMIOS_BUS_SELECT_PARAM_MASK));
	.d2line		1200
	rlwinm		r23,r28,0,30,31		# u32ChannelEmiosBus=r23 nCtrlRegVal=r28
.Llo323:
	mr		r23,r23		# u32ChannelEmiosBus=r23 u32ChannelEmiosBus=r23
#         /* Clear channel config for nHwChannel */
#         Icu_eMios_ClearChConfig
	.d2line		1202
	lbz		r3,0(r29)		# nCounter=r3 peMiosChannelConfig=r29
.Llo303:
	diab.li		r4,65535		# u8ChannelIdx=r4
	bl		Icu_eMios_ClearChConfig
#         (
#             peMiosChannelConfig->nHwChannel,
#             (Icu_eMios_ChConfigType)
#             (
#                 ICU_EMIOS_CH_INITIALIZED_MASK| \
#                 ICU_EMIOS_MEAS_MODE_MASK |ICU_EMIOS_MEAS_PROPERTY_MASK | \
#                 ICU_EMIOS_OPERATION_MODE_MASK | ICU_EMIOS_BUS_CHANNEL_MASK
#             )
#         );
# 
# #ifdef EMIOS_UCDIS_AVAILABLE
# #if (EMIOS_UCDIS_AVAILABLE == STD_ON)
#     /* Enable eMIOS Channel */
#     eMios_StartChannel(peMiosChannelConfig->nHwChannel);
	.d2line		1216
	lbz		r3,0(r29)		# nCounter=r3 peMiosChannelConfig=r29
	bl		eMios_StartChannel
# #endif  /* EMIOS_UCDIS_AVAILABLE */
# #endif
# 
#         /* Enter GPIO Mode to Configure Channel */
#         /* Reset mode for selected channel */
#         /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#         /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         REG_WRITE32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), EMIOS_CCR_CLEAR_U32);
	.d2line		1224
	diab.li		r0,0		# u32RegCCR=r0
.Llo312:
	lis		r3,EMIOS_BASE_ADDR32@ha		# nCounter=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# nCounter=r3 nCounter=r3
	rlwinm		r4,r27,2,22,29		# u8ChannelIdx=r4 u8ModuleIdx=r27
	lwzux		r5,r3,r4		# u32RegCCR=r5 nCounter=r3
	rlwinm		r6,r26,5,19,26		# u8ChannelIdx=r26
	add		r3,r5,r6		# nCounter=r3 u32RegCCR=r5
	stw		r0,44(r3)		# nCounter=r3 u32RegCCR=r0
#         
#         /* Initialize prescaler value, channel filter, freeze enable, and bus select and disable the
#         * prescaler The definition on which edge the period starts
#         * Set Default Edge (included)
#         */
#         u32RegCCR |= ((nCtrlRegVal & ICU_EMIOS_FREEZE_PARAM_MASK) >> ICU_EMIOS_FREEZE_PARAM_SHIFT) << CCR_FREN_SHIFT;
	.d2line		1230
	rlwinm		r0,r28,24,31,31		# u32RegCCR=r0 nCtrlRegVal=r28
	se_slwi		r0,31		# u32RegCCR=r0 u32RegCCR=r0
	.diab.bseti		r0,6		# u32RegCCR=r0
	mr		r0,r0		# u32RegCCR=r0 u32RegCCR=r0
#         u32RegCCR |= ((nCtrlRegVal & ICU_EMIOS_PRESCALER_PARAM_MASK) >> ICU_EMIOS_PRESCALER_PARAM_SHIFT) << CCR_UCPRE_SHIFT;
	.d2line		1231
	rlwinm		r5,r28,26,30,31		# u32RegCCR=r5 nCtrlRegVal=r28
	se_slwi		r5,26		# u32RegCCR=r5 u32RegCCR=r5
	or		r0,r0,r5		# u32RegCCR=r0 u32RegCCR=r0 u32RegCCR=r5
	mr		r0,r0		# u32RegCCR=r0 u32RegCCR=r0
#         u32RegCCR |= ((nCtrlRegVal & ICU_EMIOS_DIG_FILTER_PARAM_MASK) >> ICU_EMIOS_DIG_FILTER_PARAM_SHIFT) << CCR_IF_SHIFT;
	.d2line		1232
	rlwinm		r5,r28,30,28,31		# u32RegCCR=r5 nCtrlRegVal=r28
	se_slwi		r5,19		# u32RegCCR=r5 u32RegCCR=r5
	or		r0,r0,r5		# u32RegCCR=r0 u32RegCCR=r0 u32RegCCR=r5
	mr		r0,r0		# u32RegCCR=r0 u32RegCCR=r0
#         u32RegCCR |= ((nCtrlRegVal & ICU_EMIOS_BUS_SELECT_PARAM_MASK) >> ICU_EMIOS_BUS_SELECT_PARAM_SHIFT) << CCR_BSL_SHIFT;
	.d2line		1233
	rlwinm		r5,r28,9,21,22		# u32RegCCR=r5 nCtrlRegVal=r28
	or		r0,r0,r5		# u32RegCCR=r0 u32RegCCR=r0 u32RegCCR=r5
	mr		r0,r0		# u32RegCCR=r0 u32RegCCR=r0
# 
#         /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#         /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         REG_WRITE32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), u32RegCCR);
	.d2line		1237
	lis		r3,EMIOS_BASE_ADDR32@ha		# nCounter=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# nCounter=r3 nCounter=r3
	lwzx		r3,r3,r4		# nCounter=r3 nCounter=r3
	se_add		r6,r3		# nCounter=r3
	stw		r0,44(r6)		# u32RegCCR=r0
# 
#         /* Disable interrupt */
#         Icu_eMios_DisableInterrupt(u8ModuleIdx, u8ChannelIdx);
	.d2line		1240
	mr		r3,r27		# u8ModuleIdx=r3 u8ModuleIdx=r27
	mr		r4,r26		# u8ChannelIdx=r4 u8ChannelIdx=r26
	bl		Icu_eMios_DisableInterrupt
# 
#         /* Clear pending interrupt flag (and other flags) for the channel */
#         /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#         /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         REG_WRITE32 \
	.d2line		1245
.Llo313:
	diab.li		r0,2147483648		# u32RegCCR=r0
.Llo314:
	e_or2i		r0,32769		# u32RegCCR=r0
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r27,r27,2,22,29		# u8ModuleIdx=r27 u8ModuleIdx=r27
.Llo282:
	lwzx		r3,r3,r27		# u8ModuleIdx=r3 u8ModuleIdx=r3
.Llo283:
	rlwinm		r26,r26,5,19,26		# u8ChannelIdx=r26 u8ChannelIdx=r26
	se_add		r26,r3		# u8ChannelIdx=r26 u8ChannelIdx=r26 u8ModuleIdx=r3
	stw		r0,48(r26)		# u8ChannelIdx=r26 u32RegCCR=r0
#         ( \
#             EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), \
#             (uint32)(CSR_OVR_MASK_U32 | CSR_OVFL_MASK_U32 | CSR_FLAG_MASK_U32) \
#         );
# 
#         Icu_eMios_SetActivationCondition
	.d2line		1251
	lbz		r4,8(r29)		# u8ChannelIdx=r4 peMiosChannelConfig=r29
	lbz		r3,0(r29)		# u8ModuleIdx=r3 peMiosChannelConfig=r29
.Llo284:
	bl		Icu_eMios_SetActivationCondition
#         (
#             peMiosChannelConfig->nHwChannel,
#             (Icu_eMios_ActivationType)(peMiosChannelConfig->nDefaultStartEdge)
#         );
# 
#         /* Set Config for nHwChannel */
#         Icu_eMios_SetChConfig
	.d2line		1258
.Llo315:
	rlwinm		r4,r24,10,0,21		# u8ChannelIdx=r4 ChannelOperationMode=r24
	rlwinm		r23,r23,14,0,17		# u32ChannelEmiosBus=r23 u32ChannelEmiosBus=r23
	or		r4,r4,r23		# u8ChannelIdx=r4 u8ChannelIdx=r4 u32ChannelEmiosBus=r23
	.diab.bseti		r4,22		# u8ChannelIdx=r4
	lbz		r3,0(r29)		# u8ModuleIdx=r3 peMiosChannelConfig=r29
	bl		Icu_eMios_SetChConfig
#         (
#             peMiosChannelConfig->nHwChannel,
#             ICU_EMIOS_CH_INITIALIZED_MASK | \
#             (Icu_eMios_ChConfigType) ((Icu_eMios_ChConfigType)ChannelOperationMode << ICU_EMIOS_OPERATION_MODE_SHIFT) | \
#             (Icu_eMios_ChConfigType) ((Icu_eMios_ChConfigType)u32ChannelEmiosBus << ICU_EMIOS_BUS_CHANNEL_SHIFT)
#         );
#         
#         if (EMIOS_BUS_INTERNAL_COUNTER != (uint32)((nCtrlRegVal & ICU_EMIOS_BUS_SELECT_PARAM_MASK) >>ICU_EMIOS_BUS_SELECT_PARAM_SHIFT))
	.d2line		1266
	rlwinm		r0,r28,0,30,31		# u32RegCCR=r0 nCtrlRegVal=r28
.Llo316:
	se_cmpi		r0,3		# u32RegCCR=r0
	bc		1,2,.L591	# eq
#         {
#             if((uint8)0xFFU == u8MasterBusMode[u8MasterBusIdx]) /* This master bus have not been configed*/
	.d2line		1268
.Llo272:
	diab.addi		r3,r1,8		# u8ModuleIdx=r3
.Llo285:
	rlwinm		r4,r25,0,24,31		# u8ChannelIdx=r4 u8MasterBusIdx=r25
	lbzx		r0,r3,r4		# u32RegCCR=r0 u8ModuleIdx=r3
.Llo317:
	cmpi		0,0,r0,255		# u32RegCCR=r0
	bc		0,2,.L591	# ne
#             {
#                 /* store master bus mode and master bus prescaler*/
#                 u8MasterBusMode[u8MasterBusIdx] = (uint8)CCR_MODE_MCB_INT_CLOCK_U32;
	.d2line		1271
.Llo274:
	diab.li		r0,80		# u32RegCCR=r0
.Llo318:
	diab.addi		r3,r1,8		# u8ModuleIdx=r3
.Llo286:
	rlwinm		r4,r25,0,24,31		# u8ChannelIdx=r4 u8MasterBusIdx=r25
	stbx		r0,r3,r4		# u8ModuleIdx=r3 u32RegCCR=r0
#                 u32prescaler[u8MasterBusIdx] = (uint32)((nCtrlRegVal & ICU_EMIOS_PRESCALER_PARAM_MASK) >> ICU_EMIOS_PRESCALER_PARAM_SHIFT);
	.d2line		1272
.Llo275:
	rlwinm		r28,r28,26,30,31		# nCtrlRegVal=r28 nCtrlRegVal=r28
	diab.addi		r3,r1,72		# u8ModuleIdx=r3
	rlwinm		r25,r25,2,22,29		# u8MasterBusIdx=r25 u8MasterBusIdx=r25
.Llo304:
	stwx		r28,r3,r25		# u8ModuleIdx=r3 nCtrlRegVal=r28
#                 /* enable unified channel to make registers writeable */
#                 #ifdef EMIOS_UCDIS_AVAILABLE
#                 #if (EMIOS_UCDIS_AVAILABLE == STD_ON)
#                 eMios_StartChannel((uint8)u8MasterBusIdx);
	.d2line		1276
	mr		r3,r4		# u8ChannelIdx=r3
.Llo287:
	bl		eMios_StartChannel
.L591:
#                 #endif  /* EMIOS_UCDIS_AVAILABLE */
#                 #endif
#             }
#         }
#     }
	.d2line		1281
.Llo305:
	diab.addi		r0,r30,1		# u32RegCCR=r0 nCounter=r30
	se_addi		r30,1		# nCounter=r30 nCounter=r30
	b		.L588
.L590:
#     
#     /* configuration for master bus */
#     for (nCounter=0U; nCounter < ICU_MAX_EMIOS_CHANNELS; nCounter++)
	.d2line		1284
.Llo276:
	diab.li		r3,0		# nCounter=r3
.L593:
.Llo268:
	rlwinm		r0,r3,0,24,31		# u8MasterBusIdx=r0 nCounter=r3
.Llo279:
	cmpli		0,0,r0,64		# u8MasterBusIdx=r0
	bc		0,0,.L584	# ge
#     {
#         if((uint8)0xFFU != u8MasterBusMode[nCounter]) /* Master bus is used */
	.d2line		1286
.Llo306:
	diab.addi		r4,r1,8		# u8ChannelIdx=r4
.Llo289:
	rlwinm		r0,r3,0,24,31		# u8MasterBusIdx=r0 nCounter=r3
.Llo307:
	lbzx		r0,r4,r0		# u8MasterBusIdx=r0 u8ChannelIdx=r4
	cmpi		0,0,r0,255		# u8MasterBusIdx=r0
	bc		1,2,.L596	# eq
#         {
#             u8MasterModule = (uint8)(EMIOS_MODULE_INDEX_U8(nCounter));
	.d2line		1288
.Llo290:
	rlwinm		r6,r3,27,29,31		# u8MasterModule=r6 nCounter=r3
.Llo292:
	mr		r6,r6		# u8MasterModule=r6 u8MasterModule=r6
#             u8MasterChannel = (uint8)(EMIOS_CHANNEL_INDEX_U8(nCounter));
	.d2line		1289
	rlwinm		r7,r3,0,27,31		# u8MasterChannel=r7 nCounter=r3
.Llo294:
	mr		r7,r7		# u8MasterChannel=r7 u8MasterChannel=r7
#             
#             /* Enter GPIO Mode to Configure Channel */
#             /* Reset mode for selected channel */
#             /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#             /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#             REG_WRITE32(EMIOS_CCR_ADDR32(u8MasterModule, u8MasterChannel), EMIOS_CCR_CLEAR_U32);
	.d2line		1295
	diab.li		r31,0		# peMiosIpConfig=r31
.Llo269:
	lis		r4,EMIOS_BASE_ADDR32@ha		# u8ChannelIdx=r4
.Llo291:
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l		# u8ChannelIdx=r4 u8ChannelIdx=r4
	rlwinm		r6,r6,2,22,29		# u8MasterModule=r6 u8MasterModule=r6
.Llo293:
	lwzux		r5,r4,r6		# u32RegCCR=r5 u8ChannelIdx=r4
.Llo319:
	rlwinm		r7,r7,5,19,26		# u8MasterChannel=r7 u8MasterChannel=r7
	se_add		r5,r7		# u32RegCCR=r5 u32RegCCR=r5 u8MasterChannel=r7
	stw		r31,44(r5)		# u32RegCCR=r5 peMiosIpConfig=r31
#             /* Update register A */
#             /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#             /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#             REG_WRITE32(EMIOS_CADR_ADDR32(u8MasterModule, u8MasterChannel), EMIOS_COUNTER_MASK);
	.d2line		1299
	diab.li		r0,16777215		# u8MasterBusIdx=r0
.Llo308:
	lis		r4,EMIOS_BASE_ADDR32@ha		# u8ChannelIdx=r4
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l		# u8ChannelIdx=r4 u8ChannelIdx=r4
	lwzx		r5,r4,r6		# u32RegCCR=r5 u8ChannelIdx=r4
	se_add		r5,r7		# u32RegCCR=r5 u32RegCCR=r5 u8MasterChannel=r7
	stw		r0,32(r5)		# u32RegCCR=r5 u8MasterBusIdx=r0
#             /* Initialize prescaler value, operation mode for master bus */
#             u32RegCCR = EMIOS_CCR_CLEAR_U32;
#             u32RegCCR = (u32prescaler[nCounter] << CCR_UCPRE_SHIFT) | (u8MasterBusMode[nCounter] & CCR_MODE_MASK_U32);
	.d2line		1302
	diab.addi		r5,r1,72		# u32RegCCR=r5
	rlwinm		r0,r3,2,22,29		# u8MasterBusIdx=r0 nCounter=r3
.Llo309:
	lwzx		r31,r5,r0		# peMiosIpConfig=r31 u32RegCCR=r5
	se_slwi		r31,26		# peMiosIpConfig=r31 peMiosIpConfig=r31
	diab.addi		r5,r1,8		# u32RegCCR=r5
	rlwinm		r0,r3,0,24,31		# u8MasterBusIdx=r0 nCounter=r3
.Llo310:
	lbzx		r0,r5,r0		# u8MasterBusIdx=r0 u32RegCCR=r5
	.diab.bclri		r0,24		# u8MasterBusIdx=r0
	or		r0,r0,r31		# u8MasterBusIdx=r0 u8MasterBusIdx=r0 peMiosIpConfig=r31
.Llo311:
	mr		r0,r0		# u32RegCCR=r0 u32RegCCR=r0
#             /* Set up CCR Register for master bus */
#             /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#             /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#             REG_WRITE32(EMIOS_CCR_ADDR32(u8MasterModule, u8MasterChannel), u32RegCCR);
	.d2line		1306
	mr		r5,r4		# u8ChannelIdx=r5
.Llo320:
	lwzux		r31,r5,r6		# peMiosIpConfig=r31 u8ChannelIdx=r5
.Llo321:
	add		r5,r31,r7		# u8ChannelIdx=r5 peMiosIpConfig=r31 u8MasterChannel=r7
	stw		r0,44(r5)		# u8ChannelIdx=r5 u32RegCCR=r0
#             /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#             /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#             REG_BIT_SET32(EMIOS_CCR_ADDR32(u8MasterModule, u8MasterChannel),CCR_UCPREN_MASK_U32);
	.d2line		1309
	lwzx		r0,r4,r6		# u32RegCCR=r0 u8ChannelIdx=r4
	se_add		r7,r0		# u8MasterChannel=r7 u8MasterChannel=r7 u32RegCCR=r0
	lwz		r0,44(r7)		# u32RegCCR=r0 u8MasterChannel=r7
	.diab.bseti		r0,6		# u32RegCCR=r0
	stw		r0,44(r7)		# u8MasterChannel=r7 u32RegCCR=r0
.L596:
#         }
#     }
	.d2line		1311
.Llo270:
	diab.addi		r0,r3,1		# u8MasterBusIdx=r0 nCounter=r3
	se_addi		r3,1		# nCounter=r3 nCounter=r3
	b		.L593
.L584:
# }
	.d2line		1312
	.d2epilogue_begin
.Llo280:
	diab.addi		r12,r1,348
	lmw		r23,0(r12)		# offset r1+348  0x15c
	.d2_cfa_restore_list	2,10
	lwz		r0,388(r1)		# u8MasterBusIdx=r0
	mtspr		lr,r0		# u8MasterBusIdx=lr
	diab.addi		r1,r1,384		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L897:
	.type		Icu_eMios_Init,@function
	.size		Icu_eMios_Init,.-Icu_eMios_Init
# Number of nodes = 418

# Allocations for Icu_eMios_Init
#	?a4		peMiosIpConfig
#	?a5		$$130
#	?a6		$$124
#	?a7		peMiosChannelConfig
#	?a8		nCtrlRegVal
#	?a9		nCounter
#	?a10		u8ModuleIdx
#	?a11		u8ChannelIdx
#	?a12		u8MasterModule
#	?a13		u8MasterChannel
#	?a14		u8MasterBusIdx
#	SP,8		u8MasterBusMode
#	SP,72		u32prescaler
#	?a15		u32RegCCR
#	?a16		ChannelOperationMode
#	?a17		u32ChannelEmiosBus
# FUNC(void, ICU_CODE) Icu_eMios_DeInit
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1328,22
#$$ld
.L939:

#$$bf	Icu_eMios_DeInit,interprocedural,rasave,nostackparams
	.globl		Icu_eMios_DeInit
	.d2_cfa_start __cie
Icu_eMios_DeInit:
.Llo324:
	stwu		r1,-112(r1)		
	.d2_cfa_def_cfa_offset	112
	mfspr		r0,lr
.Llo353:
	stmw		r26,88(r1)		# offset r1+88  0x58
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,116(r1)		# u8MasterBusIdx=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# peMiosIpConfig=r31 peMiosIpConfig=r3
	.d2prologue_end
# (
#     P2CONST(Icu_eMios_IpConfigType, AUTOMATIC, ICU_APPL_CONST) peMiosIpConfig
# )
# {
#     /* @brief Pointer to eMIOS channel specific configuration */
#     P2CONST(Icu_eMios_ChannelConfigType,AUTOMATIC,ICU_APPL_CONST) peMiosChannelConfig;
# 
#     VAR(Icu_eMios_ControlType, AUTOMATIC)   nCtrlRegVal;
#     /* logical channel */
#     VAR(Icu_eMios_ChannelType, AUTOMATIC)   nCounter;
#     VAR(uint8,                 AUTOMATIC)   u8ModuleIdx;
#     VAR(uint8,                 AUTOMATIC)   u8ChannelIdx;
#     VAR(Icu_eMios_ChannelMeasurementModeType, AUTOMATIC) nMeasMode;
# 
#     /*Master bus */
#     VAR(uint8,                 AUTOMATIC)   u8MasterModule;
#     VAR(uint8,                 AUTOMATIC)   u8MasterChannel;
#     VAR(uint8,                 AUTOMATIC)   u8MasterBusIdx = 0xFFU;
	.d2line		1346
	diab.li		r0,255		# u8MasterBusIdx=r0
#     VAR(uint8,                 AUTOMATIC)   u8MasterBusUse[ICU_MAX_EMIOS_CHANNELS];
# 
#     for (nCounter=0U; nCounter < (Icu_eMios_ChannelType)ICU_MAX_EMIOS_CHANNELS; nCounter++)
	.d2line		1349
.Llo354:
	diab.li		r3,0		# nCounter=r3
.L606:
.Llo325:
	rlwinm		r5,r3,0,24,31		# nCounter=r3
.Llo326:
	cmpi		0,0,r5,64
	bc		0,0,.L608	# ge
#     {
#         u8MasterBusUse[nCounter] = (uint8)0xFFU;
	.d2line		1351
	diab.li		r0,255		# u8MasterBusIdx=r0
.Llo355:
	diab.addi		r4,r1,8
	rlwinm		r5,r3,0,24,31		# nCounter=r3
	stbx		r0,r4,r5		# u8MasterBusIdx=r0
#     }
	.d2line		1352
	diab.addi		r5,r3,1		# nCounter=r3
	se_addi		r3,1		# nCounter=r3 nCounter=r3
	b		.L606
.L608:
# 
#     for (nCounter=0U; nCounter < peMiosIpConfig->nNumChannels; nCounter++)
	.d2line		1354
.Llo356:
	diab.li		r28,0		# nCounter=r28
.L609:
.Llo336:
	rlwinm		r0,r28,0,24,31		# u8MasterBusIdx=r0 nCounter=r28
.Llo337:
	lbz		r3,0(r31)		# nCounter=r3 peMiosIpConfig=r31
	se_cmp		r0,r3		# u8MasterBusIdx=r0 nCounter=r3
	bc		0,0,.L605	# ge
#     {
#         /* only handle EMIOS channels */
#         peMiosChannelConfig = &(*peMiosIpConfig->pChannelsConfig)[nCounter];
	.d2line		1357
.Llo357:
	rlwinm		r0,r28,0,24,31		# u8MasterBusIdx=r0 nCounter=r28
.Llo358:
	lwz		r30,4(r31)		# peMiosChannelConfig=r30 peMiosIpConfig=r31
.Llo328:
	rlwinm		r3,r0,4,0,27		# nCounter=r3 u8MasterBusIdx=r0
	se_slwi		r0,2		# u8MasterBusIdx=r0 u8MasterBusIdx=r0
	subf		r0,r0,r3		# u8MasterBusIdx=r0 u8MasterBusIdx=r0 nCounter=r3
	se_add		r0,r30		# u8MasterBusIdx=r0 u8MasterBusIdx=r0 peMiosChannelConfig=r30
.Llo359:
	mr		r30,r0		# peMiosChannelConfig=r30 peMiosChannelConfig=r0
#         nCtrlRegVal  = peMiosChannelConfig->nControlValue;
	.d2line		1358
.Llo329:
	lwz		r29,4(r30)		# nCtrlRegVal=r29 peMiosChannelConfig=r30
.Llo330:
	mr		r29,r29		# nCtrlRegVal=r29 nCtrlRegVal=r29
#         
#         u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8((uint8)peMiosChannelConfig->nHwChannel));
	.d2line		1360
	lbz		r3,0(r30)		# nCounter=r3 peMiosChannelConfig=r30
	rlwinm		r27,r3,27,29,31		# u8ModuleIdx=r27 nCounter=r3
.Llo338:
	mr		r27,r27		# u8ModuleIdx=r27 u8ModuleIdx=r27
#         u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8((uint8)peMiosChannelConfig->nHwChannel));
	.d2line		1361
	rlwinm		r26,r3,0,27,31		# u8ChannelIdx=r26 nCounter=r3
.Llo341:
	mr		r26,r26		# u8ChannelIdx=r26 u8ChannelIdx=r26
# 
#         nMeasMode = (Icu_eMios_ChannelMeasurementModeType)\
	.d2line		1363
	diab.li		r4,496		# u8ChannelIdx=r4
	bl		Icu_eMios_GetChConfig
.Llo331:
	rlwinm		r0,r3,28,4,31		# u8MasterBusIdx=r0 nCounter=r3
.Llo342:
	mr		r0,r0		# nMeasMode=r0 nMeasMode=r0
#                     (Icu_eMios_GetChConfig(peMiosChannelConfig->nHwChannel,ICU_EMIOS_MEAS_MODE_MASK) >> \
#                                             ICU_EMIOS_MEAS_MODE_SHIFT);
#         /* Set all channel registers as after reset */
#         /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#         /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         REG_WRITE32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), EMIOS_CCR_CLEAR_U32);
	.d2line		1369
	diab.li		r4,0		# u8ChannelIdx=r4
	lis		r3,EMIOS_BASE_ADDR32@ha		# nCounter=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# nCounter=r3 nCounter=r3
	rlwinm		r6,r27,2,22,29		# u8MasterModule=r6 u8ModuleIdx=r27
	lwzux		r7,r3,r6		# nCounter=r3
	rlwinm		r5,r26,5,19,26		# u8ChannelIdx=r26
	add		r3,r7,r5		# nCounter=r3
	stw		r4,44(r3)		# nCounter=r3 u8ChannelIdx=r4
# 
#         /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#         /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         REG_WRITE32(EMIOS_CADR_ADDR32(u8ModuleIdx, (uint32)u8ChannelIdx), EMIOS_CADR_CLEAR_U32);
	.d2line		1373
	lis		r3,EMIOS_BASE_ADDR32@ha		# nCounter=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# nCounter=r3 nCounter=r3
	lwzx		r3,r3,r6		# nCounter=r3 nCounter=r3
	se_add		r5,r3		# nCounter=r3
	stw		r4,32(r5)		# u8ChannelIdx=r4
# 
#         if (EMIOS_CHANNEL_MODE_SIGNAL_MEASUREMENT == nMeasMode)
	.d2line		1375
	se_cmpi		r0,2		# nMeasMode=r0
	bc		0,2,.L612	# ne
#         {
#             /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#             /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#             REG_WRITE32(EMIOS_CBDR_ADDR32(u8ModuleIdx, (uint32)u8ChannelIdx), EMIOS_CBDR_CLEAR_U32);
	.d2line		1379
.Llo332:
	diab.li		r0,0		# nMeasMode=r0
.Llo343:
	lis		r3,EMIOS_BASE_ADDR32@ha		# nCounter=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# nCounter=r3 nCounter=r3
	rlwinm		r6,r27,2,22,29		# u8MasterModule=r6 u8ModuleIdx=r27
	lwzx		r3,r3,r6		# nCounter=r3 nCounter=r3
	rlwinm		r4,r26,5,19,26		# u8ChannelIdx=r4 u8ChannelIdx=r26
	se_add		r3,r4		# nCounter=r3 nCounter=r3 u8ChannelIdx=r4
	stw		r0,36(r3)		# nCounter=r3 nMeasMode=r0
	b		.L613
.L612:
#         }
# 
#         else if (EMIOS_CHANNEL_MODE_EDGE_COUNTER == nMeasMode)
	.d2line		1382
	se_cmpi		r0,8		# nMeasMode=r0
	bc		0,2,.L613	# ne
#         {
#             /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#             /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#             REG_WRITE32(EMIOS_CCNTR_ADDR32(u8ModuleIdx, (uint32)u8ChannelIdx), EMIOS_CCNTR_CLEAR_U32);
	.d2line		1386
.Llo344:
	diab.li		r0,0		# nMeasMode=r0
.Llo345:
	lis		r3,EMIOS_BASE_ADDR32@ha		# nCounter=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# nCounter=r3 nCounter=r3
	rlwinm		r6,r27,2,22,29		# u8MasterModule=r6 u8ModuleIdx=r27
	lwzx		r3,r3,r6		# nCounter=r3 nCounter=r3
	rlwinm		r4,r26,5,19,26		# u8ChannelIdx=r4 u8ChannelIdx=r26
	se_add		r3,r4		# nCounter=r3 nCounter=r3 u8ChannelIdx=r4
	stw		r0,40(r3)		# nCounter=r3 nMeasMode=r0
.L613:
#         }
#         else
#         {
#             /*For Misra Compliance*/
#         }
#         /* Clear CSR register */
#         /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#         /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         REG_WRITE32(EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), EMIOS_CSR_CLEAR_U32);
	.d2line		1395
.Llo346:
	diab.li		r0,-1		# nMeasMode=r0
.Llo347:
	lis		r3,EMIOS_BASE_ADDR32@ha		# nCounter=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# nCounter=r3 nCounter=r3
	rlwinm		r6,r27,2,22,29		# u8MasterModule=r6 u8ModuleIdx=r27
	lwzx		r3,r3,r6		# nCounter=r3 nCounter=r3
	rlwinm		r4,r26,5,19,26		# u8ChannelIdx=r4 u8ChannelIdx=r26
	se_add		r3,r4		# nCounter=r3 nCounter=r3 u8ChannelIdx=r4
	stw		r0,48(r3)		# nCounter=r3 nMeasMode=r0
# 
# #ifdef EMIOS_UCDIS_AVAILABLE
# #if (EMIOS_UCDIS_AVAILABLE == STD_ON)
#     /* Disable eMIOS Channel */
#     eMios_StopChannel(peMiosChannelConfig->nHwChannel);
	.d2line		1400
	lbz		r3,0(r30)		# nCounter=r3 peMiosChannelConfig=r30
	bl		eMios_StopChannel
# #endif
# #endif  /* EMIOS_UCDIS_AVAILABLE */
#         /* Clear config for hardware channel */
#         Icu_eMios_ClearChConfig
	.d2line		1404
.Llo348:
	lbz		r3,0(r30)		# nCounter=r3 peMiosChannelConfig=r30
	diab.li		r4,65535		# u8ChannelIdx=r4
	bl		Icu_eMios_ClearChConfig
#         (
#             peMiosChannelConfig->nHwChannel,
#             (Icu_eMios_ChConfigType)
#             (
#                 ICU_EMIOS_CH_INITIALIZED_MASK | \
#                 ICU_EMIOS_MEAS_MODE_MASK | \
#                 ICU_EMIOS_MEAS_PROPERTY_MASK | \
#                 ICU_EMIOS_OPERATION_MODE_MASK | \
#                 ICU_EMIOS_BUS_CHANNEL_MASK
#             )
#         );
# #if (ICU_EDGE_COUNT_API == STD_ON)
#     /* Clear all aEdgeCurrent_Value */
#     Icu_aEdgeCurrent_Value[peMiosChannelConfig->nHwChannel] = (uint32)(0x0U);
	.d2line		1418
	diab.li		r0,0		# nMeasMode=r0
.Llo349:
	lis		r3,Icu_aEdgeCurrent_Value@ha		# nCounter=r3
	e_add16i		r3,r3,Icu_aEdgeCurrent_Value@l		# nCounter=r3 nCounter=r3
	lbz		r4,0(r30)		# u8ChannelIdx=r4 peMiosChannelConfig=r30
	rlwinm		r4,r4,2,22,29		# u8ChannelIdx=r4 u8ChannelIdx=r4
	stwx		r0,r3,r4		# nCounter=r3 nMeasMode=r0
# #endif /* ICU_EDGE_COUNT_API == STD_ON */
# 
#         /* if channel using master bus, so de-init for master bus */
#         if (EMIOS_BUS_INTERNAL_COUNTER != (uint32)((nCtrlRegVal & ICU_EMIOS_BUS_SELECT_PARAM_MASK) >>ICU_EMIOS_BUS_SELECT_PARAM_SHIFT))
	.d2line		1422
	rlwinm		r5,r29,0,30,31		# nCtrlRegVal=r29
	se_cmpi		r5,3
	bc		1,2,.L616	# eq
#         {
#             u8MasterBusIdx = (uint8)Icu_eMios_GetMasterBus(u8ModuleIdx, u8ChannelIdx, (uint32)((nCtrlRegVal & ICU_EMIOS_BUS_SELECT_PARAM_MASK) 
	.d2line		1424
.Llo333:
	rlwinm		r5,r29,0,30,31		# nCtrlRegVal=r29
	mr		r3,r27		# u8ModuleIdx=r3 u8ModuleIdx=r27
	mr		r4,r26		# u8ChannelIdx=r4 u8ChannelIdx=r26
	bl		Icu_eMios_GetMasterBus
.Llo360:
	mr		r0,r3		# u8MasterBusIdx=r0 u8MasterBusIdx=r3
#                                                                                                         >> ICU_EMIOS_BUS_SELECT_PARAM_SHIFT));
#             if ((uint8)0xFFU == u8MasterBusUse[u8MasterBusIdx])
	.d2line		1426
	diab.addi		r3,r1,8		# u8ModuleIdx=r3
.Llo361:
	rlwinm		r4,r0,0,24,31		# u8ChannelIdx=r4 u8MasterBusIdx=r0
.Llo362:
	lbzx		r3,r3,r4		# u8ModuleIdx=r3 u8ModuleIdx=r3
	cmpi		0,0,r3,255		# u8ModuleIdx=r3
	bc		0,2,.L616	# ne
#             {
#                 u8MasterModule = (uint8)(EMIOS_MODULE_INDEX_U8(u8MasterBusIdx));
	.d2line		1428
.Llo334:
	rlwinm		r6,r0,27,29,31		# u8MasterModule=r6 u8MasterBusIdx=r0
.Llo350:
	mr		r6,r6		# u8MasterModule=r6 u8MasterModule=r6
#                 u8MasterChannel = (uint8)(EMIOS_CHANNEL_INDEX_U8(u8MasterBusIdx));
	.d2line		1429
	rlwinm		r4,r0,0,27,31		# u8ChannelIdx=r4 u8MasterBusIdx=r0
.Llo352:
	mr		r4,r4		# u8MasterChannel=r4 u8MasterChannel=r4
#                 /* Clear register A */
#                 /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#                 /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#                 REG_WRITE32(EMIOS_CADR_ADDR32(u8MasterModule, u8MasterChannel), EMIOS_CBDR_CLEAR_U32);
	.d2line		1433
	diab.li		r5,0
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
.Llo339:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r6,r6,2,22,29		# u8MasterModule=r6 u8MasterModule=r6
.Llo351:
	lwzux		r7,r3,r6		# u8ModuleIdx=r3
	rlwinm		r4,r4,5,19,26		# u8MasterChannel=r4 u8MasterChannel=r4
	add		r3,r7,r4		# u8ModuleIdx=r3 u8MasterChannel=r4
	stw		r5,32(r3)		# u8ModuleIdx=r3
#                 /* Clear register B */
#                 /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#                 /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#                 REG_WRITE32(EMIOS_CBDR_ADDR32(u8MasterModule, u8MasterChannel), EMIOS_CBDR_CLEAR_U32);
	.d2line		1437
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	lwzux		r7,r3,r6		# u8ModuleIdx=r3
	add		r3,r7,r4		# u8ModuleIdx=r3 u8MasterChannel=r4
	stw		r5,36(r3)		# u8ModuleIdx=r3
#                 /* Reset CCR register */
#                 /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#                 /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#                 REG_WRITE32(EMIOS_CCR_ADDR32(u8MasterModule, u8MasterChannel), EMIOS_CCR_CLEAR_U32);
	.d2line		1441
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	lwzux		r7,r3,r6		# u8ModuleIdx=r3
	add		r3,r7,r4		# u8ModuleIdx=r3 u8MasterChannel=r4
	stw		r5,44(r3)		# u8ModuleIdx=r3
#                 /* Clear CSR register */
#                 /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#                 /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#                 REG_WRITE32(EMIOS_CSR_ADDR32(u8MasterModule, u8MasterChannel), EMIOS_CSR_CLEAR_U32);
	.d2line		1445
	diab.li		r5,-1
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	lwzx		r3,r3,r6		# u8ModuleIdx=r3 u8ModuleIdx=r3
	se_add		r4,r3		# u8MasterChannel=r4 u8MasterChannel=r4 u8ModuleIdx=r3
	stw		r5,48(r4)		# u8MasterChannel=r4
#                 u8MasterBusUse[u8MasterBusIdx] = (uint8)1U;
	.d2line		1446
	diab.li		r4,1		# u8MasterChannel=r4
	diab.addi		r3,r1,8		# u8ModuleIdx=r3
	rlwinm		r0,r0,0,24,31		# u8MasterBusIdx=r0 u8MasterBusIdx=r0
.Llo363:
	stbux		r4,r3,r0		# u8ModuleIdx=r3 u8MasterChannel=r4
# #ifdef EMIOS_UCDIS_AVAILABLE
# #if (EMIOS_UCDIS_AVAILABLE == STD_ON)
#     /* Disable eMIOS Channel */
#     eMios_StopChannel(u8MasterBusIdx);
	.d2line		1450
	mr		r3,r0		# u8MasterBusIdx=r3
.Llo340:
	bl		eMios_StopChannel
.L616:
# #endif
# #endif  /* EMIOS_UCDIS_AVAILABLE */
#             }
#         }
#     }
	.d2line		1455
.Llo335:
	diab.addi		r0,r28,1		# nMeasMode=r0 nCounter=r28
	se_addi		r28,1		# nCounter=r28 nCounter=r28
	b		.L609
.L605:
# }
	.d2line		1456
	.d2epilogue_begin
.Llo327:
	lmw		r26,88(r1)		# offset r1+88  0x58
	.d2_cfa_restore_list	2,10
	lwz		r0,116(r1)		# u8MasterBusIdx=r0
	mtspr		lr,r0		# u8MasterBusIdx=lr
	diab.addi		r1,r1,112		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L940:
	.type		Icu_eMios_DeInit,@function
	.size		Icu_eMios_DeInit,.-Icu_eMios_DeInit
# Number of nodes = 331

# Allocations for Icu_eMios_DeInit
#	?a4		peMiosIpConfig
#	?a5		$$131
#	?a6		peMiosChannelConfig
#	?a7		nCtrlRegVal
#	?a8		nCounter
#	?a9		u8ModuleIdx
#	?a10		u8ChannelIdx
#	?a11		nMeasMode
#	?a12		u8MasterModule
#	?a13		u8MasterChannel
#	?a14		u8MasterBusIdx
#	SP,8		u8MasterBusUse
# FUNC(void, ICU_CODE) Icu_eMios_SetSleepMode
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1473,22
#$$ld
.L968:

#$$bf	Icu_eMios_SetSleepMode,interprocedural,rasave,nostackparams
	.globl		Icu_eMios_SetSleepMode
	.d2_cfa_start __cie
Icu_eMios_SetSleepMode:
.Llo364:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# nHwChannel=r4 nHwChannel=r3
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType, AUTOMATIC) nHwChannel
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
	.d2line		1478
	rlwinm		r3,r3,27,29,31		# nHwChannel=r3 nHwChannel=r3
.Llo365:
	mr		r3,r3		# u8ModuleIdx=r3 u8ModuleIdx=r3
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
	.d2line		1479
.Llo366:
	rlwinm		r4,r4,0,27,31		# nHwChannel=r4 nHwChannel=r4
.Llo367:
	mr		r4,r4		# u8ChannelIdx=r4 u8ChannelIdx=r4
# 
#     /* Stop eMIOS channel */
#     Icu_eMios_DisableInterrupt(u8ModuleIdx, u8ChannelIdx);
	.d2line		1482
	mr		r3,r3		# u8ModuleIdx=r3 u8ModuleIdx=r3
.Llo368:
	mr		r4,r4		# u8ChannelIdx=r4 u8ChannelIdx=r4
.Llo369:
	bl		Icu_eMios_DisableInterrupt
# }
	.d2line		1483
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
.L969:
	.type		Icu_eMios_SetSleepMode,@function
	.size		Icu_eMios_SetSleepMode,.-Icu_eMios_SetSleepMode
# Number of nodes = 24

# Allocations for Icu_eMios_SetSleepMode
#	?a4		nHwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
# FUNC(void, ICU_CODE) Icu_eMios_SetNormalMode
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1494,22
#$$ld
.L978:

#$$bf	Icu_eMios_SetNormalMode,interprocedural,rasave,nostackparams
	.globl		Icu_eMios_SetNormalMode
	.d2_cfa_start __cie
Icu_eMios_SetNormalMode:
.Llo370:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo372:
	stw		r0,20(r1)		# u32Value_CCR_FEN=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nHwChannel=r3 nHwChannel=r3
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType, AUTOMATIC) nHwChannel
# )
# {
#     VAR(uint32, AUTOMATIC) u32Value_CCR_FEN;
#     
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
	.d2line		1501
	rlwinm		r5,r3,27,29,31		# u8ModuleIdx=r5 nHwChannel=r3
.Llo374:
	mr		r5,r5		# u8ModuleIdx=r5 u8ModuleIdx=r5
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
	.d2line		1502
	rlwinm		r4,r3,0,27,31		# u8ChannelIdx=r4 nHwChannel=r3
.Llo376:
	mr		r4,r4		# u8ChannelIdx=r4 u8ChannelIdx=r4
# 
#     /* u32Value_CCR_FEN will indicate whether the interrupt is enabled or not*/
#     /** @violates @ref Icu_eMios_c_3 cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#      u32Value_CCR_FEN  = REG_BIT_GET32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), CCR_FEN_MASK_U32);
	.d2line		1507
	lis		r3,EMIOS_BASE_ADDR32@ha		# nHwChannel=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# nHwChannel=r3 nHwChannel=r3
	rlwinm		r0,r5,2,22,29		# u32Value_CCR_FEN=r0 u8ModuleIdx=r5
	lwzx		r0,r3,r0		# u32Value_CCR_FEN=r0 nHwChannel=r3
	rlwinm		r3,r4,5,19,26		# nHwChannel=r3 u8ChannelIdx=r4
	se_add		r3,r0		# nHwChannel=r3 nHwChannel=r3 u32Value_CCR_FEN=r0
	lwz		r0,44(r3)		# u32Value_CCR_FEN=r0 nHwChannel=r3
	rlwinm		r0,r0,0,14,14		# u32Value_CCR_FEN=r0 u32Value_CCR_FEN=r0
	.d2line		1509
	mr.		r0,r0		# u32Value_CCR_FEN=?a5 u32Value_CCR_FEN=?a13
#     /* if interrupt is not enabled*/
#     if(0U == u32Value_CCR_FEN)
.Llo373:
	bc		0,2,.L626	# ne
#     {
#         Icu_eMios_EnableInterrupt(u8ModuleIdx, u8ChannelIdx);
	.d2line		1511
.Llo371:
	mr		r3,r5		# u8ModuleIdx=r3 u8ModuleIdx=r5
.Llo377:
	mr		r4,r4		# u8ChannelIdx=r4 u8ChannelIdx=r4
.Llo378:
	bl		Icu_eMios_EnableInterrupt
.L626:
#     }
# }
	.d2line		1513
	.d2epilogue_begin
.Llo375:
	lwz		r0,20(r1)		# u32Value_CCR_FEN=r0
	mtspr		lr,r0		# u32Value_CCR_FEN=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L979:
	.type		Icu_eMios_SetNormalMode,@function
	.size		Icu_eMios_SetNormalMode,.-Icu_eMios_SetNormalMode
# Number of nodes = 47

# Allocations for Icu_eMios_SetNormalMode
#	?a4		nHwChannel
#	?a5		u32Value_CCR_FEN
#	?a6		u8ModuleIdx
#	?a7		u8ChannelIdx
# FUNC(void, ICU_CODE) Icu_eMios_EnableEdgeDetection
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1598,22
#$$ld
.L990:

#$$bf	Icu_eMios_EnableEdgeDetection,interprocedural,rasave,nostackparams
	.globl		Icu_eMios_EnableEdgeDetection
	.d2_cfa_start __cie
Icu_eMios_EnableEdgeDetection:
.Llo379:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# nHwChannel=r31 nHwChannel=r3
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType, AUTOMATIC) nHwChannel
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
	.d2line		1603
.Llo380:
	rlwinm		r29,r31,27,29,31		# nHwChannel=r31
.Llo381:
	mr		r29,r29		# u8ModuleIdx=r29 u8ModuleIdx=r29
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
	.d2line		1604
	rlwinm		r30,r31,0,27,31		# nHwChannel=r31
.Llo383:
	mr		r30,r30		# u8ChannelIdx=r30 u8ChannelIdx=r30
# 
#     /* Enter GPIO Mode */
#     Icu_eMios_UCSetMode(u8ModuleIdx, u8ChannelIdx, CCR_MODE_GPI_U32);
	.d2line		1607
	mr		r3,r29		# u8ModuleIdx=r3 u8ModuleIdx=r29
	mr		r4,r30		# u8ChannelIdx=r4 u8ChannelIdx=r30
	diab.li		r5,0
	bl		Icu_eMios_UCSetMode
# 
#     /* Enable SAIC mode */
#     Icu_eMios_UCSetMode(u8ModuleIdx, u8ChannelIdx, CCR_MODE_SAIC_U32);
	.d2line		1610
	mr		r3,r29		# u8ModuleIdx=r3 u8ModuleIdx=r29
	mr		r4,r30		# u8ChannelIdx=r4 u8ChannelIdx=r30
	diab.li		r5,2
	bl		Icu_eMios_UCSetMode
# 
#     /* Enable Interrupt */
#     Icu_eMios_EnableInterrupt(u8ModuleIdx, u8ChannelIdx);
	.d2line		1613
	mr		r3,r29		# u8ModuleIdx=r3 u8ModuleIdx=r29
	mr		r4,r30		# u8ChannelIdx=r4 u8ChannelIdx=r30
	bl		Icu_eMios_EnableInterrupt
# 
#     /* Set Channel Config */
#     Icu_eMios_SetChConfig
	.d2line		1616
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	diab.li		r4,16
	bl		Icu_eMios_SetChConfig
#     (
#         nHwChannel, \
#         (Icu_eMios_ChConfigType)((Icu_eMios_ChConfigType)EMIOS_CHANNEL_MODE_SIGNAL_EDGE_DETECT << ICU_EMIOS_MEAS_MODE_SHIFT)
#     );
# 
# }
	.d2line		1622
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo382:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L991:
	.type		Icu_eMios_EnableEdgeDetection,@function
	.size		Icu_eMios_EnableEdgeDetection,.-Icu_eMios_EnableEdgeDetection
# Number of nodes = 51

# Allocations for Icu_eMios_EnableEdgeDetection
#	?a4		nHwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
# FUNC(void, ICU_CODE) Icu_eMios_DisableEdgeDetection
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1636,22
#$$ld
.L1000:

#$$bf	Icu_eMios_DisableEdgeDetection,interprocedural,rasave,nostackparams
	.globl		Icu_eMios_DisableEdgeDetection
	.d2_cfa_start __cie
Icu_eMios_DisableEdgeDetection:
.Llo384:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# nHwChannel=r31 nHwChannel=r3
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType, AUTOMATIC) nHwChannel
# )
# {
# 
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
	.d2line		1642
.Llo385:
	rlwinm		r29,r31,27,29,31		# nHwChannel=r31
.Llo386:
	mr		r29,r29		# u8ModuleIdx=r29 u8ModuleIdx=r29
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
	.d2line		1643
	rlwinm		r30,r31,0,27,31		# nHwChannel=r31
.Llo388:
	mr		r30,r30		# u8ChannelIdx=r30 u8ChannelIdx=r30
# 
#     /* Disable interrupt */
#     Icu_eMios_DisableInterrupt(u8ModuleIdx, u8ChannelIdx);
	.d2line		1646
	mr		r3,r29		# u8ModuleIdx=r3 u8ModuleIdx=r29
	mr		r4,r30		# u8ChannelIdx=r4 u8ChannelIdx=r30
	bl		Icu_eMios_DisableInterrupt
# 
#     /* Enter GPIO Mode */
#     Icu_eMios_UCSetMode(u8ModuleIdx, u8ChannelIdx, CCR_MODE_GPI_U32);
	.d2line		1649
	mr		r3,r29		# u8ModuleIdx=r3 u8ModuleIdx=r29
	mr		r4,r30		# u8ChannelIdx=r4 u8ChannelIdx=r30
	diab.li		r5,0
	bl		Icu_eMios_UCSetMode
# 
#     /* Get Channel Config */
#     Icu_eMios_ClearChConfig
	.d2line		1652
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	diab.li		r4,16
	bl		Icu_eMios_ClearChConfig
#     (
#         nHwChannel, \
#         (Icu_eMios_ChConfigType)((Icu_eMios_ChConfigType)EMIOS_CHANNEL_MODE_SIGNAL_EDGE_DETECT << ICU_EMIOS_MEAS_MODE_SHIFT)
#     );
# 
# }
	.d2line		1658
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo387:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1001:
	.type		Icu_eMios_DisableEdgeDetection,@function
	.size		Icu_eMios_DisableEdgeDetection,.-Icu_eMios_DisableEdgeDetection
# Number of nodes = 41

# Allocations for Icu_eMios_DisableEdgeDetection
#	?a4		nHwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
# FUNC(void, ICU_CODE) Icu_eMios_StartTimestamp
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1676,22
#$$ld
.L1010:

#$$bf	Icu_eMios_StartTimestamp,interprocedural,rasave,nostackparams
	.globl		Icu_eMios_StartTimestamp
	.d2_cfa_start __cie
Icu_eMios_StartTimestamp:
.Llo389:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# nHwChannel=r31 nHwChannel=r3
.Llo390:
	mr		r30,r4		# bDmaSupport=r30 bDmaSupport=r4
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType,         AUTOMATIC)   nHwChannel,
#     CONST(boolean,                       AUTOMATIC)   bDmaSupport
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
	.d2line		1682
.Llo391:
	rlwinm		r29,r31,27,29,31		# u8ModuleIdx=r29 nHwChannel=r31
.Llo396:
	mr		r29,r29		# u8ModuleIdx=r29 u8ModuleIdx=r29
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
	.d2line		1683
	rlwinm		r28,r31,0,27,31		# u8ChannelIdx=r28 nHwChannel=r31
	mr		r28,r28		# u8ChannelIdx=r28 u8ChannelIdx=r28
# 
#     /* Reset aBufferPtr */
#     Icu_eMios_aBufferPtr[nHwChannel] = 0U;
	.d2line		1686
	diab.li		r5,0
	lis		r3,Icu_eMios_aBufferPtr@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,Icu_eMios_aBufferPtr@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r0,r31,2,22,29		# nHwChannel=r31
	stwx		r5,r3,r0		# u8ModuleIdx=r3
#     
#     /* Make sure channel is in GPIO mode before switching modes */
#     Icu_eMios_UCSetMode(u8ModuleIdx, u8ChannelIdx, CCR_MODE_GPI_U32);
	.d2line		1689
	mr		r3,r29		# u8ModuleIdx=r3 u8ModuleIdx=r29
	mr		r4,r28		# u8ChannelIdx=r4 u8ChannelIdx=r28
.Llo393:
	bl		Icu_eMios_UCSetMode
# 
#     /* Clear pending interrupts */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_WRITE32\
	.d2line		1694
	diab.li		r4,2147483648		# u8ChannelIdx=r4
	e_or2i		r4,32769		# u8ChannelIdx=r4
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r0,r29,2,22,29		# u8ModuleIdx=r29
	lwzx		r3,r3,r0		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r0,r28,5,19,26		# u8ChannelIdx=r28
	se_add		r3,r0		# u8ModuleIdx=r3 u8ModuleIdx=r3
	stw		r4,48(r3)		# u8ModuleIdx=r3 u8ChannelIdx=r4
#     (\
#         EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), \
#         (uint32)(CSR_OVR_MASK_U32 | CSR_OVFL_MASK_U32 | CSR_FLAG_MASK_U32)\
#     );
# 
#     /* Enable SAIC mode */
#     Icu_eMios_UCSetMode(u8ModuleIdx, u8ChannelIdx, CCR_MODE_SAIC_U32);
	.d2line		1701
	mr		r3,r29		# u8ModuleIdx=r3 u8ModuleIdx=r29
	mr		r4,r28		# u8ChannelIdx=r4 u8ChannelIdx=r28
	diab.li		r5,2
	bl		Icu_eMios_UCSetMode
# 
#     if((boolean)TRUE == bDmaSupport)
	.d2line		1703
.Llo394:
	rlwinm		r30,r30,0,24,31		# bDmaSupport=r30 bDmaSupport=r30
	se_cmpi		r30,1		# bDmaSupport=r30
	bc		0,2,.L641	# ne
#     {
#         SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_20();
	.d2line		1705
.Llo395:
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_20
#         /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#         /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         REG_RMW32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx),(CCR_DMA_MASK_U32),(CCR_DMA_MASK_U32));
	.d2line		1708
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r0,r29,2,22,29		# u8ModuleIdx=r29
	lwzux		r4,r3,r0		# u8ChannelIdx=r4 u8ModuleIdx=r3
	rlwinm		r5,r28,5,19,26		# u8ChannelIdx=r28
	add		r3,r4,r5		# u8ModuleIdx=r3 u8ChannelIdx=r4
	lwz		r4,44(r3)		# u8ChannelIdx=r4 u8ModuleIdx=r3
	.diab.bclri		r4,7		# u8ChannelIdx=r4
	.diab.bseti		r4,7		# u8ChannelIdx=r4
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	lwzx		r0,r3,r0		# u8ModuleIdx=r3
	se_add		r5,r0
	stw		r4,44(r5)		# u8ChannelIdx=r4
#         SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_20();
	.d2line		1709
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_20
#         /* Set channel Config*/
#         Icu_eMios_SetChConfig
	.d2line		1711
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	diab.li		r4,256		# u8ChannelIdx=r4
	bl		Icu_eMios_SetChConfig
	b		.L642
.L641:
#         (
#             nHwChannel,
#             (Icu_eMios_ChConfigType)((Icu_eMios_ChConfigType)EMIOS_CHANNEL_MODE_TIMESTAMP_WITH_DMA << ICU_EMIOS_MEAS_MODE_SHIFT)
#         );
#     }
#     else
#     {
#         /* Set channel Config*/
#         Icu_eMios_SetChConfig
	.d2line		1720
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	diab.li		r4,64		# u8ChannelIdx=r4
	bl		Icu_eMios_SetChConfig
.L642:
#         (
#             nHwChannel,
#             (Icu_eMios_ChConfigType)((Icu_eMios_ChConfigType)EMIOS_CHANNEL_MODE_TIMESTAMP_WITHOUT_DMA << ICU_EMIOS_MEAS_MODE_SHIFT)
#         );
#     }
#     
#     /* Enable Interrupt */
#     Icu_eMios_EnableInterrupt(u8ModuleIdx, u8ChannelIdx);
	.d2line		1728
.Llo392:
	mr		r3,r29		# u8ModuleIdx=r3 u8ModuleIdx=r29
	mr		r4,r28		# u8ChannelIdx=r4 u8ChannelIdx=r28
	bl		Icu_eMios_EnableInterrupt
# }
	.d2line		1729
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo397:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1011:
	.type		Icu_eMios_StartTimestamp,@function
	.size		Icu_eMios_StartTimestamp,.-Icu_eMios_StartTimestamp
# Number of nodes = 132

# Allocations for Icu_eMios_StartTimestamp
#	?a4		nHwChannel
#	?a5		bDmaSupport
#	?a6		u8ModuleIdx
#	?a7		u8ChannelIdx
# FUNC(void, ICU_CODE) Icu_eMios_StopTimestamp
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1745,22
#$$ld
.L1022:

#$$bf	Icu_eMios_StopTimestamp,interprocedural,rasave,nostackparams
	.globl		Icu_eMios_StopTimestamp
	.d2_cfa_start __cie
Icu_eMios_StopTimestamp:
.Llo398:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# nHwChannel=r31 nHwChannel=r3
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType, AUTOMATIC)   nHwChannel
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
	.d2line		1750
.Llo399:
	rlwinm		r29,r31,27,29,31		# nHwChannel=r31
.Llo400:
	mr		r29,r29		# u8ModuleIdx=r29 u8ModuleIdx=r29
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
	.d2line		1751
	rlwinm		r30,r31,0,27,31		# nHwChannel=r31
.Llo402:
	mr		r30,r30		# u8ChannelIdx=r30 u8ChannelIdx=r30
# 
#     /* Disable interrupt */
#     Icu_eMios_DisableInterrupt(u8ModuleIdx, u8ChannelIdx);
	.d2line		1754
	mr		r3,r29		# u8ModuleIdx=r3 u8ModuleIdx=r29
	mr		r4,r30		# u8ChannelIdx=r4 u8ChannelIdx=r30
	bl		Icu_eMios_DisableInterrupt
#     
#     /* Enter GPIO Mode */
#     Icu_eMios_UCSetMode(u8ModuleIdx, u8ChannelIdx, CCR_MODE_GPI_U32);
	.d2line		1757
	mr		r3,r29		# u8ModuleIdx=r3 u8ModuleIdx=r29
	mr		r4,r30		# u8ChannelIdx=r4 u8ChannelIdx=r30
	diab.li		r5,0
	bl		Icu_eMios_UCSetMode
# 
#     /* Clear channel Config */
#     Icu_eMios_ClearChConfig
	.d2line		1760
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	diab.li		r4,320
	bl		Icu_eMios_ClearChConfig
#     (
#         nHwChannel,
#         (Icu_eMios_ChConfigType)\
#         (
#             ((Icu_eMios_ChConfigType)EMIOS_CHANNEL_MODE_TIMESTAMP_WITHOUT_DMA | \
#             (Icu_eMios_ChConfigType)EMIOS_CHANNEL_MODE_TIMESTAMP_WITH_DMA) << ICU_EMIOS_MEAS_MODE_SHIFT
#         )
#     );
# }
	.d2line		1769
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo401:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1023:
	.type		Icu_eMios_StopTimestamp,@function
	.size		Icu_eMios_StopTimestamp,.-Icu_eMios_StopTimestamp
# Number of nodes = 41

# Allocations for Icu_eMios_StopTimestamp
#	?a4		nHwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
# FUNC(void, ICU_CODE) Icu_eMios_ResetEdgeCount
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1810,22
#$$ld
.L1032:

#$$bf	Icu_eMios_ResetEdgeCount,interprocedural,rasave,nostackparams
	.globl		Icu_eMios_ResetEdgeCount
	.d2_cfa_start __cie
Icu_eMios_ResetEdgeCount:
.Llo403:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# nHwChannel=r31 nHwChannel=r3
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType, AUTOMATIC) nHwChannel
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
	.d2line		1815
	rlwinm		r30,r31,27,29,31		# u8ModuleIdx=r30 nHwChannel=r31
.Llo407:
	mr		r30,r30		# u8ModuleIdx=r30 u8ModuleIdx=r30
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
	.d2line		1816
	rlwinm		r29,r31,0,27,31		# u8ChannelIdx=r29 nHwChannel=r31
.Llo409:
	mr		r29,r29		# u8ChannelIdx=r29 u8ChannelIdx=r29
#     VAR(uint32, AUTOMATIC)  u32PrevMode;
# 
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     u32PrevMode = REG_BIT_GET32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), CCR_MODE_MASK_U32);
	.d2line		1821
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
.Llo404:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r5,r30,2,22,29		# u8ModuleIdx=r30
	lwzx		r3,r3,r5		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r4,r29,5,19,26		# u8ChannelIdx=r4 u8ChannelIdx=r29
	se_add		r3,r4		# u8ModuleIdx=r3 u8ModuleIdx=r3 u8ChannelIdx=r4
	lwz		r28,44(r3)		# u8ModuleIdx=r3
	rlwinm		r28,r28,0,25,31
.Llo410:
	mr		r28,r28		# u32PrevMode=r28 u32PrevMode=r28
# 
#     /* Disable timer interrupts */
#     Icu_eMios_DisableInterrupt(u8ModuleIdx, u8ChannelIdx);
	.d2line		1824
	mr		r3,r30		# u8ModuleIdx=r3 u8ModuleIdx=r30
	mr		r4,r29		# u8ChannelIdx=r4 u8ChannelIdx=r29
	bl		Icu_eMios_DisableInterrupt
# 
#     /* Enter GPIO Mode */
#     Icu_eMios_UCSetMode(u8ModuleIdx, u8ChannelIdx, CCR_MODE_GPI_U32);
	.d2line		1827
	mr		r3,r30		# u8ModuleIdx=r3 u8ModuleIdx=r30
	mr		r4,r29		# u8ChannelIdx=r4 u8ChannelIdx=r29
	diab.li		r5,0
	bl		Icu_eMios_UCSetMode
# 
#     /* Reset counter */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_WRITE32(EMIOS_CCNTR_ADDR32(u8ModuleIdx, (uint32)u8ChannelIdx), EMIOS_INIT_CCNTR_U32);
	.d2line		1832
	diab.li		r0,0
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r5,r30,2,22,29		# u8ModuleIdx=r30
	lwzux		r6,r3,r5		# u8ModuleIdx=r3
	rlwinm		r4,r29,5,19,26		# u8ChannelIdx=r4 u8ChannelIdx=r29
	add		r3,r6,r4		# u8ModuleIdx=r3 u8ChannelIdx=r4
	stw		r0,40(r3)		# u8ModuleIdx=r3
# 
#     /* Max. value for register A. If reached, overflow interrupt */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_WRITE32(EMIOS_CADR_ADDR32(u8ModuleIdx, (uint32)u8ChannelIdx), EMIOS_INIT_CADR_U32);
	.d2line		1837
	diab.li		r0,16777215
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	lwzux		r6,r3,r5		# u8ModuleIdx=r3
	add		r3,r6,r4		# u8ModuleIdx=r3 u8ChannelIdx=r4
	stw		r0,32(r3)		# u8ModuleIdx=r3
# 
#     /* Clear pending interrupts */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_WRITE32\
	.d2line		1842
	diab.li		r0,2147483648
	e_or2i		r0,32769
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	lwzx		r3,r3,r5		# u8ModuleIdx=r3 u8ModuleIdx=r3
	se_add		r4,r3		# u8ChannelIdx=r4 u8ChannelIdx=r4 u8ModuleIdx=r3
	stw		r0,48(r4)		# u8ChannelIdx=r4
#     (\
#         EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), \
#         (uint32)(CSR_OVR_MASK_U32 | CSR_OVFL_MASK_U32 | CSR_FLAG_MASK_U32)\
#     );
# 
#     /* Restore previous mode */
#     Icu_eMios_UCSetMode(u8ModuleIdx, u8ChannelIdx, u32PrevMode);
	.d2line		1849
	mr		r3,r30		# u8ModuleIdx=r3 u8ModuleIdx=r30
	mr		r4,r29		# u8ChannelIdx=r4 u8ChannelIdx=r29
	mr		r5,r28		# u32PrevMode=r5 u32PrevMode=r28
	bl		Icu_eMios_UCSetMode
# 
#     /* Cleare Current Value*/
#     Icu_aEdgeCurrent_Value[nHwChannel] = (uint32)0;
	.d2line		1852
	diab.li		r0,0
	lis		r3,Icu_aEdgeCurrent_Value@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,Icu_aEdgeCurrent_Value@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
.Llo405:
	rlwinm		r31,r31,2,22,29		# nHwChannel=r31 nHwChannel=r31
.Llo406:
	stwx		r0,r3,r31		# u8ModuleIdx=r3
#     /* Enable timer interrupts */
#     Icu_eMios_EnableInterrupt(u8ModuleIdx, u8ChannelIdx);
	.d2line		1854
	mr		r3,r30		# u8ModuleIdx=r3 u8ModuleIdx=r30
	mr		r4,r29		# u8ChannelIdx=r4 u8ChannelIdx=r29
	bl		Icu_eMios_EnableInterrupt
# }
	.d2line		1855
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo408:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1033:
	.type		Icu_eMios_ResetEdgeCount,@function
	.size		Icu_eMios_ResetEdgeCount,.-Icu_eMios_ResetEdgeCount
# Number of nodes = 136

# Allocations for Icu_eMios_ResetEdgeCount
#	?a4		nHwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
#	?a7		u32PrevMode
# FUNC(void, ICU_CODE) Icu_eMios_EnableEdgeCount
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1871,22
#$$ld
.L1044:

#$$bf	Icu_eMios_EnableEdgeCount,interprocedural,rasave,nostackparams
	.globl		Icu_eMios_EnableEdgeCount
	.d2_cfa_start __cie
Icu_eMios_EnableEdgeCount:
.Llo411:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# nHwChannel=r31 nHwChannel=r3
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType, AUTOMATIC) nHwChannel
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
	.d2line		1876
.Llo412:
	rlwinm		r30,r31,27,29,31		# u8ModuleIdx=r30 nHwChannel=r31
.Llo413:
	mr		r30,r30		# u8ModuleIdx=r30 u8ModuleIdx=r30
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
	.d2line		1877
	rlwinm		r29,r31,0,27,31		# u8ChannelIdx=r29 nHwChannel=r31
	mr		r29,r29		# u8ChannelIdx=r29 u8ChannelIdx=r29
# 
#     /* Make sure channel is in GPIO mode before switching modes */
#     Icu_eMios_UCSetMode(u8ModuleIdx, u8ChannelIdx, CCR_MODE_GPI_U32);
	.d2line		1880
	mr		r3,r30		# u8ModuleIdx=r3 u8ModuleIdx=r30
	mr		r4,r29		# u8ChannelIdx=r4 u8ChannelIdx=r29
	diab.li		r5,0
	bl		Icu_eMios_UCSetMode
# 
#     /* Clear A register */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_WRITE32(EMIOS_CADR_ADDR32(u8ModuleIdx, (uint32)u8ChannelIdx), EMIOS_CADR_CLEAR_U32);
	.d2line		1885
	diab.li		r0,0
	lis		r4,EMIOS_BASE_ADDR32@ha		# u8ChannelIdx=r4
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l		# u8ChannelIdx=r4 u8ChannelIdx=r4
	rlwinm		r5,r30,2,22,29		# u8ModuleIdx=r30
	lwzx		r3,r4,r5		# u8ModuleIdx=r3 u8ChannelIdx=r4
	rlwinm		r6,r29,5,19,26		# u8ChannelIdx=r29
	se_add		r3,r6		# u8ModuleIdx=r3 u8ModuleIdx=r3
	stw		r0,32(r3)		# u8ModuleIdx=r3
# 
#     /* Sync. eMIOS counter value. (Needed in case of stopping and re-enabling counting)
#      * Note: Setting GPIO mode, the internal counter was cleared and must be restored
#      */
# 
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     /* When call again affter call Icu_eMios_DisableEdgeCount*/
#     REG_WRITE32(EMIOS_CCNTR_ADDR32(u8ModuleIdx, (uint32)u8ChannelIdx), Icu_aEdgeCurrent_Value[nHwChannel]);
	.d2line		1894
	lis		r3,Icu_aEdgeCurrent_Value@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,Icu_aEdgeCurrent_Value@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r0,r31,2,22,29		# nHwChannel=r31
	se_add		r0,r3		# u8ModuleIdx=r3
	lwzx		r0,r0,r0
	mr		r3,r4		# u8ChannelIdx=r3
	lwzux		r7,r3,r5		# u8ChannelIdx=r3
	add		r3,r7,r6		# u8ChannelIdx=r3
	stw		r0,40(r3)		# u8ChannelIdx=r3
# 
#     /* Clear pending interrupts */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_WRITE32\
	.d2line		1899
	diab.li		r0,2147483648
	e_or2i		r0,32769
	lwzx		r3,r4,r5		# u8ChannelIdx=r3 u8ChannelIdx=r4
	se_add		r6,r3		# u8ChannelIdx=r3
	stw		r0,48(r6)
#     (\
#         EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx),\
#         (uint32)(CSR_OVR_MASK_U32 | CSR_OVFL_MASK_U32 | CSR_FLAG_MASK_U32)\
#     );
# 
#     /* Modulus counter mode */
#     Icu_eMios_UCSetMode(u8ModuleIdx, u8ChannelIdx, CCR_MODE_MCB_EXT_CLOCK_U32);
	.d2line		1906
	mr		r3,r30		# u8ModuleIdx=r3 u8ModuleIdx=r30
	mr		r4,r29		# u8ChannelIdx=r4 u8ChannelIdx=r29
	diab.li		r5,81
	bl		Icu_eMios_UCSetMode
# 
#     /* Set Max. A value */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_WRITE32(EMIOS_CADR_ADDR32(u8ModuleIdx, (uint32)u8ChannelIdx), EMIOS_INIT_CADR_U32);
	.d2line		1911
	diab.li		r0,16777215
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r5,r30,2,22,29		# u8ModuleIdx=r30
	lwzx		r4,r3,r5		# u8ChannelIdx=r4 u8ModuleIdx=r3
	rlwinm		r3,r29,5,19,26		# u8ModuleIdx=r3 u8ChannelIdx=r29
	se_add		r3,r4		# u8ModuleIdx=r3 u8ModuleIdx=r3 u8ChannelIdx=r4
	stw		r0,32(r3)		# u8ModuleIdx=r3
# 
#     /* Enable interrupt */
#     Icu_eMios_EnableInterrupt(u8ModuleIdx, u8ChannelIdx);
	.d2line		1914
	mr		r3,r30		# u8ModuleIdx=r3 u8ModuleIdx=r30
	mr		r4,r29		# u8ChannelIdx=r4 u8ChannelIdx=r29
	bl		Icu_eMios_EnableInterrupt
# 
#     /* Set Channel config */
#     Icu_eMios_SetChConfig
	.d2line		1917
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	diab.li		r4,128		# u8ChannelIdx=r4
	bl		Icu_eMios_SetChConfig
#     (
#         nHwChannel,
#         (Icu_eMios_ChConfigType)((Icu_eMios_ChConfigType)EMIOS_CHANNEL_MODE_EDGE_COUNTER << ICU_EMIOS_MEAS_MODE_SHIFT)
#     );
# 
# 
# }
	.d2line		1924
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo414:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1045:
	.type		Icu_eMios_EnableEdgeCount,@function
	.size		Icu_eMios_EnableEdgeCount,.-Icu_eMios_EnableEdgeCount
# Number of nodes = 130

# Allocations for Icu_eMios_EnableEdgeCount
#	?a4		nHwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
# FUNC(void, ICU_CODE) Icu_eMios_DisableEdgeCount
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1942,22
#$$ld
.L1054:

#$$bf	Icu_eMios_DisableEdgeCount,interprocedural,rasave,nostackparams
	.globl		Icu_eMios_DisableEdgeCount
	.d2_cfa_start __cie
Icu_eMios_DisableEdgeCount:
.Llo415:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# nHwChannel=r31 nHwChannel=r3
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType, AUTOMATIC) nHwChannel
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
	.d2line		1947
.Llo416:
	rlwinm		r30,r31,27,29,31		# u8ModuleIdx=r30 nHwChannel=r31
.Llo417:
	mr		r30,r30		# u8ModuleIdx=r30 u8ModuleIdx=r30
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
	.d2line		1948
	rlwinm		r29,r31,0,27,31		# u8ChannelIdx=r29 nHwChannel=r31
	mr		r29,r29		# u8ChannelIdx=r29 u8ChannelIdx=r29
# 
#     /* Disable interrupt */
#     Icu_eMios_DisableInterrupt(u8ModuleIdx, u8ChannelIdx);
	.d2line		1951
	mr		r3,r30		# u8ModuleIdx=r3 u8ModuleIdx=r30
	mr		r4,r29		# u8ChannelIdx=r4 u8ChannelIdx=r29
	bl		Icu_eMios_DisableInterrupt
# 
#     /* Clear pending interrupts */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_WRITE32\
	.d2line		1956
	diab.li		r0,2147483648
	e_or2i		r0,32769
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r4,r30,2,22,29		# u8ChannelIdx=r4 u8ModuleIdx=r30
	lwzux		r5,r3,r4		# u8ModuleIdx=r3
	rlwinm		r6,r29,5,19,26		# u8ChannelIdx=r29
	add		r3,r5,r6		# u8ModuleIdx=r3
	stw		r0,48(r3)		# u8ModuleIdx=r3
#     (\
#         EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), \
#         (uint32)(CSR_OVR_MASK_U32 | CSR_OVFL_MASK_U32 | CSR_FLAG_MASK_U32)\
#     );
# 
#     /* Save count, before going to GPIO mode (because counter is reset to 0x0000) */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     Icu_aEdgeCurrent_Value[nHwChannel] = REG_READ32(EMIOS_CCNTR_ADDR32(u8ModuleIdx, (uint32)u8ChannelIdx));
	.d2line		1965
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	lwzx		r0,r3,r4		# u8ModuleIdx=r3
	se_add		r6,r0
	lwz		r0,40(r6)
	lis		r3,Icu_aEdgeCurrent_Value@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,Icu_aEdgeCurrent_Value@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r4,r31,2,22,29		# u8ChannelIdx=r4 nHwChannel=r31
	stwx		r0,r3,r4		# u8ModuleIdx=r3
# 
#     /* Disable MCB mode */
#     Icu_eMios_UCSetMode(u8ModuleIdx, u8ChannelIdx, CCR_MODE_GPI_U32);
	.d2line		1968
	mr		r3,r30		# u8ModuleIdx=r3 u8ModuleIdx=r30
	mr		r4,r29		# u8ChannelIdx=r4 u8ChannelIdx=r29
	diab.li		r5,0
	bl		Icu_eMios_UCSetMode
# 
#     Icu_eMios_ClearChConfig
	.d2line		1970
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	diab.li		r4,128		# u8ChannelIdx=r4
	bl		Icu_eMios_ClearChConfig
#     (
#         nHwChannel, \
#         (Icu_eMios_ChConfigType)((Icu_eMios_ChConfigType)EMIOS_CHANNEL_MODE_EDGE_COUNTER << ICU_EMIOS_MEAS_MODE_SHIFT)
#     );
# }
	.d2line		1975
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo418:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1055:
	.type		Icu_eMios_DisableEdgeCount,@function
	.size		Icu_eMios_DisableEdgeCount,.-Icu_eMios_DisableEdgeCount
# Number of nodes = 84

# Allocations for Icu_eMios_DisableEdgeCount
#	?a4		nHwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
# FUNC (uint32, ICU_CODE) Icu_eMios_GetEdgeNumbers
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1990,25
#$$ld
.L1064:

#$$bf	Icu_eMios_GetEdgeNumbers,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.globl		Icu_eMios_GetEdgeNumbers
	.d2_cfa_start __cie
Icu_eMios_GetEdgeNumbers:
.Llo419:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# nHwChannel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# nHwChannel=r0 nHwChannel=r3
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType, AUTOMATIC) nHwChannel
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
#     VAR(uint32, AUTOMATIC) u32Mode;
#     VAR(uint32, AUTOMATIC) u32Result = (uint32)0;
	.d2line		1998
.Llo420:
	diab.li		r3,0		# u32Result=r3
	.d2line		1995
.Llo421:
	rlwinm		r4,r0,27,29,31		# u8ModuleIdx=r4 nHwChannel=r0
.Llo427:
	mr		r4,r4		# u8ModuleIdx=r4 u8ModuleIdx=r4
	.d2line		1996
	rlwinm		r6,r0,0,27,31		# u8ChannelIdx=r6 nHwChannel=r0
.Llo431:
	mr		r6,r6		# u8ChannelIdx=r6 u8ChannelIdx=r6
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     u32Mode = (REG_READ32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx)) & CCR_MODE_MASK_U32);
	.d2line		2001
	lis		r3,EMIOS_BASE_ADDR32@ha		# u32Result=r3
.Llo438:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u32Result=r3 u32Result=r3
	rlwinm		r5,r4,2,22,29		# u8ModuleIdx=r4
	lwzx		r3,r3,r5		# u32Result=r3 u32Result=r3
	rlwinm		r5,r6,5,19,26		# u8ChannelIdx=r6
	se_add		r3,r5		# u32Result=r3 u32Result=r3
	lwz		r3,44(r3)		# u32Result=r3 u32Result=r3
	rlwinm		r3,r3,0,25,31		# u32Result=r3 u32Result=r3
	.d2line		2004
.Llo432:
	mr.		r3,r3		# u32Mode=?a7 u32Mode=?a14
# 
#     /* Check mode affter call Icu_eMios_DisableEdgeCount */
#     if(CCR_MODE_GPI_U32 == u32Mode)
.Llo433:
	bc		0,2,.L650	# ne
#     {
#         u32Result = Icu_aEdgeCurrent_Value[nHwChannel];
	.d2line		2006
.Llo422:
	lis		r3,Icu_aEdgeCurrent_Value@ha		# u32Mode=r3
.Llo434:
	e_add16i		r3,r3,Icu_aEdgeCurrent_Value@l		# u32Mode=r3 u32Mode=r3
.Llo423:
	rlwinm		r0,r0,2,22,29		# nHwChannel=r0 nHwChannel=r0
.Llo424:
	lwzx		r3,r3,r0		# u32Mode=r3 u32Mode=r3
.Llo435:
	mr		r3,r3		# u32Result=r3 u32Result=r3
	b		.L651
.L650:
#     }
#     else
#     {
#         /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#         /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         u32Result = REG_READ32(EMIOS_CCNTR_ADDR32(u8ModuleIdx, (uint32)u8ChannelIdx));
	.d2line		2012
.Llo428:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u32Mode=r3
.Llo436:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u32Mode=r3 u32Mode=r3
.Llo429:
	rlwinm		r4,r4,2,22,29		# u8ModuleIdx=r4 u8ModuleIdx=r4
.Llo430:
	lwzx		r0,r3,r4		# nHwChannel=r0 u32Mode=r3
.Llo425:
	rlwinm		r6,r6,5,19,26		# u8ChannelIdx=r6 u8ChannelIdx=r6
	se_add		r6,r0		# u8ChannelIdx=r6 u8ChannelIdx=r6 nHwChannel=r0
	lwz		r3,40(r6)		# u32Mode=r3 u8ChannelIdx=r6
.Llo437:
	mr		r3,r3		# u32Result=r3 u32Result=r3
.L651:
#     }
#     return u32Result;
	.d2line		2014
.Llo426:
	mr		r3,r3		# u32Result=r3 u32Result=r3
# 
# }
	.d2line		2016
	.d2epilogue_begin
.Llo439:
	lwz		r0,20(r1)		# nHwChannel=r0
	mtspr		lr,r0		# nHwChannel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1065:
	.type		Icu_eMios_GetEdgeNumbers,@function
	.size		Icu_eMios_GetEdgeNumbers,.-Icu_eMios_GetEdgeNumbers
# Number of nodes = 73

# Allocations for Icu_eMios_GetEdgeNumbers
#	?a4		nHwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
#	?a7		u32Mode
#	?a8		u32Result
# FUNC(void, ICU_CODE) Icu_eMios_StartSignalMeasurement
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2036,22
#$$ld
.L1078:

#$$bf	Icu_eMios_StartSignalMeasurement,interprocedural,rasave,nostackparams
	.globl		Icu_eMios_StartSignalMeasurement
	.d2_cfa_start __cie
Icu_eMios_StartSignalMeasurement:
.Llo440:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	25,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# nHwChannel=r31 nHwChannel=r3
.Llo441:
	mr		r30,r4		# Activation=r30 Activation=r4
.Llo442:
	mr		r29,r5		# nMeasProperty=r29 nMeasProperty=r5
.Llo444:
	mr		r28,r6		# bDmaSupport=r28 bDmaSupport=r6
	mr		r27,r7		# bWithoutInterrupt=r27 bWithoutInterrupt=r7
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType,                    AUTOMATIC) nHwChannel,
#     CONST(Icu_eMios_ActivationType,                 AUTOMATIC) Activation,
#     CONST(Icu_eMios_SignalMeasurementPropertyType,  AUTOMATIC) nMeasProperty,
#     CONST(boolean,                                  AUTOMATIC) bDmaSupport,
#     CONST(boolean,                                  AUTOMATIC) bWithoutInterrupt
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
	.d2line		2045
	rlwinm		r26,r31,27,29,31		# nHwChannel=r31
.Llo451:
	mr		r26,r26		# u8ModuleIdx=r26 u8ModuleIdx=r26
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
	.d2line		2046
	rlwinm		r25,r31,0,27,31		# nHwChannel=r31
.Llo453:
	mr		r25,r25		# u8ChannelIdx=r25 u8ChannelIdx=r25
#     VAR(Icu_eMios_OperationMode, AUTOMATIC) eMiosOperationMode;
# 
#     /* Reset capture and timestart of nHwChannel */
#     Icu_CapturedActivePulseWidth[nHwChannel] = 0U;
	.d2line		2050
	diab.li		r0,0
	lis		r3,Icu_CapturedActivePulseWidth@ha		# nHwChannel=r3
	e_add16i		r3,r3,Icu_CapturedActivePulseWidth@l		# nHwChannel=r3 nHwChannel=r3
	rlwinm		r4,r31,2,22,29		# nHwChannel=r31
	stwx		r0,r3,r4		# nHwChannel=r3
#     Icu_TimeStart[nHwChannel] = 0U;
	.d2line		2051
	lis		r3,Icu_TimeStart@ha		# nHwChannel=r3
	e_add16i		r3,r3,Icu_TimeStart@l		# nHwChannel=r3 nHwChannel=r3
	stwx		r0,r3,r4		# nHwChannel=r3
#     
#     /* Disable interrupt */
#     Icu_eMios_DisableInterrupt(u8ModuleIdx, u8ChannelIdx);
	.d2line		2054
	mr		r3,r26		# u8ModuleIdx=r3 u8ModuleIdx=r26
	mr		r4,r25		# u8ChannelIdx=r4 u8ChannelIdx=r25
	bl		Icu_eMios_DisableInterrupt
# 
#     /* Enter GPIO Mode */
#     Icu_eMios_UCSetMode(u8ModuleIdx, u8ChannelIdx, CCR_MODE_GPI_U32);
	.d2line		2057
.Llo446:
	mr		r3,r26		# u8ModuleIdx=r3 u8ModuleIdx=r26
	mr		r4,r25		# u8ChannelIdx=r4 u8ChannelIdx=r25
	diab.li		r5,0
	bl		Icu_eMios_UCSetMode
# 
#     /* Set activation condition */
#     Icu_eMios_SetActivationCondition(nHwChannel, Activation);
	.d2line		2060
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	mr		r4,r30		# Activation=r4 Activation=r30
	bl		Icu_eMios_SetActivationCondition
# 
#     /* Get operation mode of hardware channel */
#     if((boolean)TRUE == bDmaSupport)
	.d2line		2063
.Llo447:
	rlwinm		r28,r28,0,24,31		# bDmaSupport=r28 bDmaSupport=r28
	se_cmpi		r28,1		# bDmaSupport=r28
	bc		0,2,.L655	# ne
#     {
#         SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_21();
	.d2line		2065
.Llo445:
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_21
#         /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#         /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         REG_RMW32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx),(CCR_DMA_MASK_U32),(CCR_DMA_MASK_U32));
	.d2line		2068
	lis		r3,EMIOS_BASE_ADDR32@ha		# nHwChannel=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# nHwChannel=r3 nHwChannel=r3
	rlwinm		r0,r26,2,22,29		# u8ModuleIdx=r26
	lwzux		r4,r3,r0		# nHwChannel=r3
	rlwinm		r5,r25,5,19,26		# u8ChannelIdx=r25
	add		r3,r4,r5		# nHwChannel=r3
	lwz		r4,44(r3)		# nHwChannel=r3
	.diab.bclri		r4,7
	.diab.bseti		r4,7
	lis		r3,EMIOS_BASE_ADDR32@ha		# nHwChannel=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# nHwChannel=r3 nHwChannel=r3
	lwzx		r0,r3,r0		# nHwChannel=r3
	se_add		r5,r0
	stw		r4,44(r5)
#         SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_21();
	.d2line		2069
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_21
.L655:
#     }
#    
#     eMiosOperationMode = (Icu_eMios_OperationMode) \
	.d2line		2072
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	diab.li		r4,15360
	bl		Icu_eMios_GetChConfig
	se_srwi		r3,10		# nHwChannel=r3 nHwChannel=r3
.Llo454:
	mr		r3,r3		# eMiosOperationMode=r3 eMiosOperationMode=r3
#         (
#             Icu_eMios_GetChConfig(nHwChannel, ICU_EMIOS_OPERATION_MODE_MASK) >> ICU_EMIOS_OPERATION_MODE_SHIFT
#         );
#         
#     if (EMIOS_UC_IPWM_MODE == eMiosOperationMode)
	.d2line		2077
	se_cmpi		r3,4		# eMiosOperationMode=r3
	bc		0,2,.L656	# ne
#     {
#         /* Enable IPWM mode */
#         Icu_eMios_UCSetMode(u8ModuleIdx, u8ChannelIdx, CCR_MODE_IPWM_U32);
	.d2line		2080
.Llo455:
	mr		r3,r26		# u8ModuleIdx=r3 u8ModuleIdx=r26
	mr		r4,r25		# u8ChannelIdx=r4 u8ChannelIdx=r25
	diab.li		r5,4
	bl		Icu_eMios_UCSetMode
	b		.L657
.L656:
#     }
#     else if (EMIOS_UC_IPM_MODE == eMiosOperationMode)
	.d2line		2082
.Llo456:
	se_cmpi		r3,3		# eMiosOperationMode=r3
	bc		0,2,.L658	# ne
#     {
#         /* Enable IPM mode */
#         Icu_eMios_UCSetMode(u8ModuleIdx, u8ChannelIdx, CCR_MODE_IPM_U32);
	.d2line		2085
.Llo457:
	mr		r3,r26		# u8ModuleIdx=r3 u8ModuleIdx=r26
	mr		r4,r25		# u8ChannelIdx=r4 u8ChannelIdx=r25
	diab.li		r5,5
	bl		Icu_eMios_UCSetMode
	b		.L657
.L658:
#     }
#     else
#     {
#         /* Enable SAIC mode */
#         Icu_eMios_UCSetMode(u8ModuleIdx, u8ChannelIdx, CCR_MODE_SAIC_U32);
	.d2line		2090
	mr		r3,r26		# u8ModuleIdx=r3 u8ModuleIdx=r26
	mr		r4,r25		# u8ChannelIdx=r4 u8ChannelIdx=r25
	diab.li		r5,2
	bl		Icu_eMios_UCSetMode
.L657:
#     }
# 
#     /* Clear pending interrupt flag (and other flags) for the channel */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_WRITE32\
	.d2line		2096
.Llo448:
	diab.li		r0,2147483648
	e_or2i		r0,32769
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r4,r26,2,22,29		# u8ChannelIdx=r4 u8ModuleIdx=r26
	lwzx		r4,r3,r4		# u8ChannelIdx=r4 u8ModuleIdx=r3
	rlwinm		r3,r25,5,19,26		# u8ModuleIdx=r3 u8ChannelIdx=r25
	se_add		r3,r4		# u8ModuleIdx=r3 u8ModuleIdx=r3 u8ChannelIdx=r4
	stw		r0,48(r3)		# u8ModuleIdx=r3
#     (\
#         EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), \
#         (uint32)(CSR_OVR_MASK_U32 | CSR_OVFL_MASK_U32 | CSR_FLAG_MASK_U32)\
#     );
#     /* Clear the counter for signal measurement */
#     Icu_aInt_Counter[nHwChannel] = (Icu_ValueType)0;
	.d2line		2102
	diab.li		r0,0
	lis		r3,Icu_aInt_Counter@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,Icu_aInt_Counter@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r4,r31,2,22,29		# u8ChannelIdx=r4 nHwChannel=r31
	stwx		r0,r3,r4		# u8ModuleIdx=r3
#     if ((boolean)TRUE != bWithoutInterrupt)
	.d2line		2103
.Llo449:
	rlwinm		r27,r27,0,24,31		# bWithoutInterrupt=r27 bWithoutInterrupt=r27
	se_cmpi		r27,1		# bWithoutInterrupt=r27
	bc		1,2,.L660	# eq
#     {
#         /* Enable Interrupt */
#         Icu_eMios_EnableInterrupt(u8ModuleIdx, u8ChannelIdx);
	.d2line		2106
.Llo450:
	mr		r3,r26		# u8ModuleIdx=r3 u8ModuleIdx=r26
	mr		r4,r25		# u8ChannelIdx=r4 u8ChannelIdx=r25
	bl		Icu_eMios_EnableInterrupt
.L660:
#     }
# 
#     /* Set channel config */
#     Icu_eMios_SetChConfig
	.d2line		2110
.Llo452:
	e_ori		r4,r29,32		# u8ChannelIdx=r4 nMeasProperty=r29
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	bl		Icu_eMios_SetChConfig
#     (
#         nHwChannel,
#         (Icu_eMios_ChConfigType)((Icu_eMios_ChConfigType)EMIOS_CHANNEL_MODE_SIGNAL_MEASUREMENT << ICU_EMIOS_MEAS_MODE_SHIFT) |
#         (Icu_eMios_ChConfigType)((Icu_eMios_ChConfigType)nMeasProperty << ICU_EMIOS_MEAS_PROPERTY_SHIFT)
#     );
# 
# }
	.d2line		2117
	.d2epilogue_begin
	lmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	2,10
.Llo443:
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1079:
	.type		Icu_eMios_StartSignalMeasurement,@function
	.size		Icu_eMios_StartSignalMeasurement,.-Icu_eMios_StartSignalMeasurement
# Number of nodes = 204

# Allocations for Icu_eMios_StartSignalMeasurement
#	?a4		nHwChannel
#	?a5		Activation
#	?a6		nMeasProperty
#	?a7		bDmaSupport
#	?a8		bWithoutInterrupt
#	?a9		u8ModuleIdx
#	?a10		u8ChannelIdx
#	?a11		eMiosOperationMode
# FUNC(void, ICU_CODE) Icu_eMios_StopSignalMeasurement
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2132,22
#$$ld
.L1095:

#$$bf	Icu_eMios_StopSignalMeasurement,interprocedural,rasave,nostackparams
	.globl		Icu_eMios_StopSignalMeasurement
	.d2_cfa_start __cie
Icu_eMios_StopSignalMeasurement:
.Llo458:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# nHwChannel=r31 nHwChannel=r3
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType, AUTOMATIC) nHwChannel
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
	.d2line		2137
.Llo459:
	rlwinm		r30,r31,27,29,31		# u8ModuleIdx=r30 nHwChannel=r31
.Llo460:
	mr		r30,r30		# u8ModuleIdx=r30 u8ModuleIdx=r30
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
	.d2line		2138
	rlwinm		r29,r31,0,27,31		# u8ChannelIdx=r29 nHwChannel=r31
	mr		r29,r29		# u8ChannelIdx=r29 u8ChannelIdx=r29
# 
#     /* Disable interrupt */
#     Icu_eMios_DisableInterrupt(u8ModuleIdx, u8ChannelIdx);
	.d2line		2141
	mr		r3,r30		# u8ModuleIdx=r3 u8ModuleIdx=r30
	mr		r4,r29		# u8ChannelIdx=r4 u8ChannelIdx=r29
	bl		Icu_eMios_DisableInterrupt
#     
#     /* Enter GPIO Mode */
#     Icu_eMios_UCSetMode(u8ModuleIdx, u8ChannelIdx, CCR_MODE_GPI_U32);
	.d2line		2144
	mr		r3,r30		# u8ModuleIdx=r3 u8ModuleIdx=r30
	mr		r4,r29		# u8ChannelIdx=r4 u8ChannelIdx=r29
	diab.li		r5,0
	bl		Icu_eMios_UCSetMode
#     
#     SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_18();
	.d2line		2146
	bl		SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_18
#     /* EDSEL is set to 1 to discard the input in GPIO mode (not to repond the input signal
#        in GPIO mode)*/
#     /* Disables the flag generation as defined by EDPOL Bit */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_BIT_SET32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), CCR_EDSEL_MASK_U32);
	.d2line		2152
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r0,r30,2,22,29		# u8ModuleIdx=r30
	lwzx		r3,r3,r0		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r4,r29,5,19,26		# u8ChannelIdx=r4 u8ChannelIdx=r29
	se_add		r3,r4		# u8ModuleIdx=r3 u8ModuleIdx=r3 u8ChannelIdx=r4
	lwz		r0,44(r3)		# u8ModuleIdx=r3
	.diab.bseti		r0,23
	stw		r0,44(r3)		# u8ModuleIdx=r3
#     SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_18();
	.d2line		2153
	bl		SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_18
#     
#     /* Clear pending interrupt flag (and other flags) for the channel */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_WRITE32\
	.d2line		2158
	diab.li		r0,2147483648
	e_or2i		r0,32769
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8ModuleIdx=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8ModuleIdx=r3 u8ModuleIdx=r3
	rlwinm		r30,r30,2,22,29		# u8ModuleIdx=r30 u8ModuleIdx=r30
.Llo462:
	lwzx		r3,r3,r30		# u8ModuleIdx=r3 u8ModuleIdx=r3
.Llo463:
	rlwinm		r29,r29,5,19,26		# u8ChannelIdx=r29 u8ChannelIdx=r29
	se_add		r29,r3		# u8ChannelIdx=r29 u8ChannelIdx=r29 u8ModuleIdx=r3
	stw		r0,48(r29)		# u8ChannelIdx=r29
#     (\
#         EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), \
#         (uint32)(CSR_OVR_MASK_U32 | CSR_OVFL_MASK_U32 | CSR_FLAG_MASK_U32)\
#     );
#     /* Clear channel config */
#     Icu_eMios_ClearChConfig
	.d2line		2164
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
.Llo464:
	diab.li		r4,47		# u8ChannelIdx=r4
	bl		Icu_eMios_ClearChConfig
#     (
#         nHwChannel,
#         (Icu_eMios_ChConfigType)\
#             ((Icu_eMios_ChConfigType)EMIOS_CHANNEL_MODE_SIGNAL_MEASUREMENT << ICU_EMIOS_MEAS_MODE_SHIFT) | \
#                 ICU_EMIOS_MEAS_PROPERTY_MASK
#     );
# }
	.d2line		2171
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo461:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1096:
	.type		Icu_eMios_StopSignalMeasurement,@function
	.size		Icu_eMios_StopSignalMeasurement,.-Icu_eMios_StopSignalMeasurement
# Number of nodes = 81

# Allocations for Icu_eMios_StopSignalMeasurement
#	?a4		nHwChannel
#	?a5		$$129
#	?a6		u8ModuleIdx
#	?a7		u8ChannelIdx
# FUNC (boolean, ICU_CODE) Icu_eMios_GetInputState
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2191,26
#$$ld
.L1105:

#$$bf	Icu_eMios_GetInputState,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.globl		Icu_eMios_GetInputState
	.d2_cfa_start __cie
Icu_eMios_GetInputState:
.Llo465:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo469:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# u8ModuleIdx=r0
	.d2_cfa_offset    108,-1
	mr		r5,r3		# nHwChannel=r5 nHwChannel=r3
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType, AUTOMATIC) nHwChannel
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
#     VAR(boolean, AUTOMATIC) bResult = (boolean)FALSE;
	.d2line		2198
.Llo466:
	diab.li		r3,0		# bResult=r3
	.d2line		2196
.Llo467:
	rlwinm		r0,r5,27,29,31		# u8ModuleIdx=r0 nHwChannel=r5
	mr		r0,r0		# u8ModuleIdx=r0 u8ModuleIdx=r0
	.d2line		2197
	rlwinm		r5,r5,0,27,31		# nHwChannel=r5 nHwChannel=r5
.Llo468:
	mr		r5,r5		# u8ChannelIdx=r5 u8ChannelIdx=r5
#     VAR(uint32, AUTOMATIC) u32ValueCCRFEN;
#     VAR(uint32, AUTOMATIC) u32ValueCSRFLAG;
#     
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     u32ValueCCRFEN  = REG_BIT_GET32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx), CCR_FEN_MASK_U32);
	.d2line		2204
	lis		r4,EMIOS_BASE_ADDR32@ha
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l
	rlwinm		r6,r0,2,22,29		# u8ModuleIdx=r0
	lwzux		r7,r4,r6		# u32ValueCCRFEN=r7
.Llo475:
	rlwinm		r31,r5,5,19,26		# u8ChannelIdx=r5
	add		r4,r7,r31		# u32ValueCCRFEN=r7
	lwz		r7,44(r4)		# u32ValueCCRFEN=r7
	rlwinm		r7,r7,0,14,14		# u32ValueCCRFEN=r7 u32ValueCCRFEN=r7
	mr		r7,r7		# u32ValueCCRFEN=r7 u32ValueCCRFEN=r7
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     u32ValueCSRFLAG = REG_BIT_GET32(EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), CSR_FLAG_MASK_U32);
	.d2line		2207
	lis		r4,EMIOS_BASE_ADDR32@ha
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l
	lwzx		r4,r4,r6
	se_add		r31,r4
	lwz		r4,48(r31)
	rlwinm		r4,r4,0,31,31
.Llo477:
	mr		r4,r4		# u32ValueCSRFLAG=r4 u32ValueCSRFLAG=r4
# 
#     /* Interrupt not enabled, flag bit was set */
#     if ( (CCR_FEN_MASK_U32 != u32ValueCCRFEN) && (CSR_FLAG_MASK_U32 == u32ValueCSRFLAG))
	.d2line		2210
	diab.li		r6,131072
	se_cmpl		r7,r6		# u32ValueCCRFEN=r7
	bc		1,2,.L668	# eq
.Llo476:
	se_cmpi		r4,1		# u32ValueCSRFLAG=r4
	bc		0,2,.L668	# ne
#     {
# 
#         /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer  */
#         /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         /* Clear pending interrupt */
#         REG_WRITE32(EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), CSR_FLAG_MASK_U32);
	.d2line		2216
.Llo470:
	diab.li		r4,1		# u32ValueCSRFLAG=r4
.Llo478:
	lis		r3,EMIOS_BASE_ADDR32@ha		# bResult=r3
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# bResult=r3 bResult=r3
.Llo471:
	rlwinm		r0,r0,2,22,29		# u8ModuleIdx=r0 u8ModuleIdx=r0
	lwzx		r0,r3,r0		# u8ModuleIdx=r0 bResult=r3
.Llo473:
	rlwinm		r5,r5,5,19,26		# u8ChannelIdx=r5 u8ChannelIdx=r5
	se_add		r5,r0		# u8ChannelIdx=r5 u8ChannelIdx=r5 u8ModuleIdx=r0
	stw		r4,48(r5)		# u8ChannelIdx=r5 u32ValueCSRFLAG=r4
# 
#         bResult = (boolean)TRUE;
	.d2line		2218
	diab.li		r3,1		# bResult=r3
.L668:
#     }
# 
#     return bResult;
	.d2line		2221
.Llo472:
	rlwinm		r3,r3,0,24,31		# bResult=r3 bResult=r3
# }
	.d2line		2222
	.d2epilogue_begin
.Llo474:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u8ModuleIdx=r0
	mtspr		lr,r0		# u8ModuleIdx=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1106:
	.type		Icu_eMios_GetInputState,@function
	.size		Icu_eMios_GetInputState,.-Icu_eMios_GetInputState
# Number of nodes = 88

# Allocations for Icu_eMios_GetInputState
#	?a4		nHwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
#	?a7		bResult
#	?a8		u32ValueCCRFEN
#	?a9		u32ValueCSRFLAG
# FUNC (boolean, ICU_CODE) Icu_eMios_GetOverflow
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2243,26
#$$ld
.L1121:

#$$bf	Icu_eMios_GetOverflow,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.globl		Icu_eMios_GetOverflow
	.d2_cfa_start __cie
Icu_eMios_GetOverflow:
.Llo479:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# u8ModuleIdx=r0
.Llo483:
	stw		r0,20(r1)		# u8ModuleIdx=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# nHwChannel=r3 nHwChannel=r3
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType, AUTOMATIC) nHwChannel
# )
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
#     VAR(boolean, AUTOMATIC) bResult = (boolean)FALSE;
	.d2line		2250
	diab.li		r0,0		# bResult=r0
#     VAR(uint32, AUTOMATIC) u32RegCSR = (uint32) 0x00;
	.d2line		2248
.Llo484:
	rlwinm		r0,r3,27,29,31		# bResult=r0 nHwChannel=r3
.Llo485:
	mr		r0,r0		# u8ModuleIdx=r0 u8ModuleIdx=r0
	.d2line		2249
	rlwinm		r3,r3,0,27,31		# nHwChannel=r3 nHwChannel=r3
.Llo480:
	mr		r5,r3		# u8ChannelIdx=r5 u8ChannelIdx=r3
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     u32RegCSR = REG_READ32(EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx));
	.d2line		2254
	lis		r3,EMIOS_BASE_ADDR32@ha		# nHwChannel=r3
.Llo481:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# nHwChannel=r3 nHwChannel=r3
	rlwinm		r0,r0,2,22,29		# u8ModuleIdx=r0 u8ModuleIdx=r0
	lwzx		r4,r3,r0		# u32RegCSR=r4 nHwChannel=r3
.Llo487:
	rlwinm		r5,r5,5,19,26		# u8ChannelIdx=r5 u8ChannelIdx=r5
	se_add		r4,r5		# u32RegCSR=r4 u32RegCSR=r4 u8ChannelIdx=r5
	lwz		r4,48(r4)		# u32RegCSR=r4 u32RegCSR=r4
	mr		r4,r4		# u32RegCSR=r4 u32RegCSR=r4
# 
#     /* Clear pending interrupt serviced */
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_WRITE32(EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), u32RegCSR & (CSR_OVFL_BIT_U32));
	.d2line		2259
	rlwinm		r6,r4,0,16,16		# u32RegCSR=r4
	lwzx		r0,r3,r0		# u8ModuleIdx=r0 nHwChannel=r3
	se_add		r5,r0		# u8ChannelIdx=r5 u8ChannelIdx=r5 u8ModuleIdx=r0
	stw		r6,48(r5)		# u8ChannelIdx=r5
# 
#     bResult = Icu_eMios_CheckOverflowFlag(u32RegCSR);
	.d2line		2261
	mr		r3,r4		# u32RegCSR=r3 u32RegCSR=r4
.Llo482:
	bl		Icu_eMios_CheckOverflowFlag
# 
#     return bResult;
	.d2line		2263
.Llo486:
	rlwinm		r3,r3,0,24,31		# bResult=r3 bResult=r3
# }
	.d2line		2264
	.d2epilogue_begin
.Llo489:
	lwz		r0,20(r1)		# u8ModuleIdx=r0
	mtspr		lr,r0		# u8ModuleIdx=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo488:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1122:
	.type		Icu_eMios_GetOverflow,@function
	.size		Icu_eMios_GetOverflow,.-Icu_eMios_GetOverflow
# Number of nodes = 68

# Allocations for Icu_eMios_GetOverflow
#	?a4		nHwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
#	?a7		bResult
#	?a8		u32RegCSR
# FUNC(void, ICU_CODE) Icu_eMios_ProcessCommonInterrupt(CONST(Icu_eMios_ChannelType, AUTOMATIC) nHwChannel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2279,22
#$$ld
.L1135:

#$$bf	Icu_eMios_ProcessCommonInterrupt,interprocedural,rasave,nostackparams
	.globl		Icu_eMios_ProcessCommonInterrupt
	.d2_cfa_start __cie
Icu_eMios_ProcessCommonInterrupt:
.Llo490:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# nHwChannel=r31 nHwChannel=r3
	.d2prologue_end
# {
#     CONST(uint8, ICU_CONST) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(nHwChannel));
	.d2line		2281
	rlwinm		r30,r31,27,29,31		# nHwChannel=r31
.Llo498:
	mr		r30,r30		# u8ModuleIdx=r30 u8ModuleIdx=r30
#     CONST(uint8, ICU_CONST) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(nHwChannel));
	.d2line		2282
	rlwinm		r29,r31,0,27,31		# nHwChannel=r31
.Llo501:
	mr		r29,r29		# u8ChannelIdx=r29 u8ChannelIdx=r29
# 
#     if 
	.d2line		2284
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
.Llo491:
	diab.li		r4,512
	bl		Icu_eMios_GetChConfig
.Llo492:
	cmpi		0,0,r3,512		# nHwChannel=r3
	bc		0,2,.L672	# ne
	.section	.invalid_TEXT,,c
.L1143:
#     (
#         ICU_EMIOS_CH_INITIALIZED_MASK == \
#                 Icu_eMios_GetChConfig(nHwChannel, ICU_EMIOS_CH_INITIALIZED_MASK) 
#     )
#     {
#         VAR(uint32, AUTOMATIC) u32RegCSR = (uint32)0x0U;
	.d2line		2290
.Llo493:
	diab.li		r0,0		# u32RegCSR=r0
#         VAR(uint32, AUTOMATIC) u32RegCCR = (uint32)0x0U;
#         VAR(Icu_eMios_ChannelMeasurementModeType, AUTOMATIC) nMeasMode;
#         VAR(boolean, AUTOMATIC) bOverflow = (boolean)FALSE;
# 
#         /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#         /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         /* Read UC Status Register */
#         u32RegCSR = Icu_eMios_GetStatusFlags(nHwChannel);
	.d2line		2298
.Llo494:
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	bl		Icu_eMios_GetStatusFlags
.Llo504:
	mr		r4,r3		# u32RegCSR=r4 u32RegCSR=r3
#         /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer */
#         /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#         u32RegCCR = REG_READ32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx));
	.d2line		2301
	lis		r3,EMIOS_BASE_ADDR32@ha		# nHwChannel=r3
.Llo505:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# nHwChannel=r3 nHwChannel=r3
	rlwinm		r0,r30,2,22,29		# u32RegCSR=r0 u8ModuleIdx=r30
	lwzx		r3,r3,r0		# nHwChannel=r3 nHwChannel=r3
	rlwinm		r0,r29,5,19,26		# u32RegCSR=r0 u8ChannelIdx=r29
.Llo506:
	se_add		r3,r0		# nHwChannel=r3 nHwChannel=r3 u32RegCSR=r0
	lwz		r3,44(r3)		# nHwChannel=r3 nHwChannel=r3
.Llo511:
	mr		r3,r3		# u32RegCCR=r3 u32RegCCR=r3
# 
#         if ((0U != (u32RegCSR & CSR_FLAG_MASK_U32)) && (0U != (u32RegCCR & CCR_FEN_MASK_U32)))
	.d2line		2303
.Llo512:
	se_btsti		r4,31		# nHwChannel=r4
	bc		1,2,.L672	# eq
.Llo507:
	se_btsti		r3,14		# nHwChannel=r3
.Llo508:
	bc		1,2,.L672	# eq
#         {
#             bOverflow = Icu_eMios_CheckOverflowFlag(u32RegCSR);
	.d2line		2305
	mr		r3,r4		# u32RegCSR=r3 u32RegCSR=r4
	bl		Icu_eMios_CheckOverflowFlag
.Llo515:
	mr		r7,r3		# bOverflow=r7 bOverflow=r3
# 
#             nMeasMode = (Icu_eMios_ChannelMeasurementModeType)\
	.d2line		2307
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
.Llo516:
	diab.li		r4,496		# nHwChannel=r4
.Llo509:
	bl		Icu_eMios_GetChConfig
	se_srwi		r3,4		# nHwChannel=r3 nHwChannel=r3
.Llo513:
	mr		r6,r3		# nMeasMode=r6 nMeasMode=r3
#                     (Icu_eMios_GetChConfig(nHwChannel,ICU_EMIOS_MEAS_MODE_MASK) >> ICU_EMIOS_MEAS_MODE_SHIFT);
#             switch (nMeasMode)
	.d2line		2309
	mr		r6,r6		# nMeasMode=r6 nMeasMode=r6
	se_cmpi		r6,1		# nHwChannel=r6
	bc		1,2,.L674	# eq
.Llo514:
	se_cmpi		r6,2		# nHwChannel=r6
	bc		1,2,.L678	# eq
	se_cmpi		r6,4		# nHwChannel=r6
	bc		1,2,.L677	# eq
	b		.L679
.L674:
#             {
# #if (ICU_EDGE_DETECT_API == STD_ON)
#                 case EMIOS_CHANNEL_MODE_SIGNAL_EDGE_DETECT:
#                 {
#                     Icu_Ipw_ReportEvents(ICU_EMIOS_HW_CHANNEL(nHwChannel),bOverflow);
	.d2line		2314
	rlwinm		r3,r31,0,24,31		# nHwChannel=r3 nHwChannel=r31
	rlwinm		r4,r7,0,24,31		# nHwChannel=r4 bOverflow=r7
	bl		Icu_ReportEvents
.Llo517:
	b		.L672
.L677:
#                 }
#                 break;
# #endif
# #if (ICU_TIMESTAMP_API == STD_ON)
#                 case EMIOS_CHANNEL_MODE_TIMESTAMP_WITHOUT_DMA:
#                 {
#                     Icu_eMios_Timestamp(nHwChannel,bOverflow);
	.d2line		2321
.Llo518:
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	mr		r4,r7		# bOverflow=r4 bOverflow=r7
	bl		Icu_eMios_Timestamp
.Llo519:
	b		.L672
.L678:
#                 }
#                 break;
# #if (ICU_TIMESTAMP_USES_DMA == STD_ON)
#                 case EMIOS_CHANNEL_MODE_TIMESTAMP_WITH_DMA:
#                 {
#                     Icu_Ipw_ReportWakeupAndOverflow(ICU_EMIOS_HW_CHANNEL(nHwChannel), bOverflow);
#                 }
#                 break;
# #endif
# #endif /* ICU_TIMESTAMP_API == STD_ON */
# 
# #if (ICU_SIGNAL_MEASUREMENT_API == STD_ON)
#                 case EMIOS_CHANNEL_MODE_SIGNAL_MEASUREMENT:
#                 {
#                     Icu_eMios_SignalMeasurement(nHwChannel,bOverflow);
	.d2line		2336
.Llo520:
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
	mr		r4,r7		# bOverflow=r4 bOverflow=r7
	bl		Icu_eMios_SignalMeasurement
.Llo521:
	b		.L672
.L679:
#                 }
#                 break;
# #endif
#                 default: /* case EMIOS_CHANNEL_MODE_EDGE_COUNTER:*/
#                 {
# #if (ICU_EDGE_COUNT_API == STD_ON)
#                     Icu_Ipw_ReportWakeupAndOverflow(ICU_EMIOS_HW_CHANNEL(nHwChannel), bOverflow);
	.d2line		2343
.Llo522:
	rlwinm		r3,r31,0,24,31		# nHwChannel=r3 nHwChannel=r31
	rlwinm		r4,r7,0,24,31		# nHwChannel=r4 bOverflow=r7
	bl		Icu_ReportWakeupAndOverflow
	.section	.invalid_TEXT,,c
.L1144:
.L672:
# #endif
#                 }
#                 break;
#             }
#         }
#     }
# 
#     /** @violates @ref Icu_eMios_c_3 Cast from unsigned long to pointer*/
#     /** @violates @ref Icu_eMios_c_7 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     /* Clear pending interrupt serviced */
#     Icu_eMios_ClearStatusFlags\
	.d2line		2354
.Llo495:
	lis		r3,EMIOS_BASE_ADDR32@ha		# nHwChannel=r3
.Llo496:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# nHwChannel=r3 nHwChannel=r3
.Llo499:
	rlwinm		r30,r30,2,22,29		# u8ModuleIdx=r30 u8ModuleIdx=r30
.Llo500:
	lwzx		r0,r3,r30		# u32RegCSR=r0 nHwChannel=r3
.Llo502:
	rlwinm		r29,r29,5,19,26		# u8ChannelIdx=r29 u8ChannelIdx=r29
	se_add		r29,r0		# u8ChannelIdx=r29 u8ChannelIdx=r29 u32RegCSR=r0
	lwz		r4,48(r29)		# nHwChannel=r4 u8ChannelIdx=r29
	mr		r3,r31		# nHwChannel=r3 nHwChannel=r31
.Llo497:
	bl		Icu_eMios_ClearStatusFlags
#     (\
#         nHwChannel,\
#         REG_READ32(EMIOS_CSR_ADDR32(u8ModuleIdx, (uint32)u8ChannelIdx))\
#     );
# }
	.d2line		2359
	.d2epilogue_begin
.Llo510:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo503:
	lwz		r0,36(r1)		# u32RegCSR=r0
	mtspr		lr,r0		# u32RegCSR=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1136:
	.type		Icu_eMios_ProcessCommonInterrupt,@function
	.size		Icu_eMios_ProcessCommonInterrupt,.-Icu_eMios_ProcessCommonInterrupt
# Number of nodes = 147

# Allocations for Icu_eMios_ProcessCommonInterrupt
#	?a4		nHwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
#	?a7		u32RegCSR
#	?a8		u32RegCCR
#	?a9		nMeasMode
#	?a10		bOverflow
# FUNC(void, ICU_CODE) Icu_eMios_GetPulseWidth
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2564,22
#$$ld
.L1157:

#$$bf	Icu_eMios_GetPulseWidth,interprocedural,rasave,nostackparams
	.globl		Icu_eMios_GetPulseWidth
	.d2_cfa_start __cie
Icu_eMios_GetPulseWidth:
.Llo523:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     CONST(Icu_eMios_ChannelType, AUTOMATIC) nHwChannel
# )
# {
#     Icu_eMios_SignalMeasurement(nHwChannel,(boolean)FALSE);
	.d2line		2569
	mr		r0,r3		# nHwChannel=r0 nHwChannel=r3
	diab.li		r4,0
	bl		Icu_eMios_SignalMeasurement
# }
	.d2line		2570
	.d2epilogue_begin
.Llo524:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1158:
	.type		Icu_eMios_GetPulseWidth,@function
	.size		Icu_eMios_GetPulseWidth,.-Icu_eMios_GetPulseWidth
# Number of nodes = 7

# Allocations for Icu_eMios_GetPulseWidth
#	?a4		nHwChannel

# Allocations for module
	.section	.text_vle
	.0byte		.L1161
	.section	.invalid_BSS,,b
	.0byte		.L1165
	.section	.invalid_BSS,,b
	.type		Icu_eMios_aChConfig,@object
	.size		Icu_eMios_aChConfig,256
	.align		2
Icu_eMios_aChConfig:
	.space		256
	.section	.invalid_BSS,,b
	.type		Icu_aEdgeCurrent_Value,@object
	.size		Icu_aEdgeCurrent_Value,256
	.align		2
Icu_aEdgeCurrent_Value:
	.space		256
	.section	.invalid_BSS,,b
	.type		Icu_aInt_Counter,@object
	.size		Icu_aInt_Counter,256
	.align		2
Icu_aInt_Counter:
	.space		256
	.section	.invalid_BSS,,b
	.type		Icu_CapturedActivePulseWidth,@object
	.size		Icu_CapturedActivePulseWidth,256
	.align		2
Icu_CapturedActivePulseWidth:
	.space		256
	.section	.invalid_BSS,,b
	.type		Icu_TimeStart,@object
	.size		Icu_TimeStart,256
	.align		2
Icu_TimeStart:
	.space		256
	.section	.invalid_BSS,,b
	.type		Icu_eMios_aBufferPtr,@object
	.size		Icu_eMios_aBufferPtr,256
	.align		2
Icu_eMios_aBufferPtr:
	.space		256
	.section	.text_vle
#$$ld
.L5:
.L1191:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Icu_eMios.h"
.L1184:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Icu_eMios_Types.h"
.L1166:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_eMios.c"
.L1162:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Reg_eSys_eMios.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L691:
.L699:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_eMios.c"
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	16
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_eMios.c"
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
.L688:
	.4byte		.L689-.L687
.L687:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L693-.L688
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_eMios.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L690
	.4byte		.L691
	.4byte		.L694
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L700:
	.sleb128	2
	.4byte		.L696-.L688
	.byte		"Icu_eMios_SetChConfig"
	.byte		0
	.4byte		.L699
	.uleb128	344
	.uleb128	35
	.byte		0x1
	.4byte		.L697
	.4byte		.L698
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L699
	.uleb128	344
	.uleb128	35
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L701
	.4byte		.L704
	.sleb128	3
	.4byte		.L699
	.uleb128	344
	.uleb128	35
	.byte		"nMask"
	.byte		0
	.4byte		.L705
	.4byte		.L708
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L696:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L713:
	.sleb128	2
	.4byte		.L710-.L688
	.byte		"Icu_eMios_ClearChConfig"
	.byte		0
	.4byte		.L699
	.uleb128	366
	.uleb128	35
	.byte		0x1
	.4byte		.L711
	.4byte		.L712
	.sleb128	3
	.4byte		.L699
	.uleb128	366
	.uleb128	35
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L701
	.4byte		.L714
	.sleb128	3
	.4byte		.L699
	.uleb128	366
	.uleb128	35
	.byte		"nMask"
	.byte		0
	.4byte		.L705
	.4byte		.L715
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L710:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L720:
	.sleb128	4
	.4byte		.L717-.L688
	.byte		"Icu_eMios_GetChConfig"
	.byte		0
	.4byte		.L699
	.uleb128	386
	.uleb128	53
	.4byte		.L705
	.byte		0x1
	.4byte		.L718
	.4byte		.L719
	.sleb128	3
	.4byte		.L699
	.uleb128	386
	.uleb128	53
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L701
	.4byte		.L721
	.sleb128	3
	.4byte		.L699
	.uleb128	386
	.uleb128	53
	.byte		"nMask"
	.byte		0
	.4byte		.L705
	.4byte		.L722
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L717:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L727:
	.sleb128	4
	.4byte		.L724-.L688
	.byte		"Icu_eMios_GetCaptureRegA"
	.byte		0
	.4byte		.L699
	.uleb128	406
	.uleb128	37
	.4byte		.L706
	.byte		0x1
	.4byte		.L725
	.4byte		.L726
	.sleb128	3
	.4byte		.L699
	.uleb128	406
	.uleb128	37
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L701
	.4byte		.L728
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L729:
	.sleb128	5
	.4byte		.L699
	.uleb128	411
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L731
.L732:
	.sleb128	5
	.4byte		.L699
	.uleb128	412
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L733
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L724:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L738:
	.sleb128	4
	.4byte		.L735-.L688
	.byte		"Icu_eMios_GetCaptureRegB"
	.byte		0
	.4byte		.L699
	.uleb128	431
	.uleb128	37
	.4byte		.L706
	.byte		0x1
	.4byte		.L736
	.4byte		.L737
	.sleb128	3
	.4byte		.L699
	.uleb128	431
	.uleb128	37
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L740
.L741:
	.sleb128	5
	.4byte		.L699
	.uleb128	436
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L742
.L743:
	.sleb128	5
	.4byte		.L699
	.uleb128	437
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L744
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L735:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L749:
	.sleb128	4
	.4byte		.L746-.L688
	.byte		"Icu_eMios_GetStatusFlags"
	.byte		0
	.4byte		.L699
	.uleb128	455
	.uleb128	37
	.4byte		.L706
	.byte		0x1
	.4byte		.L747
	.4byte		.L748
	.sleb128	3
	.4byte		.L699
	.uleb128	455
	.uleb128	37
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L701
	.4byte		.L750
.L751:
	.sleb128	5
	.4byte		.L699
	.uleb128	460
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L752
.L753:
	.sleb128	5
	.4byte		.L699
	.uleb128	461
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L754
.L755:
	.sleb128	5
	.4byte		.L699
	.uleb128	462
	.uleb128	27
	.byte		"u32Flags"
	.byte		0
	.4byte		.L706
	.4byte		.L756
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L746:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L761:
	.sleb128	2
	.4byte		.L758-.L688
	.byte		"Icu_eMios_ClearStatusFlags"
	.byte		0
	.4byte		.L699
	.uleb128	482
	.uleb128	35
	.byte		0x1
	.4byte		.L759
	.4byte		.L760
	.sleb128	3
	.4byte		.L699
	.uleb128	482
	.uleb128	35
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L701
	.4byte		.L762
	.sleb128	3
	.4byte		.L699
	.uleb128	482
	.uleb128	35
	.byte		"u32BitMask"
	.byte		0
	.4byte		.L706
	.4byte		.L763
.L764:
	.sleb128	5
	.4byte		.L699
	.uleb128	488
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L765
.L766:
	.sleb128	5
	.4byte		.L699
	.uleb128	489
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L767
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L758:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L772:
	.sleb128	2
	.4byte		.L769-.L688
	.byte		"Icu_eMios_EnableInterrupt"
	.byte		0
	.4byte		.L699
	.uleb128	510
	.uleb128	35
	.byte		0x1
	.4byte		.L770
	.4byte		.L771
	.sleb128	3
	.4byte		.L699
	.uleb128	510
	.uleb128	35
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L773
	.sleb128	3
	.4byte		.L699
	.uleb128	510
	.uleb128	35
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L774
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L769:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L779:
	.sleb128	2
	.4byte		.L776-.L688
	.byte		"Icu_eMios_DisableInterrupt"
	.byte		0
	.4byte		.L699
	.uleb128	539
	.uleb128	35
	.byte		0x1
	.4byte		.L777
	.4byte		.L778
	.sleb128	3
	.4byte		.L699
	.uleb128	539
	.uleb128	35
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L780
	.sleb128	3
	.4byte		.L699
	.uleb128	539
	.uleb128	35
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L781
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L776:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L786:
	.sleb128	2
	.4byte		.L783-.L688
	.byte		"Icu_eMios_UCSetMode"
	.byte		0
	.4byte		.L699
	.uleb128	564
	.uleb128	35
	.byte		0x1
	.4byte		.L784
	.4byte		.L785
	.sleb128	3
	.4byte		.L699
	.uleb128	564
	.uleb128	35
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L787
	.sleb128	3
	.4byte		.L699
	.uleb128	564
	.uleb128	35
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L788
	.sleb128	3
	.4byte		.L699
	.uleb128	564
	.uleb128	35
	.byte		"u32Mode"
	.byte		0
	.4byte		.L789
	.4byte		.L790
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L783:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L796:
	.sleb128	4
	.4byte		.L792-.L688
	.byte		"Icu_eMios_CheckOverflowFlag"
	.byte		0
	.4byte		.L699
	.uleb128	598
	.uleb128	39
	.4byte		.L795
	.byte		0x1
	.4byte		.L793
	.4byte		.L794
	.sleb128	3
	.4byte		.L699
	.uleb128	598
	.uleb128	39
	.byte		"u32Flags"
	.byte		0
	.4byte		.L789
	.4byte		.L797
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L792:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L802:
	.sleb128	4
	.4byte		.L799-.L688
	.byte		"Icu_eMios_GetChannelClockMode"
	.byte		0
	.4byte		.L699
	.uleb128	618
	.uleb128	38
	.4byte		.L706
	.byte		0x1
	.4byte		.L800
	.4byte		.L801
	.sleb128	3
	.4byte		.L699
	.uleb128	618
	.uleb128	38
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L803
.L804:
	.sleb128	5
	.4byte		.L699
	.uleb128	623
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L805
.L806:
	.sleb128	5
	.4byte		.L699
	.uleb128	624
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L807
.L808:
	.sleb128	5
	.4byte		.L699
	.uleb128	625
	.uleb128	28
	.byte		"u32ChannelClockMode"
	.byte		0
	.4byte		.L706
	.4byte		.L809
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L799:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L814:
	.sleb128	4
	.4byte		.L811-.L688
	.byte		"Icu_eMios_GetMasterBus"
	.byte		0
	.4byte		.L699
	.uleb128	644
	.uleb128	52
	.4byte		.L701
	.byte		0x1
	.4byte		.L812
	.4byte		.L813
	.sleb128	3
	.4byte		.L699
	.uleb128	644
	.uleb128	52
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L701
	.4byte		.L815
	.sleb128	3
	.4byte		.L699
	.uleb128	644
	.uleb128	52
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L701
	.4byte		.L816
	.sleb128	3
	.4byte		.L699
	.uleb128	644
	.uleb128	52
	.byte		"u32Bus"
	.byte		0
	.4byte		.L706
	.4byte		.L817
.L818:
	.sleb128	5
	.4byte		.L699
	.uleb128	651
	.uleb128	43
	.byte		"n8MasterBusIdx"
	.byte		0
	.4byte		.L701
	.4byte		.L819
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L811:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L824:
	.sleb128	4
	.4byte		.L821-.L688
	.byte		"Icu_eMios_ReadCounterBus"
	.byte		0
	.4byte		.L699
	.uleb128	694
	.uleb128	38
	.4byte		.L706
	.byte		0x1
	.4byte		.L822
	.4byte		.L823
	.sleb128	3
	.4byte		.L699
	.uleb128	694
	.uleb128	38
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L825
.L826:
	.sleb128	5
	.4byte		.L699
	.uleb128	699
	.uleb128	32
	.byte		"u32Period"
	.byte		0
	.4byte		.L706
	.4byte		.L827
.L828:
	.sleb128	5
	.4byte		.L699
	.uleb128	701
	.uleb128	32
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L829
.L830:
	.sleb128	5
	.4byte		.L699
	.uleb128	702
	.uleb128	32
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L831
.L832:
	.sleb128	5
	.4byte		.L699
	.uleb128	703
	.uleb128	32
	.byte		"u32BusChannelClockMode"
	.byte		0
	.4byte		.L706
	.4byte		.L833
.L834:
	.sleb128	5
	.4byte		.L699
	.uleb128	704
	.uleb128	43
	.byte		"nChGeneratingEmiosBusA"
	.byte		0
	.4byte		.L701
	.4byte		.L835
.L836:
	.sleb128	5
	.4byte		.L699
	.uleb128	705
	.uleb128	43
	.byte		"u32ChGeneratingEmiosBusAClockMode"
	.byte		0
	.4byte		.L706
	.4byte		.L837
.L838:
	.sleb128	5
	.4byte		.L699
	.uleb128	706
	.uleb128	43
	.byte		"nChGeneratingEmiosBusF"
	.byte		0
	.4byte		.L701
	.4byte		.L839
.L840:
	.sleb128	5
	.4byte		.L699
	.uleb128	707
	.uleb128	43
	.byte		"u32ChGeneratingEmiosBusFClockMode"
	.byte		0
	.4byte		.L706
	.4byte		.L841
.L842:
	.sleb128	5
	.4byte		.L699
	.uleb128	710
	.uleb128	28
	.byte		"u32ChannelEmiosBus"
	.byte		0
	.4byte		.L706
	.4byte		.L843
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L821:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L848:
	.sleb128	2
	.4byte		.L845-.L688
	.byte		"Icu_eMios_SignalMeasurement"
	.byte		0
	.4byte		.L699
	.uleb128	873
	.uleb128	35
	.byte		0x1
	.4byte		.L846
	.4byte		.L847
	.sleb128	3
	.4byte		.L699
	.uleb128	873
	.uleb128	35
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L849
	.sleb128	3
	.4byte		.L699
	.uleb128	873
	.uleb128	35
	.byte		"bOverflow"
	.byte		0
	.4byte		.L795
	.4byte		.L850
.L851:
	.sleb128	5
	.4byte		.L699
	.uleb128	879
	.uleb128	35
	.byte		"IcuActivePulseWidth"
	.byte		0
	.4byte		.L852
	.4byte		.L854
.L855:
	.sleb128	5
	.4byte		.L699
	.uleb128	880
	.uleb128	35
	.byte		"IcuPeriod"
	.byte		0
	.4byte		.L852
	.4byte		.L856
.L857:
	.sleb128	5
	.4byte		.L699
	.uleb128	881
	.uleb128	35
	.byte		"Bus_Period"
	.byte		0
	.4byte		.L852
	.4byte		.L858
.L859:
	.sleb128	5
	.4byte		.L699
	.uleb128	882
	.uleb128	35
	.byte		"IcuTempA"
	.byte		0
	.4byte		.L852
	.4byte		.L860
.L861:
	.sleb128	5
	.4byte		.L699
	.uleb128	883
	.uleb128	35
	.byte		"IcuTempB"
	.byte		0
	.4byte		.L852
	.4byte		.L862
.L863:
	.sleb128	5
	.4byte		.L699
	.uleb128	892
	.uleb128	9
	.byte		"nMeasurement_property"
	.byte		0
	.4byte		.L864
	.4byte		.L866
.L867:
	.sleb128	5
	.4byte		.L699
	.uleb128	898
	.uleb128	9
	.byte		"eMios_OperationMode"
	.byte		0
	.4byte		.L868
	.4byte		.L870
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L845:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L875:
	.sleb128	2
	.4byte		.L872-.L688
	.byte		"Icu_eMios_Timestamp"
	.byte		0
	.4byte		.L699
	.uleb128	1111
	.uleb128	35
	.byte		0x1
	.4byte		.L873
	.4byte		.L874
	.sleb128	3
	.4byte		.L699
	.uleb128	1111
	.uleb128	35
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L876
	.sleb128	3
	.4byte		.L699
	.uleb128	1111
	.uleb128	35
	.byte		"bOverflow"
	.byte		0
	.4byte		.L795
	.4byte		.L877
.L878:
	.sleb128	5
	.4byte		.L699
	.uleb128	1117
	.uleb128	27
	.byte		"u8CapturedWords"
	.byte		0
	.4byte		.L702
	.4byte		.L879
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L872:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L884:
	.sleb128	6
	.4byte		.L881-.L688
	.byte		"Icu_eMios_SetActivationCondition"
	.byte		0
	.4byte		.L699
	.uleb128	1526
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L882
	.4byte		.L883
	.sleb128	3
	.4byte		.L699
	.uleb128	1526
	.uleb128	22
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L885
	.sleb128	3
	.4byte		.L699
	.uleb128	1526
	.uleb128	22
	.byte		"Activation"
	.byte		0
	.4byte		.L886
	.4byte		.L889
.L890:
	.sleb128	5
	.4byte		.L699
	.uleb128	1532
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L891
.L892:
	.sleb128	5
	.4byte		.L699
	.uleb128	1533
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L893
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L881:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L898:
	.sleb128	6
	.4byte		.L895-.L688
	.byte		"Icu_eMios_Init"
	.byte		0
	.4byte		.L699
	.uleb128	1151
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L896
	.4byte		.L897
	.sleb128	3
	.4byte		.L699
	.uleb128	1151
	.uleb128	22
	.byte		"peMiosIpConfig"
	.byte		0
	.4byte		.L899
	.4byte		.L903
.L904:
	.sleb128	5
	.4byte		.L699
	.uleb128	1157
	.uleb128	67
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L905
	.4byte		.L909
.L910:
	.sleb128	5
	.4byte		.L699
	.uleb128	1159
	.uleb128	45
	.byte		"nCtrlRegVal"
	.byte		0
	.4byte		.L911
	.4byte		.L912
.L913:
	.sleb128	5
	.4byte		.L699
	.uleb128	1161
	.uleb128	45
	.byte		"nCounter"
	.byte		0
	.4byte		.L701
	.4byte		.L914
.L915:
	.sleb128	5
	.4byte		.L699
	.uleb128	1163
	.uleb128	45
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L702
	.4byte		.L916
.L917:
	.sleb128	5
	.4byte		.L699
	.uleb128	1164
	.uleb128	45
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L702
	.4byte		.L918
.L919:
	.sleb128	5
	.4byte		.L699
	.uleb128	1165
	.uleb128	45
	.byte		"u8MasterModule"
	.byte		0
	.4byte		.L702
	.4byte		.L920
.L921:
	.sleb128	5
	.4byte		.L699
	.uleb128	1166
	.uleb128	45
	.byte		"u8MasterChannel"
	.byte		0
	.4byte		.L702
	.4byte		.L922
.L923:
	.sleb128	5
	.4byte		.L699
	.uleb128	1167
	.uleb128	45
	.byte		"u8MasterBusIdx"
	.byte		0
	.4byte		.L702
	.4byte		.L924
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L925:
	.sleb128	7
	.4byte		.L699
	.uleb128	1168
	.uleb128	45
	.byte		"u8MasterBusMode"
	.byte		0
	.4byte		.L926
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L928:
	.sleb128	7
	.4byte		.L699
	.uleb128	1169
	.uleb128	45
	.byte		"u32prescaler"
	.byte		0
	.4byte		.L929
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	72
.L931:
	.sleb128	5
	.4byte		.L699
	.uleb128	1170
	.uleb128	45
	.byte		"u32RegCCR"
	.byte		0
	.4byte		.L706
	.4byte		.L932
.L933:
	.sleb128	5
	.4byte		.L699
	.uleb128	1171
	.uleb128	45
	.byte		"ChannelOperationMode"
	.byte		0
	.4byte		.L868
	.4byte		.L934
.L935:
	.sleb128	5
	.4byte		.L699
	.uleb128	1172
	.uleb128	45
	.byte		"u32ChannelEmiosBus"
	.byte		0
	.4byte		.L706
	.4byte		.L936
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L895:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L941:
	.sleb128	6
	.4byte		.L938-.L688
	.byte		"Icu_eMios_DeInit"
	.byte		0
	.4byte		.L699
	.uleb128	1328
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L939
	.4byte		.L940
	.sleb128	3
	.4byte		.L699
	.uleb128	1328
	.uleb128	22
	.byte		"peMiosIpConfig"
	.byte		0
	.4byte		.L899
	.4byte		.L942
.L943:
	.sleb128	5
	.4byte		.L699
	.uleb128	1334
	.uleb128	67
	.byte		"peMiosChannelConfig"
	.byte		0
	.4byte		.L905
	.4byte		.L944
.L945:
	.sleb128	5
	.4byte		.L699
	.uleb128	1336
	.uleb128	45
	.byte		"nCtrlRegVal"
	.byte		0
	.4byte		.L911
	.4byte		.L946
.L947:
	.sleb128	5
	.4byte		.L699
	.uleb128	1338
	.uleb128	45
	.byte		"nCounter"
	.byte		0
	.4byte		.L701
	.4byte		.L948
.L949:
	.sleb128	5
	.4byte		.L699
	.uleb128	1339
	.uleb128	45
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L702
	.4byte		.L950
.L951:
	.sleb128	5
	.4byte		.L699
	.uleb128	1340
	.uleb128	45
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L702
	.4byte		.L952
.L953:
	.sleb128	5
	.4byte		.L699
	.uleb128	1341
	.uleb128	58
	.byte		"nMeasMode"
	.byte		0
	.4byte		.L954
	.4byte		.L956
.L957:
	.sleb128	5
	.4byte		.L699
	.uleb128	1344
	.uleb128	45
	.byte		"u8MasterModule"
	.byte		0
	.4byte		.L702
	.4byte		.L958
.L959:
	.sleb128	5
	.4byte		.L699
	.uleb128	1345
	.uleb128	45
	.byte		"u8MasterChannel"
	.byte		0
	.4byte		.L702
	.4byte		.L960
.L961:
	.sleb128	5
	.4byte		.L699
	.uleb128	1346
	.uleb128	45
	.byte		"u8MasterBusIdx"
	.byte		0
	.4byte		.L702
	.4byte		.L962
.L963:
	.sleb128	7
	.4byte		.L699
	.uleb128	1347
	.uleb128	45
	.byte		"u8MasterBusUse"
	.byte		0
	.4byte		.L964
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L938:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L970:
	.sleb128	6
	.4byte		.L967-.L688
	.byte		"Icu_eMios_SetSleepMode"
	.byte		0
	.4byte		.L699
	.uleb128	1473
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L968
	.4byte		.L969
	.sleb128	3
	.4byte		.L699
	.uleb128	1473
	.uleb128	22
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L971
.L972:
	.sleb128	5
	.4byte		.L699
	.uleb128	1478
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L973
.L974:
	.sleb128	5
	.4byte		.L699
	.uleb128	1479
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L975
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L967:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L980:
	.sleb128	6
	.4byte		.L977-.L688
	.byte		"Icu_eMios_SetNormalMode"
	.byte		0
	.4byte		.L699
	.uleb128	1494
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L978
	.4byte		.L979
	.sleb128	3
	.4byte		.L699
	.uleb128	1494
	.uleb128	22
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L981
.L982:
	.sleb128	5
	.4byte		.L699
	.uleb128	1499
	.uleb128	28
	.byte		"u32Value_CCR_FEN"
	.byte		0
	.4byte		.L706
	.4byte		.L983
.L984:
	.sleb128	5
	.4byte		.L699
	.uleb128	1501
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L985
.L986:
	.sleb128	5
	.4byte		.L699
	.uleb128	1502
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L987
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L977:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L992:
	.sleb128	6
	.4byte		.L989-.L688
	.byte		"Icu_eMios_EnableEdgeDetection"
	.byte		0
	.4byte		.L699
	.uleb128	1598
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L990
	.4byte		.L991
	.sleb128	3
	.4byte		.L699
	.uleb128	1598
	.uleb128	22
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L993
.L994:
	.sleb128	5
	.4byte		.L699
	.uleb128	1603
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L995
.L996:
	.sleb128	5
	.4byte		.L699
	.uleb128	1604
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L997
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L989:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1002:
	.sleb128	6
	.4byte		.L999-.L688
	.byte		"Icu_eMios_DisableEdgeDetection"
	.byte		0
	.4byte		.L699
	.uleb128	1636
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1000
	.4byte		.L1001
	.sleb128	3
	.4byte		.L699
	.uleb128	1636
	.uleb128	22
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L1003
.L1004:
	.sleb128	5
	.4byte		.L699
	.uleb128	1642
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1005
.L1006:
	.sleb128	5
	.4byte		.L699
	.uleb128	1643
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1007
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L999:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1012:
	.sleb128	6
	.4byte		.L1009-.L688
	.byte		"Icu_eMios_StartTimestamp"
	.byte		0
	.4byte		.L699
	.uleb128	1676
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1010
	.4byte		.L1011
	.sleb128	3
	.4byte		.L699
	.uleb128	1676
	.uleb128	22
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L1013
	.sleb128	3
	.4byte		.L699
	.uleb128	1676
	.uleb128	22
	.byte		"bDmaSupport"
	.byte		0
	.4byte		.L1014
	.4byte		.L1015
.L1016:
	.sleb128	5
	.4byte		.L699
	.uleb128	1682
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1017
.L1018:
	.sleb128	5
	.4byte		.L699
	.uleb128	1683
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1019
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1009:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1024:
	.sleb128	6
	.4byte		.L1021-.L688
	.byte		"Icu_eMios_StopTimestamp"
	.byte		0
	.4byte		.L699
	.uleb128	1745
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1022
	.4byte		.L1023
	.sleb128	3
	.4byte		.L699
	.uleb128	1745
	.uleb128	22
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L1025
.L1026:
	.sleb128	5
	.4byte		.L699
	.uleb128	1750
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1027
.L1028:
	.sleb128	5
	.4byte		.L699
	.uleb128	1751
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1029
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1021:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1034:
	.sleb128	6
	.4byte		.L1031-.L688
	.byte		"Icu_eMios_ResetEdgeCount"
	.byte		0
	.4byte		.L699
	.uleb128	1810
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1032
	.4byte		.L1033
	.sleb128	3
	.4byte		.L699
	.uleb128	1810
	.uleb128	22
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L1035
.L1036:
	.sleb128	5
	.4byte		.L699
	.uleb128	1815
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1037
.L1038:
	.sleb128	5
	.4byte		.L699
	.uleb128	1816
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1039
.L1040:
	.sleb128	5
	.4byte		.L699
	.uleb128	1817
	.uleb128	29
	.byte		"u32PrevMode"
	.byte		0
	.4byte		.L706
	.4byte		.L1041
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1031:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1046:
	.sleb128	6
	.4byte		.L1043-.L688
	.byte		"Icu_eMios_EnableEdgeCount"
	.byte		0
	.4byte		.L699
	.uleb128	1871
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1044
	.4byte		.L1045
	.sleb128	3
	.4byte		.L699
	.uleb128	1871
	.uleb128	22
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L1047
.L1048:
	.sleb128	5
	.4byte		.L699
	.uleb128	1876
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1049
.L1050:
	.sleb128	5
	.4byte		.L699
	.uleb128	1877
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1051
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1043:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1056:
	.sleb128	6
	.4byte		.L1053-.L688
	.byte		"Icu_eMios_DisableEdgeCount"
	.byte		0
	.4byte		.L699
	.uleb128	1942
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1054
	.4byte		.L1055
	.sleb128	3
	.4byte		.L699
	.uleb128	1942
	.uleb128	22
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L1057
.L1058:
	.sleb128	5
	.4byte		.L699
	.uleb128	1947
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1059
.L1060:
	.sleb128	5
	.4byte		.L699
	.uleb128	1948
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1061
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1053:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1066:
	.sleb128	8
	.4byte		.L1063-.L688
	.byte		"Icu_eMios_GetEdgeNumbers"
	.byte		0
	.4byte		.L699
	.uleb128	1990
	.uleb128	25
	.4byte		.L706
	.byte		0x1
	.byte		0x1
	.4byte		.L1064
	.4byte		.L1065
	.sleb128	3
	.4byte		.L699
	.uleb128	1990
	.uleb128	25
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L1067
.L1068:
	.sleb128	5
	.4byte		.L699
	.uleb128	1995
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1069
.L1070:
	.sleb128	5
	.4byte		.L699
	.uleb128	1996
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1071
.L1072:
	.sleb128	5
	.4byte		.L699
	.uleb128	1997
	.uleb128	28
	.byte		"u32Mode"
	.byte		0
	.4byte		.L706
	.4byte		.L1073
.L1074:
	.sleb128	5
	.4byte		.L699
	.uleb128	1998
	.uleb128	28
	.byte		"u32Result"
	.byte		0
	.4byte		.L706
	.4byte		.L1075
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1063:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1080:
	.sleb128	6
	.4byte		.L1077-.L688
	.byte		"Icu_eMios_StartSignalMeasurement"
	.byte		0
	.4byte		.L699
	.uleb128	2036
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1078
	.4byte		.L1079
	.sleb128	3
	.4byte		.L699
	.uleb128	2036
	.uleb128	22
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L1081
	.sleb128	3
	.4byte		.L699
	.uleb128	2036
	.uleb128	22
	.byte		"Activation"
	.byte		0
	.4byte		.L886
	.4byte		.L1082
	.sleb128	3
	.4byte		.L699
	.uleb128	2036
	.uleb128	22
	.byte		"nMeasProperty"
	.byte		0
	.4byte		.L1083
	.4byte		.L1084
	.sleb128	3
	.4byte		.L699
	.uleb128	2036
	.uleb128	22
	.byte		"bDmaSupport"
	.byte		0
	.4byte		.L1014
	.4byte		.L1085
	.sleb128	3
	.4byte		.L699
	.uleb128	2036
	.uleb128	22
	.byte		"bWithoutInterrupt"
	.byte		0
	.4byte		.L1014
	.4byte		.L1086
.L1087:
	.sleb128	5
	.4byte		.L699
	.uleb128	2045
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1088
.L1089:
	.sleb128	5
	.4byte		.L699
	.uleb128	2046
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1090
.L1091:
	.sleb128	5
	.4byte		.L699
	.uleb128	2047
	.uleb128	45
	.byte		"eMiosOperationMode"
	.byte		0
	.4byte		.L868
	.4byte		.L1092
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1077:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1097:
	.sleb128	6
	.4byte		.L1094-.L688
	.byte		"Icu_eMios_StopSignalMeasurement"
	.byte		0
	.4byte		.L699
	.uleb128	2132
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1095
	.4byte		.L1096
	.sleb128	3
	.4byte		.L699
	.uleb128	2132
	.uleb128	22
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L1098
.L1099:
	.sleb128	5
	.4byte		.L699
	.uleb128	2137
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1100
.L1101:
	.sleb128	5
	.4byte		.L699
	.uleb128	2138
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1102
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1094:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1107:
	.sleb128	8
	.4byte		.L1104-.L688
	.byte		"Icu_eMios_GetInputState"
	.byte		0
	.4byte		.L699
	.uleb128	2191
	.uleb128	26
	.4byte		.L795
	.byte		0x1
	.byte		0x1
	.4byte		.L1105
	.4byte		.L1106
	.sleb128	3
	.4byte		.L699
	.uleb128	2191
	.uleb128	26
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L1108
.L1109:
	.sleb128	5
	.4byte		.L699
	.uleb128	2196
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1110
.L1111:
	.sleb128	5
	.4byte		.L699
	.uleb128	2197
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1112
.L1113:
	.sleb128	5
	.4byte		.L699
	.uleb128	2198
	.uleb128	29
	.byte		"bResult"
	.byte		0
	.4byte		.L795
	.4byte		.L1114
.L1115:
	.sleb128	5
	.4byte		.L699
	.uleb128	2199
	.uleb128	28
	.byte		"u32ValueCCRFEN"
	.byte		0
	.4byte		.L706
	.4byte		.L1116
.L1117:
	.sleb128	5
	.4byte		.L699
	.uleb128	2200
	.uleb128	28
	.byte		"u32ValueCSRFLAG"
	.byte		0
	.4byte		.L706
	.4byte		.L1118
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1104:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1123:
	.sleb128	8
	.4byte		.L1120-.L688
	.byte		"Icu_eMios_GetOverflow"
	.byte		0
	.4byte		.L699
	.uleb128	2243
	.uleb128	26
	.4byte		.L795
	.byte		0x1
	.byte		0x1
	.4byte		.L1121
	.4byte		.L1122
	.sleb128	3
	.4byte		.L699
	.uleb128	2243
	.uleb128	26
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L1124
.L1125:
	.sleb128	5
	.4byte		.L699
	.uleb128	2248
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1126
.L1127:
	.sleb128	5
	.4byte		.L699
	.uleb128	2249
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1128
.L1129:
	.sleb128	5
	.4byte		.L699
	.uleb128	2250
	.uleb128	29
	.byte		"bResult"
	.byte		0
	.4byte		.L795
	.4byte		.L1130
.L1131:
	.sleb128	5
	.4byte		.L699
	.uleb128	2251
	.uleb128	28
	.byte		"u32RegCSR"
	.byte		0
	.4byte		.L706
	.4byte		.L1132
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1120:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1137:
	.sleb128	6
	.4byte		.L1134-.L688
	.byte		"Icu_eMios_ProcessCommonInterrupt"
	.byte		0
	.4byte		.L699
	.uleb128	2279
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1135
	.4byte		.L1136
	.sleb128	3
	.4byte		.L699
	.uleb128	2279
	.uleb128	22
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L1138
.L1139:
	.sleb128	5
	.4byte		.L699
	.uleb128	2281
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1140
.L1141:
	.sleb128	5
	.4byte		.L699
	.uleb128	2282
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L1142
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	9
	.4byte		.L1146
	.4byte		.L1143
	.4byte		.L1144
.L1147:
	.sleb128	5
	.4byte		.L699
	.uleb128	2290
	.uleb128	32
	.byte		"u32RegCSR"
	.byte		0
	.4byte		.L706
	.4byte		.L1148
.L1149:
	.sleb128	5
	.4byte		.L699
	.uleb128	2291
	.uleb128	32
	.byte		"u32RegCCR"
	.byte		0
	.4byte		.L706
	.4byte		.L1150
.L1151:
	.sleb128	5
	.4byte		.L699
	.uleb128	2292
	.uleb128	62
	.byte		"nMeasMode"
	.byte		0
	.4byte		.L954
	.4byte		.L1152
.L1153:
	.sleb128	5
	.4byte		.L699
	.uleb128	2293
	.uleb128	33
	.byte		"bOverflow"
	.byte		0
	.4byte		.L795
	.4byte		.L1154
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1146:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1134:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1159:
	.sleb128	6
	.4byte		.L1156-.L688
	.byte		"Icu_eMios_GetPulseWidth"
	.byte		0
	.4byte		.L699
	.uleb128	2564
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1157
	.4byte		.L1158
	.sleb128	3
	.4byte		.L699
	.uleb128	2564
	.uleb128	22
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.4byte		.L1160
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1156:
	.section	.debug_info,,n
.L1161:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L1162
	.uleb128	134
	.uleb128	33
	.byte		"EMIOS_BASE_ADDR32"
	.byte		0
	.4byte		.L1163
	.section	.debug_info,,n
.L1165:
	.sleb128	7
	.4byte		.L1166
	.uleb128	286
	.uleb128	45
	.byte		"Icu_eMios_aChConfig"
	.byte		0
	.4byte		.L1167
	.sleb128	5
	.byte		0x3
	.4byte		Icu_eMios_aChConfig
	.section	.debug_info,,n
	.section	.debug_info,,n
.L1169:
	.sleb128	7
	.4byte		.L1166
	.uleb128	290
	.uleb128	29
	.byte		"Icu_aEdgeCurrent_Value"
	.byte		0
	.4byte		.L1170
	.sleb128	5
	.byte		0x3
	.4byte		Icu_aEdgeCurrent_Value
	.section	.debug_info,,n
.L1172:
	.sleb128	7
	.4byte		.L1166
	.uleb128	294
	.uleb128	36
	.byte		"Icu_aInt_Counter"
	.byte		0
	.4byte		.L1173
	.sleb128	5
	.byte		0x3
	.4byte		Icu_aInt_Counter
	.section	.debug_info,,n
.L1175:
	.sleb128	7
	.4byte		.L1166
	.uleb128	295
	.uleb128	36
	.byte		"Icu_CapturedActivePulseWidth"
	.byte		0
	.4byte		.L1176
	.sleb128	5
	.byte		0x3
	.4byte		Icu_CapturedActivePulseWidth
	.section	.debug_info,,n
.L1178:
	.sleb128	7
	.4byte		.L1166
	.uleb128	296
	.uleb128	36
	.byte		"Icu_TimeStart"
	.byte		0
	.4byte		.L1179
	.sleb128	5
	.byte		0x3
	.4byte		Icu_TimeStart
	.section	.debug_info,,n
.L1181:
	.sleb128	7
	.4byte		.L1166
	.uleb128	300
	.uleb128	35
	.byte		"Icu_eMios_aBufferPtr"
	.byte		0
	.4byte		.L1182
	.sleb128	5
	.byte		0x3
	.4byte		Icu_eMios_aBufferPtr
	.section	.debug_info,,n
.L902:
	.sleb128	11
	.4byte		.L1184
	.uleb128	288
	.uleb128	1
	.4byte		.L1185-.L2
	.uleb128	8
	.section	.debug_info,,n
.L441:
	.sleb128	12
	.byte		"nNumChannels"
	.byte		0
	.4byte		.L739
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L442:
	.sleb128	12
	.byte		"pChannelsConfig"
	.byte		0
	.4byte		.L1186
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1185:
.L908:
	.sleb128	11
	.4byte		.L1184
	.uleb128	288
	.uleb128	1
	.4byte		.L1189-.L2
	.uleb128	12
.L437:
	.sleb128	12
	.byte		"nHwChannel"
	.byte		0
	.4byte		.L739
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L438:
	.sleb128	12
	.byte		"nControlValue"
	.byte		0
	.4byte		.L1190
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L439:
	.sleb128	12
	.byte		"nDefaultStartEdge"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L440:
	.sleb128	12
	.byte		"bSignalMeasure_WithoutInterrupt"
	.byte		0
	.4byte		.L1014
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
	.sleb128	0
.L1189:
	.section	.debug_info,,n
.L865:
	.sleb128	13
	.4byte		.L1191
	.uleb128	145
	.uleb128	1
	.4byte		.L1192-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	14
	.byte		"EMIOS_ICU_LOW_TIME"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"EMIOS_ICU_HIGH_TIME"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"EMIOS_ICU_ACTIVE_TIME"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"EMIOS_ICU_PERIOD_TIME"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"EMIOS_ICU_DUTY_CYCLE"
	.byte		0
	.sleb128	8
	.sleb128	0
.L1192:
.L888:
	.sleb128	13
	.4byte		.L1191
	.uleb128	117
	.uleb128	1
	.4byte		.L1193-.L2
	.uleb128	4
	.sleb128	14
	.byte		"EMIOS_FALLING_EDGE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"EMIOS_RISING_EDGE"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"EMIOS_BOTH_EDGES"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1193:
.L955:
	.sleb128	13
	.4byte		.L1191
	.uleb128	96
	.uleb128	1
	.4byte		.L1194-.L2
	.uleb128	4
	.sleb128	14
	.byte		"EMIOS_CHANNEL_MODE_SIGNAL_EDGE_DETECT"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"EMIOS_CHANNEL_MODE_SIGNAL_MEASUREMENT"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"EMIOS_CHANNEL_MODE_TIMESTAMP_WITHOUT_DMA"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"EMIOS_CHANNEL_MODE_TIMESTAMP_WITH_DMA"
	.byte		0
	.sleb128	16
	.sleb128	14
	.byte		"EMIOS_CHANNEL_MODE_EDGE_COUNTER"
	.byte		0
	.sleb128	8
	.sleb128	0
.L1194:
.L869:
	.sleb128	13
	.4byte		.L1184
	.uleb128	288
	.uleb128	1
	.4byte		.L1195-.L2
	.uleb128	4
	.sleb128	14
	.byte		"EMIOS_UC_UNSPECIFIED_MODE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"EMIOS_UC_DAOC_MODE"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"EMIOS_UC_GPIO_MODE"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"EMIOS_UC_IPM_MODE"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"EMIOS_UC_IPWM_MODE"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"EMIOS_UC_MC_MODE"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"EMIOS_UC_MCB_MODE"
	.byte		0
	.sleb128	6
	.sleb128	14
	.byte		"EMIOS_UC_OPWMB_MODE"
	.byte		0
	.sleb128	7
	.sleb128	14
	.byte		"EMIOS_UC_OPWMT_MODE"
	.byte		0
	.sleb128	8
	.sleb128	14
	.byte		"EMIOS_UC_OPWFMB_MODE"
	.byte		0
	.sleb128	9
	.sleb128	14
	.byte		"EMIOS_UC_OPWMCB_MODE"
	.byte		0
	.sleb128	10
	.sleb128	14
	.byte		"EMIOS_UC_SAIC_MODE"
	.byte		0
	.sleb128	11
	.sleb128	14
	.byte		"EMIOS_UC_SAOC_MODE"
	.byte		0
	.sleb128	12
	.sleb128	0
.L1195:
	.section	.debug_info,,n
.L703:
	.sleb128	15
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L702:
	.sleb128	16
	.byte		"uint8"
	.byte		0
	.4byte		.L703
.L701:
	.sleb128	16
	.byte		"Icu_eMios_ChannelType"
	.byte		0
	.4byte		.L702
.L707:
	.sleb128	15
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L706:
	.sleb128	16
	.byte		"uint32"
	.byte		0
	.4byte		.L707
.L705:
	.sleb128	16
	.byte		"Icu_eMios_ChConfigType"
	.byte		0
	.4byte		.L706
	.section	.debug_info,,n
.L730:
	.sleb128	17
	.4byte		.L702
.L739:
	.sleb128	17
	.4byte		.L701
.L789:
	.sleb128	17
	.4byte		.L706
.L795:
	.sleb128	16
	.byte		"boolean"
	.byte		0
	.4byte		.L703
.L853:
	.sleb128	16
	.byte		"Icu_TimerRegisterWidthType"
	.byte		0
	.4byte		.L706
.L852:
	.sleb128	16
	.byte		"Icu_ValueType"
	.byte		0
	.4byte		.L853
.L864:
	.sleb128	16
	.byte		"Icu_eMios_SignalMeasurementPropertyType"
	.byte		0
	.4byte		.L865
.L868:
	.sleb128	16
	.byte		"Icu_eMios_OperationMode"
	.byte		0
	.4byte		.L869
.L887:
	.sleb128	16
	.byte		"Icu_eMios_ActivationType"
	.byte		0
	.4byte		.L888
.L886:
	.sleb128	17
	.4byte		.L887
.L901:
	.sleb128	16
	.byte		"Icu_eMios_IpConfigType"
	.byte		0
	.4byte		.L902
.L900:
	.sleb128	17
	.4byte		.L901
	.section	.debug_info,,n
.L899:
	.sleb128	18
	.4byte		.L900
.L907:
	.sleb128	16
	.byte		"Icu_eMios_ChannelConfigType"
	.byte		0
	.4byte		.L908
.L906:
	.sleb128	17
	.4byte		.L907
.L905:
	.sleb128	18
	.4byte		.L906
.L911:
	.sleb128	16
	.byte		"Icu_eMios_ControlType"
	.byte		0
	.4byte		.L706
	.section	.debug_info,,n
.L926:
	.sleb128	19
	.4byte		.L927
	.4byte		.L702
	.section	.debug_info,,n
	.sleb128	20
	.uleb128	63
	.sleb128	0
.L927:
.L929:
	.sleb128	19
	.4byte		.L930
	.4byte		.L706
	.sleb128	20
	.uleb128	63
	.sleb128	0
.L930:
.L954:
	.sleb128	16
	.byte		"Icu_eMios_ChannelMeasurementModeType"
	.byte		0
	.4byte		.L955
.L964:
	.sleb128	19
	.4byte		.L965
	.4byte		.L702
	.sleb128	20
	.uleb128	63
	.sleb128	0
.L965:
.L1014:
	.sleb128	17
	.4byte		.L795
.L1083:
	.sleb128	17
	.4byte		.L864
	.section	.debug_info,,n
.L1163:
	.sleb128	21
	.4byte		.L1164-.L2
	.4byte		.L789
	.section	.debug_info,,n
	.sleb128	22
	.sleb128	0
.L1164:
.L1167:
	.sleb128	21
	.4byte		.L1168-.L2
	.4byte		.L705
	.sleb128	20
	.uleb128	63
	.sleb128	0
.L1168:
.L1170:
	.sleb128	21
	.4byte		.L1171-.L2
	.4byte		.L706
	.sleb128	20
	.uleb128	63
	.sleb128	0
.L1171:
.L1173:
	.sleb128	21
	.4byte		.L1174-.L2
	.4byte		.L852
	.sleb128	20
	.uleb128	63
	.sleb128	0
.L1174:
.L1176:
	.sleb128	21
	.4byte		.L1177-.L2
	.4byte		.L852
	.sleb128	20
	.uleb128	63
	.sleb128	0
.L1177:
.L1179:
	.sleb128	21
	.4byte		.L1180-.L2
	.4byte		.L852
	.sleb128	20
	.uleb128	63
	.sleb128	0
.L1180:
.L1182:
	.sleb128	21
	.4byte		.L1183-.L2
	.4byte		.L852
	.sleb128	20
	.uleb128	63
	.sleb128	0
.L1183:
.L1187:
	.sleb128	21
	.4byte		.L1188-.L2
	.4byte		.L906
	.sleb128	22
	.sleb128	0
.L1188:
.L1186:
	.sleb128	18
	.4byte		.L1187
.L1190:
	.sleb128	17
	.4byte		.L911
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L693:
	.sleb128	0
.L689:

	.section	.debug_loc,,n
	.align	0
.L704:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L708:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo6),30
	.d2locend
.L714:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),31
	.d2locend
.L715:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo11),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo12),30
	.d2locend
.L721:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locend
.L722:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo15),4
	.d2locend
.L728:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locend
.L731:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),4
	.d2locend
.L733:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo20),3
	.d2locend
.L740:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locend
.L742:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),4
	.d2locend
.L744:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo25),3
	.d2locend
.L750:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locend
.L752:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),4
	.d2locend
.L754:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo30),3
	.d2locend
.L756:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),3
	.d2locend
.L762:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),3
	.d2locend
.L763:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo34),4
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),6
	.d2locend
.L765:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),5
	.d2locend
.L767:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo36),3
	.d2locend
.L773:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),31
	.d2locend
.L774:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo39),4
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),30
	.d2locend
.L780:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),3
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),31
	.d2locend
.L781:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),4
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),30
	.d2locend
.L787:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),3
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),31
	.d2locend
.L788:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo53),4
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),30
	.d2locend
.L790:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),5
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo55),29
	.d2locend
.L797:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locend
.L803:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),3
	.d2locend
.L805:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),4
	.d2locend
.L807:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo63),3
	.d2locend
.L809:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),3
	.d2locend
.L815:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),3
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),3
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),3
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),3
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),3
	.d2locend
.L816:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo77),4
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo78),4
	.d2locend
.L817:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo79),5
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),0
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),0
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),0
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo86),0
	.d2locend
.L819:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo83),5
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),3
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),3
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),3
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),3
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),5
	.d2locend
.L825:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),3
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),3
	.d2locend
.L827:
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),7
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),3
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo98),3
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo100),7
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),3
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),3
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo106),7
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo108),3
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),3
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),7
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),3
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),3
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),7
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),3
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),3
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),7
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),3
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),3
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),7
	.d2locend
.L829:
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),31
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo118),31
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo124),31
	.d2locend
.L831:
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo135),30
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo94),30
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo100),30
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo106),30
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo136),30
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo118),30
	.d2locend
.L833:
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),3
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo140),3
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),3
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo144),3
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),3
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo148),3
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo150),3
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo152),3
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo154),3
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo156),3
	.d2locend
.L835:
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo122),6
	.d2locend
.L837:
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo159),3
	.d2locend
.L839:
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo128),6
	.d2locend
.L841:
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo162),3
	.d2locend
.L843:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo163),3
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo133),3
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo166),3
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo167),3
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo169),3
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo170),3
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo172),3
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo174),3
	.d2locend
.L849:
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo176),3
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo178),31
	.d2locreg	%offsetof(.Llo179), %offsetof(.Llo180),31
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo182),31
	.d2locend
.L850:
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo183),4
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo185),30
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo182),30
	.d2locend
.L854:
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo187),4
	.d2locreg	%offsetof(.Llo188), %offsetof(.Llo189),3
	.d2locreg	%offsetof(.Llo190), %offsetof(.Llo191),4
	.d2locreg	%offsetof(.Llo192), %offsetof(.Llo193),4
	.d2locreg	%offsetof(.Llo194), %offsetof(.Llo195),4
	.d2locreg	%offsetof(.Llo196), %offsetof(.Llo197),4
	.d2locend
.L856:
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo199),5
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo201),3
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo193),5
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo203),5
	.d2locreg	%offsetof(.Llo196), %offsetof(.Llo197),5
	.d2locreg	%offsetof(.Llo204), %offsetof(.Llo205),5
	.d2locreg	%offsetof(.Llo206), %offsetof(.Llo185),5
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),5
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo210),5
	.d2locend
.L858:
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo188),3
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo213),3
	.d2locreg	%offsetof(.Llo214), %offsetof(.Llo201),4
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo216),4
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo218),3
	.d2locreg	%offsetof(.Llo219), %offsetof(.Llo220),3
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo209),3
	.d2locend
.L860:
	.d2locreg	%offsetof(.Llo222), %offsetof(.Llo223),3
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo216),29
	.d2locreg	%offsetof(.Llo218), %offsetof(.Llo178),3
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo208),29
	.d2locreg	%offsetof(.Llo224), %offsetof(.Llo209),28
	.d2locend
.L862:
	.d2locreg	%offsetof(.Llo225), %offsetof(.Llo184),3
	.d2locreg	%offsetof(.Llo226), %offsetof(.Llo208),28
	.d2locreg	%offsetof(.Llo227), %offsetof(.Llo224),28
	.d2locend
.L866:
	.d2locreg	%offsetof(.Llo228), %offsetof(.Llo229),3
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo230),27
	.d2locreg	%offsetof(.Llo231), %offsetof(.Llo197),27
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo232),27
	.d2locend
.L870:
	.d2locreg	%offsetof(.Llo233), %offsetof(.Llo234),3
	.d2locreg	%offsetof(.Llo235), %offsetof(.Llo184),6
	.d2locend
.L876:
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo237),3
	.d2locreg	%offsetof(.Llo238), %offsetof(.Llo239),3
	.d2locend
.L877:
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo238),4
	.d2locreg	%offsetof(.Llo240), %offsetof(.Llo241),6
	.d2locend
.L879:
	.d2locreg	%offsetof(.Llo242), %offsetof(.Llo243),0
	.d2locend
.L885:
	.d2locreg	%offsetof(.Llo244), %offsetof(.Llo245),3
	.d2locreg	%offsetof(.Llo246), %offsetof(.Llo247),3
	.d2locreg	%offsetof(.Llo248), %offsetof(.Llo249),3
	.d2locreg	%offsetof(.Llo250), %offsetof(.Llo251),3
	.d2locend
.L889:
	.d2locreg	%offsetof(.Llo244), %offsetof(.Llo252),4
	.d2locreg	%offsetof(.Llo253), %offsetof(.Llo254),31
	.d2locend
.L891:
	.d2locreg	%offsetof(.Llo253), %offsetof(.Llo255),30
	.d2locreg	%offsetof(.Llo256), %offsetof(.Llo257),30
	.d2locreg	%offsetof(.Llo258), %offsetof(.Llo259),30
	.d2locreg	%offsetof(.Llo260), %offsetof(.Llo261),30
	.d2locend
.L893:
	.d2locreg	%offsetof(.Llo245), %offsetof(.Llo262),3
	.d2locreg	%offsetof(.Llo254), %offsetof(.Llo255),29
	.d2locreg	%offsetof(.Llo263), %offsetof(.Llo249),29
	.d2locreg	%offsetof(.Llo264), %offsetof(.Llo251),29
	.d2locend
.L903:
	.d2locreg	%offsetof(.Llo265), %offsetof(.Llo266),3
	.d2locreg	%offsetof(.Llo267), %offsetof(.Llo268),31
	.d2locreg	%offsetof(.Llo269), %offsetof(.Llo270),31
	.d2locend
.L909:
	.d2locreg	%offsetof(.Llo271), %offsetof(.Llo272),29
	.d2locend
.L912:
	.d2locreg	%offsetof(.Llo273), %offsetof(.Llo274),28
	.d2locreg	%offsetof(.Llo275), %offsetof(.Llo276),28
	.d2locend
.L914:
	.d2locreg	%offsetof(.Llo266), %offsetof(.Llo277),3
	.d2locreg	%offsetof(.Llo278), %offsetof(.Llo268),30
	.d2locreg	%offsetof(.Llo279), %offsetof(.Llo280),3
	.d2locend
.L916:
	.d2locreg	%offsetof(.Llo281), %offsetof(.Llo282),27
	.d2locreg	%offsetof(.Llo283), %offsetof(.Llo284),3
	.d2locreg	%offsetof(.Llo285), %offsetof(.Llo274),3
	.d2locreg	%offsetof(.Llo286), %offsetof(.Llo287),3
	.d2locend
.L918:
	.d2locreg	%offsetof(.Llo288), %offsetof(.Llo272),26
	.d2locreg	%offsetof(.Llo289), %offsetof(.Llo290),4
	.d2locreg	%offsetof(.Llo291), %offsetof(.Llo270),4
	.d2locend
.L920:
	.d2locreg	%offsetof(.Llo292), %offsetof(.Llo293),6
	.d2locend
.L922:
	.d2locreg	%offsetof(.Llo294), %offsetof(.Llo270),7
	.d2locend
.L924:
	.d2locreg	%offsetof(.Llo295), %offsetof(.Llo296),0
	.d2locreg	%offsetof(.Llo297), %offsetof(.Llo298),0
	.d2locreg	%offsetof(.Llo278), %offsetof(.Llo299),0
	.d2locreg	%offsetof(.Llo300), %offsetof(.Llo301),0
	.d2locreg	%offsetof(.Llo302), %offsetof(.Llo303),3
	.d2locreg	%offsetof(.Llo272), %offsetof(.Llo304),25
	.d2locreg	%offsetof(.Llo305), %offsetof(.Llo276),25
	.d2locreg	%offsetof(.Llo279), %offsetof(.Llo306),0
	.d2locreg	%offsetof(.Llo307), %offsetof(.Llo290),0
	.d2locreg	%offsetof(.Llo308), %offsetof(.Llo309),0
	.d2locreg	%offsetof(.Llo310), %offsetof(.Llo311),0
	.d2locend
.L932:
	.d2locreg	%offsetof(.Llo312), %offsetof(.Llo313),0
	.d2locreg	%offsetof(.Llo314), %offsetof(.Llo315),0
	.d2locreg	%offsetof(.Llo316), %offsetof(.Llo272),0
	.d2locreg	%offsetof(.Llo317), %offsetof(.Llo274),0
	.d2locreg	%offsetof(.Llo318), %offsetof(.Llo305),0
	.d2locreg	%offsetof(.Llo319), %offsetof(.Llo320),5
	.d2locreg	%offsetof(.Llo321), %offsetof(.Llo270),0
	.d2locend
.L934:
	.d2locreg	%offsetof(.Llo322), %offsetof(.Llo272),24
	.d2locend
.L936:
	.d2locreg	%offsetof(.Llo323), %offsetof(.Llo272),23
	.d2locend
.L942:
	.d2locreg	%offsetof(.Llo324), %offsetof(.Llo325),3
	.d2locreg	%offsetof(.Llo326), %offsetof(.Llo327),31
	.d2locend
.L944:
	.d2locreg	%offsetof(.Llo328), %offsetof(.Llo329),30
	.d2locreg	%offsetof(.Llo330), %offsetof(.Llo331),0
	.d2locreg	%offsetof(.Llo332), %offsetof(.Llo333),30
	.d2locend
.L946:
	.d2locreg	%offsetof(.Llo330), %offsetof(.Llo334),29
	.d2locreg	%offsetof(.Llo335), %offsetof(.Llo327),29
	.d2locend
.L948:
	.d2locreg	%offsetof(.Llo325), %offsetof(.Llo336),3
	.d2locreg	%offsetof(.Llo337), %offsetof(.Llo327),28
	.d2locend
.L950:
	.d2locreg	%offsetof(.Llo338), %offsetof(.Llo334),27
	.d2locreg	%offsetof(.Llo339), %offsetof(.Llo340),3
	.d2locreg	%offsetof(.Llo335), %offsetof(.Llo327),27
	.d2locend
.L952:
	.d2locreg	%offsetof(.Llo341), %offsetof(.Llo334),26
	.d2locreg	%offsetof(.Llo335), %offsetof(.Llo327),26
	.d2locend
.L956:
	.d2locreg	%offsetof(.Llo342), %offsetof(.Llo332),0
	.d2locreg	%offsetof(.Llo343), %offsetof(.Llo344),0
	.d2locreg	%offsetof(.Llo345), %offsetof(.Llo346),0
	.d2locreg	%offsetof(.Llo347), %offsetof(.Llo348),0
	.d2locreg	%offsetof(.Llo349), %offsetof(.Llo333),0
	.d2locend
.L958:
	.d2locreg	%offsetof(.Llo350), %offsetof(.Llo351),6
	.d2locend
.L960:
	.d2locreg	%offsetof(.Llo352), %offsetof(.Llo335),4
	.d2locend
.L962:
	.d2locreg	%offsetof(.Llo353), %offsetof(.Llo354),0
	.d2locreg	%offsetof(.Llo355), %offsetof(.Llo356),0
	.d2locreg	%offsetof(.Llo337), %offsetof(.Llo357),0
	.d2locreg	%offsetof(.Llo358), %offsetof(.Llo359),0
	.d2locreg	%offsetof(.Llo360), %offsetof(.Llo361),3
	.d2locreg	%offsetof(.Llo362), %offsetof(.Llo363),0
	.d2locend
.L971:
	.d2locreg	%offsetof(.Llo364), %offsetof(.Llo365),3
	.d2locreg	%offsetof(.Llo366), %offsetof(.Llo367),4
	.d2locend
.L973:
	.d2locreg	%offsetof(.Llo365), %offsetof(.Llo368),3
	.d2locend
.L975:
	.d2locreg	%offsetof(.Llo367), %offsetof(.Llo369),4
	.d2locend
.L981:
	.d2locreg	%offsetof(.Llo370), %offsetof(.Llo371),3
	.d2locend
.L983:
	.d2locreg	%offsetof(.Llo372), %offsetof(.Llo373),0
	.d2locend
.L985:
	.d2locreg	%offsetof(.Llo374), %offsetof(.Llo375),5
	.d2locend
.L987:
	.d2locreg	%offsetof(.Llo376), %offsetof(.Llo371),4
	.d2locreg	%offsetof(.Llo377), %offsetof(.Llo378),4
	.d2locend
.L993:
	.d2locreg	%offsetof(.Llo379), %offsetof(.Llo380),3
	.d2locreg	%offsetof(.Llo381), %offsetof(.Llo382),31
	.d2locend
.L995:
	.d2locreg	%offsetof(.Llo381), %offsetof(.Llo382),29
	.d2locend
.L997:
	.d2locreg	%offsetof(.Llo383), %offsetof(.Llo382),30
	.d2locend
.L1003:
	.d2locreg	%offsetof(.Llo384), %offsetof(.Llo385),3
	.d2locreg	%offsetof(.Llo386), %offsetof(.Llo387),31
	.d2locend
.L1005:
	.d2locreg	%offsetof(.Llo386), %offsetof(.Llo387),29
	.d2locend
.L1007:
	.d2locreg	%offsetof(.Llo388), %offsetof(.Llo387),30
	.d2locend
.L1013:
	.d2locreg	%offsetof(.Llo389), %offsetof(.Llo390),3
	.d2locreg	%offsetof(.Llo391), %offsetof(.Llo392),31
	.d2locend
.L1015:
	.d2locreg	%offsetof(.Llo389), %offsetof(.Llo393),4
	.d2locreg	%offsetof(.Llo394), %offsetof(.Llo395),30
	.d2locend
.L1017:
	.d2locreg	%offsetof(.Llo396), %offsetof(.Llo397),29
	.d2locend
.L1019:
	.d2locreg	%offsetof(.Llo389), %offsetof(.Llo397),28
	.d2locend
.L1025:
	.d2locreg	%offsetof(.Llo398), %offsetof(.Llo399),3
	.d2locreg	%offsetof(.Llo400), %offsetof(.Llo401),31
	.d2locend
.L1027:
	.d2locreg	%offsetof(.Llo400), %offsetof(.Llo401),29
	.d2locend
.L1029:
	.d2locreg	%offsetof(.Llo402), %offsetof(.Llo401),30
	.d2locend
.L1035:
	.d2locreg	%offsetof(.Llo403), %offsetof(.Llo404),3
	.d2locreg	%offsetof(.Llo405), %offsetof(.Llo406),31
	.d2locend
.L1037:
	.d2locreg	%offsetof(.Llo407), %offsetof(.Llo408),30
	.d2locend
.L1039:
	.d2locreg	%offsetof(.Llo409), %offsetof(.Llo408),29
	.d2locend
.L1041:
	.d2locreg	%offsetof(.Llo410), %offsetof(.Llo408),28
	.d2locend
.L1047:
	.d2locreg	%offsetof(.Llo411), %offsetof(.Llo412),3
	.d2locreg	%offsetof(.Llo413), %offsetof(.Llo414),31
	.d2locend
.L1049:
	.d2locreg	%offsetof(.Llo413), %offsetof(.Llo414),30
	.d2locend
.L1051:
	.d2locreg	%offsetof(.Llo411), %offsetof(.Llo414),29
	.d2locend
.L1057:
	.d2locreg	%offsetof(.Llo415), %offsetof(.Llo416),3
	.d2locreg	%offsetof(.Llo417), %offsetof(.Llo418),31
	.d2locend
.L1059:
	.d2locreg	%offsetof(.Llo417), %offsetof(.Llo418),30
	.d2locend
.L1061:
	.d2locreg	%offsetof(.Llo415), %offsetof(.Llo418),29
	.d2locend
.L1067:
	.d2locreg	%offsetof(.Llo419), %offsetof(.Llo420),3
	.d2locreg	%offsetof(.Llo421), %offsetof(.Llo422),0
	.d2locreg	%offsetof(.Llo423), %offsetof(.Llo424),0
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo426),0
	.d2locend
.L1069:
	.d2locreg	%offsetof(.Llo427), %offsetof(.Llo428),4
	.d2locreg	%offsetof(.Llo429), %offsetof(.Llo430),4
	.d2locend
.L1071:
	.d2locreg	%offsetof(.Llo431), %offsetof(.Llo428),6
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo426),6
	.d2locend
.L1073:
	.d2locreg	%offsetof(.Llo432), %offsetof(.Llo433),3
	.d2locreg	%offsetof(.Llo434), %offsetof(.Llo435),3
	.d2locreg	%offsetof(.Llo436), %offsetof(.Llo437),3
	.d2locend
.L1075:
	.d2locreg	%offsetof(.Llo438), %offsetof(.Llo433),3
	.d2locreg	%offsetof(.Llo435), %offsetof(.Llo428),3
	.d2locreg	%offsetof(.Llo437), %offsetof(.Llo439),3
	.d2locend
.L1081:
	.d2locreg	%offsetof(.Llo440), %offsetof(.Llo441),3
	.d2locreg	%offsetof(.Llo442), %offsetof(.Llo443),31
	.d2locend
.L1082:
	.d2locreg	%offsetof(.Llo440), %offsetof(.Llo442),4
	.d2locreg	%offsetof(.Llo444), %offsetof(.Llo445),30
	.d2locend
.L1084:
	.d2locreg	%offsetof(.Llo440), %offsetof(.Llo446),5
	.d2locreg	%offsetof(.Llo445), %offsetof(.Llo443),29
	.d2locend
.L1085:
	.d2locreg	%offsetof(.Llo440), %offsetof(.Llo446),6
	.d2locreg	%offsetof(.Llo447), %offsetof(.Llo445),28
	.d2locend
.L1086:
	.d2locreg	%offsetof(.Llo440), %offsetof(.Llo446),7
	.d2locreg	%offsetof(.Llo445), %offsetof(.Llo448),27
	.d2locreg	%offsetof(.Llo449), %offsetof(.Llo450),27
	.d2locend
.L1088:
	.d2locreg	%offsetof(.Llo451), %offsetof(.Llo452),26
	.d2locend
.L1090:
	.d2locreg	%offsetof(.Llo453), %offsetof(.Llo452),25
	.d2locend
.L1092:
	.d2locreg	%offsetof(.Llo454), %offsetof(.Llo455),3
	.d2locreg	%offsetof(.Llo456), %offsetof(.Llo457),3
	.d2locend
.L1098:
	.d2locreg	%offsetof(.Llo458), %offsetof(.Llo459),3
	.d2locreg	%offsetof(.Llo460), %offsetof(.Llo461),31
	.d2locend
.L1100:
	.d2locreg	%offsetof(.Llo460), %offsetof(.Llo462),30
	.d2locreg	%offsetof(.Llo463), %offsetof(.Llo464),3
	.d2locend
.L1102:
	.d2locreg	%offsetof(.Llo458), %offsetof(.Llo461),29
	.d2locend
.L1108:
	.d2locreg	%offsetof(.Llo465), %offsetof(.Llo466),3
	.d2locreg	%offsetof(.Llo467), %offsetof(.Llo468),5
	.d2locend
.L1110:
	.d2locreg	%offsetof(.Llo469), %offsetof(.Llo470),0
	.d2locreg	%offsetof(.Llo471), %offsetof(.Llo472),0
	.d2locend
.L1112:
	.d2locreg	%offsetof(.Llo468), %offsetof(.Llo470),5
	.d2locreg	%offsetof(.Llo473), %offsetof(.Llo472),5
	.d2locend
.L1114:
	.d2locreg	%offsetof(.Llo467), %offsetof(.Llo474),3
	.d2locend
.L1116:
	.d2locreg	%offsetof(.Llo475), %offsetof(.Llo476),7
	.d2locend
.L1118:
	.d2locreg	%offsetof(.Llo477), %offsetof(.Llo470),4
	.d2locreg	%offsetof(.Llo478), %offsetof(.Llo472),4
	.d2locend
.L1124:
	.d2locreg	%offsetof(.Llo479), %offsetof(.Llo480),3
	.d2locreg	%offsetof(.Llo481), %offsetof(.Llo482),3
	.d2locend
.L1126:
	.d2locreg	%offsetof(.Llo483), %offsetof(.Llo484),0
	.d2locreg	%offsetof(.Llo485), %offsetof(.Llo486),0
	.d2locend
.L1128:
	.d2locreg	%offsetof(.Llo480), %offsetof(.Llo481),3
	.d2locreg	%offsetof(.Llo487), %offsetof(.Llo488),5
	.d2locend
.L1130:
	.d2locreg	%offsetof(.Llo486), %offsetof(.Llo489),3
	.d2locend
.L1132:
	.d2locreg	%offsetof(.Llo487), %offsetof(.Llo488),4
	.d2locend
.L1138:
	.d2locreg	%offsetof(.Llo490), %offsetof(.Llo491),3
	.d2locreg	%offsetof(.Llo492), %offsetof(.Llo493),3
	.d2locreg	%offsetof(.Llo494), %offsetof(.Llo495),31
	.d2locreg	%offsetof(.Llo496), %offsetof(.Llo497),3
	.d2locend
.L1140:
	.d2locreg	%offsetof(.Llo498), %offsetof(.Llo495),30
	.d2locreg	%offsetof(.Llo499), %offsetof(.Llo500),30
	.d2locend
.L1142:
	.d2locreg	%offsetof(.Llo501), %offsetof(.Llo495),29
	.d2locreg	%offsetof(.Llo502), %offsetof(.Llo503),29
	.d2locend
.L1148:
	.d2locreg	%offsetof(.Llo504), %offsetof(.Llo505),3
	.d2locreg	%offsetof(.Llo506), %offsetof(.Llo507),0
	.d2locreg	%offsetof(.Llo508), %offsetof(.Llo509),4
	.d2locreg	%offsetof(.Llo502), %offsetof(.Llo510),0
	.d2locend
.L1150:
	.d2locreg	%offsetof(.Llo511), %offsetof(.Llo512),3
	.d2locend
.L1152:
	.d2locreg	%offsetof(.Llo513), %offsetof(.Llo514),3
	.d2locend
.L1154:
	.d2locreg	%offsetof(.Llo515), %offsetof(.Llo516),3
	.d2locreg	%offsetof(.Llo514), %offsetof(.Llo517),7
	.d2locreg	%offsetof(.Llo518), %offsetof(.Llo519),7
	.d2locreg	%offsetof(.Llo520), %offsetof(.Llo521),7
	.d2locreg	%offsetof(.Llo522), %offsetof(.Llo495),7
	.d2locend
.L1160:
	.d2locreg	%offsetof(.Llo523), %offsetof(.Llo524),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Icu_eMios_GetPulseWidth"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_eMios_SignalMeasurement"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_ProcessCommonInterrupt"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_ReportEvents","Icu_ReportWakeupAndOverflow","Icu_eMios_CheckOverflowFlag","Icu_eMios_ClearStatusFlags","Icu_eMios_GetChConfig","Icu_eMios_GetStatusFlags","Icu_eMios_SignalMeasurement","Icu_eMios_Timestamp"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_GetOverflow"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_eMios_CheckOverflowFlag"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_GetInputState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Icu_eMios_StopSignalMeasurement"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_eMios_ClearChConfig","Icu_eMios_DisableInterrupt","Icu_eMios_UCSetMode","SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_18","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_18"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_StartSignalMeasurement"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "Icu_eMios_DisableInterrupt","Icu_eMios_EnableInterrupt","Icu_eMios_GetChConfig","Icu_eMios_SetActivationCondition","Icu_eMios_SetChConfig","Icu_eMios_UCSetMode","SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_21","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_21"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_GetEdgeNumbers"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Icu_eMios_DisableEdgeCount"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_eMios_ClearChConfig","Icu_eMios_DisableInterrupt","Icu_eMios_UCSetMode"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_EnableEdgeCount"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_eMios_EnableInterrupt","Icu_eMios_SetChConfig","Icu_eMios_UCSetMode"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_ResetEdgeCount"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_eMios_DisableInterrupt","Icu_eMios_EnableInterrupt","Icu_eMios_UCSetMode"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_StopTimestamp"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_eMios_ClearChConfig","Icu_eMios_DisableInterrupt","Icu_eMios_UCSetMode"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_StartTimestamp"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_eMios_EnableInterrupt","Icu_eMios_SetChConfig","Icu_eMios_UCSetMode","SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_20","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_20"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_DisableEdgeDetection"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_eMios_ClearChConfig","Icu_eMios_DisableInterrupt","Icu_eMios_UCSetMode"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_EnableEdgeDetection"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Icu_eMios_EnableInterrupt","Icu_eMios_SetChConfig","Icu_eMios_UCSetMode"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_SetNormalMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_eMios_EnableInterrupt"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_SetSleepMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_eMios_DisableInterrupt"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_DeInit"
	.wrcm.nint32 "frameSize", 112
	.wrcm.nstrlist "calls", "Icu_eMios_ClearChConfig","Icu_eMios_GetChConfig","Icu_eMios_GetMasterBus","eMios_StopChannel"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_Init"
	.wrcm.nint32 "frameSize", 384
	.wrcm.nstrlist "calls", "Icu_eMios_ClearChConfig","Icu_eMios_DisableInterrupt","Icu_eMios_GetMasterBus","Icu_eMios_SetActivationCondition","Icu_eMios_SetChConfig","eMios_StartChannel"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_SetActivationCondition"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_19","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_19"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_Timestamp"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Icu_Timestamp","Icu_eMios_GetCaptureRegA"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_SignalMeasurement"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Icu_ReportWakeupAndOverflow","Icu_SignalMeasurement","Icu_eMios_GetCaptureRegA","Icu_eMios_GetCaptureRegB","Icu_eMios_GetChConfig","Icu_eMios_ReadCounterBus","SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_23","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_23"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_ReadCounterBus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Icu_eMios_GetCaptureRegA","Icu_eMios_GetCaptureRegB","Icu_eMios_GetChConfig","Icu_eMios_GetChannelClockMode"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_GetMasterBus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Icu_eMios_GetChannelClockMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Icu_eMios_CheckOverflowFlag"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Icu_eMios_UCSetMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_17","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_17"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_DisableInterrupt"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_16","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_16"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_EnableInterrupt"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_15","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_15"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_ClearStatusFlags"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Icu_eMios_GetStatusFlags"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Icu_eMios_GetCaptureRegB"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Icu_eMios_GetCaptureRegA"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Icu_eMios_GetChConfig"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Icu_eMios_ClearChConfig"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_14","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_14"
	.wrcm.end
	.wrcm.nelem "Icu_eMios_SetChConfig"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SchM_Enter_Icu_ICU_EXCLUSIVE_AREA_13","SchM_Exit_Icu_ICU_EXCLUSIVE_AREA_13"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Icu_eMios.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Icu_eMios.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Icu_eMios.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Icu_eMios.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Icu_eMios.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Icu_eMios.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Icu\ssc\make\..\..\generator\integration_package\src\Icu_eMios.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
