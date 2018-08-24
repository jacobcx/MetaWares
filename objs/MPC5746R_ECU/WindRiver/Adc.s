#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Adc.c"
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
# LOCAL_INLINE FUNC(void, ADC_CODE) Adc_InitGroupsStatus(void)
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L685:
	.section	.invalid_TEXT,,c
#$$ld
.L681:
	.0byte		.L679
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc.c"
        .d2line         2170,35
#$$ld
.L688:

#$$bf	Adc_InitGroupsStatus,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
Adc_InitGroupsStatus:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(Adc_GroupType,AUTOMATIC) Group = 0U;
	.d2line		2172
	diab.li		r3,0		# Group=r3
# 
#     /* Initialize Group Status structures to beginning values */
#     for (Group = 0U; Group < Adc_pCfgPtr->GroupCount; Group++)
.L518:
	.d2line		2175
.Llo1:
	rlwinm		r0,r3,0,16,31		# Group=r3
	lis		r4,Adc_pCfgPtr@ha
	lwz		r4,Adc_pCfgPtr@l(r4)
	lhz		r4,12(r4)
	se_cmp		r0,r4
	bc		0,0,.L517	# ge
#     {
#         Adc_aGroupStatus[Group].eConversion = ADC_IDLE;
	.d2line		2177
	diab.li		r5,0
	lis		r4,Adc_aGroupStatus@ha
	e_add16i		r4,r4,Adc_aGroupStatus@l
	rlwinm		r0,r3,4,12,27		# Group=r3
	stwx		r5,r4,r0
#         /* this group was not converted yet */
#         Adc_aGroupStatus[Group].eAlreadyConverted = ADC_NOT_YET_CONVERTED;
	.d2line		2179
	lis		r4,(Adc_aGroupStatus+4)@ha
	e_add16i		r4,r4,(Adc_aGroupStatus+4)@l
	stwx		r5,r4,r0
# 
#         Adc_aGroupStatus[Group].ResultIndex = 0U;
	.d2line		2181
	lis		r4,(Adc_aGroupStatus+12)@ha
	e_add16i		r4,r4,(Adc_aGroupStatus+12)@l
	sthux		r5,r4,r0
# #ifdef ADC_CURRENT_CHANNEL_USED
#         Adc_aGroupStatus[Group].CurrentChannel = 0U;
# #endif /* ADC_CURRENT_CHANNEL_USED */
# #if (ADC_ENABLE_LIMIT_CHECK == STD_ON)
#         Adc_aGroupStatus[Group].bLimitCheckFailed = (boolean)FALSE;
	.d2line		2186
	lis		r4,(Adc_aGroupStatus+14)@ha
	e_add16i		r4,r4,(Adc_aGroupStatus+14)@l
	stbux		r5,r4,r0
# #endif /* ADC_ENABLE_LIMIT_CHECK == STD_ON */
# 
# #if (ADC_HW_TRIGGER_API == STD_ON)
#         Adc_aGroupStatus[Group].eHwTriggering = ADC_HWTRIGGER_DISABLED;
#     #if (ADC_ENABLE_CTUTRIG_NONAUTO_API == STD_ON)
#         Adc_aGroupStatus[Group].eCtuTriggering = ADC_HWTRIGGER_DISABLED;
#     #endif  /* ADC_ENABLE_CTUTRIG_API == STD_ON */
# #endif /* (ADC_HW_TRIGGER_API == STD_ON) */
# 
# #if (ADC_GRP_NOTIF_CAPABILITY == STD_ON)
#         Adc_aGroupStatus[Group].eNotification = ADC_NOTIFICATION_DISABLED;
	.d2line		2197
	lis		r4,(Adc_aGroupStatus+8)@ha
	e_add16i		r4,r4,(Adc_aGroupStatus+8)@l
	stwx		r5,r4,r0
# #endif /* (ADC_GRP_NOTIF_CAPABILITY == STD_ON) */
# 
# #if (ADC_SETCHANNEL_API == STD_ON)
#         /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#         Adc_aRuntimeGroupChannel[Group].pChannel = Adc_pCfgPtr->pGroups[Group].pAssignment;
#     #ifdef ADC_PDB_SUPPORTED
#         /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#         Adc_aRuntimeGroupChannel[Group].pu16Delays = Adc_pCfgPtr->pGroups[Group].pDelay;
#         Adc_aRuntimeGroupChannel[Group].u16Mask = 0xFFFFU;
#     #endif /* ADC_PDB_SUPPORTED */
# 
#         /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#         Adc_aRuntimeGroupChannel[Group].ChannelCount = Adc_pCfgPtr->pGroups[Group].AssignedChannelCount;
#         Adc_aRuntimeGroupChannel[Group].bRuntimeUpdated = (boolean)FALSE;
# #endif
#     }
	.d2line		2213
	diab.addi		r0,r3,1		# Group=r3
	se_addi		r3,1		# Group=r3 Group=r3
	b		.L518
.L517:
# }
	.d2line		2214
	.d2epilogue_begin
.Llo2:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L689:
	.type		Adc_InitGroupsStatus,@function
	.size		Adc_InitGroupsStatus,.-Adc_InitGroupsStatus
# Number of nodes = 75

# Allocations for Adc_InitGroupsStatus
#	?a4		Group
# LOCAL_INLINE FUNC(void, ADC_CODE) Adc_InitUnitStatus(void)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         2226,35
#$$ld
.L699:

#$$bf	Adc_InitUnitStatus,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.d2_cfa_start __cie
Adc_InitUnitStatus:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit = 0U;
	.d2line		2228
	diab.li		r3,0		# Unit=r3
#     VAR(Adc_QueueIndexType, AUTOMATIC) QueueIdx = 0U;
# 
#     for(Unit = 0U; Unit < (Adc_HwUnitType)ADC_MAX_HW_UNITS; Unit++)
.L524:
	.d2line		2231
.Llo3:
	rlwinm		r0,r3,0,24,31		# Unit=r3
	se_cmpi		r0,4
	bc		0,0,.L523	# ge
#     {
#         /* Filled slots in the queue */
#         Adc_aUnitStatus[Unit].SwNormalQueueIndex = 0U;
	.d2line		2234
	diab.li		r0,0
	lis		r4,Adc_aUnitStatus@ha		# QueueIdx=r4
.Llo5:
	e_add16i		r4,r4,Adc_aUnitStatus@l		# QueueIdx=r4 QueueIdx=r4
	rlwinm		r5,r3,3,21,28		# Unit=r3
	sthux		r0,r4,r5		# QueueIdx=r4
#         /* Mark all the queue slots as "empty" */
#         for(QueueIdx = 0U; QueueIdx < ADC_QUEUE_MAX_DEPTH_MAX; QueueIdx++)
	.d2line		2236
	diab.li		r4,0		# QueueIdx=r4
.L527:
	e_cmphl16i	r4,0		# QueueIdx=r4
	bc		0,2,.L529	# ne
#         {
#             Adc_aUnitStatus[Unit].SwNormalQueue[QueueIdx] = 0U;
	.d2line		2238
	diab.li		r6,0
	lis		r5,(Adc_aUnitStatus+2)@ha
	e_add16i		r5,r5,(Adc_aUnitStatus+2)@l
	rlwinm		r0,r4,1,15,30		# QueueIdx=r4
	se_add		r5,r0
	rlwinm		r0,r3,3,21,28		# Unit=r3
	sthux		r6,r5,r0
#         }
	.d2line		2239
	diab.addi		r0,r4,1		# QueueIdx=r4
	se_addi		r4,1		# QueueIdx=r4 QueueIdx=r4
	b		.L527
.L529:
# 
#         /* SW Injected queue initialization */
#         Adc_aUnitStatus[Unit].SwInjectedQueue[0] =0U;
	.d2line		2242
.Llo6:
	diab.li		r5,0
	lis		r4,(Adc_aUnitStatus+4)@ha		# QueueIdx=r4
.Llo7:
	e_add16i		r4,r4,(Adc_aUnitStatus+4)@l		# QueueIdx=r4 QueueIdx=r4
	rlwinm		r0,r3,3,21,28		# Unit=r3
	sthux		r5,r4,r0		# QueueIdx=r4
#            /* Filled slots in the sw injected queue */
#         Adc_aUnitStatus[Unit].SwInjectedQueueIndex = 0U;
	.d2line		2244
	lis		r4,(Adc_aUnitStatus+6)@ha		# QueueIdx=r4
	e_add16i		r4,r4,(Adc_aUnitStatus+6)@l		# QueueIdx=r4 QueueIdx=r4
	sthux		r5,r4,r0		# QueueIdx=r4
# 
# #if (ADC_HW_TRIGGER_API == STD_ON)
#         Adc_aUnitStatus[Unit].HwInjectedQueue[0] = 0U;
#         /* Filled slots in the Hw queue */
#         Adc_aUnitStatus[Unit].HwInjectedQueueIndex = 0U;
# 
#         Adc_aUnitStatus[Unit].HwNormalQueue[0] = 0U;
#         /* Filled slots in the Hw queue */
#         Adc_aUnitStatus[Unit].HwNormalQueueIndex = 0U;
#     #if (ADC_MULTIPLE_HARDWARE_TRIGGERS == STD_ON)
#         /* by default consider all groups regular groups */
#         Adc_aUnitStatus[Unit].eHwQueueGroupType = ADC_REGULAR_GROUP_TYPE;
#     #endif /* (ADC_MULTIPLE_HARDWARE_TRIGGERS == STD_ON) */
# #endif /* (ADC_HW_TRIGGER_API == STD_ON) */
#     }
	.d2line		2259
	diab.addi		r0,r3,1		# Unit=r3
	se_addi		r3,1		# Unit=r3 Unit=r3
	b		.L524
.L523:
# }
	.d2line		2260
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
.L700:
	.type		Adc_InitUnitStatus,@function
	.size		Adc_InitUnitStatus,.-Adc_InitUnitStatus
# Number of nodes = 77

# Allocations for Adc_InitUnitStatus
#	?a4		Unit
#	?a5		QueueIdx
# FUNC(boolean, ADC_CODE) Adc_CheckConversionValuesInRange
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2277,25
#$$ld
.L713:

#$$bf	Adc_CheckConversionValuesInRange,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr,ctr
	.globl		Adc_CheckConversionValuesInRange
	.d2_cfa_start __cie
Adc_CheckConversionValuesInRange:
.Llo8:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Value=r3 Value=r3
	mr		r7,r4		# Unit=r7 Unit=r4
	mr		r31,r5		# Index=r31 Index=r5
	.d2prologue_end
# (
#     VAR(Adc_ValueGroupType, AUTOMATIC) Value,
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit,
#     VAR(Adc_ChannelType, AUTOMATIC) Index
# )
# {
#     VAR(boolean, AUTOMATIC) bValInRange = (boolean)FALSE;
	.d2line		2284
	diab.li		r4,0		# bValInRange=r4
#     VAR(Adc_ChannelRangeSelectType, AUTOMATIC) eChRange;
#     VAR(Adc_ValueGroupType, AUTOMATIC) LowLimit;
#     VAR(Adc_ValueGroupType, AUTOMATIC) HighLimit;
#     
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#     eChRange = Adc_ChannelsLimitCheckingCfg[Unit][Index].eChannelRange;
	.d2line		2290
.Llo18:
	rlwinm		r31,r31,0,24,31		# Index=r31 Index=r31
.Llo21:
	lis		r5,Adc_ChannelsLimitCheckingCfg@ha
.Llo22:
	e_add16i		r5,r5,Adc_ChannelsLimitCheckingCfg@l
.Llo19:
	rlwinm		r7,r7,2,22,29		# Unit=r7 Unit=r7
.Llo20:
	lwzux		r0,r5,r7
	rlwinm		r5,r31,4,0,27		# Index=r31
	se_slwi		r31,2		# Index=r31 Index=r31
	subf		r31,r31,r5		# Index=r31 Index=r31
	add		r5,r0,r31		# Index=r31
	lwz		r6,4(r5)
.Llo25:
	mr		r6,r6		# eChRange=r6 eChRange=r6
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#     LowLimit = (Adc_ValueGroupType)Adc_ChannelsLimitCheckingCfg[Unit][Index].ChannelLowLimit;
	.d2line		2292
	lis		r5,Adc_ChannelsLimitCheckingCfg@ha
	e_add16i		r5,r5,Adc_ChannelsLimitCheckingCfg@l
	lwzux		r0,r5,r7
	add		r5,r0,r31		# Index=r31
	lhz		r0,10(r5)
.Llo27:
	mr		r0,r0		# LowLimit=r0 LowLimit=r0
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#     HighLimit = (Adc_ValueGroupType)Adc_ChannelsLimitCheckingCfg[Unit][Index].ChannelHighLimit;
	.d2line		2294
	lis		r5,Adc_ChannelsLimitCheckingCfg@ha
	e_add16i		r5,r5,Adc_ChannelsLimitCheckingCfg@l
	lwzx		r5,r5,r7
	se_add		r31,r5		# Index=r31 Index=r31
	lhz		r5,8(r31)		# Index=r31
.Llo35:
	mr		r5,r5		# HighLimit=r5 HighLimit=r5
# 
#     switch (eChRange)
	.d2line		2296
	mr		r6,r6		# eChRange=r6 eChRange=r6
.Llo26:
	se_cmpli	r6,6
	se_slwi		r6,2
	e_add2is		r6,.L732@ha
	bc		1,1,.L536	# gt
.Llo23:
	lwz		r7,.L732@l(r6)		# Unit=r7
	mtspr		ctr,r7		# Unit=ctr
	bcctr		20,0
.L732:
#$$sl
	.long		.L535
	.long		.L537
	.long		.L539
	.long		.L541
	.long		.L543
	.long		.L545
	.long		.L547
#$$se
.L535:
#     {
#         /* Complete range - independent from channel limit settings. */
#         case ADC_RANGE_ALWAYS:
#         {
#             bValInRange = (boolean)TRUE;
	.d2line		2301
	diab.li		r4,1		# bValInRange=r4
	b		.L536
.L537:
#             break;
#         }
#         /* Range between low limit and high limit - high limit value included. */
#         case ADC_RANGE_BETWEEN:
#         {
#             if ((Value > LowLimit) && (Value <= HighLimit))
	.d2line		2307
.Llo28:
	rlwinm		r6,r3,0,16,31		# Value=r3
.Llo29:
	rlwinm		r0,r0,0,16,31		# LowLimit=r0 LowLimit=r0
	se_cmp		r6,r0		# LowLimit=r0
	bc		0,1,.L536	# le
.Llo30:
	rlwinm		r3,r3,0,16,31		# Value=r3 Value=r3
.Llo36:
	rlwinm		r5,r5,0,16,31		# HighLimit=r5 HighLimit=r5
	se_cmp		r3,r5		# Value=r3 HighLimit=r5
	bc		1,1,.L536	# gt
#             {
#                 bValInRange = (boolean)TRUE;
	.d2line		2309
.Llo9:
	diab.li		r4,1		# bValInRange=r4
	b		.L536
.L539:
#             }
#             break;
#         }
#         /* Range above high limit or below low limit - low limit value included. */
#         case ADC_RANGE_NOT_BETWEEN:
#         {
#             if ((Value > HighLimit) || (Value <= LowLimit))
	.d2line		2316
.Llo10:
	rlwinm		r6,r3,0,16,31		# Value=r3
.Llo37:
	rlwinm		r5,r5,0,16,31		# HighLimit=r5 HighLimit=r5
	se_cmp		r6,r5		# HighLimit=r5
	bc		1,1,.L550	# gt
.Llo31:
	rlwinm		r3,r3,0,16,31		# Value=r3 Value=r3
.Llo32:
	rlwinm		r0,r0,0,16,31		# LowLimit=r0 LowLimit=r0
	se_cmp		r3,r0		# Value=r3 LowLimit=r0
	bc		1,1,.L536	# gt
.L550:
#             {
#                 bValInRange = (boolean)TRUE;
	.d2line		2318
	diab.li		r4,1		# bValInRange=r4
	b		.L536
.L541:
#             }
#             break;
#         }
#         /* Range below high limit -high limit value included. */
#         case ADC_RANGE_NOT_OVER_HIGH:
#         {
#             if (Value <= HighLimit)
	.d2line		2325
	rlwinm		r3,r3,0,16,31		# Value=r3 Value=r3
.Llo38:
	rlwinm		r5,r5,0,16,31		# HighLimit=r5 HighLimit=r5
	se_cmp		r3,r5		# Value=r3 HighLimit=r5
	bc		1,1,.L536	# gt
#             {
#                 bValInRange = (boolean)TRUE;
	.d2line		2327
.Llo11:
	diab.li		r4,1		# bValInRange=r4
	b		.L536
.L543:
#             }
#             break;
#         }
#         /* Range above low limit. */
#         case ADC_RANGE_NOT_UNDER_LOW:
#         {
#             if (Value > LowLimit)
	.d2line		2334
.Llo12:
	rlwinm		r3,r3,0,16,31		# Value=r3 Value=r3
.Llo33:
	rlwinm		r0,r0,0,16,31		# LowLimit=r0 LowLimit=r0
	se_cmp		r3,r0		# Value=r3 LowLimit=r0
	bc		0,1,.L536	# le
#             {
#                 bValInRange = (boolean)TRUE;
	.d2line		2336
.Llo13:
	diab.li		r4,1		# bValInRange=r4
	b		.L536
.L545:
#             }
#             break;
#         }
#         /* Range above high limit. */
#         case ADC_RANGE_OVER_HIGH:
#         {
#             if (Value > HighLimit)
	.d2line		2343
.Llo14:
	rlwinm		r3,r3,0,16,31		# Value=r3 Value=r3
.Llo39:
	rlwinm		r5,r5,0,16,31		# HighLimit=r5 HighLimit=r5
	se_cmp		r3,r5		# Value=r3 HighLimit=r5
	bc		0,1,.L536	# le
#             {
#                 bValInRange = (boolean)TRUE;
	.d2line		2345
.Llo15:
	diab.li		r4,1		# bValInRange=r4
	b		.L536
.L547:
#             }
#             break;
#         }
#         /* Range below low limit - low limit value included. */
#         case ADC_RANGE_UNDER_LOW:
#         {
#             if (Value <= LowLimit)
	.d2line		2352
.Llo16:
	rlwinm		r3,r3,0,16,31		# Value=r3 Value=r3
.Llo34:
	rlwinm		r0,r0,0,16,31		# LowLimit=r0 LowLimit=r0
	se_cmp		r3,r0		# Value=r3 LowLimit=r0
#             {
#                 bValInRange = (boolean)TRUE;
	.d2line		2354
	diab.li		r0,1		# LowLimit=r0
	isel		r4,r4,r0,1		# bValInRange=r4 bValInRange=r4 LowLimit=r0
.L536:
#             }
#             break;
#         }
#         /* Unexpected value */
#         default:
#         {
#             break;
#         }
#     }
#     return (boolean)bValInRange;
	.d2line		2364
.Llo17:
	rlwinm		r3,r4,0,24,31		# Value=r3 bValInRange=r4
# }
	.d2line		2365
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# LowLimit=r0
	mtspr		lr,r0		# LowLimit=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo24:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L714:
	.type		Adc_CheckConversionValuesInRange,@function
	.size		Adc_CheckConversionValuesInRange,.-Adc_CheckConversionValuesInRange
# Number of nodes = 128

# Allocations for Adc_CheckConversionValuesInRange
#	?a4		Value
#	?a5		Unit
#	?a6		Index
#	?a7		$$132
#	?a8		$$131
#	?a9		$$130
#	?a10		bValInRange
#	?a11		eChRange
#	?a12		LowLimit
#	?a13		HighLimit
# FUNC(void, ADC_CODE) Adc_RemoveFromQueue
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         2381,22
#$$ld
.L735:

#$$bf	Adc_RemoveFromQueue,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.globl		Adc_RemoveFromQueue
	.d2_cfa_start __cie
Adc_RemoveFromQueue:
.Llo40:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo50:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# CurrentIndex=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Unit=r3 Unit=r3
	mr		r4,r4		# CurQueueIndex=r4 CurQueueIndex=r4
	.d2prologue_end
# (
#     CONST(Adc_HwUnitType, AUTOMATIC) Unit,
#     CONST(Adc_QueueIndexType, AUTOMATIC) CurQueueIndex
# )
# {
#     VAR(Adc_QueueIndexType, AUTOMATIC) PositionIndex = 0U;
	.d2line		2387
	diab.li		r0,0		# PositionIndex=r0
#     VAR(Adc_QueueIndexType, AUTOMATIC) CurrentIndex = Adc_aUnitStatus[Unit].SwNormalQueueIndex;
	.d2line		2388
.Llo51:
	lis		r5,Adc_aUnitStatus@ha
	e_add16i		r5,r5,Adc_aUnitStatus@l
	rlwinm		r31,r3,3,21,28		# Unit=r3
	se_add		r5,r31
	lhzx		r0,r0,r5		# PositionIndex=r0 PositionIndex=r0
.Llo52:
	mr		r0,r0		# CurrentIndex=r0 CurrentIndex=r0
# 
#     if((Adc_QueueIndexType)1U >= CurrentIndex)
	.d2line		2390
	rlwinm		r5,r0,0,16,31		# CurrentIndex=r0
	se_cmpi		r5,1
	bc		1,1,.L561	# gt
#     {
#         /* Zero or one element present in the queue */
#         Adc_aUnitStatus[Unit].SwNormalQueueIndex = 0U;
	.d2line		2393
.Llo41:
	diab.li		r0,0		# CurrentIndex=r0
.Llo53:
	lis		r4,Adc_aUnitStatus@ha
	e_add16i		r4,r4,Adc_aUnitStatus@l
.Llo42:
	rlwinm		r3,r3,3,21,28		# Unit=r3 Unit=r3
.Llo43:
	sthux		r0,r4,r3		# CurrentIndex=r0
	b		.L560
.L561:
#     }
#     else
#     {
#         /* More than one element in the queue */
#         /* Move all elements after the one to remove (from CurQueueIndex position) one place to the left */
#         for(PositionIndex = (CurQueueIndex + 1U); PositionIndex < CurrentIndex; PositionIndex++)
	.d2line		2399
.Llo44:
	se_addi		r4,1		# CurQueueIndex=r4 CurQueueIndex=r4
.Llo48:
	mr		r4,r4		# PositionIndex=r4 PositionIndex=r4
.L563:
	rlwinm		r7,r4,0,16,31		# PositionIndex=r4
	rlwinm		r5,r0,0,16,31		# CurrentIndex=r0
	se_cmp		r7,r5
	bc		0,0,.L565	# ge
#         {
#             Adc_aUnitStatus[Unit].SwNormalQueue[PositionIndex - 1U] =
	.d2line		2401
	lis		r5,(Adc_aUnitStatus+2)@ha
	e_add16i		r5,r5,(Adc_aUnitStatus+2)@l
	rlwinm		r7,r4,1,15,30		# PositionIndex=r4
	se_add		r5,r7
	rlwinm		r31,r3,3,21,28		# Unit=r3
	se_add		r5,r31
	lhzx		r6,r0,r5		# CurrentIndex=r0
	lis		r5,Adc_aUnitStatus@ha
	e_add16i		r5,r5,Adc_aUnitStatus@l
	se_add		r5,r31
	sthux		r6,r5,r7
#             (Adc_GroupType)Adc_aUnitStatus[Unit].SwNormalQueue[PositionIndex];
#         }
	.d2line		2403
	diab.addi		r7,r4,1		# PositionIndex=r4
	se_addi		r4,1		# PositionIndex=r4 PositionIndex=r4
	b		.L563
.L565:
#         Adc_aUnitStatus[Unit].SwNormalQueueIndex--;
	.d2line		2404
.Llo45:
	lis		r4,Adc_aUnitStatus@ha		# PositionIndex=r4
.Llo49:
	e_add16i		r4,r4,Adc_aUnitStatus@l		# PositionIndex=r4 PositionIndex=r4
.Llo46:
	rlwinm		r3,r3,3,21,28		# Unit=r3 Unit=r3
	se_add		r3,r4		# Unit=r3 Unit=r3 PositionIndex=r4
	lhz		r0,0(r3)		# CurrentIndex=r0 Unit=r3
.Llo54:
	diab.li		r4,65535		# PositionIndex=r4
	se_add		r0,r4		# CurrentIndex=r0 CurrentIndex=r0 PositionIndex=r4
	sth		r0,0(r3)		# Unit=r3 CurrentIndex=r0
.L560:
#     }
# }
	.d2line		2406
	.d2epilogue_begin
.Llo47:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# CurrentIndex=r0
	mtspr		lr,r0		# CurrentIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L736:
	.type		Adc_RemoveFromQueue,@function
	.size		Adc_RemoveFromQueue,.-Adc_RemoveFromQueue
# Number of nodes = 79

# Allocations for Adc_RemoveFromQueue
#	?a4		Unit
#	?a5		CurQueueIndex
#	?a6		$$127
#	?a7		PositionIndex
#	?a8		CurrentIndex
# LOCAL_INLINE FUNC(void, ADC_CODE) Adc_UpdateStatusStartConversion
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         2482,35
#$$ld
.L748:

#$$bf	Adc_UpdateStatusStartConversion,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Adc_UpdateStatusStartConversion:
.Llo55:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo60:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# qPtr=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Group=r31 Group=r3
.Llo56:
	mr		r30,r4		# Unit=r30 Unit=r4
	.d2prologue_end
# (
#     CONST(Adc_GroupType, AUTOMATIC) Group,
#     CONST(Adc_HwUnitType, AUTOMATIC) Unit
# )
# {
# #if (ADC_ENABLE_QUEUING == STD_ON)
#     /* First available slot in the Queue */
#     VAR(Adc_QueueIndexType, AUTOMATIC) qPtr = 0U;
	.d2line		2490
.Llo57:
	diab.li		r0,0		# qPtr=r0
#     VAR(Adc_QueueIndexType, AUTOMATIC) SwNormalQueueIndex;
# #endif /* (ADC_ENABLE_QUEUING == STD_ON) */
#     VAR(Std_ReturnType, AUTOMATIC) DemTest = (Std_ReturnType)E_OK;
# 
#     /* Enter critical region to work on queue, DMA, ADC registers */
#     SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_07();
	.d2line		2496
.Llo59:
	bl		SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_07
#     /* Mark the Group as BUSY when the Group goes to the Queue or gets started */
#     Adc_aGroupStatus[Group].eConversion = ADC_BUSY;
	.d2line		2498
	diab.li		r0,1		# qPtr=r0
.Llo61:
	lis		r3,Adc_aGroupStatus@ha
	e_add16i		r3,r3,Adc_aGroupStatus@l
	rlwinm		r4,r31,4,12,27		# Group=r31
	stwx		r0,r3,r4		# qPtr=r0
#     Adc_aGroupStatus[Group].ResultIndex = 0U;
	.d2line		2499
	diab.li		r0,0		# qPtr=r0
	lis		r3,(Adc_aGroupStatus+12)@ha
	e_add16i		r3,r3,(Adc_aGroupStatus+12)@l
	sthux		r0,r3,r4		# qPtr=r0
# 
# #if (ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON)       
#     /* Injected conversion mode */
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#     if ((Adc_GroupConvType)ADC_CONV_TYPE_INJECTED == Adc_pCfgPtr->pGroups[Group].eType)
#     {
# #ifdef ADC_DMA_SUPPORTED
#         if (ADC_DMA == Adc_pCfgPtr->Misc.u8Adc_DmaInterruptSoftware[Unit])
#         {
#             if (Adc_aUnitStatus[Unit].SwNormalQueueIndex > (Adc_QueueIndexType)0U)
#             {
#                 /* Queue is NOT Empty */
#                 DemTest = Adc_Ipw_StopCurrentConversion(Unit, Adc_aUnitStatus[Unit].SwNormalQueue[0], (boolean)TRUE);
#             }
#         }
# #endif
#         /* Place the Group in the SW Inj Queue */
#         Adc_aUnitStatus[Unit].SwInjectedQueue[0] = Group;
#         /* Increase the Queue Index */
#         Adc_aUnitStatus[Unit].SwInjectedQueueIndex++;
# 
#         Adc_Ipw_StartInjectedConversion(Unit);
#         /* exit critical region */
#         SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_07();
#         /** @violates @ref Adc_c_REF_8 Return statement before end of function. */
#         return;
#     }
# #endif /* ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON */ 
# 
#     /* Normal conversion*/
# #if (ADC_PRIORITY_IMPLEMENTATION != ADC_PRIORITY_NONE)
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#     qPtr = Adc_aUnitStatus[Unit].SwNormalQueueIndex;
#     if (qPtr > (Adc_QueueIndexType)0U)
#     {
#         /* Queue is NOT Empty */
#         DemTest = Adc_InsertIntoQueue(Unit, Group);
#     }
# #else /* ADC_PRIORITY_IMPLEMENTATION == ADC_PRIORITY_NONE */
#  #if (ADC_ENABLE_QUEUING == STD_ON)
#     qPtr = Adc_aUnitStatus[Unit].SwNormalQueueIndex;
	.d2line		2540
	lis		r3,Adc_aUnitStatus@ha
	e_add16i		r3,r3,Adc_aUnitStatus@l
	rlwinm		r4,r30,3,21,28		# Unit=r30
	se_add		r3,r4
	lhzx		r0,r0,r3		# qPtr=r0 qPtr=r0
	mr		r0,r0		# qPtr=r0 qPtr=r0
#     if (qPtr > (Adc_QueueIndexType)0U)
	.d2line		2541
	rlwinm		r3,r0,0,16,31		# qPtr=r0
	se_cmpi		r3,0
	bc		0,1,.L571	# le
#     {
#         /* Place the Group in the Queue */
#         /* Compiler_Warning: In case of queue is enabled, if queue size is 1, the code will not be called. */
#         Adc_aUnitStatus[Unit].SwNormalQueue[qPtr] = Group;
	.d2line		2545
.Llo62:
	lis		r4,(Adc_aUnitStatus+2)@ha
	e_add16i		r4,r4,(Adc_aUnitStatus+2)@l
.Llo63:
	rlwinm		r0,r0,1,15,30		# qPtr=r0 qPtr=r0
	se_add		r4,r0		# qPtr=r0
	rlwinm		r3,r30,3,21,28		# Unit=r30
	se_add		r4,r3
	sthx		r31,r0,r4		# qPtr=r0 Group=r31
#         /* Increase the Queue Index */
#         Adc_aUnitStatus[Unit].SwNormalQueueIndex++;
	.d2line		2547
	lis		r4,Adc_aUnitStatus@ha
	e_add16i		r4,r4,Adc_aUnitStatus@l
	lhzux		r3,r4,r3
	se_addi		r3,1
	sth		r3,0(r4)
.L571:
#     }
#  #else /* ADC_ENABLE_QUEUING == STD_OFF*/
#   /* In this case all the StartConversion should be rejected by DET */
#  #endif /* (ADC_ENABLE_QUEUING == STD_ON) */
# #endif /* ADC_PRIORITY_IMPLEMENTATION == ADC_PRIORITY_NONE */
# 
# #if (ADC_ENABLE_QUEUING == STD_ON)
#     SwNormalQueueIndex = Adc_aUnitStatus[Unit].SwNormalQueueIndex;
	.d2line		2555
.Llo64:
	lis		r3,Adc_aUnitStatus@ha
	e_add16i		r3,r3,Adc_aUnitStatus@l
	rlwinm		r4,r30,3,21,28		# Unit=r30
	se_add		r3,r4
	lhzx		r0,r0,r3		# qPtr=r0 qPtr=r0
.Llo67:
	mr		r0,r0		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0
#     if((Adc_aUnitStatus[Unit].SwNormalQueue[0] == Group) || (0U == SwNormalQueueIndex))
	.d2line		2556
	lis		r3,(Adc_aUnitStatus+2)@ha
	e_add16i		r3,r3,(Adc_aUnitStatus+2)@l
	se_add		r3,r4
	lhzx		r4,r0,r3		# qPtr=r0
	rlwinm		r3,r31,0,16,31		# Group=r31
	se_cmp		r4,r3
	bc		1,2,.L575	# eq
	e_cmphl16i	r0,0		# SwNormalQueueIndex=r0
	bc		0,2,.L572	# ne
.L575:
#     {
#         /* No_priorities OR Queue_is_empty */
#         /* Indicate a new group was added to the queue */
# #endif /* (ADC_ENABLE_QUEUING == STD_ON) */
#         if (0U == Adc_aUnitStatus[Unit].SwNormalQueueIndex)
	.d2line		2561
.Llo68:
	lis		r3,Adc_aUnitStatus@ha
	e_add16i		r3,r3,Adc_aUnitStatus@l
	rlwinm		r4,r30,3,21,28		# Unit=r30
	se_add		r3,r4
	lhzx		r0,r0,r3		# qPtr=r0 qPtr=r0
.Llo65:
	e_cmphl16i	r0,0		# qPtr=r0
	bc		0,2,.L573	# ne
#         {
#             /* Place the Group in the Queue */
#             Adc_aUnitStatus[Unit].SwNormalQueue[0] = Group;
	.d2line		2564
.Llo66:
	lis		r3,(Adc_aUnitStatus+2)@ha
	e_add16i		r3,r3,(Adc_aUnitStatus+2)@l
	rlwinm		r4,r30,3,21,28		# Unit=r30
	se_add		r3,r4
	sthx		r31,r0,r3		# qPtr=r0 Group=r31
#             Adc_aUnitStatus[Unit].SwNormalQueueIndex++;
	.d2line		2565
	lis		r3,Adc_aUnitStatus@ha
	e_add16i		r3,r3,Adc_aUnitStatus@l
	se_add		r4,r3
	lhz		r3,0(r4)
	se_addi		r3,1
	sth		r3,0(r4)
.L573:
#         }
# 
#         /* exit critical region */
#         SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_07();
	.d2line		2569
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_07
# 
#         /* ADC will not be running - no ISR can occur now */
#         Adc_Ipw_StartNormalConversion(Unit);
	.d2line		2572
	rlwinm		r3,r30,0,24,31		# Unit=r30
	bl		Adc_Adcdig_StartNormalConversion
	b		.L570
.L572:
# 
# #if (ADC_ENABLE_QUEUING == STD_ON)
#     }
#     else
#     {
#         /* exit critical region */
#         SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_07();
	.d2line		2579
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_07
.L570:
#     }
# #endif /* (ADC_ENABLE_QUEUING == STD_ON) */
#     (void)DemTest;   
# }
	.d2line		2583
	.d2epilogue_begin
.Llo58:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# qPtr=r0
	mtspr		lr,r0		# qPtr=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L749:
	.type		Adc_UpdateStatusStartConversion,@function
	.size		Adc_UpdateStatusStartConversion,.-Adc_UpdateStatusStartConversion
# Number of nodes = 140

# Allocations for Adc_UpdateStatusStartConversion
#	?a4		Group
#	?a5		Unit
#	?a6		$$129
#	?a7		$$128
#	?a8		qPtr
#	?a9		SwNormalQueueIndex
#	?a10		DemTest
# LOCAL_INLINE FUNC(void, ADC_CODE) Adc_UpdateStatusStopConversion
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         2595,35
#$$ld
.L763:

#$$bf	Adc_UpdateStatusStopConversion,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Adc_UpdateStatusStopConversion:
.Llo69:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo82:
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# SwNormalQueueIndex=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Group=r31 Group=r3
.Llo70:
	mr		r28,r4		# Unit=r28 Unit=r4
	.d2prologue_end
# (
#     VAR(Adc_GroupType, AUTOMATIC) Group,
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit
# )
# {
# #if (ADC_ENABLE_QUEUING == STD_ON)
#     VAR(Adc_QueueIndexType, AUTOMATIC) SwNormalQueueIndex = 0U;
	.d2line		2602
.Llo71:
	diab.li		r0,0		# SwNormalQueueIndex=r0
#     VAR(Adc_QueueIndexType, AUTOMATIC) RemovedPos = 0U;
# #endif /* (ADC_ENABLE_QUEUING == STD_ON) */
#     VAR(Std_ReturnType, AUTOMATIC) DemTest = (Std_ReturnType)E_OK;
#     VAR(Adc_GroupConvModeType, AUTOMATIC) eMode;
#     VAR(Adc_GroupAccessModeType, AUTOMATIC) eAccessMode;
#     VAR(Adc_StreamBufferModeType, AUTOMATIC) eBufferMode;
#     VAR(Adc_StatusType, AUTOMATIC) eConversion;
# 
#     /* Enter critical region to protect against queue changes from ISRs */
#     SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_08();
	.d2line		2612
.Llo83:
	bl		SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_08
# #if (ADC_ENABLE_LIMIT_CHECK == STD_ON)
#     Adc_aGroupStatus[Group].bLimitCheckFailed = (boolean)FALSE;
	.d2line		2614
.Llo79:
	diab.li		r4,0
	lis		r3,(Adc_aGroupStatus+14)@ha		# eMode=r3
.Llo95:
	e_add16i		r3,r3,(Adc_aGroupStatus+14)@l		# eMode=r3 eMode=r3
	rlwinm		r0,r31,4,12,27		# SwNormalQueueIndex=r0 Group=r31
.Llo84:
	stbux		r4,r3,r0		# eMode=r3
# #endif /* ADC_ENABLE_LIMIT_CHECK == STD_ON */
# 
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic shall be the only allowed form of pointer arithmetic */
#     eMode = Adc_pCfgPtr->pGroups[Group].eMode;
	.d2line		2618
	lis		r4,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r4)		# eMode=r3
	lwz		r3,4(r3)		# eMode=r3 eMode=r3
	rlwinm		r5,r31,0,16,31		# Group=r31
	e_mulli		r5,r5,92
	se_add		r3,r5		# eMode=r3 eMode=r3
	lwz		r3,8(r3)		# eMode=r3 eMode=r3
	.d2line		2628
	mr.		r3,r3		# eMode=?a9 eMode=?a17
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic shall be the only allowed form of pointer arithmetic */
#     eAccessMode = Adc_pCfgPtr->pGroups[Group].eAccessMode;
	.d2line		2620
.Llo96:
	lwz		r3,Adc_pCfgPtr@l(r4)		# eMode=r3
.Llo97:
	lwz		r3,4(r3)		# eMode=r3 eMode=r3
	se_add		r3,r5		# eMode=r3 eMode=r3
	lwz		r6,4(r3)		# eMode=r3
.Llo110:
	mr		r6,r6		# eAccessMode=r6 eAccessMode=r6
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic shall be the only allowed form of pointer arithmetic */
#     eBufferMode = Adc_pCfgPtr->pGroups[Group].eBufferMode;
	.d2line		2622
	lwz		r3,Adc_pCfgPtr@l(r4)		# eMode=r3
	lwz		r3,4(r3)		# eMode=r3 eMode=r3
	se_add		r5,r3		# eMode=r3
	lwz		r4,68(r5)
.Llo113:
	mr		r4,r4		# eBufferMode=r4 eBufferMode=r4
#     eConversion = Adc_aGroupStatus[Group].eConversion;
	.d2line		2623
	lis		r3,Adc_aGroupStatus@ha		# eMode=r3
	e_add16i		r3,r3,Adc_aGroupStatus@l		# eMode=r3 eMode=r3
	se_add		r0,r3		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0 eMode=r3
	lwzx		r0,r0,r0		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0
.Llo85:
	mr		r0,r0		# eConversion=r0 eConversion=r0
# 
#     /**
#      * @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic
#      */
#     if(((ADC_CONV_MODE_ONESHOT == eMode) || \
	bc		1,2,.L589	# eq
	.d2line		2628
.Llo80:
	se_cmpi		r6,1		# eAccessMode=r6
	bc		0,2,.L582	# ne
.Llo111:
	se_cmpi		r4,0		# eBufferMode=r4
	bc		0,2,.L582	# ne
.L589:
.Llo112:
	se_cmpi		r0,3		# eConversion=r0
	bc		0,2,.L582	# ne
#         ((ADC_ACCESS_MODE_STREAMING == eAccessMode) && (ADC_STREAM_BUFFER_LINEAR == eBufferMode)) \
#        ) && (ADC_STREAM_COMPLETED == eConversion) \
#       )
#     {
#         /* group is stopped, change its status to IDLE  */
#         Adc_aGroupStatus[Group].eConversion = ADC_IDLE;
	.d2line		2634
.Llo72:
	diab.li		r0,0		# eConversion=r0
.Llo117:
	lis		r3,Adc_aGroupStatus@ha		# eMode=r3
.Llo98:
	e_add16i		r3,r3,Adc_aGroupStatus@l		# eMode=r3 eMode=r3
.Llo73:
	rlwinm		r31,r31,4,12,27		# Group=r31 Group=r31
.Llo74:
	stwx		r0,r3,r31		# eMode=r3 eConversion=r0
#         /* FD reset number of samples completed */
#         Adc_aGroupStatus[Group].ResultIndex = 0U;
	.d2line		2636
	lis		r3,(Adc_aGroupStatus+12)@ha		# eMode=r3
	e_add16i		r3,r3,(Adc_aGroupStatus+12)@l		# eMode=r3 eMode=r3
	sthux		r0,r3,r31		# eMode=r3 eConversion=r0
# #if (ADC_GRP_NOTIF_CAPABILITY == STD_ON)
#         /* disable group notification (ADC155) */
#         Adc_aGroupStatus[Group].eNotification = ADC_NOTIFICATION_DISABLED;
	.d2line		2639
	lis		r3,(Adc_aGroupStatus+8)@ha		# eMode=r3
	e_add16i		r3,r3,(Adc_aGroupStatus+8)@l		# eMode=r3 eMode=r3
	stwx		r0,r3,r31		# eMode=r3 eConversion=r0
# #endif /* (ADC_GRP_NOTIF_CAPABILITY == STD_ON) */
# #if (ADC_SETCHANNEL_API == STD_ON)
#         Adc_aRuntimeGroupChannel[Group].u16Mask = 0xFFFFU;
# #endif
#         /* Exit critical region */
#         SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_08();
	.d2line		2645
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_08
	.d2line		2647
.Llo99:
	b		.L581
.L582:
#         /** @violates @ref Adc_c_REF_8 Return statement before end of function. */
#         return;
#     }
# 
# #if (ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON)     
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#     if ((Adc_GroupConvType)ADC_CONV_TYPE_INJECTED == Adc_pCfgPtr->pGroups[Group].eType)
#     {
#         if (Group == Adc_aUnitStatus[Unit].SwInjectedQueue[0])
#         {
#             DemTest = Adc_Ipw_StopCurrentConversion(Unit, Group, (boolean)FALSE);
#             /* zero elements in the sw injected queue */
#             Adc_aUnitStatus[Unit].SwInjectedQueueIndex = 0U;
#         }
#     }
#     else
# #endif /* ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON */    
#     {
# #if (ADC_ENABLE_QUEUING == STD_ON)
#         /* Find the Group in the Queue */
#         RemovedPos = Adc_aUnitStatus[Unit].SwNormalQueueIndex;  /* initialize with something invalid */
	.d2line		2666
.Llo75:
	lis		r3,Adc_aUnitStatus@ha		# eMode=r3
.Llo100:
	e_add16i		r3,r3,Adc_aUnitStatus@l		# eMode=r3 eMode=r3
	rlwinm		r4,r28,3,21,28		# eBufferMode=r4 Unit=r28
.Llo114:
	se_add		r3,r4		# eMode=r3 eMode=r3 eBufferMode=r4
.Llo101:
	lhzx		r29,r0,r3		# SwNormalQueueIndex=r0
.Llo90:
	mr		r29,r29		# RemovedPos=r29 RemovedPos=r29
#         /* Last valid Group in the Queue */
#         SwNormalQueueIndex = Adc_aUnitStatus[Unit].SwNormalQueueIndex - 1U;
	.d2line		2668
	lhzx		r30,r0,r3		# SwNormalQueueIndex=r30 SwNormalQueueIndex=r0
.Llo86:
	diab.li		r0,65535		# SwNormalQueueIndex=r0
	se_add		r0,r30		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0 SwNormalQueueIndex=r30
	mr		r30,r0		# SwNormalQueueIndex=r30 SwNormalQueueIndex=r0
.L583:
# 
#         while (SwNormalQueueIndex < (Adc_QueueIndexType)ADC_QUEUE_INDEX_TYPE_MAXIMUM)
	.d2line		2670
.Llo91:
	rlwinm		r0,r30,0,16,31		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r30
.Llo92:
	diab.li		r3,65535		# eMode=r3
.Llo102:
	se_cmp		r0,r3		# SwNormalQueueIndex=r0 eMode=r3
	bc		0,0,.L584	# ge
#         {
#             if (Group == Adc_aUnitStatus[Unit].SwNormalQueue[SwNormalQueueIndex] )
	.d2line		2672
.Llo103:
	rlwinm		r4,r31,0,16,31		# eBufferMode=r4 Group=r31
.Llo115:
	lis		r3,(Adc_aUnitStatus+2)@ha		# eMode=r3
.Llo104:
	e_add16i		r3,r3,(Adc_aUnitStatus+2)@l		# eMode=r3 eMode=r3
	rlwinm		r0,r30,1,15,30		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r30
	se_add		r0,r3		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0 eMode=r3
	rlwinm		r3,r28,3,21,28		# eMode=r3 Unit=r28
	se_add		r0,r3		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0 eMode=r3
	lhzx		r0,r0,r0		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0
	se_cmp		r4,r0		# eBufferMode=r4 SwNormalQueueIndex=r0
	bc		0,2,.L585	# ne
#             {
#                 /* The group is found in the Queue */
#                 /* Store the position of the group to be removed */
#                 RemovedPos = SwNormalQueueIndex;
	.d2line		2676
.Llo105:
	mr		r29,r30		# RemovedPos=r29 RemovedPos=r30
# 
#                 /* Stop the conversion of all channels belonging to this group */
#                 if((Adc_QueueIndexType)0U == SwNormalQueueIndex) /* In this case the group might be under conversion */
	.d2line		2679
	rlwinm		r0,r29,0,16,31		# SwNormalQueueIndex=r0 RemovedPos=r29
	se_cmpi		r0,0		# SwNormalQueueIndex=r0
	bc		0,2,.L586	# ne
# #endif /* (ADC_ENABLE_QUEUING == STD_ON) */
#                 {
#                     DemTest = Adc_Ipw_StopCurrentConversion(Unit, Group, (boolean)FALSE);
	.d2line		2682
	rlwinm		r3,r28,0,24,31		# eMode=r3 Unit=r28
	rlwinm		r4,r31,0,16,31		# eBufferMode=r4 Group=r31
	diab.li		r5,0
	bl		Adc_Adcdig_StopCurrentConversion
.Llo93:
	mr		r3,r3		# DemTest=r3 DemTest=r3
.L586:
#                 }
# #if (ADC_ENABLE_QUEUING == STD_ON)
#                 /* Remove group from Queue */
#                 Adc_RemoveFromQueue(Unit, SwNormalQueueIndex);
	.d2line		2686
.Llo94:
	mr		r3,r28		# Unit=r3 Unit=r28
	mr		r4,r30		# SwNormalQueueIndex=r4 SwNormalQueueIndex=r30
	bl		Adc_RemoveFromQueue
.L585:
#             }
#             SwNormalQueueIndex--;
	.d2line		2688
	diab.li		r0,65535		# SwNormalQueueIndex=r0
	se_add		r0,r30		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0 SwNormalQueueIndex=r30
	mr		r30,r0		# SwNormalQueueIndex=r30 SwNormalQueueIndex=r0
	b		.L583
.L584:
#         }
# #endif /* (ADC_ENABLE_QUEUING == STD_ON) */
#     }
# 
#     /* group is stopped, change its status to IDLE  */
#     Adc_aGroupStatus[Group].eConversion = ADC_IDLE;
	.d2line		2694
.Llo76:
	diab.li		r0,0		# SwNormalQueueIndex=r0
	lis		r3,Adc_aGroupStatus@ha		# eMode=r3
.Llo106:
	e_add16i		r3,r3,Adc_aGroupStatus@l		# eMode=r3 eMode=r3
.Llo77:
	rlwinm		r31,r31,4,12,27		# Group=r31 Group=r31
.Llo78:
	stwx		r0,r3,r31		# eMode=r3 SwNormalQueueIndex=r0
#     /* FD reset number of samples completed */
#     Adc_aGroupStatus[Group].ResultIndex = 0U;
	.d2line		2696
	lis		r3,(Adc_aGroupStatus+12)@ha		# eMode=r3
	e_add16i		r3,r3,(Adc_aGroupStatus+12)@l		# eMode=r3 eMode=r3
	sthux		r0,r3,r31		# eMode=r3 SwNormalQueueIndex=r0
# #if (ADC_GRP_NOTIF_CAPABILITY == STD_ON)
#     /* disable group notification (ADC155) */
#     Adc_aGroupStatus[Group].eNotification = ADC_NOTIFICATION_DISABLED;
	.d2line		2699
	lis		r3,(Adc_aGroupStatus+8)@ha		# eMode=r3
	e_add16i		r3,r3,(Adc_aGroupStatus+8)@l		# eMode=r3 eMode=r3
	stwx		r0,r3,r31		# eMode=r3 SwNormalQueueIndex=r0
# #endif /* (ADC_GRP_NOTIF_CAPABILITY == STD_ON) */
# #if (ADC_SETCHANNEL_API == STD_ON)
#     Adc_aRuntimeGroupChannel[Group].u16Mask = 0xFFFFU;
# #endif
# #if (ADC_ENABLE_QUEUING == STD_ON)
#     
#     /* Exit critical region */
#     SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_08();
	.d2line		2707
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_08
#     /* Start the next group in the Queue (if any) */
#     if((Adc_QueueIndexType)0U == RemovedPos) 
	.d2line		2709
.Llo107:
	rlwinm		r29,r29,0,16,31		# RemovedPos=r29 RemovedPos=r29
	se_cmpi		r29,0		# RemovedPos=r29
	bc		0,2,.L581	# ne
#     {
#         if(Adc_aUnitStatus[Unit].SwNormalQueueIndex > (Adc_QueueIndexType)0U)
	.d2line		2711
.Llo87:
	lis		r3,Adc_aUnitStatus@ha		# eMode=r3
.Llo108:
	e_add16i		r3,r3,Adc_aUnitStatus@l		# eMode=r3 eMode=r3
	rlwinm		r4,r28,3,21,28		# eBufferMode=r4 Unit=r28
.Llo116:
	se_add		r3,r4		# eMode=r3 eMode=r3 eBufferMode=r4
.Llo109:
	lhzx		r0,r0,r3		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0
.Llo88:
	se_cmpi		r0,0		# SwNormalQueueIndex=r0
	bc		0,1,.L581	# le
#         {
#             /* Structures and pointers will be initialized when the next Group starts */
#             Adc_Ipw_StartNormalConversion(Unit);
	.d2line		2714
.Llo89:
	rlwinm		r3,r28,0,24,31		# eMode=r3 Unit=r28
	bl		Adc_Adcdig_StartNormalConversion
.L581:
#         }
#     }
# #else
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#     if ((Adc_GroupConvType)ADC_CONV_TYPE_NORMAL == Adc_pCfgPtr->pGroups[Group].eType)
#     {
#         /* No element will be present in the queue */
#         Adc_aUnitStatus[Unit].SwNormalQueueIndex = 0U;
#     }
# 
#     /* Exit critical region */
#     SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_08();
# #endif /* (ADC_ENABLE_QUEUING == STD_ON) */
# 
#     (void)DemTest;
# }
	.d2line		2730
	.d2epilogue_begin
.Llo81:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# eConversion=r0
	mtspr		lr,r0		# eConversion=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L764:
	.type		Adc_UpdateStatusStopConversion,@function
	.size		Adc_UpdateStatusStopConversion,.-Adc_UpdateStatusStopConversion
# Number of nodes = 255

# Allocations for Adc_UpdateStatusStopConversion
#	?a4		Group
#	?a5		Unit
#	?a6		SwNormalQueueIndex
#	?a7		RemovedPos
#	?a8		DemTest
#	?a9		eMode
#	?a10		eAccessMode
#	?a11		eBufferMode
#	?a12		eConversion
# LOCAL_INLINE FUNC(void, ADC_CODE) Adc_UpdateStatusReadGroupNoInt
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         2744,35
#$$ld
.L792:

#$$bf	Adc_UpdateStatusReadGroupNoInt,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Adc_UpdateStatusReadGroupNoInt:
.Llo118:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo136:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# SwNormalQueueIndex=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Group=r3 Group=r3
	mr		r6,r4		# bFlag=r6 bFlag=r4
	.d2prologue_end
# (
#     CONST(Adc_GroupType, AUTOMATIC) Group,
#     CONST(boolean, AUTOMATIC) bFlag
# )
# {
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit = Adc_pCfgPtr->pGroups[(Group)].HwUnit;
# #if (ADC_ENABLE_QUEUING == STD_ON)
#     VAR(Adc_QueueIndexType, AUTOMATIC) SwNormalQueueIndex = 0U;
	.d2line		2753
	diab.li		r0,0		# SwNormalQueueIndex=r0
	.d2line		2751
.Llo137:
	lis		r4,Adc_pCfgPtr@ha
.Llo130:
	lwz		r4,Adc_pCfgPtr@l(r4)
	lwz		r4,4(r4)
	rlwinm		r5,r3,0,16,31		# Group=r3
	e_mulli		r5,r5,92
	lbzx		r31,r4,r5
.Llo133:
	mr		r31,r31		# Unit=r31 Unit=r31
# #endif 
#   
#     /* at least once the group was converted */
#     Adc_aGroupStatus[Group].eAlreadyConverted = ADC_ALREADY_CONVERTED;
	.d2line		2757
	diab.li		r0,1		# SwNormalQueueIndex=r0
.Llo138:
	lis		r4,(Adc_aGroupStatus+4)@ha
	e_add16i		r4,r4,(Adc_aGroupStatus+4)@l
	rlwinm		r5,r3,4,12,27		# Group=r3
	stwx		r0,r4,r5		# SwNormalQueueIndex=r0
#     /* Update conversion status*/
# #if (ADC_ENABLE_LIMIT_CHECK == STD_ON)
#     /* Conversion values are not in the configured range */
#     if ((boolean)FALSE == bFlag)
	.d2line		2761
.Llo131:
	rlwinm		r6,r6,0,24,31		# bFlag=r6 bFlag=r6
	se_cmpi		r6,0		# bFlag=r6
	bc		0,2,.L598	# ne
#     {
#         /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#         if(ADC_CONV_MODE_ONESHOT == Adc_pCfgPtr->pGroups[Group].eMode)
	.d2line		2764
.Llo132:
	lis		r4,Adc_pCfgPtr@ha
	lwz		r4,Adc_pCfgPtr@l(r4)
	lwz		r0,4(r4)		# SwNormalQueueIndex=r0
.Llo139:
	rlwinm		r4,r3,0,16,31		# Group=r3
	e_mulli		r4,r4,92
	se_add		r4,r0		# SwNormalQueueIndex=r0
	lwz		r0,8(r4)		# SwNormalQueueIndex=r0
	se_cmpi		r0,0		# SwNormalQueueIndex=r0
	bc		0,2,.L599	# ne
#         {
#             /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#             if(ADC_TRIGG_SRC_SW == Adc_pCfgPtr->pGroups[Group].eTriggerSource)
	.d2line		2767
.Llo134:
	lis		r4,Adc_pCfgPtr@ha
	lwz		r4,Adc_pCfgPtr@l(r4)
	lwz		r0,4(r4)		# SwNormalQueueIndex=r0
.Llo140:
	rlwinm		r4,r3,0,16,31		# Group=r3
	e_mulli		r4,r4,92
	se_add		r4,r0		# SwNormalQueueIndex=r0
	lwz		r0,20(r4)		# SwNormalQueueIndex=r0
	se_cmpi		r0,0		# SwNormalQueueIndex=r0
	bc		0,2,.L600	# ne
#             {
#                 /* ADC449 */
#                 Adc_aGroupStatus[Group].eConversion = ADC_BUSY;
	.d2line		2770
.Llo141:
	diab.li		r0,1		# SwNormalQueueIndex=r0
.Llo142:
	lis		r4,Adc_aGroupStatus@ha
	e_add16i		r4,r4,Adc_aGroupStatus@l
	rlwinm		r5,r3,4,12,27		# Group=r3
	stwx		r0,r4,r5		# SwNormalQueueIndex=r0
	b		.L602
.L600:
#             }
#             else
#             {
#                 /* ADC450 */
#                 Adc_aGroupStatus[Group].eConversion = ADC_IDLE;
	.d2line		2775
.Llo143:
	diab.li		r0,0		# SwNormalQueueIndex=r0
.Llo144:
	lis		r4,Adc_aGroupStatus@ha
	e_add16i		r4,r4,Adc_aGroupStatus@l
	rlwinm		r5,r3,4,12,27		# Group=r3
	stwx		r0,r4,r5		# SwNormalQueueIndex=r0
	b		.L602
.L599:
#             }
#         }
#         else
#         {
#             /* ADC448 */
#             Adc_aGroupStatus[Group].eConversion = ADC_BUSY;
	.d2line		2781
.Llo145:
	diab.li		r0,1		# SwNormalQueueIndex=r0
.Llo146:
	lis		r4,Adc_aGroupStatus@ha
	e_add16i		r4,r4,Adc_aGroupStatus@l
	rlwinm		r5,r3,4,12,27		# Group=r3
	stwx		r0,r4,r5		# SwNormalQueueIndex=r0
.L602:
#         }
#         Adc_aGroupStatus[Group].bLimitCheckFailed = (boolean)TRUE;
	.d2line		2783
.Llo119:
	diab.li		r0,1		# SwNormalQueueIndex=r0
.Llo147:
	lis		r4,(Adc_aGroupStatus+14)@ha
	e_add16i		r4,r4,(Adc_aGroupStatus+14)@l
.Llo120:
	rlwinm		r3,r3,4,12,27		# Group=r3 Group=r3
.Llo121:
	stbux		r0,r4,r3		# SwNormalQueueIndex=r0
	.d2line		2785
	b		.L597
.L598:
#         /** @violates @ref Adc_c_REF_8 Return statement before end of function. */
#         return;
#     }
#     Adc_aGroupStatus[Group].bLimitCheckFailed = (boolean)FALSE;
	.d2line		2787
.Llo122:
	diab.li		r0,0		# SwNormalQueueIndex=r0
.Llo148:
	lis		r4,(Adc_aGroupStatus+14)@ha
	e_add16i		r4,r4,(Adc_aGroupStatus+14)@l
	rlwinm		r5,r3,4,12,27		# Group=r3
	stbux		r0,r4,r5		# SwNormalQueueIndex=r0
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#     if(ADC_CONV_MODE_CONTINUOUS == Adc_pCfgPtr->pGroups[Group].eMode)
	.d2line		2789
	lis		r4,Adc_pCfgPtr@ha
	lwz		r4,Adc_pCfgPtr@l(r4)
	lwz		r0,4(r4)		# SwNormalQueueIndex=r0
	rlwinm		r4,r3,0,16,31		# Group=r3
	e_mulli		r4,r4,92
	se_add		r4,r0		# SwNormalQueueIndex=r0
	lwz		r0,8(r4)		# SwNormalQueueIndex=r0
	se_cmpi		r0,1		# SwNormalQueueIndex=r0
	bc		0,2,.L603	# ne
#     {
#         Adc_aGroupStatus[Group].eConversion = ADC_BUSY;
	.d2line		2791
.Llo149:
	diab.li		r0,1		# SwNormalQueueIndex=r0
.Llo150:
	lis		r4,Adc_aGroupStatus@ha
	e_add16i		r4,r4,Adc_aGroupStatus@l
	rlwinm		r5,r3,4,12,27		# Group=r3
	stwx		r0,r4,r5		# SwNormalQueueIndex=r0
.L603:
#     }
# #else
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#     if(ADC_CONV_MODE_CONTINUOUS == Adc_pCfgPtr->pGroups[Group].eMode)
#     {
#         Adc_aGroupStatus[Group].eConversion = ADC_BUSY;
#     }
#     (void)bFlag;
# #endif /* (ADC_ENABLE_LIMIT_CHECK == STD_ON) */
#     /* NOTE: Streaming groups are NOT allowed without interrupts in configuration */
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#     if ((ADC_CONV_MODE_ONESHOT == Adc_pCfgPtr->pGroups[Group].eMode) && \
	.d2line		2803
.Llo151:
	lis		r4,Adc_pCfgPtr@ha
	lwz		r4,Adc_pCfgPtr@l(r4)
	lwz		r0,4(r4)		# SwNormalQueueIndex=r0
.Llo152:
	rlwinm		r4,r3,0,16,31		# Group=r3
	e_mulli		r4,r4,92
	se_add		r4,r0		# SwNormalQueueIndex=r0
	lwz		r0,8(r4)		# SwNormalQueueIndex=r0
	se_cmpi		r0,0		# SwNormalQueueIndex=r0
	bc		0,2,.L604	# ne
.Llo153:
	lis		r4,Adc_pCfgPtr@ha
	lwz		r4,Adc_pCfgPtr@l(r4)
	lwz		r0,4(r4)		# SwNormalQueueIndex=r0
.Llo154:
	rlwinm		r4,r3,0,16,31		# Group=r3
	e_mulli		r4,r4,92
	se_add		r4,r0		# SwNormalQueueIndex=r0
	lwz		r0,20(r4)		# SwNormalQueueIndex=r0
	se_cmpi		r0,0		# SwNormalQueueIndex=r0
	bc		0,2,.L604	# ne
#          ( ADC_TRIGG_SRC_SW == Adc_pCfgPtr->pGroups[Group].eTriggerSource) \
#        )
#     {
#         Adc_aGroupStatus[Group].eConversion = ADC_IDLE;
	.d2line		2807
.Llo155:
	diab.li		r0,0		# SwNormalQueueIndex=r0
.Llo156:
	lis		r4,Adc_aGroupStatus@ha
	e_add16i		r4,r4,Adc_aGroupStatus@l
	rlwinm		r5,r3,4,12,27		# Group=r3
	stwx		r0,r4,r5		# SwNormalQueueIndex=r0
# #if (ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON)             
#         /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#         if ((Adc_GroupConvType)ADC_CONV_TYPE_INJECTED == Adc_pCfgPtr->pGroups[Group].eType)
#         {
#             if (Adc_aUnitStatus[Unit].SwInjectedQueueIndex > (Adc_QueueIndexType)0)
#             {
#                 /* empty queue of  SW injected conversions */
#                 Adc_aUnitStatus[Unit].SwInjectedQueueIndex--;
#             }
#         }
#         else /* SW NORMAL CONVERSION */
# #endif /* ADC_SOFTWARE_INJECTED_CONVERSIONS_USED == STD_ON */            
#         {
#             if (Adc_aUnitStatus[Unit].SwNormalQueueIndex > (Adc_QueueIndexType)0)
	.d2line		2821
	lis		r4,Adc_aUnitStatus@ha
	e_add16i		r4,r4,Adc_aUnitStatus@l
	rlwinm		r0,r31,3,21,28		# SwNormalQueueIndex=r0 Unit=r31
	se_add		r0,r4		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0
	lhzx		r0,r0,r0		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0
	se_cmpi		r0,0		# SwNormalQueueIndex=r0
	bc		0,1,.L597	# le
#             {
# #if (ADC_ENABLE_QUEUING == STD_ON)
#                 SwNormalQueueIndex = Adc_aUnitStatus[Unit].SwNormalQueueIndex - 1U;
	.d2line		2824
.Llo157:
	lis		r4,Adc_aUnitStatus@ha
	e_add16i		r4,r4,Adc_aUnitStatus@l
	rlwinm		r0,r31,3,21,28		# SwNormalQueueIndex=r0 Unit=r31
.Llo158:
	se_add		r0,r4		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0
	lhzx		r30,r0,r0		# SwNormalQueueIndex=r30 SwNormalQueueIndex=r0
	diab.li		r0,65535		# SwNormalQueueIndex=r0
	se_add		r0,r30		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0 SwNormalQueueIndex=r30
	mr		r30,r0		# SwNormalQueueIndex=r30 SwNormalQueueIndex=r0
.L606:
#                 /* remove group without interrupts from queue  */
#                 while (SwNormalQueueIndex < (Adc_QueueIndexType)ADC_QUEUE_INDEX_TYPE_MAXIMUM)
	.d2line		2826
.Llo159:
	rlwinm		r0,r30,0,16,31		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r30
.Llo160:
	diab.li		r4,65535
	se_cmp		r0,r4		# SwNormalQueueIndex=r0
	bc		0,0,.L609	# ge
#                 {
#                     if (Group == Adc_aUnitStatus[Unit].SwNormalQueue[SwNormalQueueIndex])
	.d2line		2828
	rlwinm		r5,r3,0,16,31		# Group=r3
	lis		r4,(Adc_aUnitStatus+2)@ha
	e_add16i		r4,r4,(Adc_aUnitStatus+2)@l
	rlwinm		r0,r30,1,15,30		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r30
	se_add		r4,r0		# SwNormalQueueIndex=r0
	rlwinm		r0,r31,3,21,28		# SwNormalQueueIndex=r0 Unit=r31
	se_add		r0,r4		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0
	lhzx		r0,r0,r0		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0
	se_cmp		r5,r0		# SwNormalQueueIndex=r0
	bc		0,2,.L608	# ne
#                     {
#                         /* The group is found in the Queue */
#                         Adc_RemoveFromQueue(Unit, SwNormalQueueIndex);
	.d2line		2831
.Llo123:
	mr		r3,r31		# Unit=r3 Unit=r31
	mr		r4,r30		# SwNormalQueueIndex=r4 SwNormalQueueIndex=r30
	bl		Adc_RemoveFromQueue
	b		.L609
.L608:
#                         break;
#                     }
#                     SwNormalQueueIndex--;
	.d2line		2834
.Llo124:
	diab.li		r0,65535		# SwNormalQueueIndex=r0
	se_add		r0,r30		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0 SwNormalQueueIndex=r30
	mr		r30,r0		# SwNormalQueueIndex=r30 SwNormalQueueIndex=r0
	b		.L606
.L609:
#                 }
# #if (ADC_ENABLE_START_STOP_GROUP_API == STD_ON)
#                 /* Start / restore next conversion in the queue*/
#                 if (0U == SwNormalQueueIndex)
	.d2line		2838
	e_cmphl16i	r30,0		# SwNormalQueueIndex=r30
	bc		0,2,.L597	# ne
#                 {
#                     if(Adc_aUnitStatus[Unit].SwNormalQueueIndex > 0U)
	.d2line		2840
.Llo125:
	lis		r3,Adc_aUnitStatus@ha		# Group=r3
.Llo126:
	e_add16i		r3,r3,Adc_aUnitStatus@l		# Group=r3 Group=r3
	rlwinm		r0,r31,3,21,28		# SwNormalQueueIndex=r0 Unit=r31
.Llo161:
	se_add		r0,r3		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0 Group=r3
	lhzx		r0,r0,r0		# SwNormalQueueIndex=r0 SwNormalQueueIndex=r0
	e_cmphl16i	r0,0		# SwNormalQueueIndex=r0
	bc		1,2,.L597	# eq
#                     {
#                         Adc_Ipw_StartNormalConversion(Unit);
	.d2line		2842
.Llo127:
	rlwinm		r3,r31,0,24,31		# Group=r3 Unit=r31
	bl		Adc_Adcdig_StartNormalConversion
	b		.L597
.L604:
#                     }
#                 }
# #endif /* (ADC_ENABLE_START_STOP_GROUP_API == STD_ON) */
# #else
#             Adc_aUnitStatus[Unit].SwNormalQueueIndex--;
# #endif
#             }
#         }
#     }
#     else
#     {
#         Adc_aGroupStatus[Group].eConversion = ADC_BUSY;
	.d2line		2854
	diab.li		r0,1		# SwNormalQueueIndex=r0
.Llo162:
	lis		r4,Adc_aGroupStatus@ha
	e_add16i		r4,r4,Adc_aGroupStatus@l
.Llo128:
	rlwinm		r3,r3,4,12,27		# Group=r3 Group=r3
.Llo129:
	stwx		r0,r4,r3		# SwNormalQueueIndex=r0
.L597:
#     }
# }
	.d2line		2856
	.d2epilogue_begin
.Llo135:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# SwNormalQueueIndex=r0
	mtspr		lr,r0		# SwNormalQueueIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L793:
	.type		Adc_UpdateStatusReadGroupNoInt,@function
	.size		Adc_UpdateStatusReadGroupNoInt,.-Adc_UpdateStatusReadGroupNoInt
# Number of nodes = 267

# Allocations for Adc_UpdateStatusReadGroupNoInt
#	?a4		Group
#	?a5		bFlag
#	?a6		Unit
#	?a7		SwNormalQueueIndex
# LOCAL_INLINE FUNC(void, ADC_CODE) Adc_UpdateStatusReadGroupInt
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         2859,35
#$$ld
.L804:

#$$bf	Adc_UpdateStatusReadGroupInt,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.d2_cfa_start __cie
Adc_UpdateStatusReadGroupInt:
.Llo163:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# Group=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Group=r0 Group=r3
	.d2prologue_end
# (
#     CONST(Adc_GroupType, AUTOMATIC) Group
# )
# {
#     /* The following code has been added to respect the State Diagram of Streaming Access Mode */
#     if (ADC_COMPLETED == Adc_aGroupStatus[Group].eConversion)
	.d2line		2865
.Llo164:
	lis		r3,Adc_aGroupStatus@ha
.Llo165:
	e_add16i		r3,r3,Adc_aGroupStatus@l
	rlwinm		r4,r0,4,12,27		# Group=r0
	se_add		r3,r4
	lwzx		r3,r0,r3		# Group=r0
	se_cmpi		r3,2
	bc		0,2,.L624	# ne
#     {
#         Adc_aGroupStatus[Group].ResultIndex = 0U;
	.d2line		2867
.Llo166:
	diab.li		r4,0
	lis		r3,(Adc_aGroupStatus+12)@ha
	e_add16i		r3,r3,(Adc_aGroupStatus+12)@l
.Llo167:
	rlwinm		r0,r0,4,12,27		# Group=r0 Group=r0
.Llo168:
	sthux		r4,r3,r0
#         /* ADC331 -- ADC222*/
#         Adc_aGroupStatus[Group].eConversion = ADC_BUSY;
	.d2line		2869
	diab.li		r4,1
	lis		r3,Adc_aGroupStatus@ha
	e_add16i		r3,r3,Adc_aGroupStatus@l
	stwx		r4,r3,r0
	b		.L623
.L624:
#     }
#     else
#     {
#         /* Compliance with State Diagram */
#         /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#         if (ADC_TRIGG_SRC_SW == Adc_pCfgPtr->pGroups[Group].eTriggerSource)
	.d2line		2875
.Llo169:
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r4,4(r3)
	rlwinm		r3,r0,0,16,31		# Group=r0
	e_mulli		r3,r3,92
	se_add		r3,r4
	lwz		r3,20(r3)
	se_cmpi		r3,0
	bc		0,2,.L623	# ne
#         {
#             if (ADC_STREAM_COMPLETED == Adc_aGroupStatus[Group].eConversion)
	.d2line		2877
	lis		r3,Adc_aGroupStatus@ha
	e_add16i		r3,r3,Adc_aGroupStatus@l
	rlwinm		r4,r0,4,12,27		# Group=r0
	se_add		r3,r4
	lwzx		r3,r0,r3		# Group=r0
	se_cmpi		r3,3
	bc		0,2,.L623	# ne
#             {
#                 /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#                 if((ADC_CONV_MODE_ONESHOT == Adc_pCfgPtr->pGroups[Group].eMode)|| \
	.d2line		2880
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r4,4(r3)
	rlwinm		r3,r0,0,16,31		# Group=r0
	e_mulli		r3,r3,92
	se_add		r3,r4
	lwz		r3,8(r3)
	se_cmpi		r3,0
	bc		1,2,.L630	# eq
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r4,4(r3)
	rlwinm		r3,r0,0,16,31		# Group=r0
	e_mulli		r3,r3,92
	se_add		r3,r4
	lwz		r3,8(r3)
	se_cmpi		r3,1
	bc		0,2,.L628	# ne
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r4,4(r3)
	rlwinm		r3,r0,0,16,31		# Group=r0
	e_mulli		r3,r3,92
	se_add		r3,r4
	lwz		r3,4(r3)
	se_cmpi		r3,1
	bc		0,2,.L628	# ne
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r4,4(r3)
	rlwinm		r3,r0,0,16,31		# Group=r0
	e_mulli		r3,r3,92
	se_add		r3,r4
	lwz		r3,68(r3)
	se_cmpi		r3,0
	bc		0,2,.L628	# ne
.L630:
#                    ((ADC_CONV_MODE_CONTINUOUS == Adc_pCfgPtr->pGroups[Group].eMode) && \
#                     (ADC_ACCESS_MODE_STREAMING == Adc_pCfgPtr->pGroups[Group].eAccessMode) && \
#                     (ADC_STREAM_BUFFER_LINEAR == Adc_pCfgPtr->pGroups[Group].eBufferMode)
#                    )
#                   )
#                 {
#                     /* ADC330 - ADC221 */
#                     Adc_aGroupStatus[Group].eConversion = ADC_IDLE;
	.d2line		2888
.Llo170:
	diab.li		r4,0
	lis		r3,Adc_aGroupStatus@ha
	e_add16i		r3,r3,Adc_aGroupStatus@l
.Llo171:
	rlwinm		r0,r0,4,12,27		# Group=r0 Group=r0
.Llo172:
	stwx		r4,r3,r0
	b		.L623
.L628:
#                 }
#                 else
#                 { /* Continuous*/
#                     /* ADC329 -- ADC222 */
#                     Adc_aGroupStatus[Group].eConversion = ADC_BUSY;
	.d2line		2893
	diab.li		r4,1
	lis		r3,Adc_aGroupStatus@ha
	e_add16i		r3,r3,Adc_aGroupStatus@l
.Llo173:
	rlwinm		r0,r0,4,12,27		# Group=r0 Group=r0
.Llo174:
	stwx		r4,r3,r0
.L623:
#                 }
#             }
#         }
# #if (ADC_HW_TRIGGER_API == STD_ON)
#         /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#         else if (ADC_TRIGG_SRC_HW == Adc_pCfgPtr->pGroups[Group].eTriggerSource)
#         {
#             /* Hw Trigger*/
#             if (ADC_STREAM_COMPLETED == Adc_aGroupStatus[Group].eConversion)
#             {
#                 /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#                 if((ADC_ACCESS_MODE_STREAMING == Adc_pCfgPtr->pGroups[Group].eAccessMode)&& \
#                 (ADC_STREAM_BUFFER_LINEAR == Adc_pCfgPtr->pGroups[Group].eBufferMode)
#                 )
#                 {
#                     /* ADC330 - ADC221*/
#                     Adc_aGroupStatus[Group].eConversion = ADC_IDLE;
#                 }
#                 else
#                 { /* Simple One-shot mode, in other words in single access mode*/
#                     /* ADC329 -- ADC222*/
#                     Adc_aGroupStatus[Group].eConversion = ADC_BUSY;
#                 }
#             }
#         }
#         else
#         {
#             /* Nothing for misra */
#         }
# #endif /* (ADC_HW_TRIGGER_API == STD_ON) */
#     }
# }
	.d2line		2925
	.d2epilogue_begin
	lwz		r0,20(r1)		# Group=r0
	mtspr		lr,r0		# Group=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L805:
	.type		Adc_UpdateStatusReadGroupInt,@function
	.size		Adc_UpdateStatusReadGroupInt,.-Adc_UpdateStatusReadGroupInt
# Number of nodes = 134

# Allocations for Adc_UpdateStatusReadGroupInt
#	?a4		Group
# FUNC(void, ADC_CODE) Adc_Init
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3050,22
#$$ld
.L810:

#$$bf	Adc_Init,interprocedural,rasave,nostackparams
	.globl		Adc_Init
	.d2_cfa_start __cie
Adc_Init:
.Llo175:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# ConfigPtr=r0
	stw		r0,20(r1)		# ConfigPtr=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# ConfigPtr=r0 ConfigPtr=r3
	.d2prologue_end
# (
#     P2CONST(Adc_ConfigType, AUTOMATIC, ADC_APPL_CONST) ConfigPtr
# )
# {
# #if ((ADC_VALIDATE_GLOBAL_CALL == STD_ON) || (ADC_VALIDATE_PARAMS == STD_ON))
#     VAR(Std_ReturnType, AUTOMATIC) ValidStatus = (Std_ReturnType)E_NOT_OK;
# #endif
# 
# #if (ADC_VALIDATE_GLOBAL_CALL == STD_ON)
#     ValidStatus = Adc_ValidateGloballCall(ADC_INIT_ID);
#     if ((Std_ReturnType)E_OK == ValidStatus)
#     {
# #endif /* ADC_VALIDATE_GLOBAL_CALL == STD_ON */
# 
# #if (ADC_VALIDATE_PARAMS == STD_ON)
#         ValidStatus = Adc_ValidatePtrInit(ConfigPtr);
#         if ((Std_ReturnType)E_OK == ValidStatus)
#         {
# #endif /* ADC_VALIDATE_PARAMS == STD_ON */
# 
# #ifdef ADC_PRECOMPILE_SUPPORT
#             /* ADC342 */
#             Adc_pCfgPtr = &Adc_ConfigPC;
#             (void)ConfigPtr;
# #else
#             /* ADC054 */
#             Adc_pCfgPtr = ConfigPtr;
	.d2line		3077
.Llo176:
	lis		r3,Adc_pCfgPtr@ha
.Llo177:
	e_add16i		r3,r3,Adc_pCfgPtr@l
	stw		r0,0(r3)		# ConfigPtr=r0
# #endif /* ADC_PRECOMPILE_SUPPORT */
# 
#             /* Initialize the unit status for all units */
#             Adc_InitUnitStatus();
	.d2line		3081
	bl		Adc_InitUnitStatus
#             /* Initialize the group status for all groups */
#             Adc_InitGroupsStatus();
	.d2line		3083
.Llo178:
	bl		Adc_InitGroupsStatus
#             /* Call the low level function to initialize driver */
#             Adc_Ipw_Init(Adc_pCfgPtr);
	.d2line		3085
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	bl		Adc_Adcdig_Init
# 
# #if (ADC_VALIDATE_PARAMS == STD_ON)
#         }
# #endif /* ADC_VALIDATE_PARAMS == STD_ON */
# 
# #if (ADC_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
#     Adc_EndValidateGloballCall(ValidStatus, ADC_INIT_ID);
# #endif /* ADC_VALIDATE_GLOBAL_CALL == STD_ON */
# }
	.d2line		3095
	.d2epilogue_begin
	lwz		r0,20(r1)		# ConfigPtr=r0
	mtspr		lr,r0		# ConfigPtr=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L811:
	.type		Adc_Init,@function
	.size		Adc_Init,.-Adc_Init
# Number of nodes = 11

# Allocations for Adc_Init
#	?a4		ConfigPtr
# FUNC(Std_ReturnType, ADC_CODE) Adc_SetupResultBuffer
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3128,32
#$$ld
.L820:

#$$bf	Adc_SetupResultBuffer,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,lr
	.globl		Adc_SetupResultBuffer
	.d2_cfa_start __cie
Adc_SetupResultBuffer:
.Llo179:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Group=r3 Group=r3
	mr		r4,r4		# DataBufferPtr=r4 DataBufferPtr=r4
	.d2prologue_end
# (
#     VAR(Adc_GroupType, AUTOMATIC) Group,
#     P2VAR(Adc_ValueGroupType, AUTOMATIC, ADC_APPL_DATA) DataBufferPtr
# )
# {
#     VAR(Std_ReturnType, AUTOMATIC) TempReturn = (Std_ReturnType)E_NOT_OK;
	.d2line		3134
	diab.li		r5,1		# TempReturn=r5
#     P2CONST(Adc_GroupConfigurationType, AUTOMATIC, ADC_APPL_CONST) pGroupPtr = NULL_PTR;
	.d2line		3135
	diab.li		r6,0		# pGroupPtr=r6
# 
# #if (ADC_VALIDATE_CALL_AND_GROUP == STD_ON)
#     if ((Std_ReturnType)E_OK == Adc_ValidateCallAndGroup(ADC_SETUPRESULTBUFFER_ID, Group))
#     {
# #endif /* ADC_VALIDATE_CALL_AND_GROUP == STD_ON */
# 
# #if (ADC_VALIDATE_PARAMS == STD_ON)
#         if ((Std_ReturnType)E_OK == Adc_ValidatePtr(ADC_SETUPRESULTBUFFER_ID, DataBufferPtr))
#         {
# #endif /* ADC_VALIDATE_PARAMS == STD_ON */
# 
# #if (ADC_VALIDATE_STATE == STD_ON)
#             if ((Std_ReturnType)E_OK == Adc_ValidateSetupBufferNotBusy(Group))
#             {
# #endif /* ADC_VALIDATE_STATE == STD_ON */
# 
#                 /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#                 pGroupPtr = &Adc_pCfgPtr->pGroups[Group];
	.d2line		3153
	lis		r5,Adc_pCfgPtr@ha		# TempReturn=r5
.Llo182:
	lwz		r5,Adc_pCfgPtr@l(r5)		# TempReturn=r5 TempReturn=r5
	lwz		r7,4(r5)		# TempReturn=r5
	rlwinm		r5,r3,0,16,31		# TempReturn=r5 Group=r3
	e_mulli		r5,r5,92		# TempReturn=r5 TempReturn=r5
	se_add		r5,r7		# TempReturn=r5 TempReturn=r5
.Llo183:
	mr		r5,r5		# pGroupPtr=r5 pGroupPtr=r5
#                 /* ADC420 */
#                 /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#                 (pGroupPtr->pResultsBufferPtr[Group]) = DataBufferPtr;
	.d2line		3156
	lwz		r5,64(r5)		# pGroupPtr=r5 pGroupPtr=r5
	rlwinm		r3,r3,2,14,29		# Group=r3 Group=r3
.Llo180:
	stwx		r4,r5,r3		# pGroupPtr=r5 DataBufferPtr=r4
#                 TempReturn = (Std_ReturnType)E_OK;
	.d2line		3157
	diab.li		r3,0		# Group=r3
# #if (ADC_VALIDATE_STATE == STD_ON)
#             }
# #endif /* ADC_VALIDATE_STATE == STD_ON */
# 
# #if (ADC_VALIDATE_PARAMS == STD_ON)
#         }
# #endif /* ADC_VALIDATE_PARAMS == STD_ON */
# 
# #if (ADC_VALIDATE_CALL_AND_GROUP == STD_ON)
#     }
# #endif /* ADC_VALIDATE_CALL_AND_GROUP == STD_ON */
# 
#     return TempReturn;
# }
	.d2line		3171
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
.L821:
	.type		Adc_SetupResultBuffer,@function
	.size		Adc_SetupResultBuffer,.-Adc_SetupResultBuffer
# Number of nodes = 34

# Allocations for Adc_SetupResultBuffer
#	?a4		Group
#	?a5		DataBufferPtr
#	?a6		TempReturn
#	?a7		pGroupPtr
# FUNC(void, ADC_CODE) Adc_DeInit(void)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3193,22
#$$ld
.L836:

#$$bf	Adc_DeInit,interprocedural,rasave,nostackparams
	.globl		Adc_DeInit
	.d2_cfa_start __cie
Adc_DeInit:
.Llo184:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(Adc_GroupType,AUTOMATIC) Group = 0U;
	.d2line		3195
	diab.li		r31,0		# Group=r31
# #if ((ADC_VALIDATE_GLOBAL_CALL == STD_ON) || (ADC_VALIDATE_STATE == STD_ON))
#     VAR(Std_ReturnType, AUTOMATIC) ValidStatus = (Std_ReturnType)E_NOT_OK;
# #endif
# 
# #if (ADC_VALIDATE_GLOBAL_CALL == STD_ON)
#     ValidStatus = Adc_ValidateGloballCall(ADC_DEINIT_ID);
#     if ((Std_ReturnType)E_OK == ValidStatus)
#     {
# #endif /* ADC_VALIDATE_GLOBAL_CALL == STD_ON */
# 
# #if (ADC_VALIDATE_STATE == STD_ON)
#         ValidStatus = Adc_ValidateDeInitNotBusy();
#         if ((Std_ReturnType)E_OK == ValidStatus)
#         {
# #endif /* ADC_VALIDATE_STATE == STD_ON */
# 
#             Adc_Ipw_DeInit();
	.d2line		3212
	bl		Adc_Adcdig_DeInit
#             for (Group = 0U; Group < Adc_pCfgPtr->GroupCount; Group++)
.L638:
	.d2line		3213
	rlwinm		r4,r31,0,16,31		# Group=r31
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lhz		r0,12(r3)
	se_cmp		r4,r0
	bc		0,0,.L640	# ge
#             {
#                 /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of */
#                 Adc_pCfgPtr->pGroups[Group].pResultsBufferPtr[Group] = NULL_PTR;
	.d2line		3216
	diab.li		r0,0
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r4,4(r3)
	rlwinm		r3,r31,0,16,31		# Group=r31
	e_mulli		r3,r3,92
	se_add		r3,r4
	lwz		r3,64(r3)
	rlwinm		r4,r31,2,14,29		# Group=r31
	stwx		r0,r3,r4
# #if (ADC_SETCHANNEL_API == STD_ON)
#                 Adc_aRuntimeGroupChannel[Group].pChannel = NULL_PTR;
#             #ifdef ADC_PDB_SUPPORTED
#                 Adc_aRuntimeGroupChannel[Group].pu16Delays = NULL_PTR;
#                 Adc_aRuntimeGroupChannel[Group].u16Mask = 0U;
#             #endif /* ADC_PDB_SUPPORTED */
#                 Adc_aRuntimeGroupChannel[Group].ChannelCount = 0U;
#                 Adc_aRuntimeGroupChannel[Group].bRuntimeUpdated = (boolean)FALSE;
# #endif
#             }
	.d2line		3226
	diab.addi		r3,r31,1		# Group=r31
	se_addi		r31,1		# Group=r31 Group=r31
	b		.L638
.L640:
#             /* Undefined the global pointer to the configuration */
#             Adc_pCfgPtr = NULL_PTR;
	.d2line		3228
.Llo185:
	diab.li		r3,0
	lis		r4,Adc_pCfgPtr@ha
	e_add16i		r4,r4,Adc_pCfgPtr@l
	stw		r3,0(r4)
# 
# #if (ADC_VALIDATE_STATE == STD_ON)
#         }
# #endif /* ADC_VALIDATE_STATE == STD_ON */
# 
# #if (ADC_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
#     Adc_EndValidateGloballCall(ValidStatus, ADC_DEINIT_ID);
# #endif /* ADC_VALIDATE_GLOBAL_CALL == STD_ON */
# }
	.d2line		3238
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
.L837:
	.type		Adc_DeInit,@function
	.size		Adc_DeInit,.-Adc_DeInit
# Number of nodes = 42

# Allocations for Adc_DeInit
#	?a4		Group
# FUNC(void, ADC_CODE) Adc_StartGroupConversion
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3262,22
#$$ld
.L843:

#$$bf	Adc_StartGroupConversion,interprocedural,rasave,nostackparams
	.globl		Adc_StartGroupConversion
	.d2_cfa_start __cie
Adc_StartGroupConversion:
.Llo186:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# Group=r0
	stw		r0,20(r1)		# Group=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Group=r0 Group=r3
	.d2prologue_end
# (
#     VAR(Adc_GroupType, AUTOMATIC) Group
# )
# {
#     /* ADC Hardware unit on which the requested group will run */
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit = (Adc_HwUnitType)0;
	.d2line		3268
.Llo187:
	diab.li		r3,0		# Unit=r3
# 
# #if (ADC_VALIDATE_CALL_AND_GROUP == STD_ON)
#     if ((Std_ReturnType)E_OK == Adc_ValidateCallAndGroup(ADC_STARTGROUPCONVERSION_ID, Group))
#     {
# #endif /* ADC_VALIDATE_CALL_AND_GROUP == STD_ON */
# 
# #if (ADC_VALIDATE_STATE == STD_ON)
#         if ((Std_ReturnType)E_OK == Adc_ValidateStateStartGroupConvNotBusy(Group))
#         {
# #endif /* ADC_VALIDATE_STATE == STD_ON */
# 
# #if (ADC_VALIDATE_PARAMS == STD_ON)
#             if ((Std_ReturnType)E_OK == Adc_ValidateExtraParams(ADC_STARTGROUPCONVERSION_ID,
#                                                                 ADC_E_BUFFER_UNINIT_LIST | \
#                                                                 ADC_E_WRONG_TRIGG_SRC_LIST | \
#                                                                 ADC_E_QUEUE_FULL_LIST,
#                                                                 Group
#                                                                )
#                )
#             {
# #endif /* ADC_VALIDATE_PARAMS == STD_ON */
# 
#                 /* Get the unit to which the group belongs to */
#                 /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#                 Unit = Adc_pCfgPtr->pGroups[(Group)].HwUnit;
	.d2line		3293
.Llo188:
	lis		r3,Adc_pCfgPtr@ha		# Unit=r3
.Llo190:
	lwz		r3,Adc_pCfgPtr@l(r3)		# Unit=r3 Unit=r3
	lwz		r3,4(r3)		# Unit=r3 Unit=r3
	rlwinm		r4,r0,0,16,31		# Group=r0
	e_mulli		r4,r4,92
	lbzx		r4,r3,r4		# Unit=r3
	mr		r4,r4		# Unit=r4 Unit=r4
#                 /* Update queue */
#                 Adc_UpdateStatusStartConversion(Group, Unit);
	.d2line		3295
	mr		r3,r0		# Group=r3 Group=r0
.Llo191:
	mr		r4,r4		# Unit=r4 Unit=r4
	bl		Adc_UpdateStatusStartConversion
# 
# #if (ADC_VALIDATE_PARAMS == STD_ON)
#             }
# #endif /* ADC_VALIDATE_PARAMS == STD_ON */
# 
# #if (ADC_VALIDATE_STATE == STD_ON)
#         }
# #endif /* ADC_VALIDATE_STATE == STD_ON */
# 
# #if (ADC_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
# #endif /* ADC_VALIDATE_GLOBAL_CALL == STD_ON */
# }
	.d2line		3308
	.d2epilogue_begin
.Llo189:
	lwz		r0,20(r1)		# Group=r0
	mtspr		lr,r0		# Group=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L844:
	.type		Adc_StartGroupConversion,@function
	.size		Adc_StartGroupConversion,.-Adc_StartGroupConversion
# Number of nodes = 23

# Allocations for Adc_StartGroupConversion
#	?a4		Group
#	?a5		Unit
# FUNC(void, ADC_CODE) Adc_StopGroupConversion
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3330,22
#$$ld
.L851:

#$$bf	Adc_StopGroupConversion,interprocedural,rasave,nostackparams
	.globl		Adc_StopGroupConversion
	.d2_cfa_start __cie
Adc_StopGroupConversion:
.Llo192:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# Group=r0
	stw		r0,20(r1)		# Group=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Group=r0 Group=r3
	.d2prologue_end
# (
#     VAR(Adc_GroupType, AUTOMATIC) Group
# )
# {
#     /* ADC Hardware unit on which the requested group will run */
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit = (Adc_HwUnitType)0;
	.d2line		3336
.Llo193:
	diab.li		r3,0		# Unit=r3
# 
# #if (ADC_VALIDATE_CALL_AND_GROUP == STD_ON)
#     if ((Std_ReturnType)E_OK == Adc_ValidateCallAndGroup(ADC_STOPGROUPCONVERSION_ID, Group))
#     {
# #endif /* ADC_VALIDATE_CALL_AND_GROUP == STD_ON */
# 
# #if (ADC_VALIDATE_STATE == STD_ON)
#         if ((Std_ReturnType)E_OK == Adc_ValidateStateNotIdle(ADC_STOPGROUPCONVERSION_ID, Group))
#         {
# #endif /* ADC_VALIDATE_STATE == STD_ON */
# 
# #if (ADC_VALIDATE_PARAMS == STD_ON)
#             if ((Std_ReturnType)E_OK == Adc_ValidateExtraParams(ADC_STOPGROUPCONVERSION_ID,
#                                                                 ADC_E_WRONG_TRIGG_SRC_LIST,
#                                                                 Group
#                                                                )
#                )
#             {
# #endif /* ADC_VALIDATE_PARAMS == STD_ON */
# 
#                 /* Get the unit to which the group belongs to */
#                 /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#                 Unit = Adc_pCfgPtr->pGroups[(Group)].HwUnit;
	.d2line		3359
.Llo194:
	lis		r3,Adc_pCfgPtr@ha		# Unit=r3
.Llo196:
	lwz		r3,Adc_pCfgPtr@l(r3)		# Unit=r3 Unit=r3
	lwz		r3,4(r3)		# Unit=r3 Unit=r3
	rlwinm		r4,r0,0,16,31		# Group=r0
	e_mulli		r4,r4,92
	lbzx		r4,r3,r4		# Unit=r3
	mr		r4,r4		# Unit=r4 Unit=r4
#                 Adc_UpdateStatusStopConversion(Group, Unit);
	.d2line		3360
	mr		r3,r0		# Group=r3 Group=r0
.Llo197:
	mr		r4,r4		# Unit=r4 Unit=r4
	bl		Adc_UpdateStatusStopConversion
# 
# #if (ADC_VALIDATE_PARAMS == STD_ON)
#             }
# #endif /* ADC_VALIDATE_PARAMS == STD_ON */
# 
# #if (ADC_VALIDATE_STATE == STD_ON)
#         }
# #endif /* ADC_VALIDATE_STATE == STD_ON */
# 
# #if (ADC_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
# #endif /* ADC_VALIDATE_GLOBAL_CALL == STD_ON */
# }
	.d2line		3373
	.d2epilogue_begin
.Llo195:
	lwz		r0,20(r1)		# Group=r0
	mtspr		lr,r0		# Group=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L852:
	.type		Adc_StopGroupConversion,@function
	.size		Adc_StopGroupConversion,.-Adc_StopGroupConversion
# Number of nodes = 23

# Allocations for Adc_StopGroupConversion
#	?a4		Group
#	?a5		Unit
# FUNC(Std_ReturnType, ADC_CODE) Adc_ReadGroup
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3407,32
#$$ld
.L859:

#$$bf	Adc_ReadGroup,interprocedural,rasave,nostackparams
	.globl		Adc_ReadGroup
	.d2_cfa_start __cie
Adc_ReadGroup:
.Llo198:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo203:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# GroupRet=r0
	.d2_cfa_offset    108,-1
	mr		r30,r3		# Group=r30 Group=r3
	.d2prologue_end
# (
#     VAR(Adc_GroupType, AUTOMATIC) Group,
#     P2VAR(Adc_ValueGroupType, AUTOMATIC, ADC_APPL_DATA) DataBufferPtr
# )
# {
#     /* Return Value */
#     VAR(Std_ReturnType, AUTOMATIC) GroupRet = (Std_ReturnType)E_NOT_OK;
	.d2line		3414
	diab.li		r0,1		# GroupRet=r0
#     static VAR(boolean, AUTOMATIC) bFlag = (boolean)TRUE;
# 
# #if (ADC_VALIDATE_CALL_AND_GROUP == STD_ON)
#     if ((Std_ReturnType)E_OK == Adc_ValidateCallAndGroup(ADC_VALUEREADGROUP_ID, Group))
#     {
# #endif /* ADC_VALIDATE_CALL_AND_GROUP == STD_ON */
# 
# #if (ADC_VALIDATE_PARAMS == STD_ON)
#         if ((Std_ReturnType)E_OK == Adc_ValidatePtr(ADC_VALUEREADGROUP_ID, DataBufferPtr))
#         {
# #endif /* ADC_VALIDATE_PARAMS == STD_ON */
# 
# #if (ADC_VALIDATE_STATE == STD_ON)
#             if ((Std_ReturnType)E_OK == Adc_ValidateStateNotIdle(ADC_VALUEREADGROUP_ID, Group))
#             {
# #endif /* ADC_VALIDATE_STATE == STD_ON */
# 
#                 /** @violates @ref Adc_c_REF_7 MISRA-C:2004 Rule 1.4: Undefined behaviour.*/
#                 GroupRet = Adc_Ipw_ReadGroup(Group, DataBufferPtr, &bFlag);
	.d2line		3433
.Llo204:
	rlwinm		r3,r3,0,16,31		# Group=r3 Group=r3
.Llo199:
	lis		r5,bFlag.646@ha
	e_add16i		r5,r5,bFlag.646@l
	mr		r0,r4		# DataBufferPtr=r0 DataBufferPtr=r4
	bl		Adc_Adcdig_ReadGroup
.Llo202:
	mr		r31,r3		# GroupRet=r31 GroupRet=r3
#                 /*if the conversion is finished or if the limit checking was failed for the group without interrupts*/
#                 if(((Std_ReturnType)E_OK == GroupRet) || ((boolean)FALSE == bFlag))
	.d2line		3435
	rlwinm		r3,r3,0,24,31		# GroupRet=r3 GroupRet=r3
	se_cmpi		r3,0		# GroupRet=r3
	bc		1,2,.L650	# eq
.Llo200:
	lis		r3,bFlag.646@ha		# GroupRet=r3
.Llo205:
	lbz		r0,bFlag.646@l(r3)		# GroupRet=r0 GroupRet=r3
	se_cmpi		r0,0		# GroupRet=r0
	bc		0,2,.L647	# ne
.L650:
#                 {
#                     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#                     if((uint8)STD_ON == Adc_pCfgPtr->pGroups[Group].u8AdcWithoutInterrupt)
	.d2line		3438
	lis		r3,Adc_pCfgPtr@ha		# GroupRet=r3
	lwz		r3,Adc_pCfgPtr@l(r3)		# GroupRet=r3 GroupRet=r3
	lwz		r0,4(r3)		# GroupRet=r0 GroupRet=r3
	rlwinm		r3,r30,0,16,31		# GroupRet=r3 Group=r30
	e_mulli		r3,r3,92		# GroupRet=r3 GroupRet=r3
	se_add		r3,r0		# GroupRet=r3 GroupRet=r3 GroupRet=r0
	lbz		r0,90(r3)		# GroupRet=r0 GroupRet=r3
	se_cmpi		r0,1		# GroupRet=r0
	bc		0,2,.L648	# ne
#                     {
#                         Adc_UpdateStatusReadGroupNoInt(Group, bFlag);
	.d2line		3440
	mr		r3,r30		# Group=r3 Group=r30
	lis		r4,bFlag.646@ha
	lbz		r4,bFlag.646@l(r4)
	bl		Adc_UpdateStatusReadGroupNoInt
	b		.L647
.L648:
#                     }
#                     else
#                     {
#                         Adc_UpdateStatusReadGroupInt(Group);
	.d2line		3444
	mr		r3,r30		# Group=r3 Group=r30
	bl		Adc_UpdateStatusReadGroupInt
.L647:
#                     }
#                 }
# #if (ADC_VALIDATE_STATE == STD_ON)
#             }
# #endif /* ADC_VALIDATE_STATE == STD_ON */
# 
# #if (ADC_VALIDATE_PARAMS == STD_ON)
#         }
# #endif /* ADC_VALIDATE_PARAMS == STD_ON */
# 
# #if (ADC_VALIDATE_GLOBAL_CALL == STD_ON)
#     }
# #endif /* ADC_VALIDATE_GLOBAL_CALL == STD_ON */
# 
#     return(GroupRet);
	.d2line		3459
.Llo201:
	rlwinm		r3,r31,0,24,31		# GroupRet=r3 GroupRet=r31
# }
	.d2line		3460
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo206:
	lwz		r0,36(r1)		# GroupRet=r0
	mtspr		lr,r0		# GroupRet=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L860:
	.type		Adc_ReadGroup,@function
	.size		Adc_ReadGroup,.-Adc_ReadGroup
# Number of nodes = 54

# Allocations for Adc_ReadGroup
#	?a4		Group
#	?a5		DataBufferPtr
#	?a6		GroupRet
# FUNC(void, ADC_CODE) Adc_EnableGroupNotification
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3623,22
#$$ld
.L869:

#$$bf	Adc_EnableGroupNotification,interprocedural,rasave,nostackparams
	.globl		Adc_EnableGroupNotification
	.d2_cfa_start __cie
Adc_EnableGroupNotification:
.Llo207:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Group=r31 Group=r3
	.d2prologue_end
# (
#     VAR(Adc_GroupType, AUTOMATIC) Group
# )
# {
# #if (ADC_VALIDATE_CALL_AND_GROUP == STD_ON)
#     if ((Std_ReturnType)E_OK == Adc_ValidateCallAndGroup(ADC_ENABLEGROUPNOTIFICATION_ID, Group))
#     {
# #endif /* ADC_VALIDATE_CALL_AND_GROUP == STD_ON */
# 
# #if (ADC_VALIDATE_NOTIFY_CAPABILITY == STD_ON)
#         if ((Std_ReturnType)E_OK == Adc_NotifyCapablity(ADC_ENABLEGROUPNOTIFICATION_ID, Group))
#         {
# #endif /* ADC_VALIDATE_NOTIFY_CAPABILITY == STD_ON */
# 
#             /* Enter critical section to protect agains Adc_GroupStatus modifications */
#             SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_00();
	.d2line		3639
	bl		SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_00
#             Adc_aGroupStatus[Group].eNotification = ADC_NOTIFICATION_ENABLED;
	.d2line		3640
.Llo208:
	diab.li		r0,1
	lis		r3,(Adc_aGroupStatus+8)@ha
	e_add16i		r3,r3,(Adc_aGroupStatus+8)@l
.Llo209:
	rlwinm		r31,r31,4,12,27		# Group=r31 Group=r31
.Llo210:
	stwx		r0,r3,r31
#             /* Exit critical section */
#             SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_00();
	.d2line		3642
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_00
# 
# #if (ADC_VALIDATE_NOTIFY_CAPABILITY == STD_ON)
#         }
# #endif /* ADC_VALIDATE_NOTIFY_CAPABILITY == STD_ON */
# 
# #if (ADC_VALIDATE_CALL_AND_GROUP == STD_ON)
#     }
# #endif /* ADC_VALIDATE_CALL_AND_GROUP == STD_ON */
# }
	.d2line		3651
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
.L870:
	.type		Adc_EnableGroupNotification,@function
	.size		Adc_EnableGroupNotification,.-Adc_EnableGroupNotification
# Number of nodes = 16

# Allocations for Adc_EnableGroupNotification
#	?a4		Group
# FUNC(void, ADC_CODE) Adc_DisableGroupNotification
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3673,22
#$$ld
.L875:

#$$bf	Adc_DisableGroupNotification,interprocedural,rasave,nostackparams
	.globl		Adc_DisableGroupNotification
	.d2_cfa_start __cie
Adc_DisableGroupNotification:
.Llo211:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Group=r31 Group=r3
	.d2prologue_end
# (
#     VAR(Adc_GroupType, AUTOMATIC) Group
# )
# {
# #if (ADC_VALIDATE_CALL_AND_GROUP == STD_ON)
#     if ((Std_ReturnType)E_OK == Adc_ValidateCallAndGroup(ADC_DISABLEGROUPNOTIFICATION_ID, Group))
#     {
# #endif /* ADC_VALIDATE_CALL_AND_GROUP == STD_ON */
# 
# #if (ADC_VALIDATE_NOTIFY_CAPABILITY == STD_ON)
#         if ((Std_ReturnType)E_OK == Adc_NotifyCapablity(ADC_DISABLEGROUPNOTIFICATION_ID, Group))
#         {
# #endif /* ADC_VALIDATE_NOTIFY_CAPABILITY == STD_ON */
# 
#             /* Enter critical section to protect against Adc_GroupStatus modifications */
#             SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_01();
	.d2line		3689
	bl		SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_01
#             Adc_aGroupStatus[Group].eNotification = ADC_NOTIFICATION_DISABLED;
	.d2line		3690
.Llo212:
	diab.li		r0,0
	lis		r3,(Adc_aGroupStatus+8)@ha
	e_add16i		r3,r3,(Adc_aGroupStatus+8)@l
.Llo213:
	rlwinm		r31,r31,4,12,27		# Group=r31 Group=r31
.Llo214:
	stwx		r0,r3,r31
#             /* Exit critical section */
#             SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_01();
	.d2line		3692
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_01
# 
# #if (ADC_VALIDATE_NOTIFY_CAPABILITY == STD_ON)
#         }
# #endif /* ADC_VALIDATE_NOTIFY_CAPABILITY == STD_ON */
# 
# #if (ADC_VALIDATE_CALL_AND_GROUP == STD_ON)
#     }
# #endif /* ADC_VALIDATE_CALL_AND_GROUP == STD_ON */
# }
	.d2line		3701
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
.L876:
	.type		Adc_DisableGroupNotification,@function
	.size		Adc_DisableGroupNotification,.-Adc_DisableGroupNotification
# Number of nodes = 16

# Allocations for Adc_DisableGroupNotification
#	?a4		Group
# FUNC(Adc_StatusType, ADC_CODE) Adc_GetGroupStatus
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3724,32
#$$ld
.L881:

#$$bf	Adc_GetGroupStatus,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		Adc_GetGroupStatus
	.d2_cfa_start __cie
Adc_GetGroupStatus:
.Llo215:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Group=r3 Group=r3
	.d2prologue_end
# (
#     VAR(Adc_GroupType, AUTOMATIC) Group
# )
# {
#     VAR(Adc_StatusType, AUTOMATIC) eTempReturn = ADC_IDLE;
	.d2line		3729
	diab.li		r4,0		# eTempReturn=r4
# 
# #if (ADC_VALIDATE_CALL_AND_GROUP == STD_ON)
#     if ((Std_ReturnType)E_OK == Adc_ValidateCallAndGroup(ADC_GETGROUPSTATUS_ID, Group))
#     {
# #endif /* ADC_VALIDATE_CALL_AND_GROUP == STD_ON */
# 
#         eTempReturn = Adc_aGroupStatus[Group].eConversion;
	.d2line		3736
	lis		r4,Adc_aGroupStatus@ha		# eTempReturn=r4
.Llo217:
	e_add16i		r4,r4,Adc_aGroupStatus@l		# eTempReturn=r4 eTempReturn=r4
	rlwinm		r3,r3,4,12,27		# Group=r3 Group=r3
	se_add		r3,r4		# Group=r3 Group=r3 eTempReturn=r4
	lwzx		r3,r0,r3		# Group=r3
.Llo216:
	mr		r3,r3		# eTempReturn=r3 eTempReturn=r3
# 
# #if (ADC_VALIDATE_CALL_AND_GROUP == STD_ON)
#     }
# #endif /* ADC_VALIDATE_CALL_AND_GROUP == STD_ON */
# 
#     return(eTempReturn);
	.d2line		3742
	mr		r3,r3		# eTempReturn=r3 eTempReturn=r3
# }
	.d2line		3743
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo218:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L882:
	.type		Adc_GetGroupStatus,@function
	.size		Adc_GetGroupStatus,.-Adc_GetGroupStatus
# Number of nodes = 15

# Allocations for Adc_GetGroupStatus
#	?a4		Group
#	?a5		eTempReturn
# LOCAL_INLINE FUNC(void, ADC_CODE) Adc_UpdateStatusAfterGetStream
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         3754,35
#$$ld
.L889:

#$$bf	Adc_UpdateStatusAfterGetStream,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
Adc_UpdateStatusAfterGetStream:
.Llo219:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# Group=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Group=r0 Group=r3
	.d2prologue_end
# (
#     VAR(Adc_GroupType, AUTOMATIC) Group
# )
# {
#     /* The following code has been added to respect the State Diagram of Streaming Access Mode */
#     if (ADC_COMPLETED == Adc_aGroupStatus[Group].eConversion)
	.d2line		3760
.Llo220:
	lis		r3,Adc_aGroupStatus@ha
.Llo221:
	e_add16i		r3,r3,Adc_aGroupStatus@l
	rlwinm		r5,r0,4,12,27		# Group=r0
	se_add		r3,r5
	lwzx		r3,r0,r3		# Group=r0
	se_cmpi		r3,2
	bc		0,2,.L658	# ne
#     {
#         Adc_aGroupStatus[Group].ResultIndex = 0U;
	.d2line		3762
	diab.li		r4,0
	lis		r3,(Adc_aGroupStatus+12)@ha
	e_add16i		r3,r3,(Adc_aGroupStatus+12)@l
	rlwinm		r5,r0,4,12,27		# Group=r0
	sthux		r4,r3,r5
#         /* ADC328 -- ADC222*/
#         Adc_aGroupStatus[Group].eConversion = ADC_BUSY;
	.d2line		3764
	diab.li		r4,1
	lis		r3,Adc_aGroupStatus@ha
	e_add16i		r3,r3,Adc_aGroupStatus@l
	stwx		r4,r3,r5
.L658:
#     }
# 
#     /* Compliance with State Diagram */
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#     if (ADC_TRIGG_SRC_SW == Adc_pCfgPtr->pGroups[Group].eTriggerSource)
	.d2line		3769
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r4,4(r3)
	rlwinm		r3,r0,0,16,31		# Group=r0
	e_mulli		r3,r3,92
	se_add		r3,r4
	lwz		r3,20(r3)
	se_cmpi		r3,0
	bc		0,2,.L657	# ne
#     {
#         if (ADC_STREAM_COMPLETED == Adc_aGroupStatus[Group].eConversion)
	.d2line		3771
	lis		r3,Adc_aGroupStatus@ha
	e_add16i		r3,r3,Adc_aGroupStatus@l
	rlwinm		r5,r0,4,12,27		# Group=r0
	se_add		r3,r5
	lwzx		r3,r0,r3		# Group=r0
	se_cmpi		r3,3
	bc		0,2,.L657	# ne
#         {
#             /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#             if((ADC_CONV_MODE_ONESHOT == Adc_pCfgPtr->pGroups[Group].eMode) || \
	.d2line		3774
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r4,4(r3)
	rlwinm		r3,r0,0,16,31		# Group=r0
	e_mulli		r3,r3,92
	se_add		r3,r4
	lwz		r3,8(r3)
	se_cmpi		r3,0
	bc		1,2,.L663	# eq
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r4,4(r3)
	rlwinm		r3,r0,0,16,31		# Group=r0
	e_mulli		r3,r3,92
	se_add		r3,r4
	lwz		r3,8(r3)
	se_cmpi		r3,1
	bc		0,2,.L661	# ne
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r4,4(r3)
	rlwinm		r3,r0,0,16,31		# Group=r0
	e_mulli		r3,r3,92
	se_add		r3,r4
	lwz		r3,4(r3)
	se_cmpi		r3,1
	bc		0,2,.L661	# ne
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r4,4(r3)
	rlwinm		r3,r0,0,16,31		# Group=r0
	e_mulli		r3,r3,92
	se_add		r3,r4
	lwz		r3,68(r3)
	se_cmpi		r3,0
	bc		0,2,.L661	# ne
.L663:
#                ((ADC_CONV_MODE_CONTINUOUS == Adc_pCfgPtr->pGroups[Group].eMode) && \
#                (ADC_ACCESS_MODE_STREAMING == Adc_pCfgPtr->pGroups[Group].eAccessMode) && \
#                (ADC_STREAM_BUFFER_LINEAR == Adc_pCfgPtr->pGroups[Group].eBufferMode))
#               )
#             {
#                 /* ADC327 -- ADC221*/
#                 Adc_aGroupStatus[Group].eConversion = ADC_IDLE;
	.d2line		3781
.Llo222:
	diab.li		r4,0
	lis		r3,Adc_aGroupStatus@ha
	e_add16i		r3,r3,Adc_aGroupStatus@l
.Llo223:
	rlwinm		r0,r0,4,12,27		# Group=r0 Group=r0
.Llo224:
	stwx		r4,r3,r0
	b		.L657
.L661:
#             }
#             else
#             { /* Continuous*/
#                 /* ADC326 -- ADC222*/
#                 Adc_aGroupStatus[Group].eConversion = ADC_BUSY;
	.d2line		3786
	diab.li		r4,1
	lis		r3,Adc_aGroupStatus@ha
	e_add16i		r3,r3,Adc_aGroupStatus@l
.Llo225:
	rlwinm		r0,r0,4,12,27		# Group=r0 Group=r0
.Llo226:
	stwx		r4,r3,r0
.L657:
#             }
#         }
#     }
# #if (STD_ON == ADC_HW_TRIGGER_API)
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#     else if (ADC_TRIGG_SRC_HW == Adc_pCfgPtr->pGroups[Group].eTriggerSource)
#     {
#         /* Hw Trigger*/
#         if (ADC_STREAM_COMPLETED == Adc_aGroupStatus[Group].eConversion)
#         {
#             /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#             if((ADC_ACCESS_MODE_STREAMING == Adc_pCfgPtr->pGroups[Group].eAccessMode) && \
#                (ADC_STREAM_BUFFER_LINEAR == Adc_pCfgPtr->pGroups[Group].eBufferMode)
#               )
#             {
#                 Adc_aGroupStatus[Group].eConversion = ADC_IDLE;
#             }
#             else
#             { /* Simple One-shot mode, in other words in single access mode*/
#                 Adc_aGroupStatus[Group].eConversion = ADC_BUSY;
#             }
#         }
#     }
#     else
#     {
#         /* Nothing for misra */
#     }
# #endif /* (STD_ON == ADC_HW_TRIGGER_API ) */
# }
	.d2line		3815
	.d2epilogue_begin
	lwz		r0,20(r1)		# Group=r0
	mtspr		lr,r0		# Group=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L890:
	.type		Adc_UpdateStatusAfterGetStream,@function
	.size		Adc_UpdateStatusAfterGetStream,.-Adc_UpdateStatusAfterGetStream
# Number of nodes = 133

# Allocations for Adc_UpdateStatusAfterGetStream
#	?a4		Group
# FUNC(Adc_StreamNumSampleType, ADC_CODE) Adc_GetStreamLastPointer
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3844,41
#$$ld
.L895:

#$$bf	Adc_GetStreamLastPointer,interprocedural,rasave,nostackparams
	.globl		Adc_GetStreamLastPointer
	.d2_cfa_start __cie
Adc_GetStreamLastPointer:
.Llo227:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Group=r31 Group=r3
.Llo228:
	mr		r30,r4		# PtrToSamplePtr=r30 PtrToSamplePtr=r4
	.d2prologue_end
# (
#     VAR(Adc_GroupType, AUTOMATIC) Group,
#     P2P2VAR(Adc_ValueGroupType, AUTOMATIC, ADC_APPL_DATA) PtrToSamplePtr
# )
# {
#     /* Number of samples to return */
#     VAR(Adc_StreamNumSampleType, AUTOMATIC) NumberOfResults = 0U;
	.d2line		3851
.Llo229:
	diab.li		r29,0		# NumberOfResults=r29
#     VAR(Adc_StreamNumSampleType, AUTOMATIC) ResultIndex = 0U;
	.d2line		3852
	diab.li		r3,0
# 
# #if (ADC_VALIDATE_CALL_AND_GROUP == STD_ON)
#     if ((Std_ReturnType)E_OK == Adc_ValidateCallAndGroup(ADC_GETSTREAMLASTPOINTER_ID, Group))
#     {
# #endif /* ADC_VALIDATE_CALL_AND_GROUP == STD_ON */
# 
# #if (ADC_VALIDATE_STATE == STD_ON)
#         if ((Std_ReturnType)E_OK == Adc_ValidateStateNotIdle(ADC_GETSTREAMLASTPOINTER_ID, Group))
#         {
# #endif /* ADC_VALIDATE_STATE == STD_ON */
# 
#             *PtrToSamplePtr = (Adc_ValueGroupType *)NULL_PTR;
	.d2line		3864
	stw		r3,0(r30)		# PtrToSamplePtr=r30
# 
#             /* Enter critical region */
#             SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_12();
	.d2line		3867
	bl		SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_12
# 
#             /** @violates @ref Adc_c_REF_4 only Array indexing shall be allowed */
#             if (ADC_IDLE != Adc_aGroupStatus[Group].eConversion)
	.d2line		3870
.Llo231:
	lis		r3,Adc_aGroupStatus@ha
	e_add16i		r3,r3,Adc_aGroupStatus@l
	rlwinm		r4,r31,4,12,27		# Group=r31
	se_add		r3,r4
	lwzx		r0,r0,r3
	se_cmpi		r0,0
	bc		1,2,.L669	# eq
#             {
#                 if (ADC_BUSY != Adc_aGroupStatus[Group].eConversion)
	.d2line		3872
.Llo232:
	lis		r3,Adc_aGroupStatus@ha
	e_add16i		r3,r3,Adc_aGroupStatus@l
	rlwinm		r4,r31,4,12,27		# Group=r31
	se_add		r3,r4
	lwzx		r0,r0,r3
	se_cmpi		r0,1
	bc		1,2,.L669	# eq
#                 {
#                     if ((Adc_StreamNumSampleType)0U == Adc_aGroupStatus[Group].ResultIndex)
	.d2line		3874
	lis		r3,(Adc_aGroupStatus+12)@ha
	e_add16i		r3,r3,(Adc_aGroupStatus+12)@l
	rlwinm		r4,r31,4,12,27		# Group=r31
	se_add		r3,r4
	lhzx		r0,r0,r3
	se_cmpi		r0,0
	bc		0,2,.L671	# ne
#                     {
#                         /** @violates @ref Adc_c_REF_4 only Array indexing shall be allowed */
#                         ResultIndex = Adc_pCfgPtr->pGroups[Group].NumSamples - (Adc_StreamNumSampleType)1U;
	.d2line		3877
.Llo233:
	lis		r3,Adc_pCfgPtr@ha
	lwz		r4,Adc_pCfgPtr@l(r3)
	lwz		r5,4(r4)
	rlwinm		r4,r31,0,16,31		# Group=r31
	e_mulli		r4,r4,92
	se_add		r5,r4
	lhz		r0,72(r5)
	diab.li		r5,65535
	se_add		r0,r5
.Llo238:
	mr		r0,r0		# ResultIndex=r0 ResultIndex=r0
#                         /* ADC387 Note */
#                         /** @violates @ref Adc_c_REF_4 only Array indexing shall be allowed */
#                         NumberOfResults = Adc_pCfgPtr->pGroups[Group].NumSamples;
	.d2line		3880
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r3,4(r3)
	se_add		r4,r3
	lhz		r29,72(r4)		# NumberOfResults=r29
.Llo234:
	mr		r29,r29		# NumberOfResults=r29 NumberOfResults=r29
	b		.L672
.L671:
#                     }
#                     else
#                     {
#                         ResultIndex = Adc_aGroupStatus[Group].ResultIndex - (Adc_StreamNumSampleType)1U;
	.d2line		3884
.Llo235:
	lis		r3,(Adc_aGroupStatus+12)@ha
	e_add16i		r3,r3,(Adc_aGroupStatus+12)@l
	rlwinm		r4,r31,4,12,27		# Group=r31
	se_add		r3,r4
	lhzx		r0,r0,r3
	diab.li		r4,65535
	se_add		r0,r4
.Llo239:
	mr		r0,r0		# ResultIndex=r0 ResultIndex=r0
#                         NumberOfResults = Adc_aGroupStatus[Group].ResultIndex;
	.d2line		3885
	lhzx		r29,r0,r3		# NumberOfResults=r29
.Llo236:
	mr		r29,r29		# NumberOfResults=r29 NumberOfResults=r29
.L672:
#                     }
#        
#                     /* ADC214 -- ADC418 -- ADC382*/
#                     /** @violates @ref Adc_c_REF_10 cast from pointer to pointer */
#                     /** @violates @ref Adc_c_REF_4 only Array indexing shall be allowed */
#                     *PtrToSamplePtr = (Adc_ValueGroupType *)(Adc_pCfgPtr->pGroups[Group].pResultsBufferPtr[Group] + \
	.d2line		3891
.Llo240:
	lis		r3,Adc_pCfgPtr@ha		# Group=r3
	lwz		r3,Adc_pCfgPtr@l(r3)		# Group=r3 Group=r3
	lwz		r4,4(r3)		# Group=r3
	rlwinm		r3,r31,0,16,31		# Group=r3 Group=r31
	e_mulli		r3,r3,92		# Group=r3 Group=r3
	se_add		r3,r4		# Group=r3 Group=r3
	lwz		r3,64(r3)		# Group=r3 Group=r3
	rlwinm		r4,r31,2,14,29		# Group=r31
	lwzx		r3,r3,r4		# Group=r3 Group=r3
.Llo241:
	rlwinm		r0,r0,1,15,30		# ResultIndex=r0 ResultIndex=r0
	se_add		r0,r3		# ResultIndex=r0 ResultIndex=r0 Group=r3
	stw		r0,0(r30)		# PtrToSamplePtr=r30 ResultIndex=r0
#                                                             ResultIndex \
#                                                             );
#                     Adc_UpdateStatusAfterGetStream(Group);
	.d2line		3894
	mr		r3,r31		# Group=r3 Group=r31
	bl		Adc_UpdateStatusAfterGetStream
.L669:
#                 }
#             }
# 
#             /* Exit critical region */
#             SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_12();
	.d2line		3899
.Llo230:
	bl		SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_12
# 
# #if (ADC_VALIDATE_STATE == STD_ON)
#         }
#         else
#         {
#             *PtrToSamplePtr = NULL_PTR;
#         }
# #endif /* ADC_VALIDATE_STATE == STD_ON */
# 
# #if (ADC_VALIDATE_CALL_AND_GROUP == STD_ON)
#     }
#     else
#     {
#         *PtrToSamplePtr = NULL_PTR;
#     }
# #endif /* ADC_VALIDATE_CALL_AND_GROUP == STD_ON */
# 
#     return (NumberOfResults);
	.d2line		3917
	rlwinm		r3,r29,0,16,31		# Group=r3 NumberOfResults=r29
# }
	.d2line		3918
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo237:
	lwz		r0,36(r1)		# ResultIndex=r0
	mtspr		lr,r0		# ResultIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L896:
	.type		Adc_GetStreamLastPointer,@function
	.size		Adc_GetStreamLastPointer,.-Adc_GetStreamLastPointer
# Number of nodes = 137

# Allocations for Adc_GetStreamLastPointer
#	?a4		Group
#	?a5		PtrToSamplePtr
#	?a6		NumberOfResults
#	?a7		ResultIndex
# FUNC(void, ADC_CODE) Adc_GetVersionInfo
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         3939,22
#$$ld
.L908:

#$$bf	Adc_GetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Adc_GetVersionInfo
	.d2_cfa_start __cie
Adc_GetVersionInfo:
.Llo242:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# versionInfo=r4 versionInfo=r3
	.d2prologue_end
# (
#     P2VAR(Std_VersionInfoType , AUTOMATIC, ADC_APPL_DATA) versionInfo
# )
# /** @violates @ref Adc_c_REF_2 The identifiers used in the declaration and definition of a function shall be identical */
# {
# #if (ADC_VALIDATE_PARAMS == STD_ON)
#     if ((Std_ReturnType)E_OK == Adc_ValidatePtr(ADC_GETVERSIONINFO_ID, versionInfo))
#     {
# #endif /* ADC_VALIDATE_PARAMS == STD_ON */
# 
#         (versionInfo)->vendorID = (uint16)ADC_VENDOR_ID;
	.d2line		3950
.Llo243:
	diab.li		r3,43
.Llo244:
	sth		r3,0(r4)		# versionInfo=r4
#         (versionInfo)->moduleID = (uint16)ADC_MODULE_ID;
	.d2line		3951
	diab.li		r3,123
	sth		r3,2(r4)		# versionInfo=r4
#         (versionInfo)->sw_major_version = (uint8)ADC_SW_MAJOR_VERSION;
	.d2line		3952
	diab.li		r3,1
	stb		r3,4(r4)		# versionInfo=r4
#         (versionInfo)->sw_minor_version = (uint8)ADC_SW_MINOR_VERSION;
	.d2line		3953
	diab.li		r3,0
	stb		r3,5(r4)		# versionInfo=r4
#         (versionInfo)->sw_patch_version = (uint8)ADC_SW_PATCH_VERSION;
	.d2line		3954
	diab.li		r3,2
	stb		r3,6(r4)		# versionInfo=r4
# 
# #if (ADC_VALIDATE_PARAMS == STD_ON)
#     }
# #endif /* ADC_VALIDATE_PARAMS == STD_ON */
# }
	.d2line		3959
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo245:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L909:
	.type		Adc_GetVersionInfo,@function
	.size		Adc_GetVersionInfo,.-Adc_GetVersionInfo
# Number of nodes = 28

# Allocations for Adc_GetVersionInfo
#	?a4		versionInfo
# FUNC(void, ADC_CODE) Adc_GetCmrRegister
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         5141,22
#$$ld
.L917:

#$$bf	Adc_GetCmrRegister,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Adc_GetCmrRegister
	.d2_cfa_start __cie
Adc_GetCmrRegister:
.Llo246:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r4		# Group=r4 Group=r4
	mr		r5,r5		# pCMRMask=r5 pCMRMask=r5
	.d2prologue_end
# (
#     VAR(Adc_HwUnitType, AUTOMATIC) Unit,
#     VAR(Adc_GroupType, AUTOMATIC) Group,
#     P2VAR(Adc_NCMRType , AUTOMATIC, ADC_APPL_DATA) pCMRMask
# )
# {
# #if (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON)
#     VAR(Adc_GroupType, AUTOMATIC) Adc_IndividualGroupId;
# #endif /* (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON) */
# #if (ADC_SETCHANNEL_API == STD_ON)
#     VAR(Adc_ChannelType, AUTOMATIC) ChId;
#     VAR(Adc_ChannelIndexType, AUTOMATIC) Ch;
# #endif /* (ADC_SETCHANNEL_API == STD_ON) */
# 
# #if (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON) || (ADC_SETCHANNEL_API == STD_OFF)
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#     P2CONST(Adc_GroupConfigurationType, AUTOMATIC, ADC_APPL_CONST) pGroupPtr =  &(Adc_pCfgPtr->pGroups[Group]);
	.d2line		5158
	lis		r3,Adc_pCfgPtr@ha
	lwz		r3,Adc_pCfgPtr@l(r3)
	lwz		r3,4(r3)
	rlwinm		r4,r4,0,16,31		# Group=r4 Group=r4
	e_mulli		r4,r4,92		# Group=r4 Group=r4
	se_add		r3,r4		# Group=r4
.Llo249:
	mr		r4,r3		# pGroupPtr=r4 pGroupPtr=r3
# #endif /* (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON) || (ADC_SETCHANNEL_API == STD_OFF) */
# 
#     (void)Unit;
# 
#     pCMRMask->Adc_u32NCMR0 = 0UL;
	.d2line		5163
.Llo247:
	diab.li		r3,0
.Llo250:
	stw		r3,0(r5)		# pCMRMask=r5
# #if ((ADC_NCMR1_AVAILABLE == STD_ON) || (ADC_JCMR1_AVAILABLE == STD_ON))
#     pCMRMask->Adc_u32NCMR1 = 0UL;
	.d2line		5165
	stw		r3,4(r5)		# pCMRMask=r5
# #endif
# #if ((ADC_NCMR2_AVAILABLE == STD_ON) || (ADC_JCMR2_AVAILABLE == STD_ON))
#     pCMRMask->Adc_u32NCMR2 = 0UL;
	.d2line		5168
	stw		r3,8(r5)		# pCMRMask=r5
# #endif
#     
#     /* If the Individual group channel enable capability is ON*/
# #if (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON)
#     /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#     Adc_IndividualGroupId = pGroupPtr->EnableChDisableChGroupIndex;
#     if(ADC_ENABLE_CH_DISABLE_CH_INVALID_GROUP_INDEX != Adc_IndividualGroupId)
#     {
#         pCMRMask->Adc_u32NCMR0 = Adc_aNCMRxMask[Adc_IndividualGroupId].Adc_u32NCMR0;
#         pCMRMask->Adc_u32NCMR1 = Adc_aNCMRxMask[Adc_IndividualGroupId].Adc_u32NCMR1;
#         pCMRMask->Adc_u32NCMR2 = Adc_aNCMRxMask[Adc_IndividualGroupId].Adc_u32NCMR2; 
#     }
#     else
# #endif /* (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON) */
#     {
# #if (ADC_SETCHANNEL_API == STD_ON)
#         for(Ch = 0U; Ch < Adc_aRuntimeGroupChannel[Group].ChannelCount; Ch++)
#         {
#             /** @violates @ref Adc_c_REF_4 Array indexing shall be the only allowed form of pointer arithmetic */
#             ChId = Adc_pCfgPtr->pChannels[Unit][Adc_aRuntimeGroupChannel[Group].pChannel[Ch]].ChId;
#             if(ChId < ADC_ST_EXTENDED_CH_U8)
#             {
#                 pCMRMask->Adc_u32NCMR0 |= (1UL << (uint32)ChId);
#             }
#             #if ((ADC_NCMR1_AVAILABLE == STD_ON) || (ADC_JCMR1_AVAILABLE == STD_ON))
#             else if ((ChId >= ADC_ST_EXTENDED_CH_U8) && (ChId <= ADC_ED_EXTENDED_CH_U8))
#             {
#                 pCMRMask->Adc_u32NCMR1 |= (1UL << (uint32)(ChId - ADC_ST_EXTENDED_CH_U8));
#             }
#             #endif
#             #if ((ADC_NCMR2_AVAILABLE == STD_ON) || (ADC_JCMR2_AVAILABLE == STD_ON))
#             else if ((ChId >= ADC_ST_EXTERNAL_CH_U8) && (ChId <= ADC_ED_EXTERNAL_CH_U8))
#             {
#                 pCMRMask->Adc_u32NCMR2 |= (1UL << (uint32)(ChId - ADC_ST_EXTERNAL_CH_U8));
#             }
#             #endif
#             else
#             {
#                 /* do nothing to avoid misra */
#             }
#         }
# #else
#         /* Program the mask registers */
#         pCMRMask->Adc_u32NCMR0 = pGroupPtr->u32PrecisionChannel;
	.d2line		5212
	lwz		r3,28(r4)		# pGroupPtr=r4
	stw		r3,0(r5)		# pCMRMask=r5
#         #if ((ADC_NCMR1_AVAILABLE == STD_ON) || (ADC_JCMR1_AVAILABLE == STD_ON))
#         pCMRMask->Adc_u32NCMR1 = pGroupPtr->u32ExtendedChannel;
	.d2line		5214
	lwz		r3,32(r4)		# pGroupPtr=r4
	stw		r3,4(r5)		# pCMRMask=r5
#         #endif /* ((ADC_NCMR1_AVAILABLE == STD_ON) || (ADC_JCMR1_AVAILABLE == STD_ON)) */
#         #if ((ADC_NCMR2_AVAILABLE == STD_ON) || (ADC_JCMR2_AVAILABLE == STD_ON))
#         pCMRMask->Adc_u32NCMR2 = pGroupPtr->u32ExternalChannel;
	.d2line		5217
	lwz		r3,36(r4)		# pGroupPtr=r4
	stw		r3,8(r5)		# pCMRMask=r5
#         #endif /* ((ADC_NCMR2_AVAILABLE == STD_ON) || (ADC_JCMR2_AVAILABLE == STD_ON)) */
# #endif
#     }
# }
	.d2line		5221
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo248:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L918:
	.type		Adc_GetCmrRegister,@function
	.size		Adc_GetCmrRegister,.-Adc_GetCmrRegister
# Number of nodes = 52

# Allocations for Adc_GetCmrRegister
#	not allocated	Unit
#	?a4		Group
#	?a5		pCMRMask
#	?a6		pGroupPtr

# Allocations for module
	.section	.mcal_bss,,b
	.0byte		.L927
	.section	.mcal_data,,d
	.0byte		.L935
	.section	.mcal_data,,d
	.type		Adc_pCfgPtr,@object
	.size		Adc_pCfgPtr,4
	.align		2
	.globl		Adc_pCfgPtr
Adc_pCfgPtr:
	.long		0
	.section	.mcal_bss,,b
	.0byte		.L937
	.section	.mcal_bss,,b
	.type		Adc_aGroupStatus,@object
	.size		Adc_aGroupStatus,16
	.align		2
	.globl		Adc_aGroupStatus
Adc_aGroupStatus:
	.space		16
	.section	.mcal_bss,,b
	.type		Adc_aUnitStatus,@object
	.size		Adc_aUnitStatus,32
	.align		1
	.globl		Adc_aUnitStatus
Adc_aUnitStatus:
	.space		32
	.data
	.type		bFlag.646,@object
	.size		bFlag.646,1
	.align		0
bFlag.646:
	.byte		1
	.section	.text_vle
#$$ld
.L5:
.L1030:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L947:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Adc_Types.h"
.L936:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc.c"
.L928:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\include\\Adc_Cfg.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L682:
.L690:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc.c"
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
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	33
	.byte		0x0
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
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
	.uleb128	53
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc.c"
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
.L679:
	.4byte		.L680-.L678
.L678:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L684-.L679
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L681
	.4byte		.L682
	.4byte		.L685
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L691:
	.sleb128	2
	.4byte		.L687-.L679
	.byte		"Adc_InitGroupsStatus"
	.byte		0
	.4byte		.L690
	.uleb128	2170
	.uleb128	35
	.byte		0x1
	.4byte		.L688
	.4byte		.L689
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L692:
	.sleb128	3
	.4byte		.L690
	.uleb128	2172
	.uleb128	34
	.byte		"Group"
	.byte		0
	.4byte		.L693
	.4byte		.L696
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L687:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L701:
	.sleb128	2
	.4byte		.L698-.L679
	.byte		"Adc_InitUnitStatus"
	.byte		0
	.4byte		.L690
	.uleb128	2226
	.uleb128	35
	.byte		0x1
	.4byte		.L699
	.4byte		.L700
.L702:
	.sleb128	3
	.4byte		.L690
	.uleb128	2228
	.uleb128	36
	.byte		"Unit"
	.byte		0
	.4byte		.L703
	.4byte		.L706
.L707:
	.sleb128	3
	.4byte		.L690
	.uleb128	2229
	.uleb128	40
	.byte		"QueueIdx"
	.byte		0
	.4byte		.L708
	.4byte		.L709
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L698:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L716:
	.sleb128	4
	.4byte		.L712-.L679
	.byte		"Adc_CheckConversionValuesInRange"
	.byte		0
	.4byte		.L690
	.uleb128	2277
	.uleb128	25
	.4byte		.L715
	.byte		0x1
	.byte		0x1
	.4byte		.L713
	.4byte		.L714
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	5
	.4byte		.L690
	.uleb128	2277
	.uleb128	25
	.byte		"Value"
	.byte		0
	.4byte		.L717
	.4byte		.L718
	.sleb128	5
	.4byte		.L690
	.uleb128	2277
	.uleb128	25
	.byte		"Unit"
	.byte		0
	.4byte		.L703
	.4byte		.L719
	.sleb128	5
	.4byte		.L690
	.uleb128	2277
	.uleb128	25
	.byte		"Index"
	.byte		0
	.4byte		.L720
	.4byte		.L721
.L722:
	.sleb128	3
	.4byte		.L690
	.uleb128	2284
	.uleb128	29
	.byte		"bValInRange"
	.byte		0
	.4byte		.L715
	.4byte		.L723
.L724:
	.sleb128	3
	.4byte		.L690
	.uleb128	2285
	.uleb128	48
	.byte		"eChRange"
	.byte		0
	.4byte		.L725
	.4byte		.L727
.L728:
	.sleb128	3
	.4byte		.L690
	.uleb128	2286
	.uleb128	40
	.byte		"LowLimit"
	.byte		0
	.4byte		.L717
	.4byte		.L729
.L730:
	.sleb128	3
	.4byte		.L690
	.uleb128	2287
	.uleb128	40
	.byte		"HighLimit"
	.byte		0
	.4byte		.L717
	.4byte		.L731
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L712:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L737:
	.sleb128	6
	.4byte		.L734-.L679
	.byte		"Adc_RemoveFromQueue"
	.byte		0
	.4byte		.L690
	.uleb128	2381
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L735
	.4byte		.L736
	.sleb128	5
	.4byte		.L690
	.uleb128	2381
	.uleb128	22
	.byte		"Unit"
	.byte		0
	.4byte		.L738
	.4byte		.L739
	.sleb128	5
	.4byte		.L690
	.uleb128	2381
	.uleb128	22
	.byte		"CurQueueIndex"
	.byte		0
	.4byte		.L740
	.4byte		.L741
.L742:
	.sleb128	3
	.4byte		.L690
	.uleb128	2387
	.uleb128	40
	.byte		"PositionIndex"
	.byte		0
	.4byte		.L708
	.4byte		.L743
.L744:
	.sleb128	3
	.4byte		.L690
	.uleb128	2388
	.uleb128	40
	.byte		"CurrentIndex"
	.byte		0
	.4byte		.L708
	.4byte		.L745
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L734:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L750:
	.sleb128	2
	.4byte		.L747-.L679
	.byte		"Adc_UpdateStatusStartConversion"
	.byte		0
	.4byte		.L690
	.uleb128	2482
	.uleb128	35
	.byte		0x1
	.4byte		.L748
	.4byte		.L749
	.sleb128	5
	.4byte		.L690
	.uleb128	2482
	.uleb128	35
	.byte		"Group"
	.byte		0
	.4byte		.L751
	.4byte		.L752
	.sleb128	5
	.4byte		.L690
	.uleb128	2482
	.uleb128	35
	.byte		"Unit"
	.byte		0
	.4byte		.L738
	.4byte		.L753
.L754:
	.sleb128	3
	.4byte		.L690
	.uleb128	2490
	.uleb128	40
	.byte		"qPtr"
	.byte		0
	.4byte		.L708
	.4byte		.L755
.L756:
	.sleb128	3
	.4byte		.L690
	.uleb128	2491
	.uleb128	40
	.byte		"SwNormalQueueIndex"
	.byte		0
	.4byte		.L708
	.4byte		.L757
.L758:
	.sleb128	3
	.4byte		.L690
	.uleb128	2493
	.uleb128	36
	.byte		"DemTest"
	.byte		0
	.4byte		.L759
	.4byte		.L760
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L747:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L765:
	.sleb128	2
	.4byte		.L762-.L679
	.byte		"Adc_UpdateStatusStopConversion"
	.byte		0
	.4byte		.L690
	.uleb128	2595
	.uleb128	35
	.byte		0x1
	.4byte		.L763
	.4byte		.L764
	.sleb128	5
	.4byte		.L690
	.uleb128	2595
	.uleb128	35
	.byte		"Group"
	.byte		0
	.4byte		.L693
	.4byte		.L766
	.sleb128	5
	.4byte		.L690
	.uleb128	2595
	.uleb128	35
	.byte		"Unit"
	.byte		0
	.4byte		.L703
	.4byte		.L767
.L768:
	.sleb128	3
	.4byte		.L690
	.uleb128	2602
	.uleb128	40
	.byte		"SwNormalQueueIndex"
	.byte		0
	.4byte		.L708
	.4byte		.L769
.L770:
	.sleb128	3
	.4byte		.L690
	.uleb128	2603
	.uleb128	40
	.byte		"RemovedPos"
	.byte		0
	.4byte		.L708
	.4byte		.L771
.L772:
	.sleb128	3
	.4byte		.L690
	.uleb128	2605
	.uleb128	36
	.byte		"DemTest"
	.byte		0
	.4byte		.L759
	.4byte		.L773
.L774:
	.sleb128	3
	.4byte		.L690
	.uleb128	2606
	.uleb128	43
	.byte		"eMode"
	.byte		0
	.4byte		.L775
	.4byte		.L777
.L778:
	.sleb128	3
	.4byte		.L690
	.uleb128	2607
	.uleb128	45
	.byte		"eAccessMode"
	.byte		0
	.4byte		.L779
	.4byte		.L781
.L782:
	.sleb128	3
	.4byte		.L690
	.uleb128	2608
	.uleb128	46
	.byte		"eBufferMode"
	.byte		0
	.4byte		.L783
	.4byte		.L785
.L786:
	.sleb128	3
	.4byte		.L690
	.uleb128	2609
	.uleb128	36
	.byte		"eConversion"
	.byte		0
	.4byte		.L787
	.4byte		.L789
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L762:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L794:
	.sleb128	2
	.4byte		.L791-.L679
	.byte		"Adc_UpdateStatusReadGroupNoInt"
	.byte		0
	.4byte		.L690
	.uleb128	2744
	.uleb128	35
	.byte		0x1
	.4byte		.L792
	.4byte		.L793
	.sleb128	5
	.4byte		.L690
	.uleb128	2744
	.uleb128	35
	.byte		"Group"
	.byte		0
	.4byte		.L751
	.4byte		.L795
	.sleb128	5
	.4byte		.L690
	.uleb128	2744
	.uleb128	35
	.byte		"bFlag"
	.byte		0
	.4byte		.L796
	.4byte		.L797
.L798:
	.sleb128	3
	.4byte		.L690
	.uleb128	2751
	.uleb128	36
	.byte		"Unit"
	.byte		0
	.4byte		.L703
	.4byte		.L799
.L800:
	.sleb128	3
	.4byte		.L690
	.uleb128	2753
	.uleb128	40
	.byte		"SwNormalQueueIndex"
	.byte		0
	.4byte		.L708
	.4byte		.L801
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L791:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L806:
	.sleb128	2
	.4byte		.L803-.L679
	.byte		"Adc_UpdateStatusReadGroupInt"
	.byte		0
	.4byte		.L690
	.uleb128	2859
	.uleb128	35
	.byte		0x1
	.4byte		.L804
	.4byte		.L805
	.sleb128	5
	.4byte		.L690
	.uleb128	2859
	.uleb128	35
	.byte		"Group"
	.byte		0
	.4byte		.L751
	.4byte		.L807
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L803:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L812:
	.sleb128	6
	.4byte		.L809-.L679
	.byte		"Adc_Init"
	.byte		0
	.4byte		.L690
	.uleb128	3050
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L810
	.4byte		.L811
	.sleb128	5
	.4byte		.L690
	.uleb128	3050
	.uleb128	22
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L813
	.4byte		.L817
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L809:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L822:
	.sleb128	4
	.4byte		.L819-.L679
	.byte		"Adc_SetupResultBuffer"
	.byte		0
	.4byte		.L690
	.uleb128	3128
	.uleb128	32
	.4byte		.L759
	.byte		0x1
	.byte		0x1
	.4byte		.L820
	.4byte		.L821
	.sleb128	5
	.4byte		.L690
	.uleb128	3128
	.uleb128	32
	.byte		"Group"
	.byte		0
	.4byte		.L693
	.4byte		.L823
	.sleb128	5
	.4byte		.L690
	.uleb128	3128
	.uleb128	32
	.byte		"DataBufferPtr"
	.byte		0
	.4byte		.L824
	.4byte		.L825
.L826:
	.sleb128	3
	.4byte		.L690
	.uleb128	3134
	.uleb128	36
	.byte		"TempReturn"
	.byte		0
	.4byte		.L759
	.4byte		.L827
.L828:
	.sleb128	3
	.4byte		.L690
	.uleb128	3135
	.uleb128	68
	.byte		"pGroupPtr"
	.byte		0
	.4byte		.L829
	.4byte		.L833
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L819:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L838:
	.sleb128	6
	.4byte		.L835-.L679
	.byte		"Adc_DeInit"
	.byte		0
	.4byte		.L690
	.uleb128	3193
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L836
	.4byte		.L837
.L839:
	.sleb128	3
	.4byte		.L690
	.uleb128	3195
	.uleb128	34
	.byte		"Group"
	.byte		0
	.4byte		.L693
	.4byte		.L840
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L835:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L845:
	.sleb128	6
	.4byte		.L842-.L679
	.byte		"Adc_StartGroupConversion"
	.byte		0
	.4byte		.L690
	.uleb128	3262
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L843
	.4byte		.L844
	.sleb128	5
	.4byte		.L690
	.uleb128	3262
	.uleb128	22
	.byte		"Group"
	.byte		0
	.4byte		.L693
	.4byte		.L846
.L847:
	.sleb128	3
	.4byte		.L690
	.uleb128	3268
	.uleb128	36
	.byte		"Unit"
	.byte		0
	.4byte		.L703
	.4byte		.L848
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L842:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L853:
	.sleb128	6
	.4byte		.L850-.L679
	.byte		"Adc_StopGroupConversion"
	.byte		0
	.4byte		.L690
	.uleb128	3330
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L851
	.4byte		.L852
	.sleb128	5
	.4byte		.L690
	.uleb128	3330
	.uleb128	22
	.byte		"Group"
	.byte		0
	.4byte		.L693
	.4byte		.L854
.L855:
	.sleb128	3
	.4byte		.L690
	.uleb128	3336
	.uleb128	36
	.byte		"Unit"
	.byte		0
	.4byte		.L703
	.4byte		.L856
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L850:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L861:
	.sleb128	4
	.4byte		.L858-.L679
	.byte		"Adc_ReadGroup"
	.byte		0
	.4byte		.L690
	.uleb128	3407
	.uleb128	32
	.4byte		.L759
	.byte		0x1
	.byte		0x1
	.4byte		.L859
	.4byte		.L860
	.sleb128	5
	.4byte		.L690
	.uleb128	3407
	.uleb128	32
	.byte		"Group"
	.byte		0
	.4byte		.L693
	.4byte		.L862
	.sleb128	5
	.4byte		.L690
	.uleb128	3407
	.uleb128	32
	.byte		"DataBufferPtr"
	.byte		0
	.4byte		.L824
	.4byte		.L863
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L864:
	.sleb128	7
	.4byte		.L690
	.uleb128	3415
	.uleb128	36
	.byte		"bFlag"
	.byte		0
	.4byte		.L705
	.sleb128	5
	.byte		0x3
	.4byte		bFlag.646
.L865:
	.sleb128	3
	.4byte		.L690
	.uleb128	3414
	.uleb128	36
	.byte		"GroupRet"
	.byte		0
	.4byte		.L759
	.4byte		.L866
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L858:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L871:
	.sleb128	6
	.4byte		.L868-.L679
	.byte		"Adc_EnableGroupNotification"
	.byte		0
	.4byte		.L690
	.uleb128	3623
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L869
	.4byte		.L870
	.sleb128	5
	.4byte		.L690
	.uleb128	3623
	.uleb128	22
	.byte		"Group"
	.byte		0
	.4byte		.L693
	.4byte		.L872
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L868:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L877:
	.sleb128	6
	.4byte		.L874-.L679
	.byte		"Adc_DisableGroupNotification"
	.byte		0
	.4byte		.L690
	.uleb128	3673
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L875
	.4byte		.L876
	.sleb128	5
	.4byte		.L690
	.uleb128	3673
	.uleb128	22
	.byte		"Group"
	.byte		0
	.4byte		.L693
	.4byte		.L878
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L874:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L883:
	.sleb128	4
	.4byte		.L880-.L679
	.byte		"Adc_GetGroupStatus"
	.byte		0
	.4byte		.L690
	.uleb128	3724
	.uleb128	32
	.4byte		.L787
	.byte		0x1
	.byte		0x1
	.4byte		.L881
	.4byte		.L882
	.sleb128	5
	.4byte		.L690
	.uleb128	3724
	.uleb128	32
	.byte		"Group"
	.byte		0
	.4byte		.L693
	.4byte		.L884
.L885:
	.sleb128	3
	.4byte		.L690
	.uleb128	3729
	.uleb128	36
	.byte		"eTempReturn"
	.byte		0
	.4byte		.L787
	.4byte		.L886
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L880:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L891:
	.sleb128	2
	.4byte		.L888-.L679
	.byte		"Adc_UpdateStatusAfterGetStream"
	.byte		0
	.4byte		.L690
	.uleb128	3754
	.uleb128	35
	.byte		0x1
	.4byte		.L889
	.4byte		.L890
	.sleb128	5
	.4byte		.L690
	.uleb128	3754
	.uleb128	35
	.byte		"Group"
	.byte		0
	.4byte		.L693
	.4byte		.L892
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L888:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L898:
	.sleb128	4
	.4byte		.L894-.L679
	.byte		"Adc_GetStreamLastPointer"
	.byte		0
	.4byte		.L690
	.uleb128	3844
	.uleb128	41
	.4byte		.L897
	.byte		0x1
	.byte		0x1
	.4byte		.L895
	.4byte		.L896
	.sleb128	5
	.4byte		.L690
	.uleb128	3844
	.uleb128	41
	.byte		"Group"
	.byte		0
	.4byte		.L693
	.4byte		.L899
	.sleb128	5
	.4byte		.L690
	.uleb128	3844
	.uleb128	41
	.byte		"PtrToSamplePtr"
	.byte		0
	.4byte		.L900
	.4byte		.L901
.L902:
	.sleb128	3
	.4byte		.L690
	.uleb128	3851
	.uleb128	45
	.byte		"NumberOfResults"
	.byte		0
	.4byte		.L897
	.4byte		.L903
.L904:
	.sleb128	3
	.4byte		.L690
	.uleb128	3852
	.uleb128	45
	.byte		"ResultIndex"
	.byte		0
	.4byte		.L897
	.4byte		.L905
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L894:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L910:
	.sleb128	6
	.4byte		.L907-.L679
	.byte		"Adc_GetVersionInfo"
	.byte		0
	.4byte		.L690
	.uleb128	3939
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L908
	.4byte		.L909
	.sleb128	5
	.4byte		.L690
	.uleb128	3939
	.uleb128	22
	.byte		"versionInfo"
	.byte		0
	.4byte		.L911
	.4byte		.L914
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L907:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L919:
	.sleb128	6
	.4byte		.L916-.L679
	.byte		"Adc_GetCmrRegister"
	.byte		0
	.4byte		.L690
	.uleb128	5141
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L917
	.4byte		.L918
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	8
	.4byte		.L690
	.uleb128	5141
	.uleb128	22
	.byte		"Unit"
	.byte		0
	.4byte		.L703
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	5
	.4byte		.L690
	.uleb128	5141
	.uleb128	22
	.byte		"Group"
	.byte		0
	.4byte		.L693
	.4byte		.L920
	.sleb128	5
	.4byte		.L690
	.uleb128	5141
	.uleb128	22
	.byte		"pCMRMask"
	.byte		0
	.4byte		.L921
	.4byte		.L924
.L925:
	.sleb128	3
	.4byte		.L690
	.uleb128	5158
	.uleb128	68
	.byte		"pGroupPtr"
	.byte		0
	.4byte		.L829
	.4byte		.L926
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L916:
	.section	.debug_info,,n
.L927:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L928
	.uleb128	256
	.uleb128	78
	.byte		"Adc_ChannelsLimitCheckingCfg"
	.byte		0
	.4byte		.L929
	.section	.debug_info,,n
	.section	.debug_info,,n
.L935:
	.sleb128	10
	.byte		0x1
	.4byte		.L936
	.uleb128	214
	.uleb128	50
	.byte		"Adc_pCfgPtr"
	.byte		0
	.4byte		.L813
	.sleb128	5
	.byte		0x3
	.4byte		Adc_pCfgPtr
	.section	.debug_info,,n
	.section	.debug_info,,n
.L937:
	.sleb128	10
	.byte		0x1
	.4byte		.L936
	.uleb128	251
	.uleb128	35
	.byte		"Adc_aGroupStatus"
	.byte		0
	.4byte		.L938
	.sleb128	5
	.byte		0x3
	.4byte		Adc_aGroupStatus
	.section	.debug_info,,n
	.section	.debug_info,,n
.L942:
	.sleb128	10
	.byte		0x1
	.4byte		.L936
	.uleb128	259
	.uleb128	34
	.byte		"Adc_aUnitStatus"
	.byte		0
	.4byte		.L943
	.sleb128	5
	.byte		0x3
	.4byte		Adc_aUnitStatus
	.section	.debug_info,,n
.L816:
	.sleb128	11
	.4byte		.L947
	.uleb128	369
	.uleb128	1
	.4byte		.L948-.L2
	.uleb128	44
	.section	.debug_info,,n
.L512:
	.sleb128	12
	.byte		"pAdc"
	.byte		0
	.4byte		.L949
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L513:
	.sleb128	12
	.byte		"pGroups"
	.byte		0
	.4byte		.L829
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L514:
	.sleb128	12
	.byte		"pChannels"
	.byte		0
	.4byte		.L953
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L515:
	.sleb128	12
	.byte		"GroupCount"
	.byte		0
	.4byte		.L693
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L516:
	.sleb128	12
	.byte		"Misc"
	.byte		0
	.4byte		.L958
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L948:
.L960:
	.sleb128	11
	.4byte		.L947
	.uleb128	369
	.uleb128	1
	.4byte		.L961-.L2
	.uleb128	30
.L480:
	.sleb128	12
	.byte		"u8Adc_DmaInterruptSoftware"
	.byte		0
	.4byte		.L962
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L481:
	.sleb128	12
	.byte		"Adc_MaxHwCfg"
	.byte		0
	.4byte		.L738
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L482:
	.sleb128	12
	.byte		"aAdc_Groups"
	.byte		0
	.4byte		.L965
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L483:
	.sleb128	12
	.byte		"aAdc_Channels"
	.byte		0
	.4byte		.L967
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L484:
	.sleb128	12
	.byte		"au8Adc_DmaChannel"
	.byte		0
	.4byte		.L970
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L485:
	.sleb128	12
	.byte		"au8Adc_HwUnit"
	.byte		0
	.4byte		.L972
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L486:
	.sleb128	12
	.byte		"aHwLogicalId"
	.byte		0
	.4byte		.L974
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
	.sleb128	0
.L961:
.L832:
	.sleb128	11
	.4byte		.L947
	.uleb128	369
	.uleb128	1
	.4byte		.L976-.L2
	.uleb128	92
.L453:
	.sleb128	12
	.byte		"HwUnit"
	.byte		0
	.4byte		.L738
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L454:
	.sleb128	12
	.byte		"eAccessMode"
	.byte		0
	.4byte		.L977
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L455:
	.sleb128	12
	.byte		"eMode"
	.byte		0
	.4byte		.L978
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L456:
	.sleb128	12
	.byte		"eType"
	.byte		0
	.4byte		.L979
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L457:
	.sleb128	12
	.byte		"eReplecementMode"
	.byte		0
	.4byte		.L982
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L458:
	.sleb128	12
	.byte		"eTriggerSource"
	.byte		0
	.4byte		.L985
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L459:
	.sleb128	12
	.byte		"Notification"
	.byte		0
	.4byte		.L988
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L460:
	.sleb128	12
	.byte		"u32PrecisionChannel"
	.byte		0
	.4byte		.L993
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L461:
	.sleb128	12
	.byte		"u32ExtendedChannel"
	.byte		0
	.4byte		.L993
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L462:
	.sleb128	12
	.byte		"u32ExternalChannel"
	.byte		0
	.4byte		.L993
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L463:
	.sleb128	12
	.byte		"u32PrecisionPsr"
	.byte		0
	.4byte		.L993
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L464:
	.sleb128	12
	.byte		"u32ExtendedPsr"
	.byte		0
	.4byte		.L993
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L465:
	.sleb128	12
	.byte		"u32ExternalPsr"
	.byte		0
	.4byte		.L993
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L466:
	.sleb128	12
	.byte		"u32Wer0"
	.byte		0
	.4byte		.L993
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L467:
	.sleb128	12
	.byte		"u32Wer1"
	.byte		0
	.4byte		.L993
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L468:
	.sleb128	12
	.byte		"u32Wer2"
	.byte		0
	.4byte		.L993
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L469:
	.sleb128	12
	.byte		"pResultsBufferPtr"
	.byte		0
	.4byte		.L900
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L470:
	.sleb128	12
	.byte		"eBufferMode"
	.byte		0
	.4byte		.L996
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L471:
	.sleb128	12
	.byte		"NumSamples"
	.byte		0
	.4byte		.L997
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L472:
	.sleb128	12
	.byte		"pAssignment"
	.byte		0
	.4byte		.L998
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L473:
	.sleb128	12
	.byte		"AssignedChannelCount"
	.byte		0
	.4byte		.L1001
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L474:
	.sleb128	12
	.byte		"ConvTime"
	.byte		0
	.4byte		.L1003
	.sleb128	2
	.byte		0x23
	.uleb128	82
	.byte		0x1
.L475:
	.sleb128	12
	.byte		"ConvTime1"
	.byte		0
	.4byte		.L1003
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L476:
	.sleb128	12
	.byte		"ConvTime2"
	.byte		0
	.4byte		.L1003
	.sleb128	2
	.byte		0x23
	.uleb128	86
	.byte		0x1
.L477:
	.sleb128	12
	.byte		"LastCh"
	.byte		0
	.4byte		.L969
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L478:
	.sleb128	12
	.byte		"FirstCh"
	.byte		0
	.4byte		.L969
	.sleb128	2
	.byte		0x23
	.uleb128	89
	.byte		0x1
.L479:
	.sleb128	12
	.byte		"u8AdcWithoutInterrupt"
	.byte		0
	.4byte		.L964
	.sleb128	2
	.byte		0x23
	.uleb128	90
	.byte		0x1
	.sleb128	0
.L976:
.L952:
	.sleb128	11
	.4byte		.L947
	.uleb128	369
	.uleb128	1
	.4byte		.L1005-.L2
	.uleb128	36
.L437:
	.sleb128	12
	.byte		"AdcHardwareUnitId"
	.byte		0
	.4byte		.L738
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L438:
	.sleb128	12
	.byte		"u32AdcMainConfig"
	.byte		0
	.4byte		.L993
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L439:
	.sleb128	12
	.byte		"u32AdcPrescale"
	.byte		0
	.4byte		.L993
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L440:
	.sleb128	12
	.byte		"u8AdcPwrDownDelay"
	.byte		0
	.4byte		.L964
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L441:
	.sleb128	12
	.byte		"u16AdcMuxDelay"
	.byte		0
	.4byte		.L1006
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L442:
	.sleb128	12
	.byte		"u8PreVal0"
	.byte		0
	.4byte		.L964
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L443:
	.sleb128	12
	.byte		"u8PreVal1"
	.byte		0
	.4byte		.L964
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L444:
	.sleb128	12
	.byte		"u8PreVal2"
	.byte		0
	.4byte		.L964
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L445:
	.sleb128	12
	.byte		"u8PreConv"
	.byte		0
	.4byte		.L964
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L446:
	.sleb128	12
	.byte		"ConvTimeNormal"
	.byte		0
	.4byte		.L1003
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L447:
	.sleb128	12
	.byte		"ConvTimeAlternate"
	.byte		0
	.4byte		.L1003
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L448:
	.sleb128	12
	.byte		"ConvTimeNormal1"
	.byte		0
	.4byte		.L1003
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L449:
	.sleb128	12
	.byte		"ConvTimeAlternate1"
	.byte		0
	.4byte		.L1003
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L450:
	.sleb128	12
	.byte		"ConvTimeNormal2"
	.byte		0
	.4byte		.L1003
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L451:
	.sleb128	12
	.byte		"ConvTimeAlternate2"
	.byte		0
	.4byte		.L1003
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L452:
	.sleb128	12
	.byte		"Res"
	.byte		0
	.4byte		.L1007
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L1005:
.L934:
	.sleb128	11
	.4byte		.L947
	.uleb128	369
	.uleb128	1
	.4byte		.L1009-.L2
	.uleb128	12
.L433:
	.sleb128	12
	.byte		"bChannelLimitCheck"
	.byte		0
	.4byte		.L796
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	12
	.byte		"eChannelRange"
	.byte		0
	.4byte		.L1010
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	12
	.byte		"ChannelHighLimit"
	.byte		0
	.4byte		.L1011
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	12
	.byte		"ChannelLowLimit"
	.byte		0
	.4byte		.L1011
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L1009:
.L957:
	.sleb128	11
	.4byte		.L947
	.uleb128	369
	.uleb128	1
	.4byte		.L1012-.L2
	.uleb128	2
.L431:
	.sleb128	12
	.byte		"ChId"
	.byte		0
	.4byte		.L969
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L432:
	.sleb128	12
	.byte		"u8EnablePresampling"
	.byte		0
	.4byte		.L964
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L1012:
.L923:
	.sleb128	11
	.4byte		.L947
	.uleb128	369
	.uleb128	1
	.4byte		.L1013-.L2
	.uleb128	12
.L428:
	.sleb128	12
	.byte		"Adc_u32NCMR0"
	.byte		0
	.4byte		.L994
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L429:
	.sleb128	12
	.byte		"Adc_u32NCMR1"
	.byte		0
	.4byte		.L994
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L430:
	.sleb128	12
	.byte		"Adc_u32NCMR2"
	.byte		0
	.4byte		.L994
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L1013:
.L946:
	.sleb128	11
	.4byte		.L947
	.uleb128	369
	.uleb128	1
	.4byte		.L1014-.L2
	.uleb128	8
.L424:
	.sleb128	12
	.byte		"SwNormalQueueIndex"
	.byte		0
	.4byte		.L1015
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L425:
	.sleb128	12
	.byte		"SwNormalQueue"
	.byte		0
	.4byte		.L1016
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L426:
	.sleb128	12
	.byte		"SwInjectedQueue"
	.byte		0
	.4byte		.L1019
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L427:
	.sleb128	12
	.byte		"SwInjectedQueueIndex"
	.byte		0
	.4byte		.L1015
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L1014:
.L941:
	.sleb128	11
	.4byte		.L947
	.uleb128	369
	.uleb128	1
	.4byte		.L1021-.L2
	.uleb128	16
.L419:
	.sleb128	12
	.byte		"eConversion"
	.byte		0
	.4byte		.L1022
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L420:
	.sleb128	12
	.byte		"eAlreadyConverted"
	.byte		0
	.4byte		.L1023
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L421:
	.sleb128	12
	.byte		"eNotification"
	.byte		0
	.4byte		.L1026
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L422:
	.sleb128	12
	.byte		"ResultIndex"
	.byte		0
	.4byte		.L1028
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L423:
	.sleb128	12
	.byte		"bLimitCheckFailed"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L1021:
.L913:
	.sleb128	11
	.4byte		.L1030
	.uleb128	9034
	.uleb128	5
	.4byte		.L1031-.L2
	.uleb128	8
.L243:
	.sleb128	12
	.byte		"vendorID"
	.byte		0
	.4byte		.L694
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L244:
	.sleb128	12
	.byte		"moduleID"
	.byte		0
	.4byte		.L694
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L245:
	.sleb128	12
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L704
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L246:
	.sleb128	12
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L704
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L247:
	.sleb128	12
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L704
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L1031:
	.section	.debug_info,,n
.L726:
	.sleb128	13
	.4byte		.L947
	.uleb128	369
	.uleb128	1
	.4byte		.L1032-.L2
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
.L1032:
.L987:
	.sleb128	13
	.4byte		.L947
	.uleb128	315
	.uleb128	1
	.4byte		.L1033-.L2
	.uleb128	4
	.sleb128	14
	.byte		"ADC_TRIGG_SRC_SW"
	.byte		0
	.sleb128	0
	.sleb128	0
.L1033:
.L1027:
	.sleb128	13
	.4byte		.L947
	.uleb128	292
	.uleb128	1
	.4byte		.L1034-.L2
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
.L1034:
.L788:
	.sleb128	13
	.4byte		.L947
	.uleb128	279
	.uleb128	1
	.4byte		.L1035-.L2
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
.L1035:
.L784:
	.sleb128	13
	.4byte		.L947
	.uleb128	268
	.uleb128	1
	.4byte		.L1036-.L2
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
.L1036:
.L984:
	.sleb128	13
	.4byte		.L947
	.uleb128	257
	.uleb128	1
	.4byte		.L1037-.L2
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
.L1037:
.L776:
	.sleb128	13
	.4byte		.L947
	.uleb128	246
	.uleb128	1
	.4byte		.L1038-.L2
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
.L1038:
.L981:
	.sleb128	13
	.4byte		.L947
	.uleb128	235
	.uleb128	1
	.4byte		.L1039-.L2
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
.L1039:
.L780:
	.sleb128	13
	.4byte		.L947
	.uleb128	224
	.uleb128	1
	.4byte		.L1040-.L2
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
.L1040:
.L1025:
	.sleb128	13
	.4byte		.L947
	.uleb128	213
	.uleb128	1
	.4byte		.L1041-.L2
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
.L1041:
	.section	.debug_info,,n
.L695:
	.sleb128	15
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L694:
	.sleb128	16
	.byte		"uint16"
	.byte		0
	.4byte		.L695
.L693:
	.sleb128	16
	.byte		"Adc_GroupType"
	.byte		0
	.4byte		.L694
.L705:
	.sleb128	15
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L704:
	.sleb128	16
	.byte		"uint8"
	.byte		0
	.4byte		.L705
.L703:
	.sleb128	16
	.byte		"Adc_HwUnitType"
	.byte		0
	.4byte		.L704
.L708:
	.sleb128	16
	.byte		"Adc_QueueIndexType"
	.byte		0
	.4byte		.L694
.L715:
	.sleb128	16
	.byte		"boolean"
	.byte		0
	.4byte		.L705
.L717:
	.sleb128	16
	.byte		"Adc_ValueGroupType"
	.byte		0
	.4byte		.L694
.L720:
	.sleb128	16
	.byte		"Adc_ChannelType"
	.byte		0
	.4byte		.L704
.L725:
	.sleb128	16
	.byte		"Adc_ChannelRangeSelectType"
	.byte		0
	.4byte		.L726
	.section	.debug_info,,n
.L738:
	.sleb128	17
	.4byte		.L703
.L740:
	.sleb128	17
	.4byte		.L708
.L751:
	.sleb128	17
	.4byte		.L693
.L759:
	.sleb128	16
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L704
.L775:
	.sleb128	16
	.byte		"Adc_GroupConvModeType"
	.byte		0
	.4byte		.L776
.L779:
	.sleb128	16
	.byte		"Adc_GroupAccessModeType"
	.byte		0
	.4byte		.L780
.L783:
	.sleb128	16
	.byte		"Adc_StreamBufferModeType"
	.byte		0
	.4byte		.L784
.L787:
	.sleb128	16
	.byte		"Adc_StatusType"
	.byte		0
	.4byte		.L788
.L796:
	.sleb128	17
	.4byte		.L715
.L815:
	.sleb128	16
	.byte		"Adc_ConfigType"
	.byte		0
	.4byte		.L816
.L814:
	.sleb128	17
	.4byte		.L815
	.section	.debug_info,,n
.L813:
	.sleb128	18
	.4byte		.L814
.L824:
	.sleb128	18
	.4byte		.L717
.L831:
	.sleb128	16
	.byte		"Adc_GroupConfigurationType"
	.byte		0
	.4byte		.L832
.L830:
	.sleb128	17
	.4byte		.L831
.L829:
	.sleb128	18
	.4byte		.L830
.L897:
	.sleb128	16
	.byte		"Adc_StreamNumSampleType"
	.byte		0
	.4byte		.L694
.L900:
	.sleb128	18
	.4byte		.L824
.L912:
	.sleb128	16
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L913
.L911:
	.sleb128	18
	.4byte		.L912
.L922:
	.sleb128	16
	.byte		"Adc_NCMRType"
	.byte		0
	.4byte		.L923
.L921:
	.sleb128	18
	.4byte		.L922
.L933:
	.sleb128	16
	.byte		"Adc_Adcdig_ChannelLimitCheckingType"
	.byte		0
	.4byte		.L934
.L932:
	.sleb128	17
	.4byte		.L933
.L931:
	.sleb128	18
	.4byte		.L932
	.section	.debug_info,,n
.L929:
	.sleb128	19
	.4byte		.L930-.L2
	.4byte		.L931
	.section	.debug_info,,n
	.sleb128	20
	.sleb128	0
.L930:
.L940:
	.sleb128	16
	.byte		"Adc_GroupStatusType"
	.byte		0
	.4byte		.L941
.L938:
	.sleb128	19
	.4byte		.L939-.L2
	.4byte		.L940
	.section	.debug_info,,n
	.sleb128	21
	.uleb128	0
	.sleb128	0
.L939:
.L945:
	.sleb128	16
	.byte		"Adc_UnitStatusType"
	.byte		0
	.4byte		.L946
.L943:
	.sleb128	19
	.4byte		.L944-.L2
	.4byte		.L945
	.sleb128	21
	.uleb128	3
	.sleb128	0
.L944:
.L951:
	.sleb128	16
	.byte		"Adc_Adcdig_HwUnitConfigurationType"
	.byte		0
	.4byte		.L952
.L950:
	.sleb128	17
	.4byte		.L951
.L949:
	.sleb128	18
	.4byte		.L950
.L956:
	.sleb128	16
	.byte		"Adc_Adcdig_ChannelConfigurationType"
	.byte		0
	.4byte		.L957
.L955:
	.sleb128	17
	.4byte		.L956
.L954:
	.sleb128	18
	.4byte		.L955
.L953:
	.sleb128	18
	.4byte		.L954
.L959:
	.sleb128	16
	.byte		"Adc_Adcdig_MultiConfigType"
	.byte		0
	.4byte		.L960
.L958:
	.sleb128	17
	.4byte		.L959
.L964:
	.sleb128	17
	.4byte		.L704
.L962:
	.sleb128	19
	.4byte		.L963-.L2
	.4byte		.L964
	.sleb128	21
	.uleb128	3
	.sleb128	0
.L963:
.L965:
	.sleb128	19
	.4byte		.L966-.L2
	.4byte		.L751
	.sleb128	21
	.uleb128	3
	.sleb128	0
.L966:
.L969:
	.sleb128	17
	.4byte		.L720
.L967:
	.sleb128	19
	.4byte		.L968-.L2
	.4byte		.L969
	.sleb128	21
	.uleb128	3
	.sleb128	0
.L968:
.L970:
	.sleb128	19
	.4byte		.L971-.L2
	.4byte		.L964
	.sleb128	21
	.uleb128	3
	.sleb128	0
.L971:
.L972:
	.sleb128	19
	.4byte		.L973-.L2
	.4byte		.L964
	.sleb128	21
	.uleb128	3
	.sleb128	0
.L973:
.L974:
	.sleb128	19
	.4byte		.L975-.L2
	.4byte		.L738
	.sleb128	21
	.uleb128	3
	.sleb128	0
.L975:
.L977:
	.sleb128	17
	.4byte		.L779
.L978:
	.sleb128	17
	.4byte		.L775
.L980:
	.sleb128	16
	.byte		"Adc_GroupConvType"
	.byte		0
	.4byte		.L981
.L979:
	.sleb128	17
	.4byte		.L980
.L983:
	.sleb128	16
	.byte		"Adc_GroupReplacementType"
	.byte		0
	.4byte		.L984
.L982:
	.sleb128	17
	.4byte		.L983
.L986:
	.sleb128	16
	.byte		"Adc_TriggerSourceType"
	.byte		0
	.4byte		.L987
.L985:
	.sleb128	17
	.4byte		.L986
	.section	.debug_info,,n
.L991:
	.sleb128	22
	.4byte		.L992-.L2
	.byte		0x1
	.sleb128	0
.L992:
.L990:
	.sleb128	18
	.4byte		.L991
.L989:
	.sleb128	16
	.byte		"Adc_NotifyType"
	.byte		0
	.4byte		.L990
.L988:
	.sleb128	17
	.4byte		.L989
.L995:
	.sleb128	15
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L994:
	.sleb128	16
	.byte		"uint32"
	.byte		0
	.4byte		.L995
.L993:
	.sleb128	17
	.4byte		.L994
.L996:
	.sleb128	17
	.4byte		.L783
.L997:
	.sleb128	17
	.4byte		.L897
.L1000:
	.sleb128	16
	.byte		"Adc_GroupDefType"
	.byte		0
	.4byte		.L720
.L999:
	.sleb128	17
	.4byte		.L1000
.L998:
	.sleb128	18
	.4byte		.L999
.L1002:
	.sleb128	16
	.byte		"Adc_ChannelIndexType"
	.byte		0
	.4byte		.L694
.L1001:
	.sleb128	17
	.4byte		.L1002
.L1004:
	.sleb128	16
	.byte		"Adc_ConversionTimeType"
	.byte		0
	.4byte		.L694
.L1003:
	.sleb128	17
	.4byte		.L1004
.L1006:
	.sleb128	17
	.4byte		.L694
.L1008:
	.sleb128	16
	.byte		"Adc_ResolutionType"
	.byte		0
	.4byte		.L704
.L1007:
	.sleb128	17
	.4byte		.L1008
.L1010:
	.sleb128	17
	.4byte		.L725
.L1011:
	.sleb128	17
	.4byte		.L717
	.section	.debug_info,,n
.L1015:
	.sleb128	23
	.4byte		.L708
.L1018:
	.sleb128	23
	.4byte		.L693
.L1016:
	.sleb128	19
	.4byte		.L1017-.L2
	.4byte		.L1018
	.sleb128	21
	.uleb128	0
	.sleb128	0
.L1017:
.L1019:
	.sleb128	19
	.4byte		.L1020-.L2
	.4byte		.L1018
	.sleb128	21
	.uleb128	0
	.sleb128	0
.L1020:
.L1022:
	.sleb128	23
	.4byte		.L787
.L1024:
	.sleb128	16
	.byte		"Adc_GroupConversionStateType"
	.byte		0
	.4byte		.L1025
.L1023:
	.sleb128	23
	.4byte		.L1024
.L1026:
	.sleb128	16
	.byte		"Adc_NotificationType"
	.byte		0
	.4byte		.L1027
.L1028:
	.sleb128	23
	.4byte		.L897
.L1029:
	.sleb128	23
	.4byte		.L715
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L684:
	.sleb128	0
.L680:

	.section	.debug_loc,,n
	.align	0
.L696:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L706:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L709:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),4
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo4),4
	.d2locend
.L718:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locend
.L719:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo18),4
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),7
	.d2locend
.L721:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo21),5
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),31
	.d2locend
.L723:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo24),4
	.d2locend
.L727:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),6
	.d2locend
.L729:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),0
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),0
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo31),0
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo11),0
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo13),0
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),0
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo17),0
	.d2locend
.L731:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo30),5
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo9),5
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo31),5
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo11),5
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),5
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo15),5
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),5
	.d2locend
.L739:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),3
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),3
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),3
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locend
.L741:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),4
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo48),4
	.d2locend
.L743:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo45),4
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo47),4
	.d2locend
.L745:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),0
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo41),0
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo45),0
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo47),0
	.d2locend
.L752:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),3
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),31
	.d2locend
.L753:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo57),4
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo58),30
	.d2locend
.L755:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo59),0
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),0
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),0
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),0
	.d2locend
.L757:
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),0
	.d2locend
.L760:
	.d2locend
.L766:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),3
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),31
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),31
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),31
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),31
	.d2locend
.L767:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo79),4
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),28
	.d2locend
.L769:
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),0
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),0
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),30
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),0
	.d2locend
.L771:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),29
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo87),30
	.d2locend
.L773:
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),3
	.d2locend
.L777:
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),3
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo80),3
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),3
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),3
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),3
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),3
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),3
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),3
	.d2locend
.L781:
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),6
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo72),6
	.d2locend
.L785:
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo72),4
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo91),4
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo105),4
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo89),4
	.d2locend
.L789:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo72),0
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo99),0
	.d2locend
.L795:
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo119),3
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),3
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),3
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),3
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo127),3
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo129),3
	.d2locend
.L797:
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo130),4
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),6
	.d2locend
.L799:
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),31
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo135),31
	.d2locend
.L801:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),0
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo132),0
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo134),0
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo141),0
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo143),0
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),0
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo119),0
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo122),0
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),0
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo151),0
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo153),0
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo155),0
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo157),0
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo159),0
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo125),30
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo127),0
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo135),0
	.d2locend
.L807:
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo164),3
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo166),0
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo168),0
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo170),0
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo172),0
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo174),0
	.d2locend
.L817:
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo176),3
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo178),0
	.d2locend
.L823:
	.d2locreg	%offsetof(.Llo179), %offsetof(.Llo180),3
	.d2locend
.L825:
	.d2locreg	%offsetof(.Llo179), %offsetof(.Llo181),4
	.d2locend
.L827:
	.d2locreg	%offsetof(.Llo182), %offsetof(.Llo183),5
	.d2locend
.L833:
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo181),5
	.d2locend
.L840:
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo185),31
	.d2locend
.L846:
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo187),3
	.d2locreg	%offsetof(.Llo188), %offsetof(.Llo189),0
	.d2locend
.L848:
	.d2locreg	%offsetof(.Llo190), %offsetof(.Llo191),3
	.d2locend
.L854:
	.d2locreg	%offsetof(.Llo192), %offsetof(.Llo193),3
	.d2locreg	%offsetof(.Llo194), %offsetof(.Llo195),0
	.d2locend
.L856:
	.d2locreg	%offsetof(.Llo196), %offsetof(.Llo197),3
	.d2locend
.L862:
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo199),3
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo201),30
	.d2locend
.L863:
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo202),4
	.d2locend
.L866:
	.d2locreg	%offsetof(.Llo203), %offsetof(.Llo204),0
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo200),3
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),31
	.d2locend
.L872:
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),3
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo210),31
	.d2locend
.L878:
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo212),3
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo214),31
	.d2locend
.L884:
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo216),3
	.d2locend
.L886:
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo218),4
	.d2locend
.L892:
	.d2locreg	%offsetof(.Llo219), %offsetof(.Llo220),3
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),0
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo224),0
	.d2locreg	%offsetof(.Llo225), %offsetof(.Llo226),0
	.d2locend
.L899:
	.d2locreg	%offsetof(.Llo227), %offsetof(.Llo228),3
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo230),31
	.d2locend
.L901:
	.d2locreg	%offsetof(.Llo227), %offsetof(.Llo231),4
	.d2locreg	%offsetof(.Llo232), %offsetof(.Llo230),30
	.d2locend
.L903:
	.d2locreg	%offsetof(.Llo227), %offsetof(.Llo233),29
	.d2locreg	%offsetof(.Llo234), %offsetof(.Llo235),29
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo237),29
	.d2locend
.L905:
	.d2locreg	%offsetof(.Llo238), %offsetof(.Llo235),0
	.d2locreg	%offsetof(.Llo239), %offsetof(.Llo240),0
	.d2locreg	%offsetof(.Llo241), %offsetof(.Llo230),0
	.d2locend
.L914:
	.d2locreg	%offsetof(.Llo242), %offsetof(.Llo243),3
	.d2locreg	%offsetof(.Llo244), %offsetof(.Llo245),4
	.d2locend
.L920:
	.d2locreg	%offsetof(.Llo246), %offsetof(.Llo247),4
	.d2locend
.L924:
	.d2locreg	%offsetof(.Llo246), %offsetof(.Llo248),5
	.d2locend
.L926:
	.d2locreg	%offsetof(.Llo249), %offsetof(.Llo247),3
	.d2locreg	%offsetof(.Llo250), %offsetof(.Llo248),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Adc_GetCmrRegister"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Adc_GetVersionInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Adc_GetStreamLastPointer"
	.wrcm.nstrlist "calls", "Adc_UpdateStatusAfterGetStream","SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_12","SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_12"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Adc_UpdateStatusAfterGetStream"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Adc_GetGroupStatus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Adc_DisableGroupNotification"
	.wrcm.nstrlist "calls", "SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_01","SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_01"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Adc_EnableGroupNotification"
	.wrcm.nstrlist "calls", "SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_00","SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_00"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Adc_ReadGroup"
	.wrcm.nstrlist "calls", "Adc_Adcdig_ReadGroup","Adc_UpdateStatusReadGroupInt","Adc_UpdateStatusReadGroupNoInt"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Adc_StopGroupConversion"
	.wrcm.nstrlist "calls", "Adc_UpdateStatusStopConversion"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Adc_StartGroupConversion"
	.wrcm.nstrlist "calls", "Adc_UpdateStatusStartConversion"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Adc_DeInit"
	.wrcm.nstrlist "calls", "Adc_Adcdig_DeInit"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Adc_SetupResultBuffer"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Adc_Init"
	.wrcm.nstrlist "calls", "Adc_Adcdig_Init","Adc_InitGroupsStatus","Adc_InitUnitStatus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Adc_UpdateStatusReadGroupInt"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Adc_UpdateStatusReadGroupNoInt"
	.wrcm.nstrlist "calls", "Adc_Adcdig_StartNormalConversion","Adc_RemoveFromQueue"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Adc_UpdateStatusStopConversion"
	.wrcm.nstrlist "calls", "Adc_Adcdig_StartNormalConversion","Adc_Adcdig_StopCurrentConversion","Adc_RemoveFromQueue","SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_08","SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_08"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Adc_UpdateStatusStartConversion"
	.wrcm.nstrlist "calls", "Adc_Adcdig_StartNormalConversion","SchM_Enter_Adc_ADC_EXCLUSIVE_AREA_07","SchM_Exit_Adc_ADC_EXCLUSIVE_AREA_07"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Adc_RemoveFromQueue"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Adc_CheckConversionValuesInRange"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Adc_InitUnitStatus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Adc_InitGroupsStatus"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Adc.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Adc.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Adc.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Adc.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Adc.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Adc.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Adc\ssc\make\..\..\generator\integration_package\src\Adc.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
