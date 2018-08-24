#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinIf_ScheduleTableManager.c"
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
# static FUNC (LinIf_UserRequestConfirmation_t, LINIF_CODE) LinIf_getScheduleRequestConfirmationFunct(CONST (uint8, AUTOMATIC) channelIndex)
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_ScheduleTableManager.c"
        .d2line         55,59
#$$ld
.L312:

#$$bf	LinIf_getScheduleRequestConfirmationFunct,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
LinIf_getScheduleRequestConfirmationFunct:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# channelIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# channelIndex=r0 channelIndex=r3
	.d2prologue_end
# {
#     VAR (LinIf_UserRequestConfirmation_t, AUTOMATIC) functPointer;
# 
#     if(LinIf_GlobalConfig_p->LinIf_ConfirmationULConfig_p[channelIndex].ScheduleRequestConfirmationUL == LIN_SM)
	.d2line		59
	rlwinm		r4,r0,0,24,31		# channelIndex=r0
	lis		r3,LinIf_GlobalConfig_p@ha
.Llo2:
	lwz		r3,LinIf_GlobalConfig_p@l(r3)
	lwz		r3,16(r3)
	rlwinm		r5,r4,4,0,27
	se_slwi		r4,2
	subf		r4,r4,r5
	se_add		r3,r4
	lwz		r3,8(r3)
	se_cmpi		r3,0
	bc		0,2,.L279	# ne
#     {
#         functPointer = LinIf_LinSMConfirmationInterfaceConfig.User_ScheduleRequestConfirmation_p;
	.d2line		61
.Llo3:
	lis		r3,(LinIf_LinSMConfirmationInterfaceConfig+8)@ha
	lwz		r3,(LinIf_LinSMConfirmationInterfaceConfig+8)@l(r3)
.Llo5:
	mr		r3,r3		# functPointer=r3 functPointer=r3
	b		.L280
.L279:
#     }
#     else
#     {
#         functPointer = LinIf_ConfirmationInterfaceConfig_p[channelIndex].User_ScheduleRequestConfirmation_p;
	.d2line		65
.Llo6:
	rlwinm		r0,r0,0,24,31		# channelIndex=r0 channelIndex=r0
	lis		r3,LinIf_ConfirmationInterfaceConfig_p@ha
	lwz		r4,LinIf_ConfirmationInterfaceConfig_p@l(r3)
	rlwinm		r3,r0,4,0,27		# channelIndex=r0
	se_slwi		r0,2		# channelIndex=r0 channelIndex=r0
	subf		r0,r0,r3		# channelIndex=r0 channelIndex=r0
	se_add		r4,r0		# channelIndex=r0
	lwz		r3,8(r4)
.Llo7:
	mr		r3,r3		# functPointer=r3 functPointer=r3
.L280:
#     }
#     return functPointer;
	.d2line		67
.Llo4:
	mr		r3,r3		# functPointer=r3 functPointer=r3
# }
	.d2line		68
	.d2epilogue_begin
.Llo8:
	lwz		r0,20(r1)		# channelIndex=r0
	mtspr		lr,r0		# channelIndex=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L313:
	.type		LinIf_getScheduleRequestConfirmationFunct,@function
	.size		LinIf_getScheduleRequestConfirmationFunct,.-LinIf_getScheduleRequestConfirmationFunct
# Number of nodes = 35

# Allocations for LinIf_getScheduleRequestConfirmationFunct
#	?a4		channelIndex
#	?a5		$$84
#	?a6		$$83
#	?a7		functPointer
# static FUNC (void, LINIF_CODE) LinIf_STM_SwitchScheduleTable(CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_DATA) crntChannel_p)
	.align		1
	.section	.text_vle
        .d2line         80,32
#$$ld
.L330:

#$$bf	LinIf_STM_SwitchScheduleTable,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
LinIf_STM_SwitchScheduleTable:
.Llo9:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r6,r3		# crntChannel_p=r6 crntChannel_p=r3
	.d2prologue_end
# {
#     /* Variable for indexing of Schedule Table */
#     VAR(LinIf_SchHandleType, AUTOMATIC) SchTableIndex;
# 
#     /* Variable for Channel index */
#     CONST (uint8, AUTOMATIC) channelIndex = crntChannel_p->LinIfChannelIndex;
	.d2line		86
	lbz		r0,12(r6)		# crntChannel_p=r6
.Llo19:
	mr		r0,r0		# channelIndex=r0 channelIndex=r0
# 
#     /* Pointer to hold the currently executing Schedule table */
#     P2CONST (LinIfScheduleTable, AUTOMATIC, LINIF_APPL_DATA) CrntScheduleTable_p;
# 
#     /* Variable for schedule table index */
#     VAR(LinIf_SchHandleType, AUTOMATIC) currentScheduleIndex;
# 
#     /* Pointer to Internal variables LinIfChannelManager */
#     CONSTP2VAR (LinIfChannelManager, AUTOMATIC, LINIF_APPL_DATA) channelManager_p = crntChannel_p->LinIf_channelManager_p;
	.d2line		95
.Llo36:
	lwz		r3,28(r6)		# channelManager_p=r3 crntChannel_p=r6
.Llo10:
	mr		r3,r3		# channelManager_p=r3 channelManager_p=r3
# 
#     /* Get the schedule table index to be executed */
#     if (LINIF_NO_PENDING != channelManager_p->LinIf_RunOnceSchTableRequested)
	.d2line		98
	lbz		r4,5(r3)		# channelManager_p=r3
	se_cmpi		r4,0
	bc		1,2,.L284	# eq
#     {
#         /* Assign the schedule index to the pending Run-Once schedule index */
#         SchTableIndex = channelManager_p->LinIf_RunOnceSchTableRequested;
	.d2line		101
.Llo11:
	lbz		r4,5(r3)		# channelManager_p=r3
.Llo13:
	mr		r4,r4		# SchTableIndex=r4 SchTableIndex=r4
# 
#         /* Clear the Pending State */
#         channelManager_p->LinIf_RunOnceSchTableRequested = LINIF_NO_PENDING;
	.d2line		104
	diab.li		r5,0
	stb		r5,5(r3)		# channelManager_p=r3
#         crntChannel_p->LinIf_channelManager_p->LinIf_ScheduleTableType = ACTIVE_RUN_ONCE;
	.d2line		105
	diab.li		r7,1
	lwz		r5,28(r6)		# crntChannel_p=r6
	stw		r7,16(r5)
	b		.L285
.L284:
#     }
#     else
#     {
#         /* Assign the schedule index to the latest Run-continuous schedule index */
#         SchTableIndex = channelManager_p->LinIf_RunContSchTableIndexRequested; /*[LINIF397]*/
	.d2line		110
.Llo14:
	lbz		r4,4(r3)		# SchTableIndex=r4 channelManager_p=r3
.Llo15:
	mr		r4,r4		# SchTableIndex=r4 SchTableIndex=r4
# 
#         if (SchTableIndex==(LinIf_SchHandleType)NULL_SCHEDULE)
	.d2line		112
	rlwinm		r5,r4,0,24,31		# SchTableIndex=r4
	se_cmpi		r5,0
	bc		0,2,.L286	# ne
#         {
#             crntChannel_p->LinIf_channelManager_p->LinIf_ScheduleTableType = NULL_SCHEDULE;
	.d2line		114
	diab.li		r7,0
	lwz		r5,28(r6)		# crntChannel_p=r6
	stw		r7,16(r5)
	b		.L285
.L286:
#         }
#         else
#         {
#             channelManager_p->LinIf_ScheduleTableType = ACTIVE_RUN_CONTINUOUS;
	.d2line		118
	diab.li		r5,2
	stw		r5,16(r3)		# channelManager_p=r3
.L285:
#         }
#     }
# 
#     channelManager_p->LinIf_NewScheduleTableType = channelManager_p->LinIf_ScheduleTableType;
	.d2line		122
	lwz		r5,16(r3)		# currentScheduleIndex=r5 channelManager_p=r3
.Llo25:
	stw		r5,0(r3)		# channelManager_p=r3 currentScheduleIndex=r5
# 
#     /* Get the current schedule table index */
#     currentScheduleIndex = channelManager_p->LinIf_ScheduleTableIndex;
	.d2line		125
	lbz		r5,12(r3)		# currentScheduleIndex=r5 channelManager_p=r3
	mr		r5,r5		# currentScheduleIndex=r5 currentScheduleIndex=r5
# 
#     /* Get the new schedule table to be executed */
#     channelManager_p->LinIf_ScheduleTableIndex = SchTableIndex; /*[LINIF028]*/
	.d2line		128
	stb		r4,12(r3)		# channelManager_p=r3 SchTableIndex=r4
# 
# #if ( LINIF_ENABLE_SCHEDULE_TABLE_MANAGER == STD_ON )
# #if ( LINIF_TP_SUPPORTED == STD_ON )
#     channelManager_p->LinIf_SchTableLastRequested = SchTableIndex;
# #endif
# #endif
# 
#     /* Check whether the new request is not on-going schedule table */
#     if (SchTableIndex != currentScheduleIndex)
	.d2line		137
	rlwinm		r3,r4,0,24,31		# channelManager_p=r3 SchTableIndex=r4
	rlwinm		r5,r5,0,24,31		# currentScheduleIndex=r5 currentScheduleIndex=r5
	se_cmp		r3,r5		# channelManager_p=r3 currentScheduleIndex=r5
	bc		1,2,.L283	# eq
#     {
#         /* Get the schedule table pointer */
#         CrntScheduleTable_p = &(LinIf_ConfigChannel_Reloc_p[channelIndex].LinIfScheduleTable_p[SchTableIndex]);
	.d2line		140
.Llo26:
	rlwinm		r5,r0,0,24,31		# currentScheduleIndex=r5 channelIndex=r0
.Llo27:
	lis		r3,LinIf_ConfigChannel_Reloc_p@ha		# channelManager_p=r3
.Llo29:
	lwz		r3,LinIf_ConfigChannel_Reloc_p@l(r3)		# channelManager_p=r3 channelManager_p=r3
	rlwinm		r7,r5,5,0,26		# CrntScheduleTable_p=r7 currentScheduleIndex=r5
.Llo22:
	se_slwi		r5,3		# currentScheduleIndex=r5 currentScheduleIndex=r5
	subf		r5,r5,r7		# currentScheduleIndex=r5 currentScheduleIndex=r5 CrntScheduleTable_p=r7
	se_add		r3,r5		# channelManager_p=r3 channelManager_p=r3 currentScheduleIndex=r5
	lwz		r7,8(r3)		# CrntScheduleTable_p=r7 channelManager_p=r3
	rlwinm		r3,r4,0,24,31		# channelManager_p=r3 SchTableIndex=r4
	e_mulli		r3,r3,20		# channelManager_p=r3 channelManager_p=r3
	se_add		r3,r7		# channelManager_p=r3 channelManager_p=r3 CrntScheduleTable_p=r7
.Llo30:
	mr		r7,r3		# CrntScheduleTable_p=r7 CrntScheduleTable_p=r3
# 
#         /*State of sporadic frames don't be cleared*/ /*[LINIF029]*/
#         if ((CrntScheduleTable_p->LinIfRunMode == RUN_ONCE) || (CrntScheduleTable_p->LinIfResumePosition == START_FROM_BEGINNING))
	.d2line		143
.Llo23:
	lwz		r3,4(r7)		# channelManager_p=r3 CrntScheduleTable_p=r7
.Llo31:
	se_cmpi		r3,1		# channelManager_p=r3
	bc		1,2,.L293	# eq
.Llo24:
	lwz		r3,0(r7)		# channelManager_p=r3 CrntScheduleTable_p=r7
.Llo32:
	se_cmpi		r3,1		# channelManager_p=r3
	bc		0,2,.L290	# ne
.L293:
#         {
#             /* Schedule entry will be pointing to the first schedule entry */
#             LinIf_ConfigChannel_Reloc_p[channelIndex].LinIf_ScheduleTableEntry_p[SchTableIndex] = LINIF_FIRST_ENTRY;
	.d2line		146
.Llo16:
	rlwinm		r0,r0,0,24,31		# channelIndex=r0 channelIndex=r0
.Llo37:
	diab.li		r5,0		# currentScheduleIndex=r5
.Llo28:
	lis		r3,LinIf_ConfigChannel_Reloc_p@ha		# channelManager_p=r3
.Llo33:
	lwz		r31,LinIf_ConfigChannel_Reloc_p@l(r3)		# channelManager_p=r3
	rlwinm		r3,r0,5,0,26		# channelManager_p=r3 channelIndex=r0
	se_slwi		r0,3		# channelIndex=r0 channelIndex=r0
	subf		r0,r0,r3		# channelIndex=r0 channelIndex=r0 channelManager_p=r3
	se_add		r31,r0		# channelIndex=r0
	lwz		r3,20(r31)		# channelManager_p=r3
.Llo17:
	rlwinm		r4,r4,0,24,31		# SchTableIndex=r4 SchTableIndex=r4
.Llo18:
	stbx		r5,r3,r4		# channelManager_p=r3 currentScheduleIndex=r5
.L290:
	.section	.text_vle
.L357:
#         }
#         else
#         {
#             /* Schedule entry will be pointing to the last executed schedule entry */ /*[LINIF485]*/
#         }
# 
# #if ( LINIF_ENABLE_CONFIRMATIONS == STD_ON )
#         {
#             CONST (LinIf_UserRequestConfirmation_t, LINIF_APPL_DATA) user_scheduleRequestConfirmation =
	.d2line		155
.Llo20:
	lbz		r3,12(r6)		# channelManager_p=r3 crntChannel_p=r6
	bl		LinIf_getScheduleRequestConfirmationFunct
	.d2line		159
.Llo34:
	mr.		r0,r3		# user_scheduleRequestConfirmation=?a12 user_scheduleRequestConfirmation=r3
#                 LinIf_getScheduleRequestConfirmationFunct(crntChannel_p->LinIfChannelIndex);
# 
#             /* Confirmation call back to LINSM or CDD about the schedule switching */
#             if (user_scheduleRequestConfirmation != NULL_PTR)
.Llo21:
	bc		1,2,.L283	# eq
#             {
#                 user_scheduleRequestConfirmation(crntChannel_p->ExternalChannelIndex, CrntScheduleTable_p->LinIfScheduleTableIndex);
	.d2line		161
.Llo35:
	mtspr		ctr,r0		# user_scheduleRequestConfirmation=ctr user_scheduleRequestConfirmation=r0
	lbz		r3,13(r6)		# channelManager_p=r3 crntChannel_p=r6
	lbz		r4,12(r7)		# SchTableIndex=r4 CrntScheduleTable_p=r7
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
	.section	.text_vle
.L358:
.L283:
#                 /*[LINIF495]*/
#             }
#         }
# #endif
#     }
#     else
#     {
#         /* Do nothing */
#     }
# } /* End of LinIf_STM_SwitchScheduleTable() */
	.d2line		171
	.d2epilogue_begin
.Llo12:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# user_scheduleRequestConfirmation=r0
	mtspr		lr,r0		# user_scheduleRequestConfirmation=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L331:
	.type		LinIf_STM_SwitchScheduleTable,@function
	.size		LinIf_STM_SwitchScheduleTable,.-LinIf_STM_SwitchScheduleTable
# Number of nodes = 161

# Allocations for LinIf_STM_SwitchScheduleTable
#	?a4		crntChannel_p
#	?a5		$$86
#	?a6		$$85
#	?a7		SchTableIndex
#	?a8		channelIndex
#	?a9		CrntScheduleTable_p
#	?a10		currentScheduleIndex
#	?a11		channelManager_p
#	?a12		user_scheduleRequestConfirmation
# FUNC (void, LINIF_CODE) LinIf_STM_HandleScheduleTable(CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_DATA) crntChannel_p)
	.align		2
	.section	.text_vle
        .d2line         186,25
#$$ld
.L366:

#$$bf	LinIf_STM_HandleScheduleTable,interprocedural,rasave,nostackparams
	.globl		LinIf_STM_HandleScheduleTable
	.d2_cfa_start __cie
LinIf_STM_HandleScheduleTable:
.Llo38:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo51:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# channelIndex=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# crntChannel_p=r3 crntChannel_p=r3
	.d2prologue_end
# {
#     /* Pointer to Internal variables LinIfChannelManager */
#     CONSTP2VAR (LinIfChannelManager, AUTOMATIC, LINIF_APPL_DATA) channelManager_p = crntChannel_p->LinIf_channelManager_p;
	.d2line		189
	lwz		r4,28(r3)		# channelManager_p=r4 crntChannel_p=r3
.Llo46:
	mr		r4,r4		# channelManager_p=r4 channelManager_p=r4
# 
#     /* Get the index */
#     VAR(LinIf_SchHandleType, AUTOMATIC) currentScheduleIndex = channelManager_p->LinIf_ScheduleTableIndex;
	.d2line		192
	lbz		r31,12(r4)		# currentScheduleIndex=r31 channelManager_p=r4
	mr		r31,r31		# currentScheduleIndex=r31 currentScheduleIndex=r31
# 
#     /* Variable for Channel index */
#     CONST (uint8, AUTOMATIC) channelIndex = crntChannel_p->LinIfChannelIndex;
	.d2line		195
	lbz		r0,12(r3)		# channelIndex=r0 crntChannel_p=r3
	mr		r0,r0		# channelIndex=r0 channelIndex=r0
# 
#     /* Pointer to hold the current channel relocatable config */
#     CONSTP2CONST(LinIfChannelReloc,AUTOMATIC, LINIF_CONST)LinIf_Channel_Reloc_p = &(LinIf_ConfigChannel_Reloc_p[channelIndex]);
	.d2line		198
	rlwinm		r0,r0,0,24,31		# channelIndex=r0 channelIndex=r0
	lis		r6,LinIf_ConfigChannel_Reloc_p@ha		# CrntScheduleTable_p=r6
.Llo57:
	lwz		r5,LinIf_ConfigChannel_Reloc_p@l(r6)		# LinIf_Channel_Reloc_p=r5 CrntScheduleTable_p=r6
.Llo56:
	rlwinm		r7,r0,5,0,26		# channelIndex=r0
	se_slwi		r0,3		# channelIndex=r0 channelIndex=r0
	subf		r0,r0,r7		# channelIndex=r0 channelIndex=r0
	se_add		r5,r0		# LinIf_Channel_Reloc_p=r5 LinIf_Channel_Reloc_p=r5 channelIndex=r0
	mr		r5,r5		# LinIf_Channel_Reloc_p=r5 LinIf_Channel_Reloc_p=r5
# 
#     /* PRQA S 3204 3 */ /* Variable cannot be const, may be modified several times. MISRA C ADC R5: Alternative build configurations */
#     /* Get the Schedule table of the current channel */
#     P2CONST (LinIfScheduleTable, AUTOMATIC, LINIF_APPL_DATA) CrntScheduleTable_p =
	.d2line		202
	lwz		r6,LinIf_ConfigChannel_Reloc_p@l(r6)		# CrntScheduleTable_p=r6 CrntScheduleTable_p=r6
	se_add		r6,r0		# CrntScheduleTable_p=r6 CrntScheduleTable_p=r6 channelIndex=r0
	lwz		r7,8(r6)		# CrntScheduleTable_p=r6
	rlwinm		r0,r31,0,24,31		# channelIndex=r0 currentScheduleIndex=r31
	e_mulli		r6,r0,20		# CrntScheduleTable_p=r6 channelIndex=r0
	se_add		r6,r7		# CrntScheduleTable_p=r6 CrntScheduleTable_p=r6
	mr		r6,r6		# CrntScheduleTable_p=r6 CrntScheduleTable_p=r6
#         &(LinIf_ConfigChannel_Reloc_p[channelIndex].LinIfScheduleTable_p[currentScheduleIndex]);
# 
#     /* Reset the entry to first entry in the table if all entries in the table are executed */
#     if (LinIf_Channel_Reloc_p->LinIf_ScheduleTableEntry_p[currentScheduleIndex] >= CrntScheduleTable_p->LinIfMaxSchEntry)
	.d2line		206
	lwz		r7,20(r5)		# LinIf_Channel_Reloc_p=r5
	lbzx		r7,r7,r0
	lbz		r0,13(r6)		# channelIndex=r0 CrntScheduleTable_p=r6
	se_cmp		r7,r0		# channelIndex=r0
	bc		1,0,.L301	# lt
#     {
#         /* Reset the schedule entry to the first entry */
#         LinIf_Channel_Reloc_p->LinIf_ScheduleTableEntry_p[currentScheduleIndex] = LINIF_FIRST_ENTRY;
	.d2line		209
.Llo39:
	diab.li		r0,0		# channelIndex=r0
.Llo52:
	lwz		r4,20(r5)		# channelManager_p=r4 LinIf_Channel_Reloc_p=r5
.Llo47:
	rlwinm		r31,r31,0,24,31		# currentScheduleIndex=r31 currentScheduleIndex=r31
.Llo50:
	stbux		r0,r4,r31		# channelManager_p=r4 channelIndex=r0
# 
#         /* Reset the collision detection flag unconditionally */
#         LinIf_Channel_Reloc_p->ETCollisionDetectd_p[currentScheduleIndex] = FALSE;
	.d2line		212
	lwz		r4,12(r5)		# channelManager_p=r4 LinIf_Channel_Reloc_p=r5
	stbx		r0,r4,r31		# channelManager_p=r4 channelIndex=r0
# 
# #if ( LINIF_ENABLE_SCHEDULE_TABLE_MANAGER == STD_ON )
#         /* Switch the schedule table as the current sch table is completed */
#         LinIf_STM_SwitchScheduleTable (crntChannel_p); /*[LINIF393]*/
	.d2line		216
.Llo40:
	mr		r3,r3		# crntChannel_p=r3 crntChannel_p=r3
.Llo41:
	bl		LinIf_STM_SwitchScheduleTable
.Llo48:
	b		.L300
.L301:
# #else
#         if (RUN_ONCE == CrntScheduleTable_p->LinIfRunMode)
#         {
#             /* Switch the schedule table to Null Schedule Table */
#             channelManager_p->LinIf_ScheduleTableIndex = NULL_SCHEDULE;
#         }
# #endif /* End of LINIF_ENABLE_SCHEDULE_TABLE_MANAGER  */
#     }
# #if ( LINIF_ENABLE_SCHEDULE_TABLE_MANAGER == STD_ON )
#     else if (channelManager_p->LinIf_NewScheduleTableType == NULL_SCHEDULE)
	.d2line		226
.Llo42:
	lwz		r0,0(r4)		# channelIndex=r0 channelManager_p=r4
.Llo53:
	se_cmpi		r0,0		# channelIndex=r0
	bc		0,2,.L303	# ne
#     {
#         LinIf_STM_SwitchScheduleTable (crntChannel_p);        /* NULL_SCHEDULE requests must be executed anytime */
	.d2line		228
.Llo49:
	mr		r3,r3		# crntChannel_p=r3 crntChannel_p=r3
.Llo43:
	bl		LinIf_STM_SwitchScheduleTable
	b		.L300
.L303:
#     }
#     else if (CrntScheduleTable_p->LinIfRunMode == RUN_CONTINUOUS)
	.d2line		230
.Llo44:
	lwz		r0,4(r6)		# channelIndex=r0 CrntScheduleTable_p=r6
.Llo54:
	se_cmpi		r0,0		# channelIndex=r0
	bc		0,2,.L300	# ne
#     {
#         LinIf_STM_SwitchScheduleTable (crntChannel_p);
	.d2line		232
.Llo55:
	mr		r3,r3		# crntChannel_p=r3 crntChannel_p=r3
.Llo45:
	bl		LinIf_STM_SwitchScheduleTable
.L300:
#     }
#     else
#     {
#         /* no special treatment */
#     }
# #endif /* End of LINIF_ENABLE_SCHEDULE_TABLE_MANAGER */
# } /* End of LinIf_STM_HandleScheduleTable() */
	.d2line		239
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# channelIndex=r0
	mtspr		lr,r0		# channelIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L367:
	.type		LinIf_STM_HandleScheduleTable,@function
	.size		LinIf_STM_HandleScheduleTable,.-LinIf_STM_HandleScheduleTable
# Number of nodes = 102

# Allocations for LinIf_STM_HandleScheduleTable
#	?a4		crntChannel_p
#	?a5		$$88
#	?a6		$$87
#	?a7		channelManager_p
#	?a8		currentScheduleIndex
#	?a9		channelIndex
#	?a10		LinIf_Channel_Reloc_p
#	?a11		CrntScheduleTable_p

# Allocations for module
	.section	.text_vle
	.0byte		.L392
	.section	.text_vle
#$$ld
.L5:
.L541:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L399:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Types.h"
.L386:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Private.h"
.L314:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_ScheduleTableManager.c"
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	12
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
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
	.uleb128	5
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
	.uleb128	38
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
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_ScheduleTableManager.c"
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
.L323:
	.sleb128	2
	.4byte		.L311-.L2
	.byte		"LinIf_getScheduleRequestConfirmationFunct"
	.byte		0
	.4byte		.L314
	.uleb128	55
	.uleb128	59
	.4byte		.L315
	.byte		0x1
	.4byte		.L312
	.4byte		.L313
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L314
	.uleb128	55
	.uleb128	59
	.byte		"channelIndex"
	.byte		0
	.4byte		.L324
	.4byte		.L325
	.section	.debug_info,,n
.L326:
	.sleb128	4
	.4byte		.L314
	.uleb128	57
	.uleb128	54
	.byte		"functPointer"
	.byte		0
	.4byte		.L315
	.4byte		.L327
	.section	.debug_info,,n
	.sleb128	0
.L311:
	.section	.debug_info,,n
.L332:
	.sleb128	5
	.4byte		.L329-.L2
	.byte		"LinIf_STM_SwitchScheduleTable"
	.byte		0
	.4byte		.L314
	.uleb128	80
	.uleb128	32
	.byte		0x1
	.4byte		.L330
	.4byte		.L331
	.sleb128	3
	.4byte		.L314
	.uleb128	80
	.uleb128	32
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L333
	.4byte		.L338
.L339:
	.sleb128	4
	.4byte		.L314
	.uleb128	83
	.uleb128	41
	.byte		"SchTableIndex"
	.byte		0
	.4byte		.L322
	.4byte		.L340
.L341:
	.sleb128	4
	.4byte		.L314
	.uleb128	86
	.uleb128	30
	.byte		"channelIndex"
	.byte		0
	.4byte		.L324
	.4byte		.L342
.L343:
	.sleb128	4
	.4byte		.L314
	.uleb128	89
	.uleb128	62
	.byte		"CrntScheduleTable_p"
	.byte		0
	.4byte		.L344
	.4byte		.L348
.L349:
	.sleb128	4
	.4byte		.L314
	.uleb128	92
	.uleb128	41
	.byte		"currentScheduleIndex"
	.byte		0
	.4byte		.L322
	.4byte		.L350
.L351:
	.sleb128	4
	.4byte		.L314
	.uleb128	95
	.uleb128	66
	.byte		"channelManager_p"
	.byte		0
	.4byte		.L352
	.4byte		.L356
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L360
	.4byte		.L357
	.4byte		.L358
.L361:
	.sleb128	4
	.4byte		.L314
	.uleb128	155
	.uleb128	70
	.byte		"user_scheduleRequestConfirmation"
	.byte		0
	.4byte		.L362
	.4byte		.L363
	.section	.debug_info,,n
	.sleb128	0
.L360:
	.section	.debug_info,,n
	.sleb128	0
.L329:
	.section	.debug_info,,n
.L368:
	.sleb128	7
	.4byte		.L365-.L2
	.byte		"LinIf_STM_HandleScheduleTable"
	.byte		0
	.4byte		.L314
	.uleb128	186
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L366
	.4byte		.L367
	.sleb128	3
	.4byte		.L314
	.uleb128	186
	.uleb128	25
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L333
	.4byte		.L369
.L370:
	.sleb128	4
	.4byte		.L314
	.uleb128	189
	.uleb128	66
	.byte		"channelManager_p"
	.byte		0
	.4byte		.L352
	.4byte		.L371
.L372:
	.sleb128	4
	.4byte		.L314
	.uleb128	192
	.uleb128	41
	.byte		"currentScheduleIndex"
	.byte		0
	.4byte		.L322
	.4byte		.L373
.L374:
	.sleb128	4
	.4byte		.L314
	.uleb128	195
	.uleb128	30
	.byte		"channelIndex"
	.byte		0
	.4byte		.L324
	.4byte		.L375
.L376:
	.sleb128	4
	.4byte		.L314
	.uleb128	198
	.uleb128	59
	.byte		"LinIf_Channel_Reloc_p"
	.byte		0
	.4byte		.L377
	.4byte		.L382
.L383:
	.sleb128	4
	.4byte		.L314
	.uleb128	202
	.uleb128	62
	.byte		"CrntScheduleTable_p"
	.byte		0
	.4byte		.L344
	.4byte		.L384
	.section	.debug_info,,n
	.sleb128	0
.L365:
	.section	.debug_info,,n
.L385:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L386
	.uleb128	220
	.uleb128	63
	.byte		"LinIf_GlobalConfig_p"
	.byte		0
	.4byte		.L387
	.0byte		.L385
.L391:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L386
	.uleb128	228
	.uleb128	64
	.byte		"LinIf_ConfigChannel_Reloc_p"
	.byte		0
	.4byte		.L378
.L392:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L386
	.uleb128	247
	.uleb128	64
	.byte		"LinIf_LinSMConfirmationInterfaceConfig"
	.byte		0
	.4byte		.L393
	.section	.debug_info,,n
.L396:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L386
	.uleb128	248
	.uleb128	89
	.byte		"LinIf_ConfirmationInterfaceConfig_p"
	.byte		0
	.4byte		.L397
	.section	.debug_info,,n
.L390:
	.sleb128	9
	.4byte		.L399
	.uleb128	322
	.uleb128	1
	.4byte		.L400-.L2
	.uleb128	20
	.section	.debug_info,,n
.L252:
	.sleb128	10
	.byte		"MaxLinIfChannel"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L253:
	.sleb128	10
	.byte		"LinIfChannel_p"
	.byte		0
	.4byte		.L378
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L254:
	.sleb128	10
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L255:
	.sleb128	10
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L256:
	.sleb128	10
	.byte		"LinIf_ConfirmationULConfig_p"
	.byte		0
	.4byte		.L408
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L400:
.L337:
	.sleb128	9
	.4byte		.L399
	.uleb128	322
	.uleb128	1
	.4byte		.L412-.L2
	.uleb128	32
.L240:
	.sleb128	10
	.byte		"LinTrcvDrvCalls_p"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L241:
	.sleb128	10
	.byte		"WakeupSourceIdLin"
	.byte		0
	.4byte		.L405
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L242:
	.sleb128	10
	.byte		"WakeupSourceIdTrcv"
	.byte		0
	.4byte		.L405
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L243:
	.sleb128	10
	.byte		"LinIfChannelIndex"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L244:
	.sleb128	10
	.byte		"ExternalChannelIndex"
	.byte		0
	.4byte		.L417
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L245:
	.sleb128	10
	.byte		"LinIfDelayForSleep"
	.byte		0
	.4byte		.L405
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L246:
	.sleb128	10
	.byte		"LinIfStartupState"
	.byte		0
	.4byte		.L418
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L247:
	.sleb128	10
	.byte		"LinDrvCalls_p"
	.byte		0
	.4byte		.L421
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L248:
	.sleb128	10
	.byte		"LinIf_channelManager_p"
	.byte		0
	.4byte		.L352
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L412:
.L381:
	.sleb128	9
	.4byte		.L399
	.uleb128	322
	.uleb128	1
	.4byte		.L425-.L2
	.uleb128	24
.L233:
	.sleb128	10
	.byte		"LinIfMaxLinFrames"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L234:
	.sleb128	10
	.byte		"LinIfMaxSchedules"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L235:
	.sleb128	10
	.byte		"LinIfFrame_p"
	.byte		0
	.4byte		.L426
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L236:
	.sleb128	10
	.byte		"LinIfScheduleTable_p"
	.byte		0
	.4byte		.L344
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L237:
	.sleb128	10
	.byte		"ETCollisionDetectd_p"
	.byte		0
	.4byte		.L430
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L238:
	.sleb128	10
	.byte		"SPPendingRequest_p"
	.byte		0
	.4byte		.L430
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L239:
	.sleb128	10
	.byte		"LinIf_ScheduleTableEntry_p"
	.byte		0
	.4byte		.L432
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L425:
.L355:
	.sleb128	9
	.4byte		.L399
	.uleb128	322
	.uleb128	1
	.4byte		.L433-.L2
	.uleb128	48
.L223:
	.sleb128	10
	.byte		"LinIf_NewScheduleTableType"
	.byte		0
	.4byte		.L434
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L224:
	.sleb128	10
	.byte		"LinIf_RunContSchTableIndexRequested"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L225:
	.sleb128	10
	.byte		"LinIf_RunOnceSchTableRequested"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L226:
	.sleb128	10
	.byte		"LinIf_EntryDelayCounter"
	.byte		0
	.4byte		.L402
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L227:
	.sleb128	10
	.byte		"LinIf_SleepDelayCounter"
	.byte		0
	.4byte		.L406
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L228:
	.sleb128	10
	.byte		"LinIf_ScheduleTableIndex"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L229:
	.sleb128	10
	.byte		"LinIf_ScheduleTableType"
	.byte		0
	.4byte		.L434
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L230:
	.sleb128	10
	.byte		"LinIf_BusStatus"
	.byte		0
	.4byte		.L436
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L231:
	.sleb128	10
	.byte		"LinIf_ChannelSubState"
	.byte		0
	.4byte		.L438
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L232:
	.sleb128	10
	.byte		"LinIf_ChannelState"
	.byte		0
	.4byte		.L419
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L433:
.L437:
	.sleb128	9
	.4byte		.L399
	.uleb128	322
	.uleb128	1
	.4byte		.L440-.L2
	.uleb128	20
.L219:
	.sleb128	10
	.byte		"Lin_DriverGetStatusVal"
	.byte		0
	.4byte		.L441
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L220:
	.sleb128	10
	.byte		"LinIf_frameStatus"
	.byte		0
	.4byte		.L442
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L221:
	.sleb128	10
	.byte		"LinIf_frameEntry_p"
	.byte		0
	.4byte		.L444
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L222:
	.sleb128	10
	.byte		"LinIf_RxData"
	.byte		0
	.4byte		.L448
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L440:
.L347:
	.sleb128	9
	.4byte		.L399
	.uleb128	322
	.uleb128	1
	.4byte		.L450-.L2
	.uleb128	20
.L213:
	.sleb128	10
	.byte		"LinIfResumePosition"
	.byte		0
	.4byte		.L451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L214:
	.sleb128	10
	.byte		"LinIfRunMode"
	.byte		0
	.4byte		.L454
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L215:
	.sleb128	10
	.byte		"LinIfScheduleMode"
	.byte		0
	.4byte		.L457
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L216:
	.sleb128	10
	.byte		"LinIfScheduleTableIndex"
	.byte		0
	.4byte		.L460
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L217:
	.sleb128	10
	.byte		"LinIfMaxSchEntry"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L218:
	.sleb128	10
	.byte		"LinIfEntry_p"
	.byte		0
	.4byte		.L444
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L450:
.L447:
	.sleb128	9
	.4byte		.L399
	.uleb128	322
	.uleb128	1
	.4byte		.L461-.L2
	.uleb128	8
.L210:
	.sleb128	10
	.byte		"LinIfDelay"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L211:
	.sleb128	10
	.byte		"LinIfCollisionResolvingRef"
	.byte		0
	.4byte		.L460
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L212:
	.sleb128	10
	.byte		"LinIfFrameRef"
	.byte		0
	.4byte		.L426
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L461:
.L429:
	.sleb128	9
	.4byte		.L399
	.uleb128	322
	.uleb128	1
	.4byte		.L462-.L2
	.uleb128	32
.L196:
	.sleb128	10
	.byte		"LinIfChecksumType"
	.byte		0
	.4byte		.L463
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L197:
	.sleb128	10
	.byte		"LinIfFrameType"
	.byte		0
	.4byte		.L465
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L198:
	.sleb128	10
	.byte		"LinIfLength"
	.byte		0
	.4byte		.L468
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L199:
	.sleb128	10
	.byte		"LinIfPid"
	.byte		0
	.4byte		.L470
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L200:
	.sleb128	10
	.byte		"LinIfTxConfirmationId"
	.byte		0
	.4byte		.L472
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L201:
	.sleb128	10
	.byte		"LinIfPduDirection"
	.byte		0
	.4byte		.L474
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L202:
	.sleb128	10
	.byte		"LinIfFixedFrameSduData"
	.byte		0
	.4byte		.L476
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L203:
	.sleb128	10
	.byte		"LinIfRxTxTargetPduRef"
	.byte		0
	.4byte		.L472
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L204:
	.sleb128	10
	.byte		"LinIfSubsFrames_p"
	.byte		0
	.4byte		.L478
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L205:
	.sleb128	10
	.byte		"LinIfNoOfSubEntry"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L206:
	.sleb128	10
	.byte		"LinIfFunctionIndex"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L462:
.L481:
	.sleb128	9
	.4byte		.L399
	.uleb128	322
	.uleb128	1
	.4byte		.L482-.L2
	.uleb128	2
.L194:
	.sleb128	10
	.byte		"LinIfSubFrameIndex"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L195:
	.sleb128	10
	.byte		"LinIfSubFramePriority"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L482:
.L411:
	.sleb128	9
	.4byte		.L399
	.uleb128	322
	.uleb128	1
	.4byte		.L483-.L2
	.uleb128	12
.L191:
	.sleb128	10
	.byte		"GotoSleepConfirmationUL"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L192:
	.sleb128	10
	.byte		"WakeupConfirmationUL"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L193:
	.sleb128	10
	.byte		"ScheduleRequestConfirmationUL"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L483:
.L395:
	.sleb128	9
	.4byte		.L399
	.uleb128	293
	.uleb128	1
	.4byte		.L487-.L2
	.uleb128	12
.L188:
	.sleb128	10
	.byte		"User_GotoSleepConfirmation_p"
	.byte		0
	.4byte		.L488
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L189:
	.sleb128	10
	.byte		"User_WakeupConfirmation_p"
	.byte		0
	.4byte		.L488
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L190:
	.sleb128	10
	.byte		"User_ScheduleRequestConfirmation_p"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L487:
.L416:
	.sleb128	9
	.4byte		.L399
	.uleb128	232
	.uleb128	14
	.4byte		.L493-.L2
	.uleb128	20
.L183:
	.sleb128	10
	.byte		"LinTrcv_SetOpMode_p"
	.byte		0
	.4byte		.L494
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L184:
	.sleb128	10
	.byte		"LinTrcv_GetOpMode_p"
	.byte		0
	.4byte		.L500
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L185:
	.sleb128	10
	.byte		"LinTrcv_GetBusWuReason_p"
	.byte		0
	.4byte		.L504
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L186:
	.sleb128	10
	.byte		"LinTrcv_SetWakeupMode_p"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L187:
	.sleb128	10
	.byte		"LinTrcv_CheckWakeup_p"
	.byte		0
	.4byte		.L515
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L493:
.L424:
	.sleb128	9
	.4byte		.L399
	.uleb128	184
	.uleb128	1
	.4byte		.L518-.L2
	.uleb128	24
.L177:
	.sleb128	10
	.byte		"Lin_SendFrame_p"
	.byte		0
	.4byte		.L519
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L178:
	.sleb128	10
	.byte		"Lin_GoToSleep_p"
	.byte		0
	.4byte		.L525
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L179:
	.sleb128	10
	.byte		"Lin_GoToSleepInternal_p"
	.byte		0
	.4byte		.L528
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L180:
	.sleb128	10
	.byte		"Lin_Wakeup_p"
	.byte		0
	.4byte		.L531
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L181:
	.sleb128	10
	.byte		"Lin_GetStatus_p"
	.byte		0
	.4byte		.L534
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L182:
	.sleb128	10
	.byte		"Lin_CheckWakeup_p"
	.byte		0
	.4byte		.L538
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L518:
.L524:
	.sleb128	9
	.4byte		.L541
	.uleb128	59
	.uleb128	13
	.4byte		.L542-.L2
	.uleb128	8
.L92:
	.sleb128	10
	.byte		"Pid"
	.byte		0
	.4byte		.L471
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	10
	.byte		"Cs"
	.byte		0
	.4byte		.L464
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L94:
	.sleb128	10
	.byte		"Drc"
	.byte		0
	.4byte		.L475
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L95:
	.sleb128	10
	.byte		"Dl"
	.byte		0
	.4byte		.L469
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L96:
	.sleb128	10
	.byte		"SduPtr"
	.byte		0
	.4byte		.L432
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L542:
	.section	.debug_info,,n
.L486:
	.sleb128	11
	.4byte		.L399
	.uleb128	322
	.uleb128	1
	.4byte		.L543-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"LIN_SM"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CDD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L543:
.L459:
	.sleb128	11
	.4byte		.L399
	.uleb128	232
	.uleb128	14
	.4byte		.L544-.L2
	.uleb128	4
	.sleb128	12
	.byte		"LINTP_APPLICATIVE_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"LINTP_DIAG_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"LINTP_DIAG_RESPONSE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L544:
.L443:
	.sleb128	11
	.4byte		.L399
	.uleb128	184
	.uleb128	1
	.4byte		.L545-.L2
	.uleb128	4
	.sleb128	12
	.byte		"LINIF_FRAME_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"LINIF_FRAME_RX_ONGOING"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"LINIF_FRAME_TX_ONGOING"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"LINIF_FRAME_FINISHED"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"LINIF_FRAME_ERROR"
	.byte		0
	.sleb128	4
	.sleb128	0
.L545:
.L467:
	.sleb128	11
	.4byte		.L399
	.uleb128	110
	.uleb128	1
	.4byte		.L546-.L2
	.uleb128	4
	.sleb128	12
	.byte		"INVALID_STATE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"FREE"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"ASSIGN"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"ASSIGN_FRAME_ID_RANGE"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"EVENT_TRIGGERED"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"SAVE_CONFIGURATION"
	.byte		0
	.sleb128	5
	.sleb128	12
	.byte		"SPORADIC"
	.byte		0
	.sleb128	6
	.sleb128	12
	.byte		"SRF"
	.byte		0
	.sleb128	7
	.sleb128	12
	.byte		"UNASSIGN"
	.byte		0
	.sleb128	8
	.sleb128	12
	.byte		"UNCONDITIONAL"
	.byte		0
	.sleb128	9
	.sleb128	0
.L546:
.L453:
	.sleb128	11
	.4byte		.L399
	.uleb128	102
	.uleb128	1
	.4byte		.L547-.L2
	.uleb128	4
	.sleb128	12
	.byte		"CONTINUE_AT_IT_POINT"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"START_FROM_BEGINNING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L547:
.L439:
	.sleb128	11
	.4byte		.L399
	.uleb128	87
	.uleb128	1
	.4byte		.L548-.L2
	.uleb128	4
	.sleb128	12
	.byte		"LINIF_CHANNEL_SUBSTATE_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"LINIF_CHANNEL_SLEEP_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"LINIF_CHANNEL_SLEEP_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"LINIF_CHANNEL_GOTO_SLEEP_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_FALSE"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_TRUE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L548:
.L420:
	.sleb128	11
	.4byte		.L399
	.uleb128	79
	.uleb128	1
	.4byte		.L549-.L2
	.uleb128	4
	.sleb128	12
	.byte		"LINIF_CHANNEL_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"LINIF_CHANNEL_OPERATIONAL"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"LINIF_CHANNEL_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L549:
.L435:
	.sleb128	11
	.4byte		.L399
	.uleb128	70
	.uleb128	1
	.4byte		.L550-.L2
	.uleb128	4
	.sleb128	12
	.byte		"NULL_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"ACTIVE_RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"ACTIVE_RUN_CONTINUOUS"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"ACTIVE_SCHEDULE_MANAGER_OFF"
	.byte		0
	.sleb128	3
	.sleb128	0
.L550:
.L456:
	.sleb128	11
	.4byte		.L399
	.uleb128	63
	.uleb128	1
	.4byte		.L551-.L2
	.uleb128	4
	.sleb128	12
	.byte		"RUN_CONTINUOUS"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L551:
.L499:
	.sleb128	11
	.4byte		.L541
	.uleb128	59
	.uleb128	13
	.4byte		.L552-.L2
	.uleb128	4
	.sleb128	12
	.byte		"LINTRCV_TRCV_MODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"LINTRCV_TRCV_MODE_STANDBY"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"LINTRCV_TRCV_MODE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L552:
.L509:
	.sleb128	11
	.4byte		.L541
	.uleb128	49
	.uleb128	13
	.4byte		.L553-.L2
	.uleb128	4
	.sleb128	12
	.byte		"LINTRCV_WU_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"LINTRCV_WU_NOT_SUPPORTED"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"LINTRCV_WU_BY_BUS"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"LINTRCV_WU_BY_PIN"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"LINTRCV_WU_INTERNALLY"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"LINTRCV_WU_RESET"
	.byte		0
	.sleb128	5
	.sleb128	12
	.byte		"LINTRCV_WU_POWER_ON"
	.byte		0
	.sleb128	6
	.sleb128	0
.L553:
.L514:
	.sleb128	11
	.4byte		.L541
	.uleb128	42
	.uleb128	13
	.4byte		.L554-.L2
	.uleb128	4
	.sleb128	12
	.byte		"LINTRCV_WUMODE_ENABLE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"LINTRCV_WUMODE_DISABLE"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"LINTRCV_WUMODE_CLEAR"
	.byte		0
	.sleb128	2
	.sleb128	0
.L554:
	.section	.debug_info,,n
.L317:
	.sleb128	13
	.4byte		.L318-.L2
	.byte		0x1
	.section	.debug_info,,n
.L321:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L320:
	.sleb128	15
	.byte		"uint8"
	.byte		0
	.4byte		.L321
.L319:
	.sleb128	15
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L320
	.section	.debug_info,,n
	.sleb128	16
	.4byte		.L319
.L322:
	.sleb128	15
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L320
	.sleb128	16
	.4byte		.L322
	.sleb128	0
.L318:
	.section	.debug_info,,n
.L316:
	.sleb128	17
	.4byte		.L317
.L315:
	.sleb128	15
	.byte		"LinIf_UserRequestConfirmation_t"
	.byte		0
	.4byte		.L316
	.section	.debug_info,,n
.L324:
	.sleb128	18
	.4byte		.L320
.L336:
	.sleb128	15
	.byte		"LinIfChannel"
	.byte		0
	.4byte		.L337
.L335:
	.sleb128	18
	.4byte		.L336
.L334:
	.sleb128	17
	.4byte		.L335
.L333:
	.sleb128	18
	.4byte		.L334
.L346:
	.sleb128	15
	.byte		"LinIfScheduleTable"
	.byte		0
	.4byte		.L347
.L345:
	.sleb128	18
	.4byte		.L346
.L344:
	.sleb128	17
	.4byte		.L345
.L354:
	.sleb128	15
	.byte		"LinIfChannelManager"
	.byte		0
	.4byte		.L355
.L353:
	.sleb128	17
	.4byte		.L354
.L352:
	.sleb128	18
	.4byte		.L353
.L362:
	.sleb128	18
	.4byte		.L315
.L380:
	.sleb128	15
	.byte		"LinIfChannelReloc"
	.byte		0
	.4byte		.L381
.L379:
	.sleb128	18
	.4byte		.L380
.L378:
	.sleb128	17
	.4byte		.L379
.L377:
	.sleb128	18
	.4byte		.L378
.L389:
	.sleb128	15
	.byte		"LinIf_ConfigType"
	.byte		0
	.4byte		.L390
.L388:
	.sleb128	18
	.4byte		.L389
.L387:
	.sleb128	17
	.4byte		.L388
.L394:
	.sleb128	15
	.byte		"LinIf_ConfirmationInterfaceConfig_t"
	.byte		0
	.4byte		.L395
.L393:
	.sleb128	18
	.4byte		.L394
.L398:
	.sleb128	17
	.4byte		.L393
.L397:
	.sleb128	18
	.4byte		.L398
.L403:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L402:
	.sleb128	15
	.byte		"uint16"
	.byte		0
	.4byte		.L403
.L401:
	.sleb128	18
	.4byte		.L402
.L407:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L406:
	.sleb128	15
	.byte		"uint32"
	.byte		0
	.4byte		.L407
.L405:
	.sleb128	18
	.4byte		.L406
.L404:
	.sleb128	17
	.4byte		.L405
.L410:
	.sleb128	15
	.byte		"LinIf_ConfirmationULConfig_t"
	.byte		0
	.4byte		.L411
.L409:
	.sleb128	18
	.4byte		.L410
.L408:
	.sleb128	17
	.4byte		.L409
.L415:
	.sleb128	15
	.byte		"LinIf_LinTrcvDrvCalls_t"
	.byte		0
	.4byte		.L416
.L414:
	.sleb128	18
	.4byte		.L415
.L413:
	.sleb128	17
	.4byte		.L414
.L417:
	.sleb128	18
	.4byte		.L319
.L419:
	.sleb128	15
	.byte		"LinIf_ChannelState_t"
	.byte		0
	.4byte		.L420
.L418:
	.sleb128	18
	.4byte		.L419
.L423:
	.sleb128	15
	.byte		"LinIf_LinDrvCalls_t"
	.byte		0
	.4byte		.L424
.L422:
	.sleb128	18
	.4byte		.L423
.L421:
	.sleb128	17
	.4byte		.L422
.L428:
	.sleb128	15
	.byte		"LinIfFrame"
	.byte		0
	.4byte		.L429
.L427:
	.sleb128	18
	.4byte		.L428
.L426:
	.sleb128	17
	.4byte		.L427
.L431:
	.sleb128	15
	.byte		"boolean"
	.byte		0
	.4byte		.L321
.L430:
	.sleb128	17
	.4byte		.L431
.L432:
	.sleb128	17
	.4byte		.L320
.L434:
	.sleb128	15
	.byte		"LinIfSchTableType_t"
	.byte		0
	.4byte		.L435
.L436:
	.sleb128	15
	.byte		"LinIf_BusStatusStruct"
	.byte		0
	.4byte		.L437
.L438:
	.sleb128	15
	.byte		"LinIf_ChannelSubState_t"
	.byte		0
	.4byte		.L439
.L441:
	.sleb128	15
	.byte		"Lin_StatusType"
	.byte		0
	.4byte		.L320
.L442:
	.sleb128	15
	.byte		"LinIf_frameStatusType"
	.byte		0
	.4byte		.L443
.L446:
	.sleb128	15
	.byte		"LinIfEntry"
	.byte		0
	.4byte		.L447
.L445:
	.sleb128	18
	.4byte		.L446
.L444:
	.sleb128	17
	.4byte		.L445
	.section	.debug_info,,n
.L448:
	.sleb128	19
	.4byte		.L449-.L2
	.4byte		.L320
	.section	.debug_info,,n
	.sleb128	20
	.uleb128	7
	.sleb128	0
.L449:
.L452:
	.sleb128	15
	.byte		"LinIfResumePosition_t"
	.byte		0
	.4byte		.L453
.L451:
	.sleb128	18
	.4byte		.L452
.L455:
	.sleb128	15
	.byte		"LinIfRunMode_t"
	.byte		0
	.4byte		.L456
.L454:
	.sleb128	18
	.4byte		.L455
.L458:
	.sleb128	15
	.byte		"LinTp_Mode"
	.byte		0
	.4byte		.L459
.L457:
	.sleb128	18
	.4byte		.L458
.L460:
	.sleb128	18
	.4byte		.L322
.L464:
	.sleb128	15
	.byte		"Lin_FrameCsModelType"
	.byte		0
	.4byte		.L320
.L463:
	.sleb128	18
	.4byte		.L464
.L466:
	.sleb128	15
	.byte		"LinIfFrameType_t"
	.byte		0
	.4byte		.L467
.L465:
	.sleb128	18
	.4byte		.L466
.L469:
	.sleb128	15
	.byte		"Lin_FrameDlType"
	.byte		0
	.4byte		.L320
.L468:
	.sleb128	18
	.4byte		.L469
.L471:
	.sleb128	15
	.byte		"Lin_FramePidType"
	.byte		0
	.4byte		.L320
.L470:
	.sleb128	18
	.4byte		.L471
.L473:
	.sleb128	15
	.byte		"PduIdType"
	.byte		0
	.4byte		.L402
.L472:
	.sleb128	18
	.4byte		.L473
.L475:
	.sleb128	15
	.byte		"Lin_FrameResponseType"
	.byte		0
	.4byte		.L320
.L474:
	.sleb128	18
	.4byte		.L475
.L476:
	.sleb128	19
	.4byte		.L477-.L2
	.4byte		.L324
	.sleb128	20
	.uleb128	7
	.sleb128	0
.L477:
.L480:
	.sleb128	15
	.byte		"LinIfSubstitutionFrames"
	.byte		0
	.4byte		.L481
.L479:
	.sleb128	18
	.4byte		.L480
.L478:
	.sleb128	17
	.4byte		.L479
.L485:
	.sleb128	15
	.byte		"LinIf_ConfirmationUL_t"
	.byte		0
	.4byte		.L486
.L484:
	.sleb128	18
	.4byte		.L485
.L491:
	.sleb128	13
	.4byte		.L492-.L2
	.byte		0x1
	.sleb128	16
	.4byte		.L319
	.sleb128	16
	.4byte		.L431
	.sleb128	0
.L492:
.L490:
	.sleb128	17
	.4byte		.L491
.L489:
	.sleb128	15
	.byte		"LinIf_UserConfirmation_t"
	.byte		0
	.4byte		.L490
.L488:
	.sleb128	18
	.4byte		.L489
.L497:
	.sleb128	15
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L320
	.section	.debug_info,,n
.L495:
	.sleb128	21
	.4byte		.L496-.L2
	.4byte		.L497
	.byte		0x1
	.sleb128	16
	.4byte		.L320
.L498:
	.sleb128	15
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L499
	.sleb128	16
	.4byte		.L498
	.sleb128	0
.L496:
.L494:
	.sleb128	17
	.4byte		.L495
.L501:
	.sleb128	21
	.4byte		.L502-.L2
	.4byte		.L497
	.byte		0x1
	.sleb128	16
	.4byte		.L320
.L503:
	.sleb128	17
	.4byte		.L498
	.sleb128	16
	.4byte		.L503
	.sleb128	0
.L502:
.L500:
	.sleb128	17
	.4byte		.L501
.L505:
	.sleb128	21
	.4byte		.L506-.L2
	.4byte		.L497
	.byte		0x1
	.sleb128	16
	.4byte		.L320
.L508:
	.sleb128	15
	.byte		"LinTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L509
.L507:
	.sleb128	17
	.4byte		.L508
	.sleb128	16
	.4byte		.L507
	.sleb128	0
.L506:
.L504:
	.sleb128	17
	.4byte		.L505
.L511:
	.sleb128	21
	.4byte		.L512-.L2
	.4byte		.L497
	.byte		0x1
	.sleb128	16
	.4byte		.L320
.L513:
	.sleb128	15
	.byte		"LinTrcv_TrcvWakeupModeType"
	.byte		0
	.4byte		.L514
	.sleb128	16
	.4byte		.L513
	.sleb128	0
.L512:
.L510:
	.sleb128	17
	.4byte		.L511
.L516:
	.sleb128	21
	.4byte		.L517-.L2
	.4byte		.L497
	.byte		0x1
	.sleb128	16
	.4byte		.L320
	.sleb128	0
.L517:
.L515:
	.sleb128	17
	.4byte		.L516
.L520:
	.sleb128	21
	.4byte		.L521-.L2
	.4byte		.L497
	.byte		0x1
	.sleb128	16
	.4byte		.L320
.L523:
	.sleb128	15
	.byte		"Lin_PduType"
	.byte		0
	.4byte		.L524
.L522:
	.sleb128	17
	.4byte		.L523
	.sleb128	16
	.4byte		.L522
	.sleb128	0
.L521:
.L519:
	.sleb128	17
	.4byte		.L520
.L526:
	.sleb128	21
	.4byte		.L527-.L2
	.4byte		.L497
	.byte		0x1
	.sleb128	16
	.4byte		.L320
	.sleb128	0
.L527:
.L525:
	.sleb128	17
	.4byte		.L526
.L529:
	.sleb128	21
	.4byte		.L530-.L2
	.4byte		.L497
	.byte		0x1
	.sleb128	16
	.4byte		.L320
	.sleb128	0
.L530:
.L528:
	.sleb128	17
	.4byte		.L529
.L532:
	.sleb128	21
	.4byte		.L533-.L2
	.4byte		.L497
	.byte		0x1
	.sleb128	16
	.4byte		.L320
	.sleb128	0
.L533:
.L531:
	.sleb128	17
	.4byte		.L532
.L535:
	.sleb128	21
	.4byte		.L536-.L2
	.4byte		.L441
	.byte		0x1
	.sleb128	16
	.4byte		.L320
.L537:
	.sleb128	17
	.4byte		.L432
	.sleb128	16
	.4byte		.L537
	.sleb128	0
.L536:
.L534:
	.sleb128	17
	.4byte		.L535
.L539:
	.sleb128	21
	.4byte		.L540-.L2
	.4byte		.L497
	.byte		0x1
	.sleb128	16
	.4byte		.L320
	.sleb128	0
.L540:
.L538:
	.sleb128	17
	.4byte		.L539
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L325:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locend
.L327:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L338:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),6
	.d2locend
.L340:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),4
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),4
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),4
	.d2locend
.L342:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),0
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo12),0
	.d2locend
.L348:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),7
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo12),7
	.d2locend
.L350:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),5
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo24),5
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo20),5
	.d2locend
.L356:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo24),3
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo20),3
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locend
.L363:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),0
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo12),0
	.d2locend
.L369:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),3
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),3
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),3
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),3
	.d2locend
.L371:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo39),4
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),4
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo49),4
	.d2locend
.L373:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),31
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo50),31
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo49),31
	.d2locend
.L375:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo39),0
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo48),0
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo49),0
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),0
	.d2locend
.L382:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo48),5
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo49),5
	.d2locend
.L384:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo39),6
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo49),6
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo55),6
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinIf_STM_HandleScheduleTable"
	.wrcm.nstrlist "calls", "LinIf_STM_SwitchScheduleTable"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "LinIf_STM_SwitchScheduleTable"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "LinIf_getScheduleRequestConfirmationFunct"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "LinIf_getScheduleRequestConfirmationFunct"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_ScheduleTableManager.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_ScheduleTableManager.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_ScheduleTableManager.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_ScheduleTableManager.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_ScheduleTableManager.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_ScheduleTableManager.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinIf\ssc\make\..\src\LinIf_ScheduleTableManager.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
