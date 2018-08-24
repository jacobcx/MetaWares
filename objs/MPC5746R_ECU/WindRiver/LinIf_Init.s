#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinIf_Init.c"
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
# FUNC (Std_ReturnType, LINIF_CODE) LinIf_ConsistencyCheck(P2CONST (LinIf_ConfigType, AUTOMATIC, LINIF_APPL_CONST) ConfigPtr)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_Init.c"
        .d2line         171,35
#$$ld
.L295:

#$$bf	LinIf_ConsistencyCheck,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		LinIf_ConsistencyCheck
	.d2_cfa_start __cie
LinIf_ConsistencyCheck:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ConfigPtr=r3 ConfigPtr=r3
	.d2prologue_end
# {
#     VAR( Std_ReturnType, AUTOMATIC )    Retval = E_NOT_OK;
	.d2line		173
	diab.li		r5,1		# Retval=r5
# 
#     if ((LINIF_PC_HASH_VALUE == LinIf_LTtoPCHashValue)
	.d2line		175
.Llo3:
	lis		r4,LinIf_LTtoPCHashValue@ha
	lwz		r0,LinIf_LTtoPCHashValue@l(r4)
	e_lis		r4,39081
	e_or2i		r4,5042
	se_cmpl		r0,r4
	bc		0,2,.L291	# ne
	se_cmpi		r3,0		# ConfigPtr=r3
	bc		1,2,.L291	# eq
	lwz		r4,8(r3)		# ConfigPtr=r3
	lwz		r0,0(r4)
	e_lis		r4,39081
	e_or2i		r4,5042
	se_cmpl		r0,r4
	bc		0,2,.L291	# ne
	lwz		r3,12(r3)		# ConfigPtr=r3 ConfigPtr=r3
	lwz		r0,0(r3)		# ConfigPtr=r3
	lis		r3,LinIf_LTHashValue@ha		# ConfigPtr=r3
	lwz		r3,LinIf_LTHashValue@l(r3)		# ConfigPtr=r3 ConfigPtr=r3
	se_cmpl		r0,r3		# ConfigPtr=r3
#         && (NULL_PTR != ConfigPtr)
#         && (LINIF_PC_HASH_VALUE == *(ConfigPtr->PBtoPCHashValue_P))
#         && (LinIf_LTHashValue == *(ConfigPtr->PBtoLTHashValue_P))
#     )
#     {
#         Retval = E_OK;
	.d2line		181
	isel		r5,0,r5,2		# Retval=r5 Retval=r5
.L291:
#     }
# 
#     return Retval;
	.d2line		184
.Llo2:
	rlwinm		r3,r5,0,24,31		# ConfigPtr=r3 Retval=r5
# }
	.d2line		185
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo4:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L296:
	.type		LinIf_ConsistencyCheck,@function
	.size		LinIf_ConsistencyCheck,.-LinIf_ConsistencyCheck
# Number of nodes = 28

# Allocations for LinIf_ConsistencyCheck
#	?a4		ConfigPtr
#	?a5		Retval
# FUNC (void, LINIF_CODE)LinIf_Init(P2CONST (LinIf_ConfigType, AUTOMATIC, LINIF_APPL_DATA) ConfigPtr) /* PRQA S 3206 */ /*The ConfigPtr parameter unused just in LT*/
	.align		2
	.section	.text_vle
        .d2line         50,24
#$$ld
.L311:

#$$bf	LinIf_Init,interprocedural,rasave,nostackparams
	.globl		LinIf_Init
	.d2_cfa_start __cie
LinIf_Init:
.Llo5:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo21:
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# HashKeyErrorDetect_b=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# ConfigPtr=r0 ConfigPtr=r3
	.d2prologue_end
# {
# #if(LINIF_DEV_ERROR_DETECT == STD_ON)
#     /* Variable to detect the development errors */
#     VAR (boolean, AUTOMATIC) DetErrorDetect_b = FALSE;
# #endif
# 
#     /* Variable to detect the hash check errors */
#     VAR (boolean, AUTOMATIC) HashKeyErrorDetect_b = TRUE;
	.d2line		58
.Llo6:
	diab.li		r6,1		# HashKeyErrorDetect_b=r6
# 
#     /* Pointer pointing to the current channel */
#     P2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_DATA) crntChannel_p;
# 
#     /* Check if the global configuration parameter of the LinIf is NULL or
#      * Invalid */
# #if (LINIF_DEV_ERROR_DETECT == STD_ON )
#     if (NULL_PTR == ConfigPtr)
#     {
#         /* Report the LINIF_E_PARAMETER_POINTER error to DET module */
#         (void)Det_ReportError (LINIF_MODULE_ID,
#                         LINIF_INSTANCE_ID,
#                         LINIF_INIT_FUN_ID,
#                         LINIF_E_PARAMETER_POINTER); /*[LINIF486]*/
# 
#         /* Set the variable to hold the presence of development errors as true */
#         DetErrorDetect_b = TRUE;
#     }
#     else
# #endif /*  LINIF_DEV_ERROR_DETECT  */
#     {
#         /* Get the post-build configuration data */
#         LinIf_GlobalConfig_p = ConfigPtr; /*[LINIF371] */ /*[LINIF493]*/ /*[LINIF374]*/ /*[LINIF373]*/
	.d2line		81
.Llo7:
	lis		r3,LinIf_GlobalConfig_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,LinIf_GlobalConfig_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3 ConfigPtr=r0
#     }
# 
#     /* Verify the hash keys */
#     if (E_OK == LinIf_ConsistencyCheck(ConfigPtr))
	.d2line		85
	mr		r3,r0		# ConfigPtr=r3 ConfigPtr=r0
	bl		LinIf_ConsistencyCheck
.Llo8:
	rlwinm		r3,r3,0,24,31		# ConfigPtr=r3 ConfigPtr=r3
.Llo9:
	se_cmpi		r3,0		# ConfigPtr=r3
#     {
#         /* Set the Hash check variable to FALSE */
#         HashKeyErrorDetect_b = FALSE;
	.d2line		88
	isel		r0,0,r6,2		# HashKeyErrorDetect_b=r0 HashKeyErrorDetect_b=r6
.L279:
#     }
# 
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#     /* Check if the LinIf module is already initialized */
#     if (LINIF_UNINIT != LinIf_GlobalInitStsFlag)
#     {
#         /* Report the LINIF_E_ALREADY_INITIALIZED error to DET module */
#         (void)Det_ReportError (LINIF_MODULE_ID,
#                         LINIF_INSTANCE_ID,
#                         LINIF_INIT_FUN_ID, LINIF_E_ALREADY_INITIALIZED); /*[LINIF562]*/
# 
#         /* Set the variable to hold the presence of development errors as true */
#         DetErrorDetect_b = TRUE;
#     }
# #endif
#     /* Check for any development error is present */
#     if (
	.d2line		105
.Llo10:
	rlwinm		r0,r0,0,24,31		# HashKeyErrorDetect_b=r0 HashKeyErrorDetect_b=r0
.Llo22:
	se_cmpi		r0,0		# HashKeyErrorDetect_b=r0
	bc		0,2,.L278	# ne
	.section	.text_vle
.L324:
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#         (FALSE == DetErrorDetect_b) &&
# #endif
#         (FALSE == HashKeyErrorDetect_b))
#     {
#         VAR (uint16, LINIF_APPL_DATA) channelIndex;
#         /* Initialize all the LinIf channels */
#         for (channelIndex = 0U; channelIndex < LinIf_GlobalConfig_p->MaxLinIfChannel;channelIndex++)
	.d2line		113
.Llo23:
	diab.li		r29,0		# channelIndex=r29
.L281:
.Llo36:
	rlwinm		r0,r29,0,16,31		# HashKeyErrorDetect_b=r0 channelIndex=r29
.Llo24:
	lis		r3,LinIf_GlobalConfig_p@ha		# ConfigPtr=r3
.Llo11:
	lwz		r3,LinIf_GlobalConfig_p@l(r3)		# ConfigPtr=r3 ConfigPtr=r3
	lhz		r3,0(r3)		# ConfigPtr=r3 ConfigPtr=r3
	se_cmp		r0,r3		# HashKeyErrorDetect_b=r0 ConfigPtr=r3
	bc		0,0,.L283	# ge
	.section	.text_vle
.L332:
#         {
#             /* Pointer to hold the current channel relocatable config */
#             P2CONST(LinIfChannelReloc,AUTOMATIC, LINIF_CONST) LinIf_Channel_Reloc_p;
# 
#             /* Set the current channel of LIN Interface */
#             crntChannel_p = &LinIf_ConfigChannelLT_p[channelIndex];
	.d2line		119
.Llo12:
	lis		r3,LinIf_ConfigChannelLT_p@ha		# ConfigPtr=r3
.Llo13:
	lwz		r31,LinIf_ConfigChannelLT_p@l(r3)		# crntChannel_p=r31 ConfigPtr=r3
.Llo35:
	rlwinm		r0,r29,5,11,26		# HashKeyErrorDetect_b=r0 channelIndex=r29
.Llo25:
	se_add		r0,r31		# HashKeyErrorDetect_b=r0 HashKeyErrorDetect_b=r0 crntChannel_p=r31
.Llo26:
	mr		r31,r0		# crntChannel_p=r31 crntChannel_p=r0
# 
#             /* get the relocatable channel structure*/
#             LinIf_ConfigChannel_Reloc_p =  LinIf_GlobalConfig_p->LinIfChannel_p;
	.d2line		122
	lis		r3,LinIf_GlobalConfig_p@ha		# ConfigPtr=r3
	lwz		r3,LinIf_GlobalConfig_p@l(r3)		# ConfigPtr=r3 ConfigPtr=r3
	lwz		r0,4(r3)		# HashKeyErrorDetect_b=r0 ConfigPtr=r3
.Llo27:
	lis		r3,LinIf_ConfigChannel_Reloc_p@ha		# ConfigPtr=r3
	e_add16i		r3,r3,LinIf_ConfigChannel_Reloc_p@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3 HashKeyErrorDetect_b=r0
# 
#             /* Get the current channel relocatable struct */
#             LinIf_Channel_Reloc_p = &(LinIf_ConfigChannel_Reloc_p[crntChannel_p->LinIfChannelIndex]);
	.d2line		125
	lbz		r0,12(r31)		# HashKeyErrorDetect_b=r0 crntChannel_p=r31
	lis		r3,LinIf_ConfigChannel_Reloc_p@ha		# ConfigPtr=r3
	lwz		r30,LinIf_ConfigChannel_Reloc_p@l(r3)		# LinIf_Channel_Reloc_p=r30 ConfigPtr=r3
.Llo37:
	rlwinm		r3,r0,5,0,26		# ConfigPtr=r3 HashKeyErrorDetect_b=r0
	se_slwi		r0,3		# HashKeyErrorDetect_b=r0 HashKeyErrorDetect_b=r0
	subf		r0,r0,r3		# HashKeyErrorDetect_b=r0 HashKeyErrorDetect_b=r0 ConfigPtr=r3
	se_add		r0,r30		# HashKeyErrorDetect_b=r0 HashKeyErrorDetect_b=r0 LinIf_Channel_Reloc_p=r30
.Llo28:
	mr		r30,r0		# LinIf_Channel_Reloc_p=r30 LinIf_Channel_Reloc_p=r0
# 
#             /* PRQA S 310++*/ /* Misra 11.4 casting is necessary */
#             vstar_set(LinIf_Channel_Reloc_p->SPPendingRequest_p, 0U,
	.d2line		128
	lwz		r3,16(r30)		# ConfigPtr=r3 LinIf_Channel_Reloc_p=r30
.Llo14:
	lbz		r5,0(r30)		# LinIf_Channel_Reloc_p=r30
	diab.li		r4,0
	bl		vstar_set
#                 LinIf_Channel_Reloc_p->LinIfMaxLinFrames * sizeof(LinIf_Channel_Reloc_p->SPPendingRequest_p[0]));
#             vstar_set(LinIf_Channel_Reloc_p->ETCollisionDetectd_p, 0U,
	.d2line		130
	lbz		r5,1(r30)		# LinIf_Channel_Reloc_p=r30
	lwz		r3,12(r30)		# ConfigPtr=r3 LinIf_Channel_Reloc_p=r30
	diab.li		r4,0
	bl		vstar_set
#                 LinIf_Channel_Reloc_p->LinIfMaxSchedules * sizeof(LinIf_Channel_Reloc_p->ETCollisionDetectd_p[0]));
#             vstar_set(LinIf_Channel_Reloc_p->LinIf_ScheduleTableEntry_p, 0U,
	.d2line		132
	lbz		r5,1(r30)		# LinIf_Channel_Reloc_p=r30
	lwz		r3,20(r30)		# ConfigPtr=r3 LinIf_Channel_Reloc_p=r30
	diab.li		r4,0
	bl		vstar_set
#                 LinIf_Channel_Reloc_p->LinIfMaxSchedules * sizeof(LinIf_Channel_Reloc_p->LinIf_ScheduleTableEntry_p[0]));
# 
#             /* Set the current channel status of LIN Interface with the configured Initial State */
#             vstar_set((uint8 *)crntChannel_p->LinIf_channelManager_p, 0U, (uint32)sizeof(LinIfChannelManager) ); /*[LINIF444]*/ /*[LINIF233]*/
	.d2line		136
	lwz		r3,28(r31)		# ConfigPtr=r3 crntChannel_p=r31
	diab.li		r4,0
	diab.li		r5,48
	bl		vstar_set
#             /* PRQA S 310-- */
# 
#             crntChannel_p->LinIf_channelManager_p->LinIf_ChannelState = crntChannel_p->LinIfStartupState; /*[LINIF507]*/
	.d2line		139
	lwz		r0,20(r31)		# HashKeyErrorDetect_b=r0 crntChannel_p=r31
.Llo29:
	lwz		r3,28(r31)		# ConfigPtr=r3 crntChannel_p=r31
.Llo15:
	stw		r0,44(r3)		# ConfigPtr=r3 HashKeyErrorDetect_b=r0
# 
#             if(crntChannel_p->LinIfStartupState == LINIF_CHANNEL_SLEEP)
	.d2line		141
	lwz		r0,20(r31)		# HashKeyErrorDetect_b=r0 crntChannel_p=r31
	se_cmpi		r0,2		# HashKeyErrorDetect_b=r0
	bc		0,2,.L284	# ne
#             {
#                 /*call Lin_GoToSleepInternal*/ /*void casting is necessary because [LIN167]*/
#                 (void)LinIf_ConfigChannelLT_p[channelIndex].LinDrvCalls_p->Lin_GoToSleepInternal_p
	.d2line		144
.Llo16:
	lis		r3,LinIf_ConfigChannelLT_p@ha		# ConfigPtr=r3
.Llo17:
	lwz		r3,LinIf_ConfigChannelLT_p@l(r3)		# ConfigPtr=r3 ConfigPtr=r3
	rlwinm		r0,r29,5,11,26		# HashKeyErrorDetect_b=r0 channelIndex=r29
.Llo30:
	se_add		r3,r0		# ConfigPtr=r3 ConfigPtr=r3 HashKeyErrorDetect_b=r0
	lwz		r3,24(r3)		# ConfigPtr=r3 ConfigPtr=r3
	lwz		r0,8(r3)		# HashKeyErrorDetect_b=r0 ConfigPtr=r3
.Llo31:
	mtspr		ctr,r0		# HashKeyErrorDetect_b=ctr
	lis		r3,LinIf_ChannelIdentifier_p@ha		# ConfigPtr=r3
	lwz		r3,LinIf_ChannelIdentifier_p@l(r3)		# ConfigPtr=r3 ConfigPtr=r3
	lbz		r0,12(r31)		# HashKeyErrorDetect_b=r0 crntChannel_p=r31
.Llo32:
	e_mulli		r0,r0,3		# HashKeyErrorDetect_b=r0 HashKeyErrorDetect_b=r0
	se_add		r3,r0		# ConfigPtr=r3 ConfigPtr=r3 HashKeyErrorDetect_b=r0
	lbz		r3,2(r3)		# ConfigPtr=r3 ConfigPtr=r3
.Llo18:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.L284:
	.section	.text_vle
.L333:
#                         (LinIf_ChannelIdentifier_p[crntChannel_p->LinIfChannelIndex].LinIfChannelRef);
#             }
# 
# #if ( LINIF_TP_SUPPORTED == STD_ON )
#             /* Stop the timers, avoid timeouts in mainfunction */
#             LinTp_stopTimers(crntChannel_p);
# #endif
#         }
	.d2line		152
.Llo33:
	diab.addi		r0,r29,1		# HashKeyErrorDetect_b=r0 channelIndex=r29
	se_addi		r29,1		# channelIndex=r29 channelIndex=r29
	b		.L281
.L283:
# 
#         LinIf_GlobalInitStsFlag = LINIF_INIT; /*[LINIF381]*/
	.d2line		154
	diab.li		r0,1		# HashKeyErrorDetect_b=r0
.Llo34:
	lis		r3,LinIf_GlobalInitStsFlag@ha		# ConfigPtr=r3
.Llo19:
	e_add16i		r3,r3,LinIf_GlobalInitStsFlag@l		# ConfigPtr=r3 ConfigPtr=r3
	stb		r0,0(r3)		# ConfigPtr=r3 HashKeyErrorDetect_b=r0
	.section	.text_vle
.L325:
.L278:
#     }
# }/* End of LinIf_Init() */
	.d2line		156
	.d2epilogue_begin
.Llo20:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# HashKeyErrorDetect_b=r0
	mtspr		lr,r0		# HashKeyErrorDetect_b=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L312:
	.type		LinIf_Init,@function
	.size		LinIf_Init,.-LinIf_Init
# Number of nodes = 160

# Allocations for LinIf_Init
#	?a4		ConfigPtr
#	?a5		$$83
#	?a6		HashKeyErrorDetect_b
#	?a7		crntChannel_p
#	?a8		channelIndex
#	?a9		LinIf_Channel_Reloc_p

# Allocations for module
	.section	.text_vle
	.0byte		.L342
	.section	.text_vle
#$$ld
.L5:
.L501:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L360:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Types.h"
.L349:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Private.h"
.L343:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf.h"
.L297:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_Init.c"
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
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
	.uleb128	13
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
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
	.uleb128	19
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_Init.c"
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
.L301:
	.sleb128	2
	.4byte		.L294-.L2
	.byte		"LinIf_ConsistencyCheck"
	.byte		0
	.4byte		.L297
	.uleb128	171
	.uleb128	35
	.4byte		.L298
	.byte		0x1
	.byte		0x1
	.4byte		.L295
	.4byte		.L296
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L297
	.uleb128	171
	.uleb128	35
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L302
	.4byte		.L306
	.section	.debug_info,,n
.L307:
	.sleb128	4
	.4byte		.L297
	.uleb128	173
	.uleb128	41
	.byte		"Retval"
	.byte		0
	.4byte		.L298
	.4byte		.L308
	.section	.debug_info,,n
	.sleb128	0
.L294:
	.section	.debug_info,,n
.L313:
	.sleb128	5
	.4byte		.L310-.L2
	.byte		"LinIf_Init"
	.byte		0
	.4byte		.L297
	.uleb128	50
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L311
	.4byte		.L312
	.sleb128	3
	.4byte		.L297
	.uleb128	50
	.uleb128	24
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L302
	.4byte		.L314
.L315:
	.sleb128	4
	.4byte		.L297
	.uleb128	58
	.uleb128	30
	.byte		"HashKeyErrorDetect_b"
	.byte		0
	.4byte		.L316
	.4byte		.L317
.L318:
	.sleb128	4
	.4byte		.L297
	.uleb128	61
	.uleb128	56
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L319
	.4byte		.L323
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L327
	.4byte		.L324
	.4byte		.L325
.L328:
	.sleb128	4
	.4byte		.L297
	.uleb128	111
	.uleb128	39
	.byte		"channelIndex"
	.byte		0
	.4byte		.L329
	.4byte		.L331
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L335
	.4byte		.L332
	.4byte		.L333
.L336:
	.sleb128	4
	.4byte		.L297
	.uleb128	116
	.uleb128	63
	.byte		"LinIf_Channel_Reloc_p"
	.byte		0
	.4byte		.L337
	.4byte		.L341
	.section	.debug_info,,n
	.sleb128	0
.L335:
	.section	.debug_info,,n
	.sleb128	0
.L327:
	.section	.debug_info,,n
	.sleb128	0
.L310:
	.section	.debug_info,,n
.L342:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L343
	.uleb128	127
	.uleb128	35
	.byte		"LinIf_LTtoPCHashValue"
	.byte		0
	.4byte		.L344
	.section	.debug_info,,n
.L347:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L343
	.uleb128	130
	.uleb128	35
	.byte		"LinIf_LTHashValue"
	.byte		0
	.4byte		.L344
.L348:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L349
	.uleb128	206
	.uleb128	33
	.byte		"LinIf_GlobalInitStsFlag"
	.byte		0
	.4byte		.L316
	.0byte		.L348
.L350:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L349
	.uleb128	220
	.uleb128	63
	.byte		"LinIf_GlobalConfig_p"
	.byte		0
	.4byte		.L302
.L351:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L349
	.uleb128	228
	.uleb128	64
	.byte		"LinIf_ConfigChannel_Reloc_p"
	.byte		0
	.4byte		.L337
.L352:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L349
	.uleb128	238
	.uleb128	76
	.byte		"LinIf_ChannelIdentifier_p"
	.byte		0
	.4byte		.L353
.L358:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L349
	.uleb128	241
	.uleb128	66
	.byte		"LinIf_ConfigChannelLT_p"
	.byte		0
	.4byte		.L359
	.section	.debug_info,,n
.L305:
	.sleb128	8
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L361-.L2
	.uleb128	20
	.section	.debug_info,,n
.L252:
	.sleb128	9
	.byte		"MaxLinIfChannel"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L253:
	.sleb128	9
	.byte		"LinIfChannel_p"
	.byte		0
	.4byte		.L337
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L254:
	.sleb128	9
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L363
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L255:
	.sleb128	9
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L363
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L256:
	.sleb128	9
	.byte		"LinIf_ConfirmationULConfig_p"
	.byte		0
	.4byte		.L364
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L361:
.L357:
	.sleb128	8
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L368-.L2
	.uleb128	3
.L249:
	.sleb128	9
	.byte		"LinIfTrcvIdRef"
	.byte		0
	.4byte		.L369
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L250:
	.sleb128	9
	.byte		"LinIfChannelId"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L251:
	.sleb128	9
	.byte		"LinIfChannelRef"
	.byte		0
	.4byte		.L369
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L368:
.L322:
	.sleb128	8
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L372-.L2
	.uleb128	32
.L240:
	.sleb128	9
	.byte		"LinTrcvDrvCalls_p"
	.byte		0
	.4byte		.L373
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L241:
	.sleb128	9
	.byte		"WakeupSourceIdLin"
	.byte		0
	.4byte		.L344
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L242:
	.sleb128	9
	.byte		"WakeupSourceIdTrcv"
	.byte		0
	.4byte		.L344
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L243:
	.sleb128	9
	.byte		"LinIfChannelIndex"
	.byte		0
	.4byte		.L369
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L244:
	.sleb128	9
	.byte		"ExternalChannelIndex"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L245:
	.sleb128	9
	.byte		"LinIfDelayForSleep"
	.byte		0
	.4byte		.L344
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L246:
	.sleb128	9
	.byte		"LinIfStartupState"
	.byte		0
	.4byte		.L377
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L247:
	.sleb128	9
	.byte		"LinDrvCalls_p"
	.byte		0
	.4byte		.L380
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L248:
	.sleb128	9
	.byte		"LinIf_channelManager_p"
	.byte		0
	.4byte		.L384
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L372:
.L340:
	.sleb128	8
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L388-.L2
	.uleb128	24
.L233:
	.sleb128	9
	.byte		"LinIfMaxLinFrames"
	.byte		0
	.4byte		.L369
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L234:
	.sleb128	9
	.byte		"LinIfMaxSchedules"
	.byte		0
	.4byte		.L369
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L235:
	.sleb128	9
	.byte		"LinIfFrame_p"
	.byte		0
	.4byte		.L389
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L236:
	.sleb128	9
	.byte		"LinIfScheduleTable_p"
	.byte		0
	.4byte		.L393
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L237:
	.sleb128	9
	.byte		"ETCollisionDetectd_p"
	.byte		0
	.4byte		.L397
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L238:
	.sleb128	9
	.byte		"SPPendingRequest_p"
	.byte		0
	.4byte		.L397
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L239:
	.sleb128	9
	.byte		"LinIf_ScheduleTableEntry_p"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L388:
.L387:
	.sleb128	8
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L399-.L2
	.uleb128	48
.L223:
	.sleb128	9
	.byte		"LinIf_NewScheduleTableType"
	.byte		0
	.4byte		.L400
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L224:
	.sleb128	9
	.byte		"LinIf_RunContSchTableIndexRequested"
	.byte		0
	.4byte		.L402
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L225:
	.sleb128	9
	.byte		"LinIf_RunOnceSchTableRequested"
	.byte		0
	.4byte		.L402
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L226:
	.sleb128	9
	.byte		"LinIf_EntryDelayCounter"
	.byte		0
	.4byte		.L329
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L227:
	.sleb128	9
	.byte		"LinIf_SleepDelayCounter"
	.byte		0
	.4byte		.L345
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L228:
	.sleb128	9
	.byte		"LinIf_ScheduleTableIndex"
	.byte		0
	.4byte		.L402
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L229:
	.sleb128	9
	.byte		"LinIf_ScheduleTableType"
	.byte		0
	.4byte		.L400
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L230:
	.sleb128	9
	.byte		"LinIf_BusStatus"
	.byte		0
	.4byte		.L403
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L231:
	.sleb128	9
	.byte		"LinIf_ChannelSubState"
	.byte		0
	.4byte		.L405
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L232:
	.sleb128	9
	.byte		"LinIf_ChannelState"
	.byte		0
	.4byte		.L378
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L399:
.L404:
	.sleb128	8
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L407-.L2
	.uleb128	20
.L219:
	.sleb128	9
	.byte		"Lin_DriverGetStatusVal"
	.byte		0
	.4byte		.L408
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L220:
	.sleb128	9
	.byte		"LinIf_frameStatus"
	.byte		0
	.4byte		.L409
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L221:
	.sleb128	9
	.byte		"LinIf_frameEntry_p"
	.byte		0
	.4byte		.L411
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L222:
	.sleb128	9
	.byte		"LinIf_RxData"
	.byte		0
	.4byte		.L415
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L407:
.L396:
	.sleb128	8
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L417-.L2
	.uleb128	20
.L213:
	.sleb128	9
	.byte		"LinIfResumePosition"
	.byte		0
	.4byte		.L418
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L214:
	.sleb128	9
	.byte		"LinIfRunMode"
	.byte		0
	.4byte		.L421
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L215:
	.sleb128	9
	.byte		"LinIfScheduleMode"
	.byte		0
	.4byte		.L424
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L216:
	.sleb128	9
	.byte		"LinIfScheduleTableIndex"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L217:
	.sleb128	9
	.byte		"LinIfMaxSchEntry"
	.byte		0
	.4byte		.L369
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L218:
	.sleb128	9
	.byte		"LinIfEntry_p"
	.byte		0
	.4byte		.L411
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L417:
.L414:
	.sleb128	8
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L428-.L2
	.uleb128	8
.L210:
	.sleb128	9
	.byte		"LinIfDelay"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L211:
	.sleb128	9
	.byte		"LinIfCollisionResolvingRef"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L212:
	.sleb128	9
	.byte		"LinIfFrameRef"
	.byte		0
	.4byte		.L389
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L428:
.L392:
	.sleb128	8
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L429-.L2
	.uleb128	32
.L196:
	.sleb128	9
	.byte		"LinIfChecksumType"
	.byte		0
	.4byte		.L430
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L197:
	.sleb128	9
	.byte		"LinIfFrameType"
	.byte		0
	.4byte		.L432
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L198:
	.sleb128	9
	.byte		"LinIfLength"
	.byte		0
	.4byte		.L435
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L199:
	.sleb128	9
	.byte		"LinIfPid"
	.byte		0
	.4byte		.L437
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L200:
	.sleb128	9
	.byte		"LinIfTxConfirmationId"
	.byte		0
	.4byte		.L439
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L201:
	.sleb128	9
	.byte		"LinIfPduDirection"
	.byte		0
	.4byte		.L441
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L202:
	.sleb128	9
	.byte		"LinIfFixedFrameSduData"
	.byte		0
	.4byte		.L443
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L203:
	.sleb128	9
	.byte		"LinIfRxTxTargetPduRef"
	.byte		0
	.4byte		.L439
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L204:
	.sleb128	9
	.byte		"LinIfSubsFrames_p"
	.byte		0
	.4byte		.L445
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L205:
	.sleb128	9
	.byte		"LinIfNoOfSubEntry"
	.byte		0
	.4byte		.L369
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L206:
	.sleb128	9
	.byte		"LinIfFunctionIndex"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L429:
.L448:
	.sleb128	8
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L449-.L2
	.uleb128	2
.L194:
	.sleb128	9
	.byte		"LinIfSubFrameIndex"
	.byte		0
	.4byte		.L369
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L195:
	.sleb128	9
	.byte		"LinIfSubFramePriority"
	.byte		0
	.4byte		.L369
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L449:
.L367:
	.sleb128	8
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L450-.L2
	.uleb128	12
.L191:
	.sleb128	9
	.byte		"GotoSleepConfirmationUL"
	.byte		0
	.4byte		.L451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L192:
	.sleb128	9
	.byte		"WakeupConfirmationUL"
	.byte		0
	.4byte		.L451
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L193:
	.sleb128	9
	.byte		"ScheduleRequestConfirmationUL"
	.byte		0
	.4byte		.L451
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L450:
.L376:
	.sleb128	8
	.4byte		.L360
	.uleb128	232
	.uleb128	14
	.4byte		.L454-.L2
	.uleb128	20
.L183:
	.sleb128	9
	.byte		"LinTrcv_SetOpMode_p"
	.byte		0
	.4byte		.L455
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L184:
	.sleb128	9
	.byte		"LinTrcv_GetOpMode_p"
	.byte		0
	.4byte		.L460
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L185:
	.sleb128	9
	.byte		"LinTrcv_GetBusWuReason_p"
	.byte		0
	.4byte		.L464
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L186:
	.sleb128	9
	.byte		"LinTrcv_SetWakeupMode_p"
	.byte		0
	.4byte		.L470
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L187:
	.sleb128	9
	.byte		"LinTrcv_CheckWakeup_p"
	.byte		0
	.4byte		.L475
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L454:
.L383:
	.sleb128	8
	.4byte		.L360
	.uleb128	184
	.uleb128	1
	.4byte		.L478-.L2
	.uleb128	24
.L177:
	.sleb128	9
	.byte		"Lin_SendFrame_p"
	.byte		0
	.4byte		.L479
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L178:
	.sleb128	9
	.byte		"Lin_GoToSleep_p"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L179:
	.sleb128	9
	.byte		"Lin_GoToSleepInternal_p"
	.byte		0
	.4byte		.L488
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L180:
	.sleb128	9
	.byte		"Lin_Wakeup_p"
	.byte		0
	.4byte		.L491
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L181:
	.sleb128	9
	.byte		"Lin_GetStatus_p"
	.byte		0
	.4byte		.L494
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L182:
	.sleb128	9
	.byte		"Lin_CheckWakeup_p"
	.byte		0
	.4byte		.L498
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L478:
.L484:
	.sleb128	8
	.4byte		.L501
	.uleb128	59
	.uleb128	13
	.4byte		.L502-.L2
	.uleb128	8
.L92:
	.sleb128	9
	.byte		"Pid"
	.byte		0
	.4byte		.L438
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	9
	.byte		"Cs"
	.byte		0
	.4byte		.L431
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L94:
	.sleb128	9
	.byte		"Drc"
	.byte		0
	.4byte		.L442
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L95:
	.sleb128	9
	.byte		"Dl"
	.byte		0
	.4byte		.L436
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L96:
	.sleb128	9
	.byte		"SduPtr"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L502:
	.section	.debug_info,,n
.L453:
	.sleb128	10
	.4byte		.L360
	.uleb128	322
	.uleb128	1
	.4byte		.L503-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"LIN_SM"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"CDD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L503:
.L426:
	.sleb128	10
	.4byte		.L360
	.uleb128	232
	.uleb128	14
	.4byte		.L504-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINTP_APPLICATIVE_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINTP_DIAG_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINTP_DIAG_RESPONSE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L504:
.L410:
	.sleb128	10
	.4byte		.L360
	.uleb128	184
	.uleb128	1
	.4byte		.L505-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINIF_FRAME_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINIF_FRAME_RX_ONGOING"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINIF_FRAME_TX_ONGOING"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"LINIF_FRAME_FINISHED"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"LINIF_FRAME_ERROR"
	.byte		0
	.sleb128	4
	.sleb128	0
.L505:
.L434:
	.sleb128	10
	.4byte		.L360
	.uleb128	110
	.uleb128	1
	.4byte		.L506-.L2
	.uleb128	4
	.sleb128	11
	.byte		"INVALID_STATE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"FREE"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"ASSIGN"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"ASSIGN_FRAME_ID_RANGE"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"EVENT_TRIGGERED"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"SAVE_CONFIGURATION"
	.byte		0
	.sleb128	5
	.sleb128	11
	.byte		"SPORADIC"
	.byte		0
	.sleb128	6
	.sleb128	11
	.byte		"SRF"
	.byte		0
	.sleb128	7
	.sleb128	11
	.byte		"UNASSIGN"
	.byte		0
	.sleb128	8
	.sleb128	11
	.byte		"UNCONDITIONAL"
	.byte		0
	.sleb128	9
	.sleb128	0
.L506:
.L420:
	.sleb128	10
	.4byte		.L360
	.uleb128	102
	.uleb128	1
	.4byte		.L507-.L2
	.uleb128	4
	.sleb128	11
	.byte		"CONTINUE_AT_IT_POINT"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"START_FROM_BEGINNING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L507:
.L406:
	.sleb128	10
	.4byte		.L360
	.uleb128	87
	.uleb128	1
	.4byte		.L508-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINIF_CHANNEL_SUBSTATE_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINIF_CHANNEL_SLEEP_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINIF_CHANNEL_SLEEP_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"LINIF_CHANNEL_GOTO_SLEEP_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_FALSE"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_TRUE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L508:
.L379:
	.sleb128	10
	.4byte		.L360
	.uleb128	79
	.uleb128	1
	.4byte		.L509-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINIF_CHANNEL_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINIF_CHANNEL_OPERATIONAL"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINIF_CHANNEL_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L509:
.L401:
	.sleb128	10
	.4byte		.L360
	.uleb128	70
	.uleb128	1
	.4byte		.L510-.L2
	.uleb128	4
	.sleb128	11
	.byte		"NULL_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"ACTIVE_RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"ACTIVE_RUN_CONTINUOUS"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"ACTIVE_SCHEDULE_MANAGER_OFF"
	.byte		0
	.sleb128	3
	.sleb128	0
.L510:
.L423:
	.sleb128	10
	.4byte		.L360
	.uleb128	63
	.uleb128	1
	.4byte		.L511-.L2
	.uleb128	4
	.sleb128	11
	.byte		"RUN_CONTINUOUS"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L511:
.L459:
	.sleb128	10
	.4byte		.L501
	.uleb128	59
	.uleb128	13
	.4byte		.L512-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINTRCV_TRCV_MODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINTRCV_TRCV_MODE_STANDBY"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINTRCV_TRCV_MODE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L512:
.L469:
	.sleb128	10
	.4byte		.L501
	.uleb128	49
	.uleb128	13
	.4byte		.L513-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINTRCV_WU_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINTRCV_WU_NOT_SUPPORTED"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINTRCV_WU_BY_BUS"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"LINTRCV_WU_BY_PIN"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"LINTRCV_WU_INTERNALLY"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"LINTRCV_WU_RESET"
	.byte		0
	.sleb128	5
	.sleb128	11
	.byte		"LINTRCV_WU_POWER_ON"
	.byte		0
	.sleb128	6
	.sleb128	0
.L513:
.L474:
	.sleb128	10
	.4byte		.L501
	.uleb128	42
	.uleb128	13
	.4byte		.L514-.L2
	.uleb128	4
	.sleb128	11
	.byte		"LINTRCV_WUMODE_ENABLE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINTRCV_WUMODE_DISABLE"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINTRCV_WUMODE_CLEAR"
	.byte		0
	.sleb128	2
	.sleb128	0
.L514:
	.section	.debug_info,,n
.L300:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L299:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L300
.L298:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L299
.L304:
	.sleb128	13
	.byte		"LinIf_ConfigType"
	.byte		0
	.4byte		.L305
	.section	.debug_info,,n
.L303:
	.sleb128	14
	.4byte		.L304
	.section	.debug_info,,n
.L302:
	.sleb128	15
	.4byte		.L303
.L316:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L300
.L321:
	.sleb128	13
	.byte		"LinIfChannel"
	.byte		0
	.4byte		.L322
.L320:
	.sleb128	14
	.4byte		.L321
.L319:
	.sleb128	15
	.4byte		.L320
.L330:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L329:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L330
.L339:
	.sleb128	13
	.byte		"LinIfChannelReloc"
	.byte		0
	.4byte		.L340
.L338:
	.sleb128	14
	.4byte		.L339
.L337:
	.sleb128	15
	.4byte		.L338
.L346:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L345:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L346
.L344:
	.sleb128	14
	.4byte		.L345
.L356:
	.sleb128	13
	.byte		"LinIfChannelIdentifier"
	.byte		0
	.4byte		.L357
.L355:
	.sleb128	14
	.4byte		.L356
.L354:
	.sleb128	15
	.4byte		.L355
.L353:
	.sleb128	14
	.4byte		.L354
.L359:
	.sleb128	14
	.4byte		.L319
.L362:
	.sleb128	14
	.4byte		.L329
.L363:
	.sleb128	15
	.4byte		.L344
.L366:
	.sleb128	13
	.byte		"LinIf_ConfirmationULConfig_t"
	.byte		0
	.4byte		.L367
.L365:
	.sleb128	14
	.4byte		.L366
.L364:
	.sleb128	15
	.4byte		.L365
.L369:
	.sleb128	14
	.4byte		.L299
.L371:
	.sleb128	13
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L299
.L370:
	.sleb128	14
	.4byte		.L371
.L375:
	.sleb128	13
	.byte		"LinIf_LinTrcvDrvCalls_t"
	.byte		0
	.4byte		.L376
.L374:
	.sleb128	14
	.4byte		.L375
.L373:
	.sleb128	15
	.4byte		.L374
.L378:
	.sleb128	13
	.byte		"LinIf_ChannelState_t"
	.byte		0
	.4byte		.L379
.L377:
	.sleb128	14
	.4byte		.L378
.L382:
	.sleb128	13
	.byte		"LinIf_LinDrvCalls_t"
	.byte		0
	.4byte		.L383
.L381:
	.sleb128	14
	.4byte		.L382
.L380:
	.sleb128	15
	.4byte		.L381
.L386:
	.sleb128	13
	.byte		"LinIfChannelManager"
	.byte		0
	.4byte		.L387
.L385:
	.sleb128	15
	.4byte		.L386
.L384:
	.sleb128	14
	.4byte		.L385
.L391:
	.sleb128	13
	.byte		"LinIfFrame"
	.byte		0
	.4byte		.L392
.L390:
	.sleb128	14
	.4byte		.L391
.L389:
	.sleb128	15
	.4byte		.L390
.L395:
	.sleb128	13
	.byte		"LinIfScheduleTable"
	.byte		0
	.4byte		.L396
.L394:
	.sleb128	14
	.4byte		.L395
.L393:
	.sleb128	15
	.4byte		.L394
.L397:
	.sleb128	15
	.4byte		.L316
.L398:
	.sleb128	15
	.4byte		.L299
.L400:
	.sleb128	13
	.byte		"LinIfSchTableType_t"
	.byte		0
	.4byte		.L401
.L402:
	.sleb128	13
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L299
.L403:
	.sleb128	13
	.byte		"LinIf_BusStatusStruct"
	.byte		0
	.4byte		.L404
.L405:
	.sleb128	13
	.byte		"LinIf_ChannelSubState_t"
	.byte		0
	.4byte		.L406
.L408:
	.sleb128	13
	.byte		"Lin_StatusType"
	.byte		0
	.4byte		.L299
.L409:
	.sleb128	13
	.byte		"LinIf_frameStatusType"
	.byte		0
	.4byte		.L410
.L413:
	.sleb128	13
	.byte		"LinIfEntry"
	.byte		0
	.4byte		.L414
.L412:
	.sleb128	14
	.4byte		.L413
.L411:
	.sleb128	15
	.4byte		.L412
	.section	.debug_info,,n
.L415:
	.sleb128	16
	.4byte		.L416-.L2
	.4byte		.L299
	.section	.debug_info,,n
	.sleb128	17
	.uleb128	7
	.sleb128	0
.L416:
.L419:
	.sleb128	13
	.byte		"LinIfResumePosition_t"
	.byte		0
	.4byte		.L420
.L418:
	.sleb128	14
	.4byte		.L419
.L422:
	.sleb128	13
	.byte		"LinIfRunMode_t"
	.byte		0
	.4byte		.L423
.L421:
	.sleb128	14
	.4byte		.L422
.L425:
	.sleb128	13
	.byte		"LinTp_Mode"
	.byte		0
	.4byte		.L426
.L424:
	.sleb128	14
	.4byte		.L425
.L427:
	.sleb128	14
	.4byte		.L402
.L431:
	.sleb128	13
	.byte		"Lin_FrameCsModelType"
	.byte		0
	.4byte		.L299
.L430:
	.sleb128	14
	.4byte		.L431
.L433:
	.sleb128	13
	.byte		"LinIfFrameType_t"
	.byte		0
	.4byte		.L434
.L432:
	.sleb128	14
	.4byte		.L433
.L436:
	.sleb128	13
	.byte		"Lin_FrameDlType"
	.byte		0
	.4byte		.L299
.L435:
	.sleb128	14
	.4byte		.L436
.L438:
	.sleb128	13
	.byte		"Lin_FramePidType"
	.byte		0
	.4byte		.L299
.L437:
	.sleb128	14
	.4byte		.L438
.L440:
	.sleb128	13
	.byte		"PduIdType"
	.byte		0
	.4byte		.L329
.L439:
	.sleb128	14
	.4byte		.L440
.L442:
	.sleb128	13
	.byte		"Lin_FrameResponseType"
	.byte		0
	.4byte		.L299
.L441:
	.sleb128	14
	.4byte		.L442
.L443:
	.sleb128	16
	.4byte		.L444-.L2
	.4byte		.L369
	.sleb128	17
	.uleb128	7
	.sleb128	0
.L444:
.L447:
	.sleb128	13
	.byte		"LinIfSubstitutionFrames"
	.byte		0
	.4byte		.L448
.L446:
	.sleb128	14
	.4byte		.L447
.L445:
	.sleb128	15
	.4byte		.L446
.L452:
	.sleb128	13
	.byte		"LinIf_ConfirmationUL_t"
	.byte		0
	.4byte		.L453
.L451:
	.sleb128	14
	.4byte		.L452
	.section	.debug_info,,n
.L456:
	.sleb128	18
	.4byte		.L457-.L2
	.4byte		.L298
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	19
	.4byte		.L299
.L458:
	.sleb128	13
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L459
	.sleb128	19
	.4byte		.L458
	.sleb128	0
.L457:
.L455:
	.sleb128	15
	.4byte		.L456
.L461:
	.sleb128	18
	.4byte		.L462-.L2
	.4byte		.L298
	.byte		0x1
	.sleb128	19
	.4byte		.L299
.L463:
	.sleb128	15
	.4byte		.L458
	.sleb128	19
	.4byte		.L463
	.sleb128	0
.L462:
.L460:
	.sleb128	15
	.4byte		.L461
.L465:
	.sleb128	18
	.4byte		.L466-.L2
	.4byte		.L298
	.byte		0x1
	.sleb128	19
	.4byte		.L299
.L468:
	.sleb128	13
	.byte		"LinTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L469
.L467:
	.sleb128	15
	.4byte		.L468
	.sleb128	19
	.4byte		.L467
	.sleb128	0
.L466:
.L464:
	.sleb128	15
	.4byte		.L465
.L471:
	.sleb128	18
	.4byte		.L472-.L2
	.4byte		.L298
	.byte		0x1
	.sleb128	19
	.4byte		.L299
.L473:
	.sleb128	13
	.byte		"LinTrcv_TrcvWakeupModeType"
	.byte		0
	.4byte		.L474
	.sleb128	19
	.4byte		.L473
	.sleb128	0
.L472:
.L470:
	.sleb128	15
	.4byte		.L471
.L476:
	.sleb128	18
	.4byte		.L477-.L2
	.4byte		.L298
	.byte		0x1
	.sleb128	19
	.4byte		.L299
	.sleb128	0
.L477:
.L475:
	.sleb128	15
	.4byte		.L476
.L480:
	.sleb128	18
	.4byte		.L481-.L2
	.4byte		.L298
	.byte		0x1
	.sleb128	19
	.4byte		.L299
.L483:
	.sleb128	13
	.byte		"Lin_PduType"
	.byte		0
	.4byte		.L484
.L482:
	.sleb128	15
	.4byte		.L483
	.sleb128	19
	.4byte		.L482
	.sleb128	0
.L481:
.L479:
	.sleb128	15
	.4byte		.L480
.L486:
	.sleb128	18
	.4byte		.L487-.L2
	.4byte		.L298
	.byte		0x1
	.sleb128	19
	.4byte		.L299
	.sleb128	0
.L487:
.L485:
	.sleb128	15
	.4byte		.L486
.L489:
	.sleb128	18
	.4byte		.L490-.L2
	.4byte		.L298
	.byte		0x1
	.sleb128	19
	.4byte		.L299
	.sleb128	0
.L490:
.L488:
	.sleb128	15
	.4byte		.L489
.L492:
	.sleb128	18
	.4byte		.L493-.L2
	.4byte		.L298
	.byte		0x1
	.sleb128	19
	.4byte		.L299
	.sleb128	0
.L493:
.L491:
	.sleb128	15
	.4byte		.L492
.L495:
	.sleb128	18
	.4byte		.L496-.L2
	.4byte		.L408
	.byte		0x1
	.sleb128	19
	.4byte		.L299
.L497:
	.sleb128	15
	.4byte		.L398
	.sleb128	19
	.4byte		.L497
	.sleb128	0
.L496:
.L494:
	.sleb128	15
	.4byte		.L495
.L499:
	.sleb128	18
	.4byte		.L500-.L2
	.4byte		.L298
	.byte		0x1
	.sleb128	19
	.4byte		.L299
	.sleb128	0
.L500:
.L498:
	.sleb128	15
	.4byte		.L499
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L306:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L308:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),5
	.d2locend
.L314:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),3
	.d2locend
.L317:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo10),6
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),0
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo12),0
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),0
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo16),0
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),0
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),0
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo20),0
	.d2locend
.L323:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo33),31
	.d2locend
.L331:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo20),29
	.d2locend
.L341:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo16),30
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinIf_Init"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "LinIf_ConsistencyCheck","vstar_set"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "LinIf_ConsistencyCheck"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_Init.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_Init.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_Init.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_Init.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinIf\ssc\make\..\src\LinIf_Init.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
