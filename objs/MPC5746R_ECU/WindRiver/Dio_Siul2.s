#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Dio_Siul2.c"
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
# FUNC (Dio_LevelType, DIO_CODE) Dio_Siul2_ReadChannel
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Dio\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Dio_Siul2.c"
        .d2line         314,32
#$$ld
.L404:

#$$bf	Dio_Siul2_ReadChannel,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		Dio_Siul2_ReadChannel
	.d2_cfa_start __cie
Dio_Siul2_ReadChannel:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ChannelId=r3 ChannelId=r3
	.d2prologue_end
# (
#     CONST(Dio_ChannelType, AUTOMATIC) ChannelId
# )
# {
#     VAR(Dio_LevelType, AUTOMATIC) ChannelLevel = (Dio_LevelType) STD_LOW;
	.d2line		319
	diab.li		r4,0		# ChannelLevel=r4
# 
#     /** @violates @ref Dio_Siul2_C_REF_2 Cast from unsigned long to pointer */
#     /** @violates @ref Dio_Siul2_C_REF_6 A cast should not be performed between a pointer type and an integral type. */
#     ChannelLevel = (Dio_LevelType)(REG_READ8(SIUL2_GPDI_ADDR32(ChannelId)));
	.d2line		323
	rlwinm		r3,r3,0,16,31		# ChannelId=r3 ChannelId=r3
	diab.li		r4,-256768		# ChannelLevel=r4
.Llo3:
	se_add		r3,r4		# ChannelId=r3 ChannelId=r3 ChannelLevel=r4
	lbzx		r3,r0,r3		# ChannelId=r3
.Llo2:
	mr		r3,r3		# ChannelLevel=r3 ChannelLevel=r3
# 
#     return ChannelLevel;
	.d2line		325
	rlwinm		r3,r3,0,24,31		# ChannelLevel=r3 ChannelLevel=r3
# }
	.d2line		326
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo4:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L405:
	.type		Dio_Siul2_ReadChannel,@function
	.size		Dio_Siul2_ReadChannel,.-Dio_Siul2_ReadChannel
# Number of nodes = 12

# Allocations for Dio_Siul2_ReadChannel
#	?a4		ChannelId
#	?a5		ChannelLevel
# FUNC (void, DIO_CODE) Dio_Siul2_WriteChannel
	.align		2
	.section	.text_vle
        .d2line         341,23
#$$ld
.L420:

#$$bf	Dio_Siul2_WriteChannel,interprocedural,rasave,nostackparams
	.globl		Dio_Siul2_WriteChannel
	.d2_cfa_start __cie
Dio_Siul2_WriteChannel:
.Llo5:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# ChannelId=r31 ChannelId=r3
	mr		r30,r4		# Level=r30 Level=r4
	.d2prologue_end
# (
#     CONST(Dio_ChannelType, AUTOMATIC) ChannelId,
#     CONST(Dio_LevelType,   AUTOMATIC) Level
# )
# {
#     SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_01();
	.d2line		347
.Llo9:
	bl		SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_01
#     /** @violates @ref Dio_Siul2_C_REF_2 Cast from unsigned long to pointer */
#     /** @violates @ref Dio_Siul2_C_REF_6 A cast should not be performed between a pointer type and an integral type. */
#     REG_WRITE8(SIUL2_GPDO_ADDR32(ChannelId), Level);
	.d2line		350
.Llo6:
	rlwinm		r31,r31,0,16,31		# ChannelId=r31 ChannelId=r31
.Llo7:
	diab.li		r0,-257280
	se_add		r0,r31		# ChannelId=r31
	stbx		r30,r0,r0		# Level=r30
#     
#     SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_01();
	.d2line		352
	bl		SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_01
# }
	.d2line		353
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo8:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L421:
	.type		Dio_Siul2_WriteChannel,@function
	.size		Dio_Siul2_WriteChannel,.-Dio_Siul2_WriteChannel
# Number of nodes = 11

# Allocations for Dio_Siul2_WriteChannel
#	?a4		ChannelId
#	?a5		Level
# FUNC(Dio_LevelType, DIO_CODE) Dio_Siul2_FlipChannel
	.align		2
	.section	.text_vle
        .d2line         377,31
#$$ld
.L428:

#$$bf	Dio_Siul2_FlipChannel,interprocedural,rasave,nostackparams
	.globl		Dio_Siul2_FlipChannel
	.d2_cfa_start __cie
Dio_Siul2_FlipChannel:
.Llo10:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo14:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# ChannelLevel=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# ChannelId=r31 ChannelId=r3
	.d2prologue_end
# (
#     CONST(Dio_ChannelType, AUTOMATIC) ChannelId
# )
# {
#     VAR(Dio_LevelType, AUTOMATIC) ChannelLevel = (Dio_LevelType)STD_LOW;
	.d2line		382
.Llo11:
	diab.li		r0,0		# ChannelLevel=r0
# 
#     SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_00();
	.d2line		384
.Llo12:
	bl		SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_00
# 
#     /** @violates @ref Dio_Siul2_C_REF_2 Cast from unsigned long to pointer */
#     /** @violates @ref Dio_Siul2_C_REF_6 A cast should not be performed between a pointer type and an integral type. */
#     if ((Dio_LevelType)STD_LOW == (Dio_LevelType)(REG_READ8(SIUL2_GPDO_ADDR32(ChannelId))))
	.d2line		388
	rlwinm		r3,r31,0,16,31		# ChannelLevel=r3 ChannelId=r31
.Llo15:
	diab.li		r0,-257280		# ChannelLevel=r0
	se_add		r0,r3		# ChannelLevel=r0 ChannelLevel=r0 ChannelLevel=r3
	lbzx		r0,r0,r0		# ChannelLevel=r0 ChannelLevel=r0
	se_cmpi		r0,0		# ChannelLevel=r0
#     {
#         ChannelLevel = (Dio_LevelType)STD_HIGH;
	.d2line		390
	diab.li		r3,1		# ChannelLevel=r3
.Llo16:
	isel		r3,r3,r0,2		# ChannelLevel=r3 ChannelLevel=r3 ChannelLevel=r0
.L393:
#     }
#     else
#     {
#         ChannelLevel = (Dio_LevelType)STD_LOW;
	.d2line		394
.Llo17:
	diab.li		r0,0		# ChannelLevel=r0
	isel		r4,r3,r0,2		# ChannelLevel=r4 ChannelLevel=r3 ChannelLevel=r0
.L394:
#     }
# 
#     /** @violates @ref Dio_Siul2_C_REF_2 Cast from unsigned long to pointer */
#     /** @violates @ref Dio_Siul2_C_REF_6 A cast should not be performed between a pointer type and an integral type. */
#     REG_WRITE8(SIUL2_GPDO_ADDR32(ChannelId), ChannelLevel);
	.d2line		399
.Llo18:
	rlwinm		r3,r31,0,16,31		# ChannelLevel=r3 ChannelId=r31
.Llo19:
	diab.li		r0,-257280		# ChannelLevel=r0
	se_add		r0,r3		# ChannelLevel=r0 ChannelLevel=r0 ChannelLevel=r3
	stbx		r4,r0,r0		# ChannelLevel=r0 ChannelLevel=r4
# 
#     SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_00();
	.d2line		401
	bl		SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_00
# 
#     /** @violates @ref Dio_Siul2_C_REF_2 Cast from unsigned long to pointer */
#     /** @violates @ref Dio_Siul2_C_REF_6 A cast should not be performed between a pointer type and an integral type. */
#     ChannelLevel = (Dio_LevelType)(REG_READ8(SIUL2_GPDI_ADDR32(ChannelId)));
	.d2line		405
.Llo20:
	rlwinm		r31,r31,0,16,31		# ChannelId=r31 ChannelId=r31
	diab.li		r3,-256768		# ChannelLevel=r3
.Llo21:
	se_add		r3,r31		# ChannelLevel=r3 ChannelLevel=r3 ChannelId=r31
	lbzx		r3,r0,r3		# ChannelLevel=r3 ChannelLevel=r0
	mr		r3,r3		# ChannelLevel=r3 ChannelLevel=r3
# 
#    return ChannelLevel;
	.d2line		407
	rlwinm		r3,r3,0,24,31		# ChannelLevel=r3 ChannelLevel=r3
# }
	.d2line		408
	.d2epilogue_begin
.Llo22:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo13:
	lwz		r0,36(r1)		# ChannelLevel=r0
	mtspr		lr,r0		# ChannelLevel=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L429:
	.type		Dio_Siul2_FlipChannel,@function
	.size		Dio_Siul2_FlipChannel,.-Dio_Siul2_FlipChannel
# Number of nodes = 38

# Allocations for Dio_Siul2_FlipChannel
#	?a4		ChannelId
#	?a5		ChannelLevel
# FUNC (Dio_PortLevelType, DIO_CODE) Dio_Siul2_ReadPort
	.align		2
	.section	.text_vle
        .d2line         421,36
#$$ld
.L436:

#$$bf	Dio_Siul2_ReadPort,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		Dio_Siul2_ReadPort
	.d2_cfa_start __cie
Dio_Siul2_ReadPort:
.Llo23:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# PortId=r3 PortId=r3
	.d2prologue_end
# (
#     CONST(Dio_PortType, AUTOMATIC) PortId
# )
# {
#     VAR(Dio_PortLevelType, AUTOMATIC) PortLevel = (Dio_PortLevelType)STD_LOW;
	.d2line		426
	diab.li		r4,0		# PortLevel=r4
# 
#     /** @violates @ref Dio_Siul2_C_REF_2 Cast from unsigned long to pointer */
#     /** @violates @ref Dio_Siul2_C_REF_6 A cast should not be performed between a pointer type and an integral type. */
#     PortLevel = (Dio_PortLevelType)(REG_READ16(SIUL2_PGPDI_ADDR32((uint32)PortId)));
	.d2line		430
	rlwinm		r3,r3,1,23,30		# PortId=r3 PortId=r3
	diab.li		r4,-256192		# PortLevel=r4
.Llo25:
	se_add		r3,r4		# PortId=r3 PortId=r3 PortLevel=r4
	lhzx		r3,r0,r3		# PortId=r3
.Llo24:
	mr		r3,r3		# PortLevel=r3 PortLevel=r3
# 
# #if (LOW_BYTE_FIRST == CPU_BYTE_ORDER)
#     PortLevel = (Dio_PortLevelType)(Dio_Siul2_ReverseBits(PortLevel));
# #if (STD_ON == DIO_READZERO_UNDEFINEDPORTS)
#     PortLevel = (Dio_PortLevelType)(PortLevel & Dio_Siul2_ReverseBits(Dio_aAvailablePinsForRead[PortId]));
# #endif
# #else
# #if (STD_ON == DIO_READZERO_UNDEFINEDPORTS)
#     PortLevel = (Dio_PortLevelType)(PortLevel & Dio_aAvailablePinsForRead[PortId]);
# #endif
# #endif
# 
# #if (STD_ON == DIO_REVERSEPORTBITS)
#     PortLevel = (Dio_PortLevelType)(Dio_Siul2_ReverseBits(PortLevel));
# #endif
# 
#      return PortLevel;
	.d2line		447
	rlwinm		r3,r3,0,16,31		# PortLevel=r3 PortLevel=r3
# }
	.d2line		448
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo26:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L437:
	.type		Dio_Siul2_ReadPort,@function
	.size		Dio_Siul2_ReadPort,.-Dio_Siul2_ReadPort
# Number of nodes = 14

# Allocations for Dio_Siul2_ReadPort
#	?a4		PortId
#	?a5		PortLevel
# FUNC (void, DIO_CODE) Dio_Siul2_WritePort
	.align		2
	.section	.text_vle
        .d2line         459,23
#$$ld
.L447:

#$$bf	Dio_Siul2_WritePort,interprocedural,nostackparams

# Regs written: r0,r1,r3,r5,lr
	.globl		Dio_Siul2_WritePort
	.d2_cfa_start __cie
Dio_Siul2_WritePort:
.Llo27:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# PortId=r5 PortId=r3
	mr		r3,r4		# Level=r3 Level=r4
	.d2prologue_end
# (
#     CONST(Dio_PortType,      AUTOMATIC) PortId,
#     CONST(Dio_PortLevelType, AUTOMATIC) Level
# )
# {
#     VAR(Dio_PortLevelType, AUTOMATIC) CrtLevel = Level;
	.d2line		465
.Llo28:
	mr		r3,r3		# CrtLevel=r3 CrtLevel=r3
# 
# #if (LOW_BYTE_FIRST == CPU_BYTE_ORDER)
#     CrtLevel = (Dio_PortLevelType)(Dio_Siul2_ReverseBits(CrtLevel));
# #endif
# 
# #if (STD_ON == DIO_REVERSEPORTBITS)
#     CrtLevel = (Dio_PortLevelType)(Dio_Siul2_ReverseBits(CrtLevel));
# #endif
# 
#     /** @violates @ref Dio_Siul2_C_REF_2 Cast from unsigned long to pointer */
#     /** @violates @ref Dio_Siul2_C_REF_6 A cast should not be performed between a pointer type and an integral type. */
#     REG_WRITE16(SIUL2_PGPDO_ADDR32((uint32)PortId), CrtLevel);
	.d2line		477
.Llo29:
	rlwinm		r5,r5,1,23,30		# PortId=r5 PortId=r5
	diab.li		r3,-256256		# Level=r3
	se_add		r3,r5		# Level=r3 Level=r3 PortId=r5
	sthx		r4,r0,r3		# Level=r4
# }
	.d2line		478
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
.L448:
	.type		Dio_Siul2_WritePort,@function
	.size		Dio_Siul2_WritePort,.-Dio_Siul2_WritePort
# Number of nodes = 12

# Allocations for Dio_Siul2_WritePort
#	?a4		PortId
#	?a5		Level
#	?a6		CrtLevel
# FUNC (Dio_PortLevelType, DIO_CODE) Dio_Siul2_ReadChannelGroup
	.align		2
	.section	.text_vle
        .d2line         489,36
#$$ld
.L457:

#$$bf	Dio_Siul2_ReadChannelGroup,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,xer
	.globl		Dio_Siul2_ReadChannelGroup
	.d2_cfa_start __cie
Dio_Siul2_ReadChannelGroup:
.Llo31:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# pChannelGroupIdPtr=r5 pChannelGroupIdPtr=r3
	.d2prologue_end
# (
#     P2CONST(Dio_ChannelGroupType, AUTOMATIC, DIO_APPL_CONST) pChannelGroupIdPtr
# )
# {
#     VAR(Dio_PortLevelType, AUTOMATIC) PortLevel = (Dio_PortLevelType)STD_LOW;
	.d2line		494
.Llo32:
	diab.li		r3,0		# PortLevel=r3
# 
# #if (LOW_BYTE_FIRST == CPU_BYTE_ORDER)
#     /** @violates @ref Dio_Siul2_C_REF_2 Cast from unsigned long to pointer */
#     /** @violates @ref Dio_Siul2_C_REF_6 A cast should not be performed between a pointer type and an integral type. */
#     PortLevel = REG_READ16(SIUL2_PGPDI_ADDR32((uint32)(pChannelGroupIdPtr->port)));    
# #if (STD_ON == DIO_REVERSEPORTBITS)    
#     PortLevel = (Dio_PortLevelType)((PortLevel & Dio_Siul2_ReverseBits(pChannelGroupIdPtr->mask)) >> (pChannelGroupIdPtr->offset));
# #else
#     PortLevel = (Dio_PortLevelType)(Dio_Siul2_ReverseBits(PortLevel));
#     PortLevel = (Dio_PortLevelType)((PortLevel & (pChannelGroupIdPtr->mask)) >> (pChannelGroupIdPtr->offset));
# #endif
# #else
# #if (STD_ON == DIO_REVERSEPORTBITS)
#     /** @violates @ref Dio_Siul2_C_REF_2 Cast from unsigned long to pointer */
#     /** @violates @ref Dio_Siul2_C_REF_6 A cast should not be performed between a pointer type and an integral type. */
#     PortLevel = REG_READ16(SIUL2_PGPDI_ADDR32((uint32)(pChannelGroupIdPtr->port))) & (pChannelGroupIdPtr->mask);
#     PortLevel = (Dio_PortLevelType)((uint32)(PortLevel) << (pChannelGroupIdPtr->offset));
#     PortLevel = (Dio_PortLevelType)(Dio_Siul2_ReverseBits(PortLevel));
# #else
#     /** @violates @ref Dio_Siul2_C_REF_2 Cast from unsigned long to pointer */
#     /** @violates @ref Dio_Siul2_C_REF_6 A cast should not be performed between a pointer type and an integral type. */
#     PortLevel = (Dio_PortLevelType)((REG_READ16(SIUL2_PGPDI_ADDR32((uint32)(pChannelGroupIdPtr->port))) & (pChannelGroupIdPtr->mask)) >> (pChannelGroupIdPtr->offset));
	.d2line		516
.Llo33:
	lbz		r3,0(r5)		# PortLevel=r3 pChannelGroupIdPtr=r5
.Llo35:
	rlwinm		r3,r3,1,23,30		# PortLevel=r3 PortLevel=r3
	diab.li		r4,-256192
	se_add		r3,r4		# PortLevel=r3 PortLevel=r3
.Llo36:
	lhzx		r4,r0,r3
	lhz		r3,2(r5)		# PortLevel=r3 pChannelGroupIdPtr=r5
.Llo37:
	and		r3,r3,r4		# PortLevel=r3 PortLevel=r3
	lbz		r4,1(r5)		# pChannelGroupIdPtr=r5
	sraw		r3,r3,r4		# PortLevel=r3 PortLevel=r3
	mr		r3,r3		# PortLevel=r3 PortLevel=r3
# #endif
# #endif
#     return PortLevel;
	.d2line		519
	rlwinm		r3,r3,0,16,31		# PortLevel=r3 PortLevel=r3
# }
	.d2line		520
	.d2epilogue_begin
.Llo38:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo34:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L458:
	.type		Dio_Siul2_ReadChannelGroup,@function
	.size		Dio_Siul2_ReadChannelGroup,.-Dio_Siul2_ReadChannelGroup
# Number of nodes = 29

# Allocations for Dio_Siul2_ReadChannelGroup
#	?a4		pChannelGroupIdPtr
#	?a5		PortLevel
# FUNC (void, DIO_CODE) Dio_Siul2_WriteChannelGroup
	.align		2
	.section	.text_vle
        .d2line         537,23
#$$ld
.L469:

#$$bf	Dio_Siul2_WriteChannelGroup,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Dio_Siul2_WriteChannelGroup
	.d2_cfa_start __cie
Dio_Siul2_WriteChannelGroup:
.Llo39:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pChannelGroupIdPtr=r3 pChannelGroupIdPtr=r3
	mr		r4,r4		# Level=r4 Level=r4
	.d2prologue_end
# (
#     P2CONST(Dio_ChannelGroupType, AUTOMATIC, DIO_APPL_CONST) pChannelGroupIdPtr,
#     CONST  (Dio_PortLevelType,    AUTOMATIC)                 Level
# )
# {
#     VAR(uint32, AUTOMATIC) u32Value;
# #if (LOW_BYTE_FIRST == CPU_BYTE_ORDER)
#     VAR(uint16, AUTOMATIC) u16MpgpdoMppdo;
#     VAR(uint16, AUTOMATIC) u16MpgpdoMask;
# #endif
# 
# #if (LOW_BYTE_FIRST == CPU_BYTE_ORDER)
#    
#     u16MpgpdoMppdo = (Dio_PortLevelType)((uint32)Level << pChannelGroupIdPtr->offset);
# #if (STD_ON != DIO_REVERSEPORTBITS)
#     u16MpgpdoMppdo = Dio_Siul2_ReverseBits(u16MpgpdoMppdo);
# #endif
#     u16MpgpdoMask  = Dio_Siul2_ReverseBits(pChannelGroupIdPtr->mask);
#     u32Value = ((((uint32)(u16MpgpdoMppdo)) & SIUL2_MPGPDO_MPPDO_MASK_U32) | (((uint32)(u16MpgpdoMask)) << SIUL2_MPGPDO_MASK_SHIFT_U8));
# #else
# #if (STD_ON == DIO_REVERSEPORTBITS)
#     u32Value = ((((uint32)(Dio_Siul2_ReverseBits(Level)) >> (pChannelGroupIdPtr->offset)) & (SIUL2_MPGPDO_MPPDO_MASK_U32)) | \
#                 (((uint32)(pChannelGroupIdPtr->mask) << (SIUL2_MPGPDO_MASK_SHIFT_U8))) \
#                );
# #else
#     u32Value = ((((uint32)(Level) << (pChannelGroupIdPtr->offset)) & (SIUL2_MPGPDO_MPPDO_MASK_U32)) | \
	.d2line		563
	rlwinm		r4,r4,0,16,31		# Level=r4 Level=r4
	lbz		r5,1(r3)		# pChannelGroupIdPtr=r3
	slw		r4,r4,r5		# Level=r4 Level=r4
	rlwinm		r5,r4,0,16,31		# Level=r4
	lhz		r4,2(r3)		# Level=r4 pChannelGroupIdPtr=r3
	se_slwi		r4,16		# Level=r4 Level=r4
	or		r4,r4,r5		# Level=r4 Level=r4
.Llo41:
	mr		r4,r4		# u32Value=r4 u32Value=r4
#                 (((uint32)(pChannelGroupIdPtr->mask) << (SIUL2_MPGPDO_MASK_SHIFT_U8))) \
#                );
# #endif
# #endif
#     /** @violates @ref Dio_Siul2_C_REF_2 Cast from unsigned long to pointer */
#     /** @violates @ref Dio_Siul2_C_REF_6 A cast should not be performed between a pointer type and an integral type. */
#     REG_WRITE32(SIUL2_MPGPDO_ADDR32(SIUL2_MPGPDO_MULTIPLIER_U32((uint32)pChannelGroupIdPtr->port)), u32Value);
	.d2line		570
	lbz		r3,0(r3)		# pChannelGroupIdPtr=r3 pChannelGroupIdPtr=r3
	rlwinm		r3,r3,2,22,29		# pChannelGroupIdPtr=r3 pChannelGroupIdPtr=r3
	diab.li		r5,-256128
	se_add		r3,r5		# pChannelGroupIdPtr=r3 pChannelGroupIdPtr=r3
.Llo40:
	stwx		r4,r0,r3		# u32Value=r4
# }
	.d2line		571
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo42:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L470:
	.type		Dio_Siul2_WriteChannelGroup,@function
	.size		Dio_Siul2_WriteChannelGroup,.-Dio_Siul2_WriteChannelGroup
# Number of nodes = 30

# Allocations for Dio_Siul2_WriteChannelGroup
#	?a4		pChannelGroupIdPtr
#	?a5		Level
#	?a6		u32Value
# FUNC (void, DIO_CODE) Dio_Siul2_MaskedWritePort
	.align		2
	.section	.text_vle
        .d2line         587,23
#$$ld
.L480:

#$$bf	Dio_Siul2_MaskedWritePort,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Dio_Siul2_MaskedWritePort
	.d2_cfa_start __cie
Dio_Siul2_MaskedWritePort:
.Llo43:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# PortId=r3 PortId=r3
	mr		r4,r4		# Level=r4 Level=r4
	mr		r5,r5		# Mask=r5 Mask=r5
	.d2prologue_end
# (
#     CONST(Dio_PortType,      AUTOMATIC) PortId,
#     CONST(Dio_PortLevelType, AUTOMATIC) Level,
#     CONST(Dio_PortLevelType, AUTOMATIC) Mask
# )
# {
#     VAR(uint32, AUTOMATIC) u32Value;
# #if (LOW_BYTE_FIRST == CPU_BYTE_ORDER)
#     VAR(uint16, AUTOMATIC) u16MpgpdoMppdo;
#     VAR(uint16, AUTOMATIC) u16MpgpdoMask;
# #endif
# 
# #if (LOW_BYTE_FIRST == CPU_BYTE_ORDER)
#     u16MpgpdoMppdo = Dio_Siul2_ReverseBits(Level);
#     u16MpgpdoMask  = Dio_Siul2_ReverseBits(Mask);
#     u32Value = (((uint32)u16MpgpdoMask << (SIUL2_MPGPDO_MASK_SHIFT_U8)) | (uint32)u16MpgpdoMppdo);
# #else
#     u32Value = (((uint32) Mask << (SIUL2_MPGPDO_MASK_SHIFT_U8)) | (uint32)Level);
	.d2line		605
	se_slwi		r5,16		# Mask=r5 Mask=r5
	rlwinm		r4,r4,0,16,31		# Level=r4 Level=r4
	or		r4,r4,r5		# Level=r4 Level=r4 Mask=r5
.Llo45:
	mr		r4,r4		# u32Value=r4 u32Value=r4
# #endif
# 
#     /** @violates @ref Dio_Siul2_C_REF_2 Cast from unsigned long to pointer */
#     /** @violates @ref Dio_Siul2_C_REF_6 A cast should not be performed between a pointer type and an integral type. */
#     REG_WRITE32(SIUL2_MPGPDO_ADDR32(SIUL2_MPGPDO_MULTIPLIER_U32((uint32)PortId)), u32Value);
	.d2line		610
	rlwinm		r3,r3,2,22,29		# PortId=r3 PortId=r3
	diab.li		r5,-256128		# Mask=r5
	se_add		r3,r5		# PortId=r3 PortId=r3 Mask=r5
.Llo44:
	stwx		r4,r0,r3		# u32Value=r4
# }
	.d2line		611
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo46:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L481:
	.type		Dio_Siul2_MaskedWritePort,@function
	.size		Dio_Siul2_MaskedWritePort,.-Dio_Siul2_MaskedWritePort
# Number of nodes = 18

# Allocations for Dio_Siul2_MaskedWritePort
#	?a4		PortId
#	?a5		Level
#	?a6		Mask
#	?a7		u32Value

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L488:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L406:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Dio\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Dio_Siul2.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Dio\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Dio_Siul2.c"
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
.L410:
	.sleb128	2
	.4byte		.L403-.L2
	.byte		"Dio_Siul2_ReadChannel"
	.byte		0
	.4byte		.L406
	.uleb128	314
	.uleb128	32
	.4byte		.L407
	.byte		0x1
	.byte		0x1
	.4byte		.L404
	.4byte		.L405
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L406
	.uleb128	314
	.uleb128	32
	.byte		"ChannelId"
	.byte		0
	.4byte		.L411
	.4byte		.L415
	.section	.debug_info,,n
.L416:
	.sleb128	4
	.4byte		.L406
	.uleb128	319
	.uleb128	35
	.byte		"ChannelLevel"
	.byte		0
	.4byte		.L407
	.4byte		.L417
	.section	.debug_info,,n
	.sleb128	0
.L403:
	.section	.debug_info,,n
.L422:
	.sleb128	5
	.4byte		.L419-.L2
	.byte		"Dio_Siul2_WriteChannel"
	.byte		0
	.4byte		.L406
	.uleb128	341
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L420
	.4byte		.L421
	.sleb128	3
	.4byte		.L406
	.uleb128	341
	.uleb128	23
	.byte		"ChannelId"
	.byte		0
	.4byte		.L411
	.4byte		.L423
	.sleb128	3
	.4byte		.L406
	.uleb128	341
	.uleb128	23
	.byte		"Level"
	.byte		0
	.4byte		.L424
	.4byte		.L425
	.section	.debug_info,,n
	.sleb128	0
.L419:
	.section	.debug_info,,n
.L430:
	.sleb128	2
	.4byte		.L427-.L2
	.byte		"Dio_Siul2_FlipChannel"
	.byte		0
	.4byte		.L406
	.uleb128	377
	.uleb128	31
	.4byte		.L407
	.byte		0x1
	.byte		0x1
	.4byte		.L428
	.4byte		.L429
	.sleb128	3
	.4byte		.L406
	.uleb128	377
	.uleb128	31
	.byte		"ChannelId"
	.byte		0
	.4byte		.L411
	.4byte		.L431
.L432:
	.sleb128	4
	.4byte		.L406
	.uleb128	382
	.uleb128	35
	.byte		"ChannelLevel"
	.byte		0
	.4byte		.L407
	.4byte		.L433
	.section	.debug_info,,n
	.sleb128	0
.L427:
	.section	.debug_info,,n
.L439:
	.sleb128	2
	.4byte		.L435-.L2
	.byte		"Dio_Siul2_ReadPort"
	.byte		0
	.4byte		.L406
	.uleb128	421
	.uleb128	36
	.4byte		.L438
	.byte		0x1
	.byte		0x1
	.4byte		.L436
	.4byte		.L437
	.sleb128	3
	.4byte		.L406
	.uleb128	421
	.uleb128	36
	.byte		"PortId"
	.byte		0
	.4byte		.L440
	.4byte		.L442
.L443:
	.sleb128	4
	.4byte		.L406
	.uleb128	426
	.uleb128	39
	.byte		"PortLevel"
	.byte		0
	.4byte		.L438
	.4byte		.L444
	.section	.debug_info,,n
	.sleb128	0
.L435:
	.section	.debug_info,,n
.L449:
	.sleb128	5
	.4byte		.L446-.L2
	.byte		"Dio_Siul2_WritePort"
	.byte		0
	.4byte		.L406
	.uleb128	459
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L447
	.4byte		.L448
	.sleb128	3
	.4byte		.L406
	.uleb128	459
	.uleb128	23
	.byte		"PortId"
	.byte		0
	.4byte		.L440
	.4byte		.L450
	.sleb128	3
	.4byte		.L406
	.uleb128	459
	.uleb128	23
	.byte		"Level"
	.byte		0
	.4byte		.L451
	.4byte		.L452
.L453:
	.sleb128	4
	.4byte		.L406
	.uleb128	465
	.uleb128	39
	.byte		"CrtLevel"
	.byte		0
	.4byte		.L438
	.4byte		.L454
	.section	.debug_info,,n
	.sleb128	0
.L446:
	.section	.debug_info,,n
.L459:
	.sleb128	2
	.4byte		.L456-.L2
	.byte		"Dio_Siul2_ReadChannelGroup"
	.byte		0
	.4byte		.L406
	.uleb128	489
	.uleb128	36
	.4byte		.L438
	.byte		0x1
	.byte		0x1
	.4byte		.L457
	.4byte		.L458
	.sleb128	3
	.4byte		.L406
	.uleb128	489
	.uleb128	36
	.byte		"pChannelGroupIdPtr"
	.byte		0
	.4byte		.L460
	.4byte		.L464
.L465:
	.sleb128	4
	.4byte		.L406
	.uleb128	494
	.uleb128	39
	.byte		"PortLevel"
	.byte		0
	.4byte		.L438
	.4byte		.L466
	.section	.debug_info,,n
	.sleb128	0
.L456:
	.section	.debug_info,,n
.L471:
	.sleb128	5
	.4byte		.L468-.L2
	.byte		"Dio_Siul2_WriteChannelGroup"
	.byte		0
	.4byte		.L406
	.uleb128	537
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L469
	.4byte		.L470
	.sleb128	3
	.4byte		.L406
	.uleb128	537
	.uleb128	23
	.byte		"pChannelGroupIdPtr"
	.byte		0
	.4byte		.L460
	.4byte		.L472
	.sleb128	3
	.4byte		.L406
	.uleb128	537
	.uleb128	23
	.byte		"Level"
	.byte		0
	.4byte		.L451
	.4byte		.L473
.L474:
	.sleb128	4
	.4byte		.L406
	.uleb128	543
	.uleb128	28
	.byte		"u32Value"
	.byte		0
	.4byte		.L475
	.4byte		.L477
	.section	.debug_info,,n
	.sleb128	0
.L468:
	.section	.debug_info,,n
.L482:
	.sleb128	5
	.4byte		.L479-.L2
	.byte		"Dio_Siul2_MaskedWritePort"
	.byte		0
	.4byte		.L406
	.uleb128	587
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L480
	.4byte		.L481
	.sleb128	3
	.4byte		.L406
	.uleb128	587
	.uleb128	23
	.byte		"PortId"
	.byte		0
	.4byte		.L440
	.4byte		.L483
	.sleb128	3
	.4byte		.L406
	.uleb128	587
	.uleb128	23
	.byte		"Level"
	.byte		0
	.4byte		.L451
	.4byte		.L484
	.sleb128	3
	.4byte		.L406
	.uleb128	587
	.uleb128	23
	.byte		"Mask"
	.byte		0
	.4byte		.L451
	.4byte		.L485
.L486:
	.sleb128	4
	.4byte		.L406
	.uleb128	594
	.uleb128	28
	.byte		"u32Value"
	.byte		0
	.4byte		.L475
	.4byte		.L487
	.section	.debug_info,,n
	.sleb128	0
.L479:
	.section	.debug_info,,n
.L463:
	.sleb128	6
	.4byte		.L488
	.uleb128	111
	.uleb128	7
	.4byte		.L489-.L2
	.uleb128	4
	.section	.debug_info,,n
.L216:
	.sleb128	7
	.byte		"port"
	.byte		0
	.4byte		.L441
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L217:
	.sleb128	7
	.byte		"offset"
	.byte		0
	.4byte		.L408
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L218:
	.sleb128	7
	.byte		"mask"
	.byte		0
	.4byte		.L438
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L489:
	.section	.debug_info,,n
.L409:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L408:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L409
.L407:
	.sleb128	9
	.byte		"Dio_LevelType"
	.byte		0
	.4byte		.L408
.L414:
	.sleb128	8
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L413:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L414
.L412:
	.sleb128	9
	.byte		"Dio_ChannelType"
	.byte		0
	.4byte		.L413
	.section	.debug_info,,n
.L411:
	.sleb128	10
	.4byte		.L412
.L424:
	.sleb128	10
	.4byte		.L407
.L438:
	.sleb128	9
	.byte		"Dio_PortLevelType"
	.byte		0
	.4byte		.L413
.L441:
	.sleb128	9
	.byte		"Dio_PortType"
	.byte		0
	.4byte		.L408
.L440:
	.sleb128	10
	.4byte		.L441
.L451:
	.sleb128	10
	.4byte		.L438
.L462:
	.sleb128	9
	.byte		"Dio_ChannelGroupType"
	.byte		0
	.4byte		.L463
.L461:
	.sleb128	10
	.4byte		.L462
	.section	.debug_info,,n
.L460:
	.sleb128	11
	.4byte		.L461
.L476:
	.sleb128	8
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L475:
	.sleb128	9
	.byte		"uint32"
	.byte		0
	.4byte		.L476
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L415:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L417:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),4
	.d2locend
.L423:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),31
	.d2locend
.L425:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo9),4
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo8),30
	.d2locend
.L431:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),31
	.d2locend
.L433:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo12),0
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),4
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locend
.L442:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locend
.L444:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),4
	.d2locend
.L450:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),5
	.d2locend
.L452:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo30),4
	.d2locend
.L454:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locend
.L464:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),5
	.d2locend
.L466:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),3
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locend
.L472:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),3
	.d2locend
.L473:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo41),4
	.d2locend
.L477:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),4
	.d2locend
.L483:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),3
	.d2locend
.L484:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo45),4
	.d2locend
.L485:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo46),5
	.d2locend
.L487:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Dio_Siul2_MaskedWritePort"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dio_Siul2_WriteChannelGroup"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dio_Siul2_ReadChannelGroup"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dio_Siul2_WritePort"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dio_Siul2_ReadPort"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dio_Siul2_FlipChannel"
	.wrcm.nstrlist "calls", "SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_00","SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_00"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Dio_Siul2_WriteChannel"
	.wrcm.nstrlist "calls", "SchM_Enter_Dio_DIO_EXCLUSIVE_AREA_01","SchM_Exit_Dio_DIO_EXCLUSIVE_AREA_01"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Dio_Siul2_ReadChannel"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dio_Siul2.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dio_Siul2.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dio_Siul2.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dio_Siul2.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dio_Siul2.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dio_Siul2.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Dio\ssc\make\..\..\generator\integration_package\src\Dio_Siul2.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
