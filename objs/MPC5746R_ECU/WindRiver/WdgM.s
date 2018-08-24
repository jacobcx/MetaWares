#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"WdgM.c"
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
# LOCAL_INLINE FUNC(void, WDGM_CODE) WdgM_DemReport
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L1045:
	.section	.invalid_TEXT,,c
#$$ld
.L1041:
	.0byte		.L1039
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgM\\ssc\\make\\..\\src\\WdgM.c"
        .d2line         166,36
#$$ld
.L1048:

#$$bf	WdgM_DemReport,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
WdgM_DemReport:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# WdgM_EventId=r3 WdgM_EventId=r3
	mr		r4,r4		# WdgM_EventStatus=r4 WdgM_EventStatus=r4
	.d2prologue_end
# (
#     CONST(Dem_EventIdType, WDGM_APPL_DATA)     WdgM_EventId,
#     CONST(Dem_EventStatusType, WDGM_APPL_DATA) WdgM_EventStatus
# )
# {
#     if (WDGM_INVALID_DEM_EVENT_ID != WdgM_EventId)
	.d2line		172
	rlwinm		r0,r3,0,16,31		# WdgM_EventId=r3
	se_cmpi		r0,0
	bc		1,2,.L606	# eq
#     {
#         Dem_ReportErrorStatus(WdgM_EventId, WdgM_EventStatus);
	.d2line		174
.Llo3:
	rlwinm		r3,r3,0,16,31		# WdgM_EventId=r3 WdgM_EventId=r3
.Llo2:
	rlwinm		r4,r4,0,24,31		# WdgM_EventStatus=r4 WdgM_EventStatus=r4
.Llo4:
	bl		Dem_ReportErrorStatus
.L606:
#     }
# }
	.d2line		176
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
.L1049:
	.type		WdgM_DemReport,@function
	.size		WdgM_DemReport,.-WdgM_DemReport
# Number of nodes = 12

# Allocations for WdgM_DemReport
#	?a4		WdgM_EventId
#	?a5		WdgM_EventStatus
# LOCAL_INLINE FUNC(Std_ReturnType, WDGM_CODE) WdgMAssertInitialized(void)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         183,46
#$$ld
.L1064:

#$$bf	WdgMAssertInitialized,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.d2_cfa_start __cie
WdgMAssertInitialized:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     return (WdgM_GlobalStatus == WDGM_GLOBAL_STATUS_DEACTIVATED ? E_NOT_OK : E_OK);
	.d2line		185
	lis		r3,WdgM_GlobalStatus@ha
	lwz		r0,WdgM_GlobalStatus@l(r3)
	se_cmpi		r0,0
	diab.li		r3,1
	isel		r3,r3,r0,2
.L610:
	diab.li		r0,0
	isel		r3,r3,r0,2
.L611:
	rlwinm		r3,r3,0,24,31
# }
	.d2line		186
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
.L1065:
	.type		WdgMAssertInitialized,@function
	.size		WdgMAssertInitialized,.-WdgMAssertInitialized
# Number of nodes = 12

# Allocations for WdgMAssertInitialized
#	?a4		$$93
# LOCAL_INLINE FUNC(Std_ReturnType, WDGM_CODE) WdgMAssertInvalidMode
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         193,46
#$$ld
.L1070:

#$$bf	WdgMAssertInvalidMode,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.d2_cfa_start __cie
WdgMAssertInvalidMode:
.Llo5:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# IsValidMode=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# IsValidMode=r0 IsValidMode=r3
	.d2prologue_end
# (
#     CONST(WdgM_ModeType, WDGM_APPL_DATA) IsValidMode
# )
# {
#     return (IsValidMode >= (const WdgM_ModeType)WDGM_GET_TOTAL_NUMBER_OF_MODES() ? E_NOT_OK : E_OK);
	.d2line		198
	rlwinm		r0,r0,0,24,31		# IsValidMode=r0 IsValidMode=r0
.Llo6:
	lis		r3,WdgM_CurrentConfigPtr@ha
.Llo7:
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)
	lbz		r3,21(r3)
	se_cmp		r0,r3		# IsValidMode=r0
	diab.li		r0,1		# IsValidMode=r0
	isel		r0,r3,r0,0		# IsValidMode=r0 IsValidMode=r0
.L615:
	isel		r3,0,r0,0		# IsValidMode=r0
.L616:
.Llo8:
	rlwinm		r3,r3,0,24,31
# }
	.d2line		199
	.d2epilogue_begin
	lwz		r0,20(r1)		# IsValidMode=r0
	mtspr		lr,r0		# IsValidMode=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1071:
	.type		WdgMAssertInvalidMode,@function
	.size		WdgMAssertInvalidMode,.-WdgMAssertInvalidMode
# Number of nodes = 17

# Allocations for WdgMAssertInvalidMode
#	?a4		IsValidMode
#	?a5		$$94
# LOCAL_INLINE FUNC(Std_ReturnType, WDGM_CODE) WdgMAssertAmbiguous
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         208,46
#$$ld
.L1078:

#$$bf	WdgMAssertAmbiguous,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r28,r29,r30,r31,cr0,lr
	.d2_cfa_start __cie
WdgMAssertAmbiguous:
.Llo9:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# SEID=r3 SEID=r3
	mr		r4,r4		# CurrentModePushedToStack=r4 CurrentModePushedToStack=r4
	mr		r5,r5		# IndexFound=r5 IndexFound=r5
	.d2prologue_end
# (
#     CONST(WdgM_SupervisedEntityIdType, WDGM_APPL_DATA) SEID,
#     CONST(WdgM_ModeType, WDGM_APPL_DATA) CurrentModePushedToStack,
#     CONSTP2VAR(uint16, AUTOMATIC, WDGM_APPL_DATA) IndexFound
# )
# {
#     uint16 idx, count = 0;
	.d2line		215
	diab.li		r7,0		# count=r7
#     Std_ReturnType returnValue = E_OK;
	.d2line		216
.Llo12:
	diab.li		r31,0
#     for (idx = (uint16)0U; (idx<WDGM_GET_ALIVE_SUPERVISIONS_COUNT(CurrentModePushedToStack)); idx++)
	.d2line		217
.Llo13:
	diab.li		r6,0
.L620:
.Llo11:
	rlwinm		r0,r4,0,24,31		# CurrentModePushedToStack=r4
	rlwinm		r29,r6,0,16,31		# idx=r6
	lis		r8,WdgM_CurrentConfigPtr@ha
	lwz		r30,WdgM_CurrentConfigPtr@l(r8)
	lwz		r30,0(r30)
	rlwinm		r28,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r28
	se_add		r30,r0
	lhz		r0,16(r30)
	se_cmp		r29,r0
	bc		0,0,.L625	# ge
#     {
#         if (SEID == WDGM_GET_ALIVE_SUPERVISION_ENTITY_ID(CurrentModePushedToStack, idx))
	.d2line		219
	rlwinm		r0,r4,0,24,31		# CurrentModePushedToStack=r4
	rlwinm		r29,r3,0,16,31		# SEID=r3
	lis		r8,WdgM_CurrentConfigPtr@ha
	lwz		r30,WdgM_CurrentConfigPtr@l(r8)
	lwz		r30,0(r30)
	rlwinm		r28,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r28
	lwzx		r8,r30,r0
	rlwinm		r0,r6,4,12,27		# idx=r6
	lwzx		r30,r8,r0
	lwz		r30,4(r30)
	lhz		r0,14(r30)
	se_cmp		r29,r0
	bc		0,2,.L623	# ne
#         {
#             count++;
	.d2line		221
	diab.addi		r0,r7,1		# count=r7
	se_addi		r7,1		# count=r7 count=r7
#             *IndexFound = idx;
	.d2line		222
	sth		r6,0(r5)		# IndexFound=r5 idx=r6
#             if (count > 1U)
	.d2line		223
	rlwinm		r0,r7,0,16,31		# count=r7
	se_cmpli	r0,1
	bc		0,1,.L623	# le
#             {
#                 returnValue = E_NOT_OK;
	.d2line		225
	diab.li		r31,1		# returnValue=r31
	b		.L625
.L623:
#                 break;
#             }
#         }
#     }
	.d2line		229
	diab.addi		r0,r6,1		# idx=r6
	se_addi		r6,1		# idx=r6 idx=r6
	b		.L620
.L625:
#     return returnValue;
	.d2line		230
.Llo10:
	rlwinm		r3,r31,0,24,31		# SEID=r3 returnValue=r31
# }
	.d2line		231
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo14:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1079:
	.type		WdgMAssertAmbiguous,@function
	.size		WdgMAssertAmbiguous,.-WdgMAssertAmbiguous
# Number of nodes = 66

# Allocations for WdgMAssertAmbiguous
#	?a4		SEID
#	?a5		CurrentModePushedToStack
#	?a6		IndexFound
#	?a7		$$99
#	?a8		$$98
#	?a9		idx
#	?a10		count
#	?a11		returnValue
# LOCAL_INLINE FUNC(Std_ReturnType, WDGM_CODE) WdgMAssertInvalidSEID
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         239,46
#$$ld
.L1096:

#$$bf	WdgMAssertInvalidSEID,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.d2_cfa_start __cie
WdgMAssertInvalidSEID:
.Llo15:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# SEID=r0 SEID=r3
	.d2prologue_end
# (
#     CONST(WdgM_SupervisedEntityIdType, WDGM_APPL_DATA) SEID
# )
# {
#     uint16 idx = 0;
	.d2line		244
	diab.li		r3,0		# idx=r3
#     Std_ReturnType returnValue = E_NOT_OK;
	.d2line		245
.Llo16:
	diab.li		r4,1		# returnValue=r4
#     for (idx = (uint16)0U; idx < WDGM_GET_TOTAL_NUMBER_OF_SUPERVISED_ENTITIES(); idx++)
.L630:
	.d2line		246
.Llo17:
	rlwinm		r7,r3,0,16,31		# idx=r3
	lis		r5,WdgM_CurrentConfigPtr@ha
	lwz		r5,WdgM_CurrentConfigPtr@l(r5)
	lhz		r5,4(r5)
	se_cmp		r7,r5
	bc		0,0,.L634	# ge
#     {
#         if (SEID == WDGM_GET_SUPERVISED_ENTITY_ID_FROM_GENERAL(idx))
	.d2line		248
	rlwinm		r6,r0,0,16,31		# SEID=r0
	lis		r5,WdgM_CurrentConfigPtr@ha
	lwz		r5,WdgM_CurrentConfigPtr@l(r5)
	lwz		r5,8(r5)
	rlwinm		r7,r3,2,14,29		# idx=r3
	lhzx		r5,r5,r7
	se_cmp		r6,r5
	bc		0,2,.L633	# ne
#         {
#             returnValue = E_OK;
	.d2line		250
	diab.li		r4,0		# returnValue=r4
	b		.L634
.L633:
#             break;
#         }
#     }
	.d2line		253
	diab.addi		r7,r3,1		# idx=r3
	se_addi		r3,1		# idx=r3 idx=r3
	b		.L630
.L634:
#     return returnValue;
	.d2line		254
.Llo18:
	rlwinm		r3,r4,0,24,31		# idx=r3 returnValue=r4
# }
	.d2line		255
	.d2epilogue_begin
	lwz		r0,20(r1)		# SEID=r0
	mtspr		lr,r0		# SEID=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo19:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1097:
	.type		WdgMAssertInvalidSEID,@function
	.size		WdgMAssertInvalidSEID,.-WdgMAssertInvalidSEID
# Number of nodes = 40

# Allocations for WdgMAssertInvalidSEID
#	?a4		SEID
#	?a5		idx
#	?a6		returnValue
# LOCAL_INLINE FUNC(Std_ReturnType, WDGM_CODE) WdgM_SwitchWdgMode
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         319,46
#$$ld
.L1106:

#$$bf	WdgM_SwitchWdgMode,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
WdgM_SwitchWdgMode:
.Llo20:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# SwitchMode=r31 SwitchMode=r3
	.d2prologue_end
# (
#     VAR(WdgM_ModeType, AUTOMATIC) SwitchMode
# )
# {
#     Std_ReturnType wdgIfSetModeReturnValue = E_OK;
	.d2line		324
	diab.li		r3,0		# wdgIfSetModeReturnValue=r3
#     uint8 idx;
#     for (idx = (uint8)0U; idx < WDGM_GET_WDGM_TRIGGER_COUNT(SwitchMode); idx++)
	.d2line		326
.Llo21:
	diab.li		r30,0
.L639:
.Llo22:
	rlwinm		r0,r31,0,24,31		# SwitchMode=r31
	rlwinm		r5,r30,0,24,31		# idx=r30
	lis		r4,WdgM_CurrentConfigPtr@ha
	lwz		r4,WdgM_CurrentConfigPtr@l(r4)
	lwz		r4,0(r4)
	rlwinm		r6,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r6
	se_add		r4,r0
	lbz		r0,23(r4)
	se_cmp		r5,r0
	bc		0,0,.L643	# ge
#     {
#         /** [DD-WDGM186-MGC01-V1] */
#         wdgIfSetModeReturnValue = WdgIf_SetMode(WDGM_GET_WDG(SwitchMode, idx), WDGM_GET_WDGM_MODE(SwitchMode, idx));
	.d2line		329
	rlwinm		r0,r31,0,24,31		# SwitchMode=r31
	lis		r4,WdgM_CurrentConfigPtr@ha
	lwz		r3,WdgM_CurrentConfigPtr@l(r4)		# wdgIfSetModeReturnValue=r3
	lwz		r3,0(r3)		# wdgIfSetModeReturnValue=r3 wdgIfSetModeReturnValue=r3
	rlwinm		r5,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r5
	se_add		r3,r0		# wdgIfSetModeReturnValue=r3 wdgIfSetModeReturnValue=r3
	lwz		r3,12(r3)		# wdgIfSetModeReturnValue=r3 wdgIfSetModeReturnValue=r3
	rlwinm		r5,r30,3,21,28		# idx=r30
	se_add		r3,r5		# wdgIfSetModeReturnValue=r3 wdgIfSetModeReturnValue=r3
	lbz		r3,6(r3)		# wdgIfSetModeReturnValue=r3 wdgIfSetModeReturnValue=r3
	lwz		r4,WdgM_CurrentConfigPtr@l(r4)
	lwz		r4,0(r4)
	se_add		r4,r0
	lwz		r4,12(r4)
	lwzx		r4,r4,r5
	bl		WdgIf_SetMode
	mr		r3,r3		# wdgIfSetModeReturnValue=r3 wdgIfSetModeReturnValue=r3
#         if (wdgIfSetModeReturnValue == E_NOT_OK)
	.d2line		330
	rlwinm		r0,r3,0,24,31		# wdgIfSetModeReturnValue=r3
	se_cmpi		r0,1
	bc		1,2,.L643	# eq
#         {
#             break;
#         }
#     }
	.d2line		334
	diab.addi		r5,r30,1		# idx=r30
	se_addi		r30,1		# idx=r30 idx=r30
	b		.L639
.L643:
#     return wdgIfSetModeReturnValue;
	.d2line		335
.Llo23:
	rlwinm		r3,r3,0,24,31		# wdgIfSetModeReturnValue=r3 wdgIfSetModeReturnValue=r3
# }
	.d2line		336
	.d2epilogue_begin
.Llo24:
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
.L1107:
	.type		WdgM_SwitchWdgMode,@function
	.size		WdgM_SwitchWdgMode,.-WdgM_SwitchWdgMode
# Number of nodes = 70

# Allocations for WdgM_SwitchWdgMode
#	?a4		SwitchMode
#	?a5		$$102
#	?a6		$$101
#	?a7		$$100
#	?a8		wdgIfSetModeReturnValue
#	?a9		idx
# LOCAL_INLINE FUNC(Std_ReturnType, WDGM_CODE) WdgM_GetSEID_Binary(
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         351,46
#$$ld
.L1116:

#$$bf	WdgM_GetSEID_Binary,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r28,r29,r30,r31,cr0,xer,lr
	.d2_cfa_start __cie
WdgM_GetSEID_Binary:
.Llo25:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Mode=r3 Mode=r3
	mr		r4,r4		# SEID=r4 SEID=r4
	mr		r5,r5		# PtrToSEEntryPtr=r5 PtrToSEEntryPtr=r5
	.d2prologue_end
#     CONST(uint8, WDGM_VAR) Mode,
#     CONST(WdgM_SupervisedEntityIdType, WDGM_VAR) SEID,
#     P2VAR(P2VAR(WdgM_LocalstatModeDepType, AUTOMATIC, WDGM_APPL_DATA), AUTOMATIC, WDGM_APPL_DATA) PtrToSEEntryPtr
# )
# {
#     Std_ReturnType retVal = E_NOT_OK;
	.d2line		357
	diab.li		r6,1		# retVal=r6
#     uint16 first = 0U;
	.d2line		358
.Llo29:
	diab.li		r30,0		# first=r30
#     uint16 last = (uint16)WDGM_GET_LOCAL_STATUS_PARM_COUNT(Mode);
	.d2line		359
.Llo31:
	rlwinm		r0,r3,0,24,31		# Mode=r3
	lis		r7,WdgM_CurrentConfigPtr@ha
	lwz		r7,WdgM_CurrentConfigPtr@l(r7)
	lwz		r7,0(r7)
	rlwinm		r31,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r31
	se_add		r7,r0
	lhz		r29,20(r7)		# last=r29
.Llo32:
	mr		r29,r29		# last=r29 last=r29
#     if (last != first)
	.d2line		360
	rlwinm		r7,r29,0,16,31		# last=r29
	se_cmpi		r7,0
	bc		1,2,.L647	# eq
#     {
#         last -= (uint16)1U;
	.d2line		362
	diab.li		r0,65535
	se_add		r0,r29		# last=r29
	mr		r29,r0		# last=r29 last=r0
.L648:
#         while (first <= last)
	.d2line		363
	rlwinm		r0,r30,0,16,31		# first=r30
	rlwinm		r7,r29,0,16,31		# middle=r7 last=r29
.Llo37:
	se_cmp		r0,r7		# middle=r7
	bc		1,1,.L647	# gt
	.section	.invalid_TEXT,,c
.L1133:
#         {
#             uint16 middle = (first + last) >> 1U;
	.d2line		365
.Llo38:
	rlwinm		r0,r30,0,16,31		# first=r30
	rlwinm		r7,r29,0,16,31		# middle=r7 last=r29
.Llo39:
	se_add		r0,r7		# middle=r7
	srawi		r7,r0,1		# middle=r7
	mr		r7,r7		# middle=r7 middle=r7
#             if (WDGM_GET_SUP_ENTITY_ID(Mode, middle) < SEID)
	.d2line		366
	rlwinm		r0,r3,0,24,31		# Mode=r3
	lis		r8,WdgM_CurrentConfigPtr@ha
	lwz		r31,WdgM_CurrentConfigPtr@l(r8)
	lwz		r31,0(r31)
	rlwinm		r28,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r28
	se_add		r31,r0
	lwz		r0,8(r31)
	rlwinm		r31,r7,0,16,31		# middle=r7
	e_mulli		r31,r31,20
	se_add		r31,r0
	lhz		r0,14(r31)
	rlwinm		r31,r4,0,16,31		# SEID=r4
	se_cmp		r0,r31
	bc		0,0,.L650	# ge
#             {
#                 first = middle + (uint16)1U;
	.d2line		368
	se_addi		r7,1		# middle=r7 middle=r7
.Llo40:
	mr		r30,r7		# first=r30 first=r7
	b		.L648
.L650:
#             }
#             else if (WDGM_GET_SUP_ENTITY_ID(Mode, middle) == SEID)
	.d2line		370
.Llo33:
	rlwinm		r0,r3,0,24,31		# Mode=r3
	lis		r8,WdgM_CurrentConfigPtr@ha
	lwz		r31,WdgM_CurrentConfigPtr@l(r8)
	lwz		r31,0(r31)
	rlwinm		r29,r0,5,0,26		# last=r29
.Llo34:
	se_slwi		r0,3
	subf		r0,r0,r29		# last=r29
	se_add		r31,r0
	lwz		r0,8(r31)
	rlwinm		r31,r7,0,16,31		# middle=r7
	e_mulli		r31,r31,20
	se_add		r31,r0
	lhz		r0,14(r31)
	rlwinm		r31,r4,0,16,31		# SEID=r4
	se_cmp		r0,r31
	bc		0,2,.L652	# ne
#             {
#                 *PtrToSEEntryPtr = (WdgM_LocalstatModeDepType*)WDGM_GET_LOCAL_STATUS_PARAMETER(Mode, middle);
	.d2line		372
.Llo27:
	rlwinm		r0,r3,0,24,31		# Mode=r3
	lis		r3,WdgM_CurrentConfigPtr@ha		# Mode=r3
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)		# Mode=r3 Mode=r3
	lwz		r4,0(r3)		# SEID=r4 Mode=r3
.Llo28:
	rlwinm		r3,r0,5,0,26		# Mode=r3
	se_slwi		r0,3
	subf		r0,r0,r3		# Mode=r3
	se_add		r4,r0		# SEID=r4 SEID=r4
	lwz		r0,8(r4)		# SEID=r4
.Llo41:
	rlwinm		r7,r7,0,16,31		# middle=r7 middle=r7
	e_mulli		r7,r7,20		# middle=r7 middle=r7
	se_add		r0,r7		# middle=r7
	stw		r0,0(r5)		# PtrToSEEntryPtr=r5
#                 retVal = E_OK;
	.d2line		373
	diab.li		r6,0		# retVal=r6
	b		.L647
.L652:
#                 break;
#             }
#             else
#             {
#                 if (middle == 0U)
	.d2line		378
	e_cmphl16i	r7,0		# middle=r7
	bc		1,2,.L647	# eq
#                 {
#                     break;
#                 }
#                 else
#                 {
#                     last = middle - (uint16)1U;
	.d2line		384
.Llo42:
	diab.li		r29,65535		# last=r29
.Llo43:
	se_add		r7,r29		# middle=r7 middle=r7 middle=r29
.Llo35:
	mr		r29,r7		# last=r29 last=r7
	.section	.invalid_TEXT,,c
.L1134:
.Llo36:
	b		.L648
.L647:
#                 }
#             }
#         }
#     }
#     return retVal;
	.d2line		389
.Llo26:
	rlwinm		r3,r6,0,24,31		# Mode=r3 retVal=r6
# }
	.d2line		390
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo30:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1117:
	.type		WdgM_GetSEID_Binary,@function
	.size		WdgM_GetSEID_Binary,.-WdgM_GetSEID_Binary
# Number of nodes = 124

# Allocations for WdgM_GetSEID_Binary
#	?a4		Mode
#	?a5		SEID
#	?a6		PtrToSEEntryPtr
#	?a7		$$106
#	?a8		$$105
#	?a9		$$104
#	?a10		$$103
#	?a11		retVal
#	?a12		first
#	?a13		last
#	?a14		middle
# LOCAL_INLINE FUNC(void, WDGM_CODE) WdgM_RTENotifLocalStatusChange(void)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         397,36
#$$ld
.L1141:

#$$bf	WdgM_RTENotifLocalStatusChange,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
WdgM_RTENotifLocalStatusChange:
.Llo44:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     uint16 index = 0U;
	.d2line		399
	diab.li		r31,0		# index=r31
# 
#     for(index = 0U; index < WDGM_GET_TOTAL_NUMBER_OF_SUPERVISED_ENTITIES(); index++)
.L662:
	.d2line		401
	rlwinm		r0,r31,0,16,31		# index=r31
	lis		r3,WdgM_CurrentConfigPtr@ha
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)
	lhz		r3,4(r3)
	se_cmp		r0,r3
	bc		0,0,.L661	# ge
	.section	.invalid_TEXT,,c
.L1146:
#     {
#         /* [DD-WDGM338-MGC02-V1] */
#         struct Rte_PDS_WdgM_IndividualMode NotificationFunctionStruct = ((Rte_PortHandle_WdgM_IndividualMode)Rte_Inst_WdgM)[index];
	.d2line		404
	lis		r3,Rte_Inst_WdgM@ha
	lwz		r3,Rte_Inst_WdgM@l(r3)
	rlwinm		r0,r31,2,14,29		# index=r31
	lwzx		r0,r3,r0
	stw		r0,8(r1)
# 
#         if((WdgM_SupervisedEntityMonitorTable[index].WdgM_StatusChanged == TRUE) &&
	.d2line		406
	lis		r3,(WdgM_SupervisedEntityMonitorTable+16)@ha
	e_add16i		r3,r3,(WdgM_SupervisedEntityMonitorTable+16)@l
	rlwinm		r0,r31,0,16,31		# index=r31
	e_mulli		r0,r0,20
	lbzx		r0,r3,r0
	se_cmpi		r0,1
	bc		0,2,.L665	# ne
	lwz		r0,8(r1)
	se_cmpi		r0,0
	bc		1,2,.L665	# eq
	.section	.invalid_TEXT,,c
.L1152:
#            (NotificationFunctionStruct.Switch_currentMode != NULL_PTR))
#         {
#             WdgM_LocalStatusType localstatus = WdgM_SupervisedEntityMonitorTable[index].WdgM_LocalSupervisionStatus;
	.d2line		409
	lis		r3,WdgM_SupervisedEntityMonitorTable@ha
	e_add16i		r3,r3,WdgM_SupervisedEntityMonitorTable@l
	rlwinm		r0,r31,0,16,31		# index=r31
	e_mulli		r0,r0,20
	lwzx		r3,r3,r0
.Llo46:
	mr		r3,r3		# localstatus=r3 localstatus=r3
#             /* [DD-WDGM196-MGC01-V1], [DD-WDGM197-MGC01-V1] */
#             NotificationFunctionStruct.Switch_currentMode(localstatus);
	.d2line		411
	lwz		r0,8(r1)
	mtspr		ctr,r0
	mr		r3,r3		# localstatus=r3 localstatus=r3
.Llo47:
	rlwinm		r3,r3,0,24,31
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
#             WdgM_SupervisedEntityMonitorTable[index].WdgM_StatusChanged = FALSE;
	.d2line		412
	diab.li		r4,0
	lis		r3,(WdgM_SupervisedEntityMonitorTable+16)@ha
	e_add16i		r3,r3,(WdgM_SupervisedEntityMonitorTable+16)@l
	rlwinm		r0,r31,0,16,31		# index=r31
	e_mulli		r0,r0,20
	stbx		r4,r3,r0
	.section	.invalid_TEXT,,c
.L1153:
.L665:
	.section	.invalid_TEXT,,c
.L1147:
#         }
#     }
	.d2line		414
	diab.addi		r0,r31,1		# index=r31
	se_addi		r31,1		# index=r31 index=r31
	b		.L662
.L661:
# }
	.d2line		415
	.d2epilogue_begin
.Llo45:
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
.L1142:
	.type		WdgM_RTENotifLocalStatusChange,@function
	.size		WdgM_RTENotifLocalStatusChange,.-WdgM_RTENotifLocalStatusChange
# Number of nodes = 75

# Allocations for WdgM_RTENotifLocalStatusChange
#	?a4		index
#	SP,8		NotificationFunctionStruct
#	?a5		localstatus
# LOCAL_INLINE FUNC(void, WDGM_CODE) WdgM_SetEntityStatus
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         420,36
#$$ld
.L1162:

#$$bf	WdgM_SetEntityStatus,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
WdgM_SetEntityStatus:
.Llo48:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r4		# Index=r4 Index=r4
	mr		r5,r5		# Status=r5 Status=r5
	.d2prologue_end
# (
#     VAR(WdgM_SupervisedEntityIdType, AUTOMATIC) SEID,
#     VAR(uint16, AUTOMATIC) Index,
#     VAR(WdgM_LocalStatusType, AUTOMATIC) Status
# )
# {
#     if (WdgM_SupervisedEntityMonitorTable[Index].WdgM_LocalSupervisionStatus != Status)
	.d2line		427
	lis		r3,WdgM_SupervisedEntityMonitorTable@ha
	e_add16i		r3,r3,WdgM_SupervisedEntityMonitorTable@l
	rlwinm		r0,r4,0,16,31		# Index=r4
	e_mulli		r0,r0,20
	lwzx		r0,r3,r0
	se_cmp		r0,r5		# Status=r5
	bc		1,2,.L669	# eq
#     {
#         WdgM_SupervisedEntityMonitorTable[Index].WdgM_LocalSupervisionStatus = Status;
	.d2line		429
.Llo49:
	lis		r3,WdgM_SupervisedEntityMonitorTable@ha
	e_add16i		r3,r3,WdgM_SupervisedEntityMonitorTable@l
.Llo50:
	rlwinm		r4,r4,0,16,31		# Index=r4 Index=r4
	e_mulli		r4,r4,20		# Index=r4 Index=r4
.Llo51:
	stwx		r5,r3,r4		# Status=r5
# 
#         WdgM_SupervisedEntityMonitorTable[Index].WdgM_StatusChanged = TRUE;
	.d2line		431
	diab.li		r0,1
	lis		r3,(WdgM_SupervisedEntityMonitorTable+16)@ha
	e_add16i		r3,r3,(WdgM_SupervisedEntityMonitorTable+16)@l
	stbx		r0,r3,r4
.L669:
#     }
# }
	.d2line		433
	.d2epilogue_begin
.Llo52:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1163:
	.type		WdgM_SetEntityStatus,@function
	.size		WdgM_SetEntityStatus,.-WdgM_SetEntityStatus
# Number of nodes = 32

# Allocations for WdgM_SetEntityStatus
#	not allocated	SEID
#	?a4		Index
#	?a5		Status
# LOCAL_INLINE FUNC(void, WDGM_CODE) WdgM_ResetSupervisedEntity
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         444,36
#$$ld
.L1169:

#$$bf	WdgM_ResetSupervisedEntity,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r9,r30,r31,cr0,xer,lr
	.d2_cfa_start __cie
WdgM_ResetSupervisedEntity:
.Llo53:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# NewMode=r31 NewMode=r3
	.d2prologue_end
# (
#     VAR(WdgM_ModeType, AUTOMATIC) NewMode
# )
# {
#     uint16 idx;
#     for (idx = (uint16)0U; idx < WDGM_GET_TOTAL_NUMBER_OF_SUPERVISED_ENTITIES(); idx++)  /* [DD-WDGM182-MGC03-V1] */
	.d2line		450
	diab.li		r30,0		# idx=r30
.L673:
.Llo54:
	rlwinm		r4,r30,0,16,31		# idx=r4 idx=r30
.Llo55:
	lis		r3,WdgM_CurrentConfigPtr@ha		# foundInNewMode=r3
.Llo61:
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)		# foundInNewMode=r3 foundInNewMode=r3
	lhz		r0,4(r3)		# foundInNewMode=r0 foundInNewMode=r3
	se_cmp		r4,r0		# idx=r4 foundInNewMode=r0
	bc		0,0,.L675	# ge
	.section	.invalid_TEXT,,c
.L1175:
#     {
#         WdgM_LocalstatModeDepType* modeDep_SupervisedEntityPtr_NewMode = NULL_PTR;
	.d2line		452
.Llo62:
	diab.li		r0,0		# foundInNewMode=r0
.Llo63:
	stw		r0,8(r1)		# foundInNewMode=r0
#         Std_ReturnType foundInNewMode = E_NOT_OK;
	.d2line		453
	diab.li		r0,1		# foundInNewMode=r0
# 
#         WdgM_SupervisedEntityIdType seID = WDGM_GET_SUPERVISED_ENTITY_ID_FROM_GENERAL(idx);
	.d2line		455
.Llo64:
	lis		r3,WdgM_CurrentConfigPtr@ha		# foundInNewMode=r3
.Llo65:
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)		# foundInNewMode=r3 foundInNewMode=r3
	lwz		r3,8(r3)		# foundInNewMode=r3 foundInNewMode=r3
	rlwinm		r4,r30,2,14,29		# idx=r4 idx=r30
	lhzx		r9,r3,r4		# foundInNewMode=r3
.Llo81:
	mr		r9,r9		# seID=r9 seID=r9
#         foundInNewMode = WdgM_GetSEID_Binary(
	.d2line		456
	diab.addi		r5,r1,8
	mr		r3,r31		# NewMode=r3 NewMode=r31
.Llo66:
	mr		r4,r9		# seID=r4 seID=r9
	bl		WdgM_GetSEID_Binary
.Llo67:
	mr		r3,r3		# foundInNewMode=r3 foundInNewMode=r3
#             NewMode,
#             seID,
#             (WdgM_LocalstatModeDepType**)&modeDep_SupervisedEntityPtr_NewMode);
#         if (foundInNewMode == E_NOT_OK) /*In the NewMode it is deactivated*/
	.d2line		460
	rlwinm		r3,r3,0,24,31		# foundInNewMode=r3 foundInNewMode=r3
	se_cmpi		r3,1		# foundInNewMode=r3
	bc		0,2,.L676	# ne
#         {
#             /* Reset the parameters of the supervised entity before while activating it again */
#             /** [DD-WDGM207-MGC01-V1], [DD-WDGM291-MGC01-V1], [DD-WDGM315-MGC01-V1], [DD-WDGM182-MGC03-V1] */
#             WdgM_SetEntityStatus(seID, idx, (WdgM_LocalStatusType)WDGM_LOCAL_STATUS_DEACTIVATED);
	.d2line		464
.Llo68:
	mr		r3,r9		# seID=r3 seID=r9
	mr		r4,r30		# idx=r4 idx=r30
	diab.li		r5,0
	bl		WdgM_SetEntityStatus
# 
#             /* [DD-WDGM315-MGC05-V1] */
#             WdgM_SupervisedEntityMonitorTable[idx].WdgM_FailedSupervisionCyclesCounter = 0;
	.d2line		467
	diab.li		r0,0		# foundInNewMode=r0
.Llo69:
	lis		r3,(WdgM_SupervisedEntityMonitorTable+17)@ha		# foundInNewMode=r3
	e_add16i		r3,r3,(WdgM_SupervisedEntityMonitorTable+17)@l		# foundInNewMode=r3 foundInNewMode=r3
	rlwinm		r4,r30,0,16,31		# idx=r4 idx=r30
	e_mulli		r4,r4,20		# idx=r4 idx=r4
	stbux		r0,r3,r4		# foundInNewMode=r3 foundInNewMode=r0
#             /* [DD-WDGM315-MGC02-V1] */
#             WdgM_SupervisedEntityMonitorTable[idx].WdgM_AliveSupervisionResult = WDGM_CORRECT;
	.d2line		469
	lis		r3,(WdgM_SupervisedEntityMonitorTable+12)@ha		# foundInNewMode=r3
	e_add16i		r3,r3,(WdgM_SupervisedEntityMonitorTable+12)@l		# foundInNewMode=r3 foundInNewMode=r3
	stwx		r0,r3,r4		# foundInNewMode=r3 foundInNewMode=r0
#             /* [DD-WDGM315-MGC03-V1] */
#             WdgM_SupervisedEntityMonitorTable[idx].WdgM_DeadlineSupervisionResult = WDGM_CORRECT;
	.d2line		471
	lis		r3,(WdgM_SupervisedEntityMonitorTable+8)@ha		# foundInNewMode=r3
	e_add16i		r3,r3,(WdgM_SupervisedEntityMonitorTable+8)@l		# foundInNewMode=r3 foundInNewMode=r3
	stwx		r0,r3,r4		# foundInNewMode=r3 foundInNewMode=r0
#             /* [DD-WDGM315-MGC04-V1] */
#             WdgM_SupervisedEntityMonitorTable[idx].WdgM_LogicalSupervisionResult = WDGM_CORRECT;
	.d2line		473
	lis		r3,(WdgM_SupervisedEntityMonitorTable+4)@ha		# foundInNewMode=r3
	e_add16i		r3,r3,(WdgM_SupervisedEntityMonitorTable+4)@l		# foundInNewMode=r3 foundInNewMode=r3
	stwx		r0,r3,r4		# foundInNewMode=r3 foundInNewMode=r0
	b		.L677
.L676:
	.section	.invalid_TEXT,,c
.L1184:
#         }
#         else /* in the next mode it is activated */
#         {
#             WdgM_LocalstatModeDepType* modeDep_SupervisedEntityPtr_CurrentMode = NULL_PTR;
	.d2line		477
.Llo70:
	diab.li		r0,0		# foundInNewMode=r0
.Llo71:
	stw		r0,12(r1)		# foundInNewMode=r0
#             Std_ReturnType foundInCurrentMode = E_NOT_OK;
	.d2line		478
	diab.li		r0,1		# foundInCurrentMode=r0
# 
#             /** [DD-WDGM182-MGC01-V1], [DD-WDGM182-MGC02-V1] */
#             foundInCurrentMode = WdgM_GetSEID_Binary(
	.d2line		481
.Llo72:
	diab.addi		r5,r1,12
	lis		r3,WdgM_CurrentMode@ha		# foundInNewMode=r3
.Llo73:
	lbz		r3,WdgM_CurrentMode@l(r3)		# foundInNewMode=r3 foundInNewMode=r3
.Llo74:
	mr		r4,r9		# seID=r4 seID=r9
	bl		WdgM_GetSEID_Binary
.Llo83:
	mr		r3,r3		# foundInCurrentMode=r3 foundInCurrentMode=r3
#                 WdgM_CurrentMode,
#                 seID,
#                 (WdgM_LocalstatModeDepType**)&modeDep_SupervisedEntityPtr_CurrentMode);
#             /*In the NewMode it is activated, but in the WdgM_CurrentMode(previous mode) it is deactivated*/
#             if (foundInCurrentMode == E_NOT_OK)
	.d2line		486
	rlwinm		r3,r3,0,24,31		# foundInCurrentMode=r3 foundInCurrentMode=r3
	se_cmpi		r3,1		# foundInCurrentMode=r3
	bc		0,2,.L677	# ne
#             {
#                 /** [DD-WDGM209-MGC01-V1] */
#                 WdgM_SetEntityStatus(seID, idx, (WdgM_LocalStatusType)WDGM_LOCAL_STATUS_OK);
	.d2line		489
.Llo84:
	mr		r3,r9		# seID=r3 seID=r9
	mr		r4,r30		# idx=r4 idx=r30
	diab.li		r5,3
	bl		WdgM_SetEntityStatus
	.section	.invalid_TEXT,,c
.L1185:
.L677:
	.section	.invalid_TEXT,,c
.L1176:
#             }
#         }
#     }
	.d2line		492
.Llo82:
	diab.addi		r4,r30,1		# idx=r4 idx=r30
	se_addi		r30,1		# idx=r30 idx=r30
	b		.L673
.L675:
#     /* Check configured Alive supervised entities */
# 
#     for (idx = (uint16)0; idx < WDGM_GET_ALIVE_SUPERVISIONS_COUNT(NewMode); idx++)
	.d2line		495
	diab.li		r3,0		# idx=r3
.L679:
.Llo57:
	rlwinm		r0,r31,0,24,31		# foundInNewMode=r0 NewMode=r31
.Llo58:
	rlwinm		r5,r3,0,16,31		# idx=r3
	lis		r4,WdgM_CurrentConfigPtr@ha		# idx=r4
	lwz		r4,WdgM_CurrentConfigPtr@l(r4)		# idx=r4 idx=r4
	lwz		r4,0(r4)		# idx=r4 idx=r4
	rlwinm		r6,r0,5,0,26		# foundInNewMode=r0
	se_slwi		r0,3		# foundInNewMode=r0 foundInNewMode=r0
	subf		r0,r0,r6		# foundInNewMode=r0 foundInNewMode=r0
	se_add		r4,r0		# idx=r4 idx=r4 foundInNewMode=r0
	lhz		r0,16(r4)		# foundInNewMode=r0 idx=r4
	se_cmp		r5,r0		# foundInNewMode=r0
	bc		0,0,.L681	# ge
#     {
#         WdgM_AliveSupervisionMonitorTable[idx].WdgM_SupervisionCyclesCounter = 0; /*[DD-WDGM9009-MGC01-V1]*/
	.d2line		497
.Llo75:
	diab.li		r0,0		# foundInNewMode=r0
.Llo76:
	lis		r4,(WdgM_AliveSupervisionMonitorTable+2)@ha		# idx=r4
	e_add16i		r4,r4,(WdgM_AliveSupervisionMonitorTable+2)@l		# idx=r4 idx=r4
	rlwinm		r5,r3,2,14,29		# idx=r3
	stbux		r0,r4,r5		# idx=r4 foundInNewMode=r0
#         WdgM_AliveSupervisionMonitorTable[idx].WdgM_AliveCountVar = 0; /*[DD-WDGM9009-MGC02-V1]*/
	.d2line		498
	lis		r4,WdgM_AliveSupervisionMonitorTable@ha		# idx=r4
	e_add16i		r4,r4,WdgM_AliveSupervisionMonitorTable@l		# idx=r4 idx=r4
	sthx		r0,r4,r5		# idx=r4 foundInNewMode=r0
#     }
	.d2line		499
	diab.addi		r5,r3,1		# idx=r3
	se_addi		r3,1		# idx=r3 idx=r3
	b		.L679
.L681:
# 
#     /* Check configured Deadline supervised entities */
#     for (idx = (uint16)0; idx < WDGM_GET_DEADLINE_SUPERVISIONS_COUNT(NewMode); idx++)
	.d2line		502
.Llo59:
	diab.li		r3,0		# idx=r3
.L682:
.Llo60:
	rlwinm		r0,r31,0,24,31		# foundInNewMode=r0 NewMode=r31
.Llo77:
	rlwinm		r5,r3,0,16,31		# idx=r3
	lis		r4,WdgM_CurrentConfigPtr@ha		# idx=r4
	lwz		r4,WdgM_CurrentConfigPtr@l(r4)		# idx=r4 idx=r4
	lwz		r4,0(r4)		# idx=r4 idx=r4
	rlwinm		r6,r0,5,0,26		# foundInNewMode=r0
	se_slwi		r0,3		# foundInNewMode=r0 foundInNewMode=r0
	subf		r0,r0,r6		# foundInNewMode=r0 foundInNewMode=r0
	se_add		r4,r0		# idx=r4 idx=r4 foundInNewMode=r0
	lhz		r0,18(r4)		# foundInNewMode=r0 idx=r4
	se_cmp		r5,r0		# foundInNewMode=r0
	bc		0,0,.L672	# ge
#     {
#         WdgM_DeadlineSupervisionMonitorTable[idx].WdgM_DeadlineTimerStatus = WDGM_STOP; /*[DD-WDGM9009-MGC04-V1]*/
	.d2line		504
.Llo78:
	rlwinm		r0,r3,0,16,31		# foundInNewMode=r0 idx=r3
.Llo79:
	diab.li		r5,0
	lis		r4,(WdgM_DeadlineSupervisionMonitorTable+8)@ha		# idx=r4
	e_add16i		r4,r4,(WdgM_DeadlineSupervisionMonitorTable+8)@l		# idx=r4 idx=r4
	rlwinm		r6,r0,4,0,27		# foundInNewMode=r0
	se_slwi		r0,2		# foundInNewMode=r0 foundInNewMode=r0
	subf		r0,r0,r6		# foundInNewMode=r0 foundInNewMode=r0
.Llo80:
	stwx		r5,r4,r0		# idx=r4
#         WdgM_DeadlineSupervisionMonitorTable[idx].WdgM_DeadlineTimeActual.WdgM_DeadlineTimeInTicks = 0;
	.d2line		505
	lis		r4,WdgM_DeadlineSupervisionMonitorTable@ha		# idx=r4
	e_add16i		r4,r4,WdgM_DeadlineSupervisionMonitorTable@l		# idx=r4 idx=r4
	stwx		r5,r4,r0		# idx=r4
#         WdgM_DeadlineSupervisionMonitorTable[idx].WdgM_DeadlineTimeActual.WdgM_TimeOverflowValue = 0;
	.d2line		506
	lis		r4,(WdgM_DeadlineSupervisionMonitorTable+4)@ha		# idx=r4
	e_add16i		r4,r4,(WdgM_DeadlineSupervisionMonitorTable+4)@l		# idx=r4 idx=r4
	stwx		r5,r4,r0		# idx=r4
#     }
	.d2line		507
	diab.addi		r0,r3,1		# foundInNewMode=r0 idx=r3
	se_addi		r3,1		# idx=r3 idx=r3
	b		.L682
.L672:
# }
	.d2line		508
	.d2epilogue_begin
.Llo56:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# foundInNewMode=r0
	mtspr		lr,r0		# foundInNewMode=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1170:
	.type		WdgM_ResetSupervisedEntity,@function
	.size		WdgM_ResetSupervisedEntity,.-WdgM_ResetSupervisedEntity
# Number of nodes = 237

# Allocations for WdgM_ResetSupervisedEntity
#	?a4		NewMode
#	?a5		$$111
#	?a6		$$110
#	?a7		$$109
#	?a8		$$108
#	?a9		$$107
#	?a10		idx
#	SP,8		modeDep_SupervisedEntityPtr_NewMode
#	?a11		foundInNewMode
#	?a12		seID
#	SP,12		modeDep_SupervisedEntityPtr_CurrentMode
#	?a13		foundInCurrentMode
# LOCAL_INLINE FUNC(void, WDGM_CODE) WdgM_DeadlineSupervision
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         519,36
#$$ld
.L1193:

#$$bf	WdgM_DeadlineSupervision,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.d2_cfa_start __cie
WdgM_DeadlineSupervision:
.Llo85:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo93:
	stw		r0,20(r1)		# actualOverflowvalue=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ModeDep_SupervisedEntityPtr=r3 ModeDep_SupervisedEntityPtr=r3
	mr		r4,r4		# DeadLineSupervisionEntryPtr=r4 DeadLineSupervisionEntryPtr=r4
	.d2prologue_end
# (
#     CONSTP2CONST(WdgM_LocalstatModeDepType, AUTOMATIC, WDGM_APPL_CONST) ModeDep_SupervisedEntityPtr,
#     CONSTP2CONST(WdgM_DeadlineSupervisionType, AUTOMATIC, WDGM_APPL_CONST) DeadLineSupervisionEntryPtr
# )
# {
# 
#     VAR(uint32, WDGM_APPL_CONST) actualOverflowvalue =
	.d2line		526
	lwz		r5,20(r4)		# DeadLineSupervisionEntryPtr=r4
	lwz		r0,4(r5)		# actualOverflowvalue=r0
	mr		r0,r0		# actualOverflowvalue=r0 actualOverflowvalue=r0
#             DeadLineSupervisionEntryPtr->WdgM_DeadlineMonitorEntryPtr->WdgM_DeadlineTimeActual.WdgM_TimeOverflowValue;
# 
#     VAR(uint32, WDGM_APPL_CONST) actualTick =
	.d2line		529
	lwz		r6,0(r5)
.Llo98:
	mr		r6,r6		# actualTick=r6 actualTick=r6
#             DeadLineSupervisionEntryPtr->WdgM_DeadlineMonitorEntryPtr->WdgM_DeadlineTimeActual.WdgM_DeadlineTimeInTicks;
#     /** [DD-WDGM294-MGC01-V1] */
#     if((actualOverflowvalue >= DeadLineSupervisionEntryPtr->WdgM_DeadlineMin.WdgM_TimeOverflowValue) &&
	.d2line		532
	lwz		r5,4(r4)		# DeadLineSupervisionEntryPtr=r4
	se_cmpl		r5,r0		# actualOverflowvalue=r0
	bc		1,1,.L694	# gt
	lwz		r5,12(r4)		# DeadLineSupervisionEntryPtr=r4
	se_cmpl		r5,r0		# actualOverflowvalue=r0
	bc		1,1,.L694	# gt
.Llo94:
	lwz		r0,0(r4)		# actualOverflowvalue=r0 DeadLineSupervisionEntryPtr=r4
.Llo95:
	se_cmpl		r0,r6		# actualOverflowvalue=r0 actualTick=r6
	bc		1,1,.L694	# gt
.Llo96:
	lwz		r0,8(r4)		# actualOverflowvalue=r0 DeadLineSupervisionEntryPtr=r4
.Llo97:
	se_cmpl		r0,r6		# actualOverflowvalue=r0 actualTick=r6
	bc		1,0,.L694	# lt
#           (actualOverflowvalue >= DeadLineSupervisionEntryPtr->WdgM_DeadlineMax.WdgM_TimeOverflowValue) &&
#                     (actualTick >= DeadLineSupervisionEntryPtr->WdgM_DeadlineMin.WdgM_DeadlineTimeInTicks) &&
#                         (actualTick <= DeadLineSupervisionEntryPtr->WdgM_DeadlineMax.WdgM_DeadlineTimeInTicks))
#     {
#         /** [DD-WDGM322-MGC02-V1]*/
#         ModeDep_SupervisedEntityPtr->WdgM_SupervisedEntityMonitorEntryPtr->WdgM_DeadlineSupervisionResult = WDGM_CORRECT;
	.d2line		538
.Llo86:
	diab.li		r0,0		# actualOverflowvalue=r0
.Llo87:
	lwz		r3,4(r3)		# ModeDep_SupervisedEntityPtr=r3 ModeDep_SupervisedEntityPtr=r3
	stw		r0,8(r3)		# ModeDep_SupervisedEntityPtr=r3 actualOverflowvalue=r0
	b		.L695
.L694:
#     }
#     else
#     {
#         /** [DD-WDGM322-MGC02-V1]*/
#         ModeDep_SupervisedEntityPtr->WdgM_SupervisedEntityMonitorEntryPtr->WdgM_DeadlineSupervisionResult = WDGM_INCORRECT;
	.d2line		543
.Llo88:
	diab.li		r0,1		# actualOverflowvalue=r0
.Llo89:
	lwz		r3,4(r3)		# ModeDep_SupervisedEntityPtr=r3 ModeDep_SupervisedEntityPtr=r3
	stw		r0,8(r3)		# ModeDep_SupervisedEntityPtr=r3 actualOverflowvalue=r0
.L695:
#     }
# 
#     /** [DD-WDGM229-MGC01-V1] */
#     DeadLineSupervisionEntryPtr->WdgM_DeadlineMonitorEntryPtr->WdgM_DeadlineTimeActual.WdgM_DeadlineTimeInTicks = 0U;
	.d2line		547
.Llo90:
	diab.li		r5,0
	lwz		r3,20(r4)		# ModeDep_SupervisedEntityPtr=r3 DeadLineSupervisionEntryPtr=r4
.Llo91:
	stw		r5,0(r3)		# ModeDep_SupervisedEntityPtr=r3
#     DeadLineSupervisionEntryPtr->WdgM_DeadlineMonitorEntryPtr->WdgM_DeadlineTimeActual.WdgM_TimeOverflowValue = 0U;
	.d2line		548
	lwz		r3,20(r4)		# ModeDep_SupervisedEntityPtr=r3 DeadLineSupervisionEntryPtr=r4
	stw		r5,4(r3)		# ModeDep_SupervisedEntityPtr=r3
# }
	.d2line		549
	.d2epilogue_begin
	lwz		r0,20(r1)		# actualOverflowvalue=r0
	mtspr		lr,r0		# actualOverflowvalue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo92:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1194:
	.type		WdgM_DeadlineSupervision,@function
	.size		WdgM_DeadlineSupervision,.-WdgM_DeadlineSupervision
# Number of nodes = 73

# Allocations for WdgM_DeadlineSupervision
#	?a4		ModeDep_SupervisedEntityPtr
#	?a5		DeadLineSupervisionEntryPtr
#	?a6		actualOverflowvalue
#	?a7		actualTick
# LOCAL_INLINE FUNC(WdgM_NotifyStatus, WDGM_CODE) WdgM_SetGlobalStatus
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         557,49
#$$ld
.L1214:

#$$bf	WdgM_SetGlobalStatus,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.d2_cfa_start __cie
WdgM_SetGlobalStatus:
.Llo99:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# Status=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Status=r0 Status=r3
	.d2prologue_end
# (
#     VAR(WdgM_GlobalStatusType, AUTOMATIC) Status
# )
# {
#     WdgM_NotifyStatus retVal = WDGM_NO_NOTIFICATION;
	.d2line		562
.Llo100:
	diab.li		r4,0		# retVal=r4
# 
#     if (WdgM_GlobalStatus != Status)
	.d2line		564
.Llo101:
	lis		r3,WdgM_GlobalStatus@ha
	lwz		r3,WdgM_GlobalStatus@l(r3)
	se_cmp		r3,r0		# Status=r0
	bc		1,2,.L699	# eq
#     {
#         WdgM_GlobalStatus = Status;
	.d2line		566
	lis		r3,WdgM_GlobalStatus@ha		# retVal=r3
	e_add16i		r3,r3,WdgM_GlobalStatus@l		# retVal=r3 retVal=r3
	stw		r0,0(r3)		# retVal=r3 Status=r0
#         if (WDGM_GLOBAL_STATUS_STOPPED == WdgM_GlobalStatus)
	.d2line		567
	se_cmpi		r0,4		# Status=r0
#         {
#             retVal = WDGM_STOPPED_NOTIFICATION;
	.d2line		569
	diab.li		r3,1		# retVal=r3
	isel		r3,r3,r4,2		# retVal=r3 retVal=r3 retVal=r4
.L700:
#         }
#         else
#         {
#             retVal = WDGM_MODE_NOTIFICATION;
	.d2line		573
.Llo102:
	diab.li		r0,2		# Status=r0
.Llo103:
	isel		r4,r3,r0,2		# retVal=r4 retVal=r3 Status=r0
.L699:
#         }
#     }
# 
#     return retVal;
	.d2line		577
.Llo104:
	mr		r3,r4		# retVal=r3 retVal=r4
# }
	.d2line		578
	.d2epilogue_begin
.Llo105:
	lwz		r0,20(r1)		# Status=r0
	mtspr		lr,r0		# Status=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo106:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1215:
	.type		WdgM_SetGlobalStatus,@function
	.size		WdgM_SetGlobalStatus,.-WdgM_SetGlobalStatus
# Number of nodes = 21

# Allocations for WdgM_SetGlobalStatus
#	?a4		Status
#	?a5		retVal
# LOCAL_INLINE FUNC(void, WDGM_CODE) WdgM_GlobalStatusNotification
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         586,36
#$$ld
.L1226:

#$$bf	WdgM_GlobalStatusNotification,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
WdgM_GlobalStatusNotification:
.Llo107:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# Notification=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Status=r31 Status=r3
	mr.		r0,r4		# Notification=?a5 Notification=r4
	.d2prologue_end
# (
#     VAR(WdgM_GlobalStatusType, AUTOMATIC) Status,
#     VAR(WdgM_NotifyStatus, AUTOMATIC) Notification
# )
# {
#     if (WDGM_NO_NOTIFICATION != Notification)
	.d2line		592
	bc		1,2,.L704	# eq
#     {
#         if (WDGM_STOPPED_NOTIFICATION == Notification) /** [DD-WDGM015-MGC03-V1] */
	.d2line		594
.Llo108:
	se_cmpi		r0,1		# Notification=r0
.Llo109:
	bc		0,2,.L706	# ne
#         {
#           #if (STD_ON == WDGM_DEM_STOPPED_SUPERVISION_REPORT)
#             /** [DD-WDGM129-MGC01-V1], [DD-WDGM004-MGC01-V1] [DD-WDGM162-MGC02-V1]*/
#             WdgM_DemReport(WdgM_DemEventId.Dem_E_Monitoring, DEM_EVENT_STATUS_FAILED);
	.d2line		598
.Llo113:
	lis		r3,(WdgM_DemEventId+4)@ha
.Llo114:
	lhz		r3,(WdgM_DemEventId+4)@l(r3)
	diab.li		r4,1
.Llo115:
	bl		WdgM_DemReport
#           #endif /* STD_ON == WDGM_DEM_STOPPED_SUPERVISION_REPORT*/
#           #if (STD_ON == WDGM_IMMEDIATE_RESET)    /** [DD-WDGM133-MGC01-V1] */
#             /* User callout for notification before a reset */
#             if(WdgM_ResetFuncCallout != NULL_PTR)
#             {
#                 WdgM_ResetFuncCallout();
#             }
#             /* Function call will not return */
#             Mcu_PerformReset(); /** [DD-WDGM162-MGC04-V1]*/
#           #else /** [DD-WDGM134-MGC01-V1] [DD-WDGM198-MGC01-V1]*/
#             /** [DD-WDGM196-MGC01-V1], [DD-WDGM196-MGC02-V1] [DD-WDGM338-MGC03-V1] */
#             Rte_Switch_globalMode_currentMode ((Rte_ModeType_WdgMMode)Status);
	.d2line		610
	mr		r3,r31		# Status=r3 Status=r31
	rlwinm		r3,r3,0,24,31
	bl		Rte_Switch_globalMode_currentMode
	b		.L704
.L706:
#           #endif /* STD_ON == WDGM_IMMEDIATE_RESET */
#         }
#         else
#         {
#             /** [DD-WDGM196-MGC01-V1], [DD-WDGM196-MGC02-V1] [DD-WDGM338-MGC03-V1] */
#             Rte_Switch_globalMode_currentMode ((Rte_ModeType_WdgMMode)Status);
	.d2line		616
.Llo116:
	mr		r3,r31		# Status=r3 Status=r31
	rlwinm		r3,r3,0,24,31
	bl		Rte_Switch_globalMode_currentMode
.L704:
#         }
#     }
#     /* else: no notification is needed */
# }
	.d2line		620
	.d2epilogue_begin
.Llo110:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo111:
	lwz		r0,36(r1)		# Notification=r0
	mtspr		lr,r0		# Notification=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo112:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1227:
	.type		WdgM_GlobalStatusNotification,@function
	.size		WdgM_GlobalStatusNotification,.-WdgM_GlobalStatusNotification
# Number of nodes = 30

# Allocations for WdgM_GlobalStatusNotification
#	?a4		Status
#	?a5		Notification
# LOCAL_INLINE FUNC(boolean, WDGM_CODE) WdgM_IsValidCallerId
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         630,39
#$$ld
.L1233:

#$$bf	WdgM_IsValidCallerId,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.d2_cfa_start __cie
WdgM_IsValidCallerId:
.Llo117:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# CallerId=r0 CallerId=r3
	.d2prologue_end
# (
#     VAR(uint16, AUTOMATIC) CallerId
# )
# {
#     boolean isValidCallerID = FALSE;
	.d2line		635
	diab.li		r3,0		# isValidCallerID=r3
#     if (WdgMCallerIdCfg.WdgM_CallerIdsTablePtr != NULL_PTR)
	.d2line		636
.Llo118:
	lis		r4,WdgMCallerIdCfg@ha
	lwz		r4,WdgMCallerIdCfg@l(r4)
	se_cmpi		r4,0
	bc		1,2,.L711	# eq
	.section	.invalid_TEXT,,c
.L1240:
#     {
#         uint8 index;
#         for (index = (uint8)0U; index<WdgMCallerIdCfg.WdgM_NoOfCallerIds; index++)
	.d2line		639
.Llo119:
	diab.li		r4,0		# index=r4
.L712:
.Llo122:
	rlwinm		r6,r4,0,24,31		# index=r4
	lis		r5,(WdgMCallerIdCfg+4)@ha
	lbz		r5,(WdgMCallerIdCfg+4)@l(r5)
	se_cmp		r6,r5
	bc		0,0,.L711	# ge
#         {
#             if (CallerId == WdgMCallerIdCfg.WdgM_CallerIdsTablePtr[index])
	.d2line		641
	rlwinm		r7,r0,0,16,31		# CallerId=r0
	lis		r5,WdgMCallerIdCfg@ha
	lwz		r5,WdgMCallerIdCfg@l(r5)
	rlwinm		r6,r4,1,23,30		# index=r4
	lhzx		r5,r5,r6
	se_cmp		r7,r5
	bc		0,2,.L715	# ne
#             {
#                 isValidCallerID = TRUE;
	.d2line		643
	diab.li		r3,1		# isValidCallerID=r3
	b		.L711
.L715:
#                 break;
#             }
#         }
	.d2line		646
	diab.addi		r6,r4,1		# index=r4
	se_addi		r4,1		# index=r4 index=r4
	b		.L712
	.section	.invalid_TEXT,,c
.L1241:
.L711:
#     }
#     return (isValidCallerID);
	.d2line		648
.Llo120:
	rlwinm		r3,r3,0,24,31		# isValidCallerID=r3 isValidCallerID=r3
# }
	.d2line		649
	.d2epilogue_begin
.Llo121:
	lwz		r0,20(r1)		# CallerId=r0
	mtspr		lr,r0		# CallerId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1234:
	.type		WdgM_IsValidCallerId,@function
	.size		WdgM_IsValidCallerId,.-WdgM_IsValidCallerId
# Number of nodes = 42

# Allocations for WdgM_IsValidCallerId
#	?a4		CallerId
#	?a5		isValidCallerID
#	?a6		index
# LOCAL_INLINE FUNC(void, WDGM_CODE) WdgM_UpdateCheckpointAliveCounter
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         657,36
#$$ld
.L1248:

#$$bf	WdgM_UpdateCheckpointAliveCounter,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.d2_cfa_start __cie
WdgM_UpdateCheckpointAliveCounter:
.Llo123:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	.d2prologue_end
# (
#     CONSTP2CONST(WdgM_CheckpointType, AUTOMATIC, WDGM_APPL_CONST) CheckpointStructPtr
# )
# {
#     /* If CheckpointStructPtr->WdgM_AliveSupervisionEntryPtr is NULL_PTR then it means that there is no alive
#      * supervision configured for the checkpoint in the current mode (CheckpointStructPtr), so no action has
#      * to be taken. On the other hand the alive counter of the corresponding alive supervision has to be incremented.
#      */
#     if (CheckpointStructPtr->WdgM_AliveSupervisionEntryPtr != NULL_PTR)
	.d2line		666
	lwz		r0,0(r3)		# CheckpointStructPtr=r3
	se_cmpi		r0,0
	bc		1,2,.L720	# eq
#     {
#         CheckpointStructPtr->WdgM_AliveSupervisionEntryPtr->WdgM_AliveMonitorEntryPtr->WdgM_AliveCountVar++;
	.d2line		668
	lwz		r3,0(r3)		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	lwz		r4,4(r3)		# CheckpointStructPtr=r3
	lhz		r3,0(r4)		# CheckpointStructPtr=r3
	se_addi		r3,1		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	sth		r3,0(r4)		# CheckpointStructPtr=r3
.L720:
#     }
# }
	.d2line		670
	.d2epilogue_begin
.Llo124:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1249:
	.type		WdgM_UpdateCheckpointAliveCounter,@function
	.size		WdgM_UpdateCheckpointAliveCounter,.-WdgM_UpdateCheckpointAliveCounter
# Number of nodes = 11

# Allocations for WdgM_UpdateCheckpointAliveCounter
#	?a4		CheckpointStructPtr
#	?a5		$$95
# LOCAL_INLINE FUNC(void, WDGM_CODE) WdgM_TriggerWatchdogs(void)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         677,36
#$$ld
.L1259:

#$$bf	WdgM_TriggerWatchdogs,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
WdgM_TriggerWatchdogs:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     if (FALSE == WdgM_ResetRequested) /** [DD-WDGM002-MGC01-V1] */
	.d2line		679
	lis		r3,WdgM_ResetRequested@ha
	lbz		r0,WdgM_ResetRequested@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L723	# ne
	.section	.invalid_TEXT,,c
.L1262:
#     {
#         /* WdgM_GlobalStatus is pushed to stack in order to preserve the consistency,
#         because it is not protected by exclusive area */
#         WdgM_GlobalStatusType currentGlobalStatusPushedToStack = WdgM_GlobalStatus;
	.d2line		683
	lis		r3,WdgM_GlobalStatus@ha
	lwz		r0,WdgM_GlobalStatus@l(r3)		# currentGlobalStatusPushedToStack=r0
.Llo125:
	mr		r0,r0		# currentGlobalStatusPushedToStack=r0 currentGlobalStatusPushedToStack=r0
#         /* WdgM_CurrenMode is pushed to stack in order to preserve the consistency,
#         because it is not protected by exclusive area */
#         WdgM_ModeType currentModePushedToStack = WdgM_CurrentMode;
	.d2line		686
	lis		r3,WdgM_CurrentMode@ha
	lbz		r31,WdgM_CurrentMode@l(r3)
.Llo139:
	mr		r31,r31		# currentModePushedToStack=r31 currentModePushedToStack=r31
#         uint8 idx;
#         /** [DD-WDGM223-MGC01-V1] */
#         if (WDGM_GLOBAL_STATUS_STOPPED != currentGlobalStatusPushedToStack)
	.d2line		689
	se_cmpi		r0,4		# currentGlobalStatusPushedToStack=r0
	bc		1,2,.L725	# eq
#         {
#             /* Trigger drivers with configured values */
#             for (idx = (uint8)0U; idx < WDGM_GET_WDGM_TRIGGER_COUNT(currentModePushedToStack); idx++)
	.d2line		692
.Llo126:
	diab.li		r30,0		# idx=r30
.L726:
.Llo141:
	rlwinm		r0,r31,0,24,31		# currentGlobalStatusPushedToStack=r0 currentModePushedToStack=r31
.Llo127:
	rlwinm		r5,r30,0,24,31		# idx=r30
	lis		r3,WdgM_CurrentConfigPtr@ha
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)
	lwz		r3,0(r3)
	rlwinm		r4,r0,5,0,26		# currentGlobalStatusPushedToStack=r0
	se_slwi		r0,3		# currentGlobalStatusPushedToStack=r0 currentGlobalStatusPushedToStack=r0
	subf		r0,r0,r4		# currentGlobalStatusPushedToStack=r0 currentGlobalStatusPushedToStack=r0
	se_add		r3,r0		# currentGlobalStatusPushedToStack=r0
	lbz		r0,23(r3)		# currentGlobalStatusPushedToStack=r0
	se_cmp		r5,r0		# currentGlobalStatusPushedToStack=r0
	bc		0,0,.L723	# ge
#             {
#                 /** [DD-WDGM119-MGC01-V1], [DD-WDGM120-MGC01-V1], [DD-WDGM121-MGC01-V1] */
#                 if (WDGIF_OFF_MODE != WDGM_GET_WDGM_MODE(currentModePushedToStack, idx))
	.d2line		695
.Llo128:
	rlwinm		r0,r31,0,24,31		# currentGlobalStatusPushedToStack=r0 currentModePushedToStack=r31
.Llo129:
	lis		r3,WdgM_CurrentConfigPtr@ha
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)
	lwz		r3,0(r3)
	rlwinm		r4,r0,5,0,26		# currentGlobalStatusPushedToStack=r0
	se_slwi		r0,3		# currentGlobalStatusPushedToStack=r0 currentGlobalStatusPushedToStack=r0
	subf		r0,r0,r4		# currentGlobalStatusPushedToStack=r0 currentGlobalStatusPushedToStack=r0
	se_add		r3,r0		# currentGlobalStatusPushedToStack=r0
	lwz		r3,12(r3)
	rlwinm		r5,r30,3,21,28		# idx=r30
	lwzx		r0,r3,r5		# currentGlobalStatusPushedToStack=r0
	se_cmpi		r0,0		# currentGlobalStatusPushedToStack=r0
	bc		1,2,.L729	# eq
#                 {
#                     /* Reference cycle */
#                     WdgIf_SetTriggerCondition(
	.d2line		698
.Llo130:
	rlwinm		r0,r31,0,24,31		# currentGlobalStatusPushedToStack=r0 currentModePushedToStack=r31
.Llo131:
	lis		r4,WdgM_CurrentConfigPtr@ha
	lwz		r3,WdgM_CurrentConfigPtr@l(r4)
	lwz		r3,0(r3)
	rlwinm		r5,r0,5,0,26		# currentGlobalStatusPushedToStack=r0
	se_slwi		r0,3		# currentGlobalStatusPushedToStack=r0 currentGlobalStatusPushedToStack=r0
	subf		r0,r0,r5		# currentGlobalStatusPushedToStack=r0 currentGlobalStatusPushedToStack=r0
	se_add		r3,r0		# currentGlobalStatusPushedToStack=r0
	lwz		r3,12(r3)
	rlwinm		r5,r30,3,21,28		# idx=r30
	se_add		r3,r5
	lbz		r3,6(r3)
	lwz		r4,WdgM_CurrentConfigPtr@l(r4)
	lwz		r4,0(r4)
	se_add		r4,r0		# currentGlobalStatusPushedToStack=r0
	lwz		r0,12(r4)		# currentGlobalStatusPushedToStack=r0
	se_add		r5,r0		# currentGlobalStatusPushedToStack=r0
	lhz		r4,4(r5)
	bl		WdgIf_SetTriggerCondition
.L729:
#                         WDGM_GET_WDG(currentModePushedToStack, idx),
#                         WDGM_GET_TRIGGER_REFERENCE_CYCLE(currentModePushedToStack, idx));
#                 }
#             }
	.d2line		702
.Llo132:
	diab.addi		r3,r30,1		# idx=r30
	se_addi		r30,1		# idx=r30 idx=r30
	b		.L726
.L725:
#         }
#         else /* [DD-WDGM223-MGC03-V1]*/
#         {
#             /* Setting the trigger condition to zero will immediately prevent the Watchdog Driver
#                module from triggering the hardware watchdog.
#              */
#             for (idx = (uint8)0U; idx < WDGM_GET_WDGM_TRIGGER_COUNT(currentModePushedToStack); idx++)
	.d2line		709
.Llo142:
	diab.li		r30,0		# idx=r30
.L731:
.Llo143:
	rlwinm		r0,r31,0,24,31		# currentGlobalStatusPushedToStack=r0 currentModePushedToStack=r31
.Llo133:
	rlwinm		r5,r30,0,24,31		# idx=r30
	lis		r3,WdgM_CurrentConfigPtr@ha
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)
	lwz		r3,0(r3)
	rlwinm		r4,r0,5,0,26		# currentGlobalStatusPushedToStack=r0
	se_slwi		r0,3		# currentGlobalStatusPushedToStack=r0 currentGlobalStatusPushedToStack=r0
	subf		r0,r0,r4		# currentGlobalStatusPushedToStack=r0 currentGlobalStatusPushedToStack=r0
	se_add		r3,r0		# currentGlobalStatusPushedToStack=r0
	lbz		r0,23(r3)		# currentGlobalStatusPushedToStack=r0
	se_cmp		r5,r0		# currentGlobalStatusPushedToStack=r0
	bc		0,0,.L723	# ge
#             {
#                 if (WDGIF_OFF_MODE != WDGM_GET_WDGM_MODE(currentModePushedToStack, idx))
	.d2line		711
.Llo134:
	rlwinm		r0,r31,0,24,31		# currentGlobalStatusPushedToStack=r0 currentModePushedToStack=r31
.Llo135:
	lis		r3,WdgM_CurrentConfigPtr@ha
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)
	lwz		r3,0(r3)
	rlwinm		r4,r0,5,0,26		# currentGlobalStatusPushedToStack=r0
	se_slwi		r0,3		# currentGlobalStatusPushedToStack=r0 currentGlobalStatusPushedToStack=r0
	subf		r0,r0,r4		# currentGlobalStatusPushedToStack=r0 currentGlobalStatusPushedToStack=r0
	se_add		r3,r0		# currentGlobalStatusPushedToStack=r0
	lwz		r3,12(r3)
	rlwinm		r5,r30,3,21,28		# idx=r30
	lwzx		r0,r3,r5		# currentGlobalStatusPushedToStack=r0
	se_cmpi		r0,0		# currentGlobalStatusPushedToStack=r0
	bc		1,2,.L734	# eq
#                 {
#                     /* Reference cycle */
#                     WdgIf_SetTriggerCondition(WDGM_GET_WDG(currentModePushedToStack, idx), 0); /*[DD-WDGM122-MGC01-V1]*/
	.d2line		714
.Llo136:
	rlwinm		r0,r31,0,24,31		# currentGlobalStatusPushedToStack=r0 currentModePushedToStack=r31
.Llo137:
	lis		r3,WdgM_CurrentConfigPtr@ha
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)
	lwz		r4,0(r3)
	rlwinm		r3,r0,5,0,26		# currentGlobalStatusPushedToStack=r0
	se_slwi		r0,3		# currentGlobalStatusPushedToStack=r0 currentGlobalStatusPushedToStack=r0
	subf		r0,r0,r3		# currentGlobalStatusPushedToStack=r0 currentGlobalStatusPushedToStack=r0
	se_add		r4,r0		# currentGlobalStatusPushedToStack=r0
	lwz		r0,12(r4)		# currentGlobalStatusPushedToStack=r0
	rlwinm		r3,r30,3,21,28		# idx=r30
	se_add		r3,r0		# currentGlobalStatusPushedToStack=r0
	lbz		r3,6(r3)
	diab.li		r4,0
	bl		WdgIf_SetTriggerCondition
.L734:
#                 }
#             }
	.d2line		716
.Llo138:
	diab.addi		r3,r30,1		# idx=r30
	se_addi		r30,1		# idx=r30 idx=r30
	b		.L731
	.section	.invalid_TEXT,,c
.L1263:
.L723:
#         }
#     }
# }
	.d2line		719
	.d2epilogue_begin
.Llo140:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# currentGlobalStatusPushedToStack=r0
	mtspr		lr,r0		# currentGlobalStatusPushedToStack=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1260:
	.type		WdgM_TriggerWatchdogs,@function
	.size		WdgM_TriggerWatchdogs,.-WdgM_TriggerWatchdogs
# Number of nodes = 155

# Allocations for WdgM_TriggerWatchdogs
#	?a4		$$118
#	?a5		$$117
#	?a6		$$116
#	?a7		$$115
#	?a8		$$114
#	?a9		$$113
#	?a10		$$112
#	?a11		currentGlobalStatusPushedToStack
#	?a12		currentModePushedToStack
#	?a13		idx
# LOCAL_INLINE FUNC(Std_ReturnType, WDGM_CODE) WdgM_GetCPID_Binary(
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         731,46
#$$ld
.L1274:

#$$bf	WdgM_GetCPID_Binary,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r29,r30,r31,cr0,xer,lr
	.d2_cfa_start __cie
WdgM_GetCPID_Binary:
.Llo144:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo148:
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# first=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ModeDep_SupervisedEntityPtr=r3 ModeDep_SupervisedEntityPtr=r3
	mr		r4,r4		# CheckpointID=r4 CheckpointID=r4
	mr		r5,r5		# PtrToCPEntryPtr=r5 PtrToCPEntryPtr=r5
	.d2prologue_end
#     CONSTP2CONST(WdgM_LocalstatModeDepType, AUTOMATIC, WDGM_APPL_CONST) ModeDep_SupervisedEntityPtr,
#     CONST(WdgM_CheckpointIdType, WDGM_VAR) CheckpointID,
#     P2VAR(P2VAR(WdgM_CheckpointType, AUTOMATIC, WDGM_APPL_DATA), AUTOMATIC, WDGM_APPL_DATA) PtrToCPEntryPtr
# )
# {
#     Std_ReturnType retVal = E_NOT_OK;
	.d2line		737
	diab.li		r6,1		# retVal=r6
#     uint16 first = 0U;
	.d2line		738
.Llo146:
	diab.li		r0,0		# first=r0
#     uint16 last = ModeDep_SupervisedEntityPtr->WdgM_NumberOfActiveCheckPoints;
	.d2line		739
	lhz		r30,12(r3)		# last=r30 ModeDep_SupervisedEntityPtr=r3
.Llo151:
	mr		r30,r30		# last=r30 last=r30
#     if (last != first)
	.d2line		740
	rlwinm		r31,r30,0,16,31		# last=r30
	se_cmpi		r31,0
	bc		1,2,.L742	# eq
#     {
#         last -= (uint16)1U;
	.d2line		742
	diab.li		r7,65535
	se_add		r7,r30		# last=r30
	mr		r30,r7		# last=r30 last=r7
.L743:
#         while (first <= last)
	.d2line		743
	rlwinm		r7,r0,0,16,31		# middle=r7 first=r0
.Llo156:
	rlwinm		r31,r30,0,16,31		# last=r30
	se_cmp		r7,r31		# middle=r7
	bc		1,1,.L742	# gt
	.section	.invalid_TEXT,,c
.L1290:
#         {
#             uint16 middle = (first + last) >> 1U;
	.d2line		745
.Llo157:
	rlwinm		r7,r0,0,16,31		# middle=r7 first=r0
.Llo158:
	rlwinm		r31,r30,0,16,31		# last=r30
	se_add		r7,r31		# middle=r7 middle=r7
	srawi		r7,r7,1		# middle=r7 middle=r7
	mr		r7,r7		# middle=r7 middle=r7
#             if (ModeDep_SupervisedEntityPtr->WdgM_CheckpointTablePtr[middle].WdgM_CheckpointID < CheckpointID)
	.d2line		746
	lwz		r29,0(r3)		# ModeDep_SupervisedEntityPtr=r3
	rlwinm		r31,r7,0,16,31		# middle=r7
	e_mulli		r31,r31,40
	se_add		r31,r29
	lhz		r31,34(r31)
	rlwinm		r29,r4,0,16,31		# CheckpointID=r4
	se_cmp		r31,r29
	bc		0,0,.L745	# ge
#             {
#                 first = middle + (uint16)1U;
	.d2line		748
	diab.addi		r0,r7,1		# first=r0 middle=r7
	addi		r0,r7,1		# first=r0 middle=r7
	b		.L743
.L745:
#             }
#             else if (ModeDep_SupervisedEntityPtr->WdgM_CheckpointTablePtr[middle].WdgM_CheckpointID == CheckpointID)
	.d2line		750
.Llo152:
	lwz		r30,0(r3)		# last=r30 ModeDep_SupervisedEntityPtr=r3
.Llo153:
	rlwinm		r31,r7,0,16,31		# middle=r7
	e_mulli		r31,r31,40
	se_add		r31,r30		# last=r30
	lhz		r31,34(r31)
	rlwinm		r29,r4,0,16,31		# CheckpointID=r4
	se_cmp		r31,r29
	bc		0,2,.L747	# ne
#             {
#                 *PtrToCPEntryPtr = (WdgM_CheckpointType*)&ModeDep_SupervisedEntityPtr->WdgM_CheckpointTablePtr[middle];
	.d2line		752
.Llo149:
	lwz		r0,0(r3)		# first=r0 ModeDep_SupervisedEntityPtr=r3
.Llo150:
	rlwinm		r7,r7,0,16,31		# middle=r7 middle=r7
	e_mulli		r7,r7,40		# middle=r7 middle=r7
	se_add		r0,r7		# first=r0 first=r0 middle=r7
	stw		r0,0(r5)		# PtrToCPEntryPtr=r5 first=r0
#                 retVal = E_OK;
	.d2line		753
	diab.li		r6,0		# retVal=r6
	b		.L742
.L747:
#                 break;
#             }
#             else
#             {
#                 if (middle == 0U)
	.d2line		758
	e_cmphl16i	r7,0		# middle=r7
	bc		1,2,.L742	# eq
#                 {
#                     break;
#                 }
#                 else
#                 {
#                     last = middle - (uint16)1U;
	.d2line		764
.Llo159:
	diab.li		r30,65535		# last=r30
.Llo160:
	se_add		r7,r30		# middle=r7 middle=r7 middle=r30
.Llo154:
	mr		r30,r7		# last=r30 last=r7
	.section	.invalid_TEXT,,c
.L1291:
.Llo155:
	b		.L743
.L742:
#                 }
#             }
#         }
#     }
#     return retVal;
	.d2line		769
.Llo145:
	rlwinm		r3,r6,0,24,31		# ModeDep_SupervisedEntityPtr=r3 retVal=r6
# }
	.d2line		770
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# first=r0
	mtspr		lr,r0		# first=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo147:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1275:
	.type		WdgM_GetCPID_Binary,@function
	.size		WdgM_GetCPID_Binary,.-WdgM_GetCPID_Binary
# Number of nodes = 94

# Allocations for WdgM_GetCPID_Binary
#	?a4		ModeDep_SupervisedEntityPtr
#	?a5		CheckpointID
#	?a6		PtrToCPEntryPtr
#	?a7		retVal
#	?a8		first
#	?a9		last
#	?a10		middle
# LOCAL_INLINE FUNC(boolean, WDGM_CODE) WdgM_TestIndexInInternalBitVector
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         779,39
#$$ld
.L1298:

#$$bf	WdgM_TestIndexInInternalBitVector,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
WdgM_TestIndexInInternalBitVector:
.Llo161:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo164:
	stw		r0,20(r1)		# returnValue=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	mr		r4,r4		# IndexOfCheckPointInTheCorrespondingCheckpointTable=r4 IndexOfCheckPointInTheCorrespondingCheckpointTable=r4
	.d2prologue_end
# (
#     P2CONST(WdgM_CheckpointType, AUTOMATIC, WDGM_APPL_CONST) CheckpointStructPtr,
#     VAR(uint16, AUTOMATIC) IndexOfCheckPointInTheCorrespondingCheckpointTable
# )
# {
#     boolean returnValue;
#     /* divide by 8 in order to find which char array contains the bit which corresponds to the index*/
#     uint16 whichArray = IndexOfCheckPointInTheCorrespondingCheckpointTable >> 3;
	.d2line		787
	rlwinm		r0,r4,29,19,31		# returnValue=r0 IndexOfCheckPointInTheCorrespondingCheckpointTable=r4
.Llo165:
	mr		r0,r0		# whichArray=r0 whichArray=r0
#     /* in order to find which bit corresponds to the index in the found byte */
#     uint8 whichPosition = (uint8)(IndexOfCheckPointInTheCorrespondingCheckpointTable % 8U);
	.d2line		789
	rlwinm		r4,r4,0,29,31		# IndexOfCheckPointInTheCorrespondingCheckpointTable=r4 IndexOfCheckPointInTheCorrespondingCheckpointTable=r4
.Llo163:
	mr		r4,r4		# whichPosition=r4 whichPosition=r4
#     uint8 mask = (uint8)(1U << whichPosition);
	.d2line		790
	diab.li		r5,1
	slw		r4,r5,r4		# whichPosition=r4 whichPosition=r4
.Llo170:
	mr		r4,r4		# mask=r4 mask=r4
#     if ((mask &
	.d2line		791
	rlwinm		r4,r4,0,24,31		# mask=r4 mask=r4
	lwz		r3,24(r3)		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	lwz		r3,0(r3)		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
.Llo166:
	rlwinm		r0,r0,0,16,31		# whichArray=r0 whichArray=r0
	lbzx		r0,r3,r0		# whichArray=r0 CheckpointStructPtr=r3
	and.		r0,r0,r4		# whichArray=r0 whichArray=r0 mask=r4
#         CheckpointStructPtr->WdgM_LogicalSupervisionMonitorPtr->WdgM_NextPossibleCheckpointBitvectorInternal[whichArray])
#         != 0U)
#     {
#         returnValue = TRUE;
.Llo169:
	isel		r0,r3,r5,2		# returnValue=r0 returnValue=r3
.L757:
#     }
#     else
#     {
#         returnValue = FALSE;
	.d2line		799
.Llo162:
	isel		r3,0,r0,2		# returnValue=r3 returnValue=r0
.L758:
#     }
#     return (returnValue);
	.d2line		801
.Llo167:
	rlwinm		r3,r3,0,24,31		# returnValue=r3 returnValue=r3
# }
	.d2line		802
	.d2epilogue_begin
.Llo168:
	lwz		r0,20(r1)		# returnValue=r0
	mtspr		lr,r0		# returnValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1299:
	.type		WdgM_TestIndexInInternalBitVector,@function
	.size		WdgM_TestIndexInInternalBitVector,.-WdgM_TestIndexInInternalBitVector
# Number of nodes = 41

# Allocations for WdgM_TestIndexInInternalBitVector
#	?a4		CheckpointStructPtr
#	?a5		IndexOfCheckPointInTheCorrespondingCheckpointTable
#	?a6		returnValue
#	?a7		whichArray
#	?a8		whichPosition
#	?a9		mask
# LOCAL_INLINE FUNC(boolean, WDGM_CODE) WdgM_TestIndexInExternalBitVector
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         812,39
#$$ld
.L1313:

#$$bf	WdgM_TestIndexInExternalBitVector,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.d2_cfa_start __cie
WdgM_TestIndexInExternalBitVector:
.Llo171:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo177:
	stw		r0,20(r1)		# whichArray=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	mr		r4,r4		# IndexOfCheckPointInTheCorrespondingCheckpointTable=r4 IndexOfCheckPointInTheCorrespondingCheckpointTable=r4
	.d2prologue_end
# (
#     P2CONST(WdgM_CheckpointType, AUTOMATIC, WDGM_APPL_CONST) CheckpointStructPtr,
#     VAR(uint16, AUTOMATIC) IndexOfCheckPointInTheCorrespondingCheckpointTable
# )
# {
#     boolean returnValue;
#     /* divide by 8 in order to find which char array contains the bit which corresponds to the index*/
#     uint16 whichArray = IndexOfCheckPointInTheCorrespondingCheckpointTable >> 3;
	.d2line		820
	rlwinm		r0,r4,29,19,31		# whichArray=r0 IndexOfCheckPointInTheCorrespondingCheckpointTable=r4
	mr		r0,r0		# whichArray=r0 whichArray=r0
#     /* in order to find which bit corresponds to the index in the found byte */
#     uint8 whichPosition = (uint8)(IndexOfCheckPointInTheCorrespondingCheckpointTable % 8U);
	.d2line		822
	rlwinm		r4,r4,0,29,31		# IndexOfCheckPointInTheCorrespondingCheckpointTable=r4 IndexOfCheckPointInTheCorrespondingCheckpointTable=r4
.Llo173:
	mr		r4,r4		# whichPosition=r4 whichPosition=r4
#     uint8 mask = (uint8)(1U << whichPosition);
	.d2line		823
	diab.li		r5,1		# mask=r5
.Llo180:
	slw		r5,r5,r4		# mask=r5 mask=r5 whichPosition=r4
	mr		r5,r5		# mask=r5 mask=r5
#     if ((mask & CheckpointStructPtr->WdgM_LogicalSupervisionMonitorPtr->WdgM_NextPossibleCheckpointBitvectorExternal[whichArray]) != 0U)
	.d2line		824
	rlwinm		r7,r5,0,24,31		# mask=r5
	lwz		r4,24(r3)		# whichPosition=r4 CheckpointStructPtr=r3
	lwz		r4,4(r4)		# whichPosition=r4 whichPosition=r4
	rlwinm		r6,r0,0,16,31		# whichArray=r0
	lbzx		r4,r4,r6		# whichPosition=r4 whichPosition=r4
	and.		r4,r4,r7		# whichPosition=r4 whichPosition=r4
.Llo179:
	bc		1,2,.L762	# eq
#     {
#         /* If it's a possible reachadble checkpoint by external transition (the corresponding bit was 1),
#          * then delete the corresponding bit. (It has just been reached, so it can't be reached again by this
#          * external trasntion until the start point of the corresponding external transition is not reached)
#          */
#         CheckpointStructPtr->WdgM_LogicalSupervisionMonitorPtr->WdgM_NextPossibleCheckpointBitvectorExternal[whichArray] ^= mask;
	.d2line		830
	lwz		r3,24(r3)		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	lwz		r3,4(r3)		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	rlwinm		r6,r0,0,16,31		# whichArray=r0
	lbzx		r0,r3,r6		# whichArray=r0 CheckpointStructPtr=r3
.Llo178:
	xor		r0,r0,r5		# mask=r0 mask=r0 mask=r5
	stbx		r0,r3,r6		# CheckpointStructPtr=r3 mask=r0
#         returnValue = TRUE;
	.d2line		831
	diab.li		r3,1		# returnValue=r3
.Llo172:
	b		.L763
.L762:
#     }
#     else
#     {
#         returnValue = FALSE;
	.d2line		835
.Llo174:
	diab.li		r3,0		# returnValue=r3
.L763:
#     }
#     return (returnValue);
	.d2line		837
.Llo175:
	rlwinm		r3,r3,0,24,31		# returnValue=r3 returnValue=r3
# }
	.d2line		838
	.d2epilogue_begin
.Llo176:
	lwz		r0,20(r1)		# mask=r0
	mtspr		lr,r0		# mask=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1314:
	.type		WdgM_TestIndexInExternalBitVector,@function
	.size		WdgM_TestIndexInExternalBitVector,.-WdgM_TestIndexInExternalBitVector
# Number of nodes = 56

# Allocations for WdgM_TestIndexInExternalBitVector
#	?a4		CheckpointStructPtr
#	?a5		IndexOfCheckPointInTheCorrespondingCheckpointTable
#	?a6		$$96
#	?a7		returnValue
#	?a8		whichArray
#	?a9		whichPosition
#	?a10		mask
# LOCAL_INLINE FUNC(void, WDGM_CODE) WdgM_SetIndexInBitvector
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         851,36
#$$ld
.L1328:

#$$bf	WdgM_SetIndexInBitvector,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,lr
	.d2_cfa_start __cie
WdgM_SetIndexInBitvector:
.Llo181:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	mr		r4,r4		# IndexOfCheckPointInTheCorrespondingCheckpointTable=r4 IndexOfCheckPointInTheCorrespondingCheckpointTable=r4
	.d2prologue_end
# (
#     P2CONST(WdgM_CheckpointType, AUTOMATIC, WDGM_APPL_CONST) CheckpointStructPtr,
#     VAR(uint16, AUTOMATIC) IndexOfCheckPointInTheCorrespondingCheckpointTable
# )
# {
#     /* divide by 8 in order to find which char array contains the bit which corresponds to the index*/
#     uint16 whichArray = IndexOfCheckPointInTheCorrespondingCheckpointTable >> 3;
	.d2line		858
	rlwinm		r6,r4,29,19,31		# whichArray=r6 IndexOfCheckPointInTheCorrespondingCheckpointTable=r4
.Llo184:
	mr		r6,r6		# whichArray=r6 whichArray=r6
#     /* in order to find which bit corresponds to the index in the found byte */
#     uint8 whichPosition = (uint8)(IndexOfCheckPointInTheCorrespondingCheckpointTable % 8U);
	.d2line		860
	rlwinm		r4,r4,0,29,31		# IndexOfCheckPointInTheCorrespondingCheckpointTable=r4 IndexOfCheckPointInTheCorrespondingCheckpointTable=r4
.Llo183:
	mr		r4,r4		# whichPosition=r4 whichPosition=r4
#     uint8 mask = (uint8)(1U << whichPosition);
	.d2line		861
	diab.li		r5,1		# mask=r5
.Llo186:
	slw		r5,r5,r4		# mask=r5 mask=r5 whichPosition=r4
	mr		r5,r5		# mask=r5 mask=r5
#     CheckpointStructPtr->WdgM_LogicalSupervisionMonitorPtr->WdgM_NextPossibleCheckpointBitvectorExternal[whichArray] |= mask;
	.d2line		862
	lwz		r3,24(r3)		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	lwz		r3,4(r3)		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	rlwinm		r6,r6,0,16,31		# whichArray=r6 whichArray=r6
.Llo185:
	lbzx		r4,r3,r6		# whichPosition=r4 CheckpointStructPtr=r3
	or		r4,r4,r5		# whichPosition=r4 whichPosition=r4 mask=r5
	stbx		r4,r3,r6		# CheckpointStructPtr=r3 whichPosition=r4
# }
	.d2line		863
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo182:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1329:
	.type		WdgM_SetIndexInBitvector,@function
	.size		WdgM_SetIndexInBitvector,.-WdgM_SetIndexInBitvector
# Number of nodes = 30

# Allocations for WdgM_SetIndexInBitvector
#	?a4		CheckpointStructPtr
#	?a5		IndexOfCheckPointInTheCorrespondingCheckpointTable
#	?a6		$$97
#	?a7		whichArray
#	?a8		whichPosition
#	?a9		mask
# LOCAL_INLINE FUNC(void, WDGM_CODE) WdgM_SetNextInternalMask
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         873,36
#$$ld
.L1341:

#$$bf	WdgM_SetNextInternalMask,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.d2_cfa_start __cie
WdgM_SetNextInternalMask:
.Llo187:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	.d2prologue_end
# (
#     P2CONST(WdgM_CheckpointType, AUTOMATIC, WDGM_APPL_CONST) CheckpointStructPtr
# )
# {
#     uint16 index = 0U;
	.d2line		878
	diab.li		r4,0		# index=r4
#     uint16 numberOfBytesInBitVector =
	.d2line		879
.Llo189:
	lwz		r5,4(r3)		# CheckpointStructPtr=r3
	lwz		r5,8(r5)
	lhz		r0,2(r5)
.Llo190:
	mr		r0,r0		# numberOfBytesInBitVector=r0 numberOfBytesInBitVector=r0
#         CheckpointStructPtr->WdgM_LocalStatusParmEntryPtr->WdgM_GeneralSEEntryPtr->WdgM_SizeOfInternalCheckpointsBitVector;
#     /*Overwrite the current monitor table with the new data*/
#     for (index = (uint16)0U; index < numberOfBytesInBitVector; index++)
.L768:
	.d2line		882
	rlwinm		r6,r4,0,16,31		# index=r4
	rlwinm		r5,r0,0,16,31		# numberOfBytesInBitVector=r0
	se_cmp		r6,r5
	bc		0,0,.L767	# ge
#     {
#         CheckpointStructPtr->WdgM_LogicalSupervisionMonitorPtr->WdgM_NextPossibleCheckpointBitvectorInternal[index] =
	.d2line		884
	lwz		r5,20(r3)		# CheckpointStructPtr=r3
	rlwinm		r6,r4,0,16,31		# index=r4
	lbzux		r7,r5,r6
	lwz		r5,24(r3)		# CheckpointStructPtr=r3
	lwz		r5,0(r5)
	stbx		r7,r5,r6
#             CheckpointStructPtr->WdgM_NextInternalCheckpointsBitVectorTablePtr[index];
#     }
	.d2line		886
	diab.addi		r6,r4,1		# index=r4
	se_addi		r4,1		# index=r4 index=r4
	b		.L768
.L767:
# }
	.d2line		887
	.d2epilogue_begin
.Llo188:
	lwz		r0,20(r1)		# numberOfBytesInBitVector=r0
	mtspr		lr,r0		# numberOfBytesInBitVector=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1342:
	.type		WdgM_SetNextInternalMask,@function
	.size		WdgM_SetNextInternalMask,.-WdgM_SetNextInternalMask
# Number of nodes = 44

# Allocations for WdgM_SetNextInternalMask
#	?a4		CheckpointStructPtr
#	?a5		index
#	?a6		numberOfBytesInBitVector
# static FUNC(WdgM_LocalStatusType, WDGM_CODE) WdgM_CalculateLocalSupervisionBasedOnOneAlive
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         899,46
#$$ld
.L1351:

#$$bf	WdgM_CalculateLocalSupervisionBasedOnOneAlive,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,cr0,xer,lr
	.d2_cfa_start __cie
WdgM_CalculateLocalSupervisionBasedOnOneAlive:
.Llo191:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# CurrentMode=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# CurrentMode=r0 CurrentMode=r3
	mr		r4,r4		# Idx=r4 Idx=r4
	.d2prologue_end
# (
#     VAR(WdgM_ModeType, AUTOMATIC) CurrentMode,
#     VAR(uint16, AUTOMATIC) Idx
# )
# {
#     WdgM_AliveSupervisionType* AliveSupervisionEntryPtr = (WdgM_AliveSupervisionType*)WDGM_GET_ALIVE_SUPERVISION(CurrentMode, Idx);
	.d2line		905
	rlwinm		r0,r0,0,24,31		# CurrentMode=r0 CurrentMode=r0
.Llo192:
	lis		r3,WdgM_CurrentConfigPtr@ha		# AliveSupervisionEntryPtr=r3
.Llo193:
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)		# AliveSupervisionEntryPtr=r3 AliveSupervisionEntryPtr=r3
	lwz		r3,0(r3)		# AliveSupervisionEntryPtr=r3 AliveSupervisionEntryPtr=r3
	rlwinm		r5,r0,5,0,26		# CurrentMode=r0
	se_slwi		r0,3		# CurrentMode=r0 CurrentMode=r0
	subf		r0,r0,r5		# CurrentMode=r0 CurrentMode=r0
.Llo194:
	lwzx		r3,r3,r0		# AliveSupervisionEntryPtr=r3 AliveSupervisionEntryPtr=r3
	rlwinm		r4,r4,4,12,27		# Idx=r4 Idx=r4
	se_add		r3,r4		# AliveSupervisionEntryPtr=r3 AliveSupervisionEntryPtr=r3 Idx=r4
	mr		r3,r3		# AliveSupervisionEntryPtr=r3 AliveSupervisionEntryPtr=r3
#     WdgM_AliveSupervisionMonitorType* AliveMonitorEntryPtr = AliveSupervisionEntryPtr->WdgM_AliveMonitorEntryPtr;
	.d2line		906
	lwz		r4,4(r3)		# Idx=r4 AliveSupervisionEntryPtr=r3
.Llo197:
	mr		r4,r4		# AliveMonitorEntryPtr=r4 AliveMonitorEntryPtr=r4
#     WdgM_SupervisedEntityMonitorType* CorrespondingSEMonitorEntryPtr =
	.d2line		907
	lwz		r5,0(r3)		# AliveSupervisionEntryPtr=r3
	lwz		r5,4(r5)
	lwz		r6,4(r5)
.Llo216:
	mr		r6,r6		# CorrespondingSEMonitorEntryPtr=r6 CorrespondingSEMonitorEntryPtr=r6
#         AliveSupervisionEntryPtr->WdgM_CorrespondingCheckpointStructPtr->WdgM_LocalStatusParmEntryPtr->WdgM_SupervisedEntityMonitorEntryPtr;
#     /* Increment the number of supervision cycles */
#     AliveMonitorEntryPtr->WdgM_SupervisionCyclesCounter++;
	.d2line		910
	lbz		r5,2(r4)		# AliveMonitorEntryPtr=r4
	se_addi		r5,1
	stb		r5,2(r4)		# AliveMonitorEntryPtr=r4
#     /*
#     * Monitor the checkpoint alive status of every supervision reference cycle
#     * of the respective checkpoint
#     */
#     if (AliveMonitorEntryPtr->WdgM_SupervisionCyclesCounter >= AliveSupervisionEntryPtr->WdgM_SupervisionReferenceCycle)  /**\Requirements{[SWS_WdgM_00098]} */
	.d2line		915
	se_extzb		r5
	lbz		r0,10(r3)		# CurrentMode=r0 AliveSupervisionEntryPtr=r3
.Llo195:
	se_cmp		r5,r0		# CurrentMode=r0
	bc		1,0,.L774	# lt
	.section	.invalid_TEXT,,c
.L1371:
#     {
#         const WdgM_LocalstatModeDepType* const CorrepondingSEEntryPtr =
#             (const WdgM_LocalstatModeDepType* const)AliveSupervisionEntryPtr->WdgM_CorrespondingCheckpointStructPtr->WdgM_LocalStatusParmEntryPtr;
#         WdgM_SupervisedEntityIdType seid = CorrepondingSEEntryPtr->WdgM_SupervisedEntityId;
#         sint16 min_max_range = 0;
	.d2line		920
.Llo196:
	diab.li		r0,0		# min_max_range=r0
	.d2line		917
	lwz		r5,0(r3)		# CorrepondingSEEntryPtr=r5 AliveSupervisionEntryPtr=r3
.Llo218:
	lwz		r5,4(r5)		# CorrepondingSEEntryPtr=r5 CorrepondingSEEntryPtr=r5
	mr		r5,r5		# CorrepondingSEEntryPtr=r5 CorrepondingSEEntryPtr=r5
	.d2line		919
	lhz		r7,14(r5)		# CorrepondingSEEntryPtr=r5
.Llo221:
	mr		r7,r7		# seid=r7 seid=r7
#         /* Calculate the value for min_max_range */
#         min_max_range = (sint16)AliveMonitorEntryPtr->WdgM_AliveCountVar - /**\Requirements{[SWS_WdgM_00074]} */
	.d2line		922
	lha		r0,0(r4)		# min_max_range=r0 AliveMonitorEntryPtr=r4
.Llo223:
	lha		r31,8(r3)		# AliveSupervisionEntryPtr=r3
	subf		r0,r31,r0		# min_max_range=r0 min_max_range=r0
	mr		r0,r0		# min_max_range=r0 min_max_range=r0
#             (sint16)AliveSupervisionEntryPtr->WdgM_ExpectedAliveIndications;
#         /* Check if the value min_max_range below is within the min and max margin */
#         if ((min_max_range >= -(sint16)AliveSupervisionEntryPtr->WdgM_MinMargin) &&  /**\Requirements{[SWS_WdgM_00115]} */
	.d2line		925
	extsh		r30,r0		# min_max_range=r0
	lbz		r31,11(r3)		# AliveSupervisionEntryPtr=r3
	extsh		r31,r31
	neg		r31,r31
	se_cmp		r30,r31
	bc		1,0,.L775	# lt
	lbz		r3,12(r3)		# AliveSupervisionEntryPtr=r3 AliveSupervisionEntryPtr=r3
	e_cmph		cr0,r0,r3		# min_max_range=r0 AliveSupervisionEntryPtr=r3
	bc		1,1,.L775	# gt
#             (min_max_range <= (sint16)AliveSupervisionEntryPtr->WdgM_MaxMargin))
#         {
#             /*
#             * Set the individual status to WDGM_LOCAL_STATUS_OK
#             */
#             CorrespondingSEMonitorEntryPtr->WdgM_AliveSupervisionResult = WDGM_CORRECT;
	.d2line		931
.Llo198:
	diab.li		r0,0		# min_max_range=r0
.Llo224:
	stw		r0,12(r6)		# CorrespondingSEMonitorEntryPtr=r6 min_max_range=r0
	b		.L776
.L775:
#         }
#         else
#         {
#             CorrespondingSEMonitorEntryPtr->WdgM_AliveSupervisionResult = WDGM_INCORRECT;
	.d2line		935
.Llo199:
	diab.li		r0,1		# min_max_range=r0
.Llo225:
	stw		r0,12(r6)		# CorrespondingSEMonitorEntryPtr=r6 min_max_range=r0
.L776:
#         }
#         /* This is a supervision cycle.Set Alive counts to 0 */
#         AliveMonitorEntryPtr->WdgM_AliveCountVar = 0U; /* [DD-WDGM9013-MGC01-V1] */
	.d2line		938
.Llo200:
	diab.li		r0,0		# min_max_range=r0
.Llo226:
	sth		r0,0(r4)		# AliveMonitorEntryPtr=r4 min_max_range=r0
#         AliveMonitorEntryPtr->WdgM_SupervisionCyclesCounter = 0U; /* [DD-WDGM9013-MGC02-V1] */
	.d2line		939
	stb		r0,2(r4)		# AliveMonitorEntryPtr=r4 min_max_range=r0
#         /* If the current alive result is WDGM_CORRECT and Supervised Entity was in Local Supervision Status
#          * WDGM_LOCAL_STATUS_FAILED it needs to decrement the failed reference counter. If the current state
#          * of the counter is 1, then beside the decrementation the Local Supervision Status shall go to
#          * WDGM_LOCAL_STATUS_OK (because it goes to 0). If the current result is WDGM_CORRECT and the Supervised
#          * Entity was in Local Supervision Status WDGM_LOCAL_STATUS_OK no action is necessary. It the Supervised
#          * Entity was in Local Supervision Status WDGM_LOCAL_STATUS_EXPIRED then the corresponding alive supervision
#          * is not even evaluated, because there is no return from the expired state
# 
#          * Else if the current alive result is WDGM_INCORRECT the failed reference counter shall be incremented.
#          * If it does not exceed the configured failed reference tolerance value then the Local Supervision Status
#          * of the supervised entity shall go to WDGM_LOCAL_STATUS_FAILED, if it exceeds it shall go to
#          * WDGM_LOCAL_STATUS_EXPIRED (and affected supervised entity's ID in a non-initialized ram area as a
#          * double-inverted value)
#          */
#         if ((WDGM_CORRECT == CorrespondingSEMonitorEntryPtr->WdgM_AliveSupervisionResult) &&
	.d2line		954
	lwz		r0,12(r6)		# min_max_range=r0 CorrespondingSEMonitorEntryPtr=r6
	se_cmpi		r0,0		# min_max_range=r0
	bc		0,2,.L777	# ne
.Llo209:
	lwz		r0,0(r6)		# min_max_range=r0 CorrespondingSEMonitorEntryPtr=r6
.Llo227:
	se_cmpi		r0,2		# min_max_range=r0
	bc		0,2,.L777	# ne
#             (CorrespondingSEMonitorEntryPtr->WdgM_LocalSupervisionStatus == WDGM_LOCAL_STATUS_FAILED))
#         {
#             if (CorrespondingSEMonitorEntryPtr->WdgM_FailedSupervisionCyclesCounter > 1)
	.d2line		957
.Llo228:
	lbz		r0,17(r6)		# min_max_range=r0 CorrespondingSEMonitorEntryPtr=r6
.Llo229:
	se_cmpi		r0,1		# min_max_range=r0
	bc		0,1,.L778	# le
#             {
#                 CorrespondingSEMonitorEntryPtr->WdgM_FailedSupervisionCyclesCounter--; /** [DD-WDGM300-MGC01-V1] */
	.d2line		959
.Llo219:
	lbz		r3,17(r6)		# AliveSupervisionEntryPtr=r3 CorrespondingSEMonitorEntryPtr=r6
.Llo201:
	diab.addi		r3,r3,255		# AliveSupervisionEntryPtr=r3 AliveSupervisionEntryPtr=r3
	stb		r3,17(r6)		# CorrespondingSEMonitorEntryPtr=r6 AliveSupervisionEntryPtr=r3
	b		.L774
.L778:
#             }
#             /* CorrespondingSEMonitorEntryPtr->WdgM_FailedSupervisionCyclesCounter == 1,
#             it can't be 0 at this stage because in that case the last result variable is correct */
#             else
#             {
#                 CorrespondingSEMonitorEntryPtr->WdgM_FailedSupervisionCyclesCounter--; /** [DD-WDGM205-MGC01-V1] */
	.d2line		965
.Llo202:
	lbz		r3,17(r6)		# AliveSupervisionEntryPtr=r3 CorrespondingSEMonitorEntryPtr=r6
.Llo203:
	diab.addi		r3,r3,255		# AliveSupervisionEntryPtr=r3 AliveSupervisionEntryPtr=r3
	stb		r3,17(r6)		# CorrespondingSEMonitorEntryPtr=r6 AliveSupervisionEntryPtr=r3
#                 /** [DD-WDGM196-MGC01-V1], [DD-WDGM197-MGC01-V1] */
#                 WdgM_SetEntityStatus(
	.d2line		967
	lis		r4,WdgM_SupervisedEntityMonitorTable@ha		# AliveMonitorEntryPtr=r4
.Llo210:
	e_add16i		r4,r4,WdgM_SupervisedEntityMonitorTable@l		# AliveMonitorEntryPtr=r4 AliveMonitorEntryPtr=r4
	subf		r4,r4,r6		# AliveMonitorEntryPtr=r4 AliveMonitorEntryPtr=r4 CorrespondingSEMonitorEntryPtr=r6
	e_lis		r0,26214		# min_max_range=r0
.Llo230:
	e_or2i		r0,26215		# min_max_range=r0
	mulhw		r0,r0,r4		# min_max_range=r0 min_max_range=r0 AliveMonitorEntryPtr=r4
	srawi		r0,r0,3		# min_max_range=r0 min_max_range=r0
	srawi		r4,r4,31		# AliveMonitorEntryPtr=r4 AliveMonitorEntryPtr=r4
	subf		r4,r4,r0		# AliveMonitorEntryPtr=r4 AliveMonitorEntryPtr=r4 min_max_range=r0
.Llo211:
	mr		r3,r7		# seid=r3 seid=r7
.Llo204:
	diab.li		r5,3		# CorrepondingSEEntryPtr=r5
	bl		WdgM_SetEntityStatus
.Llo231:
	b		.L774
.L777:
#                     seid,
#                     (uint16)(CorrespondingSEMonitorEntryPtr - &WdgM_SupervisedEntityMonitorTable[0]),
#                     (WdgM_LocalStatusType)WDGM_LOCAL_STATUS_OK);
#             }
#         }
#         else if (WDGM_INCORRECT == CorrespondingSEMonitorEntryPtr->WdgM_AliveSupervisionResult)
	.d2line		973
.Llo220:
	lwz		r0,12(r6)		# min_max_range=r0 CorrespondingSEMonitorEntryPtr=r6
.Llo232:
	se_cmpi		r0,1		# min_max_range=r0
	bc		0,2,.L774	# ne
#         {
#             CorrespondingSEMonitorEntryPtr->WdgM_FailedSupervisionCyclesCounter++;
	.d2line		975
.Llo233:
	lbz		r3,17(r6)		# AliveSupervisionEntryPtr=r3 CorrespondingSEMonitorEntryPtr=r6
.Llo205:
	se_addi		r3,1		# AliveSupervisionEntryPtr=r3 AliveSupervisionEntryPtr=r3
	stb		r3,17(r6)		# CorrespondingSEMonitorEntryPtr=r6 AliveSupervisionEntryPtr=r3
#             /* The failed ref cycles exceeds the tolerance --> expired state */
#             if (CorrespondingSEMonitorEntryPtr->WdgM_FailedSupervisionCyclesCounter >
	.d2line		977
	se_extzb		r3		# AliveSupervisionEntryPtr=r3
	lbz		r0,16(r5)		# min_max_range=r0 CorrepondingSEEntryPtr=r5
.Llo234:
	se_cmp		r3,r0		# AliveSupervisionEntryPtr=r3 min_max_range=r0
	bc		0,1,.L782	# le
#                 CorrepondingSEEntryPtr->WdgM_FailedSupervisionRefCycleTolerance)
#             {
#                 /** [DD-WDGM202-MGC01-V1], [DD-WDGM206-MGC01-V1],
#                     [DD-WDGM196-MGC01-V1], [DD-WDGM197-MGC01-V1] */
#                 WdgM_SetEntityStatus(
	.d2line		982
.Llo206:
	lis		r4,WdgM_SupervisedEntityMonitorTable@ha		# AliveMonitorEntryPtr=r4
.Llo212:
	e_add16i		r4,r4,WdgM_SupervisedEntityMonitorTable@l		# AliveMonitorEntryPtr=r4 AliveMonitorEntryPtr=r4
	subf		r4,r4,r6		# AliveMonitorEntryPtr=r4 AliveMonitorEntryPtr=r4 CorrespondingSEMonitorEntryPtr=r6
	e_lis		r0,26214		# min_max_range=r0
.Llo235:
	e_or2i		r0,26215		# min_max_range=r0
	mulhw		r0,r0,r4		# min_max_range=r0 min_max_range=r0 AliveMonitorEntryPtr=r4
	srawi		r0,r0,3		# min_max_range=r0 min_max_range=r0
	srawi		r4,r4,31		# AliveMonitorEntryPtr=r4 AliveMonitorEntryPtr=r4
	subf		r4,r4,r0		# AliveMonitorEntryPtr=r4 AliveMonitorEntryPtr=r4 min_max_range=r0
.Llo213:
	mr		r3,r7		# seid=r3 seid=r7
	diab.li		r5,1		# CorrepondingSEEntryPtr=r5
	bl		WdgM_SetEntityStatus
#                     seid,
#                     (uint16)(CorrespondingSEMonitorEntryPtr - &WdgM_SupervisedEntityMonitorTable[0]),
#                     (WdgM_LocalStatusType)WDGM_LOCAL_STATUS_EXPIRED);
#                 WdgM_SeIdLocalStatusExpiredFirst =
	.d2line		986
.Llo236:
	rlwinm		r3,r7,0,16,31		# AliveSupervisionEntryPtr=r3 seid=r7
.Llo207:
	se_slwi		r7,16		# seid=r7 seid=r7
	nor		r3,r3,r3		# AliveSupervisionEntryPtr=r3 AliveSupervisionEntryPtr=r3 AliveSupervisionEntryPtr=r3
	rlwinm		r0,r3,0,16,31		# min_max_range=r0 AliveSupervisionEntryPtr=r3
.Llo237:
	se_add		r7,r0		# seid=r7 seid=r7 min_max_range=r0
	lis		r3,WdgM_SeIdLocalStatusExpiredFirst@ha		# AliveSupervisionEntryPtr=r3
	e_add16i		r3,r3,WdgM_SeIdLocalStatusExpiredFirst@l		# AliveSupervisionEntryPtr=r3 AliveSupervisionEntryPtr=r3
	stw		r7,0(r3)		# AliveSupervisionEntryPtr=r3 seid=r7
	b		.L774
.L782:
#                     (((uint32)seid << WDGM_SHIFT_16) & WDGM_FIRST_EXPIRED_SEID_MASK) +
#                     (~(uint32)seid & WDGM_INVERTED_SEID_MASK);  /** [DD-WDGM351-MGC01-V1] */
#             }
#             else if (1 == CorrespondingSEMonitorEntryPtr->WdgM_FailedSupervisionCyclesCounter)
	.d2line		990
.Llo208:
	lbz		r0,17(r6)		# min_max_range=r0 CorrespondingSEMonitorEntryPtr=r6
.Llo238:
	se_cmpi		r0,1		# min_max_range=r0
	bc		0,2,.L774	# ne
#             {
#                 /**[DD-WDGM203-MGC01-V1], [DD-WDGM204-MGC01-V1],
#                    [DD-WDGM300-MGC01-V1], [DD-WDGM196-MGC01-V1], [DD-WDGM197-MGC01-V1] */
#                 WdgM_SetEntityStatus(
	.d2line		994
.Llo239:
	lis		r4,WdgM_SupervisedEntityMonitorTable@ha		# AliveMonitorEntryPtr=r4
.Llo214:
	e_add16i		r4,r4,WdgM_SupervisedEntityMonitorTable@l		# AliveMonitorEntryPtr=r4 AliveMonitorEntryPtr=r4
	subf		r4,r4,r6		# AliveMonitorEntryPtr=r4 AliveMonitorEntryPtr=r4 CorrespondingSEMonitorEntryPtr=r6
	e_lis		r0,26214		# min_max_range=r0
.Llo240:
	e_or2i		r0,26215		# min_max_range=r0
	mulhw		r0,r0,r4		# min_max_range=r0 min_max_range=r0 AliveMonitorEntryPtr=r4
	srawi		r0,r0,3		# min_max_range=r0 min_max_range=r0
	srawi		r4,r4,31		# AliveMonitorEntryPtr=r4 AliveMonitorEntryPtr=r4
	subf		r4,r4,r0		# AliveMonitorEntryPtr=r4 AliveMonitorEntryPtr=r4 min_max_range=r0
.Llo215:
	mr		r3,r7		# seid=r3 seid=r7
	diab.li		r5,2		# CorrepondingSEEntryPtr=r5
	bl		WdgM_SetEntityStatus
	.section	.invalid_TEXT,,c
.L1372:
.L774:
#                     seid,
#                     (uint16)(CorrespondingSEMonitorEntryPtr - &WdgM_SupervisedEntityMonitorTable[0]),
#                     (WdgM_LocalStatusType)WDGM_LOCAL_STATUS_FAILED);
#               #if (STD_ON == WDGM_INTERACTION_WITH_BSWM)
#                 if (NULL_PTR != CorrepondingSEEntryPtr->WdgM_GeneralSEEntryPtr->WdgM_OsAppPtr)
#                 {
#                     /*[DD-WDGM225-MGC01-V1]*/
#                     BswM_WdgM_RequestPartitionReset(*(CorrepondingSEEntryPtr->WdgM_GeneralSEEntryPtr->WdgM_OsAppPtr));
#                 }
#               #endif
#             }
#             else
#             {
#                 /* 1 < CorrespondingSEMonitorEntryPtr->WdgM_FailedSupervisionCyclesCounter <=
#                  * CorrepondingSEEntryPtr->WdgM_FailedSupervisionRefCycleTolerance -->
#                  * Previously was WDGM_LOCAL_STATUS_FAILED as well, no action to be taken*/
#             }
#         }
#         else
#         {
#             /* The  CorrespondingSEMonitorEntryPtr->WdgM_AliveSupervisionResult is WDGM_CORRECT
#             and the last status was  WDGM_LOCAL_STATUS_OK --> Nothing to do */
#             /** [DD-WDGM201-MGC01-V1] */
#         }
#     }
#     /*Return with the updated supervision status of the supervised entity*/
#     return CorrespondingSEMonitorEntryPtr->WdgM_LocalSupervisionStatus;
	.d2line		1021
.Llo222:
	lwz		r3,0(r6)		# AliveSupervisionEntryPtr=r3 CorrespondingSEMonitorEntryPtr=r6
# }
	.d2line		1022
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# CurrentMode=r0
	mtspr		lr,r0		# CurrentMode=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo217:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1352:
	.type		WdgM_CalculateLocalSupervisionBasedOnOneAlive,@function
	.size		WdgM_CalculateLocalSupervisionBasedOnOneAlive,.-WdgM_CalculateLocalSupervisionBasedOnOneAlive
# Number of nodes = 239

# Allocations for WdgM_CalculateLocalSupervisionBasedOnOneAlive
#	?a4		CurrentMode
#	?a5		Idx
#	?a6		$$122
#	?a7		$$121
#	?a8		$$120
#	?a9		$$119
#	?a10		AliveSupervisionEntryPtr
#	?a11		AliveMonitorEntryPtr
#	?a12		CorrespondingSEMonitorEntryPtr
#	?a13		CorrepondingSEEntryPtr
#	?a14		seid
#	?a15		min_max_range
# static FUNC(WdgM_GlobalStatusType, WDGM_CODE) WdgM_CalculateGlobalStatus(void)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1029,47
#$$ld
.L1385:

#$$bf	WdgM_CalculateGlobalStatus,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r29,r30,r31,cr0,xer,lr
	.d2_cfa_start __cie
WdgM_CalculateGlobalStatus:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     WdgM_GlobalStatusType calculatedGlobalStatus = WdgM_GlobalStatus;
	.d2line		1031
	lis		r3,WdgM_GlobalStatus@ha
	lwz		r31,WdgM_GlobalStatus@l(r3)
.Llo241:
	mr		r31,r31		# calculatedGlobalStatus=r31 calculatedGlobalStatus=r31
# 
#     /* Check if the previously calculated global status was WDGM_GLOBAL_STATUS_STOPPED */
#     if ((WdgM_GlobalStatusType)WDGM_GLOBAL_STATUS_STOPPED != WdgM_GlobalStatus) /** [DD-WDGM221-MGC01-V1] */
	.d2line		1034
	se_cmpi		r31,4
	bc		1,2,.L794	# eq
#     {
#         calculatedGlobalStatus = WDGM_GLOBAL_STATUS_OK;
	.d2line		1036
	diab.li		r31,3		# calculatedGlobalStatus=r31
# 
#         if (WDGM_GLOBAL_STATUS_EXPIRED != WdgM_GlobalStatus)
	.d2line		1038
	lis		r3,WdgM_GlobalStatus@ha
	lwz		r0,WdgM_GlobalStatus@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L795	# eq
	.section	.invalid_TEXT,,c
.L1390:
#         {
#             boolean isEntityWithLocalStatusExpired = FALSE;
	.d2line		1040
	diab.li		r30,0		# isEntityWithLocalStatusExpired=r30
#             uint16 idx;
#             /* To manage the Supervision entity_status for each entity in the configuration
#             Table based on deadline and logical supervision */
#             for (idx = (uint16)0U; idx < WDGM_GET_LOCAL_STATUS_PARM_COUNT(WdgM_CurrentMode); idx++)
	.d2line		1044
.Llo247:
	diab.li		r3,0
.L796:
.Llo252:
	lis		r4,WdgM_CurrentMode@ha		# ModeDepSE=r4
.Llo260:
	lbz		r0,WdgM_CurrentMode@l(r4)		# ModeDepSE=r4
	rlwinm		r5,r3,0,16,31		# idx=r3
	lis		r4,WdgM_CurrentConfigPtr@ha		# ModeDepSE=r4
	lwz		r4,WdgM_CurrentConfigPtr@l(r4)		# ModeDepSE=r4 ModeDepSE=r4
	lwz		r4,0(r4)		# ModeDepSE=r4 ModeDepSE=r4
	rlwinm		r6,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r6
	se_add		r4,r0		# ModeDepSE=r4 ModeDepSE=r4
	lhz		r0,20(r4)		# ModeDepSE=r4
	se_cmp		r5,r0
	bc		0,0,.L800	# ge
	.section	.invalid_TEXT,,c
.L1398:
#             {
#                 WdgM_LocalstatModeDepType* ModeDepSE =
	.d2line		1046
.Llo261:
	lis		r4,WdgM_CurrentMode@ha		# ModeDepSE=r4
.Llo262:
	lbz		r0,WdgM_CurrentMode@l(r4)		# ModeDepSE=r4
	lis		r4,WdgM_CurrentConfigPtr@ha		# ModeDepSE=r4
	lwz		r4,WdgM_CurrentConfigPtr@l(r4)		# ModeDepSE=r4 ModeDepSE=r4
	lwz		r4,0(r4)		# ModeDepSE=r4 ModeDepSE=r4
	rlwinm		r5,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r5
	se_add		r4,r0		# ModeDepSE=r4 ModeDepSE=r4
	lwz		r4,8(r4)		# ModeDepSE=r4 ModeDepSE=r4
	rlwinm		r5,r3,0,16,31		# idx=r3
	e_mulli		r5,r5,20
	se_add		r4,r5		# ModeDepSE=r4 ModeDepSE=r4
	mr		r4,r4		# ModeDepSE=r4 ModeDepSE=r4
#                     (WdgM_LocalstatModeDepType*)WDGM_GET_LOCAL_STATUS_PARAMETER(WdgM_CurrentMode, idx);
#                 if ((ModeDepSE->WdgM_SupervisedEntityMonitorEntryPtr->WdgM_DeadlineSupervisionResult == WDGM_INCORRECT) ||
	.d2line		1048
	lwz		r5,4(r4)		# ModeDepSE=r4
	lwz		r0,8(r5)
	se_cmpi		r0,1
	bc		1,2,.L813	# eq
	lwz		r5,4(r4)		# ModeDepSE=r4
	lwz		r0,4(r5)
	se_cmpi		r0,1
	bc		0,2,.L799	# ne
.L813:
	.section	.invalid_TEXT,,c
.L1404:
#                     (ModeDepSE->WdgM_SupervisedEntityMonitorEntryPtr->WdgM_LogicalSupervisionResult == WDGM_INCORRECT))
#                 {
#                     WdgM_SupervisedEntityIdType seID = ModeDepSE->WdgM_SupervisedEntityId;
	.d2line		1051
.Llo242:
	lhz		r6,14(r4)		# seID=r6 ModeDepSE=r4
.Llo267:
	mr		r6,r6		# seID=r6 seID=r6
#                     calculatedGlobalStatus = WDGM_GLOBAL_STATUS_EXPIRED;
	.d2line		1052
	diab.li		r31,1		# calculatedGlobalStatus=r31
#                     WdgM_ExpiredSupervisionCyclesCounter++;
	.d2line		1053
.Llo243:
	lis		r3,WdgM_ExpiredSupervisionCyclesCounter@ha		# idx=r3
.Llo253:
	lbz		r3,WdgM_ExpiredSupervisionCyclesCounter@l(r3)		# idx=r3 idx=r3
	diab.addi		r0,r3,1		# idx=r3
	lis		r3,WdgM_ExpiredSupervisionCyclesCounter@ha		# idx=r3
	e_add16i		r3,r3,WdgM_ExpiredSupervisionCyclesCounter@l		# idx=r3 idx=r3
	stb		r0,0(r3)		# idx=r3
#                     /** [DD-WDGM202-MGC02-V1], [DD-WDGM202-MGC03-V1], [DD-WDGM206-MGC02-V1], [DD-WDGM206-MGC03-V1],
#                         [DD-WDGM196-MGC01-V1], [DD-WDGM197-MGC01-V1] */
#                     WdgM_SetEntityStatus(
	.d2line		1056
	lwz		r0,4(r4)		# ModeDepSE=r4
	lis		r4,WdgM_SupervisedEntityMonitorTable@ha		# ModeDepSE=r4
	e_add16i		r4,r4,WdgM_SupervisedEntityMonitorTable@l		# ModeDepSE=r4 ModeDepSE=r4
	subf		r4,r4,r0		# ModeDepSE=r4 ModeDepSE=r4
	e_lis		r0,26214
	e_or2i		r0,26215
	mulhw		r0,r0,r4		# ModeDepSE=r4
	srawi		r0,r0,3
	srawi		r4,r4,31		# ModeDepSE=r4 ModeDepSE=r4
	subf		r4,r4,r0		# ModeDepSE=r4 ModeDepSE=r4
.Llo263:
	mr		r3,r6		# seID=r3 seID=r6
.Llo254:
	diab.li		r5,1
	bl		WdgM_SetEntityStatus
#                         seID,
#                         (uint16)(ModeDepSE->WdgM_SupervisedEntityMonitorEntryPtr - &WdgM_SupervisedEntityMonitorTable[0]),
#                         (WdgM_LocalStatusType)WDGM_LOCAL_STATUS_EXPIRED);
#                     WdgM_SeIdLocalStatusExpiredFirst =
	.d2line		1060
	rlwinm		r3,r6,0,16,31		# idx=r3 seID=r6
.Llo255:
	se_slwi		r6,16		# seID=r6 seID=r6
	nor		r3,r3,r3		# idx=r3 idx=r3 idx=r3
	rlwinm		r0,r3,0,16,31		# idx=r3
	se_add		r6,r0		# seID=r6 seID=r6
	lis		r3,WdgM_SeIdLocalStatusExpiredFirst@ha		# idx=r3
	e_add16i		r3,r3,WdgM_SeIdLocalStatusExpiredFirst@l		# idx=r3 idx=r3
	stw		r6,0(r3)		# idx=r3 seID=r6
#                         (((uint32)seID << WDGM_SHIFT_16) & WDGM_FIRST_EXPIRED_SEID_MASK) +
#                         (~(uint32)seID & WDGM_INVERTED_SEID_MASK);
#                     /* Break out if we find that the global status is changed to Expired */
#                     isEntityWithLocalStatusExpired = TRUE;
	.d2line		1064
	diab.li		r30,1		# isEntityWithLocalStatusExpired=r30
.Llo248:
	b		.L800
	.section	.invalid_TEXT,,c
.L1405:
.L799:
	.section	.invalid_TEXT,,c
.L1399:
#                     break;
#                 }
#             }
	.d2line		1067
.Llo268:
	diab.addi		r5,r3,1		# idx=r3
	se_addi		r3,1		# idx=r3 idx=r3
	b		.L796
.L800:
#             /* To manage the Supervision entity_status for each entity in the configuration Table based on
#             Alive supervisions (just in case if all the active supervised entities' logical and deadline
#             supervision status was CORRECT)*/
#             /** [DD-WDGM098-MGC01-V1], [DD-WDGM083-MGC01-V1] */
#             for (idx = (uint16)0U; idx < WDGM_GET_ALIVE_SUPERVISIONS_COUNT(WdgM_CurrentMode); idx++)
	.d2line		1072
	diab.li		r29,0		# idx=r29
.L801:
.Llo256:
	lis		r3,WdgM_CurrentMode@ha		# idx=r3
.Llo257:
	lbz		r0,WdgM_CurrentMode@l(r3)		# idx=r3
	rlwinm		r4,r29,0,16,31		# ModeDepSE=r4 idx=r29
.Llo264:
	lis		r3,WdgM_CurrentConfigPtr@ha		# idx=r3
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)		# idx=r3 idx=r3
	lwz		r3,0(r3)		# idx=r3 idx=r3
	rlwinm		r5,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r5
	se_add		r3,r0		# idx=r3 idx=r3
	lhz		r0,16(r3)		# idx=r3
	se_cmp		r4,r0		# ModeDepSE=r4
	bc		0,0,.L811	# ge
#             {
#                 if (FALSE == isEntityWithLocalStatusExpired)
	.d2line		1074
.Llo265:
	rlwinm		r3,r30,0,24,31		# idx=r3 isEntityWithLocalStatusExpired=r30
	se_cmpi		r3,0		# idx=r3
	bc		0,2,.L811	# ne
	.section	.invalid_TEXT,,c
.L1410:
#                 {
#                     WdgM_LocalStatusType localSupervisionStatus =
	.d2line		1076
	lis		r3,WdgM_CurrentMode@ha		# idx=r3
	lbz		r3,WdgM_CurrentMode@l(r3)		# idx=r3 idx=r3
	mr		r4,r29		# idx=r4 idx=r29
	bl		WdgM_CalculateLocalSupervisionBasedOnOneAlive
.Llo269:
	mr		r3,r3		# localSupervisionStatus=r3 localSupervisionStatus=r3
#                         WdgM_CalculateLocalSupervisionBasedOnOneAlive(WdgM_CurrentMode, idx);
#                     /** [DD-WDGM076-MGC01-V1] */
#                     if ((WdgM_LocalStatusType)WDGM_LOCAL_STATUS_EXPIRED == localSupervisionStatus)
	.d2line		1079
	se_cmpi		r3,1		# localSupervisionStatus=r3
	bc		0,2,.L805	# ne
#                     {
#                         calculatedGlobalStatus = WDGM_GLOBAL_STATUS_EXPIRED; /**\Requirements{[SWS_WdgM_00215] [SWS_WdgM_00077]} */
	.d2line		1081
.Llo270:
	diab.li		r31,1		# calculatedGlobalStatus=r31
#                         WdgM_ExpiredSupervisionCyclesCounter++;
	.d2line		1082
	lis		r3,WdgM_ExpiredSupervisionCyclesCounter@ha		# localSupervisionStatus=r3
.Llo271:
	lbz		r3,WdgM_ExpiredSupervisionCyclesCounter@l(r3)		# localSupervisionStatus=r3 localSupervisionStatus=r3
	diab.addi		r0,r3,1		# localSupervisionStatus=r3
	lis		r3,WdgM_ExpiredSupervisionCyclesCounter@ha		# localSupervisionStatus=r3
	e_add16i		r3,r3,WdgM_ExpiredSupervisionCyclesCounter@l		# localSupervisionStatus=r3 localSupervisionStatus=r3
	stb		r0,0(r3)		# localSupervisionStatus=r3
#                         /* Break out if we find that the global status is changed to Expired */
#                         isEntityWithLocalStatusExpired = TRUE;
	.d2line		1084
	diab.li		r30,1		# isEntityWithLocalStatusExpired=r30
	b		.L809
.L805:
#                     }
#                     else
#                     {
#                         /* Local supervision status can be only OK or Failed at this point. */
#                         if ((WDGM_LOCAL_STATUS_OK == localSupervisionStatus) &&
	.d2line		1089
	se_cmpi		r3,3		# localSupervisionStatus=r3
	bc		0,2,.L807	# ne
.Llo272:
	se_cmpi		r31,3		# calculatedGlobalStatus=r31
	bc		0,2,.L807	# ne
#                             (WDGM_GLOBAL_STATUS_OK == calculatedGlobalStatus))
#                         {
#                             /* The calculatedGlobalStatus can be only WDGM_GLOBAL_STATUS_OK if it was not
#                              * WDGM_GLOBAL_STATUS_FAILED previously (So it was WDGM_GLOBAL_STATUS_OK)
#                              */
#                             calculatedGlobalStatus = WDGM_GLOBAL_STATUS_OK; /** [DD-WDGM078-MGC01-V1], [DD-WDGM218-MGC01-V1] */
	.d2line		1095
.Llo244:
	diab.li		r31,3		# calculatedGlobalStatus=r31
.Llo245:
	b		.L809
.L807:
#                         }
#                         else
#                         {
#                             calculatedGlobalStatus = WDGM_GLOBAL_STATUS_FAILED; /** [DD-WDGM076-MGC01-V1], [DD-WDGM217-MGC01-V1] */
	.d2line		1099
	diab.li		r31,2		# calculatedGlobalStatus=r31
	.section	.invalid_TEXT,,c
.L1411:
.L809:
#                         }
#                     }
#                 }
#                 else
#                 {
#                     /* isEntityWithLocalStatusExpired is TRUE, so there is a supervised
#                     entity with expired local status state */
#                     break;
#                 }
#             }
	.d2line		1109
	diab.addi		r4,r29,1		# idx=r4 idx=r29
	se_addi		r29,1		# idx=r29 idx=r29
	b		.L801
	.section	.invalid_TEXT,,c
.L1391:
.L795:
#         }
#         else  /* The previously calculated global status was WDGM_GLOBAL_STATUS_EXPIRED. */
#         {
#             WdgM_ExpiredSupervisionCyclesCounter++;
	.d2line		1113
.Llo249:
	lis		r3,WdgM_ExpiredSupervisionCyclesCounter@ha
	lbz		r3,WdgM_ExpiredSupervisionCyclesCounter@l(r3)
	diab.addi		r0,r3,1
	lis		r3,WdgM_ExpiredSupervisionCyclesCounter@ha
	e_add16i		r3,r3,WdgM_ExpiredSupervisionCyclesCounter@l
	stb		r0,0(r3)
#            /* If calculatedGlobalStatus is not Expired and global status is expired. Sync them */
#            calculatedGlobalStatus = WDGM_GLOBAL_STATUS_EXPIRED;
	.d2line		1115
	diab.li		r31,1		# calculatedGlobalStatus=r31
.L811:
#         }
# 
#         /* Check whether the already expired cycles exceed the tolerance configured in the current mode */
#         /** [DD-WDGM077-MGC01-V1], [DD-WDGM219-MGC01-V1] */
#         if (WdgM_ExpiredSupervisionCyclesCounter > WDGM_GET_EXPIRED_SUPERVISION_CYCLE_TOLERANCE(WdgM_CurrentMode))
	.d2line		1120
.Llo250:
	lis		r3,WdgM_CurrentMode@ha		# idx=r3
	lbz		r0,WdgM_CurrentMode@l(r3)		# idx=r3
	lis		r3,WdgM_ExpiredSupervisionCyclesCounter@ha		# idx=r3
	lbz		r4,WdgM_ExpiredSupervisionCyclesCounter@l(r3)		# ModeDepSE=r4 idx=r3
.Llo266:
	lis		r3,WdgM_CurrentConfigPtr@ha		# idx=r3
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)		# idx=r3 idx=r3
	lwz		r5,0(r3)		# idx=r3
	rlwinm		r3,r0,5,0,26		# idx=r3
	se_slwi		r0,3
	subf		r0,r0,r3		# idx=r3
	se_add		r5,r0
	lbz		r0,22(r5)
	se_cmp		r4,r0		# ModeDepSE=r4
	bc		0,1,.L794	# le
#         {
#             /** [DD-WDGM216-MGC01-V1], [DD-WDGM117-MGC01-V1], [DD-WDGM220-MGC01-V1] */
#             calculatedGlobalStatus = (WdgM_GlobalStatusType) WDGM_GLOBAL_STATUS_STOPPED;
	.d2line		1123
.Llo251:
	diab.li		r31,4		# calculatedGlobalStatus=r31
#             WdgM_ExpiredSupervisionCyclesCounter = 0U;
	.d2line		1124
	diab.li		r0,0
	lis		r3,WdgM_ExpiredSupervisionCyclesCounter@ha		# idx=r3
.Llo258:
	e_add16i		r3,r3,WdgM_ExpiredSupervisionCyclesCounter@l		# idx=r3 idx=r3
	stb		r0,0(r3)		# idx=r3
.L794:
#         }
#     }
#     return calculatedGlobalStatus;
	.d2line		1127
.Llo259:
	mr		r3,r31		# calculatedGlobalStatus=r3 calculatedGlobalStatus=r31
# }
	.d2line		1128
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo246:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1386:
	.type		WdgM_CalculateGlobalStatus,@function
	.size		WdgM_CalculateGlobalStatus,.-WdgM_CalculateGlobalStatus
# Number of nodes = 204

# Allocations for WdgM_CalculateGlobalStatus
#	?a4		$$127
#	?a5		$$126
#	?a6		$$125
#	?a7		$$124
#	?a8		$$123
#	?a9		calculatedGlobalStatus
#	?a10		isEntityWithLocalStatusExpired
#	?a11		idx
#	?a12		ModeDepSE
#	?a13		seID
#	?a14		localSupervisionStatus
# static FUNC(void, WDGM_CODE) WdgM_InitSupervisedEntity
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1134,30
#$$ld
.L1418:

#$$bf	WdgM_InitSupervisedEntity,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,cr0,lr
	.d2_cfa_start __cie
WdgM_InitSupervisedEntity:
.Llo273:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo280:
	stw		r0,20(r1)		# status=r0
	.d2_cfa_offset    108,-1
	mr		r6,r4		# Index=r6 Index=r4
	mr		r5,r5		# ActivationStatus=r5 ActivationStatus=r5
	.d2prologue_end
# (
#     VAR(WdgM_SupervisedEntityIdType, AUTOMATIC) SEID,
#     VAR(uint16, AUTOMATIC) Index,
#     VAR(WdgM_ActivationStatusType, AUTOMATIC) ActivationStatus
# )
# {
#     WdgM_LocalStatusType status;
#     /* Reset the parameters of the supervised entity before while activating it again */
#     if (WDGM_SUPERVISED_ENTITY_ACTVATED == ActivationStatus)
	.d2line		1143
	se_cmpi		r5,1		# ActivationStatus=r5
#     {
#         status = WDGM_LOCAL_STATUS_OK;/** [DD-WDGM268-MGC01-V1] */
	.d2line		1145
	diab.li		r3,3		# status=r3
	isel		r3,r3,r0,2		# status=r3 status=r3 status=r0
.L826:
#     }
#     else
#     {
#         status = WDGM_LOCAL_STATUS_DEACTIVATED;/** [DD-WDGM269-MGC01-V1] */
	.d2line		1149
.Llo274:
	diab.li		r0,0		# status=r0
.Llo275:
	isel		r3,r3,r0,2		# status=r3 status=r3 status=r0
.L827:
#     }
# 
#     WdgM_SupervisedEntityMonitorTable[Index].WdgM_FailedSupervisionCyclesCounter = 0U;
	.d2line		1152
.Llo276:
	diab.li		r4,0
	lis		r5,(WdgM_SupervisedEntityMonitorTable+17)@ha		# ActivationStatus=r5
.Llo279:
	e_add16i		r5,r5,(WdgM_SupervisedEntityMonitorTable+17)@l		# ActivationStatus=r5 ActivationStatus=r5
.Llo277:
	rlwinm		r6,r6,0,16,31		# Index=r6 Index=r6
	e_mulli		r8,r6,20		# Index=r6
	stbux		r4,r5,r8		# ActivationStatus=r5
#     WdgM_SupervisedEntityMonitorTable[Index].WdgM_AliveSupervisionResult = WDGM_CORRECT;
	.d2line		1153
	lis		r5,(WdgM_SupervisedEntityMonitorTable+12)@ha		# ActivationStatus=r5
	e_add16i		r5,r5,(WdgM_SupervisedEntityMonitorTable+12)@l		# ActivationStatus=r5 ActivationStatus=r5
	stwx		r4,r5,r8		# ActivationStatus=r5
#     WdgM_SupervisedEntityMonitorTable[Index].WdgM_DeadlineSupervisionResult = WDGM_CORRECT;
	.d2line		1154
	lis		r5,(WdgM_SupervisedEntityMonitorTable+8)@ha		# ActivationStatus=r5
	e_add16i		r5,r5,(WdgM_SupervisedEntityMonitorTable+8)@l		# ActivationStatus=r5 ActivationStatus=r5
	stwx		r4,r5,r8		# ActivationStatus=r5
#     WdgM_SupervisedEntityMonitorTable[Index].WdgM_LogicalSupervisionResult = WDGM_CORRECT;
	.d2line		1155
	lis		r5,(WdgM_SupervisedEntityMonitorTable+4)@ha		# ActivationStatus=r5
	e_add16i		r5,r5,(WdgM_SupervisedEntityMonitorTable+4)@l		# ActivationStatus=r5 ActivationStatus=r5
	stwx		r4,r5,r8		# ActivationStatus=r5
#     WdgM_LogicalsupervisionMonitorTable[Index].WdgM_ActivityFlag = FALSE; /*[DD-WDGM296-MGC01-V1]*/
	.d2line		1156
	rlwinm		r7,r6,2,0,29		# Index=r6
	lis		r5,(WdgM_LogicalsupervisionMonitorTable+10)@ha		# ActivationStatus=r5
	e_add16i		r5,r5,(WdgM_LogicalsupervisionMonitorTable+10)@l		# ActivationStatus=r5 ActivationStatus=r5
	se_slwi		r6,4		# Index=r6 Index=r6
	subf		r7,r7,r6		# Index=r6
	stbx		r4,r5,r7		# ActivationStatus=r5
# 
#     WdgM_SupervisedEntityMonitorTable[Index].WdgM_LocalSupervisionStatus = status;
	.d2line		1158
	lis		r4,WdgM_SupervisedEntityMonitorTable@ha
	e_add16i		r4,r4,WdgM_SupervisedEntityMonitorTable@l
	stwx		r3,r4,r8		# status=r3
# 
#     WdgM_SupervisedEntityMonitorTable[Index].WdgM_StatusChanged = TRUE;
	.d2line		1160
	diab.li		r3,1		# status=r3
	lis		r4,(WdgM_SupervisedEntityMonitorTable+16)@ha
	e_add16i		r4,r4,(WdgM_SupervisedEntityMonitorTable+16)@l
	stbx		r3,r4,r8		# status=r3
# }
	.d2line		1161
	.d2epilogue_begin
	lwz		r0,20(r1)		# status=r0
	mtspr		lr,r0		# status=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo278:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1419:
	.type		WdgM_InitSupervisedEntity,@function
	.size		WdgM_InitSupervisedEntity,.-WdgM_InitSupervisedEntity
# Number of nodes = 92

# Allocations for WdgM_InitSupervisedEntity
#	not allocated	SEID
#	?a4		Index
#	?a5		ActivationStatus
#	?a6		$$128
#	?a7		status
# static FUNC(void, WDGM_CODE) WdgM_CheckLogicalSupervisedEntities
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1172,30
#$$ld
.L1429:

#$$bf	WdgM_CheckLogicalSupervisedEntities,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,cr0,xer,lr
	.d2_cfa_start __cie
WdgM_CheckLogicalSupervisedEntities:
.Llo281:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CheckpointStructPtr=r31 CheckpointStructPtr=r3
	.d2prologue_end
# (
#     P2CONST(WdgM_CheckpointType, AUTOMATIC, WDGM_APPL_CONST) CheckpointStructPtr
# )
# {
#     boolean isCorrect = FALSE;
	.d2line		1177
.Llo282:
	diab.li		r30,0		# isCorrect=r30
#     uint16 ownIndexInCheckpointTable = CheckpointStructPtr -
	.d2line		1178
.Llo283:
	lwz		r3,4(r31)		# CheckpointStructPtr=r31
	lwz		r3,0(r3)
	subf		r3,r3,r31		# CheckpointStructPtr=r31
	e_lis		r0,26214
	e_or2i		r0,26215
	mulhw		r0,r0,r3
	srawi		r0,r0,4
	srawi		r3,r3,31
	subf		r3,r3,r0
.Llo300:
	mr		r6,r3		# ownIndexInCheckpointTable=r6 ownIndexInCheckpointTable=r3
#         &(CheckpointStructPtr->WdgM_LocalStatusParmEntryPtr->WdgM_CheckpointTablePtr[0]);
#     /*Store the checkpoint to the corresponding graph's last reported checkpoint*/
#     /** [DD-WDGM246-MGC01-V1]*/
#     CheckpointStructPtr->WdgM_LogicalSupervisionMonitorPtr->WdgM_MostRecentlyReportedCP =
	.d2line		1182
	lhz		r0,34(r31)		# CheckpointStructPtr=r31
	lwz		r3,24(r31)		# CheckpointStructPtr=r31
.Llo301:
	sth		r0,8(r3)
#         CheckpointStructPtr->WdgM_CheckpointID;
#     /*Check whether the corresponding graph is an active graph or not*/
#     if (CheckpointStructPtr->WdgM_LogicalSupervisionMonitorPtr->WdgM_ActivityFlag == TRUE) /**\Requirements{[SWS_WdgM_00274]} */
	.d2line		1185
	lwz		r3,24(r31)		# CheckpointStructPtr=r31
	lbz		r0,10(r3)
	se_cmpi		r0,1
	bc		0,2,.L831	# ne
#     {
#         /*Check if it's a valid checkpoint for the graph based on possible the internal transitions of the graph*/
#         if (WdgM_TestIndexInInternalBitVector(CheckpointStructPtr, ownIndexInCheckpointTable) == TRUE)
	.d2line		1188
.Llo302:
	mr		r3,r31		# CheckpointStructPtr=r3 CheckpointStructPtr=r31
	mr		r4,r6		# ownIndexInCheckpointTable=r4 ownIndexInCheckpointTable=r6
	bl		WdgM_TestIndexInInternalBitVector
	rlwinm		r3,r3,0,24,31		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	se_cmpi		r3,1		# CheckpointStructPtr=r3
	bc		0,2,.L837	# ne
#         {
#             if (CheckpointStructPtr->WdgM_IsCpWaitingForExternalConnection == TRUE)
	.d2line		1190
	lbz		r0,38(r31)		# CheckpointStructPtr=r31
	se_cmpi		r0,1
	bc		0,2,.L833	# ne
#             {
#                 if (WdgM_TestIndexInExternalBitVector(CheckpointStructPtr, ownIndexInCheckpointTable) == TRUE)
	.d2line		1192
	mr		r3,r31		# CheckpointStructPtr=r3 CheckpointStructPtr=r31
	mr		r4,r6		# ownIndexInCheckpointTable=r4 ownIndexInCheckpointTable=r6
	bl		WdgM_TestIndexInExternalBitVector
.Llo303:
	rlwinm		r3,r3,0,24,31		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	se_cmpi		r3,1		# CheckpointStructPtr=r3
#                 {
#                     /*Logical order CORRECT*/
#                     isCorrect = TRUE; /* [DD-WDGM274-MGC02-V1] [DD-WDGM252-MGC02-V1] */
	.d2line		1195
	diab.li		r3,1		# CheckpointStructPtr=r3
	isel		r3,r3,r30,2		# isCorrect=r3 CheckpointStructPtr=r3 isCorrect=r30
.L834:
#                 }
#                 else
#                 {
#                     /*Logical order is INCORRECT*/
#                     isCorrect = FALSE; /* [DD-WDGM274-MGC02-V1] [DD-WDGM252-MGC02-V1] */
	.d2line		1200
.Llo287:
	diab.li		r0,0
.Llo288:
	isel		r30,r3,r0,2		# isCorrect=r30 isCorrect=r3
	b		.L837
.L833:
#                 }
#             }
#             else
#             {
#                 /*Logical order CORRECT*/
#                 isCorrect = TRUE;
	.d2line		1206
.Llo289:
	diab.li		r30,1		# isCorrect=r30
.Llo290:
	b		.L837
.L831:
#             }
#         }
#     }
#     else /* the graph is not activated [DD-WDGM274-MGC01-V1] */
#     {
#         /*It is a possible start point of the graph*/
#         if (CheckpointStructPtr->WdgM_IsStartCpByInternal) /** [DD-WDGM274-MGC01-V1] */
	.d2line		1213
	lbz		r0,36(r31)		# CheckpointStructPtr=r31
	se_cmpi		r0,0
	bc		1,2,.L838	# eq
#         {
#             if (CheckpointStructPtr->WdgM_IsCpWaitingForExternalConnection == TRUE)
	.d2line		1215
.Llo291:
	lbz		r0,38(r31)		# CheckpointStructPtr=r31
	se_cmpi		r0,1
	bc		0,2,.L839	# ne
#             {
#                 if (WdgM_TestIndexInExternalBitVector(CheckpointStructPtr, ownIndexInCheckpointTable) == TRUE)
	.d2line		1217
	mr		r3,r31		# CheckpointStructPtr=r3 CheckpointStructPtr=r31
	mr		r4,r6		# ownIndexInCheckpointTable=r4 ownIndexInCheckpointTable=r6
	bl		WdgM_TestIndexInExternalBitVector
.Llo304:
	rlwinm		r3,r3,0,24,31		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	se_cmpi		r3,1		# CheckpointStructPtr=r3
	bc		0,2,.L840	# ne
#                 {
#                     /*Not activated graph but start point --> CORRECT*/
#                     /*It's a start point thus set the activity flag to TRUE*/
#                     /** [DD-WDGM332-MGC01-V1], [DD-WDGM273-MGC01-V1] */
#                     CheckpointStructPtr->WdgM_LogicalSupervisionMonitorPtr->WdgM_ActivityFlag = TRUE;    /*[DD-WDGM332-MGC01-V1]*/
	.d2line		1222
	diab.li		r30,1		# isCorrect=r30
.Llo292:
	lwz		r3,24(r31)		# CheckpointStructPtr=r3 CheckpointStructPtr=r31
	stb		r30,10(r3)		# CheckpointStructPtr=r3 isCorrect=r30
#                     isCorrect = TRUE;    /* [DD-WDGM252-MGC01-V1] [DD-WDGM274-MGC01-V1]*/
	.d2line		1223
	b		.L837
.L840:
#                 }
#                 else
#                 {
#                     /*Logical order is INCORRECT*/
#                     isCorrect = FALSE;    /* [DD-WDGM252-MGC01-V1] [DD-WDGM274-MGC01-V1]*/
	.d2line		1228
.Llo293:
	diab.li		r30,0		# isCorrect=r30
.Llo294:
	b		.L837
.L839:
#                 }
#             }
#             else
#             {
#                 /*Not activated graph but start point --> CORRECT*/
#                 /*It's a start point thus set the activity flag to TRUE*/
#                 /** [DD-WDGM332-MGC01-V1], [DD-WDGM273-MGC01-V1] */
#                 CheckpointStructPtr->WdgM_LogicalSupervisionMonitorPtr->WdgM_ActivityFlag = TRUE;
	.d2line		1236
.Llo295:
	diab.li		r30,1		# isCorrect=r30
.Llo296:
	lwz		r3,24(r31)		# CheckpointStructPtr=r31
	stb		r30,10(r3)		# isCorrect=r30
#                 isCorrect = TRUE;
	.d2line		1237
	b		.L837
.L838:
#             }
#         }
#         /*If the graph has not been activated yet, and it is not a start point of the graph,
#         then the result shall be incorrect*/
#         else
#         {
#             isCorrect = FALSE;
	.d2line		1244
.Llo297:
	diab.li		r30,0		# isCorrect=r30
.L837:
#         }
#     }
# 
#     /*Actions based on the evaluated correctness of the logical supervision*/
#     if (isCorrect == TRUE)
	.d2line		1249
.Llo298:
	rlwinm		r30,r30,0,24,31		# isCorrect=r30 isCorrect=r30
	se_cmpi		r30,1		# isCorrect=r30
	bc		0,2,.L844	# ne
	.section	.invalid_TEXT,,c
.L1437:
#     {
#         uint16 idx;
#         /* Valid checkpoint so the result shall be WDGM_CORRECT. It is not necessary to set the corresponding
#          * variable to WDGM_CORRECT because if once the result is WDGM_INCORRECT then the logical supervision
#          * shall not be evaluated for the graph again. The last result is checked before the
#          * WdgM_CheckLogicalSupervisedEntities call, and if it was WDGM_INCORRECT, then the logical supervision
#          * shall not be performed again
#          */
# 
#         /* Set the bitvector monitor varible for all the next checkpoints' graphs accordingly to the following
#          * possible checkpoints (where the current checkpoint is a start point of an external transition
#          */
#         for (idx = 0; idx < CheckpointStructPtr->WdgM_NumberOfNextExternalCPs; idx++)
	.d2line		1262
.Llo299:
	diab.li		r7,0		# idx=r7
.L845:
.Llo305:
	rlwinm		r5,r7,0,16,31		# idx=r7
	lhz		r0,28(r31)		# CheckpointStructPtr=r31
	se_cmp		r5,r0
	bc		0,0,.L847	# ge
	.section	.invalid_TEXT,,c
.L1443:
#         {
#             uint16 indexInCorresPondingCheckpointTable =
	.d2line		1264
	lwz		r3,16(r31)		# CheckpointStructPtr=r3 CheckpointStructPtr=r31
	rlwinm		r5,r7,2,14,29		# idx=r7
	lwzux		r0,r3,r5		# CheckpointStructPtr=r3
	lwz		r4,16(r31)		# CheckpointStructPtr=r31
	lwzx		r3,r4,r5		# CheckpointStructPtr=r3
	lwz		r3,4(r3)		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	lwz		r3,0(r3)		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	subf		r3,r3,r0		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	e_lis		r0,26214
	e_or2i		r0,26215
	mulhw		r0,r0,r3		# CheckpointStructPtr=r3
	srawi		r0,r0,4
	srawi		r3,r3,31		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	subf		r0,r3,r0		# CheckpointStructPtr=r3
.Llo307:
	mr		r0,r0		# indexInCorresPondingCheckpointTable=r0 indexInCorresPondingCheckpointTable=r0
#                 CheckpointStructPtr->WdgM_NextExternalCPEntriesTablePtr[idx] -
#                 &(CheckpointStructPtr->WdgM_NextExternalCPEntriesTablePtr[idx]->WdgM_LocalStatusParmEntryPtr->WdgM_CheckpointTablePtr[0]);
#             WdgM_SetIndexInBitvector(
	.d2line		1267
	lwzx		r3,r4,r5		# CheckpointStructPtr=r3
	mr		r4,r0		# indexInCorresPondingCheckpointTable=r4 indexInCorresPondingCheckpointTable=r0
	bl		WdgM_SetIndexInBitvector
	.section	.invalid_TEXT,,c
.L1444:
#                 CheckpointStructPtr->WdgM_NextExternalCPEntriesTablePtr[idx],
#                 indexInCorresPondingCheckpointTable);
#         }
	.d2line		1270
.Llo308:
	diab.addi		r5,r7,1		# idx=r7
	se_addi		r7,1		# idx=r7 idx=r7
	b		.L845
.L847:
# 
#         /*If it's a stop checkpoint of the graph then set the activity flag to false*/
#         if (CheckpointStructPtr->WdgM_IsStopCpByInternal == TRUE)
	.d2line		1273
	lbz		r0,37(r31)		# CheckpointStructPtr=r31
	se_cmpi		r0,1
	bc		0,2,.L848	# ne
#         {
#             /** [DD-WDGM331-MGC01-V1], [DD-WDGM329-MGC01-V1] */
#             CheckpointStructPtr->WdgM_LogicalSupervisionMonitorPtr->WdgM_ActivityFlag = FALSE;
	.d2line		1276
.Llo306:
	diab.li		r0,0
	lwz		r3,24(r31)		# CheckpointStructPtr=r3 CheckpointStructPtr=r31
	stb		r0,10(r3)		# CheckpointStructPtr=r3
	b		.L830
.L848:
#         }
#         else
#         {
#             /* Set the bitvector monitor variable for the current checkpoint's graph accordingly
#             to the following possible checkpoints if it is not the final checkpoint */
#             WdgM_SetNextInternalMask(CheckpointStructPtr);
	.d2line		1282
	mr		r3,r31		# CheckpointStructPtr=r3 CheckpointStructPtr=r31
	bl		WdgM_SetNextInternalMask
	.section	.invalid_TEXT,,c
.L1438:
.Llo284:
	b		.L830
.L844:
#         }
#     }
#     else /* isCorrect == FALSE */
#     {
#         /*Not activated graph and the checkpoint is not a start point --> INCORRECT*/
#         CheckpointStructPtr->WdgM_LocalStatusParmEntryPtr->WdgM_SupervisedEntityMonitorEntryPtr->WdgM_LogicalSupervisionResult =
	.d2line		1288
.Llo285:
	diab.li		r0,1
	lwz		r3,4(r31)		# CheckpointStructPtr=r3 CheckpointStructPtr=r31
	lwz		r3,4(r3)		# CheckpointStructPtr=r3 CheckpointStructPtr=r3
	stw		r0,4(r3)		# CheckpointStructPtr=r3
#             WDGM_INCORRECT;
#         CheckpointStructPtr->WdgM_LogicalSupervisionMonitorPtr->WdgM_ActivityFlag = FALSE; /* [DD-WDGM9014-MGC01-V1] */
	.d2line		1290
	diab.li		r0,0
	lwz		r3,24(r31)		# CheckpointStructPtr=r3 CheckpointStructPtr=r31
	stb		r0,10(r3)		# CheckpointStructPtr=r3
.L830:
#     }
# }
	.d2line		1292
	.d2epilogue_begin
.Llo286:
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
.L1430:
	.type		WdgM_CheckLogicalSupervisedEntities,@function
	.size		WdgM_CheckLogicalSupervisedEntities,.-WdgM_CheckLogicalSupervisedEntities
# Number of nodes = 240

# Allocations for WdgM_CheckLogicalSupervisedEntities
#	?a4		CheckpointStructPtr
#	?a5		$$130
#	?a6		$$129
#	?a7		isCorrect
#	?a8		ownIndexInCheckpointTable
#	?a9		idx
#	?a10		indexInCorresPondingCheckpointTable
# LOCAL_INLINE FUNC(void, WDGM_CODE) WdgM_UpdateActualDeadlineTime
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         1299,36
#$$ld
.L1451:

#$$bf	WdgM_UpdateActualDeadlineTime,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
WdgM_UpdateActualDeadlineTime:
.Llo309:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r4		# WdgM_DeadlineMonitorEntryPointer=r31 WdgM_DeadlineMonitorEntryPointer=r4
	.d2prologue_end
# (
#     CONST(CounterType,WDGM_APPL_CONST) Counter,
#     CONSTP2VAR(WdgM_DeadLineSupervisionMonitorType, TYPEDEF, WDGM_APPL_DATA) WdgM_DeadlineMonitorEntryPointer
# )
# {
#     VAR(TickType,AUTOMATIC) oldTickValue =
	.d2line		1305
.Llo311:
	lwz		r30,0(r31)		# oldTickValue=r30 WdgM_DeadlineMonitorEntryPointer=r31
.Llo312:
	mr		r30,r30		# oldTickValue=r30 oldTickValue=r30
#             WdgM_DeadlineMonitorEntryPointer->WdgM_DeadlineTimeActual.WdgM_DeadlineTimeInTicks;
# 
#     GetCounterValue(Counter,&(WdgM_DeadlineMonitorEntryPointer->WdgM_DeadlineTimeActual.WdgM_DeadlineTimeInTicks));
	.d2line		1308
	mr		r0,r3		# Counter=r0 Counter=r3
	mr		r4,r31		# WdgM_DeadlineMonitorEntryPointer=r4 WdgM_DeadlineMonitorEntryPointer=r31
	bl		GetCounterValue
# 
#     /*Check the overflow*/
#     if(oldTickValue > WdgM_DeadlineMonitorEntryPointer->WdgM_DeadlineTimeActual.WdgM_DeadlineTimeInTicks)
	.d2line		1311
.Llo310:
	lwz		r0,0(r31)		# WdgM_DeadlineMonitorEntryPointer=r31
	se_cmpl		r0,r30		# oldTickValue=r30
	bc		0,0,.L863	# ge
#     {
#         WdgM_DeadlineMonitorEntryPointer->WdgM_DeadlineTimeActual.WdgM_TimeOverflowValue++;
	.d2line		1313
.Llo314:
	lwz		r3,4(r31)		# WdgM_DeadlineMonitorEntryPointer=r31
	se_addi		r3,1
	stw		r3,4(r31)		# WdgM_DeadlineMonitorEntryPointer=r31
.L863:
#     }
# }
	.d2line		1315
	.d2epilogue_begin
.Llo313:
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
.L1452:
	.type		WdgM_UpdateActualDeadlineTime,@function
	.size		WdgM_UpdateActualDeadlineTime,.-WdgM_UpdateActualDeadlineTime
# Number of nodes = 19

# Allocations for WdgM_UpdateActualDeadlineTime
#	?a4		Counter
#	?a5		WdgM_DeadlineMonitorEntryPointer
#	?a6		oldTickValue
# FUNC(Std_ReturnType, WDGM_CODE) WdgM_ConsistencyCheck(
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2024,33
#$$ld
.L1467:

#$$bf	WdgM_ConsistencyCheck,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.globl		WdgM_ConsistencyCheck
	.d2_cfa_start __cie
WdgM_ConsistencyCheck:
.Llo315:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# ConfigPtr=r4 ConfigPtr=r3
	.d2prologue_end
#     CONSTP2CONST(WdgM_ConfigType, AUTOMATIC, WDGM_APPL_CONST) ConfigPtr
#     )
# {
#     Std_ReturnType returnValue;
#     if ((WDGM_PC_HASH_VALUE == WdgM_LTtoPCHashValue) &&
	.d2line		2029
	lis		r3,WdgM_LTtoPCHashValue@ha
.Llo316:
	lwz		r0,WdgM_LTtoPCHashValue@l(r3)
	e_lis		r3,44441
	e_or2i		r3,15059
	se_cmpl		r0,r3
	bc		0,2,.L1034	# ne
.Llo317:
	lwz		r3,12(r4)		# ConfigPtr=r4
	lwz		r0,0(r3)
	e_lis		r3,44441
	e_or2i		r3,15059
	se_cmpl		r0,r3
	bc		0,2,.L1034	# ne
	lwz		r3,16(r4)		# ConfigPtr=r4
	lwz		r0,0(r3)
	lis		r3,WdgM_LTHashValue@ha
	lwz		r3,WdgM_LTHashValue@l(r3)
	se_cmpl		r0,r3
	bc		0,2,.L1034	# ne
#         (WDGM_PC_HASH_VALUE == *(ConfigPtr->WdgM_PBtoPCHashValue_P)) &&
#         (WdgM_LTHashValue == *(ConfigPtr->WdgM_PBtoLTHashValue_P)))
#     {
#         returnValue = E_OK;
	.d2line		2033
.Llo318:
	diab.li		r3,0		# returnValue=r3
.Llo321:
	b		.L1035
.L1034:
#     }
#     else
#     {
#         returnValue = E_NOT_OK;
	.d2line		2037
.Llo319:
	diab.li		r3,1		# returnValue=r3
.L1035:
#     }
#     return returnValue;
	.d2line		2039
.Llo320:
	rlwinm		r3,r3,0,24,31		# returnValue=r3 returnValue=r3
# }
	.d2line		2040
	.d2epilogue_begin
.Llo322:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1468:
	.type		WdgM_ConsistencyCheck,@function
	.size		WdgM_ConsistencyCheck,.-WdgM_ConsistencyCheck
# Number of nodes = 26

# Allocations for WdgM_ConsistencyCheck
#	?a4		ConfigPtr
#	?a5		returnValue
# FUNC(void, WDGM_CODE) WdgM_Init /** [DD-WDGM151-MGC01-V1], [DD-WDGM018-MGC01-V1] */
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1327,23
#$$ld
.L1480:

#$$bf	WdgM_Init,interprocedural,rasave,nostackparams
	.globl		WdgM_Init
	.d2_cfa_start __cie
WdgM_Init:
.Llo323:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr.		r5,r3		# ConfigPtr=?a4 ConfigPtr=r3
	.d2prologue_end
# (
#     P2CONST(WdgM_ConfigType, AUTOMATIC, WDGM_APPL_CONST) ConfigPtr    /** [DD-BSW00400-MGC01-V1] [DD-BSW00438-MGC01-V1] */
# )
# {
#     WdgM_NotifyStatus notification;
#     WdgM_ResetRequested = FALSE;
	.d2line		1333
	diab.li		r0,0
	.d2line		1335
	lis		r3,WdgM_ResetRequested@ha
.Llo324:
	e_add16i		r3,r3,WdgM_ResetRequested@l
	stb		r0,0(r3)
# 
#     if (NULL_PTR == ConfigPtr) /** [DD-WDGM255-MGC01-V1] */
	bc		0,2,.L867	# ne
#     {
#         WDGM_DET_REPORT(WDGM_INIT_SID, WDGM_E_INV_POINTER);
	.d2line		1337
	diab.li		r3,13
	diab.li		r4,1
	diab.li		r5,0		# ConfigPtr=r5
	diab.li		r6,20
	bl		Det_ReportError
#         notification = WdgM_SetGlobalStatus(WDGM_GLOBAL_STATUS_DEACTIVATED); /* [DD-WDGM9012-MGC01-V1] */
	.d2line		1338
	diab.li		r3,0
	bl		WdgM_SetGlobalStatus
.Llo345:
	mr		r4,r3		# notification=r4 notification=r3
# 
#         /* Send a notification on the corresponding RTE port if it has been changed since the last notification*/
#         WdgM_GlobalStatusNotification(WDGM_GLOBAL_STATUS_DEACTIVATED, notification);
	.d2line		1341
	diab.li		r3,0
.Llo346:
	mr		r4,r4		# notification=r4 notification=r4
	bl		WdgM_GlobalStatusNotification
	b		.L866
.L867:
#     }
#   #if (STD_OFF == WDGM_OFF_MODE_ENABLED)
#     else if (E_NOT_OK == WdgMAssertDisableNotAllowed_ValidInitialMode(ConfigPtr))
#     {
#         WDGM_DET_REPORT(WDGM_INIT_SID, WDGM_E_DISABLE_NOT_ALLOWED); /** [DD-WDGM030-MGC01-V1] */
#         notification = WdgM_SetGlobalStatus(WDGM_GLOBAL_STATUS_DEACTIVATED); /* [DD-WDGM9012-MGC03-V1] */
# 
#         /* Send a notification on the corresponding RTE port if it has been changed since the last notification*/
#         WdgM_GlobalStatusNotification(WDGM_GLOBAL_STATUS_DEACTIVATED, notification);
#     }
#   #endif /* STD_OFF == WDGM_OFF_MODE_ENABLED */
#     else if (E_NOT_OK == WdgM_ConsistencyCheck(ConfigPtr))
	.d2line		1353
.Llo325:
	mr		r3,r5		# ConfigPtr=r3 ConfigPtr=r5
	bl		WdgM_ConsistencyCheck
	rlwinm		r3,r3,0,24,31		# ConfigPtr=r3 ConfigPtr=r3
	se_cmpi		r3,1		# ConfigPtr=r3
	bc		0,2,.L869	# ne
#     {
#         /*
#          * Mismatch amongst the CRC32 hash values, do not initialize
#          */
#          /*[DD-WDGM010-MGC01-V1]*/
#         WDGM_DET_REPORT(WDGM_INIT_SID, WDGM_E_PARAM_CONFIG);
	.d2line		1359
.Llo326:
	diab.li		r3,13		# ConfigPtr=r3
	diab.li		r4,1		# ConfigPtr=r4
	diab.li		r5,0		# ConfigPtr=r5
	diab.li		r6,17
	bl		Det_ReportError
#         notification = WdgM_SetGlobalStatus(WDGM_GLOBAL_STATUS_DEACTIVATED); /* [DD-WDGM9012-MGC02-V1] */
	.d2line		1360
	diab.li		r3,0		# ConfigPtr=r3
	bl		WdgM_SetGlobalStatus
.Llo347:
	mr		r4,r3		# notification=r4 notification=r3
# 
#         /* Send a notification on the corresponding RTE port if it has been changed since the last notification*/
#         WdgM_GlobalStatusNotification(WDGM_GLOBAL_STATUS_DEACTIVATED, notification);
	.d2line		1363
	diab.li		r3,0		# ConfigPtr=r3
.Llo348:
	mr		r4,r4		# notification=r4 notification=r4
	bl		WdgM_GlobalStatusNotification
	b		.L866
.L869:
	.section	.invalid_TEXT,,c
.L1486:
#     }
#     else
#     {
#         WdgM_ModeType WdgMInitialMode = ConfigPtr->WdgM_InitialMode; /** [DD-WDGM135-MGC01-V1] */
	.d2line		1367
.Llo327:
	lbz		r31,20(r5)		# ConfigPtr=r5
.Llo353:
	mr		r31,r31		# WdgMInitialMode=r31 WdgMInitialMode=r31
#         uint16 idx;
#         /* A copy of the config pointer is stored for all future use. */
#         WdgM_CurrentConfigPtr = ConfigPtr;
	.d2line		1370
	lis		r3,WdgM_CurrentConfigPtr@ha		# ConfigPtr=r3
	e_add16i		r3,r3,WdgM_CurrentConfigPtr@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r5,0(r3)		# ConfigPtr=r3 ConfigPtr=r5
#         /* Update the Supervised entities monitor table for all entities*/
# 
#         for (idx = 0; idx < WDGM_GET_TOTAL_NUMBER_OF_SUPERVISED_ENTITIES(); idx++)
	.d2line		1373
	diab.li		r30,0		# idx=r30
.L871:
.Llo328:
	rlwinm		r4,r30,0,16,31		# idx=r4 idx=r30
	lis		r3,WdgM_CurrentConfigPtr@ha		# ConfigPtr=r3
.Llo329:
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)		# ConfigPtr=r3 ConfigPtr=r3
	lhz		r0,4(r3)		# ConfigPtr=r3
	se_cmp		r4,r0		# idx=r4
	bc		0,0,.L873	# ge
	.section	.invalid_TEXT,,c
.L1494:
#         {
#             uint16 index_bytnum;
#             WdgM_SupervisedEntityIdType seID  = WDGM_GET_SUPERVISED_ENTITY_ID_FROM_GENERAL(idx);
#             WdgM_LocalstatModeDepType* modeDep_SupervisedEntityPtr = NULL_PTR;
	.d2line		1377
.Llo330:
	diab.li		r0,0
	stw		r0,8(r1)
	.d2line		1376
	lis		r3,WdgM_CurrentConfigPtr@ha		# ConfigPtr=r3
.Llo331:
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)		# ConfigPtr=r3 ConfigPtr=r3
	lwz		r3,8(r3)		# ConfigPtr=r3 ConfigPtr=r3
	rlwinm		r4,r30,2,14,29		# idx=r4 idx=r30
	lhzx		r9,r3,r4		# ConfigPtr=r3
.Llo368:
	mr		r9,r9		# seID=r9 seID=r9
#             Std_ReturnType isFoundInCurrentMode =
	.d2line		1378
	diab.addi		r5,r1,8		# ConfigPtr=r5
	mr		r3,r31		# WdgMInitialMode=r3 WdgMInitialMode=r31
.Llo332:
	mr		r4,r9		# seID=r4 seID=r9
	bl		WdgM_GetSEID_Binary
.Llo370:
	mr		r3,r3		# isFoundInCurrentMode=r3 isFoundInCurrentMode=r3
#                 WdgM_GetSEID_Binary(
#                     WdgMInitialMode,
#                     seID,
#                     (WdgM_LocalstatModeDepType**)&modeDep_SupervisedEntityPtr);
#             if (isFoundInCurrentMode == E_NOT_OK)
	.d2line		1383
	rlwinm		r3,r3,0,24,31		# isFoundInCurrentMode=r3 isFoundInCurrentMode=r3
	se_cmpi		r3,1		# isFoundInCurrentMode=r3
	bc		0,2,.L874	# ne
#             {
#                 WdgM_InitSupervisedEntity(seID, idx, WDGM_SUPERVISED_ENTITY_DEACTVATED);
	.d2line		1385
.Llo371:
	mr		r3,r9		# seID=r3 seID=r9
	mr		r4,r30		# idx=r4 idx=r30
	diab.li		r5,0		# ConfigPtr=r5
	bl		WdgM_InitSupervisedEntity
	b		.L875
.L874:
#             }
#             else
#             {
#                 WdgM_InitSupervisedEntity(seID, idx, WDGM_SUPERVISED_ENTITY_ACTVATED);
	.d2line		1389
	mr		r3,r9		# seID=r3 seID=r9
	mr		r4,r30		# idx=r4 idx=r30
	diab.li		r5,1		# ConfigPtr=r5
	bl		WdgM_InitSupervisedEntity
.L875:
#             }
# 
#             for (index_bytnum = (uint16)0U; index_bytnum < WdgM_CurrentConfigPtr->WdgM_SupervisedEntityGeneralTablePtr[idx].WdgM_SizeOfInternalCheckpointsBitVector; index_bytnum++)
	.d2line		1392
.Llo369:
	diab.li		r3,0		# index_bytnum=r3
.L876:
.Llo366:
	rlwinm		r5,r3,0,16,31		# ConfigPtr=r5 index_bytnum=r3
.Llo333:
	lis		r4,WdgM_CurrentConfigPtr@ha		# idx=r4
	lwz		r4,WdgM_CurrentConfigPtr@l(r4)		# idx=r4 idx=r4
	lwz		r4,8(r4)		# idx=r4 idx=r4
	rlwinm		r6,r30,2,14,29		# idx=r30
	se_add		r4,r6		# idx=r4 idx=r4
	lhz		r0,2(r4)		# idx=r4
	se_cmp		r5,r0		# ConfigPtr=r5
	bc		0,0,.L878	# ge
#             {
#                 WdgM_LogicalsupervisionMonitorTable[idx].WdgM_NextPossibleCheckpointBitvectorExternal[index_bytnum] = 0U;
	.d2line		1394
.Llo334:
	rlwinm		r6,r30,0,16,31		# idx=r30
	diab.li		r0,0
	lis		r4,(WdgM_LogicalsupervisionMonitorTable+4)@ha		# idx=r4
	e_add16i		r4,r4,(WdgM_LogicalsupervisionMonitorTable+4)@l		# idx=r4 idx=r4
	rlwinm		r5,r6,4,0,27		# ConfigPtr=r5
.Llo335:
	se_slwi		r6,2
	subf		r6,r6,r5		# ConfigPtr=r5
	lwzx		r4,r4,r6		# idx=r4 idx=r4
	rlwinm		r5,r3,0,16,31		# ConfigPtr=r5 index_bytnum=r3
.Llo336:
	stbux		r0,r4,r5		# idx=r4
#                 WdgM_LogicalsupervisionMonitorTable[idx].WdgM_NextPossibleCheckpointBitvectorInternal[index_bytnum] = 0U;
	.d2line		1395
	lis		r4,WdgM_LogicalsupervisionMonitorTable@ha		# idx=r4
	e_add16i		r4,r4,WdgM_LogicalsupervisionMonitorTable@l		# idx=r4 idx=r4
	lwzx		r4,r4,r6		# idx=r4 idx=r4
	stbx		r0,r4,r5		# idx=r4
#             }
	.d2line		1396
	diab.addi		r5,r3,1		# ConfigPtr=r5 index_bytnum=r3
	se_addi		r3,1		# index_bytnum=r3 index_bytnum=r3
	b		.L876
.L878:
	.section	.invalid_TEXT,,c
.L1495:
#         }
	.d2line		1397
.Llo367:
	diab.addi		r4,r30,1		# idx=r4 idx=r30
	se_addi		r30,1		# idx=r30 idx=r30
	b		.L871
.L873:
#         WdgM_ExpiredSupervisionCyclesCounter = 0x00;
	.d2line		1398
	diab.li		r5,0		# ConfigPtr=r5
.Llo337:
	lis		r3,WdgM_ExpiredSupervisionCyclesCounter@ha		# ConfigPtr=r3
	e_add16i		r3,r3,WdgM_ExpiredSupervisionCyclesCounter@l		# ConfigPtr=r3 ConfigPtr=r3
	stb		r5,0(r3)		# ConfigPtr=r3 ConfigPtr=r5
# 
#         /* Check configured Alive supervised entities */
#         for (idx = (uint16)0U; idx < WDGM_GET_ALIVE_SUPERVISIONS_COUNT(WdgMInitialMode); idx++)
	.d2line		1401
	diab.li		r3,0		# ConfigPtr=r3
.L879:
.Llo338:
	rlwinm		r0,r31,0,24,31		# WdgMInitialMode=r31
.Llo361:
	rlwinm		r5,r3,0,16,31		# ConfigPtr=r5 idx=r3
.Llo339:
	lis		r4,WdgM_CurrentConfigPtr@ha		# idx=r4
	lwz		r4,WdgM_CurrentConfigPtr@l(r4)		# idx=r4 idx=r4
	lwz		r4,0(r4)		# idx=r4 idx=r4
	rlwinm		r6,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r6
	se_add		r4,r0		# idx=r4 idx=r4
	lhz		r0,16(r4)		# idx=r4
	se_cmp		r5,r0		# ConfigPtr=r5
	bc		0,0,.L881	# ge
#         {
#             WdgM_AliveSupervisionMonitorTable[idx].WdgM_SupervisionCyclesCounter = 0;
	.d2line		1403
.Llo340:
	diab.li		r0,0
	lis		r4,(WdgM_AliveSupervisionMonitorTable+2)@ha		# idx=r4
	e_add16i		r4,r4,(WdgM_AliveSupervisionMonitorTable+2)@l		# idx=r4 idx=r4
	rlwinm		r5,r3,2,14,29		# ConfigPtr=r5 idx=r3
	stbux		r0,r4,r5		# idx=r4
#             WdgM_AliveSupervisionMonitorTable[idx].WdgM_AliveCountVar = 0;
	.d2line		1404
	lis		r4,WdgM_AliveSupervisionMonitorTable@ha		# idx=r4
	e_add16i		r4,r4,WdgM_AliveSupervisionMonitorTable@l		# idx=r4 idx=r4
	sthx		r0,r4,r5		# idx=r4
#         }
	.d2line		1405
	diab.addi		r5,r3,1		# ConfigPtr=r5 idx=r3
	se_addi		r3,1		# idx=r3 idx=r3
	b		.L879
.L881:
#         /* Check configured Deadline supervised entities */
#         for (idx = (uint16)0U; idx < WDGM_GET_DEADLINE_SUPERVISIONS_COUNT(WdgMInitialMode); idx++)
	.d2line		1407
.Llo362:
	diab.li		r3,0		# idx=r3
.L882:
.Llo363:
	rlwinm		r0,r31,0,24,31		# WdgMInitialMode=r31
	rlwinm		r5,r3,0,16,31		# ConfigPtr=r5 idx=r3
.Llo341:
	lis		r4,WdgM_CurrentConfigPtr@ha		# idx=r4
	lwz		r4,WdgM_CurrentConfigPtr@l(r4)		# idx=r4 idx=r4
	lwz		r4,0(r4)		# idx=r4 idx=r4
	rlwinm		r6,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r6
	se_add		r4,r0		# idx=r4 idx=r4
	lhz		r0,18(r4)		# idx=r4
	se_cmp		r5,r0		# ConfigPtr=r5
	bc		0,0,.L884	# ge
#         {
#             WdgM_DeadlineSupervisionMonitorTable[idx].WdgM_DeadlineTimerStatus = WDGM_STOP;
	.d2line		1409
.Llo342:
	rlwinm		r0,r3,0,16,31		# idx=r3
	diab.li		r5,0		# ConfigPtr=r5
.Llo343:
	lis		r4,(WdgM_DeadlineSupervisionMonitorTable+8)@ha		# idx=r4
	e_add16i		r4,r4,(WdgM_DeadlineSupervisionMonitorTable+8)@l		# idx=r4 idx=r4
	rlwinm		r6,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r6
	stwx		r5,r4,r0		# idx=r4 ConfigPtr=r5
# 
#             /** [DD-WDGM298-MGC01-V1] */
#             WdgM_DeadlineSupervisionMonitorTable[idx].WdgM_DeadlineTimeActual.WdgM_DeadlineTimeInTicks = 0;
	.d2line		1412
	lis		r4,WdgM_DeadlineSupervisionMonitorTable@ha		# idx=r4
	e_add16i		r4,r4,WdgM_DeadlineSupervisionMonitorTable@l		# idx=r4 idx=r4
	stwx		r5,r4,r0		# idx=r4 ConfigPtr=r5
#             WdgM_DeadlineSupervisionMonitorTable[idx].WdgM_DeadlineTimeActual.WdgM_TimeOverflowValue = 0;
	.d2line		1413
	lis		r4,(WdgM_DeadlineSupervisionMonitorTable+4)@ha		# idx=r4
	e_add16i		r4,r4,(WdgM_DeadlineSupervisionMonitorTable+4)@l		# idx=r4 idx=r4
	stwx		r5,r4,r0		# idx=r4 ConfigPtr=r5
#         }
	.d2line		1414
	diab.addi		r0,r3,1		# idx=r3
	se_addi		r3,1		# idx=r3 idx=r3
	b		.L882
.L884:
#         /* Store the mode */
#         WdgM_CurrentMode = WdgMInitialMode; /*[DD-WDGM179-MGC01-V1]*/
	.d2line		1416
.Llo344:
	lis		r3,WdgM_CurrentMode@ha		# idx=r3
.Llo364:
	e_add16i		r3,r3,WdgM_CurrentMode@l		# idx=r3 idx=r3
	stb		r31,0(r3)		# idx=r3 WdgMInitialMode=r31
# 
#         /* clear the double-inverse value storing the SEID of that first reached the EXPIRED state*/
#         WdgM_SeIdLocalStatusExpiredFirst = 0U; /** [DD-WDGM350-MGC01-V1] */
	.d2line		1419
	diab.li		r0,0
	lis		r3,WdgM_SeIdLocalStatusExpiredFirst@ha		# idx=r3
	e_add16i		r3,r3,WdgM_SeIdLocalStatusExpiredFirst@l		# idx=r3 idx=r3
	stw		r0,0(r3)		# idx=r3
# 
#         /* Send notifications through RTE about Local Status changes if needed*/
#         WdgM_RTENotifLocalStatusChange();
	.d2line		1422
	bl		WdgM_RTENotifLocalStatusChange
# 
#         /* store the global status */
#         if (E_OK == WdgM_SwitchWdgMode(WdgMInitialMode))
	.d2line		1425
.Llo365:
	mr		r3,r31		# WdgMInitialMode=r3 WdgMInitialMode=r31
	bl		WdgM_SwitchWdgMode
	rlwinm		r3,r3,0,24,31		# WdgMInitialMode=r3 WdgMInitialMode=r3
	se_cmpi		r3,0		# WdgMInitialMode=r3
	bc		0,2,.L885	# ne
#         {
#             notification = WdgM_SetGlobalStatus(WDGM_GLOBAL_STATUS_OK);
	.d2line		1427
.Llo354:
	diab.li		r3,3		# WdgMInitialMode=r3
	bl		WdgM_SetGlobalStatus
.Llo349:
	mr		r4,r3		# notification=r4 notification=r3
# 
#             /* Send a notification on the corresponding RTE port if it has been changed since the last notification*/
#             WdgM_GlobalStatusNotification(WDGM_GLOBAL_STATUS_OK, notification);
	.d2line		1430
	diab.li		r3,3		# WdgMInitialMode=r3
.Llo350:
	mr		r4,r4		# notification=r4 notification=r4
	bl		WdgM_GlobalStatusNotification
# 
#             /*
#              * According to BSW00339:
#              * If an error event occurred EventStatus shall be equal to: 'DEM_EVENT_STATUS_FAILED'.
#              * If no error event occurred EventStatus shall be equal to: 'DEM_EVENT_STATUS_PASSED'.
#              * If the PASSED/PRE-PASSED event status reported is missing for the corresponding event ID's,
#              * then the aging mechanisms (self-healing of errors) in Dem and the UDS DTC status bits will
#              * not function as expected. Therefore in case of events which leads to irreversible states
#              * (from where it is not possible to get back on track, and report PASSED again), it is enough to
#              * report PASSED status only in the WdgM_Init function, here.
#              */
#           #if (STD_ON == WDGM_DEM_STOPPED_SUPERVISION_REPORT)
# 
#             /* If we report later with the Dem_E_Monitoring ID to DEM, all these cases means that an
#              * irreversible fail happened (there is no way to get back on track and report a PASSED because
#              * we stepped into WDGM_GLOBAL_STATUS_STOPPED status). Therefore it is enough report the PASSED
#              * to this DEM ID in the Init
#              */
#             WdgM_DemReport(WdgM_DemEventId.Dem_E_Monitoring, DEM_EVENT_STATUS_PASSED);
	.d2line		1449
	lis		r3,(WdgM_DemEventId+4)@ha		# WdgMInitialMode=r3
.Llo355:
	lhz		r3,(WdgM_DemEventId+4)@l(r3)		# WdgMInitialMode=r3 WdgMInitialMode=r3
.Llo356:
	diab.li		r4,0		# WdgMInitialMode=r4
	bl		WdgM_DemReport
# 
#             /* If we report later with the Dem_E_Set_Mode ID to DEM, all these cases means that an irreversible
#              * fail happened (there is no way to get back on track and report a PASSED because we stepped into
#              * WDGM_GLOBAL_STATUS_STOPPED status or to a state which leads to this global status unavoidably).
#              * Therefore it is enough report the PASSED to this DEM ID in the Init
#              */
#             /** [DD-WDGM142-MGC01-V1], [DD-WDGM004-MGC12-V1] */
#             WdgM_DemReport(WdgM_DemEventId.Dem_E_Set_Mode, DEM_EVENT_STATUS_PASSED);
	.d2line		1457
	lis		r3,WdgM_DemEventId@ha		# WdgMInitialMode=r3
.Llo357:
	lhz		r3,WdgM_DemEventId@l(r3)		# WdgMInitialMode=r3 WdgMInitialMode=r3
.Llo358:
	diab.li		r4,0		# WdgMInitialMode=r4
	bl		WdgM_DemReport
	b		.L866
.L885:
#           #endif /* STD_ON == WDGM_DEM_STOPPED_SUPERVISION_REPORT*/
# 
#         }
#         /* Something failed when starting the activation sources */
#         else
#         {
#             notification = WdgM_SetGlobalStatus(WDGM_GLOBAL_STATUS_STOPPED); /** [DD-WDGM139-MGC01-V1] */
	.d2line		1464
	diab.li		r3,4		# WdgMInitialMode=r3
	bl		WdgM_SetGlobalStatus
.Llo351:
	mr		r4,r3		# notification=r4 notification=r3
# 
#             /* Send a notification on the corresponding RTE port if it has been changed since the last notification*/
#             WdgM_GlobalStatusNotification(WDGM_GLOBAL_STATUS_STOPPED, notification);
	.d2line		1467
	diab.li		r3,4		# WdgMInitialMode=r3
.Llo352:
	mr		r4,r4		# notification=r4 notification=r4
	bl		WdgM_GlobalStatusNotification
# 
#             /* Report DEM error stating that the WdgIf switch failed */
#           #if (STD_ON == WDGM_DEM_STOPPED_SUPERVISION_REPORT)
#             /** [DD-WDGM129-MGC01-V1], [DD-WDGM004-MGC12-V1] */
#             WdgM_DemReport(WdgM_DemEventId.Dem_E_Set_Mode, DEM_EVENT_STATUS_FAILED);
	.d2line		1472
	lis		r3,WdgM_DemEventId@ha		# WdgMInitialMode=r3
.Llo359:
	lhz		r3,WdgM_DemEventId@l(r3)		# WdgMInitialMode=r3 WdgMInitialMode=r3
.Llo360:
	diab.li		r4,1		# WdgMInitialMode=r4
	bl		WdgM_DemReport
	.section	.invalid_TEXT,,c
.L1487:
.L866:
#           #endif /* STD_ON == WDGM_DEM_STOPPED_SUPERVISION_REPORT */
#         }
#     }
# }
	.d2line		1476
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
.L1481:
	.type		WdgM_Init,@function
	.size		WdgM_Init,.-WdgM_Init
# Number of nodes = 356

# Allocations for WdgM_Init
#	?a4		ConfigPtr
#	?a5		$$137
#	?a6		$$136
#	?a7		$$135
#	?a8		$$134
#	?a9		$$133
#	?a10		$$132
#	?a11		$$131
#	?a12		notification
#	?a13		WdgMInitialMode
#	?a14		idx
#	?a15		index_bytnum
#	?a16		seID
#	SP,8		modeDep_SupervisedEntityPtr
#	?a17		isFoundInCurrentMode
# FUNC(void, WDGM_CODE) WdgM_DeInit(void) /** [DD-WDGM261-MGC01-V1] */
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1482,23
#$$ld
.L1507:

#$$bf	WdgM_DeInit,interprocedural,rasave,nostackparams
	.globl		WdgM_DeInit
	.d2_cfa_start __cie
WdgM_DeInit:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     if (E_NOT_OK == WdgMAssertInitialized())
	.d2line		1484
	bl		WdgMAssertInitialized
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L902	# ne
#     {
#         /** [DD-WDGM288-MGC01-V1] */
#         WDGM_DET_REPORT(WDGM_DEINIT_SID, WDGM_E_NO_INIT);
	.d2line		1487
	diab.li		r3,13
	diab.li		r4,1
	diab.li		r5,1
	diab.li		r6,16
	bl		Det_ReportError
	b		.L901
.L902:
#     }
#     else if(WDGM_GLOBAL_STATUS_OK == WdgM_GlobalStatus)
	.d2line		1489
	lis		r3,WdgM_GlobalStatus@ha
	lwz		r0,WdgM_GlobalStatus@l(r3)
	se_cmpi		r0,3
	bc		0,2,.L901	# ne
	.section	.invalid_TEXT,,c
.L1510:
#     {
#         WdgM_NotifyStatus notification;
# 
#         /* Transition to WDGM_GLOBAL_STATUS_DEACTIVATED is only allowed from state WDGM_GLOBAL_STATUS_OK.
#          * See Figure 4: Global Supervision Status in chapter 7.1.4. */
#         WdgM_TriggerWatchdogs(); /** [DD-WDGM261-MGC01-V1] */
	.d2line		1495
	bl		WdgM_TriggerWatchdogs
#         SchM_Enter_WdgM_EaActStatusProtect();
	.d2line		1496
	bl		SchM_Enter_WdgM_EaActStatusProtect
# 
#         notification = WdgM_SetGlobalStatus(WDGM_GLOBAL_STATUS_DEACTIVATED);  /** [DD-WDGM286-MGC01-V1] */
	.d2line		1498
	diab.li		r3,0
	bl		WdgM_SetGlobalStatus
.Llo372:
	mr		r31,r3		# notification=r31 notification=r3
# 
#         WdgM_CurrentConfigPtr = NULL_PTR;
	.d2line		1500
.Llo373:
	diab.li		r0,0
.Llo374:
	lis		r3,WdgM_CurrentConfigPtr@ha
	e_add16i		r3,r3,WdgM_CurrentConfigPtr@l
	stw		r0,0(r3)
#         SchM_Exit_WdgM_EaActStatusProtect();
	.d2line		1501
	bl		SchM_Exit_WdgM_EaActStatusProtect
# 
#         /* Send a notification on the corresponding RTE port if it has been changed since the last notification*/
#         WdgM_GlobalStatusNotification(WDGM_GLOBAL_STATUS_DEACTIVATED, notification);
	.d2line		1504
	diab.li		r3,0
	mr		r4,r31		# notification=r4 notification=r31
	bl		WdgM_GlobalStatusNotification
	.section	.invalid_TEXT,,c
.L1511:
.L901:
#     }
#     else
#     {
#         /* Transition to WDGM_GLOBAL_STATUS_DEACTIVATED is not allowed */
#     }
# }
	.d2line		1510
	.d2epilogue_begin
.Llo375:
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
.L1508:
	.type		WdgM_DeInit,@function
	.size		WdgM_DeInit,.-WdgM_DeInit
# Number of nodes = 41

# Allocations for WdgM_DeInit
#	?a4		notification
# FUNC(Std_ReturnType, AUTOMATIC) WdgM_GetMode /** [DD-WDGM168-MGC01-V1] */
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1517,33
#$$ld
.L1518:

#$$bf	WdgM_GetMode,interprocedural,rasave,nostackparams
	.globl		WdgM_GetMode
	.d2_cfa_start __cie
WdgM_GetMode:
.Llo376:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# Mode=r4 Mode=r3
	.d2prologue_end
# (
#     P2VAR(WdgM_ModeType, AUTOMATIC, WDGM_APPL_DATA) Mode
# )
# {
#     Std_ReturnType returnValue = E_NOT_OK;
	.d2line		1522
	diab.li		r31,1		# returnValue=r31
#     if (E_NOT_OK == WdgMAssertInitialized())
	.d2line		1523
	bl		WdgMAssertInitialized
.Llo377:
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L909	# ne
#     {
#         WDGM_DET_REPORT(WDGM_GETMODE_SID, WDGM_E_NO_INIT); /** [DD-WDGM253-MGC01-V1] */
	.d2line		1525
	diab.li		r3,13
	diab.li		r4,1
	diab.li		r5,11
	diab.li		r6,16
	bl		Det_ReportError
	b		.L910
.L909:
#     }
#     else if (NULL_PTR == Mode)
	.d2line		1527
.Llo378:
	se_cmpi		r4,0		# Mode=r4
	bc		0,2,.L911	# ne
#     {
#         WDGM_DET_REPORT(WDGM_GETMODE_SID, WDGM_E_INV_POINTER); /** [DD-WDGM254-MGC01-V1] */
	.d2line		1529
.Llo379:
	diab.li		r3,13
	diab.li		r4,1		# Mode=r4
	diab.li		r5,11
	diab.li		r6,20
	bl		Det_ReportError
	b		.L910
.L911:
#     }
#     else
#     {
#         *Mode = WdgM_CurrentMode; /** [DD-WDGM170-MGC01-V1] */
	.d2line		1533
.Llo380:
	lis		r3,WdgM_CurrentMode@ha
	lbz		r0,WdgM_CurrentMode@l(r3)
	stb		r0,0(r4)		# Mode=r4
#         returnValue = E_OK;
	.d2line		1534
	diab.li		r31,0		# returnValue=r31
.L910:
#     }
#     return returnValue;
	.d2line		1536
.Llo381:
	rlwinm		r3,r31,0,24,31		# returnValue=r31
# }
	.d2line		1537
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
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
.L1519:
	.type		WdgM_GetMode,@function
	.size		WdgM_GetMode,.-WdgM_GetMode
# Number of nodes = 42

# Allocations for WdgM_GetMode
#	?a4		Mode
#	?a5		returnValue
# FUNC(Std_ReturnType, AUTOMATIC) WdgM_SetMode /** [DD-WDGM317-MGC01-V1], [DD-WDGM154-MGC01-V1] */
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1544,33
#$$ld
.L1527:

#$$bf	WdgM_SetMode,interprocedural,rasave,nostackparams
	.globl		WdgM_SetMode
	.d2_cfa_start __cie
WdgM_SetMode:
.Llo383:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Mode=r31 Mode=r3
	mr		r4,r4		# CallerId=r4 CallerId=r4
	.d2prologue_end
# (
#     VAR(WdgM_ModeType, AUTOMATIC) Mode,
#     VAR(uint16, AUTOMATIC) CallerId
# )
# {
#     Std_ReturnType returnValue = E_NOT_OK;
	.d2line		1550
	diab.li		r30,1		# returnValue=r30
#     if (E_NOT_OK == WdgMAssertInitialized()) /** [DD-WDGM021-MGC01-V1] */
	.d2line		1551
	bl		WdgMAssertInitialized
.Llo384:
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L917	# ne
#     {
#         WDGM_DET_REPORT(WDGM_SETMODE_SID, WDGM_E_NO_INIT);
	.d2line		1553
.Llo385:
	diab.li		r3,13
	diab.li		r4,1
	diab.li		r5,3
	diab.li		r6,16
	bl		Det_ReportError
	b		.L918
.L917:
#     }
#     else if (E_NOT_OK == WdgMAssertInvalidMode(Mode)) /** [DD-WDGM020-MGC01-V1] */
	.d2line		1555
.Llo389:
	mr		r3,r31		# Mode=r3 Mode=r31
	bl		WdgMAssertInvalidMode
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L919	# ne
#     {
#         WDGM_DET_REPORT(WDGM_SETMODE_SID, WDGM_E_PARAM_MODE);
	.d2line		1557
.Llo390:
	diab.li		r3,13
	diab.li		r4,1
	diab.li		r5,3
	diab.li		r6,18
	bl		Det_ReportError
	b		.L918
.L919:
#     }
#   #if (WDGM_OFF_MODE_ENABLED == STD_OFF)
#     else if (E_NOT_OK == WdgMAssertDisableNotAllowed_ValidModeSwitch(Mode))
#     {
#         WDGM_DET_REPORT(WDGM_SETMODE_SID, WDGM_E_DISABLE_NOT_ALLOWED); /** [DD-WDGM031-MGC01-V1] */
#     }
#   #endif/*(WDGM_OFF_MODE_ENABLED == STD_OFF)*/
#     else if (FALSE == WdgM_IsValidCallerId(CallerId)) /** [DD-WDGM015-MGC01-V1] */
	.d2line		1565
.Llo391:
	mr		r3,r4		# CallerId=r3 CallerId=r4
	bl		WdgM_IsValidCallerId
.Llo392:
	e_andi.		r3,r3,255
	bc		1,2,.L918	# eq
#     {
#   #if (STD_ON == WDGM_DEFENSIVE_BEHAVIOUR) /*[DD-WDGM245-MGC02-V1]*/
#         /** [DD-WDGM004-MGC13-V1], [DD-WDGM245-MGC01-V1] */
#         WdgM_DemReport(WdgM_DemEventId.Dem_E_Improper_Caller, DEM_EVENT_STATUS_FAILED);
# 
#         /*The function will return with E_NOT_OK*/
# 
#   #endif /* STD_ON == WDGM_DEFENSIVE_BEHAVIOUR */
#     }
#     else if (TRUE == WdgM_ResetRequested) /* [DD-WDGM9015-MGC01-V1] */
	.d2line		1575
	lis		r3,WdgM_ResetRequested@ha
	lbz		r0,WdgM_ResetRequested@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L918	# eq
	.section	.invalid_TEXT,,c
.L1534:
#     {
#         /* mode change is not available after reset is requested */
#     }
#     else
#     {
#         WdgM_GlobalStatusType currentGlobalStatusPushedToStack;
#         /*
#          * According to BSW00339:
#          *   If an error event occurred EventStatus shall be equal to: 'DEM_EVENT_STATUS_FAILED'.
#          *   If no error event occurred EventStatus shall be equal to: 'DEM_EVENT_STATUS_PASSED'.
#          * If the PASSED/PRE-PASSED event status reported is missing for the corresponding event ID's,
#          * then the aging mechanisms (self-healing of errors) in Dem and the UDS DTC status bits will
#          * not function as expected. Therefore in case of events which leads to reversible states
#          * (from where it is possible to get back on track, and report PASSED again), every time when the
#          * expected behaviour happends, the PASSED reporting is necessary.
#          */
#       #if (STD_ON == WDGM_DEM_STOPPED_SUPERVISION_REPORT)
# 
#         /*If we reported FAILED with the Dem_E_Improper_Caller ID to DEM, it means that the WdgM_SetMode
#          * had been called with a CallerId which is not authorized to perform the mode change, but it does
#          * not have any other effect to the WdgM state machine (only that the mode change is not performed).
#          * This means that a reversible FAILED happened, so every time, when the WdgM_SetMode is called with the
#          * right CallerID, PASSED shall be reported to DEM correspondingly to the Dem_E_Improper_Caller DEM ID.
#          */
#         /** [DD-WDGM004-MGC13-V1], [DD-WDGM245-MGC01-V1] */
#         WdgM_DemReport(WdgM_DemEventId.Dem_E_Improper_Caller, DEM_EVENT_STATUS_PASSED);
	.d2line		1601
	lis		r3,(WdgM_DemEventId+2)@ha
	lhz		r3,(WdgM_DemEventId+2)@l(r3)
	diab.li		r4,0
	bl		WdgM_DemReport
#       #endif /* STD_ON == WDGM_DEM_STOPPED_SUPERVISION_REPORT*/
# 
#         /* WdgM_GlobalStatus is pushed to stack in order to preserve the
#         consistency, because it is not protected by exclusive area */
#         currentGlobalStatusPushedToStack = WdgM_GlobalStatus;
	.d2line		1606
	lis		r3,WdgM_GlobalStatus@ha
	lwz		r0,WdgM_GlobalStatus@l(r3)		# currentGlobalStatusPushedToStack=r0
.Llo394:
	mr		r0,r0		# currentGlobalStatusPushedToStack=r0 currentGlobalStatusPushedToStack=r0
# 
#         /** [DD-WDGM145-MGC01-V1] */
#         if ((WDGM_GLOBAL_STATUS_OK == currentGlobalStatusPushedToStack) ||
	.d2line		1609
	se_cmpi		r0,3		# currentGlobalStatusPushedToStack=r0
	bc		1,2,.L928	# eq
	se_cmpi		r0,2		# currentGlobalStatusPushedToStack=r0
	bc		0,2,.L918	# ne
.L928:
#             (WDGM_GLOBAL_STATUS_FAILED == currentGlobalStatusPushedToStack))
#         {
# 
#             /* Now we are ready to do other work since the triggers have been done
#              * Adapt new mode parameters. Switch the modes if configured */
#             if (E_OK != WdgM_SwitchWdgMode(Mode))
	.d2line		1615
.Llo395:
	mr		r3,r31		# Mode=r3 Mode=r31
	bl		WdgM_SwitchWdgMode
	e_andi.		r3,r3,255
	bc		1,2,.L926	# eq
	.section	.invalid_TEXT,,c
.L1540:
#             {
#                 WdgM_NotifyStatus notification;
# 
#                 SchM_Enter_WdgM_EaActStatusProtect();
	.d2line		1619
.Llo386:
	bl		SchM_Enter_WdgM_EaActStatusProtect
#                 /** [DD-WDGM139-MGC01-V1] */
#                 notification = WdgM_SetGlobalStatus((WdgM_GlobalStatusType)WDGM_GLOBAL_STATUS_STOPPED);
	.d2line		1621
	diab.li		r3,4
	bl		WdgM_SetGlobalStatus
.Llo396:
	mr		r31,r3		# notification=r31 notification=r3
# 
#                 SchM_Exit_WdgM_EaActStatusProtect();
	.d2line		1623
.Llo397:
	bl		SchM_Exit_WdgM_EaActStatusProtect
# 
#                 /* Send a notification on the corresponding RTE port if it has been changed since the last notification*/
#                 WdgM_GlobalStatusNotification(WDGM_GLOBAL_STATUS_STOPPED, notification);
	.d2line		1626
.Llo398:
	diab.li		r3,4
	mr		r4,r31		# notification=r4 notification=r31
	bl		WdgM_GlobalStatusNotification
# 
#                 /* log DEM fault */
#               #if (STD_ON == WDGM_DEM_STOPPED_SUPERVISION_REPORT)
#                 /** [DD-WDGM129-MGC01-V1], [DD-WDGM004-MGC12-V1], [DD-WDGM142-MGC01-V1] */
#                 WdgM_DemReport(WdgM_DemEventId.Dem_E_Set_Mode, DEM_EVENT_STATUS_FAILED);
	.d2line		1631
	lis		r3,WdgM_DemEventId@ha
	lhz		r3,WdgM_DemEventId@l(r3)
	diab.li		r4,1
	bl		WdgM_DemReport
	.section	.invalid_TEXT,,c
.L1541:
.Llo399:
	b		.L918
.L926:
#               #endif /* STD_ON == WDGM_DEM_STOPPED_SUPERVISION_REPORT */
#             }
#             else
#             {
#                 SchM_Enter_WdgM_EaActStatusProtect();
	.d2line		1636
.Llo387:
	bl		SchM_Enter_WdgM_EaActStatusProtect
#                 /* Every thing OK, switch the requested mode*/
#                 WdgM_ResetSupervisedEntity(Mode);
	.d2line		1638
	mr		r3,r31		# Mode=r3 Mode=r31
	bl		WdgM_ResetSupervisedEntity
#                 WdgM_CurrentMode = (WdgM_ModeType)Mode; /** [DD-WDGM170-MGC02-V1] */
	.d2line		1639
	lis		r3,WdgM_CurrentMode@ha		# Mode=r3
	e_add16i		r3,r3,WdgM_CurrentMode@l		# Mode=r3 Mode=r3
	stb		r31,0(r3)		# Mode=r3 Mode=r31
#                 returnValue = E_OK;
	.d2line		1640
	diab.li		r30,0		# returnValue=r30
#                 SchM_Exit_WdgM_EaActStatusProtect();
	.d2line		1641
	bl		SchM_Exit_WdgM_EaActStatusProtect
# 
#                 /* Send notifications through RTE about Local Status changes if needed*/
#                 WdgM_RTENotifLocalStatusChange();
	.d2line		1644
	bl		WdgM_RTENotifLocalStatusChange
	.section	.invalid_TEXT,,c
.L1535:
.L918:
#             }
# 
#         }
#         /* else: nothing [DD-WDGM316-MGC01-V1] */
#     }
#     return returnValue;
	.d2line		1650
.Llo388:
	rlwinm		r3,r30,0,24,31		# Mode=r3 returnValue=r30
# }
	.d2line		1651
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo393:
	lwz		r0,36(r1)		# currentGlobalStatusPushedToStack=r0
	mtspr		lr,r0		# currentGlobalStatusPushedToStack=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1528:
	.type		WdgM_SetMode,@function
	.size		WdgM_SetMode,.-WdgM_SetMode
# Number of nodes = 123

# Allocations for WdgM_SetMode
#	?a4		Mode
#	?a5		CallerId
#	?a6		returnValue
#	?a7		currentGlobalStatusPushedToStack
#	?a8		notification
# FUNC(void, WDGM_CODE) WdgM_GetVersionInfo /** [DD-WDGM153-MGC01-V1], [DD-WDGM262-MGC01-V1] */
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1658,23
#$$ld
.L1548:

#$$bf	WdgM_GetVersionInfo,interprocedural,rasave,nostackparams
	.globl		WdgM_GetVersionInfo
	.d2_cfa_start __cie
WdgM_GetVersionInfo:
.Llo400:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr.		r3,r3		# VersionInfo=?a4 VersionInfo=r3
	.d2prologue_end
# (
#     P2VAR(Std_VersionInfoType, AUTOMATIC, WDGM_APPL_DATA) VersionInfo
# )
# {
#     if (NULL_PTR == VersionInfo)
	.d2line		1663
	bc		0,2,.L935	# ne
#     {
#         WDGM_DET_REPORT(WDGM_GETVERSIONINFO_SID, WDGM_E_INV_POINTER); /** [DD-WDGM256-MGC01-V1] */
	.d2line		1665
.Llo401:
	diab.li		r3,13		# VersionInfo=r3
	diab.li		r4,1
	diab.li		r5,2
	diab.li		r6,20
	bl		Det_ReportError
	b		.L934
.L935:
#     }
#     else /** [DD-WDGM110-MGC01-V1] */
#     {
#         VersionInfo->vendorID = WDGM_VENDOR_ID;
	.d2line		1669
.Llo402:
	diab.li		r0,31
	sth		r0,0(r3)		# VersionInfo=r3
#         VersionInfo->moduleID = WDGM_MODULE_ID;
	.d2line		1670
	diab.li		r0,13
	sth		r0,2(r3)		# VersionInfo=r3
#         VersionInfo->sw_major_version = (uint8)WDGM_SW_MAJOR_VERSION;
	.d2line		1671
	diab.li		r0,7
	stb		r0,4(r3)		# VersionInfo=r3
#         VersionInfo->sw_minor_version = (uint8)WDGM_SW_MINOR_VERSION;
	.d2line		1672
	diab.li		r0,2
	stb		r0,5(r3)		# VersionInfo=r3
#         VersionInfo->sw_patch_version = (uint8)WDGM_SW_PATCH_VERSION;
	.d2line		1673
	diab.li		r0,1
	stb		r0,6(r3)		# VersionInfo=r3
.L934:
#     }
# }
	.d2line		1675
	.d2epilogue_begin
.Llo403:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1549:
	.type		WdgM_GetVersionInfo,@function
	.size		WdgM_GetVersionInfo,.-WdgM_GetVersionInfo
# Number of nodes = 42

# Allocations for WdgM_GetVersionInfo
#	?a4		VersionInfo
# FUNC(Std_ReturnType, WDGM_CODE) WdgM_CheckpointReached /** [DD-WDGM263-MGC01-V1] */
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1724,33
#$$ld
.L1557:

#$$bf	WdgM_CheckpointReached,interprocedural,rasave,nostackparams
	.globl		WdgM_CheckpointReached
	.d2_cfa_start __cie
WdgM_CheckpointReached:
.Llo404:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# SEID=r31 SEID=r3
	mr		r30,r4		# CheckpointID=r30 CheckpointID=r4
	.d2prologue_end
# (
#     VAR(WdgM_SupervisedEntityIdType, AUTOMATIC) SEID,
#     VAR(WdgM_CheckpointIdType, AUTOMATIC) CheckpointID
# )
# {
#     WdgM_LocalstatModeDepType* modeDep_SE_Entry = NULL_PTR;
	.d2line		1730
	diab.li		r0,0
	stw		r0,12(r1)
#     WdgM_CheckpointType* cPEntry = NULL_PTR;
	.d2line		1731
	stw		r0,8(r1)
#     Std_ReturnType retVal = E_NOT_OK;
	.d2line		1732
	diab.li		r29,1		# retVal=r29
#   #if (WDGM_DEV_ERROR_DETECT == STD_ON)  /* not used varaible generates compiler warning */
#     uint8 detErrorId; /* Store DET error code. Report should be taken out of exclusive area. */
#   #endif
# 
#     /* enter exclusive area to block WdgM_SetMode() operation between verifying parameters and processing request */
#     SchM_Enter_WdgM_EaActStatusProtect();
	.d2line		1738
.Llo409:
	bl		SchM_Enter_WdgM_EaActStatusProtect
# 
#     if (E_NOT_OK == WdgMAssertInitialized())
	.d2line		1740
.Llo405:
	bl		WdgMAssertInitialized
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L951	# ne
#     {
#   #if (WDGM_DEV_ERROR_DETECT == STD_ON)
#         detErrorId = WDGM_E_NO_INIT; /** [DD-WDGM279-MGC01-V1] */
	.d2line		1743
.Llo406:
	diab.li		r28,16		# detErrorId=r28
.Llo413:
	b		.L952
.L951:
#   #endif
#     }
#     else if (E_NOT_OK == WdgMAssertInvalidSEID(SEID))
	.d2line		1746
.Llo414:
	mr		r3,r31		# SEID=r3 SEID=r31
	bl		WdgMAssertInvalidSEID
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L953	# ne
#     {
#   #if (WDGM_DEV_ERROR_DETECT == STD_ON)
#         detErrorId = WDGM_E_PARAM_SEID; /** [DD-WDGM278-MGC01-V1] */
	.d2line		1749
	diab.li		r28,19		# detErrorId=r28
.Llo415:
	b		.L952
.L953:
#   #endif
#     }
#     else if (E_NOT_OK == WdgM_GetSEID_Binary(WdgM_CurrentMode, SEID, (WdgM_LocalstatModeDepType**)&modeDep_SE_Entry))
	.d2line		1752
.Llo416:
	diab.addi		r5,r1,12
	mr		r4,r31		# SEID=r4 SEID=r31
	lis		r3,WdgM_CurrentMode@ha
	lbz		r3,WdgM_CurrentMode@l(r3)
	bl		WdgM_GetSEID_Binary
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L955	# ne
#     {
#   #if (WDGM_DEV_ERROR_DETECT == STD_ON)
#         detErrorId = WDGM_E_SEDEACTIVATED; /** [DD-WDGM208-MGC01-V1], [DD-WDGM319-MGC01-V1] */
	.d2line		1755
.Llo407:
	diab.li		r28,25		# detErrorId=r28
.Llo417:
	b		.L952
.L955:
#   #endif
#     }
#     else if (E_NOT_OK == WdgM_GetCPID_Binary(modeDep_SE_Entry, CheckpointID, (WdgM_CheckpointType**)&cPEntry))
	.d2line		1758
.Llo418:
	lwz		r3,12(r1)
	diab.addi		r5,r1,8
	mr		r4,r30		# CheckpointID=r4 CheckpointID=r30
	bl		WdgM_GetCPID_Binary
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L957	# ne
#     {
#   #if (WDGM_DEV_ERROR_DETECT == STD_ON)
#         detErrorId = WDGM_E_CPID; /** [DD-WDGM284-MGC01-V1] [DD-WDGM297-MGC01-V1]*/
	.d2line		1761
.Llo408:
	diab.li		r28,22		# detErrorId=r28
.Llo419:
	b		.L952
.L957:
	.section	.invalid_TEXT,,c
.L1568:
#   #endif
#     }
#     /*The WdgM is initialized, the supervised entity ID is valid and it is active in the current mode,
#     and the checkpoint is the part of the supervised entity*/
#     else
#     {
#         WdgM_SupervisedEntityMonitorType* supervisedEntityMT_Entry = modeDep_SE_Entry->WdgM_SupervisedEntityMonitorEntryPtr;
	.d2line		1768
.Llo410:
	lwz		r3,12(r1)
	lwz		r31,4(r3)		# supervisedEntityMT_Entry=r31
.Llo422:
	mr		r31,r31		# supervisedEntityMT_Entry=r31 supervisedEntityMT_Entry=r31
#         retVal = E_OK;
	.d2line		1769
	diab.li		r29,0		# retVal=r29
#         WdgM_UpdateCheckpointAliveCounter(cPEntry); /** [DD-WDGM321-MGC01-V1] */
	.d2line		1770
.Llo411:
	lwz		r3,8(r1)
	bl		WdgM_UpdateCheckpointAliveCounter
#         /* Doesn't need to check that if the WdgM_DeadlineMonitorEntryPtr is NULL_PTR,
#          * because it is ensured from the generator, that if it is (No deadline supervisions configured in
#          * in the current mode), then the cPEntry->WdgM_NumberOfDeadlineStartPointers and the
#          * cPEntry->WdgM_NumberOfDeadlineEndPointers values will be also 0.
#          */
#         if (WDGM_CORRECT == supervisedEntityMT_Entry->WdgM_DeadlineSupervisionResult)
	.d2line		1776
	lwz		r0,8(r31)		# supervisedEntityMT_Entry=r31
	se_cmpi		r0,0
	bc		0,2,.L959	# ne
	.section	.invalid_TEXT,,c
.L1574:
#         {
#             uint16 idx = 0;
	.d2line		1778
	diab.li		r3,0		# idx=r3
#             /* Deadline Supervision: Start all the deadline supervisions where the checkpoint is a start point*/
#             for (idx = (uint16)0U; idx < cPEntry->WdgM_NumberOfDeadlineStartPointers; idx++)
.L960:
	.d2line		1780
.Llo425:
	rlwinm		r5,r3,0,16,31		# idx=r3
	lwz		r4,8(r1)
	lhz		r0,30(r4)
	se_cmp		r5,r0
	bc		0,0,.L962	# ge
#             {
#                 /* [DD-WDGM228-MGC01-V2] */
#                 cPEntry->WdgM_DeadlineSupervisionStartRefTablePtr[idx]->WdgM_DeadlineMonitorEntryPtr->WdgM_DeadlineTimerStatus = WDGM_START;
	.d2line		1783
	diab.li		r0,1
	lwz		r4,8(r1)
	lwz		r4,8(r4)
	rlwinm		r5,r3,2,14,29		# idx=r3
	lwzx		r4,r4,r5
	lwz		r4,20(r4)
	stw		r0,8(r4)
#             }
	.d2line		1784
	diab.addi		r5,r3,1		# idx=r3
	se_addi		r3,1		# idx=r3 idx=r3
	b		.L960
.L962:
#             /* Deadline Supervision: Stop and evaluate all the deadline supervisions where
#             the checkpoint is an end point, and it had been started before*/
#             for (idx = 0; idx < cPEntry->WdgM_NumberOfDeadlineEndPointers; idx++)
	.d2line		1787
	diab.li		r30,0		# idx=r30
.L963:
.Llo426:
	rlwinm		r0,r30,0,16,31		# idx=r30
.Llo427:
	lwz		r3,8(r1)		# idx=r3
	lhz		r3,32(r3)		# idx=r3 idx=r3
	se_cmp		r0,r3		# idx=r3
	bc		0,0,.L959	# ge
#             {
#                 if (WDGM_START ==
	.d2line		1789
	lwz		r3,8(r1)		# idx=r3
	lwz		r3,12(r3)		# idx=r3 idx=r3
	rlwinm		r0,r30,2,14,29		# idx=r30
	lwzx		r3,r3,r0		# idx=r3 idx=r3
	lwz		r3,20(r3)		# idx=r3 idx=r3
	lwz		r0,8(r3)		# idx=r3
	se_cmpi		r0,1
	bc		0,2,.L966	# ne
#                     cPEntry->WdgM_DeadlineSupervisionEndRefTablePtr[idx]->WdgM_DeadlineMonitorEntryPtr->WdgM_DeadlineTimerStatus)
#                 {
#                     WdgM_UpdateActualDeadlineTime(cPEntry->WdgM_DeadlineSupervisionEndRefTablePtr[idx]->WdgM_OsCounter,
	.d2line		1792
	lwz		r4,8(r1)
	lwz		r3,12(r4)		# idx=r3
	rlwinm		r0,r30,2,14,29		# idx=r30
	lwzux		r5,r3,r0		# idx=r3
	lwz		r3,16(r5)		# idx=r3
	lwz		r4,12(r4)
	lwzx		r4,r4,r0
	lwz		r4,20(r4)
	bl		WdgM_UpdateActualDeadlineTime
#                                                  cPEntry->WdgM_DeadlineSupervisionEndRefTablePtr[idx]->WdgM_DeadlineMonitorEntryPtr);
#                     cPEntry->WdgM_DeadlineSupervisionEndRefTablePtr[idx]->WdgM_DeadlineMonitorEntryPtr->WdgM_DeadlineTimerStatus = WDGM_STOP;
	.d2line		1794
	diab.li		r5,0
	lwz		r3,8(r1)		# idx=r3
	lwz		r3,12(r3)		# idx=r3 idx=r3
	rlwinm		r0,r30,2,14,29		# idx=r30
	lwzux		r4,r3,r0		# idx=r3
	lwz		r3,20(r4)		# idx=r3
	stw		r5,8(r3)		# idx=r3
#                     /*[DD-WDGM322-MGC01-V1]*/
#                     WdgM_DeadlineSupervision(modeDep_SE_Entry, cPEntry->WdgM_DeadlineSupervisionEndRefTablePtr[idx]);
	.d2line		1796
	lwz		r3,8(r1)		# idx=r3
	lwz		r3,12(r3)		# idx=r3 idx=r3
	lwzx		r4,r3,r0		# idx=r3
	lwz		r3,12(r1)		# idx=r3
	bl		WdgM_DeadlineSupervision
.L966:
#                 }
#             }
	.d2line		1798
	diab.addi		r0,r30,1		# idx=r30
	se_addi		r30,1		# idx=r30 idx=r30
	b		.L963
	.section	.invalid_TEXT,,c
.L1575:
.L959:
# 
#             /*If the checkpoint is neither start nor end point the result will not updated*/ /*[DD-WDGM299-MGC01-V1]*/
#         }
#         /* If the checkpoint does not part of any logical supervision then the WdgM_LogicalSupervisionMonitorPtr
#          * of the checkpoint will be a NULL_PTR, so at this point it is checked that whether is the checkpoint
#          * is a part of any logical transition in the current mode or not
#          */
#         if (cPEntry->WdgM_LogicalSupervisionMonitorPtr != NULL_PTR) /** [DD-WDGM297-MGC01-V1] */
	.d2line		1806
	lwz		r3,8(r1)		# idx=r3
	lwz		r0,24(r3)		# idx=r3
	se_cmpi		r0,0
	bc		1,2,.L952	# eq
#         {
#             /*If the last result was WDGM_INCORRECT then it shall not be overwritten*/
#             if (WDGM_CORRECT == supervisedEntityMT_Entry->WdgM_LogicalSupervisionResult)
	.d2line		1809
.Llo428:
	lwz		r0,4(r31)		# supervisedEntityMT_Entry=r31
	se_cmpi		r0,0
	bc		0,2,.L952	# ne
#             {
#                 /** [DD-WDGM323-MGC01-V1]*/
#                 WdgM_CheckLogicalSupervisedEntities(cPEntry);
	.d2line		1812
.Llo423:
	lwz		r3,8(r1)		# idx=r3
	bl		WdgM_CheckLogicalSupervisedEntities
	.section	.invalid_TEXT,,c
.L1569:
.L952:
#             }
#         }
# 
#     }
# 
#     /* Leave exclusive area */
#     SchM_Exit_WdgM_EaActStatusProtect();
	.d2line		1819
.Llo420:
	bl		SchM_Exit_WdgM_EaActStatusProtect
# 
#   #if (WDGM_DEV_ERROR_DETECT == STD_ON)
#     /* error reporting outside exclusive area */
#     if (E_NOT_OK == retVal)
	.d2line		1823
	rlwinm		r3,r29,0,24,31		# idx=r3 retVal=r29
.Llo429:
	se_cmpi		r3,1		# idx=r3
	bc		0,2,.L969	# ne
#     {
#         WDGM_DET_REPORT(WDGM_CHECKPOINTREACHED_SID, detErrorId);
	.d2line		1825
.Llo424:
	rlwinm		r6,r28,0,24,31		# detErrorId=r28
	diab.li		r3,13		# idx=r3
	diab.li		r4,1
	diab.li		r5,14
	bl		Det_ReportError
.L969:
#     }
#   #endif
# 
#     return retVal;
	.d2line		1829
.Llo421:
	rlwinm		r3,r29,0,24,31		# idx=r3 retVal=r29
# }
	.d2line		1830
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo412:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1558:
	.type		WdgM_CheckpointReached,@function
	.size		WdgM_CheckpointReached,.-WdgM_CheckpointReached
# Number of nodes = 251

# Allocations for WdgM_CheckpointReached
#	?a4		SEID
#	?a5		CheckpointID
#	SP,12		modeDep_SE_Entry
#	SP,8		cPEntry
#	?a6		retVal
#	?a7		detErrorId
#	?a8		supervisedEntityMT_Entry
#	?a9		idx
# FUNC(Std_ReturnType, WDGM_CODE) WdgM_UpdateAliveCounter /** [DD-WDGM155-MGC01-V1] */
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1682,33
#$$ld
.L1582:

#$$bf	WdgM_UpdateAliveCounter,interprocedural,rasave,nostackparams
	.globl		WdgM_UpdateAliveCounter
	.d2_cfa_start __cie
WdgM_UpdateAliveCounter:
.Llo430:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# SEID=r31 SEID=r3
	.d2prologue_end
# (
#     VAR(WdgM_SupervisedEntityIdType, AUTOMATIC) SEID
# )
# {
#     uint16 indexFound = 0;
	.d2line		1687
	diab.li		r0,0
	sth		r0,8(r1)
#     Std_ReturnType returnValue = E_NOT_OK;
	.d2line		1688
	diab.li		r29,1		# returnValue=r29
#     /*WdgM_CurrenMode is pushed to stack in order to preserve
#     the consistency, because it is not protected by exclusive area*/
#     WdgM_ModeType currentModePushedToStack = WdgM_CurrentMode;
	.d2line		1691
	lis		r3,WdgM_CurrentMode@ha
.Llo431:
	lbz		r30,WdgM_CurrentMode@l(r3)
.Llo435:
	mr		r30,r30		# currentModePushedToStack=r30 currentModePushedToStack=r30
#     WDGM_DET_REPORT(WDGM_UPDATEALIVECOUNTER_SID, WDGM_E_DEPRECATED); /** [DD-WDGM290-MGC01-V1] */
	.d2line		1692
	diab.li		r3,13
	diab.li		r4,1
	diab.li		r5,4
	diab.li		r6,23
	bl		Det_ReportError
#     if (E_NOT_OK == WdgMAssertInitialized())
	.d2line		1693
	bl		WdgMAssertInitialized
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L940	# ne
#     {
#         WDGM_DET_REPORT(WDGM_UPDATEALIVECOUNTER_SID, WDGM_E_NO_INIT); /** [DD-WDGM028-MGC01-V1] */
	.d2line		1695
.Llo432:
	diab.li		r3,13
	diab.li		r4,1
	diab.li		r5,4
	diab.li		r6,16
	bl		Det_ReportError
	b		.L941
.L940:
#     }
#   /*This check is done in the WdgM_CheckpointReached anyway, so here it can be disabled if DET is OFF to reduce runtime */
#   #if (WDGM_DEV_ERROR_DETECT == STD_ON)
#     else if (E_NOT_OK == WdgMAssertInvalidSEID(SEID))
	.d2line		1699
	mr		r3,r31		# SEID=r3 SEID=r31
	bl		WdgMAssertInvalidSEID
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L942	# ne
#     {
#         WDGM_DET_REPORT(WDGM_UPDATEALIVECOUNTER_SID, WDGM_E_PARAM_SEID); /** [DD-WDGM027-MGC01-V1] */
	.d2line		1701
	diab.li		r3,13
	diab.li		r4,1
	diab.li		r5,4
	diab.li		r6,19
	bl		Det_ReportError
	b		.L941
.L942:
#     }
#   #endif /* (WDGM_DEV_ERROR_DETECT == STD_ON) */
#     else if (E_NOT_OK == WdgMAssertAmbiguous(SEID, currentModePushedToStack, &indexFound))
	.d2line		1704
	diab.addi		r5,r1,8
	mr		r3,r31		# SEID=r3 SEID=r31
	mr		r4,r30		# currentModePushedToStack=r4 currentModePushedToStack=r30
	bl		WdgMAssertAmbiguous
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L944	# ne
#     {
#         WDGM_DET_REPORT(WDGM_UPDATEALIVECOUNTER_SID, WDGM_E_AMBIGUOUS); /** [DD-WDGM320-MGC01-V1] */
	.d2line		1706
	diab.li		r3,13
	diab.li		r4,1
	diab.li		r5,4
	diab.li		r6,24
	bl		Det_ReportError
	b		.L941
.L944:
#     }
#     else
#     {
#         /* The index of the alive supervision corresponding to SEId has been determined in the WdgMAssetAmbigous
#          * function, and passed back in the indexFound parameter. If the ID is invalid the status shall be
#          * E_NOT_OK because of the return value described in WDGM155 in the other case it shall be E_OK
#          */
#         /** [DD-WDGM318-MGC01-V1] */
#         returnValue = WdgM_CheckpointReached(SEID, WDGM_GET_ALIVE_CHECKPOINT_ID(currentModePushedToStack, indexFound));
	.d2line		1715
	rlwinm		r30,r30,0,24,31		# currentModePushedToStack=r30 currentModePushedToStack=r30
	lis		r3,WdgM_CurrentConfigPtr@ha
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)
	lwz		r3,0(r3)
	rlwinm		r0,r30,5,0,26		# currentModePushedToStack=r30
	se_slwi		r30,3		# currentModePushedToStack=r30 currentModePushedToStack=r30
	subf		r30,r30,r0		# currentModePushedToStack=r30 currentModePushedToStack=r30
.Llo436:
	lwzx		r3,r3,r30
	lhz		r0,8(r1)
	rlwinm		r0,r0,4,12,27
	lwzx		r3,r3,r0
	lhz		r4,34(r3)
	mr		r3,r31		# SEID=r3 SEID=r31
	bl		WdgM_CheckpointReached
	mr		r29,r3		# returnValue=r29 returnValue=r3
.L941:
#     }
#     return (returnValue);
	.d2line		1717
.Llo433:
	rlwinm		r3,r29,0,24,31		# returnValue=r29
# }
	.d2line		1718
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo434:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1583:
	.type		WdgM_UpdateAliveCounter,@function
	.size		WdgM_UpdateAliveCounter,.-WdgM_UpdateAliveCounter
# Number of nodes = 107

# Allocations for WdgM_UpdateAliveCounter
#	?a4		SEID
#	?a5		$$138
#	SP,8		indexFound
#	?a6		returnValue
#	?a7		currentModePushedToStack
# FUNC(Std_ReturnType, WDGM_CODE) WdgM_GetLocalStatus /**\Requirements{[SWS_WdgM_00169]} */
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1837,33
#$$ld
.L1593:

#$$bf	WdgM_GetLocalStatus,interprocedural,rasave,nostackparams
	.globl		WdgM_GetLocalStatus
	.d2_cfa_start __cie
WdgM_GetLocalStatus:
.Llo437:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r8,r3		# SEID=r8 SEID=r3
	mr		r30,r4		# Status=r30 Status=r4
	.d2prologue_end
# (
#     VAR(WdgM_SupervisedEntityIdType, AUTOMATIC) SEID,
#     P2VAR(WdgM_LocalStatusType, AUTOMATIC, WDGM_APPL_DATA) Status
# )
# {
#     Std_ReturnType returnValue = E_NOT_OK;
	.d2line		1843
	diab.li		r31,1		# returnValue=r31
#     if (E_NOT_OK == WdgMAssertInitialized())
	.d2line		1844
.Llo448:
	bl		WdgMAssertInitialized
.Llo438:
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L982	# ne
#     {
#         WDGM_DET_REPORT(WDGM_GETLOCALSTATUS_SID, WDGM_E_NO_INIT); /** [DD-WDGM173-MGC01-V1] */
	.d2line		1846
.Llo445:
	diab.li		r3,13
.Llo446:
	diab.li		r4,1
	diab.li		r5,12
	diab.li		r6,16
	bl		Det_ReportError
	b		.L983
.L982:
#     }
#     else if (E_NOT_OK == WdgMAssertInvalidSEID(SEID))
	.d2line		1848
.Llo439:
	mr		r3,r8		# SEID=r3 SEID=r8
	bl		WdgMAssertInvalidSEID
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L984	# ne
#     {
#         WDGM_DET_REPORT(WDGM_GETLOCALSTATUS_SID, WDGM_E_PARAM_SEID); /** [DD-WDGM172-MGC01-V1] */
	.d2line		1850
.Llo440:
	diab.li		r3,13
	diab.li		r4,1
	diab.li		r5,12
	diab.li		r6,19
	bl		Det_ReportError
	b		.L983
.L984:
#     }
#     else if (Status == NULL_PTR)
	.d2line		1852
.Llo441:
	se_cmpi		r30,0		# Status=r30
	bc		0,2,.L986	# ne
#     {
#         WDGM_DET_REPORT(WDGM_GETLOCALSTATUS_SID, WDGM_E_INV_POINTER);  /** [DD-WDGM257-MGC01-V1] */
	.d2line		1854
.Llo442:
	diab.li		r3,13
	diab.li		r4,1
	diab.li		r5,12
	diab.li		r6,20
	bl		Det_ReportError
	b		.L983
.L986:
	.section	.invalid_TEXT,,c
.L1601:
#     }
#     else
#     {
#         WdgM_LocalstatModeDepType* modeDep_SE_Entry = NULL_PTR;
	.d2line		1858
.Llo443:
	diab.li		r31,0		# returnValue=r31
.Llo449:
	stw		r31,8(r1)		# returnValue=r31
#         returnValue = E_OK;
#         if (E_OK == WdgM_GetSEID_Binary(WdgM_CurrentMode, SEID, (WdgM_LocalstatModeDepType**)&modeDep_SE_Entry))
	.d2line		1860
	diab.addi		r5,r1,8
	mr		r4,r8		# SEID=r4 SEID=r8
	lis		r3,WdgM_CurrentMode@ha
	lbz		r3,WdgM_CurrentMode@l(r3)
	bl		WdgM_GetSEID_Binary
.Llo444:
	e_andi.		r3,r3,255
	bc		0,2,.L988	# ne
#         {
#             /** [DD-WDGM171-MGC01-V1] */
#             *Status = modeDep_SE_Entry->WdgM_SupervisedEntityMonitorEntryPtr->WdgM_LocalSupervisionStatus;
	.d2line		1863
	lwz		r3,8(r1)
	lwz		r3,4(r3)
	lwz		r0,0(r3)
	stw		r0,0(r30)		# Status=r30
	b		.L983
.L988:
#         }
#         else
#         {
#             *Status = WDGM_LOCAL_STATUS_DEACTIVATED;
	.d2line		1867
	diab.li		r0,0
	stw		r0,0(r30)		# Status=r30
	.section	.invalid_TEXT,,c
.L1602:
.L983:
#         }
#     }
#     return returnValue;
	.d2line		1870
.Llo447:
	rlwinm		r3,r31,0,24,31		# returnValue=r31
# }
	.d2line		1871
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo450:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1594:
	.type		WdgM_GetLocalStatus,@function
	.size		WdgM_GetLocalStatus,.-WdgM_GetLocalStatus
# Number of nodes = 87

# Allocations for WdgM_GetLocalStatus
#	?a4		SEID
#	?a5		Status
#	?a6		returnValue
#	SP,8		modeDep_SE_Entry
# FUNC(Std_ReturnType, WDGM_CODE) WdgM_GetGlobalStatus /** [DD-WDGM175-MGC01-V1] [DD-WDGM176-MGC01-V1]*/
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1878,33
#$$ld
.L1608:

#$$bf	WdgM_GetGlobalStatus,interprocedural,rasave,nostackparams
	.globl		WdgM_GetGlobalStatus
	.d2_cfa_start __cie
WdgM_GetGlobalStatus:
.Llo451:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr.		r3,r3		# Status=?a4 Status=r3
	.d2prologue_end
# (
#     P2VAR(WdgM_GlobalStatusType, AUTOMATIC, WDGM_APPL_DATA) Status
# )
# {
#     Std_ReturnType returnValue = E_NOT_OK;
	.d2line		1883
	diab.li		r31,1		# returnValue=r31
#     if (Status == NULL_PTR)
	.d2line		1884
	bc		0,2,.L996	# ne
#     {
#         /** [DD-WDGM344-MGC01-V1], [DD-WDGM258-MGC01-V1] */
#         WDGM_DET_REPORT(WDGM_GETGLOBALSTATUS_SID, WDGM_E_INV_POINTER);
	.d2line		1887
.Llo452:
	diab.li		r3,13		# Status=r3
	diab.li		r4,1
	diab.li		r5,13
	diab.li		r6,20
	bl		Det_ReportError
	b		.L997
.L996:
#     }
#     else
#     {
#         *Status = (WdgM_GlobalStatusType)WdgM_GlobalStatus;
	.d2line		1891
.Llo453:
	lis		r4,WdgM_GlobalStatus@ha
	lwz		r0,WdgM_GlobalStatus@l(r4)
	stw		r0,0(r3)		# Status=r3
#         returnValue = E_OK;
	.d2line		1892
	diab.li		r31,0		# returnValue=r31
.L997:
#     }
#     return returnValue;
	.d2line		1894
.Llo454:
	rlwinm		r3,r31,0,24,31		# Status=r3 returnValue=r31
# }
	.d2line		1895
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo455:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1609:
	.type		WdgM_GetGlobalStatus,@function
	.size		WdgM_GetGlobalStatus,.-WdgM_GetGlobalStatus
# Number of nodes = 26

# Allocations for WdgM_GetGlobalStatus
#	?a4		Status
#	?a5		returnValue
# FUNC(void, WDGM_CODE) WdgM_PerformReset(void) /** [DD-WDGM264-MGC01-V1] */
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1901,23
#$$ld
.L1617:

#$$bf	WdgM_PerformReset,interprocedural,rasave,nostackparams
	.globl		WdgM_PerformReset
	.d2_cfa_start __cie
WdgM_PerformReset:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     if (E_NOT_OK == WdgMAssertInitialized())
	.d2line		1903
	bl		WdgMAssertInitialized
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L1001	# ne
#     {
#         WDGM_DET_REPORT(WDGM_PERFORMRESET_SID, WDGM_E_NO_INIT); /** [DD-WDGM270-MGC01-V1] */
	.d2line		1905
	diab.li		r3,13
	diab.li		r4,1
	diab.li		r5,15
	diab.li		r6,16
	bl		Det_ReportError
	b		.L1000
.L1001:
#     }
#     else if (FALSE == WdgM_ResetRequested) /** [DD-WDGM233-MGC01-V1] */
	.d2line		1907
	lis		r3,WdgM_ResetRequested@ha
	lbz		r0,WdgM_ResetRequested@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L1000	# ne
	.section	.invalid_TEXT,,c
.L1620:
#     {
#         uint8 idx;
#         WdgM_ModeType currentModePushedToStack;
# 
#         /* Block WdgM_SetMode() and triggering wdg with mode dependent parameters */
#         WdgM_ResetRequested = TRUE;
	.d2line		1913
	diab.li		r0,1
	lis		r3,WdgM_ResetRequested@ha
	e_add16i		r3,r3,WdgM_ResetRequested@l
	stb		r0,0(r3)
#         /* WdgM_CurrenMode is pushed to stack in order to preserve the
#         consistency, because it is not protected by exclusive area */
#         currentModePushedToStack = WdgM_CurrentMode;
	.d2line		1916
	lis		r3,WdgM_CurrentMode@ha
	lbz		r30,WdgM_CurrentMode@l(r3)
.Llo458:
	mr		r30,r30		# currentModePushedToStack=r30 currentModePushedToStack=r30
# 
#         /* Watchdog Manager shall set the trigger condition for all configured Watchdog Drivers to 0 */
#         for (idx = (uint8)0U; idx < WDGM_GET_WDGM_TRIGGER_COUNT(currentModePushedToStack); idx++)
	.d2line		1919
	diab.li		r31,0		# idx=r31
.L1004:
.Llo456:
	rlwinm		r0,r30,0,24,31		# currentModePushedToStack=r30
	rlwinm		r4,r31,0,24,31		# idx=r31
	lis		r3,WdgM_CurrentConfigPtr@ha
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)
	lwz		r3,0(r3)
	rlwinm		r5,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r5
	se_add		r3,r0
	lbz		r0,23(r3)
	se_cmp		r4,r0
	bc		0,0,.L1000	# ge
#         {
#             if (WDGIF_OFF_MODE != WDGM_GET_WDGM_MODE(currentModePushedToStack, idx))
	.d2line		1921
	rlwinm		r0,r30,0,24,31		# currentModePushedToStack=r30
	lis		r3,WdgM_CurrentConfigPtr@ha
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)
	lwz		r3,0(r3)
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r4
	se_add		r3,r0
	lwz		r3,12(r3)
	rlwinm		r4,r31,3,21,28		# idx=r31
	lwzx		r0,r3,r4
	se_cmpi		r0,0
	bc		1,2,.L1007	# eq
#             {
#                 /* Reference cycle */
#                 WdgIf_SetTriggerCondition(WDGM_GET_WDG(currentModePushedToStack, idx), 0); /*[DD-WDGM232-MGC01-V1]*/
	.d2line		1924
	rlwinm		r0,r30,0,24,31		# currentModePushedToStack=r30
	lis		r3,WdgM_CurrentConfigPtr@ha
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)
	lwz		r4,0(r3)
	rlwinm		r3,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r3
	se_add		r4,r0
	lwz		r0,12(r4)
	rlwinm		r3,r31,3,21,28		# idx=r31
	se_add		r3,r0
	lbz		r3,6(r3)
	diab.li		r4,0
	bl		WdgIf_SetTriggerCondition
.L1007:
#             }
#         }
	.d2line		1926
	diab.addi		r3,r31,1		# idx=r31
	se_addi		r31,1		# idx=r31 idx=r31
	b		.L1004
	.section	.invalid_TEXT,,c
.L1621:
.L1000:
#     }
#     else
#     {
#         /*There is no DET error, but the reset had been already requested*/
#     }
# }
	.d2line		1932
	.d2epilogue_begin
.Llo457:
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
.L1618:
	.type		WdgM_PerformReset,@function
	.size		WdgM_PerformReset,.-WdgM_PerformReset
# Number of nodes = 88

# Allocations for WdgM_PerformReset
#	?a4		$$141
#	?a5		$$140
#	?a6		$$139
#	?a7		idx
#	?a8		currentModePushedToStack
# FUNC(Std_ReturnType, WDGM_CODE) WdgM_GetFirstExpiredSEID(
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1938,33
#$$ld
.L1630:

#$$bf	WdgM_GetFirstExpiredSEID,interprocedural,rasave,nostackparams
	.globl		WdgM_GetFirstExpiredSEID
	.d2_cfa_start __cie
WdgM_GetFirstExpiredSEID:
.Llo459:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr.		r3,r3		# SEID=?a4 SEID=r3
	.d2prologue_end
#     P2VAR(WdgM_SupervisedEntityIdType, AUTOMATIC, WDGM_APPL_DATA) SEID
#     ) /** [DD-WDGM346-MGC01-V1], [DD-WDGM348-MGC01-V1] */
# {
#     Std_ReturnType returnValue = E_NOT_OK;
	.d2line		1942
	diab.li		r31,1		# returnValue=r31
#     if (SEID == NULL_PTR)
	.d2line		1943
	bc		0,2,.L1014	# ne
#     {
#         WDGM_DET_REPORT(WDGM_GETFIRSTEXPIRED_SID, WDGM_E_INV_POINTER); /** [DD-WDGM347-MGC01-V1] */
	.d2line		1945
.Llo460:
	diab.li		r3,13		# SEID=r3
	diab.li		r4,1
	diab.li		r5,16
	diab.li		r6,20
	bl		Det_ReportError
	b		.L1015
.L1014:
	.section	.invalid_TEXT,,c
.L1637:
#     }
#     else /** [DD-WDGM349-MGC01-V1] */
#     {
#         /*WdgM_SeIdLocalStatusExpiredFirst is pushed to stack in order to preserve the
#         consistency, because it is not protected by exclusive area*/
#         uint32 WdgM_SeIdLocalStatusExpiredFirstPushedToStack = WdgM_SeIdLocalStatusExpiredFirst;
	.d2line		1951
.Llo461:
	lis		r4,WdgM_SeIdLocalStatusExpiredFirst@ha		# WdgM_SeIdLocalStatusExpiredFirstPushedToStack=r4
.Llo464:
	lwz		r4,WdgM_SeIdLocalStatusExpiredFirst@l(r4)		# WdgM_SeIdLocalStatusExpiredFirstPushedToStack=r4 WdgM_SeIdLocalStatusExpiredFirstPushedToStack=r4
	mr		r4,r4		# WdgM_SeIdLocalStatusExpiredFirstPushedToStack=r4 WdgM_SeIdLocalStatusExpiredFirstPushedToStack=r4
#         uint16 temp_SeId =
	.d2line		1952
	rlwinm		r0,r4,16,16,31		# temp_SeId=r0 WdgM_SeIdLocalStatusExpiredFirstPushedToStack=r4
.Llo466:
	nor		r0,r0,r0		# WdgM_SeIdLocalStatusExpiredFirstPushedToStack=r0 temp_SeId=r0 temp_SeId=r0
	mr		r0,r0		# temp_SeId=r0 temp_SeId=r0
#             (uint16)~((WdgM_SeIdLocalStatusExpiredFirstPushedToStack & WDGM_FIRST_EXPIRED_SEID_MASK) >> WDGM_SHIFT_16);
#         *SEID = 0U;
	.d2line		1954
	diab.li		r5,0
	sth		r5,0(r3)		# SEID=r3
#         if (temp_SeId == (uint16)(WdgM_SeIdLocalStatusExpiredFirstPushedToStack & WDGM_INVERTED_SEID_MASK))
	.d2line		1955
	rlwinm		r5,r0,0,16,31		# temp_SeId=r0
	mr		r4,r4		# WdgM_SeIdLocalStatusExpiredFirstPushedToStack=r4 WdgM_SeIdLocalStatusExpiredFirstPushedToStack=r4
	rlwinm		r4,r4,0,16,31		# WdgM_SeIdLocalStatusExpiredFirstPushedToStack=r4 WdgM_SeIdLocalStatusExpiredFirstPushedToStack=r4
	se_cmp		r5,r4		# WdgM_SeIdLocalStatusExpiredFirstPushedToStack=r4
	bc		0,2,.L1015	# ne
#         {
#             *SEID = ~temp_SeId;
	.d2line		1957
.Llo465:
	nor		r0,r0,r0		# temp_SeId=r0 temp_SeId=r0 temp_SeId=r0
	sth		r0,0(r3)		# SEID=r3 temp_SeId=r0
#             returnValue = E_OK;
	.d2line		1958
	diab.li		r31,0		# returnValue=r31
	.section	.invalid_TEXT,,c
.L1638:
.L1015:
#         }
#     }
#     return returnValue;
	.d2line		1961
.Llo462:
	rlwinm		r3,r31,0,24,31		# SEID=r3 returnValue=r31
# }
	.d2line		1962
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo463:
	lwz		r0,36(r1)		# temp_SeId=r0
	mtspr		lr,r0		# temp_SeId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1631:
	.type		WdgM_GetFirstExpiredSEID,@function
	.size		WdgM_GetFirstExpiredSEID,.-WdgM_GetFirstExpiredSEID
# Number of nodes = 49

# Allocations for WdgM_GetFirstExpiredSEID
#	?a4		SEID
#	?a5		returnValue
#	?a6		WdgM_SeIdLocalStatusExpiredFirstPushedToStack
#	?a7		temp_SeId
# FUNC(void, WDGM_CODE) WdgM_MainFunction(void) /** [DD-WDGM159-MGC01-V1]*/
	.section	.text_vle
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgM\\ssc\\make\\..\\src\\WdgM.c"
        .d2line         1968,23
#$$ld
.L1647:

#$$bf	WdgM_MainFunction,interprocedural,rasave,nostackparams
	.globl		WdgM_MainFunction
	.d2_cfa_start __cie
WdgM_MainFunction:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     if (E_NOT_OK == WdgMAssertInitialized())
	.d2line		1970
	bl		WdgMAssertInitialized
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L1020	# ne
#     {
#         /** [DD-WDGM292-MGC01-V1], [DD-WDGM039-MGC01-V1] [DD-WDGM223-MGC02-V1]*/
#         WDGM_DET_REPORT(WDGM_MAINFUNCTION_SID, WDGM_E_NO_INIT);
	.d2line		1973
	diab.li		r3,13
	diab.li		r4,1
	diab.li		r5,8
	diab.li		r6,16
	bl		Det_ReportError
	b		.L1019
.L1020:
	.section	.text_vle
.L1651:
#     }
#     else /* [DD-WDGM063-MGC01-V1]*/
#     {
#         uint16 idx;
#         WdgM_GlobalStatusType calculatedGlobalStatus;
#         WdgM_NotifyStatus notification;
# 
#         SchM_Enter_WdgM_EaActStatusProtect();
	.d2line		1981
	bl		SchM_Enter_WdgM_EaActStatusProtect
# 
#         /* Check configured Deadline supervised entities */
#         const WdgM_DeadlineSupervisionType* const deadLineSuperVision = WDGM_GET_DEADLINE_SUPERVISION_TABLE_PTR(WdgM_CurrentMode);
	.d2line		1984
	lis		r3,WdgM_CurrentMode@ha
	lbz		r0,WdgM_CurrentMode@l(r3)
	lis		r3,WdgM_CurrentConfigPtr@ha
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)
	lwz		r3,0(r3)
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r4
	se_add		r3,r0
	lwz		r30,4(r3)
.Llo476:
	mr		r30,r30		# deadLineSuperVision=r30 deadLineSuperVision=r30
#         /* Check configured Deadline supervised entities */ /*[DD-WDGM9011-MGC01-V1]*/
#         for (idx = (uint16)0U; (idx<WDGM_GET_DEADLINE_SUPERVISIONS_COUNT(WdgM_CurrentMode)); idx++)
	.d2line		1986
	diab.li		r31,0		# idx=r31
.L1022:
.Llo467:
	lis		r3,WdgM_CurrentMode@ha
	lbz		r0,WdgM_CurrentMode@l(r3)
	rlwinm		r4,r31,0,16,31		# idx=r31
	lis		r3,WdgM_CurrentConfigPtr@ha
	lwz		r3,WdgM_CurrentConfigPtr@l(r3)
	lwz		r3,0(r3)
	rlwinm		r5,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r5
	se_add		r3,r0
	lhz		r0,18(r3)
	se_cmp		r4,r0
	bc		0,0,.L1024	# ge
#         {
#             if (WDGM_STOP != WdgM_DeadlineSupervisionMonitorTable[idx].WdgM_DeadlineTimerStatus)
	.d2line		1988
	rlwinm		r0,r31,0,16,31		# idx=r31
	lis		r3,(WdgM_DeadlineSupervisionMonitorTable+8)@ha
	e_add16i		r3,r3,(WdgM_DeadlineSupervisionMonitorTable+8)@l
	rlwinm		r4,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r4
	lwzx		r0,r3,r0
	se_cmpi		r0,0
	bc		1,2,.L1025	# eq
#             {
#                 /*Local inline function call is allowed from e. area*/
#                 WdgM_UpdateActualDeadlineTime(deadLineSuperVision->WdgM_OsCounter,
	.d2line		1991
	rlwinm		r0,r31,0,16,31		# idx=r31
	lwz		r4,20(r30)		# deadLineSuperVision=r30
	rlwinm		r3,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r3
	se_add		r4,r0
	lwz		r3,16(r30)		# deadLineSuperVision=r30
	bl		WdgM_UpdateActualDeadlineTime
	b		.L1026
.L1025:
#                                 &deadLineSuperVision->WdgM_DeadlineMonitorEntryPtr[idx]);
#             }
#             else
#             {
#                 WdgM_DeadlineSupervisionMonitorTable[idx].WdgM_DeadlineTimeActual.WdgM_DeadlineTimeInTicks = 0U;
	.d2line		1996
	rlwinm		r4,r31,0,16,31		# idx=r31
	diab.li		r0,0
	lis		r3,WdgM_DeadlineSupervisionMonitorTable@ha
	e_add16i		r3,r3,WdgM_DeadlineSupervisionMonitorTable@l
	rlwinm		r5,r4,4,0,27
	se_slwi		r4,2
	subf		r4,r4,r5
	stwx		r0,r3,r4
#                 WdgM_DeadlineSupervisionMonitorTable[idx].WdgM_DeadlineTimeActual.WdgM_TimeOverflowValue   = 0U;
	.d2line		1997
	lis		r3,(WdgM_DeadlineSupervisionMonitorTable+4)@ha
	e_add16i		r3,r3,(WdgM_DeadlineSupervisionMonitorTable+4)@l
	stwx		r0,r3,r4
.L1026:
#             }
#         }
	.d2line		1999
	diab.addi		r0,r31,1		# idx=r31
	se_addi		r31,1		# idx=r31 idx=r31
	b		.L1022
.L1024:
#         /** [DD-WDGM214-MGC01-V1], [DD-WDGM324-MGC01-V1], [DD-WDGM325-MGC01-V1],
#             [DD-WDGM351-MGC01-V1], [DD-WDGM326-MGC01-V1], [DD-WDGM327-MGC01-V1] */
#         calculatedGlobalStatus = WdgM_CalculateGlobalStatus();
	.d2line		2002
.Llo468:
	bl		WdgM_CalculateGlobalStatus
.Llo469:
	mr		r31,r3		# calculatedGlobalStatus=r31 calculatedGlobalStatus=r3
# 
#         /* Set the global status to the status which calculated */
#         notification = WdgM_SetGlobalStatus(calculatedGlobalStatus); /** [DD-WDGM199-MGC01-V1] */
	.d2line		2005
.Llo470:
	mr		r3,r31		# calculatedGlobalStatus=r3 calculatedGlobalStatus=r31
.Llo471:
	bl		WdgM_SetGlobalStatus
.Llo473:
	mr		r30,r3		# notification=r30 notification=r3
# 
#         SchM_Exit_WdgM_EaActStatusProtect();
	.d2line		2007
.Llo474:
	bl		SchM_Exit_WdgM_EaActStatusProtect
# 
#         /* Send notifications through RTE about Local Status changes if needed*/
#         WdgM_RTENotifLocalStatusChange();
	.d2line		2010
.Llo475:
	bl		WdgM_RTENotifLocalStatusChange
# 
#         /* Send a notification on the corresponding RTE port if it has been changed since the last notification*/
#         WdgM_GlobalStatusNotification(calculatedGlobalStatus, notification);
	.d2line		2013
	mr		r3,r31		# calculatedGlobalStatus=r3 calculatedGlobalStatus=r31
	mr		r4,r30		# notification=r4 notification=r30
	bl		WdgM_GlobalStatusNotification
# 
#         /* This function shall be called periodically */
#         WdgM_TriggerWatchdogs(); /** [DD-WDGM328-MGC01-V1] */
	.d2line		2016
	bl		WdgM_TriggerWatchdogs
	.section	.text_vle
.L1652:
.L1019:
#     }
# }
	.d2line		2018
	.d2epilogue_begin
.Llo472:
	lmw		r30,24(r1)		# offset r1+24  0x18
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
.L1648:
	.type		WdgM_MainFunction,@function
	.size		WdgM_MainFunction,.-WdgM_MainFunction
# Number of nodes = 124

# Allocations for WdgM_MainFunction
#	?a4		$$147
#	?a5		$$146
#	?a6		$$145
#	?a7		$$144
#	?a8		$$143
#	?a9		$$142
#	?a10		idx
#	?a11		calculatedGlobalStatus
#	?a12		notification
#	?a13		deadLineSuperVision

# Allocations for module
	.section	.text_vle
	.0byte		.L1663
	.section	.text_vle
	.0byte		.L1669
	.section	.invalid_BSS,,b
	.0byte		.L1673
	.section	.invalid_DATA,,d
	.type		WdgM_ResetRequested,@object
	.size		WdgM_ResetRequested,1
	.align		0
WdgM_ResetRequested:
	.byte		0
	.section	.invalid_DATA,,d
	.type		WdgM_ExpiredSupervisionCyclesCounter,@object
	.size		WdgM_ExpiredSupervisionCyclesCounter,1
	.align		0
WdgM_ExpiredSupervisionCyclesCounter:
	.byte		0
	.section	.invalid_DATA,,d
	.type		WdgM_CurrentMode,@object
	.size		WdgM_CurrentMode,1
	.align		0
WdgM_CurrentMode:
	.byte		0
	.section	.invalid_DATA,,d
	.type		WdgM_CurrentConfigPtr,@object
	.size		WdgM_CurrentConfigPtr,4
	.align		2
WdgM_CurrentConfigPtr:
	.long		0
	.section	.invalid_DATA,,d
	.type		WdgM_GlobalStatus,@object
	.size		WdgM_GlobalStatus,4
	.align		2
WdgM_GlobalStatus:
	.long		0
	.section	.invalid_DATA,,d
	.type		WdgM_SeIdLocalStatusExpiredFirst,@object
	.size		WdgM_SeIdLocalStatusExpiredFirst,4
	.align		2
WdgM_SeIdLocalStatusExpiredFirst:
	.long		0
	.section	.text_vle
#$$ld
.L5:
.L1778:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgIf\\ssc\\make\\..\\inc\\WdgIf_Types.h"
.L1769:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L1764:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Wdg\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Wdg_Channel.h"
.L1701:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgM\\ssc\\make\\..\\inc\\WdgM_Types.h"
.L1670:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgM\\ssc\\make\\..\\inc\\WdgM.h"
.L1664:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares\\make\\..\\inc\\Rte_WdgM.h"
.L1649:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgM\\ssc\\make\\..\\src\\WdgM.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L1042:
.L1050:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgM\\ssc\\make\\..\\src\\WdgM.c"
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
	.uleb128	11
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
	.uleb128	12
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
	.uleb128	13
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
	.uleb128	14
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	15
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
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
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
	.uleb128	24
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgM\\ssc\\make\\..\\src\\WdgM.c"
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
.L1039:
	.4byte		.L1040-.L1038
.L1038:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L1044-.L1039
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\WDG\\WdgM\\ssc\\make\\..\\src\\WdgM.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L1041
	.4byte		.L1042
	.4byte		.L1045
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1051:
	.sleb128	2
	.4byte		.L1047-.L1039
	.byte		"WdgM_DemReport"
	.byte		0
	.4byte		.L1050
	.uleb128	166
	.uleb128	36
	.byte		0x1
	.4byte		.L1048
	.4byte		.L1049
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L1050
	.uleb128	166
	.uleb128	36
	.byte		"WdgM_EventId"
	.byte		0
	.4byte		.L1052
	.4byte		.L1056
	.sleb128	3
	.4byte		.L1050
	.uleb128	166
	.uleb128	36
	.byte		"WdgM_EventStatus"
	.byte		0
	.4byte		.L1057
	.4byte		.L1061
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1047:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1067:
	.sleb128	4
	.4byte		.L1063-.L1039
	.byte		"WdgMAssertInitialized"
	.byte		0
	.4byte		.L1050
	.uleb128	183
	.uleb128	46
	.4byte		.L1066
	.byte		0x1
	.4byte		.L1064
	.4byte		.L1065
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1063:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1072:
	.sleb128	4
	.4byte		.L1069-.L1039
	.byte		"WdgMAssertInvalidMode"
	.byte		0
	.4byte		.L1050
	.uleb128	193
	.uleb128	46
	.4byte		.L1066
	.byte		0x1
	.4byte		.L1070
	.4byte		.L1071
	.sleb128	3
	.4byte		.L1050
	.uleb128	193
	.uleb128	46
	.byte		"IsValidMode"
	.byte		0
	.4byte		.L1073
	.4byte		.L1075
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1069:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1080:
	.sleb128	4
	.4byte		.L1077-.L1039
	.byte		"WdgMAssertAmbiguous"
	.byte		0
	.4byte		.L1050
	.uleb128	208
	.uleb128	46
	.4byte		.L1066
	.byte		0x1
	.4byte		.L1078
	.4byte		.L1079
	.sleb128	3
	.4byte		.L1050
	.uleb128	208
	.uleb128	46
	.byte		"SEID"
	.byte		0
	.4byte		.L1081
	.4byte		.L1083
	.sleb128	3
	.4byte		.L1050
	.uleb128	208
	.uleb128	46
	.byte		"CurrentModePushedToStack"
	.byte		0
	.4byte		.L1073
	.4byte		.L1084
	.sleb128	3
	.4byte		.L1050
	.uleb128	208
	.uleb128	46
	.byte		"IndexFound"
	.byte		0
	.4byte		.L1085
	.4byte		.L1087
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1088:
	.sleb128	5
	.4byte		.L1050
	.uleb128	215
	.uleb128	12
	.byte		"idx"
	.byte		0
	.4byte		.L1054
	.4byte		.L1089
.L1090:
	.sleb128	5
	.4byte		.L1050
	.uleb128	215
	.uleb128	17
	.byte		"count"
	.byte		0
	.4byte		.L1054
	.4byte		.L1091
.L1092:
	.sleb128	5
	.4byte		.L1050
	.uleb128	216
	.uleb128	20
	.byte		"returnValue"
	.byte		0
	.4byte		.L1066
	.4byte		.L1093
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1077:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1098:
	.sleb128	4
	.4byte		.L1095-.L1039
	.byte		"WdgMAssertInvalidSEID"
	.byte		0
	.4byte		.L1050
	.uleb128	239
	.uleb128	46
	.4byte		.L1066
	.byte		0x1
	.4byte		.L1096
	.4byte		.L1097
	.sleb128	3
	.4byte		.L1050
	.uleb128	239
	.uleb128	46
	.byte		"SEID"
	.byte		0
	.4byte		.L1081
	.4byte		.L1099
.L1100:
	.sleb128	5
	.4byte		.L1050
	.uleb128	244
	.uleb128	12
	.byte		"idx"
	.byte		0
	.4byte		.L1054
	.4byte		.L1101
.L1102:
	.sleb128	5
	.4byte		.L1050
	.uleb128	245
	.uleb128	20
	.byte		"returnValue"
	.byte		0
	.4byte		.L1066
	.4byte		.L1103
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1095:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1108:
	.sleb128	4
	.4byte		.L1105-.L1039
	.byte		"WdgM_SwitchWdgMode"
	.byte		0
	.4byte		.L1050
	.uleb128	319
	.uleb128	46
	.4byte		.L1066
	.byte		0x1
	.4byte		.L1106
	.4byte		.L1107
	.sleb128	3
	.4byte		.L1050
	.uleb128	319
	.uleb128	46
	.byte		"SwitchMode"
	.byte		0
	.4byte		.L1074
	.4byte		.L1109
.L1110:
	.sleb128	5
	.4byte		.L1050
	.uleb128	324
	.uleb128	20
	.byte		"wdgIfSetModeReturnValue"
	.byte		0
	.4byte		.L1066
	.4byte		.L1111
.L1112:
	.sleb128	5
	.4byte		.L1050
	.uleb128	325
	.uleb128	11
	.byte		"idx"
	.byte		0
	.4byte		.L1059
	.4byte		.L1113
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1105:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1118:
	.sleb128	4
	.4byte		.L1115-.L1039
	.byte		"WdgM_GetSEID_Binary"
	.byte		0
	.4byte		.L1050
	.uleb128	351
	.uleb128	46
	.4byte		.L1066
	.byte		0x1
	.4byte		.L1116
	.4byte		.L1117
	.sleb128	3
	.4byte		.L1050
	.uleb128	351
	.uleb128	46
	.byte		"Mode"
	.byte		0
	.4byte		.L1119
	.4byte		.L1120
	.sleb128	3
	.4byte		.L1050
	.uleb128	351
	.uleb128	46
	.byte		"SEID"
	.byte		0
	.4byte		.L1081
	.4byte		.L1121
	.sleb128	3
	.4byte		.L1050
	.uleb128	351
	.uleb128	46
	.byte		"PtrToSEEntryPtr"
	.byte		0
	.4byte		.L1122
	.4byte		.L1126
.L1127:
	.sleb128	5
	.4byte		.L1050
	.uleb128	357
	.uleb128	20
	.byte		"retVal"
	.byte		0
	.4byte		.L1066
	.4byte		.L1128
.L1129:
	.sleb128	5
	.4byte		.L1050
	.uleb128	358
	.uleb128	12
	.byte		"first"
	.byte		0
	.4byte		.L1054
	.4byte		.L1130
.L1131:
	.sleb128	5
	.4byte		.L1050
	.uleb128	359
	.uleb128	12
	.byte		"last"
	.byte		0
	.4byte		.L1054
	.4byte		.L1132
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1136
	.4byte		.L1133
	.4byte		.L1134
.L1137:
	.sleb128	5
	.4byte		.L1050
	.uleb128	365
	.uleb128	20
	.byte		"middle"
	.byte		0
	.4byte		.L1054
	.4byte		.L1138
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1136:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1115:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1143:
	.sleb128	2
	.4byte		.L1140-.L1039
	.byte		"WdgM_RTENotifLocalStatusChange"
	.byte		0
	.4byte		.L1050
	.uleb128	397
	.uleb128	36
	.byte		0x1
	.4byte		.L1141
	.4byte		.L1142
.L1144:
	.sleb128	5
	.4byte		.L1050
	.uleb128	399
	.uleb128	12
	.byte		"index"
	.byte		0
	.4byte		.L1054
	.4byte		.L1145
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1149
	.4byte		.L1146
	.4byte		.L1147
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1150:
	.sleb128	7
	.4byte		.L1050
	.uleb128	404
	.uleb128	44
	.byte		"NotificationFunctionStruct"
	.byte		0
	.4byte		.L1151
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1155
	.4byte		.L1152
	.4byte		.L1153
.L1156:
	.sleb128	5
	.4byte		.L1050
	.uleb128	409
	.uleb128	34
	.byte		"localstatus"
	.byte		0
	.4byte		.L1157
	.4byte		.L1159
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1155:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1149:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1140:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1164:
	.sleb128	2
	.4byte		.L1161-.L1039
	.byte		"WdgM_SetEntityStatus"
	.byte		0
	.4byte		.L1050
	.uleb128	420
	.uleb128	36
	.byte		0x1
	.4byte		.L1162
	.4byte		.L1163
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L1050
	.uleb128	420
	.uleb128	36
	.byte		"SEID"
	.byte		0
	.4byte		.L1082
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	3
	.4byte		.L1050
	.uleb128	420
	.uleb128	36
	.byte		"Index"
	.byte		0
	.4byte		.L1054
	.4byte		.L1165
	.sleb128	3
	.4byte		.L1050
	.uleb128	420
	.uleb128	36
	.byte		"Status"
	.byte		0
	.4byte		.L1157
	.4byte		.L1166
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1161:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1171:
	.sleb128	2
	.4byte		.L1168-.L1039
	.byte		"WdgM_ResetSupervisedEntity"
	.byte		0
	.4byte		.L1050
	.uleb128	444
	.uleb128	36
	.byte		0x1
	.4byte		.L1169
	.4byte		.L1170
	.sleb128	3
	.4byte		.L1050
	.uleb128	444
	.uleb128	36
	.byte		"NewMode"
	.byte		0
	.4byte		.L1074
	.4byte		.L1172
.L1173:
	.sleb128	5
	.4byte		.L1050
	.uleb128	449
	.uleb128	12
	.byte		"idx"
	.byte		0
	.4byte		.L1054
	.4byte		.L1174
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1178
	.4byte		.L1175
	.4byte		.L1176
.L1179:
	.sleb128	7
	.4byte		.L1050
	.uleb128	452
	.uleb128	36
	.byte		"modeDep_SupervisedEntityPtr_NewMode"
	.byte		0
	.4byte		.L1123
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L1180:
	.sleb128	5
	.4byte		.L1050
	.uleb128	453
	.uleb128	24
	.byte		"foundInNewMode"
	.byte		0
	.4byte		.L1066
	.4byte		.L1181
.L1182:
	.sleb128	5
	.4byte		.L1050
	.uleb128	455
	.uleb128	37
	.byte		"seID"
	.byte		0
	.4byte		.L1082
	.4byte		.L1183
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1187
	.4byte		.L1184
	.4byte		.L1185
.L1188:
	.sleb128	7
	.4byte		.L1050
	.uleb128	477
	.uleb128	40
	.byte		"modeDep_SupervisedEntityPtr_CurrentMode"
	.byte		0
	.4byte		.L1123
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L1189:
	.sleb128	5
	.4byte		.L1050
	.uleb128	478
	.uleb128	28
	.byte		"foundInCurrentMode"
	.byte		0
	.4byte		.L1066
	.4byte		.L1190
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1187:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1178:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1168:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1195:
	.sleb128	2
	.4byte		.L1192-.L1039
	.byte		"WdgM_DeadlineSupervision"
	.byte		0
	.4byte		.L1050
	.uleb128	519
	.uleb128	36
	.byte		0x1
	.4byte		.L1193
	.4byte		.L1194
	.sleb128	3
	.4byte		.L1050
	.uleb128	519
	.uleb128	36
	.byte		"ModeDep_SupervisedEntityPtr"
	.byte		0
	.4byte		.L1196
	.4byte		.L1199
	.sleb128	3
	.4byte		.L1050
	.uleb128	519
	.uleb128	36
	.byte		"DeadLineSupervisionEntryPtr"
	.byte		0
	.4byte		.L1200
	.4byte		.L1205
.L1206:
	.sleb128	5
	.4byte		.L1050
	.uleb128	526
	.uleb128	34
	.byte		"actualOverflowvalue"
	.byte		0
	.4byte		.L1207
	.4byte		.L1209
.L1210:
	.sleb128	5
	.4byte		.L1050
	.uleb128	529
	.uleb128	34
	.byte		"actualTick"
	.byte		0
	.4byte		.L1207
	.4byte		.L1211
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1192:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1218:
	.sleb128	4
	.4byte		.L1213-.L1039
	.byte		"WdgM_SetGlobalStatus"
	.byte		0
	.4byte		.L1050
	.uleb128	557
	.uleb128	49
	.4byte		.L1216
	.byte		0x1
	.4byte		.L1214
	.4byte		.L1215
	.sleb128	3
	.4byte		.L1050
	.uleb128	557
	.uleb128	49
	.byte		"Status"
	.byte		0
	.4byte		.L1219
	.4byte		.L1221
.L1222:
	.sleb128	5
	.4byte		.L1050
	.uleb128	562
	.uleb128	23
	.byte		"retVal"
	.byte		0
	.4byte		.L1216
	.4byte		.L1223
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1213:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1228:
	.sleb128	2
	.4byte		.L1225-.L1039
	.byte		"WdgM_GlobalStatusNotification"
	.byte		0
	.4byte		.L1050
	.uleb128	586
	.uleb128	36
	.byte		0x1
	.4byte		.L1226
	.4byte		.L1227
	.sleb128	3
	.4byte		.L1050
	.uleb128	586
	.uleb128	36
	.byte		"Status"
	.byte		0
	.4byte		.L1219
	.4byte		.L1229
	.sleb128	3
	.4byte		.L1050
	.uleb128	586
	.uleb128	36
	.byte		"Notification"
	.byte		0
	.4byte		.L1216
	.4byte		.L1230
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1225:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1236:
	.sleb128	4
	.4byte		.L1232-.L1039
	.byte		"WdgM_IsValidCallerId"
	.byte		0
	.4byte		.L1050
	.uleb128	630
	.uleb128	39
	.4byte		.L1235
	.byte		0x1
	.4byte		.L1233
	.4byte		.L1234
	.sleb128	3
	.4byte		.L1050
	.uleb128	630
	.uleb128	39
	.byte		"CallerId"
	.byte		0
	.4byte		.L1054
	.4byte		.L1237
.L1238:
	.sleb128	5
	.4byte		.L1050
	.uleb128	635
	.uleb128	13
	.byte		"isValidCallerID"
	.byte		0
	.4byte		.L1235
	.4byte		.L1239
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1243
	.4byte		.L1240
	.4byte		.L1241
.L1244:
	.sleb128	5
	.4byte		.L1050
	.uleb128	638
	.uleb128	15
	.byte		"index"
	.byte		0
	.4byte		.L1059
	.4byte		.L1245
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1243:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1232:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1250:
	.sleb128	2
	.4byte		.L1247-.L1039
	.byte		"WdgM_UpdateCheckpointAliveCounter"
	.byte		0
	.4byte		.L1050
	.uleb128	657
	.uleb128	36
	.byte		0x1
	.4byte		.L1248
	.4byte		.L1249
	.sleb128	3
	.4byte		.L1050
	.uleb128	657
	.uleb128	36
	.byte		"CheckpointStructPtr"
	.byte		0
	.4byte		.L1251
	.4byte		.L1256
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1247:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1261:
	.sleb128	2
	.4byte		.L1258-.L1039
	.byte		"WdgM_TriggerWatchdogs"
	.byte		0
	.4byte		.L1050
	.uleb128	677
	.uleb128	36
	.byte		0x1
	.4byte		.L1259
	.4byte		.L1260
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1265
	.4byte		.L1262
	.4byte		.L1263
.L1266:
	.sleb128	5
	.4byte		.L1050
	.uleb128	683
	.uleb128	31
	.byte		"currentGlobalStatusPushedToStack"
	.byte		0
	.4byte		.L1219
	.4byte		.L1267
.L1268:
	.sleb128	5
	.4byte		.L1050
	.uleb128	686
	.uleb128	23
	.byte		"currentModePushedToStack"
	.byte		0
	.4byte		.L1074
	.4byte		.L1269
.L1270:
	.sleb128	5
	.4byte		.L1050
	.uleb128	687
	.uleb128	15
	.byte		"idx"
	.byte		0
	.4byte		.L1059
	.4byte		.L1271
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1265:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1258:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1276:
	.sleb128	4
	.4byte		.L1273-.L1039
	.byte		"WdgM_GetCPID_Binary"
	.byte		0
	.4byte		.L1050
	.uleb128	731
	.uleb128	46
	.4byte		.L1066
	.byte		0x1
	.4byte		.L1274
	.4byte		.L1275
	.sleb128	3
	.4byte		.L1050
	.uleb128	731
	.uleb128	46
	.byte		"ModeDep_SupervisedEntityPtr"
	.byte		0
	.4byte		.L1196
	.4byte		.L1277
	.sleb128	3
	.4byte		.L1050
	.uleb128	731
	.uleb128	46
	.byte		"CheckpointID"
	.byte		0
	.4byte		.L1278
	.4byte		.L1280
	.sleb128	3
	.4byte		.L1050
	.uleb128	731
	.uleb128	46
	.byte		"PtrToCPEntryPtr"
	.byte		0
	.4byte		.L1281
	.4byte		.L1283
.L1284:
	.sleb128	5
	.4byte		.L1050
	.uleb128	737
	.uleb128	20
	.byte		"retVal"
	.byte		0
	.4byte		.L1066
	.4byte		.L1285
.L1286:
	.sleb128	5
	.4byte		.L1050
	.uleb128	738
	.uleb128	12
	.byte		"first"
	.byte		0
	.4byte		.L1054
	.4byte		.L1287
.L1288:
	.sleb128	5
	.4byte		.L1050
	.uleb128	739
	.uleb128	12
	.byte		"last"
	.byte		0
	.4byte		.L1054
	.4byte		.L1289
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1293
	.4byte		.L1290
	.4byte		.L1291
.L1294:
	.sleb128	5
	.4byte		.L1050
	.uleb128	745
	.uleb128	20
	.byte		"middle"
	.byte		0
	.4byte		.L1054
	.4byte		.L1295
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1293:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1273:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1300:
	.sleb128	4
	.4byte		.L1297-.L1039
	.byte		"WdgM_TestIndexInInternalBitVector"
	.byte		0
	.4byte		.L1050
	.uleb128	779
	.uleb128	39
	.4byte		.L1235
	.byte		0x1
	.4byte		.L1298
	.4byte		.L1299
	.sleb128	3
	.4byte		.L1050
	.uleb128	779
	.uleb128	39
	.byte		"CheckpointStructPtr"
	.byte		0
	.4byte		.L1252
	.4byte		.L1301
	.sleb128	3
	.4byte		.L1050
	.uleb128	779
	.uleb128	39
	.byte		"IndexOfCheckPointInTheCorrespondingCheckpointTable"
	.byte		0
	.4byte		.L1054
	.4byte		.L1302
.L1303:
	.sleb128	5
	.4byte		.L1050
	.uleb128	785
	.uleb128	13
	.byte		"returnValue"
	.byte		0
	.4byte		.L1235
	.4byte		.L1304
.L1305:
	.sleb128	5
	.4byte		.L1050
	.uleb128	787
	.uleb128	12
	.byte		"whichArray"
	.byte		0
	.4byte		.L1054
	.4byte		.L1306
.L1307:
	.sleb128	5
	.4byte		.L1050
	.uleb128	789
	.uleb128	11
	.byte		"whichPosition"
	.byte		0
	.4byte		.L1059
	.4byte		.L1308
.L1309:
	.sleb128	5
	.4byte		.L1050
	.uleb128	790
	.uleb128	11
	.byte		"mask"
	.byte		0
	.4byte		.L1059
	.4byte		.L1310
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1297:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1315:
	.sleb128	4
	.4byte		.L1312-.L1039
	.byte		"WdgM_TestIndexInExternalBitVector"
	.byte		0
	.4byte		.L1050
	.uleb128	812
	.uleb128	39
	.4byte		.L1235
	.byte		0x1
	.4byte		.L1313
	.4byte		.L1314
	.sleb128	3
	.4byte		.L1050
	.uleb128	812
	.uleb128	39
	.byte		"CheckpointStructPtr"
	.byte		0
	.4byte		.L1252
	.4byte		.L1316
	.sleb128	3
	.4byte		.L1050
	.uleb128	812
	.uleb128	39
	.byte		"IndexOfCheckPointInTheCorrespondingCheckpointTable"
	.byte		0
	.4byte		.L1054
	.4byte		.L1317
.L1318:
	.sleb128	5
	.4byte		.L1050
	.uleb128	818
	.uleb128	13
	.byte		"returnValue"
	.byte		0
	.4byte		.L1235
	.4byte		.L1319
.L1320:
	.sleb128	5
	.4byte		.L1050
	.uleb128	820
	.uleb128	12
	.byte		"whichArray"
	.byte		0
	.4byte		.L1054
	.4byte		.L1321
.L1322:
	.sleb128	5
	.4byte		.L1050
	.uleb128	822
	.uleb128	11
	.byte		"whichPosition"
	.byte		0
	.4byte		.L1059
	.4byte		.L1323
.L1324:
	.sleb128	5
	.4byte		.L1050
	.uleb128	823
	.uleb128	11
	.byte		"mask"
	.byte		0
	.4byte		.L1059
	.4byte		.L1325
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1312:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1330:
	.sleb128	2
	.4byte		.L1327-.L1039
	.byte		"WdgM_SetIndexInBitvector"
	.byte		0
	.4byte		.L1050
	.uleb128	851
	.uleb128	36
	.byte		0x1
	.4byte		.L1328
	.4byte		.L1329
	.sleb128	3
	.4byte		.L1050
	.uleb128	851
	.uleb128	36
	.byte		"CheckpointStructPtr"
	.byte		0
	.4byte		.L1252
	.4byte		.L1331
	.sleb128	3
	.4byte		.L1050
	.uleb128	851
	.uleb128	36
	.byte		"IndexOfCheckPointInTheCorrespondingCheckpointTable"
	.byte		0
	.4byte		.L1054
	.4byte		.L1332
.L1333:
	.sleb128	5
	.4byte		.L1050
	.uleb128	858
	.uleb128	12
	.byte		"whichArray"
	.byte		0
	.4byte		.L1054
	.4byte		.L1334
.L1335:
	.sleb128	5
	.4byte		.L1050
	.uleb128	860
	.uleb128	11
	.byte		"whichPosition"
	.byte		0
	.4byte		.L1059
	.4byte		.L1336
.L1337:
	.sleb128	5
	.4byte		.L1050
	.uleb128	861
	.uleb128	11
	.byte		"mask"
	.byte		0
	.4byte		.L1059
	.4byte		.L1338
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1327:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1343:
	.sleb128	2
	.4byte		.L1340-.L1039
	.byte		"WdgM_SetNextInternalMask"
	.byte		0
	.4byte		.L1050
	.uleb128	873
	.uleb128	36
	.byte		0x1
	.4byte		.L1341
	.4byte		.L1342
	.sleb128	3
	.4byte		.L1050
	.uleb128	873
	.uleb128	36
	.byte		"CheckpointStructPtr"
	.byte		0
	.4byte		.L1252
	.4byte		.L1344
.L1345:
	.sleb128	5
	.4byte		.L1050
	.uleb128	878
	.uleb128	12
	.byte		"index"
	.byte		0
	.4byte		.L1054
	.4byte		.L1346
.L1347:
	.sleb128	5
	.4byte		.L1050
	.uleb128	879
	.uleb128	12
	.byte		"numberOfBytesInBitVector"
	.byte		0
	.4byte		.L1054
	.4byte		.L1348
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1340:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1353:
	.sleb128	4
	.4byte		.L1350-.L1039
	.byte		"WdgM_CalculateLocalSupervisionBasedOnOneAlive"
	.byte		0
	.4byte		.L1050
	.uleb128	899
	.uleb128	46
	.4byte		.L1157
	.byte		0x1
	.4byte		.L1351
	.4byte		.L1352
	.sleb128	3
	.4byte		.L1050
	.uleb128	899
	.uleb128	46
	.byte		"CurrentMode"
	.byte		0
	.4byte		.L1074
	.4byte		.L1354
	.sleb128	3
	.4byte		.L1050
	.uleb128	899
	.uleb128	46
	.byte		"Idx"
	.byte		0
	.4byte		.L1054
	.4byte		.L1355
.L1356:
	.sleb128	5
	.4byte		.L1050
	.uleb128	905
	.uleb128	32
	.byte		"AliveSupervisionEntryPtr"
	.byte		0
	.4byte		.L1357
	.4byte		.L1360
.L1361:
	.sleb128	5
	.4byte		.L1050
	.uleb128	906
	.uleb128	39
	.byte		"AliveMonitorEntryPtr"
	.byte		0
	.4byte		.L1362
	.4byte		.L1365
.L1366:
	.sleb128	5
	.4byte		.L1050
	.uleb128	907
	.uleb128	39
	.byte		"CorrespondingSEMonitorEntryPtr"
	.byte		0
	.4byte		.L1367
	.4byte		.L1370
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1374
	.4byte		.L1371
	.4byte		.L1372
.L1375:
	.sleb128	5
	.4byte		.L1050
	.uleb128	917
	.uleb128	48
	.byte		"CorrepondingSEEntryPtr"
	.byte		0
	.4byte		.L1196
	.4byte		.L1376
.L1377:
	.sleb128	5
	.4byte		.L1050
	.uleb128	919
	.uleb128	37
	.byte		"seid"
	.byte		0
	.4byte		.L1082
	.4byte		.L1378
.L1379:
	.sleb128	5
	.4byte		.L1050
	.uleb128	920
	.uleb128	16
	.byte		"min_max_range"
	.byte		0
	.4byte		.L1380
	.4byte		.L1382
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1374:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1350:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1387:
	.sleb128	4
	.4byte		.L1384-.L1039
	.byte		"WdgM_CalculateGlobalStatus"
	.byte		0
	.4byte		.L1050
	.uleb128	1029
	.uleb128	47
	.4byte		.L1219
	.byte		0x1
	.4byte		.L1385
	.4byte		.L1386
.L1388:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1031
	.uleb128	27
	.byte		"calculatedGlobalStatus"
	.byte		0
	.4byte		.L1219
	.4byte		.L1389
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1393
	.4byte		.L1390
	.4byte		.L1391
.L1394:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1040
	.uleb128	21
	.byte		"isEntityWithLocalStatusExpired"
	.byte		0
	.4byte		.L1235
	.4byte		.L1395
.L1396:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1041
	.uleb128	20
	.byte		"idx"
	.byte		0
	.4byte		.L1054
	.4byte		.L1397
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1401
	.4byte		.L1398
	.4byte		.L1399
.L1402:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1046
	.uleb128	44
	.byte		"ModeDepSE"
	.byte		0
	.4byte		.L1123
	.4byte		.L1403
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1407
	.4byte		.L1404
	.4byte		.L1405
.L1408:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1051
	.uleb128	49
	.byte		"seID"
	.byte		0
	.4byte		.L1082
	.4byte		.L1409
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1407:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1401:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1413
	.4byte		.L1410
	.4byte		.L1411
.L1414:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1076
	.uleb128	42
	.byte		"localSupervisionStatus"
	.byte		0
	.4byte		.L1157
	.4byte		.L1415
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1413:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1393:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1384:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1420:
	.sleb128	2
	.4byte		.L1417-.L1039
	.byte		"WdgM_InitSupervisedEntity"
	.byte		0
	.4byte		.L1050
	.uleb128	1134
	.uleb128	30
	.byte		0x1
	.4byte		.L1418
	.4byte		.L1419
	.sleb128	8
	.4byte		.L1050
	.uleb128	1134
	.uleb128	30
	.byte		"SEID"
	.byte		0
	.4byte		.L1082
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	3
	.4byte		.L1050
	.uleb128	1134
	.uleb128	30
	.byte		"Index"
	.byte		0
	.4byte		.L1054
	.4byte		.L1421
	.sleb128	3
	.4byte		.L1050
	.uleb128	1134
	.uleb128	30
	.byte		"ActivationStatus"
	.byte		0
	.4byte		.L1422
	.4byte		.L1424
.L1425:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1141
	.uleb128	26
	.byte		"status"
	.byte		0
	.4byte		.L1157
	.4byte		.L1426
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1417:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1431:
	.sleb128	2
	.4byte		.L1428-.L1039
	.byte		"WdgM_CheckLogicalSupervisedEntities"
	.byte		0
	.4byte		.L1050
	.uleb128	1172
	.uleb128	30
	.byte		0x1
	.4byte		.L1429
	.4byte		.L1430
	.sleb128	3
	.4byte		.L1050
	.uleb128	1172
	.uleb128	30
	.byte		"CheckpointStructPtr"
	.byte		0
	.4byte		.L1252
	.4byte		.L1432
.L1433:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1177
	.uleb128	13
	.byte		"isCorrect"
	.byte		0
	.4byte		.L1235
	.4byte		.L1434
.L1435:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1178
	.uleb128	12
	.byte		"ownIndexInCheckpointTable"
	.byte		0
	.4byte		.L1054
	.4byte		.L1436
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1440
	.4byte		.L1437
	.4byte		.L1438
.L1441:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1251
	.uleb128	16
	.byte		"idx"
	.byte		0
	.4byte		.L1054
	.4byte		.L1442
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1446
	.4byte		.L1443
	.4byte		.L1444
.L1447:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1264
	.uleb128	20
	.byte		"indexInCorresPondingCheckpointTable"
	.byte		0
	.4byte		.L1054
	.4byte		.L1448
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1446:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1440:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1428:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1453:
	.sleb128	2
	.4byte		.L1450-.L1039
	.byte		"WdgM_UpdateActualDeadlineTime"
	.byte		0
	.4byte		.L1050
	.uleb128	1299
	.uleb128	36
	.byte		0x1
	.4byte		.L1451
	.4byte		.L1452
	.sleb128	3
	.4byte		.L1050
	.uleb128	1299
	.uleb128	36
	.byte		"Counter"
	.byte		0
	.4byte		.L1454
	.4byte		.L1456
	.sleb128	3
	.4byte		.L1050
	.uleb128	1299
	.uleb128	36
	.byte		"WdgM_DeadlineMonitorEntryPointer"
	.byte		0
	.4byte		.L1457
	.4byte		.L1461
.L1462:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1305
	.uleb128	29
	.byte		"oldTickValue"
	.byte		0
	.4byte		.L1463
	.4byte		.L1464
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1450:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1469:
	.sleb128	9
	.4byte		.L1466-.L1039
	.byte		"WdgM_ConsistencyCheck"
	.byte		0
	.4byte		.L1050
	.uleb128	2024
	.uleb128	33
	.4byte		.L1066
	.byte		0x1
	.byte		0x1
	.4byte		.L1467
	.4byte		.L1468
	.sleb128	3
	.4byte		.L1050
	.uleb128	2024
	.uleb128	33
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L1470
	.4byte		.L1475
.L1476:
	.sleb128	5
	.4byte		.L1050
	.uleb128	2028
	.uleb128	20
	.byte		"returnValue"
	.byte		0
	.4byte		.L1066
	.4byte		.L1477
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1466:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1482:
	.sleb128	10
	.4byte		.L1479-.L1039
	.byte		"WdgM_Init"
	.byte		0
	.4byte		.L1050
	.uleb128	1327
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1480
	.4byte		.L1481
	.sleb128	3
	.4byte		.L1050
	.uleb128	1327
	.uleb128	23
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L1471
	.4byte		.L1483
.L1484:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1332
	.uleb128	23
	.byte		"notification"
	.byte		0
	.4byte		.L1216
	.4byte		.L1485
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1489
	.4byte		.L1486
	.4byte		.L1487
.L1490:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1367
	.uleb128	23
	.byte		"WdgMInitialMode"
	.byte		0
	.4byte		.L1074
	.4byte		.L1491
.L1492:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1368
	.uleb128	16
	.byte		"idx"
	.byte		0
	.4byte		.L1054
	.4byte		.L1493
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1497
	.4byte		.L1494
	.4byte		.L1495
.L1498:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1375
	.uleb128	20
	.byte		"index_bytnum"
	.byte		0
	.4byte		.L1054
	.4byte		.L1499
.L1500:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1376
	.uleb128	41
	.byte		"seID"
	.byte		0
	.4byte		.L1082
	.4byte		.L1501
.L1502:
	.sleb128	7
	.4byte		.L1050
	.uleb128	1377
	.uleb128	40
	.byte		"modeDep_SupervisedEntityPtr"
	.byte		0
	.4byte		.L1123
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L1503:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1378
	.uleb128	28
	.byte		"isFoundInCurrentMode"
	.byte		0
	.4byte		.L1066
	.4byte		.L1504
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1497:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1489:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1479:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1509:
	.sleb128	10
	.4byte		.L1506-.L1039
	.byte		"WdgM_DeInit"
	.byte		0
	.4byte		.L1050
	.uleb128	1482
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1507
	.4byte		.L1508
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1513
	.4byte		.L1510
	.4byte		.L1511
.L1514:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1491
	.uleb128	27
	.byte		"notification"
	.byte		0
	.4byte		.L1216
	.4byte		.L1515
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1513:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1506:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1520:
	.sleb128	9
	.4byte		.L1517-.L1039
	.byte		"WdgM_GetMode"
	.byte		0
	.4byte		.L1050
	.uleb128	1517
	.uleb128	33
	.4byte		.L1066
	.byte		0x1
	.byte		0x1
	.4byte		.L1518
	.4byte		.L1519
	.sleb128	3
	.4byte		.L1050
	.uleb128	1517
	.uleb128	33
	.byte		"Mode"
	.byte		0
	.4byte		.L1521
	.4byte		.L1522
.L1523:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1522
	.uleb128	20
	.byte		"returnValue"
	.byte		0
	.4byte		.L1066
	.4byte		.L1524
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1517:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1529:
	.sleb128	9
	.4byte		.L1526-.L1039
	.byte		"WdgM_SetMode"
	.byte		0
	.4byte		.L1050
	.uleb128	1544
	.uleb128	33
	.4byte		.L1066
	.byte		0x1
	.byte		0x1
	.4byte		.L1527
	.4byte		.L1528
	.sleb128	3
	.4byte		.L1050
	.uleb128	1544
	.uleb128	33
	.byte		"Mode"
	.byte		0
	.4byte		.L1074
	.4byte		.L1530
	.sleb128	3
	.4byte		.L1050
	.uleb128	1544
	.uleb128	33
	.byte		"CallerId"
	.byte		0
	.4byte		.L1054
	.4byte		.L1531
.L1532:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1550
	.uleb128	20
	.byte		"returnValue"
	.byte		0
	.4byte		.L1066
	.4byte		.L1533
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1537
	.4byte		.L1534
	.4byte		.L1535
.L1538:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1581
	.uleb128	31
	.byte		"currentGlobalStatusPushedToStack"
	.byte		0
	.4byte		.L1219
	.4byte		.L1539
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1543
	.4byte		.L1540
	.4byte		.L1541
.L1544:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1617
	.uleb128	35
	.byte		"notification"
	.byte		0
	.4byte		.L1216
	.4byte		.L1545
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1543:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1537:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1526:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1550:
	.sleb128	10
	.4byte		.L1547-.L1039
	.byte		"WdgM_GetVersionInfo"
	.byte		0
	.4byte		.L1050
	.uleb128	1658
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1548
	.4byte		.L1549
	.sleb128	3
	.4byte		.L1050
	.uleb128	1658
	.uleb128	23
	.byte		"VersionInfo"
	.byte		0
	.4byte		.L1551
	.4byte		.L1554
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1547:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1559:
	.sleb128	9
	.4byte		.L1556-.L1039
	.byte		"WdgM_CheckpointReached"
	.byte		0
	.4byte		.L1050
	.uleb128	1724
	.uleb128	33
	.4byte		.L1066
	.byte		0x1
	.byte		0x1
	.4byte		.L1557
	.4byte		.L1558
	.sleb128	3
	.4byte		.L1050
	.uleb128	1724
	.uleb128	33
	.byte		"SEID"
	.byte		0
	.4byte		.L1082
	.4byte		.L1560
	.sleb128	3
	.4byte		.L1050
	.uleb128	1724
	.uleb128	33
	.byte		"CheckpointID"
	.byte		0
	.4byte		.L1279
	.4byte		.L1561
.L1562:
	.sleb128	7
	.4byte		.L1050
	.uleb128	1730
	.uleb128	32
	.byte		"modeDep_SE_Entry"
	.byte		0
	.4byte		.L1123
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L1563:
	.sleb128	7
	.4byte		.L1050
	.uleb128	1731
	.uleb128	26
	.byte		"cPEntry"
	.byte		0
	.4byte		.L1282
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L1564:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1732
	.uleb128	20
	.byte		"retVal"
	.byte		0
	.4byte		.L1066
	.4byte		.L1565
.L1566:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1734
	.uleb128	11
	.byte		"detErrorId"
	.byte		0
	.4byte		.L1059
	.4byte		.L1567
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1571
	.4byte		.L1568
	.4byte		.L1569
.L1572:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1768
	.uleb128	43
	.byte		"supervisedEntityMT_Entry"
	.byte		0
	.4byte		.L1367
	.4byte		.L1573
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1577
	.4byte		.L1574
	.4byte		.L1575
.L1578:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1778
	.uleb128	20
	.byte		"idx"
	.byte		0
	.4byte		.L1054
	.4byte		.L1579
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1577:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1571:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1556:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1584:
	.sleb128	9
	.4byte		.L1581-.L1039
	.byte		"WdgM_UpdateAliveCounter"
	.byte		0
	.4byte		.L1050
	.uleb128	1682
	.uleb128	33
	.4byte		.L1066
	.byte		0x1
	.byte		0x1
	.4byte		.L1582
	.4byte		.L1583
	.sleb128	3
	.4byte		.L1050
	.uleb128	1682
	.uleb128	33
	.byte		"SEID"
	.byte		0
	.4byte		.L1082
	.4byte		.L1585
.L1586:
	.sleb128	7
	.4byte		.L1050
	.uleb128	1687
	.uleb128	12
	.byte		"indexFound"
	.byte		0
	.4byte		.L1054
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L1587:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1688
	.uleb128	20
	.byte		"returnValue"
	.byte		0
	.4byte		.L1066
	.4byte		.L1588
.L1589:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1691
	.uleb128	19
	.byte		"currentModePushedToStack"
	.byte		0
	.4byte		.L1074
	.4byte		.L1590
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1581:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1595:
	.sleb128	9
	.4byte		.L1592-.L1039
	.byte		"WdgM_GetLocalStatus"
	.byte		0
	.4byte		.L1050
	.uleb128	1837
	.uleb128	33
	.4byte		.L1066
	.byte		0x1
	.byte		0x1
	.4byte		.L1593
	.4byte		.L1594
	.sleb128	3
	.4byte		.L1050
	.uleb128	1837
	.uleb128	33
	.byte		"SEID"
	.byte		0
	.4byte		.L1082
	.4byte		.L1596
	.sleb128	3
	.4byte		.L1050
	.uleb128	1837
	.uleb128	33
	.byte		"Status"
	.byte		0
	.4byte		.L1597
	.4byte		.L1598
.L1599:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1843
	.uleb128	20
	.byte		"returnValue"
	.byte		0
	.4byte		.L1066
	.4byte		.L1600
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1604
	.4byte		.L1601
	.4byte		.L1602
.L1605:
	.sleb128	7
	.4byte		.L1050
	.uleb128	1858
	.uleb128	36
	.byte		"modeDep_SE_Entry"
	.byte		0
	.4byte		.L1123
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1604:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1592:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1610:
	.sleb128	9
	.4byte		.L1607-.L1039
	.byte		"WdgM_GetGlobalStatus"
	.byte		0
	.4byte		.L1050
	.uleb128	1878
	.uleb128	33
	.4byte		.L1066
	.byte		0x1
	.byte		0x1
	.4byte		.L1608
	.4byte		.L1609
	.sleb128	3
	.4byte		.L1050
	.uleb128	1878
	.uleb128	33
	.byte		"Status"
	.byte		0
	.4byte		.L1611
	.4byte		.L1612
.L1613:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1883
	.uleb128	20
	.byte		"returnValue"
	.byte		0
	.4byte		.L1066
	.4byte		.L1614
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1607:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1619:
	.sleb128	10
	.4byte		.L1616-.L1039
	.byte		"WdgM_PerformReset"
	.byte		0
	.4byte		.L1050
	.uleb128	1901
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1617
	.4byte		.L1618
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1623
	.4byte		.L1620
	.4byte		.L1621
.L1624:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1909
	.uleb128	15
	.byte		"idx"
	.byte		0
	.4byte		.L1059
	.4byte		.L1625
.L1626:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1910
	.uleb128	23
	.byte		"currentModePushedToStack"
	.byte		0
	.4byte		.L1074
	.4byte		.L1627
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1623:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1616:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1632:
	.sleb128	9
	.4byte		.L1629-.L1039
	.byte		"WdgM_GetFirstExpiredSEID"
	.byte		0
	.4byte		.L1050
	.uleb128	1938
	.uleb128	33
	.4byte		.L1066
	.byte		0x1
	.byte		0x1
	.4byte		.L1630
	.4byte		.L1631
	.sleb128	3
	.4byte		.L1050
	.uleb128	1938
	.uleb128	33
	.byte		"SEID"
	.byte		0
	.4byte		.L1633
	.4byte		.L1634
.L1635:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1942
	.uleb128	20
	.byte		"returnValue"
	.byte		0
	.4byte		.L1066
	.4byte		.L1636
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L1640
	.4byte		.L1637
	.4byte		.L1638
.L1641:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1951
	.uleb128	16
	.byte		"WdgM_SeIdLocalStatusExpiredFirstPushedToStack"
	.byte		0
	.4byte		.L1207
	.4byte		.L1642
.L1643:
	.sleb128	5
	.4byte		.L1050
	.uleb128	1952
	.uleb128	16
	.byte		"temp_SeId"
	.byte		0
	.4byte		.L1054
	.4byte		.L1644
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1640:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1629:
	.section	.debug_info,,n
.L1650:
	.sleb128	10
	.4byte		.L1646-.L2
	.byte		"WdgM_MainFunction"
	.byte		0
	.4byte		.L1649
	.uleb128	1968
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1647
	.4byte		.L1648
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1654
	.4byte		.L1651
	.4byte		.L1652
.L1655:
	.sleb128	5
	.4byte		.L1649
	.uleb128	1977
	.uleb128	16
	.byte		"idx"
	.byte		0
	.4byte		.L1054
	.4byte		.L1656
.L1657:
	.sleb128	5
	.4byte		.L1649
	.uleb128	1978
	.uleb128	31
	.byte		"calculatedGlobalStatus"
	.byte		0
	.4byte		.L1219
	.4byte		.L1658
.L1659:
	.sleb128	5
	.4byte		.L1649
	.uleb128	1979
	.uleb128	27
	.byte		"notification"
	.byte		0
	.4byte		.L1216
	.4byte		.L1660
.L1661:
	.sleb128	5
	.4byte		.L1649
	.uleb128	1984
	.uleb128	51
	.byte		"deadLineSuperVision"
	.byte		0
	.4byte		.L1200
	.4byte		.L1662
	.section	.debug_info,,n
	.sleb128	0
.L1654:
	.section	.debug_info,,n
	.sleb128	0
.L1646:
	.section	.debug_info,,n
.L1663:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1664
	.uleb128	118
	.uleb128	69
	.byte		"Rte_Inst_WdgM"
	.byte		0
	.4byte		.L1665
	.section	.debug_info,,n
.L1669:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1670
	.uleb128	239
	.uleb128	34
	.byte		"WdgM_LTtoPCHashValue"
	.byte		0
	.4byte		.L1671
	.section	.debug_info,,n
.L1672:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1670
	.uleb128	244
	.uleb128	34
	.byte		"WdgM_LTHashValue"
	.byte		0
	.4byte		.L1671
.L1673:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1670
	.uleb128	258
	.uleb128	56
	.byte		"WdgM_SupervisedEntityMonitorTable"
	.byte		0
	.4byte		.L1674
	.section	.debug_info,,n
.L1676:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1670
	.uleb128	261
	.uleb128	56
	.byte		"WdgM_AliveSupervisionMonitorTable"
	.byte		0
	.4byte		.L1677
.L1679:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1670
	.uleb128	264
	.uleb128	59
	.byte		"WdgM_DeadlineSupervisionMonitorTable"
	.byte		0
	.4byte		.L1680
.L1682:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1670
	.uleb128	267
	.uleb128	58
	.byte		"WdgM_LogicalsupervisionMonitorTable"
	.byte		0
	.4byte		.L1683
.L1687:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1670
	.uleb128	278
	.uleb128	45
	.byte		"WdgM_DemEventId"
	.byte		0
	.4byte		.L1688
.L1691:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1670
	.uleb128	281
	.uleb128	44
	.byte		"WdgMCallerIdCfg"
	.byte		0
	.4byte		.L1692
.L1695:
	.sleb128	7
	.4byte		.L1649
	.uleb128	85
	.uleb128	31
	.byte		"WdgM_ResetRequested"
	.byte		0
	.4byte		.L1235
	.sleb128	5
	.byte		0x3
	.4byte		WdgM_ResetRequested
	.section	.debug_info,,n
.L1696:
	.sleb128	7
	.4byte		.L1649
	.uleb128	90
	.uleb128	29
	.byte		"WdgM_ExpiredSupervisionCyclesCounter"
	.byte		0
	.4byte		.L1059
	.sleb128	5
	.byte		0x3
	.4byte		WdgM_ExpiredSupervisionCyclesCounter
	.section	.debug_info,,n
.L1697:
	.sleb128	7
	.4byte		.L1649
	.uleb128	95
	.uleb128	37
	.byte		"WdgM_CurrentMode"
	.byte		0
	.4byte		.L1074
	.sleb128	5
	.byte		0x3
	.4byte		WdgM_CurrentMode
	.section	.debug_info,,n
.L1698:
	.sleb128	7
	.4byte		.L1649
	.uleb128	111
	.uleb128	60
	.byte		"WdgM_CurrentConfigPtr"
	.byte		0
	.4byte		.L1471
	.sleb128	5
	.byte		0x3
	.4byte		WdgM_CurrentConfigPtr
	.section	.debug_info,,n
.L1699:
	.sleb128	7
	.4byte		.L1649
	.uleb128	117
	.uleb128	45
	.byte		"WdgM_GlobalStatus"
	.byte		0
	.4byte		.L1219
	.sleb128	5
	.byte		0x3
	.4byte		WdgM_GlobalStatus
	.section	.debug_info,,n
.L1700:
	.sleb128	7
	.4byte		.L1649
	.uleb128	134
	.uleb128	30
	.byte		"WdgM_SeIdLocalStatusExpiredFirst"
	.byte		0
	.4byte		.L1207
	.sleb128	5
	.byte		0x3
	.4byte		WdgM_SeIdLocalStatusExpiredFirst
	.section	.debug_info,,n
.L1690:
	.sleb128	12
	.4byte		.L1701
	.uleb128	179
	.uleb128	14
	.4byte		.L1702-.L2
	.byte		"WdgM_DemEventIdType_Tag"
	.byte		0
	.uleb128	6
	.section	.debug_info,,n
.L599:
	.sleb128	13
	.byte		"Dem_E_Set_Mode"
	.byte		0
	.4byte		.L1053
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L600:
	.sleb128	13
	.byte		"Dem_E_Improper_Caller"
	.byte		0
	.4byte		.L1053
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L601:
	.sleb128	13
	.byte		"Dem_E_Monitoring"
	.byte		0
	.4byte		.L1053
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1702:
.L1694:
	.sleb128	12
	.4byte		.L1701
	.uleb128	179
	.uleb128	14
	.4byte		.L1703-.L2
	.byte		"WdgM_CallerIdType_Tag"
	.byte		0
	.uleb128	8
.L597:
	.sleb128	13
	.byte		"WdgM_CallerIdsTablePtr"
	.byte		0
	.4byte		.L1704
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L598:
	.sleb128	13
	.byte		"WdgM_NoOfCallerIds"
	.byte		0
	.4byte		.L1119
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1703:
.L1686:
	.sleb128	12
	.4byte		.L1701
	.uleb128	179
	.uleb128	14
	.4byte		.L1707-.L2
	.byte		"WdgM_LogicalSupervisionMonitorType_Tag"
	.byte		0
	.uleb128	12
.L593:
	.sleb128	13
	.byte		"WdgM_NextPossibleCheckpointBitvectorInternal"
	.byte		0
	.4byte		.L1708
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L594:
	.sleb128	13
	.byte		"WdgM_NextPossibleCheckpointBitvectorExternal"
	.byte		0
	.4byte		.L1708
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L595:
	.sleb128	13
	.byte		"WdgM_MostRecentlyReportedCP"
	.byte		0
	.4byte		.L1279
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L596:
	.sleb128	13
	.byte		"WdgM_ActivityFlag"
	.byte		0
	.4byte		.L1235
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L1707:
.L1474:
	.sleb128	12
	.4byte		.L1701
	.uleb128	179
	.uleb128	14
	.4byte		.L1710-.L2
	.byte		"WdgM_ConfigType_Tag"
	.byte		0
	.uleb128	24
.L585:
	.sleb128	13
	.byte		"WdgM_ModeTablePtr"
	.byte		0
	.4byte		.L1711
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L586:
	.sleb128	13
	.byte		"WdgM_TotalNumberOfSupervisedEntities"
	.byte		0
	.4byte		.L1706
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L587:
	.sleb128	13
	.byte		"WdgM_SupervisedEntityGeneralTablePtr"
	.byte		0
	.4byte		.L1716
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L588:
	.sleb128	13
	.byte		"WdgM_PBtoPCHashValue_P"
	.byte		0
	.4byte		.L1721
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L589:
	.sleb128	13
	.byte		"WdgM_PBtoLTHashValue_P"
	.byte		0
	.4byte		.L1721
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L590:
	.sleb128	13
	.byte		"WdgM_InitialMode"
	.byte		0
	.4byte		.L1119
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L591:
	.sleb128	13
	.byte		"WdgM_ModeCount"
	.byte		0
	.4byte		.L1119
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L1710:
.L1715:
	.sleb128	12
	.4byte		.L1701
	.uleb128	179
	.uleb128	14
	.4byte		.L1723-.L2
	.byte		"WdgM_ModeInfoType_Tag"
	.byte		0
	.uleb128	24
.L576:
	.sleb128	13
	.byte		"WdgM_AliveSupervisionTablePtr"
	.byte		0
	.4byte		.L1724
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L577:
	.sleb128	13
	.byte		"WdgM_DeadlineSupervisionTablePtr"
	.byte		0
	.4byte		.L1200
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L578:
	.sleb128	13
	.byte		"WdgM_LocalStatusParmTablePtr"
	.byte		0
	.4byte		.L1196
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L579:
	.sleb128	13
	.byte		"WdgM_TriggerTableptr"
	.byte		0
	.4byte		.L1727
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L580:
	.sleb128	13
	.byte		"WdgM_AliveSupervisionCount"
	.byte		0
	.4byte		.L1706
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L581:
	.sleb128	13
	.byte		"WdgM_DeadlineSupervisionCount"
	.byte		0
	.4byte		.L1706
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L582:
	.sleb128	13
	.byte		"WdgM_LocalStatusParmCount"
	.byte		0
	.4byte		.L1706
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L583:
	.sleb128	13
	.byte		"WdgM_ExpiredSupervisionCycleTolerance"
	.byte		0
	.4byte		.L1119
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L584:
	.sleb128	13
	.byte		"WdgM_TriggerCount"
	.byte		0
	.4byte		.L1119
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
	.sleb128	0
.L1723:
.L1255:
	.sleb128	12
	.4byte		.L1701
	.uleb128	179
	.uleb128	14
	.4byte		.L1732-.L2
	.byte		"WdgM_CheckpointType_Tag"
	.byte		0
	.uleb128	40
.L562:
	.sleb128	13
	.byte		"WdgM_AliveSupervisionEntryPtr"
	.byte		0
	.4byte		.L1724
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L563:
	.sleb128	13
	.byte		"WdgM_LocalStatusParmEntryPtr"
	.byte		0
	.4byte		.L1196
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L564:
	.sleb128	13
	.byte		"WdgM_DeadlineSupervisionStartRefTablePtr"
	.byte		0
	.4byte		.L1733
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L565:
	.sleb128	13
	.byte		"WdgM_DeadlineSupervisionEndRefTablePtr"
	.byte		0
	.4byte		.L1733
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L566:
	.sleb128	13
	.byte		"WdgM_NextExternalCPEntriesTablePtr"
	.byte		0
	.4byte		.L1735
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L567:
	.sleb128	13
	.byte		"WdgM_NextInternalCheckpointsBitVectorTablePtr"
	.byte		0
	.4byte		.L1737
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L568:
	.sleb128	13
	.byte		"WdgM_LogicalSupervisionMonitorPtr"
	.byte		0
	.4byte		.L1739
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L569:
	.sleb128	13
	.byte		"WdgM_NumberOfNextExternalCPs"
	.byte		0
	.4byte		.L1706
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L570:
	.sleb128	13
	.byte		"WdgM_NumberOfDeadlineStartPointers"
	.byte		0
	.4byte		.L1706
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L571:
	.sleb128	13
	.byte		"WdgM_NumberOfDeadlineEndPointers"
	.byte		0
	.4byte		.L1706
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L572:
	.sleb128	13
	.byte		"WdgM_CheckpointID"
	.byte		0
	.4byte		.L1278
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L573:
	.sleb128	13
	.byte		"WdgM_IsStartCpByInternal"
	.byte		0
	.4byte		.L1741
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L574:
	.sleb128	13
	.byte		"WdgM_IsStopCpByInternal"
	.byte		0
	.4byte		.L1741
	.sleb128	2
	.byte		0x23
	.uleb128	37
	.byte		0x1
.L575:
	.sleb128	13
	.byte		"WdgM_IsCpWaitingForExternalConnection"
	.byte		0
	.4byte		.L1741
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
	.sleb128	0
.L1732:
.L1731:
	.sleb128	12
	.4byte		.L1701
	.uleb128	179
	.uleb128	14
	.4byte		.L1742-.L2
	.byte		"WdgM_TriggerType_Tag"
	.byte		0
	.uleb128	8
.L559:
	.sleb128	13
	.byte		"WdgM_Mode"
	.byte		0
	.4byte		.L1743
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L560:
	.sleb128	13
	.byte		"WdgM_TriggerReferenceCycle"
	.byte		0
	.4byte		.L1706
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L561:
	.sleb128	13
	.byte		"WdgM_WatchdogDeviceID"
	.byte		0
	.4byte		.L1119
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L1742:
.L1125:
	.sleb128	12
	.4byte		.L1701
	.uleb128	179
	.uleb128	14
	.4byte		.L1747-.L2
	.byte		"WdgM_LocalstatModeDepType_Tag"
	.byte		0
	.uleb128	20
.L553:
	.sleb128	13
	.byte		"WdgM_CheckpointTablePtr"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L554:
	.sleb128	13
	.byte		"WdgM_SupervisedEntityMonitorEntryPtr"
	.byte		0
	.4byte		.L1748
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L555:
	.sleb128	13
	.byte		"WdgM_GeneralSEEntryPtr"
	.byte		0
	.4byte		.L1716
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L556:
	.sleb128	13
	.byte		"WdgM_NumberOfActiveCheckPoints"
	.byte		0
	.4byte		.L1706
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L557:
	.sleb128	13
	.byte		"WdgM_SupervisedEntityId"
	.byte		0
	.4byte		.L1081
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L558:
	.sleb128	13
	.byte		"WdgM_FailedSupervisionRefCycleTolerance"
	.byte		0
	.4byte		.L1119
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L1747:
.L1369:
	.sleb128	12
	.4byte		.L1701
	.uleb128	179
	.uleb128	14
	.4byte		.L1749-.L2
	.byte		"WdgM_SupervisedEntityMonitorType_Tag"
	.byte		0
	.uleb128	20
.L547:
	.sleb128	13
	.byte		"WdgM_LocalSupervisionStatus"
	.byte		0
	.4byte		.L1157
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L548:
	.sleb128	13
	.byte		"WdgM_LogicalSupervisionResult"
	.byte		0
	.4byte		.L1750
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L549:
	.sleb128	13
	.byte		"WdgM_DeadlineSupervisionResult"
	.byte		0
	.4byte		.L1750
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L550:
	.sleb128	13
	.byte		"WdgM_AliveSupervisionResult"
	.byte		0
	.4byte		.L1750
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L551:
	.sleb128	13
	.byte		"WdgM_StatusChanged"
	.byte		0
	.4byte		.L1235
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L552:
	.sleb128	13
	.byte		"WdgM_FailedSupervisionCyclesCounter"
	.byte		0
	.4byte		.L1059
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
	.sleb128	0
.L1749:
.L1720:
	.sleb128	12
	.4byte		.L1701
	.uleb128	179
	.uleb128	14
	.4byte		.L1752-.L2
	.byte		"WdgM_LocalstatModeIndepType_Tag"
	.byte		0
	.uleb128	4
.L545:
	.sleb128	13
	.byte		"WdgM_SupervisedEntityId"
	.byte		0
	.4byte		.L1081
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L546:
	.sleb128	13
	.byte		"WdgM_SizeOfInternalCheckpointsBitVector"
	.byte		0
	.4byte		.L1706
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L1752:
.L1204:
	.sleb128	12
	.4byte		.L1701
	.uleb128	179
	.uleb128	14
	.4byte		.L1753-.L2
	.byte		"WdgM_DeadlineSupervisionType_Tag"
	.byte		0
	.uleb128	24
.L541:
	.sleb128	13
	.byte		"WdgM_DeadlineMin"
	.byte		0
	.4byte		.L1754
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L542:
	.sleb128	13
	.byte		"WdgM_DeadlineMax"
	.byte		0
	.4byte		.L1754
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L543:
	.sleb128	13
	.byte		"WdgM_OsCounter"
	.byte		0
	.4byte		.L1454
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L544:
	.sleb128	13
	.byte		"WdgM_DeadlineMonitorEntryPtr"
	.byte		0
	.4byte		.L1457
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L1753:
.L1460:
	.sleb128	12
	.4byte		.L1701
	.uleb128	179
	.uleb128	14
	.4byte		.L1757-.L2
	.byte		"WdgM_DeadLineSupervisionMonitorType_Tag"
	.byte		0
	.uleb128	12
.L539:
	.sleb128	13
	.byte		"WdgM_DeadlineTimeActual"
	.byte		0
	.4byte		.L1755
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L540:
	.sleb128	13
	.byte		"WdgM_DeadlineTimerStatus"
	.byte		0
	.4byte		.L1758
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L1757:
.L1756:
	.sleb128	12
	.4byte		.L1701
	.uleb128	179
	.uleb128	14
	.4byte		.L1760-.L2
	.byte		"WdgM_DeadlineTimeType_Tag"
	.byte		0
	.uleb128	8
.L537:
	.sleb128	13
	.byte		"WdgM_DeadlineTimeInTicks"
	.byte		0
	.4byte		.L1463
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L538:
	.sleb128	13
	.byte		"WdgM_TimeOverflowValue"
	.byte		0
	.4byte		.L1207
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1760:
.L1359:
	.sleb128	12
	.4byte		.L1701
	.uleb128	179
	.uleb128	14
	.4byte		.L1761-.L2
	.byte		"WdgM_AliveSupervisionType_Tag"
	.byte		0
	.uleb128	16
.L531:
	.sleb128	13
	.byte		"WdgM_CorrespondingCheckpointStructPtr"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L532:
	.sleb128	13
	.byte		"WdgM_AliveMonitorEntryPtr"
	.byte		0
	.4byte		.L1762
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L533:
	.sleb128	13
	.byte		"WdgM_ExpectedAliveIndications"
	.byte		0
	.4byte		.L1706
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L534:
	.sleb128	13
	.byte		"WdgM_SupervisionReferenceCycle"
	.byte		0
	.4byte		.L1119
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L535:
	.sleb128	13
	.byte		"WdgM_MinMargin"
	.byte		0
	.4byte		.L1119
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L536:
	.sleb128	13
	.byte		"WdgM_MaxMargin"
	.byte		0
	.4byte		.L1119
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L1761:
.L1364:
	.sleb128	12
	.4byte		.L1701
	.uleb128	179
	.uleb128	14
	.4byte		.L1763-.L2
	.byte		"WdgM_AliveSupervisionMonitorType_Tag"
	.byte		0
	.uleb128	4
.L529:
	.sleb128	13
	.byte		"WdgM_AliveCountVar"
	.byte		0
	.4byte		.L1054
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L530:
	.sleb128	13
	.byte		"WdgM_SupervisionCyclesCounter"
	.byte		0
	.4byte		.L1059
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L1763:
.L1151:
	.sleb128	12
	.4byte		.L1764
	.uleb128	197
	.uleb128	14
	.4byte		.L1765-.L2
	.byte		"Rte_PDS_WdgM_IndividualMode"
	.byte		0
	.uleb128	4
.L528:
	.sleb128	13
	.byte		"Switch_currentMode"
	.byte		0
	.4byte		.L1766
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L1765:
.L1668:
	.sleb128	12
	.4byte		.L1769
	.uleb128	9570
	.uleb128	5
	.4byte		.L1770-.L2
	.byte		"Rte_CDS_WdgM"
	.byte		0
	.uleb128	1
.L259:
	.sleb128	13
	.byte		"_dummy"
	.byte		0
	.4byte		.L1059
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L1770:
	.section	.debug_info,,n
.L1553:
	.sleb128	14
	.4byte		.L1769
	.uleb128	9570
	.uleb128	5
	.4byte		.L1771-.L2
	.uleb128	8
.L250:
	.sleb128	13
	.byte		"vendorID"
	.byte		0
	.4byte		.L1054
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L251:
	.sleb128	13
	.byte		"moduleID"
	.byte		0
	.4byte		.L1054
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L252:
	.sleb128	13
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L1059
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L253:
	.sleb128	13
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L1059
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L254:
	.sleb128	13
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L1059
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L1771:
	.section	.debug_info,,n
.L1217:
	.sleb128	15
	.4byte		.L1701
	.uleb128	179
	.uleb128	14
	.4byte		.L1772-.L2
	.byte		"WdgM_NotifyStatus_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	16
	.byte		"WDGM_NO_NOTIFICATION"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"WDGM_STOPPED_NOTIFICATION"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"WDGM_MODE_NOTIFICATION"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1772:
.L1759:
	.sleb128	15
	.4byte		.L1701
	.uleb128	169
	.uleb128	14
	.4byte		.L1773-.L2
	.byte		"WdgM_TimerStatusType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	16
	.byte		"WDGM_STOP"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"WDGM_START"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1773:
.L1751:
	.sleb128	15
	.4byte		.L1701
	.uleb128	159
	.uleb128	14
	.4byte		.L1774-.L2
	.byte		"WdgM_SupervisionResultType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	16
	.byte		"WDGM_CORRECT"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"WDGM_INCORRECT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1774:
.L1423:
	.sleb128	15
	.4byte		.L1701
	.uleb128	149
	.uleb128	14
	.4byte		.L1775-.L2
	.byte		"WdgM_ActivationStatusType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	16
	.byte		"WDGM_SUPERVISED_ENTITY_DEACTVATED"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"WDGM_SUPERVISED_ENTITY_ACTVATED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1775:
.L1220:
	.sleb128	15
	.4byte		.L1701
	.uleb128	136
	.uleb128	14
	.4byte		.L1776-.L2
	.byte		"WdgM_GlobalStatusType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	16
	.byte		"WDGM_GLOBAL_STATUS_DEACTIVATED"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"WDGM_GLOBAL_STATUS_EXPIRED"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"WDGM_GLOBAL_STATUS_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"WDGM_GLOBAL_STATUS_OK"
	.byte		0
	.sleb128	3
	.sleb128	16
	.byte		"WDGM_GLOBAL_STATUS_STOPPED"
	.byte		0
	.sleb128	4
	.sleb128	0
.L1776:
.L1158:
	.sleb128	15
	.4byte		.L1701
	.uleb128	124
	.uleb128	14
	.4byte		.L1777-.L2
	.byte		"WdgM_LocalStatusType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	16
	.byte		"WDGM_LOCAL_STATUS_OK"
	.byte		0
	.sleb128	3
	.sleb128	16
	.byte		"WDGM_LOCAL_STATUS_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"WDGM_LOCAL_STATUS_EXPIRED"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"WDGM_LOCAL_STATUS_DEACTIVATED"
	.byte		0
	.sleb128	0
	.sleb128	0
.L1777:
.L1746:
	.sleb128	15
	.4byte		.L1778
	.uleb128	66
	.uleb128	14
	.4byte		.L1779-.L2
	.byte		"WdgIf_Mode_Tag"
	.byte		0
	.uleb128	4
	.sleb128	16
	.byte		"WDGIF_OFF_MODE"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"WDGIF_SLOW_MODE"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"WDGIF_FAST_MODE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1779:
	.section	.debug_info,,n
.L1055:
	.sleb128	17
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L1054:
	.sleb128	18
	.byte		"uint16"
	.byte		0
	.4byte		.L1055
.L1053:
	.sleb128	18
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L1054
	.section	.debug_info,,n
.L1052:
	.sleb128	19
	.4byte		.L1053
.L1060:
	.sleb128	17
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L1059:
	.sleb128	18
	.byte		"uint8"
	.byte		0
	.4byte		.L1060
.L1058:
	.sleb128	18
	.byte		"Dem_EventStatusType"
	.byte		0
	.4byte		.L1059
.L1057:
	.sleb128	19
	.4byte		.L1058
.L1066:
	.sleb128	18
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L1059
.L1074:
	.sleb128	18
	.byte		"WdgM_ModeType"
	.byte		0
	.4byte		.L1059
.L1073:
	.sleb128	19
	.4byte		.L1074
.L1082:
	.sleb128	18
	.byte		"WdgM_SupervisedEntityIdType"
	.byte		0
	.4byte		.L1054
.L1081:
	.sleb128	19
	.4byte		.L1082
	.section	.debug_info,,n
.L1086:
	.sleb128	20
	.4byte		.L1054
.L1085:
	.sleb128	19
	.4byte		.L1086
.L1119:
	.sleb128	19
	.4byte		.L1059
.L1124:
	.sleb128	18
	.byte		"WdgM_LocalstatModeDepType"
	.byte		0
	.4byte		.L1125
.L1123:
	.sleb128	20
	.4byte		.L1124
.L1122:
	.sleb128	20
	.4byte		.L1123
.L1157:
	.sleb128	18
	.byte		"WdgM_LocalStatusType"
	.byte		0
	.4byte		.L1158
.L1198:
	.sleb128	19
	.4byte		.L1124
.L1197:
	.sleb128	20
	.4byte		.L1198
.L1196:
	.sleb128	19
	.4byte		.L1197
.L1203:
	.sleb128	18
	.byte		"WdgM_DeadlineSupervisionType"
	.byte		0
	.4byte		.L1204
.L1202:
	.sleb128	19
	.4byte		.L1203
.L1201:
	.sleb128	20
	.4byte		.L1202
.L1200:
	.sleb128	19
	.4byte		.L1201
.L1208:
	.sleb128	17
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L1207:
	.sleb128	18
	.byte		"uint32"
	.byte		0
	.4byte		.L1208
.L1216:
	.sleb128	18
	.byte		"WdgM_NotifyStatus"
	.byte		0
	.4byte		.L1217
.L1219:
	.sleb128	18
	.byte		"WdgM_GlobalStatusType"
	.byte		0
	.4byte		.L1220
.L1235:
	.sleb128	18
	.byte		"boolean"
	.byte		0
	.4byte		.L1060
.L1254:
	.sleb128	18
	.byte		"WdgM_CheckpointType"
	.byte		0
	.4byte		.L1255
.L1253:
	.sleb128	19
	.4byte		.L1254
.L1252:
	.sleb128	20
	.4byte		.L1253
.L1251:
	.sleb128	19
	.4byte		.L1252
.L1279:
	.sleb128	18
	.byte		"WdgM_CheckpointIdType"
	.byte		0
	.4byte		.L1054
.L1278:
	.sleb128	19
	.4byte		.L1279
.L1282:
	.sleb128	20
	.4byte		.L1254
.L1281:
	.sleb128	20
	.4byte		.L1282
.L1358:
	.sleb128	18
	.byte		"WdgM_AliveSupervisionType"
	.byte		0
	.4byte		.L1359
.L1357:
	.sleb128	20
	.4byte		.L1358
.L1363:
	.sleb128	18
	.byte		"WdgM_AliveSupervisionMonitorType"
	.byte		0
	.4byte		.L1364
.L1362:
	.sleb128	20
	.4byte		.L1363
.L1368:
	.sleb128	18
	.byte		"WdgM_SupervisedEntityMonitorType"
	.byte		0
	.4byte		.L1369
.L1367:
	.sleb128	20
	.4byte		.L1368
.L1381:
	.sleb128	17
	.byte		"short"
	.byte		0
	.byte		0x5
	.byte		0x2
.L1380:
	.sleb128	18
	.byte		"sint16"
	.byte		0
	.4byte		.L1381
.L1422:
	.sleb128	18
	.byte		"WdgM_ActivationStatusType"
	.byte		0
	.4byte		.L1423
.L1455:
	.sleb128	18
	.byte		"CounterType"
	.byte		0
	.4byte		.L1207
.L1454:
	.sleb128	19
	.4byte		.L1455
.L1459:
	.sleb128	18
	.byte		"WdgM_DeadLineSupervisionMonitorType"
	.byte		0
	.4byte		.L1460
.L1458:
	.sleb128	20
	.4byte		.L1459
.L1457:
	.sleb128	19
	.4byte		.L1458
.L1463:
	.sleb128	18
	.byte		"TickType"
	.byte		0
	.4byte		.L1207
.L1473:
	.sleb128	18
	.byte		"WdgM_ConfigType"
	.byte		0
	.4byte		.L1474
.L1472:
	.sleb128	19
	.4byte		.L1473
.L1471:
	.sleb128	20
	.4byte		.L1472
.L1470:
	.sleb128	19
	.4byte		.L1471
.L1521:
	.sleb128	20
	.4byte		.L1074
.L1552:
	.sleb128	18
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L1553
.L1551:
	.sleb128	20
	.4byte		.L1552
.L1597:
	.sleb128	20
	.4byte		.L1157
.L1611:
	.sleb128	20
	.4byte		.L1219
.L1633:
	.sleb128	20
	.4byte		.L1082
.L1667:
	.sleb128	19
	.4byte		.L1668
.L1666:
	.sleb128	20
	.4byte		.L1667
.L1665:
	.sleb128	19
	.4byte		.L1666
.L1671:
	.sleb128	19
	.4byte		.L1207
	.section	.debug_info,,n
.L1674:
	.sleb128	21
	.4byte		.L1675-.L2
	.4byte		.L1368
	.section	.debug_info,,n
	.sleb128	22
	.sleb128	0
.L1675:
.L1677:
	.sleb128	21
	.4byte		.L1678-.L2
	.4byte		.L1363
	.sleb128	22
	.sleb128	0
.L1678:
.L1680:
	.sleb128	21
	.4byte		.L1681-.L2
	.4byte		.L1459
	.sleb128	22
	.sleb128	0
.L1681:
.L1685:
	.sleb128	18
	.byte		"WdgM_LogicalSupervisionMonitorType"
	.byte		0
	.4byte		.L1686
.L1683:
	.sleb128	21
	.4byte		.L1684-.L2
	.4byte		.L1685
	.sleb128	22
	.sleb128	0
.L1684:
.L1689:
	.sleb128	18
	.byte		"WdgM_DemEventIdType"
	.byte		0
	.4byte		.L1690
.L1688:
	.sleb128	19
	.4byte		.L1689
.L1693:
	.sleb128	18
	.byte		"WdgM_CallerIdType"
	.byte		0
	.4byte		.L1694
.L1692:
	.sleb128	19
	.4byte		.L1693
.L1706:
	.sleb128	19
	.4byte		.L1054
.L1705:
	.sleb128	20
	.4byte		.L1706
.L1704:
	.sleb128	19
	.4byte		.L1705
.L1709:
	.sleb128	20
	.4byte		.L1059
.L1708:
	.sleb128	19
	.4byte		.L1709
.L1714:
	.sleb128	18
	.byte		"WdgM_ModeInfoType"
	.byte		0
	.4byte		.L1715
.L1713:
	.sleb128	19
	.4byte		.L1714
.L1712:
	.sleb128	20
	.4byte		.L1713
.L1711:
	.sleb128	19
	.4byte		.L1712
.L1719:
	.sleb128	18
	.byte		"WdgM_LocalstatModeIndepType"
	.byte		0
	.4byte		.L1720
.L1718:
	.sleb128	19
	.4byte		.L1719
.L1717:
	.sleb128	20
	.4byte		.L1718
.L1716:
	.sleb128	19
	.4byte		.L1717
.L1722:
	.sleb128	20
	.4byte		.L1671
.L1721:
	.sleb128	19
	.4byte		.L1722
.L1726:
	.sleb128	19
	.4byte		.L1358
.L1725:
	.sleb128	20
	.4byte		.L1726
.L1724:
	.sleb128	19
	.4byte		.L1725
.L1730:
	.sleb128	18
	.byte		"WdgM_TriggerType"
	.byte		0
	.4byte		.L1731
.L1729:
	.sleb128	19
	.4byte		.L1730
.L1728:
	.sleb128	20
	.4byte		.L1729
.L1727:
	.sleb128	19
	.4byte		.L1728
.L1734:
	.sleb128	20
	.4byte		.L1201
.L1733:
	.sleb128	19
	.4byte		.L1734
.L1736:
	.sleb128	20
	.4byte		.L1252
.L1735:
	.sleb128	19
	.4byte		.L1736
.L1738:
	.sleb128	20
	.4byte		.L1119
.L1737:
	.sleb128	19
	.4byte		.L1738
.L1740:
	.sleb128	20
	.4byte		.L1685
.L1739:
	.sleb128	19
	.4byte		.L1740
.L1741:
	.sleb128	19
	.4byte		.L1235
.L1745:
	.sleb128	18
	.byte		"WdgIf_ModeType"
	.byte		0
	.4byte		.L1746
.L1744:
	.sleb128	18
	.byte		"WdgM_WdgModeType"
	.byte		0
	.4byte		.L1745
.L1743:
	.sleb128	19
	.4byte		.L1744
.L1748:
	.sleb128	19
	.4byte		.L1367
.L1750:
	.sleb128	18
	.byte		"WdgM_SupervisionResultType"
	.byte		0
	.4byte		.L1751
.L1755:
	.sleb128	18
	.byte		"WdgM_DeadlineTimeType"
	.byte		0
	.4byte		.L1756
.L1754:
	.sleb128	19
	.4byte		.L1755
.L1758:
	.sleb128	18
	.byte		"WdgM_TimerStatusType"
	.byte		0
	.4byte		.L1759
.L1762:
	.sleb128	19
	.4byte		.L1362
	.section	.debug_info,,n
.L1767:
	.sleb128	23
	.4byte		.L1768-.L2
	.4byte		.L1066
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	24
	.4byte		.L1059
	.sleb128	0
.L1768:
.L1766:
	.sleb128	20
	.4byte		.L1767
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1044:
	.sleb128	0
.L1040:

	.section	.debug_loc,,n
	.align	0
.L1056:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L1061:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo4),4
	.d2locend
.L1075:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locend
.L1083:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locend
.L1084:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),4
	.d2locend
.L1087:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),5
	.d2locend
.L1089:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo10),6
	.d2locend
.L1091:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo10),7
	.d2locend
.L1093:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),31
	.d2locend
.L1099:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locend
.L1101:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo18),3
	.d2locend
.L1103:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo19),4
	.d2locend
.L1109:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),31
	.d2locend
.L1111:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo24),3
	.d2locend
.L1113:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),30
	.d2locend
.L1120:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locend
.L1121:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo27),4
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo26),4
	.d2locend
.L1126:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),5
	.d2locend
.L1128:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),6
	.d2locend
.L1130:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo26),30
	.d2locend
.L1132:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),29
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo27),29
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),7
	.d2locend
.L1138:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),7
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),7
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo27),7
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),7
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo35),7
	.d2locend
.L1145:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),31
	.d2locend
.L1159:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locend
.L1165:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),4
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),4
	.d2locend
.L1166:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo52),5
	.d2locend
.L1172:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),31
	.d2locend
.L1174:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo57),30
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),3
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo56),3
	.d2locend
.L1181:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),3
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),0
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),3
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),0
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),0
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),3
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo75),0
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo59),0
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),0
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),0
	.d2locend
.L1183:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),9
	.d2locend
.L1190:
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),3
	.d2locend
.L1199:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),3
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),3
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),3
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),3
	.d2locend
.L1205:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo92),4
	.d2locend
.L1209:
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),0
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),0
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo86),0
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),0
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),0
	.d2locend
.L1211:
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo86),6
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo90),6
	.d2locend
.L1221:
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo100),3
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),0
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),0
	.d2locend
.L1223:
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),4
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),3
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo106),4
	.d2locend
.L1229:
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo108),3
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),31
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),3
	.d2locend
.L1230:
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo108),4
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo113),0
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo115),4
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo112),4
	.d2locend
.L1237:
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),3
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),0
	.d2locend
.L1239:
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo121),3
	.d2locend
.L1245:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo120),4
	.d2locend
.L1256:
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),3
	.d2locend
.L1267:
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),0
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),0
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),0
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),0
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),0
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),0
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),0
	.d2locend
.L1269:
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo140),31
	.d2locend
.L1271:
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),30
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo140),30
	.d2locend
.L1277:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),3
	.d2locend
.L1280:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),4
	.d2locend
.L1283:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),5
	.d2locend
.L1285:
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),6
	.d2locend
.L1287:
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),0
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo145),0
	.d2locend
.L1289:
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo152),30
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo149),30
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo155),7
	.d2locend
.L1295:
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo157),7
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo149),7
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo159),7
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo154),7
	.d2locend
.L1301:
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo162),3
	.d2locend
.L1302:
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo163),4
	.d2locend
.L1304:
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo165),0
	.d2locreg	%offsetof(.Llo166), %offsetof(.Llo162),3
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo168),3
	.d2locend
.L1306:
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo169),0
	.d2locend
.L1308:
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo170),4
	.d2locend
.L1310:
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo162),4
	.d2locend
.L1316:
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo172),3
	.d2locend
.L1317:
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo173),4
	.d2locend
.L1319:
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo174),3
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo176),3
	.d2locend
.L1321:
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo178),0
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo175),0
	.d2locend
.L1323:
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo179),4
	.d2locend
.L1325:
	.d2locreg	%offsetof(.Llo180), %offsetof(.Llo175),5
	.d2locend
.L1331:
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo182),3
	.d2locend
.L1332:
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo183),4
	.d2locend
.L1334:
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo185),6
	.d2locend
.L1336:
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo182),4
	.d2locend
.L1338:
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo182),5
	.d2locend
.L1344:
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo188),3
	.d2locend
.L1346:
	.d2locreg	%offsetof(.Llo189), %offsetof(.Llo188),4
	.d2locend
.L1348:
	.d2locreg	%offsetof(.Llo190), %offsetof(.Llo188),0
	.d2locend
.L1354:
	.d2locreg	%offsetof(.Llo191), %offsetof(.Llo192),3
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo194),0
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo196),0
	.d2locend
.L1355:
	.d2locreg	%offsetof(.Llo191), %offsetof(.Llo197),4
	.d2locend
.L1360:
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo198),3
	.d2locreg	%offsetof(.Llo199), %offsetof(.Llo200),3
	.d2locreg	%offsetof(.Llo201), %offsetof(.Llo202),3
	.d2locreg	%offsetof(.Llo203), %offsetof(.Llo204),3
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),3
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),3
	.d2locend
.L1365:
	.d2locreg	%offsetof(.Llo197), %offsetof(.Llo209),4
	.d2locreg	%offsetof(.Llo210), %offsetof(.Llo211),4
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo213),4
	.d2locreg	%offsetof(.Llo214), %offsetof(.Llo215),4
	.d2locend
.L1370:
	.d2locreg	%offsetof(.Llo216), %offsetof(.Llo217),6
	.d2locend
.L1376:
	.d2locreg	%offsetof(.Llo218), %offsetof(.Llo219),5
	.d2locreg	%offsetof(.Llo220), %offsetof(.Llo206),5
	.d2locend
.L1378:
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),7
	.d2locend
.L1382:
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo198),0
	.d2locreg	%offsetof(.Llo224), %offsetof(.Llo199),0
	.d2locreg	%offsetof(.Llo225), %offsetof(.Llo200),0
	.d2locreg	%offsetof(.Llo226), %offsetof(.Llo209),0
	.d2locreg	%offsetof(.Llo227), %offsetof(.Llo228),0
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo219),0
	.d2locreg	%offsetof(.Llo230), %offsetof(.Llo231),0
	.d2locreg	%offsetof(.Llo232), %offsetof(.Llo233),0
	.d2locreg	%offsetof(.Llo234), %offsetof(.Llo206),0
	.d2locreg	%offsetof(.Llo235), %offsetof(.Llo236),0
	.d2locreg	%offsetof(.Llo237), %offsetof(.Llo208),0
	.d2locreg	%offsetof(.Llo238), %offsetof(.Llo239),0
	.d2locreg	%offsetof(.Llo240), %offsetof(.Llo222),0
	.d2locend
.L1389:
	.d2locreg	%offsetof(.Llo241), %offsetof(.Llo242),31
	.d2locreg	%offsetof(.Llo243), %offsetof(.Llo244),31
	.d2locreg	%offsetof(.Llo245), %offsetof(.Llo246),31
	.d2locend
.L1395:
	.d2locreg	%offsetof(.Llo247), %offsetof(.Llo242),30
	.d2locreg	%offsetof(.Llo248), %offsetof(.Llo249),30
	.d2locreg	%offsetof(.Llo250), %offsetof(.Llo251),30
	.d2locend
.L1397:
	.d2locreg	%offsetof(.Llo252), %offsetof(.Llo242),3
	.d2locreg	%offsetof(.Llo253), %offsetof(.Llo254),3
	.d2locreg	%offsetof(.Llo255), %offsetof(.Llo256),3
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo249),29
	.d2locreg	%offsetof(.Llo250), %offsetof(.Llo251),29
	.d2locreg	%offsetof(.Llo258), %offsetof(.Llo259),3
	.d2locend
.L1403:
	.d2locreg	%offsetof(.Llo260), %offsetof(.Llo261),4
	.d2locreg	%offsetof(.Llo262), %offsetof(.Llo263),4
	.d2locreg	%offsetof(.Llo264), %offsetof(.Llo265),4
	.d2locreg	%offsetof(.Llo266), %offsetof(.Llo251),4
	.d2locend
.L1409:
	.d2locreg	%offsetof(.Llo267), %offsetof(.Llo268),6
	.d2locend
.L1415:
	.d2locreg	%offsetof(.Llo269), %offsetof(.Llo270),3
	.d2locreg	%offsetof(.Llo271), %offsetof(.Llo272),3
	.d2locend
.L1421:
	.d2locreg	%offsetof(.Llo273), %offsetof(.Llo274),4
	.d2locreg	%offsetof(.Llo275), %offsetof(.Llo276),6
	.d2locreg	%offsetof(.Llo277), %offsetof(.Llo278),6
	.d2locend
.L1424:
	.d2locreg	%offsetof(.Llo273), %offsetof(.Llo274),5
	.d2locreg	%offsetof(.Llo279), %offsetof(.Llo278),5
	.d2locend
.L1426:
	.d2locreg	%offsetof(.Llo280), %offsetof(.Llo274),0
	.d2locreg	%offsetof(.Llo275), %offsetof(.Llo278),3
	.d2locend
.L1432:
	.d2locreg	%offsetof(.Llo281), %offsetof(.Llo282),3
	.d2locreg	%offsetof(.Llo283), %offsetof(.Llo284),31
	.d2locreg	%offsetof(.Llo285), %offsetof(.Llo286),31
	.d2locend
.L1434:
	.d2locreg	%offsetof(.Llo281), %offsetof(.Llo287),30
	.d2locreg	%offsetof(.Llo288), %offsetof(.Llo289),3
	.d2locreg	%offsetof(.Llo290), %offsetof(.Llo291),30
	.d2locreg	%offsetof(.Llo292), %offsetof(.Llo293),30
	.d2locreg	%offsetof(.Llo294), %offsetof(.Llo295),30
	.d2locreg	%offsetof(.Llo296), %offsetof(.Llo297),30
	.d2locreg	%offsetof(.Llo298), %offsetof(.Llo299),30
	.d2locend
.L1436:
	.d2locreg	%offsetof(.Llo300), %offsetof(.Llo301),3
	.d2locreg	%offsetof(.Llo302), %offsetof(.Llo303),6
	.d2locreg	%offsetof(.Llo289), %offsetof(.Llo304),6
	.d2locreg	%offsetof(.Llo295), %offsetof(.Llo299),6
	.d2locend
.L1442:
	.d2locreg	%offsetof(.Llo305), %offsetof(.Llo306),7
	.d2locend
.L1448:
	.d2locreg	%offsetof(.Llo307), %offsetof(.Llo308),0
	.d2locend
.L1456:
	.d2locreg	%offsetof(.Llo309), %offsetof(.Llo310),3
	.d2locend
.L1461:
	.d2locreg	%offsetof(.Llo309), %offsetof(.Llo311),4
	.d2locreg	%offsetof(.Llo312), %offsetof(.Llo313),31
	.d2locend
.L1464:
	.d2locreg	%offsetof(.Llo309), %offsetof(.Llo314),30
	.d2locend
.L1475:
	.d2locreg	%offsetof(.Llo315), %offsetof(.Llo316),3
	.d2locreg	%offsetof(.Llo317), %offsetof(.Llo318),4
	.d2locreg	%offsetof(.Llo319), %offsetof(.Llo320),4
	.d2locend
.L1477:
	.d2locreg	%offsetof(.Llo321), %offsetof(.Llo319),3
	.d2locreg	%offsetof(.Llo320), %offsetof(.Llo322),3
	.d2locend
.L1483:
	.d2locreg	%offsetof(.Llo323), %offsetof(.Llo324),3
	.d2locreg	%offsetof(.Llo325), %offsetof(.Llo326),5
	.d2locreg	%offsetof(.Llo327), %offsetof(.Llo328),5
	.d2locreg	%offsetof(.Llo329), %offsetof(.Llo330),3
	.d2locreg	%offsetof(.Llo331), %offsetof(.Llo332),3
	.d2locreg	%offsetof(.Llo333), %offsetof(.Llo334),5
	.d2locreg	%offsetof(.Llo335), %offsetof(.Llo336),5
	.d2locreg	%offsetof(.Llo337), %offsetof(.Llo338),5
	.d2locreg	%offsetof(.Llo339), %offsetof(.Llo340),5
	.d2locreg	%offsetof(.Llo341), %offsetof(.Llo342),5
	.d2locreg	%offsetof(.Llo343), %offsetof(.Llo344),5
	.d2locend
.L1485:
	.d2locreg	%offsetof(.Llo345), %offsetof(.Llo346),3
	.d2locreg	%offsetof(.Llo347), %offsetof(.Llo348),3
	.d2locreg	%offsetof(.Llo349), %offsetof(.Llo350),3
	.d2locreg	%offsetof(.Llo351), %offsetof(.Llo352),3
	.d2locend
.L1491:
	.d2locreg	%offsetof(.Llo353), %offsetof(.Llo354),31
	.d2locreg	%offsetof(.Llo355), %offsetof(.Llo356),3
	.d2locreg	%offsetof(.Llo357), %offsetof(.Llo358),3
	.d2locreg	%offsetof(.Llo359), %offsetof(.Llo360),3
	.d2locend
.L1493:
	.d2locreg	%offsetof(.Llo328), %offsetof(.Llo338),30
	.d2locreg	%offsetof(.Llo361), %offsetof(.Llo362),3
	.d2locreg	%offsetof(.Llo363), %offsetof(.Llo344),3
	.d2locreg	%offsetof(.Llo364), %offsetof(.Llo365),3
	.d2locend
.L1499:
	.d2locreg	%offsetof(.Llo366), %offsetof(.Llo367),3
	.d2locend
.L1501:
	.d2locreg	%offsetof(.Llo368), %offsetof(.Llo369),9
	.d2locend
.L1504:
	.d2locreg	%offsetof(.Llo370), %offsetof(.Llo371),3
	.d2locend
.L1515:
	.d2locreg	%offsetof(.Llo372), %offsetof(.Llo373),3
	.d2locreg	%offsetof(.Llo374), %offsetof(.Llo375),31
	.d2locend
.L1522:
	.d2locreg	%offsetof(.Llo376), %offsetof(.Llo377),3
	.d2locreg	%offsetof(.Llo378), %offsetof(.Llo379),4
	.d2locreg	%offsetof(.Llo380), %offsetof(.Llo381),4
	.d2locend
.L1524:
	.d2locreg	%offsetof(.Llo376), %offsetof(.Llo382),31
	.d2locend
.L1530:
	.d2locreg	%offsetof(.Llo383), %offsetof(.Llo384),3
	.d2locreg	%offsetof(.Llo385), %offsetof(.Llo386),31
	.d2locreg	%offsetof(.Llo387), %offsetof(.Llo388),31
	.d2locend
.L1531:
	.d2locreg	%offsetof(.Llo383), %offsetof(.Llo385),4
	.d2locreg	%offsetof(.Llo389), %offsetof(.Llo390),4
	.d2locreg	%offsetof(.Llo391), %offsetof(.Llo392),4
	.d2locend
.L1533:
	.d2locreg	%offsetof(.Llo383), %offsetof(.Llo393),30
	.d2locend
.L1539:
	.d2locreg	%offsetof(.Llo394), %offsetof(.Llo395),0
	.d2locend
.L1545:
	.d2locreg	%offsetof(.Llo396), %offsetof(.Llo397),3
	.d2locreg	%offsetof(.Llo398), %offsetof(.Llo399),31
	.d2locend
.L1554:
	.d2locreg	%offsetof(.Llo400), %offsetof(.Llo401),3
	.d2locreg	%offsetof(.Llo402), %offsetof(.Llo403),3
	.d2locend
.L1560:
	.d2locreg	%offsetof(.Llo404), %offsetof(.Llo405),3
	.d2locreg	%offsetof(.Llo406), %offsetof(.Llo407),31
	.d2locend
.L1561:
	.d2locreg	%offsetof(.Llo404), %offsetof(.Llo405),4
	.d2locreg	%offsetof(.Llo406), %offsetof(.Llo408),30
	.d2locend
.L1565:
	.d2locreg	%offsetof(.Llo409), %offsetof(.Llo410),29
	.d2locreg	%offsetof(.Llo411), %offsetof(.Llo412),29
	.d2locend
.L1567:
	.d2locreg	%offsetof(.Llo413), %offsetof(.Llo414),28
	.d2locreg	%offsetof(.Llo415), %offsetof(.Llo416),28
	.d2locreg	%offsetof(.Llo417), %offsetof(.Llo418),28
	.d2locreg	%offsetof(.Llo419), %offsetof(.Llo410),28
	.d2locreg	%offsetof(.Llo420), %offsetof(.Llo421),28
	.d2locend
.L1573:
	.d2locreg	%offsetof(.Llo422), %offsetof(.Llo423),31
	.d2locreg	%offsetof(.Llo420), %offsetof(.Llo424),31
	.d2locend
.L1579:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo426),3
	.d2locreg	%offsetof(.Llo427), %offsetof(.Llo428),30
	.d2locreg	%offsetof(.Llo429), %offsetof(.Llo424),3
	.d2locend
.L1585:
	.d2locreg	%offsetof(.Llo430), %offsetof(.Llo431),3
	.d2locreg	%offsetof(.Llo432), %offsetof(.Llo433),31
	.d2locend
.L1588:
	.d2locreg	%offsetof(.Llo430), %offsetof(.Llo434),29
	.d2locend
.L1590:
	.d2locreg	%offsetof(.Llo435), %offsetof(.Llo436),30
	.d2locend
.L1596:
	.d2locreg	%offsetof(.Llo437), %offsetof(.Llo438),3
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo440),8
	.d2locreg	%offsetof(.Llo441), %offsetof(.Llo442),8
	.d2locreg	%offsetof(.Llo443), %offsetof(.Llo444),8
	.d2locend
.L1598:
	.d2locreg	%offsetof(.Llo437), %offsetof(.Llo445),4
	.d2locreg	%offsetof(.Llo446), %offsetof(.Llo447),30
	.d2locend
.L1600:
	.d2locreg	%offsetof(.Llo448), %offsetof(.Llo443),31
	.d2locreg	%offsetof(.Llo449), %offsetof(.Llo450),31
	.d2locend
.L1612:
	.d2locreg	%offsetof(.Llo451), %offsetof(.Llo452),3
	.d2locreg	%offsetof(.Llo453), %offsetof(.Llo454),3
	.d2locend
.L1614:
	.d2locreg	%offsetof(.Llo451), %offsetof(.Llo455),31
	.d2locend
.L1625:
	.d2locreg	%offsetof(.Llo456), %offsetof(.Llo457),31
	.d2locend
.L1627:
	.d2locreg	%offsetof(.Llo458), %offsetof(.Llo457),30
	.d2locend
.L1634:
	.d2locreg	%offsetof(.Llo459), %offsetof(.Llo460),3
	.d2locreg	%offsetof(.Llo461), %offsetof(.Llo462),3
	.d2locend
.L1636:
	.d2locreg	%offsetof(.Llo459), %offsetof(.Llo463),31
	.d2locend
.L1642:
	.d2locreg	%offsetof(.Llo464), %offsetof(.Llo465),4
	.d2locend
.L1644:
	.d2locreg	%offsetof(.Llo466), %offsetof(.Llo462),0
	.d2locend
.L1656:
	.d2locreg	%offsetof(.Llo467), %offsetof(.Llo468),31
	.d2locend
.L1658:
	.d2locreg	%offsetof(.Llo469), %offsetof(.Llo470),3
	.d2locreg	%offsetof(.Llo471), %offsetof(.Llo472),31
	.d2locend
.L1660:
	.d2locreg	%offsetof(.Llo473), %offsetof(.Llo474),3
	.d2locreg	%offsetof(.Llo475), %offsetof(.Llo472),30
	.d2locend
.L1662:
	.d2locreg	%offsetof(.Llo476), %offsetof(.Llo468),30
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "WdgM_MainFunction"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nlist "calls"
	.wrcm.str "Det_ReportError"
	.wrcm.str "SchM_Enter_WdgM_EaActStatusProtect"
	.wrcm.str "SchM_Exit_WdgM_EaActStatusProtect"
	.wrcm.str "WdgMAssertInitialized"
	.wrcm.str "WdgM_CalculateGlobalStatus"
	.wrcm.str "WdgM_GlobalStatusNotification"
	.wrcm.str "WdgM_RTENotifLocalStatusChange"
	.wrcm.str "WdgM_SetGlobalStatus"
	.wrcm.str "WdgM_TriggerWatchdogs"
	.wrcm.str "WdgM_UpdateActualDeadlineTime"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "WdgM_GetFirstExpiredSEID"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Det_ReportError"
	.wrcm.end
	.wrcm.nelem "WdgM_PerformReset"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Det_ReportError","WdgIf_SetTriggerCondition","WdgMAssertInitialized"
	.wrcm.end
	.wrcm.nelem "WdgM_GetGlobalStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Det_ReportError"
	.wrcm.end
	.wrcm.nelem "WdgM_GetLocalStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Det_ReportError","WdgMAssertInitialized","WdgMAssertInvalidSEID","WdgM_GetSEID_Binary"
	.wrcm.end
	.wrcm.nelem "WdgM_UpdateAliveCounter"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Det_ReportError","WdgMAssertAmbiguous","WdgMAssertInitialized","WdgMAssertInvalidSEID","WdgM_CheckpointReached"
	.wrcm.end
	.wrcm.nelem "WdgM_CheckpointReached"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nlist "calls"
	.wrcm.str "Det_ReportError"
	.wrcm.str "SchM_Enter_WdgM_EaActStatusProtect"
	.wrcm.str "SchM_Exit_WdgM_EaActStatusProtect"
	.wrcm.str "WdgMAssertInitialized"
	.wrcm.str "WdgMAssertInvalidSEID"
	.wrcm.str "WdgM_CheckLogicalSupervisedEntities"
	.wrcm.str "WdgM_DeadlineSupervision"
	.wrcm.str "WdgM_GetCPID_Binary"
	.wrcm.str "WdgM_GetSEID_Binary"
	.wrcm.str "WdgM_UpdateActualDeadlineTime"
	.wrcm.str "WdgM_UpdateCheckpointAliveCounter"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "WdgM_GetVersionInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Det_ReportError"
	.wrcm.end
	.wrcm.nelem "WdgM_SetMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nlist "calls"
	.wrcm.str "Det_ReportError"
	.wrcm.str "SchM_Enter_WdgM_EaActStatusProtect"
	.wrcm.str "SchM_Exit_WdgM_EaActStatusProtect"
	.wrcm.str "WdgMAssertInitialized"
	.wrcm.str "WdgMAssertInvalidMode"
	.wrcm.str "WdgM_DemReport"
	.wrcm.str "WdgM_GlobalStatusNotification"
	.wrcm.str "WdgM_IsValidCallerId"
	.wrcm.str "WdgM_RTENotifLocalStatusChange"
	.wrcm.str "WdgM_ResetSupervisedEntity"
	.wrcm.str "WdgM_SetGlobalStatus"
	.wrcm.str "WdgM_SwitchWdgMode"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "WdgM_GetMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Det_ReportError","WdgMAssertInitialized"
	.wrcm.end
	.wrcm.nelem "WdgM_DeInit"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Det_ReportError","SchM_Enter_WdgM_EaActStatusProtect","SchM_Exit_WdgM_EaActStatusProtect","WdgMAssertInitialized","WdgM_GlobalStatusNotification","WdgM_SetGlobalStatus","WdgM_TriggerWatchdogs"
	.wrcm.end
	.wrcm.nelem "WdgM_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Det_ReportError","WdgM_ConsistencyCheck","WdgM_DemReport","WdgM_GetSEID_Binary","WdgM_GlobalStatusNotification","WdgM_InitSupervisedEntity","WdgM_RTENotifLocalStatusChange","WdgM_SetGlobalStatus","WdgM_SwitchWdgMode"
	.wrcm.end
	.wrcm.nelem "WdgM_ConsistencyCheck"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "WdgM_UpdateActualDeadlineTime"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "GetCounterValue"
	.wrcm.end
	.wrcm.nelem "WdgM_CheckLogicalSupervisedEntities"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "WdgM_SetIndexInBitvector","WdgM_SetNextInternalMask","WdgM_TestIndexInExternalBitVector","WdgM_TestIndexInInternalBitVector"
	.wrcm.end
	.wrcm.nelem "WdgM_InitSupervisedEntity"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "WdgM_CalculateGlobalStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "WdgM_CalculateLocalSupervisionBasedOnOneAlive","WdgM_SetEntityStatus"
	.wrcm.end
	.wrcm.nelem "WdgM_CalculateLocalSupervisionBasedOnOneAlive"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "WdgM_SetEntityStatus"
	.wrcm.end
	.wrcm.nelem "WdgM_SetNextInternalMask"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "WdgM_SetIndexInBitvector"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "WdgM_TestIndexInExternalBitVector"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "WdgM_TestIndexInInternalBitVector"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "WdgM_GetCPID_Binary"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "WdgM_TriggerWatchdogs"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "WdgIf_SetTriggerCondition"
	.wrcm.end
	.wrcm.nelem "WdgM_UpdateCheckpointAliveCounter"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "WdgM_IsValidCallerId"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "WdgM_GlobalStatusNotification"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Rte_Switch_globalMode_currentMode","WdgM_DemReport"
	.wrcm.end
	.wrcm.nelem "WdgM_SetGlobalStatus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "WdgM_DeadlineSupervision"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "WdgM_ResetSupervisedEntity"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "WdgM_GetSEID_Binary","WdgM_SetEntityStatus"
	.wrcm.end
	.wrcm.nelem "WdgM_SetEntityStatus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "WdgM_RTENotifLocalStatusChange"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "WdgM_GetSEID_Binary"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "WdgM_SwitchWdgMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "WdgIf_SetMode"
	.wrcm.end
	.wrcm.nelem "WdgMAssertInvalidSEID"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "WdgMAssertAmbiguous"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "WdgMAssertInvalidMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "WdgMAssertInitialized"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "WdgM_DemReport"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dem_ReportErrorStatus"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\WdgM.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\WdgM.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\WdgM.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\WdgM.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\WdgM.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\WdgM.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\WDG\WdgM\ssc\make\..\src\WdgM.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
