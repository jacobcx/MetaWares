#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinIf_SleepHandler.c"
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
# static FUNC (LinIf_UserConfirmation_t, LINIF_CODE) LinIf_getWakeupConfirmationFunct(CONST (uint8, AUTOMATIC) channelIndex)
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_SleepHandler.c"
        .d2line         58,52
#$$ld
.L339:

#$$bf	LinIf_getWakeupConfirmationFunct,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
LinIf_getWakeupConfirmationFunct:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# channelIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# channelIndex=r0 channelIndex=r3
	.d2prologue_end
# {
#     VAR (LinIf_UserConfirmation_t, AUTOMATIC) functPointer;
# 
#     if(LinIf_GlobalConfig_p->LinIf_ConfirmationULConfig_p[channelIndex].WakeupConfirmationUL == LIN_SM)
	.d2line		62
	rlwinm		r4,r0,0,24,31		# channelIndex=r0
	lis		r3,LinIf_GlobalConfig_p@ha
.Llo2:
	lwz		r3,LinIf_GlobalConfig_p@l(r3)
	lwz		r3,16(r3)
	rlwinm		r5,r4,4,0,27
	se_slwi		r4,2
	subf		r4,r4,r5
	se_add		r3,r4
	lwz		r3,4(r3)
	se_cmpi		r3,0
	bc		0,2,.L279	# ne
#     {
#         functPointer = LinIf_LinSMConfirmationInterfaceConfig.User_WakeupConfirmation_p;
	.d2line		64
.Llo3:
	lis		r3,(LinIf_LinSMConfirmationInterfaceConfig+4)@ha
	lwz		r3,(LinIf_LinSMConfirmationInterfaceConfig+4)@l(r3)
.Llo5:
	mr		r3,r3		# functPointer=r3 functPointer=r3
	b		.L280
.L279:
#     }
#     else
#     {
#         functPointer = LinIf_ConfirmationInterfaceConfig_p[channelIndex].User_WakeupConfirmation_p;
	.d2line		68
.Llo6:
	rlwinm		r0,r0,0,24,31		# channelIndex=r0 channelIndex=r0
	lis		r3,LinIf_ConfirmationInterfaceConfig_p@ha
	lwz		r4,LinIf_ConfirmationInterfaceConfig_p@l(r3)
	rlwinm		r3,r0,4,0,27		# channelIndex=r0
	se_slwi		r0,2		# channelIndex=r0 channelIndex=r0
	subf		r0,r0,r3		# channelIndex=r0 channelIndex=r0
	se_add		r4,r0		# channelIndex=r0
	lwz		r3,4(r4)
.Llo7:
	mr		r3,r3		# functPointer=r3 functPointer=r3
.L280:
#     }
#     return functPointer;
	.d2line		70
.Llo4:
	mr		r3,r3		# functPointer=r3 functPointer=r3
# }
	.d2line		71
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
.L340:
	.type		LinIf_getWakeupConfirmationFunct,@function
	.size		LinIf_getWakeupConfirmationFunct,.-LinIf_getWakeupConfirmationFunct
# Number of nodes = 35

# Allocations for LinIf_getWakeupConfirmationFunct
#	?a4		channelIndex
#	?a5		$$85
#	?a6		$$84
#	?a7		functPointer
# static FUNC (LinIf_UserConfirmation_t, LINIF_CODE) LinIf_getGotoSleepConfirmationFunct(CONST (uint8, AUTOMATIC) channelIndex)
	.align		1
	.section	.text_vle
        .d2line         79,52
#$$ld
.L357:

#$$bf	LinIf_getGotoSleepConfirmationFunct,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
LinIf_getGotoSleepConfirmationFunct:
.Llo9:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# channelIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# channelIndex=r0 channelIndex=r3
	.d2prologue_end
# {
#     VAR (LinIf_UserConfirmation_t, AUTOMATIC) functPointer;
# 
#     if(LinIf_GlobalConfig_p->LinIf_ConfirmationULConfig_p[channelIndex].GotoSleepConfirmationUL == LIN_SM)
	.d2line		83
	rlwinm		r4,r0,0,24,31		# channelIndex=r0
	lis		r3,LinIf_GlobalConfig_p@ha
.Llo10:
	lwz		r3,LinIf_GlobalConfig_p@l(r3)
	lwz		r3,16(r3)
	rlwinm		r5,r4,4,0,27
	se_slwi		r4,2
	subf		r4,r4,r5
	lwzx		r3,r3,r4
	se_cmpi		r3,0
	bc		0,2,.L284	# ne
#     {
#         functPointer = LinIf_LinSMConfirmationInterfaceConfig.User_GotoSleepConfirmation_p;
	.d2line		85
.Llo11:
	lis		r3,LinIf_LinSMConfirmationInterfaceConfig@ha
	lwz		r3,LinIf_LinSMConfirmationInterfaceConfig@l(r3)
.Llo13:
	mr		r3,r3		# functPointer=r3 functPointer=r3
	b		.L285
.L284:
#     }
#     else
#     {
#         functPointer = LinIf_ConfirmationInterfaceConfig_p[channelIndex].User_GotoSleepConfirmation_p;
	.d2line		89
.Llo14:
	rlwinm		r0,r0,0,24,31		# channelIndex=r0 channelIndex=r0
	lis		r3,LinIf_ConfirmationInterfaceConfig_p@ha
	lwz		r3,LinIf_ConfirmationInterfaceConfig_p@l(r3)
	rlwinm		r4,r0,4,0,27		# channelIndex=r0
	se_slwi		r0,2		# channelIndex=r0 channelIndex=r0
	subf		r0,r0,r4		# channelIndex=r0 channelIndex=r0
.Llo12:
	lwzx		r3,r3,r0
.Llo15:
	mr		r3,r3		# functPointer=r3 functPointer=r3
.L285:
#     }
#     return functPointer;
	.d2line		91
	mr		r3,r3		# functPointer=r3 functPointer=r3
# }
	.d2line		92
	.d2epilogue_begin
.Llo16:
	lwz		r0,20(r1)		# channelIndex=r0
	mtspr		lr,r0		# channelIndex=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L358:
	.type		LinIf_getGotoSleepConfirmationFunct,@function
	.size		LinIf_getGotoSleepConfirmationFunct,.-LinIf_getGotoSleepConfirmationFunct
# Number of nodes = 29

# Allocations for LinIf_getGotoSleepConfirmationFunct
#	?a4		channelIndex
#	?a5		$$87
#	?a6		$$86
#	?a7		functPointer
# FUNC (void, LINIF_CODE) LinIf_SetChannelSleep(CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p,
	.align		2
	.section	.text_vle
        .d2line         146,25
#$$ld
.L365:

#$$bf	LinIf_SetChannelSleep,interprocedural,rasave,nostackparams
	.globl		LinIf_SetChannelSleep
	.d2_cfa_start __cie
LinIf_SetChannelSleep:
.Llo17:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# crntChannel_p=r31 crntChannel_p=r3
.Llo18:
	mr		r6,r4		# Confirm_b=r6 Confirm_b=r4
	.d2prologue_end
#     CONST (boolean, AUTOMATIC) Confirm_b) /* PRQA S 3206*/ /*one of parameters is not used in this function with some pre-compile settings */
# {
#     /* Set the channel status to Sleep */
#     crntChannel_p->LinIf_channelManager_p->LinIf_ChannelSubState = LINIF_CHANNEL_SUBSTATE_IDLE;
	.d2line		150
.Llo19:
	diab.li		r4,0
.Llo21:
	lwz		r3,28(r31)		# crntChannel_p=r31
	stw		r4,40(r3)
#     crntChannel_p->LinIf_channelManager_p->LinIf_ChannelState = LINIF_CHANNEL_SLEEP;
	.d2line		151
	diab.li		r0,2
	lwz		r3,28(r31)		# crntChannel_p=r31
	stw		r0,44(r3)
# 
#     /* Update the current schedule as NULL */
#     crntChannel_p->LinIf_channelManager_p->LinIf_ScheduleTableType = NULL_SCHEDULE; /*[LINIF293]*/
	.d2line		154
	lwz		r3,28(r31)		# crntChannel_p=r31
	stw		r4,16(r3)
#     crntChannel_p->LinIf_channelManager_p->LinIf_BusStatus.LinIf_frameStatus = LINIF_FRAME_IDLE;
	.d2line		155
	lwz		r3,28(r31)		# crntChannel_p=r31
	stw		r4,24(r3)
# 
# #if ( LINIF_ENABLE_SCHEDULE_TABLE_MANAGER == STD_ON )
# 
#     /* Clear All Schedule Manager Pending Flags*/
#     crntChannel_p->LinIf_channelManager_p->LinIf_NewScheduleTableType = NULL_SCHEDULE;
	.d2line		160
	lwz		r3,28(r31)		# crntChannel_p=r31
	stw		r4,0(r3)
#     crntChannel_p->LinIf_channelManager_p->LinIf_RunContSchTableIndexRequested = NULL_SCHEDULE;
	.d2line		161
	lwz		r3,28(r31)		# crntChannel_p=r31
	stb		r4,4(r3)
#     crntChannel_p->LinIf_channelManager_p->LinIf_RunOnceSchTableRequested = LINIF_NO_PENDING;
	.d2line		162
	lwz		r3,28(r31)		# crntChannel_p=r31
	stb		r4,5(r3)
	.section	.text_vle
.L376:
# 
# #endif  /* #if LINIF_ENABLE_SCHEDULE_TABLE_MANAGER */
# 
# #if( LINIF_ENABLE_CONFIRMATIONS == STD_ON )
#     {
#         /* PRQA S 3204 2 */ /* Variable is never modified and so it could be declared with the 'const' qualifier. */
#         CONST(LinIf_UserConfirmation_t, AUTOMATIC) user_GotoSleepConfirmation =
	.d2line		169
.Llo22:
	lbz		r3,12(r31)		# crntChannel_p=r31
	bl		LinIf_getGotoSleepConfirmationFunct
	.d2line		172
	mr.		r0,r3		# user_GotoSleepConfirmation=?a6 user_GotoSleepConfirmation=r3
#             LinIf_getGotoSleepConfirmationFunct(crntChannel_p->LinIfChannelIndex);
# 
#         if(NULL_PTR != user_GotoSleepConfirmation)
.Llo24:
	bc		1,2,.L297	# eq
#         {
#             /* Confirmation callback to LINSM or CDD about the successful bus Sleep status */
#             user_GotoSleepConfirmation(crntChannel_p->ExternalChannelIndex, Confirm_b);
	.d2line		175
	mtspr		ctr,r0		# user_GotoSleepConfirmation=ctr user_GotoSleepConfirmation=r0
	lbz		r3,13(r31)		# crntChannel_p=r31
	rlwinm		r4,r6,0,24,31		# Confirm_b=r6
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L297:
	.section	.text_vle
.L377:
#         }
#     }
# #endif  /* #if LINIF_ENABLE_CONFIRMATIONS  */
# 
#     /* Rest the current schedule index */
#     crntChannel_p->LinIf_channelManager_p->LinIf_ScheduleTableIndex = NULL_SCHEDULE; /*[LINIF444]*/
	.d2line		181
.Llo23:
	diab.li		r3,0
	lwz		r4,28(r31)		# crntChannel_p=r31
	stb		r3,12(r4)
# #if ( LINIF_ENABLE_SCHEDULE_TABLE_MANAGER == STD_ON )
# #if ( LINIF_TP_SUPPORTED == STD_ON )
#     crntChannel_p->LinIf_channelManager_p->LinIf_SchTableLastRequested = NULL_SCHEDULE;
# #endif
# #endif
# 
# #if( LINIF_TP_SUPPORTED == STD_ON )
#     /* Set the TP channel status to Channel Idle if it is not idle */
#     if (LINTP_CHANNEL_IDLE != crntChannel_p->LinIf_channelManager_p->LinTp_ChannelStatus)
#     {
#         LinTp_AbortAllTpProcess(crntChannel_p);
#     }
# #endif /* LINIF_TP_SUPPORTED*/
# } /* End of LinIf_SetChannelSleep() */
	.d2line		195
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo20:
	lwz		r0,36(r1)		# user_GotoSleepConfirmation=r0
	mtspr		lr,r0		# user_GotoSleepConfirmation=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L366:
	.type		LinIf_SetChannelSleep,@function
	.size		LinIf_SetChannelSleep,.-LinIf_SetChannelSleep
# Number of nodes = 95

# Allocations for LinIf_SetChannelSleep
#	?a4		crntChannel_p
#	?a5		Confirm_b
#	?a6		user_GotoSleepConfirmation
# static FUNC (void, LINIF_CODE) LinIf_CheckSleepStatus(CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p)
	.align		1
	.section	.text_vle
        .d2line         101,32
#$$ld
.L385:

#$$bf	LinIf_CheckSleepStatus,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
LinIf_CheckSleepStatus:
.Llo25:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stw		r31,44(r1)		# offset r1+44  0x2c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# crntChannel_p=r31 crntChannel_p=r3
	.d2prologue_end
# {
#     if (LINIF_CHANNEL_SLEEP_PENDING == crntChannel_p->LinIf_channelManager_p->LinIf_ChannelSubState)
	.d2line		103
	lwz		r3,28(r31)		# crntChannel_p=r31
.Llo26:
	lwz		r0,40(r3)
	se_cmpi		r0,2
	bc		0,2,.L288	# ne
	.section	.text_vle
.L389:
#     {
#         /* Get the driver pointer of the current channel */
#         CONSTP2CONST (LinIf_LinDrvCalls_t, AUTOMATIC, LINIF_APPL_CONST) DriverCall_p =
	.d2line		106
.Llo27:
	lwz		r3,24(r31)		# DriverCall_p=r3 crntChannel_p=r31
.Llo29:
	mr		r3,r3		# DriverCall_p=r3 DriverCall_p=r3
#                  crntChannel_p->LinDrvCalls_p;
# 
#         /* Variable which initialises the pointer to hold the receive data */
#         VAR (uint8, AUTOMATIC) RxData_au8[8];
# 
#         /* Pointer to hold the receive data */
#         P2VAR (uint8, AUTOMATIC, LINIF_APPL_DATA) RxData_pu8 = RxData_au8;
	.d2line		113
	diab.addi		r0,r1,12
	stw		r0,8(r1)
# 
#         /* Call the Lin driver's Lin_GetStatus function */
#         CONST (Lin_StatusType, AUTOMATIC) DriverStatus =
	.d2line		116
	lwz		r0,16(r3)		# DriverCall_p=r3
	mtspr		ctr,r0
	lis		r3,LinIf_ChannelIdentifier_p@ha		# DriverCall_p=r3
	lwz		r3,LinIf_ChannelIdentifier_p@l(r3)		# DriverCall_p=r3 DriverCall_p=r3
	lbz		r0,12(r31)		# crntChannel_p=r31
	e_mulli		r0,r0,3
	se_add		r3,r0		# DriverCall_p=r3 DriverCall_p=r3
	lbz		r3,2(r3)		# DriverCall_p=r3 DriverCall_p=r3
.Llo30:
	diab.addi		r4,r1,8
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo31:
	mr		r0,r3		# DriverStatus=r0 DriverStatus=r3
#             DriverCall_p->Lin_GetStatus_p(LinIf_ChannelIdentifier_p[crntChannel_p->LinIfChannelIndex].LinIfChannelRef, &RxData_pu8); /*[LINIF454]*/
# 
#         if (LIN_CH_SLEEP == DriverStatus)
	.d2line		119
	rlwinm		r3,r3,0,24,31		# DriverStatus=r3 DriverStatus=r3
.Llo32:
	se_cmpi		r3,10		# DriverStatus=r3
.Llo33:
	bc		0,2,.L290	# ne
#         {
#             /* Set the channel status and update the upper layer */
#             LinIf_SetChannelSleep (crntChannel_p,TRUE); /*[LINIF455]*/
	.d2line		122
.Llo34:
	mr		r3,r31		# crntChannel_p=r3 crntChannel_p=r31
	diab.li		r4,1
	bl		LinIf_SetChannelSleep
	b		.L288
.L290:
#         }
#         else if ((crntChannel_p->LinIf_channelManager_p->LinIf_ChannelSubState == LINIF_CHANNEL_SLEEP_PENDING) &&
	.d2line		124
.Llo35:
	lwz		r3,28(r31)		# DriverStatus=r3 crntChannel_p=r31
	lwz		r3,40(r3)		# DriverStatus=r3 DriverStatus=r3
	se_cmpi		r3,2		# DriverStatus=r3
	bc		0,2,.L288	# ne
	rlwinm		r0,r0,0,24,31		# DriverStatus=r0 DriverStatus=r0
	se_cmpi		r0,4		# DriverStatus=r0
	bc		0,2,.L288	# ne
#             (LIN_TX_ERROR == DriverStatus))
#         {
#             /* Set the channel status and update the upper layer */
#             LinIf_SetChannelSleep (crntChannel_p,FALSE);
	.d2line		128
.Llo36:
	mr		r3,r31		# crntChannel_p=r3 crntChannel_p=r31
	diab.li		r4,0
	bl		LinIf_SetChannelSleep
	.section	.text_vle
.L390:
.L288:
#         }
#         else
#         {
#             /* for QAC */
#         }
#     }
# } /* End of LinIf_CheckSleepStatus( ) */
	.d2line		135
	.d2epilogue_begin
.Llo28:
	lwz		r31,44(r1)		# offset r1+44  0x2c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)		# DriverCall_p=r0
	mtspr		lr,r0		# DriverCall_p=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L386:
	.type		LinIf_CheckSleepStatus,@function
	.size		LinIf_CheckSleepStatus,.-LinIf_CheckSleepStatus
# Number of nodes = 75

# Allocations for LinIf_CheckSleepStatus
#	?a4		crntChannel_p
#	?a5		DriverCall_p
#	SP,12		RxData_au8
#	SP,8		RxData_pu8
#	?a6		DriverStatus
# FUNC (void, LINIF_CODE) LinIf_ProcessSleep(CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p)
	.align		2
	.section	.text_vle
        .d2line         206,25
#$$ld
.L411:

#$$bf	LinIf_ProcessSleep,interprocedural,rasave,nostackparams
	.globl		LinIf_ProcessSleep
	.d2_cfa_start __cie
LinIf_ProcessSleep:
.Llo37:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# crntChannel_p=r31 crntChannel_p=r3
	.d2prologue_end
# {
#     /* Local variable to hold the currently send frame's driver status */
#     VAR (Std_ReturnType, AUTOMATIC) retVal;
#     CONSTP2CONST (LinIf_LinDrvCalls_t, AUTOMATIC, LINIF_APPL_CONST) DriverCall_p = crntChannel_p->LinDrvCalls_p;
	.d2line		210
	lwz		r30,24(r31)		# crntChannel_p=r31
.Llo54:
	mr		r30,r30		# DriverCall_p=r30 DriverCall_p=r30
# 
#     /* Check whether the Channel is already sleep */
#     if ( crntChannel_p->LinIf_channelManager_p->LinIf_ChannelState == LINIF_CHANNEL_OPERATIONAL)
	.d2line		213
	lwz		r3,28(r31)		# crntChannel_p=r31
.Llo38:
	lwz		r0,44(r3)
	se_cmpi		r0,1
	bc		0,2,.L300	# ne
#     {
#         /* Get the Lin driver function pointer */
# 
#         /* Call the Lin_GoToSleep function of corresponding Lin driver */
#         retVal = DriverCall_p->Lin_GoToSleep_p(LinIf_ChannelIdentifier_p[crntChannel_p->LinIfChannelIndex].LinIfChannelRef); /*[LINIF129]*/
	.d2line		218
.Llo39:
	lwz		r0,4(r30)		# DriverCall_p=r30
	mtspr		ctr,r0
	lis		r3,LinIf_ChannelIdentifier_p@ha
	lwz		r0,LinIf_ChannelIdentifier_p@l(r3)
	lbz		r3,12(r31)		# crntChannel_p=r31
	e_mulli		r3,r3,3
	se_add		r3,r0
	lbz		r3,2(r3)
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo43:
	mr		r3,r3		# retVal=r3 retVal=r3
# 
#         if(E_NOT_OK == retVal)
	.d2line		220
	rlwinm		r0,r3,0,24,31		# retVal=r3
	se_cmpi		r0,1
	bc		0,2,.L302	# ne
#         {
#             /* Deviation: If the Lin_GoToSleep command was not successful, the Driver go to sleep mode internal
#              *  -Development errors handled in this function (e.g. uninitialized lin channel, wrong lin channel id, etc)
#              *  -Set the DrvStatus_u8 to E_OK, because the LinIf must go to sleep state, after this request.
#              *  -The LinIf never confirm with false state to LinSM.
#              *  -The slave go to sleep automatically after time out (See Lin specification 2.1 chapter 2.6.3)
#              */
#             (void)DriverCall_p->Lin_GoToSleepInternal_p(LinIf_ChannelIdentifier_p[crntChannel_p->LinIfChannelIndex].LinIfChannelRef); /*[LINIF560]*/
	.d2line		228
.Llo44:
	lwz		r0,8(r30)		# DriverCall_p=r30
	mtspr		ctr,r0
	lis		r3,LinIf_ChannelIdentifier_p@ha		# retVal=r3
.Llo45:
	lwz		r3,LinIf_ChannelIdentifier_p@l(r3)		# retVal=r3 retVal=r3
	lbz		r0,12(r31)		# crntChannel_p=r31
	e_mulli		r0,r0,3
	se_add		r3,r0		# retVal=r3 retVal=r3
	lbz		r3,2(r3)		# retVal=r3 retVal=r3
.Llo46:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
# 
#             retVal = E_OK; /*Deviation: LINIF558*/
	.d2line		230
.Llo55:
	diab.li		r3,0		# retVal=r3
.Llo47:
	b		.L302
.L300:
#         }
# 
#     }
#     else /* already LINIF_CHANNEL_SLEEP */
#     {
#         retVal = E_NOT_OK;
	.d2line		236
.Llo48:
	diab.li		r3,1		# retVal=r3
.L302:
#     }
# 
#     /* if the driver Lin_GoToSleep function is not properly executed */
#     if (E_NOT_OK == retVal)
	.d2line		240
.Llo49:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,1		# retVal=r3
	bc		0,2,.L303	# ne
	.section	.text_vle
.L420:
#     { /* if the driver Lin_GoToSleep function is not properly executed */
# 
# #if( LINIF_ENABLE_CONFIRMATIONS == STD_ON )
#         CONST(LinIf_UserConfirmation_t, AUTOMATIC) user_GotoSleepConfirmation =
	.d2line		244
.Llo50:
	lbz		r3,12(r31)		# retVal=r3 crntChannel_p=r31
	bl		LinIf_getGotoSleepConfirmationFunct
	.d2line		248
.Llo51:
	mr.		r0,r3		# user_GotoSleepConfirmation=?a7 user_GotoSleepConfirmation=r3
#             LinIf_getGotoSleepConfirmationFunct(crntChannel_p->LinIfChannelIndex);
# 
#         /* Confirmation to LINSM or CDD about the unsuccessful bus Sleep */
#         if(NULL_PTR != user_GotoSleepConfirmation)
.Llo56:
	bc		1,2,.L299	# eq
#         {
#             user_GotoSleepConfirmation(crntChannel_p->ExternalChannelIndex,FALSE); /*[LINIF557_A]*/
	.d2line		250
.Llo52:
	mtspr		ctr,r0		# user_GotoSleepConfirmation=ctr user_GotoSleepConfirmation=r0
	lbz		r3,13(r31)		# retVal=r3 crntChannel_p=r31
	diab.li		r4,0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
	.section	.text_vle
.L421:
.Llo40:
	b		.L299
.L303:
#         }
# #endif /* #if LINIF_ENABLE_CONFIRMATIONS  */
#     }
# 
#     /* if the driver Lin_GoToSleep function is properly executed */
#     else
#     {
#         /* Disable all interrupts */
#         SchM_Enter_LinIf_ExclusiveArea0();
	.d2line		259
.Llo41:
	bl		SchM_Enter_LinIf_ExclusiveArea0
# 
#         /* Mask the Channel Sleep status and set the channel status as Sleep pending */
#         crntChannel_p->LinIf_channelManager_p->LinIf_ChannelSubState =  LINIF_CHANNEL_SLEEP_PENDING;
	.d2line		262
	diab.li		r0,2
	lwz		r3,28(r31)		# retVal=r3 crntChannel_p=r31
.Llo53:
	stw		r0,40(r3)		# retVal=r3
# 
#         /* Update the current schedule as NULL */
#         crntChannel_p->LinIf_channelManager_p->LinIf_ScheduleTableType = NULL_SCHEDULE;
	.d2line		265
	diab.li		r0,0
	lwz		r3,28(r31)		# retVal=r3 crntChannel_p=r31
	stw		r0,16(r3)		# retVal=r3
# 
# #if ( LINIF_ENABLE_SCHEDULE_TABLE_MANAGER == STD_ON )
#         crntChannel_p->LinIf_channelManager_p->LinIf_NewScheduleTableType = NULL_SCHEDULE;
	.d2line		268
	lwz		r3,28(r31)		# retVal=r3 crntChannel_p=r31
	stw		r0,0(r3)		# retVal=r3
#         /* BZ19852 Not requested schedule table is sent after network wakeup */
#         crntChannel_p->LinIf_channelManager_p->LinIf_RunContSchTableIndexRequested = NULL_SCHEDULE;
	.d2line		270
	lwz		r3,28(r31)		# retVal=r3 crntChannel_p=r31
	stb		r0,4(r3)		# retVal=r3
#         crntChannel_p->LinIf_channelManager_p->LinIf_RunOnceSchTableRequested = LINIF_NO_PENDING;
	.d2line		271
	lwz		r3,28(r31)		# retVal=r3 crntChannel_p=r31
	stb		r0,5(r3)		# retVal=r3
# #endif
# 
#         crntChannel_p->LinIf_channelManager_p->LinIf_SleepDelayCounter = crntChannel_p->LinIfDelayForSleep;
	.d2line		274
	lwz		r0,16(r31)		# crntChannel_p=r31
	lwz		r3,28(r31)		# retVal=r3 crntChannel_p=r31
	stw		r0,8(r3)		# retVal=r3
# 
#         /* Enable all interrupts */
#         SchM_Exit_LinIf_ExclusiveArea0();
	.d2line		277
	bl		SchM_Exit_LinIf_ExclusiveArea0
.L299:
#     }
# #if( LINIF_TP_SUPPORTED == STD_ON )
#     /* Set the TP channel status to Channel Idle if it is not idle */
#     if (LINTP_CHANNEL_IDLE != crntChannel_p->LinIf_channelManager_p->LinTp_ChannelStatus)
#     {
#         LinTp_AbortAllTpProcess(crntChannel_p);
#     }
# #endif /* LINIF_TP_SUPPORTED*/
# } /* End of LinIf_ProcessSleep() */
	.d2line		286
	.d2epilogue_begin
.Llo42:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# user_GotoSleepConfirmation=r0
	mtspr		lr,r0		# user_GotoSleepConfirmation=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L412:
	.type		LinIf_ProcessSleep,@function
	.size		LinIf_ProcessSleep,.-LinIf_ProcessSleep
# Number of nodes = 156

# Allocations for LinIf_ProcessSleep
#	?a4		crntChannel_p
#	?a5		retVal
#	?a6		DriverCall_p
#	?a7		user_GotoSleepConfirmation
# FUNC (void, LINIF_CODE) LinIf_TimedSleepActions(CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p,
	.align		2
	.section	.text_vle
        .d2line         288,25
#$$ld
.L428:

#$$bf	LinIf_TimedSleepActions,interprocedural,rasave,nostackparams
	.globl		LinIf_TimedSleepActions
	.d2_cfa_start __cie
LinIf_TimedSleepActions:
.Llo57:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# crntChannel_p=r31 crntChannel_p=r3
	mr		r30,r4		# channelManager_p=r30 channelManager_p=r4
	.d2prologue_end
#                                     CONSTP2VAR (LinIfChannelManager, AUTOMATIC, LINIF_APPL_DATA) channelManager_p)
# {
# 
#     /* Check whether any Sleep Status is pending(high priority task) */
#     if (channelManager_p->LinIf_ChannelSubState == LINIF_CHANNEL_SLEEP_REQUEST)
	.d2line		293
	lwz		r0,40(r30)		# channelManager_p=r30
	se_cmpi		r0,1
	bc		0,2,.L311	# ne
#     {
#         if (LINIF_MAIN_AT_ENTRY == (channelManager_p->LinIf_EntryDelayCounter))
	.d2line		295
.Llo58:
	lhz		r0,6(r30)		# channelManager_p=r30
.Llo59:
	se_cmpi		r0,0
	bc		0,2,.L312	# ne
#         {
#             /* Process go to sleep Internal command */
#             LinIf_ProcessSleep (crntChannel_p);
	.d2line		298
	mr		r3,r31		# crntChannel_p=r3 crntChannel_p=r31
	bl		LinIf_ProcessSleep
	b		.L311
.L312:
#         }
#         else
#         {
#             channelManager_p->LinIf_EntryDelayCounter--;
	.d2line		302
	lhz		r0,6(r30)		# channelManager_p=r30
	diab.li		r3,65535
	se_add		r0,r3
	sth		r0,6(r30)		# channelManager_p=r30
.L311:
#         }
#     }
# 
#     if(0 == (channelManager_p->LinIf_SleepDelayCounter))
	.d2line		306
	lwz		r0,8(r30)		# channelManager_p=r30
	se_cmpi		r0,0
	bc		0,2,.L314	# ne
#     {
#         /* Process the driver status of transmitted frames */
#         LinIf_CheckSleepStatus (crntChannel_p);
	.d2line		309
	mr		r3,r31		# crntChannel_p=r3 crntChannel_p=r31
	bl		LinIf_CheckSleepStatus
	b		.L310
.L314:
#     }
#     else
#     {
#         channelManager_p->LinIf_SleepDelayCounter--;
	.d2line		313
	lwz		r3,8(r30)		# channelManager_p=r30
	diab.addi		r3,r3,-1
	stw		r3,8(r30)		# channelManager_p=r30
.L310:
#     }
# }
	.d2line		315
	.d2epilogue_begin
.Llo60:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo61:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo62:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L429:
	.type		LinIf_TimedSleepActions,@function
	.size		LinIf_TimedSleepActions,.-LinIf_TimedSleepActions
# Number of nodes = 39

# Allocations for LinIf_TimedSleepActions
#	?a4		crntChannel_p
#	?a5		channelManager_p
# FUNC (void, LINIF_CODE) LinIf_WakeUpConfirmation(CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p)
	.align		2
	.section	.text_vle
        .d2line         318,25
#$$ld
.L439:

#$$bf	LinIf_WakeUpConfirmation,interprocedural,rasave,nostackparams
	.globl		LinIf_WakeUpConfirmation
	.d2_cfa_start __cie
LinIf_WakeUpConfirmation:
.Llo63:
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
#     CONSTP2VAR (LinIfChannelManager, AUTOMATIC, LINIF_APPL_DATA) channelManager_p = crntChannel_p->LinIf_channelManager_p;
	.d2line		320
	lwz		r31,28(r6)		# channelManager_p=r31 crntChannel_p=r6
	mr		r31,r31		# channelManager_p=r31 channelManager_p=r31
# 
#     /*Check if there is a pending Wake up confirmation request*/
#     if ((channelManager_p->LinIf_ChannelSubState == LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_FALSE) ||
	.d2line		323
	lwz		r0,40(r31)		# channelManager_p=r31
	se_cmpi		r0,4
	bc		1,2,.L323	# eq
.Llo64:
	lwz		r0,40(r31)		# channelManager_p=r31
.Llo65:
	se_cmpi		r0,5
	bc		0,2,.L320	# ne
.L323:
	.section	.text_vle
.L445:
#         (channelManager_p->LinIf_ChannelSubState == LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_TRUE))
#     {
#         CONST(LinIf_UserConfirmation_t, AUTOMATIC) user_WakeUpConfirmation =
	.d2line		326
	lbz		r3,12(r6)		# crntChannel_p=r6
	bl		LinIf_getWakeupConfirmationFunct
	.d2line		330
	mr.		r0,r3		# user_WakeUpConfirmation=?a7 user_WakeUpConfirmation=r3
#             LinIf_getWakeupConfirmationFunct(crntChannel_p->LinIfChannelIndex);
# 
#         /* Send confirmation to the upper layer LINSM or CDD for the successful WakeUp */
#         if(NULL_PTR != user_WakeUpConfirmation)
.Llo69:
	bc		1,2,.L322	# eq
#         {
#             /*MISRA 13.2*/ /*This cast is necessary*/
#             user_WakeUpConfirmation(crntChannel_p->ExternalChannelIndex,
	.d2line		333
	lwz		r3,40(r31)		# channelManager_p=r31
	se_cmpi		r3,5
	diab.li		r3,1
	isel		r3,r3,r4,2
.L324:
	diab.li		r4,0
	isel		r4,r3,r4,2
.L325:
	mtspr		ctr,r0		# user_WakeUpConfirmation=ctr user_WakeUpConfirmation=r0
	lbz		r3,13(r6)		# crntChannel_p=r6
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L322:
#                     ((channelManager_p->LinIf_ChannelSubState == LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_TRUE) ? TRUE : FALSE)
#             ); /*PRQA S 3344*/
#         }
#         /*Clear the pending wake up confirmation Request flags*/
#         channelManager_p->LinIf_ChannelSubState = LINIF_CHANNEL_SUBSTATE_IDLE;
	.d2line		338
.Llo70:
	diab.li		r0,0		# user_WakeUpConfirmation=r0
.Llo71:
	stw		r0,40(r31)		# channelManager_p=r31 user_WakeUpConfirmation=r0
	.section	.text_vle
.L446:
.L320:
#     }
# }
	.d2line		340
	.d2epilogue_begin
.Llo66:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo67:
	lwz		r0,36(r1)		# user_WakeUpConfirmation=r0
	mtspr		lr,r0		# user_WakeUpConfirmation=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo68:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L440:
	.type		LinIf_WakeUpConfirmation,@function
	.size		LinIf_WakeUpConfirmation,.-LinIf_WakeUpConfirmation
# Number of nodes = 61

# Allocations for LinIf_WakeUpConfirmation
#	?a4		crntChannel_p
#	?a5		$$83
#	?a6		channelManager_p
#	?a7		user_WakeUpConfirmation
# FUNC (void, LINIF_CODE) LinIf_GotoSleepInternalProcess(CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p,
	.align		2
	.section	.text_vle
        .d2line         343,25
#$$ld
.L453:

#$$bf	LinIf_GotoSleepInternalProcess,interprocedural,rasave,nostackparams
	.globl		LinIf_GotoSleepInternalProcess
	.d2_cfa_start __cie
LinIf_GotoSleepInternalProcess:
.Llo72:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# crntChannel_p=r31 crntChannel_p=r3
.Llo73:
	mr		r30,r4		# channelManager_p=r30 channelManager_p=r4
	.d2prologue_end
#                                         CONSTP2VAR (LinIfChannelManager, AUTOMATIC, LINIF_APPL_DATA) channelManager_p)
# {
# #if( LINIF_ENABLE_CONFIRMATIONS == STD_ON )
#     /* Call the Lin_GoToSleepInternal function of corresponding Lin driver */
#     CONST (Std_ReturnType, AUTOMATIC) retVal = crntChannel_p->LinDrvCalls_p->Lin_GoToSleepInternal_p
	.d2line		348
.Llo74:
	lwz		r3,24(r31)		# crntChannel_p=r31
	lwz		r0,8(r3)
	mtspr		ctr,r0
	lis		r3,LinIf_ChannelIdentifier_p@ha
	lwz		r0,LinIf_ChannelIdentifier_p@l(r3)
	lbz		r3,12(r31)		# crntChannel_p=r31
	e_mulli		r3,r3,3
	se_add		r3,r0
	lbz		r3,2(r3)
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo78:
	mr		r6,r3		# retVal=r6 retVal=r3
#         (LinIf_ChannelIdentifier_p[crntChannel_p->LinIfChannelIndex].LinIfChannelRef);
# 
#     CONST(LinIf_UserConfirmation_t, AUTOMATIC) user_GotoSleepConfirmation =
	.d2line		351
.Llo79:
	lbz		r3,12(r31)		# crntChannel_p=r31
.Llo81:
	bl		LinIf_getGotoSleepConfirmationFunct
	.d2line		355
	mr.		r0,r3		# user_GotoSleepConfirmation=?a7 user_GotoSleepConfirmation=r3
#         LinIf_getGotoSleepConfirmationFunct(crntChannel_p->LinIfChannelIndex);
# 
#     /* if the driver Lin_GoToSleep function is not properly executed */
#     if(NULL_PTR != user_GotoSleepConfirmation)
.Llo84:
	bc		1,2,.L332	# eq
#     {
#         if (E_NOT_OK == retVal)
	.d2line		357
.Llo82:
	rlwinm		r6,r6,0,24,31		# retVal=r6 retVal=r6
	se_cmpi		r6,1		# retVal=r6
	bc		0,2,.L333	# ne
#         {
#             /* Confirmation to LINSM or CDD about the unsuccessful bus Sleep */
#             user_GotoSleepConfirmation(crntChannel_p->ExternalChannelIndex, FALSE); /*Deviation: LINIF558*/
	.d2line		360
.Llo83:
	mtspr		ctr,r0		# user_GotoSleepConfirmation=ctr user_GotoSleepConfirmation=r0
	lbz		r3,13(r31)		# crntChannel_p=r31
	diab.li		r4,0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.Llo75:
	b		.L332
.L333:
#         }
#         else
#         {
#             /* Confirmation callback to LINSM or CDD about the successful bus Sleep status */
#             user_GotoSleepConfirmation(crntChannel_p->ExternalChannelIndex, TRUE); /*[LINIF557_B]*/
	.d2line		365
.Llo76:
	mtspr		ctr,r0		# user_GotoSleepConfirmation=ctr user_GotoSleepConfirmation=r0
	lbz		r3,13(r31)		# crntChannel_p=r31
	diab.li		r4,1
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L332:
#         }
#     }
# #else
#     /* Call the Lin_GoToSleepInternal function of corresponding Lin driver */
#     (void)crntChannel_p->LinDrvCalls_p->Lin_GoToSleepInternal_p
#                                 (LinIf_ChannelIdentifier_p[crntChannel_p->LinIfChannelIndex].LinIfChannelRef);
# #endif /* LINIF_ENABLE_CONFIRMATIONS == STD_ON */
# 
#     /* Critical area protection - get the thread */
#     SchM_Enter_LinIf_ExclusiveArea0();
	.d2line		375
.Llo77:
	bl		SchM_Enter_LinIf_ExclusiveArea0
# 
#     /* Clear the channel status as goto sleep internal requested */
#     channelManager_p->LinIf_ChannelSubState = LINIF_CHANNEL_SUBSTATE_IDLE;
	.d2line		378
	diab.li		r0,0		# user_GotoSleepConfirmation=r0
.Llo85:
	stw		r0,40(r30)		# channelManager_p=r30 user_GotoSleepConfirmation=r0
# 
#     /* Critical area protection - release the lock */
#     SchM_Exit_LinIf_ExclusiveArea0();
	.d2line		381
	bl		SchM_Exit_LinIf_ExclusiveArea0
# }
	.d2line		382
	.d2epilogue_begin
.Llo86:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo80:
	lwz		r0,36(r1)		# user_GotoSleepConfirmation=r0
	mtspr		lr,r0		# user_GotoSleepConfirmation=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L454:
	.type		LinIf_GotoSleepInternalProcess,@function
	.size		LinIf_GotoSleepInternalProcess,.-LinIf_GotoSleepInternalProcess
# Number of nodes = 75

# Allocations for LinIf_GotoSleepInternalProcess
#	?a4		crntChannel_p
#	?a5		channelManager_p
#	?a6		retVal
#	?a7		user_GotoSleepConfirmation

# Allocations for module
	.section	.text_vle
	.0byte		.L469
	.section	.text_vle
#$$ld
.L5:
.L626:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L482:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Types.h"
.L464:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Private.h"
.L341:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_SleepHandler.c"
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
	.uleb128	8
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
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
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
	.uleb128	5
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
	.uleb128	38
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_SleepHandler.c"
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
.L350:
	.sleb128	2
	.4byte		.L338-.L2
	.byte		"LinIf_getWakeupConfirmationFunct"
	.byte		0
	.4byte		.L341
	.uleb128	58
	.uleb128	52
	.4byte		.L342
	.byte		0x1
	.4byte		.L339
	.4byte		.L340
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L341
	.uleb128	58
	.uleb128	52
	.byte		"channelIndex"
	.byte		0
	.4byte		.L351
	.4byte		.L352
	.section	.debug_info,,n
.L353:
	.sleb128	4
	.4byte		.L341
	.uleb128	60
	.uleb128	47
	.byte		"functPointer"
	.byte		0
	.4byte		.L342
	.4byte		.L354
	.section	.debug_info,,n
	.sleb128	0
.L338:
	.section	.debug_info,,n
.L359:
	.sleb128	2
	.4byte		.L356-.L2
	.byte		"LinIf_getGotoSleepConfirmationFunct"
	.byte		0
	.4byte		.L341
	.uleb128	79
	.uleb128	52
	.4byte		.L342
	.byte		0x1
	.4byte		.L357
	.4byte		.L358
	.sleb128	3
	.4byte		.L341
	.uleb128	79
	.uleb128	52
	.byte		"channelIndex"
	.byte		0
	.4byte		.L351
	.4byte		.L360
.L361:
	.sleb128	4
	.4byte		.L341
	.uleb128	81
	.uleb128	47
	.byte		"functPointer"
	.byte		0
	.4byte		.L342
	.4byte		.L362
	.section	.debug_info,,n
	.sleb128	0
.L356:
	.section	.debug_info,,n
.L367:
	.sleb128	5
	.4byte		.L364-.L2
	.byte		"LinIf_SetChannelSleep"
	.byte		0
	.4byte		.L341
	.uleb128	146
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L365
	.4byte		.L366
	.sleb128	3
	.4byte		.L341
	.uleb128	146
	.uleb128	25
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L368
	.4byte		.L373
	.sleb128	3
	.4byte		.L341
	.uleb128	146
	.uleb128	25
	.byte		"Confirm_b"
	.byte		0
	.4byte		.L374
	.4byte		.L375
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L379
	.4byte		.L376
	.4byte		.L377
.L380:
	.sleb128	4
	.4byte		.L341
	.uleb128	169
	.uleb128	52
	.byte		"user_GotoSleepConfirmation"
	.byte		0
	.4byte		.L381
	.4byte		.L382
	.section	.debug_info,,n
	.sleb128	0
.L379:
	.section	.debug_info,,n
	.sleb128	0
.L364:
	.section	.debug_info,,n
.L387:
	.sleb128	7
	.4byte		.L384-.L2
	.byte		"LinIf_CheckSleepStatus"
	.byte		0
	.4byte		.L341
	.uleb128	101
	.uleb128	32
	.byte		0x1
	.4byte		.L385
	.4byte		.L386
	.sleb128	3
	.4byte		.L341
	.uleb128	101
	.uleb128	32
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L368
	.4byte		.L388
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L392
	.4byte		.L389
	.4byte		.L390
.L393:
	.sleb128	4
	.4byte		.L341
	.uleb128	106
	.uleb128	73
	.byte		"DriverCall_p"
	.byte		0
	.4byte		.L394
	.4byte		.L399
	.section	.debug_info,,n
.L400:
	.sleb128	8
	.4byte		.L341
	.uleb128	110
	.uleb128	32
	.byte		"RxData_au8"
	.byte		0
	.4byte		.L401
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L403:
	.sleb128	8
	.4byte		.L341
	.uleb128	113
	.uleb128	51
	.byte		"RxData_pu8"
	.byte		0
	.4byte		.L404
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L405:
	.sleb128	4
	.4byte		.L341
	.uleb128	116
	.uleb128	43
	.byte		"DriverStatus"
	.byte		0
	.4byte		.L406
	.4byte		.L408
	.section	.debug_info,,n
	.sleb128	0
.L392:
	.section	.debug_info,,n
	.sleb128	0
.L384:
	.section	.debug_info,,n
.L413:
	.sleb128	5
	.4byte		.L410-.L2
	.byte		"LinIf_ProcessSleep"
	.byte		0
	.4byte		.L341
	.uleb128	206
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L411
	.4byte		.L412
	.sleb128	3
	.4byte		.L341
	.uleb128	206
	.uleb128	25
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L368
	.4byte		.L414
.L415:
	.sleb128	4
	.4byte		.L341
	.uleb128	209
	.uleb128	37
	.byte		"retVal"
	.byte		0
	.4byte		.L416
	.4byte		.L417
.L418:
	.sleb128	4
	.4byte		.L341
	.uleb128	210
	.uleb128	69
	.byte		"DriverCall_p"
	.byte		0
	.4byte		.L394
	.4byte		.L419
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L423
	.4byte		.L420
	.4byte		.L421
.L424:
	.sleb128	4
	.4byte		.L341
	.uleb128	244
	.uleb128	52
	.byte		"user_GotoSleepConfirmation"
	.byte		0
	.4byte		.L381
	.4byte		.L425
	.section	.debug_info,,n
	.sleb128	0
.L423:
	.section	.debug_info,,n
	.sleb128	0
.L410:
	.section	.debug_info,,n
.L430:
	.sleb128	5
	.4byte		.L427-.L2
	.byte		"LinIf_TimedSleepActions"
	.byte		0
	.4byte		.L341
	.uleb128	288
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L428
	.4byte		.L429
	.sleb128	3
	.4byte		.L341
	.uleb128	288
	.uleb128	25
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L368
	.4byte		.L431
	.sleb128	3
	.4byte		.L341
	.uleb128	288
	.uleb128	25
	.byte		"channelManager_p"
	.byte		0
	.4byte		.L432
	.4byte		.L436
	.section	.debug_info,,n
	.sleb128	0
.L427:
	.section	.debug_info,,n
.L441:
	.sleb128	5
	.4byte		.L438-.L2
	.byte		"LinIf_WakeUpConfirmation"
	.byte		0
	.4byte		.L341
	.uleb128	318
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L439
	.4byte		.L440
	.sleb128	3
	.4byte		.L341
	.uleb128	318
	.uleb128	25
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L368
	.4byte		.L442
.L443:
	.sleb128	4
	.4byte		.L341
	.uleb128	320
	.uleb128	66
	.byte		"channelManager_p"
	.byte		0
	.4byte		.L432
	.4byte		.L444
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L448
	.4byte		.L445
	.4byte		.L446
.L449:
	.sleb128	4
	.4byte		.L341
	.uleb128	326
	.uleb128	52
	.byte		"user_WakeUpConfirmation"
	.byte		0
	.4byte		.L381
	.4byte		.L450
	.section	.debug_info,,n
	.sleb128	0
.L448:
	.section	.debug_info,,n
	.sleb128	0
.L438:
	.section	.debug_info,,n
.L455:
	.sleb128	5
	.4byte		.L452-.L2
	.byte		"LinIf_GotoSleepInternalProcess"
	.byte		0
	.4byte		.L341
	.uleb128	343
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L453
	.4byte		.L454
	.sleb128	3
	.4byte		.L341
	.uleb128	343
	.uleb128	25
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L368
	.4byte		.L456
	.sleb128	3
	.4byte		.L341
	.uleb128	343
	.uleb128	25
	.byte		"channelManager_p"
	.byte		0
	.4byte		.L432
	.4byte		.L457
.L458:
	.sleb128	4
	.4byte		.L341
	.uleb128	348
	.uleb128	39
	.byte		"retVal"
	.byte		0
	.4byte		.L459
	.4byte		.L460
.L461:
	.sleb128	4
	.4byte		.L341
	.uleb128	351
	.uleb128	48
	.byte		"user_GotoSleepConfirmation"
	.byte		0
	.4byte		.L381
	.4byte		.L462
	.section	.debug_info,,n
	.sleb128	0
.L452:
	.section	.debug_info,,n
.L463:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L464
	.uleb128	220
	.uleb128	63
	.byte		"LinIf_GlobalConfig_p"
	.byte		0
	.4byte		.L465
	.0byte		.L463
.L469:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L464
	.uleb128	238
	.uleb128	76
	.byte		"LinIf_ChannelIdentifier_p"
	.byte		0
	.4byte		.L470
	.section	.debug_info,,n
.L475:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L464
	.uleb128	247
	.uleb128	64
	.byte		"LinIf_LinSMConfirmationInterfaceConfig"
	.byte		0
	.4byte		.L476
.L479:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L464
	.uleb128	248
	.uleb128	89
	.byte		"LinIf_ConfirmationInterfaceConfig_p"
	.byte		0
	.4byte		.L480
	.section	.debug_info,,n
.L468:
	.sleb128	10
	.4byte		.L482
	.uleb128	322
	.uleb128	1
	.4byte		.L483-.L2
	.uleb128	20
	.section	.debug_info,,n
.L252:
	.sleb128	11
	.byte		"MaxLinIfChannel"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L253:
	.sleb128	11
	.byte		"LinIfChannel_p"
	.byte		0
	.4byte		.L487
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L254:
	.sleb128	11
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L491
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L255:
	.sleb128	11
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L491
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L256:
	.sleb128	11
	.byte		"LinIf_ConfirmationULConfig_p"
	.byte		0
	.4byte		.L495
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L483:
.L474:
	.sleb128	10
	.4byte		.L482
	.uleb128	322
	.uleb128	1
	.4byte		.L499-.L2
	.uleb128	3
.L249:
	.sleb128	11
	.byte		"LinIfTrcvIdRef"
	.byte		0
	.4byte		.L351
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L250:
	.sleb128	11
	.byte		"LinIfChannelId"
	.byte		0
	.4byte		.L500
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L251:
	.sleb128	11
	.byte		"LinIfChannelRef"
	.byte		0
	.4byte		.L351
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L499:
.L372:
	.sleb128	10
	.4byte		.L482
	.uleb128	322
	.uleb128	1
	.4byte		.L501-.L2
	.uleb128	32
.L240:
	.sleb128	11
	.byte		"LinTrcvDrvCalls_p"
	.byte		0
	.4byte		.L502
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L241:
	.sleb128	11
	.byte		"WakeupSourceIdLin"
	.byte		0
	.4byte		.L492
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L242:
	.sleb128	11
	.byte		"WakeupSourceIdTrcv"
	.byte		0
	.4byte		.L492
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L243:
	.sleb128	11
	.byte		"LinIfChannelIndex"
	.byte		0
	.4byte		.L351
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L244:
	.sleb128	11
	.byte		"ExternalChannelIndex"
	.byte		0
	.4byte		.L500
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L245:
	.sleb128	11
	.byte		"LinIfDelayForSleep"
	.byte		0
	.4byte		.L492
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L246:
	.sleb128	11
	.byte		"LinIfStartupState"
	.byte		0
	.4byte		.L506
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L247:
	.sleb128	11
	.byte		"LinDrvCalls_p"
	.byte		0
	.4byte		.L395
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L248:
	.sleb128	11
	.byte		"LinIf_channelManager_p"
	.byte		0
	.4byte		.L432
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L501:
.L490:
	.sleb128	10
	.4byte		.L482
	.uleb128	322
	.uleb128	1
	.4byte		.L509-.L2
	.uleb128	24
.L233:
	.sleb128	11
	.byte		"LinIfMaxLinFrames"
	.byte		0
	.4byte		.L351
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L234:
	.sleb128	11
	.byte		"LinIfMaxSchedules"
	.byte		0
	.4byte		.L351
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L235:
	.sleb128	11
	.byte		"LinIfFrame_p"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L236:
	.sleb128	11
	.byte		"LinIfScheduleTable_p"
	.byte		0
	.4byte		.L514
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L237:
	.sleb128	11
	.byte		"ETCollisionDetectd_p"
	.byte		0
	.4byte		.L518
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L238:
	.sleb128	11
	.byte		"SPPendingRequest_p"
	.byte		0
	.4byte		.L518
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L239:
	.sleb128	11
	.byte		"LinIf_ScheduleTableEntry_p"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L509:
.L435:
	.sleb128	10
	.4byte		.L482
	.uleb128	322
	.uleb128	1
	.4byte		.L519-.L2
	.uleb128	48
.L223:
	.sleb128	11
	.byte		"LinIf_NewScheduleTableType"
	.byte		0
	.4byte		.L520
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L224:
	.sleb128	11
	.byte		"LinIf_RunContSchTableIndexRequested"
	.byte		0
	.4byte		.L522
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L225:
	.sleb128	11
	.byte		"LinIf_RunOnceSchTableRequested"
	.byte		0
	.4byte		.L522
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L226:
	.sleb128	11
	.byte		"LinIf_EntryDelayCounter"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L227:
	.sleb128	11
	.byte		"LinIf_SleepDelayCounter"
	.byte		0
	.4byte		.L493
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L228:
	.sleb128	11
	.byte		"LinIf_ScheduleTableIndex"
	.byte		0
	.4byte		.L522
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L229:
	.sleb128	11
	.byte		"LinIf_ScheduleTableType"
	.byte		0
	.4byte		.L520
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L230:
	.sleb128	11
	.byte		"LinIf_BusStatus"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L231:
	.sleb128	11
	.byte		"LinIf_ChannelSubState"
	.byte		0
	.4byte		.L525
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L232:
	.sleb128	11
	.byte		"LinIf_ChannelState"
	.byte		0
	.4byte		.L507
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L519:
.L524:
	.sleb128	10
	.4byte		.L482
	.uleb128	322
	.uleb128	1
	.4byte		.L527-.L2
	.uleb128	20
.L219:
	.sleb128	11
	.byte		"Lin_DriverGetStatusVal"
	.byte		0
	.4byte		.L407
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L220:
	.sleb128	11
	.byte		"LinIf_frameStatus"
	.byte		0
	.4byte		.L528
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L221:
	.sleb128	11
	.byte		"LinIf_frameEntry_p"
	.byte		0
	.4byte		.L530
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L222:
	.sleb128	11
	.byte		"LinIf_RxData"
	.byte		0
	.4byte		.L534
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L527:
.L517:
	.sleb128	10
	.4byte		.L482
	.uleb128	322
	.uleb128	1
	.4byte		.L536-.L2
	.uleb128	20
.L213:
	.sleb128	11
	.byte		"LinIfResumePosition"
	.byte		0
	.4byte		.L537
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L214:
	.sleb128	11
	.byte		"LinIfRunMode"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L215:
	.sleb128	11
	.byte		"LinIfScheduleMode"
	.byte		0
	.4byte		.L543
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L216:
	.sleb128	11
	.byte		"LinIfScheduleTableIndex"
	.byte		0
	.4byte		.L546
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L217:
	.sleb128	11
	.byte		"LinIfMaxSchEntry"
	.byte		0
	.4byte		.L351
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L218:
	.sleb128	11
	.byte		"LinIfEntry_p"
	.byte		0
	.4byte		.L530
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L536:
.L533:
	.sleb128	10
	.4byte		.L482
	.uleb128	322
	.uleb128	1
	.4byte		.L547-.L2
	.uleb128	8
.L210:
	.sleb128	11
	.byte		"LinIfDelay"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L211:
	.sleb128	11
	.byte		"LinIfCollisionResolvingRef"
	.byte		0
	.4byte		.L546
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L212:
	.sleb128	11
	.byte		"LinIfFrameRef"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L547:
.L513:
	.sleb128	10
	.4byte		.L482
	.uleb128	322
	.uleb128	1
	.4byte		.L548-.L2
	.uleb128	32
.L196:
	.sleb128	11
	.byte		"LinIfChecksumType"
	.byte		0
	.4byte		.L549
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L197:
	.sleb128	11
	.byte		"LinIfFrameType"
	.byte		0
	.4byte		.L551
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L198:
	.sleb128	11
	.byte		"LinIfLength"
	.byte		0
	.4byte		.L554
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L199:
	.sleb128	11
	.byte		"LinIfPid"
	.byte		0
	.4byte		.L556
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L200:
	.sleb128	11
	.byte		"LinIfTxConfirmationId"
	.byte		0
	.4byte		.L558
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L201:
	.sleb128	11
	.byte		"LinIfPduDirection"
	.byte		0
	.4byte		.L560
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L202:
	.sleb128	11
	.byte		"LinIfFixedFrameSduData"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L203:
	.sleb128	11
	.byte		"LinIfRxTxTargetPduRef"
	.byte		0
	.4byte		.L558
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L204:
	.sleb128	11
	.byte		"LinIfSubsFrames_p"
	.byte		0
	.4byte		.L564
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L205:
	.sleb128	11
	.byte		"LinIfNoOfSubEntry"
	.byte		0
	.4byte		.L351
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L206:
	.sleb128	11
	.byte		"LinIfFunctionIndex"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L548:
.L567:
	.sleb128	10
	.4byte		.L482
	.uleb128	322
	.uleb128	1
	.4byte		.L568-.L2
	.uleb128	2
.L194:
	.sleb128	11
	.byte		"LinIfSubFrameIndex"
	.byte		0
	.4byte		.L351
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L195:
	.sleb128	11
	.byte		"LinIfSubFramePriority"
	.byte		0
	.4byte		.L351
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L568:
.L498:
	.sleb128	10
	.4byte		.L482
	.uleb128	322
	.uleb128	1
	.4byte		.L569-.L2
	.uleb128	12
.L191:
	.sleb128	11
	.byte		"GotoSleepConfirmationUL"
	.byte		0
	.4byte		.L570
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L192:
	.sleb128	11
	.byte		"WakeupConfirmationUL"
	.byte		0
	.4byte		.L570
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L193:
	.sleb128	11
	.byte		"ScheduleRequestConfirmationUL"
	.byte		0
	.4byte		.L570
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L569:
.L478:
	.sleb128	10
	.4byte		.L482
	.uleb128	293
	.uleb128	1
	.4byte		.L573-.L2
	.uleb128	12
.L188:
	.sleb128	11
	.byte		"User_GotoSleepConfirmation_p"
	.byte		0
	.4byte		.L381
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L189:
	.sleb128	11
	.byte		"User_WakeupConfirmation_p"
	.byte		0
	.4byte		.L381
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L190:
	.sleb128	11
	.byte		"User_ScheduleRequestConfirmation_p"
	.byte		0
	.4byte		.L574
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L573:
.L505:
	.sleb128	10
	.4byte		.L482
	.uleb128	232
	.uleb128	14
	.4byte		.L579-.L2
	.uleb128	20
.L183:
	.sleb128	11
	.byte		"LinTrcv_SetOpMode_p"
	.byte		0
	.4byte		.L580
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L184:
	.sleb128	11
	.byte		"LinTrcv_GetOpMode_p"
	.byte		0
	.4byte		.L585
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L185:
	.sleb128	11
	.byte		"LinTrcv_GetBusWuReason_p"
	.byte		0
	.4byte		.L589
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L186:
	.sleb128	11
	.byte		"LinTrcv_SetWakeupMode_p"
	.byte		0
	.4byte		.L595
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L187:
	.sleb128	11
	.byte		"LinTrcv_CheckWakeup_p"
	.byte		0
	.4byte		.L600
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L579:
.L398:
	.sleb128	10
	.4byte		.L482
	.uleb128	184
	.uleb128	1
	.4byte		.L603-.L2
	.uleb128	24
.L177:
	.sleb128	11
	.byte		"Lin_SendFrame_p"
	.byte		0
	.4byte		.L604
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L178:
	.sleb128	11
	.byte		"Lin_GoToSleep_p"
	.byte		0
	.4byte		.L610
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L179:
	.sleb128	11
	.byte		"Lin_GoToSleepInternal_p"
	.byte		0
	.4byte		.L613
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L180:
	.sleb128	11
	.byte		"Lin_Wakeup_p"
	.byte		0
	.4byte		.L616
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L181:
	.sleb128	11
	.byte		"Lin_GetStatus_p"
	.byte		0
	.4byte		.L619
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L182:
	.sleb128	11
	.byte		"Lin_CheckWakeup_p"
	.byte		0
	.4byte		.L623
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L603:
.L609:
	.sleb128	10
	.4byte		.L626
	.uleb128	59
	.uleb128	13
	.4byte		.L627-.L2
	.uleb128	8
.L92:
	.sleb128	11
	.byte		"Pid"
	.byte		0
	.4byte		.L557
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	11
	.byte		"Cs"
	.byte		0
	.4byte		.L550
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L94:
	.sleb128	11
	.byte		"Drc"
	.byte		0
	.4byte		.L561
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L95:
	.sleb128	11
	.byte		"Dl"
	.byte		0
	.4byte		.L555
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L96:
	.sleb128	11
	.byte		"SduPtr"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L627:
	.section	.debug_info,,n
.L572:
	.sleb128	12
	.4byte		.L482
	.uleb128	322
	.uleb128	1
	.4byte		.L628-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"LIN_SM"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"CDD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L628:
.L545:
	.sleb128	12
	.4byte		.L482
	.uleb128	232
	.uleb128	14
	.4byte		.L629-.L2
	.uleb128	4
	.sleb128	13
	.byte		"LINTP_APPLICATIVE_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"LINTP_DIAG_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"LINTP_DIAG_RESPONSE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L629:
.L529:
	.sleb128	12
	.4byte		.L482
	.uleb128	184
	.uleb128	1
	.4byte		.L630-.L2
	.uleb128	4
	.sleb128	13
	.byte		"LINIF_FRAME_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"LINIF_FRAME_RX_ONGOING"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"LINIF_FRAME_TX_ONGOING"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"LINIF_FRAME_FINISHED"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"LINIF_FRAME_ERROR"
	.byte		0
	.sleb128	4
	.sleb128	0
.L630:
.L553:
	.sleb128	12
	.4byte		.L482
	.uleb128	110
	.uleb128	1
	.4byte		.L631-.L2
	.uleb128	4
	.sleb128	13
	.byte		"INVALID_STATE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"FREE"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"ASSIGN"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"ASSIGN_FRAME_ID_RANGE"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"EVENT_TRIGGERED"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"SAVE_CONFIGURATION"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"SPORADIC"
	.byte		0
	.sleb128	6
	.sleb128	13
	.byte		"SRF"
	.byte		0
	.sleb128	7
	.sleb128	13
	.byte		"UNASSIGN"
	.byte		0
	.sleb128	8
	.sleb128	13
	.byte		"UNCONDITIONAL"
	.byte		0
	.sleb128	9
	.sleb128	0
.L631:
.L539:
	.sleb128	12
	.4byte		.L482
	.uleb128	102
	.uleb128	1
	.4byte		.L632-.L2
	.uleb128	4
	.sleb128	13
	.byte		"CONTINUE_AT_IT_POINT"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"START_FROM_BEGINNING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L632:
.L526:
	.sleb128	12
	.4byte		.L482
	.uleb128	87
	.uleb128	1
	.4byte		.L633-.L2
	.uleb128	4
	.sleb128	13
	.byte		"LINIF_CHANNEL_SUBSTATE_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"LINIF_CHANNEL_SLEEP_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"LINIF_CHANNEL_SLEEP_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"LINIF_CHANNEL_GOTO_SLEEP_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_FALSE"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_TRUE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L633:
.L508:
	.sleb128	12
	.4byte		.L482
	.uleb128	79
	.uleb128	1
	.4byte		.L634-.L2
	.uleb128	4
	.sleb128	13
	.byte		"LINIF_CHANNEL_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"LINIF_CHANNEL_OPERATIONAL"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"LINIF_CHANNEL_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L634:
.L521:
	.sleb128	12
	.4byte		.L482
	.uleb128	70
	.uleb128	1
	.4byte		.L635-.L2
	.uleb128	4
	.sleb128	13
	.byte		"NULL_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"ACTIVE_RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"ACTIVE_RUN_CONTINUOUS"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"ACTIVE_SCHEDULE_MANAGER_OFF"
	.byte		0
	.sleb128	3
	.sleb128	0
.L635:
.L542:
	.sleb128	12
	.4byte		.L482
	.uleb128	63
	.uleb128	1
	.4byte		.L636-.L2
	.uleb128	4
	.sleb128	13
	.byte		"RUN_CONTINUOUS"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L636:
.L584:
	.sleb128	12
	.4byte		.L626
	.uleb128	59
	.uleb128	13
	.4byte		.L637-.L2
	.uleb128	4
	.sleb128	13
	.byte		"LINTRCV_TRCV_MODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"LINTRCV_TRCV_MODE_STANDBY"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"LINTRCV_TRCV_MODE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L637:
.L594:
	.sleb128	12
	.4byte		.L626
	.uleb128	49
	.uleb128	13
	.4byte		.L638-.L2
	.uleb128	4
	.sleb128	13
	.byte		"LINTRCV_WU_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"LINTRCV_WU_NOT_SUPPORTED"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"LINTRCV_WU_BY_BUS"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"LINTRCV_WU_BY_PIN"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"LINTRCV_WU_INTERNALLY"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"LINTRCV_WU_RESET"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"LINTRCV_WU_POWER_ON"
	.byte		0
	.sleb128	6
	.sleb128	0
.L638:
.L599:
	.sleb128	12
	.4byte		.L626
	.uleb128	42
	.uleb128	13
	.4byte		.L639-.L2
	.uleb128	4
	.sleb128	13
	.byte		"LINTRCV_WUMODE_ENABLE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"LINTRCV_WUMODE_DISABLE"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"LINTRCV_WUMODE_CLEAR"
	.byte		0
	.sleb128	2
	.sleb128	0
.L639:
	.section	.debug_info,,n
.L344:
	.sleb128	14
	.4byte		.L345-.L2
	.byte		0x1
	.section	.debug_info,,n
.L348:
	.sleb128	15
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L347:
	.sleb128	16
	.byte		"uint8"
	.byte		0
	.4byte		.L348
.L346:
	.sleb128	16
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L347
	.section	.debug_info,,n
	.sleb128	17
	.4byte		.L346
.L349:
	.sleb128	16
	.byte		"boolean"
	.byte		0
	.4byte		.L348
	.sleb128	17
	.4byte		.L349
	.sleb128	0
.L345:
	.section	.debug_info,,n
.L343:
	.sleb128	18
	.4byte		.L344
.L342:
	.sleb128	16
	.byte		"LinIf_UserConfirmation_t"
	.byte		0
	.4byte		.L343
	.section	.debug_info,,n
.L351:
	.sleb128	19
	.4byte		.L347
.L371:
	.sleb128	16
	.byte		"LinIfChannel"
	.byte		0
	.4byte		.L372
.L370:
	.sleb128	19
	.4byte		.L371
.L369:
	.sleb128	18
	.4byte		.L370
.L368:
	.sleb128	19
	.4byte		.L369
.L374:
	.sleb128	19
	.4byte		.L349
.L381:
	.sleb128	19
	.4byte		.L342
.L397:
	.sleb128	16
	.byte		"LinIf_LinDrvCalls_t"
	.byte		0
	.4byte		.L398
.L396:
	.sleb128	19
	.4byte		.L397
.L395:
	.sleb128	18
	.4byte		.L396
.L394:
	.sleb128	19
	.4byte		.L395
	.section	.debug_info,,n
.L401:
	.sleb128	20
	.4byte		.L402-.L2
	.4byte		.L347
	.section	.debug_info,,n
	.sleb128	21
	.uleb128	7
	.sleb128	0
.L402:
.L404:
	.sleb128	18
	.4byte		.L347
.L407:
	.sleb128	16
	.byte		"Lin_StatusType"
	.byte		0
	.4byte		.L347
.L406:
	.sleb128	19
	.4byte		.L407
.L416:
	.sleb128	16
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L347
.L434:
	.sleb128	16
	.byte		"LinIfChannelManager"
	.byte		0
	.4byte		.L435
.L433:
	.sleb128	18
	.4byte		.L434
.L432:
	.sleb128	19
	.4byte		.L433
.L459:
	.sleb128	19
	.4byte		.L416
.L467:
	.sleb128	16
	.byte		"LinIf_ConfigType"
	.byte		0
	.4byte		.L468
.L466:
	.sleb128	19
	.4byte		.L467
.L465:
	.sleb128	18
	.4byte		.L466
.L473:
	.sleb128	16
	.byte		"LinIfChannelIdentifier"
	.byte		0
	.4byte		.L474
.L472:
	.sleb128	19
	.4byte		.L473
.L471:
	.sleb128	18
	.4byte		.L472
.L470:
	.sleb128	19
	.4byte		.L471
.L477:
	.sleb128	16
	.byte		"LinIf_ConfirmationInterfaceConfig_t"
	.byte		0
	.4byte		.L478
.L476:
	.sleb128	19
	.4byte		.L477
.L481:
	.sleb128	18
	.4byte		.L476
.L480:
	.sleb128	19
	.4byte		.L481
.L486:
	.sleb128	15
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L485:
	.sleb128	16
	.byte		"uint16"
	.byte		0
	.4byte		.L486
.L484:
	.sleb128	19
	.4byte		.L485
.L489:
	.sleb128	16
	.byte		"LinIfChannelReloc"
	.byte		0
	.4byte		.L490
.L488:
	.sleb128	19
	.4byte		.L489
.L487:
	.sleb128	18
	.4byte		.L488
.L494:
	.sleb128	15
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L493:
	.sleb128	16
	.byte		"uint32"
	.byte		0
	.4byte		.L494
.L492:
	.sleb128	19
	.4byte		.L493
.L491:
	.sleb128	18
	.4byte		.L492
.L497:
	.sleb128	16
	.byte		"LinIf_ConfirmationULConfig_t"
	.byte		0
	.4byte		.L498
.L496:
	.sleb128	19
	.4byte		.L497
.L495:
	.sleb128	18
	.4byte		.L496
.L500:
	.sleb128	19
	.4byte		.L346
.L504:
	.sleb128	16
	.byte		"LinIf_LinTrcvDrvCalls_t"
	.byte		0
	.4byte		.L505
.L503:
	.sleb128	19
	.4byte		.L504
.L502:
	.sleb128	18
	.4byte		.L503
.L507:
	.sleb128	16
	.byte		"LinIf_ChannelState_t"
	.byte		0
	.4byte		.L508
.L506:
	.sleb128	19
	.4byte		.L507
.L512:
	.sleb128	16
	.byte		"LinIfFrame"
	.byte		0
	.4byte		.L513
.L511:
	.sleb128	19
	.4byte		.L512
.L510:
	.sleb128	18
	.4byte		.L511
.L516:
	.sleb128	16
	.byte		"LinIfScheduleTable"
	.byte		0
	.4byte		.L517
.L515:
	.sleb128	19
	.4byte		.L516
.L514:
	.sleb128	18
	.4byte		.L515
.L518:
	.sleb128	18
	.4byte		.L349
.L520:
	.sleb128	16
	.byte		"LinIfSchTableType_t"
	.byte		0
	.4byte		.L521
.L522:
	.sleb128	16
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L347
.L523:
	.sleb128	16
	.byte		"LinIf_BusStatusStruct"
	.byte		0
	.4byte		.L524
.L525:
	.sleb128	16
	.byte		"LinIf_ChannelSubState_t"
	.byte		0
	.4byte		.L526
.L528:
	.sleb128	16
	.byte		"LinIf_frameStatusType"
	.byte		0
	.4byte		.L529
.L532:
	.sleb128	16
	.byte		"LinIfEntry"
	.byte		0
	.4byte		.L533
.L531:
	.sleb128	19
	.4byte		.L532
.L530:
	.sleb128	18
	.4byte		.L531
.L534:
	.sleb128	20
	.4byte		.L535-.L2
	.4byte		.L347
	.sleb128	21
	.uleb128	7
	.sleb128	0
.L535:
.L538:
	.sleb128	16
	.byte		"LinIfResumePosition_t"
	.byte		0
	.4byte		.L539
.L537:
	.sleb128	19
	.4byte		.L538
.L541:
	.sleb128	16
	.byte		"LinIfRunMode_t"
	.byte		0
	.4byte		.L542
.L540:
	.sleb128	19
	.4byte		.L541
.L544:
	.sleb128	16
	.byte		"LinTp_Mode"
	.byte		0
	.4byte		.L545
.L543:
	.sleb128	19
	.4byte		.L544
.L546:
	.sleb128	19
	.4byte		.L522
.L550:
	.sleb128	16
	.byte		"Lin_FrameCsModelType"
	.byte		0
	.4byte		.L347
.L549:
	.sleb128	19
	.4byte		.L550
.L552:
	.sleb128	16
	.byte		"LinIfFrameType_t"
	.byte		0
	.4byte		.L553
.L551:
	.sleb128	19
	.4byte		.L552
.L555:
	.sleb128	16
	.byte		"Lin_FrameDlType"
	.byte		0
	.4byte		.L347
.L554:
	.sleb128	19
	.4byte		.L555
.L557:
	.sleb128	16
	.byte		"Lin_FramePidType"
	.byte		0
	.4byte		.L347
.L556:
	.sleb128	19
	.4byte		.L557
.L559:
	.sleb128	16
	.byte		"PduIdType"
	.byte		0
	.4byte		.L485
.L558:
	.sleb128	19
	.4byte		.L559
.L561:
	.sleb128	16
	.byte		"Lin_FrameResponseType"
	.byte		0
	.4byte		.L347
.L560:
	.sleb128	19
	.4byte		.L561
.L562:
	.sleb128	20
	.4byte		.L563-.L2
	.4byte		.L351
	.sleb128	21
	.uleb128	7
	.sleb128	0
.L563:
.L566:
	.sleb128	16
	.byte		"LinIfSubstitutionFrames"
	.byte		0
	.4byte		.L567
.L565:
	.sleb128	19
	.4byte		.L566
.L564:
	.sleb128	18
	.4byte		.L565
.L571:
	.sleb128	16
	.byte		"LinIf_ConfirmationUL_t"
	.byte		0
	.4byte		.L572
.L570:
	.sleb128	19
	.4byte		.L571
.L577:
	.sleb128	14
	.4byte		.L578-.L2
	.byte		0x1
	.sleb128	17
	.4byte		.L346
	.sleb128	17
	.4byte		.L522
	.sleb128	0
.L578:
.L576:
	.sleb128	18
	.4byte		.L577
.L575:
	.sleb128	16
	.byte		"LinIf_UserRequestConfirmation_t"
	.byte		0
	.4byte		.L576
.L574:
	.sleb128	19
	.4byte		.L575
	.section	.debug_info,,n
.L581:
	.sleb128	22
	.4byte		.L582-.L2
	.4byte		.L416
	.byte		0x1
	.sleb128	17
	.4byte		.L347
.L583:
	.sleb128	16
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L584
	.sleb128	17
	.4byte		.L583
	.sleb128	0
.L582:
.L580:
	.sleb128	18
	.4byte		.L581
.L586:
	.sleb128	22
	.4byte		.L587-.L2
	.4byte		.L416
	.byte		0x1
	.sleb128	17
	.4byte		.L347
.L588:
	.sleb128	18
	.4byte		.L583
	.sleb128	17
	.4byte		.L588
	.sleb128	0
.L587:
.L585:
	.sleb128	18
	.4byte		.L586
.L590:
	.sleb128	22
	.4byte		.L591-.L2
	.4byte		.L416
	.byte		0x1
	.sleb128	17
	.4byte		.L347
.L593:
	.sleb128	16
	.byte		"LinTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L594
.L592:
	.sleb128	18
	.4byte		.L593
	.sleb128	17
	.4byte		.L592
	.sleb128	0
.L591:
.L589:
	.sleb128	18
	.4byte		.L590
.L596:
	.sleb128	22
	.4byte		.L597-.L2
	.4byte		.L416
	.byte		0x1
	.sleb128	17
	.4byte		.L347
.L598:
	.sleb128	16
	.byte		"LinTrcv_TrcvWakeupModeType"
	.byte		0
	.4byte		.L599
	.sleb128	17
	.4byte		.L598
	.sleb128	0
.L597:
.L595:
	.sleb128	18
	.4byte		.L596
.L601:
	.sleb128	22
	.4byte		.L602-.L2
	.4byte		.L416
	.byte		0x1
	.sleb128	17
	.4byte		.L347
	.sleb128	0
.L602:
.L600:
	.sleb128	18
	.4byte		.L601
.L605:
	.sleb128	22
	.4byte		.L606-.L2
	.4byte		.L416
	.byte		0x1
	.sleb128	17
	.4byte		.L347
.L608:
	.sleb128	16
	.byte		"Lin_PduType"
	.byte		0
	.4byte		.L609
.L607:
	.sleb128	18
	.4byte		.L608
	.sleb128	17
	.4byte		.L607
	.sleb128	0
.L606:
.L604:
	.sleb128	18
	.4byte		.L605
.L611:
	.sleb128	22
	.4byte		.L612-.L2
	.4byte		.L416
	.byte		0x1
	.sleb128	17
	.4byte		.L347
	.sleb128	0
.L612:
.L610:
	.sleb128	18
	.4byte		.L611
.L614:
	.sleb128	22
	.4byte		.L615-.L2
	.4byte		.L416
	.byte		0x1
	.sleb128	17
	.4byte		.L347
	.sleb128	0
.L615:
.L613:
	.sleb128	18
	.4byte		.L614
.L617:
	.sleb128	22
	.4byte		.L618-.L2
	.4byte		.L416
	.byte		0x1
	.sleb128	17
	.4byte		.L347
	.sleb128	0
.L618:
.L616:
	.sleb128	18
	.4byte		.L617
.L620:
	.sleb128	22
	.4byte		.L621-.L2
	.4byte		.L407
	.byte		0x1
	.sleb128	17
	.4byte		.L347
.L622:
	.sleb128	18
	.4byte		.L404
	.sleb128	17
	.4byte		.L622
	.sleb128	0
.L621:
.L619:
	.sleb128	18
	.4byte		.L620
.L624:
	.sleb128	22
	.4byte		.L625-.L2
	.4byte		.L416
	.byte		0x1
	.sleb128	17
	.4byte		.L347
	.sleb128	0
.L625:
.L623:
	.sleb128	18
	.4byte		.L624
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L352:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locend
.L354:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L360:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),0
	.d2locend
.L362:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locend
.L373:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),31
	.d2locend
.L375:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo21),4
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),6
	.d2locend
.L382:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo23),0
	.d2locend
.L388:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),31
	.d2locend
.L399:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locend
.L408:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),0
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),0
	.d2locend
.L414:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),31
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),31
	.d2locend
.L417:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),3
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),3
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),3
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),3
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),3
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo42),3
	.d2locend
.L419:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),30
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo50),30
	.d2locend
.L425:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo40),0
	.d2locend
.L431:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),31
	.d2locend
.L436:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),4
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),30
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),4
	.d2locend
.L442:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),3
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),6
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),3
	.d2locend
.L444:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo66),31
	.d2locend
.L450:
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),0
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo66),0
	.d2locend
.L456:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),3
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),31
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),31
	.d2locend
.L457:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo78),4
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),30
	.d2locend
.L460:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo81),3
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),6
	.d2locend
.L462:
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo75),0
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),0
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinIf_GotoSleepInternalProcess"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "LinIf_getGotoSleepConfirmationFunct","SchM_Enter_LinIf_ExclusiveArea0","SchM_Exit_LinIf_ExclusiveArea0"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "LinIf_WakeUpConfirmation"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "LinIf_getWakeupConfirmationFunct"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "LinIf_TimedSleepActions"
	.wrcm.nstrlist "calls", "LinIf_CheckSleepStatus","LinIf_ProcessSleep"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "LinIf_ProcessSleep"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "LinIf_getGotoSleepConfirmationFunct","SchM_Enter_LinIf_ExclusiveArea0","SchM_Exit_LinIf_ExclusiveArea0"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "LinIf_CheckSleepStatus"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "LinIf_SetChannelSleep"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "LinIf_SetChannelSleep"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "LinIf_getGotoSleepConfirmationFunct"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "LinIf_getGotoSleepConfirmationFunct"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "LinIf_getWakeupConfirmationFunct"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_SleepHandler.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_SleepHandler.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_SleepHandler.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_SleepHandler.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_SleepHandler.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_SleepHandler.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinIf\ssc\make\..\src\LinIf_SleepHandler.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
