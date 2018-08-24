#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Dem_Lcfg.c"
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
# static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry01(void)
	.align		1
	.section	.text_vle
	.d2file		"gen\\MPC5746R_ECU\\WindRiver\\Dem_Lcfg.c"
        .d2line         453,29
#$$ld
.L300:

#$$bf	Dem_NvResetPrimaryEvMemEntry01,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Dem_NvResetPrimaryEvMemEntry01:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)0U);
	.d2line		455
	diab.li		r3,0
	diab.li		r4,0
	bl		Dem_NvResetEvMemEntry
# }
	.d2line		456
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
.L301:
	.type		Dem_NvResetPrimaryEvMemEntry01,@function
	.size		Dem_NvResetPrimaryEvMemEntry01,.-Dem_NvResetPrimaryEvMemEntry01
# Number of nodes = 6

# Allocations for Dem_NvResetPrimaryEvMemEntry01
# static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry02(void)
	.align		1
	.section	.text_vle
        .d2line         458,29
#$$ld
.L306:

#$$bf	Dem_NvResetPrimaryEvMemEntry02,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Dem_NvResetPrimaryEvMemEntry02:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)1U);
	.d2line		460
	diab.li		r3,0
	diab.li		r4,1
	bl		Dem_NvResetEvMemEntry
# }
	.d2line		461
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
.L307:
	.type		Dem_NvResetPrimaryEvMemEntry02,@function
	.size		Dem_NvResetPrimaryEvMemEntry02,.-Dem_NvResetPrimaryEvMemEntry02
# Number of nodes = 6

# Allocations for Dem_NvResetPrimaryEvMemEntry02
# static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry03(void)
	.align		1
	.section	.text_vle
        .d2line         463,29
#$$ld
.L311:

#$$bf	Dem_NvResetPrimaryEvMemEntry03,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Dem_NvResetPrimaryEvMemEntry03:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)2U);
	.d2line		465
	diab.li		r3,0
	diab.li		r4,2
	bl		Dem_NvResetEvMemEntry
# }
	.d2line		466
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
.L312:
	.type		Dem_NvResetPrimaryEvMemEntry03,@function
	.size		Dem_NvResetPrimaryEvMemEntry03,.-Dem_NvResetPrimaryEvMemEntry03
# Number of nodes = 6

# Allocations for Dem_NvResetPrimaryEvMemEntry03
# static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry04(void)
	.align		1
	.section	.text_vle
        .d2line         468,29
#$$ld
.L316:

#$$bf	Dem_NvResetPrimaryEvMemEntry04,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Dem_NvResetPrimaryEvMemEntry04:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)3U);
	.d2line		470
	diab.li		r3,0
	diab.li		r4,3
	bl		Dem_NvResetEvMemEntry
# }
	.d2line		471
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
.L317:
	.type		Dem_NvResetPrimaryEvMemEntry04,@function
	.size		Dem_NvResetPrimaryEvMemEntry04,.-Dem_NvResetPrimaryEvMemEntry04
# Number of nodes = 6

# Allocations for Dem_NvResetPrimaryEvMemEntry04
# static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry05(void)
	.align		1
	.section	.text_vle
        .d2line         473,29
#$$ld
.L321:

#$$bf	Dem_NvResetPrimaryEvMemEntry05,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Dem_NvResetPrimaryEvMemEntry05:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)4U);
	.d2line		475
	diab.li		r3,0
	diab.li		r4,4
	bl		Dem_NvResetEvMemEntry
# }
	.d2line		476
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
.L322:
	.type		Dem_NvResetPrimaryEvMemEntry05,@function
	.size		Dem_NvResetPrimaryEvMemEntry05,.-Dem_NvResetPrimaryEvMemEntry05
# Number of nodes = 6

# Allocations for Dem_NvResetPrimaryEvMemEntry05
# static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry06(void)
	.align		1
	.section	.text_vle
        .d2line         478,29
#$$ld
.L326:

#$$bf	Dem_NvResetPrimaryEvMemEntry06,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Dem_NvResetPrimaryEvMemEntry06:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)5U);
	.d2line		480
	diab.li		r3,0
	diab.li		r4,5
	bl		Dem_NvResetEvMemEntry
# }
	.d2line		481
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
.L327:
	.type		Dem_NvResetPrimaryEvMemEntry06,@function
	.size		Dem_NvResetPrimaryEvMemEntry06,.-Dem_NvResetPrimaryEvMemEntry06
# Number of nodes = 6

# Allocations for Dem_NvResetPrimaryEvMemEntry06
# static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry07(void)
	.align		1
	.section	.text_vle
        .d2line         483,29
#$$ld
.L331:

#$$bf	Dem_NvResetPrimaryEvMemEntry07,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Dem_NvResetPrimaryEvMemEntry07:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)6U);
	.d2line		485
	diab.li		r3,0
	diab.li		r4,6
	bl		Dem_NvResetEvMemEntry
# }
	.d2line		486
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
.L332:
	.type		Dem_NvResetPrimaryEvMemEntry07,@function
	.size		Dem_NvResetPrimaryEvMemEntry07,.-Dem_NvResetPrimaryEvMemEntry07
# Number of nodes = 6

# Allocations for Dem_NvResetPrimaryEvMemEntry07
# static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry08(void)
	.align		1
	.section	.text_vle
        .d2line         488,29
#$$ld
.L336:

#$$bf	Dem_NvResetPrimaryEvMemEntry08,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Dem_NvResetPrimaryEvMemEntry08:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)7U);
	.d2line		490
	diab.li		r3,0
	diab.li		r4,7
	bl		Dem_NvResetEvMemEntry
# }
	.d2line		491
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
.L337:
	.type		Dem_NvResetPrimaryEvMemEntry08,@function
	.size		Dem_NvResetPrimaryEvMemEntry08,.-Dem_NvResetPrimaryEvMemEntry08
# Number of nodes = 6

# Allocations for Dem_NvResetPrimaryEvMemEntry08
# static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry09(void)
	.align		1
	.section	.text_vle
        .d2line         493,29
#$$ld
.L341:

#$$bf	Dem_NvResetPrimaryEvMemEntry09,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Dem_NvResetPrimaryEvMemEntry09:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)8U);
	.d2line		495
	diab.li		r3,0
	diab.li		r4,8
	bl		Dem_NvResetEvMemEntry
# }
	.d2line		496
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
.L342:
	.type		Dem_NvResetPrimaryEvMemEntry09,@function
	.size		Dem_NvResetPrimaryEvMemEntry09,.-Dem_NvResetPrimaryEvMemEntry09
# Number of nodes = 6

# Allocations for Dem_NvResetPrimaryEvMemEntry09
# static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry10(void)
	.align		1
	.section	.text_vle
        .d2line         498,29
#$$ld
.L346:

#$$bf	Dem_NvResetPrimaryEvMemEntry10,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Dem_NvResetPrimaryEvMemEntry10:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)9U);
	.d2line		500
	diab.li		r3,0
	diab.li		r4,9
	bl		Dem_NvResetEvMemEntry
# }
	.d2line		501
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
.L347:
	.type		Dem_NvResetPrimaryEvMemEntry10,@function
	.size		Dem_NvResetPrimaryEvMemEntry10,.-Dem_NvResetPrimaryEvMemEntry10
# Number of nodes = 6

# Allocations for Dem_NvResetPrimaryEvMemEntry10
# static FUNC(boolean, DEM_CODE) ClearIntDtcEventData(uint16 index, CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, uint8 eventIndexInCombDtc)
	.align		1
	.section	.text_vle
        .d2line         503,32
#$$ld
.L351:

#$$bf	ClearIntDtcEventData,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
ClearIntDtcEventData:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# index=r3 index=r3
	mr		r31,r4		# pEvMemEntry=r31 pEvMemEntry=r4
	mr		r30,r5		# eventIndexInCombDtc=r30 eventIndexInCombDtc=r5
	.d2prologue_end
# {
#    boolean retVal = TRUE;
	.d2line		505
	diab.li		r28,1		# retVal=r28
#    Dem_EventIdType eventId = GetEventFromIntDtcEventList(index); /* KW MISRA.PTR.ARITH */
	.d2line		506
	lis		r4,Dem_pPbCfg@ha
.Llo5:
	lwz		r4,Dem_pPbCfg@l(r4)
	lwz		r4,132(r4)
	rlwinm		r3,r3,1,15,30		# index=r3 index=r3
.Llo2:
	lhzx		r29,r4,r3		# eventId=r29
.Llo12:
	mr		r29,r29		# eventId=r29 eventId=r29
#    if (TRUE == Dem_ClearEventAllowed(eventId))
	.d2line		507
	rlwinm		r3,r29,0,16,31		# index=r3 eventId=r29
	bl		Dem_ClearEventAllowed
.Llo3:
	rlwinm		r3,r3,0,24,31		# index=r3 index=r3
	se_cmpi		r3,1		# index=r3
	bc		0,2,.L235	# ne
#    {
#       Dem_ClearEventData(eventId);
	.d2line		509
.Llo4:
	rlwinm		r3,r29,0,16,31		# index=r3 eventId=r29
	bl		Dem_ClearEventData
#       Dem_ClearPrestoredFF(eventId);
	.d2line		510
	rlwinm		r3,r29,0,16,31		# index=r3 eventId=r29
	bl		Dem_ClearPrestoredFF
#       if (pEvMemEntry != NULL_PTR)
	.d2line		511
	se_cmpi		r31,0		# pEvMemEntry=r31
	bc		1,2,.L237	# eq
#       {
#          pEvMemEntry->failure_counter[eventIndexInCombDtc] = 0U;
	.d2line		513
.Llo6:
	diab.li		r0,0
.Llo9:
	rlwinm		r30,r30,0,24,31		# eventIndexInCombDtc=r30 eventIndexInCombDtc=r30
.Llo7:
	se_add		r31,r30		# pEvMemEntry=r31 pEvMemEntry=r31 pEvMemEntry=r30
	stb		r0,21(r31)		# pEvMemEntry=r31
#          pEvMemEntry->healing_counter[eventIndexInCombDtc] = 0U;
	.d2line		514
	stb		r0,22(r31)		# pEvMemEntry=r31
	b		.L237
.L235:
#       }
#    }
#    else
#    {
#       retVal = FALSE;
	.d2line		519
.Llo8:
	diab.li		r28,0		# retVal=r28
.L237:
#    }
#    return retVal;
	.d2line		521
.Llo10:
	rlwinm		r3,r28,0,24,31		# index=r3 retVal=r28
# }
	.d2line		522
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo11:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L352:
	.type		ClearIntDtcEventData,@function
	.size		ClearIntDtcEventData,.-ClearIntDtcEventData
# Number of nodes = 60

# Allocations for ClearIntDtcEventData
#	?a4		index
#	?a5		pEvMemEntry
#	?a6		eventIndexInCombDtc
#	?a7		retVal
#	?a8		eventId
# FUNC(Dem_UdsStatusByteType, DEM_CODE) Dem_GetUdsStatusByIntDtc(uint16 intDtc)
	.align		2
	.section	.text_vle
        .d2line         679,39
#$$ld
.L374:

#$$bf	Dem_GetUdsStatusByIntDtc,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5
	.globl		Dem_GetUdsStatusByIntDtc
	.d2_cfa_start __cie
Dem_GetUdsStatusByIntDtc:
.Llo13:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# intDtc=r3 intDtc=r3
	.d2prologue_end
# {
#    return Dem_GetUdsStatus(GetEventFromIntDtcEventList(intDtc)); /* KW MISRA.PTR.ARITH */
	.d2line		681
	lis		r5,(Dem_NvUdsStatus-1)@ha
	e_add16i		r5,r5,(Dem_NvUdsStatus-1)@l
	lis		r4,Dem_pPbCfg@ha
	lwz		r4,Dem_pPbCfg@l(r4)
	lwz		r4,132(r4)
	rlwinm		r3,r3,1,15,30		# intDtc=r3 intDtc=r3
	lhzx		r3,r4,r3		# intDtc=r3
	lbzx		r3,r5,r3		# intDtc=r3
# }
	.d2line		682
	.d2epilogue_begin
.Llo14:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L375:
	.type		Dem_GetUdsStatusByIntDtc,@function
	.size		Dem_GetUdsStatusByIntDtc,.-Dem_GetUdsStatusByIntDtc
# Number of nodes = 18

# Allocations for Dem_GetUdsStatusByIntDtc
#	?a4		intDtc
# static FUNC(void, DEM_CODE) AgingDisplacementUdsStatus(Dem_EventIdType eventId)
	.align		1
	.section	.text_vle
        .d2line         524,29
#$$ld
.L381:

#$$bf	AgingDisplacementUdsStatus,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
AgingDisplacementUdsStatus:
.Llo15:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# eventId=r31 eventId=r3
	.d2prologue_end
# {
#    CONST(Dem_UdsStatusByteType, AUTOMATIC) eventUdsStatusOld = Dem_GetUdsStatus(eventId);
	.d2line		526
.Llo16:
	lis		r3,(Dem_NvUdsStatus-1)@ha
.Llo17:
	e_add16i		r3,r3,(Dem_NvUdsStatus-1)@l
	rlwinm		r0,r31,0,16,31		# eventId=r31
	lbzx		r30,r3,r0
.Llo19:
	mr		r30,r30		# eventUdsStatusOld=r30 eventUdsStatusOld=r30
#    CONST(uint16, AUTOMATIC) intDtc = Dem_GetEventIntDtc(eventId); /* KW MISRA.PTR.ARITH */
	.d2line		527
	lis		r3,Dem_pPbCfg@ha
	lwz		r3,Dem_pPbCfg@l(r3)
	lwz		r0,128(r3)
	rlwinm		r3,r31,1,15,30		# eventId=r31
	se_add		r3,r0
	lhz		r28,-2(r3)		# intDtc=r28
	mr		r28,r28		# intDtc=r28 intDtc=r28
#    CONST(Dem_UdsStatusByteType, AUTOMATIC) dtcUdsStatusOld = Dem_GetUdsStatusForValidDtc(intDtc);
	.d2line		528
	rlwinm		r3,r28,0,16,31		# intDtc=r28
	cmpli		0,0,r3,65535
	bc		0,2,.L241	# ne
	diab.li		r29,0		# dtcUdsStatusOld=r29
.Llo20:
	b		.L242
.L241:
.Llo21:
	mr		r3,r28		# intDtc=r3 intDtc=r28
	bl		Dem_GetUdsStatusByIntDtc
.Llo22:
	mr		r29,r3		# dtcUdsStatusOld=r29 dtcUdsStatusOld=r3
.L242:
# 
#    /* [SWS_Dem_00409] Clear confirmed bit */
#    Dem_ClrUdsBits(eventId, DEM_UDS_SB_CDTC_CLR);
	.d2line		531
.Llo23:
	rlwinm		r3,r31,0,16,31		# intDtc=r3 eventId=r31
.Llo24:
	diab.li		r4,247
	bl		Dem_ClrUdsBits
# 
#    Dem_TriggerOnEventStatus(eventId, eventUdsStatusOld);
	.d2line		533
	rlwinm		r3,r31,0,16,31		# intDtc=r3 eventId=r31
	rlwinm		r4,r30,0,24,31		# eventUdsStatusOld=r30
	bl		Dem_TriggerOnEventStatus
#    Dem_TriggerOnDTCStatus(intDtc, dtcUdsStatusOld, FALSE);
	.d2line		534
	rlwinm		r3,r28,0,16,31		# intDtc=r3 intDtc=r28
	rlwinm		r4,r29,0,24,31		# dtcUdsStatusOld=r29
	diab.li		r5,0
	bl		Dem_TriggerOnDTCStatus
# }
	.d2line		535
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo18:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L382:
	.type		AgingDisplacementUdsStatus,@function
	.size		AgingDisplacementUdsStatus,.-AgingDisplacementUdsStatus
# Number of nodes = 64

# Allocations for AgingDisplacementUdsStatus
#	?a4		eventId
#	?a5		eventUdsStatusOld
#	?a6		intDtc
#	?a7		dtcUdsStatusOld
# static FUNC(void, DEM_CODE) HandleFailureCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId, uint8 eventIndexInCombDtc, uint8 opCycleId)
	.align		1
	.section	.text_vle
        .d2line         537,29
#$$ld
.L395:

#$$bf	HandleFailureCounter,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.d2_cfa_start __cie
HandleFailureCounter:
.Llo25:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# eventId=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pEvMemEntry=r3 pEvMemEntry=r3
	mr		r0,r4		# eventId=r0 eventId=r4
.Llo29:
	mr		r5,r5		# eventIndexInCombDtc=r5 eventIndexInCombDtc=r5
.Llo30:
	mr		r7,r6		# opCycleId=r7 opCycleId=r6
	.d2prologue_end
# {
#    if (Dem_GetOpCycle(eventId) == opCycleId) /* KW MISRA.PTR.ARITH */
	.d2line		539
	lis		r6,Dem_pPbCfg@ha
.Llo38:
	lwz		r4,Dem_pPbCfg@l(r6)
	lwz		r4,52(r4)
	lwz		r6,Dem_pPbCfg@l(r6)
	lwz		r6,104(r6)
	rlwinm		r31,r0,0,16,31		# eventId=r0
	se_add		r6,r31
	lbz		r6,-1(r6)
	lbzx		r4,r4,r6
.Llo39:
	rlwinm		r7,r7,0,24,31		# opCycleId=r7 opCycleId=r7
	se_cmp		r4,r7		# opCycleId=r7
	bc		0,2,.L245	# ne
	.section	.text_vle
.L402:
#    {
#       CONST(Dem_UdsStatusByteType, AUTOMATIC) udsStatus = Dem_GetUdsStatus(eventId);
	.d2line		541
.Llo31:
	lis		r4,(Dem_NvUdsStatus-1)@ha		# udsStatus=r4
.Llo42:
	e_add16i		r4,r4,(Dem_NvUdsStatus-1)@l		# udsStatus=r4 udsStatus=r4
.Llo32:
	rlwinm		r0,r0,0,16,31		# eventId=r0 eventId=r0
	lbzx		r4,r4,r0		# udsStatus=r4 udsStatus=r4
	mr		r4,r4		# udsStatus=r4 udsStatus=r4
#       CONST(uint8, AUTOMATIC) confirmedThreshold = Dem_GetEventConfirmedThreshold(eventId); /* KW MISRA.PTR.ARITH */
	.d2line		542
	lis		r7,Dem_pPbCfg@ha		# opCycleId=r7
.Llo40:
	lwz		r6,Dem_pPbCfg@l(r7)		# opCycleId=r7
	lwz		r6,48(r6)
	lwz		r7,Dem_pPbCfg@l(r7)		# opCycleId=r7 opCycleId=r7
	lwz		r7,104(r7)		# opCycleId=r7 opCycleId=r7
	se_add		r7,r0		# opCycleId=r7 opCycleId=r7 eventId=r0
	lbz		r0,-1(r7)		# eventId=r0 opCycleId=r7
.Llo33:
	lbzx		r7,r6,r0		# opCycleId=r7
.Llo41:
	mr		r7,r7		# confirmedThreshold=r7 confirmedThreshold=r7
# 
#       /*
#        * GetEventConfirmedThreshold will return at maximum 255 (uint8).
#        * It's therefore safe to typecast (pEvMemEntry->failure_counter[] + 1U) since
#        * the expression will never be bigger than 254.
#        */
#       if (Dem_IsSet(udsStatus, DEM_UDS_SB_TFTOC) &&
	.d2line		549
	rlwinm		r0,r4,0,24,31		# eventId=r0 udsStatus=r4
.Llo34:
	se_btsti		r0,30		# eventId=r0
	bc		1,2,.L247	# eq
.Llo35:
	rlwinm		r6,r5,0,24,31		# eventIndexInCombDtc=r5
	se_add		r6,r3		# pEvMemEntry=r3
	lbz		r6,21(r6)
	se_addi		r6,1
	rlwinm		r6,r6,0,24,31
.Llo43:
	rlwinm		r7,r7,0,24,31		# confirmedThreshold=r7 confirmedThreshold=r7
	se_cmp		r6,r7		# confirmedThreshold=r7
	bc		0,0,.L247	# ge
#          ((uint8)(pEvMemEntry->failure_counter[eventIndexInCombDtc] + 1U) < confirmedThreshold))
#       {
#          /*
#           * [VSTAR_Dem_00159]
#           * The failure counter shall be incremented at the end of the referenced operation cycle
#           * in case the TestFailedThisOperationCycle is set to 1 and the failure counter is lower
#           * than DemEventFailureCycleCounterThreshold-1.
#           */
#          pEvMemEntry->failure_counter[eventIndexInCombDtc]++;
	.d2line		558
.Llo44:
	rlwinm		r7,r5,0,24,31		# confirmedThreshold=r7 eventIndexInCombDtc=r5
.Llo45:
	se_add		r7,r3		# confirmedThreshold=r7 confirmedThreshold=r7 pEvMemEntry=r3
	lbz		r6,21(r7)		# confirmedThreshold=r7
	se_addi		r6,1
	stb		r6,21(r7)		# confirmedThreshold=r7
.L247:
#       }
# 
#       if (Dem_IsClr(udsStatus, DEM_UDS_SB_TNCTOC | DEM_UDS_SB_TFTOC))
	.d2line		561
	rlwinm		r4,r4,0,24,31		# udsStatus=r4 udsStatus=r4
	e_andi.		r0,r4,66		# eventId=r0 udsStatus=r4
.Llo36:
	se_cmpi		r0,0		# eventId=r0
	bc		0,2,.L245	# ne
#       {
#          /*
#           * [VSTAR_Dem_00160]
#           * The failure counter shall be cleared at the end of the referenced operation cycle
#           * in case the TestNotCompletedThisOperationCycle is set to 0 and TestFailedThisOperationCycle is set to 0.
#           */
#          pEvMemEntry->failure_counter[eventIndexInCombDtc] = 0;
	.d2line		568
.Llo26:
	diab.li		r0,0		# eventId=r0
.Llo37:
	rlwinm		r5,r5,0,24,31		# eventIndexInCombDtc=r5 eventIndexInCombDtc=r5
.Llo27:
	se_add		r3,r5		# pEvMemEntry=r3 pEvMemEntry=r3 pEvMemEntry=r5
	stb		r0,21(r3)		# pEvMemEntry=r3 eventId=r0
	.section	.text_vle
.L403:
.L245:
#       }
#    }
# }
	.d2line		571
	.d2epilogue_begin
.Llo28:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# eventId=r0
	mtspr		lr,r0		# eventId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L396:
	.type		HandleFailureCounter,@function
	.size		HandleFailureCounter,.-HandleFailureCounter
# Number of nodes = 92

# Allocations for HandleFailureCounter
#	?a4		pEvMemEntry
#	?a5		eventId
#	?a6		eventIndexInCombDtc
#	?a7		opCycleId
#	?a8		$$5
#	?a9		udsStatus
#	?a10		confirmedThreshold
# FUNC(boolean, DEM_CODE) Dem_GetSiFdcThresholdReachedTOC(Dem_EventIdType evId)
	.align		2
	.section	.text_vle
        .d2line         643,25
#$$ld
.L413:

#$$bf	Dem_GetSiFdcThresholdReachedTOC,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Dem_GetSiFdcThresholdReachedTOC
	.d2_cfa_start __cie
Dem_GetSiFdcThresholdReachedTOC:
.Llo46:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# evId=r3 evId=r3
	.d2prologue_end
# {
#    return (Dem_BitArrayIsBitSet(Dem_NvSi.fdcThresholdReachedTOC, evId - 1U)) ? TRUE : FALSE;
	.d2line		645
	lis		r5,(Dem_NvSi+1)@ha
	e_add16i		r5,r5,(Dem_NvSi+1)@l
	rlwinm		r4,r3,0,16,31		# evId=r3
	diab.addi		r4,r4,-1
	se_srwi		r4,3
	lbzx		r0,r5,r4
	diab.li		r4,1
	diab.addi		r3,r3,255		# evId=r3 evId=r3
	rlwinm		r3,r3,0,29,31		# evId=r3 evId=r3
	slw		r3,r4,r3		# evId=r3 evId=r3
	rlwinm		r3,r3,0,24,31		# evId=r3 evId=r3
	and.		r0,r0,r3		# evId=r3
	isel		r0,r3,r4,2		# evId=r3
.L260:
.Llo47:
	isel		r3,0,r0,2		# evId=r3
.L261:
.Llo48:
	rlwinm		r3,r3,0,24,31		# evId=r3 evId=r3
# }
	.d2line		646
	.d2epilogue_begin
.Llo49:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L414:
	.type		Dem_GetSiFdcThresholdReachedTOC,@function
	.size		Dem_GetSiFdcThresholdReachedTOC,.-Dem_GetSiFdcThresholdReachedTOC
# Number of nodes = 34

# Allocations for Dem_GetSiFdcThresholdReachedTOC
#	?a4		evId
#	?a5		$$11
# static FUNC(void, DEM_CODE) HandleHealingCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId, uint8 eventIndexInCombDtc, uint8 opCycleId)
	.align		1
	.section	.text_vle
        .d2line         573,29
#$$ld
.L419:

#$$bf	HandleHealingCounter,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
HandleHealingCounter:
.Llo50:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# pEvMemEntry=r7 pEvMemEntry=r3
	mr		r3,r4		# eventId=r3 eventId=r4
.Llo51:
	mr		r31,r5		# eventIndexInCombDtc=r31 eventIndexInCombDtc=r5
.Llo56:
	mr		r6,r6		# opCycleId=r6 opCycleId=r6
	.d2prologue_end
# {
#    if (Dem_GetOpCycle(eventId) == opCycleId) /* KW MISRA.PTR.ARITH */
	.d2line		575
	lis		r4,Dem_pPbCfg@ha
	lwz		r5,Dem_pPbCfg@l(r4)
.Llo62:
	lwz		r5,52(r5)
	lwz		r4,Dem_pPbCfg@l(r4)
	lwz		r0,104(r4)
	rlwinm		r4,r3,0,16,31		# eventId=r3
	se_add		r4,r0
	lbz		r0,-1(r4)
	lbzx		r0,r5,r0
	rlwinm		r6,r6,0,24,31		# opCycleId=r6 opCycleId=r6
	se_cmp		r0,r6		# opCycleId=r6
	bc		0,2,.L251	# ne
	.section	.text_vle
.L426:
#    {
#       CONST(Dem_UdsStatusByteType, AUTOMATIC) udsStatus = Dem_GetUdsStatus(eventId);
	.d2line		577
.Llo52:
	lis		r4,(Dem_NvUdsStatus-1)@ha
	e_add16i		r4,r4,(Dem_NvUdsStatus-1)@l
	rlwinm		r0,r3,0,16,31		# eventId=r3
	lbzx		r6,r4,r0		# opCycleId=r6
.Llo63:
	mr		r6,r6		# udsStatus=r6 udsStatus=r6
# 
#       if ((FALSE == Dem_GetSiFdcThresholdReachedTOC(eventId)) &&
	.d2line		579
	mr		r3,r3		# eventId=r3 eventId=r3
.Llo57:
	bl		Dem_GetSiFdcThresholdReachedTOC
.Llo58:
	rlwinm		r3,r3,0,24,31		# eventId=r3 eventId=r3
	se_cmpi		r3,0		# eventId=r3
	bc		0,2,.L251	# ne
.Llo59:
	rlwinm		r6,r6,0,24,31		# udsStatus=r6 udsStatus=r6
	e_andi.		r0,r6,66		# udsStatus=r6
	se_cmpi		r0,0
	bc		0,2,.L251	# ne
.Llo64:
	rlwinm		r3,r31,0,24,31		# eventId=r3 eventIndexInCombDtc=r31
.Llo60:
	se_add		r3,r7		# eventId=r3 eventId=r3 pEvMemEntry=r7
	lbz		r0,22(r3)		# eventId=r3
	cmpi		0,0,r0,255
	bc		0,0,.L251	# ge
#          Dem_IsClr(udsStatus, DEM_UDS_SB_TNCTOC | DEM_UDS_SB_TFTOC) &&
#          (pEvMemEntry->healing_counter[eventIndexInCombDtc] < DEM_UINT8_MAX))
#       {
#          /* [SWS_Dem_00506] [SWS_Dem_01056] */
#          pEvMemEntry->healing_counter[eventIndexInCombDtc]++;
	.d2line		584
.Llo53:
	rlwinm		r31,r31,0,24,31		# eventIndexInCombDtc=r31 eventIndexInCombDtc=r31
.Llo54:
	se_add		r7,r31		# pEvMemEntry=r7 pEvMemEntry=r7 pEvMemEntry=r31
	lbz		r3,22(r7)		# eventId=r3 pEvMemEntry=r7
.Llo61:
	se_addi		r3,1		# eventId=r3 eventId=r3
	stb		r3,22(r7)		# pEvMemEntry=r7 eventId=r3
#          Dem_UpdateIndicators();
	.d2line		585
	bl		Dem_UpdateIndicators
	.section	.text_vle
.L427:
.L251:
#       }
#    }
# }
	.d2line		588
	.d2epilogue_begin
.Llo55:
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
.L420:
	.type		HandleHealingCounter,@function
	.size		HandleHealingCounter,.-HandleHealingCounter
# Number of nodes = 65

# Allocations for HandleHealingCounter
#	?a4		pEvMemEntry
#	?a5		eventId
#	?a6		eventIndexInCombDtc
#	?a7		opCycleId
#	?a8		$$6
#	?a9		udsStatus
# FUNC(void, DEM_CODE) Dem_SetSiFdcThresholdReached(Dem_EventIdType evId)
	.align		2
	.section	.text_vle
        .d2line         595,22
#$$ld
.L434:

#$$bf	Dem_SetSiFdcThresholdReached,interprocedural,rasave,nostackparams
	.globl		Dem_SetSiFdcThresholdReached
	.d2_cfa_start __cie
Dem_SetSiFdcThresholdReached:
.Llo65:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# evId=r31 evId=r3
	.d2prologue_end
# {
#    /* ---------- Enter critical section ---------- */
#    SchM_Enter_Dem_EaSi();
	.d2line		598
.Llo66:
	bl		SchM_Enter_Dem_EaSi
#    Dem_BitArraySetBit(Dem_NvSi.fdcThresholdReached, evId - 1U);
	.d2line		599
.Llo67:
	lis		r3,Dem_NvSi@ha
	e_add16i		r3,r3,Dem_NvSi@l
	rlwinm		r5,r31,0,16,31		# evId=r31
	diab.addi		r5,r5,-1
	se_srwi		r5,3
	lbzx		r0,r3,r5
	diab.li		r4,1
	diab.addi		r31,r31,255		# evId=r31 evId=r31
	rlwinm		r31,r31,0,29,31		# evId=r31 evId=r31
	slw		r4,r4,r31		# evId=r31
	or		r0,r0,r4
	stbx		r0,r3,r5
#    SchM_Exit_Dem_EaSi();
	.d2line		600
	bl		SchM_Exit_Dem_EaSi
#    /* ---------- Exit critical section ----------- */
# 
#    /* Set global flag to indicate that the SI status has changed */
#    Dem_SiModified = TRUE;
	.d2line		604
	diab.li		r3,1
	lis		r4,Dem_SiModified@ha
	e_add16i		r4,r4,Dem_SiModified@l
	stb		r3,0(r4)
# }
	.d2line		605
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo68:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L435:
	.type		Dem_SetSiFdcThresholdReached,@function
	.size		Dem_SetSiFdcThresholdReached,.-Dem_SetSiFdcThresholdReached
# Number of nodes = 26

# Allocations for Dem_SetSiFdcThresholdReached
#	?a4		evId
#	?a5		$$7
# FUNC(void, DEM_CODE) Dem_SetSiFdcThresholdReachedTOC(Dem_EventIdType evId)
	.align		2
	.section	.text_vle
        .d2line         607,22
#$$ld
.L440:

#$$bf	Dem_SetSiFdcThresholdReachedTOC,interprocedural,rasave,nostackparams
	.globl		Dem_SetSiFdcThresholdReachedTOC
	.d2_cfa_start __cie
Dem_SetSiFdcThresholdReachedTOC:
.Llo69:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# evId=r31 evId=r3
	.d2prologue_end
# {
#    /* ---------- Enter critical section ---------- */
#    SchM_Enter_Dem_EaSi();
	.d2line		610
.Llo70:
	bl		SchM_Enter_Dem_EaSi
#    Dem_BitArraySetBit(Dem_NvSi.fdcThresholdReachedTOC, evId - 1U);
	.d2line		611
.Llo71:
	lis		r3,(Dem_NvSi+1)@ha
	e_add16i		r3,r3,(Dem_NvSi+1)@l
	rlwinm		r5,r31,0,16,31		# evId=r31
	diab.addi		r5,r5,-1
	se_srwi		r5,3
	lbzx		r0,r3,r5
	diab.li		r4,1
	diab.addi		r31,r31,255		# evId=r31 evId=r31
	rlwinm		r31,r31,0,29,31		# evId=r31 evId=r31
	slw		r4,r4,r31		# evId=r31
	or		r0,r0,r4
	stbx		r0,r3,r5
#    SchM_Exit_Dem_EaSi();
	.d2line		612
	bl		SchM_Exit_Dem_EaSi
#    /* ---------- Exit critical section ----------- */
# 
#    /* Set global flag to indicate that the SI status has changed */
#    Dem_SiModified = TRUE;
	.d2line		616
	diab.li		r3,1
	lis		r4,Dem_SiModified@ha
	e_add16i		r4,r4,Dem_SiModified@l
	stb		r3,0(r4)
# }
	.d2line		617
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo72:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L441:
	.type		Dem_SetSiFdcThresholdReachedTOC,@function
	.size		Dem_SetSiFdcThresholdReachedTOC,.-Dem_SetSiFdcThresholdReachedTOC
# Number of nodes = 28

# Allocations for Dem_SetSiFdcThresholdReachedTOC
#	?a4		evId
#	?a5		$$8
# FUNC(void, DEM_CODE) Dem_ClrSiFdcThresholdReached(Dem_EventIdType evId)
	.align		2
	.section	.text_vle
        .d2line         619,22
#$$ld
.L446:

#$$bf	Dem_ClrSiFdcThresholdReached,interprocedural,rasave,nostackparams
	.globl		Dem_ClrSiFdcThresholdReached
	.d2_cfa_start __cie
Dem_ClrSiFdcThresholdReached:
.Llo73:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# evId=r31 evId=r3
	.d2prologue_end
# {
#    /* ---------- Enter critical section ---------- */
#    SchM_Enter_Dem_EaSi();
	.d2line		622
.Llo74:
	bl		SchM_Enter_Dem_EaSi
#    Dem_BitArrayClearBit(Dem_NvSi.fdcThresholdReached, evId - 1U);
	.d2line		623
.Llo75:
	lis		r3,Dem_NvSi@ha
	e_add16i		r3,r3,Dem_NvSi@l
	rlwinm		r5,r31,0,16,31		# evId=r31
	diab.addi		r5,r5,-1
	se_srwi		r5,3
	lbzx		r0,r3,r5
	diab.li		r4,1
	diab.addi		r31,r31,255		# evId=r31 evId=r31
	rlwinm		r31,r31,0,29,31		# evId=r31 evId=r31
	slw		r4,r4,r31		# evId=r31
	xori		r4,r4,255
	and		r0,r0,r4
	stbx		r0,r3,r5
#    SchM_Exit_Dem_EaSi();
	.d2line		624
	bl		SchM_Exit_Dem_EaSi
#    /* ---------- Exit critical section ----------- */
# 
#    /* Set global flag to indicate that the SI status has changed */
#    Dem_SiModified = TRUE;
	.d2line		628
	diab.li		r3,1
	lis		r4,Dem_SiModified@ha
	e_add16i		r4,r4,Dem_SiModified@l
	stb		r3,0(r4)
# }
	.d2line		629
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo76:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L447:
	.type		Dem_ClrSiFdcThresholdReached,@function
	.size		Dem_ClrSiFdcThresholdReached,.-Dem_ClrSiFdcThresholdReached
# Number of nodes = 28

# Allocations for Dem_ClrSiFdcThresholdReached
#	?a4		evId
#	?a5		$$9
# FUNC(void, DEM_CODE) Dem_ClrSiFdcThresholdReachedTOC(Dem_EventIdType evId)
	.align		2
	.section	.text_vle
        .d2line         631,22
#$$ld
.L452:

#$$bf	Dem_ClrSiFdcThresholdReachedTOC,interprocedural,rasave,nostackparams
	.globl		Dem_ClrSiFdcThresholdReachedTOC
	.d2_cfa_start __cie
Dem_ClrSiFdcThresholdReachedTOC:
.Llo77:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# evId=r31 evId=r3
	.d2prologue_end
# {
#    /* ---------- Enter critical section ---------- */
#    SchM_Enter_Dem_EaSi();
	.d2line		634
.Llo78:
	bl		SchM_Enter_Dem_EaSi
#    Dem_BitArrayClearBit(Dem_NvSi.fdcThresholdReachedTOC, evId - 1U);
	.d2line		635
.Llo79:
	lis		r3,(Dem_NvSi+1)@ha
	e_add16i		r3,r3,(Dem_NvSi+1)@l
	rlwinm		r5,r31,0,16,31		# evId=r31
	diab.addi		r5,r5,-1
	se_srwi		r5,3
	lbzx		r0,r3,r5
	diab.li		r4,1
	diab.addi		r31,r31,255		# evId=r31 evId=r31
	rlwinm		r31,r31,0,29,31		# evId=r31 evId=r31
	slw		r4,r4,r31		# evId=r31
	xori		r4,r4,255
	and		r0,r0,r4
	stbx		r0,r3,r5
#    SchM_Exit_Dem_EaSi();
	.d2line		636
	bl		SchM_Exit_Dem_EaSi
#    /* ---------- Exit critical section ----------- */
# 
#    /* Set global flag to indicate that the SI status has changed */
#    Dem_SiModified = TRUE;
	.d2line		640
	diab.li		r3,1
	lis		r4,Dem_SiModified@ha
	e_add16i		r4,r4,Dem_SiModified@l
	stb		r3,0(r4)
# }
	.d2line		641
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo80:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L453:
	.type		Dem_ClrSiFdcThresholdReachedTOC,@function
	.size		Dem_ClrSiFdcThresholdReachedTOC,.-Dem_ClrSiFdcThresholdReachedTOC
# Number of nodes = 30

# Allocations for Dem_ClrSiFdcThresholdReachedTOC
#	?a4		evId
#	?a5		$$10
# FUNC(boolean, DEM_CODE) Dem_GetSiFdcThresholdReached(Dem_EventIdType evId)
	.align		2
	.section	.text_vle
        .d2line         648,25
#$$ld
.L458:

#$$bf	Dem_GetSiFdcThresholdReached,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Dem_GetSiFdcThresholdReached
	.d2_cfa_start __cie
Dem_GetSiFdcThresholdReached:
.Llo81:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# evId=r3 evId=r3
	.d2prologue_end
# {
#    return (Dem_BitArrayIsBitSet(Dem_NvSi.fdcThresholdReached, evId - 1U)) ? TRUE : FALSE;
	.d2line		650
	lis		r5,Dem_NvSi@ha
	e_add16i		r5,r5,Dem_NvSi@l
	rlwinm		r4,r3,0,16,31		# evId=r3
	diab.addi		r4,r4,-1
	se_srwi		r4,3
	lbzx		r0,r5,r4
	diab.li		r4,1
	diab.addi		r3,r3,255		# evId=r3 evId=r3
	rlwinm		r3,r3,0,29,31		# evId=r3 evId=r3
	slw		r3,r4,r3		# evId=r3 evId=r3
	rlwinm		r3,r3,0,24,31		# evId=r3 evId=r3
	and.		r0,r0,r3		# evId=r3
	isel		r0,r3,r4,2		# evId=r3
.L265:
.Llo82:
	isel		r3,0,r0,2		# evId=r3
.L266:
.Llo83:
	rlwinm		r3,r3,0,24,31		# evId=r3 evId=r3
# }
	.d2line		651
	.d2epilogue_begin
.Llo84:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L459:
	.type		Dem_GetSiFdcThresholdReached,@function
	.size		Dem_GetSiFdcThresholdReached,.-Dem_GetSiFdcThresholdReached
# Number of nodes = 32

# Allocations for Dem_GetSiFdcThresholdReached
#	?a4		evId
#	?a5		$$12
# FUNC(void, DEM_CODE) Dem_NvResetSi(void)
	.align		2
	.section	.text_vle
        .d2line         653,22
#$$ld
.L464:

#$$bf	Dem_NvResetSi,interprocedural,rasave,nostackparams
	.globl		Dem_NvResetSi
	.d2_cfa_start __cie
Dem_NvResetSi:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Dem_MemSet(&Dem_NvSi, 0U, sizeof(Dem_NvSi));
	.d2line		655
	lis		r3,Dem_NvSi@ha
	e_add16i		r3,r3,Dem_NvSi@l
	diab.li		r4,0
	diab.li		r5,2
	bl		Dem_MemSet
# }
	.d2line		656
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
.L465:
	.type		Dem_NvResetSi,@function
	.size		Dem_NvResetSi,.-Dem_NvResetSi
# Number of nodes = 9

# Allocations for Dem_NvResetSi
# FUNC(void, DEM_CODE) Dem_SetMaxFdcSinceLastClear(Dem_EventIdType eventId, sint8 value)
	.align		2
	.section	.text_vle
        .d2line         658,22
#$$ld
.L469:

#$$bf	Dem_SetMaxFdcSinceLastClear,interprocedural,nostackparams

# Regs written: r0,r1
	.globl		Dem_SetMaxFdcSinceLastClear
	.d2_cfa_start __cie
Dem_SetMaxFdcSinceLastClear:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /* No DEM_MAX_FDC_SINCE_LAST_CLEAR DemInternalDataElements are configured. */
# }
	.d2line		661
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L470:
	.type		Dem_SetMaxFdcSinceLastClear,@function
	.size		Dem_SetMaxFdcSinceLastClear,.-Dem_SetMaxFdcSinceLastClear
# Number of nodes = 0

# Allocations for Dem_SetMaxFdcSinceLastClear
#	not allocated	eventId
#	not allocated	value
# FUNC(void, DEM_CODE) Dem_UpdateMaxFdcSinceLastClear(Dem_EventIdType eventId)
	.align		2
	.section	.text_vle
        .d2line         663,22
#$$ld
.L476:

#$$bf	Dem_UpdateMaxFdcSinceLastClear,interprocedural,nostackparams

# Regs written: r0,r1
	.globl		Dem_UpdateMaxFdcSinceLastClear
	.d2_cfa_start __cie
Dem_UpdateMaxFdcSinceLastClear:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /* No DEM_MAX_FDC_SINCE_LAST_CLEAR DemInternalDataElements are configured. */
# }
	.d2line		666
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L477:
	.type		Dem_UpdateMaxFdcSinceLastClear,@function
	.size		Dem_UpdateMaxFdcSinceLastClear,.-Dem_UpdateMaxFdcSinceLastClear
# Number of nodes = 0

# Allocations for Dem_UpdateMaxFdcSinceLastClear
#	not allocated	eventId
# FUNC(void, DEM_CODE) Dem_NvResetMaxFdcSinceLastClear(void)
	.align		2
	.section	.text_vle
        .d2line         668,22
#$$ld
.L481:

#$$bf	Dem_NvResetMaxFdcSinceLastClear,interprocedural,nostackparams

# Regs written: r0,r1
	.globl		Dem_NvResetMaxFdcSinceLastClear
	.d2_cfa_start __cie
Dem_NvResetMaxFdcSinceLastClear:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /* No DEM_MAX_FDC_SINCE_LAST_CLEAR DemInternalDataElements are configured. */
# }
	.d2line		671
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L482:
	.type		Dem_NvResetMaxFdcSinceLastClear,@function
	.size		Dem_NvResetMaxFdcSinceLastClear,.-Dem_NvResetMaxFdcSinceLastClear
# Number of nodes = 0

# Allocations for Dem_NvResetMaxFdcSinceLastClear
# FUNC(boolean, DEM_CODE) Dem_EvMemEntryHasPendingUpdates(uint16 intDtc)
	.align		2
	.section	.text_vle
        .d2line         673,25
#$$ld
.L486:

#$$bf	Dem_EvMemEntryHasPendingUpdates,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.globl		Dem_EvMemEntryHasPendingUpdates
	.d2_cfa_start __cie
Dem_EvMemEntryHasPendingUpdates:
.Llo85:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# intDtc=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# intDtc=r0 intDtc=r3
	.d2prologue_end
# {
#    return (Dem_BitArrayIsBitSet(EventStateUpdate, GetEventFromIntDtcEventList(intDtc) - 1U)) ? TRUE : FALSE; /* KW MISRA.PTR.ARITH */
	.d2line		675
	lis		r3,EventStateUpdate@ha
.Llo86:
	e_add16i		r3,r3,EventStateUpdate@l
	lis		r5,Dem_pPbCfg@ha
	lwz		r4,Dem_pPbCfg@l(r5)
	lwz		r4,132(r4)
.Llo87:
	rlwinm		r0,r0,1,15,30		# intDtc=r0 intDtc=r0
.Llo88:
	lhzux		r6,r4,r0
	diab.addi		r6,r6,-1
	se_srwi		r6,3
	lbzx		r4,r3,r6
	diab.li		r6,1
	lwz		r3,Dem_pPbCfg@l(r5)
	lwz		r3,132(r3)
	lhzx		r3,r3,r0
	diab.addi		r3,r3,255
	rlwinm		r3,r3,0,29,31
	slw		r0,r6,r3		# intDtc=r0
.Llo89:
	rlwinm		r0,r0,0,24,31		# intDtc=r0 intDtc=r0
	and.		r0,r0,r4		# intDtc=r0 intDtc=r0
.Llo90:
	isel		r0,r3,r6,2		# intDtc=r0
.L274:
.Llo91:
	isel		r3,0,r0,2		# intDtc=r0
.L275:
.Llo92:
	rlwinm		r3,r3,0,24,31
# }
	.d2line		676
	.d2epilogue_begin
	lwz		r0,20(r1)		# intDtc=r0
	mtspr		lr,r0		# intDtc=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L487:
	.type		Dem_EvMemEntryHasPendingUpdates,@function
	.size		Dem_EvMemEntryHasPendingUpdates,.-Dem_EvMemEntryHasPendingUpdates
# Number of nodes = 50

# Allocations for Dem_EvMemEntryHasPendingUpdates
#	?a4		intDtc
#	?a5		$$13
# FUNC(void, DEM_CODE) Dem_ClearUdsBitsForCombinedEvent(Dem_EventIdType eventId, uint8 statusMask)
	.align		2
	.section	.text_vle
        .d2line         684,22
#$$ld
.L492:

#$$bf	Dem_ClearUdsBitsForCombinedEvent,interprocedural,rasave,nostackparams
	.globl		Dem_ClearUdsBitsForCombinedEvent
	.d2_cfa_start __cie
Dem_ClearUdsBitsForCombinedEvent:
.Llo93:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Dem_ClrUdsBits(eventId, statusMask); /* KW MISRA.PTR.ARITH */
	.d2line		686
	rlwinm		r3,r3,0,16,31		# eventId=r3 eventId=r3
.Llo94:
	rlwinm		r4,r4,0,24,31		# statusMask=r4 statusMask=r4
.Llo95:
	bl		Dem_ClrUdsBits
# }
	.d2line		687
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
.L493:
	.type		Dem_ClearUdsBitsForCombinedEvent,@function
	.size		Dem_ClearUdsBitsForCombinedEvent,.-Dem_ClearUdsBitsForCombinedEvent
# Number of nodes = 8

# Allocations for Dem_ClearUdsBitsForCombinedEvent
#	?a4		eventId
#	?a5		statusMask
# FUNC(uint8, DEM_CODE) Dem_GetFailureCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId)
	.align		2
	.section	.text_vle
        .d2line         689,23
#$$ld
.L499:

#$$bf	Dem_GetFailureCounter,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		Dem_GetFailureCounter
	.d2_cfa_start __cie
Dem_GetFailureCounter:
.Llo96:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pEvMemEntry=r3 pEvMemEntry=r3
	.d2prologue_end
# {
#    return pEvMemEntry->failure_counter[0];
	.d2line		691
	lbz		r3,21(r3)		# pEvMemEntry=r3 pEvMemEntry=r3
# }
	.d2line		692
	.d2epilogue_begin
.Llo97:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L500:
	.type		Dem_GetFailureCounter,@function
	.size		Dem_GetFailureCounter,.-Dem_GetFailureCounter
# Number of nodes = 5

# Allocations for Dem_GetFailureCounter
#	?a4		pEvMemEntry
#	not allocated	eventId
# FUNC(void, DEM_CODE) Dem_SetFailureCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId, uint8 value)
	.align		2
	.section	.text_vle
        .d2line         694,22
#$$ld
.L505:

#$$bf	Dem_SetFailureCounter,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Dem_SetFailureCounter
	.d2_cfa_start __cie
Dem_SetFailureCounter:
.Llo98:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pEvMemEntry=r3 pEvMemEntry=r3
	mr		r4,r5		# value=r4 value=r5
	.d2prologue_end
# {
#    pEvMemEntry->failure_counter[0] = value;
	.d2line		696
	stb		r5,21(r3)		# pEvMemEntry=r3 value=r5
# }
	.d2line		697
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo99:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L506:
	.type		Dem_SetFailureCounter,@function
	.size		Dem_SetFailureCounter,.-Dem_SetFailureCounter
# Number of nodes = 6

# Allocations for Dem_SetFailureCounter
#	?a4		pEvMemEntry
#	not allocated	eventId
#	?a5		value
# FUNC(void, DEM_CODE) Dem_SetHealingCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId, uint8 value)
	.align		2
	.section	.text_vle
        .d2line         699,22
#$$ld
.L512:

#$$bf	Dem_SetHealingCounter,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Dem_SetHealingCounter
	.d2_cfa_start __cie
Dem_SetHealingCounter:
.Llo100:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pEvMemEntry=r3 pEvMemEntry=r3
	mr		r4,r5		# value=r4 value=r5
	.d2prologue_end
# {
#    pEvMemEntry->healing_counter[0] = value;
	.d2line		701
	stb		r5,22(r3)		# pEvMemEntry=r3 value=r5
# }
	.d2line		702
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo101:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L513:
	.type		Dem_SetHealingCounter,@function
	.size		Dem_SetHealingCounter,.-Dem_SetHealingCounter
# Number of nodes = 6

# Allocations for Dem_SetHealingCounter
#	?a4		pEvMemEntry
#	not allocated	eventId
#	?a5		value
# FUNC(void, DEM_CODE) Dem_SetIndicatorOn(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId, Dem_IndicatorIdType indicator)
	.align		2
	.section	.text_vle
        .d2line         704,22
#$$ld
.L519:

#$$bf	Dem_SetIndicatorOn,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,lr
	.globl		Dem_SetIndicatorOn
	.d2_cfa_start __cie
Dem_SetIndicatorOn:
.Llo102:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pEvMemEntry=r3 pEvMemEntry=r3
	mr		r5,r5		# indicator=r5 indicator=r5
	.d2prologue_end
# {
#    Dem_BitArraySetBit(&pEvMemEntry->wir_bits[0][0], indicator); /* KW MISRA.PTR.ARITH */
	.d2line		706
	rlwinm		r4,r5,29,27,31		# indicator=r5
	se_add		r4,r3		# pEvMemEntry=r3
	lbz		r3,20(r4)		# pEvMemEntry=r3
	diab.li		r6,1
	rlwinm		r5,r5,0,29,31		# indicator=r5 indicator=r5
	slw		r6,r6,r5		# indicator=r5
	or		r3,r3,r6		# pEvMemEntry=r3 pEvMemEntry=r3
	stb		r3,20(r4)		# pEvMemEntry=r3
# }
	.d2line		707
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo103:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L520:
	.type		Dem_SetIndicatorOn,@function
	.size		Dem_SetIndicatorOn,.-Dem_SetIndicatorOn
# Number of nodes = 15

# Allocations for Dem_SetIndicatorOn
#	?a4		pEvMemEntry
#	not allocated	eventId
#	?a5		indicator
#	?a6		$$14
# FUNC(void, DEM_CODE) Dem_ClearAllFailureCounters(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry)
	.align		2
	.section	.text_vle
        .d2line         709,22
#$$ld
.L527:

#$$bf	Dem_ClearAllFailureCounters,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Dem_ClearAllFailureCounters
	.d2_cfa_start __cie
Dem_ClearAllFailureCounters:
.Llo104:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pEvMemEntry=r3 pEvMemEntry=r3
	.d2prologue_end
# {
#    pEvMemEntry->failure_counter[0] = 0U;
	.d2line		711
	diab.li		r4,0
	stb		r4,21(r3)		# pEvMemEntry=r3
# }
	.d2line		712
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo105:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L528:
	.type		Dem_ClearAllFailureCounters,@function
	.size		Dem_ClearAllFailureCounters,.-Dem_ClearAllFailureCounters
# Number of nodes = 6

# Allocations for Dem_ClearAllFailureCounters
#	?a4		pEvMemEntry
# FUNC(void, DEM_CODE) Dem_ClearAllHealingCounters(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry)
	.align		2
	.section	.text_vle
        .d2line         714,22
#$$ld
.L533:

#$$bf	Dem_ClearAllHealingCounters,interprocedural,rasave,nostackparams
	.globl		Dem_ClearAllHealingCounters
	.d2_cfa_start __cie
Dem_ClearAllHealingCounters:
.Llo106:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# pEvMemEntry=r5 pEvMemEntry=r3
	.d2prologue_end
# {
#    pEvMemEntry->healing_counter[0] = 0U;
	.d2line		716
	diab.li		r4,0
	stb		r4,22(r5)		# pEvMemEntry=r5
#    Dem_MemSet(&pEvMemEntry->wir_bits[0][0], 0, sizeof(pEvMemEntry->wir_bits));
	.d2line		717
	se_addi		r3,20		# pEvMemEntry=r3 pEvMemEntry=r3
.Llo107:
	diab.li		r5,1		# pEvMemEntry=r5
	bl		Dem_MemSet
# }
	.d2line		718
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
.L534:
	.type		Dem_ClearAllHealingCounters,@function
	.size		Dem_ClearAllHealingCounters,.-Dem_ClearAllHealingCounters
# Number of nodes = 16

# Allocations for Dem_ClearAllHealingCounters
#	?a4		pEvMemEntry
# FUNC(void, DEM_CODE) Dem_HandleFailureCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, uint8 opCycleId)
	.align		2
	.section	.text_vle
        .d2line         720,22
#$$ld
.L539:

#$$bf	Dem_HandleFailureCounter,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		Dem_HandleFailureCounter
	.d2_cfa_start __cie
Dem_HandleFailureCounter:
.Llo108:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pEvMemEntry=r3 pEvMemEntry=r3
	mr		r6,r4		# opCycleId=r6 opCycleId=r4
	.d2prologue_end
# {
#    HandleFailureCounter(pEvMemEntry, pEvMemEntry->event_id, 0, opCycleId);
	.d2line		722
	lhz		r4,0(r3)		# pEvMemEntry=r3
.Llo110:
	mr		r3,r3		# pEvMemEntry=r3 pEvMemEntry=r3
.Llo109:
	diab.li		r5,0
.Llo111:
	mr		r6,r6		# opCycleId=r6 opCycleId=r6
.Llo112:
	bl		HandleFailureCounter
# }
	.d2line		723
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
.L540:
	.type		Dem_HandleFailureCounter,@function
	.size		Dem_HandleFailureCounter,.-Dem_HandleFailureCounter
# Number of nodes = 13

# Allocations for Dem_HandleFailureCounter
#	?a4		pEvMemEntry
#	?a5		opCycleId
# FUNC(void, DEM_CODE) Dem_HandleHealingCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, uint8 opCycleId)
	.align		2
	.section	.text_vle
        .d2line         725,22
#$$ld
.L546:

#$$bf	Dem_HandleHealingCounter,interprocedural,rasave,nostackparams
	.globl		Dem_HandleHealingCounter
	.d2_cfa_start __cie
Dem_HandleHealingCounter:
.Llo113:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pEvMemEntry=r3 pEvMemEntry=r3
	mr		r6,r4		# opCycleId=r6 opCycleId=r4
	.d2prologue_end
# {
#    HandleHealingCounter(pEvMemEntry, pEvMemEntry->event_id, 0, opCycleId);
	.d2line		727
	lhz		r4,0(r3)		# pEvMemEntry=r3
.Llo115:
	mr		r3,r3		# pEvMemEntry=r3 pEvMemEntry=r3
.Llo114:
	diab.li		r5,0
.Llo116:
	mr		r6,r6		# opCycleId=r6 opCycleId=r6
.Llo117:
	bl		HandleHealingCounter
# }
	.d2line		728
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
.L547:
	.type		Dem_HandleHealingCounter,@function
	.size		Dem_HandleHealingCounter,.-Dem_HandleHealingCounter
# Number of nodes = 13

# Allocations for Dem_HandleHealingCounter
#	?a4		pEvMemEntry
#	?a5		opCycleId
# FUNC(void, DEM_CODE) Dem_CalculateIndicatorStatus(void) /* KW METRICS.E.Nesting_of_control */
	.align		2
	.section	.text_vle
        .d2line         730,22
#$$ld
.L553:

#$$bf	Dem_CalculateIndicatorStatus,interprocedural,nostackparams

# Regs written: r0,r1
	.globl		Dem_CalculateIndicatorStatus
	.d2_cfa_start __cie
Dem_CalculateIndicatorStatus:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# }
	.d2line		732
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L554:
	.type		Dem_CalculateIndicatorStatus,@function
	.size		Dem_CalculateIndicatorStatus,.-Dem_CalculateIndicatorStatus
# Number of nodes = 0

# Allocations for Dem_CalculateIndicatorStatus
# FUNC(uint8, DEM_CODE) Dem_GetSiStatusByIntDtc(uint16 intDtc)
	.align		2
	.section	.text_vle
        .d2line         734,23
#$$ld
.L558:

#$$bf	Dem_GetSiStatusByIntDtc,interprocedural,rasave,nostackparams
	.globl		Dem_GetSiStatusByIntDtc
	.d2_cfa_start __cie
Dem_GetSiStatusByIntDtc:
.Llo118:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# intDtc=r0
	stw		r0,20(r1)		# intDtc=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# intDtc=r0 intDtc=r3
	.d2prologue_end
# {
#    return Dem_BuildSiByte(GetEventFromIntDtcEventList(intDtc)); /* KW MISRA.EXPR.PARENS */ /* KW MISRA.PTR.ARITH */
	.d2line		736
	lis		r3,Dem_pPbCfg@ha
.Llo119:
	lwz		r3,Dem_pPbCfg@l(r3)
	lwz		r3,132(r3)
.Llo120:
	rlwinm		r0,r0,1,15,30		# intDtc=r0 intDtc=r0
.Llo121:
	lhzx		r3,r3,r0
	bl		Dem_BuildSiByte
	rlwinm		r3,r3,0,24,31
# }
	.d2line		737
	.d2epilogue_begin
	lwz		r0,20(r1)		# intDtc=r0
	mtspr		lr,r0		# intDtc=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L559:
	.type		Dem_GetSiStatusByIntDtc,@function
	.size		Dem_GetSiStatusByIntDtc,.-Dem_GetSiStatusByIntDtc
# Number of nodes = 15

# Allocations for Dem_GetSiStatusByIntDtc
#	?a4		intDtc
# FUNC(boolean, DEM_CODE) Dem_ClearIntDtcEventData(uint16 intDtc, CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry)
	.align		2
	.section	.text_vle
        .d2line         739,25
#$$ld
.L564:

#$$bf	Dem_ClearIntDtcEventData,interprocedural,rasave,nostackparams
	.globl		Dem_ClearIntDtcEventData
	.d2_cfa_start __cie
Dem_ClearIntDtcEventData:
.Llo122:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    return ClearIntDtcEventData(intDtc, pEvMemEntry, 0);
	.d2line		741
	mr		r0,r3		# intDtc=r0 intDtc=r3
	mr		r0,r4		# pEvMemEntry=r0 pEvMemEntry=r4
	diab.li		r5,0
	bl		ClearIntDtcEventData
.Llo123:
	rlwinm		r3,r3,0,24,31
# }
	.d2line		742
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
.L565:
	.type		Dem_ClearIntDtcEventData,@function
	.size		Dem_ClearIntDtcEventData,.-Dem_ClearIntDtcEventData
# Number of nodes = 10

# Allocations for Dem_ClearIntDtcEventData
#	?a4		intDtc
#	?a5		pEvMemEntry
# FUNC(void, DEM_CODE) Dem_AgingDisplacementUdsStatus(Dem_EventIdType eventId)
	.align		2
	.section	.text_vle
        .d2line         744,22
#$$ld
.L571:

#$$bf	Dem_AgingDisplacementUdsStatus,interprocedural,rasave,nostackparams
	.globl		Dem_AgingDisplacementUdsStatus
	.d2_cfa_start __cie
Dem_AgingDisplacementUdsStatus:
.Llo124:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    AgingDisplacementUdsStatus(eventId);
	.d2line		746
	mr		r0,r3		# eventId=r0 eventId=r3
	bl		AgingDisplacementUdsStatus
# }
	.d2line		747
	.d2epilogue_begin
.Llo125:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L572:
	.type		Dem_AgingDisplacementUdsStatus,@function
	.size		Dem_AgingDisplacementUdsStatus,.-Dem_AgingDisplacementUdsStatus
# Number of nodes = 5

# Allocations for Dem_AgingDisplacementUdsStatus
#	?a4		eventId
# FUNC(boolean, DEM_CODE) Dem_IsDtcAvailable(uint16 intDtc)
	.align		2
	.section	.text_vle
        .d2line         750,25
#$$ld
.L577:

#$$bf	Dem_IsDtcAvailable,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Dem_IsDtcAvailable
	.d2_cfa_start __cie
Dem_IsDtcAvailable:
.Llo126:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# intDtc=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# intDtc=r0 intDtc=r3
	.d2prologue_end
# {
#    CONST(Dem_EventIdType, AUTOMATIC) eventId = GetEventFromIntDtcEventList(intDtc); /* KW MISRA.PTR.ARITH */
	.d2line		752
	lis		r3,Dem_pPbCfg@ha
.Llo127:
	lwz		r4,Dem_pPbCfg@l(r3)		# eventId=r4
.Llo134:
	lwz		r4,132(r4)		# eventId=r4 eventId=r4
.Llo128:
	rlwinm		r0,r0,1,15,30		# intDtc=r0 intDtc=r0
.Llo129:
	lhzx		r4,r4,r0		# eventId=r4 eventId=r4
	mr		r4,r4		# eventId=r4 eventId=r4
#    return Dem_IsEventAvailable(eventId) ? TRUE : FALSE; /* KW MISRA.PTR.ARITH */
	.d2line		753
	lwz		r3,Dem_pPbCfg@l(r3)
	lwz		r5,96(r3)
	rlwinm		r3,r4,0,16,31		# eventId=r4
	diab.addi		r3,r3,-1
	se_srwi		r3,3
	lbzx		r0,r5,r3		# intDtc=r0
.Llo130:
	diab.li		r3,1
	diab.addi		r4,r4,255		# eventId=r4 eventId=r4
	rlwinm		r4,r4,0,29,31		# eventId=r4 eventId=r4
	slw		r4,r3,r4		# eventId=r4 eventId=r4
	rlwinm		r4,r4,0,24,31		# eventId=r4 eventId=r4
	and.		r0,r0,r4		# intDtc=r0 intDtc=r0 eventId=r4
.Llo131:
	isel		r0,r4,r3,2		# intDtc=r0 eventId=r4
.L293:
.Llo132:
	isel		r3,0,r0,2		# intDtc=r0
.L294:
.Llo133:
	rlwinm		r3,r3,0,24,31
# }
	.d2line		754
	.d2epilogue_begin
	lwz		r0,20(r1)		# intDtc=r0
	mtspr		lr,r0		# intDtc=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L578:
	.type		Dem_IsDtcAvailable,@function
	.size		Dem_IsDtcAvailable,.-Dem_IsDtcAvailable
# Number of nodes = 46

# Allocations for Dem_IsDtcAvailable
#	?a4		intDtc
#	?a5		$$15
#	?a6		eventId
# FUNC(Std_ReturnType, DEM_CODE) Dem_GetFaultDetectionCounterByIntDtc(uint16 intDtc, P2VAR(sint8, AUTOMATIC, DEM_APPL_DATA) pFdc)
	.align		2
	.section	.text_vle
        .d2line         756,32
#$$ld
.L586:

#$$bf	Dem_GetFaultDetectionCounterByIntDtc,interprocedural,rasave,nostackparams
	.globl		Dem_GetFaultDetectionCounterByIntDtc
	.d2_cfa_start __cie
Dem_GetFaultDetectionCounterByIntDtc:
.Llo135:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# intDtc=r0
	stw		r0,20(r1)		# intDtc=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# intDtc=r0 intDtc=r3
	.d2prologue_end
# {
#    CONST(Dem_EventIdType, AUTOMATIC) eventId = GetEventFromIntDtcEventList(intDtc); /* KW MISRA.PTR.ARITH */
	.d2line		758
	lis		r3,Dem_pPbCfg@ha		# eventId=r3
.Llo136:
	lwz		r3,Dem_pPbCfg@l(r3)		# eventId=r3 eventId=r3
	lwz		r3,132(r3)		# eventId=r3 eventId=r3
.Llo137:
	rlwinm		r0,r0,1,15,30		# intDtc=r0 intDtc=r0
.Llo138:
	lhzx		r3,r3,r0		# eventId=r3 eventId=r3
	mr		r3,r3		# eventId=r3 eventId=r3
#    return Dem_Internal_GetFaultDetectionCounter(eventId, pFdc); /* KW MISRA.PTR.ARITH */
	.d2line		759
	rlwinm		r3,r3,0,16,31		# eventId=r3 eventId=r3
.Llo140:
	mr		r0,r4		# pFdc=r0 pFdc=r4
	bl		Dem_Internal_GetFaultDetectionCounter
.Llo139:
	rlwinm		r3,r3,0,24,31		# eventId=r3 eventId=r3
# }
	.d2line		760
	.d2epilogue_begin
.Llo141:
	lwz		r0,20(r1)		# intDtc=r0
	mtspr		lr,r0		# intDtc=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L587:
	.type		Dem_GetFaultDetectionCounterByIntDtc,@function
	.size		Dem_GetFaultDetectionCounterByIntDtc,.-Dem_GetFaultDetectionCounterByIntDtc
# Number of nodes = 20

# Allocations for Dem_GetFaultDetectionCounterByIntDtc
#	?a4		intDtc
#	?a5		pFdc
#	?a6		eventId

# Allocations for module
	.section	.text_vle
	.0byte		.L625
	.section	.text_vle
	.type		Dem_NvResetBlock,@object
	.size		Dem_NvResetBlock,56
	.align		2
	.globl		Dem_NvResetBlock
Dem_NvResetBlock:
	.long		Dem_NvResetAdmin
	.long		Dem_NvResetUdsStatus
	.long		Dem_NvResetOpCycleState
	.long		Dem_NvResetSi
	.long		Dem_NvResetPrimaryEvMemEntry01
	.long		Dem_NvResetPrimaryEvMemEntry02
	.long		Dem_NvResetPrimaryEvMemEntry03
	.long		Dem_NvResetPrimaryEvMemEntry04
	.long		Dem_NvResetPrimaryEvMemEntry05
	.long		Dem_NvResetPrimaryEvMemEntry06
	.long		Dem_NvResetPrimaryEvMemEntry07
	.long		Dem_NvResetPrimaryEvMemEntry08
	.long		Dem_NvResetPrimaryEvMemEntry09
	.long		Dem_NvResetPrimaryEvMemEntry10
	.section	.text_vle
	.type		PrimaryEvMemEntries,@object
	.size		PrimaryEvMemEntries,40
	.align		2
PrimaryEvMemEntries:
	.long		Dem_NvPrimaryEvMemEntry01
	.long		Dem_NvPrimaryEvMemEntry02
	.long		Dem_NvPrimaryEvMemEntry03
	.long		Dem_NvPrimaryEvMemEntry04
	.long		Dem_NvPrimaryEvMemEntry05
	.long		Dem_NvPrimaryEvMemEntry06
	.long		Dem_NvPrimaryEvMemEntry07
	.long		Dem_NvPrimaryEvMemEntry08
	.long		Dem_NvPrimaryEvMemEntry09
	.long		Dem_NvPrimaryEvMemEntry10
	.section	.text_vle
	.type		PrimaryEvMem,@object
	.size		PrimaryEvMem,20
	.align		2
PrimaryEvMem:
	.long		PrimaryEvMemEntries
	.long		Dem_NvAdmin+9
	.long		Dem_NvAdmin+10
	.long		Dem_NvAdmin+11
	.long		Dem_NvAdmin+21
	.section	.text_vle
	.type		LCfgEvents,@object
	.size		LCfgEvents,80
	.align		2
LCfgEvents:
	.long		0
	.long		0
	.long		0
	.long		0
	.short		0
	.byte		0
	.byte		2
	.long		0
	.long		0
	.long		0
	.long		0
	.short		1
	.byte		0
	.byte		2
	.long		0
	.long		0
	.long		0
	.long		0
	.short		2
	.byte		0
	.byte		2
	.long		0
	.long		0
	.long		0
	.long		0
	.short		3
	.byte		0
	.byte		2
	.section	.text_vle
	.type		OpCycleDefaultInitValue,@object
	.size		OpCycleDefaultInitValue,1
	.align		2
OpCycleDefaultInitValue:
	.byte		0
	.section	.text_vle
	.type		InternalDtcGroups,@object
	.size		InternalDtcGroups,12
	.align		2
InternalDtcGroups:
	.long		16777215
	.long		0
	.long		16777215
	.section	.text_vle
	.type		Dem_LCfg,@object
	.size		Dem_LCfg,180
	.align		2
	.globl		Dem_LCfg
Dem_LCfg:
	.long		EventStateBuffer
	.long		EventStateUpdate
	.long		OpCycleChangeBuffer
	.byte		4
	.space		3
	.long		LCfgEvents
	.long		PrimaryEvMem
	.long		0
	.long		0
	.long		0
	.long		0
	.short		0
	.space		2
	.long		0
	.long		0
	.long		0
	.short		0
	.short		0
	.long		0
	.short		0
	.space		2
	.long		0
	.short		0
	.space		2
	.long		0
	.long		0
	.short		0
	.space		2
	.long		0
	.byte		0
	.space		3
	.long		0
	.byte		0
	.space		3
	.long		0
	.long		0
	.long		DtcStorage
	.long		0
	.long		0
	.long		CounterDbCounter
	.short		4
	.space		2
	.long		0
	.short		4
	.byte		0
	.byte		1
	.byte		1
	.space		1
	.short		0
	.short		65535
	.short		65535
	.short		65535
	.space		2
	.long		0
	.long		0
	.long		OpCycleDefaultInitValue
	.long		0
	.long		InternalDtcGroups
	.byte		0
	.byte		0
	.byte		0
	.space		1
	.short		1
	.space		2
	.section	.text_vle
	.type		Dem_LTtoPCHashValue,@object
	.size		Dem_LTtoPCHashValue,4
	.align		2
	.globl		Dem_LTtoPCHashValue
Dem_LTtoPCHashValue:
	.long		837593670
	.section	.text_vle
	.type		Dem_LTHashValue,@object
	.size		Dem_LTHashValue,4
	.align		2
	.globl		Dem_LTHashValue
Dem_LTHashValue:
	.long		-1383923179
	.section	.text_vle
#$$ld
.L5:
.L835:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L811:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dem\\ssc\\make\\..\\inc\\Dem_Nv.h"
.L596:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dem\\ssc\\make\\..\\inc\\Dem_Int.h"
.L302:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\Dem_Lcfg.c"
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
	.uleb128	4
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
	.uleb128	12
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
	.uleb128	13
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
	.uleb128	14
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
	.uleb128	15
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
	.uleb128	16
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.uleb128	24
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	25
	.uleb128	5
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\Dem_Lcfg.c"
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
.L303:
	.sleb128	2
	.4byte		.L299-.L2
	.byte		"Dem_NvResetPrimaryEvMemEntry01"
	.byte		0
	.4byte		.L302
	.uleb128	453
	.uleb128	29
	.byte		0x1
	.4byte		.L300
	.4byte		.L301
	.section	.debug_info,,n
	.sleb128	0
.L299:
	.section	.debug_info,,n
.L308:
	.sleb128	2
	.4byte		.L305-.L2
	.byte		"Dem_NvResetPrimaryEvMemEntry02"
	.byte		0
	.4byte		.L302
	.uleb128	458
	.uleb128	29
	.byte		0x1
	.4byte		.L306
	.4byte		.L307
	.section	.debug_info,,n
	.sleb128	0
.L305:
	.section	.debug_info,,n
.L313:
	.sleb128	2
	.4byte		.L310-.L2
	.byte		"Dem_NvResetPrimaryEvMemEntry03"
	.byte		0
	.4byte		.L302
	.uleb128	463
	.uleb128	29
	.byte		0x1
	.4byte		.L311
	.4byte		.L312
	.section	.debug_info,,n
	.sleb128	0
.L310:
	.section	.debug_info,,n
.L318:
	.sleb128	2
	.4byte		.L315-.L2
	.byte		"Dem_NvResetPrimaryEvMemEntry04"
	.byte		0
	.4byte		.L302
	.uleb128	468
	.uleb128	29
	.byte		0x1
	.4byte		.L316
	.4byte		.L317
	.section	.debug_info,,n
	.sleb128	0
.L315:
	.section	.debug_info,,n
.L323:
	.sleb128	2
	.4byte		.L320-.L2
	.byte		"Dem_NvResetPrimaryEvMemEntry05"
	.byte		0
	.4byte		.L302
	.uleb128	473
	.uleb128	29
	.byte		0x1
	.4byte		.L321
	.4byte		.L322
	.section	.debug_info,,n
	.sleb128	0
.L320:
	.section	.debug_info,,n
.L328:
	.sleb128	2
	.4byte		.L325-.L2
	.byte		"Dem_NvResetPrimaryEvMemEntry06"
	.byte		0
	.4byte		.L302
	.uleb128	478
	.uleb128	29
	.byte		0x1
	.4byte		.L326
	.4byte		.L327
	.section	.debug_info,,n
	.sleb128	0
.L325:
	.section	.debug_info,,n
.L333:
	.sleb128	2
	.4byte		.L330-.L2
	.byte		"Dem_NvResetPrimaryEvMemEntry07"
	.byte		0
	.4byte		.L302
	.uleb128	483
	.uleb128	29
	.byte		0x1
	.4byte		.L331
	.4byte		.L332
	.section	.debug_info,,n
	.sleb128	0
.L330:
	.section	.debug_info,,n
.L338:
	.sleb128	2
	.4byte		.L335-.L2
	.byte		"Dem_NvResetPrimaryEvMemEntry08"
	.byte		0
	.4byte		.L302
	.uleb128	488
	.uleb128	29
	.byte		0x1
	.4byte		.L336
	.4byte		.L337
	.section	.debug_info,,n
	.sleb128	0
.L335:
	.section	.debug_info,,n
.L343:
	.sleb128	2
	.4byte		.L340-.L2
	.byte		"Dem_NvResetPrimaryEvMemEntry09"
	.byte		0
	.4byte		.L302
	.uleb128	493
	.uleb128	29
	.byte		0x1
	.4byte		.L341
	.4byte		.L342
	.section	.debug_info,,n
	.sleb128	0
.L340:
	.section	.debug_info,,n
.L348:
	.sleb128	2
	.4byte		.L345-.L2
	.byte		"Dem_NvResetPrimaryEvMemEntry10"
	.byte		0
	.4byte		.L302
	.uleb128	498
	.uleb128	29
	.byte		0x1
	.4byte		.L346
	.4byte		.L347
	.section	.debug_info,,n
	.sleb128	0
.L345:
	.section	.debug_info,,n
.L355:
	.sleb128	3
	.4byte		.L350-.L2
	.byte		"ClearIntDtcEventData"
	.byte		0
	.4byte		.L302
	.uleb128	503
	.uleb128	32
	.4byte		.L353
	.byte		0x1
	.4byte		.L351
	.4byte		.L352
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L302
	.uleb128	503
	.uleb128	32
	.byte		"index"
	.byte		0
	.4byte		.L356
	.4byte		.L358
	.sleb128	4
	.4byte		.L302
	.uleb128	503
	.uleb128	32
	.byte		"pEvMemEntry"
	.byte		0
	.4byte		.L359
	.4byte		.L364
	.sleb128	4
	.4byte		.L302
	.uleb128	503
	.uleb128	32
	.byte		"eventIndexInCombDtc"
	.byte		0
	.4byte		.L365
	.4byte		.L366
	.section	.debug_info,,n
.L367:
	.sleb128	5
	.4byte		.L302
	.uleb128	505
	.uleb128	12
	.byte		"retVal"
	.byte		0
	.4byte		.L353
	.4byte		.L368
.L369:
	.sleb128	5
	.4byte		.L302
	.uleb128	506
	.uleb128	20
	.byte		"eventId"
	.byte		0
	.4byte		.L370
	.4byte		.L371
	.section	.debug_info,,n
	.sleb128	0
.L350:
	.section	.debug_info,,n
.L377:
	.sleb128	6
	.4byte		.L373-.L2
	.byte		"Dem_GetUdsStatusByIntDtc"
	.byte		0
	.4byte		.L302
	.uleb128	679
	.uleb128	39
	.4byte		.L376
	.byte		0x1
	.byte		0x1
	.4byte		.L374
	.4byte		.L375
	.sleb128	4
	.4byte		.L302
	.uleb128	679
	.uleb128	39
	.byte		"intDtc"
	.byte		0
	.4byte		.L356
	.4byte		.L378
	.section	.debug_info,,n
	.sleb128	0
.L373:
	.section	.debug_info,,n
.L383:
	.sleb128	2
	.4byte		.L380-.L2
	.byte		"AgingDisplacementUdsStatus"
	.byte		0
	.4byte		.L302
	.uleb128	524
	.uleb128	29
	.byte		0x1
	.4byte		.L381
	.4byte		.L382
	.sleb128	4
	.4byte		.L302
	.uleb128	524
	.uleb128	29
	.byte		"eventId"
	.byte		0
	.4byte		.L370
	.4byte		.L384
.L385:
	.sleb128	5
	.4byte		.L302
	.uleb128	526
	.uleb128	44
	.byte		"eventUdsStatusOld"
	.byte		0
	.4byte		.L386
	.4byte		.L387
.L388:
	.sleb128	5
	.4byte		.L302
	.uleb128	527
	.uleb128	29
	.byte		"intDtc"
	.byte		0
	.4byte		.L389
	.4byte		.L390
.L391:
	.sleb128	5
	.4byte		.L302
	.uleb128	528
	.uleb128	44
	.byte		"dtcUdsStatusOld"
	.byte		0
	.4byte		.L386
	.4byte		.L392
	.section	.debug_info,,n
	.sleb128	0
.L380:
	.section	.debug_info,,n
.L397:
	.sleb128	2
	.4byte		.L394-.L2
	.byte		"HandleFailureCounter"
	.byte		0
	.4byte		.L302
	.uleb128	537
	.uleb128	29
	.byte		0x1
	.4byte		.L395
	.4byte		.L396
	.sleb128	4
	.4byte		.L302
	.uleb128	537
	.uleb128	29
	.byte		"pEvMemEntry"
	.byte		0
	.4byte		.L359
	.4byte		.L398
	.sleb128	4
	.4byte		.L302
	.uleb128	537
	.uleb128	29
	.byte		"eventId"
	.byte		0
	.4byte		.L370
	.4byte		.L399
	.sleb128	4
	.4byte		.L302
	.uleb128	537
	.uleb128	29
	.byte		"eventIndexInCombDtc"
	.byte		0
	.4byte		.L365
	.4byte		.L400
	.sleb128	4
	.4byte		.L302
	.uleb128	537
	.uleb128	29
	.byte		"opCycleId"
	.byte		0
	.4byte		.L365
	.4byte		.L401
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L405
	.4byte		.L402
	.4byte		.L403
.L406:
	.sleb128	5
	.4byte		.L302
	.uleb128	541
	.uleb128	47
	.byte		"udsStatus"
	.byte		0
	.4byte		.L386
	.4byte		.L407
.L408:
	.sleb128	5
	.4byte		.L302
	.uleb128	542
	.uleb128	31
	.byte		"confirmedThreshold"
	.byte		0
	.4byte		.L409
	.4byte		.L410
	.section	.debug_info,,n
	.sleb128	0
.L405:
	.section	.debug_info,,n
	.sleb128	0
.L394:
	.section	.debug_info,,n
.L415:
	.sleb128	6
	.4byte		.L412-.L2
	.byte		"Dem_GetSiFdcThresholdReachedTOC"
	.byte		0
	.4byte		.L302
	.uleb128	643
	.uleb128	25
	.4byte		.L353
	.byte		0x1
	.byte		0x1
	.4byte		.L413
	.4byte		.L414
	.sleb128	4
	.4byte		.L302
	.uleb128	643
	.uleb128	25
	.byte		"evId"
	.byte		0
	.4byte		.L370
	.4byte		.L416
	.section	.debug_info,,n
	.sleb128	0
.L412:
	.section	.debug_info,,n
.L421:
	.sleb128	2
	.4byte		.L418-.L2
	.byte		"HandleHealingCounter"
	.byte		0
	.4byte		.L302
	.uleb128	573
	.uleb128	29
	.byte		0x1
	.4byte		.L419
	.4byte		.L420
	.sleb128	4
	.4byte		.L302
	.uleb128	573
	.uleb128	29
	.byte		"pEvMemEntry"
	.byte		0
	.4byte		.L359
	.4byte		.L422
	.sleb128	4
	.4byte		.L302
	.uleb128	573
	.uleb128	29
	.byte		"eventId"
	.byte		0
	.4byte		.L370
	.4byte		.L423
	.sleb128	4
	.4byte		.L302
	.uleb128	573
	.uleb128	29
	.byte		"eventIndexInCombDtc"
	.byte		0
	.4byte		.L365
	.4byte		.L424
	.sleb128	4
	.4byte		.L302
	.uleb128	573
	.uleb128	29
	.byte		"opCycleId"
	.byte		0
	.4byte		.L365
	.4byte		.L425
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L429
	.4byte		.L426
	.4byte		.L427
.L430:
	.sleb128	5
	.4byte		.L302
	.uleb128	577
	.uleb128	47
	.byte		"udsStatus"
	.byte		0
	.4byte		.L386
	.4byte		.L431
	.section	.debug_info,,n
	.sleb128	0
.L429:
	.section	.debug_info,,n
	.sleb128	0
.L418:
	.section	.debug_info,,n
.L436:
	.sleb128	8
	.4byte		.L433-.L2
	.byte		"Dem_SetSiFdcThresholdReached"
	.byte		0
	.4byte		.L302
	.uleb128	595
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L434
	.4byte		.L435
	.sleb128	4
	.4byte		.L302
	.uleb128	595
	.uleb128	22
	.byte		"evId"
	.byte		0
	.4byte		.L370
	.4byte		.L437
	.section	.debug_info,,n
	.sleb128	0
.L433:
	.section	.debug_info,,n
.L442:
	.sleb128	8
	.4byte		.L439-.L2
	.byte		"Dem_SetSiFdcThresholdReachedTOC"
	.byte		0
	.4byte		.L302
	.uleb128	607
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L440
	.4byte		.L441
	.sleb128	4
	.4byte		.L302
	.uleb128	607
	.uleb128	22
	.byte		"evId"
	.byte		0
	.4byte		.L370
	.4byte		.L443
	.section	.debug_info,,n
	.sleb128	0
.L439:
	.section	.debug_info,,n
.L448:
	.sleb128	8
	.4byte		.L445-.L2
	.byte		"Dem_ClrSiFdcThresholdReached"
	.byte		0
	.4byte		.L302
	.uleb128	619
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L446
	.4byte		.L447
	.sleb128	4
	.4byte		.L302
	.uleb128	619
	.uleb128	22
	.byte		"evId"
	.byte		0
	.4byte		.L370
	.4byte		.L449
	.section	.debug_info,,n
	.sleb128	0
.L445:
	.section	.debug_info,,n
.L454:
	.sleb128	8
	.4byte		.L451-.L2
	.byte		"Dem_ClrSiFdcThresholdReachedTOC"
	.byte		0
	.4byte		.L302
	.uleb128	631
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L452
	.4byte		.L453
	.sleb128	4
	.4byte		.L302
	.uleb128	631
	.uleb128	22
	.byte		"evId"
	.byte		0
	.4byte		.L370
	.4byte		.L455
	.section	.debug_info,,n
	.sleb128	0
.L451:
	.section	.debug_info,,n
.L460:
	.sleb128	6
	.4byte		.L457-.L2
	.byte		"Dem_GetSiFdcThresholdReached"
	.byte		0
	.4byte		.L302
	.uleb128	648
	.uleb128	25
	.4byte		.L353
	.byte		0x1
	.byte		0x1
	.4byte		.L458
	.4byte		.L459
	.sleb128	4
	.4byte		.L302
	.uleb128	648
	.uleb128	25
	.byte		"evId"
	.byte		0
	.4byte		.L370
	.4byte		.L461
	.section	.debug_info,,n
	.sleb128	0
.L457:
	.section	.debug_info,,n
.L466:
	.sleb128	8
	.4byte		.L463-.L2
	.byte		"Dem_NvResetSi"
	.byte		0
	.4byte		.L302
	.uleb128	653
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L464
	.4byte		.L465
	.section	.debug_info,,n
	.sleb128	0
.L463:
	.section	.debug_info,,n
.L471:
	.sleb128	8
	.4byte		.L468-.L2
	.byte		"Dem_SetMaxFdcSinceLastClear"
	.byte		0
	.4byte		.L302
	.uleb128	658
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L469
	.4byte		.L470
	.section	.debug_info,,n
	.sleb128	9
	.4byte		.L302
	.uleb128	658
	.uleb128	22
	.byte		"eventId"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	9
	.4byte		.L302
	.uleb128	658
	.uleb128	22
	.byte		"value"
	.byte		0
	.4byte		.L472
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L468:
	.section	.debug_info,,n
.L478:
	.sleb128	8
	.4byte		.L475-.L2
	.byte		"Dem_UpdateMaxFdcSinceLastClear"
	.byte		0
	.4byte		.L302
	.uleb128	663
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L476
	.4byte		.L477
	.sleb128	9
	.4byte		.L302
	.uleb128	663
	.uleb128	22
	.byte		"eventId"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info,,n
	.sleb128	0
.L475:
	.section	.debug_info,,n
.L483:
	.sleb128	8
	.4byte		.L480-.L2
	.byte		"Dem_NvResetMaxFdcSinceLastClear"
	.byte		0
	.4byte		.L302
	.uleb128	668
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L481
	.4byte		.L482
	.section	.debug_info,,n
	.sleb128	0
.L480:
	.section	.debug_info,,n
.L488:
	.sleb128	6
	.4byte		.L485-.L2
	.byte		"Dem_EvMemEntryHasPendingUpdates"
	.byte		0
	.4byte		.L302
	.uleb128	673
	.uleb128	25
	.4byte		.L353
	.byte		0x1
	.byte		0x1
	.4byte		.L486
	.4byte		.L487
	.sleb128	4
	.4byte		.L302
	.uleb128	673
	.uleb128	25
	.byte		"intDtc"
	.byte		0
	.4byte		.L356
	.4byte		.L489
	.section	.debug_info,,n
	.sleb128	0
.L485:
	.section	.debug_info,,n
.L494:
	.sleb128	8
	.4byte		.L491-.L2
	.byte		"Dem_ClearUdsBitsForCombinedEvent"
	.byte		0
	.4byte		.L302
	.uleb128	684
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L492
	.4byte		.L493
	.sleb128	4
	.4byte		.L302
	.uleb128	684
	.uleb128	22
	.byte		"eventId"
	.byte		0
	.4byte		.L370
	.4byte		.L495
	.sleb128	4
	.4byte		.L302
	.uleb128	684
	.uleb128	22
	.byte		"statusMask"
	.byte		0
	.4byte		.L365
	.4byte		.L496
	.section	.debug_info,,n
	.sleb128	0
.L491:
	.section	.debug_info,,n
.L501:
	.sleb128	6
	.4byte		.L498-.L2
	.byte		"Dem_GetFailureCounter"
	.byte		0
	.4byte		.L302
	.uleb128	689
	.uleb128	23
	.4byte		.L365
	.byte		0x1
	.byte		0x1
	.4byte		.L499
	.4byte		.L500
	.sleb128	4
	.4byte		.L302
	.uleb128	689
	.uleb128	23
	.byte		"pEvMemEntry"
	.byte		0
	.4byte		.L359
	.4byte		.L502
	.sleb128	9
	.4byte		.L302
	.uleb128	689
	.uleb128	23
	.byte		"eventId"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L498:
	.section	.debug_info,,n
.L507:
	.sleb128	8
	.4byte		.L504-.L2
	.byte		"Dem_SetFailureCounter"
	.byte		0
	.4byte		.L302
	.uleb128	694
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L505
	.4byte		.L506
	.sleb128	4
	.4byte		.L302
	.uleb128	694
	.uleb128	22
	.byte		"pEvMemEntry"
	.byte		0
	.4byte		.L359
	.4byte		.L508
	.sleb128	9
	.4byte		.L302
	.uleb128	694
	.uleb128	22
	.byte		"eventId"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	4
	.4byte		.L302
	.uleb128	694
	.uleb128	22
	.byte		"value"
	.byte		0
	.4byte		.L365
	.4byte		.L509
	.section	.debug_info,,n
	.sleb128	0
.L504:
	.section	.debug_info,,n
.L514:
	.sleb128	8
	.4byte		.L511-.L2
	.byte		"Dem_SetHealingCounter"
	.byte		0
	.4byte		.L302
	.uleb128	699
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L512
	.4byte		.L513
	.sleb128	4
	.4byte		.L302
	.uleb128	699
	.uleb128	22
	.byte		"pEvMemEntry"
	.byte		0
	.4byte		.L359
	.4byte		.L515
	.sleb128	9
	.4byte		.L302
	.uleb128	699
	.uleb128	22
	.byte		"eventId"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	4
	.4byte		.L302
	.uleb128	699
	.uleb128	22
	.byte		"value"
	.byte		0
	.4byte		.L365
	.4byte		.L516
	.section	.debug_info,,n
	.sleb128	0
.L511:
	.section	.debug_info,,n
.L521:
	.sleb128	8
	.4byte		.L518-.L2
	.byte		"Dem_SetIndicatorOn"
	.byte		0
	.4byte		.L302
	.uleb128	704
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L519
	.4byte		.L520
	.sleb128	4
	.4byte		.L302
	.uleb128	704
	.uleb128	22
	.byte		"pEvMemEntry"
	.byte		0
	.4byte		.L359
	.4byte		.L522
	.sleb128	9
	.4byte		.L302
	.uleb128	704
	.uleb128	22
	.byte		"eventId"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	4
	.4byte		.L302
	.uleb128	704
	.uleb128	22
	.byte		"indicator"
	.byte		0
	.4byte		.L523
	.4byte		.L524
	.section	.debug_info,,n
	.sleb128	0
.L518:
	.section	.debug_info,,n
.L529:
	.sleb128	8
	.4byte		.L526-.L2
	.byte		"Dem_ClearAllFailureCounters"
	.byte		0
	.4byte		.L302
	.uleb128	709
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L527
	.4byte		.L528
	.sleb128	4
	.4byte		.L302
	.uleb128	709
	.uleb128	22
	.byte		"pEvMemEntry"
	.byte		0
	.4byte		.L359
	.4byte		.L530
	.section	.debug_info,,n
	.sleb128	0
.L526:
	.section	.debug_info,,n
.L535:
	.sleb128	8
	.4byte		.L532-.L2
	.byte		"Dem_ClearAllHealingCounters"
	.byte		0
	.4byte		.L302
	.uleb128	714
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L533
	.4byte		.L534
	.sleb128	4
	.4byte		.L302
	.uleb128	714
	.uleb128	22
	.byte		"pEvMemEntry"
	.byte		0
	.4byte		.L359
	.4byte		.L536
	.section	.debug_info,,n
	.sleb128	0
.L532:
	.section	.debug_info,,n
.L541:
	.sleb128	8
	.4byte		.L538-.L2
	.byte		"Dem_HandleFailureCounter"
	.byte		0
	.4byte		.L302
	.uleb128	720
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L539
	.4byte		.L540
	.sleb128	4
	.4byte		.L302
	.uleb128	720
	.uleb128	22
	.byte		"pEvMemEntry"
	.byte		0
	.4byte		.L359
	.4byte		.L542
	.sleb128	4
	.4byte		.L302
	.uleb128	720
	.uleb128	22
	.byte		"opCycleId"
	.byte		0
	.4byte		.L365
	.4byte		.L543
	.section	.debug_info,,n
	.sleb128	0
.L538:
	.section	.debug_info,,n
.L548:
	.sleb128	8
	.4byte		.L545-.L2
	.byte		"Dem_HandleHealingCounter"
	.byte		0
	.4byte		.L302
	.uleb128	725
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L546
	.4byte		.L547
	.sleb128	4
	.4byte		.L302
	.uleb128	725
	.uleb128	22
	.byte		"pEvMemEntry"
	.byte		0
	.4byte		.L359
	.4byte		.L549
	.sleb128	4
	.4byte		.L302
	.uleb128	725
	.uleb128	22
	.byte		"opCycleId"
	.byte		0
	.4byte		.L365
	.4byte		.L550
	.section	.debug_info,,n
	.sleb128	0
.L545:
	.section	.debug_info,,n
.L555:
	.sleb128	8
	.4byte		.L552-.L2
	.byte		"Dem_CalculateIndicatorStatus"
	.byte		0
	.4byte		.L302
	.uleb128	730
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L553
	.4byte		.L554
	.section	.debug_info,,n
	.sleb128	0
.L552:
	.section	.debug_info,,n
.L560:
	.sleb128	6
	.4byte		.L557-.L2
	.byte		"Dem_GetSiStatusByIntDtc"
	.byte		0
	.4byte		.L302
	.uleb128	734
	.uleb128	23
	.4byte		.L365
	.byte		0x1
	.byte		0x1
	.4byte		.L558
	.4byte		.L559
	.sleb128	4
	.4byte		.L302
	.uleb128	734
	.uleb128	23
	.byte		"intDtc"
	.byte		0
	.4byte		.L356
	.4byte		.L561
	.section	.debug_info,,n
	.sleb128	0
.L557:
	.section	.debug_info,,n
.L566:
	.sleb128	6
	.4byte		.L563-.L2
	.byte		"Dem_ClearIntDtcEventData"
	.byte		0
	.4byte		.L302
	.uleb128	739
	.uleb128	25
	.4byte		.L353
	.byte		0x1
	.byte		0x1
	.4byte		.L564
	.4byte		.L565
	.sleb128	4
	.4byte		.L302
	.uleb128	739
	.uleb128	25
	.byte		"intDtc"
	.byte		0
	.4byte		.L356
	.4byte		.L567
	.sleb128	4
	.4byte		.L302
	.uleb128	739
	.uleb128	25
	.byte		"pEvMemEntry"
	.byte		0
	.4byte		.L359
	.4byte		.L568
	.section	.debug_info,,n
	.sleb128	0
.L563:
	.section	.debug_info,,n
.L573:
	.sleb128	8
	.4byte		.L570-.L2
	.byte		"Dem_AgingDisplacementUdsStatus"
	.byte		0
	.4byte		.L302
	.uleb128	744
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L571
	.4byte		.L572
	.sleb128	4
	.4byte		.L302
	.uleb128	744
	.uleb128	22
	.byte		"eventId"
	.byte		0
	.4byte		.L370
	.4byte		.L574
	.section	.debug_info,,n
	.sleb128	0
.L570:
	.section	.debug_info,,n
.L579:
	.sleb128	6
	.4byte		.L576-.L2
	.byte		"Dem_IsDtcAvailable"
	.byte		0
	.4byte		.L302
	.uleb128	750
	.uleb128	25
	.4byte		.L353
	.byte		0x1
	.byte		0x1
	.4byte		.L577
	.4byte		.L578
	.sleb128	4
	.4byte		.L302
	.uleb128	750
	.uleb128	25
	.byte		"intDtc"
	.byte		0
	.4byte		.L356
	.4byte		.L580
.L581:
	.sleb128	5
	.4byte		.L302
	.uleb128	752
	.uleb128	38
	.byte		"eventId"
	.byte		0
	.4byte		.L582
	.4byte		.L583
	.section	.debug_info,,n
	.sleb128	0
.L576:
	.section	.debug_info,,n
.L589:
	.sleb128	6
	.4byte		.L585-.L2
	.byte		"Dem_GetFaultDetectionCounterByIntDtc"
	.byte		0
	.4byte		.L302
	.uleb128	756
	.uleb128	32
	.4byte		.L588
	.byte		0x1
	.byte		0x1
	.4byte		.L586
	.4byte		.L587
	.sleb128	4
	.4byte		.L302
	.uleb128	756
	.uleb128	32
	.byte		"intDtc"
	.byte		0
	.4byte		.L356
	.4byte		.L590
	.sleb128	4
	.4byte		.L302
	.uleb128	756
	.uleb128	32
	.byte		"pFdc"
	.byte		0
	.4byte		.L591
	.4byte		.L592
.L593:
	.sleb128	5
	.4byte		.L302
	.uleb128	758
	.uleb128	38
	.byte		"eventId"
	.byte		0
	.4byte		.L582
	.4byte		.L594
	.section	.debug_info,,n
	.sleb128	0
.L585:
	.section	.debug_info,,n
.L595:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L596
	.uleb128	1324
	.uleb128	58
	.byte		"Dem_pPbCfg"
	.byte		0
	.4byte		.L597
	.0byte		.L595
	.section	.debug_info,,n
.L601:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	170
	.uleb128	23
	.byte		"Dem_SiModified"
	.byte		0
	.4byte		.L353
	.sleb128	5
	.byte		0x3
	.4byte		Dem_SiModified
	.comm		Dem_SiModified,1,0
.L602:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	178
	.uleb128	37
	.byte		"Dem_NvUdsStatus"
	.byte		0
	.4byte		.L603
	.sleb128	5
	.byte		0x3
	.4byte		Dem_NvUdsStatus
	.comm		Dem_NvUdsStatus,4,2
.L605:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	179
	.uleb128	43
	.byte		"Dem_NvOpCycleState"
	.byte		0
	.4byte		.L606
	.sleb128	5
	.byte		0x3
	.4byte		Dem_NvOpCycleState
	.comm		Dem_NvOpCycleState,1,2
.L609:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	180
	.uleb128	28
	.byte		"Dem_NvSi"
	.byte		0
	.4byte		.L610
	.sleb128	5
	.byte		0x3
	.4byte		Dem_NvSi
	.comm		Dem_NvSi,2,0
.L612:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	188
	.uleb128	31
	.byte		"Dem_NvAdmin"
	.byte		0
	.4byte		.L613
	.sleb128	5
	.byte		0x3
	.4byte		Dem_NvAdmin
	.comm		Dem_NvAdmin,32,1
.L615:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	191
	.uleb128	36
	.byte		"Dem_NvPrimaryEvMemEntry01"
	.byte		0
	.4byte		.L362
	.sleb128	5
	.byte		0x3
	.4byte		Dem_NvPrimaryEvMemEntry01
	.comm		Dem_NvPrimaryEvMemEntry01,24,1
.L616:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	192
	.uleb128	36
	.byte		"Dem_NvPrimaryEvMemEntry02"
	.byte		0
	.4byte		.L362
	.sleb128	5
	.byte		0x3
	.4byte		Dem_NvPrimaryEvMemEntry02
	.comm		Dem_NvPrimaryEvMemEntry02,24,1
.L617:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	193
	.uleb128	36
	.byte		"Dem_NvPrimaryEvMemEntry03"
	.byte		0
	.4byte		.L362
	.sleb128	5
	.byte		0x3
	.4byte		Dem_NvPrimaryEvMemEntry03
	.comm		Dem_NvPrimaryEvMemEntry03,24,1
.L618:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	194
	.uleb128	36
	.byte		"Dem_NvPrimaryEvMemEntry04"
	.byte		0
	.4byte		.L362
	.sleb128	5
	.byte		0x3
	.4byte		Dem_NvPrimaryEvMemEntry04
	.comm		Dem_NvPrimaryEvMemEntry04,24,1
.L619:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	195
	.uleb128	36
	.byte		"Dem_NvPrimaryEvMemEntry05"
	.byte		0
	.4byte		.L362
	.sleb128	5
	.byte		0x3
	.4byte		Dem_NvPrimaryEvMemEntry05
	.comm		Dem_NvPrimaryEvMemEntry05,24,1
.L620:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	196
	.uleb128	36
	.byte		"Dem_NvPrimaryEvMemEntry06"
	.byte		0
	.4byte		.L362
	.sleb128	5
	.byte		0x3
	.4byte		Dem_NvPrimaryEvMemEntry06
	.comm		Dem_NvPrimaryEvMemEntry06,24,1
.L621:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	197
	.uleb128	36
	.byte		"Dem_NvPrimaryEvMemEntry07"
	.byte		0
	.4byte		.L362
	.sleb128	5
	.byte		0x3
	.4byte		Dem_NvPrimaryEvMemEntry07
	.comm		Dem_NvPrimaryEvMemEntry07,24,1
.L622:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	198
	.uleb128	36
	.byte		"Dem_NvPrimaryEvMemEntry08"
	.byte		0
	.4byte		.L362
	.sleb128	5
	.byte		0x3
	.4byte		Dem_NvPrimaryEvMemEntry08
	.comm		Dem_NvPrimaryEvMemEntry08,24,1
.L623:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	199
	.uleb128	36
	.byte		"Dem_NvPrimaryEvMemEntry09"
	.byte		0
	.4byte		.L362
	.sleb128	5
	.byte		0x3
	.4byte		Dem_NvPrimaryEvMemEntry09
	.comm		Dem_NvPrimaryEvMemEntry09,24,1
.L624:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	200
	.uleb128	36
	.byte		"Dem_NvPrimaryEvMemEntry10"
	.byte		0
	.4byte		.L362
	.sleb128	5
	.byte		0x3
	.4byte		Dem_NvPrimaryEvMemEntry10
	.comm		Dem_NvPrimaryEvMemEntry10,24,1
.L625:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	234
	.uleb128	43
	.byte		"Dem_NvResetBlock"
	.byte		0
	.4byte		.L626
	.sleb128	5
	.byte		0x3
	.4byte		Dem_NvResetBlock
	.section	.debug_info,,n
	.section	.debug_info,,n
.L633:
	.sleb128	12
	.4byte		.L302
	.uleb128	252
	.uleb128	50
	.byte		"PrimaryEvMemEntries"
	.byte		0
	.4byte		.L634
	.sleb128	5
	.byte		0x3
	.4byte		PrimaryEvMemEntries
	.section	.debug_info,,n
.L636:
	.sleb128	12
	.4byte		.L302
	.uleb128	266
	.uleb128	40
	.byte		"PrimaryEvMem"
	.byte		0
	.4byte		.L637
	.sleb128	5
	.byte		0x3
	.4byte		PrimaryEvMem
	.section	.debug_info,,n
.L640:
	.sleb128	12
	.4byte		.L302
	.uleb128	287
	.uleb128	30
	.byte		"DtcStorage"
	.byte		0
	.4byte		.L641
	.sleb128	5
	.byte		0x3
	.4byte		DtcStorage
	.lcomm		DtcStorage,1,2
.L643:
	.sleb128	12
	.4byte		.L302
	.uleb128	295
	.uleb128	28
	.byte		"EventStateBuffer"
	.byte		0
	.4byte		.L644
	.sleb128	5
	.byte		0x3
	.4byte		EventStateBuffer
	.lcomm		EventStateBuffer,1,2
.L646:
	.sleb128	12
	.4byte		.L302
	.uleb128	296
	.uleb128	28
	.byte		"EventStateUpdate"
	.byte		0
	.4byte		.L647
	.sleb128	5
	.byte		0x3
	.4byte		EventStateUpdate
	.lcomm		EventStateUpdate,1,2
.L649:
	.sleb128	12
	.4byte		.L302
	.uleb128	304
	.uleb128	29
	.byte		"CounterDbCounter"
	.byte		0
	.4byte		.L650
	.sleb128	5
	.byte		0x3
	.4byte		CounterDbCounter
	.lcomm		CounterDbCounter,8,1
.L654:
	.sleb128	12
	.4byte		.L302
	.uleb128	312
	.uleb128	46
	.byte		"OpCycleChangeBuffer"
	.byte		0
	.4byte		.L655
	.sleb128	5
	.byte		0x3
	.4byte		OpCycleChangeBuffer
	.lcomm		OpCycleChangeBuffer,8,0
.L659:
	.sleb128	12
	.4byte		.L302
	.uleb128	320
	.uleb128	44
	.byte		"LCfgEvents"
	.byte		0
	.4byte		.L660
	.sleb128	5
	.byte		0x3
	.4byte		LCfgEvents
	.section	.debug_info,,n
.L665:
	.sleb128	12
	.4byte		.L302
	.uleb128	328
	.uleb128	54
	.byte		"OpCycleDefaultInitValue"
	.byte		0
	.4byte		.L666
	.sleb128	5
	.byte		0x3
	.4byte		OpCycleDefaultInitValue
	.section	.debug_info,,n
.L669:
	.sleb128	12
	.4byte		.L302
	.uleb128	333
	.uleb128	53
	.byte		"InternalDtcGroups"
	.byte		0
	.4byte		.L670
	.sleb128	5
	.byte		0x3
	.4byte		InternalDtcGroups
	.section	.debug_info,,n
.L675:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	338
	.uleb128	32
	.byte		"Dem_LCfg"
	.byte		0
	.4byte		.L676
	.sleb128	5
	.byte		0x3
	.4byte		Dem_LCfg
	.section	.debug_info,,n
.L679:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	771
	.uleb128	26
	.byte		"Dem_LTtoPCHashValue"
	.byte		0
	.4byte		.L680
	.sleb128	5
	.byte		0x3
	.4byte		Dem_LTtoPCHashValue
	.section	.debug_info,,n
.L683:
	.sleb128	11
	.byte		0x1
	.4byte		.L302
	.uleb128	772
	.uleb128	26
	.byte		"Dem_LTHashValue"
	.byte		0
	.4byte		.L680
	.sleb128	5
	.byte		0x3
	.4byte		Dem_LTHashValue
	.section	.debug_info,,n
.L678:
	.sleb128	13
	.4byte		.L596
	.uleb128	770
	.uleb128	14
	.4byte		.L684-.L2
	.byte		"Dem_LCfg_Tag"
	.byte		0
	.uleb128	180
	.section	.debug_info,,n
.L171:
	.sleb128	14
	.byte		"p_event_state_buffer"
	.byte		0
	.4byte		.L685
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L172:
	.sleb128	14
	.byte		"p_event_state_update"
	.byte		0
	.4byte		.L685
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L173:
	.sleb128	14
	.byte		"p_op_cycle_change_buffer"
	.byte		0
	.4byte		.L686
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L174:
	.sleb128	14
	.byte		"op_cycle_change_buffer_size"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L175:
	.sleb128	14
	.byte		"p_events"
	.byte		0
	.4byte		.L687
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L176:
	.sleb128	14
	.byte		"pp_ev_mem"
	.byte		0
	.4byte		.L688
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L177:
	.sleb128	14
	.byte		"p_data_element"
	.byte		0
	.4byte		.L691
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L178:
	.sleb128	14
	.byte		"p_ff_rec_num_classes"
	.byte		0
	.4byte		.L695
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L179:
	.sleb128	14
	.byte		"p_ff_did_define"
	.byte		0
	.4byte		.L699
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L180:
	.sleb128	14
	.byte		"num_ff_dids"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L181:
	.sleb128	14
	.byte		"p_ff_prestorage"
	.byte		0
	.4byte		.L703
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L182:
	.sleb128	14
	.byte		"pp_ff_storage"
	.byte		0
	.4byte		.L707
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L183:
	.sleb128	14
	.byte		"p_num_ff_entries"
	.byte		0
	.4byte		.L713
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L184:
	.sleb128	14
	.byte		"p_dev_a_ff_storage"
	.byte		0
	.4byte		.L709
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L185:
	.sleb128	14
	.byte		"num_dev_a_entries"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L186:
	.sleb128	14
	.byte		"p_dev_b_ff_storage"
	.byte		0
	.4byte		.L709
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L187:
	.sleb128	14
	.byte		"num_dev_b_entries"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L188:
	.sleb128	14
	.byte		"pp_ed_storage"
	.byte		0
	.4byte		.L715
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L189:
	.sleb128	14
	.byte		"num_ed_entries"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L190:
	.sleb128	14
	.byte		"p_ext_ed_record_define"
	.byte		0
	.4byte		.L717
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L191:
	.sleb128	14
	.byte		"num_ext_ed_records"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L192:
	.sleb128	14
	.byte		"p_int_ed_record_define"
	.byte		0
	.4byte		.L721
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L193:
	.sleb128	14
	.byte		"num_int_ed_records"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
.L194:
	.sleb128	14
	.byte		"p_ed_classes"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	104
	.byte		0x1
.L195:
	.sleb128	14
	.byte		"p_indicator_status"
	.byte		0
	.4byte		.L729
	.sleb128	2
	.byte		0x23
	.uleb128	108
	.byte		0x1
.L196:
	.sleb128	14
	.byte		"p_dtc_storage"
	.byte		0
	.4byte		.L731
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
.L197:
	.sleb128	14
	.byte		"p_dtc_suppressed"
	.byte		0
	.4byte		.L685
	.sleb128	2
	.byte		0x23
	.uleb128	116
	.byte		0x1
.L198:
	.sleb128	14
	.byte		"p_ff_length"
	.byte		0
	.4byte		.L732
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
.L199:
	.sleb128	14
	.byte		"p_counter_db_counter"
	.byte		0
	.4byte		.L733
	.sleb128	2
	.byte		0x23
	.uleb128	124
	.byte		0x1
.L200:
	.sleb128	14
	.byte		"num_counter_db_events"
	.byte		0
	.4byte		.L356
	.sleb128	3
	.byte		0x23
	.uleb128	128
	.byte		0x1
.L201:
	.sleb128	14
	.byte		"p_monitor_db_data"
	.byte		0
	.4byte		.L734
	.sleb128	3
	.byte		0x23
	.uleb128	132
	.byte		0x1
.L202:
	.sleb128	14
	.byte		"num_events"
	.byte		0
	.4byte		.L370
	.sleb128	3
	.byte		0x23
	.uleb128	136
	.byte		0x1
.L203:
	.sleb128	14
	.byte		"num_indicators"
	.byte		0
	.4byte		.L365
	.sleb128	3
	.byte		0x23
	.uleb128	138
	.byte		0x1
.L204:
	.sleb128	14
	.byte		"num_op_cycles"
	.byte		0
	.4byte		.L365
	.sleb128	3
	.byte		0x23
	.uleb128	139
	.byte		0x1
.L205:
	.sleb128	14
	.byte		"num_dtc_groups"
	.byte		0
	.4byte		.L365
	.sleb128	3
	.byte		0x23
	.uleb128	140
	.byte		0x1
.L206:
	.sleb128	14
	.byte		"num_ff_classes"
	.byte		0
	.4byte		.L356
	.sleb128	3
	.byte		0x23
	.uleb128	142
	.byte		0x1
.L207:
	.sleb128	14
	.byte		"max_handled_passed_events_per_scheduling"
	.byte		0
	.4byte		.L356
	.sleb128	3
	.byte		0x23
	.uleb128	144
	.byte		0x1
.L208:
	.sleb128	14
	.byte		"max_handled_failed_events_per_scheduling"
	.byte		0
	.4byte		.L356
	.sleb128	3
	.byte		0x23
	.uleb128	146
	.byte		0x1
.L209:
	.sleb128	14
	.byte		"max_cleared_per_scheduling"
	.byte		0
	.4byte		.L356
	.sleb128	3
	.byte		0x23
	.uleb128	148
	.byte		0x1
.L210:
	.sleb128	14
	.byte		"p_gen_cbk_event_status_changed"
	.byte		0
	.4byte		.L738
	.sleb128	3
	.byte		0x23
	.uleb128	152
	.byte		0x1
.L211:
	.sleb128	14
	.byte		"p_gen_cbk_event_data_changed"
	.byte		0
	.4byte		.L741
	.sleb128	3
	.byte		0x23
	.uleb128	156
	.byte		0x1
.L212:
	.sleb128	14
	.byte		"p_op_cycle_init_value"
	.byte		0
	.4byte		.L744
	.sleb128	3
	.byte		0x23
	.uleb128	160
	.byte		0x1
.L213:
	.sleb128	14
	.byte		"pp_dtc_status_changed"
	.byte		0
	.4byte		.L745
	.sleb128	3
	.byte		0x23
	.uleb128	164
	.byte		0x1
.L214:
	.sleb128	14
	.byte		"p_internal_dtc_groups"
	.byte		0
	.4byte		.L751
	.sleb128	3
	.byte		0x23
	.uleb128	168
	.byte		0x1
.L215:
	.sleb128	14
	.byte		"num_dtc_status_changed"
	.byte		0
	.4byte		.L365
	.sleb128	3
	.byte		0x23
	.uleb128	172
	.byte		0x1
.L216:
	.sleb128	14
	.byte		"service_04_clear_all"
	.byte		0
	.4byte		.L353
	.sleb128	3
	.byte		0x23
	.uleb128	173
	.byte		0x1
.L217:
	.sleb128	14
	.byte		"clear_internal_events"
	.byte		0
	.4byte		.L353
	.sleb128	3
	.byte		0x23
	.uleb128	174
	.byte		0x1
.L218:
	.sleb128	14
	.byte		"max_allowed_standard_ff_length"
	.byte		0
	.4byte		.L356
	.sleb128	3
	.byte		0x23
	.uleb128	176
	.byte		0x1
	.sleb128	0
.L684:
.L658:
	.sleb128	13
	.4byte		.L596
	.uleb128	770
	.uleb128	14
	.4byte		.L752-.L2
	.byte		"Dem_SetOpCycleParamType_Tag"
	.byte		0
	.uleb128	2
.L169:
	.sleb128	14
	.byte		"operation_cycle_id"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L170:
	.sleb128	14
	.byte		"cycle_state"
	.byte		0
	.4byte		.L608
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L752:
.L706:
	.sleb128	13
	.4byte		.L596
	.uleb128	770
	.uleb128	14
	.4byte		.L753-.L2
	.byte		"Dem_FFPrestorageType_Tag"
	.byte		0
	.uleb128	12
.L166:
	.sleb128	14
	.byte		"p_get_prestored_ff_entry"
	.byte		0
	.4byte		.L754
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L167:
	.sleb128	14
	.byte		"p_entry_occupied"
	.byte		0
	.4byte		.L758
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L168:
	.sleb128	14
	.byte		"num_prestore_entries"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L753:
.L712:
	.sleb128	13
	.4byte		.L596
	.uleb128	770
	.uleb128	14
	.4byte		.L759-.L2
	.byte		"Dem_DataStorageType_Tag"
	.byte		0
	.uleb128	12
.L163:
	.sleb128	14
	.byte		"p_get_buffer_entry"
	.byte		0
	.4byte		.L760
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L164:
	.sleb128	14
	.byte		"p_get_entry_occupied"
	.byte		0
	.4byte		.L764
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L165:
	.sleb128	14
	.byte		"buffer_length"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L759:
.L724:
	.sleb128	13
	.4byte		.L596
	.uleb128	770
	.uleb128	14
	.4byte		.L767-.L2
	.byte		"Dem_IntExtendedDataType_Tag"
	.byte		0
	.uleb128	8
.L161:
	.sleb128	14
	.byte		"record_number"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L162:
	.sleb128	14
	.byte		"p_read_int_data"
	.byte		0
	.4byte		.L768
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L767:
.L720:
	.sleb128	13
	.4byte		.L596
	.uleb128	770
	.uleb128	14
	.4byte		.L775-.L2
	.byte		"Dem_ExtExtendedDataType_Tag"
	.byte		0
	.uleb128	8
.L157:
	.sleb128	14
	.byte		"record_number"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L158:
	.sleb128	14
	.byte		"update"
	.byte		0
	.4byte		.L353
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L159:
	.sleb128	14
	.byte		"size"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L160:
	.sleb128	14
	.byte		"p_read_data"
	.byte		0
	.4byte		.L776
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L775:
.L698:
	.sleb128	13
	.4byte		.L596
	.uleb128	770
	.uleb128	14
	.4byte		.L780-.L2
	.byte		"Dem_FreezeFrameRecNumClassType_Tag"
	.byte		0
	.uleb128	8
.L155:
	.sleb128	14
	.byte		"p_ff_record"
	.byte		0
	.4byte		.L781
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L156:
	.sleb128	14
	.byte		"num_ff"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L780:
.L784:
	.sleb128	13
	.4byte		.L596
	.uleb128	770
	.uleb128	14
	.4byte		.L785-.L2
	.byte		"Dem_FreezeFrameRecordClassType_Tag"
	.byte		0
	.uleb128	8
.L152:
	.sleb128	14
	.byte		"record_number"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L153:
	.sleb128	14
	.byte		"ff_update"
	.byte		0
	.4byte		.L353
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L154:
	.sleb128	14
	.byte		"ff_record_trigger"
	.byte		0
	.4byte		.L786
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L785:
.L702:
	.sleb128	13
	.4byte		.L596
	.uleb128	658
	.uleb128	14
	.4byte		.L788-.L2
	.byte		"Dem_FFDidDefineType_Tag"
	.byte		0
	.uleb128	4
.L150:
	.sleb128	14
	.byte		"did"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L151:
	.sleb128	14
	.byte		"data_element_idx"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L788:
.L694:
	.sleb128	13
	.4byte		.L596
	.uleb128	658
	.uleb128	14
	.4byte		.L789-.L2
	.byte		"DataArrayType_Tag"
	.byte		0
	.uleb128	8
.L148:
	.sleb128	14
	.byte		"size"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L149:
	.sleb128	14
	.byte		"pReadData"
	.byte		0
	.4byte		.L776
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L789:
.L639:
	.sleb128	13
	.4byte		.L596
	.uleb128	658
	.uleb128	14
	.4byte		.L790-.L2
	.byte		"Dem_EvMem_Tag"
	.byte		0
	.uleb128	20
.L143:
	.sleb128	14
	.byte		"p_ev_mem_entries"
	.byte		0
	.4byte		.L791
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L144:
	.sleb128	14
	.byte		"p_first"
	.byte		0
	.4byte		.L763
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L145:
	.sleb128	14
	.byte		"p_last"
	.byte		0
	.4byte		.L763
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L146:
	.sleb128	14
	.byte		"p_next"
	.byte		0
	.4byte		.L763
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L147:
	.sleb128	14
	.byte		"p_prev"
	.byte		0
	.4byte		.L763
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L790:
.L664:
	.sleb128	13
	.4byte		.L596
	.uleb128	658
	.uleb128	14
	.4byte		.L792-.L2
	.byte		"Dem_LCfgEvent_Tag"
	.byte		0
	.uleb128	20
.L136:
	.sleb128	14
	.byte		"p_init_m_for_e"
	.byte		0
	.4byte		.L793
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L137:
	.sleb128	14
	.byte		"ppEventStatusChanged"
	.byte		0
	.4byte		.L798
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L138:
	.sleb128	14
	.byte		"pClearEventAllowed"
	.byte		0
	.4byte		.L804
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L139:
	.sleb128	14
	.byte		"p_event_data_changed"
	.byte		0
	.4byte		.L807
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L140:
	.sleb128	14
	.byte		"debounce_counter_idx"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L141:
	.sleb128	14
	.byte		"num_evStatusCh"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L142:
	.sleb128	14
	.byte		"debounce_alg"
	.byte		0
	.4byte		.L810
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
	.sleb128	0
.L792:
.L363:
	.sleb128	13
	.4byte		.L811
	.uleb128	76
	.uleb128	14
	.4byte		.L812-.L2
	.byte		"Dem_NvEvMemEntry_Tag"
	.byte		0
	.uleb128	24
.L116:
	.sleb128	14
	.byte		"event_id"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L117:
	.sleb128	14
	.byte		"ed_storage_index"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L118:
	.sleb128	14
	.byte		"dev_a_ff_index"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L119:
	.sleb128	14
	.byte		"dev_b_ff_index"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L120:
	.sleb128	14
	.byte		"ff_index"
	.byte		0
	.4byte		.L813
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L121:
	.sleb128	14
	.byte		"record_numbers"
	.byte		0
	.4byte		.L815
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L122:
	.sleb128	14
	.byte		"num_stored_ff"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L123:
	.sleb128	14
	.byte		"ed_stored"
	.byte		0
	.4byte		.L353
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L124:
	.sleb128	14
	.byte		"uds_status"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L125:
	.sleb128	14
	.byte		"si"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L126:
	.sleb128	14
	.byte		"occurrence_counter"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L127:
	.sleb128	14
	.byte		"cycles_since_last_failed"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L128:
	.sleb128	14
	.byte		"cycles_since_first_failed"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L129:
	.sleb128	14
	.byte		"failed_cycles"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L130:
	.sleb128	14
	.byte		"aging_counter"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L131:
	.sleb128	14
	.byte		"wir_bits"
	.byte		0
	.4byte		.L817
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L132:
	.sleb128	14
	.byte		"failure_counter"
	.byte		0
	.4byte		.L819
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L133:
	.sleb128	14
	.byte		"healing_counter"
	.byte		0
	.4byte		.L821
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
	.sleb128	0
.L812:
.L611:
	.sleb128	13
	.4byte		.L811
	.uleb128	76
	.uleb128	14
	.4byte		.L823-.L2
	.byte		"Dem_NvSi_Tag"
	.byte		0
	.uleb128	2
.L114:
	.sleb128	14
	.byte		"fdcThresholdReached"
	.byte		0
	.4byte		.L824
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L115:
	.sleb128	14
	.byte		"fdcThresholdReachedTOC"
	.byte		0
	.4byte		.L826
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L823:
.L614:
	.sleb128	13
	.4byte		.L811
	.uleb128	76
	.uleb128	14
	.4byte		.L828-.L2
	.byte		"Dem_NvAdmin_Tag"
	.byte		0
	.uleb128	32
.L108:
	.sleb128	14
	.byte		"event_occurrence_info"
	.byte		0
	.4byte		.L829
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L109:
	.sleb128	14
	.byte		"event_memory_overflow_ind"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L110:
	.sleb128	14
	.byte		"primary_first_ev_mem_entry"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L111:
	.sleb128	14
	.byte		"primary_last_ev_mem_entry"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L112:
	.sleb128	14
	.byte		"primary_next_ev_mem_entry"
	.byte		0
	.4byte		.L831
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L113:
	.sleb128	14
	.byte		"primary_prev_ev_mem_entry"
	.byte		0
	.4byte		.L833
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L828:
.L600:
	.sleb128	13
	.4byte		.L835
	.uleb128	69
	.uleb128	1
	.4byte		.L836-.L2
	.byte		"Dem_ConfigType_Tag"
	.byte		0
	.uleb128	164
.L66:
	.sleb128	14
	.byte		"p_dtc_attr_aging_allowed"
	.byte		0
	.4byte		.L837
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L67:
	.sleb128	14
	.byte		"p_dtc_attr_immediate_nv_storage"
	.byte		0
	.4byte		.L837
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L68:
	.sleb128	14
	.byte		"p_dtc_attr_instant_aging"
	.byte		0
	.4byte		.L837
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L69:
	.sleb128	14
	.byte		"p_dtc_attr_aging_cycle"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L70:
	.sleb128	14
	.byte		"p_dtc_attr_aging_threshold"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L71:
	.sleb128	14
	.byte		"p_dtc_attr_memory_dest"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L72:
	.sleb128	14
	.byte		"p_dtc_attr_priority"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L73:
	.sleb128	14
	.byte		"p_dtc_attr_significance"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L74:
	.sleb128	14
	.byte		"p_dtc_attr_ed"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L75:
	.sleb128	14
	.byte		"p_dtc_attr_ff_rec_num_class"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L76:
	.sleb128	14
	.byte		"p_dtc_attr_dev_ff_a_rec_num"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L77:
	.sleb128	14
	.byte		"p_dtc_attr_dev_ff_b_rec_num"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L78:
	.sleb128	14
	.byte		"p_event_attr_confirmed_threshold"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L79:
	.sleb128	14
	.byte		"p_event_attr_op_cycle"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L80:
	.sleb128	14
	.byte		"p_event_attr_enable_cond_group"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L81:
	.sleb128	14
	.byte		"p_event_attr_storage_cond_group"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L82:
	.sleb128	14
	.byte		"p_dtc_functional_unit"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L83:
	.sleb128	14
	.byte		"p_dtc_severity"
	.byte		0
	.4byte		.L840
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L84:
	.sleb128	14
	.byte		"p_dtc_obd_dtc"
	.byte		0
	.4byte		.L843
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L85:
	.sleb128	14
	.byte		"p_dtc_uds_dtc"
	.byte		0
	.4byte		.L844
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L86:
	.sleb128	14
	.byte		"p_dtc_ff_class"
	.byte		0
	.4byte		.L843
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L87:
	.sleb128	14
	.byte		"p_dtc_dev_a_ff_class"
	.byte		0
	.4byte		.L843
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L88:
	.sleb128	14
	.byte		"p_dtc_dev_b_ff_class"
	.byte		0
	.4byte		.L843
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L89:
	.sleb128	14
	.byte		"p_dtc_attributes"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L90:
	.sleb128	14
	.byte		"p_event_available"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L91:
	.sleb128	14
	.byte		"p_event_debounce_data"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
.L92:
	.sleb128	14
	.byte		"p_event_attributes"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	104
	.byte		0x1
.L93:
	.sleb128	14
	.byte		"p_event_indicator_attributes"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	108
	.byte		0x1
.L94:
	.sleb128	14
	.byte		"p_common_ff_data"
	.byte		0
	.4byte		.L843
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
.L95:
	.sleb128	14
	.byte		"p_common_ff_data_dev_a"
	.byte		0
	.4byte		.L843
	.sleb128	2
	.byte		0x23
	.uleb128	116
	.byte		0x1
.L96:
	.sleb128	14
	.byte		"p_db_counter"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
.L97:
	.sleb128	14
	.byte		"p_db_time"
	.byte		0
	.4byte		.L849
	.sleb128	2
	.byte		0x23
	.uleb128	124
	.byte		0x1
.L98:
	.sleb128	14
	.byte		"p_int_dtc_index"
	.byte		0
	.4byte		.L843
	.sleb128	3
	.byte		0x23
	.uleb128	128
	.byte		0x1
.L99:
	.sleb128	14
	.byte		"p_int_dtc_events"
	.byte		0
	.4byte		.L853
	.sleb128	3
	.byte		0x23
	.uleb128	132
	.byte		0x1
.L100:
	.sleb128	14
	.byte		"p_indicator_attributes"
	.byte		0
	.4byte		.L854
	.sleb128	3
	.byte		0x23
	.uleb128	136
	.byte		0x1
.L101:
	.sleb128	14
	.byte		"p_ff_classes"
	.byte		0
	.4byte		.L861
	.sleb128	3
	.byte		0x23
	.uleb128	140
	.byte		0x1
.L102:
	.sleb128	14
	.byte		"p_enable_condition_groups"
	.byte		0
	.4byte		.L865
	.sleb128	3
	.byte		0x23
	.uleb128	144
	.byte		0x1
.L103:
	.sleb128	14
	.byte		"p_storage_condition_groups"
	.byte		0
	.4byte		.L869
	.sleb128	3
	.byte		0x23
	.uleb128	148
	.byte		0x1
.L104:
	.sleb128	14
	.byte		"num_dtcs"
	.byte		0
	.4byte		.L356
	.sleb128	3
	.byte		0x23
	.uleb128	152
	.byte		0x1
.L105:
	.sleb128	14
	.byte		"num_events"
	.byte		0
	.4byte		.L370
	.sleb128	3
	.byte		0x23
	.uleb128	154
	.byte		0x1
.L106:
	.sleb128	14
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L873
	.sleb128	3
	.byte		0x23
	.uleb128	156
	.byte		0x1
.L107:
	.sleb128	14
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L873
	.sleb128	3
	.byte		0x23
	.uleb128	160
	.byte		0x1
	.sleb128	0
.L836:
.L830:
	.sleb128	13
	.4byte		.L835
	.uleb128	69
	.uleb128	1
	.4byte		.L874-.L2
	.byte		"Dem_EventOccurrenceInfoType_Tag"
	.byte		0
	.uleb128	8
.L60:
	.sleb128	14
	.byte		"most_recent_failed_event"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L61:
	.sleb128	14
	.byte		"most_recent_confirmed_event"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L62:
	.sleb128	14
	.byte		"first_failed_event"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L63:
	.sleb128	14
	.byte		"first_confirmed_event"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L874:
.L728:
	.sleb128	13
	.4byte		.L835
	.uleb128	69
	.uleb128	1
	.4byte		.L875-.L2
	.byte		"Dem_ExtendedData_Tag"
	.byte		0
	.uleb128	16
.L56:
	.sleb128	14
	.byte		"p_ext_ed_record_index"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L57:
	.sleb128	14
	.byte		"num_ext_ed_records"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L58:
	.sleb128	14
	.byte		"p_int_ed_record_index"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L59:
	.sleb128	14
	.byte		"num_int_ed_records"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L875:
.L852:
	.sleb128	13
	.4byte		.L835
	.uleb128	69
	.uleb128	1
	.4byte		.L876-.L2
	.byte		"Dem_TimeDebouncing_Tag"
	.byte		0
	.uleb128	8
.L54:
	.sleb128	14
	.byte		"failed_threshold"
	.byte		0
	.4byte		.L877
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L55:
	.sleb128	14
	.byte		"passed_threshold"
	.byte		0
	.4byte		.L877
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L876:
.L848:
	.sleb128	13
	.4byte		.L835
	.uleb128	69
	.uleb128	1
	.4byte		.L879-.L2
	.byte		"Dem_CounterDebouncing_Tag"
	.byte		0
	.uleb128	16
.L45:
	.sleb128	14
	.byte		"incr_step"
	.byte		0
	.4byte		.L652
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L46:
	.sleb128	14
	.byte		"decr_step"
	.byte		0
	.4byte		.L652
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L47:
	.sleb128	14
	.byte		"failed_threshold"
	.byte		0
	.4byte		.L652
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L48:
	.sleb128	14
	.byte		"passed_threshold"
	.byte		0
	.4byte		.L652
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L49:
	.sleb128	14
	.byte		"fdc_threshold"
	.byte		0
	.4byte		.L652
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L50:
	.sleb128	14
	.byte		"jump_up_value"
	.byte		0
	.4byte		.L652
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L51:
	.sleb128	14
	.byte		"jump_down_value"
	.byte		0
	.4byte		.L652
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L52:
	.sleb128	14
	.byte		"jump_up"
	.byte		0
	.4byte		.L353
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L53:
	.sleb128	14
	.byte		"jump_down"
	.byte		0
	.4byte		.L353
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
	.sleb128	0
.L879:
.L737:
	.sleb128	13
	.4byte		.L835
	.uleb128	69
	.uleb128	1
	.4byte		.L880-.L2
	.byte		"Dem_MonitorDebouncing_Tag"
	.byte		0
	.uleb128	4
.L44:
	.sleb128	14
	.byte		"pGetFDCnt"
	.byte		0
	.4byte		.L881
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L880:
.L872:
	.sleb128	13
	.4byte		.L835
	.uleb128	69
	.uleb128	1
	.4byte		.L885-.L2
	.byte		"Dem_StorageConditionGroupType_Tag"
	.byte		0
	.uleb128	8
.L42:
	.sleb128	14
	.byte		"p_storage_conditions"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L43:
	.sleb128	14
	.byte		"num_storage_conditions"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L885:
.L868:
	.sleb128	13
	.4byte		.L835
	.uleb128	69
	.uleb128	1
	.4byte		.L886-.L2
	.byte		"Dem_EnableConditionGroupType_Tag"
	.byte		0
	.uleb128	8
.L40:
	.sleb128	14
	.byte		"p_enable_conditions"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L41:
	.sleb128	14
	.byte		"num_enable_conditions"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L886:
.L864:
	.sleb128	13
	.4byte		.L835
	.uleb128	69
	.uleb128	1
	.4byte		.L887-.L2
	.byte		"Dem_FreezeFrameClassType_Tag"
	.byte		0
	.uleb128	8
.L38:
	.sleb128	14
	.byte		"p_ff_did_idx"
	.byte		0
	.4byte		.L843
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L39:
	.sleb128	14
	.byte		"num_ff_dids"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L887:
.L860:
	.sleb128	13
	.4byte		.L835
	.uleb128	69
	.uleb128	1
	.4byte		.L888-.L2
	.byte		"Dem_IndicatorListItem_Tag"
	.byte		0
	.uleb128	3
.L35:
	.sleb128	14
	.byte		"behaviour"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L36:
	.sleb128	14
	.byte		"healing_threshold"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L37:
	.sleb128	14
	.byte		"failure_threshold"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L888:
.L674:
	.sleb128	13
	.4byte		.L835
	.uleb128	69
	.uleb128	1
	.4byte		.L889-.L2
	.byte		"Dem_InternalGroupOfDtc_Tag"
	.byte		0
	.uleb128	12
.L32:
	.sleb128	14
	.byte		"dtc_group"
	.byte		0
	.4byte		.L681
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L33:
	.sleb128	14
	.byte		"start_dtc_value"
	.byte		0
	.4byte		.L681
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L34:
	.sleb128	14
	.byte		"end_dtc_value"
	.byte		0
	.4byte		.L681
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L889:
	.section	.debug_info,,n
.L787:
	.sleb128	15
	.4byte		.L596
	.uleb128	770
	.uleb128	14
	.4byte		.L890-.L2
	.byte		"Dem_RecordTriggerType_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	16
	.byte		"DEM_TRIGGER_ON_CONFIRMED"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"DEM_TRIGGER_ON_FDC_THRESHOLD"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"DEM_TRIGGER_ON_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"DEM_TRIGGER_ON_TEST_FAILED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L890:
	.section	.debug_info,,n
.L354:
	.sleb128	17
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L353:
	.sleb128	18
	.byte		"boolean"
	.byte		0
	.4byte		.L354
.L357:
	.sleb128	17
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L356:
	.sleb128	18
	.byte		"uint16"
	.byte		0
	.4byte		.L357
.L362:
	.sleb128	18
	.byte		"Dem_NvEvMemEntryType"
	.byte		0
	.4byte		.L363
	.section	.debug_info,,n
.L361:
	.sleb128	19
	.4byte		.L362
.L360:
	.sleb128	18
	.byte		"Dem_NvEvMemEntryPtrType"
	.byte		0
	.4byte		.L361
	.section	.debug_info,,n
.L359:
	.sleb128	20
	.4byte		.L360
.L365:
	.sleb128	18
	.byte		"uint8"
	.byte		0
	.4byte		.L354
.L370:
	.sleb128	18
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L356
.L376:
	.sleb128	18
	.byte		"Dem_UdsStatusByteType"
	.byte		0
	.4byte		.L365
.L386:
	.sleb128	20
	.4byte		.L376
.L389:
	.sleb128	20
	.4byte		.L356
.L409:
	.sleb128	20
	.4byte		.L365
.L473:
	.sleb128	17
	.byte		"signed char"
	.byte		0
	.byte		0x6
	.byte		0x1
.L472:
	.sleb128	18
	.byte		"sint8"
	.byte		0
	.4byte		.L473
.L523:
	.sleb128	18
	.byte		"Dem_IndicatorIdType"
	.byte		0
	.4byte		.L365
.L582:
	.sleb128	20
	.4byte		.L370
.L588:
	.sleb128	18
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L365
.L591:
	.sleb128	19
	.4byte		.L472
.L599:
	.sleb128	18
	.byte		"Dem_ConfigType"
	.byte		0
	.4byte		.L600
.L598:
	.sleb128	20
	.4byte		.L599
.L597:
	.sleb128	19
	.4byte		.L598
	.section	.debug_info,,n
.L603:
	.sleb128	21
	.4byte		.L604-.L2
	.4byte		.L376
	.section	.debug_info,,n
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L604:
.L608:
	.sleb128	18
	.byte		"Dem_OperationCycleStateType"
	.byte		0
	.4byte		.L365
.L606:
	.sleb128	21
	.4byte		.L607-.L2
	.4byte		.L608
	.sleb128	22
	.uleb128	0
	.sleb128	0
.L607:
.L610:
	.sleb128	18
	.byte		"Dem_NvSiType"
	.byte		0
	.4byte		.L611
.L613:
	.sleb128	18
	.byte		"Dem_NvAdminType"
	.byte		0
	.4byte		.L614
	.section	.debug_info,,n
.L631:
	.sleb128	23
	.4byte		.L632-.L2
	.byte		0x1
	.sleb128	0
.L632:
.L630:
	.sleb128	19
	.4byte		.L631
.L629:
	.sleb128	18
	.byte		"Dem_ResetNvBlockPtrType"
	.byte		0
	.4byte		.L630
.L628:
	.sleb128	20
	.4byte		.L629
.L626:
	.sleb128	21
	.4byte		.L627-.L2
	.4byte		.L628
	.sleb128	22
	.uleb128	13
	.sleb128	0
.L627:
.L634:
	.sleb128	21
	.4byte		.L635-.L2
	.4byte		.L359
	.sleb128	22
	.uleb128	9
	.sleb128	0
.L635:
.L638:
	.sleb128	18
	.byte		"Dem_EvMemType"
	.byte		0
	.4byte		.L639
.L637:
	.sleb128	20
	.4byte		.L638
.L641:
	.sleb128	21
	.4byte		.L642-.L2
	.4byte		.L353
	.sleb128	22
	.uleb128	0
	.sleb128	0
.L642:
.L644:
	.sleb128	21
	.4byte		.L645-.L2
	.4byte		.L365
	.sleb128	22
	.uleb128	0
	.sleb128	0
.L645:
.L647:
	.sleb128	21
	.4byte		.L648-.L2
	.4byte		.L365
	.sleb128	22
	.uleb128	0
	.sleb128	0
.L648:
.L653:
	.sleb128	17
	.byte		"short"
	.byte		0
	.byte		0x5
	.byte		0x2
.L652:
	.sleb128	18
	.byte		"sint16"
	.byte		0
	.4byte		.L653
.L650:
	.sleb128	21
	.4byte		.L651-.L2
	.4byte		.L652
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L651:
.L657:
	.sleb128	18
	.byte		"Dem_SetOpCycleParamType"
	.byte		0
	.4byte		.L658
.L655:
	.sleb128	21
	.4byte		.L656-.L2
	.4byte		.L657
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L656:
.L663:
	.sleb128	18
	.byte		"Dem_LCfgEventType"
	.byte		0
	.4byte		.L664
.L662:
	.sleb128	20
	.4byte		.L663
.L660:
	.sleb128	21
	.4byte		.L661-.L2
	.4byte		.L662
	.sleb128	22
	.uleb128	3
	.sleb128	0
.L661:
.L668:
	.sleb128	20
	.4byte		.L608
.L666:
	.sleb128	21
	.4byte		.L667-.L2
	.4byte		.L668
	.sleb128	22
	.uleb128	0
	.sleb128	0
.L667:
.L673:
	.sleb128	18
	.byte		"Dem_InternalGroupOfDtcType"
	.byte		0
	.4byte		.L674
.L672:
	.sleb128	20
	.4byte		.L673
.L670:
	.sleb128	21
	.4byte		.L671-.L2
	.4byte		.L672
	.sleb128	22
	.uleb128	0
	.sleb128	0
.L671:
.L677:
	.sleb128	18
	.byte		"Dem_LCfgType"
	.byte		0
	.4byte		.L678
.L676:
	.sleb128	20
	.4byte		.L677
.L682:
	.sleb128	17
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L681:
	.sleb128	18
	.byte		"uint32"
	.byte		0
	.4byte		.L682
.L680:
	.sleb128	20
	.4byte		.L681
.L685:
	.sleb128	19
	.4byte		.L365
.L686:
	.sleb128	19
	.4byte		.L657
.L687:
	.sleb128	19
	.4byte		.L662
.L690:
	.sleb128	19
	.4byte		.L637
.L688:
	.sleb128	21
	.4byte		.L689-.L2
	.4byte		.L690
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L689:
.L693:
	.sleb128	18
	.byte		"Dem_DataElementType"
	.byte		0
	.4byte		.L694
.L692:
	.sleb128	20
	.4byte		.L693
.L691:
	.sleb128	19
	.4byte		.L692
.L697:
	.sleb128	18
	.byte		"Dem_FreezeFrameRecNumClassType"
	.byte		0
	.4byte		.L698
.L696:
	.sleb128	20
	.4byte		.L697
.L695:
	.sleb128	19
	.4byte		.L696
.L701:
	.sleb128	18
	.byte		"Dem_FFDidDefineType"
	.byte		0
	.4byte		.L702
.L700:
	.sleb128	20
	.4byte		.L701
.L699:
	.sleb128	19
	.4byte		.L700
.L705:
	.sleb128	18
	.byte		"Dem_FFPrestorageType"
	.byte		0
	.4byte		.L706
.L704:
	.sleb128	20
	.4byte		.L705
.L703:
	.sleb128	19
	.4byte		.L704
.L711:
	.sleb128	18
	.byte		"Dem_DataStorageType"
	.byte		0
	.4byte		.L712
.L710:
	.sleb128	20
	.4byte		.L711
.L709:
	.sleb128	19
	.4byte		.L710
.L707:
	.sleb128	21
	.4byte		.L708-.L2
	.4byte		.L709
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L708:
.L713:
	.sleb128	21
	.4byte		.L714-.L2
	.4byte		.L356
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L714:
.L715:
	.sleb128	21
	.4byte		.L716-.L2
	.4byte		.L709
	.sleb128	22
	.uleb128	1
	.sleb128	0
.L716:
.L719:
	.sleb128	18
	.byte		"Dem_ExtExtendedDataType"
	.byte		0
	.4byte		.L720
.L718:
	.sleb128	20
	.4byte		.L719
.L717:
	.sleb128	19
	.4byte		.L718
.L723:
	.sleb128	18
	.byte		"Dem_IntExtendedDataType"
	.byte		0
	.4byte		.L724
.L722:
	.sleb128	20
	.4byte		.L723
.L721:
	.sleb128	19
	.4byte		.L722
.L727:
	.sleb128	18
	.byte		"Dem_ExtendedDataType"
	.byte		0
	.4byte		.L728
.L726:
	.sleb128	20
	.4byte		.L727
.L725:
	.sleb128	19
	.4byte		.L726
.L730:
	.sleb128	18
	.byte		"Dem_IndicatorStatusType"
	.byte		0
	.4byte		.L365
.L729:
	.sleb128	19
	.4byte		.L730
.L731:
	.sleb128	19
	.4byte		.L353
.L732:
	.sleb128	19
	.4byte		.L356
.L733:
	.sleb128	19
	.4byte		.L652
.L736:
	.sleb128	18
	.byte		"Dem_MonitorDebouncingType"
	.byte		0
	.4byte		.L737
.L735:
	.sleb128	20
	.4byte		.L736
.L734:
	.sleb128	19
	.4byte		.L735
	.section	.debug_info,,n
.L739:
	.sleb128	24
	.4byte		.L740-.L2
	.4byte		.L588
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	25
	.4byte		.L370
	.sleb128	25
	.4byte		.L376
	.sleb128	25
	.4byte		.L376
	.sleb128	0
.L740:
.L738:
	.sleb128	19
	.4byte		.L739
.L742:
	.sleb128	24
	.4byte		.L743-.L2
	.4byte		.L588
	.byte		0x1
	.sleb128	25
	.4byte		.L370
	.sleb128	0
.L743:
.L741:
	.sleb128	19
	.4byte		.L742
.L744:
	.sleb128	19
	.4byte		.L668
.L749:
	.sleb128	24
	.4byte		.L750-.L2
	.4byte		.L588
	.byte		0x1
	.sleb128	25
	.4byte		.L681
	.sleb128	25
	.4byte		.L376
	.sleb128	25
	.4byte		.L376
	.sleb128	0
.L750:
.L748:
	.sleb128	19
	.4byte		.L749
.L747:
	.sleb128	18
	.byte		"DtcStChPtrType"
	.byte		0
	.4byte		.L748
.L746:
	.sleb128	20
	.4byte		.L747
.L745:
	.sleb128	19
	.4byte		.L746
.L751:
	.sleb128	19
	.4byte		.L672
.L757:
	.sleb128	18
	.byte		"Uint8PtrType"
	.byte		0
	.4byte		.L685
.L755:
	.sleb128	24
	.4byte		.L756-.L2
	.4byte		.L757
	.byte		0x1
	.sleb128	25
	.4byte		.L365
	.sleb128	0
.L756:
.L754:
	.sleb128	19
	.4byte		.L755
.L758:
	.sleb128	19
	.4byte		.L370
.L763:
	.sleb128	18
	.byte		"Uint8NvPtrType"
	.byte		0
	.4byte		.L685
.L761:
	.sleb128	24
	.4byte		.L762-.L2
	.4byte		.L763
	.byte		0x1
	.sleb128	25
	.4byte		.L356
	.sleb128	0
.L762:
.L760:
	.sleb128	19
	.4byte		.L761
.L765:
	.sleb128	24
	.4byte		.L766-.L2
	.4byte		.L763
	.byte		0x1
	.sleb128	25
	.4byte		.L356
	.sleb128	0
.L766:
.L764:
	.sleb128	19
	.4byte		.L765
.L772:
	.sleb128	18
	.byte		"Dem_ReturnGetExtendedDataRecordByDTCType"
	.byte		0
	.4byte		.L365
.L770:
	.sleb128	24
	.4byte		.L771-.L2
	.4byte		.L772
	.byte		0x1
.L774:
	.sleb128	20
	.4byte		.L362
.L773:
	.sleb128	19
	.4byte		.L774
	.sleb128	25
	.4byte		.L773
	.sleb128	25
	.4byte		.L365
	.sleb128	25
	.4byte		.L370
	.sleb128	25
	.4byte		.L356
	.sleb128	25
	.4byte		.L685
	.sleb128	25
	.4byte		.L732
	.sleb128	0
.L771:
.L769:
	.sleb128	19
	.4byte		.L770
.L768:
	.sleb128	18
	.byte		"ReadIntDataWrapper"
	.byte		0
	.4byte		.L769
.L778:
	.sleb128	24
	.4byte		.L779-.L2
	.4byte		.L588
	.byte		0x1
	.sleb128	25
	.4byte		.L685
	.sleb128	0
.L779:
.L777:
	.sleb128	19
	.4byte		.L778
.L776:
	.sleb128	18
	.byte		"ReadDataPtrType"
	.byte		0
	.4byte		.L777
.L783:
	.sleb128	18
	.byte		"Dem_FreezeFrameRecordClassType"
	.byte		0
	.4byte		.L784
.L782:
	.sleb128	20
	.4byte		.L783
.L781:
	.sleb128	19
	.4byte		.L782
.L786:
	.sleb128	18
	.byte		"Dem_RecordTriggerType"
	.byte		0
	.4byte		.L787
.L791:
	.sleb128	19
	.4byte		.L359
.L795:
	.sleb128	24
	.4byte		.L796-.L2
	.4byte		.L588
	.byte		0x1
.L797:
	.sleb128	18
	.byte		"Dem_InitMonitorReasonType"
	.byte		0
	.4byte		.L365
	.sleb128	25
	.4byte		.L797
	.sleb128	0
.L796:
.L794:
	.sleb128	19
	.4byte		.L795
.L793:
	.sleb128	18
	.byte		"InitMForEPtrType"
	.byte		0
	.4byte		.L794
.L802:
	.sleb128	24
	.4byte		.L803-.L2
	.4byte		.L588
	.byte		0x1
	.sleb128	25
	.4byte		.L376
	.sleb128	25
	.4byte		.L376
	.sleb128	0
.L803:
.L801:
	.sleb128	19
	.4byte		.L802
.L800:
	.sleb128	18
	.byte		"EvStChPtrType"
	.byte		0
	.4byte		.L801
.L799:
	.sleb128	20
	.4byte		.L800
.L798:
	.sleb128	19
	.4byte		.L799
.L805:
	.sleb128	24
	.4byte		.L806-.L2
	.4byte		.L588
	.byte		0x1
	.sleb128	25
	.4byte		.L731
	.sleb128	0
.L806:
.L804:
	.sleb128	19
	.4byte		.L805
.L808:
	.sleb128	24
	.4byte		.L809-.L2
	.4byte		.L588
	.byte		0x1
	.sleb128	0
.L809:
.L807:
	.sleb128	19
	.4byte		.L808
.L810:
	.sleb128	18
	.byte		"Dem_DebouncingType"
	.byte		0
	.4byte		.L365
.L813:
	.sleb128	21
	.4byte		.L814-.L2
	.4byte		.L356
	.sleb128	22
	.uleb128	0
	.sleb128	0
.L814:
.L815:
	.sleb128	21
	.4byte		.L816-.L2
	.4byte		.L365
	.sleb128	22
	.uleb128	0
	.sleb128	0
.L816:
.L817:
	.sleb128	21
	.4byte		.L818-.L2
	.4byte		.L365
	.sleb128	22
	.uleb128	0
	.sleb128	22
	.uleb128	0
	.sleb128	0
.L818:
.L819:
	.sleb128	21
	.4byte		.L820-.L2
	.4byte		.L365
	.sleb128	22
	.uleb128	0
	.sleb128	0
.L820:
.L821:
	.sleb128	21
	.4byte		.L822-.L2
	.4byte		.L365
	.sleb128	22
	.uleb128	0
	.sleb128	0
.L822:
.L824:
	.sleb128	21
	.4byte		.L825-.L2
	.4byte		.L365
	.sleb128	22
	.uleb128	0
	.sleb128	0
.L825:
.L826:
	.sleb128	21
	.4byte		.L827-.L2
	.4byte		.L365
	.sleb128	22
	.uleb128	0
	.sleb128	0
.L827:
.L829:
	.sleb128	18
	.byte		"Dem_EventOccurrenceInfoType"
	.byte		0
	.4byte		.L830
.L831:
	.sleb128	21
	.4byte		.L832-.L2
	.4byte		.L365
	.sleb128	22
	.uleb128	9
	.sleb128	0
.L832:
.L833:
	.sleb128	21
	.4byte		.L834-.L2
	.4byte		.L365
	.sleb128	22
	.uleb128	9
	.sleb128	0
.L834:
.L838:
	.sleb128	20
	.4byte		.L353
.L837:
	.sleb128	19
	.4byte		.L838
.L839:
	.sleb128	19
	.4byte		.L409
.L842:
	.sleb128	18
	.byte		"Dem_DTCSeverityType"
	.byte		0
	.4byte		.L365
.L841:
	.sleb128	20
	.4byte		.L842
.L840:
	.sleb128	19
	.4byte		.L841
.L843:
	.sleb128	19
	.4byte		.L389
.L844:
	.sleb128	19
	.4byte		.L680
.L847:
	.sleb128	18
	.byte		"Dem_CounterDebouncingType"
	.byte		0
	.4byte		.L848
.L846:
	.sleb128	20
	.4byte		.L847
.L845:
	.sleb128	19
	.4byte		.L846
.L851:
	.sleb128	18
	.byte		"Dem_TimeDebouncingType"
	.byte		0
	.4byte		.L852
.L850:
	.sleb128	20
	.4byte		.L851
.L849:
	.sleb128	19
	.4byte		.L850
.L853:
	.sleb128	19
	.4byte		.L582
.L859:
	.sleb128	18
	.byte		"Dem_IndicatorListItemType"
	.byte		0
	.4byte		.L860
.L858:
	.sleb128	20
	.4byte		.L859
.L857:
	.sleb128	19
	.4byte		.L858
.L856:
	.sleb128	18
	.byte		"IndicatorListItemPtrType"
	.byte		0
	.4byte		.L857
.L855:
	.sleb128	20
	.4byte		.L856
.L854:
	.sleb128	19
	.4byte		.L855
.L863:
	.sleb128	18
	.byte		"Dem_FreezeFrameClassType"
	.byte		0
	.4byte		.L864
.L862:
	.sleb128	20
	.4byte		.L863
.L861:
	.sleb128	19
	.4byte		.L862
.L867:
	.sleb128	18
	.byte		"Dem_EnableConditionGroupType"
	.byte		0
	.4byte		.L868
.L866:
	.sleb128	20
	.4byte		.L867
.L865:
	.sleb128	19
	.4byte		.L866
.L871:
	.sleb128	18
	.byte		"Dem_StorageConditionGroupType"
	.byte		0
	.4byte		.L872
.L870:
	.sleb128	20
	.4byte		.L871
.L869:
	.sleb128	19
	.4byte		.L870
.L873:
	.sleb128	20
	.4byte		.L844
.L878:
	.sleb128	17
	.byte		"long"
	.byte		0
	.byte		0x5
	.byte		0x4
.L877:
	.sleb128	18
	.byte		"sint32"
	.byte		0
	.4byte		.L878
.L883:
	.sleb128	24
	.4byte		.L884-.L2
	.4byte		.L588
	.byte		0x1
	.sleb128	25
	.4byte		.L591
	.sleb128	0
.L884:
.L882:
	.sleb128	19
	.4byte		.L883
.L881:
	.sleb128	18
	.byte		"GetFaultDetectionCounterPtrType"
	.byte		0
	.4byte		.L882
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L358:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L364:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo6),31
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),30
	.d2locend
.L366:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),5
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo6),30
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo7),30
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo10),30
	.d2locend
.L368:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo11),28
	.d2locend
.L371:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo6),29
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo10),29
	.d2locend
.L378:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locend
.L384:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),31
	.d2locend
.L387:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo18),30
	.d2locend
.L390:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo18),28
	.d2locend
.L392:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),29
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo18),29
	.d2locend
.L398:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locend
.L399:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo29),4
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),0
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),0
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),0
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo28),0
	.d2locend
.L400:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),5
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo27),5
	.d2locend
.L401:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo38),6
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo31),7
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),7
	.d2locend
.L407:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo26),4
	.d2locend
.L410:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo35),7
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),7
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo26),7
	.d2locend
.L416:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),3
	.d2locend
.L422:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),3
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),7
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),7
	.d2locend
.L423:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),4
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),3
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),3
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo53),3
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo55),3
	.d2locend
.L424:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo62),5
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo54),31
	.d2locend
.L425:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo52),6
	.d2locend
.L431:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),6
	.d2locend
.L437:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),31
	.d2locend
.L443:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),3
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),31
	.d2locend
.L449:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),3
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),31
	.d2locend
.L455:
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),3
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),31
	.d2locend
.L461:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),3
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),3
	.d2locend
.L489:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),3
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),0
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),0
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),0
	.d2locend
.L495:
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),3
	.d2locend
.L496:
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo95),4
	.d2locend
.L502:
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),3
	.d2locend
.L508:
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),3
	.d2locend
.L509:
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),5
	.d2locend
.L515:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),3
	.d2locend
.L516:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),5
	.d2locend
.L522:
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),3
	.d2locend
.L524:
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),5
	.d2locend
.L530:
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),3
	.d2locend
.L536:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),3
	.d2locend
.L542:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),3
	.d2locend
.L543:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo110),4
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),6
	.d2locend
.L549:
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),3
	.d2locend
.L550:
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo115),4
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),6
	.d2locend
.L561:
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo119),3
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),0
	.d2locend
.L567:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),3
	.d2locend
.L568:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),4
	.d2locend
.L574:
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),3
	.d2locend
.L580:
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo127),3
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo129),0
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo131),0
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo133),0
	.d2locend
.L583:
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo132),4
	.d2locend
.L590:
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),3
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),0
	.d2locend
.L592:
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo139),4
	.d2locend
.L594:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo140),3
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo141),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Dem_GetFaultDetectionCounterByIntDtc"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Dem_Internal_GetFaultDetectionCounter"
	.wrcm.end
	.wrcm.nelem "Dem_IsDtcAvailable"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dem_AgingDisplacementUdsStatus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "AgingDisplacementUdsStatus"
	.wrcm.end
	.wrcm.nelem "Dem_ClearIntDtcEventData"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "ClearIntDtcEventData"
	.wrcm.end
	.wrcm.nelem "Dem_GetSiStatusByIntDtc"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Dem_BuildSiByte"
	.wrcm.end
	.wrcm.nelem "Dem_CalculateIndicatorStatus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dem_HandleHealingCounter"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "HandleHealingCounter"
	.wrcm.end
	.wrcm.nelem "Dem_HandleFailureCounter"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "HandleFailureCounter"
	.wrcm.end
	.wrcm.nelem "Dem_ClearAllHealingCounters"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Dem_MemSet"
	.wrcm.end
	.wrcm.nelem "Dem_ClearAllFailureCounters"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dem_SetIndicatorOn"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dem_SetHealingCounter"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dem_SetFailureCounter"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dem_GetFailureCounter"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dem_ClearUdsBitsForCombinedEvent"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Dem_ClrUdsBits"
	.wrcm.end
	.wrcm.nelem "Dem_EvMemEntryHasPendingUpdates"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dem_NvResetMaxFdcSinceLastClear"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dem_UpdateMaxFdcSinceLastClear"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dem_SetMaxFdcSinceLastClear"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dem_NvResetSi"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Dem_MemSet"
	.wrcm.end
	.wrcm.nelem "Dem_GetSiFdcThresholdReached"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dem_ClrSiFdcThresholdReachedTOC"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Dem_EaSi","SchM_Exit_Dem_EaSi"
	.wrcm.end
	.wrcm.nelem "Dem_ClrSiFdcThresholdReached"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Dem_EaSi","SchM_Exit_Dem_EaSi"
	.wrcm.end
	.wrcm.nelem "Dem_SetSiFdcThresholdReachedTOC"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Dem_EaSi","SchM_Exit_Dem_EaSi"
	.wrcm.end
	.wrcm.nelem "Dem_SetSiFdcThresholdReached"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Dem_EaSi","SchM_Exit_Dem_EaSi"
	.wrcm.end
	.wrcm.nelem "HandleHealingCounter"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dem_GetSiFdcThresholdReachedTOC","Dem_UpdateIndicators"
	.wrcm.end
	.wrcm.nelem "Dem_GetSiFdcThresholdReachedTOC"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "HandleFailureCounter"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "AgingDisplacementUdsStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dem_ClrUdsBits","Dem_GetUdsStatusByIntDtc","Dem_TriggerOnDTCStatus","Dem_TriggerOnEventStatus"
	.wrcm.end
	.wrcm.nelem "Dem_GetUdsStatusByIntDtc"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "ClearIntDtcEventData"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dem_ClearEventAllowed","Dem_ClearEventData","Dem_ClearPrestoredFF"
	.wrcm.end
	.wrcm.nelem "Dem_NvResetPrimaryEvMemEntry10"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dem_NvResetEvMemEntry"
	.wrcm.end
	.wrcm.nelem "Dem_NvResetPrimaryEvMemEntry09"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dem_NvResetEvMemEntry"
	.wrcm.end
	.wrcm.nelem "Dem_NvResetPrimaryEvMemEntry08"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dem_NvResetEvMemEntry"
	.wrcm.end
	.wrcm.nelem "Dem_NvResetPrimaryEvMemEntry07"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dem_NvResetEvMemEntry"
	.wrcm.end
	.wrcm.nelem "Dem_NvResetPrimaryEvMemEntry06"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dem_NvResetEvMemEntry"
	.wrcm.end
	.wrcm.nelem "Dem_NvResetPrimaryEvMemEntry05"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dem_NvResetEvMemEntry"
	.wrcm.end
	.wrcm.nelem "Dem_NvResetPrimaryEvMemEntry04"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dem_NvResetEvMemEntry"
	.wrcm.end
	.wrcm.nelem "Dem_NvResetPrimaryEvMemEntry03"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dem_NvResetEvMemEntry"
	.wrcm.end
	.wrcm.nelem "Dem_NvResetPrimaryEvMemEntry02"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dem_NvResetEvMemEntry"
	.wrcm.end
	.wrcm.nelem "Dem_NvResetPrimaryEvMemEntry01"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dem_NvResetEvMemEntry"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dem_Lcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dem_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dem_Lcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dem_Lcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dem_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dem_Lcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\Dem_Lcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
